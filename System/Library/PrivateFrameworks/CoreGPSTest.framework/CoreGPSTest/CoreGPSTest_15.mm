uint64_t proto::gpsd::SetAssistanceMapVector::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
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
        goto LABEL_4;
      }

      goto LABEL_17;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(2, a2, *(v5 + 16), a3);
  v6 = *(v5 + 76);
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
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(3, a2, *(v5 + 24), a3);
  v6 = *(v5 + 76);
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
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(4, *(v5 + 64), a2, a4);
  v6 = *(v5 + 76);
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
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(5, a2, *(v5 + 32), a3);
  v6 = *(v5 + 76);
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
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(6, a2, *(v5 + 40), a3);
  v6 = *(v5 + 76);
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
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(7, a2, *(v5 + 48), a3);
  v6 = *(v5 + 76);
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
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(8, a2, *(v5 + 56), a3);
  v6 = *(v5 + 76);
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
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(9, *(v5 + 65), a2, a4);
  v6 = *(v5 + 76);
  if ((v6 & 0x200) == 0)
  {
LABEL_11:
    if ((v6 & 0x400) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_25;
  }

LABEL_24:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(0xA, *(v5 + 66), a2, a4);
  v6 = *(v5 + 76);
  if ((v6 & 0x400) == 0)
  {
LABEL_12:
    if ((v6 & 0x800) == 0)
    {
      goto LABEL_13;
    }

LABEL_26:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(0xC, *(v5 + 68), a2, a4);
    if ((*(v5 + 76) & 0x1000) == 0)
    {
      return this;
    }

    goto LABEL_27;
  }

LABEL_25:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(0xB, *(v5 + 67), a2, a4);
  v6 = *(v5 + 76);
  if ((v6 & 0x800) != 0)
  {
    goto LABEL_26;
  }

LABEL_13:
  if ((v6 & 0x1000) == 0)
  {
    return this;
  }

LABEL_27:
  v7 = *(v5 + 69);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(0xD, v7, a2, a4);
}

uint64_t proto::gpsd::SetAssistanceMapVector::ByteSize(proto::gpsd::SetAssistanceMapVector *this, unint64_t a2)
{
  v3 = *(this + 19);
  if (v3)
  {
    if (v3)
    {
      v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 1)) + 1;
      v3 = *(this + 19);
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

    v6 = v4 + ((v3 >> 2) & 2);
    if ((v3 & 0x10) != 0)
    {
      v6 += 9;
    }

    if ((v3 & 0x20) != 0)
    {
      v6 += 9;
    }

    if ((v3 & 0x40) != 0)
    {
      v6 += 9;
    }

    if ((v3 & 0x80) != 0)
    {
      result = v6 + 9;
    }

    else
    {
      result = v6;
    }
  }

  else
  {
    result = 0;
  }

  if ((v3 & 0xFF00) != 0)
  {
    v7.i64[0] = 0x200000002;
    v7.i64[1] = 0x200000002;
    result = vaddvq_s32(vandq_s8(vshlq_u32(vdupq_n_s32(v3), xmmword_245584C50), v7)) + ((v3 >> 11) & 2) + result;
  }

  *(this + 18) = result;
  return result;
}

void proto::gpsd::SetAssistanceMapVector::CheckTypeAndMergeFrom(proto::gpsd::SetAssistanceMapVector *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  proto::gpsd::SetAssistanceMapVector::MergeFrom(this, lpsrc);
}

void proto::gpsd::SetAssistanceMapVector::CopyFrom(proto::gpsd::SetAssistanceMapVector *this, const proto::gpsd::SetAssistanceMapVector *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    proto::gpsd::SetAssistanceMapVector::MergeFrom(this, a2);
  }
}

double proto::gpsd::SetAssistanceMapVector::Swap(proto::gpsd::SetAssistanceMapVector *this, proto::gpsd::SetAssistanceMapVector *a2)
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
    LOBYTE(v2) = *(this + 64);
    *(this + 64) = *(a2 + 64);
    *(a2 + 64) = v2;
    v5 = *(this + 4);
    *(this + 4) = *(a2 + 4);
    *(a2 + 4) = v5;
    v6 = *(this + 5);
    *(this + 5) = *(a2 + 5);
    *(a2 + 5) = v6;
    v7 = *(this + 6);
    *(this + 6) = *(a2 + 6);
    *(a2 + 6) = v7;
    result = *(this + 7);
    *(this + 7) = *(a2 + 7);
    *(a2 + 7) = result;
    LOBYTE(v2) = *(this + 65);
    *(this + 65) = *(a2 + 65);
    *(a2 + 65) = v2;
    LOBYTE(v2) = *(this + 66);
    *(this + 66) = *(a2 + 66);
    *(a2 + 66) = v2;
    LOBYTE(v2) = *(this + 67);
    *(this + 67) = *(a2 + 67);
    *(a2 + 67) = v2;
    LOBYTE(v2) = *(this + 68);
    *(this + 68) = *(a2 + 68);
    *(a2 + 68) = v2;
    LOBYTE(v2) = *(this + 69);
    *(this + 69) = *(a2 + 69);
    *(a2 + 69) = v2;
    LODWORD(v2) = *(this + 19);
    *(this + 19) = *(a2 + 19);
    *(a2 + 19) = v2;
    LODWORD(v2) = *(this + 18);
    *(this + 18) = *(a2 + 18);
    *(a2 + 18) = v2;
  }

  return result;
}

double proto::gpsd::SetAssistanceMotionActivityContext::SharedCtor(proto::gpsd::SetAssistanceMotionActivityContext *this)
{
  *(this + 1) = 0;
  *&result = 0x400000000;
  *(this + 2) = 0x400000000;
  *(this + 3) = 0;
  *(this + 8) = 0;
  return result;
}

proto::gpsd::SetAssistanceMotionActivityContext *proto::gpsd::SetAssistanceMotionActivityContext::SetAssistanceMotionActivityContext(proto::gpsd::SetAssistanceMotionActivityContext *this, const proto::gpsd::SetAssistanceMotionActivityContext *a2)
{
  *this = &unk_2858628F8;
  *(this + 1) = 0;
  *(this + 2) = 0x400000000;
  *(this + 3) = 0;
  *(this + 8) = 0;
  proto::gpsd::SetAssistanceMotionActivityContext::MergeFrom(this, a2);
  return this;
}

void proto::gpsd::SetAssistanceMotionActivityContext::~SetAssistanceMotionActivityContext(proto::gpsd::SetAssistanceMotionActivityContext *this)
{
  *this = &unk_2858628F8;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2858628F8;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2858628F8;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  JUMPOUT(0x245D6AEE0);
}

uint64_t proto::gpsd::SetAssistanceMotionActivityContext::MergePartialFromCodedStream(proto::gpsd::SetAssistanceMotionActivityContext *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
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
            v16 = *(a2 + 1);
            v15 = *(a2 + 2);
            goto LABEL_39;
          }
        }

        else if (v7 == 4 && (TagFallback & 7) == 0)
        {
          v11 = *(a2 + 1);
          v10 = *(a2 + 2);
          goto LABEL_49;
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

      v12 = *(a2 + 1);
      v8 = *(a2 + 2);
      if (v12 >= v8 || (v13 = *v12, v13 < 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 1);
        if (!result)
        {
          return result;
        }

        v14 = *(a2 + 1);
        v8 = *(a2 + 2);
      }

      else
      {
        *(this + 1) = v13;
        v14 = v12 + 1;
        *(a2 + 1) = v14;
      }

      *(this + 8) |= 1u;
      if (v14 < v8 && *v14 == 16)
      {
        v9 = v14 + 1;
        *(a2 + 1) = v9;
LABEL_29:
        v25 = 0;
        if (v9 >= v8 || (v17 = *v9, (v17 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v25);
          if (!result)
          {
            return result;
          }

          v17 = v25;
        }

        else
        {
          *(a2 + 1) = v9 + 1;
        }

        if (v17 <= 9)
        {
          *(this + 8) |= 2u;
          *(this + 4) = v17;
        }

        v18 = *(a2 + 1);
        v15 = *(a2 + 2);
        if (v18 < v15 && *v18 == 24)
        {
          v16 = v18 + 1;
          *(a2 + 1) = v16;
LABEL_39:
          v24 = 0;
          if (v16 >= v15 || (v19 = *v16, (v19 & 0x80000000) != 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v24);
            if (!result)
            {
              return result;
            }

            v19 = v24;
          }

          else
          {
            *(a2 + 1) = v16 + 1;
          }

          if (v19 <= 4)
          {
            *(this + 8) |= 4u;
            *(this + 5) = v19;
          }

          v20 = *(a2 + 1);
          v10 = *(a2 + 2);
          if (v20 < v10 && *v20 == 32)
          {
            v11 = v20 + 1;
            *(a2 + 1) = v11;
LABEL_49:
            v23 = 0;
            if (v11 >= v10 || (v21 = *v11, (v21 & 0x80000000) != 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v23);
              if (!result)
              {
                return result;
              }

              v21 = v23;
            }

            else
            {
              *(a2 + 1) = v11 + 1;
            }

            if (proto::gnss::Reliability_IsValid(v21))
            {
              *(this + 8) |= 8u;
              *(this + 6) = v21;
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

uint64_t proto::gpsd::SetAssistanceMotionActivityContext::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 32);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(1, *(this + 8), a2, a4);
    v6 = v5[8];
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

LABEL_8:
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(3, v5[5], a2, a4);
      if ((v5[8] & 8) == 0)
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

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(2, v5[4], a2, a4);
  v6 = v5[8];
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
  v7 = v5[6];

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(4, v7, a2, a4);
}

uint64_t proto::gpsd::SetAssistanceMotionActivityContext::ByteSize(proto::gpsd::SetAssistanceMotionActivityContext *this, unint64_t a2)
{
  LOBYTE(v3) = *(this + 32);
  if (!v3)
  {
    v4 = 0;
    goto LABEL_28;
  }

  if (*(this + 32))
  {
    v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 1)) + 1;
    v3 = *(this + 8);
    if ((v3 & 2) == 0)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v4 = 0;
    if ((*(this + 32) & 2) == 0)
    {
      goto LABEL_13;
    }
  }

  v5 = *(this + 4);
  if ((v5 & 0x80000000) != 0)
  {
    v6 = 11;
  }

  else if (v5 >= 0x80)
  {
    v6 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5) + 1;
    v3 = *(this + 8);
  }

  else
  {
    v6 = 2;
  }

  v4 = (v6 + v4);
LABEL_13:
  if ((v3 & 4) == 0)
  {
    if ((v3 & 8) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_22;
  }

  v7 = *(this + 5);
  if ((v7 & 0x80000000) != 0)
  {
    v8 = 11;
  }

  else if (v7 >= 0x80)
  {
    v8 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v7) + 1;
    v3 = *(this + 8);
  }

  else
  {
    v8 = 2;
  }

  v4 = (v8 + v4);
  if ((v3 & 8) != 0)
  {
LABEL_22:
    v9 = *(this + 6);
    if ((v9 & 0x80000000) != 0)
    {
      v10 = 11;
    }

    else if (v9 >= 0x80)
    {
      v10 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v9) + 1;
    }

    else
    {
      v10 = 2;
    }

    v4 = (v10 + v4);
  }

LABEL_28:
  *(this + 7) = v4;
  return v4;
}

void proto::gpsd::SetAssistanceMotionActivityContext::CheckTypeAndMergeFrom(proto::gpsd::SetAssistanceMotionActivityContext *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  proto::gpsd::SetAssistanceMotionActivityContext::MergeFrom(this, lpsrc);
}

void proto::gpsd::SetAssistanceMotionActivityContext::CopyFrom(proto::gpsd::SetAssistanceMotionActivityContext *this, const proto::gpsd::SetAssistanceMotionActivityContext *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    proto::gpsd::SetAssistanceMotionActivityContext::MergeFrom(this, a2);
  }
}

uint64_t proto::gpsd::SetAssistanceMotionActivityContext::Swap(uint64_t this, proto::gpsd::SetAssistanceMotionActivityContext *a2)
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
    LODWORD(v2) = *(this + 32);
    *(this + 32) = *(a2 + 8);
    *(a2 + 8) = v2;
    LODWORD(v2) = *(this + 28);
    *(this + 28) = *(a2 + 7);
    *(a2 + 7) = v2;
  }

  return this;
}

uint64_t proto::gpsd::SetAssistanceMountState::SharedCtor(uint64_t this)
{
  *(this + 8) = 0;
  *(this + 16) = 4;
  *(this + 24) = 0;
  return this;
}

proto::gpsd::SetAssistanceMountState *proto::gpsd::SetAssistanceMountState::SetAssistanceMountState(proto::gpsd::SetAssistanceMountState *this, const proto::gpsd::SetAssistanceMountState *a2)
{
  *this = &unk_285862970;
  *(this + 1) = 0;
  *(this + 2) = 4;
  *(this + 6) = 0;
  proto::gpsd::SetAssistanceMountState::MergeFrom(this, a2);
  return this;
}

void proto::gpsd::SetAssistanceMountState::~SetAssistanceMountState(proto::gpsd::SetAssistanceMountState *this)
{
  *this = &unk_285862970;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_285862970;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_285862970;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  JUMPOUT(0x245D6AEE0);
}

uint64_t proto::gpsd::SetAssistanceMountState::MergePartialFromCodedStream(proto::gpsd::SetAssistanceMountState *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
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
        v14 = 0;
        if (v11 >= v7 || (v12 = *v11, (v12 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v14);
          if (!result)
          {
            return result;
          }

          v12 = v14;
        }

        else
        {
          *(a2 + 1) = v11 + 1;
        }

        if (v12 - 1 <= 3)
        {
          *(this + 6) |= 2u;
          *(this + 4) = v12;
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

uint64_t proto::gpsd::SetAssistanceMountState::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
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

    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(2, v7, a2, a4);
  }

  return this;
}

uint64_t proto::gpsd::SetAssistanceMountState::ByteSize(wireless_diagnostics::google::protobuf::io::CodedOutputStream **this, unint64_t a2)
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

void proto::gpsd::SetAssistanceMountState::CheckTypeAndMergeFrom(proto::gpsd::SetAssistanceMountState *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  proto::gpsd::SetAssistanceMountState::MergeFrom(this, lpsrc);
}

void proto::gpsd::SetAssistanceMountState::CopyFrom(proto::gpsd::SetAssistanceMountState *this, const proto::gpsd::SetAssistanceMountState *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    proto::gpsd::SetAssistanceMountState::MergeFrom(this, a2);
  }
}

uint64_t proto::gpsd::SetAssistanceMountState::Swap(uint64_t this, proto::gpsd::SetAssistanceMountState *a2)
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

double proto::gpsd::SetAssistanceSignalEnvironment::SharedCtor(proto::gpsd::SetAssistanceSignalEnvironment *this)
{
  *&result = 15;
  *(this + 1) = 15;
  *(this + 4) = 0;
  return result;
}

proto::gpsd::SetAssistanceSignalEnvironment *proto::gpsd::SetAssistanceSignalEnvironment::SetAssistanceSignalEnvironment(proto::gpsd::SetAssistanceSignalEnvironment *this, const proto::gpsd::SetAssistanceSignalEnvironment *a2)
{
  *this = &unk_2858629E8;
  *(this + 1) = 15;
  *(this + 4) = 0;
  proto::gpsd::SetAssistanceSignalEnvironment::MergeFrom(this, a2);
  return this;
}

void proto::gpsd::SetAssistanceSignalEnvironment::~SetAssistanceSignalEnvironment(proto::gpsd::SetAssistanceSignalEnvironment *this)
{
  *this = &unk_2858629E8;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2858629E8;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2858629E8;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  JUMPOUT(0x245D6AEE0);
}

uint64_t proto::gpsd::SetAssistanceSignalEnvironment::MergePartialFromCodedStream(proto::gpsd::SetAssistanceSignalEnvironment *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
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
      }

      else
      {
        *(a2 + 8) = TagFallback;
        *(a2 + 1) = v5 + 1;
      }

      if (TagFallback != 8)
      {
        break;
      }

      v11 = 0;
      v7 = *(a2 + 1);
      if (v7 >= *(a2 + 2) || (v8 = *v7, (v8 & 0x80000000) != 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v11);
        if (!result)
        {
          return result;
        }

        v8 = v11;
      }

      else
      {
        *(a2 + 1) = v7 + 1;
      }

      if (v8 < 7 || v8 == 15)
      {
        *(this + 4) |= 1u;
        *(this + 2) = v8;
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

uint64_t proto::gpsd::SetAssistanceSignalEnvironment::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  if (*(this + 16))
  {
    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(1, *(this + 8), a2, a4);
  }

  return this;
}

uint64_t proto::gpsd::SetAssistanceSignalEnvironment::ByteSize(proto::gpsd::SetAssistanceSignalEnvironment *this, unsigned int a2)
{
  if (*(this + 16))
  {
    v4 = *(this + 2);
    if ((v4 & 0x80000000) != 0)
    {
      result = 11;
    }

    else if (v4 >= 0x80)
    {
      result = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v4) + 1;
    }

    else
    {
      result = 2;
    }
  }

  else
  {
    result = 0;
  }

  *(this + 3) = result;
  return result;
}

void proto::gpsd::SetAssistanceSignalEnvironment::CheckTypeAndMergeFrom(proto::gpsd::SetAssistanceSignalEnvironment *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  proto::gpsd::SetAssistanceSignalEnvironment::MergeFrom(this, lpsrc);
}

void proto::gpsd::SetAssistanceSignalEnvironment::CopyFrom(proto::gpsd::SetAssistanceSignalEnvironment *this, const proto::gpsd::SetAssistanceSignalEnvironment *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    proto::gpsd::SetAssistanceSignalEnvironment::MergeFrom(this, a2);
  }
}

proto::gpsd::SetAssistanceSignalEnvironment *proto::gpsd::SetAssistanceSignalEnvironment::Swap(proto::gpsd::SetAssistanceSignalEnvironment *this, proto::gpsd::SetAssistanceSignalEnvironment *a2)
{
  if (a2 != this)
  {
    v2 = *(this + 2);
    *(this + 2) = *(a2 + 2);
    *(a2 + 2) = v2;
    v3 = *(this + 4);
    *(this + 4) = *(a2 + 4);
    *(a2 + 4) = v3;
    v4 = *(this + 3);
    *(this + 3) = *(a2 + 3);
    *(a2 + 3) = v4;
  }

  return this;
}

double proto::gpsd::SetAssistanceSpeedConstraint::SharedCtor(proto::gpsd::SetAssistanceSpeedConstraint *this)
{
  *(this + 5) = 0;
  result = 0.0;
  *(this + 24) = 0u;
  *(this + 8) = 0u;
  return result;
}

proto::gpsd::SetAssistanceSpeedConstraint *proto::gpsd::SetAssistanceSpeedConstraint::SetAssistanceSpeedConstraint(proto::gpsd::SetAssistanceSpeedConstraint *this, const proto::gpsd::SetAssistanceSpeedConstraint *a2)
{
  *this = &unk_285862A60;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 5) = 0;
  proto::gpsd::SetAssistanceSpeedConstraint::MergeFrom(this, a2);
  return this;
}

void proto::gpsd::SetAssistanceSpeedConstraint::~SetAssistanceSpeedConstraint(proto::gpsd::SetAssistanceSpeedConstraint *this)
{
  *this = &unk_285862A60;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_285862A60;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_285862A60;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  JUMPOUT(0x245D6AEE0);
}

