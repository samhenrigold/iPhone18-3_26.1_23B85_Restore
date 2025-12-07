uint64_t awd::metrics::LocationAccessory_LocationAppRunningTime::SharedCtor(uint64_t this)
{
  *(this + 8) = MEMORY[0x29EDC9758];
  *(this + 16) = 0;
  *(this + 24) = 0;
  return this;
}

awd::metrics::LocationAccessory_LocationAppRunningTime *awd::metrics::LocationAccessory_LocationAppRunningTime::LocationAccessory_LocationAppRunningTime(awd::metrics::LocationAccessory_LocationAppRunningTime *this, const awd::metrics::LocationAccessory_LocationAppRunningTime *a2)
{
  v3 = MEMORY[0x29EDC9758];
  *this = &unk_2A1D51078;
  *(this + 1) = v3;
  *(this + 2) = 0;
  *(this + 6) = 0;
  awd::metrics::LocationAccessory_LocationAppRunningTime::MergeFrom(this, a2);
  return this;
}

void awd::metrics::LocationAccessory_LocationAppRunningTime::MergeFrom(awd::metrics::LocationAccessory_LocationAppRunningTime *this, const awd::metrics::LocationAccessory_LocationAppRunningTime *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v8);
  }

  LOBYTE(v4) = *(a2 + 24);
  if (v4)
  {
    if (*(a2 + 24))
    {
      v5 = *(a2 + 1);
      *(this + 6) |= 1u;
      v6 = *(this + 1);
      if (v6 == MEMORY[0x29EDC9758])
      {
        operator new();
      }

      std::string::operator=(v6, v5);
      v4 = *(a2 + 6);
    }

    if ((v4 & 2) != 0)
    {
      v7 = *(a2 + 4);
      *(this + 6) |= 2u;
      *(this + 4) = v7;
    }
  }
}

void sub_296467DF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::metrics::LocationAccessory_LocationAppRunningTime::~LocationAccessory_LocationAppRunningTime(awd::metrics::LocationAccessory_LocationAppRunningTime *this)
{
  *this = &unk_2A1D51078;
  awd::metrics::LocationAccessory_LocationAppRunningTime::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2A1D51078;
  awd::metrics::LocationAccessory_LocationAppRunningTime::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2A1D51078;
  awd::metrics::LocationAccessory_LocationAppRunningTime::SharedDtor(this);
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  JUMPOUT(0x29C25A730);
}

uint64_t awd::metrics::LocationAccessory_LocationAppRunningTime::SharedDtor(uint64_t this)
{
  v1 = *(this + 8);
  if (v1 != MEMORY[0x29EDC9758] && v1 != 0)
  {
    if (*(v1 + 23) < 0)
    {
      operator delete(*v1);
    }

    JUMPOUT(0x29C25A730);
  }

  return this;
}

uint64_t awd::metrics::LocationAccessory_LocationAppRunningTime::default_instance(awd::metrics::LocationAccessory_LocationAppRunningTime *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = awd::metrics::LocationAccessory_LocationAppRunningTime::default_instance_;
  if (!awd::metrics::LocationAccessory_LocationAppRunningTime::default_instance_)
  {
    awd::metrics::protobuf_AddDesc_Location_2eproto(0, a2, a3, a4);
    return awd::metrics::LocationAccessory_LocationAppRunningTime::default_instance_;
  }

  return result;
}

uint64_t awd::metrics::LocationAccessory_LocationAppRunningTime::Clear(uint64_t this)
{
  if (*(this + 24))
  {
    if (*(this + 24))
    {
      v1 = *(this + 8);
      if (v1 != MEMORY[0x29EDC9758])
      {
        if (*(v1 + 23) < 0)
        {
          **v1 = 0;
          *(v1 + 8) = 0;
        }

        else
        {
          *v1 = 0;
          *(v1 + 23) = 0;
        }
      }
    }

    *(this + 16) = 0;
  }

  *(this + 24) = 0;
  return this;
}

uint64_t awd::metrics::LocationAccessory_LocationAppRunningTime::MergePartialFromCodedStream(awd::metrics::LocationAccessory_LocationAppRunningTime *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
{
  v5 = MEMORY[0x29EDC9758];
  while (1)
  {
    while (1)
    {
      while (1)
      {
        v6 = *(a2 + 1);
        if (v6 >= *(a2 + 2) || (TagFallback = *v6, (TagFallback & 0x80000000) != 0))
        {
          TagFallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadTagFallback(a2);
          *(a2 + 8) = TagFallback;
          if (!TagFallback)
          {
            return 1;
          }
        }

        else
        {
          *(a2 + 8) = TagFallback;
          *(a2 + 1) = v6 + 1;
          if (!TagFallback)
          {
            return 1;
          }
        }

        v8 = TagFallback & 7;
        if (TagFallback >> 3 != 2)
        {
          break;
        }

        if ((TagFallback & 7) != 0)
        {
          goto LABEL_17;
        }

        v12 = *(a2 + 1);
        v10 = *(a2 + 2);
LABEL_21:
        if (v12 >= v10 || (v13 = *v12, v13 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 4);
          if (!result)
          {
            return result;
          }

          v14 = *(a2 + 1);
          v10 = *(a2 + 2);
        }

        else
        {
          *(this + 4) = v13;
          v14 = v12 + 1;
          *(a2 + 1) = v14;
        }

        *(this + 6) |= 2u;
        if (v14 == v10 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
        {
          *(a2 + 8) = 0;
          result = 1;
          *(a2 + 36) = 1;
          return result;
        }
      }

      if (TagFallback >> 3 != 1 || v8 != 2)
      {
        break;
      }

      *(this + 6) |= 1u;
      if (*(this + 1) == v5)
      {
        operator new();
      }

      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
      if (!result)
      {
        return result;
      }

      v11 = *(a2 + 1);
      v10 = *(a2 + 2);
      if (v11 < v10 && *v11 == 16)
      {
        v12 = v11 + 1;
        *(a2 + 1) = v12;
        goto LABEL_21;
      }
    }

LABEL_17:
    if (v8 == 4)
    {
      return 1;
    }

    if ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(a2, TagFallback) & 1) == 0)
    {
      return 0;
    }
  }
}

uint64_t awd::metrics::LocationAccessory_LocationAppRunningTime::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 24);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
    v6 = *(v5 + 24);
  }

  if ((v6 & 2) != 0)
  {
    v7 = *(v5 + 16);

    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(2, v7, a2, a4);
  }

  return this;
}

uint64_t awd::metrics::LocationAccessory_LocationAppRunningTime::ByteSize(awd::metrics::LocationAccessory_LocationAppRunningTime *this, unsigned int a2)
{
  LOBYTE(v3) = *(this + 24);
  if (!v3)
  {
    v4 = 0;
    goto LABEL_19;
  }

  if ((*(this + 24) & 1) == 0)
  {
    v4 = 0;
    if ((*(this + 24) & 2) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_15;
  }

  v5 = *(this + 1);
  v6 = *(v5 + 23);
  v7 = v6;
  v8 = *(v5 + 8);
  if ((v6 & 0x80u) == 0)
  {
    v9 = *(v5 + 23);
  }

  else
  {
    v9 = v8;
  }

  if (v9 >= 0x80)
  {
    v11 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v9);
    v6 = *(v5 + 23);
    v8 = *(v5 + 8);
    v10 = v11 + 1;
    v3 = *(this + 6);
    v7 = *(v5 + 23);
  }

  else
  {
    v10 = 2;
  }

  if (v7 < 0)
  {
    v6 = v8;
  }

  v4 = (v10 + v6);
  if ((v3 & 2) != 0)
  {
LABEL_15:
    v12 = *(this + 4);
    if (v12 >= 0x80)
    {
      v13 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v12) + 1;
    }

    else
    {
      v13 = 2;
    }

    v4 = (v13 + v4);
  }

LABEL_19:
  *(this + 5) = v4;
  return v4;
}

void awd::metrics::LocationAccessory_LocationAppRunningTime::CheckTypeAndMergeFrom(awd::metrics::LocationAccessory_LocationAppRunningTime *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  {
    awd::metrics::LocationAccessory_LocationAppRunningTime::CheckTypeAndMergeFrom();
  }

  awd::metrics::LocationAccessory_LocationAppRunningTime::MergeFrom(this, lpsrc);
}

void awd::metrics::LocationAccessory_LocationAppRunningTime::CopyFrom(awd::metrics::LocationAccessory_LocationAppRunningTime *this, const awd::metrics::LocationAccessory_LocationAppRunningTime *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    awd::metrics::LocationAccessory_LocationAppRunningTime::MergeFrom(this, a2);
  }
}

uint64_t awd::metrics::LocationAccessory_LocationAppRunningTime::Swap(uint64_t this, awd::metrics::LocationAccessory_LocationAppRunningTime *a2)
{
  if (a2 != this)
  {
    v2 = *(this + 8);
    *(this + 8) = *(a2 + 1);
    *(a2 + 1) = v2;
    LODWORD(v2) = *(this + 16);
    *(this + 16) = *(a2 + 4);
    *(a2 + 4) = v2;
    LODWORD(v2) = *(this + 24);
    *(this + 24) = *(a2 + 6);
    *(a2 + 6) = v2;
    LODWORD(v2) = *(this + 20);
    *(this + 20) = *(a2 + 5);
    *(a2 + 5) = v2;
  }

  return this;
}

uint64_t awd::metrics::LocationAccessory_NavDynamicsHistogram::SharedCtor(uint64_t this)
{
  *(this + 8) = 0;
  *(this + 16) = 0;
  return this;
}

awd::metrics::LocationAccessory_NavDynamicsHistogram *awd::metrics::LocationAccessory_NavDynamicsHistogram::LocationAccessory_NavDynamicsHistogram(awd::metrics::LocationAccessory_NavDynamicsHistogram *this, const awd::metrics::LocationAccessory_NavDynamicsHistogram *a2)
{
  *(this + 1) = 0;
  *(this + 2) = 0;
  *this = &unk_2A1D510F0;
  awd::metrics::LocationAccessory_NavDynamicsHistogram::MergeFrom(this, a2);
  return this;
}

void awd::metrics::LocationAccessory_NavDynamicsHistogram::MergeFrom(awd::metrics::LocationAccessory_NavDynamicsHistogram *this, const awd::metrics::LocationAccessory_NavDynamicsHistogram *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v7);
  }

  LOBYTE(v4) = *(a2 + 20);
  if (v4)
  {
    if (*(a2 + 20))
    {
      v5 = *(a2 + 2);
      if (v5 >= 7)
      {
        awd::metrics::LocationAccessory_NavDynamicsHistogram::MergeFrom();
      }

      *(this + 5) |= 1u;
      *(this + 2) = v5;
      v4 = *(a2 + 5);
    }

    if ((v4 & 2) != 0)
    {
      v6 = *(a2 + 3);
      *(this + 5) |= 2u;
      *(this + 3) = v6;
    }
  }
}

void sub_2964685D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::metrics::LocationAccessory_NavDynamicsHistogram::~LocationAccessory_NavDynamicsHistogram(awd::metrics::LocationAccessory_NavDynamicsHistogram *this)
{
  *this = &unk_2A1D510F0;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2A1D510F0;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2A1D510F0;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  JUMPOUT(0x29C25A730);
}

uint64_t awd::metrics::LocationAccessory_NavDynamicsHistogram::default_instance(awd::metrics::LocationAccessory_NavDynamicsHistogram *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = awd::metrics::LocationAccessory_NavDynamicsHistogram::default_instance_;
  if (!awd::metrics::LocationAccessory_NavDynamicsHistogram::default_instance_)
  {
    awd::metrics::protobuf_AddDesc_Location_2eproto(0, a2, a3, a4);
    return awd::metrics::LocationAccessory_NavDynamicsHistogram::default_instance_;
  }

  return result;
}

uint64_t awd::metrics::LocationAccessory_NavDynamicsHistogram::Clear(uint64_t this)
{
  if (*(this + 20))
  {
    *(this + 8) = 0;
  }

  *(this + 20) = 0;
  return this;
}

uint64_t awd::metrics::LocationAccessory_NavDynamicsHistogram::MergePartialFromCodedStream(awd::metrics::LocationAccessory_NavDynamicsHistogram *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
{
  while (1)
  {
    while (1)
    {
      v5 = *(a2 + 1);
      if (v5 >= *(a2 + 2) || (TagFallback = *v5, (TagFallback & 0x80000000) != 0))
      {
        TagFallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadTagFallback(a2);
        *(a2 + 8) = TagFallback;
        if (!TagFallback)
        {
          return 1;
        }
      }

      else
      {
        *(a2 + 8) = TagFallback;
        *(a2 + 1) = v5 + 1;
        if (!TagFallback)
        {
          return 1;
        }
      }

      if (TagFallback >> 3 == 2)
      {
        break;
      }

      if (TagFallback >> 3 != 1 || (TagFallback & 7) != 0)
      {
        goto LABEL_13;
      }

      v15 = 0;
      v7 = *(a2 + 1);
      if (v7 >= *(a2 + 2) || (v8 = *v7, (v8 & 0x80000000) != 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v15);
        if (!result)
        {
          return result;
        }

        v8 = v15;
      }

      else
      {
        *(a2 + 1) = v7 + 1;
      }

      if (v8 <= 6)
      {
        *(this + 5) |= 1u;
        *(this + 2) = v8;
      }

      v11 = *(a2 + 1);
      v9 = *(a2 + 2);
      if (v11 < v9 && *v11 == 16)
      {
        v10 = v11 + 1;
        *(a2 + 1) = v10;
LABEL_24:
        if (v10 >= v9 || (v12 = *v10, v12 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 3);
          if (!result)
          {
            return result;
          }

          v13 = *(a2 + 1);
          v9 = *(a2 + 2);
        }

        else
        {
          *(this + 3) = v12;
          v13 = v10 + 1;
          *(a2 + 1) = v13;
        }

        *(this + 5) |= 2u;
        if (v13 == v9 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
        {
          *(a2 + 8) = 0;
          result = 1;
          *(a2 + 36) = 1;
          return result;
        }
      }
    }

    if ((TagFallback & 7) == 0)
    {
      v10 = *(a2 + 1);
      v9 = *(a2 + 2);
      goto LABEL_24;
    }

LABEL_13:
    if ((TagFallback & 7) == 4)
    {
      return 1;
    }

    if ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(a2, TagFallback) & 1) == 0)
    {
      return 0;
    }
  }
}

uint64_t awd::metrics::LocationAccessory_NavDynamicsHistogram::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 20);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(1, *(this + 8), a2, a4);
    v6 = *(v5 + 20);
  }

  if ((v6 & 2) != 0)
  {
    v7 = *(v5 + 12);

    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(2, v7, a2, a4);
  }

  return this;
}

uint64_t awd::metrics::LocationAccessory_NavDynamicsHistogram::ByteSize(awd::metrics::LocationAccessory_NavDynamicsHistogram *this, unsigned int a2)
{
  v3 = *(this + 20);
  if (v3)
  {
    if (*(this + 20))
    {
      v5 = *(this + 2);
      if ((v5 & 0x80000000) != 0)
      {
        v4 = 11;
        if ((v3 & 2) == 0)
        {
          goto LABEL_17;
        }
      }

      else if (v5 >= 0x80)
      {
        v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5) + 1;
        if ((*(this + 5) & 2) == 0)
        {
          goto LABEL_17;
        }
      }

      else
      {
        v4 = 2;
        if ((v3 & 2) == 0)
        {
          goto LABEL_17;
        }
      }
    }

    else
    {
      v4 = 0;
      if ((*(this + 20) & 2) == 0)
      {
        goto LABEL_17;
      }
    }

    v6 = *(this + 3);
    if (v6 >= 0x80)
    {
      v7 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v6) + 1;
    }

    else
    {
      v7 = 2;
    }

    v4 = (v7 + v4);
  }

  else
  {
    v4 = 0;
  }

LABEL_17:
  *(this + 4) = v4;
  return v4;
}

void awd::metrics::LocationAccessory_NavDynamicsHistogram::CheckTypeAndMergeFrom(awd::metrics::LocationAccessory_NavDynamicsHistogram *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  {
    awd::metrics::LocationAccessory_NavDynamicsHistogram::CheckTypeAndMergeFrom();
  }

  awd::metrics::LocationAccessory_NavDynamicsHistogram::MergeFrom(this, lpsrc);
}

void awd::metrics::LocationAccessory_NavDynamicsHistogram::CopyFrom(awd::metrics::LocationAccessory_NavDynamicsHistogram *this, const awd::metrics::LocationAccessory_NavDynamicsHistogram *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    awd::metrics::LocationAccessory_NavDynamicsHistogram::MergeFrom(this, a2);
  }
}

awd::metrics::LocationAccessory_NavDynamicsHistogram *awd::metrics::LocationAccessory_NavDynamicsHistogram::Swap(awd::metrics::LocationAccessory_NavDynamicsHistogram *this, awd::metrics::LocationAccessory_NavDynamicsHistogram *a2)
{
  if (a2 != this)
  {
    v2 = *(this + 2);
    *(this + 2) = *(a2 + 2);
    *(a2 + 2) = v2;
    v3 = *(this + 3);
    *(this + 3) = *(a2 + 3);
    *(a2 + 3) = v3;
    v4 = *(this + 5);
    *(this + 5) = *(a2 + 5);
    *(a2 + 5) = v4;
    v5 = *(this + 4);
    *(this + 4) = *(a2 + 4);
    *(a2 + 4) = v5;
  }

  return this;
}

uint64_t awd::metrics::LocationAccessory_PASCDRavenUsageStats::SharedCtor(uint64_t this)
{
  *(this + 56) = 0;
  *(this + 64) = 0;
  *(this + 80) = 0;
  *(this + 72) = 0;
  return this;
}

awd::metrics::LocationAccessory_PASCDRavenUsageStats *awd::metrics::LocationAccessory_PASCDRavenUsageStats::LocationAccessory_PASCDRavenUsageStats(awd::metrics::LocationAccessory_PASCDRavenUsageStats *this, const awd::metrics::LocationAccessory_PASCDRavenUsageStats *a2)
{
  *(this + 1) = 0;
  *this = &unk_2A1D51168;
  *(this + 2) = 0;
  *(this + 6) = 0;
  *(this + 4) = 0;
  *(this + 5) = 0;
  *(this + 12) = 0;
  *(this + 8) = 0;
  *(this + 9) = 0;
  *(this + 7) = 0;
  *(this + 20) = 0;
  awd::metrics::LocationAccessory_PASCDRavenUsageStats::MergeFrom(this, a2);
  return this;
}

void sub_296468BDC(_Unwind_Exception *a1)
{
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationAccessory_PerfRangeHistogram>::TypeHandler>(v3);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationAccessory_PerfRangeHistogram>::TypeHandler>(v2);
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(v1);
  _Unwind_Resume(a1);
}

void awd::metrics::LocationAccessory_PASCDRavenUsageStats::MergeFrom(awd::metrics::LocationAccessory_PASCDRavenUsageStats *this, const awd::metrics::LocationAccessory_PASCDRavenUsageStats *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v10);
  }

  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::MergeFrom<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationAccessory_PerfRangeHistogram>::TypeHandler>((this + 8), a2 + 8);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::MergeFrom<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationAccessory_PerfRangeHistogram>::TypeHandler>((this + 32), a2 + 32);
  v4 = *(a2 + 20);
  if ((v4 & 0x3FC) != 0)
  {
    if ((v4 & 4) != 0)
    {
      v6 = *(a2 + 14);
      *(this + 20) |= 4u;
      *(this + 14) = v6;
      v4 = *(a2 + 20);
      if ((v4 & 8) == 0)
      {
LABEL_6:
        if ((v4 & 0x10) == 0)
        {
          goto LABEL_7;
        }

        goto LABEL_13;
      }
    }

    else if ((v4 & 8) == 0)
    {
      goto LABEL_6;
    }

    v7 = *(a2 + 15);
    *(this + 20) |= 8u;
    *(this + 15) = v7;
    v4 = *(a2 + 20);
    if ((v4 & 0x10) == 0)
    {
LABEL_7:
      if ((v4 & 0x20) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_14;
    }

LABEL_13:
    v8 = *(a2 + 16);
    *(this + 20) |= 0x10u;
    *(this + 16) = v8;
    v4 = *(a2 + 20);
    if ((v4 & 0x20) == 0)
    {
LABEL_8:
      if ((v4 & 0x40) == 0)
      {
        return;
      }

      goto LABEL_9;
    }

LABEL_14:
    v9 = *(a2 + 17);
    *(this + 20) |= 0x20u;
    *(this + 17) = v9;
    if ((*(a2 + 20) & 0x40) == 0)
    {
      return;
    }

LABEL_9:
    v5 = *(a2 + 18);
    *(this + 20) |= 0x40u;
    *(this + 18) = v5;
  }
}

void sub_296468D38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::metrics::LocationAccessory_PASCDRavenUsageStats::~LocationAccessory_PASCDRavenUsageStats(awd::metrics::LocationAccessory_PASCDRavenUsageStats *this)
{
  *this = &unk_2A1D51168;
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationAccessory_PerfRangeHistogram>::TypeHandler>(this + 4);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationAccessory_PerfRangeHistogram>::TypeHandler>(this + 1);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  awd::metrics::LocationAccessory_PASCDRavenUsageStats::~LocationAccessory_PASCDRavenUsageStats(this);

  JUMPOUT(0x29C25A730);
}

uint64_t awd::metrics::LocationAccessory_PASCDRavenUsageStats::default_instance(awd::metrics::LocationAccessory_PASCDRavenUsageStats *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = awd::metrics::LocationAccessory_PASCDRavenUsageStats::default_instance_;
  if (!awd::metrics::LocationAccessory_PASCDRavenUsageStats::default_instance_)
  {
    awd::metrics::protobuf_AddDesc_Location_2eproto(0, a2, a3, a4);
    return awd::metrics::LocationAccessory_PASCDRavenUsageStats::default_instance_;
  }

  return result;
}

uint64_t awd::metrics::LocationAccessory_PASCDRavenUsageStats::Clear(awd::metrics::LocationAccessory_PASCDRavenUsageStats *this)
{
  if ((*(this + 40) & 0x3FC) != 0)
  {
    *(this + 7) = 0;
    *(this + 8) = 0;
    *(this + 18) = 0;
  }

  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Clear<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationAccessory_PerfRangeHistogram>::TypeHandler>(this + 8);
  result = wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Clear<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationAccessory_PerfRangeHistogram>::TypeHandler>(this + 32);
  *(this + 20) = 0;
  return result;
}

uint64_t awd::metrics::LocationAccessory_PASCDRavenUsageStats::MergePartialFromCodedStream(awd::metrics::LocationAccessory_PASCDRavenUsageStats *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
{
  while (1)
  {
    while (1)
    {
      while (1)
      {
LABEL_1:
        v5 = *(a2 + 1);
        if (v5 >= *(a2 + 2) || (TagFallback = *v5, (TagFallback & 0x80000000) != 0))
        {
          TagFallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadTagFallback(a2);
          *(a2 + 8) = TagFallback;
          if (!TagFallback)
          {
            return 1;
          }
        }

        else
        {
          *(a2 + 8) = TagFallback;
          *(a2 + 1) = v5 + 1;
          if (!TagFallback)
          {
            return 1;
          }
        }

        v7 = TagFallback >> 3;
        v8 = TagFallback & 7;
        if (TagFallback >> 3 > 3)
        {
          break;
        }

        if (v7 == 1)
        {
          if (v8 != 2)
          {
            goto LABEL_47;
          }

          while (1)
          {
            v13 = *(this + 5);
            v14 = *(this + 4);
            if (v14 >= v13)
            {
              if (v13 == *(this + 6))
              {
                wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 8));
                v13 = *(this + 5);
              }

              *(this + 5) = v13 + 1;
              operator new();
            }

            v15 = *(this + 1);
            *(this + 4) = v14 + 1;
            v16 = *(v15 + 8 * v14);
            v50 = 0;
            v17 = *(a2 + 1);
            if (v17 >= *(a2 + 2) || *v17 < 0)
            {
              if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v50))
              {
                return 0;
              }
            }

            else
            {
              v50 = *v17;
              *(a2 + 1) = v17 + 1;
            }

            v18 = *(a2 + 14);
            v19 = *(a2 + 15);
            *(a2 + 14) = v18 + 1;
            if (v18 >= v19)
            {
              return 0;
            }

            wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
            if (!awd::metrics::LocationAccessory_PerfRangeHistogram::MergePartialFromCodedStream(v16, a2, v20) || *(a2 + 36) != 1)
            {
              return 0;
            }

            wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
            v21 = *(a2 + 14);
            v22 = __OFSUB__(v21, 1);
            v23 = v21 - 1;
            if (v23 < 0 == v22)
            {
              *(a2 + 14) = v23;
            }

            v24 = *(a2 + 1);
            if (v24 >= *(a2 + 2))
            {
              break;
            }

            v25 = *v24;
            if (v25 != 10)
            {
              if (v25 != 18)
              {
                goto LABEL_1;
              }

              goto LABEL_50;
            }

            *(a2 + 1) = v24 + 1;
          }
        }

        else if (v7 == 2)
        {
          if (v8 != 2)
          {
            goto LABEL_47;
          }

          while (1)
          {
            v28 = *(this + 11);
            v29 = *(this + 10);
            if (v29 >= v28)
            {
              if (v28 == *(this + 12))
              {
                wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 32));
                v28 = *(this + 11);
              }

              *(this + 11) = v28 + 1;
              operator new();
            }

            v30 = *(this + 4);
            *(this + 10) = v29 + 1;
            v31 = *(v30 + 8 * v29);
            v51 = 0;
            v32 = *(a2 + 1);
            if (v32 >= *(a2 + 2) || *v32 < 0)
            {
              if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v51))
              {
                return 0;
              }
            }

            else
            {
              v51 = *v32;
              *(a2 + 1) = v32 + 1;
            }

            v33 = *(a2 + 14);
            v34 = *(a2 + 15);
            *(a2 + 14) = v33 + 1;
            if (v33 >= v34)
            {
              return 0;
            }

            wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
            if (!awd::metrics::LocationAccessory_PerfRangeHistogram::MergePartialFromCodedStream(v31, a2, v35) || *(a2 + 36) != 1)
            {
              return 0;
            }

            wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
            v36 = *(a2 + 14);
            v22 = __OFSUB__(v36, 1);
            v37 = v36 - 1;
            if (v37 < 0 == v22)
            {
              *(a2 + 14) = v37;
            }

            v24 = *(a2 + 1);
            v9 = *(a2 + 2);
            if (v24 >= v9)
            {
              break;
            }

            v38 = *v24;
            if (v38 != 18)
            {
              if (v38 != 24)
              {
                goto LABEL_1;
              }

              v11 = (v24 + 1);
              *(a2 + 1) = v11;
              goto LABEL_69;
            }

