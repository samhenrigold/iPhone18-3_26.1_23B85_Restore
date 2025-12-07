uint64_t awd::metrics::LocationCompassSaturations::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
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

      goto LABEL_13;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(2, *(v5 + 16), a2, a4);
  v6 = *(v5 + 60);
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
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(3, *(v5 + 24), a2, a4);
  v6 = *(v5 + 60);
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
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(4, *(v5 + 32), a2, a4);
  v6 = *(v5 + 60);
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
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(5, *(v5 + 36), a2, a4);
  v6 = *(v5 + 60);
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
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(6, a2, *(v5 + 40), a3);
  v6 = *(v5 + 60);
  if ((v6 & 0x40) == 0)
  {
LABEL_8:
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_9;
    }

LABEL_18:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(8, *(v5 + 48), a2, a4);
    if ((*(v5 + 60) & 0x100) == 0)
    {
      return this;
    }

    goto LABEL_19;
  }

LABEL_17:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(7, *(v5 + 44), a2, a4);
  v6 = *(v5 + 60);
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
  v7 = *(v5 + 52);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(9, v7, a2, a4);
}

uint64_t awd::metrics::LocationCompassSaturations::ByteSize(awd::metrics::LocationCompassSaturations *this, unint64_t a2)
{
  v3 = *(this + 15);
  if (!v3)
  {
    v4 = 0;
    if ((v3 & 0x100) == 0)
    {
      goto LABEL_49;
    }

    goto LABEL_45;
  }

  if (v3)
  {
    LODWORD(v4) = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 1)) + 1;
    v3 = *(this + 15);
    if ((v3 & 2) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  LODWORD(v4) = 0;
  if ((v3 & 2) != 0)
  {
LABEL_8:
    LODWORD(v4) = v4 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 2)) + 1;
    v3 = *(this + 15);
  }

LABEL_9:
  if ((v3 & 4) != 0)
  {
    LODWORD(v4) = v4 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 3)) + 1;
    v3 = *(this + 15);
    if ((v3 & 8) == 0)
    {
LABEL_11:
      if ((v3 & 0x10) == 0)
      {
        goto LABEL_26;
      }

      goto LABEL_20;
    }
  }

  else if ((v3 & 8) == 0)
  {
    goto LABEL_11;
  }

  v5 = *(this + 8);
  if ((v5 & 0x80000000) != 0)
  {
    v6 = 11;
  }

  else if (v5 >= 0x80)
  {
    v6 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5) + 1;
    v3 = *(this + 15);
  }

  else
  {
    v6 = 2;
  }

  LODWORD(v4) = v6 + v4;
  if ((v3 & 0x10) != 0)
  {
LABEL_20:
    v7 = *(this + 9);
    if ((v7 & 0x80000000) != 0)
    {
      v8 = 11;
    }

    else if (v7 >= 0x80)
    {
      v8 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v7) + 1;
      v3 = *(this + 15);
    }

    else
    {
      v8 = 2;
    }

    LODWORD(v4) = v8 + v4;
  }

LABEL_26:
  if ((v3 & 0x20) != 0)
  {
    v4 = (v4 + 5);
  }

  else
  {
    v4 = v4;
  }

  if ((v3 & 0x40) != 0)
  {
    v9 = *(this + 11);
    if ((v9 & 0x80000000) != 0)
    {
      v10 = 11;
    }

    else if (v9 >= 0x80)
    {
      v10 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v9) + 1;
      v3 = *(this + 15);
    }

    else
    {
      v10 = 2;
    }

    v4 = (v10 + v4);
    if ((v3 & 0x80) == 0)
    {
LABEL_31:
      if ((v3 & 0x100) == 0)
      {
        goto LABEL_49;
      }

      goto LABEL_45;
    }
  }

  else if ((v3 & 0x80) == 0)
  {
    goto LABEL_31;
  }

  v11 = *(this + 12);
  if ((v11 & 0x80000000) != 0)
  {
    v12 = 11;
  }

  else if (v11 >= 0x80)
  {
    v12 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v11) + 1;
    v3 = *(this + 15);
  }

  else
  {
    v12 = 2;
  }

  v4 = (v12 + v4);
  if ((v3 & 0x100) != 0)
  {
LABEL_45:
    v13 = *(this + 13);
    if (v13 >= 0x80)
    {
      v14 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v13) + 1;
    }

    else
    {
      v14 = 2;
    }

    v4 = (v14 + v4);
  }

LABEL_49:
  *(this + 14) = v4;
  return v4;
}

void awd::metrics::LocationCompassSaturations::CheckTypeAndMergeFrom(awd::metrics::LocationCompassSaturations *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  {
    awd::metrics::LocationCompassSaturations::CheckTypeAndMergeFrom();
  }

  awd::metrics::LocationCompassSaturations::MergeFrom(this, lpsrc);
}

void awd::metrics::LocationCompassSaturations::CopyFrom(awd::metrics::LocationCompassSaturations *this, const awd::metrics::LocationCompassSaturations *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    awd::metrics::LocationCompassSaturations::MergeFrom(this, a2);
  }
}

float awd::metrics::LocationCompassSaturations::Swap(awd::metrics::LocationCompassSaturations *this, awd::metrics::LocationCompassSaturations *a2)
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
    LODWORD(v4) = *(this + 8);
    *(this + 8) = *(a2 + 8);
    *(a2 + 8) = v4;
    LODWORD(v4) = *(this + 9);
    *(this + 9) = *(a2 + 9);
    *(a2 + 9) = v4;
    result = *(this + 10);
    *(this + 10) = *(a2 + 10);
    *(a2 + 10) = result;
    LODWORD(v4) = *(this + 11);
    *(this + 11) = *(a2 + 11);
    *(a2 + 11) = v4;
    LODWORD(v4) = *(this + 12);
    *(this + 12) = *(a2 + 12);
    *(a2 + 12) = v4;
    LODWORD(v4) = *(this + 13);
    *(this + 13) = *(a2 + 13);
    *(a2 + 13) = v4;
    LODWORD(v4) = *(this + 15);
    *(this + 15) = *(a2 + 15);
    *(a2 + 15) = v4;
    LODWORD(v4) = *(this + 14);
    *(this + 14) = *(a2 + 14);
    *(a2 + 14) = v4;
  }

  return result;
}

uint64_t awd::metrics::MotionState::SharedCtor(uint64_t this)
{
  *(this + 32) = 0;
  v1 = MEMORY[0x29EDC9758];
  *(this + 8) = 0;
  *(this + 16) = v1;
  *(this + 24) = 0;
  *(this + 28) = 0;
  return this;
}

awd::metrics::MotionState *awd::metrics::MotionState::MotionState(awd::metrics::MotionState *this, const awd::metrics::MotionState *a2)
{
  *(this + 4) = 0;
  *this = &unk_2A1D4F020;
  *(this + 1) = 0;
  *(this + 2) = MEMORY[0x29EDC9758];
  *(this + 6) = 0;
  *(this + 28) = 0;
  awd::metrics::MotionState::MergeFrom(this, a2);
  return this;
}

void awd::metrics::MotionState::MergeFrom(awd::metrics::MotionState *this, const awd::metrics::MotionState *a2)
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

        goto LABEL_14;
      }
    }

    else if ((*(a2 + 36) & 2) == 0)
    {
      goto LABEL_6;
    }

    v7 = *(a2 + 2);
    *(this + 9) |= 2u;
    v8 = *(this + 2);
    if (v8 == MEMORY[0x29EDC9758])
    {
      operator new();
    }

    std::string::operator=(v8, v7);
    v4 = *(a2 + 9);
    if ((v4 & 4) == 0)
    {
LABEL_7:
      if ((v4 & 8) == 0)
      {
        return;
      }

      goto LABEL_8;
    }

LABEL_14:
    v9 = *(a2 + 6);
    *(this + 9) |= 4u;
    *(this + 6) = v9;
    if ((*(a2 + 9) & 8) == 0)
    {
      return;
    }

LABEL_8:
    v5 = *(a2 + 28);
    *(this + 9) |= 8u;
    *(this + 28) = v5;
  }
}

void sub_296417C90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::metrics::MotionState::~MotionState(awd::metrics::MotionState *this)
{
  *this = &unk_2A1D4F020;
  awd::metrics::MotionState::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2A1D4F020;
  awd::metrics::MotionState::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2A1D4F020;
  awd::metrics::MotionState::SharedDtor(this);
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  JUMPOUT(0x29C25A730);
}

uint64_t awd::metrics::MotionState::SharedDtor(uint64_t this)
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

uint64_t awd::metrics::MotionState::default_instance(awd::metrics::MotionState *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = awd::metrics::MotionState::default_instance_;
  if (!awd::metrics::MotionState::default_instance_)
  {
    awd::metrics::protobuf_AddDesc_Location_2eproto(0, a2, a3, a4);
    return awd::metrics::MotionState::default_instance_;
  }

  return result;
}

uint64_t awd::metrics::MotionState::Clear(uint64_t this)
{
  v1 = *(this + 36);
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
    *(this + 28) = 0;
  }

  *(this + 36) = 0;
  return this;
}

uint64_t awd::metrics::MotionState::MergePartialFromCodedStream(awd::metrics::MotionState *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
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
      if (TagFallback >> 3 > 2)
      {
        break;
      }

      if (v8 == 1)
      {
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_21;
        }

        v14 = *(a2 + 1);
        v13 = *(a2 + 2);
        if (v14 >= v13 || (v15 = *v14, v15 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 1);
          if (!result)
          {
            return result;
          }

          v16 = *(a2 + 1);
          v13 = *(a2 + 2);
        }

        else
        {
          *(this + 1) = v15;
          v16 = v14 + 1;
          *(a2 + 1) = v16;
        }

        v10 = *(this + 9) | 1;
        *(this + 9) = v10;
        if (v16 < v13 && *v16 == 18)
        {
          *(a2 + 1) = v16 + 1;
          goto LABEL_30;
        }
      }

      else
      {
        if (v8 != 2 || v9 != 2)
        {
          goto LABEL_21;
        }

        v10 = *(this + 9);
LABEL_30:
        *(this + 9) = v10 | 2;
        if (*(this + 2) == v5)
        {
          operator new();
        }

        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
        if (!result)
        {
          return result;
        }

        v18 = *(a2 + 1);
        v11 = *(a2 + 2);
        if (v18 < v11 && *v18 == 24)
        {
          v17 = v18 + 1;
          *(a2 + 1) = v17;
LABEL_36:
          v25 = 0;
          if (v17 >= v11 || (v19 = *v17, (v19 & 0x80000000) != 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v25);
            if (!result)
            {
              return result;
            }

            v19 = v25;
            v20 = *(a2 + 1);
            v11 = *(a2 + 2);
          }

          else
          {
            v20 = v17 + 1;
            *(a2 + 1) = v20;
          }

          *(this + 6) = v19;
          *(this + 9) |= 4u;
          if (v20 < v11 && *v20 == 32)
          {
            v12 = v20 + 1;
            *(a2 + 1) = v12;
LABEL_44:
            v24 = 0;
            if (v12 >= v11 || (v21 = *v12, (v21 & 0x80000000) != 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v24);
              if (!result)
              {
                return result;
              }

              v21 = v24;
              v22 = *(a2 + 1);
              v11 = *(a2 + 2);
            }

            else
            {
              v22 = v12 + 1;
              *(a2 + 1) = v22;
            }

            *(this + 28) = v21 != 0;
            *(this + 9) |= 8u;
            if (v22 == v11 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
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

    if (v8 == 3)
    {
      if ((TagFallback & 7) == 0)
      {
        v17 = *(a2 + 1);
        v11 = *(a2 + 2);
        goto LABEL_36;
      }
    }

    else if (v8 == 4 && (TagFallback & 7) == 0)
    {
      v12 = *(a2 + 1);
      v11 = *(a2 + 2);
      goto LABEL_44;
    }

LABEL_21:
    if (v9 == 4)
    {
      return 1;
    }

    if ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(a2, TagFallback) & 1) == 0)
    {
      return 0;
    }
  }
}

uint64_t awd::metrics::MotionState::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 36);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(1, *(this + 8), a2, a4);
    v6 = *(v5 + 36);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

LABEL_8:
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(3, *(v5 + 24), a2, a4);
      if ((*(v5 + 36) & 8) == 0)
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

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
  v6 = *(v5 + 36);
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
  v7 = *(v5 + 28);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(4, v7, a2, a4);
}

uint64_t awd::metrics::MotionState::ByteSize(awd::metrics::MotionState *this, unint64_t a2)
{
  v3 = *(this + 9);
  if (!v3)
  {
    result = 0;
    goto LABEL_24;
  }

  if ((v3 & 1) == 0)
  {
    v4 = 0;
    if ((v3 & 2) == 0)
    {
      goto LABEL_16;
    }

LABEL_7:
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
      v3 = *(this + 9);
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
    goto LABEL_16;
  }

  v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 1)) + 1;
  v3 = *(this + 9);
  if ((v3 & 2) != 0)
  {
    goto LABEL_7;
  }

LABEL_16:
  if ((v3 & 4) != 0)
  {
    v12 = *(this + 6);
    if ((v12 & 0x80000000) != 0)
    {
      v13 = 11;
    }

    else if (v12 >= 0x80)
    {
      v13 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v12) + 1;
      v3 = *(this + 9);
    }

    else
    {
      v13 = 2;
    }

    v4 += v13;
  }

  result = ((v3 >> 2) & 2) + v4;
LABEL_24:
  *(this + 8) = result;
  return result;
}

void awd::metrics::MotionState::CheckTypeAndMergeFrom(awd::metrics::MotionState *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  {
    awd::metrics::MotionState::CheckTypeAndMergeFrom();
  }

  awd::metrics::MotionState::MergeFrom(this, lpsrc);
}

void awd::metrics::MotionState::CopyFrom(awd::metrics::MotionState *this, const awd::metrics::MotionState *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    awd::metrics::MotionState::MergeFrom(this, a2);
  }
}

uint64_t awd::metrics::MotionState::Swap(uint64_t this, awd::metrics::MotionState *a2)
{
  if (a2 != this)
  {
    v2 = *(this + 8);
    v3 = *(this + 16);
    v4 = *(a2 + 2);
    *(this + 8) = *(a2 + 1);
    *(this + 16) = v4;
    *(a2 + 1) = v2;
    *(a2 + 2) = v3;
    LODWORD(v2) = *(this + 24);
    *(this + 24) = *(a2 + 6);
    *(a2 + 6) = v2;
    LOBYTE(v2) = *(this + 28);
    *(this + 28) = *(a2 + 28);
    *(a2 + 28) = v2;
    LODWORD(v2) = *(this + 36);
    *(this + 36) = *(a2 + 9);
    *(a2 + 9) = v2;
    LODWORD(v2) = *(this + 32);
    *(this + 32) = *(a2 + 8);
    *(a2 + 8) = v2;
  }

  return this;
}

void *awd::metrics::MotionTrigger::SharedCtor(void *this)
{
  this[8] = 0;
  v1 = MEMORY[0x29EDC9758];
  this[1] = 0;
  this[2] = v1;
  this[3] = 0;
  this[4] = 0;
  return this;
}

awd::metrics::MotionTrigger *awd::metrics::MotionTrigger::MotionTrigger(awd::metrics::MotionTrigger *this, const awd::metrics::MotionTrigger *a2)
{
  *(this + 5) = 0;
  *(this + 6) = 0;
  *(this + 14) = 0;
  *(this + 8) = 0;
  *this = &unk_2A1D4F098;
  *(this + 1) = 0;
  v3 = MEMORY[0x29EDC9758];
  *(this + 3) = 0;
  *(this + 4) = 0;
  *(this + 2) = v3;
  awd::metrics::MotionTrigger::MergeFrom(this, a2);
  return this;
}

void sub_296418590(_Unwind_Exception *a1)
{
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<std::string>::TypeHandler>(v2);
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(v1);
  _Unwind_Resume(a1);
}

std::string *awd::metrics::MotionTrigger::MergeFrom(awd::metrics::MotionTrigger *this, const awd::metrics::MotionTrigger *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v12);
  }

  result = wireless_diagnostics::google::protobuf::RepeatedPtrField<std::string>::MergeFrom((this + 40), a2 + 40);
  LOBYTE(v5) = *(a2 + 68);
  if (v5)
  {
    if (*(a2 + 68))
    {
      v7 = *(a2 + 1);
      *(this + 17) |= 1u;
      *(this + 1) = v7;
      v5 = *(a2 + 17);
      if ((v5 & 2) == 0)
      {
LABEL_6:
        if ((v5 & 4) == 0)
        {
          goto LABEL_7;
        }

        goto LABEL_15;
      }
    }

    else if ((*(a2 + 68) & 2) == 0)
    {
      goto LABEL_6;
    }

    v8 = *(a2 + 2);
    *(this + 17) |= 2u;
    v9 = *(this + 2);
    if (v9 == MEMORY[0x29EDC9758])
    {
      operator new();
    }

    result = std::string::operator=(v9, v8);
    v5 = *(a2 + 17);
    if ((v5 & 4) == 0)
    {
LABEL_7:
      if ((v5 & 8) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_16;
    }

LABEL_15:
    v10 = *(a2 + 3);
    *(this + 17) |= 4u;
    *(this + 3) = v10;
    v5 = *(a2 + 17);
    if ((v5 & 8) == 0)
    {
LABEL_8:
      if ((v5 & 0x10) == 0)
      {
        return result;
      }

      goto LABEL_9;
    }

LABEL_16:
    v11 = *(a2 + 8);
    *(this + 17) |= 8u;
    *(this + 8) = v11;
    if ((*(a2 + 17) & 0x10) == 0)
    {
      return result;
    }

LABEL_9:
    v6 = *(a2 + 9);
    *(this + 17) |= 0x10u;
    *(this + 9) = v6;
  }

  return result;
}

void sub_296418714(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::metrics::MotionTrigger::~MotionTrigger(awd::metrics::MotionTrigger *this)
{
  *this = &unk_2A1D4F098;
  v2 = (this + 40);
  awd::metrics::MotionTrigger::SharedDtor(this);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<std::string>::TypeHandler>(v2);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  awd::metrics::MotionTrigger::~MotionTrigger(this);

  JUMPOUT(0x29C25A730);
}

uint64_t awd::metrics::MotionTrigger::SharedDtor(uint64_t this)
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

uint64_t awd::metrics::MotionTrigger::default_instance(awd::metrics::MotionTrigger *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = awd::metrics::MotionTrigger::default_instance_;
  if (!awd::metrics::MotionTrigger::default_instance_)
  {
    awd::metrics::protobuf_AddDesc_Location_2eproto(0, a2, a3, a4);
    return awd::metrics::MotionTrigger::default_instance_;
  }

  return result;
}

uint64_t awd::metrics::MotionTrigger::Clear(awd::metrics::MotionTrigger *this)
{
  v2 = *(this + 68);
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

    *(this + 3) = 0;
    *(this + 4) = 0;
  }

  result = wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Clear<wireless_diagnostics::google::protobuf::RepeatedPtrField<std::string>::TypeHandler>(this + 40);
  *(this + 17) = 0;
  return result;
}

uint64_t awd::metrics::MotionTrigger::MergePartialFromCodedStream(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
{
  v4 = this;
  v5 = MEMORY[0x29EDC9758];
  while (1)
  {
    while (1)
    {
      while (1)
      {
        while (1)
        {
          v6 = *(a2 + 1);
          if (v6 >= *(a2 + 2) || (v7 = *v6, (v7 & 0x80000000) != 0))
          {
            this = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadTagFallback(a2);
            v7 = this;
            *(a2 + 8) = this;
            if (!this)
            {
              return 1;
            }
          }

          else
          {
            *(a2 + 8) = v7;
            *(a2 + 1) = v6 + 1;
            if (!v7)
            {
              return 1;
            }
          }

          v8 = v7 >> 3;
          v9 = v7 & 7;
          if (v7 >> 3 <= 3)
          {
            break;
          }

          if (v8 == 4)
          {
            if ((v7 & 7) == 0)
            {
              v16 = *(a2 + 1);
              v10 = *(a2 + 2);
              goto LABEL_50;
            }

            goto LABEL_27;
          }

          if (v8 == 5)
          {
            if ((v7 & 7) == 0)
            {
              v18 = *(a2 + 1);
              v10 = *(a2 + 2);
              goto LABEL_58;
            }

            goto LABEL_27;
          }

          if (v8 != 6 || v9 != 2)
          {
            goto LABEL_27;
          }

          while (2)
          {
            v26 = *(v4 + 52);
            v27 = *(v4 + 48);
            if (v27 >= v26)
            {
              if (v26 == *(v4 + 56))
              {
                this = wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((v4 + 40));
                v26 = *(v4 + 52);
              }

              *(v4 + 52) = v26 + 1;
              v28 = wireless_diagnostics::google::protobuf::internal::StringTypeHandlerBase::New(this);
              v29 = *(v4 + 40);
              v30 = *(v4 + 48);
              *(v4 + 48) = v30 + 1;
              *(v29 + 8 * v30) = v28;
            }

            else
            {
              *(v4 + 48) = v27 + 1;
            }

            this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
            if (!this)
            {
              return this;
            }

            v25 = *(a2 + 1);
            v31 = *(a2 + 2);
            if (v25 < v31 && *v25 == 50)
            {
LABEL_65:
              *(a2 + 1) = v25 + 1;
              continue;
            }

            break;
          }

          if (v25 == v31 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
          {
            *(a2 + 8) = 0;
            this = 1;
            *(a2 + 36) = 1;
            return this;
          }
        }

        if (v8 != 1)
        {
          break;
        }

        if ((v7 & 7) != 0)
        {
          goto LABEL_27;
        }

        v13 = *(a2 + 1);
        v12 = *(a2 + 2);
        if (v13 >= v12 || (v14 = *v13, v14 < 0))
        {
          this = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, (v4 + 8));
          if (!this)
          {
            return this;
          }

          v15 = *(a2 + 1);
          v12 = *(a2 + 2);
        }

        else
        {
          *(v4 + 8) = v14;
          v15 = v13 + 1;
          *(a2 + 1) = v15;
        }

        v17 = *(v4 + 68) | 1;
        *(v4 + 68) = v17;
        if (v15 < v12 && *v15 == 18)
        {
          *(a2 + 1) = v15 + 1;
          goto LABEL_36;
        }
      }

      if (v8 != 2)
      {
        break;
      }

      if (v9 != 2)
      {
        goto LABEL_27;
      }

      v17 = *(v4 + 68);
LABEL_36:
      *(v4 + 68) = v17 | 2;
      if (*(v4 + 16) == v5)
      {
        operator new();
      }

      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
      if (!this)
      {
        return this;
      }

      v19 = *(a2 + 1);
      v10 = *(a2 + 2);
      if (v19 < v10 && *v19 == 24)
      {
        v11 = v19 + 1;
        *(a2 + 1) = v11;
LABEL_42:
        if (v11 >= v10 || (v20 = *v11, v20 < 0))
        {
          this = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, (v4 + 24));
          if (!this)
          {
            return this;
          }

          v21 = *(a2 + 1);
          v10 = *(a2 + 2);
        }

        else
        {
          *(v4 + 24) = v20;
          v21 = v11 + 1;
          *(a2 + 1) = v21;
        }

        *(v4 + 68) |= 4u;
        if (v21 < v10 && *v21 == 32)
        {
          v16 = v21 + 1;
          *(a2 + 1) = v16;
LABEL_50:
          v33 = 0;
          if (v16 >= v10 || (v22 = *v16, (v22 & 0x80000000) != 0))
          {
            this = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v33);
            if (!this)
            {
              return this;
            }

            v22 = v33;
            v23 = *(a2 + 1);
            v10 = *(a2 + 2);
          }

          else
          {
            v23 = v16 + 1;
            *(a2 + 1) = v23;
          }

          *(v4 + 32) = v22;
          *(v4 + 68) |= 8u;
          if (v23 < v10 && *v23 == 40)
          {
            v18 = v23 + 1;
            *(a2 + 1) = v18;
LABEL_58:
            v32 = 0;
            if (v18 >= v10 || (v24 = *v18, (v24 & 0x80000000) != 0))
            {
              this = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v32);
              if (!this)
              {
                return this;
              }

              v24 = v32;
              v25 = *(a2 + 1);
              v10 = *(a2 + 2);
            }

            else
            {
              v25 = v18 + 1;
              *(a2 + 1) = v25;
            }

            *(v4 + 36) = v24;
            *(v4 + 68) |= 0x10u;
            if (v25 < v10 && *v25 == 50)
            {
              goto LABEL_65;
            }
          }
        }
      }
    }

    if (v8 == 3 && (v7 & 7) == 0)
    {
      v11 = *(a2 + 1);
      v10 = *(a2 + 2);
      goto LABEL_42;
    }

LABEL_27:
    if (v9 == 4)
    {
      return 1;
    }

    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(a2, v7);
    if ((this & 1) == 0)
    {
      return 0;
    }
  }
}

uint64_t awd::metrics::MotionTrigger::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 68);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(1, *(this + 8), a2, a4);
    v6 = *(v5 + 68);
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

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
  v6 = *(v5 + 68);
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
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(3, *(v5 + 24), a2, a4);
  v6 = *(v5 + 68);
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

LABEL_14:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(4, *(v5 + 32), a2, a4);
  if ((*(v5 + 68) & 0x10) != 0)
  {
LABEL_6:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(5, *(v5 + 36), a2, a4);
  }

LABEL_7:
  if (*(v5 + 48) >= 1)
  {
    v7 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
      ++v7;
    }

    while (v7 < *(v5 + 48));
  }

  return this;
}

uint64_t awd::metrics::MotionTrigger::ByteSize(awd::metrics::MotionTrigger *this, unint64_t a2)
{
  LOBYTE(v3) = *(this + 68);
  if (!v3)
  {
    v4 = 0;
    goto LABEL_33;
  }

  if (*(this + 68))
  {
    v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 1)) + 1;
    v3 = *(this + 17);
    if ((v3 & 2) == 0)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v4 = 0;
    if ((*(this + 68) & 2) == 0)
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
    v3 = *(this + 17);
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
    v4 += wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 3)) + 1;
    v3 = *(this + 17);
    if ((v3 & 8) == 0)
    {
LABEL_18:
      if ((v3 & 0x10) == 0)
      {
        goto LABEL_33;
      }

      goto LABEL_27;
    }
  }

  else if ((v3 & 8) == 0)
  {
    goto LABEL_18;
  }

  v11 = *(this + 8);
  if ((v11 & 0x80000000) != 0)
  {
    v12 = 11;
  }

  else if (v11 >= 0x80)
  {
    v12 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v11) + 1;
    v3 = *(this + 17);
  }

  else
  {
    v12 = 2;
  }

  v4 += v12;
  if ((v3 & 0x10) != 0)
  {
LABEL_27:
    v13 = *(this + 9);
    if ((v13 & 0x80000000) != 0)
    {
      v14 = 11;
    }

    else if (v13 >= 0x80)
    {
      v14 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v13) + 1;
    }

    else
    {
      v14 = 2;
    }

    v4 += v14;
  }

LABEL_33:
  v15 = *(this + 12);
  v16 = (v15 + v4);
  if (v15 >= 1)
  {
    for (i = 0; i < v15; ++i)
    {
      v18 = *(*(this + 5) + 8 * i);
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
        v15 = *(this + 12);
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

      v16 = (v23 + v16 + v19);
    }
  }

  *(this + 16) = v16;
  return v16;
}

