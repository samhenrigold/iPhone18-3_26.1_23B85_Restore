uint64_t CLP::LogEntry::PrivateData::ReceiverBandCorrections::SharedCtor(uint64_t this)
{
  *(this + 8) = 0;
  *(this + 16) = 0;
  *(this + 32) = 0;
  *(this + 24) = 0;
  return this;
}

CLP::LogEntry::PrivateData::ReceiverBandCorrections *CLP::LogEntry::PrivateData::ReceiverBandCorrections::ReceiverBandCorrections(CLP::LogEntry::PrivateData::ReceiverBandCorrections *this, const CLP::LogEntry::PrivateData::ReceiverBandCorrections *a2)
{
  *this = &unk_285860D20;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 3) = 0;
  *(this + 8) = 0;
  CLP::LogEntry::PrivateData::ReceiverBandCorrections::MergeFrom(this, a2);
  return this;
}

float CLP::LogEntry::PrivateData::ReceiverBandCorrections::MergeFrom(CLP::LogEntry::PrivateData::ReceiverBandCorrections *this, const CLP::LogEntry::PrivateData::ReceiverBandCorrections *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v8);
  }

  LOBYTE(v5) = *(a2 + 32);
  if (!v5)
  {
    return *&v4;
  }

  if (*(a2 + 32))
  {
    v6 = *(a2 + 4);
    if (v6 >= 0xD)
    {
      __assert_rtn("set_band", "CLPGnssMeasApi.pb.h", 11445, "::CLP::LogEntry::PrivateData::Band_IsValid(value)");
    }

    *(this + 8) |= 1u;
    *(this + 4) = v6;
    v5 = *(a2 + 8);
  }

  if ((v5 & 2) == 0)
  {
    if ((v5 & 4) == 0)
    {
      goto LABEL_9;
    }

LABEL_13:
    LODWORD(v4) = *(a2 + 5);
    *(this + 8) |= 4u;
    *(this + 5) = v4;
    if ((*(a2 + 8) & 8) == 0)
    {
      return *&v4;
    }

    goto LABEL_10;
  }

  v4 = *(a2 + 1);
  *(this + 8) |= 2u;
  *(this + 1) = v4;
  v5 = *(a2 + 8);
  if ((v5 & 4) != 0)
  {
    goto LABEL_13;
  }

LABEL_9:
  if ((v5 & 8) != 0)
  {
LABEL_10:
    LODWORD(v4) = *(a2 + 6);
    *(this + 8) |= 8u;
    *(this + 6) = v4;
  }

  return *&v4;
}

void sub_24552D4D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void CLP::LogEntry::PrivateData::ReceiverBandCorrections::~ReceiverBandCorrections(CLP::LogEntry::PrivateData::ReceiverBandCorrections *this)
{
  *this = &unk_285860D20;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_285860D20;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_285860D20;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  JUMPOUT(0x245D6AEE0);
}

uint64_t CLP::LogEntry::PrivateData::ReceiverBandCorrections::default_instance(CLP::LogEntry::PrivateData::ReceiverBandCorrections *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = CLP::LogEntry::PrivateData::ReceiverBandCorrections::default_instance_;
  if (!CLP::LogEntry::PrivateData::ReceiverBandCorrections::default_instance_)
  {
    CLP::LogEntry::PrivateData::protobuf_AddDesc_CLPGnssMeasApi_2eproto(0, a2, a3, a4);
    return CLP::LogEntry::PrivateData::ReceiverBandCorrections::default_instance_;
  }

  return result;
}

uint64_t CLP::LogEntry::PrivateData::ReceiverBandCorrections::Clear(uint64_t this)
{
  if (*(this + 32))
  {
    *(this + 8) = 0;
    *(this + 16) = 0;
    *(this + 24) = 0;
  }

  *(this + 32) = 0;
  return this;
}

uint64_t CLP::LogEntry::PrivateData::ReceiverBandCorrections::MergePartialFromCodedStream(CLP::LogEntry::PrivateData::ReceiverBandCorrections *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
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

        v7 = TagFallback >> 3;
        v8 = TagFallback & 7;
        if (TagFallback >> 3 <= 2)
        {
          break;
        }

        if (v7 == 3)
        {
          if (v8 != 5)
          {
            goto LABEL_20;
          }

LABEL_34:
          v15[0] = 0;
          if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a2, v15) & 1) == 0)
          {
            return 0;
          }

          *(this + 5) = v15[0];
          *(this + 8) |= 4u;
          v14 = *(a2 + 1);
          if (v14 < *(a2 + 2) && *v14 == 37)
          {
            *(a2 + 1) = v14 + 1;
            goto LABEL_38;
          }
        }

        else
        {
          if (v7 != 4 || v8 != 5)
          {
            goto LABEL_20;
          }

LABEL_38:
          v15[0] = 0;
          if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a2, v15) & 1) == 0)
          {
            return 0;
          }

          *(this + 6) = v15[0];
          *(this + 8) |= 8u;
          if (*(a2 + 1) == *(a2 + 2) && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
          {
            *(a2 + 8) = 0;
            result = 1;
            *(a2 + 36) = 1;
            return result;
          }
        }
      }

      if (v7 != 1)
      {
        break;
      }

      if ((TagFallback & 7) != 0)
      {
        goto LABEL_20;
      }

      v15[0] = 0;
      v9 = *(a2 + 1);
      if (v9 >= *(a2 + 2) || (v10 = *v9, (v10 & 0x80000000) != 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v15);
        if (!result)
        {
          return result;
        }

        v10 = v15[0];
      }

      else
      {
        *(a2 + 1) = v9 + 1;
      }

      if (v10 <= 0xC)
      {
        *(this + 8) |= 1u;
        *(this + 4) = v10;
      }

      v12 = *(a2 + 1);
      if (v12 < *(a2 + 2) && *v12 == 17)
      {
        *(a2 + 1) = v12 + 1;
LABEL_30:
        *v15 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v15) & 1) == 0)
        {
          return 0;
        }

        *(this + 1) = *v15;
        *(this + 8) |= 2u;
        v13 = *(a2 + 1);
        if (v13 < *(a2 + 2) && *v13 == 29)
        {
          *(a2 + 1) = v13 + 1;
          goto LABEL_34;
        }
      }
    }

    if (v7 == 2 && v8 == 1)
    {
      goto LABEL_30;
    }

LABEL_20:
    if (v8 == 4)
    {
      return 1;
    }
  }

  while ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(a2, TagFallback) & 1) != 0);
  return 0;
}

uint64_t CLP::LogEntry::PrivateData::ReceiverBandCorrections::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 32);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(1, *(this + 16), a2, a4);
    v6 = *(v5 + 32);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

LABEL_8:
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(3, a2, *(v5 + 20), a3);
      if ((*(v5 + 32) & 8) == 0)
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

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(2, a2, *(v5 + 8), a3);
  v6 = *(v5 + 32);
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
  v7 = *(v5 + 24);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(4, a2, v7, a3);
}

uint64_t CLP::LogEntry::PrivateData::ReceiverBandCorrections::ByteSize(CLP::LogEntry::PrivateData::ReceiverBandCorrections *this, unsigned int a2)
{
  LOBYTE(v3) = *(this + 32);
  if (v3)
  {
    if (*(this + 32))
    {
      v6 = *(this + 4);
      if ((v6 & 0x80000000) != 0)
      {
        v4 = 11;
      }

      else if (v6 >= 0x80)
      {
        v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v6) + 1;
        v3 = *(this + 8);
      }

      else
      {
        v4 = 2;
      }
    }

    else
    {
      v4 = 0;
    }

    if ((v3 & 2) != 0)
    {
      v4 += 9;
    }

    if ((v3 & 4) != 0)
    {
      v4 += 5;
    }

    if ((v3 & 8) != 0)
    {
      result = v4 + 5;
    }

    else
    {
      result = v4;
    }
  }

  else
  {
    result = 0;
  }

  *(this + 7) = result;
  return result;
}

float CLP::LogEntry::PrivateData::ReceiverBandCorrections::CheckTypeAndMergeFrom(CLP::LogEntry::PrivateData::ReceiverBandCorrections *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  return CLP::LogEntry::PrivateData::ReceiverBandCorrections::MergeFrom(this, lpsrc);
}

float CLP::LogEntry::PrivateData::ReceiverBandCorrections::CopyFrom(CLP::LogEntry::PrivateData::ReceiverBandCorrections *this, const CLP::LogEntry::PrivateData::ReceiverBandCorrections *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    return CLP::LogEntry::PrivateData::ReceiverBandCorrections::MergeFrom(this, a2);
  }

  return result;
}

float CLP::LogEntry::PrivateData::ReceiverBandCorrections::Swap(CLP::LogEntry::PrivateData::ReceiverBandCorrections *this, CLP::LogEntry::PrivateData::ReceiverBandCorrections *a2)
{
  if (a2 != this)
  {
    v2 = *(this + 4);
    *(this + 4) = *(a2 + 4);
    *(a2 + 4) = v2;
    v3 = *(this + 1);
    *(this + 1) = *(a2 + 1);
    *(a2 + 1) = v3;
    LODWORD(v3) = *(this + 5);
    *(this + 5) = *(a2 + 5);
    *(a2 + 5) = v3;
    result = *(this + 6);
    *(this + 6) = *(a2 + 6);
    *(a2 + 6) = result;
    v5 = *(this + 8);
    *(this + 8) = *(a2 + 8);
    *(a2 + 8) = v5;
    v6 = *(this + 7);
    *(this + 7) = *(a2 + 7);
    *(a2 + 7) = v6;
  }

  return result;
}

uint64_t CLP::LogEntry::PrivateData::LeapSecondChange::SharedCtor(uint64_t this)
{
  *(this + 8) = 0;
  *(this + 16) = 0;
  *(this + 24) = 0;
  return this;
}

CLP::LogEntry::PrivateData::LeapSecondChange *CLP::LogEntry::PrivateData::LeapSecondChange::LeapSecondChange(CLP::LogEntry::PrivateData::LeapSecondChange *this, const CLP::LogEntry::PrivateData::LeapSecondChange *a2)
{
  *(this + 1) = 0;
  *(this + 2) = 0;
  *this = &unk_285860D98;
  *(this + 6) = 0;
  CLP::LogEntry::PrivateData::LeapSecondChange::MergeFrom(this, a2);
  return this;
}

void CLP::LogEntry::PrivateData::LeapSecondChange::MergeFrom(CLP::LogEntry::PrivateData::LeapSecondChange *this, const CLP::LogEntry::PrivateData::LeapSecondChange *a2)
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
      v5 = *(a2 + 1);
      *(this + 6) |= 1u;
      *(this + 1) = v5;
      v4 = *(a2 + 6);
    }

    if ((v4 & 2) != 0)
    {
      v6 = *(a2 + 4);
      *(this + 6) |= 2u;
      *(this + 4) = v6;
    }
  }
}

void sub_24552DC6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void CLP::LogEntry::PrivateData::LeapSecondChange::~LeapSecondChange(CLP::LogEntry::PrivateData::LeapSecondChange *this)
{
  *this = &unk_285860D98;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_285860D98;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_285860D98;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  JUMPOUT(0x245D6AEE0);
}

uint64_t CLP::LogEntry::PrivateData::LeapSecondChange::default_instance(CLP::LogEntry::PrivateData::LeapSecondChange *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = CLP::LogEntry::PrivateData::LeapSecondChange::default_instance_;
  if (!CLP::LogEntry::PrivateData::LeapSecondChange::default_instance_)
  {
    CLP::LogEntry::PrivateData::protobuf_AddDesc_CLPGnssMeasApi_2eproto(0, a2, a3, a4);
    return CLP::LogEntry::PrivateData::LeapSecondChange::default_instance_;
  }

  return result;
}

uint64_t CLP::LogEntry::PrivateData::LeapSecondChange::Clear(uint64_t this)
{
  if (*(this + 24))
  {
    *(this + 8) = 0;
    *(this + 16) = 0;
  }

  *(this + 24) = 0;
  return this;
}

uint64_t CLP::LogEntry::PrivateData::LeapSecondChange::MergePartialFromCodedStream(CLP::LogEntry::PrivateData::LeapSecondChange *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
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
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 1);
        if (!result)
        {
          return result;
        }

        v10 = *(a2 + 1);
        v7 = *(a2 + 2);
      }

      else
      {
        *(this + 1) = v9;
        v10 = v8 + 1;
        *(a2 + 1) = v10;
      }

      *(this + 6) |= 1u;
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

        *(this + 4) = v12;
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

uint64_t CLP::LogEntry::PrivateData::LeapSecondChange::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 24);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(1, *(this + 8), a2, a4);
    v6 = *(v5 + 24);
  }

  if ((v6 & 2) != 0)
  {
    v7 = *(v5 + 16);

    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(2, v7, a2, a4);
  }

  return this;
}

uint64_t CLP::LogEntry::PrivateData::LeapSecondChange::ByteSize(wireless_diagnostics::google::protobuf::io::CodedOutputStream **this, unint64_t a2)
{
  if (*(this + 24))
  {
    if (this[3])
    {
      v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(this[1]) + 1;
      if ((this[3] & 2) == 0)
      {
        goto LABEL_13;
      }
    }

    else
    {
      v3 = 0;
      if ((this[3] & 2) == 0)
      {
        goto LABEL_13;
      }
    }

    v4 = *(this + 4);
    if ((v4 & 0x80000000) != 0)
    {
      v5 = 11;
    }

    else if (v4 >= 0x80)
    {
      v5 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v4) + 1;
    }

    else
    {
      v5 = 2;
    }

    v3 = (v5 + v3);
  }

  else
  {
    v3 = 0;
  }

LABEL_13:
  *(this + 5) = v3;
  return v3;
}

void CLP::LogEntry::PrivateData::LeapSecondChange::CheckTypeAndMergeFrom(CLP::LogEntry::PrivateData::LeapSecondChange *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  CLP::LogEntry::PrivateData::LeapSecondChange::MergeFrom(this, lpsrc);
}

void CLP::LogEntry::PrivateData::LeapSecondChange::CopyFrom(CLP::LogEntry::PrivateData::LeapSecondChange *this, const CLP::LogEntry::PrivateData::LeapSecondChange *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    CLP::LogEntry::PrivateData::LeapSecondChange::MergeFrom(this, a2);
  }
}

uint64_t CLP::LogEntry::PrivateData::LeapSecondChange::Swap(uint64_t this, CLP::LogEntry::PrivateData::LeapSecondChange *a2)
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

void *CLP::LogEntry::PrivateData::LeapSecondInfo::SharedCtor(void *this)
{
  this[1] = 0;
  this[2] = 0;
  this[3] = 0;
  return this;
}

CLP::LogEntry::PrivateData::LeapSecondInfo *CLP::LogEntry::PrivateData::LeapSecondInfo::LeapSecondInfo(CLP::LogEntry::PrivateData::LeapSecondInfo *this, const CLP::LogEntry::PrivateData::LeapSecondInfo *a2)
{
  *this = &unk_285860E10;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 3) = 0;
  CLP::LogEntry::PrivateData::LeapSecondInfo::MergeFrom(this, a2);
  return this;
}

void CLP::LogEntry::PrivateData::LeapSecondInfo::MergeFrom(CLP::LogEntry::PrivateData::LeapSecondInfo *this, const CLP::LogEntry::PrivateData::LeapSecondInfo *a2)
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
      v5 = *(a2 + 2);
      *(this + 7) |= 1u;
      *(this + 2) = v5;
      v4 = *(a2 + 7);
    }

    if ((v4 & 2) != 0)
    {
      v6 = *(a2 + 3);
      if (v6 >= 5)
      {
        __assert_rtn("set_change_knowledge", "CLPGnssMeasApi.pb.h", 11608, "::CLP::LogEntry::PrivateData::LeapSecondChangeKnowledge_IsValid(value)");
      }

      *(this + 7) |= 2u;
      *(this + 3) = v6;
      v4 = *(a2 + 7);
    }

    if ((v4 & 4) != 0)
    {
      *(this + 7) |= 4u;
      v7 = *(this + 2);
      if (!v7)
      {
        operator new();
      }

      v8 = *(a2 + 2);
      if (!v8)
      {
        v8 = *(CLP::LogEntry::PrivateData::LeapSecondInfo::default_instance_ + 16);
      }

      CLP::LogEntry::PrivateData::LeapSecondChange::MergeFrom(v7, v8);
    }
  }
}

void sub_24552E388(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void CLP::LogEntry::PrivateData::LeapSecondInfo::~LeapSecondInfo(CLP::LogEntry::PrivateData::LeapSecondInfo *this)
{
  *this = &unk_285860E10;
  if (CLP::LogEntry::PrivateData::LeapSecondInfo::default_instance_ != this)
  {
    v2 = *(this + 2);
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }
  }

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  CLP::LogEntry::PrivateData::LeapSecondInfo::~LeapSecondInfo(this);

  JUMPOUT(0x245D6AEE0);
}

void *CLP::LogEntry::PrivateData::LeapSecondInfo::SharedDtor(void *this)
{
  if (CLP::LogEntry::PrivateData::LeapSecondInfo::default_instance_ != this)
  {
    this = this[2];
    if (this)
    {
      return (*(*this + 8))();
    }
  }

  return this;
}

uint64_t CLP::LogEntry::PrivateData::LeapSecondInfo::default_instance(CLP::LogEntry::PrivateData::LeapSecondInfo *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = CLP::LogEntry::PrivateData::LeapSecondInfo::default_instance_;
  if (!CLP::LogEntry::PrivateData::LeapSecondInfo::default_instance_)
  {
    CLP::LogEntry::PrivateData::protobuf_AddDesc_CLPGnssMeasApi_2eproto(0, a2, a3, a4);
    return CLP::LogEntry::PrivateData::LeapSecondInfo::default_instance_;
  }

  return result;
}

uint64_t CLP::LogEntry::PrivateData::LeapSecondInfo::Clear(uint64_t this)
{
  v1 = *(this + 28);
  if (v1)
  {
    *(this + 8) = 0;
    if ((v1 & 4) != 0)
    {
      v2 = *(this + 16);
      if (v2)
      {
        if (*(v2 + 24))
        {
          *(v2 + 8) = 0;
          *(v2 + 16) = 0;
        }

        *(v2 + 24) = 0;
      }
    }
  }

  *(this + 28) = 0;
  return this;
}

uint64_t CLP::LogEntry::PrivateData::LeapSecondInfo::MergePartialFromCodedStream(CLP::LogEntry::PrivateData::LeapSecondInfo *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
{
  while (1)
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

          v7 = TagFallback >> 3;
          v8 = TagFallback & 7;
          if (TagFallback >> 3 != 3)
          {
            break;
          }

          if (v8 == 2)
          {
            goto LABEL_34;
          }

LABEL_16:
          if (v8 == 4)
          {
            return 1;
          }

          if ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(a2, TagFallback) & 1) == 0)
          {
            return 0;
          }
        }

        if (v7 == 2)
        {
          break;
        }

        if (v7 != 1 || (TagFallback & 7) != 0)
        {
          goto LABEL_16;
        }

        v10 = *(a2 + 1);
        v9 = *(a2 + 2);
        if (v10 >= v9 || (v11 = *v10, v11 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 2);
          if (!result)
          {
            return result;
          }

          v12 = *(a2 + 1);
          v9 = *(a2 + 2);
        }

        else
        {
          *(this + 2) = v11;
          v12 = v10 + 1;
          *(a2 + 1) = v12;
        }

        *(this + 7) |= 1u;
        if (v12 < v9 && *v12 == 16)
        {
          v13 = v12 + 1;
          *(a2 + 1) = v13;
          goto LABEL_24;
        }
      }

      if ((TagFallback & 7) != 0)
      {
        goto LABEL_16;
      }

      v13 = *(a2 + 1);
      v9 = *(a2 + 2);
LABEL_24:
      v25 = 0;
      if (v13 >= v9 || (v15 = *v13, (v15 & 0x80000000) != 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v25);
        if (!result)
        {
          return result;
        }

        v15 = v25;
      }

      else
      {
        *(a2 + 1) = v13 + 1;
      }

      if (v15 <= 4)
      {
        *(this + 7) |= 2u;
        *(this + 3) = v15;
      }

      v16 = *(a2 + 1);
    }

    while (v16 >= *(a2 + 2) || *v16 != 26);
    *(a2 + 1) = v16 + 1;
LABEL_34:
    *(this + 7) |= 4u;
    v17 = *(this + 2);
    if (!v17)
    {
      operator new();
    }

    v26 = 0;
    v18 = *(a2 + 1);
    if (v18 >= *(a2 + 2) || *v18 < 0)
    {
      if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v26))
      {
        return 0;
      }
    }

    else
    {
      v26 = *v18;
      *(a2 + 1) = v18 + 1;
    }

    v19 = *(a2 + 14);
    v20 = *(a2 + 15);
    *(a2 + 14) = v19 + 1;
    if (v19 >= v20)
    {
      return 0;
    }

    wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
    if (!CLP::LogEntry::PrivateData::LeapSecondChange::MergePartialFromCodedStream(v17, a2, v21) || *(a2 + 36) != 1)
    {
      return 0;
    }

    wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
    v22 = *(a2 + 14);
    v23 = __OFSUB__(v22, 1);
    v24 = v22 - 1;
    if (v24 < 0 == v23)
    {
      *(a2 + 14) = v24;
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

uint64_t CLP::LogEntry::PrivateData::LeapSecondInfo::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 28);
  if ((v6 & 1) == 0)
  {
    if ((v6 & 2) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(2, *(v5 + 12), a2, a4);
    if ((*(v5 + 28) & 4) == 0)
    {
      return this;
    }

    goto LABEL_7;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(1, *(this + 8), a2, a4);
  v6 = *(v5 + 28);
  if ((v6 & 2) != 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  if ((v6 & 4) == 0)
  {
    return this;
  }

LABEL_7:
  v7 = *(v5 + 16);
  if (!v7)
  {
    v7 = *(CLP::LogEntry::PrivateData::LeapSecondInfo::default_instance_ + 16);
  }

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(3, v7, a2, a4);
}

uint64_t CLP::LogEntry::PrivateData::LeapSecondInfo::ByteSize(CLP::LogEntry::PrivateData::LeapSecondInfo *this, unint64_t a2)
{
  LOBYTE(v3) = *(this + 28);
  if (!v3)
  {
    v4 = 0;
    goto LABEL_23;
  }

  if (*(this + 28))
  {
    v5 = *(this + 2);
    if (v5 >= 0x80)
    {
      v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5) + 1;
      v3 = *(this + 7);
      if ((v3 & 2) == 0)
      {
        goto LABEL_16;
      }
    }

    else
    {
      v4 = 2;
      if ((v3 & 2) == 0)
      {
        goto LABEL_16;
      }
    }
  }

  else
  {
    v4 = 0;
    if ((*(this + 28) & 2) == 0)
    {
      goto LABEL_16;
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
    v3 = *(this + 7);
  }

  else
  {
    v7 = 2;
  }

  v4 = (v7 + v4);
LABEL_16:
  if ((v3 & 4) != 0)
  {
    v8 = *(this + 2);
    if (!v8)
    {
      v8 = *(CLP::LogEntry::PrivateData::LeapSecondInfo::default_instance_ + 16);
    }

    v9 = CLP::LogEntry::PrivateData::LeapSecondChange::ByteSize(v8, a2);
    v10 = v9;
    if (v9 >= 0x80)
    {
      v11 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v9);
    }

    else
    {
      v11 = 1;
    }

    v4 = (v4 + v10 + v11 + 1);
  }

LABEL_23:
  *(this + 6) = v4;
  return v4;
}

void CLP::LogEntry::PrivateData::LeapSecondInfo::CheckTypeAndMergeFrom(CLP::LogEntry::PrivateData::LeapSecondInfo *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  CLP::LogEntry::PrivateData::LeapSecondInfo::MergeFrom(this, lpsrc);
}

void CLP::LogEntry::PrivateData::LeapSecondInfo::CopyFrom(CLP::LogEntry::PrivateData::LeapSecondInfo *this, const CLP::LogEntry::PrivateData::LeapSecondInfo *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    CLP::LogEntry::PrivateData::LeapSecondInfo::MergeFrom(this, a2);
  }
}

uint64_t CLP::LogEntry::PrivateData::LeapSecondInfo::Swap(uint64_t this, CLP::LogEntry::PrivateData::LeapSecondInfo *a2)
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
    *(this + 16) = *(a2 + 2);
    *(a2 + 2) = v4;
    LODWORD(v4) = *(this + 28);
    *(this + 28) = *(a2 + 7);
    *(a2 + 7) = v4;
    LODWORD(v4) = *(this + 24);
    *(this + 24) = *(a2 + 6);
    *(a2 + 6) = v4;
  }

  return this;
}

double CLP::LogEntry::PrivateData::GpsToUtcConversion::SharedCtor(CLP::LogEntry::PrivateData::GpsToUtcConversion *this)
{
  *(this + 5) = 0;
  result = 0.0;
  *(this + 24) = 0u;
  *(this + 8) = 0u;
  return result;
}

CLP::LogEntry::PrivateData::GpsToUtcConversion *CLP::LogEntry::PrivateData::GpsToUtcConversion::GpsToUtcConversion(CLP::LogEntry::PrivateData::GpsToUtcConversion *this, const CLP::LogEntry::PrivateData::GpsToUtcConversion *a2)
{
  *this = &unk_285860E88;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 5) = 0;
  CLP::LogEntry::PrivateData::GpsToUtcConversion::MergeFrom(this, a2);
  return this;
}

double CLP::LogEntry::PrivateData::GpsToUtcConversion::MergeFrom(CLP::LogEntry::PrivateData::GpsToUtcConversion *this, const CLP::LogEntry::PrivateData::GpsToUtcConversion *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v7);
  }

  LOBYTE(v5) = *(a2 + 44);
  if (v5)
  {
    if (*(a2 + 44))
    {
      v6 = *(a2 + 1);
      *(this + 11) |= 1u;
      *(this + 1) = v6;
      v5 = *(a2 + 11);
      if ((v5 & 2) == 0)
      {
LABEL_6:
        if ((v5 & 4) == 0)
        {
          goto LABEL_7;
        }

        goto LABEL_12;
      }
    }

    else if ((*(a2 + 44) & 2) == 0)
    {
      goto LABEL_6;
    }

    result = *(a2 + 2);
    *(this + 11) |= 2u;
    *(this + 2) = result;
    v5 = *(a2 + 11);
    if ((v5 & 4) == 0)
    {
LABEL_7:
      if ((v5 & 8) == 0)
      {
        return result;
      }

      goto LABEL_8;
    }

LABEL_12:
    result = *(a2 + 3);
    *(this + 11) |= 4u;
    *(this + 3) = result;
    if ((*(a2 + 11) & 8) == 0)
    {
      return result;
    }

LABEL_8:
    result = *(a2 + 4);
    *(this + 11) |= 8u;
    *(this + 4) = result;
  }

  return result;
}