LABEL_50:
            *(a2 + 1) = v24 + 1;
          }
        }

        else
        {
          if (v7 != 3 || (TagFallback & 7) != 0)
          {
            goto LABEL_47;
          }

          v11 = *(a2 + 1);
          v9 = *(a2 + 2);
LABEL_69:
          if (v11 >= v9 || (v39 = *v11, v39 < 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 14);
            if (!result)
            {
              return result;
            }

            v40 = *(a2 + 1);
            v9 = *(a2 + 2);
          }

          else
          {
            *(this + 14) = v39;
            v40 = v11 + 1;
            *(a2 + 1) = v40;
          }

          *(this + 20) |= 4u;
          if (v40 < v9 && *v40 == 32)
          {
            v26 = v40 + 1;
            *(a2 + 1) = v26;
            goto LABEL_77;
          }
        }
      }

      if (TagFallback >> 3 > 5)
      {
        if (v7 == 6)
        {
          if ((TagFallback & 7) == 0)
          {
            v27 = *(a2 + 1);
            v9 = *(a2 + 2);
            goto LABEL_93;
          }
        }

        else if (v7 == 7 && (TagFallback & 7) == 0)
        {
          v12 = *(a2 + 1);
          v9 = *(a2 + 2);
          goto LABEL_101;
        }

        goto LABEL_47;
      }

      if (v7 != 4)
      {
        break;
      }

      if ((TagFallback & 7) != 0)
      {
        goto LABEL_47;
      }

      v26 = *(a2 + 1);
      v9 = *(a2 + 2);
LABEL_77:
      if (v26 >= v9 || (v42 = *v26, v42 < 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 15);
        if (!result)
        {
          return result;
        }

        v43 = *(a2 + 1);
        v9 = *(a2 + 2);
      }

      else
      {
        *(this + 15) = v42;
        v43 = v26 + 1;
        *(a2 + 1) = v43;
      }

      *(this + 20) |= 8u;
      if (v43 < v9 && *v43 == 40)
      {
        v10 = v43 + 1;
        *(a2 + 1) = v10;
LABEL_85:
        if (v10 >= v9 || (v44 = *v10, v44 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 16);
          if (!result)
          {
            return result;
          }

          v45 = *(a2 + 1);
          v9 = *(a2 + 2);
        }

        else
        {
          *(this + 16) = v44;
          v45 = v10 + 1;
          *(a2 + 1) = v45;
        }

        *(this + 20) |= 0x10u;
        if (v45 < v9 && *v45 == 48)
        {
          v27 = v45 + 1;
          *(a2 + 1) = v27;
LABEL_93:
          if (v27 >= v9 || (v46 = *v27, v46 < 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 17);
            if (!result)
            {
              return result;
            }

            v47 = *(a2 + 1);
            v9 = *(a2 + 2);
          }

          else
          {
            *(this + 17) = v46;
            v47 = v27 + 1;
            *(a2 + 1) = v47;
          }

          *(this + 20) |= 0x20u;
          if (v47 < v9 && *v47 == 56)
          {
            v12 = v47 + 1;
            *(a2 + 1) = v12;
LABEL_101:
            if (v12 >= v9 || (v48 = *v12, v48 < 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 18);
              if (!result)
              {
                return result;
              }

              v49 = *(a2 + 1);
              v9 = *(a2 + 2);
            }

            else
            {
              *(this + 18) = v48;
              v49 = v12 + 1;
              *(a2 + 1) = v49;
            }

            *(this + 20) |= 0x40u;
            if (v49 == v9 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
            {
              *(a2 + 8) = 0;
              result = 1;
              *(a2 + 36) = 1;
              return result;
            }
          }
        }
      }
    }

    if (v7 == 5 && (TagFallback & 7) == 0)
    {
      v10 = *(a2 + 1);
      v9 = *(a2 + 2);
      goto LABEL_85;
    }

LABEL_47:
    if (v8 == 4)
    {
      return 1;
    }

    if ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(a2, TagFallback) & 1) == 0)
    {
      return 0;
    }
  }
}

uint64_t awd::metrics::LocationAccessory_PASCDRavenUsageStats::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  if (*(this + 16) >= 1)
  {
    v6 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(1, *(*(v5 + 8) + 8 * v6++), a2, a4);
    }

    while (v6 < *(v5 + 16));
  }

  if (*(v5 + 40) >= 1)
  {
    v7 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(2, *(*(v5 + 32) + 8 * v7++), a2, a4);
    }

    while (v7 < *(v5 + 40));
  }

  v8 = *(v5 + 80);
  if ((v8 & 4) != 0)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(3, *(v5 + 56), a2, a4);
    v8 = *(v5 + 80);
    if ((v8 & 8) == 0)
    {
LABEL_9:
      if ((v8 & 0x10) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_15;
    }
  }

  else if ((v8 & 8) == 0)
  {
    goto LABEL_9;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(4, *(v5 + 60), a2, a4);
  v8 = *(v5 + 80);
  if ((v8 & 0x10) == 0)
  {
LABEL_10:
    if ((v8 & 0x20) == 0)
    {
      goto LABEL_11;
    }

LABEL_16:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(6, *(v5 + 68), a2, a4);
    if ((*(v5 + 80) & 0x40) == 0)
    {
      return this;
    }

    goto LABEL_17;
  }

LABEL_15:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(5, *(v5 + 64), a2, a4);
  v8 = *(v5 + 80);
  if ((v8 & 0x20) != 0)
  {
    goto LABEL_16;
  }

LABEL_11:
  if ((v8 & 0x40) == 0)
  {
    return this;
  }

LABEL_17:
  v9 = *(v5 + 72);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(7, v9, a2, a4);
}

uint64_t awd::metrics::LocationAccessory_PASCDRavenUsageStats::ByteSize(awd::metrics::LocationAccessory_PASCDRavenUsageStats *this, unsigned int a2)
{
  v3 = *(this + 20);
  if ((v3 & 0x3FC) == 0)
  {
    v4 = 0;
    goto LABEL_30;
  }

  if ((v3 & 4) != 0)
  {
    v5 = *(this + 14);
    if (v5 >= 0x80)
    {
      v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5) + 1;
      v3 = *(this + 20);
      if ((v3 & 8) == 0)
      {
        goto LABEL_14;
      }
    }

    else
    {
      v4 = 2;
      if ((v3 & 8) == 0)
      {
        goto LABEL_14;
      }
    }
  }

  else
  {
    v4 = 0;
    if ((v3 & 8) == 0)
    {
      goto LABEL_14;
    }
  }

  v6 = *(this + 15);
  if (v6 >= 0x80)
  {
    v7 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v6) + 1;
    v3 = *(this + 20);
  }

  else
  {
    v7 = 2;
  }

  v4 += v7;
LABEL_14:
  if ((v3 & 0x10) != 0)
  {
    v8 = *(this + 16);
    if (v8 >= 0x80)
    {
      v9 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v8) + 1;
      v3 = *(this + 20);
    }

    else
    {
      v9 = 2;
    }

    v4 += v9;
    if ((v3 & 0x20) == 0)
    {
LABEL_16:
      if ((v3 & 0x40) == 0)
      {
        goto LABEL_30;
      }

      goto LABEL_26;
    }
  }

  else if ((v3 & 0x20) == 0)
  {
    goto LABEL_16;
  }

  v10 = *(this + 17);
  if (v10 >= 0x80)
  {
    v11 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v10) + 1;
    v3 = *(this + 20);
  }

  else
  {
    v11 = 2;
  }

  v4 += v11;
  if ((v3 & 0x40) != 0)
  {
LABEL_26:
    v12 = *(this + 18);
    if (v12 >= 0x80)
    {
      v13 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v12) + 1;
    }

    else
    {
      v13 = 2;
    }

    v4 += v13;
  }

LABEL_30:
  v14 = *(this + 4);
  v15 = v14 + v4;
  if (v14 >= 1)
  {
    v16 = 0;
    do
    {
      v17 = awd::metrics::LocationAccessory_PerfRangeHistogram::ByteSize(*(*(this + 1) + 8 * v16), a2);
      v18 = v17;
      if (v17 >= 0x80)
      {
        v19 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v17);
      }

      else
      {
        v19 = 1;
      }

      v15 += v18 + v19;
      ++v16;
    }

    while (v16 < *(this + 4));
  }

  v20 = *(this + 10);
  v21 = (v20 + v15);
  if (v20 >= 1)
  {
    v22 = 0;
    do
    {
      v23 = awd::metrics::LocationAccessory_PerfRangeHistogram::ByteSize(*(*(this + 4) + 8 * v22), a2);
      v24 = v23;
      if (v23 >= 0x80)
      {
        v25 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v23);
      }

      else
      {
        v25 = 1;
      }

      v21 = (v24 + v21 + v25);
      ++v22;
    }

    while (v22 < *(this + 10));
  }

  *(this + 19) = v21;
  return v21;
}

void awd::metrics::LocationAccessory_PASCDRavenUsageStats::CheckTypeAndMergeFrom(awd::metrics::LocationAccessory_PASCDRavenUsageStats *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  {
    awd::metrics::LocationAccessory_PASCDRavenUsageStats::CheckTypeAndMergeFrom();
  }

  awd::metrics::LocationAccessory_PASCDRavenUsageStats::MergeFrom(this, lpsrc);
}

void awd::metrics::LocationAccessory_PASCDRavenUsageStats::CopyFrom(const awd::metrics::LocationAccessory_PASCDRavenUsageStats *this, const awd::metrics::LocationAccessory_PASCDRavenUsageStats *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    awd::metrics::LocationAccessory_PASCDRavenUsageStats::MergeFrom(this, a2);
  }
}

awd::metrics::LocationAccessory_PASCDRavenUsageStats *awd::metrics::LocationAccessory_PASCDRavenUsageStats::Swap(awd::metrics::LocationAccessory_PASCDRavenUsageStats *this, awd::metrics::LocationAccessory_PASCDRavenUsageStats *a2)
{
  if (a2 != this)
  {
    v3 = this;
    wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Swap();
    this = wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Swap();
    v4 = *(v3 + 14);
    *(v3 + 14) = *(a2 + 14);
    *(a2 + 14) = v4;
    v5 = *(v3 + 15);
    *(v3 + 15) = *(a2 + 15);
    *(a2 + 15) = v5;
    v6 = *(v3 + 16);
    *(v3 + 16) = *(a2 + 16);
    *(a2 + 16) = v6;
    v7 = *(v3 + 17);
    *(v3 + 17) = *(a2 + 17);
    *(a2 + 17) = v7;
    v8 = *(v3 + 18);
    *(v3 + 18) = *(a2 + 18);
    *(a2 + 18) = v8;
    v9 = *(v3 + 20);
    *(v3 + 20) = *(a2 + 20);
    *(a2 + 20) = v9;
    v10 = *(v3 + 19);
    *(v3 + 19) = *(a2 + 19);
    *(a2 + 19) = v10;
  }

  return this;
}

uint64_t awd::metrics::LocationAccessory_PASCDTransmissionHistogram::SharedCtor(uint64_t this)
{
  *(this + 8) = 0;
  *(this + 16) = 0;
  return this;
}

awd::metrics::LocationAccessory_PASCDTransmissionHistogram *awd::metrics::LocationAccessory_PASCDTransmissionHistogram::LocationAccessory_PASCDTransmissionHistogram(awd::metrics::LocationAccessory_PASCDTransmissionHistogram *this, const awd::metrics::LocationAccessory_PASCDTransmissionHistogram *a2)
{
  *(this + 1) = 0;
  *(this + 2) = 0;
  *this = &unk_2A1D511E0;
  awd::metrics::LocationAccessory_PASCDTransmissionHistogram::MergeFrom(this, a2);
  return this;
}

void awd::metrics::LocationAccessory_PASCDTransmissionHistogram::MergeFrom(awd::metrics::LocationAccessory_PASCDTransmissionHistogram *this, const awd::metrics::LocationAccessory_PASCDTransmissionHistogram *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v7);
  }

  LOBYTE(v4) = *(a2 + 20);
  if (v4)
  {
    if (*(a2 + 20))
    {
      v5 = *(a2 + 2);
      if (v5 >= 5)
      {
        awd::metrics::LocationAccessory_PASCDTransmissionHistogram::MergeFrom();
      }

      *(this + 5) |= 1u;
      *(this + 2) = v5;
      v4 = *(a2 + 5);
    }

    if ((v4 & 2) != 0)
    {
      v6 = *(a2 + 3);
      *(this + 5) |= 2u;
      *(this + 3) = v6;
    }
  }
}

void sub_296469AA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::metrics::LocationAccessory_PASCDTransmissionHistogram::~LocationAccessory_PASCDTransmissionHistogram(awd::metrics::LocationAccessory_PASCDTransmissionHistogram *this)
{
  *this = &unk_2A1D511E0;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2A1D511E0;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2A1D511E0;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  JUMPOUT(0x29C25A730);
}

uint64_t awd::metrics::LocationAccessory_PASCDTransmissionHistogram::default_instance(awd::metrics::LocationAccessory_PASCDTransmissionHistogram *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = awd::metrics::LocationAccessory_PASCDTransmissionHistogram::default_instance_;
  if (!awd::metrics::LocationAccessory_PASCDTransmissionHistogram::default_instance_)
  {
    awd::metrics::protobuf_AddDesc_Location_2eproto(0, a2, a3, a4);
    return awd::metrics::LocationAccessory_PASCDTransmissionHistogram::default_instance_;
  }

  return result;
}

uint64_t awd::metrics::LocationAccessory_PASCDTransmissionHistogram::Clear(uint64_t this)
{
  if (*(this + 20))
  {
    *(this + 8) = 0;
  }

  *(this + 20) = 0;
  return this;
}

uint64_t awd::metrics::LocationAccessory_PASCDTransmissionHistogram::MergePartialFromCodedStream(awd::metrics::LocationAccessory_PASCDTransmissionHistogram *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
{
  while (1)
  {
    while (1)
    {
      v5 = *(a2 + 1);
      if (v5 >= *(a2 + 2) || (TagFallback = *v5, (TagFallback & 0x80000000) != 0))
      {
        TagFallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadTagFallback(a2);
        *(a2 + 8) = TagFallback;
        if (!TagFallback)
        {
          return 1;
        }
      }

      else
      {
        *(a2 + 8) = TagFallback;
        *(a2 + 1) = v5 + 1;
        if (!TagFallback)
        {
          return 1;
        }
      }

      if (TagFallback >> 3 == 2)
      {
        break;
      }

      if (TagFallback >> 3 != 1 || (TagFallback & 7) != 0)
      {
        goto LABEL_13;
      }

      v15 = 0;
      v7 = *(a2 + 1);
      if (v7 >= *(a2 + 2) || (v8 = *v7, (v8 & 0x80000000) != 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v15);
        if (!result)
        {
          return result;
        }

        v8 = v15;
      }

      else
      {
        *(a2 + 1) = v7 + 1;
      }

      if (v8 <= 4)
      {
        *(this + 5) |= 1u;
        *(this + 2) = v8;
      }

      v11 = *(a2 + 1);
      v9 = *(a2 + 2);
      if (v11 < v9 && *v11 == 16)
      {
        v10 = v11 + 1;
        *(a2 + 1) = v10;
LABEL_24:
        if (v10 >= v9 || (v12 = *v10, v12 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 3);
          if (!result)
          {
            return result;
          }

          v13 = *(a2 + 1);
          v9 = *(a2 + 2);
        }

        else
        {
          *(this + 3) = v12;
          v13 = v10 + 1;
          *(a2 + 1) = v13;
        }

        *(this + 5) |= 2u;
        if (v13 == v9 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
        {
          *(a2 + 8) = 0;
          result = 1;
          *(a2 + 36) = 1;
          return result;
        }
      }
    }

    if ((TagFallback & 7) == 0)
    {
      v10 = *(a2 + 1);
      v9 = *(a2 + 2);
      goto LABEL_24;
    }

LABEL_13:
    if ((TagFallback & 7) == 4)
    {
      return 1;
    }

    if ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(a2, TagFallback) & 1) == 0)
    {
      return 0;
    }
  }
}

uint64_t awd::metrics::LocationAccessory_PASCDTransmissionHistogram::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 20);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(1, *(this + 8), a2, a4);
    v6 = *(v5 + 20);
  }

  if ((v6 & 2) != 0)
  {
    v7 = *(v5 + 12);

    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(2, v7, a2, a4);
  }

  return this;
}

uint64_t awd::metrics::LocationAccessory_PASCDTransmissionHistogram::ByteSize(awd::metrics::LocationAccessory_PASCDTransmissionHistogram *this, unsigned int a2)
{
  v3 = *(this + 20);
  if (v3)
  {
    if (*(this + 20))
    {
      v5 = *(this + 2);
      if ((v5 & 0x80000000) != 0)
      {
        v4 = 11;
        if ((v3 & 2) == 0)
        {
          goto LABEL_17;
        }
      }

      else if (v5 >= 0x80)
      {
        v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5) + 1;
        if ((*(this + 5) & 2) == 0)
        {
          goto LABEL_17;
        }
      }

      else
      {
        v4 = 2;
        if ((v3 & 2) == 0)
        {
          goto LABEL_17;
        }
      }
    }

    else
    {
      v4 = 0;
      if ((*(this + 20) & 2) == 0)
      {
        goto LABEL_17;
      }
    }

    v6 = *(this + 3);
    if (v6 >= 0x80)
    {
      v7 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v6) + 1;
    }

    else
    {
      v7 = 2;
    }

    v4 = (v7 + v4);
  }

  else
  {
    v4 = 0;
  }

LABEL_17:
  *(this + 4) = v4;
  return v4;
}

void awd::metrics::LocationAccessory_PASCDTransmissionHistogram::CheckTypeAndMergeFrom(awd::metrics::LocationAccessory_PASCDTransmissionHistogram *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  {
    awd::metrics::LocationAccessory_PASCDTransmissionHistogram::CheckTypeAndMergeFrom();
  }

  awd::metrics::LocationAccessory_PASCDTransmissionHistogram::MergeFrom(this, lpsrc);
}

void awd::metrics::LocationAccessory_PASCDTransmissionHistogram::CopyFrom(awd::metrics::LocationAccessory_PASCDTransmissionHistogram *this, const awd::metrics::LocationAccessory_PASCDTransmissionHistogram *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    awd::metrics::LocationAccessory_PASCDTransmissionHistogram::MergeFrom(this, a2);
  }
}

awd::metrics::LocationAccessory_PASCDTransmissionHistogram *awd::metrics::LocationAccessory_PASCDTransmissionHistogram::Swap(awd::metrics::LocationAccessory_PASCDTransmissionHistogram *this, awd::metrics::LocationAccessory_PASCDTransmissionHistogram *a2)
{
  if (a2 != this)
  {
    v2 = *(this + 2);
    *(this + 2) = *(a2 + 2);
    *(a2 + 2) = v2;
    v3 = *(this + 3);
    *(this + 3) = *(a2 + 3);
    *(a2 + 3) = v3;
    v4 = *(this + 5);
    *(this + 5) = *(a2 + 5);
    *(a2 + 5) = v4;
    v5 = *(this + 4);
    *(this + 4) = *(a2 + 4);
    *(a2 + 4) = v5;
  }

  return this;
}

uint64_t awd::metrics::LocationAccessory_PASCDSampleSizeHistogram::SharedCtor(uint64_t this)
{
  *(this + 8) = 0;
  *(this + 16) = 0;
  return this;
}

awd::metrics::LocationAccessory_PASCDSampleSizeHistogram *awd::metrics::LocationAccessory_PASCDSampleSizeHistogram::LocationAccessory_PASCDSampleSizeHistogram(awd::metrics::LocationAccessory_PASCDSampleSizeHistogram *this, const awd::metrics::LocationAccessory_PASCDSampleSizeHistogram *a2)
{
  *(this + 1) = 0;
  *(this + 2) = 0;
  *this = &unk_2A1D51258;
  awd::metrics::LocationAccessory_PASCDSampleSizeHistogram::MergeFrom(this, a2);
  return this;
}

void awd::metrics::LocationAccessory_PASCDSampleSizeHistogram::MergeFrom(awd::metrics::LocationAccessory_PASCDSampleSizeHistogram *this, const awd::metrics::LocationAccessory_PASCDSampleSizeHistogram *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v7);
  }

  LOBYTE(v4) = *(a2 + 20);
  if (v4)
  {
    if (*(a2 + 20))
    {
      v5 = *(a2 + 2);
      *(this + 5) |= 1u;
      *(this + 2) = v5;
      v4 = *(a2 + 5);
    }

    if ((v4 & 2) != 0)
    {
      v6 = *(a2 + 3);
      *(this + 5) |= 2u;
      *(this + 3) = v6;
    }
  }
}

void sub_29646A120(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::metrics::LocationAccessory_PASCDSampleSizeHistogram::~LocationAccessory_PASCDSampleSizeHistogram(awd::metrics::LocationAccessory_PASCDSampleSizeHistogram *this)
{
  *this = &unk_2A1D51258;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2A1D51258;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2A1D51258;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  JUMPOUT(0x29C25A730);
}

uint64_t awd::metrics::LocationAccessory_PASCDSampleSizeHistogram::default_instance(awd::metrics::LocationAccessory_PASCDSampleSizeHistogram *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = awd::metrics::LocationAccessory_PASCDSampleSizeHistogram::default_instance_;
  if (!awd::metrics::LocationAccessory_PASCDSampleSizeHistogram::default_instance_)
  {
    awd::metrics::protobuf_AddDesc_Location_2eproto(0, a2, a3, a4);
    return awd::metrics::LocationAccessory_PASCDSampleSizeHistogram::default_instance_;
  }

  return result;
}

uint64_t awd::metrics::LocationAccessory_PASCDSampleSizeHistogram::Clear(uint64_t this)
{
  if (*(this + 20))
  {
    *(this + 8) = 0;
  }

  *(this + 20) = 0;
  return this;
}

uint64_t awd::metrics::LocationAccessory_PASCDSampleSizeHistogram::MergePartialFromCodedStream(awd::metrics::LocationAccessory_PASCDSampleSizeHistogram *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
{
  while (1)
  {
    while (1)
    {
      v5 = *(a2 + 1);
      if (v5 >= *(a2 + 2) || (TagFallback = *v5, (TagFallback & 0x80000000) != 0))
      {
        TagFallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadTagFallback(a2);
        *(a2 + 8) = TagFallback;
        if (!TagFallback)
        {
          return 1;
        }
      }

      else
      {
        *(a2 + 8) = TagFallback;
        *(a2 + 1) = v5 + 1;
        if (!TagFallback)
        {
          return 1;
        }
      }

      if (TagFallback >> 3 == 2)
      {
        break;
      }

      if (TagFallback >> 3 != 1 || (TagFallback & 7) != 0)
      {
        goto LABEL_13;
      }

      v8 = *(a2 + 1);
      v7 = *(a2 + 2);
      if (v8 >= v7 || (v9 = *v8, v9 < 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 2);
        if (!result)
        {
          return result;
        }

        v10 = *(a2 + 1);
        v7 = *(a2 + 2);
      }

      else
      {
        *(this + 2) = v9;
        v10 = v8 + 1;
        *(a2 + 1) = v10;
      }

      *(this + 5) |= 1u;
      if (v10 < v7 && *v10 == 16)
      {
        v11 = v10 + 1;
        *(a2 + 1) = v11;
LABEL_22:
        if (v11 >= v7 || (v12 = *v11, v12 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 3);
          if (!result)
          {
            return result;
          }

          v13 = *(a2 + 1);
          v7 = *(a2 + 2);
        }

        else
        {
          *(this + 3) = v12;
          v13 = v11 + 1;
          *(a2 + 1) = v13;
        }

        *(this + 5) |= 2u;
        if (v13 == v7 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
        {
          *(a2 + 8) = 0;
          result = 1;
          *(a2 + 36) = 1;
          return result;
        }
      }
    }

    if ((TagFallback & 7) == 0)
    {
      v11 = *(a2 + 1);
      v7 = *(a2 + 2);
      goto LABEL_22;
    }

LABEL_13:
    if ((TagFallback & 7) == 4)
    {
      return 1;
    }

    if ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(a2, TagFallback) & 1) == 0)
    {
      return 0;
    }
  }
}

uint64_t awd::metrics::LocationAccessory_PASCDSampleSizeHistogram::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 20);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(1, *(this + 8), a2, a4);
    v6 = *(v5 + 20);
  }

  if ((v6 & 2) != 0)
  {
    v7 = *(v5 + 12);

    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(2, v7, a2, a4);
  }

  return this;
}

uint64_t awd::metrics::LocationAccessory_PASCDSampleSizeHistogram::ByteSize(awd::metrics::LocationAccessory_PASCDSampleSizeHistogram *this, unsigned int a2)
{
  v3 = *(this + 20);
  if (v3)
  {
    if (*(this + 20))
    {
      v5 = *(this + 2);
      if (v5 >= 0x80)
      {
        v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5) + 1;
        if ((*(this + 5) & 2) == 0)
        {
          goto LABEL_14;
        }
      }

      else
      {
        v4 = 2;
        if ((v3 & 2) == 0)
        {
          goto LABEL_14;
        }
      }
    }

    else
    {
      v4 = 0;
      if ((*(this + 20) & 2) == 0)
      {
        goto LABEL_14;
      }
    }

    v6 = *(this + 3);
    if (v6 >= 0x80)
    {
      v7 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v6) + 1;
    }

    else
    {
      v7 = 2;
    }

    v4 = (v7 + v4);
  }

  else
  {
    v4 = 0;
  }

LABEL_14:
  *(this + 4) = v4;
  return v4;
}

void awd::metrics::LocationAccessory_PASCDSampleSizeHistogram::CheckTypeAndMergeFrom(awd::metrics::LocationAccessory_PASCDSampleSizeHistogram *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  {
    awd::metrics::LocationAccessory_PASCDSampleSizeHistogram::CheckTypeAndMergeFrom();
  }

  awd::metrics::LocationAccessory_PASCDSampleSizeHistogram::MergeFrom(this, lpsrc);
}

