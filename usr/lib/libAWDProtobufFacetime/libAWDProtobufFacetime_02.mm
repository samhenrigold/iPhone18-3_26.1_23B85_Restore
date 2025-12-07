uint64_t awd::metrics::FaceTimeDTXStatus::ByteSize(awd::metrics::FaceTimeDTXStatus *this, unint64_t a2)
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
      v5 = v4 + 5;
    }

    else
    {
      v5 = v4;
    }

    if ((v3 & 4) != 0)
    {
      v5 = v5 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 2)) + 1;
      v3 = *(this + 9);
    }

    if ((v3 & 8) != 0)
    {
      v6 = *(this + 7);
      if (v6 >= 0x80)
      {
        v7 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v6) + 1;
      }

      else
      {
        v7 = 2;
      }

      v5 = (v7 + v5);
    }
  }

  else
  {
    v5 = 0;
  }

  *(this + 8) = v5;
  return v5;
}

void awd::metrics::FaceTimeDTXStatus::CheckTypeAndMergeFrom(awd::metrics::FaceTimeDTXStatus *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  {
    awd::metrics::FaceTimeDTXStatus::CheckTypeAndMergeFrom();
  }

  awd::metrics::FaceTimeDTXStatus::MergeFrom(this, lpsrc);
}

void awd::metrics::FaceTimeDTXStatus::CopyFrom(awd::metrics::FaceTimeDTXStatus *this, const awd::metrics::FaceTimeDTXStatus *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    awd::metrics::FaceTimeDTXStatus::MergeFrom(this, a2);
  }
}

float awd::metrics::FaceTimeDTXStatus::Swap(awd::metrics::FaceTimeDTXStatus *this, awd::metrics::FaceTimeDTXStatus *a2)
{
  if (a2 != this)
  {
    v2 = *(this + 1);
    *(this + 1) = *(a2 + 1);
    *(a2 + 1) = v2;
    result = *(this + 6);
    *(this + 6) = *(a2 + 6);
    *(a2 + 6) = result;
    v4 = *(this + 2);
    *(this + 2) = *(a2 + 2);
    *(a2 + 2) = v4;
    LODWORD(v4) = *(this + 7);
    *(this + 7) = *(a2 + 7);
    *(a2 + 7) = v4;
    LODWORD(v4) = *(this + 9);
    *(this + 9) = *(a2 + 9);
    *(a2 + 9) = v4;
    LODWORD(v4) = *(this + 8);
    *(this + 8) = *(a2 + 8);
    *(a2 + 8) = v4;
  }

  return result;
}

double awd::metrics::FaceTimeModeRoleTransport::SharedCtor(awd::metrics::FaceTimeModeRoleTransport *this)
{
  result = 0.0;
  *(this + 24) = 0u;
  *(this + 8) = 0u;
  return result;
}

awd::metrics::FaceTimeModeRoleTransport *awd::metrics::FaceTimeModeRoleTransport::FaceTimeModeRoleTransport(awd::metrics::FaceTimeModeRoleTransport *this, const awd::metrics::FaceTimeModeRoleTransport *a2)
{
  *this = &unk_2A1D4E128;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  awd::metrics::FaceTimeModeRoleTransport::MergeFrom(this, a2);
  return this;
}

void awd::metrics::FaceTimeModeRoleTransport::MergeFrom(awd::metrics::FaceTimeModeRoleTransport *this, const awd::metrics::FaceTimeModeRoleTransport *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v10);
  }

  LOBYTE(v4) = *(a2 + 36);
  if (v4)
  {
    if (*(a2 + 36))
    {
      v6 = *(a2 + 1);
      *(this + 9) |= 1u;
      *(this + 1) = v6;
      v4 = *(a2 + 9);
      if ((v4 & 2) == 0)
      {
LABEL_6:
        if ((v4 & 4) == 0)
        {
          goto LABEL_7;
        }

        goto LABEL_13;
      }
    }

    else if ((*(a2 + 36) & 2) == 0)
    {
      goto LABEL_6;
    }

    v7 = *(a2 + 4);
    *(this + 9) |= 2u;
    *(this + 4) = v7;
    v4 = *(a2 + 9);
    if ((v4 & 4) == 0)
    {
LABEL_7:
      if ((v4 & 8) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_14;
    }

LABEL_13:
    v8 = *(a2 + 5);
    *(this + 9) |= 4u;
    *(this + 5) = v8;
    v4 = *(a2 + 9);
    if ((v4 & 8) == 0)
    {
LABEL_8:
      if ((v4 & 0x10) == 0)
      {
        return;
      }

      goto LABEL_9;
    }

LABEL_14:
    v9 = *(a2 + 6);
    *(this + 9) |= 8u;
    *(this + 6) = v9;
    if ((*(a2 + 9) & 0x10) == 0)
    {
      return;
    }

LABEL_9:
    v5 = *(a2 + 7);
    *(this + 9) |= 0x10u;
    *(this + 7) = v5;
  }
}

void sub_2963E9CD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::metrics::FaceTimeModeRoleTransport::~FaceTimeModeRoleTransport(awd::metrics::FaceTimeModeRoleTransport *this)
{
  *this = &unk_2A1D4E128;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2A1D4E128;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2A1D4E128;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  JUMPOUT(0x29C25A1F0);
}

uint64_t awd::metrics::FaceTimeModeRoleTransport::default_instance(awd::metrics::FaceTimeModeRoleTransport *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = awd::metrics::FaceTimeModeRoleTransport::default_instance_;
  if (!awd::metrics::FaceTimeModeRoleTransport::default_instance_)
  {
    awd::metrics::protobuf_AddDesc_Facetime_2eproto(0, a2, a3, a4);
    return awd::metrics::FaceTimeModeRoleTransport::default_instance_;
  }

  return result;
}

uint64_t awd::metrics::FaceTimeModeRoleTransport::Clear(uint64_t this)
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

uint64_t awd::metrics::FaceTimeModeRoleTransport::MergePartialFromCodedStream(awd::metrics::FaceTimeModeRoleTransport *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
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
          v8 = *(a2 + 2);
          goto LABEL_32;
        }

        if ((TagFallback & 7) != 0)
        {
          goto LABEL_21;
        }

        v13 = *(a2 + 1);
        v8 = *(a2 + 2);
        if (v13 >= v8 || (v14 = *v13, v14 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 1);
          if (!result)
          {
            return result;
          }

          v15 = *(a2 + 1);
          v8 = *(a2 + 2);
        }

        else
        {
          *(this + 1) = v14;
          v15 = v13 + 1;
          *(a2 + 1) = v15;
        }

        *(this + 9) |= 1u;
        if (v15 < v8 && *v15 == 16)
        {
          v10 = v15 + 1;
          *(a2 + 1) = v10;
LABEL_32:
          if (v10 >= v8 || (v16 = *v10, v16 < 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 4);
            if (!result)
            {
              return result;
            }

            v17 = *(a2 + 1);
            v8 = *(a2 + 2);
          }

          else
          {
            *(this + 4) = v16;
            v17 = v10 + 1;
            *(a2 + 1) = v17;
          }

          *(this + 9) |= 2u;
          if (v17 < v8 && *v17 == 24)
          {
            v11 = v17 + 1;
            *(a2 + 1) = v11;
LABEL_40:
            if (v11 >= v8 || (v18 = *v11, v18 < 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 5);
              if (!result)
              {
                return result;
              }

              v19 = *(a2 + 1);
              v8 = *(a2 + 2);
            }

            else
            {
              *(this + 5) = v18;
              v19 = v11 + 1;
              *(a2 + 1) = v19;
            }

            *(this + 9) |= 4u;
            if (v19 < v8 && *v19 == 32)
            {
              v12 = v19 + 1;
              *(a2 + 1) = v12;
              goto LABEL_48;
            }
          }
        }
      }

      if (v7 == 3)
      {
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_21;
        }

        v11 = *(a2 + 1);
        v8 = *(a2 + 2);
        goto LABEL_40;
      }

      if (v7 != 4)
      {
        break;
      }

      if ((TagFallback & 7) != 0)
      {
        goto LABEL_21;
      }

      v12 = *(a2 + 1);
      v8 = *(a2 + 2);
LABEL_48:
      if (v12 >= v8 || (v20 = *v12, v20 < 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 6);
        if (!result)
        {
          return result;
        }

        v21 = *(a2 + 1);
        v8 = *(a2 + 2);
      }

      else
      {
        *(this + 6) = v20;
        v21 = v12 + 1;
        *(a2 + 1) = v21;
      }

      *(this + 9) |= 8u;
      if (v21 < v8 && *v21 == 40)
      {
        v9 = v21 + 1;
        *(a2 + 1) = v9;
LABEL_56:
        if (v9 >= v8 || (v22 = *v9, v22 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 7);
          if (!result)
          {
            return result;
          }

          v23 = *(a2 + 1);
          v8 = *(a2 + 2);
        }

        else
        {
          *(this + 7) = v22;
          v23 = v9 + 1;
          *(a2 + 1) = v23;
        }

        *(this + 9) |= 0x10u;
        if (v23 == v8 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
        {
          *(a2 + 8) = 0;
          result = 1;
          *(a2 + 36) = 1;
          return result;
        }
      }
    }

    if (v7 == 5 && (TagFallback & 7) == 0)
    {
      v9 = *(a2 + 1);
      v8 = *(a2 + 2);
      goto LABEL_56;
    }

LABEL_21:
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

uint64_t awd::metrics::FaceTimeModeRoleTransport::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 36);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(1, *(this + 8), a2, a4);
    v6 = v5[9];
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

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(2, v5[4], a2, a4);
  v6 = v5[9];
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

LABEL_10:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(4, v5[6], a2, a4);
    if ((v5[9] & 0x10) == 0)
    {
      return this;
    }

    goto LABEL_11;
  }

LABEL_9:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(3, v5[5], a2, a4);
  v6 = v5[9];
  if ((v6 & 8) != 0)
  {
    goto LABEL_10;
  }

LABEL_5:
  if ((v6 & 0x10) == 0)
  {
    return this;
  }

LABEL_11:
  v7 = v5[7];

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(5, v7, a2, a4);
}

uint64_t awd::metrics::FaceTimeModeRoleTransport::ByteSize(awd::metrics::FaceTimeModeRoleTransport *this, unint64_t a2)
{
  LOBYTE(v3) = *(this + 36);
  if (!v3)
  {
    v4 = 0;
    goto LABEL_27;
  }

  if (*(this + 36))
  {
    v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 1)) + 1;
    v3 = *(this + 9);
    if ((v3 & 2) == 0)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v4 = 0;
    if ((*(this + 36) & 2) == 0)
    {
      goto LABEL_11;
    }
  }

  v5 = *(this + 4);
  if (v5 >= 0x80)
  {
    v6 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5) + 1;
    v3 = *(this + 9);
  }

  else
  {
    v6 = 2;
  }

  v4 = (v6 + v4);
LABEL_11:
  if ((v3 & 4) != 0)
  {
    v7 = *(this + 5);
    if (v7 >= 0x80)
    {
      v8 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v7) + 1;
      v3 = *(this + 9);
    }

    else
    {
      v8 = 2;
    }

    v4 = (v8 + v4);
    if ((v3 & 8) == 0)
    {
LABEL_13:
      if ((v3 & 0x10) == 0)
      {
        goto LABEL_27;
      }

      goto LABEL_23;
    }
  }

  else if ((v3 & 8) == 0)
  {
    goto LABEL_13;
  }

  v9 = *(this + 6);
  if (v9 >= 0x80)
  {
    v10 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v9) + 1;
    v3 = *(this + 9);
  }

  else
  {
    v10 = 2;
  }

  v4 = (v10 + v4);
  if ((v3 & 0x10) != 0)
  {
LABEL_23:
    v11 = *(this + 7);
    if (v11 >= 0x80)
    {
      v12 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v11) + 1;
    }

    else
    {
      v12 = 2;
    }

    v4 = (v12 + v4);
  }

LABEL_27:
  *(this + 8) = v4;
  return v4;
}

void awd::metrics::FaceTimeModeRoleTransport::CheckTypeAndMergeFrom(awd::metrics::FaceTimeModeRoleTransport *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  {
    awd::metrics::FaceTimeModeRoleTransport::CheckTypeAndMergeFrom();
  }

  awd::metrics::FaceTimeModeRoleTransport::MergeFrom(this, lpsrc);
}

void awd::metrics::FaceTimeModeRoleTransport::CopyFrom(awd::metrics::FaceTimeModeRoleTransport *this, const awd::metrics::FaceTimeModeRoleTransport *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    awd::metrics::FaceTimeModeRoleTransport::MergeFrom(this, a2);
  }
}

uint64_t awd::metrics::FaceTimeModeRoleTransport::Swap(uint64_t this, awd::metrics::FaceTimeModeRoleTransport *a2)
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
    LODWORD(v2) = *(this + 24);
    *(this + 24) = *(a2 + 6);
    *(a2 + 6) = v2;
    LODWORD(v2) = *(this + 28);
    *(this + 28) = *(a2 + 7);
    *(a2 + 7) = v2;
    LODWORD(v2) = *(this + 36);
    *(this + 36) = *(a2 + 9);
    *(a2 + 9) = v2;
    LODWORD(v2) = *(this + 32);
    *(this + 32) = *(a2 + 8);
    *(a2 + 8) = v2;
  }

  return this;
}

double awd::metrics::FaceTimeCallAggregatedReport_SegmentStats::SharedCtor(awd::metrics::FaceTimeCallAggregatedReport_SegmentStats *this)
{
  *(this + 5) = 0;
  result = 0.0;
  *(this + 24) = 0u;
  *(this + 8) = 0u;
  *(this + 44) = MEMORY[0x29EDC9758];
  *(this + 45) = 0;
  *(this + 46) = 0;
  *(this + 47) = 0;
  return result;
}

awd::metrics::FaceTimeCallAggregatedReport_SegmentStats *awd::metrics::FaceTimeCallAggregatedReport_SegmentStats::FaceTimeCallAggregatedReport_SegmentStats(awd::metrics::FaceTimeCallAggregatedReport_SegmentStats *this, const awd::metrics::FaceTimeCallAggregatedReport_SegmentStats *a2)
{
  *this = &unk_2A1D4E1A0;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 88) = 0u;
  *(this + 104) = 0u;
  *(this + 120) = 0u;
  *(this + 136) = 0u;
  *(this + 152) = 0u;
  *(this + 168) = 0u;
  *(this + 184) = 0u;
  *(this + 200) = 0u;
  *(this + 216) = 0u;
  *(this + 232) = 0u;
  *(this + 248) = 0u;
  *(this + 8) = 0u;
  *(this + 264) = 0u;
  *(this + 280) = 0u;
  *(this + 296) = 0u;
  *(this + 312) = 0u;
  *(this + 328) = 0u;
  v3 = MEMORY[0x29EDC9758];
  *(this + 43) = 0;
  *(this + 44) = v3;
  *(this + 45) = 0;
  *(this + 46) = 0;
  *(this + 47) = 0;
  awd::metrics::FaceTimeCallAggregatedReport_SegmentStats::MergeFrom(this, a2);
  return this;
}

void sub_2963EA5A8(_Unwind_Exception *a1)
{
  v3 = *(v1 + 42);
  if (v3)
  {
    MEMORY[0x29C25A1D0](v3, 0x1000C8052888210);
  }

  v4 = *(v1 + 40);
  if (v4)
  {
    MEMORY[0x29C25A1D0](v4, 0x1000C8052888210);
  }

  v5 = *(v1 + 38);
  if (v5)
  {
    MEMORY[0x29C25A1D0](v5, 0x1000C8052888210);
  }

  v6 = *(v1 + 36);
  if (v6)
  {
    MEMORY[0x29C25A1D0](v6, 0x1000C8052888210);
  }

  v7 = *(v1 + 34);
  if (v7)
  {
    MEMORY[0x29C25A1D0](v7, 0x1000C8052888210);
  }

  v8 = *(v1 + 32);
  if (v8)
  {
    MEMORY[0x29C25A1D0](v8, 0x1000C8052888210);
  }

  v9 = *(v1 + 30);
  if (v9)
  {
    MEMORY[0x29C25A1D0](v9, 0x1000C8052888210);
  }

  v10 = *(v1 + 28);
  if (v10)
  {
    MEMORY[0x29C25A1D0](v10, 0x1000C8052888210);
  }

  v11 = *(v1 + 26);
  if (v11)
  {
    MEMORY[0x29C25A1D0](v11, 0x1000C8052888210);
  }

  v12 = *(v1 + 24);
  if (v12)
  {
    MEMORY[0x29C25A1D0](v12, 0x1000C8052888210);
  }

  v13 = *(v1 + 22);
  if (v13)
  {
    MEMORY[0x29C25A1D0](v13, 0x1000C8052888210);
  }

  v14 = *(v1 + 20);
  if (v14)
  {
    MEMORY[0x29C25A1D0](v14, 0x1000C8052888210);
  }

  v15 = *(v1 + 18);
  if (v15)
  {
    MEMORY[0x29C25A1D0](v15, 0x1000C8052888210);
  }

  v16 = *(v1 + 16);
  if (v16)
  {
    MEMORY[0x29C25A1D0](v16, 0x1000C8052888210);
  }

  v17 = *(v1 + 14);
  if (v17)
  {
    MEMORY[0x29C25A1D0](v17, 0x1000C8052888210);
  }

  v18 = *(v1 + 12);
  if (v18)
  {
    MEMORY[0x29C25A1D0](v18, 0x1000C8052888210);
  }

  v19 = *(v1 + 10);
  if (v19)
  {
    MEMORY[0x29C25A1D0](v19, 0x1000C8052888210);
  }

  v20 = *(v1 + 8);
  if (v20)
  {
    MEMORY[0x29C25A1D0](v20, 0x1000C8052888210);
  }

  v21 = *(v1 + 6);
  if (v21)
  {
    MEMORY[0x29C25A1D0](v21, 0x1000C8052888210);
  }

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(v1);
  _Unwind_Resume(a1);
}

void awd::metrics::FaceTimeCallAggregatedReport_SegmentStats::MergeFrom(awd::metrics::FaceTimeCallAggregatedReport_SegmentStats *this, const awd::metrics::FaceTimeCallAggregatedReport_SegmentStats *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v39);
  }

  v4 = *(a2 + 14);
  if (v4)
  {
    wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 12, *(this + 14) + v4);
    memcpy((*(this + 6) + 4 * *(this + 14)), *(a2 + 6), 4 * *(a2 + 14));
    *(this + 14) += *(a2 + 14);
  }

  v5 = *(a2 + 18);
  if (v5)
  {
    wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 16, *(this + 18) + v5);
    memcpy((*(this + 8) + 4 * *(this + 18)), *(a2 + 8), 4 * *(a2 + 18));
    *(this + 18) += *(a2 + 18);
  }

  v6 = *(a2 + 22);
  if (v6)
  {
    wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 20, *(this + 22) + v6);
    memcpy((*(this + 10) + 4 * *(this + 22)), *(a2 + 10), 4 * *(a2 + 22));
    *(this + 22) += *(a2 + 22);
  }

  v7 = *(a2 + 26);
  if (v7)
  {
    wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 24, *(this + 26) + v7);
    memcpy((*(this + 12) + 4 * *(this + 26)), *(a2 + 12), 4 * *(a2 + 26));
    *(this + 26) += *(a2 + 26);
  }

  v8 = *(a2 + 30);
  if (v8)
  {
    wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 28, *(this + 30) + v8);
    memcpy((*(this + 14) + 4 * *(this + 30)), *(a2 + 14), 4 * *(a2 + 30));
    *(this + 30) += *(a2 + 30);
  }

  v9 = *(a2 + 34);
  if (v9)
  {
    wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 32, *(this + 34) + v9);
    memcpy((*(this + 16) + 4 * *(this + 34)), *(a2 + 16), 4 * *(a2 + 34));
    *(this + 34) += *(a2 + 34);
  }

  v10 = *(a2 + 38);
  if (v10)
  {
    wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 36, *(this + 38) + v10);
    memcpy((*(this + 18) + 4 * *(this + 38)), *(a2 + 18), 4 * *(a2 + 38));
    *(this + 38) += *(a2 + 38);
  }

  v11 = *(a2 + 42);
  if (v11)
  {
    wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 40, *(this + 42) + v11);
    memcpy((*(this + 20) + 4 * *(this + 42)), *(a2 + 20), 4 * *(a2 + 42));
    *(this + 42) += *(a2 + 42);
  }

  v12 = *(a2 + 46);
  if (v12)
  {
    wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 44, *(this + 46) + v12);
    memcpy((*(this + 22) + 4 * *(this + 46)), *(a2 + 22), 4 * *(a2 + 46));
    *(this + 46) += *(a2 + 46);
  }

  v13 = *(a2 + 50);
  if (v13)
  {
    wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 48, *(this + 50) + v13);
    memcpy((*(this + 24) + 4 * *(this + 50)), *(a2 + 24), 4 * *(a2 + 50));
    *(this + 50) += *(a2 + 50);
  }

  v14 = *(a2 + 54);
  if (v14)
  {
    wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 52, *(this + 54) + v14);
    memcpy((*(this + 26) + 4 * *(this + 54)), *(a2 + 26), 4 * *(a2 + 54));
    *(this + 54) += *(a2 + 54);
  }

  v15 = *(a2 + 58);
  if (v15)
  {
    wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 56, *(this + 58) + v15);
    memcpy((*(this + 28) + 4 * *(this + 58)), *(a2 + 28), 4 * *(a2 + 58));
    *(this + 58) += *(a2 + 58);
  }

  v16 = *(a2 + 62);
  if (v16)
  {
    wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 60, *(this + 62) + v16);
    memcpy((*(this + 30) + 4 * *(this + 62)), *(a2 + 30), 4 * *(a2 + 62));
    *(this + 62) += *(a2 + 62);
  }

  v17 = *(a2 + 66);
  if (v17)
  {
    wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 64, *(this + 66) + v17);
    memcpy((*(this + 32) + 4 * *(this + 66)), *(a2 + 32), 4 * *(a2 + 66));
    *(this + 66) += *(a2 + 66);
  }

  v18 = *(a2 + 70);
  if (v18)
  {
    wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 68, *(this + 70) + v18);
    memcpy((*(this + 34) + 4 * *(this + 70)), *(a2 + 34), 4 * *(a2 + 70));
    *(this + 70) += *(a2 + 70);
  }

  v19 = *(a2 + 74);
  if (v19)
  {
    wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 72, *(this + 74) + v19);
    memcpy((*(this + 36) + 4 * *(this + 74)), *(a2 + 36), 4 * *(a2 + 74));
    *(this + 74) += *(a2 + 74);
  }

  v20 = *(a2 + 78);
  if (v20)
  {
    wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 76, *(this + 78) + v20);
    memcpy((*(this + 38) + 4 * *(this + 78)), *(a2 + 38), 4 * *(a2 + 78));
    *(this + 78) += *(a2 + 78);
  }

  v21 = *(a2 + 82);
  if (v21)
  {
    wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 80, *(this + 82) + v21);
    memcpy((*(this + 40) + 4 * *(this + 82)), *(a2 + 40), 4 * *(a2 + 82));
    *(this + 82) += *(a2 + 82);
  }

  v22 = *(a2 + 86);
  if (v22)
  {
    wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 84, *(this + 86) + v22);
    memcpy((*(this + 42) + 4 * *(this + 86)), *(a2 + 42), 4 * *(a2 + 86));
    *(this + 86) += *(a2 + 86);
  }

  v23 = *(a2 + 94);
  if (!v23)
  {
    goto LABEL_51;
  }

  if (v23)
  {
    v28 = *(a2 + 2);
    *(this + 94) |= 1u;
    *(this + 2) = v28;
    v23 = *(a2 + 94);
    if ((v23 & 2) == 0)
    {
LABEL_44:
      if ((v23 & 4) == 0)
      {
        goto LABEL_45;
      }

      goto LABEL_65;
    }
  }

  else if ((v23 & 2) == 0)
  {
    goto LABEL_44;
  }

  v29 = *(a2 + 3);
  *(this + 94) |= 2u;
  *(this + 3) = v29;
  v23 = *(a2 + 94);
  if ((v23 & 4) == 0)
  {
LABEL_45:
    if ((v23 & 8) == 0)
    {
      goto LABEL_46;
    }

    goto LABEL_66;
  }

LABEL_65:
  v30 = *(a2 + 4);
  *(this + 94) |= 4u;
  *(this + 4) = v30;
  v23 = *(a2 + 94);
  if ((v23 & 8) == 0)
  {
LABEL_46:
    if ((v23 & 0x10) == 0)
    {
      goto LABEL_47;
    }

    goto LABEL_67;
  }

