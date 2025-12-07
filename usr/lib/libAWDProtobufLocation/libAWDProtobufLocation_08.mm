void sub_296447754(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::metrics::LocationGPSSessionStatistics_ChecksumData::~LocationGPSSessionStatistics_ChecksumData(awd::metrics::LocationGPSSessionStatistics_ChecksumData *this)
{
  *this = &unk_2A1D50100;
  awd::metrics::LocationGPSSessionStatistics_ChecksumData::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2A1D50100;
  awd::metrics::LocationGPSSessionStatistics_ChecksumData::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2A1D50100;
  awd::metrics::LocationGPSSessionStatistics_ChecksumData::SharedDtor(this);
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  JUMPOUT(0x29C25A730);
}

uint64_t awd::metrics::LocationGPSSessionStatistics_ChecksumData::SharedDtor(uint64_t this)
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

uint64_t awd::metrics::LocationGPSSessionStatistics_ChecksumData::default_instance(awd::metrics::LocationGPSSessionStatistics_ChecksumData *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = awd::metrics::LocationGPSSessionStatistics_ChecksumData::default_instance_;
  if (!awd::metrics::LocationGPSSessionStatistics_ChecksumData::default_instance_)
  {
    awd::metrics::protobuf_AddDesc_Location_2eproto(0, a2, a3, a4);
    return awd::metrics::LocationGPSSessionStatistics_ChecksumData::default_instance_;
  }

  return result;
}

uint64_t awd::metrics::LocationGPSSessionStatistics_ChecksumData::Clear(uint64_t this)
{
  if (*(this + 20))
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

  *(this + 20) = 0;
  return this;
}

uint64_t awd::metrics::LocationGPSSessionStatistics_ChecksumData::MergePartialFromCodedStream(awd::metrics::LocationGPSSessionStatistics_ChecksumData *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
{
  v5 = MEMORY[0x29EDC9758];
  while (1)
  {
    while (1)
    {
      v6 = *(a2 + 1);
      if (v6 >= *(a2 + 2) || (TagFallback = *v6, (TagFallback & 0x80000000) != 0))
      {
        TagFallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadTagFallback(a2);
        *(a2 + 8) = TagFallback;
      }

      else
      {
        *(a2 + 8) = TagFallback;
        *(a2 + 1) = v6 + 1;
      }

      if (TagFallback != 10)
      {
        break;
      }

      *(this + 5) |= 1u;
      if (*(this + 1) == v5)
      {
        operator new();
      }

      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadBytes();
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

    if (!TagFallback || (TagFallback & 7) == 4)
    {
      break;
    }

    if ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(a2, TagFallback) & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t awd::metrics::LocationGPSSessionStatistics_ChecksumData::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2)
{
  if (*(this + 20))
  {
    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBytes();
  }

  return this;
}

uint64_t awd::metrics::LocationGPSSessionStatistics_ChecksumData::ByteSize(awd::metrics::LocationGPSSessionStatistics_ChecksumData *this, unsigned int a2)
{
  if (*(this + 20))
  {
    v4 = *(this + 1);
    v5 = *(v4 + 23);
    v6 = v5;
    v7 = *(v4 + 8);
    if ((v5 & 0x80u) == 0)
    {
      v8 = *(v4 + 23);
    }

    else
    {
      v8 = v7;
    }

    if (v8 >= 0x80)
    {
      v10 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v8);
      v5 = *(v4 + 23);
      v7 = *(v4 + 8);
      v9 = v10 + 1;
      v6 = *(v4 + 23);
    }

    else
    {
      v9 = 2;
    }

    if (v6 < 0)
    {
      v5 = v7;
    }

    result = (v9 + v5);
  }

  else
  {
    result = 0;
  }

  *(this + 4) = result;
  return result;
}

void awd::metrics::LocationGPSSessionStatistics_ChecksumData::CheckTypeAndMergeFrom(awd::metrics::LocationGPSSessionStatistics_ChecksumData *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  {
    awd::metrics::LocationGPSSessionStatistics_ChecksumData::CheckTypeAndMergeFrom();
  }

  awd::metrics::LocationGPSSessionStatistics_ChecksumData::MergeFrom(this, lpsrc);
}

void awd::metrics::LocationGPSSessionStatistics_ChecksumData::CopyFrom(awd::metrics::LocationGPSSessionStatistics_ChecksumData *this, const awd::metrics::LocationGPSSessionStatistics_ChecksumData *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    awd::metrics::LocationGPSSessionStatistics_ChecksumData::MergeFrom(this, a2);
  }
}

uint64_t awd::metrics::LocationGPSSessionStatistics_ChecksumData::Swap(uint64_t this, awd::metrics::LocationGPSSessionStatistics_ChecksumData *a2)
{
  if (a2 != this)
  {
    v2 = *(this + 8);
    *(this + 8) = *(a2 + 1);
    *(a2 + 1) = v2;
    LODWORD(v2) = *(this + 20);
    *(this + 20) = *(a2 + 5);
    *(a2 + 5) = v2;
    LODWORD(v2) = *(this + 16);
    *(this + 16) = *(a2 + 4);
    *(a2 + 4) = v2;
  }

  return this;
}

uint64_t awd::metrics::LocationGPSSessionStatistics_DeviceOrientationData::SharedCtor(uint64_t this)
{
  *(this + 8) = 0;
  *(this + 16) = 0;
  *(this + 24) = 0;
  return this;
}

awd::metrics::LocationGPSSessionStatistics_DeviceOrientationData *awd::metrics::LocationGPSSessionStatistics_DeviceOrientationData::LocationGPSSessionStatistics_DeviceOrientationData(awd::metrics::LocationGPSSessionStatistics_DeviceOrientationData *this, const awd::metrics::LocationGPSSessionStatistics_DeviceOrientationData *a2)
{
  *(this + 1) = 0;
  *(this + 2) = 0;
  *this = &unk_2A1D50178;
  *(this + 6) = 0;
  awd::metrics::LocationGPSSessionStatistics_DeviceOrientationData::MergeFrom(this, a2);
  return this;
}

void awd::metrics::LocationGPSSessionStatistics_DeviceOrientationData::MergeFrom(awd::metrics::LocationGPSSessionStatistics_DeviceOrientationData *this, const awd::metrics::LocationGPSSessionStatistics_DeviceOrientationData *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v7);
  }

  LOBYTE(v4) = *(a2 + 24);
  if (v4)
  {
    if (*(a2 + 24))
    {
      v5 = *(a2 + 4);
      if (v5 >= 7)
      {
        awd::metrics::LocationGPSSessionStatistics_DeviceOrientationData::MergeFrom();
      }

      *(this + 6) |= 1u;
      *(this + 4) = v5;
      v4 = *(a2 + 6);
    }

    if ((v4 & 2) != 0)
    {
      v6 = *(a2 + 1);
      *(this + 6) |= 2u;
      *(this + 1) = v6;
    }
  }
}

void sub_296447E14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::metrics::LocationGPSSessionStatistics_DeviceOrientationData::~LocationGPSSessionStatistics_DeviceOrientationData(awd::metrics::LocationGPSSessionStatistics_DeviceOrientationData *this)
{
  *this = &unk_2A1D50178;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2A1D50178;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2A1D50178;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  JUMPOUT(0x29C25A730);
}

uint64_t awd::metrics::LocationGPSSessionStatistics_DeviceOrientationData::default_instance(awd::metrics::LocationGPSSessionStatistics_DeviceOrientationData *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = awd::metrics::LocationGPSSessionStatistics_DeviceOrientationData::default_instance_;
  if (!awd::metrics::LocationGPSSessionStatistics_DeviceOrientationData::default_instance_)
  {
    awd::metrics::protobuf_AddDesc_Location_2eproto(0, a2, a3, a4);
    return awd::metrics::LocationGPSSessionStatistics_DeviceOrientationData::default_instance_;
  }

  return result;
}

uint64_t awd::metrics::LocationGPSSessionStatistics_DeviceOrientationData::Clear(uint64_t this)
{
  if (*(this + 24))
  {
    *(this + 16) = 0;
    *(this + 8) = 0;
  }

  *(this + 24) = 0;
  return this;
}

uint64_t awd::metrics::LocationGPSSessionStatistics_DeviceOrientationData::MergePartialFromCodedStream(awd::metrics::LocationGPSSessionStatistics_DeviceOrientationData *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
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
        *(this + 6) |= 1u;
        *(this + 4) = v8;
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
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 1);
          if (!result)
          {
            return result;
          }

          v13 = *(a2 + 1);
          v9 = *(a2 + 2);
        }

        else
        {
          *(this + 1) = v12;
          v13 = v10 + 1;
          *(a2 + 1) = v13;
        }

        *(this + 6) |= 2u;
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

uint64_t awd::metrics::LocationGPSSessionStatistics_DeviceOrientationData::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 24);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(1, *(this + 16), a2, a4);
    v6 = *(v5 + 24);
  }

  if ((v6 & 2) != 0)
  {
    v7 = *(v5 + 8);

    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(2, v7, a2, a4);
  }

  return this;
}

uint64_t awd::metrics::LocationGPSSessionStatistics_DeviceOrientationData::ByteSize(awd::metrics::LocationGPSSessionStatistics_DeviceOrientationData *this, unint64_t a2)
{
  v3 = *(this + 24);
  if (v3)
  {
    if ((*(this + 24) & 1) == 0)
    {
      v4 = 0;
      if ((*(this + 24) & 2) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_11;
    }

    v5 = *(this + 4);
    if ((v5 & 0x80000000) == 0)
    {
      if (v5 >= 0x80)
      {
        v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5) + 1;
        if ((*(this + 6) & 2) == 0)
        {
          goto LABEL_12;
        }
      }

      else
      {
        v4 = 2;
        if ((v3 & 2) == 0)
        {
          goto LABEL_12;
        }
      }

      goto LABEL_11;
    }

    v4 = 11;
    if ((v3 & 2) != 0)
    {
LABEL_11:
      v4 = v4 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 1)) + 1;
    }
  }

  else
  {
    v4 = 0;
  }

LABEL_12:
  *(this + 5) = v4;
  return v4;
}

void awd::metrics::LocationGPSSessionStatistics_DeviceOrientationData::CheckTypeAndMergeFrom(awd::metrics::LocationGPSSessionStatistics_DeviceOrientationData *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  {
    awd::metrics::LocationGPSSessionStatistics_DeviceOrientationData::CheckTypeAndMergeFrom();
  }

  awd::metrics::LocationGPSSessionStatistics_DeviceOrientationData::MergeFrom(this, lpsrc);
}

void awd::metrics::LocationGPSSessionStatistics_DeviceOrientationData::CopyFrom(awd::metrics::LocationGPSSessionStatistics_DeviceOrientationData *this, const awd::metrics::LocationGPSSessionStatistics_DeviceOrientationData *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    awd::metrics::LocationGPSSessionStatistics_DeviceOrientationData::MergeFrom(this, a2);
  }
}

uint64_t awd::metrics::LocationGPSSessionStatistics_DeviceOrientationData::Swap(uint64_t this, awd::metrics::LocationGPSSessionStatistics_DeviceOrientationData *a2)
{
  if (a2 != this)
  {
    v2 = *(this + 16);
    *(this + 16) = *(a2 + 4);
    *(a2 + 4) = v2;
    v3 = *(this + 8);
    *(this + 8) = *(a2 + 1);
    *(a2 + 1) = v3;
    LODWORD(v3) = *(this + 24);
    *(this + 24) = *(a2 + 6);
    *(a2 + 6) = v3;
    LODWORD(v3) = *(this + 20);
    *(this + 20) = *(a2 + 5);
    *(a2 + 5) = v3;
  }

  return this;
}

uint64_t awd::metrics::LocationGPSSessionStatistics_PowerMeasurementData::SharedCtor(uint64_t this)
{
  *(this + 8) = 0;
  *(this + 16) = 0;
  *(this + 24) = 0;
  return this;
}

awd::metrics::LocationGPSSessionStatistics_PowerMeasurementData *awd::metrics::LocationGPSSessionStatistics_PowerMeasurementData::LocationGPSSessionStatistics_PowerMeasurementData(awd::metrics::LocationGPSSessionStatistics_PowerMeasurementData *this, const awd::metrics::LocationGPSSessionStatistics_PowerMeasurementData *a2)
{
  *(this + 1) = 0;
  *(this + 2) = 0;
  *this = &unk_2A1D501F0;
  *(this + 6) = 0;
  awd::metrics::LocationGPSSessionStatistics_PowerMeasurementData::MergeFrom(this, a2);
  return this;
}

void awd::metrics::LocationGPSSessionStatistics_PowerMeasurementData::MergeFrom(awd::metrics::LocationGPSSessionStatistics_PowerMeasurementData *this, const awd::metrics::LocationGPSSessionStatistics_PowerMeasurementData *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v7);
  }

  LOBYTE(v4) = *(a2 + 24);
  if (v4)
  {
    if (*(a2 + 24))
    {
      v5 = *(a2 + 4);
      if (v5 >= 0x20)
      {
        awd::metrics::LocationGPSSessionStatistics_PowerMeasurementData::MergeFrom();
      }

      *(this + 6) |= 1u;
      *(this + 4) = v5;
      v4 = *(a2 + 6);
    }

    if ((v4 & 2) != 0)
    {
      v6 = *(a2 + 1);
      *(this + 6) |= 2u;
      *(this + 1) = v6;
    }
  }
}

void sub_29644849C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::metrics::LocationGPSSessionStatistics_PowerMeasurementData::~LocationGPSSessionStatistics_PowerMeasurementData(awd::metrics::LocationGPSSessionStatistics_PowerMeasurementData *this)
{
  *this = &unk_2A1D501F0;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2A1D501F0;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2A1D501F0;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  JUMPOUT(0x29C25A730);
}

uint64_t awd::metrics::LocationGPSSessionStatistics_PowerMeasurementData::default_instance(awd::metrics::LocationGPSSessionStatistics_PowerMeasurementData *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = awd::metrics::LocationGPSSessionStatistics_PowerMeasurementData::default_instance_;
  if (!awd::metrics::LocationGPSSessionStatistics_PowerMeasurementData::default_instance_)
  {
    awd::metrics::protobuf_AddDesc_Location_2eproto(0, a2, a3, a4);
    return awd::metrics::LocationGPSSessionStatistics_PowerMeasurementData::default_instance_;
  }

  return result;
}

uint64_t awd::metrics::LocationGPSSessionStatistics_PowerMeasurementData::Clear(uint64_t this)
{
  if (*(this + 24))
  {
    *(this + 16) = 0;
    *(this + 8) = 0;
  }

  *(this + 24) = 0;
  return this;
}

uint64_t awd::metrics::LocationGPSSessionStatistics_PowerMeasurementData::MergePartialFromCodedStream(awd::metrics::LocationGPSSessionStatistics_PowerMeasurementData *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
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

      if (v8 <= 0x1F)
      {
        *(this + 6) |= 1u;
        *(this + 4) = v8;
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
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 1);
          if (!result)
          {
            return result;
          }

          v13 = *(a2 + 1);
          v9 = *(a2 + 2);
        }

        else
        {
          *(this + 1) = v12;
          v13 = v10 + 1;
          *(a2 + 1) = v13;
        }

        *(this + 6) |= 2u;
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

uint64_t awd::metrics::LocationGPSSessionStatistics_PowerMeasurementData::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 24);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(1, *(this + 16), a2, a4);
    v6 = *(v5 + 24);
  }

  if ((v6 & 2) != 0)
  {
    v7 = *(v5 + 8);

    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(2, v7, a2, a4);
  }

  return this;
}

uint64_t awd::metrics::LocationGPSSessionStatistics_PowerMeasurementData::ByteSize(awd::metrics::LocationGPSSessionStatistics_PowerMeasurementData *this, unint64_t a2)
{
  v3 = *(this + 24);
  if (v3)
  {
    if ((*(this + 24) & 1) == 0)
    {
      v4 = 0;
      if ((*(this + 24) & 2) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_11;
    }

    v5 = *(this + 4);
    if ((v5 & 0x80000000) == 0)
    {
      if (v5 >= 0x80)
      {
        v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5) + 1;
        if ((*(this + 6) & 2) == 0)
        {
          goto LABEL_12;
        }
      }

      else
      {
        v4 = 2;
        if ((v3 & 2) == 0)
        {
          goto LABEL_12;
        }
      }

      goto LABEL_11;
    }

    v4 = 11;
    if ((v3 & 2) != 0)
    {
LABEL_11:
      v4 = v4 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 1)) + 1;
    }
  }

  else
  {
    v4 = 0;
  }

LABEL_12:
  *(this + 5) = v4;
  return v4;
}

void awd::metrics::LocationGPSSessionStatistics_PowerMeasurementData::CheckTypeAndMergeFrom(awd::metrics::LocationGPSSessionStatistics_PowerMeasurementData *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  {
    awd::metrics::LocationGPSSessionStatistics_PowerMeasurementData::CheckTypeAndMergeFrom();
  }

  awd::metrics::LocationGPSSessionStatistics_PowerMeasurementData::MergeFrom(this, lpsrc);
}

void awd::metrics::LocationGPSSessionStatistics_PowerMeasurementData::CopyFrom(awd::metrics::LocationGPSSessionStatistics_PowerMeasurementData *this, const awd::metrics::LocationGPSSessionStatistics_PowerMeasurementData *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    awd::metrics::LocationGPSSessionStatistics_PowerMeasurementData::MergeFrom(this, a2);
  }
}

uint64_t awd::metrics::LocationGPSSessionStatistics_PowerMeasurementData::Swap(uint64_t this, awd::metrics::LocationGPSSessionStatistics_PowerMeasurementData *a2)
{
  if (a2 != this)
  {
    v2 = *(this + 16);
    *(this + 16) = *(a2 + 4);
    *(a2 + 4) = v2;
    v3 = *(this + 8);
    *(this + 8) = *(a2 + 1);
    *(a2 + 1) = v3;
    LODWORD(v3) = *(this + 24);
    *(this + 24) = *(a2 + 6);
    *(a2 + 6) = v3;
    LODWORD(v3) = *(this + 20);
    *(this + 20) = *(a2 + 5);
    *(a2 + 5) = v3;
  }

  return this;
}

uint64_t awd::metrics::LocationGPSSessionStatistics_ChargerTypeData::SharedCtor(uint64_t this)
{
  *(this + 8) = 0;
  *(this + 16) = 0;
  *(this + 24) = 0;
  return this;
}

awd::metrics::LocationGPSSessionStatistics_ChargerTypeData *awd::metrics::LocationGPSSessionStatistics_ChargerTypeData::LocationGPSSessionStatistics_ChargerTypeData(awd::metrics::LocationGPSSessionStatistics_ChargerTypeData *this, const awd::metrics::LocationGPSSessionStatistics_ChargerTypeData *a2)
{
  *(this + 1) = 0;
  *(this + 2) = 0;
  *this = &unk_2A1D50268;
  *(this + 6) = 0;
  awd::metrics::LocationGPSSessionStatistics_ChargerTypeData::MergeFrom(this, a2);
  return this;
}

void awd::metrics::LocationGPSSessionStatistics_ChargerTypeData::MergeFrom(awd::metrics::LocationGPSSessionStatistics_ChargerTypeData *this, const awd::metrics::LocationGPSSessionStatistics_ChargerTypeData *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v7);
  }

  LOBYTE(v4) = *(a2 + 24);
  if (v4)
  {
    if (*(a2 + 24))
    {
      v5 = *(a2 + 4);
      *(this + 6) |= 1u;
      *(this + 4) = v5;
      v4 = *(a2 + 6);
    }

    if ((v4 & 2) != 0)
    {
      v6 = *(a2 + 1);
      *(this + 6) |= 2u;
      *(this + 1) = v6;
    }
  }
}

void sub_296448B18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::metrics::LocationGPSSessionStatistics_ChargerTypeData::~LocationGPSSessionStatistics_ChargerTypeData(awd::metrics::LocationGPSSessionStatistics_ChargerTypeData *this)
{
  *this = &unk_2A1D50268;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2A1D50268;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2A1D50268;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  JUMPOUT(0x29C25A730);
}

uint64_t awd::metrics::LocationGPSSessionStatistics_ChargerTypeData::default_instance(awd::metrics::LocationGPSSessionStatistics_ChargerTypeData *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = awd::metrics::LocationGPSSessionStatistics_ChargerTypeData::default_instance_;
  if (!awd::metrics::LocationGPSSessionStatistics_ChargerTypeData::default_instance_)
  {
    awd::metrics::protobuf_AddDesc_Location_2eproto(0, a2, a3, a4);
    return awd::metrics::LocationGPSSessionStatistics_ChargerTypeData::default_instance_;
  }

  return result;
}

uint64_t awd::metrics::LocationGPSSessionStatistics_ChargerTypeData::Clear(uint64_t this)
{
  if (*(this + 24))
  {
    *(this + 16) = 0;
    *(this + 8) = 0;
  }

  *(this + 24) = 0;
  return this;
}

uint64_t awd::metrics::LocationGPSSessionStatistics_ChargerTypeData::MergePartialFromCodedStream(awd::metrics::LocationGPSSessionStatistics_ChargerTypeData *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
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
      v8 = *(a2 + 1);
      v7 = *(a2 + 2);
      if (v8 >= v7 || (v9 = *v8, (v9 & 0x80000000) != 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v15);
        if (!result)
        {
          return result;
        }

        v9 = v15;
        v10 = *(a2 + 1);
        v7 = *(a2 + 2);
      }

      else
      {
        v10 = v8 + 1;
        *(a2 + 1) = v10;
      }

      *(this + 4) = v9;
      *(this + 6) |= 1u;
      if (v10 < v7 && *v10 == 16)
      {
        v11 = v10 + 1;
        *(a2 + 1) = v11;
LABEL_22:
        if (v11 >= v7 || (v12 = *v11, v12 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 1);
          if (!result)
          {
            return result;
          }

          v13 = *(a2 + 1);
          v7 = *(a2 + 2);
        }

        else
        {
          *(this + 1) = v12;
          v13 = v11 + 1;
          *(a2 + 1) = v13;
        }

        *(this + 6) |= 2u;
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

uint64_t awd::metrics::LocationGPSSessionStatistics_ChargerTypeData::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 24);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(1, *(this + 16), a2, a4);
    v6 = *(v5 + 24);
  }

  if ((v6 & 2) != 0)
  {
    v7 = *(v5 + 8);

    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(2, v7, a2, a4);
  }

  return this;
}

uint64_t awd::metrics::LocationGPSSessionStatistics_ChargerTypeData::ByteSize(awd::metrics::LocationGPSSessionStatistics_ChargerTypeData *this, unint64_t a2)
{
  v3 = *(this + 24);
  if (v3)
  {
    if ((*(this + 24) & 1) == 0)
    {
      v4 = 0;
      if ((*(this + 24) & 2) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_11;
    }

    v5 = *(this + 4);
    if ((v5 & 0x80000000) == 0)
    {
      if (v5 >= 0x80)
      {
        v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5) + 1;
        if ((*(this + 6) & 2) == 0)
        {
          goto LABEL_12;
        }
      }

      else
      {
        v4 = 2;
        if ((v3 & 2) == 0)
        {
          goto LABEL_12;
        }
      }

      goto LABEL_11;
    }

    v4 = 11;
    if ((v3 & 2) != 0)
    {
LABEL_11:
      v4 = v4 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 1)) + 1;
    }
  }

  else
  {
    v4 = 0;
  }

LABEL_12:
  *(this + 5) = v4;
  return v4;
}

void awd::metrics::LocationGPSSessionStatistics_ChargerTypeData::CheckTypeAndMergeFrom(awd::metrics::LocationGPSSessionStatistics_ChargerTypeData *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  {
    awd::metrics::LocationGPSSessionStatistics_ChargerTypeData::CheckTypeAndMergeFrom();
  }

  awd::metrics::LocationGPSSessionStatistics_ChargerTypeData::MergeFrom(this, lpsrc);
}

void awd::metrics::LocationGPSSessionStatistics_ChargerTypeData::CopyFrom(awd::metrics::LocationGPSSessionStatistics_ChargerTypeData *this, const awd::metrics::LocationGPSSessionStatistics_ChargerTypeData *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    awd::metrics::LocationGPSSessionStatistics_ChargerTypeData::MergeFrom(this, a2);
  }
}

uint64_t awd::metrics::LocationGPSSessionStatistics_ChargerTypeData::Swap(uint64_t this, awd::metrics::LocationGPSSessionStatistics_ChargerTypeData *a2)
{
  if (a2 != this)
  {
    v2 = *(this + 16);
    *(this + 16) = *(a2 + 4);
    *(a2 + 4) = v2;
    v3 = *(this + 8);
    *(this + 8) = *(a2 + 1);
    *(a2 + 1) = v3;
    LODWORD(v3) = *(this + 24);
    *(this + 24) = *(a2 + 6);
    *(a2 + 6) = v3;
    LODWORD(v3) = *(this + 20);
    *(this + 20) = *(a2 + 5);
    *(a2 + 5) = v3;
  }

  return this;
}

uint64_t awd::metrics::LocationGPSSessionStatistics_ThermalLevelData::SharedCtor(uint64_t this)
{
  *(this + 8) = 0;
  *(this + 16) = 0;
  *(this + 24) = 0;
  return this;
}

awd::metrics::LocationGPSSessionStatistics_ThermalLevelData *awd::metrics::LocationGPSSessionStatistics_ThermalLevelData::LocationGPSSessionStatistics_ThermalLevelData(awd::metrics::LocationGPSSessionStatistics_ThermalLevelData *this, const awd::metrics::LocationGPSSessionStatistics_ThermalLevelData *a2)
{
  *(this + 1) = 0;
  *(this + 2) = 0;
  *this = &unk_2A1D502E0;
  *(this + 6) = 0;
  awd::metrics::LocationGPSSessionStatistics_ThermalLevelData::MergeFrom(this, a2);
  return this;
}

void awd::metrics::LocationGPSSessionStatistics_ThermalLevelData::MergeFrom(awd::metrics::LocationGPSSessionStatistics_ThermalLevelData *this, const awd::metrics::LocationGPSSessionStatistics_ThermalLevelData *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v7);
  }

  LOBYTE(v4) = *(a2 + 24);
  if (v4)
  {
    if (*(a2 + 24))
    {
      v5 = *(a2 + 4);
      *(this + 6) |= 1u;
      *(this + 4) = v5;
      v4 = *(a2 + 6);
    }

    if ((v4 & 2) != 0)
    {
      v6 = *(a2 + 1);
      *(this + 6) |= 2u;
      *(this + 1) = v6;
    }
  }
}

void sub_29644918C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::metrics::LocationGPSSessionStatistics_ThermalLevelData::~LocationGPSSessionStatistics_ThermalLevelData(awd::metrics::LocationGPSSessionStatistics_ThermalLevelData *this)
{
  *this = &unk_2A1D502E0;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2A1D502E0;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2A1D502E0;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  JUMPOUT(0x29C25A730);
}

uint64_t awd::metrics::LocationGPSSessionStatistics_ThermalLevelData::default_instance(awd::metrics::LocationGPSSessionStatistics_ThermalLevelData *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = awd::metrics::LocationGPSSessionStatistics_ThermalLevelData::default_instance_;
  if (!awd::metrics::LocationGPSSessionStatistics_ThermalLevelData::default_instance_)
  {
    awd::metrics::protobuf_AddDesc_Location_2eproto(0, a2, a3, a4);
    return awd::metrics::LocationGPSSessionStatistics_ThermalLevelData::default_instance_;
  }

  return result;
}

uint64_t awd::metrics::LocationGPSSessionStatistics_ThermalLevelData::Clear(uint64_t this)
{
  if (*(this + 24))
  {
    *(this + 16) = 0;
    *(this + 8) = 0;
  }

  *(this + 24) = 0;
  return this;
}

uint64_t awd::metrics::LocationGPSSessionStatistics_ThermalLevelData::MergePartialFromCodedStream(awd::metrics::LocationGPSSessionStatistics_ThermalLevelData *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
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
      v8 = *(a2 + 1);
      v7 = *(a2 + 2);
      if (v8 >= v7 || (v9 = *v8, (v9 & 0x80000000) != 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v15);
        if (!result)
        {
          return result;
        }

        v9 = v15;
        v10 = *(a2 + 1);
        v7 = *(a2 + 2);
      }

      else
      {
        v10 = v8 + 1;
        *(a2 + 1) = v10;
      }

      *(this + 4) = v9;
      *(this + 6) |= 1u;
      if (v10 < v7 && *v10 == 16)
      {
        v11 = v10 + 1;
        *(a2 + 1) = v11;
LABEL_22:
        if (v11 >= v7 || (v12 = *v11, v12 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 1);
          if (!result)
          {
            return result;
          }

          v13 = *(a2 + 1);
          v7 = *(a2 + 2);
        }

        else
        {
          *(this + 1) = v12;
          v13 = v11 + 1;
          *(a2 + 1) = v13;
        }

        *(this + 6) |= 2u;
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

uint64_t awd::metrics::LocationGPSSessionStatistics_ThermalLevelData::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 24);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(1, *(this + 16), a2, a4);
    v6 = *(v5 + 24);
  }

  if ((v6 & 2) != 0)
  {
    v7 = *(v5 + 8);

    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(2, v7, a2, a4);
  }

  return this;
}

uint64_t awd::metrics::LocationGPSSessionStatistics_ThermalLevelData::ByteSize(awd::metrics::LocationGPSSessionStatistics_ThermalLevelData *this, unint64_t a2)
{
  v3 = *(this + 24);
  if (v3)
  {
    if ((*(this + 24) & 1) == 0)
    {
      v4 = 0;
      if ((*(this + 24) & 2) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_11;
    }

    v5 = *(this + 4);
    if ((v5 & 0x80000000) == 0)
    {
      if (v5 >= 0x80)
      {
        v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5) + 1;
        if ((*(this + 6) & 2) == 0)
        {
          goto LABEL_12;
        }
      }

      else
      {
        v4 = 2;
        if ((v3 & 2) == 0)
        {
          goto LABEL_12;
        }
      }

      goto LABEL_11;
    }

    v4 = 11;
    if ((v3 & 2) != 0)
    {
LABEL_11:
      v4 = v4 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 1)) + 1;
    }
  }

  else
  {
    v4 = 0;
  }

LABEL_12:
  *(this + 5) = v4;
  return v4;
}

void awd::metrics::LocationGPSSessionStatistics_ThermalLevelData::CheckTypeAndMergeFrom(awd::metrics::LocationGPSSessionStatistics_ThermalLevelData *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  {
    awd::metrics::LocationGPSSessionStatistics_ThermalLevelData::CheckTypeAndMergeFrom();
  }

  awd::metrics::LocationGPSSessionStatistics_ThermalLevelData::MergeFrom(this, lpsrc);
}

void awd::metrics::LocationGPSSessionStatistics_ThermalLevelData::CopyFrom(awd::metrics::LocationGPSSessionStatistics_ThermalLevelData *this, const awd::metrics::LocationGPSSessionStatistics_ThermalLevelData *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    awd::metrics::LocationGPSSessionStatistics_ThermalLevelData::MergeFrom(this, a2);
  }
}

uint64_t awd::metrics::LocationGPSSessionStatistics_ThermalLevelData::Swap(uint64_t this, awd::metrics::LocationGPSSessionStatistics_ThermalLevelData *a2)
{
  if (a2 != this)
  {
    v2 = *(this + 16);
    *(this + 16) = *(a2 + 4);
    *(a2 + 4) = v2;
    v3 = *(this + 8);
    *(this + 8) = *(a2 + 1);
    *(a2 + 1) = v3;
    LODWORD(v3) = *(this + 24);
    *(this + 24) = *(a2 + 6);
    *(a2 + 6) = v3;
    LODWORD(v3) = *(this + 20);
    *(this + 20) = *(a2 + 5);
    *(a2 + 5) = v3;
  }

  return this;
}

double awd::metrics::LocationGPSSessionStatistics_LocationGpsPersistentStatistics::SharedCtor(awd::metrics::LocationGPSSessionStatistics_LocationGpsPersistentStatistics *this)
{
  *(this + 18) = 0;
  result = 0.0;
  *(this + 56) = 0u;
  *(this + 40) = 0u;
  *(this + 24) = 0u;
  *(this + 8) = 0u;
  return result;
}

awd::metrics::LocationGPSSessionStatistics_LocationGpsPersistentStatistics *awd::metrics::LocationGPSSessionStatistics_LocationGpsPersistentStatistics::LocationGPSSessionStatistics_LocationGpsPersistentStatistics(awd::metrics::LocationGPSSessionStatistics_LocationGpsPersistentStatistics *this, const awd::metrics::LocationGPSSessionStatistics_LocationGpsPersistentStatistics *a2)
{
  *this = &unk_2A1D50358;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 18) = 0;
  awd::metrics::LocationGPSSessionStatistics_LocationGpsPersistentStatistics::MergeFrom(this, a2);
  return this;
}

void awd::metrics::LocationGPSSessionStatistics_LocationGpsPersistentStatistics::MergeFrom(awd::metrics::LocationGPSSessionStatistics_LocationGpsPersistentStatistics *this, const awd::metrics::LocationGPSSessionStatistics_LocationGpsPersistentStatistics *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v18);
  }

  v4 = *(a2 + 18);
  if (!v4)
  {
    goto LABEL_15;
  }

  if (v4)
  {
    v5 = *(a2 + 2);
    if (v5 >= 3)
    {
      awd::metrics::LocationGPSSessionStatistics_LocationGpsPersistentStatistics::MergeFrom();
    }

    *(this + 18) |= 1u;
    *(this + 2) = v5;
    v4 = *(a2 + 18);
  }

  if ((v4 & 2) != 0)
  {
    v10 = *(a2 + 3);
    *(this + 18) |= 2u;
    *(this + 3) = v10;
    v4 = *(a2 + 18);
    if ((v4 & 4) == 0)
    {
LABEL_9:
      if ((v4 & 8) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_28;
    }
  }

  else if ((v4 & 4) == 0)
  {
    goto LABEL_9;
  }

  v11 = *(a2 + 4);
  *(this + 18) |= 4u;
  *(this + 4) = v11;
  v4 = *(a2 + 18);
  if ((v4 & 8) == 0)
  {
LABEL_10:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_29;
  }

LABEL_28:
  v12 = *(a2 + 5);
  *(this + 18) |= 8u;
  *(this + 5) = v12;
  v4 = *(a2 + 18);
  if ((v4 & 0x10) == 0)
  {
LABEL_11:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_12;
    }

LABEL_30:
    v14 = *(a2 + 7);
    *(this + 18) |= 0x20u;
    *(this + 7) = v14;
    v4 = *(a2 + 18);
    if ((v4 & 0x40) == 0)
    {
LABEL_13:
      if ((v4 & 0x80) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_14;
    }

    goto LABEL_31;
  }

LABEL_29:
  v13 = *(a2 + 6);
  *(this + 18) |= 0x10u;
  *(this + 6) = v13;
  v4 = *(a2 + 18);
  if ((v4 & 0x20) != 0)
  {
    goto LABEL_30;
  }

LABEL_12:
  if ((v4 & 0x40) == 0)
  {
    goto LABEL_13;
  }

LABEL_31:
  v15 = *(a2 + 4);
  *(this + 18) |= 0x40u;
  *(this + 4) = v15;
  v4 = *(a2 + 18);
  if ((v4 & 0x80) != 0)
  {
LABEL_14:
    v6 = *(a2 + 5);
    *(this + 18) |= 0x80u;
    *(this + 5) = v6;
    v4 = *(a2 + 18);
  }

LABEL_15:
  if ((v4 & 0xFF00) == 0)
  {
    return;
  }

  if ((v4 & 0x100) != 0)
  {
    v7 = *(a2 + 12);
    *(this + 18) |= 0x100u;
    *(this + 12) = v7;
    v4 = *(a2 + 18);
  }

  if ((v4 & 0x200) != 0)
  {
    v8 = *(a2 + 13);
    if (v8 >= 5)
    {
      awd::metrics::LocationGPSSessionStatistics_LocationGpsPersistentStatistics::MergeFrom();
    }

    *(this + 18) |= 0x200u;
    *(this + 13) = v8;
    v4 = *(a2 + 18);
  }

  if ((v4 & 0x400) != 0)
  {
    v16 = *(a2 + 14);
    *(this + 18) |= 0x400u;
    *(this + 14) = v16;
    v4 = *(a2 + 18);
    if ((v4 & 0x800) == 0)
    {
LABEL_23:
      if ((v4 & 0x1000) == 0)
      {
        return;
      }

      goto LABEL_24;
    }
  }

  else if ((v4 & 0x800) == 0)
  {
    goto LABEL_23;
  }

  v17 = *(a2 + 15);
  *(this + 18) |= 0x800u;
  *(this + 15) = v17;
  if ((*(a2 + 18) & 0x1000) != 0)
  {
LABEL_24:
    v9 = *(a2 + 16);
    *(this + 18) |= 0x1000u;
    *(this + 16) = v9;
  }
}