std::string *awd::metrics::MotionTrigger::CheckTypeAndMergeFrom(awd::metrics::MotionTrigger *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  {
    awd::metrics::MotionTrigger::CheckTypeAndMergeFrom();
  }

  return awd::metrics::MotionTrigger::MergeFrom(this, lpsrc);
}

std::string *wireless_diagnostics::google::protobuf::RepeatedPtrField<std::string>::MergeFrom(wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase *a1, uint64_t a2)
{
  result = wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve(a1);
  LODWORD(v5) = *(a2 + 8);
  if (v5 >= 1)
  {
    v6 = 0;
    do
    {
      if (v6 >= v5)
      {
        wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
        wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
        wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
        wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v14);
      }

      v7 = *(*a2 + 8 * v6);
      v8 = *(a1 + 3);
      v9 = *(a1 + 2);
      if (v9 >= v8)
      {
        if (v8 == *(a1 + 4))
        {
          result = wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve(a1);
          v8 = *(a1 + 3);
        }

        *(a1 + 3) = v8 + 1;
        v11 = wireless_diagnostics::google::protobuf::internal::StringTypeHandlerBase::New(result);
        v12 = *a1;
        v13 = *(a1 + 2);
        *(a1 + 2) = v13 + 1;
        *(v12 + 8 * v13) = v11;
      }

      else
      {
        v10 = *a1;
        *(a1 + 2) = v9 + 1;
        v11 = *(v10 + 8 * v9);
      }

      result = std::string::operator=(v11, v7);
      ++v6;
      v5 = *(a2 + 8);
    }

    while (v6 < v5);
  }

  return result;
}

void sub_29641916C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

std::string *awd::metrics::MotionTrigger::CopyFrom(std::string *this, std::string *a2)
{
  if (a2 != this)
  {
    v4 = this;
    (*(this->__r_.__value_.__r.__words[0] + 32))(this);

    return awd::metrics::MotionTrigger::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t awd::metrics::MotionTrigger::Swap(uint64_t this, awd::metrics::MotionTrigger *a2)
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
    LODWORD(v7) = *(this + 32);
    *(this + 32) = *(a2 + 8);
    *(a2 + 8) = v7;
    LODWORD(v7) = *(this + 36);
    *(this + 36) = *(a2 + 9);
    *(a2 + 9) = v7;
    this = wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Swap();
    v8 = *(v3 + 68);
    *(v3 + 68) = *(a2 + 17);
    *(a2 + 17) = v8;
    v9 = *(v3 + 64);
    *(v3 + 64) = *(a2 + 16);
    *(a2 + 16) = v9;
  }

  return this;
}

void *awd::metrics::MotionGyroMiniCal::SharedCtor(void *this)
{
  this[1] = 0;
  this[2] = 0;
  this[3] = 0;
  return this;
}

awd::metrics::MotionGyroMiniCal *awd::metrics::MotionGyroMiniCal::MotionGyroMiniCal(awd::metrics::MotionGyroMiniCal *this, const awd::metrics::MotionGyroMiniCal *a2)
{
  *this = &unk_2A1D4F110;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 3) = 0;
  awd::metrics::MotionGyroMiniCal::MergeFrom(this, a2);
  return this;
}

void awd::metrics::MotionGyroMiniCal::MergeFrom(awd::metrics::MotionGyroMiniCal *this, const awd::metrics::MotionGyroMiniCal *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v7);
  }

  LOBYTE(v4) = *(a2 + 28);
  if (v4)
  {
    if (*(a2 + 28))
    {
      v5 = *(a2 + 1);
      *(this + 7) |= 1u;
      *(this + 1) = v5;
      v4 = *(a2 + 7);
    }

    if ((v4 & 2) != 0)
    {
      v6 = *(a2 + 2);
      *(this + 7) |= 2u;
      *(this + 2) = v6;
    }
  }
}

void sub_2964193DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::metrics::MotionGyroMiniCal::~MotionGyroMiniCal(awd::metrics::MotionGyroMiniCal *this)
{
  *this = &unk_2A1D4F110;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2A1D4F110;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2A1D4F110;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  JUMPOUT(0x29C25A730);
}

uint64_t awd::metrics::MotionGyroMiniCal::default_instance(awd::metrics::MotionGyroMiniCal *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = awd::metrics::MotionGyroMiniCal::default_instance_;
  if (!awd::metrics::MotionGyroMiniCal::default_instance_)
  {
    awd::metrics::protobuf_AddDesc_Location_2eproto(0, a2, a3, a4);
    return awd::metrics::MotionGyroMiniCal::default_instance_;
  }

  return result;
}

uint64_t awd::metrics::MotionGyroMiniCal::Clear(uint64_t this)
{
  if (*(this + 28))
  {
    *(this + 8) = 0;
    *(this + 16) = 0;
  }

  *(this + 28) = 0;
  return this;
}

uint64_t awd::metrics::MotionGyroMiniCal::MergePartialFromCodedStream(awd::metrics::MotionGyroMiniCal *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
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

      *(this + 7) |= 1u;
      if (v10 < v7 && *v10 == 16)
      {
        v11 = v10 + 1;
        *(a2 + 1) = v11;
LABEL_22:
        if (v11 >= v7 || (v12 = *v11, v12 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 2);
          if (!result)
          {
            return result;
          }

          v13 = *(a2 + 1);
          v7 = *(a2 + 2);
        }

        else
        {
          *(this + 2) = v12;
          v13 = v11 + 1;
          *(a2 + 1) = v13;
        }

        *(this + 7) |= 2u;
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

uint64_t awd::metrics::MotionGyroMiniCal::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
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

    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(2, v7, a2, a4);
  }

  return this;
}

uint64_t awd::metrics::MotionGyroMiniCal::ByteSize(awd::metrics::MotionGyroMiniCal *this, unint64_t a2)
{
  if (*(this + 28))
  {
    if ((*(this + 28) & 1) == 0)
    {
      v3 = 0;
      if ((*(this + 28) & 2) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_7;
    }

    v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 1)) + 1;
    if ((*(this + 7) & 2) != 0)
    {
LABEL_7:
      v3 = v3 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 2)) + 1;
    }
  }

  else
  {
    v3 = 0;
  }

LABEL_8:
  *(this + 6) = v3;
  return v3;
}

void awd::metrics::MotionGyroMiniCal::CheckTypeAndMergeFrom(awd::metrics::MotionGyroMiniCal *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  {
    awd::metrics::MotionGyroMiniCal::CheckTypeAndMergeFrom();
  }

  awd::metrics::MotionGyroMiniCal::MergeFrom(this, lpsrc);
}

void awd::metrics::MotionGyroMiniCal::CopyFrom(awd::metrics::MotionGyroMiniCal *this, const awd::metrics::MotionGyroMiniCal *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    awd::metrics::MotionGyroMiniCal::MergeFrom(this, a2);
  }
}

uint64_t awd::metrics::MotionGyroMiniCal::Swap(uint64_t this, awd::metrics::MotionGyroMiniCal *a2)
{
  if (a2 != this)
  {
    v2 = *(this + 8);
    *(this + 8) = *(a2 + 1);
    *(a2 + 1) = v2;
    v3 = *(this + 16);
    *(this + 16) = *(a2 + 2);
    *(a2 + 2) = v3;
    LODWORD(v3) = *(this + 28);
    *(this + 28) = *(a2 + 7);
    *(a2 + 7) = v3;
    LODWORD(v3) = *(this + 24);
    *(this + 24) = *(a2 + 6);
    *(a2 + 6) = v3;
  }

  return this;
}

double awd::metrics::MotionDropDetection::SharedCtor(awd::metrics::MotionDropDetection *this)
{
  *(this + 10) = 0;
  result = 0.0;
  *(this + 24) = 0u;
  *(this + 8) = 0u;
  return result;
}

awd::metrics::MotionDropDetection *awd::metrics::MotionDropDetection::MotionDropDetection(awd::metrics::MotionDropDetection *this, const awd::metrics::MotionDropDetection *a2)
{
  *this = &unk_2A1D4F188;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 10) = 0;
  awd::metrics::MotionDropDetection::MergeFrom(this, a2);
  return this;
}

float awd::metrics::MotionDropDetection::MergeFrom(awd::metrics::MotionDropDetection *this, const awd::metrics::MotionDropDetection *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v8);
  }

  LOBYTE(v5) = *(a2 + 40);
  if (v5)
  {
    if (*(a2 + 40))
    {
      v6 = *(a2 + 1);
      *(this + 10) |= 1u;
      *(this + 1) = v6;
      v5 = *(a2 + 10);
      if ((v5 & 2) == 0)
      {
LABEL_6:
        if ((v5 & 4) == 0)
        {
          goto LABEL_7;
        }

        goto LABEL_13;
      }
    }

    else if ((*(a2 + 40) & 2) == 0)
    {
      goto LABEL_6;
    }

    v7 = *(a2 + 2);
    *(this + 10) |= 2u;
    *(this + 2) = v7;
    v5 = *(a2 + 10);
    if ((v5 & 4) == 0)
    {
LABEL_7:
      if ((v5 & 8) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_14;
    }

LABEL_13:
    result = *(a2 + 6);
    *(this + 10) |= 4u;
    *(this + 6) = result;
    v5 = *(a2 + 10);
    if ((v5 & 8) == 0)
    {
LABEL_8:
      if ((v5 & 0x10) == 0)
      {
        return result;
      }

      goto LABEL_9;
    }

LABEL_14:
    result = *(a2 + 7);
    *(this + 10) |= 8u;
    *(this + 7) = result;
    if ((*(a2 + 10) & 0x10) == 0)
    {
      return result;
    }

LABEL_9:
    result = *(a2 + 8);
    *(this + 10) |= 0x10u;
    *(this + 8) = result;
  }

  return result;
}

void sub_296419A94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::metrics::MotionDropDetection::~MotionDropDetection(awd::metrics::MotionDropDetection *this)
{
  *this = &unk_2A1D4F188;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2A1D4F188;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2A1D4F188;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  JUMPOUT(0x29C25A730);
}

uint64_t awd::metrics::MotionDropDetection::default_instance(awd::metrics::MotionDropDetection *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = awd::metrics::MotionDropDetection::default_instance_;
  if (!awd::metrics::MotionDropDetection::default_instance_)
  {
    awd::metrics::protobuf_AddDesc_Location_2eproto(0, a2, a3, a4);
    return awd::metrics::MotionDropDetection::default_instance_;
  }

  return result;
}

uint64_t awd::metrics::MotionDropDetection::Clear(uint64_t this)
{
  if (*(this + 40))
  {
    *(this + 8) = 0;
    *(this + 16) = 0;
    *(this + 32) = 0;
    *(this + 24) = 0;
  }

  *(this + 40) = 0;
  return this;
}

uint64_t awd::metrics::MotionDropDetection::MergePartialFromCodedStream(awd::metrics::MotionDropDetection *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
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
        if (TagFallback >> 3 > 2)
        {
          break;
        }

        if (v7 != 1)
        {
          if (v7 != 2 || v8 != 5)
          {
            goto LABEL_21;
          }

          goto LABEL_32;
        }

        if ((TagFallback & 7) != 0)
        {
          goto LABEL_21;
        }

        v12 = *(a2 + 1);
        v11 = *(a2 + 2);
        if (v12 >= v11 || (v13 = *v12, v13 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 1);
          if (!result)
          {
            return result;
          }

          v14 = *(a2 + 1);
          v11 = *(a2 + 2);
        }

        else
        {
          *(this + 1) = v13;
          v14 = v12 + 1;
          *(a2 + 1) = v14;
        }

        *(this + 10) |= 1u;
        if (v14 < v11 && *v14 == 21)
        {
          *(a2 + 1) = v14 + 1;
LABEL_32:
          v23 = 0;
          if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a2, &v23) & 1) == 0)
          {
            return 0;
          }

          *(this + 6) = v23;
          *(this + 10) |= 4u;
          v16 = *(a2 + 1);
          if (v16 < *(a2 + 2) && *v16 == 29)
          {
            *(a2 + 1) = v16 + 1;
LABEL_36:
            v22 = 0;
            if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a2, &v22) & 1) == 0)
            {
              return 0;
            }

            *(this + 7) = v22;
            *(this + 10) |= 8u;
            v17 = *(a2 + 1);
            if (v17 < *(a2 + 2) && *v17 == 37)
            {
              *(a2 + 1) = v17 + 1;
              goto LABEL_40;
            }
          }
        }
      }

      if (v7 == 3)
      {
        if (v8 != 5)
        {
          goto LABEL_21;
        }

        goto LABEL_36;
      }

      if (v7 != 4)
      {
        break;
      }

      if (v8 != 5)
      {
        goto LABEL_21;
      }

LABEL_40:
      v21 = 0;
      if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a2, &v21) & 1) == 0)
      {
        return 0;
      }

      *(this + 8) = v21;
      *(this + 10) |= 0x10u;
      v18 = *(a2 + 1);
      v9 = *(a2 + 2);
      if (v18 < v9 && *v18 == 40)
      {
        v10 = v18 + 1;
        *(a2 + 1) = v10;
LABEL_44:
        if (v10 >= v9 || (v19 = *v10, v19 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 2);
          if (!result)
          {
            return result;
          }

          v20 = *(a2 + 1);
          v9 = *(a2 + 2);
        }

        else
        {
          *(this + 2) = v19;
          v20 = v10 + 1;
          *(a2 + 1) = v20;
        }

        *(this + 10) |= 2u;
        if (v20 == v9 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
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
      v10 = *(a2 + 1);
      v9 = *(a2 + 2);
      goto LABEL_44;
    }

LABEL_21:
    if (v8 == 4)
    {
      return 1;
    }
  }

  while ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(a2, TagFallback) & 1) != 0);
  return 0;
}

uint64_t awd::metrics::MotionDropDetection::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 40);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(1, *(this + 8), a2, a4);
    v6 = *(v5 + 40);
    if ((v6 & 4) == 0)
    {
LABEL_3:
      if ((v6 & 8) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_9;
    }
  }

  else if ((v6 & 4) == 0)
  {
    goto LABEL_3;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(2, a2, *(v5 + 24), a3);
  v6 = *(v5 + 40);
  if ((v6 & 8) == 0)
  {
LABEL_4:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_5;
    }

LABEL_10:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(4, a2, *(v5 + 32), a3);
    if ((*(v5 + 40) & 2) == 0)
    {
      return this;
    }

    goto LABEL_11;
  }

LABEL_9:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(3, a2, *(v5 + 28), a3);
  v6 = *(v5 + 40);
  if ((v6 & 0x10) != 0)
  {
    goto LABEL_10;
  }

LABEL_5:
  if ((v6 & 2) == 0)
  {
    return this;
  }

LABEL_11:
  v7 = *(v5 + 16);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(5, v7, a2, a4);
}

uint64_t awd::metrics::MotionDropDetection::ByteSize(awd::metrics::MotionDropDetection *this, unint64_t a2)
{
  LOBYTE(v3) = *(this + 40);
  if (!v3)
  {
    result = 0;
    goto LABEL_15;
  }

  if ((*(this + 40) & 1) == 0)
  {
    v4 = 0;
    if ((*(this + 40) & 2) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 1)) + 1;
  v3 = *(this + 10);
  if ((v3 & 2) != 0)
  {
LABEL_7:
    v4 += wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 2)) + 1;
    v3 = *(this + 10);
  }

LABEL_8:
  v6 = v4 + 5;
  if ((v3 & 4) == 0)
  {
    v6 = v4;
  }

  if ((v3 & 8) != 0)
  {
    v6 += 5;
  }

  if ((v3 & 0x10) != 0)
  {
    result = v6 + 5;
  }

  else
  {
    result = v6;
  }

LABEL_15:
  *(this + 9) = result;
  return result;
}

float awd::metrics::MotionDropDetection::CheckTypeAndMergeFrom(awd::metrics::MotionDropDetection *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  {
    awd::metrics::MotionDropDetection::CheckTypeAndMergeFrom();
  }

  return awd::metrics::MotionDropDetection::MergeFrom(this, lpsrc);
}

float awd::metrics::MotionDropDetection::CopyFrom(awd::metrics::MotionDropDetection *this, const awd::metrics::MotionDropDetection *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    return awd::metrics::MotionDropDetection::MergeFrom(this, a2);
  }

  return result;
}

float awd::metrics::MotionDropDetection::Swap(awd::metrics::MotionDropDetection *this, awd::metrics::MotionDropDetection *a2)
{
  if (a2 != this)
  {
    v2 = *(this + 1);
    *(this + 1) = *(a2 + 1);
    *(a2 + 1) = v2;
    v3 = *(this + 2);
    *(this + 2) = *(a2 + 2);
    *(a2 + 2) = v3;
    v4 = *(this + 6);
    *(this + 6) = *(a2 + 6);
    *(a2 + 6) = v4;
    v5 = *(this + 7);
    *(this + 7) = *(a2 + 7);
    *(a2 + 7) = v5;
    result = *(this + 8);
    *(this + 8) = *(a2 + 8);
    *(a2 + 8) = result;
    LODWORD(v3) = *(this + 10);
    *(this + 10) = *(a2 + 10);
    *(a2 + 10) = v3;
    LODWORD(v3) = *(this + 9);
    *(this + 9) = *(a2 + 9);
    *(a2 + 9) = v3;
  }

  return result;
}

double awd::metrics::MotionPedometerCalibration::SharedCtor(awd::metrics::MotionPedometerCalibration *this)
{
  result = 0.0;
  *(this + 36) = 0u;
  *(this + 24) = 0u;
  *(this + 8) = 0u;
  return result;
}

awd::metrics::MotionPedometerCalibration *awd::metrics::MotionPedometerCalibration::MotionPedometerCalibration(awd::metrics::MotionPedometerCalibration *this, const awd::metrics::MotionPedometerCalibration *a2)
{
  *this = &unk_2A1D4F200;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 36) = 0u;
  awd::metrics::MotionPedometerCalibration::MergeFrom(this, a2);
  return this;
}

float awd::metrics::MotionPedometerCalibration::MergeFrom(awd::metrics::MotionPedometerCalibration *this, const awd::metrics::MotionPedometerCalibration *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v8);
  }

  LOBYTE(v5) = *(a2 + 48);
  if (v5)
  {
    if (*(a2 + 48))
    {
      v6 = *(a2 + 1);
      *(this + 12) |= 1u;
      *(this + 1) = v6;
      v5 = *(a2 + 12);
      if ((v5 & 2) == 0)
      {
LABEL_6:
        if ((v5 & 4) == 0)
        {
          goto LABEL_7;
        }

        goto LABEL_16;
      }
    }

    else if ((*(a2 + 48) & 2) == 0)
    {
      goto LABEL_6;
    }

    v7 = *(a2 + 4);
    *(this + 12) |= 2u;
    *(this + 4) = v7;
    v5 = *(a2 + 12);
    if ((v5 & 4) == 0)
    {
LABEL_7:
      if ((v5 & 8) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_17;
    }

LABEL_16:
    result = *(a2 + 5);
    *(this + 12) |= 4u;
    *(this + 5) = result;
    v5 = *(a2 + 12);
    if ((v5 & 8) == 0)
    {
LABEL_8:
      if ((v5 & 0x10) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_18;
    }

LABEL_17:
    result = *(a2 + 6);
    *(this + 12) |= 8u;
    *(this + 6) = result;
    v5 = *(a2 + 12);
    if ((v5 & 0x10) == 0)
    {
LABEL_9:
      if ((v5 & 0x20) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_19;
    }

LABEL_18:
    result = *(a2 + 7);
    *(this + 12) |= 0x10u;
    *(this + 7) = result;
    v5 = *(a2 + 12);
    if ((v5 & 0x20) == 0)
    {
LABEL_10:
      if ((v5 & 0x40) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_20;
    }

LABEL_19:
    result = *(a2 + 8);
    *(this + 12) |= 0x20u;
    *(this + 8) = result;
    v5 = *(a2 + 12);
    if ((v5 & 0x40) == 0)
    {
LABEL_11:
      if ((v5 & 0x80) == 0)
      {
        return result;
      }

      goto LABEL_12;
    }

LABEL_20:
    result = *(a2 + 9);
    *(this + 12) |= 0x40u;
    *(this + 9) = result;
    if ((*(a2 + 12) & 0x80) == 0)
    {
      return result;
    }

LABEL_12:
    result = *(a2 + 10);
    *(this + 12) |= 0x80u;
    *(this + 10) = result;
  }

  return result;
}

void sub_29641A390(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::metrics::MotionPedometerCalibration::~MotionPedometerCalibration(awd::metrics::MotionPedometerCalibration *this)
{
  *this = &unk_2A1D4F200;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2A1D4F200;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2A1D4F200;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  JUMPOUT(0x29C25A730);
}

uint64_t awd::metrics::MotionPedometerCalibration::default_instance(awd::metrics::MotionPedometerCalibration *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = awd::metrics::MotionPedometerCalibration::default_instance_;
  if (!awd::metrics::MotionPedometerCalibration::default_instance_)
  {
    awd::metrics::protobuf_AddDesc_Location_2eproto(0, a2, a3, a4);
    return awd::metrics::MotionPedometerCalibration::default_instance_;
  }

  return result;
}

uint64_t awd::metrics::MotionPedometerCalibration::Clear(uint64_t this)
{
  if (*(this + 48))
  {
    *(this + 40) = 0;
    *(this + 24) = 0u;
    *(this + 8) = 0u;
  }

  *(this + 48) = 0;
  return this;
}

uint64_t awd::metrics::MotionPedometerCalibration::MergePartialFromCodedStream(awd::metrics::MotionPedometerCalibration *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
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
        if (TagFallback >> 3 <= 4)
        {
          break;
        }

        if (TagFallback >> 3 <= 6)
        {
          if (v7 == 5)
          {
            if (v8 == 5)
            {
              goto LABEL_58;
            }
          }

          else if (v7 == 6 && v8 == 5)
          {
            goto LABEL_62;
          }

          goto LABEL_34;
        }

        if (v7 == 7)
        {
          if (v8 != 5)
          {
            goto LABEL_34;
          }

LABEL_66:
          v22 = 0;
          if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a2, &v22) & 1) == 0)
          {
            return 0;
          }

          *(this + 9) = v22;
          *(this + 12) |= 0x40u;
          v21 = *(a2 + 1);
          if (v21 < *(a2 + 2) && *v21 == 69)
          {
            *(a2 + 1) = v21 + 1;
            goto LABEL_70;
          }
        }

        else
        {
          if (v7 != 8 || v8 != 5)
          {
            goto LABEL_34;
          }

LABEL_70:
          v22 = 0;
          if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a2, &v22) & 1) == 0)
          {
            return 0;
          }

          *(this + 10) = v22;
          *(this + 12) |= 0x80u;
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
        if (v7 == 3)
        {
          if (v8 == 5)
          {
            goto LABEL_50;
          }
        }

        else if (v7 == 4 && v8 == 5)
        {
          goto LABEL_54;
        }

        goto LABEL_34;
      }

      if (v7 != 1)
      {
        break;
      }

      if ((TagFallback & 7) != 0)
      {
        goto LABEL_34;
      }

      v11 = *(a2 + 1);
      v9 = *(a2 + 2);
      if (v11 >= v9 || (v12 = *v11, v12 < 0))
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
        v13 = v11 + 1;
        *(a2 + 1) = v13;
      }

      *(this + 12) |= 1u;
      if (v13 < v9 && *v13 == 16)
      {
        v10 = v13 + 1;
        *(a2 + 1) = v10;
LABEL_42:
        if (v10 >= v9 || (v15 = *v10, v15 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 4);
          if (!result)
          {
            return result;
          }

          v16 = *(a2 + 1);
          v9 = *(a2 + 2);
        }

        else
        {
          *(this + 4) = v15;
          v16 = v10 + 1;
          *(a2 + 1) = v16;
        }

        *(this + 12) |= 2u;
        if (v16 < v9 && *v16 == 29)
        {
          *(a2 + 1) = v16 + 1;
LABEL_50:
          v22 = 0;
          if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a2, &v22) & 1) == 0)
          {
            return 0;
          }

          *(this + 5) = v22;
          *(this + 12) |= 4u;
          v17 = *(a2 + 1);
          if (v17 < *(a2 + 2) && *v17 == 37)
          {
            *(a2 + 1) = v17 + 1;
LABEL_54:
            v22 = 0;
            if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a2, &v22) & 1) == 0)
            {
              return 0;
            }

            *(this + 6) = v22;
            *(this + 12) |= 8u;
            v18 = *(a2 + 1);
            if (v18 < *(a2 + 2) && *v18 == 45)
            {
              *(a2 + 1) = v18 + 1;
LABEL_58:
              v22 = 0;
              if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a2, &v22) & 1) == 0)
              {
                return 0;
              }

              *(this + 7) = v22;
              *(this + 12) |= 0x10u;
              v19 = *(a2 + 1);
              if (v19 < *(a2 + 2) && *v19 == 53)
              {
                *(a2 + 1) = v19 + 1;
LABEL_62:
                v22 = 0;
                if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a2, &v22) & 1) == 0)
                {
                  return 0;
                }

                *(this + 8) = v22;
                *(this + 12) |= 0x20u;
                v20 = *(a2 + 1);
                if (v20 < *(a2 + 2) && *v20 == 61)
                {
                  *(a2 + 1) = v20 + 1;
                  goto LABEL_66;
                }
              }
            }
          }
        }
      }
    }

    if (v7 == 2 && (TagFallback & 7) == 0)
    {
      v10 = *(a2 + 1);
      v9 = *(a2 + 2);
      goto LABEL_42;
    }

LABEL_34:
    if (v8 == 4)
    {
      return 1;
    }
  }

  while ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(a2, TagFallback) & 1) != 0);
  return 0;
}

uint64_t awd::metrics::MotionPedometerCalibration::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 48);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(1, *(this + 8), a2, a4);
    v6 = *(v5 + 48);
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

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(2, *(v5 + 16), a2, a4);
  v6 = *(v5 + 48);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

LABEL_12:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(3, a2, *(v5 + 20), a3);
  v6 = *(v5 + 48);
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_14;
  }

LABEL_13:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(4, a2, *(v5 + 24), a3);
  v6 = *(v5 + 48);
  if ((v6 & 0x10) == 0)
  {
LABEL_6:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_15;
  }

LABEL_14:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(5, a2, *(v5 + 28), a3);
  v6 = *(v5 + 48);
  if ((v6 & 0x20) == 0)
  {
LABEL_7:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_8;
    }

LABEL_16:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(7, a2, *(v5 + 36), a3);
    if ((*(v5 + 48) & 0x80) == 0)
    {
      return this;
    }

    goto LABEL_17;
  }

LABEL_15:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(6, a2, *(v5 + 32), a3);
  v6 = *(v5 + 48);
  if ((v6 & 0x40) != 0)
  {
    goto LABEL_16;
  }

LABEL_8:
  if ((v6 & 0x80) == 0)
  {
    return this;
  }

LABEL_17:
  v7 = *(v5 + 40);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(8, a2, v7, a3);
}