LABEL_66:
  v31 = *(a2 + 5);
  *(this + 94) |= 8u;
  *(this + 5) = v31;
  v23 = *(a2 + 94);
  if ((v23 & 0x10) == 0)
  {
LABEL_47:
    if ((v23 & 0x20) == 0)
    {
      goto LABEL_48;
    }

LABEL_68:
    v33 = *(a2 + 7);
    *(this + 94) |= 0x20u;
    *(this + 7) = v33;
    v23 = *(a2 + 94);
    if ((v23 & 0x40) == 0)
    {
LABEL_49:
      if ((v23 & 0x80) == 0)
      {
        goto LABEL_51;
      }

      goto LABEL_50;
    }

    goto LABEL_69;
  }

LABEL_67:
  v32 = *(a2 + 6);
  *(this + 94) |= 0x10u;
  *(this + 6) = v32;
  v23 = *(a2 + 94);
  if ((v23 & 0x20) != 0)
  {
    goto LABEL_68;
  }

LABEL_48:
  if ((v23 & 0x40) == 0)
  {
    goto LABEL_49;
  }

LABEL_69:
  v34 = *(a2 + 8);
  *(this + 94) |= 0x40u;
  *(this + 8) = v34;
  v23 = *(a2 + 94);
  if ((v23 & 0x80) != 0)
  {
LABEL_50:
    v24 = *(a2 + 9);
    *(this + 94) |= 0x80u;
    *(this + 9) = v24;
    v23 = *(a2 + 94);
  }

LABEL_51:
  if ((v23 & 0xFF00) != 0)
  {
    if ((v23 & 0x100) != 0)
    {
      v25 = *(a2 + 10);
      *(this + 94) |= 0x100u;
      *(this + 10) = v25;
      v23 = *(a2 + 94);
    }

    if ((v23 & 0x200) != 0)
    {
      v26 = *(a2 + 11);
      *(this + 94) |= 0x200u;
      *(this + 11) = v26;
      v23 = *(a2 + 94);
    }
  }

  if (v23 >> 29)
  {
    if ((v23 & 0x20000000) != 0)
    {
      v35 = *(a2 + 90);
      *(this + 94) |= 0x20000000u;
      *(this + 90) = v35;
      v23 = *(a2 + 94);
      if ((v23 & 0x40000000) == 0)
      {
LABEL_59:
        if ((v23 & 0x80000000) == 0)
        {
          goto LABEL_60;
        }

        goto LABEL_75;
      }
    }

    else if ((v23 & 0x40000000) == 0)
    {
      goto LABEL_59;
    }

    v36 = *(a2 + 44);
    *(this + 94) |= 0x40000000u;
    v37 = *(this + 44);
    if (v37 == MEMORY[0x29EDC9758])
    {
      operator new();
    }

    std::string::operator=(v37, v36);
    if ((*(a2 + 94) & 0x80000000) != 0)
    {
LABEL_75:
      v38 = *(a2 + 91);
      *(this + 94) |= 0x80000000;
      *(this + 91) = v38;
    }
  }

LABEL_60:
  if (*(a2 + 380))
  {
    v27 = *(a2 + 92);
    *(this + 95) |= 1u;
    *(this + 92) = v27;
  }
}

void sub_2963EAE94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::metrics::FaceTimeCallAggregatedReport_SegmentStats::~FaceTimeCallAggregatedReport_SegmentStats(awd::metrics::FaceTimeCallAggregatedReport_SegmentStats *this)
{
  *this = &unk_2A1D4E1A0;
  awd::metrics::FaceTimeCallAggregatedReport_SegmentStats::SharedDtor(this);
  v2 = *(this + 42);
  if (v2)
  {
    MEMORY[0x29C25A1D0](v2, 0x1000C8052888210);
  }

  v3 = *(this + 40);
  if (v3)
  {
    MEMORY[0x29C25A1D0](v3, 0x1000C8052888210);
  }

  v4 = *(this + 38);
  if (v4)
  {
    MEMORY[0x29C25A1D0](v4, 0x1000C8052888210);
  }

  v5 = *(this + 36);
  if (v5)
  {
    MEMORY[0x29C25A1D0](v5, 0x1000C8052888210);
  }

  v6 = *(this + 34);
  if (v6)
  {
    MEMORY[0x29C25A1D0](v6, 0x1000C8052888210);
  }

  v7 = *(this + 32);
  if (v7)
  {
    MEMORY[0x29C25A1D0](v7, 0x1000C8052888210);
  }

  v8 = *(this + 30);
  if (v8)
  {
    MEMORY[0x29C25A1D0](v8, 0x1000C8052888210);
  }

  v9 = *(this + 28);
  if (v9)
  {
    MEMORY[0x29C25A1D0](v9, 0x1000C8052888210);
  }

  v10 = *(this + 26);
  if (v10)
  {
    MEMORY[0x29C25A1D0](v10, 0x1000C8052888210);
  }

  v11 = *(this + 24);
  if (v11)
  {
    MEMORY[0x29C25A1D0](v11, 0x1000C8052888210);
  }

  v12 = *(this + 22);
  if (v12)
  {
    MEMORY[0x29C25A1D0](v12, 0x1000C8052888210);
  }

  v13 = *(this + 20);
  if (v13)
  {
    MEMORY[0x29C25A1D0](v13, 0x1000C8052888210);
  }

  v14 = *(this + 18);
  if (v14)
  {
    MEMORY[0x29C25A1D0](v14, 0x1000C8052888210);
  }

  v15 = *(this + 16);
  if (v15)
  {
    MEMORY[0x29C25A1D0](v15, 0x1000C8052888210);
  }

  v16 = *(this + 14);
  if (v16)
  {
    MEMORY[0x29C25A1D0](v16, 0x1000C8052888210);
  }

  v17 = *(this + 12);
  if (v17)
  {
    MEMORY[0x29C25A1D0](v17, 0x1000C8052888210);
  }

  v18 = *(this + 10);
  if (v18)
  {
    MEMORY[0x29C25A1D0](v18, 0x1000C8052888210);
  }

  v19 = *(this + 8);
  if (v19)
  {
    MEMORY[0x29C25A1D0](v19, 0x1000C8052888210);
  }

  v20 = *(this + 6);
  if (v20)
  {
    MEMORY[0x29C25A1D0](v20, 0x1000C8052888210);
  }

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  awd::metrics::FaceTimeCallAggregatedReport_SegmentStats::~FaceTimeCallAggregatedReport_SegmentStats(this);

  JUMPOUT(0x29C25A1F0);
}

uint64_t awd::metrics::FaceTimeCallAggregatedReport_SegmentStats::SharedDtor(uint64_t this)
{
  v1 = *(this + 352);
  if (v1 != MEMORY[0x29EDC9758] && v1 != 0)
  {
    if (*(v1 + 23) < 0)
    {
      operator delete(*v1);
    }

    JUMPOUT(0x29C25A1F0);
  }

  return this;
}

uint64_t awd::metrics::FaceTimeCallAggregatedReport_SegmentStats::default_instance(awd::metrics::FaceTimeCallAggregatedReport_SegmentStats *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = awd::metrics::FaceTimeCallAggregatedReport_SegmentStats::default_instance_;
  if (!awd::metrics::FaceTimeCallAggregatedReport_SegmentStats::default_instance_)
  {
    awd::metrics::protobuf_AddDesc_Facetime_2eproto(0, a2, a3, a4);
    return awd::metrics::FaceTimeCallAggregatedReport_SegmentStats::default_instance_;
  }

  return result;
}

uint64_t awd::metrics::FaceTimeCallAggregatedReport_SegmentStats::Clear(uint64_t this)
{
  v1 = *(this + 376);
  if (v1)
  {
    *(this + 24) = 0u;
    *(this + 8) = 0u;
  }

  if ((v1 & 0xFF00) != 0)
  {
    *(this + 40) = 0;
  }

  if (v1 >> 29)
  {
    *(this + 360) = 0;
    if ((v1 & 0x40000000) != 0)
    {
      v2 = *(this + 352);
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

    *(this + 364) = 0;
  }

  if (*(this + 380))
  {
    *(this + 368) = 0;
  }

  *(this + 56) = 0;
  *(this + 72) = 0;
  *(this + 88) = 0;
  *(this + 104) = 0;
  *(this + 120) = 0;
  *(this + 136) = 0;
  *(this + 152) = 0;
  *(this + 168) = 0;
  *(this + 184) = 0;
  *(this + 200) = 0;
  *(this + 216) = 0;
  *(this + 232) = 0;
  *(this + 248) = 0;
  *(this + 264) = 0;
  *(this + 280) = 0;
  *(this + 296) = 0;
  *(this + 312) = 0;
  *(this + 328) = 0;
  *(this + 344) = 0;
  *(this + 376) = 0;
  return this;
}

uint64_t awd::metrics::FaceTimeCallAggregatedReport_SegmentStats::MergePartialFromCodedStream(awd::metrics::FaceTimeCallAggregatedReport_SegmentStats *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
{
  v5 = (this + 360);
  v6 = (this + 364);
  v7 = (this + 368);
LABEL_2:
  while (2)
  {
    v8 = *(a2 + 1);
    if (v8 >= *(a2 + 2) || (TagFallback = *v8, (TagFallback & 0x80000000) != 0))
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
      *(a2 + 1) = v8 + 1;
      if (!TagFallback)
      {
        return 1;
      }
    }

    v10 = TagFallback & 7;
    switch(TagFallback >> 3)
    {
      case 1u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_112;
        }

        v12 = *(a2 + 1);
        v11 = *(a2 + 2);
        if (v12 >= v11 || (v13 = *v12, v13 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 2);
          if (!result)
          {
            return result;
          }

          v14 = *(a2 + 1);
          v11 = *(a2 + 2);
        }

        else
        {
          *(this + 2) = v13;
          v14 = v12 + 1;
          *(a2 + 1) = v14;
        }

        *(this + 94) |= 1u;
        if (v14 < v11 && *v14 == 16)
        {
          v21 = v14 + 1;
          *(a2 + 1) = v21;
          goto LABEL_141;
        }

        continue;
      case 2u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_112;
        }

        v21 = *(a2 + 1);
        v11 = *(a2 + 2);
LABEL_141:
        if (v21 >= v11 || (v49 = *v21, v49 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 3);
          if (!result)
          {
            return result;
          }

          v50 = *(a2 + 1);
          v11 = *(a2 + 2);
        }

        else
        {
          *(this + 3) = v49;
          v50 = v21 + 1;
          *(a2 + 1) = v50;
        }

        *(this + 94) |= 2u;
        if (v50 >= v11 || *v50 != 24)
        {
          continue;
        }

        v18 = v50 + 1;
        *(a2 + 1) = v18;
LABEL_149:
        if (v18 >= v11 || (v51 = *v18, v51 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 4);
          if (!result)
          {
            return result;
          }

          v52 = *(a2 + 1);
          v11 = *(a2 + 2);
        }

        else
        {
          *(this + 4) = v51;
          v52 = v18 + 1;
          *(a2 + 1) = v52;
        }

        *(this + 94) |= 4u;
        if (v52 >= v11 || *v52 != 32)
        {
          continue;
        }

        v19 = v52 + 1;
        *(a2 + 1) = v19;
LABEL_157:
        if (v19 >= v11 || (v53 = *v19, v53 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 5);
          if (!result)
          {
            return result;
          }

          v54 = *(a2 + 1);
          v11 = *(a2 + 2);
        }

        else
        {
          *(this + 5) = v53;
          v54 = v19 + 1;
          *(a2 + 1) = v54;
        }

        *(this + 94) |= 8u;
        if (v54 >= v11 || *v54 != 40)
        {
          continue;
        }

        v16 = v54 + 1;
        *(a2 + 1) = v16;
LABEL_165:
        if (v16 >= v11 || (v55 = *v16, v55 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 6);
          if (!result)
          {
            return result;
          }

          v56 = *(a2 + 1);
          v11 = *(a2 + 2);
        }

        else
        {
          *(this + 6) = v55;
          v56 = v16 + 1;
          *(a2 + 1) = v56;
        }

        *(this + 94) |= 0x10u;
        if (v56 >= v11 || *v56 != 48)
        {
          continue;
        }

        v24 = v56 + 1;
        *(a2 + 1) = v24;
LABEL_173:
        if (v24 >= v11 || (v57 = *v24, v57 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 7);
          if (!result)
          {
            return result;
          }

          v58 = *(a2 + 1);
          v11 = *(a2 + 2);
        }

        else
        {
          *(this + 7) = v57;
          v58 = v24 + 1;
          *(a2 + 1) = v58;
        }

        *(this + 94) |= 0x20u;
        if (v58 >= v11 || *v58 != 56)
        {
          continue;
        }

        v25 = v58 + 1;
        *(a2 + 1) = v25;
LABEL_181:
        if (v25 >= v11 || (v59 = *v25, v59 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 8);
          if (!result)
          {
            return result;
          }

          v60 = *(a2 + 1);
          v11 = *(a2 + 2);
        }

        else
        {
          *(this + 8) = v59;
          v60 = v25 + 1;
          *(a2 + 1) = v60;
        }

        *(this + 94) |= 0x40u;
        if (v60 >= v11 || *v60 != 64)
        {
          continue;
        }

        v20 = v60 + 1;
        *(a2 + 1) = v20;
LABEL_189:
        if (v20 >= v11 || (v61 = *v20, v61 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 9);
          if (!result)
          {
            return result;
          }

          v62 = *(a2 + 1);
          v11 = *(a2 + 2);
        }

        else
        {
          *(this + 9) = v61;
          v62 = v20 + 1;
          *(a2 + 1) = v62;
        }

        *(this + 94) |= 0x80u;
        if (v62 >= v11 || *v62 != 72)
        {
          continue;
        }

        v26 = v62 + 1;
        *(a2 + 1) = v26;
LABEL_197:
        if (v26 >= v11 || (v63 = *v26, v63 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 10);
          if (!result)
          {
            return result;
          }

          v64 = *(a2 + 1);
          v11 = *(a2 + 2);
        }

        else
        {
          *(this + 10) = v63;
          v64 = v26 + 1;
          *(a2 + 1) = v64;
        }

        *(this + 94) |= 0x100u;
        if (v64 >= v11 || *v64 != 80)
        {
          continue;
        }

        v17 = v64 + 1;
        *(a2 + 1) = v17;
LABEL_205:
        if (v17 >= v11 || (v65 = *v17, v65 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 11);
          if (!result)
          {
            return result;
          }

          v66 = *(a2 + 1);
          v11 = *(a2 + 2);
        }

        else
        {
          *(this + 11) = v65;
          v66 = (v17 + 1);
          *(a2 + 1) = v66;
        }

        *(this + 94) |= 0x200u;
        if (v66 >= v11)
        {
          continue;
        }

        v67 = *v66;
        goto LABEL_212;
      case 3u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_112;
        }

        v18 = *(a2 + 1);
        v11 = *(a2 + 2);
        goto LABEL_149;
      case 4u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_112;
        }

        v19 = *(a2 + 1);
        v11 = *(a2 + 2);
        goto LABEL_157;
      case 5u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_112;
        }

        v16 = *(a2 + 1);
        v11 = *(a2 + 2);
        goto LABEL_165;
      case 6u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_112;
        }

        v24 = *(a2 + 1);
        v11 = *(a2 + 2);
        goto LABEL_173;
      case 7u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_112;
        }

        v25 = *(a2 + 1);
        v11 = *(a2 + 2);
        goto LABEL_181;
      case 8u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_112;
        }

        v20 = *(a2 + 1);
        v11 = *(a2 + 2);
        goto LABEL_189;
      case 9u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_112;
        }

        v26 = *(a2 + 1);
        v11 = *(a2 + 2);
        goto LABEL_197;
      case 0xAu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_112;
        }

        v17 = *(a2 + 1);
        v11 = *(a2 + 2);
        goto LABEL_205;
      case 0xBu:
        if ((TagFallback & 7) != 0)
        {
          if (v10 == 2)
          {
            result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadPackedPrimitiveNoInline<unsigned int,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)13>(a2, this + 6);
            if (!result)
            {
              return result;
            }

            goto LABEL_231;
          }

          goto LABEL_112;
        }

        v43 = *(a2 + 1);
        v11 = *(a2 + 2);
        while (1)
        {
          v282 = 0;
          if (v43 >= v11 || *v43 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v282))
            {
              return 0;
            }
          }

          else
          {
            v282 = *v43;
            *(a2 + 1) = v43 + 1;
          }

          v68 = *(this + 14);
          if (v68 == *(this + 15))
          {
            wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 12, v68 + 1);
            v68 = *(this + 14);
          }

          v69 = v282;
          v70 = *(this + 6);
          *(this + 14) = v68 + 1;
          *(v70 + 4 * v68) = v69;
          v71 = *(this + 15) - *(this + 14);
          if (v71 >= 1)
          {
            v72 = v71 + 1;
            do
            {
              v73 = *(a2 + 1);
              v74 = *(a2 + 2);
              if (v73 >= v74 || *v73 != 88)
              {
                break;
              }

              *(a2 + 1) = v73 + 1;
              if ((v73 + 1) >= v74 || v73[1] < 0)
              {
                if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v282))
                {
                  return 0;
                }
              }

              else
              {
                v282 = v73[1];
                *(a2 + 1) = v73 + 2;
              }

              v75 = *(this + 14);
              if (v75 >= *(this + 15))
              {
                wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v283);
                v75 = *(this + 14);
              }

              v76 = v282;
              v77 = *(this + 6);
              *(this + 14) = v75 + 1;
              *(v77 + 4 * v75) = v76;
              --v72;
            }

            while (v72 > 1);
          }

LABEL_231:
          v66 = *(a2 + 1);
          v11 = *(a2 + 2);
          if (v66 >= v11)
          {
            goto LABEL_2;
          }

          v67 = *v66;
          if (v67 == 96)
          {
            goto LABEL_233;
          }

LABEL_212:
          if (v67 != 88)
          {
            goto LABEL_2;
          }

          v43 = (v66 + 1);
          *(a2 + 1) = v43;
        }

      case 0xCu:
        if ((TagFallback & 7) != 0)
        {
          if (v10 == 2)
          {
            result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadPackedPrimitiveNoInline<unsigned int,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)13>(a2, this + 8);
            if (!result)
            {
              return result;
            }

            goto LABEL_251;
          }

          goto LABEL_112;
        }

        v33 = *(a2 + 1);
        v11 = *(a2 + 2);
        while (1)
        {
          v282 = 0;
          if (v33 >= v11 || *v33 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v282))
            {
              return 0;
            }
          }

          else
          {
            v282 = *v33;
            *(a2 + 1) = v33 + 1;
          }

          v78 = *(this + 18);
          if (v78 == *(this + 19))
          {
            wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 16, v78 + 1);
            v78 = *(this + 18);
          }

          v79 = v282;
          v80 = *(this + 8);
          *(this + 18) = v78 + 1;
          *(v80 + 4 * v78) = v79;
          v81 = *(this + 19) - *(this + 18);
          if (v81 >= 1)
          {
            v82 = v81 + 1;
            do
            {
              v83 = *(a2 + 1);
              v84 = *(a2 + 2);
              if (v83 >= v84 || *v83 != 96)
              {
                break;
              }

              *(a2 + 1) = v83 + 1;
              if ((v83 + 1) >= v84 || v83[1] < 0)
              {
                if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v282))
                {
                  return 0;
                }
              }

              else
              {
                v282 = v83[1];
                *(a2 + 1) = v83 + 2;
              }

              v85 = *(this + 18);
              if (v85 >= *(this + 19))
              {
                wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v283);
                v85 = *(this + 18);
              }

              v86 = v282;
              v87 = *(this + 8);
              *(this + 18) = v85 + 1;
              *(v87 + 4 * v85) = v86;
              --v82;
            }

            while (v82 > 1);
          }

LABEL_251:
          v66 = *(a2 + 1);
          v11 = *(a2 + 2);
          if (v66 >= v11)
          {
            goto LABEL_2;
          }

          v88 = *v66;
          if (v88 == 104)
          {
            goto LABEL_255;
          }

          if (v88 != 96)
          {
            goto LABEL_2;
          }

LABEL_233:
          v33 = (v66 + 1);
          *(a2 + 1) = v33;
        }

      case 0xDu:
        if ((TagFallback & 7) != 0)
        {
          if (v10 == 2)
          {
            result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadPackedPrimitiveNoInline<unsigned int,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)13>(a2, this + 10);
            if (!result)
            {
              return result;
            }

            goto LABEL_273;
          }

          goto LABEL_112;
        }

        v34 = *(a2 + 1);
        v11 = *(a2 + 2);
        while (1)
        {
          v282 = 0;
          if (v34 >= v11 || *v34 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v282))
            {
              return 0;
            }
          }

          else
          {
            v282 = *v34;
            *(a2 + 1) = v34 + 1;
          }

          v89 = *(this + 22);
          if (v89 == *(this + 23))
          {
            wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 20, v89 + 1);
            v89 = *(this + 22);
          }

          v90 = v282;
          v91 = *(this + 10);
          *(this + 22) = v89 + 1;
          *(v91 + 4 * v89) = v90;
          v92 = *(this + 23) - *(this + 22);
          if (v92 >= 1)
          {
            v93 = v92 + 1;
            do
            {
              v94 = *(a2 + 1);
              v95 = *(a2 + 2);
              if (v94 >= v95 || *v94 != 104)
              {
                break;
              }

              *(a2 + 1) = v94 + 1;
              if ((v94 + 1) >= v95 || v94[1] < 0)
              {
                if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v282))
                {
                  return 0;
                }
              }

              else
              {
                v282 = v94[1];
                *(a2 + 1) = v94 + 2;
              }

              v96 = *(this + 22);
              if (v96 >= *(this + 23))
              {
                wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v283);
                v96 = *(this + 22);
              }

              v97 = v282;
              v98 = *(this + 10);
              *(this + 22) = v96 + 1;
              *(v98 + 4 * v96) = v97;
              --v93;
            }

            while (v93 > 1);
          }

LABEL_273:
          v66 = *(a2 + 1);
          v11 = *(a2 + 2);
          if (v66 >= v11)
          {
            goto LABEL_2;
          }

          v99 = *v66;
          if (v99 == 112)
          {
            goto LABEL_277;
          }

          if (v99 != 104)
          {
            goto LABEL_2;
          }

LABEL_255:
          v34 = (v66 + 1);
          *(a2 + 1) = v34;
        }

      case 0xEu:
        if ((TagFallback & 7) != 0)
        {
          if (v10 == 2)
          {
            result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadPackedPrimitiveNoInline<unsigned int,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)13>(a2, this + 12);
            if (!result)
            {
              return result;
            }

            goto LABEL_295;
          }

          goto LABEL_112;
        }

        v41 = *(a2 + 1);
        v11 = *(a2 + 2);
        while (1)
        {
          v282 = 0;
          if (v41 >= v11 || *v41 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v282))
            {
              return 0;
            }
          }

          else
          {
            v282 = *v41;
            *(a2 + 1) = v41 + 1;
          }

          v100 = *(this + 26);
          if (v100 == *(this + 27))
          {
            wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 24, v100 + 1);
            v100 = *(this + 26);
          }

          v101 = v282;
          v102 = *(this + 12);
          *(this + 26) = v100 + 1;
          *(v102 + 4 * v100) = v101;
          v103 = *(this + 27) - *(this + 26);
          if (v103 >= 1)
          {
            v104 = v103 + 1;
            do
            {
              v105 = *(a2 + 1);
              v106 = *(a2 + 2);
              if (v105 >= v106 || *v105 != 112)
              {
                break;
              }

              *(a2 + 1) = v105 + 1;
              if ((v105 + 1) >= v106 || v105[1] < 0)
              {
                if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v282))
                {
                  return 0;
                }
              }

              else
              {
                v282 = v105[1];
                *(a2 + 1) = v105 + 2;
              }

              v107 = *(this + 26);
              if (v107 >= *(this + 27))
              {
                wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v283);
                v107 = *(this + 26);
              }

              v108 = v282;
              v109 = *(this + 12);
              *(this + 26) = v107 + 1;
              *(v109 + 4 * v107) = v108;
              --v104;
            }

            while (v104 > 1);
          }

LABEL_295:
          v66 = *(a2 + 1);
          v11 = *(a2 + 2);
          if (v66 >= v11)
          {
            goto LABEL_2;
          }

          v110 = *v66;
          if (v110 == 120)
          {
            goto LABEL_299;
          }

          if (v110 != 112)
          {
            goto LABEL_2;
          }

