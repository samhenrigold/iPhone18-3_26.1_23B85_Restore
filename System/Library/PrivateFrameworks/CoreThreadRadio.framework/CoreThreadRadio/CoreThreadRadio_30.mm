uint64_t ot::Mac::Filter::ApplyToRxFrame(ot::Mac::Filter *this, ot::Mac::RxFrame *a2, const ot::Mac::ExtAddress *a3, ot::Neighbor *a4)
{
  v11 = this;
  v10 = a2;
  v9 = a3;
  v8 = a4;
  v7 = 0;
  v6 = 0;
  v7 = ot::Mac::Filter::Apply(this, a3, &v6);
  if (!v7 && v6 != 127)
  {
    ot::Mac::RxFrame::SetRssi(v10, v6);
    if (v8)
    {
      LinkInfo = ot::Neighbor::GetLinkInfo(v8);
      ot::LinkQualityInfo::ClearAverageRss(LinkInfo);
    }
  }

  return v7;
}

uint64_t ot::Mac::RxFrame::SetRssi(uint64_t this, char a2)
{
  *(this + 29) = a2;
  return this;
}

{
  return ot::Mac::RxFrame::SetRssi(this, a2);
}

_WORD *ot::LinkQualityInfo::ClearAverageRss(ot::LinkQualityInfo *this)
{
  return ot::Clearable<ot::RssAverager>::Clear(this);
}

{
  return ot::LinkQualityInfo::ClearAverageRss(this);
}

void ot::AsNonConst<ot::Mac::Filter::FilterEntry>()
{
  ;
}

{
  ot::AsNonConst<ot::Mac::Filter::FilterEntry>();
}

void ot::AsConst<ot::Mac::Filter>()
{
  ;
}

{
  ot::AsConst<ot::Mac::Filter>();
}

_WORD *ot::Clearable<ot::RssAverager>::Clear(_WORD *a1)
{
  return ot::ClearAllBytes<ot::RssAverager>(a1);
}

{
  return ot::Clearable<ot::RssAverager>::Clear(a1);
}

_WORD *ot::ClearAllBytes<ot::RssAverager>(_WORD *result)
{
  *result = 0;
  return result;
}

{
  return ot::ClearAllBytes<ot::RssAverager>(result);
}

uint64_t ot::String<(unsigned short)17>::String(uint64_t a1)
{
  ot::String<(unsigned short)17>::String(a1);
  return a1;
}

{
  ot::StringWriter::StringWriter(a1, (a1 + 12), 17);
  return a1;
}

ot::MeshCoP::ExtendedPanIdManager *ot::MeshCoP::ExtendedPanIdManager::ExtendedPanIdManager(ot::MeshCoP::ExtendedPanIdManager *this, ot::Instance *a2)
{
  ot::InstanceLocator::InstanceLocator(this, a2);
  ot::Clearable<ot::MeshCoP::ExtendedPanId>::Clear(this);
  ot::AsCoreType<otExtendedPanId>(&ot::MeshCoP::ExtendedPanIdManager::sExtendedPanidInit);
  ot::MeshCoP::ExtendedPanIdManager::SetExtPanId(this, v2);
  return this;
}

{
  ot::MeshCoP::ExtendedPanIdManager::ExtendedPanIdManager(this, a2);
  return this;
}

void *ot::Clearable<ot::MeshCoP::ExtendedPanId>::Clear(void *a1)
{
  return ot::ClearAllBytes<ot::MeshCoP::ExtendedPanId>(a1);
}

{
  return ot::Clearable<ot::MeshCoP::ExtendedPanId>::Clear(a1);
}

void ot::MeshCoP::ExtendedPanIdManager::SetExtPanId(ot::MeshCoP::ExtendedPanIdManager *this, const ot::MeshCoP::ExtendedPanId *a2)
{
  v2 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Notifier>(this);
  ot::Notifier::Update<ot::MeshCoP::ExtendedPanId>(v2, this, a2, 0x20000);
  IgnoreError();
}

uint64_t ot::Notifier::Update<ot::MeshCoP::ExtendedPanId>(void *a1, void *a2, void *a3, uint64_t a4)
{
  v6 = 0;
  if (ot::Equatable<ot::MeshCoP::ExtendedPanId>::operator==(a2, a3))
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
  return ot::Notifier::Update<ot::MeshCoP::ExtendedPanId>(a1, a2, a3, a4);
}

void *ot::ClearAllBytes<ot::MeshCoP::ExtendedPanId>(void *result)
{
  *result = 0;
  return result;
}

{
  return ot::ClearAllBytes<ot::MeshCoP::ExtendedPanId>(result);
}

BOOL ot::Equatable<ot::MeshCoP::ExtendedPanId>::operator==(const void *a1, const void *a2)
{
  return memcmp(a1, a2, 8uLL) == 0;
}

{
  return ot::Equatable<ot::MeshCoP::ExtendedPanId>::operator==(a1, a2);
}

uint64_t ot::Mac::Frame::AppendHeaderIeAt<ot::Mac::CstIe>(ot::Mac::Frame *a1, unsigned __int8 *a2)
{
  inited = ot::Mac::Frame::InitIeHeaderAt(a1, a2, 0, 8);
  if (!inited)
  {
    ot::Mac::Frame::InitIeContentAt<ot::Mac::CstIe>(a1, a2, v2);
  }

  return inited;
}

{
  return ot::Mac::Frame::AppendHeaderIeAt<ot::Mac::CstIe>(a1, a2);
}

uint64_t ot::Mac::Frame::InitIeHeaderAt(ot::Mac::Frame *this, unsigned __int8 *a2, unsigned __int8 a3, char a4)
{
  v7 = 0;
  ot::Mac::Frame::SetIePresent(this, 1u);
  if (!*a2)
  {
    *a2 = ot::Mac::Frame::FindHeaderIeIndex(this, v4);
  }

  if (*a2 == 255)
  {
    return 23;
  }

  else
  {
    ot::Mac::HeaderIe::Init((*this + *a2), a3, a4);
    *a2 += 2;
    *(this + 4) += a4 + 2;
  }

  return v7;
}

uint64_t ot::Mac::Frame::InitIeContentAt<ot::Mac::CstIe>(void *a1, _BYTE *a2, unsigned __int8 *a3)
{
  v4 = (*a1 + *a2);
  ot::Mac::VendorIeHeader::SetVendorOui(v4, 0xEAB89Bu, a3);
  result = ot::Mac::VendorIeHeader::SetSubType(v4, 2);
  *a2 += 8;
  return result;
}

uint64_t ot::Mac::Frame::AppendHeaderIeAt<ot::Mac::RendezvousTimeIe>(ot::Mac::Frame *a1, unsigned __int8 *a2)
{
  inited = ot::Mac::Frame::InitIeHeaderAt(a1, a2, 0x1Du, 2);
  if (!inited)
  {
    ot::Mac::Frame::InitIeContentAt<ot::Mac::RendezvousTimeIe>(a1, a2);
  }

  return inited;
}

{
  return ot::Mac::Frame::AppendHeaderIeAt<ot::Mac::RendezvousTimeIe>(a1, a2);
}

uint64_t ot::Mac::Frame::AppendHeaderIeAt<ot::Mac::ConnectionIe>(ot::Mac::Frame *a1, unsigned __int8 *a2)
{
  inited = ot::Mac::Frame::InitIeHeaderAt(a1, a2, 0, 5);
  if (!inited)
  {
    ot::Mac::Frame::InitIeContentAt<ot::Mac::ConnectionIe>(a1, a2, v2);
  }

  return inited;
}

{
  return ot::Mac::Frame::AppendHeaderIeAt<ot::Mac::ConnectionIe>(a1, a2);
}

uint64_t ot::Mac::Frame::InitIeContentAt<ot::Mac::ConnectionIe>(void *a1, _BYTE *a2, unsigned __int8 *a3)
{
  result = ot::Mac::ConnectionIe::Init((*a1 + *a2), a2, a3);
  *a2 += 5;
  return result;
}

uint64_t ot::Mac::Frame::AppendHeaderIeAt<ot::Mac::CslIe>(ot::Mac::Frame *a1, unsigned __int8 *a2)
{
  inited = ot::Mac::Frame::InitIeHeaderAt(a1, a2, 0x1Au, 4);
  if (!inited)
  {
    ot::Mac::Frame::InitIeContentAt<ot::Mac::CslIe>(a1, a2);
  }

  return inited;
}

{
  return ot::Mac::Frame::AppendHeaderIeAt<ot::Mac::CslIe>(a1, a2);
}

uint64_t ot::Mac::Frame::AppendHeaderIeAt<ot::Mac::Termination2Ie>(ot::Mac::Frame *a1, unsigned __int8 *a2)
{
  inited = ot::Mac::Frame::InitIeHeaderAt(a1, a2, 0x7Fu, 0);
  if (!inited)
  {
    ot::Mac::Frame::InitIeContentAt<ot::Mac::Termination2Ie>();
  }

  return inited;
}

{
  return ot::Mac::Frame::AppendHeaderIeAt<ot::Mac::Termination2Ie>(a1, a2);
}

_BYTE *ot::Mac::HeaderIe::Init(ot::Mac::HeaderIe *this, unsigned __int16 a2, char a3)
{
  ot::Mac::HeaderIe::Init(this);
  ot::Mac::HeaderIe::SetId(this, a2);
  return ot::Mac::HeaderIe::SetLength(this, a3);
}

_WORD *ot::Mac::HeaderIe::Init(_WORD *this)
{
  *this = 0;
  return this;
}

{
  return ot::Mac::HeaderIe::Init(this);
}

uint64_t ot::Mac::HeaderIe::SetId(ot::Mac::HeaderIe *this, unsigned __int16 a2)
{
  v2 = ot::LittleEndian::HostSwap16(*this);
  result = ot::LittleEndian::HostSwap16(v2 & 0x807F | (a2 << 7) & 0x7F80u);
  *this = result;
  return result;
}

{
  return ot::Mac::HeaderIe::SetId(this, a2);
}

_BYTE *ot::Mac::HeaderIe::SetLength(_BYTE *this, char a2)
{
  *this = *this & 0x80 | a2 & 0x7F;
  return this;
}

{
  return ot::Mac::HeaderIe::SetLength(this, a2);
}

uint64_t ot::Mac::Frame::InitMacHeader(ot::Mac::Frame *a1, __int16 a2, __int16 a3, ot::Mac::Address *a4, ot::Mac::PanIds *a5, char a6, char a7)
{
  v32 = a1;
  v31 = a2;
  v30 = a3;
  v29 = a4;
  v28 = a5;
  v27 = a6;
  v26 = a7;
  v25 = a2 | a3;
  Type = ot::Mac::Address::GetType(a4);
  if (Type)
  {
    if (Type == 1)
    {
      v25 |= 0x8000u;
    }

    else if (Type == 2)
    {
      v25 |= 0xC000u;
    }
  }

  v20 = ot::Mac::Address::GetType((v29 + 10));
  if (v20)
  {
    if (v20 == 1)
    {
      v25 |= 0x800u;
      if (ot::Mac::Address::GetShort((v29 + 10)) == 0xFFFF)
      {
        v7 = 0;
      }

      else
      {
        v7 = 32;
      }

      v25 |= v7;
    }

    else if (v20 == 2)
    {
      v25 |= 0xC20u;
    }
  }

  if (v31 == 2)
  {
    v25 &= ~0x20u;
  }

  if (v27)
  {
    v8 = 8;
  }

  else
  {
    v8 = 0;
  }

  v25 |= v8;
  if (!v30 || v30 == 4096)
  {
    if (!ot::Mac::Address::IsNone(v29) && !ot::Mac::Address::IsNone((v29 + 10)))
    {
      Source = ot::Mac::PanIds::GetSource(v28);
      if (Source == ot::Mac::PanIds::GetDestination(v28))
      {
        v25 |= 0x40u;
      }
    }
  }

  else if (v30 == 0x2000)
  {
    if (ot::Mac::Address::IsNone((v29 + 10)))
    {
      if (ot::Mac::Address::IsNone(v29) && (ot::Mac::PanIds::IsDestinationPresent(v28) & 1) != 0 || !ot::Mac::Address::IsNone(v29) && (ot::Mac::PanIds::IsDestinationPresent(v28) & 1) == 0 && (ot::Mac::PanIds::IsSourcePresent(v28) & 1) == 0)
      {
        v25 |= 0x40u;
      }
    }

    else if (ot::Mac::Address::IsNone(v29))
    {
      if ((ot::Mac::PanIds::IsDestinationPresent(v28) & 1) == 0)
      {
        v25 |= 0x40u;
      }
    }

    else
    {
      if (ot::Mac::Address::IsExtended(v29) && ot::Mac::Address::IsExtended((v29 + 10)))
      {
        if (ot::Mac::PanIds::IsDestinationPresent(v28))
        {
          goto LABEL_50;
        }
      }

      else
      {
        v18 = ot::Mac::PanIds::GetSource(v28);
        if (v18 != ot::Mac::PanIds::GetDestination(v28))
        {
          goto LABEL_50;
        }
      }

      v25 |= 0x40u;
    }
  }

LABEL_50:
  v17 = *a1;
  Mtu = ot::Mac::Frame::GetMtu(a1);
  ot::FrameBuilder::Init(v24, v17, Mtu);
  ot::FrameBuilder::AppendLittleEndianUint16(v24, v25);
  IgnoreError();
  ot::FrameBuilder::AppendUint8(v24, 0);
  IgnoreError();
  if (ot::Mac::Frame::IsDstPanIdPresent(v25, v10))
  {
    Destination = ot::Mac::PanIds::GetDestination(v28);
    ot::FrameBuilder::AppendLittleEndianUint16(v24, Destination);
    IgnoreError();
  }

  ot::FrameBuilder::AppendMacAddress(v24, (v29 + 10));
  IgnoreError();
  if (ot::Mac::Frame::IsSrcPanIdPresent(v25, v12, v13, v14))
  {
    v15 = ot::Mac::PanIds::GetSource(v28);
    ot::FrameBuilder::AppendLittleEndianUint16(v24, v15);
    IgnoreError();
  }

  ot::FrameBuilder::AppendMacAddress(v24, v29);
  IgnoreError();
  *(a1 + 4) = ot::FrameBuilder::GetLength(v24);
  if (v27)
  {
    v23 = v27 | v26;
    ot::FrameBuilder::AppendUint8(v24, v27 | v26);
    IgnoreError();
    *(a1 + 4) += ot::Mac::Frame::CalculateSecurityHeaderSize(v23);
    *(a1 + 4) += ot::Mac::Frame::CalculateMicSize(v23);
  }

  if (v31 == 3)
  {
    ++*(a1 + 4);
  }

  result = ot::Mac::Frame::GetFcsSize(a1);
  *(a1 + 4) += result;
  return result;
}

uint64_t ot::Mac::PanIds::GetSource(ot::Mac::PanIds *this)
{
  return *this;
}

{
  return ot::Mac::PanIds::GetSource(this);
}

uint64_t ot::Mac::PanIds::GetDestination(ot::Mac::PanIds *this)
{
  return *(this + 1);
}

{
  return ot::Mac::PanIds::GetDestination(this);
}

uint64_t ot::Mac::PanIds::IsDestinationPresent(ot::Mac::PanIds *this)
{
  return *(this + 5) & 1;
}

{
  return ot::Mac::PanIds::IsDestinationPresent(this);
}

uint64_t ot::Mac::PanIds::IsSourcePresent(ot::Mac::PanIds *this)
{
  return *(this + 4) & 1;
}

{
  return ot::Mac::PanIds::IsSourcePresent(this);
}

uint64_t ot::Mac::Frame::GetMtu(ot::Mac::Frame *this)
{
  return 127;
}

{
  return ot::Mac::Frame::GetMtu(this);
}

BOOL ot::Mac::Frame::IsDstPanIdPresent(ot::Mac::Frame *this, unsigned __int16 a2)
{
  v8 = this;
  v7 = 1;
  if (ot::Mac::Frame::IsMultipurpose(this))
  {
    return (v8 & 0x100) != 0;
  }

  else if (ot::Mac::Frame::IsVersion2015(v8))
  {
    v6 = v8 & 0xCC40;
    if ((v8 & 0xCC40) == 0 || v6 == 2112 || v6 == 3136 || v6 == 0x8000 || v6 == 32832 || v6 == 49152 || v6 == 49216 || v6 == 52288)
    {
      return 0;
    }
  }

  else
  {
    return ot::Mac::Frame::IsDstAddrPresent(v8, v2, v3, v4);
  }

  return v7;
}

{
  FrameControlField = ot::Mac::Frame::GetFrameControlField(this, a2);
  return ot::Mac::Frame::IsDstPanIdPresent(FrameControlField, v3);
}

{
  return ot::Mac::Frame::IsDstPanIdPresent(this, a2);
}

BOOL ot::Mac::Frame::IsSrcPanIdPresent(ot::Mac::Frame *this, unsigned __int16 a2, uint64_t a3, unsigned __int16 a4)
{
  v7 = this;
  v5 = 0;
  if (ot::Mac::Frame::IsSrcAddrPresent(this, a2, a3, a4))
  {
    v5 = (v7 & 0x40) == 0;
  }

  v6 = v5;
  if (ot::Mac::Frame::IsMultipurpose(v7))
  {
    return 0;
  }

  else if (ot::Mac::Frame::IsVersion2015(v7) && (v7 & 0xCC00) == 0xCC00)
  {
    return 0;
  }

  return v6;
}

uint64_t ot::FrameBuilder::GetLength(ot::FrameBuilder *this)
{
  return *(this + 4);
}

{
  return ot::FrameBuilder::GetLength(this);
}

uint64_t ot::Mac::Frame::CalculateSecurityHeaderSize(ot::Mac::Frame *this)
{
  v3 = 5;
  if ((this & 7) != 0)
  {
    v2 = this & 0x18;
    if ((this & 0x18) != 0)
    {
      switch(v2)
      {
        case 8:
          return 6;
        case 16:
          return 10;
        case 24:
          return 14;
      }
    }
  }

  else
  {
    return -1;
  }

  return v3;
}

uint64_t ot::Mac::Frame::CalculateMicSize(ot::Mac::Frame *this)
{
  v3 = 0;
  v2 = this & 7;
  if ((this & 7) != 0)
  {
    switch(v2)
    {
      case 1:
        return 4;
      case 2:
        return 8;
      case 3:
        return 16;
    }

    if (v2 != 4)
    {
      if (v2 != 5)
      {
        if (v2 != 6)
        {
          if (v2 != 7)
          {
            return v3;
          }

          return 16;
        }

        return 8;
      }

      return 4;
    }
  }

  return 0;
}

uint64_t ot::Mac::Frame::GetFcsSize(ot::Mac::Frame *this)
{
  return 2;
}

{
  return ot::Mac::Frame::GetFcsSize(this);
}

uint64_t ot::Mac::Frame::ValidatePsdu(ot::Mac::Frame *this)
{
  v3[4] = 0;
  *v3 = ot::Mac::Frame::FindPayloadIndex(this);
  if (v3[0] == 255)
  {
    *&v3[1] = 6;
  }

  else if ((v3[0] + ot::Mac::Frame::GetFooterLength(this)) > *(this + 4))
  {
    *&v3[1] = 6;
  }

  return *&v3[1];
}

uint64_t ot::Mac::Frame::FindPayloadIndex(ot::Mac::Frame *this)
{
  v9 = ot::Mac::Frame::SkipSecurityHeaderIndex(this);
  if (v9 != 255)
  {
    if (ot::Mac::Frame::IsIePresent(this, v1))
    {
      FooterLength = ot::Mac::Frame::GetFooterLength(this);
      while (1)
      {
        v7 = (*this + v9);
        v10 = v9 + 2;
        if (v10 + FooterLength > *(this + 4))
        {
          LOBYTE(v9) = -1;
          return v9;
        }

        v9 = v10 + ot::Mac::HeaderIe::GetLength(v7);
        if (v9 + FooterLength > *(this + 4))
        {
          break;
        }

        if (ot::Mac::HeaderIe::GetId(v7, v3) == 127 || v9 + FooterLength >= *(this + 4))
        {
          goto LABEL_10;
        }
      }

      LOBYTE(v9) = -1;
    }

    else
    {
LABEL_10:
      if (!ot::Mac::Frame::IsVersion2015(this, v2) && (ot::Mac::Frame::GetFrameControlField(this, v4) & 7) == 3)
      {
        LOBYTE(v9) = v9 + 1;
      }
    }
  }

  return v9;
}

uint64_t ot::Mac::Frame::GetFooterLength(ot::Mac::Frame *this)
{
  FcsSize = ot::Mac::Frame::GetFcsSize(this);
  SecurityHeaderIndex = ot::Mac::Frame::FindSecurityHeaderIndex(this, v1);
  if (SecurityHeaderIndex != 255)
  {
    FcsSize += ot::Mac::Frame::CalculateMicSize(*(*this + SecurityHeaderIndex));
  }

  return FcsSize;
}

uint64_t ot::Mac::Frame::IsWakeupFrame(ot::Mac::Frame *this, unsigned __int16 a2)
{
  v13 = this;
  FrameControlField = ot::Mac::Frame::GetFrameControlField(this, a2);
  v11 = 0;
  v10 = 0;
  HeaderIeIndex = 0;
  HeaderIe = 0;
  ThreadIe = 0;
  ot::Mac::Address::Address(v6);
  if (!ot::Mac::Frame::GetKeyIdMode(this, &v10) && v10 == 16 && (FrameControlField & 7) == 5 && (FrameControlField & 0x4000) == 0)
  {
    HeaderIe = ot::Mac::Frame::GetHeaderIe(this, 0x1Du);
    if (HeaderIe)
    {
      ThreadIe = ot::Mac::Frame::GetThreadIe(this, 1u);
      if (ThreadIe)
      {
        HeaderIeIndex = ot::Mac::Frame::FindHeaderIeIndex(this, v2);
        v4 = *this + HeaderIeIndex + 11;
        if (v4 == ot::Mac::Frame::GetFooter(this) && !ot::Mac::Frame::GetSrcAddr(this, v6) && ot::Mac::Address::IsExtended(v6))
        {
          v11 = 1;
        }
      }
    }
  }

  return v11 & 1;
}

uint64_t ot::Mac::Frame::GetKeyIdMode(ot::Mac::Frame *this, unsigned __int8 *a2)
{
  v4[4] = 0;
  *v4 = ot::Mac::Frame::FindSecurityHeaderIndex(this, a2);
  if (v4[0] == 255)
  {
    *&v4[1] = 6;
  }

  else
  {
    *a2 = *(*this + v4[0]) & 0x18;
  }

  return *&v4[1];
}

uint64_t ot::Mac::Frame::GetHeaderIe(ot::Mac::Frame *this, unsigned __int16 a2)
{
  v9 = a2;
  HeaderIeIndex = ot::Mac::Frame::FindHeaderIeIndex(this, a2);
  PayloadIndex = ot::Mac::Frame::FindPayloadIndex(this);
  v6 = 0;
  if (HeaderIeIndex != 255 && PayloadIndex != 255)
  {
    while (HeaderIeIndex <= PayloadIndex)
    {
      v5 = (*this + HeaderIeIndex);
      if (ot::Mac::HeaderIe::GetId(v5, v2) == v9)
      {
        return *this + HeaderIeIndex;
      }

      HeaderIeIndex += ot::Mac::HeaderIe::GetLength(v5) + 2;
    }
  }

  return v6;
}

uint64_t ot::Mac::Frame::GetThreadIe(ot::Mac::Frame *this, unsigned __int16 a2)
{
  v10 = a2;
  HeaderIeIndex = ot::Mac::Frame::FindHeaderIeIndex(this, a2);
  PayloadIndex = ot::Mac::Frame::FindPayloadIndex(this);
  v7 = 0;
  if (HeaderIeIndex != 255 && PayloadIndex != 255)
  {
    while (HeaderIeIndex <= PayloadIndex)
    {
      v6 = (*this + HeaderIeIndex);
      if (!ot::Mac::HeaderIe::GetId(v6, v2) && ot::Mac::VendorIeHeader::GetVendorOui((v6 + 2), v3) == 15382683 && ot::Mac::VendorIeHeader::GetSubType((v6 + 2)) == v10)
      {
        return *this + HeaderIeIndex;
      }

      HeaderIeIndex += ot::Mac::HeaderIe::GetLength(v6) + 2;
    }
  }

  return v7;
}

uint64_t ot::Mac::Frame::FindHeaderIeIndex(ot::Mac::Frame *this, unsigned __int16 a2)
{
  if (ot::Mac::Frame::IsIePresent(this, a2))
  {
    return ot::Mac::Frame::SkipSecurityHeaderIndex(this);
  }

  else
  {
    return -1;
  }
}

uint64_t ot::Mac::Frame::GetFooter(ot::Mac::Frame *this)
{
  v2 = *this;
  v3 = *(this + 4);
  return v2 + v3 - ot::Mac::Frame::GetFooterLength(this);
}

uint64_t ot::Mac::Frame::GetSrcAddr(ot::Mac::Frame *this, ot::Mac::Address *a2)
{
  v10[4] = 0;
  *v10 = ot::Mac::Frame::FindSrcAddrIndex(this, a2);
  FrameControlField = ot::Mac::Frame::GetFrameControlField(this, v2);
  if (v10[0] == 255)
  {
    *&v10[1] = 6;
  }

  else
  {
    FcfSrcAddr = ot::Mac::Frame::GetFcfSrcAddr(FrameControlField, v3);
    if (FcfSrcAddr)
    {
      if (FcfSrcAddr == 2)
      {
        Uint16 = ot::LittleEndian::ReadUint16((*this + v10[0]), v4);
        ot::Mac::Address::SetShort(a2, Uint16);
      }

      else if (FcfSrcAddr == 3)
      {
        ot::Mac::Address::SetExtended(a2, (*this + v10[0]), 1);
      }

      else
      {
        *&v10[1] = 6;
      }
    }

    else
    {
      ot::Mac::Address::SetNone(a2);
    }
  }

  return *&v10[1];
}

BOOL ot::Mac::Frame::SetAckRequest(ot::Mac::Frame *this, unsigned __int16 a2)
{
  v4 = a2;
  result = ot::Mac::Frame::IsMultipurpose(**this);
  if (result)
  {
    if ((**this & 8) == 0)
    {
      __assert_rtn("SetAckRequest", "mac_frame.cpp", 303, "mPsdu[0] & kMpFcfLongFrame");
    }

    if (v4)
    {
      *(*this + 1) |= 0x40u;
    }

    else
    {
      *(*this + 1) &= ~0x40u;
    }
  }

  else if (v4)
  {
    **this |= 0x20u;
  }

  else
  {
    **this &= ~0x20u;
  }

  return result;
}

BOOL ot::Mac::Frame::SetFramePending(ot::Mac::Frame *this, unsigned __int16 a2)
{
  v4 = a2;
  result = ot::Mac::Frame::IsMultipurpose(**this);
  if (result)
  {
    if ((**this & 8) == 0)
    {
      __assert_rtn("SetFramePending", "mac_frame.cpp", 333, "mPsdu[0] & kMpFcfLongFrame");
    }

    if (v4)
    {
      *(*this + 1) |= 8u;
    }

    else
    {
      *(*this + 1) &= ~8u;
    }
  }

  else if (v4)
  {
    **this |= 0x10u;
  }

  else
  {
    **this &= ~0x10u;
  }

  return result;
}

uint64_t ot::Mac::Frame::SetIePresent(ot::Mac::Frame *this, unsigned __int16 a2)
{
  v7 = a2;
  FrameControlField = ot::Mac::Frame::GetFrameControlField(this, a2);
  if (v7)
  {
    v6 = FrameControlField | 0x200;
  }

  else
  {
    v6 = FrameControlField & 0xFDFF;
  }

  return ot::Mac::Frame::SetFrameControlField(this, v6, v2);
}

uint64_t ot::Mac::Frame::SkipDsnIndex(ot::Mac::Frame *this, unsigned __int16 a2)
{
  FrameControlField = ot::Mac::Frame::GetFrameControlField(this, a2);
  FcfSize = ot::Mac::Frame::GetFcfSize(FrameControlField, v2);
  if (ot::Mac::Frame::IsDsnPresent(FrameControlField, v3, v4, v5))
  {
    ++FcfSize;
  }

  return FcfSize;
}

BOOL ot::Mac::Frame::IsDsnPresent(ot::Mac::Frame *this, unsigned __int16 a2, uint64_t a3, unsigned __int16 a4)
{
  return ot::Mac::Frame::GetFcfBit(this, 0x100u, 1024) == 0;
}

{
  return ot::Mac::Frame::IsDsnPresent(this, a2, a3, a4);
}

uint64_t ot::Mac::Frame::FindDstPanIdIndex(ot::Mac::Frame *this, unsigned __int16 a2)
{
  if (ot::Mac::Frame::IsDstPanIdPresent(this, a2))
  {
    return ot::Mac::Frame::SkipDsnIndex(this, v2);
  }

  else
  {
    return -1;
  }
}

BOOL ot::Mac::Frame::IsDstAddrPresent(ot::Mac::Frame *this, unsigned __int16 a2, uint64_t a3, unsigned __int16 a4)
{
  return ot::Mac::Frame::GetFcfBit(this, 0xC00u, 48) != 0;
}

{
  return ot::Mac::Frame::IsDstAddrPresent(this, a2, a3, a4);
}

uint64_t ot::Mac::Frame::GetDstPanId(ot::Mac::Frame *this, unsigned __int16 *a2)
{
  v5[4] = 0;
  *v5 = ot::Mac::Frame::FindDstPanIdIndex(this, a2);
  if (v5[0] == 255)
  {
    *&v5[1] = 6;
  }

  else
  {
    *a2 = ot::LittleEndian::ReadUint16((*this + v5[0]), v2);
  }

  return *&v5[1];
}

uint64_t ot::LittleEndian::ReadUint16(ot::LittleEndian *this, const unsigned __int8 *a2)
{
  return (*this | (*(this + 1) << 8));
}

{
  return ot::LittleEndian::ReadUint16(this, a2);
}

uint64_t ot::Mac::Frame::SetDstPanId(ot::Mac::Frame *this, unsigned __int16 a2)
{
  DstPanIdIndex = ot::Mac::Frame::FindDstPanIdIndex(this, a2);
  if (DstPanIdIndex == 255)
  {
    __assert_rtn("SetDstPanId", "mac_frame.cpp", 475, "index != kInvalidIndex");
  }

  return ot::LittleEndian::WriteUint16(a2, (*this + DstPanIdIndex), v2);
}

uint64_t ot::Mac::Frame::FindDstAddrIndex(ot::Mac::Frame *this, unsigned __int16 a2)
{
  v6 = ot::Mac::Frame::SkipDsnIndex(this, a2);
  IsDstPanIdPresent = ot::Mac::Frame::IsDstPanIdPresent(this, v6);
  v3 = 2;
  if (!IsDstPanIdPresent)
  {
    v3 = 0;
  }

  return (v3 + v6);
}

uint64_t ot::Mac::Frame::GetDstAddr(ot::Mac::Frame *this, ot::Mac::Address *a2)
{
  v10[4] = 0;
  *v10 = ot::Mac::Frame::FindDstAddrIndex(this, a2);
  if (v10[0] == 255)
  {
    *&v10[1] = 6;
  }

  else
  {
    FrameControlField = ot::Mac::Frame::GetFrameControlField(this, v2);
    FcfDstAddr = ot::Mac::Frame::GetFcfDstAddr(FrameControlField, v4);
    if (FcfDstAddr == 2)
    {
      Uint16 = ot::LittleEndian::ReadUint16((*this + v10[0]), v5);
      ot::Mac::Address::SetShort(a2, Uint16);
    }

    else if (FcfDstAddr == 3)
    {
      ot::Mac::Address::SetExtended(a2, (*this + v10[0]), 1);
    }

    else
    {
      ot::Mac::Address::SetNone(a2);
    }
  }

  return *&v10[1];
}

uint64_t ot::Mac::Frame::GetFcfDstAddr(ot::Mac::Frame *this, unsigned __int16 a2)
{
  v3 = this;
  if (ot::Mac::Frame::IsMultipurpose(this))
  {
    return (v3 & 0x30) >> 4;
  }

  else
  {
    return (v3 & 0xC00) >> 10;
  }
}

{
  return ot::Mac::Frame::GetFcfDstAddr(this, a2);
}

char *ot::Mac::Address::SetExtended(char *a1, void *a2, char a3)
{
  result = ot::Mac::ExtAddress::Set(a1, a2, a3);
  a1[8] = 2;
  return result;
}

{
  return ot::Mac::Address::SetExtended(a1, a2, a3);
}

uint64_t ot::Mac::Frame::SetDstAddr(ot::Mac::Frame *this, unsigned __int16 a2)
{
  if ((ot::Mac::Frame::GetFrameControlField(this, a2) & 0xC00) != 0x800)
  {
    __assert_rtn("SetDstAddr", "mac_frame.cpp", 513, "(GetFrameControlField() & kFcfDstAddrMask) == kFcfDstAddrShort");
  }

  v6 = *this;
  DstAddrIndex = ot::Mac::Frame::FindDstAddrIndex(this, v2);
  return ot::LittleEndian::WriteUint16(a2, (v6 + DstAddrIndex), v4);
}

char *ot::Mac::Frame::SetDstAddr(ot::Mac::Frame *this, const ot::Mac::ExtAddress *a2)
{
  DstAddrIndex = ot::Mac::Frame::FindDstAddrIndex(this, a2);
  FrameControlField = ot::Mac::Frame::GetFrameControlField(this, v2);
  if (ot::Mac::Frame::GetFcfDstAddr(FrameControlField, v4) != 3)
  {
    __assert_rtn("SetDstAddr", "mac_frame.cpp", 521, "GetFcfDstAddr(GetFrameControlField()) == kFcfAddrExt");
  }

  if (DstAddrIndex == 255)
  {
    __assert_rtn("SetDstAddr", "mac_frame.cpp", 522, "index != kInvalidIndex");
  }

  return ot::Mac::ExtAddress::CopyTo(a2, (*this + DstAddrIndex), 1);
}

char *ot::Mac::ExtAddress::CopyTo(void *a1, char *a2, char a3)
{
  return ot::Mac::ExtAddress::CopyAddress(a2, a1, a3);
}

{
  return ot::Mac::ExtAddress::CopyTo(a1, a2, a3);
}

char *ot::Mac::Frame::SetDstAddr(ot::Mac::Frame *this, const ot::Mac::Address *a2)
{
  Type = ot::Mac::Address::GetType(a2);
  if (Type == 1)
  {
    Short = ot::Mac::Address::GetShort(a2);
    return ot::Mac::Frame::SetDstAddr(this, Short);
  }

  else
  {
    if (Type != 2)
    {
      __assert_rtn("SetDstAddr", "mac_frame.cpp", 540, "false");
    }

    ot::Mac::Address::GetExtended(a2);
    return ot::Mac::Frame::SetDstAddr(this, v4);
  }
}

uint64_t ot::Mac::Frame::FindSrcPanIdIndex(ot::Mac::Frame *this, unsigned __int16 a2)
{
  FrameControlField = ot::Mac::Frame::GetFrameControlField(this, a2);
  if (ot::Mac::Frame::IsSrcPanIdPresent(FrameControlField, v2, v3, v4))
  {
    v11 = ot::Mac::Frame::SkipDsnIndex(this, v5);
    if (ot::Mac::Frame::IsDstPanIdPresent(FrameControlField, v6))
    {
      v11 += 2;
    }

    FcfDstAddr = ot::Mac::Frame::GetFcfDstAddr(FrameControlField, v7);
    if (FcfDstAddr == 2)
    {
      v11 += 2;
    }

    else if (FcfDstAddr == 3)
    {
      v11 += 8;
    }
  }

  else
  {
    return -1;
  }

  return v11;
}

BOOL ot::Mac::Frame::IsSrcAddrPresent(ot::Mac::Frame *this, unsigned __int16 a2, uint64_t a3, unsigned __int16 a4)
{
  return ot::Mac::Frame::GetFcfBit(this, 0xC000u, 192) != 0;
}

{
  return ot::Mac::Frame::IsSrcAddrPresent(this, a2, a3, a4);
}

uint64_t ot::Mac::Frame::GetSrcPanId(ot::Mac::Frame *this, unsigned __int16 *a2)
{
  v5[4] = 0;
  *v5 = ot::Mac::Frame::FindSrcPanIdIndex(this, a2);
  if (v5[0] == 255)
  {
    *&v5[1] = 6;
  }

  else
  {
    *a2 = ot::LittleEndian::ReadUint16((*this + v5[0]), v2);
  }

  return *&v5[1];
}

uint64_t ot::Mac::Frame::SetSrcPanId(ot::Mac::Frame *this, unsigned __int16 a2)
{
  v5[4] = 0;
  *v5 = ot::Mac::Frame::FindSrcPanIdIndex(this, a2);
  if (v5[0] == 255)
  {
    *&v5[1] = 6;
  }

  else
  {
    ot::LittleEndian::WriteUint16(a2, (*this + v5[0]), v2);
  }

  return *&v5[1];
}

uint64_t ot::Mac::Frame::FindSrcAddrIndex(ot::Mac::Frame *this, unsigned __int16 a2)
{
  FrameControlField = ot::Mac::Frame::GetFrameControlField(this, a2);
  v11 = ot::Mac::Frame::SkipDsnIndex(this, v2);
  if (ot::Mac::Frame::IsDstPanIdPresent(FrameControlField, v3))
  {
    v11 += 2;
  }

  FcfDstAddr = ot::Mac::Frame::GetFcfDstAddr(FrameControlField, v4);
  if (FcfDstAddr == 2)
  {
    v11 += 2;
  }

  else if (FcfDstAddr == 3)
  {
    v11 += 8;
  }

  if (ot::Mac::Frame::IsSrcPanIdPresent(FrameControlField, v5, v6, v7))
  {
    v11 += 2;
  }

  return v11;
}

uint64_t ot::Mac::Frame::GetFcfSrcAddr(ot::Mac::Frame *this, unsigned __int16 a2)
{
  v3 = this;
  if (ot::Mac::Frame::IsMultipurpose(this))
  {
    return (v3 & 0xC0) >> 6;
  }

  else
  {
    return (v3 & 0xC000) >> 14;
  }
}

{
  return ot::Mac::Frame::GetFcfSrcAddr(this, a2);
}

uint64_t ot::Mac::Frame::SetSrcAddr(ot::Mac::Frame *this, unsigned __int16 a2)
{
  SrcAddrIndex = ot::Mac::Frame::FindSrcAddrIndex(this, a2);
  FrameControlField = ot::Mac::Frame::GetFrameControlField(this, v2);
  if (ot::Mac::Frame::GetFcfSrcAddr(FrameControlField, v4) != 2)
  {
    __assert_rtn("SetSrcAddr", "mac_frame.cpp", 711, "GetFcfSrcAddr(GetFrameControlField()) == kFcfAddrShort");
  }

  if (SrcAddrIndex == 255)
  {
    __assert_rtn("SetSrcAddr", "mac_frame.cpp", 712, "index != kInvalidIndex");
  }

  return ot::LittleEndian::WriteUint16(a2, (*this + SrcAddrIndex), v5);
}

char *ot::Mac::Frame::SetSrcAddr(ot::Mac::Frame *this, const ot::Mac::ExtAddress *a2)
{
  SrcAddrIndex = ot::Mac::Frame::FindSrcAddrIndex(this, a2);
  FrameControlField = ot::Mac::Frame::GetFrameControlField(this, v2);
  if (ot::Mac::Frame::GetFcfSrcAddr(FrameControlField, v4) != 3)
  {
    __assert_rtn("SetSrcAddr", "mac_frame.cpp", 721, "GetFcfSrcAddr(GetFrameControlField()) == kFcfAddrExt");
  }

  if (SrcAddrIndex == 255)
  {
    __assert_rtn("SetSrcAddr", "mac_frame.cpp", 722, "index != kInvalidIndex");
  }

  return ot::Mac::ExtAddress::CopyTo(a2, (*this + SrcAddrIndex), 1);
}

char *ot::Mac::Frame::SetSrcAddr(ot::Mac::Frame *this, const ot::Mac::Address *a2)
{
  Type = ot::Mac::Address::GetType(a2);
  if (Type == 1)
  {
    Short = ot::Mac::Address::GetShort(a2);
    return ot::Mac::Frame::SetSrcAddr(this, Short);
  }

  else
  {
    if (Type != 2)
    {
      __assert_rtn("SetSrcAddr", "mac_frame.cpp", 740, "false");
    }

    ot::Mac::Address::GetExtended(a2);
    return ot::Mac::Frame::SetSrcAddr(this, v4);
  }
}

uint64_t ot::Mac::Frame::GetSecurityControlField(ot::Mac::Frame *this, unsigned __int8 *a2)
{
  v4[4] = 0;
  *v4 = ot::Mac::Frame::FindSecurityHeaderIndex(this, a2);
  if (v4[0] == 255)
  {
    *&v4[1] = 6;
  }

  else
  {
    *a2 = *(*this + v4[0]);
  }

  return *&v4[1];
}

uint64_t ot::Mac::Frame::FindSecurityHeaderIndex(ot::Mac::Frame *this, unsigned __int16 a2)
{
  if (*(this + 4) > 2u)
  {
    if (ot::Mac::Frame::GetSecurityEnabled(this, a2))
    {
      return ot::Mac::Frame::SkipAddrFieldIndex(this);
    }

    else
    {
      return -1;
    }
  }

  else
  {
    return -1;
  }
}

uint64_t ot::Mac::Frame::SetSecurityControlField(ot::Mac::Frame *this, unsigned __int16 a2)
{
  v4 = a2;
  result = ot::Mac::Frame::FindSecurityHeaderIndex(this, a2);
  if (result == 255)
  {
    __assert_rtn("SetSecurityControlField", "mac_frame.cpp", 761, "index != kInvalidIndex");
  }

  *(*this + result) = v4;
  return result;
}

uint64_t ot::Mac::Frame::SkipAddrFieldIndex(ot::Mac::Frame *this)
{
  if ((ot::Mac::Frame::GetFcsSize(this) + 2) <= *(this + 4))
  {
    FrameControlField = ot::Mac::Frame::GetFrameControlField(this, v1);
    return ot::Mac::Frame::CalculateAddrFieldSize(FrameControlField, v3);
  }

  else
  {
    return -1;
  }
}

uint64_t ot::Mac::Frame::GetSecurityLevel(ot::Mac::Frame *this, unsigned __int8 *a2)
{
  v4[4] = 0;
  *v4 = ot::Mac::Frame::FindSecurityHeaderIndex(this, a2);
  if (v4[0] == 255)
  {
    *&v4[1] = 6;
  }

  else
  {
    *a2 = *(*this + v4[0]) & 7;
  }

  return *&v4[1];
}

uint64_t ot::Mac::Frame::GetFrameCounter(ot::Mac::Frame *this, unsigned int *a2)
{
  v5[4] = 0;
  *v5 = ot::Mac::Frame::FindSecurityHeaderIndex(this, a2);
  if (v5[0] == 255)
  {
    *&v5[1] = 6;
  }

  else
  {
    *a2 = ot::LittleEndian::ReadUint32((*this + (v5[0] + 1)), v2);
  }

  return *&v5[1];
}

uint64_t ot::LittleEndian::ReadUint32(ot::LittleEndian *this, const unsigned __int8 *a2)
{
  return (*(this + 1) << 8) | *this | (*(this + 2) << 16) | (*(this + 3) << 24);
}

{
  return ot::LittleEndian::ReadUint32(this, a2);
}

uint64_t ot::Mac::Frame::SetFrameCounter(ot::Mac::Frame *this, unsigned int a2)
{
  SecurityHeaderIndex = ot::Mac::Frame::FindSecurityHeaderIndex(this, a2);
  if (SecurityHeaderIndex == 255)
  {
    __assert_rtn("SetFrameCounter", "mac_frame.cpp", 824, "index != kInvalidIndex");
  }

  ot::LittleEndian::WriteUint32(a2, *this + (SecurityHeaderIndex + 1), v2);
  return ot::Mac::TxFrame::SetIsHeaderUpdated(this, 1);
}

uint64_t ot::LittleEndian::WriteUint32(uint64_t this, uint64_t a2, unsigned __int8 *a3)
{
  *a2 = this;
  *(a2 + 1) = this >> 8;
  *(a2 + 3) = BYTE3(this);
  return this;
}

{
  return ot::LittleEndian::WriteUint32(this, a2, a3);
}

uint64_t ot::Mac::Frame::GetKeySource(ot::Mac::Frame *this, unsigned __int16 a2)
{
  SecurityHeaderIndex = ot::Mac::Frame::FindSecurityHeaderIndex(this, a2);
  if (SecurityHeaderIndex == 255)
  {
    __assert_rtn("GetKeySource", "mac_frame.cpp", 838, "index != kInvalidIndex");
  }

  return *this + SecurityHeaderIndex + 5;
}

uint64_t ot::Mac::Frame::GetKeySourceLength(ot::Mac::Frame *this)
{
  v2 = 0;
  if (this)
  {
    switch(this)
    {
      case 8u:
        return 0;
      case 0x10u:
        return 4;
      case 0x18u:
        return 8;
    }
  }

  else
  {
    return 0;
  }

  return v2;
}

void *ot::Mac::Frame::SetKeySource(ot::Mac::Frame *this, const unsigned __int8 *a2)
{
  SecurityHeaderIndex = ot::Mac::Frame::FindSecurityHeaderIndex(this, a2);
  if (SecurityHeaderIndex == 255)
  {
    __assert_rtn("SetKeySource", "mac_frame.cpp", 874, "index != kInvalidIndex");
  }

  KeySourceLength = ot::Mac::Frame::GetKeySourceLength((*(*this + SecurityHeaderIndex) & 0x18));
  return memcpy((*this + SecurityHeaderIndex + 5), a2, KeySourceLength);
}

uint64_t ot::Mac::Frame::GetKeyId(ot::Mac::Frame *this, unsigned __int8 *a2)
{
  v5 = 0;
  SecurityHeaderIndex = ot::Mac::Frame::FindSecurityHeaderIndex(this, a2);
  if (SecurityHeaderIndex == 255)
  {
    return 6;
  }

  else
  {
    *a2 = *(*this + SecurityHeaderIndex + 5 + ot::Mac::Frame::GetKeySourceLength((*(*this + SecurityHeaderIndex) & 0x18)));
  }

  return v5;
}

uint64_t ot::Mac::Frame::SetKeyId(ot::Mac::Frame *this, unsigned __int16 a2)
{
  v5 = a2;
  SecurityHeaderIndex = ot::Mac::Frame::FindSecurityHeaderIndex(this, a2);
  if (SecurityHeaderIndex == 255)
  {
    __assert_rtn("SetKeyId", "mac_frame.cpp", 902, "index != kInvalidIndex");
  }

  result = ot::Mac::Frame::GetKeySourceLength((*(*this + SecurityHeaderIndex) & 0x18));
  *(*this + SecurityHeaderIndex + 5 + result) = v5;
  return result;
}

uint64_t ot::Mac::Frame::GetCommandId(ot::Mac::Frame *this, unsigned __int8 *a2)
{
  v7[4] = 0;
  *v7 = ot::Mac::Frame::FindPayloadIndex(this);
  if (v7[0] == 255)
  {
    *&v7[1] = 6;
  }

  else
  {
    v5 = *this;
    if (ot::Mac::Frame::IsVersion2015(this, v2))
    {
      v4 = v7[0];
    }

    else
    {
      v4 = v7[0] - 1;
    }

    *a2 = *(v5 + v4);
  }

  return *&v7[1];
}

uint64_t ot::Mac::Frame::SetCommandId(ot::Mac::Frame *this, char a2)
{
  v7[4] = 0;
  *v7 = ot::Mac::Frame::FindPayloadIndex(this);
  if (v7[0] == 255)
  {
    *&v7[1] = 6;
  }

  else
  {
    v5 = *this;
    if (ot::Mac::Frame::IsVersion2015(this, v2))
    {
      v4 = v7[0];
    }

    else
    {
      v4 = v7[0] - 1;
    }

    *(v5 + v4) = a2;
  }

  return *&v7[1];
}

BOOL ot::Mac::Frame::IsDataRequestCommand(ot::Mac::Frame *this)
{
  v5 = this;
  v4 = 0;
  v3 = 0;
  if (ot::Mac::Frame::GetType(this) == 3 && !ot::Mac::Frame::GetCommandId(this, &v3))
  {
    return v3 == 4;
  }

  return v4;
}

uint64_t ot::Mac::Frame::GetPayload(ot::Mac::Frame *this)
{
  PayloadIndex = ot::Mac::Frame::FindPayloadIndex(this);
  if (PayloadIndex == 255)
  {
    return 0;
  }

  else
  {
    return *this + PayloadIndex;
  }
}

uint64_t ot::Mac::Frame::GetMaxPayloadLength(ot::Mac::Frame *this)
{
  Mtu = ot::Mac::Frame::GetMtu(this);
  HeaderLength = ot::Mac::Frame::GetHeaderLength(this);
  return (Mtu - (HeaderLength + ot::Mac::Frame::GetFooterLength(this)));
}

uint64_t ot::Mac::Frame::GetPayloadLength(ot::Mac::Frame *this)
{
  v3 = *(this + 4);
  HeaderLength = ot::Mac::Frame::GetHeaderLength(this);
  return (v3 - (HeaderLength + ot::Mac::Frame::GetFooterLength(this)));
}

uint64_t ot::Mac::Frame::SetPayloadLength(ot::Mac::Frame *this, __int16 a2)
{
  HeaderLength = ot::Mac::Frame::GetHeaderLength(this);
  FooterLength = ot::Mac::Frame::GetFooterLength(this);
  result = HeaderLength;
  *(this + 4) = HeaderLength + FooterLength + a2;
  return result;
}

uint64_t ot::Mac::Frame::SkipSecurityHeaderIndex(ot::Mac::Frame *this)
{
  v5 = ot::Mac::Frame::SkipAddrFieldIndex(this);
  if (v5 != 255 && ot::Mac::Frame::GetSecurityEnabled(this, v1))
  {
    if (v5 < *(this + 4))
    {
      v4 = ot::Mac::Frame::CalculateSecurityHeaderSize(*(*this + v5));
      if (v4 == 255)
      {
        return -1;
      }

      else
      {
        v5 += v4;
        if (v5 > *(this + 4))
        {
          return -1;
        }
      }
    }

    else
    {
      return -1;
    }
  }

  return v5;
}

uint64_t ot::Mac::Frame::CalculateAddrFieldSize(ot::Mac::Frame *this, unsigned __int16 a2)
{
  v16 = this;
  FcfSize = ot::Mac::Frame::GetFcfSize(this, a2);
  v15 = FcfSize + ot::Mac::Frame::IsDsnPresent(v16, v2, v3, v4);
  if (ot::Mac::Frame::IsDstPanIdPresent(v16, v5))
  {
    v15 += 2;
  }

  FcfDstAddr = ot::Mac::Frame::GetFcfDstAddr(v16, v6);
  if (FcfDstAddr)
  {
    if (FcfDstAddr == 2)
    {
      v15 += 2;
    }

    else
    {
      if (FcfDstAddr != 3)
      {
        return -1;
      }

      v15 += 8;
    }
  }

  if (ot::Mac::Frame::IsSrcPanIdPresent(v16, v7, v8, v9))
  {
    v15 += 2;
  }

  FcfSrcAddr = ot::Mac::Frame::GetFcfSrcAddr(v16, v10);
  if (FcfSrcAddr)
  {
    if (FcfSrcAddr == 2)
    {
      v15 += 2;
    }

    else if (FcfSrcAddr == 3)
    {
      v15 += 8;
    }

    else
    {
      return -1;
    }
  }

  return v15;
}

BOOL ot::Mac::Frame::IsIePresent(ot::Mac::Frame *this, unsigned __int16 a2)
{
  FrameControlField = ot::Mac::Frame::GetFrameControlField(this, a2);
  return ot::Mac::Frame::IsIePresent(FrameControlField, v3, v4, v5);
}

{
  return ot::Mac::Frame::IsIePresent(this, a2);
}

uint64_t ot::Mac::HeaderIe::GetId(ot::Mac::HeaderIe *this, unsigned __int16 a2)
{
  return (ot::LittleEndian::HostSwap16(*this) & 0x7F80) >> 7;
}

{
  return ot::Mac::HeaderIe::GetId(this, a2);
}

uint64_t ot::Mac::VendorIeHeader::SetVendorOui(ot::Mac::VendorIeHeader *this, unsigned int a2, unsigned __int8 *a3)
{
  return ot::LittleEndian::WriteUint24(a2, this, a3);
}

{
  return ot::Mac::VendorIeHeader::SetVendorOui(this, a2, a3);
}

uint64_t ot::Mac::VendorIeHeader::SetSubType(uint64_t this, char a2)
{
  *(this + 3) = a2;
  return this;
}

{
  return ot::Mac::VendorIeHeader::SetSubType(this, a2);
}

uint64_t ot::Mac::ConnectionIe::Init(ot::Mac::ConnectionIe *this, uint64_t a2, unsigned __int8 *a3)
{
  ot::Mac::VendorIeHeader::SetVendorOui(this, 0xEAB89Bu, a3);
  result = ot::Mac::VendorIeHeader::SetSubType(this, 1);
  *(this + 4) = 0;
  return result;
}

{
  return ot::Mac::ConnectionIe::Init(this, a2, a3);
}

uint64_t ot::Mac::VendorIeHeader::GetVendorOui(ot::Mac::VendorIeHeader *this, const unsigned __int8 *a2)
{
  return ot::LittleEndian::ReadUint24(this, a2);
}

{
  return ot::Mac::VendorIeHeader::GetVendorOui(this, a2);
}

uint64_t ot::Mac::VendorIeHeader::GetSubType(ot::Mac::VendorIeHeader *this)
{
  return *(this + 3);
}

{
  return ot::Mac::VendorIeHeader::GetSubType(this);
}

void ot::Mac::Frame::SetCslIe(ot::Mac::Frame *this, unsigned __int16 a2, unsigned __int16 a3)
{
  ot::Mac::Frame::GetHeaderIe(this, 0x1Au);
  v4 = v3;
  if (v3)
  {
    ot::Mac::CslIe::SetPeriod((v3 + 2), a2);
    ot::Mac::CslIe::SetPhase((v4 + 2), a3);
  }
}

uint64_t ot::Mac::CslIe::SetPeriod(ot::Mac::CslIe *this, unsigned __int16 a2)
{
  result = ot::LittleEndian::HostSwap16(a2);
  *(this + 1) = result;
  return result;
}

{
  return ot::Mac::CslIe::SetPeriod(this, a2);
}

uint64_t ot::Mac::CslIe::SetPhase(ot::Mac::CslIe *this, unsigned __int16 a2)
{
  result = ot::LittleEndian::HostSwap16(a2);
  *this = result;
  return result;
}

{
  return ot::Mac::CslIe::SetPhase(this, a2);
}

void ot::Mac::Frame::SetEnhAckProbingIe(ot::Mac::Frame *this, const unsigned __int8 *a2, unsigned __int8 a3)
{
  ot::Mac::Frame::GetThreadIe(this, 0);
  if (v3)
  {
    memcpy((v3 + 6), a2, a3);
  }
}

void ot::Mac::Frame::GetThreadIe(ot::Mac::Frame *this, unsigned __int8 a2)
{
  ot::AsConst<ot::Mac::Frame>();
  ot::Mac::Frame::GetThreadIe(v2, a2);
  ot::AsNonConst<unsigned char>();
}

{
  ot::Mac::Frame::GetThreadIe(this, a2);
}

void *ot::Mac::TxFrame::CopyFrom(ot::Mac::TxFrame *this, const void **a2)
{
  v5 = *this;
  v4 = *(this + 3);
  memcpy(this, a2, 0x40uLL);
  *this = v5;
  *(this + 3) = v4;
  return memcpy(*this, *a2, *(a2 + 4));
}

void ot::Mac::TxFrame::ProcessTransmitAesCcm(ot::Mac::TxFrame *this, const ot::Mac::ExtAddress *a2)
{
  v19 = this;
  *&v18[5] = a2;
  *&v18[1] = 0;
  v18[0] = 0;
  ot::Crypto::AesCcm::AesCcm(v20);
  if (ot::Mac::Frame::GetSecurityEnabled(this, v2) && !ot::Mac::Frame::GetSecurityLevel(this, v18) && !ot::Mac::Frame::GetFrameCounter(this, &v18[1]))
  {
    ot::Crypto::AesCcm::GenerateNonce(*&v18[5], *&v18[1], v18[0], &v21, v3);
    AesKey = ot::Mac::TxFrame::GetAesKey(this);
    ot::Crypto::AesCcm::SetKey(v20, AesKey);
    FooterLength = ot::Mac::Frame::GetFooterLength(this);
    v17 = FooterLength - ot::Mac::Frame::GetFcsSize(this);
    HeaderLength = ot::Mac::Frame::GetHeaderLength(this);
    PayloadLength = ot::Mac::Frame::GetPayloadLength(this);
    ot::Crypto::AesCcm::Init(v20, HeaderLength, PayloadLength, v17, &v21, 0xDu);
    Header = ot::Mac::Frame::GetHeader(this);
    v6 = ot::Mac::Frame::GetHeaderLength(this);
    ot::Crypto::AesCcm::Header(v20, Header, v6);
    ot::Mac::Frame::GetPayload(this);
    v14 = v7;
    ot::Mac::Frame::GetPayload(this);
    v15 = v8;
    v9 = ot::Mac::Frame::GetPayloadLength(this);
    ot::Crypto::AesCcm::Payload(v20, v14, v15, v9, 0);
    ot::Mac::Frame::GetFooter(this);
    ot::Crypto::AesCcm::Finalize(v20, v10);
    ot::Mac::TxFrame::SetIsSecurityProcessed(this, 1);
  }

  ot::Crypto::AesCcm::~AesCcm(v20);
}

ot::Crypto::AesCcm *ot::Crypto::AesCcm::AesCcm(ot::Crypto::AesCcm *this)
{
  ot::Crypto::AesCcm::AesCcm(this);
  return this;
}

{
  ot::Crypto::AesEcb::AesEcb(this);
  return this;
}

uint64_t ot::Mac::TxFrame::GetAesKey(ot::Mac::TxFrame *this)
{
  return *(this + 2);
}

{
  return ot::Mac::TxFrame::GetAesKey(this);
}

void ot::Mac::Frame::GetFooter(ot::Mac::Frame *this)
{
  ot::AsConst<ot::Mac::Frame>();
  ot::Mac::Frame::GetFooter(v1);
  ot::AsNonConst<unsigned char>();
}

{
  ot::Mac::Frame::GetFooter(this);
}

void ot::Crypto::AesCcm::~AesCcm(ot::Crypto::AesCcm *this)
{
  ot::Crypto::AesCcm::~AesCcm(this);
}

{
  ot::Crypto::AesEcb::~AesEcb(this);
}

uint64_t ot::Mac::TxFrame::GenerateImmAck(ot::Mac::TxFrame *this, const ot::Mac::RxFrame *a2, char a3)
{
  v6 = ot::Mac::Frame::GetVersion(a2, a2) | 2;
  *(this + 10) = *(a2 + 10);
  ot::ClearAllBytes<otRadioFrame::{unnamed type#1}::{unnamed type#1}>(this + 16);
  if (a3)
  {
    v6 |= 0x10u;
  }

  ot::LittleEndian::WriteUint16(v6, *this, v3);
  result = ot::Mac::Frame::GetSequence(a2);
  *(*this + 2) = result;
  *(this + 4) = 5;
  return result;
}

void *ot::ClearAllBytes<otRadioFrame::{unnamed type#1}::{unnamed type#1}>(void *a1)
{
  return memset(a1, 0, 0x30uLL);
}

{
  return ot::ClearAllBytes<otRadioFrame::{unnamed type#1}::{unnamed type#1}>(a1);
}

uint64_t ot::Mac::TxFrame::GenerateEnhAck(ot::Mac::TxFrame *this, const ot::Mac::RxFrame *a2, char a3, const unsigned __int8 *a4, unsigned __int8 a5)
{
  v30 = this;
  v29 = a2;
  v28 = a3;
  v27 = a4;
  v26 = a5;
  DstAddr = 0;
  ot::Mac::Address::Address(v24);
  v23 = 0;
  ot::Mac::Addresses::Addresses(v21);
  ot::Mac::PanIds::PanIds(v20);
  v19 = 0;
  v18 = 0;
  if (!ot::Mac::Frame::IsVersion2015(v29, v5))
  {
    return 6;
  }

  if (!ot::Mac::Frame::GetAckRequest(v29, v6))
  {
    return 6;
  }

  DstAddr = ot::Mac::Frame::GetDstAddr(v29, v24);
  if (DstAddr)
  {
    return DstAddr;
  }

  if (ot::Mac::Address::IsNone(v24) || ot::Mac::Address::IsBroadcast(v24))
  {
    return 6;
  }

  DstAddr = ot::Mac::Frame::GetSrcAddr(v29, v22);
  if (DstAddr)
  {
    return DstAddr;
  }

  if (ot::Mac::Address::IsNone(v22))
  {
    return 6;
  }

  if (ot::Mac::Frame::GetSecurityEnabled(v29, v7))
  {
    DstAddr = ot::Mac::Frame::GetSecurityLevel(v29, &v19);
    if (DstAddr)
    {
      return DstAddr;
    }

    if (v19 != 5)
    {
      return 6;
    }

    DstAddr = ot::Mac::Frame::GetKeyIdMode(v29, &v18);
    if (DstAddr)
    {
      return DstAddr;
    }
  }

  if (ot::Mac::Frame::IsSrcPanIdPresent(v29, v8))
  {
    DstAddr = ot::Mac::Frame::GetSrcPanId(v29, &v23);
    if (DstAddr)
    {
      return DstAddr;
    }

    goto LABEL_22;
  }

  if (ot::Mac::Frame::IsDstPanIdPresent(v29, v9))
  {
    DstAddr = ot::Mac::Frame::GetDstPanId(v29, &v23);
    if (DstAddr)
    {
      return DstAddr;
    }

LABEL_22:
    ot::Mac::PanIds::SetDestination(v20, v23);
  }

  *(this + 10) = *(v29 + 10);
  ot::ClearAllBytes<otRadioFrame::{unnamed type#1}::{unnamed type#1}>(this + 16);
  ot::Mac::Frame::InitMacHeader(this, 2, 0x2000, v21, v20, v19, v18);
  ot::Mac::Frame::SetFramePending(this, v28 & 1);
  ot::Mac::Frame::SetIePresent(this, v26 != 0);
  Sequence = ot::Mac::Frame::GetSequence(v29);
  ot::Mac::Frame::SetSequence(this, Sequence);
  if (ot::Mac::Frame::GetSecurityEnabled(v29, v11))
  {
    v17 = 0;
    DstAddr = ot::Mac::Frame::GetKeyId(v29, &v17);
    if (DstAddr)
    {
      return DstAddr;
    }

    ot::Mac::Frame::SetKeyId(this, v17);
  }

  if (v26)
  {
    if (!v27)
    {
      __assert_rtn("GenerateEnhAck", "mac_frame.cpp", 1614, "aIeData != nullptr");
    }

    v15 = *this;
    HeaderIeIndex = ot::Mac::Frame::FindHeaderIeIndex(this, v12);
    memcpy((v15 + HeaderIeIndex), v27, v26);
    *(this + 4) += v26;
  }

  return DstAddr;
}

BOOL ot::Mac::Frame::IsSrcPanIdPresent(ot::Mac::Frame *this, unsigned __int16 a2)
{
  FrameControlField = ot::Mac::Frame::GetFrameControlField(this, a2);
  return ot::Mac::Frame::IsSrcPanIdPresent(FrameControlField, v3, v4, v5);
}

{
  return ot::Mac::Frame::IsSrcPanIdPresent(this, a2);
}

uint64_t ot::Mac::TxFrame::GenerateWakeupFrame(ot::Mac::TxFrame *this, unsigned __int16 a2, const ot::Mac::Address *a3, const ot::Mac::Address *a4)
{
  v14 = this;
  v13 = a2;
  v12 = a3;
  *&v11[3] = a4;
  *&v11[1] = 0;
  v11[0] = -30963;
  v10 = 0;
  Type = ot::Mac::Address::GetType(a3);
  if (Type == 1)
  {
    v11[0] |= 0x20u;
  }

  else
  {
    if (Type != 2)
    {
      *&v11[1] = 7;
      return *&v11[1];
    }

    v11[0] |= 0x30u;
  }

  v7 = ot::Mac::Address::GetType(*&v11[3]);
  if (v7 == 1)
  {
    v11[0] |= 0x80u;
  }

  else
  {
    if (v7 != 2)
    {
      *&v11[1] = 7;
      return *&v11[1];
    }

    v11[0] |= 0xC0u;
  }

  *(this + 4) = ot::Mac::Frame::CalculateAddrFieldSize(v11[0], v4);
  if (*(this + 4) == 255)
  {
    __assert_rtn("GenerateWakeupFrame", "mac_frame.cpp", 1660, "mLength != kInvalidSize");
  }

  ot::LittleEndian::WriteUint16(v11[0], *this, v5);
  *(*this + *(this + 4)) = 21;
  *(this + 4) += ot::Mac::Frame::CalculateSecurityHeaderSize(0x15);
  *(this + 4) += ot::Mac::Frame::CalculateMicSize(0x15);
  *(this + 4) += ot::Mac::Frame::GetFcsSize(this);
  ot::Mac::Frame::SetDstPanId(this, v13);
  ot::Mac::Frame::SetDstAddr(this, v12);
  ot::Mac::Frame::SetSrcAddr(this, *&v11[3]);
  *&v11[1] = ot::Mac::Frame::AppendHeaderIeAt<ot::Mac::RendezvousTimeIe>(this, &v10);
  if (!*&v11[1])
  {
    *&v11[1] = ot::Mac::Frame::AppendHeaderIeAt<ot::Mac::ConnectionIe>(this, &v10);
  }

  return *&v11[1];
}

uint64_t ot::Mac::RxFrame::ProcessReceiveAesCcm(ot::Mac::RxFrame *this, const ot::Mac::ExtAddress *a2, const ot::Mac::KeyMaterial *a3)
{
  v27 = this;
  v26 = a2;
  v25 = a3;
  *&__n[3] = 8;
  *&__n[1] = 0;
  HIBYTE(__n[0]) = 0;
  ot::Crypto::AesCcm::AesCcm(v29);
  if (ot::Mac::Frame::GetSecurityEnabled(this, v3))
  {
    if (ot::Mac::Frame::GetSecurityLevel(this, __n + 1))
    {
      otLogDebgPlat("RxFrame::ProcessReceiveAesCcm Security error could not get securityLevel");
    }

    else if (ot::Mac::Frame::GetFrameCounter(this, &__n[1]))
    {
      otLogDebgPlat("RxFrame:ProcessReceiveAesCsm Security error could not get frameCounter");
    }

    else
    {
      ot::Crypto::AesCcm::GenerateNonce(v26, *&__n[1], HIBYTE(__n[0]), &v31, v4);
      ot::Crypto::AesCcm::SetKey(v29, v25);
      FooterLength = ot::Mac::Frame::GetFooterLength(this);
      LOBYTE(__n[0]) = FooterLength - ot::Mac::Frame::GetFcsSize(this);
      HeaderLength = ot::Mac::Frame::GetHeaderLength(this);
      PayloadLength = ot::Mac::Frame::GetPayloadLength(this);
      ot::Crypto::AesCcm::Init(v29, HeaderLength, PayloadLength, __n[0], &v31, 0xDu);
      Header = ot::Mac::Frame::GetHeader(this);
      v6 = ot::Mac::Frame::GetHeaderLength(this);
      ot::Crypto::AesCcm::Header(v29, Header, v6);
      ot::Mac::Frame::GetPayload(this);
      v21 = v7;
      ot::Mac::Frame::GetPayload(this);
      v22 = v8;
      v9 = ot::Mac::Frame::GetPayloadLength(this);
      ot::Crypto::AesCcm::Payload(v29, v21, v22, v9, 1);
      ot::Crypto::AesCcm::Finalize(v29, v30);
      ot::Mac::Frame::GetFooter(this);
      if (!memcmp(v30, v10, LOBYTE(__n[0])))
      {
        *&__n[3] = 0;
      }

      else
      {
        v14 = ot::ErrorToString(*&__n[3]);
        ot::Mac::ExtAddress::ToString(v26, v28);
        v15 = ot::String<(unsigned short)17>::AsCString(v28);
        v16 = *&__n[1];
        v17 = ot::Mac::Frame::GetPayloadLength(this);
        v11 = ot::Mac::Frame::GetFooterLength(this);
        otLogDebgPlat("RxFrame::ProcessReceiveAesCcm Security error tag and GetFooter() mismatch: error:%s extAddr:%s frameCounter:%u tagLen:%d payloadLen:%d footerLen:%d secLevel:%d ", v14, v15, v16, LOBYTE(__n[0]), v17, v11, HIBYTE(__n[0]));
      }
    }
  }

  else
  {
    *&__n[3] = 0;
  }

  v13 = *&__n[3];
  ot::Crypto::AesCcm::~AesCcm(v29);
  return v13;
}

ot::StringWriter *ot::Mac::Frame::ToInfoString@<X0>(ot::Mac::Frame *this@<X0>, ot::StringWriter *a2@<X8>)
{
  v21 = this;
  ot::String<(unsigned short)150>::String(a2);
  v20 = 0;
  Type = 0;
  ot::Mac::Address::Address(v18);
  ot::Mac::Address::Address(v17);
  v16 = 0;
  v13 = *(this + 4);
  Sequence = ot::Mac::Frame::GetSequence(this);
  ot::StringWriter::Append(a2, "len:%d, seqnum:%d, type:", v13, Sequence);
  Type = ot::Mac::Frame::GetType(this);
  if (Type)
  {
    switch(Type)
    {
      case 1u:
        ot::StringWriter::Append(a2, "Data");
        break;
      case 2u:
        ot::StringWriter::Append(a2, "Ack");
        break;
      case 3u:
        if (ot::Mac::Frame::GetCommandId(this, &v20))
        {
          v20 = -1;
        }

        if (v20 == 4)
        {
          ot::StringWriter::Append(a2, "Cmd(DataReq)");
        }

        else if (v20 == 7)
        {
          ot::StringWriter::Append(a2, "Cmd(BeaconReq)");
        }

        else
        {
          ot::StringWriter::Append(a2, "Cmd(%d)", v20);
        }

        break;
      case 5u:
        ot::StringWriter::Append(a2, "MP");
        break;
      default:
        ot::StringWriter::Append(a2, "%d", Type);
        break;
    }
  }

  else
  {
    ot::StringWriter::Append(a2, "Beacon");
  }

  ot::Mac::Frame::GetSrcAddr(this, v18);
  IgnoreError();
  ot::Mac::Frame::GetDstAddr(this, v17);
  IgnoreError();
  ot::Mac::Address::ToString(v18, v23);
  v9 = ot::String<(unsigned short)17>::AsCString(v23);
  ot::Mac::Address::ToString(v17, v22);
  v10 = ot::String<(unsigned short)17>::AsCString(v22);
  SecurityEnabled = ot::Mac::Frame::GetSecurityEnabled(this, v10);
  v11 = ot::ToYesNo(SecurityEnabled);
  AckRequest = ot::Mac::Frame::GetAckRequest(this, v11);
  v12 = ot::ToYesNo(AckRequest);
  FramePending = ot::Mac::Frame::GetFramePending(this, v12);
  v6 = "yes";
  if (!FramePending)
  {
    v6 = "no";
  }

  ot::StringWriter::Append(a2, ", src:%s, dst:%s, sec:%s, ackreq:%s, fp:%s", v9, v10, v11, v12, v6);
  result = ot::Mac::Frame::GetSecurityEnabled(this, v7);
  if (result)
  {
    ot::Mac::Frame::GetFrameCounter(this, &v16);
    return ot::StringWriter::Append(a2, ", fc:%u", v16);
  }

  return result;
}

uint64_t ot::String<(unsigned short)150>::String(uint64_t a1)
{
  ot::String<(unsigned short)150>::String(a1);
  return a1;
}

{
  ot::StringWriter::StringWriter(a1, (a1 + 12), 150);
  return a1;
}

char *ot::Mac::ExtAddress::Set(char *a1, void *a2, char a3)
{
  return ot::Mac::ExtAddress::CopyAddress(a1, a2, a3);
}

{
  return ot::Mac::ExtAddress::Set(a1, a2, a3);
}

BOOL ot::Mac::Frame::IsIePresent(ot::Mac::Frame *this, unsigned __int16 a2, uint64_t a3, unsigned __int16 a4)
{
  return ot::Mac::Frame::GetFcfBit(this, 0x200u, 0x8000) != 0;
}

{
  return ot::Mac::Frame::IsIePresent(this, a2, a3, a4);
}

uint64_t ot::LittleEndian::WriteUint24(uint64_t this, uint64_t a2, unsigned __int8 *a3)
{
  *a2 = this;
  *(a2 + 2) = BYTE2(this);
  return this;
}

{
  return ot::LittleEndian::WriteUint24(this, a2, a3);
}

uint64_t ot::LittleEndian::ReadUint24(ot::LittleEndian *this, const unsigned __int8 *a2)
{
  return (*(this + 1) << 8) | *this | (*(this + 2) << 16);
}

{
  return ot::LittleEndian::ReadUint24(this, a2);
}

ot::Mac::TxFrames *ot::Mac::TxFrames::TxFrames(ot::Mac::TxFrames *this, ot::Instance *a2)
{
  ot::InstanceLocator::InstanceLocator(this, a2);
  v2 = ot::Instance::Get<ot::Mac::SubMac>(a2);
  TransmitFrame = ot::Mac::SubMac::GetTransmitFrame(v2);
  result = this;
  *this = TransmitFrame;
  return result;
}

{
  ot::Mac::TxFrames::TxFrames(this, a2);
  return this;
}

uint64_t ot::Mac::SubMac::GetTransmitFrame(ot::Mac::SubMac *this)
{
  return *(this + 4);
}

{
  return ot::Mac::SubMac::GetTransmitFrame(this);
}

ot::Mac::Links *ot::Mac::Links::Links(ot::Mac::Links *this, ot::Instance *a2)
{
  ot::InstanceLocator::InstanceLocator(this, a2);
  ot::Mac::SubMac::SubMac((this + 8), a2);
  ot::Mac::TxFrames::TxFrames((this + 232), a2);
  return this;
}

{
  ot::Mac::Links::Links(this, a2);
  return this;
}

uint64_t ot::GetProvider<ot::InstanceLocator>::Get<ot::Mac::SubMac>(ot::InstanceLocator *a1)
{
  Instance = ot::InstanceLocator::GetInstance(a1);
  return ot::Instance::Get<ot::Mac::SubMac>(Instance);
}

{
  return ot::GetProvider<ot::InstanceLocator>::Get<ot::Mac::SubMac>(a1);
}

uint64_t ot::Mac::Links::GetTemporaryMacKey(ot::Mac::Links *this, const ot::Mac::Frame *a2, int a3)
{
  v3 = ot::GetProvider<ot::InstanceLocator>::Get<ot::KeyManager>(this);
  if (a3 == ot::KeyManager::GetCurrentKeySequence(v3) - 1)
  {
    v4 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mac::SubMac>(this);
    return ot::Mac::SubMac::GetPreviousMacKey(v4);
  }

  else
  {
    v5 = ot::GetProvider<ot::InstanceLocator>::Get<ot::KeyManager>(this);
    if (a3 != ot::KeyManager::GetCurrentKeySequence(v5) + 1)
    {
      __assert_rtn("GetTemporaryMacKey", "mac_links.cpp", 231, "false");
    }

    v6 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mac::SubMac>(this);
    return ot::Mac::SubMac::GetNextMacKey(v6);
  }
}

uint64_t ot::Mac::Links::SetMacFrameCounter(ot::Mac::Links *this, ot::Mac::TxFrame *a2)
{
  v2 = ot::GetProvider<ot::InstanceLocator>::Get<ot::KeyManager>(this);
  v3 = ot::KeyManager::Get154MacFrameCounter(v2);
  return ot::Mac::Frame::SetFrameCounter(a2, v3 + 5);
}

uint64_t ot::KeyManager::Get154MacFrameCounter(ot::KeyManager *this)
{
  return ot::Mac::LinkFrameCounters::Get154((this + 52));
}

{
  return ot::KeyManager::Get154MacFrameCounter(this);
}

uint64_t ot::Mac::LinkFrameCounters::Get154(ot::Mac::LinkFrameCounters *this)
{
  return *this;
}

{
  return ot::Mac::LinkFrameCounters::Get154(this);
}

uint64_t ot::FrameBuilder::Init(uint64_t this, void *a2, __int16 a3)
{
  *this = a2;
  *(this + 8) = 0;
  *(this + 10) = a3;
  return this;
}

uint64_t ot::FrameBuilder::AppendUint8(ot::FrameBuilder *this, char a2)
{
  v4 = this;
  v3 = a2;
  return ot::FrameBuilder::Append<unsigned char>(this, &v3);
}

uint64_t ot::FrameBuilder::Append<unsigned char>(ot::FrameBuilder *a1, const void *a2)
{
  return ot::FrameBuilder::AppendBytes(a1, a2, 1u);
}

{
  return ot::FrameBuilder::Append<unsigned char>(a1, a2);
}

uint64_t ot::FrameBuilder::AppendBigEndianUint16(ot::FrameBuilder *this, unsigned __int16 a2)
{
  v5 = this;
  v4[1] = a2;
  v4[0] = ot::BigEndian::HostSwap16(a2, a2);
  return ot::FrameBuilder::Append<unsigned short>(this, v4);
}

uint64_t ot::FrameBuilder::Append<unsigned short>(ot::FrameBuilder *a1, const void *a2)
{
  return ot::FrameBuilder::AppendBytes(a1, a2, 2u);
}

{
  return ot::FrameBuilder::Append<unsigned short>(a1, a2);
}

uint64_t ot::FrameBuilder::AppendBigEndianUint32(ot::FrameBuilder *this, unsigned int a2)
{
  v5 = this;
  v4[1] = a2;
  v4[0] = ot::BigEndian::HostSwap32(a2, a2);
  return ot::FrameBuilder::Append<unsigned int>(this, v4);
}

uint64_t ot::FrameBuilder::Append<unsigned int>(ot::FrameBuilder *a1, const void *a2)
{
  return ot::FrameBuilder::AppendBytes(a1, a2, 4u);
}

{
  return ot::FrameBuilder::Append<unsigned int>(a1, a2);
}

uint64_t ot::FrameBuilder::AppendLittleEndianUint16(ot::FrameBuilder *this, unsigned __int16 a2)
{
  v5 = this;
  v4[1] = a2;
  v4[0] = ot::LittleEndian::HostSwap16(a2);
  return ot::FrameBuilder::Append<unsigned short>(this, v4);
}

uint64_t ot::FrameBuilder::AppendLittleEndianUint32(ot::FrameBuilder *this, unsigned int a2)
{
  v5 = this;
  v4[1] = a2;
  v4[0] = ot::LittleEndian::HostSwap32(a2);
  return ot::FrameBuilder::Append<unsigned int>(this, v4);
}

uint64_t ot::FrameBuilder::AppendBytes(ot::FrameBuilder *this, const void *a2, unsigned __int16 a3)
{
  v5 = 0;
  if (ot::FrameBuilder::CanAppend(this, a3))
  {
    memcpy((*this + *(this + 4)), a2, a3);
    *(this + 4) += a3;
  }

  else
  {
    return 3;
  }

  return v5;
}

BOOL ot::FrameBuilder::CanAppend(ot::FrameBuilder *this, unsigned __int16 a2)
{
  return *(this + 4) + a2 <= *(this + 5);
}

{
  return ot::FrameBuilder::CanAppend(this, a2);
}

uint64_t ot::FrameBuilder::AppendMacAddress(ot::FrameBuilder *this, const ot::Mac::Address *a2)
{
  v7 = 0;
  Type = ot::Mac::Address::GetType(a2);
  if (Type)
  {
    if (Type == 1)
    {
      Short = ot::Mac::Address::GetShort(a2);
      return ot::FrameBuilder::AppendLittleEndianUint16(this, Short);
    }

    else if (Type == 2)
    {
      if (ot::FrameBuilder::CanAppend(this, 8u))
      {
        ot::Mac::Address::GetExtended(a2);
        ot::Mac::ExtAddress::CopyTo(v3, (*this + *(this + 4)), 1);
        *(this + 4) += 8;
      }

      else
      {
        return 3;
      }
    }
  }

  return v7;
}

uint64_t ot::FrameBuilder::AppendBytesFromMessage(ot::FrameBuilder *this, const ot::Message *a2, unsigned __int16 a3, unsigned __int16 a4)
{
  if (ot::FrameBuilder::CanAppend(this, a4))
  {
    v6 = ot::Message::Read(a2, a3, (*this + *(this + 4)), a4);
    if (!v6)
    {
      *(this + 4) += a4;
    }
  }

  else
  {
    return 3;
  }

  return v6;
}

uint64_t ot::FrameBuilder::InsertBytes(ot::FrameBuilder *this, unsigned __int16 a2, const void *a3, unsigned __int16 a4)
{
  v6 = 0;
  if (a2 > *(this + 4))
  {
    __assert_rtn("InsertBytes", "frame_builder.cpp", 130, "aOffset <= mLength");
  }

  if (ot::FrameBuilder::CanAppend(this, a4))
  {
    memmove((*this + a2 + a4), (*this + a2), *(this + 4) - a2);
    memcpy((*this + a2), a3, a4);
    *(this + 4) += a4;
  }

  else
  {
    return 3;
  }

  return v6;
}

void *ot::FrameBuilder::RemoveBytes(ot::FrameBuilder *this, unsigned __int16 a2, unsigned __int16 a3)
{
  result = memmove((*this + a2), (*this + a2 + a3), *(this + 4) - a2 - a3);
  *(this + 4) -= a3;
  return result;
}

uint64_t ot::MeshCoP::NameData::CopyTo(ot::MeshCoP::NameData *this, char *a2, char a3)
{
  v7 = this;
  v6 = a2;
  v5[23] = a3;
  ot::MutableData<(ot::DataLengthType)0>::Init(v5, a2, a3);
  ot::MutableData<(ot::DataLengthType)0>::ClearBytes(v5);
  ot::MutableData<(ot::DataLengthType)0>::CopyBytesFrom(v5, this);
  IgnoreError();
  return ot::Data<(ot::DataLengthType)0>::GetLength(v5);
}

uint64_t ot::MutableData<(ot::DataLengthType)0>::Init(uint64_t a1, uint64_t a2, char a3)
{
  return ot::Data<(ot::DataLengthType)0>::Init(a1, a2, a3);
}

{
  return ot::MutableData<(ot::DataLengthType)0>::Init(a1, a2, a3);
}

void ot::MutableData<(ot::DataLengthType)0>::ClearBytes(uint64_t a1)
{
  ot::MutableData<(ot::DataLengthType)0>::GetBytes(a1);
  bzero(v1, *(a1 + 8));
}

{
  ot::MutableData<(ot::DataLengthType)0>::ClearBytes(a1);
}

uint64_t ot::MutableData<(ot::DataLengthType)0>::CopyBytesFrom(uint64_t a1, uint64_t a2)
{
  Bytes = ot::Data<(ot::DataLengthType)0>::GetBytes(a2);
  Length = ot::Data<(ot::DataLengthType)0>::GetLength(a2);
  return ot::MutableData<(ot::DataLengthType)0>::CopyBytesFrom(a1, Bytes, Length);
}

{
  return ot::MutableData<(ot::DataLengthType)0>::CopyBytesFrom(a1, a2);
}

uint64_t ot::Data<(ot::DataLengthType)0>::GetLength(uint64_t a1)
{
  return *(a1 + 8);
}

{
  return ot::Data<(ot::DataLengthType)0>::GetLength(a1);
}

uint64_t ot::MeshCoP::NetworkName::GetAsData(ot::MeshCoP::NetworkName *this)
{
  v1 = ot::StringLength(this, 0x11);
  ot::MeshCoP::NameData::NameData(&v4, this, v1);
  return v4;
}

uint64_t ot::MeshCoP::NetworkName::Set(ot::MeshCoP::NetworkName *this, ot *a2)
{
  v8 = this;
  v7 = a2;
  v6 = 0;
  ot::MeshCoP::NameData::NameData(v5, a2, 17);
  if (ot::IsValidUtf8String(v7, v2))
  {
    return ot::MeshCoP::NetworkName::Set(this, v5);
  }

  else
  {
    return 7;
  }
}

uint64_t ot::MeshCoP::NetworkName::Set(ot::MeshCoP::NetworkName *this, const ot::MeshCoP::NameData *a2)
{
  v10 = this;
  v9 = a2;
  v8 = 0;
  v7 = *a2;
  Buffer = ot::MeshCoP::NameData::GetBuffer(&v7);
  Length = ot::MeshCoP::NameData::GetLength(&v7);
  v6 = ot::StringLength(Buffer, Length);
  if (v6 <= 0x10u)
  {
    ot::Data<(ot::DataLengthType)0>::SetLength(&v7, v6);
    if (!ot::Data<(ot::DataLengthType)0>::MatchesBytesIn(&v7, this) || *(this + v6))
    {
      ot::Data<(ot::DataLengthType)0>::CopyBytesTo(&v7, this);
      *(this + v6) = 0;
    }

    else
    {
      return 24;
    }
  }

  else
  {
    return 7;
  }

  return v8;
}

uint64_t ot::MeshCoP::NameData::GetBuffer(ot::MeshCoP::NameData *this)
{
  return ot::Data<(ot::DataLengthType)0>::GetBytes(this);
}

{
  return ot::MeshCoP::NameData::GetBuffer(this);
}

uint64_t ot::MeshCoP::NameData::GetLength(ot::MeshCoP::NameData *this)
{
  return ot::Data<(ot::DataLengthType)0>::GetLength(this);
}

{
  return ot::MeshCoP::NameData::GetLength(this);
}

uint64_t ot::Data<(ot::DataLengthType)0>::SetLength(uint64_t result, char a2)
{
  *(result + 8) = a2;
  return result;
}

{
  return ot::Data<(ot::DataLengthType)0>::SetLength(result, a2);
}

BOOL ot::Data<(ot::DataLengthType)0>::MatchesBytesIn(uint64_t a1, const void *a2)
{
  return memcmp(*a1, a2, *(a1 + 8)) == 0;
}

{
  return ot::Data<(ot::DataLengthType)0>::MatchesBytesIn(a1, a2);
}

void *ot::Data<(ot::DataLengthType)0>::CopyBytesTo(uint64_t a1, void *a2)
{
  return memcpy(a2, *a1, *(a1 + 8));
}

{
  return ot::Data<(ot::DataLengthType)0>::CopyBytesTo(a1, a2);
}

BOOL ot::MeshCoP::NetworkName::operator==(ot::MeshCoP::NetworkName *a1, ot::MeshCoP::NetworkName *a2)
{
  v8 = a1;
  v7 = a2;
  v6[0] = ot::MeshCoP::NetworkName::GetAsData(a1);
  v6[1] = v2;
  v5[0] = ot::MeshCoP::NetworkName::GetAsData(v7);
  v5[1] = v3;
  return ot::Data<(ot::DataLengthType)0>::operator==(v6, v5);
}

BOOL ot::Data<(ot::DataLengthType)0>::operator==(uint64_t a1, uint64_t a2)
{
  v3 = 0;
  if (*(a1 + 8) == *(a2 + 8))
  {
    return ot::Data<(ot::DataLengthType)0>::MatchesBytesIn(a1, *a2);
  }

  return v3;
}

{
  return ot::Data<(ot::DataLengthType)0>::operator==(a1, a2);
}

ot::MeshCoP::NetworkNameManager *ot::MeshCoP::NetworkNameManager::NetworkNameManager(ot::MeshCoP::NetworkNameManager *this, ot::Instance *a2)
{
  ot::InstanceLocator::InstanceLocator(this, a2);
  ot::MeshCoP::NetworkName::NetworkName(this);
  ot::MeshCoP::NetworkName::NetworkName((this + 17));
  ot::MeshCoP::NetworkNameManager::SetNetworkName(this, "OpenThread");
  IgnoreError();
  ot::MeshCoP::NetworkNameManager::SetDomainName(this, "DefaultDomain");
  IgnoreError();
  return this;
}

{
  ot::MeshCoP::NetworkNameManager::NetworkNameManager(this, a2);
  return this;
}

uint64_t ot::MeshCoP::NetworkNameManager::SetDomainName(ot::MeshCoP::NetworkNameManager *this, ot *a2)
{
  v4 = ot::MeshCoP::NetworkName::Set((this + 17), a2);
  if (v4 == 24)
  {
    return 0;
  }

  else
  {
    return v4;
  }
}

uint64_t ot::MeshCoP::NetworkNameManager::SignalNetworkNameChange(ot::InstanceLocator *a1, unsigned int a2)
{
  v5 = a2;
  if (a2)
  {
    if (a2 == 24)
    {
      v3 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Notifier>(a1);
      ot::Notifier::SignalIfFirst(v3, 0x10000);
      return 0;
    }
  }

  else
  {
    v2 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Notifier>(a1);
    ot::Notifier::Signal(v2, 0x10000);
  }

  return v5;
}

uint64_t ot::MeshCoP::NetworkNameManager::SetDomainName(ot::MeshCoP::NetworkNameManager *this, const ot::MeshCoP::NameData *a2)
{
  v4 = ot::MeshCoP::NetworkName::Set((this + 17), a2);
  if (v4 == 24)
  {
    return 0;
  }

  else
  {
    return v4;
  }
}

uint64_t ot::Data<(ot::DataLengthType)0>::GetBytes(uint64_t a1)
{
  return *a1;
}

{
  return ot::Data<(ot::DataLengthType)0>::GetBytes(a1);
}

void ot::MutableData<(ot::DataLengthType)0>::GetBytes(uint64_t a1)
{
  ot::Data<(ot::DataLengthType)0>::GetBytes(a1);
  ot::AsNonConst<unsigned char>();
}

{
  ot::MutableData<(ot::DataLengthType)0>::GetBytes(a1);
}

uint64_t ot::MutableData<(ot::DataLengthType)0>::CopyBytesFrom(uint64_t a1, const void *a2, unsigned __int8 a3)
{
  if (*(a1 + 8) < a3)
  {
    v3 = 3;
  }

  else
  {
    v3 = 0;
  }

  v7 = v3;
  *(a1 + 8) = ot::Min<unsigned char>(*(a1 + 8), a3);
  ot::AsNonConst<unsigned char>();
  memcpy(v4, a2, *(a1 + 8));
  return v7;
}

{
  return ot::MutableData<(ot::DataLengthType)0>::CopyBytesFrom(a1, a2, a3);
}

ot::Random::NonCrypto *ot::Mac::GenerateRandomPanId(ot::Random::NonCrypto *this)
{
  do
  {
    this = ot::Random::NonCrypto::GetUint16(this);
  }

  while (this == 0xFFFF);
  return this;
}

_BYTE *ot::Mac::ExtAddress::GenerateRandom(ot::Mac::ExtAddress *this, uint64_t a2, unsigned __int16 a3)
{
  ot::Random::Crypto::Fill<ot::Mac::ExtAddress>(this, a2, a3);
  IgnoreError();
  ot::Mac::ExtAddress::SetGroup(this, 0);
  return ot::Mac::ExtAddress::SetLocal(this, 1);
}

uint64_t ot::Random::Crypto::Fill<ot::Mac::ExtAddress>(ot::Random::Crypto *a1, uint64_t a2, unsigned __int16 a3)
{
  return ot::Random::Crypto::FillBuffer(a1, 8, a3);
}

{
  return ot::Random::Crypto::Fill<ot::Mac::ExtAddress>(a1, a2, a3);
}

char *ot::Mac::ExtAddress::CopyAddress(char *result, void *a2, char a3)
{
  v7 = result;
  if (a3)
  {
    if (a3 == 1)
    {
      v6 = a2 + 7;
      for (i = 8; i; --i)
      {
        v3 = v6--;
        v4 = v7++;
        *v4 = *v3;
      }
    }
  }

  else
  {
    *result = *a2;
  }

  return result;
}

ot::StringWriter *ot::Mac::Address::ToString@<X0>(ot::Mac::Address *this@<X0>, ot::StringWriter *a2@<X8>)
{
  ot::String<(unsigned short)17>::String(a2);
  if (*(this + 8) == 2)
  {
    ot::Mac::Address::GetExtended(this);
    return ot::StringWriter::AppendHexBytes(a2, v2, 8);
  }

  else if (*(this + 8))
  {
    Short = ot::Mac::Address::GetShort(this);
    return ot::StringWriter::Append(a2, "0x%04x", Short);
  }

  else
  {
    return ot::StringWriter::Append(a2, "None");
  }
}

uint64_t ot::Mac::PanIds::SetSource(uint64_t this, __int16 a2)
{
  *this = a2;
  *(this + 4) = 1;
  return this;
}

uint64_t ot::Mac::PanIds::SetDestination(uint64_t this, __int16 a2)
{
  *(this + 2) = a2;
  *(this + 5) = 1;
  return this;
}

__n128 ot::Mac::KeyMaterial::SetKey(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

__n128 ot::Mac::KeyMaterial::ExtractKey(ot::Mac::KeyMaterial *this, __n128 *a2)
{
  ot::Mac::KeyMaterial::GetKey(this);
  result = *v2;
  *a2 = *v2;
  return result;
}

uint64_t ot::Mac::KeyMaterial::ConvertToCryptoKey(ot::Mac::KeyMaterial *this, ot::Crypto::Key *a2)
{
  ot::Mac::KeyMaterial::GetKey(this);
  ot::Mac::Key::GetBytes(v2);
  return ot::Crypto::Key::Set(a2, v3, 16);
}

void ot::Mac::Key::GetBytes(ot::Mac::Key *this)
{
  ;
}

{
  ot::Mac::Key::GetBytes(this);
}

BOOL ot::Mac::KeyMaterial::operator==(ot::Mac::KeyMaterial *a1, ot::Mac::KeyMaterial *a2)
{
  ot::Mac::KeyMaterial::GetKey(a1);
  v5 = v2;
  ot::Mac::KeyMaterial::GetKey(a2);
  return ot::Equatable<ot::Mac::Key>::operator==(v5, v3);
}

BOOL ot::Equatable<ot::Mac::Key>::operator==(const void *a1, const void *a2)
{
  return memcmp(a1, a2, 0x10uLL) == 0;
}

{
  return ot::Equatable<ot::Mac::Key>::operator==(a1, a2);
}

ot::Mac::SubMac *ot::Mac::SubMac::SubMac(ot::Mac::SubMac *this, ot::Instance *a2)
{
  ot::InstanceLocator::InstanceLocator(this, a2);
  v2 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Radio>(this);
  *this = ot::Radio::GetCaps(v2);
  v3 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Radio>(this);
  *(this + 4) = ot::Radio::GetTransmitBuffer(v3);
  ot::Mac::SubMac::Callbacks::Callbacks((this + 40), a2);
  ot::Callback<void (*)(void *,otBackboneRouterDomainPrefixEvent,otIp6Prefix const*),(ot::CallbackContextPosition)0>::Callback(this + 6);
  ot::Mac::KeyMaterial::KeyMaterial((this + 64));
  ot::Mac::KeyMaterial::KeyMaterial((this + 80));
  ot::Mac::KeyMaterial::KeyMaterial((this + 96));
  ot::TimerMicroIn<ot::Mac::SubMac,&ot::Mac::SubMac::HandleTimer>::TimerMicroIn((this + 136), a2);
  ot::TimerMicro::TimerMicro((this + 200), a2, ot::Mac::SubMac::HandleCslTimer);
  ot::Mac::CslAccuracy::Init(this + 184);
  ot::Mac::SubMac::Init(this);
  return this;
}

{
  ot::Mac::SubMac::SubMac(this, a2);
  return this;
}

void ot::Mac::SubMac::HandleTimer(ot::Mac::Frame **this, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = *(this + 2);
  switch(v11)
  {
    case 3:
      goto LABEL_8;
    case 4:
      ot::Logger::LogAtLevel<(ot::LogLevel)5>("SubMac", "Ack timer timed out", a3, a4, a5, a6, a7, a8);
      v9 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Radio>(this);
      Channel = ot::Mac::Frame::GetChannel(this[4]);
      ot::Radio::Receive(v9, Channel);
      IgnoreError();
      ot::Mac::SubMac::HandleTransmitDone(this, this[4], 0, 0xEu);
      return;
    case 5:
      ot::Mac::SubMac::SampleRssi(this);
      return;
    case 6:
      ot::Mac::SubMac::StartCsmaBackoff(this);
      return;
    case 7:
LABEL_8:
      ot::Mac::SubMac::BeginTransmit(this);
      return;
    case 29:
      ot::Logger::LogAtLevel<(ot::LogLevel)2>("SubMac", "Duplicated frame counter detected.", a3, a4, a5, a6, a7, a8);
      break;
  }
}

uint64_t ot::Radio::GetCaps(ot::Radio *this)
{
  ot::Radio::GetInstancePtr(this);
  return otPlatRadioGetCaps();
}

{
  return ot::Radio::GetCaps(this);
}

ot::TimerMilli *ot::TimerMicroIn<ot::Mac::SubMac,&ot::Mac::SubMac::HandleTimer>::TimerMicroIn(ot::TimerMilli *a1, ot::Instance *a2)
{
  ot::TimerMicroIn<ot::Mac::SubMac,&ot::Mac::SubMac::HandleTimer>::TimerMicroIn(a1, a2);
  return a1;
}

{
  ot::TimerMilli::TimerMilli(a1, a2, ot::TimerMicroIn<ot::Mac::SubMac,&ot::Mac::SubMac::HandleTimer>::HandleTimer);
  return a1;
}

_BYTE *ot::Mac::CslAccuracy::Init(_BYTE *this)
{
  *this = -1;
  this[1] = -1;
  return this;
}

{
  return ot::Mac::CslAccuracy::Init(this);
}

uint64_t ot::Mac::SubMac::Init(ot::Mac::SubMac *this)
{
  v4 = this;
  *(this + 2) = 0;
  *(this + 3) = 0;
  *(this + 6) = 0;
  *(this + 4) = -2;
  *(this + 5) = -2;
  ot::Clearable<ot::Mac::ExtAddress>::Clear((this + 12));
  *(this + 20) = *(this + 20) & 0xFE | 1;
  *(this + 21) = 127;
  ot::Time::Time(&v3, 0);
  *(this + 6) = v3;
  *(this + 117) = 0;
  *(this + 20) &= ~2u;
  ot::Mac::KeyMaterial::Clear((this + 64));
  ot::Mac::KeyMaterial::Clear((this + 80));
  ot::Mac::KeyMaterial::Clear((this + 96));
  *(this + 28) = 0;
  *(this + 116) = 0;
  ot::TimerMicro::Stop((this + 136));
  return ot::Mac::SubMac::CslInit(this);
}

void *ot::Clearable<ot::Mac::ExtAddress>::Clear(void *a1)
{
  return ot::ClearAllBytes<ot::Mac::ExtAddress>(a1);
}

{
  return ot::Clearable<ot::Mac::ExtAddress>::Clear(a1);
}

void ot::Mac::SubMac::InitializeCSTPhase(ot::Mac::Frame **this)
{
  ot::Mac::Frame::GetThreadIe(this[4], 2u);
  if (v1)
  {
    v22 = (v1 + 2);
    v2 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::Mle>(this);
    if (ot::Mle::Mle::IsCslPeripheralDetaching(v2))
    {
      ot::Mac::CstIe::SetPhase(v22, 0, v3);
      ot::Mac::CstIe::SetPeriod(v22, 0, v4);
      ot::Mac::Frame::SetCslIe(this[4], 0, 0);
      ot::Logger::LogAtLevel<(ot::LogLevel)4>("SubMac", "%s: Setting CST Phase/Period to 0, Needs Confirmation", v5, v6, v7, v8, v9, v10, "InitializeCSTPhase");
      v11 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::Mle>(this);
      ot::Mle::Mle::SetPeripheralDetachState(v11, 0);
      v12 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::Mle>(this);
      ot::Mle::Mle::NeedsDetachConfirm(v12, 1);
    }

    else
    {
      ot::Mac::CstIe::SetPhase(v22, 0xFFFFu, v3);
      ot::Mac::CstIe::SetPeriod(v22, 0xFFFFu, v13);
      ot::Mac::Frame::SetCslIe(this[4], 0xFFFFu, 0xFFFFu);
    }
  }

  else
  {
    v14 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::Mle>(this);
    if (ot::Mle::Mle::IsCslPeripheralDetaching(v14))
    {
      ot::Logger::LogAtLevel<(ot::LogLevel)4>("SubMac", "%s: Detach is pending, but TX frame does not have CST IE to set it to 0 for link teardown", v15, v16, v17, v18, v19, v20, "InitializeCSTPhase");
    }
  }
}

uint64_t ot::Mac::CstIe::SetPhase(ot::Mac::CstIe *this, unsigned __int16 a2, unsigned __int8 *a3)
{
  return ot::LittleEndian::WriteUint16(a2, this + 2, a3);
}

{
  return ot::Mac::CstIe::SetPhase(this, a2, a3);
}

uint64_t ot::Mac::CstIe::SetPeriod(ot::Mac::CstIe *this, unsigned __int16 a2, unsigned __int8 *a3)
{
  return ot::LittleEndian::WriteUint16(a2, this + 3, a3);
}

{
  return ot::Mac::CstIe::SetPeriod(this, a2, a3);
}

uint64_t ot::Mle::Mle::SetPeripheralDetachState(uint64_t this, char a2)
{
  *(this + 856) = *(this + 856) & 0xFE | a2 & 1;
  return this;
}

{
  return ot::Mle::Mle::SetPeripheralDetachState(this, a2);
}

uint64_t ot::Mle::Mle::NeedsDetachConfirm(uint64_t this, char a2)
{
  *(this + 856) = *(this + 856) & 0xFD | (2 * (a2 & 1));
  return this;
}

{
  return ot::Mle::Mle::NeedsDetachConfirm(this, a2);
}

void ot::Mac::SubMac::SetPanId(ot::Mac::SubMac *this, unsigned __int16 a2)
{
  v2 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Radio>(this);
  ot::Radio::SetPanId(v2, a2);
  ot::Logger::LogAtLevel<(ot::LogLevel)5>("SubMac", "RadioPanId: 0x%04x", v3, v4, v5, v6, v7, v8, a2);
}

uint64_t ot::Radio::SetPanId(ot::Radio *this, unsigned __int16 a2)
{
  InstancePtr = ot::Radio::GetInstancePtr(this);
  return otPlatRadioSetPanId(InstancePtr, a2);
}

{
  return ot::Radio::SetPanId(this, a2);
}

void ot::Mac::SubMac::SetShortAddress(ot::Mac::SubMac *this, __int16 a2)
{
  *(this + 4) = a2;
  v2 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Radio>(this);
  ot::Radio::SetShortAddress(v2, *(this + 4));
  ot::Logger::LogAtLevel<(ot::LogLevel)5>("SubMac", "RadioShortAddress: 0x%04x", v3, v4, v5, v6, v7, v8, *(this + 4));
}

void ot::Mac::SubMac::SetAlternateShortAddress(unsigned __int16 *this, unsigned __int16 a2)
{
  if (this[5] != a2)
  {
    this[5] = a2;
    v2 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Radio>(this);
    ot::Radio::SetAlternateShortAddress(v2, this[5]);
    ot::Logger::LogAtLevel<(ot::LogLevel)5>("SubMac", "RadioAlternateShortAddress: 0x%04x", v3, v4, v5, v6, v7, v8, this[5]);
  }
}

uint64_t ot::Radio::SetAlternateShortAddress(ot::Radio *this, unsigned __int16 a2)
{
  InstancePtr = ot::Radio::GetInstancePtr(this);
  return otPlatRadioSetAlternateShortAddress(InstancePtr, a2);
}

{
  return ot::Radio::SetAlternateShortAddress(this, a2);
}

void ot::Mac::SubMac::SetExtAddress(ot::Mac::SubMac *this, const ot::Mac::ExtAddress *a2)
{
  v31 = this;
  v30 = a2;
  v27 = this;
  *(this + 12) = *a2;
  v26 = v34;
  ot::Mac::ExtAddress::Set(v34, v30, 1);
  v25[10] = v33;
  ot::Mac::ExtAddress::ToString((v27 + 12), v33);
  v2 = ot::String<(unsigned short)17>::AsCString(v33);
  v3 = *v30;
  v4 = *(v30 + 1);
  v5 = *(v30 + 2);
  v6 = *(v30 + 3);
  v7 = *(v30 + 4);
  v8 = *(v30 + 5);
  v9 = *(v30 + 6);
  v10 = *(v30 + 7);
  v25[11] = v25;
  v29 = "SubMac";
  ot::Logger::LogAtLevel<(ot::LogLevel)5>("SubMac", "RadioExtAddress1: %s 0[%d] 1[%d] 2[%d] 3[%d] 4[%d] 5[%d] 6[%d] 7[%d]", v11, v12, v13, v14, v15, v16, v2, v3, v4, v5, v6, v7, v8, v9, v10);
  v17 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Radio>(v27);
  ot::Radio::SetExtendedAddress(v17, v26);
  v28 = v32;
  ot::Mac::ExtAddress::ToString((v27 + 12), v32);
  v18 = ot::String<(unsigned short)17>::AsCString(v28);
  ot::Logger::LogAtLevel<(ot::LogLevel)5>(v29, "RadioExtAddress: %s", v19, v20, v21, v22, v23, v24, v18);
}

void ot::Mac::SubMac::SetRxOnWhenIdle(ot::Mac::SubMac *this, char a2)
{
  *(this + 20) = *(this + 20) & 0xFE | a2 & 1;
  if (ot::Mac::SubMac::RadioSupportsRxOnWhenIdle(this))
  {
    v8 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Radio>(this);
    ot::Radio::SetRxOnWhenIdle(v8, *(this + 20) & 1);
  }

  ot::Logger::LogAtLevel<(ot::LogLevel)5>("SubMac", "RxOnWhenIdle: %d", v2, v3, v4, v5, v6, v7, *(this + 20) & 1);
}

BOOL ot::Mac::SubMac::RadioSupportsRxOnWhenIdle(ot::Mac::SubMac *this)
{
  return (*this & 0x100) != 0;
}

{
  return ot::Mac::SubMac::RadioSupportsRxOnWhenIdle(this);
}

void ot::Radio::SetRxOnWhenIdle(ot::Radio *this, char a2)
{
  ot::Radio::GetInstancePtr(this);
  j__otPlatRadioSetRxOnWhenIdle();
}

{
  ot::Radio::SetRxOnWhenIdle(this, a2);
}

uint64_t ot::Mac::SubMac::Enable(ot::Mac::SubMac *this)
{
  v5 = 0;
  if (!*(this + 2))
  {
    v1 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Radio>(this);
    v5 = ot::Radio::Enable(v1);
    if (!v5)
    {
      v2 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Radio>(this);
      v5 = ot::Radio::Sleep(v2);
      if (!v5)
      {
        ot::Mac::SubMac::SetState(this, 1u);
      }
    }
  }

  if (v5)
  {
    __assert_rtn("Enable", "sub_mac.cpp", 300, "false");
  }

  return 0;
}

void ot::Mac::SubMac::SetState(uint64_t result, unsigned __int8 a2)
{
  v12 = result;
  v11 = a2;
  v10 = result;
  if (*(result + 2) != a2)
  {
    v9 = ot::Mac::SubMac::StateToString(*(v10 + 2));
    v2 = ot::Mac::SubMac::StateToString(v11);
    ot::Logger::LogAtLevel<(ot::LogLevel)5>("SubMac", "RadioState: %s -> %s", v3, v4, v5, v6, v7, v8, v9, v2);
    *(v10 + 2) = v11;
  }
}

uint64_t ot::Mac::SubMac::Disable(ot::Mac::SubMac *this)
{
  ot::TimerMicro::Stop((this + 200));
  ot::TimerMicro::Stop((this + 136));
  v1 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Radio>(this);
  v5 = ot::Radio::Sleep(v1);
  if (!v5)
  {
    v2 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Radio>(this);
    v5 = ot::Radio::Disable(v2);
    if (!v5)
    {
      ot::Mac::SubMac::SetState(this, 0);
    }
  }

  return v5;
}

uint64_t ot::Radio::Disable(ot::Radio *this)
{
  ot::Radio::GetInstancePtr(this);
  return otPlatRadioDisable();
}

{
  return ot::Radio::Disable(this);
}

uint64_t ot::Mac::SubMac::Sleep(ot::Mac::SubMac *this)
{
  v12 = this;
  v10 = this;
  v11 = 0;
  if (ot::Mac::SubMac::ShouldHandleTransitionToSleep(this))
  {
    v1 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Radio>(v10);
    v11 = ot::Radio::Sleep(v1);
  }

  if (v11)
  {
    v2 = ot::ErrorToString(v11);
    ot::Logger::LogAtLevel<(ot::LogLevel)2>("SubMac", "RadioSleep() failed, error: %s", v3, v4, v5, v6, v7, v8, v2);
  }

  else
  {
    ot::Mac::SubMac::SetState(v10, 1u);
  }

  return v11;
}

BOOL ot::Mac::SubMac::ShouldHandleTransitionToSleep(ot::Mac::SubMac *this)
{
  LOBYTE(v2) = 1;
  if ((*(this + 20) & 1) == 0)
  {
    return !ot::Mac::SubMac::RadioSupportsRxOnWhenIdle(this);
  }

  return v2;
}

uint64_t ot::Mac::SubMac::Receive(ot::Mac::SubMac *this, unsigned __int8 a2)
{
  v15 = this;
  v14 = a2;
  v12 = this;
  v13 = 0;
  if ((*(this + 20) & 2) != 0)
  {
    v2 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Radio>(v12);
    v13 = ot::Radio::Sleep(v2);
  }

  else
  {
    v3 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Radio>(v12);
    v13 = ot::Radio::Receive(v3, v14);
  }

  if (v13)
  {
    v4 = ot::ErrorToString(v13);
    ot::Logger::LogAtLevel<(ot::LogLevel)2>("SubMac", "RadioReceive() failed, error: %s", v5, v6, v7, v8, v9, v10, v4);
  }

  else
  {
    ot::Mac::SubMac::SetState(v12, 2u);
  }

  return v13;
}

void ot::Mac::SubMac::HandleReceiveDone(ot::Mac::SubMac *a1, ot::Mac::Frame *a2, int a3)
{
  v6[1] = a1;
  v6[0] = a2;
  v5 = a3;
  if (ot::CallbackBase<void (*)(otRadioFrame const*,BOOL,void *)>::IsSet(a1 + 6) && v6[0] && !v5)
  {
    v4 = 0;
    ot::Callback<void (*)(otRadioFrame const*,BOOL,void *),(ot::CallbackContextPosition)1>::Invoke<ot::Mac::RxFrame *&,BOOL>(a1 + 48, v6, &v4);
  }

  if (!ot::Mac::SubMac::ShouldHandleTransmitSecurity(a1) && v6[0] && (*(v6[0] + 31) & 2) != 0)
  {
    ot::Mac::SubMac::SignalFrameCounterUsed(a1, *(v6[0] + 6), *(v6[0] + 28));
  }

  ot::Mac::SubMac::UpdateCslLastSyncTimestamp(a1, v6[0], v5);
  if ((*(a1 + 20) & 2) == 0)
  {
    ot::Mac::SubMac::Callbacks::ReceiveDone((a1 + 40), v6[0], v5);
  }
}

BOOL ot::CallbackBase<void (*)(otRadioFrame const*,BOOL,void *)>::IsSet(void *a1)
{
  return *a1 != 0;
}

{
  return ot::CallbackBase<void (*)(otRadioFrame const*,BOOL,void *)>::IsSet(a1);
}

uint64_t ot::Callback<void (*)(otRadioFrame const*,BOOL,void *),(ot::CallbackContextPosition)1>::Invoke<ot::Mac::RxFrame *&,BOOL>(uint64_t a1, void *a2, _BYTE *a3)
{
  return (*a1)(*a2, *a3 & 1, *(a1 + 8));
}

{
  return ot::Callback<void (*)(otRadioFrame const*,BOOL,void *),(ot::CallbackContextPosition)1>::Invoke<ot::Mac::RxFrame *&,BOOL>(a1, a2, a3);
}

BOOL ot::Mac::SubMac::ShouldHandleTransmitSecurity(ot::Mac::SubMac *this)
{
  if (ot::Mac::SubMac::RadioSupportsTransmitSecurity(this))
  {
    return 0;
  }

  else
  {
    v1 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mac::LinkRaw>(this);
    return !ot::Mac::LinkRaw::IsEnabled(v1);
  }
}

void ot::Mac::SubMac::SignalFrameCounterUsed(uint64_t this, unsigned int a2, char a3)
{
  if (a3 == *(this + 116))
  {
    ot::Mac::SubMac::Callbacks::FrameCounterUsed((this + 40), a2);
    if (*(this + 112) <= a2)
    {
      *(this + 112) = a2 + 1;
    }
  }
}

uint64_t ot::Mac::SubMac::Send(ot::Mac::Frame **this)
{
  v18 = this;
  v17 = 0;
  if (*(this + 2) == 5)
  {
    return 13;
  }

  else
  {
    ot::InstanceLocator::GetInstance(this);
    if ((otPlatRadioGetRcp2Vendor2Enabled() & 1) != 0 && (v2 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::Mle>(this), ot::Mle::Mle::IsSleepyRouter(v2)) && ((v3 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::Mle>(this), ot::Mle::Mle::IsRouter(v3)) || (v4 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::Mle>(this), ot::Mle::Mle::IsLeader(v4))) && (v5 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::Mle>(this), !ot::Mle::Mle::IsCslPeripheralDetached(v5)) && (ot::Mac::Address::Address(v16), ot::Mac::Frame::GetDstAddr(this[4], v16), ot::Mac::Address::IsBroadcast(v16)))
    {
      ot::Logger::LogAtLevel<(ot::LogLevel)5>("SubMac", "%s: Dropping broadcast for sleepy router", v6, v7, v8, v9, v10, v11, "Send");
      ot::Mac::SubMac::Callbacks::TransmitDone((this + 5), this[4], 0, 0);
    }

    else if ((*(this + 20) & 2) != 0)
    {
      v14 = this[4];
      if (ot::Mac::Frame::GetAckRequest(v14, v1))
      {
        v12 = 14;
      }

      else
      {
        v12 = 0;
      }

      ot::Mac::SubMac::Callbacks::TransmitDone((this + 5), v14, 0, v12);
    }

    else
    {
      ot::Mac::SubMac::ProcessTransmitSecurity(this, v1);
      *(this + 3) = 0;
      *(this + 6) = 0;
      *(this + 117) = 0;
      *(this + 5) = 0;
      *(this + 4) = 0;
      ot::Mac::SubMac::StartCsmaBackoff(this);
    }
  }

  return v17;
}

BOOL ot::Mle::Mle::IsRouter(ot::Mle::Mle *this)
{
  return *(this + 130) == 3;
}

{
  return ot::Mle::Mle::IsRouter(this);
}

void ot::Mac::SubMac::ProcessTransmitSecurity(ot::Mac::SubMac *this, unsigned __int16 a2)
{
  v9 = this;
  ExtAddress = 0;
  v7 = 0;
  if (ot::Mac::Frame::GetSecurityEnabled(*(this + 4), a2) && (ot::Mac::TxFrame::IsSecurityProcessed(*(this + 4)) & 1) == 0 && !ot::Mac::Frame::GetKeyIdMode(*(this + 4), &v7))
  {
    if ((ot::Mac::TxFrame::IsHeaderUpdated(*(this + 4)) & 1) == 0)
    {
      ot::Mac::Frame::SetKeyId(*(this + 4), *(this + 116));
    }

    if (ot::Mac::SubMac::ShouldHandleTransmitSecurity(this))
    {
      if (ot::Mac::Frame::IsWakeupFrame(*(this + 4), v2))
      {
        if (v7 != 16)
        {
          return;
        }
      }

      else if (v7 != 8)
      {
        return;
      }

      v4 = *(this + 4);
      CurrentMacKey = ot::Mac::SubMac::GetCurrentMacKey(this);
      ot::Mac::TxFrame::SetAesKey(v4, CurrentMacKey);
      if ((ot::Mac::TxFrame::IsHeaderUpdated(*(this + 4)) & 1) == 0)
      {
        FrameCounter = ot::Mac::SubMac::GetFrameCounter(this);
        ot::Mac::Frame::SetFrameCounter(*(this + 4), FrameCounter);
        ot::Mac::SubMac::SignalFrameCounterUsed(this, FrameCounter, *(this + 116));
      }

      ExtAddress = ot::Mac::SubMac::GetExtAddress(this);
      ot::Mac::TxFrame::ProcessTransmitAesCcm(*(this + 4), ExtAddress);
    }
  }
}

void ot::Mac::SubMac::StartCsmaBackoff(ot::Mac::SubMac *this)
{
  v8 = this;
  v7 = *(this + 3) + 3;
  if (!*(*(this + 4) + 36))
  {
    ot::Mac::SubMac::SetState(this, 3u);
    if (ot::Mac::SubMac::ShouldHandleCsmaBackOff(this))
    {
      v7 = ot::Min<unsigned char>(v7, 5u);
      ot::Mac::SubMac::StartTimerForBackoff(this, v7, v3);
      return;
    }

LABEL_8:
    ot::Mac::SubMac::BeginTransmit(this);
    return;
  }

  ot::Mac::SubMac::SetState(this, 7u);
  if (!ot::Mac::SubMac::ShouldHandleTransmitTargetTime(this))
  {
    goto LABEL_8;
  }

  v6 = 0;
  ot::Time::Time(&v6, *(*(this + 4) + 32));
  v5 = 0;
  ot::InstanceLocator::GetInstance(this);
  Now = otPlatRadioGetNow();
  ot::Time::Time(&v5, Now);
  ot::Time::operator+=(&v6, *(*(this + 4) + 36) - 328);
  if (ot::Time::operator<(&v5, &v6))
  {
    v2 = ot::Time::operator-(&v6, &v5);
    ot::Mac::SubMac::StartTimer(this, v2);
  }

  else
  {
    ot::Mac::SubMac::BeginTransmit(this);
  }
}

BOOL ot::Mac::SubMac::ShouldHandleTransmitTargetTime(ot::Mac::SubMac *this)
{
  if (ot::Mac::SubMac::RadioSupportsTransmitTiming(this))
  {
    return 0;
  }

  else
  {
    v1 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mac::LinkRaw>(this);
    return !ot::Mac::LinkRaw::IsEnabled(v1);
  }
}

_DWORD *ot::Time::operator+=(_DWORD *result, int a2)
{
  *result += a2;
  return result;
}

{
  return ot::Time::operator+=(result, a2);
}

_BYTE *ot::Mac::SubMac::BeginTransmit(_BYTE *this)
{
  v9 = this;
  v5 = this;
  v8 = 0;
  if (this[2] == 3 || this[2] == 7)
  {
    if ((*this & 0x10) == 0)
    {
      v4 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Radio>(this);
      Channel = ot::Mac::Frame::GetChannel(*(v5 + 4));
      if (ot::Radio::Receive(v4, Channel))
      {
        __assert_rtn("BeginTransmit", "sub_mac.cpp", 668, "false");
      }
    }

    ot::Mac::SubMac::SetState(v5, 4u);
    if (ot::CallbackBase<void (*)(otRadioFrame const*,BOOL,void *)>::IsSet(v5 + 6))
    {
      v7 = *(v5 + 4);
      v6 = 1;
      ot::Callback<void (*)(otRadioFrame const*,BOOL,void *),(ot::CallbackContextPosition)1>::Invoke<ot::Mac::TxFrame *,BOOL>(v5 + 48, &v7, &v6);
    }

    ot::Mac::SubMac::InitializeCSTPhase(v5);
    v2 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Radio>(v5);
    this = ot::Radio::Transmit(v2, *(v5 + 4));
    v8 = this;
    if (this == 13 && *(*(v5 + 4) + 36))
    {
      *(*(v5 + 4) + 36) = 0;
      *(*(v5 + 4) + 32) = 0;
      v3 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Radio>(v5);
      this = ot::Radio::Transmit(v3, *(v5 + 4));
      v8 = this;
    }

    if (v8)
    {
      __assert_rtn("BeginTransmit", "sub_mac.cpp", 698, "false");
    }
  }

  return this;
}

BOOL ot::Mac::SubMac::ShouldHandleCsmaBackOff(ot::Mac::SubMac *this)
{
  if (ot::Mac::SubMac::RadioSupportsCsmaBackoff(this))
  {
    return 0;
  }

  else
  {
    v1 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mac::LinkRaw>(this);
    return !ot::Mac::LinkRaw::IsEnabled(v1);
  }
}

void ot::Mac::SubMac::StartTimerForBackoff(ot::Mac::Frame **this, unsigned __int8 a2, unsigned int a3)
{
  v14 = 320 * ot::Random::NonCrypto::GetUint32InRange(0, 1 << a2);
  if (*(this + 20))
  {
    v12 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Radio>(this);
    Channel = ot::Mac::Frame::GetChannel(this[4]);
    ot::Radio::Receive(v12, Channel);
  }

  else
  {
    v4 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Radio>(this);
    ot::Radio::Sleep(v4);
  }

  IgnoreError();
  ot::Mac::SubMac::StartTimer(this, v14);
  if (*(this + 2) == 6)
  {
    v5 = ot::ToUlong(v14);
    ot::Logger::LogAtLevel<(ot::LogLevel)5>("SubMac", "Delaying retx for %lu usec (be=%u)", v6, v7, v8, v9, v10, v11, v5, a2);
  }
}

uint64_t ot::Callback<void (*)(otRadioFrame const*,BOOL,void *),(ot::CallbackContextPosition)1>::Invoke<ot::Mac::TxFrame *,BOOL>(uint64_t a1, void *a2, _BYTE *a3)
{
  return (*a1)(*a2, *a3 & 1, *(a1 + 8));
}

{
  return ot::Callback<void (*)(otRadioFrame const*,BOOL,void *),(ot::CallbackContextPosition)1>::Invoke<ot::Mac::TxFrame *,BOOL>(a1, a2, a3);
}

uint64_t ot::Mac::SubMac::HandleTransmitStarted(ot::Mac::SubMac *this, ot::Mac::TxFrame *a2)
{
  result = ot::Mac::SubMac::ShouldHandleAckTimeout(this);
  if (result)
  {
    result = ot::Mac::Frame::GetAckRequest(a2, v3);
    if (result)
    {
      return ot::Mac::SubMac::StartTimer(this, 0x3E80u);
    }
  }

  return result;
}

BOOL ot::Mac::SubMac::ShouldHandleAckTimeout(ot::Mac::SubMac *this)
{
  if (ot::Mac::SubMac::RadioSupportsAckTimeout(this))
  {
    return 0;
  }

  else
  {
    v1 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mac::LinkRaw>(this);
    return !ot::Mac::LinkRaw::IsEnabled(v1);
  }
}

void ot::Mac::SubMac::HandleTransmitDone(_BYTE *a1, ot::Mac::TxFrame *a2, ot::Mac::RxFrame *a3, unsigned int a4)
{
  v38 = a1;
  v37 = a2;
  v36 = a3;
  v35 = a4;
  v34 = 1;
  v33 = 0;
  v32 = 0;
  v31 = -1;
  ot::TimerMicro::Stop((a1 + 136));
  if (!v35)
  {
LABEL_10:
    if (ot::Mac::TxFrame::IsCsmaCaEnabled(v37))
    {
      Channel = ot::Mac::Frame::GetChannel(v37);
      ot::Mac::SubMac::Callbacks::RecordCcaStatus((a1 + 40), v34 & 1, Channel);
    }

    ot::Mac::SubMac::UpdateCslLastSyncTimestamp(a1, v37, v36);
    goto LABEL_18;
  }

  if (v35 != 5)
  {
    if (v35 == 11)
    {
      goto LABEL_18;
    }

    if (v35 != 14)
    {
      if (v35 != 15)
      {
        if (v35 != 29)
        {
          v11 = ot::ErrorToString(v35);
          ot::Logger::LogAtLevel<(ot::LogLevel)2>("SubMac", "SubMac::HandleTransmitDone Unhandled error=%s", v12, v13, v14, v15, v16, v17, v11);
          __assert_rtn("HandleTransmitDone", "sub_mac.cpp", 830, "false");
        }

        ot::Logger::LogAtLevel<(ot::LogLevel)2>("SubMac", "Duplicated frame counter detected.", v4, v5, v6, v7, v8, v9);
        goto LABEL_18;
      }

      v34 = 0;
    }

    goto LABEL_10;
  }

  ot::Logger::LogAtLevel<(ot::LogLevel)2>("SubMac", "Radio access not granted by the external device.", v4, v5, v6, v7, v8, v9);
  if (ot::Mac::Frame::GetKeyIdMode(v37, &v31) || v31)
  {
    v32 = 1;
  }

  v35 = 15;
LABEL_18:
  if (ot::CallbackBase<void (*)(otRadioFrame const*,BOOL,void *)>::IsSet(a1 + 6))
  {
    ot::Logger::LogAtLevel<(ot::LogLevel)2>("SubMac", "%s:%d: mPcapCallback", v18, v19, v20, v21, v22, v23, "void ot::Mac::SubMac::HandleTransmitDone(TxFrame &, RxFrame *, Error)", 836);
    v30 = v37;
    v29 = 0;
    ot::Callback<void (*)(otRadioFrame const*,BOOL,void *),(ot::CallbackContextPosition)1>::Invoke<ot::Mac::TxFrame *,BOOL>((a1 + 48), &v30, &v29);
  }

  ot::Mac::SubMac::SignalFrameCounterUsedOnTxDone(a1, v37);
  if (v34 & 1) != 0 || !ot::Mac::SubMac::ShouldHandleCsmaBackOff(a1) || (v27 = a1[3], v27 >= ot::Mac::TxFrame::GetMaxCsmaBackoffs(v37)) || (v32)
  {
    a1[3] = 0;
    if (v35 == 14)
    {
      ++a1[4];
    }

    else if (v35 == 15)
    {
      ++a1[5];
    }

    v26 = 0;
    if (v35)
    {
      v26 = 0;
      if (ot::Mac::SubMac::ShouldHandleRetries(a1))
      {
        v25 = a1[6];
        v26 = v25 < ot::Mac::TxFrame::GetMaxFrameRetries(v37);
      }
    }

    v33 = v26;
    ot::Mac::SubMac::Callbacks::RecordFrameTransmitStatus((a1 + 40), v37, v35, a1[6], v26);
    if (v33)
    {
      ++a1[6];
      ot::Mac::TxFrame::SetIsARetransmission(v37, 1);
      if (v35 == 14)
      {
        ot::Mac::SubMac::SetState(a1, 6u);
        ot::Mac::SubMac::StartTimerForBackoff(a1, a1[117], v24);
        a1[117] = ot::Min<unsigned char>(a1[117] + 1, 5u);
      }

      else
      {
        ot::Mac::SubMac::StartCsmaBackoff(a1);
      }
    }

    else
    {
      if (ot::Mac::SubMac::ShouldHandleRetries(a1))
      {
        ot::Mac::TxFrame::SetTxRetryCount(v37, a1[6]);
      }

      ot::Mac::SubMac::SetState(a1, 2u);
      ot::Mac::SubMac::Callbacks::TransmitDone((a1 + 40), v37, v36, v35);
    }
  }

  else
  {
    ++a1[3];
    ot::Mac::SubMac::StartCsmaBackoff(a1);
  }
}

uint64_t ot::Mac::TxFrame::IsCsmaCaEnabled(ot::Mac::TxFrame *this)
{
  return (*(this + 45) >> 2) & 1;
}

{
  return ot::Mac::TxFrame::IsCsmaCaEnabled(this);
}

void ot::Mac::SubMac::SignalFrameCounterUsedOnTxDone(ot::Mac::SubMac *this, const ot::Mac::TxFrame *a2)
{
  v11 = this;
  v10 = a2;
  v9 = 0;
  v8 = 0;
  v7 = 0;
  if (ot::Mac::Frame::GetType(a2) == 5 && !ot::Mac::Frame::GetFrameCounter(v10, &v7))
  {
    v2 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Radio>(this);
    ot::Radio::SetMacFrameCounter(v2, v7 + 1);
  }

  if (!ot::Mac::SubMac::ShouldHandleTransmitSecurity(this) && ot::Mac::Frame::GetSecurityEnabled(v10, v3) && (ot::Mac::TxFrame::IsHeaderUpdated(v10) & 1) != 0)
  {
    v4 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mac::LinkRaw>(this);
    IsEnabled = ot::Mac::LinkRaw::IsEnabled(v4);
    if (ot::Mac::Frame::GetKeyIdMode(v10, &v9))
    {
      if (!IsEnabled)
      {
        __assert_rtn("SignalFrameCounterUsedOnTxDone", "sub_mac.cpp", 954, "allowError");
      }
    }

    else
    {
      if (ot::Mac::Frame::GetType(v10) == 5)
      {
        if (v9 != 16)
        {
          return;
        }
      }

      else if (v9 != 8)
      {
        return;
      }

      if (ot::Mac::Frame::GetFrameCounter(v10, &v7))
      {
        if (!IsEnabled)
        {
          __assert_rtn("SignalFrameCounterUsedOnTxDone", "sub_mac.cpp", 969, "allowError");
        }
      }

      else if (ot::Mac::Frame::GetKeyId(v10, &v8))
      {
        if (!IsEnabled)
        {
          __assert_rtn("SignalFrameCounterUsedOnTxDone", "sub_mac.cpp", 970, "allowError");
        }
      }

      else
      {
        ot::Mac::SubMac::SignalFrameCounterUsed(this, v7, v8);
      }
    }
  }
}

uint64_t ot::Mac::TxFrame::GetMaxCsmaBackoffs(ot::Mac::TxFrame *this)
{
  return *(this + 40);
}

{
  return ot::Mac::TxFrame::GetMaxCsmaBackoffs(this);
}

BOOL ot::Mac::SubMac::ShouldHandleRetries(ot::Mac::SubMac *this)
{
  if (ot::Mac::SubMac::RadioSupportsRetries(this))
  {
    return 0;
  }

  else
  {
    v1 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mac::LinkRaw>(this);
    return !ot::Mac::LinkRaw::IsEnabled(v1);
  }
}

uint64_t ot::Mac::TxFrame::SetTxRetryCount(uint64_t this, char a2)
{
  *(this + 42) = a2;
  return this;
}

{
  return ot::Mac::TxFrame::SetTxRetryCount(this, a2);
}

uint64_t ot::Radio::SetMacFrameCounter(ot::Radio *this, unsigned int a2)
{
  InstancePtr = ot::Radio::GetInstancePtr(this);
  return otPlatRadioSetMacFrameCounter(InstancePtr, a2);
}

{
  return ot::Radio::SetMacFrameCounter(this, a2);
}

uint64_t ot::GetProvider<ot::InstanceLocator>::Get<ot::Mac::LinkRaw>(ot::InstanceLocator *a1)
{
  Instance = ot::InstanceLocator::GetInstance(a1);
  return ot::Instance::Get<ot::Mac::LinkRaw>(Instance);
}

{
  return ot::GetProvider<ot::InstanceLocator>::Get<ot::Mac::LinkRaw>(a1);
}

uint64_t ot::Mac::SubMac::GetRssi(ot::Mac::SubMac *this)
{
  if ((*(this + 20) & 2) != 0)
  {
    return 127;
  }

  else
  {
    v1 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Radio>(this);
    return ot::Radio::GetRssi(v1);
  }
}

uint64_t ot::Radio::GetRssi(ot::Radio *this)
{
  ot::Radio::GetInstancePtr(this);
  return otPlatRadioGetRssi();
}

{
  return ot::Radio::GetRssi(this);
}

uint64_t ot::Radio::GetReceiveSensitivity(ot::Radio *this)
{
  ot::Radio::GetInstancePtr(this);
  return otPlatRadioGetReceiveSensitivity();
}

{
  return ot::Radio::GetReceiveSensitivity(this);
}

uint64_t ot::Mac::SubMac::EnergyScan(ot::Mac::SubMac *this, unsigned __int8 a2, unsigned __int16 a3)
{
  v14 = this;
  v13 = a2;
  v12 = a3;
  v11 = 0;
  v8 = *(this + 2);
  if (*(this + 2) && (v8 == 2 || v8 == 1 || (v8 - 3) > 4))
  {
    if ((*(this + 20) & 2) != 0)
    {
      ot::Mac::SubMac::HandleEnergyScanDone(this, 127);
    }

    else if (ot::Mac::SubMac::RadioSupportsEnergyScan(this))
    {
      v3 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Radio>(this);
      ot::Radio::EnergyScan(v3, v13, v12);
      IgnoreError();
      ot::Mac::SubMac::SetState(this, 5u);
    }

    else if (ot::Mac::SubMac::ShouldHandleEnergyScan(this))
    {
      v4 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Radio>(this);
      if (ot::Radio::Receive(v4, v13))
      {
        __assert_rtn("EnergyScan", "sub_mac.cpp", 1039, "false");
      }

      ot::Mac::SubMac::SetState(this, 5u);
      *(this + 21) = 127;
      Now = ot::TimerMilli::GetNow(v5);
      v10 = ot::Time::operator+(&Now, v12);
      *(this + 6) = v10;
      ot::Mac::SubMac::StartTimer(this, 0);
    }

    else
    {
      return 12;
    }
  }

  else
  {
    return 13;
  }

  return v11;
}

BOOL ot::Mac::SubMac::RadioSupportsEnergyScan(ot::Mac::SubMac *this)
{
  return (*this & 2) != 0;
}

{
  return ot::Mac::SubMac::RadioSupportsEnergyScan(this);
}

uint64_t ot::Radio::EnergyScan(ot::Radio *this, char a2, unsigned __int16 a3)
{
  InstancePtr = ot::Radio::GetInstancePtr(this);
  return otPlatRadioEnergyScan(InstancePtr, a2, a3);
}

{
  return ot::Radio::EnergyScan(this, a2, a3);
}

BOOL ot::Mac::SubMac::ShouldHandleEnergyScan(ot::Mac::SubMac *this)
{
  if (ot::Mac::SubMac::RadioSupportsEnergyScan(this))
  {
    return 0;
  }

  else
  {
    v1 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mac::LinkRaw>(this);
    return !ot::Mac::LinkRaw::IsEnabled(v1);
  }
}

uint64_t ot::Mac::SubMac::SampleRssi(ot::Mac::SubMac *this)
{
  v7 = this;
  if (ot::Mac::SubMac::RadioSupportsEnergyScan(this))
  {
    __assert_rtn("SampleRssi", "sub_mac.cpp", 1057, "!RadioSupportsEnergyScan()");
  }

  Rssi = ot::Mac::SubMac::GetRssi(this);
  v6 = Rssi;
  if (Rssi != 127 && (*(this + 21) == 127 || v6 > *(this + 21)))
  {
    *(this + 21) = v6;
  }

  Now = ot::TimerMilli::GetNow(Rssi);
  if (!ot::Time::operator<(&Now, this + 6))
  {
    return ot::Mac::SubMac::HandleEnergyScanDone(this, *(this + 21));
  }

  FireTime = ot::Timer::GetFireTime((this + 136));
  return ot::Mac::SubMac::StartTimerAt(this, FireTime, 0x80u);
}

BOOL ot::Mac::SubMac::RadioSupportsTransmitSecurity(ot::Mac::SubMac *this)
{
  return (*this & 0x20) != 0;
}

{
  return ot::Mac::SubMac::RadioSupportsTransmitSecurity(this);
}

BOOL ot::Mac::SubMac::RadioSupportsCsmaBackoff(ot::Mac::SubMac *this)
{
  return (*this & 0xC) != 0;
}

{
  return ot::Mac::SubMac::RadioSupportsCsmaBackoff(this);
}

BOOL ot::Mac::SubMac::RadioSupportsAckTimeout(ot::Mac::SubMac *this)
{
  return (*this & 1) != 0;
}

{
  return ot::Mac::SubMac::RadioSupportsAckTimeout(this);
}

BOOL ot::Mac::SubMac::RadioSupportsRetries(ot::Mac::SubMac *this)
{
  return (*this & 4) != 0;
}

{
  return ot::Mac::SubMac::RadioSupportsRetries(this);
}

BOOL ot::Mac::SubMac::RadioSupportsTransmitTiming(ot::Mac::SubMac *this)
{
  return (*this & 0x40) != 0;
}

{
  return ot::Mac::SubMac::RadioSupportsTransmitTiming(this);
}

uint64_t ot::Mac::SubMac::SetMacKey(ot::Mac::SubMac *this, unsigned __int8 a2, unsigned __int8 a3, const ot::Mac::KeyMaterial *a4, const ot::Mac::KeyMaterial *a5, const ot::Mac::KeyMaterial *a6)
{
  if (a2)
  {
    if (a2 == 8)
    {
      *(this + 116) = a3;
      *(this + 4) = *a4;
      *(this + 5) = *a5;
      *(this + 6) = *a6;
    }

    else if (a2 != 16)
    {
      __assert_rtn("SetMacKey", "sub_mac.cpp", 1270, "false");
    }
  }

  result = ot::Mac::SubMac::ShouldHandleTransmitSecurity(this);
  if ((result & 1) == 0)
  {
    v7 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Radio>(this);
    return ot::Radio::SetMacKey(v7, a2, a3, a4, a5, a6);
  }

  return result;
}

uint64_t ot::Radio::SetMacKey(ot::Radio *this, unsigned __int8 a2, unsigned __int8 a3, const ot::Mac::KeyMaterial *a4, const ot::Mac::KeyMaterial *a5, const ot::Mac::KeyMaterial *a6)
{
  InstancePtr = ot::Radio::GetInstancePtr(this);
  return otPlatRadioSetMacKey(InstancePtr, a2, a3, a4, a5, a6);
}

{
  return ot::Radio::SetMacKey(this, a2, a3, a4, a5, a6);
}

uint64_t ot::Mac::SubMac::SetFrameCounter(ot::Mac::SubMac *this, unsigned int a2, char a3)
{
  if ((a3 & 1) == 0 || a2 > *(this + 28))
  {
    *(this + 28) = a2;
  }

  result = ot::Mac::SubMac::ShouldHandleTransmitSecurity(this);
  if ((result & 1) == 0)
  {
    v4 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Radio>(this);
    if (a3)
    {
      return ot::Radio::SetMacFrameCounterIfLarger(v4, a2);
    }

    else
    {
      return ot::Radio::SetMacFrameCounter(v4, a2);
    }
  }

  return result;
}

uint64_t ot::Radio::SetMacFrameCounterIfLarger(ot::Radio *this, unsigned int a2)
{
  InstancePtr = ot::Radio::GetInstancePtr(this);
  return otPlatRadioSetMacFrameCounterIfLarger(InstancePtr, a2);
}

{
  return ot::Radio::SetMacFrameCounterIfLarger(this, a2);
}

void *ot::ClearAllBytes<ot::Mac::ExtAddress>(void *result)
{
  *result = 0;
  return result;
}

{
  return ot::ClearAllBytes<ot::Mac::ExtAddress>(result);
}

ot::Appender *ot::Appender::Appender(ot::Appender *this, ot::Message *a2)
{
  *this = 0;
  *(this + 1) = a2;
  Length = ot::Message::GetLength(a2);
  result = this;
  *(this + 8) = Length;
  return result;
}

{
  ot::Appender::Appender(this, a2);
  return this;
}

ot::Appender *ot::Appender::Appender(ot::Appender *this, unsigned __int8 *a2, __int16 a3)
{
  *this = 1;
  ot::FrameBuilder::Init(this + 8, a2, a3);
  return this;
}

{
  ot::Appender::Appender(this, a2, a3);
  return this;
}

uint64_t ot::Appender::AppendBytes(ot::Message **this, void *a2, unsigned __int16 a3)
{
  v4 = 0;
  if (*this)
  {
    if (*this == 1)
    {
      return ot::FrameBuilder::AppendBytes((this + 1), a2, a3);
    }
  }

  else
  {
    return ot::Message::AppendBytes(this[1], a2, a3);
  }

  return v4;
}

uint64_t ot::Appender::GetAppendedLength(ot::Message **this)
{
  v2 = 0;
  if (*this)
  {
    if (*this == 1)
    {
      return ot::FrameBuilder::GetLength((this + 1));
    }
  }

  else
  {
    return (ot::Message::GetLength(this[1]) - *(this + 8));
  }

  return v2;
}

uint64_t ot::Appender::GetAsData(uint64_t a1, uint64_t a2)
{
  Bytes = ot::FrameBuilder::GetBytes((a1 + 8));
  Length = ot::FrameBuilder::GetLength((a1 + 8));
  return ot::Data<(ot::DataLengthType)1>::Init(a2, Bytes, Length);
}

uint64_t ot::FrameBuilder::GetBytes(ot::FrameBuilder *this)
{
  return *this;
}

{
  return ot::FrameBuilder::GetBytes(this);
}

ot::Mac::SubMac::Callbacks *ot::Mac::SubMac::Callbacks::Callbacks(ot::Mac::SubMac::Callbacks *this, ot::Instance *a2)
{
  ot::InstanceLocator::InstanceLocator(this, a2);
  return this;
}

{
  ot::Mac::SubMac::Callbacks::Callbacks(this, a2);
  return this;
}

void ot::Mac::SubMac::Callbacks::ReceiveDone(ot::InstanceLocator *a1, ot::Mac::Frame *a2, int a3)
{
  v3 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mac::LinkRaw>(a1);
  if (ot::Mac::LinkRaw::IsEnabled(v3))
  {
    v4 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mac::LinkRaw>(a1);
    ot::Mac::LinkRaw::InvokeReceiveDone(v4, a2, a3);
  }

  else
  {
    v5 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mac::Mac>(a1);
    ot::Mac::Mac::HandleReceivedFrame(v5, a2, a3);
  }
}

void ot::Mac::SubMac::Callbacks::TransmitDone(ot::InstanceLocator *a1, ot::Mac::TxFrame *a2, ot::Mac::Frame *a3, unsigned int a4)
{
  v4 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mac::LinkRaw>(a1);
  if (ot::Mac::LinkRaw::IsEnabled(v4))
  {
    v5 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mac::LinkRaw>(a1);
    ot::Mac::LinkRaw::InvokeTransmitDone(v5, a2, a3, a4);
  }

  else
  {
    v6 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mac::Mac>(a1);
    ot::Mac::Mac::HandleTransmitDone(v6, a2, a3, a4);
  }
}

uint64_t ot::Mac::SubMac::Callbacks::EnergyScanDone(ot::Mac::SubMac::Callbacks *this, char a2)
{
  v2 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mac::LinkRaw>(this);
  if (ot::Mac::LinkRaw::IsEnabled(v2))
  {
    v3 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mac::LinkRaw>(this);
    return ot::Mac::LinkRaw::InvokeEnergyScanDone(v3, a2);
  }

  else
  {
    v5 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mac::Mac>(this);
    return ot::Mac::Mac::EnergyScanDone(v5, a2);
  }
}

ot::AnnounceBeginClient *ot::AnnounceBeginClient::AnnounceBeginClient(ot::AnnounceBeginClient *this, ot::Instance *a2)
{
  ot::InstanceLocator::InstanceLocator(this, a2);
  return this;
}

{
  ot::AnnounceBeginClient::AnnounceBeginClient(this, a2);
  return this;
}

uint64_t ot::AnnounceBeginClient::SendRequest(ot::AnnounceBeginClient *this, unsigned int a2, unsigned __int8 a3, unsigned __int16 a4, const ot::Ip6::Address *a5)
{
  v28 = this;
  v27 = a2;
  v26 = a3;
  v25 = a4;
  v24 = a5;
  v20 = this;
  inited = 0;
  Instance = ot::InstanceLocator::GetInstance(this);
  ot::Tmf::MessageInfo::MessageInfo(v22, Instance);
  v21 = 0;
  v6 = ot::GetProvider<ot::InstanceLocator>::Get<ot::MeshCoP::Commissioner>(v20);
  if (ot::MeshCoP::Commissioner::IsActive(v6))
  {
    v7 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Tmf::Agent>(v20);
    v21 = ot::Coap::CoapBase::NewPriorityMessage(v7);
    if (v21)
    {
      inited = ot::Coap::Message::InitAsPost(v21, v24, 0xAu);
      if (!inited)
      {
        inited = ot::Coap::Message::SetPayloadMarker(v21);
        if (!inited)
        {
          v19 = v21;
          v8 = ot::GetProvider<ot::InstanceLocator>::Get<ot::MeshCoP::Commissioner>(v20);
          SessionId = ot::MeshCoP::Commissioner::GetSessionId(v8);
          inited = ot::Tlv::Append<ot::MeshCoP::CommissionerSessionIdTlv>(v21, SessionId);
          if (!inited)
          {
            inited = ot::MeshCoP::ChannelMaskTlv::AppendTo(v21, v27);
            if (!inited)
            {
              inited = ot::Tlv::Append<ot::UintTlvInfo<(unsigned char)54,unsigned char>>(v21, v26);
              if (!inited)
              {
                inited = ot::Tlv::Append<ot::UintTlvInfo<(unsigned char)55,unsigned short>>(v21, v25);
                if (!inited)
                {
                  ot::Tmf::MessageInfo::SetSockAddrToRlocPeerAddrTo(v22, v24);
                  v10 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Tmf::Agent>(v20);
                  inited = ot::Coap::CoapBase::SendMessage(v10, v21, v22);
                  if (!inited)
                  {
                    v11 = ot::UriToString<(ot::Uri)10>();
                    ot::Logger::LogAtLevel<(ot::LogLevel)4>("MeshCoP", "Sent %s", v12, v13, v14, v15, v16, v17, v11);
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

  if (inited && v21)
  {
    ot::Message::Free(v21);
  }

  return inited;
}

ot::Tmf::MessageInfo *ot::Tmf::MessageInfo::MessageInfo(ot::Tmf::MessageInfo *this, ot::Instance *a2)
{
  ot::Tmf::MessageInfo::MessageInfo(this, a2);
  return this;
}

{
  ot::InstanceLocator::InstanceLocator(this, a2);
  ot::Ip6::MessageInfo::MessageInfo(this);
  ot::Ip6::MessageInfo::SetPeerPort(this, 61631);
  return this;
}

uint64_t ot::GetProvider<ot::InstanceLocator>::Get<ot::MeshCoP::Commissioner>(ot::InstanceLocator *a1)
{
  Instance = ot::InstanceLocator::GetInstance(a1);
  return ot::Instance::Get<ot::MeshCoP::Commissioner>(Instance);
}

{
  return ot::GetProvider<ot::InstanceLocator>::Get<ot::MeshCoP::Commissioner>(a1);
}

BOOL ot::MeshCoP::Commissioner::IsActive(ot::MeshCoP::Commissioner *this)
{
  return *(this + 554) == 2;
}

{
  return ot::MeshCoP::Commissioner::IsActive(this);
}

uint64_t ot::Tlv::Append<ot::MeshCoP::CommissionerSessionIdTlv>(uint64_t a1, unsigned __int16 a2)
{
  return ot::Tlv::AppendUintTlv<unsigned short>(a1, 0xBu, a2);
}

{
  return ot::Tlv::Append<ot::MeshCoP::CommissionerSessionIdTlv>(a1, a2);
}

uint64_t ot::Tlv::Append<ot::UintTlvInfo<(unsigned char)54,unsigned char>>(uint64_t a1, unsigned __int8 a2)
{
  return ot::Tlv::AppendUintTlv<unsigned char>(a1, 54, a2);
}

{
  return ot::Tlv::Append<ot::UintTlvInfo<(unsigned char)54,unsigned char>>(a1, a2);
}

uint64_t ot::Tlv::Append<ot::UintTlvInfo<(unsigned char)55,unsigned short>>(uint64_t a1, unsigned __int16 a2)
{
  return ot::Tlv::AppendUintTlv<unsigned short>(a1, 0x37u, a2);
}

{
  return ot::Tlv::Append<ot::UintTlvInfo<(unsigned char)55,unsigned short>>(a1, a2);
}

void ot::Logger::LogVarArgs(ot *a1, unsigned __int8 a2, const char *a3, va_list a4)
{
  ot::String<(unsigned short)1024>::String(v21);
  if (__PAIR64__(*(a1 + 1), *a1) == 0x6300000052 && *(a1 + 2) == 112)
  {
    logging_obg = log_get_logging_obg("com.apple.rcp", "default");
    v13 = logging_obg;
  }

  else
  {
    logging_obg = log_get_logging_obg("com.apple.openthread", "default");
    v13 = logging_obg;
  }

  v5 = ot::Instance::Get(logging_obg);
  v6 = ot::Instance::Get<ot::Uptime>(v5);
  Uptime = ot::Uptime::GetUptime(v6);
  ot::Uptime::UptimeToString(Uptime, v21, 1);
  v8 = ot::StringWriter::Append(v21, " ");
  if (ot::Instance::GetLogLevel(v8) >= a2)
  {
    ot::StringWriter::Append(v21, "[%c] ", ot::Logger::LogVarArgs(char const*,ot::LogLevel,char const*,char *)::kLevelChars[a2]);
    v9 = ot::StringLength(a1, 0xE);
    ot::StringWriter::Append(v21, "%.*s%s: ", 14, a1, &ot::Logger::LogVarArgs(char const*,ot::LogLevel,char const*,char *)::kModuleNamePadding[v9]);
    ot::StringWriter::AppendVarArgs(v21, a3, a4);
    ot::StringWriter::Append(v21, "%s", "");
    if (a2 <= 2u)
    {
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        v10 = ot::String<(unsigned short)1024>::AsCString(v21);
        __os_log_helper_16_3_1_8_33(v20, v10);
        _os_log_error_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "%{private}s", v20, 0xCu);
      }
    }

    else if (a2 != 4 && a2 != 3)
    {
      if (a2 != 5)
      {
        __assert_rtn("LogVarArgs", "log.cpp", 184, "false");
      }

      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        v12 = ot::String<(unsigned short)1024>::AsCString(v21);
        __os_log_helper_16_3_1_8_33(v18, v12);
        _os_log_debug_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEBUG, "%{private}s", v18, 0xCu);
      }
    }

    else if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v11 = ot::String<(unsigned short)1024>::AsCString(v21);
      __os_log_helper_16_3_1_8_33(v19, v11);
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "%{private}s", v19, 0xCu);
    }
  }
}

void ot::Logger::LogAtLevel<(ot::LogLevel)1>(ot *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  ot::Logger::LogVarArgs(a1, 1u, a2, va);
}

{
  ot::Logger::LogAtLevel<(ot::LogLevel)1>(a1, a2, a3, a4, a5, a6, a7, a8);
}

void ot::Logger::LogAtLevel<(ot::LogLevel)2>(ot *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  ot::Logger::LogVarArgs(a1, 2u, a2, va);
}

{
  ot::Logger::LogAtLevel<(ot::LogLevel)2>(a1, a2, a3, a4, a5, a6, a7, a8);
}

void ot::Logger::LogAtLevel<(ot::LogLevel)3>(ot *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  ot::Logger::LogVarArgs(a1, 3u, a2, va);
}

{
  ot::Logger::LogAtLevel<(ot::LogLevel)3>(a1, a2, a3, a4, a5, a6, a7, a8);
}

void ot::Logger::LogAtLevel<(ot::LogLevel)4>(ot *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  ot::Logger::LogVarArgs(a1, 4u, a2, va);
}

{
  ot::Logger::LogAtLevel<(ot::LogLevel)4>(a1, a2, a3, a4, a5, a6, a7, a8);
}

void ot::Logger::LogAtLevel<(ot::LogLevel)5>(ot *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  ot::Logger::LogVarArgs(a1, 5u, a2, va);
}

{
  ot::Logger::LogAtLevel<(ot::LogLevel)5>(a1, a2, a3, a4, a5, a6, a7, a8);
}

uint64_t ot::Logger::DumpInModule(ot::Instance *a1, unsigned __int8 a2, uint64_t a3, uint64_t a4, __int16 a5)
{
  result = otLoggingGetLevel(a1);
  if (result >= a2)
  {
    v11 = a4;
    v12 = a5;
    v13 = a3;
    v15 = 0;
    while (1)
    {
      result = ot::GenerateNextHexDumpLine(&v11);
      if (result)
      {
        break;
      }

      ot::Logger::LogInModule(a1, a2, "%s", v14);
    }
  }

  return result;
}

uint64_t ot::Logger::DumpAtLevel<(ot::LogLevel)5>(ot::Instance *a1, uint64_t a2, uint64_t a3, __int16 a4)
{
  return ot::Logger::DumpInModule(a1, 5u, a2, a3, a4);
}

{
  return ot::Logger::DumpAtLevel<(ot::LogLevel)5>(a1, a2, a3, a4);
}

uint64_t ot::String<(unsigned short)1024>::String(uint64_t a1)
{
  ot::String<(unsigned short)1024>::String(a1);
  return a1;
}

{
  ot::StringWriter::StringWriter(a1, (a1 + 12), 1024);
  return a1;
}

uint64_t ot::String<(unsigned short)1024>::AsCString(uint64_t a1)
{
  return a1 + 12;
}

{
  return ot::String<(unsigned short)1024>::AsCString(a1);
}

uint64_t __os_log_helper_16_3_1_8_33(uint64_t result, uint64_t a2)
{
  *result = 3;
  *(result + 1) = 1;
  *(result + 2) = 33;
  *(result + 3) = 8;
  *(result + 4) = a2;
  return result;
}

void ot::Logger::LogOnError(ot *result, int a2, const char *a3)
{
  if (a2)
  {
    v3 = ot::ErrorToString(a2);
    ot::Logger::LogAtLevel<(ot::LogLevel)2>(result, "Failed to %s: %s", v4, v5, v6, v7, v8, v9, a3, v3);
  }
}

uint64_t ot::GenerateNextHexDumpLine(uint64_t a1)
{
  v20 = a1;
  v19 = 0;
  v18 = -3;
  v17 = -2;
  v16 = -1;
  v15 = 72;
  v14 = 10;
  v13 = 16;
  v12 = 0;
  ot::StringWriter::StringWriter(v11, (a1 + 24), 73);
  v3 = *(v20 + 98);
  if (*(v20 + 98))
  {
    switch(v3)
    {
      case 0xFFFD:
        *(v20 + 98) = 0;
        break;
      case 0xFFFE:
        ot::StringWriter::AppendCharMultipleTimes(v11, 45, 72);
        *(v20 + 98) = -1;
        return v12;
      case 0xFFFF:
        return 23;
    }

    v9 = *(v20 + 98);
    v8 = v9 + 16;
    ot::StringWriter::Append(v11, "|");
    for (i = v9; i < v8; ++i)
    {
      if (i >= *(v20 + 8))
      {
        ot::StringWriter::Append(v11, "   ");
      }

      else
      {
        ot::StringWriter::Append(v11, " %02X", *(*v20 + i));
      }

      if (i % 8 == 7)
      {
        ot::StringWriter::Append(v11, " |");
      }
    }

    ot::StringWriter::Append(v11, " ");
    for (_c_2 = v9; _c_2 < v8; ++_c_2)
    {
      _c_1 = 32;
      if (_c_2 < *(v20 + 8))
      {
        _c = *(*v20 + _c_2);
        if (_c < 0x7Fu && isprint(_c))
        {
          v2 = _c;
        }

        else
        {
          v2 = 46;
        }

        _c_1 = v2;
      }

      ot::StringWriter::Append(v11, "%c", _c_1);
    }

    ot::StringWriter::Append(v11, " |");
    *(v20 + 98) = v8;
    if (*(v20 + 98) >= *(v20 + 8))
    {
      *(v20 + 98) = -2;
    }
  }

  else
  {
    v10 = ot::StringLength(*(v20 + 16), 0x3E) + 10;
    ot::StringWriter::AppendCharMultipleTimes(v11, 61, (72 - v10) / 2);
    ot::StringWriter::Append(v11, "[%s len=%03u]", *(v20 + 16), *(v20 + 8));
    ot::StringWriter::AppendCharMultipleTimes(v11, 61, 72 - v10 - (72 - v10) / 2);
    *(v20 + 98) = -3;
  }

  return v12;
}

int isprint(int _c)
{
  return __istype(_c, 0x40000uLL);
}

{
  return isprint(_c);
}

uint64_t ot::MeshCoP::BorderAgent::ForwardContext::Init(ot::MeshCoP::BorderAgent::ForwardContext *this, ot::Instance *a2, const ot::Coap::Message *a3, char a4, char a5)
{
  ot::InstanceLocatorInit::Init(this, a2);
  *this = ot::Coap::Message::GetMessageId(a3);
  *(this + 2) = *(this + 2) & 0xFE | a4 & 1;
  *(this + 2) = *(this + 2) & 0xFD | (2 * (a5 & 1));
  *(this + 2) = *(this + 2) & 0x3F | ((ot::Coap::Message::GetType(a3) & 3) << 6);
  *(this + 2) = *(this + 2) & 0xC3 | (4 * (ot::Coap::Message::GetTokenLength(a3) & 0xF));
  Token = ot::Coap::Message::GetToken(a3);
  memcpy(this + 3, Token, (*(this + 2) >> 2) & 0xF);
  return 0;
}

void ot::MeshCoP::BorderAgent::HandleTimeout(ot::MeshCoP::BorderAgent *this)
{
  v1 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Tmf::SecureAgent>(this);
  if (ot::Coap::CoapSecure::IsConnected(v1))
  {
    v2 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Tmf::SecureAgent>(this);
    ot::Coap::CoapSecure::Disconnect(v2);
    ot::Logger::LogAtLevel<(ot::LogLevel)2>("BorderAgent", "Reset commissioner session", v3, v4, v5, v6, v7, v8);
  }
}

void ot::InstanceLocatorInit::Init(ot::InstanceLocatorInit *this, ot::Instance *a2)
{
  ;
}

{
  ot::InstanceLocatorInit::Init(this, a2);
}

uint64_t ot::MeshCoP::BorderAgent::ForwardContext::ToHeader(ot::MeshCoP::BorderAgent::ForwardContext *this, ot::Coap::Message *a2, char a3)
{
  if (*(this + 2) >> 6 == 1 || (*(this + 2) & 2) != 0)
  {
    ot::Coap::Message::Init(a2, 1, a3);
  }

  else
  {
    ot::Coap::Message::Init(a2, 2, a3);
  }

  if ((*(this + 2) & 2) == 0)
  {
    ot::Coap::Message::SetMessageId(a2, *this);
  }

  return ot::Coap::Message::SetToken(a2, this + 3, (*(this + 2) >> 2) & 0xF);
}

uint64_t ot::MeshCoP::BorderAgent::CoapCodeFromError(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 == 6)
    {
      return 0x80;
    }

    else
    {
      return -96;
    }
  }

  else
  {
    return 68;
  }
}

void ot::MeshCoP::BorderAgent::SendErrorMessage(ot::MeshCoP::BorderAgent *a1, ot::MeshCoP::BorderAgent::ForwardContext *a2, int a3)
{
  v3 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Tmf::SecureAgent>(a1);
  v6 = ot::Coap::CoapBase::NewPriorityMessage(v3);
  if (v6)
  {
    v4 = ot::MeshCoP::BorderAgent::CoapCodeFromError(a1, a3);
    v7 = ot::MeshCoP::BorderAgent::ForwardContext::ToHeader(a2, v6, v4);
    if (!v7)
    {
      v7 = ot::MeshCoP::BorderAgent::SendMessage(a1, v6);
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

  ot::Logger::LogOnError("BorderAgent", v7, "send error CoAP message");
}

uint64_t ot::GetProvider<ot::InstanceLocator>::Get<ot::Tmf::SecureAgent>(ot::InstanceLocator *a1)
{
  Instance = ot::InstanceLocator::GetInstance(a1);
  return ot::Instance::Get<ot::Tmf::SecureAgent>(Instance);
}

{
  return ot::GetProvider<ot::InstanceLocator>::Get<ot::Tmf::SecureAgent>(a1);
}

uint64_t ot::MeshCoP::BorderAgent::SendMessage(ot::MeshCoP::BorderAgent *this, ot::Coap::Message *a2)
{
  v6 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Tmf::SecureAgent>(this);
  v2 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Tmf::SecureAgent>(this);
  MessageInfo = ot::Coap::CoapSecure::GetMessageInfo(v2);
  return ot::Coap::CoapSecure::SendMessage(v6, a2, MessageInfo, 0, 0);
}

void ot::MeshCoP::BorderAgent::SendErrorMessage(ot::MeshCoP::BorderAgent *a1, ot::Coap::Message *a2, char a3, int a4)
{
  v4 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Tmf::SecureAgent>(a1);
  v9 = ot::Coap::CoapBase::NewPriorityMessage(v4);
  if (v9)
  {
    if (ot::Coap::Message::IsNonConfirmable(a2) || (a3 & 1) != 0)
    {
      v5 = ot::MeshCoP::BorderAgent::CoapCodeFromError(a1, a4);
      ot::Coap::Message::Init(v9, 1, v5);
    }

    else
    {
      v6 = ot::MeshCoP::BorderAgent::CoapCodeFromError(a1, a4);
      ot::Coap::Message::Init(v9, 2, v6);
    }

    if ((a3 & 1) == 0)
    {
      MessageId = ot::Coap::Message::GetMessageId(a2);
      ot::Coap::Message::SetMessageId(v9, MessageId);
    }

    v10 = ot::Coap::Message::SetTokenFromMessage(v9, a2);
    if (!v10)
    {
      v10 = ot::MeshCoP::BorderAgent::SendMessage(a1, v9);
    }
  }

  else
  {
    v10 = 3;
  }

  if (v10 && v9)
  {
    ot::Message::Free(v9);
  }

  ot::Logger::LogOnError("BorderAgent", v10, "send error CoAP message");
}

uint64_t ot::Coap::CoapSecure::GetMessageInfo(ot::Coap::CoapSecure *this)
{
  return ot::MeshCoP::SecureTransport::GetMessageInfo((this + 144));
}

{
  return ot::Coap::CoapSecure::GetMessageInfo(this);
}

ot::Utils::Heap *ot::MeshCoP::BorderAgent::HandleCoapResponse(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v14 = a1;
  v13 = a2;
  v12 = a3;
  v11 = a4;
  ot::OwnedPtr<ot::Message>::OwnedPtr(&v10, a1);
  v4 = ot::Ptr<ot::MeshCoP::BorderAgent::ForwardContext>::operator->(&v10);
  v9 = ot::GetProvider<ot::InstanceLocator>::Get<ot::MeshCoP::BorderAgent>(v4);
  v8 = ot::Ptr<ot::MeshCoP::BorderAgent::ForwardContext>::Get(&v10);
  ot::AsCoapMessagePtr();
  ot::MeshCoP::BorderAgent::HandleCoapResponse(v9, v8, v5, v11);
  return ot::OwnedPtr<ot::MeshCoP::BorderAgent::ForwardContext>::~OwnedPtr(&v10, v6);
}

uint64_t ot::Ptr<ot::MeshCoP::BorderAgent::ForwardContext>::operator->(uint64_t a1)
{
  return *a1;
}

{
  return ot::Ptr<ot::MeshCoP::BorderAgent::ForwardContext>::operator->(a1);
}

void ot::MeshCoP::BorderAgent::HandleCoapResponse(ot::Coap::Message *result, ot::MeshCoP::BorderAgent::ForwardContext *a2, ot::Coap::Message *a3, int a4)
{
  v42 = result;
  v41 = a2;
  v40 = a3;
  v39 = a4;
  v34 = result;
  v38 = 0;
  v37 = a4;
  if (!a4)
  {
    v4 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Tmf::SecureAgent>(v34);
    v38 = ot::Coap::CoapBase::NewPriorityMessage(v4);
    if (!v38)
    {
      v37 = 3;
      goto LABEL_14;
    }

    if ((ot::MeshCoP::BorderAgent::ForwardContext::IsPetition(v41) & 1) != 0 && ot::Coap::Message::GetCode(v40) == 68)
    {
      v36 = 0;
      v37 = ot::Tlv::Find<ot::MeshCoP::StateTlv>(v40, &v36);
      if (v37)
      {
        goto LABEL_14;
      }

      if (v36 == 1)
      {
        v35 = 0;
        v37 = ot::Tlv::Find<ot::MeshCoP::CommissionerSessionIdTlv>(v40, &v35);
        if (v37)
        {
          goto LABEL_14;
        }

        v31 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::Mle>(v34);
        *v30 = v35;
        ot::Ip6::Netif::UnicastAddress::GetAddress((v34 + 32));
        ot::Mle::Mle::GetCommissionerAloc(v31, v30[0], v5);
        v6 = ot::GetProvider<ot::InstanceLocator>::Get<ot::ThreadNetif>(v34);
        ot::Ip6::Netif::AddUnicastAddress(v6, (v34 + 32));
        v7 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Ip6::Udp>(v34);
        ot::Ip6::Udp::AddReceiver(v7, (v34 + 8));
        IgnoreError();
        v8 = v34;
        *v34 = 3;
        v33 = v35;
        ot::Ip6::Netif::UnicastAddress::GetAddress((v8 + 32));
        v32 = v43;
        ot::Ip6::Address::ToString(v43, v9);
        v10 = ot::String<(unsigned short)40>::AsCString(v43);
        ot::Logger::LogAtLevel<(ot::LogLevel)4>("BorderAgent", "Commissioner accepted - SessionId:%u ALOC:%s", v11, v12, v13, v14, v15, v16, v33, v10);
      }
    }

    v29 = v41;
    v28 = v38;
    Code = ot::Coap::Message::GetCode(v40);
    v37 = ot::MeshCoP::BorderAgent::ForwardContext::ToHeader(v29, v28, Code);
    if (!v37)
    {
      Length = ot::Message::GetLength(v40);
      Offset = ot::Message::GetOffset(v40);
      if (Length <= Offset || (v37 = ot::Coap::Message::SetPayloadMarker(v38)) == 0)
      {
        v37 = ot::MeshCoP::BorderAgent::ForwardToCommissioner(v34, v38, v40);
      }
    }
  }

LABEL_14:
  if (v37)
  {
    if (v38)
    {
      ot::Message::Free(v38);
    }

    MessageId = ot::MeshCoP::BorderAgent::ForwardContext::GetMessageId(v41);
    v19 = ot::ErrorToString(v37);
    ot::Logger::LogAtLevel<(ot::LogLevel)2>("BorderAgent", "Commissioner request[%u] failed: %s", v20, v21, v22, v23, v24, v25, MessageId, v19);
    ot::MeshCoP::BorderAgent::SendErrorMessage(v34, v41, v37);
  }
}

uint64_t ot::Ptr<ot::MeshCoP::BorderAgent::ForwardContext>::Get(uint64_t a1)
{
  return *a1;
}

{
  return ot::Ptr<ot::MeshCoP::BorderAgent::ForwardContext>::Get(a1);
}

ot::Utils::Heap *ot::OwnedPtr<ot::MeshCoP::BorderAgent::ForwardContext>::~OwnedPtr(ot::Utils::Heap *a1, void *a2)
{
  ot::OwnedPtr<ot::MeshCoP::BorderAgent::ForwardContext>::~OwnedPtr(a1, a2);
  return a1;
}

{
  ot::OwnedPtr<ot::MeshCoP::BorderAgent::ForwardContext>::Delete(a1, a2);
  return a1;
}

uint64_t ot::MeshCoP::BorderAgent::ForwardContext::IsPetition(ot::MeshCoP::BorderAgent::ForwardContext *this)
{
  return *(this + 2) & 1;
}

{
  return ot::MeshCoP::BorderAgent::ForwardContext::IsPetition(this);
}

uint64_t ot::Tlv::Find<ot::MeshCoP::StateTlv>(const ot::Message *a1, char *a2)
{
  return ot::Tlv::FindUintTlv<unsigned char>(a1, 0x10u, a2);
}

{
  return ot::Tlv::Find<ot::MeshCoP::StateTlv>(a1, a2);
}

uint64_t ot::Tlv::Find<ot::MeshCoP::CommissionerSessionIdTlv>(const ot::Message *a1, char *a2)
{
  return ot::Tlv::FindUintTlv<unsigned short>(a1, 0xBu, a2);
}

{
  return ot::Tlv::Find<ot::MeshCoP::CommissionerSessionIdTlv>(a1, a2);
}

uint64_t ot::MeshCoP::BorderAgent::ForwardToCommissioner(ot::MeshCoP::BorderAgent *this, ot::Coap::Message *a2, const ot::Message *a3)
{
  v15 = this;
  v14 = a2;
  v13 = a3;
  appended = 0;
  ot::OffsetRange::InitFromMessageOffsetToEnd(v11, a3);
  appended = ot::Message::AppendBytesFromMessage(v14, v13, v11);
  if (!appended)
  {
    appended = ot::MeshCoP::BorderAgent::SendMessage(this, v14);
    if (!appended)
    {
      ot::Logger::LogAtLevel<(ot::LogLevel)4>("BorderAgent", "Sent to commissioner", v3, v4, v5, v6, v7, v8);
    }
  }

  ot::Logger::LogOnError("BorderAgent", appended, "send to commissioner");
  return appended;
}

uint64_t ot::MeshCoP::BorderAgent::ForwardContext::GetMessageId(ot::MeshCoP::BorderAgent::ForwardContext *this)
{
  return *this;
}

{
  return ot::MeshCoP::BorderAgent::ForwardContext::GetMessageId(this);
}

ot::MeshCoP::BorderAgent *ot::MeshCoP::BorderAgent::BorderAgent(ot::MeshCoP::BorderAgent *this, ot::Instance *a2)
{
  ot::InstanceLocator::InstanceLocator(this, a2);
  *this = 0;
  *(this + 1) = 0;
  ot::Ip6::Udp::Receiver::Receiver(this + 1, ot::MeshCoP::BorderAgent::HandleUdpReceive, this);
  ot::TimerMilliIn<ot::MeshCoP::BorderAgent,&ot::MeshCoP::BorderAgent::HandleTimeout>::TimerMilliIn((this + 64), a2);
  *(this + 104) = 0;
  ot::Ip6::Netif::UnicastAddress::InitAsThreadOriginMeshLocal((this + 32));
  return this;
}

{
  ot::MeshCoP::BorderAgent::BorderAgent(this, a2);
  return this;
}

BOOL ot::MeshCoP::BorderAgent::HandleUdpReceive(ot::MeshCoP::BorderAgent *a1, uint64_t a2, uint64_t a3)
{
  ot::AsCoreType<otMessage>(a2);
  v6 = v3;
  ot::AsCoreType<otMessageInfo>(a3);
  return ot::MeshCoP::BorderAgent::HandleUdpReceive(a1, v6, v4);
}

ot::TimerMilli *ot::TimerMilliIn<ot::MeshCoP::BorderAgent,&ot::MeshCoP::BorderAgent::HandleTimeout>::TimerMilliIn(ot::TimerMilli *a1, ot::Instance *a2)
{
  ot::TimerMilliIn<ot::MeshCoP::BorderAgent,&ot::MeshCoP::BorderAgent::HandleTimeout>::TimerMilliIn(a1, a2);
  return a1;
}

{
  ot::TimerMilli::TimerMilli(a1, a2, ot::TimerMilliIn<ot::MeshCoP::BorderAgent,&ot::MeshCoP::BorderAgent::HandleTimeout>::HandleTimer);
  return a1;
}

uint64_t ot::MeshCoP::BorderAgent::GetId(uint64_t a1, _OWORD *a2)
{
  v10 = 0;
  if (*(a1 + 104))
  {
    v10 = 0;
  }

  else
  {
    v2 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Settings>(a1);
    if (!ot::Settings::Read<ot::SettingsBase::BorderAgentId>(v2, v12) || (ot::SettingsBase::BorderAgentId::GetId(v12), ot::Random::NonCrypto::Fill<otBorderAgentId>(v3, v4, v5), v6 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Settings>(a1), (v10 = ot::Settings::Save<ot::SettingsBase::BorderAgentId>(v6, v12)) == 0))
    {
      ot::SettingsBase::BorderAgentId::GetId(v12);
      *(a1 + 88) = *v7;
      *(a1 + 104) = 1;
    }
  }

  if (!v10)
  {
    *a2 = *(a1 + 88);
  }

  return v10;
}

uint64_t ot::GetProvider<ot::InstanceLocator>::Get<ot::Settings>(ot::InstanceLocator *a1)
{
  Instance = ot::InstanceLocator::GetInstance(a1);
  return ot::Instance::Get<ot::Settings>(Instance);
}

{
  return ot::GetProvider<ot::InstanceLocator>::Get<ot::Settings>(a1);
}

uint64_t ot::Settings::Read<ot::SettingsBase::BorderAgentId>(ot::InstanceLocator *a1, ot::SettingsBase::BorderAgentId *a2)
{
  ot::SettingsBase::BorderAgentId::Init(a2);
  return ot::Settings::ReadEntry(a1, 0x11u, a2, 0x10u);
}

{
  return ot::Settings::Read<ot::SettingsBase::BorderAgentId>(a1, a2);
}

ot::Random::NonCrypto *ot::Random::NonCrypto::Fill<otBorderAgentId>(ot::Random::NonCrypto *a1, uint64_t a2, unsigned __int16 a3)
{
  return ot::Random::NonCrypto::FillBuffer(a1, 0x10);
}

{
  return ot::Random::NonCrypto::Fill<otBorderAgentId>(a1, a2, a3);
}

uint64_t ot::Settings::Save<ot::SettingsBase::BorderAgentId>(ot::InstanceLocator *a1, ot::SettingsBase::NetworkInfo *a2)
{
  return ot::Settings::SaveEntry(a1, 0x11u, a2, v3, 0x10u);
}

{
  return ot::Settings::Save<ot::SettingsBase::BorderAgentId>(a1, a2);
}

uint64_t ot::MeshCoP::BorderAgent::SetId(uint64_t a1, __n128 *a2)
{
  ot::SettingsBase::BorderAgentId::SetId(&v7, a2);
  v2 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Settings>(a1);
  v5 = ot::Settings::Save<ot::SettingsBase::BorderAgentId>(v2, &v7);
  if (!v5)
  {
    *(a1 + 88) = *a2;
    *(a1 + 104) = 1;
  }

  return v5;
}

__n128 ot::SettingsBase::BorderAgentId::SetId(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

void ot::MeshCoP::BorderAgent::HandleTmf<(ot::Uri)32>(ot::InstanceLocator *a1, ot::Tlv *a2, uint64_t a3)
{
  v35 = a1;
  v34 = a2;
  v33 = a3;
  v27 = a1;
  TlvValueOffsetRange = 0;
  v31 = 0;
  ot::Ip6::MessageInfo::MessageInfo(v30);
  if (*v27)
  {
    TlvValueOffsetRange = ot::Tlv::FindTlvValueOffsetRange(v34, 0x30, &v29, v3);
    if (!TlvValueOffsetRange)
    {
      TlvValueOffsetRange = ot::Message::Read<ot::MeshCoP::UdpEncapsulationTlvHeader>(v34, &v29, v28);
      if (!TlvValueOffsetRange)
      {
        ot::OffsetRange::AdvanceOffset(&v29, 4u);
        if (ot::MeshCoP::UdpEncapsulationTlvHeader::GetSourcePort(v28, v4) > 0 && ot::MeshCoP::UdpEncapsulationTlvHeader::GetDestinationPort(v28, v5) > 0)
        {
          v6 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Ip6::Udp>(v27);
          v31 = ot::Ip6::Udp::NewMessage(v6);
          if (v31)
          {
            TlvValueOffsetRange = ot::Message::AppendBytesFromMessage(v31, v34, &v29);
            if (!TlvValueOffsetRange)
            {
              v25 = v28;
              SourcePort = ot::MeshCoP::UdpEncapsulationTlvHeader::GetSourcePort(v28, v7);
              v26 = v30;
              ot::Ip6::MessageInfo::SetSockPort(v30, SourcePort);
              ot::Ip6::Netif::UnicastAddress::GetAddress((v27 + 32));
              ot::Ip6::MessageInfo::SetSockAddr(v30, v9);
              DestinationPort = ot::MeshCoP::UdpEncapsulationTlvHeader::GetDestinationPort(v28, v10);
              ot::Ip6::MessageInfo::SetPeerPort(v30, DestinationPort);
              v24 = v34;
              ot::Ip6::MessageInfo::GetPeerAddr(v30);
              TlvValueOffsetRange = ot::Tlv::Find<ot::SimpleTlvInfo<(unsigned char)49,ot::Ip6::Address>>(v24, v12);
              if (!TlvValueOffsetRange)
              {
                v13 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Ip6::Udp>(v27);
                TlvValueOffsetRange = ot::Ip6::Udp::SendDatagram(v13, v31, v30);
                if (!TlvValueOffsetRange)
                {
                  *(v27 + 1) = ot::MeshCoP::UdpEncapsulationTlvHeader::GetSourcePort(v28, v14);
                  ot::Ip6::MessageInfo::GetPeerAddr(v30);
                  v23 = v36;
                  ot::Ip6::Address::ToString(v36, v15);
                  v16 = ot::String<(unsigned short)40>::AsCString(v36);
                  ot::Logger::LogAtLevel<(ot::LogLevel)4>("BorderAgent", "Proxy transmit sent to %s", v17, v18, v19, v20, v21, v22, v16);
                }
              }
            }
          }

          else
          {
            TlvValueOffsetRange = 3;
          }
        }

        else
        {
          TlvValueOffsetRange = 2;
        }
      }
    }
  }

  if (TlvValueOffsetRange && v31)
  {
    ot::Message::Free(v31);
  }

  ot::Logger::LogOnError("BorderAgent", TlvValueOffsetRange, "send proxy stream");
}

uint64_t ot::Message::Read<ot::MeshCoP::UdpEncapsulationTlvHeader>(ot::Message *a1, const ot::OffsetRange *a2, char *a3)
{
  return ot::Message::Read(a1, a2, a3, 4u);
}

{
  return ot::Message::Read<ot::MeshCoP::UdpEncapsulationTlvHeader>(a1, a2, a3);
}

uint64_t ot::MeshCoP::UdpEncapsulationTlvHeader::GetSourcePort(ot::MeshCoP::UdpEncapsulationTlvHeader *this, unsigned __int16 a2)
{
  return ot::BigEndian::HostSwap16(*this, a2);
}

{
  return ot::MeshCoP::UdpEncapsulationTlvHeader::GetSourcePort(this, a2);
}

uint64_t ot::MeshCoP::UdpEncapsulationTlvHeader::GetDestinationPort(ot::MeshCoP::UdpEncapsulationTlvHeader *this, unsigned __int16 a2)
{
  return ot::BigEndian::HostSwap16(*(this + 1), a2);
}

{
  return ot::MeshCoP::UdpEncapsulationTlvHeader::GetDestinationPort(this, a2);
}

uint64_t ot::Ip6::MessageInfo::SetSockPort(uint64_t this, __int16 a2)
{
  *(this + 32) = a2;
  return this;
}

{
  return ot::Ip6::MessageInfo::SetSockPort(this, a2);
}

uint64_t ot::Tlv::Find<ot::SimpleTlvInfo<(unsigned char)49,ot::Ip6::Address>>(ot::Tlv *a1, void *a2)
{
  return ot::Tlv::FindTlv(a1, 0x31, a2, 0x10);
}

{
  return ot::Tlv::Find<ot::SimpleTlvInfo<(unsigned char)49,ot::Ip6::Address>>(a1, a2);
}

BOOL ot::MeshCoP::BorderAgent::HandleUdpReceive(ot::MeshCoP::BorderAgent *this, const ot::Message *a2, const ot::Ip6::MessageInfo *a3)
{
  v42 = this;
  v41 = a2;
  v40 = a3;
  v33 = this;
  appended = 0;
  v38 = 0;
  ot::Ip6::MessageInfo::GetSockAddr(a3);
  v34 = v3;
  ot::Ip6::Netif::UnicastAddress::GetAddress((v33 + 32));
  if (ot::Unequatable<ot::Ip6::Address>::operator!=(v34, v4))
  {
    ot::Ip6::MessageInfo::GetSockAddr(v40);
    v30 = v44;
    ot::Ip6::Address::ToString(v44, v5);
    v32 = ot::String<(unsigned short)40>::AsCString(v44);
    ot::Ip6::Netif::UnicastAddress::GetAddress((v33 + 32));
    v31 = v43;
    ot::Ip6::Address::ToString(v43, v6);
    v7 = ot::String<(unsigned short)40>::AsCString(v43);
    ot::Logger::LogAtLevel<(ot::LogLevel)5>("BorderAgent", "Filtered out message for commissioner: dest %s != %s (ALOC)", v8, v9, v10, v11, v12, v13, v32, v7);
    appended = 22;
  }

  else if (ot::Message::GetLength(v41) > 0)
  {
    v14 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Tmf::SecureAgent>(v33);
    v38 = ot::Coap::CoapBase::NewPriorityNonConfirmablePostMessage(v14, 0x1Fu);
    if (v38)
    {
      v28 = v35;
      ot::OffsetRange::InitFromMessageOffsetToEnd(v35, v41);
      v29 = v37;
      ot::MeshCoP::ExtendedTlv::SetType(v37, 48);
      Length = ot::OffsetRange::GetLength(v35);
      ot::ExtendedTlv::SetLength(v37, Length + 4);
      appended = ot::Message::Append<ot::MeshCoP::ExtendedTlv>(v38, v37);
      if (!appended)
      {
        PeerPort = ot::Ip6::MessageInfo::GetPeerPort(v40);
        v27 = v36;
        ot::MeshCoP::UdpEncapsulationTlvHeader::SetSourcePort(v36, PeerPort);
        SockPort = ot::Ip6::MessageInfo::GetSockPort(v40);
        ot::MeshCoP::UdpEncapsulationTlvHeader::SetDestinationPort(v36, SockPort);
        appended = ot::Message::Append<ot::MeshCoP::UdpEncapsulationTlvHeader>(v38, v36);
        if (!appended)
        {
          appended = ot::Message::AppendBytesFromMessage(v38, v41, v35);
          if (!appended)
          {
            v26 = v38;
            ot::Ip6::MessageInfo::GetPeerAddr(v40);
            appended = ot::Tlv::Append<ot::SimpleTlvInfo<(unsigned char)49,ot::Ip6::Address>>(v26, v18);
            if (!appended)
            {
              appended = ot::MeshCoP::BorderAgent::SendMessage(v33, v38);
              if (!appended)
              {
                ot::Logger::LogAtLevel<(ot::LogLevel)4>("BorderAgent", "Sent to commissioner on ProxyRx (c/ur)", v19, v20, v21, v22, v23, v24);
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

  else
  {
    appended = 0;
  }

  if (appended && v38)
  {
    ot::Message::Free(v38);
  }

  if (appended != 22)
  {
    ot::Logger::LogOnError("BorderAgent", appended, "notify commissioner on ProxyRx (c/ur)");
  }

  return appended != 22;
}

_BYTE *ot::MeshCoP::ExtendedTlv::SetType(ot::Tlv *a1, char a2)
{
  return ot::Tlv::SetType(a1, a2);
}

{
  return ot::MeshCoP::ExtendedTlv::SetType(a1, a2);
}

uint64_t ot::ExtendedTlv::SetLength(ot::ExtendedTlv *this, unsigned __int16 a2)
{
  ot::Tlv::SetLength(this, 255);
  result = ot::BigEndian::HostSwap16(a2, v2);
  *(this + 1) = result;
  return result;
}

{
  return ot::ExtendedTlv::SetLength(this, a2);
}

uint64_t ot::Message::Append<ot::MeshCoP::ExtendedTlv>(ot::Message *a1, char *a2)
{
  return ot::Message::AppendBytes(a1, a2, 4u);
}

{
  return ot::Message::Append<ot::MeshCoP::ExtendedTlv>(a1, a2);
}

uint64_t ot::MeshCoP::UdpEncapsulationTlvHeader::SetSourcePort(ot::MeshCoP::UdpEncapsulationTlvHeader *this, unsigned __int16 a2)
{
  result = ot::BigEndian::HostSwap16(a2, a2);
  *this = result;
  return result;
}

{
  return ot::MeshCoP::UdpEncapsulationTlvHeader::SetSourcePort(this, a2);
}

uint64_t ot::MeshCoP::UdpEncapsulationTlvHeader::SetDestinationPort(ot::MeshCoP::UdpEncapsulationTlvHeader *this, unsigned __int16 a2)
{
  result = ot::BigEndian::HostSwap16(a2, a2);
  *(this + 1) = result;
  return result;
}

{
  return ot::MeshCoP::UdpEncapsulationTlvHeader::SetDestinationPort(this, a2);
}

uint64_t ot::Message::Append<ot::MeshCoP::UdpEncapsulationTlvHeader>(ot::Message *a1, char *a2)
{
  return ot::Message::AppendBytes(a1, a2, 4u);
}

{
  return ot::Message::Append<ot::MeshCoP::UdpEncapsulationTlvHeader>(a1, a2);
}

uint64_t ot::Tlv::Append<ot::SimpleTlvInfo<(unsigned char)49,ot::Ip6::Address>>(ot::Tlv *a1, void *a2)
{
  return ot::Tlv::AppendTlv(a1, 0x31, a2, 0x10);
}

{
  return ot::Tlv::Append<ot::SimpleTlvInfo<(unsigned char)49,ot::Ip6::Address>>(a1, a2);
}

void ot::MeshCoP::BorderAgent::HandleTmf<(ot::Uri)29>(ot::InstanceLocator *result, ot::Coap::Message *a2)
{
  v11 = 0;
  v10 = 0;
  if (*result)
  {
    if (ot::Coap::Message::IsNonConfirmablePostRequest(a2))
    {
      v2 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Tmf::SecureAgent>(result);
      v11 = ot::Coap::CoapBase::NewPriorityNonConfirmablePostMessage(v2, 0x1Du);
      if (v11)
      {
        v10 = ot::MeshCoP::BorderAgent::ForwardToCommissioner(result, v11, a2);
        if (!v10)
        {
          ot::Logger::LogAtLevel<(ot::LogLevel)4>("BorderAgent", "Sent to commissioner on RelayRx (c/rx)", v3, v4, v5, v6, v7, v8);
        }
      }

      else
      {
        v10 = 3;
      }
    }

    else
    {
      v10 = 2;
    }
  }

  if (v10)
  {
    if (v11)
    {
      ot::Message::Free(v11);
    }
  }
}

uint64_t ot::MeshCoP::BorderAgent::ForwardToLeader(ot::InstanceLocator *a1, ot::Coap::Message *a2, const ot::Ip6::MessageInfo *a3, unsigned __int8 a4)
{
  v24 = ot::MeshCoP::BorderAgent::HandleCoapResponse;
  v36 = a1;
  v35 = a2;
  v34 = a3;
  v33 = a4;
  v25 = a1;
  appended = 0;
  ot::OwnedPtr<ot::Message>::OwnedPtr(&v31);
  Instance = ot::InstanceLocator::GetInstance(v25);
  ot::Tmf::MessageInfo::MessageInfo(v30, Instance);
  v29 = 0;
  v28 = 0;
  v27 = 0;
  if (*v25)
  {
    v23 = v33;
    if (v33 == 23)
    {
      v27 = 1;
    }

    else if (v23 == 24)
    {
      v28 = 1;
      v27 = 1;
    }

    if ((v27 & 1) == 0 || (v5 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Tmf::SecureAgent>(v25), (appended = ot::Coap::CoapBase::SendAck(v5, v35, v34)) == 0))
    {
      v6 = ot::InstanceLocator::GetInstance(v25);
      v7 = ot::Heap::Allocatable<ot::MeshCoP::BorderAgent::ForwardContext>::AllocateAndInit<ot::Instance &,ot::Coap::Message const&,BOOL &,BOOL &>(v6, v35, &v28, &v27);
      ot::OwnedPtr<ot::MeshCoP::BorderAgent::ForwardContext>::Reset(&v31, v7);
      if (ot::Ptr<ot::MeshCoP::BorderAgent::ForwardContext>::IsNull(&v31))
      {
        appended = 3;
      }

      else
      {
        v8 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Tmf::Agent>(v25);
        v29 = ot::Coap::CoapBase::NewPriorityConfirmablePostMessage(v8, v33);
        if (v29)
        {
          ot::OffsetRange::InitFromMessageOffsetToEnd(v26, v35);
          appended = ot::Message::AppendBytesFromMessage(v29, v35, v26);
          if (!appended)
          {
            v22 = v30;
            ot::Tmf::MessageInfo::SetSockAddrToRlocPeerAddrToLeaderAloc(v30);
            ot::Tmf::MessageInfo::SetSockPortToTmf(v30);
            v21 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Tmf::Agent>(v25);
            v20 = v29;
            v9 = ot::Ptr<ot::MeshCoP::BorderAgent::ForwardContext>::Get(&v31);
            appended = ot::Coap::CoapBase::SendMessage(v21, v20, v30, v24, v9);
            if (!appended)
            {
              ot::OwnedPtr<ot::MeshCoP::BorderAgent::ForwardContext>::Release(&v31);
              v10 = ot::PathForUri(v33);
              ot::Logger::LogAtLevel<(ot::LogLevel)4>("BorderAgent", "Forwarded request to leader on %s", v11, v12, v13, v14, v15, v16, v10);
            }
          }
        }

        else
        {
          appended = 3;
        }
      }
    }
  }

  ot::Logger::LogOnError("BorderAgent", appended, "forward to leader");
  if (appended)
  {
    if (v29)
    {
      ot::Message::Free(v29);
    }

    ot::MeshCoP::BorderAgent::SendErrorMessage(v25, v35, v27 & 1, appended);
  }

  v19 = appended;
  ot::OwnedPtr<ot::MeshCoP::BorderAgent::ForwardContext>::~OwnedPtr(&v31, v17);
  return v19;
}

void ot::MeshCoP::BorderAgent::HandleTmfDatasetGet(ot::InstanceLocator *a1, ot::Coap::Message *a2, const ot::Ip6::MessageInfo *a3, char a4)
{
  v16 = 0;
  Request = 0;
  if (*a1 == 3)
  {
    if (a4)
    {
      v4 = 26;
    }

    else
    {
      v4 = 11;
    }

    ot::MeshCoP::BorderAgent::ForwardToLeader(a1, a2, a3, v4);
    IgnoreError();
  }

  else
  {
    if (a4)
    {
      active = ot::GetProvider<ot::InstanceLocator>::Get<ot::MeshCoP::PendingDatasetManager>(a1);
    }

    else
    {
      active = ot::GetProvider<ot::InstanceLocator>::Get<ot::MeshCoP::ActiveDatasetManager>(a1);
    }

    Request = ot::MeshCoP::DatasetManager::ProcessGetRequest(active, a2, 1);
    if (Request)
    {
      v6 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Tmf::SecureAgent>(a1);
      v16 = ot::Coap::CoapSecure::SendMessage(v6, Request, a3, 0, 0);
      if (!v16)
      {
        v7 = ot::MeshCoP::Dataset::TypeToString(a4);
        ot::Logger::LogAtLevel<(ot::LogLevel)4>("BorderAgent", "Sent %sGet response to non-active commissioner", v8, v9, v10, v11, v12, v13, v7);
      }
    }

    else
    {
      v16 = 6;
    }
  }

  ot::Logger::LogOnError("BorderAgent", v16, "send Active/PendingGet response");
  if (v16)
  {
    if (Request)
    {
      ot::Message::Free(Request);
    }
  }
}

ot::InstanceLocator *ot::MeshCoP::BorderAgent::HandleTmf<(ot::Uri)14>(ot::InstanceLocator *result, ot::Coap::Message *a2, const ot::Ip6::MessageInfo *a3)
{
  v3 = result;
  if (*result)
  {
    result = ot::MeshCoP::BorderAgent::ForwardToLeader(result, a2, a3, 0x17u);
    if (!result)
    {
      return ot::TimerMilli::Start((v3 + 64), 0xC350u);
    }
  }

  return result;
}

void ot::MeshCoP::BorderAgent::HandleTmf<(ot::Uri)30>(ot::InstanceLocator *a1, ot::Coap::Message *a2, uint64_t a3)
{
  v20 = a1;
  v19 = a2;
  v18 = a3;
  appended = 0;
  v16 = 0;
  v15 = 0;
  Instance = ot::InstanceLocator::GetInstance(a1);
  ot::Tmf::MessageInfo::MessageInfo(v14, Instance);
  if (*a1)
  {
    if (ot::Coap::Message::IsNonConfirmablePostRequest(v19))
    {
      appended = ot::Tlv::Find<ot::UintTlvInfo<(unsigned char)20,unsigned short>>(v19, &v16);
      if (!appended)
      {
        v4 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Tmf::Agent>(a1);
        v15 = ot::Coap::CoapBase::NewPriorityNonConfirmablePostMessage(v4, 0x1Eu);
        if (v15)
        {
          ot::OffsetRange::InitFromMessageOffsetToEnd(v13, v19);
          appended = ot::Message::AppendBytesFromMessage(v15, v19, v13);
          if (!appended)
          {
            ot::Tmf::MessageInfo::SetSockAddrToRlocPeerAddrTo(v14, v16);
            ot::Tmf::MessageInfo::SetSockPortToTmf(v14);
            v5 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Tmf::Agent>(a1);
            appended = ot::Coap::CoapBase::SendMessage(v5, v15, v14);
            if (!appended)
            {
              ot::Logger::LogAtLevel<(ot::LogLevel)4>("BorderAgent", "Sent to joiner router request on RelayTx (c/tx)", v6, v7, v8, v9, v10, v11);
            }
          }
        }

        else
        {
          appended = 3;
        }
      }
    }
  }

  if (appended && v15)
  {
    ot::Message::Free(v15);
  }

  ot::Logger::LogOnError("BorderAgent", appended, "send to joiner router request RelayTx (c/tx)");
}

uint64_t ot::Tlv::Find<ot::UintTlvInfo<(unsigned char)20,unsigned short>>(const ot::Message *a1, char *a2)
{
  return ot::Tlv::FindUintTlv<unsigned short>(a1, 0x14u, a2);
}

{
  return ot::Tlv::Find<ot::UintTlvInfo<(unsigned char)20,unsigned short>>(a1, a2);
}

uint64_t ot::Tmf::MessageInfo::SetSockPortToTmf(ot::Tmf::MessageInfo *this)
{
  return ot::Ip6::MessageInfo::SetSockPort(this, 61631);
}

{
  return ot::Tmf::MessageInfo::SetSockPortToTmf(this);
}

ot::Utils::Heap *ot::OwnedPtr<ot::MeshCoP::BorderAgent::ForwardContext>::Reset(ot::Utils::Heap *result, void *a2)
{
  v2 = result;
  if (*result != a2)
  {
    result = ot::OwnedPtr<ot::MeshCoP::BorderAgent::ForwardContext>::Delete(result, a2);
    *v2 = a2;
  }

  return result;
}

{
  return ot::OwnedPtr<ot::MeshCoP::BorderAgent::ForwardContext>::Reset(result, a2);
}

ot::MeshCoP::BorderAgent::ForwardContext *ot::Heap::Allocatable<ot::MeshCoP::BorderAgent::ForwardContext>::AllocateAndInit<ot::Instance &,ot::Coap::Message const&,BOOL &,BOOL &>(ot::Instance *a1, const ot::Coap::Message *a2, _BYTE *a3, _BYTE *a4)
{
  v7 = ot::Heap::CAlloc(1, 0xCuLL);
  v6 = 0;
  if (v7)
  {
    *v7 = 0;
    *(v7 + 2) = 0;
    std::allocator<char>::allocator[abi:dn200100](v7);
    v6 = v7;
    if (ot::MeshCoP::BorderAgent::ForwardContext::Init(v7, a1, a2, *a3 & 1, *a4 & 1))
    {
      ot::Heap::Allocatable<ot::MeshCoP::BorderAgent::ForwardContext>::Free(v7, v4);
      return 0;
    }
  }

  return v6;
}

{
  return ot::Heap::Allocatable<ot::MeshCoP::BorderAgent::ForwardContext>::AllocateAndInit<ot::Instance &,ot::Coap::Message const&,BOOL &,BOOL &>(a1, a2, a3, a4);
}

BOOL ot::Ptr<ot::MeshCoP::BorderAgent::ForwardContext>::IsNull(void *a1)
{
  return *a1 == 0;
}

{
  return ot::Ptr<ot::MeshCoP::BorderAgent::ForwardContext>::IsNull(a1);
}

uint64_t ot::OwnedPtr<ot::MeshCoP::BorderAgent::ForwardContext>::Release(uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  return v2;
}

{
  return ot::OwnedPtr<ot::MeshCoP::BorderAgent::ForwardContext>::Release(a1);
}

uint64_t ot::GetProvider<ot::InstanceLocator>::Get<ot::MeshCoP::ActiveDatasetManager>(ot::InstanceLocator *a1)
{
  Instance = ot::InstanceLocator::GetInstance(a1);
  return ot::Instance::Get<ot::MeshCoP::ActiveDatasetManager>(Instance);
}

{
  return ot::GetProvider<ot::InstanceLocator>::Get<ot::MeshCoP::ActiveDatasetManager>(a1);
}

uint64_t ot::GetProvider<ot::InstanceLocator>::Get<ot::MeshCoP::PendingDatasetManager>(ot::InstanceLocator *a1)
{
  Instance = ot::InstanceLocator::GetInstance(a1);
  return ot::Instance::Get<ot::MeshCoP::PendingDatasetManager>(Instance);
}

{
  return ot::GetProvider<ot::InstanceLocator>::Get<ot::MeshCoP::PendingDatasetManager>(a1);
}

uint64_t ot::MeshCoP::BorderAgent::HandleConnected(ot::MeshCoP::BorderAgent *this, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a2)
  {
    ot::Logger::LogAtLevel<(ot::LogLevel)4>("BorderAgent", "Commissioner connected", a3, a4, a5, a6, a7, a8);
    *this = 2;
    return ot::TimerMilli::Start((this + 64), 0xC350u);
  }

  else
  {
    ot::Logger::LogAtLevel<(ot::LogLevel)4>("BorderAgent", "Commissioner disconnected", a3, a4, a5, a6, a7, a8);
    v9 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Ip6::Udp>(this);
    ot::Ip6::Udp::RemoveReceiver(v9, (this + 8));
    IgnoreError();
    v10 = ot::GetProvider<ot::InstanceLocator>::Get<ot::ThreadNetif>(this);
    result = ot::Ip6::Netif::RemoveUnicastAddress(v10, (this + 32));
    *this = 1;
    *(this + 1) = 0;
  }

  return result;
}

uint64_t ot::Coap::CoapSecure::GetUdpPort(ot::Coap::CoapSecure *this)
{
  return ot::MeshCoP::SecureTransport::GetUdpPort((this + 144));
}

{
  return ot::Coap::CoapSecure::GetUdpPort(this);
}

uint64_t ot::MeshCoP::BorderAgent::Start(ot::MeshCoP::BorderAgent *this, unsigned __int16 a2)
{
  v2 = ot::GetProvider<ot::InstanceLocator>::Get<ot::KeyManager>(this);
  ot::KeyManager::GetPskc(v2, &v7);
  v5 = ot::MeshCoP::BorderAgent::Start(this, a2, &v7, 0x10u);
  ot::Clearable<ot::Pskc>::Clear(&v7);
  return v5;
}

uint64_t ot::MeshCoP::BorderAgent::Start(ot::MeshCoP::BorderAgent *this, unsigned __int16 a2, const unsigned __int8 *a3, unsigned __int8 a4)
{
  v16 = 0;
  if (!*this)
  {
    v4 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Tmf::SecureAgent>(this);
    v16 = ot::Coap::CoapSecure::Start(v4, a2);
    if (!v16)
    {
      v5 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Tmf::SecureAgent>(this);
      v16 = ot::Coap::CoapSecure::SetPsk(v5, a3, a4);
      if (!v16)
      {
        v6 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Tmf::SecureAgent>(this);
        ot::Coap::CoapSecure::SetConnectedCallback(v6, ot::MeshCoP::BorderAgent::HandleConnected, this);
        *this = 1;
        *(this + 1) = 0;
        UdpPort = ot::MeshCoP::BorderAgent::GetUdpPort(this);
        ot::Logger::LogAtLevel<(ot::LogLevel)4>("BorderAgent", "Border Agent start listening on port %u", v8, v9, v10, v11, v12, v13, UdpPort);
      }
    }
  }

  ot::Logger::LogOnError("BorderAgent", v16, "start agent");
  return v16;
}

void *ot::Clearable<ot::Pskc>::Clear(void *a1)
{
  return ot::ClearAllBytes<ot::Pskc>(a1);
}

{
  return ot::Clearable<ot::Pskc>::Clear(a1);
}

uint64_t ot::Coap::CoapSecure::SetPsk(ot::Coap::CoapSecure *this, const unsigned __int8 *a2, unsigned __int8 a3)
{
  return ot::MeshCoP::SecureTransport::SetPsk((this + 144), a2, a3);
}

{
  return ot::Coap::CoapSecure::SetPsk(this, a2, a3);
}

void *ot::Coap::CoapSecure::SetConnectedCallback(ot::Coap::CoapSecure *this, void (*a2)(BOOL, void *), uint64_t a3)
{
  return ot::CallbackBase<void (*)(BOOL,void *)>::Set(this + 143, a2, a3);
}

{
  return ot::Coap::CoapSecure::SetConnectedCallback(this, a2, a3);
}

void **ot::Coap::CoapSecure::Disconnect(void **this)
{
  return ot::MeshCoP::SecureTransport::Disconnect(this + 18);
}

{
  return ot::Coap::CoapSecure::Disconnect(this);
}

void ot::MeshCoP::BorderAgent::Stop(_BYTE *this)
{
  if (*this)
  {
    ot::TimerMilli::Stop((this + 64));
    v1 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Tmf::SecureAgent>(this);
    ot::Coap::CoapSecure::Stop(v1);
    *this = 0;
    *(this + 1) = 0;
    ot::Logger::LogAtLevel<(ot::LogLevel)4>("BorderAgent", "Border Agent stopped", v2, v3, v4, v5, v6, v7);
  }
}

void *ot::Ip6::Udp::Receiver::Receiver(void *result, uint64_t a2, uint64_t a3)
{
  *result = 0;
  result[1] = a2;
  result[2] = a3;
  return result;
}

uint64_t ot::Instance::Get<ot::Tmf::SecureAgent>(uint64_t a1)
{
  return a1 + 145008;
}

{
  return ot::Instance::Get<ot::Tmf::SecureAgent>(a1);
}

ot::Utils::Heap *ot::OwnedPtr<ot::MeshCoP::BorderAgent::ForwardContext>::Delete(ot::Utils::Heap *result, void *a2)
{
  if (*result)
  {
    return ot::Heap::Allocatable<ot::MeshCoP::BorderAgent::ForwardContext>::Free(*result, a2);
  }

  return result;
}

{
  return ot::OwnedPtr<ot::MeshCoP::BorderAgent::ForwardContext>::Delete(result, a2);
}

ot::Utils::Heap *ot::Heap::Allocatable<ot::MeshCoP::BorderAgent::ForwardContext>::Free(ot::Heap *a1, void *a2)
{
  return ot::Heap::Free(a1, a2);
}

{
  return ot::Heap::Allocatable<ot::MeshCoP::BorderAgent::ForwardContext>::Free(a1, a2);
}

uint64_t ot::Instance::Get<ot::Settings>(uint64_t a1)
{
  return a1 + 200;
}

{
  return ot::Instance::Get<ot::Settings>(a1);
}

void *ot::SettingsBase::BorderAgentId::Init(ot::SettingsBase::BorderAgentId *this)
{
  return ot::ClearAllBytes<otBorderAgentId>(this);
}

{
  return ot::SettingsBase::BorderAgentId::Init(this);
}

void *ot::ClearAllBytes<otBorderAgentId>(void *result)
{
  *result = 0;
  result[1] = 0;
  return result;
}

{
  return ot::ClearAllBytes<otBorderAgentId>(result);
}

void *ot::ClearAllBytes<ot::Pskc>(void *result)
{
  *result = 0;
  result[1] = 0;
  return result;
}

{
  return ot::ClearAllBytes<ot::Pskc>(result);
}

ot::MeshCoP::Commissioner *ot::MeshCoP::Commissioner::Commissioner(ot::MeshCoP::Commissioner *this, ot::Instance *a2)
{
  ot::InstanceLocator::InstanceLocator(this, a2);
  *(this + 32) = 0;
  *(this + 136) = 0;
  *(this + 137) = 0;
  *(this + 138) = 0;
  *(this + 278) = 0;
  ot::TimerMilliIn<ot::MeshCoP::Commissioner,&ot::MeshCoP::Commissioner::HandleJoinerExpirationTimer>::TimerMilliIn((this + 280), a2);
  ot::TimerMilliIn<ot::MeshCoP::Commissioner,&ot::MeshCoP::Commissioner::HandleTimer>::TimerMilliIn((this + 304), a2);
  ot::TimerMilliIn<ot::MeshCoP::Commissioner,&ot::MeshCoP::Commissioner::HandleJoinerSessionTimer>::TimerMilliIn((this + 328), a2);
  ot::AnnounceBeginClient::AnnounceBeginClient((this + 352), a2);
  ot::EnergyScanClient::EnergyScanClient((this + 360), a2);
  ot::PanIdQueryClient::PanIdQueryClient((this + 376), a2);
  *(this + 554) = 0;
  ot::Callback<void (*)(void *,otBackboneRouterDomainPrefixEvent,otIp6Prefix const*),(ot::CallbackContextPosition)0>::Callback(this + 70);
  ot::Callback<void (*)(void *,otBackboneRouterDomainPrefixEvent,otIp6Prefix const*),(ot::CallbackContextPosition)0>::Callback(this + 72);
  ot::ClearAllBytes<ot::MeshCoP::Commissioner::Joiner [4]>(this);
  ot::Ip6::Netif::UnicastAddress::InitAsThreadOriginMeshLocal((this + 392));
  *(this + 205) &= ~1u;
  ot::MeshCoP::Commissioner::SetId(this, "OpenThread Commissioner");
  IgnoreError();
  result = this;
  *(this + 424) = 0;
  return result;
}

{
  ot::MeshCoP::Commissioner::Commissioner(this, a2);
  return this;
}

uint64_t ot::MeshCoP::Commissioner::HandleJoinerExpirationTimer(ot::MeshCoP::Commissioner *this)
{
  v16 = this;
  ot::NextFireTime::NextFireTime(&v15);
  v14 = this;
  v13 = this;
  v12 = (this + 256);
  while (v13 != v12)
  {
    v11 = v13;
    if (*(v13 + 57))
    {
      v8 = v11;
      Now = ot::NextFireTime::GetNow(&v15);
      if (ot::Time::operator<=(v8, &Now))
      {
        ot::Logger::LogAtLevel<(ot::LogLevel)5>("Commissioner", "removing joiner due to timeout or successfully joined", v1, v2, v3, v4, v5, v6);
        ot::MeshCoP::Commissioner::RemoveJoinerEntry(this, v11);
      }

      else
      {
        ot::NextFireTime::UpdateIfEarlier(&v15, *v11);
      }
    }

    v13 = (v13 + 64);
  }

  return ot::TimerMilli::FireAtIfEarlier((this + 280), &v15);
}

void ot::MeshCoP::Commissioner::HandleTimer(ot::MeshCoP::Commissioner *this)
{
  v1 = *(this + 554);
  if (*(this + 554))
  {
    if (v1 == 1)
    {
      ot::MeshCoP::Commissioner::SendPetition(this);
      IgnoreError();
    }

    else if (v1 == 2)
    {
      ot::MeshCoP::Commissioner::SendKeepAlive(this);
    }
  }
}

void **ot::MeshCoP::Commissioner::HandleJoinerSessionTimer(ot::MeshCoP::Commissioner *this)
{
  if (*(this + 32))
  {
    ot::MeshCoP::Commissioner::LogJoinerEntry(this, "Timed out session with", *(this + 32));
  }

  v1 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Tmf::SecureAgent>(this);
  return ot::Coap::CoapSecure::Disconnect(v1);
}

ot::TimerMilli *ot::TimerMilliIn<ot::MeshCoP::Commissioner,&ot::MeshCoP::Commissioner::HandleJoinerExpirationTimer>::TimerMilliIn(ot::TimerMilli *a1, ot::Instance *a2)
{
  ot::TimerMilliIn<ot::MeshCoP::Commissioner,&ot::MeshCoP::Commissioner::HandleJoinerExpirationTimer>::TimerMilliIn(a1, a2);
  return a1;
}

{
  ot::TimerMilli::TimerMilli(a1, a2, ot::TimerMilliIn<ot::MeshCoP::Commissioner,&ot::MeshCoP::Commissioner::HandleJoinerExpirationTimer>::HandleTimer);
  return a1;
}

ot::TimerMilli *ot::TimerMilliIn<ot::MeshCoP::Commissioner,&ot::MeshCoP::Commissioner::HandleTimer>::TimerMilliIn(ot::TimerMilli *a1, ot::Instance *a2)
{
  ot::TimerMilliIn<ot::MeshCoP::Commissioner,&ot::MeshCoP::Commissioner::HandleTimer>::TimerMilliIn(a1, a2);
  return a1;
}

{
  ot::TimerMilli::TimerMilli(a1, a2, ot::TimerMilliIn<ot::MeshCoP::Commissioner,&ot::MeshCoP::Commissioner::HandleTimer>::HandleTimer);
  return a1;
}

ot::TimerMilli *ot::TimerMilliIn<ot::MeshCoP::Commissioner,&ot::MeshCoP::Commissioner::HandleJoinerSessionTimer>::TimerMilliIn(ot::TimerMilli *a1, ot::Instance *a2)
{
  ot::TimerMilliIn<ot::MeshCoP::Commissioner,&ot::MeshCoP::Commissioner::HandleJoinerSessionTimer>::TimerMilliIn(a1, a2);
  return a1;
}

{
  ot::TimerMilli::TimerMilli(a1, a2, ot::TimerMilliIn<ot::MeshCoP::Commissioner,&ot::MeshCoP::Commissioner::HandleJoinerSessionTimer>::HandleTimer);
  return a1;
}

void *ot::ClearAllBytes<ot::MeshCoP::Commissioner::Joiner [4]>(void *a1)
{
  return memset(a1, 0, 0x100uLL);
}

{
  return ot::ClearAllBytes<ot::MeshCoP::Commissioner::Joiner [4]>(a1);
}

uint64_t ot::MeshCoP::Commissioner::SetId(ot::MeshCoP::Commissioner *this, ot *a2)
{
  if (ot::MeshCoP::Commissioner::IsDisabled(this))
  {
    return ot::StringCopy<(unsigned short)65>(this + 489, a2, 1);
  }

  else
  {
    return 13;
  }
}

void *ot::MeshCoP::Commissioner::SetState(_BYTE *a1, unsigned __int8 a2)
{
  v17 = a1;
  v16 = a2;
  v13 = a1;
  v15 = a1[554];
  v2 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Notifier>(a1);
  result = ot::Notifier::Update<ot::MeshCoP::Commissioner::State>(v2, v13 + 554, &v16, 0x800000);
  if (!result)
  {
    v11 = ot::MeshCoP::Commissioner::StateToString(v15);
    v4 = ot::MeshCoP::Commissioner::StateToString(v16);
    ot::Logger::LogAtLevel<(ot::LogLevel)4>("Commissioner", "State: %s -> %s", v5, v6, v7, v8, v9, v10, v11, v4);
    v12 = v13 + 560;
    v14 = ot::MapEnum<ot::MeshCoP::Commissioner::State>(v13[554]);
    return ot::Callback<void (*)(otCommissionerState,void *),(ot::CallbackContextPosition)1>::InvokeIfSet<otCommissionerState>(v12, &v14);
  }

  return result;
}

uint64_t ot::Notifier::Update<ot::MeshCoP::Commissioner::State>(void *a1, _BYTE *a2, _BYTE *a3, uint64_t a4)
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
  return ot::Notifier::Update<ot::MeshCoP::Commissioner::State>(a1, a2, a3, a4);
}

void *ot::Callback<void (*)(otCommissionerState,void *),(ot::CallbackContextPosition)1>::InvokeIfSet<otCommissionerState>(void *result, unsigned int *a2)
{
  if (*result)
  {
    return ot::Callback<void (*)(otCommissionerState,void *),(ot::CallbackContextPosition)1>::Invoke<otCommissionerState>(result, a2);
  }

  return result;
}

{
  return ot::Callback<void (*)(otCommissionerState,void *),(ot::CallbackContextPosition)1>::InvokeIfSet<otCommissionerState>(result, a2);
}

uint64_t ot::MeshCoP::Commissioner::SignalJoinerEvent(void *a1, unsigned __int8 a2, uint64_t a3)
{
  v13 = a1;
  v12 = a2;
  v11 = a3;
  v10 = 0;
  result = ot::CallbackBase<void (*)(otCommissionerJoinerEvent,otJoinerInfo const*,otExtAddress const*,void *)>::IsSet(a1 + 72);
  if ((result & 1) != 0 && v11)
  {
    ot::MeshCoP::Commissioner::Joiner::CopyToJoinerInfo(v11, v15);
    if (*(v11 + 57) == 2)
    {
      ot::MeshCoP::ComputeJoinerId((v11 + 8), v14, v4);
    }

    else if (v11 == a1[32])
    {
      ot::Ip6::InterfaceIdentifier::ConvertToExtAddress((a1 + 33), v14);
    }

    else
    {
      v10 = 1;
    }

    v9 = ot::MapEnum<ot::MeshCoP::Commissioner::JoinerEvent>(v12);
    v8 = v15;
    if (v10)
    {
      v5 = 0;
    }

    else
    {
      v5 = v14;
    }

    v7 = v5;
    return ot::Callback<void (*)(otCommissionerJoinerEvent,otJoinerInfo const*,otExtAddress const*,void *),(ot::CallbackContextPosition)1>::Invoke<otCommissionerJoinerEvent,otJoinerInfo*,ot::Mac::ExtAddress *>((a1 + 72), &v9, &v8, &v7);
  }

  return result;
}

BOOL ot::CallbackBase<void (*)(otCommissionerJoinerEvent,otJoinerInfo const*,otExtAddress const*,void *)>::IsSet(void *a1)
{
  return *a1 != 0;
}

{
  return ot::CallbackBase<void (*)(otCommissionerJoinerEvent,otJoinerInfo const*,otExtAddress const*,void *)>::IsSet(a1);
}

uint64_t ot::MeshCoP::Commissioner::Joiner::CopyToJoinerInfo(uint64_t a1, char *a2)
{
  v8 = a1;
  v7 = a2;
  result = ot::ClearAllBytes<otJoinerInfo>(a2);
  v5 = *(a1 + 57);
  if (*(a1 + 57))
  {
    switch(v5)
    {
      case 1:
        *v7 = 0;
        break;
      case 2:
        *v7 = 1;
        *(v7 + 1) = *(a1 + 8);
        break;
      case 3:
        *v7 = 2;
        *(v7 + 8) = *(a1 + 8);
        break;
    }

    v3 = memcpy(v7 + 24, (a1 + 24), 0x21uLL);
    Now = ot::TimerMilli::GetNow(v3);
    result = ot::Time::operator-(a1, &Now);
    *(v7 + 15) = result;
  }

  return result;
}

uint64_t ot::Callback<void (*)(otCommissionerJoinerEvent,otJoinerInfo const*,otExtAddress const*,void *),(ot::CallbackContextPosition)1>::Invoke<otCommissionerJoinerEvent,otJoinerInfo*,ot::Mac::ExtAddress *>(uint64_t a1, unsigned int *a2, void *a3, void *a4)
{
  return (*a1)(*a2, *a3, *a4, *(a1 + 8));
}

{
  return ot::Callback<void (*)(otCommissionerJoinerEvent,otJoinerInfo const*,otExtAddress const*,void *),(ot::CallbackContextPosition)1>::Invoke<otCommissionerJoinerEvent,otJoinerInfo*,ot::Mac::ExtAddress *>(a1, a2, a3, a4);
}

uint64_t ot::MapEnum<ot::MeshCoP::Commissioner::JoinerEvent>(uint64_t result)
{
  return result;
}

{
  return ot::MapEnum<ot::MeshCoP::Commissioner::JoinerEvent>(result);
}

uint64_t ot::MeshCoP::Commissioner::HandleSecureAgentConnected(ot::MeshCoP::Commissioner *this, char a2)
{
  if ((a2 & 1) == 0)
  {
    ot::TimerMilli::Stop((this + 328));
  }

  if (a2)
  {
    v2 = 1;
  }

  else
  {
    v2 = 3;
  }

  return ot::MeshCoP::Commissioner::SignalJoinerEvent(this, v2, *(this + 32));
}

ot::MeshCoP::Commissioner *ot::MeshCoP::Commissioner::GetUnusedJoinerEntry(ot::MeshCoP::Commissioner *this)
{
  v3 = 0;
  for (i = this; i != (this + 256); i = (i + 64))
  {
    if (!*(i + 57))
    {
      return i;
    }
  }

  return v3;
}

ot::MeshCoP::Commissioner *ot::MeshCoP::Commissioner::FindJoinerEntry(ot::MeshCoP::Commissioner *this, const ot::Mac::ExtAddress *a2)
{
  v6 = 0;
  v5 = this;
  v4 = (this + 256);
  while (v5 != v4)
  {
    v3 = *(v5 + 57);
    if (*(v5 + 57))
    {
      if (v3 == 1)
      {
        if (!a2)
        {
          return v5;
        }
      }

      else if (v3 == 2 && a2 && ot::Equatable<ot::Mac::ExtAddress>::operator==(v5 + 8, a2))
      {
        return v5;
      }
    }

    v5 = (v5 + 64);
  }

  return v6;
}

ot::MeshCoP::Commissioner *ot::MeshCoP::Commissioner::FindJoinerEntry(ot::MeshCoP::Commissioner *this, const ot::MeshCoP::JoinerDiscerner *a2)
{
  v5 = 0;
  v4 = this;
  v3 = (this + 256);
  while (v4 != v3)
  {
    if (*(v4 + 57) == 3 && ot::MeshCoP::JoinerDiscerner::operator==(a2, v4 + 8))
    {
      return v4;
    }

    v4 = (v4 + 64);
  }

  return v5;
}

ot::MeshCoP::Commissioner *ot::MeshCoP::Commissioner::FindBestMatchingJoinerEntry(ot::MeshCoP::Commissioner *this, const ot::Mac::ExtAddress *a2, ot::Mac::ExtAddress *a3)
{
  v8 = 0;
  v7 = this;
  v6 = (this + 256);
  while (v7 != v6)
  {
    v5 = *(v7 + 57);
    if (*(v7 + 57))
    {
      if (v5 == 1)
      {
        if (!v8)
        {
          v8 = v7;
        }
      }

      else if (v5 == 2)
      {
        ot::MeshCoP::ComputeJoinerId((v7 + 8), v10, a3);
        if (ot::Equatable<ot::Mac::ExtAddress>::operator==(v10, a2))
        {
          return v7;
        }
      }

      else if (v5 == 3 && ot::MeshCoP::JoinerDiscerner::Matches((v7 + 8), a2))
      {
        if (!v8 || *(v8 + 57) == 3 && (Length = ot::MeshCoP::JoinerDiscerner::GetLength((v8 + 8)), Length < ot::MeshCoP::JoinerDiscerner::GetLength((v7 + 8))))
        {
          v8 = v7;
        }
      }
    }

    v7 = (v7 + 64);
  }

  return v8;
}

uint64_t ot::MeshCoP::JoinerDiscerner::GetLength(ot::MeshCoP::JoinerDiscerner *this)
{
  return *(this + 8);
}

{
  return ot::MeshCoP::JoinerDiscerner::GetLength(this);
}

uint64_t ot::MeshCoP::Commissioner::RemoveJoinerEntry(ot::MeshCoP::Commissioner *a1, _BYTE *a2)
{
  memcpy(__dst, a2, sizeof(__dst));
  a2[57] = 0;
  if (a2 == *(a1 + 32))
  {
    *(a1 + 32) = 0;
  }

  ot::MeshCoP::Commissioner::SendCommissionerSet(a1);
  ot::MeshCoP::Commissioner::LogJoinerEntry(a1, "Removed", __dst);
  return ot::MeshCoP::Commissioner::SignalJoinerEvent(a1, 4u, __dst);
}

void ot::MeshCoP::Commissioner::SendCommissionerSet(ot::MeshCoP::Commissioner *this)
{
  if (*(this + 554) == 2)
  {
    ot::Clearable<ot::MeshCoP::CommissioningDataset>::Clear(v4);
    ot::MeshCoP::CommissioningDataset::SetSessionId(v4, *(this + 138));
    updated = ot::MeshCoP::CommissioningDataset::UpdateSteeringData(v4);
    ot::MeshCoP::Commissioner::ComputeBloomFilter(this, updated);
    v3 = ot::MeshCoP::Commissioner::SendMgmtCommissionerSetRequest(this, v4, 0, 0);
    ot::Logger::LogOnError("Commissioner", v3, "send MGMT_COMMISSIONER_SET.req");
  }

  else
  {
    ot::Logger::LogOnError("Commissioner", 13, "send MGMT_COMMISSIONER_SET.req");
  }
}

void ot::MeshCoP::Commissioner::LogJoinerEntry(uint64_t result, const char *a2, uint64_t a3)
{
  v31 = result;
  v30 = a2;
  v29 = a3;
  v28 = *(a3 + 57);
  if (v28)
  {
    switch(v28)
    {
      case 1:
        ot::MeshCoP::JoinerPskd::GetAsCString((v29 + 24));
        ot::Logger::LogAtLevel<(ot::LogLevel)4>("Commissioner", "%s Joiner (any, %s)", v4, v5, v6, v7, v8, v9, v30, v3);
        break;
      case 2:
        v26 = v33;
        ot::Mac::ExtAddress::ToString((v29 + 8), v33);
        v27 = ot::String<(unsigned short)17>::AsCString(v33);
        ot::MeshCoP::JoinerPskd::GetAsCString((v29 + 24));
        ot::Logger::LogAtLevel<(ot::LogLevel)4>("Commissioner", "%s Joiner (eui64:%s, %s)", v11, v12, v13, v14, v15, v16, v30, v27, v10);
        break;
      case 3:
        v24 = v32;
        ot::MeshCoP::JoinerDiscerner::ToString((v29 + 8), v32);
        v25 = ot::String<(unsigned short)45>::AsCString(v32);
        ot::MeshCoP::JoinerPskd::GetAsCString((v29 + 24));
        ot::Logger::LogAtLevel<(ot::LogLevel)4>("Commissioner", "%s Joiner (disc:%s, %s)", v18, v19, v20, v21, v22, v23, v30, v25, v17);
        break;
    }
  }
}

uint64_t ot::MeshCoP::Commissioner::Start(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::MleRouter>(a1);
  if (ot::Mle::Mle::IsAttached(v4))
  {
    if (*(a1 + 554))
    {
      v17 = 24;
    }

    else
    {
      v5 = ot::GetProvider<ot::InstanceLocator>::Get<ot::MeshCoP::BorderAgent>(a1);
      ot::MeshCoP::BorderAgent::Stop(v5);
      v6 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Tmf::SecureAgent>(a1);
      v17 = ot::Coap::CoapSecure::Start(v6, ot::MeshCoP::Commissioner::SendRelayTransmit, a1);
      if (!v17)
      {
        v7 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Tmf::SecureAgent>(a1);
        ot::Coap::CoapSecure::SetConnectedCallback(v7, ot::MeshCoP::Commissioner::HandleSecureAgentConnected, a1);
        ot::CallbackBase<void (*)(otCommissionerState,void *)>::Set((a1 + 560), a2, a4);
        ot::CallbackBase<void (*)(otCommissionerJoinerEvent,otJoinerInfo const*,otExtAddress const*,void *)>::Set((a1 + 576), a3, a4);
        *(a1 + 278) = 0;
        v17 = ot::MeshCoP::Commissioner::SendPetition(a1);
        if (!v17)
        {
          ot::MeshCoP::Commissioner::SetState(a1, 1u);
          ot::Logger::LogAtLevel<(ot::LogLevel)4>("Commissioner", "start commissioner %s", v8, v9, v10, v11, v12, v13, a1 + 489);
        }
      }
    }
  }

  else
  {
    v17 = 13;
  }

  if (v17 && v17 != 24)
  {
    v14 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Tmf::SecureAgent>(a1);
    ot::Coap::CoapSecure::Stop(v14);
    ot::Logger::LogOnError("Commissioner", v17, "start commissioner");
  }

  return v17;
}

void *ot::CallbackBase<void (*)(otCommissionerState,void *)>::Set(void *result, uint64_t a2, uint64_t a3)
{
  *result = a2;
  result[1] = a3;
  return result;
}

{
  return ot::CallbackBase<void (*)(otCommissionerState,void *)>::Set(result, a2, a3);
}

void *ot::CallbackBase<void (*)(otCommissionerJoinerEvent,otJoinerInfo const*,otExtAddress const*,void *)>::Set(void *result, uint64_t a2, uint64_t a3)
{
  *result = a2;
  result[1] = a3;
  return result;
}

{
  return ot::CallbackBase<void (*)(otCommissionerJoinerEvent,otJoinerInfo const*,otExtAddress const*,void *)>::Set(result, a2, a3);
}

uint64_t ot::MeshCoP::Commissioner::SendPetition(ot::MeshCoP::Commissioner *this)
{
  v16 = ot::MeshCoP::Commissioner::HandleLeaderPetitionResponse;
  v21 = this;
  v17 = this;
  v20 = 0;
  v19 = 0;
  Instance = ot::InstanceLocator::GetInstance(this);
  ot::Tmf::MessageInfo::MessageInfo(v18, Instance);
  v2 = v17;
  ++*(v17 + 278);
  v3 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Tmf::Agent>(v2);
  v19 = ot::Coap::CoapBase::NewPriorityConfirmablePostMessage(v3, 0x18u);
  if (v19)
  {
    v20 = ot::Tlv::Append<ot::StringTlvInfo<(unsigned char)10,(unsigned char)64>>(v19, (v17 + 489), v4, v5, v6);
    if (!v20)
    {
      ot::Tmf::MessageInfo::SetSockAddrToRlocPeerAddrToLeaderAloc(v18);
      v7 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Tmf::Agent>(v17);
      v20 = ot::Coap::CoapBase::SendMessage(v7, v19, v18, v16, v17);
      if (!v20)
      {
        v8 = ot::UriToString<(ot::Uri)24>();
        ot::Logger::LogAtLevel<(ot::LogLevel)4>("Commissioner", "Sent %s", v9, v10, v11, v12, v13, v14, v8);
      }
    }
  }

  else
  {
    v20 = 3;
  }

  if (v20 && v19)
  {
    ot::Message::Free(v19);
  }

  return v20;
}

uint64_t ot::MeshCoP::Commissioner::Stop(_BYTE *a1, char a2)
{
  v8 = 0;
  v7 = 0;
  if (a1[554])
  {
    ot::TimerMilli::Stop((a1 + 328));
    v2 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Tmf::SecureAgent>(a1);
    ot::Coap::CoapSecure::Stop(v2);
    if (a1[554] == 2)
    {
      v3 = ot::GetProvider<ot::InstanceLocator>::Get<ot::ThreadNetif>(a1);
      ot::Ip6::Netif::RemoveUnicastAddress(v3, (a1 + 392));
      ot::MeshCoP::Commissioner::ClearJoiners(a1);
      v7 = 1;
    }

    else if (a1[554] == 1)
    {
      a1[278] = 0;
    }

    ot::TimerMilli::Stop((a1 + 304));
    ot::MeshCoP::Commissioner::SetState(a1, 0);
    if ((v7 & 1) != 0 && !a2)
    {
      ot::MeshCoP::Commissioner::SendKeepAlive(a1);
    }

    v4 = ot::GetProvider<ot::InstanceLocator>::Get<ot::MeshCoP::BorderAgent>(a1);
    ot::MeshCoP::BorderAgent::Start(v4);
  }

  else
  {
    v8 = 24;
  }

  if (v8 != 24)
  {
    ot::Logger::LogOnError("Commissioner", v8, "stop commissioner");
  }

  return v8;
}

void ot::MeshCoP::Commissioner::ClearJoiners(ot::MeshCoP::Commissioner *this)
{
  for (i = this; i != (this + 256); i = (i + 64))
  {
    *(i + 57) = 0;
  }

  ot::MeshCoP::Commissioner::SendCommissionerSet(this);
}

void ot::MeshCoP::BorderAgent::Start(ot::MeshCoP::BorderAgent *this)
{
  ot::MeshCoP::BorderAgent::Start(this, 0);
  IgnoreError();
}

{
  ot::MeshCoP::BorderAgent::Start(this);
}

BOOL ot::MeshCoP::Commissioner::IsDisabled(ot::MeshCoP::Commissioner *this)
{
  return *(this + 554) == 0;
}

{
  return ot::MeshCoP::Commissioner::IsDisabled(this);
}

uint64_t ot::StringCopy<(unsigned short)65>(_BYTE *a1, ot *a2, char a3)
{
  return ot::StringCopy(a1, 0x41u, a2, a3);
}

{
  return ot::StringCopy<(unsigned short)65>(a1, a2, a3);
}

void *ot::MeshCoP::Commissioner::ComputeBloomFilter(ot::MeshCoP::Commissioner *this, ot::MeshCoP::SteeringData *a2)
{
  result = ot::MeshCoP::SteeringData::Init(a2, 0x10u);
  for (i = this; i != (this + 256); i += 64)
  {
    v4 = i[57];
    if (i[57])
    {
      switch(v4)
      {
        case 1:
          return ot::MeshCoP::SteeringData::SetToPermitAllJoiners(a2);
        case 2:
          ot::MeshCoP::ComputeJoinerId((i + 8), v8, v3);
          result = ot::MeshCoP::SteeringData::UpdateBloomFilter(a2, v8);
          break;
        case 3:
          result = ot::MeshCoP::SteeringData::UpdateBloomFilter(a2, (i + 8));
          break;
      }
    }
  }

  return result;
}

uint64_t ot::Clearable<ot::MeshCoP::CommissioningDataset>::Clear(uint64_t a1)
{
  return ot::ClearAllBytes<ot::MeshCoP::CommissioningDataset>(a1);
}

{
  return ot::Clearable<ot::MeshCoP::CommissioningDataset>::Clear(a1);
}

uint64_t ot::MeshCoP::CommissioningDataset::SetSessionId(uint64_t this, __int16 a2)
{
  *(this + 24) = *(this + 24) & 0xFD | 2;
  *(this + 2) = a2;
  return this;
}

{
  return ot::MeshCoP::CommissioningDataset::SetSessionId(this, a2);
}

uint64_t ot::MeshCoP::CommissioningDataset::UpdateSteeringData(ot::MeshCoP::CommissioningDataset *this)
{
  *(this + 24) = *(this + 24) & 0xFB | 4;
  return this + 4;
}

{
  return ot::MeshCoP::CommissioningDataset::UpdateSteeringData(this);
}

uint64_t ot::MeshCoP::Commissioner::SendMgmtCommissionerSetRequest(ot::MeshCoP::Commissioner *this, const ot::MeshCoP::CommissioningDataset *a2, char *a3, unsigned __int8 a4)
{
  v24 = ot::MeshCoP::Commissioner::HandleMgmtCommissionerSetResponse;
  v33 = this;
  v32 = a2;
  v31 = a3;
  v30 = a4;
  v25 = this;
  appended = 0;
  v28 = 0;
  Instance = ot::InstanceLocator::GetInstance(this);
  ot::Tmf::MessageInfo::MessageInfo(v27, Instance);
  v5 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Tmf::Agent>(v25);
  v28 = ot::Coap::CoapBase::NewPriorityConfirmablePostMessage(v5, 0x11u);
  if (v28)
  {
    if ((ot::MeshCoP::CommissioningDataset::IsLocatorSet(v32) & 1) == 0 || (v23 = v28, Locator = ot::MeshCoP::CommissioningDataset::GetLocator(v32), (appended = ot::Tlv::Append<ot::MeshCoP::BorderAgentLocatorTlv>(v23, Locator)) == 0))
    {
      if ((ot::MeshCoP::CommissioningDataset::IsSessionIdSet(v32) & 1) == 0 || (v22 = v28, SessionId = ot::MeshCoP::CommissioningDataset::GetSessionId(v32), (appended = ot::Tlv::Append<ot::MeshCoP::CommissionerSessionIdTlv>(v22, SessionId)) == 0))
      {
        if ((ot::MeshCoP::CommissioningDataset::IsSteeringDataSet(v32) & 1) == 0 || (SteeringData = ot::MeshCoP::CommissioningDataset::GetSteeringData(v32), v21 = v28, Data = ot::MeshCoP::SteeringData::GetData(SteeringData), Length = ot::MeshCoP::SteeringData::GetLength(SteeringData), (appended = ot::Tlv::Append<ot::MeshCoP::SteeringDataTlv>(v21, Data, Length)) == 0))
        {
          if ((ot::MeshCoP::CommissioningDataset::IsJoinerUdpPortSet(v32) & 1) == 0 || (v19 = v28, JoinerUdpPort = ot::MeshCoP::CommissioningDataset::GetJoinerUdpPort(v32), (appended = ot::Tlv::Append<ot::UintTlvInfo<(unsigned char)18,unsigned short>>(v19, JoinerUdpPort)) == 0))
          {
            if (!v30 || (appended = ot::Message::AppendBytes(v28, v31, v30)) == 0)
            {
              ot::Tmf::MessageInfo::SetSockAddrToRlocPeerAddrToLeaderAloc(v27);
              v10 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Tmf::Agent>(v25);
              appended = ot::Coap::CoapBase::SendMessage(v10, v28, v27, v24, v25);
              if (!appended)
              {
                v11 = ot::UriToString<(ot::Uri)17>();
                ot::Logger::LogAtLevel<(ot::LogLevel)4>("Commissioner", "Sent %s to leader", v12, v13, v14, v15, v16, v17, v11);
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

  if (appended && v28)
  {
    ot::Message::Free(v28);
  }

  return appended;
}

uint64_t ot::MeshCoP::Commissioner::AddJoiner(ot::MeshCoP::Commissioner *this, const ot::Mac::ExtAddress *a2, const ot::MeshCoP::JoinerDiscerner *a3, ot *a4, unsigned int a5)
{
  v17 = this;
  v16 = a2;
  v15 = a3;
  v14 = a4;
  v13 = a5;
  v12 = 0;
  JoinerEntry = 0;
  if (*(this + 554) == 2)
  {
    if (v15)
    {
      if (!ot::MeshCoP::JoinerDiscerner::IsValid(v15))
      {
        return 7;
      }

      JoinerEntry = ot::MeshCoP::Commissioner::FindJoinerEntry(this, v15);
    }

    else
    {
      JoinerEntry = ot::MeshCoP::Commissioner::FindJoinerEntry(this, v16);
    }

    if (!JoinerEntry)
    {
      JoinerEntry = ot::MeshCoP::Commissioner::GetUnusedJoinerEntry(this);
    }

    if (JoinerEntry)
    {
      v5 = ot::MeshCoP::JoinerPskd::SetFrom((JoinerEntry + 24), v14);
      v12 = v5;
      if (!v5)
      {
        if (v15)
        {
          *(JoinerEntry + 57) = 3;
          *(JoinerEntry + 8) = *v15;
        }

        else if (v16)
        {
          *(JoinerEntry + 57) = 2;
          *(JoinerEntry + 1) = *v16;
        }

        else
        {
          *(JoinerEntry + 57) = 1;
        }

        Now = ot::TimerMilli::GetNow(v5);
        v6 = ot::Time::SecToMsec(v13);
        v10 = ot::Time::operator+(&Now, v6);
        *JoinerEntry = v10;
        ot::TimerMilli::FireAtIfEarlier((this + 280), *JoinerEntry);
        ot::MeshCoP::Commissioner::SendCommissionerSet(this);
        ot::MeshCoP::Commissioner::LogJoinerEntry(this, "Added", JoinerEntry);
      }
    }

    else
    {
      return 3;
    }
  }

  else
  {
    return 13;
  }

  return v12;
}

BOOL ot::MeshCoP::JoinerDiscerner::IsValid(ot::MeshCoP::JoinerDiscerner *this)
{
  v2 = 0;
  if (*(this + 8))
  {
    return *(this + 8) <= 0x40u;
  }

  return v2;
}

{
  return ot::MeshCoP::JoinerDiscerner::IsValid(this);
}

void *ot::ClearAllBytes<otJoinerInfo>(void *a1)
{
  return memset(a1, 0, 0x40uLL);
}

{
  return ot::ClearAllBytes<otJoinerInfo>(a1);
}

uint64_t ot::MeshCoP::Commissioner::GetNextJoinerInfo(uint64_t a1, _WORD *a2, char *a3)
{
  v8 = 0;
  while (1)
  {
    v5 = *a2;
    if (v5 >= ot::GetArrayLength<ot::MeshCoP::Commissioner::Joiner,(unsigned short)4>())
    {
      break;
    }

    v3 = (*a2)++;
    v7 = a1 + (v3 << 6);
    if (*(v7 + 57))
    {
      ot::MeshCoP::Commissioner::Joiner::CopyToJoinerInfo(v7, a3);
      return v8;
    }
  }

  return 23;
}

uint64_t ot::GetArrayLength<ot::MeshCoP::Commissioner::Joiner,(unsigned short)4>()
{
  return 4;
}

{
  return ot::GetArrayLength<ot::MeshCoP::Commissioner::Joiner,(unsigned short)4>();
}

uint64_t ot::MeshCoP::Commissioner::RemoveJoiner(ot::MeshCoP::Commissioner *this, const ot::Mac::ExtAddress *a2, const ot::MeshCoP::JoinerDiscerner *a3, unsigned int a4)
{
  v7 = 0;
  if (*(this + 554) == 2)
  {
    if (a3)
    {
      if (!ot::MeshCoP::JoinerDiscerner::IsValid(a3))
      {
        return 7;
      }

      JoinerEntry = ot::MeshCoP::Commissioner::FindJoinerEntry(this, a3);
    }

    else
    {
      JoinerEntry = ot::MeshCoP::Commissioner::FindJoinerEntry(this, a2);
    }

    if (JoinerEntry)
    {
      ot::MeshCoP::Commissioner::RemoveJoiner(this, JoinerEntry, a4);
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

  return v7;
}

uint64_t ot::MeshCoP::Commissioner::RemoveJoiner(uint64_t a1, unsigned int *a2, unsigned int a3)
{
  v10 = a1;
  v9 = a2;
  v8 = a3;
  if (!a3)
  {
    return ot::MeshCoP::Commissioner::RemoveJoinerEntry(a1, v9);
  }

  v7 = 0;
  Now = ot::TimerMilli::GetNow(a1);
  v3 = ot::Time::SecToMsec(v8);
  v7 = ot::Time::operator+(&Now, v3);
  result = ot::Time::operator>(v9, &v7);
  if (result)
  {
    *v9 = v7;
    return ot::TimerMilli::FireAtIfEarlier((a1 + 280), v7);
  }

  return result;
}

BOOL ot::Time::operator<=(unsigned int *a1, unsigned int *a2)
{
  return ot::Time::operator>=(a2, a1);
}

{
  return ot::Time::operator<=(a1, a2);
}

uint64_t ot::MeshCoP::Commissioner::SendMgmtCommissionerGetRequest(ot::MeshCoP::Commissioner *this, char *a2, unsigned __int8 a3)
{
  v15 = ot::MeshCoP::Commissioner::HandleMgmtCommissionerGetResponse;
  v23 = this;
  v22 = a2;
  v21 = a3;
  v16 = this;
  appended = 0;
  v19 = 0;
  Instance = ot::InstanceLocator::GetInstance(this);
  ot::Tmf::MessageInfo::MessageInfo(v18, Instance);
  v4 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Tmf::Agent>(v16);
  v19 = ot::Coap::CoapBase::NewPriorityConfirmablePostMessage(v4, 0xFu);
  if (v19)
  {
    if (!v21 || (v14 = v17, ot::MeshCoP::Tlv::SetType(v17, 13), ot::Tlv::SetLength(v17, v21), (appended = ot::Message::Append<ot::MeshCoP::Tlv>(v19, v17)) == 0) && (appended = ot::Message::AppendBytes(v19, v22, v21)) == 0)
    {
      ot::Tmf::MessageInfo::SetSockAddrToRlocPeerAddrToLeaderAloc(v18);
      v5 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Tmf::Agent>(v16);
      appended = ot::Coap::CoapBase::SendMessage(v5, v19, v18, v15, v16);
      if (!appended)
      {
        v6 = ot::UriToString<(ot::Uri)15>();
        ot::Logger::LogAtLevel<(ot::LogLevel)4>("Commissioner", "Sent %s to leader", v7, v8, v9, v10, v11, v12, v6);
      }
    }
  }

  else
  {
    appended = 3;
  }

  if (appended && v19)
  {
    ot::Message::Free(v19);
  }

  return appended;
}

_BYTE *ot::MeshCoP::Tlv::SetType(ot::Tlv *a1, char a2)
{
  return ot::Tlv::SetType(a1, a2);
}

{
  return ot::MeshCoP::Tlv::SetType(a1, a2);
}

uint64_t ot::Message::Append<ot::MeshCoP::Tlv>(ot::Message *a1, char *a2)
{
  return ot::Message::AppendBytes(a1, a2, 2u);
}

{
  return ot::Message::Append<ot::MeshCoP::Tlv>(a1, a2);
}

void ot::MeshCoP::Commissioner::HandleMgmtCommissionerGetResponse(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  ot::AsCoapMessagePtr();
  v6 = v4;
  ot::AsCoreTypePtr<otMessageInfo>();
  ot::MeshCoP::Commissioner::HandleMgmtCommissionerGetResponse(a1, v6, v5, a4);
}

void ot::MeshCoP::Commissioner::HandleMgmtCommissionerGetResponse(uint64_t a1, ot::Coap::Message *a2, uint64_t a3, int a4)
{
  v14 = a1;
  v13 = a2;
  v12 = a3;
  v11 = a4;
  if (!a4 && ot::Coap::Message::GetCode(v13) == 68)
  {
    v4 = ot::UriToString<(ot::Uri)15>();
    ot::Logger::LogAtLevel<(ot::LogLevel)4>("Commissioner", "Received %s response", v5, v6, v7, v8, v9, v10, v4);
  }
}

uint64_t ot::MeshCoP::CommissioningDataset::IsLocatorSet(ot::MeshCoP::CommissioningDataset *this)
{
  return *(this + 24) & 1;
}

{
  return ot::MeshCoP::CommissioningDataset::IsLocatorSet(this);
}

uint64_t ot::Tlv::Append<ot::MeshCoP::BorderAgentLocatorTlv>(uint64_t a1, unsigned __int16 a2)
{
  return ot::Tlv::AppendUintTlv<unsigned short>(a1, 9u, a2);
}

{
  return ot::Tlv::Append<ot::MeshCoP::BorderAgentLocatorTlv>(a1, a2);
}

uint64_t ot::MeshCoP::CommissioningDataset::GetLocator(ot::MeshCoP::CommissioningDataset *this)
{
  return *this;
}

{
  return ot::MeshCoP::CommissioningDataset::GetLocator(this);
}

uint64_t ot::MeshCoP::CommissioningDataset::IsSessionIdSet(ot::MeshCoP::CommissioningDataset *this)
{
  return (*(this + 24) >> 1) & 1;
}

{
  return ot::MeshCoP::CommissioningDataset::IsSessionIdSet(this);
}

uint64_t ot::MeshCoP::CommissioningDataset::GetSessionId(ot::MeshCoP::CommissioningDataset *this)
{
  return *(this + 1);
}

{
  return ot::MeshCoP::CommissioningDataset::GetSessionId(this);
}

uint64_t ot::MeshCoP::CommissioningDataset::IsSteeringDataSet(ot::MeshCoP::CommissioningDataset *this)
{
  return (*(this + 24) >> 2) & 1;
}

{
  return ot::MeshCoP::CommissioningDataset::IsSteeringDataSet(this);
}

uint64_t ot::MeshCoP::CommissioningDataset::GetSteeringData(ot::MeshCoP::CommissioningDataset *this)
{
  return this + 4;
}

{
  return ot::MeshCoP::CommissioningDataset::GetSteeringData(this);
}

uint64_t ot::Tlv::Append<ot::MeshCoP::SteeringDataTlv>(ot::Tlv *a1, void *a2, unsigned __int8 a3)
{
  return ot::Tlv::AppendTlv(a1, 8, a2, a3);
}

{
  return ot::Tlv::Append<ot::MeshCoP::SteeringDataTlv>(a1, a2, a3);
}

uint64_t ot::MeshCoP::SteeringData::GetData(ot::MeshCoP::SteeringData *this)
{
  return this + 1;
}

{
  return this + 1;
}

{
  return ot::MeshCoP::SteeringData::GetData(this);
}

{
  return ot::MeshCoP::SteeringData::GetData(this);
}

uint64_t ot::MeshCoP::SteeringData::GetLength(ot::MeshCoP::SteeringData *this)
{
  return *this;
}

{
  return ot::MeshCoP::SteeringData::GetLength(this);
}

uint64_t ot::MeshCoP::CommissioningDataset::IsJoinerUdpPortSet(ot::MeshCoP::CommissioningDataset *this)
{
  return (*(this + 24) >> 3) & 1;
}

{
  return ot::MeshCoP::CommissioningDataset::IsJoinerUdpPortSet(this);
}

uint64_t ot::Tlv::Append<ot::UintTlvInfo<(unsigned char)18,unsigned short>>(uint64_t a1, unsigned __int16 a2)
{
  return ot::Tlv::AppendUintTlv<unsigned short>(a1, 0x12u, a2);
}

{
  return ot::Tlv::Append<ot::UintTlvInfo<(unsigned char)18,unsigned short>>(a1, a2);
}

uint64_t ot::MeshCoP::CommissioningDataset::GetJoinerUdpPort(ot::MeshCoP::CommissioningDataset *this)
{
  return *(this + 11);
}

{
  return ot::MeshCoP::CommissioningDataset::GetJoinerUdpPort(this);
}

void ot::MeshCoP::Commissioner::HandleMgmtCommissionerSetResponse(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  ot::AsCoapMessagePtr();
  v6 = v4;
  ot::AsCoreTypePtr<otMessageInfo>();
  ot::MeshCoP::Commissioner::HandleMgmtCommissionerSetResponse(a1, v6, v5, a4);
}

void ot::MeshCoP::Commissioner::HandleMgmtCommissionerSetResponse(uint64_t a1, ot::Coap::Message *a2, uint64_t a3, int a4)
{
  v17 = a1;
  v16 = a2;
  v15 = a3;
  v14 = a4;
  v12 = 0;
  v13 = a4;
  if (!a4 && (ot::Coap::Message::GetCode(v16) != 68 || ot::Tlv::Find<ot::MeshCoP::StateTlv>(v16, &v12) || !v12))
  {
    v13 = 6;
  }

  v11 = ot::UriToString<(ot::Uri)17>();
  if (v13)
  {
    v10 = ot::ErrorToString(v13);
  }

  else
  {
    v10 = ot::MeshCoP::StateTlv::StateToString(v12);
  }

  ot::Logger::LogAtLevel<(ot::LogLevel)4>("Commissioner", "Received %s response: %s", v4, v5, v6, v7, v8, v9, v11, v10);
}

uint64_t ot::Tlv::Append<ot::StringTlvInfo<(unsigned char)10,(unsigned char)64>>(ot::Tlv *a1, ot *a2, uint64_t a3, uint64_t a4, const char *a5)
{
  return ot::Tlv::AppendStringTlv(a1, 0xA, 0x40u, a2, a5);
}

{
  return ot::Tlv::Append<ot::StringTlvInfo<(unsigned char)10,(unsigned char)64>>(a1, a2, a3, a4, a5);
}

void ot::MeshCoP::Commissioner::HandleLeaderPetitionResponse(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  ot::AsCoapMessagePtr();
  v6 = v4;
  ot::AsCoreTypePtr<otMessageInfo>();
  ot::MeshCoP::Commissioner::HandleLeaderPetitionResponse(a1, v6, v5, a4);
}

void ot::MeshCoP::Commissioner::HandleLeaderPetitionResponse(uint64_t a1, ot::Coap::Message *a2, uint64_t a3, int a4)
{
  v23 = a1;
  v22 = a2;
  v21 = a3;
  v20 = a4;
  v19 = 0;
  v18 = 0;
  if (*(a1 + 554) != 2)
  {
    if (!v20 && ot::Coap::Message::GetCode(v22) == 68)
    {
      v4 = ot::UriToString<(ot::Uri)24>();
      ot::Logger::LogAtLevel<(ot::LogLevel)4>("Commissioner", "Received %s response", v5, v6, v7, v8, v9, v10, v4);
      if (!ot::Tlv::Find<ot::MeshCoP::StateTlv>(v22, &v19))
      {
        if (v19 == 1)
        {
          if (!ot::Tlv::Find<ot::MeshCoP::CommissionerSessionIdTlv>(v22, (a1 + 276)))
          {
            if (*(a1 + 554))
            {
              v16 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::Mle>(a1);
              v15 = *(a1 + 276);
              ot::Ip6::Netif::UnicastAddress::GetAddress((a1 + 392));
              ot::Mle::Mle::GetCommissionerAloc(v16, v15, v11);
              v12 = ot::GetProvider<ot::InstanceLocator>::Get<ot::ThreadNetif>(a1);
              ot::Ip6::Netif::AddUnicastAddress(v12, (a1 + 392));
              ot::MeshCoP::Commissioner::SetState(a1, 2u);
              *(a1 + 278) = 0;
              v13 = ot::Time::SecToMsec(0x32);
              ot::TimerMilli::Start((a1 + 304), v13 / 2);
            }

            else
            {
              ot::MeshCoP::Commissioner::SendKeepAlive(a1, *(a1 + 276));
            }
          }
        }

        else
        {
          ot::MeshCoP::Commissioner::Stop(a1, 1);
          IgnoreError();
        }
      }
    }

    else
    {
      v18 = *(a1 + 554) == 1;
    }
  }

  if (v18)
  {
    if (*(a1 + 278) < 2u)
    {
      v14 = ot::Time::SecToMsec(1);
      ot::TimerMilli::Start((a1 + 304), v14);
    }

    else
    {
      ot::MeshCoP::Commissioner::Stop(a1, 1);
      IgnoreError();
    }
  }
}

void ot::MeshCoP::Commissioner::SendKeepAlive(ot::MeshCoP::Commissioner *this, unsigned __int16 a2)
{
  v18 = this;
  v17 = a2;
  v16 = 0;
  v15 = 0;
  Instance = ot::InstanceLocator::GetInstance(this);
  ot::Tmf::MessageInfo::MessageInfo(v14, Instance);
  v3 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Tmf::Agent>(this);
  v15 = ot::Coap::CoapBase::NewPriorityConfirmablePostMessage(v3, 0x17u);
  if (v15)
  {
    if (*(this + 554) == 2)
    {
      v4 = 1;
    }

    else
    {
      v4 = -1;
    }

    v16 = ot::Tlv::Append<ot::MeshCoP::StateTlv>(v15, v4);
    if (!v16)
    {
      v16 = ot::Tlv::Append<ot::MeshCoP::CommissionerSessionIdTlv>(v15, v17);
      if (!v16)
      {
        ot::Tmf::MessageInfo::SetSockAddrToRlocPeerAddrToLeaderAloc(v14);
        v5 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Tmf::Agent>(this);
        v16 = ot::Coap::CoapBase::SendMessage(v5, v15, v14, ot::MeshCoP::Commissioner::HandleLeaderKeepAliveResponse, this);
        if (!v16)
        {
          v6 = ot::UriToString<(ot::Uri)23>();
          ot::Logger::LogAtLevel<(ot::LogLevel)4>("Commissioner", "Sent %s", v7, v8, v9, v10, v11, v12, v6);
        }
      }
    }
  }

  else
  {
    v16 = 3;
  }

  if (v16 && v15)
  {
    ot::Message::Free(v15);
  }

  ot::Logger::LogOnError("Commissioner", v16, "send keep alive");
}

uint64_t ot::Tlv::Append<ot::MeshCoP::StateTlv>(uint64_t a1, unsigned __int8 a2)
{
  return ot::Tlv::AppendUintTlv<unsigned char>(a1, 16, a2);
}

{
  return ot::Tlv::Append<ot::MeshCoP::StateTlv>(a1, a2);
}

void ot::MeshCoP::Commissioner::HandleLeaderKeepAliveResponse(_BYTE *a1, uint64_t a2, uint64_t a3, int a4)
{
  ot::AsCoapMessagePtr();
  v6 = v4;
  ot::AsCoreTypePtr<otMessageInfo>();
  ot::MeshCoP::Commissioner::HandleLeaderKeepAliveResponse(a1, v6, v5, a4);
}

void ot::MeshCoP::Commissioner::HandleLeaderKeepAliveResponse(_BYTE *a1, ot::Coap::Message *a2, uint64_t a3, int a4)
{
  v17 = a1;
  v16 = a2;
  v15 = a3;
  v14 = a4;
  v13 = 0;
  if (a1[554] == 2)
  {
    if (!v14 && ot::Coap::Message::GetCode(v16) == 68)
    {
      v4 = ot::UriToString<(ot::Uri)23>();
      ot::Logger::LogAtLevel<(ot::LogLevel)4>("Commissioner", "Received %s response", v5, v6, v7, v8, v9, v10, v4);
      if (!ot::Tlv::Find<ot::MeshCoP::StateTlv>(v16, &v13))
      {
        if (v13 == 1)
        {
          v11 = ot::Time::SecToMsec(0x32);
          ot::TimerMilli::Start((a1 + 304), v11 / 2);
        }

        else
        {
          ot::MeshCoP::Commissioner::Stop(a1, 1);
          IgnoreError();
        }
      }
    }

    else
    {
      ot::MeshCoP::Commissioner::Stop(a1, 1);
      IgnoreError();
    }
  }
}

void ot::MeshCoP::Commissioner::HandleTmf<(ot::Uri)29>(uint64_t a1, ot::Tlv *a2, uint64_t a3)
{
  v48 = a1;
  v47 = a2;
  v46 = a3;
  TlvValueOffsetRange = 0;
  v44 = 0;
  v42 = 0;
  ot::Ip6::MessageInfo::MessageInfo(v41);
  if (*(a1 + 554) != 2)
  {
    TlvValueOffsetRange = 13;
    return;
  }

  if (ot::Coap::Message::IsNonConfirmablePostRequest(v47))
  {
    TlvValueOffsetRange = ot::Tlv::Find<ot::UintTlvInfo<(unsigned char)18,unsigned short>>(v47, &v44);
    if (!TlvValueOffsetRange)
    {
      TlvValueOffsetRange = ot::Tlv::Find<ot::SimpleTlvInfo<(unsigned char)19,ot::Ip6::InterfaceIdentifier>>(v47, &v43);
      if (!TlvValueOffsetRange)
      {
        TlvValueOffsetRange = ot::Tlv::Find<ot::UintTlvInfo<(unsigned char)20,unsigned short>>(v47, &v42);
        if (!TlvValueOffsetRange)
        {
          TlvValueOffsetRange = ot::Tlv::FindTlvValueOffsetRange(v47, 0x11, &v40, v3);
          if (!TlvValueOffsetRange)
          {
            v4 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Tmf::SecureAgent>(a1);
            if (ot::Coap::CoapSecure::IsConnectionActive(v4))
            {
              if (ot::Unequatable<ot::Ip6::InterfaceIdentifier>::operator!=((a1 + 264), &v43))
              {
                v35 = ot::UriToString<(ot::Uri)29>();
                ot::Ip6::InterfaceIdentifier::ToString(&v43, v51);
                v36 = ot::String<(unsigned short)17>::AsCString(v51);
                v37 = v42;
                ot::Ip6::InterfaceIdentifier::ToString((a1 + 264), v50);
                v7 = ot::String<(unsigned short)17>::AsCString(v50);
                ot::Logger::LogAtLevel<(ot::LogLevel)3>("Commissioner", "Ignore %s (%s, 0x%04x), session in progress with (%s, 0x%04x)", v8, v9, v10, v11, v12, v13, v35, v36, v37, v7, *(a1 + 274));
                return;
              }
            }

            else
            {
              *(a1 + 264) = v43;
              ot::Ip6::InterfaceIdentifier::ConvertToExtAddress((a1 + 264), v52);
              BestMatchingJoinerEntry = ot::MeshCoP::Commissioner::FindBestMatchingJoinerEntry(a1, v52, v5);
              if (!BestMatchingJoinerEntry)
              {
                return;
              }

              v6 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Tmf::SecureAgent>(a1);
              ot::Coap::CoapSecure::SetPsk(v6, (BestMatchingJoinerEntry + 24));
              *(a1 + 256) = BestMatchingJoinerEntry;
              ot::TimerMilli::Start((a1 + 328), 0x7530u);
              ot::MeshCoP::Commissioner::LogJoinerEntry(a1, "Starting new session with", BestMatchingJoinerEntry);
              ot::MeshCoP::Commissioner::SignalJoinerEvent(a1, 0, BestMatchingJoinerEntry);
            }

            *(a1 + 272) = v44;
            *(a1 + 274) = v42;
            v33 = ot::UriToString<(ot::Uri)29>();
            ot::Ip6::InterfaceIdentifier::ToString((a1 + 264), v49);
            v14 = ot::String<(unsigned short)17>::AsCString(v49);
            ot::Logger::LogAtLevel<(ot::LogLevel)4>("Commissioner", "Received %s (%s, 0x%04x)", v15, v16, v17, v18, v19, v20, v33, v14, *(a1 + 274));
            v34 = v47;
            Offset = ot::OffsetRange::GetOffset(&v40);
            ot::Message::SetOffset(v34, Offset);
            v32 = v47;
            EndOffset = ot::OffsetRange::GetEndOffset(&v40);
            TlvValueOffsetRange = ot::Message::SetLength(v32, EndOffset);
            if (!TlvValueOffsetRange)
            {
              v23 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::MleRouter>(a1);
              ot::Mle::Mle::GetMeshLocalEid(v23);
              ot::Ip6::MessageInfo::SetPeerAddr(v41, v24);
              ot::Ip6::MessageInfo::GetPeerAddr(v41);
              ot::Ip6::Address::SetIid(v25, (a1 + 264));
              ot::Ip6::MessageInfo::SetPeerPort(v41, *(a1 + 272));
              v26 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Tmf::SecureAgent>(a1);
              ot::Coap::CoapSecure::HandleUdpReceive(v26, v47, v41, v27, v28, v29, v30, v31);
            }
          }
        }
      }
    }
  }
}

uint64_t ot::Tlv::Find<ot::UintTlvInfo<(unsigned char)18,unsigned short>>(const ot::Message *a1, char *a2)
{
  return ot::Tlv::FindUintTlv<unsigned short>(a1, 0x12u, a2);
}

{
  return ot::Tlv::Find<ot::UintTlvInfo<(unsigned char)18,unsigned short>>(a1, a2);
}

uint64_t ot::Tlv::Find<ot::SimpleTlvInfo<(unsigned char)19,ot::Ip6::InterfaceIdentifier>>(ot::Tlv *a1, void *a2)
{
  return ot::Tlv::FindTlv(a1, 0x13, a2, 8);
}

{
  return ot::Tlv::Find<ot::SimpleTlvInfo<(unsigned char)19,ot::Ip6::InterfaceIdentifier>>(a1, a2);
}

BOOL ot::Coap::CoapSecure::IsConnectionActive(ot::Coap::CoapSecure *this)
{
  return ot::MeshCoP::SecureTransport::IsConnectionActive((this + 144));
}

{
  return ot::Coap::CoapSecure::IsConnectionActive(this);
}

unsigned __int8 *ot::Coap::CoapSecure::HandleUdpReceive(ot::Coap::CoapSecure *this, ot::Message *a2, const ot::Ip6::MessageInfo *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  return ot::MeshCoP::SecureTransport::HandleReceive(this + 144, a2, a3, a4, a5, a6, a7, a8);
}

{
  return ot::Coap::CoapSecure::HandleUdpReceive(this, a2, a3, a4, a5, a6, a7, a8);
}

void ot::MeshCoP::Commissioner::HandleTmf<(ot::Uri)18>(_BYTE *result, ot::Coap::Message *a2, ot::Ip6::MessageInfo *a3)
{
  v21 = result;
  v20 = a2;
  v19 = a3;
  v18 = result;
  if (result[554] == 2 && ot::Coap::Message::IsConfirmablePostRequest(v20))
  {
    v3 = ot::UriToString<(ot::Uri)18>();
    ot::Logger::LogAtLevel<(ot::LogLevel)4>("Commissioner", "Received %s", v4, v5, v6, v7, v8, v9, v3);
    v10 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Tmf::Agent>(v18);
    if (!ot::Coap::CoapBase::SendEmptyAck(v10, v20, v19))
    {
      v11 = ot::UriToString<(ot::Uri)18>();
      ot::Logger::LogAtLevel<(ot::LogLevel)4>("Commissioner", "Sent %s ack", v12, v13, v14, v15, v16, v17, v11);
    }
  }
}

void ot::MeshCoP::Commissioner::HandleTmf<(ot::Uri)22>(uint64_t a1, ot::Tlv *a2)
{
  v14 = 1;
  memset(__b, 0, sizeof(__b));
  if (*(a1 + 554) == 2)
  {
    v2 = ot::UriToString<(ot::Uri)22>();
    ot::Logger::LogAtLevel<(ot::LogLevel)4>("Commissioner", "Received %s", v3, v4, v5, v6, v7, v8, v2);
    v12 = ot::Tlv::Find<ot::StringTlvInfo<(unsigned char)32,(unsigned char)64>>(a2, __b, v9, v10, v11);
    if (v12)
    {
      if (v12 != 23)
      {
        return;
      }
    }

    else if (!ot::StringMatch(__b, (a1 + 424), 0))
    {
      v14 = -1;
    }

    ot::MeshCoP::Commissioner::SendJoinFinalizeResponse(a1, a2, v14);
  }
}

uint64_t ot::Tlv::Find<ot::StringTlvInfo<(unsigned char)32,(unsigned char)64>>(ot::Tlv *a1, uint64_t a2, uint64_t a3, uint64_t a4, char *a5)
{
  return ot::Tlv::FindStringTlv(a1, 0x20, 0x40u, a2, a5);
}

{
  return ot::Tlv::Find<ot::StringTlvInfo<(unsigned char)32,(unsigned char)64>>(a1, a2, a3, a4, a5);
}

void ot::MeshCoP::Commissioner::SendJoinFinalizeResponse(void *a1, const ot::Coap::Message *a2, unsigned __int8 a3)
{
  v24 = a1;
  v23 = a2;
  v22 = a3;
  v18 = a1;
  v21 = 0;
  ot::Ip6::MessageInfo::MessageInfo(v20);
  v3 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Tmf::SecureAgent>(v18);
  v19 = ot::Coap::CoapBase::NewPriorityResponseMessage(v3, v23);
  if (v19)
  {
    v17 = v19;
    Length = ot::Message::GetLength(v19);
    ot::Message::SetOffset(v19, Length);
    ot::Message::SetSubType(v19, 7);
    v21 = ot::Tlv::Append<ot::MeshCoP::StateTlv>(v19, v22);
    if (!v21)
    {
      v5 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::MleRouter>(v18);
      ot::Mle::Mle::GetMeshLocalEid(v5);
      v16 = v20;
      ot::Ip6::MessageInfo::SetPeerAddr(v20, v6);
      ot::Ip6::MessageInfo::GetPeerAddr(v20);
      ot::Ip6::Address::SetIid(v7, (v18 + 132));
      ot::Ip6::MessageInfo::SetPeerPort(v20, v18[136]);
      v8 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Tmf::SecureAgent>(v18);
      v21 = ot::Coap::CoapSecure::SendMessage(v8, v19, v20, 0, 0);
      if (!v21)
      {
        ot::MeshCoP::Commissioner::SignalJoinerEvent(v18, 2u, *(v18 + 32));
        if (*(v18 + 32) && *(*(v18 + 32) + 57) != 1)
        {
          ot::MeshCoP::Commissioner::RemoveJoiner(v18, *(v18 + 32), 0x14u);
        }

        v9 = ot::UriToString<(ot::Uri)22>();
        ot::Logger::LogAtLevel<(ot::LogLevel)4>("Commissioner", "Sent %s response", v10, v11, v12, v13, v14, v15, v9);
      }
    }
  }

  else
  {
    v21 = 3;
  }

  if (v21)
  {
    if (v19)
    {
      ot::Message::Free(v19);
    }
  }
}

uint64_t ot::MeshCoP::Commissioner::SendRelayTransmit(ot::MeshCoP::Commissioner *this, ot::Message *a2, const ot::Ip6::MessageInfo *a3)
{
  v19 = this;
  v18 = a2;
  v17 = a3;
  appended = 0;
  v14 = 0;
  Instance = ot::InstanceLocator::GetInstance(this);
  ot::Tmf::MessageInfo::MessageInfo(v13, Instance);
  v4 = ot::GetProvider<ot::InstanceLocator>::Get<ot::KeyManager>(this);
  ot::KeyManager::ExtractKek(v4, &v20);
  v5 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Tmf::Agent>(this);
  v14 = ot::Coap::CoapBase::NewPriorityNonConfirmablePostMessage(v5, 0x1Eu);
  if (v14)
  {
    appended = ot::Tlv::Append<ot::UintTlvInfo<(unsigned char)18,unsigned short>>(v14, *(this + 136));
    if (!appended)
    {
      appended = ot::Tlv::Append<ot::SimpleTlvInfo<(unsigned char)19,ot::Ip6::InterfaceIdentifier>>(v14, this + 264);
      if (!appended)
      {
        appended = ot::Tlv::Append<ot::UintTlvInfo<(unsigned char)20,unsigned short>>(v14, *(this + 137));
        if (!appended && (ot::Message::GetSubType(v18) != 7 || (appended = ot::Tlv::Append<ot::SimpleTlvInfo<(unsigned char)21,ot::Mac::Key>>(v14, &v20)) == 0))
        {
          ot::MeshCoP::ExtendedTlv::SetType(v15, 17);
          Length = ot::Message::GetLength(v18);
          ot::ExtendedTlv::SetLength(v15, Length);
          appended = ot::Message::Append<ot::MeshCoP::ExtendedTlv>(v14, v15);
          if (!appended)
          {
            v11 = v14;
            v10 = v18;
            v7 = ot::Message::GetLength(v18);
            appended = ot::Message::AppendBytesFromMessage(v11, v10, 0, v7);
            if (!appended)
            {
              ot::Tmf::MessageInfo::SetSockAddrToRlocPeerAddrTo(v13, *(this + 137));
              v8 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Tmf::Agent>(this);
              appended = ot::Coap::CoapBase::SendMessage(v8, v14, v13);
              if (!appended)
              {
                ot::Message::Free(v18);
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

  if (appended && v14)
  {
    ot::Message::Free(v14);
  }

  return appended;
}

double ot::KeyManager::ExtractKek(ot::KeyManager *this, __n128 *a2)
{
  *&result = ot::Mac::KeyMaterial::ExtractKey((this + 120), a2).n128_u64[0];
  return result;
}

{
  return ot::KeyManager::ExtractKek(this, a2);
}

uint64_t ot::Tlv::Append<ot::SimpleTlvInfo<(unsigned char)19,ot::Ip6::InterfaceIdentifier>>(ot::Tlv *a1, void *a2)
{
  return ot::Tlv::AppendTlv(a1, 0x13, a2, 8);
}

{
  return ot::Tlv::Append<ot::SimpleTlvInfo<(unsigned char)19,ot::Ip6::InterfaceIdentifier>>(a1, a2);
}

uint64_t ot::Tlv::Append<ot::UintTlvInfo<(unsigned char)20,unsigned short>>(uint64_t a1, unsigned __int16 a2)
{
  return ot::Tlv::AppendUintTlv<unsigned short>(a1, 0x14u, a2);
}

{
  return ot::Tlv::Append<ot::UintTlvInfo<(unsigned char)20,unsigned short>>(a1, a2);
}

uint64_t ot::Tlv::Append<ot::SimpleTlvInfo<(unsigned char)21,ot::Mac::Key>>(ot::Tlv *a1, void *a2)
{
  return ot::Tlv::AppendTlv(a1, 0x15, a2, 0x10);
}

{
  return ot::Tlv::Append<ot::SimpleTlvInfo<(unsigned char)21,ot::Mac::Key>>(a1, a2);
}

BOOL ot::MeshCoP::SecureTransport::IsConnectionActive(ot::MeshCoP::SecureTransport *this)
{
  return *this >= 3u;
}

{
  return ot::MeshCoP::SecureTransport::IsConnectionActive(this);
}

uint64_t ot::Callback<void (*)(otCommissionerState,void *),(ot::CallbackContextPosition)1>::Invoke<otCommissionerState>(uint64_t a1, unsigned int *a2)
{
  return (*a1)(*a2, *(a1 + 8));
}

{
  return ot::Callback<void (*)(otCommissionerState,void *),(ot::CallbackContextPosition)1>::Invoke<otCommissionerState>(a1, a2);
}

uint64_t ot::ClearAllBytes<ot::MeshCoP::CommissioningDataset>(uint64_t result)
{
  *result = 0;
  *(result + 8) = 0;
  *(result + 16) = 0;
  *(result + 24) = 0;
  return result;
}

{
  return ot::ClearAllBytes<ot::MeshCoP::CommissioningDataset>(result);
}

uint64_t ot::MeshCoP::Dataset::Info::GenerateRandom(ot::MeshCoP::Dataset::Info *this, ot::Instance *a2)
{
  v25 = this;
  v24 = a2;
  Random = 0;
  v2 = ot::Instance::Get<ot::Mac::Mac>(a2);
  v22 = *ot::Mac::Mac::GetSupportedChannelMask(v2);
  v3 = ot::Instance::Get<ot::Radio>(v24);
  PreferredChannelMask = ot::Radio::GetPreferredChannelMask(v3);
  ot::Mac::ChannelMask::ChannelMask(&v21, PreferredChannelMask);
  ot::StringWriter::StringWriter(v20, this + 48, 17);
  ot::Mac::ChannelMask::Intersect(&v21, &v22);
  if (ot::Mac::ChannelMask::IsEmpty(&v21))
  {
    v21 = v22;
  }

  ot::Clearable<ot::MeshCoP::Dataset::Info>::Clear(this);
  *this = 1;
  *(this + 4) = 0;
  *(this + 10) = 0;
  *(this + 45) = ot::Mac::ChannelMask::ChooseRandomChannel(&v21);
  *(this + 29) = ot::Mac::ChannelMask::GetMask(&v22);
  WakeupChannel = ot::Mac::ChannelMask::GetWakeupChannel(&v22);
  *(this + 46) = WakeupChannel;
  *(this + 44) = ot::Mac::GenerateRandomPanId(WakeupChannel);
  ot::AsCoreType<otSecurityPolicy>(this + 110);
  ot::SecurityPolicy::SetToDefault(v6);
  ot::AsCoreType<otNetworkKey>(this + 32);
  Random = ot::NetworkKey::GenerateRandom(v7, v8, v9);
  if (!Random)
  {
    ot::AsCoreType<otPskc>(this + 94);
    Random = ot::Pskc::GenerateRandom(v10, v11, v12);
    if (!Random)
    {
      Random = ot::Random::Crypto::Fill<otExtendedPanId>((this + 65), v13, v14);
      if (!Random)
      {
        ot::AsCoreType<otIp6NetworkPrefix>(this + 73);
        Random = ot::Ip6::NetworkPrefix::GenerateRandomUla(v15, v16, v17);
        if (!Random)
        {
          ot::StringWriter::Append(v20, "%s-%04x", "OpenThread", *(this + 44));
          *(this + 120) = 1;
          *(this + 122) = 1;
          *(this + 123) = 1;
          *(this + 124) = 1;
          *(this + 125) = 1;
          *(this + 127) = 1;
          *(this + 128) = 1;
          *(this + 132) = 1;
          *(this + 129) = 1;
          *(this + 130) = 1;
          *(this + 131) = 1;
        }
      }
    }
  }

  return Random;
}

uint64_t ot::Radio::GetPreferredChannelMask(ot::Radio *this)
{
  ot::Radio::GetInstancePtr(this);
  return otPlatRadioGetPreferredChannelMask();
}

{
  return ot::Radio::GetPreferredChannelMask(this);
}

void ot::AsCoreType<otSecurityPolicy>(uint64_t a1)
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
  ot::AsCoreType<otSecurityPolicy>(a1);
}

{
  ot::AsCoreType<otSecurityPolicy>(a1);
}

uint64_t ot::NetworkKey::GenerateRandom(ot::NetworkKey *this, uint64_t a2, unsigned __int16 a3)
{
  return ot::Random::Crypto::Fill<ot::NetworkKey>(this, a2, a3);
}

{
  return ot::NetworkKey::GenerateRandom(this, a2, a3);
}

uint64_t ot::Pskc::GenerateRandom(ot::Pskc *this, uint64_t a2, unsigned __int16 a3)
{
  return ot::Random::Crypto::Fill<ot::Pskc>(this, a2, a3);
}

{
  return ot::Pskc::GenerateRandom(this, a2, a3);
}

uint64_t ot::Random::Crypto::Fill<otExtendedPanId>(ot::Random::Crypto *a1, uint64_t a2, unsigned __int16 a3)
{
  return ot::Random::Crypto::FillBuffer(a1, 8, a3);
}

{
  return ot::Random::Crypto::Fill<otExtendedPanId>(a1, a2, a3);
}

ot::MeshCoP::Dataset *ot::MeshCoP::Dataset::Dataset(ot::MeshCoP::Dataset *this)
{
  *(this + 254) = 0;
  ot::Time::Time((this + 256), 0);
  ot::ClearAllBytes<unsigned char [254]>(this);
  return this;
}

{
  ot::MeshCoP::Dataset::Dataset(this);
  return this;
}

void *ot::ClearAllBytes<unsigned char [254]>(void *a1)
{
  return memset(a1, 0, 0xFEuLL);
}

{
  return ot::ClearAllBytes<unsigned char [254]>(a1);
}

uint64_t ot::MeshCoP::Dataset::ValidateTlvs(ot::MeshCoP::Dataset *this)
{
  v11 = 6;
  TlvsEnd = ot::MeshCoP::Dataset::GetTlvsEnd(this);
  if (*(this + 254) != 255)
  {
    ot::MeshCoP::Dataset::GetTlvsStart(this);
    for (i = v1; i < TlvsEnd; i = v6)
    {
      if (ot::Tlv::IsExtended(i))
      {
        return v11;
      }

      if (i + 2 > TlvsEnd)
      {
        return v11;
      }

      ot::MeshCoP::Tlv::GetNext(i);
      if (v3 > TlvsEnd)
      {
        return v11;
      }

      IsTlvValid = ot::MeshCoP::Dataset::IsTlvValid(i, v2);
      if ((IsTlvValid & 1) == 0)
      {
        return v11;
      }

      Type = ot::MeshCoP::Tlv::GetType(i);
      if (ot::Tlv::FindTlv(this, (i - this), Type))
      {
        return v11;
      }

      ot::MeshCoP::Tlv::GetNext(i);
    }

    return 0;
  }

  return v11;
}

uint64_t ot::MeshCoP::Dataset::GetTlvsEnd(ot::MeshCoP::Dataset *this)
{
  return this + *(this + 254);
}

{
  return this + *(this + 254);
}

{
  return ot::MeshCoP::Dataset::GetTlvsEnd(this);
}

{
  return ot::MeshCoP::Dataset::GetTlvsEnd(this);
}

void ot::MeshCoP::Dataset::GetTlvsStart(ot::MeshCoP::Dataset *this)
{
  ;
}

{
  ;
}

{
  ot::MeshCoP::Dataset::GetTlvsStart(this);
}

{
  ot::MeshCoP::Dataset::GetTlvsStart(this);
}

void ot::MeshCoP::Tlv::GetNext(ot::MeshCoP::Tlv *this)
{
  ot::Tlv::GetNext(this);
  ot::As<ot::MeshCoP::Tlv>();
}

{
  ot::MeshCoP::Tlv::GetNext(this);
}

uint64_t ot::MeshCoP::Dataset::IsTlvValid(ot::MeshCoP::Dataset *this, const ot::MeshCoP::Tlv *a2)
{
  IsValid = 1;
  v9 = 0;
  Type = ot::MeshCoP::Tlv::GetType(this);
  if (Type)
  {
    switch(Type)
    {
      case 1:
        v9 = 2;
        break;
      case 2:
        v9 = 8;
        break;
      case 3:
        ot::As<ot::MeshCoP::NetworkNameTlv>();
        IsValid = ot::MeshCoP::NetworkNameTlv::IsValid(v4);
        break;
      case 4:
        v9 = 16;
        break;
      case 5:
        v9 = 16;
        break;
      case 7:
        v9 = 8;
        break;
      case 12:
        ot::As<ot::MeshCoP::SecurityPolicyTlv>();
        IsValid = ot::MeshCoP::SecurityPolicyTlv::IsValid(v5);
        break;
      case 53:
        ot::As<ot::MeshCoP::ChannelMaskTlv>();
        IsValid = ot::MeshCoP::ChannelMaskTlv::IsValid(v6);
        break;
    }
  }

  else
  {
    if (ot::Tlv::GetLength(this) < 3uLL)
    {
      IsValid = 0;
      return IsValid & 1;
    }

    v2 = ot::Tlv::ReadValueAs<ot::SimpleTlvInfo<(unsigned char)0,ot::Mle::ChannelTlvValue>>(this);
    IsValid = ot::Mle::ChannelTlvValue::IsValid(v2, v3);
  }

  if (v9)
  {
    IsValid = ot::Tlv::GetLength(this) >= v9;
  }

  return IsValid & 1;
}

uint64_t ot::MeshCoP::Tlv::GetType(ot::MeshCoP::Tlv *this)
{
  return ot::Tlv::GetType(this);
}

{
  return ot::MeshCoP::Tlv::GetType(this);
}

uint64_t ot::Tlv::ReadValueAs<ot::SimpleTlvInfo<(unsigned char)0,ot::Mle::ChannelTlvValue>>(uint64_t a1)
{
  return a1 + 2;
}

{
  return ot::Tlv::ReadValueAs<ot::SimpleTlvInfo<(unsigned char)0,ot::Mle::ChannelTlvValue>>(a1);
}

void ot::As<ot::MeshCoP::NetworkNameTlv>()
{
  ;
}

{
  ;
}

{
  ot::As<ot::MeshCoP::NetworkNameTlv>();
}

{
  ot::As<ot::MeshCoP::NetworkNameTlv>();
}

void ot::As<ot::MeshCoP::SecurityPolicyTlv>()
{
  ;
}

{
  ;
}

{
  ot::As<ot::MeshCoP::SecurityPolicyTlv>();
}

{
  ot::As<ot::MeshCoP::SecurityPolicyTlv>();
}

void ot::As<ot::MeshCoP::ChannelMaskTlv>()
{
  ;
}

{
  ;
}

{
  ;
}

{
  ot::As<ot::MeshCoP::ChannelMaskTlv>();
}

{
  ot::As<ot::MeshCoP::ChannelMaskTlv>();
}

{
  ot::As<ot::MeshCoP::ChannelMaskTlv>();
}

uint64_t ot::MeshCoP::Dataset::ContainsAllTlvs(ot::Tlv *a1, uint64_t a2, unsigned __int8 a3)
{
  v6 = 1;
  for (i = 0; i < a3; ++i)
  {
    if (!ot::MeshCoP::Dataset::ContainsTlv(a1, *(a2 + i)))
    {
      v6 = 0;
      return v6 & 1;
    }
  }

  return v6 & 1;
}

BOOL ot::MeshCoP::Dataset::ContainsTlv(ot::Tlv *a1, unsigned __int8 a2)
{
  ot::MeshCoP::Dataset::FindTlv(a1, a2);
  return v2 != 0;
}

{
  return ot::MeshCoP::Dataset::ContainsTlv(a1, a2);
}

uint64_t ot::MeshCoP::Dataset::ContainsAllRequiredTlvsFor(ot::Tlv *a1, char a2)
{
  v3 = 12;
  if (!a2)
  {
    v3 = 10;
  }

  return ot::MeshCoP::Dataset::ContainsAllTlvs(a1, &ot::MeshCoP::Dataset::ContainsAllRequiredTlvsFor(ot::MeshCoP::Dataset::Type)const::kDatasetTlvs, v3);
}

void ot::As<ot::MeshCoP::Tlv>()
{
  ;
}

{
  ot::As<ot::MeshCoP::Tlv>();
}

unint64_t ot::MeshCoP::Dataset::ConvertTo(ot::MeshCoP::Dataset *this, ot::MeshCoP::Dataset::Info *a2)
{
  v44 = this;
  v43 = a2;
  ot::Clearable<ot::MeshCoP::Dataset::Info>::Clear(a2);
  ot::MeshCoP::Dataset::GetTlvsStart(this);
  for (i = v2; ; i = v21)
  {
    v34 = i;
    result = ot::MeshCoP::Dataset::GetTlvsEnd(this);
    if (v34 >= result)
    {
      break;
    }

    switch(ot::MeshCoP::Tlv::GetType(i))
    {
      case 0u:
        v32 = v43;
        v6 = ot::Tlv::ReadValueAs<ot::SimpleTlvInfo<(unsigned char)0,ot::Mle::ChannelTlvValue>>(i);
        Channel = ot::Mle::ChannelTlvValue::GetChannel(v6, v7);
        ot::MeshCoP::Dataset::Info::Set<(ot::MeshCoP::Dataset::Component)8>(v32, &Channel);
        break;
      case 1u:
        v25 = v43;
        v37 = ot::Tlv::ReadValueAs<ot::UintTlvInfo<(unsigned char)1,unsigned short>>(i, v4);
        ot::MeshCoP::Dataset::Info::Set<(ot::MeshCoP::Dataset::Component)7>(v25, &v37);
        break;
      case 2u:
        v29 = v43;
        v12 = ot::Tlv::ReadValueAs<ot::SimpleTlvInfo<(unsigned char)2,ot::MeshCoP::ExtendedPanId>>(i);
        ot::MeshCoP::Dataset::Info::Set<(ot::MeshCoP::Dataset::Component)4>(v29, v12);
        break;
      case 3u:
        ot::MeshCoP::Dataset::Info::Update<(ot::MeshCoP::Dataset::Component)3>(v43);
        v26 = v15;
        ot::As<ot::MeshCoP::NetworkNameTlv>();
        v38[0] = ot::MeshCoP::NetworkNameTlv::GetNetworkName(v16);
        v38[1] = v17;
        ot::MeshCoP::NetworkName::Set(v26, v38);
        IgnoreError();
        break;
      case 4u:
        v23 = v43;
        v19 = ot::Tlv::ReadValueAs<ot::SimpleTlvInfo<(unsigned char)4,ot::Pskc>>(i);
        ot::MeshCoP::Dataset::Info::Set<(ot::MeshCoP::Dataset::Component)9>(v23, v19);
        break;
      case 5u:
        v27 = v43;
        v14 = ot::Tlv::ReadValueAs<ot::SimpleTlvInfo<(unsigned char)5,ot::NetworkKey>>(i);
        ot::MeshCoP::Dataset::Info::Set<(ot::MeshCoP::Dataset::Component)2>(v27, v14);
        break;
      case 7u:
        v28 = v43;
        v13 = ot::Tlv::ReadValueAs<ot::SimpleTlvInfo<(unsigned char)7,ot::Ip6::NetworkPrefix>>(i);
        ot::MeshCoP::Dataset::Info::Set<(ot::MeshCoP::Dataset::Component)5>(v28, v13);
        break;
      case 0xCu:
        v22 = v43;
        ot::As<ot::MeshCoP::SecurityPolicyTlv>();
        SecurityPolicy = ot::MeshCoP::SecurityPolicyTlv::GetSecurityPolicy(v20);
        ot::MeshCoP::Dataset::Info::Set<(ot::MeshCoP::Dataset::Component)10>(v22, &SecurityPolicy);
        break;
      case 0xEu:
        v33 = v43;
        v5 = ot::Tlv::ReadValueAs<ot::SimpleTlvInfo<(unsigned char)14,ot::MeshCoP::Timestamp>>(i);
        ot::MeshCoP::Dataset::Info::Set<(ot::MeshCoP::Dataset::Component)0>(v33, v5);
        break;
      case 0x33u:
        v24 = v43;
        v18 = ot::Tlv::ReadValueAs<ot::SimpleTlvInfo<(unsigned char)51,ot::MeshCoP::Timestamp>>(i);
        ot::MeshCoP::Dataset::Info::Set<(ot::MeshCoP::Dataset::Component)1>(v24, v18);
        break;
      case 0x34u:
        v30 = v43;
        v39 = ot::Tlv::ReadValueAs<ot::MeshCoP::DelayTimerTlv>(i, v4);
        ot::MeshCoP::Dataset::Info::Set<(ot::MeshCoP::Dataset::Component)6>(v30, &v39);
        break;
      case 0x35u:
        v40 = 0;
        ot::As<ot::MeshCoP::ChannelMaskTlv>();
        if (!ot::MeshCoP::ChannelMaskTlv::ReadChannelMask(v11, &v40))
        {
          ot::MeshCoP::Dataset::Info::Set<(ot::MeshCoP::Dataset::Component)11>(v43, &v40);
        }

        break;
      case 0x4Au:
        v31 = v43;
        ot::As<ot::MeshCoP::WakeupChannelTlv>();
        v10 = ot::MeshCoP::WakeupChannelTlv::GetChannel(v8, v9);
        ot::MeshCoP::Dataset::Info::SetWakeupChannel(v31, v10);
        break;
      default:
        break;
    }

    ot::MeshCoP::Tlv::GetNext(i);
  }

  return result;
}

BOOL ot::MeshCoP::Dataset::Info::Set<(ot::MeshCoP::Dataset::Component)0>(ot::MeshCoP::Dataset::Info *a1, ot::MeshCoP::Timestamp *a2)
{
  Components = ot::MeshCoP::Dataset::Info::GetComponents(a1);
  ot::MeshCoP::Dataset::Components::MarkAsPresent<(ot::MeshCoP::Dataset::Component)0>(Components);
  return ot::MeshCoP::Timestamp::ConvertTo(a2, a1);
}

{
  return ot::MeshCoP::Dataset::Info::Set<(ot::MeshCoP::Dataset::Component)0>(a1, a2);
}

uint64_t ot::Tlv::ReadValueAs<ot::SimpleTlvInfo<(unsigned char)14,ot::MeshCoP::Timestamp>>(uint64_t a1)
{
  return a1 + 2;
}

{
  return ot::Tlv::ReadValueAs<ot::SimpleTlvInfo<(unsigned char)14,ot::MeshCoP::Timestamp>>(a1);
}

void ot::MeshCoP::Dataset::Info::Set<(ot::MeshCoP::Dataset::Component)8>(ot::MeshCoP::Dataset::Info *a1, __int16 *a2)
{
  Components = ot::MeshCoP::Dataset::Info::GetComponents(a1);
  ot::MeshCoP::Dataset::Components::MarkAsPresent<(ot::MeshCoP::Dataset::Component)8>(Components);
  v5 = *a2;
  ot::MeshCoP::Dataset::Info::Get<(ot::MeshCoP::Dataset::Component)8>(a1);
  ot::AsNonConst<unsigned short>();
  *v3 = v5;
}

{
  ot::MeshCoP::Dataset::Info::Set<(ot::MeshCoP::Dataset::Component)8>(a1, a2);
}

uint64_t ot::MeshCoP::Dataset::Info::SetWakeupChannel(uint64_t this, __int16 a2)
{
  *(this + 92) = a2;
  *(this + 132) = 1;
  return this;
}

{
  return ot::MeshCoP::Dataset::Info::SetWakeupChannel(this, a2);
}

void ot::As<ot::MeshCoP::WakeupChannelTlv>()
{
  ;
}

{
  ot::As<ot::MeshCoP::WakeupChannelTlv>();
}

uint64_t ot::MeshCoP::WakeupChannelTlv::GetChannel(ot::MeshCoP::WakeupChannelTlv *this, unsigned __int16 a2)
{
  return ot::BigEndian::HostSwap16(*(this + 3), a2);
}

{
  return ot::MeshCoP::WakeupChannelTlv::GetChannel(this, a2);
}

void ot::MeshCoP::Dataset::Info::Set<(ot::MeshCoP::Dataset::Component)11>(ot::MeshCoP::Dataset::Info *a1, int *a2)
{
  Components = ot::MeshCoP::Dataset::Info::GetComponents(a1);
  ot::MeshCoP::Dataset::Components::MarkAsPresent<(ot::MeshCoP::Dataset::Component)11>(Components);
  v5 = *a2;
  ot::MeshCoP::Dataset::Info::Get<(ot::MeshCoP::Dataset::Component)11>(a1);
  ot::AsNonConst<unsigned int>();
  *v3 = v5;
}

{
  ot::MeshCoP::Dataset::Info::Set<(ot::MeshCoP::Dataset::Component)11>(a1, a2);
}

void ot::MeshCoP::Dataset::Info::Set<(ot::MeshCoP::Dataset::Component)6>(ot::MeshCoP::Dataset::Info *a1, int *a2)
{
  Components = ot::MeshCoP::Dataset::Info::GetComponents(a1);
  ot::MeshCoP::Dataset::Components::MarkAsPresent<(ot::MeshCoP::Dataset::Component)6>(Components);
  v5 = *a2;
  ot::MeshCoP::Dataset::Info::Get<(ot::MeshCoP::Dataset::Component)6>(a1);
  ot::AsNonConst<unsigned int>();
  *v3 = v5;
}

{
  ot::MeshCoP::Dataset::Info::Set<(ot::MeshCoP::Dataset::Component)6>(a1, a2);
}

uint64_t ot::Tlv::ReadValueAs<ot::MeshCoP::DelayTimerTlv>(uint64_t a1, const unsigned __int8 *a2)
{
  return ot::BigEndian::Read<unsigned int>((a1 + 2), a2);
}

{
  return ot::Tlv::ReadValueAs<ot::MeshCoP::DelayTimerTlv>(a1, a2);
}

void ot::MeshCoP::Dataset::Info::Set<(ot::MeshCoP::Dataset::Component)4>(ot::MeshCoP::Dataset::Info *a1, void *a2)
{
  Components = ot::MeshCoP::Dataset::Info::GetComponents(a1);
  ot::MeshCoP::Dataset::Components::MarkAsPresent<(ot::MeshCoP::Dataset::Component)4>(Components);
  ot::MeshCoP::Dataset::Info::Get<(ot::MeshCoP::Dataset::Component)4>(a1);
  ot::AsNonConst<ot::MeshCoP::ExtendedPanId>();
  *v3 = *a2;
}

{
  ot::MeshCoP::Dataset::Info::Set<(ot::MeshCoP::Dataset::Component)4>(a1, a2);
}

uint64_t ot::Tlv::ReadValueAs<ot::SimpleTlvInfo<(unsigned char)2,ot::MeshCoP::ExtendedPanId>>(uint64_t a1)
{
  return a1 + 2;
}

{
  return ot::Tlv::ReadValueAs<ot::SimpleTlvInfo<(unsigned char)2,ot::MeshCoP::ExtendedPanId>>(a1);
}

void ot::MeshCoP::Dataset::Info::Set<(ot::MeshCoP::Dataset::Component)5>(ot::MeshCoP::Dataset::Info *a1, void *a2)
{
  Components = ot::MeshCoP::Dataset::Info::GetComponents(a1);
  ot::MeshCoP::Dataset::Components::MarkAsPresent<(ot::MeshCoP::Dataset::Component)5>(Components);
  ot::MeshCoP::Dataset::Info::Get<(ot::MeshCoP::Dataset::Component)5>(a1);
  ot::AsNonConst<ot::Ip6::NetworkPrefix>();
  *v3 = *a2;
}

{
  ot::MeshCoP::Dataset::Info::Set<(ot::MeshCoP::Dataset::Component)5>(a1, a2);
}

uint64_t ot::Tlv::ReadValueAs<ot::SimpleTlvInfo<(unsigned char)7,ot::Ip6::NetworkPrefix>>(uint64_t a1)
{
  return a1 + 2;
}

{
  return ot::Tlv::ReadValueAs<ot::SimpleTlvInfo<(unsigned char)7,ot::Ip6::NetworkPrefix>>(a1);
}

__n128 ot::MeshCoP::Dataset::Info::Set<(ot::MeshCoP::Dataset::Component)2>(ot::MeshCoP::Dataset::Info *a1, __n128 *a2)
{
  Components = ot::MeshCoP::Dataset::Info::GetComponents(a1);
  ot::MeshCoP::Dataset::Components::MarkAsPresent<(ot::MeshCoP::Dataset::Component)2>(Components);
  ot::MeshCoP::Dataset::Info::Get<(ot::MeshCoP::Dataset::Component)2>(a1);
  ot::AsNonConst<ot::NetworkKey>();
  result = *a2;
  *v4 = *a2;
  return result;
}

uint64_t ot::Tlv::ReadValueAs<ot::SimpleTlvInfo<(unsigned char)5,ot::NetworkKey>>(uint64_t a1)
{
  return a1 + 2;
}

{
  return ot::Tlv::ReadValueAs<ot::SimpleTlvInfo<(unsigned char)5,ot::NetworkKey>>(a1);
}

void ot::MeshCoP::Dataset::Info::Update<(ot::MeshCoP::Dataset::Component)3>(ot::MeshCoP::Dataset::Info *a1)
{
  Components = ot::MeshCoP::Dataset::Info::GetComponents(a1);
  ot::MeshCoP::Dataset::Components::MarkAsPresent<(ot::MeshCoP::Dataset::Component)3>(Components);
  ot::MeshCoP::Dataset::Info::Get<(ot::MeshCoP::Dataset::Component)3>(a1);
  ot::AsNonConst<ot::MeshCoP::NetworkName>();
}

{
  ot::MeshCoP::Dataset::Info::Update<(ot::MeshCoP::Dataset::Component)3>(a1);
}

void ot::MeshCoP::Dataset::Info::Set<(ot::MeshCoP::Dataset::Component)7>(ot::MeshCoP::Dataset::Info *a1, __int16 *a2)
{
  Components = ot::MeshCoP::Dataset::Info::GetComponents(a1);
  ot::MeshCoP::Dataset::Components::MarkAsPresent<(ot::MeshCoP::Dataset::Component)7>(Components);
  v5 = *a2;
  ot::MeshCoP::Dataset::Info::Get<(ot::MeshCoP::Dataset::Component)7>(a1);
  ot::AsNonConst<unsigned short>();
  *v3 = v5;
}

{
  ot::MeshCoP::Dataset::Info::Set<(ot::MeshCoP::Dataset::Component)7>(a1, a2);
}

uint64_t ot::Tlv::ReadValueAs<ot::UintTlvInfo<(unsigned char)1,unsigned short>>(uint64_t a1, const unsigned __int8 *a2)
{
  return ot::BigEndian::Read<unsigned short>((a1 + 2), a2);
}

{
  return ot::Tlv::ReadValueAs<ot::UintTlvInfo<(unsigned char)1,unsigned short>>(a1, a2);
}

BOOL ot::MeshCoP::Dataset::Info::Set<(ot::MeshCoP::Dataset::Component)1>(ot::MeshCoP::Dataset::Info *a1, ot::MeshCoP::Timestamp *a2)
{
  Components = ot::MeshCoP::Dataset::Info::GetComponents(a1);
  ot::MeshCoP::Dataset::Components::MarkAsPresent<(ot::MeshCoP::Dataset::Component)1>(Components);
  return ot::MeshCoP::Timestamp::ConvertTo(a2, a1 + 16);
}

{
  return ot::MeshCoP::Dataset::Info::Set<(ot::MeshCoP::Dataset::Component)1>(a1, a2);
}

uint64_t ot::Tlv::ReadValueAs<ot::SimpleTlvInfo<(unsigned char)51,ot::MeshCoP::Timestamp>>(uint64_t a1)
{
  return a1 + 2;
}

{
  return ot::Tlv::ReadValueAs<ot::SimpleTlvInfo<(unsigned char)51,ot::MeshCoP::Timestamp>>(a1);
}

__n128 ot::MeshCoP::Dataset::Info::Set<(ot::MeshCoP::Dataset::Component)9>(ot::MeshCoP::Dataset::Info *a1, __n128 *a2)
{
  Components = ot::MeshCoP::Dataset::Info::GetComponents(a1);
  ot::MeshCoP::Dataset::Components::MarkAsPresent<(ot::MeshCoP::Dataset::Component)9>(Components);
  ot::MeshCoP::Dataset::Info::Get<(ot::MeshCoP::Dataset::Component)9>(a1);
  ot::AsNonConst<ot::Pskc>();
  result = *a2;
  *v4 = *a2;
  return result;
}

uint64_t ot::Tlv::ReadValueAs<ot::SimpleTlvInfo<(unsigned char)4,ot::Pskc>>(uint64_t a1)
{
  return a1 + 2;
}

{
  return ot::Tlv::ReadValueAs<ot::SimpleTlvInfo<(unsigned char)4,ot::Pskc>>(a1);
}

void ot::MeshCoP::Dataset::Info::Set<(ot::MeshCoP::Dataset::Component)10>(ot::MeshCoP::Dataset::Info *a1, _DWORD *a2)
{
  Components = ot::MeshCoP::Dataset::Info::GetComponents(a1);
  ot::MeshCoP::Dataset::Components::MarkAsPresent<(ot::MeshCoP::Dataset::Component)10>(Components);
  ot::MeshCoP::Dataset::Info::Get<(ot::MeshCoP::Dataset::Component)10>(a1);
  ot::AsNonConst<ot::SecurityPolicy>();
  *v3 = *a2;
}

{
  ot::MeshCoP::Dataset::Info::Set<(ot::MeshCoP::Dataset::Component)10>(a1, a2);
}

void *ot::MeshCoP::Dataset::ConvertTo(unsigned __int8 *a1, _BYTE *a2)
{
  result = memcpy(a2, a1, a1[254]);
  a2[254] = a1[254];
  return result;
}

uint64_t ot::MeshCoP::Dataset::SetFrom(ot::MeshCoP::Dataset *this, const ot::MeshCoP::Dataset *a2)
{
  memcpy(this, a2, *(a2 + 254));
  *(this + 254) = *(a2 + 254);
  result = ot::MeshCoP::Dataset::GetUpdateTime(a2);
  *(this + 64) = result;
  return result;
}

uint64_t ot::MeshCoP::Dataset::GetUpdateTime(ot::MeshCoP::Dataset *this)
{
  return *(this + 64);
}

{
  return ot::MeshCoP::Dataset::GetUpdateTime(this);
}

uint64_t ot::MeshCoP::Dataset::SetFrom(ot::MeshCoP::Dataset *this, const unsigned __int8 *a2, unsigned __int8 a3)
{
  v6 = 0;
  if (a3 == 255)
  {
    return 7;
  }

  else
  {
    *(this + 254) = a3;
    v3 = memcpy(this, a2, *(this + 254));
    *(this + 64) = ot::TimerMilli::GetNow(v3);
  }

  return v6;
}

void ot::MeshCoP::Dataset::SetFrom(ot::MeshCoP::Dataset *this, const ot::MeshCoP::Dataset::Info *a2)
{
  ot::MeshCoP::Dataset::Clear(this);
  ot::MeshCoP::Dataset::WriteTlvsFrom(this, a2);
  IgnoreError();
}

uint64_t ot::MeshCoP::Dataset::Clear(uint64_t this)
{
  *(this + 254) = 0;
  return this;
}

{
  return ot::MeshCoP::Dataset::Clear(this);
}

uint64_t ot::MeshCoP::Dataset::WriteTlvsFrom(ot::MeshCoP::Dataset *this, const ot::MeshCoP::Dataset::Info *a2)
{
  v25 = this;
  v24 = a2;
  v23 = 0;
  if ((ot::MeshCoP::Dataset::Info::IsPresent<(ot::MeshCoP::Dataset::Component)0>(a2) & 1) == 0 || (ot::MeshCoP::Dataset::Info::Get<(ot::MeshCoP::Dataset::Component)0>(v24, v22), (v23 = ot::MeshCoP::Dataset::Write<ot::SimpleTlvInfo<(unsigned char)14,ot::MeshCoP::Timestamp>>(this, v22)) == 0))
  {
    if ((ot::MeshCoP::Dataset::Info::IsPresent<(ot::MeshCoP::Dataset::Component)1>(v24) & 1) == 0 || (ot::MeshCoP::Dataset::Info::Get<(ot::MeshCoP::Dataset::Component)1>(v24, v21), (v23 = ot::MeshCoP::Dataset::Write<ot::SimpleTlvInfo<(unsigned char)51,ot::MeshCoP::Timestamp>>(this, v21)) == 0))
    {
      if ((ot::MeshCoP::Dataset::Info::IsPresent<(ot::MeshCoP::Dataset::Component)6>(v24) & 1) == 0 || (v2 = ot::MeshCoP::Dataset::Info::Get<(ot::MeshCoP::Dataset::Component)6>(v24), (v23 = ot::MeshCoP::Dataset::Write<ot::MeshCoP::DelayTimerTlv>(this, *v2)) == 0))
      {
        if ((ot::MeshCoP::Dataset::Info::IsPresent<(ot::MeshCoP::Dataset::Component)8>(v24) & 1) == 0 || (v3 = ot::MeshCoP::Dataset::Info::Get<(ot::MeshCoP::Dataset::Component)8>(v24), ot::Mle::ChannelTlvValue::SetChannelAndPage(v20, *v3), (v23 = ot::MeshCoP::Dataset::Write<ot::SimpleTlvInfo<(unsigned char)0,ot::Mle::ChannelTlvValue>>(this, v20)) == 0))
        {
          if ((ot::MeshCoP::Dataset::Info::IsPresent<(ot::MeshCoP::Dataset::Component)11>(v24) & 1) == 0 || (v4 = ot::MeshCoP::Dataset::Info::Get<(ot::MeshCoP::Dataset::Component)11>(v24), ot::MeshCoP::ChannelMaskTlv::PrepareValue(v19, *v4), (v23 = ot::MeshCoP::Dataset::WriteTlv(this, 0x35u, v19, v19[6])) == 0))
          {
            if ((ot::MeshCoP::Dataset::Info::IsPresent<(ot::MeshCoP::Dataset::Component)4>(v24) & 1) == 0 || (ot::MeshCoP::Dataset::Info::Get<(ot::MeshCoP::Dataset::Component)4>(v24), (v23 = ot::MeshCoP::Dataset::Write<ot::SimpleTlvInfo<(unsigned char)2,ot::MeshCoP::ExtendedPanId>>(this, v5)) == 0))
            {
              if ((ot::MeshCoP::Dataset::Info::IsPresent<(ot::MeshCoP::Dataset::Component)5>(v24) & 1) == 0 || (v6 = ot::MeshCoP::Dataset::Info::Get<(ot::MeshCoP::Dataset::Component)5>(v24), (v23 = ot::MeshCoP::Dataset::Write<ot::SimpleTlvInfo<(unsigned char)7,ot::Ip6::NetworkPrefix>>(this, v6)) == 0))
              {
                if ((ot::MeshCoP::Dataset::Info::IsPresent<(ot::MeshCoP::Dataset::Component)2>(v24) & 1) == 0 || (ot::MeshCoP::Dataset::Info::Get<(ot::MeshCoP::Dataset::Component)2>(v24), (v23 = ot::MeshCoP::Dataset::Write<ot::SimpleTlvInfo<(unsigned char)5,ot::NetworkKey>>(this, v7)) == 0))
                {
                  if ((ot::MeshCoP::Dataset::Info::IsPresent<(ot::MeshCoP::Dataset::Component)3>(v24) & 1) == 0 || (ot::MeshCoP::Dataset::Info::Get<(ot::MeshCoP::Dataset::Component)3>(v24), v18[0] = ot::MeshCoP::NetworkName::GetAsData(v8), v18[1] = v9, Buffer = ot::MeshCoP::NameData::GetBuffer(v18), Length = ot::MeshCoP::NameData::GetLength(v18), (v23 = ot::MeshCoP::Dataset::WriteTlv(this, 3u, Buffer, Length)) == 0))
                  {
                    if ((ot::MeshCoP::Dataset::Info::IsPresent<(ot::MeshCoP::Dataset::Component)7>(v24) & 1) == 0 || (v11 = ot::MeshCoP::Dataset::Info::Get<(ot::MeshCoP::Dataset::Component)7>(v24), (v23 = ot::MeshCoP::Dataset::Write<ot::UintTlvInfo<(unsigned char)1,unsigned short>>(this, *v11)) == 0))
                    {
                      if ((ot::MeshCoP::Dataset::Info::IsPresent<(ot::MeshCoP::Dataset::Component)9>(v24) & 1) == 0 || (ot::MeshCoP::Dataset::Info::Get<(ot::MeshCoP::Dataset::Component)9>(v24), (v23 = ot::MeshCoP::Dataset::Write<ot::SimpleTlvInfo<(unsigned char)4,ot::Pskc>>(this, v12)) == 0))
                      {
                        if (ot::MeshCoP::Dataset::Info::IsPresent<(ot::MeshCoP::Dataset::Component)10>(v24))
                        {
                          ot::MeshCoP::SecurityPolicyTlv::Init(v17);
                          ot::MeshCoP::Dataset::Info::Get<(ot::MeshCoP::Dataset::Component)10>(v24);
                          ot::MeshCoP::SecurityPolicyTlv::SetSecurityPolicy(v17, v13);
                          return ot::MeshCoP::Dataset::WriteTlv(this, v17);
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

  return v23;
}

uint64_t ot::MeshCoP::Dataset::SetFrom(ot::MeshCoP::Dataset *this, const ot::Message *a2, const ot::OffsetRange *a3)
{
  if (ot::OffsetRange::GetLength(a3) <= 254)
  {
    Length = ot::OffsetRange::GetLength(a3);
    v7 = ot::Message::Read(a2, a3, this, Length);
    if (!v7)
    {
      v4 = ot::OffsetRange::GetLength(a3);
      *(this + 254) = v4;
      *(this + 64) = ot::TimerMilli::GetNow(v4);
    }
  }

  else
  {
    return 7;
  }

  return v7;
}

uint64_t ot::MeshCoP::Dataset::WriteTlv(uint64_t a1, unsigned __int8 a2, const void *a3, unsigned __int8 a4)
{
  *&v11[4] = 0;
  *v11 = (254 - *(a1 + 254));
  ot::MeshCoP::Dataset::FindTlv(a1, a2);
  v10 = v4;
  if (v4)
  {
    *v11 += ot::Tlv::GetLength(v4) + 2;
  }

  if (a4 + 2 > *v11)
  {
    *&v11[2] = 3;
  }

  else
  {
    ot::MeshCoP::Dataset::RemoveTlv(a1, v10);
    TlvsEnd = ot::MeshCoP::Dataset::GetTlvsEnd(a1);
    *(a1 + 254) += a4 + 2;
    ot::MeshCoP::Tlv::SetType(TlvsEnd, a2);
    ot::Tlv::SetLength(TlvsEnd, a4);
    Value = ot::Tlv::GetValue(TlvsEnd);
    v6 = memcpy(Value, a3, a4);
    *(a1 + 256) = ot::TimerMilli::GetNow(v6);
  }

  return *&v11[2];
}

void ot::MeshCoP::Dataset::FindTlv(uint64_t a1, unsigned __int8 a2)
{
  ot::AsConst<ot::MeshCoP::Dataset>();
  ot::MeshCoP::Dataset::FindTlv(v2, a2);
  ot::AsNonConst<ot::MeshCoP::Tlv>();
}

{
  ot::MeshCoP::Dataset::FindTlv(a1, a2);
}

_BYTE *ot::MeshCoP::Dataset::RemoveTlv(_BYTE *this, ot::MeshCoP::Tlv *a2)
{
  v2 = this;
  if (a2)
  {
    v3 = ot::Tlv::GetLength(a2) + 2;
    this = memmove(a2, a2 + v3, v2[254] - (v3 + (a2 - v2)));
    v2[254] -= v3;
  }

  return this;
}

uint64_t ot::MeshCoP::Dataset::WriteTlv(ot::MeshCoP::Dataset *this, const ot::MeshCoP::Tlv *a2)
{
  Type = ot::MeshCoP::Tlv::GetType(a2);
  Value = ot::Tlv::GetValue(a2);
  Length = ot::Tlv::GetLength(a2);
  return ot::MeshCoP::Dataset::WriteTlv(this, Type, Value, Length);
}

uint64_t ot::MeshCoP::Dataset::WriteTlvsFrom(ot::MeshCoP::Dataset *this, const ot::MeshCoP::Dataset *a2)
{
  v7 = ot::MeshCoP::Dataset::ValidateTlvs(a2);
  if (!v7)
  {
    ot::MeshCoP::Dataset::GetTlvsStart(a2);
    for (i = v2; i < ot::MeshCoP::Dataset::GetTlvsEnd(a2); i = v3)
    {
      v7 = ot::MeshCoP::Dataset::WriteTlv(this, i);
      if (v7)
      {
        break;
      }

      ot::MeshCoP::Tlv::GetNext(i);
    }
  }

  return v7;
}

uint64_t ot::MeshCoP::Dataset::WriteTlvsFrom(ot::MeshCoP::Dataset *this, const unsigned __int8 *a2, unsigned __int8 a3)
{
  ot::MeshCoP::Dataset::Dataset(v8);
  v5 = ot::MeshCoP::Dataset::SetFrom(v8, a2, a3);
  if (!v5)
  {
    return ot::MeshCoP::Dataset::WriteTlvsFrom(this, v8);
  }

  return v5;
}

uint64_t ot::MeshCoP::Dataset::Info::IsPresent<(ot::MeshCoP::Dataset::Component)0>(ot::MeshCoP::Dataset::Info *a1)
{
  Components = ot::MeshCoP::Dataset::Info::GetComponents(a1);
  return ot::MeshCoP::Dataset::Components::IsPresent<(ot::MeshCoP::Dataset::Component)0>(Components);
}

{
  return ot::MeshCoP::Dataset::Info::IsPresent<(ot::MeshCoP::Dataset::Component)0>(a1);
}

uint64_t ot::MeshCoP::Dataset::Info::Get<(ot::MeshCoP::Dataset::Component)0>(uint64_t a1, ot::MeshCoP::Timestamp *a2)
{
  return ot::MeshCoP::Timestamp::SetFrom(a2, a1);
}

{
  return ot::MeshCoP::Dataset::Info::Get<(ot::MeshCoP::Dataset::Component)0>(a1, a2);
}

uint64_t ot::MeshCoP::Dataset::Write<ot::SimpleTlvInfo<(unsigned char)14,ot::MeshCoP::Timestamp>>(uint64_t a1, const void *a2)
{
  return ot::MeshCoP::Dataset::WriteTlv(a1, 0xEu, a2, 8u);
}

{
  return ot::MeshCoP::Dataset::Write<ot::SimpleTlvInfo<(unsigned char)14,ot::MeshCoP::Timestamp>>(a1, a2);
}

uint64_t ot::MeshCoP::Dataset::Info::IsPresent<(ot::MeshCoP::Dataset::Component)1>(ot::MeshCoP::Dataset::Info *a1)
{
  Components = ot::MeshCoP::Dataset::Info::GetComponents(a1);
  return ot::MeshCoP::Dataset::Components::IsPresent<(ot::MeshCoP::Dataset::Component)1>(Components);
}

{
  return ot::MeshCoP::Dataset::Info::IsPresent<(ot::MeshCoP::Dataset::Component)1>(a1);
}

uint64_t ot::MeshCoP::Dataset::Info::Get<(ot::MeshCoP::Dataset::Component)1>(uint64_t a1, ot::MeshCoP::Timestamp *a2)
{
  return ot::MeshCoP::Timestamp::SetFrom(a2, a1 + 16);
}

{
  return ot::MeshCoP::Dataset::Info::Get<(ot::MeshCoP::Dataset::Component)1>(a1, a2);
}

uint64_t ot::MeshCoP::Dataset::Write<ot::SimpleTlvInfo<(unsigned char)51,ot::MeshCoP::Timestamp>>(uint64_t a1, const void *a2)
{
  return ot::MeshCoP::Dataset::WriteTlv(a1, 0x33u, a2, 8u);
}

{
  return ot::MeshCoP::Dataset::Write<ot::SimpleTlvInfo<(unsigned char)51,ot::MeshCoP::Timestamp>>(a1, a2);
}

uint64_t ot::MeshCoP::Dataset::Info::IsPresent<(ot::MeshCoP::Dataset::Component)6>(ot::MeshCoP::Dataset::Info *a1)
{
  Components = ot::MeshCoP::Dataset::Info::GetComponents(a1);
  return ot::MeshCoP::Dataset::Components::IsPresent<(ot::MeshCoP::Dataset::Component)6>(Components);
}

{
  return ot::MeshCoP::Dataset::Info::IsPresent<(ot::MeshCoP::Dataset::Component)6>(a1);
}

uint64_t ot::MeshCoP::Dataset::Write<ot::MeshCoP::DelayTimerTlv>(uint64_t a1, unsigned int a2)
{
  v5 = a1;
  v4[1] = a2;
  v4[0] = ot::BigEndian::HostSwap<unsigned int>(a2, a2);
  return ot::MeshCoP::Dataset::WriteTlv(a1, 0x34u, v4, 4u);
}

{
  return ot::MeshCoP::Dataset::Write<ot::MeshCoP::DelayTimerTlv>(a1, a2);
}

uint64_t ot::MeshCoP::Dataset::Info::Get<(ot::MeshCoP::Dataset::Component)6>(uint64_t a1)
{
  return a1 + 84;
}

{
  return ot::MeshCoP::Dataset::Info::Get<(ot::MeshCoP::Dataset::Component)6>(a1);
}

uint64_t ot::MeshCoP::Dataset::Info::IsPresent<(ot::MeshCoP::Dataset::Component)8>(ot::MeshCoP::Dataset::Info *a1)
{
  Components = ot::MeshCoP::Dataset::Info::GetComponents(a1);
  return ot::MeshCoP::Dataset::Components::IsPresent<(ot::MeshCoP::Dataset::Component)8>(Components);
}

{
  return ot::MeshCoP::Dataset::Info::IsPresent<(ot::MeshCoP::Dataset::Component)8>(a1);
}

uint64_t ot::MeshCoP::Dataset::Info::Get<(ot::MeshCoP::Dataset::Component)8>(uint64_t a1)
{
  return a1 + 90;
}

{
  return ot::MeshCoP::Dataset::Info::Get<(ot::MeshCoP::Dataset::Component)8>(a1);
}

uint64_t ot::MeshCoP::Dataset::Write<ot::SimpleTlvInfo<(unsigned char)0,ot::Mle::ChannelTlvValue>>(uint64_t a1, const void *a2)
{
  return ot::MeshCoP::Dataset::WriteTlv(a1, 0, a2, 3u);
}

{
  return ot::MeshCoP::Dataset::Write<ot::SimpleTlvInfo<(unsigned char)0,ot::Mle::ChannelTlvValue>>(a1, a2);
}

uint64_t ot::MeshCoP::Dataset::Info::IsPresent<(ot::MeshCoP::Dataset::Component)11>(ot::MeshCoP::Dataset::Info *a1)
{
  Components = ot::MeshCoP::Dataset::Info::GetComponents(a1);
  return ot::MeshCoP::Dataset::Components::IsPresent<(ot::MeshCoP::Dataset::Component)11>(Components);
}

{
  return ot::MeshCoP::Dataset::Info::IsPresent<(ot::MeshCoP::Dataset::Component)11>(a1);
}

uint64_t ot::MeshCoP::Dataset::Info::Get<(ot::MeshCoP::Dataset::Component)11>(uint64_t a1)
{
  return a1 + 116;
}

{
  return ot::MeshCoP::Dataset::Info::Get<(ot::MeshCoP::Dataset::Component)11>(a1);
}

uint64_t ot::MeshCoP::Dataset::Info::IsPresent<(ot::MeshCoP::Dataset::Component)4>(ot::MeshCoP::Dataset::Info *a1)
{
  Components = ot::MeshCoP::Dataset::Info::GetComponents(a1);
  return ot::MeshCoP::Dataset::Components::IsPresent<(ot::MeshCoP::Dataset::Component)4>(Components);
}

{
  return ot::MeshCoP::Dataset::Info::IsPresent<(ot::MeshCoP::Dataset::Component)4>(a1);
}

uint64_t ot::MeshCoP::Dataset::Write<ot::SimpleTlvInfo<(unsigned char)2,ot::MeshCoP::ExtendedPanId>>(uint64_t a1, const void *a2)
{
  return ot::MeshCoP::Dataset::WriteTlv(a1, 2u, a2, 8u);
}

{
  return ot::MeshCoP::Dataset::Write<ot::SimpleTlvInfo<(unsigned char)2,ot::MeshCoP::ExtendedPanId>>(a1, a2);
}

void ot::MeshCoP::Dataset::Info::Get<(ot::MeshCoP::Dataset::Component)4>(uint64_t a1)
{
  ot::AsCoreType<otExtendedPanId>(a1 + 65);
}

{
  ot::MeshCoP::Dataset::Info::Get<(ot::MeshCoP::Dataset::Component)4>(a1);
}

uint64_t ot::MeshCoP::Dataset::Info::IsPresent<(ot::MeshCoP::Dataset::Component)5>(ot::MeshCoP::Dataset::Info *a1)
{
  Components = ot::MeshCoP::Dataset::Info::GetComponents(a1);
  return ot::MeshCoP::Dataset::Components::IsPresent<(ot::MeshCoP::Dataset::Component)5>(Components);
}

{
  return ot::MeshCoP::Dataset::Info::IsPresent<(ot::MeshCoP::Dataset::Component)5>(a1);
}

uint64_t ot::MeshCoP::Dataset::Write<ot::SimpleTlvInfo<(unsigned char)7,ot::Ip6::NetworkPrefix>>(uint64_t a1, const void *a2)
{
  return ot::MeshCoP::Dataset::WriteTlv(a1, 7u, a2, 8u);
}

{
  return ot::MeshCoP::Dataset::Write<ot::SimpleTlvInfo<(unsigned char)7,ot::Ip6::NetworkPrefix>>(a1, a2);
}

uint64_t ot::MeshCoP::Dataset::Info::Get<(ot::MeshCoP::Dataset::Component)5>(uint64_t a1)
{
  return a1 + 73;
}

{
  return ot::MeshCoP::Dataset::Info::Get<(ot::MeshCoP::Dataset::Component)5>(a1);
}

uint64_t ot::MeshCoP::Dataset::Info::IsPresent<(ot::MeshCoP::Dataset::Component)2>(ot::MeshCoP::Dataset::Info *a1)
{
  Components = ot::MeshCoP::Dataset::Info::GetComponents(a1);
  return ot::MeshCoP::Dataset::Components::IsPresent<(ot::MeshCoP::Dataset::Component)2>(Components);
}

{
  return ot::MeshCoP::Dataset::Info::IsPresent<(ot::MeshCoP::Dataset::Component)2>(a1);
}

uint64_t ot::MeshCoP::Dataset::Write<ot::SimpleTlvInfo<(unsigned char)5,ot::NetworkKey>>(uint64_t a1, const void *a2)
{
  return ot::MeshCoP::Dataset::WriteTlv(a1, 5u, a2, 0x10u);
}

{
  return ot::MeshCoP::Dataset::Write<ot::SimpleTlvInfo<(unsigned char)5,ot::NetworkKey>>(a1, a2);
}

void ot::MeshCoP::Dataset::Info::Get<(ot::MeshCoP::Dataset::Component)2>(uint64_t a1)
{
  ot::AsCoreType<otNetworkKey>(a1 + 32);
}

{
  ot::MeshCoP::Dataset::Info::Get<(ot::MeshCoP::Dataset::Component)2>(a1);
}

uint64_t ot::MeshCoP::Dataset::Info::IsPresent<(ot::MeshCoP::Dataset::Component)3>(ot::MeshCoP::Dataset::Info *a1)
{
  Components = ot::MeshCoP::Dataset::Info::GetComponents(a1);
  return ot::MeshCoP::Dataset::Components::IsPresent<(ot::MeshCoP::Dataset::Component)3>(Components);
}

{
  return ot::MeshCoP::Dataset::Info::IsPresent<(ot::MeshCoP::Dataset::Component)3>(a1);
}

void ot::MeshCoP::Dataset::Info::Get<(ot::MeshCoP::Dataset::Component)3>(uint64_t a1)
{
  ot::AsCoreType<otNetworkName>(a1 + 48);
}

{
  ot::MeshCoP::Dataset::Info::Get<(ot::MeshCoP::Dataset::Component)3>(a1);
}

uint64_t ot::MeshCoP::Dataset::Info::IsPresent<(ot::MeshCoP::Dataset::Component)7>(ot::MeshCoP::Dataset::Info *a1)
{
  Components = ot::MeshCoP::Dataset::Info::GetComponents(a1);
  return ot::MeshCoP::Dataset::Components::IsPresent<(ot::MeshCoP::Dataset::Component)7>(Components);
}

{
  return ot::MeshCoP::Dataset::Info::IsPresent<(ot::MeshCoP::Dataset::Component)7>(a1);
}

uint64_t ot::MeshCoP::Dataset::Write<ot::UintTlvInfo<(unsigned char)1,unsigned short>>(uint64_t a1, unsigned __int16 a2)
{
  v5 = a1;
  v4[1] = a2;
  v4[0] = ot::BigEndian::HostSwap<unsigned short>(a2, a2);
  return ot::MeshCoP::Dataset::WriteTlv(a1, 1u, v4, 2u);
}

{
  return ot::MeshCoP::Dataset::Write<ot::UintTlvInfo<(unsigned char)1,unsigned short>>(a1, a2);
}

uint64_t ot::MeshCoP::Dataset::Info::Get<(ot::MeshCoP::Dataset::Component)7>(uint64_t a1)
{
  return a1 + 88;
}

{
  return ot::MeshCoP::Dataset::Info::Get<(ot::MeshCoP::Dataset::Component)7>(a1);
}

uint64_t ot::MeshCoP::Dataset::Info::IsPresent<(ot::MeshCoP::Dataset::Component)9>(ot::MeshCoP::Dataset::Info *a1)
{
  Components = ot::MeshCoP::Dataset::Info::GetComponents(a1);
  return ot::MeshCoP::Dataset::Components::IsPresent<(ot::MeshCoP::Dataset::Component)9>(Components);
}

{
  return ot::MeshCoP::Dataset::Info::IsPresent<(ot::MeshCoP::Dataset::Component)9>(a1);
}

uint64_t ot::MeshCoP::Dataset::Write<ot::SimpleTlvInfo<(unsigned char)4,ot::Pskc>>(uint64_t a1, const void *a2)
{
  return ot::MeshCoP::Dataset::WriteTlv(a1, 4u, a2, 0x10u);
}

{
  return ot::MeshCoP::Dataset::Write<ot::SimpleTlvInfo<(unsigned char)4,ot::Pskc>>(a1, a2);
}

void ot::MeshCoP::Dataset::Info::Get<(ot::MeshCoP::Dataset::Component)9>(uint64_t a1)
{
  ot::AsCoreType<otPskc>(a1 + 94);
}

{
  ot::MeshCoP::Dataset::Info::Get<(ot::MeshCoP::Dataset::Component)9>(a1);
}

uint64_t ot::MeshCoP::Dataset::Info::IsPresent<(ot::MeshCoP::Dataset::Component)10>(ot::MeshCoP::Dataset::Info *a1)
{
  Components = ot::MeshCoP::Dataset::Info::GetComponents(a1);
  return ot::MeshCoP::Dataset::Components::IsPresent<(ot::MeshCoP::Dataset::Component)10>(Components);
}

{
  return ot::MeshCoP::Dataset::Info::IsPresent<(ot::MeshCoP::Dataset::Component)10>(a1);
}

uint64_t ot::MeshCoP::SecurityPolicyTlv::Init(ot::MeshCoP::SecurityPolicyTlv *this)
{
  ot::MeshCoP::Tlv::SetType(this, 12);
  return ot::Tlv::SetLength(this, 4);
}

{
  return ot::MeshCoP::SecurityPolicyTlv::Init(this);
}

void ot::MeshCoP::Dataset::Info::Get<(ot::MeshCoP::Dataset::Component)10>(uint64_t a1)
{
  ot::AsCoreType<otSecurityPolicy>(a1 + 110);
}

{
  ot::MeshCoP::Dataset::Info::Get<(ot::MeshCoP::Dataset::Component)10>(a1);
}

uint64_t ot::MeshCoP::Dataset::AppendTlvsFrom(ot::MeshCoP::Dataset *this, const unsigned __int8 *a2, unsigned __int8 a3)
{
  *&v5[4] = 0;
  *v5 = *(this + 254);
  if ((*v5 + a3) <= 0xFEu)
  {
    memcpy(this + *(this + 254), a2, a3);
    *(this + 254) += a3;
  }

  else
  {
    *&v5[2] = 3;
  }

  return *&v5[2];
}

uint64_t ot::MeshCoP::Dataset::ReadTimestamp(ot::Tlv *a1, char a2, void *a3)
{
  v7 = 0;
  v3 = ot::MeshCoP::Dataset::TimestampTlvFor(a2);
  ot::MeshCoP::Dataset::FindTlv(a1, v3);
  if (v4)
  {
    *a3 = *ot::Tlv::ReadValueAs<ot::SimpleTlvInfo<(unsigned char)14,ot::MeshCoP::Timestamp>>(v4);
  }

  else
  {
    return 23;
  }

  return v7;
}

uint64_t ot::MeshCoP::Dataset::TimestampTlvFor(char a1)
{
  if (a1)
  {
    return 51;
  }

  else
  {
    return 14;
  }
}

{
  return ot::MeshCoP::Dataset::TimestampTlvFor(a1);
}

uint64_t ot::MeshCoP::Dataset::IsSubsetOf(ot::MeshCoP::Dataset *this, const ot::MeshCoP::Dataset *a2)
{
  v11 = 0;
  ot::MeshCoP::Dataset::GetTlvsStart(this);
  for (i = v2; i < ot::MeshCoP::Dataset::GetTlvsEnd(this); i = v6)
  {
    if (ot::MeshCoP::Tlv::GetType(i) != 14 && ot::MeshCoP::Tlv::GetType(i) != 51 && ot::MeshCoP::Tlv::GetType(i) != 52)
    {
      Type = ot::MeshCoP::Tlv::GetType(i);
      ot::MeshCoP::Dataset::FindTlv(a2, Type);
      v9 = v4;
      if (!v4)
      {
        return v11 & 1;
      }

      Size = ot::Tlv::GetSize(i);
      if (memcmp(i, v9, Size))
      {
        return v11 & 1;
      }
    }

    ot::MeshCoP::Tlv::GetNext(i);
  }

  v11 = 1;
  return v11 & 1;
}

const char *ot::MeshCoP::Dataset::TypeToString(char a1)
{
  if (a1)
  {
    return "Pending";
  }

  else
  {
    return "Active";
  }
}

uint64_t ot::Random::Crypto::Fill<ot::NetworkKey>(ot::Random::Crypto *a1, uint64_t a2, unsigned __int16 a3)
{
  return ot::Random::Crypto::FillBuffer(a1, 0x10, a3);
}

{
  return ot::Random::Crypto::Fill<ot::NetworkKey>(a1, a2, a3);
}

uint64_t ot::Random::Crypto::Fill<ot::Pskc>(ot::Random::Crypto *a1, uint64_t a2, unsigned __int16 a3)
{
  return ot::Random::Crypto::FillBuffer(a1, 0x10, a3);
}

{
  return ot::Random::Crypto::Fill<ot::Pskc>(a1, a2, a3);
}

uint64_t ot::MeshCoP::Dataset::Info::GetComponents(ot::MeshCoP::Dataset::Info *this)
{
  return this + 120;
}

{
  return this + 120;
}

{
  return ot::MeshCoP::Dataset::Info::GetComponents(this);
}

{
  return ot::MeshCoP::Dataset::Info::GetComponents(this);
}

_BYTE *ot::MeshCoP::Dataset::Components::MarkAsPresent<(ot::MeshCoP::Dataset::Component)0>(_BYTE *result)
{
  *result = 1;
  return result;
}

{
  return ot::MeshCoP::Dataset::Components::MarkAsPresent<(ot::MeshCoP::Dataset::Component)0>(result);
}

uint64_t ot::MeshCoP::Dataset::Components::MarkAsPresent<(ot::MeshCoP::Dataset::Component)1>(uint64_t result)
{
  *(result + 1) = 1;
  return result;
}

{
  return ot::MeshCoP::Dataset::Components::MarkAsPresent<(ot::MeshCoP::Dataset::Component)1>(result);
}

void ot::AsNonConst<ot::MeshCoP::Tlv>()
{
  ;
}

{
  ot::AsNonConst<ot::MeshCoP::Tlv>();
}

void ot::AsConst<ot::MeshCoP::Dataset>()
{
  ;
}

{
  ot::AsConst<ot::MeshCoP::Dataset>();
}

uint64_t ot::MeshCoP::Dataset::Components::MarkAsPresent<(ot::MeshCoP::Dataset::Component)8>(uint64_t result)
{
  *(result + 8) = 1;
  return result;
}

{
  return ot::MeshCoP::Dataset::Components::MarkAsPresent<(ot::MeshCoP::Dataset::Component)8>(result);
}

void ot::AsNonConst<unsigned short>()
{
  ;
}

{
  ;
}

{
  ot::AsNonConst<unsigned short>();
}

{
  ot::AsNonConst<unsigned short>();
}

uint64_t ot::MeshCoP::Dataset::Components::MarkAsPresent<(ot::MeshCoP::Dataset::Component)11>(uint64_t result)
{
  *(result + 11) = 1;
  return result;
}

{
  return ot::MeshCoP::Dataset::Components::MarkAsPresent<(ot::MeshCoP::Dataset::Component)11>(result);
}

void ot::AsNonConst<unsigned int>()
{
  ;
}

{
  ot::AsNonConst<unsigned int>();
}

uint64_t ot::BigEndian::Read<unsigned int>(ot::BigEndian *a1, const unsigned __int8 *a2)
{
  return ot::BigEndian::ReadUint32(a1, a2);
}

{
  return ot::BigEndian::Read<unsigned int>(a1, a2);
}

uint64_t ot::BigEndian::ReadUint32(ot::BigEndian *this, const unsigned __int8 *a2)
{
  return _byteswap_ulong(*this);
}

{
  return ot::BigEndian::ReadUint32(this, a2);
}

uint64_t ot::MeshCoP::Dataset::Components::MarkAsPresent<(ot::MeshCoP::Dataset::Component)6>(uint64_t result)
{
  *(result + 6) = 1;
  return result;
}

{
  return ot::MeshCoP::Dataset::Components::MarkAsPresent<(ot::MeshCoP::Dataset::Component)6>(result);
}

uint64_t ot::MeshCoP::Dataset::Components::MarkAsPresent<(ot::MeshCoP::Dataset::Component)4>(uint64_t result)
{
  *(result + 4) = 1;
  return result;
}

{
  return ot::MeshCoP::Dataset::Components::MarkAsPresent<(ot::MeshCoP::Dataset::Component)4>(result);
}

void ot::AsNonConst<ot::MeshCoP::ExtendedPanId>()
{
  ;
}

{
  ot::AsNonConst<ot::MeshCoP::ExtendedPanId>();
}