void sub_24552ECD4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void CLP::LogEntry::PrivateData::GpsToUtcConversion::~GpsToUtcConversion(CLP::LogEntry::PrivateData::GpsToUtcConversion *this)
{
  *this = &unk_285860E88;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_285860E88;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_285860E88;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  JUMPOUT(0x245D6AEE0);
}

uint64_t CLP::LogEntry::PrivateData::GpsToUtcConversion::default_instance(CLP::LogEntry::PrivateData::GpsToUtcConversion *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = CLP::LogEntry::PrivateData::GpsToUtcConversion::default_instance_;
  if (!CLP::LogEntry::PrivateData::GpsToUtcConversion::default_instance_)
  {
    CLP::LogEntry::PrivateData::protobuf_AddDesc_CLPGnssMeasApi_2eproto(0, a2, a3, a4);
    return CLP::LogEntry::PrivateData::GpsToUtcConversion::default_instance_;
  }

  return result;
}

uint64_t CLP::LogEntry::PrivateData::GpsToUtcConversion::Clear(uint64_t this)
{
  if (*(this + 44))
  {
    *(this + 24) = 0u;
    *(this + 8) = 0u;
  }

  *(this + 44) = 0;
  return this;
}

uint64_t CLP::LogEntry::PrivateData::GpsToUtcConversion::MergePartialFromCodedStream(CLP::LogEntry::PrivateData::GpsToUtcConversion *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
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

        v7 = TagFallback >> 3;
        v8 = TagFallback & 7;
        if (TagFallback >> 3 <= 2)
        {
          break;
        }

        if (v7 == 3)
        {
          if (v8 != 1)
          {
            goto LABEL_20;
          }

LABEL_32:
          v16 = 0;
          if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, &v16) & 1) == 0)
          {
            return 0;
          }

          *(this + 3) = v16;
          *(this + 11) |= 4u;
          v15 = *(a2 + 1);
          if (v15 < *(a2 + 2) && *v15 == 33)
          {
            *(a2 + 1) = v15 + 1;
            goto LABEL_36;
          }
        }

        else
        {
          if (v7 != 4 || v8 != 1)
          {
            goto LABEL_20;
          }

LABEL_36:
          v16 = 0;
          if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, &v16) & 1) == 0)
          {
            return 0;
          }

          *(this + 4) = v16;
          *(this + 11) |= 8u;
          if (*(a2 + 1) == *(a2 + 2) && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
          {
            *(a2 + 8) = 0;
            result = 1;
            *(a2 + 36) = 1;
            return result;
          }
        }
      }

      if (v7 != 1)
      {
        break;
      }

      if ((TagFallback & 7) != 0)
      {
        goto LABEL_20;
      }

      v10 = *(a2 + 1);
      v9 = *(a2 + 2);
      if (v10 >= v9 || (v11 = *v10, v11 < 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 1);
        if (!result)
        {
          return result;
        }

        v12 = *(a2 + 1);
        v9 = *(a2 + 2);
      }

      else
      {
        *(this + 1) = v11;
        v12 = v10 + 1;
        *(a2 + 1) = v12;
      }

      *(this + 11) |= 1u;
      if (v12 < v9 && *v12 == 17)
      {
        *(a2 + 1) = v12 + 1;
LABEL_28:
        v16 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, &v16) & 1) == 0)
        {
          return 0;
        }

        *(this + 2) = v16;
        *(this + 11) |= 2u;
        v14 = *(a2 + 1);
        if (v14 < *(a2 + 2) && *v14 == 25)
        {
          *(a2 + 1) = v14 + 1;
          goto LABEL_32;
        }
      }
    }

    if (v7 == 2 && v8 == 1)
    {
      goto LABEL_28;
    }

LABEL_20:
    if (v8 == 4)
    {
      return 1;
    }
  }

  while ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(a2, TagFallback) & 1) != 0);
  return 0;
}

uint64_t CLP::LogEntry::PrivateData::GpsToUtcConversion::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 44);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(1, *(this + 8), a2, a4);
    v6 = *(v5 + 44);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

LABEL_8:
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(3, a2, *(v5 + 24), a3);
      if ((*(v5 + 44) & 8) == 0)
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

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(2, a2, *(v5 + 16), a3);
  v6 = *(v5 + 44);
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
  v7 = *(v5 + 32);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(4, a2, v7, a3);
}

uint64_t CLP::LogEntry::PrivateData::GpsToUtcConversion::ByteSize(CLP::LogEntry::PrivateData::GpsToUtcConversion *this, unint64_t a2)
{
  LOBYTE(v3) = *(this + 44);
  if (v3)
  {
    if (*(this + 44))
    {
      v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 1)) + 1;
      v3 = *(this + 11);
    }

    else
    {
      v4 = 0;
    }

    if ((v3 & 2) != 0)
    {
      v4 += 9;
    }

    if ((v3 & 4) != 0)
    {
      v4 += 9;
    }

    if ((v3 & 8) != 0)
    {
      result = v4 + 9;
    }

    else
    {
      result = v4;
    }
  }

  else
  {
    result = 0;
  }

  *(this + 10) = result;
  return result;
}

double CLP::LogEntry::PrivateData::GpsToUtcConversion::CheckTypeAndMergeFrom(CLP::LogEntry::PrivateData::GpsToUtcConversion *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  return CLP::LogEntry::PrivateData::GpsToUtcConversion::MergeFrom(this, lpsrc);
}

double CLP::LogEntry::PrivateData::GpsToUtcConversion::CopyFrom(CLP::LogEntry::PrivateData::GpsToUtcConversion *this, const CLP::LogEntry::PrivateData::GpsToUtcConversion *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    return CLP::LogEntry::PrivateData::GpsToUtcConversion::MergeFrom(this, a2);
  }

  return result;
}

double CLP::LogEntry::PrivateData::GpsToUtcConversion::Swap(CLP::LogEntry::PrivateData::GpsToUtcConversion *this, CLP::LogEntry::PrivateData::GpsToUtcConversion *a2)
{
  if (a2 != this)
  {
    v2 = *(this + 1);
    *(this + 1) = *(a2 + 1);
    *(a2 + 1) = v2;
    v3 = *(this + 2);
    *(this + 2) = *(a2 + 2);
    *(a2 + 2) = v3;
    v4 = *(this + 3);
    *(this + 3) = *(a2 + 3);
    *(a2 + 3) = v4;
    result = *(this + 4);
    *(this + 4) = *(a2 + 4);
    *(a2 + 4) = result;
    LODWORD(v2) = *(this + 11);
    *(this + 11) = *(a2 + 11);
    *(a2 + 11) = v2;
    LODWORD(v2) = *(this + 10);
    *(this + 10) = *(a2 + 10);
    *(a2 + 10) = v2;
  }

  return result;
}

uint64_t CLP::LogEntry::PrivateData::GpsTimeInfo::SharedCtor(uint64_t this)
{
  *(this + 8) = 0;
  *(this + 16) = 0;
  *(this + 32) = 0;
  *(this + 24) = 0;
  return this;
}

CLP::LogEntry::PrivateData::GpsTimeInfo *CLP::LogEntry::PrivateData::GpsTimeInfo::GpsTimeInfo(CLP::LogEntry::PrivateData::GpsTimeInfo *this, const CLP::LogEntry::PrivateData::GpsTimeInfo *a2)
{
  *this = &unk_285860F00;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 3) = 0;
  *(this + 8) = 0;
  CLP::LogEntry::PrivateData::GpsTimeInfo::MergeFrom(this, a2);
  return this;
}

double CLP::LogEntry::PrivateData::GpsTimeInfo::MergeFrom(CLP::LogEntry::PrivateData::GpsTimeInfo *this, const CLP::LogEntry::PrivateData::GpsTimeInfo *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v11);
  }

  LOBYTE(v5) = *(a2 + 32);
  if (v5)
  {
    if (*(a2 + 32))
    {
      v6 = *(a2 + 6);
      *(this + 8) |= 1u;
      *(this + 6) = v6;
      v5 = *(a2 + 8);
      if ((v5 & 2) == 0)
      {
LABEL_6:
        if ((v5 & 4) == 0)
        {
          return result;
        }

        goto LABEL_14;
      }
    }

    else if ((*(a2 + 32) & 2) == 0)
    {
      goto LABEL_6;
    }

    *(this + 8) |= 2u;
    v7 = *(this + 1);
    if (!v7)
    {
      operator new();
    }

    v8 = *(a2 + 1);
    if (!v8)
    {
      v8 = *(CLP::LogEntry::PrivateData::GpsTimeInfo::default_instance_ + 8);
    }

    CLP::LogEntry::PrivateData::LeapSecondInfo::MergeFrom(v7, v8);
    if ((*(a2 + 8) & 4) != 0)
    {
LABEL_14:
      *(this + 8) |= 4u;
      v9 = *(this + 2);
      if (!v9)
      {
        operator new();
      }

      v10 = *(a2 + 2);
      if (!v10)
      {
        v10 = *(CLP::LogEntry::PrivateData::GpsTimeInfo::default_instance_ + 16);
      }

      return CLP::LogEntry::PrivateData::GpsToUtcConversion::MergeFrom(v9, v10);
    }
  }

  return result;
}

void sub_24552F530(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void CLP::LogEntry::PrivateData::GpsTimeInfo::~GpsTimeInfo(CLP::LogEntry::PrivateData::GpsTimeInfo *this)
{
  *this = &unk_285860F00;
  CLP::LogEntry::PrivateData::GpsTimeInfo::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_285860F00;
  CLP::LogEntry::PrivateData::GpsTimeInfo::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_285860F00;
  CLP::LogEntry::PrivateData::GpsTimeInfo::SharedDtor(this);
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  JUMPOUT(0x245D6AEE0);
}

void *CLP::LogEntry::PrivateData::GpsTimeInfo::SharedDtor(void *this)
{
  if (CLP::LogEntry::PrivateData::GpsTimeInfo::default_instance_ != this)
  {
    v1 = this;
    v2 = this[1];
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }

    this = v1[2];
    if (this)
    {
      v3 = *(*this + 8);

      return v3();
    }
  }

  return this;
}

uint64_t CLP::LogEntry::PrivateData::GpsTimeInfo::default_instance(CLP::LogEntry::PrivateData::GpsTimeInfo *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = CLP::LogEntry::PrivateData::GpsTimeInfo::default_instance_;
  if (!CLP::LogEntry::PrivateData::GpsTimeInfo::default_instance_)
  {
    CLP::LogEntry::PrivateData::protobuf_AddDesc_CLPGnssMeasApi_2eproto(0, a2, a3, a4);
    return CLP::LogEntry::PrivateData::GpsTimeInfo::default_instance_;
  }

  return result;
}

uint64_t CLP::LogEntry::PrivateData::GpsTimeInfo::Clear(uint64_t this)
{
  v1 = this;
  LOBYTE(v2) = *(this + 32);
  if (v2)
  {
    *(this + 24) = 0;
    if ((v2 & 2) != 0)
    {
      this = *(this + 8);
      if (this)
      {
        this = CLP::LogEntry::PrivateData::LeapSecondInfo::Clear(this);
        v2 = *(v1 + 32);
      }
    }

    if ((v2 & 4) != 0)
    {
      v3 = *(v1 + 16);
      if (v3)
      {
        if (*(v3 + 44))
        {
          *(v3 + 24) = 0u;
          *(v3 + 8) = 0u;
        }

        *(v3 + 44) = 0;
      }
    }
  }

  *(v1 + 32) = 0;
  return this;
}

uint64_t CLP::LogEntry::PrivateData::GpsTimeInfo::MergePartialFromCodedStream(CLP::LogEntry::PrivateData::GpsTimeInfo *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
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
      v8 = TagFallback & 7;
      if (TagFallback >> 3 == 3)
      {
        break;
      }

      if (v7 == 2)
      {
        if (v8 != 2)
        {
          goto LABEL_16;
        }

        v13 = *(this + 8);
LABEL_24:
        *(this + 8) = v13 | 2;
        v15 = *(this + 1);
        if (!v15)
        {
          operator new();
        }

        v31 = 0;
        v16 = *(a2 + 1);
        if (v16 >= *(a2 + 2) || *v16 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v31))
          {
            return 0;
          }
        }

        else
        {
          v31 = *v16;
          *(a2 + 1) = v16 + 1;
        }

        v17 = *(a2 + 14);
        v18 = *(a2 + 15);
        *(a2 + 14) = v17 + 1;
        if (v17 >= v18)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
        if (!CLP::LogEntry::PrivateData::LeapSecondInfo::MergePartialFromCodedStream(v15, a2, v19) || *(a2 + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
        v20 = *(a2 + 14);
        v21 = __OFSUB__(v20, 1);
        v22 = v20 - 1;
        if (v22 < 0 == v21)
        {
          *(a2 + 14) = v22;
        }

        v23 = *(a2 + 1);
        if (v23 < *(a2 + 2) && *v23 == 26)
        {
          *(a2 + 1) = v23 + 1;
LABEL_38:
          *(this + 8) |= 4u;
          v24 = *(this + 2);
          if (!v24)
          {
            operator new();
          }

          v32 = 0;
          v25 = *(a2 + 1);
          if (v25 >= *(a2 + 2) || *v25 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v32))
            {
              return 0;
            }
          }

          else
          {
            v32 = *v25;
            *(a2 + 1) = v25 + 1;
          }

          v26 = *(a2 + 14);
          v27 = *(a2 + 15);
          *(a2 + 14) = v26 + 1;
          if (v26 >= v27)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
          if (!CLP::LogEntry::PrivateData::GpsToUtcConversion::MergePartialFromCodedStream(v24, a2, v28) || *(a2 + 36) != 1)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
          v29 = *(a2 + 14);
          v21 = __OFSUB__(v29, 1);
          v30 = v29 - 1;
          if (v30 < 0 == v21)
          {
            *(a2 + 14) = v30;
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

      else
      {
        if (v7 != 1 || (TagFallback & 7) != 0)
        {
          goto LABEL_16;
        }

        v10 = *(a2 + 1);
        v9 = *(a2 + 2);
        if (v10 >= v9 || (v11 = *v10, v11 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 6);
          if (!result)
          {
            return result;
          }

          v12 = *(a2 + 1);
          v9 = *(a2 + 2);
        }

        else
        {
          *(this + 6) = v11;
          v12 = v10 + 1;
          *(a2 + 1) = v12;
        }

        v13 = *(this + 8) | 1;
        *(this + 8) = v13;
        if (v12 < v9 && *v12 == 18)
        {
          *(a2 + 1) = v12 + 1;
          goto LABEL_24;
        }
      }
    }

    if (v8 == 2)
    {
      goto LABEL_38;
    }

LABEL_16:
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

uint64_t CLP::LogEntry::PrivateData::GpsTimeInfo::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 32);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(1, *(this + 24), a2, a4);
    v6 = *(v5 + 32);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
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

  v7 = *(v5 + 8);
  if (!v7)
  {
    v7 = *(CLP::LogEntry::PrivateData::GpsTimeInfo::default_instance_ + 8);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(2, v7, a2, a4);
  if ((*(v5 + 32) & 4) != 0)
  {
LABEL_9:
    v8 = *(v5 + 16);
    if (!v8)
    {
      v8 = *(CLP::LogEntry::PrivateData::GpsTimeInfo::default_instance_ + 16);
    }

    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(3, v8, a2, a4);
  }

  return this;
}

uint64_t CLP::LogEntry::PrivateData::GpsTimeInfo::ByteSize(CLP::LogEntry::PrivateData::GpsTimeInfo *this, unint64_t a2)
{
  LOBYTE(v3) = *(this + 32);
  if (!v3)
  {
    v4 = 0;
    goto LABEL_23;
  }

  if ((*(this + 32) & 1) == 0)
  {
    v4 = 0;
    if ((*(this + 32) & 2) == 0)
    {
      goto LABEL_16;
    }

LABEL_10:
    v6 = *(this + 1);
    if (!v6)
    {
      v6 = *(CLP::LogEntry::PrivateData::GpsTimeInfo::default_instance_ + 8);
    }

    v7 = CLP::LogEntry::PrivateData::LeapSecondInfo::ByteSize(v6, a2);
    v8 = v7;
    if (v7 >= 0x80)
    {
      v9 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v7);
    }

    else
    {
      v9 = 1;
    }

    v4 = (v4 + v8 + v9 + 1);
    v3 = *(this + 8);
    goto LABEL_16;
  }

  v5 = *(this + 6);
  if (v5 >= 0x80)
  {
    v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5) + 1;
    v3 = *(this + 8);
    if ((v3 & 2) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_10;
  }

  v4 = 2;
  if ((v3 & 2) != 0)
  {
    goto LABEL_10;
  }

LABEL_16:
  if ((v3 & 4) != 0)
  {
    v10 = *(this + 2);
    if (!v10)
    {
      v10 = *(CLP::LogEntry::PrivateData::GpsTimeInfo::default_instance_ + 16);
    }

    v11 = CLP::LogEntry::PrivateData::GpsToUtcConversion::ByteSize(v10, a2);
    v12 = v11;
    if (v11 >= 0x80)
    {
      v13 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v11);
    }

    else
    {
      v13 = 1;
    }

    v4 = (v4 + v12 + v13 + 1);
  }

LABEL_23:
  *(this + 7) = v4;
  return v4;
}

double CLP::LogEntry::PrivateData::GpsTimeInfo::CheckTypeAndMergeFrom(CLP::LogEntry::PrivateData::GpsTimeInfo *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  return CLP::LogEntry::PrivateData::GpsTimeInfo::MergeFrom(this, lpsrc);
}

double CLP::LogEntry::PrivateData::GpsTimeInfo::CopyFrom(CLP::LogEntry::PrivateData::GpsTimeInfo *this, const CLP::LogEntry::PrivateData::GpsTimeInfo *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    return CLP::LogEntry::PrivateData::GpsTimeInfo::MergeFrom(this, a2);
  }

  return result;
}

uint64_t CLP::LogEntry::PrivateData::GpsTimeInfo::Swap(uint64_t this, CLP::LogEntry::PrivateData::GpsTimeInfo *a2)
{
  if (a2 != this)
  {
    v2 = *(this + 24);
    *(this + 24) = *(a2 + 6);
    *(a2 + 6) = v2;
    v3 = *(this + 8);
    *(this + 8) = *(a2 + 1);
    *(a2 + 1) = v3;
    v4 = *(this + 16);
    *(this + 16) = *(a2 + 2);
    *(a2 + 2) = v4;
    LODWORD(v4) = *(this + 32);
    *(this + 32) = *(a2 + 8);
    *(a2 + 8) = v4;
    LODWORD(v4) = *(this + 28);
    *(this + 28) = *(a2 + 7);
    *(a2 + 7) = v4;
  }

  return this;
}

void *CLP::LogEntry::PrivateData::GlonassSubsecondConversion::SharedCtor(void *this)
{
  this[1] = 0;
  this[2] = 0;
  this[3] = 0;
  return this;
}

CLP::LogEntry::PrivateData::GlonassSubsecondConversion *CLP::LogEntry::PrivateData::GlonassSubsecondConversion::GlonassSubsecondConversion(CLP::LogEntry::PrivateData::GlonassSubsecondConversion *this, const CLP::LogEntry::PrivateData::GlonassSubsecondConversion *a2)
{
  *this = &unk_285860F78;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 3) = 0;
  CLP::LogEntry::PrivateData::GlonassSubsecondConversion::MergeFrom(this, a2);
  return this;
}

double CLP::LogEntry::PrivateData::GlonassSubsecondConversion::MergeFrom(CLP::LogEntry::PrivateData::GlonassSubsecondConversion *this, const CLP::LogEntry::PrivateData::GlonassSubsecondConversion *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v7);
  }

  LOBYTE(v5) = *(a2 + 28);
  if (v5)
  {
    if (*(a2 + 28))
    {
      v6 = *(a2 + 1);
      *(this + 7) |= 1u;
      *(this + 1) = v6;
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

void sub_24552FFC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void CLP::LogEntry::PrivateData::GlonassSubsecondConversion::~GlonassSubsecondConversion(CLP::LogEntry::PrivateData::GlonassSubsecondConversion *this)
{
  *this = &unk_285860F78;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_285860F78;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_285860F78;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  JUMPOUT(0x245D6AEE0);
}

uint64_t CLP::LogEntry::PrivateData::GlonassSubsecondConversion::default_instance(CLP::LogEntry::PrivateData::GlonassSubsecondConversion *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = CLP::LogEntry::PrivateData::GlonassSubsecondConversion::default_instance_;
  if (!CLP::LogEntry::PrivateData::GlonassSubsecondConversion::default_instance_)
  {
    CLP::LogEntry::PrivateData::protobuf_AddDesc_CLPGnssMeasApi_2eproto(0, a2, a3, a4);
    return CLP::LogEntry::PrivateData::GlonassSubsecondConversion::default_instance_;
  }

  return result;
}

uint64_t CLP::LogEntry::PrivateData::GlonassSubsecondConversion::Clear(uint64_t this)
{
  if (*(this + 28))
  {
    *(this + 8) = 0;
    *(this + 16) = 0;
  }

  *(this + 28) = 0;
  return this;
}

uint64_t CLP::LogEntry::PrivateData::GlonassSubsecondConversion::MergePartialFromCodedStream(CLP::LogEntry::PrivateData::GlonassSubsecondConversion *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
{
  do
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

      v9 = *(a2 + 1);
      v8 = *(a2 + 2);
      if (v9 >= v8 || (v10 = *v9, v10 < 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 1);
        if (!result)
        {
          return result;
        }

        v11 = *(a2 + 1);
        v8 = *(a2 + 2);
      }

      else
      {
        *(this + 1) = v10;
        v11 = v9 + 1;
        *(a2 + 1) = v11;
      }

      *(this + 7) |= 1u;
      if (v11 < v8 && *v11 == 17)
      {
        *(a2 + 1) = v11 + 1;
LABEL_21:
        v13 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, &v13) & 1) == 0)
        {
          return 0;
        }

        *(this + 2) = v13;
        *(this + 7) |= 2u;
        if (*(a2 + 1) == *(a2 + 2) && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
        {
          *(a2 + 8) = 0;
          result = 1;
          *(a2 + 36) = 1;
          return result;
        }
      }
    }

    if (v7 == 1)
    {
      goto LABEL_21;
    }

LABEL_13:
    if (v7 == 4)
    {
      return 1;
    }
  }

  while ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(a2, TagFallback) & 1) != 0);
  return 0;
}

uint64_t CLP::LogEntry::PrivateData::GlonassSubsecondConversion::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 28);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(1, *(this + 8), a2, a4);
    v6 = *(v5 + 28);
  }

  if ((v6 & 2) != 0)
  {
    v7 = *(v5 + 16);

    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(2, a2, v7, a3);
  }

  return this;
}

uint64_t CLP::LogEntry::PrivateData::GlonassSubsecondConversion::ByteSize(CLP::LogEntry::PrivateData::GlonassSubsecondConversion *this, unint64_t a2)
{
  LOBYTE(v3) = *(this + 28);
  if (v3)
  {
    if (*(this + 28))
    {
      v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 1)) + 1;
      v3 = *(this + 7);
    }

    else
    {
      v4 = 0;
    }

    if ((v3 & 2) != 0)
    {
      result = v4 + 9;
    }

    else
    {
      result = v4;
    }
  }

  else
  {
    result = 0;
  }

  *(this + 6) = result;
  return result;
}

double CLP::LogEntry::PrivateData::GlonassSubsecondConversion::CheckTypeAndMergeFrom(CLP::LogEntry::PrivateData::GlonassSubsecondConversion *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  return CLP::LogEntry::PrivateData::GlonassSubsecondConversion::MergeFrom(this, lpsrc);
}

double CLP::LogEntry::PrivateData::GlonassSubsecondConversion::CopyFrom(CLP::LogEntry::PrivateData::GlonassSubsecondConversion *this, const CLP::LogEntry::PrivateData::GlonassSubsecondConversion *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    return CLP::LogEntry::PrivateData::GlonassSubsecondConversion::MergeFrom(this, a2);
  }

  return result;
}

double CLP::LogEntry::PrivateData::GlonassSubsecondConversion::Swap(CLP::LogEntry::PrivateData::GlonassSubsecondConversion *this, CLP::LogEntry::PrivateData::GlonassSubsecondConversion *a2)
{
  if (a2 != this)
  {
    v2 = *(this + 1);
    *(this + 1) = *(a2 + 1);
    *(a2 + 1) = v2;
    result = *(this + 2);
    *(this + 2) = *(a2 + 2);
    *(a2 + 2) = result;
    LODWORD(v2) = *(this + 7);
    *(this + 7) = *(a2 + 7);
    *(a2 + 7) = v2;
    LODWORD(v2) = *(this + 6);
    *(this + 6) = *(a2 + 6);
    *(a2 + 6) = v2;
  }

  return result;
}

double CLP::LogEntry::PrivateData::GlonassTimeInfo::SharedCtor(CLP::LogEntry::PrivateData::GlonassTimeInfo *this)
{
  *(this + 10) = 0;
  result = 0.0;
  *(this + 24) = 0u;
  *(this + 8) = 0u;
  return result;
}

CLP::LogEntry::PrivateData::GlonassTimeInfo *CLP::LogEntry::PrivateData::GlonassTimeInfo::GlonassTimeInfo(CLP::LogEntry::PrivateData::GlonassTimeInfo *this, const CLP::LogEntry::PrivateData::GlonassTimeInfo *a2)
{
  *this = &unk_285860FF0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 10) = 0;
  CLP::LogEntry::PrivateData::GlonassTimeInfo::MergeFrom(this, a2);
  return this;
}