void awd::metrics::LocationAccessory_PASCDSampleSizeHistogram::CopyFrom(awd::metrics::LocationAccessory_PASCDSampleSizeHistogram *this, const awd::metrics::LocationAccessory_PASCDSampleSizeHistogram *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    awd::metrics::LocationAccessory_PASCDSampleSizeHistogram::MergeFrom(this, a2);
  }
}

awd::metrics::LocationAccessory_PASCDSampleSizeHistogram *awd::metrics::LocationAccessory_PASCDSampleSizeHistogram::Swap(awd::metrics::LocationAccessory_PASCDSampleSizeHistogram *this, awd::metrics::LocationAccessory_PASCDSampleSizeHistogram *a2)
{
  if (a2 != this)
  {
    v2 = *(this + 2);
    *(this + 2) = *(a2 + 2);
    *(a2 + 2) = v2;
    v3 = *(this + 3);
    *(this + 3) = *(a2 + 3);
    *(a2 + 3) = v3;
    v4 = *(this + 5);
    *(this + 5) = *(a2 + 5);
    *(a2 + 5) = v4;
    v5 = *(this + 4);
    *(this + 4) = *(a2 + 4);
    *(a2 + 4) = v5;
  }

  return this;
}

uint64_t awd::metrics::LocationAccessory_PASCDStats::SharedCtor(uint64_t this)
{
  *(this + 56) = 0;
  *(this + 64) = 0;
  *(this + 72) = 0;
  return this;
}

awd::metrics::LocationAccessory_PASCDStats *awd::metrics::LocationAccessory_PASCDStats::LocationAccessory_PASCDStats(awd::metrics::LocationAccessory_PASCDStats *this, const awd::metrics::LocationAccessory_PASCDStats *a2)
{
  *this = &unk_2A1D512D0;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 4) = 0;
  *(this + 6) = 0;
  *(this + 5) = 0;
  *(this + 12) = 0;
  *(this + 7) = 0;
  *(this + 8) = 0;
  *(this + 18) = 0;
  awd::metrics::LocationAccessory_PASCDStats::MergeFrom(this, a2);
  return this;
}

void sub_29646A6F4(_Unwind_Exception *a1)
{
  v4 = v3;
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationAccessory_PASCDSampleSizeHistogram>::TypeHandler>(v4);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationAccessory_PASCDTransmissionHistogram>::TypeHandler>(v2);
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(v1);
  _Unwind_Resume(a1);
}

void awd::metrics::LocationAccessory_PASCDStats::MergeFrom(awd::metrics::LocationAccessory_PASCDStats *this, const awd::metrics::LocationAccessory_PASCDStats *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v8);
  }

  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::MergeFrom<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationAccessory_PASCDTransmissionHistogram>::TypeHandler>((this + 8), a2 + 8);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::MergeFrom<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationAccessory_PASCDSampleSizeHistogram>::TypeHandler>((this + 32), a2 + 32);
  v4 = *(a2 + 18);
  if ((v4 & 0x3FC) != 0)
  {
    if ((v4 & 4) != 0)
    {
      *(this + 18) |= 4u;
      v5 = *(this + 7);
      if (!v5)
      {
        operator new();
      }

      v6 = *(a2 + 7);
      if (!v6)
      {
        v6 = *(awd::metrics::LocationAccessory_PASCDStats::default_instance_ + 56);
      }

      awd::metrics::LocationAccessory_PASCDRavenUsageStats::MergeFrom(v5, v6);
      v4 = *(a2 + 18);
    }

    if ((v4 & 8) != 0)
    {
      v7 = *(a2 + 16);
      *(this + 18) |= 8u;
      *(this + 16) = v7;
    }
  }
}

void sub_29646A858(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::metrics::LocationAccessory_PASCDStats::~LocationAccessory_PASCDStats(awd::metrics::LocationAccessory_PASCDStats *this)
{
  *this = &unk_2A1D512D0;
  if (awd::metrics::LocationAccessory_PASCDStats::default_instance_ != this)
  {
    v2 = *(this + 7);
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }
  }

  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationAccessory_PASCDSampleSizeHistogram>::TypeHandler>(this + 4);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationAccessory_PASCDTransmissionHistogram>::TypeHandler>(this + 1);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  awd::metrics::LocationAccessory_PASCDStats::~LocationAccessory_PASCDStats(this);

  JUMPOUT(0x29C25A730);
}

void *awd::metrics::LocationAccessory_PASCDStats::SharedDtor(void *this)
{
  if (awd::metrics::LocationAccessory_PASCDStats::default_instance_ != this)
  {
    this = this[7];
    if (this)
    {
      return (*(*this + 8))();
    }
  }

  return this;
}

uint64_t awd::metrics::LocationAccessory_PASCDStats::default_instance(awd::metrics::LocationAccessory_PASCDStats *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = awd::metrics::LocationAccessory_PASCDStats::default_instance_;
  if (!awd::metrics::LocationAccessory_PASCDStats::default_instance_)
  {
    awd::metrics::protobuf_AddDesc_Location_2eproto(0, a2, a3, a4);
    return awd::metrics::LocationAccessory_PASCDStats::default_instance_;
  }

  return result;
}

uint64_t awd::metrics::LocationAccessory_PASCDStats::Clear(awd::metrics::LocationAccessory_PASCDStats *this)
{
  v2 = *(this + 18);
  if ((v2 & 0x3FC) != 0)
  {
    if ((v2 & 4) != 0)
    {
      v3 = *(this + 7);
      if (v3)
      {
        awd::metrics::LocationAccessory_PASCDRavenUsageStats::Clear(v3);
      }
    }

    *(this + 16) = 0;
  }

  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Clear<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationAccessory_PASCDTransmissionHistogram>::TypeHandler>(this + 8);
  result = wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Clear<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationAccessory_PASCDSampleSizeHistogram>::TypeHandler>(this + 32);
  *(this + 18) = 0;
  return result;
}

uint64_t awd::metrics::LocationAccessory_PASCDStats::MergePartialFromCodedStream(awd::metrics::LocationAccessory_PASCDStats *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
{
  while (1)
  {
    while (1)
    {
      while (1)
      {
LABEL_1:
        v5 = *(a2 + 1);
        if (v5 >= *(a2 + 2) || (TagFallback = *v5, (TagFallback & 0x80000000) != 0))
        {
          TagFallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadTagFallback(a2);
          *(a2 + 8) = TagFallback;
          if (!TagFallback)
          {
            return 1;
          }
        }

        else
        {
          *(a2 + 8) = TagFallback;
          *(a2 + 1) = v5 + 1;
          if (!TagFallback)
          {
            return 1;
          }
        }

        v7 = TagFallback >> 3;
        v8 = TagFallback & 7;
        if (TagFallback >> 3 > 2)
        {
          break;
        }

        if (v7 == 1)
        {
          if (v8 != 2)
          {
            goto LABEL_37;
          }

          while (1)
          {
            v11 = *(this + 5);
            v12 = *(this + 4);
            if (v12 >= v11)
            {
              if (v11 == *(this + 6))
              {
                wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 8));
                v11 = *(this + 5);
              }

              *(this + 5) = v11 + 1;
              operator new();
            }

            v13 = *(this + 1);
            *(this + 4) = v12 + 1;
            v14 = *(v13 + 8 * v12);
            v46 = 0;
            v15 = *(a2 + 1);
            if (v15 >= *(a2 + 2) || *v15 < 0)
            {
              if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v46))
              {
                return 0;
              }
            }

            else
            {
              v46 = *v15;
              *(a2 + 1) = v15 + 1;
            }

            v16 = *(a2 + 14);
            v17 = *(a2 + 15);
            *(a2 + 14) = v16 + 1;
            if (v16 >= v17)
            {
              return 0;
            }

            wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
            if (!awd::metrics::LocationAccessory_PASCDTransmissionHistogram::MergePartialFromCodedStream(v14, a2, v18) || *(a2 + 36) != 1)
            {
              return 0;
            }

            wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
            v19 = *(a2 + 14);
            v20 = __OFSUB__(v19, 1);
            v21 = v19 - 1;
            if (v21 < 0 == v20)
            {
              *(a2 + 14) = v21;
            }

            v22 = *(a2 + 1);
            if (v22 >= *(a2 + 2))
            {
              break;
            }

            v23 = *v22;
            if (v23 != 10)
            {
              if (v23 != 18)
              {
                goto LABEL_1;
              }

              goto LABEL_40;
            }

            *(a2 + 1) = v22 + 1;
          }
        }

        else
        {
          if (v7 != 2 || v8 != 2)
          {
            goto LABEL_37;
          }

          while (1)
          {
            v24 = *(this + 11);
            v25 = *(this + 10);
            if (v25 >= v24)
            {
              if (v24 == *(this + 12))
              {
                wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 32));
                v24 = *(this + 11);
              }

              *(this + 11) = v24 + 1;
              operator new();
            }

            v26 = *(this + 4);
            *(this + 10) = v25 + 1;
            v27 = *(v26 + 8 * v25);
            v47 = 0;
            v28 = *(a2 + 1);
            if (v28 >= *(a2 + 2) || *v28 < 0)
            {
              if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v47))
              {
                return 0;
              }
            }

            else
            {
              v47 = *v28;
              *(a2 + 1) = v28 + 1;
            }

            v29 = *(a2 + 14);
            v30 = *(a2 + 15);
            *(a2 + 14) = v29 + 1;
            if (v29 >= v30)
            {
              return 0;
            }

            wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
            if (!awd::metrics::LocationAccessory_PASCDSampleSizeHistogram::MergePartialFromCodedStream(v27, a2, v31) || *(a2 + 36) != 1)
            {
              return 0;
            }

            wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
            v32 = *(a2 + 14);
            v20 = __OFSUB__(v32, 1);
            v33 = v32 - 1;
            if (v33 < 0 == v20)
            {
              *(a2 + 14) = v33;
            }

            v22 = *(a2 + 1);
            if (v22 >= *(a2 + 2))
            {
              break;
            }

            v34 = *v22;
            if (v34 != 18)
            {
              if (v34 != 26)
              {
                goto LABEL_1;
              }

              *(a2 + 1) = v22 + 1;
              goto LABEL_59;
            }

LABEL_40:
            *(a2 + 1) = v22 + 1;
          }
        }
      }

      if (v7 != 3)
      {
        break;
      }

      if (v8 != 2)
      {
        goto LABEL_37;
      }

LABEL_59:
      *(this + 18) |= 4u;
      v35 = *(this + 7);
      if (!v35)
      {
        operator new();
      }

      v48 = 0;
      v36 = *(a2 + 1);
      if (v36 >= *(a2 + 2) || *v36 < 0)
      {
        if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v48))
        {
          return 0;
        }
      }

      else
      {
        v48 = *v36;
        *(a2 + 1) = v36 + 1;
      }

      v37 = *(a2 + 14);
      v38 = *(a2 + 15);
      *(a2 + 14) = v37 + 1;
      if (v37 >= v38)
      {
        return 0;
      }

      wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
      if (!awd::metrics::LocationAccessory_PASCDRavenUsageStats::MergePartialFromCodedStream(v35, a2, v39) || *(a2 + 36) != 1)
      {
        return 0;
      }

      wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
      v40 = *(a2 + 14);
      v20 = __OFSUB__(v40, 1);
      v41 = v40 - 1;
      if (v41 < 0 == v20)
      {
        *(a2 + 14) = v41;
      }

      v42 = *(a2 + 1);
      v9 = *(a2 + 2);
      if (v42 < v9 && *v42 == 32)
      {
        v10 = v42 + 1;
        *(a2 + 1) = v10;
LABEL_73:
        if (v10 >= v9 || (v43 = *v10, v43 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 16);
          if (!result)
          {
            return result;
          }

          v44 = *(a2 + 1);
          v9 = *(a2 + 2);
        }

        else
        {
          *(this + 16) = v43;
          v44 = v10 + 1;
          *(a2 + 1) = v44;
        }

        *(this + 18) |= 8u;
        if (v44 == v9 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
        {
          *(a2 + 8) = 0;
          result = 1;
          *(a2 + 36) = 1;
          return result;
        }
      }
    }

    if (v7 == 4 && (TagFallback & 7) == 0)
    {
      v10 = *(a2 + 1);
      v9 = *(a2 + 2);
      goto LABEL_73;
    }

LABEL_37:
    if (v8 == 4)
    {
      return 1;
    }

    if ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(a2, TagFallback) & 1) == 0)
    {
      return 0;
    }
  }
}

uint64_t awd::metrics::LocationAccessory_PASCDStats::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  if (*(this + 16) >= 1)
  {
    v6 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(1, *(*(v5 + 8) + 8 * v6++), a2, a4);
    }

    while (v6 < *(v5 + 16));
  }

  if (*(v5 + 40) >= 1)
  {
    v7 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(2, *(*(v5 + 32) + 8 * v7++), a2, a4);
    }

    while (v7 < *(v5 + 40));
  }

  v8 = *(v5 + 72);
  if ((v8 & 4) != 0)
  {
    v9 = *(v5 + 56);
    if (!v9)
    {
      v9 = *(awd::metrics::LocationAccessory_PASCDStats::default_instance_ + 56);
    }

    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(3, v9, a2, a4);
    v8 = *(v5 + 72);
  }

  if ((v8 & 8) != 0)
  {
    v10 = *(v5 + 64);

    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(4, v10, a2, a4);
  }

  return this;
}

uint64_t awd::metrics::LocationAccessory_PASCDStats::ByteSize(awd::metrics::LocationAccessory_PASCDStats *this, unsigned int a2)
{
  v3 = *(this + 18);
  if ((v3 & 0x3FC) == 0)
  {
    v4 = 0;
    goto LABEL_16;
  }

  if ((v3 & 4) == 0)
  {
    v4 = 0;
    if ((v3 & 8) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_12;
  }

  v5 = *(this + 7);
  if (!v5)
  {
    v5 = *(awd::metrics::LocationAccessory_PASCDStats::default_instance_ + 56);
  }

  v6 = awd::metrics::LocationAccessory_PASCDRavenUsageStats::ByteSize(v5, a2);
  v7 = v6;
  if (v6 >= 0x80)
  {
    v8 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v6);
  }

  else
  {
    v8 = 1;
  }

  v4 = v7 + v8 + 1;
  if ((*(this + 18) & 8) != 0)
  {
LABEL_12:
    v9 = *(this + 16);
    if (v9 >= 0x80)
    {
      v10 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v9) + 1;
    }

    else
    {
      v10 = 2;
    }

    v4 += v10;
  }

LABEL_16:
  v11 = *(this + 4);
  v12 = v11 + v4;
  if (v11 >= 1)
  {
    v13 = 0;
    do
    {
      v14 = awd::metrics::LocationAccessory_PASCDTransmissionHistogram::ByteSize(*(*(this + 1) + 8 * v13), a2);
      v15 = v14;
      if (v14 >= 0x80)
      {
        v16 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v14);
      }

      else
      {
        v16 = 1;
      }

      v12 += v15 + v16;
      ++v13;
    }

    while (v13 < *(this + 4));
  }

  v17 = *(this + 10);
  v18 = (v17 + v12);
  if (v17 >= 1)
  {
    v19 = 0;
    do
    {
      v20 = awd::metrics::LocationAccessory_PASCDSampleSizeHistogram::ByteSize(*(*(this + 4) + 8 * v19), a2);
      v21 = v20;
      if (v20 >= 0x80)
      {
        v22 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v20);
      }

      else
      {
        v22 = 1;
      }

      v18 = (v21 + v18 + v22);
      ++v19;
    }

    while (v19 < *(this + 10));
  }

  *(this + 17) = v18;
  return v18;
}

void awd::metrics::LocationAccessory_PASCDStats::CheckTypeAndMergeFrom(awd::metrics::LocationAccessory_PASCDStats *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  {
    awd::metrics::LocationAccessory_PASCDStats::CheckTypeAndMergeFrom();
  }

  awd::metrics::LocationAccessory_PASCDStats::MergeFrom(this, lpsrc);
}

void awd::metrics::LocationAccessory_PASCDStats::CopyFrom(const awd::metrics::LocationAccessory_PASCDStats *this, const awd::metrics::LocationAccessory_PASCDStats *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    awd::metrics::LocationAccessory_PASCDStats::MergeFrom(this, a2);
  }
}

awd::metrics::LocationAccessory_PASCDStats *awd::metrics::LocationAccessory_PASCDStats::Swap(awd::metrics::LocationAccessory_PASCDStats *this, awd::metrics::LocationAccessory_PASCDStats *a2)
{
  if (a2 != this)
  {
    v3 = this;
    wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Swap();
    this = wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Swap();
    v4 = *(v3 + 7);
    *(v3 + 7) = *(a2 + 7);
    *(a2 + 7) = v4;
    LODWORD(v4) = *(v3 + 16);
    *(v3 + 16) = *(a2 + 16);
    *(a2 + 16) = v4;
    LODWORD(v4) = *(v3 + 18);
    *(v3 + 18) = *(a2 + 18);
    *(a2 + 18) = v4;
    LODWORD(v4) = *(v3 + 17);
    *(v3 + 17) = *(a2 + 17);
    *(a2 + 17) = v4;
  }

  return this;
}

void *awd::metrics::LocationAccessory_Coordinate::SharedCtor(void *this)
{
  this[1] = 0;
  this[2] = 0;
  this[3] = 0;
  return this;
}

awd::metrics::LocationAccessory_Coordinate *awd::metrics::LocationAccessory_Coordinate::LocationAccessory_Coordinate(awd::metrics::LocationAccessory_Coordinate *this, const awd::metrics::LocationAccessory_Coordinate *a2)
{
  *this = &unk_2A1D51348;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 3) = 0;
  awd::metrics::LocationAccessory_Coordinate::MergeFrom(this, a2);
  return this;
}

double awd::metrics::LocationAccessory_Coordinate::MergeFrom(awd::metrics::LocationAccessory_Coordinate *this, const awd::metrics::LocationAccessory_Coordinate *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v6);
  }

  LOBYTE(v5) = *(a2 + 28);
  if (v5)
  {
    if (*(a2 + 28))
    {
      result = *(a2 + 1);
      *(this + 7) |= 1u;
      *(this + 1) = result;
      v5 = *(a2 + 7);
    }

    if ((v5 & 2) != 0)
    {
      result = *(a2 + 2);
      *(this + 7) |= 2u;
      *(this + 2) = result;
    }
  }

  return result;
}

void sub_29646B4D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::metrics::LocationAccessory_Coordinate::~LocationAccessory_Coordinate(awd::metrics::LocationAccessory_Coordinate *this)
{
  *this = &unk_2A1D51348;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2A1D51348;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2A1D51348;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  JUMPOUT(0x29C25A730);
}

uint64_t awd::metrics::LocationAccessory_Coordinate::default_instance(awd::metrics::LocationAccessory_Coordinate *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = awd::metrics::LocationAccessory_Coordinate::default_instance_;
  if (!awd::metrics::LocationAccessory_Coordinate::default_instance_)
  {
    awd::metrics::protobuf_AddDesc_Location_2eproto(0, a2, a3, a4);
    return awd::metrics::LocationAccessory_Coordinate::default_instance_;
  }

  return result;
}

uint64_t awd::metrics::LocationAccessory_Coordinate::Clear(uint64_t this)
{
  if (*(this + 28))
  {
    *(this + 8) = 0;
    *(this + 16) = 0;
  }

  *(this + 28) = 0;
  return this;
}

uint64_t awd::metrics::LocationAccessory_Coordinate::MergePartialFromCodedStream(awd::metrics::LocationAccessory_Coordinate *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
{
  do
  {
    while (1)
    {
      while (1)
      {
        v5 = *(a2 + 1);
        if (v5 >= *(a2 + 2) || (TagFallback = *v5, (TagFallback & 0x80000000) != 0))
        {
          TagFallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadTagFallback(a2);
          *(a2 + 8) = TagFallback;
          if (!TagFallback)
          {
            return 1;
          }
        }

        else
        {
          *(a2 + 8) = TagFallback;
          *(a2 + 1) = v5 + 1;
          if (!TagFallback)
          {
            return 1;
          }
        }

        v7 = TagFallback & 7;
        if (TagFallback >> 3 != 2)
        {
          break;
        }

        if (v7 != 1)
        {
          goto LABEL_14;
        }

LABEL_17:
        v10 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, &v10) & 1) == 0)
        {
          return 0;
        }

        *(this + 2) = v10;
        *(this + 7) |= 2u;
        if (*(a2 + 1) == *(a2 + 2) && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
        {
          *(a2 + 8) = 0;
          result = 1;
          *(a2 + 36) = 1;
          return result;
        }
      }

      if (TagFallback >> 3 != 1 || v7 != 1)
      {
        break;
      }

      v10 = 0;
      if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, &v10) & 1) == 0)
      {
        return 0;
      }

      *(this + 1) = v10;
      *(this + 7) |= 1u;
      v8 = *(a2 + 1);
      if (v8 < *(a2 + 2) && *v8 == 17)
      {
        *(a2 + 1) = v8 + 1;
        goto LABEL_17;
      }
    }

LABEL_14:
    if (v7 == 4)
    {
      return 1;
    }
  }

  while ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(a2, TagFallback) & 1) != 0);
  return 0;
}

uint64_t awd::metrics::LocationAccessory_Coordinate::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3)
{
  v4 = this;
  v5 = *(this + 28);
  if (v5)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(1, a2, *(this + 8), a3);
    v5 = *(v4 + 28);
  }

  if ((v5 & 2) != 0)
  {
    v6 = *(v4 + 16);

    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(2, a2, v6, a3);
  }

  return this;
}

uint64_t awd::metrics::LocationAccessory_Coordinate::ByteSize(awd::metrics::LocationAccessory_Coordinate *this)
{
  v1 = *(this + 28);
  if (*(this + 28))
  {
    v2 = ((v1 << 31) >> 31) & 9;
    if ((v1 & 2) != 0)
    {
      v1 = v2 + 9;
    }

    else
    {
      v1 = v2;
    }
  }

  *(this + 6) = v1;
  return v1;
}

double awd::metrics::LocationAccessory_Coordinate::CheckTypeAndMergeFrom(awd::metrics::LocationAccessory_Coordinate *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  {
    awd::metrics::LocationAccessory_Coordinate::CheckTypeAndMergeFrom();
  }

  return awd::metrics::LocationAccessory_Coordinate::MergeFrom(this, lpsrc);
}

double awd::metrics::LocationAccessory_Coordinate::CopyFrom(awd::metrics::LocationAccessory_Coordinate *this, const awd::metrics::LocationAccessory_Coordinate *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    return awd::metrics::LocationAccessory_Coordinate::MergeFrom(this, a2);
  }

  return result;
}

double awd::metrics::LocationAccessory_Coordinate::Swap(awd::metrics::LocationAccessory_Coordinate *this, awd::metrics::LocationAccessory_Coordinate *a2)
{
  if (a2 != this)
  {
    v2 = *(this + 1);
    *(this + 1) = *(a2 + 1);
    *(a2 + 1) = v2;
    result = *(this + 2);
    *(this + 2) = *(a2 + 2);
    *(a2 + 2) = result;
    v4 = *(this + 7);
    *(this + 7) = *(a2 + 7);
    *(a2 + 7) = v4;
    v5 = *(this + 6);
    *(this + 6) = *(a2 + 6);
    *(a2 + 6) = v5;
  }

  return result;
}

double awd::metrics::LocationAccessory::LocationAccessory(awd::metrics::LocationAccessory *this)
{
  *(this + 22) = 0;
  *(this + 23) = 0;
  *(this + 48) = 0;
  *(this + 27) = 0;
  *(this + 56) = 0;
  *(this + 31) = 0;
  *(this + 64) = 0;
  *(this + 39) = 0;
  *(this + 80) = 0;
  *(this + 86) = 0;
  *this = &unk_2A1D513C0;
  *(this + 1) = 0;
  v1 = MEMORY[0x29EDC9758];
  *(this + 2) = MEMORY[0x29EDC9758];
  *(this + 3) = v1;
  *(this + 4) = v1;
  *(this + 5) = v1;
  *(this + 6) = v1;
  *(this + 14) = 0;
  *(this + 60) = 0;
  result = 0.0;
  *(this + 200) = 0u;
  *(this + 232) = 0u;
  *(this + 9) = 0u;
  *(this + 10) = 0u;
  *(this + 7) = 0u;
  *(this + 8) = 0u;
  *(this + 5) = 0u;
  *(this + 6) = 0u;
  *(this + 4) = 0u;
  *(this + 264) = 0u;
  *(this + 280) = 0u;
  *(this + 37) = 0;
  *(this + 38) = 0;
  *(this + 41) = v1;
  *(this + 42) = v1;
  *(this + 348) = 0;
  return result;
}

double awd::metrics::LocationAccessory::SharedCtor(awd::metrics::LocationAccessory *this)
{
  *(this + 86) = 0;
  v1 = MEMORY[0x29EDC9758];
  *(this + 1) = 0;
  *(this + 2) = v1;
  *(this + 3) = v1;
  *(this + 4) = v1;
  *(this + 5) = v1;
  *(this + 6) = v1;
  *(this + 14) = 0;
  *(this + 60) = 0;
  result = 0.0;
  *(this + 25) = 0;
  *(this + 29) = 0;
  *(this + 4) = 0u;
  *(this + 5) = 0u;
  *(this + 6) = 0u;
  *(this + 7) = 0u;
  *(this + 8) = 0u;
  *(this + 9) = 0u;
  *(this + 10) = 0u;
  *(this + 37) = 0;
  *(this + 264) = 0u;
  *(this + 280) = 0u;
  *(this + 41) = v1;
  *(this + 42) = v1;
  *(this + 348) = 0;
  return result;
}