uint64_t proto::gpsd::SetAssistanceSpeedConstraint::MergePartialFromCodedStream(proto::gpsd::SetAssistanceSpeedConstraint *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
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

uint64_t proto::gpsd::SetAssistanceSpeedConstraint::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
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

uint64_t proto::gpsd::SetAssistanceSpeedConstraint::ByteSize(proto::gpsd::SetAssistanceSpeedConstraint *this, unint64_t a2)
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

double proto::gpsd::SetAssistanceSpeedConstraint::CheckTypeAndMergeFrom(proto::gpsd::SetAssistanceSpeedConstraint *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  return proto::gpsd::SetAssistanceSpeedConstraint::MergeFrom(this, lpsrc);
}

double proto::gpsd::SetAssistanceSpeedConstraint::CopyFrom(proto::gpsd::SetAssistanceSpeedConstraint *this, const proto::gpsd::SetAssistanceSpeedConstraint *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    return proto::gpsd::SetAssistanceSpeedConstraint::MergeFrom(this, a2);
  }

  return result;
}

double proto::gpsd::SetAssistanceSpeedConstraint::Swap(proto::gpsd::SetAssistanceSpeedConstraint *this, proto::gpsd::SetAssistanceSpeedConstraint *a2)
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

double proto::gpsd::SetAssistanceAlongTrackVelocity::SharedCtor(proto::gpsd::SetAssistanceAlongTrackVelocity *this)
{
  result = 0.0;
  *(this + 24) = 0u;
  *(this + 8) = 0u;
  return result;
}

proto::gpsd::SetAssistanceAlongTrackVelocity *proto::gpsd::SetAssistanceAlongTrackVelocity::SetAssistanceAlongTrackVelocity(proto::gpsd::SetAssistanceAlongTrackVelocity *this, const proto::gpsd::SetAssistanceAlongTrackVelocity *a2)
{
  *this = &unk_285862AD8;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  proto::gpsd::SetAssistanceAlongTrackVelocity::MergeFrom(this, a2);
  return this;
}

void proto::gpsd::SetAssistanceAlongTrackVelocity::~SetAssistanceAlongTrackVelocity(proto::gpsd::SetAssistanceAlongTrackVelocity *this)
{
  *this = &unk_285862AD8;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_285862AD8;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_285862AD8;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  JUMPOUT(0x245D6AEE0);
}

uint64_t proto::gpsd::SetAssistanceAlongTrackVelocity::MergePartialFromCodedStream(proto::gpsd::SetAssistanceAlongTrackVelocity *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
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

uint64_t proto::gpsd::SetAssistanceAlongTrackVelocity::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
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

uint64_t proto::gpsd::SetAssistanceAlongTrackVelocity::ByteSize(proto::gpsd::SetAssistanceAlongTrackVelocity *this, unint64_t a2)
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

double proto::gpsd::SetAssistanceAlongTrackVelocity::CheckTypeAndMergeFrom(proto::gpsd::SetAssistanceAlongTrackVelocity *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  return proto::gpsd::SetAssistanceAlongTrackVelocity::MergeFrom(this, lpsrc);
}

double proto::gpsd::SetAssistanceAlongTrackVelocity::CopyFrom(proto::gpsd::SetAssistanceAlongTrackVelocity *this, const proto::gpsd::SetAssistanceAlongTrackVelocity *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    return proto::gpsd::SetAssistanceAlongTrackVelocity::MergeFrom(this, a2);
  }

  return result;
}

double proto::gpsd::SetAssistanceAlongTrackVelocity::Swap(proto::gpsd::SetAssistanceAlongTrackVelocity *this, proto::gpsd::SetAssistanceAlongTrackVelocity *a2)
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

uint64_t proto::gpsd::SetThermalRiskState::SharedCtor(uint64_t this)
{
  *(this + 8) = 0;
  *(this + 16) = 0;
  *(this + 24) = 0;
  return this;
}

proto::gpsd::SetThermalRiskState *proto::gpsd::SetThermalRiskState::SetThermalRiskState(proto::gpsd::SetThermalRiskState *this, const proto::gpsd::SetThermalRiskState *a2)
{
  *(this + 1) = 0;
  *(this + 2) = 0;
  *this = &unk_285862B50;
  *(this + 6) = 0;
  proto::gpsd::SetThermalRiskState::MergeFrom(this, a2);
  return this;
}

void proto::gpsd::SetThermalRiskState::~SetThermalRiskState(proto::gpsd::SetThermalRiskState *this)
{
  *this = &unk_285862B50;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_285862B50;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_285862B50;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  JUMPOUT(0x245D6AEE0);
}

uint64_t proto::gpsd::SetThermalRiskState::MergePartialFromCodedStream(proto::gpsd::SetThermalRiskState *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
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
        if (v11 >= v7 || (v12 = *v11, v12 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 4);
          if (!result)
          {
            return result;
          }

          v13 = *(a2 + 1);
          v7 = *(a2 + 2);
        }

        else
        {
          *(this + 4) = v12;
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

uint64_t proto::gpsd::SetThermalRiskState::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
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

    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(2, v7, a2, a4);
  }

  return this;
}

uint64_t proto::gpsd::SetThermalRiskState::ByteSize(wireless_diagnostics::google::protobuf::io::CodedOutputStream **this, unint64_t a2)
{
  if (*(this + 24))
  {
    if (this[3])
    {
      v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(this[1]) + 1;
      if ((this[3] & 2) == 0)
      {
        goto LABEL_11;
      }
    }

    else
    {
      v3 = 0;
      if ((this[3] & 2) == 0)
      {
        goto LABEL_11;
      }
    }

    v4 = *(this + 4);
    if (v4 >= 0x80)
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

LABEL_11:
  *(this + 5) = v3;
  return v3;
}

void proto::gpsd::SetThermalRiskState::CheckTypeAndMergeFrom(proto::gpsd::SetThermalRiskState *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  proto::gpsd::SetThermalRiskState::MergeFrom(this, lpsrc);
}

void proto::gpsd::SetThermalRiskState::CopyFrom(proto::gpsd::SetThermalRiskState *this, const proto::gpsd::SetThermalRiskState *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    proto::gpsd::SetThermalRiskState::MergeFrom(this, a2);
  }
}

uint64_t proto::gpsd::SetThermalRiskState::Swap(uint64_t this, proto::gpsd::SetThermalRiskState *a2)
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

uint64_t proto::gpsd::SetConfigSimulatorMode::SharedCtor(uint64_t this)
{
  *(this + 8) = 0;
  *(this + 12) = 0;
  *(this + 20) = 0;
  return this;
}

proto::gpsd::SetConfigSimulatorMode *proto::gpsd::SetConfigSimulatorMode::SetConfigSimulatorMode(proto::gpsd::SetConfigSimulatorMode *this, const proto::gpsd::SetConfigSimulatorMode *a2)
{
  *this = &unk_285862BC8;
  *(this + 8) = 0;
  *(this + 12) = 0;
  *(this + 5) = 0;
  proto::gpsd::SetConfigSimulatorMode::MergeFrom(this, a2);
  return this;
}

void proto::gpsd::SetConfigSimulatorMode::~SetConfigSimulatorMode(proto::gpsd::SetConfigSimulatorMode *this)
{
  *this = &unk_285862BC8;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_285862BC8;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_285862BC8;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  JUMPOUT(0x245D6AEE0);
}

uint64_t proto::gpsd::SetConfigSimulatorMode::MergePartialFromCodedStream(proto::gpsd::SetConfigSimulatorMode *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
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

      *(this + 8) = v9 != 0;
      *(this + 5) |= 1u;
      if (v10 < v7 && *v10 == 16)
      {
        v11 = v10 + 1;
        *(a2 + 1) = v11;
LABEL_22:
        v16 = 0;
        if (v11 >= v7 || (v12 = *v11, (v12 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v16);
          if (!result)
          {
            return result;
          }

          v12 = v16;
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

uint64_t proto::gpsd::SetConfigSimulatorMode::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 20);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(1, *(this + 8), a2, a4);
    v6 = *(v5 + 20);
  }

  if ((v6 & 2) != 0)
  {
    v7 = *(v5 + 12);

    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(2, v7, a2, a4);
  }

  return this;
}

uint64_t proto::gpsd::SetConfigSimulatorMode::ByteSize(proto::gpsd::SetConfigSimulatorMode *this, unsigned int a2)
{
  v3 = *(this + 5);
  if (v3)
  {
    v4 = 2 * (v3 & 1u);
    if ((v3 & 2) != 0)
    {
      v5 = *(this + 3);
      if ((v5 & 0x80000000) != 0)
      {
        v6 = 11;
      }

      else if (v5 >= 0x80)
      {
        v6 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5) + 1;
      }

      else
      {
        v6 = 2;
      }

      v4 = (v6 + v4);
    }
  }

  else
  {
    v4 = 0;
  }

  *(this + 4) = v4;
  return v4;
}

void proto::gpsd::SetConfigSimulatorMode::CheckTypeAndMergeFrom(proto::gpsd::SetConfigSimulatorMode *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  proto::gpsd::SetConfigSimulatorMode::MergeFrom(this, lpsrc);
}

void proto::gpsd::SetConfigSimulatorMode::CopyFrom(proto::gpsd::SetConfigSimulatorMode *this, const proto::gpsd::SetConfigSimulatorMode *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    proto::gpsd::SetConfigSimulatorMode::MergeFrom(this, a2);
  }
}

uint64_t proto::gpsd::SetConfigSimulatorMode::Swap(uint64_t this, proto::gpsd::SetConfigSimulatorMode *a2)
{
  if (a2 != this)
  {
    v2 = *(this + 8);
    *(this + 8) = *(a2 + 8);
    *(a2 + 8) = v2;
    v3 = *(this + 12);
    *(this + 12) = *(a2 + 3);
    *(a2 + 3) = v3;
    v4 = *(this + 20);
    *(this + 20) = *(a2 + 5);
    *(a2 + 5) = v4;
    v5 = *(this + 16);
    *(this + 16) = *(a2 + 4);
    *(a2 + 4) = v5;
  }

  return this;
}

uint64_t proto::gpsd::SetConfigEnableGnssConstellations::SharedCtor(uint64_t this)
{
  *(this + 8) = 0;
  *(this + 16) = 0;
  return this;
}

proto::gpsd::SetConfigEnableGnssConstellations *proto::gpsd::SetConfigEnableGnssConstellations::SetConfigEnableGnssConstellations(proto::gpsd::SetConfigEnableGnssConstellations *this, const proto::gpsd::SetConfigEnableGnssConstellations *a2)
{
  *(this + 1) = 0;
  *(this + 2) = 0;
  *this = &unk_285862C40;
  proto::gpsd::SetConfigEnableGnssConstellations::MergeFrom(this, a2);
  return this;
}

void proto::gpsd::SetConfigEnableGnssConstellations::~SetConfigEnableGnssConstellations(proto::gpsd::SetConfigEnableGnssConstellations *this)
{
  *this = &unk_285862C40;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_285862C40;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_285862C40;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  JUMPOUT(0x245D6AEE0);
}

uint64_t proto::gpsd::SetConfigEnableGnssConstellations::MergePartialFromCodedStream(proto::gpsd::SetConfigEnableGnssConstellations *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
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

uint64_t proto::gpsd::SetConfigEnableGnssConstellations::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
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

uint64_t proto::gpsd::SetConfigEnableGnssConstellations::ByteSize(proto::gpsd::SetConfigEnableGnssConstellations *this, unsigned int a2)
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

void proto::gpsd::SetConfigEnableGnssConstellations::CheckTypeAndMergeFrom(proto::gpsd::SetConfigEnableGnssConstellations *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  proto::gpsd::SetConfigEnableGnssConstellations::MergeFrom(this, lpsrc);
}

void proto::gpsd::SetConfigEnableGnssConstellations::CopyFrom(proto::gpsd::SetConfigEnableGnssConstellations *this, const proto::gpsd::SetConfigEnableGnssConstellations *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    proto::gpsd::SetConfigEnableGnssConstellations::MergeFrom(this, a2);
  }
}

proto::gpsd::SetConfigEnableGnssConstellations *proto::gpsd::SetConfigEnableGnssConstellations::Swap(proto::gpsd::SetConfigEnableGnssConstellations *this, proto::gpsd::SetConfigEnableGnssConstellations *a2)
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

uint64_t proto::gpsd::SetConfigRfBandEnable::SharedCtor(uint64_t this)
{
  *(this + 12) = 0;
  *(this + 8) = 0;
  return this;
}

proto::gpsd::SetConfigRfBandEnable *proto::gpsd::SetConfigRfBandEnable::SetConfigRfBandEnable(proto::gpsd::SetConfigRfBandEnable *this, const proto::gpsd::SetConfigRfBandEnable *a2)
{
  *this = &unk_285862CB8;
  *(this + 12) = 0;
  *(this + 4) = 0;
  proto::gpsd::SetConfigRfBandEnable::MergeFrom(this, a2);
  return this;
}

void proto::gpsd::SetConfigRfBandEnable::~SetConfigRfBandEnable(proto::gpsd::SetConfigRfBandEnable *this)
{
  *this = &unk_285862CB8;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_285862CB8;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_285862CB8;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  JUMPOUT(0x245D6AEE0);
}

uint64_t proto::gpsd::SetConfigRfBandEnable::MergePartialFromCodedStream(proto::gpsd::SetConfigRfBandEnable *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
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

      *(this + 8) = v9 != 0;
      *(this + 4) |= 1u;
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

        *(this + 9) = v12 != 0;
        *(this + 4) |= 2u;
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

uint64_t proto::gpsd::SetConfigRfBandEnable::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 16);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(1, *(this + 8), a2, a4);
    v6 = *(v5 + 16);
  }

  if ((v6 & 2) != 0)
  {
    v7 = *(v5 + 9);

    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(2, v7, a2, a4);
  }

  return this;
}

uint64_t proto::gpsd::SetConfigRfBandEnable::ByteSize(proto::gpsd::SetConfigRfBandEnable *this)
{
  if (*(this + 4))
  {
    v1 = 2 * (*(this + 4) & 1) + (*(this + 4) & 2u);
  }

  else
  {
    v1 = 0;
  }

  *(this + 3) = v1;
  return v1;
}

void proto::gpsd::SetConfigRfBandEnable::CheckTypeAndMergeFrom(proto::gpsd::SetConfigRfBandEnable *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  proto::gpsd::SetConfigRfBandEnable::MergeFrom(this, lpsrc);
}

void proto::gpsd::SetConfigRfBandEnable::CopyFrom(proto::gpsd::SetConfigRfBandEnable *this, const proto::gpsd::SetConfigRfBandEnable *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    proto::gpsd::SetConfigRfBandEnable::MergeFrom(this, a2);
  }
}

uint64_t proto::gpsd::SetConfigRfBandEnable::Swap(uint64_t this, proto::gpsd::SetConfigRfBandEnable *a2)
{
  if (a2 != this)
  {
    v2 = *(this + 8);
    *(this + 8) = *(a2 + 8);
    *(a2 + 8) = v2;
    v3 = *(this + 9);
    *(this + 9) = *(a2 + 9);
    *(a2 + 9) = v3;
    v4 = *(this + 16);
    *(this + 16) = *(a2 + 4);
    *(a2 + 4) = v4;
    v5 = *(this + 12);
    *(this + 12) = *(a2 + 3);
    *(a2 + 3) = v5;
  }

  return this;
}

uint64_t proto::gpsd::SetConfigDutyCycling::SharedCtor(uint64_t this)
{
  *(this + 12) = 0;
  *(this + 8) = 0;
  return this;
}

proto::gpsd::SetConfigDutyCycling *proto::gpsd::SetConfigDutyCycling::SetConfigDutyCycling(proto::gpsd::SetConfigDutyCycling *this, const proto::gpsd::SetConfigDutyCycling *a2)
{
  *this = &unk_285862D30;
  *(this + 12) = 0;
  *(this + 8) = 0;
  proto::gpsd::SetConfigDutyCycling::MergeFrom(this, a2);
  return this;
}

void proto::gpsd::SetConfigDutyCycling::~SetConfigDutyCycling(proto::gpsd::SetConfigDutyCycling *this)
{
  *this = &unk_285862D30;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_285862D30;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_285862D30;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  JUMPOUT(0x245D6AEE0);
}

uint64_t proto::gpsd::SetConfigDutyCycling::MergePartialFromCodedStream(proto::gpsd::SetConfigDutyCycling *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
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
      }

      else
      {
        *(a2 + 8) = TagFallback;
        *(a2 + 1) = v5 + 1;
      }

      if (TagFallback != 8)
      {
        break;
      }

      v12 = 0;
      v8 = *(a2 + 1);
      v7 = *(a2 + 2);
      if (v8 >= v7 || (v9 = *v8, (v9 & 0x80000000) != 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v12);
        if (!result)
        {
          return result;
        }

        v9 = v12;
        v10 = *(a2 + 1);
        v7 = *(a2 + 2);
      }

      else
      {
        v10 = v8 + 1;
        *(a2 + 1) = v10;
      }

      *(this + 8) = v9 != 0;
      *(this + 4) |= 1u;
      if (v10 == v7 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
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

uint64_t proto::gpsd::SetConfigDutyCycling::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  if (*(this + 16))
  {
    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(1, *(this + 8), a2, a4);
  }

  return this;
}

uint64_t proto::gpsd::SetConfigDutyCycling::ByteSize(proto::gpsd::SetConfigDutyCycling *this)
{
  if (*(this + 4))
  {
    v1 = 2 * (*(this + 4) & 1u);
  }

  else
  {
    v1 = 0;
  }

  *(this + 3) = v1;
  return v1;
}

void proto::gpsd::SetConfigDutyCycling::CheckTypeAndMergeFrom(proto::gpsd::SetConfigDutyCycling *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  proto::gpsd::SetConfigDutyCycling::MergeFrom(this, lpsrc);
}

void proto::gpsd::SetConfigDutyCycling::CopyFrom(proto::gpsd::SetConfigDutyCycling *this, const proto::gpsd::SetConfigDutyCycling *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    proto::gpsd::SetConfigDutyCycling::MergeFrom(this, a2);
  }
}

uint64_t proto::gpsd::SetConfigDutyCycling::Swap(uint64_t this, proto::gpsd::SetConfigDutyCycling *a2)
{
  if (a2 != this)
  {
    v2 = *(this + 8);
    *(this + 8) = *(a2 + 8);
    *(a2 + 8) = v2;
    v3 = *(this + 16);
    *(this + 16) = *(a2 + 4);
    *(a2 + 4) = v3;
    v4 = *(this + 12);
    *(this + 12) = *(a2 + 3);
    *(a2 + 3) = v4;
  }

  return this;
}

uint64_t proto::gpsd::TerminationImminent::SharedCtor(uint64_t this)
{
  *(this + 8) = MEMORY[0x277D82C30];
  *(this + 16) = 0;
  return this;
}

proto::gpsd::TerminationImminent *proto::gpsd::TerminationImminent::TerminationImminent(proto::gpsd::TerminationImminent *this, const proto::gpsd::TerminationImminent *a2)
{
  v3 = MEMORY[0x277D82C30];
  *this = &unk_285862DA8;
  *(this + 1) = v3;
  *(this + 2) = 0;
  proto::gpsd::TerminationImminent::MergeFrom(this, a2);
  return this;
}