double CLP::LogEntry::PrivateData::GlonassTimeInfo::MergeFrom(CLP::LogEntry::PrivateData::GlonassTimeInfo *this, const CLP::LogEntry::PrivateData::GlonassTimeInfo *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v13);
  }

  LOBYTE(v5) = *(a2 + 40);
  if (!v5)
  {
    return result;
  }

  if (*(a2 + 40))
  {
    v6 = *(a2 + 2);
    *(this + 10) |= 1u;
    *(this + 2) = v6;
    v5 = *(a2 + 10);
    if ((v5 & 2) == 0)
    {
LABEL_6:
      if ((v5 & 4) == 0)
      {
        goto LABEL_7;
      }

LABEL_12:
      v8 = *(a2 + 8);
      if (v8 >= 6)
      {
        __assert_rtn("set_leap_second_deprecated", "CLPGnssMeasApi.pb.h", 11971, "::CLP::LogEntry::PrivateData::GlonassLeapSecondDeprecated_IsValid(value)");
      }

      *(this + 10) |= 4u;
      *(this + 8) = v8;
      v5 = *(a2 + 10);
      if ((v5 & 8) == 0)
      {
LABEL_8:
        if ((v5 & 0x10) == 0)
        {
          return result;
        }

        goto LABEL_19;
      }

      goto LABEL_14;
    }
  }

  else if ((*(a2 + 40) & 2) == 0)
  {
    goto LABEL_6;
  }

  v7 = *(a2 + 3);
  *(this + 10) |= 2u;
  *(this + 3) = v7;
  v5 = *(a2 + 10);
  if ((v5 & 4) != 0)
  {
    goto LABEL_12;
  }

LABEL_7:
  if ((v5 & 8) == 0)
  {
    goto LABEL_8;
  }

LABEL_14:
  *(this + 10) |= 8u;
  v9 = *(this + 2);
  if (!v9)
  {
    operator new();
  }

  v10 = *(a2 + 2);
  if (!v10)
  {
    v10 = *(CLP::LogEntry::PrivateData::GlonassTimeInfo::default_instance_ + 16);
  }

  result = CLP::LogEntry::PrivateData::GlonassSubsecondConversion::MergeFrom(v9, v10);
  if ((*(a2 + 10) & 0x10) != 0)
  {
LABEL_19:
    *(this + 10) |= 0x10u;
    v11 = *(this + 3);
    if (!v11)
    {
      operator new();
    }

    v12 = *(a2 + 3);
    if (!v12)
    {
      v12 = *(CLP::LogEntry::PrivateData::GlonassTimeInfo::default_instance_ + 24);
    }

    return CLP::LogEntry::PrivateData::GlonassSubsecondConversion::MergeFrom(v11, v12);
  }

  return result;
}

void sub_245530744(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void CLP::LogEntry::PrivateData::GlonassTimeInfo::~GlonassTimeInfo(CLP::LogEntry::PrivateData::GlonassTimeInfo *this)
{
  *this = &unk_285860FF0;
  CLP::LogEntry::PrivateData::GlonassTimeInfo::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_285860FF0;
  CLP::LogEntry::PrivateData::GlonassTimeInfo::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_285860FF0;
  CLP::LogEntry::PrivateData::GlonassTimeInfo::SharedDtor(this);
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  JUMPOUT(0x245D6AEE0);
}

void *CLP::LogEntry::PrivateData::GlonassTimeInfo::SharedDtor(void *this)
{
  if (CLP::LogEntry::PrivateData::GlonassTimeInfo::default_instance_ != this)
  {
    v1 = this;
    v2 = this[2];
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }

    this = v1[3];
    if (this)
    {
      v3 = *(*this + 8);

      return v3();
    }
  }

  return this;
}

uint64_t CLP::LogEntry::PrivateData::GlonassTimeInfo::default_instance(CLP::LogEntry::PrivateData::GlonassTimeInfo *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = CLP::LogEntry::PrivateData::GlonassTimeInfo::default_instance_;
  if (!CLP::LogEntry::PrivateData::GlonassTimeInfo::default_instance_)
  {
    CLP::LogEntry::PrivateData::protobuf_AddDesc_CLPGnssMeasApi_2eproto(0, a2, a3, a4);
    return CLP::LogEntry::PrivateData::GlonassTimeInfo::default_instance_;
  }

  return result;
}

uint64_t CLP::LogEntry::PrivateData::GlonassTimeInfo::Clear(uint64_t this)
{
  LOBYTE(v1) = *(this + 40);
  if (v1)
  {
    *(this + 8) = 0;
    *(this + 32) = 0;
    if ((v1 & 8) != 0)
    {
      v2 = *(this + 16);
      if (v2)
      {
        if (*(v2 + 28))
        {
          *(v2 + 8) = 0;
          *(v2 + 16) = 0;
        }

        *(v2 + 28) = 0;
        v1 = *(this + 40);
      }
    }

    if ((v1 & 0x10) != 0)
    {
      v3 = *(this + 24);
      if (v3)
      {
        if (*(v3 + 28))
        {
          *(v3 + 8) = 0;
          *(v3 + 16) = 0;
        }

        *(v3 + 28) = 0;
      }
    }
  }

  *(this + 40) = 0;
  return this;
}

uint64_t CLP::LogEntry::PrivateData::GlonassTimeInfo::MergePartialFromCodedStream(CLP::LogEntry::PrivateData::GlonassTimeInfo *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
{
  while (1)
  {
    while (1)
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
          v8 = TagFallback & 7;
          if (TagFallback >> 3 > 2)
          {
            break;
          }

          if (v7 != 1)
          {
            if (v7 != 2 || (TagFallback & 7) != 0)
            {
              goto LABEL_21;
            }

            v10 = *(a2 + 1);
            v9 = *(a2 + 2);
            goto LABEL_32;
          }

          if ((TagFallback & 7) != 0)
          {
            goto LABEL_21;
          }

          v12 = *(a2 + 1);
          v9 = *(a2 + 2);
          if (v12 >= v9 || (v13 = *v12, v13 < 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 2);
            if (!result)
            {
              return result;
            }

            v14 = *(a2 + 1);
            v9 = *(a2 + 2);
          }

          else
          {
            *(this + 2) = v13;
            v14 = v12 + 1;
            *(a2 + 1) = v14;
          }

          *(this + 10) |= 1u;
          if (v14 < v9 && *v14 == 16)
          {
            v10 = v14 + 1;
            *(a2 + 1) = v10;
LABEL_32:
            if (v10 >= v9 || (v16 = *v10, v16 < 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 3);
              if (!result)
              {
                return result;
              }

              v17 = *(a2 + 1);
              v9 = *(a2 + 2);
            }

            else
            {
              *(this + 3) = v16;
              v17 = v10 + 1;
              *(a2 + 1) = v17;
            }

            *(this + 10) |= 2u;
            if (v17 < v9 && *v17 == 24)
            {
              v11 = v17 + 1;
              *(a2 + 1) = v11;
              goto LABEL_40;
            }
          }
        }

        if (v7 != 3)
        {
          break;
        }

        if ((TagFallback & 7) != 0)
        {
          goto LABEL_21;
        }

        v11 = *(a2 + 1);
        v9 = *(a2 + 2);
LABEL_40:
        v36 = 0;
        if (v11 >= v9 || (v18 = *v11, (v18 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v36);
          if (!result)
          {
            return result;
          }

          v18 = v36;
        }

        else
        {
          *(a2 + 1) = v11 + 1;
        }

        if (v18 <= 5)
        {
          *(this + 10) |= 4u;
          *(this + 8) = v18;
        }

        v19 = *(a2 + 1);
        if (v19 < *(a2 + 2) && *v19 == 34)
        {
          *(a2 + 1) = v19 + 1;
LABEL_50:
          *(this + 10) |= 8u;
          v20 = *(this + 2);
          if (!v20)
          {
            operator new();
          }

          v37 = 0;
          v21 = *(a2 + 1);
          if (v21 >= *(a2 + 2) || *v21 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v37))
            {
              return 0;
            }
          }

          else
          {
            v37 = *v21;
            *(a2 + 1) = v21 + 1;
          }

          v22 = *(a2 + 14);
          v23 = *(a2 + 15);
          *(a2 + 14) = v22 + 1;
          if (v22 >= v23)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
          if (!CLP::LogEntry::PrivateData::GlonassSubsecondConversion::MergePartialFromCodedStream(v20, a2, v24) || *(a2 + 36) != 1)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
          v25 = *(a2 + 14);
          v26 = __OFSUB__(v25, 1);
          v27 = v25 - 1;
          if (v27 < 0 == v26)
          {
            *(a2 + 14) = v27;
          }

          v28 = *(a2 + 1);
          if (v28 < *(a2 + 2) && *v28 == 42)
          {
            *(a2 + 1) = v28 + 1;
            goto LABEL_64;
          }
        }
      }

      if (v7 != 4)
      {
        break;
      }

      if (v8 == 2)
      {
        goto LABEL_50;
      }

LABEL_21:
      if (v8 == 4)
      {
        return 1;
      }

      if ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(a2, TagFallback) & 1) == 0)
      {
        return 0;
      }
    }

    if (v7 != 5 || v8 != 2)
    {
      goto LABEL_21;
    }

LABEL_64:
    *(this + 10) |= 0x10u;
    v29 = *(this + 3);
    if (!v29)
    {
      operator new();
    }

    v38 = 0;
    v30 = *(a2 + 1);
    if (v30 >= *(a2 + 2) || *v30 < 0)
    {
      if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v38))
      {
        return 0;
      }
    }

    else
    {
      v38 = *v30;
      *(a2 + 1) = v30 + 1;
    }

    v31 = *(a2 + 14);
    v32 = *(a2 + 15);
    *(a2 + 14) = v31 + 1;
    if (v31 >= v32)
    {
      return 0;
    }

    wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
    if (!CLP::LogEntry::PrivateData::GlonassSubsecondConversion::MergePartialFromCodedStream(v29, a2, v33) || *(a2 + 36) != 1)
    {
      return 0;
    }

    wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
    v34 = *(a2 + 14);
    v26 = __OFSUB__(v34, 1);
    v35 = v34 - 1;
    if (v35 < 0 == v26)
    {
      *(a2 + 14) = v35;
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

uint64_t CLP::LogEntry::PrivateData::GlonassTimeInfo::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 40);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(1, *(this + 8), a2, a4);
    v6 = *(v5 + 40);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_9;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(2, *(v5 + 12), a2, a4);
  v6 = *(v5 + 40);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

LABEL_9:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(3, *(v5 + 32), a2, a4);
  v6 = *(v5 + 40);
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      return this;
    }

    goto LABEL_13;
  }

LABEL_10:
  v7 = *(v5 + 16);
  if (!v7)
  {
    v7 = *(CLP::LogEntry::PrivateData::GlonassTimeInfo::default_instance_ + 16);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(4, v7, a2, a4);
  if ((*(v5 + 40) & 0x10) != 0)
  {
LABEL_13:
    v8 = *(v5 + 24);
    if (!v8)
    {
      v8 = *(CLP::LogEntry::PrivateData::GlonassTimeInfo::default_instance_ + 24);
    }

    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(5, v8, a2, a4);
  }

  return this;
}

uint64_t CLP::LogEntry::PrivateData::GlonassTimeInfo::ByteSize(CLP::LogEntry::PrivateData::GlonassTimeInfo *this, unint64_t a2)
{
  LOBYTE(v3) = *(this + 40);
  if (!v3)
  {
    v4 = 0;
    goto LABEL_36;
  }

  if (*(this + 40))
  {
    v5 = *(this + 2);
    if (v5 >= 0x80)
    {
      v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5) + 1;
      v3 = *(this + 10);
      if ((v3 & 2) == 0)
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
    if ((*(this + 40) & 2) == 0)
    {
      goto LABEL_14;
    }
  }

  v6 = *(this + 3);
  if (v6 >= 0x80)
  {
    v7 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v6) + 1;
    v3 = *(this + 10);
  }

  else
  {
    v7 = 2;
  }

  v4 = (v7 + v4);
LABEL_14:
  if ((v3 & 4) != 0)
  {
    v8 = *(this + 8);
    if ((v8 & 0x80000000) != 0)
    {
      v9 = 11;
    }

    else if (v8 >= 0x80)
    {
      v9 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v8) + 1;
      v3 = *(this + 10);
    }

    else
    {
      v9 = 2;
    }

    v4 = (v9 + v4);
    if ((v3 & 8) == 0)
    {
LABEL_16:
      if ((v3 & 0x10) == 0)
      {
        goto LABEL_36;
      }

      goto LABEL_30;
    }
  }

  else if ((v3 & 8) == 0)
  {
    goto LABEL_16;
  }

  v10 = *(this + 2);
  if (!v10)
  {
    v10 = *(CLP::LogEntry::PrivateData::GlonassTimeInfo::default_instance_ + 16);
  }

  v11 = CLP::LogEntry::PrivateData::GlonassSubsecondConversion::ByteSize(v10, a2);
  v12 = v11;
  if (v11 >= 0x80)
  {
    v13 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v11);
  }

  else
  {
    v13 = 1;
  }

  v4 = (v4 + v12 + v13 + 1);
  if ((*(this + 10) & 0x10) != 0)
  {
LABEL_30:
    v14 = *(this + 3);
    if (!v14)
    {
      v14 = *(CLP::LogEntry::PrivateData::GlonassTimeInfo::default_instance_ + 24);
    }

    v15 = CLP::LogEntry::PrivateData::GlonassSubsecondConversion::ByteSize(v14, a2);
    v16 = v15;
    if (v15 >= 0x80)
    {
      v17 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v15);
    }

    else
    {
      v17 = 1;
    }

    v4 = (v4 + v16 + v17 + 1);
  }

LABEL_36:
  *(this + 9) = v4;
  return v4;
}

double CLP::LogEntry::PrivateData::GlonassTimeInfo::CheckTypeAndMergeFrom(CLP::LogEntry::PrivateData::GlonassTimeInfo *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  return CLP::LogEntry::PrivateData::GlonassTimeInfo::MergeFrom(this, lpsrc);
}

double CLP::LogEntry::PrivateData::GlonassTimeInfo::CopyFrom(CLP::LogEntry::PrivateData::GlonassTimeInfo *this, const CLP::LogEntry::PrivateData::GlonassTimeInfo *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    return CLP::LogEntry::PrivateData::GlonassTimeInfo::MergeFrom(this, a2);
  }

  return result;
}

uint64_t CLP::LogEntry::PrivateData::GlonassTimeInfo::Swap(uint64_t this, CLP::LogEntry::PrivateData::GlonassTimeInfo *a2)
{
  if (a2 != this)
  {
    v2 = *(this + 8);
    *(this + 8) = *(a2 + 2);
    *(a2 + 2) = v2;
    v3 = *(this + 12);
    *(this + 12) = *(a2 + 3);
    *(a2 + 3) = v3;
    v4 = *(this + 32);
    *(this + 32) = *(a2 + 8);
    *(a2 + 8) = v4;
    v5 = *(this + 16);
    *(this + 16) = *(a2 + 2);
    *(a2 + 2) = v5;
    v6 = *(this + 24);
    *(this + 24) = *(a2 + 3);
    *(a2 + 3) = v6;
    LODWORD(v6) = *(this + 40);
    *(this + 40) = *(a2 + 10);
    *(a2 + 10) = v6;
    LODWORD(v6) = *(this + 36);
    *(this + 36) = *(a2 + 9);
    *(a2 + 9) = v6;
  }

  return this;
}

double CLP::LogEntry::PrivateData::SubSecondConversion::SharedCtor(CLP::LogEntry::PrivateData::SubSecondConversion *this)
{
  result = 0.0;
  *(this + 24) = 0u;
  *(this + 8) = 0u;
  return result;
}

CLP::LogEntry::PrivateData::SubSecondConversion *CLP::LogEntry::PrivateData::SubSecondConversion::SubSecondConversion(CLP::LogEntry::PrivateData::SubSecondConversion *this, const CLP::LogEntry::PrivateData::SubSecondConversion *a2)
{
  *this = &unk_285861068;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  CLP::LogEntry::PrivateData::SubSecondConversion::MergeFrom(this, a2);
  return this;
}

double CLP::LogEntry::PrivateData::SubSecondConversion::MergeFrom(CLP::LogEntry::PrivateData::SubSecondConversion *this, const CLP::LogEntry::PrivateData::SubSecondConversion *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v7);
  }

  LOBYTE(v5) = *(a2 + 36);
  if (v5)
  {
    if (*(a2 + 36))
    {
      v6 = *(a2 + 1);
      *(this + 9) |= 1u;
      *(this + 1) = v6;
      v5 = *(a2 + 9);
      if ((v5 & 2) == 0)
      {
LABEL_6:
        if ((v5 & 4) == 0)
        {
          return result;
        }

        goto LABEL_7;
      }
    }

    else if ((*(a2 + 36) & 2) == 0)
    {
      goto LABEL_6;
    }

    result = *(a2 + 2);
    *(this + 9) |= 2u;
    *(this + 2) = result;
    if ((*(a2 + 9) & 4) == 0)
    {
      return result;
    }

LABEL_7:
    result = *(a2 + 3);
    *(this + 9) |= 4u;
    *(this + 3) = result;
  }

  return result;
}

void sub_2455313A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void CLP::LogEntry::PrivateData::SubSecondConversion::~SubSecondConversion(CLP::LogEntry::PrivateData::SubSecondConversion *this)
{
  *this = &unk_285861068;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_285861068;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_285861068;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  JUMPOUT(0x245D6AEE0);
}

uint64_t CLP::LogEntry::PrivateData::SubSecondConversion::default_instance(CLP::LogEntry::PrivateData::SubSecondConversion *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = CLP::LogEntry::PrivateData::SubSecondConversion::default_instance_;
  if (!CLP::LogEntry::PrivateData::SubSecondConversion::default_instance_)
  {
    CLP::LogEntry::PrivateData::protobuf_AddDesc_CLPGnssMeasApi_2eproto(0, a2, a3, a4);
    return CLP::LogEntry::PrivateData::SubSecondConversion::default_instance_;
  }

  return result;
}

uint64_t CLP::LogEntry::PrivateData::SubSecondConversion::Clear(uint64_t this)
{
  if (*(this + 36))
  {
    *(this + 8) = 0;
    *(this + 16) = 0;
    *(this + 24) = 0;
  }

  *(this + 36) = 0;
  return this;
}

uint64_t CLP::LogEntry::PrivateData::SubSecondConversion::MergePartialFromCodedStream(CLP::LogEntry::PrivateData::SubSecondConversion *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
{
  do
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
      v8 = TagFallback & 7;
      if (TagFallback >> 3 == 3)
      {
        if (v8 == 1)
        {
          goto LABEL_28;
        }

        goto LABEL_16;
      }

      if (v7 == 2)
      {
        break;
      }

      if (v7 != 1 || (TagFallback & 7) != 0)
      {
        goto LABEL_16;
      }

      v10 = *(a2 + 1);
      v9 = *(a2 + 2);
      if (v10 >= v9 || (v11 = *v10, v11 < 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 1);
        if (!result)
        {
          return result;
        }

        v12 = *(a2 + 1);
        v9 = *(a2 + 2);
      }

      else
      {
        *(this + 1) = v11;
        v12 = v10 + 1;
        *(a2 + 1) = v12;
      }

      *(this + 9) |= 1u;
      if (v12 < v9 && *v12 == 17)
      {
        *(a2 + 1) = v12 + 1;
LABEL_24:
        v15 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, &v15) & 1) == 0)
        {
          return 0;
        }

        *(this + 2) = v15;
        *(this + 9) |= 2u;
        v14 = *(a2 + 1);
        if (v14 < *(a2 + 2) && *v14 == 25)
        {
          *(a2 + 1) = v14 + 1;
LABEL_28:
          v15 = 0;
          if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, &v15) & 1) == 0)
          {
            return 0;
          }

          *(this + 3) = v15;
          *(this + 9) |= 4u;
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

    if (v8 == 1)
    {
      goto LABEL_24;
    }

LABEL_16:
    if (v8 == 4)
    {
      return 1;
    }
  }

  while ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(a2, TagFallback) & 1) != 0);
  return 0;
}

uint64_t CLP::LogEntry::PrivateData::SubSecondConversion::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 36);
  if ((v6 & 1) == 0)
  {
    if ((v6 & 2) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(2, a2, *(v5 + 16), a3);
    if ((*(v5 + 36) & 4) == 0)
    {
      return this;
    }

    goto LABEL_7;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(1, *(this + 8), a2, a4);
  v6 = *(v5 + 36);
  if ((v6 & 2) != 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  if ((v6 & 4) == 0)
  {
    return this;
  }

LABEL_7:
  v7 = *(v5 + 24);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(3, a2, v7, a3);
}

uint64_t CLP::LogEntry::PrivateData::SubSecondConversion::ByteSize(CLP::LogEntry::PrivateData::SubSecondConversion *this, unint64_t a2)
{
  LOBYTE(v3) = *(this + 36);
  if (v3)
  {
    if (*(this + 36))
    {
      v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 1)) + 1;
      v3 = *(this + 9);
    }

    else
    {
      v4 = 0;
    }

    if ((v3 & 2) != 0)
    {
      v4 += 9;
    }

    if ((v3 & 4) != 0)
    {
      result = v4 + 9;
    }

    else
    {
      result = v4;
    }
  }

  else
  {
    result = 0;
  }

  *(this + 8) = result;
  return result;
}

double CLP::LogEntry::PrivateData::SubSecondConversion::CheckTypeAndMergeFrom(CLP::LogEntry::PrivateData::SubSecondConversion *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  return CLP::LogEntry::PrivateData::SubSecondConversion::MergeFrom(this, lpsrc);
}

double CLP::LogEntry::PrivateData::SubSecondConversion::CopyFrom(CLP::LogEntry::PrivateData::SubSecondConversion *this, const CLP::LogEntry::PrivateData::SubSecondConversion *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    return CLP::LogEntry::PrivateData::SubSecondConversion::MergeFrom(this, a2);
  }

  return result;
}

double CLP::LogEntry::PrivateData::SubSecondConversion::Swap(CLP::LogEntry::PrivateData::SubSecondConversion *this, CLP::LogEntry::PrivateData::SubSecondConversion *a2)
{
  if (a2 != this)
  {
    v2 = *(this + 1);
    *(this + 1) = *(a2 + 1);
    *(a2 + 1) = v2;
    v3 = *(this + 2);
    *(this + 2) = *(a2 + 2);
    *(a2 + 2) = v3;
    result = *(this + 3);
    *(this + 3) = *(a2 + 3);
    *(a2 + 3) = result;
    LODWORD(v2) = *(this + 9);
    *(this + 9) = *(a2 + 9);
    *(a2 + 9) = v2;
    LODWORD(v2) = *(this + 8);
    *(this + 8) = *(a2 + 8);
    *(a2 + 8) = v2;
  }

  return result;
}

double CLP::LogEntry::PrivateData::BeidouTimeInfo::SharedCtor(CLP::LogEntry::PrivateData::BeidouTimeInfo *this)
{
  *(this + 14) = 0;
  result = 0.0;
  *(this + 40) = 0u;
  *(this + 24) = 0u;
  *(this + 8) = 0u;
  return result;
}

CLP::LogEntry::PrivateData::BeidouTimeInfo *CLP::LogEntry::PrivateData::BeidouTimeInfo::BeidouTimeInfo(CLP::LogEntry::PrivateData::BeidouTimeInfo *this, const CLP::LogEntry::PrivateData::BeidouTimeInfo *a2)
{
  *this = &unk_2858610E0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 14) = 0;
  CLP::LogEntry::PrivateData::BeidouTimeInfo::MergeFrom(this, a2);
  return this;
}

double CLP::LogEntry::PrivateData::BeidouTimeInfo::MergeFrom(CLP::LogEntry::PrivateData::BeidouTimeInfo *this, const CLP::LogEntry::PrivateData::BeidouTimeInfo *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v17);
  }

  LOBYTE(v5) = *(a2 + 56);
  if (!v5)
  {
    return result;
  }

  if (*(a2 + 56))
  {
    v6 = *(a2 + 12);
    *(this + 14) |= 1u;
    *(this + 12) = v6;
    v5 = *(a2 + 14);
    if ((v5 & 2) == 0)
    {
LABEL_6:
      if ((v5 & 4) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_17;
    }
  }

  else if ((*(a2 + 56) & 2) == 0)
  {
    goto LABEL_6;
  }

  *(this + 14) |= 2u;
  v7 = *(this + 1);
  if (!v7)
  {
    operator new();
  }

  v8 = *(a2 + 1);
  if (!v8)
  {
    v8 = *(CLP::LogEntry::PrivateData::BeidouTimeInfo::default_instance_ + 8);
  }

  CLP::LogEntry::PrivateData::LeapSecondInfo::MergeFrom(v7, v8);
  v5 = *(a2 + 14);
  if ((v5 & 4) == 0)
  {
LABEL_7:
    if ((v5 & 8) == 0)
    {
      goto LABEL_8;
    }

LABEL_22:
    *(this + 14) |= 8u;
    v11 = *(this + 3);
    if (!v11)
    {
      operator new();
    }

    v12 = *(a2 + 3);
    if (!v12)
    {
      v12 = *(CLP::LogEntry::PrivateData::BeidouTimeInfo::default_instance_ + 24);
    }

    result = CLP::LogEntry::PrivateData::SubSecondConversion::MergeFrom(v11, v12);
    v5 = *(a2 + 14);
    if ((v5 & 0x10) == 0)
    {
LABEL_9:
      if ((v5 & 0x20) == 0)
      {
        return result;
      }

      goto LABEL_32;
    }

    goto LABEL_27;
  }

LABEL_17:
  *(this + 14) |= 4u;
  v9 = *(this + 2);
  if (!v9)
  {
    operator new();
  }

  v10 = *(a2 + 2);
  if (!v10)
  {
    v10 = *(CLP::LogEntry::PrivateData::BeidouTimeInfo::default_instance_ + 16);
  }

  result = CLP::LogEntry::PrivateData::SubSecondConversion::MergeFrom(v9, v10);
  v5 = *(a2 + 14);
  if ((v5 & 8) != 0)
  {
    goto LABEL_22;
  }

LABEL_8:
  if ((v5 & 0x10) == 0)
  {
    goto LABEL_9;
  }

LABEL_27:
  *(this + 14) |= 0x10u;
  v13 = *(this + 4);
  if (!v13)
  {
    operator new();
  }

  v14 = *(a2 + 4);
  if (!v14)
  {
    v14 = *(CLP::LogEntry::PrivateData::BeidouTimeInfo::default_instance_ + 32);
  }

  result = CLP::LogEntry::PrivateData::SubSecondConversion::MergeFrom(v13, v14);
  if ((*(a2 + 14) & 0x20) != 0)
  {
LABEL_32:
    *(this + 14) |= 0x20u;
    v15 = *(this + 5);
    if (!v15)
    {
      operator new();
    }

    v16 = *(a2 + 5);
    if (!v16)
    {
      v16 = *(CLP::LogEntry::PrivateData::BeidouTimeInfo::default_instance_ + 40);
    }

    return CLP::LogEntry::PrivateData::SubSecondConversion::MergeFrom(v15, v16);
  }

  return result;
}