LABEL_277:
          v41 = (v66 + 1);
          *(a2 + 1) = v41;
        }

      case 0xFu:
        if ((TagFallback & 7) != 0)
        {
          if (v10 == 2)
          {
            result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadPackedPrimitiveNoInline<unsigned int,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)13>(a2, this + 14);
            if (!result)
            {
              return result;
            }

            goto LABEL_317;
          }

          goto LABEL_112;
        }

        v32 = *(a2 + 1);
        v11 = *(a2 + 2);
        while (1)
        {
          v282 = 0;
          if (v32 >= v11 || *v32 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v282))
            {
              return 0;
            }
          }

          else
          {
            v282 = *v32;
            *(a2 + 1) = v32 + 1;
          }

          v111 = *(this + 30);
          if (v111 == *(this + 31))
          {
            wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 28, v111 + 1);
            v111 = *(this + 30);
          }

          v112 = v282;
          v113 = *(this + 14);
          *(this + 30) = v111 + 1;
          *(v113 + 4 * v111) = v112;
          v114 = *(this + 31) - *(this + 30);
          if (v114 >= 1)
          {
            v115 = v114 + 1;
            do
            {
              v116 = *(a2 + 1);
              v117 = *(a2 + 2);
              if (v116 >= v117 || *v116 != 120)
              {
                break;
              }

              *(a2 + 1) = v116 + 1;
              if ((v116 + 1) >= v117 || v116[1] < 0)
              {
                if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v282))
                {
                  return 0;
                }
              }

              else
              {
                v282 = v116[1];
                *(a2 + 1) = v116 + 2;
              }

              v118 = *(this + 30);
              if (v118 >= *(this + 31))
              {
                wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v283);
                v118 = *(this + 30);
              }

              v119 = v282;
              v120 = *(this + 14);
              *(this + 30) = v118 + 1;
              *(v120 + 4 * v118) = v119;
              --v115;
            }

            while (v115 > 1);
          }

LABEL_317:
          v66 = *(a2 + 1);
          v11 = *(a2 + 2);
          if (v66 >= v11 || *v66 != 120)
          {
            break;
          }

LABEL_299:
          v32 = (v66 + 1);
          *(a2 + 1) = v32;
        }

        if (v11 - v66 >= 2 && *v66 == 128 && v66[1] == 1)
        {
          while (1)
          {
            v37 = (v66 + 2);
            *(a2 + 1) = v37;
LABEL_323:
            v282 = 0;
            if (v37 >= v11 || *v37 < 0)
            {
              if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v282))
              {
                return 0;
              }
            }

            else
            {
              v282 = *v37;
              *(a2 + 1) = v37 + 1;
            }

            v121 = *(this + 34);
            if (v121 == *(this + 35))
            {
              wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 32, v121 + 1);
              v121 = *(this + 34);
            }

            v122 = v282;
            v123 = *(this + 16);
            *(this + 34) = v121 + 1;
            *(v123 + 4 * v121) = v122;
            v124 = *(this + 35) - *(this + 34);
            if (v124 >= 1)
            {
              v125 = v124 + 1;
              do
              {
                v126 = *(a2 + 1);
                v127 = *(a2 + 2);
                if (v127 - v126 < 2 || *v126 != 128 || v126[1] != 1)
                {
                  break;
                }

                *(a2 + 1) = v126 + 2;
                if ((v126 + 2) >= v127 || v126[2] < 0)
                {
                  if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v282))
                  {
                    return 0;
                  }
                }

                else
                {
                  v282 = v126[2];
                  *(a2 + 1) = v126 + 3;
                }

                v128 = *(this + 34);
                if (v128 >= *(this + 35))
                {
                  wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                  wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                  wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v283);
                  v128 = *(this + 34);
                }

                v129 = v282;
                v130 = *(this + 16);
                *(this + 34) = v128 + 1;
                *(v130 + 4 * v128) = v129;
                --v125;
              }

              while (v125 > 1);
            }

LABEL_341:
            v66 = *(a2 + 1);
            v11 = *(a2 + 2);
            if (v11 - v66 < 2)
            {
              break;
            }

            v131 = *v66;
            if (v131 == 136)
            {
              if (v66[1] == 1)
              {
                while (1)
                {
                  v31 = (v66 + 2);
                  *(a2 + 1) = v31;
LABEL_348:
                  v282 = 0;
                  if (v31 >= v11 || *v31 < 0)
                  {
                    if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v282))
                    {
                      return 0;
                    }
                  }

                  else
                  {
                    v282 = *v31;
                    *(a2 + 1) = v31 + 1;
                  }

                  v132 = *(this + 38);
                  if (v132 == *(this + 39))
                  {
                    wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 36, v132 + 1);
                    v132 = *(this + 38);
                  }

                  v133 = v282;
                  v134 = *(this + 18);
                  *(this + 38) = v132 + 1;
                  *(v134 + 4 * v132) = v133;
                  v135 = *(this + 39) - *(this + 38);
                  if (v135 >= 1)
                  {
                    v136 = v135 + 1;
                    do
                    {
                      v137 = *(a2 + 1);
                      v138 = *(a2 + 2);
                      if (v138 - v137 < 2 || *v137 != 136 || v137[1] != 1)
                      {
                        break;
                      }

                      *(a2 + 1) = v137 + 2;
                      if ((v137 + 2) >= v138 || v137[2] < 0)
                      {
                        if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v282))
                        {
                          return 0;
                        }
                      }

                      else
                      {
                        v282 = v137[2];
                        *(a2 + 1) = v137 + 3;
                      }

                      v139 = *(this + 38);
                      if (v139 >= *(this + 39))
                      {
                        wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                        wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                        wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                        wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v283);
                        v139 = *(this + 38);
                      }

                      v140 = v282;
                      v141 = *(this + 18);
                      *(this + 38) = v139 + 1;
                      *(v141 + 4 * v139) = v140;
                      --v136;
                    }

                    while (v136 > 1);
                  }

LABEL_366:
                  v66 = *(a2 + 1);
                  v11 = *(a2 + 2);
                  if (v11 - v66 < 2)
                  {
                    break;
                  }

                  v142 = *v66;
                  if (v142 == 144)
                  {
                    if (v66[1] != 1)
                    {
                      goto LABEL_2;
                    }

                    goto LABEL_372;
                  }

                  if (v142 != 136 || v66[1] != 1)
                  {
                    goto LABEL_2;
                  }
                }
              }

              goto LABEL_2;
            }

            if (v131 != 128 || v66[1] != 1)
            {
              goto LABEL_2;
            }
          }
        }

        continue;
      case 0x10u:
        if ((TagFallback & 7) == 0)
        {
          v37 = *(a2 + 1);
          v11 = *(a2 + 2);
          goto LABEL_323;
        }

        if (v10 != 2)
        {
          goto LABEL_112;
        }

        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadPackedPrimitiveNoInline<unsigned int,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)13>(a2, this + 16);
        if (!result)
        {
          return result;
        }

        goto LABEL_341;
      case 0x11u:
        if ((TagFallback & 7) == 0)
        {
          v31 = *(a2 + 1);
          v11 = *(a2 + 2);
          goto LABEL_348;
        }

        if (v10 != 2)
        {
          goto LABEL_112;
        }

        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadPackedPrimitiveNoInline<unsigned int,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)13>(a2, this + 18);
        if (!result)
        {
          return result;
        }

        goto LABEL_366;
      case 0x12u:
        if ((TagFallback & 7) != 0)
        {
          if (v10 == 2)
          {
            result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadPackedPrimitiveNoInline<unsigned int,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)13>(a2, this + 20);
            if (!result)
            {
              return result;
            }

            goto LABEL_391;
          }

          goto LABEL_112;
        }

        v38 = *(a2 + 1);
        v11 = *(a2 + 2);
        while (1)
        {
          v282 = 0;
          if (v38 >= v11 || *v38 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v282))
            {
              return 0;
            }
          }

          else
          {
            v282 = *v38;
            *(a2 + 1) = v38 + 1;
          }

          v143 = *(this + 42);
          if (v143 == *(this + 43))
          {
            wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 40, v143 + 1);
            v143 = *(this + 42);
          }

          v144 = v282;
          v145 = *(this + 20);
          *(this + 42) = v143 + 1;
          *(v145 + 4 * v143) = v144;
          v146 = *(this + 43) - *(this + 42);
          if (v146 >= 1)
          {
            v147 = v146 + 1;
            do
            {
              v148 = *(a2 + 1);
              v149 = *(a2 + 2);
              if (v149 - v148 < 2 || *v148 != 144 || v148[1] != 1)
              {
                break;
              }

              *(a2 + 1) = v148 + 2;
              if ((v148 + 2) >= v149 || v148[2] < 0)
              {
                if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v282))
                {
                  return 0;
                }
              }

              else
              {
                v282 = v148[2];
                *(a2 + 1) = v148 + 3;
              }

              v150 = *(this + 42);
              if (v150 >= *(this + 43))
              {
                wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v283);
                v150 = *(this + 42);
              }

              v151 = v282;
              v152 = *(this + 20);
              *(this + 42) = v150 + 1;
              *(v152 + 4 * v150) = v151;
              --v147;
            }

            while (v147 > 1);
          }

LABEL_391:
          v66 = *(a2 + 1);
          v11 = *(a2 + 2);
          if (v11 - v66 < 2)
          {
            goto LABEL_2;
          }

          v153 = *v66;
          if (v153 == 152)
          {
            if (v66[1] != 1)
            {
              goto LABEL_2;
            }

            goto LABEL_397;
          }

          if (v153 != 144 || v66[1] != 1)
          {
            goto LABEL_2;
          }

LABEL_372:
          v38 = (v66 + 2);
          *(a2 + 1) = v38;
        }

      case 0x13u:
        if ((TagFallback & 7) != 0)
        {
          if (v10 == 2)
          {
            result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadPackedPrimitiveNoInline<unsigned int,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)13>(a2, this + 22);
            if (!result)
            {
              return result;
            }

            goto LABEL_416;
          }

          goto LABEL_112;
        }

        v42 = *(a2 + 1);
        v11 = *(a2 + 2);
        while (1)
        {
          v282 = 0;
          if (v42 >= v11 || *v42 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v282))
            {
              return 0;
            }
          }

          else
          {
            v282 = *v42;
            *(a2 + 1) = v42 + 1;
          }

          v154 = *(this + 46);
          if (v154 == *(this + 47))
          {
            wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 44, v154 + 1);
            v154 = *(this + 46);
          }

          v155 = v282;
          v156 = *(this + 22);
          *(this + 46) = v154 + 1;
          *(v156 + 4 * v154) = v155;
          v157 = *(this + 47) - *(this + 46);
          if (v157 >= 1)
          {
            v158 = v157 + 1;
            do
            {
              v159 = *(a2 + 1);
              v160 = *(a2 + 2);
              if (v160 - v159 < 2 || *v159 != 152 || v159[1] != 1)
              {
                break;
              }

              *(a2 + 1) = v159 + 2;
              if ((v159 + 2) >= v160 || v159[2] < 0)
              {
                if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v282))
                {
                  return 0;
                }
              }

              else
              {
                v282 = v159[2];
                *(a2 + 1) = v159 + 3;
              }

              v161 = *(this + 46);
              if (v161 >= *(this + 47))
              {
                wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v283);
                v161 = *(this + 46);
              }

              v162 = v282;
              v163 = *(this + 22);
              *(this + 46) = v161 + 1;
              *(v163 + 4 * v161) = v162;
              --v158;
            }

            while (v158 > 1);
          }

LABEL_416:
          v66 = *(a2 + 1);
          v11 = *(a2 + 2);
          if (v11 - v66 < 2)
          {
            goto LABEL_2;
          }

          v164 = *v66;
          if (v164 == 160)
          {
            if (v66[1] != 1)
            {
              goto LABEL_2;
            }

            goto LABEL_422;
          }

          if (v164 != 152 || v66[1] != 1)
          {
            goto LABEL_2;
          }

LABEL_397:
          v42 = (v66 + 2);
          *(a2 + 1) = v42;
        }

      case 0x14u:
        if ((TagFallback & 7) != 0)
        {
          if (v10 == 2)
          {
            result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadPackedPrimitiveNoInline<unsigned int,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)13>(a2, this + 24);
            if (!result)
            {
              return result;
            }

            goto LABEL_441;
          }

          goto LABEL_112;
        }

        v45 = *(a2 + 1);
        v11 = *(a2 + 2);
        while (1)
        {
          v282 = 0;
          if (v45 >= v11 || *v45 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v282))
            {
              return 0;
            }
          }

          else
          {
            v282 = *v45;
            *(a2 + 1) = v45 + 1;
          }

          v165 = *(this + 50);
          if (v165 == *(this + 51))
          {
            wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 48, v165 + 1);
            v165 = *(this + 50);
          }

          v166 = v282;
          v167 = *(this + 24);
          *(this + 50) = v165 + 1;
          *(v167 + 4 * v165) = v166;
          v168 = *(this + 51) - *(this + 50);
          if (v168 >= 1)
          {
            v169 = v168 + 1;
            do
            {
              v170 = *(a2 + 1);
              v171 = *(a2 + 2);
              if (v171 - v170 < 2 || *v170 != 160 || v170[1] != 1)
              {
                break;
              }

              *(a2 + 1) = v170 + 2;
              if ((v170 + 2) >= v171 || v170[2] < 0)
              {
                if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v282))
                {
                  return 0;
                }
              }

              else
              {
                v282 = v170[2];
                *(a2 + 1) = v170 + 3;
              }

              v172 = *(this + 50);
              if (v172 >= *(this + 51))
              {
                wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v283);
                v172 = *(this + 50);
              }

              v173 = v282;
              v174 = *(this + 24);
              *(this + 50) = v172 + 1;
              *(v174 + 4 * v172) = v173;
              --v169;
            }

            while (v169 > 1);
          }

LABEL_441:
          v66 = *(a2 + 1);
          v11 = *(a2 + 2);
          if (v11 - v66 < 2)
          {
            goto LABEL_2;
          }

          v175 = *v66;
          if (v175 == 168)
          {
            if (v66[1] != 1)
            {
              goto LABEL_2;
            }

            goto LABEL_447;
          }

          if (v175 != 160 || v66[1] != 1)
          {
            goto LABEL_2;
          }

LABEL_422:
          v45 = (v66 + 2);
          *(a2 + 1) = v45;
        }

      case 0x15u:
        if ((TagFallback & 7) != 0)
        {
          if (v10 == 2)
          {
            result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadPackedPrimitiveNoInline<unsigned int,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)13>(a2, this + 26);
            if (!result)
            {
              return result;
            }

            goto LABEL_466;
          }

          goto LABEL_112;
        }

        v39 = *(a2 + 1);
        v11 = *(a2 + 2);
        while (1)
        {
          v282 = 0;
          if (v39 >= v11 || *v39 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v282))
            {
              return 0;
            }
          }

          else
          {
            v282 = *v39;
            *(a2 + 1) = v39 + 1;
          }

          v176 = *(this + 54);
          if (v176 == *(this + 55))
          {
            wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 52, v176 + 1);
            v176 = *(this + 54);
          }

          v177 = v282;
          v178 = *(this + 26);
          *(this + 54) = v176 + 1;
          *(v178 + 4 * v176) = v177;
          v179 = *(this + 55) - *(this + 54);
          if (v179 >= 1)
          {
            v180 = v179 + 1;
            do
            {
              v181 = *(a2 + 1);
              v182 = *(a2 + 2);
              if (v182 - v181 < 2 || *v181 != 168 || v181[1] != 1)
              {
                break;
              }

              *(a2 + 1) = v181 + 2;
              if ((v181 + 2) >= v182 || v181[2] < 0)
              {
                if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v282))
                {
                  return 0;
                }
              }

              else
              {
                v282 = v181[2];
                *(a2 + 1) = v181 + 3;
              }

              v183 = *(this + 54);
              if (v183 >= *(this + 55))
              {
                wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v283);
                v183 = *(this + 54);
              }

              v184 = v282;
              v185 = *(this + 26);
              *(this + 54) = v183 + 1;
              *(v185 + 4 * v183) = v184;
              --v180;
            }

            while (v180 > 1);
          }

LABEL_466:
          v66 = *(a2 + 1);
          v11 = *(a2 + 2);
          if (v11 - v66 < 2)
          {
            goto LABEL_2;
          }

          v186 = *v66;
          if (v186 == 176)
          {
            if (v66[1] != 1)
            {
              goto LABEL_2;
            }

            goto LABEL_472;
          }

          if (v186 != 168 || v66[1] != 1)
          {
            goto LABEL_2;
          }

LABEL_447:
          v39 = (v66 + 2);
          *(a2 + 1) = v39;
        }

      case 0x16u:
        if ((TagFallback & 7) != 0)
        {
          if (v10 == 2)
          {
            result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadPackedPrimitiveNoInline<unsigned int,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)13>(a2, this + 42);
            if (!result)
            {
              return result;
            }

            goto LABEL_491;
          }

          goto LABEL_112;
        }

        v40 = *(a2 + 1);
        v11 = *(a2 + 2);
        while (1)
        {
          v282 = 0;
          if (v40 >= v11 || *v40 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v282))
            {
              return 0;
            }
          }

          else
          {
            v282 = *v40;
            *(a2 + 1) = v40 + 1;
          }

          v187 = *(this + 86);
          if (v187 == *(this + 87))
          {
            wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 84, v187 + 1);
            v187 = *(this + 86);
          }

          v188 = v282;
          v189 = *(this + 42);
          *(this + 86) = v187 + 1;
          *(v189 + 4 * v187) = v188;
          v190 = *(this + 87) - *(this + 86);
          if (v190 >= 1)
          {
            v191 = v190 + 1;
            do
            {
              v192 = *(a2 + 1);
              v193 = *(a2 + 2);
              if (v193 - v192 < 2 || *v192 != 176 || v192[1] != 1)
              {
                break;
              }

              *(a2 + 1) = v192 + 2;
              if ((v192 + 2) >= v193 || v192[2] < 0)
              {
                if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v282))
                {
                  return 0;
                }
              }

              else
              {
                v282 = v192[2];
                *(a2 + 1) = v192 + 3;
              }

              v194 = *(this + 86);
              if (v194 >= *(this + 87))
              {
                wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v283);
                v194 = *(this + 86);
              }

              v195 = v282;
              v196 = *(this + 42);
              *(this + 86) = v194 + 1;
              *(v196 + 4 * v194) = v195;
              --v191;
            }

            while (v191 > 1);
          }

LABEL_491:
          v66 = *(a2 + 1);
          v11 = *(a2 + 2);
          if (v11 - v66 < 2)
          {
            goto LABEL_2;
          }

          v197 = *v66;
          if (v197 == 184)
          {
            if (v66[1] != 1)
            {
              goto LABEL_2;
            }

            v28 = (v66 + 2);
            *(a2 + 1) = v28;
LABEL_498:
            if (v28 >= v11 || (v198 = *v28, (v198 & 0x80000000) != 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v5);
              if (!result)
              {
                return result;
              }

              v199 = *(a2 + 1);
              v11 = *(a2 + 2);
            }

            else
            {
              *v5 = v198;
              v199 = (v28 + 1);
              *(a2 + 1) = v199;
            }

            v29 = *(this + 94) | 0x20000000;
            *(this + 94) = v29;
            if (v11 - v199 < 2 || *v199 != 194 || v199[1] != 1)
            {
              goto LABEL_2;
            }

            *(a2 + 1) = v199 + 2;
LABEL_507:
            *(this + 94) = v29 | 0x40000000;
            if (*(this + 44) == MEMORY[0x29EDC9758])
            {
              operator new();
            }

            result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
            if (!result)
            {
              return result;
            }

            v200 = *(a2 + 1);
            v22 = *(a2 + 2);
            if (v22 - v200 < 2 || *v200 != 200 || v200[1] != 1)
            {
              goto LABEL_2;
            }

            goto LABEL_513;
          }

          if (v197 != 176 || v66[1] != 1)
          {
            goto LABEL_2;
          }

LABEL_472:
          v40 = (v66 + 2);
          *(a2 + 1) = v40;
        }

      case 0x17u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_112;
        }

        v28 = *(a2 + 1);
        v11 = *(a2 + 2);
        goto LABEL_498;
      case 0x18u:
        if (v10 != 2)
        {
          goto LABEL_112;
        }

        v29 = *(this + 94);
        goto LABEL_507;
      case 0x19u:
        if ((TagFallback & 7) != 0)
        {
          if (v10 == 2)
          {
            result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadPackedPrimitiveNoInline<unsigned int,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)13>(a2, this + 28);
            if (!result)
            {
              return result;
            }

            goto LABEL_532;
          }

          goto LABEL_112;
        }

        v36 = *(a2 + 1);
        v22 = *(a2 + 2);
        while (1)
        {
          v282 = 0;
          if (v36 >= v22 || *v36 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v282))
            {
              return 0;
            }
          }

          else
          {
            v282 = *v36;
            *(a2 + 1) = v36 + 1;
          }

          v201 = *(this + 58);
          if (v201 == *(this + 59))
          {
            wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 56, v201 + 1);
            v201 = *(this + 58);
          }

          v202 = v282;
          v203 = *(this + 28);
          *(this + 58) = v201 + 1;
          *(v203 + 4 * v201) = v202;
          v204 = *(this + 59) - *(this + 58);
          if (v204 >= 1)
          {
            v205 = v204 + 1;
            do
            {
              v206 = *(a2 + 1);
              v207 = *(a2 + 2);
              if (v207 - v206 < 2 || *v206 != 200 || v206[1] != 1)
              {
                break;
              }

              *(a2 + 1) = v206 + 2;
              if ((v206 + 2) >= v207 || v206[2] < 0)
              {
                if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v282))
                {
                  return 0;
                }
              }

              else
              {
                v282 = v206[2];
                *(a2 + 1) = v206 + 3;
              }

              v208 = *(this + 58);
              if (v208 >= *(this + 59))
              {
                wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v283);
                v208 = *(this + 58);
              }

              v209 = v282;
              v210 = *(this + 28);
              *(this + 58) = v208 + 1;
              *(v210 + 4 * v208) = v209;
              --v205;
            }

            while (v205 > 1);
          }

LABEL_532:
          v200 = *(a2 + 1);
          v22 = *(a2 + 2);
          if (v22 - v200 < 2)
          {
            goto LABEL_2;
          }

          v211 = *v200;
          if (v211 == 208)
          {
            if (v200[1] != 1)
            {
              goto LABEL_2;
            }

            goto LABEL_538;
          }

          if (v211 != 200 || v200[1] != 1)
          {
            goto LABEL_2;
          }

LABEL_513:
          v36 = (v200 + 2);
          *(a2 + 1) = v36;
        }

      case 0x1Au:
        if ((TagFallback & 7) != 0)
        {
          if (v10 == 2)
          {
            result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadPackedPrimitiveNoInline<unsigned int,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)13>(a2, this + 30);
            if (!result)
            {
              return result;
            }

            goto LABEL_557;
          }

          goto LABEL_112;
        }

        v35 = *(a2 + 1);
        v22 = *(a2 + 2);
        while (1)
        {
          v282 = 0;
          if (v35 >= v22 || *v35 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v282))
            {
              return 0;
            }
          }

          else
          {
            v282 = *v35;
            *(a2 + 1) = v35 + 1;
          }

          v212 = *(this + 62);
          if (v212 == *(this + 63))
          {
            wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 60, v212 + 1);
            v212 = *(this + 62);
          }

          v213 = v282;
          v214 = *(this + 30);
          *(this + 62) = v212 + 1;
          *(v214 + 4 * v212) = v213;
          v215 = *(this + 63) - *(this + 62);
          if (v215 >= 1)
          {
            v216 = v215 + 1;
            do
            {
              v217 = *(a2 + 1);
              v218 = *(a2 + 2);
              if (v218 - v217 < 2 || *v217 != 208 || v217[1] != 1)
              {
                break;
              }

              *(a2 + 1) = v217 + 2;
              if ((v217 + 2) >= v218 || v217[2] < 0)
              {
                if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v282))
                {
                  return 0;
                }
              }

              else
              {
                v282 = v217[2];
                *(a2 + 1) = v217 + 3;
              }

              v219 = *(this + 62);
              if (v219 >= *(this + 63))
              {
                wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v283);
                v219 = *(this + 62);
              }

              v220 = v282;
              v221 = *(this + 30);
              *(this + 62) = v219 + 1;
              *(v221 + 4 * v219) = v220;
              --v216;
            }

            while (v216 > 1);
          }

LABEL_557:
          v200 = *(a2 + 1);
          v22 = *(a2 + 2);
          if (v22 - v200 < 2)
          {
            goto LABEL_2;
          }

          v222 = *v200;
          if (v222 == 216)
          {
            if (v200[1] != 1)
            {
              goto LABEL_2;
            }

            goto LABEL_563;
          }

          if (v222 != 208 || v200[1] != 1)
          {
            goto LABEL_2;
          }