uint64_t awd::metrics::MotionPedometerCalibration::ByteSize(awd::metrics::MotionPedometerCalibration *this, unint64_t a2)
{
  LOBYTE(v3) = *(this + 48);
  if (!v3)
  {
    result = 0;
    goto LABEL_24;
  }

  if ((*(this + 48) & 1) == 0)
  {
    v4 = 0;
    if ((*(this + 48) & 2) == 0)
    {
      goto LABEL_11;
    }

LABEL_7:
    v6 = *(this + 4);
    if (v6 >= 0x80)
    {
      v7 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v6) + 1;
      v3 = *(this + 12);
    }

    else
    {
      v7 = 2;
    }

    v4 += v7;
    goto LABEL_11;
  }

  v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 1)) + 1;
  v3 = *(this + 12);
  if ((v3 & 2) != 0)
  {
    goto LABEL_7;
  }

LABEL_11:
  v8 = v4 + 5;
  if ((v3 & 4) == 0)
  {
    v8 = v4;
  }

  if ((v3 & 8) != 0)
  {
    v8 += 5;
  }

  if ((v3 & 0x10) != 0)
  {
    v8 += 5;
  }

  if ((v3 & 0x20) != 0)
  {
    v8 += 5;
  }

  if ((v3 & 0x40) != 0)
  {
    v8 += 5;
  }

  if ((v3 & 0x80) != 0)
  {
    result = v8 + 5;
  }

  else
  {
    result = v8;
  }

LABEL_24:
  *(this + 11) = result;
  return result;
}

float awd::metrics::MotionPedometerCalibration::CheckTypeAndMergeFrom(awd::metrics::MotionPedometerCalibration *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  {
    awd::metrics::MotionPedometerCalibration::CheckTypeAndMergeFrom();
  }

  return awd::metrics::MotionPedometerCalibration::MergeFrom(this, lpsrc);
}

float awd::metrics::MotionPedometerCalibration::CopyFrom(awd::metrics::MotionPedometerCalibration *this, const awd::metrics::MotionPedometerCalibration *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    return awd::metrics::MotionPedometerCalibration::MergeFrom(this, a2);
  }

  return result;
}

float awd::metrics::MotionPedometerCalibration::Swap(awd::metrics::MotionPedometerCalibration *this, awd::metrics::MotionPedometerCalibration *a2)
{
  if (a2 != this)
  {
    v2 = *(this + 1);
    *(this + 1) = *(a2 + 1);
    *(a2 + 1) = v2;
    LODWORD(v2) = *(this + 4);
    *(this + 4) = *(a2 + 4);
    *(a2 + 4) = v2;
    v3 = *(this + 5);
    *(this + 5) = *(a2 + 5);
    *(a2 + 5) = v3;
    v4 = *(this + 6);
    *(this + 6) = *(a2 + 6);
    *(a2 + 6) = v4;
    v5 = *(this + 7);
    *(this + 7) = *(a2 + 7);
    *(a2 + 7) = v5;
    v6 = *(this + 8);
    *(this + 8) = *(a2 + 8);
    *(a2 + 8) = v6;
    v7 = *(this + 9);
    *(this + 9) = *(a2 + 9);
    *(a2 + 9) = v7;
    result = *(this + 10);
    *(this + 10) = *(a2 + 10);
    *(a2 + 10) = result;
    LODWORD(v2) = *(this + 12);
    *(this + 12) = *(a2 + 12);
    *(a2 + 12) = v2;
    LODWORD(v2) = *(this + 11);
    *(this + 11) = *(a2 + 11);
    *(a2 + 11) = v2;
  }

  return result;
}

double awd::metrics::MotionGyroBiasEstimation_EndCount::SharedCtor(awd::metrics::MotionGyroBiasEstimation_EndCount *this)
{
  result = 0.0;
  *(this + 24) = 0u;
  *(this + 8) = 0u;
  return result;
}

awd::metrics::MotionGyroBiasEstimation_EndCount *awd::metrics::MotionGyroBiasEstimation_EndCount::MotionGyroBiasEstimation_EndCount(awd::metrics::MotionGyroBiasEstimation_EndCount *this, const awd::metrics::MotionGyroBiasEstimation_EndCount *a2)
{
  *this = &unk_2A1D4F278;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  awd::metrics::MotionGyroBiasEstimation_EndCount::MergeFrom(this, a2);
  return this;
}

void awd::metrics::MotionGyroBiasEstimation_EndCount::MergeFrom(awd::metrics::MotionGyroBiasEstimation_EndCount *this, const awd::metrics::MotionGyroBiasEstimation_EndCount *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v11);
  }

  LOBYTE(v4) = *(a2 + 36);
  if (v4)
  {
    if (*(a2 + 36))
    {
      v6 = *(a2 + 2);
      *(this + 9) |= 1u;
      *(this + 2) = v6;
      v4 = *(a2 + 9);
      if ((v4 & 2) == 0)
      {
LABEL_6:
        if ((v4 & 4) == 0)
        {
          goto LABEL_7;
        }

        goto LABEL_14;
      }
    }

    else if ((*(a2 + 36) & 2) == 0)
    {
      goto LABEL_6;
    }

    v7 = *(a2 + 3);
    *(this + 9) |= 2u;
    *(this + 3) = v7;
    v4 = *(a2 + 9);
    if ((v4 & 4) == 0)
    {
LABEL_7:
      if ((v4 & 8) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_15;
    }

LABEL_14:
    v8 = *(a2 + 4);
    *(this + 9) |= 4u;
    *(this + 4) = v8;
    v4 = *(a2 + 9);
    if ((v4 & 8) == 0)
    {
LABEL_8:
      if ((v4 & 0x10) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_16;
    }

LABEL_15:
    v9 = *(a2 + 5);
    *(this + 9) |= 8u;
    *(this + 5) = v9;
    v4 = *(a2 + 9);
    if ((v4 & 0x10) == 0)
    {
LABEL_9:
      if ((v4 & 0x20) == 0)
      {
        return;
      }

      goto LABEL_10;
    }

LABEL_16:
    v10 = *(a2 + 6);
    *(this + 9) |= 0x10u;
    *(this + 6) = v10;
    if ((*(a2 + 9) & 0x20) == 0)
    {
      return;
    }

LABEL_10:
    v5 = *(a2 + 7);
    *(this + 9) |= 0x20u;
    *(this + 7) = v5;
  }
}

void sub_29641AE1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::metrics::MotionGyroBiasEstimation_EndCount::~MotionGyroBiasEstimation_EndCount(awd::metrics::MotionGyroBiasEstimation_EndCount *this)
{
  *this = &unk_2A1D4F278;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2A1D4F278;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2A1D4F278;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  JUMPOUT(0x29C25A730);
}

uint64_t awd::metrics::MotionGyroBiasEstimation_EndCount::default_instance(awd::metrics::MotionGyroBiasEstimation_EndCount *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = awd::metrics::MotionGyroBiasEstimation_EndCount::default_instance_;
  if (!awd::metrics::MotionGyroBiasEstimation_EndCount::default_instance_)
  {
    awd::metrics::protobuf_AddDesc_Location_2eproto(0, a2, a3, a4);
    return awd::metrics::MotionGyroBiasEstimation_EndCount::default_instance_;
  }

  return result;
}

uint64_t awd::metrics::MotionGyroBiasEstimation_EndCount::Clear(uint64_t this)
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

uint64_t awd::metrics::MotionGyroBiasEstimation_EndCount::MergePartialFromCodedStream(awd::metrics::MotionGyroBiasEstimation_EndCount *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
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
        if (TagFallback >> 3 > 3)
        {
          if (v7 == 4)
          {
            if ((TagFallback & 7) == 0)
            {
              v14 = *(a2 + 1);
              v8 = *(a2 + 2);
              goto LABEL_51;
            }
          }

          else if (v7 == 5)
          {
            if ((TagFallback & 7) == 0)
            {
              v16 = *(a2 + 1);
              v8 = *(a2 + 2);
              goto LABEL_59;
            }
          }

          else if (v7 == 6 && (TagFallback & 7) == 0)
          {
            v10 = *(a2 + 1);
            v8 = *(a2 + 2);
            goto LABEL_67;
          }

          goto LABEL_26;
        }

        if (v7 != 1)
        {
          break;
        }

        if ((TagFallback & 7) != 0)
        {
          goto LABEL_26;
        }

        v11 = *(a2 + 1);
        v8 = *(a2 + 2);
        if (v11 >= v8 || (v12 = *v11, v12 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 2);
          if (!result)
          {
            return result;
          }

          v13 = *(a2 + 1);
          v8 = *(a2 + 2);
        }

        else
        {
          *(this + 2) = v12;
          v13 = v11 + 1;
          *(a2 + 1) = v13;
        }

        *(this + 9) |= 1u;
        if (v13 < v8 && *v13 == 16)
        {
          v15 = v13 + 1;
          *(a2 + 1) = v15;
          goto LABEL_35;
        }
      }

      if (v7 != 2)
      {
        break;
      }

      if ((TagFallback & 7) != 0)
      {
        goto LABEL_26;
      }

      v15 = *(a2 + 1);
      v8 = *(a2 + 2);
LABEL_35:
      if (v15 >= v8 || (v17 = *v15, v17 < 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 3);
        if (!result)
        {
          return result;
        }

        v18 = *(a2 + 1);
        v8 = *(a2 + 2);
      }

      else
      {
        *(this + 3) = v17;
        v18 = v15 + 1;
        *(a2 + 1) = v18;
      }

      *(this + 9) |= 2u;
      if (v18 < v8 && *v18 == 24)
      {
        v9 = v18 + 1;
        *(a2 + 1) = v9;
LABEL_43:
        if (v9 >= v8 || (v19 = *v9, v19 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 4);
          if (!result)
          {
            return result;
          }

          v20 = *(a2 + 1);
          v8 = *(a2 + 2);
        }

        else
        {
          *(this + 4) = v19;
          v20 = v9 + 1;
          *(a2 + 1) = v20;
        }

        *(this + 9) |= 4u;
        if (v20 < v8 && *v20 == 32)
        {
          v14 = v20 + 1;
          *(a2 + 1) = v14;
LABEL_51:
          if (v14 >= v8 || (v21 = *v14, v21 < 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 5);
            if (!result)
            {
              return result;
            }

            v22 = *(a2 + 1);
            v8 = *(a2 + 2);
          }

          else
          {
            *(this + 5) = v21;
            v22 = v14 + 1;
            *(a2 + 1) = v22;
          }

          *(this + 9) |= 8u;
          if (v22 < v8 && *v22 == 40)
          {
            v16 = v22 + 1;
            *(a2 + 1) = v16;
LABEL_59:
            if (v16 >= v8 || (v23 = *v16, v23 < 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 6);
              if (!result)
              {
                return result;
              }

              v24 = *(a2 + 1);
              v8 = *(a2 + 2);
            }

            else
            {
              *(this + 6) = v23;
              v24 = v16 + 1;
              *(a2 + 1) = v24;
            }

            *(this + 9) |= 0x10u;
            if (v24 < v8 && *v24 == 48)
            {
              v10 = v24 + 1;
              *(a2 + 1) = v10;
LABEL_67:
              if (v10 >= v8 || (v25 = *v10, v25 < 0))
              {
                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 7);
                if (!result)
                {
                  return result;
                }

                v26 = *(a2 + 1);
                v8 = *(a2 + 2);
              }

              else
              {
                *(this + 7) = v25;
                v26 = v10 + 1;
                *(a2 + 1) = v26;
              }

              *(this + 9) |= 0x20u;
              if (v26 == v8 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
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

    if (v7 == 3 && (TagFallback & 7) == 0)
    {
      v9 = *(a2 + 1);
      v8 = *(a2 + 2);
      goto LABEL_43;
    }

LABEL_26:
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

unsigned int *awd::metrics::MotionGyroBiasEstimation_EndCount::SerializeWithCachedSizes(unsigned int *this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = this[9];
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(1, this[2], a2, a4);
    v6 = v5[9];
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

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(2, v5[3], a2, a4);
  v6 = v5[9];
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_10:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(3, v5[4], a2, a4);
  v6 = v5[9];
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_6;
    }

LABEL_12:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(5, v5[6], a2, a4);
    if ((v5[9] & 0x20) == 0)
    {
      return this;
    }

    goto LABEL_13;
  }

LABEL_11:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(4, v5[5], a2, a4);
  v6 = v5[9];
  if ((v6 & 0x10) != 0)
  {
    goto LABEL_12;
  }

LABEL_6:
  if ((v6 & 0x20) == 0)
  {
    return this;
  }

LABEL_13:
  v7 = v5[7];

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(6, v7, a2, a4);
}

uint64_t awd::metrics::MotionGyroBiasEstimation_EndCount::ByteSize(awd::metrics::MotionGyroBiasEstimation_EndCount *this, unsigned int a2)
{
  LOBYTE(v3) = *(this + 36);
  if (!v3)
  {
    v4 = 0;
    goto LABEL_35;
  }

  if (*(this + 36))
  {
    v5 = *(this + 2);
    if (v5 >= 0x80)
    {
      v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5) + 1;
      v3 = *(this + 9);
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
    if ((*(this + 36) & 2) == 0)
    {
      goto LABEL_14;
    }
  }

  v6 = *(this + 3);
  if (v6 >= 0x80)
  {
    v7 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v6) + 1;
    v3 = *(this + 9);
  }

  else
  {
    v7 = 2;
  }

  v4 = (v7 + v4);
LABEL_14:
  if ((v3 & 4) != 0)
  {
    v8 = *(this + 4);
    if (v8 >= 0x80)
    {
      v9 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v8) + 1;
      v3 = *(this + 9);
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
        goto LABEL_17;
      }

      goto LABEL_27;
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
    v3 = *(this + 9);
  }

  else
  {
    v11 = 2;
  }

  v4 = (v11 + v4);
  if ((v3 & 0x10) == 0)
  {
LABEL_17:
    if ((v3 & 0x20) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_31;
  }

LABEL_27:
  v12 = *(this + 6);
  if (v12 >= 0x80)
  {
    v13 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v12) + 1;
    v3 = *(this + 9);
  }

  else
  {
    v13 = 2;
  }

  v4 = (v13 + v4);
  if ((v3 & 0x20) != 0)
  {
LABEL_31:
    v14 = *(this + 7);
    if (v14 >= 0x80)
    {
      v15 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v14) + 1;
    }

    else
    {
      v15 = 2;
    }

    v4 = (v15 + v4);
  }

LABEL_35:
  *(this + 8) = v4;
  return v4;
}

void awd::metrics::MotionGyroBiasEstimation_EndCount::CheckTypeAndMergeFrom(awd::metrics::MotionGyroBiasEstimation_EndCount *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  {
    awd::metrics::MotionGyroBiasEstimation_EndCount::CheckTypeAndMergeFrom();
  }

  awd::metrics::MotionGyroBiasEstimation_EndCount::MergeFrom(this, lpsrc);
}

void awd::metrics::MotionGyroBiasEstimation_EndCount::CopyFrom(awd::metrics::MotionGyroBiasEstimation_EndCount *this, const awd::metrics::MotionGyroBiasEstimation_EndCount *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    awd::metrics::MotionGyroBiasEstimation_EndCount::MergeFrom(this, a2);
  }
}

awd::metrics::MotionGyroBiasEstimation_EndCount *awd::metrics::MotionGyroBiasEstimation_EndCount::Swap(awd::metrics::MotionGyroBiasEstimation_EndCount *this, awd::metrics::MotionGyroBiasEstimation_EndCount *a2)
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
    v8 = *(this + 9);
    *(this + 9) = *(a2 + 9);
    *(a2 + 9) = v8;
    v9 = *(this + 8);
    *(this + 8) = *(a2 + 8);
    *(a2 + 8) = v9;
  }

  return this;
}

uint64_t awd::metrics::MotionGyroBiasEstimation::SharedCtor(uint64_t this)
{
  *(this + 8) = 0;
  *(this + 16) = 0;
  *(this + 24) = 0;
  *(this + 52) = 0;
  *(this + 68) = 0;
  *(this + 60) = 0;
  *(this + 76) = 0;
  return this;
}

awd::metrics::MotionGyroBiasEstimation *awd::metrics::MotionGyroBiasEstimation::MotionGyroBiasEstimation(awd::metrics::MotionGyroBiasEstimation *this, const awd::metrics::MotionGyroBiasEstimation *a2)
{
  *this = &unk_2A1D4F2F0;
  *(this + 52) = 0;
  *(this + 68) = 0;
  *(this + 60) = 0;
  *(this + 19) = 0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 5) = 0;
  awd::metrics::MotionGyroBiasEstimation::MergeFrom(this, a2);
  return this;
}

void sub_29641B730(_Unwind_Exception *a1)
{
  v3 = *(v1 + 4);
  if (v3)
  {
    MEMORY[0x29C25A710](v3, 0x1000C8052888210);
  }

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(v1);
  _Unwind_Resume(a1);
}

void awd::metrics::MotionGyroBiasEstimation::MergeFrom(awd::metrics::MotionGyroBiasEstimation *this, const awd::metrics::MotionGyroBiasEstimation *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v16);
  }

  v4 = *(a2 + 10);
  if (v4)
  {
    wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 8, *(this + 10) + v4);
    memcpy((*(this + 4) + 4 * *(this + 10)), *(a2 + 4), 4 * *(a2 + 10));
    *(this + 10) += *(a2 + 10);
  }

  v5 = *(a2 + 19);
  if (!v5)
  {
    goto LABEL_14;
  }

  if (v5)
  {
    v8 = *(a2 + 1);
    *(this + 19) |= 1u;
    *(this + 1) = v8;
    v5 = *(a2 + 19);
    if ((v5 & 2) == 0)
    {
LABEL_8:
      if ((v5 & 4) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_23;
    }
  }

  else if ((v5 & 2) == 0)
  {
    goto LABEL_8;
  }

  *(this + 19) |= 2u;
  v9 = *(this + 2);
  if (!v9)
  {
    operator new();
  }

  v10 = *(a2 + 2);
  if (!v10)
  {
    v10 = *(awd::metrics::MotionGyroBiasEstimation::default_instance_ + 16);
  }

  awd::metrics::MotionGyroBiasEstimation_EndCount::MergeFrom(v9, v10);
  v5 = *(a2 + 19);
  if ((v5 & 4) == 0)
  {
LABEL_9:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_28;
  }

LABEL_23:
  *(this + 19) |= 4u;
  v11 = *(this + 3);
  if (!v11)
  {
    operator new();
  }

  v12 = *(a2 + 3);
  if (!v12)
  {
    v12 = *(awd::metrics::MotionGyroBiasEstimation::default_instance_ + 24);
  }

  awd::metrics::MotionGyroBiasEstimation_EndCount::MergeFrom(v11, v12);
  v5 = *(a2 + 19);
  if ((v5 & 0x10) == 0)
  {
LABEL_10:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_11;
    }

LABEL_29:
    v14 = *(a2 + 14);
    *(this + 19) |= 0x20u;
    *(this + 14) = v14;
    v5 = *(a2 + 19);
    if ((v5 & 0x40) == 0)
    {
LABEL_12:
      if ((v5 & 0x80) == 0)
      {
        goto LABEL_14;
      }

      goto LABEL_13;
    }

    goto LABEL_30;
  }

LABEL_28:
  v13 = *(a2 + 13);
  *(this + 19) |= 0x10u;
  *(this + 13) = v13;
  v5 = *(a2 + 19);
  if ((v5 & 0x20) != 0)
  {
    goto LABEL_29;
  }

LABEL_11:
  if ((v5 & 0x40) == 0)
  {
    goto LABEL_12;
  }

LABEL_30:
  v15 = *(a2 + 15);
  *(this + 19) |= 0x40u;
  *(this + 15) = v15;
  v5 = *(a2 + 19);
  if ((v5 & 0x80) != 0)
  {
LABEL_13:
    v6 = *(a2 + 16);
    *(this + 19) |= 0x80u;
    *(this + 16) = v6;
    v5 = *(a2 + 19);
  }

LABEL_14:
  if ((v5 & 0x100) != 0)
  {
    v7 = *(a2 + 17);
    *(this + 19) |= 0x100u;
    *(this + 17) = v7;
  }
}

void sub_29641B9D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::metrics::MotionGyroBiasEstimation::~MotionGyroBiasEstimation(awd::metrics::MotionGyroBiasEstimation *this)
{
  *this = &unk_2A1D4F2F0;
  awd::metrics::MotionGyroBiasEstimation::SharedDtor(this);
  v2 = *(this + 4);
  if (v2)
  {
    MEMORY[0x29C25A710](v2, 0x1000C8052888210);
  }

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  awd::metrics::MotionGyroBiasEstimation::~MotionGyroBiasEstimation(this);

  JUMPOUT(0x29C25A730);
}

void *awd::metrics::MotionGyroBiasEstimation::SharedDtor(void *this)
{
  if (awd::metrics::MotionGyroBiasEstimation::default_instance_ != this)
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

uint64_t awd::metrics::MotionGyroBiasEstimation::default_instance(awd::metrics::MotionGyroBiasEstimation *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = awd::metrics::MotionGyroBiasEstimation::default_instance_;
  if (!awd::metrics::MotionGyroBiasEstimation::default_instance_)
  {
    awd::metrics::protobuf_AddDesc_Location_2eproto(0, a2, a3, a4);
    return awd::metrics::MotionGyroBiasEstimation::default_instance_;
  }

  return result;
}

uint64_t awd::metrics::MotionGyroBiasEstimation::Clear(uint64_t this)
{
  v1 = *(this + 76);
  if (v1)
  {
    *(this + 8) = 0;
    if ((v1 & 2) != 0)
    {
      v2 = *(this + 16);
      if (v2)
      {
        if (*(v2 + 36))
        {
          *(v2 + 8) = 0;
          *(v2 + 16) = 0;
          *(v2 + 24) = 0;
        }

        *(v2 + 36) = 0;
        v1 = *(this + 76);
      }
    }

    if ((v1 & 4) != 0)
    {
      v3 = *(this + 24);
      if (v3)
      {
        if (*(v3 + 36))
        {
          *(v3 + 8) = 0;
          *(v3 + 16) = 0;
          *(v3 + 24) = 0;
        }

        *(v3 + 36) = 0;
        v1 = *(this + 76);
      }
    }

    *(this + 60) = 0;
    *(this + 52) = 0;
  }

  if ((v1 & 0xFF00) != 0)
  {
    *(this + 68) = 0;
  }

  *(this + 40) = 0;
  *(this + 76) = 0;
  return this;
}

uint64_t awd::metrics::MotionGyroBiasEstimation::MergePartialFromCodedStream(awd::metrics::MotionGyroBiasEstimation *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
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
          if (TagFallback >> 3 <= 4)
          {
            break;
          }

          if (TagFallback >> 3 <= 6)
          {
            if (v7 != 5)
            {
              if (v7 != 6 || (TagFallback & 7) != 0)
              {
                goto LABEL_38;
              }

              v14 = *(a2 + 1);
              v9 = *(a2 + 2);
              goto LABEL_102;
            }

            if ((TagFallback & 7) != 0)
            {
              goto LABEL_38;
            }

            v20 = *(a2 + 1);
            v9 = *(a2 + 2);
LABEL_94:
            if (v20 >= v9 || (v45 = *v20, v45 < 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 13);
              if (!result)
              {
                return result;
              }

              v46 = *(a2 + 1);
              v9 = *(a2 + 2);
            }

            else
            {
              *(this + 13) = v45;
              v46 = v20 + 1;
              *(a2 + 1) = v46;
            }

            *(this + 19) |= 0x10u;
            if (v46 < v9 && *v46 == 48)
            {
              v14 = v46 + 1;
              *(a2 + 1) = v14;
LABEL_102:
              if (v14 >= v9 || (v47 = *v14, v47 < 0))
              {
                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 14);
                if (!result)
                {
                  return result;
                }

                v48 = *(a2 + 1);
                v9 = *(a2 + 2);
              }

              else
              {
                *(this + 14) = v47;
                v48 = v14 + 1;
                *(a2 + 1) = v48;
              }

              *(this + 19) |= 0x20u;
              if (v48 < v9 && *v48 == 56)
              {
                v19 = v48 + 1;
                *(a2 + 1) = v19;
LABEL_110:
                if (v19 >= v9 || (v49 = *v19, v49 < 0))
                {
                  result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 15);
                  if (!result)
                  {
                    return result;
                  }

                  v50 = *(a2 + 1);
                  v9 = *(a2 + 2);
                }

                else
                {
                  *(this + 15) = v49;
                  v50 = v19 + 1;
                  *(a2 + 1) = v50;
                }

                *(this + 19) |= 0x40u;
                if (v50 < v9 && *v50 == 64)
                {
                  v21 = v50 + 1;
                  *(a2 + 1) = v21;
                  goto LABEL_118;
                }
              }
            }
          }

          else
          {
            if (v7 == 7)
            {
              if ((TagFallback & 7) != 0)
              {
                goto LABEL_38;
              }

              v19 = *(a2 + 1);
              v9 = *(a2 + 2);
              goto LABEL_110;
            }

            if (v7 == 8)
            {
              if ((TagFallback & 7) != 0)
              {
                goto LABEL_38;
              }

              v21 = *(a2 + 1);
              v9 = *(a2 + 2);
LABEL_118:
              v56 = 0;
              if (v21 >= v9 || (v51 = *v21, (v51 & 0x80000000) != 0))
              {
                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v56);
                if (!result)
                {
                  return result;
                }

                v51 = v56;
                v52 = *(a2 + 1);
                v9 = *(a2 + 2);
              }

              else
              {
                v52 = v21 + 1;
                *(a2 + 1) = v52;
              }

              *(this + 16) = v51;
              *(this + 19) |= 0x80u;
              if (v52 < v9 && *v52 == 72)
              {
                v10 = v52 + 1;
                *(a2 + 1) = v10;
LABEL_126:
                v56 = 0;
                if (v10 >= v9 || (v53 = *v10, (v53 & 0x80000000) != 0))
                {
                  result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v56);
                  if (!result)
                  {
                    return result;
                  }

                  v53 = v56;
                  v54 = *(a2 + 1);
                  v9 = *(a2 + 2);
                }

                else
                {
                  v54 = v10 + 1;
                  *(a2 + 1) = v54;
                }

                *(this + 17) = v53;
                *(this + 19) |= 0x100u;
                if (v54 == v9 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
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
              if (v7 == 9 && (TagFallback & 7) == 0)
              {
                v10 = *(a2 + 1);
                v9 = *(a2 + 2);
                goto LABEL_126;
              }

LABEL_38:
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
        }

        if (TagFallback >> 3 > 2)
        {
          break;
        }

        if (v7 != 1)
        {
          if (v7 != 2 || v8 != 2)
          {
            goto LABEL_38;
          }

          v11 = *(this + 19);
          goto LABEL_49;
        }

        if ((TagFallback & 7) != 0)
        {
          goto LABEL_38;
        }

        v16 = *(a2 + 1);
        v15 = *(a2 + 2);
        if (v16 >= v15 || (v17 = *v16, v17 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 1);
          if (!result)
          {
            return result;
          }

          v18 = *(a2 + 1);
          v15 = *(a2 + 2);
        }

        else
        {
          *(this + 1) = v17;
          v18 = v16 + 1;
          *(a2 + 1) = v18;
        }

        v11 = *(this + 19) | 1;
        *(this + 19) = v11;
        if (v18 < v15 && *v18 == 18)
        {
          *(a2 + 1) = v18 + 1;
LABEL_49:
          *(this + 19) = v11 | 2;
          v23 = *(this + 2);
          if (!v23)
          {
            operator new();
          }

          v56 = 0;
          v24 = *(a2 + 1);
          if (v24 >= *(a2 + 2) || *v24 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v56))
            {
              return 0;
            }
          }

          else
          {
            v56 = *v24;
            *(a2 + 1) = v24 + 1;
          }

          v25 = *(a2 + 14);
          v26 = *(a2 + 15);
          *(a2 + 14) = v25 + 1;
          if (v25 >= v26)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
          if (!awd::metrics::MotionGyroBiasEstimation_EndCount::MergePartialFromCodedStream(v23, a2, v27) || *(a2 + 36) != 1)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
          v28 = *(a2 + 14);
          v29 = __OFSUB__(v28, 1);
          v30 = v28 - 1;
          if (v30 < 0 == v29)
          {
            *(a2 + 14) = v30;
          }

          v31 = *(a2 + 1);
          if (v31 < *(a2 + 2) && *v31 == 26)
          {
            *(a2 + 1) = v31 + 1;
            goto LABEL_63;
          }
        }
      }

      if (v7 == 3)
      {
        break;
      }

      if (v7 != 4)
      {
        goto LABEL_38;
      }

      if ((TagFallback & 7) != 0)
      {
        if (v8 != 2)
        {
          goto LABEL_38;
        }

        v13 = *(a2 + 1);
        v12 = *(a2 + 2);
        goto LABEL_77;
      }

      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadRepeatedPrimitiveNoInline<unsigned int,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)13>(1, 0x22u, a2, this + 4);
      if (!result)
      {
        return result;
      }