void sub_245531CEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void CLP::LogEntry::PrivateData::BeidouTimeInfo::~BeidouTimeInfo(CLP::LogEntry::PrivateData::BeidouTimeInfo *this)
{
  *this = &unk_2858610E0;
  CLP::LogEntry::PrivateData::BeidouTimeInfo::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2858610E0;
  CLP::LogEntry::PrivateData::BeidouTimeInfo::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2858610E0;
  CLP::LogEntry::PrivateData::BeidouTimeInfo::SharedDtor(this);
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  JUMPOUT(0x245D6AEE0);
}

void *CLP::LogEntry::PrivateData::BeidouTimeInfo::SharedDtor(void *this)
{
  if (CLP::LogEntry::PrivateData::BeidouTimeInfo::default_instance_ != this)
  {
    v1 = this;
    v2 = this[1];
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }

    v3 = v1[2];
    if (v3)
    {
      (*(*v3 + 8))(v3);
    }

    v4 = v1[3];
    if (v4)
    {
      (*(*v4 + 8))(v4);
    }

    v5 = v1[4];
    if (v5)
    {
      (*(*v5 + 8))(v5);
    }

    this = v1[5];
    if (this)
    {
      v6 = *(*this + 8);

      return v6();
    }
  }

  return this;
}

uint64_t CLP::LogEntry::PrivateData::BeidouTimeInfo::default_instance(CLP::LogEntry::PrivateData::BeidouTimeInfo *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = CLP::LogEntry::PrivateData::BeidouTimeInfo::default_instance_;
  if (!CLP::LogEntry::PrivateData::BeidouTimeInfo::default_instance_)
  {
    CLP::LogEntry::PrivateData::protobuf_AddDesc_CLPGnssMeasApi_2eproto(0, a2, a3, a4);
    return CLP::LogEntry::PrivateData::BeidouTimeInfo::default_instance_;
  }

  return result;
}

uint64_t CLP::LogEntry::PrivateData::BeidouTimeInfo::Clear(uint64_t this)
{
  v1 = this;
  LOBYTE(v2) = *(this + 56);
  if (v2)
  {
    *(this + 48) = 0;
    if ((v2 & 2) != 0)
    {
      this = *(this + 8);
      if (this)
      {
        this = CLP::LogEntry::PrivateData::LeapSecondInfo::Clear(this);
        v2 = *(v1 + 56);
      }
    }

    if ((v2 & 4) != 0)
    {
      v3 = *(v1 + 16);
      if (v3)
      {
        if (*(v3 + 36))
        {
          *(v3 + 8) = 0;
          *(v3 + 16) = 0;
          *(v3 + 24) = 0;
        }

        *(v3 + 36) = 0;
        v2 = *(v1 + 56);
      }
    }

    if ((v2 & 8) != 0)
    {
      v4 = *(v1 + 24);
      if (v4)
      {
        if (*(v4 + 36))
        {
          *(v4 + 8) = 0;
          *(v4 + 16) = 0;
          *(v4 + 24) = 0;
        }

        *(v4 + 36) = 0;
        v2 = *(v1 + 56);
      }
    }

    if ((v2 & 0x10) != 0)
    {
      v5 = *(v1 + 32);
      if (v5)
      {
        if (*(v5 + 36))
        {
          *(v5 + 8) = 0;
          *(v5 + 16) = 0;
          *(v5 + 24) = 0;
        }

        *(v5 + 36) = 0;
        v2 = *(v1 + 56);
      }
    }

    if ((v2 & 0x20) != 0)
    {
      v6 = *(v1 + 40);
      if (v6)
      {
        if (*(v6 + 36))
        {
          *(v6 + 8) = 0;
          *(v6 + 16) = 0;
          *(v6 + 24) = 0;
        }

        *(v6 + 36) = 0;
      }
    }
  }

  *(v1 + 56) = 0;
  return this;
}

uint64_t CLP::LogEntry::PrivateData::BeidouTimeInfo::MergePartialFromCodedStream(CLP::LogEntry::PrivateData::BeidouTimeInfo *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
{
  while (1)
  {
    while (1)
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
          v8 = TagFallback & 7;
          if (TagFallback >> 3 <= 3)
          {
            break;
          }

          if (v7 == 4)
          {
            if (v8 == 2)
            {
              goto LABEL_62;
            }

            goto LABEL_26;
          }

          if (v7 == 5)
          {
            if (v8 != 2)
            {
              goto LABEL_26;
            }

LABEL_76:
            *(this + 14) |= 0x10u;
            v40 = *(this + 4);
            if (!v40)
            {
              operator new();
            }

            v55 = 0;
            v41 = *(a2 + 1);
            if (v41 >= *(a2 + 2) || *v41 < 0)
            {
              if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v55))
              {
                return 0;
              }
            }

            else
            {
              v55 = *v41;
              *(a2 + 1) = v41 + 1;
            }

            v42 = *(a2 + 14);
            v43 = *(a2 + 15);
            *(a2 + 14) = v42 + 1;
            if (v42 >= v43)
            {
              return 0;
            }

            wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
            if (!CLP::LogEntry::PrivateData::SubSecondConversion::MergePartialFromCodedStream(v40, a2, v44) || *(a2 + 36) != 1)
            {
              return 0;
            }

            wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
            v45 = *(a2 + 14);
            v21 = __OFSUB__(v45, 1);
            v46 = v45 - 1;
            if (v46 < 0 == v21)
            {
              *(a2 + 14) = v46;
            }

            v47 = *(a2 + 1);
            if (v47 < *(a2 + 2) && *v47 == 50)
            {
              *(a2 + 1) = v47 + 1;
              goto LABEL_90;
            }
          }

          else
          {
            if (v7 != 6 || v8 != 2)
            {
              goto LABEL_26;
            }

LABEL_90:
            *(this + 14) |= 0x20u;
            v48 = *(this + 5);
            if (!v48)
            {
              operator new();
            }

            v55 = 0;
            v49 = *(a2 + 1);
            if (v49 >= *(a2 + 2) || *v49 < 0)
            {
              if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v55))
              {
                return 0;
              }
            }

            else
            {
              v55 = *v49;
              *(a2 + 1) = v49 + 1;
            }

            v50 = *(a2 + 14);
            v51 = *(a2 + 15);
            *(a2 + 14) = v50 + 1;
            if (v50 >= v51)
            {
              return 0;
            }

            wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
            if (!CLP::LogEntry::PrivateData::SubSecondConversion::MergePartialFromCodedStream(v48, a2, v52) || *(a2 + 36) != 1)
            {
              return 0;
            }

            wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
            v53 = *(a2 + 14);
            v21 = __OFSUB__(v53, 1);
            v54 = v53 - 1;
            if (v54 < 0 == v21)
            {
              *(a2 + 14) = v54;
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

        if (v7 != 1)
        {
          break;
        }

        if ((TagFallback & 7) != 0)
        {
          goto LABEL_26;
        }

        v10 = *(a2 + 1);
        v9 = *(a2 + 2);
        if (v10 >= v9 || (v11 = *v10, v11 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 12);
          if (!result)
          {
            return result;
          }

          v12 = *(a2 + 1);
          v9 = *(a2 + 2);
        }

        else
        {
          *(this + 12) = v11;
          v12 = v10 + 1;
          *(a2 + 1) = v12;
        }

        v13 = *(this + 14) | 1;
        *(this + 14) = v13;
        if (v12 < v9 && *v12 == 18)
        {
          *(a2 + 1) = v12 + 1;
          goto LABEL_34;
        }
      }

      if (v7 != 2)
      {
        break;
      }

      if (v8 != 2)
      {
        goto LABEL_26;
      }

      v13 = *(this + 14);
LABEL_34:
      *(this + 14) = v13 | 2;
      v15 = *(this + 1);
      if (!v15)
      {
        operator new();
      }

      v55 = 0;
      v16 = *(a2 + 1);
      if (v16 >= *(a2 + 2) || *v16 < 0)
      {
        if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v55))
        {
          return 0;
        }
      }

      else
      {
        v55 = *v16;
        *(a2 + 1) = v16 + 1;
      }

      v17 = *(a2 + 14);
      v18 = *(a2 + 15);
      *(a2 + 14) = v17 + 1;
      if (v17 >= v18)
      {
        return 0;
      }

      wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
      if (!CLP::LogEntry::PrivateData::LeapSecondInfo::MergePartialFromCodedStream(v15, a2, v19) || *(a2 + 36) != 1)
      {
        return 0;
      }

      wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
      v20 = *(a2 + 14);
      v21 = __OFSUB__(v20, 1);
      v22 = v20 - 1;
      if (v22 < 0 == v21)
      {
        *(a2 + 14) = v22;
      }

      v23 = *(a2 + 1);
      if (v23 < *(a2 + 2) && *v23 == 26)
      {
        *(a2 + 1) = v23 + 1;
LABEL_48:
        *(this + 14) |= 4u;
        v24 = *(this + 2);
        if (!v24)
        {
          operator new();
        }

        v55 = 0;
        v25 = *(a2 + 1);
        if (v25 >= *(a2 + 2) || *v25 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v55))
          {
            return 0;
          }
        }

        else
        {
          v55 = *v25;
          *(a2 + 1) = v25 + 1;
        }

        v26 = *(a2 + 14);
        v27 = *(a2 + 15);
        *(a2 + 14) = v26 + 1;
        if (v26 >= v27)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
        if (!CLP::LogEntry::PrivateData::SubSecondConversion::MergePartialFromCodedStream(v24, a2, v28) || *(a2 + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
        v29 = *(a2 + 14);
        v21 = __OFSUB__(v29, 1);
        v30 = v29 - 1;
        if (v30 < 0 == v21)
        {
          *(a2 + 14) = v30;
        }

        v31 = *(a2 + 1);
        if (v31 < *(a2 + 2) && *v31 == 34)
        {
          *(a2 + 1) = v31 + 1;
LABEL_62:
          *(this + 14) |= 8u;
          v32 = *(this + 3);
          if (!v32)
          {
            operator new();
          }

          v55 = 0;
          v33 = *(a2 + 1);
          if (v33 >= *(a2 + 2) || *v33 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v55))
            {
              return 0;
            }
          }

          else
          {
            v55 = *v33;
            *(a2 + 1) = v33 + 1;
          }

          v34 = *(a2 + 14);
          v35 = *(a2 + 15);
          *(a2 + 14) = v34 + 1;
          if (v34 >= v35)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
          if (!CLP::LogEntry::PrivateData::SubSecondConversion::MergePartialFromCodedStream(v32, a2, v36) || *(a2 + 36) != 1)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
          v37 = *(a2 + 14);
          v21 = __OFSUB__(v37, 1);
          v38 = v37 - 1;
          if (v38 < 0 == v21)
          {
            *(a2 + 14) = v38;
          }

          v39 = *(a2 + 1);
          if (v39 < *(a2 + 2) && *v39 == 42)
          {
            *(a2 + 1) = v39 + 1;
            goto LABEL_76;
          }
        }
      }
    }

    if (v7 == 3 && v8 == 2)
    {
      goto LABEL_48;
    }

LABEL_26:
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

uint64_t CLP::LogEntry::PrivateData::BeidouTimeInfo::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 56);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(1, *(this + 48), a2, a4);
    v6 = *(v5 + 56);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_12;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  v7 = *(v5 + 8);
  if (!v7)
  {
    v7 = *(CLP::LogEntry::PrivateData::BeidouTimeInfo::default_instance_ + 8);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(2, v7, a2, a4);
  v6 = *(v5 + 56);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_15;
  }

LABEL_12:
  v8 = *(v5 + 16);
  if (!v8)
  {
    v8 = *(CLP::LogEntry::PrivateData::BeidouTimeInfo::default_instance_ + 16);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(3, v8, a2, a4);
  v6 = *(v5 + 56);
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_18;
  }

LABEL_15:
  v9 = *(v5 + 24);
  if (!v9)
  {
    v9 = *(CLP::LogEntry::PrivateData::BeidouTimeInfo::default_instance_ + 24);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(4, v9, a2, a4);
  v6 = *(v5 + 56);
  if ((v6 & 0x10) == 0)
  {
LABEL_6:
    if ((v6 & 0x20) == 0)
    {
      return this;
    }

    goto LABEL_21;
  }

LABEL_18:
  v10 = *(v5 + 32);
  if (!v10)
  {
    v10 = *(CLP::LogEntry::PrivateData::BeidouTimeInfo::default_instance_ + 32);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(5, v10, a2, a4);
  if ((*(v5 + 56) & 0x20) != 0)
  {
LABEL_21:
    v11 = *(v5 + 40);
    if (!v11)
    {
      v11 = *(CLP::LogEntry::PrivateData::BeidouTimeInfo::default_instance_ + 40);
    }

    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(6, v11, a2, a4);
  }

  return this;
}

uint64_t CLP::LogEntry::PrivateData::BeidouTimeInfo::ByteSize(CLP::LogEntry::PrivateData::BeidouTimeInfo *this, unint64_t a2)
{
  LOBYTE(v3) = *(this + 56);
  if (!v3)
  {
    v4 = 0;
    goto LABEL_45;
  }

  if (*(this + 56))
  {
    v5 = *(this + 12);
    if (v5 >= 0x80)
    {
      v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5) + 1;
      v3 = *(this + 14);
      if ((v3 & 2) == 0)
      {
        goto LABEL_16;
      }
    }

    else
    {
      v4 = 2;
      if ((v3 & 2) == 0)
      {
        goto LABEL_16;
      }
    }
  }

  else
  {
    v4 = 0;
    if ((*(this + 56) & 2) == 0)
    {
      goto LABEL_16;
    }
  }

  v6 = *(this + 1);
  if (!v6)
  {
    v6 = *(CLP::LogEntry::PrivateData::BeidouTimeInfo::default_instance_ + 8);
  }

  v7 = CLP::LogEntry::PrivateData::LeapSecondInfo::ByteSize(v6, a2);
  v8 = v7;
  if (v7 >= 0x80)
  {
    v9 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v7);
  }

  else
  {
    v9 = 1;
  }

  v4 = (v4 + v8 + v9 + 1);
  v3 = *(this + 14);
LABEL_16:
  if ((v3 & 4) != 0)
  {
    v10 = *(this + 2);
    if (!v10)
    {
      v10 = *(CLP::LogEntry::PrivateData::BeidouTimeInfo::default_instance_ + 16);
    }

    v11 = CLP::LogEntry::PrivateData::SubSecondConversion::ByteSize(v10, a2);
    v12 = v11;
    if (v11 >= 0x80)
    {
      v13 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v11);
    }

    else
    {
      v13 = 1;
    }

    v4 = (v4 + v12 + v13 + 1);
    v3 = *(this + 14);
    if ((v3 & 8) == 0)
    {
LABEL_18:
      if ((v3 & 0x10) == 0)
      {
        goto LABEL_19;
      }

      goto LABEL_33;
    }
  }

  else if ((v3 & 8) == 0)
  {
    goto LABEL_18;
  }

  v14 = *(this + 3);
  if (!v14)
  {
    v14 = *(CLP::LogEntry::PrivateData::BeidouTimeInfo::default_instance_ + 24);
  }

  v15 = CLP::LogEntry::PrivateData::SubSecondConversion::ByteSize(v14, a2);
  v16 = v15;
  if (v15 >= 0x80)
  {
    v17 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v15);
  }

  else
  {
    v17 = 1;
  }

  v4 = (v4 + v16 + v17 + 1);
  v3 = *(this + 14);
  if ((v3 & 0x10) == 0)
  {
LABEL_19:
    if ((v3 & 0x20) == 0)
    {
      goto LABEL_45;
    }

    goto LABEL_39;
  }

LABEL_33:
  v18 = *(this + 4);
  if (!v18)
  {
    v18 = *(CLP::LogEntry::PrivateData::BeidouTimeInfo::default_instance_ + 32);
  }

  v19 = CLP::LogEntry::PrivateData::SubSecondConversion::ByteSize(v18, a2);
  v20 = v19;
  if (v19 >= 0x80)
  {
    v21 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v19);
  }

  else
  {
    v21 = 1;
  }

  v4 = (v4 + v20 + v21 + 1);
  if ((*(this + 14) & 0x20) != 0)
  {
LABEL_39:
    v22 = *(this + 5);
    if (!v22)
    {
      v22 = *(CLP::LogEntry::PrivateData::BeidouTimeInfo::default_instance_ + 40);
    }

    v23 = CLP::LogEntry::PrivateData::SubSecondConversion::ByteSize(v22, a2);
    v24 = v23;
    if (v23 >= 0x80)
    {
      v25 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v23);
    }

    else
    {
      v25 = 1;
    }

    v4 = (v4 + v24 + v25 + 1);
  }

LABEL_45:
  *(this + 13) = v4;
  return v4;
}

double CLP::LogEntry::PrivateData::BeidouTimeInfo::CheckTypeAndMergeFrom(CLP::LogEntry::PrivateData::BeidouTimeInfo *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  return CLP::LogEntry::PrivateData::BeidouTimeInfo::MergeFrom(this, lpsrc);
}

double CLP::LogEntry::PrivateData::BeidouTimeInfo::CopyFrom(CLP::LogEntry::PrivateData::BeidouTimeInfo *this, const CLP::LogEntry::PrivateData::BeidouTimeInfo *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    return CLP::LogEntry::PrivateData::BeidouTimeInfo::MergeFrom(this, a2);
  }

  return result;
}

uint64_t CLP::LogEntry::PrivateData::BeidouTimeInfo::Swap(uint64_t this, CLP::LogEntry::PrivateData::BeidouTimeInfo *a2)
{
  if (a2 != this)
  {
    v2 = *(this + 48);
    *(this + 48) = *(a2 + 12);
    *(a2 + 12) = v2;
    v3 = *(this + 8);
    *(this + 8) = *(a2 + 1);
    *(a2 + 1) = v3;
    v4 = *(this + 16);
    *(this + 16) = *(a2 + 2);
    *(a2 + 2) = v4;
    v5 = *(this + 24);
    *(this + 24) = *(a2 + 3);
    *(a2 + 3) = v5;
    v6 = *(this + 32);
    *(this + 32) = *(a2 + 4);
    *(a2 + 4) = v6;
    v7 = *(this + 40);
    *(this + 40) = *(a2 + 5);
    *(a2 + 5) = v7;
    LODWORD(v7) = *(this + 56);
    *(this + 56) = *(a2 + 14);
    *(a2 + 14) = v7;
    LODWORD(v7) = *(this + 52);
    *(this + 52) = *(a2 + 13);
    *(a2 + 13) = v7;
  }

  return this;
}

double CLP::LogEntry::PrivateData::GalileoTimeInfo::SharedCtor(CLP::LogEntry::PrivateData::GalileoTimeInfo *this)
{
  *(this + 10) = 0;
  result = 0.0;
  *(this + 24) = 0u;
  *(this + 8) = 0u;
  return result;
}

CLP::LogEntry::PrivateData::GalileoTimeInfo *CLP::LogEntry::PrivateData::GalileoTimeInfo::GalileoTimeInfo(CLP::LogEntry::PrivateData::GalileoTimeInfo *this, const CLP::LogEntry::PrivateData::GalileoTimeInfo *a2)
{
  *this = &unk_285861158;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 10) = 0;
  CLP::LogEntry::PrivateData::GalileoTimeInfo::MergeFrom(this, a2);
  return this;
}

double CLP::LogEntry::PrivateData::GalileoTimeInfo::MergeFrom(CLP::LogEntry::PrivateData::GalileoTimeInfo *this, const CLP::LogEntry::PrivateData::GalileoTimeInfo *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v13);
  }

  LOBYTE(v5) = *(a2 + 40);
  if (!v5)
  {
    return result;
  }

  if ((*(a2 + 40) & 1) == 0)
  {
    if ((*(a2 + 40) & 2) == 0)
    {
      goto LABEL_6;
    }

LABEL_10:
    *(this + 10) |= 2u;
    v7 = *(this + 1);
    if (!v7)
    {
      operator new();
    }

    v8 = *(a2 + 1);
    if (!v8)
    {
      v8 = *(CLP::LogEntry::PrivateData::GalileoTimeInfo::default_instance_ + 8);
    }

    CLP::LogEntry::PrivateData::LeapSecondInfo::MergeFrom(v7, v8);
    v5 = *(a2 + 10);
    if ((v5 & 4) == 0)
    {
LABEL_7:
      if ((v5 & 8) == 0)
      {
        return result;
      }

      goto LABEL_20;
    }

    goto LABEL_15;
  }

  v6 = *(a2 + 8);
  *(this + 10) |= 1u;
  *(this + 8) = v6;
  v5 = *(a2 + 10);
  if ((v5 & 2) != 0)
  {
    goto LABEL_10;
  }

LABEL_6:
  if ((v5 & 4) == 0)
  {
    goto LABEL_7;
  }

LABEL_15:
  *(this + 10) |= 4u;
  v9 = *(this + 2);
  if (!v9)
  {
    operator new();
  }

  v10 = *(a2 + 2);
  if (!v10)
  {
    v10 = *(CLP::LogEntry::PrivateData::GalileoTimeInfo::default_instance_ + 16);
  }

  result = CLP::LogEntry::PrivateData::SubSecondConversion::MergeFrom(v9, v10);
  if ((*(a2 + 10) & 8) != 0)
  {
LABEL_20:
    *(this + 10) |= 8u;
    v11 = *(this + 3);
    if (!v11)
    {
      operator new();
    }

    v12 = *(a2 + 3);
    if (!v12)
    {
      v12 = *(CLP::LogEntry::PrivateData::GalileoTimeInfo::default_instance_ + 24);
    }

    return CLP::LogEntry::PrivateData::SubSecondConversion::MergeFrom(v11, v12);
  }

  return result;
}

void sub_245532ED0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void CLP::LogEntry::PrivateData::GalileoTimeInfo::~GalileoTimeInfo(CLP::LogEntry::PrivateData::GalileoTimeInfo *this)
{
  *this = &unk_285861158;
  CLP::LogEntry::PrivateData::GalileoTimeInfo::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_285861158;
  CLP::LogEntry::PrivateData::GalileoTimeInfo::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_285861158;
  CLP::LogEntry::PrivateData::GalileoTimeInfo::SharedDtor(this);
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  JUMPOUT(0x245D6AEE0);
}

void *CLP::LogEntry::PrivateData::GalileoTimeInfo::SharedDtor(void *this)
{
  if (CLP::LogEntry::PrivateData::GalileoTimeInfo::default_instance_ != this)
  {
    v1 = this;
    v2 = this[1];
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }

    v3 = v1[2];
    if (v3)
    {
      (*(*v3 + 8))(v3);
    }

    this = v1[3];
    if (this)
    {
      v4 = *(*this + 8);

      return v4();
    }
  }

  return this;
}

uint64_t CLP::LogEntry::PrivateData::GalileoTimeInfo::default_instance(CLP::LogEntry::PrivateData::GalileoTimeInfo *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = CLP::LogEntry::PrivateData::GalileoTimeInfo::default_instance_;
  if (!CLP::LogEntry::PrivateData::GalileoTimeInfo::default_instance_)
  {
    CLP::LogEntry::PrivateData::protobuf_AddDesc_CLPGnssMeasApi_2eproto(0, a2, a3, a4);
    return CLP::LogEntry::PrivateData::GalileoTimeInfo::default_instance_;
  }

  return result;
}

uint64_t CLP::LogEntry::PrivateData::GalileoTimeInfo::Clear(uint64_t this)
{
  v1 = this;
  LOBYTE(v2) = *(this + 40);
  if (v2)
  {
    *(this + 32) = 0;
    if ((v2 & 2) != 0)
    {
      this = *(this + 8);
      if (this)
      {
        this = CLP::LogEntry::PrivateData::LeapSecondInfo::Clear(this);
        v2 = *(v1 + 40);
      }
    }

    if ((v2 & 4) != 0)
    {
      v3 = *(v1 + 16);
      if (v3)
      {
        if (*(v3 + 36))
        {
          *(v3 + 8) = 0;
          *(v3 + 16) = 0;
          *(v3 + 24) = 0;
        }

        *(v3 + 36) = 0;
        v2 = *(v1 + 40);
      }
    }

    if ((v2 & 8) != 0)
    {
      v4 = *(v1 + 24);
      if (v4)
      {
        if (*(v4 + 36))
        {
          *(v4 + 8) = 0;
          *(v4 + 16) = 0;
          *(v4 + 24) = 0;
        }

        *(v4 + 36) = 0;
      }
    }
  }

  *(v1 + 40) = 0;
  return this;
}