LABEL_538:
          v35 = (v200 + 2);
          *(a2 + 1) = v35;
        }

      case 0x1Bu:
        if ((TagFallback & 7) == 0)
        {
          v48 = *(a2 + 1);
          v22 = *(a2 + 2);
          while (1)
          {
            v282 = 0;
            if (v48 >= v22 || *v48 < 0)
            {
              if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v282))
              {
                return 0;
              }
            }

            else
            {
              v282 = *v48;
              *(a2 + 1) = v48 + 1;
            }

            v223 = *(this + 66);
            if (v223 == *(this + 67))
            {
              wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 64, v223 + 1);
              v223 = *(this + 66);
            }

            v224 = v282;
            v225 = *(this + 32);
            *(this + 66) = v223 + 1;
            *(v225 + 4 * v223) = v224;
            v226 = *(this + 67) - *(this + 66);
            if (v226 >= 1)
            {
              v227 = v226 + 1;
              do
              {
                v228 = *(a2 + 1);
                v229 = *(a2 + 2);
                if (v229 - v228 < 2 || *v228 != 216 || v228[1] != 1)
                {
                  break;
                }

                *(a2 + 1) = v228 + 2;
                if ((v228 + 2) >= v229 || v228[2] < 0)
                {
                  if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v282))
                  {
                    return 0;
                  }
                }

                else
                {
                  v282 = v228[2];
                  *(a2 + 1) = v228 + 3;
                }

                v230 = *(this + 66);
                if (v230 >= *(this + 67))
                {
                  wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                  wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                  wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v283);
                  v230 = *(this + 66);
                }

                v231 = v282;
                v232 = *(this + 32);
                *(this + 66) = v230 + 1;
                *(v232 + 4 * v230) = v231;
                --v227;
              }

              while (v227 > 1);
            }

LABEL_582:
            v200 = *(a2 + 1);
            v22 = *(a2 + 2);
            if (v22 - v200 < 2)
            {
              goto LABEL_2;
            }

            v233 = *v200;
            if (v233 == 224)
            {
              if (v200[1] == 1)
              {
                while (1)
                {
                  v30 = (v200 + 2);
                  *(a2 + 1) = v30;
LABEL_589:
                  v282 = 0;
                  if (v30 >= v22 || *v30 < 0)
                  {
                    if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v282))
                    {
                      return 0;
                    }
                  }

                  else
                  {
                    v282 = *v30;
                    *(a2 + 1) = v30 + 1;
                  }

                  v234 = *(this + 70);
                  if (v234 == *(this + 71))
                  {
                    wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 68, v234 + 1);
                    v234 = *(this + 70);
                  }

                  v235 = v282;
                  v236 = *(this + 34);
                  *(this + 70) = v234 + 1;
                  *(v236 + 4 * v234) = v235;
                  v237 = *(this + 71) - *(this + 70);
                  if (v237 >= 1)
                  {
                    v238 = v237 + 1;
                    do
                    {
                      v239 = *(a2 + 1);
                      v240 = *(a2 + 2);
                      if (v240 - v239 < 2 || *v239 != 224 || v239[1] != 1)
                      {
                        break;
                      }

                      *(a2 + 1) = v239 + 2;
                      if ((v239 + 2) >= v240 || v239[2] < 0)
                      {
                        if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v282))
                        {
                          return 0;
                        }
                      }

                      else
                      {
                        v282 = v239[2];
                        *(a2 + 1) = v239 + 3;
                      }

                      v241 = *(this + 70);
                      if (v241 >= *(this + 71))
                      {
                        wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                        wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                        wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                        wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v283);
                        v241 = *(this + 70);
                      }

                      v242 = v282;
                      v243 = *(this + 34);
                      *(this + 70) = v241 + 1;
                      *(v243 + 4 * v241) = v242;
                      --v238;
                    }

                    while (v238 > 1);
                  }

LABEL_607:
                  v200 = *(a2 + 1);
                  v22 = *(a2 + 2);
                  if (v22 - v200 < 2)
                  {
                    break;
                  }

                  v244 = *v200;
                  if (v244 == 232)
                  {
                    if (v200[1] != 1)
                    {
                      goto LABEL_2;
                    }

                    goto LABEL_613;
                  }

                  if (v244 != 224 || v200[1] != 1)
                  {
                    goto LABEL_2;
                  }
                }
              }

              goto LABEL_2;
            }

            if (v233 != 216 || v200[1] != 1)
            {
              goto LABEL_2;
            }

LABEL_563:
            v48 = (v200 + 2);
            *(a2 + 1) = v48;
          }
        }

        if (v10 == 2)
        {
          result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadPackedPrimitiveNoInline<unsigned int,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)13>(a2, this + 32);
          if (!result)
          {
            return result;
          }

          goto LABEL_582;
        }

LABEL_112:
        if (v10 != 4)
        {
          if ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(a2, TagFallback) & 1) == 0)
          {
            return 0;
          }

          continue;
        }

        return 1;
      case 0x1Cu:
        if ((TagFallback & 7) == 0)
        {
          v30 = *(a2 + 1);
          v22 = *(a2 + 2);
          goto LABEL_589;
        }

        if (v10 != 2)
        {
          goto LABEL_112;
        }

        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadPackedPrimitiveNoInline<unsigned int,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)13>(a2, this + 34);
        if (!result)
        {
          return result;
        }

        goto LABEL_607;
      case 0x1Du:
        if ((TagFallback & 7) != 0)
        {
          if (v10 == 2)
          {
            result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadPackedPrimitiveNoInline<unsigned int,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)13>(a2, this + 36);
            if (!result)
            {
              return result;
            }

            goto LABEL_632;
          }

          goto LABEL_112;
        }

        v46 = *(a2 + 1);
        v22 = *(a2 + 2);
        while (1)
        {
          v282 = 0;
          if (v46 >= v22 || *v46 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v282))
            {
              return 0;
            }
          }

          else
          {
            v282 = *v46;
            *(a2 + 1) = v46 + 1;
          }

          v245 = *(this + 74);
          if (v245 == *(this + 75))
          {
            wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 72, v245 + 1);
            v245 = *(this + 74);
          }

          v246 = v282;
          v247 = *(this + 36);
          *(this + 74) = v245 + 1;
          *(v247 + 4 * v245) = v246;
          v248 = *(this + 75) - *(this + 74);
          if (v248 >= 1)
          {
            v249 = v248 + 1;
            do
            {
              v250 = *(a2 + 1);
              v251 = *(a2 + 2);
              if (v251 - v250 < 2 || *v250 != 232 || v250[1] != 1)
              {
                break;
              }

              *(a2 + 1) = v250 + 2;
              if ((v250 + 2) >= v251 || v250[2] < 0)
              {
                if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v282))
                {
                  return 0;
                }
              }

              else
              {
                v282 = v250[2];
                *(a2 + 1) = v250 + 3;
              }

              v252 = *(this + 74);
              if (v252 >= *(this + 75))
              {
                wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v283);
                v252 = *(this + 74);
              }

              v253 = v282;
              v254 = *(this + 36);
              *(this + 74) = v252 + 1;
              *(v254 + 4 * v252) = v253;
              --v249;
            }

            while (v249 > 1);
          }

LABEL_632:
          v200 = *(a2 + 1);
          v22 = *(a2 + 2);
          if (v22 - v200 < 2)
          {
            goto LABEL_2;
          }

          v255 = *v200;
          if (v255 == 240)
          {
            if (v200[1] != 1)
            {
              goto LABEL_2;
            }

            goto LABEL_638;
          }

          if (v255 != 232 || v200[1] != 1)
          {
            goto LABEL_2;
          }

LABEL_613:
          v46 = (v200 + 2);
          *(a2 + 1) = v46;
        }

      case 0x1Eu:
        if ((TagFallback & 7) != 0)
        {
          if (v10 == 2)
          {
            result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadPackedPrimitiveNoInline<unsigned int,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)13>(a2, this + 38);
            if (!result)
            {
              return result;
            }

            goto LABEL_657;
          }

          goto LABEL_112;
        }

        v47 = *(a2 + 1);
        v22 = *(a2 + 2);
        while (1)
        {
          v282 = 0;
          if (v47 >= v22 || *v47 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v282))
            {
              return 0;
            }
          }

          else
          {
            v282 = *v47;
            *(a2 + 1) = v47 + 1;
          }

          v256 = *(this + 78);
          if (v256 == *(this + 79))
          {
            wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 76, v256 + 1);
            v256 = *(this + 78);
          }

          v257 = v282;
          v258 = *(this + 38);
          *(this + 78) = v256 + 1;
          *(v258 + 4 * v256) = v257;
          v259 = *(this + 79) - *(this + 78);
          if (v259 >= 1)
          {
            v260 = v259 + 1;
            do
            {
              v261 = *(a2 + 1);
              v262 = *(a2 + 2);
              if (v262 - v261 < 2 || *v261 != 240 || v261[1] != 1)
              {
                break;
              }

              *(a2 + 1) = v261 + 2;
              if ((v261 + 2) >= v262 || v261[2] < 0)
              {
                if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v282))
                {
                  return 0;
                }
              }

              else
              {
                v282 = v261[2];
                *(a2 + 1) = v261 + 3;
              }

              v263 = *(this + 78);
              if (v263 >= *(this + 79))
              {
                wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v283);
                v263 = *(this + 78);
              }

              v264 = v282;
              v265 = *(this + 38);
              *(this + 78) = v263 + 1;
              *(v265 + 4 * v263) = v264;
              --v260;
            }

            while (v260 > 1);
          }

LABEL_657:
          v200 = *(a2 + 1);
          v22 = *(a2 + 2);
          if (v22 - v200 < 2)
          {
            goto LABEL_2;
          }

          v266 = *v200;
          if (v266 == 248)
          {
            if (v200[1] != 1)
            {
              goto LABEL_2;
            }

            goto LABEL_663;
          }

          if (v266 != 240 || v200[1] != 1)
          {
            goto LABEL_2;
          }

LABEL_638:
          v47 = (v200 + 2);
          *(a2 + 1) = v47;
        }

      case 0x1Fu:
        if ((TagFallback & 7) != 0)
        {
          if (v10 == 2)
          {
            result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadPackedPrimitiveNoInline<unsigned int,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)13>(a2, this + 40);
            if (!result)
            {
              return result;
            }

            goto LABEL_682;
          }

          goto LABEL_112;
        }

        v44 = *(a2 + 1);
        v22 = *(a2 + 2);
        while (1)
        {
          v282 = 0;
          if (v44 >= v22 || *v44 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v282))
            {
              return 0;
            }
          }

          else
          {
            v282 = *v44;
            *(a2 + 1) = v44 + 1;
          }

          v267 = *(this + 82);
          if (v267 == *(this + 83))
          {
            wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 80, v267 + 1);
            v267 = *(this + 82);
          }

          v268 = v282;
          v269 = *(this + 40);
          *(this + 82) = v267 + 1;
          *(v269 + 4 * v267) = v268;
          v270 = *(this + 83) - *(this + 82);
          if (v270 >= 1)
          {
            v271 = v270 + 1;
            do
            {
              v272 = *(a2 + 1);
              v273 = *(a2 + 2);
              if (v273 - v272 < 2 || *v272 != 248 || v272[1] != 1)
              {
                break;
              }

              *(a2 + 1) = v272 + 2;
              if ((v272 + 2) >= v273 || v272[2] < 0)
              {
                if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v282))
                {
                  return 0;
                }
              }

              else
              {
                v282 = v272[2];
                *(a2 + 1) = v272 + 3;
              }

              v274 = *(this + 82);
              if (v274 >= *(this + 83))
              {
                wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v283);
                v274 = *(this + 82);
              }

              v275 = v282;
              v276 = *(this + 40);
              *(this + 82) = v274 + 1;
              *(v276 + 4 * v274) = v275;
              --v271;
            }

            while (v271 > 1);
          }

LABEL_682:
          v200 = *(a2 + 1);
          v22 = *(a2 + 2);
          if (v22 - v200 < 2)
          {
            goto LABEL_2;
          }

          v277 = *v200;
          if (v277 == 128)
          {
            if (v200[1] == 2)
            {
              v23 = (v200 + 2);
              *(a2 + 1) = v23;
LABEL_689:
              if (v23 >= v22 || (v278 = *v23, (v278 & 0x80000000) != 0))
              {
                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v6);
                if (!result)
                {
                  return result;
                }

                v279 = *(a2 + 1);
                v22 = *(a2 + 2);
              }

              else
              {
                *v6 = v278;
                v279 = (v23 + 1);
                *(a2 + 1) = v279;
              }

              *(this + 94) |= 0x80000000;
              if (v22 - v279 >= 2 && *v279 == 136 && v279[1] == 2)
              {
                v27 = (v279 + 2);
                *(a2 + 1) = v27;
LABEL_698:
                if (v27 >= v22 || (v280 = *v27, (v280 & 0x80000000) != 0))
                {
                  result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v7);
                  if (!result)
                  {
                    return result;
                  }

                  v281 = *(a2 + 1);
                  v22 = *(a2 + 2);
                }

                else
                {
                  *v7 = v280;
                  v281 = v27 + 1;
                  *(a2 + 1) = v281;
                }

                *(this + 95) |= 1u;
                if (v281 == v22 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
                {
                  *(a2 + 8) = 0;
                  result = 1;
                  *(a2 + 36) = 1;
                  return result;
                }
              }
            }

            goto LABEL_2;
          }

          if (v277 != 248 || v200[1] != 1)
          {
            goto LABEL_2;
          }

LABEL_663:
          v44 = (v200 + 2);
          *(a2 + 1) = v44;
        }

      case 0x20u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_112;
        }

        v23 = *(a2 + 1);
        v22 = *(a2 + 2);
        goto LABEL_689;
      case 0x21u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_112;
        }

        v27 = *(a2 + 1);
        v22 = *(a2 + 2);
        goto LABEL_698;
      default:
        goto LABEL_112;
    }
  }
}

void sub_2963ED998(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadPackedPrimitiveNoInline<unsigned int,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)13>(wireless_diagnostics::google::protobuf::io::CodedInputStream *this, uint64_t *a2)
{
  v11 = 0;
  v4 = *(this + 1);
  if (v4 >= *(this + 2) || *v4 < 0)
  {
    result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v11);
    if (!result)
    {
      return result;
    }
  }

  else
  {
    v11 = *v4;
    *(this + 1) = v4 + 1;
  }

  wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this);
  if (wireless_diagnostics::google::protobuf::io::CodedInputStream::BytesUntilLimit(this) >= 1)
  {
    do
    {
      v10 = 0;
      v6 = *(this + 1);
      if (v6 >= *(this + 2) || *v6 < 0)
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v10);
        if (!result)
        {
          return result;
        }
      }

      else
      {
        v10 = *v6;
        *(this + 1) = v6 + 1;
      }

      v7 = *(a2 + 2);
      if (v7 == *(a2 + 3))
      {
        wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(a2, v7 + 1);
        v7 = *(a2 + 2);
      }

      v8 = v10;
      v9 = *a2;
      *(a2 + 2) = v7 + 1;
      *(v9 + 4 * v7) = v8;
    }

    while (wireless_diagnostics::google::protobuf::io::CodedInputStream::BytesUntilLimit(this) > 0);
  }

  wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this);
  return 1;
}

uint64_t awd::metrics::FaceTimeCallAggregatedReport_SegmentStats::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 376);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(1, *(this + 8), a2, a4);
    v6 = *(v5 + 376);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_79;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(2, *(v5 + 12), a2, a4);
  v6 = *(v5 + 376);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_80;
  }

LABEL_79:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(3, *(v5 + 16), a2, a4);
  v6 = *(v5 + 376);
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_81;
  }

LABEL_80:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(4, *(v5 + 20), a2, a4);
  v6 = *(v5 + 376);
  if ((v6 & 0x10) == 0)
  {
LABEL_6:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_82;
  }

LABEL_81:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(5, *(v5 + 24), a2, a4);
  v6 = *(v5 + 376);
  if ((v6 & 0x20) == 0)
  {
LABEL_7:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_83;
  }

LABEL_82:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(6, *(v5 + 28), a2, a4);
  v6 = *(v5 + 376);
  if ((v6 & 0x40) == 0)
  {
LABEL_8:
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_84;
  }

LABEL_83:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(7, *(v5 + 32), a2, a4);
  v6 = *(v5 + 376);
  if ((v6 & 0x80) == 0)
  {
LABEL_9:
    if ((v6 & 0x100) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_85;
  }

LABEL_84:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(8, *(v5 + 36), a2, a4);
  v6 = *(v5 + 376);
  if ((v6 & 0x100) == 0)
  {
LABEL_10:
    if ((v6 & 0x200) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

LABEL_85:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(9, *(v5 + 40), a2, a4);
  if ((*(v5 + 376) & 0x200) != 0)
  {
LABEL_11:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xA, *(v5 + 44), a2, a4);
  }

LABEL_12:
  if (*(v5 + 56) >= 1)
  {
    v7 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xB, *(*(v5 + 48) + 4 * v7++), a2, a4);
    }

    while (v7 < *(v5 + 56));
  }

  if (*(v5 + 72) >= 1)
  {
    v8 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xC, *(*(v5 + 64) + 4 * v8++), a2, a4);
    }

    while (v8 < *(v5 + 72));
  }

  if (*(v5 + 88) >= 1)
  {
    v9 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xD, *(*(v5 + 80) + 4 * v9++), a2, a4);
    }

    while (v9 < *(v5 + 88));
  }

  if (*(v5 + 104) >= 1)
  {
    v10 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xE, *(*(v5 + 96) + 4 * v10++), a2, a4);
    }

    while (v10 < *(v5 + 104));
  }

  if (*(v5 + 120) >= 1)
  {
    v11 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xF, *(*(v5 + 112) + 4 * v11++), a2, a4);
    }

    while (v11 < *(v5 + 120));
  }

  if (*(v5 + 136) >= 1)
  {
    v12 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x10, *(*(v5 + 128) + 4 * v12++), a2, a4);
    }

    while (v12 < *(v5 + 136));
  }

  if (*(v5 + 152) >= 1)
  {
    v13 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x11, *(*(v5 + 144) + 4 * v13++), a2, a4);
    }

    while (v13 < *(v5 + 152));
  }

  if (*(v5 + 168) >= 1)
  {
    v14 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x12, *(*(v5 + 160) + 4 * v14++), a2, a4);
    }

    while (v14 < *(v5 + 168));
  }

  if (*(v5 + 184) >= 1)
  {
    v15 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x13, *(*(v5 + 176) + 4 * v15++), a2, a4);
    }

    while (v15 < *(v5 + 184));
  }

  if (*(v5 + 200) >= 1)
  {
    v16 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x14, *(*(v5 + 192) + 4 * v16++), a2, a4);
    }

    while (v16 < *(v5 + 200));
  }

  if (*(v5 + 216) >= 1)
  {
    v17 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x15, *(*(v5 + 208) + 4 * v17++), a2, a4);
    }

    while (v17 < *(v5 + 216));
  }

  if (*(v5 + 344) >= 1)
  {
    v18 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x16, *(*(v5 + 336) + 4 * v18++), a2, a4);
    }

    while (v18 < *(v5 + 344));
  }

  v19 = *(v5 + 376);
  if ((v19 & 0x20000000) != 0)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x17, *(v5 + 360), a2, a4);
    v19 = *(v5 + 376);
  }

  if ((v19 & 0x40000000) != 0)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
  }

  if (*(v5 + 232) >= 1)
  {
    v20 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x19, *(*(v5 + 224) + 4 * v20++), a2, a4);
    }

    while (v20 < *(v5 + 232));
  }

  if (*(v5 + 248) >= 1)
  {
    v21 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x1A, *(*(v5 + 240) + 4 * v21++), a2, a4);
    }

    while (v21 < *(v5 + 248));
  }

  if (*(v5 + 264) >= 1)
  {
    v22 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x1B, *(*(v5 + 256) + 4 * v22++), a2, a4);
    }

    while (v22 < *(v5 + 264));
  }

  if (*(v5 + 280) >= 1)
  {
    v23 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x1C, *(*(v5 + 272) + 4 * v23++), a2, a4);
    }

    while (v23 < *(v5 + 280));
  }

  if (*(v5 + 296) >= 1)
  {
    v24 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x1D, *(*(v5 + 288) + 4 * v24++), a2, a4);
    }

    while (v24 < *(v5 + 296));
  }

  if (*(v5 + 312) >= 1)
  {
    v25 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x1E, *(*(v5 + 304) + 4 * v25++), a2, a4);
    }

    while (v25 < *(v5 + 312));
  }

  if (*(v5 + 328) >= 1)
  {
    v26 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x1F, *(*(v5 + 320) + 4 * v26++), a2, a4);
    }

    while (v26 < *(v5 + 328));
  }

  if ((*(v5 + 376) & 0x80000000) != 0)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x20, *(v5 + 364), a2, a4);
  }

  if (*(v5 + 380))
  {
    v27 = *(v5 + 368);

    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x21, v27, a2, a4);
  }

  return this;
}

uint64_t awd::metrics::FaceTimeCallAggregatedReport_SegmentStats::ByteSize(awd::metrics::FaceTimeCallAggregatedReport_SegmentStats *this, unsigned int a2)
{
  v3 = *(this + 94);
  if (!v3)
  {
    v4 = 0;
    goto LABEL_45;
  }

  if (v3)
  {
    v5 = *(this + 2);
    if (v5 >= 0x80)
    {
      v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5) + 1;
      v3 = *(this + 94);
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
    if ((v3 & 2) == 0)
    {
      goto LABEL_14;
    }
  }

  v6 = *(this + 3);
  if (v6 >= 0x80)
  {
    v7 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v6) + 1;
    v3 = *(this + 94);
  }

  else
  {
    v7 = 2;
  }

  v4 += v7;
LABEL_14:
  if ((v3 & 4) != 0)
  {
    v8 = *(this + 4);
    if (v8 >= 0x80)
    {
      v9 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v8) + 1;
      v3 = *(this + 94);
    }

    else
    {
      v9 = 2;
    }

    v4 += v9;
    if ((v3 & 8) == 0)
    {
LABEL_16:
      if ((v3 & 0x10) == 0)
      {
        goto LABEL_17;
      }

      goto LABEL_29;
    }
  }

  else if ((v3 & 8) == 0)
  {
    goto LABEL_16;
  }

  v10 = *(this + 5);
  if (v10 >= 0x80)
  {
    v11 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v10) + 1;
    v3 = *(this + 94);
  }

  else
  {
    v11 = 2;
  }

  v4 += v11;
  if ((v3 & 0x10) == 0)
  {
LABEL_17:
    if ((v3 & 0x20) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_33;
  }

LABEL_29:
  v12 = *(this + 6);
  if (v12 >= 0x80)
  {
    v13 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v12) + 1;
    v3 = *(this + 94);
  }

  else
  {
    v13 = 2;
  }

  v4 += v13;
  if ((v3 & 0x20) == 0)
  {
LABEL_18:
    if ((v3 & 0x40) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_37;
  }

LABEL_33:
  v14 = *(this + 7);
  if (v14 >= 0x80)
  {
    v15 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v14) + 1;
    v3 = *(this + 94);
  }

  else
  {
    v15 = 2;
  }

  v4 += v15;
  if ((v3 & 0x40) == 0)
  {
LABEL_19:
    if ((v3 & 0x80) == 0)
    {
      goto LABEL_45;
    }

    goto LABEL_41;
  }

LABEL_37:
  v16 = *(this + 8);
  if (v16 >= 0x80)
  {
    v17 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v16) + 1;
    v3 = *(this + 94);
  }

  else
  {
    v17 = 2;
  }

  v4 += v17;
  if ((v3 & 0x80) != 0)
  {
LABEL_41:
    v18 = *(this + 9);
    if (v18 >= 0x80)
    {
      v19 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v18) + 1;
      v3 = *(this + 94);
    }

    else
    {
      v19 = 2;
    }

    v4 += v19;
  }

LABEL_45:
  if ((v3 & 0xFF00) != 0)
  {
    if ((v3 & 0x100) != 0)
    {
      v20 = *(this + 10);
      if (v20 >= 0x80)
      {
        v21 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v20) + 1;
        v3 = *(this + 94);
      }

      else
      {
        v21 = 2;
      }

      v4 += v21;
    }

    if ((v3 & 0x200) != 0)
    {
      v22 = *(this + 11);
      if (v22 >= 0x80)
      {
        v23 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v22) + 1;
        v3 = *(this + 94);
      }

      else
      {
        v23 = 2;
      }

      v4 += v23;
    }
  }

  if (v3 >> 29)
  {
    if ((v3 & 0x20000000) != 0)
    {
      v24 = *(this + 90);
      if (v24 >= 0x80)
      {
        v25 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v24) + 2;
        v3 = *(this + 94);
      }

      else
      {
        v25 = 3;
      }

      v4 += v25;
      if ((v3 & 0x40000000) == 0)
      {
LABEL_59:
        if ((v3 & 0x80000000) == 0)
        {
          goto LABEL_78;
        }

        goto LABEL_74;
      }
    }

    else if ((v3 & 0x40000000) == 0)
    {
      goto LABEL_59;
    }

    v26 = *(this + 44);
    v27 = *(v26 + 23);
    v28 = v27;
    v29 = *(v26 + 8);
    if ((v27 & 0x80u) == 0)
    {
      v30 = *(v26 + 23);
    }

    else
    {
      v30 = v29;
    }

    if (v30 >= 0x80)
    {
      v31 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v30);
      v27 = *(v26 + 23);
      v29 = *(v26 + 8);
      v3 = *(this + 94);
      v28 = *(v26 + 23);
    }

    else
    {
      v31 = 1;
    }

    if (v28 < 0)
    {
      v27 = v29;
    }

    v4 += v31 + v27 + 2;
    if ((v3 & 0x80000000) != 0)
    {
LABEL_74:
      v32 = *(this + 91);
      if (v32 >= 0x80)
      {
        v33 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v32) + 2;
      }

      else
      {
        v33 = 3;
      }

      v4 += v33;
    }
  }