LABEL_91:
      v44 = *(a2 + 1);
      v9 = *(a2 + 2);
      if (v44 < v9 && *v44 == 40)
      {
        v20 = v44 + 1;
        *(a2 + 1) = v20;
        goto LABEL_94;
      }
    }

    if (v8 != 2)
    {
      goto LABEL_38;
    }

LABEL_63:
    *(this + 19) |= 4u;
    v32 = *(this + 3);
    if (!v32)
    {
      operator new();
    }

    v56 = 0;
    v33 = *(a2 + 1);
    if (v33 >= *(a2 + 2) || *v33 < 0)
    {
      if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v56))
      {
        return 0;
      }
    }

    else
    {
      v56 = *v33;
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
    if (!awd::metrics::MotionGyroBiasEstimation_EndCount::MergePartialFromCodedStream(v32, a2, v36) || *(a2 + 36) != 1)
    {
      return 0;
    }

    wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
    v37 = *(a2 + 14);
    v29 = __OFSUB__(v37, 1);
    v38 = v37 - 1;
    if (v38 < 0 == v29)
    {
      *(a2 + 14) = v38;
    }

    v39 = *(a2 + 1);
    v12 = *(a2 + 2);
    if (v39 < v12 && *v39 == 34)
    {
      v13 = v39 + 1;
      *(a2 + 1) = v13;
LABEL_77:
      v56 = 0;
      if (v13 >= v12 || *v13 < 0)
      {
        if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v56))
        {
          return 0;
        }
      }

      else
      {
        v56 = *v13;
        *(a2 + 1) = v13 + 1;
      }

      wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
      while (wireless_diagnostics::google::protobuf::io::CodedInputStream::BytesUntilLimit(a2) >= 1)
      {
        v55 = 0;
        v40 = *(a2 + 1);
        if (v40 >= *(a2 + 2) || *v40 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v55))
          {
            return 0;
          }
        }

        else
        {
          v55 = *v40;
          *(a2 + 1) = v40 + 1;
        }

        v41 = *(this + 10);
        if (v41 == *(this + 11))
        {
          wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 8, v41 + 1);
          v41 = *(this + 10);
        }

        v42 = v55;
        v43 = *(this + 4);
        *(this + 10) = v41 + 1;
        *(v43 + 4 * v41) = v42;
      }

      wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
      goto LABEL_91;
    }
  }
}

uint64_t wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadRepeatedPrimitiveNoInline<unsigned int,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)13>(int a1, unsigned int a2, wireless_diagnostics::google::protobuf::io::CodedInputStream *this, uint64_t *a4)
{
  v21 = 0;
  v7 = *(this + 1);
  if (v7 >= *(this + 2) || *v7 < 0)
  {
    result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v21);
    if (!result)
    {
      return result;
    }
  }

  else
  {
    v21 = *v7;
    *(this + 1) = v7 + 1;
  }

  v9 = *(a4 + 2);
  if (v9 == *(a4 + 3))
  {
    wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(a4, v9 + 1);
    v9 = *(a4 + 2);
  }

  v10 = v21;
  v11 = *a4;
  *(a4 + 2) = v9 + 1;
  *(v11 + 4 * v9) = v10;
  v12 = *(a4 + 3) - *(a4 + 2);
  if (v12 >= 1)
  {
    v13 = v12 + 1;
    do
    {
      if (a2 > 0x7F)
      {
        if (a2 >> 14)
        {
          return 1;
        }

        v17 = *(this + 1);
        v14 = *(this + 2);
        if (v14 - v17 < 2 || (a2 & 0x7F | 0x80) != *v17 || a2 >> 7 != v17[1])
        {
          return 1;
        }

        v16 = (v17 + 2);
      }

      else
      {
        v15 = *(this + 1);
        v14 = *(this + 2);
        if (v15 >= v14 || *v15 != a2)
        {
          return 1;
        }

        v16 = (v15 + 1);
      }

      *(this + 1) = v16;
      if (v16 >= v14 || *v16 < 0)
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v21);
        if (!result)
        {
          return result;
        }
      }

      else
      {
        v21 = *v16;
        *(this + 1) = v16 + 1;
      }

      v18 = *(a4 + 2);
      if (v18 >= *(a4 + 3))
      {
        wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
        wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
        wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
        wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v22);
        v18 = *(a4 + 2);
      }

      v19 = v21;
      v20 = *a4;
      *(a4 + 2) = v18 + 1;
      *(v20 + 4 * v18) = v19;
      --v13;
    }

    while (v13 > 1);
  }

  return 1;
}

void sub_29641C508(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t awd::metrics::MotionGyroBiasEstimation::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 76);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(1, *(this + 8), a2, a4);
    v6 = *(v5 + 76);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_9;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  v7 = *(v5 + 16);
  if (!v7)
  {
    v7 = *(awd::metrics::MotionGyroBiasEstimation::default_instance_ + 16);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(2, v7, a2, a4);
  if ((*(v5 + 76) & 4) != 0)
  {
LABEL_9:
    v8 = *(v5 + 24);
    if (!v8)
    {
      v8 = *(awd::metrics::MotionGyroBiasEstimation::default_instance_ + 24);
    }

    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(3, v8, a2, a4);
  }

LABEL_12:
  if (*(v5 + 40) >= 1)
  {
    wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(a2);
    this = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(a2);
    if (*(v5 + 40) >= 1)
    {
      v9 = 0;
      do
      {
        this = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(a2);
        ++v9;
      }

      while (v9 < *(v5 + 40));
    }
  }

  v10 = *(v5 + 76);
  if ((v10 & 0x10) != 0)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(5, *(v5 + 52), a2, a4);
    v10 = *(v5 + 76);
    if ((v10 & 0x20) == 0)
    {
LABEL_18:
      if ((v10 & 0x40) == 0)
      {
        goto LABEL_19;
      }

      goto LABEL_24;
    }
  }

  else if ((v10 & 0x20) == 0)
  {
    goto LABEL_18;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(6, *(v5 + 56), a2, a4);
  v10 = *(v5 + 76);
  if ((v10 & 0x40) == 0)
  {
LABEL_19:
    if ((v10 & 0x80) == 0)
    {
      goto LABEL_20;
    }

LABEL_25:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(8, *(v5 + 64), a2, a4);
    if ((*(v5 + 76) & 0x100) == 0)
    {
      return this;
    }

    goto LABEL_26;
  }

LABEL_24:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(7, *(v5 + 60), a2, a4);
  v10 = *(v5 + 76);
  if ((v10 & 0x80) != 0)
  {
    goto LABEL_25;
  }

LABEL_20:
  if ((v10 & 0x100) == 0)
  {
    return this;
  }

LABEL_26:
  v11 = *(v5 + 68);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(9, v11, a2, a4);
}

uint64_t awd::metrics::MotionGyroBiasEstimation::ByteSize(awd::metrics::MotionGyroBiasEstimation *this, unint64_t a2)
{
  v3 = *(this + 19);
  if (!v3)
  {
    v4 = 0;
    if ((v3 & 0x100) == 0)
    {
      goto LABEL_51;
    }

    goto LABEL_45;
  }

  if (v3)
  {
    v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 1)) + 1;
    v3 = *(this + 19);
    if ((v3 & 2) == 0)
    {
      goto LABEL_14;
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

  v5 = *(this + 2);
  if (!v5)
  {
    v5 = *(awd::metrics::MotionGyroBiasEstimation::default_instance_ + 16);
  }

  v6 = awd::metrics::MotionGyroBiasEstimation_EndCount::ByteSize(v5, a2);
  v7 = v6;
  if (v6 >= 0x80)
  {
    v8 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v6);
  }

  else
  {
    v8 = 1;
  }

  v4 += v7 + v8 + 1;
  v3 = *(this + 19);
LABEL_14:
  if ((v3 & 4) != 0)
  {
    v9 = *(this + 3);
    if (!v9)
    {
      v9 = *(awd::metrics::MotionGyroBiasEstimation::default_instance_ + 24);
    }

    v10 = awd::metrics::MotionGyroBiasEstimation_EndCount::ByteSize(v9, a2);
    v11 = v10;
    if (v10 >= 0x80)
    {
      v12 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v10);
    }

    else
    {
      v12 = 1;
    }

    v4 += v11 + v12 + 1;
    v3 = *(this + 19);
    if ((v3 & 0x10) == 0)
    {
LABEL_16:
      if ((v3 & 0x20) == 0)
      {
        goto LABEL_17;
      }

      goto LABEL_31;
    }
  }

  else if ((v3 & 0x10) == 0)
  {
    goto LABEL_16;
  }

  v13 = *(this + 13);
  if (v13 >= 0x80)
  {
    v14 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v13) + 1;
    v3 = *(this + 19);
  }

  else
  {
    v14 = 2;
  }

  v4 += v14;
  if ((v3 & 0x20) == 0)
  {
LABEL_17:
    if ((v3 & 0x40) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_35;
  }

LABEL_31:
  v15 = *(this + 14);
  if (v15 >= 0x80)
  {
    v16 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v15) + 1;
    v3 = *(this + 19);
  }

  else
  {
    v16 = 2;
  }

  v4 += v16;
  if ((v3 & 0x40) == 0)
  {
LABEL_18:
    if ((v3 & 0x80) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_39;
  }

LABEL_35:
  v17 = *(this + 15);
  if (v17 >= 0x80)
  {
    v18 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v17) + 1;
    v3 = *(this + 19);
  }

  else
  {
    v18 = 2;
  }

  v4 += v18;
  if ((v3 & 0x80) == 0)
  {
LABEL_19:
    if ((v3 & 0x100) == 0)
    {
      goto LABEL_51;
    }

    goto LABEL_45;
  }

LABEL_39:
  v19 = *(this + 16);
  if ((v19 & 0x80000000) != 0)
  {
    v20 = 11;
  }

  else if (v19 >= 0x80)
  {
    v20 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v19) + 1;
    v3 = *(this + 19);
  }

  else
  {
    v20 = 2;
  }

  v4 += v20;
  if ((v3 & 0x100) != 0)
  {
LABEL_45:
    v21 = *(this + 17);
    if ((v21 & 0x80000000) != 0)
    {
      v22 = 11;
    }

    else if (v21 >= 0x80)
    {
      v22 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v21) + 1;
    }

    else
    {
      v22 = 2;
    }

    v4 += v22;
  }

LABEL_51:
  v23 = *(this + 10);
  if (v23 < 1)
  {
    LODWORD(v25) = 0;
  }

  else
  {
    v24 = 0;
    LODWORD(v25) = 0;
    do
    {
      v26 = *(*(this + 4) + 4 * v24);
      if (v26 >= 0x80)
      {
        v27 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v26);
        v23 = *(this + 10);
      }

      else
      {
        v27 = 1;
      }

      v25 = (v27 + v25);
      ++v24;
    }

    while (v24 < v23);
    if (v25 > 0)
    {
      if (v25 >= 0x80)
      {
        v28 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v25) + 1;
      }

      else
      {
        v28 = 2;
      }

      v4 += v28;
    }
  }

  *(this + 12) = v25;
  result = (v4 + v25);
  *(this + 18) = result;
  return result;
}

void awd::metrics::MotionGyroBiasEstimation::CheckTypeAndMergeFrom(awd::metrics::MotionGyroBiasEstimation *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  {
    awd::metrics::MotionGyroBiasEstimation::CheckTypeAndMergeFrom();
  }

  awd::metrics::MotionGyroBiasEstimation::MergeFrom(this, lpsrc);
}

void awd::metrics::MotionGyroBiasEstimation::CopyFrom(awd::metrics::MotionGyroBiasEstimation *this, const awd::metrics::MotionGyroBiasEstimation *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    awd::metrics::MotionGyroBiasEstimation::MergeFrom(this, a2);
  }
}

double awd::metrics::MotionGyroBiasEstimation::Swap(awd::metrics::MotionGyroBiasEstimation *this, awd::metrics::MotionGyroBiasEstimation *a2)
{
  if (a2 != this)
  {
    v2 = *(this + 1);
    v3 = *(this + 2);
    v4 = *(a2 + 2);
    *(this + 1) = *(a2 + 1);
    *(this + 2) = v4;
    *(a2 + 1) = v2;
    *(a2 + 2) = v3;
    v5 = *(this + 3);
    *(this + 3) = *(a2 + 3);
    *(a2 + 3) = v5;
    v6 = *(this + 4);
    *(this + 4) = *(a2 + 4);
    result = *(a2 + 5);
    *(a2 + 4) = v6;
    v8 = *(this + 5);
    *(this + 5) = result;
    *(a2 + 5) = v8;
    LODWORD(v6) = *(this + 13);
    *(this + 13) = *(a2 + 13);
    *(a2 + 13) = v6;
    LODWORD(v6) = *(this + 14);
    *(this + 14) = *(a2 + 14);
    *(a2 + 14) = v6;
    LODWORD(v6) = *(this + 15);
    *(this + 15) = *(a2 + 15);
    *(a2 + 15) = v6;
    LODWORD(v6) = *(this + 16);
    *(this + 16) = *(a2 + 16);
    *(a2 + 16) = v6;
    LODWORD(v6) = *(this + 17);
    *(this + 17) = *(a2 + 17);
    *(a2 + 17) = v6;
    LODWORD(v6) = *(this + 19);
    *(this + 19) = *(a2 + 19);
    *(a2 + 19) = v6;
    LODWORD(v6) = *(this + 18);
    *(this + 18) = *(a2 + 18);
    *(a2 + 18) = v6;
  }

  return result;
}

double awd::metrics::MotionFitnessSession::SharedCtor(awd::metrics::MotionFitnessSession *this)
{
  *(this + 112) = 0;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 52) = 0;
  v1 = MEMORY[0x29EDC9758];
  *(this + 460) = 0;
  *(this + 452) = 0;
  *(this + 4) = 0;
  *(this + 5) = 0;
  *(this + 3) = v1;
  *(this + 12) = 0;
  result = 0.0;
  *(this + 53) = 0u;
  *(this + 69) = 0u;
  *(this + 85) = 0u;
  *(this + 101) = 0u;
  *(this + 117) = 0u;
  *(this + 133) = 0u;
  *(this + 149) = 0u;
  *(this + 165) = 0u;
  *(this + 181) = 0u;
  *(this + 197) = 0u;
  *(this + 213) = 0u;
  *(this + 14) = 0u;
  *(this + 365) = 0u;
  *(this + 21) = 0u;
  *(this + 22) = 0u;
  *(this + 19) = 0u;
  *(this + 20) = 0u;
  *(this + 17) = 0u;
  *(this + 18) = 0u;
  *(this + 16) = 0u;
  *(this + 24) = 0u;
  *(this + 25) = 0u;
  *(this + 26) = 0u;
  *(this + 27) = 0u;
  return result;
}

awd::metrics::MotionFitnessSession *awd::metrics::MotionFitnessSession::MotionFitnessSession(awd::metrics::MotionFitnessSession *this, const awd::metrics::MotionFitnessSession *a2)
{
  *(this + 30) = 0;
  *(this + 31) = 0;
  *(this + 112) = 0;
  *this = &unk_2A1D4F368;
  *(this + 1) = 0;
  v3 = MEMORY[0x29EDC9758];
  *(this + 52) = 0;
  *(this + 2) = 0;
  *(this + 3) = v3;
  *(this + 460) = 0;
  *(this + 452) = 0;
  *(this + 4) = 0;
  *(this + 5) = 0;
  *(this + 12) = 0;
  *(this + 53) = 0u;
  *(this + 69) = 0u;
  *(this + 85) = 0u;
  *(this + 101) = 0u;
  *(this + 117) = 0u;
  *(this + 133) = 0u;
  *(this + 149) = 0u;
  *(this + 165) = 0u;
  *(this + 181) = 0u;
  *(this + 197) = 0u;
  *(this + 213) = 0u;
  *(this + 14) = 0u;
  *(this + 365) = 0u;
  *(this + 21) = 0u;
  *(this + 22) = 0u;
  *(this + 19) = 0u;
  *(this + 20) = 0u;
  *(this + 17) = 0u;
  *(this + 18) = 0u;
  *(this + 16) = 0u;
  *(this + 24) = 0u;
  *(this + 25) = 0u;
  *(this + 26) = 0u;
  *(this + 27) = 0u;
  awd::metrics::MotionFitnessSession::MergeFrom(this, a2);
  return this;
}

void sub_29641CD10(_Unwind_Exception *a1)
{
  v3 = v2;
  if (*v3)
  {
    MEMORY[0x29C25A710](*v3, 0x1000C8052888210);
  }

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(v1);
  _Unwind_Resume(a1);
}

void awd::metrics::MotionFitnessSession::MergeFrom(awd::metrics::MotionFitnessSession *this, const awd::metrics::MotionFitnessSession *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v116);
  }

  v4 = *(a2 + 62);
  if (v4)
  {
    wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 60, *(this + 62) + v4);
    memcpy((*(this + 30) + 4 * *(this + 62)), *(a2 + 30), 4 * *(a2 + 62));
    *(this + 62) += *(a2 + 62);
  }

  v5 = *(a2 + 113);
  if (!v5)
  {
    goto LABEL_18;
  }

  if (v5)
  {
    v6 = *(a2 + 1);
    *(this + 113) |= 1u;
    *(this + 1) = v6;
    v5 = *(a2 + 113);
  }

  if ((v5 & 2) != 0)
  {
    v7 = *(a2 + 4);
    if (v7 >= 0x19)
    {
      awd::metrics::MotionFitnessSession::MergeFrom();
    }

    *(this + 113) |= 2u;
    *(this + 4) = v7;
    v5 = *(a2 + 113);
  }

  if ((v5 & 4) != 0)
  {
    v27 = *(a2 + 52);
    *(this + 113) |= 4u;
    *(this + 52) = v27;
    v5 = *(a2 + 113);
    if ((v5 & 8) == 0)
    {
LABEL_13:
      if ((v5 & 0x10) == 0)
      {
        goto LABEL_14;
      }

      goto LABEL_142;
    }
  }

  else if ((v5 & 8) == 0)
  {
    goto LABEL_13;
  }

  v28 = *(a2 + 3);
  *(this + 113) |= 8u;
  v29 = *(this + 3);
  if (v29 == MEMORY[0x29EDC9758])
  {
    operator new();
  }

  std::string::operator=(v29, v28);
  v5 = *(a2 + 113);
  if ((v5 & 0x10) == 0)
  {
LABEL_14:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_15;
    }

LABEL_143:
    v31 = *(a2 + 8);
    *(this + 113) |= 0x20u;
    *(this + 8) = v31;
    v5 = *(a2 + 113);
    if ((v5 & 0x40) == 0)
    {
LABEL_16:
      if ((v5 & 0x80) == 0)
      {
        goto LABEL_18;
      }

      goto LABEL_17;
    }

    goto LABEL_144;
  }

LABEL_142:
  v30 = *(a2 + 5);
  *(this + 113) |= 0x10u;
  *(this + 5) = v30;
  v5 = *(a2 + 113);
  if ((v5 & 0x20) != 0)
  {
    goto LABEL_143;
  }

LABEL_15:
  if ((v5 & 0x40) == 0)
  {
    goto LABEL_16;
  }

LABEL_144:
  v32 = *(a2 + 9);
  *(this + 113) |= 0x40u;
  *(this + 9) = v32;
  v5 = *(a2 + 113);
  if ((v5 & 0x80) != 0)
  {
LABEL_17:
    v8 = *(a2 + 10);
    *(this + 113) |= 0x80u;
    *(this + 10) = v8;
    v5 = *(a2 + 113);
  }

LABEL_18:
  if ((v5 & 0xFF00) == 0)
  {
    goto LABEL_36;
  }

  if ((v5 & 0x100) != 0)
  {
    v9 = *(a2 + 53);
    *(this + 113) |= 0x100u;
    *(this + 53) = v9;
    v5 = *(a2 + 113);
  }

  if ((v5 & 0x200) != 0)
  {
    v10 = *(a2 + 11);
    if (v10 >= 2)
    {
      awd::metrics::MotionFitnessSession::MergeFrom();
    }

    *(this + 113) |= 0x200u;
    *(this + 11) = v10;
    v5 = *(a2 + 113);
  }

  if ((v5 & 0x400) != 0)
  {
    v11 = *(a2 + 12);
    *(this + 113) |= 0x400u;
    *(this + 12) = v11;
    v5 = *(a2 + 113);
  }

  if ((v5 & 0x800) != 0)
  {
    v12 = *(a2 + 14);
    if (v12 >= 5)
    {
      awd::metrics::MotionFitnessSession::MergeFrom();
    }

    *(this + 113) |= 0x800u;
    *(this + 14) = v12;
    v5 = *(a2 + 113);
  }

  if ((v5 & 0x1000) != 0)
  {
    v13 = *(a2 + 15);
    if (v13 >= 5)
    {
      awd::metrics::MotionFitnessSession::MergeFrom();
    }

    *(this + 113) |= 0x1000u;
    *(this + 15) = v13;
    v5 = *(a2 + 113);
  }

  if ((v5 & 0x2000) != 0)
  {
    v33 = *(a2 + 16);
    *(this + 113) |= 0x2000u;
    *(this + 16) = v33;
    v5 = *(a2 + 113);
    if ((v5 & 0x4000) == 0)
    {
LABEL_34:
      if ((v5 & 0x8000) == 0)
      {
        goto LABEL_36;
      }

      goto LABEL_35;
    }
  }

  else if ((v5 & 0x4000) == 0)
  {
    goto LABEL_34;
  }

  v34 = *(a2 + 17);
  *(this + 113) |= 0x4000u;
  *(this + 17) = v34;
  v5 = *(a2 + 113);
  if ((v5 & 0x8000) != 0)
  {
LABEL_35:
    v14 = *(a2 + 54);
    *(this + 113) |= 0x8000u;
    *(this + 54) = v14;
    v5 = *(a2 + 113);
  }

LABEL_36:
  if ((v5 & 0xFF0000) == 0)
  {
    goto LABEL_51;
  }

  if ((v5 & 0x10000) != 0)
  {
    v15 = *(a2 + 55);
    *(this + 113) |= 0x10000u;
    *(this + 55) = v15;
    v5 = *(a2 + 113);
  }

  if ((v5 & 0x20000) != 0)
  {
    v16 = *(a2 + 18);
    if (v16 >= 5)
    {
      awd::metrics::MotionFitnessSession::MergeFrom();
    }

    *(this + 113) |= 0x20000u;
    *(this + 18) = v16;
    v5 = *(a2 + 113);
  }

  if ((v5 & 0x40000) != 0)
  {
    v17 = *(a2 + 19);
    if (v17 >= 5)
    {
      awd::metrics::MotionFitnessSession::MergeFrom();
    }

    *(this + 113) |= 0x40000u;
    *(this + 19) = v17;
    v5 = *(a2 + 113);
  }

  if ((v5 & 0x80000) != 0)
  {
    v77 = *(a2 + 20);
    *(this + 113) |= 0x80000u;
    *(this + 20) = v77;
    v5 = *(a2 + 113);
    if ((v5 & 0x100000) == 0)
    {
LABEL_47:
      if ((v5 & 0x200000) == 0)
      {
        goto LABEL_48;
      }

      goto LABEL_199;
    }
  }

  else if ((v5 & 0x100000) == 0)
  {
    goto LABEL_47;
  }

  v78 = *(a2 + 21);
  *(this + 113) |= 0x100000u;
  *(this + 21) = v78;
  v5 = *(a2 + 113);
  if ((v5 & 0x200000) == 0)
  {
LABEL_48:
    if ((v5 & 0x400000) == 0)
    {
      goto LABEL_49;
    }

    goto LABEL_200;
  }

LABEL_199:
  v79 = *(a2 + 22);
  *(this + 113) |= 0x200000u;
  *(this + 22) = v79;
  v5 = *(a2 + 113);
  if ((v5 & 0x400000) == 0)
  {
LABEL_49:
    if ((v5 & 0x800000) == 0)
    {
      goto LABEL_51;
    }

    goto LABEL_50;
  }

LABEL_200:
  v80 = *(a2 + 23);
  *(this + 113) |= 0x400000u;
  *(this + 23) = v80;
  v5 = *(a2 + 113);
  if ((v5 & 0x800000) != 0)
  {
LABEL_50:
    v18 = *(a2 + 24);
    *(this + 113) |= 0x800000u;
    *(this + 24) = v18;
    v5 = *(a2 + 113);
  }

LABEL_51:
  if (!HIBYTE(v5))
  {
    goto LABEL_60;
  }

  if ((v5 & 0x1000000) != 0)
  {
    v81 = *(a2 + 25);
    *(this + 113) |= 0x1000000u;
    *(this + 25) = v81;
    v5 = *(a2 + 113);
    if ((v5 & 0x2000000) == 0)
    {
LABEL_54:
      if ((v5 & 0x4000000) == 0)
      {
        goto LABEL_55;
      }

      goto LABEL_204;
    }
  }

  else if ((v5 & 0x2000000) == 0)
  {
    goto LABEL_54;
  }

  v82 = *(a2 + 26);
  *(this + 113) |= 0x2000000u;
  *(this + 26) = v82;
  v5 = *(a2 + 113);
  if ((v5 & 0x4000000) == 0)
  {
LABEL_55:
    if ((v5 & 0x8000000) == 0)
    {
      goto LABEL_56;
    }

    goto LABEL_205;
  }

LABEL_204:
  v83 = *(a2 + 27);
  *(this + 113) |= 0x4000000u;
  *(this + 27) = v83;
  v5 = *(a2 + 113);
  if ((v5 & 0x8000000) == 0)
  {
LABEL_56:
    if ((v5 & 0x10000000) == 0)
    {
      goto LABEL_57;
    }

    goto LABEL_206;
  }

LABEL_205:
  v84 = *(a2 + 28);
  *(this + 113) |= 0x8000000u;
  *(this + 28) = v84;
  v5 = *(a2 + 113);
  if ((v5 & 0x10000000) == 0)
  {
LABEL_57:
    if ((v5 & 0x20000000) == 0)
    {
      goto LABEL_58;
    }

    goto LABEL_207;
  }