void sub_2964499C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::metrics::LocationGPSSessionStatistics_LocationGpsPersistentStatistics::~LocationGPSSessionStatistics_LocationGpsPersistentStatistics(awd::metrics::LocationGPSSessionStatistics_LocationGpsPersistentStatistics *this)
{
  *this = &unk_2A1D50358;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2A1D50358;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2A1D50358;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  JUMPOUT(0x29C25A730);
}

uint64_t awd::metrics::LocationGPSSessionStatistics_LocationGpsPersistentStatistics::default_instance(awd::metrics::LocationGPSSessionStatistics_LocationGpsPersistentStatistics *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = awd::metrics::LocationGPSSessionStatistics_LocationGpsPersistentStatistics::default_instance_;
  if (!awd::metrics::LocationGPSSessionStatistics_LocationGpsPersistentStatistics::default_instance_)
  {
    awd::metrics::protobuf_AddDesc_Location_2eproto(0, a2, a3, a4);
    return awd::metrics::LocationGPSSessionStatistics_LocationGpsPersistentStatistics::default_instance_;
  }

  return result;
}

uint64_t awd::metrics::LocationGPSSessionStatistics_LocationGpsPersistentStatistics::Clear(uint64_t this)
{
  v1 = *(this + 72);
  if (v1)
  {
    *(this + 40) = 0;
    *(this + 24) = 0u;
    *(this + 8) = 0u;
  }

  if ((v1 & 0xFF00) != 0)
  {
    *(this + 48) = 0;
    *(this + 56) = 0;
    *(this + 64) = 0;
  }

  *(this + 72) = 0;
  return this;
}

uint64_t awd::metrics::LocationGPSSessionStatistics_LocationGpsPersistentStatistics::MergePartialFromCodedStream(awd::metrics::LocationGPSSessionStatistics_LocationGpsPersistentStatistics *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
{
  while (2)
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

    switch(TagFallback >> 3)
    {
      case 1u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_34;
        }

        v49[0] = 0;
        v7 = *(a2 + 1);
        if (v7 < *(a2 + 2))
        {
          v8 = *v7;
          if ((v8 & 0x80000000) == 0)
          {
            *(a2 + 1) = v7 + 1;
            goto LABEL_40;
          }
        }

        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v49);
        if (result)
        {
          v8 = v49[0];
LABEL_40:
          if (v8 <= 2)
          {
            *(this + 18) |= 1u;
            *(this + 2) = v8;
          }

          v23 = *(a2 + 1);
          v11 = *(a2 + 2);
          if (v23 < v11 && *v23 == 16)
          {
            v18 = v23 + 1;
            *(a2 + 1) = v18;
            goto LABEL_45;
          }

          continue;
        }

        break;
      case 2u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_34;
        }

        v18 = *(a2 + 1);
        v11 = *(a2 + 2);
LABEL_45:
        v49[0] = 0;
        if (v18 >= v11 || (v24 = *v18, (v24 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v49);
          if (!result)
          {
            return result;
          }

          v24 = v49[0];
          v25 = *(a2 + 1);
          v11 = *(a2 + 2);
        }

        else
        {
          v25 = v18 + 1;
          *(a2 + 1) = v25;
        }

        *(this + 3) = v24;
        *(this + 18) |= 2u;
        if (v25 >= v11 || *v25 != 24)
        {
          continue;
        }

        v15 = v25 + 1;
        *(a2 + 1) = v15;
LABEL_53:
        v49[0] = 0;
        if (v15 >= v11 || (v26 = *v15, (v26 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v49);
          if (!result)
          {
            return result;
          }

          v26 = v49[0];
          v27 = *(a2 + 1);
          v11 = *(a2 + 2);
        }

        else
        {
          v27 = v15 + 1;
          *(a2 + 1) = v27;
        }

        *(this + 4) = v26;
        *(this + 18) |= 4u;
        if (v27 >= v11 || *v27 != 32)
        {
          continue;
        }

        v16 = v27 + 1;
        *(a2 + 1) = v16;
LABEL_61:
        v49[0] = 0;
        if (v16 >= v11 || (v28 = *v16, (v28 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v49);
          if (!result)
          {
            return result;
          }

          v28 = v49[0];
          v29 = *(a2 + 1);
          v11 = *(a2 + 2);
        }

        else
        {
          v29 = v16 + 1;
          *(a2 + 1) = v29;
        }

        *(this + 5) = v28;
        *(this + 18) |= 8u;
        if (v29 >= v11 || *v29 != 40)
        {
          continue;
        }

        v12 = v29 + 1;
        *(a2 + 1) = v12;
LABEL_69:
        v49[0] = 0;
        if (v12 >= v11 || (v30 = *v12, (v30 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v49);
          if (!result)
          {
            return result;
          }

          v30 = v49[0];
          v31 = *(a2 + 1);
          v11 = *(a2 + 2);
        }

        else
        {
          v31 = v12 + 1;
          *(a2 + 1) = v31;
        }

        *(this + 6) = v30;
        *(this + 18) |= 0x10u;
        if (v31 >= v11 || *v31 != 48)
        {
          continue;
        }

        v19 = v31 + 1;
        *(a2 + 1) = v19;
LABEL_77:
        v49[0] = 0;
        if (v19 >= v11 || (v32 = *v19, (v32 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v49);
          if (!result)
          {
            return result;
          }

          v32 = v49[0];
          v33 = *(a2 + 1);
          v11 = *(a2 + 2);
        }

        else
        {
          v33 = v19 + 1;
          *(a2 + 1) = v33;
        }

        *(this + 7) = v32;
        *(this + 18) |= 0x20u;
        if (v33 >= v11 || *v33 != 56)
        {
          continue;
        }

        v20 = v33 + 1;
        *(a2 + 1) = v20;
LABEL_85:
        *v49 = 0;
        if (v20 >= v11 || (v34 = *v20, v34 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, v49);
          if (!result)
          {
            return result;
          }

          v34 = *v49;
          v35 = *(a2 + 1);
          v11 = *(a2 + 2);
        }

        else
        {
          v35 = v20 + 1;
          *(a2 + 1) = v35;
        }

        *(this + 4) = v34;
        *(this + 18) |= 0x40u;
        if (v35 >= v11 || *v35 != 64)
        {
          continue;
        }

        v17 = v35 + 1;
        *(a2 + 1) = v17;
LABEL_93:
        *v49 = 0;
        if (v17 >= v11 || (v36 = *v17, v36 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, v49);
          if (!result)
          {
            return result;
          }

          v36 = *v49;
          v37 = *(a2 + 1);
          v11 = *(a2 + 2);
        }

        else
        {
          v37 = v17 + 1;
          *(a2 + 1) = v37;
        }

        *(this + 5) = v36;
        *(this + 18) |= 0x80u;
        if (v37 >= v11 || *v37 != 72)
        {
          continue;
        }

        v22 = v37 + 1;
        *(a2 + 1) = v22;
LABEL_101:
        v49[0] = 0;
        if (v22 >= v11 || (v38 = *v22, (v38 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v49);
          if (!result)
          {
            return result;
          }

          v38 = v49[0];
          v39 = *(a2 + 1);
          v11 = *(a2 + 2);
        }

        else
        {
          v39 = v22 + 1;
          *(a2 + 1) = v39;
        }

        *(this + 12) = v38;
        *(this + 18) |= 0x100u;
        if (v39 >= v11 || *v39 != 80)
        {
          continue;
        }

        v14 = v39 + 1;
        *(a2 + 1) = v14;
LABEL_109:
        v49[0] = 0;
        if (v14 >= v11 || (v40 = *v14, (v40 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v49);
          if (!result)
          {
            return result;
          }

          v40 = v49[0];
        }

        else
        {
          *(a2 + 1) = v14 + 1;
        }

        if (v40 <= 4)
        {
          *(this + 18) |= 0x200u;
          *(this + 13) = v40;
        }

        v41 = *(a2 + 1);
        v9 = *(a2 + 2);
        if (v41 >= v9 || *v41 != 88)
        {
          continue;
        }

        v21 = v41 + 1;
        *(a2 + 1) = v21;
LABEL_119:
        v49[0] = 0;
        if (v21 >= v9 || (v42 = *v21, (v42 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v49);
          if (!result)
          {
            return result;
          }

          v42 = v49[0];
          v43 = *(a2 + 1);
          v9 = *(a2 + 2);
        }

        else
        {
          v43 = v21 + 1;
          *(a2 + 1) = v43;
        }

        *(this + 15) = v42;
        *(this + 18) |= 0x800u;
        if (v43 >= v9 || *v43 != 96)
        {
          continue;
        }

        v10 = v43 + 1;
        *(a2 + 1) = v10;
LABEL_127:
        v49[0] = 0;
        if (v10 >= v9 || (v44 = *v10, (v44 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v49);
          if (!result)
          {
            return result;
          }

          v44 = v49[0];
          v45 = *(a2 + 1);
          v9 = *(a2 + 2);
        }

        else
        {
          v45 = v10 + 1;
          *(a2 + 1) = v45;
        }

        *(this + 16) = v44;
        *(this + 18) |= 0x1000u;
        if (v45 >= v9 || *v45 != 104)
        {
          continue;
        }

        v13 = v45 + 1;
        *(a2 + 1) = v13;
LABEL_135:
        v49[0] = 0;
        if (v13 >= v9 || (v46 = *v13, (v46 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v49);
          if (!result)
          {
            return result;
          }

          v46 = v49[0];
          v47 = *(a2 + 1);
          v9 = *(a2 + 2);
        }

        else
        {
          v47 = v13 + 1;
          *(a2 + 1) = v47;
        }

        *(this + 14) = v46;
        *(this + 18) |= 0x400u;
        if (v47 != v9 || !*(a2 + 11) && *(a2 + 6) != *(a2 + 10))
        {
          continue;
        }

        *(a2 + 8) = 0;
        result = 1;
        *(a2 + 36) = 1;
        return result;
      case 3u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_34;
        }

        v15 = *(a2 + 1);
        v11 = *(a2 + 2);
        goto LABEL_53;
      case 4u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_34;
        }

        v16 = *(a2 + 1);
        v11 = *(a2 + 2);
        goto LABEL_61;
      case 5u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_34;
        }

        v12 = *(a2 + 1);
        v11 = *(a2 + 2);
        goto LABEL_69;
      case 6u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_34;
        }

        v19 = *(a2 + 1);
        v11 = *(a2 + 2);
        goto LABEL_77;
      case 7u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_34;
        }

        v20 = *(a2 + 1);
        v11 = *(a2 + 2);
        goto LABEL_85;
      case 8u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_34;
        }

        v17 = *(a2 + 1);
        v11 = *(a2 + 2);
        goto LABEL_93;
      case 9u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_34;
        }

        v22 = *(a2 + 1);
        v11 = *(a2 + 2);
        goto LABEL_101;
      case 0xAu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_34;
        }

        v14 = *(a2 + 1);
        v11 = *(a2 + 2);
        goto LABEL_109;
      case 0xBu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_34;
        }

        v21 = *(a2 + 1);
        v9 = *(a2 + 2);
        goto LABEL_119;
      case 0xCu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_34;
        }

        v10 = *(a2 + 1);
        v9 = *(a2 + 2);
        goto LABEL_127;
      case 0xDu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_34;
        }

        v13 = *(a2 + 1);
        v9 = *(a2 + 2);
        goto LABEL_135;
      default:
LABEL_34:
        if ((TagFallback & 7) == 4)
        {
          return 1;
        }

        if (wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(a2, TagFallback))
        {
          continue;
        }

        return 0;
    }

    return result;
  }
}

uint64_t awd::metrics::LocationGPSSessionStatistics_LocationGpsPersistentStatistics::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 72);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(1, *(this + 8), a2, a4);
    v6 = *(v5 + 72);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_17;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(2, *(v5 + 12), a2, a4);
  v6 = *(v5 + 72);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_18;
  }

LABEL_17:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(3, *(v5 + 16), a2, a4);
  v6 = *(v5 + 72);
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_19;
  }

LABEL_18:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(4, *(v5 + 20), a2, a4);
  v6 = *(v5 + 72);
  if ((v6 & 0x10) == 0)
  {
LABEL_6:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_20;
  }

LABEL_19:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(5, *(v5 + 24), a2, a4);
  v6 = *(v5 + 72);
  if ((v6 & 0x20) == 0)
  {
LABEL_7:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_21;
  }

LABEL_20:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(6, *(v5 + 28), a2, a4);
  v6 = *(v5 + 72);
  if ((v6 & 0x40) == 0)
  {
LABEL_8:
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_22;
  }

LABEL_21:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt64(7, *(v5 + 32), a2, a4);
  v6 = *(v5 + 72);
  if ((v6 & 0x80) == 0)
  {
LABEL_9:
    if ((v6 & 0x100) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_23;
  }

LABEL_22:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt64(8, *(v5 + 40), a2, a4);
  v6 = *(v5 + 72);
  if ((v6 & 0x100) == 0)
  {
LABEL_10:
    if ((v6 & 0x200) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_24;
  }

LABEL_23:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(9, *(v5 + 48), a2, a4);
  v6 = *(v5 + 72);
  if ((v6 & 0x200) == 0)
  {
LABEL_11:
    if ((v6 & 0x800) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_25;
  }

LABEL_24:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(0xA, *(v5 + 52), a2, a4);
  v6 = *(v5 + 72);
  if ((v6 & 0x800) == 0)
  {
LABEL_12:
    if ((v6 & 0x1000) == 0)
    {
      goto LABEL_13;
    }

LABEL_26:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(0xC, *(v5 + 64), a2, a4);
    if ((*(v5 + 72) & 0x400) == 0)
    {
      return this;
    }

    goto LABEL_27;
  }

LABEL_25:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(0xB, *(v5 + 60), a2, a4);
  v6 = *(v5 + 72);
  if ((v6 & 0x1000) != 0)
  {
    goto LABEL_26;
  }

LABEL_13:
  if ((v6 & 0x400) == 0)
  {
    return this;
  }

LABEL_27:
  v7 = *(v5 + 56);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(0xD, v7, a2, a4);
}

uint64_t awd::metrics::LocationGPSSessionStatistics_LocationGpsPersistentStatistics::ByteSize(awd::metrics::LocationGPSSessionStatistics_LocationGpsPersistentStatistics *this, unint64_t a2)
{
  v3 = *(this + 18);
  if (!v3)
  {
    v4 = 0;
    goto LABEL_26;
  }

  if (v3)
  {
    v5 = *(this + 2);
    if ((v5 & 0x80000000) != 0)
    {
      v4 = 11;
      if ((v3 & 2) == 0)
      {
        goto LABEL_19;
      }
    }

    else if (v5 >= 0x80)
    {
      v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5) + 1;
      v3 = *(this + 18);
      if ((v3 & 2) == 0)
      {
        goto LABEL_19;
      }
    }

    else
    {
      v4 = 2;
      if ((v3 & 2) == 0)
      {
        goto LABEL_19;
      }
    }
  }

  else
  {
    v4 = 0;
    if ((v3 & 2) == 0)
    {
      goto LABEL_19;
    }
  }

  v6 = *(this + 3);
  if ((v6 & 0x80000000) != 0)
  {
    v7 = 11;
  }

  else if (v6 >= 0x80)
  {
    v7 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v6) + 1;
    v3 = *(this + 18);
  }

  else
  {
    v7 = 2;
  }

  v4 = (v7 + v4);
LABEL_19:
  if ((v3 & 4) != 0)
  {
    v8 = *(this + 4);
    if ((v8 & 0x80000000) != 0)
    {
      v9 = 11;
    }

    else if (v8 >= 0x80)
    {
      v9 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v8) + 1;
      v3 = *(this + 18);
    }

    else
    {
      v9 = 2;
    }

    v4 = (v9 + v4);
    if ((v3 & 8) == 0)
    {
LABEL_21:
      if ((v3 & 0x10) == 0)
      {
        goto LABEL_22;
      }

      goto LABEL_55;
    }
  }

  else if ((v3 & 8) == 0)
  {
    goto LABEL_21;
  }

  v12 = *(this + 5);
  if ((v12 & 0x80000000) != 0)
  {
    v13 = 11;
  }

  else if (v12 >= 0x80)
  {
    v13 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v12) + 1;
    v3 = *(this + 18);
  }

  else
  {
    v13 = 2;
  }

  v4 = (v13 + v4);
  if ((v3 & 0x10) == 0)
  {
LABEL_22:
    if ((v3 & 0x20) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_67;
  }

LABEL_55:
  v16 = *(this + 6);
  if ((v16 & 0x80000000) != 0)
  {
    v17 = 11;
  }

  else if (v16 >= 0x80)
  {
    v17 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v16) + 1;
    v3 = *(this + 18);
  }

  else
  {
    v17 = 2;
  }

  v4 = (v17 + v4);
  if ((v3 & 0x20) == 0)
  {
LABEL_23:
    if ((v3 & 0x40) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_79;
  }

LABEL_67:
  v20 = *(this + 7);
  if ((v20 & 0x80000000) != 0)
  {
    v21 = 11;
  }

  else if (v20 >= 0x80)
  {
    v21 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v20) + 1;
    v3 = *(this + 18);
  }

  else
  {
    v21 = 2;
  }

  v4 = (v21 + v4);
  if ((v3 & 0x40) == 0)
  {
LABEL_24:
    if ((v3 & 0x80) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_25;
  }

LABEL_79:
  v4 = v4 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 4)) + 1;
  v3 = *(this + 18);
  if ((v3 & 0x80) != 0)
  {
LABEL_25:
    v4 = v4 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 5)) + 1;
    v3 = *(this + 18);
  }

LABEL_26:
  if ((v3 & 0xFF00) == 0)
  {
    goto LABEL_89;
  }

  if ((v3 & 0x100) != 0)
  {
    v10 = *(this + 12);
    if ((v10 & 0x80000000) != 0)
    {
      v11 = 11;
    }

    else if (v10 >= 0x80)
    {
      v11 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v10) + 1;
      v3 = *(this + 18);
    }

    else
    {
      v11 = 2;
    }

    v4 = (v11 + v4);
    if ((v3 & 0x200) == 0)
    {
LABEL_29:
      if ((v3 & 0x400) == 0)
      {
        goto LABEL_30;
      }

      goto LABEL_61;
    }
  }

  else if ((v3 & 0x200) == 0)
  {
    goto LABEL_29;
  }

  v14 = *(this + 13);
  if ((v14 & 0x80000000) != 0)
  {
    v15 = 11;
  }

  else if (v14 >= 0x80)
  {
    v15 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v14) + 1;
    v3 = *(this + 18);
  }

  else
  {
    v15 = 2;
  }

  v4 = (v15 + v4);
  if ((v3 & 0x400) == 0)
  {
LABEL_30:
    if ((v3 & 0x800) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_73;
  }

LABEL_61:
  v18 = *(this + 14);
  if ((v18 & 0x80000000) != 0)
  {
    v19 = 11;
  }

  else if (v18 >= 0x80)
  {
    v19 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v18) + 1;
    v3 = *(this + 18);
  }

  else
  {
    v19 = 2;
  }

  v4 = (v19 + v4);
  if ((v3 & 0x800) == 0)
  {
LABEL_31:
    if ((v3 & 0x1000) == 0)
    {
      goto LABEL_89;
    }

    goto LABEL_83;
  }

LABEL_73:
  v22 = *(this + 15);
  if ((v22 & 0x80000000) != 0)
  {
    v23 = 11;
  }

  else if (v22 >= 0x80)
  {
    v23 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v22) + 1;
    v3 = *(this + 18);
  }

  else
  {
    v23 = 2;
  }

  v4 = (v23 + v4);
  if ((v3 & 0x1000) != 0)
  {
LABEL_83:
    v24 = *(this + 16);
    if ((v24 & 0x80000000) != 0)
    {
      v25 = 11;
    }

    else if (v24 >= 0x80)
    {
      v25 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v24) + 1;
    }

    else
    {
      v25 = 2;
    }

    v4 = (v25 + v4);
  }

LABEL_89:
  *(this + 17) = v4;
  return v4;
}

void awd::metrics::LocationGPSSessionStatistics_LocationGpsPersistentStatistics::CheckTypeAndMergeFrom(awd::metrics::LocationGPSSessionStatistics_LocationGpsPersistentStatistics *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  {
    awd::metrics::LocationGPSSessionStatistics_LocationGpsPersistentStatistics::CheckTypeAndMergeFrom();
  }

  awd::metrics::LocationGPSSessionStatistics_LocationGpsPersistentStatistics::MergeFrom(this, lpsrc);
}

void awd::metrics::LocationGPSSessionStatistics_LocationGpsPersistentStatistics::CopyFrom(awd::metrics::LocationGPSSessionStatistics_LocationGpsPersistentStatistics *this, const awd::metrics::LocationGPSSessionStatistics_LocationGpsPersistentStatistics *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    awd::metrics::LocationGPSSessionStatistics_LocationGpsPersistentStatistics::MergeFrom(this, a2);
  }
}

uint64_t awd::metrics::LocationGPSSessionStatistics_LocationGpsPersistentStatistics::Swap(uint64_t this, awd::metrics::LocationGPSSessionStatistics_LocationGpsPersistentStatistics *a2)
{
  if (a2 != this)
  {
    v2 = *(this + 8);
    *(this + 8) = *(a2 + 2);
    *(a2 + 2) = v2;
    v3 = *(this + 12);
    *(this + 12) = *(a2 + 3);
    *(a2 + 3) = v3;
    v4 = *(this + 16);
    *(this + 16) = *(a2 + 4);
    *(a2 + 4) = v4;
    v5 = *(this + 20);
    *(this + 20) = *(a2 + 5);
    *(a2 + 5) = v5;
    v6 = *(this + 24);
    *(this + 24) = *(a2 + 6);
    *(a2 + 6) = v6;
    v7 = *(this + 28);
    *(this + 28) = *(a2 + 7);
    *(a2 + 7) = v7;
    v8 = *(this + 32);
    *(this + 32) = *(a2 + 4);
    *(a2 + 4) = v8;
    v9 = *(this + 40);
    *(this + 40) = *(a2 + 5);
    *(a2 + 5) = v9;
    LODWORD(v9) = *(this + 48);
    *(this + 48) = *(a2 + 12);
    *(a2 + 12) = v9;
    LODWORD(v9) = *(this + 52);
    *(this + 52) = *(a2 + 13);
    *(a2 + 13) = v9;
    LODWORD(v9) = *(this + 56);
    *(this + 56) = *(a2 + 14);
    *(a2 + 14) = v9;
    LODWORD(v9) = *(this + 60);
    *(this + 60) = *(a2 + 15);
    *(a2 + 15) = v9;
    LODWORD(v9) = *(this + 64);
    *(this + 64) = *(a2 + 16);
    *(a2 + 16) = v9;
    LODWORD(v9) = *(this + 72);
    *(this + 72) = *(a2 + 18);
    *(a2 + 18) = v9;
    LODWORD(v9) = *(this + 68);
    *(this + 68) = *(a2 + 17);
    *(a2 + 17) = v9;
  }

  return this;
}

void *awd::metrics::LocationGPSSessionStatistics_BarometricAltitudeDriftRateInfo::SharedCtor(void *this)
{
  this[1] = 0;
  this[2] = 0;
  this[3] = 0;
  return this;
}

awd::metrics::LocationGPSSessionStatistics_BarometricAltitudeDriftRateInfo *awd::metrics::LocationGPSSessionStatistics_BarometricAltitudeDriftRateInfo::LocationGPSSessionStatistics_BarometricAltitudeDriftRateInfo(awd::metrics::LocationGPSSessionStatistics_BarometricAltitudeDriftRateInfo *this, const awd::metrics::LocationGPSSessionStatistics_BarometricAltitudeDriftRateInfo *a2)
{
  *this = &unk_2A1D503D0;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 3) = 0;
  awd::metrics::LocationGPSSessionStatistics_BarometricAltitudeDriftRateInfo::MergeFrom(this, a2);
  return this;
}

void awd::metrics::LocationGPSSessionStatistics_BarometricAltitudeDriftRateInfo::MergeFrom(awd::metrics::LocationGPSSessionStatistics_BarometricAltitudeDriftRateInfo *this, const awd::metrics::LocationGPSSessionStatistics_BarometricAltitudeDriftRateInfo *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v9);
  }

  LOBYTE(v4) = *(a2 + 28);
  if (v4)
  {
    if (*(a2 + 28))
    {
      v6 = *(a2 + 2);
      *(this + 7) |= 1u;
      *(this + 2) = v6;
      v4 = *(a2 + 7);
      if ((v4 & 2) == 0)
      {
LABEL_6:
        if ((v4 & 4) == 0)
        {
          goto LABEL_7;
        }

        goto LABEL_12;
      }
    }

    else if ((*(a2 + 28) & 2) == 0)
    {
      goto LABEL_6;
    }

    v7 = *(a2 + 3);
    *(this + 7) |= 2u;
    *(this + 3) = v7;
    v4 = *(a2 + 7);
    if ((v4 & 4) == 0)
    {
LABEL_7:
      if ((v4 & 8) == 0)
      {
        return;
      }

      goto LABEL_8;
    }

LABEL_12:
    v8 = *(a2 + 4);
    *(this + 7) |= 4u;
    *(this + 4) = v8;
    if ((*(a2 + 7) & 8) == 0)
    {
      return;
    }

LABEL_8:
    v5 = *(a2 + 5);
    *(this + 7) |= 8u;
    *(this + 5) = v5;
  }
}

void sub_29644AA20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::metrics::LocationGPSSessionStatistics_BarometricAltitudeDriftRateInfo::~LocationGPSSessionStatistics_BarometricAltitudeDriftRateInfo(awd::metrics::LocationGPSSessionStatistics_BarometricAltitudeDriftRateInfo *this)
{
  *this = &unk_2A1D503D0;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2A1D503D0;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2A1D503D0;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  JUMPOUT(0x29C25A730);
}

uint64_t awd::metrics::LocationGPSSessionStatistics_BarometricAltitudeDriftRateInfo::default_instance(awd::metrics::LocationGPSSessionStatistics_BarometricAltitudeDriftRateInfo *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = awd::metrics::LocationGPSSessionStatistics_BarometricAltitudeDriftRateInfo::default_instance_;
  if (!awd::metrics::LocationGPSSessionStatistics_BarometricAltitudeDriftRateInfo::default_instance_)
  {
    awd::metrics::protobuf_AddDesc_Location_2eproto(0, a2, a3, a4);
    return awd::metrics::LocationGPSSessionStatistics_BarometricAltitudeDriftRateInfo::default_instance_;
  }

  return result;
}

uint64_t awd::metrics::LocationGPSSessionStatistics_BarometricAltitudeDriftRateInfo::Clear(uint64_t this)
{
  if (*(this + 28))
  {
    *(this + 8) = 0;
    *(this + 16) = 0;
  }

  *(this + 28) = 0;
  return this;
}

uint64_t awd::metrics::LocationGPSSessionStatistics_BarometricAltitudeDriftRateInfo::MergePartialFromCodedStream(awd::metrics::LocationGPSSessionStatistics_BarometricAltitudeDriftRateInfo *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
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

      v7 = TagFallback >> 3;
      if (TagFallback >> 3 > 2)
      {
        if (v7 == 3)
        {
          if ((TagFallback & 7) == 0)
          {
            v14 = *(a2 + 1);
            v8 = *(a2 + 2);
            goto LABEL_37;
          }
        }

        else if (v7 == 4 && (TagFallback & 7) == 0)
        {
          v10 = *(a2 + 1);
          v8 = *(a2 + 2);
          goto LABEL_45;
        }

        goto LABEL_20;
      }

      if (v7 != 1)
      {
        break;
      }

      if ((TagFallback & 7) != 0)
      {
        goto LABEL_20;
      }

      v22 = 0;
      v11 = *(a2 + 1);
      v8 = *(a2 + 2);
      if (v11 >= v8 || (v12 = *v11, (v12 & 0x80000000) != 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v22);
        if (!result)
        {
          return result;
        }

        v12 = v22;
        v13 = *(a2 + 1);
        v8 = *(a2 + 2);
      }

      else
      {
        v13 = v11 + 1;
        *(a2 + 1) = v13;
      }

      *(this + 2) = v12;
      *(this + 7) |= 1u;
      if (v13 < v8 && *v13 == 16)
      {
        v9 = v13 + 1;
        *(a2 + 1) = v9;
LABEL_29:
        if (v9 >= v8 || (v15 = *v9, v15 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 3);
          if (!result)
          {
            return result;
          }

          v16 = *(a2 + 1);
          v8 = *(a2 + 2);
        }

        else
        {
          *(this + 3) = v15;
          v16 = v9 + 1;
          *(a2 + 1) = v16;
        }

        *(this + 7) |= 2u;
        if (v16 < v8 && *v16 == 24)
        {
          v14 = v16 + 1;
          *(a2 + 1) = v14;
LABEL_37:
          if (v14 >= v8 || (v17 = *v14, v17 < 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 4);
            if (!result)
            {
              return result;
            }

            v18 = *(a2 + 1);
            v8 = *(a2 + 2);
          }

          else
          {
            *(this + 4) = v17;
            v18 = v14 + 1;
            *(a2 + 1) = v18;
          }

          *(this + 7) |= 4u;
          if (v18 < v8 && *v18 == 32)
          {
            v10 = v18 + 1;
            *(a2 + 1) = v10;
LABEL_45:
            if (v10 >= v8 || (v19 = *v10, v19 < 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 5);
              if (!result)
              {
                return result;
              }

              v20 = *(a2 + 1);
              v8 = *(a2 + 2);
            }

            else
            {
              *(this + 5) = v19;
              v20 = v10 + 1;
              *(a2 + 1) = v20;
            }

            *(this + 7) |= 8u;
            if (v20 == v8 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
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

    if (v7 == 2 && (TagFallback & 7) == 0)
    {
      v9 = *(a2 + 1);
      v8 = *(a2 + 2);
      goto LABEL_29;
    }

LABEL_20:
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

unsigned int *awd::metrics::LocationGPSSessionStatistics_BarometricAltitudeDriftRateInfo::SerializeWithCachedSizes(unsigned int *this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = this[7];
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(1, this[2], a2, a4);
    v6 = v5[7];
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

LABEL_8:
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(3, v5[4], a2, a4);
      if ((v5[7] & 8) == 0)
      {
        return this;
      }

      goto LABEL_9;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(2, v5[3], a2, a4);
  v6 = v5[7];
  if ((v6 & 4) != 0)
  {
    goto LABEL_8;
  }

LABEL_4:
  if ((v6 & 8) == 0)
  {
    return this;
  }

LABEL_9:
  v7 = v5[5];

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(4, v7, a2, a4);
}

uint64_t awd::metrics::LocationGPSSessionStatistics_BarometricAltitudeDriftRateInfo::ByteSize(awd::metrics::LocationGPSSessionStatistics_BarometricAltitudeDriftRateInfo *this, unsigned int a2)
{
  LOBYTE(v3) = *(this + 28);
  if (!v3)
  {
    v4 = 0;
    goto LABEL_28;
  }

  if (*(this + 28))
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
      v3 = *(this + 7);
      if ((v3 & 2) == 0)
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
    if ((*(this + 28) & 2) == 0)
    {
      goto LABEL_17;
    }
  }

  v6 = *(this + 3);
  if (v6 >= 0x80)
  {
    v7 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v6) + 1;
    v3 = *(this + 7);
  }

  else
  {
    v7 = 2;
  }

  v4 = (v7 + v4);
LABEL_17:
  if ((v3 & 4) == 0)
  {
    if ((v3 & 8) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_24;
  }

  v8 = *(this + 4);
  if (v8 >= 0x80)
  {
    v9 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v8) + 1;
    v3 = *(this + 7);
  }

  else
  {
    v9 = 2;
  }

  v4 = (v9 + v4);
  if ((v3 & 8) != 0)
  {
LABEL_24:
    v10 = *(this + 5);
    if (v10 >= 0x80)
    {
      v11 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v10) + 1;
    }

    else
    {
      v11 = 2;
    }

    v4 = (v11 + v4);
  }

LABEL_28:
  *(this + 6) = v4;
  return v4;
}

void awd::metrics::LocationGPSSessionStatistics_BarometricAltitudeDriftRateInfo::CheckTypeAndMergeFrom(awd::metrics::LocationGPSSessionStatistics_BarometricAltitudeDriftRateInfo *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  {
    awd::metrics::LocationGPSSessionStatistics_BarometricAltitudeDriftRateInfo::CheckTypeAndMergeFrom();
  }

  awd::metrics::LocationGPSSessionStatistics_BarometricAltitudeDriftRateInfo::MergeFrom(this, lpsrc);
}

void awd::metrics::LocationGPSSessionStatistics_BarometricAltitudeDriftRateInfo::CopyFrom(awd::metrics::LocationGPSSessionStatistics_BarometricAltitudeDriftRateInfo *this, const awd::metrics::LocationGPSSessionStatistics_BarometricAltitudeDriftRateInfo *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    awd::metrics::LocationGPSSessionStatistics_BarometricAltitudeDriftRateInfo::MergeFrom(this, a2);
  }
}

awd::metrics::LocationGPSSessionStatistics_BarometricAltitudeDriftRateInfo *awd::metrics::LocationGPSSessionStatistics_BarometricAltitudeDriftRateInfo::Swap(awd::metrics::LocationGPSSessionStatistics_BarometricAltitudeDriftRateInfo *this, awd::metrics::LocationGPSSessionStatistics_BarometricAltitudeDriftRateInfo *a2)
{
  if (a2 != this)
  {
    v2 = *(this + 2);
    *(this + 2) = *(a2 + 2);
    *(a2 + 2) = v2;
    v3 = *(this + 3);
    *(this + 3) = *(a2 + 3);
    *(a2 + 3) = v3;
    v4 = *(this + 4);
    *(this + 4) = *(a2 + 4);
    *(a2 + 4) = v4;
    v5 = *(this + 5);
    *(this + 5) = *(a2 + 5);
    *(a2 + 5) = v5;
    v6 = *(this + 7);
    *(this + 7) = *(a2 + 7);
    *(a2 + 7) = v6;
    v7 = *(this + 6);
    *(this + 6) = *(a2 + 6);
    *(a2 + 6) = v7;
  }

  return this;
}

uint64_t awd::metrics::LocationGPSSessionStatistics_NSForceOffReason::SharedCtor(uint64_t this)
{
  *(this + 8) = 0;
  *(this + 16) = 0;
  *(this + 24) = 0;
  return this;
}

awd::metrics::LocationGPSSessionStatistics_NSForceOffReason *awd::metrics::LocationGPSSessionStatistics_NSForceOffReason::LocationGPSSessionStatistics_NSForceOffReason(awd::metrics::LocationGPSSessionStatistics_NSForceOffReason *this, const awd::metrics::LocationGPSSessionStatistics_NSForceOffReason *a2)
{
  *(this + 1) = 0;
  *(this + 2) = 0;
  *this = &unk_2A1D50448;
  *(this + 6) = 0;
  awd::metrics::LocationGPSSessionStatistics_NSForceOffReason::MergeFrom(this, a2);
  return this;
}

void awd::metrics::LocationGPSSessionStatistics_NSForceOffReason::MergeFrom(awd::metrics::LocationGPSSessionStatistics_NSForceOffReason *this, const awd::metrics::LocationGPSSessionStatistics_NSForceOffReason *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v7);
  }

  LOBYTE(v4) = *(a2 + 24);
  if (v4)
  {
    if (*(a2 + 24))
    {
      v5 = *(a2 + 4);
      *(this + 6) |= 1u;
      *(this + 4) = v5;
      v4 = *(a2 + 6);
    }

    if ((v4 & 2) != 0)
    {
      v6 = *(a2 + 1);
      *(this + 6) |= 2u;
      *(this + 1) = v6;
    }
  }
}