LABEL_78:
  if (*(this + 380))
  {
    v34 = *(this + 92);
    if (v34 >= 0x80)
    {
      v35 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v34) + 2;
    }

    else
    {
      v35 = 3;
    }

    v4 += v35;
  }

  v36 = *(this + 14);
  if (v36 < 1)
  {
    v38 = 0;
  }

  else
  {
    v37 = 0;
    v38 = 0;
    do
    {
      v39 = *(*(this + 6) + 4 * v37);
      if (v39 >= 0x80)
      {
        v40 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v39);
        v36 = *(this + 14);
      }

      else
      {
        v40 = 1;
      }

      v38 += v40;
      ++v37;
    }

    while (v37 < v36);
  }

  v41 = *(this + 18);
  if (v41 < 1)
  {
    v43 = 0;
  }

  else
  {
    v42 = 0;
    v43 = 0;
    do
    {
      v44 = *(*(this + 8) + 4 * v42);
      if (v44 >= 0x80)
      {
        v45 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v44);
        v41 = *(this + 18);
      }

      else
      {
        v45 = 1;
      }

      v43 += v45;
      ++v42;
    }

    while (v42 < v41);
  }

  v46 = *(this + 22);
  if (v46 < 1)
  {
    v48 = 0;
  }

  else
  {
    v47 = 0;
    v48 = 0;
    do
    {
      v49 = *(*(this + 10) + 4 * v47);
      if (v49 >= 0x80)
      {
        v50 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v49);
        v46 = *(this + 22);
      }

      else
      {
        v50 = 1;
      }

      v48 += v50;
      ++v47;
    }

    while (v47 < v46);
  }

  v51 = *(this + 26);
  if (v51 < 1)
  {
    v159 = 0;
  }

  else
  {
    v52 = 0;
    v159 = 0;
    do
    {
      v53 = *(*(this + 12) + 4 * v52);
      if (v53 >= 0x80)
      {
        v54 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v53);
        v51 = *(this + 26);
      }

      else
      {
        v54 = 1;
      }

      v159 += v54;
      ++v52;
    }

    while (v52 < v51);
  }

  v55 = *(this + 30);
  if (v55 < 1)
  {
    v158 = 0;
  }

  else
  {
    v56 = 0;
    v158 = 0;
    do
    {
      v57 = *(*(this + 14) + 4 * v56);
      if (v57 >= 0x80)
      {
        v58 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v57);
        v55 = *(this + 30);
      }

      else
      {
        v58 = 1;
      }

      v158 += v58;
      ++v56;
    }

    while (v56 < v55);
  }

  v143 = v55;
  v59 = *(this + 34);
  if (v59 < 1)
  {
    v157 = 0;
  }

  else
  {
    v60 = 0;
    v157 = 0;
    do
    {
      v61 = v59;
      v62 = *(*(this + 16) + 4 * v60);
      if (v62 >= 0x80)
      {
        v63 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v62);
        v61 = *(this + 34);
      }

      else
      {
        v63 = 1;
      }

      v157 += v63;
      ++v60;
      v59 = v61;
    }

    while (v60 < v61);
  }

  v142 = v59;
  v64 = *(this + 38);
  if (v64 < 1)
  {
    v156 = 0;
  }

  else
  {
    v65 = 0;
    v156 = 0;
    do
    {
      v66 = v64;
      v67 = *(*(this + 18) + 4 * v65);
      if (v67 >= 0x80)
      {
        v68 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v67);
        v66 = *(this + 38);
      }

      else
      {
        v68 = 1;
      }

      v156 += v68;
      ++v65;
      v64 = v66;
    }

    while (v65 < v66);
  }

  v141 = v64;
  v69 = *(this + 42);
  if (v69 < 1)
  {
    v155 = 0;
  }

  else
  {
    v70 = 0;
    v155 = 0;
    do
    {
      v71 = v69;
      v72 = *(*(this + 20) + 4 * v70);
      if (v72 >= 0x80)
      {
        v73 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v72);
        v71 = *(this + 42);
      }

      else
      {
        v73 = 1;
      }

      v155 += v73;
      ++v70;
      v69 = v71;
    }

    while (v70 < v71);
  }

  v140 = v69;
  v74 = *(this + 46);
  if (v74 < 1)
  {
    v154 = 0;
  }

  else
  {
    v75 = 0;
    v154 = 0;
    do
    {
      v76 = v74;
      v77 = *(*(this + 22) + 4 * v75);
      if (v77 >= 0x80)
      {
        v78 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v77);
        v76 = *(this + 46);
      }

      else
      {
        v78 = 1;
      }

      v154 += v78;
      ++v75;
      v74 = v76;
    }

    while (v75 < v76);
  }

  v139 = v74;
  v79 = *(this + 50);
  if (v79 < 1)
  {
    v153 = 0;
  }

  else
  {
    v80 = 0;
    v153 = 0;
    do
    {
      v81 = v79;
      v82 = *(*(this + 24) + 4 * v80);
      if (v82 >= 0x80)
      {
        v83 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v82);
        v81 = *(this + 50);
      }

      else
      {
        v83 = 1;
      }

      v153 += v83;
      ++v80;
      v79 = v81;
    }

    while (v80 < v81);
  }

  v138 = v79;
  v84 = *(this + 54);
  if (v84 < 1)
  {
    v152 = 0;
  }

  else
  {
    v85 = 0;
    v152 = 0;
    do
    {
      v86 = v84;
      v87 = *(*(this + 26) + 4 * v85);
      if (v87 >= 0x80)
      {
        v88 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v87);
        v86 = *(this + 54);
      }

      else
      {
        v88 = 1;
      }

      v152 += v88;
      ++v85;
      v84 = v86;
    }

    while (v85 < v86);
  }

  v137 = v84;
  v146 = v46;
  v89 = *(this + 58);
  if (v89 < 1)
  {
    v91 = 0;
  }

  else
  {
    v90 = 0;
    v91 = 0;
    do
    {
      v92 = *(*(this + 28) + 4 * v90);
      if (v92 >= 0x80)
      {
        v93 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v92);
        v89 = *(this + 58);
      }

      else
      {
        v93 = 1;
      }

      v91 += v93;
      ++v90;
    }

    while (v90 < v89);
  }

  v136 = v89;
  v144 = v51;
  v94 = *(this + 62);
  if (v94 < 1)
  {
    v96 = 0;
  }

  else
  {
    v95 = 0;
    v96 = 0;
    do
    {
      v97 = *(*(this + 30) + 4 * v95);
      if (v97 >= 0x80)
      {
        v98 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v97);
        v94 = *(this + 62);
      }

      else
      {
        v98 = 1;
      }

      v96 += v98;
      ++v95;
    }

    while (v95 < v94);
  }

  v135 = v94;
  v151 = v4;
  v99 = *(this + 66);
  if (v99 < 1)
  {
    v101 = 0;
  }

  else
  {
    v100 = 0;
    v101 = 0;
    do
    {
      v102 = *(*(this + 32) + 4 * v100);
      if (v102 >= 0x80)
      {
        v103 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v102);
        v99 = *(this + 66);
      }

      else
      {
        v103 = 1;
      }

      v101 += v103;
      ++v100;
    }

    while (v100 < v99);
  }

  v134 = v99;
  v149 = v38;
  v104 = *(this + 70);
  if (v104 < 1)
  {
    v106 = 0;
  }

  else
  {
    v105 = 0;
    v106 = 0;
    do
    {
      v107 = *(*(this + 34) + 4 * v105);
      if (v107 >= 0x80)
      {
        v108 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v107);
        v104 = *(this + 70);
      }

      else
      {
        v108 = 1;
      }

      v106 += v108;
      ++v105;
    }

    while (v105 < v104);
  }

  v133 = v104;
  v145 = v48;
  v109 = *(this + 74);
  if (v109 < 1)
  {
    v111 = 0;
  }

  else
  {
    v110 = 0;
    v111 = 0;
    do
    {
      v112 = *(*(this + 36) + 4 * v110);
      if (v112 >= 0x80)
      {
        v113 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v112);
        v109 = *(this + 74);
      }

      else
      {
        v113 = 1;
      }

      v111 += v113;
      ++v110;
    }

    while (v110 < v109);
  }

  v132 = v109;
  v147 = v43;
  v114 = *(this + 78);
  if (v114 < 1)
  {
    v116 = 0;
  }

  else
  {
    v115 = 0;
    v116 = 0;
    do
    {
      v117 = *(*(this + 38) + 4 * v115);
      if (v117 >= 0x80)
      {
        v118 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v117);
        v114 = *(this + 78);
      }

      else
      {
        v118 = 1;
      }

      v116 += v118;
      ++v115;
    }

    while (v115 < v114);
  }

  v131 = v114;
  v148 = v41;
  v119 = *(this + 82);
  if (v119 < 1)
  {
    v121 = 0;
  }

  else
  {
    v120 = 0;
    v121 = 0;
    do
    {
      v122 = *(*(this + 40) + 4 * v120);
      if (v122 >= 0x80)
      {
        v123 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v122);
        v119 = *(this + 82);
      }

      else
      {
        v123 = 1;
      }

      v121 += v123;
      ++v120;
    }

    while (v120 < v119);
  }

  v150 = v36;
  v124 = *(this + 86);
  v130 = v119;
  if (v124 < 1)
  {
    v126 = 0;
  }

  else
  {
    v125 = 0;
    v126 = 0;
    do
    {
      v127 = *(*(this + 42) + 4 * v125);
      if (v127 >= 0x80)
      {
        v128 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v127);
        v124 = *(this + 86);
      }

      else
      {
        v128 = 1;
      }

      v126 += v128;
      ++v125;
    }

    while (v125 < v124);
  }

  result = (v149 + v151 + v150 + v147 + v148 + v145 + v146 + v159 + v144 + v158 + v143 + v157 + v156 + v155 + v154 + v153 + v152 + v91 + v96 + v101 + v106 + v111 + v116 + v121 + v126 + 2 * (v141 + v142 + v140 + v139 + v138 + v137 + v136 + v135 + v134 + v133 + v132 + v131 + v130 + v124));
  *(this + 93) = result;
  return result;
}

void awd::metrics::FaceTimeCallAggregatedReport_SegmentStats::CheckTypeAndMergeFrom(awd::metrics::FaceTimeCallAggregatedReport_SegmentStats *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  {
    awd::metrics::FaceTimeCallAggregatedReport_SegmentStats::CheckTypeAndMergeFrom();
  }

  awd::metrics::FaceTimeCallAggregatedReport_SegmentStats::MergeFrom(this, lpsrc);
}

void awd::metrics::FaceTimeCallAggregatedReport_SegmentStats::CopyFrom(awd::metrics::FaceTimeCallAggregatedReport_SegmentStats *this, const awd::metrics::FaceTimeCallAggregatedReport_SegmentStats *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    awd::metrics::FaceTimeCallAggregatedReport_SegmentStats::MergeFrom(this, a2);
  }
}

double awd::metrics::FaceTimeCallAggregatedReport_SegmentStats::Swap(awd::metrics::FaceTimeCallAggregatedReport_SegmentStats *this, awd::metrics::FaceTimeCallAggregatedReport_SegmentStats *a2)
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
    v6 = *(this + 6);
    *(this + 6) = *(a2 + 6);
    *(a2 + 6) = v6;
    v7 = *(this + 7);
    *(this + 7) = *(a2 + 7);
    *(a2 + 7) = v7;
    v8 = *(this + 8);
    *(this + 8) = *(a2 + 8);
    *(a2 + 8) = v8;
    v9 = *(this + 9);
    *(this + 9) = *(a2 + 9);
    *(a2 + 9) = v9;
    v10 = *(this + 10);
    *(this + 10) = *(a2 + 10);
    *(a2 + 10) = v10;
    v11 = *(this + 11);
    *(this + 11) = *(a2 + 11);
    *(a2 + 11) = v11;
    v12 = *(this + 6);
    *(this + 6) = *(a2 + 6);
    v13 = *(a2 + 7);
    *(a2 + 6) = v12;
    v14 = *(this + 7);
    *(this + 7) = v13;
    *(a2 + 7) = v14;
    v15 = *(this + 8);
    *(this + 8) = *(a2 + 8);
    v16 = *(a2 + 9);
    *(a2 + 8) = v15;
    v17 = *(this + 9);
    *(this + 9) = v16;
    *(a2 + 9) = v17;
    v18 = *(this + 10);
    *(this + 10) = *(a2 + 10);
    v19 = *(a2 + 11);
    *(a2 + 10) = v18;
    v20 = *(this + 11);
    *(this + 11) = v19;
    *(a2 + 11) = v20;
    v21 = *(this + 12);
    *(this + 12) = *(a2 + 12);
    v22 = *(a2 + 13);
    *(a2 + 12) = v21;
    v23 = *(this + 13);
    *(this + 13) = v22;
    *(a2 + 13) = v23;
    v24 = *(this + 14);
    *(this + 14) = *(a2 + 14);
    v25 = *(a2 + 15);
    *(a2 + 14) = v24;
    v26 = *(this + 15);
    *(this + 15) = v25;
    *(a2 + 15) = v26;
    v27 = *(this + 16);
    *(this + 16) = *(a2 + 16);
    v28 = *(a2 + 17);
    *(a2 + 16) = v27;
    v29 = *(this + 17);
    *(this + 17) = v28;
    *(a2 + 17) = v29;
    v30 = *(this + 18);
    *(this + 18) = *(a2 + 18);
    v31 = *(a2 + 19);
    *(a2 + 18) = v30;
    v32 = *(this + 19);
    *(this + 19) = v31;
    *(a2 + 19) = v32;
    v33 = *(this + 20);
    *(this + 20) = *(a2 + 20);
    v34 = *(a2 + 21);
    *(a2 + 20) = v33;
    v35 = *(this + 21);
    *(this + 21) = v34;
    *(a2 + 21) = v35;
    v36 = *(this + 22);
    *(this + 22) = *(a2 + 22);
    v37 = *(a2 + 23);
    *(a2 + 22) = v36;
    v38 = *(this + 23);
    *(this + 23) = v37;
    *(a2 + 23) = v38;
    v39 = *(this + 24);
    *(this + 24) = *(a2 + 24);
    v40 = *(a2 + 25);
    *(a2 + 24) = v39;
    v41 = *(this + 25);
    *(this + 25) = v40;
    *(a2 + 25) = v41;
    v42 = *(this + 26);
    *(this + 26) = *(a2 + 26);
    v43 = *(a2 + 27);
    *(a2 + 26) = v42;
    v44 = *(this + 27);
    *(this + 27) = v43;
    *(a2 + 27) = v44;
    v45 = *(this + 28);
    *(this + 28) = *(a2 + 28);
    v46 = *(a2 + 29);
    *(a2 + 28) = v45;
    v47 = *(this + 29);
    *(this + 29) = v46;
    *(a2 + 29) = v47;
    v48 = *(this + 30);
    *(this + 30) = *(a2 + 30);
    v49 = *(a2 + 31);
    *(a2 + 30) = v48;
    v50 = *(this + 31);
    *(this + 31) = v49;
    *(a2 + 31) = v50;
    v51 = *(this + 32);
    *(this + 32) = *(a2 + 32);
    v52 = *(a2 + 33);
    *(a2 + 32) = v51;
    v53 = *(this + 33);
    *(this + 33) = v52;
    *(a2 + 33) = v53;
    v54 = *(this + 34);
    *(this + 34) = *(a2 + 34);
    v55 = *(a2 + 35);
    *(a2 + 34) = v54;
    v56 = *(this + 35);
    *(this + 35) = v55;
    *(a2 + 35) = v56;
    v57 = *(this + 36);
    *(this + 36) = *(a2 + 36);
    v58 = *(a2 + 37);
    *(a2 + 36) = v57;
    v59 = *(this + 37);
    *(this + 37) = v58;
    *(a2 + 37) = v59;
    v60 = *(this + 38);
    *(this + 38) = *(a2 + 38);
    v61 = *(a2 + 39);
    *(a2 + 38) = v60;
    v62 = *(this + 39);
    *(this + 39) = v61;
    *(a2 + 39) = v62;
    v63 = *(this + 40);
    *(this + 40) = *(a2 + 40);
    v64 = *(a2 + 41);
    *(a2 + 40) = v63;
    v65 = *(this + 41);
    *(this + 41) = v64;
    *(a2 + 41) = v65;
    v66 = *(this + 42);
    *(this + 42) = *(a2 + 42);
    result = *(a2 + 43);
    *(a2 + 42) = v66;
    v68 = *(this + 43);
    *(this + 43) = result;
    *(a2 + 43) = v68;
    LODWORD(v66) = *(this + 90);
    *(this + 90) = *(a2 + 90);
    *(a2 + 90) = v66;
    v69 = *(this + 44);
    *(this + 44) = *(a2 + 44);
    *(a2 + 44) = v69;
    LODWORD(v69) = *(this + 91);
    *(this + 91) = *(a2 + 91);
    *(a2 + 91) = v69;
    LODWORD(v69) = *(this + 92);
    *(this + 92) = *(a2 + 92);
    *(a2 + 92) = v69;
    LODWORD(v69) = *(this + 94);
    *(this + 94) = *(a2 + 94);
    *(a2 + 94) = v69;
    LODWORD(v69) = *(this + 95);
    *(this + 95) = *(a2 + 95);
    *(a2 + 95) = v69;
    LODWORD(v69) = *(this + 93);
    *(this + 93) = *(a2 + 93);
    *(a2 + 93) = v69;
  }

  return result;
}

double awd::metrics::FaceTimeCallAggregatedReport::SharedCtor(awd::metrics::FaceTimeCallAggregatedReport *this)
{
  *(this + 17) = 0;
  *(this + 36) = 0;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 5) = 0;
  return result;
}

awd::metrics::FaceTimeCallAggregatedReport *awd::metrics::FaceTimeCallAggregatedReport::FaceTimeCallAggregatedReport(awd::metrics::FaceTimeCallAggregatedReport *this, const awd::metrics::FaceTimeCallAggregatedReport *a2)
{
  *this = &unk_2A1D4E218;
  *(this + 17) = 0;
  *(this + 36) = 0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 88) = 0u;
  *(this + 104) = 0u;
  *(this + 116) = 0u;
  awd::metrics::FaceTimeCallAggregatedReport::MergeFrom(this, a2);
  return this;
}

void sub_2963EF160(_Unwind_Exception *a1)
{
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::FaceTimeCallAggregatedReport_SegmentStats>::TypeHandler>(v1 + 14);
  awd::metrics::FaceTimeCallAggregatedReport::FaceTimeCallAggregatedReport((v1 + 12), v1 + 10, v1 + 8, v1 + 6);
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(v1);
  _Unwind_Resume(a1);
}