uint64_t CLP::LogEntry::PrivateData::GalileoTimeInfo::MergePartialFromCodedStream(CLP::LogEntry::PrivateData::GalileoTimeInfo *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
{
  while (1)
  {
    while (1)
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
          v8 = TagFallback & 7;
          if (TagFallback >> 3 > 2)
          {
            break;
          }

          if (v7 == 1)
          {
            if ((TagFallback & 7) != 0)
            {
              goto LABEL_20;
            }

            v11 = *(a2 + 1);
            v10 = *(a2 + 2);
            if (v11 >= v10 || (v12 = *v11, v12 < 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 8);
              if (!result)
              {
                return result;
              }

              v13 = *(a2 + 1);
              v10 = *(a2 + 2);
            }

            else
            {
              *(this + 8) = v12;
              v13 = v11 + 1;
              *(a2 + 1) = v13;
            }

            v9 = *(this + 10) | 1;
            *(this + 10) = v9;
            if (v13 < v10 && *v13 == 18)
            {
              *(a2 + 1) = v13 + 1;
              goto LABEL_28;
            }
          }

          else
          {
            if (v7 != 2 || v8 != 2)
            {
              goto LABEL_20;
            }

            v9 = *(this + 10);
LABEL_28:
            *(this + 10) = v9 | 2;
            v15 = *(this + 1);
            if (!v15)
            {
              operator new();
            }

            v39 = 0;
            v16 = *(a2 + 1);
            if (v16 >= *(a2 + 2) || *v16 < 0)
            {
              if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v39))
              {
                return 0;
              }
            }

            else
            {
              v39 = *v16;
              *(a2 + 1) = v16 + 1;
            }

            v17 = *(a2 + 14);
            v18 = *(a2 + 15);
            *(a2 + 14) = v17 + 1;
            if (v17 >= v18)
            {
              return 0;
            }

            wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
            if (!CLP::LogEntry::PrivateData::LeapSecondInfo::MergePartialFromCodedStream(v15, a2, v19) || *(a2 + 36) != 1)
            {
              return 0;
            }

            wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
            v20 = *(a2 + 14);
            v21 = __OFSUB__(v20, 1);
            v22 = v20 - 1;
            if (v22 < 0 == v21)
            {
              *(a2 + 14) = v22;
            }

            v23 = *(a2 + 1);
            if (v23 < *(a2 + 2) && *v23 == 26)
            {
              *(a2 + 1) = v23 + 1;
              goto LABEL_42;
            }
          }
        }

        if (v7 != 3)
        {
          break;
        }

        if (v8 != 2)
        {
          goto LABEL_20;
        }

LABEL_42:
        *(this + 10) |= 4u;
        v24 = *(this + 2);
        if (!v24)
        {
          operator new();
        }

        v40 = 0;
        v25 = *(a2 + 1);
        if (v25 >= *(a2 + 2) || *v25 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v40))
          {
            return 0;
          }
        }

        else
        {
          v40 = *v25;
          *(a2 + 1) = v25 + 1;
        }

        v26 = *(a2 + 14);
        v27 = *(a2 + 15);
        *(a2 + 14) = v26 + 1;
        if (v26 >= v27)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
        if (!CLP::LogEntry::PrivateData::SubSecondConversion::MergePartialFromCodedStream(v24, a2, v28) || *(a2 + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
        v29 = *(a2 + 14);
        v21 = __OFSUB__(v29, 1);
        v30 = v29 - 1;
        if (v30 < 0 == v21)
        {
          *(a2 + 14) = v30;
        }

        v31 = *(a2 + 1);
        if (v31 < *(a2 + 2) && *v31 == 34)
        {
          *(a2 + 1) = v31 + 1;
          goto LABEL_56;
        }
      }

      if (v7 != 4 || v8 != 2)
      {
        break;
      }

LABEL_56:
      *(this + 10) |= 8u;
      v32 = *(this + 3);
      if (!v32)
      {
        operator new();
      }

      v41 = 0;
      v33 = *(a2 + 1);
      if (v33 >= *(a2 + 2) || *v33 < 0)
      {
        if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v41))
        {
          return 0;
        }
      }

      else
      {
        v41 = *v33;
        *(a2 + 1) = v33 + 1;
      }

      v34 = *(a2 + 14);
      v35 = *(a2 + 15);
      *(a2 + 14) = v34 + 1;
      if (v34 >= v35)
      {
        return 0;
      }

      wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
      if (!CLP::LogEntry::PrivateData::SubSecondConversion::MergePartialFromCodedStream(v32, a2, v36) || *(a2 + 36) != 1)
      {
        return 0;
      }

      wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
      v37 = *(a2 + 14);
      v21 = __OFSUB__(v37, 1);
      v38 = v37 - 1;
      if (v38 < 0 == v21)
      {
        *(a2 + 14) = v38;
      }

      if (*(a2 + 1) == *(a2 + 2) && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
      {
        *(a2 + 8) = 0;
        result = 1;
        *(a2 + 36) = 1;
        return result;
      }
    }

LABEL_20:
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

uint64_t CLP::LogEntry::PrivateData::GalileoTimeInfo::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 40);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(1, *(this + 32), a2, a4);
    v6 = *(v5 + 40);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_10;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  v7 = *(v5 + 8);
  if (!v7)
  {
    v7 = *(CLP::LogEntry::PrivateData::GalileoTimeInfo::default_instance_ + 8);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(2, v7, a2, a4);
  v6 = *(v5 + 40);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      return this;
    }

    goto LABEL_13;
  }

LABEL_10:
  v8 = *(v5 + 16);
  if (!v8)
  {
    v8 = *(CLP::LogEntry::PrivateData::GalileoTimeInfo::default_instance_ + 16);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(3, v8, a2, a4);
  if ((*(v5 + 40) & 8) != 0)
  {
LABEL_13:
    v9 = *(v5 + 24);
    if (!v9)
    {
      v9 = *(CLP::LogEntry::PrivateData::GalileoTimeInfo::default_instance_ + 24);
    }

    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(4, v9, a2, a4);
  }

  return this;
}

uint64_t CLP::LogEntry::PrivateData::GalileoTimeInfo::ByteSize(CLP::LogEntry::PrivateData::GalileoTimeInfo *this, unint64_t a2)
{
  LOBYTE(v3) = *(this + 40);
  if (!v3)
  {
    v4 = 0;
    goto LABEL_31;
  }

  if (*(this + 40))
  {
    v5 = *(this + 8);
    if (v5 >= 0x80)
    {
      v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5) + 1;
      v3 = *(this + 10);
      if ((v3 & 2) == 0)
      {
        goto LABEL_16;
      }
    }

    else
    {
      v4 = 2;
      if ((v3 & 2) == 0)
      {
        goto LABEL_16;
      }
    }
  }

  else
  {
    v4 = 0;
    if ((*(this + 40) & 2) == 0)
    {
      goto LABEL_16;
    }
  }

  v6 = *(this + 1);
  if (!v6)
  {
    v6 = *(CLP::LogEntry::PrivateData::GalileoTimeInfo::default_instance_ + 8);
  }

  v7 = CLP::LogEntry::PrivateData::LeapSecondInfo::ByteSize(v6, a2);
  v8 = v7;
  if (v7 >= 0x80)
  {
    v9 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v7);
  }

  else
  {
    v9 = 1;
  }

  v4 = (v4 + v8 + v9 + 1);
  v3 = *(this + 10);
LABEL_16:
  if ((v3 & 4) == 0)
  {
    if ((v3 & 8) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_25;
  }

  v10 = *(this + 2);
  if (!v10)
  {
    v10 = *(CLP::LogEntry::PrivateData::GalileoTimeInfo::default_instance_ + 16);
  }

  v11 = CLP::LogEntry::PrivateData::SubSecondConversion::ByteSize(v10, a2);
  v12 = v11;
  if (v11 >= 0x80)
  {
    v13 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v11);
  }

  else
  {
    v13 = 1;
  }

  v4 = (v4 + v12 + v13 + 1);
  if ((*(this + 10) & 8) != 0)
  {
LABEL_25:
    v14 = *(this + 3);
    if (!v14)
    {
      v14 = *(CLP::LogEntry::PrivateData::GalileoTimeInfo::default_instance_ + 24);
    }

    v15 = CLP::LogEntry::PrivateData::SubSecondConversion::ByteSize(v14, a2);
    v16 = v15;
    if (v15 >= 0x80)
    {
      v17 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v15);
    }

    else
    {
      v17 = 1;
    }

    v4 = (v4 + v16 + v17 + 1);
  }

LABEL_31:
  *(this + 9) = v4;
  return v4;
}

double CLP::LogEntry::PrivateData::GalileoTimeInfo::CheckTypeAndMergeFrom(CLP::LogEntry::PrivateData::GalileoTimeInfo *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  return CLP::LogEntry::PrivateData::GalileoTimeInfo::MergeFrom(this, lpsrc);
}

double CLP::LogEntry::PrivateData::GalileoTimeInfo::CopyFrom(CLP::LogEntry::PrivateData::GalileoTimeInfo *this, const CLP::LogEntry::PrivateData::GalileoTimeInfo *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    return CLP::LogEntry::PrivateData::GalileoTimeInfo::MergeFrom(this, a2);
  }

  return result;
}

uint64_t CLP::LogEntry::PrivateData::GalileoTimeInfo::Swap(uint64_t this, CLP::LogEntry::PrivateData::GalileoTimeInfo *a2)
{
  if (a2 != this)
  {
    v2 = *(this + 32);
    *(this + 32) = *(a2 + 8);
    *(a2 + 8) = v2;
    v3 = *(this + 8);
    *(this + 8) = *(a2 + 1);
    *(a2 + 1) = v3;
    v4 = *(this + 16);
    *(this + 16) = *(a2 + 2);
    *(a2 + 2) = v4;
    v5 = *(this + 24);
    *(this + 24) = *(a2 + 3);
    *(a2 + 3) = v5;
    LODWORD(v5) = *(this + 40);
    *(this + 40) = *(a2 + 10);
    *(a2 + 10) = v5;
    LODWORD(v5) = *(this + 36);
    *(this + 36) = *(a2 + 9);
    *(a2 + 9) = v5;
  }

  return this;
}

uint64_t CLP::LogEntry::PrivateData::NavicTimeInfo::SharedCtor(uint64_t this)
{
  *(this + 8) = 0;
  *(this + 16) = 0;
  *(this + 24) = 0;
  return this;
}

CLP::LogEntry::PrivateData::NavicTimeInfo *CLP::LogEntry::PrivateData::NavicTimeInfo::NavicTimeInfo(CLP::LogEntry::PrivateData::NavicTimeInfo *this, const CLP::LogEntry::PrivateData::NavicTimeInfo *a2)
{
  *(this + 1) = 0;
  *(this + 2) = 0;
  *this = &unk_2858611D0;
  *(this + 6) = 0;
  CLP::LogEntry::PrivateData::NavicTimeInfo::MergeFrom(this, a2);
  return this;
}

void CLP::LogEntry::PrivateData::NavicTimeInfo::MergeFrom(CLP::LogEntry::PrivateData::NavicTimeInfo *this, const CLP::LogEntry::PrivateData::NavicTimeInfo *a2)
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
      *(this + 6) |= 1u;
      v5 = *(this + 1);
      if (!v5)
      {
        operator new();
      }

      v6 = *(a2 + 1);
      if (!v6)
      {
        v6 = *(CLP::LogEntry::PrivateData::NavicTimeInfo::default_instance_ + 8);
      }

      CLP::LogEntry::PrivateData::SubSecondConversion::MergeFrom(v5, v6);
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

void sub_245533BC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void CLP::LogEntry::PrivateData::NavicTimeInfo::~NavicTimeInfo(CLP::LogEntry::PrivateData::NavicTimeInfo *this)
{
  *this = &unk_2858611D0;
  if (CLP::LogEntry::PrivateData::NavicTimeInfo::default_instance_ != this)
  {
    v2 = *(this + 1);
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }
  }

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  CLP::LogEntry::PrivateData::NavicTimeInfo::~NavicTimeInfo(this);

  JUMPOUT(0x245D6AEE0);
}

void *CLP::LogEntry::PrivateData::NavicTimeInfo::SharedDtor(void *this)
{
  if (CLP::LogEntry::PrivateData::NavicTimeInfo::default_instance_ != this)
  {
    this = this[1];
    if (this)
    {
      return (*(*this + 8))();
    }
  }

  return this;
}

uint64_t CLP::LogEntry::PrivateData::NavicTimeInfo::default_instance(CLP::LogEntry::PrivateData::NavicTimeInfo *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = CLP::LogEntry::PrivateData::NavicTimeInfo::default_instance_;
  if (!CLP::LogEntry::PrivateData::NavicTimeInfo::default_instance_)
  {
    CLP::LogEntry::PrivateData::protobuf_AddDesc_CLPGnssMeasApi_2eproto(0, a2, a3, a4);
    return CLP::LogEntry::PrivateData::NavicTimeInfo::default_instance_;
  }

  return result;
}

uint64_t CLP::LogEntry::PrivateData::NavicTimeInfo::Clear(uint64_t this)
{
  if (*(this + 24))
  {
    if (*(this + 24))
    {
      v1 = *(this + 8);
      if (v1)
      {
        if (*(v1 + 36))
        {
          *(v1 + 8) = 0;
          *(v1 + 16) = 0;
          *(v1 + 24) = 0;
        }

        *(v1 + 36) = 0;
      }
    }

    *(this + 16) = 0;
  }

  *(this + 24) = 0;
  return this;
}

uint64_t CLP::LogEntry::PrivateData::NavicTimeInfo::MergePartialFromCodedStream(CLP::LogEntry::PrivateData::NavicTimeInfo *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
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

      if ((TagFallback & 7) == 0)
      {
        v11 = *(a2 + 1);
        v10 = *(a2 + 2);
        goto LABEL_28;
      }

LABEL_15:
      if (v7 == 4)
      {
        return 1;
      }

      if ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(a2, TagFallback) & 1) == 0)
      {
        return 0;
      }
    }

    if (TagFallback >> 3 != 1 || v7 != 2)
    {
      goto LABEL_15;
    }

    *(this + 6) |= 1u;
    v8 = *(this + 1);
    if (!v8)
    {
      operator new();
    }

    v22 = 0;
    v9 = *(a2 + 1);
    if (v9 >= *(a2 + 2) || *v9 < 0)
    {
      if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v22))
      {
        return 0;
      }
    }

    else
    {
      v22 = *v9;
      *(a2 + 1) = v9 + 1;
    }

    v12 = *(a2 + 14);
    v13 = *(a2 + 15);
    *(a2 + 14) = v12 + 1;
    if (v12 >= v13)
    {
      return 0;
    }

    wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
    if (!CLP::LogEntry::PrivateData::SubSecondConversion::MergePartialFromCodedStream(v8, a2, v14) || *(a2 + 36) != 1)
    {
      return 0;
    }

    wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
    v15 = *(a2 + 14);
    v16 = __OFSUB__(v15, 1);
    v17 = v15 - 1;
    if (v17 < 0 == v16)
    {
      *(a2 + 14) = v17;
    }

    v18 = *(a2 + 1);
    v10 = *(a2 + 2);
    if (v18 < v10 && *v18 == 16)
    {
      v11 = v18 + 1;
      *(a2 + 1) = v11;
LABEL_28:
      if (v11 >= v10 || (v19 = *v11, v19 < 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 4);
        if (!result)
        {
          return result;
        }

        v20 = *(a2 + 1);
        v10 = *(a2 + 2);
      }

      else
      {
        *(this + 4) = v19;
        v20 = v11 + 1;
        *(a2 + 1) = v20;
      }

      *(this + 6) |= 2u;
      if (v20 == v10 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
      {
        *(a2 + 8) = 0;
        result = 1;
        *(a2 + 36) = 1;
        return result;
      }
    }
  }
}

uint64_t CLP::LogEntry::PrivateData::NavicTimeInfo::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 24);
  if (v6)
  {
    v7 = *(this + 8);
    if (!v7)
    {
      v7 = *(CLP::LogEntry::PrivateData::NavicTimeInfo::default_instance_ + 8);
    }

    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(1, v7, a2, a4);
    v6 = *(v5 + 24);
  }

  if ((v6 & 2) != 0)
  {
    v8 = *(v5 + 16);

    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(2, v8, a2, a4);
  }

  return this;
}

uint64_t CLP::LogEntry::PrivateData::NavicTimeInfo::ByteSize(CLP::LogEntry::PrivateData::NavicTimeInfo *this, unint64_t a2)
{
  if (!*(this + 24))
  {
    v3 = 0;
    goto LABEL_16;
  }

  if ((*(this + 24) & 1) == 0)
  {
    v3 = 0;
    if ((*(this + 24) & 2) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_12;
  }

  v4 = *(this + 1);
  if (!v4)
  {
    v4 = *(CLP::LogEntry::PrivateData::NavicTimeInfo::default_instance_ + 8);
  }

  v5 = CLP::LogEntry::PrivateData::SubSecondConversion::ByteSize(v4, a2);
  v6 = v5;
  if (v5 >= 0x80)
  {
    v7 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5);
  }

  else
  {
    v7 = 1;
  }

  v3 = (v6 + v7 + 1);
  if ((*(this + 6) & 2) != 0)
  {
LABEL_12:
    v8 = *(this + 4);
    if (v8 >= 0x80)
    {
      v9 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v8) + 1;
    }

    else
    {
      v9 = 2;
    }

    v3 = (v9 + v3);
  }

LABEL_16:
  *(this + 5) = v3;
  return v3;
}

void CLP::LogEntry::PrivateData::NavicTimeInfo::CheckTypeAndMergeFrom(CLP::LogEntry::PrivateData::NavicTimeInfo *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  CLP::LogEntry::PrivateData::NavicTimeInfo::MergeFrom(this, lpsrc);
}

void CLP::LogEntry::PrivateData::NavicTimeInfo::CopyFrom(CLP::LogEntry::PrivateData::NavicTimeInfo *this, const CLP::LogEntry::PrivateData::NavicTimeInfo *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    CLP::LogEntry::PrivateData::NavicTimeInfo::MergeFrom(this, a2);
  }
}

uint64_t CLP::LogEntry::PrivateData::NavicTimeInfo::Swap(uint64_t this, CLP::LogEntry::PrivateData::NavicTimeInfo *a2)
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

double CLP::LogEntry::PrivateData::TimeConversionInfo::SharedCtor(CLP::LogEntry::PrivateData::TimeConversionInfo *this)
{
  result = 0.0;
  *(this + 40) = 0u;
  *(this + 24) = 0u;
  *(this + 8) = 0u;
  return result;
}

CLP::LogEntry::PrivateData::TimeConversionInfo *CLP::LogEntry::PrivateData::TimeConversionInfo::TimeConversionInfo(CLP::LogEntry::PrivateData::TimeConversionInfo *this, const CLP::LogEntry::PrivateData::TimeConversionInfo *a2)
{
  *this = &unk_285861248;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  CLP::LogEntry::PrivateData::TimeConversionInfo::MergeFrom(this, a2);
  return this;
}

void CLP::LogEntry::PrivateData::TimeConversionInfo::MergeFrom(CLP::LogEntry::PrivateData::TimeConversionInfo *this, const CLP::LogEntry::PrivateData::TimeConversionInfo *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v15);
  }

  LOBYTE(v4) = *(a2 + 52);
  if (!v4)
  {
    return;
  }

  if (*(a2 + 52))
  {
    *(this + 13) |= 1u;
    v5 = *(this + 1);
    if (!v5)
    {
      operator new();
    }

    v6 = *(a2 + 1);
    if (!v6)
    {
      v6 = *(CLP::LogEntry::PrivateData::TimeConversionInfo::default_instance_ + 8);
    }

    CLP::LogEntry::PrivateData::GpsTimeInfo::MergeFrom(v5, v6);
    v4 = *(a2 + 13);
    if ((v4 & 2) == 0)
    {
LABEL_6:
      if ((v4 & 4) == 0)
      {
        goto LABEL_7;
      }

LABEL_20:
      *(this + 13) |= 4u;
      v9 = *(this + 3);
      if (!v9)
      {
        operator new();
      }

      v10 = *(a2 + 3);
      if (!v10)
      {
        v10 = *(CLP::LogEntry::PrivateData::TimeConversionInfo::default_instance_ + 24);
      }

      CLP::LogEntry::PrivateData::BeidouTimeInfo::MergeFrom(v9, v10);
      v4 = *(a2 + 13);
      if ((v4 & 8) == 0)
      {
LABEL_8:
        if ((v4 & 0x10) == 0)
        {
          return;
        }

        goto LABEL_30;
      }

      goto LABEL_25;
    }
  }

  else if ((*(a2 + 52) & 2) == 0)
  {
    goto LABEL_6;
  }

  *(this + 13) |= 2u;
  v7 = *(this + 2);
  if (!v7)
  {
    operator new();
  }

  v8 = *(a2 + 2);
  if (!v8)
  {
    v8 = *(CLP::LogEntry::PrivateData::TimeConversionInfo::default_instance_ + 16);
  }

  CLP::LogEntry::PrivateData::GlonassTimeInfo::MergeFrom(v7, v8);
  v4 = *(a2 + 13);
  if ((v4 & 4) != 0)
  {
    goto LABEL_20;
  }

LABEL_7:
  if ((v4 & 8) == 0)
  {
    goto LABEL_8;
  }

LABEL_25:
  *(this + 13) |= 8u;
  v11 = *(this + 4);
  if (!v11)
  {
    operator new();
  }

  v12 = *(a2 + 4);
  if (!v12)
  {
    v12 = *(CLP::LogEntry::PrivateData::TimeConversionInfo::default_instance_ + 32);
  }

  CLP::LogEntry::PrivateData::GalileoTimeInfo::MergeFrom(v11, v12);
  if ((*(a2 + 13) & 0x10) != 0)
  {
LABEL_30:
    *(this + 13) |= 0x10u;
    v13 = *(this + 5);
    if (!v13)
    {
      operator new();
    }

    v14 = *(a2 + 5);
    if (!v14)
    {
      v14 = *(CLP::LogEntry::PrivateData::TimeConversionInfo::default_instance_ + 40);
    }

    CLP::LogEntry::PrivateData::NavicTimeInfo::MergeFrom(v13, v14);
  }
}

void sub_24553461C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void CLP::LogEntry::PrivateData::TimeConversionInfo::~TimeConversionInfo(CLP::LogEntry::PrivateData::TimeConversionInfo *this)
{
  *this = &unk_285861248;
  CLP::LogEntry::PrivateData::TimeConversionInfo::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_285861248;
  CLP::LogEntry::PrivateData::TimeConversionInfo::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_285861248;
  CLP::LogEntry::PrivateData::TimeConversionInfo::SharedDtor(this);
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  JUMPOUT(0x245D6AEE0);
}

void *CLP::LogEntry::PrivateData::TimeConversionInfo::SharedDtor(void *this)
{
  if (CLP::LogEntry::PrivateData::TimeConversionInfo::default_instance_ != this)
  {
    v1 = this;
    v2 = this[1];
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }

    v3 = v1[2];
    if (v3)
    {
      (*(*v3 + 8))(v3);
    }

    v4 = v1[3];
    if (v4)
    {
      (*(*v4 + 8))(v4);
    }

    v5 = v1[4];
    if (v5)
    {
      (*(*v5 + 8))(v5);
    }

    this = v1[5];
    if (this)
    {
      v6 = *(*this + 8);

      return v6();
    }
  }

  return this;
}

uint64_t CLP::LogEntry::PrivateData::TimeConversionInfo::default_instance(CLP::LogEntry::PrivateData::TimeConversionInfo *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = CLP::LogEntry::PrivateData::TimeConversionInfo::default_instance_;
  if (!CLP::LogEntry::PrivateData::TimeConversionInfo::default_instance_)
  {
    CLP::LogEntry::PrivateData::protobuf_AddDesc_CLPGnssMeasApi_2eproto(0, a2, a3, a4);
    return CLP::LogEntry::PrivateData::TimeConversionInfo::default_instance_;
  }

  return result;
}

uint64_t CLP::LogEntry::PrivateData::TimeConversionInfo::Clear(uint64_t this)
{
  v1 = this;
  LOBYTE(v2) = *(this + 52);
  if (v2)
  {
    if (*(this + 52))
    {
      this = *(this + 8);
      if (this)
      {
        this = CLP::LogEntry::PrivateData::GpsTimeInfo::Clear(this);
        v2 = *(v1 + 52);
      }
    }

    if ((v2 & 2) != 0)
    {
      this = *(v1 + 16);
      if (this)
      {
        this = CLP::LogEntry::PrivateData::GlonassTimeInfo::Clear(this);
        v2 = *(v1 + 52);
      }
    }

    if ((v2 & 4) != 0)
    {
      this = *(v1 + 24);
      if (this)
      {
        this = CLP::LogEntry::PrivateData::BeidouTimeInfo::Clear(this);
        v2 = *(v1 + 52);
      }
    }

    if ((v2 & 8) != 0)
    {
      this = *(v1 + 32);
      if (this)
      {
        this = CLP::LogEntry::PrivateData::GalileoTimeInfo::Clear(this);
        v2 = *(v1 + 52);
      }
    }

    if ((v2 & 0x10) != 0)
    {
      this = *(v1 + 40);
      if (this)
      {
        this = CLP::LogEntry::PrivateData::NavicTimeInfo::Clear(this);
      }
    }
  }

  *(v1 + 52) = 0;
  return this;
}