void proto::gpsd::TerminationImminent::~TerminationImminent(proto::gpsd::TerminationImminent *this)
{
  *this = &unk_285862DA8;
  proto::gpsd::TerminationImminent::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_285862DA8;
  proto::gpsd::TerminationImminent::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_285862DA8;
  proto::gpsd::TerminationImminent::SharedDtor(this);
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  JUMPOUT(0x245D6AEE0);
}

uint64_t proto::gpsd::TerminationImminent::SharedDtor(uint64_t this)
{
  v1 = *(this + 8);
  if (v1 != MEMORY[0x277D82C30] && v1 != 0)
  {
    if (*(v1 + 23) < 0)
    {
      operator delete(*v1);
    }

    JUMPOUT(0x245D6AEE0);
  }

  return this;
}

uint64_t proto::gpsd::TerminationImminent::MergePartialFromCodedStream(proto::gpsd::TerminationImminent *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
{
  v5 = MEMORY[0x277D82C30];
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

uint64_t proto::gpsd::TerminationImminent::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2)
{
  if (*(this + 20))
  {
    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
  }

  return this;
}

uint64_t proto::gpsd::TerminationImminent::ByteSize(proto::gpsd::TerminationImminent *this, unsigned int a2)
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

void proto::gpsd::TerminationImminent::CheckTypeAndMergeFrom(proto::gpsd::TerminationImminent *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  proto::gpsd::TerminationImminent::MergeFrom(this, lpsrc);
}

void proto::gpsd::TerminationImminent::CopyFrom(proto::gpsd::TerminationImminent *this, const proto::gpsd::TerminationImminent *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    proto::gpsd::TerminationImminent::MergeFrom(this, a2);
  }
}

uint64_t proto::gpsd::TerminationImminent::Swap(uint64_t this, proto::gpsd::TerminationImminent *a2)
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

uint64_t proto::gpsd::ExitMessage::SharedCtor(uint64_t this)
{
  *(this + 8) = MEMORY[0x277D82C30];
  *(this + 16) = 0;
  return this;
}

proto::gpsd::ExitMessage *proto::gpsd::ExitMessage::ExitMessage(proto::gpsd::ExitMessage *this, const proto::gpsd::ExitMessage *a2)
{
  v3 = MEMORY[0x277D82C30];
  *this = &unk_285862E20;
  *(this + 1) = v3;
  *(this + 2) = 0;
  proto::gpsd::ExitMessage::MergeFrom(this, a2);
  return this;
}

void proto::gpsd::ExitMessage::~ExitMessage(proto::gpsd::ExitMessage *this)
{
  *this = &unk_285862E20;
  proto::gpsd::ExitMessage::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_285862E20;
  proto::gpsd::ExitMessage::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_285862E20;
  proto::gpsd::ExitMessage::SharedDtor(this);
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  JUMPOUT(0x245D6AEE0);
}

uint64_t proto::gpsd::ExitMessage::SharedDtor(uint64_t this)
{
  v1 = *(this + 8);
  if (v1 != MEMORY[0x277D82C30] && v1 != 0)
  {
    if (*(v1 + 23) < 0)
    {
      operator delete(*v1);
    }

    JUMPOUT(0x245D6AEE0);
  }

  return this;
}

uint64_t proto::gpsd::ExitMessage::MergePartialFromCodedStream(proto::gpsd::ExitMessage *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
{
  v5 = MEMORY[0x277D82C30];
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

uint64_t proto::gpsd::ExitMessage::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2)
{
  if (*(this + 20))
  {
    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
  }

  return this;
}

uint64_t proto::gpsd::ExitMessage::ByteSize(proto::gpsd::ExitMessage *this, unsigned int a2)
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

void proto::gpsd::ExitMessage::CheckTypeAndMergeFrom(proto::gpsd::ExitMessage *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  proto::gpsd::ExitMessage::MergeFrom(this, lpsrc);
}

void proto::gpsd::ExitMessage::CopyFrom(proto::gpsd::ExitMessage *this, const proto::gpsd::ExitMessage *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    proto::gpsd::ExitMessage::MergeFrom(this, a2);
  }
}

uint64_t proto::gpsd::ExitMessage::Swap(uint64_t this, proto::gpsd::ExitMessage *a2)
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

uint64_t proto::gpsd::RecoveryStatistics_RecoveryStatus::SharedCtor(uint64_t this)
{
  *(this + 16) = 0;
  *(this + 8) = 0;
  *(this + 11) = 0;
  return this;
}

proto::gpsd::RecoveryStatistics_RecoveryStatus *proto::gpsd::RecoveryStatistics_RecoveryStatus::RecoveryStatistics_RecoveryStatus(proto::gpsd::RecoveryStatistics_RecoveryStatus *this, const proto::gpsd::RecoveryStatistics_RecoveryStatus *a2)
{
  *this = &unk_285862E98;
  *(this + 2) = 0;
  *(this + 2) = 0;
  *(this + 11) = 0;
  proto::gpsd::RecoveryStatistics_RecoveryStatus::MergeFrom(this, a2);
  return this;
}

void proto::gpsd::RecoveryStatistics_RecoveryStatus::MergeFrom(proto::gpsd::RecoveryStatistics_RecoveryStatus *this, const proto::gpsd::RecoveryStatistics_RecoveryStatus *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v9);
  }

  LOBYTE(v4) = *(a2 + 20);
  if (v4)
  {
    if (*(a2 + 20))
    {
      v6 = *(a2 + 12);
      *(this + 5) |= 1u;
      *(this + 12) = v6;
      v4 = *(a2 + 5);
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

    else if ((*(a2 + 20) & 2) == 0)
    {
      goto LABEL_6;
    }

    v7 = *(a2 + 2);
    *(this + 5) |= 2u;
    *(this + 2) = v7;
    v4 = *(a2 + 5);
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
    v8 = *(a2 + 13);
    *(this + 5) |= 4u;
    *(this + 13) = v8;
    if ((*(a2 + 5) & 8) == 0)
    {
      return;
    }

LABEL_8:
    v5 = *(a2 + 14);
    *(this + 5) |= 8u;
    *(this + 14) = v5;
  }
}

void sub_24555EA54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void proto::gpsd::RecoveryStatistics_RecoveryStatus::~RecoveryStatistics_RecoveryStatus(proto::gpsd::RecoveryStatistics_RecoveryStatus *this)
{
  *this = &unk_285862E98;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_285862E98;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_285862E98;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  JUMPOUT(0x245D6AEE0);
}

uint64_t proto::gpsd::RecoveryStatistics_RecoveryStatus::default_instance(proto::gpsd::RecoveryStatistics_RecoveryStatus *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = proto::gpsd::RecoveryStatistics_RecoveryStatus::default_instance_;
  if (!proto::gpsd::RecoveryStatistics_RecoveryStatus::default_instance_)
  {
    proto::gpsd::protobuf_AddDesc_GpsdProtocol_2eproto(0, a2, a3, a4);
    return proto::gpsd::RecoveryStatistics_RecoveryStatus::default_instance_;
  }

  return result;
}

uint64_t proto::gpsd::RecoveryStatistics_RecoveryStatus::Clear(uint64_t this)
{
  if (*(this + 20))
  {
    *(this + 11) = 0;
    *(this + 8) = 0;
  }

  *(this + 20) = 0;
  return this;
}

uint64_t proto::gpsd::RecoveryStatistics_RecoveryStatus::MergePartialFromCodedStream(proto::gpsd::RecoveryStatistics_RecoveryStatus *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
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

      *(this + 12) = v12 != 0;
      *(this + 5) |= 1u;
      if (v13 < v8 && *v13 == 16)
      {
        v9 = v13 + 1;
        *(a2 + 1) = v9;
LABEL_29:
        v22 = 0;
        if (v9 >= v8 || (v15 = *v9, (v15 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v22);
          if (!result)
          {
            return result;
          }

          v15 = v22;
          v16 = *(a2 + 1);
          v8 = *(a2 + 2);
        }

        else
        {
          v16 = v9 + 1;
          *(a2 + 1) = v16;
        }

        *(this + 2) = v15;
        *(this + 5) |= 2u;
        if (v16 < v8 && *v16 == 24)
        {
          v14 = v16 + 1;
          *(a2 + 1) = v14;
LABEL_37:
          v22 = 0;
          if (v14 >= v8 || (v17 = *v14, (v17 & 0x80000000) != 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v22);
            if (!result)
            {
              return result;
            }

            v17 = v22;
            v18 = *(a2 + 1);
            v8 = *(a2 + 2);
          }

          else
          {
            v18 = v14 + 1;
            *(a2 + 1) = v18;
          }

          *(this + 13) = v17 != 0;
          *(this + 5) |= 4u;
          if (v18 < v8 && *v18 == 32)
          {
            v10 = v18 + 1;
            *(a2 + 1) = v10;
LABEL_45:
            v22 = 0;
            if (v10 >= v8 || (v19 = *v10, (v19 & 0x80000000) != 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v22);
              if (!result)
              {
                return result;
              }

              v19 = v22;
              v20 = *(a2 + 1);
              v8 = *(a2 + 2);
            }

            else
            {
              v20 = v10 + 1;
              *(a2 + 1) = v20;
            }

            *(this + 14) = v19 != 0;
            *(this + 5) |= 8u;
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

uint64_t proto::gpsd::RecoveryStatistics_RecoveryStatus::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 20);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(1, *(this + 12), a2, a4);
    v6 = *(v5 + 20);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

LABEL_8:
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(3, *(v5 + 13), a2, a4);
      if ((*(v5 + 20) & 8) == 0)
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

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(2, *(v5 + 8), a2, a4);
  v6 = *(v5 + 20);
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
  v7 = *(v5 + 14);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(4, v7, a2, a4);
}

uint64_t proto::gpsd::RecoveryStatistics_RecoveryStatus::ByteSize(proto::gpsd::RecoveryStatistics_RecoveryStatus *this, unsigned int a2)
{
  v3 = *(this + 5);
  if (v3)
  {
    v4 = 2 * (v3 & 1);
    if ((v3 & 2) != 0)
    {
      v5 = *(this + 2);
      if ((v5 & 0x80000000) != 0)
      {
        v6 = 11;
      }

      else if (v5 >= 0x80)
      {
        v6 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5) + 1;
        v3 = *(this + 5);
      }

      else
      {
        v6 = 2;
      }

      v4 += v6;
    }

    result = ((v3 >> 1) & 2) + v4 + ((v3 >> 2) & 2);
  }

  else
  {
    result = 0;
  }

  *(this + 4) = result;
  return result;
}

void proto::gpsd::RecoveryStatistics_RecoveryStatus::CheckTypeAndMergeFrom(proto::gpsd::RecoveryStatistics_RecoveryStatus *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  proto::gpsd::RecoveryStatistics_RecoveryStatus::MergeFrom(this, lpsrc);
}

void proto::gpsd::RecoveryStatistics_RecoveryStatus::CopyFrom(proto::gpsd::RecoveryStatistics_RecoveryStatus *this, const proto::gpsd::RecoveryStatistics_RecoveryStatus *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    proto::gpsd::RecoveryStatistics_RecoveryStatus::MergeFrom(this, a2);
  }
}

uint64_t proto::gpsd::RecoveryStatistics_RecoveryStatus::Swap(uint64_t this, proto::gpsd::RecoveryStatistics_RecoveryStatus *a2)
{
  if (a2 != this)
  {
    v2 = *(this + 12);
    *(this + 12) = *(a2 + 12);
    *(a2 + 12) = v2;
    v3 = *(this + 8);
    *(this + 8) = *(a2 + 2);
    *(a2 + 2) = v3;
    LOBYTE(v3) = *(this + 13);
    *(this + 13) = *(a2 + 13);
    *(a2 + 13) = v3;
    LOBYTE(v3) = *(this + 14);
    *(this + 14) = *(a2 + 14);
    *(a2 + 14) = v3;
    v4 = *(this + 20);
    *(this + 20) = *(a2 + 5);
    *(a2 + 5) = v4;
    v5 = *(this + 16);
    *(this + 16) = *(a2 + 4);
    *(a2 + 4) = v5;
  }

  return this;
}

uint64_t proto::gpsd::RecoveryStatistics_RecoveryPoint::SharedCtor(uint64_t this)
{
  v1 = MEMORY[0x277D82C30];
  *(this + 16) = MEMORY[0x277D82C30];
  *(this + 24) = 0;
  *(this + 8) = v1;
  *(this + 32) = 0;
  return this;
}

proto::gpsd::RecoveryStatistics_RecoveryPoint *proto::gpsd::RecoveryStatistics_RecoveryPoint::RecoveryStatistics_RecoveryPoint(proto::gpsd::RecoveryStatistics_RecoveryPoint *this, const proto::gpsd::RecoveryStatistics_RecoveryPoint *a2)
{
  v3 = MEMORY[0x277D82C30];
  *this = &unk_285862F10;
  *(this + 1) = v3;
  *(this + 2) = v3;
  *(this + 3) = 0;
  *(this + 8) = 0;
  proto::gpsd::RecoveryStatistics_RecoveryPoint::MergeFrom(this, a2);
  return this;
}

void proto::gpsd::RecoveryStatistics_RecoveryPoint::MergeFrom(proto::gpsd::RecoveryStatistics_RecoveryPoint *this, const proto::gpsd::RecoveryStatistics_RecoveryPoint *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v11);
  }

  LOBYTE(v4) = *(a2 + 32);
  if (v4)
  {
    v5 = MEMORY[0x277D82C30];
    if (*(a2 + 32))
    {
      v6 = *(a2 + 1);
      *(this + 8) |= 1u;
      v7 = *(this + 1);
      if (v7 == v5)
      {
        operator new();
      }

      std::string::operator=(v7, v6);
      v4 = *(a2 + 8);
      if ((v4 & 2) == 0)
      {
LABEL_6:
        if ((v4 & 4) == 0)
        {
          return;
        }

        goto LABEL_12;
      }
    }

    else if ((*(a2 + 32) & 2) == 0)
    {
      goto LABEL_6;
    }

    v8 = *(a2 + 6);
    *(this + 8) |= 2u;
    *(this + 6) = v8;
    if ((*(a2 + 8) & 4) == 0)
    {
      return;
    }

LABEL_12:
    v9 = *(a2 + 2);
    *(this + 8) |= 4u;
    v10 = *(this + 2);
    if (v10 == v5)
    {
      operator new();
    }

    std::string::operator=(v10, v9);
  }
}

void sub_24555F310(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void proto::gpsd::RecoveryStatistics_RecoveryPoint::~RecoveryStatistics_RecoveryPoint(proto::gpsd::RecoveryStatistics_RecoveryPoint *this)
{
  *this = &unk_285862F10;
  proto::gpsd::RecoveryStatistics_RecoveryPoint::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_285862F10;
  proto::gpsd::RecoveryStatistics_RecoveryPoint::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_285862F10;
  proto::gpsd::RecoveryStatistics_RecoveryPoint::SharedDtor(this);
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  JUMPOUT(0x245D6AEE0);
}

uint64_t proto::gpsd::RecoveryStatistics_RecoveryPoint::SharedDtor(uint64_t this)
{
  v1 = this;
  v2 = *(this + 8);
  v3 = MEMORY[0x277D82C30];
  if (v2 != MEMORY[0x277D82C30] && v2 != 0)
  {
    if (*(v2 + 23) < 0)
    {
      operator delete(*v2);
    }

    this = MEMORY[0x245D6AEE0](v2, 0x1012C40EC159624);
  }

  v5 = *(v1 + 16);
  if (v5 != v3 && v5 != 0)
  {
    if (*(v5 + 23) < 0)
    {
      operator delete(*v5);
    }

    JUMPOUT(0x245D6AEE0);
  }

  return this;
}

uint64_t proto::gpsd::RecoveryStatistics_RecoveryPoint::default_instance(proto::gpsd::RecoveryStatistics_RecoveryPoint *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = proto::gpsd::RecoveryStatistics_RecoveryPoint::default_instance_;
  if (!proto::gpsd::RecoveryStatistics_RecoveryPoint::default_instance_)
  {
    proto::gpsd::protobuf_AddDesc_GpsdProtocol_2eproto(0, a2, a3, a4);
    return proto::gpsd::RecoveryStatistics_RecoveryPoint::default_instance_;
  }

  return result;
}

uint64_t proto::gpsd::RecoveryStatistics_RecoveryPoint::Clear(uint64_t this)
{
  if (*(this + 32))
  {
    v1 = MEMORY[0x277D82C30];
    if (*(this + 32))
    {
      v2 = *(this + 8);
      if (v2 != MEMORY[0x277D82C30])
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
    if ((*(this + 32) & 4) != 0)
    {
      v3 = *(this + 16);
      if (v3 != v1)
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
  }

  *(this + 32) = 0;
  return this;
}

uint64_t proto::gpsd::RecoveryStatistics_RecoveryPoint::MergePartialFromCodedStream(proto::gpsd::RecoveryStatistics_RecoveryPoint *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
{
  v5 = MEMORY[0x277D82C30];
  while (1)
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
          if (TagFallback >> 3 != 3)
          {
            break;
          }

          if (v9 != 2)
          {
            goto LABEL_23;
          }

          v16 = *(this + 8);
LABEL_32:
          *(this + 8) = v16 | 4;
          if (*(this + 2) == v5)
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

        if (v8 != 2)
        {
          break;
        }

        if ((TagFallback & 7) != 0)
        {
          goto LABEL_23;
        }

        v13 = *(a2 + 1);
        v11 = *(a2 + 2);
LABEL_19:
        v17 = 0;
        if (v13 >= v11 || (v14 = *v13, (v14 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v17);
          if (!result)
          {
            return result;
          }

          v14 = v17;
          v15 = *(a2 + 1);
          v11 = *(a2 + 2);
        }

        else
        {
          v15 = v13 + 1;
          *(a2 + 1) = v15;
        }

        *(this + 6) = v14;
        v16 = *(this + 8) | 2;
        *(this + 8) = v16;
        if (v15 < v11 && *v15 == 26)
        {
          *(a2 + 1) = v15 + 1;
          goto LABEL_32;
        }
      }

      if (v8 != 1 || v9 != 2)
      {
        break;
      }

      *(this + 8) |= 1u;
      if (*(this + 1) == v5)
      {
        operator new();
      }

      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
      if (!result)
      {
        return result;
      }

      v12 = *(a2 + 1);
      v11 = *(a2 + 2);
      if (v12 < v11 && *v12 == 16)
      {
        v13 = v12 + 1;
        *(a2 + 1) = v13;
        goto LABEL_19;
      }
    }

LABEL_23:
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

uint64_t proto::gpsd::RecoveryStatistics_RecoveryPoint::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 32);
  if ((v6 & 1) == 0)
  {
    if ((v6 & 2) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(2, *(v5 + 24), a2, a4);
    if ((*(v5 + 32) & 4) == 0)
    {
      return this;
    }

    goto LABEL_7;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
  v6 = *(v5 + 32);
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

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
}

uint64_t proto::gpsd::RecoveryStatistics_RecoveryPoint::ByteSize(proto::gpsd::RecoveryStatistics_RecoveryPoint *this, unsigned int a2)
{
  LOBYTE(v3) = *(this + 32);
  if (!v3)
  {
    v4 = 0;
    goto LABEL_31;
  }

  if (*(this + 32))
  {
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
      v3 = *(this + 8);
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
    if ((v3 & 2) == 0)
    {
      goto LABEL_21;
    }
  }

  else
  {
    v4 = 0;
    if ((*(this + 32) & 2) == 0)
    {
      goto LABEL_21;
    }
  }

  v12 = *(this + 6);
  if ((v12 & 0x80000000) != 0)
  {
    v13 = 11;
  }

  else if (v12 >= 0x80)
  {
    v13 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v12) + 1;
    v3 = *(this + 8);
  }

  else
  {
    v13 = 2;
  }

  v4 = (v13 + v4);
LABEL_21:
  if ((v3 & 4) != 0)
  {
    v14 = *(this + 2);
    v15 = *(v14 + 23);
    v16 = v15;
    v17 = *(v14 + 8);
    if ((v15 & 0x80u) == 0)
    {
      v18 = *(v14 + 23);
    }

    else
    {
      v18 = v17;
    }

    if (v18 >= 0x80)
    {
      v19 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v18);
      v15 = *(v14 + 23);
      v17 = *(v14 + 8);
      v16 = *(v14 + 23);
    }

    else
    {
      v19 = 1;
    }

    if (v16 < 0)
    {
      v15 = v17;
    }

    v4 = (v4 + v19 + v15 + 1);
  }

LABEL_31:
  *(this + 7) = v4;
  return v4;
}

void proto::gpsd::RecoveryStatistics_RecoveryPoint::CheckTypeAndMergeFrom(proto::gpsd::RecoveryStatistics_RecoveryPoint *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  proto::gpsd::RecoveryStatistics_RecoveryPoint::MergeFrom(this, lpsrc);
}

void proto::gpsd::RecoveryStatistics_RecoveryPoint::CopyFrom(proto::gpsd::RecoveryStatistics_RecoveryPoint *this, const proto::gpsd::RecoveryStatistics_RecoveryPoint *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    proto::gpsd::RecoveryStatistics_RecoveryPoint::MergeFrom(this, a2);
  }
}

uint64_t proto::gpsd::RecoveryStatistics_RecoveryPoint::Swap(uint64_t this, proto::gpsd::RecoveryStatistics_RecoveryPoint *a2)
{
  if (a2 != this)
  {
    v2 = *(this + 8);
    *(this + 8) = *(a2 + 1);
    *(a2 + 1) = v2;
    LODWORD(v2) = *(this + 24);
    *(this + 24) = *(a2 + 6);
    *(a2 + 6) = v2;
    v3 = *(this + 16);
    *(this + 16) = *(a2 + 2);
    *(a2 + 2) = v3;
    LODWORD(v3) = *(this + 32);
    *(this + 32) = *(a2 + 8);
    *(a2 + 8) = v3;
    LODWORD(v3) = *(this + 28);
    *(this + 28) = *(a2 + 7);
    *(a2 + 7) = v3;
  }

  return this;
}

uint64_t proto::gpsd::RecoveryStatistics::SharedCtor(uint64_t this)
{
  *(this + 32) = 0;
  *(this + 40) = 0;
  return this;
}

proto::gpsd::RecoveryStatistics *proto::gpsd::RecoveryStatistics::RecoveryStatistics(proto::gpsd::RecoveryStatistics *this, const proto::gpsd::RecoveryStatistics *a2)
{
  *this = &unk_285862F88;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 6) = 0;
  *(this + 4) = 0;
  *(this + 5) = 0;
  proto::gpsd::RecoveryStatistics::MergeFrom(this, a2);
  return this;
}