LABEL_206:
  v85 = *(a2 + 29);
  *(this + 113) |= 0x10000000u;
  *(this + 29) = v85;
  v5 = *(a2 + 113);
  if ((v5 & 0x20000000) == 0)
  {
LABEL_58:
    if ((v5 & 0x40000000) == 0)
    {
      goto LABEL_59;
    }

LABEL_208:
    v87 = *(a2 + 31);
    *(this + 113) |= 0x40000000u;
    *(this + 31) = v87;
    if ((*(a2 + 113) & 0x80000000) == 0)
    {
      goto LABEL_60;
    }

    goto LABEL_209;
  }

LABEL_207:
  v86 = *(a2 + 30);
  *(this + 113) |= 0x20000000u;
  *(this + 30) = v86;
  v5 = *(a2 + 113);
  if ((v5 & 0x40000000) != 0)
  {
    goto LABEL_208;
  }

LABEL_59:
  if ((v5 & 0x80000000) == 0)
  {
    goto LABEL_60;
  }

LABEL_209:
  v88 = *(a2 + 32);
  *(this + 113) |= 0x80000000;
  *(this + 32) = v88;
LABEL_60:
  v19 = *(a2 + 114);
  if (!v19)
  {
    goto LABEL_70;
  }

  if (v19)
  {
    v35 = *(a2 + 33);
    *(this + 114) |= 1u;
    *(this + 33) = v35;
    v19 = *(a2 + 114);
    if ((v19 & 2) == 0)
    {
LABEL_63:
      if ((v19 & 4) == 0)
      {
        goto LABEL_64;
      }

      goto LABEL_151;
    }
  }

  else if ((v19 & 2) == 0)
  {
    goto LABEL_63;
  }

  v36 = *(a2 + 34);
  *(this + 114) |= 2u;
  *(this + 34) = v36;
  v19 = *(a2 + 114);
  if ((v19 & 4) == 0)
  {
LABEL_64:
    if ((v19 & 8) == 0)
    {
      goto LABEL_65;
    }

    goto LABEL_152;
  }

LABEL_151:
  v37 = *(a2 + 35);
  *(this + 114) |= 4u;
  *(this + 35) = v37;
  v19 = *(a2 + 114);
  if ((v19 & 8) == 0)
  {
LABEL_65:
    if ((v19 & 0x10) == 0)
    {
      goto LABEL_66;
    }

    goto LABEL_153;
  }

LABEL_152:
  v38 = *(a2 + 36);
  *(this + 114) |= 8u;
  *(this + 36) = v38;
  v19 = *(a2 + 114);
  if ((v19 & 0x10) == 0)
  {
LABEL_66:
    if ((v19 & 0x20) == 0)
    {
      goto LABEL_67;
    }

    goto LABEL_154;
  }

LABEL_153:
  v39 = *(a2 + 37);
  *(this + 114) |= 0x10u;
  *(this + 37) = v39;
  v19 = *(a2 + 114);
  if ((v19 & 0x20) == 0)
  {
LABEL_67:
    if ((v19 & 0x40) == 0)
    {
      goto LABEL_68;
    }

    goto LABEL_155;
  }

LABEL_154:
  v40 = *(a2 + 224);
  *(this + 114) |= 0x20u;
  *(this + 224) = v40;
  v19 = *(a2 + 114);
  if ((v19 & 0x40) == 0)
  {
LABEL_68:
    if ((v19 & 0x80) == 0)
    {
      goto LABEL_70;
    }

    goto LABEL_69;
  }

LABEL_155:
  v41 = *(a2 + 38);
  *(this + 114) |= 0x40u;
  *(this + 38) = v41;
  v19 = *(a2 + 114);
  if ((v19 & 0x80) != 0)
  {
LABEL_69:
    v20 = *(a2 + 39);
    *(this + 114) |= 0x80u;
    *(this + 39) = v20;
    v19 = *(a2 + 114);
  }

LABEL_70:
  if ((v19 & 0xFF00) == 0)
  {
    goto LABEL_80;
  }

  if ((v19 & 0x100) != 0)
  {
    v42 = *(a2 + 40);
    *(this + 114) |= 0x100u;
    *(this + 40) = v42;
    v19 = *(a2 + 114);
    if ((v19 & 0x200) == 0)
    {
LABEL_73:
      if ((v19 & 0x400) == 0)
      {
        goto LABEL_74;
      }

      goto LABEL_159;
    }
  }

  else if ((v19 & 0x200) == 0)
  {
    goto LABEL_73;
  }

  v43 = *(a2 + 225);
  *(this + 114) |= 0x200u;
  *(this + 225) = v43;
  v19 = *(a2 + 114);
  if ((v19 & 0x400) == 0)
  {
LABEL_74:
    if ((v19 & 0x800) == 0)
    {
      goto LABEL_75;
    }

    goto LABEL_160;
  }

LABEL_159:
  v44 = *(a2 + 41);
  *(this + 114) |= 0x400u;
  *(this + 41) = v44;
  v19 = *(a2 + 114);
  if ((v19 & 0x800) == 0)
  {
LABEL_75:
    if ((v19 & 0x1000) == 0)
    {
      goto LABEL_76;
    }

    goto LABEL_161;
  }

LABEL_160:
  v45 = *(a2 + 42);
  *(this + 114) |= 0x800u;
  *(this + 42) = v45;
  v19 = *(a2 + 114);
  if ((v19 & 0x1000) == 0)
  {
LABEL_76:
    if ((v19 & 0x2000) == 0)
    {
      goto LABEL_77;
    }

    goto LABEL_162;
  }

LABEL_161:
  v46 = *(a2 + 43);
  *(this + 114) |= 0x1000u;
  *(this + 43) = v46;
  v19 = *(a2 + 114);
  if ((v19 & 0x2000) == 0)
  {
LABEL_77:
    if ((v19 & 0x4000) == 0)
    {
      goto LABEL_78;
    }

    goto LABEL_163;
  }

LABEL_162:
  v47 = *(a2 + 44);
  *(this + 114) |= 0x2000u;
  *(this + 44) = v47;
  v19 = *(a2 + 114);
  if ((v19 & 0x4000) == 0)
  {
LABEL_78:
    if ((v19 & 0x8000) == 0)
    {
      goto LABEL_80;
    }

    goto LABEL_79;
  }

LABEL_163:
  v48 = *(a2 + 45);
  *(this + 114) |= 0x4000u;
  *(this + 45) = v48;
  v19 = *(a2 + 114);
  if ((v19 & 0x8000) != 0)
  {
LABEL_79:
    v21 = *(a2 + 46);
    *(this + 114) |= 0x8000u;
    *(this + 46) = v21;
    v19 = *(a2 + 114);
  }

LABEL_80:
  if ((v19 & 0xFF0000) == 0)
  {
    goto LABEL_90;
  }

  if ((v19 & 0x10000) != 0)
  {
    v49 = *(a2 + 47);
    *(this + 114) |= 0x10000u;
    *(this + 47) = v49;
    v19 = *(a2 + 114);
    if ((v19 & 0x20000) == 0)
    {
LABEL_83:
      if ((v19 & 0x40000) == 0)
      {
        goto LABEL_84;
      }

      goto LABEL_167;
    }
  }

  else if ((v19 & 0x20000) == 0)
  {
    goto LABEL_83;
  }

  v50 = *(a2 + 48);
  *(this + 114) |= 0x20000u;
  *(this + 48) = v50;
  v19 = *(a2 + 114);
  if ((v19 & 0x40000) == 0)
  {
LABEL_84:
    if ((v19 & 0x80000) == 0)
    {
      goto LABEL_85;
    }

    goto LABEL_168;
  }

LABEL_167:
  v51 = *(a2 + 49);
  *(this + 114) |= 0x40000u;
  *(this + 49) = v51;
  v19 = *(a2 + 114);
  if ((v19 & 0x80000) == 0)
  {
LABEL_85:
    if ((v19 & 0x100000) == 0)
    {
      goto LABEL_86;
    }

    goto LABEL_169;
  }

LABEL_168:
  v52 = *(a2 + 50);
  *(this + 114) |= 0x80000u;
  *(this + 50) = v52;
  v19 = *(a2 + 114);
  if ((v19 & 0x100000) == 0)
  {
LABEL_86:
    if ((v19 & 0x200000) == 0)
    {
      goto LABEL_87;
    }

    goto LABEL_170;
  }

LABEL_169:
  v53 = *(a2 + 51);
  *(this + 114) |= 0x100000u;
  *(this + 51) = v53;
  v19 = *(a2 + 114);
  if ((v19 & 0x200000) == 0)
  {
LABEL_87:
    if ((v19 & 0x400000) == 0)
    {
      goto LABEL_88;
    }

    goto LABEL_171;
  }

LABEL_170:
  v54 = *(a2 + 52);
  *(this + 114) |= 0x200000u;
  *(this + 52) = v54;
  v19 = *(a2 + 114);
  if ((v19 & 0x400000) == 0)
  {
LABEL_88:
    if ((v19 & 0x800000) == 0)
    {
      goto LABEL_90;
    }

    goto LABEL_89;
  }

LABEL_171:
  v55 = *(a2 + 53);
  *(this + 114) |= 0x400000u;
  *(this + 53) = v55;
  v19 = *(a2 + 114);
  if ((v19 & 0x800000) != 0)
  {
LABEL_89:
    v22 = *(a2 + 54);
    *(this + 114) |= 0x800000u;
    *(this + 54) = v22;
    v19 = *(a2 + 114);
  }

LABEL_90:
  if (!HIBYTE(v19))
  {
    goto LABEL_98;
  }

  if ((v19 & 0x1000000) != 0)
  {
    v89 = *(a2 + 55);
    *(this + 114) |= 0x1000000u;
    *(this + 55) = v89;
    v19 = *(a2 + 114);
    if ((v19 & 0x2000000) == 0)
    {
LABEL_93:
      if ((v19 & 0x4000000) == 0)
      {
        goto LABEL_94;
      }

      goto LABEL_212;
    }
  }

  else if ((v19 & 0x2000000) == 0)
  {
    goto LABEL_93;
  }

  v90 = *(a2 + 226);
  *(this + 114) |= 0x2000000u;
  *(this + 226) = v90;
  v19 = *(a2 + 114);
  if ((v19 & 0x4000000) == 0)
  {
LABEL_94:
    if ((v19 & 0x8000000) == 0)
    {
      goto LABEL_95;
    }

    goto LABEL_213;
  }

LABEL_212:
  v91 = *(a2 + 57);
  *(this + 114) |= 0x4000000u;
  *(this + 57) = v91;
  v19 = *(a2 + 114);
  if ((v19 & 0x8000000) == 0)
  {
LABEL_95:
    if ((v19 & 0x10000000) == 0)
    {
      goto LABEL_96;
    }

    goto LABEL_214;
  }

LABEL_213:
  v92 = *(a2 + 58);
  *(this + 114) |= 0x8000000u;
  *(this + 58) = v92;
  v19 = *(a2 + 114);
  if ((v19 & 0x10000000) == 0)
  {
LABEL_96:
    if ((v19 & 0x20000000) == 0)
    {
      goto LABEL_97;
    }

LABEL_215:
    v94 = *(a2 + 64);
    *(this + 114) |= 0x20000000u;
    *(this + 64) = v94;
    if ((*(a2 + 114) & 0x80000000) == 0)
    {
      goto LABEL_98;
    }

    goto LABEL_216;
  }

LABEL_214:
  v93 = *(a2 + 59);
  *(this + 114) |= 0x10000000u;
  *(this + 59) = v93;
  v19 = *(a2 + 114);
  if ((v19 & 0x20000000) != 0)
  {
    goto LABEL_215;
  }

LABEL_97:
  if ((v19 & 0x80000000) == 0)
  {
    goto LABEL_98;
  }

LABEL_216:
  v95 = *(a2 + 33);
  *(this + 114) |= 0x80000000;
  *(this + 33) = v95;
LABEL_98:
  v23 = *(a2 + 115);
  if (!v23)
  {
    goto LABEL_108;
  }

  if (v23)
  {
    v56 = *(a2 + 65);
    *(this + 115) |= 1u;
    *(this + 65) = v56;
    v23 = *(a2 + 115);
    if ((v23 & 2) == 0)
    {
LABEL_101:
      if ((v23 & 4) == 0)
      {
        goto LABEL_102;
      }

      goto LABEL_175;
    }
  }

  else if ((v23 & 2) == 0)
  {
    goto LABEL_101;
  }

  v57 = *(a2 + 68);
  *(this + 115) |= 2u;
  *(this + 68) = v57;
  v23 = *(a2 + 115);
  if ((v23 & 4) == 0)
  {
LABEL_102:
    if ((v23 & 8) == 0)
    {
      goto LABEL_103;
    }

    goto LABEL_176;
  }

LABEL_175:
  v58 = *(a2 + 69);
  *(this + 115) |= 4u;
  *(this + 69) = v58;
  v23 = *(a2 + 115);
  if ((v23 & 8) == 0)
  {
LABEL_103:
    if ((v23 & 0x10) == 0)
    {
      goto LABEL_104;
    }

    goto LABEL_177;
  }

LABEL_176:
  v59 = *(a2 + 70);
  *(this + 115) |= 8u;
  *(this + 70) = v59;
  v23 = *(a2 + 115);
  if ((v23 & 0x10) == 0)
  {
LABEL_104:
    if ((v23 & 0x20) == 0)
    {
      goto LABEL_105;
    }

    goto LABEL_178;
  }

LABEL_177:
  v60 = *(a2 + 71);
  *(this + 115) |= 0x10u;
  *(this + 71) = v60;
  v23 = *(a2 + 115);
  if ((v23 & 0x20) == 0)
  {
LABEL_105:
    if ((v23 & 0x40) == 0)
    {
      goto LABEL_106;
    }

    goto LABEL_179;
  }

LABEL_178:
  v61 = *(a2 + 72);
  *(this + 115) |= 0x20u;
  *(this + 72) = v61;
  v23 = *(a2 + 115);
  if ((v23 & 0x40) == 0)
  {
LABEL_106:
    if ((v23 & 0x80) == 0)
    {
      goto LABEL_108;
    }

    goto LABEL_107;
  }

LABEL_179:
  v62 = *(a2 + 73);
  *(this + 115) |= 0x40u;
  *(this + 73) = v62;
  v23 = *(a2 + 115);
  if ((v23 & 0x80) != 0)
  {
LABEL_107:
    v24 = *(a2 + 74);
    *(this + 115) |= 0x80u;
    *(this + 74) = v24;
    v23 = *(a2 + 115);
  }

LABEL_108:
  if ((v23 & 0xFF00) == 0)
  {
    goto LABEL_118;
  }

  if ((v23 & 0x100) != 0)
  {
    v63 = *(a2 + 75);
    *(this + 115) |= 0x100u;
    *(this + 75) = v63;
    v23 = *(a2 + 115);
    if ((v23 & 0x200) == 0)
    {
LABEL_111:
      if ((v23 & 0x400) == 0)
      {
        goto LABEL_112;
      }

      goto LABEL_183;
    }
  }

  else if ((v23 & 0x200) == 0)
  {
    goto LABEL_111;
  }

  v64 = *(a2 + 76);
  *(this + 115) |= 0x200u;
  *(this + 76) = v64;
  v23 = *(a2 + 115);
  if ((v23 & 0x400) == 0)
  {
LABEL_112:
    if ((v23 & 0x800) == 0)
    {
      goto LABEL_113;
    }

    goto LABEL_184;
  }

LABEL_183:
  v65 = *(a2 + 77);
  *(this + 115) |= 0x400u;
  *(this + 77) = v65;
  v23 = *(a2 + 115);
  if ((v23 & 0x800) == 0)
  {
LABEL_113:
    if ((v23 & 0x1000) == 0)
    {
      goto LABEL_114;
    }

    goto LABEL_185;
  }

LABEL_184:
  v66 = *(a2 + 78);
  *(this + 115) |= 0x800u;
  *(this + 78) = v66;
  v23 = *(a2 + 115);
  if ((v23 & 0x1000) == 0)
  {
LABEL_114:
    if ((v23 & 0x2000) == 0)
    {
      goto LABEL_115;
    }

    goto LABEL_186;
  }

LABEL_185:
  v67 = *(a2 + 79);
  *(this + 115) |= 0x1000u;
  *(this + 79) = v67;
  v23 = *(a2 + 115);
  if ((v23 & 0x2000) == 0)
  {
LABEL_115:
    if ((v23 & 0x4000) == 0)
    {
      goto LABEL_116;
    }

    goto LABEL_187;
  }

LABEL_186:
  v68 = *(a2 + 80);
  *(this + 115) |= 0x2000u;
  *(this + 80) = v68;
  v23 = *(a2 + 115);
  if ((v23 & 0x4000) == 0)
  {
LABEL_116:
    if ((v23 & 0x8000) == 0)
    {
      goto LABEL_118;
    }

    goto LABEL_117;
  }

LABEL_187:
  v69 = *(a2 + 81);
  *(this + 115) |= 0x4000u;
  *(this + 81) = v69;
  v23 = *(a2 + 115);
  if ((v23 & 0x8000) != 0)
  {
LABEL_117:
    v25 = *(a2 + 82);
    *(this + 115) |= 0x8000u;
    *(this + 82) = v25;
    v23 = *(a2 + 115);
  }

LABEL_118:
  if ((v23 & 0xFF0000) == 0)
  {
    goto LABEL_128;
  }

  if ((v23 & 0x10000) != 0)
  {
    v70 = *(a2 + 83);
    *(this + 115) |= 0x10000u;
    *(this + 83) = v70;
    v23 = *(a2 + 115);
    if ((v23 & 0x20000) == 0)
    {
LABEL_121:
      if ((v23 & 0x40000) == 0)
      {
        goto LABEL_122;
      }

      goto LABEL_191;
    }
  }

  else if ((v23 & 0x20000) == 0)
  {
    goto LABEL_121;
  }

  v71 = *(a2 + 84);
  *(this + 115) |= 0x20000u;
  *(this + 84) = v71;
  v23 = *(a2 + 115);
  if ((v23 & 0x40000) == 0)
  {
LABEL_122:
    if ((v23 & 0x80000) == 0)
    {
      goto LABEL_123;
    }

    goto LABEL_192;
  }

LABEL_191:
  v72 = *(a2 + 85);
  *(this + 115) |= 0x40000u;
  *(this + 85) = v72;
  v23 = *(a2 + 115);
  if ((v23 & 0x80000) == 0)
  {
LABEL_123:
    if ((v23 & 0x100000) == 0)
    {
      goto LABEL_124;
    }

    goto LABEL_193;
  }

LABEL_192:
  v73 = *(a2 + 86);
  *(this + 115) |= 0x80000u;
  *(this + 86) = v73;
  v23 = *(a2 + 115);
  if ((v23 & 0x100000) == 0)
  {
LABEL_124:
    if ((v23 & 0x200000) == 0)
    {
      goto LABEL_125;
    }

    goto LABEL_194;
  }

LABEL_193:
  v74 = *(a2 + 87);
  *(this + 115) |= 0x100000u;
  *(this + 87) = v74;
  v23 = *(a2 + 115);
  if ((v23 & 0x200000) == 0)
  {
LABEL_125:
    if ((v23 & 0x400000) == 0)
    {
      goto LABEL_126;
    }

    goto LABEL_195;
  }

LABEL_194:
  v75 = *(a2 + 88);
  *(this + 115) |= 0x200000u;
  *(this + 88) = v75;
  v23 = *(a2 + 115);
  if ((v23 & 0x400000) == 0)
  {
LABEL_126:
    if ((v23 & 0x800000) == 0)
    {
      goto LABEL_128;
    }

    goto LABEL_127;
  }

LABEL_195:
  v76 = *(a2 + 89);
  *(this + 115) |= 0x400000u;
  *(this + 89) = v76;
  v23 = *(a2 + 115);
  if ((v23 & 0x800000) != 0)
  {
LABEL_127:
    v26 = *(a2 + 90);
    *(this + 115) |= 0x800000u;
    *(this + 90) = v26;
    v23 = *(a2 + 115);
  }

LABEL_128:
  if (!HIBYTE(v23))
  {
    goto LABEL_227;
  }

  if ((v23 & 0x1000000) != 0)
  {
    v96 = *(a2 + 91);
    *(this + 115) |= 0x1000000u;
    *(this + 91) = v96;
    v23 = *(a2 + 115);
    if ((v23 & 0x2000000) == 0)
    {
LABEL_131:
      if ((v23 & 0x4000000) == 0)
      {
        goto LABEL_132;
      }

      goto LABEL_219;
    }
  }

  else if ((v23 & 0x2000000) == 0)
  {
    goto LABEL_131;
  }

  v97 = *(a2 + 92);
  *(this + 115) |= 0x2000000u;
  *(this + 92) = v97;
  v23 = *(a2 + 115);
  if ((v23 & 0x4000000) == 0)
  {
LABEL_132:
    if ((v23 & 0x8000000) == 0)
    {
      goto LABEL_133;
    }

    goto LABEL_220;
  }

LABEL_219:
  v98 = *(a2 + 93);
  *(this + 115) |= 0x4000000u;
  *(this + 93) = v98;
  v23 = *(a2 + 115);
  if ((v23 & 0x8000000) == 0)
  {
LABEL_133:
    if ((v23 & 0x10000000) == 0)
    {
      goto LABEL_134;
    }

    goto LABEL_221;
  }

LABEL_220:
  v99 = *(a2 + 94);
  *(this + 115) |= 0x8000000u;
  *(this + 94) = v99;
  v23 = *(a2 + 115);
  if ((v23 & 0x10000000) == 0)
  {
LABEL_134:
    if ((v23 & 0x20000000) == 0)
    {
      goto LABEL_135;
    }

    goto LABEL_222;
  }

LABEL_221:
  v100 = *(a2 + 227);
  *(this + 115) |= 0x10000000u;
  *(this + 227) = v100;
  v23 = *(a2 + 115);
  if ((v23 & 0x20000000) == 0)
  {
LABEL_135:
    if ((v23 & 0x40000000) == 0)
    {
      goto LABEL_136;
    }

    goto LABEL_223;
  }

LABEL_222:
  v101 = *(a2 + 380);
  *(this + 115) |= 0x20000000u;
  *(this + 380) = v101;
  v23 = *(a2 + 115);
  if ((v23 & 0x40000000) == 0)
  {
LABEL_136:
    if ((v23 & 0x80000000) == 0)
    {
      goto LABEL_227;
    }

    goto LABEL_225;
  }

LABEL_223:
  v102 = *(a2 + 96);
  if (v102 >= 0x19)
  {
    awd::metrics::MotionFitnessSession::MergeFrom();
  }

  *(this + 115) |= 0x40000000u;
  *(this + 96) = v102;
  if ((*(a2 + 115) & 0x80000000) != 0)
  {
LABEL_225:
    v103 = *(a2 + 97);
    if (v103 >= 0x19)
    {
      awd::metrics::MotionFitnessSession::MergeFrom();
    }

    *(this + 115) |= 0x80000000;
    *(this + 97) = v103;
  }

LABEL_227:
  v104 = *(a2 + 116);
  if (!v104)
  {
    goto LABEL_237;
  }

  if (v104)
  {
    v107 = *(a2 + 49);
    *(this + 116) |= 1u;
    *(this + 49) = v107;
    v104 = *(a2 + 116);
    if ((v104 & 2) == 0)
    {
LABEL_230:
      if ((v104 & 4) == 0)
      {
        goto LABEL_231;
      }

      goto LABEL_245;
    }
  }

  else if ((v104 & 2) == 0)
  {
    goto LABEL_230;
  }

  v108 = *(a2 + 50);
  *(this + 116) |= 2u;
  *(this + 50) = v108;
  v104 = *(a2 + 116);
  if ((v104 & 4) == 0)
  {
LABEL_231:
    if ((v104 & 8) == 0)
    {
      goto LABEL_232;
    }

    goto LABEL_246;
  }

LABEL_245:
  v109 = *(a2 + 51);
  *(this + 116) |= 4u;
  *(this + 51) = v109;
  v104 = *(a2 + 116);
  if ((v104 & 8) == 0)
  {
LABEL_232:
    if ((v104 & 0x10) == 0)
    {
      goto LABEL_233;
    }

    goto LABEL_247;
  }

LABEL_246:
  v110 = *(a2 + 104);
  *(this + 116) |= 8u;
  *(this + 104) = v110;
  v104 = *(a2 + 116);
  if ((v104 & 0x10) == 0)
  {
LABEL_233:
    if ((v104 & 0x20) == 0)
    {
      goto LABEL_234;
    }

    goto LABEL_248;
  }

LABEL_247:
  v111 = *(a2 + 105);
  *(this + 116) |= 0x10u;
  *(this + 105) = v111;
  v104 = *(a2 + 116);
  if ((v104 & 0x20) == 0)
  {
LABEL_234:
    if ((v104 & 0x40) == 0)
    {
      goto LABEL_235;
    }

    goto LABEL_249;
  }

LABEL_248:
  v112 = *(a2 + 106);
  *(this + 116) |= 0x20u;
  *(this + 106) = v112;
  v104 = *(a2 + 116);
  if ((v104 & 0x40) == 0)
  {
LABEL_235:
    if ((v104 & 0x80) == 0)
    {
      goto LABEL_237;
    }

    goto LABEL_236;
  }

LABEL_249:
  v113 = *(a2 + 107);
  *(this + 116) |= 0x40u;
  *(this + 107) = v113;
  v104 = *(a2 + 116);
  if ((v104 & 0x80) != 0)
  {
LABEL_236:
    v105 = *(a2 + 108);
    *(this + 116) |= 0x80u;
    *(this + 108) = v105;
    v104 = *(a2 + 116);
  }

LABEL_237:
  if ((v104 & 0xFF00) == 0)
  {
    return;
  }

  if ((v104 & 0x100) != 0)
  {
    v114 = *(a2 + 109);
    *(this + 116) |= 0x100u;
    *(this + 109) = v114;
    v104 = *(a2 + 116);
    if ((v104 & 0x200) == 0)
    {
LABEL_240:
      if ((v104 & 0x400) == 0)
      {
        return;
      }

      goto LABEL_241;
    }
  }

  else if ((v104 & 0x200) == 0)
  {
    goto LABEL_240;
  }

  v115 = *(a2 + 110);
  *(this + 116) |= 0x200u;
  *(this + 110) = v115;
  if ((*(a2 + 116) & 0x400) != 0)
  {
LABEL_241:
    v106 = *(a2 + 111);
    *(this + 116) |= 0x400u;
    *(this + 111) = v106;
  }
}

void sub_29641DC24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::metrics::MotionFitnessSession::~MotionFitnessSession(awd::metrics::MotionFitnessSession *this)
{
  *this = &unk_2A1D4F368;
  awd::metrics::MotionFitnessSession::SharedDtor(this);
  v2 = *(this + 30);
  if (v2)
  {
    MEMORY[0x29C25A710](v2, 0x1000C8052888210);
  }

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  awd::metrics::MotionFitnessSession::~MotionFitnessSession(this);

  JUMPOUT(0x29C25A730);
}