uint64_t CLP::LogEntry::PrivateData::TimeConversionInfo::MergePartialFromCodedStream(CLP::LogEntry::PrivateData::TimeConversionInfo *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
{
  while (1)
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
        v8 = TagFallback & 7;
        if (TagFallback >> 3 <= 2)
        {
          break;
        }

        if (v7 == 3)
        {
          if (v8 != 2)
          {
            goto LABEL_21;
          }

          goto LABEL_52;
        }

        if (v7 == 4)
        {
          if (v8 != 2)
          {
            goto LABEL_21;
          }

LABEL_66:
          *(this + 13) |= 8u;
          v34 = *(this + 4);
          if (!v34)
          {
            operator new();
          }

          v50 = 0;
          v35 = *(a2 + 1);
          if (v35 >= *(a2 + 2) || *v35 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v50))
            {
              return 0;
            }
          }

          else
          {
            v50 = *v35;
            *(a2 + 1) = v35 + 1;
          }

          v36 = *(a2 + 14);
          v37 = *(a2 + 15);
          *(a2 + 14) = v36 + 1;
          if (v36 >= v37)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
          if (!CLP::LogEntry::PrivateData::GalileoTimeInfo::MergePartialFromCodedStream(v34, a2, v38) || *(a2 + 36) != 1)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
          v39 = *(a2 + 14);
          v15 = __OFSUB__(v39, 1);
          v40 = v39 - 1;
          if (v40 < 0 == v15)
          {
            *(a2 + 14) = v40;
          }

          v41 = *(a2 + 1);
          if (v41 < *(a2 + 2) && *v41 == 42)
          {
            *(a2 + 1) = v41 + 1;
            goto LABEL_80;
          }
        }

        else
        {
          if (v7 != 5 || v8 != 2)
          {
            goto LABEL_21;
          }

LABEL_80:
          *(this + 13) |= 0x10u;
          v42 = *(this + 5);
          if (!v42)
          {
            operator new();
          }

          v50 = 0;
          v43 = *(a2 + 1);
          if (v43 >= *(a2 + 2) || *v43 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v50))
            {
              return 0;
            }
          }

          else
          {
            v50 = *v43;
            *(a2 + 1) = v43 + 1;
          }

          v44 = *(a2 + 14);
          v45 = *(a2 + 15);
          *(a2 + 14) = v44 + 1;
          if (v44 >= v45)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
          if (!CLP::LogEntry::PrivateData::NavicTimeInfo::MergePartialFromCodedStream(v42, a2, v46) || *(a2 + 36) != 1)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
          v47 = *(a2 + 14);
          v15 = __OFSUB__(v47, 1);
          v48 = v47 - 1;
          if (v48 < 0 == v15)
          {
            *(a2 + 14) = v48;
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

      if (v7 != 1)
      {
        break;
      }

      if (v8 != 2)
      {
        goto LABEL_21;
      }

      *(this + 13) |= 1u;
      v9 = *(this + 1);
      if (!v9)
      {
        operator new();
      }

      v50 = 0;
      v10 = *(a2 + 1);
      if (v10 >= *(a2 + 2) || *v10 < 0)
      {
        if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v50))
        {
          return 0;
        }
      }

      else
      {
        v50 = *v10;
        *(a2 + 1) = v10 + 1;
      }

      v11 = *(a2 + 14);
      v12 = *(a2 + 15);
      *(a2 + 14) = v11 + 1;
      if (v11 >= v12)
      {
        return 0;
      }

      wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
      if (!CLP::LogEntry::PrivateData::GpsTimeInfo::MergePartialFromCodedStream(v9, a2, v13) || *(a2 + 36) != 1)
      {
        return 0;
      }

      wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
      v14 = *(a2 + 14);
      v15 = __OFSUB__(v14, 1);
      v16 = v14 - 1;
      if (v16 < 0 == v15)
      {
        *(a2 + 14) = v16;
      }

      v17 = *(a2 + 1);
      if (v17 < *(a2 + 2) && *v17 == 18)
      {
        *(a2 + 1) = v17 + 1;
LABEL_38:
        *(this + 13) |= 2u;
        v18 = *(this + 2);
        if (!v18)
        {
          operator new();
        }

        v50 = 0;
        v19 = *(a2 + 1);
        if (v19 >= *(a2 + 2) || *v19 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v50))
          {
            return 0;
          }
        }

        else
        {
          v50 = *v19;
          *(a2 + 1) = v19 + 1;
        }

        v20 = *(a2 + 14);
        v21 = *(a2 + 15);
        *(a2 + 14) = v20 + 1;
        if (v20 >= v21)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
        if (!CLP::LogEntry::PrivateData::GlonassTimeInfo::MergePartialFromCodedStream(v18, a2, v22) || *(a2 + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
        v23 = *(a2 + 14);
        v15 = __OFSUB__(v23, 1);
        v24 = v23 - 1;
        if (v24 < 0 == v15)
        {
          *(a2 + 14) = v24;
        }

        v25 = *(a2 + 1);
        if (v25 < *(a2 + 2) && *v25 == 26)
        {
          *(a2 + 1) = v25 + 1;
LABEL_52:
          *(this + 13) |= 4u;
          v26 = *(this + 3);
          if (!v26)
          {
            operator new();
          }

          v50 = 0;
          v27 = *(a2 + 1);
          if (v27 >= *(a2 + 2) || *v27 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v50))
            {
              return 0;
            }
          }

          else
          {
            v50 = *v27;
            *(a2 + 1) = v27 + 1;
          }

          v28 = *(a2 + 14);
          v29 = *(a2 + 15);
          *(a2 + 14) = v28 + 1;
          if (v28 >= v29)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
          if (!CLP::LogEntry::PrivateData::BeidouTimeInfo::MergePartialFromCodedStream(v26, a2, v30) || *(a2 + 36) != 1)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
          v31 = *(a2 + 14);
          v15 = __OFSUB__(v31, 1);
          v32 = v31 - 1;
          if (v32 < 0 == v15)
          {
            *(a2 + 14) = v32;
          }

          v33 = *(a2 + 1);
          if (v33 < *(a2 + 2) && *v33 == 34)
          {
            *(a2 + 1) = v33 + 1;
            goto LABEL_66;
          }
        }
      }
    }

    if (v7 == 2 && v8 == 2)
    {
      goto LABEL_38;
    }

LABEL_21:
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

uint64_t CLP::LogEntry::PrivateData::TimeConversionInfo::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 52);
  if (v6)
  {
    v7 = *(this + 8);
    if (!v7)
    {
      v7 = *(CLP::LogEntry::PrivateData::TimeConversionInfo::default_instance_ + 8);
    }

    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(1, v7, a2, a4);
    v6 = *(v5 + 52);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_13;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  v8 = *(v5 + 16);
  if (!v8)
  {
    v8 = *(CLP::LogEntry::PrivateData::TimeConversionInfo::default_instance_ + 16);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(2, v8, a2, a4);
  v6 = *(v5 + 52);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_16;
  }

LABEL_13:
  v9 = *(v5 + 24);
  if (!v9)
  {
    v9 = *(CLP::LogEntry::PrivateData::TimeConversionInfo::default_instance_ + 24);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(3, v9, a2, a4);
  v6 = *(v5 + 52);
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      return this;
    }

    goto LABEL_19;
  }

LABEL_16:
  v10 = *(v5 + 32);
  if (!v10)
  {
    v10 = *(CLP::LogEntry::PrivateData::TimeConversionInfo::default_instance_ + 32);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(4, v10, a2, a4);
  if ((*(v5 + 52) & 0x10) != 0)
  {
LABEL_19:
    v11 = *(v5 + 40);
    if (!v11)
    {
      v11 = *(CLP::LogEntry::PrivateData::TimeConversionInfo::default_instance_ + 40);
    }

    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(5, v11, a2, a4);
  }

  return this;
}

uint64_t CLP::LogEntry::PrivateData::TimeConversionInfo::ByteSize(CLP::LogEntry::PrivateData::TimeConversionInfo *this, unint64_t a2)
{
  LOBYTE(v3) = *(this + 52);
  if (!v3)
  {
    v4 = 0;
    goto LABEL_40;
  }

  if ((*(this + 52) & 1) == 0)
  {
    v4 = 0;
    if ((*(this + 52) & 2) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_12;
  }

  v5 = *(this + 1);
  if (!v5)
  {
    v5 = *(CLP::LogEntry::PrivateData::TimeConversionInfo::default_instance_ + 8);
  }

  v6 = CLP::LogEntry::PrivateData::GpsTimeInfo::ByteSize(v5, a2);
  v7 = v6;
  if (v6 >= 0x80)
  {
    v8 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v6);
  }

  else
  {
    v8 = 1;
  }

  v4 = (v7 + v8 + 1);
  v3 = *(this + 13);
  if ((v3 & 2) != 0)
  {
LABEL_12:
    v9 = *(this + 2);
    if (!v9)
    {
      v9 = *(CLP::LogEntry::PrivateData::TimeConversionInfo::default_instance_ + 16);
    }

    v10 = CLP::LogEntry::PrivateData::GlonassTimeInfo::ByteSize(v9, a2);
    v11 = v10;
    if (v10 >= 0x80)
    {
      v12 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v10);
    }

    else
    {
      v12 = 1;
    }

    v4 = (v4 + v11 + v12 + 1);
    v3 = *(this + 13);
  }

LABEL_18:
  if ((v3 & 4) != 0)
  {
    v13 = *(this + 3);
    if (!v13)
    {
      v13 = *(CLP::LogEntry::PrivateData::TimeConversionInfo::default_instance_ + 24);
    }

    v14 = CLP::LogEntry::PrivateData::BeidouTimeInfo::ByteSize(v13, a2);
    v15 = v14;
    if (v14 >= 0x80)
    {
      v16 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v14);
    }

    else
    {
      v16 = 1;
    }

    v4 = (v4 + v15 + v16 + 1);
    v3 = *(this + 13);
    if ((v3 & 8) == 0)
    {
LABEL_20:
      if ((v3 & 0x10) == 0)
      {
        goto LABEL_40;
      }

      goto LABEL_34;
    }
  }

  else if ((v3 & 8) == 0)
  {
    goto LABEL_20;
  }

  v17 = *(this + 4);
  if (!v17)
  {
    v17 = *(CLP::LogEntry::PrivateData::TimeConversionInfo::default_instance_ + 32);
  }

  v18 = CLP::LogEntry::PrivateData::GalileoTimeInfo::ByteSize(v17, a2);
  v19 = v18;
  if (v18 >= 0x80)
  {
    v20 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v18);
  }

  else
  {
    v20 = 1;
  }

  v4 = (v4 + v19 + v20 + 1);
  if ((*(this + 13) & 0x10) != 0)
  {
LABEL_34:
    v21 = *(this + 5);
    if (!v21)
    {
      v21 = *(CLP::LogEntry::PrivateData::TimeConversionInfo::default_instance_ + 40);
    }

    v22 = CLP::LogEntry::PrivateData::NavicTimeInfo::ByteSize(v21, a2);
    v23 = v22;
    if (v22 >= 0x80)
    {
      v24 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v22);
    }

    else
    {
      v24 = 1;
    }

    v4 = (v4 + v23 + v24 + 1);
  }

LABEL_40:
  *(this + 12) = v4;
  return v4;
}

void CLP::LogEntry::PrivateData::TimeConversionInfo::CheckTypeAndMergeFrom(CLP::LogEntry::PrivateData::TimeConversionInfo *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  CLP::LogEntry::PrivateData::TimeConversionInfo::MergeFrom(this, lpsrc);
}

void CLP::LogEntry::PrivateData::TimeConversionInfo::CopyFrom(CLP::LogEntry::PrivateData::TimeConversionInfo *this, const CLP::LogEntry::PrivateData::TimeConversionInfo *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    CLP::LogEntry::PrivateData::TimeConversionInfo::MergeFrom(this, a2);
  }
}

uint64_t CLP::LogEntry::PrivateData::TimeConversionInfo::Swap(uint64_t this, CLP::LogEntry::PrivateData::TimeConversionInfo *a2)
{
  if (a2 != this)
  {
    v2 = *(this + 8);
    *(this + 8) = *(a2 + 1);
    *(a2 + 1) = v2;
    v3 = *(this + 16);
    *(this + 16) = *(a2 + 2);
    *(a2 + 2) = v3;
    v4 = *(this + 24);
    *(this + 24) = *(a2 + 3);
    *(a2 + 3) = v4;
    v5 = *(this + 32);
    *(this + 32) = *(a2 + 4);
    *(a2 + 4) = v5;
    v6 = *(this + 40);
    *(this + 40) = *(a2 + 5);
    *(a2 + 5) = v6;
    LODWORD(v6) = *(this + 52);
    *(this + 52) = *(a2 + 13);
    *(a2 + 13) = v6;
    LODWORD(v6) = *(this + 48);
    *(this + 48) = *(a2 + 12);
    *(a2 + 12) = v6;
  }

  return this;
}

double CLP::LogEntry::PrivateData::KlobucharModelParameters::SharedCtor(CLP::LogEntry::PrivateData::KlobucharModelParameters *this)
{
  result = 0.0;
  *(this + 40) = 0u;
  *(this + 24) = 0u;
  *(this + 8) = 0u;
  return result;
}

CLP::LogEntry::PrivateData::KlobucharModelParameters *CLP::LogEntry::PrivateData::KlobucharModelParameters::KlobucharModelParameters(CLP::LogEntry::PrivateData::KlobucharModelParameters *this, const CLP::LogEntry::PrivateData::KlobucharModelParameters *a2)
{
  *this = &unk_2858612C0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  CLP::LogEntry::PrivateData::KlobucharModelParameters::MergeFrom(this, a2);
  return this;
}

float CLP::LogEntry::PrivateData::KlobucharModelParameters::MergeFrom(CLP::LogEntry::PrivateData::KlobucharModelParameters *this, const CLP::LogEntry::PrivateData::KlobucharModelParameters *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v7);
  }

  v5 = *(a2 + 13);
  if (!v5)
  {
    goto LABEL_13;
  }

  if (v5)
  {
    v6 = *(a2 + 1);
    *(this + 13) |= 1u;
    *(this + 1) = v6;
    v5 = *(a2 + 13);
    if ((v5 & 2) == 0)
    {
LABEL_6:
      if ((v5 & 4) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_18;
    }
  }

  else if ((v5 & 2) == 0)
  {
    goto LABEL_6;
  }

  result = *(a2 + 4);
  *(this + 13) |= 2u;
  *(this + 4) = result;
  v5 = *(a2 + 13);
  if ((v5 & 4) == 0)
  {
LABEL_7:
    if ((v5 & 8) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_19;
  }

LABEL_18:
  result = *(a2 + 5);
  *(this + 13) |= 4u;
  *(this + 5) = result;
  v5 = *(a2 + 13);
  if ((v5 & 8) == 0)
  {
LABEL_8:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_20;
  }

LABEL_19:
  result = *(a2 + 6);
  *(this + 13) |= 8u;
  *(this + 6) = result;
  v5 = *(a2 + 13);
  if ((v5 & 0x10) == 0)
  {
LABEL_9:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_10;
    }

LABEL_21:
    result = *(a2 + 8);
    *(this + 13) |= 0x20u;
    *(this + 8) = result;
    v5 = *(a2 + 13);
    if ((v5 & 0x40) == 0)
    {
LABEL_11:
      if ((v5 & 0x80) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_12;
    }

    goto LABEL_22;
  }

LABEL_20:
  result = *(a2 + 7);
  *(this + 13) |= 0x10u;
  *(this + 7) = result;
  v5 = *(a2 + 13);
  if ((v5 & 0x20) != 0)
  {
    goto LABEL_21;
  }

LABEL_10:
  if ((v5 & 0x40) == 0)
  {
    goto LABEL_11;
  }

LABEL_22:
  result = *(a2 + 9);
  *(this + 13) |= 0x40u;
  *(this + 9) = result;
  v5 = *(a2 + 13);
  if ((v5 & 0x80) != 0)
  {
LABEL_12:
    result = *(a2 + 10);
    *(this + 13) |= 0x80u;
    *(this + 10) = result;
    v5 = *(a2 + 13);
  }

LABEL_13:
  if ((v5 & 0x100) != 0)
  {
    result = *(a2 + 11);
    *(this + 13) |= 0x100u;
    *(this + 11) = result;
  }

  return result;
}

void sub_2455356D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void CLP::LogEntry::PrivateData::KlobucharModelParameters::~KlobucharModelParameters(CLP::LogEntry::PrivateData::KlobucharModelParameters *this)
{
  *this = &unk_2858612C0;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2858612C0;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2858612C0;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  JUMPOUT(0x245D6AEE0);
}

uint64_t CLP::LogEntry::PrivateData::KlobucharModelParameters::default_instance(CLP::LogEntry::PrivateData::KlobucharModelParameters *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = CLP::LogEntry::PrivateData::KlobucharModelParameters::default_instance_;
  if (!CLP::LogEntry::PrivateData::KlobucharModelParameters::default_instance_)
  {
    CLP::LogEntry::PrivateData::protobuf_AddDesc_CLPGnssMeasApi_2eproto(0, a2, a3, a4);
    return CLP::LogEntry::PrivateData::KlobucharModelParameters::default_instance_;
  }

  return result;
}

uint64_t CLP::LogEntry::PrivateData::KlobucharModelParameters::Clear(uint64_t this)
{
  v1 = *(this + 52);
  if (v1)
  {
    *(this + 40) = 0;
    *(this + 24) = 0u;
    *(this + 8) = 0u;
  }

  if ((v1 & 0xFF00) != 0)
  {
    *(this + 44) = 0;
  }

  *(this + 52) = 0;
  return this;
}

uint64_t CLP::LogEntry::PrivateData::KlobucharModelParameters::MergePartialFromCodedStream(CLP::LogEntry::PrivateData::KlobucharModelParameters *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
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

        v7 = TagFallback >> 3;
        v8 = TagFallback & 7;
        if (TagFallback >> 3 > 4)
        {
          break;
        }

        if (TagFallback >> 3 > 2)
        {
          if (v7 != 3)
          {
            if (v7 != 4 || v8 != 5)
            {
              goto LABEL_37;
            }

            goto LABEL_53;
          }

          if (v8 != 5)
          {
            goto LABEL_37;
          }

LABEL_49:
          v21 = 0;
          if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a2, &v21) & 1) == 0)
          {
            return 0;
          }

          *(this + 5) = v21;
          *(this + 13) |= 4u;
          v15 = *(a2 + 1);
          if (v15 < *(a2 + 2) && *v15 == 37)
          {
            *(a2 + 1) = v15 + 1;
LABEL_53:
            v21 = 0;
            if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a2, &v21) & 1) == 0)
            {
              return 0;
            }

            *(this + 6) = v21;
            *(this + 13) |= 8u;
            v16 = *(a2 + 1);
            if (v16 < *(a2 + 2) && *v16 == 45)
            {
              *(a2 + 1) = v16 + 1;
LABEL_57:
              v21 = 0;
              if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a2, &v21) & 1) == 0)
              {
                return 0;
              }

              *(this + 7) = v21;
              *(this + 13) |= 0x10u;
              v17 = *(a2 + 1);
              if (v17 < *(a2 + 2) && *v17 == 53)
              {
                *(a2 + 1) = v17 + 1;
LABEL_61:
                v21 = 0;
                if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a2, &v21) & 1) == 0)
                {
                  return 0;
                }

                *(this + 8) = v21;
                *(this + 13) |= 0x20u;
                v18 = *(a2 + 1);
                if (v18 < *(a2 + 2) && *v18 == 61)
                {
                  *(a2 + 1) = v18 + 1;
LABEL_65:
                  v21 = 0;
                  if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a2, &v21) & 1) == 0)
                  {
                    return 0;
                  }

                  *(this + 9) = v21;
                  *(this + 13) |= 0x40u;
                  v19 = *(a2 + 1);
                  if (v19 < *(a2 + 2) && *v19 == 69)
                  {
                    *(a2 + 1) = v19 + 1;
                    goto LABEL_69;
                  }
                }
              }
            }
          }
        }

        else
        {
          if (v7 != 1)
          {
            if (v7 != 2 || v8 != 5)
            {
              goto LABEL_37;
            }

            goto LABEL_45;
          }

          if ((TagFallback & 7) != 0)
          {
            goto LABEL_37;
          }

          v10 = *(a2 + 1);
          v9 = *(a2 + 2);
          if (v10 >= v9 || (v11 = *v10, v11 < 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 1);
            if (!result)
            {
              return result;
            }

            v12 = *(a2 + 1);
            v9 = *(a2 + 2);
          }

          else
          {
            *(this + 1) = v11;
            v12 = v10 + 1;
            *(a2 + 1) = v12;
          }

          *(this + 13) |= 1u;
          if (v12 < v9 && *v12 == 21)
          {
            *(a2 + 1) = v12 + 1;
LABEL_45:
            v21 = 0;
            if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a2, &v21) & 1) == 0)
            {
              return 0;
            }

            *(this + 4) = v21;
            *(this + 13) |= 2u;
            v14 = *(a2 + 1);
            if (v14 < *(a2 + 2) && *v14 == 29)
            {
              *(a2 + 1) = v14 + 1;
              goto LABEL_49;
            }
          }
        }
      }

      if (TagFallback >> 3 <= 6)
      {
        break;
      }

      if (v7 == 7)
      {
        if (v8 != 5)
        {
          goto LABEL_37;
        }

        goto LABEL_65;
      }

      if (v7 == 8)
      {
        if (v8 != 5)
        {
          goto LABEL_37;
        }

LABEL_69:
        v21 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a2, &v21) & 1) == 0)
        {
          return 0;
        }

        *(this + 10) = v21;
        *(this + 13) |= 0x80u;
        v20 = *(a2 + 1);
        if (v20 < *(a2 + 2) && *v20 == 77)
        {
          *(a2 + 1) = v20 + 1;
          goto LABEL_73;
        }
      }

      else
      {
        if (v7 != 9 || v8 != 5)
        {
          goto LABEL_37;
        }

LABEL_73:
        v21 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a2, &v21) & 1) == 0)
        {
          return 0;
        }

        *(this + 11) = v21;
        *(this + 13) |= 0x100u;
        if (*(a2 + 1) == *(a2 + 2) && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
        {
          *(a2 + 8) = 0;
          result = 1;
          *(a2 + 36) = 1;
          return result;
        }
      }
    }

    if (v7 == 5)
    {
      if (v8 != 5)
      {
        goto LABEL_37;
      }

      goto LABEL_57;
    }

    if (v7 == 6 && v8 == 5)
    {
      goto LABEL_61;
    }

LABEL_37:
    if (v8 == 4)
    {
      return 1;
    }
  }

  while ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(a2, TagFallback) & 1) != 0);
  return 0;
}

uint64_t CLP::LogEntry::PrivateData::KlobucharModelParameters::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 52);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(1, *(this + 8), a2, a4);
    v6 = *(v5 + 52);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_13;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(2, a2, *(v5 + 16), a3);
  v6 = *(v5 + 52);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_14;
  }

LABEL_13:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(3, a2, *(v5 + 20), a3);
  v6 = *(v5 + 52);
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_15;
  }

LABEL_14:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(4, a2, *(v5 + 24), a3);
  v6 = *(v5 + 52);
  if ((v6 & 0x10) == 0)
  {
LABEL_6:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_16;
  }

LABEL_15:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(5, a2, *(v5 + 28), a3);
  v6 = *(v5 + 52);
  if ((v6 & 0x20) == 0)
  {
LABEL_7:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_17;
  }

LABEL_16:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(6, a2, *(v5 + 32), a3);
  v6 = *(v5 + 52);
  if ((v6 & 0x40) == 0)
  {
LABEL_8:
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_9;
    }

LABEL_18:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(8, a2, *(v5 + 40), a3);
    if ((*(v5 + 52) & 0x100) == 0)
    {
      return this;
    }

    goto LABEL_19;
  }

LABEL_17:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(7, a2, *(v5 + 36), a3);
  v6 = *(v5 + 52);
  if ((v6 & 0x80) != 0)
  {
    goto LABEL_18;
  }

LABEL_9:
  if ((v6 & 0x100) == 0)
  {
    return this;
  }

LABEL_19:
  v7 = *(v5 + 44);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(9, a2, v7, a3);
}

uint64_t CLP::LogEntry::PrivateData::KlobucharModelParameters::ByteSize(CLP::LogEntry::PrivateData::KlobucharModelParameters *this, unint64_t a2)
{
  v3 = *(this + 13);
  if (v3)
  {
    if (v3)
    {
      v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 1)) + 1;
      v3 = *(this + 13);
    }

    else
    {
      v4 = 0;
    }

    if ((v3 & 2) != 0)
    {
      v4 += 5;
    }

    if ((v3 & 4) != 0)
    {
      v4 += 5;
    }

    if ((v3 & 8) != 0)
    {
      v4 += 5;
    }

    if ((v3 & 0x10) != 0)
    {
      v4 += 5;
    }

    if ((v3 & 0x20) != 0)
    {
      v4 += 5;
    }

    if ((v3 & 0x40) != 0)
    {
      v4 += 5;
    }

    if ((v3 & 0x80) != 0)
    {
      v4 += 5;
    }
  }

  else
  {
    v4 = 0;
  }

  if ((v3 & 0x100) != 0)
  {
    result = v4 + 5;
  }

  else
  {
    result = v4;
  }

  *(this + 12) = result;
  return result;
}

float CLP::LogEntry::PrivateData::KlobucharModelParameters::CheckTypeAndMergeFrom(CLP::LogEntry::PrivateData::KlobucharModelParameters *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  return CLP::LogEntry::PrivateData::KlobucharModelParameters::MergeFrom(this, lpsrc);
}

float CLP::LogEntry::PrivateData::KlobucharModelParameters::CopyFrom(CLP::LogEntry::PrivateData::KlobucharModelParameters *this, const CLP::LogEntry::PrivateData::KlobucharModelParameters *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    return CLP::LogEntry::PrivateData::KlobucharModelParameters::MergeFrom(this, a2);
  }

  return result;
}

float CLP::LogEntry::PrivateData::KlobucharModelParameters::Swap(CLP::LogEntry::PrivateData::KlobucharModelParameters *this, CLP::LogEntry::PrivateData::KlobucharModelParameters *a2)
{
  if (a2 != this)
  {
    v2 = *(this + 1);
    *(this + 1) = *(a2 + 1);
    *(a2 + 1) = v2;
    v3 = *(this + 4);
    *(this + 4) = *(a2 + 4);
    *(a2 + 4) = v3;
    v4 = *(this + 5);
    *(this + 5) = *(a2 + 5);
    *(a2 + 5) = v4;
    v5 = *(this + 6);
    *(this + 6) = *(a2 + 6);
    *(a2 + 6) = v5;
    v6 = *(this + 7);
    *(this + 7) = *(a2 + 7);
    *(a2 + 7) = v6;
    v7 = *(this + 8);
    *(this + 8) = *(a2 + 8);
    *(a2 + 8) = v7;
    v8 = *(this + 9);
    *(this + 9) = *(a2 + 9);
    *(a2 + 9) = v8;
    v9 = *(this + 10);
    *(this + 10) = *(a2 + 10);
    *(a2 + 10) = v9;
    result = *(this + 11);
    *(this + 11) = *(a2 + 11);
    *(a2 + 11) = result;
    LODWORD(v2) = *(this + 13);
    *(this + 13) = *(a2 + 13);
    *(a2 + 13) = v2;
    LODWORD(v2) = *(this + 12);
    *(this + 12) = *(a2 + 12);
    *(a2 + 12) = v2;
  }

  return result;
}

double CLP::LogEntry::PrivateData::SfcfXyz::SharedCtor(CLP::LogEntry::PrivateData::SfcfXyz *this)
{
  result = 0.0;
  *(this + 24) = 0u;
  *(this + 8) = 0u;
  return result;
}

CLP::LogEntry::PrivateData::SfcfXyz *CLP::LogEntry::PrivateData::SfcfXyz::SfcfXyz(CLP::LogEntry::PrivateData::SfcfXyz *this, const CLP::LogEntry::PrivateData::SfcfXyz *a2)
{
  *this = &unk_285861338;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  CLP::LogEntry::PrivateData::SfcfXyz::MergeFrom(this, a2);
  return this;
}