void sub_24555FBF0(_Unwind_Exception *a1)
{
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<proto::gnsshal::NvStoreItem>::TypeHandler>(v2);
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(v1);
  _Unwind_Resume(a1);
}

void proto::gpsd::RecoveryStatistics::~RecoveryStatistics(proto::gpsd::RecoveryStatistics *this)
{
  *this = &unk_285862F88;
  if (proto::gpsd::RecoveryStatistics::default_instance_ != this)
  {
    v2 = *(this + 4);
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }
  }

  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<proto::gnsshal::NvStoreItem>::TypeHandler>(this + 1);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  proto::gpsd::RecoveryStatistics::~RecoveryStatistics(this);

  JUMPOUT(0x245D6AEE0);
}

void *proto::gpsd::RecoveryStatistics::SharedDtor(void *this)
{
  if (proto::gpsd::RecoveryStatistics::default_instance_ != this)
  {
    this = this[4];
    if (this)
    {
      return (*(*this + 8))();
    }
  }

  return this;
}

uint64_t proto::gpsd::RecoveryStatistics::MergePartialFromCodedStream(proto::gpsd::RecoveryStatistics *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
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

      v7 = TagFallback & 7;
      if (TagFallback >> 3 != 2)
      {
        break;
      }

      if (v7 != 2)
      {
        goto LABEL_30;
      }

LABEL_33:
      *(this + 11) |= 2u;
      v21 = *(this + 4);
      if (!v21)
      {
        operator new();
      }

      v30 = 0;
      v22 = *(a2 + 1);
      if (v22 >= *(a2 + 2) || *v22 < 0)
      {
        if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v30))
        {
          return 0;
        }
      }

      else
      {
        v30 = *v22;
        *(a2 + 1) = v22 + 1;
      }

      v23 = *(a2 + 14);
      v24 = *(a2 + 15);
      *(a2 + 14) = v23 + 1;
      if (v23 >= v24)
      {
        return 0;
      }

      wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
      if (!proto::gpsd::RecoveryStatistics_RecoveryStatus::MergePartialFromCodedStream(v21, a2, v25) || *(a2 + 36) != 1)
      {
        return 0;
      }

      wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
      v26 = *(a2 + 14);
      v17 = __OFSUB__(v26, 1);
      v27 = v26 - 1;
      if (v27 < 0 == v17)
      {
        *(a2 + 14) = v27;
      }

      if (*(a2 + 1) == *(a2 + 2) && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
      {
        *(a2 + 8) = 0;
        result = 1;
        *(a2 + 36) = 1;
        return result;
      }
    }

    if (TagFallback >> 3 == 1 && v7 == 2)
    {
      while (1)
      {
        v8 = *(this + 5);
        v9 = *(this + 4);
        if (v9 >= v8)
        {
          if (v8 == *(this + 6))
          {
            wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 8));
            v8 = *(this + 5);
          }

          *(this + 5) = v8 + 1;
          operator new();
        }

        v10 = *(this + 1);
        *(this + 4) = v9 + 1;
        v11 = *(v10 + 8 * v9);
        v29 = 0;
        v12 = *(a2 + 1);
        if (v12 >= *(a2 + 2) || *v12 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v29))
          {
            return 0;
          }
        }

        else
        {
          v29 = *v12;
          *(a2 + 1) = v12 + 1;
        }

        v13 = *(a2 + 14);
        v14 = *(a2 + 15);
        *(a2 + 14) = v13 + 1;
        if (v13 >= v14)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
        if (!proto::gpsd::RecoveryStatistics_RecoveryPoint::MergePartialFromCodedStream(v11, a2, v15) || *(a2 + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
        v16 = *(a2 + 14);
        v17 = __OFSUB__(v16, 1);
        v18 = v16 - 1;
        if (v18 < 0 == v17)
        {
          *(a2 + 14) = v18;
        }

        v19 = *(a2 + 1);
        if (v19 >= *(a2 + 2))
        {
          goto LABEL_1;
        }

        v20 = *v19;
        if (v20 != 10)
        {
          if (v20 != 18)
          {
            goto LABEL_1;
          }

          *(a2 + 1) = v19 + 1;
          goto LABEL_33;
        }

        *(a2 + 1) = v19 + 1;
      }
    }

LABEL_30:
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

uint64_t proto::gpsd::RecoveryStatistics::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
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

  if ((*(v5 + 44) & 2) != 0)
  {
    v7 = *(v5 + 32);
    if (!v7)
    {
      v7 = *(proto::gpsd::RecoveryStatistics::default_instance_ + 32);
    }

    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(2, v7, a2, a4);
  }

  return this;
}

uint64_t proto::gpsd::RecoveryStatistics::ByteSize(proto::gpsd::RecoveryStatistics *this, unsigned int a2)
{
  if ((*(this + 44) & 2) != 0)
  {
    v4 = *(this + 4);
    if (!v4)
    {
      v4 = *(proto::gpsd::RecoveryStatistics::default_instance_ + 32);
    }

    v5 = proto::gpsd::RecoveryStatistics_RecoveryStatus::ByteSize(v4, a2);
    v6 = v5;
    if (v5 >= 0x80)
    {
      v7 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5);
    }

    else
    {
      v7 = 1;
    }

    v3 = v6 + v7 + 1;
  }

  else
  {
    v3 = 0;
  }

  v8 = *(this + 4);
  v9 = (v8 + v3);
  if (v8 >= 1)
  {
    v10 = 0;
    do
    {
      v11 = proto::gpsd::RecoveryStatistics_RecoveryPoint::ByteSize(*(*(this + 1) + 8 * v10), a2);
      v12 = v11;
      if (v11 >= 0x80)
      {
        v13 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v11);
      }

      else
      {
        v13 = 1;
      }

      v9 = (v12 + v9 + v13);
      ++v10;
    }

    while (v10 < *(this + 4));
  }

  *(this + 10) = v9;
  return v9;
}

void proto::gpsd::RecoveryStatistics::CheckTypeAndMergeFrom(proto::gpsd::RecoveryStatistics *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  proto::gpsd::RecoveryStatistics::MergeFrom(this, lpsrc);
}

void proto::gpsd::RecoveryStatistics::CopyFrom(const proto::gpsd::RecoveryStatistics *this, const proto::gpsd::RecoveryStatistics *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    proto::gpsd::RecoveryStatistics::MergeFrom(this, a2);
  }
}

proto::gpsd::RecoveryStatistics *proto::gpsd::RecoveryStatistics::Swap(proto::gpsd::RecoveryStatistics *this, proto::gpsd::RecoveryStatistics *a2)
{
  if (a2 != this)
  {
    v3 = this;
    this = wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Swap();
    v4 = *(v3 + 4);
    *(v3 + 4) = *(a2 + 4);
    *(a2 + 4) = v4;
    LODWORD(v4) = *(v3 + 11);
    *(v3 + 11) = *(a2 + 11);
    *(a2 + 11) = v4;
    LODWORD(v4) = *(v3 + 10);
    *(v3 + 10) = *(a2 + 10);
    *(a2 + 10) = v4;
  }

  return this;
}

uint64_t proto::gpsd::LtlInfoRequest::SharedCtor(uint64_t this)
{
  *(this + 8) = 0;
  *(this + 16) = 0;
  return this;
}

proto::gpsd::LtlInfoRequest *proto::gpsd::LtlInfoRequest::LtlInfoRequest(proto::gpsd::LtlInfoRequest *this, const proto::gpsd::LtlInfoRequest *a2)
{
  *this = &unk_285863000;
  *(this + 1) = 0;
  *(this + 4) = 0;
  proto::gpsd::LtlInfoRequest::MergeFrom(this, a2);
  return this;
}

void proto::gpsd::LtlInfoRequest::~LtlInfoRequest(proto::gpsd::LtlInfoRequest *this)
{
  *this = &unk_285863000;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_285863000;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_285863000;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  JUMPOUT(0x245D6AEE0);
}

uint64_t proto::gpsd::LtlInfoRequest::MergePartialFromCodedStream(proto::gpsd::LtlInfoRequest *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
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
      }

      else
      {
        *(a2 + 8) = TagFallback;
        *(a2 + 1) = v5 + 1;
      }

      if (TagFallback != 8)
      {
        break;
      }

      v10 = 0;
      v7 = *(a2 + 1);
      if (v7 >= *(a2 + 2) || (v8 = *v7, (v8 & 0x80000000) != 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v10);
        if (!result)
        {
          return result;
        }

        v8 = v10;
      }

      else
      {
        *(a2 + 1) = v7 + 1;
      }

      if (v8 <= 4)
      {
        *(this + 4) |= 1u;
        *(this + 2) = v8;
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

uint64_t proto::gpsd::LtlInfoRequest::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  if (*(this + 16))
  {
    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(1, *(this + 8), a2, a4);
  }

  return this;
}

uint64_t proto::gpsd::LtlInfoRequest::ByteSize(proto::gpsd::LtlInfoRequest *this, unsigned int a2)
{
  if (*(this + 16))
  {
    v4 = *(this + 2);
    if ((v4 & 0x80000000) != 0)
    {
      result = 11;
    }

    else if (v4 >= 0x80)
    {
      result = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v4) + 1;
    }

    else
    {
      result = 2;
    }
  }

  else
  {
    result = 0;
  }

  *(this + 3) = result;
  return result;
}

void proto::gpsd::LtlInfoRequest::CheckTypeAndMergeFrom(proto::gpsd::LtlInfoRequest *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  proto::gpsd::LtlInfoRequest::MergeFrom(this, lpsrc);
}

void proto::gpsd::LtlInfoRequest::CopyFrom(proto::gpsd::LtlInfoRequest *this, const proto::gpsd::LtlInfoRequest *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    proto::gpsd::LtlInfoRequest::MergeFrom(this, a2);
  }
}

proto::gpsd::LtlInfoRequest *proto::gpsd::LtlInfoRequest::Swap(proto::gpsd::LtlInfoRequest *this, proto::gpsd::LtlInfoRequest *a2)
{
  if (a2 != this)
  {
    v2 = *(this + 2);
    *(this + 2) = *(a2 + 2);
    *(a2 + 2) = v2;
    v3 = *(this + 4);
    *(this + 4) = *(a2 + 4);
    *(a2 + 4) = v3;
    v4 = *(this + 3);
    *(this + 3) = *(a2 + 3);
    *(a2 + 3) = v4;
  }

  return this;
}

double proto::gpsd::LtlInfo_LtlLutParams::SharedCtor(proto::gpsd::LtlInfo_LtlLutParams *this)
{
  result = 0.0;
  *(this + 1) = 0;
  *(this + 6) = 0;
  return result;
}

proto::gpsd::LtlInfo_LtlLutParams *proto::gpsd::LtlInfo_LtlLutParams::LtlInfo_LtlLutParams(proto::gpsd::LtlInfo_LtlLutParams *this, const proto::gpsd::LtlInfo_LtlLutParams *a2)
{
  *this = &unk_285863078;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  proto::gpsd::LtlInfo_LtlLutParams::MergeFrom(this, a2);
  return this;
}

void sub_2455608F8(_Unwind_Exception *a1)
{
  v3 = *(v1 + 4);
  if (v3)
  {
    MEMORY[0x245D6AEC0](v3, 0x1000C8052888210);
  }

  v4 = *(v1 + 2);
  if (v4)
  {
    MEMORY[0x245D6AEC0](v4, 0x1000C8052888210);
  }

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(v1);
  _Unwind_Resume(a1);
}

void proto::gpsd::LtlInfo_LtlLutParams::MergeFrom(proto::gpsd::LtlInfo_LtlLutParams *this, const proto::gpsd::LtlInfo_LtlLutParams *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v9);
  }

  v4 = *(a2 + 6);
  if (v4)
  {
    wireless_diagnostics::google::protobuf::RepeatedField<int>::Reserve(this + 4, *(this + 6) + v4);
    memcpy((*(this + 2) + 4 * *(this + 6)), *(a2 + 2), 4 * *(a2 + 6));
    *(this + 6) += *(a2 + 6);
  }

  v5 = *(a2 + 10);
  if (v5)
  {
    wireless_diagnostics::google::protobuf::RepeatedField<int>::Reserve(this + 8, *(this + 10) + v5);
    memcpy((*(this + 4) + 4 * *(this + 10)), *(a2 + 4), 4 * *(a2 + 10));
    *(this + 10) += *(a2 + 10);
  }

  LOBYTE(v6) = *(a2 + 52);
  if (v6)
  {
    if (*(a2 + 52))
    {
      v7 = *(a2 + 2);
      *(this + 13) |= 1u;
      *(this + 2) = v7;
      v6 = *(a2 + 13);
    }

    if ((v6 & 2) != 0)
    {
      v8 = *(a2 + 3);
      *(this + 13) |= 2u;
      *(this + 3) = v8;
    }
  }
}

void sub_245560A78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void proto::gpsd::LtlInfo_LtlLutParams::~LtlInfo_LtlLutParams(proto::gpsd::LtlInfo_LtlLutParams *this)
{
  *this = &unk_285863078;
  v2 = *(this + 4);
  if (v2)
  {
    MEMORY[0x245D6AEC0](v2, 0x1000C8052888210);
  }

  v3 = *(this + 2);
  if (v3)
  {
    MEMORY[0x245D6AEC0](v3, 0x1000C8052888210);
  }

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  proto::gpsd::LtlInfo_LtlLutParams::~LtlInfo_LtlLutParams(this);

  JUMPOUT(0x245D6AEE0);
}

uint64_t proto::gpsd::LtlInfo_LtlLutParams::default_instance(proto::gpsd::LtlInfo_LtlLutParams *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = proto::gpsd::LtlInfo_LtlLutParams::default_instance_;
  if (!proto::gpsd::LtlInfo_LtlLutParams::default_instance_)
  {
    proto::gpsd::protobuf_AddDesc_GpsdProtocol_2eproto(0, a2, a3, a4);
    return proto::gpsd::LtlInfo_LtlLutParams::default_instance_;
  }

  return result;
}

uint64_t proto::gpsd::LtlInfo_LtlLutParams::Clear(uint64_t this)
{
  if (*(this + 52))
  {
    *(this + 8) = 0;
  }

  *(this + 24) = 0;
  *(this + 40) = 0;
  *(this + 52) = 0;
  return this;
}

uint64_t proto::gpsd::LtlInfo_LtlLutParams::MergePartialFromCodedStream(proto::gpsd::LtlInfo_LtlLutParams *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
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
        if (TagFallback >> 3 <= 2)
        {
          break;
        }

        if (v7 != 3)
        {
          if (v7 == 4)
          {
            if ((TagFallback & 7) == 0)
            {
              v15 = *(a2 + 1);
              v9 = *(a2 + 2);
              goto LABEL_66;
            }

            if (v8 == 2)
            {
              result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadPackedPrimitiveNoInline<unsigned int,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)13>(a2, this + 4);
              if (!result)
              {
                return result;
              }

              goto LABEL_83;
            }
          }

          goto LABEL_23;
        }

        if ((TagFallback & 7) != 0)
        {
          if (v8 == 2)
          {
            result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadPackedPrimitiveNoInline<int,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)5>(a2, this + 4);
            if (!result)
            {
              return result;
            }

            goto LABEL_63;
          }

          goto LABEL_23;
        }

        v16 = *(a2 + 1);
        v9 = *(a2 + 2);
        while (1)
        {
          v41[0] = 0;
          if (v16 >= v9 || (v20 = *v16, (v20 & 0x80000000) != 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v41);
            if (!result)
            {
              return result;
            }

            v20 = v41[0];
          }

          else
          {
            *(a2 + 1) = v16 + 1;
          }

          v21 = *(this + 6);
          if (v21 == *(this + 7))
          {
            wireless_diagnostics::google::protobuf::RepeatedField<int>::Reserve(this + 4, v21 + 1);
            v21 = *(this + 6);
          }

          v22 = *(this + 2);
          *(this + 6) = v21 + 1;
          *(v22 + 4 * v21) = v20;
          v23 = *(this + 7) - *(this + 6);
          if (v23 >= 1)
          {
            v24 = v23 + 1;
            do
            {
              v25 = *(a2 + 1);
              v26 = *(a2 + 2);
              if (v25 >= v26 || *v25 != 24)
              {
                break;
              }

              *(a2 + 1) = v25 + 1;
              v41[0] = 0;
              if ((v25 + 1) >= v26 || (v27 = v25[1], (v27 & 0x80000000) != 0))
              {
                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v41);
                if (!result)
                {
                  return result;
                }

                v27 = v41[0];
              }

              else
              {
                *(a2 + 1) = v25 + 2;
              }

              v28 = *(this + 6);
              if (v28 >= *(this + 7))
              {
                wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v41);
                v28 = *(this + 6);
              }

              v29 = *(this + 2);
              *(this + 6) = v28 + 1;
              *(v29 + 4 * v28) = v27;
              --v24;
            }

            while (v24 > 1);
          }