void sub_29644B238(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::metrics::LocationGPSSessionStatistics_NSForceOffReason::~LocationGPSSessionStatistics_NSForceOffReason(awd::metrics::LocationGPSSessionStatistics_NSForceOffReason *this)
{
  *this = &unk_2A1D50448;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2A1D50448;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2A1D50448;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  JUMPOUT(0x29C25A730);
}

uint64_t awd::metrics::LocationGPSSessionStatistics_NSForceOffReason::default_instance(awd::metrics::LocationGPSSessionStatistics_NSForceOffReason *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = awd::metrics::LocationGPSSessionStatistics_NSForceOffReason::default_instance_;
  if (!awd::metrics::LocationGPSSessionStatistics_NSForceOffReason::default_instance_)
  {
    awd::metrics::protobuf_AddDesc_Location_2eproto(0, a2, a3, a4);
    return awd::metrics::LocationGPSSessionStatistics_NSForceOffReason::default_instance_;
  }

  return result;
}

uint64_t awd::metrics::LocationGPSSessionStatistics_NSForceOffReason::Clear(uint64_t this)
{
  if (*(this + 24))
  {
    *(this + 16) = 0;
    *(this + 8) = 0;
  }

  *(this + 24) = 0;
  return this;
}

uint64_t awd::metrics::LocationGPSSessionStatistics_NSForceOffReason::MergePartialFromCodedStream(awd::metrics::LocationGPSSessionStatistics_NSForceOffReason *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
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
      v8 = *(a2 + 1);
      v7 = *(a2 + 2);
      if (v8 >= v7 || (v9 = *v8, (v9 & 0x80000000) != 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v15);
        if (!result)
        {
          return result;
        }

        v9 = v15;
        v10 = *(a2 + 1);
        v7 = *(a2 + 2);
      }

      else
      {
        v10 = v8 + 1;
        *(a2 + 1) = v10;
      }

      *(this + 4) = v9;
      *(this + 6) |= 1u;
      if (v10 < v7 && *v10 == 16)
      {
        v11 = v10 + 1;
        *(a2 + 1) = v11;
LABEL_22:
        if (v11 >= v7 || (v12 = *v11, v12 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 1);
          if (!result)
          {
            return result;
          }

          v13 = *(a2 + 1);
          v7 = *(a2 + 2);
        }

        else
        {
          *(this + 1) = v12;
          v13 = v11 + 1;
          *(a2 + 1) = v13;
        }

        *(this + 6) |= 2u;
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

uint64_t awd::metrics::LocationGPSSessionStatistics_NSForceOffReason::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 24);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(1, *(this + 16), a2, a4);
    v6 = *(v5 + 24);
  }

  if ((v6 & 2) != 0)
  {
    v7 = *(v5 + 8);

    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(2, v7, a2, a4);
  }

  return this;
}

uint64_t awd::metrics::LocationGPSSessionStatistics_NSForceOffReason::ByteSize(awd::metrics::LocationGPSSessionStatistics_NSForceOffReason *this, unint64_t a2)
{
  v3 = *(this + 24);
  if (v3)
  {
    if ((*(this + 24) & 1) == 0)
    {
      v4 = 0;
      if ((*(this + 24) & 2) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_11;
    }

    v5 = *(this + 4);
    if ((v5 & 0x80000000) == 0)
    {
      if (v5 >= 0x80)
      {
        v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5) + 1;
        if ((*(this + 6) & 2) == 0)
        {
          goto LABEL_12;
        }
      }

      else
      {
        v4 = 2;
        if ((v3 & 2) == 0)
        {
          goto LABEL_12;
        }
      }

      goto LABEL_11;
    }

    v4 = 11;
    if ((v3 & 2) != 0)
    {
LABEL_11:
      v4 = v4 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 1)) + 1;
    }
  }

  else
  {
    v4 = 0;
  }

LABEL_12:
  *(this + 5) = v4;
  return v4;
}

void awd::metrics::LocationGPSSessionStatistics_NSForceOffReason::CheckTypeAndMergeFrom(awd::metrics::LocationGPSSessionStatistics_NSForceOffReason *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  {
    awd::metrics::LocationGPSSessionStatistics_NSForceOffReason::CheckTypeAndMergeFrom();
  }

  awd::metrics::LocationGPSSessionStatistics_NSForceOffReason::MergeFrom(this, lpsrc);
}

void awd::metrics::LocationGPSSessionStatistics_NSForceOffReason::CopyFrom(awd::metrics::LocationGPSSessionStatistics_NSForceOffReason *this, const awd::metrics::LocationGPSSessionStatistics_NSForceOffReason *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    awd::metrics::LocationGPSSessionStatistics_NSForceOffReason::MergeFrom(this, a2);
  }
}

uint64_t awd::metrics::LocationGPSSessionStatistics_NSForceOffReason::Swap(uint64_t this, awd::metrics::LocationGPSSessionStatistics_NSForceOffReason *a2)
{
  if (a2 != this)
  {
    v2 = *(this + 16);
    *(this + 16) = *(a2 + 4);
    *(a2 + 4) = v2;
    v3 = *(this + 8);
    *(this + 8) = *(a2 + 1);
    *(a2 + 1) = v3;
    LODWORD(v3) = *(this + 24);
    *(this + 24) = *(a2 + 6);
    *(a2 + 6) = v3;
    LODWORD(v3) = *(this + 20);
    *(this + 20) = *(a2 + 5);
    *(a2 + 5) = v3;
  }

  return this;
}

uint64_t awd::metrics::LocationGPSSessionStatistics_NSOnOffState::SharedCtor(uint64_t this)
{
  *(this + 8) = 0;
  *(this + 16) = 0;
  *(this + 24) = 0;
  return this;
}

awd::metrics::LocationGPSSessionStatistics_NSOnOffState *awd::metrics::LocationGPSSessionStatistics_NSOnOffState::LocationGPSSessionStatistics_NSOnOffState(awd::metrics::LocationGPSSessionStatistics_NSOnOffState *this, const awd::metrics::LocationGPSSessionStatistics_NSOnOffState *a2)
{
  *(this + 1) = 0;
  *(this + 2) = 0;
  *this = &unk_2A1D504C0;
  *(this + 6) = 0;
  awd::metrics::LocationGPSSessionStatistics_NSOnOffState::MergeFrom(this, a2);
  return this;
}

void awd::metrics::LocationGPSSessionStatistics_NSOnOffState::MergeFrom(awd::metrics::LocationGPSSessionStatistics_NSOnOffState *this, const awd::metrics::LocationGPSSessionStatistics_NSOnOffState *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v7);
  }

  LOBYTE(v4) = *(a2 + 24);
  if (v4)
  {
    if (*(a2 + 24))
    {
      v5 = *(a2 + 4);
      *(this + 6) |= 1u;
      *(this + 4) = v5;
      v4 = *(a2 + 6);
    }

    if ((v4 & 2) != 0)
    {
      v6 = *(a2 + 1);
      *(this + 6) |= 2u;
      *(this + 1) = v6;
    }
  }
}

void sub_29644B8AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::metrics::LocationGPSSessionStatistics_NSOnOffState::~LocationGPSSessionStatistics_NSOnOffState(awd::metrics::LocationGPSSessionStatistics_NSOnOffState *this)
{
  *this = &unk_2A1D504C0;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2A1D504C0;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2A1D504C0;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  JUMPOUT(0x29C25A730);
}

uint64_t awd::metrics::LocationGPSSessionStatistics_NSOnOffState::default_instance(awd::metrics::LocationGPSSessionStatistics_NSOnOffState *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = awd::metrics::LocationGPSSessionStatistics_NSOnOffState::default_instance_;
  if (!awd::metrics::LocationGPSSessionStatistics_NSOnOffState::default_instance_)
  {
    awd::metrics::protobuf_AddDesc_Location_2eproto(0, a2, a3, a4);
    return awd::metrics::LocationGPSSessionStatistics_NSOnOffState::default_instance_;
  }

  return result;
}

uint64_t awd::metrics::LocationGPSSessionStatistics_NSOnOffState::Clear(uint64_t this)
{
  if (*(this + 24))
  {
    *(this + 16) = 0;
    *(this + 8) = 0;
  }

  *(this + 24) = 0;
  return this;
}

uint64_t awd::metrics::LocationGPSSessionStatistics_NSOnOffState::MergePartialFromCodedStream(awd::metrics::LocationGPSSessionStatistics_NSOnOffState *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
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
      v8 = *(a2 + 1);
      v7 = *(a2 + 2);
      if (v8 >= v7 || (v9 = *v8, (v9 & 0x80000000) != 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v15);
        if (!result)
        {
          return result;
        }

        v9 = v15;
        v10 = *(a2 + 1);
        v7 = *(a2 + 2);
      }

      else
      {
        v10 = v8 + 1;
        *(a2 + 1) = v10;
      }

      *(this + 4) = v9;
      *(this + 6) |= 1u;
      if (v10 < v7 && *v10 == 16)
      {
        v11 = v10 + 1;
        *(a2 + 1) = v11;
LABEL_22:
        if (v11 >= v7 || (v12 = *v11, v12 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 1);
          if (!result)
          {
            return result;
          }

          v13 = *(a2 + 1);
          v7 = *(a2 + 2);
        }

        else
        {
          *(this + 1) = v12;
          v13 = v11 + 1;
          *(a2 + 1) = v13;
        }

        *(this + 6) |= 2u;
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

uint64_t awd::metrics::LocationGPSSessionStatistics_NSOnOffState::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 24);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(1, *(this + 16), a2, a4);
    v6 = *(v5 + 24);
  }

  if ((v6 & 2) != 0)
  {
    v7 = *(v5 + 8);

    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(2, v7, a2, a4);
  }

  return this;
}

uint64_t awd::metrics::LocationGPSSessionStatistics_NSOnOffState::ByteSize(awd::metrics::LocationGPSSessionStatistics_NSOnOffState *this, unint64_t a2)
{
  v3 = *(this + 24);
  if (v3)
  {
    if ((*(this + 24) & 1) == 0)
    {
      v4 = 0;
      if ((*(this + 24) & 2) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_11;
    }

    v5 = *(this + 4);
    if ((v5 & 0x80000000) == 0)
    {
      if (v5 >= 0x80)
      {
        v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5) + 1;
        if ((*(this + 6) & 2) == 0)
        {
          goto LABEL_12;
        }
      }

      else
      {
        v4 = 2;
        if ((v3 & 2) == 0)
        {
          goto LABEL_12;
        }
      }

      goto LABEL_11;
    }

    v4 = 11;
    if ((v3 & 2) != 0)
    {
LABEL_11:
      v4 = v4 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 1)) + 1;
    }
  }

  else
  {
    v4 = 0;
  }

LABEL_12:
  *(this + 5) = v4;
  return v4;
}

void awd::metrics::LocationGPSSessionStatistics_NSOnOffState::CheckTypeAndMergeFrom(awd::metrics::LocationGPSSessionStatistics_NSOnOffState *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  {
    awd::metrics::LocationGPSSessionStatistics_NSOnOffState::CheckTypeAndMergeFrom();
  }

  awd::metrics::LocationGPSSessionStatistics_NSOnOffState::MergeFrom(this, lpsrc);
}

void awd::metrics::LocationGPSSessionStatistics_NSOnOffState::CopyFrom(awd::metrics::LocationGPSSessionStatistics_NSOnOffState *this, const awd::metrics::LocationGPSSessionStatistics_NSOnOffState *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    awd::metrics::LocationGPSSessionStatistics_NSOnOffState::MergeFrom(this, a2);
  }
}

uint64_t awd::metrics::LocationGPSSessionStatistics_NSOnOffState::Swap(uint64_t this, awd::metrics::LocationGPSSessionStatistics_NSOnOffState *a2)
{
  if (a2 != this)
  {
    v2 = *(this + 16);
    *(this + 16) = *(a2 + 4);
    *(a2 + 4) = v2;
    v3 = *(this + 8);
    *(this + 8) = *(a2 + 1);
    *(a2 + 1) = v3;
    LODWORD(v3) = *(this + 24);
    *(this + 24) = *(a2 + 6);
    *(a2 + 6) = v3;
    LODWORD(v3) = *(this + 20);
    *(this + 20) = *(a2 + 5);
    *(a2 + 5) = v3;
  }

  return this;
}

uint64_t awd::metrics::LocationGPSSessionStatistics_JammingMetricBucket::SharedCtor(uint64_t this)
{
  *(this + 8) = 0;
  *(this + 16) = 0;
  return this;
}

awd::metrics::LocationGPSSessionStatistics_JammingMetricBucket *awd::metrics::LocationGPSSessionStatistics_JammingMetricBucket::LocationGPSSessionStatistics_JammingMetricBucket(awd::metrics::LocationGPSSessionStatistics_JammingMetricBucket *this, const awd::metrics::LocationGPSSessionStatistics_JammingMetricBucket *a2)
{
  *(this + 1) = 0;
  *(this + 2) = 0;
  *this = &unk_2A1D50538;
  awd::metrics::LocationGPSSessionStatistics_JammingMetricBucket::MergeFrom(this, a2);
  return this;
}

void awd::metrics::LocationGPSSessionStatistics_JammingMetricBucket::MergeFrom(awd::metrics::LocationGPSSessionStatistics_JammingMetricBucket *this, const awd::metrics::LocationGPSSessionStatistics_JammingMetricBucket *a2)
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

void sub_29644BF14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::metrics::LocationGPSSessionStatistics_JammingMetricBucket::~LocationGPSSessionStatistics_JammingMetricBucket(awd::metrics::LocationGPSSessionStatistics_JammingMetricBucket *this)
{
  *this = &unk_2A1D50538;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2A1D50538;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2A1D50538;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  JUMPOUT(0x29C25A730);
}

uint64_t awd::metrics::LocationGPSSessionStatistics_JammingMetricBucket::default_instance(awd::metrics::LocationGPSSessionStatistics_JammingMetricBucket *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = awd::metrics::LocationGPSSessionStatistics_JammingMetricBucket::default_instance_;
  if (!awd::metrics::LocationGPSSessionStatistics_JammingMetricBucket::default_instance_)
  {
    awd::metrics::protobuf_AddDesc_Location_2eproto(0, a2, a3, a4);
    return awd::metrics::LocationGPSSessionStatistics_JammingMetricBucket::default_instance_;
  }

  return result;
}

uint64_t awd::metrics::LocationGPSSessionStatistics_JammingMetricBucket::Clear(uint64_t this)
{
  if (*(this + 20))
  {
    *(this + 8) = 0;
  }

  *(this + 20) = 0;
  return this;
}

uint64_t awd::metrics::LocationGPSSessionStatistics_JammingMetricBucket::MergePartialFromCodedStream(awd::metrics::LocationGPSSessionStatistics_JammingMetricBucket *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
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

      v16 = 0;
      v8 = *(a2 + 1);
      v7 = *(a2 + 2);
      if (v8 >= v7 || (v9 = *v8, (v9 & 0x80000000) != 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v16);
        if (!result)
        {
          return result;
        }

        v9 = v16;
        v10 = *(a2 + 1);
        v7 = *(a2 + 2);
      }

      else
      {
        v10 = v8 + 1;
        *(a2 + 1) = v10;
      }

      *(this + 2) = v9;
      *(this + 5) |= 1u;
      if (v10 < v7 && *v10 == 16)
      {
        v11 = v10 + 1;
        *(a2 + 1) = v11;
LABEL_22:
        v15 = 0;
        if (v11 >= v7 || (v12 = *v11, (v12 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v15);
          if (!result)
          {
            return result;
          }

          v12 = v15;
          v13 = *(a2 + 1);
          v7 = *(a2 + 2);
        }

        else
        {
          v13 = v11 + 1;
          *(a2 + 1) = v13;
        }

        *(this + 3) = v12;
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

uint64_t awd::metrics::LocationGPSSessionStatistics_JammingMetricBucket::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 20);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(1, *(this + 8), a2, a4);
    v6 = *(v5 + 20);
  }

  if ((v6 & 2) != 0)
  {
    v7 = *(v5 + 12);

    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(2, v7, a2, a4);
  }

  return this;
}

uint64_t awd::metrics::LocationGPSSessionStatistics_JammingMetricBucket::ByteSize(awd::metrics::LocationGPSSessionStatistics_JammingMetricBucket *this, unsigned int a2)
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
          goto LABEL_19;
        }
      }

      else if (v5 >= 0x80)
      {
        v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5) + 1;
        if ((*(this + 5) & 2) == 0)
        {
          goto LABEL_19;
        }
      }

      else
      {
        v4 = 2;
        if ((v3 & 2) == 0)
        {
          goto LABEL_19;
        }
      }
    }

    else
    {
      v4 = 0;
      if ((*(this + 20) & 2) == 0)
      {
        goto LABEL_19;
      }
    }

    v6 = *(this + 3);
    if ((v6 & 0x80000000) != 0)
    {
      v7 = 11;
    }

    else if (v6 >= 0x80)
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

LABEL_19:
  *(this + 4) = v4;
  return v4;
}

void awd::metrics::LocationGPSSessionStatistics_JammingMetricBucket::CheckTypeAndMergeFrom(awd::metrics::LocationGPSSessionStatistics_JammingMetricBucket *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  {
    awd::metrics::LocationGPSSessionStatistics_JammingMetricBucket::CheckTypeAndMergeFrom();
  }

  awd::metrics::LocationGPSSessionStatistics_JammingMetricBucket::MergeFrom(this, lpsrc);
}

void awd::metrics::LocationGPSSessionStatistics_JammingMetricBucket::CopyFrom(awd::metrics::LocationGPSSessionStatistics_JammingMetricBucket *this, const awd::metrics::LocationGPSSessionStatistics_JammingMetricBucket *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    awd::metrics::LocationGPSSessionStatistics_JammingMetricBucket::MergeFrom(this, a2);
  }
}

awd::metrics::LocationGPSSessionStatistics_JammingMetricBucket *awd::metrics::LocationGPSSessionStatistics_JammingMetricBucket::Swap(awd::metrics::LocationGPSSessionStatistics_JammingMetricBucket *this, awd::metrics::LocationGPSSessionStatistics_JammingMetricBucket *a2)
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

uint64_t awd::metrics::LocationGPSSessionStatistics_JammingMetricDataPerSignal::SharedCtor(uint64_t this)
{
  *(this + 32) = 0;
  *(this + 40) = 0;
  return this;
}

awd::metrics::LocationGPSSessionStatistics_JammingMetricDataPerSignal *awd::metrics::LocationGPSSessionStatistics_JammingMetricDataPerSignal::LocationGPSSessionStatistics_JammingMetricDataPerSignal(awd::metrics::LocationGPSSessionStatistics_JammingMetricDataPerSignal *this, const awd::metrics::LocationGPSSessionStatistics_JammingMetricDataPerSignal *a2)
{
  *(this + 1) = 0;
  *this = &unk_2A1D505B0;
  *(this + 2) = 0;
  *(this + 6) = 0;
  *(this + 4) = 0;
  *(this + 10) = 0;
  awd::metrics::LocationGPSSessionStatistics_JammingMetricDataPerSignal::MergeFrom(this, a2);
  return this;
}

void sub_29644C504(_Unwind_Exception *a1)
{
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationGPSSessionStatistics_JammingMetricBucket>::TypeHandler>(v2);
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(v1);
  _Unwind_Resume(a1);
}

void awd::metrics::LocationGPSSessionStatistics_JammingMetricDataPerSignal::MergeFrom(awd::metrics::LocationGPSSessionStatistics_JammingMetricDataPerSignal *this, const awd::metrics::LocationGPSSessionStatistics_JammingMetricDataPerSignal *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v5);
  }

  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::MergeFrom<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationGPSSessionStatistics_JammingMetricBucket>::TypeHandler>((this + 8), a2 + 8);
  if (*(a2 + 40))
  {
    v4 = *(a2 + 8);
    *(this + 10) |= 1u;
    *(this + 8) = v4;
  }
}

void sub_29644C5BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::metrics::LocationGPSSessionStatistics_JammingMetricDataPerSignal::~LocationGPSSessionStatistics_JammingMetricDataPerSignal(awd::metrics::LocationGPSSessionStatistics_JammingMetricDataPerSignal *this)
{
  *this = &unk_2A1D505B0;
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationGPSSessionStatistics_JammingMetricBucket>::TypeHandler>(this + 1);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  awd::metrics::LocationGPSSessionStatistics_JammingMetricDataPerSignal::~LocationGPSSessionStatistics_JammingMetricDataPerSignal(this);

  JUMPOUT(0x29C25A730);
}

uint64_t awd::metrics::LocationGPSSessionStatistics_JammingMetricDataPerSignal::default_instance(awd::metrics::LocationGPSSessionStatistics_JammingMetricDataPerSignal *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = awd::metrics::LocationGPSSessionStatistics_JammingMetricDataPerSignal::default_instance_;
  if (!awd::metrics::LocationGPSSessionStatistics_JammingMetricDataPerSignal::default_instance_)
  {
    awd::metrics::protobuf_AddDesc_Location_2eproto(0, a2, a3, a4);
    return awd::metrics::LocationGPSSessionStatistics_JammingMetricDataPerSignal::default_instance_;
  }

  return result;
}

uint64_t awd::metrics::LocationGPSSessionStatistics_JammingMetricDataPerSignal::Clear(awd::metrics::LocationGPSSessionStatistics_JammingMetricDataPerSignal *this)
{
  if (*(this + 40))
  {
    *(this + 8) = 0;
  }

  result = wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Clear<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationGPSSessionStatistics_JammingMetricBucket>::TypeHandler>(this + 8);
  *(this + 10) = 0;
  return result;
}

uint64_t awd::metrics::LocationGPSSessionStatistics_JammingMetricDataPerSignal::MergePartialFromCodedStream(awd::metrics::LocationGPSSessionStatistics_JammingMetricDataPerSignal *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
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
      if (TagFallback >> 3 == 2)
      {
        break;
      }

      if (TagFallback >> 3 != 1 || (TagFallback & 7) != 0)
      {
        goto LABEL_13;
      }

      v25 = 0;
      v8 = *(a2 + 1);
      v9 = *(a2 + 2);
      if (v8 >= v9 || (v10 = *v8, (v10 & 0x80000000) != 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v25);
        if (!result)
        {
          return result;
        }

        v10 = v25;
        v11 = *(a2 + 1);
        v9 = *(a2 + 2);
      }

      else
      {
        v11 = v8 + 1;
        *(a2 + 1) = v11;
      }

      *(this + 8) = v10;
      *(this + 10) |= 1u;
      if (v11 < v9 && *v11 == 18)
      {
        do
        {
          *(a2 + 1) = v11 + 1;
LABEL_21:
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
          v26 = 0;
          v17 = *(a2 + 1);
          if (v17 >= *(a2 + 2) || *v17 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v26))
            {
              return 0;
            }
          }

          else
          {
            v26 = *v17;
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
          if (!awd::metrics::LocationGPSSessionStatistics_JammingMetricBucket::MergePartialFromCodedStream(v16, a2, v20) || *(a2 + 36) != 1)
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

          v11 = *(a2 + 1);
          v24 = *(a2 + 2);
        }

        while (v11 < v24 && *v11 == 18);
        if (v11 == v24 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
        {
          *(a2 + 8) = 0;
          result = 1;
          *(a2 + 36) = 1;
          return result;
        }
      }
    }

    if (v7 == 2)
    {
      goto LABEL_21;
    }

LABEL_13:
    if (v7 == 4)
    {
      return 1;
    }

    if ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(a2, TagFallback) & 1) == 0)
    {
      return 0;
    }
  }
}

uint64_t awd::metrics::LocationGPSSessionStatistics_JammingMetricDataPerSignal::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  if (*(this + 40))
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(1, *(this + 32), a2, a4);
  }

  if (*(v5 + 16) >= 1)
  {
    v6 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(2, *(*(v5 + 8) + 8 * v6++), a2, a4);
    }

    while (v6 < *(v5 + 16));
  }

  return this;
}

uint64_t awd::metrics::LocationGPSSessionStatistics_JammingMetricDataPerSignal::ByteSize(awd::metrics::LocationGPSSessionStatistics_JammingMetricDataPerSignal *this, unsigned int a2)
{
  if (*(this + 40))
  {
    v4 = *(this + 8);
    if ((v4 & 0x80000000) != 0)
    {
      v3 = 11;
    }

    else if (v4 >= 0x80)
    {
      v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v4) + 1;
    }

    else
    {
      v3 = 2;
    }
  }

  else
  {
    v3 = 0;
  }

  v5 = *(this + 4);
  v6 = (v5 + v3);
  if (v5 >= 1)
  {
    v7 = 0;
    do
    {
      v8 = awd::metrics::LocationGPSSessionStatistics_JammingMetricBucket::ByteSize(*(*(this + 1) + 8 * v7), a2);
      v9 = v8;
      if (v8 >= 0x80)
      {
        v10 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v8);
      }

      else
      {
        v10 = 1;
      }

      v6 = (v9 + v6 + v10);
      ++v7;
    }

    while (v7 < *(this + 4));
  }

  *(this + 9) = v6;
  return v6;
}

void awd::metrics::LocationGPSSessionStatistics_JammingMetricDataPerSignal::CheckTypeAndMergeFrom(awd::metrics::LocationGPSSessionStatistics_JammingMetricDataPerSignal *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  {
    awd::metrics::LocationGPSSessionStatistics_JammingMetricDataPerSignal::CheckTypeAndMergeFrom();
  }

  awd::metrics::LocationGPSSessionStatistics_JammingMetricDataPerSignal::MergeFrom(this, lpsrc);
}

void awd::metrics::LocationGPSSessionStatistics_JammingMetricDataPerSignal::CopyFrom(const awd::metrics::LocationGPSSessionStatistics_JammingMetricDataPerSignal *this, const awd::metrics::LocationGPSSessionStatistics_JammingMetricDataPerSignal *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    awd::metrics::LocationGPSSessionStatistics_JammingMetricDataPerSignal::MergeFrom(this, a2);
  }
}

awd::metrics::LocationGPSSessionStatistics_JammingMetricDataPerSignal *awd::metrics::LocationGPSSessionStatistics_JammingMetricDataPerSignal::Swap(awd::metrics::LocationGPSSessionStatistics_JammingMetricDataPerSignal *this, awd::metrics::LocationGPSSessionStatistics_JammingMetricDataPerSignal *a2)
{
  if (a2 != this)
  {
    v3 = this;
    v4 = *(this + 8);
    *(this + 8) = *(a2 + 8);
    *(a2 + 8) = v4;
    this = wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Swap();
    v5 = *(v3 + 10);
    *(v3 + 10) = *(a2 + 10);
    *(a2 + 10) = v5;
    v6 = *(v3 + 9);
    *(v3 + 9) = *(a2 + 9);
    *(a2 + 9) = v6;
  }

  return this;
}

double awd::metrics::LocationGPSSessionStatistics::LocationGPSSessionStatistics(awd::metrics::LocationGPSSessionStatistics *this)
{
  result = 0.0;
  *(this + 56) = 0u;
  *(this + 18) = 0;
  *(this + 5) = 0u;
  *(this + 24) = 0;
  *(this + 104) = 0u;
  *(this + 30) = 0;
  *(this + 8) = 0u;
  *(this + 36) = 0;
  *(this + 152) = 0u;
  *(this + 42) = 0;
  *(this + 48) = 0;
  *(this + 11) = 0u;
  *(this + 200) = 0u;
  *(this + 54) = 0;
  *(this + 14) = 0u;
  *(this + 60) = 0;
  *(this + 66) = 0;
  *(this + 248) = 0u;
  *(this + 72) = 0;
  *(this + 17) = 0u;
  *(this + 78) = 0;
  *(this + 296) = 0u;
  *(this + 84) = 0;
  *(this + 20) = 0u;
  *(this + 90) = 0;
  *(this + 344) = 0u;
  *(this + 96) = 0;
  *(this + 23) = 0u;
  *(this + 156) = 0;
  *(this + 38) = 0u;
  *(this + 164) = 0;
  *(this + 40) = 0u;
  *(this + 176) = 0;
  *(this + 43) = 0u;
  *(this + 182) = 0;
  *(this + 712) = 0u;
  *(this + 218) = 0;
  *(this + 856) = 0u;
  *(this + 246) = 0;
  *(this + 968) = 0u;
  *(this + 252) = 0;
  *(this + 62) = 0u;
  *(this + 258) = 0;
  *(this + 1016) = 0u;
  *(this + 266) = 0;
  *(this + 1048) = 0u;
  *(this + 274) = 0;
  *(this + 1080) = 0u;
  *(this + 280) = 0;
  *(this + 69) = 0u;
  *(this + 286) = 0;
  *(this + 1128) = 0u;
  *(this + 292) = 0;
  *(this + 72) = 0u;
  *(this + 298) = 0;
  *(this + 1176) = 0u;
  *(this + 304) = 0;
  *(this + 75) = 0u;
  *(this + 310) = 0;
  *(this + 1224) = 0u;
  *(this + 316) = 0;
  *(this + 78) = 0u;
  *(this + 322) = 0;
  *(this + 1272) = 0u;
  *(this + 328) = 0;
  *(this + 81) = 0u;
  *(this + 334) = 0;
  *(this + 1320) = 0u;
  *(this + 339) = 0;
  *this = &unk_2A1D50628;
  *(this + 1) = 0;
  *(this + 2) = MEMORY[0x29EDC9758];
  *(this + 79) = 0;
  *(this + 134) = 0;
  *(this + 168) = 0;
  *(this + 338) = 0;
  *(this + 85) = 0u;
  *(this + 40) = 0u;
  *(this + 24) = 0u;
  *(this + 75) = 0;
  *(this + 568) = 0u;
  *(this + 584) = 0u;
  *(this + 536) = 0u;
  *(this + 552) = 0u;
  *(this + 504) = 0u;
  *(this + 520) = 0u;
  *(this + 472) = 0u;
  *(this + 488) = 0u;
  *(this + 440) = 0u;
  *(this + 456) = 0u;
  *(this + 408) = 0u;
  *(this + 424) = 0u;
  *(this + 392) = 0u;
  *(this + 85) = 0;
  *(this + 664) = 0u;
  *(this + 106) = 0;
  *(this + 51) = 0u;
  *(this + 52) = 0u;
  *(this + 49) = 0u;
  *(this + 50) = 0u;
  *(this + 47) = 0u;
  *(this + 48) = 0u;
  *(this + 46) = 0u;
  *(this + 120) = 0;
  *(this + 58) = 0u;
  *(this + 59) = 0u;
  *(this + 56) = 0u;
  *(this + 57) = 0u;
  *(this + 55) = 0u;
  *(this + 1043) = 0;
  *(this + 260) = 0;
  return result;
}

double awd::metrics::LocationGPSSessionStatistics::SharedCtor(awd::metrics::LocationGPSSessionStatistics *this)
{
  v1 = MEMORY[0x29EDC9758];
  *(this + 1) = 0;
  *(this + 2) = v1;
  *(this + 79) = 0;
  *(this + 134) = 0;
  result = 0.0;
  *(this + 84) = 0u;
  *(this + 85) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 75) = 0;
  *(this + 392) = 0u;
  *(this + 408) = 0u;
  *(this + 424) = 0u;
  *(this + 440) = 0u;
  *(this + 456) = 0u;
  *(this + 472) = 0u;
  *(this + 488) = 0u;
  *(this + 504) = 0u;
  *(this + 520) = 0u;
  *(this + 536) = 0u;
  *(this + 552) = 0u;
  *(this + 568) = 0u;
  *(this + 584) = 0u;
  *(this + 85) = 0;
  *(this + 664) = 0u;
  *(this + 46) = 0u;
  *(this + 47) = 0u;
  *(this + 48) = 0u;
  *(this + 49) = 0u;
  *(this + 50) = 0u;
  *(this + 51) = 0u;
  *(this + 52) = 0u;
  *(this + 106) = 0;
  *(this + 120) = 0;
  *(this + 58) = 0u;
  *(this + 59) = 0u;
  *(this + 56) = 0u;
  *(this + 57) = 0u;
  *(this + 55) = 0u;
  *(this + 1043) = 0;
  *(this + 260) = 0;
  return result;
}

awd::metrics::LocationGPSSessionStatistics *awd::metrics::LocationGPSSessionStatistics::LocationGPSSessionStatistics(awd::metrics::LocationGPSSessionStatistics *this, const awd::metrics::LocationGPSSessionStatistics *a2)
{
  *(this + 56) = 0u;
  *(this + 18) = 0;
  *(this + 5) = 0u;
  *(this + 24) = 0;
  *(this + 104) = 0u;
  *(this + 30) = 0;
  *(this + 8) = 0u;
  *(this + 36) = 0;
  *(this + 152) = 0u;
  *(this + 42) = 0;
  *(this + 11) = 0u;
  *(this + 48) = 0;
  *(this + 200) = 0u;
  *(this + 54) = 0;
  *(this + 14) = 0u;
  *(this + 60) = 0;
  *(this + 248) = 0u;
  *(this + 66) = 0;
  *(this + 72) = 0;
  *(this + 17) = 0u;
  *(this + 78) = 0;
  *(this + 296) = 0u;
  *(this + 84) = 0;
  *(this + 20) = 0u;
  *(this + 90) = 0;
  *(this + 344) = 0u;
  *(this + 96) = 0;
  *(this + 23) = 0u;
  *(this + 156) = 0;
  *(this + 38) = 0u;
  *(this + 164) = 0;
  *(this + 40) = 0u;
  *(this + 176) = 0;
  *(this + 43) = 0u;
  *(this + 182) = 0;
  *(this + 712) = 0u;
  *(this + 218) = 0;
  *(this + 856) = 0u;
  *(this + 246) = 0;
  *(this + 968) = 0u;
  *(this + 252) = 0;
  *(this + 62) = 0u;
  *(this + 258) = 0;
  *(this + 1016) = 0u;
  *(this + 266) = 0;
  *(this + 1048) = 0u;
  *(this + 274) = 0;
  *(this + 1080) = 0u;
  *(this + 280) = 0;
  *(this + 69) = 0u;
  *(this + 286) = 0;
  *(this + 1128) = 0u;
  *(this + 292) = 0;
  *(this + 72) = 0u;
  *(this + 298) = 0;
  *(this + 1176) = 0u;
  *(this + 304) = 0;
  *(this + 75) = 0u;
  *(this + 310) = 0;
  *(this + 1224) = 0u;
  *(this + 316) = 0;
  *(this + 78) = 0u;
  *(this + 322) = 0;
  *(this + 1272) = 0u;
  *(this + 328) = 0;
  *(this + 81) = 0u;
  *(this + 334) = 0;
  *(this + 1320) = 0u;
  *(this + 339) = 0;
  *this = &unk_2A1D50628;
  *(this + 1) = 0;
  *(this + 2) = MEMORY[0x29EDC9758];
  *(this + 79) = 0;
  *(this + 134) = 0;
  *(this + 168) = 0;
  *(this + 338) = 0;
  *(this + 85) = 0u;
  *(this + 40) = 0u;
  *(this + 24) = 0u;
  *(this + 75) = 0;
  *(this + 568) = 0u;
  *(this + 584) = 0u;
  *(this + 536) = 0u;
  *(this + 552) = 0u;
  *(this + 504) = 0u;
  *(this + 520) = 0u;
  *(this + 472) = 0u;
  *(this + 488) = 0u;
  *(this + 440) = 0u;
  *(this + 456) = 0u;
  *(this + 408) = 0u;
  *(this + 424) = 0u;
  *(this + 392) = 0u;
  *(this + 85) = 0;
  *(this + 664) = 0u;
  *(this + 106) = 0;
  *(this + 51) = 0u;
  *(this + 52) = 0u;
  *(this + 49) = 0u;
  *(this + 50) = 0u;
  *(this + 47) = 0u;
  *(this + 48) = 0u;
  *(this + 46) = 0u;
  *(this + 120) = 0;
  *(this + 58) = 0u;
  *(this + 59) = 0u;
  *(this + 56) = 0u;
  *(this + 57) = 0u;
  *(this + 55) = 0u;
  *(this + 1043) = 0;
  *(this + 260) = 0;
  awd::metrics::LocationGPSSessionStatistics::MergeFrom(this, a2);
  return this;
}