double CLP::LogEntry::PrivateData::SfcfXyz::MergeFrom(CLP::LogEntry::PrivateData::SfcfXyz *this, const CLP::LogEntry::PrivateData::SfcfXyz *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v6);
  }

  LOBYTE(v5) = *(a2 + 36);
  if (v5)
  {
    if (*(a2 + 36))
    {
      result = *(a2 + 1);
      *(this + 9) |= 1u;
      *(this + 1) = result;
      v5 = *(a2 + 9);
      if ((v5 & 2) == 0)
      {
LABEL_6:
        if ((v5 & 4) == 0)
        {
          return result;
        }

        goto LABEL_7;
      }
    }

    else if ((*(a2 + 36) & 2) == 0)
    {
      goto LABEL_6;
    }

    result = *(a2 + 2);
    *(this + 9) |= 2u;
    *(this + 2) = result;
    if ((*(a2 + 9) & 4) == 0)
    {
      return result;
    }

LABEL_7:
    result = *(a2 + 3);
    *(this + 9) |= 4u;
    *(this + 3) = result;
  }

  return result;
}

void sub_245536190(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void CLP::LogEntry::PrivateData::SfcfXyz::~SfcfXyz(CLP::LogEntry::PrivateData::SfcfXyz *this)
{
  *this = &unk_285861338;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_285861338;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_285861338;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  JUMPOUT(0x245D6AEE0);
}

uint64_t CLP::LogEntry::PrivateData::SfcfXyz::default_instance(CLP::LogEntry::PrivateData::SfcfXyz *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = CLP::LogEntry::PrivateData::SfcfXyz::default_instance_;
  if (!CLP::LogEntry::PrivateData::SfcfXyz::default_instance_)
  {
    CLP::LogEntry::PrivateData::protobuf_AddDesc_CLPGnssMeasApi_2eproto(0, a2, a3, a4);
    return CLP::LogEntry::PrivateData::SfcfXyz::default_instance_;
  }

  return result;
}

uint64_t CLP::LogEntry::PrivateData::SfcfXyz::Clear(uint64_t this)
{
  if (*(this + 36))
  {
    *(this + 8) = 0;
    *(this + 16) = 0;
    *(this + 24) = 0;
  }

  *(this + 36) = 0;
  return this;
}

uint64_t CLP::LogEntry::PrivateData::SfcfXyz::MergePartialFromCodedStream(CLP::LogEntry::PrivateData::SfcfXyz *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
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

        v7 = TagFallback >> 3;
        v8 = TagFallback & 7;
        if (TagFallback >> 3 != 3)
        {
          break;
        }

        if (v8 != 1)
        {
          goto LABEL_20;
        }

LABEL_23:
        v12 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, &v12) & 1) == 0)
        {
          return 0;
        }

        *(this + 3) = v12;
        *(this + 9) |= 4u;
        if (*(a2 + 1) == *(a2 + 2) && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
        {
          *(a2 + 8) = 0;
          result = 1;
          *(a2 + 36) = 1;
          return result;
        }
      }

      if (v7 == 2)
      {
        break;
      }

      if (v7 != 1 || v8 != 1)
      {
        goto LABEL_20;
      }

      v12 = 0;
      if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, &v12) & 1) == 0)
      {
        return 0;
      }

      *(this + 1) = v12;
      *(this + 9) |= 1u;
      v9 = *(a2 + 1);
      if (v9 < *(a2 + 2) && *v9 == 17)
      {
        *(a2 + 1) = v9 + 1;
LABEL_15:
        v12 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, &v12) & 1) == 0)
        {
          return 0;
        }

        *(this + 2) = v12;
        *(this + 9) |= 2u;
        v10 = *(a2 + 1);
        if (v10 < *(a2 + 2) && *v10 == 25)
        {
          *(a2 + 1) = v10 + 1;
          goto LABEL_23;
        }
      }
    }

    if (v8 == 1)
    {
      goto LABEL_15;
    }

LABEL_20:
    if (v8 == 4)
    {
      return 1;
    }
  }

  while ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(a2, TagFallback) & 1) != 0);
  return 0;
}

uint64_t CLP::LogEntry::PrivateData::SfcfXyz::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3)
{
  v4 = this;
  v5 = *(this + 36);
  if ((v5 & 1) == 0)
  {
    if ((v5 & 2) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(2, a2, *(v4 + 16), a3);
    if ((*(v4 + 36) & 4) == 0)
    {
      return this;
    }

    goto LABEL_7;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(1, a2, *(this + 8), a3);
  v5 = *(v4 + 36);
  if ((v5 & 2) != 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  if ((v5 & 4) == 0)
  {
    return this;
  }

LABEL_7:
  v6 = *(v4 + 24);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(3, a2, v6, a3);
}

uint64_t CLP::LogEntry::PrivateData::SfcfXyz::ByteSize(CLP::LogEntry::PrivateData::SfcfXyz *this)
{
  v1 = *(this + 36);
  if (*(this + 36))
  {
    v2 = ((v1 << 31) >> 31) & 9;
    if ((v1 & 2) != 0)
    {
      v2 += 9;
    }

    if ((v1 & 4) != 0)
    {
      v1 = v2 + 9;
    }

    else
    {
      v1 = v2;
    }
  }

  *(this + 8) = v1;
  return v1;
}

double CLP::LogEntry::PrivateData::SfcfXyz::CheckTypeAndMergeFrom(CLP::LogEntry::PrivateData::SfcfXyz *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  return CLP::LogEntry::PrivateData::SfcfXyz::MergeFrom(this, lpsrc);
}

double CLP::LogEntry::PrivateData::SfcfXyz::CopyFrom(CLP::LogEntry::PrivateData::SfcfXyz *this, const CLP::LogEntry::PrivateData::SfcfXyz *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    return CLP::LogEntry::PrivateData::SfcfXyz::MergeFrom(this, a2);
  }

  return result;
}

double CLP::LogEntry::PrivateData::SfcfXyz::Swap(CLP::LogEntry::PrivateData::SfcfXyz *this, CLP::LogEntry::PrivateData::SfcfXyz *a2)
{
  if (a2 != this)
  {
    v2 = *(this + 1);
    *(this + 1) = *(a2 + 1);
    *(a2 + 1) = v2;
    v3 = *(this + 2);
    *(this + 2) = *(a2 + 2);
    *(a2 + 2) = v3;
    result = *(this + 3);
    *(this + 3) = *(a2 + 3);
    *(a2 + 3) = result;
    v5 = *(this + 9);
    *(this + 9) = *(a2 + 9);
    *(a2 + 9) = v5;
    v6 = *(this + 8);
    *(this + 8) = *(a2 + 8);
    *(a2 + 8) = v6;
  }

  return result;
}

double CLP::LogEntry::PrivateData::AntennaPhaseCenterSvOffset::SharedCtor(CLP::LogEntry::PrivateData::AntennaPhaseCenterSvOffset *this)
{
  result = 0.0;
  *(this + 24) = 0u;
  *(this + 8) = 0u;
  return result;
}

CLP::LogEntry::PrivateData::AntennaPhaseCenterSvOffset *CLP::LogEntry::PrivateData::AntennaPhaseCenterSvOffset::AntennaPhaseCenterSvOffset(CLP::LogEntry::PrivateData::AntennaPhaseCenterSvOffset *this, const CLP::LogEntry::PrivateData::AntennaPhaseCenterSvOffset *a2)
{
  *this = &unk_2858613B0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  CLP::LogEntry::PrivateData::AntennaPhaseCenterSvOffset::MergeFrom(this, a2);
  return this;
}

double CLP::LogEntry::PrivateData::AntennaPhaseCenterSvOffset::MergeFrom(CLP::LogEntry::PrivateData::AntennaPhaseCenterSvOffset *this, const CLP::LogEntry::PrivateData::AntennaPhaseCenterSvOffset *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v12);
  }

  LOBYTE(v5) = *(a2 + 36);
  if (v5)
  {
    if (*(a2 + 36))
    {
      *(this + 9) |= 1u;
      v6 = *(this + 1);
      if (!v6)
      {
        operator new();
      }

      v7 = *(a2 + 1);
      if (!v7)
      {
        v7 = *(CLP::LogEntry::PrivateData::AntennaPhaseCenterSvOffset::default_instance_ + 8);
      }

      CLP::LogEntry::PrivateData::SvId::MergeFrom(v6, v7);
      v5 = *(a2 + 9);
    }

    if ((v5 & 2) != 0)
    {
      v8 = *(a2 + 4);
      if (v8 >= 0xD)
      {
        __assert_rtn("set_band", "CLPGnssMeasApi.pb.h", 13136, "::CLP::LogEntry::PrivateData::Band_IsValid(value)");
      }

      *(this + 9) |= 2u;
      *(this + 4) = v8;
      v5 = *(a2 + 9);
    }

    if ((v5 & 4) != 0)
    {
      v9 = *(a2 + 5);
      if (v9 >= 4)
      {
        __assert_rtn("set_sv_reference_point", "CLPGnssMeasApi.pb.h", 13159, "::CLP::LogEntry::PrivateData::SvReferencePoint_IsValid(value)");
      }

      *(this + 9) |= 4u;
      *(this + 5) = v9;
      v5 = *(a2 + 9);
    }

    if ((v5 & 8) != 0)
    {
      *(this + 9) |= 8u;
      v10 = *(this + 3);
      if (!v10)
      {
        operator new();
      }

      v11 = *(a2 + 3);
      if (!v11)
      {
        v11 = *(CLP::LogEntry::PrivateData::AntennaPhaseCenterSvOffset::default_instance_ + 24);
      }

      return CLP::LogEntry::PrivateData::SfcfXyz::MergeFrom(v10, v11);
    }
  }

  return result;
}

void sub_245536970(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void CLP::LogEntry::PrivateData::AntennaPhaseCenterSvOffset::~AntennaPhaseCenterSvOffset(CLP::LogEntry::PrivateData::AntennaPhaseCenterSvOffset *this)
{
  *this = &unk_2858613B0;
  CLP::LogEntry::PrivateData::AntennaPhaseCenterSvOffset::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2858613B0;
  CLP::LogEntry::PrivateData::AntennaPhaseCenterSvOffset::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2858613B0;
  CLP::LogEntry::PrivateData::AntennaPhaseCenterSvOffset::SharedDtor(this);
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  JUMPOUT(0x245D6AEE0);
}

void *CLP::LogEntry::PrivateData::AntennaPhaseCenterSvOffset::SharedDtor(void *this)
{
  if (CLP::LogEntry::PrivateData::AntennaPhaseCenterSvOffset::default_instance_ != this)
  {
    v1 = this;
    v2 = this[1];
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }

    this = v1[3];
    if (this)
    {
      v3 = *(*this + 8);

      return v3();
    }
  }

  return this;
}

uint64_t CLP::LogEntry::PrivateData::AntennaPhaseCenterSvOffset::default_instance(CLP::LogEntry::PrivateData::AntennaPhaseCenterSvOffset *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = CLP::LogEntry::PrivateData::AntennaPhaseCenterSvOffset::default_instance_;
  if (!CLP::LogEntry::PrivateData::AntennaPhaseCenterSvOffset::default_instance_)
  {
    CLP::LogEntry::PrivateData::protobuf_AddDesc_CLPGnssMeasApi_2eproto(0, a2, a3, a4);
    return CLP::LogEntry::PrivateData::AntennaPhaseCenterSvOffset::default_instance_;
  }

  return result;
}

uint64_t CLP::LogEntry::PrivateData::AntennaPhaseCenterSvOffset::Clear(uint64_t this)
{
  v1 = this;
  LOBYTE(v2) = *(this + 36);
  if (v2)
  {
    if (*(this + 36))
    {
      this = *(this + 8);
      if (this)
      {
        this = CLP::LogEntry::PrivateData::SvId::Clear(this);
        v2 = *(v1 + 36);
      }
    }

    *(v1 + 16) = 0;
    if ((v2 & 8) != 0)
    {
      v3 = *(v1 + 24);
      if (v3)
      {
        if (*(v3 + 36))
        {
          *(v3 + 8) = 0;
          *(v3 + 16) = 0;
          *(v3 + 24) = 0;
        }

        *(v3 + 36) = 0;
      }
    }
  }

  *(v1 + 36) = 0;
  return this;
}

uint64_t CLP::LogEntry::PrivateData::AntennaPhaseCenterSvOffset::MergePartialFromCodedStream(CLP::LogEntry::PrivateData::AntennaPhaseCenterSvOffset *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
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
      v8 = TagFallback & 7;
      if (TagFallback >> 3 > 2)
      {
        break;
      }

      if (v7 == 1)
      {
        if (v8 != 2)
        {
          goto LABEL_22;
        }

        *(this + 9) |= 1u;
        v11 = *(this + 1);
        if (!v11)
        {
          operator new();
        }

        v34 = 0;
        v12 = *(a2 + 1);
        if (v12 >= *(a2 + 2) || *v12 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v34))
          {
            return 0;
          }
        }

        else
        {
          v34 = *v12;
          *(a2 + 1) = v12 + 1;
        }

        v15 = *(a2 + 14);
        v16 = *(a2 + 15);
        *(a2 + 14) = v15 + 1;
        if (v15 >= v16)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
        if (!CLP::LogEntry::PrivateData::SvId::MergePartialFromCodedStream(v11, a2, v17) || *(a2 + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
        v18 = *(a2 + 14);
        v19 = __OFSUB__(v18, 1);
        v20 = v18 - 1;
        if (v20 < 0 == v19)
        {
          *(a2 + 14) = v20;
        }

        v21 = *(a2 + 1);
        v9 = *(a2 + 2);
        if (v21 < v9 && *v21 == 16)
        {
          v10 = v21 + 1;
          *(a2 + 1) = v10;
LABEL_35:
          v34 = 0;
          if (v10 >= v9 || (v22 = *v10, (v22 & 0x80000000) != 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v34);
            if (!result)
            {
              return result;
            }

            v22 = v34;
          }

          else
          {
            *(a2 + 1) = v10 + 1;
          }

          if (v22 <= 0xC)
          {
            *(this + 9) |= 2u;
            *(this + 4) = v22;
          }

          v24 = *(a2 + 1);
          v13 = *(a2 + 2);
          if (v24 < v13 && *v24 == 24)
          {
            v14 = v24 + 1;
            *(a2 + 1) = v14;
LABEL_45:
            v34 = 0;
            if (v14 >= v13 || (v25 = *v14, (v25 & 0x80000000) != 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v34);
              if (!result)
              {
                return result;
              }

              v25 = v34;
            }

            else
            {
              *(a2 + 1) = v14 + 1;
            }

            if (v25 <= 3)
            {
              *(this + 9) |= 4u;
              *(this + 5) = v25;
            }

            v26 = *(a2 + 1);
            if (v26 < *(a2 + 2) && *v26 == 34)
            {
              *(a2 + 1) = v26 + 1;
              goto LABEL_55;
            }
          }
        }
      }

      else
      {
        if (v7 == 2 && (TagFallback & 7) == 0)
        {
          v10 = *(a2 + 1);
          v9 = *(a2 + 2);
          goto LABEL_35;
        }

LABEL_22:
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

    if (v7 == 3)
    {
      if ((TagFallback & 7) == 0)
      {
        v14 = *(a2 + 1);
        v13 = *(a2 + 2);
        goto LABEL_45;
      }

      goto LABEL_22;
    }

    if (v7 != 4 || v8 != 2)
    {
      goto LABEL_22;
    }

LABEL_55:
    *(this + 9) |= 8u;
    v27 = *(this + 3);
    if (!v27)
    {
      operator new();
    }

    v34 = 0;
    v28 = *(a2 + 1);
    if (v28 >= *(a2 + 2) || *v28 < 0)
    {
      if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v34))
      {
        return 0;
      }
    }

    else
    {
      v34 = *v28;
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
    if (!CLP::LogEntry::PrivateData::SfcfXyz::MergePartialFromCodedStream(v27, a2, v31) || *(a2 + 36) != 1)
    {
      return 0;
    }

    wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
    v32 = *(a2 + 14);
    v19 = __OFSUB__(v32, 1);
    v33 = v32 - 1;
    if (v33 < 0 == v19)
    {
      *(a2 + 14) = v33;
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

uint64_t CLP::LogEntry::PrivateData::AntennaPhaseCenterSvOffset::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 36);
  if (v6)
  {
    v7 = *(this + 8);
    if (!v7)
    {
      v7 = *(CLP::LogEntry::PrivateData::AntennaPhaseCenterSvOffset::default_instance_ + 8);
    }

    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(1, v7, a2, a4);
    v6 = *(v5 + 36);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

LABEL_10:
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(3, *(v5 + 20), a2, a4);
      if ((*(v5 + 36) & 8) == 0)
      {
        return this;
      }

      goto LABEL_11;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(2, *(v5 + 16), a2, a4);
  v6 = *(v5 + 36);
  if ((v6 & 4) != 0)
  {
    goto LABEL_10;
  }

LABEL_4:
  if ((v6 & 8) == 0)
  {
    return this;
  }

LABEL_11:
  v8 = *(v5 + 24);
  if (!v8)
  {
    v8 = *(CLP::LogEntry::PrivateData::AntennaPhaseCenterSvOffset::default_instance_ + 24);
  }

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(4, v8, a2, a4);
}

uint64_t CLP::LogEntry::PrivateData::AntennaPhaseCenterSvOffset::ByteSize(CLP::LogEntry::PrivateData::AntennaPhaseCenterSvOffset *this, unsigned int a2)
{
  LOBYTE(v3) = *(this + 36);
  if (!v3)
  {
    v4 = 0;
    goto LABEL_36;
  }

  if ((*(this + 36) & 1) == 0)
  {
    v4 = 0;
    if ((*(this + 36) & 2) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_12;
  }

  v5 = *(this + 1);
  if (!v5)
  {
    v5 = *(CLP::LogEntry::PrivateData::AntennaPhaseCenterSvOffset::default_instance_ + 8);
  }

  v6 = CLP::LogEntry::PrivateData::SvId::ByteSize(v5, a2);
  v7 = v6;
  if (v6 >= 0x80)
  {
    v8 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v6);
  }

  else
  {
    v8 = 1;
  }

  v4 = (v7 + v8 + 1);
  v3 = *(this + 9);
  if ((v3 & 2) != 0)
  {
LABEL_12:
    v9 = *(this + 4);
    if ((v9 & 0x80000000) != 0)
    {
      v10 = 11;
    }

    else if (v9 >= 0x80)
    {
      v10 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v9) + 1;
      v3 = *(this + 9);
    }

    else
    {
      v10 = 2;
    }

    v4 = (v10 + v4);
  }

LABEL_18:
  if ((v3 & 4) != 0)
  {
    v11 = *(this + 5);
    if ((v11 & 0x80000000) != 0)
    {
      v12 = 11;
    }

    else if (v11 >= 0x80)
    {
      v12 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v11) + 1;
      v3 = *(this + 9);
    }

    else
    {
      v12 = 2;
    }

    v4 = (v12 + v4);
    if ((v3 & 8) == 0)
    {
      goto LABEL_36;
    }
  }

  else if ((v3 & 8) == 0)
  {
    goto LABEL_36;
  }

  v13 = *(this + 3);
  if (!v13)
  {
    v13 = *(CLP::LogEntry::PrivateData::AntennaPhaseCenterSvOffset::default_instance_ + 24);
  }

  v14 = *(v13 + 36);
  if (*(v13 + 36))
  {
    v15 = (v14 << 31 >> 31) & 9;
    if ((v14 & 2) != 0)
    {
      v15 += 9;
    }

    if ((v14 & 4) != 0)
    {
      v14 = v15 + 9;
    }

    else
    {
      v14 = v15;
    }
  }

  *(v13 + 32) = v14;
  v4 = (v4 + v14 + 2);
LABEL_36:
  *(this + 8) = v4;
  return v4;
}

double CLP::LogEntry::PrivateData::AntennaPhaseCenterSvOffset::CheckTypeAndMergeFrom(CLP::LogEntry::PrivateData::AntennaPhaseCenterSvOffset *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  return CLP::LogEntry::PrivateData::AntennaPhaseCenterSvOffset::MergeFrom(this, lpsrc);
}

double CLP::LogEntry::PrivateData::AntennaPhaseCenterSvOffset::CopyFrom(CLP::LogEntry::PrivateData::AntennaPhaseCenterSvOffset *this, const CLP::LogEntry::PrivateData::AntennaPhaseCenterSvOffset *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    return CLP::LogEntry::PrivateData::AntennaPhaseCenterSvOffset::MergeFrom(this, a2);
  }

  return result;
}

uint64_t CLP::LogEntry::PrivateData::AntennaPhaseCenterSvOffset::Swap(uint64_t this, CLP::LogEntry::PrivateData::AntennaPhaseCenterSvOffset *a2)
{
  if (a2 != this)
  {
    v2 = *(this + 8);
    *(this + 8) = *(a2 + 1);
    *(a2 + 1) = v2;
    LODWORD(v2) = *(this + 16);
    *(this + 16) = *(a2 + 4);
    *(a2 + 4) = v2;
    LODWORD(v2) = *(this + 20);
    *(this + 20) = *(a2 + 5);
    *(a2 + 5) = v2;
    v3 = *(this + 24);
    *(this + 24) = *(a2 + 3);
    *(a2 + 3) = v3;
    LODWORD(v3) = *(this + 36);
    *(this + 36) = *(a2 + 9);
    *(a2 + 9) = v3;
    LODWORD(v3) = *(this + 32);
    *(this + 32) = *(a2 + 8);
    *(a2 + 8) = v3;
  }

  return this;
}

double CLP::LogEntry::PrivateData::ReceivedTimeStamp::SharedCtor(CLP::LogEntry::PrivateData::ReceivedTimeStamp *this)
{
  result = 0.0;
  *(this + 24) = 0u;
  *(this + 8) = 0u;
  return result;
}

CLP::LogEntry::PrivateData::ReceivedTimeStamp *CLP::LogEntry::PrivateData::ReceivedTimeStamp::ReceivedTimeStamp(CLP::LogEntry::PrivateData::ReceivedTimeStamp *this, const CLP::LogEntry::PrivateData::ReceivedTimeStamp *a2)
{
  *this = &unk_285861428;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  CLP::LogEntry::PrivateData::ReceivedTimeStamp::MergeFrom(this, a2);
  return this;
}

double CLP::LogEntry::PrivateData::ReceivedTimeStamp::MergeFrom(CLP::LogEntry::PrivateData::ReceivedTimeStamp *this, const CLP::LogEntry::PrivateData::ReceivedTimeStamp *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v6);
  }

  LOBYTE(v5) = *(a2 + 36);
  if (v5)
  {
    if (*(a2 + 36))
    {
      result = *(a2 + 1);
      *(this + 9) |= 1u;
      *(this + 1) = result;
      v5 = *(a2 + 9);
      if ((v5 & 2) == 0)
      {
LABEL_6:
        if ((v5 & 4) == 0)
        {
          return result;
        }

        goto LABEL_7;
      }
    }

    else if ((*(a2 + 36) & 2) == 0)
    {
      goto LABEL_6;
    }

    result = *(a2 + 2);
    *(this + 9) |= 2u;
    *(this + 2) = result;
    if ((*(a2 + 9) & 4) == 0)
    {
      return result;
    }

LABEL_7:
    result = *(a2 + 3);
    *(this + 9) |= 4u;
    *(this + 3) = result;
  }

  return result;
}

void sub_24553754C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void CLP::LogEntry::PrivateData::ReceivedTimeStamp::~ReceivedTimeStamp(CLP::LogEntry::PrivateData::ReceivedTimeStamp *this)
{
  *this = &unk_285861428;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_285861428;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_285861428;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  JUMPOUT(0x245D6AEE0);
}

uint64_t CLP::LogEntry::PrivateData::ReceivedTimeStamp::default_instance(CLP::LogEntry::PrivateData::ReceivedTimeStamp *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = CLP::LogEntry::PrivateData::ReceivedTimeStamp::default_instance_;
  if (!CLP::LogEntry::PrivateData::ReceivedTimeStamp::default_instance_)
  {
    CLP::LogEntry::PrivateData::protobuf_AddDesc_CLPGnssMeasApi_2eproto(0, a2, a3, a4);
    return CLP::LogEntry::PrivateData::ReceivedTimeStamp::default_instance_;
  }

  return result;
}

uint64_t CLP::LogEntry::PrivateData::ReceivedTimeStamp::Clear(uint64_t this)
{
  if (*(this + 36))
  {
    *(this + 8) = 0;
    *(this + 16) = 0;
    *(this + 24) = 0;
  }

  *(this + 36) = 0;
  return this;
}

uint64_t CLP::LogEntry::PrivateData::ReceivedTimeStamp::MergePartialFromCodedStream(CLP::LogEntry::PrivateData::ReceivedTimeStamp *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
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

        v7 = TagFallback >> 3;
        v8 = TagFallback & 7;
        if (TagFallback >> 3 != 3)
        {
          break;
        }

        if (v8 != 1)
        {
          goto LABEL_20;
        }

LABEL_23:
        v12 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, &v12) & 1) == 0)
        {
          return 0;
        }

        *(this + 3) = v12;
        *(this + 9) |= 4u;
        if (*(a2 + 1) == *(a2 + 2) && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
        {
          *(a2 + 8) = 0;
          result = 1;
          *(a2 + 36) = 1;
          return result;
        }
      }

      if (v7 == 2)
      {
        break;
      }

      if (v7 != 1 || v8 != 1)
      {
        goto LABEL_20;
      }

      v12 = 0;
      if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, &v12) & 1) == 0)
      {
        return 0;
      }

      *(this + 1) = v12;
      *(this + 9) |= 1u;
      v9 = *(a2 + 1);
      if (v9 < *(a2 + 2) && *v9 == 17)
      {
        *(a2 + 1) = v9 + 1;
LABEL_15:
        v12 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, &v12) & 1) == 0)
        {
          return 0;
        }

        *(this + 2) = v12;
        *(this + 9) |= 2u;
        v10 = *(a2 + 1);
        if (v10 < *(a2 + 2) && *v10 == 25)
        {
          *(a2 + 1) = v10 + 1;
          goto LABEL_23;
        }
      }
    }

    if (v8 == 1)
    {
      goto LABEL_15;
    }