LABEL_63:
          v18 = *(a2 + 1);
          v9 = *(a2 + 2);
          if (v18 >= v9)
          {
            break;
          }

          v19 = *v18;
          if (v19 == 32)
          {
            do
            {
              v15 = v18 + 1;
              *(a2 + 1) = v15;
LABEL_66:
              v40 = 0;
              if (v15 >= v9 || *v15 < 0)
              {
                if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v40))
                {
                  return 0;
                }
              }

              else
              {
                v40 = *v15;
                *(a2 + 1) = v15 + 1;
              }

              v30 = *(this + 10);
              if (v30 == *(this + 11))
              {
                wireless_diagnostics::google::protobuf::RepeatedField<int>::Reserve(this + 8, v30 + 1);
                v30 = *(this + 10);
              }

              v31 = v40;
              v32 = *(this + 4);
              *(this + 10) = v30 + 1;
              *(v32 + 4 * v30) = v31;
              v33 = *(this + 11) - *(this + 10);
              if (v33 >= 1)
              {
                v34 = v33 + 1;
                do
                {
                  v35 = *(a2 + 1);
                  v36 = *(a2 + 2);
                  if (v35 >= v36 || *v35 != 32)
                  {
                    break;
                  }

                  *(a2 + 1) = v35 + 1;
                  if ((v35 + 1) >= v36 || v35[1] < 0)
                  {
                    if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v40))
                    {
                      return 0;
                    }
                  }

                  else
                  {
                    v40 = v35[1];
                    *(a2 + 1) = v35 + 2;
                  }

                  v37 = *(this + 10);
                  if (v37 >= *(this + 11))
                  {
                    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v41);
                    v37 = *(this + 10);
                  }

                  v38 = v40;
                  v39 = *(this + 4);
                  *(this + 10) = v37 + 1;
                  *(v39 + 4 * v37) = v38;
                  --v34;
                }

                while (v34 > 1);
              }

LABEL_83:
              v18 = *(a2 + 1);
              v9 = *(a2 + 2);
            }

            while (v18 < v9 && *v18 == 32);
            if (v18 == v9 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
            {
              *(a2 + 8) = 0;
              result = 1;
              *(a2 + 36) = 1;
              return result;
            }

            goto LABEL_1;
          }

LABEL_42:
          if (v19 != 24)
          {
            goto LABEL_1;
          }

          v16 = v18 + 1;
          *(a2 + 1) = v16;
        }
      }

      if (v7 != 1)
      {
        break;
      }

      if ((TagFallback & 7) != 0)
      {
        goto LABEL_23;
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

      *(this + 13) |= 1u;
      if (v14 < v9 && *v14 == 16)
      {
        v10 = v14 + 1;
        *(a2 + 1) = v10;
LABEL_35:
        if (v10 >= v9 || (v17 = *v10, v17 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 3);
          if (!result)
          {
            return result;
          }

          v18 = *(a2 + 1);
          v9 = *(a2 + 2);
        }

        else
        {
          *(this + 3) = v17;
          v18 = v10 + 1;
          *(a2 + 1) = v18;
        }

        *(this + 13) |= 2u;
        if (v18 < v9)
        {
          v19 = *v18;
          goto LABEL_42;
        }
      }
    }

    if (v7 == 2 && (TagFallback & 7) == 0)
    {
      v10 = *(a2 + 1);
      v9 = *(a2 + 2);
      goto LABEL_35;
    }

LABEL_23:
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

void sub_2455610B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadPackedPrimitiveNoInline<int,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)5>(wireless_diagnostics::google::protobuf::io::CodedInputStream *this, _DWORD *a2)
{
  v10 = 0;
  v4 = *(this + 1);
  if (v4 >= *(this + 2) || *v4 < 0)
  {
    result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v10);
    if (!result)
    {
      return result;
    }
  }

  else
  {
    v10 = *v4;
    *(this + 1) = v4 + 1;
  }

  wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this);
  if (wireless_diagnostics::google::protobuf::io::CodedInputStream::BytesUntilLimit(this) >= 1)
  {
    do
    {
      v11 = 0;
      v6 = *(this + 1);
      if (v6 >= *(this + 2) || (v7 = *v6, (v7 & 0x80000000) != 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v11);
        if (!result)
        {
          return result;
        }

        v7 = v11;
      }

      else
      {
        *(this + 1) = v6 + 1;
      }

      v8 = a2[2];
      if (v8 == a2[3])
      {
        wireless_diagnostics::google::protobuf::RepeatedField<int>::Reserve(a2, v8 + 1);
        v8 = a2[2];
      }

      v9 = *a2;
      a2[2] = v8 + 1;
      *(v9 + 4 * v8) = v7;
    }

    while (wireless_diagnostics::google::protobuf::io::CodedInputStream::BytesUntilLimit(this) > 0);
  }

  wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this);
  return 1;
}

uint64_t proto::gpsd::LtlInfo_LtlLutParams::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 52);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(1, *(this + 8), a2, a4);
    v6 = *(v5 + 52);
  }

  if ((v6 & 2) != 0)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(2, *(v5 + 12), a2, a4);
  }

  if (*(v5 + 24) >= 1)
  {
    v7 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(3, *(*(v5 + 16) + 4 * v7++), a2, a4);
    }

    while (v7 < *(v5 + 24));
  }

  if (*(v5 + 40) >= 1)
  {
    v8 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(4, *(*(v5 + 32) + 4 * v8++), a2, a4);
    }

    while (v8 < *(v5 + 40));
  }

  return this;
}

uint64_t proto::gpsd::LtlInfo_LtlLutParams::ByteSize(proto::gpsd::LtlInfo_LtlLutParams *this, unsigned int a2)
{
  v3 = *(this + 52);
  if (!v3)
  {
    v4 = 0;
    goto LABEL_14;
  }

  if (*(this + 52))
  {
    v5 = *(this + 2);
    if (v5 >= 0x80)
    {
      v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5) + 1;
      if ((*(this + 13) & 2) == 0)
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
    if ((*(this + 52) & 2) == 0)
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

  v4 += v7;
LABEL_14:
  v8 = *(this + 6);
  if (v8 < 1)
  {
    v10 = 0;
  }

  else
  {
    v9 = 0;
    v10 = 0;
    do
    {
      v11 = *(*(this + 2) + 4 * v9);
      if ((v11 & 0x80000000) != 0)
      {
        v12 = 10;
      }

      else if (v11 >= 0x80)
      {
        v12 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v11);
        v8 = *(this + 6);
      }

      else
      {
        v12 = 1;
      }

      v10 += v12;
      ++v9;
    }

    while (v9 < v8);
  }

  v13 = *(this + 10);
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
      v16 = *(*(this + 4) + 4 * v14);
      if (v16 >= 0x80)
      {
        v17 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v16);
        v13 = *(this + 10);
      }

      else
      {
        v17 = 1;
      }

      v15 += v17;
      ++v14;
    }

    while (v14 < v13);
  }

  result = (v10 + v4 + v8 + v15 + v13);
  *(this + 12) = result;
  return result;
}

void proto::gpsd::LtlInfo_LtlLutParams::CheckTypeAndMergeFrom(proto::gpsd::LtlInfo_LtlLutParams *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  proto::gpsd::LtlInfo_LtlLutParams::MergeFrom(this, lpsrc);
}

void proto::gpsd::LtlInfo_LtlLutParams::CopyFrom(proto::gpsd::LtlInfo_LtlLutParams *this, const proto::gpsd::LtlInfo_LtlLutParams *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    proto::gpsd::LtlInfo_LtlLutParams::MergeFrom(this, a2);
  }
}

double proto::gpsd::LtlInfo_LtlLutParams::Swap(proto::gpsd::LtlInfo_LtlLutParams *this, proto::gpsd::LtlInfo_LtlLutParams *a2)
{
  if (a2 != this)
  {
    v2 = *(this + 2);
    *(this + 2) = *(a2 + 2);
    *(a2 + 2) = v2;
    v3 = *(this + 3);
    *(this + 3) = *(a2 + 3);
    *(a2 + 3) = v3;
    v4 = *(this + 2);
    *(this + 2) = *(a2 + 2);
    v5 = *(a2 + 3);
    *(a2 + 2) = v4;
    v6 = *(this + 3);
    *(this + 3) = v5;
    *(a2 + 3) = v6;
    v7 = *(this + 4);
    *(this + 4) = *(a2 + 4);
    result = *(a2 + 5);
    *(a2 + 4) = v7;
    v9 = *(this + 5);
    *(this + 5) = result;
    *(a2 + 5) = v9;
    LODWORD(v7) = *(this + 13);
    *(this + 13) = *(a2 + 13);
    *(a2 + 13) = v7;
    LODWORD(v7) = *(this + 12);
    *(this + 12) = *(a2 + 12);
    *(a2 + 12) = v7;
  }

  return result;
}

uint64_t proto::gpsd::LtlInfo_LtlCurrentSrcCalibData::SharedCtor(uint64_t this)
{
  *(this + 24) = 0;
  *(this + 32) = 0;
  return this;
}

proto::gpsd::LtlInfo_LtlCurrentSrcCalibData *proto::gpsd::LtlInfo_LtlCurrentSrcCalibData::LtlInfo_LtlCurrentSrcCalibData(proto::gpsd::LtlInfo_LtlCurrentSrcCalibData *this, const proto::gpsd::LtlInfo_LtlCurrentSrcCalibData *a2)
{
  *this = &unk_2858630F0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  proto::gpsd::LtlInfo_LtlCurrentSrcCalibData::MergeFrom(this, a2);
  return this;
}

void sub_245561634(_Unwind_Exception *a1)
{
  v3 = v2;
  if (*v3)
  {
    MEMORY[0x245D6AEC0](*v3, 0x1000C8052888210);
  }

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(v1);
  _Unwind_Resume(a1);
}

void proto::gpsd::LtlInfo_LtlCurrentSrcCalibData::MergeFrom(proto::gpsd::LtlInfo_LtlCurrentSrcCalibData *this, const proto::gpsd::LtlInfo_LtlCurrentSrcCalibData *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v8);
  }

  v4 = *(a2 + 4);
  if (v4)
  {
    wireless_diagnostics::google::protobuf::RepeatedField<int>::Reserve(this + 2, *(this + 4) + v4);
    memcpy((*(this + 1) + 4 * *(this + 4)), *(a2 + 1), 4 * *(a2 + 4));
    *(this + 4) += *(a2 + 4);
  }

  v5 = *(a2 + 9);
  if ((v5 & 0x1FE) != 0)
  {
    if ((v5 & 2) != 0)
    {
      v6 = *(a2 + 6);
      *(this + 9) |= 2u;
      *(this + 6) = v6;
      v5 = *(a2 + 9);
    }

    if ((v5 & 4) != 0)
    {
      v7 = *(a2 + 7);
      *(this + 9) |= 4u;
      *(this + 7) = v7;
    }
  }
}

void sub_24556175C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void proto::gpsd::LtlInfo_LtlCurrentSrcCalibData::~LtlInfo_LtlCurrentSrcCalibData(proto::gpsd::LtlInfo_LtlCurrentSrcCalibData *this)
{
  *this = &unk_2858630F0;
  v2 = *(this + 1);
  if (v2)
  {
    MEMORY[0x245D6AEC0](v2, 0x1000C8052888210);
  }

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  proto::gpsd::LtlInfo_LtlCurrentSrcCalibData::~LtlInfo_LtlCurrentSrcCalibData(this);

  JUMPOUT(0x245D6AEE0);
}

uint64_t proto::gpsd::LtlInfo_LtlCurrentSrcCalibData::default_instance(proto::gpsd::LtlInfo_LtlCurrentSrcCalibData *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = proto::gpsd::LtlInfo_LtlCurrentSrcCalibData::default_instance_;
  if (!proto::gpsd::LtlInfo_LtlCurrentSrcCalibData::default_instance_)
  {
    proto::gpsd::protobuf_AddDesc_GpsdProtocol_2eproto(0, a2, a3, a4);
    return proto::gpsd::LtlInfo_LtlCurrentSrcCalibData::default_instance_;
  }

  return result;
}

uint64_t proto::gpsd::LtlInfo_LtlCurrentSrcCalibData::Clear(uint64_t this)
{
  if ((*(this + 36) & 0x1FE) != 0)
  {
    *(this + 24) = 0;
  }

  *(this + 16) = 0;
  *(this + 36) = 0;
  return this;
}

uint64_t proto::gpsd::LtlInfo_LtlCurrentSrcCalibData::MergePartialFromCodedStream(proto::gpsd::LtlInfo_LtlCurrentSrcCalibData *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
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
        if (TagFallback >> 3 != 3)
        {
          break;
        }

        if ((TagFallback & 7) == 0)
        {
          v12 = *(a2 + 1);
          v10 = *(a2 + 2);
          goto LABEL_53;
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

      if (v7 != 2)
      {
        break;
      }

      if ((TagFallback & 7) != 0)
      {
        goto LABEL_16;
      }

      v11 = *(a2 + 1);
      v10 = *(a2 + 2);
LABEL_45:
      if (v11 >= v10 || (v26 = *v11, v26 < 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 6);
        if (!result)
        {
          return result;
        }

        v27 = *(a2 + 1);
        v10 = *(a2 + 2);
      }

      else
      {
        *(this + 6) = v26;
        v27 = v11 + 1;
        *(a2 + 1) = v27;
      }

      *(this + 9) |= 2u;
      if (v27 < v10 && *v27 == 24)
      {
        v12 = v27 + 1;
        *(a2 + 1) = v12;
LABEL_53:
        if (v12 >= v10 || (v28 = *v12, v28 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 7);
          if (!result)
          {
            return result;
          }

          v29 = *(a2 + 1);
          v10 = *(a2 + 2);
        }

        else
        {
          *(this + 7) = v28;
          v29 = v12 + 1;
          *(a2 + 1) = v29;
        }

        *(this + 9) |= 4u;
        if (v29 == v10 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
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
      goto LABEL_16;
    }

    if ((TagFallback & 7) != 0)
    {
      break;
    }

    v13 = *(a2 + 1);
    v10 = *(a2 + 2);
    while (1)
    {
      v30[0] = 0;
      if (v13 >= v10 || (v14 = *v13, (v14 & 0x80000000) != 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v30);
        if (!result)
        {
          return result;
        }

        v14 = v30[0];
      }

      else
      {
        *(a2 + 1) = v13 + 1;
      }

      v15 = *(this + 4);
      if (v15 == *(this + 5))
      {
        wireless_diagnostics::google::protobuf::RepeatedField<int>::Reserve(this + 2, v15 + 1);
        v15 = *(this + 4);
      }

      v16 = *(this + 1);
      *(this + 4) = v15 + 1;
      *(v16 + 4 * v15) = v14;
      v17 = *(this + 5) - *(this + 4);
      if (v17 >= 1)
      {
        v18 = v17 + 1;
        do
        {
          v19 = *(a2 + 1);
          v20 = *(a2 + 2);
          if (v19 >= v20 || *v19 != 8)
          {
            break;
          }

          *(a2 + 1) = v19 + 1;
          v30[0] = 0;
          if ((v19 + 1) >= v20 || (v21 = v19[1], (v21 & 0x80000000) != 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v30);
            if (!result)
            {
              return result;
            }

            v21 = v30[0];
          }

          else
          {
            *(a2 + 1) = v19 + 2;
          }

          v22 = *(this + 4);
          if (v22 >= *(this + 5))
          {
            wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
            wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
            wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
            wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v30);
            v22 = *(this + 4);
          }

          v23 = *(this + 1);
          *(this + 4) = v22 + 1;
          *(v23 + 4 * v22) = v21;
          --v18;
        }

        while (v18 > 1);
      }

LABEL_40:
      v24 = *(a2 + 1);
      v10 = *(a2 + 2);
      if (v24 >= v10)
      {
        break;
      }

      v25 = *v24;
      if (v25 == 16)
      {
        v11 = (v24 + 1);
        *(a2 + 1) = v11;
        goto LABEL_45;
      }

      if (v25 != 8)
      {
        goto LABEL_1;
      }

      v13 = (v24 + 1);
      *(a2 + 1) = v13;
    }
  }

  if (v8 != 2)
  {
    goto LABEL_16;
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadPackedPrimitiveNoInline<int,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)5>(a2, this + 2);
  if (result)
  {
    goto LABEL_40;
  }

  return result;
}

void sub_245561BFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t proto::gpsd::LtlInfo_LtlCurrentSrcCalibData::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  if (*(this + 16) >= 1)
  {
    v6 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(1, *(*(v5 + 8) + 4 * v6++), a2, a4);
    }

    while (v6 < *(v5 + 16));
  }

  v7 = *(v5 + 36);
  if ((v7 & 2) != 0)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(2, *(v5 + 24), a2, a4);
    v7 = *(v5 + 36);
  }

  if ((v7 & 4) != 0)
  {
    v8 = *(v5 + 28);

    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(3, v8, a2, a4);
  }

  return this;
}

uint64_t proto::gpsd::LtlInfo_LtlCurrentSrcCalibData::ByteSize(proto::gpsd::LtlInfo_LtlCurrentSrcCalibData *this, unsigned int a2)
{
  v3 = *(this + 9);
  if ((v3 & 0x1FE) == 0)
  {
    v4 = 0;
    goto LABEL_14;
  }

  if ((v3 & 2) != 0)
  {
    v5 = *(this + 6);
    if (v5 >= 0x80)
    {
      v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5) + 1;
      if ((*(this + 9) & 4) == 0)
      {
        goto LABEL_14;
      }
    }

    else
    {
      v4 = 2;
      if ((v3 & 4) == 0)
      {
        goto LABEL_14;
      }
    }
  }

  else
  {
    v4 = 0;
    if ((v3 & 4) == 0)
    {
      goto LABEL_14;
    }
  }

  v6 = *(this + 7);
  if (v6 >= 0x80)
  {
    v7 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v6) + 1;
  }

  else
  {
    v7 = 2;
  }

  v4 += v7;
LABEL_14:
  v8 = *(this + 4);
  if (v8 < 1)
  {
    v10 = 0;
  }

  else
  {
    v9 = 0;
    v10 = 0;
    do
    {
      v11 = *(*(this + 1) + 4 * v9);
      if ((v11 & 0x80000000) != 0)
      {
        v12 = 10;
      }

      else if (v11 >= 0x80)
      {
        v12 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v11);
        v8 = *(this + 4);
      }

      else
      {
        v12 = 1;
      }

      v10 += v12;
      ++v9;
    }

    while (v9 < v8);
  }

  result = (v10 + v4 + v8);
  *(this + 8) = result;
  return result;
}

void proto::gpsd::LtlInfo_LtlCurrentSrcCalibData::CheckTypeAndMergeFrom(proto::gpsd::LtlInfo_LtlCurrentSrcCalibData *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  proto::gpsd::LtlInfo_LtlCurrentSrcCalibData::MergeFrom(this, lpsrc);
}