awd::metrics::LocationAccessory *awd::metrics::LocationAccessory::LocationAccessory(awd::metrics::LocationAccessory *this, const awd::metrics::LocationAccessory *a2)
{
  *(this + 22) = 0;
  *(this + 23) = 0;
  *(this + 48) = 0;
  *(this + 27) = 0;
  *(this + 56) = 0;
  *(this + 31) = 0;
  *(this + 64) = 0;
  *(this + 39) = 0;
  *(this + 80) = 0;
  *(this + 86) = 0;
  v3 = MEMORY[0x29EDC9758];
  *this = &unk_2A1D513C0;
  *(this + 1) = 0;
  *(this + 2) = v3;
  *(this + 3) = v3;
  *(this + 4) = v3;
  *(this + 5) = v3;
  *(this + 6) = v3;
  *(this + 14) = 0;
  *(this + 60) = 0;
  *(this + 200) = 0u;
  *(this + 232) = 0u;
  *(this + 9) = 0u;
  *(this + 10) = 0u;
  *(this + 7) = 0u;
  *(this + 8) = 0u;
  *(this + 5) = 0u;
  *(this + 6) = 0u;
  *(this + 4) = 0u;
  *(this + 264) = 0u;
  *(this + 280) = 0u;
  *(this + 37) = 0;
  *(this + 38) = 0;
  *(this + 41) = v3;
  *(this + 42) = v3;
  *(this + 348) = 0;
  awd::metrics::LocationAccessory::MergeFrom(this, a2);
  return this;
}

void sub_29646BB30(_Unwind_Exception *a1)
{
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationAccessory_MessageHistogram>::TypeHandler>(v1 + 38);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationAccessory_NMEAScreeningLocTypeHistogram>::TypeHandler>(v1 + 30);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationAccessory_NavDynamicsHistogram>::TypeHandler>(v1 + 26);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationAccessory_LocationAppRunningTime>::TypeHandler>(v2);
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(v1);
  _Unwind_Resume(a1);
}