void awd::metrics::FaceTimeCallAggregatedReport::MergeFrom(awd::metrics::FaceTimeCallAggregatedReport *this, const awd::metrics::FaceTimeCallAggregatedReport *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v25);
  }

  v4 = *(a2 + 14);
  if (v4)
  {
    wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 12, *(this + 14) + v4);
    memcpy((*(this + 6) + 4 * *(this + 14)), *(a2 + 6), 4 * *(a2 + 14));
    *(this + 14) += *(a2 + 14);
  }

  v5 = *(a2 + 18);
  if (v5)
  {
    wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 16, *(this + 18) + v5);
    memcpy((*(this + 8) + 4 * *(this + 18)), *(a2 + 8), 4 * *(a2 + 18));
    *(this + 18) += *(a2 + 18);
  }

  v6 = *(a2 + 22);
  if (v6)
  {
    wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 20, *(this + 22) + v6);
    memcpy((*(this + 10) + 4 * *(this + 22)), *(a2 + 10), 4 * *(a2 + 22));
    *(this + 22) += *(a2 + 22);
  }

  v7 = *(a2 + 26);
  if (v7)
  {
    wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 24, *(this + 26) + v7);
    memcpy((*(this + 12) + 4 * *(this + 26)), *(a2 + 12), 4 * *(a2 + 26));
    *(this + 26) += *(a2 + 26);
  }

  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 112));
  LODWORD(v8) = *(a2 + 30);
  if (v8 >= 1)
  {
    v9 = 0;
    do
    {
      if (v9 >= v8)
      {
        wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
        wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
        wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
        wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v25);
      }

      v10 = *(*(a2 + 14) + 8 * v9);
      v11 = *(this + 31);
      v12 = *(this + 30);
      if (v12 >= v11)
      {
        if (v11 == *(this + 32))
        {
          wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 112));
          v11 = *(this + 31);
        }

        *(this + 31) = v11 + 1;
        operator new();
      }

      v13 = *(this + 14);
      *(this + 30) = v12 + 1;
      awd::metrics::FaceTimeCallAggregatedReport_SegmentStats::MergeFrom(*(v13 + 8 * v12), v10);
      ++v9;
      v8 = *(a2 + 30);
    }

    while (v9 < v8);
  }

  v14 = *(a2 + 36);
  if (!v14)
  {
    goto LABEL_31;
  }

  if (v14)
  {
    v18 = *(a2 + 1);
    *(this + 36) |= 1u;
    *(this + 1) = v18;
    v14 = *(a2 + 36);
    if ((v14 & 2) == 0)
    {
LABEL_24:
      if ((v14 & 4) == 0)
      {
        goto LABEL_25;
      }

      goto LABEL_39;
    }
  }

  else if ((v14 & 2) == 0)
  {
    goto LABEL_24;
  }

  v19 = *(a2 + 4);
  *(this + 36) |= 2u;
  *(this + 4) = v19;
  v14 = *(a2 + 36);
  if ((v14 & 4) == 0)
  {
LABEL_25:
    if ((v14 & 8) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_40;
  }

LABEL_39:
  v20 = *(a2 + 5);
  *(this + 36) |= 4u;
  *(this + 5) = v20;
  v14 = *(a2 + 36);
  if ((v14 & 8) == 0)
  {
LABEL_26:
    if ((v14 & 0x10) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_41;
  }

LABEL_40:
  v21 = *(a2 + 6);
  *(this + 36) |= 8u;
  *(this + 6) = v21;
  v14 = *(a2 + 36);
  if ((v14 & 0x10) == 0)
  {
LABEL_27:
    if ((v14 & 0x20) == 0)
    {
      goto LABEL_28;
    }

LABEL_42:
    v23 = *(a2 + 8);
    *(this + 36) |= 0x20u;
    *(this + 8) = v23;
    v14 = *(a2 + 36);
    if ((v14 & 0x40) == 0)
    {
LABEL_29:
      if ((v14 & 0x80) == 0)
      {
        goto LABEL_31;
      }

      goto LABEL_30;
    }

    goto LABEL_43;
  }

LABEL_41:
  v22 = *(a2 + 7);
  *(this + 36) |= 0x10u;
  *(this + 7) = v22;
  v14 = *(a2 + 36);
  if ((v14 & 0x20) != 0)
  {
    goto LABEL_42;
  }

LABEL_28:
  if ((v14 & 0x40) == 0)
  {
    goto LABEL_29;
  }

LABEL_43:
  v24 = *(a2 + 9);
  *(this + 36) |= 0x40u;
  *(this + 9) = v24;
  v14 = *(a2 + 36);
  if ((v14 & 0x80) != 0)
  {
LABEL_30:
    v15 = *(a2 + 10);
    *(this + 36) |= 0x80u;
    *(this + 10) = v15;
    v14 = *(a2 + 36);
  }

LABEL_31:
  if ((v14 & 0x1FE00) != 0)
  {
    if ((v14 & 0x200) != 0)
    {
      v16 = *(a2 + 11);
      *(this + 36) |= 0x200u;
      *(this + 11) = v16;
      v14 = *(a2 + 36);
    }

    if ((v14 & 0x400) != 0)
    {
      v17 = *(a2 + 34);
      *(this + 36) |= 0x400u;
      *(this + 34) = v17;
    }
  }
}

void sub_2963EF600(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::metrics::FaceTimeCallAggregatedReport::~FaceTimeCallAggregatedReport(awd::metrics::FaceTimeCallAggregatedReport *this)
{
  *this = &unk_2A1D4E218;
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::FaceTimeCallAggregatedReport_SegmentStats>::TypeHandler>(this + 14);
  v2 = *(this + 12);
  if (v2)
  {
    MEMORY[0x29C25A1D0](v2, 0x1000C8052888210);
  }

  v3 = *(this + 10);
  if (v3)
  {
    MEMORY[0x29C25A1D0](v3, 0x1000C8052888210);
  }

  v4 = *(this + 8);
  if (v4)
  {
    MEMORY[0x29C25A1D0](v4, 0x1000C8052888210);
  }

  v5 = *(this + 6);
  if (v5)
  {
    MEMORY[0x29C25A1D0](v5, 0x1000C8052888210);
  }

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  awd::metrics::FaceTimeCallAggregatedReport::~FaceTimeCallAggregatedReport(this);

  JUMPOUT(0x29C25A1F0);
}

uint64_t awd::metrics::FaceTimeCallAggregatedReport::default_instance(awd::metrics::FaceTimeCallAggregatedReport *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = awd::metrics::FaceTimeCallAggregatedReport::default_instance_;
  if (!awd::metrics::FaceTimeCallAggregatedReport::default_instance_)
  {
    awd::metrics::protobuf_AddDesc_Facetime_2eproto(0, a2, a3, a4);
    return awd::metrics::FaceTimeCallAggregatedReport::default_instance_;
  }

  return result;
}

uint64_t awd::metrics::FaceTimeCallAggregatedReport::Clear(awd::metrics::FaceTimeCallAggregatedReport *this)
{
  v2 = *(this + 36);
  if (v2)
  {
    *(this + 10) = 0;
    *(this + 24) = 0u;
    *(this + 8) = 0u;
  }

  if ((v2 & 0x1FE00) != 0)
  {
    *(this + 11) = 0;
    *(this + 34) = 0;
  }

  *(this + 14) = 0;
  *(this + 18) = 0;
  *(this + 22) = 0;
  *(this + 26) = 0;
  result = wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Clear<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::FaceTimeCallAggregatedReport_SegmentStats>::TypeHandler>(this + 112);
  *(this + 36) = 0;
  return result;
}

uint64_t awd::metrics::FaceTimeCallAggregatedReport::MergePartialFromCodedStream(awd::metrics::FaceTimeCallAggregatedReport *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
{
LABEL_1:
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

    v7 = TagFallback & 7;
    switch(TagFallback >> 3)
    {
      case 1u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_46;
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

        *(this + 36) |= 1u;
        if (v11 < v8 && *v11 == 16)
        {
          v18 = v11 + 1;
          *(a2 + 1) = v18;
          goto LABEL_59;
        }

        continue;
      case 2u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_46;
        }

        v18 = *(a2 + 1);
        v8 = *(a2 + 2);
LABEL_59:
        if (v18 >= v8 || (v27 = *v18, v27 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 4);
          if (!result)
          {
            return result;
          }

          v28 = *(a2 + 1);
          v8 = *(a2 + 2);
        }

        else
        {
          *(this + 4) = v27;
          v28 = v18 + 1;
          *(a2 + 1) = v28;
        }

        *(this + 36) |= 2u;
        if (v28 >= v8 || *v28 != 24)
        {
          continue;
        }

        v15 = v28 + 1;
        *(a2 + 1) = v15;
LABEL_67:
        if (v15 >= v8 || (v29 = *v15, v29 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 5);
          if (!result)
          {
            return result;
          }

          v30 = *(a2 + 1);
          v8 = *(a2 + 2);
        }

        else
        {
          *(this + 5) = v29;
          v30 = v15 + 1;
          *(a2 + 1) = v30;
        }

        *(this + 36) |= 4u;
        if (v30 >= v8 || *v30 != 32)
        {
          continue;
        }

        v16 = v30 + 1;
        *(a2 + 1) = v16;
LABEL_75:
        if (v16 >= v8 || (v31 = *v16, v31 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 6);
          if (!result)
          {
            return result;
          }

          v32 = *(a2 + 1);
          v8 = *(a2 + 2);
        }

        else
        {
          *(this + 6) = v31;
          v32 = v16 + 1;
          *(a2 + 1) = v32;
        }

        *(this + 36) |= 8u;
        if (v32 >= v8 || *v32 != 42)
        {
          continue;
        }

        while (1)
        {
          *(a2 + 1) = v32 + 1;
LABEL_83:
          v33 = *(this + 31);
          v34 = *(this + 30);
          if (v34 >= v33)
          {
            if (v33 == *(this + 32))
            {
              wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 112));
              v33 = *(this + 31);
            }

            *(this + 31) = v33 + 1;
            operator new();
          }

          v35 = *(this + 14);
          *(this + 30) = v34 + 1;
          v36 = *(v35 + 8 * v34);
          v101[0] = 0;
          v37 = *(a2 + 1);
          if (v37 >= *(a2 + 2) || *v37 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v101))
            {
              return 0;
            }
          }

          else
          {
            v101[0] = *v37;
            *(a2 + 1) = v37 + 1;
          }

          v38 = *(a2 + 14);
          v39 = *(a2 + 15);
          *(a2 + 14) = v38 + 1;
          if (v38 >= v39)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
          if (!awd::metrics::FaceTimeCallAggregatedReport_SegmentStats::MergePartialFromCodedStream(v36, a2, v40) || *(a2 + 36) != 1)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
          v41 = *(a2 + 14);
          v42 = __OFSUB__(v41, 1);
          v43 = v41 - 1;
          if (v43 < 0 == v42)
          {
            *(a2 + 14) = v43;
          }

          v32 = *(a2 + 1);
          v13 = *(a2 + 2);
          if (v32 >= v13)
          {
            goto LABEL_1;
          }

          v44 = *v32;
          if (v44 != 42)
          {
            if (v44 == 48)
            {
              v19 = v32 + 1;
              *(a2 + 1) = v19;
LABEL_101:
              if (v19 >= v13 || (v45 = *v19, v45 < 0))
              {
                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 7);
                if (!result)
                {
                  return result;
                }

                v46 = *(a2 + 1);
                v13 = *(a2 + 2);
              }

              else
              {
                *(this + 7) = v45;
                v46 = v19 + 1;
                *(a2 + 1) = v46;
              }

              *(this + 36) |= 0x10u;
              if (v46 < v13 && *v46 == 56)
              {
                v20 = v46 + 1;
                *(a2 + 1) = v20;
LABEL_109:
                if (v20 >= v13 || (v47 = *v20, v47 < 0))
                {
                  result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 8);
                  if (!result)
                  {
                    return result;
                  }

                  v48 = *(a2 + 1);
                  v13 = *(a2 + 2);
                }

                else
                {
                  *(this + 8) = v47;
                  v48 = v20 + 1;
                  *(a2 + 1) = v48;
                }

                *(this + 36) |= 0x20u;
                if (v48 < v13 && *v48 == 64)
                {
                  v17 = v48 + 1;
                  *(a2 + 1) = v17;
LABEL_117:
                  if (v17 >= v13 || (v49 = *v17, v49 < 0))
                  {
                    result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 9);
                    if (!result)
                    {
                      return result;
                    }

                    v50 = *(a2 + 1);
                    v13 = *(a2 + 2);
                  }

                  else
                  {
                    *(this + 9) = v49;
                    v50 = v17 + 1;
                    *(a2 + 1) = v50;
                  }

                  *(this + 36) |= 0x40u;
                  if (v50 < v13 && *v50 == 72)
                  {
                    v22 = v50 + 1;
                    *(a2 + 1) = v22;
LABEL_125:
                    if (v22 >= v13 || (v51 = *v22, v51 < 0))
                    {
                      result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 10);
                      if (!result)
                      {
                        return result;
                      }

                      v52 = *(a2 + 1);
                      v13 = *(a2 + 2);
                    }

                    else
                    {
                      *(this + 10) = v51;
                      v52 = (v22 + 1);
                      *(a2 + 1) = v52;
                    }

                    *(this + 36) |= 0x80u;
                    if (v52 < v13)
                    {
                      v53 = *v52;
                      goto LABEL_132;
                    }
                  }
                }
              }
            }

            goto LABEL_1;
          }
        }

      case 3u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_46;
        }

        v15 = *(a2 + 1);
        v8 = *(a2 + 2);
        goto LABEL_67;
      case 4u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_46;
        }

        v16 = *(a2 + 1);
        v8 = *(a2 + 2);
        goto LABEL_75;
      case 5u:
        if (v7 == 2)
        {
          goto LABEL_83;
        }

        goto LABEL_46;
      case 6u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_46;
        }

        v19 = *(a2 + 1);
        v13 = *(a2 + 2);
        goto LABEL_101;
      case 7u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_46;
        }

        v20 = *(a2 + 1);
        v13 = *(a2 + 2);
        goto LABEL_109;
      case 8u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_46;
        }

        v17 = *(a2 + 1);
        v13 = *(a2 + 2);
        goto LABEL_117;
      case 9u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_46;
        }

        v22 = *(a2 + 1);
        v13 = *(a2 + 2);
        goto LABEL_125;
      case 0xAu:
        if ((TagFallback & 7) != 0)
        {
          if (v7 == 2)
          {
            result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadPackedPrimitiveNoInline<unsigned int,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)13>(a2, this + 6);
            if (!result)
            {
              return result;
            }

            goto LABEL_151;
          }

          goto LABEL_46;
        }

        v25 = *(a2 + 1);
        v13 = *(a2 + 2);
        while (1)
        {
          v100 = 0;
          if (v25 >= v13 || *v25 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v100))
            {
              return 0;
            }
          }

          else
          {
            v100 = *v25;
            *(a2 + 1) = v25 + 1;
          }

          v54 = *(this + 14);
          if (v54 == *(this + 15))
          {
            wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 12, v54 + 1);
            v54 = *(this + 14);
          }

          v55 = v100;
          v56 = *(this + 6);
          *(this + 14) = v54 + 1;
          *(v56 + 4 * v54) = v55;
          v57 = *(this + 15) - *(this + 14);
          if (v57 >= 1)
          {
            v58 = v57 + 1;
            do
            {
              v59 = *(a2 + 1);
              v60 = *(a2 + 2);
              if (v59 >= v60 || *v59 != 80)
              {
                break;
              }

              *(a2 + 1) = v59 + 1;
              if ((v59 + 1) >= v60 || v59[1] < 0)
              {
                if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v100))
                {
                  return 0;
                }
              }

              else
              {
                v100 = v59[1];
                *(a2 + 1) = v59 + 2;
              }

              v61 = *(this + 14);
              if (v61 >= *(this + 15))
              {
                wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v101);
                v61 = *(this + 14);
              }

              v62 = v100;
              v63 = *(this + 6);
              *(this + 14) = v61 + 1;
              *(v63 + 4 * v61) = v62;
              --v58;
            }

            while (v58 > 1);
          }

LABEL_151:
          v52 = *(a2 + 1);
          v13 = *(a2 + 2);
          if (v52 >= v13)
          {
            goto LABEL_1;
          }

          v53 = *v52;
          if (v53 == 88)
          {
            v21 = (v52 + 1);
            *(a2 + 1) = v21;
LABEL_154:
            if (v21 >= v13 || (v64 = *v21, v64 < 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 11);
              if (!result)
              {
                return result;
              }

              v65 = *(a2 + 1);
              v13 = *(a2 + 2);
            }

            else
            {
              *(this + 11) = v64;
              v65 = v21 + 1;
              *(a2 + 1) = v65;
            }

            *(this + 36) |= 0x200u;
            if (v65 < v13 && *v65 == 96)
            {
              v14 = v65 + 1;
              *(a2 + 1) = v14;
LABEL_162:
              if (v14 >= v13 || (v66 = *v14, v66 < 0))
              {
                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 34);
                if (!result)
                {
                  return result;
                }

                v67 = *(a2 + 1);
                v13 = *(a2 + 2);
              }

              else
              {
                *(this + 34) = v66;
                v67 = v14 + 1;
                *(a2 + 1) = v67;
              }

              *(this + 36) |= 0x400u;
              if (v67 < v13)
              {
                v68 = *v67;
                goto LABEL_169;
              }
            }

            goto LABEL_1;
          }

LABEL_132:
          if (v53 != 80)
          {
            goto LABEL_1;
          }

          v25 = (v52 + 1);
          *(a2 + 1) = v25;
        }

      case 0xBu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_46;
        }

        v21 = *(a2 + 1);
        v13 = *(a2 + 2);
        goto LABEL_154;
      case 0xCu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_46;
        }

        v14 = *(a2 + 1);
        v13 = *(a2 + 2);
        goto LABEL_162;
      case 0xDu:
        if ((TagFallback & 7) != 0)
        {
          if (v7 == 2)
          {
            result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadPackedPrimitiveNoInline<unsigned int,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)13>(a2, this + 8);
            if (!result)
            {
              return result;
            }

            goto LABEL_188;
          }

          goto LABEL_46;
        }

        v24 = *(a2 + 1);
        v13 = *(a2 + 2);
        while (1)
        {
          v100 = 0;
          if (v24 >= v13 || *v24 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v100))
            {
              return 0;
            }
          }

          else
          {
            v100 = *v24;
            *(a2 + 1) = v24 + 1;
          }

          v69 = *(this + 18);
          if (v69 == *(this + 19))
          {
            wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 16, v69 + 1);
            v69 = *(this + 18);
          }

          v70 = v100;
          v71 = *(this + 8);
          *(this + 18) = v69 + 1;
          *(v71 + 4 * v69) = v70;
          v72 = *(this + 19) - *(this + 18);
          if (v72 >= 1)
          {
            v73 = v72 + 1;
            do
            {
              v74 = *(a2 + 1);
              v75 = *(a2 + 2);
              if (v74 >= v75 || *v74 != 104)
              {
                break;
              }

              *(a2 + 1) = v74 + 1;
              if ((v74 + 1) >= v75 || v74[1] < 0)
              {
                if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v100))
                {
                  return 0;
                }
              }

              else
              {
                v100 = v74[1];
                *(a2 + 1) = v74 + 2;
              }

              v76 = *(this + 18);
              if (v76 >= *(this + 19))
              {
                wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v101);
                v76 = *(this + 18);
              }

              v77 = v100;
              v78 = *(this + 8);
              *(this + 18) = v76 + 1;
              *(v78 + 4 * v76) = v77;
              --v73;
            }

            while (v73 > 1);
          }

LABEL_188:
          v67 = *(a2 + 1);
          v13 = *(a2 + 2);
          if (v67 >= v13)
          {
            goto LABEL_1;
          }

          v68 = *v67;
          if (v68 == 112)
          {
            goto LABEL_190;
          }

LABEL_169:
          if (v68 != 104)
          {
            goto LABEL_1;
          }

          v24 = v67 + 1;
          *(a2 + 1) = v24;
        }

      case 0xEu:
        if ((TagFallback & 7) != 0)
        {
          if (v7 == 2)
          {
            result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadPackedPrimitiveNoInline<unsigned int,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)13>(a2, this + 10);
            if (!result)
            {
              return result;
            }

            goto LABEL_208;
          }

          goto LABEL_46;
        }

        v26 = *(a2 + 1);
        v13 = *(a2 + 2);
        while (1)
        {
          v100 = 0;
          if (v26 >= v13 || *v26 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v100))
            {
              return 0;
            }
          }

          else
          {
            v100 = *v26;
            *(a2 + 1) = v26 + 1;
          }

          v79 = *(this + 22);
          if (v79 == *(this + 23))
          {
            wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 20, v79 + 1);
            v79 = *(this + 22);
          }

          v80 = v100;
          v81 = *(this + 10);
          *(this + 22) = v79 + 1;
          *(v81 + 4 * v79) = v80;
          v82 = *(this + 23) - *(this + 22);
          if (v82 >= 1)
          {
            v83 = v82 + 1;
            do
            {
              v84 = *(a2 + 1);
              v85 = *(a2 + 2);
              if (v84 >= v85 || *v84 != 112)
              {
                break;
              }

              *(a2 + 1) = v84 + 1;
              if ((v84 + 1) >= v85 || v84[1] < 0)
              {
                if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v100))
                {
                  return 0;
                }
              }

              else
              {
                v100 = v84[1];
                *(a2 + 1) = v84 + 2;
              }

              v86 = *(this + 22);
              if (v86 >= *(this + 23))
              {
                wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v101);
                v86 = *(this + 22);
              }

              v87 = v100;
              v88 = *(this + 10);
              *(this + 22) = v86 + 1;
              *(v88 + 4 * v86) = v87;
              --v83;
            }

            while (v83 > 1);
          }

LABEL_208:
          v67 = *(a2 + 1);
          v13 = *(a2 + 2);
          if (v67 >= v13)
          {
            goto LABEL_1;
          }

          v89 = *v67;
          if (v89 == 120)
          {
            goto LABEL_212;
          }

          if (v89 != 112)
          {
            goto LABEL_1;
          }

LABEL_190:
          v26 = v67 + 1;
          *(a2 + 1) = v26;
        }

      case 0xFu:
        if ((TagFallback & 7) == 0)
        {
          v23 = *(a2 + 1);
          v13 = *(a2 + 2);
          while (1)
          {
            v100 = 0;
            if (v23 >= v13 || *v23 < 0)
            {
              if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v100))
              {
                return 0;
              }
            }

            else
            {
              v100 = *v23;
              *(a2 + 1) = v23 + 1;
            }

            v90 = *(this + 26);
            if (v90 == *(this + 27))
            {
              wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 24, v90 + 1);
              v90 = *(this + 26);
            }

            v91 = v100;
            v92 = *(this + 12);
            *(this + 26) = v90 + 1;
            *(v92 + 4 * v90) = v91;
            v93 = *(this + 27) - *(this + 26);
            if (v93 >= 1)
            {
              v94 = v93 + 1;
              do
              {
                v95 = *(a2 + 1);
                v96 = *(a2 + 2);
                if (v95 >= v96 || *v95 != 120)
                {
                  break;
                }

                *(a2 + 1) = v95 + 1;
                if ((v95 + 1) >= v96 || v95[1] < 0)
                {
                  if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v100))
                  {
                    return 0;
                  }
                }

                else
                {
                  v100 = v95[1];
                  *(a2 + 1) = v95 + 2;
                }

                v97 = *(this + 26);
                if (v97 >= *(this + 27))
                {
                  wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                  wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                  wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v101);
                  v97 = *(this + 26);
                }

                v98 = v100;
                v99 = *(this + 12);
                *(this + 26) = v97 + 1;
                *(v99 + 4 * v97) = v98;
                --v94;
              }

              while (v94 > 1);
            }

LABEL_230:
            v67 = *(a2 + 1);
            v13 = *(a2 + 2);
            if (v67 >= v13 || *v67 != 120)
            {
              break;
            }

LABEL_212:
            v23 = v67 + 1;
            *(a2 + 1) = v23;
          }

          if (v67 == v13 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
          {
            *(a2 + 8) = 0;
            result = 1;
            *(a2 + 36) = 1;
            return result;
          }

          continue;
        }

        if (v7 == 2)
        {
          result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadPackedPrimitiveNoInline<unsigned int,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)13>(a2, this + 12);
          if (!result)
          {
            return result;
          }

          goto LABEL_230;
        }

LABEL_46:
        if (v7 != 4)
        {
          if ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(a2, TagFallback) & 1) == 0)
          {
            return 0;
          }

          continue;
        }

        return 1;
      default:
        goto LABEL_46;
    }
  }
}

void sub_2963F04E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t awd::metrics::FaceTimeCallAggregatedReport::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 144);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(1, *(this + 8), a2, a4);
    v6 = *(v5 + 144);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_33;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(2, *(v5 + 16), a2, a4);
  v6 = *(v5 + 144);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_33:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(3, *(v5 + 20), a2, a4);
  if ((*(v5 + 144) & 8) != 0)
  {
LABEL_5:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(4, *(v5 + 24), a2, a4);
  }

LABEL_6:
  if (*(v5 + 120) >= 1)
  {
    v7 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(5, *(*(v5 + 112) + 8 * v7++), a2, a4);
    }

    while (v7 < *(v5 + 120));
  }

  v8 = *(v5 + 144);
  if ((v8 & 0x10) != 0)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(6, *(v5 + 28), a2, a4);
    v8 = *(v5 + 144);
    if ((v8 & 0x20) == 0)
    {
LABEL_11:
      if ((v8 & 0x40) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_37;
    }
  }

  else if ((v8 & 0x20) == 0)
  {
    goto LABEL_11;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(7, *(v5 + 32), a2, a4);
  v8 = *(v5 + 144);
  if ((v8 & 0x40) == 0)
  {
LABEL_12:
    if ((v8 & 0x80) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

LABEL_37:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(8, *(v5 + 36), a2, a4);
  if ((*(v5 + 144) & 0x80) != 0)
  {
LABEL_13:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(9, *(v5 + 40), a2, a4);
  }

LABEL_14:
  if (*(v5 + 56) >= 1)
  {
    v9 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xA, *(*(v5 + 48) + 4 * v9++), a2, a4);
    }

    while (v9 < *(v5 + 56));
  }

  v10 = *(v5 + 144);
  if ((v10 & 0x200) != 0)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xB, *(v5 + 44), a2, a4);
    v10 = *(v5 + 144);
  }

  if ((v10 & 0x400) != 0)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xC, *(v5 + 136), a2, a4);
  }

  if (*(v5 + 72) >= 1)
  {
    v11 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xD, *(*(v5 + 64) + 4 * v11++), a2, a4);
    }

    while (v11 < *(v5 + 72));
  }

  if (*(v5 + 88) >= 1)
  {
    v12 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xE, *(*(v5 + 80) + 4 * v12++), a2, a4);
    }

    while (v12 < *(v5 + 88));
  }

  if (*(v5 + 104) >= 1)
  {
    v13 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xF, *(*(v5 + 96) + 4 * v13++), a2, a4);
    }

    while (v13 < *(v5 + 104));
  }

  return this;
}

uint64_t awd::metrics::FaceTimeCallAggregatedReport::ByteSize(awd::metrics::FaceTimeCallAggregatedReport *this, unint64_t a2)
{
  v3 = *(this + 36);
  if (!v3)
  {
    v4 = 0;
    goto LABEL_42;
  }

  if (v3)
  {
    v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 1)) + 1;
    v3 = *(this + 36);
    if ((v3 & 2) == 0)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v4 = 0;
    if ((v3 & 2) == 0)
    {
      goto LABEL_11;
    }
  }

  v5 = *(this + 4);
  if (v5 >= 0x80)
  {
    v6 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5) + 1;
    v3 = *(this + 36);
  }

  else
  {
    v6 = 2;
  }

  v4 += v6;
LABEL_11:
  if ((v3 & 4) != 0)
  {
    v7 = *(this + 5);
    if (v7 >= 0x80)
    {
      v8 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v7) + 1;
      v3 = *(this + 36);
    }

    else
    {
      v8 = 2;
    }

    v4 += v8;
    if ((v3 & 8) == 0)
    {
LABEL_13:
      if ((v3 & 0x10) == 0)
      {
        goto LABEL_14;
      }

      goto LABEL_26;
    }
  }

  else if ((v3 & 8) == 0)
  {
    goto LABEL_13;
  }

  v9 = *(this + 6);
  if (v9 >= 0x80)
  {
    v10 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v9) + 1;
    v3 = *(this + 36);
  }

  else
  {
    v10 = 2;
  }

  v4 += v10;
  if ((v3 & 0x10) == 0)
  {
LABEL_14:
    if ((v3 & 0x20) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_30;
  }

LABEL_26:
  v11 = *(this + 7);
  if (v11 >= 0x80)
  {
    v12 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v11) + 1;
    v3 = *(this + 36);
  }

  else
  {
    v12 = 2;
  }

  v4 += v12;
  if ((v3 & 0x20) == 0)
  {
LABEL_15:
    if ((v3 & 0x40) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_34;
  }

LABEL_30:
  v13 = *(this + 8);
  if (v13 >= 0x80)
  {
    v14 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v13) + 1;
    v3 = *(this + 36);
  }

  else
  {
    v14 = 2;
  }

  v4 += v14;
  if ((v3 & 0x40) == 0)
  {
LABEL_16:
    if ((v3 & 0x80) == 0)
    {
      goto LABEL_42;
    }

    goto LABEL_38;
  }

LABEL_34:
  v15 = *(this + 9);
  if (v15 >= 0x80)
  {
    v16 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v15) + 1;
    v3 = *(this + 36);
  }

  else
  {
    v16 = 2;
  }

  v4 += v16;
  if ((v3 & 0x80) != 0)
  {
LABEL_38:
    v17 = *(this + 10);
    if (v17 >= 0x80)
    {
      v18 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v17) + 1;
      v3 = *(this + 36);
    }

    else
    {
      v18 = 2;
    }

    v4 += v18;
  }