uint64_t awd::metrics::MotionFitnessSession::SharedDtor(uint64_t this)
{
  v1 = *(this + 24);
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

uint64_t awd::metrics::MotionFitnessSession::default_instance(awd::metrics::MotionFitnessSession *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = awd::metrics::MotionFitnessSession::default_instance_;
  if (!awd::metrics::MotionFitnessSession::default_instance_)
  {
    awd::metrics::protobuf_AddDesc_Location_2eproto(0, a2, a3, a4);
    return awd::metrics::MotionFitnessSession::default_instance_;
  }

  return result;
}

uint64_t awd::metrics::MotionFitnessSession::Clear(uint64_t this)
{
  v1 = *(this + 452);
  if (v1)
  {
    *(this + 8) = 0;
    *(this + 16) = 0;
    *(this + 52) = 0;
    if ((v1 & 8) != 0)
    {
      v2 = *(this + 24);
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

    *(this + 20) = 0;
    *(this + 32) = 0;
    *(this + 40) = 0;
    v1 = *(this + 452);
  }

  if ((v1 & 0xFF00) != 0)
  {
    *(this + 53) = 0;
    *(this + 44) = 0;
    *(this + 48) = 0;
    *(this + 56) = 0;
    *(this + 64) = 0;
  }

  if ((v1 & 0xFF0000) != 0)
  {
    *(this + 55) = 0;
    *(this + 80) = 0;
    *(this + 88) = 0;
    *(this + 72) = 0;
    *(this + 96) = 0;
  }

  if (HIBYTE(v1))
  {
    *(this + 116) = 0u;
    *(this + 100) = 0u;
  }

  v3 = *(this + 456);
  if (v3)
  {
    *(this + 224) = 0;
    *(this + 132) = 0;
    *(this + 148) = 0;
    *(this + 140) = 0;
    *(this + 156) = 0;
  }

  if ((v3 & 0xFF00) != 0)
  {
    *(this + 225) = 0;
    *(this + 168) = 0;
    *(this + 176) = 0;
    *(this + 160) = 0;
    *(this + 184) = 0;
  }

  if ((v3 & 0xFF0000) != 0)
  {
    *(this + 204) = 0u;
    *(this + 188) = 0u;
  }

  if (HIBYTE(v3))
  {
    *(this + 220) = 0;
    *(this + 226) = 0;
    *(this + 232) = 0;
    *(this + 228) = 0;
    *(this + 256) = 0;
    *(this + 264) = 0;
  }

  v4 = *(this + 460);
  if (v4)
  {
    *(this + 260) = 0;
    *(this + 280) = 0;
    *(this + 288) = 0;
    *(this + 272) = 0;
    *(this + 296) = 0;
  }

  if ((v4 & 0xFF00) != 0)
  {
    *(this + 300) = 0u;
    *(this + 316) = 0u;
  }

  if ((v4 & 0xFF0000) != 0)
  {
    *(this + 332) = 0u;
    *(this + 348) = 0u;
  }

  if (HIBYTE(v4))
  {
    *(this + 227) = 0;
    *(this + 384) = 0;
    *(this + 380) = 0;
    *(this + 372) = 0;
    *(this + 364) = 0;
  }

  v5 = *(this + 464);
  if (v5)
  {
    *(this + 420) = 0u;
    *(this + 392) = 0u;
    *(this + 408) = 0u;
  }

  if ((v5 & 0xFF00) != 0)
  {
    *(this + 436) = 0;
    *(this + 440) = 0;
  }

  *(this + 248) = 0;
  *(this + 452) = 0;
  *(this + 460) = 0;
  return this;
}

uint64_t awd::metrics::MotionFitnessSession::MergePartialFromCodedStream(awd::metrics::MotionFitnessSession *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
{
  v5 = (this + 256);
  v6 = (this + 260);
  v7 = (this + 272);
  v8 = (this + 276);
  v9 = (this + 280);
  v10 = (this + 284);
  v11 = (this + 288);
  v12 = (this + 292);
  v380 = (this + 300);
  v381 = (this + 296);
  v378 = (this + 312);
  v379 = (this + 304);
  v376 = (this + 328);
  v377 = (this + 320);
  v374 = (this + 336);
  v375 = (this + 332);
  v372 = (this + 344);
  v373 = (this + 340);
  v370 = (this + 352);
  v371 = (this + 348);
  v368 = (this + 360);
  v369 = (this + 356);
  v366 = (this + 368);
  v367 = (this + 364);
  v364 = (this + 376);
  v365 = (this + 372);
  v359 = (this + 416);
  v360 = (this + 420);
  v361 = (this + 424);
  v362 = (this + 440);
  v363 = (this + 444);
LABEL_2:
  while (2)
  {
    v13 = *(a2 + 1);
    if (v13 >= *(a2 + 2) || (TagFallback = *v13, (TagFallback & 0x80000000) != 0))
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
      *(a2 + 1) = v13 + 1;
      if (!TagFallback)
      {
        return 1;
      }
    }

    v15 = TagFallback & 7;
    switch(TagFallback >> 3)
    {
      case 1u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_225;
        }

        v17 = *(a2 + 1);
        v16 = *(a2 + 2);
        if (v17 >= v16 || (v18 = *v17, v18 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 1);
          if (!result)
          {
            return result;
          }

          v19 = *(a2 + 1);
          v16 = *(a2 + 2);
        }

        else
        {
          *(this + 1) = v18;
          v19 = v17 + 1;
          *(a2 + 1) = v19;
        }

        *(this + 113) |= 1u;
        if (v19 < v16 && *v19 == 16)
        {
          v81 = v19 + 1;
          *(a2 + 1) = v81;
          goto LABEL_235;
        }

        continue;
      case 2u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_225;
        }

        v81 = *(a2 + 1);
        v16 = *(a2 + 2);
LABEL_235:
        v383[0] = 0;
        if (v81 >= v16 || (v136 = *v81, (v136 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v383);
          if (!result)
          {
            return result;
          }

          v136 = v383[0];
        }

        else
        {
          *(a2 + 1) = v81 + 1;
        }

        if (v136 <= 0x18)
        {
          *(this + 113) |= 2u;
          *(this + 4) = v136;
        }

        v137 = *(a2 + 1);
        v75 = *(a2 + 2);
        if (v137 >= v75 || *v137 != 24)
        {
          continue;
        }

        v76 = v137 + 1;
        *(a2 + 1) = v76;
LABEL_245:
        v383[0] = 0;
        if (v76 >= v75 || (v138 = *v76, (v138 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v383);
          if (!result)
          {
            return result;
          }

          v138 = v383[0];
          v139 = *(a2 + 1);
          v75 = *(a2 + 2);
        }

        else
        {
          v139 = v76 + 1;
          *(a2 + 1) = v139;
        }

        *(this + 52) = v138 != 0;
        v79 = *(this + 113) | 4;
        *(this + 113) = v79;
        if (v139 >= v75 || *v139 != 34)
        {
          continue;
        }

        *(a2 + 1) = v139 + 1;
LABEL_253:
        *(this + 113) = v79 | 8;
        if (*(this + 3) == MEMORY[0x29EDC9758])
        {
          operator new();
        }

        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
        if (!result)
        {
          return result;
        }

        v140 = *(a2 + 1);
        v65 = *(a2 + 2);
        if (v140 >= v65 || *v140 != 40)
        {
          continue;
        }

        v66 = v140 + 1;
        *(a2 + 1) = v66;
LABEL_259:
        if (v66 >= v65 || (v141 = *v66, v141 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 5);
          if (!result)
          {
            return result;
          }

          v142 = *(a2 + 1);
          v65 = *(a2 + 2);
        }

        else
        {
          *(this + 5) = v141;
          v142 = v66 + 1;
          *(a2 + 1) = v142;
        }

        *(this + 113) |= 0x10u;
        if (v142 >= v65 || *v142 != 48)
        {
          continue;
        }

        v91 = v142 + 1;
        *(a2 + 1) = v91;
LABEL_267:
        if (v91 >= v65 || (v143 = *v91, v143 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 8);
          if (!result)
          {
            return result;
          }

          v144 = *(a2 + 1);
          v65 = *(a2 + 2);
        }

        else
        {
          *(this + 8) = v143;
          v144 = v91 + 1;
          *(a2 + 1) = v144;
        }

        *(this + 113) |= 0x20u;
        if (v144 >= v65 || *v144 != 56)
        {
          continue;
        }

        v96 = v144 + 1;
        *(a2 + 1) = v96;
LABEL_275:
        v383[0] = 0;
        if (v96 >= v65 || (v145 = *v96, (v145 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v383);
          if (!result)
          {
            return result;
          }

          v145 = v383[0];
          v146 = *(a2 + 1);
          v65 = *(a2 + 2);
        }

        else
        {
          v146 = v96 + 1;
          *(a2 + 1) = v146;
        }

        *(this + 9) = v145;
        *(this + 113) |= 0x40u;
        if (v146 >= v65 || *v146 != 64)
        {
          continue;
        }

        v80 = v146 + 1;
        *(a2 + 1) = v80;
LABEL_283:
        if (v80 >= v65 || (v147 = *v80, v147 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 10);
          if (!result)
          {
            return result;
          }

          v148 = *(a2 + 1);
          v65 = *(a2 + 2);
        }

        else
        {
          *(this + 10) = v147;
          v148 = v80 + 1;
          *(a2 + 1) = v148;
        }

        *(this + 113) |= 0x80u;
        if (v148 >= v65 || *v148 != 72)
        {
          continue;
        }

        v100 = v148 + 1;
        *(a2 + 1) = v100;
LABEL_291:
        v383[0] = 0;
        if (v100 >= v65 || (v149 = *v100, (v149 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v383);
          if (!result)
          {
            return result;
          }

          v149 = v383[0];
          v150 = *(a2 + 1);
          v65 = *(a2 + 2);
        }

        else
        {
          v150 = v100 + 1;
          *(a2 + 1) = v150;
        }

        *(this + 53) = v149 != 0;
        *(this + 113) |= 0x100u;
        if (v150 >= v65 || *v150 != 80)
        {
          continue;
        }

        v72 = v150 + 1;
        *(a2 + 1) = v72;
LABEL_299:
        v383[0] = 0;
        if (v72 >= v65 || (v151 = *v72, (v151 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v383);
          if (!result)
          {
            return result;
          }

          v151 = v383[0];
        }

        else
        {
          *(a2 + 1) = v72 + 1;
        }

        if (v151 <= 1)
        {
          *(this + 113) |= 0x200u;
          *(this + 11) = v151;
        }

        v152 = *(a2 + 1);
        v61 = *(a2 + 2);
        if (v152 >= v61 || *v152 != 88)
        {
          continue;
        }

        v99 = v152 + 1;
        *(a2 + 1) = v99;
LABEL_309:
        if (v99 >= v61 || (v153 = *v99, v153 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 12);
          if (!result)
          {
            return result;
          }

          v154 = *(a2 + 1);
          v61 = *(a2 + 2);
        }

        else
        {
          *(this + 12) = v153;
          v154 = v99 + 1;
          *(a2 + 1) = v154;
        }

        *(this + 113) |= 0x400u;
        if (v154 >= v61 || *v154 != 96)
        {
          continue;
        }

        v62 = v154 + 1;
        *(a2 + 1) = v62;
LABEL_317:
        v383[0] = 0;
        if (v62 >= v61 || (v155 = *v62, (v155 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v383);
          if (!result)
          {
            return result;
          }

          v155 = v383[0];
        }

        else
        {
          *(a2 + 1) = v62 + 1;
        }

        if (v155 <= 4)
        {
          *(this + 113) |= 0x800u;
          *(this + 14) = v155;
        }

        v156 = *(a2 + 1);
        v70 = *(a2 + 2);
        if (v156 >= v70 || *v156 != 104)
        {
          continue;
        }

        v71 = v156 + 1;
        *(a2 + 1) = v71;
LABEL_327:
        v383[0] = 0;
        if (v71 >= v70 || (v157 = *v71, (v157 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v383);
          if (!result)
          {
            return result;
          }

          v157 = v383[0];
        }

        else
        {
          *(a2 + 1) = v71 + 1;
        }

        if (v157 <= 4)
        {
          *(this + 113) |= 0x1000u;
          *(this + 15) = v157;
        }

        v158 = *(a2 + 1);
        v53 = *(a2 + 2);
        if (v158 >= v53 || *v158 != 112)
        {
          continue;
        }

        v95 = v158 + 1;
        *(a2 + 1) = v95;
LABEL_337:
        if (v95 >= v53 || (v159 = *v95, v159 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 16);
          if (!result)
          {
            return result;
          }

          v160 = *(a2 + 1);
          v53 = *(a2 + 2);
        }

        else
        {
          *(this + 16) = v159;
          v160 = v95 + 1;
          *(a2 + 1) = v160;
        }

        *(this + 113) |= 0x2000u;
        if (v160 >= v53 || *v160 != 120)
        {
          continue;
        }

        v57 = v160 + 1;
        *(a2 + 1) = v57;
LABEL_345:
        if (v57 >= v53 || (v161 = *v57, v161 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 17);
          if (!result)
          {
            return result;
          }

          v162 = *(a2 + 1);
          v53 = *(a2 + 2);
        }

        else
        {
          *(this + 17) = v161;
          v162 = (v57 + 1);
          *(a2 + 1) = v162;
        }

        *(this + 113) |= 0x4000u;
        if (v53 - v162 < 2 || *v162 != 128 || v162[1] != 1)
        {
          continue;
        }

        v77 = (v162 + 2);
        *(a2 + 1) = v77;
LABEL_354:
        v383[0] = 0;
        if (v77 >= v53 || (v163 = *v77, (v163 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v383);
          if (!result)
          {
            return result;
          }

          v163 = v383[0];
          v164 = *(a2 + 1);
          v53 = *(a2 + 2);
        }

        else
        {
          v164 = (v77 + 1);
          *(a2 + 1) = v164;
        }

        *(this + 54) = v163 != 0;
        *(this + 113) |= 0x8000u;
        if (v53 - v164 < 2 || *v164 != 136 || v164[1] != 1)
        {
          continue;
        }

        v54 = (v164 + 2);
        *(a2 + 1) = v54;
LABEL_363:
        v383[0] = 0;
        if (v54 >= v53 || (v165 = *v54, (v165 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v383);
          if (!result)
          {
            return result;
          }

          v165 = v383[0];
          v166 = *(a2 + 1);
          v53 = *(a2 + 2);
        }

        else
        {
          v166 = (v54 + 1);
          *(a2 + 1) = v166;
        }

        *(this + 55) = v165 != 0;
        *(this + 113) |= 0x10000u;
        if (v53 - v166 < 2 || *v166 != 144 || v166[1] != 1)
        {
          continue;
        }

        v85 = (v166 + 2);
        *(a2 + 1) = v85;
LABEL_372:
        v383[0] = 0;
        if (v85 >= v53 || (v167 = *v85, (v167 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v383);
          if (!result)
          {
            return result;
          }

          v167 = v383[0];
        }

        else
        {
          *(a2 + 1) = v85 + 1;
        }

        if (v167 <= 4)
        {
          *(this + 113) |= 0x20000u;
          *(this + 18) = v167;
        }

        v168 = *(a2 + 1);
        v97 = *(a2 + 2);
        if (v97 - v168 < 2 || *v168 != 152 || v168[1] != 1)
        {
          continue;
        }

        v98 = (v168 + 2);
        *(a2 + 1) = v98;
LABEL_383:
        v383[0] = 0;
        if (v98 >= v97 || (v169 = *v98, (v169 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v383);
          if (!result)
          {
            return result;
          }

          v169 = v383[0];
        }

        else
        {
          *(a2 + 1) = v98 + 1;
        }

        if (v169 <= 4)
        {
          *(this + 113) |= 0x40000u;
          *(this + 19) = v169;
        }

        v170 = *(a2 + 1);
        v50 = *(a2 + 2);
        if (v50 - v170 < 2 || *v170 != 160 || v170[1] != 1)
        {
          continue;
        }

        v105 = (v170 + 2);
        *(a2 + 1) = v105;
LABEL_394:
        if (v105 >= v50 || (v171 = *v105, v171 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 20);
          if (!result)
          {
            return result;
          }

          v172 = *(a2 + 1);
          v50 = *(a2 + 2);
        }

        else
        {
          *(this + 20) = v171;
          v172 = (v105 + 1);
          *(a2 + 1) = v172;
        }

        *(this + 113) |= 0x80000u;
        if (v50 - v172 < 2 || *v172 != 168 || v172[1] != 1)
        {
          continue;
        }

        v89 = (v172 + 2);
        *(a2 + 1) = v89;
LABEL_403:
        if (v89 >= v50 || (v173 = *v89, v173 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 21);
          if (!result)
          {
            return result;
          }

          v174 = *(a2 + 1);
          v50 = *(a2 + 2);
        }

        else
        {
          *(this + 21) = v173;
          v174 = (v89 + 1);
          *(a2 + 1) = v174;
        }

        *(this + 113) |= 0x100000u;
        if (v50 - v174 < 2 || *v174 != 176 || v174[1] != 1)
        {
          continue;
        }

        v94 = (v174 + 2);
        *(a2 + 1) = v94;
LABEL_412:
        v383[0] = 0;
        if (v94 >= v50 || (v175 = *v94, (v175 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v383);
          if (!result)
          {
            return result;
          }

          v175 = v383[0];
          v176 = *(a2 + 1);
          v50 = *(a2 + 2);
        }

        else
        {
          v176 = (v94 + 1);
          *(a2 + 1) = v176;
        }

        *(this + 22) = v175;
        *(this + 113) |= 0x200000u;
        if (v50 - v176 < 2 || *v176 != 184 || v176[1] != 1)
        {
          continue;
        }

        v102 = (v176 + 2);
        *(a2 + 1) = v102;
LABEL_421:
        if (v102 >= v50 || (v177 = *v102, v177 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 23);
          if (!result)
          {
            return result;
          }

          v178 = *(a2 + 1);
          v50 = *(a2 + 2);
        }

        else
        {
          *(this + 23) = v177;
          v178 = (v102 + 1);
          *(a2 + 1) = v178;
        }

        *(this + 113) |= 0x400000u;
        if (v50 - v178 < 2 || *v178 != 192 || v178[1] != 1)
        {
          continue;
        }

        v109 = (v178 + 2);
        *(a2 + 1) = v109;
LABEL_430:
        if (v109 >= v50 || (v179 = *v109, v179 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 24);
          if (!result)
          {
            return result;
          }

          v180 = *(a2 + 1);
          v50 = *(a2 + 2);
        }

        else
        {
          *(this + 24) = v179;
          v180 = (v109 + 1);
          *(a2 + 1) = v180;
        }

        *(this + 113) |= 0x800000u;
        if (v50 - v180 < 2 || *v180 != 200 || v180[1] != 1)
        {
          continue;
        }

        v74 = (v180 + 2);
        *(a2 + 1) = v74;
LABEL_439:
        if (v74 >= v50 || (v181 = *v74, v181 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 25);
          if (!result)
          {
            return result;
          }

          v182 = *(a2 + 1);
          v50 = *(a2 + 2);
        }

        else
        {
          *(this + 25) = v181;
          v182 = (v74 + 1);
          *(a2 + 1) = v182;
        }

        *(this + 113) |= 0x1000000u;
        if (v50 - v182 < 2 || *v182 != 208 || v182[1] != 1)
        {
          continue;
        }

        v73 = (v182 + 2);
        *(a2 + 1) = v73;
LABEL_448:
        if (v73 >= v50 || (v183 = *v73, v183 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 26);
          if (!result)
          {
            return result;
          }

          v184 = *(a2 + 1);
          v50 = *(a2 + 2);
        }

        else
        {
          *(this + 26) = v183;
          v184 = (v73 + 1);
          *(a2 + 1) = v184;
        }

        *(this + 113) |= 0x2000000u;
        if (v50 - v184 < 2 || *v184 != 216 || v184[1] != 1)
        {
          continue;
        }

        v113 = (v184 + 2);
        *(a2 + 1) = v113;
LABEL_457:
        if (v113 >= v50 || (v185 = *v113, v185 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 27);
          if (!result)
          {
            return result;
          }

          v186 = *(a2 + 1);
          v50 = *(a2 + 2);
        }

        else
        {
          *(this + 27) = v185;
          v186 = (v113 + 1);
          *(a2 + 1) = v186;
        }

        *(this + 113) |= 0x4000000u;
        if (v50 - v186 < 2 || *v186 != 224 || v186[1] != 1)
        {
          continue;
        }

        v51 = (v186 + 2);
        *(a2 + 1) = v51;
LABEL_466:
        if (v51 >= v50 || (v187 = *v51, v187 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 28);
          if (!result)
          {
            return result;
          }

          v188 = *(a2 + 1);
          v50 = *(a2 + 2);
        }

        else
        {
          *(this + 28) = v187;
          v188 = (v51 + 1);
          *(a2 + 1) = v188;
        }

        *(this + 113) |= 0x8000000u;
        if (v50 - v188 < 2 || *v188 != 232 || v188[1] != 1)
        {
          continue;
        }

        v110 = (v188 + 2);
        *(a2 + 1) = v110;
LABEL_475:
        if (v110 >= v50 || (v189 = *v110, v189 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 29);
          if (!result)
          {
            return result;
          }

          v190 = *(a2 + 1);
          v50 = *(a2 + 2);
        }

        else
        {
          *(this + 29) = v189;
          v190 = (v110 + 1);
          *(a2 + 1) = v190;
        }

        *(this + 113) |= 0x10000000u;
        if (v50 - v190 < 2 || *v190 != 240 || v190[1] != 1)
        {
          continue;
        }

        v111 = (v190 + 2);
        *(a2 + 1) = v111;
LABEL_484:
        if (v111 >= v50 || (v191 = *v111, v191 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 30);
          if (!result)
          {
            return result;
          }

          v192 = *(a2 + 1);
          v50 = *(a2 + 2);
        }

        else
        {
          *(this + 30) = v191;
          v192 = (v111 + 1);
          *(a2 + 1) = v192;
        }

        *(this + 113) |= 0x20000000u;
        if (v50 - v192 < 2 || *v192 != 253 || v192[1] != 1)
        {
          continue;
        }

        *(a2 + 1) = v192 + 2;
LABEL_493:
        v383[0] = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a2, v383) & 1) == 0)
        {
          return 0;
        }

        *(this + 31) = v383[0];
        *(this + 113) |= 0x40000000u;
        v193 = *(a2 + 1);
        v83 = *(a2 + 2);
        if (v83 - v193 < 2 || *v193 != 128 || v193[1] != 2)
        {
          continue;
        }

        v84 = (v193 + 2);
        *(a2 + 1) = v84;
LABEL_498:
        if (v84 >= v83 || (v194 = *v84, v194 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 32);
          if (!result)
          {
            return result;
          }

          v195 = *(a2 + 1);
          v83 = *(a2 + 2);
        }

        else
        {
          *(this + 32) = v194;
          v195 = (v84 + 1);
          *(a2 + 1) = v195;
        }

        *(this + 113) |= 0x80000000;
        if (v83 - v195 < 2 || *v195 != 141 || v195[1] != 2)
        {
          continue;
        }

        *(a2 + 1) = v195 + 2;
LABEL_507:
        v383[0] = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a2, v383) & 1) == 0)
        {
          return 0;
        }

        *(this + 33) = v383[0];
        *(this + 114) |= 1u;
        v196 = *(a2 + 1);
        if (*(a2 + 4) - v196 < 2 || *v196 != 149 || v196[1] != 2)
        {
          continue;
        }

        *(a2 + 1) = v196 + 2;
LABEL_512:
        v383[0] = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a2, v383) & 1) == 0)
        {
          return 0;
        }

        *(this + 34) = v383[0];
        *(this + 114) |= 2u;
        v197 = *(a2 + 1);
        v36 = *(a2 + 2);
        if (v36 - v197 < 2 || *v197 != 152 || v197[1] != 2)
        {
          continue;
        }

        v52 = (v197 + 2);
        *(a2 + 1) = v52;
LABEL_517:
        if (v52 >= v36 || (v198 = *v52, v198 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 35);
          if (!result)
          {
            return result;
          }

          v199 = *(a2 + 1);
          v36 = *(a2 + 2);
        }

        else
        {
          *(this + 35) = v198;
          v199 = (v52 + 1);
          *(a2 + 1) = v199;
        }

        *(this + 114) |= 4u;
        if (v36 - v199 < 2 || *v199 != 160 || v199[1] != 2)
        {
          continue;
        }

        v47 = (v199 + 2);
        *(a2 + 1) = v47;
LABEL_526:
        if (v47 >= v36 || (v200 = *v47, v200 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 36);
          if (!result)
          {
            return result;
          }

          v201 = *(a2 + 1);
          v36 = *(a2 + 2);
        }

        else
        {
          *(this + 36) = v200;
          v201 = (v47 + 1);
          *(a2 + 1) = v201;
        }

        *(this + 114) |= 8u;
        if (v36 - v201 < 2 || *v201 != 168 || v201[1] != 2)
        {
          continue;
        }

        v48 = (v201 + 2);
        *(a2 + 1) = v48;
LABEL_535:
        if (v48 >= v36 || (v202 = *v48, v202 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 37);
          if (!result)
          {
            return result;
          }

          v203 = *(a2 + 1);
          v36 = *(a2 + 2);
        }

        else
        {
          *(this + 37) = v202;
          v203 = (v48 + 1);
          *(a2 + 1) = v203;
        }

        *(this + 114) |= 0x10u;
        if (v36 - v203 < 2 || *v203 != 176 || v203[1] != 2)
        {
          continue;
        }

        v42 = (v203 + 2);
        *(a2 + 1) = v42;
LABEL_544:
        v383[0] = 0;
        if (v42 >= v36 || (v204 = *v42, (v204 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v383);
          if (!result)
          {
            return result;
          }

          v204 = v383[0];
          v205 = *(a2 + 1);
          v36 = *(a2 + 2);
        }

        else
        {
          v205 = (v42 + 1);
          *(a2 + 1) = v205;
        }

        *(this + 224) = v204 != 0;
        *(this + 114) |= 0x20u;
        if (v36 - v205 < 2 || *v205 != 184 || v205[1] != 2)
        {
          continue;
        }

        v112 = (v205 + 2);
        *(a2 + 1) = v112;
LABEL_553:
        if (v112 >= v36 || (v206 = *v112, v206 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 38);
          if (!result)
          {
            return result;
          }

          v207 = *(a2 + 1);
          v36 = *(a2 + 2);
        }

        else
        {
          *(this + 38) = v206;
          v207 = (v112 + 1);
          *(a2 + 1) = v207;
        }

        *(this + 114) |= 0x40u;
        if (v36 - v207 < 2 || *v207 != 192 || v207[1] != 2)
        {
          continue;
        }

        v104 = (v207 + 2);
        *(a2 + 1) = v104;
LABEL_562:
        if (v104 >= v36 || (v208 = *v104, v208 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 39);
          if (!result)
          {
            return result;
          }

          v209 = *(a2 + 1);
          v36 = *(a2 + 2);
        }

        else
        {
          *(this + 39) = v208;
          v209 = (v104 + 1);
          *(a2 + 1) = v209;
        }

        *(this + 114) |= 0x80u;
        if (v36 - v209 < 2 || *v209 != 200 || v209[1] != 2)
        {
          continue;
        }

        v67 = (v209 + 2);
        *(a2 + 1) = v67;
LABEL_571:
        if (v67 >= v36 || (v210 = *v67, v210 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 40);
          if (!result)
          {
            return result;
          }

          v211 = *(a2 + 1);
          v36 = *(a2 + 2);
        }

        else
        {
          *(this + 40) = v210;
          v211 = (v67 + 1);
          *(a2 + 1) = v211;
        }

        *(this + 114) |= 0x100u;
        if (v36 - v211 < 2 || *v211 != 208 || v211[1] != 2)
        {
          continue;
        }

        v87 = (v211 + 2);
        *(a2 + 1) = v87;
LABEL_580:
        v383[0] = 0;
        if (v87 >= v36 || (v212 = *v87, (v212 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v383);
          if (!result)
          {
            return result;
          }

          v212 = v383[0];
          v213 = *(a2 + 1);
          v36 = *(a2 + 2);
        }

        else
        {
          v213 = (v87 + 1);
          *(a2 + 1) = v213;
        }

        *(this + 225) = v212 != 0;
        *(this + 114) |= 0x200u;
        if (v36 - v213 < 2 || *v213 != 216 || v213[1] != 2)
        {
          continue;
        }

        v107 = (v213 + 2);
        *(a2 + 1) = v107;
LABEL_589:
        if (v107 >= v36 || (v214 = *v107, v214 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 41);
          if (!result)
          {
            return result;
          }

          v215 = *(a2 + 1);
          v36 = *(a2 + 2);
        }

        else
        {
          *(this + 41) = v214;
          v215 = (v107 + 1);
          *(a2 + 1) = v215;
        }

        *(this + 114) |= 0x400u;
        if (v36 - v215 < 2 || *v215 != 224 || v215[1] != 2)
        {
          continue;
        }

        v37 = (v215 + 2);
        *(a2 + 1) = v37;
LABEL_598:
        if (v37 >= v36 || (v216 = *v37, v216 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 42);
          if (!result)
          {
            return result;
          }

          v217 = *(a2 + 1);
          v36 = *(a2 + 2);
        }

        else
        {
          *(this + 42) = v216;
          v217 = (v37 + 1);
          *(a2 + 1) = v217;
        }

        *(this + 114) |= 0x800u;
        if (v36 - v217 < 2 || *v217 != 232 || v217[1] != 2)
        {
          continue;
        }

        v56 = (v217 + 2);
        *(a2 + 1) = v56;
LABEL_607:
        if (v56 >= v36 || (v218 = *v56, v218 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 43);
          if (!result)
          {
            return result;
          }

          v219 = *(a2 + 1);
          v36 = *(a2 + 2);
        }

        else
        {
          *(this + 43) = v218;
          v219 = (v56 + 1);
          *(a2 + 1) = v219;
        }

        *(this + 114) |= 0x1000u;
        if (v36 - v219 < 2 || *v219 != 245 || v219[1] != 2)
        {
          continue;
        }

        *(a2 + 1) = v219 + 2;
LABEL_616:
        v383[0] = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a2, v383) & 1) == 0)
        {
          return 0;
        }

        *(this + 44) = v383[0];
        *(this + 114) |= 0x2000u;
        v220 = *(a2 + 1);
        v20 = *(a2 + 2);
        if (v20 - v220 < 2 || *v220 != 248 || v220[1] != 2)
        {
          continue;
        }

        v118 = (v220 + 2);
        *(a2 + 1) = v118;
LABEL_621:
        if (v118 >= v20 || (v221 = *v118, v221 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 45);
          if (!result)
          {
            return result;
          }

          v222 = *(a2 + 1);
          v20 = *(a2 + 2);
        }

        else
        {
          *(this + 45) = v221;
          v222 = (v118 + 1);
          *(a2 + 1) = v222;
        }

        *(this + 114) |= 0x4000u;
        if (v20 - v222 < 2 || *v222 != 128 || v222[1] != 3)
        {
          continue;
        }

        v44 = (v222 + 2);
        *(a2 + 1) = v44;
LABEL_630:
        if (v44 >= v20 || (v223 = *v44, v223 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 46);
          if (!result)
          {
            return result;
          }

          v224 = *(a2 + 1);
          v20 = *(a2 + 2);
        }

        else
        {
          *(this + 46) = v223;
          v224 = (v44 + 1);
          *(a2 + 1) = v224;
        }

        *(this + 114) |= 0x8000u;
        if (v20 - v224 < 2 || *v224 != 136 || v224[1] != 3)
        {
          continue;
        }

        v58 = (v224 + 2);
        *(a2 + 1) = v58;
LABEL_639:
        if (v58 >= v20 || (v225 = *v58, v225 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 47);
          if (!result)
          {
            return result;
          }

          v226 = *(a2 + 1);
          v20 = *(a2 + 2);
        }

        else
        {
          *(this + 47) = v225;
          v226 = (v58 + 1);
          *(a2 + 1) = v226;
        }

        *(this + 114) |= 0x10000u;
        if (v20 - v226 < 2 || *v226 != 144 || v226[1] != 3)
        {
          continue;
        }

        v64 = (v226 + 2);
        *(a2 + 1) = v64;
LABEL_648:
        if (v64 >= v20 || (v227 = *v64, v227 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 48);
          if (!result)
          {
            return result;
          }

          v228 = *(a2 + 1);
          v20 = *(a2 + 2);
        }

        else
        {
          *(this + 48) = v227;
          v228 = (v64 + 1);
          *(a2 + 1) = v228;
        }

        *(this + 114) |= 0x20000u;
        if (v20 - v228 < 2 || *v228 != 152 || v228[1] != 3)
        {
          continue;
        }

        v34 = (v228 + 2);
        *(a2 + 1) = v34;
LABEL_657:
        if (v34 >= v20 || (v229 = *v34, v229 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 49);
          if (!result)
          {
            return result;
          }

          v230 = *(a2 + 1);
          v20 = *(a2 + 2);
        }

        else
        {
          *(this + 49) = v229;
          v230 = (v34 + 1);
          *(a2 + 1) = v230;
        }

        *(this + 114) |= 0x40000u;
        if (v20 - v230 < 2 || *v230 != 160 || v230[1] != 3)
        {
          continue;
        }

        v123 = (v230 + 2);
        *(a2 + 1) = v123;
LABEL_666:
        if (v123 >= v20 || (v231 = *v123, v231 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 50);
          if (!result)
          {
            return result;
          }

          v232 = *(a2 + 1);
          v20 = *(a2 + 2);
        }

        else
        {
          *(this + 50) = v231;
          v232 = (v123 + 1);
          *(a2 + 1) = v232;
        }

        *(this + 114) |= 0x80000u;
        if (v20 - v232 < 2 || *v232 != 168 || v232[1] != 3)
        {
          continue;
        }

        v117 = (v232 + 2);
        *(a2 + 1) = v117;
LABEL_675:
        if (v117 >= v20 || (v233 = *v117, v233 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 51);
          if (!result)
          {
            return result;
          }

          v234 = *(a2 + 1);
          v20 = *(a2 + 2);
        }

        else
        {
          *(this + 51) = v233;
          v234 = (v117 + 1);
          *(a2 + 1) = v234;
        }

        *(this + 114) |= 0x100000u;
        if (v20 - v234 < 2 || *v234 != 176 || v234[1] != 3)
        {
          continue;
        }

        v43 = (v234 + 2);
        *(a2 + 1) = v43;
LABEL_684:
        if (v43 >= v20 || (v235 = *v43, v235 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 52);
          if (!result)
          {
            return result;
          }

          v236 = *(a2 + 1);
          v20 = *(a2 + 2);
        }

        else
        {
          *(this + 52) = v235;
          v236 = (v43 + 1);
          *(a2 + 1) = v236;
        }

        *(this + 114) |= 0x200000u;
        if (v20 - v236 < 2 || *v236 != 184 || v236[1] != 3)
        {
          continue;
        }

        v114 = (v236 + 2);
        *(a2 + 1) = v114;
LABEL_693:
        if (v114 >= v20 || (v237 = *v114, v237 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 53);
          if (!result)
          {
            return result;
          }

          v238 = *(a2 + 1);
          v20 = *(a2 + 2);
        }

        else
        {
          *(this + 53) = v237;
          v238 = (v114 + 1);
          *(a2 + 1) = v238;
        }

        *(this + 114) |= 0x400000u;
        if (v20 - v238 < 2 || *v238 != 192 || v238[1] != 3)
        {
          continue;
        }

        v116 = (v238 + 2);
        *(a2 + 1) = v116;
LABEL_702:
        if (v116 >= v20 || (v239 = *v116, v239 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 54);
          if (!result)
          {
            return result;
          }

          v240 = *(a2 + 1);
          v20 = *(a2 + 2);
        }

        else
        {
          *(this + 54) = v239;
          v240 = (v116 + 1);
          *(a2 + 1) = v240;
        }

        *(this + 114) |= 0x800000u;
        if (v20 - v240 < 2 || *v240 != 200 || v240[1] != 3)
        {
          continue;
        }

        v45 = (v240 + 2);
        *(a2 + 1) = v45;
LABEL_711:
        if (v45 >= v20 || (v241 = *v45, v241 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 55);
          if (!result)
          {
            return result;
          }

          v242 = *(a2 + 1);
          v20 = *(a2 + 2);
        }

        else
        {
          *(this + 55) = v241;
          v242 = (v45 + 1);
          *(a2 + 1) = v242;
        }

        *(this + 114) |= 0x1000000u;
        if (v20 - v242 < 2 || *v242 != 208 || v242[1] != 3)
        {
          continue;
        }

        v106 = (v242 + 2);
        *(a2 + 1) = v106;
LABEL_720:
        v383[0] = 0;
        if (v106 >= v20 || (v243 = *v106, (v243 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v383);
          if (!result)
          {
            return result;
          }

          v243 = v383[0];
          v244 = *(a2 + 1);
          v20 = *(a2 + 2);
        }

        else
        {
          v244 = (v106 + 1);
          *(a2 + 1) = v244;
        }

        *(this + 226) = v243 != 0;
        *(this + 114) |= 0x2000000u;
        if (v20 - v244 < 2 || *v244 != 216 || v244[1] != 3)
        {
          continue;
        }

        v59 = (v244 + 2);
        *(a2 + 1) = v59;
LABEL_729:
        if (v59 >= v20 || (v245 = *v59, v245 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 57);
          if (!result)
          {
            return result;
          }

          v246 = *(a2 + 1);
          v20 = *(a2 + 2);
        }

        else
        {
          *(this + 57) = v245;
          v246 = (v59 + 1);
          *(a2 + 1) = v246;
        }

        *(this + 114) |= 0x4000000u;
        if (v20 - v246 < 2 || *v246 != 224 || v246[1] != 3)
        {
          continue;
        }

        v108 = (v246 + 2);
        *(a2 + 1) = v108;
LABEL_738:
        if (v108 >= v20 || (v247 = *v108, v247 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 58);
          if (!result)
          {
            return result;
          }

          v248 = *(a2 + 1);
          v20 = *(a2 + 2);
        }

        else
        {
          *(this + 58) = v247;
          v248 = (v108 + 1);
          *(a2 + 1) = v248;
        }

        *(this + 114) |= 0x8000000u;
        if (v20 - v248 < 2 || *v248 != 232 || v248[1] != 3)
        {
          continue;
        }

        v68 = (v248 + 2);
        *(a2 + 1) = v68;
LABEL_747:
        if (v68 >= v20 || (v249 = *v68, v249 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 59);
          if (!result)
          {
            return result;
          }

          v250 = *(a2 + 1);
          v20 = *(a2 + 2);
        }

        else
        {
          *(this + 59) = v249;
          v250 = (v68 + 1);
          *(a2 + 1) = v250;
        }

        *(this + 114) |= 0x10000000u;
        if (v20 - v250 < 2 || *v250 != 240 || v250[1] != 3)
        {
          continue;
        }

        v90 = (v250 + 2);
        *(a2 + 1) = v90;
LABEL_756:
        if (v90 >= v20 || (v251 = *v90, (v251 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v5);
          if (!result)
          {
            return result;
          }

          v252 = *(a2 + 1);
          v20 = *(a2 + 2);
        }

        else
        {
          *v5 = v251;
          v252 = (v90 + 1);
          *(a2 + 1) = v252;
        }

        *(this + 114) |= 0x20000000u;
        if (v20 - v252 >= 2 && *v252 == 248 && v252[1] == 3)
        {
          goto LABEL_764;
        }

        continue;
      case 3u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_225;
        }

        v76 = *(a2 + 1);
        v75 = *(a2 + 2);
        goto LABEL_245;
      case 4u:
        if (v15 != 2)
        {
          goto LABEL_225;
        }

        v79 = *(this + 113);
        goto LABEL_253;
      case 5u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_225;
        }

        v66 = *(a2 + 1);
        v65 = *(a2 + 2);
        goto LABEL_259;
      case 6u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_225;
        }

        v91 = *(a2 + 1);
        v65 = *(a2 + 2);
        goto LABEL_267;
      case 7u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_225;
        }

        v96 = *(a2 + 1);
        v65 = *(a2 + 2);
        goto LABEL_275;
      case 8u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_225;
        }

        v80 = *(a2 + 1);
        v65 = *(a2 + 2);
        goto LABEL_283;
      case 9u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_225;
        }

        v100 = *(a2 + 1);
        v65 = *(a2 + 2);
        goto LABEL_291;
      case 0xAu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_225;
        }

        v72 = *(a2 + 1);
        v65 = *(a2 + 2);
        goto LABEL_299;
      case 0xBu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_225;
        }

        v99 = *(a2 + 1);
        v61 = *(a2 + 2);
        goto LABEL_309;
      case 0xCu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_225;
        }

        v62 = *(a2 + 1);
        v61 = *(a2 + 2);
        goto LABEL_317;
      case 0xDu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_225;
        }

        v71 = *(a2 + 1);
        v70 = *(a2 + 2);
        goto LABEL_327;
      case 0xEu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_225;
        }

        v95 = *(a2 + 1);
        v53 = *(a2 + 2);
        goto LABEL_337;
      case 0xFu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_225;
        }

        v57 = *(a2 + 1);
        v53 = *(a2 + 2);
        goto LABEL_345;
      case 0x10u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_225;
        }

        v77 = *(a2 + 1);
        v53 = *(a2 + 2);
        goto LABEL_354;
      case 0x11u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_225;
        }

        v54 = *(a2 + 1);
        v53 = *(a2 + 2);
        goto LABEL_363;
      case 0x12u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_225;
        }

        v85 = *(a2 + 1);
        v53 = *(a2 + 2);
        goto LABEL_372;
      case 0x13u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_225;
        }

        v98 = *(a2 + 1);
        v97 = *(a2 + 2);
        goto LABEL_383;
      case 0x14u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_225;
        }

        v105 = *(a2 + 1);
        v50 = *(a2 + 2);
        goto LABEL_394;
      case 0x15u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_225;
        }

        v89 = *(a2 + 1);
        v50 = *(a2 + 2);
        goto LABEL_403;
      case 0x16u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_225;
        }

        v94 = *(a2 + 1);
        v50 = *(a2 + 2);
        goto LABEL_412;
      case 0x17u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_225;
        }

        v102 = *(a2 + 1);
        v50 = *(a2 + 2);
        goto LABEL_421;
      case 0x18u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_225;
        }

        v109 = *(a2 + 1);
        v50 = *(a2 + 2);
        goto LABEL_430;
      case 0x19u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_225;
        }

        v74 = *(a2 + 1);
        v50 = *(a2 + 2);
        goto LABEL_439;
      case 0x1Au:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_225;
        }

        v73 = *(a2 + 1);
        v50 = *(a2 + 2);
        goto LABEL_448;
      case 0x1Bu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_225;
        }

        v113 = *(a2 + 1);
        v50 = *(a2 + 2);
        goto LABEL_457;
      case 0x1Cu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_225;
        }

        v51 = *(a2 + 1);
        v50 = *(a2 + 2);
        goto LABEL_466;
      case 0x1Du:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_225;
        }

        v110 = *(a2 + 1);
        v50 = *(a2 + 2);
        goto LABEL_475;
      case 0x1Eu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_225;
        }

        v111 = *(a2 + 1);
        v50 = *(a2 + 2);
        goto LABEL_484;
      case 0x1Fu:
        if (v15 == 5)
        {
          goto LABEL_493;
        }

        goto LABEL_225;
      case 0x20u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_225;
        }

        v84 = *(a2 + 1);
        v83 = *(a2 + 2);
        goto LABEL_498;
      case 0x21u:
        if (v15 == 5)
        {
          goto LABEL_507;
        }

        goto LABEL_225;
      case 0x22u:
        if (v15 == 5)
        {
          goto LABEL_512;
        }

        goto LABEL_225;
      case 0x23u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_225;
        }

        v52 = *(a2 + 1);
        v36 = *(a2 + 2);
        goto LABEL_517;
      case 0x24u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_225;
        }

        v47 = *(a2 + 1);
        v36 = *(a2 + 2);
        goto LABEL_526;
      case 0x25u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_225;
        }

        v48 = *(a2 + 1);
        v36 = *(a2 + 2);
        goto LABEL_535;
      case 0x26u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_225;
        }

        v42 = *(a2 + 1);
        v36 = *(a2 + 2);
        goto LABEL_544;
      case 0x27u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_225;
        }

        v112 = *(a2 + 1);
        v36 = *(a2 + 2);
        goto LABEL_553;
      case 0x28u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_225;
        }

        v104 = *(a2 + 1);
        v36 = *(a2 + 2);
        goto LABEL_562;
      case 0x29u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_225;
        }

        v67 = *(a2 + 1);
        v36 = *(a2 + 2);
        goto LABEL_571;
      case 0x2Au:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_225;
        }

        v87 = *(a2 + 1);
        v36 = *(a2 + 2);
        goto LABEL_580;
      case 0x2Bu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_225;
        }

        v107 = *(a2 + 1);
        v36 = *(a2 + 2);
        goto LABEL_589;
      case 0x2Cu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_225;
        }

        v37 = *(a2 + 1);
        v36 = *(a2 + 2);
        goto LABEL_598;
      case 0x2Du:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_225;
        }

        v56 = *(a2 + 1);
        v36 = *(a2 + 2);
        goto LABEL_607;
      case 0x2Eu:
        if (v15 == 5)
        {
          goto LABEL_616;
        }

        goto LABEL_225;
      case 0x2Fu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_225;
        }

        v118 = *(a2 + 1);
        v20 = *(a2 + 2);
        goto LABEL_621;
      case 0x30u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_225;
        }

        v44 = *(a2 + 1);
        v20 = *(a2 + 2);
        goto LABEL_630;
      case 0x31u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_225;
        }

        v58 = *(a2 + 1);
        v20 = *(a2 + 2);
        goto LABEL_639;
      case 0x32u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_225;
        }

        v64 = *(a2 + 1);
        v20 = *(a2 + 2);
        goto LABEL_648;
      case 0x33u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_225;
        }

        v34 = *(a2 + 1);
        v20 = *(a2 + 2);
        goto LABEL_657;
      case 0x34u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_225;
        }

        v123 = *(a2 + 1);
        v20 = *(a2 + 2);
        goto LABEL_666;
      case 0x35u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_225;
        }

        v117 = *(a2 + 1);
        v20 = *(a2 + 2);
        goto LABEL_675;
      case 0x36u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_225;
        }

        v43 = *(a2 + 1);
        v20 = *(a2 + 2);
        goto LABEL_684;
      case 0x37u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_225;
        }

        v114 = *(a2 + 1);
        v20 = *(a2 + 2);
        goto LABEL_693;
      case 0x38u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_225;
        }

        v116 = *(a2 + 1);
        v20 = *(a2 + 2);
        goto LABEL_702;
      case 0x39u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_225;
        }

        v45 = *(a2 + 1);
        v20 = *(a2 + 2);
        goto LABEL_711;
      case 0x3Au:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_225;
        }

        v106 = *(a2 + 1);
        v20 = *(a2 + 2);
        goto LABEL_720;
      case 0x3Bu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_225;
        }

        v59 = *(a2 + 1);
        v20 = *(a2 + 2);
        goto LABEL_729;
      case 0x3Cu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_225;
        }

        v108 = *(a2 + 1);
        v20 = *(a2 + 2);
        goto LABEL_738;
      case 0x3Du:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_225;
        }

        v68 = *(a2 + 1);
        v20 = *(a2 + 2);
        goto LABEL_747;
      case 0x3Eu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_225;
        }

        v90 = *(a2 + 1);
        v20 = *(a2 + 2);
        goto LABEL_756;
      case 0x3Fu:
        if ((TagFallback & 7) != 0)
        {
          if (v15 == 2)
          {
            result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadPackedPrimitiveNoInline<unsigned int,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)13>(a2, this + 30);
            if (!result)
            {
              return result;
            }

            goto LABEL_784;
          }