void awd::metrics::LocationAccessory::MergeFrom(awd::metrics::LocationAccessory *this, const awd::metrics::LocationAccessory *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v78);
  }

  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 176));
  LODWORD(v4) = *(a2 + 46);
  v5 = MEMORY[0x29EDC9758];
  if (v4 >= 1)
  {
    v6 = 0;
    do
    {
      if (v6 >= v4)
      {
        wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
        wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
        wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
        wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v78);
      }

      v7 = *(*(a2 + 22) + 8 * v6);
      v8 = *(this + 47);
      v9 = *(this + 46);
      if (v9 >= v8)
      {
        if (v8 == *(this + 48))
        {
          wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 176));
          v8 = *(this + 47);
        }

        *(this + 47) = v8 + 1;
        operator new();
      }

      v10 = *(this + 22);
      *(this + 46) = v9 + 1;
      awd::metrics::LocationAccessory_LocationAppRunningTime::MergeFrom(*(v10 + 8 * v9), v7);
      ++v6;
      v4 = *(a2 + 46);
    }

    while (v6 < v4);
  }

  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::MergeFrom<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationAccessory_NavDynamicsHistogram>::TypeHandler>((this + 208), a2 + 208);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::MergeFrom<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationAccessory_NMEAScreeningLocTypeHistogram>::TypeHandler>((this + 240), a2 + 240);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 304));
  LODWORD(v11) = *(a2 + 78);
  if (v11 >= 1)
  {
    v12 = 0;
    do
    {
      if (v12 >= v11)
      {
        wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
        wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
        wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
        wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v78);
      }

      v13 = *(*(a2 + 38) + 8 * v12);
      v14 = *(this + 78);
      v15 = *(this + 79);
      if (v14 >= v15)
      {
        if (v15 == *(this + 80))
        {
          wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 304));
          v15 = *(this + 79);
        }

        *(this + 79) = v15 + 1;
        operator new();
      }

      v16 = *(this + 38);
      *(this + 78) = v14 + 1;
      awd::metrics::LocationAccessory_MessageHistogram::MergeFrom(*(v16 + 8 * v14), v13);
      ++v12;
      v11 = *(a2 + 78);
    }

    while (v12 < v11);
  }

  v17 = *(a2 + 87);
  if (!v17)
  {
    goto LABEL_33;
  }

  if (v17)
  {
    v19 = *(a2 + 1);
    *(this + 87) |= 1u;
    *(this + 1) = v19;
    v17 = *(a2 + 87);
    if ((v17 & 2) == 0)
    {
LABEL_26:
      if ((v17 & 4) == 0)
      {
        goto LABEL_27;
      }

      goto LABEL_47;
    }
  }

  else if ((v17 & 2) == 0)
  {
    goto LABEL_26;
  }

  v20 = *(a2 + 2);
  *(this + 87) |= 2u;
  v21 = *(this + 2);
  if (v21 == v5)
  {
    operator new();
  }

  std::string::operator=(v21, v20);
  v17 = *(a2 + 87);
  if ((v17 & 4) == 0)
  {
LABEL_27:
    if ((v17 & 8) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_50;
  }

LABEL_47:
  v22 = *(a2 + 3);
  *(this + 87) |= 4u;
  v23 = *(this + 3);
  if (v23 == v5)
  {
    operator new();
  }

  std::string::operator=(v23, v22);
  v17 = *(a2 + 87);
  if ((v17 & 8) == 0)
  {
LABEL_28:
    if ((v17 & 0x10) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_53;
  }

LABEL_50:
  v24 = *(a2 + 4);
  *(this + 87) |= 8u;
  v25 = *(this + 4);
  if (v25 == v5)
  {
    operator new();
  }

  std::string::operator=(v25, v24);
  v17 = *(a2 + 87);
  if ((v17 & 0x10) == 0)
  {
LABEL_29:
    if ((v17 & 0x20) == 0)
    {
      goto LABEL_30;
    }

LABEL_56:
    v28 = *(a2 + 6);
    *(this + 87) |= 0x20u;
    v29 = *(this + 6);
    if (v29 == v5)
    {
      operator new();
    }

    std::string::operator=(v29, v28);
    v17 = *(a2 + 87);
    if ((v17 & 0x40) == 0)
    {
LABEL_31:
      if ((v17 & 0x80) == 0)
      {
        goto LABEL_33;
      }

      goto LABEL_32;
    }

    goto LABEL_59;
  }

LABEL_53:
  v26 = *(a2 + 5);
  *(this + 87) |= 0x10u;
  v27 = *(this + 5);
  if (v27 == v5)
  {
    operator new();
  }

  std::string::operator=(v27, v26);
  v17 = *(a2 + 87);
  if ((v17 & 0x20) != 0)
  {
    goto LABEL_56;
  }

LABEL_30:
  if ((v17 & 0x40) == 0)
  {
    goto LABEL_31;
  }

LABEL_59:
  v30 = *(a2 + 14);
  *(this + 87) |= 0x40u;
  *(this + 14) = v30;
  v17 = *(a2 + 87);
  if ((v17 & 0x80) != 0)
  {
LABEL_32:
    v18 = *(a2 + 60);
    *(this + 87) |= 0x80u;
    *(this + 60) = v18;
    v17 = *(a2 + 87);
  }

LABEL_33:
  if ((v17 & 0xFF00) == 0)
  {
    goto LABEL_81;
  }

  if ((v17 & 0x100) != 0)
  {
    v31 = *(a2 + 16);
    *(this + 87) |= 0x100u;
    *(this + 16) = v31;
    v17 = *(a2 + 87);
    if ((v17 & 0x200) == 0)
    {
LABEL_36:
      if ((v17 & 0x400) == 0)
      {
        goto LABEL_37;
      }

      goto LABEL_63;
    }
  }

  else if ((v17 & 0x200) == 0)
  {
    goto LABEL_36;
  }

  v32 = *(a2 + 17);
  *(this + 87) |= 0x200u;
  *(this + 17) = v32;
  v17 = *(a2 + 87);
  if ((v17 & 0x400) == 0)
  {
LABEL_37:
    if ((v17 & 0x800) == 0)
    {
      goto LABEL_38;
    }

    goto LABEL_64;
  }

LABEL_63:
  v33 = *(a2 + 18);
  *(this + 87) |= 0x400u;
  *(this + 18) = v33;
  v17 = *(a2 + 87);
  if ((v17 & 0x800) == 0)
  {
LABEL_38:
    if ((v17 & 0x1000) == 0)
    {
      goto LABEL_39;
    }

    goto LABEL_65;
  }

LABEL_64:
  v34 = *(a2 + 19);
  *(this + 87) |= 0x800u;
  *(this + 19) = v34;
  v17 = *(a2 + 87);
  if ((v17 & 0x1000) == 0)
  {
LABEL_39:
    if ((v17 & 0x2000) == 0)
    {
      goto LABEL_40;
    }

    goto LABEL_66;
  }

LABEL_65:
  v35 = *(a2 + 30);
  *(this + 87) |= 0x1000u;
  *(this + 30) = v35;
  v17 = *(a2 + 87);
  if ((v17 & 0x2000) == 0)
  {
LABEL_40:
    if ((v17 & 0x4000) == 0)
    {
      goto LABEL_41;
    }

    goto LABEL_71;
  }

LABEL_66:
  *(this + 87) |= 0x2000u;
  v36 = *(this + 10);
  if (!v36)
  {
    operator new();
  }

  v37 = *(a2 + 10);
  if (!v37)
  {
    v37 = *(awd::metrics::LocationAccessory::default_instance_ + 80);
  }

  awd::metrics::LocationAccessory_PerformanceStats::MergeFrom(v36, v37);
  v17 = *(a2 + 87);
  if ((v17 & 0x4000) == 0)
  {
LABEL_41:
    if ((v17 & 0x8000) == 0)
    {
      goto LABEL_81;
    }

    goto LABEL_76;
  }

LABEL_71:
  *(this + 87) |= 0x4000u;
  v38 = *(this + 11);
  if (!v38)
  {
    operator new();
  }

  v39 = *(a2 + 11);
  if (!v39)
  {
    v39 = *(awd::metrics::LocationAccessory::default_instance_ + 88);
  }

  awd::metrics::LocationAccessory_PerformanceStats::MergeFrom(v38, v39);
  v17 = *(a2 + 87);
  if ((v17 & 0x8000) != 0)
  {
LABEL_76:
    *(this + 87) |= 0x8000u;
    v40 = *(this + 12);
    if (!v40)
    {
      operator new();
    }

    v41 = *(a2 + 12);
    if (!v41)
    {
      v41 = *(awd::metrics::LocationAccessory::default_instance_ + 96);
    }

    awd::metrics::LocationAccessory_PerformanceStats::MergeFrom(v40, v41);
    v17 = *(a2 + 87);
  }

LABEL_81:
  if ((v17 & 0xFF0000) == 0)
  {
    goto LABEL_91;
  }

  if ((v17 & 0x10000) != 0)
  {
    *(this + 87) |= 0x10000u;
    v49 = *(this + 13);
    if (!v49)
    {
      operator new();
    }

    v50 = *(a2 + 13);
    if (!v50)
    {
      v50 = *(awd::metrics::LocationAccessory::default_instance_ + 104);
    }

    awd::metrics::LocationAccessory_PerformanceStats::MergeFrom(v49, v50);
    v17 = *(a2 + 87);
    if ((v17 & 0x20000) == 0)
    {
LABEL_84:
      if ((v17 & 0x40000) == 0)
      {
        goto LABEL_85;
      }

      goto LABEL_127;
    }
  }

  else if ((v17 & 0x20000) == 0)
  {
    goto LABEL_84;
  }

  *(this + 87) |= 0x20000u;
  v51 = *(this + 14);
  if (!v51)
  {
    operator new();
  }

  v52 = *(a2 + 14);
  if (!v52)
  {
    v52 = *(awd::metrics::LocationAccessory::default_instance_ + 112);
  }

  awd::metrics::LocationAccessory_SpeedPerformanceStats::MergeFrom(v51, v52);
  v17 = *(a2 + 87);
  if ((v17 & 0x40000) == 0)
  {
LABEL_85:
    if ((v17 & 0x80000) == 0)
    {
      goto LABEL_86;
    }

    goto LABEL_132;
  }

LABEL_127:
  *(this + 87) |= 0x40000u;
  v53 = *(this + 16);
  if (!v53)
  {
    operator new();
  }

  v54 = *(a2 + 16);
  if (!v54)
  {
    v54 = *(awd::metrics::LocationAccessory::default_instance_ + 128);
  }

  awd::metrics::LocationAccessory_MessageStats::MergeFrom(v53, v54);
  v17 = *(a2 + 87);
  if ((v17 & 0x80000) == 0)
  {
LABEL_86:
    if ((v17 & 0x100000) == 0)
    {
      goto LABEL_87;
    }

    goto LABEL_137;
  }

LABEL_132:
  *(this + 87) |= 0x80000u;
  v55 = *(this + 17);
  if (!v55)
  {
    operator new();
  }

  v56 = *(a2 + 17);
  if (!v56)
  {
    v56 = *(awd::metrics::LocationAccessory::default_instance_ + 136);
  }

  awd::metrics::LocationAccessory_MessageStats::MergeFrom(v55, v56);
  v17 = *(a2 + 87);
  if ((v17 & 0x100000) == 0)
  {
LABEL_87:
    if ((v17 & 0x200000) == 0)
    {
      goto LABEL_88;
    }

    goto LABEL_142;
  }

LABEL_137:
  *(this + 87) |= 0x100000u;
  v57 = *(this + 18);
  if (!v57)
  {
    operator new();
  }

  v58 = *(a2 + 18);
  if (!v58)
  {
    v58 = *(awd::metrics::LocationAccessory::default_instance_ + 144);
  }

  awd::metrics::LocationAccessory_MessageStats::MergeFrom(v57, v58);
  v17 = *(a2 + 87);
  if ((v17 & 0x200000) == 0)
  {
LABEL_88:
    if ((v17 & 0x400000) == 0)
    {
      goto LABEL_89;
    }

    goto LABEL_147;
  }

LABEL_142:
  *(this + 87) |= 0x200000u;
  v59 = *(this + 19);
  if (!v59)
  {
    operator new();
  }

  v60 = *(a2 + 19);
  if (!v60)
  {
    v60 = *(awd::metrics::LocationAccessory::default_instance_ + 152);
  }

  awd::metrics::LocationAccessory_PASCDStats::MergeFrom(v59, v60);
  v17 = *(a2 + 87);
  if ((v17 & 0x400000) == 0)
  {
LABEL_89:
    if ((v17 & 0x800000) == 0)
    {
      goto LABEL_91;
    }

    goto LABEL_90;
  }

LABEL_147:
  *(this + 87) |= 0x400000u;
  v61 = *(this + 20);
  if (!v61)
  {
    operator new();
  }

  v62 = *(a2 + 20);
  if (!v62)
  {
    v62 = *(awd::metrics::LocationAccessory::default_instance_ + 160);
  }

  awd::metrics::LocationAccessory_Coordinate::MergeFrom(v61, v62);
  v17 = *(a2 + 87);
  if ((v17 & 0x800000) != 0)
  {
LABEL_90:
    v42 = *(a2 + 31);
    *(this + 87) |= 0x800000u;
    *(this + 31) = v42;
    v17 = *(a2 + 87);
  }

LABEL_91:
  if (!HIBYTE(v17))
  {
    goto LABEL_98;
  }

  if ((v17 & 0x1000000) != 0)
  {
    v72 = *(a2 + 42);
    *(this + 87) |= 0x1000000u;
    *(this + 42) = v72;
    v17 = *(a2 + 87);
    if ((v17 & 0x4000000) == 0)
    {
LABEL_94:
      if ((v17 & 0x8000000) == 0)
      {
        goto LABEL_95;
      }

      goto LABEL_174;
    }
  }

  else if ((v17 & 0x4000000) == 0)
  {
    goto LABEL_94;
  }

  v73 = *(a2 + 43);
  *(this + 87) |= 0x4000000u;
  *(this + 43) = v73;
  v17 = *(a2 + 87);
  if ((v17 & 0x8000000) == 0)
  {
LABEL_95:
    if ((v17 & 0x10000000) == 0)
    {
      goto LABEL_96;
    }

    goto LABEL_175;
  }

LABEL_174:
  v74 = *(a2 + 50);
  *(this + 87) |= 0x8000000u;
  *(this + 50) = v74;
  v17 = *(a2 + 87);
  if ((v17 & 0x10000000) == 0)
  {
LABEL_96:
    if ((v17 & 0x40000000) == 0)
    {
      goto LABEL_97;
    }

LABEL_176:
    v76 = *(a2 + 58);
    *(this + 87) |= 0x40000000u;
    *(this + 58) = v76;
    if ((*(a2 + 87) & 0x80000000) == 0)
    {
      goto LABEL_98;
    }

    goto LABEL_177;
  }

LABEL_175:
  v75 = *(a2 + 51);
  *(this + 87) |= 0x10000000u;
  *(this + 51) = v75;
  v17 = *(a2 + 87);
  if ((v17 & 0x40000000) != 0)
  {
    goto LABEL_176;
  }

LABEL_97:
  if ((v17 & 0x80000000) == 0)
  {
    goto LABEL_98;
  }

LABEL_177:
  v77 = *(a2 + 59);
  *(this + 87) |= 0x80000000;
  *(this + 59) = v77;
LABEL_98:
  v43 = *(a2 + 88);
  if (!v43)
  {
    goto LABEL_107;
  }

  if (v43)
  {
    v63 = *(a2 + 66);
    *(this + 88) |= 1u;
    *(this + 66) = v63;
    v43 = *(a2 + 88);
    if ((v43 & 4) == 0)
    {
LABEL_101:
      if ((v43 & 8) == 0)
      {
        goto LABEL_102;
      }

      goto LABEL_155;
    }
  }

  else if ((v43 & 4) == 0)
  {
    goto LABEL_101;
  }

  v64 = *(a2 + 67);
  *(this + 88) |= 4u;
  *(this + 67) = v64;
  v43 = *(a2 + 88);
  if ((v43 & 8) == 0)
  {
LABEL_102:
    if ((v43 & 0x10) == 0)
    {
      goto LABEL_103;
    }

    goto LABEL_160;
  }

LABEL_155:
  *(this + 88) |= 8u;
  v65 = *(this + 34);
  if (!v65)
  {
    operator new();
  }

  v66 = *(a2 + 34);
  if (!v66)
  {
    v66 = *(awd::metrics::LocationAccessory::default_instance_ + 272);
  }

  awd::metrics::LocationAccessory_DeviceChargingStats::MergeFrom(v65, v66);
  v43 = *(a2 + 88);
  if ((v43 & 0x10) == 0)
  {
LABEL_103:
    if ((v43 & 0x20) == 0)
    {
      goto LABEL_104;
    }

    goto LABEL_165;
  }

LABEL_160:
  *(this + 88) |= 0x10u;
  v67 = *(this + 35);
  if (!v67)
  {
    operator new();
  }

  v68 = *(a2 + 35);
  if (!v68)
  {
    v68 = *(awd::metrics::LocationAccessory::default_instance_ + 280);
  }

  awd::metrics::LocationAccessory_Statistics::MergeFrom(v67, v68);
  v43 = *(a2 + 88);
  if ((v43 & 0x20) == 0)
  {
LABEL_104:
    if ((v43 & 0x40) == 0)
    {
      goto LABEL_105;
    }

    goto LABEL_170;
  }

LABEL_165:
  *(this + 88) |= 0x20u;
  v69 = *(this + 36);
  if (!v69)
  {
    operator new();
  }

  v70 = *(a2 + 36);
  if (!v70)
  {
    v70 = *(awd::metrics::LocationAccessory::default_instance_ + 288);
  }

  awd::metrics::LocationAccessory_Statistics::MergeFrom(v69, v70);
  v43 = *(a2 + 88);
  if ((v43 & 0x40) == 0)
  {
LABEL_105:
    if ((v43 & 0x80) == 0)
    {
      goto LABEL_107;
    }

    goto LABEL_106;
  }

LABEL_170:
  v71 = *(a2 + 74);
  *(this + 88) |= 0x40u;
  *(this + 74) = v71;
  v43 = *(a2 + 88);
  if ((v43 & 0x80) != 0)
  {
LABEL_106:
    v44 = *(a2 + 75);
    *(this + 88) |= 0x80u;
    *(this + 75) = v44;
    v43 = *(a2 + 88);
  }

LABEL_107:
  if ((v43 & 0x1FE00) != 0)
  {
    if ((v43 & 0x200) != 0)
    {
      v45 = *(a2 + 41);
      *(this + 88) |= 0x200u;
      v46 = *(this + 41);
      if (v46 == v5)
      {
        operator new();
      }

      std::string::operator=(v46, v45);
      v43 = *(a2 + 88);
    }

    if ((v43 & 0x400) != 0)
    {
      v47 = *(a2 + 42);
      *(this + 88) |= 0x400u;
      v48 = *(this + 42);
      if (v48 == v5)
      {
        operator new();
      }

      std::string::operator=(v48, v47);
    }
  }
}

void sub_29646CA00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::metrics::LocationAccessory::~LocationAccessory(awd::metrics::LocationAccessory *this)
{
  *this = &unk_2A1D513C0;
  awd::metrics::LocationAccessory::SharedDtor(this);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationAccessory_MessageHistogram>::TypeHandler>(this + 38);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationAccessory_NMEAScreeningLocTypeHistogram>::TypeHandler>(this + 30);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationAccessory_NavDynamicsHistogram>::TypeHandler>(this + 26);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationAccessory_LocationAppRunningTime>::TypeHandler>(this + 22);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  awd::metrics::LocationAccessory::~LocationAccessory(this);

  JUMPOUT(0x29C25A730);
}

void *awd::metrics::LocationAccessory::SharedDtor(void *this)
{
  v1 = this;
  v2 = this[2];
  v3 = MEMORY[0x29EDC9758];
  if (v2 != MEMORY[0x29EDC9758] && v2 != 0)
  {
    if (*(v2 + 23) < 0)
    {
      operator delete(*v2);
    }

    this = MEMORY[0x29C25A730](v2, 0x1012C40EC159624);
  }

  v5 = v1[3];
  if (v5 != v3 && v5 != 0)
  {
    if (*(v5 + 23) < 0)
    {
      operator delete(*v5);
    }

    this = MEMORY[0x29C25A730](v5, 0x1012C40EC159624);
  }

  v7 = v1[4];
  if (v7 != v3 && v7 != 0)
  {
    if (*(v7 + 23) < 0)
    {
      operator delete(*v7);
    }

    this = MEMORY[0x29C25A730](v7, 0x1012C40EC159624);
  }

  v9 = v1[5];
  if (v9 != v3 && v9 != 0)
  {
    if (*(v9 + 23) < 0)
    {
      operator delete(*v9);
    }

    this = MEMORY[0x29C25A730](v9, 0x1012C40EC159624);
  }

  v11 = v1[6];
  if (v11 != v3 && v11)
  {
    if (*(v11 + 23) < 0)
    {
      operator delete(*v11);
    }

    this = MEMORY[0x29C25A730](v11, 0x1012C40EC159624);
  }

  v12 = v1[41];
  if (v12 != v3 && v12)
  {
    if (*(v12 + 23) < 0)
    {
      operator delete(*v12);
    }

    this = MEMORY[0x29C25A730](v12, 0x1012C40EC159624);
  }

  v13 = v1[42];
  if (v13 != v3 && v13)
  {
    if (*(v13 + 23) < 0)
    {
      operator delete(*v13);
    }

    this = MEMORY[0x29C25A730](v13, 0x1012C40EC159624);
  }

  if (awd::metrics::LocationAccessory::default_instance_ != v1)
  {
    v14 = v1[10];
    if (v14)
    {
      (*(*v14 + 8))(v14);
    }

    v15 = v1[11];
    if (v15)
    {
      (*(*v15 + 8))(v15);
    }

    v16 = v1[12];
    if (v16)
    {
      (*(*v16 + 8))(v16);
    }

    v17 = v1[13];
    if (v17)
    {
      (*(*v17 + 8))(v17);
    }

    v18 = v1[14];
    if (v18)
    {
      (*(*v18 + 8))(v18);
    }

    v19 = v1[16];
    if (v19)
    {
      (*(*v19 + 8))(v19);
    }

    v20 = v1[17];
    if (v20)
    {
      (*(*v20 + 8))(v20);
    }

    v21 = v1[18];
    if (v21)
    {
      (*(*v21 + 8))(v21);
    }

    v22 = v1[19];
    if (v22)
    {
      (*(*v22 + 8))(v22);
    }

    v23 = v1[20];
    if (v23)
    {
      (*(*v23 + 8))(v23);
    }

    v24 = v1[34];
    if (v24)
    {
      (*(*v24 + 8))(v24);
    }

    v25 = v1[35];
    if (v25)
    {
      (*(*v25 + 8))(v25);
    }

    this = v1[36];
    if (this)
    {
      v26 = *(*this + 8);

      return v26();
    }
  }

  return this;
}

uint64_t awd::metrics::LocationAccessory::default_instance(awd::metrics::LocationAccessory *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = awd::metrics::LocationAccessory::default_instance_;
  if (!awd::metrics::LocationAccessory::default_instance_)
  {
    awd::metrics::protobuf_AddDesc_Location_2eproto(0, a2, a3, a4);
    return awd::metrics::LocationAccessory::default_instance_;
  }

  return result;
}

uint64_t awd::metrics::LocationAccessory::Clear(awd::metrics::LocationAccessory *this)
{
  v2 = this + 348;
  v3 = *(this + 87);
  if (v3)
  {
    *(this + 1) = 0;
    v4 = MEMORY[0x29EDC9758];
    if ((v3 & 2) != 0)
    {
      v5 = *(this + 2);
      if (v5 != MEMORY[0x29EDC9758])
      {
        if (*(v5 + 23) < 0)
        {
          **v5 = 0;
          *(v5 + 8) = 0;
        }

        else
        {
          *v5 = 0;
          *(v5 + 23) = 0;
        }
      }
    }

    if ((*v2 & 4) != 0)
    {
      v6 = *(this + 3);
      if (v6 != v4)
      {
        if (*(v6 + 23) < 0)
        {
          **v6 = 0;
          *(v6 + 8) = 0;
        }

        else
        {
          *v6 = 0;
          *(v6 + 23) = 0;
        }
      }
    }

    if ((*v2 & 8) != 0)
    {
      v7 = *(this + 4);
      if (v7 != v4)
      {
        if (*(v7 + 23) < 0)
        {
          **v7 = 0;
          *(v7 + 8) = 0;
        }

        else
        {
          *v7 = 0;
          *(v7 + 23) = 0;
        }
      }
    }

    if ((*v2 & 0x10) != 0)
    {
      v8 = *(this + 5);
      if (v8 != v4)
      {
        if (*(v8 + 23) < 0)
        {
          **v8 = 0;
          *(v8 + 8) = 0;
        }

        else
        {
          *v8 = 0;
          *(v8 + 23) = 0;
        }
      }
    }

    if ((*v2 & 0x20) != 0)
    {
      v9 = *(this + 6);
      if (v9 != v4)
      {
        if (*(v9 + 23) < 0)
        {
          **v9 = 0;
          *(v9 + 8) = 0;
        }

        else
        {
          *v9 = 0;
          *(v9 + 23) = 0;
        }
      }
    }

    *(this + 14) = 0;
    *(this + 60) = 0;
    v3 = *(this + 87);
  }

  if ((v3 & 0xFF00) != 0)
  {
    *(this + 30) = 0;
    *(this + 8) = 0;
    *(this + 9) = 0;
    if ((v3 & 0x2000) != 0)
    {
      v10 = *(this + 10);
      if (v10)
      {
        awd::metrics::LocationAccessory_PerformanceStats::Clear(v10);
        v3 = *v2;
      }
    }

    if ((v3 & 0x4000) != 0)
    {
      v11 = *(this + 11);
      if (v11)
      {
        awd::metrics::LocationAccessory_PerformanceStats::Clear(v11);
        v3 = *v2;
      }
    }

    if ((v3 & 0x8000) != 0)
    {
      v12 = *(this + 12);
      if (v12)
      {
        awd::metrics::LocationAccessory_PerformanceStats::Clear(v12);
        v3 = *v2;
      }
    }
  }

  if ((v3 & 0xFF0000) != 0)
  {
    if ((v3 & 0x10000) != 0)
    {
      v13 = *(this + 13);
      if (v13)
      {
        awd::metrics::LocationAccessory_PerformanceStats::Clear(v13);
        v3 = *v2;
      }
    }

    if ((v3 & 0x20000) != 0)
    {
      v14 = *(this + 14);
      if (v14)
      {
        awd::metrics::LocationAccessory_SpeedPerformanceStats::Clear(v14);
        v3 = *v2;
      }
    }

    if ((v3 & 0x40000) != 0)
    {
      v15 = *(this + 16);
      if (v15)
      {
        awd::metrics::LocationAccessory_MessageStats::Clear(v15);
        v3 = *v2;
      }
    }

    if ((v3 & 0x80000) != 0)
    {
      v16 = *(this + 17);
      if (v16)
      {
        awd::metrics::LocationAccessory_MessageStats::Clear(v16);
        v3 = *v2;
      }
    }

    if ((v3 & 0x100000) != 0)
    {
      v17 = *(this + 18);
      if (v17)
      {
        awd::metrics::LocationAccessory_MessageStats::Clear(v17);
        v3 = *v2;
      }
    }

    if ((v3 & 0x200000) != 0)
    {
      v18 = *(this + 19);
      if (v18)
      {
        awd::metrics::LocationAccessory_PASCDStats::Clear(v18);
        v3 = *v2;
      }
    }

    if ((v3 & 0x400000) != 0)
    {
      v19 = *(this + 20);
      if (v19)
      {
        if (*(v19 + 28))
        {
          *(v19 + 8) = 0;
          *(v19 + 16) = 0;
        }

        *(v19 + 28) = 0;
        v3 = *v2;
      }
    }

    *(this + 31) = 0;
  }

  if (HIBYTE(v3))
  {
    *(this + 21) = 0;
    *(this + 25) = 0;
    *(this + 29) = 0;
  }

  v20 = *(this + 88);
  if (v20)
  {
    *(this + 33) = 0;
    if ((v20 & 8) != 0)
    {
      v21 = *(this + 34);
      if (v21)
      {
        if (*(v21 + 40))
        {
          *(v21 + 32) = 0;
        }

        wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Clear<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationAccessory_ChargingTypeHistogram>::TypeHandler>(v21 + 8);
        *(v21 + 40) = 0;
        v20 = *(this + 88);
      }
    }

    if ((v20 & 0x10) != 0)
    {
      v22 = *(this + 35);
      if (v22)
      {
        if (*(v22 + 36))
        {
          *(v22 + 8) = 0;
          *(v22 + 16) = 0;
          *(v22 + 24) = 0;
        }

        *(v22 + 36) = 0;
        v20 = *(this + 88);
      }
    }

    if ((v20 & 0x20) != 0)
    {
      v23 = *(this + 36);
      if (v23)
      {
        if (*(v23 + 36))
        {
          *(v23 + 8) = 0;
          *(v23 + 16) = 0;
          *(v23 + 24) = 0;
        }

        *(v23 + 36) = 0;
        v20 = *(this + 88);
      }
    }

    *(this + 37) = 0;
  }

  if ((v20 & 0x1FE00) != 0)
  {
    if ((v20 & 0x200) != 0)
    {
      v24 = *(this + 41);
      if (v24 != MEMORY[0x29EDC9758])
      {
        if (*(v24 + 23) < 0)
        {
          **v24 = 0;
          *(v24 + 8) = 0;
        }

        else
        {
          *v24 = 0;
          *(v24 + 23) = 0;
        }
      }
    }

    if ((*(this + 353) & 4) != 0)
    {
      v25 = *(this + 42);
      if (v25 != MEMORY[0x29EDC9758])
      {
        if (*(v25 + 23) < 0)
        {
          **v25 = 0;
          *(v25 + 8) = 0;
        }

        else
        {
          *v25 = 0;
          *(v25 + 23) = 0;
        }
      }
    }
  }

  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Clear<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationAccessory_LocationAppRunningTime>::TypeHandler>(this + 176);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Clear<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationAccessory_NavDynamicsHistogram>::TypeHandler>(this + 208);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Clear<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationAccessory_NMEAScreeningLocTypeHistogram>::TypeHandler>(this + 240);
  result = wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Clear<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationAccessory_MessageHistogram>::TypeHandler>(this + 304);
  *v2 = 0;
  return result;
}

uint64_t awd::metrics::LocationAccessory::MergePartialFromCodedStream(awd::metrics::LocationAccessory *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
{
  v5 = (this + 264);
  v6 = (this + 268);
  v7 = (this + 296);
  v8 = (this + 300);
LABEL_2:
  while (2)
  {
    v9 = *(a2 + 1);
    if (v9 >= *(a2 + 2) || (TagFallback = *v9, (TagFallback & 0x80000000) != 0))
    {
      TagFallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadTagFallback(a2);
      *(a2 + 8) = TagFallback;
      if (!TagFallback)
      {
        return 1;
      }
    }

    else
    {
      *(a2 + 8) = TagFallback;
      *(a2 + 1) = v9 + 1;
      if (!TagFallback)
      {
        return 1;
      }
    }

    v11 = TagFallback & 7;
    switch(TagFallback >> 3)
    {
      case 1u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_95;
        }

        v13 = *(a2 + 1);
        v12 = *(a2 + 2);
        if (v13 >= v12 || (v14 = *v13, v14 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 1);
          if (!result)
          {
            return result;
          }

          v15 = *(a2 + 1);
          v12 = *(a2 + 2);
        }

        else
        {
          *(this + 1) = v14;
          v15 = v13 + 1;
          *(a2 + 1) = v15;
        }

        v28 = *(this + 87) | 1;
        *(this + 87) = v28;
        if (v15 < v12 && *v15 == 18)
        {
          *(a2 + 1) = v15 + 1;
          goto LABEL_104;
        }

        continue;
      case 2u:
        if (v11 != 2)
        {
          goto LABEL_95;
        }

        v28 = *(this + 87);
LABEL_104:
        *(this + 87) = v28 | 2;
        if (*(this + 2) == MEMORY[0x29EDC9758])
        {
          operator new();
        }

        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
        if (!result)
        {
          return result;
        }

        v44 = *(a2 + 1);
        if (v44 >= *(a2 + 2) || *v44 != 26)
        {
          continue;
        }

        *(a2 + 1) = v44 + 1;
LABEL_110:
        *(this + 87) |= 4u;
        if (*(this + 3) == MEMORY[0x29EDC9758])
        {
          operator new();
        }

        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
        if (!result)
        {
          return result;
        }

        v45 = *(a2 + 1);
        if (v45 >= *(a2 + 2) || *v45 != 34)
        {
          continue;
        }

        *(a2 + 1) = v45 + 1;
LABEL_116:
        *(this + 87) |= 8u;
        if (*(this + 4) == MEMORY[0x29EDC9758])
        {
          operator new();
        }

        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
        if (!result)
        {
          return result;
        }

        v46 = *(a2 + 1);
        if (v46 >= *(a2 + 2) || *v46 != 42)
        {
          continue;
        }

        *(a2 + 1) = v46 + 1;
LABEL_122:
        *(this + 87) |= 0x10u;
        if (*(this + 5) == MEMORY[0x29EDC9758])
        {
          operator new();
        }

        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
        if (!result)
        {
          return result;
        }

        v47 = *(a2 + 1);
        if (v47 >= *(a2 + 2) || *v47 != 50)
        {
          continue;
        }

        *(a2 + 1) = v47 + 1;
LABEL_128:
        *(this + 87) |= 0x20u;
        if (*(this + 6) == MEMORY[0x29EDC9758])
        {
          operator new();
        }

        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
        if (!result)
        {
          return result;
        }

        v48 = *(a2 + 1);
        v21 = *(a2 + 2);
        if (v48 >= v21 || *v48 != 56)
        {
          continue;
        }

        v32 = v48 + 1;
        *(a2 + 1) = v32;
LABEL_134:
        v235 = 0;
        if (v32 >= v21 || (v49 = *v32, (v49 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v235);
          if (!result)
          {
            return result;
          }

          v49 = v235;
          v50 = *(a2 + 1);
          v21 = *(a2 + 2);
        }

        else
        {
          v50 = v32 + 1;
          *(a2 + 1) = v50;
        }

        *(this + 14) = v49;
        *(this + 87) |= 0x40u;
        if (v50 >= v21 || *v50 != 64)
        {
          continue;
        }

        v27 = v50 + 1;
        *(a2 + 1) = v27;
LABEL_142:
        v235 = 0;
        if (v27 >= v21 || (v51 = *v27, (v51 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v235);
          if (!result)
          {
            return result;
          }

          v51 = v235;
          v52 = *(a2 + 1);
          v21 = *(a2 + 2);
        }

        else
        {
          v52 = v27 + 1;
          *(a2 + 1) = v52;
        }

        *(this + 60) = v51 != 0;
        *(this + 87) |= 0x80u;
        if (v52 >= v21 || *v52 != 72)
        {
          continue;
        }

        v34 = v52 + 1;
        *(a2 + 1) = v34;
LABEL_150:
        if (v34 >= v21 || (v53 = *v34, v53 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 16);
          if (!result)
          {
            return result;
          }

          v54 = *(a2 + 1);
          v21 = *(a2 + 2);
        }

        else
        {
          *(this + 16) = v53;
          v54 = v34 + 1;
          *(a2 + 1) = v54;
        }

        *(this + 87) |= 0x100u;
        if (v54 >= v21 || *v54 != 80)
        {
          continue;
        }

        v24 = v54 + 1;
        *(a2 + 1) = v24;
LABEL_158:
        if (v24 >= v21 || (v55 = *v24, v55 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 17);
          if (!result)
          {
            return result;
          }

          v56 = *(a2 + 1);
          v21 = *(a2 + 2);
        }

        else
        {
          *(this + 17) = v55;
          v56 = v24 + 1;
          *(a2 + 1) = v56;
        }

        *(this + 87) |= 0x200u;
        if (v56 >= v21 || *v56 != 88)
        {
          continue;
        }

        v33 = v56 + 1;
        *(a2 + 1) = v33;
LABEL_166:
        if (v33 >= v21 || (v57 = *v33, v57 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 18);
          if (!result)
          {
            return result;
          }

          v58 = *(a2 + 1);
          v21 = *(a2 + 2);
        }

        else
        {
          *(this + 18) = v57;
          v58 = v33 + 1;
          *(a2 + 1) = v58;
        }

        *(this + 87) |= 0x400u;
        if (v58 >= v21 || *v58 != 96)
        {
          continue;
        }

        v22 = v58 + 1;
        *(a2 + 1) = v22;
LABEL_174:
        if (v22 >= v21 || (v59 = *v22, v59 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 19);
          if (!result)
          {
            return result;
          }

          v60 = *(a2 + 1);
          v21 = *(a2 + 2);
        }

        else
        {
          *(this + 19) = v59;
          v60 = v22 + 1;
          *(a2 + 1) = v60;
        }

        *(this + 87) |= 0x800u;
        if (v60 >= v21 || *v60 != 104)
        {
          continue;
        }

        v23 = v60 + 1;
        *(a2 + 1) = v23;
LABEL_182:
        if (v23 >= v21 || (v61 = *v23, v61 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 30);
          if (!result)
          {
            return result;
          }

          v62 = *(a2 + 1);
          v21 = *(a2 + 2);
        }

        else
        {
          *(this + 30) = v61;
          v62 = v23 + 1;
          *(a2 + 1) = v62;
        }

        v31 = *(this + 87) | 0x1000;
        *(this + 87) = v31;
        if (v62 >= v21 || *v62 != 114)
        {
          continue;
        }

        *(a2 + 1) = v62 + 1;
LABEL_190:
        *(this + 87) = v31 | 0x2000;
        v63 = *(this + 10);
        if (!v63)
        {
          operator new();
        }

        v235 = 0;
        v64 = *(a2 + 1);
        if (v64 >= *(a2 + 2) || *v64 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v235))
          {
            return 0;
          }
        }

        else
        {
          v235 = *v64;
          *(a2 + 1) = v64 + 1;
        }

        v65 = *(a2 + 14);
        v66 = *(a2 + 15);
        *(a2 + 14) = v65 + 1;
        if (v65 >= v66)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
        if (!awd::metrics::LocationAccessory_PerformanceStats::MergePartialFromCodedStream(v63, a2, v67) || *(a2 + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
        v68 = *(a2 + 14);
        v69 = __OFSUB__(v68, 1);
        v70 = v68 - 1;
        if (v70 < 0 == v69)
        {
          *(a2 + 14) = v70;
        }

        v71 = *(a2 + 1);
        if (v71 >= *(a2 + 2) || *v71 != 122)
        {
          continue;
        }

        *(a2 + 1) = v71 + 1;
LABEL_204:
        *(this + 87) |= 0x4000u;
        v72 = *(this + 11);
        if (!v72)
        {
          operator new();
        }

        v235 = 0;
        v73 = *(a2 + 1);
        if (v73 >= *(a2 + 2) || *v73 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v235))
          {
            return 0;
          }
        }

        else
        {
          v235 = *v73;
          *(a2 + 1) = v73 + 1;
        }

        v74 = *(a2 + 14);
        v75 = *(a2 + 15);
        *(a2 + 14) = v74 + 1;
        if (v74 >= v75)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
        if (!awd::metrics::LocationAccessory_PerformanceStats::MergePartialFromCodedStream(v72, a2, v76) || *(a2 + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
        v77 = *(a2 + 14);
        v69 = __OFSUB__(v77, 1);
        v78 = v77 - 1;
        if (v78 < 0 == v69)
        {
          *(a2 + 14) = v78;
        }

        v79 = *(a2 + 1);
        if (*(a2 + 4) - v79 <= 1 || *v79 != 130 || v79[1] != 1)
        {
          continue;
        }

        *(a2 + 1) = v79 + 2;
LABEL_219:
        *(this + 87) |= 0x8000u;
        v80 = *(this + 12);
        if (!v80)
        {
          operator new();
        }

        v235 = 0;
        v81 = *(a2 + 1);
        if (v81 >= *(a2 + 2) || *v81 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v235))
          {
            return 0;
          }
        }

        else
        {
          v235 = *v81;
          *(a2 + 1) = v81 + 1;
        }

        v82 = *(a2 + 14);
        v83 = *(a2 + 15);
        *(a2 + 14) = v82 + 1;
        if (v82 >= v83)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
        if (!awd::metrics::LocationAccessory_PerformanceStats::MergePartialFromCodedStream(v80, a2, v84) || *(a2 + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
        v85 = *(a2 + 14);
        v69 = __OFSUB__(v85, 1);
        v86 = v85 - 1;
        if (v86 < 0 == v69)
        {
          *(a2 + 14) = v86;
        }

        v87 = *(a2 + 1);
        if (*(a2 + 4) - v87 <= 1 || *v87 != 138 || v87[1] != 1)
        {
          continue;
        }

        *(a2 + 1) = v87 + 2;
LABEL_234:
        *(this + 87) |= 0x10000u;
        v88 = *(this + 13);
        if (!v88)
        {
          operator new();
        }

        v235 = 0;
        v89 = *(a2 + 1);
        if (v89 >= *(a2 + 2) || *v89 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v235))
          {
            return 0;
          }
        }

        else
        {
          v235 = *v89;
          *(a2 + 1) = v89 + 1;
        }

        v90 = *(a2 + 14);
        v91 = *(a2 + 15);
        *(a2 + 14) = v90 + 1;
        if (v90 >= v91)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
        if (!awd::metrics::LocationAccessory_PerformanceStats::MergePartialFromCodedStream(v88, a2, v92) || *(a2 + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
        v93 = *(a2 + 14);
        v69 = __OFSUB__(v93, 1);
        v94 = v93 - 1;
        if (v94 < 0 == v69)
        {
          *(a2 + 14) = v94;
        }

        v95 = *(a2 + 1);
        if (*(a2 + 4) - v95 <= 1 || *v95 != 146 || v95[1] != 1)
        {
          continue;
        }

        *(a2 + 1) = v95 + 2;
LABEL_249:
        *(this + 87) |= 0x20000u;
        v96 = *(this + 14);
        if (!v96)
        {
          operator new();
        }

        v235 = 0;
        v97 = *(a2 + 1);
        if (v97 >= *(a2 + 2) || *v97 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v235))
          {
            return 0;
          }
        }

        else
        {
          v235 = *v97;
          *(a2 + 1) = v97 + 1;
        }

        v98 = *(a2 + 14);
        v99 = *(a2 + 15);
        *(a2 + 14) = v98 + 1;
        if (v98 >= v99)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
        if (!awd::metrics::LocationAccessory_SpeedPerformanceStats::MergePartialFromCodedStream(v96, a2, v100) || *(a2 + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
        v101 = *(a2 + 14);
        v69 = __OFSUB__(v101, 1);
        v102 = v101 - 1;
        if (v102 < 0 == v69)
        {
          *(a2 + 14) = v102;
        }

        v103 = *(a2 + 1);
        if (*(a2 + 4) - v103 <= 1 || *v103 != 154 || v103[1] != 1)
        {
          continue;
        }

        *(a2 + 1) = v103 + 2;
LABEL_264:
        *(this + 87) |= 0x40000u;
        v104 = *(this + 16);
        if (!v104)
        {
          operator new();
        }

        v235 = 0;
        v105 = *(a2 + 1);
        if (v105 >= *(a2 + 2) || *v105 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v235))
          {
            return 0;
          }
        }

        else
        {
          v235 = *v105;
          *(a2 + 1) = v105 + 1;
        }

        v106 = *(a2 + 14);
        v107 = *(a2 + 15);
        *(a2 + 14) = v106 + 1;
        if (v106 >= v107)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
        if (!awd::metrics::LocationAccessory_MessageStats::MergePartialFromCodedStream(v104, a2, v108) || *(a2 + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
        v109 = *(a2 + 14);
        v69 = __OFSUB__(v109, 1);
        v110 = v109 - 1;
        if (v110 < 0 == v69)
        {
          *(a2 + 14) = v110;
        }

        v111 = *(a2 + 1);
        if (*(a2 + 4) - v111 <= 1 || *v111 != 162 || v111[1] != 1)
        {
          continue;
        }

        *(a2 + 1) = v111 + 2;
LABEL_279:
        *(this + 87) |= 0x80000u;
        v112 = *(this + 17);
        if (!v112)
        {
          operator new();
        }

        v235 = 0;
        v113 = *(a2 + 1);
        if (v113 >= *(a2 + 2) || *v113 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v235))
          {
            return 0;
          }
        }

        else
        {
          v235 = *v113;
          *(a2 + 1) = v113 + 1;
        }

        v114 = *(a2 + 14);
        v115 = *(a2 + 15);
        *(a2 + 14) = v114 + 1;
        if (v114 >= v115)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
        if (!awd::metrics::LocationAccessory_MessageStats::MergePartialFromCodedStream(v112, a2, v116) || *(a2 + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
        v117 = *(a2 + 14);
        v69 = __OFSUB__(v117, 1);
        v118 = v117 - 1;
        if (v118 < 0 == v69)
        {
          *(a2 + 14) = v118;
        }

        v119 = *(a2 + 1);
        if (*(a2 + 4) - v119 <= 1 || *v119 != 170 || v119[1] != 1)
        {
          continue;
        }

        *(a2 + 1) = v119 + 2;
LABEL_294:
        *(this + 87) |= 0x100000u;
        v120 = *(this + 18);
        if (!v120)
        {
          operator new();
        }

        v235 = 0;
        v121 = *(a2 + 1);
        if (v121 >= *(a2 + 2) || *v121 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v235))
          {
            return 0;
          }
        }

        else
        {
          v235 = *v121;
          *(a2 + 1) = v121 + 1;
        }

        v122 = *(a2 + 14);
        v123 = *(a2 + 15);
        *(a2 + 14) = v122 + 1;
        if (v122 >= v123)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
        if (!awd::metrics::LocationAccessory_MessageStats::MergePartialFromCodedStream(v120, a2, v124) || *(a2 + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
        v125 = *(a2 + 14);
        v69 = __OFSUB__(v125, 1);
        v126 = v125 - 1;
        if (v126 < 0 == v69)
        {
          *(a2 + 14) = v126;
        }

        v127 = *(a2 + 1);
        if (*(a2 + 4) - v127 <= 1 || *v127 != 178 || v127[1] != 1)
        {
          continue;
        }

        *(a2 + 1) = v127 + 2;
LABEL_309:
        *(this + 87) |= 0x200000u;
        v128 = *(this + 19);
        if (!v128)
        {
          operator new();
        }

        v235 = 0;
        v129 = *(a2 + 1);
        if (v129 >= *(a2 + 2) || *v129 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v235))
          {
            return 0;
          }
        }

        else
        {
          v235 = *v129;
          *(a2 + 1) = v129 + 1;
        }

        v130 = *(a2 + 14);
        v131 = *(a2 + 15);
        *(a2 + 14) = v130 + 1;
        if (v130 >= v131)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
        if (!awd::metrics::LocationAccessory_PASCDStats::MergePartialFromCodedStream(v128, a2, v132) || *(a2 + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
        v133 = *(a2 + 14);
        v69 = __OFSUB__(v133, 1);
        v134 = v133 - 1;
        if (v134 < 0 == v69)
        {
          *(a2 + 14) = v134;
        }

        v135 = *(a2 + 1);
        if (*(a2 + 4) - v135 <= 1 || *v135 != 186 || v135[1] != 1)
        {
          continue;
        }

        *(a2 + 1) = v135 + 2;
LABEL_324:
        *(this + 87) |= 0x400000u;
        v136 = *(this + 20);
        if (!v136)
        {
          operator new();
        }

        v235 = 0;
        v137 = *(a2 + 1);
        if (v137 >= *(a2 + 2) || *v137 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v235))
          {
            return 0;
          }
        }

        else
        {
          v235 = *v137;
          *(a2 + 1) = v137 + 1;
        }

        v138 = *(a2 + 14);
        v139 = *(a2 + 15);
        *(a2 + 14) = v138 + 1;
        if (v138 >= v139)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
        if (!awd::metrics::LocationAccessory_Coordinate::MergePartialFromCodedStream(v136, a2, v140) || *(a2 + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
        v141 = *(a2 + 14);
        v69 = __OFSUB__(v141, 1);
        v142 = v141 - 1;
        if (v142 < 0 == v69)
        {
          *(a2 + 14) = v142;
        }

        v143 = *(a2 + 1);
        v25 = *(a2 + 2);
        if (v25 - v143 <= 1 || *v143 != 192 || v143[1] != 1)
        {
          continue;
        }

        v39 = (v143 + 2);
        *(a2 + 1) = v39;
LABEL_339:
        if (v39 >= v25 || (v144 = *v39, v144 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 31);
          if (!result)
          {
            return result;
          }

          v145 = *(a2 + 1);
          v25 = *(a2 + 2);
        }

        else
        {
          *(this + 31) = v144;
          v145 = (v39 + 1);
          *(a2 + 1) = v145;
        }

        *(this + 87) |= 0x800000u;
        if (v25 - v145 < 2 || *v145 != 200 || v145[1] != 1)
        {
          continue;
        }

        v26 = (v145 + 2);
        *(a2 + 1) = v26;
LABEL_348:
        if (v26 >= v25 || (v146 = *v26, v146 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 42);
          if (!result)
          {
            return result;
          }

          v147 = *(a2 + 1);
          v25 = *(a2 + 2);
        }

        else
        {
          *(this + 42) = v146;
          v147 = (v26 + 1);
          *(a2 + 1) = v147;
        }

        *(this + 87) |= 0x1000000u;
        if (v25 - v147 < 2 || *v147 != 210 || v147[1] != 1)
        {
          continue;
        }

        while (1)
        {
          *(a2 + 1) = v147 + 2;
LABEL_357:
          v148 = *(this + 47);
          v149 = *(this + 46);
          if (v149 >= v148)
          {
            if (v148 == *(this + 48))
            {
              wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 176));
              v148 = *(this + 47);
            }

            *(this + 47) = v148 + 1;
            operator new();
          }

          v150 = *(this + 22);
          *(this + 46) = v149 + 1;
          v151 = *(v150 + 8 * v149);
          v235 = 0;
          v152 = *(a2 + 1);
          if (v152 >= *(a2 + 2) || *v152 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v235))
            {
              return 0;
            }
          }

          else
          {
            v235 = *v152;
            *(a2 + 1) = v152 + 1;
          }

          v153 = *(a2 + 14);
          v154 = *(a2 + 15);
          *(a2 + 14) = v153 + 1;
          if (v153 >= v154)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
          if (!awd::metrics::LocationAccessory_LocationAppRunningTime::MergePartialFromCodedStream(v151, a2, v155) || *(a2 + 36) != 1)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
          v156 = *(a2 + 14);
          v69 = __OFSUB__(v156, 1);
          v157 = v156 - 1;
          if (v157 < 0 == v69)
          {
            *(a2 + 14) = v157;
          }

          v147 = *(a2 + 1);
          v17 = *(a2 + 2);
          if (v17 - v147 <= 1)
          {
            goto LABEL_2;
          }

          v158 = *v147;
          if (v158 == 216)
          {
            break;
          }

          if (v158 != 210 || v147[1] != 1)
          {
            goto LABEL_2;
          }
        }

        if (v147[1] != 1)
        {
          continue;
        }

        v42 = (v147 + 2);
        *(a2 + 1) = v42;
LABEL_378:
        if (v42 >= v17 || (v159 = *v42, v159 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 43);
          if (!result)
          {
            return result;
          }

          v160 = *(a2 + 1);
          v17 = *(a2 + 2);
        }

        else
        {
          *(this + 43) = v159;
          v160 = (v42 + 1);
          *(a2 + 1) = v160;
        }

        *(this + 87) |= 0x4000000u;
        if (v17 - v160 < 2 || *v160 != 224 || v160[1] != 1)
        {
          continue;
        }

        v18 = (v160 + 2);
        *(a2 + 1) = v18;
LABEL_387:
        if (v18 >= v17 || (v161 = *v18, v161 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 50);
          if (!result)
          {
            return result;
          }

          v162 = *(a2 + 1);
          v17 = *(a2 + 2);
        }

        else
        {
          *(this + 50) = v161;
          v162 = (v18 + 1);
          *(a2 + 1) = v162;
        }

        *(this + 87) |= 0x8000000u;
        if (v17 - v162 < 2 || *v162 != 232 || v162[1] != 1)
        {
          continue;
        }

        v40 = (v162 + 2);
        *(a2 + 1) = v40;
LABEL_396:
        if (v40 >= v17 || (v163 = *v40, v163 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 51);
          if (!result)
          {
            return result;
          }

          v164 = *(a2 + 1);
          v17 = *(a2 + 2);
        }

        else
        {
          *(this + 51) = v163;
          v164 = (v40 + 1);
          *(a2 + 1) = v164;
        }

        *(this + 87) |= 0x10000000u;
        if (v17 - v164 < 2 || *v164 != 242 || v164[1] != 1)
        {
          continue;
        }

        while (1)
        {
          *(a2 + 1) = v164 + 2;
LABEL_405:
          v165 = *(this + 55);
          v166 = *(this + 54);
          if (v166 >= v165)
          {
            if (v165 == *(this + 56))
            {
              wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 208));
              v165 = *(this + 55);
            }

            *(this + 55) = v165 + 1;
            operator new();
          }

          v167 = *(this + 26);
          *(this + 54) = v166 + 1;
          v168 = *(v167 + 8 * v166);
          v235 = 0;
          v169 = *(a2 + 1);
          if (v169 >= *(a2 + 2) || *v169 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v235))
            {
              return 0;
            }
          }

          else
          {
            v235 = *v169;
            *(a2 + 1) = v169 + 1;
          }

          v170 = *(a2 + 14);
          v171 = *(a2 + 15);
          *(a2 + 14) = v170 + 1;
          if (v170 >= v171)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
          if (!awd::metrics::LocationAccessory_NavDynamicsHistogram::MergePartialFromCodedStream(v168, a2, v172) || *(a2 + 36) != 1)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
          v173 = *(a2 + 14);
          v69 = __OFSUB__(v173, 1);
          v174 = v173 - 1;
          if (v174 < 0 == v69)
          {
            *(a2 + 14) = v174;
          }

          v164 = *(a2 + 1);
          v29 = *(a2 + 2);
          if (v29 - v164 <= 1)
          {
            goto LABEL_2;
          }

          v175 = *v164;
          if (v175 == 248)
          {
            break;
          }

          if (v175 != 242 || v164[1] != 1)
          {
            goto LABEL_2;
          }
        }

        if (v164[1] != 1)
        {
          continue;
        }

        v35 = (v164 + 2);
        *(a2 + 1) = v35;