LABEL_42:
  if ((v3 & 0x1FE00) != 0)
  {
    if ((v3 & 0x200) != 0)
    {
      v19 = *(this + 11);
      if (v19 >= 0x80)
      {
        v20 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v19) + 1;
        v3 = *(this + 36);
      }

      else
      {
        v20 = 2;
      }

      v4 += v20;
    }

    if ((v3 & 0x400) != 0)
    {
      v21 = *(this + 34);
      if (v21 >= 0x80)
      {
        v22 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v21) + 1;
      }

      else
      {
        v22 = 2;
      }

      v4 += v22;
    }
  }

  v23 = *(this + 14);
  if (v23 < 1)
  {
    v25 = 0;
  }

  else
  {
    v24 = 0;
    v25 = 0;
    do
    {
      v26 = *(*(this + 6) + 4 * v24);
      if (v26 >= 0x80)
      {
        v27 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v26);
        v23 = *(this + 14);
      }

      else
      {
        v27 = 1;
      }

      v25 += v27;
      ++v24;
    }

    while (v24 < v23);
  }

  v28 = *(this + 18);
  if (v28 < 1)
  {
    v30 = 0;
  }

  else
  {
    v29 = 0;
    v30 = 0;
    do
    {
      v31 = *(*(this + 8) + 4 * v29);
      if (v31 >= 0x80)
      {
        v32 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v31);
        v28 = *(this + 18);
      }

      else
      {
        v32 = 1;
      }

      v30 += v32;
      ++v29;
    }

    while (v29 < v28);
  }

  v33 = *(this + 22);
  if (v33 < 1)
  {
    v35 = 0;
  }

  else
  {
    v34 = 0;
    v35 = 0;
    do
    {
      v36 = *(*(this + 10) + 4 * v34);
      if (v36 >= 0x80)
      {
        v37 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v36);
        v33 = *(this + 22);
      }

      else
      {
        v37 = 1;
      }

      v35 += v37;
      ++v34;
    }

    while (v34 < v33);
  }

  v38 = *(this + 26);
  if (v38 < 1)
  {
    v40 = 0;
  }

  else
  {
    v39 = 0;
    v40 = 0;
    do
    {
      v41 = *(*(this + 12) + 4 * v39);
      if (v41 >= 0x80)
      {
        v42 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v41);
        v38 = *(this + 26);
      }

      else
      {
        v42 = 1;
      }

      v40 += v42;
      ++v39;
    }

    while (v39 < v38);
  }

  v43 = *(this + 30);
  v44 = (v25 + v4 + v23 + v30 + v28 + v35 + v33 + v40 + v38 + v43);
  if (v43 >= 1)
  {
    v45 = 0;
    do
    {
      v46 = awd::metrics::FaceTimeCallAggregatedReport_SegmentStats::ByteSize(*(*(this + 14) + 8 * v45), a2);
      v47 = v46;
      if (v46 >= 0x80)
      {
        v48 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v46);
      }

      else
      {
        v48 = 1;
      }

      v44 = (v47 + v44 + v48);
      ++v45;
    }

    while (v45 < *(this + 30));
  }

  *(this + 35) = v44;
  return v44;
}

void awd::metrics::FaceTimeCallAggregatedReport::CheckTypeAndMergeFrom(awd::metrics::FaceTimeCallAggregatedReport *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  {
    awd::metrics::FaceTimeCallAggregatedReport::CheckTypeAndMergeFrom();
  }

  awd::metrics::FaceTimeCallAggregatedReport::MergeFrom(this, lpsrc);
}

void awd::metrics::FaceTimeCallAggregatedReport::CopyFrom(awd::metrics::FaceTimeCallAggregatedReport *this, const awd::metrics::FaceTimeCallAggregatedReport *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    awd::metrics::FaceTimeCallAggregatedReport::MergeFrom(this, a2);
  }
}

uint64_t awd::metrics::FaceTimeCallAggregatedReport::Swap(uint64_t this, awd::metrics::FaceTimeCallAggregatedReport *a2)
{
  if (a2 != this)
  {
    v3 = this;
    v4 = *(this + 8);
    *(this + 8) = *(a2 + 1);
    *(a2 + 1) = v4;
    LODWORD(v4) = *(this + 16);
    *(this + 16) = *(a2 + 4);
    *(a2 + 4) = v4;
    LODWORD(v4) = *(this + 20);
    *(this + 20) = *(a2 + 5);
    *(a2 + 5) = v4;
    LODWORD(v4) = *(this + 24);
    *(this + 24) = *(a2 + 6);
    *(a2 + 6) = v4;
    LODWORD(v4) = *(this + 28);
    *(this + 28) = *(a2 + 7);
    *(a2 + 7) = v4;
    LODWORD(v4) = *(this + 32);
    *(this + 32) = *(a2 + 8);
    *(a2 + 8) = v4;
    LODWORD(v4) = *(this + 36);
    *(this + 36) = *(a2 + 9);
    *(a2 + 9) = v4;
    LODWORD(v4) = *(this + 40);
    *(this + 40) = *(a2 + 10);
    *(a2 + 10) = v4;
    v5 = *(this + 48);
    *(this + 48) = *(a2 + 6);
    v6 = *(a2 + 7);
    *(a2 + 6) = v5;
    v7 = *(this + 56);
    *(this + 56) = v6;
    *(a2 + 7) = v7;
    LODWORD(v5) = *(this + 44);
    *(this + 44) = *(a2 + 11);
    *(a2 + 11) = v5;
    LODWORD(v5) = *(this + 136);
    *(this + 136) = *(a2 + 34);
    *(a2 + 34) = v5;
    v8 = *(this + 64);
    *(this + 64) = *(a2 + 8);
    v9 = *(a2 + 9);
    *(a2 + 8) = v8;
    v10 = *(this + 72);
    *(this + 72) = v9;
    *(a2 + 9) = v10;
    v11 = *(this + 80);
    *(this + 80) = *(a2 + 10);
    v12 = *(a2 + 11);
    *(a2 + 10) = v11;
    v13 = *(this + 88);
    *(this + 88) = v12;
    *(a2 + 11) = v13;
    v14 = *(this + 96);
    *(this + 96) = *(a2 + 12);
    v15 = *(a2 + 13);
    *(a2 + 12) = v14;
    v16 = *(this + 104);
    *(this + 104) = v15;
    *(a2 + 13) = v16;
    this = wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Swap();
    v17 = *(v3 + 144);
    *(v3 + 144) = *(a2 + 36);
    *(a2 + 36) = v17;
    v18 = *(v3 + 140);
    *(v3 + 140) = *(a2 + 35);
    *(a2 + 35) = v18;
  }

  return this;
}

double awd::metrics::AvcSidecarVideoStream::SharedCtor(awd::metrics::AvcSidecarVideoStream *this)
{
  result = 0.0;
  *(this + 24) = 0u;
  *(this + 8) = 0u;
  v2 = MEMORY[0x29EDC9758];
  *(this + 5) = 0;
  *(this + 6) = v2;
  *(this + 25) = 0;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 21) = 0;
  *(this + 22) = 0;
  return result;
}

awd::metrics::AvcSidecarVideoStream *awd::metrics::AvcSidecarVideoStream::AvcSidecarVideoStream(awd::metrics::AvcSidecarVideoStream *this, const awd::metrics::AvcSidecarVideoStream *a2)
{
  *this = &unk_2A1D4E290;
  *(this + 88) = 0u;
  *(this + 23) = 0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 104) = 0u;
  *(this + 120) = 0u;
  *(this + 136) = 0u;
  *(this + 152) = 0u;
  *(this + 24) = 0;
  *(this + 25) = 0;
  v3 = MEMORY[0x29EDC9758];
  *(this + 5) = 0;
  *(this + 6) = v3;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 21) = 0;
  *(this + 22) = 0;
  awd::metrics::AvcSidecarVideoStream::MergeFrom(this, a2);
  return this;
}

void sub_2963F0ED8(_Unwind_Exception *a1)
{
  if (*v3)
  {
    MEMORY[0x29C25A1D0](*v3, 0x1000C8000313F17);
  }

  v5 = *(v1 + 19);
  if (v5)
  {
    MEMORY[0x29C25A1D0](v5, 0x1000C8000313F17);
  }

  v6 = *(v1 + 17);
  if (v6)
  {
    MEMORY[0x29C25A1D0](v6, 0x1000C8000313F17);
  }

  v7 = *(v1 + 15);
  if (v7)
  {
    MEMORY[0x29C25A1D0](v7, 0x1000C8000313F17);
  }

  v8 = *(v1 + 13);
  if (v8)
  {
    MEMORY[0x29C25A1D0](v8, 0x1000C8000313F17);
  }

  if (*v2)
  {
    MEMORY[0x29C25A1D0](*v2, 0x1000C8000313F17);
  }

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(v1);
  _Unwind_Resume(a1);
}

void awd::metrics::AvcSidecarVideoStream::MergeFrom(awd::metrics::AvcSidecarVideoStream *this, const awd::metrics::AvcSidecarVideoStream *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v24);
  }

  v4 = *(a2 + 24);
  if (v4)
  {
    wireless_diagnostics::google::protobuf::RepeatedField<unsigned long long>::Reserve(this + 22, *(this + 24) + v4);
    memcpy((*(this + 11) + 8 * *(this + 24)), *(a2 + 11), 8 * *(a2 + 24));
    *(this + 24) += *(a2 + 24);
  }

  v5 = *(a2 + 28);
  if (v5)
  {
    wireless_diagnostics::google::protobuf::RepeatedField<unsigned long long>::Reserve(this + 26, *(this + 28) + v5);
    memcpy((*(this + 13) + 8 * *(this + 28)), *(a2 + 13), 8 * *(a2 + 28));
    *(this + 28) += *(a2 + 28);
  }

  v6 = *(a2 + 32);
  if (v6)
  {
    wireless_diagnostics::google::protobuf::RepeatedField<unsigned long long>::Reserve(this + 30, *(this + 32) + v6);
    memcpy((*(this + 15) + 8 * *(this + 32)), *(a2 + 15), 8 * *(a2 + 32));
    *(this + 32) += *(a2 + 32);
  }

  v7 = *(a2 + 36);
  if (v7)
  {
    wireless_diagnostics::google::protobuf::RepeatedField<unsigned long long>::Reserve(this + 34, *(this + 36) + v7);
    memcpy((*(this + 17) + 8 * *(this + 36)), *(a2 + 17), 8 * *(a2 + 36));
    *(this + 36) += *(a2 + 36);
  }

  v8 = *(a2 + 40);
  if (v8)
  {
    wireless_diagnostics::google::protobuf::RepeatedField<unsigned long long>::Reserve(this + 38, *(this + 40) + v8);
    memcpy((*(this + 19) + 8 * *(this + 40)), *(a2 + 19), 8 * *(a2 + 40));
    *(this + 40) += *(a2 + 40);
  }

  v9 = *(a2 + 48);
  if (v9)
  {
    wireless_diagnostics::google::protobuf::RepeatedField<unsigned long long>::Reserve(this + 46, *(this + 48) + v9);
    memcpy((*(this + 23) + 8 * *(this + 48)), *(a2 + 23), 8 * *(a2 + 48));
    *(this + 48) += *(a2 + 48);
  }

  v10 = *(a2 + 51);
  if (!v10)
  {
    goto LABEL_25;
  }

  if (v10)
  {
    v14 = *(a2 + 1);
    *(this + 51) |= 1u;
    *(this + 1) = v14;
    v10 = *(a2 + 51);
    if ((v10 & 2) == 0)
    {
LABEL_18:
      if ((v10 & 4) == 0)
      {
        goto LABEL_19;
      }

      goto LABEL_35;
    }
  }

  else if ((v10 & 2) == 0)
  {
    goto LABEL_18;
  }

  v15 = *(a2 + 2);
  *(this + 51) |= 2u;
  *(this + 2) = v15;
  v10 = *(a2 + 51);
  if ((v10 & 4) == 0)
  {
LABEL_19:
    if ((v10 & 8) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_36;
  }

LABEL_35:
  v16 = *(a2 + 3);
  *(this + 51) |= 4u;
  *(this + 3) = v16;
  v10 = *(a2 + 51);
  if ((v10 & 8) == 0)
  {
LABEL_20:
    if ((v10 & 0x10) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_37;
  }

LABEL_36:
  v17 = *(a2 + 4);
  *(this + 51) |= 8u;
  *(this + 4) = v17;
  v10 = *(a2 + 51);
  if ((v10 & 0x10) == 0)
  {
LABEL_21:
    if ((v10 & 0x20) == 0)
    {
      goto LABEL_22;
    }

LABEL_38:
    v19 = *(a2 + 6);
    *(this + 51) |= 0x20u;
    v20 = *(this + 6);
    if (v20 == MEMORY[0x29EDC9758])
    {
      operator new();
    }

    std::string::operator=(v20, v19);
    v10 = *(a2 + 51);
    if ((v10 & 0x40) == 0)
    {
LABEL_23:
      if ((v10 & 0x80) == 0)
      {
        goto LABEL_25;
      }

      goto LABEL_24;
    }

    goto LABEL_41;
  }

LABEL_37:
  v18 = *(a2 + 5);
  *(this + 51) |= 0x10u;
  *(this + 5) = v18;
  v10 = *(a2 + 51);
  if ((v10 & 0x20) != 0)
  {
    goto LABEL_38;
  }

LABEL_22:
  if ((v10 & 0x40) == 0)
  {
    goto LABEL_23;
  }

LABEL_41:
  v21 = *(a2 + 7);
  *(this + 51) |= 0x40u;
  *(this + 7) = v21;
  v10 = *(a2 + 51);
  if ((v10 & 0x80) != 0)
  {
LABEL_24:
    v11 = *(a2 + 8);
    *(this + 51) |= 0x80u;
    *(this + 8) = v11;
    v10 = *(a2 + 51);
  }

LABEL_25:
  if ((v10 & 0xFF00) == 0)
  {
    goto LABEL_30;
  }

  if ((v10 & 0x100) != 0)
  {
    v22 = *(a2 + 9);
    *(this + 51) |= 0x100u;
    *(this + 9) = v22;
    v10 = *(a2 + 51);
    if ((v10 & 0x200) == 0)
    {
LABEL_28:
      if ((v10 & 0x8000) == 0)
      {
        goto LABEL_30;
      }

      goto LABEL_29;
    }
  }

  else if ((v10 & 0x200) == 0)
  {
    goto LABEL_28;
  }

  v23 = *(a2 + 10);
  *(this + 51) |= 0x200u;
  *(this + 10) = v23;
  v10 = *(a2 + 51);
  if ((v10 & 0x8000) != 0)
  {
LABEL_29:
    v12 = *(a2 + 21);
    *(this + 51) |= 0x8000u;
    *(this + 21) = v12;
    v10 = *(a2 + 51);
  }

LABEL_30:
  if ((v10 & 0x10000) != 0)
  {
    v13 = *(a2 + 22);
    *(this + 51) |= 0x10000u;
    *(this + 22) = v13;
  }
}

void sub_2963F1340(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::metrics::AvcSidecarVideoStream::~AvcSidecarVideoStream(awd::metrics::AvcSidecarVideoStream *this)
{
  *this = &unk_2A1D4E290;
  awd::metrics::AvcSidecarVideoStream::SharedDtor(this);
  v2 = *(this + 23);
  if (v2)
  {
    MEMORY[0x29C25A1D0](v2, 0x1000C8000313F17);
  }

  v3 = *(this + 19);
  if (v3)
  {
    MEMORY[0x29C25A1D0](v3, 0x1000C8000313F17);
  }

  v4 = *(this + 17);
  if (v4)
  {
    MEMORY[0x29C25A1D0](v4, 0x1000C8000313F17);
  }

  v5 = *(this + 15);
  if (v5)
  {
    MEMORY[0x29C25A1D0](v5, 0x1000C8000313F17);
  }

  v6 = *(this + 13);
  if (v6)
  {
    MEMORY[0x29C25A1D0](v6, 0x1000C8000313F17);
  }

  v7 = *(this + 11);
  if (v7)
  {
    MEMORY[0x29C25A1D0](v7, 0x1000C8000313F17);
  }

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  awd::metrics::AvcSidecarVideoStream::~AvcSidecarVideoStream(this);

  JUMPOUT(0x29C25A1F0);
}

uint64_t awd::metrics::AvcSidecarVideoStream::SharedDtor(uint64_t this)
{
  v1 = *(this + 48);
  if (v1 != MEMORY[0x29EDC9758] && v1 != 0)
  {
    if (*(v1 + 23) < 0)
    {
      operator delete(*v1);
    }

    JUMPOUT(0x29C25A1F0);
  }

  return this;
}

uint64_t awd::metrics::AvcSidecarVideoStream::default_instance(awd::metrics::AvcSidecarVideoStream *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = awd::metrics::AvcSidecarVideoStream::default_instance_;
  if (!awd::metrics::AvcSidecarVideoStream::default_instance_)
  {
    awd::metrics::protobuf_AddDesc_Facetime_2eproto(0, a2, a3, a4);
    return awd::metrics::AvcSidecarVideoStream::default_instance_;
  }

  return result;
}

uint64_t awd::metrics::AvcSidecarVideoStream::Clear(uint64_t this)
{
  v1 = *(this + 204);
  if (v1)
  {
    *(this + 40) = 0;
    *(this + 24) = 0u;
    *(this + 8) = 0u;
    if ((v1 & 0x20) != 0)
    {
      v2 = *(this + 48);
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

    *(this + 56) = 0;
    *(this + 64) = 0;
    v1 = *(this + 204);
  }

  if ((v1 & 0xFF00) != 0)
  {
    *(this + 168) = 0;
    *(this + 72) = 0;
    *(this + 80) = 0;
  }

  if ((v1 & 0xFF0000) != 0)
  {
    *(this + 176) = 0;
  }

  *(this + 96) = 0;
  *(this + 112) = 0;
  *(this + 128) = 0;
  *(this + 144) = 0;
  *(this + 160) = 0;
  *(this + 192) = 0;
  *(this + 204) = 0;
  return this;
}

uint64_t awd::metrics::AvcSidecarVideoStream::MergePartialFromCodedStream(awd::metrics::AvcSidecarVideoStream *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
{
  v5 = MEMORY[0x29EDC9758];
LABEL_2:
  while (2)
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
    switch(TagFallback >> 3)
    {
      case 1u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_57;
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

        *(this + 51) |= 1u;
        if (v12 < v9 && *v12 == 16)
        {
          v22 = v12 + 1;
          *(a2 + 1) = v22;
          goto LABEL_72;
        }

        continue;
      case 2u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_57;
        }

        v22 = *(a2 + 1);
        v9 = *(a2 + 2);
LABEL_72:
        if (v22 >= v9 || (v32 = *v22, v32 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 2);
          if (!result)
          {
            return result;
          }

          v33 = *(a2 + 1);
          v9 = *(a2 + 2);
        }

        else
        {
          *(this + 2) = v32;
          v33 = v22 + 1;
          *(a2 + 1) = v33;
        }

        *(this + 51) |= 2u;
        if (v33 >= v9 || *v33 != 24)
        {
          continue;
        }

        v18 = v33 + 1;
        *(a2 + 1) = v18;
LABEL_80:
        if (v18 >= v9 || (v34 = *v18, v34 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 3);
          if (!result)
          {
            return result;
          }

          v35 = *(a2 + 1);
          v9 = *(a2 + 2);
        }

        else
        {
          *(this + 3) = v34;
          v35 = v18 + 1;
          *(a2 + 1) = v35;
        }

        *(this + 51) |= 4u;
        if (v35 >= v9 || *v35 != 32)
        {
          continue;
        }

        v20 = v35 + 1;
        *(a2 + 1) = v20;
LABEL_88:
        if (v20 >= v9 || (v36 = *v20, v36 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 4);
          if (!result)
          {
            return result;
          }

          v37 = *(a2 + 1);
          v9 = *(a2 + 2);
        }

        else
        {
          *(this + 4) = v36;
          v37 = v20 + 1;
          *(a2 + 1) = v37;
        }

        *(this + 51) |= 8u;
        if (v37 >= v9 || *v37 != 40)
        {
          continue;
        }

        v16 = v37 + 1;
        *(a2 + 1) = v16;
LABEL_96:
        if (v16 >= v9 || (v38 = *v16, v38 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 5);
          if (!result)
          {
            return result;
          }

          v39 = *(a2 + 1);
          v9 = *(a2 + 2);
        }

        else
        {
          *(this + 5) = v38;
          v39 = v16 + 1;
          *(a2 + 1) = v39;
        }

        v23 = *(this + 51) | 0x10;
        *(this + 51) = v23;
        if (v39 >= v9 || *v39 != 50)
        {
          continue;
        }

        *(a2 + 1) = v39 + 1;
LABEL_104:
        *(this + 51) = v23 | 0x20;
        if (*(this + 6) == v5)
        {
          operator new();
        }

        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
        if (!result)
        {
          return result;
        }

        v40 = *(a2 + 1);
        v13 = *(a2 + 2);
        if (v40 >= v13 || *v40 != 56)
        {
          continue;
        }

        v24 = (v40 + 1);
        *(a2 + 1) = v24;
LABEL_110:
        if (v24 >= v13 || (v41 = *v24, v41 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 7);
          if (!result)
          {
            return result;
          }

          v42 = *(a2 + 1);
          v13 = *(a2 + 2);
        }

        else
        {
          *(this + 7) = v41;
          v42 = (v24 + 1);
          *(a2 + 1) = v42;
        }

        *(this + 51) |= 0x40u;
        if (v42 >= v13 || *v42 != 64)
        {
          continue;
        }

        v21 = (v42 + 1);
        *(a2 + 1) = v21;
LABEL_118:
        if (v21 >= v13 || (v43 = *v21, v43 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 8);
          if (!result)
          {
            return result;
          }

          v44 = *(a2 + 1);
          v13 = *(a2 + 2);
        }

        else
        {
          *(this + 8) = v43;
          v44 = (v21 + 1);
          *(a2 + 1) = v44;
        }

        *(this + 51) |= 0x80u;
        if (v44 >= v13 || *v44 != 72)
        {
          continue;
        }

        v25 = (v44 + 1);
        *(a2 + 1) = v25;
LABEL_126:
        if (v25 >= v13 || (v45 = *v25, v45 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 9);
          if (!result)
          {
            return result;
          }

          v46 = *(a2 + 1);
          v13 = *(a2 + 2);
        }

        else
        {
          *(this + 9) = v45;
          v46 = (v25 + 1);
          *(a2 + 1) = v46;
        }

        *(this + 51) |= 0x100u;
        if (v46 >= v13 || *v46 != 80)
        {
          continue;
        }

        v17 = (v46 + 1);
        *(a2 + 1) = v17;
LABEL_134:
        if (v17 >= v13 || (v47 = *v17, v47 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 10);
          if (!result)
          {
            return result;
          }

          v48 = *(a2 + 1);
          v13 = *(a2 + 2);
        }

        else
        {
          *(this + 10) = v47;
          v48 = (v17 + 1);
          *(a2 + 1) = v48;
        }

        *(this + 51) |= 0x200u;
        if (v48 >= v13)
        {
          continue;
        }

        v49 = *v48;
        goto LABEL_141;
      case 3u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_57;
        }

        v18 = *(a2 + 1);
        v9 = *(a2 + 2);
        goto LABEL_80;
      case 4u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_57;
        }

        v20 = *(a2 + 1);
        v9 = *(a2 + 2);
        goto LABEL_88;
      case 5u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_57;
        }

        v16 = *(a2 + 1);
        v9 = *(a2 + 2);
        goto LABEL_96;
      case 6u:
        if (v8 != 2)
        {
          goto LABEL_57;
        }

        v23 = *(this + 51);
        goto LABEL_104;
      case 7u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_57;
        }

        v24 = *(a2 + 1);
        v13 = *(a2 + 2);
        goto LABEL_110;
      case 8u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_57;
        }

        v21 = *(a2 + 1);
        v13 = *(a2 + 2);
        goto LABEL_118;
      case 9u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_57;
        }

        v25 = *(a2 + 1);
        v13 = *(a2 + 2);
        goto LABEL_126;
      case 0xAu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_57;
        }

        v17 = *(a2 + 1);
        v13 = *(a2 + 2);
        goto LABEL_134;
      case 0xBu:
        if ((TagFallback & 7) != 0)
        {
          if (v8 == 2)
          {
            result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadPackedPrimitiveNoInline<unsigned long long,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)4>(a2, this + 11);
            if (!result)
            {
              return result;
            }

            goto LABEL_161;
          }

          goto LABEL_57;
        }

        v31 = *(a2 + 1);
        v13 = *(a2 + 2);
        while (1)
        {
          v117 = 0;
          if (v31 >= v13 || (*v31 & 0x8000000000000000) != 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, &v117))
            {
              return 0;
            }
          }

          else
          {
            v117 = *v31;
            *(a2 + 1) = v31 + 1;
          }

          v50 = *(this + 24);
          v51 = *(this + 25);
          if (v50 == v51)
          {
            wireless_diagnostics::google::protobuf::RepeatedField<unsigned long long>::Reserve(this + 22, v50 + 1);
            v50 = *(this + 24);
            v51 = *(this + 25);
          }

          v52 = v117;
          v53 = *(this + 11);
          v54 = v50 + 1;
          *(this + 24) = v50 + 1;
          *(v53 + 8 * v50) = v52;
          if (v51 - (v50 + 1) >= 1)
          {
            v55 = v51 - v50;
            do
            {
              v56 = *(a2 + 1);
              v57 = *(a2 + 2);
              if (v56 >= v57 || *v56 != 88)
              {
                break;
              }

              *(a2 + 1) = v56 + 1;
              if ((v56 + 1) >= v57 || (v56[1] & 0x8000000000000000) != 0)
              {
                if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, &v117))
                {
                  return 0;
                }

                v54 = *(this + 24);
              }

              else
              {
                v117 = v56[1];
                *(a2 + 1) = v56 + 2;
              }

              if (v54 >= *(this + 25))
              {
                wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v118);
                v54 = *(this + 24);
              }

              v58 = v117;
              v59 = *(this + 11);
              *(this + 24) = v54 + 1;
              *(v59 + 8 * v54) = v58;
              --v55;
              ++v54;
            }

            while (v55 > 1);
          }