LABEL_225:
          if (v15 == 4)
          {
            return 1;
          }

          if ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(a2, TagFallback) & 1) == 0)
          {
            return 0;
          }

          continue;
        }

        v135 = *(a2 + 1);
        v20 = *(a2 + 2);
        while (1)
        {
          v358 = v12;
          v253 = v11;
          v254 = v10;
          v255 = v9;
          v256 = v8;
          v257 = v7;
          v258 = v6;
          v259 = v5;
          v382 = 0;
          if (v135 >= v20 || *v135 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v382))
            {
              return 0;
            }
          }

          else
          {
            v382 = *v135;
            *(a2 + 1) = v135 + 1;
          }

          v260 = *(this + 62);
          if (v260 == *(this + 63))
          {
            wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 60, v260 + 1);
            v260 = *(this + 62);
          }

          v261 = v382;
          v262 = *(this + 30);
          *(this + 62) = v260 + 1;
          *(v262 + 4 * v260) = v261;
          v263 = *(this + 63) - *(this + 62);
          if (v263 >= 1)
          {
            v264 = v263 + 1;
            do
            {
              v265 = *(a2 + 1);
              v266 = *(a2 + 2);
              if (v266 - v265 < 2 || *v265 != 248 || v265[1] != 3)
              {
                break;
              }

              *(a2 + 1) = v265 + 2;
              if ((v265 + 2) >= v266 || v265[2] < 0)
              {
                if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v382))
                {
                  return 0;
                }
              }

              else
              {
                v382 = v265[2];
                *(a2 + 1) = v265 + 3;
              }

              v267 = *(this + 62);
              if (v267 >= *(this + 63))
              {
                wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v383);
                v267 = *(this + 62);
              }

              v268 = v382;
              v269 = *(this + 30);
              *(this + 62) = v267 + 1;
              *(v269 + 4 * v267) = v268;
              --v264;
            }

            while (v264 > 1);
          }

          v5 = v259;
          v6 = v258;
          v7 = v257;
          v8 = v256;
          v9 = v255;
          v10 = v254;
          v11 = v253;
          v12 = v358;
LABEL_784:
          v252 = *(a2 + 1);
          v20 = *(a2 + 2);
          if (v20 - v252 < 2)
          {
            goto LABEL_2;
          }

          v270 = *v252;
          if (v270 == 128)
          {
            break;
          }

          if (v270 != 248 || v252[1] != 3)
          {
            goto LABEL_2;
          }

LABEL_764:
          v135 = (v252 + 2);
          *(a2 + 1) = v135;
        }

        if (v252[1] != 4)
        {
          continue;
        }

        v78 = (v252 + 2);
        *(a2 + 1) = v78;
LABEL_791:
        *v383 = 0;
        if (v78 >= v20 || (v271 = *v78, v271 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, v383);
          if (!result)
          {
            return result;
          }

          v271 = *v383;
          v272 = *(a2 + 1);
          v20 = *(a2 + 2);
        }

        else
        {
          v272 = (v78 + 1);
          *(a2 + 1) = v272;
        }

        *(this + 33) = v271;
        *(this + 114) |= 0x80000000;
        if (v20 - v272 < 2 || *v272 != 136 || v272[1] != 4)
        {
          continue;
        }

        v69 = (v272 + 2);
        *(a2 + 1) = v69;