LABEL_426:
        if (v35 >= v29 || (v176 = *v35, v176 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 58);
          if (!result)
          {
            return result;
          }

          v177 = *(a2 + 1);
          v29 = *(a2 + 2);
        }

        else
        {
          *(this + 58) = v176;
          v177 = (v35 + 1);
          *(a2 + 1) = v177;
        }

        *(this + 87) |= 0x40000000u;
        if (v29 - v177 < 2 || *v177 != 128 || v177[1] != 2)
        {
          continue;
        }

        v30 = (v177 + 2);
        *(a2 + 1) = v30;
LABEL_435:
        if (v30 >= v29 || (v178 = *v30, v178 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 59);
          if (!result)
          {
            return result;
          }

          v179 = *(a2 + 1);
          v29 = *(a2 + 2);
        }

        else
        {
          *(this + 59) = v178;
          v179 = (v30 + 1);
          *(a2 + 1) = v179;
        }

        *(this + 87) |= 0x80000000;
        if (v29 - v179 < 2 || *v179 != 136 || v179[1] != 2)
        {
          continue;
        }

        v36 = (v179 + 2);
        *(a2 + 1) = v36;
LABEL_444:
        if (v36 >= v29 || (v180 = *v36, (v180 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v5);
          if (!result)
          {
            return result;
          }

          v181 = *(a2 + 1);
          v29 = *(a2 + 2);
        }

        else
        {
          *v5 = v180;
          v181 = (v36 + 1);
          *(a2 + 1) = v181;
        }

        *(this + 88) |= 1u;
        if (v29 - v181 < 2 || *v181 != 146 || v181[1] != 2)
        {
          continue;
        }

        while (1)
        {
          *(a2 + 1) = v181 + 2;
LABEL_453:
          v182 = *(this + 63);
          v183 = *(this + 62);
          if (v183 >= v182)
          {
            if (v182 == *(this + 64))
            {
              wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 240));
              v182 = *(this + 63);
            }

            *(this + 63) = v182 + 1;
            operator new();
          }

          v184 = *(this + 30);
          *(this + 62) = v183 + 1;
          v185 = *(v184 + 8 * v183);
          v235 = 0;
          v186 = *(a2 + 1);
          if (v186 >= *(a2 + 2) || *v186 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v235))
            {
              return 0;
            }
          }

          else
          {
            v235 = *v186;
            *(a2 + 1) = v186 + 1;
          }

          v187 = *(a2 + 14);
          v188 = *(a2 + 15);
          *(a2 + 14) = v187 + 1;
          if (v187 >= v188)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
          if (!awd::metrics::LocationAccessory_NMEAScreeningLocTypeHistogram::MergePartialFromCodedStream(v185, a2, v189) || *(a2 + 36) != 1)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
          v190 = *(a2 + 14);
          v69 = __OFSUB__(v190, 1);
          v191 = v190 - 1;
          if (v191 < 0 == v69)
          {
            *(a2 + 14) = v191;
          }

          v181 = *(a2 + 1);
          v19 = *(a2 + 2);
          if (v19 - v181 <= 1)
          {
            goto LABEL_2;
          }

          v192 = *v181;
          if (v192 == 152)
          {
            break;
          }

          if (v192 != 146 || v181[1] != 2)
          {
            goto LABEL_2;
          }
        }

        if (v181[1] != 2)
        {
          continue;
        }

        v20 = (v181 + 2);
        *(a2 + 1) = v20;
LABEL_474:
        if (v20 >= v19 || (v193 = *v20, (v193 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v6);
          if (!result)
          {
            return result;
          }

          v194 = *(a2 + 1);
          v19 = *(a2 + 2);
        }

        else
        {
          *v6 = v193;
          v194 = (v20 + 1);
          *(a2 + 1) = v194;
        }

        v16 = *(this + 88) | 4;
        *(this + 88) = v16;
        if (v19 - v194 < 2 || *v194 != 162 || v194[1] != 2)
        {
          continue;
        }

        *(a2 + 1) = v194 + 2;
LABEL_483:
        *(this + 88) = v16 | 8;
        v195 = *(this + 34);
        if (!v195)
        {
          operator new();
        }

        v235 = 0;
        v196 = *(a2 + 1);
        if (v196 >= *(a2 + 2) || *v196 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v235))
          {
            return 0;
          }
        }

        else
        {
          v235 = *v196;
          *(a2 + 1) = v196 + 1;
        }

        v197 = *(a2 + 14);
        v198 = *(a2 + 15);
        *(a2 + 14) = v197 + 1;
        if (v197 >= v198)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
        if (!awd::metrics::LocationAccessory_DeviceChargingStats::MergePartialFromCodedStream(v195, a2, v199) || *(a2 + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
        v200 = *(a2 + 14);
        v69 = __OFSUB__(v200, 1);
        v201 = v200 - 1;
        if (v201 < 0 == v69)
        {
          *(a2 + 14) = v201;
        }

        v202 = *(a2 + 1);
        if (*(a2 + 4) - v202 <= 1 || *v202 != 170 || v202[1] != 2)
        {
          continue;
        }

        *(a2 + 1) = v202 + 2;
LABEL_498:
        *(this + 88) |= 0x10u;
        v203 = *(this + 35);
        if (!v203)
        {
          operator new();
        }

        v235 = 0;
        v204 = *(a2 + 1);
        if (v204 >= *(a2 + 2) || *v204 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v235))
          {
            return 0;
          }
        }

        else
        {
          v235 = *v204;
          *(a2 + 1) = v204 + 1;
        }

        v205 = *(a2 + 14);
        v206 = *(a2 + 15);
        *(a2 + 14) = v205 + 1;
        if (v205 >= v206)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
        if (!awd::metrics::LocationAccessory_Statistics::MergePartialFromCodedStream(v203, a2, v207) || *(a2 + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
        v208 = *(a2 + 14);
        v69 = __OFSUB__(v208, 1);
        v209 = v208 - 1;
        if (v209 < 0 == v69)
        {
          *(a2 + 14) = v209;
        }

        v210 = *(a2 + 1);
        if (*(a2 + 4) - v210 <= 1 || *v210 != 178 || v210[1] != 2)
        {
          continue;
        }

        *(a2 + 1) = v210 + 2;
LABEL_513:
        *(this + 88) |= 0x20u;
        v211 = *(this + 36);
        if (!v211)
        {
          operator new();
        }

        v235 = 0;
        v212 = *(a2 + 1);
        if (v212 >= *(a2 + 2) || *v212 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v235))
          {
            return 0;
          }
        }

        else
        {
          v235 = *v212;
          *(a2 + 1) = v212 + 1;
        }

        v213 = *(a2 + 14);
        v214 = *(a2 + 15);
        *(a2 + 14) = v213 + 1;
        if (v213 < v214)
        {
          wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
          if (awd::metrics::LocationAccessory_Statistics::MergePartialFromCodedStream(v211, a2, v215))
          {
            if (*(a2 + 36) == 1)
            {
              wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
              v216 = *(a2 + 14);
              v69 = __OFSUB__(v216, 1);
              v217 = v216 - 1;
              if (v217 < 0 == v69)
              {
                *(a2 + 14) = v217;
              }

              v218 = *(a2 + 1);
              v37 = *(a2 + 2);
              if (v37 - v218 > 1 && *v218 == 184 && v218[1] == 2)
              {
                v41 = (v218 + 2);
                *(a2 + 1) = v41;
LABEL_528:
                if (v41 >= v37 || (v219 = *v41, (v219 & 0x80000000) != 0))
                {
                  result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v7);
                  if (!result)
                  {
                    return result;
                  }

                  v220 = *(a2 + 1);
                  v37 = *(a2 + 2);
                }

                else
                {
                  *v7 = v219;
                  v220 = (v41 + 1);
                  *(a2 + 1) = v220;
                }

                *(this + 88) |= 0x40u;
                if (v37 - v220 >= 2 && *v220 == 192 && v220[1] == 2)
                {
                  v38 = (v220 + 2);
                  *(a2 + 1) = v38;
LABEL_537:
                  if (v38 >= v37 || (v221 = *v38, (v221 & 0x80000000) != 0))
                  {
                    result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v8);
                    if (!result)
                    {
                      return result;
                    }

                    v222 = *(a2 + 1);
                    v37 = *(a2 + 2);
                  }

                  else
                  {
                    *v8 = v221;
                    v222 = (v38 + 1);
                    *(a2 + 1) = v222;
                  }

                  *(this + 88) |= 0x80u;
                  if (v37 - v222 >= 2 && *v222 == 202 && v222[1] == 2)
                  {
                    while (1)
                    {
                      *(a2 + 1) = v222 + 2;
LABEL_546:
                      v223 = *(this + 78);
                      v224 = *(this + 79);
                      if (v223 >= v224)
                      {
                        if (v224 == *(this + 80))
                        {
                          wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 304));
                          v224 = *(this + 79);
                        }

                        *(this + 79) = v224 + 1;
                        operator new();
                      }

                      v225 = *(this + 38);
                      *(this + 78) = v223 + 1;
                      v226 = *(v225 + 8 * v223);
                      v235 = 0;
                      v227 = *(a2 + 1);
                      if (v227 >= *(a2 + 2) || *v227 < 0)
                      {
                        if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v235))
                        {
                          return 0;
                        }
                      }

                      else
                      {
                        v235 = *v227;
                        *(a2 + 1) = v227 + 1;
                      }

                      v228 = *(a2 + 14);
                      v229 = *(a2 + 15);
                      *(a2 + 14) = v228 + 1;
                      if (v228 >= v229)
                      {
                        return 0;
                      }

                      wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
                      if (!awd::metrics::LocationAccessory_MessageHistogram::MergePartialFromCodedStream(v226, a2, v230) || *(a2 + 36) != 1)
                      {
                        return 0;
                      }

                      wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
                      v231 = *(a2 + 14);
                      v69 = __OFSUB__(v231, 1);
                      v232 = v231 - 1;
                      if (v232 < 0 == v69)
                      {
                        *(a2 + 14) = v232;
                      }

                      v222 = *(a2 + 1);
                      if (*(a2 + 4) - v222 <= 1)
                      {
                        goto LABEL_2;
                      }

                      v233 = *v222;
                      if (v233 == 210)
                      {
                        break;
                      }

                      if (v233 != 202 || v222[1] != 2)
                      {
                        goto LABEL_2;
                      }
                    }

                    if (v222[1] == 2)
                    {
                      *(a2 + 1) = v222 + 2;
LABEL_567:
                      *(this + 88) |= 0x200u;
                      if (*(this + 41) == MEMORY[0x29EDC9758])
                      {
                        operator new();
                      }

                      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
                      if (!result)
                      {
                        return result;
                      }

                      v234 = *(a2 + 1);
                      if (*(a2 + 4) - v234 >= 2 && *v234 == 218 && v234[1] == 2)
                      {
                        *(a2 + 1) = v234 + 2;
LABEL_574:
                        *(this + 88) |= 0x400u;
                        if (*(this + 42) == MEMORY[0x29EDC9758])
                        {
                          operator new();
                        }

                        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
                        if (!result)
                        {
                          return result;
                        }

                        if (*(a2 + 1) == *(a2 + 2) && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
                        {
                          *(a2 + 8) = 0;
                          result = 1;
                          *(a2 + 36) = 1;
                          return result;
                        }
                      }
                    }
                  }
                }
              }

              continue;
            }
          }
        }

        return 0;
      case 3u:
        if (v11 == 2)
        {
          goto LABEL_110;
        }

        goto LABEL_95;
      case 4u:
        if (v11 == 2)
        {
          goto LABEL_116;
        }

        goto LABEL_95;
      case 5u:
        if (v11 == 2)
        {
          goto LABEL_122;
        }

        goto LABEL_95;
      case 6u:
        if (v11 == 2)
        {
          goto LABEL_128;
        }

        goto LABEL_95;
      case 7u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_95;
        }

        v32 = *(a2 + 1);
        v21 = *(a2 + 2);
        goto LABEL_134;
      case 8u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_95;
        }

        v27 = *(a2 + 1);
        v21 = *(a2 + 2);
        goto LABEL_142;
      case 9u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_95;
        }

        v34 = *(a2 + 1);
        v21 = *(a2 + 2);
        goto LABEL_150;
      case 0xAu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_95;
        }

        v24 = *(a2 + 1);
        v21 = *(a2 + 2);
        goto LABEL_158;
      case 0xBu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_95;
        }

        v33 = *(a2 + 1);
        v21 = *(a2 + 2);
        goto LABEL_166;
      case 0xCu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_95;
        }

        v22 = *(a2 + 1);
        v21 = *(a2 + 2);
        goto LABEL_174;
      case 0xDu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_95;
        }

        v23 = *(a2 + 1);
        v21 = *(a2 + 2);
        goto LABEL_182;
      case 0xEu:
        if (v11 != 2)
        {
          goto LABEL_95;
        }

        v31 = *(this + 87);
        goto LABEL_190;
      case 0xFu:
        if (v11 == 2)
        {
          goto LABEL_204;
        }

        goto LABEL_95;
      case 0x10u:
        if (v11 == 2)
        {
          goto LABEL_219;
        }

        goto LABEL_95;
      case 0x11u:
        if (v11 == 2)
        {
          goto LABEL_234;
        }

        goto LABEL_95;
      case 0x12u:
        if (v11 == 2)
        {
          goto LABEL_249;
        }

        goto LABEL_95;
      case 0x13u:
        if (v11 == 2)
        {
          goto LABEL_264;
        }

        goto LABEL_95;
      case 0x14u:
        if (v11 == 2)
        {
          goto LABEL_279;
        }

        goto LABEL_95;
      case 0x15u:
        if (v11 == 2)
        {
          goto LABEL_294;
        }

        goto LABEL_95;
      case 0x16u:
        if (v11 == 2)
        {
          goto LABEL_309;
        }

        goto LABEL_95;
      case 0x17u:
        if (v11 == 2)
        {
          goto LABEL_324;
        }

        goto LABEL_95;
      case 0x18u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_95;
        }

        v39 = *(a2 + 1);
        v25 = *(a2 + 2);
        goto LABEL_339;
      case 0x19u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_95;
        }

        v26 = *(a2 + 1);
        v25 = *(a2 + 2);
        goto LABEL_348;
      case 0x1Au:
        if (v11 == 2)
        {
          goto LABEL_357;
        }

        goto LABEL_95;
      case 0x1Bu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_95;
        }

        v42 = *(a2 + 1);
        v17 = *(a2 + 2);
        goto LABEL_378;
      case 0x1Cu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_95;
        }

        v18 = *(a2 + 1);
        v17 = *(a2 + 2);
        goto LABEL_387;
      case 0x1Du:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_95;
        }

        v40 = *(a2 + 1);
        v17 = *(a2 + 2);
        goto LABEL_396;
      case 0x1Eu:
        if (v11 == 2)
        {
          goto LABEL_405;
        }

        goto LABEL_95;
      case 0x1Fu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_95;
        }

        v35 = *(a2 + 1);
        v29 = *(a2 + 2);
        goto LABEL_426;
      case 0x20u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_95;
        }

        v30 = *(a2 + 1);
        v29 = *(a2 + 2);
        goto LABEL_435;
      case 0x21u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_95;
        }

        v36 = *(a2 + 1);
        v29 = *(a2 + 2);
        goto LABEL_444;
      case 0x22u:
        if (v11 == 2)
        {
          goto LABEL_453;
        }

        goto LABEL_95;
      case 0x23u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_95;
        }

        v20 = *(a2 + 1);
        v19 = *(a2 + 2);
        goto LABEL_474;
      case 0x24u:
        if (v11 != 2)
        {
          goto LABEL_95;
        }

        v16 = *(this + 88);
        goto LABEL_483;
      case 0x25u:
        if (v11 == 2)
        {
          goto LABEL_498;
        }

        goto LABEL_95;
      case 0x26u:
        if (v11 == 2)
        {
          goto LABEL_513;
        }

        goto LABEL_95;
      case 0x27u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_95;
        }

        v41 = *(a2 + 1);
        v37 = *(a2 + 2);
        goto LABEL_528;
      case 0x28u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_95;
        }

        v38 = *(a2 + 1);
        v37 = *(a2 + 2);
        goto LABEL_537;
      case 0x29u:
        if (v11 == 2)
        {
          goto LABEL_546;
        }

        goto LABEL_95;
      case 0x2Au:
        if (v11 == 2)
        {
          goto LABEL_567;
        }

        goto LABEL_95;
      case 0x2Bu:
        if (v11 == 2)
        {
          goto LABEL_574;
        }

        goto LABEL_95;
      default:
LABEL_95:
        if (v11 == 4)
        {
          return 1;
        }

        if ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(a2, TagFallback) & 1) == 0)
        {
          return 0;
        }

        continue;
    }
  }
}

uint64_t awd::metrics::LocationAccessory::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 348);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(1, *(this + 8), a2, a4);
    v6 = *(v5 + 348);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_62;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
  v6 = *(v5 + 348);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_63;
  }

LABEL_62:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
  v6 = *(v5 + 348);
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_64;
  }

LABEL_63:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
  v6 = *(v5 + 348);
  if ((v6 & 0x10) == 0)
  {
LABEL_6:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_65;
  }

LABEL_64:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
  v6 = *(v5 + 348);
  if ((v6 & 0x20) == 0)
  {
LABEL_7:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_66;
  }

LABEL_65:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
  v6 = *(v5 + 348);
  if ((v6 & 0x40) == 0)
  {
LABEL_8:
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_67;
  }

LABEL_66:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(7, *(v5 + 56), a2, a4);
  v6 = *(v5 + 348);
  if ((v6 & 0x80) == 0)
  {
LABEL_9:
    if ((v6 & 0x100) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_68;
  }

LABEL_67:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(8, *(v5 + 60), a2, a4);
  v6 = *(v5 + 348);
  if ((v6 & 0x100) == 0)
  {
LABEL_10:
    if ((v6 & 0x200) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_69;
  }

LABEL_68:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(9, *(v5 + 64), a2, a4);
  v6 = *(v5 + 348);
  if ((v6 & 0x200) == 0)
  {
LABEL_11:
    if ((v6 & 0x400) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_70;
  }

LABEL_69:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xA, *(v5 + 68), a2, a4);
  v6 = *(v5 + 348);
  if ((v6 & 0x400) == 0)
  {
LABEL_12:
    if ((v6 & 0x800) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_71;
  }

LABEL_70:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xB, *(v5 + 72), a2, a4);
  v6 = *(v5 + 348);
  if ((v6 & 0x800) == 0)
  {
LABEL_13:
    if ((v6 & 0x1000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_72;
  }

LABEL_71:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xC, *(v5 + 76), a2, a4);
  v6 = *(v5 + 348);
  if ((v6 & 0x1000) == 0)
  {
LABEL_14:
    if ((v6 & 0x2000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_73;
  }

LABEL_72:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xD, *(v5 + 120), a2, a4);
  v6 = *(v5 + 348);
  if ((v6 & 0x2000) == 0)
  {
LABEL_15:
    if ((v6 & 0x4000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_76;
  }

LABEL_73:
  v15 = *(v5 + 80);
  if (!v15)
  {
    v15 = *(awd::metrics::LocationAccessory::default_instance_ + 80);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0xE, v15, a2, a4);
  v6 = *(v5 + 348);
  if ((v6 & 0x4000) == 0)
  {
LABEL_16:
    if ((v6 & 0x8000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_79;
  }

LABEL_76:
  v16 = *(v5 + 88);
  if (!v16)
  {
    v16 = *(awd::metrics::LocationAccessory::default_instance_ + 88);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0xF, v16, a2, a4);
  v6 = *(v5 + 348);
  if ((v6 & 0x8000) == 0)
  {
LABEL_17:
    if ((v6 & 0x10000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_82;
  }

LABEL_79:
  v17 = *(v5 + 96);
  if (!v17)
  {
    v17 = *(awd::metrics::LocationAccessory::default_instance_ + 96);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x10, v17, a2, a4);
  v6 = *(v5 + 348);
  if ((v6 & 0x10000) == 0)
  {
LABEL_18:
    if ((v6 & 0x20000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_85;
  }

LABEL_82:
  v18 = *(v5 + 104);
  if (!v18)
  {
    v18 = *(awd::metrics::LocationAccessory::default_instance_ + 104);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x11, v18, a2, a4);
  v6 = *(v5 + 348);
  if ((v6 & 0x20000) == 0)
  {
LABEL_19:
    if ((v6 & 0x40000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_88;
  }

LABEL_85:
  v19 = *(v5 + 112);
  if (!v19)
  {
    v19 = *(awd::metrics::LocationAccessory::default_instance_ + 112);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x12, v19, a2, a4);
  v6 = *(v5 + 348);
  if ((v6 & 0x40000) == 0)
  {
LABEL_20:
    if ((v6 & 0x80000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_91;
  }

LABEL_88:
  v20 = *(v5 + 128);
  if (!v20)
  {
    v20 = *(awd::metrics::LocationAccessory::default_instance_ + 128);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x13, v20, a2, a4);
  v6 = *(v5 + 348);
  if ((v6 & 0x80000) == 0)
  {
LABEL_21:
    if ((v6 & 0x100000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_94;
  }

LABEL_91:
  v21 = *(v5 + 136);
  if (!v21)
  {
    v21 = *(awd::metrics::LocationAccessory::default_instance_ + 136);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x14, v21, a2, a4);
  v6 = *(v5 + 348);
  if ((v6 & 0x100000) == 0)
  {
LABEL_22:
    if ((v6 & 0x200000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_97;
  }

LABEL_94:
  v22 = *(v5 + 144);
  if (!v22)
  {
    v22 = *(awd::metrics::LocationAccessory::default_instance_ + 144);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x15, v22, a2, a4);
  v6 = *(v5 + 348);
  if ((v6 & 0x200000) == 0)
  {
LABEL_23:
    if ((v6 & 0x400000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_100;
  }

LABEL_97:
  v23 = *(v5 + 152);
  if (!v23)
  {
    v23 = *(awd::metrics::LocationAccessory::default_instance_ + 152);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x16, v23, a2, a4);
  v6 = *(v5 + 348);
  if ((v6 & 0x400000) == 0)
  {
LABEL_24:
    if ((v6 & 0x800000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_103;
  }

LABEL_100:
  v24 = *(v5 + 160);
  if (!v24)
  {
    v24 = *(awd::metrics::LocationAccessory::default_instance_ + 160);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x17, v24, a2, a4);
  v6 = *(v5 + 348);
  if ((v6 & 0x800000) == 0)
  {
LABEL_25:
    if ((v6 & 0x1000000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_26;
  }

LABEL_103:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x18, *(v5 + 124), a2, a4);
  if ((*(v5 + 348) & 0x1000000) != 0)
  {
LABEL_26:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x19, *(v5 + 168), a2, a4);
  }

LABEL_27:
  if (*(v5 + 184) >= 1)
  {
    v7 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x1A, *(*(v5 + 176) + 8 * v7++), a2, a4);
    }

    while (v7 < *(v5 + 184));
  }

  v8 = *(v5 + 348);
  if ((v8 & 0x4000000) != 0)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x1B, *(v5 + 172), a2, a4);
    v8 = *(v5 + 348);
    if ((v8 & 0x8000000) == 0)
    {
LABEL_32:
      if ((v8 & 0x10000000) == 0)
      {
        goto LABEL_34;
      }

      goto LABEL_33;
    }
  }

  else if ((v8 & 0x8000000) == 0)
  {
    goto LABEL_32;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x1C, *(v5 + 200), a2, a4);
  if ((*(v5 + 348) & 0x10000000) != 0)
  {
LABEL_33:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x1D, *(v5 + 204), a2, a4);
  }

LABEL_34:
  if (*(v5 + 216) >= 1)
  {
    v9 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x1E, *(*(v5 + 208) + 8 * v9++), a2, a4);
    }

    while (v9 < *(v5 + 216));
  }

  v10 = *(v5 + 348);
  if ((v10 & 0x40000000) != 0)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x1F, *(v5 + 232), a2, a4);
    v10 = *(v5 + 348);
  }

  if (v10 < 0)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x20, *(v5 + 236), a2, a4);
  }

  if (*(v5 + 352))
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x21, *(v5 + 264), a2, a4);
  }

  if (*(v5 + 248) >= 1)
  {
    v11 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x22, *(*(v5 + 240) + 8 * v11++), a2, a4);
    }

    while (v11 < *(v5 + 248));
  }

  v12 = *(v5 + 352);
  if ((v12 & 4) != 0)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x23, *(v5 + 268), a2, a4);
    v12 = *(v5 + 352);
    if ((v12 & 8) == 0)
    {
LABEL_48:
      if ((v12 & 0x10) == 0)
      {
        goto LABEL_49;
      }

      goto LABEL_112;
    }
  }

  else if ((v12 & 8) == 0)
  {
    goto LABEL_48;
  }

  v25 = *(v5 + 272);
  if (!v25)
  {
    v25 = *(awd::metrics::LocationAccessory::default_instance_ + 272);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x24, v25, a2, a4);
  v12 = *(v5 + 352);
  if ((v12 & 0x10) == 0)
  {
LABEL_49:
    if ((v12 & 0x20) == 0)
    {
      goto LABEL_50;
    }

    goto LABEL_115;
  }

LABEL_112:
  v26 = *(v5 + 280);
  if (!v26)
  {
    v26 = *(awd::metrics::LocationAccessory::default_instance_ + 280);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x25, v26, a2, a4);
  v12 = *(v5 + 352);
  if ((v12 & 0x20) == 0)
  {
LABEL_50:
    if ((v12 & 0x40) == 0)
    {
      goto LABEL_51;
    }

    goto LABEL_118;
  }

LABEL_115:
  v27 = *(v5 + 288);
  if (!v27)
  {
    v27 = *(awd::metrics::LocationAccessory::default_instance_ + 288);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x26, v27, a2, a4);
  v12 = *(v5 + 352);
  if ((v12 & 0x40) == 0)
  {
LABEL_51:
    if ((v12 & 0x80) == 0)
    {
      goto LABEL_53;
    }

    goto LABEL_52;
  }

LABEL_118:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x27, *(v5 + 296), a2, a4);
  if ((*(v5 + 352) & 0x80) != 0)
  {
LABEL_52:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x28, *(v5 + 300), a2, a4);
  }

LABEL_53:
  if (*(v5 + 312) >= 1)
  {
    v13 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x29, *(*(v5 + 304) + 8 * v13++), a2, a4);
    }

    while (v13 < *(v5 + 312));
  }

  v14 = *(v5 + 352);
  if ((v14 & 0x200) != 0)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
    v14 = *(v5 + 352);
  }

  if ((v14 & 0x400) != 0)
  {

    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
  }

  return this;
}

uint64_t awd::metrics::LocationAccessory::ByteSize(awd::metrics::LocationAccessory *this, unint64_t a2)
{
  v3 = *(this + 87);
  if (!v3)
  {
    v5 = 0;
    goto LABEL_65;
  }

  if (v3)
  {
    v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 1)) + 1;
    v3 = *(this + 87);
    if ((v3 & 2) == 0)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v4 = 0;
    if ((v3 & 2) == 0)
    {
      goto LABEL_16;
    }
  }

  v6 = *(this + 2);
  v7 = *(v6 + 23);
  v8 = v7;
  v9 = *(v6 + 8);
  if ((v7 & 0x80u) == 0)
  {
    v10 = *(v6 + 23);
  }

  else
  {
    v10 = v9;
  }

  if (v10 >= 0x80)
  {
    v11 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v10);
    v7 = *(v6 + 23);
    v9 = *(v6 + 8);
    v3 = *(this + 87);
    v8 = *(v6 + 23);
  }

  else
  {
    v11 = 1;
  }

  if (v8 < 0)
  {
    v7 = v9;
  }

  v4 += v11 + v7 + 1;