void proto::gpsd::LtlInfo_LtlCurrentSrcCalibData::CopyFrom(proto::gpsd::LtlInfo_LtlCurrentSrcCalibData *this, const proto::gpsd::LtlInfo_LtlCurrentSrcCalibData *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    proto::gpsd::LtlInfo_LtlCurrentSrcCalibData::MergeFrom(this, a2);
  }
}

double proto::gpsd::LtlInfo_LtlCurrentSrcCalibData::Swap(proto::gpsd::LtlInfo_LtlCurrentSrcCalibData *this, proto::gpsd::LtlInfo_LtlCurrentSrcCalibData *a2)
{
  if (a2 != this)
  {
    v2 = *(this + 1);
    *(this + 1) = *(a2 + 1);
    result = *(a2 + 2);
    *(a2 + 1) = v2;
    v4 = *(this + 2);
    *(this + 2) = result;
    *(a2 + 2) = v4;
    LODWORD(v2) = *(this + 6);
    *(this + 6) = *(a2 + 6);
    *(a2 + 6) = v2;
    LODWORD(v2) = *(this + 7);
    *(this + 7) = *(a2 + 7);
    *(a2 + 7) = v2;
    LODWORD(v2) = *(this + 9);
    *(this + 9) = *(a2 + 9);
    *(a2 + 9) = v2;
    LODWORD(v2) = *(this + 8);
    *(this + 8) = *(a2 + 8);
    *(a2 + 8) = v2;
  }

  return result;
}

uint64_t proto::gpsd::LtlInfo_LtlRacPmicAdcPreCalData::SharedCtor(uint64_t this)
{
  *(this + 8) = 0;
  *(this + 16) = 0;
  return this;
}

proto::gpsd::LtlInfo_LtlRacPmicAdcPreCalData *proto::gpsd::LtlInfo_LtlRacPmicAdcPreCalData::LtlInfo_LtlRacPmicAdcPreCalData(proto::gpsd::LtlInfo_LtlRacPmicAdcPreCalData *this, const proto::gpsd::LtlInfo_LtlRacPmicAdcPreCalData *a2)
{
  *(this + 1) = 0;
  *(this + 2) = 0;
  *this = &unk_285863168;
  proto::gpsd::LtlInfo_LtlRacPmicAdcPreCalData::MergeFrom(this, a2);
  return this;
}

void proto::gpsd::LtlInfo_LtlRacPmicAdcPreCalData::MergeFrom(proto::gpsd::LtlInfo_LtlRacPmicAdcPreCalData *this, const proto::gpsd::LtlInfo_LtlRacPmicAdcPreCalData *a2)
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

void sub_245562080(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void proto::gpsd::LtlInfo_LtlRacPmicAdcPreCalData::~LtlInfo_LtlRacPmicAdcPreCalData(proto::gpsd::LtlInfo_LtlRacPmicAdcPreCalData *this)
{
  *this = &unk_285863168;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_285863168;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_285863168;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  JUMPOUT(0x245D6AEE0);
}

uint64_t proto::gpsd::LtlInfo_LtlRacPmicAdcPreCalData::default_instance(proto::gpsd::LtlInfo_LtlRacPmicAdcPreCalData *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = proto::gpsd::LtlInfo_LtlRacPmicAdcPreCalData::default_instance_;
  if (!proto::gpsd::LtlInfo_LtlRacPmicAdcPreCalData::default_instance_)
  {
    proto::gpsd::protobuf_AddDesc_GpsdProtocol_2eproto(0, a2, a3, a4);
    return proto::gpsd::LtlInfo_LtlRacPmicAdcPreCalData::default_instance_;
  }

  return result;
}

uint64_t proto::gpsd::LtlInfo_LtlRacPmicAdcPreCalData::Clear(uint64_t this)
{
  if (*(this + 20))
  {
    *(this + 8) = 0;
  }

  *(this + 20) = 0;
  return this;
}

uint64_t proto::gpsd::LtlInfo_LtlRacPmicAdcPreCalData::MergePartialFromCodedStream(proto::gpsd::LtlInfo_LtlRacPmicAdcPreCalData *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
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

      *(this + 2) = v9;
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

uint64_t proto::gpsd::LtlInfo_LtlRacPmicAdcPreCalData::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
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

    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(2, v7, a2, a4);
  }

  return this;
}

uint64_t proto::gpsd::LtlInfo_LtlRacPmicAdcPreCalData::ByteSize(proto::gpsd::LtlInfo_LtlRacPmicAdcPreCalData *this, unsigned int a2)
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

void proto::gpsd::LtlInfo_LtlRacPmicAdcPreCalData::CheckTypeAndMergeFrom(proto::gpsd::LtlInfo_LtlRacPmicAdcPreCalData *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  proto::gpsd::LtlInfo_LtlRacPmicAdcPreCalData::MergeFrom(this, lpsrc);
}

void proto::gpsd::LtlInfo_LtlRacPmicAdcPreCalData::CopyFrom(proto::gpsd::LtlInfo_LtlRacPmicAdcPreCalData *this, const proto::gpsd::LtlInfo_LtlRacPmicAdcPreCalData *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    proto::gpsd::LtlInfo_LtlRacPmicAdcPreCalData::MergeFrom(this, a2);
  }
}

proto::gpsd::LtlInfo_LtlRacPmicAdcPreCalData *proto::gpsd::LtlInfo_LtlRacPmicAdcPreCalData::Swap(proto::gpsd::LtlInfo_LtlRacPmicAdcPreCalData *this, proto::gpsd::LtlInfo_LtlRacPmicAdcPreCalData *a2)
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

uint64_t proto::gpsd::LtlInfo_LtlInitialParams::SharedCtor(uint64_t this)
{
  *(this + 8) = 0;
  *(this + 16) = 0;
  *(this + 32) = 0;
  *(this + 24) = 0;
  *(this + 36) = 0;
  *(this + 52) = 0;
  *(this + 44) = 0;
  return this;
}

proto::gpsd::LtlInfo_LtlInitialParams *proto::gpsd::LtlInfo_LtlInitialParams::LtlInfo_LtlInitialParams(proto::gpsd::LtlInfo_LtlInitialParams *this, const proto::gpsd::LtlInfo_LtlInitialParams *a2)
{
  *this = &unk_2858631E0;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 3) = 0;
  *(this + 32) = 0;
  *(this + 36) = 0;
  *(this + 52) = 0;
  *(this + 44) = 0;
  proto::gpsd::LtlInfo_LtlInitialParams::MergeFrom(this, a2);
  return this;
}

void proto::gpsd::LtlInfo_LtlInitialParams::MergeFrom(proto::gpsd::LtlInfo_LtlInitialParams *this, const proto::gpsd::LtlInfo_LtlInitialParams *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v16);
  }

  v4 = *(a2 + 14);
  if (!v4)
  {
    goto LABEL_13;
  }

  if (v4)
  {
    v7 = *(a2 + 2);
    *(this + 14) |= 1u;
    *(this + 2) = v7;
    v4 = *(a2 + 14);
    if ((v4 & 2) == 0)
    {
LABEL_6:
      if ((v4 & 4) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_21;
    }
  }

  else if ((v4 & 2) == 0)
  {
    goto LABEL_6;
  }

  v8 = *(a2 + 3);
  *(this + 14) |= 2u;
  *(this + 3) = v8;
  v4 = *(a2 + 14);
  if ((v4 & 4) == 0)
  {
LABEL_7:
    if ((v4 & 8) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_22;
  }

LABEL_21:
  v9 = *(a2 + 4);
  *(this + 14) |= 4u;
  *(this + 4) = v9;
  v4 = *(a2 + 14);
  if ((v4 & 8) == 0)
  {
LABEL_8:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_23;
  }

LABEL_22:
  v10 = *(a2 + 5);
  *(this + 14) |= 8u;
  *(this + 5) = v10;
  v4 = *(a2 + 14);
  if ((v4 & 0x10) == 0)
  {
LABEL_9:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_10;
    }

LABEL_24:
    v12 = *(a2 + 7);
    *(this + 14) |= 0x20u;
    *(this + 7) = v12;
    v4 = *(a2 + 14);
    if ((v4 & 0x40) == 0)
    {
LABEL_11:
      if ((v4 & 0x80) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_12;
    }

    goto LABEL_25;
  }

LABEL_23:
  v11 = *(a2 + 6);
  *(this + 14) |= 0x10u;
  *(this + 6) = v11;
  v4 = *(a2 + 14);
  if ((v4 & 0x20) != 0)
  {
    goto LABEL_24;
  }

LABEL_10:
  if ((v4 & 0x40) == 0)
  {
    goto LABEL_11;
  }

LABEL_25:
  v13 = *(a2 + 32);
  *(this + 14) |= 0x40u;
  *(this + 32) = v13;
  v4 = *(a2 + 14);
  if ((v4 & 0x80) != 0)
  {
LABEL_12:
    v5 = *(a2 + 9);
    *(this + 14) |= 0x80u;
    *(this + 9) = v5;
    v4 = *(a2 + 14);
  }

LABEL_13:
  if ((v4 & 0xFF00) == 0)
  {
    return;
  }

  if ((v4 & 0x100) != 0)
  {
    v14 = *(a2 + 10);
    *(this + 14) |= 0x100u;
    *(this + 10) = v14;
    v4 = *(a2 + 14);
    if ((v4 & 0x200) == 0)
    {
LABEL_16:
      if ((v4 & 0x400) == 0)
      {
        return;
      }

      goto LABEL_17;
    }
  }

  else if ((v4 & 0x200) == 0)
  {
    goto LABEL_16;
  }

  v15 = *(a2 + 11);
  *(this + 14) |= 0x200u;
  *(this + 11) = v15;
  if ((*(a2 + 14) & 0x400) == 0)
  {
    return;
  }

LABEL_17:
  v6 = *(a2 + 12);
  *(this + 14) |= 0x400u;
  *(this + 12) = v6;
}

void sub_245562874(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void proto::gpsd::LtlInfo_LtlInitialParams::~LtlInfo_LtlInitialParams(proto::gpsd::LtlInfo_LtlInitialParams *this)
{
  *this = &unk_2858631E0;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2858631E0;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2858631E0;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  JUMPOUT(0x245D6AEE0);
}

uint64_t proto::gpsd::LtlInfo_LtlInitialParams::default_instance(proto::gpsd::LtlInfo_LtlInitialParams *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = proto::gpsd::LtlInfo_LtlInitialParams::default_instance_;
  if (!proto::gpsd::LtlInfo_LtlInitialParams::default_instance_)
  {
    proto::gpsd::protobuf_AddDesc_GpsdProtocol_2eproto(0, a2, a3, a4);
    return proto::gpsd::LtlInfo_LtlInitialParams::default_instance_;
  }

  return result;
}

uint64_t proto::gpsd::LtlInfo_LtlInitialParams::Clear(uint64_t this)
{
  v1 = *(this + 56);
  if (v1)
  {
    *(this + 36) = 0;
    *(this + 16) = 0;
    *(this + 24) = 0;
    *(this + 8) = 0;
    *(this + 32) = 0;
  }

  if ((v1 & 0xFF00) != 0)
  {
    *(this + 40) = 0;
    *(this + 48) = 0;
  }

  *(this + 56) = 0;
  return this;
}

uint64_t proto::gpsd::LtlInfo_LtlInitialParams::MergePartialFromCodedStream(proto::gpsd::LtlInfo_LtlInitialParams *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
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
        if (TagFallback >> 3 > 5)
        {
          break;
        }

        if (TagFallback >> 3 <= 2)
        {
          if (v7 != 1)
          {
            if (v7 != 2 || (TagFallback & 7) != 0)
            {
              goto LABEL_43;
            }

            v12 = *(a2 + 1);
            v8 = *(a2 + 2);
            goto LABEL_52;
          }

          if ((TagFallback & 7) != 0)
          {
            goto LABEL_43;
          }

          v43 = 0;
          v13 = *(a2 + 1);
          v8 = *(a2 + 2);
          if (v13 >= v8 || (v14 = *v13, (v14 & 0x80000000) != 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v43);
            if (!result)
            {
              return result;
            }

            v14 = v43;
            v15 = *(a2 + 1);
            v8 = *(a2 + 2);
          }

          else
          {
            v15 = v13 + 1;
            *(a2 + 1) = v15;
          }

          *(this + 2) = v14;
          *(this + 14) |= 1u;
          if (v15 < v8 && *v15 == 16)
          {
            v12 = v15 + 1;
            *(a2 + 1) = v12;
LABEL_52:
            v43 = 0;
            if (v12 >= v8 || (v22 = *v12, (v22 & 0x80000000) != 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v43);
              if (!result)
              {
                return result;
              }

              v22 = v43;
              v23 = *(a2 + 1);
              v8 = *(a2 + 2);
            }

            else
            {
              v23 = v12 + 1;
              *(a2 + 1) = v23;
            }

            *(this + 3) = v22;
            *(this + 14) |= 2u;
            if (v23 < v8 && *v23 == 24)
            {
              v19 = v23 + 1;
              *(a2 + 1) = v19;
LABEL_60:
              v43 = 0;
              if (v19 >= v8 || (v24 = *v19, (v24 & 0x80000000) != 0))
              {
                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v43);
                if (!result)
                {
                  return result;
                }

                v24 = v43;
                v25 = *(a2 + 1);
                v8 = *(a2 + 2);
              }

              else
              {
                v25 = v19 + 1;
                *(a2 + 1) = v25;
              }

              *(this + 4) = v24;
              *(this + 14) |= 4u;
              if (v25 < v8 && *v25 == 32)
              {
                v16 = v25 + 1;
                *(a2 + 1) = v16;
                goto LABEL_68;
              }
            }
          }
        }

        else
        {
          if (v7 == 3)
          {
            if ((TagFallback & 7) != 0)
            {
              goto LABEL_43;
            }

            v19 = *(a2 + 1);
            v8 = *(a2 + 2);
            goto LABEL_60;
          }

          if (v7 != 4)
          {
            if (v7 != 5 || (TagFallback & 7) != 0)
            {
              goto LABEL_43;
            }

            v10 = *(a2 + 1);
            v8 = *(a2 + 2);
            goto LABEL_76;
          }

          if ((TagFallback & 7) != 0)
          {
            goto LABEL_43;
          }

          v16 = *(a2 + 1);
          v8 = *(a2 + 2);
LABEL_68:
          v43 = 0;
          if (v16 >= v8 || (v26 = *v16, (v26 & 0x80000000) != 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v43);
            if (!result)
            {
              return result;
            }

            v26 = v43;
            v27 = *(a2 + 1);
            v8 = *(a2 + 2);
          }

          else
          {
            v27 = v16 + 1;
            *(a2 + 1) = v27;
          }

          *(this + 5) = v26;
          *(this + 14) |= 8u;
          if (v27 < v8 && *v27 == 40)
          {
            v10 = v27 + 1;
            *(a2 + 1) = v10;
LABEL_76:
            v43 = 0;
            if (v10 >= v8 || (v28 = *v10, (v28 & 0x80000000) != 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v43);
              if (!result)
              {
                return result;
              }

              v28 = v43;
              v29 = *(a2 + 1);
              v8 = *(a2 + 2);
            }

            else
            {
              v29 = v10 + 1;
              *(a2 + 1) = v29;
            }

            *(this + 6) = v28;
            *(this + 14) |= 0x10u;
            if (v29 < v8 && *v29 == 48)
            {
              v20 = v29 + 1;
              *(a2 + 1) = v20;
LABEL_84:
              v43 = 0;
              if (v20 >= v8 || (v30 = *v20, (v30 & 0x80000000) != 0))
              {
                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v43);
                if (!result)
                {
                  return result;
                }

                v30 = v43;
                v31 = *(a2 + 1);
                v8 = *(a2 + 2);
              }

              else
              {
                v31 = v20 + 1;
                *(a2 + 1) = v31;
              }

              *(this + 7) = v30;
              *(this + 14) |= 0x20u;
              if (v31 < v8 && *v31 == 56)
              {
                v17 = v31 + 1;
                *(a2 + 1) = v17;
                goto LABEL_92;
              }
            }
          }
        }
      }

      if (TagFallback >> 3 > 8)
      {
        if (v7 == 9)
        {
          if ((TagFallback & 7) == 0)
          {
            v21 = *(a2 + 1);
            v8 = *(a2 + 2);
            goto LABEL_108;
          }
        }

        else if (v7 == 10)
        {
          if ((TagFallback & 7) == 0)
          {
            v18 = *(a2 + 1);
            v8 = *(a2 + 2);
            goto LABEL_116;
          }
        }

        else if (v7 == 11 && (TagFallback & 7) == 0)
        {
          v11 = *(a2 + 1);
          v8 = *(a2 + 2);
          goto LABEL_124;
        }

        goto LABEL_43;
      }

      if (v7 == 6)
      {
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_43;
        }

        v20 = *(a2 + 1);
        v8 = *(a2 + 2);
        goto LABEL_84;
      }

      if (v7 != 7)
      {
        break;
      }

      if ((TagFallback & 7) != 0)
      {
        goto LABEL_43;
      }

      v17 = *(a2 + 1);
      v8 = *(a2 + 2);
LABEL_92:
      v43 = 0;
      if (v17 >= v8 || (v32 = *v17, (v32 & 0x80000000) != 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v43);
        if (!result)
        {
          return result;
        }

        v32 = v43;
        v33 = *(a2 + 1);
        v8 = *(a2 + 2);
      }

      else
      {
        v33 = v17 + 1;
        *(a2 + 1) = v33;
      }

      *(this + 32) = v32 != 0;
      *(this + 14) |= 0x40u;
      if (v33 < v8 && *v33 == 64)
      {
        v9 = v33 + 1;
        *(a2 + 1) = v9;
LABEL_100:
        v43 = 0;
        if (v9 >= v8 || (v34 = *v9, (v34 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v43);
          if (!result)
          {
            return result;
          }

          v34 = v43;
          v35 = *(a2 + 1);
          v8 = *(a2 + 2);
        }

        else
        {
          v35 = v9 + 1;
          *(a2 + 1) = v35;
        }

        *(this + 9) = v34;
        *(this + 14) |= 0x80u;
        if (v35 < v8 && *v35 == 72)
        {
          v21 = v35 + 1;
          *(a2 + 1) = v21;
LABEL_108:
          if (v21 >= v8 || (v36 = *v21, v36 < 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 10);
            if (!result)
            {
              return result;
            }

            v37 = *(a2 + 1);
            v8 = *(a2 + 2);
          }

          else
          {
            *(this + 10) = v36;
            v37 = v21 + 1;
            *(a2 + 1) = v37;
          }

          *(this + 14) |= 0x100u;
          if (v37 < v8 && *v37 == 80)
          {
            v18 = v37 + 1;
            *(a2 + 1) = v18;
LABEL_116:
            if (v18 >= v8 || (v38 = *v18, v38 < 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 11);
              if (!result)
              {
                return result;
              }

              v39 = *(a2 + 1);
              v8 = *(a2 + 2);
            }

            else
            {
              *(this + 11) = v38;
              v39 = v18 + 1;
              *(a2 + 1) = v39;
            }

            *(this + 14) |= 0x200u;
            if (v39 < v8 && *v39 == 88)
            {
              v11 = v39 + 1;
              *(a2 + 1) = v11;
LABEL_124:
              if (v11 >= v8 || (v40 = *v11, v40 < 0))
              {
                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 12);
                if (!result)
                {
                  return result;
                }

                v41 = *(a2 + 1);
                v8 = *(a2 + 2);
              }

              else
              {
                *(this + 12) = v40;
                v41 = v11 + 1;
                *(a2 + 1) = v41;
              }

              *(this + 14) |= 0x400u;
              if (v41 == v8 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
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

    if (v7 == 8 && (TagFallback & 7) == 0)
    {
      v9 = *(a2 + 1);
      v8 = *(a2 + 2);
      goto LABEL_100;
    }

LABEL_43:
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

uint64_t proto::gpsd::LtlInfo_LtlInitialParams::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 56);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(1, *(this + 8), a2, a4);
    v6 = *(v5 + 56);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_15;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(2, *(v5 + 12), a2, a4);
  v6 = *(v5 + 56);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_16;
  }

LABEL_15:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(3, *(v5 + 16), a2, a4);
  v6 = *(v5 + 56);
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_17;
  }

LABEL_16:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(4, *(v5 + 20), a2, a4);
  v6 = *(v5 + 56);
  if ((v6 & 0x10) == 0)
  {
LABEL_6:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_18;
  }

LABEL_17:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(5, *(v5 + 24), a2, a4);
  v6 = *(v5 + 56);
  if ((v6 & 0x20) == 0)
  {
LABEL_7:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_19;
  }

LABEL_18:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(6, *(v5 + 28), a2, a4);
  v6 = *(v5 + 56);
  if ((v6 & 0x40) == 0)
  {
LABEL_8:
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_20;
  }

LABEL_19:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(7, *(v5 + 32), a2, a4);
  v6 = *(v5 + 56);
  if ((v6 & 0x80) == 0)
  {
LABEL_9:
    if ((v6 & 0x100) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_21;
  }

LABEL_20:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(8, *(v5 + 36), a2, a4);
  v6 = *(v5 + 56);
  if ((v6 & 0x100) == 0)
  {
LABEL_10:
    if ((v6 & 0x200) == 0)
    {
      goto LABEL_11;
    }

LABEL_22:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xA, *(v5 + 44), a2, a4);
    if ((*(v5 + 56) & 0x400) == 0)
    {
      return this;
    }

    goto LABEL_23;
  }

LABEL_21:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(9, *(v5 + 40), a2, a4);
  v6 = *(v5 + 56);
  if ((v6 & 0x200) != 0)
  {
    goto LABEL_22;
  }

LABEL_11:
  if ((v6 & 0x400) == 0)
  {
    return this;
  }

LABEL_23:
  v7 = *(v5 + 48);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xB, v7, a2, a4);
}