LABEL_20:
    if (v8 == 4)
    {
      return 1;
    }
  }

  while ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(a2, TagFallback) & 1) != 0);
  return 0;
}

uint64_t CLP::LogEntry::PrivateData::ReceivedTimeStamp::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3)
{
  v4 = this;
  v5 = *(this + 36);
  if ((v5 & 1) == 0)
  {
    if ((v5 & 2) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(2, a2, *(v4 + 16), a3);
    if ((*(v4 + 36) & 4) == 0)
    {
      return this;
    }

    goto LABEL_7;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(1, a2, *(this + 8), a3);
  v5 = *(v4 + 36);
  if ((v5 & 2) != 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  if ((v5 & 4) == 0)
  {
    return this;
  }

LABEL_7:
  v6 = *(v4 + 24);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(3, a2, v6, a3);
}

uint64_t CLP::LogEntry::PrivateData::ReceivedTimeStamp::ByteSize(CLP::LogEntry::PrivateData::ReceivedTimeStamp *this)
{
  v1 = *(this + 36);
  if (*(this + 36))
  {
    v2 = ((v1 << 31) >> 31) & 9;
    if ((v1 & 2) != 0)
    {
      v2 += 9;
    }

    if ((v1 & 4) != 0)
    {
      v1 = v2 + 9;
    }

    else
    {
      v1 = v2;
    }
  }

  *(this + 8) = v1;
  return v1;
}

double CLP::LogEntry::PrivateData::ReceivedTimeStamp::CheckTypeAndMergeFrom(CLP::LogEntry::PrivateData::ReceivedTimeStamp *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  return CLP::LogEntry::PrivateData::ReceivedTimeStamp::MergeFrom(this, lpsrc);
}

double CLP::LogEntry::PrivateData::ReceivedTimeStamp::CopyFrom(CLP::LogEntry::PrivateData::ReceivedTimeStamp *this, const CLP::LogEntry::PrivateData::ReceivedTimeStamp *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    return CLP::LogEntry::PrivateData::ReceivedTimeStamp::MergeFrom(this, a2);
  }

  return result;
}

double CLP::LogEntry::PrivateData::ReceivedTimeStamp::Swap(CLP::LogEntry::PrivateData::ReceivedTimeStamp *this, CLP::LogEntry::PrivateData::ReceivedTimeStamp *a2)
{
  if (a2 != this)
  {
    v2 = *(this + 1);
    *(this + 1) = *(a2 + 1);
    *(a2 + 1) = v2;
    v3 = *(this + 2);
    *(this + 2) = *(a2 + 2);
    *(a2 + 2) = v3;
    result = *(this + 3);
    *(this + 3) = *(a2 + 3);
    *(a2 + 3) = result;
    v5 = *(this + 9);
    *(this + 9) = *(a2 + 9);
    *(a2 + 9) = v5;
    v6 = *(this + 8);
    *(this + 8) = *(a2 + 8);
    *(a2 + 8) = v6;
  }

  return result;
}

double CLP::LogEntry::PrivateData::MeasurementReportCallbackContents::SharedCtor(CLP::LogEntry::PrivateData::MeasurementReportCallbackContents *this)
{
  *(this + 16) = 0;
  *(this + 1) = 0;
  *(this + 2) = 0;
  result = 0.0;
  *(this + 72) = 0u;
  *(this + 88) = 0u;
  return result;
}

CLP::LogEntry::PrivateData::MeasurementReportCallbackContents *CLP::LogEntry::PrivateData::MeasurementReportCallbackContents::MeasurementReportCallbackContents(CLP::LogEntry::PrivateData::MeasurementReportCallbackContents *this, const CLP::LogEntry::PrivateData::MeasurementReportCallbackContents *a2)
{
  *this = &unk_2858614A0;
  *(this + 24) = 0u;
  *(this + 6) = 0;
  *(this + 7) = 0;
  *(this + 16) = 0;
  *(this + 16) = 0;
  *(this + 8) = 0u;
  *(this + 10) = 0;
  *(this + 72) = 0u;
  *(this + 88) = 0u;
  *(this + 104) = 0u;
  *(this + 30) = 0;
  CLP::LogEntry::PrivateData::MeasurementReportCallbackContents::MergeFrom(this, a2);
  return this;
}

void sub_245537B8C(_Unwind_Exception *a1)
{
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<proto::gnsshal::NvStoreItem>::TypeHandler>(v1 + 13);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<proto::gnsshal::NvStoreItem>::TypeHandler>(v3);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<proto::gnsshal::NvStoreItem>::TypeHandler>(v2);
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(v1);
  _Unwind_Resume(a1);
}

float CLP::LogEntry::PrivateData::MeasurementReportCallbackContents::MergeFrom(CLP::LogEntry::PrivateData::MeasurementReportCallbackContents *this, const CLP::LogEntry::PrivateData::MeasurementReportCallbackContents *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v33);
  }

  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 24));
  LODWORD(v4) = *(a2 + 8);
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
        wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v33);
      }

      v6 = *(*(a2 + 3) + 8 * v5);
      v7 = *(this + 9);
      v8 = *(this + 8);
      if (v8 >= v7)
      {
        if (v7 == *(this + 10))
        {
          wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 24));
          v7 = *(this + 9);
        }

        *(this + 9) = v7 + 1;
        operator new();
      }

      v9 = *(this + 3);
      *(this + 8) = v8 + 1;
      CLP::LogEntry::PrivateData::SvInfo::MergeFrom(*(v9 + 8 * v8), v6);
      ++v5;
      v4 = *(a2 + 8);
    }

    while (v5 < v4);
  }

  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 48));
  LODWORD(v10) = *(a2 + 14);
  if (v10 >= 1)
  {
    v11 = 0;
    do
    {
      if (v11 >= v10)
      {
        wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
        wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
        wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
        wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v33);
      }

      v12 = *(*(a2 + 6) + 8 * v11);
      v13 = *(this + 15);
      v14 = *(this + 14);
      if (v14 >= v13)
      {
        if (v13 == *(this + 16))
        {
          wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 48));
          v13 = *(this + 15);
        }

        *(this + 15) = v13 + 1;
        operator new();
      }

      v15 = *(this + 6);
      *(this + 14) = v14 + 1;
      CLP::LogEntry::PrivateData::ReceiverBandCorrections::MergeFrom(*(v15 + 8 * v14), v12);
      ++v11;
      v10 = *(a2 + 14);
    }

    while (v11 < v10);
  }

  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 104));
  LODWORD(v17) = *(a2 + 28);
  if (v17 >= 1)
  {
    v18 = 0;
    do
    {
      if (v18 >= v17)
      {
        wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
        wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
        wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
        wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v33);
      }

      v19 = *(*(a2 + 13) + 8 * v18);
      v20 = *(this + 29);
      v21 = *(this + 28);
      if (v21 >= v20)
      {
        if (v20 == *(this + 30))
        {
          wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 104));
          v20 = *(this + 29);
        }

        *(this + 29) = v20 + 1;
        operator new();
      }

      v22 = *(this + 13);
      *(this + 28) = v21 + 1;
      v16 = CLP::LogEntry::PrivateData::AntennaPhaseCenterSvOffset::MergeFrom(*(v22 + 8 * v21), v19);
      ++v18;
      v17 = *(a2 + 28);
    }

    while (v18 < v17);
  }

  LOBYTE(v23) = *(a2 + 132);
  if (v23)
  {
    if (*(a2 + 132))
    {
      *(this + 33) |= 1u;
      v24 = *(this + 1);
      if (!v24)
      {
        operator new();
      }

      v25 = *(a2 + 1);
      if (!v25)
      {
        v25 = *(CLP::LogEntry::PrivateData::MeasurementReportCallbackContents::default_instance_ + 8);
      }

      v16 = CLP::LogEntry::PrivateData::ReceivedTimeStamp::MergeFrom(v24, v25);
      v23 = *(a2 + 33);
      if ((v23 & 2) == 0)
      {
LABEL_36:
        if ((v23 & 0x10) == 0)
        {
          goto LABEL_37;
        }

        goto LABEL_51;
      }
    }

    else if ((*(a2 + 132) & 2) == 0)
    {
      goto LABEL_36;
    }

    *(this + 33) |= 2u;
    v26 = *(this + 2);
    if (!v26)
    {
      operator new();
    }

    v27 = *(a2 + 2);
    if (!v27)
    {
      v27 = *(CLP::LogEntry::PrivateData::MeasurementReportCallbackContents::default_instance_ + 16);
    }

    v16 = CLP::LogEntry::PrivateData::MeasurementReport::MergeFrom(v26, v27);
    v23 = *(a2 + 33);
    if ((v23 & 0x10) == 0)
    {
LABEL_37:
      if ((v23 & 0x20) == 0)
      {
        goto LABEL_38;
      }

      goto LABEL_56;
    }

LABEL_51:
    *(this + 33) |= 0x10u;
    v28 = *(this + 9);
    if (!v28)
    {
      operator new();
    }

    v29 = *(a2 + 9);
    if (!v29)
    {
      v29 = *(CLP::LogEntry::PrivateData::MeasurementReportCallbackContents::default_instance_ + 72);
    }

    CLP::LogEntry::PrivateData::TimeConversionInfo::MergeFrom(v28, v29);
    v23 = *(a2 + 33);
    if ((v23 & 0x20) == 0)
    {
LABEL_38:
      if ((v23 & 0x40) == 0)
      {
        goto LABEL_39;
      }

      goto LABEL_57;
    }

LABEL_56:
    v16 = *(a2 + 10);
    *(this + 33) |= 0x20u;
    *(this + 10) = v16;
    v23 = *(a2 + 33);
    if ((v23 & 0x40) == 0)
    {
LABEL_39:
      if ((v23 & 0x80) == 0)
      {
        return *&v16;
      }

LABEL_58:
      *(this + 33) |= 0x80u;
      v30 = *(this + 12);
      if (!v30)
      {
        operator new();
      }

      v31 = *(a2 + 12);
      if (!v31)
      {
        v31 = *(CLP::LogEntry::PrivateData::MeasurementReportCallbackContents::default_instance_ + 96);
      }

      *&v16 = CLP::LogEntry::PrivateData::KlobucharModelParameters::MergeFrom(v30, v31);
      return *&v16;
    }

LABEL_57:
    v16 = *(a2 + 11);
    *(this + 33) |= 0x40u;
    *(this + 11) = v16;
    if ((*(a2 + 33) & 0x80) == 0)
    {
      return *&v16;
    }

    goto LABEL_58;
  }

  return *&v16;
}

void sub_24553822C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void CLP::LogEntry::PrivateData::MeasurementReportCallbackContents::~MeasurementReportCallbackContents(CLP::LogEntry::PrivateData::MeasurementReportCallbackContents *this)
{
  *this = &unk_2858614A0;
  v2 = (this + 104);
  CLP::LogEntry::PrivateData::MeasurementReportCallbackContents::SharedDtor(this);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<proto::gnsshal::NvStoreItem>::TypeHandler>(v2);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<proto::gnsshal::NvStoreItem>::TypeHandler>(this + 6);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<proto::gnsshal::NvStoreItem>::TypeHandler>(this + 3);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  CLP::LogEntry::PrivateData::MeasurementReportCallbackContents::~MeasurementReportCallbackContents(this);

  JUMPOUT(0x245D6AEE0);
}

void *CLP::LogEntry::PrivateData::MeasurementReportCallbackContents::SharedDtor(void *this)
{
  if (CLP::LogEntry::PrivateData::MeasurementReportCallbackContents::default_instance_ != this)
  {
    v1 = this;
    v2 = this[1];
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }

    v3 = v1[2];
    if (v3)
    {
      (*(*v3 + 8))(v3);
    }

    v4 = v1[9];
    if (v4)
    {
      (*(*v4 + 8))(v4);
    }

    this = v1[12];
    if (this)
    {
      v5 = *(*this + 8);

      return v5();
    }
  }

  return this;
}

uint64_t CLP::LogEntry::PrivateData::MeasurementReportCallbackContents::default_instance(CLP::LogEntry::PrivateData::MeasurementReportCallbackContents *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = CLP::LogEntry::PrivateData::MeasurementReportCallbackContents::default_instance_;
  if (!CLP::LogEntry::PrivateData::MeasurementReportCallbackContents::default_instance_)
  {
    CLP::LogEntry::PrivateData::protobuf_AddDesc_CLPGnssMeasApi_2eproto(0, a2, a3, a4);
    return CLP::LogEntry::PrivateData::MeasurementReportCallbackContents::default_instance_;
  }

  return result;
}

uint64_t CLP::LogEntry::PrivateData::MeasurementReportCallbackContents::Clear(CLP::LogEntry::PrivateData::MeasurementReportCallbackContents *this)
{
  LOBYTE(v2) = *(this + 132);
  if (v2)
  {
    if (*(this + 132))
    {
      v3 = *(this + 1);
      if (v3)
      {
        if (*(v3 + 36))
        {
          *(v3 + 8) = 0;
          *(v3 + 16) = 0;
          *(v3 + 24) = 0;
        }

        *(v3 + 36) = 0;
        v2 = *(this + 33);
      }
    }

    if ((v2 & 2) != 0)
    {
      v4 = *(this + 2);
      if (v4)
      {
        CLP::LogEntry::PrivateData::MeasurementReport::Clear(v4);
        v2 = *(this + 33);
      }
    }

    if ((v2 & 0x10) != 0)
    {
      v5 = *(this + 9);
      if (v5)
      {
        CLP::LogEntry::PrivateData::TimeConversionInfo::Clear(v5);
        v2 = *(this + 33);
      }
    }

    *(this + 10) = 0;
    *(this + 11) = 0;
    if ((v2 & 0x80) != 0)
    {
      v6 = *(this + 12);
      if (v6)
      {
        v7 = *(v6 + 52);
        if (v7)
        {
          *(v6 + 40) = 0;
          *(v6 + 24) = 0u;
          *(v6 + 8) = 0u;
        }

        if ((v7 & 0xFF00) != 0)
        {
          *(v6 + 44) = 0;
        }

        *(v6 + 52) = 0;
      }
    }
  }

  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Clear<wireless_diagnostics::google::protobuf::RepeatedPtrField<proto::gnsshal::NvStoreItem>::TypeHandler>(this + 24);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Clear<wireless_diagnostics::google::protobuf::RepeatedPtrField<proto::gnsshal::NvStoreItem>::TypeHandler>(this + 48);
  result = wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Clear<wireless_diagnostics::google::protobuf::RepeatedPtrField<proto::gnsshal::NvStoreItem>::TypeHandler>(this + 104);
  *(this + 33) = 0;
  return result;
}

uint64_t CLP::LogEntry::PrivateData::MeasurementReportCallbackContents::MergePartialFromCodedStream(CLP::LogEntry::PrivateData::MeasurementReportCallbackContents *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
{
  while (1)
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
        v8 = TagFallback & 7;
        if (TagFallback >> 3 > 4)
        {
          break;
        }

        if (TagFallback >> 3 > 2)
        {
          if (v7 == 3)
          {
            if (v8 != 2)
            {
              goto LABEL_39;
            }

LABEL_66:
            v27 = *(this + 9);
            v28 = *(this + 8);
            if (v28 >= v27)
            {
              if (v27 == *(this + 10))
              {
                wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 24));
                v27 = *(this + 9);
              }

              *(this + 9) = v27 + 1;
              operator new();
            }

            v29 = *(this + 3);
            *(this + 8) = v28 + 1;
            v30 = *(v29 + 8 * v28);
            v79[0] = 0;
            v31 = *(a2 + 1);
            if (v31 >= *(a2 + 2) || *v31 < 0)
            {
              if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v79))
              {
                return 0;
              }
            }

            else
            {
              v79[0] = *v31;
              *(a2 + 1) = v31 + 1;
            }

            v32 = *(a2 + 14);
            v33 = *(a2 + 15);
            *(a2 + 14) = v32 + 1;
            if (v32 >= v33)
            {
              return 0;
            }

            wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
            if (!CLP::LogEntry::PrivateData::SvInfo::MergePartialFromCodedStream(v30, a2, v34) || *(a2 + 36) != 1)
            {
              return 0;
            }

            wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
            v35 = *(a2 + 14);
            v16 = __OFSUB__(v35, 1);
            v36 = v35 - 1;
            if (v36 < 0 == v16)
            {
              *(a2 + 14) = v36;
            }

            v26 = *(a2 + 1);
            if (v26 < *(a2 + 2))
            {
              v37 = *v26;
              if (v37 == 26)
              {
                goto LABEL_65;
              }

              if (v37 == 34)
              {
                goto LABEL_83;
              }
            }
          }

          else
          {
            if (v7 != 4 || v8 != 2)
            {
              goto LABEL_39;
            }

            while (2)
            {
              v38 = *(this + 15);
              v39 = *(this + 14);
              if (v39 >= v38)
              {
                if (v38 == *(this + 16))
                {
                  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 48));
                  v38 = *(this + 15);
                }

                *(this + 15) = v38 + 1;
                operator new();
              }

              v40 = *(this + 6);
              *(this + 14) = v39 + 1;
              v41 = *(v40 + 8 * v39);
              v79[0] = 0;
              v42 = *(a2 + 1);
              if (v42 >= *(a2 + 2) || *v42 < 0)
              {
                if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v79))
                {
                  return 0;
                }
              }

              else
              {
                v79[0] = *v42;
                *(a2 + 1) = v42 + 1;
              }

              v43 = *(a2 + 14);
              v44 = *(a2 + 15);
              *(a2 + 14) = v43 + 1;
              if (v43 >= v44)
              {
                return 0;
              }

              wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
              if (!CLP::LogEntry::PrivateData::ReceiverBandCorrections::MergePartialFromCodedStream(v41, a2, v45) || *(a2 + 36) != 1)
              {
                return 0;
              }

              wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
              v46 = *(a2 + 14);
              v16 = __OFSUB__(v46, 1);
              v47 = v46 - 1;
              if (v47 < 0 == v16)
              {
                *(a2 + 14) = v47;
              }

              v26 = *(a2 + 1);
              if (v26 < *(a2 + 2))
              {
                v48 = *v26;
                if (v48 == 34)
                {
LABEL_83:
                  *(a2 + 1) = v26 + 1;
                  continue;
                }

                if (v48 == 42)
                {
                  *(a2 + 1) = v26 + 1;
LABEL_102:
                  *(this + 33) |= 0x10u;
                  v49 = *(this + 9);
                  if (!v49)
                  {
                    operator new();
                  }

                  v79[0] = 0;
                  v50 = *(a2 + 1);
                  if (v50 >= *(a2 + 2) || *v50 < 0)
                  {
                    if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v79))
                    {
                      return 0;
                    }
                  }

                  else
                  {
                    v79[0] = *v50;
                    *(a2 + 1) = v50 + 1;
                  }

                  v51 = *(a2 + 14);
                  v52 = *(a2 + 15);
                  *(a2 + 14) = v51 + 1;
                  if (v51 >= v52)
                  {
                    return 0;
                  }

                  wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
                  if (!CLP::LogEntry::PrivateData::TimeConversionInfo::MergePartialFromCodedStream(v49, a2, v53) || *(a2 + 36) != 1)
                  {
                    return 0;
                  }

                  wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
                  v54 = *(a2 + 14);
                  v16 = __OFSUB__(v54, 1);
                  v55 = v54 - 1;
                  if (v55 < 0 == v16)
                  {
                    *(a2 + 14) = v55;
                  }

                  v56 = *(a2 + 1);
                  if (v56 < *(a2 + 2) && *v56 == 49)
                  {
                    *(a2 + 1) = v56 + 1;
LABEL_116:
                    *v79 = 0;
                    if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v79) & 1) == 0)
                    {
                      return 0;
                    }

                    *(this + 10) = *v79;
                    *(this + 33) |= 0x20u;
                    v57 = *(a2 + 1);
                    if (v57 < *(a2 + 2) && *v57 == 57)
                    {
                      *(a2 + 1) = v57 + 1;
LABEL_120:
                      *v79 = 0;
                      if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v79) & 1) == 0)
                      {
                        return 0;
                      }

                      *(this + 11) = *v79;
                      v11 = *(this + 33) | 0x40;
                      *(this + 33) = v11;
                      v58 = *(a2 + 1);
                      if (v58 < *(a2 + 2) && *v58 == 66)
                      {
                        *(a2 + 1) = v58 + 1;
                        goto LABEL_124;
                      }
                    }
                  }
                }
              }

              break;
            }
          }
        }

        else
        {
          if (v7 != 1)
          {
            if (v7 != 2 || v8 != 2)
            {
              goto LABEL_39;
            }

            goto LABEL_52;
          }

          if (v8 != 2)
          {
            goto LABEL_39;
          }

          *(this + 33) |= 1u;
          v9 = *(this + 1);
          if (!v9)
          {
            operator new();
          }

          v79[0] = 0;
          v10 = *(a2 + 1);
          if (v10 >= *(a2 + 2) || *v10 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v79))
            {
              return 0;
            }
          }

          else
          {
            v79[0] = *v10;
            *(a2 + 1) = v10 + 1;
          }

          v12 = *(a2 + 14);
          v13 = *(a2 + 15);
          *(a2 + 14) = v12 + 1;
          if (v12 >= v13)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
          if (!CLP::LogEntry::PrivateData::ReceivedTimeStamp::MergePartialFromCodedStream(v9, a2, v14) || *(a2 + 36) != 1)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
          v15 = *(a2 + 14);
          v16 = __OFSUB__(v15, 1);
          v17 = v15 - 1;
          if (v17 < 0 == v16)
          {
            *(a2 + 14) = v17;
          }

          v18 = *(a2 + 1);
          if (v18 < *(a2 + 2) && *v18 == 18)
          {
            *(a2 + 1) = v18 + 1;
LABEL_52:
            *(this + 33) |= 2u;
            v19 = *(this + 2);
            if (!v19)
            {
              operator new();
            }

            v79[0] = 0;
            v20 = *(a2 + 1);
            if (v20 >= *(a2 + 2) || *v20 < 0)
            {
              if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v79))
              {
                return 0;
              }
            }

            else
            {
              v79[0] = *v20;
              *(a2 + 1) = v20 + 1;
            }

            v21 = *(a2 + 14);
            v22 = *(a2 + 15);
            *(a2 + 14) = v21 + 1;
            if (v21 >= v22)
            {
              return 0;
            }

            wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
            if (!CLP::LogEntry::PrivateData::MeasurementReport::MergePartialFromCodedStream(v19, a2, v23) || *(a2 + 36) != 1)
            {
              return 0;
            }

            wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
            v24 = *(a2 + 14);
            v16 = __OFSUB__(v24, 1);
            v25 = v24 - 1;
            if (v25 < 0 == v16)
            {
              *(a2 + 14) = v25;
            }

            v26 = *(a2 + 1);
            if (v26 < *(a2 + 2) && *v26 == 26)
            {
LABEL_65:
              *(a2 + 1) = v26 + 1;
              goto LABEL_66;
            }
          }
        }
      }

      if (TagFallback >> 3 <= 6)
      {
        break;
      }

      if (v7 == 7)
      {
        if (v8 != 1)
        {
          goto LABEL_39;
        }

        goto LABEL_120;
      }

      if (v7 == 8)
      {
        if (v8 != 2)
        {
          goto LABEL_39;
        }

        v11 = *(this + 33);
LABEL_124:
        *(this + 33) = v11 | 0x80;
        v59 = *(this + 12);
        if (!v59)
        {
          operator new();
        }

        v79[0] = 0;
        v60 = *(a2 + 1);
        if (v60 >= *(a2 + 2) || *v60 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v79))
          {
            return 0;
          }
        }

        else
        {
          v79[0] = *v60;
          *(a2 + 1) = v60 + 1;
        }

        v61 = *(a2 + 14);
        v62 = *(a2 + 15);
        *(a2 + 14) = v61 + 1;
        if (v61 >= v62)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
        if (!CLP::LogEntry::PrivateData::KlobucharModelParameters::MergePartialFromCodedStream(v59, a2, v63) || *(a2 + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
        v64 = *(a2 + 14);
        v16 = __OFSUB__(v64, 1);
        v65 = v64 - 1;
        if (v65 < 0 == v16)
        {
          *(a2 + 14) = v65;
        }

        v66 = *(a2 + 1);
        if (v66 < *(a2 + 2) && *v66 == 74)
        {
          goto LABEL_137;
        }
      }

      else
      {
        if (v7 != 9 || v8 != 2)
        {
          goto LABEL_39;
        }

        while (1)
        {
          v67 = *(this + 29);
          v68 = *(this + 28);
          if (v68 >= v67)
          {
            if (v67 == *(this + 30))
            {
              wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 104));
              v67 = *(this + 29);
            }

            *(this + 29) = v67 + 1;
            operator new();
          }

          v69 = *(this + 13);
          *(this + 28) = v68 + 1;
          v70 = *(v69 + 8 * v68);
          v79[0] = 0;
          v71 = *(a2 + 1);
          if (v71 >= *(a2 + 2) || *v71 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v79))
            {
              return 0;
            }
          }

          else
          {
            v79[0] = *v71;
            *(a2 + 1) = v71 + 1;
          }

          v72 = *(a2 + 14);
          v73 = *(a2 + 15);
          *(a2 + 14) = v72 + 1;
          if (v72 >= v73)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
          if (!CLP::LogEntry::PrivateData::AntennaPhaseCenterSvOffset::MergePartialFromCodedStream(v70, a2, v74) || *(a2 + 36) != 1)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
          v75 = *(a2 + 14);
          v16 = __OFSUB__(v75, 1);
          v76 = v75 - 1;
          if (v76 < 0 == v16)
          {
            *(a2 + 14) = v76;
          }

          v66 = *(a2 + 1);
          v77 = *(a2 + 2);
          if (v66 >= v77 || *v66 != 74)
          {
            break;
          }

LABEL_137:
          *(a2 + 1) = v66 + 1;
        }

        if (v66 == v77 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
        {
          *(a2 + 8) = 0;
          result = 1;
          *(a2 + 36) = 1;
          return result;
        }
      }
    }

    if (v7 == 5)
    {
      if (v8 != 2)
      {
        goto LABEL_39;
      }

      goto LABEL_102;
    }

    if (v7 == 6 && v8 == 1)
    {
      goto LABEL_116;
    }

LABEL_39:
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