void sub_29644D1B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t *a17, uint64_t *a18, uint64_t *a19, uint64_t *a20, uint64_t *a21, uint64_t *a22, uint64_t *a23, uint64_t *a24, uint64_t *a25)
{
  v37 = v26;
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationGPSSessionStatistics_JammingMetricDataPerSignal>::TypeHandler>(v28);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationGPSSessionStatistics_SatelliteCountRangeData>::TypeHandler>(v25 + 162);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationGPSSessionStatistics_SatelliteCountRangeData>::TypeHandler>(v33);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationGPSSessionStatistics_SatelliteCountRangeData>::TypeHandler>(v25 + 156);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationGPSSessionStatistics_SatelliteCountRangeData>::TypeHandler>(v37);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationGPSSessionStatistics_SatelliteCNORangeData>::TypeHandler>(v25 + 150);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationGPSSessionStatistics_SatelliteCNORangeData>::TypeHandler>(v31);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationGPSSessionStatistics_SatelliteCNORangeData>::TypeHandler>(v25 + 144);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationGPSSessionStatistics_SatelliteCNORangeData>::TypeHandler>(v30);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationGPSSessionStatistics_NSOnOffState>::TypeHandler>(v25 + 138);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationGPSSessionStatistics_NSForceOffReason>::TypeHandler>(a17);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationGPSSessionStatistics_ThermalLevelData>::TypeHandler>(a18);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationGPSSessionStatistics_ChargerTypeData>::TypeHandler>(a19);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationGPSSessionStatistics_SatelliteCountRangeData>::TypeHandler>(v25 + 124);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationGPSSessionStatistics_SatelliteCNORangeData>::TypeHandler>(a20);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationGPSSessionStatistics_ChecksumData>::TypeHandler>(a21);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationGPSSessionStatistics_PowerMeasurementData>::TypeHandler>(a22);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationGPSSessionStatistics_DeviceOrientationData>::TypeHandler>(v25 + 86);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationGPSSessionStatistics_PowerStateData>::TypeHandler>(v25 + 80);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationGPSSessionStatistics_ChecksumData>::TypeHandler>(v25 + 76);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationGPSSessionStatistics_MountedStateData>::TypeHandler>(v25 + 46);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationGPSSessionStatistics_MovingStateData>::TypeHandler>(a23);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationGPSSessionStatistics_MotionActivityData>::TypeHandler>(v25 + 40);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationGPSSessionStatistics_SatelliteCountRangeData>::TypeHandler>(a24);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationGPSSessionStatistics_SatelliteCountRangeData>::TypeHandler>(v25 + 34);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationGPSSessionStatistics_SatelliteCountRangeData>::TypeHandler>(v29);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationGPSSessionStatistics_SatelliteCountRangeData>::TypeHandler>(v34);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationGPSSessionStatistics_SatelliteCNORangeData>::TypeHandler>(v27);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationGPSSessionStatistics_SatelliteCNORangeData>::TypeHandler>(v32);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationGPSSessionStatistics_SatelliteCNORangeData>::TypeHandler>(a25);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationGPSSessionStatistics_SatelliteCNORangeData>::TypeHandler>(*(v35 - 120));
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationGPSSessionStatistics_SignalEnvironmentData>::TypeHandler>(*(v35 - 112));
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationGPSSessionStatistics_UncertaintyRangeData>::TypeHandler>(*(v35 - 104));
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationGPSSessionStatistics_UncertaintyRangeData>::TypeHandler>(*(v35 - 96));
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(v25);
  _Unwind_Resume(a1);
}

void awd::metrics::LocationGPSSessionStatistics::MergeFrom(awd::metrics::LocationGPSSessionStatistics *this, const awd::metrics::LocationGPSSessionStatistics *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v106);
  }

  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::MergeFrom<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationGPSSessionStatistics_UncertaintyRangeData>::TypeHandler>((this + 56), a2 + 56);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::MergeFrom<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationGPSSessionStatistics_UncertaintyRangeData>::TypeHandler>((this + 80), a2 + 80);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::MergeFrom<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationGPSSessionStatistics_SignalEnvironmentData>::TypeHandler>((this + 104), a2 + 104);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::MergeFrom<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationGPSSessionStatistics_SatelliteCNORangeData>::TypeHandler>((this + 128), a2 + 128);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::MergeFrom<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationGPSSessionStatistics_SatelliteCNORangeData>::TypeHandler>((this + 152), a2 + 152);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::MergeFrom<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationGPSSessionStatistics_SatelliteCNORangeData>::TypeHandler>((this + 176), a2 + 176);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::MergeFrom<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationGPSSessionStatistics_SatelliteCNORangeData>::TypeHandler>((this + 200), a2 + 200);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::MergeFrom<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationGPSSessionStatistics_SatelliteCountRangeData>::TypeHandler>((this + 224), a2 + 224);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::MergeFrom<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationGPSSessionStatistics_SatelliteCountRangeData>::TypeHandler>((this + 248), a2 + 248);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::MergeFrom<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationGPSSessionStatistics_SatelliteCountRangeData>::TypeHandler>((this + 272), a2 + 272);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::MergeFrom<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationGPSSessionStatistics_SatelliteCountRangeData>::TypeHandler>((this + 296), a2 + 296);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::MergeFrom<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationGPSSessionStatistics_MotionActivityData>::TypeHandler>((this + 320), a2 + 320);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::MergeFrom<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationGPSSessionStatistics_MovingStateData>::TypeHandler>((this + 344), a2 + 344);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::MergeFrom<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationGPSSessionStatistics_MountedStateData>::TypeHandler>((this + 368), a2 + 368);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::MergeFrom<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationGPSSessionStatistics_ChecksumData>::TypeHandler>((this + 608), a2 + 608);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::MergeFrom<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationGPSSessionStatistics_PowerStateData>::TypeHandler>((this + 640), a2 + 640);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::MergeFrom<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationGPSSessionStatistics_DeviceOrientationData>::TypeHandler>((this + 688), a2 + 688);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::MergeFrom<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationGPSSessionStatistics_PowerMeasurementData>::TypeHandler>((this + 712), a2 + 712);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::MergeFrom<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationGPSSessionStatistics_ChecksumData>::TypeHandler>((this + 856), a2 + 856);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::MergeFrom<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationGPSSessionStatistics_SatelliteCNORangeData>::TypeHandler>((this + 968), a2 + 968);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::MergeFrom<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationGPSSessionStatistics_SatelliteCountRangeData>::TypeHandler>((this + 992), a2 + 992);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::MergeFrom<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationGPSSessionStatistics_ChargerTypeData>::TypeHandler>((this + 1016), a2 + 1016);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::MergeFrom<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationGPSSessionStatistics_ThermalLevelData>::TypeHandler>((this + 1048), a2 + 1048);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::MergeFrom<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationGPSSessionStatistics_NSForceOffReason>::TypeHandler>((this + 1080), a2 + 1080);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::MergeFrom<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationGPSSessionStatistics_NSOnOffState>::TypeHandler>((this + 1104), a2 + 1104);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::MergeFrom<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationGPSSessionStatistics_SatelliteCNORangeData>::TypeHandler>((this + 1128), a2 + 1128);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::MergeFrom<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationGPSSessionStatistics_SatelliteCNORangeData>::TypeHandler>((this + 1152), a2 + 1152);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::MergeFrom<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationGPSSessionStatistics_SatelliteCNORangeData>::TypeHandler>((this + 1176), a2 + 1176);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::MergeFrom<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationGPSSessionStatistics_SatelliteCNORangeData>::TypeHandler>((this + 1200), a2 + 1200);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::MergeFrom<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationGPSSessionStatistics_SatelliteCountRangeData>::TypeHandler>((this + 1224), a2 + 1224);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::MergeFrom<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationGPSSessionStatistics_SatelliteCountRangeData>::TypeHandler>((this + 1248), a2 + 1248);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::MergeFrom<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationGPSSessionStatistics_SatelliteCountRangeData>::TypeHandler>((this + 1272), a2 + 1272);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::MergeFrom<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationGPSSessionStatistics_SatelliteCountRangeData>::TypeHandler>((this + 1296), a2 + 1296);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 1320));
  LODWORD(v4) = *(a2 + 332);
  if (v4 >= 1)
  {
    v5 = 0;
    do
    {
      if (v5 >= v4)
      {
        wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
        wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
        wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
        wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v106);
      }

      v6 = *(*(a2 + 165) + 8 * v5);
      v7 = *(this + 332);
      v8 = *(this + 333);
      if (v7 >= v8)
      {
        if (v8 == *(this + 334))
        {
          wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 1320));
          v8 = *(this + 333);
        }

        *(this + 333) = v8 + 1;
        operator new();
      }

      v9 = *(this + 165);
      *(this + 332) = v7 + 1;
      awd::metrics::LocationGPSSessionStatistics_JammingMetricDataPerSignal::MergeFrom(*(v9 + 8 * v7), v6);
      ++v5;
      v4 = *(a2 + 332);
    }

    while (v5 < v4);
  }

  v10 = *(a2 + 340);
  if (!v10)
  {
    goto LABEL_23;
  }

  if (v10)
  {
    v18 = *(a2 + 1);
    *(this + 340) |= 1u;
    *(this + 1) = v18;
    v10 = *(a2 + 340);
    if ((v10 & 2) == 0)
    {
LABEL_16:
      if ((v10 & 4) == 0)
      {
        goto LABEL_17;
      }

      goto LABEL_77;
    }
  }

  else if ((v10 & 2) == 0)
  {
    goto LABEL_16;
  }

  v19 = *(a2 + 2);
  *(this + 340) |= 2u;
  v20 = *(this + 2);
  if (v20 == MEMORY[0x29EDC9758])
  {
    operator new();
  }

  std::string::operator=(v20, v19);
  v10 = *(a2 + 340);
  if ((v10 & 4) == 0)
  {
LABEL_17:
    if ((v10 & 8) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_78;
  }

LABEL_77:
  v21 = *(a2 + 3);
  *(this + 340) |= 4u;
  *(this + 3) = v21;
  v10 = *(a2 + 340);
  if ((v10 & 8) == 0)
  {
LABEL_18:
    if ((v10 & 0x10) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_79;
  }

LABEL_78:
  v22 = *(a2 + 10);
  *(this + 340) |= 8u;
  *(this + 10) = v22;
  v10 = *(a2 + 340);
  if ((v10 & 0x10) == 0)
  {
LABEL_19:
    if ((v10 & 0x20) == 0)
    {
      goto LABEL_20;
    }

LABEL_80:
    v24 = *(a2 + 11);
    *(this + 340) |= 0x20u;
    *(this + 11) = v24;
    v10 = *(a2 + 340);
    if ((v10 & 0x40) == 0)
    {
LABEL_21:
      if ((v10 & 0x80) == 0)
      {
        goto LABEL_23;
      }

      goto LABEL_22;
    }

    goto LABEL_81;
  }

LABEL_79:
  v23 = *(a2 + 4);
  *(this + 340) |= 0x10u;
  *(this + 4) = v23;
  v10 = *(a2 + 340);
  if ((v10 & 0x20) != 0)
  {
    goto LABEL_80;
  }

LABEL_20:
  if ((v10 & 0x40) == 0)
  {
    goto LABEL_21;
  }

LABEL_81:
  v25 = *(a2 + 12);
  *(this + 340) |= 0x40u;
  *(this + 12) = v25;
  v10 = *(a2 + 340);
  if ((v10 & 0x80) != 0)
  {
LABEL_22:
    v11 = *(a2 + 13);
    *(this + 340) |= 0x80u;
    *(this + 13) = v11;
    v10 = *(a2 + 340);
  }

LABEL_23:
  if ((v10 & 0x400) != 0)
  {
    v12 = *(a2 + 108);
    *(this + 340) |= 0x400u;
    *(this + 108) = v12;
    v10 = *(a2 + 340);
  }

  if ((v10 & 0x800000) != 0)
  {
    v13 = *(a2 + 49);
    *(this + 340) |= 0x800000u;
    *(this + 49) = v13;
    v10 = *(a2 + 340);
  }

  if (HIBYTE(v10))
  {
    if ((v10 & 0x1000000) != 0)
    {
      v47 = *(a2 + 50);
      *(this + 340) |= 0x1000000u;
      *(this + 50) = v47;
      v10 = *(a2 + 340);
      if ((v10 & 0x2000000) == 0)
      {
LABEL_30:
        if ((v10 & 0x4000000) == 0)
        {
          goto LABEL_31;
        }

        goto LABEL_110;
      }
    }

    else if ((v10 & 0x2000000) == 0)
    {
      goto LABEL_30;
    }

    v48 = *(a2 + 51);
    *(this + 340) |= 0x2000000u;
    *(this + 51) = v48;
    v10 = *(a2 + 340);
    if ((v10 & 0x4000000) == 0)
    {
LABEL_31:
      if ((v10 & 0x8000000) == 0)
      {
        goto LABEL_32;
      }

      goto LABEL_111;
    }

LABEL_110:
    v49 = *(a2 + 52);
    *(this + 340) |= 0x4000000u;
    *(this + 52) = v49;
    v10 = *(a2 + 340);
    if ((v10 & 0x8000000) == 0)
    {
LABEL_32:
      if ((v10 & 0x10000000) == 0)
      {
        goto LABEL_33;
      }

      goto LABEL_112;
    }

LABEL_111:
    v50 = *(a2 + 53);
    *(this + 340) |= 0x8000000u;
    *(this + 53) = v50;
    v10 = *(a2 + 340);
    if ((v10 & 0x10000000) == 0)
    {
LABEL_33:
      if ((v10 & 0x20000000) == 0)
      {
        goto LABEL_34;
      }

      goto LABEL_113;
    }

LABEL_112:
    v51 = *(a2 + 576);
    *(this + 340) |= 0x10000000u;
    *(this + 576) = v51;
    v10 = *(a2 + 340);
    if ((v10 & 0x20000000) == 0)
    {
LABEL_34:
      if ((v10 & 0x40000000) == 0)
      {
        goto LABEL_35;
      }

      goto LABEL_114;
    }

LABEL_113:
    v52 = *(a2 + 577);
    *(this + 340) |= 0x20000000u;
    *(this + 577) = v52;
    v10 = *(a2 + 340);
    if ((v10 & 0x40000000) == 0)
    {
LABEL_35:
      if ((v10 & 0x80000000) == 0)
      {
        goto LABEL_36;
      }

LABEL_115:
      v54 = *(a2 + 56);
      *(this + 340) |= 0x80000000;
      *(this + 56) = v54;
      goto LABEL_36;
    }

LABEL_114:
    v53 = *(a2 + 55);
    *(this + 340) |= 0x40000000u;
    *(this + 55) = v53;
    if ((*(a2 + 340) & 0x80000000) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_115;
  }

LABEL_36:
  v14 = *(a2 + 341);
  if (!v14)
  {
    goto LABEL_46;
  }

  if (v14)
  {
    v26 = *(a2 + 57);
    *(this + 341) |= 1u;
    *(this + 57) = v26;
    v14 = *(a2 + 341);
    if ((v14 & 2) == 0)
    {
LABEL_39:
      if ((v14 & 4) == 0)
      {
        goto LABEL_40;
      }

      goto LABEL_85;
    }
  }

  else if ((v14 & 2) == 0)
  {
    goto LABEL_39;
  }

  v27 = *(a2 + 58);
  *(this + 341) |= 2u;
  *(this + 58) = v27;
  v14 = *(a2 + 341);
  if ((v14 & 4) == 0)
  {
LABEL_40:
    if ((v14 & 8) == 0)
    {
      goto LABEL_41;
    }

    goto LABEL_86;
  }

LABEL_85:
  v28 = *(a2 + 59);
  *(this + 341) |= 4u;
  *(this + 59) = v28;
  v14 = *(a2 + 341);
  if ((v14 & 8) == 0)
  {
LABEL_41:
    if ((v14 & 0x10) == 0)
    {
      goto LABEL_42;
    }

    goto LABEL_87;
  }

LABEL_86:
  v29 = *(a2 + 60);
  *(this + 341) |= 8u;
  *(this + 60) = v29;
  v14 = *(a2 + 341);
  if ((v14 & 0x10) == 0)
  {
LABEL_42:
    if ((v14 & 0x20) == 0)
    {
      goto LABEL_43;
    }

    goto LABEL_88;
  }

LABEL_87:
  v30 = *(a2 + 61);
  *(this + 341) |= 0x10u;
  *(this + 61) = v30;
  v14 = *(a2 + 341);
  if ((v14 & 0x20) == 0)
  {
LABEL_43:
    if ((v14 & 0x40) == 0)
    {
      goto LABEL_44;
    }

    goto LABEL_89;
  }

LABEL_88:
  v31 = *(a2 + 62);
  *(this + 341) |= 0x20u;
  *(this + 62) = v31;
  v14 = *(a2 + 341);
  if ((v14 & 0x40) == 0)
  {
LABEL_44:
    if ((v14 & 0x80) == 0)
    {
      goto LABEL_46;
    }

    goto LABEL_45;
  }

LABEL_89:
  v32 = *(a2 + 63);
  *(this + 341) |= 0x40u;
  *(this + 63) = v32;
  v14 = *(a2 + 341);
  if ((v14 & 0x80) != 0)
  {
LABEL_45:
    v15 = *(a2 + 64);
    *(this + 341) |= 0x80u;
    *(this + 64) = v15;
    v14 = *(a2 + 341);
  }

LABEL_46:
  if ((v14 & 0xFF00) == 0)
  {
    goto LABEL_56;
  }

  if ((v14 & 0x100) != 0)
  {
    v33 = *(a2 + 65);
    *(this + 341) |= 0x100u;
    *(this + 65) = v33;
    v14 = *(a2 + 341);
    if ((v14 & 0x200) == 0)
    {
LABEL_49:
      if ((v14 & 0x400) == 0)
      {
        goto LABEL_50;
      }

      goto LABEL_93;
    }
  }

  else if ((v14 & 0x200) == 0)
  {
    goto LABEL_49;
  }

  v34 = *(a2 + 66);
  *(this + 341) |= 0x200u;
  *(this + 66) = v34;
  v14 = *(a2 + 341);
  if ((v14 & 0x400) == 0)
  {
LABEL_50:
    if ((v14 & 0x800) == 0)
    {
      goto LABEL_51;
    }

    goto LABEL_94;
  }

LABEL_93:
  v35 = *(a2 + 67);
  *(this + 341) |= 0x400u;
  *(this + 67) = v35;
  v14 = *(a2 + 341);
  if ((v14 & 0x800) == 0)
  {
LABEL_51:
    if ((v14 & 0x1000) == 0)
    {
      goto LABEL_52;
    }

    goto LABEL_95;
  }

LABEL_94:
  v36 = *(a2 + 68);
  *(this + 341) |= 0x800u;
  *(this + 68) = v36;
  v14 = *(a2 + 341);
  if ((v14 & 0x1000) == 0)
  {
LABEL_52:
    if ((v14 & 0x2000) == 0)
    {
      goto LABEL_53;
    }

    goto LABEL_96;
  }

LABEL_95:
  v37 = *(a2 + 69);
  *(this + 341) |= 0x1000u;
  *(this + 69) = v37;
  v14 = *(a2 + 341);
  if ((v14 & 0x2000) == 0)
  {
LABEL_53:
    if ((v14 & 0x4000) == 0)
    {
      goto LABEL_54;
    }

    goto LABEL_97;
  }

LABEL_96:
  v38 = *(a2 + 70);
  *(this + 341) |= 0x2000u;
  *(this + 70) = v38;
  v14 = *(a2 + 341);
  if ((v14 & 0x4000) == 0)
  {
LABEL_54:
    if ((v14 & 0x8000) == 0)
    {
      goto LABEL_56;
    }

    goto LABEL_55;
  }

LABEL_97:
  v39 = *(a2 + 71);
  *(this + 341) |= 0x4000u;
  *(this + 71) = v39;
  v14 = *(a2 + 341);
  if ((v14 & 0x8000) != 0)
  {
LABEL_55:
    v16 = *(a2 + 109);
    *(this + 341) |= 0x8000u;
    *(this + 109) = v16;
    v14 = *(a2 + 341);
  }

LABEL_56:
  if ((v14 & 0xFF0000) == 0)
  {
    goto LABEL_66;
  }

  if ((v14 & 0x10000) != 0)
  {
    v40 = *(a2 + 145);
    *(this + 341) |= 0x10000u;
    *(this + 145) = v40;
    v14 = *(a2 + 341);
    if ((v14 & 0x20000) == 0)
    {
LABEL_59:
      if ((v14 & 0x40000) == 0)
      {
        goto LABEL_60;
      }

      goto LABEL_101;
    }
  }

  else if ((v14 & 0x20000) == 0)
  {
    goto LABEL_59;
  }

  v41 = *(a2 + 146);
  *(this + 341) |= 0x20000u;
  *(this + 146) = v41;
  v14 = *(a2 + 341);
  if ((v14 & 0x40000) == 0)
  {
LABEL_60:
    if ((v14 & 0x80000) == 0)
    {
      goto LABEL_61;
    }

    goto LABEL_102;
  }

LABEL_101:
  v42 = *(a2 + 147);
  *(this + 341) |= 0x40000u;
  *(this + 147) = v42;
  v14 = *(a2 + 341);
  if ((v14 & 0x80000) == 0)
  {
LABEL_61:
    if ((v14 & 0x100000) == 0)
    {
      goto LABEL_62;
    }

    goto LABEL_104;
  }

LABEL_102:
  v43 = *(a2 + 148);
  if (v43 >= 0xD)
  {
    awd::metrics::LocationGPSSessionStatistics::MergeFrom();
  }

  *(this + 341) |= 0x80000u;
  *(this + 148) = v43;
  v14 = *(a2 + 341);
  if ((v14 & 0x100000) == 0)
  {
LABEL_62:
    if ((v14 & 0x200000) == 0)
    {
      goto LABEL_63;
    }

    goto LABEL_105;
  }

LABEL_104:
  v44 = *(a2 + 149);
  *(this + 341) |= 0x100000u;
  *(this + 149) = v44;
  v14 = *(a2 + 341);
  if ((v14 & 0x200000) == 0)
  {
LABEL_63:
    if ((v14 & 0x400000) == 0)
    {
      goto LABEL_64;
    }

    goto LABEL_106;
  }

LABEL_105:
  v45 = *(a2 + 150);
  *(this + 341) |= 0x200000u;
  *(this + 150) = v45;
  v14 = *(a2 + 341);
  if ((v14 & 0x400000) == 0)
  {
LABEL_64:
    if ((v14 & 0x800000) == 0)
    {
      goto LABEL_66;
    }

    goto LABEL_65;
  }

LABEL_106:
  v46 = *(a2 + 151);
  *(this + 341) |= 0x400000u;
  *(this + 151) = v46;
  v14 = *(a2 + 341);
  if ((v14 & 0x800000) != 0)
  {
LABEL_65:
    v17 = *(a2 + 578);
    *(this + 341) |= 0x800000u;
    *(this + 578) = v17;
    v14 = *(a2 + 341);
  }

LABEL_66:
  if (!(v14 >> 25))
  {
    goto LABEL_122;
  }

  if ((v14 & 0x2000000) != 0)
  {
    v55 = *(a2 + 79);
    *(this + 341) |= 0x2000000u;
    *(this + 79) = v55;
    v14 = *(a2 + 341);
    if ((v14 & 0x8000000) == 0)
    {
LABEL_69:
      if ((v14 & 0x10000000) == 0)
      {
        goto LABEL_70;
      }

      goto LABEL_118;
    }
  }

  else if ((v14 & 0x8000000) == 0)
  {
    goto LABEL_69;
  }

  v56 = *(a2 + 83);
  *(this + 341) |= 0x8000000u;
  *(this + 83) = v56;
  v14 = *(a2 + 341);
  if ((v14 & 0x10000000) == 0)
  {
LABEL_70:
    if ((v14 & 0x20000000) == 0)
    {
      goto LABEL_71;
    }

LABEL_119:
    v58 = *(a2 + 85);
    *(this + 341) |= 0x20000000u;
    *(this + 85) = v58;
    if ((*(a2 + 341) & 0x80000000) == 0)
    {
      goto LABEL_122;
    }

    goto LABEL_120;
  }

LABEL_118:
  v57 = *(a2 + 84);
  *(this + 341) |= 0x10000000u;
  *(this + 84) = v57;
  v14 = *(a2 + 341);
  if ((v14 & 0x20000000) != 0)
  {
    goto LABEL_119;
  }

LABEL_71:
  if ((v14 & 0x80000000) == 0)
  {
    goto LABEL_122;
  }

LABEL_120:
  v59 = *(a2 + 202);
  if (v59 >= 0xE)
  {
    awd::metrics::LocationGPSSessionStatistics::MergeFrom();
  }

  *(this + 341) |= 0x80000000;
  *(this + 202) = v59;
LABEL_122:
  v60 = *(a2 + 342);
  if ((v60 & 0x1FE) == 0)
  {
    goto LABEL_131;
  }

  if ((v60 & 2) != 0)
  {
    v71 = *(a2 + 92);
    *(this + 342) |= 2u;
    *(this + 92) = v71;
    v60 = *(a2 + 342);
    if ((v60 & 4) == 0)
    {
LABEL_125:
      if ((v60 & 8) == 0)
      {
        goto LABEL_126;
      }

      goto LABEL_186;
    }
  }

  else if ((v60 & 4) == 0)
  {
    goto LABEL_125;
  }

  v72 = *(a2 + 93);
  *(this + 342) |= 4u;
  *(this + 93) = v72;
  v60 = *(a2 + 342);
  if ((v60 & 8) == 0)
  {
LABEL_126:
    if ((v60 & 0x10) == 0)
    {
      goto LABEL_127;
    }

    goto LABEL_187;
  }

LABEL_186:
  v73 = *(a2 + 94);
  *(this + 342) |= 8u;
  *(this + 94) = v73;
  v60 = *(a2 + 342);
  if ((v60 & 0x10) == 0)
  {
LABEL_127:
    if ((v60 & 0x20) == 0)
    {
      goto LABEL_128;
    }

    goto LABEL_188;
  }

LABEL_187:
  v74 = *(a2 + 95);
  *(this + 342) |= 0x10u;
  *(this + 95) = v74;
  v60 = *(a2 + 342);
  if ((v60 & 0x20) == 0)
  {
LABEL_128:
    if ((v60 & 0x40) == 0)
    {
      goto LABEL_129;
    }

    goto LABEL_189;
  }

LABEL_188:
  v75 = *(a2 + 96);
  *(this + 342) |= 0x20u;
  *(this + 96) = v75;
  v60 = *(a2 + 342);
  if ((v60 & 0x40) == 0)
  {
LABEL_129:
    if ((v60 & 0x80) == 0)
    {
      goto LABEL_131;
    }

    goto LABEL_130;
  }

LABEL_189:
  v76 = *(a2 + 97);
  *(this + 342) |= 0x40u;
  *(this + 97) = v76;
  v60 = *(a2 + 342);
  if ((v60 & 0x80) != 0)
  {
LABEL_130:
    v61 = *(a2 + 98);
    *(this + 342) |= 0x80u;
    *(this + 98) = v61;
    v60 = *(a2 + 342);
  }

LABEL_131:
  if ((v60 & 0xFF00) == 0)
  {
    goto LABEL_141;
  }

  if ((v60 & 0x100) != 0)
  {
    v77 = *(a2 + 99);
    *(this + 342) |= 0x100u;
    *(this + 99) = v77;
    v60 = *(a2 + 342);
    if ((v60 & 0x200) == 0)
    {
LABEL_134:
      if ((v60 & 0x400) == 0)
      {
        goto LABEL_135;
      }

      goto LABEL_193;
    }
  }

  else if ((v60 & 0x200) == 0)
  {
    goto LABEL_134;
  }

  v78 = *(a2 + 100);
  *(this + 342) |= 0x200u;
  *(this + 100) = v78;
  v60 = *(a2 + 342);
  if ((v60 & 0x400) == 0)
  {
LABEL_135:
    if ((v60 & 0x800) == 0)
    {
      goto LABEL_136;
    }

    goto LABEL_194;
  }

LABEL_193:
  v79 = *(a2 + 102);
  *(this + 342) |= 0x400u;
  *(this + 102) = v79;
  v60 = *(a2 + 342);
  if ((v60 & 0x800) == 0)
  {
LABEL_136:
    if ((v60 & 0x1000) == 0)
    {
      goto LABEL_137;
    }

    goto LABEL_195;
  }

LABEL_194:
  v80 = *(a2 + 103);
  *(this + 342) |= 0x800u;
  *(this + 103) = v80;
  v60 = *(a2 + 342);
  if ((v60 & 0x1000) == 0)
  {
LABEL_137:
    if ((v60 & 0x2000) == 0)
    {
      goto LABEL_138;
    }

    goto LABEL_196;
  }

LABEL_195:
  v81 = *(a2 + 104);
  *(this + 342) |= 0x1000u;
  *(this + 104) = v81;
  v60 = *(a2 + 342);
  if ((v60 & 0x2000) == 0)
  {
LABEL_138:
    if ((v60 & 0x4000) == 0)
    {
      goto LABEL_139;
    }

    goto LABEL_197;
  }

LABEL_196:
  v82 = *(a2 + 105);
  *(this + 342) |= 0x2000u;
  *(this + 105) = v82;
  v60 = *(a2 + 342);
  if ((v60 & 0x4000) == 0)
  {
LABEL_139:
    if ((v60 & 0x8000) == 0)
    {
      goto LABEL_141;
    }

    goto LABEL_140;
  }

LABEL_197:
  v83 = *(a2 + 106);
  *(this + 342) |= 0x4000u;
  *(this + 106) = v83;
  v60 = *(a2 + 342);
  if ((v60 & 0x8000) != 0)
  {
LABEL_140:
    v62 = *(a2 + 579);
    *(this + 342) |= 0x8000u;
    *(this + 579) = v62;
    v60 = *(a2 + 342);
  }

LABEL_141:
  if ((v60 & 0x1FE0000) == 0)
  {
    goto LABEL_150;
  }

  if ((v60 & 0x20000) != 0)
  {
    v84 = *(a2 + 110);
    *(this + 342) |= 0x20000u;
    *(this + 110) = v84;
    v60 = *(a2 + 342);
    if ((v60 & 0x40000) == 0)
    {
LABEL_144:
      if ((v60 & 0x80000) == 0)
      {
        goto LABEL_145;
      }

      goto LABEL_201;
    }
  }

  else if ((v60 & 0x40000) == 0)
  {
    goto LABEL_144;
  }

  v85 = *(a2 + 111);
  *(this + 342) |= 0x40000u;
  *(this + 111) = v85;
  v60 = *(a2 + 342);
  if ((v60 & 0x80000) == 0)
  {
LABEL_145:
    if ((v60 & 0x100000) == 0)
    {
      goto LABEL_146;
    }

    goto LABEL_202;
  }

LABEL_201:
  v86 = *(a2 + 1044);
  *(this + 342) |= 0x80000u;
  *(this + 1044) = v86;
  v60 = *(a2 + 342);
  if ((v60 & 0x100000) == 0)
  {
LABEL_146:
    if ((v60 & 0x200000) == 0)
    {
      goto LABEL_147;
    }

    goto LABEL_203;
  }

LABEL_202:
  v87 = *(a2 + 203);
  *(this + 342) |= 0x100000u;
  *(this + 203) = v87;
  v60 = *(a2 + 342);
  if ((v60 & 0x200000) == 0)
  {
LABEL_147:
    if ((v60 & 0x400000) == 0)
    {
      goto LABEL_148;
    }

    goto LABEL_204;
  }

LABEL_203:
  v88 = *(a2 + 224);
  *(this + 342) |= 0x200000u;
  *(this + 224) = v88;
  v60 = *(a2 + 342);
  if ((v60 & 0x400000) == 0)
  {
LABEL_148:
    if ((v60 & 0x800000) == 0)
    {
      goto LABEL_150;
    }

    goto LABEL_149;
  }

LABEL_204:
  v89 = *(a2 + 225);
  *(this + 342) |= 0x400000u;
  *(this + 225) = v89;
  v60 = *(a2 + 342);
  if ((v60 & 0x800000) != 0)
  {
LABEL_149:
    v63 = *(a2 + 113);
    *(this + 342) |= 0x800000u;
    *(this + 113) = v63;
    v60 = *(a2 + 342);
  }

LABEL_150:
  if (!HIBYTE(v60))
  {
    goto LABEL_159;
  }

  if ((v60 & 0x1000000) != 0)
  {
    *(this + 342) |= 0x1000000u;
    v95 = *(this + 114);
    if (!v95)
    {
      operator new();
    }

    v96 = *(a2 + 114);
    if (!v96)
    {
      v96 = *(awd::metrics::LocationGPSSessionStatistics::default_instance_ + 912);
    }

    awd::metrics::LocationGPSSessionStatistics_LocationGpsPersistentStatistics::MergeFrom(v95, v96);
    v60 = *(a2 + 342);
    if ((v60 & 0x2000000) == 0)
    {
LABEL_153:
      if ((v60 & 0x4000000) == 0)
      {
        goto LABEL_154;
      }

      goto LABEL_218;
    }
  }

  else if ((v60 & 0x2000000) == 0)
  {
    goto LABEL_153;
  }

  v97 = *(a2 + 230);
  *(this + 342) |= 0x2000000u;
  *(this + 230) = v97;
  v60 = *(a2 + 342);
  if ((v60 & 0x4000000) == 0)
  {
LABEL_154:
    if ((v60 & 0x8000000) == 0)
    {
      goto LABEL_155;
    }

    goto LABEL_219;
  }

LABEL_218:
  v98 = *(a2 + 231);
  *(this + 342) |= 0x4000000u;
  *(this + 231) = v98;
  v60 = *(a2 + 342);
  if ((v60 & 0x8000000) == 0)
  {
LABEL_155:
    if ((v60 & 0x10000000) == 0)
    {
      goto LABEL_156;
    }

    goto LABEL_220;
  }

LABEL_219:
  v99 = *(a2 + 232);
  *(this + 342) |= 0x8000000u;
  *(this + 232) = v99;
  v60 = *(a2 + 342);
  if ((v60 & 0x10000000) == 0)
  {
LABEL_156:
    if ((v60 & 0x20000000) == 0)
    {
      goto LABEL_157;
    }

    goto LABEL_221;
  }

LABEL_220:
  v100 = *(a2 + 233);
  *(this + 342) |= 0x10000000u;
  *(this + 233) = v100;
  v60 = *(a2 + 342);
  if ((v60 & 0x20000000) == 0)
  {
LABEL_157:
    if ((v60 & 0x40000000) == 0)
    {
      goto LABEL_158;
    }

LABEL_222:
    v102 = *(a2 + 235);
    *(this + 342) |= 0x40000000u;
    *(this + 235) = v102;
    if ((*(a2 + 342) & 0x80000000) == 0)
    {
      goto LABEL_159;
    }

    goto LABEL_223;
  }

LABEL_221:
  v101 = *(a2 + 234);
  *(this + 342) |= 0x20000000u;
  *(this + 234) = v101;
  v60 = *(a2 + 342);
  if ((v60 & 0x40000000) != 0)
  {
    goto LABEL_222;
  }

LABEL_158:
  if ((v60 & 0x80000000) == 0)
  {
    goto LABEL_159;
  }

LABEL_223:
  v103 = *(a2 + 236);
  *(this + 342) |= 0x80000000;
  *(this + 236) = v103;
LABEL_159:
  v64 = *(a2 + 343);
  if (!v64)
  {
    goto LABEL_167;
  }

  if (v64)
  {
    v90 = *(a2 + 237);
    *(this + 343) |= 1u;
    *(this + 237) = v90;
    v64 = *(a2 + 343);
    if ((v64 & 2) == 0)
    {
LABEL_162:
      if ((v64 & 4) == 0)
      {
        goto LABEL_163;
      }

      goto LABEL_208;
    }
  }

  else if ((v64 & 2) == 0)
  {
    goto LABEL_162;
  }

  v91 = *(a2 + 238);
  *(this + 343) |= 2u;
  *(this + 238) = v91;
  v64 = *(a2 + 343);
  if ((v64 & 4) == 0)
  {
LABEL_163:
    if ((v64 & 8) == 0)
    {
      goto LABEL_164;
    }

    goto LABEL_209;
  }

LABEL_208:
  v92 = *(a2 + 239);
  *(this + 343) |= 4u;
  *(this + 239) = v92;
  v64 = *(a2 + 343);
  if ((v64 & 8) == 0)
  {
LABEL_164:
    if ((v64 & 0x10) == 0)
    {
      goto LABEL_165;
    }

    goto LABEL_210;
  }

LABEL_209:
  v93 = *(a2 + 240);
  *(this + 343) |= 8u;
  *(this + 240) = v93;
  v64 = *(a2 + 343);
  if ((v64 & 0x10) == 0)
  {
LABEL_165:
    if ((v64 & 0x20) == 0)
    {
      goto LABEL_167;
    }

    goto LABEL_166;
  }

LABEL_210:
  v94 = *(a2 + 241);
  *(this + 343) |= 0x10u;
  *(this + 241) = v94;
  v64 = *(a2 + 343);
  if ((v64 & 0x20) != 0)
  {
LABEL_166:
    v65 = *(a2 + 260);
    *(this + 343) |= 0x20u;
    *(this + 260) = v65;
    v64 = *(a2 + 343);
  }

LABEL_167:
  if ((v64 & 0x400) != 0)
  {
    *(this + 343) |= 0x400u;
    v66 = *(this + 134);
    if (!v66)
    {
      operator new();
    }

    v67 = *(a2 + 134);
    if (!v67)
    {
      v67 = *(awd::metrics::LocationGPSSessionStatistics::default_instance_ + 1072);
    }

    awd::metrics::LocationGPSSessionStatistics_BarometricAltitudeDriftRateInfo::MergeFrom(v66, v67);
    v64 = *(a2 + 343);
  }

  if ((v64 & 0x1FE00000) != 0)
  {
    if ((v64 & 0x200000) != 0)
    {
      v68 = *(a2 + 1045);
      *(this + 343) |= 0x200000u;
      *(this + 1045) = v68;
      v64 = *(a2 + 343);
    }

    if ((v64 & 0x400000) != 0)
    {
      v69 = *(a2 + 1046);
      *(this + 343) |= 0x400000u;
      *(this + 1046) = v69;
      v64 = *(a2 + 343);
    }
  }

  if (HIBYTE(v64))
  {
    if ((v64 & 0x1000000) != 0)
    {
      v104 = *(a2 + 336);
      *(this + 343) |= 0x1000000u;
      *(this + 336) = v104;
      v64 = *(a2 + 343);
      if ((v64 & 0x2000000) == 0)
      {
LABEL_181:
        if ((v64 & 0x4000000) == 0)
        {
          return;
        }

        goto LABEL_182;
      }
    }

    else if ((v64 & 0x2000000) == 0)
    {
      goto LABEL_181;
    }

    v105 = *(a2 + 337);
    *(this + 343) |= 0x2000000u;
    *(this + 337) = v105;
    if ((*(a2 + 343) & 0x4000000) != 0)
    {
LABEL_182:
      v70 = *(a2 + 338);
      *(this + 343) |= 0x4000000u;
      *(this + 338) = v70;
    }
  }
}

void sub_29644E33C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::metrics::LocationGPSSessionStatistics::~LocationGPSSessionStatistics(awd::metrics::LocationGPSSessionStatistics *this)
{
  *this = &unk_2A1D50628;
  awd::metrics::LocationGPSSessionStatistics::SharedDtor(this);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationGPSSessionStatistics_JammingMetricDataPerSignal>::TypeHandler>(this + 165);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationGPSSessionStatistics_SatelliteCountRangeData>::TypeHandler>(this + 162);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationGPSSessionStatistics_SatelliteCountRangeData>::TypeHandler>(this + 159);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationGPSSessionStatistics_SatelliteCountRangeData>::TypeHandler>(this + 156);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationGPSSessionStatistics_SatelliteCountRangeData>::TypeHandler>(this + 153);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationGPSSessionStatistics_SatelliteCNORangeData>::TypeHandler>(this + 150);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationGPSSessionStatistics_SatelliteCNORangeData>::TypeHandler>(this + 147);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationGPSSessionStatistics_SatelliteCNORangeData>::TypeHandler>(this + 144);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationGPSSessionStatistics_SatelliteCNORangeData>::TypeHandler>(this + 141);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationGPSSessionStatistics_NSOnOffState>::TypeHandler>(this + 138);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationGPSSessionStatistics_NSForceOffReason>::TypeHandler>(this + 135);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationGPSSessionStatistics_ThermalLevelData>::TypeHandler>(this + 131);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationGPSSessionStatistics_ChargerTypeData>::TypeHandler>(this + 127);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationGPSSessionStatistics_SatelliteCountRangeData>::TypeHandler>(this + 124);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationGPSSessionStatistics_SatelliteCNORangeData>::TypeHandler>(this + 121);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationGPSSessionStatistics_ChecksumData>::TypeHandler>(this + 107);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationGPSSessionStatistics_PowerMeasurementData>::TypeHandler>(this + 89);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationGPSSessionStatistics_DeviceOrientationData>::TypeHandler>(this + 86);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationGPSSessionStatistics_PowerStateData>::TypeHandler>(this + 80);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationGPSSessionStatistics_ChecksumData>::TypeHandler>(this + 76);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationGPSSessionStatistics_MountedStateData>::TypeHandler>(this + 46);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationGPSSessionStatistics_MovingStateData>::TypeHandler>(this + 43);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationGPSSessionStatistics_MotionActivityData>::TypeHandler>(this + 40);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationGPSSessionStatistics_SatelliteCountRangeData>::TypeHandler>(this + 37);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationGPSSessionStatistics_SatelliteCountRangeData>::TypeHandler>(this + 34);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationGPSSessionStatistics_SatelliteCountRangeData>::TypeHandler>(this + 31);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationGPSSessionStatistics_SatelliteCountRangeData>::TypeHandler>(this + 28);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationGPSSessionStatistics_SatelliteCNORangeData>::TypeHandler>(this + 25);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationGPSSessionStatistics_SatelliteCNORangeData>::TypeHandler>(this + 22);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationGPSSessionStatistics_SatelliteCNORangeData>::TypeHandler>(this + 19);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationGPSSessionStatistics_SatelliteCNORangeData>::TypeHandler>(this + 16);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationGPSSessionStatistics_SignalEnvironmentData>::TypeHandler>(this + 13);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationGPSSessionStatistics_UncertaintyRangeData>::TypeHandler>(this + 10);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationGPSSessionStatistics_UncertaintyRangeData>::TypeHandler>(this + 7);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  awd::metrics::LocationGPSSessionStatistics::~LocationGPSSessionStatistics(this);

  JUMPOUT(0x29C25A730);
}

void *awd::metrics::LocationGPSSessionStatistics::SharedDtor(void *this)
{
  v1 = this;
  v2 = this[2];
  if (v2 != MEMORY[0x29EDC9758] && v2 != 0)
  {
    if (*(v2 + 23) < 0)
    {
      operator delete(*v2);
    }

    this = MEMORY[0x29C25A730](v2, 0x1012C40EC159624);
  }

  if (awd::metrics::LocationGPSSessionStatistics::default_instance_ != v1)
  {
    v4 = v1[114];
    if (v4)
    {
      (*(*v4 + 8))(v4);
    }

    this = v1[134];
    if (this)
    {
      v5 = *(*this + 8);

      return v5();
    }
  }

  return this;
}

uint64_t awd::metrics::LocationGPSSessionStatistics::default_instance(awd::metrics::LocationGPSSessionStatistics *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = awd::metrics::LocationGPSSessionStatistics::default_instance_;
  if (!awd::metrics::LocationGPSSessionStatistics::default_instance_)
  {
    awd::metrics::protobuf_AddDesc_Location_2eproto(0, a2, a3, a4);
    return awd::metrics::LocationGPSSessionStatistics::default_instance_;
  }

  return result;
}

uint64_t awd::metrics::LocationGPSSessionStatistics::Clear(awd::metrics::LocationGPSSessionStatistics *this)
{
  v2 = *(this + 340);
  if (v2)
  {
    *(this + 1) = 0;
    if ((v2 & 2) != 0)
    {
      v3 = *(this + 2);
      if (v3 != MEMORY[0x29EDC9758])
      {
        if (*(v3 + 23) < 0)
        {
          **v3 = 0;
          *(v3 + 8) = 0;
        }

        else
        {
          *v3 = 0;
          *(v3 + 23) = 0;
        }
      }
    }

    *(this + 40) = 0u;
    *(this + 24) = 0u;
    v2 = *(this + 340);
  }

  if ((v2 & 0x3FC00) != 0)
  {
    *(this + 108) = 0;
  }

  if ((v2 & 0x7F800000) != 0)
  {
    *(this + 49) = 0;
  }

  if (HIBYTE(v2))
  {
    *(this + 288) = 0;
    *(this + 25) = 0u;
    *(this + 26) = 0u;
    *(this + 55) = 0;
    *(this + 56) = 0;
  }

  v4 = *(this + 341);
  if (v4)
  {
    *(this + 488) = 0u;
    *(this + 504) = 0u;
    *(this + 456) = 0u;
    *(this + 472) = 0u;
  }

  if ((v4 & 0xFF00) != 0)
  {
    *(this + 109) = 0;
    *(this + 71) = 0;
    *(this + 520) = 0u;
    *(this + 536) = 0u;
    *(this + 552) = 0u;
  }

  if ((v4 & 0xFF0000) != 0)
  {
    *(this + 578) = 0;
    *(this + 151) = 0;
    *(this + 588) = 0;
    *(this + 596) = 0;
    *(this + 580) = 0;
  }

  if (v4 >> 25)
  {
    *(this + 79) = 0;
    *(this + 202) = 0;
    *(this + 83) = 0;
    *(this + 85) = 0;
    *(this + 84) = 0;
  }

  v5 = *(this + 342);
  if ((v5 & 0x1FE) != 0)
  {
    *(this + 98) = 0;
    *(this + 47) = 0u;
    *(this + 48) = 0u;
    *(this + 46) = 0u;
  }

  if ((v5 & 0xFF00) != 0)
  {
    *(this + 579) = 0;
    *(this + 792) = 0u;
    *(this + 51) = 0u;
    *(this + 52) = 0u;
    *(this + 106) = 0;
  }

  if ((v5 & 0x1FE0000) != 0)
  {
    *(this + 1044) = 0;
    *(this + 203) = 0;
    *(this + 55) = 0u;
    *(this + 56) = 0u;
  }

  if (HIBYTE(v5))
  {
    if ((v5 & 0x1000000) != 0)
    {
      v6 = *(this + 114);
      if (v6)
      {
        v7 = *(v6 + 72);
        if (v7)
        {
          *(v6 + 40) = 0;
          *(v6 + 24) = 0u;
          *(v6 + 8) = 0u;
        }

        if ((v7 & 0xFF00) != 0)
        {
          *(v6 + 48) = 0;
          *(v6 + 56) = 0;
          *(v6 + 64) = 0;
        }

        *(v6 + 72) = 0;
      }
    }

    *(this + 236) = 0;
    *(this + 117) = 0;
    *(this + 920) = 0u;
  }

  v8 = *(this + 343);
  if (v8)
  {
    *(this + 260) = 0;
    *(this + 241) = 0;
    *(this + 948) = 0u;
  }

  if ((v8 & 0x400) != 0)
  {
    v9 = *(this + 134);
    if (v9)
    {
      if (*(v9 + 28))
      {
        *(v9 + 8) = 0;
        *(v9 + 16) = 0;
      }

      *(v9 + 28) = 0;
      v8 = *(this + 343);
    }
  }

  if ((v8 & 0x1FE00000) != 0)
  {
    *(this + 1045) = 0;
  }

  v10 = (this + 1360);
  if (HIBYTE(v8))
  {
    *(this + 168) = 0;
    *(this + 338) = 0;
  }

  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Clear<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationGPSSessionStatistics_UncertaintyRangeData>::TypeHandler>(this + 56);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Clear<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationGPSSessionStatistics_UncertaintyRangeData>::TypeHandler>(this + 80);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Clear<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationGPSSessionStatistics_SignalEnvironmentData>::TypeHandler>(this + 104);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Clear<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationGPSSessionStatistics_SatelliteCNORangeData>::TypeHandler>(this + 128);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Clear<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationGPSSessionStatistics_SatelliteCNORangeData>::TypeHandler>(this + 152);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Clear<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationGPSSessionStatistics_SatelliteCNORangeData>::TypeHandler>(this + 176);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Clear<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationGPSSessionStatistics_SatelliteCNORangeData>::TypeHandler>(this + 200);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Clear<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationGPSSessionStatistics_SatelliteCountRangeData>::TypeHandler>(this + 224);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Clear<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationGPSSessionStatistics_SatelliteCountRangeData>::TypeHandler>(this + 248);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Clear<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationGPSSessionStatistics_SatelliteCountRangeData>::TypeHandler>(this + 272);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Clear<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationGPSSessionStatistics_SatelliteCountRangeData>::TypeHandler>(this + 296);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Clear<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationGPSSessionStatistics_MotionActivityData>::TypeHandler>(this + 320);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Clear<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationGPSSessionStatistics_MovingStateData>::TypeHandler>(this + 344);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Clear<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationGPSSessionStatistics_MountedStateData>::TypeHandler>(this + 368);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Clear<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationGPSSessionStatistics_ChecksumData>::TypeHandler>(this + 608);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Clear<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationGPSSessionStatistics_PowerStateData>::TypeHandler>(this + 640);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Clear<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationGPSSessionStatistics_DeviceOrientationData>::TypeHandler>(this + 688);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Clear<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationGPSSessionStatistics_PowerMeasurementData>::TypeHandler>(this + 712);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Clear<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationGPSSessionStatistics_ChecksumData>::TypeHandler>(this + 856);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Clear<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationGPSSessionStatistics_SatelliteCNORangeData>::TypeHandler>(this + 968);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Clear<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationGPSSessionStatistics_SatelliteCountRangeData>::TypeHandler>(this + 992);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Clear<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationGPSSessionStatistics_ChargerTypeData>::TypeHandler>(this + 1016);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Clear<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationGPSSessionStatistics_ThermalLevelData>::TypeHandler>(this + 1048);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Clear<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationGPSSessionStatistics_NSForceOffReason>::TypeHandler>(this + 1080);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Clear<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationGPSSessionStatistics_NSOnOffState>::TypeHandler>(this + 1104);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Clear<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationGPSSessionStatistics_SatelliteCNORangeData>::TypeHandler>(this + 1128);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Clear<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationGPSSessionStatistics_SatelliteCNORangeData>::TypeHandler>(this + 1152);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Clear<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationGPSSessionStatistics_SatelliteCNORangeData>::TypeHandler>(this + 1176);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Clear<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationGPSSessionStatistics_SatelliteCNORangeData>::TypeHandler>(this + 1200);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Clear<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationGPSSessionStatistics_SatelliteCountRangeData>::TypeHandler>(this + 1224);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Clear<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationGPSSessionStatistics_SatelliteCountRangeData>::TypeHandler>(this + 1248);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Clear<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationGPSSessionStatistics_SatelliteCountRangeData>::TypeHandler>(this + 1272);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Clear<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationGPSSessionStatistics_SatelliteCountRangeData>::TypeHandler>(this + 1296);
  result = wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Clear<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationGPSSessionStatistics_JammingMetricDataPerSignal>::TypeHandler>(this + 1320);
  *v10 = 0;
  *(this + 171) = 0;
  return result;
}

uint64_t awd::metrics::LocationGPSSessionStatistics::MergePartialFromCodedStream(awd::metrics::LocationGPSSessionStatistics *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
{
  v703 = (this + 520);
  v704 = (this + 512);
  v701 = (this + 536);
  v702 = (this + 528);
  v699 = (this + 552);
  v700 = (this + 544);
  v697 = (this + 568);
  v698 = (this + 560);
  v675 = (this + 604);
  v668 = (this + 664);
  v669 = (this + 632);
  v667 = (this + 736);
  v672 = (this + 744);
  v673 = (this + 672);
  v677 = (this + 752);
  v678 = (this + 680);
  v680 = (this + 760);
  v682 = (this + 768);
  v684 = (this + 776);
  v688 = (this + 784);
  v689 = (this + 792);
  v695 = (this + 816);
  v696 = (this + 800);
  v693 = (this + 832);
  v694 = (this + 824);
  v691 = (this + 848);
  v692 = (this + 840);
  v674 = (this + 888);
  v670 = (this + 880);
  v671 = (this + 920);
  v676 = (this + 924);
  v679 = (this + 928);
  v681 = (this + 932);
  v683 = (this + 936);
  v685 = (this + 940);
  v686 = (this + 944);
  v687 = (this + 904);
  v690 = (this + 948);
  v5 = (this + 952);
  v6 = (this + 956);
  v7 = (this + 960);
  v8 = (this + 964);
  v9 = (this + 1040);
LABEL_2:
  while (2)
  {
    v10 = *(a2 + 1);
    if (v10 >= *(a2 + 2) || (TagFallback = *v10, (TagFallback & 0x80000000) != 0))
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
      *(a2 + 1) = v10 + 1;
      if (!TagFallback)
      {
        return 1;
      }
    }

    v12 = TagFallback & 7;
    switch(TagFallback >> 3)
    {
      case 1u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_265;
        }

        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64(a2, this + 1);
        if (result)
        {
          v14 = *(this + 340) | 1;
          *(this + 340) = v14;
          v15 = *(a2 + 1);
          if (v15 < *(a2 + 2) && *v15 == 18)
          {
            *(a2 + 1) = v15 + 1;
            goto LABEL_137;
          }

          continue;
        }

        return result;
      case 2u:
        if (v12 != 2)
        {
          goto LABEL_265;
        }

        v14 = *(this + 340);
LABEL_137:
        *(this + 340) = v14 | 2;
        if (*(this + 2) == MEMORY[0x29EDC9758])
        {
          operator new();
        }

        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
        if (result)
        {
          v66 = *(a2 + 1);
          v55 = *(a2 + 2);
          if (v66 < v55 && *v66 == 24)
          {
            v62 = v66 + 1;
            *(a2 + 1) = v62;
            goto LABEL_143;
          }

          continue;
        }

        return result;
      case 3u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_265;
        }

        v62 = *(a2 + 1);
        v55 = *(a2 + 2);
LABEL_143:
        if (v62 >= v55 || (v67 = *v62, v67 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 3);
          if (!result)
          {
            return result;
          }

          v68 = *(a2 + 1);
          v55 = *(a2 + 2);
        }

        else
        {
          *(this + 3) = v67;
          v68 = v62 + 1;
          *(a2 + 1) = v68;
        }

        *(this + 340) |= 4u;
        if (v68 < v55 && *v68 == 32)
        {
          v65 = v68 + 1;
          *(a2 + 1) = v65;
          goto LABEL_274;
        }

        continue;
      case 4u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_265;
        }

        v65 = *(a2 + 1);
        v55 = *(a2 + 2);
LABEL_274:
        if (v65 >= v55 || (v113 = *v65, v113 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 10);
          if (!result)
          {
            return result;
          }

          v114 = *(a2 + 1);
          v55 = *(a2 + 2);
        }

        else
        {
          *(this + 10) = v113;
          v114 = v65 + 1;
          *(a2 + 1) = v114;
        }

        *(this + 340) |= 8u;
        if (v114 >= v55 || *v114 != 40)
        {
          continue;
        }

        v56 = v114 + 1;
        *(a2 + 1) = v56;
LABEL_282:
        if (v56 >= v55 || (v115 = *v56, v115 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 4);
          if (!result)
          {
            return result;
          }

          v116 = *(a2 + 1);
          v55 = *(a2 + 2);
        }

        else
        {
          *(this + 4) = v115;
          v116 = v56 + 1;
          *(a2 + 1) = v116;
        }

        *(this + 340) |= 0x10u;
        if (v116 >= v55 || *v116 != 53)
        {
          continue;
        }

        *(a2 + 1) = v116 + 1;
LABEL_290:
        v705[0] = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a2, v705) & 1) == 0)
        {
          return 0;
        }

        *(this + 11) = v705[0];
        *(this + 340) |= 0x20u;
        v117 = *(a2 + 1);
        if (v117 >= *(a2 + 2) || *v117 != 61)
        {
          continue;
        }

        *(a2 + 1) = v117 + 1;