uint64_t proto::gpsd::LtlInfo_LtlInitialParams::ByteSize(proto::gpsd::LtlInfo_LtlInitialParams *this, unsigned int a2)
{
  v3 = *(this + 14);
  if (!v3)
  {
    v5 = 0;
    goto LABEL_55;
  }

  if (v3)
  {
    v6 = *(this + 2);
    if ((v6 & 0x80000000) != 0)
    {
      v4 = 11;
      if ((v3 & 2) == 0)
      {
        goto LABEL_19;
      }
    }

    else if (v6 >= 0x80)
    {
      v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v6) + 1;
      v3 = *(this + 14);
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

  v7 = *(this + 3);
  if ((v7 & 0x80000000) != 0)
  {
    v8 = 11;
  }

  else if (v7 >= 0x80)
  {
    v8 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v7) + 1;
    v3 = *(this + 14);
  }

  else
  {
    v8 = 2;
  }

  v4 += v8;
LABEL_19:
  if ((v3 & 4) != 0)
  {
    v9 = *(this + 4);
    if ((v9 & 0x80000000) != 0)
    {
      v10 = 11;
    }

    else if (v9 >= 0x80)
    {
      v10 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v9) + 1;
      v3 = *(this + 14);
    }

    else
    {
      v10 = 2;
    }

    v4 += v10;
    if ((v3 & 8) == 0)
    {
LABEL_21:
      if ((v3 & 0x10) == 0)
      {
        goto LABEL_22;
      }

      goto LABEL_36;
    }
  }

  else if ((v3 & 8) == 0)
  {
    goto LABEL_21;
  }

  v11 = *(this + 5);
  if ((v11 & 0x80000000) != 0)
  {
    v12 = 11;
  }

  else if (v11 >= 0x80)
  {
    v12 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v11) + 1;
    v3 = *(this + 14);
  }

  else
  {
    v12 = 2;
  }

  v4 += v12;
  if ((v3 & 0x10) == 0)
  {
LABEL_22:
    if ((v3 & 0x20) == 0)
    {
      goto LABEL_48;
    }

    goto LABEL_42;
  }

LABEL_36:
  v13 = *(this + 6);
  if ((v13 & 0x80000000) != 0)
  {
    v14 = 11;
  }

  else if (v13 >= 0x80)
  {
    v14 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v13) + 1;
    v3 = *(this + 14);
  }

  else
  {
    v14 = 2;
  }

  v4 += v14;
  if ((v3 & 0x20) != 0)
  {
LABEL_42:
    v15 = *(this + 7);
    if ((v15 & 0x80000000) != 0)
    {
      v16 = 11;
    }

    else if (v15 >= 0x80)
    {
      v16 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v15) + 1;
      v3 = *(this + 14);
    }

    else
    {
      v16 = 2;
    }

    v4 += v16;
  }

LABEL_48:
  v5 = ((v3 >> 5) & 2) + v4;
  if ((v3 & 0x80) != 0)
  {
    v17 = *(this + 9);
    if ((v17 & 0x80000000) != 0)
    {
      v18 = 11;
    }

    else if (v17 >= 0x80)
    {
      v18 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v17) + 1;
      v3 = *(this + 14);
    }

    else
    {
      v18 = 2;
    }

    v5 = (v18 + v5);
  }

LABEL_55:
  if ((v3 & 0xFF00) == 0)
  {
    goto LABEL_72;
  }

  if ((v3 & 0x100) != 0)
  {
    v19 = *(this + 10);
    if (v19 >= 0x80)
    {
      v20 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v19) + 1;
      v3 = *(this + 14);
    }

    else
    {
      v20 = 2;
    }

    v5 = (v20 + v5);
    if ((v3 & 0x200) == 0)
    {
LABEL_58:
      if ((v3 & 0x400) == 0)
      {
        goto LABEL_72;
      }

      goto LABEL_68;
    }
  }

  else if ((v3 & 0x200) == 0)
  {
    goto LABEL_58;
  }

  v21 = *(this + 11);
  if (v21 >= 0x80)
  {
    v22 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v21) + 1;
    v3 = *(this + 14);
  }

  else
  {
    v22 = 2;
  }

  v5 = (v22 + v5);
  if ((v3 & 0x400) != 0)
  {
LABEL_68:
    v23 = *(this + 12);
    if (v23 >= 0x80)
    {
      v24 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v23) + 1;
    }

    else
    {
      v24 = 2;
    }

    v5 = (v24 + v5);
  }

LABEL_72:
  *(this + 13) = v5;
  return v5;
}

void proto::gpsd::LtlInfo_LtlInitialParams::CheckTypeAndMergeFrom(proto::gpsd::LtlInfo_LtlInitialParams *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  proto::gpsd::LtlInfo_LtlInitialParams::MergeFrom(this, lpsrc);
}

void proto::gpsd::LtlInfo_LtlInitialParams::CopyFrom(proto::gpsd::LtlInfo_LtlInitialParams *this, const proto::gpsd::LtlInfo_LtlInitialParams *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    proto::gpsd::LtlInfo_LtlInitialParams::MergeFrom(this, a2);
  }
}

uint64_t proto::gpsd::LtlInfo_LtlInitialParams::Swap(uint64_t this, proto::gpsd::LtlInfo_LtlInitialParams *a2)
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
    LOBYTE(v7) = *(this + 32);
    *(this + 32) = *(a2 + 32);
    *(a2 + 32) = v7;
    v8 = *(this + 36);
    *(this + 36) = *(a2 + 9);
    *(a2 + 9) = v8;
    v9 = *(this + 40);
    *(this + 40) = *(a2 + 10);
    *(a2 + 10) = v9;
    v10 = *(this + 44);
    *(this + 44) = *(a2 + 11);
    *(a2 + 11) = v10;
    v11 = *(this + 48);
    *(this + 48) = *(a2 + 12);
    *(a2 + 12) = v11;
    v12 = *(this + 56);
    *(this + 56) = *(a2 + 14);
    *(a2 + 14) = v12;
    v13 = *(this + 52);
    *(this + 52) = *(a2 + 13);
    *(a2 + 13) = v13;
  }

  return this;
}

double proto::gpsd::LtlInfo::SharedCtor(proto::gpsd::LtlInfo *this)
{
  *(this + 8) = 0;
  result = 0.0;
  *(this + 12) = 0u;
  *(this + 28) = 0u;
  *(this + 44) = 0u;
  return result;
}

proto::gpsd::LtlInfo *proto::gpsd::LtlInfo::LtlInfo(proto::gpsd::LtlInfo *this, const proto::gpsd::LtlInfo *a2)
{
  *this = &unk_285863258;
  *(this + 8) = 0;
  *(this + 12) = 0u;
  *(this + 28) = 0u;
  *(this + 44) = 0u;
  proto::gpsd::LtlInfo::MergeFrom(this, a2);
  return this;
}

void proto::gpsd::LtlInfo::~LtlInfo(proto::gpsd::LtlInfo *this)
{
  *this = &unk_285863258;
  proto::gpsd::LtlInfo::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_285863258;
  proto::gpsd::LtlInfo::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_285863258;
  proto::gpsd::LtlInfo::SharedDtor(this);
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  JUMPOUT(0x245D6AEE0);
}

void *proto::gpsd::LtlInfo::SharedDtor(void *this)
{
  if (proto::gpsd::LtlInfo::default_instance_ != this)
  {
    v1 = this;
    v2 = this[2];
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }

    v3 = v1[3];
    if (v3)
    {
      (*(*v3 + 8))(v3);
    }

    v4 = v1[4];
    if (v4)
    {
      (*(*v4 + 8))(v4);
    }

    this = v1[5];
    if (this)
    {
      v5 = *(*this + 8);

      return v5();
    }
  }

  return this;
}

uint64_t proto::gpsd::LtlInfo::MergePartialFromCodedStream(proto::gpsd::LtlInfo *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
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
          if (TagFallback >> 3 > 3)
          {
            break;
          }

          if (v7 == 1)
          {
            if ((TagFallback & 7) != 0)
            {
              goto LABEL_30;
            }

            v52 = 0;
            v11 = *(a2 + 1);
            v9 = *(a2 + 2);
            if (v11 >= v9 || (v12 = *v11, (v12 & 0x80000000) != 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v52);
              if (!result)
              {
                return result;
              }

              v12 = v52;
              v13 = *(a2 + 1);
              v9 = *(a2 + 2);
            }

            else
            {
              v13 = v11 + 1;
              *(a2 + 1) = v13;
            }

            *(this + 8) = v12 != 0;
            *(this + 14) |= 1u;
            if (v13 < v9 && *v13 == 16)
            {
              v14 = v13 + 1;
              *(a2 + 1) = v14;
              goto LABEL_39;
            }
          }

          else
          {
            if (v7 != 2)
            {
              if (v7 != 3 || (TagFallback & 7) != 0)
              {
                goto LABEL_30;
              }

              v10 = *(a2 + 1);
              v9 = *(a2 + 2);
              goto LABEL_47;
            }

            if ((TagFallback & 7) != 0)
            {
              goto LABEL_30;
            }

            v14 = *(a2 + 1);
            v9 = *(a2 + 2);
LABEL_39:
            v52 = 0;
            if (v14 >= v9 || (v16 = *v14, (v16 & 0x80000000) != 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v52);
              if (!result)
              {
                return result;
              }

              v16 = v52;
              v17 = *(a2 + 1);
              v9 = *(a2 + 2);
            }

            else
            {
              v17 = v14 + 1;
              *(a2 + 1) = v17;
            }

            *(this + 3) = v16;
            *(this + 14) |= 2u;
            if (v17 < v9 && *v17 == 24)
            {
              v10 = v17 + 1;
              *(a2 + 1) = v10;
LABEL_47:
              v52 = 0;
              if (v10 >= v9 || (v18 = *v10, (v18 & 0x80000000) != 0))
              {
                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v52);
                if (!result)
                {
                  return result;
                }

                v18 = v52;
              }

              else
              {
                *(a2 + 1) = v10 + 1;
              }

              if (v18 <= 4)
              {
                *(this + 14) |= 4u;
                *(this + 12) = v18;
              }

              v19 = *(a2 + 1);
              if (v19 < *(a2 + 2) && *v19 == 34)
              {
                *(a2 + 1) = v19 + 1;
                goto LABEL_57;
              }
            }
          }
        }

        if (TagFallback >> 3 <= 5)
        {
          break;
        }

        if (v7 == 6)
        {
          if (v8 == 2)
          {
            goto LABEL_85;
          }

          goto LABEL_30;
        }

        if (v7 != 7 || v8 != 2)
        {
          goto LABEL_30;
        }

LABEL_99:
        *(this + 14) |= 0x40u;
        v45 = *(this + 5);
        if (!v45)
        {
          operator new();
        }

        v52 = 0;
        v46 = *(a2 + 1);
        if (v46 >= *(a2 + 2) || *v46 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v52))
          {
            return 0;
          }
        }

        else
        {
          v52 = *v46;
          *(a2 + 1) = v46 + 1;
        }

        v47 = *(a2 + 14);
        v48 = *(a2 + 15);
        *(a2 + 14) = v47 + 1;
        if (v47 >= v48)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
        if (!proto::gpsd::LtlInfo_LtlRacPmicAdcPreCalData::MergePartialFromCodedStream(v45, a2, v49) || *(a2 + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
        v50 = *(a2 + 14);
        v26 = __OFSUB__(v50, 1);
        v51 = v50 - 1;
        if (v51 < 0 == v26)
        {
          *(a2 + 14) = v51;
        }

        if (*(a2 + 1) == *(a2 + 2) && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
        {
          *(a2 + 8) = 0;
          result = 1;
          *(a2 + 36) = 1;
          return result;
        }
      }

      if (v7 != 4)
      {
        break;
      }

      if (v8 != 2)
      {
        goto LABEL_30;
      }

LABEL_57:
      *(this + 14) |= 8u;
      v20 = *(this + 2);
      if (!v20)
      {
        operator new();
      }

      v52 = 0;
      v21 = *(a2 + 1);
      if (v21 >= *(a2 + 2) || *v21 < 0)
      {
        if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v52))
        {
          return 0;
        }
      }

      else
      {
        v52 = *v21;
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
      if (!proto::gpsd::LtlInfo_LtlInitialParams::MergePartialFromCodedStream(v20, a2, v24) || *(a2 + 36) != 1)
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
LABEL_71:
        *(this + 14) |= 0x10u;
        v29 = *(this + 3);
        if (!v29)
        {
          operator new();
        }

        v52 = 0;
        v30 = *(a2 + 1);
        if (v30 >= *(a2 + 2) || *v30 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v52))
          {
            return 0;
          }
        }

        else
        {
          v52 = *v30;
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
        if (!proto::gpsd::LtlInfo_LtlLutParams::MergePartialFromCodedStream(v29, a2, v33) || *(a2 + 36) != 1)
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

        v36 = *(a2 + 1);
        if (v36 < *(a2 + 2) && *v36 == 50)
        {
          *(a2 + 1) = v36 + 1;
LABEL_85:
          *(this + 14) |= 0x20u;
          v37 = *(this + 4);
          if (!v37)
          {
            operator new();
          }

          v52 = 0;
          v38 = *(a2 + 1);
          if (v38 >= *(a2 + 2) || *v38 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v52))
            {
              return 0;
            }
          }

          else
          {
            v52 = *v38;
            *(a2 + 1) = v38 + 1;
          }

          v39 = *(a2 + 14);
          v40 = *(a2 + 15);
          *(a2 + 14) = v39 + 1;
          if (v39 >= v40)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
          if (!proto::gpsd::LtlInfo_LtlCurrentSrcCalibData::MergePartialFromCodedStream(v37, a2, v41) || *(a2 + 36) != 1)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
          v42 = *(a2 + 14);
          v26 = __OFSUB__(v42, 1);
          v43 = v42 - 1;
          if (v43 < 0 == v26)
          {
            *(a2 + 14) = v43;
          }

          v44 = *(a2 + 1);
          if (v44 < *(a2 + 2) && *v44 == 58)
          {
            *(a2 + 1) = v44 + 1;
            goto LABEL_99;
          }
        }
      }
    }

    if (v7 == 5 && v8 == 2)
    {
      goto LABEL_71;
    }

LABEL_30:
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

uint64_t proto::gpsd::LtlInfo::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 56);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(1, *(this + 8), a2, a4);
    v6 = *(v5 + 56);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(2, *(v5 + 12), a2, a4);
  v6 = *(v5 + 56);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_12;
  }

LABEL_11:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(3, *(v5 + 48), a2, a4);
  v6 = *(v5 + 56);
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_15;
  }