LABEL_16:
  if ((v3 & 4) != 0)
  {
    v12 = *(this + 3);
    v13 = *(v12 + 23);
    v14 = v13;
    v15 = *(v12 + 8);
    if ((v13 & 0x80u) == 0)
    {
      v16 = *(v12 + 23);
    }

    else
    {
      v16 = v15;
    }

    if (v16 >= 0x80)
    {
      v17 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v16);
      v13 = *(v12 + 23);
      v15 = *(v12 + 8);
      v3 = *(this + 87);
      v14 = *(v12 + 23);
    }

    else
    {
      v17 = 1;
    }

    if (v14 < 0)
    {
      v13 = v15;
    }

    v4 += v17 + v13 + 1;
    if ((v3 & 8) == 0)
    {
LABEL_18:
      if ((v3 & 0x10) == 0)
      {
        goto LABEL_19;
      }

      goto LABEL_40;
    }
  }

  else if ((v3 & 8) == 0)
  {
    goto LABEL_18;
  }

  v18 = *(this + 4);
  v19 = *(v18 + 23);
  v20 = v19;
  v21 = *(v18 + 8);
  if ((v19 & 0x80u) == 0)
  {
    v22 = *(v18 + 23);
  }

  else
  {
    v22 = v21;
  }

  if (v22 >= 0x80)
  {
    v23 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v22);
    v19 = *(v18 + 23);
    v21 = *(v18 + 8);
    v3 = *(this + 87);
    v20 = *(v18 + 23);
  }

  else
  {
    v23 = 1;
  }

  if (v20 < 0)
  {
    v19 = v21;
  }

  v4 += v23 + v19 + 1;
  if ((v3 & 0x10) == 0)
  {
LABEL_19:
    if ((v3 & 0x20) == 0)
    {
      goto LABEL_20;
    }

LABEL_49:
    v30 = *(this + 6);
    v31 = *(v30 + 23);
    v32 = v31;
    v33 = *(v30 + 8);
    if ((v31 & 0x80u) == 0)
    {
      v34 = *(v30 + 23);
    }

    else
    {
      v34 = v33;
    }

    if (v34 >= 0x80)
    {
      v35 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v34);
      v31 = *(v30 + 23);
      v33 = *(v30 + 8);
      v3 = *(this + 87);
      v32 = *(v30 + 23);
    }

    else
    {
      v35 = 1;
    }

    if (v32 < 0)
    {
      v31 = v33;
    }

    v4 += v35 + v31 + 1;
    if ((v3 & 0x40) == 0)
    {
      goto LABEL_64;
    }

    goto LABEL_58;
  }

LABEL_40:
  v24 = *(this + 5);
  v25 = *(v24 + 23);
  v26 = v25;
  v27 = *(v24 + 8);
  if ((v25 & 0x80u) == 0)
  {
    v28 = *(v24 + 23);
  }

  else
  {
    v28 = v27;
  }

  if (v28 >= 0x80)
  {
    v29 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v28);
    v25 = *(v24 + 23);
    v27 = *(v24 + 8);
    v3 = *(this + 87);
    v26 = *(v24 + 23);
  }

  else
  {
    v29 = 1;
  }

  if (v26 < 0)
  {
    v25 = v27;
  }

  v4 += v29 + v25 + 1;
  if ((v3 & 0x20) != 0)
  {
    goto LABEL_49;
  }

LABEL_20:
  if ((v3 & 0x40) != 0)
  {
LABEL_58:
    v36 = *(this + 14);
    if ((v36 & 0x80000000) != 0)
    {
      v37 = 11;
    }

    else if (v36 >= 0x80)
    {
      v37 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v36) + 1;
      v3 = *(this + 87);
    }

    else
    {
      v37 = 2;
    }

    v4 += v37;
  }

LABEL_64:
  v5 = ((v3 >> 6) & 2) + v4;
LABEL_65:
  if ((v3 & 0xFF00) == 0)
  {
    goto LABEL_113;
  }

  if ((v3 & 0x100) != 0)
  {
    v38 = *(this + 16);
    if (v38 >= 0x80)
    {
      v39 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v38) + 1;
      v3 = *(this + 87);
    }

    else
    {
      v39 = 2;
    }

    v5 += v39;
    if ((v3 & 0x200) == 0)
    {
LABEL_68:
      if ((v3 & 0x400) == 0)
      {
        goto LABEL_69;
      }

      goto LABEL_83;
    }
  }

  else if ((v3 & 0x200) == 0)
  {
    goto LABEL_68;
  }

  v40 = *(this + 17);
  if (v40 >= 0x80)
  {
    v41 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v40) + 1;
    v3 = *(this + 87);
  }

  else
  {
    v41 = 2;
  }

  v5 += v41;
  if ((v3 & 0x400) == 0)
  {
LABEL_69:
    if ((v3 & 0x800) == 0)
    {
      goto LABEL_70;
    }

    goto LABEL_87;
  }

LABEL_83:
  v42 = *(this + 18);
  if (v42 >= 0x80)
  {
    v43 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v42) + 1;
    v3 = *(this + 87);
  }

  else
  {
    v43 = 2;
  }

  v5 += v43;
  if ((v3 & 0x800) == 0)
  {
LABEL_70:
    if ((v3 & 0x1000) == 0)
    {
      goto LABEL_71;
    }

    goto LABEL_91;
  }

LABEL_87:
  v44 = *(this + 19);
  if (v44 >= 0x80)
  {
    v45 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v44) + 1;
    v3 = *(this + 87);
  }

  else
  {
    v45 = 2;
  }

  v5 += v45;
  if ((v3 & 0x1000) == 0)
  {
LABEL_71:
    if ((v3 & 0x2000) == 0)
    {
      goto LABEL_72;
    }

    goto LABEL_95;
  }

LABEL_91:
  v46 = *(this + 30);
  if (v46 >= 0x80)
  {
    v47 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v46) + 1;
    v3 = *(this + 87);
  }

  else
  {
    v47 = 2;
  }

  v5 += v47;
  if ((v3 & 0x2000) == 0)
  {
LABEL_72:
    if ((v3 & 0x4000) == 0)
    {
      goto LABEL_73;
    }

    goto LABEL_101;
  }

LABEL_95:
  v48 = *(this + 10);
  if (!v48)
  {
    v48 = *(awd::metrics::LocationAccessory::default_instance_ + 80);
  }

  v49 = awd::metrics::LocationAccessory_PerformanceStats::ByteSize(v48, a2);
  v50 = v49;
  if (v49 >= 0x80)
  {
    v51 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v49);
  }

  else
  {
    v51 = 1;
  }

  v5 += v50 + v51 + 1;
  v3 = *(this + 87);
  if ((v3 & 0x4000) == 0)
  {
LABEL_73:
    if ((v3 & 0x8000) == 0)
    {
      goto LABEL_113;
    }

    goto LABEL_107;
  }

LABEL_101:
  v52 = *(this + 11);
  if (!v52)
  {
    v52 = *(awd::metrics::LocationAccessory::default_instance_ + 88);
  }

  v53 = awd::metrics::LocationAccessory_PerformanceStats::ByteSize(v52, a2);
  v54 = v53;
  if (v53 >= 0x80)
  {
    v55 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v53);
  }

  else
  {
    v55 = 1;
  }

  v5 += v54 + v55 + 1;
  v3 = *(this + 87);
  if ((v3 & 0x8000) != 0)
  {
LABEL_107:
    v56 = *(this + 12);
    if (!v56)
    {
      v56 = *(awd::metrics::LocationAccessory::default_instance_ + 96);
    }

    v57 = awd::metrics::LocationAccessory_PerformanceStats::ByteSize(v56, a2);
    v58 = v57;
    if (v57 >= 0x80)
    {
      v59 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v57);
    }

    else
    {
      v59 = 1;
    }

    v5 += v58 + v59 + 2;
    v3 = *(this + 87);
  }

LABEL_113:
  if ((v3 & 0xFF0000) == 0)
  {
    goto LABEL_171;
  }

  if ((v3 & 0x10000) != 0)
  {
    v60 = *(this + 13);
    if (!v60)
    {
      v60 = *(awd::metrics::LocationAccessory::default_instance_ + 104);
    }

    v61 = awd::metrics::LocationAccessory_PerformanceStats::ByteSize(v60, a2);
    v62 = v61;
    if (v61 >= 0x80)
    {
      v63 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v61);
    }

    else
    {
      v63 = 1;
    }

    v5 += v62 + v63 + 2;
    v3 = *(this + 87);
    if ((v3 & 0x20000) == 0)
    {
LABEL_116:
      if ((v3 & 0x40000) == 0)
      {
        goto LABEL_117;
      }

      goto LABEL_135;
    }
  }

  else if ((v3 & 0x20000) == 0)
  {
    goto LABEL_116;
  }

  v64 = *(this + 14);
  if (!v64)
  {
    v64 = *(awd::metrics::LocationAccessory::default_instance_ + 112);
  }

  v65 = awd::metrics::LocationAccessory_SpeedPerformanceStats::ByteSize(v64, a2);
  v66 = v65;
  if (v65 >= 0x80)
  {
    v67 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v65);
  }

  else
  {
    v67 = 1;
  }

  v5 += v66 + v67 + 2;
  v3 = *(this + 87);
  if ((v3 & 0x40000) == 0)
  {
LABEL_117:
    if ((v3 & 0x80000) == 0)
    {
      goto LABEL_118;
    }

    goto LABEL_141;
  }

LABEL_135:
  v68 = *(this + 16);
  if (!v68)
  {
    v68 = *(awd::metrics::LocationAccessory::default_instance_ + 128);
  }

  v69 = awd::metrics::LocationAccessory_MessageStats::ByteSize(v68, a2);
  v70 = v69;
  if (v69 >= 0x80)
  {
    v71 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v69);
  }

  else
  {
    v71 = 1;
  }

  v5 += v70 + v71 + 2;
  v3 = *(this + 87);
  if ((v3 & 0x80000) == 0)
  {
LABEL_118:
    if ((v3 & 0x100000) == 0)
    {
      goto LABEL_119;
    }

    goto LABEL_147;
  }

LABEL_141:
  v72 = *(this + 17);
  if (!v72)
  {
    v72 = *(awd::metrics::LocationAccessory::default_instance_ + 136);
  }

  v73 = awd::metrics::LocationAccessory_MessageStats::ByteSize(v72, a2);
  v74 = v73;
  if (v73 >= 0x80)
  {
    v75 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v73);
  }

  else
  {
    v75 = 1;
  }

  v5 += v74 + v75 + 2;
  v3 = *(this + 87);
  if ((v3 & 0x100000) == 0)
  {
LABEL_119:
    if ((v3 & 0x200000) == 0)
    {
      goto LABEL_120;
    }

    goto LABEL_153;
  }

LABEL_147:
  v76 = *(this + 18);
  if (!v76)
  {
    v76 = *(awd::metrics::LocationAccessory::default_instance_ + 144);
  }

  v77 = awd::metrics::LocationAccessory_MessageStats::ByteSize(v76, a2);
  v78 = v77;
  if (v77 >= 0x80)
  {
    v79 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v77);
  }

  else
  {
    v79 = 1;
  }

  v5 += v78 + v79 + 2;
  v3 = *(this + 87);
  if ((v3 & 0x200000) == 0)
  {
LABEL_120:
    if ((v3 & 0x400000) == 0)
    {
      goto LABEL_121;
    }

    goto LABEL_159;
  }

LABEL_153:
  v80 = *(this + 19);
  if (!v80)
  {
    v80 = *(awd::metrics::LocationAccessory::default_instance_ + 152);
  }

  v81 = awd::metrics::LocationAccessory_PASCDStats::ByteSize(v80, a2);
  v82 = v81;
  if (v81 >= 0x80)
  {
    v83 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v81);
  }

  else
  {
    v83 = 1;
  }

  v5 += v82 + v83 + 2;
  v3 = *(this + 87);
  if ((v3 & 0x400000) == 0)
  {
LABEL_121:
    if ((v3 & 0x800000) == 0)
    {
      goto LABEL_171;
    }

    goto LABEL_167;
  }

LABEL_159:
  v84 = *(this + 20);
  if (!v84)
  {
    v84 = *(awd::metrics::LocationAccessory::default_instance_ + 160);
  }

  v85 = *(v84 + 28);
  v86 = (v85 << 31 >> 31) & 9;
  if ((v85 & 2) != 0)
  {
    v86 += 9;
  }

  if (*(v84 + 28))
  {
    v87 = v86;
  }

  else
  {
    v87 = 0;
  }

  *(v84 + 24) = v87;
  v5 += v87 + 3;
  v3 = *(this + 87);
  if ((v3 & 0x800000) != 0)
  {
LABEL_167:
    v88 = *(this + 31);
    if (v88 >= 0x80)
    {
      v89 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v88) + 2;
      v3 = *(this + 87);
    }

    else
    {
      v89 = 3;
    }

    v5 += v89;
  }

LABEL_171:
  if (!HIBYTE(v3))
  {
    goto LABEL_203;
  }

  if ((v3 & 0x1000000) != 0)
  {
    v90 = *(this + 42);
    if (v90 >= 0x80)
    {
      v91 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v90) + 2;
      v3 = *(this + 87);
    }

    else
    {
      v91 = 3;
    }

    v5 += v91;
    if ((v3 & 0x4000000) == 0)
    {
LABEL_174:
      if ((v3 & 0x8000000) == 0)
      {
        goto LABEL_175;
      }

      goto LABEL_187;
    }
  }

  else if ((v3 & 0x4000000) == 0)
  {
    goto LABEL_174;
  }

  v92 = *(this + 43);
  if (v92 >= 0x80)
  {
    v93 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v92) + 2;
    v3 = *(this + 87);
  }

  else
  {
    v93 = 3;
  }

  v5 += v93;
  if ((v3 & 0x8000000) == 0)
  {
LABEL_175:
    if ((v3 & 0x10000000) == 0)
    {
      goto LABEL_176;
    }

    goto LABEL_191;
  }

LABEL_187:
  v94 = *(this + 50);
  if (v94 >= 0x80)
  {
    v95 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v94) + 2;
    v3 = *(this + 87);
  }

  else
  {
    v95 = 3;
  }

  v5 += v95;
  if ((v3 & 0x10000000) == 0)
  {
LABEL_176:
    if ((v3 & 0x40000000) == 0)
    {
      goto LABEL_177;
    }

    goto LABEL_195;
  }

LABEL_191:
  v96 = *(this + 51);
  if (v96 >= 0x80)
  {
    v97 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v96) + 2;
    v3 = *(this + 87);
  }

  else
  {
    v97 = 3;
  }

  v5 += v97;
  if ((v3 & 0x40000000) == 0)
  {
LABEL_177:
    if ((v3 & 0x80000000) == 0)
    {
      goto LABEL_203;
    }

    goto LABEL_199;
  }

LABEL_195:
  v98 = *(this + 58);
  if (v98 >= 0x80)
  {
    v99 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v98) + 2;
    v3 = *(this + 87);
  }

  else
  {
    v99 = 3;
  }

  v5 += v99;
  if ((v3 & 0x80000000) != 0)
  {
LABEL_199:
    v100 = *(this + 59);
    if (v100 >= 0x80)
    {
      v101 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v100) + 2;
    }

    else
    {
      v101 = 3;
    }

    v5 += v101;
  }

LABEL_203:
  v102 = *(this + 88);
  if (!v102)
  {
    goto LABEL_246;
  }

  if (v102)
  {
    v103 = *(this + 66);
    if (v103 >= 0x80)
    {
      v104 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v103) + 2;
      v102 = *(this + 88);
    }

    else
    {
      v104 = 3;
    }

    v5 += v104;
    if ((v102 & 4) == 0)
    {
LABEL_206:
      if ((v102 & 8) == 0)
      {
        goto LABEL_207;
      }

      goto LABEL_220;
    }
  }

  else if ((v102 & 4) == 0)
  {
    goto LABEL_206;
  }

  v105 = *(this + 67);
  if (v105 >= 0x80)
  {
    v106 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v105) + 2;
    v102 = *(this + 88);
  }

  else
  {
    v106 = 3;
  }

  v5 += v106;
  if ((v102 & 8) == 0)
  {
LABEL_207:
    if ((v102 & 0x10) == 0)
    {
      goto LABEL_208;
    }

    goto LABEL_226;
  }

LABEL_220:
  v107 = *(this + 34);
  if (!v107)
  {
    v107 = *(awd::metrics::LocationAccessory::default_instance_ + 272);
  }

  v108 = awd::metrics::LocationAccessory_DeviceChargingStats::ByteSize(v107, a2);
  v109 = v108;
  if (v108 >= 0x80)
  {
    v110 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v108);
  }

  else
  {
    v110 = 1;
  }

  v5 += v109 + v110 + 2;
  v102 = *(this + 88);
  if ((v102 & 0x10) == 0)
  {
LABEL_208:
    if ((v102 & 0x20) == 0)
    {
      goto LABEL_209;
    }

    goto LABEL_232;
  }

LABEL_226:
  v111 = *(this + 35);
  if (!v111)
  {
    v111 = *(awd::metrics::LocationAccessory::default_instance_ + 280);
  }

  v112 = awd::metrics::LocationAccessory_Statistics::ByteSize(v111, a2);
  v113 = v112;
  if (v112 >= 0x80)
  {
    v114 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v112);
  }

  else
  {
    v114 = 1;
  }

  v5 += v113 + v114 + 2;
  v102 = *(this + 88);
  if ((v102 & 0x20) == 0)
  {
LABEL_209:
    if ((v102 & 0x40) == 0)
    {
      goto LABEL_210;
    }

    goto LABEL_238;
  }

LABEL_232:
  v115 = *(this + 36);
  if (!v115)
  {
    v115 = *(awd::metrics::LocationAccessory::default_instance_ + 288);
  }

  v116 = awd::metrics::LocationAccessory_Statistics::ByteSize(v115, a2);
  v117 = v116;
  if (v116 >= 0x80)
  {
    v118 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v116);
  }

  else
  {
    v118 = 1;
  }

  v5 += v117 + v118 + 2;
  v102 = *(this + 88);
  if ((v102 & 0x40) == 0)
  {
LABEL_210:
    if ((v102 & 0x80) == 0)
    {
      goto LABEL_246;
    }

    goto LABEL_242;
  }

LABEL_238:
  v119 = *(this + 74);
  if (v119 >= 0x80)
  {
    v120 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v119) + 2;
    v102 = *(this + 88);
  }

  else
  {
    v120 = 3;
  }

  v5 += v120;
  if ((v102 & 0x80) != 0)
  {
LABEL_242:
    v121 = *(this + 75);
    if (v121 >= 0x80)
    {
      v122 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v121) + 2;
      v102 = *(this + 88);
    }

    else
    {
      v122 = 3;
    }

    v5 += v122;
  }

LABEL_246:
  if ((v102 & 0x1FE00) != 0)
  {
    if ((v102 & 0x200) != 0)
    {
      v123 = *(this + 41);
      v124 = *(v123 + 23);
      v125 = v124;
      v126 = *(v123 + 8);
      if ((v124 & 0x80u) == 0)
      {
        v127 = *(v123 + 23);
      }

      else
      {
        v127 = v126;
      }

      if (v127 >= 0x80)
      {
        v128 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v127);
        v124 = *(v123 + 23);
        v126 = *(v123 + 8);
        v102 = *(this + 88);
        v125 = *(v123 + 23);
      }

      else
      {
        v128 = 1;
      }

      if (v125 < 0)
      {
        v124 = v126;
      }

      v5 += v128 + v124 + 2;
    }

    if ((v102 & 0x400) != 0)
    {
      v129 = *(this + 42);
      v130 = *(v129 + 23);
      v131 = v130;
      v132 = *(v129 + 8);
      if ((v130 & 0x80u) == 0)
      {
        v133 = *(v129 + 23);
      }

      else
      {
        v133 = v132;
      }

      if (v133 >= 0x80)
      {
        v134 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v133);
        v130 = *(v129 + 23);
        v132 = *(v129 + 8);
        v131 = *(v129 + 23);
      }

      else
      {
        v134 = 1;
      }

      if (v131 < 0)
      {
        v130 = v132;
      }

      v5 += v134 + v130 + 2;
    }
  }

  v135 = *(this + 46);
  v136 = v5 + 2 * v135;
  if (v135 >= 1)
  {
    v137 = 0;
    do
    {
      v138 = awd::metrics::LocationAccessory_LocationAppRunningTime::ByteSize(*(*(this + 22) + 8 * v137), a2);
      v139 = v138;
      if (v138 >= 0x80)
      {
        v140 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v138);
      }

      else
      {
        v140 = 1;
      }

      v136 += v139 + v140;
      ++v137;
    }

    while (v137 < *(this + 46));
  }

  v141 = *(this + 54);
  v142 = v136 + 2 * v141;
  if (v141 >= 1)
  {
    v143 = 0;
    do
    {
      v144 = awd::metrics::LocationAccessory_NavDynamicsHistogram::ByteSize(*(*(this + 26) + 8 * v143), a2);
      v145 = v144;
      if (v144 >= 0x80)
      {
        v146 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v144);
      }

      else
      {
        v146 = 1;
      }

      v142 += v145 + v146;
      ++v143;
    }

    while (v143 < *(this + 54));
  }

  v147 = *(this + 62);
  v148 = v142 + 2 * v147;
  if (v147 >= 1)
  {
    v149 = 0;
    do
    {
      v150 = awd::metrics::LocationAccessory_NMEAScreeningLocTypeHistogram::ByteSize(*(*(this + 30) + 8 * v149), a2);
      v151 = v150;
      if (v150 >= 0x80)
      {
        v152 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v150);
      }

      else
      {
        v152 = 1;
      }

      v148 += v151 + v152;
      ++v149;
    }

    while (v149 < *(this + 62));
  }

  v153 = *(this + 78);
  v154 = (v148 + 2 * v153);
  if (v153 >= 1)
  {
    v155 = 0;
    do
    {
      v156 = awd::metrics::LocationAccessory_MessageHistogram::ByteSize(*(*(this + 38) + 8 * v155), a2);
      v157 = v156;
      if (v156 >= 0x80)
      {
        v158 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v156);
      }

      else
      {
        v158 = 1;
      }

      v154 = (v157 + v154 + v158);
      ++v155;
    }

    while (v155 < *(this + 78));
  }

  *(this + 86) = v154;
  return v154;
}