LABEL_161:
          v48 = *(a2 + 1);
          v13 = *(a2 + 2);
          if (v48 >= v13)
          {
            goto LABEL_2;
          }

          v49 = *v48;
          if (v49 == 96)
          {
            goto LABEL_163;
          }

LABEL_141:
          if (v49 != 88)
          {
            goto LABEL_2;
          }

          v31 = (v48 + 1);
          *(a2 + 1) = v31;
        }

      case 0xCu:
        if ((TagFallback & 7) != 0)
        {
          if (v8 == 2)
          {
            result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadPackedPrimitiveNoInline<unsigned long long,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)4>(a2, this + 13);
            if (!result)
            {
              return result;
            }

            goto LABEL_182;
          }

          goto LABEL_57;
        }

        v27 = *(a2 + 1);
        v13 = *(a2 + 2);
        while (1)
        {
          v117 = 0;
          if (v27 >= v13 || (*v27 & 0x8000000000000000) != 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, &v117))
            {
              return 0;
            }
          }

          else
          {
            v117 = *v27;
            *(a2 + 1) = v27 + 1;
          }

          v60 = *(this + 28);
          v61 = *(this + 29);
          if (v60 == v61)
          {
            wireless_diagnostics::google::protobuf::RepeatedField<unsigned long long>::Reserve(this + 26, v60 + 1);
            v60 = *(this + 28);
            v61 = *(this + 29);
          }

          v62 = v117;
          v63 = *(this + 13);
          v64 = v60 + 1;
          *(this + 28) = v60 + 1;
          *(v63 + 8 * v60) = v62;
          if (v61 - (v60 + 1) >= 1)
          {
            v65 = v61 - v60;
            do
            {
              v66 = *(a2 + 1);
              v67 = *(a2 + 2);
              if (v66 >= v67 || *v66 != 96)
              {
                break;
              }

              *(a2 + 1) = v66 + 1;
              if ((v66 + 1) >= v67 || (v66[1] & 0x8000000000000000) != 0)
              {
                if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, &v117))
                {
                  return 0;
                }

                v64 = *(this + 28);
              }

              else
              {
                v117 = v66[1];
                *(a2 + 1) = v66 + 2;
              }

              if (v64 >= *(this + 29))
              {
                wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v118);
                v64 = *(this + 28);
              }

              v68 = v117;
              v69 = *(this + 13);
              *(this + 28) = v64 + 1;
              *(v69 + 8 * v64) = v68;
              --v65;
              ++v64;
            }

            while (v65 > 1);
          }

LABEL_182:
          v48 = *(a2 + 1);
          v13 = *(a2 + 2);
          if (v48 >= v13)
          {
            goto LABEL_2;
          }

          v70 = *v48;
          if (v70 == 104)
          {
            goto LABEL_186;
          }

          if (v70 != 96)
          {
            goto LABEL_2;
          }

LABEL_163:
          v27 = (v48 + 1);
          *(a2 + 1) = v27;
        }

      case 0xDu:
        if ((TagFallback & 7) != 0)
        {
          if (v8 == 2)
          {
            result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadPackedPrimitiveNoInline<unsigned long long,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)4>(a2, this + 15);
            if (!result)
            {
              return result;
            }

            goto LABEL_205;
          }

          goto LABEL_57;
        }

        v28 = *(a2 + 1);
        v13 = *(a2 + 2);
        while (1)
        {
          v117 = 0;
          if (v28 >= v13 || (*v28 & 0x8000000000000000) != 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, &v117))
            {
              return 0;
            }
          }

          else
          {
            v117 = *v28;
            *(a2 + 1) = v28 + 1;
          }

          v71 = *(this + 32);
          v72 = *(this + 33);
          if (v71 == v72)
          {
            wireless_diagnostics::google::protobuf::RepeatedField<unsigned long long>::Reserve(this + 30, v71 + 1);
            v71 = *(this + 32);
            v72 = *(this + 33);
          }

          v73 = v117;
          v74 = *(this + 15);
          v75 = v71 + 1;
          *(this + 32) = v71 + 1;
          *(v74 + 8 * v71) = v73;
          if (v72 - (v71 + 1) >= 1)
          {
            v76 = v72 - v71;
            do
            {
              v77 = *(a2 + 1);
              v78 = *(a2 + 2);
              if (v77 >= v78 || *v77 != 104)
              {
                break;
              }

              *(a2 + 1) = v77 + 1;
              if ((v77 + 1) >= v78 || (v77[1] & 0x8000000000000000) != 0)
              {
                if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, &v117))
                {
                  return 0;
                }

                v75 = *(this + 32);
              }

              else
              {
                v117 = v77[1];
                *(a2 + 1) = v77 + 2;
              }

              if (v75 >= *(this + 33))
              {
                wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v118);
                v75 = *(this + 32);
              }

              v79 = v117;
              v80 = *(this + 15);
              *(this + 32) = v75 + 1;
              *(v80 + 8 * v75) = v79;
              --v76;
              ++v75;
            }

            while (v76 > 1);
          }

LABEL_205:
          v48 = *(a2 + 1);
          v13 = *(a2 + 2);
          if (v48 >= v13)
          {
            goto LABEL_2;
          }

          v81 = *v48;
          if (v81 == 112)
          {
            goto LABEL_209;
          }

          if (v81 != 104)
          {
            goto LABEL_2;
          }

LABEL_186:
          v28 = (v48 + 1);
          *(a2 + 1) = v28;
        }

      case 0xEu:
        if ((TagFallback & 7) != 0)
        {
          if (v8 == 2)
          {
            result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadPackedPrimitiveNoInline<unsigned long long,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)4>(a2, this + 17);
            if (!result)
            {
              return result;
            }

            goto LABEL_228;
          }

          goto LABEL_57;
        }

        v30 = *(a2 + 1);
        v13 = *(a2 + 2);
        while (1)
        {
          v117 = 0;
          if (v30 >= v13 || (*v30 & 0x8000000000000000) != 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, &v117))
            {
              return 0;
            }
          }

          else
          {
            v117 = *v30;
            *(a2 + 1) = v30 + 1;
          }

          v82 = *(this + 36);
          v83 = *(this + 37);
          if (v82 == v83)
          {
            wireless_diagnostics::google::protobuf::RepeatedField<unsigned long long>::Reserve(this + 34, v82 + 1);
            v82 = *(this + 36);
            v83 = *(this + 37);
          }

          v84 = v117;
          v85 = *(this + 17);
          v86 = v82 + 1;
          *(this + 36) = v82 + 1;
          *(v85 + 8 * v82) = v84;
          if (v83 - (v82 + 1) >= 1)
          {
            v87 = v83 - v82;
            do
            {
              v88 = *(a2 + 1);
              v89 = *(a2 + 2);
              if (v88 >= v89 || *v88 != 112)
              {
                break;
              }

              *(a2 + 1) = v88 + 1;
              if ((v88 + 1) >= v89 || (v88[1] & 0x8000000000000000) != 0)
              {
                if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, &v117))
                {
                  return 0;
                }

                v86 = *(this + 36);
              }

              else
              {
                v117 = v88[1];
                *(a2 + 1) = v88 + 2;
              }

              if (v86 >= *(this + 37))
              {
                wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v118);
                v86 = *(this + 36);
              }

              v90 = v117;
              v91 = *(this + 17);
              *(this + 36) = v86 + 1;
              *(v91 + 8 * v86) = v90;
              --v87;
              ++v86;
            }

            while (v87 > 1);
          }

LABEL_228:
          v48 = *(a2 + 1);
          v13 = *(a2 + 2);
          if (v48 >= v13)
          {
            goto LABEL_2;
          }

          v92 = *v48;
          if (v92 == 120)
          {
            goto LABEL_232;
          }

          if (v92 != 112)
          {
            goto LABEL_2;
          }

LABEL_209:
          v30 = (v48 + 1);
          *(a2 + 1) = v30;
        }

      case 0xFu:
        if ((TagFallback & 7) == 0)
        {
          v26 = *(a2 + 1);
          v13 = *(a2 + 2);
          while (1)
          {
            v117 = 0;
            if (v26 >= v13 || (*v26 & 0x8000000000000000) != 0)
            {
              if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, &v117))
              {
                return 0;
              }
            }

            else
            {
              v117 = *v26;
              *(a2 + 1) = v26 + 1;
            }

            v93 = *(this + 40);
            v94 = *(this + 41);
            if (v93 == v94)
            {
              wireless_diagnostics::google::protobuf::RepeatedField<unsigned long long>::Reserve(this + 38, v93 + 1);
              v93 = *(this + 40);
              v94 = *(this + 41);
            }

            v95 = v117;
            v96 = *(this + 19);
            v97 = v93 + 1;
            *(this + 40) = v93 + 1;
            *(v96 + 8 * v93) = v95;
            if (v94 - (v93 + 1) >= 1)
            {
              v98 = v94 - v93;
              do
              {
                v99 = *(a2 + 1);
                v100 = *(a2 + 2);
                if (v99 >= v100 || *v99 != 120)
                {
                  break;
                }

                *(a2 + 1) = v99 + 1;
                if ((v99 + 1) >= v100 || (v99[1] & 0x8000000000000000) != 0)
                {
                  if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, &v117))
                  {
                    return 0;
                  }

                  v97 = *(this + 40);
                }

                else
                {
                  v117 = v99[1];
                  *(a2 + 1) = v99 + 2;
                }

                if (v97 >= *(this + 41))
                {
                  wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                  wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                  wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v118);
                  v97 = *(this + 40);
                }

                v101 = v117;
                v102 = *(this + 19);
                *(this + 40) = v97 + 1;
                *(v102 + 8 * v97) = v101;
                --v98;
                ++v97;
              }

              while (v98 > 1);
            }

LABEL_251:
            v48 = *(a2 + 1);
            v13 = *(a2 + 2);
            if (v48 >= v13 || *v48 != 120)
            {
              break;
            }

LABEL_232:
            v26 = (v48 + 1);
            *(a2 + 1) = v26;
          }

          if (v13 - v48 >= 2 && *v48 == 128 && v48[1] == 1)
          {
            v19 = (v48 + 2);
            *(a2 + 1) = v19;
LABEL_257:
            if (v19 >= v13 || (v103 = *v19, v103 < 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 21);
              if (!result)
              {
                return result;
              }

              v104 = *(a2 + 1);
              v13 = *(a2 + 2);
            }

            else
            {
              *(this + 21) = v103;
              v104 = (v19 + 1);
              *(a2 + 1) = v104;
            }

            *(this + 51) |= 0x8000u;
            if (v13 - v104 >= 2 && *v104 == 136 && v104[1] == 1)
            {
              v14 = (v104 + 2);
              *(a2 + 1) = v14;
LABEL_266:
              if (v14 >= v13 || (v105 = *v14, v105 < 0))
              {
                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 22);
                if (!result)
                {
                  return result;
                }

                v106 = *(a2 + 1);
                v13 = *(a2 + 2);
              }

              else
              {
                *(this + 22) = v105;
                v106 = (v14 + 1);
                *(a2 + 1) = v106;
              }

              *(this + 51) |= 0x10000u;
              if (v13 - v106 >= 2 && *v106 == 144 && v106[1] == 1)
              {
                do
                {
                  v29 = (v106 + 2);
                  *(a2 + 1) = v29;
LABEL_275:
                  v117 = 0;
                  if (v29 >= v13 || (*v29 & 0x8000000000000000) != 0)
                  {
                    if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, &v117))
                    {
                      return 0;
                    }
                  }

                  else
                  {
                    v117 = *v29;
                    *(a2 + 1) = v29 + 1;
                  }

                  v107 = *(this + 48);
                  v108 = *(this + 49);
                  if (v107 == v108)
                  {
                    wireless_diagnostics::google::protobuf::RepeatedField<unsigned long long>::Reserve(this + 46, v107 + 1);
                    v107 = *(this + 48);
                    v108 = *(this + 49);
                  }

                  v109 = v117;
                  v110 = *(this + 23);
                  v111 = v107 + 1;
                  *(this + 48) = v107 + 1;
                  *(v110 + 8 * v107) = v109;
                  if (v108 - (v107 + 1) >= 1)
                  {
                    v112 = v108 - v107;
                    do
                    {
                      v113 = *(a2 + 1);
                      v114 = *(a2 + 2);
                      if (v114 - v113 < 2 || *v113 != 144 || v113[1] != 1)
                      {
                        break;
                      }

                      *(a2 + 1) = v113 + 2;
                      if ((v113 + 2) >= v114 || (v113[2] & 0x8000000000000000) != 0)
                      {
                        if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, &v117))
                        {
                          return 0;
                        }

                        v111 = *(this + 48);
                      }

                      else
                      {
                        v117 = v113[2];
                        *(a2 + 1) = v113 + 3;
                      }

                      if (v111 >= *(this + 49))
                      {
                        wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                        wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                        wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                        wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v118);
                        v111 = *(this + 48);
                      }

                      v115 = v117;
                      v116 = *(this + 23);
                      *(this + 48) = v111 + 1;
                      *(v116 + 8 * v111) = v115;
                      --v112;
                      ++v111;
                    }

                    while (v112 > 1);
                  }

LABEL_294:
                  v106 = *(a2 + 1);
                  v13 = *(a2 + 2);
                }

                while (v13 - v106 >= 2 && *v106 == 144 && v106[1] == 1);
                if (v106 == v13 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
                {
                  *(a2 + 8) = 0;
                  result = 1;
                  *(a2 + 36) = 1;
                  return result;
                }
              }
            }
          }

          continue;
        }

        if (v8 == 2)
        {
          result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadPackedPrimitiveNoInline<unsigned long long,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)4>(a2, this + 19);
          if (!result)
          {
            return result;
          }

          goto LABEL_251;
        }

LABEL_57:
        if (v8 != 4)
        {
          if ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(a2, TagFallback) & 1) == 0)
          {
            return 0;
          }

          continue;
        }

        return 1;
      case 0x10u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_57;
        }

        v19 = *(a2 + 1);
        v13 = *(a2 + 2);
        goto LABEL_257;
      case 0x11u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_57;
        }

        v14 = *(a2 + 1);
        v13 = *(a2 + 2);
        goto LABEL_266;
      case 0x12u:
        if ((TagFallback & 7) == 0)
        {
          v29 = *(a2 + 1);
          v13 = *(a2 + 2);
          goto LABEL_275;
        }

        if (v8 != 2)
        {
          goto LABEL_57;
        }

        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadPackedPrimitiveNoInline<unsigned long long,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)4>(a2, this + 23);
        if (!result)
        {
          return result;
        }

        goto LABEL_294;
      default:
        goto LABEL_57;
    }
  }
}

void sub_2963F2588(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadPackedPrimitiveNoInline<unsigned long long,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)4>(wireless_diagnostics::google::protobuf::io::CodedInputStream *this, uint64_t *a2)
{
  v11 = 0;
  v4 = *(this + 1);
  if (v4 >= *(this + 2) || *v4 < 0)
  {
    result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v11);
    if (!result)
    {
      return result;
    }
  }

  else
  {
    v11 = *v4;
    *(this + 1) = v4 + 1;
  }

  wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this);
  if (wireless_diagnostics::google::protobuf::io::CodedInputStream::BytesUntilLimit(this) >= 1)
  {
    do
    {
      v10 = 0;
      v6 = *(this + 1);
      if (v6 >= *(this + 2) || (*v6 & 0x8000000000000000) != 0)
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(this, &v10);
        if (!result)
        {
          return result;
        }
      }

      else
      {
        v10 = *v6;
        *(this + 1) = v6 + 1;
      }

      v7 = *(a2 + 2);
      if (v7 == *(a2 + 3))
      {
        wireless_diagnostics::google::protobuf::RepeatedField<unsigned long long>::Reserve(a2, v7 + 1);
        v7 = *(a2 + 2);
      }

      v8 = v10;
      v9 = *a2;
      *(a2 + 2) = v7 + 1;
      *(v9 + 8 * v7) = v8;
    }

    while (wireless_diagnostics::google::protobuf::io::CodedInputStream::BytesUntilLimit(this) > 0);
  }

  wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this);
  return 1;
}

uint64_t awd::metrics::AvcSidecarVideoStream::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 204);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(1, *(this + 8), a2, a4);
    v6 = *(v5 + 204);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_37;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(2, *(v5 + 16), a2, a4);
  v6 = *(v5 + 204);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_38;
  }

LABEL_37:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(3, *(v5 + 24), a2, a4);
  v6 = *(v5 + 204);
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_39;
  }

LABEL_38:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(4, *(v5 + 32), a2, a4);
  v6 = *(v5 + 204);
  if ((v6 & 0x10) == 0)
  {
LABEL_6:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_40;
  }

LABEL_39:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(5, *(v5 + 40), a2, a4);
  v6 = *(v5 + 204);
  if ((v6 & 0x20) == 0)
  {
LABEL_7:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_41;
  }

LABEL_40:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
  v6 = *(v5 + 204);
  if ((v6 & 0x40) == 0)
  {
LABEL_8:
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_42;
  }

LABEL_41:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(7, *(v5 + 56), a2, a4);
  v6 = *(v5 + 204);
  if ((v6 & 0x80) == 0)
  {
LABEL_9:
    if ((v6 & 0x100) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_43;
  }

LABEL_42:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(8, *(v5 + 64), a2, a4);
  v6 = *(v5 + 204);
  if ((v6 & 0x100) == 0)
  {
LABEL_10:
    if ((v6 & 0x200) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

LABEL_43:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(9, *(v5 + 72), a2, a4);
  if ((*(v5 + 204) & 0x200) != 0)
  {
LABEL_11:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(0xA, *(v5 + 80), a2, a4);
  }

LABEL_12:
  if (*(v5 + 96) >= 1)
  {
    v7 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(0xB, *(*(v5 + 88) + 8 * v7++), a2, a4);
    }

    while (v7 < *(v5 + 96));
  }

  if (*(v5 + 112) >= 1)
  {
    v8 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(0xC, *(*(v5 + 104) + 8 * v8++), a2, a4);
    }

    while (v8 < *(v5 + 112));
  }

  if (*(v5 + 128) >= 1)
  {
    v9 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(0xD, *(*(v5 + 120) + 8 * v9++), a2, a4);
    }

    while (v9 < *(v5 + 128));
  }

  if (*(v5 + 144) >= 1)
  {
    v10 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(0xE, *(*(v5 + 136) + 8 * v10++), a2, a4);
    }

    while (v10 < *(v5 + 144));
  }

  if (*(v5 + 160) >= 1)
  {
    v11 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(0xF, *(*(v5 + 152) + 8 * v11++), a2, a4);
    }

    while (v11 < *(v5 + 160));
  }

  v12 = *(v5 + 204);
  if ((v12 & 0x8000) != 0)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(0x10, *(v5 + 168), a2, a4);
    v12 = *(v5 + 204);
  }

  if ((v12 & 0x10000) != 0)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(0x11, *(v5 + 176), a2, a4);
  }

  if (*(v5 + 192) >= 1)
  {
    v13 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(0x12, *(*(v5 + 184) + 8 * v13++), a2, a4);
    }

    while (v13 < *(v5 + 192));
  }

  return this;
}

uint64_t awd::metrics::AvcSidecarVideoStream::ByteSize(wireless_diagnostics::google::protobuf::io::CodedOutputStream **this, unint64_t a2)
{
  v2 = this;
  v3 = *(this + 51);
  if (!v3)
  {
    v4 = 0;
    goto LABEL_15;
  }

  if (v3)
  {
    v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(this[1]) + 1;
    v3 = *(v2 + 51);
    if ((v3 & 2) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v4 = 0;
  if ((v3 & 2) != 0)
  {
LABEL_7:
    v4 += wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(v2[2]) + 1;
    v3 = *(v2 + 51);
  }

LABEL_8:
  if ((v3 & 4) != 0)
  {
    v4 += wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(v2[3]) + 1;
    v3 = *(v2 + 51);
    if ((v3 & 8) == 0)
    {
LABEL_10:
      if ((v3 & 0x10) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_55;
    }
  }

  else if ((v3 & 8) == 0)
  {
    goto LABEL_10;
  }

  v4 += wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(v2[4]) + 1;
  v3 = *(v2 + 51);
  if ((v3 & 0x10) == 0)
  {
LABEL_11:
    if ((v3 & 0x20) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_56;
  }

LABEL_55:
  v4 += wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(v2[5]) + 1;
  v3 = *(v2 + 51);
  if ((v3 & 0x20) == 0)
  {
LABEL_12:
    if ((v3 & 0x40) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_68;
  }

LABEL_56:
  v24 = v2;
  v25 = v2[6];
  v26 = *(v25 + 23);
  v27 = v26;
  v28 = *(v25 + 1);
  if ((v26 & 0x80u) == 0)
  {
    v29 = *(v25 + 23);
  }

  else
  {
    v29 = v28;
  }

  if (v29 >= 0x80)
  {
    v30 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v29);
    v26 = *(v25 + 23);
    v28 = *(v25 + 1);
    v3 = *(v24 + 51);
    v27 = *(v25 + 23);
  }

  else
  {
    v30 = 1;
  }

  v2 = v24;
  if (v27 < 0)
  {
    v26 = v28;
  }

  v4 += v30 + v26 + 1;
  if ((v3 & 0x40) == 0)
  {
LABEL_13:
    if ((v3 & 0x80) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

LABEL_68:
  v4 += wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(v2[7]) + 1;
  v3 = *(v2 + 51);
  if ((v3 & 0x80) != 0)
  {
LABEL_14:
    v4 += wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(v2[8]) + 1;
    v3 = *(v2 + 51);
  }

LABEL_15:
  if ((v3 & 0xFF00) == 0)
  {
    goto LABEL_20;
  }

  if ((v3 & 0x100) != 0)
  {
    v4 += wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(v2[9]) + 1;
    v3 = *(v2 + 51);
    if ((v3 & 0x200) == 0)
    {
LABEL_18:
      if ((v3 & 0x8000) == 0)
      {
        goto LABEL_20;
      }

      goto LABEL_19;
    }
  }

  else if ((v3 & 0x200) == 0)
  {
    goto LABEL_18;
  }

  v4 += wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(v2[10]) + 1;
  v3 = *(v2 + 51);
  if ((v3 & 0x8000) != 0)
  {
LABEL_19:
    v4 += wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(v2[21]) + 2;
    v3 = *(v2 + 51);
  }

LABEL_20:
  if ((v3 & 0x10000) != 0)
  {
    v4 += wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(v2[22]) + 2;
  }

  LODWORD(v5) = *(v2 + 24);
  if (v5 < 1)
  {
    v7 = 0;
  }

  else
  {
    v6 = 0;
    v7 = 0;
    do
    {
      v7 += wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(v2[11] + v6++));
      v5 = *(v2 + 24);
    }

    while (v6 < v5);
  }

  v33 = v5;
  LODWORD(v5) = *(v2 + 28);
  if (v5 < 1)
  {
    v9 = 0;
  }

  else
  {
    v8 = 0;
    v9 = 0;
    do
    {
      v9 += wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(v2[13] + v8++));
      v5 = *(v2 + 28);
    }

    while (v8 < v5);
  }

  v32 = v5;
  LODWORD(v10) = *(v2 + 32);
  if (v10 < 1)
  {
    v12 = 0;
  }

  else
  {
    v11 = 0;
    v12 = 0;
    do
    {
      v12 += wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(v2[15] + v11++));
      v10 = *(v2 + 32);
    }

    while (v11 < v10);
  }

  LODWORD(v13) = *(v2 + 36);
  v34 = v7;
  if (v13 < 1)
  {
    v15 = 0;
  }

  else
  {
    v14 = 0;
    v15 = 0;
    do
    {
      v15 += wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(v2[17] + v14++));
      v13 = *(v2 + 36);
    }

    while (v14 < v13);
  }

  LODWORD(v16) = *(v2 + 40);
  if (v16 < 1)
  {
    v18 = 0;
  }

  else
  {
    v17 = 0;
    v18 = 0;
    do
    {
      v18 += wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(v2[19] + v17++));
      v16 = *(v2 + 40);
    }

    while (v17 < v16);
  }

  LODWORD(v19) = *(v2 + 48);
  if (v19 < 1)
  {
    v22 = 0;
  }

  else
  {
    v31 = v4;
    v20 = v2;
    v21 = 0;
    v22 = 0;
    do
    {
      v22 += wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(v20[23] + v21++));
      v19 = *(v20 + 48);
    }

    while (v21 < v19);
    v2 = v20;
    v4 = v31;
  }

  result = (v34 + v4 + v33 + v9 + v32 + v12 + v10 + v15 + v13 + v18 + v16 + v22 + 2 * v19);
  *(v2 + 50) = result;
  return result;
}