LABEL_294:
        v705[0] = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a2, v705) & 1) == 0)
        {
          return 0;
        }

        *(this + 12) = v705[0];
        *(this + 340) |= 0x40u;
        v118 = *(a2 + 1);
        if (v118 >= *(a2 + 2) || *v118 != 69)
        {
          continue;
        }

        *(a2 + 1) = v118 + 1;
LABEL_298:
        v705[0] = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a2, v705) & 1) == 0)
        {
          return 0;
        }

        *(this + 13) = v705[0];
        *(this + 340) |= 0x80u;
        v119 = *(a2 + 1);
        if (v119 >= *(a2 + 2) || *v119 != 74)
        {
          continue;
        }

        do
        {
          *(a2 + 1) = v119 + 1;
LABEL_302:
          v120 = *(this + 17);
          v121 = *(this + 16);
          if (v121 >= v120)
          {
            if (v120 == *(this + 18))
            {
              wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 56));
              v120 = *(this + 17);
            }

            *(this + 17) = v120 + 1;
            operator new();
          }

          v122 = *(this + 7);
          *(this + 16) = v121 + 1;
          v123 = *(v122 + 8 * v121);
          v705[0] = 0;
          v124 = *(a2 + 1);
          if (v124 >= *(a2 + 2) || *v124 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v705))
            {
              return 0;
            }
          }

          else
          {
            v705[0] = *v124;
            *(a2 + 1) = v124 + 1;
          }

          v125 = *(a2 + 14);
          v126 = *(a2 + 15);
          *(a2 + 14) = v125 + 1;
          if (v125 >= v126)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
          if (!awd::metrics::LocationGPSSessionStatistics_UncertaintyRangeData::MergePartialFromCodedStream(v123, a2, v127) || *(a2 + 36) != 1)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
          v128 = *(a2 + 14);
          v129 = __OFSUB__(v128, 1);
          v130 = v128 - 1;
          if (v130 < 0 == v129)
          {
            *(a2 + 14) = v130;
          }

          v119 = *(a2 + 1);
          if (v119 >= *(a2 + 2))
          {
            goto LABEL_2;
          }

          v131 = *v119;
        }

        while (v131 == 74);
        if (v131 != 82)
        {
          continue;
        }

        do
        {
          *(a2 + 1) = v119 + 1;
LABEL_320:
          v132 = *(this + 23);
          v133 = *(this + 22);
          if (v133 >= v132)
          {
            if (v132 == *(this + 24))
            {
              wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 80));
              v132 = *(this + 23);
            }

            *(this + 23) = v132 + 1;
            operator new();
          }

          v134 = *(this + 10);
          *(this + 22) = v133 + 1;
          v135 = *(v134 + 8 * v133);
          v705[0] = 0;
          v136 = *(a2 + 1);
          if (v136 >= *(a2 + 2) || *v136 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v705))
            {
              return 0;
            }
          }

          else
          {
            v705[0] = *v136;
            *(a2 + 1) = v136 + 1;
          }

          v137 = *(a2 + 14);
          v138 = *(a2 + 15);
          *(a2 + 14) = v137 + 1;
          if (v137 >= v138)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
          if (!awd::metrics::LocationGPSSessionStatistics_UncertaintyRangeData::MergePartialFromCodedStream(v135, a2, v139) || *(a2 + 36) != 1)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
          v140 = *(a2 + 14);
          v129 = __OFSUB__(v140, 1);
          v141 = v140 - 1;
          if (v141 < 0 == v129)
          {
            *(a2 + 14) = v141;
          }

          v119 = *(a2 + 1);
          v77 = *(a2 + 2);
          if (v119 >= v77)
          {
            goto LABEL_2;
          }

          v142 = *v119;
        }

        while (v142 == 82);
        if (v142 != 88)
        {
          continue;
        }

        v78 = v119 + 1;
        *(a2 + 1) = v78;
LABEL_338:
        v705[0] = 0;
        if (v78 >= v77 || (v143 = *v78, (v143 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v705);
          if (!result)
          {
            return result;
          }

          v143 = v705[0];
          v144 = *(a2 + 1);
          v77 = *(a2 + 2);
        }

        else
        {
          v144 = (v78 + 1);
          *(a2 + 1) = v144;
        }

        *(this + 108) = v143;
        *(this + 340) |= 0x400u;
        if (v144 >= v77 || *v144 != 98)
        {
          continue;
        }

        do
        {
          *(a2 + 1) = v144 + 1;
LABEL_346:
          v145 = *(this + 29);
          v146 = *(this + 28);
          if (v146 >= v145)
          {
            if (v145 == *(this + 30))
            {
              wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 104));
              v145 = *(this + 29);
            }

            *(this + 29) = v145 + 1;
            operator new();
          }

          v147 = *(this + 13);
          *(this + 28) = v146 + 1;
          v148 = *(v147 + 8 * v146);
          v705[0] = 0;
          v149 = *(a2 + 1);
          if (v149 >= *(a2 + 2) || *v149 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v705))
            {
              return 0;
            }
          }

          else
          {
            v705[0] = *v149;
            *(a2 + 1) = v149 + 1;
          }

          v150 = *(a2 + 14);
          v151 = *(a2 + 15);
          *(a2 + 14) = v150 + 1;
          if (v150 >= v151)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
          if (!awd::metrics::LocationGPSSessionStatistics_SignalEnvironmentData::MergePartialFromCodedStream(v148, a2, v152) || *(a2 + 36) != 1)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
          v153 = *(a2 + 14);
          v129 = __OFSUB__(v153, 1);
          v154 = v153 - 1;
          if (v154 < 0 == v129)
          {
            *(a2 + 14) = v154;
          }

          v144 = *(a2 + 1);
          if (v144 >= *(a2 + 2))
          {
            goto LABEL_2;
          }

          v155 = *v144;
        }

        while (v155 == 98);
        if (v155 != 106)
        {
          continue;
        }

        do
        {
          *(a2 + 1) = v144 + 1;
LABEL_364:
          v156 = *(this + 35);
          v157 = *(this + 34);
          if (v157 >= v156)
          {
            if (v156 == *(this + 36))
            {
              wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 128));
              v156 = *(this + 35);
            }

            *(this + 35) = v156 + 1;
            operator new();
          }

          v158 = *(this + 16);
          *(this + 34) = v157 + 1;
          v159 = *(v158 + 8 * v157);
          v705[0] = 0;
          v160 = *(a2 + 1);
          if (v160 >= *(a2 + 2) || *v160 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v705))
            {
              return 0;
            }
          }

          else
          {
            v705[0] = *v160;
            *(a2 + 1) = v160 + 1;
          }

          v161 = *(a2 + 14);
          v162 = *(a2 + 15);
          *(a2 + 14) = v161 + 1;
          if (v161 >= v162)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
          if (!awd::metrics::LocationGPSSessionStatistics_SatelliteCNORangeData::MergePartialFromCodedStream(v159, a2, v163) || *(a2 + 36) != 1)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
          v164 = *(a2 + 14);
          v129 = __OFSUB__(v164, 1);
          v165 = v164 - 1;
          if (v165 < 0 == v129)
          {
            *(a2 + 14) = v165;
          }

          v144 = *(a2 + 1);
          if (v144 >= *(a2 + 2))
          {
            goto LABEL_2;
          }

          v166 = *v144;
        }

        while (v166 == 106);
        if (v166 != 114)
        {
          continue;
        }

        do
        {
          *(a2 + 1) = v144 + 1;
LABEL_382:
          v167 = *(this + 41);
          v168 = *(this + 40);
          if (v168 >= v167)
          {
            if (v167 == *(this + 42))
            {
              wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 152));
              v167 = *(this + 41);
            }

            *(this + 41) = v167 + 1;
            operator new();
          }

          v169 = *(this + 19);
          *(this + 40) = v168 + 1;
          v170 = *(v169 + 8 * v168);
          v705[0] = 0;
          v171 = *(a2 + 1);
          if (v171 >= *(a2 + 2) || *v171 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v705))
            {
              return 0;
            }
          }

          else
          {
            v705[0] = *v171;
            *(a2 + 1) = v171 + 1;
          }

          v172 = *(a2 + 14);
          v173 = *(a2 + 15);
          *(a2 + 14) = v172 + 1;
          if (v172 >= v173)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
          if (!awd::metrics::LocationGPSSessionStatistics_SatelliteCNORangeData::MergePartialFromCodedStream(v170, a2, v174) || *(a2 + 36) != 1)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
          v175 = *(a2 + 14);
          v129 = __OFSUB__(v175, 1);
          v176 = v175 - 1;
          if (v176 < 0 == v129)
          {
            *(a2 + 14) = v176;
          }

          v144 = *(a2 + 1);
          if (v144 >= *(a2 + 2))
          {
            goto LABEL_2;
          }

          v177 = *v144;
        }

        while (v177 == 114);
        if (v177 != 122)
        {
          continue;
        }

        do
        {
          *(a2 + 1) = v144 + 1;
LABEL_400:
          v178 = *(this + 47);
          v179 = *(this + 46);
          if (v179 >= v178)
          {
            if (v178 == *(this + 48))
            {
              wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 176));
              v178 = *(this + 47);
            }

            *(this + 47) = v178 + 1;
            operator new();
          }

          v180 = *(this + 22);
          *(this + 46) = v179 + 1;
          v181 = *(v180 + 8 * v179);
          v705[0] = 0;
          v182 = *(a2 + 1);
          if (v182 >= *(a2 + 2) || *v182 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v705))
            {
              return 0;
            }
          }

          else
          {
            v705[0] = *v182;
            *(a2 + 1) = v182 + 1;
          }

          v183 = *(a2 + 14);
          v184 = *(a2 + 15);
          *(a2 + 14) = v183 + 1;
          if (v183 >= v184)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
          if (!awd::metrics::LocationGPSSessionStatistics_SatelliteCNORangeData::MergePartialFromCodedStream(v181, a2, v185) || *(a2 + 36) != 1)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
          v186 = *(a2 + 14);
          v129 = __OFSUB__(v186, 1);
          v187 = v186 - 1;
          if (v187 < 0 == v129)
          {
            *(a2 + 14) = v187;
          }

          v144 = *(a2 + 1);
          v188 = *(a2 + 2);
        }

        while (v144 < v188 && *v144 == 122);
        if (v188 - v144 < 2 || *v144 != 130 || v144[1] != 1)
        {
          continue;
        }

        while (1)
        {
          *(a2 + 1) = v144 + 2;
LABEL_420:
          v189 = *(this + 53);
          v190 = *(this + 52);
          if (v190 >= v189)
          {
            if (v189 == *(this + 54))
            {
              wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 200));
              v189 = *(this + 53);
            }

            *(this + 53) = v189 + 1;
            operator new();
          }

          v191 = *(this + 25);
          *(this + 52) = v190 + 1;
          v192 = *(v191 + 8 * v190);
          v705[0] = 0;
          v193 = *(a2 + 1);
          if (v193 >= *(a2 + 2) || *v193 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v705))
            {
              return 0;
            }
          }

          else
          {
            v705[0] = *v193;
            *(a2 + 1) = v193 + 1;
          }

          v194 = *(a2 + 14);
          v195 = *(a2 + 15);
          *(a2 + 14) = v194 + 1;
          if (v194 >= v195)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
          if (!awd::metrics::LocationGPSSessionStatistics_SatelliteCNORangeData::MergePartialFromCodedStream(v192, a2, v196) || *(a2 + 36) != 1)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
          v197 = *(a2 + 14);
          v129 = __OFSUB__(v197, 1);
          v198 = v197 - 1;
          if (v198 < 0 == v129)
          {
            *(a2 + 14) = v198;
          }

          v144 = *(a2 + 1);
          if (*(a2 + 4) - v144 <= 1)
          {
            goto LABEL_2;
          }

          v199 = *v144;
          if (v199 == 138)
          {
            break;
          }

          if (v199 != 130 || v144[1] != 1)
          {
            goto LABEL_2;
          }
        }

        if (v144[1] != 1)
        {
          continue;
        }

        while (1)
        {
          *(a2 + 1) = v144 + 2;
LABEL_441:
          v200 = *(this + 59);
          v201 = *(this + 58);
          if (v201 >= v200)
          {
            if (v200 == *(this + 60))
            {
              wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 224));
              v200 = *(this + 59);
            }

            *(this + 59) = v200 + 1;
            operator new();
          }

          v202 = *(this + 28);
          *(this + 58) = v201 + 1;
          v203 = *(v202 + 8 * v201);
          v705[0] = 0;
          v204 = *(a2 + 1);
          if (v204 >= *(a2 + 2) || *v204 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v705))
            {
              return 0;
            }
          }

          else
          {
            v705[0] = *v204;
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
          if (!awd::metrics::LocationGPSSessionStatistics_SatelliteCountRangeData::MergePartialFromCodedStream(v203, a2, v207) || *(a2 + 36) != 1)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
          v208 = *(a2 + 14);
          v129 = __OFSUB__(v208, 1);
          v209 = v208 - 1;
          if (v209 < 0 == v129)
          {
            *(a2 + 14) = v209;
          }

          v144 = *(a2 + 1);
          if (*(a2 + 4) - v144 <= 1)
          {
            goto LABEL_2;
          }

          v210 = *v144;
          if (v210 == 146)
          {
            break;
          }

          if (v210 != 138 || v144[1] != 1)
          {
            goto LABEL_2;
          }
        }

        if (v144[1] != 1)
        {
          continue;
        }

        while (1)
        {
          *(a2 + 1) = v144 + 2;
LABEL_462:
          v211 = *(this + 64);
          v212 = *(this + 65);
          if (v211 >= v212)
          {
            if (v212 == *(this + 66))
            {
              wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 248));
              v212 = *(this + 65);
            }

            *(this + 65) = v212 + 1;
            operator new();
          }

          v213 = *(this + 31);
          *(this + 64) = v211 + 1;
          v214 = *(v213 + 8 * v211);
          v705[0] = 0;
          v215 = *(a2 + 1);
          if (v215 >= *(a2 + 2) || *v215 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v705))
            {
              return 0;
            }
          }

          else
          {
            v705[0] = *v215;
            *(a2 + 1) = v215 + 1;
          }

          v216 = *(a2 + 14);
          v217 = *(a2 + 15);
          *(a2 + 14) = v216 + 1;
          if (v216 >= v217)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
          if (!awd::metrics::LocationGPSSessionStatistics_SatelliteCountRangeData::MergePartialFromCodedStream(v214, a2, v218) || *(a2 + 36) != 1)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
          v219 = *(a2 + 14);
          v129 = __OFSUB__(v219, 1);
          v220 = v219 - 1;
          if (v220 < 0 == v129)
          {
            *(a2 + 14) = v220;
          }

          v144 = *(a2 + 1);
          if (*(a2 + 4) - v144 <= 1)
          {
            goto LABEL_2;
          }

          v221 = *v144;
          if (v221 == 154)
          {
            break;
          }

          if (v221 != 146 || v144[1] != 1)
          {
            goto LABEL_2;
          }
        }

        if (v144[1] != 1)
        {
          continue;
        }

        while (1)
        {
          *(a2 + 1) = v144 + 2;
LABEL_483:
          v222 = *(this + 70);
          v223 = *(this + 71);
          if (v222 >= v223)
          {
            if (v223 == *(this + 72))
            {
              wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 272));
              v223 = *(this + 71);
            }

            *(this + 71) = v223 + 1;
            operator new();
          }

          v224 = *(this + 34);
          *(this + 70) = v222 + 1;
          v225 = *(v224 + 8 * v222);
          v705[0] = 0;
          v226 = *(a2 + 1);
          if (v226 >= *(a2 + 2) || *v226 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v705))
            {
              return 0;
            }
          }

          else
          {
            v705[0] = *v226;
            *(a2 + 1) = v226 + 1;
          }

          v227 = *(a2 + 14);
          v228 = *(a2 + 15);
          *(a2 + 14) = v227 + 1;
          if (v227 >= v228)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
          if (!awd::metrics::LocationGPSSessionStatistics_SatelliteCountRangeData::MergePartialFromCodedStream(v225, a2, v229) || *(a2 + 36) != 1)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
          v230 = *(a2 + 14);
          v129 = __OFSUB__(v230, 1);
          v231 = v230 - 1;
          if (v231 < 0 == v129)
          {
            *(a2 + 14) = v231;
          }

          v144 = *(a2 + 1);
          if (*(a2 + 4) - v144 <= 1)
          {
            goto LABEL_2;
          }

          v232 = *v144;
          if (v232 == 162)
          {
            break;
          }

          if (v232 != 154 || v144[1] != 1)
          {
            goto LABEL_2;
          }
        }

        if (v144[1] != 1)
        {
          continue;
        }

        while (1)
        {
          *(a2 + 1) = v144 + 2;
LABEL_504:
          v233 = *(this + 76);
          v234 = *(this + 77);
          if (v233 >= v234)
          {
            if (v234 == *(this + 78))
            {
              wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 296));
              v234 = *(this + 77);
            }

            *(this + 77) = v234 + 1;
            operator new();
          }

          v235 = *(this + 37);
          *(this + 76) = v233 + 1;
          v236 = *(v235 + 8 * v233);
          v705[0] = 0;
          v237 = *(a2 + 1);
          if (v237 >= *(a2 + 2) || *v237 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v705))
            {
              return 0;
            }
          }

          else
          {
            v705[0] = *v237;
            *(a2 + 1) = v237 + 1;
          }

          v238 = *(a2 + 14);
          v239 = *(a2 + 15);
          *(a2 + 14) = v238 + 1;
          if (v238 >= v239)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
          if (!awd::metrics::LocationGPSSessionStatistics_SatelliteCountRangeData::MergePartialFromCodedStream(v236, a2, v240) || *(a2 + 36) != 1)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
          v241 = *(a2 + 14);
          v129 = __OFSUB__(v241, 1);
          v242 = v241 - 1;
          if (v242 < 0 == v129)
          {
            *(a2 + 14) = v242;
          }

          v144 = *(a2 + 1);
          if (*(a2 + 4) - v144 <= 1)
          {
            goto LABEL_2;
          }

          v243 = *v144;
          if (v243 == 170)
          {
            break;
          }

          if (v243 != 162 || v144[1] != 1)
          {
            goto LABEL_2;
          }
        }

        if (v144[1] != 1)
        {
          continue;
        }

        while (1)
        {
          *(a2 + 1) = v144 + 2;
LABEL_525:
          v244 = *(this + 82);
          v245 = *(this + 83);
          if (v244 >= v245)
          {
            if (v245 == *(this + 84))
            {
              wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 320));
              v245 = *(this + 83);
            }

            *(this + 83) = v245 + 1;
            operator new();
          }

          v246 = *(this + 40);
          *(this + 82) = v244 + 1;
          v247 = *(v246 + 8 * v244);
          v705[0] = 0;
          v248 = *(a2 + 1);
          if (v248 >= *(a2 + 2) || *v248 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v705))
            {
              return 0;
            }
          }

          else
          {
            v705[0] = *v248;
            *(a2 + 1) = v248 + 1;
          }

          v249 = *(a2 + 14);
          v250 = *(a2 + 15);
          *(a2 + 14) = v249 + 1;
          if (v249 >= v250)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
          if (!awd::metrics::LocationGPSSessionStatistics_MotionActivityData::MergePartialFromCodedStream(v247, a2, v251) || *(a2 + 36) != 1)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
          v252 = *(a2 + 14);
          v129 = __OFSUB__(v252, 1);
          v253 = v252 - 1;
          if (v253 < 0 == v129)
          {
            *(a2 + 14) = v253;
          }

          v144 = *(a2 + 1);
          if (*(a2 + 4) - v144 <= 1)
          {
            goto LABEL_2;
          }

          v254 = *v144;
          if (v254 == 178)
          {
            break;
          }

          if (v254 != 170 || v144[1] != 1)
          {
            goto LABEL_2;
          }
        }

        if (v144[1] != 1)
        {
          continue;
        }

        while (1)
        {
          *(a2 + 1) = v144 + 2;
LABEL_546:
          v255 = *(this + 88);
          v256 = *(this + 89);
          if (v255 >= v256)
          {
            if (v256 == *(this + 90))
            {
              wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 344));
              v256 = *(this + 89);
            }

            *(this + 89) = v256 + 1;
            operator new();
          }

          v257 = *(this + 43);
          *(this + 88) = v255 + 1;
          v258 = *(v257 + 8 * v255);
          v705[0] = 0;
          v259 = *(a2 + 1);
          if (v259 >= *(a2 + 2) || *v259 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v705))
            {
              return 0;
            }
          }

          else
          {
            v705[0] = *v259;
            *(a2 + 1) = v259 + 1;
          }

          v260 = *(a2 + 14);
          v261 = *(a2 + 15);
          *(a2 + 14) = v260 + 1;
          if (v260 >= v261)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
          if (!awd::metrics::LocationGPSSessionStatistics_MovingStateData::MergePartialFromCodedStream(v258, a2, v262) || *(a2 + 36) != 1)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
          v263 = *(a2 + 14);
          v129 = __OFSUB__(v263, 1);
          v264 = v263 - 1;
          if (v264 < 0 == v129)
          {
            *(a2 + 14) = v264;
          }

          v144 = *(a2 + 1);
          if (*(a2 + 4) - v144 <= 1)
          {
            goto LABEL_2;
          }

          v265 = *v144;
          if (v265 == 186)
          {
            break;
          }

          if (v265 != 178 || v144[1] != 1)
          {
            goto LABEL_2;
          }
        }

        if (v144[1] != 1)
        {
          continue;
        }

        while (1)
        {
          *(a2 + 1) = v144 + 2;
LABEL_567:
          v266 = *(this + 94);
          v267 = *(this + 95);
          if (v266 >= v267)
          {
            if (v267 == *(this + 96))
            {
              wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 368));
              v267 = *(this + 95);
            }

            *(this + 95) = v267 + 1;
            operator new();
          }

          v268 = *(this + 46);
          *(this + 94) = v266 + 1;
          v269 = *(v268 + 8 * v266);
          v705[0] = 0;
          v270 = *(a2 + 1);
          if (v270 >= *(a2 + 2) || *v270 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v705))
            {
              return 0;
            }
          }

          else
          {
            v705[0] = *v270;
            *(a2 + 1) = v270 + 1;
          }

          v271 = *(a2 + 14);
          v272 = *(a2 + 15);
          *(a2 + 14) = v271 + 1;
          if (v271 >= v272)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
          if (!awd::metrics::LocationGPSSessionStatistics_MountedStateData::MergePartialFromCodedStream(v269, a2, v273) || *(a2 + 36) != 1)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
          v274 = *(a2 + 14);
          v129 = __OFSUB__(v274, 1);
          v275 = v274 - 1;
          if (v275 < 0 == v129)
          {
            *(a2 + 14) = v275;
          }

          v144 = *(a2 + 1);
          v33 = *(a2 + 2);
          if (v33 - v144 <= 1)
          {
            goto LABEL_2;
          }

          v276 = *v144;
          if (v276 == 192)
          {
            break;
          }

          if (v276 != 186 || v144[1] != 1)
          {
            goto LABEL_2;
          }
        }

        if (v144[1] != 1)
        {
          continue;
        }

        v90 = (v144 + 2);
        *(a2 + 1) = v90;