LABEL_12:
  v7 = *(v5 + 16);
  if (!v7)
  {
    v7 = *(proto::gpsd::LtlInfo::default_instance_ + 16);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(4, v7, a2, a4);
  v6 = *(v5 + 56);
  if ((v6 & 0x10) == 0)
  {
LABEL_6:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_18;
  }

LABEL_15:
  v8 = *(v5 + 24);
  if (!v8)
  {
    v8 = *(proto::gpsd::LtlInfo::default_instance_ + 24);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(5, v8, a2, a4);
  v6 = *(v5 + 56);
  if ((v6 & 0x20) == 0)
  {
LABEL_7:
    if ((v6 & 0x40) == 0)
    {
      return this;
    }

    goto LABEL_21;
  }

LABEL_18:
  v9 = *(v5 + 32);
  if (!v9)
  {
    v9 = *(proto::gpsd::LtlInfo::default_instance_ + 32);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(6, v9, a2, a4);
  if ((*(v5 + 56) & 0x40) != 0)
  {
LABEL_21:
    v10 = *(v5 + 40);
    if (!v10)
    {
      v10 = *(proto::gpsd::LtlInfo::default_instance_ + 40);
    }

    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(7, v10, a2, a4);
  }

  return this;
}

uint64_t proto::gpsd::LtlInfo::ByteSize(proto::gpsd::LtlInfo *this, unsigned int a2)
{
  v3 = *(this + 14);
  if (!v3)
  {
    v4 = 0;
    goto LABEL_46;
  }

  v4 = 2 * (v3 & 1u);
  if ((v3 & 2) != 0)
  {
    v5 = *(this + 3);
    if ((v5 & 0x80000000) != 0)
    {
      v6 = 11;
    }

    else if (v5 >= 0x80)
    {
      v6 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5) + 1;
      v3 = *(this + 14);
    }

    else
    {
      v6 = 2;
    }

    v4 = (v6 + v4);
    if ((v3 & 4) == 0)
    {
LABEL_4:
      if ((v3 & 8) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_22;
    }
  }

  else if ((v3 & 4) == 0)
  {
    goto LABEL_4;
  }

  v7 = *(this + 12);
  if ((v7 & 0x80000000) != 0)
  {
    v8 = 11;
  }

  else if (v7 >= 0x80)
  {
    v8 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v7) + 1;
    v3 = *(this + 14);
  }

  else
  {
    v8 = 2;
  }

  v4 = (v8 + v4);
  if ((v3 & 8) == 0)
  {
LABEL_5:
    if ((v3 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_28;
  }

LABEL_22:
  v9 = *(this + 2);
  if (!v9)
  {
    v9 = *(proto::gpsd::LtlInfo::default_instance_ + 16);
  }

  v10 = proto::gpsd::LtlInfo_LtlInitialParams::ByteSize(v9, a2);
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
  v3 = *(this + 14);
  if ((v3 & 0x10) == 0)
  {
LABEL_6:
    if ((v3 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_34;
  }

LABEL_28:
  v13 = *(this + 3);
  if (!v13)
  {
    v13 = *(proto::gpsd::LtlInfo::default_instance_ + 24);
  }

  v14 = proto::gpsd::LtlInfo_LtlLutParams::ByteSize(v13, a2);
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
  v3 = *(this + 14);
  if ((v3 & 0x20) == 0)
  {
LABEL_7:
    if ((v3 & 0x40) == 0)
    {
      goto LABEL_46;
    }

    goto LABEL_40;
  }

LABEL_34:
  v17 = *(this + 4);
  if (!v17)
  {
    v17 = *(proto::gpsd::LtlInfo::default_instance_ + 32);
  }

  v18 = proto::gpsd::LtlInfo_LtlCurrentSrcCalibData::ByteSize(v17, a2);
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
  if ((*(this + 14) & 0x40) != 0)
  {
LABEL_40:
    v21 = *(this + 5);
    if (!v21)
    {
      v21 = *(proto::gpsd::LtlInfo::default_instance_ + 40);
    }

    v22 = proto::gpsd::LtlInfo_LtlRacPmicAdcPreCalData::ByteSize(v21, a2);
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

LABEL_46:
  *(this + 13) = v4;
  return v4;
}

void proto::gpsd::LtlInfo::CheckTypeAndMergeFrom(proto::gpsd::LtlInfo *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  proto::gpsd::LtlInfo::MergeFrom(this, lpsrc);
}

void proto::gpsd::LtlInfo::CopyFrom(proto::gpsd::LtlInfo *this, const proto::gpsd::LtlInfo *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    proto::gpsd::LtlInfo::MergeFrom(this, a2);
  }
}

uint64_t proto::gpsd::LtlInfo::Swap(uint64_t this, proto::gpsd::LtlInfo *a2)
{
  if (a2 != this)
  {
    v2 = *(this + 8);
    *(this + 8) = *(a2 + 8);
    *(a2 + 8) = v2;
    v3 = *(this + 12);
    *(this + 12) = *(a2 + 3);
    *(a2 + 3) = v3;
    v4 = *(this + 48);
    *(this + 48) = *(a2 + 12);
    *(a2 + 12) = v4;
    v5 = *(this + 16);
    *(this + 16) = *(a2 + 2);
    *(a2 + 2) = v5;
    v6 = *(this + 24);
    *(this + 24) = *(a2 + 3);
    *(a2 + 3) = v6;
    v7 = *(this + 32);
    *(this + 32) = *(a2 + 4);
    *(a2 + 4) = v7;
    v8 = *(this + 40);
    *(this + 40) = *(a2 + 5);
    *(a2 + 5) = v8;
    LODWORD(v8) = *(this + 56);
    *(this + 56) = *(a2 + 14);
    *(a2 + 14) = v8;
    LODWORD(v8) = *(this + 52);
    *(this + 52) = *(a2 + 13);
    *(a2 + 13) = v8;
  }

  return this;
}

uint64_t proto::gpsd::Exception::SharedCtor(uint64_t this)
{
  *(this + 8) = 0;
  *(this + 16) = 0;
  *(this + 24) = 0;
  return this;
}

proto::gpsd::Exception *proto::gpsd::Exception::Exception(proto::gpsd::Exception *this, const proto::gpsd::Exception *a2)
{
  *(this + 1) = 0;
  *(this + 2) = 0;
  *this = &unk_2858632D0;
  *(this + 6) = 0;
  proto::gpsd::Exception::MergeFrom(this, a2);
  return this;
}

void proto::gpsd::Exception::~Exception(proto::gpsd::Exception *this)
{
  *this = &unk_2858632D0;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2858632D0;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2858632D0;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  JUMPOUT(0x245D6AEE0);
}

uint64_t proto::gpsd::Exception::MergePartialFromCodedStream(proto::gpsd::Exception *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
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
      if (TagFallback >> 3 == 3)
      {
        if ((TagFallback & 7) == 0)
        {
          v13 = *(a2 + 1);
          v8 = *(a2 + 2);
          goto LABEL_33;
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

      v21 = 0;
      v9 = *(a2 + 1);
      v8 = *(a2 + 2);
      if (v9 >= v8 || (v10 = *v9, (v10 & 0x80000000) != 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v21);
        if (!result)
        {
          return result;
        }

        v10 = v21;
        v11 = *(a2 + 1);
        v8 = *(a2 + 2);
      }

      else
      {
        v11 = v9 + 1;
        *(a2 + 1) = v11;
      }

      *(this + 2) = v10;
      *(this + 6) |= 1u;
      if (v11 < v8 && *v11 == 16)
      {
        v12 = v11 + 1;
        *(a2 + 1) = v12;
LABEL_25:
        v20 = 0;
        if (v12 >= v8 || (v14 = *v12, (v14 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v20);
          if (!result)
          {
            return result;
          }

          v14 = v20;
          v15 = *(a2 + 1);
          v8 = *(a2 + 2);
        }

        else
        {
          v15 = v12 + 1;
          *(a2 + 1) = v15;
        }

        *(this + 3) = v14;
        *(this + 6) |= 2u;
        if (v15 < v8 && *v15 == 24)
        {
          v13 = v15 + 1;
          *(a2 + 1) = v13;
LABEL_33:
          v19 = 0;
          if (v13 >= v8 || (v16 = *v13, (v16 & 0x80000000) != 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v19);
            if (!result)
            {
              return result;
            }

            v16 = v19;
            v17 = *(a2 + 1);
            v8 = *(a2 + 2);
          }

          else
          {
            v17 = v13 + 1;
            *(a2 + 1) = v17;
          }

          *(this + 4) = v16;
          *(this + 6) |= 4u;
          if (v17 == v8 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
          {
            *(a2 + 8) = 0;
            result = 1;
            *(a2 + 36) = 1;
            return result;
          }
        }
      }
    }

    if ((TagFallback & 7) == 0)
    {
      v12 = *(a2 + 1);
      v8 = *(a2 + 2);
      goto LABEL_25;
    }

LABEL_16:
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

unsigned int *proto::gpsd::Exception::SerializeWithCachedSizes(unsigned int *this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = this[6];
  if ((v6 & 1) == 0)
  {
    if ((v6 & 2) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(2, v5[3], a2, a4);
    if ((v5[6] & 4) == 0)
    {
      return this;
    }

    goto LABEL_7;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(1, this[2], a2, a4);
  v6 = v5[6];
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
  v7 = v5[4];

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(3, v7, a2, a4);
}

uint64_t proto::gpsd::Exception::ByteSize(proto::gpsd::Exception *this, unsigned int a2)
{
  LOBYTE(v3) = *(this + 24);
  if (!v3)
  {
    v4 = 0;
    goto LABEL_26;
  }

  if (*(this + 24))
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
      v3 = *(this + 6);
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
    if ((*(this + 24) & 2) == 0)
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
    v3 = *(this + 6);
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
    }

    else
    {
      v9 = 2;
    }

    v4 = (v9 + v4);
  }

LABEL_26:
  *(this + 5) = v4;
  return v4;
}

void proto::gpsd::Exception::CheckTypeAndMergeFrom(proto::gpsd::Exception *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  proto::gpsd::Exception::MergeFrom(this, lpsrc);
}

void proto::gpsd::Exception::CopyFrom(proto::gpsd::Exception *this, const proto::gpsd::Exception *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    proto::gpsd::Exception::MergeFrom(this, a2);
  }
}

proto::gpsd::Exception *proto::gpsd::Exception::Swap(proto::gpsd::Exception *this, proto::gpsd::Exception *a2)
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
    v5 = *(this + 6);
    *(this + 6) = *(a2 + 6);
    *(a2 + 6) = v5;
    v6 = *(this + 5);
    *(this + 5) = *(a2 + 5);
    *(a2 + 5) = v6;
  }

  return this;
}

double proto::gpsd::AskBasebandReset::SharedCtor(proto::gpsd::AskBasebandReset *this)
{
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 3) = MEMORY[0x277D82C30];
  *(this + 4) = 0;
  return result;
}

proto::gpsd::AskBasebandReset *proto::gpsd::AskBasebandReset::AskBasebandReset(proto::gpsd::AskBasebandReset *this, const proto::gpsd::AskBasebandReset *a2)
{
  *this = &unk_285863348;
  *(this + 1) = 0;
  v3 = MEMORY[0x277D82C30];
  *(this + 2) = 0;
  *(this + 3) = v3;
  *(this + 4) = 0;
  proto::gpsd::AskBasebandReset::MergeFrom(this, a2);
  return this;
}

void proto::gpsd::AskBasebandReset::~AskBasebandReset(proto::gpsd::AskBasebandReset *this)
{
  *this = &unk_285863348;
  proto::gpsd::AskBasebandReset::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_285863348;
  proto::gpsd::AskBasebandReset::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_285863348;
  proto::gpsd::AskBasebandReset::SharedDtor(this);
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  JUMPOUT(0x245D6AEE0);
}

uint64_t proto::gpsd::AskBasebandReset::SharedDtor(uint64_t this)
{
  v1 = *(this + 24);
  if (v1 != MEMORY[0x277D82C30] && v1 != 0)
  {
    if (*(v1 + 23) < 0)
    {
      operator delete(*v1);
    }

    JUMPOUT(0x245D6AEE0);
  }

  return this;
}

uint64_t proto::gpsd::AskBasebandReset::MergePartialFromCodedStream(proto::gpsd::AskBasebandReset *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
{
  v5 = MEMORY[0x277D82C30];
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
          if (TagFallback >> 3 != 3)
          {
            break;
          }

          if (v9 != 2)
          {
            goto LABEL_21;
          }

          v15 = *(this + 9);
LABEL_30:
          *(this + 9) = v15 | 4;
          if (*(this + 3) == v5)
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

        if (v8 != 2)
        {
          break;
        }

        if ((TagFallback & 7) != 0)
        {
          goto LABEL_21;
        }

        v12 = *(a2 + 1);
        v10 = *(a2 + 2);
LABEL_17:
        v17 = 0;
        if (v12 >= v10 || (v13 = *v12, (v13 & 0x8000000000000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, &v17);
          if (!result)
          {
            return result;
          }

          v13 = v17;
          v14 = *(a2 + 1);
          v10 = *(a2 + 2);
        }

        else
        {
          v14 = v12 + 1;
          *(a2 + 1) = v14;
        }

        *(this + 2) = v13;
        v15 = *(this + 9) | 2;
        *(this + 9) = v15;
        if (v14 < v10 && *v14 == 26)
        {
          *(a2 + 1) = v14 + 1;
          goto LABEL_30;
        }
      }

      if (v8 != 1 || v9 != 1)
      {
        break;
      }

      v17 = 0;
      if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, &v17) & 1) == 0)
      {
        return 0;
      }

      *(this + 1) = v17;
      *(this + 9) |= 1u;
      v11 = *(a2 + 1);
      v10 = *(a2 + 2);
      if (v11 < v10 && *v11 == 16)
      {
        v12 = v11 + 1;
        *(a2 + 1) = v12;
        goto LABEL_17;
      }
    }

LABEL_21:
    if (v9 == 4)
    {
      return 1;
    }
  }

  while ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(a2, TagFallback) & 1) != 0);
  return 0;
}

uint64_t proto::gpsd::AskBasebandReset::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
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
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt64(2, *(v5 + 16), a2, a4);
    if ((*(v5 + 36) & 4) == 0)
    {
      return this;
    }

    goto LABEL_7;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(1, a2, *(this + 8), a3);
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

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
}

uint64_t proto::gpsd::AskBasebandReset::ByteSize(wireless_diagnostics::google::protobuf::io::CodedOutputStream **this, unint64_t a2)
{
  v3 = *(this + 36);
  if (*(this + 36))
  {
    v4 = (v3 << 31 >> 31) & 9;
    if ((v3 & 2) != 0)
    {
      v4 = v4 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(this[2]) + 1;
      v3 = *(this + 9);
    }

    if ((v3 & 4) != 0)
    {
      v5 = this[3];
      v6 = *(v5 + 23);
      v7 = v6;
      v8 = *(v5 + 1);
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
        v8 = *(v5 + 1);
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

      v4 = (v4 + v10 + v6 + 1);
    }
  }

  else
  {
    v4 = 0;
  }

  *(this + 8) = v4;
  return v4;
}

void proto::gpsd::AskBasebandReset::CheckTypeAndMergeFrom(proto::gpsd::AskBasebandReset *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  proto::gpsd::AskBasebandReset::MergeFrom(this, lpsrc);
}

void proto::gpsd::AskBasebandReset::CopyFrom(proto::gpsd::AskBasebandReset *this, const proto::gpsd::AskBasebandReset *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    proto::gpsd::AskBasebandReset::MergeFrom(this, a2);
  }
}

double proto::gpsd::AskBasebandReset::Swap(proto::gpsd::AskBasebandReset *this, proto::gpsd::AskBasebandReset *a2)
{
  if (a2 != this)
  {
    v2 = *(this + 2);
    v3 = *(this + 3);
    v4 = *(a2 + 3);
    *(this + 2) = *(a2 + 2);
    *(this + 3) = v4;
    result = *(this + 1);
    *(this + 1) = *(a2 + 1);
    *(a2 + 1) = result;
    *(a2 + 2) = v2;
    *(a2 + 3) = v3;
    LODWORD(v2) = *(this + 9);
    *(this + 9) = *(a2 + 9);
    *(a2 + 9) = v2;
    LODWORD(v2) = *(this + 8);
    *(this + 8) = *(a2 + 8);
    *(a2 + 8) = v2;
  }

  return result;
}

void *proto::gpsd::LogEntry::SharedCtor(void *this)
{
  v1 = MEMORY[0x277D82C30];
  this[1] = 0;
  this[2] = v1;
  this[5] = 0;
  this[6] = 0;
  this[3] = 0;
  this[4] = 0;
  return this;
}

proto::gpsd::LogEntry *proto::gpsd::LogEntry::LogEntry(proto::gpsd::LogEntry *this, const proto::gpsd::LogEntry *a2)
{
  *(this + 6) = 0;
  *this = &unk_2858633C0;
  *(this + 1) = 0;
  *(this + 2) = MEMORY[0x277D82C30];
  *(this + 3) = 0;
  *(this + 4) = 0;
  *(this + 5) = 0;
  proto::gpsd::LogEntry::MergeFrom(this, a2);
  return this;
}

void proto::gpsd::LogEntry::MergeFrom(proto::gpsd::LogEntry *this, const proto::gpsd::LogEntry *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v14);
  }

  LOBYTE(v4) = *(a2 + 52);
  if (!v4)
  {
    return;
  }

  if (*(a2 + 52))
  {
    v5 = *(a2 + 1);
    *(this + 13) |= 1u;
    *(this + 1) = v5;
    v4 = *(a2 + 13);
    if ((v4 & 2) == 0)
    {
LABEL_6:
      if ((v4 & 4) == 0)
      {
        goto LABEL_7;
      }

LABEL_14:
      *(this + 13) |= 4u;
      v8 = *(this + 3);
      if (!v8)
      {
        operator new();
      }

      v9 = *(a2 + 3);
      if (!v9)
      {
        v9 = *(proto::gpsd::LogEntry::default_instance_ + 24);
      }

      proto::gpsd::Request::MergeFrom(v8, v9);
      v4 = *(a2 + 13);
      if ((v4 & 8) == 0)
      {
LABEL_8:
        if ((v4 & 0x10) == 0)
        {
          return;
        }

        goto LABEL_24;
      }

      goto LABEL_19;
    }
  }

  else if ((*(a2 + 52) & 2) == 0)
  {
    goto LABEL_6;
  }

  v6 = *(a2 + 2);
  *(this + 13) |= 2u;
  v7 = *(this + 2);
  if (v7 == MEMORY[0x277D82C30])
  {
    operator new();
  }

  std::string::operator=(v7, v6);
  v4 = *(a2 + 13);
  if ((v4 & 4) != 0)
  {
    goto LABEL_14;
  }

LABEL_7:
  if ((v4 & 8) == 0)
  {
    goto LABEL_8;
  }

LABEL_19:
  *(this + 13) |= 8u;
  v10 = *(this + 4);
  if (!v10)
  {
    operator new();
  }

  v11 = *(a2 + 4);
  if (!v11)
  {
    v11 = *(proto::gpsd::LogEntry::default_instance_ + 32);
  }

  proto::gpsd::Response::MergeFrom(v10, v11);
  if ((*(a2 + 13) & 0x10) != 0)
  {
LABEL_24:
    *(this + 13) |= 0x10u;
    v12 = *(this + 5);
    if (!v12)
    {
      operator new();
    }

    v13 = *(a2 + 5);
    if (!v13)
    {
      v13 = *(proto::gpsd::LogEntry::default_instance_ + 40);
    }

    proto::gpsd::Indication::MergeFrom(v12, v13);
  }
}

void sub_245565638(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void proto::gpsd::LogEntry::~LogEntry(proto::gpsd::LogEntry *this)
{
  *this = &unk_2858633C0;
  proto::gpsd::LogEntry::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2858633C0;
  proto::gpsd::LogEntry::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2858633C0;
  proto::gpsd::LogEntry::SharedDtor(this);
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  JUMPOUT(0x245D6AEE0);
}

void *proto::gpsd::LogEntry::SharedDtor(void *this)
{
  v1 = this;
  v2 = this[2];
  if (v2 != MEMORY[0x277D82C30] && v2 != 0)
  {
    if (*(v2 + 23) < 0)
    {
      operator delete(*v2);
    }

    this = MEMORY[0x245D6AEE0](v2, 0x1012C40EC159624);
  }

  if (proto::gpsd::LogEntry::default_instance_ != v1)
  {
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

uint64_t proto::gpsd::LogEntry::default_instance(proto::gpsd::LogEntry *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = proto::gpsd::LogEntry::default_instance_;
  if (!proto::gpsd::LogEntry::default_instance_)
  {
    proto::gpsd::protobuf_AddDesc_GpsdProtocol_2eproto(0, a2, a3, a4);
    return proto::gpsd::LogEntry::default_instance_;
  }

  return result;
}

uint64_t proto::gpsd::LogEntry::Clear(uint64_t this)
{
  v1 = this;
  v2 = *(this + 52);
  if (v2)
  {
    *(this + 8) = 0;
    if ((v2 & 2) != 0)
    {
      v3 = *(this + 16);
      if (v3 != MEMORY[0x277D82C30])
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

    v4 = *(this + 52);
    if ((v4 & 4) != 0)
    {
      this = *(this + 24);
      if (this)
      {
        this = proto::gpsd::Request::Clear(this);
        v4 = *(v1 + 52);
      }
    }

    if ((v4 & 8) != 0)
    {
      v5 = *(v1 + 32);
      if (v5)
      {
        if (*(v5 + 28))
        {
          *(v5 + 8) = 0;
          *(v5 + 16) = 0;
        }

        *(v5 + 28) = 0;
        v4 = *(v1 + 52);
      }
    }

    if ((v4 & 0x10) != 0)
    {
      this = *(v1 + 40);
      if (this)
      {
        this = proto::gpsd::Indication::Clear(this);
      }
    }
  }

  *(v1 + 52) = 0;
  return this;
}