void awd::metrics::LocationAccessory::CheckTypeAndMergeFrom(awd::metrics::LocationAccessory *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  {
    awd::metrics::LocationAccessory::CheckTypeAndMergeFrom();
  }

  awd::metrics::LocationAccessory::MergeFrom(this, lpsrc);
}

void awd::metrics::LocationAccessory::CopyFrom(awd::metrics::LocationAccessory *this, const awd::metrics::LocationAccessory *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    awd::metrics::LocationAccessory::MergeFrom(this, a2);
  }
}

uint64_t awd::metrics::LocationAccessory::Swap(uint64_t this, awd::metrics::LocationAccessory *a2)
{
  if (a2 != this)
  {
    v3 = this;
    v4 = *(this + 8);
    v5 = *(this + 16);
    v6 = *(a2 + 2);
    *(this + 8) = *(a2 + 1);
    *(this + 16) = v6;
    *(a2 + 1) = v4;
    *(a2 + 2) = v5;
    v7 = *(this + 24);
    *(this + 24) = *(a2 + 3);
    *(a2 + 3) = v7;
    v8 = *(this + 32);
    *(this + 32) = *(a2 + 4);
    *(a2 + 4) = v8;
    v9 = *(this + 40);
    *(this + 40) = *(a2 + 5);
    *(a2 + 5) = v9;
    v10 = *(this + 48);
    *(this + 48) = *(a2 + 6);
    *(a2 + 6) = v10;
    LODWORD(v10) = *(this + 56);
    *(this + 56) = *(a2 + 14);
    *(a2 + 14) = v10;
    LOBYTE(v10) = *(this + 60);
    *(this + 60) = *(a2 + 60);
    *(a2 + 60) = v10;
    LODWORD(v10) = *(this + 64);
    *(this + 64) = *(a2 + 16);
    *(a2 + 16) = v10;
    LODWORD(v10) = *(this + 68);
    *(this + 68) = *(a2 + 17);
    *(a2 + 17) = v10;
    LODWORD(v10) = *(this + 72);
    *(this + 72) = *(a2 + 18);
    *(a2 + 18) = v10;
    LODWORD(v10) = *(this + 76);
    *(this + 76) = *(a2 + 19);
    *(a2 + 19) = v10;
    LODWORD(v10) = *(this + 120);
    *(this + 120) = *(a2 + 30);
    *(a2 + 30) = v10;
    v11 = *(this + 80);
    *(this + 80) = *(a2 + 10);
    *(a2 + 10) = v11;
    v12 = *(this + 88);
    *(this + 88) = *(a2 + 11);
    *(a2 + 11) = v12;
    v13 = *(this + 96);
    *(this + 96) = *(a2 + 12);
    *(a2 + 12) = v13;
    v14 = *(this + 104);
    *(this + 104) = *(a2 + 13);
    *(a2 + 13) = v14;
    v15 = *(this + 112);
    *(this + 112) = *(a2 + 14);
    *(a2 + 14) = v15;
    v16 = *(this + 128);
    *(this + 128) = *(a2 + 16);
    *(a2 + 16) = v16;
    v17 = *(this + 136);
    *(this + 136) = *(a2 + 17);
    *(a2 + 17) = v17;
    v18 = *(this + 144);
    *(this + 144) = *(a2 + 18);
    *(a2 + 18) = v18;
    v19 = *(this + 152);
    *(this + 152) = *(a2 + 19);
    *(a2 + 19) = v19;
    v20 = *(this + 160);
    *(this + 160) = *(a2 + 20);
    *(a2 + 20) = v20;
    LODWORD(v20) = *(this + 124);
    *(this + 124) = *(a2 + 31);
    *(a2 + 31) = v20;
    LODWORD(v20) = *(this + 168);
    *(this + 168) = *(a2 + 42);
    *(a2 + 42) = v20;
    wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Swap();
    v21 = *(v3 + 172);
    *(v3 + 172) = *(a2 + 43);
    *(a2 + 43) = v21;
    v22 = *(v3 + 200);
    *(v3 + 200) = *(a2 + 50);
    *(a2 + 50) = v22;
    v23 = *(v3 + 204);
    *(v3 + 204) = *(a2 + 51);
    *(a2 + 51) = v23;
    wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Swap();
    v24 = *(v3 + 232);
    *(v3 + 232) = *(a2 + 58);
    *(a2 + 58) = v24;
    v25 = *(v3 + 236);
    *(v3 + 236) = *(a2 + 59);
    *(a2 + 59) = v25;
    v26 = *(v3 + 264);
    *(v3 + 264) = *(a2 + 66);
    *(a2 + 66) = v26;
    wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Swap();
    v27 = *(v3 + 268);
    *(v3 + 268) = *(a2 + 67);
    *(a2 + 67) = v27;
    v28 = *(v3 + 272);
    *(v3 + 272) = *(a2 + 34);
    *(a2 + 34) = v28;
    v29 = *(v3 + 280);
    *(v3 + 280) = *(a2 + 35);
    *(a2 + 35) = v29;
    v30 = *(v3 + 288);
    *(v3 + 288) = *(a2 + 36);
    *(a2 + 36) = v30;
    LODWORD(v30) = *(v3 + 296);
    *(v3 + 296) = *(a2 + 74);
    *(a2 + 74) = v30;
    LODWORD(v30) = *(v3 + 300);
    *(v3 + 300) = *(a2 + 75);
    *(a2 + 75) = v30;
    this = wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Swap();
    v31 = *(v3 + 328);
    *(v3 + 328) = *(a2 + 41);
    *(a2 + 41) = v31;
    v32 = *(v3 + 336);
    *(v3 + 336) = *(a2 + 42);
    *(a2 + 42) = v32;
    LODWORD(v32) = *(v3 + 348);
    *(v3 + 348) = *(a2 + 87);
    *(a2 + 87) = v32;
    LODWORD(v32) = *(v3 + 352);
    *(v3 + 352) = *(a2 + 88);
    *(a2 + 88) = v32;
    LODWORD(v32) = *(v3 + 344);
    *(v3 + 344) = *(a2 + 86);
    *(a2 + 86) = v32;
  }

  return this;
}

double awd::metrics::BaroAltitudeCalibrationInfo::SharedCtor(awd::metrics::BaroAltitudeCalibrationInfo *this)
{
  v1 = MEMORY[0x29EDC9758];
  *(this + 7) = 0;
  *(this + 1) = 0;
  *(this + 2) = v1;
  result = 0.0;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  return result;
}

awd::metrics::BaroAltitudeCalibrationInfo *awd::metrics::BaroAltitudeCalibrationInfo::BaroAltitudeCalibrationInfo(awd::metrics::BaroAltitudeCalibrationInfo *this, const awd::metrics::BaroAltitudeCalibrationInfo *a2)
{
  *(this + 7) = 0;
  *this = &unk_2A1D51438;
  *(this + 1) = 0;
  *(this + 2) = MEMORY[0x29EDC9758];
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  awd::metrics::BaroAltitudeCalibrationInfo::MergeFrom(this, a2);
  return this;
}

float awd::metrics::BaroAltitudeCalibrationInfo::MergeFrom(awd::metrics::BaroAltitudeCalibrationInfo *this, const awd::metrics::BaroAltitudeCalibrationInfo *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v15);
  }

  v5 = *(a2 + 15);
  if (!v5)
  {
    goto LABEL_13;
  }

  if (v5)
  {
    v7 = *(a2 + 1);
    *(this + 15) |= 1u;
    *(this + 1) = v7;
    v5 = *(a2 + 15);
    if ((v5 & 2) == 0)
    {
LABEL_6:
      if ((v5 & 4) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_23;
    }
  }

  else if ((v5 & 2) == 0)
  {
    goto LABEL_6;
  }

  v8 = *(a2 + 2);
  *(this + 15) |= 2u;
  v9 = *(this + 2);
  if (v9 == MEMORY[0x29EDC9758])
  {
    operator new();
  }

  std::string::operator=(v9, v8);
  v5 = *(a2 + 15);
  if ((v5 & 4) == 0)
  {
LABEL_7:
    if ((v5 & 8) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_24;
  }

LABEL_23:
  v10 = *(a2 + 6);
  *(this + 15) |= 4u;
  *(this + 6) = v10;
  v5 = *(a2 + 15);
  if ((v5 & 8) == 0)
  {
LABEL_8:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_25;
  }

LABEL_24:
  v11 = *(a2 + 7);
  *(this + 15) |= 8u;
  *(this + 7) = v11;
  v5 = *(a2 + 15);
  if ((v5 & 0x10) == 0)
  {
LABEL_9:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_10;
    }

LABEL_26:
    v13 = *(a2 + 9);
    *(this + 15) |= 0x20u;
    *(this + 9) = v13;
    v5 = *(a2 + 15);
    if ((v5 & 0x40) == 0)
    {
LABEL_11:
      if ((v5 & 0x80) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_12;
    }

    goto LABEL_27;
  }

LABEL_25:
  v12 = *(a2 + 8);
  *(this + 15) |= 0x10u;
  *(this + 8) = v12;
  v5 = *(a2 + 15);
  if ((v5 & 0x20) != 0)
  {
    goto LABEL_26;
  }

LABEL_10:
  if ((v5 & 0x40) == 0)
  {
    goto LABEL_11;
  }

LABEL_27:
  v14 = *(a2 + 10);
  *(this + 15) |= 0x40u;
  *(this + 10) = v14;
  v5 = *(a2 + 15);
  if ((v5 & 0x80) != 0)
  {
LABEL_12:
    v6 = *(a2 + 11);
    *(this + 15) |= 0x80u;
    *(this + 11) = v6;
    v5 = *(a2 + 15);
  }

LABEL_13:
  if ((v5 & 0xFF00) != 0)
  {
    if ((v5 & 0x100) != 0)
    {
      result = *(a2 + 12);
      *(this + 15) |= 0x100u;
      *(this + 12) = result;
      v5 = *(a2 + 15);
    }

    if ((v5 & 0x200) != 0)
    {
      result = *(a2 + 13);
      *(this + 15) |= 0x200u;
      *(this + 13) = result;
    }
  }

  return result;
}

void sub_296470E80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::metrics::BaroAltitudeCalibrationInfo::~BaroAltitudeCalibrationInfo(awd::metrics::BaroAltitudeCalibrationInfo *this)
{
  *this = &unk_2A1D51438;
  awd::metrics::BaroAltitudeCalibrationInfo::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2A1D51438;
  awd::metrics::BaroAltitudeCalibrationInfo::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2A1D51438;
  awd::metrics::BaroAltitudeCalibrationInfo::SharedDtor(this);
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  JUMPOUT(0x29C25A730);
}

uint64_t awd::metrics::BaroAltitudeCalibrationInfo::SharedDtor(uint64_t this)
{
  v1 = *(this + 16);
  if (v1 != MEMORY[0x29EDC9758] && v1 != 0)
  {
    if (*(v1 + 23) < 0)
    {
      operator delete(*v1);
    }

    JUMPOUT(0x29C25A730);
  }

  return this;
}

uint64_t awd::metrics::BaroAltitudeCalibrationInfo::default_instance(awd::metrics::BaroAltitudeCalibrationInfo *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = awd::metrics::BaroAltitudeCalibrationInfo::default_instance_;
  if (!awd::metrics::BaroAltitudeCalibrationInfo::default_instance_)
  {
    awd::metrics::protobuf_AddDesc_Location_2eproto(0, a2, a3, a4);
    return awd::metrics::BaroAltitudeCalibrationInfo::default_instance_;
  }

  return result;
}

uint64_t awd::metrics::BaroAltitudeCalibrationInfo::Clear(uint64_t this)
{
  v1 = *(this + 60);
  if (v1)
  {
    *(this + 8) = 0;
    if ((v1 & 2) != 0)
    {
      v2 = *(this + 16);
      if (v2 != MEMORY[0x29EDC9758])
      {
        if (*(v2 + 23) < 0)
        {
          **v2 = 0;
          *(v2 + 8) = 0;
        }

        else
        {
          *v2 = 0;
          *(v2 + 23) = 0;
        }
      }
    }

    *(this + 24) = 0;
    *(this + 32) = 0;
    *(this + 40) = 0;
    v1 = *(this + 60);
  }

  if ((v1 & 0xFF00) != 0)
  {
    *(this + 48) = 0;
  }

  *(this + 60) = 0;
  return this;
}

uint64_t awd::metrics::BaroAltitudeCalibrationInfo::MergePartialFromCodedStream(awd::metrics::BaroAltitudeCalibrationInfo *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
{
  v5 = MEMORY[0x29EDC9758];
  do
  {
    while (1)
    {
      while (1)
      {
        while (1)
        {
          v6 = *(a2 + 1);
          if (v6 >= *(a2 + 2) || (TagFallback = *v6, (TagFallback & 0x80000000) != 0))
          {
            TagFallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadTagFallback(a2);
            *(a2 + 8) = TagFallback;
            if (!TagFallback)
            {
              return 1;
            }
          }

          else
          {
            *(a2 + 8) = TagFallback;
            *(a2 + 1) = v6 + 1;
            if (!TagFallback)
            {
              return 1;
            }
          }

          v8 = TagFallback >> 3;
          v9 = TagFallback & 7;
          if (TagFallback >> 3 <= 5)
          {
            break;
          }

          if (TagFallback >> 3 <= 7)
          {
            if (v8 == 6)
            {
              if ((TagFallback & 7) == 0)
              {
                v18 = *(a2 + 1);
                v10 = *(a2 + 2);
                goto LABEL_79;
              }
            }

            else if (v8 == 7 && (TagFallback & 7) == 0)
            {
              v13 = *(a2 + 1);
              v10 = *(a2 + 2);
              goto LABEL_87;
            }

            goto LABEL_41;
          }

          if (v8 == 8)
          {
            if ((TagFallback & 7) == 0)
            {
              v20 = *(a2 + 1);
              v10 = *(a2 + 2);
              goto LABEL_95;
            }

            goto LABEL_41;
          }

          if (v8 == 9)
          {
            if (v9 != 5)
            {
              goto LABEL_41;
            }

LABEL_103:
            v38 = 0;
            if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a2, &v38) & 1) == 0)
            {
              return 0;
            }

            *(this + 12) = v38;
            *(this + 15) |= 0x100u;
            v36 = *(a2 + 1);
            if (v36 < *(a2 + 2) && *v36 == 85)
            {
              *(a2 + 1) = v36 + 1;
              goto LABEL_107;
            }
          }

          else
          {
            if (v8 != 10 || v9 != 5)
            {
              goto LABEL_41;
            }

LABEL_107:
            v37 = 0;
            if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a2, &v37) & 1) == 0)
            {
              return 0;
            }

            *(this + 13) = v37;
            *(this + 15) |= 0x200u;
            if (*(a2 + 1) == *(a2 + 2) && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
            {
              *(a2 + 8) = 0;
              result = 1;
              *(a2 + 36) = 1;
              return result;
            }
          }
        }

        if (TagFallback >> 3 > 2)
        {
          break;
        }

        if (v8 != 1)
        {
          if (v8 != 2 || v9 != 2)
          {
            goto LABEL_41;
          }

          v12 = *(this + 15);
          goto LABEL_49;
        }

        if ((TagFallback & 7) != 0)
        {
          goto LABEL_41;
        }

        v15 = *(a2 + 1);
        v14 = *(a2 + 2);
        if (v15 >= v14 || (v16 = *v15, v16 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 1);
          if (!result)
          {
            return result;
          }

          v17 = *(a2 + 1);
          v14 = *(a2 + 2);
        }

        else
        {
          *(this + 1) = v16;
          v17 = v15 + 1;
          *(a2 + 1) = v17;
        }

        v12 = *(this + 15) | 1;
        *(this + 15) = v12;
        if (v17 < v14 && *v17 == 18)
        {
          *(a2 + 1) = v17 + 1;
LABEL_49:
          *(this + 15) = v12 | 2;
          if (*(this + 2) == v5)
          {
            operator new();
          }

          result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
          if (!result)
          {
            return result;
          }

          v23 = *(a2 + 1);
          v10 = *(a2 + 2);
          if (v23 < v10 && *v23 == 24)
          {
            v19 = v23 + 1;
            *(a2 + 1) = v19;
LABEL_55:
            if (v19 >= v10 || (v24 = *v19, v24 < 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 6);
              if (!result)
              {
                return result;
              }

              v25 = *(a2 + 1);
              v10 = *(a2 + 2);
            }

            else
            {
              *(this + 6) = v24;
              v25 = v19 + 1;
              *(a2 + 1) = v25;
            }

            *(this + 15) |= 4u;
            if (v25 < v10 && *v25 == 32)
            {
              v21 = v25 + 1;
              *(a2 + 1) = v21;
              goto LABEL_63;
            }
          }
        }
      }

      if (v8 == 3)
      {
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_41;
        }

        v19 = *(a2 + 1);
        v10 = *(a2 + 2);
        goto LABEL_55;
      }

      if (v8 != 4)
      {
        break;
      }

      if ((TagFallback & 7) != 0)
      {
        goto LABEL_41;
      }

      v21 = *(a2 + 1);
      v10 = *(a2 + 2);
LABEL_63:
      if (v21 >= v10 || (v26 = *v21, v26 < 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 7);
        if (!result)
        {
          return result;
        }

        v27 = *(a2 + 1);
        v10 = *(a2 + 2);
      }

      else
      {
        *(this + 7) = v26;
        v27 = v21 + 1;
        *(a2 + 1) = v27;
      }

      *(this + 15) |= 8u;
      if (v27 < v10 && *v27 == 40)
      {
        v11 = v27 + 1;
        *(a2 + 1) = v11;
LABEL_71:
        if (v11 >= v10 || (v28 = *v11, v28 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 8);
          if (!result)
          {
            return result;
          }

          v29 = *(a2 + 1);
          v10 = *(a2 + 2);
        }

        else
        {
          *(this + 8) = v28;
          v29 = v11 + 1;
          *(a2 + 1) = v29;
        }

        *(this + 15) |= 0x10u;
        if (v29 < v10 && *v29 == 48)
        {
          v18 = v29 + 1;
          *(a2 + 1) = v18;
LABEL_79:
          if (v18 >= v10 || (v30 = *v18, v30 < 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 9);
            if (!result)
            {
              return result;
            }

            v31 = *(a2 + 1);
            v10 = *(a2 + 2);
          }

          else
          {
            *(this + 9) = v30;
            v31 = v18 + 1;
            *(a2 + 1) = v31;
          }

          *(this + 15) |= 0x20u;
          if (v31 < v10 && *v31 == 56)
          {
            v13 = v31 + 1;
            *(a2 + 1) = v13;
LABEL_87:
            if (v13 >= v10 || (v32 = *v13, v32 < 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 10);
              if (!result)
              {
                return result;
              }

              v33 = *(a2 + 1);
              v10 = *(a2 + 2);
            }

            else
            {
              *(this + 10) = v32;
              v33 = v13 + 1;
              *(a2 + 1) = v33;
            }

            *(this + 15) |= 0x40u;
            if (v33 < v10 && *v33 == 64)
            {
              v20 = v33 + 1;
              *(a2 + 1) = v20;
LABEL_95:
              if (v20 >= v10 || (v34 = *v20, v34 < 0))
              {
                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 11);
                if (!result)
                {
                  return result;
                }

                v35 = *(a2 + 1);
                v10 = *(a2 + 2);
              }

              else
              {
                *(this + 11) = v34;
                v35 = v20 + 1;
                *(a2 + 1) = v35;
              }

              *(this + 15) |= 0x80u;
              if (v35 < v10 && *v35 == 77)
              {
                *(a2 + 1) = v35 + 1;
                goto LABEL_103;
              }
            }
          }
        }
      }
    }

    if (v8 == 5 && (TagFallback & 7) == 0)
    {
      v11 = *(a2 + 1);
      v10 = *(a2 + 2);
      goto LABEL_71;
    }

LABEL_41:
    if (v9 == 4)
    {
      return 1;
    }
  }

  while ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(a2, TagFallback) & 1) != 0);
  return 0;
}

uint64_t awd::metrics::BaroAltitudeCalibrationInfo::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 60);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(1, *(this + 8), a2, a4);
    v6 = *(v5 + 60);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_14;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
  v6 = *(v5 + 60);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_15;
  }

LABEL_14:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(3, *(v5 + 24), a2, a4);
  v6 = *(v5 + 60);
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_16;
  }

LABEL_15:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(4, *(v5 + 28), a2, a4);
  v6 = *(v5 + 60);
  if ((v6 & 0x10) == 0)
  {
LABEL_6:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_17;
  }

LABEL_16:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(5, *(v5 + 32), a2, a4);
  v6 = *(v5 + 60);
  if ((v6 & 0x20) == 0)
  {
LABEL_7:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_18;
  }

LABEL_17:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(6, *(v5 + 36), a2, a4);
  v6 = *(v5 + 60);
  if ((v6 & 0x40) == 0)
  {
LABEL_8:
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_19;
  }

LABEL_18:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(7, *(v5 + 40), a2, a4);
  v6 = *(v5 + 60);
  if ((v6 & 0x80) == 0)
  {
LABEL_9:
    if ((v6 & 0x100) == 0)
    {
      goto LABEL_10;
    }

LABEL_20:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(9, a2, *(v5 + 48), a3);
    if ((*(v5 + 60) & 0x200) == 0)
    {
      return this;
    }

    goto LABEL_21;
  }

LABEL_19:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(8, *(v5 + 44), a2, a4);
  v6 = *(v5 + 60);
  if ((v6 & 0x100) != 0)
  {
    goto LABEL_20;
  }

LABEL_10:
  if ((v6 & 0x200) == 0)
  {
    return this;
  }

LABEL_21:
  v7 = *(v5 + 52);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(0xA, a2, v7, a3);
}

uint64_t awd::metrics::BaroAltitudeCalibrationInfo::ByteSize(awd::metrics::BaroAltitudeCalibrationInfo *this, unint64_t a2)
{
  v3 = *(this + 15);
  if (!v3)
  {
    v4 = 0;
    goto LABEL_47;
  }

  if (v3)
  {
    v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 1)) + 1;
    v3 = *(this + 15);
    if ((v3 & 2) == 0)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v4 = 0;
    if ((v3 & 2) == 0)
    {
      goto LABEL_16;
    }
  }

  v5 = *(this + 2);
  v6 = *(v5 + 23);
  v7 = v6;
  v8 = *(v5 + 8);
  if ((v6 & 0x80u) == 0)
  {
    v9 = *(v5 + 23);
  }

  else
  {
    v9 = v8;
  }

  if (v9 >= 0x80)
  {
    v10 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v9);
    v6 = *(v5 + 23);
    v8 = *(v5 + 8);
    v3 = *(this + 15);
    v7 = *(v5 + 23);
  }

  else
  {
    v10 = 1;
  }

  if (v7 < 0)
  {
    v6 = v8;
  }

  v4 += v10 + v6 + 1;
LABEL_16:
  if ((v3 & 4) != 0)
  {
    v11 = *(this + 6);
    if (v11 >= 0x80)
    {
      v12 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v11) + 1;
      v3 = *(this + 15);
    }

    else
    {
      v12 = 2;
    }

    v4 += v12;
    if ((v3 & 8) == 0)
    {
LABEL_18:
      if ((v3 & 0x10) == 0)
      {
        goto LABEL_19;
      }

      goto LABEL_31;
    }
  }

  else if ((v3 & 8) == 0)
  {
    goto LABEL_18;
  }

  v13 = *(this + 7);
  if (v13 >= 0x80)
  {
    v14 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v13) + 1;
    v3 = *(this + 15);
  }

  else
  {
    v14 = 2;
  }

  v4 += v14;
  if ((v3 & 0x10) == 0)
  {
LABEL_19:
    if ((v3 & 0x20) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_35;
  }

LABEL_31:
  v15 = *(this + 8);
  if (v15 >= 0x80)
  {
    v16 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v15) + 1;
    v3 = *(this + 15);
  }

  else
  {
    v16 = 2;
  }

  v4 += v16;
  if ((v3 & 0x20) == 0)
  {
LABEL_20:
    if ((v3 & 0x40) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_39;
  }

LABEL_35:
  v17 = *(this + 9);
  if (v17 >= 0x80)
  {
    v18 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v17) + 1;
    v3 = *(this + 15);
  }

  else
  {
    v18 = 2;
  }

  v4 += v18;
  if ((v3 & 0x40) == 0)
  {
LABEL_21:
    if ((v3 & 0x80) == 0)
    {
      goto LABEL_47;
    }

    goto LABEL_43;
  }

LABEL_39:
  v19 = *(this + 10);
  if (v19 >= 0x80)
  {
    v20 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v19) + 1;
    v3 = *(this + 15);
  }

  else
  {
    v20 = 2;
  }

  v4 += v20;
  if ((v3 & 0x80) != 0)
  {
LABEL_43:
    v21 = *(this + 11);
    if (v21 >= 0x80)
    {
      v22 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v21) + 1;
      v3 = *(this + 15);
    }

    else
    {
      v22 = 2;
    }

    v4 += v22;
  }

LABEL_47:
  v23 = v4 + 5;
  if ((v3 & 0x100) == 0)
  {
    v23 = v4;
  }

  if ((v3 & 0x200) != 0)
  {
    v23 += 5;
  }

  if ((v3 & 0xFF00) != 0)
  {
    result = v23;
  }

  else
  {
    result = v4;
  }

  *(this + 14) = result;
  return result;
}