LABEL_800:
        if (v69 >= v20 || (v273 = *v69, (v273 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v6);
          if (!result)
          {
            return result;
          }

          v274 = *(a2 + 1);
          v20 = *(a2 + 2);
        }

        else
        {
          *v6 = v273;
          v274 = (v69 + 1);
          *(a2 + 1) = v274;
        }

        *(this + 115) |= 1u;
        if (v20 - v274 < 2 || *v274 != 144 || v274[1] != 4)
        {
          continue;
        }

        v92 = (v274 + 2);
        *(a2 + 1) = v92;
LABEL_809:
        if (v92 >= v20 || (v275 = *v92, (v275 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v7);
          if (!result)
          {
            return result;
          }

          v276 = *(a2 + 1);
          v20 = *(a2 + 2);
        }

        else
        {
          *v7 = v275;
          v276 = (v92 + 1);
          *(a2 + 1) = v276;
        }

        *(this + 115) |= 2u;
        if (v20 - v276 < 2 || *v276 != 152 || v276[1] != 4)
        {
          continue;
        }

        v39 = (v276 + 2);
        *(a2 + 1) = v39;
LABEL_818:
        if (v39 >= v20 || (v277 = *v39, (v277 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v8);
          if (!result)
          {
            return result;
          }

          v278 = *(a2 + 1);
          v20 = *(a2 + 2);
        }

        else
        {
          *v8 = v277;
          v278 = (v39 + 1);
          *(a2 + 1) = v278;
        }

        *(this + 115) |= 4u;
        if (v20 - v278 < 2 || *v278 != 160 || v278[1] != 4)
        {
          continue;
        }

        v55 = (v278 + 2);
        *(a2 + 1) = v55;
LABEL_827:
        if (v55 >= v20 || (v279 = *v55, (v279 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v9);
          if (!result)
          {
            return result;
          }

          v280 = *(a2 + 1);
          v20 = *(a2 + 2);
        }

        else
        {
          *v9 = v279;
          v280 = (v55 + 1);
          *(a2 + 1) = v280;
        }

        *(this + 115) |= 8u;
        if (v20 - v280 < 2 || *v280 != 168 || v280[1] != 4)
        {
          continue;
        }

        v127 = (v280 + 2);
        *(a2 + 1) = v127;
LABEL_836:
        if (v127 >= v20 || (v281 = *v127, (v281 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v10);
          if (!result)
          {
            return result;
          }

          v282 = *(a2 + 1);
          v20 = *(a2 + 2);
        }

        else
        {
          *v10 = v281;
          v282 = (v127 + 1);
          *(a2 + 1) = v282;
        }

        *(this + 115) |= 0x10u;
        if (v20 - v282 < 2 || *v282 != 176 || v282[1] != 4)
        {
          continue;
        }

        v49 = (v282 + 2);
        *(a2 + 1) = v49;
LABEL_845:
        if (v49 >= v20 || (v283 = *v49, (v283 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v11);
          if (!result)
          {
            return result;
          }

          v284 = *(a2 + 1);
          v20 = *(a2 + 2);
        }

        else
        {
          *v11 = v283;
          v284 = (v49 + 1);
          *(a2 + 1) = v284;
        }

        *(this + 115) |= 0x20u;
        if (v20 - v284 < 2 || *v284 != 184 || v284[1] != 4)
        {
          continue;
        }

        v31 = (v284 + 2);
        *(a2 + 1) = v31;
LABEL_854:
        if (v31 >= v20 || (v285 = *v31, (v285 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v12);
          if (!result)
          {
            return result;
          }

          v286 = *(a2 + 1);
          v20 = *(a2 + 2);
        }

        else
        {
          *v12 = v285;
          v286 = (v31 + 1);
          *(a2 + 1) = v286;
        }

        *(this + 115) |= 0x40u;
        if (v20 - v286 < 2 || *v286 != 192 || v286[1] != 4)
        {
          continue;
        }

        v41 = (v286 + 2);
        *(a2 + 1) = v41;
LABEL_863:
        if (v41 >= v20 || (v287 = *v41, (v287 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v381);
          if (!result)
          {
            return result;
          }

          v288 = *(a2 + 1);
          v20 = *(a2 + 2);
        }

        else
        {
          *v381 = v287;
          v288 = (v41 + 1);
          *(a2 + 1) = v288;
        }

        *(this + 115) |= 0x80u;
        if (v20 - v288 < 2 || *v288 != 200 || v288[1] != 4)
        {
          continue;
        }

        v115 = (v288 + 2);
        *(a2 + 1) = v115;
LABEL_872:
        if (v115 >= v20 || (v289 = *v115, (v289 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v380);
          if (!result)
          {
            return result;
          }

          v290 = *(a2 + 1);
          v20 = *(a2 + 2);
        }

        else
        {
          *v380 = v289;
          v290 = (v115 + 1);
          *(a2 + 1) = v290;
        }

        *(this + 115) |= 0x100u;
        if (v20 - v290 < 2 || *v290 != 208 || v290[1] != 4)
        {
          continue;
        }

        v119 = (v290 + 2);
        *(a2 + 1) = v119;
LABEL_881:
        if (v119 >= v20 || (v291 = *v119, (v291 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v379);
          if (!result)
          {
            return result;
          }

          v292 = *(a2 + 1);
          v20 = *(a2 + 2);
        }

        else
        {
          *v379 = v291;
          v292 = (v119 + 1);
          *(a2 + 1) = v292;
        }

        *(this + 115) |= 0x200u;
        if (v20 - v292 < 2 || *v292 != 216 || v292[1] != 4)
        {
          continue;
        }

        v121 = (v292 + 2);
        *(a2 + 1) = v121;
LABEL_890:
        v383[0] = 0;
        if (v121 >= v20 || (v293 = *v121, (v293 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v383);
          if (!result)
          {
            return result;
          }

          v293 = v383[0];
          v294 = *(a2 + 1);
          v20 = *(a2 + 2);
        }

        else
        {
          v294 = (v121 + 1);
          *(a2 + 1) = v294;
        }

        *(this + 77) = v293;
        *(this + 115) |= 0x400u;
        if (v20 - v294 < 2 || *v294 != 224 || v294[1] != 4)
        {
          continue;
        }

        v46 = (v294 + 2);
        *(a2 + 1) = v46;
LABEL_899:
        if (v46 >= v20 || (v295 = *v46, (v295 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v378);
          if (!result)
          {
            return result;
          }

          v296 = *(a2 + 1);
          v20 = *(a2 + 2);
        }

        else
        {
          *v378 = v295;
          v296 = (v46 + 1);
          *(a2 + 1) = v296;
        }

        *(this + 115) |= 0x800u;
        if (v20 - v296 < 2 || *v296 != 232 || v296[1] != 4)
        {
          continue;
        }

        v88 = (v296 + 2);
        *(a2 + 1) = v88;
LABEL_908:
        v383[0] = 0;
        if (v88 >= v20 || (v297 = *v88, (v297 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v383);
          if (!result)
          {
            return result;
          }

          v297 = v383[0];
          v298 = *(a2 + 1);
          v20 = *(a2 + 2);
        }

        else
        {
          v298 = (v88 + 1);
          *(a2 + 1) = v298;
        }

        *(this + 79) = v297;
        *(this + 115) |= 0x1000u;
        if (v20 - v298 < 2 || *v298 != 240 || v298[1] != 4)
        {
          continue;
        }

        v32 = (v298 + 2);
        *(a2 + 1) = v32;
LABEL_917:
        if (v32 >= v20 || (v299 = *v32, (v299 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v377);
          if (!result)
          {
            return result;
          }

          v300 = *(a2 + 1);
          v20 = *(a2 + 2);
        }

        else
        {
          *v377 = v299;
          v300 = (v32 + 1);
          *(a2 + 1) = v300;
        }

        *(this + 115) |= 0x2000u;
        if (v20 - v300 < 2 || *v300 != 248 || v300[1] != 4)
        {
          continue;
        }

        v125 = (v300 + 2);
        *(a2 + 1) = v125;
LABEL_926:
        v383[0] = 0;
        if (v125 >= v20 || (v301 = *v125, (v301 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v383);
          if (!result)
          {
            return result;
          }

          v301 = v383[0];
          v302 = *(a2 + 1);
          v20 = *(a2 + 2);
        }

        else
        {
          v302 = (v125 + 1);
          *(a2 + 1) = v302;
        }

        *(this + 81) = v301;
        *(this + 115) |= 0x4000u;
        if (v20 - v302 < 2 || *v302 != 128 || v302[1] != 5)
        {
          continue;
        }

        v27 = (v302 + 2);
        *(a2 + 1) = v27;
LABEL_935:
        if (v27 >= v20 || (v303 = *v27, (v303 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v376);
          if (!result)
          {
            return result;
          }

          v304 = *(a2 + 1);
          v20 = *(a2 + 2);
        }

        else
        {
          *v376 = v303;
          v304 = (v27 + 1);
          *(a2 + 1) = v304;
        }

        *(this + 115) |= 0x8000u;
        if (v20 - v304 < 2 || *v304 != 136 || v304[1] != 5)
        {
          continue;
        }

        v40 = (v304 + 2);
        *(a2 + 1) = v40;
LABEL_944:
        if (v40 >= v20 || (v305 = *v40, (v305 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v375);
          if (!result)
          {
            return result;
          }

          v306 = *(a2 + 1);
          v20 = *(a2 + 2);
        }

        else
        {
          *v375 = v305;
          v306 = (v40 + 1);
          *(a2 + 1) = v306;
        }

        *(this + 115) |= 0x10000u;
        if (v20 - v306 < 2 || *v306 != 144 || v306[1] != 5)
        {
          continue;
        }

        v63 = (v306 + 2);
        *(a2 + 1) = v63;
LABEL_953:
        if (v63 >= v20 || (v307 = *v63, (v307 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v374);
          if (!result)
          {
            return result;
          }

          v308 = *(a2 + 1);
          v20 = *(a2 + 2);
        }

        else
        {
          *v374 = v307;
          v308 = (v63 + 1);
          *(a2 + 1) = v308;
        }

        *(this + 115) |= 0x20000u;
        if (v20 - v308 < 2 || *v308 != 152 || v308[1] != 5)
        {
          continue;
        }

        v60 = (v308 + 2);
        *(a2 + 1) = v60;
LABEL_962:
        if (v60 >= v20 || (v309 = *v60, (v309 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v373);
          if (!result)
          {
            return result;
          }

          v310 = *(a2 + 1);
          v20 = *(a2 + 2);
        }

        else
        {
          *v373 = v309;
          v310 = (v60 + 1);
          *(a2 + 1) = v310;
        }

        *(this + 115) |= 0x40000u;
        if (v20 - v310 < 2 || *v310 != 160 || v310[1] != 5)
        {
          continue;
        }

        v22 = (v310 + 2);
        *(a2 + 1) = v22;
LABEL_971:
        if (v22 >= v20 || (v311 = *v22, (v311 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v372);
          if (!result)
          {
            return result;
          }

          v312 = *(a2 + 1);
          v20 = *(a2 + 2);
        }

        else
        {
          *v372 = v311;
          v312 = (v22 + 1);
          *(a2 + 1) = v312;
        }

        *(this + 115) |= 0x80000u;
        if (v20 - v312 < 2 || *v312 != 168 || v312[1] != 5)
        {
          continue;
        }

        v21 = (v312 + 2);
        *(a2 + 1) = v21;
LABEL_980:
        if (v21 >= v20 || (v313 = *v21, (v313 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v371);
          if (!result)
          {
            return result;
          }

          v314 = *(a2 + 1);
        }

        else
        {
          *v371 = v313;
          v314 = (v21 + 1);
          *(a2 + 1) = v314;
        }

        *(this + 115) |= 0x100000u;
        v23 = *(a2 + 2);
        if (v23 - v314 < 2 || *v314 != 176 || v314[1] != 5)
        {
          continue;
        }

        v101 = (v314 + 2);
        *(a2 + 1) = v101;
LABEL_989:
        if (v101 >= v23 || (v315 = *v101, (v315 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v370);
          if (!result)
          {
            return result;
          }

          v316 = *(a2 + 1);
          v23 = *(a2 + 2);
        }

        else
        {
          *v370 = v315;
          v316 = (v101 + 1);
          *(a2 + 1) = v316;
        }

        *(this + 115) |= 0x200000u;
        if (v23 - v316 < 2 || *v316 != 184 || v316[1] != 5)
        {
          continue;
        }

        v103 = (v316 + 2);
        *(a2 + 1) = v103;
LABEL_998:
        if (v103 >= v23 || (v317 = *v103, (v317 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v369);
          if (!result)
          {
            return result;
          }

          v318 = *(a2 + 1);
          v23 = *(a2 + 2);
        }

        else
        {
          *v369 = v317;
          v318 = (v103 + 1);
          *(a2 + 1) = v318;
        }

        *(this + 115) |= 0x400000u;
        if (v23 - v318 < 2 || *v318 != 192 || v318[1] != 5)
        {
          continue;
        }

        v120 = (v318 + 2);
        *(a2 + 1) = v120;
LABEL_1007:
        if (v120 >= v23 || (v319 = *v120, (v319 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v368);
          if (!result)
          {
            return result;
          }

          v320 = *(a2 + 1);
          v23 = *(a2 + 2);
        }

        else
        {
          *v368 = v319;
          v320 = (v120 + 1);
          *(a2 + 1) = v320;
        }

        *(this + 115) |= 0x800000u;
        if (v23 - v320 < 2 || *v320 != 200 || v320[1] != 5)
        {
          continue;
        }

        v35 = (v320 + 2);
        *(a2 + 1) = v35;
LABEL_1016:
        if (v35 >= v23 || (v321 = *v35, (v321 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v367);
          if (!result)
          {
            return result;
          }

          v322 = *(a2 + 1);
          v23 = *(a2 + 2);
        }

        else
        {
          *v367 = v321;
          v322 = (v35 + 1);
          *(a2 + 1) = v322;
        }

        *(this + 115) |= 0x1000000u;
        if (v23 - v322 < 2 || *v322 != 208 || v322[1] != 5)
        {
          continue;
        }

        v132 = (v322 + 2);
        *(a2 + 1) = v132;
LABEL_1025:
        if (v132 >= v23 || (v323 = *v132, (v323 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v366);
          if (!result)
          {
            return result;
          }

          v324 = *(a2 + 1);
          v23 = *(a2 + 2);
        }

        else
        {
          *v366 = v323;
          v324 = (v132 + 1);
          *(a2 + 1) = v324;
        }

        *(this + 115) |= 0x2000000u;
        if (v23 - v324 < 2 || *v324 != 216 || v324[1] != 5)
        {
          continue;
        }

        v131 = (v324 + 2);
        *(a2 + 1) = v131;
LABEL_1034:
        if (v131 >= v23 || (v325 = *v131, (v325 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v365);
          if (!result)
          {
            return result;
          }

          v326 = *(a2 + 1);
          v23 = *(a2 + 2);
        }

        else
        {
          *v365 = v325;
          v326 = (v131 + 1);
          *(a2 + 1) = v326;
        }

        *(this + 115) |= 0x4000000u;
        if (v23 - v326 < 2 || *v326 != 224 || v326[1] != 5)
        {
          continue;
        }

        v24 = (v326 + 2);
        *(a2 + 1) = v24;
LABEL_1043:
        if (v24 >= v23 || (v327 = *v24, (v327 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v364);
          if (!result)
          {
            return result;
          }

          v328 = *(a2 + 1);
          v23 = *(a2 + 2);
        }

        else
        {
          *v364 = v327;
          v328 = (v24 + 1);
          *(a2 + 1) = v328;
        }

        *(this + 115) |= 0x8000000u;
        if (v23 - v328 < 2 || *v328 != 232 || v328[1] != 5)
        {
          continue;
        }

        v82 = (v328 + 2);
        *(a2 + 1) = v82;
LABEL_1052:
        v383[0] = 0;
        if (v82 >= v23 || (v329 = *v82, (v329 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v383);
          if (!result)
          {
            return result;
          }

          v329 = v383[0];
          v330 = *(a2 + 1);
          v23 = *(a2 + 2);
        }

        else
        {
          v330 = (v82 + 1);
          *(a2 + 1) = v330;
        }

        *(this + 227) = v329 != 0;
        *(this + 115) |= 0x10000000u;
        if (v23 - v330 < 2 || *v330 != 240 || v330[1] != 5)
        {
          continue;
        }

        v33 = (v330 + 2);
        *(a2 + 1) = v33;
LABEL_1061:
        v383[0] = 0;
        if (v33 >= v23 || (v331 = *v33, (v331 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v383);
          if (!result)
          {
            return result;
          }

          v331 = v383[0];
          v332 = *(a2 + 1);
          v23 = *(a2 + 2);
        }

        else
        {
          v332 = (v33 + 1);
          *(a2 + 1) = v332;
        }

        *(this + 380) = v331 != 0;
        *(this + 115) |= 0x20000000u;
        if (v23 - v332 < 2 || *v332 != 248 || v332[1] != 5)
        {
          continue;
        }

        v86 = (v332 + 2);
        *(a2 + 1) = v86;
LABEL_1070:
        v383[0] = 0;
        if (v86 >= v23 || (v333 = *v86, (v333 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v383);
          if (!result)
          {
            return result;
          }

          v333 = v383[0];
        }

        else
        {
          *(a2 + 1) = v86 + 1;
        }

        if (v333 <= 0x18)
        {
          *(this + 115) |= 0x40000000u;
          *(this + 96) = v333;
        }

        v334 = *(a2 + 1);
        v128 = *(a2 + 2);
        if (v128 - v334 < 2 || *v334 != 128 || v334[1] != 6)
        {
          continue;
        }

        v129 = (v334 + 2);
        *(a2 + 1) = v129;
LABEL_1081:
        v383[0] = 0;
        if (v129 >= v128 || (v335 = *v129, (v335 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v383);
          if (!result)
          {
            return result;
          }

          v335 = v383[0];
        }

        else
        {
          *(a2 + 1) = v129 + 1;
        }

        if (v335 <= 0x18)
        {
          *(this + 115) |= 0x80000000;
          *(this + 97) = v335;
        }

        v336 = *(a2 + 1);
        v28 = *(a2 + 2);
        if (v28 - v336 < 2 || *v336 != 136 || v336[1] != 6)
        {
          continue;
        }

        v29 = (v336 + 2);
        *(a2 + 1) = v29;
LABEL_1092:
        *v383 = 0;
        if (v29 >= v28 || (v337 = *v29, v337 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, v383);
          if (!result)
          {
            return result;
          }

          v337 = *v383;
          v338 = *(a2 + 1);
          v28 = *(a2 + 2);
        }

        else
        {
          v338 = (v29 + 1);
          *(a2 + 1) = v338;
        }

        *(this + 49) = v337;
        *(this + 116) |= 1u;
        if (v28 - v338 < 2 || *v338 != 144 || v338[1] != 6)
        {
          continue;
        }

        v133 = (v338 + 2);
        *(a2 + 1) = v133;
LABEL_1101:
        *v383 = 0;
        if (v133 >= v28 || (v339 = *v133, v339 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, v383);
          if (!result)
          {
            return result;
          }

          v339 = *v383;
          v340 = *(a2 + 1);
          v28 = *(a2 + 2);
        }

        else
        {
          v340 = (v133 + 1);
          *(a2 + 1) = v340;
        }

        *(this + 50) = v339;
        *(this + 116) |= 2u;
        if (v28 - v340 < 2 || *v340 != 153 || v340[1] != 6)
        {
          continue;
        }

        *(a2 + 1) = v340 + 2;
LABEL_1110:
        *v383 = 0;
        if (wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v383))
        {
          *(this + 51) = *v383;
          *(this + 116) |= 4u;
          v341 = *(a2 + 1);
          v25 = *(a2 + 2);
          if (v25 - v341 >= 2 && *v341 == 160 && v341[1] == 6)
          {
            v134 = (v341 + 2);
            *(a2 + 1) = v134;
LABEL_1115:
            if (v134 >= v25 || (v342 = *v134, (v342 & 0x80000000) != 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v359);
              if (!result)
              {
                return result;
              }

              v343 = *(a2 + 1);
              v25 = *(a2 + 2);
            }

            else
            {
              *v359 = v342;
              v343 = (v134 + 1);
              *(a2 + 1) = v343;
            }

            *(this + 116) |= 8u;
            if (v25 - v343 >= 2 && *v343 == 168 && v343[1] == 6)
            {
              v130 = (v343 + 2);
              *(a2 + 1) = v130;
LABEL_1124:
              if (v130 >= v25 || (v344 = *v130, (v344 & 0x80000000) != 0))
              {
                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v360);
                if (!result)
                {
                  return result;
                }

                v345 = *(a2 + 1);
                v25 = *(a2 + 2);
              }

              else
              {
                *v360 = v344;
                v345 = (v130 + 1);
                *(a2 + 1) = v345;
              }

              *(this + 116) |= 0x10u;
              if (v25 - v345 >= 2 && *v345 == 176 && v345[1] == 6)
              {
                v126 = (v345 + 2);
                *(a2 + 1) = v126;
LABEL_1133:
                if (v126 >= v25 || (v346 = *v126, (v346 & 0x80000000) != 0))
                {
                  result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v361);
                  if (!result)
                  {
                    return result;
                  }

                  v347 = *(a2 + 1);
                  v25 = *(a2 + 2);
                }

                else
                {
                  *v361 = v346;
                  v347 = (v126 + 1);
                  *(a2 + 1) = v347;
                }

                *(this + 116) |= 0x20u;
                if (v25 - v347 >= 2 && *v347 == 184 && v347[1] == 6)
                {
                  v38 = (v347 + 2);
                  *(a2 + 1) = v38;
LABEL_1142:
                  v383[0] = 0;
                  if (v38 >= v25 || (v348 = *v38, (v348 & 0x80000000) != 0))
                  {
                    result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v383);
                    if (!result)
                    {
                      return result;
                    }

                    v348 = v383[0];
                    v349 = *(a2 + 1);
                    v25 = *(a2 + 2);
                  }

                  else
                  {
                    v349 = (v38 + 1);
                    *(a2 + 1) = v349;
                  }

                  *(this + 107) = v348;
                  *(this + 116) |= 0x40u;
                  if (v25 - v349 >= 2 && *v349 == 192 && v349[1] == 6)
                  {
                    v124 = (v349 + 2);
                    *(a2 + 1) = v124;
LABEL_1151:
                    v383[0] = 0;
                    if (v124 >= v25 || (v350 = *v124, (v350 & 0x80000000) != 0))
                    {
                      result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v383);
                      if (!result)
                      {
                        return result;
                      }

                      v350 = v383[0];
                      v351 = *(a2 + 1);
                      v25 = *(a2 + 2);
                    }

                    else
                    {
                      v351 = (v124 + 1);
                      *(a2 + 1) = v351;
                    }

                    *(this + 108) = v350;
                    *(this + 116) |= 0x80u;
                    if (v25 - v351 >= 2 && *v351 == 200 && v351[1] == 6)
                    {
                      v122 = (v351 + 2);
                      *(a2 + 1) = v122;
LABEL_1160:
                      v383[0] = 0;
                      if (v122 >= v25 || (v352 = *v122, (v352 & 0x80000000) != 0))
                      {
                        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v383);
                        if (!result)
                        {
                          return result;
                        }

                        v352 = v383[0];
                        v353 = *(a2 + 1);
                        v25 = *(a2 + 2);
                      }

                      else
                      {
                        v353 = (v122 + 1);
                        *(a2 + 1) = v353;
                      }

                      *(this + 109) = v352;
                      *(this + 116) |= 0x100u;
                      if (v25 - v353 >= 2 && *v353 == 208 && v353[1] == 6)
                      {
                        v30 = (v353 + 2);
                        *(a2 + 1) = v30;
LABEL_1169:
                        if (v30 >= v25 || (v354 = *v30, (v354 & 0x80000000) != 0))
                        {
                          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v362);
                          if (!result)
                          {
                            return result;
                          }

                          v355 = *(a2 + 1);
                          v25 = *(a2 + 2);
                        }

                        else
                        {
                          *v362 = v354;
                          v355 = (v30 + 1);
                          *(a2 + 1) = v355;
                        }

                        *(this + 116) |= 0x200u;
                        if (v25 - v355 >= 2 && *v355 == 216 && v355[1] == 6)
                        {
                          v26 = (v355 + 2);
                          *(a2 + 1) = v26;
LABEL_1178:
                          if (v26 >= v25 || (v356 = *v26, (v356 & 0x80000000) != 0))
                          {
                            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v363);
                            if (!result)
                            {
                              return result;
                            }

                            v357 = *(a2 + 1);
                            v25 = *(a2 + 2);
                          }

                          else
                          {
                            *v363 = v356;
                            v357 = v26 + 1;
                            *(a2 + 1) = v357;
                          }

                          *(this + 116) |= 0x400u;
                          if (v357 == v25 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
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

          continue;
        }

        return 0;
      case 0x40u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_225;
        }

        v78 = *(a2 + 1);
        v20 = *(a2 + 2);
        goto LABEL_791;
      case 0x41u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_225;
        }

        v69 = *(a2 + 1);
        v20 = *(a2 + 2);
        goto LABEL_800;
      case 0x42u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_225;
        }

        v92 = *(a2 + 1);
        v20 = *(a2 + 2);
        goto LABEL_809;
      case 0x43u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_225;
        }

        v39 = *(a2 + 1);
        v20 = *(a2 + 2);
        goto LABEL_818;
      case 0x44u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_225;
        }

        v55 = *(a2 + 1);
        v20 = *(a2 + 2);
        goto LABEL_827;
      case 0x45u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_225;
        }

        v127 = *(a2 + 1);
        v20 = *(a2 + 2);
        goto LABEL_836;
      case 0x46u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_225;
        }

        v49 = *(a2 + 1);
        v20 = *(a2 + 2);
        goto LABEL_845;
      case 0x47u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_225;
        }

        v31 = *(a2 + 1);
        v20 = *(a2 + 2);
        goto LABEL_854;
      case 0x48u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_225;
        }

        v41 = *(a2 + 1);
        v20 = *(a2 + 2);
        goto LABEL_863;
      case 0x49u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_225;
        }

        v115 = *(a2 + 1);
        v20 = *(a2 + 2);
        goto LABEL_872;
      case 0x4Au:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_225;
        }

        v119 = *(a2 + 1);
        v20 = *(a2 + 2);
        goto LABEL_881;
      case 0x4Bu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_225;
        }

        v121 = *(a2 + 1);
        v20 = *(a2 + 2);
        goto LABEL_890;
      case 0x4Cu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_225;
        }

        v46 = *(a2 + 1);
        v20 = *(a2 + 2);
        goto LABEL_899;
      case 0x4Du:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_225;
        }

        v88 = *(a2 + 1);
        v20 = *(a2 + 2);
        goto LABEL_908;
      case 0x4Eu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_225;
        }

        v32 = *(a2 + 1);
        v20 = *(a2 + 2);
        goto LABEL_917;
      case 0x4Fu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_225;
        }

        v125 = *(a2 + 1);
        v20 = *(a2 + 2);
        goto LABEL_926;
      case 0x50u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_225;
        }

        v27 = *(a2 + 1);
        v20 = *(a2 + 2);
        goto LABEL_935;
      case 0x51u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_225;
        }

        v40 = *(a2 + 1);
        v20 = *(a2 + 2);
        goto LABEL_944;
      case 0x52u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_225;
        }

        v63 = *(a2 + 1);
        v20 = *(a2 + 2);
        goto LABEL_953;
      case 0x53u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_225;
        }

        v60 = *(a2 + 1);
        v20 = *(a2 + 2);
        goto LABEL_962;
      case 0x54u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_225;
        }

        v22 = *(a2 + 1);
        v20 = *(a2 + 2);
        goto LABEL_971;
      case 0x55u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_225;
        }

        v21 = *(a2 + 1);
        v20 = *(a2 + 2);
        goto LABEL_980;
      case 0x56u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_225;
        }

        v101 = *(a2 + 1);
        v23 = *(a2 + 2);
        goto LABEL_989;
      case 0x57u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_225;
        }

        v103 = *(a2 + 1);
        v23 = *(a2 + 2);
        goto LABEL_998;
      case 0x58u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_225;
        }

        v120 = *(a2 + 1);
        v23 = *(a2 + 2);
        goto LABEL_1007;
      case 0x59u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_225;
        }

        v35 = *(a2 + 1);
        v23 = *(a2 + 2);
        goto LABEL_1016;
      case 0x5Au:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_225;
        }

        v132 = *(a2 + 1);
        v23 = *(a2 + 2);
        goto LABEL_1025;
      case 0x5Bu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_225;
        }

        v131 = *(a2 + 1);
        v23 = *(a2 + 2);
        goto LABEL_1034;
      case 0x5Cu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_225;
        }

        v24 = *(a2 + 1);
        v23 = *(a2 + 2);
        goto LABEL_1043;
      case 0x5Du:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_225;
        }

        v82 = *(a2 + 1);
        v23 = *(a2 + 2);
        goto LABEL_1052;
      case 0x5Eu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_225;
        }

        v33 = *(a2 + 1);
        v23 = *(a2 + 2);
        goto LABEL_1061;
      case 0x5Fu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_225;
        }

        v86 = *(a2 + 1);
        v23 = *(a2 + 2);
        goto LABEL_1070;
      case 0x60u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_225;
        }

        v129 = *(a2 + 1);
        v128 = *(a2 + 2);
        goto LABEL_1081;
      case 0x61u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_225;
        }

        v29 = *(a2 + 1);
        v28 = *(a2 + 2);
        goto LABEL_1092;
      case 0x62u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_225;
        }

        v133 = *(a2 + 1);
        v28 = *(a2 + 2);
        goto LABEL_1101;
      case 0x63u:
        if (v15 == 1)
        {
          goto LABEL_1110;
        }

        goto LABEL_225;
      case 0x64u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_225;
        }

        v134 = *(a2 + 1);
        v25 = *(a2 + 2);
        goto LABEL_1115;
      case 0x65u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_225;
        }

        v130 = *(a2 + 1);
        v25 = *(a2 + 2);
        goto LABEL_1124;
      case 0x66u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_225;
        }

        v126 = *(a2 + 1);
        v25 = *(a2 + 2);
        goto LABEL_1133;
      case 0x67u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_225;
        }

        v38 = *(a2 + 1);
        v25 = *(a2 + 2);
        goto LABEL_1142;
      case 0x68u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_225;
        }

        v124 = *(a2 + 1);
        v25 = *(a2 + 2);
        goto LABEL_1151;
      case 0x69u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_225;
        }

        v122 = *(a2 + 1);
        v25 = *(a2 + 2);
        goto LABEL_1160;
      case 0x6Au:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_225;
        }

        v30 = *(a2 + 1);
        v25 = *(a2 + 2);
        goto LABEL_1169;
      case 0x6Bu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_225;
        }

        v26 = *(a2 + 1);
        v25 = *(a2 + 2);
        goto LABEL_1178;
      default:
        goto LABEL_225;
    }
  }
}