LABEL_588:
        if (v90 >= v33 || (v277 = *v90, v277 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 49);
          if (!result)
          {
            return result;
          }

          v278 = *(a2 + 1);
          v33 = *(a2 + 2);
        }

        else
        {
          *(this + 49) = v277;
          v278 = (v90 + 1);
          *(a2 + 1) = v278;
        }

        *(this + 340) |= 0x800000u;
        if (v33 - v278 < 2 || *v278 != 200 || v278[1] != 1)
        {
          continue;
        }

        v61 = (v278 + 2);
        *(a2 + 1) = v61;
LABEL_597:
        if (v61 >= v33 || (v279 = *v61, v279 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 50);
          if (!result)
          {
            return result;
          }

          v280 = *(a2 + 1);
          v33 = *(a2 + 2);
        }

        else
        {
          *(this + 50) = v279;
          v280 = (v61 + 1);
          *(a2 + 1) = v280;
        }

        *(this + 340) |= 0x1000000u;
        if (v33 - v280 < 2 || *v280 != 208 || v280[1] != 1)
        {
          continue;
        }

        v60 = (v280 + 2);
        *(a2 + 1) = v60;
LABEL_606:
        if (v60 >= v33 || (v281 = *v60, v281 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 51);
          if (!result)
          {
            return result;
          }

          v282 = *(a2 + 1);
          v33 = *(a2 + 2);
        }

        else
        {
          *(this + 51) = v281;
          v282 = (v60 + 1);
          *(a2 + 1) = v282;
        }

        *(this + 340) |= 0x2000000u;
        if (v33 - v282 < 2 || *v282 != 216 || v282[1] != 1)
        {
          continue;
        }

        v94 = (v282 + 2);
        *(a2 + 1) = v94;
LABEL_615:
        if (v94 >= v33 || (v283 = *v94, v283 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 52);
          if (!result)
          {
            return result;
          }

          v284 = *(a2 + 1);
          v33 = *(a2 + 2);
        }

        else
        {
          *(this + 52) = v283;
          v284 = (v94 + 1);
          *(a2 + 1) = v284;
        }

        *(this + 340) |= 0x4000000u;
        if (v33 - v284 < 2 || *v284 != 224 || v284[1] != 1)
        {
          continue;
        }

        v43 = (v284 + 2);
        *(a2 + 1) = v43;
LABEL_624:
        if (v43 >= v33 || (v285 = *v43, v285 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 53);
          if (!result)
          {
            return result;
          }

          v286 = *(a2 + 1);
          v33 = *(a2 + 2);
        }

        else
        {
          *(this + 53) = v285;
          v286 = (v43 + 1);
          *(a2 + 1) = v286;
        }

        *(this + 340) |= 0x8000000u;
        if (v33 - v286 < 2 || *v286 != 232 || v286[1] != 1)
        {
          continue;
        }

        v91 = (v286 + 2);
        *(a2 + 1) = v91;
LABEL_633:
        v705[0] = 0;
        if (v91 >= v33 || (v287 = *v91, (v287 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v705);
          if (!result)
          {
            return result;
          }

          v287 = v705[0];
          v288 = *(a2 + 1);
          v33 = *(a2 + 2);
        }

        else
        {
          v288 = (v91 + 1);
          *(a2 + 1) = v288;
        }

        *(this + 576) = v287 != 0;
        *(this + 340) |= 0x10000000u;
        if (v33 - v288 < 2 || *v288 != 240 || v288[1] != 1)
        {
          continue;
        }

        v92 = (v288 + 2);
        *(a2 + 1) = v92;
LABEL_642:
        v705[0] = 0;
        if (v92 >= v33 || (v289 = *v92, (v289 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v705);
          if (!result)
          {
            return result;
          }

          v289 = v705[0];
          v290 = *(a2 + 1);
          v33 = *(a2 + 2);
        }

        else
        {
          v290 = (v92 + 1);
          *(a2 + 1) = v290;
        }

        *(this + 577) = v289 != 0;
        *(this + 340) |= 0x20000000u;
        if (v33 - v290 < 2 || *v290 != 248 || v290[1] != 1)
        {
          continue;
        }

        v79 = (v290 + 2);
        *(a2 + 1) = v79;
LABEL_651:
        if (v79 >= v33 || (v291 = *v79, v291 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 55);
          if (!result)
          {
            return result;
          }

          v292 = *(a2 + 1);
          v33 = *(a2 + 2);
        }

        else
        {
          *(this + 55) = v291;
          v292 = (v79 + 1);
          *(a2 + 1) = v292;
        }

        *(this + 340) |= 0x40000000u;
        if (v33 - v292 < 2 || *v292 != 128 || v292[1] != 2)
        {
          continue;
        }

        v71 = (v292 + 2);
        *(a2 + 1) = v71;
LABEL_660:
        if (v71 >= v33 || (v293 = *v71, v293 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 56);
          if (!result)
          {
            return result;
          }

          v294 = *(a2 + 1);
          v33 = *(a2 + 2);
        }

        else
        {
          *(this + 56) = v293;
          v294 = (v71 + 1);
          *(a2 + 1) = v294;
        }

        *(this + 340) |= 0x80000000;
        if (v33 - v294 < 2 || *v294 != 136 || v294[1] != 2)
        {
          continue;
        }

        v80 = (v294 + 2);
        *(a2 + 1) = v80;
LABEL_669:
        if (v80 >= v33 || (v295 = *v80, v295 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 57);
          if (!result)
          {
            return result;
          }

          v296 = *(a2 + 1);
          v33 = *(a2 + 2);
        }

        else
        {
          *(this + 57) = v295;
          v296 = (v80 + 1);
          *(a2 + 1) = v296;
        }

        *(this + 341) |= 1u;
        if (v33 - v296 < 2 || *v296 != 144 || v296[1] != 2)
        {
          continue;
        }

        v47 = (v296 + 2);
        *(a2 + 1) = v47;
LABEL_678:
        if (v47 >= v33 || (v297 = *v47, v297 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 58);
          if (!result)
          {
            return result;
          }

          v298 = *(a2 + 1);
          v33 = *(a2 + 2);
        }

        else
        {
          *(this + 58) = v297;
          v298 = (v47 + 1);
          *(a2 + 1) = v298;
        }

        *(this + 341) |= 2u;
        if (v33 - v298 < 2 || *v298 != 152 || v298[1] != 2)
        {
          continue;
        }

        v44 = (v298 + 2);
        *(a2 + 1) = v44;
LABEL_687:
        if (v44 >= v33 || (v299 = *v44, v299 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 59);
          if (!result)
          {
            return result;
          }

          v300 = *(a2 + 1);
          v33 = *(a2 + 2);
        }

        else
        {
          *(this + 59) = v299;
          v300 = (v44 + 1);
          *(a2 + 1) = v300;
        }

        *(this + 341) |= 4u;
        if (v33 - v300 < 2 || *v300 != 160 || v300[1] != 2)
        {
          continue;
        }

        v40 = (v300 + 2);
        *(a2 + 1) = v40;
LABEL_696:
        if (v40 >= v33 || (v301 = *v40, v301 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 60);
          if (!result)
          {
            return result;
          }

          v302 = *(a2 + 1);
          v33 = *(a2 + 2);
        }

        else
        {
          *(this + 60) = v301;
          v302 = (v40 + 1);
          *(a2 + 1) = v302;
        }

        *(this + 341) |= 8u;
        if (v33 - v302 < 2 || *v302 != 168 || v302[1] != 2)
        {
          continue;
        }

        v41 = (v302 + 2);
        *(a2 + 1) = v41;
LABEL_705:
        if (v41 >= v33 || (v303 = *v41, v303 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 61);
          if (!result)
          {
            return result;
          }

          v304 = *(a2 + 1);
          v33 = *(a2 + 2);
        }

        else
        {
          *(this + 61) = v303;
          v304 = (v41 + 1);
          *(a2 + 1) = v304;
        }

        *(this + 341) |= 0x10u;
        if (v33 - v304 < 2 || *v304 != 176 || v304[1] != 2)
        {
          continue;
        }

        v37 = (v304 + 2);
        *(a2 + 1) = v37;
LABEL_714:
        if (v37 >= v33 || (v305 = *v37, v305 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 62);
          if (!result)
          {
            return result;
          }

          v306 = *(a2 + 1);
          v33 = *(a2 + 2);
        }

        else
        {
          *(this + 62) = v305;
          v306 = (v37 + 1);
          *(a2 + 1) = v306;
        }

        *(this + 341) |= 0x20u;
        if (v33 - v306 < 2 || *v306 != 184 || v306[1] != 2)
        {
          continue;
        }

        v93 = (v306 + 2);
        *(a2 + 1) = v93;
LABEL_723:
        if (v93 >= v33 || (v307 = *v93, v307 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 63);
          if (!result)
          {
            return result;
          }

          v308 = *(a2 + 1);
          v33 = *(a2 + 2);
        }

        else
        {
          *(this + 63) = v307;
          v308 = (v93 + 1);
          *(a2 + 1) = v308;
        }

        *(this + 341) |= 0x40u;
        if (v33 - v308 < 2 || *v308 != 192 || v308[1] != 2)
        {
          continue;
        }

        v85 = (v308 + 2);
        *(a2 + 1) = v85;
LABEL_732:
        if (v85 >= v33 || (v309 = *v85, (v309 & 0x8000000000000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, v704);
          if (!result)
          {
            return result;
          }

          v310 = *(a2 + 1);
          v33 = *(a2 + 2);
        }

        else
        {
          *v704 = v309;
          v310 = (v85 + 1);
          *(a2 + 1) = v310;
        }

        *(this + 341) |= 0x80u;
        if (v33 - v310 < 2 || *v310 != 200 || v310[1] != 2)
        {
          continue;
        }

        v57 = (v310 + 2);
        *(a2 + 1) = v57;
LABEL_741:
        if (v57 >= v33 || (v311 = *v57, (v311 & 0x8000000000000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, v703);
          if (!result)
          {
            return result;
          }

          v312 = *(a2 + 1);
          v33 = *(a2 + 2);
        }

        else
        {
          *v703 = v311;
          v312 = (v57 + 1);
          *(a2 + 1) = v312;
        }

        *(this + 341) |= 0x100u;
        if (v33 - v312 < 2 || *v312 != 208 || v312[1] != 2)
        {
          continue;
        }

        v73 = (v312 + 2);
        *(a2 + 1) = v73;
LABEL_750:
        if (v73 >= v33 || (v313 = *v73, (v313 & 0x8000000000000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, v702);
          if (!result)
          {
            return result;
          }

          v314 = *(a2 + 1);
          v33 = *(a2 + 2);
        }

        else
        {
          *v702 = v313;
          v314 = (v73 + 1);
          *(a2 + 1) = v314;
        }

        *(this + 341) |= 0x200u;
        if (v33 - v314 < 2 || *v314 != 216 || v314[1] != 2)
        {
          continue;
        }

        v88 = (v314 + 2);
        *(a2 + 1) = v88;
LABEL_759:
        if (v88 >= v33 || (v315 = *v88, (v315 & 0x8000000000000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, v701);
          if (!result)
          {
            return result;
          }

          v316 = *(a2 + 1);
          v33 = *(a2 + 2);
        }

        else
        {
          *v701 = v315;
          v316 = (v88 + 1);
          *(a2 + 1) = v316;
        }

        *(this + 341) |= 0x400u;
        if (v33 - v316 < 2 || *v316 != 224 || v316[1] != 2)
        {
          continue;
        }

        v34 = (v316 + 2);
        *(a2 + 1) = v34;
LABEL_768:
        if (v34 >= v33 || (v317 = *v34, (v317 & 0x8000000000000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, v700);
          if (!result)
          {
            return result;
          }

          v318 = *(a2 + 1);
          v33 = *(a2 + 2);
        }

        else
        {
          *v700 = v317;
          v318 = (v34 + 1);
          *(a2 + 1) = v318;
        }

        *(this + 341) |= 0x800u;
        if (v33 - v318 < 2 || *v318 != 232 || v318[1] != 2)
        {
          continue;
        }

        v46 = (v318 + 2);
        *(a2 + 1) = v46;
LABEL_777:
        if (v46 >= v33 || (v319 = *v46, (v319 & 0x8000000000000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, v699);
          if (!result)
          {
            return result;
          }

          v320 = *(a2 + 1);
        }

        else
        {
          *v699 = v319;
          v320 = (v46 + 1);
          *(a2 + 1) = v320;
        }

        *(this + 341) |= 0x1000u;
        v30 = *(a2 + 2);
        if (v30 - v320 < 2 || *v320 != 240 || v320[1] != 2)
        {
          continue;
        }

        v81 = (v320 + 2);
        *(a2 + 1) = v81;
LABEL_786:
        if (v81 >= v30 || (v321 = *v81, (v321 & 0x8000000000000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, v698);
          if (!result)
          {
            return result;
          }

          v322 = *(a2 + 1);
          v30 = *(a2 + 2);
        }

        else
        {
          *v698 = v321;
          v322 = (v81 + 1);
          *(a2 + 1) = v322;
        }

        *(this + 341) |= 0x2000u;
        if (v30 - v322 < 2 || *v322 != 248 || v322[1] != 2)
        {
          continue;
        }

        v99 = (v322 + 2);
        *(a2 + 1) = v99;
LABEL_795:
        if (v99 >= v30 || (v323 = *v99, (v323 & 0x8000000000000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, v697);
          if (!result)
          {
            return result;
          }

          v324 = *(a2 + 1);
          v30 = *(a2 + 2);
        }

        else
        {
          *v697 = v323;
          v324 = (v99 + 1);
          *(a2 + 1) = v324;
        }

        *(this + 341) |= 0x4000u;
        if (v30 - v324 < 2 || *v324 != 128 || v324[1] != 3)
        {
          continue;
        }

        v38 = (v324 + 2);
        *(a2 + 1) = v38;
LABEL_804:
        v705[0] = 0;
        if (v38 >= v30 || (v325 = *v38, (v325 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v705);
          if (!result)
          {
            return result;
          }

          v325 = v705[0];
          v326 = *(a2 + 1);
          v30 = *(a2 + 2);
        }

        else
        {
          v326 = (v38 + 1);
          *(a2 + 1) = v326;
        }

        *(this + 109) = v325;
        *(this + 341) |= 0x8000u;
        if (v30 - v326 < 2 || *v326 != 136 || v326[1] != 3)
        {
          continue;
        }

        v48 = (v326 + 2);
        *(a2 + 1) = v48;
LABEL_813:
        v705[0] = 0;
        if (v48 >= v30 || (v327 = *v48, (v327 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v705);
          if (!result)
          {
            return result;
          }

          v327 = v705[0];
          v328 = *(a2 + 1);
          v30 = *(a2 + 2);
        }

        else
        {
          v328 = (v48 + 1);
          *(a2 + 1) = v328;
        }

        *(this + 145) = v327;
        *(this + 341) |= 0x10000u;
        if (v30 - v328 < 2 || *v328 != 144 || v328[1] != 3)
        {
          continue;
        }

        v54 = (v328 + 2);
        *(a2 + 1) = v54;
LABEL_822:
        v705[0] = 0;
        if (v54 >= v30 || (v329 = *v54, (v329 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v705);
          if (!result)
          {
            return result;
          }

          v329 = v705[0];
          v330 = *(a2 + 1);
          v30 = *(a2 + 2);
        }

        else
        {
          v330 = (v54 + 1);
          *(a2 + 1) = v330;
        }

        *(this + 146) = v329;
        *(this + 341) |= 0x20000u;
        if (v30 - v330 < 2 || *v330 != 152 || v330[1] != 3)
        {
          continue;
        }

        v31 = (v330 + 2);
        *(a2 + 1) = v31;
LABEL_831:
        v705[0] = 0;
        if (v31 >= v30 || (v331 = *v31, (v331 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v705);
          if (!result)
          {
            return result;
          }

          v331 = v705[0];
          v332 = *(a2 + 1);
          v30 = *(a2 + 2);
        }

        else
        {
          v332 = (v31 + 1);
          *(a2 + 1) = v332;
        }

        *(this + 147) = v331;
        *(this + 341) |= 0x40000u;
        if (v30 - v332 < 2 || *v332 != 160 || v332[1] != 3)
        {
          continue;
        }

        v103 = (v332 + 2);
        *(a2 + 1) = v103;
LABEL_840:
        v705[0] = 0;
        if (v103 >= v30 || (v333 = *v103, (v333 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v705);
          if (!result)
          {
            return result;
          }

          v333 = v705[0];
        }

        else
        {
          *(a2 + 1) = v103 + 1;
        }

        if (v333 <= 0xC)
        {
          *(this + 341) |= 0x80000u;
          *(this + 148) = v333;
        }

        v334 = *(a2 + 1);
        if (*(a2 + 4) - v334 < 2 || *v334 != 173 || v334[1] != 3)
        {
          continue;
        }

        *(a2 + 1) = v334 + 2;
LABEL_851:
        v705[0] = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a2, v705) & 1) == 0)
        {
          return 0;
        }

        *(this + 149) = v705[0];
        *(this + 341) |= 0x100000u;
        v335 = *(a2 + 1);
        if (*(a2 + 4) - v335 < 2 || *v335 != 181 || v335[1] != 3)
        {
          continue;
        }

        *(a2 + 1) = v335 + 2;
LABEL_856:
        v705[0] = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a2, v705) & 1) == 0)
        {
          return 0;
        }

        *(this + 150) = v705[0];
        *(this + 341) |= 0x200000u;
        v336 = *(a2 + 1);
        v95 = *(a2 + 2);
        if (v95 - v336 < 2 || *v336 != 184 || v336[1] != 3)
        {
          continue;
        }

        v96 = (v336 + 2);
        *(a2 + 1) = v96;
LABEL_861:
        if (v96 >= v95 || (v337 = *v96, (v337 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v675);
          if (!result)
          {
            return result;
          }

          v338 = *(a2 + 1);
          v95 = *(a2 + 2);
        }

        else
        {
          *v675 = v337;
          v338 = (v96 + 1);
          *(a2 + 1) = v338;
        }

        *(this + 341) |= 0x400000u;
        if (v95 - v338 < 2 || *v338 != 192 || v338[1] != 3)
        {
          continue;
        }

        v98 = (v338 + 2);
        *(a2 + 1) = v98;
LABEL_870:
        v705[0] = 0;
        if (v98 >= v95 || (v339 = *v98, (v339 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v705);
          if (!result)
          {
            return result;
          }

          v339 = v705[0];
          v340 = *(a2 + 1);
          v95 = *(a2 + 2);
        }

        else
        {
          v340 = (v98 + 1);
          *(a2 + 1) = v340;
        }

        *(this + 578) = v339 != 0;
        *(this + 341) |= 0x800000u;
        if (v95 - v340 < 2 || *v340 != 202 || v340[1] != 3)
        {
          continue;
        }

        while (1)
        {
          *(a2 + 1) = v340 + 2;
LABEL_879:
          v341 = *(this + 154);
          v342 = *(this + 155);
          if (v341 >= v342)
          {
            if (v342 == *(this + 156))
            {
              wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 608));
              v342 = *(this + 155);
            }

            *(this + 155) = v342 + 1;
            operator new();
          }

          v343 = *(this + 76);
          *(this + 154) = v341 + 1;
          v344 = *(v343 + 8 * v341);
          v705[0] = 0;
          v345 = *(a2 + 1);
          if (v345 >= *(a2 + 2) || *v345 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v705))
            {
              return 0;
            }
          }

          else
          {
            v705[0] = *v345;
            *(a2 + 1) = v345 + 1;
          }

          v346 = *(a2 + 14);
          v347 = *(a2 + 15);
          *(a2 + 14) = v346 + 1;
          if (v346 >= v347)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
          if (!awd::metrics::LocationGPSSessionStatistics_ChecksumData::MergePartialFromCodedStream(v344, a2, v348) || *(a2 + 36) != 1)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
          v349 = *(a2 + 14);
          v129 = __OFSUB__(v349, 1);
          v350 = v349 - 1;
          if (v350 < 0 == v129)
          {
            *(a2 + 14) = v350;
          }

          v340 = *(a2 + 1);
          v86 = *(a2 + 2);
          if (v86 - v340 <= 1)
          {
            goto LABEL_2;
          }

          v351 = *v340;
          if (v351 == 208)
          {
            break;
          }

          if (v351 != 202 || v340[1] != 3)
          {
            goto LABEL_2;
          }
        }

        if (v340[1] != 3)
        {
          continue;
        }

        v87 = (v340 + 2);
        *(a2 + 1) = v87;
LABEL_900:
        if (v87 >= v86 || (v352 = *v87, (v352 & 0x8000000000000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, v669);
          if (!result)
          {
            return result;
          }

          v353 = *(a2 + 1);
          v86 = *(a2 + 2);
        }

        else
        {
          *v669 = v352;
          v353 = (v87 + 1);
          *(a2 + 1) = v353;
        }

        *(this + 341) |= 0x2000000u;
        if (v86 - v353 < 2 || *v353 != 218 || v353[1] != 3)
        {
          continue;
        }

        while (1)
        {
          *(a2 + 1) = v353 + 2;
LABEL_909:
          v354 = *(this + 162);
          v355 = *(this + 163);
          if (v354 >= v355)
          {
            if (v355 == *(this + 164))
            {
              wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 640));
              v355 = *(this + 163);
            }

            *(this + 163) = v355 + 1;
            operator new();
          }

          v356 = *(this + 80);
          *(this + 162) = v354 + 1;
          v357 = *(v356 + 8 * v354);
          v705[0] = 0;
          v358 = *(a2 + 1);
          if (v358 >= *(a2 + 2) || *v358 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v705))
            {
              return 0;
            }
          }

          else
          {
            v705[0] = *v358;
            *(a2 + 1) = v358 + 1;
          }

          v359 = *(a2 + 14);
          v360 = *(a2 + 15);
          *(a2 + 14) = v359 + 1;
          if (v359 >= v360)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
          if (!awd::metrics::LocationGPSSessionStatistics_PowerStateData::MergePartialFromCodedStream(v357, a2, v361) || *(a2 + 36) != 1)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
          v362 = *(a2 + 14);
          v129 = __OFSUB__(v362, 1);
          v363 = v362 - 1;
          if (v363 < 0 == v129)
          {
            *(a2 + 14) = v363;
          }

          v353 = *(a2 + 1);
          v58 = *(a2 + 2);
          if (v58 - v353 <= 1)
          {
            goto LABEL_2;
          }

          v364 = *v353;
          if (v364 == 224)
          {
            break;
          }

          if (v364 != 218 || v353[1] != 3)
          {
            goto LABEL_2;
          }
        }

        if (v353[1] != 3)
        {
          continue;
        }

        v89 = (v353 + 2);
        *(a2 + 1) = v89;
LABEL_930:
        if (v89 >= v58 || (v365 = *v89, (v365 & 0x8000000000000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, v668);
          if (!result)
          {
            return result;
          }

          v366 = *(a2 + 1);
          v58 = *(a2 + 2);
        }

        else
        {
          *v668 = v365;
          v366 = (v89 + 1);
          *(a2 + 1) = v366;
        }

        *(this + 341) |= 0x8000000u;
        if (v58 - v366 < 2 || *v366 != 232 || v366[1] != 3)
        {
          continue;
        }

        v59 = (v366 + 2);
        *(a2 + 1) = v59;
LABEL_939:
        if (v59 >= v58 || (v367 = *v59, (v367 & 0x8000000000000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, v673);
          if (!result)
          {
            return result;
          }

          v368 = *(a2 + 1);
          v58 = *(a2 + 2);
        }

        else
        {
          *v673 = v367;
          v368 = (v59 + 1);
          *(a2 + 1) = v368;
        }

        *(this + 341) |= 0x10000000u;
        if (v58 - v368 < 2 || *v368 != 240 || v368[1] != 3)
        {
          continue;
        }

        v75 = (v368 + 2);
        *(a2 + 1) = v75;
LABEL_948:
        if (v75 >= v58 || (v369 = *v75, (v369 & 0x8000000000000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, v678);
          if (!result)
          {
            return result;
          }

          v370 = *(a2 + 1);
          v58 = *(a2 + 2);
        }

        else
        {
          *v678 = v369;
          v370 = (v75 + 1);
          *(a2 + 1) = v370;
        }

        *(this + 341) |= 0x20000000u;
        if (v58 - v370 < 2 || *v370 != 250 || v370[1] != 3)
        {
          continue;
        }

        while (1)
        {
          *(a2 + 1) = v370 + 2;
LABEL_957:
          v371 = *(this + 174);
          v372 = *(this + 175);
          if (v371 >= v372)
          {
            if (v372 == *(this + 176))
            {
              wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 688));
              v372 = *(this + 175);
            }

            *(this + 175) = v372 + 1;
            operator new();
          }

          v373 = *(this + 86);
          *(this + 174) = v371 + 1;
          v374 = *(v373 + 8 * v371);
          v705[0] = 0;
          v375 = *(a2 + 1);
          if (v375 >= *(a2 + 2) || *v375 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v705))
            {
              return 0;
            }
          }

          else
          {
            v705[0] = *v375;
            *(a2 + 1) = v375 + 1;
          }

          v376 = *(a2 + 14);
          v377 = *(a2 + 15);
          *(a2 + 14) = v376 + 1;
          if (v376 >= v377)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
          if (!awd::metrics::LocationGPSSessionStatistics_DeviceOrientationData::MergePartialFromCodedStream(v374, a2, v378) || *(a2 + 36) != 1)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
          v379 = *(a2 + 14);
          v129 = __OFSUB__(v379, 1);
          v380 = v379 - 1;
          if (v380 < 0 == v129)
          {
            *(a2 + 14) = v380;
          }

          v370 = *(a2 + 1);
          v63 = *(a2 + 2);
          if (v63 - v370 <= 1)
          {
            goto LABEL_2;
          }

          v381 = *v370;
          if (v381 == 128)
          {
            break;
          }

          if (v381 != 250 || v370[1] != 3)
          {
            goto LABEL_2;
          }
        }

        if (v370[1] != 4)
        {
          continue;
        }

        v64 = (v370 + 2);
        *(a2 + 1) = v64;
LABEL_978:
        v705[0] = 0;
        if (v64 >= v63 || (v382 = *v64, (v382 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v705);
          if (!result)
          {
            return result;
          }

          v382 = v705[0];
        }

        else
        {
          *(a2 + 1) = v64 + 1;
        }

        if (v382 <= 0xD)
        {
          *(this + 341) |= 0x80000000;
          *(this + 202) = v382;
        }

        v383 = *(a2 + 1);
        if (*(a2 + 4) - v383 < 2 || *v383 != 138 || v383[1] != 4)
        {
          continue;
        }

        while (1)
        {
          *(a2 + 1) = v383 + 2;
LABEL_989:
          v384 = *(this + 180);
          v385 = *(this + 181);
          if (v384 >= v385)
          {
            if (v385 == *(this + 182))
            {
              wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 712));
              v385 = *(this + 181);
            }

            *(this + 181) = v385 + 1;
            operator new();
          }

          v386 = *(this + 89);
          *(this + 180) = v384 + 1;
          v387 = *(v386 + 8 * v384);
          v705[0] = 0;
          v388 = *(a2 + 1);
          if (v388 >= *(a2 + 2) || *v388 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v705))
            {
              return 0;
            }
          }

          else
          {
            v705[0] = *v388;
            *(a2 + 1) = v388 + 1;
          }

          v389 = *(a2 + 14);
          v390 = *(a2 + 15);
          *(a2 + 14) = v389 + 1;
          if (v389 >= v390)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
          if (!awd::metrics::LocationGPSSessionStatistics_PowerMeasurementData::MergePartialFromCodedStream(v387, a2, v391) || *(a2 + 36) != 1)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
          v392 = *(a2 + 14);
          v129 = __OFSUB__(v392, 1);
          v393 = v392 - 1;
          if (v393 < 0 == v129)
          {
            *(a2 + 14) = v393;
          }

          v383 = *(a2 + 1);
          v23 = *(a2 + 2);
          if (v23 - v383 <= 1)
          {
            goto LABEL_2;
          }

          v394 = *v383;
          if (v394 == 144)
          {
            break;
          }

          if (v394 != 138 || v383[1] != 4)
          {
            goto LABEL_2;
          }
        }

        if (v383[1] != 4)
        {
          continue;
        }

        v76 = (v383 + 2);
        *(a2 + 1) = v76;
