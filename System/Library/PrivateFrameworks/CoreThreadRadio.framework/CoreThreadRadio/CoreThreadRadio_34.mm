_WORD *ot::LinkQualityInfo::AddMessageTxStatus(ot::LinkQualityInfo *this, char a2)
{
  return ot::SuccessRateTracker::AddSample(this + 3, a2 & 1, 0x80u);
}

{
  return ot::LinkQualityInfo::AddMessageTxStatus(this, a2);
}

uint64_t ot::IndirectSender::ChildInfo::GetIndirectTxSuccess(ot::IndirectSender::ChildInfo *this)
{
  return (*(this + 1) >> 14) & 1;
}

{
  return ot::IndirectSender::ChildInfo::GetIndirectTxSuccess(this);
}

BOOL ot::IndirectSender::ClearMessagesForRemovedChildren(ot::IndirectSender *this)
{
  v13 = this;
  v1 = ot::GetProvider<ot::InstanceLocator>::Get<ot::ChildTable>(this);
  v11 = ot::ChildTable::Iterate(v1, 6);
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
    if (ot::IndirectSender::ChildInfo::GetIndirectMessageCount((v6 + 144)))
    {
      ot::IndirectSender::ClearAllMessagesForSleepyChild(this, v6);
    }

    ot::ItemPtrIterator<ot::Child,ot::ChildTable::Iterator>::operator++(&v9);
  }

  return result;
}

void ot::KeyManager::HandleKeyRotationTimer(ot::KeyManager *this)
{
  ot::TimerMilli::Start((this + 80), 0x36EE80u);
  v8 = ++*(this + 34);
  v9 = *(this + 70);
  v10 = *(this + 35);
  v11 = *(this + 4);
  IsRunning = ot::Timer::IsRunning((this + 80));
  ot::Logger::LogAtLevel<(ot::LogLevel)4>("KeyManager", "%s Rotation time hoursSinceKeyRotation:%u, securityPolicy.RotationTime:%u, guardTime:%u, keySequence:%u, isRunning:%d", v2, v3, v4, v5, v6, v7, "HandleKeyRotationTimer", v8, v9, v10, v11, IsRunning);
  if (*(this + 36))
  {
    --*(this + 36);
  }

  ot::KeyManager::CheckForKeyRotation(this);
}

uint64_t ot::SecurityPolicy::SetToDefaultFlags(uint64_t this)
{
  *(this + 2) = *(this + 2) & 0xFFFE | 1;
  *(this + 2) = *(this + 2) & 0xFFFD | 2;
  *(this + 2) = *(this + 2) & 0xFFFB | 4;
  *(this + 2) = *(this + 2) & 0xFFF7 | 8;
  *(this + 2) &= ~0x10u;
  *(this + 2) &= ~0x20u;
  *(this + 2) &= ~0x40u;
  *(this + 2) = *(this + 2) & 0xFF7F | 0x80;
  *(this + 2) &= ~0x100u;
  *(this + 2) &= 0xF1FFu;
  return this;
}

uint64_t ot::SecurityPolicy::SetFlags(ot::SecurityPolicy *this, char *a2, unsigned __int8 a3)
{
  if (!a3)
  {
    __assert_rtn("SetFlags", "key_manager.cpp", 95, "aFlagsLength > 0");
  }

  result = ot::SecurityPolicy::SetToDefaultFlags(this);
  *(this + 1) = *(this + 1) & 0xFFFE | (*a2 < 0);
  *(this + 1) = *(this + 1) & 0xFFFD | (2 * ((*a2 & 0x40) != 0));
  *(this + 1) = *(this + 1) & 0xFFFB | (4 * ((*a2 & 0x20) != 0));
  *(this + 1) = *(this + 1) & 0xFFF7 | (8 * ((*a2 & 0x10) != 0));
  *(this + 1) = *(this + 1) & 0xFFEF | (16 * ((*a2 & 4) == 0));
  *(this + 1) = *(this + 1) & 0xFFDF | (32 * ((*a2 & 2) == 0));
  *(this + 1) = *(this + 1) & 0xFFBF | (((*a2 & 1) == 0) << 6);
  if (a3 > 1uLL)
  {
    *(this + 1) = *(this + 1) & 0xFF7F | ((a2[1] < 0) << 7);
    *(this + 1) = *(this + 1) & 0xFEFF | (((a2[1] & 0x40) == 0) << 8);
    *(this + 1) = *(this + 1) & 0xF1FF | ((a2[1] & 7) << 9);
  }

  return result;
}

void ot::SecurityPolicy::GetFlags(ot::SecurityPolicy *this, unsigned __int8 *a2, unsigned __int8 a3)
{
  if (!a3)
  {
    __assert_rtn("GetFlags", "key_manager.cpp", 118, "aFlagsLength > 0");
  }

  bzero(a2, a3);
  if (*(this + 1))
  {
    *a2 |= 0x80u;
  }

  if ((*(this + 1) & 2) != 0)
  {
    *a2 |= 0x40u;
  }

  if ((*(this + 1) & 4) != 0)
  {
    *a2 |= 0x20u;
  }

  if ((*(this + 1) & 8) != 0)
  {
    *a2 |= 0x10u;
  }

  if ((*(this + 1) & 0x10) == 0)
  {
    *a2 |= 4u;
  }

  if ((*(this + 1) & 0x20) == 0)
  {
    *a2 |= 2u;
  }

  if ((*(this + 1) & 0x40) == 0)
  {
    *a2 |= 1u;
  }

  if (a3 > 1uLL)
  {
    if ((*(this + 1) & 0x80) != 0)
    {
      a2[1] |= 0x80u;
    }

    if ((*(this + 1) & 0x100) == 0)
    {
      a2[1] |= 0x40u;
    }

    a2[1] |= 0x38u;
    a2[1] |= (*(this + 1) >> 9) & 7;
  }
}

ot::KeyManager *ot::KeyManager::KeyManager(ot::KeyManager *this, ot::Instance *a2)
{
  ot::InstanceLocator::InstanceLocator(this, a2);
  *(this + 4) = 0;
  ot::Mac::KeyMaterial::KeyMaterial((this + 20));
  ot::Mac::KeyMaterial::KeyMaterial((this + 36));
  *(this + 14) = 0;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 34) = 0;
  *(this + 35) = 624;
  *(this + 36) = 0;
  ot::TimerMilliIn<ot::KeyManager,&ot::KeyManager::HandleKeyRotationTimer>::TimerMilliIn((this + 80), a2);
  ot::Mac::KeyMaterial::KeyMaterial((this + 120));
  *(this + 34) = 0;
  ot::SecurityPolicy::SecurityPolicy((this + 140));
  *(this + 144) &= ~1u;
  j__otPlatCryptoInit();
  ot::NetworkKey::GenerateRandom(this, v2, v3);
  IgnoreError();
  ot::Clearable<ot::Pskc>::Clear(this + 13);
  ot::Mac::LinkFrameCounters::Reset((this + 52));
  return this;
}

{
  ot::KeyManager::KeyManager(this, a2);
  return this;
}

ot::TimerMilli *ot::TimerMilliIn<ot::KeyManager,&ot::KeyManager::HandleKeyRotationTimer>::TimerMilliIn(ot::TimerMilli *a1, ot::Instance *a2)
{
  ot::TimerMilliIn<ot::KeyManager,&ot::KeyManager::HandleKeyRotationTimer>::TimerMilliIn(a1, a2);
  return a1;
}

{
  ot::TimerMilli::TimerMilli(a1, a2, ot::TimerMilliIn<ot::KeyManager,&ot::KeyManager::HandleKeyRotationTimer>::HandleTimer);
  return a1;
}

uint64_t ot::KeyManager::SetPskc(uint64_t a1, _OWORD *a2)
{
  v2 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Notifier>(a1);
  result = ot::Notifier::Update<ot::Pskc>(v2, (a1 + 104), a2, 0x80000);
  *(a1 + 144) = *(a1 + 144) & 0xFE | 1;
  return result;
}

uint64_t ot::Notifier::Update<ot::Pskc>(void *a1, _OWORD *a2, _OWORD *a3, uint64_t a4)
{
  v6 = 0;
  if (ot::Equatable<ot::Pskc>::operator==(a2, a3))
  {
    ot::Notifier::SignalIfFirst(a1, a4);
    return 24;
  }

  else
  {
    *a2 = *a3;
    ot::Notifier::Signal(a1, a4);
  }

  return v6;
}

{
  return ot::Notifier::Update<ot::Pskc>(a1, a2, a3, a4);
}

BOOL ot::KeyManager::ResetFrameCounters(ot::KeyManager *this)
{
  v23 = this;
  v1 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::MleRouter>(this);
  Parent = ot::Mle::Mle::GetParent(v1);
  ot::Neighbor::SetKeySequence(Parent, 0);
  LinkFrameCounters = ot::Neighbor::GetLinkFrameCounters(Parent);
  ot::Mac::LinkFrameCounters::Reset(LinkFrameCounters);
  ot::Neighbor::SetLinkAckFrameCounter(Parent, 0);
  ot::Neighbor::SetMleFrameCounter(Parent, 0);
  v21 = ot::GetProvider<ot::InstanceLocator>::Get<ot::RouterTable>(this);
  ot::RouterTable::begin(v21);
  v20 = v3;
  v19 = ot::RouterTable::end(v21);
  while (v20 != v19)
  {
    v18 = v20;
    ot::Neighbor::SetKeySequence(v20, 0);
    v4 = ot::Neighbor::GetLinkFrameCounters(v20);
    ot::Mac::LinkFrameCounters::Reset(v4);
    ot::Neighbor::SetLinkAckFrameCounter(v20, 0);
    ot::Neighbor::SetMleFrameCounter(v20, 0);
    v20 = (v20 + 144);
  }

  v5 = ot::GetProvider<ot::InstanceLocator>::Get<ot::ChildTable>(this);
  v16 = ot::ChildTable::Iterate(v5, 5);
  v17 = &v16;
  v26 = ot::ChildTable::IteratorBuilder::begin(&v16);
  v27 = v6;
  v14 = v26;
  v15 = v6;
  v24 = ot::ChildTable::IteratorBuilder::end(v17);
  v25 = v7;
  v12 = v24;
  v13 = v7;
  while (1)
  {
    result = ot::ItemPtrIterator<ot::Child,ot::ChildTable::Iterator>::operator!=(&v14, &v12);
    if (!result)
    {
      break;
    }

    v11 = ot::ItemPtrIterator<ot::Child,ot::ChildTable::Iterator>::operator*(&v14);
    ot::Neighbor::SetKeySequence(v11, 0);
    v9 = ot::Neighbor::GetLinkFrameCounters(v11);
    ot::Mac::LinkFrameCounters::Reset(v9);
    ot::Neighbor::SetLinkAckFrameCounter(v11, 0);
    ot::Neighbor::SetMleFrameCounter(v11, 0);
    ot::ItemPtrIterator<ot::Child,ot::ChildTable::Iterator>::operator++(&v14);
  }

  return result;
}

void ot::RouterTable::begin(ot::RouterTable *this)
{
  ot::Array<ot::Router,(unsigned short)32,unsigned char>::begin();
}

{
  ot::Array<ot::Router,(unsigned short)32,unsigned char>::begin();
}

{
  ot::RouterTable::begin(this);
}

{
  ot::RouterTable::begin(this);
}

uint64_t ot::RouterTable::end(ot::RouterTable *this)
{
  return ot::Array<ot::Router,(unsigned short)32,unsigned char>::end(this + 8);
}

{
  return ot::Array<ot::Router,(unsigned short)32,unsigned char>::end(this + 8);
}

{
  return ot::RouterTable::end(this);
}

{
  return ot::RouterTable::end(this);
}

uint64_t ot::KeyManager::SetNetworkKey(ot::KeyManager *this, const ot::NetworkKey *a2)
{
  v2 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Notifier>(this);
  result = ot::Notifier::Update<ot::NetworkKey>(v2, this, a2, 0x40000);
  if (!result)
  {
    v4 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::MleRouter>(this);
    if (ot::Mle::Mle::GetRole(v4))
    {
      v5 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Notifier>(this);
      ot::Notifier::Signal(v5, 256);
      *(this + 4) = 0;
    }

    ot::KeyManager::UpdateKeyMaterial(this);
    return ot::KeyManager::ResetFrameCounters(this);
  }

  return result;
}

uint64_t ot::Notifier::Update<ot::NetworkKey>(void *a1, _OWORD *a2, _OWORD *a3, uint64_t a4)
{
  v6 = 0;
  if (ot::Equatable<ot::NetworkKey>::operator==(a2, a3))
  {
    ot::Notifier::SignalIfFirst(a1, a4);
    return 24;
  }

  else
  {
    *a2 = *a3;
    ot::Notifier::Signal(a1, a4);
  }

  return v6;
}

{
  return ot::Notifier::Update<ot::NetworkKey>(a1, a2, a3, a4);
}

uint64_t ot::KeyManager::UpdateKeyMaterial(ot::KeyManager *this)
{
  ot::KeyManager::ComputeKeys(this, *(this + 4), v11);
  ot::KeyManager::HashKeys::GetMleKey(v11);
  ot::Mac::KeyMaterial::SetFrom((this + 20), v1);
  ot::Mac::KeyMaterial::KeyMaterial(&v10);
  ot::Mac::KeyMaterial::KeyMaterial(&v9);
  ot::Mac::KeyMaterial::KeyMaterial(&v8);
  MacKey = ot::KeyManager::HashKeys::GetMacKey(v11);
  ot::Mac::KeyMaterial::SetFrom(&v10, MacKey);
  ot::KeyManager::ComputeKeys(this, *(this + 4) - 1, v11);
  v3 = ot::KeyManager::HashKeys::GetMacKey(v11);
  ot::Mac::KeyMaterial::SetFrom(&v9, v3);
  ot::KeyManager::ComputeKeys(this, *(this + 4) + 1, v11);
  v4 = ot::KeyManager::HashKeys::GetMacKey(v11);
  ot::Mac::KeyMaterial::SetFrom(&v8, v4);
  v5 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mac::SubMac>(this);
  return ot::Mac::SubMac::SetMacKey(v5, 8u, (*(this + 16) & 0x7Fu) + 1, &v9, &v10, &v8);
}

void ot::KeyManager::ComputeKeys(ot::KeyManager *this, unsigned int a2, ot::KeyManager::HashKeys *a3)
{
  v10 = this;
  v9 = a2;
  v8 = a3;
  ot::Crypto::HmacSha256::HmacSha256(v7);
  ot::Crypto::Key::Set(v5, this, 16);
  ot::Crypto::HmacSha256::Start(v7, v5);
  ot::BigEndian::WriteUint32(v9, v6, v3);
  ot::Crypto::HmacSha256::Update<unsigned char [4]>(v7, v6);
  ot::Crypto::HmacSha256::Update<unsigned char [6]>(v7, &ot::KeyManager::kThreadString);
  ot::Crypto::HmacSha256::Finish(v7, v8);
  ot::Crypto::HmacSha256::~HmacSha256(v7);
}

uint64_t ot::Crypto::HmacSha256::Update<unsigned char [4]>(ot::Crypto::HmacSha256 *a1, uint64_t a2)
{
  return ot::Crypto::HmacSha256::Update(a1, a2, 4u);
}

{
  return ot::Crypto::HmacSha256::Update<unsigned char [4]>(a1, a2);
}

uint64_t ot::Crypto::HmacSha256::Update<unsigned char [6]>(ot::Crypto::HmacSha256 *a1, uint64_t a2)
{
  return ot::Crypto::HmacSha256::Update(a1, a2, 6u);
}

{
  return ot::Crypto::HmacSha256::Update<unsigned char [6]>(a1, a2);
}

void ot::KeyManager::HashKeys::GetMleKey(ot::KeyManager::HashKeys *this)
{
  ;
}

{
  ot::KeyManager::HashKeys::GetMleKey(this);
}

uint64_t ot::KeyManager::HashKeys::GetMacKey(ot::KeyManager::HashKeys *this)
{
  return this + 16;
}

{
  return ot::KeyManager::HashKeys::GetMacKey(this);
}

void ot::KeyManager::SetCurrentKeySequence(uint64_t this, int a2, char a3)
{
  if (a2 == *(this + 16))
  {
    v3 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Notifier>(this);
    ot::Notifier::SignalIfFirst(v3, 256);
  }

  else if ((a3 & 1) == 0 || !*(this + 72))
  {
    *(this + 16) = a2;
    ot::KeyManager::UpdateKeyMaterial(this);
    ot::KeyManager::SetAllMacFrameCounters(this, 0, 0);
    *(this + 56) = 0;
    ot::KeyManager::ResetKeyRotationTimer(this);
    if ((a3 & 2) != 0)
    {
      *(this + 72) = *(this + 70);
    }

    v4 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Notifier>(this);
    ot::Notifier::Signal(v4, 256);
  }
}

uint64_t ot::KeyManager::SetAllMacFrameCounters(ot::KeyManager *this, unsigned int a2, char a3)
{
  ot::Mac::LinkFrameCounters::SetAll(this + 13, a2);
  v3 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mac::SubMac>(this);
  return ot::Mac::SubMac::SetFrameCounter(v3, a2, a3 & 1);
}

uint64_t ot::KeyManager::GetTemporaryMleKey(ot::KeyManager *this, unsigned int a2)
{
  ot::KeyManager::ComputeKeys(this, a2, v5);
  ot::KeyManager::HashKeys::GetMleKey(v5);
  ot::Mac::KeyMaterial::SetFrom((this + 36), v2);
  return this + 36;
}

void ot::KeyManager::MacFrameCounterUsed(ot::KeyManager *this, unsigned int a2)
{
  if (ot::Mac::LinkFrameCounters::Get154((this + 52)) <= a2)
  {
    ot::Mac::LinkFrameCounters::Set154(this + 13, a2 + 1);
    if (ot::Mac::LinkFrameCounters::Get154((this + 52)) >= *(this + 15))
    {
      v2 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::MleRouter>(this);
      ot::Mle::Mle::Store(v2);
      IgnoreError();
    }
  }
}

_DWORD *ot::Mac::LinkFrameCounters::Set154(_DWORD *this, int a2)
{
  *this = a2;
  return this;
}

{
  return ot::Mac::LinkFrameCounters::Set154(this, a2);
}

void ot::KeyManager::Increment154MacFrameCounter(ot::KeyManager *this)
{
  ot::Mac::LinkFrameCounters::Increment154(this + 13);
  if (ot::Mac::LinkFrameCounters::Get154((this + 52)) >= *(this + 15))
  {
    v1 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::MleRouter>(this);
    ot::Mle::Mle::Store(v1);
    IgnoreError();
  }
}

_DWORD *ot::Mac::LinkFrameCounters::Increment154(_DWORD *this)
{
  ++*this;
  return this;
}

{
  return ot::Mac::LinkFrameCounters::Increment154(this);
}

void ot::KeyManager::IncrementMleFrameCounter(ot::KeyManager *this)
{
  if (++*(this + 14) >= *(this + 16))
  {
    v1 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::MleRouter>(this);
    ot::Mle::Mle::Store(v1);
    IgnoreError();
  }
}

void ot::KeyManager::SetSecurityPolicy(ot::KeyManager *this, const ot::SecurityPolicy *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v12 = this;
  v11 = a2;
  v10 = *a2;
  if (v10 < 2u)
  {
    LOWORD(v10) = 2;
    ot::Logger::LogAtLevel<(ot::LogLevel)3>("KeyManager", "Key Rotation Time in SecurityPolicy is set to min allowed value of %u", a3, a4, a5, a6, a7, a8, 2);
  }

  if (v10 != *(this + 70))
  {
    *(this + 35) = 93 * v10 / 0x64;
  }

  v8 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Notifier>(this);
  ot::Notifier::Update<ot::SecurityPolicy>(v8, this + 35, &v10, 0x100000);
  IgnoreError();
  ot::KeyManager::CheckForKeyRotation(this);
}

uint64_t ot::Notifier::Update<ot::SecurityPolicy>(void *a1, _DWORD *a2, _DWORD *a3, uint64_t a4)
{
  v6 = 0;
  if (ot::Equatable<ot::SecurityPolicy>::operator==(a2, a3))
  {
    ot::Notifier::SignalIfFirst(a1, a4);
    return 24;
  }

  else
  {
    *a2 = *a3;
    ot::Notifier::Signal(a1, a4);
  }

  return v6;
}

{
  return ot::Notifier::Update<ot::SecurityPolicy>(a1, a2, a3, a4);
}

void ot::KeyManager::CheckForKeyRotation(uint64_t this)
{
  if (*(this + 68) >= *(this + 140))
  {
    v8 = *(this + 68);
    v9 = *(this + 140);
    v10 = *(this + 70);
    v11 = *(this + 16);
    IsRunning = ot::Timer::IsRunning((this + 80));
    ot::Logger::LogAtLevel<(ot::LogLevel)2>("KeyManager", "%s Update keysequence as key rotation timer expired hoursSinceKeyRotation:%u, securityPolicy.RotationTime:%u, guardTime:%u, keySequence:%u, isRunning:%d", v2, v3, v4, v5, v6, v7, "CheckForKeyRotation", v8, v9, v10, v11, IsRunning);
    ot::KeyManager::SetCurrentKeySequence(this, *(this + 16) + 1, 2);
  }
}

__n128 ot::KeyManager::GetNetworkKey(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

__n128 ot::KeyManager::GetPskc(uint64_t a1, __n128 *a2)
{
  result = *(a1 + 104);
  *a2 = result;
  return result;
}

void ot::Array<ot::Router,(unsigned short)32,unsigned char>::begin()
{
  ;
}

{
  ;
}

{
  ot::Array<ot::Router,(unsigned short)32,unsigned char>::begin();
}

{
  ot::Array<ot::Router,(unsigned short)32,unsigned char>::begin();
}

uint64_t ot::Array<ot::Router,(unsigned short)32,unsigned char>::end(uint64_t a1)
{
  return a1 + 144 * *(a1 + 4608);
}

{
  return a1 + 144 * *(a1 + 4608);
}

{
  return ot::Array<ot::Router,(unsigned short)32,unsigned char>::end(a1);
}

{
  return ot::Array<ot::Router,(unsigned short)32,unsigned char>::end(a1);
}

BOOL ot::Equatable<ot::Pskc>::operator==(const void *a1, const void *a2)
{
  return memcmp(a1, a2, 0x10uLL) == 0;
}

{
  return ot::Equatable<ot::Pskc>::operator==(a1, a2);
}

BOOL ot::Equatable<ot::SecurityPolicy>::operator==(const void *a1, const void *a2)
{
  return memcmp(a1, a2, 4uLL) == 0;
}

{
  return ot::Equatable<ot::SecurityPolicy>::operator==(a1, a2);
}

ot::LinkMetrics::Initiator *ot::LinkMetrics::Initiator::Initiator(ot::LinkMetrics::Initiator *this, ot::Instance *a2)
{
  ot::InstanceLocator::InstanceLocator(this, a2);
  ot::Callback<void (*)(void *,otBackboneRouterDomainPrefixEvent,otIp6Prefix const*),(ot::CallbackContextPosition)0>::Callback(this);
  ot::Callback<void (*)(void *,otBackboneRouterDomainPrefixEvent,otIp6Prefix const*),(ot::CallbackContextPosition)0>::Callback(this + 2);
  ot::Callback<void (*)(void *,otBackboneRouterDomainPrefixEvent,otIp6Prefix const*),(ot::CallbackContextPosition)0>::Callback(this + 4);
  return this;
}

{
  ot::LinkMetrics::Initiator::Initiator(this, a2);
  return this;
}

uint64_t ot::LinkMetrics::Initiator::Query(ot::LinkMetrics::Initiator *this, const ot::Ip6::Address *a2, unsigned __int8 a3, const ot::LinkMetrics::Metrics *a4)
{
  v15 = this;
  v14 = a2;
  v13 = a3;
  v12 = a4;
  Neighbor = 0;
  v10 = 0;
  Neighbor = ot::LinkMetrics::Initiator::FindNeighbor(this, a2, &v10);
  if (!Neighbor)
  {
    ot::Clearable<ot::LinkMetrics::Initiator::QueryInfo>::Clear(&v7);
    v7 = v13;
    if (v12)
    {
      v9 = ot::LinkMetrics::Metrics::ConvertToTypeIds(v12, v8);
    }

    if (v13 && v9)
    {
      return 7;
    }

    else
    {
      v4 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::Mle>(this);
      return ot::Mle::Mle::SendDataRequestForLinkMetricsReport(v4, v14, &v7);
    }
  }

  return Neighbor;
}

uint64_t ot::LinkMetrics::Initiator::FindNeighbor(ot::LinkMetrics::Initiator *this, const ot::Ip6::Address *a2, ot::Neighbor **a3)
{
  v13 = this;
  v12 = a2;
  v11 = a3;
  v10 = 19;
  ot::Mac::Address::Address(v9);
  *v11 = 0;
  if (ot::Ip6::Address::IsLinkLocalUnicast(v12, v3))
  {
    Iid = ot::Ip6::Address::GetIid(v12);
    ot::Ip6::InterfaceIdentifier::ConvertToMacAddress(Iid, v9);
    v5 = ot::GetProvider<ot::InstanceLocator>::Get<ot::NeighborTable>(this);
    Neighbor = ot::NeighborTable::FindNeighbor(v5, v9, 1);
    *v11 = Neighbor;
    if (*v11)
    {
      if (ot::Neighbor::GetVersion(*v11) >= 3)
      {
        return 0;
      }

      else
      {
        return 27;
      }
    }
  }

  return v10;
}

uint64_t ot::Clearable<ot::LinkMetrics::Initiator::QueryInfo>::Clear(uint64_t a1)
{
  return ot::ClearAllBytes<ot::LinkMetrics::Initiator::QueryInfo>(a1);
}

{
  return ot::Clearable<ot::LinkMetrics::Initiator::QueryInfo>::Clear(a1);
}

uint64_t ot::LinkMetrics::Initiator::AppendLinkMetricsQueryTlv(uint64_t a1, ot::Message *a2, unsigned __int8 *a3)
{
  v10 = a1;
  v9 = a2;
  v8 = a3;
  OptionsSub = 0;
  ot::Tlv::SetType(v6, 87);
  if (v8[5])
  {
    v4 = v8[5] + 2;
  }

  else
  {
    v4 = 0;
  }

  ot::Tlv::SetLength(v6, v4 + 3);
  OptionsSub = ot::Message::Append<ot::Tlv>(v9, v6);
  if (!OptionsSub)
  {
    OptionsSub = ot::Tlv::Append<ot::UintTlvInfo<(unsigned char)1,unsigned char>>(v9, *v8);
    if (!OptionsSub)
    {
      if (v8[5])
      {
        ot::LinkMetrics::QueryOptionsSubTlv::Init(v5);
        ot::Tlv::SetLength(v5, v8[5]);
        OptionsSub = ot::Message::Append<ot::LinkMetrics::QueryOptionsSubTlv>(v9, v5);
        if (!OptionsSub)
        {
          return ot::Message::AppendBytes(v9, v8 + 1, v8[5]);
        }
      }
    }
  }

  return OptionsSub;
}

uint64_t ot::Tlv::Append<ot::UintTlvInfo<(unsigned char)1,unsigned char>>(uint64_t a1, unsigned __int8 a2)
{
  return ot::Tlv::AppendUintTlv<unsigned char>(a1, 1, a2);
}

{
  return ot::Tlv::Append<ot::UintTlvInfo<(unsigned char)1,unsigned char>>(a1, a2);
}

uint64_t ot::LinkMetrics::QueryOptionsSubTlv::Init(ot::LinkMetrics::QueryOptionsSubTlv *this)
{
  ot::Tlv::SetType(this, 2);
  return ot::Tlv::SetLength(this, 0);
}

{
  return ot::LinkMetrics::QueryOptionsSubTlv::Init(this);
}

uint64_t ot::Message::Append<ot::LinkMetrics::QueryOptionsSubTlv>(ot::Message *a1, char *a2)
{
  return ot::Message::AppendBytes(a1, a2, 2u);
}

{
  return ot::Message::Append<ot::LinkMetrics::QueryOptionsSubTlv>(a1, a2);
}

void ot::LinkMetrics::Initiator::HandleReport(ot::LinkMetrics::Initiator *this, const ot::Message *a2, ot::OffsetRange *a3, const ot::Ip6::Address *a4)
{
  v70 = this;
  v69 = a2;
  v68 = a3;
  v67 = a4;
  v51 = this;
  v66 = 0;
  v65 = 0;
  v64 = 0;
  v56 = 0;
  MetricsTypeId = 0;
  if (ot::CallbackBase<void (*)(otIp6Address const*,otLinkMetricsValues const*,otLinkMetricsStatus,void *)>::IsSet(this))
  {
    ot::Clearable<ot::LinkMetrics::MetricsValues>::Clear(v57);
    while (!ot::OffsetRange::IsEmpty(v68))
    {
      v66 = ot::Tlv::ParsedInfo::ParseFrom(v63, v69, v68);
      if (v66)
      {
        goto LABEL_39;
      }

      if ((v63[1] & 1) == 0)
      {
        v50 = v63[0];
        if (v63[0])
        {
          if (v50 == 5)
          {
            if (v65 & 1) != 0 || (v64)
            {
              v66 = 2;
              goto LABEL_39;
            }

            v49 = v69;
            Offset = ot::OffsetRange::GetOffset(v68);
            v66 = ot::Tlv::Read<ot::UintTlvInfo<(unsigned char)5,unsigned char>>(v49, Offset, &v56, v5, v6);
            if (v66)
            {
              goto LABEL_39;
            }

            v65 = 1;
          }
        }

        else
        {
          if (v65)
          {
            v66 = 2;
            goto LABEL_39;
          }

          v66 = ot::Message::Read(v69, v68, v62, 4u);
          if (v66)
          {
            goto LABEL_39;
          }

          if (!ot::LinkMetrics::ReportSubTlv::IsValid(v62))
          {
            v66 = 6;
            goto LABEL_39;
          }

          v64 = 1;
          MetricsTypeId = ot::LinkMetrics::ReportSubTlv::GetMetricsTypeId(v62);
          if (!ot::LinkMetrics::TypeId::IsExtended(MetricsTypeId))
          {
            if (ot::LinkMetrics::TypeId::GetValueLength(MetricsTypeId) > 1uLL)
            {
              v48 = v69;
              v8 = ot::OffsetRange::GetOffset(v68);
              v66 = ot::Message::Read<ot::LinkMetrics::ReportSubTlv>(v48, v8, v62);
              if (v66)
              {
                goto LABEL_39;
              }
            }

            v47 = MetricsTypeId;
            if (MetricsTypeId == 9)
            {
              v57[0] = v57[0] & 0xFD | 2;
              MetricsValue8 = ot::LinkMetrics::ReportSubTlv::GetMetricsValue8(v62);
              ot::Logger::LogAtLevel<(ot::LogLevel)5>("LinkMetrics", " - LQI: %u (Exponential Moving Average)", v16, v17, v18, v19, v20, v21, MetricsValue8);
            }

            else
            {
              switch(v47)
              {
                case 10:
                  v57[0] = v57[0] & 0xFB | 4;
                  v22 = ot::LinkMetrics::ReportSubTlv::GetMetricsValue8(v62);
                  v60 = ot::LinkMetrics::ScaleRawValueToLinkMargin(v22);
                  ot::Logger::LogAtLevel<(ot::LogLevel)5>("LinkMetrics", " - Margin: %u (dB) (Exponential Moving Average)", v23, v24, v25, v26, v27, v28, v60);
                  break;
                case 11:
                  v57[0] = v57[0] & 0xF7 | 8;
                  v29 = ot::LinkMetrics::ReportSubTlv::GetMetricsValue8(v62);
                  v61 = ot::LinkMetrics::ScaleRawValueToRssi(v29);
                  ot::Logger::LogAtLevel<(ot::LogLevel)5>("LinkMetrics", " - RSSI: %u (dBm) (Exponential Moving Average)", v30, v31, v32, v33, v34, v35, v61);
                  break;
                case 64:
                  v57[0] = v57[0] & 0xFE | 1;
                  MetricsValue32 = ot::LinkMetrics::ReportSubTlv::GetMetricsValue32(v62, v7);
                  v9 = ot::ToUlong(MetricsValue32);
                  ot::Logger::LogAtLevel<(ot::LogLevel)5>("LinkMetrics", " - PDU Counter: %lu (Count/Summation)", v10, v11, v12, v13, v14, v15, v9);
                  break;
              }
            }
          }
        }
      }

      v46 = v68;
      Size = ot::Tlv::ParsedInfo::GetSize(v63);
      ot::OffsetRange::AdvanceOffset(v46, Size);
    }

    if (v65 & 1) != 0 || (v64)
    {
      v54 = v67;
      if (v65)
      {
        v45 = 0;
      }

      else
      {
        v45 = v57;
      }

      v53 = v45;
      if (v65)
      {
        v44 = ot::MapEnum<ot::LinkMetrics::Status>(v56);
      }

      else
      {
        v44 = ot::MapEnum<ot::LinkMetrics::Status>(0);
      }

      v52 = v44;
      ot::Callback<void (*)(otIp6Address const*,otLinkMetricsValues const*,otLinkMetricsStatus,void *),(ot::CallbackContextPosition)1>::Invoke<ot::Ip6::Address const*,ot::LinkMetrics::MetricsValues *,otLinkMetricsStatus>(v51, &v54, &v53, &v52);
    }
  }

LABEL_39:
  v37 = ot::ErrorToString(v66);
  ot::Logger::LogAtLevel<(ot::LogLevel)5>("LinkMetrics", "HandleReport, error:%s", v38, v39, v40, v41, v42, v43, v37);
}

BOOL ot::CallbackBase<void (*)(otIp6Address const*,otLinkMetricsValues const*,otLinkMetricsStatus,void *)>::IsSet(void *a1)
{
  return *a1 != 0;
}

{
  return ot::CallbackBase<void (*)(otIp6Address const*,otLinkMetricsValues const*,otLinkMetricsStatus,void *)>::IsSet(a1);
}

uint64_t ot::Clearable<ot::LinkMetrics::MetricsValues>::Clear(uint64_t a1)
{
  return ot::ClearAllBytes<ot::LinkMetrics::MetricsValues>(a1);
}

{
  return ot::Clearable<ot::LinkMetrics::MetricsValues>::Clear(a1);
}

uint64_t ot::Tlv::Read<ot::UintTlvInfo<(unsigned char)5,unsigned char>>(ot::Tlv *a1, unsigned __int16 a2, char *a3, uint64_t a4, unsigned __int8 a5)
{
  return ot::Tlv::ReadUintTlv<unsigned char>(a1, a2, a3, a4, a5);
}

{
  return ot::Tlv::Read<ot::UintTlvInfo<(unsigned char)5,unsigned char>>(a1, a2, a3, a4, a5);
}

BOOL ot::LinkMetrics::ReportSubTlv::IsValid(ot::LinkMetrics::ReportSubTlv *this)
{
  return ot::Tlv::GetLength(this) >= 2;
}

{
  return ot::LinkMetrics::ReportSubTlv::IsValid(this);
}

uint64_t ot::LinkMetrics::ReportSubTlv::GetMetricsTypeId(ot::LinkMetrics::ReportSubTlv *this)
{
  return *(this + 2);
}

{
  return ot::LinkMetrics::ReportSubTlv::GetMetricsTypeId(this);
}

BOOL ot::LinkMetrics::TypeId::IsExtended(ot::LinkMetrics::TypeId *this)
{
  return this < 0;
}

{
  return ot::LinkMetrics::TypeId::IsExtended(this);
}

uint64_t ot::LinkMetrics::TypeId::GetValueLength(ot::LinkMetrics::TypeId *this)
{
  v1 = 4;
  if ((this & 0x40) == 0)
  {
    return 1;
  }

  return v1;
}

{
  return ot::LinkMetrics::TypeId::GetValueLength(this);
}

uint64_t ot::Message::Read<ot::LinkMetrics::ReportSubTlv>(ot::Message *a1, unsigned __int16 a2, char *a3)
{
  return ot::Message::Read(a1, a2, a3, 7u);
}

{
  return ot::Message::Read<ot::LinkMetrics::ReportSubTlv>(a1, a2, a3);
}

uint64_t ot::LinkMetrics::ReportSubTlv::GetMetricsValue32(ot::LinkMetrics::ReportSubTlv *this, unsigned int a2)
{
  return ot::BigEndian::HostSwap32(*(this + 3), a2);
}

{
  return ot::LinkMetrics::ReportSubTlv::GetMetricsValue32(this, a2);
}

uint64_t ot::LinkMetrics::ReportSubTlv::GetMetricsValue8(ot::LinkMetrics::ReportSubTlv *this)
{
  return *(this + 3);
}

{
  return ot::LinkMetrics::ReportSubTlv::GetMetricsValue8(this);
}

uint64_t ot::Callback<void (*)(otIp6Address const*,otLinkMetricsValues const*,otLinkMetricsStatus,void *),(ot::CallbackContextPosition)1>::Invoke<ot::Ip6::Address const*,ot::LinkMetrics::MetricsValues *,otLinkMetricsStatus>(uint64_t a1, void *a2, void *a3, unsigned int *a4)
{
  return (*a1)(*a2, *a3, *a4, *(a1 + 8));
}

{
  return ot::Callback<void (*)(otIp6Address const*,otLinkMetricsValues const*,otLinkMetricsStatus,void *),(ot::CallbackContextPosition)1>::Invoke<ot::Ip6::Address const*,ot::LinkMetrics::MetricsValues *,otLinkMetricsStatus>(a1, a2, a3, a4);
}

uint64_t ot::MapEnum<ot::LinkMetrics::Status>(uint64_t result)
{
  return result;
}

{
  return ot::MapEnum<ot::LinkMetrics::Status>(result);
}

uint64_t ot::LinkMetrics::Initiator::SendMgmtRequestForwardTrackingSeries(ot::LinkMetrics::Initiator *this, __n128 *a2, unsigned __int8 a3, const ot::LinkMetrics::SeriesFlags *a4, const ot::LinkMetrics::Metrics *a5)
{
  v26 = this;
  v25 = a2;
  v24 = a3;
  v23 = a4;
  v22 = a5;
  Neighbor = 0;
  v20 = 0;
  v19 = 0;
  Neighbor = ot::LinkMetrics::Initiator::FindNeighbor(this, a2, &v20);
  if (!Neighbor)
  {
    if (v24)
    {
      ot::LinkMetrics::FwdProbingRegSubTlv::Init(v18);
      ot::LinkMetrics::FwdProbingRegSubTlv::SetSeriesId(v18, v24);
      v5 = ot::LinkMetrics::SeriesFlags::ConvertToMask(v23);
      ot::LinkMetrics::FwdProbingRegSubTlv::SetSeriesFlagsMask(v18, v5);
      if (v22)
      {
        v16 = v22;
        TypeIds = ot::LinkMetrics::FwdProbingRegSubTlv::GetTypeIds(v18);
        v19 = ot::LinkMetrics::Metrics::ConvertToTypeIds(v16, TypeIds);
      }

      ot::Tlv::SetLength(v18, v19 + 2);
      v7 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::Mle>(this);
      Neighbor = ot::Mle::Mle::SendLinkMetricsManagementRequest(v7, v25, v18);
    }

    else
    {
      Neighbor = 7;
    }
  }

  v8 = ot::ErrorToString(Neighbor);
  ot::Logger::LogAtLevel<(ot::LogLevel)5>("LinkMetrics", "SendMgmtRequestForwardTrackingSeries, error:%s, Series ID:%u", v9, v10, v11, v12, v13, v14, v8, v24);
  return Neighbor;
}

uint64_t ot::LinkMetrics::FwdProbingRegSubTlv::Init(ot::LinkMetrics::FwdProbingRegSubTlv *this)
{
  ot::Tlv::SetType(this, 3);
  return ot::Tlv::SetLength(this, 2);
}

{
  return ot::LinkMetrics::FwdProbingRegSubTlv::Init(this);
}

uint64_t ot::LinkMetrics::FwdProbingRegSubTlv::SetSeriesId(uint64_t this, char a2)
{
  *(this + 2) = a2;
  return this;
}

{
  return ot::LinkMetrics::FwdProbingRegSubTlv::SetSeriesId(this, a2);
}

uint64_t ot::LinkMetrics::FwdProbingRegSubTlv::SetSeriesFlagsMask(uint64_t this, char a2)
{
  *(this + 3) = a2;
  return this;
}

{
  return ot::LinkMetrics::FwdProbingRegSubTlv::SetSeriesFlagsMask(this, a2);
}

uint64_t ot::LinkMetrics::FwdProbingRegSubTlv::GetTypeIds(ot::LinkMetrics::FwdProbingRegSubTlv *this)
{
  return this + 4;
}

{
  return ot::LinkMetrics::FwdProbingRegSubTlv::GetTypeIds(this);
}

uint64_t ot::LinkMetrics::Initiator::SendMgmtRequestEnhAckProbing(ot::LinkMetrics::Initiator *a1, __n128 *a2, char a3, const ot::LinkMetrics::Metrics *a4)
{
  v17 = a1;
  v16 = a2;
  v15 = a3;
  v14 = a4;
  Neighbor = 0;
  v12 = 0;
  v11 = 0;
  Neighbor = ot::LinkMetrics::Initiator::FindNeighbor(a1, a2, &v12);
  if (!Neighbor)
  {
    if (v15 || !v14)
    {
      ot::LinkMetrics::EnhAckConfigSubTlv::Init(v10);
      ot::LinkMetrics::EnhAckConfigSubTlv::SetEnhAckFlags(v10, v15);
      if (v14)
      {
        v7 = v14;
        TypeIds = ot::LinkMetrics::EnhAckConfigSubTlv::GetTypeIds(v10);
        v11 = ot::LinkMetrics::Metrics::ConvertToTypeIds(v7, TypeIds);
      }

      ot::Tlv::SetLength(v10, v11 + 1);
      v5 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::Mle>(a1);
      Neighbor = ot::Mle::Mle::SendLinkMetricsManagementRequest(v5, v16, v10);
      if (v14)
      {
        ot::Neighbor::SetEnhAckProbingMetrics(v12, v14);
      }

      else
      {
        ot::Clearable<ot::LinkMetrics::Metrics>::Clear(&v9);
        ot::Neighbor::SetEnhAckProbingMetrics(v12, &v9);
      }
    }

    else
    {
      return 7;
    }
  }

  return Neighbor;
}

uint64_t ot::LinkMetrics::EnhAckConfigSubTlv::Init(ot::LinkMetrics::EnhAckConfigSubTlv *this)
{
  ot::Tlv::SetType(this, 7);
  return ot::Tlv::SetLength(this, 1);
}

{
  return ot::LinkMetrics::EnhAckConfigSubTlv::Init(this);
}

uint64_t ot::LinkMetrics::EnhAckConfigSubTlv::SetEnhAckFlags(uint64_t result, char a2)
{
  *(result + 2) = a2;
  return result;
}

{
  return ot::LinkMetrics::EnhAckConfigSubTlv::SetEnhAckFlags(result, a2);
}

uint64_t ot::LinkMetrics::EnhAckConfigSubTlv::GetTypeIds(ot::LinkMetrics::EnhAckConfigSubTlv *this)
{
  return this + 3;
}

{
  return ot::LinkMetrics::EnhAckConfigSubTlv::GetTypeIds(this);
}

uint64_t ot::Neighbor::SetEnhAckProbingMetrics(uint64_t this, const ot::LinkMetrics::Metrics *a2)
{
  *(this + 64) = *a2;
  return this;
}

{
  return ot::Neighbor::SetEnhAckProbingMetrics(this, a2);
}

_BYTE *ot::Clearable<ot::LinkMetrics::Metrics>::Clear(_BYTE *a1)
{
  return ot::ClearAllBytes<ot::LinkMetrics::Metrics>(a1);
}

{
  return ot::Clearable<ot::LinkMetrics::Metrics>::Clear(a1);
}

uint64_t ot::LinkMetrics::Initiator::HandleManagementResponse(ot::LinkMetrics::Initiator *this, const ot::Message *a2, const ot::Ip6::Address *a3)
{
  v20 = this;
  v19 = a2;
  v18 = a3;
  TlvValueOffsetRange = 0;
  v14 = 0;
  v13 = 0;
  if (ot::CallbackBase<void (*)(otIp6Address const*,otLinkMetricsStatus,void *)>::IsSet(this + 2))
  {
    TlvValueOffsetRange = ot::Tlv::FindTlvValueOffsetRange(v19, 0x58, &v16, v3);
    if (!TlvValueOffsetRange)
    {
      while (!ot::OffsetRange::IsEmpty(&v16))
      {
        TlvValueOffsetRange = ot::Tlv::ParsedInfo::ParseFrom(v15, v19, &v16);
        if (TlvValueOffsetRange)
        {
          return TlvValueOffsetRange;
        }

        if ((v15[1] & 1) == 0 && v15[0] == 5)
        {
          if (v13)
          {
            return 6;
          }

          v9 = v19;
          Offset = ot::OffsetRange::GetOffset(&v16);
          TlvValueOffsetRange = ot::Tlv::Read<ot::UintTlvInfo<(unsigned char)5,unsigned char>>(v9, Offset, &v14, v5, v6);
          if (TlvValueOffsetRange)
          {
            return TlvValueOffsetRange;
          }

          v13 = 1;
        }

        Size = ot::Tlv::ParsedInfo::GetSize(v15);
        ot::OffsetRange::AdvanceOffset(&v16, Size);
      }

      if (v13)
      {
        v12 = v18;
        v11 = ot::MapEnum<ot::LinkMetrics::Status>(v14);
        ot::Callback<void (*)(otIp6Address const*,otLinkMetricsStatus,void *),(ot::CallbackContextPosition)1>::Invoke<ot::Ip6::Address const*,otLinkMetricsStatus>(this + 16, &v12, &v11);
      }

      else
      {
        return 6;
      }
    }
  }

  return TlvValueOffsetRange;
}

BOOL ot::CallbackBase<void (*)(otIp6Address const*,otLinkMetricsStatus,void *)>::IsSet(void *a1)
{
  return *a1 != 0;
}

{
  return ot::CallbackBase<void (*)(otIp6Address const*,otLinkMetricsStatus,void *)>::IsSet(a1);
}

uint64_t ot::Callback<void (*)(otIp6Address const*,otLinkMetricsStatus,void *),(ot::CallbackContextPosition)1>::Invoke<ot::Ip6::Address const*,otLinkMetricsStatus>(uint64_t a1, void *a2, unsigned int *a3)
{
  return (*a1)(*a2, *a3, *(a1 + 8));
}

{
  return ot::Callback<void (*)(otIp6Address const*,otLinkMetricsStatus,void *),(ot::CallbackContextPosition)1>::Invoke<ot::Ip6::Address const*,otLinkMetricsStatus>(a1, a2, a3);
}

uint64_t ot::LinkMetrics::Initiator::SendLinkProbe(ot::LinkMetrics::Initiator *this, const ot::Ip6::Address *a2, unsigned __int8 a3, unsigned __int8 a4)
{
  v19 = this;
  v18 = a2;
  v17 = a3;
  v16 = a4;
  Neighbor = 0;
  v14 = 0;
  Neighbor = ot::LinkMetrics::Initiator::FindNeighbor(this, a2, &v14);
  if (!Neighbor)
  {
    if (v16 <= 0x40u && v17 && v17 != 255)
    {
      v4 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::Mle>(this);
      Neighbor = ot::Mle::Mle::SendLinkProbe(v4, v18, v17, v20, v16);
    }

    else
    {
      Neighbor = 7;
    }
  }

  v5 = ot::ErrorToString(Neighbor);
  ot::Logger::LogAtLevel<(ot::LogLevel)5>("LinkMetrics", "SendLinkProbe, error:%s, Series ID:%u", v6, v7, v8, v9, v10, v11, v5, v17);
  return Neighbor;
}

uint64_t ot::LinkMetrics::Initiator::ProcessEnhAckIeData(ot::LinkMetrics::Initiator *this, const unsigned __int8 *a2, unsigned __int8 a3, const ot::Neighbor *a4)
{
  v22 = this;
  v21 = a2;
  v20 = a3;
  v19 = a4;
  v17 = 0;
  result = ot::CallbackBase<void (*)(unsigned short,otExtAddress const*,otLinkMetricsValues const*,void *)>::IsSet(this + 4);
  if (result)
  {
    EnhAckProbingMetrics = ot::Neighbor::GetEnhAckProbingMetrics(v19);
    ot::LinkMetrics::MetricsValues::SetMetrics(v18, EnhAckProbingMetrics);
    ot::LinkMetrics::MetricsValues::GetMetrics(v18);
    if ((*v6 & 2) != 0 && v17 < v20)
    {
      v7 = v17++;
      v18[8] = v21[v7];
    }

    ot::LinkMetrics::MetricsValues::GetMetrics(v18);
    if ((*v8 & 4) != 0 && v17 < v20)
    {
      v9 = v17++;
      v18[9] = ot::LinkMetrics::ScaleRawValueToLinkMargin(v21[v9]);
    }

    ot::LinkMetrics::MetricsValues::GetMetrics(v18);
    if ((*v10 & 8) != 0 && v17 < v20)
    {
      v11 = v17++;
      v18[10] = ot::LinkMetrics::ScaleRawValueToRssi(v21[v11]);
    }

    Rloc16 = ot::Neighbor::GetRloc16(v19);
    ot::Neighbor::GetExtAddress(v19);
    v15 = v12;
    v14 = v18;
    return ot::Callback<void (*)(unsigned short,otExtAddress const*,otLinkMetricsValues const*,void *),(ot::CallbackContextPosition)1>::Invoke<unsigned short,ot::Mac::ExtAddress const*,ot::LinkMetrics::MetricsValues *>(this + 32, &Rloc16, &v15, &v14);
  }

  return result;
}

BOOL ot::CallbackBase<void (*)(unsigned short,otExtAddress const*,otLinkMetricsValues const*,void *)>::IsSet(void *a1)
{
  return *a1 != 0;
}

{
  return ot::CallbackBase<void (*)(unsigned short,otExtAddress const*,otLinkMetricsValues const*,void *)>::IsSet(a1);
}

_BYTE *ot::LinkMetrics::MetricsValues::SetMetrics(_BYTE *this, const ot::LinkMetrics::Metrics *a2)
{
  *this = *a2;
  return this;
}

{
  return ot::LinkMetrics::MetricsValues::SetMetrics(this, a2);
}

uint64_t ot::Neighbor::GetEnhAckProbingMetrics(ot::Neighbor *this)
{
  return this + 64;
}

{
  return ot::Neighbor::GetEnhAckProbingMetrics(this);
}

void ot::LinkMetrics::MetricsValues::GetMetrics(ot::LinkMetrics::MetricsValues *this)
{
  ;
}

{
  ot::LinkMetrics::MetricsValues::GetMetrics(this);
}

uint64_t ot::Callback<void (*)(unsigned short,otExtAddress const*,otLinkMetricsValues const*,void *),(ot::CallbackContextPosition)1>::Invoke<unsigned short,ot::Mac::ExtAddress const*,ot::LinkMetrics::MetricsValues *>(uint64_t a1, unsigned __int16 *a2, void *a3, void *a4)
{
  return (*a1)(*a2, *a3, *a4, *(a1 + 8));
}

{
  return ot::Callback<void (*)(unsigned short,otExtAddress const*,otLinkMetricsValues const*,void *),(ot::CallbackContextPosition)1>::Invoke<unsigned short,ot::Mac::ExtAddress const*,ot::LinkMetrics::MetricsValues *>(a1, a2, a3, a4);
}

ot::LinkMetrics::Subject *ot::LinkMetrics::Subject::Subject(ot::LinkMetrics::Subject *this, ot::Instance *a2)
{
  ot::InstanceLocator::InstanceLocator(this, a2);
  ot::Pool<ot::LinkMetrics::SeriesInfo,(unsigned short)64>::Pool(this + 1);
  return this;
}

{
  ot::LinkMetrics::Subject::Subject(this, a2);
  return this;
}

uint64_t *ot::Pool<ot::LinkMetrics::SeriesInfo,(unsigned short)64>::Pool(uint64_t *a1)
{
  ot::Pool<ot::LinkMetrics::SeriesInfo,(unsigned short)64>::Pool(a1);
  return a1;
}

{
  ot::OwnedPtr<ot::Message>::OwnedPtr(a1);
  for (i = a1 + 1; i != a1 + 193; i += 3)
  {
    ot::LinkedList<ot::LinkMetrics::SeriesInfo>::Push(a1, i);
  }

  return a1;
}

uint64_t ot::LinkMetrics::Subject::AppendReport(ot::LinkMetrics::Subject *this, ot::Message *a2, const ot::Message *a3, ot::Neighbor *a4)
{
  v51 = this;
  v50 = a2;
  v49 = a3;
  v48 = a4;
  v32 = this;
  TlvValueOffsetRange = 0;
  v43 = 0;
  v42 = 0;
  v41 = 0;
  Length = 0;
  ot::Clearable<ot::LinkMetrics::MetricsValues>::Clear(v34);
  TlvValueOffsetRange = ot::Tlv::FindTlvValueOffsetRange(v49, 0x57, &v39, v4);
  if (!TlvValueOffsetRange)
  {
    while (!ot::OffsetRange::IsEmpty(&v39))
    {
      TlvValueOffsetRange = ot::Tlv::ParsedInfo::ParseFrom(v44, v49, &v39);
      if (TlvValueOffsetRange)
      {
        goto LABEL_26;
      }

      if ((v44[1] & 1) == 0)
      {
        v31 = v44[0];
        if (v44[0] == 1)
        {
          v30 = v49;
          Offset = ot::OffsetRange::GetOffset(&v45);
          TlvValueOffsetRange = ot::Tlv::Read<ot::UintTlvInfo<(unsigned char)1,unsigned char>>(v30, Offset, &v43, v6, v7);
          if (TlvValueOffsetRange)
          {
            goto LABEL_26;
          }

          v42 = 1;
        }

        else if (v31 == 2)
        {
          v29 = v49;
          v28 = (&v45 + 4);
          ot::LinkMetrics::MetricsValues::GetMetrics(v34);
          TlvValueOffsetRange = ot::LinkMetrics::Subject::ReadTypeIdsFromMessage(v29, (&v45 + 4), v8, v9);
          if (TlvValueOffsetRange)
          {
            goto LABEL_26;
          }
        }
      }

      Size = ot::Tlv::ParsedInfo::GetSize(v44);
      ot::OffsetRange::AdvanceOffset(&v39, Size);
    }

    if (v42)
    {
      Length = ot::Message::GetLength(v50);
      ot::Tlv::SetType(v46, 89);
      TlvValueOffsetRange = ot::Message::Append<ot::Tlv>(v50, v46);
      if (!TlvValueOffsetRange)
      {
        if (v43)
        {
          ForwardTrackingSeriesInfo = ot::Neighbor::GetForwardTrackingSeriesInfo(v48, &v43);
          if (ForwardTrackingSeriesInfo)
          {
            if (ot::LinkMetrics::SeriesInfo::GetPduCount(ForwardTrackingSeriesInfo))
            {
              LinkMetrics = ot::LinkMetrics::SeriesInfo::GetLinkMetrics(ForwardTrackingSeriesInfo);
              ot::LinkMetrics::MetricsValues::SetMetrics(v34, LinkMetrics);
              PduCount = ot::LinkMetrics::SeriesInfo::GetPduCount(ForwardTrackingSeriesInfo);
              AverageLqi = ot::LinkMetrics::SeriesInfo::GetAverageLqi(ForwardTrackingSeriesInfo);
              v26 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mac::Mac>(v32);
              AverageRss = ot::LinkMetrics::SeriesInfo::GetAverageRss(ForwardTrackingSeriesInfo);
              v37 = ot::Mac::Mac::ComputeLinkMargin(v26, AverageRss);
              v38 = ot::LinkMetrics::SeriesInfo::GetAverageRss(ForwardTrackingSeriesInfo);
              TlvValueOffsetRange = ot::LinkMetrics::Subject::AppendReportSubTlvToMessage(v50, v34, v15);
              if (TlvValueOffsetRange)
              {
                goto LABEL_26;
              }
            }

            else
            {
              TlvValueOffsetRange = ot::Tlv::Append<ot::UintTlvInfo<(unsigned char)5,unsigned char>>(v50, 4u);
              if (TlvValueOffsetRange)
              {
                goto LABEL_26;
              }
            }
          }

          else
          {
            TlvValueOffsetRange = ot::Tlv::Append<ot::UintTlvInfo<(unsigned char)5,unsigned char>>(v50, 3u);
            if (TlvValueOffsetRange)
            {
              goto LABEL_26;
            }
          }
        }

        else
        {
          PduCount = ot::Message::GetPsduCount(v49);
          AverageLqi = ot::Message::GetAverageLqi(v49);
          v27 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mac::Mac>(v32);
          v11 = ot::Message::GetAverageRss(v49);
          v37 = ot::Mac::Mac::ComputeLinkMargin(v27, v11);
          v38 = ot::Message::GetAverageRss(v49);
          TlvValueOffsetRange = ot::LinkMetrics::Subject::AppendReportSubTlvToMessage(v50, v34, v12);
          if (TlvValueOffsetRange)
          {
            goto LABEL_26;
          }
        }

        v16 = ot::Message::GetLength(v50);
        v41 = v16 - Length - 2;
        v25 = v46;
        ot::Tlv::SetLength(v46, v16 - Length - 2);
        ot::Message::Write<ot::Tlv>(v50, Length, v46);
      }
    }

    else
    {
      TlvValueOffsetRange = 6;
    }
  }

LABEL_26:
  v17 = ot::ErrorToString(TlvValueOffsetRange);
  ot::Logger::LogAtLevel<(ot::LogLevel)5>("LinkMetrics", "AppendReport, error:%s", v18, v19, v20, v21, v22, v23, v17);
  return TlvValueOffsetRange;
}

uint64_t ot::Tlv::Read<ot::UintTlvInfo<(unsigned char)1,unsigned char>>(ot::Tlv *a1, unsigned __int16 a2, char *a3, uint64_t a4, unsigned __int8 a5)
{
  return ot::Tlv::ReadUintTlv<unsigned char>(a1, a2, a3, a4, a5);
}

{
  return ot::Tlv::Read<ot::UintTlvInfo<(unsigned char)1,unsigned char>>(a1, a2, a3, a4, a5);
}

uint64_t ot::LinkMetrics::Subject::ReadTypeIdsFromMessage(ot::LinkMetrics::Subject *this, const ot::Message *a2, const ot::OffsetRange *a3, ot::LinkMetrics::Metrics *a4)
{
  v8 = this;
  v7 = a2;
  v6 = a3;
  *&v5[5] = 0;
  *&v5[1] = *a2;
  ot::Clearable<ot::LinkMetrics::Metrics>::Clear(a3);
  while (!ot::OffsetRange::IsEmpty(&v5[1]))
  {
    v5[0] = 0;
    if (ot::Message::Read<unsigned char>(v8, &v5[1], v5))
    {
      break;
    }

    switch(v5[0])
    {
      case 9:
        if ((*v6 & 2) != 0)
        {
          *&v5[5] = 6;
          return *&v5[5];
        }

        *v6 = *v6 & 0xFD | 2;
        break;
      case 0xA:
        if ((*v6 & 4) != 0)
        {
          *&v5[5] = 6;
          return *&v5[5];
        }

        *v6 = *v6 & 0xFB | 4;
        break;
      case 0xB:
        if ((*v6 & 8) != 0)
        {
          *&v5[5] = 6;
          return *&v5[5];
        }

        *v6 = *v6 & 0xF7 | 8;
        break;
      case 0x40:
        if (*v6)
        {
          *&v5[5] = 6;
          return *&v5[5];
        }

        *v6 = *v6 & 0xFE | 1;
        break;
      default:
        if (ot::LinkMetrics::TypeId::IsExtended(v5[0]))
        {
          ot::OffsetRange::AdvanceOffset(&v5[1], 1u);
        }

        else
        {
          *v6 = *v6 & 0xEF | 0x10;
        }

        break;
    }

    ot::OffsetRange::AdvanceOffset(&v5[1], 1u);
  }

  return *&v5[5];
}

uint64_t ot::Message::GetPsduCount(ot::Message *this)
{
  Metadata = ot::Buffer::GetMetadata(this);
  return ot::LqiAverager::GetCount((Metadata + 60));
}

{
  return ot::Message::GetPsduCount(this);
}

uint64_t ot::LinkMetrics::Subject::AppendReportSubTlvToMessage(ot::LinkMetrics::Subject *this, ot::Message *a2, const ot::LinkMetrics::MetricsValues *a3)
{
  v9 = this;
  v8 = a2;
  v7 = 0;
  ot::LinkMetrics::ReportSubTlv::Init(v6);
  if ((*v8 & 1) == 0 || (ot::LinkMetrics::ReportSubTlv::SetMetricsTypeId(v6, 64), ot::LinkMetrics::ReportSubTlv::SetMetricsValue32(v6, *(v8 + 1)), (v7 = ot::Tlv::AppendTo(v6, v9)) == 0))
  {
    if ((*v8 & 2) == 0 || (ot::LinkMetrics::ReportSubTlv::SetMetricsTypeId(v6, 9), ot::LinkMetrics::ReportSubTlv::SetMetricsValue8(v6, *(v8 + 8)), (v7 = ot::Tlv::AppendTo(v6, v9)) == 0))
    {
      if ((*v8 & 4) == 0 || (ot::LinkMetrics::ReportSubTlv::SetMetricsTypeId(v6, 10), v3 = ot::LinkMetrics::ScaleLinkMarginToRawValue(*(v8 + 9)), ot::LinkMetrics::ReportSubTlv::SetMetricsValue8(v6, v3), (v7 = ot::Tlv::AppendTo(v6, v9)) == 0))
      {
        if ((*v8 & 8) != 0)
        {
          ot::LinkMetrics::ReportSubTlv::SetMetricsTypeId(v6, 11);
          v4 = ot::LinkMetrics::ScaleRssiToRawValue(*(v8 + 10));
          ot::LinkMetrics::ReportSubTlv::SetMetricsValue8(v6, v4);
          return ot::Tlv::AppendTo(v6, v9);
        }
      }
    }
  }

  return v7;
}

uint64_t ot::Tlv::Append<ot::UintTlvInfo<(unsigned char)5,unsigned char>>(uint64_t a1, unsigned __int8 a2)
{
  return ot::Tlv::AppendUintTlv<unsigned char>(a1, 5, a2);
}

{
  return ot::Tlv::Append<ot::UintTlvInfo<(unsigned char)5,unsigned char>>(a1, a2);
}

uint64_t ot::LinkMetrics::SeriesInfo::GetPduCount(ot::LinkMetrics::SeriesInfo *this)
{
  return *(this + 4);
}

{
  return ot::LinkMetrics::SeriesInfo::GetPduCount(this);
}

uint64_t ot::LinkMetrics::SeriesInfo::GetLinkMetrics(ot::LinkMetrics::SeriesInfo *this)
{
  return this + 10;
}

{
  return ot::LinkMetrics::SeriesInfo::GetLinkMetrics(this);
}

uint64_t ot::LinkMetrics::SeriesInfo::GetAverageLqi(ot::LinkMetrics::SeriesInfo *this)
{
  return ot::LqiAverager::GetAverage((this + 14));
}

{
  return ot::LinkMetrics::SeriesInfo::GetAverageLqi(this);
}

uint64_t ot::LinkMetrics::SeriesInfo::GetAverageRss(ot::LinkMetrics::SeriesInfo *this)
{
  return ot::RssAverager::GetAverage((this + 12));
}

{
  return ot::LinkMetrics::SeriesInfo::GetAverageRss(this);
}

uint64_t ot::Message::Write<ot::Tlv>(ot::Message *a1, unsigned __int16 a2, char *a3)
{
  return ot::Message::WriteBytes(a1, a2, a3, 2u);
}

{
  return ot::Message::Write<ot::Tlv>(a1, a2, a3);
}

uint64_t ot::LinkMetrics::Subject::HandleManagementRequest(ot::LinkMetrics::Subject *a1, ot::Message *a2, ot::Neighbor *a3, ot::OffsetRange *a4)
{
  v27 = a1;
  v26 = a2;
  v25 = a3;
  v24 = a4;
  TlvValueOffsetRange = 0;
  TlvValueOffsetRange = ot::Tlv::FindTlvValueOffsetRange(a2, 0x58, &v22, a4);
  if (TlvValueOffsetRange)
  {
    return TlvValueOffsetRange;
  }

  ot::Tlv::SetLength(v19, 0);
  ot::Tlv::SetLength(v18, 0);
  while (!ot::OffsetRange::IsEmpty(&v22))
  {
    v16 = 0;
    v15 = 0;
    TlvValueOffsetRange = ot::Tlv::ParsedInfo::ParseFrom(v20, v26, &v22);
    if (TlvValueOffsetRange)
    {
      return TlvValueOffsetRange;
    }

    if ((v20[1] & 1) == 0)
    {
      v14 = v21;
      if (v20[0] == 3)
      {
        v15 = v19;
        v16 = 4;
      }

      else
      {
        if (v20[0] != 7)
        {
          goto LABEL_19;
        }

        v15 = v18;
        v16 = 3;
      }

      if (ot::Tlv::GetLength(v19))
      {
        return 6;
      }

      if (ot::Tlv::GetLength(v18))
      {
        return 6;
      }

      Size = ot::Tlv::ParsedInfo::GetSize(v20);
      if (Size < v16)
      {
        return 6;
      }

      TlvValueOffsetRange = ot::Message::Read(v26, &v14, v15, v16);
      if (TlvValueOffsetRange)
      {
        return TlvValueOffsetRange;
      }

      ot::OffsetRange::AdvanceOffset(&v14, v16);
      TlvValueOffsetRange = ot::LinkMetrics::Subject::ReadTypeIdsFromMessage(v26, &v14, &v17, v5);
      if (TlvValueOffsetRange)
      {
        return TlvValueOffsetRange;
      }
    }

LABEL_19:
    v6 = ot::Tlv::ParsedInfo::GetSize(v20);
    ot::OffsetRange::AdvanceOffset(&v22, v6);
  }

  if (ot::Tlv::GetLength(v19))
  {
    SeriesId = ot::LinkMetrics::FwdProbingRegSubTlv::GetSeriesId(v19);
    SeriesFlagsMask = ot::LinkMetrics::FwdProbingRegSubTlv::GetSeriesFlagsMask(v19);
    v8 = ot::LinkMetrics::Subject::ConfigureForwardTrackingSeries(a1, SeriesId, SeriesFlagsMask, &v17, v25);
    *v24 = v8;
  }

  if (ot::Tlv::GetLength(v18))
  {
    EnhAckFlags = ot::LinkMetrics::EnhAckConfigSubTlv::GetEnhAckFlags(v18);
    v10 = ot::LinkMetrics::Subject::ConfigureEnhAckProbing(a1, EnhAckFlags, &v17, v25);
    *v24 = v10;
  }

  return TlvValueOffsetRange;
}

uint64_t ot::LinkMetrics::Subject::ConfigureForwardTrackingSeries(ot::LinkMetrics::Subject *this, unsigned __int8 a2, char a3, const ot::LinkMetrics::Metrics *a4, ot::Neighbor *a5)
{
  v14 = this;
  v13 = a2;
  v9 = 0;
  if (a2)
  {
    if (a3)
    {
      if (ot::Neighbor::GetForwardTrackingSeriesInfo(a5, &v13))
      {
        return 2;
      }

      else
      {
        v7 = ot::Pool<ot::LinkMetrics::SeriesInfo,(unsigned short)64>::Allocate(this + 1);
        if (v7)
        {
          ot::LinkMetrics::SeriesInfo::Init(v7, v13, a3, a4);
          ot::Neighbor::AddForwardTrackingSeriesInfo(a5, v7);
        }

        else
        {
          return 1;
        }
      }
    }

    else if (v13 == 255)
    {
      ot::Neighbor::RemoveAllForwardTrackingSeriesInfo(a5);
    }

    else
    {
      v8 = ot::Neighbor::RemoveForwardTrackingSeriesInfo(a5, &v13);
      if (v8)
      {
        ot::Pool<ot::LinkMetrics::SeriesInfo,(unsigned short)64>::Free(this + 1, v8);
      }

      else
      {
        return 3;
      }
    }
  }

  else
  {
    return -2;
  }

  return v9;
}

uint64_t ot::LinkMetrics::FwdProbingRegSubTlv::GetSeriesId(ot::LinkMetrics::FwdProbingRegSubTlv *this)
{
  return *(this + 2);
}

{
  return ot::LinkMetrics::FwdProbingRegSubTlv::GetSeriesId(this);
}

uint64_t ot::LinkMetrics::FwdProbingRegSubTlv::GetSeriesFlagsMask(ot::LinkMetrics::FwdProbingRegSubTlv *this)
{
  return *(this + 3);
}

{
  return ot::LinkMetrics::FwdProbingRegSubTlv::GetSeriesFlagsMask(this);
}

uint64_t ot::LinkMetrics::Subject::ConfigureEnhAckProbing(ot::LinkMetrics::Subject *this, char a2, const ot::LinkMetrics::Metrics *a3, ot::Neighbor *a4)
{
  v18 = this;
  v17 = a2;
  v16 = a3;
  v15 = a4;
  v14 = 0;
  v13 = 0;
  if ((*a3 & 0x10) != 0)
  {
    return -2;
  }

  else
  {
    if (v17 == 1)
    {
      if (*v16)
      {
        return -2;
      }

      if ((*v16 & 2) == 0 && (*v16 & 4) == 0 && (*v16 & 8) == 0)
      {
        return -2;
      }

      if ((*v16 & 2) != 0 && (*v16 & 4) != 0 && (*v16 & 8) != 0)
      {
        return -2;
      }

      v8 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Radio>(this);
      v12 = *v16;
      Rloc16 = ot::Neighbor::GetRloc16(v15);
      ot::Neighbor::GetExtAddress(v15);
      v13 = ot::Radio::ConfigureEnhAckProbing(v8, v12, &Rloc16, v4);
    }

    else if (v17)
    {
      v14 = -2;
    }

    else
    {
      if ((*v16 & 2) != 0 || (*v16 & 4) != 0 || (*v16 & 8) != 0)
      {
        return -2;
      }

      v7 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Radio>(this);
      v10 = *v16;
      v9 = ot::Neighbor::GetRloc16(v15);
      ot::Neighbor::GetExtAddress(v15);
      v13 = ot::Radio::ConfigureEnhAckProbing(v7, v10, &v9, v5);
    }

    if (v13)
    {
      return -2;
    }
  }

  return v14;
}

uint64_t ot::LinkMetrics::EnhAckConfigSubTlv::GetEnhAckFlags(ot::LinkMetrics::EnhAckConfigSubTlv *this)
{
  return *(this + 2);
}

{
  return ot::LinkMetrics::EnhAckConfigSubTlv::GetEnhAckFlags(this);
}

uint64_t ot::LinkMetrics::Subject::HandleLinkProbe(ot::LinkMetrics::Subject *this, const ot::Message *a2, char *a3, ot::OffsetRange *a4)
{
  v9 = this;
  v8 = a2;
  v7 = a3;
  TlvValueOffsetRange = 0;
  TlvValueOffsetRange = ot::Tlv::FindTlvValueOffsetRange(a2, 0x5A, &v5, a4);
  if (!TlvValueOffsetRange)
  {
    return ot::Message::Read<unsigned char>(v8, &v5, v7);
  }

  return TlvValueOffsetRange;
}

_BYTE *ot::LinkMetrics::ReportSubTlv::Init(ot::LinkMetrics::ReportSubTlv *this)
{
  return ot::Tlv::SetType(this, 0);
}

{
  return ot::LinkMetrics::ReportSubTlv::Init(this);
}

uint64_t ot::LinkMetrics::ReportSubTlv::SetMetricsTypeId(uint64_t this, char a2)
{
  *(this + 2) = a2;
  return this;
}

{
  return ot::LinkMetrics::ReportSubTlv::SetMetricsTypeId(this, a2);
}

uint64_t ot::LinkMetrics::ReportSubTlv::SetMetricsValue32(ot::LinkMetrics::ReportSubTlv *this, unsigned int a2)
{
  *(this + 3) = ot::BigEndian::HostSwap32(a2, a2);
  return ot::Tlv::SetLength(this, 5);
}

{
  return ot::LinkMetrics::ReportSubTlv::SetMetricsValue32(this, a2);
}

uint64_t ot::LinkMetrics::ReportSubTlv::SetMetricsValue8(ot::LinkMetrics::ReportSubTlv *this, char a2)
{
  *(this + 3) = a2;
  return ot::Tlv::SetLength(this, 2);
}

{
  return ot::LinkMetrics::ReportSubTlv::SetMetricsValue8(this, a2);
}

void *ot::Pool<ot::LinkMetrics::SeriesInfo,(unsigned short)64>::Free(uint64_t *a1, void *a2)
{
  return ot::LinkedList<ot::LinkMetrics::SeriesInfo>::Push(a1, a2);
}

{
  return ot::Pool<ot::LinkMetrics::SeriesInfo,(unsigned short)64>::Free(a1, a2);
}

uint64_t ot::Pool<ot::LinkMetrics::SeriesInfo,(unsigned short)64>::Allocate(uint64_t *a1)
{
  return ot::LinkedList<ot::LinkMetrics::SeriesInfo>::Pop(a1);
}

{
  return ot::Pool<ot::LinkMetrics::SeriesInfo,(unsigned short)64>::Allocate(a1);
}

uint64_t ot::Radio::ConfigureEnhAckProbing(ot::Radio *a1, char a2, unsigned __int16 *a3, uint64_t a4)
{
  InstancePtr = ot::Radio::GetInstancePtr(a1);
  return otPlatRadioConfigureEnhAckProbing(InstancePtr, a2, *a3, a4);
}

{
  return ot::Radio::ConfigureEnhAckProbing(a1, a2, a3, a4);
}

uint64_t ot::DivideAndRoundToClosest<unsigned short>(unsigned __int16 a1, unsigned __int16 a2)
{
  return ((a1 + a2 / 2) / a2);
}

{
  return ot::DivideAndRoundToClosest<unsigned short>(a1, a2);
}

uint64_t ot::Clamp<int>(int a1, int a2, int a3)
{
  v4 = ot::Max<int>(a1, a2);
  return ot::Min<int>(v4, a3);
}

{
  return ot::Clamp<int>(a1, a2, a3);
}

uint64_t ot::DivideAndRoundToClosest<int>(int a1, int a2)
{
  return ((a1 + a2 / 2) / a2);
}

{
  return ot::DivideAndRoundToClosest<int>(a1, a2);
}

uint64_t ot::ClampToInt8<int>(int a1)
{
  return ot::Clamp<int>(a1, -128, 127);
}

{
  return ot::ClampToInt8<int>(a1);
}

uint64_t ot::LqiAverager::GetCount(ot::LqiAverager *this)
{
  return *(this + 1);
}

{
  return ot::LqiAverager::GetCount(this);
}

uint64_t ot::ClearAllBytes<ot::LinkMetrics::Initiator::QueryInfo>(uint64_t result)
{
  *result = 0;
  *(result + 4) = 0;
  return result;
}

{
  return ot::ClearAllBytes<ot::LinkMetrics::Initiator::QueryInfo>(result);
}

uint64_t ot::ClearAllBytes<ot::LinkMetrics::MetricsValues>(uint64_t result)
{
  *result = 0;
  *(result + 8) = 0;
  return result;
}

{
  return ot::ClearAllBytes<ot::LinkMetrics::MetricsValues>(result);
}

_BYTE *ot::ClearAllBytes<ot::LinkMetrics::Metrics>(_BYTE *result)
{
  *result = 0;
  return result;
}

{
  return ot::ClearAllBytes<ot::LinkMetrics::Metrics>(result);
}

void *ot::LinkedList<ot::LinkMetrics::SeriesInfo>::Push(uint64_t *a1, void *a2)
{
  result = ot::LinkedListEntry<ot::LinkMetrics::SeriesInfo>::SetNext(a2, *a1);
  *a1 = a2;
  return result;
}

{
  return ot::LinkedList<ot::LinkMetrics::SeriesInfo>::Push(a1, a2);
}

void *ot::LinkedListEntry<ot::LinkMetrics::SeriesInfo>::SetNext(void *result, uint64_t a2)
{
  *result = a2;
  return result;
}

{
  return ot::LinkedListEntry<ot::LinkMetrics::SeriesInfo>::SetNext(result, a2);
}

uint64_t ot::LinkedList<ot::LinkMetrics::SeriesInfo>::Pop(uint64_t *a1)
{
  v2 = *a1;
  if (*a1)
  {
    *a1 = ot::LinkedListEntry<ot::LinkMetrics::SeriesInfo>::GetNext(*a1);
  }

  return v2;
}

{
  return ot::LinkedList<ot::LinkMetrics::SeriesInfo>::Pop(a1);
}

uint64_t ot::LinkedListEntry<ot::LinkMetrics::SeriesInfo>::GetNext(uint64_t a1)
{
  return *a1;
}

{
  return ot::LinkedListEntry<ot::LinkMetrics::SeriesInfo>::GetNext(a1);
}

_WORD *ot::SuccessRateTracker::AddSample(_WORD *this, char a2, unsigned __int16 a3)
{
  if (a2)
  {
    v3 = 0;
  }

  else
  {
    v3 = 0xFFFF;
  }

  *this = (*this * (a3 - 1) + v3 + a3 / 2u) / a3;
  return this;
}

uint64_t ot::RssAverager::Add(ot::RssAverager *this, char a2)
{
  v7 = 0;
  if (a2 == 127)
  {
    return 7;
  }

  else
  {
    v2 = ot::Min<signed char>(a2, 0);
    v3 = *this >> 11;
    if (v3 >= 8)
    {
      v4 = v3;
    }

    else
    {
      v4 = v3 + 1;
    }

    *this = *this & 0x7FF | ((v4 & 0x1F) << 11);
    *this = *this & 0xF800 | (((*this & 0x7FF) * ((*this >> 11) - 1) + (-8 * v2)) / (*this >> 11)) & 0x7FF;
  }

  return v7;
}

uint64_t ot::RssAverager::GetAverage(ot::RssAverager *this)
{
  if (*this >> 11)
  {
    v2 = -((*this & 0x7FF) >> 3);
    if ((*this & 7u) >= 4)
    {
      --v2;
    }
  }

  else
  {
    return 127;
  }

  return v2;
}

ot::StringWriter *ot::RssAverager::ToString@<X0>(ot::RssAverager *this@<X0>, ot::StringWriter *a2@<X8>)
{
  result = ot::String<(unsigned short)10>::String(a2);
  if (*this >> 11)
  {
    return ot::StringWriter::Append(a2, "%d.%s", -((*this & 0x7FF) >> 3), ot::kDigitsString[*this & 7]);
  }

  return result;
}

uint64_t ot::String<(unsigned short)10>::String(uint64_t a1)
{
  ot::String<(unsigned short)10>::String(a1);
  return a1;
}

{
  ot::StringWriter::StringWriter(a1, (a1 + 12), 10);
  return a1;
}

uint64_t ot::LqiAverager::Add(ot::LqiAverager *this, unsigned __int8 a2)
{
  if (*(this + 1) != 255)
  {
    ++*(this + 1);
  }

  result = ot::Min<unsigned char>(8u, *(this + 1));
  *this = (*this * (result - 1) + a2) / result;
  return result;
}

_WORD *ot::LinkQualityInfo::Clear(ot::LinkQualityInfo *this)
{
  ot::Clearable<ot::RssAverager>::Clear(this);
  ot::LinkQualityInfo::SetLinkQuality(this, 0);
  *(this + 3) = 127;
  ot::Clearable<ot::SuccessRateTracker>::Clear(this + 2);
  return ot::Clearable<ot::SuccessRateTracker>::Clear(this + 3);
}

uint64_t ot::LinkQualityInfo::SetLinkQuality(uint64_t result, char a2)
{
  *(result + 2) = a2;
  return result;
}

{
  return ot::LinkQualityInfo::SetLinkQuality(result, a2);
}

ot::LinkQualityInfo *ot::LinkQualityInfo::AddRss(ot::LinkQualityInfo *this, char a2)
{
  v4 = this;
  LinkQuality = -1;
  if (a2 != 127)
  {
    *(this + 3) = a2;
    if (ot::RssAverager::HasAverage(this))
    {
      LinkQuality = ot::LinkQualityInfo::GetLinkQuality(v4);
    }

    this = ot::RssAverager::Add(v4, a2);
    if (!this)
    {
      LinkMargin = ot::LinkQualityInfo::GetLinkMargin(v4);
      v3 = ot::LinkQualityInfo::CalculateLinkQuality(LinkMargin, LinkQuality);
      return ot::LinkQualityInfo::SetLinkQuality(v4, v3);
    }
  }

  return this;
}

BOOL ot::RssAverager::HasAverage(ot::RssAverager *this)
{
  return *this >> 11 != 0;
}

{
  return ot::RssAverager::HasAverage(this);
}

uint64_t ot::LinkQualityInfo::CalculateLinkQuality(ot::LinkQualityInfo *this, char a2)
{
  v3 = 0;
  v6 = 2;
  v5 = 10;
  v4 = 20;
  switch(a2)
  {
    case 0:
      v6 = 4;
      goto LABEL_6;
    case 1:
LABEL_6:
      v5 = 12;
      goto LABEL_7;
    case 2:
LABEL_7:
      v4 = 22;
      break;
  }

  if (this <= v4)
  {
    if (this <= v5)
    {
      if (this > v6)
      {
        return 1;
      }
    }

    else
    {
      return 2;
    }
  }

  else
  {
    return 3;
  }

  return v3;
}

uint64_t ot::LinkQualityInfo::GetLinkMargin(ot::LinkQualityInfo *this)
{
  v1 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mac::SubMac>(this);
  NoiseFloor = ot::Mac::SubMac::GetNoiseFloor(v1);
  AverageRss = ot::LinkQualityInfo::GetAverageRss(this);
  return ot::ComputeLinkMargin(NoiseFloor, AverageRss);
}

uint64_t ot::ComputeLinkMargin(ot *this, char a2)
{
  v3 = a2 - this;
  if ((a2 - this) < 0 || a2 == 127)
  {
    return 0;
  }

  return v3;
}

ot::StringWriter *ot::LinkQualityInfo::ToInfoString@<X0>(ot::LinkQualityInfo *this@<X0>, ot::StringWriter *a2@<X8>)
{
  ot::String<(unsigned short)50>::String(a2);
  ot::RssAverager::ToString(this, v8);
  v5 = ot::String<(unsigned short)10>::AsCString(v8);
  LastRss = ot::LinkQualityInfo::GetLastRss(this);
  LinkQuality = ot::LinkQualityInfo::GetLinkQuality(this);
  return ot::StringWriter::Append(a2, "aveRss:%s, lastRss:%d, linkQuality:%d", v5, LastRss, LinkQuality);
}

uint64_t ot::String<(unsigned short)50>::String(uint64_t a1)
{
  ot::String<(unsigned short)50>::String(a1);
  return a1;
}

{
  ot::StringWriter::StringWriter(a1, (a1 + 12), 50);
  return a1;
}

uint64_t ot::String<(unsigned short)10>::AsCString(uint64_t a1)
{
  return a1 + 12;
}

{
  return ot::String<(unsigned short)10>::AsCString(a1);
}

ot::StringWriter *ot::LinkQualityInfo::ToErrorRateInfoString@<X0>(ot::LinkQualityInfo *this@<X0>, ot::StringWriter *a2@<X8>)
{
  ot::String<(unsigned short)128>::String(a2);
  v5 = ot::LinkQualityInfo::GetFrameErrorRatePercent(this) / 0x64;
  v6 = ot::LinkQualityInfo::GetFrameErrorRatePercent(this) % 0x64;
  v7 = ot::LinkQualityInfo::GetMessageErrorRatePercent(this) / 0x64;
  v8 = ot::LinkQualityInfo::GetMessageErrorRatePercent(this) % 0x64;
  v9 = ot::LinkQualityInfo::GetMatterMessageErrorRatePercent(this) / 0x64;
  v10 = ot::LinkQualityInfo::GetMatterMessageErrorRatePercent(this) % 0x64;
  v11 = ot::LinkQualityInfo::GetHapMessageErrorRatePercent(this) / 0x64;
  HapMessageErrorRatePercent = ot::LinkQualityInfo::GetHapMessageErrorRatePercent(this);
  return ot::StringWriter::Append(a2, ", frameErrorRate:%d.%02d%%, messageErrorRate:%d.%02d%%, MatterMessageErrorRate:%d.%02d%%, HapMessageErrorRate:%d.%02d%%", v5, v6, v7, v8, v9, v10, v11, HapMessageErrorRatePercent % 0x64);
}

uint64_t ot::String<(unsigned short)128>::String(uint64_t a1)
{
  ot::String<(unsigned short)128>::String(a1);
  return a1;
}

{
  ot::StringWriter::StringWriter(a1, (a1 + 12), 128);
  return a1;
}

uint64_t ot::LinkQualityInfo::GetFrameErrorRatePercent(ot::LinkQualityInfo *this)
{
  return ot::SuccessRateTracker::GetFailureRatePercent((this + 4));
}

{
  return ot::LinkQualityInfo::GetFrameErrorRatePercent(this);
}

uint64_t ot::LinkQualityInfo::GetMessageErrorRatePercent(ot::LinkQualityInfo *this)
{
  return ot::SuccessRateTracker::GetFailureRatePercent((this + 6));
}

{
  return ot::LinkQualityInfo::GetMessageErrorRatePercent(this);
}

uint64_t ot::LinkQualityInfo::GetMatterMessageErrorRatePercent(ot::LinkQualityInfo *this)
{
  return ot::SuccessRateTracker::GetFailureRatePercent((this + 8));
}

{
  return ot::LinkQualityInfo::GetMatterMessageErrorRatePercent(this);
}

uint64_t ot::LinkQualityInfo::GetHapMessageErrorRatePercent(ot::LinkQualityInfo *this)
{
  return ot::SuccessRateTracker::GetFailureRatePercent((this + 10));
}

{
  return ot::LinkQualityInfo::GetHapMessageErrorRatePercent(this);
}

uint64_t ot::GetTypicalRssForLinkQuality(char a1, char a2)
{
  switch(a2)
  {
    case 1:
      v3 = 5;
      break;
    case 2:
      v3 = 15;
      break;
    case 3:
      v3 = 50;
      break;
    default:
      v3 = 0;
      break;
  }

  return (v3 + a1);
}

uint64_t ot::CostForLinkQuality(unsigned __int8 a1)
{
  v2 = 16;
  if (a1 <= 3u)
  {
    return ot::CostForLinkQuality(ot::LinkQuality)::kCostsForLinkQuality[a1];
  }

  return v2;
}

ot::Lowpan::Lowpan *ot::Lowpan::Lowpan::Lowpan(ot::Lowpan::Lowpan *this, ot::Instance *a2)
{
  ot::InstanceLocator::InstanceLocator(this, a2);
  return this;
}

{
  ot::Lowpan::Lowpan::Lowpan(this, a2);
  return this;
}

uint64_t ot::Lowpan::Lowpan::FindContextForId(ot::InstanceLocator *a1, unsigned __int8 a2, ot::Ip6::Prefix *a3)
{
  v3 = ot::GetProvider<ot::InstanceLocator>::Get<ot::NetworkData::Leader>(a1);
  result = ot::NetworkData::Leader::GetContext(v3, a2, a3);
  if (result)
  {
    return ot::Clearable<ot::Lowpan::Context>::Clear(a3);
  }

  return result;
}

uint64_t ot::Clearable<ot::Lowpan::Context>::Clear(uint64_t a1)
{
  return ot::ClearAllBytes<ot::Lowpan::Context>(a1);
}

{
  return ot::Clearable<ot::Lowpan::Context>::Clear(a1);
}

uint64_t ot::Lowpan::Lowpan::FindContextToCompressAddress(ot::InstanceLocator *a1, const ot::Ip6::Address *a2, ot::Ip6::Prefix *a3)
{
  v3 = ot::GetProvider<ot::InstanceLocator>::Get<ot::NetworkData::Leader>(a1);
  result = ot::NetworkData::Leader::GetContext(v3, a2, a3);
  if (result || (*(a3 + 18) & 1) == 0)
  {
    return ot::Clearable<ot::Lowpan::Context>::Clear(a3);
  }

  return result;
}

uint64_t ot::Lowpan::Lowpan::ComputeIid(ot::Mac::Address *a1, const ot::Ip6::Prefix *a2, ot::Ip6::InterfaceIdentifier *a3)
{
  v7 = 0;
  Type = ot::Mac::Address::GetType(a1);
  if (Type == 1)
  {
    Short = ot::Mac::Address::GetShort(a1);
    ot::Ip6::InterfaceIdentifier::SetToLocator(a3, Short);
LABEL_6:
    ot::Ip6::InterfaceIdentifier::ApplyPrefix(a3, a2);
    return v7;
  }

  if (Type == 2)
  {
    ot::Mac::Address::GetExtended(a1);
    ot::Ip6::InterfaceIdentifier::SetFromExtAddress(a3, v4);
    goto LABEL_6;
  }

  return 6;
}

uint64_t ot::Lowpan::Lowpan::CompressSourceIid(uint64_t a1, ot::Mac::Address *a2, ot::Ip6::Address *a3, const ot::Ip6::Prefix *a4, _WORD *a5, ot::FrameBuilder *a6)
{
  v23 = a1;
  v22 = a2;
  v21 = a3;
  v20 = a4;
  v19 = a5;
  v18 = a6;
  v17 = 0;
  ot::Lowpan::Lowpan::ComputeIid(a2, a4, v16);
  IgnoreError();
  Iid = ot::Ip6::Address::GetIid(v21);
  if (ot::Equatable<ot::Ip6::InterfaceIdentifier>::operator==(v16, Iid))
  {
    *v19 |= 0x30u;
  }

  else
  {
    v7 = ot::Ip6::Address::GetIid(v21);
    if (ot::Ip6::InterfaceIdentifier::IsLocator(v7, v8))
    {
      *v19 |= 0x20u;
      v15 = v18;
      v9 = ot::Ip6::Address::GetIid(v21);
      Locator = ot::Ip6::InterfaceIdentifier::GetLocator(v9, v10);
      return ot::FrameBuilder::AppendBigEndianUint16(v15, Locator);
    }

    else
    {
      *v19 |= 0x10u;
      v14 = v18;
      v12 = ot::Ip6::Address::GetIid(v21);
      return ot::FrameBuilder::Append<ot::Ip6::InterfaceIdentifier>(v14, v12);
    }
  }

  return v17;
}

uint64_t ot::FrameBuilder::Append<ot::Ip6::InterfaceIdentifier>(ot::FrameBuilder *a1, const void *a2)
{
  return ot::FrameBuilder::AppendBytes(a1, a2, 8u);
}

{
  return ot::FrameBuilder::Append<ot::Ip6::InterfaceIdentifier>(a1, a2);
}

uint64_t ot::Lowpan::Lowpan::CompressDestinationIid(uint64_t a1, ot::Mac::Address *a2, ot::Ip6::Address *a3, const ot::Ip6::Prefix *a4, _WORD *a5, ot::FrameBuilder *a6)
{
  v23 = a1;
  v22 = a2;
  v21 = a3;
  v20 = a4;
  v19 = a5;
  v18 = a6;
  v17 = 0;
  ot::Lowpan::Lowpan::ComputeIid(a2, a4, v16);
  IgnoreError();
  Iid = ot::Ip6::Address::GetIid(v21);
  if (ot::Equatable<ot::Ip6::InterfaceIdentifier>::operator==(v16, Iid))
  {
    *v19 |= 3u;
  }

  else
  {
    v7 = ot::Ip6::Address::GetIid(v21);
    if (ot::Ip6::InterfaceIdentifier::IsLocator(v7, v8))
    {
      *v19 |= 2u;
      v15 = v18;
      v9 = ot::Ip6::Address::GetIid(v21);
      Locator = ot::Ip6::InterfaceIdentifier::GetLocator(v9, v10);
      return ot::FrameBuilder::AppendBigEndianUint16(v15, Locator);
    }

    else
    {
      *v19 |= 1u;
      v14 = v18;
      v12 = ot::Ip6::Address::GetIid(v21);
      return ot::FrameBuilder::Append<ot::Ip6::InterfaceIdentifier>(v14, v12);
    }
  }

  return v17;
}

uint64_t ot::Lowpan::Lowpan::CompressMulticast(ot::Lowpan::Lowpan *this, const ot::Ip6::Address *a2, unsigned __int16 *a3, ot::FrameBuilder *a4)
{
  v13 = this;
  v12 = a2;
  v11 = a3;
  v10 = a4;
  appended = 0;
  *a3 |= 8u;
  for (i = 2; i < 0x10uLL; ++i)
  {
    if (v12[i])
    {
      if (v12[1] == 2 && i >= 0xF)
      {
        *v11 |= 3u;
        return ot::FrameBuilder::AppendUint8(v10, v12[15]);
      }

      else if (i < 0xD)
      {
        if (i < 0xB)
        {
          ot::Lowpan::Lowpan::FindContextForId(this, 0, v8);
          Length = ot::Ip6::Prefix::GetLength(v8);
          if (Length == v12[3] && (ot::Ip6::Prefix::GetBytes(v8), !memcmp(v5, v12 + 4, 8uLL)))
          {
            *v11 |= 4u;
            appended = ot::FrameBuilder::AppendBytes(v10, v12 + 1, 2u);
            if (!appended)
            {
              return ot::FrameBuilder::AppendBytes(v10, v12 + 12, 4u);
            }
          }

          else
          {
            return ot::FrameBuilder::Append<ot::Ip6::Address>(v10, v12);
          }
        }

        else
        {
          *v11 |= 1u;
          appended = ot::FrameBuilder::AppendUint8(v10, v12[1]);
          if (!appended)
          {
            return ot::FrameBuilder::AppendBytes(v10, v12 + 11, 5u);
          }
        }
      }

      else
      {
        *v11 |= 2u;
        appended = ot::FrameBuilder::AppendUint8(v10, v12[1]);
        if (!appended)
        {
          return ot::FrameBuilder::AppendBytes(v10, v12 + 13, 3u);
        }
      }

      return appended;
    }
  }

  return appended;
}

uint64_t ot::FrameBuilder::Append<ot::Ip6::Address>(ot::FrameBuilder *a1, const void *a2)
{
  return ot::FrameBuilder::AppendBytes(a1, a2, 0x10u);
}

{
  return ot::FrameBuilder::Append<ot::Ip6::Address>(a1, a2);
}

uint64_t ot::Lowpan::Lowpan::Compress(ot::Lowpan::Lowpan *this, ot::Message *a2, const ot::Mac::Addresses *a3, ot::FrameBuilder *a4)
{
  v12 = this;
  v11 = a2;
  v10 = a3;
  v9 = a4;
  v8 = 0;
  v7 = -1;
  while (v7)
  {
    v6 = *v9;
    v8 = ot::Lowpan::Lowpan::Compress(this, v11, v10, v9, &v7);
    if (!v8)
    {
      break;
    }

    *v9 = v6;
  }

  return v8;
}

uint64_t ot::Lowpan::Lowpan::Compress(ot::Lowpan::Lowpan *this, ot::Message *a2, const ot::Mac::Addresses *a3, ot::FrameBuilder *a4, unsigned __int8 *a5)
{
  v61 = this;
  v60 = a2;
  v59 = a3;
  v58 = a4;
  v57 = a5;
  *&v56[4] = 0;
  *v56 = ot::Message::GetOffset(a2);
  v55 = 24576;
  Length = 0;
  v52 = v53;
  v45 = 0;
  v44 = 0;
  v43 = 0;
  v42 = 0;
  v41 = *v57;
  v38 = v60;
  Offset = ot::Message::GetOffset(v60);
  *&v56[2] = ot::Message::Read<ot::Ip6::Header>(v38, Offset, v53);
  if (!*&v56[2])
  {
    Source = ot::Ip6::Header::GetSource(v53);
    ot::Lowpan::Lowpan::FindContextToCompressAddress(this, Source, v49);
    Destination = ot::Ip6::Header::GetDestination(v53);
    ot::Lowpan::Lowpan::FindContextToCompressAddress(this, Destination, v46);
    Length = ot::FrameBuilder::GetLength(v58);
    *&v56[2] = ot::FrameBuilder::AppendBigEndianUint16(v58, v55);
    if (!*&v56[2])
    {
      if (!v50 && !v47 || (v55 |= 0x80u, (*&v56[2] = ot::FrameBuilder::AppendUint8(v58, v47 | (16 * v50))) == 0))
      {
        v43 = (4 * *v52) & 0x3C | (v52[1] >> 6);
        v44 = (4 * v52[1]) & 0xC0;
        if ((v52[1] & 0xF) != 0 || v52[2] || v52[3])
        {
          if (v43)
          {
            *&v56[2] = ot::FrameBuilder::AppendUint8(v58, v44 | v43);
            if (*&v56[2])
            {
              goto LABEL_65;
            }

            *&v56[2] = ot::FrameBuilder::AppendUint8(v58, v52[1] & 0xF);
            if (*&v56[2])
            {
              goto LABEL_65;
            }

            *&v56[2] = ot::FrameBuilder::AppendBytes(v58, v52 + 2, 2u);
            if (*&v56[2])
            {
              goto LABEL_65;
            }
          }

          else
          {
            v55 |= 0x800u;
            *&v56[2] = ot::FrameBuilder::AppendUint8(v58, v44 | (v52[1] & 0xF));
            if (*&v56[2])
            {
              goto LABEL_65;
            }

            *&v56[2] = ot::FrameBuilder::AppendBytes(v58, v52 + 2, 2u);
            if (*&v56[2])
            {
              goto LABEL_65;
            }
          }
        }

        else if (v43 || v44)
        {
          v55 |= 0x1000u;
          *&v56[2] = ot::FrameBuilder::AppendUint8(v58, v44 | v43);
          if (*&v56[2])
          {
            goto LABEL_65;
          }
        }

        else
        {
          v55 |= 0x1800u;
        }

        NextHeader = ot::Ip6::Header::GetNextHeader(v53);
        if ((!NextHeader || NextHeader == 17 || NextHeader == 41) && v42 + 1 < v41)
        {
          v55 |= 0x400u;
        }

        else
        {
          v36 = v58;
          v9 = ot::Ip6::Header::GetNextHeader(v53);
          *&v56[2] = ot::FrameBuilder::AppendUint8(v36, v9);
          if (*&v56[2])
          {
            goto LABEL_65;
          }
        }

        HopLimit = ot::Ip6::Header::GetHopLimit(v53);
        switch(HopLimit)
        {
          case 1:
            v55 |= 0x100u;
            break;
          case 64:
            v55 |= 0x200u;
            break;
          case 255:
            v55 |= 0x300u;
            break;
          default:
            v34 = v58;
            v10 = ot::Ip6::Header::GetHopLimit(v53);
            appended = ot::FrameBuilder::AppendUint8(v34, v10);
            *&v56[2] = appended;
            if (appended)
            {
              goto LABEL_65;
            }

            break;
        }

        v12 = ot::Ip6::Header::GetSource(v53);
        if (ot::Ip6::Address::IsUnspecified(v12))
        {
          v55 |= 0x40u;
        }

        else
        {
          v13 = ot::Ip6::Header::GetSource(v53);
          if (ot::Ip6::Address::IsLinkLocalUnicast(v13, v14))
          {
            v33 = v59;
            v15 = ot::Ip6::Header::GetSource(v53);
            *&v56[2] = ot::Lowpan::Lowpan::CompressSourceIid(this, v33, v15, v49, &v55, v58);
            if (*&v56[2])
            {
              goto LABEL_65;
            }
          }

          else if (v51)
          {
            v55 |= 0x40u;
            v32 = v59;
            v16 = ot::Ip6::Header::GetSource(v53);
            *&v56[2] = ot::Lowpan::Lowpan::CompressSourceIid(this, v32, v16, v49, &v55, v58);
            if (*&v56[2])
            {
              goto LABEL_65;
            }
          }

          else
          {
            v31 = v58;
            v17 = ot::Ip6::Header::GetSource(v53);
            *&v56[2] = ot::FrameBuilder::Append<ot::Ip6::Address>(v31, v17);
            if (*&v56[2])
            {
              goto LABEL_65;
            }
          }
        }

        v18 = ot::Ip6::Header::GetDestination(v53);
        if (ot::Ip6::Address::IsMulticast(v18))
        {
          v19 = ot::Ip6::Header::GetDestination(v53);
          *&v56[2] = ot::Lowpan::Lowpan::CompressMulticast(this, v19, &v55, v58);
          if (*&v56[2])
          {
            goto LABEL_65;
          }
        }

        else
        {
          v20 = ot::Ip6::Header::GetDestination(v53);
          if (ot::Ip6::Address::IsLinkLocalUnicast(v20, v21))
          {
            v30 = (v59 + 10);
            v22 = ot::Ip6::Header::GetDestination(v53);
            *&v56[2] = ot::Lowpan::Lowpan::CompressDestinationIid(this, v30, v22, v46, &v55, v58);
            if (*&v56[2])
            {
              goto LABEL_65;
            }
          }

          else if (v48)
          {
            v55 |= 4u;
            v29 = (v59 + 10);
            v23 = ot::Ip6::Header::GetDestination(v53);
            *&v56[2] = ot::Lowpan::Lowpan::CompressDestinationIid(this, v29, v23, v46, &v55, v58);
            if (*&v56[2])
            {
              goto LABEL_65;
            }
          }

          else
          {
            v28 = v58;
            v24 = ot::Ip6::Header::GetDestination(v53);
            *&v56[2] = ot::FrameBuilder::Append<ot::Ip6::Address>(v28, v24);
            if (*&v56[2])
            {
              goto LABEL_65;
            }
          }
        }

        ++v42;
        ot::Message::MoveOffset(v60, 40);
        v45 = ot::Ip6::Header::GetNextHeader(v53);
        while (v42 < v41)
        {
          if (v45)
          {
            if (v45 == 17)
            {
              *&v56[2] = ot::Lowpan::Lowpan::CompressUdp(this, v60, v58);
            }

            else if (v45 == 41)
            {
              *&v56[2] = ot::FrameBuilder::AppendUint8(v58, 238);
              if (!*&v56[2])
              {
                *&v56[2] = ot::Lowpan::Lowpan::Compress(this, v60, v59, v58);
              }
            }

            break;
          }

          *&v56[2] = ot::Lowpan::Lowpan::CompressExtensionHeader(this, v60, v58, &v45);
          if (*&v56[2])
          {
            break;
          }

          ++v42;
        }
      }
    }
  }

LABEL_65:
  *v57 = v42;
  if (*&v56[2])
  {
    ot::Message::SetOffset(v60, *v56);
  }

  else
  {
    v27 = v58;
    v26 = Length;
    v40 = ot::BigEndian::HostSwap16(v55, v6);
    ot::FrameBuilder::Write<unsigned short>(v27, v26, &v40);
  }

  return *&v56[2];
}

uint64_t ot::Lowpan::Lowpan::CompressExtensionHeader(ot::Lowpan::Lowpan *this, ot::Message *a2, ot::FrameBuilder *a3, unsigned __int8 *a4)
{
  v26 = this;
  v25 = a2;
  v24 = a3;
  v23 = a4;
  *&v22[4] = 0;
  *v22 = ot::Message::GetOffset(a2);
  v20 = 0;
  v19 = 0;
  v18 = 0;
  Offset = ot::Message::GetOffset(v25);
  *&v22[2] = ot::Message::Read<ot::Ip6::ExtensionHeader>(v25, Offset, v21);
  if (!*&v22[2])
  {
    ot::Message::MoveOffset(v25, 2);
    v18 = -32;
    NextHeader = ot::Ip6::ExtensionHeader::GetNextHeader(v21);
    if (NextHeader == 17 || NextHeader == 41)
    {
      v18 |= 1u;
    }

    else
    {
      *&v22[2] = ot::FrameBuilder::AppendUint8(v24, v18);
      if (*&v22[2])
      {
        goto LABEL_24;
      }

      v18 = ot::Ip6::ExtensionHeader::GetNextHeader(v21);
    }

    *&v22[2] = ot::FrameBuilder::AppendUint8(v24, v18);
    if (!*&v22[2])
    {
      v20 = ot::Ip6::ExtensionHeader::GetSize(v21) - 2;
      if (v20 <= 0xFFu)
      {
        if (!*v23 || *v23 == 60)
        {
          v16 = 0;
          v5 = ot::Message::GetOffset(v25);
          ot::OffsetRange::Init(v17, v5, v20);
          while (!ot::OffsetRange::IsEmpty(v17))
          {
            *&v22[2] = ot::Ip6::Option::ParseFrom(v15, v25, v17);
            if (*&v22[2])
            {
              goto LABEL_24;
            }

            v16 = 1;
            Size = ot::Ip6::Option::GetSize(v15);
            ot::OffsetRange::AdvanceOffset(v17, Size);
          }

          if ((v16 & 1) != 0 && ot::Ip6::Option::IsPadding(v15))
          {
            v19 = ot::Ip6::Option::GetSize(v15);
            v20 -= v19;
          }
        }

        v7 = ot::Message::GetOffset(v25);
        v13 = v7 + v20 + v19;
        if (v13 <= ot::Message::GetLength(v25))
        {
          v8 = ot::Ip6::ExtensionHeader::GetNextHeader(v21);
          *v23 = v8;
          *&v22[2] = ot::FrameBuilder::AppendUint8(v24, v20);
          if (!*&v22[2])
          {
            v12 = v24;
            v11 = v25;
            v9 = ot::Message::GetOffset(v25);
            *&v22[2] = ot::FrameBuilder::AppendBytesFromMessage(v12, v11, v9, v20);
            if (!*&v22[2])
            {
              ot::Message::MoveOffset(v25, v20 + v19);
            }
          }
        }

        else
        {
          *&v22[2] = 6;
        }
      }

      else
      {
        *&v22[2] = 1;
      }
    }
  }

LABEL_24:
  if (*&v22[2])
  {
    ot::Message::SetOffset(v25, *v22);
  }

  return *&v22[2];
}

uint64_t ot::Lowpan::Lowpan::CompressUdp(ot::Lowpan::Lowpan *this, ot::Message *a2, ot::FrameBuilder *a3)
{
  v16 = this;
  v15 = a2;
  v14 = a3;
  *&v13[4] = 0;
  *v13 = ot::Message::GetOffset(a2);
  Offset = ot::Message::GetOffset(v15);
  *&v13[2] = ot::Message::Read<ot::Ip6::Udp::Header>(v15, Offset, v12);
  if (!*&v13[2])
  {
    *v11 = ot::Ip6::Udp::Header::GetSourcePort(v12, v4);
    *v10 = ot::Ip6::Udp::Header::GetDestinationPort(v12, v5);
    if ((*v11 & 0xFFF0) == 0xF0B0 && (*v10 & 0xFFF0) == 0xF0B0)
    {
      *&v13[2] = ot::FrameBuilder::AppendUint8(v14, 243);
      if (*&v13[2])
      {
        goto LABEL_21;
      }

      *&v13[2] = ot::FrameBuilder::AppendUint8(v14, v10[0] & 0xF | (16 * (v11[0] & 0xFu)));
      if (*&v13[2])
      {
        goto LABEL_21;
      }
    }

    else if ((*v11 & 0xFF00) == 0xF000)
    {
      *&v13[2] = ot::FrameBuilder::AppendUint8(v14, 242);
      if (*&v13[2])
      {
        goto LABEL_21;
      }

      *&v13[2] = ot::FrameBuilder::AppendUint8(v14, v11[0]);
      if (*&v13[2])
      {
        goto LABEL_21;
      }

      *&v13[2] = ot::FrameBuilder::AppendBigEndianUint16(v14, *v10);
      if (*&v13[2])
      {
        goto LABEL_21;
      }
    }

    else if ((*v10 & 0xFF00) == 0xF000)
    {
      *&v13[2] = ot::FrameBuilder::AppendUint8(v14, 241);
      if (*&v13[2])
      {
        goto LABEL_21;
      }

      *&v13[2] = ot::FrameBuilder::AppendBigEndianUint16(v14, *v11);
      if (*&v13[2])
      {
        goto LABEL_21;
      }

      *&v13[2] = ot::FrameBuilder::AppendUint8(v14, v10[0]);
      if (*&v13[2])
      {
        goto LABEL_21;
      }
    }

    else
    {
      *&v13[2] = ot::FrameBuilder::AppendUint8(v14, 240);
      if (*&v13[2])
      {
        goto LABEL_21;
      }

      *&v13[2] = ot::FrameBuilder::AppendBytes(v14, v12, 4u);
      if (*&v13[2])
      {
        goto LABEL_21;
      }
    }

    v9 = v14;
    Checksum = ot::Ip6::Udp::Header::GetChecksum(v12, v6);
    *&v13[2] = ot::FrameBuilder::AppendBigEndianUint16(v9, Checksum);
    if (!*&v13[2])
    {
      ot::Message::MoveOffset(v15, 8);
    }
  }

LABEL_21:
  if (*&v13[2])
  {
    ot::Message::SetOffset(v15, *v13);
  }

  return *&v13[2];
}

void *ot::FrameBuilder::Write<unsigned short>(ot::FrameBuilder *a1, unsigned __int16 a2, const void *a3)
{
  return ot::FrameBuilder::WriteBytes(a1, a2, a3, 2u);
}

{
  return ot::FrameBuilder::Write<unsigned short>(a1, a2, a3);
}

uint64_t ot::Lowpan::Lowpan::DispatchToNextHeader(ot::Lowpan::Lowpan *this, char a2, unsigned __int8 *a3)
{
  v5 = 0;
  if ((a2 & 0xF0) == 0xE0)
  {
    v4 = a2 & 0xE;
    if ((a2 & 0xE) != 0)
    {
      switch(v4)
      {
        case 2:
          *a3 = 43;
          break;
        case 4:
          *a3 = 44;
          break;
        case 6:
          *a3 = 60;
          break;
        case 14:
          *a3 = 41;
          break;
        default:
          return 6;
      }
    }

    else
    {
      *a3 = 0;
    }
  }

  else
  {
    if ((a2 & 0xF8) != 0xF0)
    {
      return 6;
    }

    *a3 = 17;
  }

  return v5;
}

uint64_t ot::Lowpan::Lowpan::DecompressBaseHeader(ot::Lowpan::Lowpan *this, ot::Ip6::Header *a2, BOOL *a3, const ot::Mac::Addresses *a4, ot::FrameData *a5)
{
  v71 = this;
  v70 = a2;
  v69 = a3;
  v68 = a4;
  v67 = a5;
  v66 = 6;
  v65 = 0;
  v64 = 0;
  v63 = 0;
  v62 = 0;
  v58 = 0;
  if (!ot::FrameData::ReadBigEndianUint16(a5, &v65) && (v65 & 0xE000) == 0x6000)
  {
    if ((v65 & 0x80) != 0)
    {
      if (ot::FrameData::ReadUint8(v67, &v64))
      {
        return v66;
      }

      v63 = v64 >> 4;
      v62 = v64 & 0xF;
    }

    ot::Lowpan::Lowpan::FindContextForId(this, v63, v61);
    ot::Lowpan::Lowpan::FindContextForId(this, v62, v59);
    ot::Clearable<ot::Ip6::Header>::Clear(v70);
    ot::Ip6::Header::InitVersionTrafficClassFlow(v70);
    if ((v65 & 0x1800) != 0x1800)
    {
      v57 = v70;
      if (ot::Data<(ot::DataLengthType)1>::GetLength(v67) <= 0)
      {
        return v66;
      }

      v57[1] |= (*ot::Data<(ot::DataLengthType)1>::GetBytes(v67) & 0xC0) >> 2;
      if ((v65 & 0x800) == 0)
      {
        ot::FrameData::ReadUint8(v67, &v64);
        IgnoreError();
        *v57 |= (v64 >> 2) & 0xF;
        v57[1] |= v64 << 6;
      }

      if ((v65 & 0x1000) == 0)
      {
        if (ot::Data<(ot::DataLengthType)1>::GetLength(v67) < 3)
        {
          return v66;
        }

        v57[1] |= *ot::Data<(ot::DataLengthType)1>::GetBytes(v67) & 0xF;
        v57[2] |= *(ot::Data<(ot::DataLengthType)1>::GetBytes(v67) + 1);
        v57[3] |= *(ot::Data<(ot::DataLengthType)1>::GetBytes(v67) + 2);
        ot::FrameData::SkipOver(v67, 3u);
      }
    }

    if ((v65 & 0x400) != 0)
    {
      *v69 = 1;
    }

    else
    {
      if (ot::FrameData::ReadUint8(v67, &v64))
      {
        return v66;
      }

      ot::Ip6::Header::SetNextHeader(v70, v64);
      *v69 = 0;
    }

    v55 = v65 & 0x300;
    switch(v55)
    {
      case 256:
        ot::Ip6::Header::SetHopLimit(v70, 1);
        break;
      case 512:
        ot::Ip6::Header::SetHopLimit(v70, 64);
        break;
      case 768:
        ot::Ip6::Header::SetHopLimit(v70, 255);
        break;
      default:
        if (ot::FrameData::ReadUint8(v67, &v64))
        {
          return v66;
        }

        ot::Ip6::Header::SetHopLimit(v70, v64);
        break;
    }

    v54 = v65 & 0x30;
    if ((v65 & 0x30) != 0)
    {
      switch(v54)
      {
        case 16:
          v52 = v67;
          Source = ot::Ip6::Header::GetSource(v70);
          Iid = ot::Ip6::Address::GetIid(Source);
          if (ot::FrameData::Read<ot::Ip6::InterfaceIdentifier>(v52, Iid))
          {
            return v66;
          }

          break;
        case 32:
          *(ot::Ip6::Header::GetSource(v70) + 11) = -1;
          *(ot::Ip6::Header::GetSource(v70) + 12) = -2;
          v51 = v67;
          v10 = ot::Ip6::Header::GetSource(v70);
          if (ot::FrameData::ReadBytes(v51, (v10 + 14), 2u))
          {
            return v66;
          }

          break;
        case 48:
          v50 = v68;
          v11 = ot::Ip6::Header::GetSource(v70);
          v12 = ot::Ip6::Address::GetIid(v11);
          ot::Lowpan::Lowpan::ComputeIid(v50, v61, v12);
          IgnoreError();
          break;
      }
    }

    else if ((v65 & 0x40) == 0)
    {
      v53 = v67;
      v7 = ot::Ip6::Header::GetSource(v70);
      if (ot::FrameData::Read<ot::Ip6::Address>(v53, v7))
      {
        return v66;
      }
    }

    if ((v65 & 0x30) != 0)
    {
      if ((v65 & 0x40) != 0)
      {
        if ((v61[19] & 1) == 0)
        {
          return v66;
        }

        v13 = ot::Ip6::Header::GetSource(v70);
        ot::Ip6::Address::SetPrefix(v13, v61);
      }

      else
      {
        v49 = ot::BigEndian::HostSwap16(0xFE80, v5);
        *ot::Ip6::Header::GetSource(v70) = v49;
      }
    }

    if ((v65 & 8) != 0)
    {
      *ot::Ip6::Header::GetDestination(v70) = -1;
      if ((v65 & 4) != 0)
      {
        if ((v65 & 3) != 0)
        {
          return v66;
        }

        if ((v60 & 1) == 0)
        {
          return v66;
        }

        v35 = v67;
        Destination = ot::Ip6::Header::GetDestination(v70);
        if (ot::FrameData::ReadBytes(v35, (Destination + 1), 2u))
        {
          return v66;
        }

        Length = ot::Ip6::Prefix::GetLength(v59);
        *(ot::Ip6::Header::GetDestination(v70) + 3) = Length;
        v34 = ot::Ip6::Header::GetDestination(v70);
        ot::Ip6::Prefix::GetBytes(v59);
        *(v34 + 4) = *v28;
        v32 = v67;
        v29 = ot::Ip6::Header::GetDestination(v70);
        if (ot::FrameData::ReadBytes(v32, (v29 + 12), 4u))
        {
          return v66;
        }
      }

      else
      {
        v42 = v65 & 3;
        if ((v65 & 3) != 0)
        {
          switch(v42)
          {
            case 1:
              v40 = v67;
              v22 = ot::Ip6::Header::GetDestination(v70);
              if (ot::FrameData::ReadUint8(v40, (v22 + 1)))
              {
                return v66;
              }

              v39 = v67;
              v23 = ot::Ip6::Header::GetDestination(v70);
              if (ot::FrameData::ReadBytes(v39, (v23 + 11), 5u))
              {
                return v66;
              }

              break;
            case 2:
              v38 = v67;
              v24 = ot::Ip6::Header::GetDestination(v70);
              if (ot::FrameData::ReadUint8(v38, (v24 + 1)))
              {
                return v66;
              }

              v37 = v67;
              v25 = ot::Ip6::Header::GetDestination(v70);
              if (ot::FrameData::ReadBytes(v37, (v25 + 13), 3u))
              {
                return v66;
              }

              break;
            case 3:
              *(ot::Ip6::Header::GetDestination(v70) + 1) = 2;
              v36 = v67;
              v26 = ot::Ip6::Header::GetDestination(v70);
              if (ot::FrameData::ReadUint8(v36, (v26 + 15)))
              {
                return v66;
              }

              break;
          }
        }

        else
        {
          v41 = v67;
          v21 = ot::Ip6::Header::GetDestination(v70);
          if (ot::FrameData::Read<ot::Ip6::Address>(v41, v21))
          {
            return v66;
          }
        }
      }
    }

    else
    {
      v48 = v65 & 3;
      if ((v65 & 3) != 0)
      {
        switch(v48)
        {
          case 1:
            v46 = v67;
            v15 = ot::Ip6::Header::GetDestination(v70);
            v16 = ot::Ip6::Address::GetIid(v15);
            if (ot::FrameData::Read<ot::Ip6::InterfaceIdentifier>(v46, v16))
            {
              return v66;
            }

            break;
          case 2:
            *(ot::Ip6::Header::GetDestination(v70) + 11) = -1;
            *(ot::Ip6::Header::GetDestination(v70) + 12) = -2;
            v45 = v67;
            v17 = ot::Ip6::Header::GetDestination(v70);
            if (ot::FrameData::ReadBytes(v45, (v17 + 14), 2u))
            {
              return v66;
            }

            break;
          case 3:
            v44 = (v68 + 10);
            v18 = ot::Ip6::Header::GetDestination(v70);
            v19 = ot::Ip6::Address::GetIid(v18);
            if (ot::Lowpan::Lowpan::ComputeIid(v44, v59, v19))
            {
              return v66;
            }

            break;
        }
      }

      else
      {
        if ((v65 & 4) != 0)
        {
          return v66;
        }

        v47 = v67;
        v14 = ot::Ip6::Header::GetDestination(v70);
        if (ot::FrameData::Read<ot::Ip6::Address>(v47, v14))
        {
          return v66;
        }
      }

      if ((v65 & 4) != 0)
      {
        if ((v60 & 1) == 0)
        {
          return v66;
        }

        v20 = ot::Ip6::Header::GetDestination(v70);
        ot::Ip6::Address::SetPrefix(v20, v59);
      }

      else if ((v65 & 3) != 0)
      {
        v43 = ot::BigEndian::HostSwap16(0xFE80, v5);
        *ot::Ip6::Header::GetDestination(v70) = v43;
      }
    }

    if ((v65 & 0x400) == 0)
    {
      return 0;
    }

    if (ot::Data<(ot::DataLengthType)1>::GetLength(v67) > 0)
    {
      Bytes = ot::Data<(ot::DataLengthType)1>::GetBytes(v67);
      if (!ot::Lowpan::Lowpan::DispatchToNextHeader(this, *Bytes, &v58))
      {
        ot::Ip6::Header::SetNextHeader(v70, v58);
        return 0;
      }
    }
  }

  return v66;
}

void *ot::Clearable<ot::Ip6::Header>::Clear(void *a1)
{
  return ot::ClearAllBytes<ot::Ip6::Header>(a1);
}

{
  return ot::Clearable<ot::Ip6::Header>::Clear(a1);
}

uint64_t ot::FrameData::Read<ot::Ip6::Address>(ot::FrameData *a1, void *a2)
{
  return ot::FrameData::ReadBytes(a1, a2, 0x10u);
}

{
  return ot::FrameData::Read<ot::Ip6::Address>(a1, a2);
}

uint64_t ot::FrameData::Read<ot::Ip6::InterfaceIdentifier>(ot::FrameData *a1, void *a2)
{
  return ot::FrameData::ReadBytes(a1, a2, 8u);
}

{
  return ot::FrameData::Read<ot::Ip6::InterfaceIdentifier>(a1, a2);
}

uint64_t ot::Lowpan::Lowpan::DecompressExtensionHeader(ot::Lowpan::Lowpan *this, ot::Message *a2, ot::FrameData *a3)
{
  v19 = this;
  v18 = a2;
  v17 = a3;
  v16 = 6;
  v14 = 0;
  v13 = 0;
  if (!ot::FrameData::ReadUint8(a3, &v13))
  {
    if (v13)
    {
      if (ot::FrameData::ReadUint8(v17, &v14))
      {
        return v16;
      }

      if (!ot::FrameData::CanRead(v17, v14 + 1))
      {
        return v16;
      }

      Bytes = ot::Data<(ot::DataLengthType)1>::GetBytes(v17);
      if (ot::Lowpan::Lowpan::DispatchToNextHeader(this, *(Bytes + v14), v15))
      {
        return v16;
      }
    }

    else if (ot::FrameData::ReadUint8(v17, v15) || ot::FrameData::ReadUint8(v17, &v14) || !ot::FrameData::CanRead(v17, v14))
    {
      return v16;
    }

    v15[1] = (v14 + 9) / 8 - 1;
    if (!ot::Message::AppendBytes(v18, v15, 2u))
    {
      ot::Message::MoveOffset(v18, 2);
      v10 = v18;
      v4 = ot::Data<(ot::DataLengthType)1>::GetBytes(v17);
      if (!ot::Message::AppendBytes(v10, v4, v14))
      {
        ot::Message::MoveOffset(v18, v14);
        ot::FrameData::SkipOver(v17, v14);
        if (ot::Ip6::PadOption::InitToPadHeaderWithSize(v12, v14 + 2))
        {
          return 0;
        }

        v9 = v18;
        Size = ot::Ip6::Option::GetSize(v12);
        if (!ot::Message::AppendBytes(v9, v12, Size))
        {
          v8 = v18;
          v6 = ot::Ip6::Option::GetSize(v12);
          ot::Message::MoveOffset(v8, v6);
          return 0;
        }
      }
    }
  }

  return v16;
}

BOOL ot::FrameData::CanRead(ot::FrameData *this, unsigned __int16 a2)
{
  return ot::Data<(ot::DataLengthType)1>::GetLength(this) >= a2;
}

{
  return ot::FrameData::CanRead(this, a2);
}

uint64_t ot::Lowpan::Lowpan::DecompressUdpHeader(ot::Lowpan::Lowpan *this, ot::Ip6::Udp::Header *a2, ot::FrameData *a3)
{
  v13 = this;
  v12 = a2;
  v11 = a3;
  v10 = 6;
  v9 = 0;
  v8 = 0;
  v7 = 0;
  v6 = 0;
  if (!ot::FrameData::ReadUint8(a3, &v9) && (v9 & 0xF8) == 0xF0)
  {
    ot::Clearable<ot::Ip6::Udp::Header>::Clear(v12);
    v4 = v9 & 3;
    if ((v9 & 3) != 0)
    {
      switch(v4)
      {
        case 1:
          if (ot::FrameData::ReadBigEndianUint16(v11, &v7) || ot::FrameData::ReadUint8(v11, &v8))
          {
            return v10;
          }

          v6 = v8 | 0xF000;
          break;
        case 2:
          if (ot::FrameData::ReadUint8(v11, &v8))
          {
            return v10;
          }

          v7 = v8 | 0xF000;
          if (ot::FrameData::ReadBigEndianUint16(v11, &v6))
          {
            return v10;
          }

          break;
        case 3:
          if (ot::FrameData::ReadUint8(v11, &v8))
          {
            return v10;
          }

          v7 = (v8 >> 4) | 0xF0B0;
          v6 = v8 & 0xF | 0xF0B0;
          break;
      }
    }

    else if (ot::FrameData::ReadBigEndianUint16(v11, &v7) || ot::FrameData::ReadBigEndianUint16(v11, &v6))
    {
      return v10;
    }

    ot::Ip6::Udp::Header::SetSourcePort(v12, v7);
    ot::Ip6::Udp::Header::SetDestinationPort(v12, v6);
    if ((v9 & 4) == 0)
    {
      v5 = 0;
      if (!ot::FrameData::ReadBigEndianUint16(v11, &v5))
      {
        ot::Ip6::Udp::Header::SetChecksum(v12, v5);
        return 0;
      }
    }
  }

  return v10;
}

void *ot::Clearable<ot::Ip6::Udp::Header>::Clear(void *a1)
{
  return ot::ClearAllBytes<ot::Ip6::Udp::Header>(a1);
}

{
  return ot::Clearable<ot::Ip6::Udp::Header>::Clear(a1);
}

uint64_t ot::Lowpan::Lowpan::DecompressUdpHeader(ot::Lowpan::Lowpan *this, ot::Message *a2, ot::FrameData *a3, __int16 a4)
{
  v13 = this;
  v12 = a2;
  v11 = a3;
  v10 = a4;
  v9 = 0;
  v9 = ot::Lowpan::Lowpan::DecompressUdpHeader(this, v8, a3);
  if (!v9)
  {
    if (v10)
    {
      v7 = v10;
      Offset = ot::Message::GetOffset(v12);
      ot::Ip6::Udp::Header::SetLength(v8, v7 - Offset);
    }

    else
    {
      Length = ot::Data<(ot::DataLengthType)1>::GetLength(v11);
      ot::Ip6::Udp::Header::SetLength(v8, Length + 8);
    }

    v9 = ot::Message::Append<ot::Ip6::Udp::Header>(v12, v8);
    if (!v9)
    {
      ot::Message::MoveOffset(v12, 8);
    }
  }

  return v9;
}

uint64_t ot::Message::Append<ot::Ip6::Udp::Header>(ot::Message *a1, char *a2)
{
  return ot::Message::AppendBytes(a1, a2, 8u);
}

{
  return ot::Message::Append<ot::Ip6::Udp::Header>(a1, a2);
}

uint64_t ot::Lowpan::Lowpan::Decompress(ot::Lowpan::Lowpan *this, ot::Message *a2, const ot::Mac::Addresses *a3, ot::FrameData *a4, __int16 a5)
{
  v21 = this;
  v20 = a2;
  v19 = a3;
  v18 = a4;
  v17 = a5;
  v16 = 6;
  v14 = 0;
  v13 = 0;
  Offset = ot::Message::GetOffset(a2);
  if (!ot::Lowpan::Lowpan::DecompressBaseHeader(this, v15, &v14, v19, v18) && !ot::Message::Append<ot::Ip6::Header>(v20, v15))
  {
    ot::Message::MoveOffset(v20, 40);
    while (v14)
    {
      if (ot::Data<(ot::DataLengthType)1>::GetLength(v18) <= 0)
      {
        return v16;
      }

      v11 = *ot::Data<(ot::DataLengthType)1>::GetBytes(v18);
      if ((v11 & 0xF0) == 0xE0)
      {
        if ((v11 & 0xE) == 0xE)
        {
          v14 = 0;
          ot::FrameData::SkipOver(v18, 1u);
          if (ot::Lowpan::Lowpan::Decompress(this, v20, v19, v18, v17))
          {
            return v16;
          }
        }

        else
        {
          v14 = (v11 & 1) != 0;
          if (ot::Lowpan::Lowpan::DecompressExtensionHeader(this, v20, v18))
          {
            return v16;
          }
        }
      }

      else
      {
        if ((v11 & 0xF8) != 0xF0)
        {
          return v16;
        }

        v14 = 0;
        if (ot::Lowpan::Lowpan::DecompressUdpHeader(this, v20, v18, v17))
        {
          return v16;
        }
      }
    }

    if (v17)
    {
      v13 = ot::BigEndian::HostSwap16((v17 - Offset - 40), v5);
    }

    else
    {
      v9 = (ot::Message::GetOffset(v20) - Offset) - 40;
      Length = ot::Data<(ot::DataLengthType)1>::GetLength(v18);
      v13 = ot::BigEndian::HostSwap16((v9 + Length), v7);
    }

    ot::Message::Write<unsigned short>(v20, Offset + 4, &v13);
    return 0;
  }

  return v16;
}

uint64_t ot::Lowpan::Lowpan::DecompressEcn(ot::Lowpan::Lowpan *this, const ot::Message *a2, unsigned __int16 a3)
{
  v7 = this;
  *&v6[3] = a2;
  v6[2] = a3;
  HIBYTE(v6[1]) = 0;
  v6[0] = 0;
  v5 = 0;
  if (!ot::Message::Read<unsigned short>(a2, a3, v6))
  {
    v6[0] = ot::BigEndian::HostSwap16(v6[0], v3);
    if ((v6[0] & 0xE000) == 0x6000)
    {
      v6[2] += 2;
      if ((v6[0] & 0x1800) != 0x1800 && !ot::Message::Read<unsigned char>(*&v6[3], v6[2], &v5))
      {
        HIBYTE(v6[1]) = (v5 & 0xC0) >> 6;
      }
    }
  }

  return HIBYTE(v6[1]);
}

uint64_t ot::Lowpan::Lowpan::MarkCompressedEcn(ot::Lowpan::Lowpan *this, ot::Message *a2, __int16 a3)
{
  v7 = this;
  v6 = a2;
  v4 = 0;
  v5 = a3 + 2;
  ot::Message::Read<unsigned char>(a2, a3 + 2, &v4);
  IgnoreError();
  v4 = v4 & 0x3F | 0xC0;
  return ot::Message::Write<unsigned char>(v6, v5, &v4);
}

uint64_t ot::Lowpan::MeshHeader::Init(uint64_t this, __int16 a2, __int16 a3, char a4)
{
  *this = a2;
  *(this + 2) = a3;
  *(this + 4) = a4;
  return this;
}

BOOL ot::Lowpan::MeshHeader::IsMeshHeader(ot::Lowpan::MeshHeader *this, const ot::FrameData *a2)
{
  v3 = 0;
  if (ot::Data<(ot::DataLengthType)1>::GetLength(this) >= 5)
  {
    return (*ot::Data<(ot::DataLengthType)1>::GetBytes(this) & 0xC0) == 128;
  }

  return v3;
}

uint64_t ot::Lowpan::MeshHeader::ParseFrom(ot::Lowpan::MeshHeader *this, ot::FrameData *a2)
{
  v9 = this;
  v8 = a2;
  v7 = 0;
  v6 = 0;
  Bytes = ot::Data<(ot::DataLengthType)1>::GetBytes(a2);
  Length = ot::Data<(ot::DataLengthType)1>::GetLength(v8);
  v7 = ot::Lowpan::MeshHeader::ParseFrom(this, Bytes, Length, &v6);
  if (!v7)
  {
    ot::FrameData::SkipOver(v8, v6);
  }

  return v7;
}

uint64_t ot::Lowpan::MeshHeader::ParseFrom(ot::Lowpan::MeshHeader *this, unsigned __int8 *a2, unsigned __int16 a3, unsigned __int16 *a4)
{
  v8 = 6;
  if (a3 >= 5u)
  {
    v9 = a2 + 1;
    v7 = *a2;
    if ((v7 & 0xF0) == 0xB0)
    {
      *(this + 4) = v7 & 0xF;
      if (*(this + 4) == 15)
      {
        if (a3 < 6u)
        {
          return v8;
        }

        v9 = a2 + 2;
        *(this + 4) = a2[1];
        *a4 = 6;
      }

      else
      {
        *a4 = 5;
      }

      *this = ot::BigEndian::ReadUint16(v9, a2);
      *(this + 1) = ot::BigEndian::ReadUint16((v9 + 2), v4);
      return 0;
    }
  }

  return v8;
}

uint64_t ot::Lowpan::MeshHeader::ParseFrom(ot::Lowpan::MeshHeader *this, const ot::Message *a2)
{
  v5 = this;
  v4 = a2;
  v3 = 0;
  return ot::Lowpan::MeshHeader::ParseFrom(this, a2, &v3);
}

uint64_t ot::Lowpan::MeshHeader::ParseFrom(ot::Lowpan::MeshHeader *this, const ot::Message *a2, unsigned __int16 *a3)
{
  v9 = this;
  v8 = a2;
  v7 = a3;
  Bytes = ot::Message::ReadBytes(a2, 0, v6, 6u);
  return ot::Lowpan::MeshHeader::ParseFrom(this, v6, Bytes, v7);
}

uint64_t ot::Lowpan::MeshHeader::GetHeaderLength(ot::Lowpan::MeshHeader *this)
{
  if (*(this + 4) < 0xFu)
  {
    return 5;
  }

  else
  {
    return 6;
  }
}

uint64_t ot::Lowpan::MeshHeader::DecrementHopsLeft(uint64_t this)
{
  if (*(this + 4))
  {
    --*(this + 4);
  }

  return this;
}

uint64_t ot::Lowpan::MeshHeader::AppendTo(ot::Lowpan::MeshHeader *this, ot::FrameBuilder *a2)
{
  if (*(this + 4) < 0xFu)
  {
    appended = ot::FrameBuilder::AppendUint8(a2, *(this + 4) | 0xB0u);
    if (appended)
    {
      return appended;
    }
  }

  else
  {
    v2 = ot::FrameBuilder::AppendUint8(a2, 191);
    appended = v2;
    if (v2)
    {
      return appended;
    }

    appended = ot::FrameBuilder::AppendUint8(a2, *(this + 4));
    if (appended)
    {
      return appended;
    }
  }

  appended = ot::FrameBuilder::AppendBigEndianUint16(a2, *this);
  if (!appended)
  {
    return ot::FrameBuilder::AppendBigEndianUint16(a2, *(this + 1));
  }

  return appended;
}

uint64_t ot::Lowpan::MeshHeader::AppendTo(ot::Lowpan::MeshHeader *this, ot::Message *a2)
{
  v10 = this;
  v9 = a2;
  ot::FrameBuilder::Init(v7, v8, 6);
  ot::Lowpan::MeshHeader::AppendTo(this, v7);
  IgnoreError();
  v6 = v9;
  Bytes = ot::FrameBuilder::GetBytes(v7);
  Length = ot::FrameBuilder::GetLength(v7);
  return ot::Message::AppendBytes(v6, Bytes, Length);
}

BOOL ot::Lowpan::FragmentHeader::IsFragmentHeader(ot::Lowpan::FragmentHeader *this, const ot::FrameData *a2)
{
  Bytes = ot::Data<(ot::DataLengthType)1>::GetBytes(this);
  Length = ot::Data<(ot::DataLengthType)1>::GetLength(this);
  return ot::Lowpan::FragmentHeader::IsFragmentHeader(Bytes, Length);
}

BOOL ot::Lowpan::FragmentHeader::IsFragmentHeader(ot::Lowpan::FragmentHeader *this, const unsigned __int8 *a2)
{
  v3 = 0;
  if (a2 >= 4uLL)
  {
    return (*this & 0xD8) == 192;
  }

  return v3;
}

uint64_t ot::Lowpan::FragmentHeader::ParseFrom(ot::Lowpan::FragmentHeader *this, ot::FrameData *a2)
{
  v9 = this;
  v8 = a2;
  v7 = 0;
  v6 = 0;
  Bytes = ot::Data<(ot::DataLengthType)1>::GetBytes(a2);
  Length = ot::Data<(ot::DataLengthType)1>::GetLength(v8);
  v7 = ot::Lowpan::FragmentHeader::ParseFrom(this, Bytes, Length, &v6);
  if (!v7)
  {
    ot::FrameData::SkipOver(v8, v6);
  }

  return v7;
}

uint64_t ot::Lowpan::FragmentHeader::ParseFrom(ot::Lowpan::FragmentHeader *this, unsigned __int8 *a2, unsigned __int16 a3, unsigned __int16 *a4)
{
  v8 = 6;
  if (ot::Lowpan::FragmentHeader::IsFragmentHeader(a2, a3))
  {
    *this = ot::BigEndian::ReadUint16(a2, v4) & 0x7FF;
    *(this + 1) = ot::BigEndian::ReadUint16((a2 + 2), v5);
    if ((*a2 & 0x20) == 0x20)
    {
      if (a3 < 5uLL)
      {
        otLogNotePlat("ParseFrom() Frame length is less than sizeof(NextFrag)");
        return v8;
      }

      *(this + 2) = 8 * a2[4];
      *a4 = 5;
    }

    else
    {
      *(this + 2) = 0;
      *a4 = 4;
    }

    return 0;
  }

  return v8;
}

uint64_t ot::Lowpan::FragmentHeader::ParseFrom(ot::Lowpan::FragmentHeader *this, const ot::Message *a2, unsigned __int16 a3, unsigned __int16 *a4)
{
  v11 = this;
  v10 = a2;
  v9 = a3;
  v8 = a4;
  Bytes = ot::Message::ReadBytes(a2, a3, v7, 5u);
  return ot::Lowpan::FragmentHeader::ParseFrom(this, v7, Bytes, v8);
}

uint64_t ot::ClearAllBytes<ot::Lowpan::Context>(uint64_t result)
{
  *result = 0;
  *(result + 8) = 0;
  *(result + 16) = 0;
  return result;
}

{
  return ot::ClearAllBytes<ot::Lowpan::Context>(result);
}

void *ot::ClearAllBytes<ot::Ip6::Header>(void *a1)
{
  return memset(a1, 0, 0x28uLL);
}

{
  return ot::ClearAllBytes<ot::Ip6::Header>(a1);
}

void *ot::ClearAllBytes<ot::Ip6::Udp::Header>(void *result)
{
  *result = 0;
  return result;
}

{
  return ot::ClearAllBytes<ot::Ip6::Udp::Header>(result);
}

uint64_t ot::ThreadLinkInfo::SetFrom(ot::ThreadLinkInfo *this, const ot::Mac::RxFrame *a2)
{
  v9 = this;
  v8 = a2;
  ot::Clearable<ot::ThreadLinkInfo>::Clear(this);
  if (ot::Mac::Frame::GetSrcPanId(v8, this))
  {
    ot::Mac::Frame::GetDstPanId(v8, this);
    IgnoreError();
  }

  v7 = 0;
  if (ot::Mac::Frame::GetDstPanId(v8, &v7))
  {
    v7 = *this;
  }

  *(this + 5) = *(this + 5) & 0xFD | (2 * (v7 == 0xFFFF));
  if (ot::Mac::Frame::GetSecurityEnabled(v8, v2))
  {
    v6 = 0;
    ot::Mac::Frame::GetKeyIdMode(v8, &v6);
    IgnoreError();
    v4 = 1;
    if (v6)
    {
      v4 = v6 == 8;
    }

    *(this + 5) = *(this + 5) & 0xFE | v4;
  }

  else
  {
    *(this + 5) &= ~1u;
  }

  *(this + 2) = ot::Mac::Frame::GetChannel(v8);
  *(this + 3) = ot::Mac::RxFrame::GetRssi(v8);
  result = ot::Mac::RxFrame::GetLqi(v8);
  *(this + 4) = result;
  return result;
}

ot::MeshForwarder *ot::MeshForwarder::MeshForwarder(ot::MeshForwarder *this, ot::Instance *a2)
{
  ot::InstanceLocator::InstanceLocator(this, a2);
  *this = 127;
  ot::PriorityQueue::PriorityQueue((this + 8));
  ot::Coap::MessageQueue::MessageQueue((this + 40));
  *(this + 25) = 0;
  *(this + 7) = 0;
  ot::Mac::Addresses::Addresses((this + 64));
  *(this + 42) = 0;
  *(this + 43) = 0;
  *(this + 88) &= ~1u;
  *(this + 88) &= ~2u;
  *(this + 88) &= ~4u;
  *(this + 88) &= ~8u;
  *(this + 88) &= ~0x10u;
  ot::TimerMilliIn<ot::MeshForwarder,&ot::MeshForwarder::HandleTxDelayTimer>::TimerMilliIn((this + 96), a2);
  ot::TaskletIn<ot::MeshForwarder,&ot::MeshForwarder::ScheduleTransmissionTask>::TaskletIn((this + 120), a2);
  ot::IndirectSender::IndirectSender((this + 296), a2);
  v2 = ot::DataPollSender::DataPollSender((this + 352), a2);
  *(this + 24) = ot::Random::NonCrypto::GetUint16(v2);
  ot::MeshForwarder::ResetCounters(this);
  ot::MeshForwarder::ResetTriggerBasedCounters(this);
  ot::Clearable<ot::MeshForwarder::FragmentPriorityList>::Clear(this + 248);
  ot::Clearable<ot::MeshForwarder::TxQueueStats>::Clear(this + 408);
  return this;
}

{
  ot::MeshForwarder::MeshForwarder(this, a2);
  return this;
}

void ot::MeshForwarder::HandleTxDelayTimer(ot::MeshForwarder *this)
{
  *(this + 88) &= ~0x10u;
  ot::Tasklet::Post((this + 120));
  ot::Logger::LogAtLevel<(ot::LogLevel)5>("MeshForwarder", "Tx delay timer expired", v1, v2, v3, v4, v5, v6);
}

void ot::MeshForwarder::ScheduleTransmissionTask(ot::MeshForwarder *this)
{
  if ((*(this + 88) & 8) == 0 && (*(this + 88) & 4) == 0 && (*(this + 88) & 0x10) == 0)
  {
    *(this + 7) = ot::MeshForwarder::PrepareNextDirectTransmission(this);
    if (*(this + 7))
    {
      if (!ot::Message::GetOffset(*(this + 7)))
      {
        ot::Message::SetTxSuccess(*(this + 7), 1);
      }

      v1 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mac::Mac>(this);
      ot::Mac::Mac::RequestDirectFrameTransmission(v1);
    }
  }
}

ot::TimerMilli *ot::TimerMilliIn<ot::MeshForwarder,&ot::MeshForwarder::HandleTxDelayTimer>::TimerMilliIn(ot::TimerMilli *a1, ot::Instance *a2)
{
  ot::TimerMilliIn<ot::MeshForwarder,&ot::MeshForwarder::HandleTxDelayTimer>::TimerMilliIn(a1, a2);
  return a1;
}

{
  ot::TimerMilli::TimerMilli(a1, a2, ot::TimerMilliIn<ot::MeshForwarder,&ot::MeshForwarder::HandleTxDelayTimer>::HandleTimer);
  return a1;
}

ot::InstanceLocator *ot::TaskletIn<ot::MeshForwarder,&ot::MeshForwarder::ScheduleTransmissionTask>::TaskletIn(ot::InstanceLocator *a1, ot::Instance *a2)
{
  ot::TaskletIn<ot::MeshForwarder,&ot::MeshForwarder::ScheduleTransmissionTask>::TaskletIn(a1, a2);
  return a1;
}

{
  ot::Tasklet::Tasklet(a1, a2, ot::TaskletIn<ot::MeshForwarder,&ot::MeshForwarder::ScheduleTransmissionTask>::HandleTasklet);
  return a1;
}

void *ot::Clearable<ot::MeshForwarder::FragmentPriorityList>::Clear(void *a1)
{
  return ot::ClearAllBytes<ot::MeshForwarder::FragmentPriorityList>(a1);
}

{
  return ot::Clearable<ot::MeshForwarder::FragmentPriorityList>::Clear(a1);
}

_BYTE *ot::MeshForwarder::Start(_BYTE *this)
{
  v8 = this;
  if ((this[88] & 2) == 0)
  {
    v1 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mac::Mac>(this);
    ot::Mac::Mac::SetRxOnWhenIdle(v1, 1, v2, v3, v4, v5, v6, v7);
    this = ot::IndirectSender::Start(v8 + 296);
    v8[88] = v8[88] & 0xFD | 2;
  }

  return this;
}

_BYTE *ot::IndirectSender::Start(_BYTE *this)
{
  *this = 1;
  return this;
}

{
  return ot::IndirectSender::Start(this);
}

void ot::MeshForwarder::Stop(uint64_t this)
{
  if ((*(this + 88) & 2) != 0)
  {
    ot::DataPollSender::StopPolling((this + 352));
    v1 = ot::GetProvider<ot::InstanceLocator>::Get<ot::TimeTicker>(this);
    ot::TimeTicker::UnregisterReceiver(v1, 0);
    v2 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::DiscoverScanner>(this);
    ot::Mle::DiscoverScanner::Stop(v2);
    ot::PriorityQueue::DequeueAndFreeAll((this + 8));
    ot::MessageQueue::DequeueAndFreeAll((this + 40));
    ot::IndirectSender::Stop((this + 296));
    ot::Clearable<ot::MeshForwarder::FragmentPriorityList>::Clear((this + 248));
    ot::TimerMilli::Stop((this + 96));
    *(this + 88) &= ~0x10u;
    *(this + 88) &= ~2u;
    *(this + 56) = 0;
    v3 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mac::Mac>(this);
    ot::Mac::Mac::SetRxOnWhenIdle(v3, 0, v4, v5, v6, v7, v8, v9);
  }
}

void ot::Mle::DiscoverScanner::Stop(ot::Mle::DiscoverScanner *this)
{
  ot::Mle::DiscoverScanner::HandleDiscoverComplete(this);
}

{
  ot::Mle::DiscoverScanner::Stop(this);
}

uint64_t ot::MeshForwarder::PrepareEmptyFrame(ot::MeshForwarder *this, ot::Mac::TxFrame *a2, const ot::Mac::Address *a3, char a4)
{
  v19 = this;
  v18 = a2;
  v17 = a3;
  v16 = a4;
  ot::Mac::Addresses::Addresses(v13);
  ot::Mac::PanIds::PanIds(v12);
  v4 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mac::Mac>(this);
  ShortAddress = ot::Mac::Mac::GetShortAddress(v4);
  ot::Mac::Address::SetShort(v13, ShortAddress);
  if (ot::Mac::Address::IsShortAddrInvalid(v13) || ot::Mac::Address::IsExtended(v17))
  {
    v6 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mac::Mac>(this);
    ExtAddress = ot::Mac::Mac::GetExtAddress(v6);
    ot::Mac::Address::SetExtended(v13, ExtAddress);
  }

  v14 = *v17;
  v15 = *(v17 + 8);
  v8 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mac::Mac>(this);
  PanId = ot::Mac::Mac::GetPanId(v8);
  ot::Mac::PanIds::SetBothSourceDestination(v12, PanId);
  ot::MeshForwarder::PrepareMacHeaders(this, v18, 1, v13, v12, 5, 8, 0);
  ot::Mac::Frame::SetAckRequest(v18, v16 & 1);
  return ot::Mac::Frame::SetPayloadLength(v18, 0);
}

BOOL ot::Mac::Address::IsShortAddrInvalid(ot::Mac::Address *this)
{
  v2 = 0;
  if (*(this + 8) == 1)
  {
    return ot::Mac::Address::GetShort(this) == 65534;
  }

  return v2;
}

{
  return ot::Mac::Address::IsShortAddrInvalid(this);
}

void ot::MeshForwarder::PrepareMacHeaders(ot::MeshForwarder *a1, ot::Mac::Frame *a2, __int16 a3, uint64_t a4, ot::Mac::PanIds *a5, char a6, char a7, const ot::Message *a8)
{
  v12 = ot::MeshForwarder::CalcIePresent(a1, a8, (a4 + 10));
  v8 = ot::GetProvider<ot::InstanceLocator>::Get<ot::NeighborTable>(a1);
  Neighbor = ot::NeighborTable::FindNeighbor(v8, (a4 + 10), 1);
  v11 = ot::MeshForwarder::CalcFrameVersion(a1, Neighbor, v12);
  ot::Mac::Frame::InitMacHeader(a2, a3, v11, a4, a5, a6, a7);
  if (v12)
  {
    ot::MeshForwarder::AppendHeaderIe(a1, a8, a2);
  }
}

void ot::MeshForwarder::EvictMessage(ot::MeshForwarder *this, ot::Message *a2)
{
  v15 = this;
  v14 = a2;
  PriorityQueue = ot::Message::GetPriorityQueue(a2);
  if (!PriorityQueue)
  {
    __assert_rtn("EvictMessage", "mesh_forwarder.cpp", 233, "queue != nullptr");
  }

  ot::MeshForwarder::LogMessage(this, 5u, v14, 3);
  if (PriorityQueue == (this + 8))
  {
    v2 = ot::GetProvider<ot::InstanceLocator>::Get<ot::ChildTable>(this);
    v11 = ot::ChildTable::Iterate(v2, 5);
    v12 = &v11;
    v18 = ot::ChildTable::IteratorBuilder::begin(&v11);
    v19 = v3;
    v9 = v18;
    v10 = v3;
    v16 = ot::ChildTable::IteratorBuilder::end(v12);
    v17 = v4;
    v7 = v16;
    v8 = v4;
    while (ot::ItemPtrIterator<ot::Child,ot::ChildTable::Iterator>::operator!=(&v9, &v7))
    {
      v6 = ot::ItemPtrIterator<ot::Child,ot::ChildTable::Iterator>::operator*(&v9);
      ot::IndirectSender::RemoveMessageFromSleepyChild((this + 296), v14, v6);
      IgnoreError();
      ot::ItemPtrIterator<ot::Child,ot::ChildTable::Iterator>::operator++(&v9);
    }

    ot::MeshForwarder::FinalizeMessageDirectTx(this, v14, 3, 0);
    ot::MeshForwarder::RemoveMessageIfNoPendingTx(this, v14);
  }

  else
  {
    ot::PriorityQueue::DequeueAndFree(PriorityQueue, v14);
  }
}

void ot::MeshForwarder::FinalizeMessageDirectTx(ot::MeshForwarder *a1, void *a2, int a3, ot::Neighbor *a4)
{
  v19 = a1;
  __src = a2;
  v17 = a3;
  v16 = a4;
  if (ot::Message::IsDirectTransmission(a2))
  {
    ot::Message::ClearDirectTransmission(__src);
    ot::Message::SetOffset(__src, 0);
    if (v17)
    {
      ot::Message::SetTxSuccess(__src, 0);
    }

    if (!ot::Message::GetType(__src))
    {
      if (ot::Message::GetTxSuccess(__src))
      {
        ++*(a1 + 34);
        ++*(a1 + 48);
        memcpy(__dst, __src, sizeof(__dst));
        if (!ot::MeshForwarder::IsTxThreadControl(a1, __dst))
        {
          ++*(a1 + 45);
          ++*(a1 + 59);
        }

        Timestamp = ot::Message::GetTimestamp(__src);
        Value = ot::Time::GetValue(&Timestamp);
        ot::MeshForwarder::UpdateTxDelayStats(a1, Value);
      }

      else
      {
        ++*(a1 + 50);
        memcpy(v22, __src, sizeof(v22));
        if (!ot::MeshForwarder::IsTxThreadControl(a1, v22))
        {
          ++*(a1 + 46);
          ++*(a1 + 60);
        }

        v14 = ot::Message::GetTimestamp(__src);
        v5 = ot::Time::GetValue(&v14);
        ot::MeshForwarder::UpdateTxDelayStats(a1, v5);
      }

      v10 = v16;
      memcpy(v21, __src, sizeof(v21));
      IsTxThreadControl = ot::MeshForwarder::IsTxThreadControl(a1, v21);
      memcpy(v20, __src, sizeof(v20));
      IsTxIcmpError = ot::MeshForwarder::IsTxIcmpError(a1, v20);
      TxSuccess = ot::Message::GetTxSuccess(__src);
      ot::MeshForwarder::UpdateTriggerBasedNeighborInfo(a1, v10, IsTxThreadControl, IsTxIcmpError, TxSuccess);
    }

    SubType = ot::Message::GetSubType(__src);
    if (SubType == 2)
    {
      v7 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::DiscoverScanner>(a1);
      ot::Mle::DiscoverScanner::HandleDiscoveryRequestFrameTxDone(v7, __src, v17);
    }

    else if (SubType == 10)
    {
      v8 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::Mle>(a1);
      ot::Mle::Mle::HandleChildIdRequestTxDone(v8, __src);
    }
  }
}

uint64_t ot::MeshForwarder::RemoveMessageIfNoPendingTx(ot::MeshForwarder *this, ot::Message *a2)
{
  v4 = 0;
  if ((ot::Message::IsDirectTransmission(a2) & 1) == 0 && (ot::Message::IsChildPending(a2) & 1) == 0)
  {
    if (*(this + 7) == a2)
    {
      *(this + 7) = 0;
      *(this + 25) = 0;
    }

    ot::PriorityQueue::DequeueAndFree((this + 8), a2);
    v4 = 1;
  }

  return v4 & 1;
}

void ot::MeshForwarder::ResumeMessageTransmissions(uint64_t this)
{
  if ((*(this + 88) & 4) != 0)
  {
    *(this + 88) &= ~4u;
    ot::Tasklet::Post((this + 120));
  }
}

uint64_t ot::MeshForwarder::TxQueueStats::GetHistogram(ot::MeshForwarder::TxQueueStats *this, unsigned __int16 *a2, unsigned int *a3)
{
  *a2 = 210;
  *a3 = 10;
  return this + 4;
}

uint64_t ot::MeshForwarder::TxQueueStats::UpdateFor(ot::MeshForwarder::TxQueueStats *this, const ot::Message *a2)
{
  v9 = this;
  v8 = a2;
  Now = ot::TimerMilli::GetNow(this);
  Timestamp = ot::Message::GetTimestamp(v8);
  v7 = ot::Time::operator-(&Now, &Timestamp);
  v2 = ot::Min<unsigned int>(v7 / 0xA, 0xD1u);
  ++*(this + v2 + 1);
  result = ot::Max<unsigned int>(*this, v7);
  *this = result;
  return result;
}

ot::Message *ot::MeshForwarder::PrepareNextDirectTransmission(ot::MeshForwarder *this)
{
  ot::PriorityQueue::GetHead((this + 8));
  for (i = v1; i; i = Next)
  {
    Next = ot::Message::GetNext(i);
    if ((ot::Message::IsDirectTransmission(i) & 1) != 0 && (ot::Message::IsResolvingAddress(i) & 1) == 0)
    {
      ot::Message::SetDoNotEvict(i, 1);
      Type = ot::Message::GetType(i);
      if (Type)
      {
        if (Type == 1)
        {
          updated = ot::MeshForwarder::UpdateMeshRoute(this, i);
        }

        else
        {
          updated = 2;
        }
      }

      else
      {
        updated = ot::MeshForwarder::UpdateIp6Route(this, i);
      }

      ot::Message::SetDoNotEvict(i, 0);
      Next = ot::Message::GetNext(i);
      if (updated)
      {
        if (updated == 9)
        {
          ot::Message::SetResolvingAddress(i, 1);
        }

        else
        {
          ot::MeshForwarder::TxQueueStats::UpdateFor((this + 408), i);
          ot::MeshForwarder::LogMessage(this, 3u, i, updated);
          ot::MeshForwarder::FinalizeMessageDirectTx(this, i, updated, 0);
          ot::MeshForwarder::RemoveMessageIfNoPendingTx(this, i);
        }
      }

      else if (ot::Message::IsDirectTransmission(i))
      {
        ot::MeshForwarder::TxQueueStats::UpdateFor((this + 408), i);
        return i;
      }
    }
  }

  return i;
}

uint64_t ot::Message::SetTxSuccess(ot::Message *this, char a2)
{
  result = ot::Buffer::GetMetadata(this);
  *(result + 70) = *(result + 70) & 0xFFFFEFFF | ((a2 & 1) << 12);
  return result;
}

{
  return ot::Message::SetTxSuccess(this, a2);
}

uint64_t ot::Message::IsDirectTransmission(ot::Message *this)
{
  return (*(ot::Buffer::GetMetadata(this) + 70) >> 7) & 1;
}

{
  return ot::Message::IsDirectTransmission(this);
}

uint64_t ot::Message::IsResolvingAddress(ot::Message *this)
{
  return (*(ot::Buffer::GetMetadata(this) + 70) >> 15) & 1;
}

{
  return ot::Message::IsResolvingAddress(this);
}

uint64_t ot::Message::SetDoNotEvict(ot::Message *this, char a2)
{
  result = ot::Buffer::GetMetadata(this);
  *(result + 70) = *(result + 70) & 0xFFFFDFFF | ((a2 & 1) << 13);
  return result;
}

{
  return ot::Message::SetDoNotEvict(this, a2);
}

uint64_t ot::MeshForwarder::UpdateIp6Route(ot::MeshForwarder *this, ot::Message *a2)
{
  v17 = this;
  v16 = a2;
  v15 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::MleRouter>(this);
  v14 = 0;
  *(this + 88) &= ~1u;
  ot::Message::Read<ot::Ip6::Header>(v16, 0, v13);
  IgnoreError();
  Source = ot::Ip6::Header::GetSource(v13);
  if (!ot::Ip6::Address::IsMulticast(Source))
  {
    v3 = ot::Ip6::Header::GetSource(v13);
    ot::MeshForwarder::GetMacSourceAddress(this, v3, (this + 64));
    if (ot::Mle::Mle::IsDisabled(v15) || ot::Mle::Mle::IsDetached(v15))
    {
      Destination = ot::Ip6::Header::GetDestination(v13);
      if (!ot::Ip6::Address::IsLinkLocalUnicastOrMulticast(Destination, v5))
      {
        return 2;
      }

      goto LABEL_6;
    }

    v7 = ot::Ip6::Header::GetDestination(v13);
    if (ot::Ip6::Address::IsMulticast(v7))
    {
      if (!ot::Mle::Mle::IsChild(v15) || (ot::Message::IsLinkSecurityEnabled(v16) & 1) == 0 || ot::Message::IsSubTypeMle(v16))
      {
        ot::Mac::Address::SetShort(this + 74, 0xFFFF);
        return v14;
      }
    }

    else
    {
      v9 = ot::Ip6::Header::GetDestination(v13);
      if (ot::Ip6::Address::IsLinkLocalUnicast(v9, v10))
      {
LABEL_6:
        v6 = ot::Ip6::Header::GetDestination(v13);
        ot::MeshForwarder::GetMacDestinationAddress(this, v6, (this + 74));
        return v14;
      }

      if (!ot::Mle::Mle::IsMinimalEndDevice(v15))
      {
        return ot::MeshForwarder::UpdateIp6RouteFtd(this, v13, v16);
      }
    }

    ParentRloc16 = ot::Mle::Mle::GetParentRloc16(v15);
    ot::Mac::Address::SetShort(this + 74, ParentRloc16);
    return v14;
  }

  return 2;
}

uint64_t ot::Message::SetResolvingAddress(ot::Message *this, char a2)
{
  result = ot::Buffer::GetMetadata(this);
  *(result + 70) = *(result + 70) & 0xFFFF7FFF | ((a2 & 1) << 15);
  return result;
}

{
  return ot::Message::SetResolvingAddress(this, a2);
}

uint64_t ot::MeshForwarder::GetMacSourceAddress(ot::MeshForwarder *this, const ot::Ip6::Address *a2, ot::Mac::Address *a3)
{
  Iid = ot::Ip6::Address::GetIid(a2);
  ot::Ip6::InterfaceIdentifier::ConvertToMacAddress(Iid, a3);
  ot::Mac::Address::GetExtended(a3);
  v11 = v4;
  v5 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mac::Mac>(this);
  ExtAddress = ot::Mac::Mac::GetExtAddress(v5);
  result = ot::Unequatable<ot::Mac::ExtAddress>::operator!=(v11, ExtAddress);
  if (result)
  {
    v8 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mac::Mac>(this);
    ShortAddress = ot::Mac::Mac::GetShortAddress(v8);
    return ot::Mac::Address::SetShort(a3, ShortAddress);
  }

  return result;
}

_BYTE *ot::MeshForwarder::GetMacDestinationAddress(ot::MeshForwarder *this, const ot::Ip6::Address *a2, ot::Mac::Address *a3)
{
  if (ot::Ip6::Address::IsMulticast(a2))
  {
    return ot::Mac::Address::SetShort(a3, 0xFFFF);
  }

  v4 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::MleRouter>(this);
  if (ot::Mle::Mle::IsRoutingLocator(v4, a2))
  {
    Iid = ot::Ip6::Address::GetIid(a2);
    Locator = ot::Ip6::InterfaceIdentifier::GetLocator(Iid, v6);
    return ot::Mac::Address::SetShort(a3, Locator);
  }

  else
  {
    v8 = ot::Ip6::Address::GetIid(a2);
    return ot::Ip6::InterfaceIdentifier::ConvertToMacAddress(v8, a3);
  }
}

uint64_t ot::MeshForwarder::SetRxOnWhenIdle(ot::MeshForwarder *this, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  ot::Logger::LogAtLevel<(ot::LogLevel)3>("MeshForwarder", "%s: %d", a3, a4, a5, a6, a7, a8, "SetRxOnWhenIdle", a2 & 1);
  v8 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mac::Mac>(this);
  ot::Mac::Mac::SetRxOnWhenIdle(v8, a2 & 1, v9, v10, v11, v12, v13, v14);
  if (a2)
  {
    ot::DataPollSender::StopPolling((this + 352));
  }

  else
  {
    ot::DataPollSender::StartPolling((this + 352));
  }

  v15 = ot::GetProvider<ot::InstanceLocator>::Get<ot::SupervisionListener>(this);
  if (a2)
  {
    return ot::SupervisionListener::Stop(v15);
  }

  else
  {
    return ot::SupervisionListener::Start(v15, v16);
  }
}

ot::Mac::TxFrame *ot::MeshForwarder::HandleFrameRequest(ot::MeshForwarder *this, ot::Mac::TxFrames *a2)
{
  TxFrame = 0;
  if ((*(this + 88) & 2) != 0 && *(this + 7))
  {
    TxFrame = ot::Mac::TxFrames::GetTxFrame(a2);
    *(this + 88) = *(this + 88) & 0xF7 | 8;
    Type = ot::Message::GetType(*(this + 7));
    if (Type)
    {
      if (Type != 1)
      {
        *(this + 25) = ot::Message::GetLength(*(this + 7));
        return 0;
      }

      ot::MeshForwarder::SendMesh(this, *(this + 7), TxFrame);
    }

    else
    {
      if (ot::Message::GetSubType(*(this + 7)) == 2)
      {
        v2 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::DiscoverScanner>(this);
        TxFrame = ot::Mle::DiscoverScanner::PrepareDiscoveryRequestFrame(v2, TxFrame);
        if (!TxFrame)
        {
          return TxFrame;
        }
      }

      else
      {
        v3 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mac::Mac>(this);
        if (ot::Mac::Mac::IsCslEnabled(v3) && ot::Message::IsSubTypeMle(*(this + 7)))
        {
          v4 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mac::Mac>(this);
          if (!ot::Mac::Mac::IsCstEnabled(v4))
          {
            ot::Message::SetLinkSecurityEnabled(*(this + 7), 1);
          }
        }
      }

      *(this + 25) = ot::MeshForwarder::PrepareDataFrame(this, TxFrame, *(this + 7), (this + 64), *(this + 88) & 1, *(this + 42), *(this + 43), 0);
      if (ot::Message::GetSubType(*(this + 7)) == 10 && (ot::Message::IsLinkSecurityEnabled(*(this + 7)) & 1) != 0)
      {
        ot::Mac::Address::ToString((this + 64), v18);
        v13 = ot::String<(unsigned short)17>::AsCString(v18);
        ot::Mac::Address::ToString((this + 74), v17);
        v5 = ot::String<(unsigned short)17>::AsCString(v17);
        ot::Logger::LogAtLevel<(ot::LogLevel)2>("MeshForwarder", "Child ID Request requires fragmentation, aborting tx src:%s dst:%s mMeshSource:0x%x mMeshDest:0x%x", v6, v7, v8, v9, v10, v11, v13, v5, *(this + 42), *(this + 43));
        *(this + 25) = ot::Message::GetLength(*(this + 7));
        return 0;
      }
    }

    ot::Mac::TxFrame::SetIsARetransmission(TxFrame, 0);
  }

  return TxFrame;
}

uint64_t ot::MeshForwarder::PrepareDataFrame(ot::MeshForwarder *this, ot::Mac::TxFrame *a2, ot::Message *a3, const ot::Mac::Addresses *a4, char a5, unsigned __int16 a6, unsigned __int16 a7, char a8)
{
  v90 = this;
  v89 = a2;
  v88 = a3;
  v87 = a4;
  v86 = a5;
  v85 = a6;
  v84 = a7;
  v83 = a8;
  v82 = 0;
  v81 = 0;
  ot::Mac::PanIds::PanIds(v80);
  v79 = 0;
  Offset = 0;
  v77 = 0;
  v75 = 0;
  v74 = 0;
  while (1)
  {
    v82 = 0;
    v81 = 8;
    if (ot::Message::IsLinkSecurityEnabled(v88))
    {
      v82 = 5;
      SubType = ot::Message::GetSubType(v88);
      if (SubType == 1)
      {
        v81 = 16;
      }

      else if (SubType == 4)
      {
        v81 = 0;
      }
    }

    v8 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mac::Mac>(this);
    PanId = ot::Mac::Mac::GetPanId(v8);
    ot::Mac::PanIds::SetBothSourceDestination(v80, PanId);
    v62 = ot::Message::GetSubType(v88);
    if (v62 == 1)
    {
      v60 = v89;
      Channel = ot::Message::GetChannel(v88);
      ot::Mac::TxFrame::SetChannel(v60, Channel);
      v61 = v89;
      v11 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mac::Mac>(this);
      PanChannel = ot::Mac::Mac::GetPanChannel(v11);
      ot::Mac::TxFrame::SetRxChannelAfterTxDone(v61, PanChannel);
      ot::Mac::PanIds::SetDestination(v80, 0xFFFF);
    }

    else if (v62 == 3 || v62 == 2)
    {
      v13 = ot::Message::GetPanId(v88);
      ot::Mac::PanIds::SetDestination(v80, v13);
    }

    ot::MeshForwarder::PrepareMacHeaders(this, v89, 1, v87, v80, v82, v81, v88);
    MaxPayloadLength = 0;
    if (ot::Message::GetSubType(v88))
    {
      MaxPayloadLength = ot::Mac::Frame::GetMaxPayloadLength(v89);
    }

    else
    {
      v58 = *this;
      HeaderLength = ot::Mac::Frame::GetHeaderLength(v89);
      MaxPayloadLength = v58 - (HeaderLength + ot::Mac::Frame::GetFooterLength(v89));
      ot::Logger::LogAtLevel<(ot::LogLevel)2>("MeshForwarder", "Apply Fragmentation Size Limit %d ", v14, v15, v16, v17, v18, v19, MaxPayloadLength);
    }

    ot::Mac::Frame::GetPayload(v89);
    ot::FrameBuilder::Init(v76, v20, MaxPayloadLength);
    if (v86)
    {
      v71 = 0;
      v56 = 127 - ot::Mac::Frame::GetHeaderLength(v89);
      FooterLength = ot::Mac::Frame::GetFooterLength(v89);
      v71 = v56 - (FooterLength - ot::Mac::Frame::GetFcsSize(v89) + 2);
      ot::Mac::Frame::GetPayload(v89);
      ot::FrameBuilder::Init(v76, v21, v71);
      ot::Lowpan::MeshHeader::Init(v72, v85, v84, 19);
      ot::Lowpan::MeshHeader::AppendTo(v72, v76);
      IgnoreError();
    }

    Offset = ot::Message::GetOffset(v88);
    if (ot::Message::GetOffset(v88))
    {
      break;
    }

    Length = 0;
    MaxLength = 0;
    ot::Mac::Addresses::Addresses(&v67);
    Length = ot::FrameBuilder::GetLength(v76);
    MaxLength = ot::FrameBuilder::GetMaxLength(v76);
    ot::FrameBuilder::SetMaxLength(v76, MaxLength - 4);
    if (v86)
    {
      ot::Mac::Address::SetShort(&v67, v85);
      ot::Mac::Address::SetShort(&v67 + 10, v84);
    }

    else
    {
      v67 = *v87;
      v68 = *(v87 + 4);
    }

    v22 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Lowpan::Lowpan>(this);
    if (ot::Lowpan::Lowpan::Compress(v22, v88, &v67, v76))
    {
      __assert_rtn("PrepareDataFrame", "mesh_forwarder.cpp", 1105, "false");
    }

    ot::FrameBuilder::SetMaxLength(v76, MaxLength);
    v55 = ot::Message::GetLength(v88);
    v79 = v55 - ot::Message::GetOffset(v88);
    if ((v83 & 1) == 0)
    {
      v54 = v79;
      if (v54 <= ot::FrameBuilder::GetRemainingLength(v76))
      {
        goto LABEL_39;
      }
    }

    v75 = 1;
    if ((ot::Message::IsLinkSecurityEnabled(v88) & 1) != 0 || !ot::Message::IsSubTypeMle(v88))
    {
      if (!ot::Message::GetDatagramTag(v88))
      {
        if (!*(this + 24))
        {
          ++*(this + 24);
        }

        v23 = v88;
        v24 = *(this + 24);
        *(this + 24) = v24 + 1;
        ot::Message::SetDatagramTag(v23, v24);
      }

      v53 = ot::Message::GetLength(v88);
      DatagramTag = ot::Message::GetDatagramTag(v88);
      ot::Lowpan::FragmentHeader::FirstFrag::Init(v66, v53, DatagramTag);
      if (ot::FrameBuilder::Insert<ot::Lowpan::FragmentHeader::FirstFrag>(v76, Length, v66))
      {
        __assert_rtn("PrepareDataFrame", "mesh_forwarder.cpp", 1142, "false");
      }

      v74 = 4;
      goto LABEL_39;
    }

    ot::Message::SetOffset(v88, 0);
    ot::Message::SetLinkSecurityEnabled(v88, 1);
  }

  v75 = 1;
  v50 = ot::Message::GetLength(v88);
  v79 = v50 - ot::Message::GetOffset(v88);
  v51 = ot::Message::GetLength(v88);
  v52 = ot::Message::GetDatagramTag(v88);
  v26 = ot::Message::GetOffset(v88);
  ot::Lowpan::FragmentHeader::NextFrag::Init(v65, v51, v52, v26);
  if (ot::FrameBuilder::Append<ot::Lowpan::FragmentHeader::NextFrag>(v76, v65))
  {
    __assert_rtn("PrepareDataFrame", "mesh_forwarder.cpp", 1159, "false");
  }

  v74 = 5;
  v49 = ot::Message::GetLength(v88);
  v79 = v49 - ot::Message::GetOffset(v88);
LABEL_39:
  v48 = v79;
  if (v48 > ot::FrameBuilder::GetRemainingLength(v76))
  {
    v79 = ot::FrameBuilder::GetRemainingLength(v76) & 0xFFF8;
  }

  v47 = v88;
  v27 = ot::Message::GetOffset(v88);
  if (ot::FrameBuilder::AppendBytesFromMessage(v76, v47, v27, v79))
  {
    __assert_rtn("PrepareDataFrame", "mesh_forwarder.cpp", 1173, "false");
  }

  v45 = v89;
  v28 = ot::FrameBuilder::GetLength(v76);
  ot::Mac::Frame::SetPayloadLength(v45, v28);
  v29 = ot::Message::GetOffset(v88);
  v77 = v29 + v79;
  v46 = (v29 + v79);
  if (v46 < ot::Message::GetLength(v88))
  {
    ot::Mac::Frame::SetFramePending(v89, 1u);
  }

  if (v75)
  {
    bzero(v93, 0x400uLL);
    v30 = ot::GetProvider<ot::InstanceLocator>::Get<ot::MessagePool>(this);
    if (ot::MessagePool::GetIsBufferStatsEnabled(v30))
    {
      ot::Message::GetBufferIDs(v88, Offset, v77 - Offset, v93);
    }

    PayloadLength = ot::Mac::Frame::GetPayloadLength(v89);
    v40 = PayloadLength - v74;
    ot::Mac::Address::ToString(v87, v92);
    v41 = ot::String<(unsigned short)17>::AsCString(v92);
    ot::Mac::Address::ToString((v87 + 10), v91);
    v42 = ot::String<(unsigned short)17>::AsCString(v91);
    v43 = ot::Message::GetDatagramTag(v88);
    v44 = Offset;
    v32 = ot::Message::GetLength(v88);
    ot::Logger::LogAtLevel<(ot::LogLevel)3>("MeshForwarder", "tx frag frame, len:%d, src:%s, dst:%s, tag:%d, offset:%d, dglen:%d%s", v33, v34, v35, v36, v37, v38, v40, v41, v42, v43, v44, v32, v93);
  }

  ot::Message::SetOffset(v88, Offset);
  return v77;
}

BOOL ot::MeshForwarder::CalcIePresent(ot::MeshForwarder *this, const ot::Message *a2, const ot::Mac::Address *a3)
{
  v3 = ot::GetProvider<ot::InstanceLocator>::Get<ot::NeighborTable>(this);
  v10 = ot::NeighborTable::FindNeighbor(v3, a3, 5) != 0;
  IsCslEnabled = 0;
  if (v10)
  {
    v4 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mac::Mac>(this);
    IsCslEnabled = ot::Mac::Mac::IsCslEnabled(v4);
  }

  IsCstEnabled = 0;
  if (v10)
  {
    v5 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mac::Mac>(this);
    IsCstEnabled = ot::Mac::Mac::IsCstEnabled(v5);
  }

  return IsCslEnabled || IsCstEnabled;
}

uint64_t ot::MeshForwarder::CalcFrameVersion(ot::MeshForwarder *this, const ot::Neighbor *a2, char a3)
{
  v5 = 4096;
  if (a3)
  {
    return 0x2000;
  }

  else if (a2 && (v3 = ot::GetProvider<ot::InstanceLocator>::Get<ot::ChildTable>(this), ot::ChildTable::Contains(v3, a2)) && ot::CslTxScheduler::ChildInfo::IsCslSynchronized((a2 + 168)))
  {
    return 0x2000;
  }

  else if (a2 && ot::Neighbor::IsEnhAckProbingActive(a2))
  {
    return 0x2000;
  }

  else if (a2 && (ot::Neighbor::IsEnhacedAckEnabled(a2) & 1) != 0)
  {
    return 0x2000;
  }

  return v5;
}

void ot::MeshForwarder::AppendHeaderIe(ot::MeshForwarder *this, const ot::Message *a2, ot::Mac::TxFrame *a3)
{
  v16 = this;
  v15 = a2;
  v14 = a3;
  v13 = 0;
  v12 = 0;
  v9 = 1;
  if (ot::Mac::Frame::GetType(a3) != 3)
  {
    v7 = 0;
    if (v15)
    {
      v7 = ot::Message::GetLength(v15) != 0;
    }

    v9 = v7;
  }

  v11 = v9;
  ot::Mac::Address::Address(v10);
  v6 = 0;
  if (!ot::Mac::Frame::GetDstAddr(v14, v10))
  {
    v3 = ot::GetProvider<ot::InstanceLocator>::Get<ot::NeighborTable>(this);
    v6 = ot::NeighborTable::FindNeighbor(v3, v10, 5) != 0;
  }

  if (v6)
  {
    v4 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mac::Mac>(this);
    if (ot::Mac::Mac::IsCslEnabled(v4))
    {
      ot::Mac::Frame::AppendHeaderIeAt<ot::Mac::CslIe>(v14, &v13);
      IgnoreError();
      ot::Mac::TxFrame::SetCslIePresent(v14, 1);
      v12 = 1;
    }
  }

  if (v6)
  {
    v5 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mac::Mac>(this);
    if (ot::Mac::Mac::IsCstEnabled(v5))
    {
      ot::Mac::Frame::AppendHeaderIeAt<ot::Mac::CstIe>(v14, &v13);
      IgnoreError();
      v12 = 1;
    }
  }

  if (v12 & 1) != 0 && (v11)
  {
    ot::Mac::Frame::AppendHeaderIeAt<ot::Mac::Termination2Ie>(v14, &v13);
    IgnoreError();
  }
}

uint64_t ot::FrameBuilder::GetMaxLength(ot::FrameBuilder *this)
{
  return *(this + 5);
}

{
  return ot::FrameBuilder::GetMaxLength(this);
}

uint64_t ot::FrameBuilder::SetMaxLength(uint64_t this, __int16 a2)
{
  *(this + 10) = a2;
  return this;
}

{
  return ot::FrameBuilder::SetMaxLength(this, a2);
}

uint64_t ot::GetProvider<ot::InstanceLocator>::Get<ot::Lowpan::Lowpan>(ot::InstanceLocator *a1)
{
  Instance = ot::InstanceLocator::GetInstance(a1);
  return ot::Instance::Get<ot::Lowpan::Lowpan>(Instance);
}

{
  return ot::GetProvider<ot::InstanceLocator>::Get<ot::Lowpan::Lowpan>(a1);
}

uint64_t ot::FrameBuilder::GetRemainingLength(ot::FrameBuilder *this)
{
  return (*(this + 5) - *(this + 4));
}

{
  return ot::FrameBuilder::GetRemainingLength(this);
}

uint64_t ot::Message::GetDatagramTag(ot::Message *this)
{
  return *(ot::Buffer::GetMetadata(this) + 32);
}

{
  return ot::Message::GetDatagramTag(this);
}

uint64_t ot::Message::SetDatagramTag(ot::Message *this, int a2)
{
  result = ot::Buffer::GetMetadata(this);
  *(result + 32) = a2;
  return result;
}

{
  return ot::Message::SetDatagramTag(this, a2);
}

uint64_t ot::Lowpan::FragmentHeader::FirstFrag::Init(ot::Lowpan::FragmentHeader::FirstFrag *this, unsigned __int16 a2, unsigned __int16 a3)
{
  *this = ot::BigEndian::HostSwap16((a2 & 0x7FF | 0xC000u), a2);
  result = ot::BigEndian::HostSwap16(a3, v3);
  *(this + 1) = result;
  return result;
}

{
  return ot::Lowpan::FragmentHeader::FirstFrag::Init(this, a2, a3);
}

uint64_t ot::FrameBuilder::Insert<ot::Lowpan::FragmentHeader::FirstFrag>(ot::FrameBuilder *a1, unsigned __int16 a2, const void *a3)
{
  return ot::FrameBuilder::InsertBytes(a1, a2, a3, 4u);
}

{
  return ot::FrameBuilder::Insert<ot::Lowpan::FragmentHeader::FirstFrag>(a1, a2, a3);
}

uint64_t ot::Lowpan::FragmentHeader::NextFrag::Init(ot::Lowpan::FragmentHeader::NextFrag *this, unsigned __int16 a2, unsigned __int16 a3, unsigned __int16 a4)
{
  *this = ot::BigEndian::HostSwap16((a2 & 0x7FF | 0xE000u), a2);
  result = ot::BigEndian::HostSwap16(a3, v4);
  *(this + 1) = result;
  *(this + 4) = a4 >> 3;
  return result;
}

{
  return ot::Lowpan::FragmentHeader::NextFrag::Init(this, a2, a3, a4);
}

uint64_t ot::FrameBuilder::Append<ot::Lowpan::FragmentHeader::NextFrag>(ot::FrameBuilder *a1, const void *a2)
{
  return ot::FrameBuilder::AppendBytes(a1, a2, 5u);
}

{
  return ot::FrameBuilder::Append<ot::Lowpan::FragmentHeader::NextFrag>(a1, a2);
}

ot::Neighbor *ot::MeshForwarder::UpdateNeighborOnSentFrame(ot::InstanceLocator *a1, ot::Mac::Frame *a2, int a3, ot::Mac::Address *a4, char a5)
{
  Neighbor = 0;
  v10 = 4;
  if ((*(a1 + 88) & 2) != 0)
  {
    v5 = ot::GetProvider<ot::InstanceLocator>::Get<ot::NeighborTable>(a1);
    Neighbor = ot::NeighborTable::FindNeighbor(v5, a4, 1);
    if (Neighbor)
    {
      if (ot::Mac::Frame::GetAckRequest(a2, v6))
      {
        ot::Mac::Frame::GetHeaderIe(a2, 0x1Au);
        if (v7 && (a5 & 1) != 0)
        {
          v10 = 15;
        }

        ot::MeshForwarder::UpdateNeighborLinkFailures(a1, Neighbor, a3, 1, v10);
      }
    }
  }

  return Neighbor;
}

void ot::MeshForwarder::UpdateNeighborLinkFailures(ot::InstanceLocator *result, ot::Neighbor *a2, int a3, char a4, unsigned __int8 a5)
{
  if (a3)
  {
    if (a3 == 14)
    {
      ot::Neighbor::IncrementLinkFailures(a2);
      if (a4)
      {
        Rloc16 = ot::Neighbor::GetRloc16(a2);
        if (ot::Mle::IsRouterRloc16(Rloc16, v6) && ot::Neighbor::GetLinkFailures(a2) >= a5)
        {
          v7 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::MleRouter>(result);
          ot::Mle::MleRouter::RemoveRouterLink(v7, a2);
        }
      }
    }
  }

  else
  {
    ot::Neighbor::ResetLinkFailures(a2);
  }
}

uint64_t ot::Neighbor::IncrementLinkFailures(uint64_t this)
{
  ++*(this + 35);
  return this;
}

{
  return ot::Neighbor::IncrementLinkFailures(this);
}

uint64_t ot::MeshForwarder::GetTxDelayStats(ot::MeshForwarder *this, int a2)
{
  v6 = this;
  v5 = a2;
  if (a2)
  {
    Now = ot::TimerMilli::GetNow(this);
    Value = ot::Time::GetValue(&Now);
    return (Value - v5);
  }

  else
  {
    return 0;
  }
}

uint64_t ot::MeshForwarder::GetAddressAndPortInfo(uint64_t a1, ot::Message *a2, char *a3, char a4)
{
  v48 = a1;
  v47 = a2;
  __s = a3;
  v45[119] = a4;
  v44 = 6;
  if (!ot::Message::GetType(a2) && !ot::Ip6::Headers::ParseFrom(v45, a2))
  {
    v44 = 0;
    if (ot::Ip6::Headers::IsIcmp6(v45))
    {
      __str = &__s[strlen(__s)];
      __size = 256 - strlen(__s);
      SourceAddress = ot::Ip6::Headers::GetSourceAddress(v45);
      ot::Ip6::Address::ToString(v56, SourceAddress);
      v39 = ot::String<(unsigned short)40>::AsCString(v56);
      DestinationAddress = ot::Ip6::Headers::GetDestinationAddress(v45);
      ot::Ip6::Address::ToString(v55, DestinationAddress);
      v40 = ot::String<(unsigned short)40>::AsCString(v55);
      Checksum = ot::Ip6::Headers::GetChecksum(v45);
      snprintf(__str, __size, "IPv6 ICMP src=[%s], dst=[%s], chksum:%04x", v39, v40, Checksum);
    }

    else if (ot::Ip6::Headers::IsUdp(v45))
    {
      v38 = &__s[strlen(__s)];
      v37 = 256 - strlen(__s);
      v7 = ot::Ip6::Headers::GetSourceAddress(v45);
      ot::Ip6::Address::ToString(v54, v7);
      v33 = ot::String<(unsigned short)40>::AsCString(v54);
      SourcePort = ot::Ip6::Headers::GetSourcePort(v45);
      v8 = ot::Ip6::Headers::GetDestinationAddress(v45);
      ot::Ip6::Address::ToString(v53, v8);
      v35 = ot::String<(unsigned short)40>::AsCString(v53);
      DestinationPort = ot::Ip6::Headers::GetDestinationPort(v45);
      v9 = ot::Ip6::Headers::GetChecksum(v45);
      snprintf(v38, v37, "IPv6 UDP src=[%s]:%d, dst=[%s]:%d,  chksum:%04x", v33, SourcePort, v35, DestinationPort, v9);
    }

    else if (ot::Ip6::Headers::IsTcp(v45))
    {
      v32 = &__s[strlen(__s)];
      v31 = 256 - strlen(__s);
      v10 = ot::Ip6::Headers::GetSourceAddress(v45);
      ot::Ip6::Address::ToString(v52, v10);
      v27 = ot::String<(unsigned short)40>::AsCString(v52);
      v28 = ot::Ip6::Headers::GetSourcePort(v45);
      v11 = ot::Ip6::Headers::GetDestinationAddress(v45);
      ot::Ip6::Address::ToString(v51, v11);
      v29 = ot::String<(unsigned short)40>::AsCString(v51);
      v30 = ot::Ip6::Headers::GetDestinationPort(v45);
      v12 = ot::Ip6::Headers::GetChecksum(v45);
      snprintf(v32, v31, "IPv6 TCP src=[%s]:%d, dst=[%s]:%d, chksum:%04x", v27, v28, v29, v30, v12);
    }

    else if (ot::Ip6::Headers::IsHopOpts(v45))
    {
      v26 = &__s[strlen(__s)];
      v25 = 256 - strlen(__s);
      v19 = ot::Ip6::Headers::GetSourceAddress(v45);
      ot::Ip6::Address::ToString(v50, v19);
      v23 = ot::String<(unsigned short)40>::AsCString(v50);
      v20 = ot::Ip6::Headers::GetDestinationAddress(v45);
      ot::Ip6::Address::ToString(v49, v20);
      v24 = ot::String<(unsigned short)40>::AsCString(v49);
      v21 = ot::Ip6::Headers::GetChecksum(v45);
      snprintf(v26, v25, "IPv6 HopOpts src=[%s], dst=[%s], chksum:%04x", v23, v24, v21);
    }

    else
    {
      ot::Logger::LogAtLevel<(ot::LogLevel)2>("MeshForwarder", "MeshForwarder::GetAddressAndPortInfo packet type is unknown ", v13, v14, v15, v16, v17, v18);
      return 6;
    }
  }

  return v44;
}

BOOL ot::Ip6::Headers::IsTcp(ot::Ip6::Headers *this)
{
  return ot::Ip6::Headers::GetIpProto(this) == 6;
}

{
  return ot::Ip6::Headers::IsTcp(this);
}

BOOL ot::Ip6::Headers::IsHopOpts(ot::Ip6::Headers *this)
{
  return ot::Ip6::Headers::GetIpProto(this) == 0;
}

{
  return ot::Ip6::Headers::IsHopOpts(this);
}

BOOL ot::MeshForwarder::IsTxThreadControl(uint64_t a1, ot::Message *a2)
{
  v7 = a1;
  v6 = a2;
  if (ot::Message::GetType(a2) != 2 && ot::Message::GetType(a2) != 3)
  {
    return !ot::Message::GetType(a2) && !ot::Ip6::Headers::ParseFrom(v5, a2) && ot::Ip6::Headers::IsUdp(v5) && ((DestinationPort = ot::Ip6::Headers::GetDestinationPort(v5), DestinationPort == 19788) || DestinationPort == 61631);
  }

  return 1;
}

BOOL ot::MeshForwarder::IsTxIcmpError(uint64_t a1, ot::Message *a2)
{
  v15 = a1;
  v14 = a2;
  if (ot::Message::GetType(a2) || ot::Ip6::Headers::ParseFrom(v13, a2) || !ot::Ip6::Headers::IsIcmp6(v13) || ot::Message::Read<ot::Ip6::Icmp::Header>(a2, 0x28u, v12))
  {
    return 0;
  }

  else
  {
    Type = ot::Ip6::Icmp::Header::GetType(v12);
    IsError = ot::Ip6::Icmp::Header::IsError(v12);
    ot::Logger::LogAtLevel<(ot::LogLevel)5>("MeshForwarder", "IxTxIcmpError type=%d isError=%d", v3, v4, v5, v6, v7, v8, Type, IsError);
    return ot::Ip6::Icmp::Header::IsError(v12);
  }
}

_DWORD *ot::MeshForwarder::UpdateTriggerBasedNeighborInfo(_DWORD *this, ot::Neighbor *a2, char a3, char a4, char a5)
{
  if (a2)
  {
    this = ot::Neighbor::GetTriggerBasedStatsInfo(a2);
    if (a5)
    {
      ++this[2];
      if (a3)
      {
        ++this[13];
      }
    }

    else
    {
      ++this[4];
      if (a3)
      {
        ++this[14];
      }
    }

    if (a4)
    {
      ++*this;
    }
  }

  return this;
}

uint64_t ot::Neighbor::GetTriggerBasedStatsInfo(ot::Neighbor *this)
{
  return this + 72;
}

{
  return ot::Neighbor::GetTriggerBasedStatsInfo(this);
}

uint64_t ot::MeshForwarder::UpdateTxDelayTriggerBasedStats(uint64_t this, unsigned int a2)
{
  *(this + 224) += a2;
  ++*(this + 232);
  if (a2 > *(this + 208))
  {
    *(this + 208) = a2;
  }

  if (a2 < *(this + 212) || *(this + 232) == 1)
  {
    *(this + 212) = a2;
  }

  *(this + 216) = *(this + 224) / *(this + 232);
  if (*(this + 224) % *(this + 232) > *(this + 232) / 2u)
  {
    ++*(this + 216);
  }

  return this;
}

ot::TimerMilli *ot::MeshForwarder::UpdateTxDelayStats(ot::TimerMilli *this, int a2)
{
  v7 = this;
  v6 = a2;
  v3 = this;
  if (a2)
  {
    Now = ot::TimerMilli::GetNow(this);
    Value = ot::Time::GetValue(&Now);
    v5 = Value - v6;
    *(v3 + 21) += (Value - v6);
    ++*(v3 + 44);
    if (v5 > *(v3 + 38))
    {
      *(v3 + 38) = v5;
    }

    if (v5 < *(v3 + 39) || *(v3 + 44) == 1)
    {
      *(v3 + 39) = v5;
    }

    *(v3 + 40) = *(v3 + 21) / *(v3 + 44);
    if (*(v3 + 21) % *(v3 + 44) > *(v3 + 44) / 2u)
    {
      ++*(v3 + 40);
    }

    return ot::MeshForwarder::UpdateTxDelayTriggerBasedStats(v3, v5);
  }

  return this;
}

void ot::MeshForwarder::HandleSentFrame(uint64_t a1, ot::Mac::Frame *a2, int a3)
{
  v19 = a1;
  v18 = a2;
  v17 = a3;
  updated = 0;
  ot::Mac::Address::Address(v15);
  v13 = 1;
  if (v17)
  {
    v13 = 1;
    if (v17 != 15)
    {
      v13 = 1;
      if (v17 != 11)
      {
        v13 = 1;
        if (v17 != 14)
        {
          v13 = v17 == 29;
        }
      }
    }
  }

  if (!v13)
  {
    __assert_rtn("HandleSentFrame", "mesh_forwarder.cpp", 1568, "(aError == kErrorNone) || (aError == kErrorChannelAccessFailure) || (aError == kErrorAbort) || (aError == kErrorNoAck) || (aError == kErrorDuplicated)");
  }

  if (v17)
  {
    if (*(a1 + 56))
    {
      v3 = ot::GetProvider<ot::InstanceLocator>::Get<ot::AppMetricsManager>(a1);
      if (ot::AppMetricsManager::IsAppPacket(v3, *(a1 + 56), v14, 1))
      {
        v4 = ot::GetProvider<ot::InstanceLocator>::Get<ot::AppMetricsManager>(a1);
        ot::AppMetricsManager::UpdateAppMapWithPerPacketThreadTXReachabilityStatus(v4, v17, v14);
      }
    }
  }

  *(a1 + 88) &= ~8u;
  if ((*(a1 + 88) & 2) != 0)
  {
    if ((*(a1 + 88) & 0x10) == 0 || v17)
    {
      *(a1 + 88) &= ~0x10u;
    }

    else
    {
      ot::TimerMilli::Start((a1 + 96), 8u);
      v5 = ot::ToUlong(8);
      ot::Logger::LogAtLevel<(ot::LogLevel)5>("MeshForwarder", "Start tx delay timer for %lu msec", v6, v7, v8, v9, v10, v11, v5);
    }

    if (!ot::Mac::Frame::IsEmpty(v18))
    {
      ot::Mac::Frame::GetDstAddr(v18, v15);
      IgnoreError();
      updated = ot::MeshForwarder::UpdateNeighborOnSentFrame(a1, v18, v17, v15, 0);
    }

    ot::MeshForwarder::UpdateSendMessage(a1, v17, v15, updated);
  }
}

void ot::MeshForwarder::UpdateSendMessage(uint64_t a1, int a2, const ot::Mac::Address *a3, ot::Neighbor *a4)
{
  v18 = a1;
  v17 = a2;
  v16 = a3;
  v15 = a4;
  v14 = a2;
  if (*(a1 + 56))
  {
    if ((ot::Message::IsDirectTransmission(*(a1 + 56)) & 1) == 0)
    {
      __assert_rtn("UpdateSendMessage", "mesh_forwarder.cpp", 1612, "mSendMessage->IsDirectTransmission()");
    }

    if (v17)
    {
      ot::Message::SetTxSuccess(*(a1 + 56), 0);
      *(a1 + 50) = ot::Message::GetLength(*(a1 + 56));
    }

    v11 = *(a1 + 50);
    if (v11 >= ot::Message::GetLength(*(a1 + 56)))
    {
      v14 = v17;
      if (v15)
      {
        LinkInfo = ot::Neighbor::GetLinkInfo(v15);
        TxSuccess = ot::Message::GetTxSuccess(*(a1 + 56));
        ot::LinkQualityInfo::AddMessageTxStatus(LinkInfo, TxSuccess);
        v5 = ot::GetProvider<ot::InstanceLocator>::Get<ot::AppMetricsManager>(a1);
        if (ot::AppMetricsManager::IsAppPacket(v5, *(a1 + 56), v13, 1))
        {
          v9 = ot::GetProvider<ot::InstanceLocator>::Get<ot::AppMetricsManager>(a1);
          v8 = v15;
          v6 = ot::Message::GetTxSuccess(*(a1 + 56));
          ot::AppMetricsManager::AddAppMessageTxStatus(v9, v13, v8, v6);
        }
      }

      v7 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Utils::HistoryTracker>(a1);
      ot::Utils::HistoryTracker::RecordTxMessage(v7, *(a1 + 56), v16);
      ot::MeshForwarder::LogMessage(a1, 1u, *(a1 + 56), v14, v16);
      ot::MeshForwarder::FinalizeMessageDirectTx(a1, *(a1 + 56), v14, v15);
      ot::MeshForwarder::RemoveMessageIfNoPendingTx(a1, *(a1 + 56));
    }

    else
    {
      ot::Message::SetOffset(*(a1 + 56), *(a1 + 50));
    }
  }

  ot::Tasklet::Post((a1 + 120));
}

uint64_t ot::Utils::HistoryTracker::RecordTxMessage(ot::Utils::HistoryTracker *this, const ot::Message *a2, const ot::Mac::Address *a3)
{
  return ot::Utils::HistoryTracker::RecordMessage(this, a2, a3, 1);
}

{
  return ot::Utils::HistoryTracker::RecordTxMessage(this, a2, a3);
}

void ot::MeshForwarder::LogMessage(ot::Instance *a1, unsigned __int8 a2, ot::Message *a3, int a4, ot::Mac::Address *a5)
{
  v8 = 4;
  if (a2 <= 2u)
  {
    if (a4)
    {
      v5 = 3;
    }

    else
    {
      v5 = 4;
    }

    v8 = v5;
  }

  else if (a2 - 3 <= 2)
  {
    v8 = 2;
  }

  if (ot::Instance::GetLogLevel(a1) >= v8)
  {
    Type = ot::Message::GetType(a3);
    if (Type)
    {
      if (Type == 1)
      {
        ot::MeshForwarder::LogMeshMessage(a1, a2, a3, a5, a4, v8);
      }
    }

    else
    {
      ot::MeshForwarder::LogIp6Message(a1, a2, a3, a5, a4, v8);
    }
  }
}

uint64_t ot::MeshForwarder::RxInfo::ParseIp6Headers(ot::MeshForwarder::RxInfo *this)
{
  v4 = 0;
  if ((*(this + 176) & 1) == 0)
  {
    Instance = ot::InstanceLocator::GetInstance(this);
    v4 = ot::Ip6::Headers::DecompressFrom((this + 64), this, (this + 40), Instance);
    if (!v4)
    {
      *(this + 176) = 1;
    }
  }

  return v4;
}

void ot::MeshForwarder::HandleReceivedFrame(ot::MeshForwarder *this, ot::Mac::RxFrame *a2)
{
  v32 = this;
  v31 = a2;
  SrcAddr = 0;
  Instance = ot::InstanceLocator::GetInstance(this);
  ot::MeshForwarder::RxInfo::RxInfo(v26, Instance);
  if ((*(this + 88) & 2) != 0)
  {
    ot::Mac::Frame::GetPayload(v31);
    v24 = v3;
    PayloadLength = ot::Mac::Frame::GetPayloadLength(v31);
    ot::Data<(ot::DataLengthType)1>::Init(v26, v24, PayloadLength);
    SrcAddr = ot::Mac::Frame::GetSrcAddr(v31, v28);
    if (!SrcAddr)
    {
      SrcAddr = ot::Mac::Frame::GetDstAddr(v31, v29);
      if (!SrcAddr)
      {
        ot::ThreadLinkInfo::SetFrom(&v27, v31);
        v22 = ot::GetProvider<ot::InstanceLocator>::Get<ot::SupervisionListener>(this);
        IsLinkSecurityEnabled = ot::MeshForwarder::RxInfo::IsLinkSecurityEnabled(v26);
        ot::SupervisionListener::UpdateOnReceive(v22, v28, IsLinkSecurityEnabled);
        Type = ot::Mac::Frame::GetType(v31);
        if (Type)
        {
          if (Type == 1)
          {
            if (ot::Lowpan::MeshHeader::IsMeshHeader(v26, v6))
            {
              v8 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::MleRouter>(this);
              if (ot::Mle::Mle::IsMinimalEndDevice(v8))
              {
                ot::Logger::LogAtLevel<(ot::LogLevel)2>("MeshForwarder", "Frame with Mesh Header received in SED/SSED Mode, dropping", v9, v10, v11, v12, v13, v14);
                SrcAddr = 2;
              }

              else
              {
                ot::MeshForwarder::HandleMesh(this, v26);
              }
            }

            else if (ot::Lowpan::FragmentHeader::IsFragmentHeader(v26, v7))
            {
              ot::MeshForwarder::HandleFragment(this, v26);
            }

            else if (ot::Lowpan::Lowpan::IsLowpanHc(v26, v15))
            {
              ot::MeshForwarder::HandleLowpanHc(this, v26);
            }

            else if (ot::Data<(ot::DataLengthType)1>::GetLength(v26))
            {
              SrcAddr = 32;
            }

            else
            {
              ot::Logger::LogAtLevel<(ot::LogLevel)4>("MeshForwarder", "Possibly a Supervision Frame", v16, v17, v18, v19, v20, v21);
              ot::MeshForwarder::LogFrame(this, "Received empty payload frame", v31, 0);
            }
          }

          else
          {
            SrcAddr = 2;
          }
        }
      }
    }
  }

  else
  {
    SrcAddr = 13;
  }

  if (SrcAddr)
  {
    ot::MeshForwarder::LogFrame(this, "Dropping rx frame", v31, SrcAddr);
  }

  else
  {
    ot::MeshForwarder::LogFrame(this, "rx frame", v31, 0);
  }
}

ot::MeshForwarder::RxInfo *ot::MeshForwarder::RxInfo::RxInfo(ot::MeshForwarder::RxInfo *this, ot::Instance *a2)
{
  ot::MeshForwarder::RxInfo::RxInfo(this, a2);
  return this;
}

{
  ot::InstanceLocator::InstanceLocator(this, a2);
  ot::Mac::Addresses::Addresses((this + 40));
  result = this;
  *(this + 176) = 0;
  return result;
}

uint64_t ot::MeshForwarder::RxInfo::IsLinkSecurityEnabled(ot::MeshForwarder::RxInfo *this)
{
  return ot::ThreadLinkInfo::IsLinkSecurityEnabled((this + 16));
}

{
  return ot::MeshForwarder::RxInfo::IsLinkSecurityEnabled(this);
}

void ot::MeshForwarder::HandleFragment(ot::MeshForwarder *this, ot::MeshForwarder::RxInfo *a2)
{
  v81 = this;
  v80 = a2;
  v79 = 0;
  v77 = 0;
  Bytes = ot::Data<(ot::DataLengthType)1>::GetBytes(a2);
  Length = ot::Data<(ot::DataLengthType)1>::GetLength(v80);
  v79 = ot::Lowpan::FragmentHeader::ParseFrom(v78, v80);
  if (v79)
  {
    ot::Logger::LogAtLevel<(ot::LogLevel)3>("MeshForwarder", "Error while converting frame to packet fragment", v2, v3, v4, v5, v6, v7);
  }

  else if (ot::Lowpan::FragmentHeader::GetDatagramOffset(v78))
  {
    v73[2] = this + 40;
    v73[0] = ot::MessageQueue::begin((this + 40));
    v73[1] = v35;
    v72[0] = ot::MessageQueue::end((this + 40));
    v72[1] = v36;
    while (ot::ItemPtrIterator<ot::Message,ot::Message::Iterator>::operator!=(v73, v72))
    {
      v71 = ot::ItemPtrIterator<ot::Message,ot::Message::Iterator>::operator*(v73);
      v68 = ot::Message::GetLength(v71);
      if (v68 == ot::Lowpan::FragmentHeader::GetDatagramSize(v78))
      {
        DatagramTag = ot::Message::GetDatagramTag(v71);
        if (DatagramTag == ot::Lowpan::FragmentHeader::GetDatagramTag(v78))
        {
          Offset = ot::Message::GetOffset(v71);
          if (Offset == ot::Lowpan::FragmentHeader::GetDatagramOffset(v78))
          {
            v64 = ot::Message::GetOffset(v71);
            v65 = v64 + ot::Data<(ot::DataLengthType)1>::GetLength(v80);
            if (v65 <= ot::Lowpan::FragmentHeader::GetDatagramSize(v78))
            {
              IsLinkSecurityEnabled = ot::Message::IsLinkSecurityEnabled(v71);
              if (IsLinkSecurityEnabled == ot::MeshForwarder::RxInfo::IsLinkSecurityEnabled(v80))
              {
                v77 = v71;
                break;
              }
            }
          }
        }
      }

      ot::ItemPtrIterator<ot::Message,ot::Message::Iterator>::operator++(v73, v37);
    }

    if (ot::MeshForwarder::GetRxOnWhenIdle(this) & 1) == 0 && !v77 && (ot::MeshForwarder::RxInfo::IsLinkSecurityEnabled(v80))
    {
      ot::MeshForwarder::ClearReassemblyList(this);
    }

    if (v77)
    {
      v59 = v77;
      v44 = ot::Message::GetOffset(v77);
      ot::Message::WriteData<(ot::DataLengthType)1>(v59, v44, v80);
      v60 = v77;
      v45 = ot::Data<(ot::DataLengthType)1>::GetLength(v80);
      ot::Message::MoveOffset(v60, v45);
      v61 = v77;
      Rss = ot::ThreadLinkInfo::GetRss((v80 + 16));
      ot::Message::AddRss(v61, Rss);
      v62 = v77;
      Lqi = ot::ThreadLinkInfo::GetLqi((v80 + 16));
      ot::Message::AddLqi(v62, Lqi);
      ot::Message::SetTimestampToNow(v77);
    }

    else
    {
      ot::Logger::LogAtLevel<(ot::LogLevel)5>("MeshForwarder", "Received fragment with a non-matching fragmentation offset, tag and security", v38, v39, v40, v41, v42, v43);
      v79 = 2;
    }
  }

  else
  {
    DatagramSize = ot::Lowpan::FragmentHeader::GetDatagramSize(v78);
    ot::MeshForwarder::UpdateRoutes(this, v80);
    v79 = ot::MeshForwarder::FrameToMessage(this, v80, DatagramSize, &v77);
    if (v79)
    {
      ot::Logger::LogAtLevel<(ot::LogLevel)3>("MeshForwarder", "HandleFragment() Error while converting frame to message", v8, v9, v10, v11, v12, v13);
    }

    else if (DatagramSize >= ot::Message::GetLength(v77))
    {
      v79 = ot::Message::SetLength(v77, DatagramSize);
      if (v79)
      {
        ot::Logger::LogAtLevel<(ot::LogLevel)3>("MeshForwarder", "HandleFragment() Failed to set message's length", v20, v21, v22, v23, v24, v25);
      }

      else
      {
        v69 = v77;
        v26 = ot::Lowpan::FragmentHeader::GetDatagramTag(v78);
        ot::Message::SetDatagramTag(v69, v26);
        ot::Message::SetTimestampToNow(v77);
        ot::Message::SetFirstFragTimestampToNow(v77);
        ot::Message::UpdateLinkInfoFrom(v77, (v80 + 16));
        v27 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Ip6::Filter>(this);
        if (ot::Ip6::Filter::Accept(v27, v77))
        {
          ot::MeshForwarder::SendIcmpErrorIfDstUnreach(this, v77, (v80 + 40));
          if (ot::MeshForwarder::GetRxOnWhenIdle(this) & 1) == 0 && (ot::Message::IsLinkSecurityEnabled(v77))
          {
            ot::MeshForwarder::ClearReassemblyList(this);
          }

          ot::MessageQueue::Enqueue((this + 40), v77);
          v34 = ot::GetProvider<ot::InstanceLocator>::Get<ot::TimeTicker>(this);
          ot::TimeTicker::RegisterReceiver(v34, 0);
        }

        else
        {
          ot::Logger::LogAtLevel<(ot::LogLevel)5>("MeshForwarder", "Received fragment was filtered out by IPv6 filter", v28, v29, v30, v31, v32, v33);
          v79 = 2;
        }
      }
    }

    else
    {
      v79 = 6;
      ot::Logger::LogAtLevel<(ot::LogLevel)3>("MeshForwarder", "HandleFragment() Datagram size less than message", v14, v15, v16, v17, v18, v19);
    }
  }

  if (v79)
  {
    ot::MeshForwarder::LogFragmentFrameDrop(this, v79, v80, v78);
    otDumpNotePlat("[Dropped frame]", Bytes, Length);
  }

  else
  {
    bzero(v82, 0x400uLL);
    v48 = ot::GetProvider<ot::InstanceLocator>::Get<ot::MessagePool>(this);
    if (ot::MessagePool::GetIsBufferStatsEnabled(v48))
    {
      v58 = v77;
      DatagramOffset = ot::Lowpan::FragmentHeader::GetDatagramOffset(v78);
      v49 = ot::Data<(ot::DataLengthType)1>::GetLength(v80);
      ot::Message::GetBufferIDs(v58, DatagramOffset, v49, v82);
    }

    v54 = v79;
    v55 = ot::Data<(ot::DataLengthType)1>::GetLength(v80);
    v56 = (v80 + 40);
    v50 = ot::ThreadLinkInfo::IsLinkSecurityEnabled((v80 + 16));
    ot::MeshForwarder::LogFragmentFrame(this, v54, v55, v56, v78, v50, v82);
    v53 = ot::Message::GetOffset(v77);
    if (v53 >= ot::Message::GetLength(v77))
    {
      ot::MessageQueue::Dequeue((this + 40), v77);
      v52 = v77;
      SrcAddr = ot::MeshForwarder::RxInfo::GetSrcAddr(v80);
      ot::MeshForwarder::HandleDatagram(this, v52, SrcAddr);
      IgnoreError();
    }
  }
}

void ot::MeshForwarder::HandleLowpanHc(ot::MeshForwarder *this, ot::MeshForwarder::RxInfo *a2)
{
  v16 = this;
  v15 = a2;
  v14 = 0;
  v13 = 0;
  ot::MeshForwarder::UpdateRoutes(this, a2);
  v14 = ot::MeshForwarder::FrameToMessage(this, v15, 0, &v13);
  if (!v14)
  {
    ot::Message::UpdateLinkInfoFrom(v13, (v15 + 16));
    v2 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Ip6::Filter>(this);
    if (ot::Ip6::Filter::Accept(v2, v13))
    {
      ot::Message::SetTimestampToNow(v13);
      v3 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Ip6::Filter>(this);
      if (ot::Ip6::Filter::Accept(v3, v13))
      {
        ot::MeshForwarder::SendIcmpErrorIfDstUnreach(this, v13, (v15 + 40));
      }

      else
      {
        ot::Logger::LogAtLevel<(ot::LogLevel)5>("MeshForwarder", "Received lowpan HC was filtered out by IPv6 filter", v4, v5, v6, v7, v8, v9);
        v14 = 2;
      }
    }

    else
    {
      v14 = 2;
    }
  }

  if (v14)
  {
    ot::MeshForwarder::LogLowpanHcFrameDrop(this, v14, v15);
    if (v13)
    {
      ot::Message::Free(v13);
    }
  }

  else
  {
    v11 = v13;
    SrcAddr = ot::MeshForwarder::RxInfo::GetSrcAddr(v15);
    ot::MeshForwarder::HandleDatagram(this, v11, SrcAddr);
    IgnoreError();
  }
}

void ot::MeshForwarder::LogFrame(uint64_t a1, const char *a2, ot::Mac::Frame *a3, int a4)
{
  v24 = a1;
  v23 = a2;
  v22 = a3;
  v21 = a4;
  if (a4)
  {
    v20 = ot::ErrorToString(v21);
    v19 = v26;
    ot::Mac::Frame::ToInfoString(v22, v26);
    v4 = ot::String<(unsigned short)150>::AsCString(v26);
    ot::Logger::LogAtLevel<(ot::LogLevel)3>("MeshForwarder", "%s, aError:%s, %s", v5, v6, v7, v8, v9, v10, v23, v20, v4);
  }

  else
  {
    v18 = v25;
    ot::Mac::Frame::ToInfoString(v22, v25);
    v11 = ot::String<(unsigned short)150>::AsCString(v25);
    ot::Logger::LogAtLevel<(ot::LogLevel)4>("MeshForwarder", "%s, %s", v12, v13, v14, v15, v16, v17, v23, v11);
  }
}

uint64_t ot::Lowpan::FragmentHeader::GetDatagramSize(ot::Lowpan::FragmentHeader *this)
{
  return *this;
}

{
  return ot::Lowpan::FragmentHeader::GetDatagramSize(this);
}

uint64_t ot::MeshForwarder::FrameToMessage(ot::MeshForwarder *this, ot::MeshForwarder::RxInfo *a2, __int16 a3, ot::Message **a4)
{
  v18 = this;
  v17 = a2;
  v16 = a3;
  v15 = a4;
  FramePriority = 0;
  v13 = *a2;
  v12 = 0;
  FramePriority = ot::MeshForwarder::GetFramePriority(this, a2, &v12);
  if (!FramePriority)
  {
    v9 = ot::GetProvider<ot::InstanceLocator>::Get<ot::MessagePool>(this);
    ot::Message::Settings::Settings(v11, v12);
    v4 = ot::MessagePool::Allocate(v9, 0, 0, v11);
    *v15 = v4;
    if (*v15)
    {
      v5 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Lowpan::Lowpan>(this);
      FramePriority = ot::Lowpan::Lowpan::Decompress(v5, *v15, (v17 + 40), &v13, v16);
      if (!FramePriority)
      {
        FramePriority = ot::Message::AppendData<(ot::DataLengthType)1>(*v15, &v13);
        if (!FramePriority)
        {
          v8 = *v15;
          Length = ot::Data<(ot::DataLengthType)1>::GetLength(&v13);
          ot::Message::MoveOffset(v8, Length);
        }
      }
    }

    else
    {
      return 3;
    }
  }

  return FramePriority;
}

uint64_t ot::Lowpan::FragmentHeader::GetDatagramTag(ot::Lowpan::FragmentHeader *this)
{
  return *(this + 1);
}

{
  return ot::Lowpan::FragmentHeader::GetDatagramTag(this);
}

uint64_t ot::Message::SetFirstFragTimestampToNow(ot::Message *this)
{
  Now = ot::TimerMilli::GetNow(this);
  return ot::Message::SetFirstFragTimestamp(this, Now);
}

{
  return ot::Message::SetFirstFragTimestampToNow(this);
}

BOOL ot::MeshForwarder::ClearReassemblyList(ot::MeshForwarder *this)
{
  v10 = this;
  v9 = (this + 40);
  v8[0] = ot::MessageQueue::begin((this + 40));
  v8[1] = v1;
  v7[0] = ot::MessageQueue::end(v9);
  v7[1] = v2;
  while (1)
  {
    result = ot::ItemPtrIterator<ot::Message,ot::Message::Iterator>::operator!=(v8, v7);
    if (!result)
    {
      break;
    }

    v6 = ot::ItemPtrIterator<ot::Message,ot::Message::Iterator>::operator*(v8);
    ot::MeshForwarder::LogMessage(this, 4u, v6, 18);
    if (!ot::Message::GetType(v6))
    {
      ++*(this + 37);
      ++*(this + 51);
    }

    ot::MessageQueue::DequeueAndFree((this + 40), v6);
    ot::ItemPtrIterator<ot::Message,ot::Message::Iterator>::operator++(v8, v4);
  }

  return result;
}

uint64_t ot::Message::WriteData<(ot::DataLengthType)1>(ot::Message *a1, unsigned __int16 a2, uint64_t a3)
{
  Bytes = ot::Data<(ot::DataLengthType)1>::GetBytes(a3);
  Length = ot::Data<(ot::DataLengthType)1>::GetLength(a3);
  return ot::Message::WriteBytes(a1, a2, Bytes, Length);
}

{
  return ot::Message::WriteData<(ot::DataLengthType)1>(a1, a2, a3);
}

uint64_t ot::ThreadLinkInfo::GetRss(ot::ThreadLinkInfo *this)
{
  return *(this + 3);
}

{
  return ot::ThreadLinkInfo::GetRss(this);
}

uint64_t ot::ThreadLinkInfo::GetLqi(ot::ThreadLinkInfo *this)
{
  return *(this + 4);
}

{
  return ot::ThreadLinkInfo::GetLqi(this);
}

void ot::MeshForwarder::LogFragmentFrame(uint64_t a1, int a2, unsigned __int16 a3, ot::Mac::Address *a4, ot::Lowpan::FragmentHeader *a5, char a6, const char *a7)
{
  v29 = a1;
  v28 = a2;
  v27 = a3;
  v26 = a4;
  v25 = a5;
  v24 = a6;
  v23 = a7;
  v15 = a3;
  v14[10] = v31;
  ot::Mac::Address::ToString(a4, v31);
  v16 = ot::String<(unsigned short)17>::AsCString(v31);
  v14[11] = v30;
  ot::Mac::Address::ToString((v26 + 10), v30);
  v17 = ot::String<(unsigned short)17>::AsCString(v30);
  DatagramTag = ot::Lowpan::FragmentHeader::GetDatagramTag(v25);
  DatagramOffset = ot::Lowpan::FragmentHeader::GetDatagramOffset(v25);
  DatagramSize = ot::Lowpan::FragmentHeader::GetDatagramSize(v25);
  v21 = ot::ErrorToString(v28);
  v7 = ot::ToYesNo((v24 & 1));
  v22 = v14;
  ot::Logger::LogAtLevel<(ot::LogLevel)3>("MeshForwarder", "rx frag frame, len:%d, src:%s, dst:%s, tag:%d, offset:%d, dglen:%d, error:%s, sec:%s%s", v8, v9, v10, v11, v12, v13, v15, v16, v17, DatagramTag, DatagramOffset, DatagramSize, v21, v7, v23);
}

uint64_t ot::ThreadLinkInfo::IsLinkSecurityEnabled(ot::ThreadLinkInfo *this)
{
  return *(this + 5) & 1;
}

{
  return ot::ThreadLinkInfo::IsLinkSecurityEnabled(this);
}

uint64_t ot::MeshForwarder::HandleDatagram(ot::MeshForwarder *this, ot::Message *a2, const ot::Mac::Address *a3)
{
  v14 = this;
  v13 = a2;
  v12 = a3;
  v3 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Utils::HistoryTracker>(this);
  ot::Utils::HistoryTracker::RecordRxMessage(v3, v13, v12);
  ot::MeshForwarder::LogMessage(this, 0, v13, 0, v12);
  if (!ot::Message::GetType(v13))
  {
    ++*(this + 35);
    ++*(this + 49);
    v4 = ot::GetProvider<ot::InstanceLocator>::Get<ot::NeighborTable>(this);
    Neighbor = ot::NeighborTable::FindNeighbor(v4, v12, 5);
    if (Neighbor)
    {
      TriggerBasedStatsInfo = ot::Neighbor::GetTriggerBasedStatsInfo(Neighbor);
      ++*(TriggerBasedStatsInfo + 12);
    }
  }

  ot::Message::SetLoopbackToHostAllowed(v13, 1);
  ot::Message::SetOrigin(v13, 0);
  v7 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Ip6::Ip6>(this);
  ot::OwnedPtr<ot::Message>::OwnedPtr(&v10, v13);
  v8 = ot::Ip6::Ip6::HandleDatagram(v7, &v10, 0);
  ot::OwnedPtr<ot::Message>::~OwnedPtr(&v10);
  return v8;
}

uint64_t ot::MeshForwarder::RxInfo::GetSrcAddr(ot::MeshForwarder::RxInfo *this)
{
  return this + 40;
}

{
  return ot::MeshForwarder::RxInfo::GetSrcAddr(this);
}

void ot::MeshForwarder::LogFragmentFrameDrop(uint64_t a1, int a2, ot::MeshForwarder::RxInfo *a3, ot::Lowpan::FragmentHeader *a4)
{
  v11 = ot::ErrorToString(a2);
  ot::MeshForwarder::RxInfo::ToString(a3, v17);
  v12 = ot::String<(unsigned short)70>::AsCString(v17);
  DatagramTag = ot::Lowpan::FragmentHeader::GetDatagramTag(a4);
  DatagramOffset = ot::Lowpan::FragmentHeader::GetDatagramOffset(a4);
  DatagramSize = ot::Lowpan::FragmentHeader::GetDatagramSize(a4);
  ot::Logger::LogAtLevel<(ot::LogLevel)3>("MeshForwarder", "Dropping rx frag frame, error:%s, %s, tag:%d, offset:%d, dglen:%d", v5, v6, v7, v8, v9, v10, v11, v12, DatagramTag, DatagramOffset, DatagramSize);
}

uint64_t ot::MeshForwarder::HandleTimeTick(ot::MeshForwarder *this)
{
  v5 = ot::MeshForwarder::FragmentPriorityList::UpdateOnTimeTick((this + 248));
  result = ot::MeshForwarder::UpdateReassemblyList(this);
  v4 = 1;
  if ((result & 1) == 0)
  {
    v4 = v5;
  }

  if ((v4 & 1) == 0)
  {
    v2 = ot::GetProvider<ot::InstanceLocator>::Get<ot::TimeTicker>(this);
    return ot::TimeTicker::UnregisterReceiver(v2, 0);
  }

  return result;
}

BOOL ot::MeshForwarder::UpdateReassemblyList(ot::MeshForwarder *this)
{
  v29 = this;
  Now = ot::TimerMilli::GetNow(this);
  v27[2] = this + 40;
  v27[0] = ot::MessageQueue::begin((this + 40));
  v27[1] = v1;
  v26[0] = ot::MessageQueue::end((this + 40));
  v26[1] = v2;
  while (ot::ItemPtrIterator<ot::Message,ot::Message::Iterator>::operator!=(v27, v26))
  {
    v25 = ot::ItemPtrIterator<ot::Message,ot::Message::Iterator>::operator*(v27);
    Timestamp = ot::Message::GetTimestamp(v25);
    v21 = ot::Time::operator-(&Now, &Timestamp);
    if (v21 >= ot::Time::SecToMsec(3))
    {
      ot::MeshForwarder::LogMessage(this, 4u, v25, 30);
      if (!ot::Message::GetType(v25))
      {
        ++*(this + 37);
        ++*(this + 51);
      }

      ot::MessageQueue::DequeueAndFree((this + 40), v25);
    }

    else
    {
      v23 = ot::Message::GetTimestamp(v25);
      v20 = ot::Time::operator-(&Now, &v23);
      v3 = ot::Time::SecToMsec(1);
      if (v20 >= v3)
      {
        ot::Logger::LogAtLevel<(ot::LogLevel)5>("MeshForwarder", "SendDataPoll before reassembly timer expires", v5, v6, v7, v8, v9, v10);
        v11 = ot::GetProvider<ot::InstanceLocator>::Get<ot::DataPollSender>(this);
        ot::DataPollSender::SendDataPoll(v11, v12, v13, v14, v15, v16, v17, v18);
        IgnoreError();
      }
    }

    ot::ItemPtrIterator<ot::Message,ot::Message::Iterator>::operator++(v27, v4);
  }

  return ot::MessageQueue::GetHead((this + 40)) != 0;
}

uint64_t ot::MeshForwarder::GetFramePriority(ot::InstanceLocator *a1, uint64_t a2, _BYTE *a3)
{
  v18 = ot::MeshForwarder::RxInfo::ParseIp6Headers(a2);
  if (!v18)
  {
    ot::Ip6::Headers::GetIp6Header((a2 + 64));
    Dscp = ot::Ip6::Header::GetDscp(v3, v4);
    *a3 = ot::Ip6::Ip6::DscpToPriority(Dscp);
    if (ot::Ip6::Headers::IsIcmp6((a2 + 64)))
    {
      IcmpHeader = ot::Ip6::Headers::GetIcmpHeader((a2 + 64));
      if (ot::Ip6::Icmp::Header::IsError(IcmpHeader))
      {
        *a3 = 3;
      }
    }

    if (ot::Ip6::Headers::IsUdp((a2 + 64)))
    {
      UdpHeader = ot::Ip6::Headers::GetUdpHeader((a2 + 64));
      DestinationPort = ot::Ip6::Udp::Header::GetDestinationPort(UdpHeader, v8);
      if (DestinationPort == 19788)
      {
        *a3 = 3;
      }

      else
      {
        v15 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Tmf::Agent>(a1);
        SourceAddress = ot::Ip6::Headers::GetSourceAddress((a2 + 64));
        DestinationAddress = ot::Ip6::Headers::GetDestinationAddress((a2 + 64));
        if (ot::Tmf::Agent::IsTmfMessage(v15, SourceAddress, DestinationAddress, DestinationPort))
        {
          ot::Ip6::Headers::GetIp6Header((a2 + 64));
          v12 = ot::Ip6::Header::GetDscp(v10, v11);
          *a3 = ot::Tmf::Agent::DscpToPriority(v12);
        }
      }
    }
  }

  return v18;
}

uint64_t ot::Message::AppendData<(ot::DataLengthType)1>(ot::Message *a1, uint64_t a2)
{
  Bytes = ot::Data<(ot::DataLengthType)1>::GetBytes(a2);
  Length = ot::Data<(ot::DataLengthType)1>::GetLength(a2);
  return ot::Message::AppendBytes(a1, Bytes, Length);
}

{
  return ot::Message::AppendData<(ot::DataLengthType)1>(a1, a2);
}

void ot::MeshForwarder::LogLowpanHcFrameDrop(uint64_t a1, int a2, ot::MeshForwarder::RxInfo *a3)
{
  v14 = a1;
  v13 = a2;
  v12 = a3;
  v11 = ot::ErrorToString(a2);
  v10 = v15;
  ot::MeshForwarder::RxInfo::ToString(v12, v15);
  v3 = ot::String<(unsigned short)70>::AsCString(v15);
  ot::Logger::LogAtLevel<(ot::LogLevel)3>("MeshForwarder", "Dropping rx lowpan HC frame, error:%s, %s", v4, v5, v6, v7, v8, v9, v11, v3);
}

uint64_t ot::Utils::HistoryTracker::RecordRxMessage(ot::Utils::HistoryTracker *this, const ot::Message *a2, const ot::Mac::Address *a3)
{
  return ot::Utils::HistoryTracker::RecordMessage(this, a2, a3, 0);
}

{
  return ot::Utils::HistoryTracker::RecordRxMessage(this, a2, a3);
}

uint64_t ot::Ip6::Headers::GetUdpHeader(ot::Ip6::Headers *this)
{
  return this + 40;
}

{
  return ot::Ip6::Headers::GetUdpHeader(this);
}

BOOL ot::ChildTable::Contains(ot::ChildTable *this, const ot::Neighbor *a2)
{
  v3 = 0;
  if ((this + 8) <= a2)
  {
    return a2 < ot::GetArrayEnd<ot::Child,(unsigned short)64>(this + 8);
  }

  return v3;
}

{
  return ot::ChildTable::Contains(this, a2);
}

BOOL ot::Neighbor::IsEnhAckProbingActive(ot::Neighbor *this)
{
  v2 = 1;
  if ((*(this + 64) & 2) == 0)
  {
    v2 = 1;
    if ((*(this + 64) & 4) == 0)
    {
      return (*(this + 64) & 8) != 0;
    }
  }

  return v2;
}

{
  return ot::Neighbor::IsEnhAckProbingActive(this);
}

char *ot::MeshForwarder::MessageActionToString(uint64_t a1, unsigned __int8 a2, int a3)
{
  v4 = ot::MeshForwarder::MessageActionToString(ot::MeshForwarder::MessageAction,otError)::kMessageActionStrings[a2];
  if (a3)
  {
    return ot::MeshForwarder::MessageActionToString(ot::MeshForwarder::MessageAction,otError)::kMessageFailedActionStrings[a2];
  }

  return v4;
}

uint64_t ot::MeshForwarder::LogIp6SourceDestAddresses(uint64_t a1, ot::Ip6::Headers *a2, uint64_t a3, const char *a4)
{
  SourcePort = ot::Ip6::Headers::GetSourcePort(a2);
  DestinationPort = ot::Ip6::Headers::GetDestinationPort(a2);
  if (SourcePort)
  {
    __str = &a4[strlen(a4)];
    __size = 2048 - strlen(a4);
    SourceAddress = ot::Ip6::Headers::GetSourceAddress(a2);
    ot::Ip6::Address::ToString(v28, SourceAddress);
    v5 = ot::String<(unsigned short)40>::AsCString(v28);
    snprintf(__str, __size, " src:[%s]:%d", v5, SourcePort);
  }

  else
  {
    v18 = &a4[strlen(a4)];
    v17 = 2048 - strlen(a4);
    v6 = ot::Ip6::Headers::GetSourceAddress(a2);
    ot::Ip6::Address::ToString(v27, v6);
    v7 = ot::String<(unsigned short)40>::AsCString(v27);
    snprintf(v18, v17, " src:[%s]", v7);
  }

  if (DestinationPort)
  {
    v16 = &a4[strlen(a4)];
    v15 = 2048 - strlen(a4);
    DestinationAddress = ot::Ip6::Headers::GetDestinationAddress(a2);
    ot::Ip6::Address::ToString(v26, DestinationAddress);
    v9 = ot::String<(unsigned short)40>::AsCString(v26);
    return snprintf(v16, v15, " dst:[%s]:%d", v9, DestinationPort);
  }

  else
  {
    v14 = &a4[strlen(a4)];
    v13 = 2048 - strlen(a4);
    v11 = ot::Ip6::Headers::GetDestinationAddress(a2);
    ot::Ip6::Address::ToString(v25, v11);
    v12 = ot::String<(unsigned short)40>::AsCString(v25);
    return snprintf(v14, v13, " dst:[%s]", v12);
  }
}

uint64_t ot::MeshForwarder::GetIp6SourceDestAddresses(ot::MeshForwarder *this, const ot::Ip6::Headers *a2, const ot::Mac::Address *a3, char *a4, uint64_t a5)
{
  v32 = this;
  v31 = a2;
  v30 = a3;
  v29 = a4;
  v28 = a5;
  SourcePort = ot::Ip6::Headers::GetSourcePort(a2);
  DestinationPort = ot::Ip6::Headers::GetDestinationPort(v31);
  v25 = 0;
  Neighbor = 0;
  if (v30)
  {
    v5 = ot::GetProvider<ot::InstanceLocator>::Get<ot::NeighborTable>(this);
    Neighbor = ot::NeighborTable::FindNeighbor(v5, v30, 7);
  }

  SourceAddress = ot::Ip6::Headers::GetSourceAddress(v31);
  if (SourcePort)
  {
    ot::Ip6::Address::ToString(v37, SourceAddress);
    v7 = ot::String<(unsigned short)40>::AsCString(v37);
    v25 += snprintf(&v29[v25], v28 - v25, " src=[%s]:%d,", v7, SourcePort);
  }

  else
  {
    ot::Ip6::Address::ToString(v36, SourceAddress);
    v8 = ot::String<(unsigned short)40>::AsCString(v36);
    v25 += snprintf(&v29[v25], v28 - v25, " src=[%s],", v8);
  }

  DestinationAddress = ot::Ip6::Headers::GetDestinationAddress(v31);
  if (DestinationPort)
  {
    ot::Ip6::Address::ToString(v35, DestinationAddress);
    v10 = ot::String<(unsigned short)40>::AsCString(v35);
    v25 += snprintf(&v29[v25], v28 - v25, " dst=[%s]:%d,", v10, DestinationPort);
  }

  else
  {
    ot::Ip6::Address::ToString(v34, DestinationAddress);
    v11 = ot::String<(unsigned short)40>::AsCString(v34);
    v25 += snprintf(&v29[v25], v28 - v25, " dst=[%s],", v11);
  }

  if (Neighbor)
  {
    v20 = &v29[v25];
    v19 = v28 - v25;
    ot::Neighbor::GetExtAddress(Neighbor);
    ot::Mac::ExtAddress::ToString(v12, v33);
    v17 = ot::String<(unsigned short)17>::AsCString(v33);
    Rloc16 = ot::Neighbor::GetRloc16(Neighbor);
    v18 = Rloc16;
    Now = ot::TimerMilli::GetNow(Rloc16);
    LastHeard = ot::Neighbor::GetLastHeard(Neighbor);
    v14 = ot::Time::operator-(&Now, &LastHeard);
    v15 = ot::Time::MsecToSec(v14);
    result = snprintf(v20, v19, " nbr_ext=%s, nbr_rloc=0x%04x, nbr_age=%d", v17, v18, v15);
  }

  else
  {
    result = snprintf(&v29[v25], v28 - v25, " nbr_ext=nil, nbr_rloc=nil, nbr_age=nil");
  }

  v25 += result;
  return result;
}

void ot::MeshForwarder::LogIp6Message(ot::MeshForwarder *a1, unsigned __int8 a2, ot::Message *a3, ot::Mac::Address *a4, int a5, unsigned __int8 a6)
{
  v111 = a1;
  v110 = a2;
  v109 = a3;
  v108 = a4;
  v107 = a5;
  v106 = a6;
  v81 = a1;
  v104 = 0;
  v103 = 0;
  v82 = "";
  v102 = "";
  v101 = 0;
  strcpy(__format, ", offset=%hu, tag=%u");
  v100 = 5;
  *__str = 0;
  v118 = 0;
  v119[0] = 0;
  *(v119 + 7) = 0;
  memset(__b, 0, sizeof(__b));
  IsAppPacket = 0;
  bzero(v115, 0x400uLL);
  v98 = 1500;
  bzero(v114, 0x5DCuLL);
  std::string::basic_string[abi:dn200100]<0>(&v97, "");
  std::string::basic_string[abi:dn200100]<0>(&v96, "");
  std::string::basic_string[abi:dn200100]<0>(&v95, "");
  Timestamp = ot::Message::GetTimestamp(v109);
  if (ot::Time::GetValue(&Timestamp) > 0)
  {
    v91 = ot::Message::GetTimestamp(v109);
    Value = ot::Time::GetValue(&v91);
    TxDelayStats = ot::MeshForwarder::GetTxDelayStats(v81, Value);
    v78 = &v92;
    std::to_string(&v92, TxDelayStats);
    v77 = &v93;
    std::operator+[abi:dn200100]<char,std::char_traits<char>,std::allocator<char>>(", txdelay=", &v92, &v93);
    std::string::operator=[abi:dn200100](&v97, &v93);
    std::string::~string(&v93);
    std::string::~string(&v92);
    v88 = ot::Message::GetTimestamp(v109);
    v8 = ot::Time::GetValue(&v88);
    v9 = ot::MeshForwarder::GetTxDelayStats(v81, v8);
    v80 = &v89;
    std::to_string(&v89, v9);
    v79 = &v90;
    std::operator+[abi:dn200100]<char,std::char_traits<char>,std::allocator<char>>(", rxdelayprevfrag=", &v89, &v90);
    std::string::operator=[abi:dn200100](&v96, &v90);
    std::string::~string(&v90);
    std::string::~string(&v89);
  }

  FirstFragTimestamp = ot::Message::GetFirstFragTimestamp(v109);
  if (ot::Time::GetValue(&FirstFragTimestamp) > 0)
  {
    v84 = ot::Message::GetTimestamp(v109);
    v74 = ot::Time::GetValue(&v84);
    v83 = ot::Message::GetFirstFragTimestamp(v109);
    v10 = ot::Time::GetValue(&v83);
    v76 = &v85;
    std::to_string(&v85, v74 - v10);
    v75 = &v86;
    std::operator+[abi:dn200100]<char,std::char_traits<char>,std::allocator<char>>(", rxdelayfirstfrag=", &v85, &v86);
    std::string::operator=[abi:dn200100](&v95, &v86);
    std::string::~string(&v86);
    std::string::~string(&v85);
  }

  if (!ot::Ip6::Headers::ParseFrom(v105, v109))
  {
    v11 = ot::GetProvider<ot::InstanceLocator>::Get<ot::AppMetricsManager>(v81);
    IsAppPacket = ot::AppMetricsManager::IsAppPacket(v11, v109, v105, 0);
    if (IsAppPacket)
    {
      v12 = ot::GetProvider<ot::InstanceLocator>::Get<ot::AppMetricsManager>(v81);
      ot::AppMetricsManager::GetAppHeaderString(v12, v105, __b);
      if (!v110 || v110 == 4)
      {
        v73 = ot::GetProvider<ot::InstanceLocator>::Get<ot::AppMetricsManager>(v81);
        v72 = v109;
        HopsLft = ot::Message::GetHopsLft(v109);
        ot::AppMetricsManager::CountAppDuplicates(v73, v72, v105, 1, HopsLft);
      }

      if (v110 == 1)
      {
        v14 = ot::GetProvider<ot::InstanceLocator>::Get<ot::AppMetricsManager>(v81);
        ot::AppMetricsManager::UpdateMatterSubscriptionInfoMap(v14, v109, v105, v108);
      }
    }

    if (v110 == 4)
    {
      v15 = ot::GetProvider<ot::InstanceLocator>::Get<ot::AppMetricsManager>(v81);
      ot::AppMetricsManager::UpdateSystemWideThreadRXReachabilityStatusLastTimestamp(v15, 30, v105);
    }

    v16 = ot::GetProvider<ot::InstanceLocator>::Get<ot::MessagePool>(v81);
    if (ot::MessagePool::GetIsBufferStatsEnabled(v16))
    {
      ot::Message::GetBufferIDs(v109, v115);
    }

    v71 = 1;
    if (v110)
    {
      v71 = v110 == 4;
    }

    v104 = v71;
    v70 = 1;
    if (v110 != 4)
    {
      v70 = v110 == 0;
    }

    v101 = v70;
    if (v70)
    {
      Offset = ot::Message::GetOffset(v109);
      DatagramTag = ot::Message::GetDatagramTag(v109);
      snprintf(__str, 0x1FuLL, __format, Offset, DatagramTag);
    }

    if (v110 == 2)
    {
      v114[0] = 0;
    }

    else
    {
      ot::MeshForwarder::GetIp6SourceDestAddresses(v81, v105, v108, v114, 1500);
    }

    v62 = v106;
    v63 = ot::MeshForwarder::MessageActionToString(v81, v110, v107);
    v66 = v105;
    IpProto = ot::Ip6::Headers::GetIpProto(v105);
    v64 = ot::Ip6::Ip6::IpProtoToString(IpProto, v19, v20, v21, v22, v23);
    Length = ot::Message::GetLength(v109);
    Checksum = ot::Ip6::Headers::GetChecksum(v105);
    Ecn = ot::Ip6::Headers::GetEcn(v105);
    v68 = ot::Ip6::Ip6::EcnToString(Ecn);
    if (v108)
    {
      v25 = ", from=";
      if (v110)
      {
        v25 = ", to=";
      }

      v61 = v25;
    }

    else
    {
      v61 = "";
    }

    v60 = v61;
    if (v108)
    {
      v58 = v113;
      ot::Mac::Address::ToString(v108, v113);
      v59 = ot::String<(unsigned short)17>::AsCString(v113);
    }

    else
    {
      v59 = "";
    }

    v55 = v59;
    IsLinkSecurityEnabled = ot::Message::IsLinkSecurityEnabled(v109);
    v56 = ot::ToYesNo(IsLinkSecurityEnabled);
    v27 = "";
    if (v107)
    {
      v27 = ", error=";
    }

    v57 = v27;
    if (v107)
    {
      v54 = ot::ErrorToString(v107);
    }

    else
    {
      v54 = "";
    }

    v51 = v54;
    v52 = ot::MeshForwarder::MessagePriorityToString(v81, v109);
    v28 = ", rss=";
    if (!v104)
    {
      v28 = "";
    }

    v53 = v28;
    if (v104)
    {
      RssAverager = ot::Message::GetRssAverager(v109);
      v49 = v112;
      ot::RssAverager::ToString(RssAverager, v112);
      v50 = ot::String<(unsigned short)10>::AsCString(v112);
    }

    else
    {
      v50 = "";
    }

    v45 = v50;
    v30 = ", radio=";
    if ((v103 & 1) == 0)
    {
      v30 = "";
    }

    v46 = v30;
    v47 = v102;
    ot::Ip6::Headers::GetIp6Header(v105);
    HopLimit = ot::Ip6::Header::GetHopLimit(v31);
    if (v101)
    {
      v44 = __str;
    }

    else
    {
      v44 = "";
    }

    v42 = v44;
    v32 = ot::GetProvider<ot::InstanceLocator>::Get<ot::MessagePool>(v81);
    FreeBufferCount = ot::MessagePool::GetFreeBufferCount(v32);
    if (v110 && v110 != 4)
    {
      std::string::c_str[abi:dn200100](&v97);
      v41 = v34;
    }

    else
    {
      std::string::c_str[abi:dn200100](&v96);
      v41 = v33;
    }

    v40 = v41;
    if (v110 && v110 != 4)
    {
      v39 = "";
    }

    else
    {
      std::string::c_str[abi:dn200100](&v95);
      v39 = v35;
    }

    v38 = v39;
    if (IsAppPacket)
    {
      v37 = __b;
    }

    else
    {
      v37 = "";
    }

    v36[23] = v36;
    ot::Logger::LogInModule("MeshForwarder", v62, "ITMD: %s IPv6 %s msg,%s, len=%d, chksum=%04x, ecn=%s%s%s, sec=%s%s%s, prio=%s%s%s%s%s, hlim=%u%s, free_buf=%d%s%s%s", v63, v64, v114, Length, Checksum, v68, v60, v55, v56, v57, v51, v52, v53, v45, v46, v47, HopLimit, v42, FreeBufferCount, v40, v38, v37);
  }

  std::string::~string(&v95);
  std::string::~string(&v96);
  std::string::~string(&v97);
}

uint64_t ot::Message::GetFirstFragTimestamp(ot::Message *this)
{
  return *(ot::Buffer::GetMetadata(this) + 40);
}

{
  return ot::Message::GetFirstFragTimestamp(this);
}

uint64_t ot::Ip6::Headers::GetEcn(ot::Ip6::Headers *this)
{
  return ot::Ip6::Header::GetEcn(this);
}

{
  return ot::Ip6::Headers::GetEcn(this);
}

ot::StringWriter *ot::MeshForwarder::RxInfo::ToString@<X0>(ot::MeshForwarder::RxInfo *this@<X0>, ot::StringWriter *a2@<X8>)
{
  ot::String<(unsigned short)70>::String(a2);
  Length = ot::Data<(ot::DataLengthType)1>::GetLength(this);
  SrcAddr = ot::MeshForwarder::RxInfo::GetSrcAddr(this);
  ot::Mac::Address::ToString(SrcAddr, v13);
  v9 = ot::String<(unsigned short)17>::AsCString(v13);
  DstAddr = ot::MeshForwarder::RxInfo::GetDstAddr(this);
  ot::Mac::Address::ToString(DstAddr, v12);
  v10 = ot::String<(unsigned short)17>::AsCString(v12);
  IsLinkSecurityEnabled = ot::MeshForwarder::RxInfo::IsLinkSecurityEnabled(this);
  v5 = ot::ToYesNo(IsLinkSecurityEnabled);
  return ot::StringWriter::Append(a2, "len:%d, src:%s, dst:%s, sec:%s", Length, v9, v10, v5);
}

uint64_t ot::String<(unsigned short)70>::AsCString(uint64_t a1)
{
  return a1 + 12;
}

{
  return ot::String<(unsigned short)70>::AsCString(a1);
}

uint64_t ot::String<(unsigned short)70>::String(uint64_t a1)
{
  ot::String<(unsigned short)70>::String(a1);
  return a1;
}

{
  ot::StringWriter::StringWriter(a1, (a1 + 12), 70);
  return a1;
}

uint64_t ot::MeshForwarder::RxInfo::GetDstAddr(ot::MeshForwarder::RxInfo *this)
{
  return this + 50;
}

{
  return ot::MeshForwarder::RxInfo::GetDstAddr(this);
}

uint64_t ot::Message::SetFirstFragTimestamp(ot::Buffer *a1, int a2)
{
  result = ot::Buffer::GetMetadata(a1);
  *(result + 40) = a2;
  return result;
}

{
  return ot::Message::SetFirstFragTimestamp(a1, a2);
}

uint64_t ot::GetArrayEnd<ot::Child,(unsigned short)64>(uint64_t a1)
{
  return a1 + 29696;
}

{
  return ot::GetArrayEnd<ot::Child,(unsigned short)64>(a1);
}

void *ot::ClearAllBytes<ot::MeshForwarder::FragmentPriorityList>(void *a1)
{
  return memset(a1, 0, 0x30uLL);
}

{
  return ot::ClearAllBytes<ot::MeshForwarder::FragmentPriorityList>(a1);
}

uint64_t std::string::basic_string[abi:dn200100](uint64_t a1, _OWORD *a2)
{
  std::string::basic_string[abi:dn200100](a1, a2);
  return a1;
}

{
  v8 = a1;
  v7 = a2;
  v9 = a1;
  v2 = std::string::basic_string[abi:dn200100](std::string&&)::{lambda(std::string&)#1}::operator()(&v6, a2);
  *a1 = *v2;
  *(a1 + 16) = *(v2 + 16);
  v3 = v7;
  *v7 = 0uLL;
  *(v3 + 2) = 0;
  std::string::__annotate_shrink[abi:dn200100]();
  if (!std::string::__is_long[abi:dn200100](a1))
  {
    std::string::size[abi:dn200100](a1);
    std::string::__annotate_shrink[abi:dn200100]();
  }

  return v9;
}

uint64_t std::string::basic_string[abi:dn200100](std::string&&)::{lambda(std::string&)#1}::operator()(uint64_t a1, uint64_t a2)
{
  if (!std::string::__is_long[abi:dn200100](a2))
  {
    std::string::__annotate_delete[abi:dn200100]();
  }

  return a2;
}

char *ot::BinarySearch::Find(ot::BinarySearch *this, char *a2, const void *a3, unsigned __int16 a4, uint64_t (*a5)(ot::BinarySearch *, char *), int (*a6)(const void *, const void *))
{
  v10 = 0;
  v9 = a3;
  while (v10 < v9)
  {
    v8 = (v10 + v9) / 2;
    v11 = &a2[a4 * v8];
    v7 = a5(this, v11);
    if (!v7)
    {
      return v11;
    }

    if (v7 <= 0)
    {
      v9 = (v10 + v9) / 2;
    }

    else
    {
      v10 = v8 + 1;
    }
  }

  return 0;
}

void ot::MeshForwarder::SendMessage(ot::MeshForwarder *a1, uint64_t *a2)
{
  v83 = a2;
  v114 = a1;
  v113 = a2;
  v84 = a1;
  v112 = ot::OwnedPtr<ot::Message>::Release(a2);
  v85 = 0;
  ot::Message::SetOffset(v112, 0);
  ot::Message::SetDatagramTag(v112, 0);
  ot::Message::SetTimestampToNow(v112);
  UriPathOptions = 0;
  v110 = -3905;
  Length = ot::Message::GetLength(v112);
  v109 = Length;
  v87 = Length;
  v108[15] = v62;
  v86 = (Length + 15) & 0x1FFF0;
  __chkstk_darwin(Length);
  v88 = &v62[-v86];
  v108[14] = v87;
  v121[32] = v3;
  memset(v121, 0, 32);
  if (!ot::Message::GetType(v112))
  {
    UriPathOptions = ot::Ip6::Headers::ParseFrom(v108, v112);
    if (UriPathOptions)
    {
      v4 = ot::ErrorToString(UriPathOptions);
      ot::Logger::LogAtLevel<(ot::LogLevel)5>("MeshForwarder", "Failed to parse Ip6::Headers, error = %s", v5, v6, v7, v8, v9, v10, v4);
      v107 = 1;
      return;
    }

    if (ot::Ip6::Headers::IsUdp(v108) && ot::Ip6::Headers::GetDestinationPort(v108) == 61631 && ot::Ip6::Headers::GetSourcePort(v108) == 61631)
    {
      v106 = 594;
      Bytes = ot::Message::ReadBytes(v112, 0, v88, v87);
      v79 = Bytes;
      v80 = v108;
      UdpHeader = ot::Ip6::Headers::GetUdpHeader(v108);
      v13 = ot::Ip6::Udp::Header::GetLength(UdpHeader, v12);
      v104 = v79 - v13 + 8;
      v82 = v104;
      v81 = Bytes;
      v14 = ot::Ip6::Headers::GetUdpHeader(v80);
      v16 = ot::Ip6::Udp::Header::GetLength(v14, v15);
      ot::Logger::LogAtLevel<(ot::LogLevel)5>("MeshForwarder", "MeshForwarder::%s:coapOffset = %d, raw totalBytes = %d, Udp total packet Length = %d, udp header size = %lu", v17, v18, v19, v20, v21, v22, "SendMessage", v82, v81, v16, 8);
      if (v88[v104] == v106 && v88[v104 + 1] == HIBYTE(v106))
      {
        v103 = 0;
        v78 = v112;
        v23 = ot::Message::GetLength(v112);
        v103 = ot::Message::Clone(v78, v23);
        if (!v103)
        {
          UriPathOptions = 3;
          ot::Logger::LogAtLevel<(ot::LogLevel)2>("MeshForwarder", "MeshForwarder::%s[BMLR]:Message Clone failed, error = %d", v24, v25, v26, v27, v28, v29, "SendMessage", 3);
          v107 = 1;
          return;
        }

        v102 = v103;
        ot::Message::RemoveHeader(v103, v104);
        if (ot::Coap::Message::ParseHeader(v102))
        {
          ot::Logger::LogAtLevel<(ot::LogLevel)2>("MeshForwarder", "MeshForwarder::%s[BMLR]:Failed to parse CoAP header, error = %d", v30, v31, v32, v33, v34, v35, "SendMessage", UriPathOptions);
          ot::Message::Free(v103);
          v107 = 1;
          return;
        }

        UriPathOptions = ot::Coap::Message::ReadUriPathOptions(v102, v121);
        if (!UriPathOptions)
        {
          v101 = ot::UriFromPath(v121, v36, v37, v38, v39, v40);
          if (v101 == 8)
          {
            v75 = v109;
            v70 = v108;
            SourceAddress = ot::Ip6::Headers::GetSourceAddress(v108);
            v69 = v120;
            ot::Ip6::Address::ToString(v120, SourceAddress);
            v76 = ot::String<(unsigned short)40>::AsCString(v69);
            DestinationAddress = ot::Ip6::Headers::GetDestinationAddress(v70);
            v71 = v119;
            ot::Ip6::Address::ToString(v119, DestinationAddress);
            v74 = ot::String<(unsigned short)40>::AsCString(v71);
            IsNonConfirmablePostRequest = ot::Coap::Message::IsNonConfirmablePostRequest(v102);
            v72 = ot::Message::GetLength(v102);
            MessageId = ot::Coap::Message::GetMessageId(v102);
            v77 = &v61;
            ot::Logger::LogAtLevel<(ot::LogLevel)4>("MeshForwarder", "MeshForwarder::%s[BMLR]: Ipv6 rawFrameLength = %d, src[%s] => dst[%s], coap NonConfirmablePost = %d, MessageLength=%d, URI= %s, coapMessageId = %d", v72, MessageId, v44, v45, v46, v47, "SendMessage", v75, v76, v74, IsNonConfirmablePostRequest, v72, v121, MessageId);
            ot::Message::Free(v103);
            platformSendPacketToBackBone(v88, v109);
            v107 = 1;
            return;
          }
        }

        ot::Message::Free(v103);
      }
    }
  }

  ot::PriorityQueue::Enqueue((v84 + 8), v112);
  Type = ot::Message::GetType(v112);
  if (Type)
  {
    if (Type == 2)
    {
      v60 = ot::GetProvider<ot::InstanceLocator>::Get<ot::ChildSupervisor>(v84);
      Destination = ot::ChildSupervisor::GetDestination(v60, v112);
      v63 = 0;
      if (Destination)
      {
        v63 = !ot::Neighbor::IsRxOnWhenIdle(Destination);
      }

      if (!v63)
      {
        __assert_rtn("SendMessage", "mesh_forwarder_ftd.cpp", 203, "(child != nullptr) && !child->IsRxOnWhenIdle()");
      }

      ot::IndirectSender::AddMessageForSleepyChild((v84 + 296), v112, Destination);
      goto LABEL_45;
    }

    goto LABEL_19;
  }

  v67 = v100;
  v99 = ot::Ip6::Header::GetDestination(v100);
  ot::Message::Read<ot::Ip6::Header>(v112, 0, v67);
  IgnoreError();
  if (ot::Ip6::Address::IsMulticast(v99))
  {
    if (!ot::Ip6::Address::IsMulticastLargerThanRealmLocal(v99))
    {
      ot::Message::SetDirectTransmission(v112);
    }

    if (ot::Message::GetSubType(v112) != 5)
    {
      v65 = v99;
      v48 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::Mle>(v84);
      ot::Mle::Mle::GetLinkLocalAllThreadNodesAddress(v48);
      v50 = ot::Equatable<ot::Ip6::Address>::operator==(v65, v49);
      v66 = 1;
      if (!v50)
      {
        v64 = v99;
        v51 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::Mle>(v84);
        ot::Mle::Mle::GetRealmLocalAllThreadNodesAddress(v51);
        v66 = ot::Equatable<ot::Ip6::Address>::operator==(v64, v52);
      }

      v98 = v66;
      v53 = ot::GetProvider<ot::InstanceLocator>::Get<ot::ChildTable>(v84);
      v96 = ot::ChildTable::Iterate(v53, 1);
      v97 = &v96;
      v54 = ot::ChildTable::IteratorBuilder::begin(&v96);
      v118 = v55;
      v117 = v54;
      v95 = v55;
      v94 = v54;
      v56 = ot::ChildTable::IteratorBuilder::end(v97);
      v116 = v57;
      v115 = v56;
      v93 = v57;
      v92 = v56;
      while (ot::ItemPtrIterator<ot::Child,ot::ChildTable::Iterator>::operator!=(&v94, &v92))
      {
        v91 = ot::ItemPtrIterator<ot::Child,ot::ChildTable::Iterator>::operator*(&v94);
        if (!ot::Neighbor::IsRxOnWhenIdle(v91) && (v98 || ot::Child::HasIp6Address(v91, v99)))
        {
          ot::IndirectSender::AddMessageForSleepyChild((v84 + 296), v112, v91);
        }

        ot::ItemPtrIterator<ot::Child,ot::ChildTable::Iterator>::operator++(&v94);
      }
    }

    goto LABEL_45;
  }

  v58 = ot::GetProvider<ot::InstanceLocator>::Get<ot::NeighborTable>(v84);
  Neighbor = ot::NeighborTable::FindNeighbor(v58, v99, 1);
  if (!Neighbor || ot::Neighbor::IsRxOnWhenIdle(Neighbor) || (ot::Message::IsDirectTransmission(v112) & 1) != 0 || (v59 = ot::GetProvider<ot::InstanceLocator>::Get<ot::ChildTable>(v84), !ot::ChildTable::Contains(v59, Neighbor)))
  {
LABEL_19:
    ot::Message::SetDirectTransmission(v112);
    goto LABEL_45;
  }

  ot::IndirectSender::AddMessageForSleepyChild((v84 + 296), v112, Neighbor);
LABEL_45:
  if (!ot::MeshForwarder::RemoveMessageIfNoPendingTx(v84, v112))
  {
    ot::Tasklet::Post((v84 + 120));
  }
}

uint64_t ot::Ip6::Udp::Header::GetLength(ot::Ip6::Udp::Header *this, unsigned __int16 a2)
{
  return ot::BigEndian::HostSwap16(*(this + 2), a2);
}

{
  return ot::Ip6::Udp::Header::GetLength(this, a2);
}

void ot::MeshForwarder::HandleResolved(uint64_t a1, const void *a2, int a3)
{
  v23 = a1;
  v22 = a2;
  v21 = a3;
  v19 = 0;
  v18 = (a1 + 8);
  v17[0] = ot::PriorityQueue::begin((a1 + 8));
  v17[1] = v3;
  v16[0] = ot::PriorityQueue::end(v18);
  v16[1] = v4;
  while (ot::ItemPtrIterator<ot::Message,ot::Message::Iterator>::operator!=(v17, v16))
  {
    v15 = ot::ItemPtrIterator<ot::Message,ot::Message::Iterator>::operator*(v17);
    if (ot::Message::IsResolvingAddress(v15))
    {
      ot::Message::Read<ot::Ip6::Address>(v15, 0x18u, v20);
      IgnoreError();
      if (!ot::Unequatable<ot::Ip6::Address>::operator!=(v20, v22))
      {
        if (v21)
        {
          ot::MeshForwarder::LogMessage(a1, 3u, v15, 9);
          ot::MeshForwarder::FinalizeMessageDirectTx(a1, v15, 9, 0);
          ot::MeshForwarder::RemoveMessageIfNoPendingTx(a1, v15);
        }

        else
        {
          v6 = ot::GetProvider<ot::InstanceLocator>::Get<ot::BackboneRouter::Local>(a1);
          if (ot::BackboneRouter::Local::IsPrimary(v6) && (v7 = ot::GetProvider<ot::InstanceLocator>::Get<ot::BackboneRouter::Leader>(a1), ot::BackboneRouter::Leader::IsDomainUnicast(v7, v20)) && (v11 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::Mle>(a1), v8 = ot::GetProvider<ot::InstanceLocator>::Get<ot::AddressResolver>(a1), v9 = ot::AddressResolver::LookUp(v8, v20), ot::Mle::Mle::HasRloc16(v11, v9)))
          {
            v14 = 0;
            ot::PriorityQueue::Dequeue((a1 + 8), v15);
            ot::Message::Read<unsigned char>(v15, 7u, &v14);
            IgnoreError();
            ++v14;
            ot::Message::Write<unsigned char>(v15, 7u, &v14);
            ot::Message::SetLoopbackToHostAllowed(v15, 1);
            ot::Message::SetOrigin(v15, 1);
            v10 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Ip6::Ip6>(a1);
            ot::OwnedPtr<ot::Message>::OwnedPtr(&v13, v15);
            ot::Ip6::Ip6::HandleDatagram(v10, &v13, 0);
            IgnoreError();
            ot::OwnedPtr<ot::Message>::~OwnedPtr(&v13);
          }

          else
          {
            ot::Message::SetResolvingAddress(v15, 0);
            v19 = 1;
          }
        }
      }
    }

    ot::ItemPtrIterator<ot::Message,ot::Message::Iterator>::operator++(v17, v5);
  }

  if (v19)
  {
    ot::Tasklet::Post((a1 + 120));
  }
}

uint64_t ot::Message::Read<ot::Ip6::Address>(ot::Message *a1, unsigned __int16 a2, char *a3)
{
  return ot::Message::Read(a1, a2, a3, 0x10u);
}

{
  return ot::Message::Read<ot::Ip6::Address>(a1, a2, a3);
}

uint64_t ot::MeshForwarder::EvictMessage(ot::MeshForwarder *a1, char a2)
{
  v11 = 23;
  v10 = 0;
  for (i = 0; i < a2; ++i)
  {
    ot::PriorityQueue::GetHeadForPriority(a1 + 8, i);
    for (j = v2; j && ot::Message::GetPriority(j) == i; j = ot::Message::GetNext(j))
    {
      if ((ot::Message::GetDoNotEvict(j) & 1) == 0)
      {
        v10 = j;
        v11 = 0;
        goto LABEL_20;
      }
    }
  }

  for (k = a2; k < 4u; ++k)
  {
    ot::PriorityQueue::GetHeadForPriority(a1 + 8, a2);
    for (m = v3; m && ot::Message::GetPriority(m) == k; m = ot::Message::GetNext(m))
    {
      if (ot::Message::GetDoNotEvict(m) & 1) == 0 && (ot::Message::IsChildPending(m))
      {
        v10 = m;
        v11 = 0;
        goto LABEL_20;
      }
    }
  }

LABEL_20:
  if (!v11 && v10)
  {
    ot::MeshForwarder::EvictMessage(a1, v10);
  }

  return v11;
}

void ot::PriorityQueue::GetHeadForPriority(uint64_t a1, char a2)
{
  ot::AsConst<ot::PriorityQueue>();
  ot::PriorityQueue::GetHeadForPriority(v2, a2);
  ot::AsNonConst<ot::Message>();
}

{
  ot::PriorityQueue::GetHeadForPriority(a1, a2);
}

uint64_t ot::Message::GetDoNotEvict(ot::Message *this)
{
  return (*(ot::Buffer::GetMetadata(this) + 70) >> 13) & 1;
}

{
  return ot::Message::GetDoNotEvict(this);
}

BOOL ot::MeshForwarder::RemoveMessagesForChild(ot::MeshForwarder *this, ot::Child *a2, BOOL (*a3)(const ot::Message *))
{
  v21 = this;
  v20 = a2;
  v19 = a3;
  v18 = (this + 8);
  v17[0] = ot::PriorityQueue::begin((this + 8));
  v17[1] = v3;
  v16[0] = ot::PriorityQueue::end(v18);
  v16[1] = v4;
  while (1)
  {
    result = ot::ItemPtrIterator<ot::Message,ot::Message::Iterator>::operator!=(v17, v16);
    if (!result)
    {
      break;
    }

    v15 = ot::ItemPtrIterator<ot::Message,ot::Message::Iterator>::operator*(v17);
    if ((v19)(v15))
    {
      if (ot::IndirectSender::RemoveMessageFromSleepyChild((this + 296), v15, v20))
      {
        Neighbor = 0;
        if (ot::Message::GetType(v15))
        {
          if (ot::Message::GetType(v15) == 1)
          {
            ot::Lowpan::MeshHeader::ParseFrom(v12, v15);
            IgnoreError();
            v9 = ot::GetProvider<ot::InstanceLocator>::Get<ot::NeighborTable>(this);
            Destination = ot::Lowpan::MeshHeader::GetDestination(v12);
            Neighbor = ot::NeighborTable::FindNeighbor(v9, Destination, 1);
          }
        }

        else
        {
          ot::Message::Read<ot::Ip6::Header>(v15, 0, v13);
          IgnoreError();
          v10 = ot::GetProvider<ot::InstanceLocator>::Get<ot::NeighborTable>(this);
          v7 = ot::Ip6::Header::GetDestination(v13);
          Neighbor = ot::NeighborTable::FindNeighbor(v10, v7, 1);
        }

        if (v20 == Neighbor)
        {
          ot::Message::ClearDirectTransmission(v15);
        }
      }

      ot::MeshForwarder::RemoveMessageIfNoPendingTx(this, v15);
    }

    ot::ItemPtrIterator<ot::Message,ot::Message::Iterator>::operator++(v17, v6);
  }

  return result;
}

BOOL ot::MeshForwarder::RemoveDataResponseMessages(ot::MeshForwarder *this)
{
  v22 = this;
  v20 = (this + 8);
  v19[0] = ot::PriorityQueue::begin((this + 8));
  v19[1] = v1;
  v18[0] = ot::PriorityQueue::end(v20);
  v18[1] = v2;
  while (1)
  {
    result = ot::ItemPtrIterator<ot::Message,ot::Message::Iterator>::operator!=(v19, v18);
    if (!result)
    {
      break;
    }

    v17 = ot::ItemPtrIterator<ot::Message,ot::Message::Iterator>::operator*(v19);
    if (ot::Message::GetSubType(v17) == 9)
    {
      ot::Message::Read<ot::Ip6::Header>(v17, 0, v21);
      IgnoreError();
      Destination = ot::Ip6::Header::GetDestination(v21);
      if (!ot::Ip6::Address::IsMulticast(Destination))
      {
        v6 = ot::GetProvider<ot::InstanceLocator>::Get<ot::ChildTable>(this);
        v15 = ot::ChildTable::Iterate(v6, 5);
        v16 = &v15;
        v25 = ot::ChildTable::IteratorBuilder::begin(&v15);
        v26 = v7;
        v13 = v25;
        v14 = v7;
        v23 = ot::ChildTable::IteratorBuilder::end(v16);
        v24 = v8;
        v11 = v23;
        v12 = v8;
        while (ot::ItemPtrIterator<ot::Child,ot::ChildTable::Iterator>::operator!=(&v13, &v11))
        {
          v10 = ot::ItemPtrIterator<ot::Child,ot::ChildTable::Iterator>::operator*(&v13);
          ot::IndirectSender::RemoveMessageFromSleepyChild((this + 296), v17, v10);
          IgnoreError();
          ot::ItemPtrIterator<ot::Child,ot::ChildTable::Iterator>::operator++(&v13);
        }
      }

      ot::MeshForwarder::LogMessage(this, 3u, v17);
      ot::MeshForwarder::FinalizeMessageDirectTx(this, v17, 2, 0);
      ot::MeshForwarder::RemoveMessageIfNoPendingTx(this, v17);
    }

    ot::ItemPtrIterator<ot::Message,ot::Message::Iterator>::operator++(v19, v4);
  }

  return result;
}

uint64_t ot::MeshForwarder::SendMesh(ot::MeshForwarder *this, ot::Message *a2, ot::Mac::TxFrame *a3)
{
  v20 = this;
  v19 = a2;
  v18 = a3;
  v3 = ot::GetProvider<ot::InstanceLocator>::Get<ot::AppMetricsManager>(this);
  if (ot::AppMetricsManager::IsAppPacket(v3, v19, v17, 1))
  {
    v4 = ot::GetProvider<ot::InstanceLocator>::Get<ot::AppMetricsManager>(this);
    ot::AppMetricsManager::CountAppDuplicates(v4, v19, v17, 0, 0);
  }

  ot::Mac::PanIds::PanIds(v16);
  v5 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mac::Mac>(this);
  PanId = ot::Mac::Mac::GetPanId(v5);
  ot::Mac::PanIds::SetBothSourceDestination(v16, PanId);
  ot::MeshForwarder::PrepareMacHeaders(this, v18, 1, this + 64, v16, 5, 8, v19);
  Length = ot::Message::GetLength(v19);
  if (Length > ot::Mac::Frame::GetMaxPayloadLength(v18))
  {
    __assert_rtn("SendMesh", "mesh_forwarder_ftd.cpp", 455, "aMessage.GetLength() <= aFrame.GetMaxPayloadLength()");
  }

  v12 = v19;
  ot::Mac::Frame::GetPayload(v18);
  v11 = v7;
  v8 = ot::Message::GetLength(v19);
  ot::Message::ReadBytes(v12, 0, v11, v8);
  v13 = v18;
  v9 = ot::Message::GetLength(v19);
  ot::Mac::Frame::SetPayloadLength(v13, v9);
  result = ot::Message::GetLength(v19);
  *(this + 25) = result;
  return result;
}

uint64_t ot::MeshForwarder::UpdateMeshRoute(ot::MeshForwarder *this, ot::Message *a2)
{
  v17 = this;
  v16 = a2;
  v15 = 0;
  ot::Lowpan::MeshHeader::ParseFrom(v14, a2);
  IgnoreError();
  v11 = ot::GetProvider<ot::InstanceLocator>::Get<ot::RouterTable>(this);
  Destination = ot::Lowpan::MeshHeader::GetDestination(v14);
  NextHop = ot::RouterTable::GetNextHop(v11, Destination);
  if (NextHop == 65534)
  {
    v9 = ot::GetProvider<ot::InstanceLocator>::Get<ot::NeighborTable>(this);
    v4 = ot::Lowpan::MeshHeader::GetDestination(v14);
    Neighbor = ot::NeighborTable::FindNeighbor(v9, v4, 1);
  }

  else
  {
    v3 = ot::GetProvider<ot::InstanceLocator>::Get<ot::NeighborTable>(this);
    Neighbor = ot::NeighborTable::FindNeighbor(v3, NextHop, 1);
  }

  if (Neighbor)
  {
    Rloc16 = ot::Neighbor::GetRloc16(Neighbor);
    ot::Mac::Address::SetShort(this + 74, Rloc16);
    v6 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::Mle>(this);
    v7 = ot::Mle::Mle::GetRloc16(v6);
    ot::Mac::Address::SetShort(this + 64, v7);
    *(this + 88) = *(this + 88) & 0xFE | 1;
    *(this + 43) = ot::Lowpan::MeshHeader::GetDestination(v14);
    *(this + 42) = ot::Lowpan::MeshHeader::GetSource(v14);
    if (ot::Mac::Address::GetShort((this + 74)) != *(this + 43))
    {
      *(this + 88) = *(this + 88) & 0xEF | 0x10;
    }
  }

  else
  {
    return 2;
  }

  return v15;
}

uint64_t ot::MeshForwarder::UpdateIp6RouteFtd(ot::MeshForwarder *this, const ot::Ip6::Header *a2, ot::Message *a3)
{
  v51 = this;
  v50 = a2;
  v49 = a3;
  v48 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::MleRouter>(this);
  v47 = 0;
  *(this + 43) = -2;
  if (ot::Message::GetOffset(v49) <= 0)
  {
    Destination = ot::Ip6::Header::GetDestination(v50);
    if (ot::Mle::Mle::IsRoutingLocator(v48, Destination))
    {
      v4 = ot::Ip6::Header::GetDestination(v50);
      Iid = ot::Ip6::Address::GetIid(v4);
      Locator = ot::Ip6::InterfaceIdentifier::GetLocator(Iid, v6);
      v7 = ot::Mle::RouterIdFromRloc16(Locator);
      if (!ot::Mle::IsRouterIdValid(v7))
      {
        v47 = 2;
        goto LABEL_28;
      }

      *(this + 43) = Locator;
    }

    else
    {
      v8 = ot::Ip6::Header::GetDestination(v50);
      if (ot::Mle::Mle::IsAnycastLocator(v48, v8))
      {
        v9 = ot::Ip6::Header::GetDestination(v50);
        v10 = ot::Ip6::Address::GetIid(v9);
        v44 = ot::Ip6::InterfaceIdentifier::GetLocator(v10, v11);
        v12 = ot::GetProvider<ot::InstanceLocator>::Get<ot::NetworkData::Leader>(this);
        v47 = ot::NetworkData::Leader::AnycastLookup(v12, v44, this + 43);
        if (v47)
        {
          goto LABEL_28;
        }

        if (ot::Mle::Mle::IsRouterOrLeader(v48) && ot::Mle::IsChildRloc16(*(this + 43), v13) && ot::Mle::Mle::HasMatchingRouterIdWith(v48, *(this + 43), v14))
        {
          v15 = ot::GetProvider<ot::InstanceLocator>::Get<ot::ChildTable>(this);
          ot::ChildTable::FindChild(v15, *(this + 43), 0);
          v43 = v16;
          if (!v16)
          {
            v47 = 2;
            goto LABEL_28;
          }

          if (!ot::Neighbor::IsRxOnWhenIdle(v16))
          {
            ot::IndirectSender::AddMessageForSleepyChild((this + 296), v49, v43);
            ot::Message::ClearDirectTransmission(v49);
          }
        }
      }

      else
      {
        v41 = ot::GetProvider<ot::InstanceLocator>::Get<ot::NeighborTable>(this);
        v17 = ot::Ip6::Header::GetDestination(v50);
        Neighbor = ot::NeighborTable::FindNeighbor(v41, v17, 1);
        if (Neighbor)
        {
          *(this + 43) = ot::Neighbor::GetRloc16(Neighbor);
        }

        else
        {
          v40 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Ip6::Ip6>(this);
          v18 = ot::Ip6::Header::GetDestination(v50);
          if (ot::Ip6::Ip6::IsOnLink(v40, v18))
          {
            v39 = ot::GetProvider<ot::InstanceLocator>::Get<ot::AddressResolver>(this);
            v19 = ot::Ip6::Header::GetDestination(v50);
            v47 = ot::AddressResolver::Resolve(v39, v19, this + 43);
            if (v47)
            {
              goto LABEL_28;
            }
          }

          else
          {
            v38 = ot::GetProvider<ot::InstanceLocator>::Get<ot::NetworkData::Leader>(this);
            Source = ot::Ip6::Header::GetSource(v50);
            v20 = ot::Ip6::Header::GetDestination(v50);
            v47 = ot::NetworkData::Leader::RouteLookup(v38, Source, v20, this + 43);
            if (v47)
            {
              goto LABEL_28;
            }
          }
        }
      }
    }
  }

  else
  {
    *(this + 43) = ot::Message::GetMeshDest(v49);
  }

  if (*(this + 43) == 65534)
  {
    v47 = 2;
  }

  else
  {
    v21 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::Mle>(this);
    *(this + 42) = ot::Mle::Mle::GetRloc16(v21);
    v47 = ot::MeshForwarder::CheckReachability(this, *(this + 43), v50);
    if (!v47)
    {
      ot::Message::SetMeshDest(v49, *(this + 43));
      v22 = ot::GetProvider<ot::InstanceLocator>::Get<ot::RouterTable>(this);
      NextHop = ot::RouterTable::GetNextHop(v22, *(this + 43));
      ot::Mac::Address::SetShort(this + 74, NextHop);
      if (ot::Mac::Address::GetShort((this + 74)) != *(this + 43))
      {
        ot::Mac::Address::SetShort(this + 64, *(this + 42));
        *(this + 88) = *(this + 88) & 0xFE | 1;
        *(this + 88) = *(this + 88) & 0xEF | 0x10;
      }
    }
  }

LABEL_28:
  if (v47)
  {
    if (v47 == 4)
    {
      v30 = ot::GetProvider<ot::InstanceLocator>::Get<ot::AppMetricsManager>(this);
      ot::AppMetricsManager::UpdateRouteCostFromTxMsg(v30, v49, 16, &v47, v31, v32, v33, v34);
    }
  }

  else
  {
    v36 = ot::GetProvider<ot::InstanceLocator>::Get<ot::AppMetricsManager>(this);
    v24 = ot::GetProvider<ot::InstanceLocator>::Get<ot::RouterTable>(this);
    PathCost = ot::RouterTable::GetPathCost(v24, *(this + 43));
    ot::AppMetricsManager::UpdateRouteCostFromTxMsg(v36, v49, PathCost, &v47, v26, v27, v28, v29);
  }

  return v47;
}

BOOL ot::Mle::IsRouterIdValid(ot::Mle *this)
{
  return this <= 0x3Eu;
}

{
  return ot::Mle::IsRouterIdValid(this);
}

BOOL ot::Mle::IsChildRloc16(ot::Mle *this, unsigned __int16 a2)
{
  return ot::Mle::ChildIdFromRloc16(this) != 0;
}

{
  return ot::Mle::IsChildRloc16(this, a2);
}

uint64_t ot::MeshForwarder::CheckReachability(ot::MeshForwarder *this, __int16 a2, const ot::Ip6::Header *a3)
{
  v3 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::Mle>(this);
  if (ot::Mle::Mle::IsChild(v3))
  {
    v4 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::Mle>(this);
    if (ot::Mle::Mle::HasRloc16(v4, a2))
    {
      v18 = ot::GetProvider<ot::InstanceLocator>::Get<ot::ThreadNetif>(this);
      Destination = ot::Ip6::Header::GetDestination(a3);
      HasUnicastAddress = ot::Ip6::Netif::HasUnicastAddress(v18, Destination);
    }

    else
    {
      HasUnicastAddress = 1;
    }
  }

  else
  {
    v6 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::Mle>(this);
    if (ot::Mle::Mle::HasRloc16(v6, a2))
    {
      v16 = ot::GetProvider<ot::InstanceLocator>::Get<ot::ThreadNetif>(this);
      v7 = ot::Ip6::Header::GetDestination(a3);
      v17 = 1;
      if (!ot::Ip6::Netif::HasUnicastAddress(v16, v7))
      {
        v15 = ot::GetProvider<ot::InstanceLocator>::Get<ot::NeighborTable>(this);
        v8 = ot::Ip6::Header::GetDestination(a3);
        v17 = ot::NeighborTable::FindNeighbor(v15, v8, 1) != 0;
      }

      HasUnicastAddress = v17;
    }

    else
    {
      v9 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::Mle>(this);
      if (ot::Mle::Mle::HasMatchingRouterIdWith(v9, a2, v10))
      {
        v11 = ot::GetProvider<ot::InstanceLocator>::Get<ot::ChildTable>(this);
        ot::ChildTable::FindChild(v11, a2, 1);
        HasUnicastAddress = v12 != 0;
      }

      else
      {
        v13 = ot::GetProvider<ot::InstanceLocator>::Get<ot::RouterTable>(this);
        HasUnicastAddress = ot::RouterTable::GetNextHop(v13, a2) != 65534;
      }
    }
  }

  if (HasUnicastAddress)
  {
    return 0;
  }

  else
  {
    return 4;
  }
}

void ot::MeshForwarder::SendIcmpErrorIfDstUnreach(ot::MeshForwarder *this, const ot::Message *a2, const ot::Mac::Addresses *a3)
{
  v18 = this;
  v17 = a2;
  v16 = a3;
  v15 = 0;
  if (ot::Mac::Address::IsShort(a3) && ot::Mac::Address::IsShort((v16 + 10)))
  {
    v12 = ot::GetProvider<ot::InstanceLocator>::Get<ot::ChildTable>(this);
    Short = ot::Mac::Address::GetShort(v16);
    ot::ChildTable::FindChild(v12, Short, 5);
    if ((!v4 || ot::Neighbor::IsFullThreadDevice(v4)) && !ot::Ip6::Headers::ParseFrom(v14, v17))
    {
      DestinationAddress = ot::Ip6::Headers::GetDestinationAddress(v14);
      if (!ot::Ip6::Address::IsMulticast(DestinationAddress))
      {
        v11 = ot::GetProvider<ot::InstanceLocator>::Get<ot::NetworkData::Leader>(this);
        v6 = ot::Ip6::Headers::GetDestinationAddress(v14);
        if (ot::NetworkData::Leader::IsOnMesh(v11, v6))
        {
          v10 = ot::Mac::Address::GetShort((v16 + 10));
          ot::Ip6::Headers::GetIp6Header(v14);
          v15 = ot::MeshForwarder::CheckReachability(this, v10, v7);
          if (v15 == 4)
          {
            v9 = ot::Mac::Address::GetShort(v16);
            v8 = ot::Mac::Address::GetShort((v16 + 10));
            ot::MeshForwarder::SendDestinationUnreachable(this, v9, v8, v14);
          }
        }
      }
    }
  }
}

void ot::MeshForwarder::SendDestinationUnreachable(ot::MeshForwarder *this, unsigned __int16 a2, unsigned __int16 a3, const ot::Ip6::Headers *a4)
{
  v21 = this;
  v20 = a2;
  v19 = a3;
  v18 = a4;
  ot::Ip6::MessageInfo::MessageInfo(v17);
  ot::Ip6::MessageInfo::MessageInfo(v16);
  ot::Ip6::MessageInfo::GetPeerAddr(v17);
  v13 = v4;
  v5 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::Mle>(this);
  MeshLocalPrefix = ot::Mle::Mle::GetMeshLocalPrefix(v5);
  ot::Ip6::Address::SetToRoutingLocator(v13, MeshLocalPrefix, v20);
  memcpy(v16, v17, sizeof(v16));
  v7 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::MleRouter>(this);
  ot::Mle::Mle::GetMeshLocalRloc(v7);
  v14 = v8;
  ot::Ip6::MessageInfo::GetSockAddr(v16);
  *v9 = *v14;
  ot::Ip6::MessageInfo::GetSockAddr(v16);
  Iid = ot::Ip6::Address::GetIid(v10);
  ot::Ip6::InterfaceIdentifier::SetLocator(Iid, v19);
  v12 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Ip6::Icmp>(this);
  ot::Ip6::Icmp::SendError(v12, 1u, 0, v17, v18, v16);
  IgnoreError();
}

uint64_t ot::MeshForwarder::CheckReachability(ot::MeshForwarder *this, ot::MeshForwarder::RxInfo *a2)
{
  v12 = ot::MeshForwarder::RxInfo::ParseIp6Headers(a2);
  if (v12)
  {
    if (v12 == 23)
    {
      return 0;
    }
  }

  else
  {
    DstAddr = ot::MeshForwarder::RxInfo::GetDstAddr(a2);
    Short = ot::Mac::Address::GetShort(DstAddr);
    ot::Ip6::Headers::GetIp6Header((a2 + 64));
    v4 = ot::MeshForwarder::CheckReachability(this, Short, v3);
    v12 = v4;
    if (v4 == 4)
    {
      SrcAddr = ot::MeshForwarder::RxInfo::GetSrcAddr(a2);
      v9 = ot::Mac::Address::GetShort(SrcAddr);
      v6 = ot::MeshForwarder::RxInfo::GetDstAddr(a2);
      v7 = ot::Mac::Address::GetShort(v6);
      ot::MeshForwarder::SendDestinationUnreachable(this, v9, v7, (a2 + 64));
    }
  }

  return v12;
}

uint64_t ot::Ip6::InterfaceIdentifier::SetLocator(ot::Ip6::InterfaceIdentifier *this, unsigned __int16 a2)
{
  result = ot::BigEndian::HostSwap16(a2, a2);
  *(this + 3) = result;
  return result;
}

{
  return ot::Ip6::InterfaceIdentifier::SetLocator(this, a2);
}

void ot::MeshForwarder::HandleMesh(ot::MeshForwarder *this, ot::MeshForwarder::RxInfo *a2)
{
  v55 = this;
  v54 = a2;
  v53 = 0;
  ot::Mac::Address::Address(&v50);
  if (ot::MeshForwarder::RxInfo::IsLinkSecurityEnabled(v54))
  {
    v53 = ot::Lowpan::MeshHeader::ParseFrom(v52, v54);
    if (!v53)
    {
      SrcAddr = ot::MeshForwarder::RxInfo::GetSrcAddr(v54);
      v50 = *SrcAddr;
      v51 = *(SrcAddr + 8);
      v42 = (v54 + 40);
      Source = ot::Lowpan::MeshHeader::GetSource(v52);
      ot::Mac::Address::SetShort(v42, Source);
      v43 = (v54 + 50);
      Destination = ot::Lowpan::MeshHeader::GetDestination(v52);
      ot::Mac::Address::SetShort(v43, Destination);
      ot::MeshForwarder::UpdateRoutes(this, v54);
      v44 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::Mle>(this);
      DstAddr = ot::MeshForwarder::RxInfo::GetDstAddr(v54);
      Short = ot::Mac::Address::GetShort(DstAddr);
      if (ot::Mle::Mle::HasRloc16(v44, Short) || (v41 = ot::GetProvider<ot::InstanceLocator>::Get<ot::ChildTable>(this), v7 = ot::MeshForwarder::RxInfo::GetDstAddr(v54), v8 = ot::Mac::Address::GetShort(v7), ot::ChildTable::HasMinimalChild(v41, v8)))
      {
        if (ot::Lowpan::MeshHeader::GetHopsLeft(v52) > 19 || (19 - ot::Lowpan::MeshHeader::GetHopsLeft(v52)) >= 17)
        {
          HopsLeft = ot::Lowpan::MeshHeader::GetHopsLeft(v52);
          ot::Logger::LogAtLevel<(ot::LogLevel)2>("MeshForwarder", "HandleMesh:: numHops not set as it is out of bounds hopsLft:%d maxbound:%d", v12, v13, v14, v15, v16, v17, HopsLeft, 17);
        }

        else
        {
          v40 = (v54 + 16);
          v9 = ot::Lowpan::MeshHeader::GetHopsLeft(v52);
          ot::ThreadLinkInfo::SetHopsLft(v40, 19 - v9);
        }

        if (ot::Lowpan::FragmentHeader::IsFragmentHeader(v54, v10))
        {
          ot::MeshForwarder::HandleFragment(this, v54);
        }

        else if (ot::Lowpan::Lowpan::IsLowpanHc(v54, v18))
        {
          ot::MeshForwarder::HandleLowpanHc(this, v54);
        }

        else
        {
          v53 = 6;
        }
      }

      else if (ot::Lowpan::MeshHeader::GetHopsLeft(v52) > 0)
      {
        ot::OwnedPtr<ot::Message>::OwnedPtr(&v49);
        v48 = 1;
        v39 = ot::Mac::Address::GetShort(&v50);
        v19 = ot::MeshForwarder::RxInfo::GetDstAddr(v54);
        v20 = ot::Mac::Address::GetShort(v19);
        ot::MeshForwarder::ResolveRoutingLoops(this, v39, v20);
        v53 = ot::MeshForwarder::CheckReachability(this, v54);
        if (!v53)
        {
          ot::Lowpan::MeshHeader::DecrementHopsLeft(v52);
          ot::MeshForwarder::GetForwardFramePriority(this, v54, &v48);
          v38 = ot::GetProvider<ot::InstanceLocator>::Get<ot::MessagePool>(this);
          ot::Message::Settings::Settings(v47, v48);
          v21 = ot::MessagePool::Allocate(v38, 1, 0, v47);
          ot::OwnedPtr<ot::Message>::Reset(&v49, v21);
          if (ot::Ptr<ot::Message>::operator!=(&v49, 0))
          {
            v22 = ot::Ptr<ot::Message>::operator*(&v49);
            v53 = ot::Lowpan::MeshHeader::AppendTo(v52, v22);
            if (!v53)
            {
              v23 = ot::Ptr<ot::Message>::operator->(&v49);
              v53 = ot::Message::AppendData<(ot::DataLengthType)1>(v23, v54);
              if (!v53)
              {
                v24 = ot::Ptr<ot::Message>::operator->(&v49);
                ot::Message::UpdateLinkInfoFrom(v24, (v54 + 16));
                v25 = ot::Ptr<ot::Message>::operator*(&v49);
                ot::MeshForwarder::LogMessage(this, 0, v25, 0, &v50);
                ot::OwnedPtr<ot::Message>::PassOwnership();
                ot::OwnedPtr<ot::Message>::OwnedPtr(&v46, v26);
                ot::MeshForwarder::SendMessage(this, &v46);
                ot::OwnedPtr<ot::Message>::~OwnedPtr(&v46);
              }
            }
          }

          else
          {
            v53 = 3;
          }
        }

        ot::OwnedPtr<ot::Message>::~OwnedPtr(&v49);
      }
    }
  }

  else
  {
    v53 = 8;
  }

  if (v53)
  {
    v35 = ot::ErrorToString(v53);
    Length = ot::Data<(ot::DataLengthType)1>::GetLength(v54);
    ot::Mac::Address::ToString(&v50, v56);
    v37 = ot::String<(unsigned short)17>::AsCString(v56);
    IsLinkSecurityEnabled = ot::MeshForwarder::RxInfo::IsLinkSecurityEnabled(v54);
    v28 = ot::ToYesNo(IsLinkSecurityEnabled);
    ot::Logger::LogAtLevel<(ot::LogLevel)4>("MeshForwarder", "Dropping rx mesh frame, error:%s, len:%d, src:%s, sec:%s", v29, v30, v31, v32, v33, v34, v35, Length, v37, v28);
  }
}

void ot::MeshForwarder::UpdateRoutes(ot::MeshForwarder *this, ot::MeshForwarder::RxInfo *a2)
{
  DstAddr = ot::MeshForwarder::RxInfo::GetDstAddr(a2);
  if (!ot::Mac::Address::IsBroadcast(DstAddr))
  {
    SrcAddr = ot::MeshForwarder::RxInfo::GetSrcAddr(a2);
    if (ot::Mac::Address::IsShort(SrcAddr) && !ot::MeshForwarder::RxInfo::ParseIp6Headers(a2))
    {
      SourceAddress = ot::Ip6::Headers::GetSourceAddress((a2 + 64));
      Iid = ot::Ip6::Address::GetIid(SourceAddress);
      if (!ot::Ip6::InterfaceIdentifier::IsLocator(Iid, v6))
      {
        v21 = ot::GetProvider<ot::InstanceLocator>::Get<ot::NetworkData::Leader>(this);
        v7 = ot::Ip6::Headers::GetSourceAddress((a2 + 64));
        if (ot::NetworkData::Leader::IsOnMesh(v21, v7))
        {
          v20 = ot::GetProvider<ot::InstanceLocator>::Get<ot::AddressResolver>(this);
          v18 = ot::Ip6::Headers::GetSourceAddress((a2 + 64));
          v8 = ot::MeshForwarder::RxInfo::GetSrcAddr(a2);
          Short = ot::Mac::Address::GetShort(v8);
          v9 = ot::MeshForwarder::RxInfo::GetDstAddr(a2);
          v10 = ot::Mac::Address::GetShort(v9);
          ot::AddressResolver::UpdateSnoopedCacheEntry(v20, v18, Short, v10);
        }
      }

      v17 = ot::GetProvider<ot::InstanceLocator>::Get<ot::NeighborTable>(this);
      v11 = ot::Ip6::Headers::GetSourceAddress((a2 + 64));
      Neighbor = ot::NeighborTable::FindNeighbor(v17, v11, 1);
      if (Neighbor && !ot::Neighbor::IsFullThreadDevice(Neighbor))
      {
        v16 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::Mle>(this);
        v12 = ot::MeshForwarder::RxInfo::GetSrcAddr(a2);
        v13 = ot::Mac::Address::GetShort(v12);
        if (!ot::Mle::Mle::HasMatchingRouterIdWith(v16, v13, v14))
        {
          v15 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::MleRouter>(this);
          ot::Mle::MleRouter::RemoveNeighbor(v15, Neighbor);
        }
      }
    }
  }
}

uint64_t ot::Lowpan::MeshHeader::GetHopsLeft(ot::Lowpan::MeshHeader *this)
{
  return *(this + 4);
}

{
  return ot::Lowpan::MeshHeader::GetHopsLeft(this);
}

uint64_t ot::ThreadLinkInfo::SetHopsLft(uint64_t this, char a2)
{
  *(this + 17) = a2;
  return this;
}

{
  return ot::ThreadLinkInfo::SetHopsLft(this, a2);
}

void ot::MeshForwarder::ResolveRoutingLoops(ot::MeshForwarder *this, unsigned __int16 a2, unsigned __int16 a3)
{
  v8 = a2;
  v3 = ot::GetProvider<ot::InstanceLocator>::Get<ot::RouterTable>(this);
  if (v8 == ot::RouterTable::GetNextHop(v3, a3))
  {
    v4 = ot::GetProvider<ot::InstanceLocator>::Get<ot::RouterTable>(this);
    ot::RouterTable::FindRouterByRloc16(v4, a3);
    if (v5)
    {
      ot::Router::SetNextHopToInvalid(v5);
      v6 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::MleRouter>(this);
      ot::Mle::MleRouter::ResetAdvertiseInterval(v6);
    }
  }
}

double ot::MeshForwarder::GetForwardFramePriority(ot::InstanceLocator *a1, ot::MeshForwarder::RxInfo *a2, char *a3)
{
  v24 = a1;
  v23 = a2;
  v22 = a3;
  FramePriority = 0;
  v20 = 0;
  v18 = *a2;
  if (ot::Lowpan::FragmentHeader::ParseFrom(v19, a2) || (v20 = 1, ot::Lowpan::FragmentHeader::GetDatagramOffset(v19) <= 0))
  {
    FramePriority = ot::MeshForwarder::GetFramePriority(a1, v23, v22);
  }

  else
  {
    SrcAddr = ot::MeshForwarder::RxInfo::GetSrcAddr(v23);
    Short = ot::Mac::Address::GetShort(SrcAddr);
    FramePriority = ot::MeshForwarder::GetFragmentPriority(a1, v19, Short, v22);
  }

  if (FramePriority)
  {
    v16 = ot::ErrorToString(FramePriority);
    ot::MeshForwarder::RxInfo::ToString(v23, v25);
    v5 = ot::String<(unsigned short)70>::AsCString(v25);
    ot::Logger::LogAtLevel<(ot::LogLevel)3>("MeshForwarder", "Failed to get forwarded frame priority, error:%s, %s", v6, v7, v8, v9, v10, v11, v16, v5);
  }

  else if (v20)
  {
    Length = ot::Data<(ot::DataLengthType)1>::GetLength(v23);
    v12 = ot::MeshForwarder::RxInfo::GetSrcAddr(v23);
    v13 = ot::Mac::Address::GetShort(v12);
    ot::MeshForwarder::UpdateFragmentPriority(a1, v19, Length, v13, *v22);
  }

  result = *&v18;
  *v23 = v18;
  return result;
}

void ot::RouterTable::FindRouterByRloc16(ot::RouterTable *this, unsigned __int16 a2)
{
  ot::AsConst<ot::RouterTable>();
  ot::RouterTable::FindRouterByRloc16(v2, a2);
  ot::AsNonConst<ot::Router>();
}

{
  ot::RouterTable::FindRouterByRloc16(this, a2);
}

uint64_t ot::MeshForwarder::FragmentPriorityList::UpdateOnTimeTick(ot::MeshForwarder::FragmentPriorityList *this)
{
  v4 = 0;
  v3 = this;
  v2 = (this + 48);
  while (v3 != v2)
  {
    if (!ot::MeshForwarder::FragmentPriorityList::Entry::IsExpired(v3))
    {
      ot::MeshForwarder::FragmentPriorityList::Entry::DecrementLifetime(v3);
      if (!ot::MeshForwarder::FragmentPriorityList::Entry::IsExpired(v3))
      {
        v4 = 1;
      }
    }

    v3 = (v3 + 6);
  }

  return v4 & 1;
}

BOOL ot::MeshForwarder::FragmentPriorityList::Entry::IsExpired(ot::MeshForwarder::FragmentPriorityList::Entry *this)
{
  return *(this + 4) == 0;
}

{
  return ot::MeshForwarder::FragmentPriorityList::Entry::IsExpired(this);
}

uint64_t ot::MeshForwarder::FragmentPriorityList::Entry::DecrementLifetime(uint64_t this)
{
  --*(this + 4);
  return this;
}

{
  return ot::MeshForwarder::FragmentPriorityList::Entry::DecrementLifetime(this);
}

uint64_t ot::MeshForwarder::UpdateFragmentPriority(uint64_t a1, ot::Lowpan::FragmentHeader *a2, unsigned __int16 a3, unsigned __int16 a4, char a5)
{
  DatagramTag = ot::Lowpan::FragmentHeader::GetDatagramTag(a2);
  Entry = ot::MeshForwarder::FragmentPriorityList::FindEntry((a1 + 248), a4, DatagramTag);
  if (Entry)
  {
    v9 = ot::Lowpan::FragmentHeader::GetDatagramOffset(a2) + a3;
    if (v9 < ot::Lowpan::FragmentHeader::GetDatagramSize(a2))
    {
      return ot::MeshForwarder::FragmentPriorityList::Entry::ResetLifetime(Entry);
    }

    else
    {
      return ot::Clearable<ot::MeshForwarder::FragmentPriorityList::Entry>::Clear(Entry);
    }
  }

  else
  {
    result = ot::Lowpan::FragmentHeader::GetDatagramOffset(a2);
    if (!result)
    {
      v7 = ot::Lowpan::FragmentHeader::GetDatagramTag(a2);
      ot::MeshForwarder::FragmentPriorityList::AllocateEntry(a1 + 248, a4, v7, a5);
      v8 = ot::GetProvider<ot::InstanceLocator>::Get<ot::TimeTicker>(a1);
      return ot::TimeTicker::RegisterReceiver(v8, 0);
    }
  }

  return result;
}

ot::MeshForwarder::FragmentPriorityList::Entry *ot::MeshForwarder::FragmentPriorityList::FindEntry(ot::MeshForwarder::FragmentPriorityList *this, unsigned __int16 a2, unsigned __int16 a3)
{
  v6 = 0;
  v5 = this;
  v4 = (this + 48);
  while (v5 != v4)
  {
    if (!ot::MeshForwarder::FragmentPriorityList::Entry::IsExpired(v5) && ot::MeshForwarder::FragmentPriorityList::Entry::Matches(v5, a2, a3))
    {
      return v5;
    }

    v5 = (v5 + 6);
  }

  return v6;
}

uint64_t ot::MeshForwarder::FragmentPriorityList::AllocateEntry(uint64_t a1, __int16 a2, __int16 a3, char a4)
{
  v7 = 0;
  v6 = a1;
  v5 = a1 + 48;
  while (v6 != v5)
  {
    if (ot::MeshForwarder::FragmentPriorityList::Entry::IsExpired(v6))
    {
      ot::Clearable<ot::MeshForwarder::FragmentPriorityList::Entry>::Clear(v6);
      *v6 = a2;
      *(v6 + 2) = a3;
      *(v6 + 5) = *(v6 + 5) & 0xFC | a4 & 3;
      ot::MeshForwarder::FragmentPriorityList::Entry::ResetLifetime(v6);
      return v6;
    }

    v6 += 6;
  }

  return v7;
}

uint64_t ot::Clearable<ot::MeshForwarder::FragmentPriorityList::Entry>::Clear(uint64_t a1)
{
  return ot::ClearAllBytes<ot::MeshForwarder::FragmentPriorityList::Entry>(a1);
}

{
  return ot::Clearable<ot::MeshForwarder::FragmentPriorityList::Entry>::Clear(a1);
}

uint64_t ot::MeshForwarder::FragmentPriorityList::Entry::ResetLifetime(uint64_t this)
{
  *(this + 4) = 3;
  return this;
}

{
  return ot::MeshForwarder::FragmentPriorityList::Entry::ResetLifetime(this);
}

BOOL ot::MeshForwarder::FragmentPriorityList::Entry::Matches(ot::MeshForwarder::FragmentPriorityList::Entry *this, unsigned __int16 a2, unsigned __int16 a3)
{
  v4 = 0;
  if (*this == a2)
  {
    return *(this + 1) == a3;
  }

  return v4;
}

{
  return ot::MeshForwarder::FragmentPriorityList::Entry::Matches(this, a2, a3);
}

uint64_t ot::MeshForwarder::GetFragmentPriority(uint64_t a1, ot::Lowpan::FragmentHeader *a2, unsigned __int16 a3, _BYTE *a4)
{
  v9 = 0;
  DatagramTag = ot::Lowpan::FragmentHeader::GetDatagramTag(a2);
  Entry = ot::MeshForwarder::FragmentPriorityList::FindEntry((a1 + 248), a3, DatagramTag);
  if (Entry)
  {
    *a4 = ot::MeshForwarder::FragmentPriorityList::Entry::GetPriority(Entry);
  }

  else
  {
    return 23;
  }

  return v9;
}

uint64_t ot::MeshForwarder::FragmentPriorityList::Entry::GetPriority(ot::MeshForwarder::FragmentPriorityList::Entry *this)
{
  return *(this + 5) & 3;
}

{
  return ot::MeshForwarder::FragmentPriorityList::Entry::GetPriority(this);
}

uint64_t ot::MeshForwarder::LogMeshFragmentHeader(uint64_t a1, unsigned __int8 a2, ot::Message *a3, ot::Mac::Address *a4, int a5, unsigned __int16 *a6, ot::Mac::Address *a7, char a8, char *a9)
{
  v69 = a1;
  v68 = a2;
  v67 = a3;
  v66 = a4;
  v65 = a5;
  v64 = a6;
  v63 = a7;
  v62 = a8;
  v61 = a9;
  v52 = a1;
  v60 = 1;
  v59 = 0;
  v58 = 0;
  v55 = 0;
  v54 = 0;
  v53 = "";
  if (!ot::Lowpan::MeshHeader::ParseFrom(v57, a3, &v55))
  {
    v49 = v63;
    v50 = v57;
    Source = ot::Lowpan::MeshHeader::GetSource(v57);
    ot::Mac::Address::SetShort(v49, Source);
    v51 = (v63 + 10);
    Destination = ot::Lowpan::MeshHeader::GetDestination(v57);
    ot::Mac::Address::SetShort(v51, Destination);
    *v64 = v55;
    if (!ot::Lowpan::FragmentHeader::ParseFrom(v56, v67, *v64, &v55))
    {
      v59 = 1;
      *v64 += v55;
    }

    v48 = 1;
    if (v68)
    {
      v48 = v68 == 4;
    }

    v58 = v48;
    __str = v61;
    v46 = ot::MeshForwarder::MessageActionToString(v52, v68, v65);
    Length = ot::Message::GetLength(v67);
    if (v66)
    {
      v11 = ", from:";
      if (v68)
      {
        v11 = ", to:";
      }

      v44 = v11;
    }

    else
    {
      v44 = "";
    }

    v43 = v44;
    if (v66)
    {
      v41 = v73;
      ot::Mac::Address::ToString(v66, v73);
      v42 = ot::String<(unsigned short)17>::AsCString(v73);
    }

    else
    {
      v42 = "";
    }

    v32 = v42;
    v33 = v72;
    ot::Mac::Address::ToString(v63, v72);
    v34 = ot::String<(unsigned short)17>::AsCString(v72);
    v35 = v71;
    ot::Mac::Address::ToString((v63 + 10), v71);
    v36 = ot::String<(unsigned short)17>::AsCString(v71);
    HopsLeft = ot::Lowpan::MeshHeader::GetHopsLeft(v57);
    v37 = HopsLeft + (v68 == 0);
    v38 = ot::ToYesNo((v59 & 1));
    IsLinkSecurityEnabled = ot::Message::IsLinkSecurityEnabled(v67);
    v39 = ot::ToYesNo(IsLinkSecurityEnabled);
    v14 = "";
    if (v65)
    {
      v14 = ", error:";
    }

    v40 = v14;
    if (v65)
    {
      v31 = ot::ErrorToString(v65);
    }

    else
    {
      v31 = "";
    }

    v29 = v31;
    v15 = ", rss:";
    if (!v58)
    {
      v15 = "";
    }

    v30 = v15;
    if (v58)
    {
      RssAverager = ot::Message::GetRssAverager(v67);
      v27 = v70;
      ot::RssAverager::ToString(RssAverager, v70);
      v28 = ot::String<(unsigned short)10>::AsCString(v70);
    }

    else
    {
      v28 = "";
    }

    if (v54)
    {
      v17 = ", radio:";
    }

    else
    {
      v17 = "";
    }

    v26 = v20;
    snprintf(__str, 0x800uLL, "%s mesh frame, len:%d%s%s, msrc:%s, mdst:%s, hops:%d, frag:%s, sec:%s%s%s%s%s%s%s", v46, Length, v43, v32, v34, v36, v37, v38, v39, v40, v29, v30, v28, v17, v53);
    if ((v59 & 1) == 0)
    {
      return 0;
    }

    v20[16] = v61;
    v25 = &v61[strlen(v61)];
    __size = 2048 - strlen(v61);
    v21 = v56;
    DatagramTag = ot::Lowpan::FragmentHeader::GetDatagramTag(v56);
    DatagramOffset = ot::Lowpan::FragmentHeader::GetDatagramOffset(v21);
    DatagramSize = ot::Lowpan::FragmentHeader::GetDatagramSize(v21);
    snprintf(v25, __size, " Frag tag:%04x, offset:%d, size:%d", DatagramTag, DatagramOffset, DatagramSize);
    if (!ot::Lowpan::FragmentHeader::GetDatagramOffset(v56))
    {
      return 0;
    }
  }

  return v60;
}

uint64_t ot::MeshForwarder::LogMeshIpHeader(ot::MeshForwarder *a1, char a2, const ot::Message *a3, unsigned __int16 a4, const ot::Mac::Addresses *a5, unsigned __int8 a6, char *a7)
{
  v36 = &v43;
  v47 = a1;
  v46 = a2;
  v45 = a3;
  v44 = a4;
  v43 = a5;
  v42 = a6;
  __s = a7;
  v37 = a1;
  memset(__b, 0, sizeof(__b));
  IsAppPacket = 0;
  bzero(v48, 0x400uLL);
  v38 = 0;
  result = ot::Ip6::Headers::DecompressFrom(v40, v45, v44, v43);
  if (!result)
  {
    v8 = ot::GetProvider<ot::InstanceLocator>::Get<ot::AppMetricsManager>(v37);
    IsAppPacket = ot::AppMetricsManager::IsAppPacket(v8, v36[2], v40, 0);
    if (IsAppPacket)
    {
      v9 = ot::GetProvider<ot::InstanceLocator>::Get<ot::AppMetricsManager>(v37);
      ot::AppMetricsManager::GetAppHeaderString(v9, v40, __b);
      if (!v46 || v46 == 4)
      {
        v35 = ot::GetProvider<ot::InstanceLocator>::Get<ot::AppMetricsManager>(v37);
        v34 = v36[2];
        HopsLft = ot::Message::GetHopsLft(v36[2]);
        ot::AppMetricsManager::CountAppDuplicates(v35, v34, v40, 1, HopsLft);
      }
    }

    v11 = ot::GetProvider<ot::InstanceLocator>::Get<ot::MessagePool>(v37);
    if (ot::MessagePool::GetIsBufferStatsEnabled(v11))
    {
      ot::Message::GetBufferIDs(v36[2], v48);
    }

    v38 = strlen(__s);
    __str = &__s[v38];
    __size = 2048 - v38;
    v30 = v40;
    IpProto = ot::Ip6::Headers::GetIpProto(v40);
    v29 = ot::Ip6::Ip6::IpProtoToString(IpProto, v13, v14, v15, v16, v17);
    Checksum = ot::Ip6::Headers::GetChecksum(v40);
    Ecn = ot::Ip6::Headers::GetEcn(v40);
    v32 = ot::Ip6::Ip6::EcnToString(Ecn);
    v33 = ot::MeshForwarder::MessagePriorityToString(v37, v36[2]);
    if (IsAppPacket)
    {
      v26 = __b;
    }

    else
    {
      v26 = "";
    }

    v22[9] = v26;
    v23 = v36[2];
    v19 = ot::GetProvider<ot::InstanceLocator>::Get<ot::MessagePool>(v37);
    TotalBufferCount = ot::MessagePool::GetTotalBufferCount(v19);
    v20 = ot::GetProvider<ot::InstanceLocator>::Get<ot::MessagePool>(v37);
    FreeBufferCount = ot::MessagePool::GetFreeBufferCount(v20);
    v25 = v22;
    snprintf(__str, __size, " IPv6 %s msg, chksum:%04x, ecn:%s, prio:%s%s, buffer=%p%s, tot_buf=%d, free_buf=%d,", v29, Checksum, v32, v33, v26, v23, v48, TotalBufferCount, FreeBufferCount);
    return ot::MeshForwarder::LogIp6SourceDestAddresses(v37, v40, v42, __s);
  }

  return result;
}

void ot::MeshForwarder::LogMeshMessage(ot::MeshForwarder *a1, unsigned __int8 a2, ot::Message *a3, ot::Mac::Address *a4, int a5, unsigned __int8 a6)
{
  v14 = a1;
  v13 = a2;
  v12 = a3;
  v11 = a4;
  v10 = a5;
  v9 = a6;
  v8 = 0;
  ot::Mac::Addresses::Addresses(v7);
  bzero(v15, 0x800uLL);
  if (!ot::MeshForwarder::LogMeshFragmentHeader(a1, v13, v12, v11, v10, &v8, v7, v9, v15))
  {
    ot::MeshForwarder::LogMeshIpHeader(a1, v13, v12, v8, v7, v9, v15);
    ot::Logger::LogInModule("MeshForwarder", v9, "ITMD: %s", v15);
  }
}

void ot::AsNonConst<ot::Router>()
{
  ;
}

{
  ot::AsNonConst<ot::Router>();
}

void ot::AsConst<ot::RouterTable>()
{
  ;
}

{
  ot::AsConst<ot::RouterTable>();
}

uint64_t ot::ClearAllBytes<ot::MeshForwarder::FragmentPriorityList::Entry>(uint64_t result)
{
  *result = 0;
  *(result + 4) = 0;
  return result;
}

{
  return ot::ClearAllBytes<ot::MeshForwarder::FragmentPriorityList::Entry>(result);
}

void ot::Mle::Mle::HandleCslPeripheralAttachRetryTimer(ot::Mle::Mle *this)
{
  v9 = this;
  v8 = 0;
  v8 = ot::Mle::Mle::AttachCslPeripheral(this, (this + 858), *(this + 217), *(this + 872), 1, 0, 1u);
  v1 = otThreadErrorToString(v8);
  ot::Logger::LogAtLevel<(ot::LogLevel)4>(&ot::Mle::kLogModuleName, "Mle::HandleCslPeripheralAttachRetryTimer Retry Status = %s", v2, v3, v4, v5, v6, v7, v1);
}

uint64_t ot::Mle::Mle::HandleUdpReceive(ot::Mle::Mle *this, ot::Message *a2, const ot::Ip6::MessageInfo *a3)
{
  v72 = this;
  v71 = a2;
  v70 = a3;
  v69 = 0;
  ot::Mle::Mle::RxInfo::RxInfo(v65, a2, a3);
  v64 = 0;
  KeyId = 0;
  *&v61[4] = 0;
  *v61 = ot::Message::GetLength(v71);
  v60 = -1;
  v58 = 0;
  ot::Logger::LogAtLevel<(ot::LogLevel)5>(&ot::Mle::kLogModuleName, "Receive MLE message", v3, v4, v5, v6, v7, v8);
  if (ot::Message::GetOrigin(v71))
  {
    goto LABEL_68;
  }

  if (ot::Ip6::MessageInfo::GetHopLimit(v70) != 255)
  {
    v69 = 6;
    goto LABEL_68;
  }

  v56 = v71;
  Offset = ot::Message::GetOffset(v71);
  v69 = ot::Message::Read<unsigned char>(v56, Offset, &v64);
  if (!v69)
  {
    ot::Message::MoveOffset(v71, 1);
    if (v64 == 255)
    {
      v55 = v71;
      v10 = ot::Message::GetOffset(v71);
      v69 = ot::Message::Read<unsigned char>(v55, v10, &v60);
      if (!v69)
      {
        ot::Message::MoveOffset(v71, 1);
        if (v60 == 16)
        {
          v11 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::MleRouter>(this);
          ot::Mle::MleRouter::HandleDiscoveryRequest(v11, v65);
        }

        else if (v60 == 17)
        {
          v12 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::DiscoverScanner>(this);
          ot::Mle::DiscoverScanner::HandleDiscoveryResponse(v12, v65);
        }
      }
    }

    else
    {
      if (ot::Mle::Mle::IsDisabled(this))
      {
        v69 = 13;
        goto LABEL_68;
      }

      if (v64)
      {
        v69 = 6;
        goto LABEL_68;
      }

      v54 = v71;
      v13 = ot::Message::GetOffset(v71);
      v69 = ot::Message::Read<ot::Mle::Mle::SecurityHeader>(v54, v13, v63);
      if (!v69)
      {
        ot::Message::MoveOffset(v71, 10);
        if (!ot::Mle::Mle::SecurityHeader::IsSecurityControlValid(v63))
        {
          v69 = 6;
          goto LABEL_68;
        }

        KeyId = ot::Mle::Mle::SecurityHeader::GetKeyId(v63, v14);
        *&v61[2] = ot::Mle::Mle::SecurityHeader::GetFrameCounter(v63, v15);
        v52 = v71;
        v53 = v70;
        v16 = ot::Message::GetOffset(v71);
        v69 = ot::Mle::Mle::ProcessMessageSecurity(this, 1, v52, v53, v16, v63);
        if (!v69)
        {
          v51 = v71;
          v17 = ot::Message::GetOffset(v71);
          ot::Message::Read<unsigned char>(v51, v17, &v60);
          IgnoreError();
          ot::Message::MoveOffset(v71, 1);
          ot::Ip6::MessageInfo::GetPeerAddr(v70);
          Iid = ot::Ip6::Address::GetIid(v18);
          ot::Ip6::InterfaceIdentifier::ConvertToExtAddress(Iid, v73);
          if (v60 == 12)
          {
            Parent = ot::NeighborTable::FindParent((this + 344), v73, 1);
          }

          else
          {
            Parent = ot::NeighborTable::FindNeighbor((this + 344), v73, 1);
          }

          RxOnlyNeighborRouter = Parent;
          if (!Parent)
          {
            RxOnlyNeighborRouter = ot::NeighborTable::FindRxOnlyNeighborRouter((this + 344), v73);
            v58 = 1;
          }

          if (RxOnlyNeighborRouter && ot::Neighbor::IsStateValid(RxOnlyNeighborRouter))
          {
            v49 = KeyId;
            if (v49 == ot::Neighbor::GetKeySequence(RxOnlyNeighborRouter))
            {
              v48 = *&v61[2];
              if (v48 < ot::Neighbor::GetMleFrameCounter(RxOnlyNeighborRouter))
              {
                v47 = *&v61[2];
                MleFrameCounter = ot::Neighbor::GetMleFrameCounter(RxOnlyNeighborRouter);
                ot::Logger::LogAtLevel<(ot::LogLevel)5>(&ot::Mle::kLogModuleName, "Frame counter (%d) smaller than expected (%d) mle-command(%u)", v21, v22, v23, v24, v25, v26, v47, MleFrameCounter, v60);
                v69 = 29;
                goto LABEL_68;
              }
            }

            else
            {
              v46 = KeyId;
              if (v46 <= ot::Neighbor::GetKeySequence(RxOnlyNeighborRouter))
              {
                v45 = KeyId;
                KeySequence = ot::Neighbor::GetKeySequence(RxOnlyNeighborRouter);
                ot::Logger::LogAtLevel<(ot::LogLevel)5>(&ot::Mle::kLogModuleName, "Key sequence (%d) smaller than expected (%d) mle-command(%u)", v28, v29, v30, v31, v32, v33, v45, KeySequence, v60);
                v69 = 29;
                goto LABEL_68;
              }

              ot::Neighbor::SetKeySequence(RxOnlyNeighborRouter, KeyId);
              LinkFrameCounters = ot::Neighbor::GetLinkFrameCounters(RxOnlyNeighborRouter);
              ot::Mac::LinkFrameCounters::Reset(LinkFrameCounters);
              ot::Neighbor::SetLinkAckFrameCounter(RxOnlyNeighborRouter, 0);
            }

            ot::Neighbor::SetMleFrameCounter(RxOnlyNeighborRouter, *&v61[2] + 1);
          }

          if ((v58 & 1) != 0 && v60 > 2u && v60 != 4)
          {
            RxOnlyNeighborRouter = 0;
          }

          v67 = KeyId;
          v66 = *&v61[2];
          v68 = RxOnlyNeighborRouter;
          switch(v60)
          {
            case 0u:
              if (ot::Mle::Mle::IsRxOnWhenIdle(this))
              {
                v37 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::MleRouter>(this);
                ot::Mle::MleRouter::HandleLinkRequest(v37, v65);
              }

              goto LABEL_67;
            case 1u:
              v38 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::MleRouter>(this);
              ot::Mle::MleRouter::HandleLinkAccept(v38, v65);
              goto LABEL_67;
            case 2u:
              v39 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::MleRouter>(this);
              ot::Mle::MleRouter::HandleLinkAcceptAndRequest(v39, v65);
              goto LABEL_67;
            case 4u:
              ot::Mle::Mle::HandleAdvertisement(this, v65);
              goto LABEL_67;
            case 7u:
              v40 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::MleRouter>(this);
              ot::Mle::MleRouter::HandleDataRequest(v40, v65);
              goto LABEL_67;
            case 8u:
              ot::Mle::Mle::HandleDataResponse(this, v65);
              goto LABEL_67;
            case 9u:
              if (ot::Mle::Mle::IsRxOnWhenIdle(this) || *(this + 128))
              {
                v41 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::MleRouter>(this);
                ot::Mle::MleRouter::HandleParentRequest(v41, v65);
              }

              goto LABEL_67;
            case 0xAu:
              ot::Mle::Mle::HandleParentResponse(this, v65);
              goto LABEL_67;
            case 0xBu:
              v42 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::MleRouter>(this);
              ot::Mle::MleRouter::HandleChildIdRequest(v42, v65);
              goto LABEL_67;
            case 0xCu:
              ot::Mle::Mle::HandleChildIdResponse(this, v65);
              goto LABEL_67;
            case 0xDu:
              if (ot::Mle::Mle::IsRouterOrLeader(this))
              {
                v35 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::MleRouter>(this);
                ot::Mle::MleRouter::HandleChildUpdateRequest(v35, v65);
              }

              else
              {
                ot::Mle::Mle::HandleChildUpdateRequest(this, v65);
              }

              goto LABEL_67;
            case 0xEu:
              if (ot::Mle::Mle::IsRouterOrLeader(this))
              {
                v36 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::MleRouter>(this);
                ot::Mle::MleRouter::HandleChildUpdateResponse(v36, v65);
              }

              else
              {
                ot::Mle::Mle::HandleChildUpdateResponse(this, v65);
              }

              goto LABEL_67;
            case 0xFu:
              ot::Mle::Mle::HandleAnnounce(this, v65);
              goto LABEL_67;
            case 0x12u:
              ot::Mle::Mle::HandleLinkMetricsManagementRequest(this, v65);
              goto LABEL_67;
            case 0x13u:
              ot::Mle::Mle::HandleLinkMetricsManagementResponse(this, v65);
              goto LABEL_67;
            case 0x14u:
              ot::Mle::Mle::HandleLinkProbe(this, v65);
LABEL_67:
              ot::Mle::Mle::ProcessKeySequence(this, v65);
              break;
            default:
              v69 = 2;
              break;
          }
        }
      }
    }
  }

LABEL_68:
  ot::Ip6::MessageInfo::GetSockAddr(v70);
  result = ot::Ip6::Address::IsMulticast(v43);
  if (result)
  {
    return ot::Message::IsDstPanIdBroadcast(v71);
  }

  return result;
}

void ot::Mle::Mle::HandleCslPeripheralAttachTimer(ot::Mle::Mle *this, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v60 = this;
  ot::Logger::LogAtLevel<(ot::LogLevel)4>(&ot::Mle::kLogModuleName, "Mle::HandleCslPeripheralAttachTimer", a3, a4, a5, a6, a7, a8);
  v57 = *(this + 128);
  if (v57 == 1)
  {
    *(this + 128) = 2;
    v8 = ot::Mle::Mle::WorAttachStateToString(this, *(this + 128));
    ot::Logger::LogAtLevel<(ot::LogLevel)4>(&ot::Mle::kLogModuleName, "mCslPeripheralAttachState = %s, %s", v9, v10, v11, v12, v13, v14, v8, "HandleCslPeripheralAttachTimer");
    TxEndTime = ot::WakeupTxScheduler::GetTxEndTime((this + 72));
    ConnectionWindowUs = ot::WakeupTxScheduler::GetConnectionWindowUs((this + 72));
    v59 = ot::Time::operator+(&TxEndTime, ConnectionWindowUs);
    ot::TimerMicro::FireAt((this + 832), v59);
    v16 = ot::GetProvider<ot::InstanceLocator>::Get<ot::MeshForwarder>(this);
    ot::MeshForwarder::SetRxOnWhenIdle(v16, 1, v17, v18, v19, v20, v21, v22);
    ot::Logger::LogAtLevel<(ot::LogLevel)4>(&ot::Mle::kLogModuleName, "Connection window open", v23, v24, v25, v26, v27, v28);
  }

  else if (v57 == 2)
  {
    *(this + 128) = 0;
    v55 = ot::Mle::Mle::WorAttachStateToString(this, *(this + 128));
    IsRxOnWhenIdle = ot::Mle::Mle::IsRxOnWhenIdle(this);
    ot::Logger::LogAtLevel<(ot::LogLevel)4>(&ot::Mle::kLogModuleName, "mCslPeripheralAttachState = %s, IsRxOnWhenIdle= %d, %s", v30, v31, v32, v33, v34, v35, v55, IsRxOnWhenIdle, "HandleCslPeripheralAttachTimer");
    if (!ot::Mle::Mle::IsRxOnWhenIdle(this))
    {
      v42 = ot::GetProvider<ot::InstanceLocator>::Get<ot::MeshForwarder>(this);
      ot::MeshForwarder::SetRxOnWhenIdle(v42, 0, v43, v44, v45, v46, v47, v48);
    }

    ot::Logger::LogAtLevel<(ot::LogLevel)4>(&ot::Mle::kLogModuleName, "Connection window closed", v36, v37, v38, v39, v40, v41);
    ot::Mle::Mle::SetThreadCoexConfig(this, 0, *(this + 130), *(this + 132));
    if (!ot::Mle::Mle::isThreadRegulatoryCertEnabled(this))
    {
      ot::TimerMicro::Start((this + 8), 0x3E8u);
      ot::Logger::LogAtLevel<(ot::LogLevel)4>(&ot::Mle::kLogModuleName, "Starting Attach Retry timer", v49, v50, v51, v52, v53, v54);
    }
  }
}

void ot::Mle::Mle::HandleAttachTimer(ot::Mle::Mle *this)
{
  v32 = this;
  v31 = 0;
  v30 = 1;
  v29 = 0;
  if ((ot::Mle::Mle::HasAcceptableParentCandidate(this) & 1) != 0 && !ot::Mle::Mle::SendChildIdRequest(this))
  {
    ot::Mle::Mle::SetAttachState(this, 5u);
    v31 = 1250;
    goto LABEL_25;
  }

  v27 = *(this + 132);
  if (!*(this + 132))
  {
    ot::Mle::Mle::ResetAttachCounter(this);
    goto LABEL_25;
  }

  switch(v27)
  {
    case 1:
      ot::Mle::Mle::ProcessAnnounce(this, v1, v2, v3, v4, v5, v6, v7);
      goto LABEL_25;
    case 2:
      v25 = *(this + 74);
      v26 = ot::Mle::Mle::AttachModeToString(*(this + 134));
      v8 = ot::Mle::Mle::ReattachStateToString(*(this + 133));
      ot::Logger::LogAtLevel<(ot::LogLevel)3>(&ot::Mle::kLogModuleName, "Attach attempt %d, %s %s", v9, v10, v11, v12, v13, v14, v25, v26, v8);
      ot::Mle::Mle::SetAttachState(this, 3u);
      ot::Neighbor::SetState(this + 368, 0);
      *(this + 129) &= ~8u;
      *(this + 138) = 0;
      v15 = ot::GetProvider<ot::InstanceLocator>::Get<ot::MeshForwarder>(this);
      ot::MeshForwarder::SetRxOnWhenIdle(v15, 1, v16, v17, v18, v19, v20, v21);
      break;
    case 3:
      break;
    case 4:
LABEL_21:
      if ((v30 & 1) != 0 && !ot::Mle::Mle::GetNextAnnounceChannel(this, this + 141))
      {
        ot::Mle::Mle::SendAnnounce(this, *(this + 141), 1);
        v31 = *(this + 75);
        goto LABEL_25;
      }

      goto LABEL_24;
    case 5:
LABEL_24:
      ot::Mle::Mle::SetAttachState(this, 0);
      ot::Mle::Mle::ParentCandidate::Clear((this + 368));
      v31 = ot::Mle::Mle::Reattach(this);
      goto LABEL_25;
    default:
      goto LABEL_25;
  }

  ++*(this + 138);
  if (ot::Mle::Mle::DetermineParentRequestType(this, &v29, 0))
  {
    v30 = ot::Mle::Mle::PrepareAnnounceState(this);
    if (v30)
    {
      ot::Mle::Mle::SetAttachState(this, 4u);
      ot::Mle::Mle::SendParentRequest(this, 1, v24);
      *(this + 141) = -1;
      v31 = *(this + 75);
      goto LABEL_25;
    }

    goto LABEL_21;
  }

  ot::Mle::Mle::SendParentRequest(this, v29, v22);
  if (v29)
  {
    v23 = 1250;
  }

  else
  {
    v23 = 750;
  }

  v31 = v23;
LABEL_25:
  if (v31)
  {
    ot::TimerMilli::Start((this + 888), v31);
  }
}

uint64_t ot::Mle::Mle::HandleDelayedResponseTimer(ot::Mle::Mle *this)
{
  v13 = this;
  ot::NextFireTime::NextFireTime(&v12);
  v11[2] = this + 352;
  v11[0] = ot::MessageQueue::begin((this + 352));
  v11[1] = v1;
  v10[0] = ot::MessageQueue::end((this + 352));
  v10[1] = v2;
  while (ot::ItemPtrIterator<ot::Message,ot::Message::Iterator>::operator!=(v11, v10))
  {
    v9 = ot::ItemPtrIterator<ot::Message,ot::Message::Iterator>::operator*(v11);
    ot::Mle::Mle::DelayedResponseMetadata::ReadFrom(v7, v9);
    Now = ot::NextFireTime::GetNow(&v12);
    if (ot::Time::operator<(&Now, &v8))
    {
      ot::NextFireTime::UpdateIfEarlier(&v12, v8);
    }

    else
    {
      ot::MessageQueue::Dequeue((this + 352), v9);
      ot::Mle::Mle::SendDelayedResponse(this, v9, v7);
    }

    ot::ItemPtrIterator<ot::Message,ot::Message::Iterator>::operator++(v11, v3);
  }

  return ot::TimerMilli::FireAt((this + 912), &v12);
}

void ot::Mle::Mle::HandleMessageTransmissionTimer(ot::Mle::Mle *this, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v13 = this;
  if (*(this + 130) == 1 && *(this + 143))
  {
    v8 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::MleRouter>(this);
    ot::Mle::MleRouter::SendLinkRequest(v8, 0);
    IgnoreError();
    --*(this + 143);
    ot::Mle::Mle::ScheduleMessageTransmissionTimer(this);
    return;
  }

  if (*(this + 137))
  {
    if (*(this + 137) == 1)
    {
      v10 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Notifier>(this);
      if (ot::Notifier::IsPending(v10))
      {
        ot::Mle::Mle::ScheduleMessageTransmissionTimer(this);
        return;
      }

      *(this + 139) = 0;
    }

    goto LABEL_20;
  }

  if (*(this + 135) == 1)
  {
    if (*(this + 140) < 4u)
    {
      ot::Neighbor::GetExtAddress((this + 192));
      ot::Ip6::Address::SetToLinkLocalAddress(v12, v9);
      if (!ot::Mle::Mle::SendDataRequest(this, v12))
      {
        ++*(this + 140);
      }
    }

    else
    {
      ot::Logger::LogAtLevel<(ot::LogLevel)2>(&ot::Mle::kLogModuleName, "Device becomes detached - reached max data request attempts dataReqAttempts(%d) reached maxChildKeepAliveAttempts(%d)", a3, a4, a5, a6, a7, a8, *(this + 140), 4);
      ot::Mle::Mle::BecomeDetached(this);
      IgnoreError();
    }
  }

  else if (ot::Mle::Mle::IsChild(this) && ot::Mle::Mle::IsRxOnWhenIdle(this))
  {
LABEL_20:
    if (*(this + 139) < 4u)
    {
      if (!ot::Mle::Mle::SendChildUpdateRequest(this))
      {
        ++*(this + 139);
      }
    }

    else
    {
      ot::Logger::LogAtLevel<(ot::LogLevel)2>(&ot::Mle::kLogModuleName, "Device becomes detached - reached max child update attempts childUpdateAttempts(%d) reached maxChildKeepAliveAttempts(%d)", a3, a4, a5, a6, a7, a8, *(this + 139), 4);
      ot::Mle::Mle::BecomeDetached(this);
      IgnoreError();
    }
  }
}

ot::Mle::Mle *ot::Mle::Mle::Mle(ot::Mle::Mle *this, ot::Instance *a2)
{
  ot::InstanceLocator::InstanceLocator(this, a2);
  ot::TimerMicroIn<ot::Mle::Mle,&ot::Mle::Mle::HandleCslPeripheralAttachRetryTimer>::TimerMicroIn((this + 8), a2);
  *(this + 64) = 0;
  *(this + 65) = 0;
  ot::WakeupTxScheduler::WakeupTxScheduler((this + 72), a2);
  *(this + 128) = 0;
  *(this + 129) &= ~1u;
  *(this + 129) &= ~2u;
  *(this + 129) &= ~4u;
  *(this + 129) &= ~8u;
  *(this + 129) &= ~0x10u;
  *(this + 129) &= ~0x20u;
  *(this + 130) = 0;
  ot::Mle::DeviceMode::DeviceMode((this + 131), 8);
  *(this + 132) = 0;
  *(this + 133) = 0;
  *(this + 134) = 0;
  *(this + 135) = 0;
  *(this + 136) = 0;
  *(this + 137) = 0;
  *(this + 138) = 0;
  *(this + 139) = 0;
  *(this + 140) = 0;
  *(this + 141) = 0;
  *(this + 142) = 0;
  *(this + 143) = 0;
  *(this + 72) = -2;
  *(this + 73) = -2;
  *(this + 74) = 0;
  *(this + 75) = 1400;
  *(this + 76) = -1;
  *(this + 39) = 30;
  *(this + 40) = 100;
  *(this + 21) = 0;
  ot::Parent::Parent((this + 192));
  ot::NeighborTable::NeighborTable((this + 344), a2);
  ot::Coap::MessageQueue::MessageQueue((this + 352));
  ot::Mle::Mle::ParentCandidate::ParentCandidate((this + 368));
  ot::Ip6::Udp::SocketIn<ot::Mle::Mle,&ot::Mle::Mle::HandleUdpReceive>::SocketIn((this + 544), a2, this);
  v27 = (this + 688);
  do
  {
    ot::Mle::Mle::ServiceAloc::ServiceAloc(v27);
    v27 = (v27 + 32);
  }

  while (v27 != (this + 784));
  ot::Callback<void (*)(void *,otBackboneRouterDomainPrefixEvent,otIp6Prefix const*),(ot::CallbackContextPosition)0>::Callback(this + 101);
  *(this + 103) = 0;
  ot::TimerMicroIn<ot::Mle::Mle,&ot::Mle::Mle::HandleCslPeripheralAttachTimer>::TimerMicroIn((this + 832), a2);
  *(this + 857) = 0;
  *(this + 872) = 2;
  *(this + 110) = 0;
  ot::TimerMilliIn<ot::Mle::Mle,&ot::Mle::Mle::HandleAttachTimer>::TimerMilliIn((this + 888), a2);
  ot::TimerMilliIn<ot::Mle::Mle,&ot::Mle::Mle::HandleDelayedResponseTimer>::TimerMilliIn((this + 912), a2);
  ot::TimerMilliIn<ot::Mle::Mle,&ot::Mle::Mle::HandleMessageTransmissionTimer>::TimerMilliIn((this + 936), a2);
  ot::TimerMilliIn<ot::Mle::Mle,&ot::Mle::Mle::HandleDetachGracefullyTimer>::TimerMilliIn((this + 960), a2);
  ot::Parent::Init((this + 192), a2);
  ot::Mle::Mle::ParentCandidate::Init((this + 368), a2);
  ot::Clearable<ot::Mle::LeaderData>::Clear(this + 23);
  ot::Parent::Clear((this + 192));
  ot::Mle::Mle::ParentCandidate::Clear((this + 368));
  ot::Mle::Mle::ResetCounters(this);
  ot::Mle::Mle::ResetLinkLossCounters(this);
  ot::Mle::Mle::ResetMleTriggerBasedCounters(this);
  ot::Ip6::Netif::UnicastAddress::InitAsThreadOrigin((this + 992));
  ot::Ip6::Netif::UnicastAddress::GetAddress((this + 992));
  v21 = v2;
  v3 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mac::Mac>(this);
  ExtAddress = ot::Mac::Mac::GetExtAddress(v3);
  ot::Ip6::Address::SetToLinkLocalAddress(v21, ExtAddress);
  ot::Ip6::Netif::UnicastAddress::InitAsThreadOriginMeshLocal((this + 1024));
  ot::Ip6::Netif::UnicastAddress::GetAddress((this + 1024));
  Iid = ot::Ip6::Address::GetIid(v5);
  ot::Ip6::InterfaceIdentifier::GenerateRandom(Iid, v7, v8);
  ot::Ip6::Netif::UnicastAddress::InitAsThreadOriginMeshLocal((this + 1056));
  ot::Ip6::Netif::UnicastAddress::GetAddress((this + 1056));
  v10 = ot::Ip6::Address::GetIid(v9);
  ot::Ip6::InterfaceIdentifier::SetToLocator(v10, 0);
  *(this + 537) = *(this + 537) & 0xFF7F | 0x80;
  ot::Clearable<ot::Ip6::Netif::MulticastAddress>::Clear(this + 136);
  v22 = ot::BigEndian::HostSwap16(0xFF32, v11);
  ot::Ip6::Netif::MulticastAddress::GetAddress((this + 1088));
  *v12 = v22;
  v23 = ot::BigEndian::HostSwap16(1, v13);
  ot::Ip6::Netif::MulticastAddress::GetAddress((this + 1088));
  *(v14 + 14) = v23;
  ot::Clearable<ot::Ip6::Netif::MulticastAddress>::Clear(this + 139);
  v24 = ot::BigEndian::HostSwap16(0xFF33, v15);
  ot::Ip6::Netif::MulticastAddress::GetAddress((this + 1112));
  *v16 = v24;
  v25 = ot::BigEndian::HostSwap16(1, v17);
  ot::Ip6::Netif::MulticastAddress::GetAddress((this + 1112));
  *(v18 + 14) = v25;
  ot::Clearable<ot::Ip6::NetworkPrefix>::Clear(this + 123);
  ot::AsCoreType<otIp6NetworkPrefix>(&ot::Mle::Mle::kMeshLocalPrefixInit);
  ot::Mle::Mle::SetMeshLocalPrefix(this, v19);
  return this;
}

{
  ot::Mle::Mle::Mle(this, a2);
  return this;
}

ot::TimerMilli *ot::TimerMicroIn<ot::Mle::Mle,&ot::Mle::Mle::HandleCslPeripheralAttachRetryTimer>::TimerMicroIn(ot::TimerMilli *a1, ot::Instance *a2)
{
  ot::TimerMicroIn<ot::Mle::Mle,&ot::Mle::Mle::HandleCslPeripheralAttachRetryTimer>::TimerMicroIn(a1, a2);
  return a1;
}

{
  ot::TimerMilli::TimerMilli(a1, a2, ot::TimerMicroIn<ot::Mle::Mle,&ot::Mle::Mle::HandleCslPeripheralAttachRetryTimer>::HandleTimer);
  return a1;
}

ot::Parent *ot::Parent::Parent(ot::Parent *this)
{
  ot::Parent::Parent(this);
  return this;
}

{
  ot::Router::Router(this);
  return this;
}

ot::Mle::Mle::ParentCandidate *ot::Mle::Mle::ParentCandidate::ParentCandidate(ot::Mle::Mle::ParentCandidate *this)
{
  ot::Mle::Mle::ParentCandidate::ParentCandidate(this);
  return this;
}

{
  ot::Parent::Parent(this);
  ot::Mle::RxChallenge::RxChallenge((this + 145));
  return this;
}

ot::InstanceLocator *ot::Ip6::Udp::SocketIn<ot::Mle::Mle,&ot::Mle::Mle::HandleUdpReceive>::SocketIn(ot::InstanceLocator *a1, ot::Instance *a2, uint64_t a3)
{
  ot::Ip6::Udp::SocketIn<ot::Mle::Mle,&ot::Mle::Mle::HandleUdpReceive>::SocketIn(a1, a2, a3);
  return a1;
}

{
  ot::Ip6::Udp::Socket::Socket(a1, a2, ot::Ip6::Udp::SocketIn<ot::Mle::Mle,&ot::Mle::Mle::HandleUdpReceive>::HandleUdpReceive, a3);
  return a1;
}

ot::Mle::Mle::ServiceAloc *ot::Mle::Mle::ServiceAloc::ServiceAloc(ot::Mle::Mle::ServiceAloc *this)
{
  ot::Mle::Mle::ServiceAloc::ServiceAloc(this);
  return this;
}

{
  ot::Ip6::Netif::UnicastAddress::InitAsThreadOriginMeshLocal(this);
  ot::Ip6::Netif::UnicastAddress::GetAddress(this);
  Iid = ot::Ip6::Address::GetIid(v1);
  ot::Ip6::InterfaceIdentifier::SetToLocator(Iid, 0xFFFEu);
  return this;
}

ot::TimerMilli *ot::TimerMicroIn<ot::Mle::Mle,&ot::Mle::Mle::HandleCslPeripheralAttachTimer>::TimerMicroIn(ot::TimerMilli *a1, ot::Instance *a2)
{
  ot::TimerMicroIn<ot::Mle::Mle,&ot::Mle::Mle::HandleCslPeripheralAttachTimer>::TimerMicroIn(a1, a2);
  return a1;
}

{
  ot::TimerMilli::TimerMilli(a1, a2, ot::TimerMicroIn<ot::Mle::Mle,&ot::Mle::Mle::HandleCslPeripheralAttachTimer>::HandleTimer);
  return a1;
}

ot::TimerMilli *ot::TimerMilliIn<ot::Mle::Mle,&ot::Mle::Mle::HandleAttachTimer>::TimerMilliIn(ot::TimerMilli *a1, ot::Instance *a2)
{
  ot::TimerMilliIn<ot::Mle::Mle,&ot::Mle::Mle::HandleAttachTimer>::TimerMilliIn(a1, a2);
  return a1;
}

{
  ot::TimerMilli::TimerMilli(a1, a2, ot::TimerMilliIn<ot::Mle::Mle,&ot::Mle::Mle::HandleAttachTimer>::HandleTimer);
  return a1;
}

ot::TimerMilli *ot::TimerMilliIn<ot::Mle::Mle,&ot::Mle::Mle::HandleDelayedResponseTimer>::TimerMilliIn(ot::TimerMilli *a1, ot::Instance *a2)
{
  ot::TimerMilliIn<ot::Mle::Mle,&ot::Mle::Mle::HandleDelayedResponseTimer>::TimerMilliIn(a1, a2);
  return a1;
}

{
  ot::TimerMilli::TimerMilli(a1, a2, ot::TimerMilliIn<ot::Mle::Mle,&ot::Mle::Mle::HandleDelayedResponseTimer>::HandleTimer);
  return a1;
}

ot::TimerMilli *ot::TimerMilliIn<ot::Mle::Mle,&ot::Mle::Mle::HandleMessageTransmissionTimer>::TimerMilliIn(ot::TimerMilli *a1, ot::Instance *a2)
{
  ot::TimerMilliIn<ot::Mle::Mle,&ot::Mle::Mle::HandleMessageTransmissionTimer>::TimerMilliIn(a1, a2);
  return a1;
}

{
  ot::TimerMilli::TimerMilli(a1, a2, ot::TimerMilliIn<ot::Mle::Mle,&ot::Mle::Mle::HandleMessageTransmissionTimer>::HandleTimer);
  return a1;
}

ot::TimerMilli *ot::TimerMilliIn<ot::Mle::Mle,&ot::Mle::Mle::HandleDetachGracefullyTimer>::TimerMilliIn(ot::TimerMilli *a1, ot::Instance *a2)
{
  ot::TimerMilliIn<ot::Mle::Mle,&ot::Mle::Mle::HandleDetachGracefullyTimer>::TimerMilliIn(a1, a2);
  return a1;
}

{
  ot::TimerMilli::TimerMilli(a1, a2, ot::TimerMilliIn<ot::Mle::Mle,&ot::Mle::Mle::HandleDetachGracefullyTimer>::HandleTimer);
  return a1;
}

_BYTE *ot::Parent::Init(ot::Parent *this, ot::Instance *a2)
{
  ot::Neighbor::Init(this, a2);
  return ot::Mac::CslAccuracy::Init(this + 143);
}

{
  return ot::Parent::Init(this, a2);
}

_BYTE *ot::Mle::Mle::ParentCandidate::Init(ot::Mle::Mle::ParentCandidate *this, ot::Instance *a2)
{
  return ot::Parent::Init(this, a2);
}

{
  return ot::Mle::Mle::ParentCandidate::Init(this, a2);
}

void *ot::Clearable<ot::Mle::LeaderData>::Clear(void *a1)
{
  return ot::ClearAllBytes<ot::Mle::LeaderData>(a1);
}

{
  return ot::Clearable<ot::Mle::LeaderData>::Clear(a1);
}

_BYTE *ot::Mle::Mle::ParentCandidate::Clear(ot::Mle::Mle::ParentCandidate *this)
{
  Instance = ot::InstanceLocator::GetInstance(this);
  ot::ClearAllBytes<ot::Mle::Mle::ParentCandidate>(this);
  return ot::Mle::Mle::ParentCandidate::Init(this, Instance);
}

unint64_t ot::Mle::Mle::ResetCounters(ot::Mle::Mle *this)
{
  ot::ClearAllBytes<otMleCounters>(this + 616);
  v1 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Uptime>(this);
  result = ot::Uptime::GetUptime(v1);
  *(this + 22) = result;
  return result;
}

void *ot::Clearable<ot::Ip6::Netif::MulticastAddress>::Clear(void *a1)
{
  return ot::ClearAllBytes<ot::Ip6::Netif::MulticastAddress>(a1);
}

{
  return ot::Clearable<ot::Ip6::Netif::MulticastAddress>::Clear(a1);
}

void *ot::Clearable<ot::Ip6::NetworkPrefix>::Clear(void *a1)
{
  return ot::ClearAllBytes<ot::Ip6::NetworkPrefix>(a1);
}

{
  return ot::Clearable<ot::Ip6::NetworkPrefix>::Clear(a1);
}

void ot::Mle::Mle::SetMeshLocalPrefix(ot::Mle::Mle *this, const ot::Ip6::NetworkPrefix *a2)
{
  if (ot::Unequatable<ot::Ip6::NetworkPrefix>::operator!=(this + 984, a2))
  {
    *(this + 123) = *a2;
    v2 = ot::GetProvider<ot::InstanceLocator>::Get<ot::ThreadNetif>(this);
    ot::Ip6::Netif::ApplyNewMeshLocalPrefix(v2);
    ot::Ip6::Netif::UnicastAddress::GetAddress((this + 1024));
    ot::Ip6::Address::SetPrefix(v3, this + 123);
    ot::Ip6::Netif::UnicastAddress::GetAddress((this + 1056));
    ot::Ip6::Address::SetPrefix(v4, this + 123);
    ot::Ip6::Netif::MulticastAddress::GetAddress((this + 1088));
    ot::Ip6::Address::SetMulticastNetworkPrefix(v5, this + 984);
    ot::Ip6::Netif::MulticastAddress::GetAddress((this + 1112));
    ot::Ip6::Address::SetMulticastNetworkPrefix(v6, this + 984);
    v7 = ot::GetProvider<ot::InstanceLocator>::Get<ot::BackboneRouter::Local>(this);
    ot::BackboneRouter::Local::ApplyNewMeshLocalPrefix(v7);
    v8 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Notifier>(this);
    ot::Notifier::Signal(v8, 16);
  }
}