LABEL_1010:
        if (v76 >= v23 || (v395 = *v76, (v395 & 0x8000000000000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, v667);
          if (!result)
          {
            return result;
          }

          v396 = *(a2 + 1);
          v23 = *(a2 + 2);
        }

        else
        {
          *v667 = v395;
          v396 = (v76 + 1);
          *(a2 + 1) = v396;
        }

        *(this + 342) |= 2u;
        if (v23 - v396 < 2 || *v396 != 152 || v396[1] != 4)
        {
          continue;
        }

        v35 = (v396 + 2);
        *(a2 + 1) = v35;
LABEL_1019:
        if (v35 >= v23 || (v397 = *v35, (v397 & 0x8000000000000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, v672);
          if (!result)
          {
            return result;
          }

          v398 = *(a2 + 1);
          v23 = *(a2 + 2);
        }

        else
        {
          *v672 = v397;
          v398 = (v35 + 1);
          *(a2 + 1) = v398;
        }

        *(this + 342) |= 4u;
        if (v23 - v398 < 2 || *v398 != 160 || v398[1] != 4)
        {
          continue;
        }

        v45 = (v398 + 2);
        *(a2 + 1) = v45;
LABEL_1028:
        if (v45 >= v23 || (v399 = *v45, (v399 & 0x8000000000000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, v677);
          if (!result)
          {
            return result;
          }

          v400 = *(a2 + 1);
          v23 = *(a2 + 2);
        }

        else
        {
          *v677 = v399;
          v400 = (v45 + 1);
          *(a2 + 1) = v400;
        }

        *(this + 342) |= 8u;
        if (v23 - v400 < 2 || *v400 != 168 || v400[1] != 4)
        {
          continue;
        }

        v106 = (v400 + 2);
        *(a2 + 1) = v106;
LABEL_1037:
        if (v106 >= v23 || (v401 = *v106, (v401 & 0x8000000000000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, v680);
          if (!result)
          {
            return result;
          }

          v402 = *(a2 + 1);
          v23 = *(a2 + 2);
        }

        else
        {
          *v680 = v401;
          v402 = (v106 + 1);
          *(a2 + 1) = v402;
        }

        *(this + 342) |= 0x10u;
        if (v23 - v402 < 2 || *v402 != 176 || v402[1] != 4)
        {
          continue;
        }

        v42 = (v402 + 2);
        *(a2 + 1) = v42;
LABEL_1046:
        if (v42 >= v23 || (v403 = *v42, (v403 & 0x8000000000000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, v682);
          if (!result)
          {
            return result;
          }

          v404 = *(a2 + 1);
          v23 = *(a2 + 2);
        }

        else
        {
          *v682 = v403;
          v404 = (v42 + 1);
          *(a2 + 1) = v404;
        }

        *(this + 342) |= 0x20u;
        if (v23 - v404 < 2 || *v404 != 184 || v404[1] != 4)
        {
          continue;
        }

        v27 = (v404 + 2);
        *(a2 + 1) = v27;
LABEL_1055:
        if (v27 >= v23 || (v405 = *v27, (v405 & 0x8000000000000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, v684);
          if (!result)
          {
            return result;
          }

          v406 = *(a2 + 1);
          v23 = *(a2 + 2);
        }

        else
        {
          *v684 = v405;
          v406 = (v27 + 1);
          *(a2 + 1) = v406;
        }

        *(this + 342) |= 0x40u;
        if (v23 - v406 < 2 || *v406 != 192 || v406[1] != 4)
        {
          continue;
        }

        v36 = (v406 + 2);
        *(a2 + 1) = v36;
LABEL_1064:
        if (v36 >= v23 || (v407 = *v36, (v407 & 0x8000000000000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, v688);
          if (!result)
          {
            return result;
          }

          v408 = *(a2 + 1);
          v23 = *(a2 + 2);
        }

        else
        {
          *v688 = v407;
          v408 = (v36 + 1);
          *(a2 + 1) = v408;
        }

        *(this + 342) |= 0x80u;
        if (v23 - v408 < 2 || *v408 != 200 || v408[1] != 4)
        {
          continue;
        }

        v97 = (v408 + 2);
        *(a2 + 1) = v97;
LABEL_1073:
        if (v97 >= v23 || (v409 = *v97, (v409 & 0x8000000000000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, v689);
          if (!result)
          {
            return result;
          }

          v410 = *(a2 + 1);
          v23 = *(a2 + 2);
        }

        else
        {
          *v689 = v409;
          v410 = (v97 + 1);
          *(a2 + 1) = v410;
        }

        *(this + 342) |= 0x100u;
        if (v23 - v410 < 2 || *v410 != 208 || v410[1] != 4)
        {
          continue;
        }

        v100 = (v410 + 2);
        *(a2 + 1) = v100;
LABEL_1082:
        if (v100 >= v23 || (v411 = *v100, (v411 & 0x8000000000000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, v696);
          if (!result)
          {
            return result;
          }

          v412 = *(a2 + 1);
          v23 = *(a2 + 2);
        }

        else
        {
          *v696 = v411;
          v412 = (v100 + 1);
          *(a2 + 1) = v412;
        }

        *(this + 342) |= 0x200u;
        if (v23 - v412 < 2 || *v412 != 216 || v412[1] != 4)
        {
          continue;
        }

        v102 = (v412 + 2);
        *(a2 + 1) = v102;
LABEL_1091:
        if (v102 >= v23 || (v413 = *v102, (v413 & 0x8000000000000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, v695);
          if (!result)
          {
            return result;
          }

          v414 = *(a2 + 1);
          v23 = *(a2 + 2);
        }

        else
        {
          *v695 = v413;
          v414 = (v102 + 1);
          *(a2 + 1) = v414;
        }

        *(this + 342) |= 0x400u;
        if (v23 - v414 < 2 || *v414 != 224 || v414[1] != 4)
        {
          continue;
        }

        v39 = (v414 + 2);
        *(a2 + 1) = v39;
LABEL_1100:
        if (v39 >= v23 || (v415 = *v39, (v415 & 0x8000000000000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, v694);
          if (!result)
          {
            return result;
          }

          v416 = *(a2 + 1);
          v23 = *(a2 + 2);
        }

        else
        {
          *v694 = v415;
          v416 = (v39 + 1);
          *(a2 + 1) = v416;
        }

        *(this + 342) |= 0x800u;
        if (v23 - v416 < 2 || *v416 != 232 || v416[1] != 4)
        {
          continue;
        }

        v74 = (v416 + 2);
        *(a2 + 1) = v74;
LABEL_1109:
        if (v74 >= v23 || (v417 = *v74, (v417 & 0x8000000000000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, v693);
          if (!result)
          {
            return result;
          }

          v418 = *(a2 + 1);
          v23 = *(a2 + 2);
        }

        else
        {
          *v693 = v417;
          v418 = (v74 + 1);
          *(a2 + 1) = v418;
        }

        *(this + 342) |= 0x1000u;
        if (v23 - v418 < 2 || *v418 != 240 || v418[1] != 4)
        {
          continue;
        }

        v28 = (v418 + 2);
        *(a2 + 1) = v28;
LABEL_1118:
        if (v28 >= v23 || (v419 = *v28, (v419 & 0x8000000000000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, v692);
          if (!result)
          {
            return result;
          }

          v420 = *(a2 + 1);
          v23 = *(a2 + 2);
        }

        else
        {
          *v692 = v419;
          v420 = (v28 + 1);
          *(a2 + 1) = v420;
        }

        *(this + 342) |= 0x2000u;
        if (v23 - v420 < 2 || *v420 != 248 || v420[1] != 4)
        {
          continue;
        }

        v104 = (v420 + 2);
        *(a2 + 1) = v104;
LABEL_1127:
        if (v104 >= v23 || (v421 = *v104, (v421 & 0x8000000000000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, v691);
          if (!result)
          {
            return result;
          }

          v422 = *(a2 + 1);
          v23 = *(a2 + 2);
        }

        else
        {
          *v691 = v421;
          v422 = (v104 + 1);
          *(a2 + 1) = v422;
        }

        *(this + 342) |= 0x4000u;
        if (v23 - v422 < 2 || *v422 != 128 || v422[1] != 5)
        {
          continue;
        }

        v24 = (v422 + 2);
        *(a2 + 1) = v24;
LABEL_1136:
        v705[0] = 0;
        if (v24 >= v23 || (v423 = *v24, (v423 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v705);
          if (!result)
          {
            return result;
          }

          v423 = v705[0];
          v424 = *(a2 + 1);
          v23 = *(a2 + 2);
        }

        else
        {
          v424 = (v24 + 1);
          *(a2 + 1) = v424;
        }

        *(this + 579) = v423 != 0;
        *(this + 342) |= 0x8000u;
        if (v23 - v424 < 2 || *v424 != 138 || v424[1] != 5)
        {
          continue;
        }

        while (1)
        {
          *(a2 + 1) = v424 + 2;
LABEL_1145:
          v425 = *(this + 216);
          v426 = *(this + 217);
          if (v425 >= v426)
          {
            if (v426 == *(this + 218))
            {
              wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 856));
              v426 = *(this + 217);
            }

            *(this + 217) = v426 + 1;
            operator new();
          }

          v427 = *(this + 107);
          *(this + 216) = v425 + 1;
          v428 = *(v427 + 8 * v425);
          v705[0] = 0;
          v429 = *(a2 + 1);
          if (v429 >= *(a2 + 2) || *v429 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v705))
            {
              return 0;
            }
          }

          else
          {
            v705[0] = *v429;
            *(a2 + 1) = v429 + 1;
          }

          v430 = *(a2 + 14);
          v431 = *(a2 + 15);
          *(a2 + 14) = v430 + 1;
          if (v430 >= v431)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
          if (!awd::metrics::LocationGPSSessionStatistics_ChecksumData::MergePartialFromCodedStream(v428, a2, v432) || *(a2 + 36) != 1)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
          v433 = *(a2 + 14);
          v129 = __OFSUB__(v433, 1);
          v434 = v433 - 1;
          if (v434 < 0 == v129)
          {
            *(a2 + 14) = v434;
          }

          v424 = *(a2 + 1);
          v18 = *(a2 + 2);
          if (v18 - v424 <= 1)
          {
            goto LABEL_2;
          }

          v435 = *v424;
          if (v435 == 144)
          {
            break;
          }

          if (v435 != 138 || v424[1] != 5)
          {
            goto LABEL_2;
          }
        }

        if (v424[1] != 5)
        {
          continue;
        }

        v53 = (v424 + 2);
        *(a2 + 1) = v53;
LABEL_1166:
        if (v53 >= v18 || (v436 = *v53, (v436 & 0x8000000000000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, v670);
          if (!result)
          {
            return result;
          }

          v437 = *(a2 + 1);
          v18 = *(a2 + 2);
        }

        else
        {
          *v670 = v436;
          v437 = (v53 + 1);
          *(a2 + 1) = v437;
        }

        *(this + 342) |= 0x20000u;
        if (v18 - v437 < 2 || *v437 != 152 || v437[1] != 5)
        {
          continue;
        }

        v51 = (v437 + 2);
        *(a2 + 1) = v51;
LABEL_1175:
        if (v51 >= v18 || (v438 = *v51, (v438 & 0x8000000000000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, v674);
          if (!result)
          {
            return result;
          }

          v439 = *(a2 + 1);
          v18 = *(a2 + 2);
        }

        else
        {
          *v674 = v438;
          v439 = (v51 + 1);
          *(a2 + 1) = v439;
        }

        *(this + 342) |= 0x40000u;
        if (v18 - v439 < 2 || *v439 != 160 || v439[1] != 5)
        {
          continue;
        }

        v20 = (v439 + 2);
        *(a2 + 1) = v20;
LABEL_1184:
        v705[0] = 0;
        if (v20 >= v18 || (v440 = *v20, (v440 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v705);
          if (!result)
          {
            return result;
          }

          v440 = v705[0];
          v441 = *(a2 + 1);
          v18 = *(a2 + 2);
        }

        else
        {
          v441 = (v20 + 1);
          *(a2 + 1) = v441;
        }

        *(this + 1044) = v440 != 0;
        *(this + 342) |= 0x80000u;
        if (v18 - v441 < 2 || *v441 != 168 || v441[1] != 5)
        {
          continue;
        }

        v19 = (v441 + 2);
        *(a2 + 1) = v19;
LABEL_1193:
        v705[0] = 0;
        if (v19 >= v18 || (v442 = *v19, (v442 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v705);
          if (!result)
          {
            return result;
          }

          v442 = v705[0];
          v443 = *(a2 + 1);
          v18 = *(a2 + 2);
        }

        else
        {
          v443 = (v19 + 1);
          *(a2 + 1) = v443;
        }

        *(this + 203) = v442;
        *(this + 342) |= 0x100000u;
        if (v18 - v443 < 2 || *v443 != 176 || v443[1] != 5)
        {
          continue;
        }

        v82 = (v443 + 2);
        *(a2 + 1) = v82;
LABEL_1202:
        v705[0] = 0;
        if (v82 >= v18 || (v444 = *v82, (v444 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v705);
          if (!result)
          {
            return result;
          }

          v444 = v705[0];
          v445 = *(a2 + 1);
          v18 = *(a2 + 2);
        }

        else
        {
          v445 = (v82 + 1);
          *(a2 + 1) = v445;
        }

        *(this + 224) = v444;
        *(this + 342) |= 0x200000u;
        if (v18 - v445 < 2 || *v445 != 184 || v445[1] != 5)
        {
          continue;
        }

        v83 = (v445 + 2);
        *(a2 + 1) = v83;
LABEL_1211:
        v705[0] = 0;
        if (v83 >= v18 || (v446 = *v83, (v446 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v705);
          if (!result)
          {
            return result;
          }

          v446 = v705[0];
          v447 = *(a2 + 1);
          v18 = *(a2 + 2);
        }

        else
        {
          v447 = (v83 + 1);
          *(a2 + 1) = v447;
        }

        *(this + 225) = v446;
        *(this + 342) |= 0x400000u;
        if (v18 - v447 < 2 || *v447 != 192 || v447[1] != 5)
        {
          continue;
        }

        v101 = (v447 + 2);
        *(a2 + 1) = v101;
LABEL_1220:
        if (v101 >= v18 || (v448 = *v101, (v448 & 0x8000000000000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, v687);
          if (!result)
          {
            return result;
          }

          v449 = *(a2 + 1);
          v18 = *(a2 + 2);
        }

        else
        {
          *v687 = v448;
          v449 = (v101 + 1);
          *(a2 + 1) = v449;
        }

        v32 = *(this + 342) | 0x800000;
        *(this + 342) = v32;
        if (v18 - v449 < 2 || *v449 != 202 || v449[1] != 5)
        {
          continue;
        }

        *(a2 + 1) = v449 + 2;
LABEL_1229:
        *(this + 342) = v32 | 0x1000000;
        v450 = *(this + 114);
        if (!v450)
        {
          operator new();
        }

        v705[0] = 0;
        v451 = *(a2 + 1);
        if (v451 >= *(a2 + 2) || *v451 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v705))
          {
            return 0;
          }
        }

        else
        {
          v705[0] = *v451;
          *(a2 + 1) = v451 + 1;
        }

        v452 = *(a2 + 14);
        v453 = *(a2 + 15);
        *(a2 + 14) = v452 + 1;
        if (v452 >= v453)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
        if (!awd::metrics::LocationGPSSessionStatistics_LocationGpsPersistentStatistics::MergePartialFromCodedStream(v450, a2, v454) || *(a2 + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
        v455 = *(a2 + 14);
        v129 = __OFSUB__(v455, 1);
        v456 = v455 - 1;
        if (v456 < 0 == v129)
        {
          *(a2 + 14) = v456;
        }

        v457 = *(a2 + 1);
        v21 = *(a2 + 2);
        if (v21 - v457 <= 1 || *v457 != 208 || v457[1] != 5)
        {
          continue;
        }

        v110 = (v457 + 2);
        *(a2 + 1) = v110;
LABEL_1244:
        if (v110 >= v21 || (v458 = *v110, (v458 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v671);
          if (!result)
          {
            return result;
          }

          v459 = *(a2 + 1);
          v21 = *(a2 + 2);
        }

        else
        {
          *v671 = v458;
          v459 = (v110 + 1);
          *(a2 + 1) = v459;
        }

        *(this + 342) |= 0x2000000u;
        if (v21 - v459 < 2 || *v459 != 216 || v459[1] != 5)
        {
          continue;
        }

        v109 = (v459 + 2);
        *(a2 + 1) = v109;
LABEL_1253:
        if (v109 >= v21 || (v460 = *v109, (v460 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v676);
          if (!result)
          {
            return result;
          }

          v461 = *(a2 + 1);
          v21 = *(a2 + 2);
        }

        else
        {
          *v676 = v460;
          v461 = (v109 + 1);
          *(a2 + 1) = v461;
        }

        *(this + 342) |= 0x4000000u;
        if (v21 - v461 < 2 || *v461 != 224 || v461[1] != 5)
        {
          continue;
        }

        v22 = (v461 + 2);
        *(a2 + 1) = v22;
LABEL_1262:
        if (v22 >= v21 || (v462 = *v22, (v462 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v679);
          if (!result)
          {
            return result;
          }

          v463 = *(a2 + 1);
          v21 = *(a2 + 2);
        }

        else
        {
          *v679 = v462;
          v463 = (v22 + 1);
          *(a2 + 1) = v463;
        }

        *(this + 342) |= 0x8000000u;
        if (v21 - v463 < 2 || *v463 != 232 || v463[1] != 5)
        {
          continue;
        }

        v69 = (v463 + 2);
        *(a2 + 1) = v69;
LABEL_1271:
        if (v69 >= v21 || (v464 = *v69, (v464 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v681);
          if (!result)
          {
            return result;
          }

          v465 = *(a2 + 1);
          v21 = *(a2 + 2);
        }

        else
        {
          *v681 = v464;
          v465 = (v69 + 1);
          *(a2 + 1) = v465;
        }

        *(this + 342) |= 0x10000000u;
        if (v21 - v465 < 2 || *v465 != 240 || v465[1] != 5)
        {
          continue;
        }

        v29 = (v465 + 2);
        *(a2 + 1) = v29;
LABEL_1280:
        if (v29 >= v21 || (v466 = *v29, (v466 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v683);
          if (!result)
          {
            return result;
          }

          v467 = *(a2 + 1);
          v21 = *(a2 + 2);
        }

        else
        {
          *v683 = v466;
          v467 = (v29 + 1);
          *(a2 + 1) = v467;
        }

        *(this + 342) |= 0x20000000u;
        if (v21 - v467 < 2 || *v467 != 248 || v467[1] != 5)
        {
          continue;
        }

        v72 = (v467 + 2);
        *(a2 + 1) = v72;
LABEL_1289:
        if (v72 >= v21 || (v468 = *v72, (v468 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v685);
          if (!result)
          {
            return result;
          }

          v469 = *(a2 + 1);
          v21 = *(a2 + 2);
        }

        else
        {
          *v685 = v468;
          v469 = (v72 + 1);
          *(a2 + 1) = v469;
        }

        *(this + 342) |= 0x40000000u;
        if (v21 - v469 < 2 || *v469 != 128 || v469[1] != 6)
        {
          continue;
        }

        v107 = (v469 + 2);
        *(a2 + 1) = v107;
LABEL_1298:
        if (v107 >= v21 || (v470 = *v107, (v470 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v686);
          if (!result)
          {
            return result;
          }

          v471 = *(a2 + 1);
          v21 = *(a2 + 2);
        }

        else
        {
          *v686 = v470;
          v471 = (v107 + 1);
          *(a2 + 1) = v471;
        }

        *(this + 342) |= 0x80000000;
        if (v21 - v471 < 2 || *v471 != 136 || v471[1] != 6)
        {
          continue;
        }

        v26 = (v471 + 2);
        *(a2 + 1) = v26;
LABEL_1307:
        if (v26 >= v21 || (v472 = *v26, (v472 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v690);
          if (!result)
          {
            return result;
          }

          v473 = *(a2 + 1);
          v21 = *(a2 + 2);
        }

        else
        {
          *v690 = v472;
          v473 = (v26 + 1);
          *(a2 + 1) = v473;
        }

        *(this + 343) |= 1u;
        if (v21 - v473 < 2 || *v473 != 144 || v473[1] != 6)
        {
          continue;
        }

        v111 = (v473 + 2);
        *(a2 + 1) = v111;
LABEL_1316:
        if (v111 >= v21 || (v474 = *v111, (v474 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v5);
          if (!result)
          {
            return result;
          }

          v475 = *(a2 + 1);
          v21 = *(a2 + 2);
        }

        else
        {
          *v5 = v474;
          v475 = (v111 + 1);
          *(a2 + 1) = v475;
        }

        *(this + 343) |= 2u;
        if (v21 - v475 < 2 || *v475 != 152 || v475[1] != 6)
        {
          continue;
        }

        v70 = (v475 + 2);
        *(a2 + 1) = v70;
LABEL_1325:
        if (v70 >= v21 || (v476 = *v70, (v476 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v6);
          if (!result)
          {
            return result;
          }

          v477 = *(a2 + 1);
          v21 = *(a2 + 2);
        }

        else
        {
          *v6 = v476;
          v477 = (v70 + 1);
          *(a2 + 1) = v477;
        }

        *(this + 343) |= 4u;
        if (v21 - v477 < 2 || *v477 != 160 || v477[1] != 6)
        {
          continue;
        }

        v112 = (v477 + 2);
        *(a2 + 1) = v112;
LABEL_1334:
        if (v112 >= v21 || (v478 = *v112, (v478 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v7);
          if (!result)
          {
            return result;
          }

          v479 = *(a2 + 1);
          v21 = *(a2 + 2);
        }

        else
        {
          *v7 = v478;
          v479 = (v112 + 1);
          *(a2 + 1) = v479;
        }

        *(this + 343) |= 8u;
        if (v21 - v479 < 2 || *v479 != 168 || v479[1] != 6)
        {
          continue;
        }

        v108 = (v479 + 2);
        *(a2 + 1) = v108;
LABEL_1343:
        if (v108 >= v21 || (v480 = *v108, (v480 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v8);
          if (!result)
          {
            return result;
          }

          v481 = *(a2 + 1);
          v21 = *(a2 + 2);
        }

        else
        {
          *v8 = v480;
          v481 = (v108 + 1);
          *(a2 + 1) = v481;
        }

        *(this + 343) |= 0x10u;
        if (v21 - v481 < 2 || *v481 != 176 || v481[1] != 6)
        {
          continue;
        }

        v105 = (v481 + 2);
        *(a2 + 1) = v105;
LABEL_1352:
        if (v105 >= v21 || (v482 = *v105, (v482 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v9);
          if (!result)
          {
            return result;
          }

          v483 = *(a2 + 1);
          v21 = *(a2 + 2);
        }

        else
        {
          *v9 = v482;
          v483 = (v105 + 1);
          *(a2 + 1) = v483;
        }

        *(this + 343) |= 0x20u;
        if (v21 - v483 < 2 || *v483 != 186 || v483[1] != 6)
        {
          continue;
        }

        while (1)
        {
          *(a2 + 1) = v483 + 2;
LABEL_1361:
          v484 = *(this + 244);
          v485 = *(this + 245);
          if (v484 >= v485)
          {
            if (v485 == *(this + 246))
            {
              wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 968));
              v485 = *(this + 245);
            }

            *(this + 245) = v485 + 1;
            operator new();
          }

          v486 = *(this + 121);
          *(this + 244) = v484 + 1;
          v487 = *(v486 + 8 * v484);
          v705[0] = 0;
          v488 = *(a2 + 1);
          if (v488 >= *(a2 + 2) || *v488 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v705))
            {
              return 0;
            }
          }

          else
          {
            v705[0] = *v488;
            *(a2 + 1) = v488 + 1;
          }

          v489 = *(a2 + 14);
          v490 = *(a2 + 15);
          *(a2 + 14) = v489 + 1;
          if (v489 >= v490)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
          if (!awd::metrics::LocationGPSSessionStatistics_SatelliteCNORangeData::MergePartialFromCodedStream(v487, a2, v491) || *(a2 + 36) != 1)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
          v492 = *(a2 + 14);
          v129 = __OFSUB__(v492, 1);
          v493 = v492 - 1;
          if (v493 < 0 == v129)
          {
            *(a2 + 14) = v493;
          }

          v483 = *(a2 + 1);
          if (*(a2 + 4) - v483 <= 1)
          {
            goto LABEL_2;
          }

          v494 = *v483;
          if (v494 == 194)
          {
            break;
          }

          if (v494 != 186 || v483[1] != 6)
          {
            goto LABEL_2;
          }
        }

        if (v483[1] != 6)
        {
          continue;
        }

        while (1)
        {
          *(a2 + 1) = v483 + 2;
LABEL_1382:
          v495 = *(this + 250);
          v496 = *(this + 251);
          if (v495 >= v496)
          {
            if (v496 == *(this + 252))
            {
              wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 992));
              v496 = *(this + 251);
            }

            *(this + 251) = v496 + 1;
            operator new();
          }

          v497 = *(this + 124);
          *(this + 250) = v495 + 1;
          v498 = *(v497 + 8 * v495);
          v705[0] = 0;
          v499 = *(a2 + 1);
          if (v499 >= *(a2 + 2) || *v499 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v705))
            {
              return 0;
            }
          }

          else
          {
            v705[0] = *v499;
            *(a2 + 1) = v499 + 1;
          }

          v500 = *(a2 + 14);
          v501 = *(a2 + 15);
          *(a2 + 14) = v500 + 1;
          if (v500 >= v501)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
          if (!awd::metrics::LocationGPSSessionStatistics_SatelliteCountRangeData::MergePartialFromCodedStream(v498, a2, v502) || *(a2 + 36) != 1)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
          v503 = *(a2 + 14);
          v129 = __OFSUB__(v503, 1);
          v504 = v503 - 1;
          if (v504 < 0 == v129)
          {
            *(a2 + 14) = v504;
          }

          v483 = *(a2 + 1);
          if (*(a2 + 4) - v483 <= 1)
          {
            goto LABEL_2;
          }

          v505 = *v483;
          if (v505 == 202)
          {
            break;
          }

          if (v505 != 194 || v483[1] != 6)
          {
            goto LABEL_2;
          }
        }

        if (v483[1] != 6)
        {
          continue;
        }

        while (1)
        {
          *(a2 + 1) = v483 + 2;
LABEL_1403:
          v506 = *(this + 256);
          v507 = *(this + 257);
          if (v506 >= v507)
          {
            if (v507 == *(this + 258))
            {
              wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 1016));
              v507 = *(this + 257);
            }

            *(this + 257) = v507 + 1;
            operator new();
          }

          v508 = *(this + 127);
          *(this + 256) = v506 + 1;
          v509 = *(v508 + 8 * v506);
          v705[0] = 0;
          v510 = *(a2 + 1);
          if (v510 >= *(a2 + 2) || *v510 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v705))
            {
              return 0;
            }
          }

          else
          {
            v705[0] = *v510;
            *(a2 + 1) = v510 + 1;
          }

          v511 = *(a2 + 14);
          v512 = *(a2 + 15);
          *(a2 + 14) = v511 + 1;
          if (v511 >= v512)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
          if (!awd::metrics::LocationGPSSessionStatistics_ChargerTypeData::MergePartialFromCodedStream(v509, a2, v513) || *(a2 + 36) != 1)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
          v514 = *(a2 + 14);
          v129 = __OFSUB__(v514, 1);
          v515 = v514 - 1;
          if (v515 < 0 == v129)
          {
            *(a2 + 14) = v515;
          }

          v483 = *(a2 + 1);
          if (*(a2 + 4) - v483 <= 1)
          {
            goto LABEL_2;
          }

          v516 = *v483;
          if (v516 == 210)
          {
            break;
          }

          if (v516 != 202 || v483[1] != 6)
          {
            goto LABEL_2;
          }
        }

        if (v483[1] != 6)
        {
          continue;
        }

        while (1)
        {
          *(a2 + 1) = v483 + 2;
LABEL_1424:
          v517 = *(this + 264);
          v518 = *(this + 265);
          if (v517 >= v518)
          {
            if (v518 == *(this + 266))
            {
              wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 1048));
              v518 = *(this + 265);
            }

            *(this + 265) = v518 + 1;
            operator new();
          }

          v519 = *(this + 131);
          *(this + 264) = v517 + 1;
          v520 = *(v519 + 8 * v517);
          v705[0] = 0;
          v521 = *(a2 + 1);
          if (v521 >= *(a2 + 2) || *v521 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v705))
            {
              return 0;
            }
          }

          else
          {
            v705[0] = *v521;
            *(a2 + 1) = v521 + 1;
          }

          v522 = *(a2 + 14);
          v523 = *(a2 + 15);
          *(a2 + 14) = v522 + 1;
          if (v522 >= v523)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
          if (!awd::metrics::LocationGPSSessionStatistics_ThermalLevelData::MergePartialFromCodedStream(v520, a2, v524) || *(a2 + 36) != 1)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
          v525 = *(a2 + 14);
          v129 = __OFSUB__(v525, 1);
          v526 = v525 - 1;
          if (v526 < 0 == v129)
          {
            *(a2 + 14) = v526;
          }

          v483 = *(a2 + 1);
          if (*(a2 + 4) - v483 <= 1)
          {
            goto LABEL_2;
          }

          v527 = *v483;
          if (v527 == 218)
          {
            break;
          }

          if (v527 != 210 || v483[1] != 6)
          {
            goto LABEL_2;
          }
        }

        if (v483[1] != 6)
        {
          continue;
        }

        *(a2 + 1) = v483 + 2;
LABEL_1445:
        *(this + 343) |= 0x400u;
        v528 = *(this + 134);
        if (!v528)
        {
          operator new();
        }

        v705[0] = 0;
        v529 = *(a2 + 1);
        if (v529 >= *(a2 + 2) || *v529 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v705))
          {
            return 0;
          }
        }

        else
        {
          v705[0] = *v529;
          *(a2 + 1) = v529 + 1;
        }

        v530 = *(a2 + 14);
        v531 = *(a2 + 15);
        *(a2 + 14) = v530 + 1;
        if (v530 < v531)
        {
          wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
          if (awd::metrics::LocationGPSSessionStatistics_BarometricAltitudeDriftRateInfo::MergePartialFromCodedStream(v528, a2, v532))
          {
            if (*(a2 + 36) == 1)
            {
              wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
              v533 = *(a2 + 14);
              v129 = __OFSUB__(v533, 1);
              v534 = v533 - 1;
              if (v534 < 0 == v129)
              {
                *(a2 + 14) = v534;
              }

              v535 = *(a2 + 1);
              if (*(a2 + 4) - v535 > 1 && *v535 == 226 && v535[1] == 6)
              {
                while (1)
                {
                  *(a2 + 1) = v535 + 2;
LABEL_1460:
                  v536 = *(this + 272);
                  v537 = *(this + 273);
                  if (v536 >= v537)
                  {
                    if (v537 == *(this + 274))
                    {
                      wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 1080));
                      v537 = *(this + 273);
                    }

                    *(this + 273) = v537 + 1;
                    operator new();
                  }

                  v538 = *(this + 135);
                  *(this + 272) = v536 + 1;
                  v539 = *(v538 + 8 * v536);
                  v705[0] = 0;
                  v540 = *(a2 + 1);
                  if (v540 >= *(a2 + 2) || *v540 < 0)
                  {
                    if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v705))
                    {
                      return 0;
                    }
                  }

                  else
                  {
                    v705[0] = *v540;
                    *(a2 + 1) = v540 + 1;
                  }

                  v541 = *(a2 + 14);
                  v542 = *(a2 + 15);
                  *(a2 + 14) = v541 + 1;
                  if (v541 >= v542)
                  {
                    return 0;
                  }

                  wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
                  if (!awd::metrics::LocationGPSSessionStatistics_NSForceOffReason::MergePartialFromCodedStream(v539, a2, v543) || *(a2 + 36) != 1)
                  {
                    return 0;
                  }

                  wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
                  v544 = *(a2 + 14);
                  v129 = __OFSUB__(v544, 1);
                  v545 = v544 - 1;
                  if (v545 < 0 == v129)
                  {
                    *(a2 + 14) = v545;
                  }

                  v535 = *(a2 + 1);
                  if (*(a2 + 4) - v535 <= 1)
                  {
                    goto LABEL_2;
                  }

                  v546 = *v535;
                  if (v546 == 234)
                  {
                    break;
                  }

                  if (v546 != 226 || v535[1] != 6)
                  {
                    goto LABEL_2;
                  }
                }

                if (v535[1] == 6)
                {
                  while (1)
                  {
                    *(a2 + 1) = v535 + 2;
LABEL_1481:
                    v547 = *(this + 278);
                    v548 = *(this + 279);
                    if (v547 >= v548)
                    {
                      if (v548 == *(this + 280))
                      {
                        wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 1104));
                        v548 = *(this + 279);
                      }

                      *(this + 279) = v548 + 1;
                      operator new();
                    }

                    v549 = *(this + 138);
                    *(this + 278) = v547 + 1;
                    v550 = *(v549 + 8 * v547);
                    v705[0] = 0;
                    v551 = *(a2 + 1);
                    if (v551 >= *(a2 + 2) || *v551 < 0)
                    {
                      if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v705))
                      {
                        return 0;
                      }
                    }

                    else
                    {
                      v705[0] = *v551;
                      *(a2 + 1) = v551 + 1;
                    }

                    v552 = *(a2 + 14);
                    v553 = *(a2 + 15);
                    *(a2 + 14) = v552 + 1;
                    if (v552 >= v553)
                    {
                      return 0;
                    }

                    wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
                    if (!awd::metrics::LocationGPSSessionStatistics_NSOnOffState::MergePartialFromCodedStream(v550, a2, v554) || *(a2 + 36) != 1)
                    {
                      return 0;
                    }

                    wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
                    v555 = *(a2 + 14);
                    v129 = __OFSUB__(v555, 1);
                    v556 = v555 - 1;
                    if (v556 < 0 == v129)
                    {
                      *(a2 + 14) = v556;
                    }

                    v535 = *(a2 + 1);
                    if (*(a2 + 4) - v535 <= 1)
                    {
                      goto LABEL_2;
                    }

                    v557 = *v535;
                    if (v557 == 242)
                    {
                      break;
                    }

                    if (v557 != 234 || v535[1] != 6)
                    {
                      goto LABEL_2;
                    }
                  }

                  if (v535[1] == 6)
                  {
                    while (1)
                    {
                      *(a2 + 1) = v535 + 2;
LABEL_1502:
                      v558 = *(this + 284);
                      v559 = *(this + 285);
                      if (v558 >= v559)
                      {
                        if (v559 == *(this + 286))
                        {
                          wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 1128));
                          v559 = *(this + 285);
                        }

                        *(this + 285) = v559 + 1;
                        operator new();
                      }

                      v560 = *(this + 141);
                      *(this + 284) = v558 + 1;
                      v561 = *(v560 + 8 * v558);
                      v705[0] = 0;
                      v562 = *(a2 + 1);
                      if (v562 >= *(a2 + 2) || *v562 < 0)
                      {
                        if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v705))
                        {
                          return 0;
                        }
                      }

                      else
                      {
                        v705[0] = *v562;
                        *(a2 + 1) = v562 + 1;
                      }

                      v563 = *(a2 + 14);
                      v564 = *(a2 + 15);
                      *(a2 + 14) = v563 + 1;
                      if (v563 >= v564)
                      {
                        return 0;
                      }

                      wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
                      if (!awd::metrics::LocationGPSSessionStatistics_SatelliteCNORangeData::MergePartialFromCodedStream(v561, a2, v565) || *(a2 + 36) != 1)
                      {
                        return 0;
                      }

                      wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
                      v566 = *(a2 + 14);
                      v129 = __OFSUB__(v566, 1);
                      v567 = v566 - 1;
                      if (v567 < 0 == v129)
                      {
                        *(a2 + 14) = v567;
                      }

                      v535 = *(a2 + 1);
                      if (*(a2 + 4) - v535 <= 1)
                      {
                        goto LABEL_2;
                      }

                      v568 = *v535;
                      if (v568 == 250)
                      {
                        break;
                      }

                      if (v568 != 242 || v535[1] != 6)
                      {
                        goto LABEL_2;
                      }
                    }

                    if (v535[1] == 6)
                    {
                      while (1)
                      {
                        *(a2 + 1) = v535 + 2;
LABEL_1523:
                        v569 = *(this + 290);
                        v570 = *(this + 291);
                        if (v569 >= v570)
                        {
                          if (v570 == *(this + 292))
                          {
                            wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 1152));
                            v570 = *(this + 291);
                          }

                          *(this + 291) = v570 + 1;
                          operator new();
                        }

                        v571 = *(this + 144);
                        *(this + 290) = v569 + 1;
                        v572 = *(v571 + 8 * v569);
                        v705[0] = 0;
                        v573 = *(a2 + 1);
                        if (v573 >= *(a2 + 2) || *v573 < 0)
                        {
                          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v705))
                          {
                            return 0;
                          }
                        }

                        else
                        {
                          v705[0] = *v573;
                          *(a2 + 1) = v573 + 1;
                        }

                        v574 = *(a2 + 14);
                        v575 = *(a2 + 15);
                        *(a2 + 14) = v574 + 1;
                        if (v574 >= v575)
                        {
                          return 0;
                        }

                        wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
                        if (!awd::metrics::LocationGPSSessionStatistics_SatelliteCNORangeData::MergePartialFromCodedStream(v572, a2, v576) || *(a2 + 36) != 1)
                        {
                          return 0;
                        }

                        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
                        v577 = *(a2 + 14);
                        v129 = __OFSUB__(v577, 1);
                        v578 = v577 - 1;
                        if (v578 < 0 == v129)
                        {
                          *(a2 + 14) = v578;
                        }

                        v535 = *(a2 + 1);
                        if (*(a2 + 4) - v535 <= 1)
                        {
                          goto LABEL_2;
                        }

                        v579 = *v535;
                        if (v579 == 130)
                        {
                          break;
                        }

                        if (v579 != 250 || v535[1] != 6)
                        {
                          goto LABEL_2;
                        }
                      }

                      if (v535[1] == 7)
                      {
                        while (1)
                        {
                          *(a2 + 1) = v535 + 2;
LABEL_1544:
                          v580 = *(this + 296);
                          v581 = *(this + 297);
                          if (v580 >= v581)
                          {
                            if (v581 == *(this + 298))
                            {
                              wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 1176));
                              v581 = *(this + 297);
                            }

                            *(this + 297) = v581 + 1;
                            operator new();
                          }

                          v582 = *(this + 147);
                          *(this + 296) = v580 + 1;
                          v583 = *(v582 + 8 * v580);
                          v705[0] = 0;
                          v584 = *(a2 + 1);
                          if (v584 >= *(a2 + 2) || *v584 < 0)
                          {
                            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v705))
                            {
                              return 0;
                            }
                          }

                          else
                          {
                            v705[0] = *v584;
                            *(a2 + 1) = v584 + 1;
                          }

                          v585 = *(a2 + 14);
                          v586 = *(a2 + 15);
                          *(a2 + 14) = v585 + 1;
                          if (v585 >= v586)
                          {
                            return 0;
                          }

                          wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
                          if (!awd::metrics::LocationGPSSessionStatistics_SatelliteCNORangeData::MergePartialFromCodedStream(v583, a2, v587) || *(a2 + 36) != 1)
                          {
                            return 0;
                          }

                          wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
                          v588 = *(a2 + 14);
                          v129 = __OFSUB__(v588, 1);
                          v589 = v588 - 1;
                          if (v589 < 0 == v129)
                          {
                            *(a2 + 14) = v589;
                          }

                          v535 = *(a2 + 1);
                          if (*(a2 + 4) - v535 <= 1)
                          {
                            goto LABEL_2;
                          }

                          v590 = *v535;
                          if (v590 == 138)
                          {
                            break;
                          }

                          if (v590 != 130 || v535[1] != 7)
                          {
                            goto LABEL_2;
                          }
                        }

                        if (v535[1] == 7)
                        {
                          while (1)
                          {
                            *(a2 + 1) = v535 + 2;
LABEL_1565:
                            v591 = *(this + 302);
                            v592 = *(this + 303);
                            if (v591 >= v592)
                            {
                              if (v592 == *(this + 304))
                              {
                                wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 1200));
                                v592 = *(this + 303);
                              }

                              *(this + 303) = v592 + 1;
                              operator new();
                            }

                            v593 = *(this + 150);
                            *(this + 302) = v591 + 1;
                            v594 = *(v593 + 8 * v591);
                            v705[0] = 0;
                            v595 = *(a2 + 1);
                            if (v595 >= *(a2 + 2) || *v595 < 0)
                            {
                              if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v705))
                              {
                                return 0;
                              }
                            }

                            else
                            {
                              v705[0] = *v595;
                              *(a2 + 1) = v595 + 1;
                            }

                            v596 = *(a2 + 14);
                            v597 = *(a2 + 15);
                            *(a2 + 14) = v596 + 1;
                            if (v596 >= v597)
                            {
                              return 0;
                            }

                            wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
                            if (!awd::metrics::LocationGPSSessionStatistics_SatelliteCNORangeData::MergePartialFromCodedStream(v594, a2, v598) || *(a2 + 36) != 1)
                            {
                              return 0;
                            }

                            wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
                            v599 = *(a2 + 14);
                            v129 = __OFSUB__(v599, 1);
                            v600 = v599 - 1;
                            if (v600 < 0 == v129)
                            {
                              *(a2 + 14) = v600;
                            }

                            v535 = *(a2 + 1);
                            if (*(a2 + 4) - v535 <= 1)
                            {
                              goto LABEL_2;
                            }

                            v601 = *v535;
                            if (v601 == 146)
                            {
                              break;
                            }

                            if (v601 != 138 || v535[1] != 7)
                            {
                              goto LABEL_2;
                            }
                          }

                          if (v535[1] == 7)
                          {
                            while (1)
                            {
                              *(a2 + 1) = v535 + 2;
LABEL_1586:
                              v602 = *(this + 308);
                              v603 = *(this + 309);
                              if (v602 >= v603)
                              {
                                if (v603 == *(this + 310))
                                {
                                  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 1224));
                                  v603 = *(this + 309);
                                }

                                *(this + 309) = v603 + 1;
                                operator new();
                              }

                              v604 = *(this + 153);
                              *(this + 308) = v602 + 1;
                              v605 = *(v604 + 8 * v602);
                              v705[0] = 0;
                              v606 = *(a2 + 1);
                              if (v606 >= *(a2 + 2) || *v606 < 0)
                              {
                                if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v705))
                                {
                                  return 0;
                                }
                              }

                              else
                              {
                                v705[0] = *v606;
                                *(a2 + 1) = v606 + 1;
                              }

                              v607 = *(a2 + 14);
                              v608 = *(a2 + 15);
                              *(a2 + 14) = v607 + 1;
                              if (v607 >= v608)
                              {
                                return 0;
                              }

                              wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
                              if (!awd::metrics::LocationGPSSessionStatistics_SatelliteCountRangeData::MergePartialFromCodedStream(v605, a2, v609) || *(a2 + 36) != 1)
                              {
                                return 0;
                              }

                              wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
                              v610 = *(a2 + 14);
                              v129 = __OFSUB__(v610, 1);
                              v611 = v610 - 1;
                              if (v611 < 0 == v129)
                              {
                                *(a2 + 14) = v611;
                              }

                              v535 = *(a2 + 1);
                              if (*(a2 + 4) - v535 <= 1)
                              {
                                goto LABEL_2;
                              }

                              v612 = *v535;
                              if (v612 == 154)
                              {
                                break;
                              }

                              if (v612 != 146 || v535[1] != 7)
                              {
                                goto LABEL_2;
                              }
                            }

                            if (v535[1] == 7)
                            {
                              while (1)
                              {
                                *(a2 + 1) = v535 + 2;
LABEL_1607:
                                v613 = *(this + 314);
                                v614 = *(this + 315);
                                if (v613 >= v614)
                                {
                                  if (v614 == *(this + 316))
                                  {
                                    wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 1248));
                                    v614 = *(this + 315);
                                  }

                                  *(this + 315) = v614 + 1;
                                  operator new();
                                }

                                v615 = *(this + 156);
                                *(this + 314) = v613 + 1;
                                v616 = *(v615 + 8 * v613);
                                v705[0] = 0;
                                v617 = *(a2 + 1);
                                if (v617 >= *(a2 + 2) || *v617 < 0)
                                {
                                  if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v705))
                                  {
                                    return 0;
                                  }
                                }

                                else
                                {
                                  v705[0] = *v617;
                                  *(a2 + 1) = v617 + 1;
                                }

                                v618 = *(a2 + 14);
                                v619 = *(a2 + 15);
                                *(a2 + 14) = v618 + 1;
                                if (v618 >= v619)
                                {
                                  return 0;
                                }

                                wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
                                if (!awd::metrics::LocationGPSSessionStatistics_SatelliteCountRangeData::MergePartialFromCodedStream(v616, a2, v620) || *(a2 + 36) != 1)
                                {
                                  return 0;
                                }

                                wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
                                v621 = *(a2 + 14);
                                v129 = __OFSUB__(v621, 1);
                                v622 = v621 - 1;
                                if (v622 < 0 == v129)
                                {
                                  *(a2 + 14) = v622;
                                }

                                v535 = *(a2 + 1);
                                if (*(a2 + 4) - v535 <= 1)
                                {
                                  goto LABEL_2;
                                }

                                v623 = *v535;
                                if (v623 == 162)
                                {
                                  break;
                                }

                                if (v623 != 154 || v535[1] != 7)
                                {
                                  goto LABEL_2;
                                }
                              }

                              if (v535[1] == 7)
                              {
                                while (1)
                                {
                                  *(a2 + 1) = v535 + 2;
LABEL_1628:
                                  v624 = *(this + 320);
                                  v625 = *(this + 321);
                                  if (v624 >= v625)
                                  {
                                    if (v625 == *(this + 322))
                                    {
                                      wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 1272));
                                      v625 = *(this + 321);
                                    }

                                    *(this + 321) = v625 + 1;
                                    operator new();
                                  }

                                  v626 = *(this + 159);
                                  *(this + 320) = v624 + 1;
                                  v627 = *(v626 + 8 * v624);
                                  v705[0] = 0;
                                  v628 = *(a2 + 1);
                                  if (v628 >= *(a2 + 2) || *v628 < 0)
                                  {
                                    if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v705))
                                    {
                                      return 0;
                                    }
                                  }

                                  else
                                  {
                                    v705[0] = *v628;
                                    *(a2 + 1) = v628 + 1;
                                  }

                                  v629 = *(a2 + 14);
                                  v630 = *(a2 + 15);
                                  *(a2 + 14) = v629 + 1;
                                  if (v629 >= v630)
                                  {
                                    return 0;
                                  }

                                  wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
                                  if (!awd::metrics::LocationGPSSessionStatistics_SatelliteCountRangeData::MergePartialFromCodedStream(v627, a2, v631) || *(a2 + 36) != 1)
                                  {
                                    return 0;
                                  }

                                  wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
                                  v632 = *(a2 + 14);
                                  v129 = __OFSUB__(v632, 1);
                                  v633 = v632 - 1;
                                  if (v633 < 0 == v129)
                                  {
                                    *(a2 + 14) = v633;
                                  }

                                  v535 = *(a2 + 1);
                                  if (*(a2 + 4) - v535 <= 1)
                                  {
                                    goto LABEL_2;
                                  }

                                  v634 = *v535;
                                  if (v634 == 170)
                                  {
                                    break;
                                  }

                                  if (v634 != 162 || v535[1] != 7)
                                  {
                                    goto LABEL_2;
                                  }
                                }

                                if (v535[1] == 7)
                                {
                                  while (1)
                                  {
                                    *(a2 + 1) = v535 + 2;
LABEL_1649:
                                    v635 = *(this + 326);
                                    v636 = *(this + 327);
                                    if (v635 >= v636)
                                    {
                                      if (v636 == *(this + 328))
                                      {
                                        wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 1296));
                                        v636 = *(this + 327);
                                      }

                                      *(this + 327) = v636 + 1;
                                      operator new();
                                    }

                                    v637 = *(this + 162);
                                    *(this + 326) = v635 + 1;
                                    v638 = *(v637 + 8 * v635);
                                    v705[0] = 0;
                                    v639 = *(a2 + 1);
                                    if (v639 >= *(a2 + 2) || *v639 < 0)
                                    {
                                      if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v705))
                                      {
                                        return 0;
                                      }
                                    }

                                    else
                                    {
                                      v705[0] = *v639;
                                      *(a2 + 1) = v639 + 1;
                                    }

                                    v640 = *(a2 + 14);
                                    v641 = *(a2 + 15);
                                    *(a2 + 14) = v640 + 1;
                                    if (v640 >= v641)
                                    {
                                      return 0;
                                    }

                                    wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
                                    if (!awd::metrics::LocationGPSSessionStatistics_SatelliteCountRangeData::MergePartialFromCodedStream(v638, a2, v642) || *(a2 + 36) != 1)
                                    {
                                      return 0;
                                    }

                                    wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
                                    v643 = *(a2 + 14);
                                    v129 = __OFSUB__(v643, 1);
                                    v644 = v643 - 1;
                                    if (v644 < 0 == v129)
                                    {
                                      *(a2 + 14) = v644;
                                    }

                                    v535 = *(a2 + 1);
                                    v50 = *(a2 + 2);
                                    if (v50 - v535 <= 1)
                                    {
                                      goto LABEL_2;
                                    }

                                    v645 = *v535;
                                    if (v645 == 176)
                                    {
                                      break;
                                    }

                                    if (v645 != 170 || v535[1] != 7)
                                    {
                                      goto LABEL_2;
                                    }
                                  }

                                  if (v535[1] == 7)
                                  {
                                    v49 = (v535 + 2);
                                    *(a2 + 1) = v49;
LABEL_1670:
                                    v705[0] = 0;
                                    if (v49 >= v50 || (v646 = *v49, (v646 & 0x80000000) != 0))
                                    {
                                      result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v705);
                                      if (!result)
                                      {
                                        return result;
                                      }

                                      v646 = v705[0];
                                      v647 = *(a2 + 1);
                                      v50 = *(a2 + 2);
                                    }

                                    else
                                    {
                                      v647 = (v49 + 1);
                                      *(a2 + 1) = v647;
                                    }

                                    *(this + 1045) = v646 != 0;
                                    *(this + 343) |= 0x200000u;
                                    if (v50 - v647 >= 2 && *v647 == 184 && v647[1] == 7)
                                    {
                                      v84 = (v647 + 2);
                                      *(a2 + 1) = v84;
LABEL_1679:
                                      v705[0] = 0;
                                      if (v84 >= v50 || (v648 = *v84, (v648 & 0x80000000) != 0))
                                      {
                                        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v705);
                                        if (!result)
                                        {
                                          return result;
                                        }

                                        v648 = v705[0];
                                        v649 = *(a2 + 1);
                                        v50 = *(a2 + 2);
                                      }

                                      else
                                      {
                                        v649 = (v84 + 1);
                                        *(a2 + 1) = v84 + 1;
                                      }

                                      *(this + 1046) = v648 != 0;
                                      *(this + 343) |= 0x400000u;
                                      if (v50 - v649 >= 2 && *v649 == 194 && v649[1] == 7)
                                      {
                                        while (1)
                                        {
                                          *(a2 + 1) = v649 + 2;
LABEL_1688:
                                          v650 = *(this + 332);
                                          v651 = *(this + 333);
                                          if (v650 >= v651)
                                          {
                                            if (v651 == *(this + 334))
                                            {
                                              wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 1320));
                                              v651 = *(this + 333);
                                            }

                                            *(this + 333) = v651 + 1;
                                            operator new();
                                          }

                                          v652 = *(this + 165);
                                          *(this + 332) = v650 + 1;
                                          v653 = *(v652 + 8 * v650);
                                          v705[0] = 0;
                                          v654 = *(a2 + 1);
                                          if (v654 >= *(a2 + 2) || *v654 < 0)
                                          {
                                            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v705))
                                            {
                                              return 0;
                                            }
                                          }

                                          else
                                          {
                                            v705[0] = *v654;
                                            *(a2 + 1) = v654 + 1;
                                          }

                                          v655 = *(a2 + 14);
                                          v656 = *(a2 + 15);
                                          *(a2 + 14) = v655 + 1;
                                          if (v655 >= v656)
                                          {
                                            return 0;
                                          }

                                          wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
                                          if (!awd::metrics::LocationGPSSessionStatistics_JammingMetricDataPerSignal::MergePartialFromCodedStream(v653, a2, v657) || *(a2 + 36) != 1)
                                          {
                                            return 0;
                                          }

                                          wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
                                          v658 = *(a2 + 14);
                                          v129 = __OFSUB__(v658, 1);
                                          v659 = v658 - 1;
                                          if (v659 < 0 == v129)
                                          {
                                            *(a2 + 14) = v659;
                                          }

                                          v649 = *(a2 + 1);
                                          v16 = *(a2 + 2);
                                          if (v16 - v649 <= 1)
                                          {
                                            goto LABEL_2;
                                          }

                                          v660 = *v649;
                                          if (v660 == 200)
                                          {
                                            break;
                                          }

                                          if (v660 != 194 || v649[1] != 7)
                                          {
                                            goto LABEL_2;
                                          }
                                        }

                                        if (v649[1] == 7)
                                        {
                                          v25 = (v649 + 2);
                                          *(a2 + 1) = v649 + 2;
LABEL_1709:
                                          v705[0] = 0;
                                          if (v25 >= v16 || (v661 = *v25, (v661 & 0x80000000) != 0))
                                          {
                                            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v705);
                                            if (!result)
                                            {
                                              return result;
                                            }

                                            v661 = v705[0];
                                            v662 = *(a2 + 1);
                                            v16 = *(a2 + 2);
                                          }

                                          else
                                          {
                                            v662 = (v25 + 1);
                                            *(a2 + 1) = v662;
                                          }

                                          *(this + 336) = v661;
                                          *(this + 343) |= 0x1000000u;
                                          if (v16 - v662 >= 2 && *v662 == 208 && v662[1] == 7)
                                          {
                                            v52 = (v662 + 2);
                                            *(a2 + 1) = v52;
LABEL_1718:
                                            v705[0] = 0;
                                            if (v52 >= v16 || (v663 = *v52, (v663 & 0x80000000) != 0))
                                            {
                                              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v705);
                                              if (!result)
                                              {
                                                return result;
                                              }

                                              v663 = v705[0];
                                              v664 = *(a2 + 1);
                                              v16 = *(a2 + 2);
                                            }

                                            else
                                            {
                                              v664 = (v52 + 1);
                                              *(a2 + 1) = v664;
                                            }

                                            *(this + 337) = v663;
                                            *(this + 343) |= 0x2000000u;
                                            if (v16 - v664 >= 2 && *v664 == 216 && v664[1] == 7)
                                            {
                                              v17 = (v664 + 2);
                                              *(a2 + 1) = v17;
LABEL_1727:
                                              v705[0] = 0;
                                              if (v17 >= v16 || (v665 = *v17, (v665 & 0x80000000) != 0))
                                              {
                                                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v705);
                                                if (!result)
                                                {
                                                  return result;
                                                }

                                                v665 = v705[0];
                                                v666 = *(a2 + 1);
                                                v16 = *(a2 + 2);
                                              }

                                              else
                                              {
                                                v666 = v17 + 1;
                                                *(a2 + 1) = v666;
                                              }

                                              *(this + 338) = v665;
                                              *(this + 343) |= 0x4000000u;
                                              if (v666 == v16 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
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

              continue;
            }
          }
        }

        return 0;
      case 5u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_265;
        }

        v56 = *(a2 + 1);
        v55 = *(a2 + 2);
        goto LABEL_282;
      case 6u:
        if (v12 == 5)
        {
          goto LABEL_290;
        }

        goto LABEL_265;
      case 7u:
        if (v12 == 5)
        {
          goto LABEL_294;
        }

        goto LABEL_265;
      case 8u:
        if (v12 == 5)
        {
          goto LABEL_298;
        }

        goto LABEL_265;
      case 9u:
        if (v12 == 2)
        {
          goto LABEL_302;
        }

        goto LABEL_265;
      case 0xAu:
        if (v12 == 2)
        {
          goto LABEL_320;
        }

        goto LABEL_265;
      case 0xBu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_265;
        }

        v78 = *(a2 + 1);
        v77 = *(a2 + 2);
        goto LABEL_338;
      case 0xCu:
        if (v12 == 2)
        {
          goto LABEL_346;
        }

        goto LABEL_265;
      case 0xDu:
        if (v12 == 2)
        {
          goto LABEL_364;
        }

        goto LABEL_265;
      case 0xEu:
        if (v12 == 2)
        {
          goto LABEL_382;
        }

        goto LABEL_265;
      case 0xFu:
        if (v12 == 2)
        {
          goto LABEL_400;
        }

        goto LABEL_265;
      case 0x10u:
        if (v12 == 2)
        {
          goto LABEL_420;
        }

        goto LABEL_265;
      case 0x11u:
        if (v12 == 2)
        {
          goto LABEL_441;
        }

        goto LABEL_265;
      case 0x12u:
        if (v12 == 2)
        {
          goto LABEL_462;
        }

        goto LABEL_265;
      case 0x13u:
        if (v12 == 2)
        {
          goto LABEL_483;
        }

        goto LABEL_265;
      case 0x14u:
        if (v12 == 2)
        {
          goto LABEL_504;
        }

        goto LABEL_265;
      case 0x15u:
        if (v12 == 2)
        {
          goto LABEL_525;
        }

        goto LABEL_265;
      case 0x16u:
        if (v12 == 2)
        {
          goto LABEL_546;
        }

        goto LABEL_265;
      case 0x17u:
        if (v12 == 2)
        {
          goto LABEL_567;
        }

        goto LABEL_265;
      case 0x18u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_265;
        }

        v90 = *(a2 + 1);
        v33 = *(a2 + 2);
        goto LABEL_588;
      case 0x19u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_265;
        }

        v61 = *(a2 + 1);
        v33 = *(a2 + 2);
        goto LABEL_597;
      case 0x1Au:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_265;
        }

        v60 = *(a2 + 1);
        v33 = *(a2 + 2);
        goto LABEL_606;
      case 0x1Bu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_265;
        }

        v94 = *(a2 + 1);
        v33 = *(a2 + 2);
        goto LABEL_615;
      case 0x1Cu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_265;
        }

        v43 = *(a2 + 1);
        v33 = *(a2 + 2);
        goto LABEL_624;
      case 0x1Du:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_265;
        }

        v91 = *(a2 + 1);
        v33 = *(a2 + 2);
        goto LABEL_633;
      case 0x1Eu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_265;
        }

        v92 = *(a2 + 1);
        v33 = *(a2 + 2);
        goto LABEL_642;
      case 0x1Fu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_265;
        }

        v79 = *(a2 + 1);
        v33 = *(a2 + 2);
        goto LABEL_651;
      case 0x20u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_265;
        }

        v71 = *(a2 + 1);
        v33 = *(a2 + 2);
        goto LABEL_660;
      case 0x21u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_265;
        }

        v80 = *(a2 + 1);
        v33 = *(a2 + 2);
        goto LABEL_669;
      case 0x22u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_265;
        }

        v47 = *(a2 + 1);
        v33 = *(a2 + 2);
        goto LABEL_678;
      case 0x23u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_265;
        }

        v44 = *(a2 + 1);
        v33 = *(a2 + 2);
        goto LABEL_687;
      case 0x24u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_265;
        }

        v40 = *(a2 + 1);
        v33 = *(a2 + 2);
        goto LABEL_696;
      case 0x25u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_265;
        }

        v41 = *(a2 + 1);
        v33 = *(a2 + 2);
        goto LABEL_705;
      case 0x26u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_265;
        }

        v37 = *(a2 + 1);
        v33 = *(a2 + 2);
        goto LABEL_714;
      case 0x27u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_265;
        }

        v93 = *(a2 + 1);
        v33 = *(a2 + 2);
        goto LABEL_723;
      case 0x28u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_265;
        }

        v85 = *(a2 + 1);
        v33 = *(a2 + 2);
        goto LABEL_732;
      case 0x29u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_265;
        }

        v57 = *(a2 + 1);
        v33 = *(a2 + 2);
        goto LABEL_741;
      case 0x2Au:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_265;
        }

        v73 = *(a2 + 1);
        v33 = *(a2 + 2);
        goto LABEL_750;
      case 0x2Bu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_265;
        }

        v88 = *(a2 + 1);
        v33 = *(a2 + 2);
        goto LABEL_759;
      case 0x2Cu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_265;
        }

        v34 = *(a2 + 1);
        v33 = *(a2 + 2);
        goto LABEL_768;
      case 0x2Du:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_265;
        }

        v46 = *(a2 + 1);
        v33 = *(a2 + 2);
        goto LABEL_777;
      case 0x2Eu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_265;
        }

        v81 = *(a2 + 1);
        v30 = *(a2 + 2);
        goto LABEL_786;
      case 0x2Fu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_265;
        }

        v99 = *(a2 + 1);
        v30 = *(a2 + 2);
        goto LABEL_795;
      case 0x30u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_265;
        }

        v38 = *(a2 + 1);
        v30 = *(a2 + 2);
        goto LABEL_804;
      case 0x31u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_265;
        }

        v48 = *(a2 + 1);
        v30 = *(a2 + 2);
        goto LABEL_813;
      case 0x32u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_265;
        }

        v54 = *(a2 + 1);
        v30 = *(a2 + 2);
        goto LABEL_822;
      case 0x33u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_265;
        }

        v31 = *(a2 + 1);
        v30 = *(a2 + 2);
        goto LABEL_831;
      case 0x34u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_265;
        }

        v103 = *(a2 + 1);
        v30 = *(a2 + 2);
        goto LABEL_840;
      case 0x35u:
        if (v12 == 5)
        {
          goto LABEL_851;
        }

        goto LABEL_265;
      case 0x36u:
        if (v12 == 5)
        {
          goto LABEL_856;
        }

        goto LABEL_265;
      case 0x37u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_265;
        }

        v96 = *(a2 + 1);
        v95 = *(a2 + 2);
        goto LABEL_861;
      case 0x38u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_265;
        }

        v98 = *(a2 + 1);
        v95 = *(a2 + 2);
        goto LABEL_870;
      case 0x39u:
        if (v12 == 2)
        {
          goto LABEL_879;
        }

        goto LABEL_265;
      case 0x3Au:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_265;
        }

        v87 = *(a2 + 1);
        v86 = *(a2 + 2);
        goto LABEL_900;
      case 0x3Bu:
        if (v12 == 2)
        {
          goto LABEL_909;
        }

        goto LABEL_265;
      case 0x3Cu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_265;
        }

        v89 = *(a2 + 1);
        v58 = *(a2 + 2);
        goto LABEL_930;
      case 0x3Du:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_265;
        }

        v59 = *(a2 + 1);
        v58 = *(a2 + 2);
        goto LABEL_939;
      case 0x3Eu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_265;
        }

        v75 = *(a2 + 1);
        v58 = *(a2 + 2);
        goto LABEL_948;
      case 0x3Fu:
        if (v12 == 2)
        {
          goto LABEL_957;
        }

        goto LABEL_265;
      case 0x40u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_265;
        }

        v64 = *(a2 + 1);
        v63 = *(a2 + 2);
        goto LABEL_978;
      case 0x41u:
        if (v12 == 2)
        {
          goto LABEL_989;
        }

        goto LABEL_265;
      case 0x42u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_265;
        }

        v76 = *(a2 + 1);
        v23 = *(a2 + 2);
        goto LABEL_1010;
      case 0x43u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_265;
        }

        v35 = *(a2 + 1);
        v23 = *(a2 + 2);
        goto LABEL_1019;
      case 0x44u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_265;
        }

        v45 = *(a2 + 1);
        v23 = *(a2 + 2);
        goto LABEL_1028;
      case 0x45u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_265;
        }

        v106 = *(a2 + 1);
        v23 = *(a2 + 2);
        goto LABEL_1037;
      case 0x46u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_265;
        }

        v42 = *(a2 + 1);
        v23 = *(a2 + 2);
        goto LABEL_1046;
      case 0x47u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_265;
        }

        v27 = *(a2 + 1);
        v23 = *(a2 + 2);
        goto LABEL_1055;
      case 0x48u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_265;
        }

        v36 = *(a2 + 1);
        v23 = *(a2 + 2);
        goto LABEL_1064;
      case 0x49u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_265;
        }

        v97 = *(a2 + 1);
        v23 = *(a2 + 2);
        goto LABEL_1073;
      case 0x4Au:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_265;
        }

        v100 = *(a2 + 1);
        v23 = *(a2 + 2);
        goto LABEL_1082;
      case 0x4Bu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_265;
        }

        v102 = *(a2 + 1);
        v23 = *(a2 + 2);
        goto LABEL_1091;
      case 0x4Cu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_265;
        }

        v39 = *(a2 + 1);
        v23 = *(a2 + 2);
        goto LABEL_1100;
      case 0x4Du:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_265;
        }

        v74 = *(a2 + 1);
        v23 = *(a2 + 2);
        goto LABEL_1109;
      case 0x4Eu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_265;
        }

        v28 = *(a2 + 1);
        v23 = *(a2 + 2);
        goto LABEL_1118;
      case 0x4Fu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_265;
        }

        v104 = *(a2 + 1);
        v23 = *(a2 + 2);
        goto LABEL_1127;
      case 0x50u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_265;
        }

        v24 = *(a2 + 1);
        v23 = *(a2 + 2);
        goto LABEL_1136;
      case 0x51u:
        if (v12 == 2)
        {
          goto LABEL_1145;
        }

        goto LABEL_265;
      case 0x52u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_265;
        }

        v53 = *(a2 + 1);
        v18 = *(a2 + 2);
        goto LABEL_1166;
      case 0x53u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_265;
        }

        v51 = *(a2 + 1);
        v18 = *(a2 + 2);
        goto LABEL_1175;
      case 0x54u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_265;
        }

        v20 = *(a2 + 1);
        v18 = *(a2 + 2);
        goto LABEL_1184;
      case 0x55u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_265;
        }

        v19 = *(a2 + 1);
        v18 = *(a2 + 2);
        goto LABEL_1193;
      case 0x56u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_265;
        }

        v82 = *(a2 + 1);
        v18 = *(a2 + 2);
        goto LABEL_1202;
      case 0x57u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_265;
        }

        v83 = *(a2 + 1);
        v18 = *(a2 + 2);
        goto LABEL_1211;
      case 0x58u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_265;
        }

        v101 = *(a2 + 1);
        v18 = *(a2 + 2);
        goto LABEL_1220;
      case 0x59u:
        if (v12 != 2)
        {
          goto LABEL_265;
        }

        v32 = *(this + 342);
        goto LABEL_1229;
      case 0x5Au:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_265;
        }

        v110 = *(a2 + 1);
        v21 = *(a2 + 2);
        goto LABEL_1244;
      case 0x5Bu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_265;
        }

        v109 = *(a2 + 1);
        v21 = *(a2 + 2);
        goto LABEL_1253;
      case 0x5Cu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_265;
        }

        v22 = *(a2 + 1);
        v21 = *(a2 + 2);
        goto LABEL_1262;
      case 0x5Du:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_265;
        }

        v69 = *(a2 + 1);
        v21 = *(a2 + 2);
        goto LABEL_1271;
      case 0x5Eu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_265;
        }

        v29 = *(a2 + 1);
        v21 = *(a2 + 2);
        goto LABEL_1280;
      case 0x5Fu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_265;
        }

        v72 = *(a2 + 1);
        v21 = *(a2 + 2);
        goto LABEL_1289;
      case 0x60u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_265;
        }

        v107 = *(a2 + 1);
        v21 = *(a2 + 2);
        goto LABEL_1298;
      case 0x61u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_265;
        }

        v26 = *(a2 + 1);
        v21 = *(a2 + 2);
        goto LABEL_1307;
      case 0x62u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_265;
        }

        v111 = *(a2 + 1);
        v21 = *(a2 + 2);
        goto LABEL_1316;
      case 0x63u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_265;
        }

        v70 = *(a2 + 1);
        v21 = *(a2 + 2);
        goto LABEL_1325;
      case 0x64u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_265;
        }

        v112 = *(a2 + 1);
        v21 = *(a2 + 2);
        goto LABEL_1334;
      case 0x65u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_265;
        }

        v108 = *(a2 + 1);
        v21 = *(a2 + 2);
        goto LABEL_1343;
      case 0x66u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_265;
        }

        v105 = *(a2 + 1);
        v21 = *(a2 + 2);
        goto LABEL_1352;
      case 0x67u:
        if (v12 == 2)
        {
          goto LABEL_1361;
        }

        goto LABEL_265;
      case 0x68u:
        if (v12 == 2)
        {
          goto LABEL_1382;
        }

        goto LABEL_265;
      case 0x69u:
        if (v12 == 2)
        {
          goto LABEL_1403;
        }

        goto LABEL_265;
      case 0x6Au:
        if (v12 == 2)
        {
          goto LABEL_1424;
        }

        goto LABEL_265;
      case 0x6Bu:
        if (v12 == 2)
        {
          goto LABEL_1445;
        }

        goto LABEL_265;
      case 0x6Cu:
        if (v12 == 2)
        {
          goto LABEL_1460;
        }

        goto LABEL_265;
      case 0x6Du:
        if (v12 == 2)
        {
          goto LABEL_1481;
        }

        goto LABEL_265;
      case 0x6Eu:
        if (v12 == 2)
        {
          goto LABEL_1502;
        }

        goto LABEL_265;
      case 0x6Fu:
        if (v12 == 2)
        {
          goto LABEL_1523;
        }

        goto LABEL_265;
      case 0x70u:
        if (v12 == 2)
        {
          goto LABEL_1544;
        }

        goto LABEL_265;
      case 0x71u:
        if (v12 == 2)
        {
          goto LABEL_1565;
        }

        goto LABEL_265;
      case 0x72u:
        if (v12 == 2)
        {
          goto LABEL_1586;
        }

        goto LABEL_265;
      case 0x73u:
        if (v12 == 2)
        {
          goto LABEL_1607;
        }

        goto LABEL_265;
      case 0x74u:
        if (v12 == 2)
        {
          goto LABEL_1628;
        }

        goto LABEL_265;
      case 0x75u:
        if (v12 == 2)
        {
          goto LABEL_1649;
        }

        goto LABEL_265;
      case 0x76u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_265;
        }

        v49 = *(a2 + 1);
        v50 = *(a2 + 2);
        goto LABEL_1670;
      case 0x77u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_265;
        }

        v84 = *(a2 + 1);
        v50 = *(a2 + 2);
        goto LABEL_1679;
      case 0x78u:
        if (v12 == 2)
        {
          goto LABEL_1688;
        }

        goto LABEL_265;
      case 0x79u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_265;
        }

        v25 = *(a2 + 1);
        v16 = *(a2 + 2);
        goto LABEL_1709;
      case 0x7Au:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_265;
        }

        v52 = *(a2 + 1);
        v16 = *(a2 + 2);
        goto LABEL_1718;
      case 0x7Bu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_265;
        }

        v17 = *(a2 + 1);
        v16 = *(a2 + 2);
        goto LABEL_1727;
      default:
LABEL_265:
        if (v12 == 4)
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