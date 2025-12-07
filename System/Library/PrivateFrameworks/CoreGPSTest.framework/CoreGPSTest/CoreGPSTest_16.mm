uint64_t proto::gpsd::LogEntry::MergePartialFromCodedStream(proto::gpsd::LogEntry *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
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
          if (TagFallback >> 3 <= 4)
          {
            break;
          }

          if (v8 == 5)
          {
            if (v9 != 2)
            {
              goto LABEL_22;
            }

            goto LABEL_39;
          }

          if (v8 == 6)
          {
            if (v9 != 2)
            {
              goto LABEL_22;
            }

LABEL_53:
            *(this + 13) |= 8u;
            v26 = *(this + 4);
            if (!v26)
            {
              operator new();
            }

            v42 = 0;
            v27 = *(a2 + 1);
            if (v27 >= *(a2 + 2) || *v27 < 0)
            {
              if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v42))
              {
                return 0;
              }
            }

            else
            {
              v42 = *v27;
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
            if (!proto::gpsd::Response::MergePartialFromCodedStream(v26, a2, v30) || *(a2 + 36) != 1)
            {
              return 0;
            }

            wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
            v31 = *(a2 + 14);
            v23 = __OFSUB__(v31, 1);
            v32 = v31 - 1;
            if (v32 < 0 == v23)
            {
              *(a2 + 14) = v32;
            }

            v33 = *(a2 + 1);
            if (v33 < *(a2 + 2) && *v33 == 58)
            {
              *(a2 + 1) = v33 + 1;
              goto LABEL_67;
            }
          }

          else
          {
            if (v8 != 7 || v9 != 2)
            {
              goto LABEL_22;
            }

LABEL_67:
            *(this + 13) |= 0x10u;
            v34 = *(this + 5);
            if (!v34)
            {
              operator new();
            }

            v43 = 0;
            v35 = *(a2 + 1);
            if (v35 >= *(a2 + 2) || *v35 < 0)
            {
              if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v43))
              {
                return 0;
              }
            }

            else
            {
              v43 = *v35;
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
            if (!proto::gpsd::Indication::MergePartialFromCodedStream(v34, a2, v38) || *(a2 + 36) != 1)
            {
              return 0;
            }

            wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
            v39 = *(a2 + 14);
            v23 = __OFSUB__(v39, 1);
            v40 = v39 - 1;
            if (v40 < 0 == v23)
            {
              *(a2 + 14) = v40;
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

        if (v8 != 1)
        {
          break;
        }

        if ((TagFallback & 7) != 0)
        {
          goto LABEL_22;
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

        v10 = *(this + 13) | 1;
        *(this + 13) = v10;
        if (v14 < v11 && *v14 == 18)
        {
          *(a2 + 1) = v14 + 1;
          goto LABEL_33;
        }
      }

      if (v8 != 2 || v9 != 2)
      {
        break;
      }

      v10 = *(this + 13);
LABEL_33:
      *(this + 13) = v10 | 2;
      if (*(this + 2) == v5)
      {
        operator new();
      }

      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
      if (!result)
      {
        return result;
      }

      v16 = *(a2 + 1);
      if (v16 < *(a2 + 2) && *v16 == 42)
      {
        *(a2 + 1) = v16 + 1;
LABEL_39:
        *(this + 13) |= 4u;
        v17 = *(this + 3);
        if (!v17)
        {
          operator new();
        }

        v41 = 0;
        v18 = *(a2 + 1);
        if (v18 >= *(a2 + 2) || *v18 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v41))
          {
            return 0;
          }
        }

        else
        {
          v41 = *v18;
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
        if (!proto::gpsd::Request::MergePartialFromCodedStream(v17, a2, v21) || *(a2 + 36) != 1)
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

        v25 = *(a2 + 1);
        if (v25 < *(a2 + 2) && *v25 == 50)
        {
          *(a2 + 1) = v25 + 1;
          goto LABEL_53;
        }
      }
    }

LABEL_22:
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

uint64_t proto::gpsd::LogEntry::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
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

      goto LABEL_9;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
  v6 = *(v5 + 52);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_12;
  }

LABEL_9:
  v7 = *(v5 + 24);
  if (!v7)
  {
    v7 = *(proto::gpsd::LogEntry::default_instance_ + 24);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(5, v7, a2, a4);
  v6 = *(v5 + 52);
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      return this;
    }

    goto LABEL_15;
  }

LABEL_12:
  v8 = *(v5 + 32);
  if (!v8)
  {
    v8 = *(proto::gpsd::LogEntry::default_instance_ + 32);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(6, v8, a2, a4);
  if ((*(v5 + 52) & 0x10) != 0)
  {
LABEL_15:
    v9 = *(v5 + 40);
    if (!v9)
    {
      v9 = *(proto::gpsd::LogEntry::default_instance_ + 40);
    }

    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(7, v9, a2, a4);
  }

  return this;
}

uint64_t proto::gpsd::LogEntry::ByteSize(proto::gpsd::LogEntry *this, unint64_t a2)
{
  LOBYTE(v3) = *(this + 52);
  if (!v3)
  {
    v4 = 0;
    goto LABEL_38;
  }

  if (*(this + 52))
  {
    v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 1)) + 1;
    v3 = *(this + 13);
    if ((v3 & 2) == 0)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v4 = 0;
    if ((*(this + 52) & 2) == 0)
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
    v3 = *(this + 13);
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
LABEL_16:
  if ((v3 & 4) != 0)
  {
    v11 = *(this + 3);
    if (!v11)
    {
      v11 = *(proto::gpsd::LogEntry::default_instance_ + 24);
    }

    v12 = proto::gpsd::Request::ByteSize(v11, a2);
    v13 = v12;
    if (v12 >= 0x80)
    {
      v14 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v12);
    }

    else
    {
      v14 = 1;
    }

    v4 = (v4 + v13 + v14 + 1);
    v3 = *(this + 13);
    if ((v3 & 8) == 0)
    {
LABEL_18:
      if ((v3 & 0x10) == 0)
      {
        goto LABEL_38;
      }

      goto LABEL_32;
    }
  }

  else if ((v3 & 8) == 0)
  {
    goto LABEL_18;
  }

  v15 = *(this + 4);
  if (!v15)
  {
    v15 = *(proto::gpsd::LogEntry::default_instance_ + 32);
  }

  v16 = proto::gpsd::Response::ByteSize(v15, a2);
  v17 = v16;
  if (v16 >= 0x80)
  {
    v18 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v16);
  }

  else
  {
    v18 = 1;
  }

  v4 = (v4 + v17 + v18 + 1);
  if ((*(this + 13) & 0x10) != 0)
  {
LABEL_32:
    v19 = *(this + 5);
    if (!v19)
    {
      v19 = *(proto::gpsd::LogEntry::default_instance_ + 40);
    }

    v20 = proto::gpsd::Indication::ByteSize(v19, a2);
    v21 = v20;
    if (v20 >= 0x80)
    {
      v22 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v20);
    }

    else
    {
      v22 = 1;
    }

    v4 = (v4 + v21 + v22 + 1);
  }

LABEL_38:
  *(this + 12) = v4;
  return v4;
}

void proto::gpsd::LogEntry::CheckTypeAndMergeFrom(proto::gpsd::LogEntry *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  proto::gpsd::LogEntry::MergeFrom(this, lpsrc);
}

void proto::gpsd::LogEntry::CopyFrom(proto::gpsd::LogEntry *this, const proto::gpsd::LogEntry *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    proto::gpsd::LogEntry::MergeFrom(this, a2);
  }
}

uint64_t proto::gpsd::LogEntry::Swap(uint64_t this, proto::gpsd::LogEntry *a2)
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
    v5 = *(this + 24);
    *(this + 24) = *(a2 + 3);
    *(a2 + 3) = v5;
    v6 = *(this + 32);
    *(this + 32) = *(a2 + 4);
    *(a2 + 4) = v6;
    v7 = *(this + 40);
    *(this + 40) = *(a2 + 5);
    *(a2 + 5) = v7;
    LODWORD(v7) = *(this + 52);
    *(this + 52) = *(a2 + 13);
    *(a2 + 13) = v7;
    LODWORD(v7) = *(this + 48);
    *(this + 48) = *(a2 + 12);
    *(a2 + 12) = v7;
  }

  return this;
}

uint64_t proto::gpsd::StartContext::SharedCtor(uint64_t this)
{
  *(this + 8) = 0;
  *(this + 16) = 0;
  *(this + 24) = 0;
  return this;
}

proto::gpsd::StartContext *proto::gpsd::StartContext::StartContext(proto::gpsd::StartContext *this, const proto::gpsd::StartContext *a2)
{
  *(this + 1) = 0;
  *(this + 2) = 0;
  *this = &unk_285863438;
  *(this + 6) = 0;
  proto::gpsd::StartContext::MergeFrom(this, a2);
  return this;
}

void proto::gpsd::StartContext::~StartContext(proto::gpsd::StartContext *this)
{
  *this = &unk_285863438;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_285863438;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_285863438;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  JUMPOUT(0x245D6AEE0);
}

uint64_t proto::gpsd::StartContext::MergePartialFromCodedStream(proto::gpsd::StartContext *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
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

        v25 = 0;
        v13 = *(a2 + 1);
        v8 = *(a2 + 2);
        if (v13 >= v8 || (v14 = *v13, (v14 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v25);
          if (!result)
          {
            return result;
          }

          v14 = v25;
          v15 = *(a2 + 1);
          v8 = *(a2 + 2);
        }

        else
        {
          v15 = v13 + 1;
          *(a2 + 1) = v15;
        }

        *(this + 16) = v14 != 0;
        *(this + 6) |= 1u;
        if (v15 < v8 && *v15 == 16)
        {
          v10 = v15 + 1;
          *(a2 + 1) = v10;
LABEL_32:
          v25 = 0;
          if (v10 >= v8 || (v16 = *v10, (v16 & 0x80000000) != 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v25);
            if (!result)
            {
              return result;
            }

            v16 = v25;
            v17 = *(a2 + 1);
            v8 = *(a2 + 2);
          }

          else
          {
            v17 = v10 + 1;
            *(a2 + 1) = v17;
          }

          *(this + 17) = v16 != 0;
          *(this + 6) |= 2u;
          if (v17 < v8 && *v17 == 24)
          {
            v11 = v17 + 1;
            *(a2 + 1) = v11;
LABEL_40:
            v25 = 0;
            if (v11 >= v8 || (v18 = *v11, (v18 & 0x80000000) != 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v25);
              if (!result)
              {
                return result;
              }

              v18 = v25;
              v19 = *(a2 + 1);
              v8 = *(a2 + 2);
            }

            else
            {
              v19 = v11 + 1;
              *(a2 + 1) = v19;
            }

            *(this + 18) = v18 != 0;
            *(this + 6) |= 4u;
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
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 1);
        if (!result)
        {
          return result;
        }

        v21 = *(a2 + 1);
        v8 = *(a2 + 2);
      }

      else
      {
        *(this + 1) = v20;
        v21 = v12 + 1;
        *(a2 + 1) = v21;
      }

      *(this + 6) |= 8u;
      if (v21 < v8 && *v21 == 40)
      {
        v9 = v21 + 1;
        *(a2 + 1) = v9;
LABEL_56:
        v25 = 0;
        if (v9 >= v8 || (v22 = *v9, (v22 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v25);
          if (!result)
          {
            return result;
          }

          v22 = v25;
          v23 = *(a2 + 1);
          v8 = *(a2 + 2);
        }

        else
        {
          v23 = v9 + 1;
          *(a2 + 1) = v23;
        }

        *(this + 19) = v22 != 0;
        *(this + 6) |= 0x10u;
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

uint64_t proto::gpsd::StartContext::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 24);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(1, *(this + 16), a2, a4);
    v6 = *(v5 + 24);
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

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(2, *(v5 + 17), a2, a4);
  v6 = *(v5 + 24);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

LABEL_10:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(4, *(v5 + 8), a2, a4);
    if ((*(v5 + 24) & 0x10) == 0)
    {
      return this;
    }

    goto LABEL_11;
  }

LABEL_9:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(3, *(v5 + 18), a2, a4);
  v6 = *(v5 + 24);
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
  v7 = *(v5 + 19);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(5, v7, a2, a4);
}

uint64_t proto::gpsd::StartContext::ByteSize(proto::gpsd::StartContext *this, unint64_t a2)
{
  v3 = *(this + 6);
  if (v3)
  {
    v4 = 2 * (v3 & 1) + (v3 & 2) + ((v3 >> 1) & 2);
    if ((v3 & 8) != 0)
    {
      v4 += wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 1)) + 1;
      v3 = *(this + 6);
    }

    result = ((v3 >> 3) & 2) + v4;
  }

  else
  {
    result = 0;
  }

  *(this + 5) = result;
  return result;
}

void proto::gpsd::StartContext::CheckTypeAndMergeFrom(proto::gpsd::StartContext *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  proto::gpsd::StartContext::MergeFrom(this, lpsrc);
}

void proto::gpsd::StartContext::CopyFrom(proto::gpsd::StartContext *this, const proto::gpsd::StartContext *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    proto::gpsd::StartContext::MergeFrom(this, a2);
  }
}

uint64_t proto::gpsd::StartContext::Swap(uint64_t this, proto::gpsd::StartContext *a2)
{
  if (a2 != this)
  {
    v2 = *(this + 16);
    *(this + 16) = *(a2 + 16);
    *(a2 + 16) = v2;
    v3 = *(this + 17);
    *(this + 17) = *(a2 + 17);
    *(a2 + 17) = v3;
    v4 = *(this + 18);
    *(this + 18) = *(a2 + 18);
    *(a2 + 18) = v4;
    v5 = *(this + 8);
    *(this + 8) = *(a2 + 1);
    *(a2 + 1) = v5;
    LOBYTE(v5) = *(this + 19);
    *(this + 19) = *(a2 + 19);
    *(a2 + 19) = v5;
    LODWORD(v5) = *(this + 24);
    *(this + 24) = *(a2 + 6);
    *(a2 + 6) = v5;
    LODWORD(v5) = *(this + 20);
    *(this + 20) = *(a2 + 5);
    *(a2 + 5) = v5;
  }

  return this;
}

uint64_t GpsdSessionHandlerManager::instance(GpsdSessionHandlerManager *this)
{
  result = GpsdSessionHandlerManager::fInstance;
  if (!GpsdSessionHandlerManager::fInstance)
  {
    if (GpsdSessionHandlerManager::instance(void)::pred != -1)
    {
      dispatch_once(&GpsdSessionHandlerManager::instance(void)::pred, &__block_literal_global_1);
    }

    return GpsdSessionHandlerManager::fInstance;
  }

  return result;
}

void ___ZN25GpsdSessionHandlerManager8instanceEv_block_invoke()
{
  GpsdSessionHandlerManagerStaticMemory = 0;
  *algn_27EE14C28 = 0;
  qword_27EE14C30 = 0;
  GpsdSessionHandlerManager::fInstance = &GpsdSessionHandlerManagerStaticMemory;
}

void GpsdSessionHandlerManager::instanceDelete(GpsdSessionHandlerManager *this)
{
  if (GpsdSessionHandlerManager::fInstance)
  {
    GpsdSessionHandlerManager::fInstance = 0;
  }

  else
  {
    v5 = v1;
    v6 = v2;
    v3 = GpsdLogObjectGeneral;
    if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_FAULT))
    {
      *v4 = 0;
      _os_log_fault_impl(&dword_2454AA000, v3, OS_LOG_TYPE_FAULT, "GpsdSessionHandlerManager,instanceDelete,nullptr", v4, 2u);
    }
  }
}

void GpsdSessionHandlerManager::addEventHandler(GpsdSessionHandlerManager *this, GpsdSessionHandler *a2)
{
  v20 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    v5 = *(this + 1);
    v4 = *(this + 2);
    if (v5 >= v4)
    {
      v8 = *this;
      v9 = v5 - *this;
      v10 = v9 >> 3;
      v11 = (v9 >> 3) + 1;
      if (v11 >> 61)
      {
        std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
      }

      v12 = v4 - v8;
      if (v12 >> 2 > v11)
      {
        v11 = v12 >> 2;
      }

      if (v12 >= 0x7FFFFFFFFFFFFFF8)
      {
        v13 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v13 = v11;
      }

      if (v13)
      {
        if (!(v13 >> 61))
        {
          operator new();
        }

        std::__throw_bad_array_new_length[abi:ne200100]();
      }

      *(8 * v10) = a2;
      v6 = 8 * v10 + 8;
      memcpy(0, v8, v9);
      *this = 0;
      *(this + 1) = v6;
      *(this + 2) = 0;
      if (v8)
      {
        operator delete(v8);
      }
    }

    else
    {
      *v5 = a2;
      v6 = (v5 + 1);
    }

    *(this + 1) = v6;
    v14 = GpsdLogObjectGeneral;
    if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_DEFAULT))
    {
      v15 = (v6 - *this) >> 3;
      v16 = 134349312;
      v17 = a2;
      v18 = 2050;
      v19 = v15;
      _os_log_impl(&dword_2454AA000, v14, OS_LOG_TYPE_DEFAULT, "GpsdSessionHandlerManager,addEventHandler,%{public}p,size,%{public}zu", &v16, 0x16u);
    }
  }

  else
  {
    v7 = GpsdLogObjectGeneral;
    if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_FAULT))
    {
      LOWORD(v16) = 0;
      _os_log_fault_impl(&dword_2454AA000, v7, OS_LOG_TYPE_FAULT, "GpsdSessionHandlerManager,addEventHandler,nullptr", &v16, 2u);
    }
  }
}

void GpsdSessionHandlerManager::removeEventHandler(GpsdSessionHandler ***this, GpsdSessionHandler *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    v4 = *this;
    v5 = this[1];
    if (*this != v5)
    {
      while (*v4 != a2)
      {
        if (++v4 == v5)
        {
          goto LABEL_16;
        }
      }

      if (v4 != v5)
      {
        v7 = v4 + 1;
        if (v4 + 1 != v5)
        {
          do
          {
            if (*v7 != a2)
            {
              *v4++ = *v7;
            }

            ++v7;
          }

          while (v7 != v5);
          v5 = this[1];
        }
      }
    }

    if (v4 != v5)
    {
      v5 = v4;
      this[1] = v4;
    }

LABEL_16:
    v8 = GpsdLogObjectGeneral;
    if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_DEFAULT))
    {
      v9 = v5 - *this;
      v10 = 134349312;
      v11 = a2;
      v12 = 2050;
      v13 = v9;
      _os_log_impl(&dword_2454AA000, v8, OS_LOG_TYPE_DEFAULT, "GpsdSessionHandlerManager,removeEventHandler,%{public}p,size,%{public}zu", &v10, 0x16u);
    }
  }

  else
  {
    v6 = GpsdLogObjectGeneral;
    if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_FAULT))
    {
      LOWORD(v10) = 0;
      _os_log_fault_impl(&dword_2454AA000, v6, OS_LOG_TYPE_FAULT, "GpsdSessionHandlerManager,removeEventHandler,nullptr", &v10, 2u);
    }
  }
}

void GpsdSessionHandler::GpsdSessionHandler(GpsdSessionHandler *this)
{
  *this = &unk_2858638D8;
  v2 = GpsdSessionHandlerManager::instance(this);
  GpsdSessionHandlerManager::addEventHandler(v2, this);
}

void GpsdSessionHandler::~GpsdSessionHandler(GpsdSessionHandler *this)
{
  *this = &unk_2858638D8;
  v2 = GpsdSessionHandlerManager::instance(this);
  GpsdSessionHandlerManager::removeEventHandler(v2, this);
}

void GpsdSessionMonitor::setExplicitState(GpsdSessionMonitor *this, int a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v4 = GpsdLogObjectGeneral;
  if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(this + 8);
    v6[0] = 67240448;
    v6[1] = v5;
    v7 = 1026;
    v8 = a2;
    _os_log_impl(&dword_2454AA000, v4, OS_LOG_TYPE_DEFAULT, "GpsdSessionMonitor,setExplicitState,current,%{public}d,new,%{public}d", v6, 0xEu);
  }

  *(this + 8) = a2;
}

void GpsdSessionMonitor::update(GpsdSessionMonitor *this)
{
  if (!*(this + 2))
  {
    GpsdSessionMonitor::start(this);
  }

  *(this + 8) = 0;
  if ((*(this + 8) & 1) == 0)
  {
    v2 = *(*(this + 3) + 8);
    v3 = dispatch_time(0, 10000000000);

    dispatch_source_set_timer(v2, v3, 0xFFFFFFFFFFFFFFFFLL, 0x5F5E100uLL);
  }
}

uint64_t GpsdSessionMonitor::start(uint64_t this)
{
  if (!*(this + 16))
  {
    v1 = GpsdLogObjectGeneral;
    if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_2454AA000, v1, OS_LOG_TYPE_DEFAULT, "GpsdSessionMonitor,takeOsTransaction", buf, 2u);
    }

    operator new();
  }

  return this;
}

void GpsdSessionMonitor::autoRelease(GpsdSessionMonitor *this)
{
  v21 = *MEMORY[0x277D85DE8];
  if (*(this + 8) == 1)
  {
    v1 = GpsdLogObjectGeneral;
    if (!os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    LOWORD(v16) = 0;
    v2 = "GpsdSessionMonitor,autoRelease,inSession,return";
    v3 = v1;
    v4 = 2;
LABEL_12:
    _os_log_impl(&dword_2454AA000, v3, OS_LOG_TYPE_DEFAULT, v2, &v16, v4);
    return;
  }

  v6 = *(this + 2);
  if (!v6 || (v7 = *(this + 3)) == 0)
  {
    v13 = GpsdLogObjectWarning;
    if (!os_log_type_enabled(GpsdLogObjectWarning, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    v14 = *(this + 3);
    v15 = *(this + 8);
    v16 = 134349568;
    *v17 = v6;
    *&v17[8] = 2050;
    v18 = v14;
    v19 = 1026;
    v20 = v15;
    v2 = "GpsdSessionMonitor,autoRelease,nullptr,os,%{public}p,timer,%{public}p,inactive,%{public}d";
    v3 = v13;
    v4 = 28;
    goto LABEL_12;
  }

  v8 = *(this + 8);
  *(this + 8) = v8 + 1;
  v9 = GpsdLogObjectGeneral;
  v10 = os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_DEFAULT);
  if (v8 > 1)
  {
    if (v10)
    {
      LOWORD(v16) = 0;
      _os_log_impl(&dword_2454AA000, v9, OS_LOG_TYPE_DEFAULT, "GpsdSessionMonitor,autoRelease,confirmed", &v16, 2u);
    }

    GpsdSessionMonitor::stop(this);
  }

  else
  {
    if (v10)
    {
      v16 = 67240448;
      *v17 = v8 + 1;
      *&v17[4] = 1026;
      *&v17[6] = 3;
      _os_log_impl(&dword_2454AA000, v9, OS_LOG_TYPE_DEFAULT, "GpsdSessionMonitor,autoRelease,confirming,%{public}d/%{public}d", &v16, 0xEu);
      v7 = *(this + 3);
    }

    v11 = *(v7 + 8);
    v12 = dispatch_time(0, 10000000000);
    dispatch_source_set_timer(v11, v12, 0xFFFFFFFFFFFFFFFFLL, 0x5F5E100uLL);
  }
}

void GpsdSessionMonitor::stop(GpsdSessionMonitor *this)
{
  if (*(this + 8) == 1)
  {
    v1 = GpsdLogObjectGeneral;
    if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_2454AA000, v1, OS_LOG_TYPE_DEFAULT, "GpsdSessionMonitor,stop,sessionOveralop,ignore", buf, 2u);
    }
  }

  else
  {
    v3 = (this + 16);
    if (*(this + 2))
    {
      v4 = GpsdSessionHandlerManager::instance(this);
      v5 = *v4;
      v6 = *(v4 + 8);
      while (v5 != v6)
      {
        v7 = *v5++;
        (*(*v7 + 24))(v7);
      }

      v8 = *(this + 3);
      *(this + 3) = 0;
      if (v8)
      {
        (*(*v8 + 8))(v8);
      }

      v9 = GpsdLogObjectGeneral;
      if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_DEFAULT))
      {
        *v11 = 0;
        _os_log_impl(&dword_2454AA000, v9, OS_LOG_TYPE_DEFAULT, "GpsdSessionMonitor,releaseOsTransaction", v11, 2u);
      }

      std::unique_ptr<gpsd::util::OsTransaction>::reset[abi:ne200100](v3, 0);
    }

    else
    {
      v10 = GpsdLogObjectGeneral;
      if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_FAULT))
      {
        *v12 = 0;
        _os_log_fault_impl(&dword_2454AA000, v10, OS_LOG_TYPE_FAULT, "GpsdSessionMonitor,fOsTransaction,null", v12, 2u);
      }
    }
  }
}

id **std::unique_ptr<gpsd::util::OsTransaction>::reset[abi:ne200100](id **result, id *a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = *v2;
    *v2 = 0;

    JUMPOUT(0x245D6AEE0);
  }

  return result;
}

void std::__throw_bad_array_new_length[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  v1 = std::bad_array_new_length::bad_array_new_length(exception);
  __cxa_throw(v1, MEMORY[0x277D82778], MEMORY[0x277D82620]);
}

dispatch_queue_t GpsdRuntime::dispatchQueueInit(GpsdRuntime *this, const std::string::value_type *a2, const char *a3)
{
  v4 = this;
  v30 = *MEMORY[0x277D85DE8];
  v5 = std::string::basic_string[abi:ne200100]<0>(buf, "com.apple.gpsd.");
  v6 = std::string::append(v5, a2);
  v7 = *&v6->__r_.__value_.__l.__data_;
  v24 = v6->__r_.__value_.__r.__words[2];
  *__p = v7;
  v6->__r_.__value_.__l.__size_ = 0;
  v6->__r_.__value_.__r.__words[2] = 0;
  v6->__r_.__value_.__r.__words[0] = 0;
  if (SBYTE3(v29) < 0)
  {
    operator delete(*buf);
  }

  v8 = dispatch_queue_attr_make_with_qos_class(0, v4, 0);
  if (!v8)
  {
    v9 = GpsdLogObjectWarning;
    if (os_log_type_enabled(GpsdLogObjectWarning, OS_LOG_TYPE_DEFAULT))
    {
      v10 = __p;
      if (v24 < 0)
      {
        v10 = __p[0];
      }

      *buf = 136446210;
      *&buf[4] = v10;
      _os_log_impl(&dword_2454AA000, v9, OS_LOG_TYPE_DEFAULT, "dispatchQueueInit,nullattr,%{public}s", buf, 0xCu);
    }
  }

  if (v24 >= 0)
  {
    v11 = __p;
  }

  else
  {
    v11 = __p[0];
  }

  v12 = dispatch_queue_create(v11, v8);
  if (!v12)
  {
    v15 = GpsdLogObjectGeneral;
    if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_ERROR))
    {
      v16 = __p;
      if (v24 < 0)
      {
        v16 = __p[0];
      }

      *buf = 136446210;
      *&buf[4] = v16;
      _os_log_error_impl(&dword_2454AA000, v15, OS_LOG_TYPE_ERROR, "dispatchQueueInit,queue,null,%{public}s", buf, 0xCu);
      v15 = GpsdLogObjectGeneral;
    }

    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      *&buf[4] = "/Library/Caches/com.apple.xbs/Sources/CoreGPS/Sources/Util/GpsdRuntime.cpp";
      v26 = 1026;
      v27 = 23;
      v28 = 2082;
      v29 = "dispatchQueueInit";
      _os_log_error_impl(&dword_2454AA000, v15, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: assertion failure in %{public}s", buf, 0x1Cu);
    }

    std::string::basic_string[abi:ne200100]<0>(v21, "assert");
    std::string::basic_string[abi:ne200100]<0>(v19, "dispatchQueueInit");
    std::string::basic_string[abi:ne200100]<0>(v17, "dispatchQueueInit,queue,null,%{public}s");
    gpsd::util::triggerDiagnosticReport(v21, v19, v17);
    if (v18 < 0)
    {
      operator delete(v17[0]);
    }

    if (v20 < 0)
    {
      operator delete(v19[0]);
    }

    if (v22 < 0)
    {
      operator delete(v21[0]);
    }

    __assert_rtn("dispatchQueueInit", "GpsdRuntime.cpp", 23, "false && dispatchQueueInit,queue,null,%{public}s");
  }

  v13 = v12;
  if (SHIBYTE(v24) < 0)
  {
    operator delete(__p[0]);
  }

  return v13;
}

void sub_245567BB4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (*(v33 - 41) < 0)
  {
    operator delete(*(v33 - 64));
  }

  _Unwind_Resume(exception_object);
}

uint64_t GpsdRuntime::bounceExit(NSObject **a1, uint64_t *a2)
{
  v12[4] = *MEMORY[0x277D85DE8];
  v12[0] = &unk_285863998;
  v12[3] = v12;
  GpsdRuntime::asyncDevice(a1, v12);
  std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](v12);
  v4 = GpsdLogObjectGeneral;
  if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    if (*(a2 + 23) >= 0)
    {
      v5 = a2;
    }

    else
    {
      v5 = *a2;
    }

    *buf = 136446466;
    v9 = v5;
    v10 = 1026;
    v11 = 100;
    _os_log_impl(&dword_2454AA000, v4, OS_LOG_TYPE_DEFAULT, "#runtime,bounceExit,reason,%{public}s,delay,%{public}d", buf, 0x12u);
  }

  v7[0] = &unk_285863A28;
  v7[3] = v7;
  GpsdRuntime::asyncDevice(a1, v7, 100);
  return std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](v7);
}

uint64_t GpsdRuntime::asyncDevice(NSObject **a1, uint64_t a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  v2 = *a1;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 1174405120;
  block[2] = ___ZN11GpsdRuntime11asyncDeviceENSt3__18functionIFvvEEE_block_invoke;
  block[3] = &__block_descriptor_tmp_7;
  std::__function::__value_func<void ()(void)>::__value_func[abi:ne200100](v5, a2);
  dispatch_async(v2, block);
  return std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](v5);
}

uint64_t GpsdRuntime::asyncDevice(NSObject **a1, uint64_t a2, uint64_t a3)
{
  v9[4] = *MEMORY[0x277D85DE8];
  v5 = dispatch_time(0, 1000000 * a3);
  v6 = *a1;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 1174405120;
  block[2] = ___ZN11GpsdRuntime11asyncDeviceENSt3__18functionIFvvEEEx_block_invoke;
  block[3] = &__block_descriptor_tmp_9;
  std::__function::__value_func<void ()(void)>::__value_func[abi:ne200100](v9, a2);
  dispatch_after(v5, v6, block);
  return std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](v9);
}

void GpsdRuntime::forceExit(GpsdRuntime *this, const char *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v3 = GpsdLogObjectWarning;
  if (os_log_type_enabled(GpsdLogObjectWarning, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136446210;
    v5 = a2;
    _os_log_impl(&dword_2454AA000, v3, OS_LOG_TYPE_DEFAULT, "#runtime,forceExit,reason,%{public}s", &v4, 0xCu);
  }

  _Exit(-1);
}

uint64_t ___ZN11GpsdRuntime11asyncDeviceENSt3__18functionIFvvEEE_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 56);
  if (!v2)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  v3 = *(*v2 + 48);

  return v3();
}

uint64_t ___ZN11GpsdRuntime11asyncDeviceENSt3__18functionIFvvEEEx_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 56);
  if (!v2)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  v3 = *(*v2 + 48);

  return v3();
}

uint64_t GpsdRuntime::instance(GpsdRuntime *this)
{
  result = GpsdRuntime::fInstance;
  if (!GpsdRuntime::fInstance)
  {
    if (GpsdRuntime::instance(void)::pred != -1)
    {
      dispatch_once(&GpsdRuntime::instance(void)::pred, &__block_literal_global_2);
    }

    return GpsdRuntime::fInstance;
  }

  return result;
}

void ___ZN11GpsdRuntime8instanceEv_block_invoke()
{
  GpsdRuntimeStaticMemory = 0;
  unk_27EE14C50 = 0;
  qword_27EE14C58 = 0;
  GpsdRuntime::GpsdRuntime(&GpsdRuntimeStaticMemory);
  GpsdRuntime::fInstance = v0;
}

void GpsdRuntime::instanceDelete(GpsdRuntime *this)
{
  if (GpsdRuntime::fInstance)
  {
    GpsdRuntime::fInstance = 0;
  }

  else
  {
    v5 = v1;
    v6 = v2;
    v3 = GpsdLogObjectGeneral;
    if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_FAULT))
    {
      *v4 = 0;
      _os_log_fault_impl(&dword_2454AA000, v3, OS_LOG_TYPE_FAULT, "GpsdRuntime,instanceDelete,nullptr", v4, 2u);
    }
  }
}

void GpsdRuntime::GpsdRuntime(GpsdRuntime *this)
{
  v2 = GpsdPreferences::instance(0);
  v3 = GpsdPreferences::maxSchedulerQos(v2);
  *this = GpsdRuntime::dispatchQueueInit(v3, "deviceQueue", v4);
  v5 = GpsdPreferences::instance(0);
  v6 = GpsdPreferences::maxSchedulerQos(v5);
  *(this + 1) = GpsdRuntime::dispatchQueueInit(v6, "highPriorityQueue", v7);
  *(this + 2) = GpsdRuntime::dispatchQueueInit(0x15, "defaultPriorityQueue", v8);
}

uint64_t **std::__function::__func<GpsdRuntime::bounceExit(std::string const&)::$_0,std::allocator<GpsdRuntime::bounceExit(std::string const&)::$_0>,void ()(void)>::operator()(GpsdSessionHandlerManager *a1)
{
  result = GpsdSessionHandlerManager::instance(a1);
  v2 = *result;
  v3 = result[1];
  while (v2 != v3)
  {
    v4 = *v2++;
    result = (*(*v4 + 24))(v4);
  }

  return result;
}

uint64_t std::__function::__func<GpsdRuntime::bounceExit(std::string const&)::$_0,std::allocator<GpsdRuntime::bounceExit(std::string const&)::$_0>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__function::__func<GpsdRuntime::bounceExit(std::string const&)::$_1,std::allocator<GpsdRuntime::bounceExit(std::string const&)::$_1>,void ()(void)>::operator()()
{
  v0 = GpsdLogObjectGeneral;
  if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    *v1 = 0;
    _os_log_impl(&dword_2454AA000, v0, OS_LOG_TYPE_DEFAULT, "#runtime,bounceExit,exitNow", v1, 2u);
  }

  _Exit(-1);
}

uint64_t std::__function::__func<GpsdRuntime::bounceExit(std::string const&)::$_1,std::allocator<GpsdRuntime::bounceExit(std::string const&)::$_1>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

BOOL deleteFile(const char *a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = unlink(a1);
  if (v2)
  {
    v3 = GpsdLogObjectGeneral;
    if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_ERROR))
    {
      v5 = *__error();
      v6 = 136446466;
      v7 = a1;
      v8 = 1026;
      v9 = v5;
      _os_log_error_impl(&dword_2454AA000, v3, OS_LOG_TYPE_ERROR, "VendorLogger,deleteFile could not unlink,%{public}s,%{public}d", &v6, 0x12u);
    }
  }

  return v2 == 0;
}

BOOL getFileModificationTimeAndSize(const char *a1, timespec *a2, uint64_t *a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v6 = stat(a1, &v10);
  if (v6)
  {
    v7 = GpsdLogObjectGeneral;
    if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_ERROR))
    {
      v8 = *__error();
      *buf = 136446466;
      v12 = a1;
      v13 = 1026;
      v14 = v8;
      _os_log_error_impl(&dword_2454AA000, v7, OS_LOG_TYPE_ERROR, "VendorLogger,getFileModificationTime could not stat,%{public}s,%{public}d", buf, 0x12u);
    }
  }

  else
  {
    *a2 = v10.st_mtimespec;
    *a3 = v10.st_size;
  }

  return v6 == 0;
}

void VendorLogger::copyLatestLogsToPath(uint64_t a1, uint64_t a2, int a3, int a4)
{
  v38 = *MEMORY[0x277D85DE8];
  v8 = GpsdPreferences::instance(0);
  GpsdPreferences::vendorLogDirectory(v8, &v33);
  size = HIBYTE(v33.__r_.__value_.__r.__words[2]);
  if ((v33.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = v33.__r_.__value_.__l.__size_;
  }

  if (!size)
  {
    v11 = GpsdLogObjectGeneral;
    if (!os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_41;
    }

    *buf = 0;
    v12 = "VendorLogger,copyLatestLogsToPath, null source dirpath, cannot copy latest logs";
LABEL_21:
    v18 = v11;
    v19 = 2;
LABEL_22:
    _os_log_error_impl(&dword_2454AA000, v18, OS_LOG_TYPE_ERROR, v12, buf, v19);
    goto LABEL_41;
  }

  if (*(a2 + 23) < 0)
  {
    if (!*(a2 + 8))
    {
LABEL_19:
      v11 = GpsdLogObjectGeneral;
      if (!os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_41;
      }

      *buf = 0;
      v12 = "VendorLogger,copyLatestLogsToPath, null destination dirpath, cannot copy latest logs";
      goto LABEL_21;
    }

    v10 = *a2;
  }

  else
  {
    v10 = a2;
    if (!*(a2 + 23))
    {
      goto LABEL_19;
    }
  }

  if (!mkdir(v10, 0x1F8u))
  {
    v20 = GpsdLogObjectGeneral;
    if (!os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_INFO))
    {
      goto LABEL_36;
    }

    if (*(a2 + 23) >= 0)
    {
      v21 = a2;
    }

    else
    {
      v21 = *a2;
    }

    *buf = 136446466;
    v35 = v21;
    v36 = 1026;
    v37 = 504;
    v22 = "VendorLogger,copyLatestLogsToPath,created directory,%{public}s,permissions,%{public}x";
    v23 = v20;
    v24 = 18;
LABEL_35:
    _os_log_impl(&dword_2454AA000, v23, OS_LOG_TYPE_INFO, v22, buf, v24);
LABEL_36:
    v27 = *(a1 + 856);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 1174405120;
    block[2] = ___ZN12VendorLogger20copyLatestLogsToPathERKNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEEij_block_invoke;
    block[3] = &__block_descriptor_tmp_8;
    block[4] = a1;
    if (SHIBYTE(v33.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&__p, v33.__r_.__value_.__l.__data_, v33.__r_.__value_.__l.__size_);
    }

    else
    {
      __p = v33;
    }

    v30 = a2;
    v31 = a4;
    v32 = a3;
    dispatch_sync(v27, block);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    goto LABEL_41;
  }

  v13 = *__error();
  if (v13 == 17)
  {
    if (*(a2 + 23) >= 0)
    {
      v14 = a2;
    }

    else
    {
      v14 = *a2;
    }

    v15 = chmod(v14, 0x1F8u);
    v16 = GpsdLogObjectGeneral;
    if (v15)
    {
      if (!os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_41;
      }

      v17 = *__error();
      *buf = 67240192;
      LODWORD(v35) = v17;
      v12 = "VendorLogger,copyLatestLogsToPath,chmod failed,%{public}d";
      v18 = v16;
      v19 = 8;
      goto LABEL_22;
    }

    if (!os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_INFO))
    {
      goto LABEL_36;
    }

    *buf = 67240192;
    LODWORD(v35) = 504;
    v22 = "VendorLogger,copyLatestLogsToPath,directory exists,permissions,%{public}x";
    v23 = v16;
    v24 = 8;
    goto LABEL_35;
  }

  v25 = GpsdLogObjectGeneral;
  if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_ERROR))
  {
    if (*(a2 + 23) >= 0)
    {
      v26 = a2;
    }

    else
    {
      v26 = *a2;
    }

    *buf = 136446466;
    v35 = v26;
    v36 = 1026;
    v37 = v13;
    v12 = "VendorLogger,copyLatestLogsToPath,could not create directory,%{public}s, error,%{public}d";
    v18 = v25;
    v19 = 18;
    goto LABEL_22;
  }

LABEL_41:
  if (SHIBYTE(v33.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v33.__r_.__value_.__l.__data_);
  }
}

void sub_24556898C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  if (a25 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void ___ZN12VendorLogger20copyLatestLogsToPathERKNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEEij_block_invoke(uint64_t a1)
{
  v55 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  VendorLogger::closeLogFile(v2);
  v48 = 0;
  v49 = 0;
  v50 = 0;
  if (*(a1 + 63) < 0)
  {
    v3 = *(a1 + 40);
  }

  else
  {
    v3 = a1 + 40;
  }

  gpsd::util::enumerateFiles(v3, (v2 + 16), &v48);
  v4 = 126 - 2 * __clz(0xAAAAAAAAAAAAAAABLL * ((v49 - v48) >> 3));
  if (v49 == v48)
  {
    v5 = 0;
  }

  else
  {
    v5 = v4;
  }

  std::__introsort<std::_ClassicAlgPolicy,std::greater<void> &,std::string *,false>(v48, v49, v5, 1);
  v46 = 0;
  v7 = v48;
  v6 = v49;
  v8 = &GpsdLogObjectGeneral;
  if (v48 != v49)
  {
    v45 = 0;
    while (1)
    {
      if (*(a1 + 63) >= 0)
      {
        v9 = *(a1 + 63);
      }

      else
      {
        v9 = *(a1 + 48);
      }

      std::string::basic_string[abi:ne200100](&v52, v9 + 1);
      if ((v52.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v10 = &v52;
      }

      else
      {
        v10 = v52.__r_.__value_.__r.__words[0];
      }

      if (v9)
      {
        if (*(a1 + 63) >= 0)
        {
          v11 = (a1 + 40);
        }

        else
        {
          v11 = *(a1 + 40);
        }

        memmove(v10, v11, v9);
      }

      *(&v10->__r_.__value_.__l.__data_ + v9) = 47;
      v12 = *(v7 + 23);
      if (v12 >= 0)
      {
        v13 = v7;
      }

      else
      {
        v13 = *v7;
      }

      if (v12 >= 0)
      {
        v14 = *(v7 + 23);
      }

      else
      {
        v14 = *(v7 + 1);
      }

      v15 = std::string::append(&v52, v13, v14);
      v16 = *&v15->__r_.__value_.__l.__data_;
      v54 = v15->__r_.__value_.__r.__words[2];
      *buf = v16;
      v15->__r_.__value_.__l.__size_ = 0;
      v15->__r_.__value_.__r.__words[2] = 0;
      v15->__r_.__value_.__r.__words[0] = 0;
      if (SHIBYTE(v52.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v52.__r_.__value_.__l.__data_);
      }

      if (v54 >= 0)
      {
        v17 = buf;
      }

      else
      {
        v17 = *buf;
      }

      if (!getFileModificationTimeAndSize(v17, &v47, &v46))
      {
        goto LABEL_78;
      }

      if (v46 <= *(a1 + 72))
      {
        v39 = *v8;
        if (os_log_type_enabled(*v8, OS_LOG_TYPE_INFO))
        {
          if (v54 >= 0)
          {
            v40 = buf;
          }

          else
          {
            v40 = *buf;
          }

          LODWORD(v52.__r_.__value_.__l.__data_) = 136446210;
          *(v52.__r_.__value_.__r.__words + 4) = v40;
          _os_log_impl(&dword_2454AA000, v39, OS_LOG_TYPE_INFO, "VendorLogger,copyLatestLogsToPath, skipped file,%{public}s", &v52, 0xCu);
        }

        v38 = 3;
        goto LABEL_79;
      }

      v18 = v8;
      v19 = *(a1 + 64);
      if (*(v19 + 23) >= 0)
      {
        v20 = *(v19 + 23);
      }

      else
      {
        v20 = v19[1];
      }

      std::string::basic_string[abi:ne200100](&v51, v20 + 1);
      if ((v51.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v21 = &v51;
      }

      else
      {
        v21 = v51.__r_.__value_.__r.__words[0];
      }

      if (v20)
      {
        if (*(v19 + 23) >= 0)
        {
          v22 = v19;
        }

        else
        {
          v22 = *v19;
        }

        memmove(v21, v22, v20);
      }

      *(&v21->__r_.__value_.__l.__data_ + v20) = 47;
      v23 = *(v7 + 23);
      if (v23 >= 0)
      {
        v24 = v7;
      }

      else
      {
        v24 = *v7;
      }

      if (v23 >= 0)
      {
        v25 = *(v7 + 23);
      }

      else
      {
        v25 = *(v7 + 1);
      }

      v26 = std::string::append(&v51, v24, v25);
      v28 = *&v26->__r_.__value_.__l.__data_;
      v52.__r_.__value_.__r.__words[2] = v26->__r_.__value_.__r.__words[2];
      *&v52.__r_.__value_.__l.__data_ = v28;
      v26->__r_.__value_.__l.__size_ = 0;
      v26->__r_.__value_.__r.__words[2] = 0;
      v26->__r_.__value_.__r.__words[0] = 0;
      v8 = v18;
      if (SHIBYTE(v51.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v51.__r_.__value_.__l.__data_);
      }

      v29 = v54 >= 0 ? buf : *buf;
      v30 = (v52.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v52 : v52.__r_.__value_.__r.__words[0];
      v31 = gpsd::util::copyFile(v29, v30, v27);
      v32 = *v18;
      if (v31)
      {
        if (os_log_type_enabled(*v18, OS_LOG_TYPE_INFO))
        {
          if ((v52.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v33 = &v52;
          }

          else
          {
            v33 = v52.__r_.__value_.__r.__words[0];
          }

          LODWORD(v51.__r_.__value_.__l.__data_) = 136446210;
          *(v51.__r_.__value_.__r.__words + 4) = v33;
          _os_log_impl(&dword_2454AA000, v32, OS_LOG_TYPE_INFO, "VendorLogger,copyLatestLogsToPath, copied %{public}s", &v51, 0xCu);
        }

        v34 = *(a1 + 76);
        v35 = ++v45 < v34;
        v36 = v45 >= v34;
        v37 = v35;
        v38 = 2 * v36;
      }

      else
      {
        if (os_log_type_enabled(*v18, OS_LOG_TYPE_ERROR))
        {
          if (v54 >= 0)
          {
            v41 = buf;
          }

          else
          {
            v41 = *buf;
          }

          if ((v52.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v42 = &v52;
          }

          else
          {
            v42 = v52.__r_.__value_.__r.__words[0];
          }

          LODWORD(v51.__r_.__value_.__l.__data_) = 136446466;
          *(v51.__r_.__value_.__r.__words + 4) = v41;
          WORD2(v51.__r_.__value_.__r.__words[1]) = 2082;
          *(&v51.__r_.__value_.__r.__words[1] + 6) = v42;
          _os_log_error_impl(&dword_2454AA000, v32, OS_LOG_TYPE_ERROR, "VendorLogger,copyLatestLogsToPath, failed src,%{public}s, dest,%{public}s", &v51, 0x16u);
        }

        v37 = 0;
        v38 = 2;
      }

      if (SHIBYTE(v52.__r_.__value_.__r.__words[2]) < 0)
      {
        break;
      }

      if (v37)
      {
        goto LABEL_78;
      }

LABEL_79:
      if (SHIBYTE(v54) < 0)
      {
        operator delete(*buf);
      }

      if (v38 == 3 || !v38)
      {
        v7 = (v7 + 24);
        if (v7 != v6)
        {
          continue;
        }
      }

      goto LABEL_95;
    }

    operator delete(v52.__r_.__value_.__l.__data_);
    if (!v37)
    {
      goto LABEL_79;
    }

LABEL_78:
    v38 = 0;
    goto LABEL_79;
  }

  v45 = 0;
LABEL_95:
  v43 = *v8;
  if (os_log_type_enabled(*v8, OS_LOG_TYPE_DEFAULT))
  {
    v44 = *(a1 + 76);
    *buf = 67240448;
    *&buf[4] = v45;
    *&buf[8] = 1026;
    *&buf[10] = v44;
    _os_log_impl(&dword_2454AA000, v43, OS_LOG_TYPE_DEFAULT, "VendorLogger,copyLatestLogsToPath, Copied,%{public}d, RequestedMax,%{public}d", buf, 0xEu);
  }

  *buf = &v48;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](buf);
}

void sub_245568E94(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, void *__p, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  *(v33 - 128) = &a17;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100]((v33 - 128));
  _Unwind_Resume(a1);
}

void VendorLogger::closeLogFile(std::string::size_type *this)
{
  v35 = *MEMORY[0x277D85DE8];
  VendorLogger::flushCompression(this);
  *(this + 868) = 0;
  if (this[48])
  {
    std::ostream::flush();
    if (!std::filebuf::close())
    {
      std::ios_base::clear((this + *(this[32] - 24) + 256), *(this + *(this[32] - 24) + 288) | 4);
    }

    v2 = (this + 103);
    if (*(this + 847) < 0)
    {
      std::string::__init_copy_ctor_external(&buf, this[103], this[104]);
    }

    else
    {
      *&buf.__r_.__value_.__l.__data_ = *&v2->__pn_.__r_.__value_.__l.__data_;
      buf.__r_.__value_.__r.__words[2] = this[105];
    }

    std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v28, this + 5, this + 11);
    std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(__p, this + 8, this + 11);
    size = HIBYTE(buf.__r_.__value_.__r.__words[2]);
    if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_buf = &buf;
    }

    else
    {
      p_buf = buf.__r_.__value_.__r.__words[0];
    }

    if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      size = buf.__r_.__value_.__l.__size_;
    }

    if ((v29 & 0x80u) == 0)
    {
      v6 = v28;
    }

    else
    {
      v6 = v28[0];
    }

    if ((v29 & 0x80u) == 0)
    {
      v7 = v29;
    }

    else
    {
      v7 = v28[1];
    }

    if (v7)
    {
      if (size >= v7)
      {
        v19 = p_buf + size;
        v20 = *v6;
        v21 = p_buf;
        do
        {
          v22 = size - v7;
          if (v22 == -1)
          {
            break;
          }

          v23 = memchr(v21, v20, v22 + 1);
          if (!v23)
          {
            break;
          }

          v24 = v23;
          if (!memcmp(v23, v6, v7))
          {
            if (v24 != v19)
            {
              v9 = v24 - p_buf;
              if (v24 - p_buf != -1)
              {
                goto LABEL_25;
              }
            }

            break;
          }

          v21 = (v24 + 1);
          size = v19 - (v24 + 1);
        }

        while (size >= v7);
      }

      v8 = GpsdLogObjectWarning;
      if (os_log_type_enabled(GpsdLogObjectWarning, OS_LOG_TYPE_DEFAULT))
      {
        *v31 = 136446210;
        v32 = p_buf;
        _os_log_impl(&dword_2454AA000, v8, OS_LOG_TYPE_DEFAULT, "VendorLogger,closeLogFile,Could not archive,%{public}s", v31, 0xCu);
      }
    }

    else
    {
      v9 = 0;
LABEL_25:
      if ((v27 & 0x80u) == 0)
      {
        v10 = __p;
      }

      else
      {
        v10 = __p[0];
      }

      if ((v27 & 0x80u) == 0)
      {
        v11 = v27;
      }

      else
      {
        v11 = __p[1];
      }

      std::string::replace(&buf, v9, v7, v10, v11);
      v12 = GpsdLogObjectGeneral;
      if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_DEFAULT))
      {
        v14 = this + 103;
        if (*(this + 847) < 0)
        {
          v14 = v2->__pn_.__r_.__value_.__r.__words[0];
        }

        v15 = &buf;
        if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v15 = buf.__r_.__value_.__r.__words[0];
        }

        *v31 = 136446466;
        v32 = v14;
        v33 = 2082;
        v34 = v15;
        _os_log_impl(&dword_2454AA000, v12, OS_LOG_TYPE_DEFAULT, "VendorLogger,closeLogFile,Archiving,Old name,%{public}s,New name,%{public}s", v31, 0x16u);
      }

      if (*(this + 847) < 0)
      {
        v2 = v2->__pn_.__r_.__value_.__r.__words[0];
      }

      if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v16 = &buf;
      }

      else
      {
        v16 = buf.__r_.__value_.__r.__words[0];
      }

      rename(v2, v16, v13);
      if (v17)
      {
        v18 = GpsdLogObjectGeneral;
        if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_ERROR))
        {
          v25 = *__error();
          *v31 = 67240192;
          LODWORD(v32) = v25;
          _os_log_error_impl(&dword_2454AA000, v18, OS_LOG_TYPE_ERROR, "VendorLogger,closeLogFile,rename failed,%{public}d", v31, 8u);
        }
      }
    }

    if (*(this + 847) < 0)
    {
      *this[103] = 0;
      this[104] = 0;
    }

    else
    {
      *(this + 824) = 0;
      *(this + 847) = 0;
    }

    if (v27 < 0)
    {
      operator delete(__p[0]);
    }

    if (v29 < 0)
    {
      operator delete(v28[0]);
    }

    if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(buf.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    v3 = GpsdLogObjectGeneral;
    if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_INFO))
    {
      LOWORD(buf.__r_.__value_.__l.__data_) = 0;
      _os_log_impl(&dword_2454AA000, v3, OS_LOG_TYPE_INFO, "VendorLogger,closeLogFile,No output to close", &buf, 2u);
    }
  }
}

void sub_2455692D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  _Unwind_Resume(exception_object);
}

void __copy_helper_block_e8_40c67_ZTSKNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 63) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 40), *(a2 + 40), *(a2 + 48));
  }

  else
  {
    v2 = *(a2 + 40);
    *(a1 + 56) = *(a2 + 56);
    *(a1 + 40) = v2;
  }
}

void __destroy_helper_block_e8_40c67_ZTSKNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE(uint64_t a1)
{
  if (*(a1 + 63) < 0)
  {
    operator delete(*(a1 + 40));
  }
}

const char *algorithmName(int a1)
{
  if (a1 > 773)
  {
    if (a1 != 774)
    {
      if (a1 == 2049)
      {
        return "lzfse";
      }

      return "unk";
    }

    return "lzma";
  }

  else
  {
    if (a1 != 256)
    {
      if (a1 == 517)
      {
        return "zlib";
      }

      return "unk";
    }

    return "lz4";
  }
}

void VendorLogger::VendorLogger(VendorLogger *this, const VendorLogger::Config *a2)
{
  v53 = *MEMORY[0x277D85DE8];
  *this = &unk_285863B90;
  v4 = (this + 8);
  *(this + 1) = &unk_2858638D8;
  v5 = GpsdSessionHandlerManager::instance(this);
  GpsdSessionHandlerManager::addEventHandler(v5, v4);
  *this = &unk_285863AD8;
  *(this + 1) = &unk_285863B18;
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external((this + 16), *a2, *(a2 + 1));
  }

  else
  {
    v6 = *a2;
    *(this + 4) = *(a2 + 2);
    *(this + 1) = v6;
  }

  if (*(a2 + 47) < 0)
  {
    std::string::__init_copy_ctor_external((this + 40), *(a2 + 3), *(a2 + 4));
  }

  else
  {
    v7 = *(a2 + 24);
    *(this + 7) = *(a2 + 5);
    *(this + 40) = v7;
  }

  if (*(a2 + 71) < 0)
  {
    std::string::__init_copy_ctor_external((this + 64), *(a2 + 6), *(a2 + 7));
  }

  else
  {
    v8 = *(a2 + 3);
    *(this + 10) = *(a2 + 8);
    *(this + 4) = v8;
  }

  if (*(a2 + 95) < 0)
  {
    std::string::__init_copy_ctor_external((this + 88), *(a2 + 9), *(a2 + 10));
  }

  else
  {
    v9 = *(a2 + 72);
    *(this + 13) = *(a2 + 11);
    *(this + 88) = v9;
  }

  if (*(a2 + 119) < 0)
  {
    std::string::__init_copy_ctor_external((this + 112), *(a2 + 12), *(a2 + 13));
  }

  else
  {
    v10 = *(a2 + 6);
    *(this + 16) = *(a2 + 14);
    *(this + 7) = v10;
  }

  v11 = *(a2 + 120);
  v12 = *(a2 + 136);
  v13 = *(a2 + 19);
  *(this + 22) = 0;
  *(this + 21) = v13;
  *(this + 152) = v12;
  *(this + 136) = v11;
  *(this + 23) = 0;
  *(this + 24) = 0;
  *(this + 60) = 2049;
  *(this + 122) = 0;
  *(this + 31) = 0;
  *(this + 90) = 0;
  v14 = MEMORY[0x277D82860] + 64;
  *(this + 84) = MEMORY[0x277D82860] + 64;
  v15 = *(MEMORY[0x277D82810] + 16);
  v16 = *(MEMORY[0x277D82810] + 8);
  *(this + 32) = v16;
  *(this + *(v16 - 24) + 256) = v15;
  v17 = (this + *(*(this + 32) - 24) + 256);
  std::ios_base::init(v17, this + 264);
  v18 = MEMORY[0x277D82860] + 24;
  v17[1].__vftable = 0;
  v17[1].__fmtflags_ = -1;
  *(this + 32) = v18;
  *(this + 84) = v14;
  v19 = MEMORY[0x245D6AC40](this + 264);
  *(this + 853) = 0u;
  *(this + 824) = 0u;
  *(this + 840) = 0u;
  *(this + 109) = 0;
  *(this + 111) = 0;
  *(this + 110) = 0;
  v20 = GpsdRuntime::instance(v19);
  *(this + 106) = *v20;
  v21 = *(GpsdRuntime::instance(v20) + 16);
  *(this + 107) = v21;
  if (!v21)
  {
    v30 = GpsdLogObjectGeneral;
    if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2454AA000, v30, OS_LOG_TYPE_ERROR, "#gvl,fQueue,null", buf, 2u);
      v30 = GpsdLogObjectGeneral;
    }

    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v48 = "/Library/Caches/com.apple.xbs/Sources/CoreGPS/Sources/Util/GpsdVendorLogger.cpp";
      v49 = 1026;
      v50 = 150;
      v51 = 2082;
      v52 = "VendorLogger";
      _os_log_error_impl(&dword_2454AA000, v30, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: assertion failure in %{public}s", buf, 0x1Cu);
    }

    std::string::basic_string[abi:ne200100]<0>(v45, "assert");
    std::string::basic_string[abi:ne200100]<0>(v43, "VendorLogger");
    std::string::basic_string[abi:ne200100]<0>(__p, "#gvl,fQueue,null");
    gpsd::util::triggerDiagnosticReport(v45, v43, __p);
    if (v42 < 0)
    {
      operator delete(__p[0]);
    }

    if (v44 < 0)
    {
      operator delete(v43[0]);
    }

    v31 = "false && #gvl,fQueue,null";
    v32 = 150;
    if (v46 < 0)
    {
      v33 = v45;
LABEL_60:
      operator delete(*v33);
    }

LABEL_61:
    __assert_rtn("VendorLogger", "GpsdVendorLogger.cpp", v32, v31);
  }

  v22 = GpsdPreferences::instance(0);
  if (!GpsdPreferences::getLogLevel(v22))
  {
    v34 = GpsdLogObjectGeneral;
    if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2454AA000, v34, OS_LOG_TYPE_ERROR, "#gvl,ctor,isLoggingToFileEnabled,false", buf, 2u);
      v34 = GpsdLogObjectGeneral;
    }

    if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v48 = "/Library/Caches/com.apple.xbs/Sources/CoreGPS/Sources/Util/GpsdVendorLogger.cpp";
      v49 = 1026;
      v50 = 151;
      v51 = 2082;
      v52 = "VendorLogger";
      _os_log_error_impl(&dword_2454AA000, v34, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: assertion failure in %{public}s", buf, 0x1Cu);
    }

    std::string::basic_string[abi:ne200100]<0>(v39, "assert");
    std::string::basic_string[abi:ne200100]<0>(v37, "VendorLogger");
    std::string::basic_string[abi:ne200100]<0>(v35, "#gvl,ctor,isLoggingToFileEnabled,false");
    gpsd::util::triggerDiagnosticReport(v39, v37, v35);
    if (v36 < 0)
    {
      operator delete(v35[0]);
    }

    if (v38 < 0)
    {
      operator delete(v37[0]);
    }

    v31 = "false && #gvl,ctor,isLoggingToFileEnabled,false";
    v32 = 151;
    if (v40 < 0)
    {
      v33 = v39;
      goto LABEL_60;
    }

    goto LABEL_61;
  }

  v23 = GpsdPreferences::instance(0);
  if (GpsdPreferences::vendorLogLz4(v23))
  {
    v24 = 256;
LABEL_24:
    *(this + 244) = 1;
    *(this + 60) = v24;
    goto LABEL_25;
  }

  v25 = GpsdPreferences::instance(0);
  if (GpsdPreferences::vendorLogLzfse(v25))
  {
    v24 = 2049;
    goto LABEL_24;
  }

  v26 = GpsdPreferences::instance(0);
  if (GpsdPreferences::vendorLogZlib(v26))
  {
    v24 = 517;
    goto LABEL_24;
  }

  if ((*(this + 244) & 1) == 0)
  {
    return;
  }

LABEL_25:
  v27 = GpsdLogObjectGeneral;
  if (!os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_INFO))
  {
    return;
  }

  v28 = *(this + 60);
  if (v28 > 773)
  {
    if (v28 == 774)
    {
      v29 = "lzma";
      goto LABEL_38;
    }

    if (v28 == 2049)
    {
      v29 = "lzfse";
      goto LABEL_38;
    }

LABEL_35:
    v29 = "unk";
    goto LABEL_38;
  }

  if (v28 == 256)
  {
    v29 = "lz4";
    goto LABEL_38;
  }

  if (v28 != 517)
  {
    goto LABEL_35;
  }

  v29 = "zlib";
LABEL_38:
  *buf = 136446210;
  v48 = v29;
  _os_log_impl(&dword_2454AA000, v27, OS_LOG_TYPE_INFO, "VendorLogger,compression enabled,%{public}s", buf, 0xCu);
}

void sub_245569AEC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, void *a33, uint64_t a34, int a35, __int16 a36, char a37, char a38, uint64_t a39, uint64_t a40, int a41, __int16 a42, char a43, char a44)
{
  if (*(v44 + 111) < 0)
  {
    operator delete(*(v44 + 88));
  }

  if (*(v44 + 87) < 0)
  {
    operator delete(*(v44 + 64));
  }

  if (*(v44 + 63) < 0)
  {
    operator delete(*(v44 + 40));
  }

  if (*(v44 + 39) < 0)
  {
    operator delete(*(v44 + 16));
  }

  GpsdSessionHandler::~GpsdSessionHandler(v45);
  _Unwind_Resume(a1);
}

void VendorLogger::Config::~Config(void **this)
{
  if (*(this + 119) < 0)
  {
    operator delete(this[12]);
  }

  if (*(this + 95) < 0)
  {
    operator delete(this[9]);
  }

  if (*(this + 71) < 0)
  {
    operator delete(this[6]);
  }

  if (*(this + 47) < 0)
  {
    operator delete(this[3]);
  }

  if (*(this + 23) < 0)
  {
    operator delete(*this);
  }
}

uint64_t VendorLogger::generateDefaultConfig@<X0>(uint64_t a1@<X8>)
{
  std::string::basic_string[abi:ne200100]<0>(a1, "gpsd");
  std::string::basic_string[abi:ne200100]<0>((a1 + 24), "o");
  std::string::basic_string[abi:ne200100]<0>((a1 + 48), "");
  std::string::basic_string[abi:ne200100]<0>((a1 + 72), "log");
  *(a1 + 96) = 0u;
  v2 = (a1 + 96);
  *(a1 + 141) = 0;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 152) = -1;
  v3 = GpsdPreferences::instance(0);
  GpsdPreferences::vendorLogRetentionDays(v3);
  *(a1 + 120) = ((v4 * 24.0) * 3600.0);
  v5 = GpsdPreferences::instance(0);
  *(a1 + 128) = GpsdPreferences::vendorLogRotationSizeMB(v5) << 20;
  v6 = GpsdPreferences::instance(0);
  *(a1 + 136) = GpsdPreferences::vendorLogMaxDirectorySizeMB(v6) << 20;
  v7 = GpsdPreferences::instance(0);
  *(a1 + 144) = GpsdPreferences::vendorLogMaxNumberOfFiles(v7);
  v8 = GpsdPreferences::instance(0);
  *(a1 + 148) = GpsdPreferences::vendorLogPrefixWithTimestamp(v8);
  v9 = GpsdPreferences::instance(0);
  GpsdPreferences::vendorLogDirectory(v9, &v12);
  if (*(a1 + 119) < 0)
  {
    operator delete(*v2);
  }

  *v2 = v12;
  *(a1 + 112) = v13;
  v10 = GpsdPreferences::instance(0);
  result = GpsdPreferences::vendorLogBufferSizeAllowedKB(v10);
  *(a1 + 152) = result << 10;
  return result;
}

void VendorLogger::~VendorLogger(VendorLogger *this)
{
  *this = &unk_285863AD8;
  v2 = (this + 8);
  *(this + 1) = &unk_285863B18;
  v3 = *(this + 107);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 0x40000000;
  block[2] = ___ZN12VendorLoggerD2Ev_block_invoke;
  block[3] = &__block_descriptor_tmp_14;
  block[4] = this;
  dispatch_sync(v3, block);
  std::unique_ptr<VendorLogger::MemoryStat>::reset[abi:ne200100](this + 111, 0);
  if (*(this + 847) < 0)
  {
    operator delete(*(this + 103));
  }

  v4 = MEMORY[0x277D82810];
  v5 = *MEMORY[0x277D82810];
  *(this + 32) = *MEMORY[0x277D82810];
  *(this + *(v5 - 24) + 256) = *(v4 + 24);
  MEMORY[0x245D6AC50](this + 264);
  std::ostream::~ostream();
  MEMORY[0x245D6AE70](this + 672);
  v6 = *(this + 22);
  if (v6)
  {
    *(this + 23) = v6;
    operator delete(v6);
  }

  if (*(this + 135) < 0)
  {
    operator delete(*(this + 14));
  }

  if (*(this + 111) < 0)
  {
    operator delete(*(this + 11));
  }

  if (*(this + 87) < 0)
  {
    operator delete(*(this + 8));
  }

  if (*(this + 63) < 0)
  {
    operator delete(*(this + 5));
  }

  if (*(this + 39) < 0)
  {
    operator delete(*(this + 2));
  }

  *(this + 1) = &unk_2858638D8;
  v7 = GpsdSessionHandlerManager::instance(v6);
  GpsdSessionHandlerManager::removeEventHandler(v7, v2);
}

{
  VendorLogger::~VendorLogger(this);

  JUMPOUT(0x245D6AEE0);
}

void non-virtual thunk toVendorLogger::~VendorLogger(VendorLogger *this)
{
  VendorLogger::~VendorLogger((this - 8));
}

{
  VendorLogger::~VendorLogger((this - 8));

  JUMPOUT(0x245D6AEE0);
}

void VendorLogger::flushCompression(compression_stream *this)
{
  v26 = *MEMORY[0x277D85DE8];
  if (BYTE4(this[6].dst_ptr) == 1 && BYTE5(this[6].dst_ptr) == 1)
  {
    v2 = GpsdLogObjectGeneral;
    do
    {
      while (1)
      {
        v15 = 0;
        this[5].src_ptr = &v15;
        this[5].src_size = 0;
        src_ptr = this[4].src_ptr;
        v4 = this[4].src_size - src_ptr;
        this[5].dst_ptr = src_ptr;
        this[5].dst_size = v4;
        if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
        {
          *buf = 134349824;
          v17 = &v15;
          v18 = 2050;
          v19 = 0;
          v20 = 2050;
          v21 = src_ptr;
          v22 = 2050;
          v23 = v4;
          _os_log_debug_impl(&dword_2454AA000, v2, OS_LOG_TYPE_DEBUG, "VendorLogger,flushCompression,before,%{public}p,%{public}zu,%{public}p,%{public}zu", buf, 0x2Au);
        }

        v5 = compression_stream_process(this + 5, 1);
        if (v5 > COMPRESSION_STATUS_END)
        {
          v9 = GpsdLogObjectGeneral;
          if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_error_impl(&dword_2454AA000, v9, OS_LOG_TYPE_ERROR, "VendorLogger,flushCompression,failed to finalize stream", buf, 2u);
          }
        }

        else
        {
          v6 = this[4].src_size - this[4].src_ptr;
          dst_size = this[5].dst_size;
          v8 = GpsdLogObjectGeneral;
          if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_DEBUG))
          {
            *buf = 134349056;
            v17 = (v6 - dst_size);
            _os_log_debug_impl(&dword_2454AA000, v8, OS_LOG_TYPE_DEBUG, "VendorLogger,flushCompression,flushed bytes,%{public}zu", buf, 0xCu);
          }

          if (v6 != dst_size)
          {
            std::ostream::write();
          }
        }

        v2 = GpsdLogObjectGeneral;
        if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_DEBUG))
        {
          break;
        }

        if (v5)
        {
          goto LABEL_17;
        }
      }

      v10 = this[5].src_ptr;
      src_size = this[5].src_size;
      dst_ptr = this[5].dst_ptr;
      v13 = this[5].dst_size;
      *buf = 134350080;
      v17 = v10;
      v18 = 2050;
      v19 = src_size;
      v20 = 2050;
      v21 = dst_ptr;
      v22 = 2050;
      v23 = v13;
      v24 = 1026;
      v25 = v5;
      _os_log_debug_impl(&dword_2454AA000, v2, OS_LOG_TYPE_DEBUG, "VendorLogger,flushCompression,after,%{public}p,%{public}zu,%{public}p,%{public}zu,status,%{public}d", buf, 0x30u);
      v2 = GpsdLogObjectGeneral;
    }

    while (v5 == COMPRESSION_STATUS_OK);
LABEL_17:
    BYTE5(this[6].dst_ptr) = 0;
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_debug_impl(&dword_2454AA000, v2, OS_LOG_TYPE_DEBUG, "VendorLogger,flushCompression,destroying", buf, 2u);
    }

    if (compression_stream_destroy(this + 5))
    {
      v14 = GpsdLogObjectGeneral;
      if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_2454AA000, v14, OS_LOG_TYPE_ERROR, "VendorLogger,flushCompression,failed to destroy stream", buf, 2u);
      }
    }
  }
}

char *std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(uint64_t a1, const void **a2, const void **a3)
{
  if (*(a2 + 23) >= 0)
  {
    v5 = *(a2 + 23);
  }

  else
  {
    v5 = a2[1];
  }

  if (*(a3 + 23) >= 0)
  {
    v6 = *(a3 + 23);
  }

  else
  {
    v6 = a3[1];
  }

  result = std::string::basic_string[abi:ne200100](a1, v6 + v5);
  if (result[23] >= 0)
  {
    v8 = result;
  }

  else
  {
    v8 = *result;
  }

  if (v5)
  {
    if (*(a2 + 23) >= 0)
    {
      v9 = a2;
    }

    else
    {
      v9 = *a2;
    }

    result = memmove(v8, v9, v5);
  }

  v10 = &v8[v5];
  if (v6)
  {
    if (*(a3 + 23) >= 0)
    {
      v11 = a3;
    }

    else
    {
      v11 = *a3;
    }

    result = memmove(v10, v11, v6);
  }

  v10[v6] = 0;
  return result;
}

void VendorLogger::pruneLogFiles(VendorLogger *this)
{
  v64 = *MEMORY[0x277D85DE8];
  if (clock_gettime(_CLOCK_REALTIME, &__tp))
  {
    v1 = GpsdLogObjectGeneral;
    if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_ERROR))
    {
      v44 = *__error();
      LODWORD(v58.__r_.__value_.__l.__data_) = 67240192;
      HIDWORD(v58.__r_.__value_.__r.__words[0]) = v44;
      _os_log_error_impl(&dword_2454AA000, v1, OS_LOG_TYPE_ERROR, "VendorLogger,pruneLogFiles,clock_gettime failed,%{public}d", &v58, 8u);
    }
  }

  tv_sec = __tp.tv_sec;
  v3 = *(this + 17);
  if (v3 >= __tp.tv_sec)
  {
    v4 = GpsdLogObjectGeneral;
    if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_ERROR))
    {
      LODWORD(v58.__r_.__value_.__l.__data_) = 134349056;
      *(v58.__r_.__value_.__r.__words + 4) = tv_sec;
      _os_log_error_impl(&dword_2454AA000, v4, OS_LOG_TYPE_ERROR, "VendorLogger,pruneLogFiles,timespecNow too small to use,%{public}ld", &v58, 0xCu);
      v3 = *(this + 17);
    }
  }

  v5 = GpsdPreferences::instance(0);
  GpsdPreferences::vendorLogDirectory(v5, &v54);
  if (v56 < 0)
  {
    if (v55)
    {
      v51 = 0;
      v52 = 0;
      v53 = 0;
      v6 = v54;
      goto LABEL_12;
    }

LABEL_90:
    v43 = GpsdLogObjectWarning;
    if (os_log_type_enabled(GpsdLogObjectWarning, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v58.__r_.__value_.__l.__data_) = 0;
      _os_log_impl(&dword_2454AA000, v43, OS_LOG_TYPE_DEFAULT, "VendorLogger.pruneLogFiles: null path, cannot delete old logs", &v58, 2u);
    }

    goto LABEL_92;
  }

  if (!v56)
  {
    goto LABEL_90;
  }

  v51 = 0;
  v52 = 0;
  v6 = &v54;
  v53 = 0;
LABEL_12:
  gpsd::util::enumerateFiles(v6, this + 2, &v51);
  v7 = 126 - 2 * __clz(0xAAAAAAAAAAAAAAABLL * ((v52 - v51) >> 3));
  if (v52 == v51)
  {
    v8 = 0;
  }

  else
  {
    v8 = v7;
  }

  std::__introsort<std::_ClassicAlgPolicy,std::greater<void> &,std::string *,false>(v51, v52, v8, 1);
  v49 = 0;
  v9 = v51;
  v10 = v52;
  if (v51 != v52)
  {
    v11 = 0;
    v12 = 0;
    v46 = tv_sec - v3;
    while (1)
    {
      if ((v56 & 0x80u) == 0)
      {
        v13 = v56;
      }

      else
      {
        v13 = v55;
      }

      std::string::basic_string[abi:ne200100](&v58, v13 + 1);
      if ((v58.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v14 = &v58;
      }

      else
      {
        v14 = v58.__r_.__value_.__r.__words[0];
      }

      if (v13)
      {
        if ((v56 & 0x80u) == 0)
        {
          v15 = &v54;
        }

        else
        {
          v15 = v54;
        }

        memmove(v14, v15, v13);
      }

      *(&v14->__r_.__value_.__l.__data_ + v13) = 47;
      v16 = *(v9 + 23);
      if (v16 >= 0)
      {
        v17 = v9;
      }

      else
      {
        v17 = *v9;
      }

      if (v16 >= 0)
      {
        v18 = *(v9 + 23);
      }

      else
      {
        v18 = *(v9 + 1);
      }

      v19 = std::string::append(&v58, v17, v18);
      v20 = *&v19->__r_.__value_.__l.__data_;
      v48 = v19->__r_.__value_.__r.__words[2];
      *__p = v20;
      v19->__r_.__value_.__l.__size_ = 0;
      v19->__r_.__value_.__r.__words[2] = 0;
      v19->__r_.__value_.__r.__words[0] = 0;
      if (SHIBYTE(v58.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v58.__r_.__value_.__l.__data_);
      }

      if (v48 >= 0)
      {
        v21 = __p;
      }

      else
      {
        v21 = __p[0];
      }

      if (!getFileModificationTimeAndSize(v21, &v50, &v49))
      {
        goto LABEL_76;
      }

      v22 = v49;
      v23 = v49 + v11;
      v24 = GpsdLogObjectGeneral;
      v25 = os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_DEBUG);
      v26 = v50.tv_sec;
      if (v25)
      {
        if (v48 >= 0)
        {
          v41 = __p;
        }

        else
        {
          v41 = __p[0];
        }

        LODWORD(v58.__r_.__value_.__l.__data_) = 136447234;
        *(v58.__r_.__value_.__r.__words + 4) = v41;
        WORD2(v58.__r_.__value_.__r.__words[1]) = 2050;
        *(&v58.__r_.__value_.__r.__words[1] + 6) = v50.tv_sec;
        HIWORD(v58.__r_.__value_.__r.__words[2]) = 2050;
        v59 = v46;
        v60 = 2050;
        v61 = v22;
        v62 = 2050;
        v63 = v23;
        _os_log_debug_impl(&dword_2454AA000, v24, OS_LOG_TYPE_DEBUG, "VendorLogger,pruneLogFiles,looking at,%{public}s,modTime,%{public}ld,floorTime,%{public}ld,size,%{public}lld,new total,%{public}lld", &v58, 0x34u);
      }

      if (v26 < v46)
      {
        if (v48 >= 0)
        {
          v27 = __p;
        }

        else
        {
          v27 = __p[0];
        }

        deleteFile(v27);
        v28 = GpsdLogObjectGeneral;
        if (!os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_DEBUG))
        {
          goto LABEL_75;
        }

        if (v48 >= 0)
        {
          v29 = __p;
        }

        else
        {
          v29 = __p[0];
        }

        LODWORD(v58.__r_.__value_.__l.__data_) = 136446722;
        *(v58.__r_.__value_.__r.__words + 4) = v29;
        WORD2(v58.__r_.__value_.__r.__words[1]) = 2050;
        *(&v58.__r_.__value_.__r.__words[1] + 6) = v26;
        HIWORD(v58.__r_.__value_.__r.__words[2]) = 2050;
        v59 = v46;
        v30 = v28;
        v31 = "VendorLogger,pruneLogFiles,deleted due to age,%{public}s,fileTime,%{public}ld,targetTime,%{public}ld";
        v32 = 32;
        goto LABEL_74;
      }

      if (v12 >= *(this + 40))
      {
        break;
      }

      if (v22)
      {
        if (v23 <= *(this + 19))
        {
          ++v12;
          v11 = v23;
        }

        else
        {
          if (v48 >= 0)
          {
            v33 = __p;
          }

          else
          {
            v33 = __p[0];
          }

          deleteFile(v33);
          v34 = GpsdLogObjectGeneral;
          if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_DEBUG))
          {
            if (v48 >= 0)
            {
              v42 = __p;
            }

            else
            {
              v42 = __p[0];
            }

            LODWORD(v58.__r_.__value_.__l.__data_) = 136446210;
            *(v58.__r_.__value_.__r.__words + 4) = v42;
            _os_log_debug_impl(&dword_2454AA000, v34, OS_LOG_TYPE_DEBUG, "VendorLogger,pruneLogFiles,deleted due to size,%{public}s", &v58, 0xCu);
          }

          ++v12;
          v11 = v23;
        }

        goto LABEL_76;
      }

      if (v48 >= 0)
      {
        v38 = __p;
      }

      else
      {
        v38 = __p[0];
      }

      deleteFile(v38);
      v39 = GpsdLogObjectGeneral;
      if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_DEBUG))
      {
        if (v48 >= 0)
        {
          v40 = __p;
        }

        else
        {
          v40 = __p[0];
        }

        LODWORD(v58.__r_.__value_.__l.__data_) = 136446210;
        *(v58.__r_.__value_.__r.__words + 4) = v40;
        v30 = v39;
        v31 = "VendorLogger,pruneLogFiles,deleted due to zero size,%{public}s";
        v32 = 12;
LABEL_74:
        _os_log_debug_impl(&dword_2454AA000, v30, OS_LOG_TYPE_DEBUG, v31, &v58, v32);
      }

LABEL_75:
      ++v12;
LABEL_76:
      if (SHIBYTE(v48) < 0)
      {
        operator delete(__p[0]);
      }

      v9 = (v9 + 24);
      if (v9 == v10)
      {
        goto LABEL_89;
      }
    }

    if (v48 >= 0)
    {
      v35 = __p;
    }

    else
    {
      v35 = __p[0];
    }

    deleteFile(v35);
    v36 = GpsdLogObjectGeneral;
    if (!os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_75;
    }

    if (v48 >= 0)
    {
      v37 = __p;
    }

    else
    {
      v37 = __p[0];
    }

    LODWORD(v58.__r_.__value_.__l.__data_) = 136446466;
    *(v58.__r_.__value_.__r.__words + 4) = v37;
    WORD2(v58.__r_.__value_.__r.__words[1]) = 1026;
    *(&v58.__r_.__value_.__r.__words[1] + 6) = v12 + 1;
    v30 = v36;
    v31 = "VendorLogger,pruneLogFiles,deleted due to num files,%{public}s,num files,%{public}d";
    v32 = 18;
    goto LABEL_74;
  }

LABEL_89:
  v58.__r_.__value_.__r.__words[0] = &v51;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v58);
LABEL_92:
  if (v56 < 0)
  {
    operator delete(v54);
  }
}

void sub_24556AB60(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, void *__p, uint64_t a33, int a34, __int16 a35, char a36, char a37)
{
  *(v37 - 176) = &a29;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100]((v37 - 176));
  if (a37 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void VendorLogger::ensureLogFileIsOpen(VendorLogger *this)
{
  if ((*(this + 868) & 1) == 0)
  {
    VendorLogger::openNewLogFile(this);
  }
}

void VendorLogger::openNewLogFile(VendorLogger *this)
{
  v7 = *MEMORY[0x277D85DE8];
  VendorLogger::ensureDirectoryExists(this);
  if (*(this + 868) == 1)
  {
    VendorLogger::closeLogFile(this);
    VendorLogger::pruneLogFiles(this);
  }

  VendorLogger::initCompression(this);
  VendorLogger::generateFilename(&v5, this);
  v2 = (this + 824);
  if (*(this + 847) < 0)
  {
    operator delete(*v2);
  }

  *v2 = v5;
  *(this + 105) = v6;
  std::ofstream::open();
  v3 = GpsdLogObjectGeneral;
  if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    if (*(this + 847) < 0)
    {
      v2 = *v2;
    }

    LODWORD(v5) = 136446210;
    *(&v5 + 4) = v2;
    _os_log_impl(&dword_2454AA000, v3, OS_LOG_TYPE_DEFAULT, "VendorLogger,opening,%{public}s", &v5, 0xCu);
  }

  if (!*(this + 48))
  {
    v4 = GpsdLogObjectGeneral;
    if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v5) = 0;
      _os_log_error_impl(&dword_2454AA000, v4, OS_LOG_TYPE_ERROR, "VendorLogger,failed to open", &v5, 2u);
    }
  }

  *(this + 868) = 1;
}

void VendorLogger::ensureLogFileIsClosed(std::string::size_type *this)
{
  if (*(this + 868) == 1)
  {
    VendorLogger::closeLogFile(this);

    VendorLogger::pruneLogFiles(this);
  }
}

void VendorLogger::ensureDirectoryExists(VendorLogger *this)
{
  v18 = *MEMORY[0x277D85DE8];
  v2 = this + 112;
  v3 = *(this + 135);
  v4 = this + 112;
  if (v3 < 0)
  {
    v4 = *v2;
  }

  if (mkdir(v4, 0x1F8u))
  {
    v5 = *__error();
    if (v5 != 17)
    {
      v13 = GpsdLogObjectGeneral;
      if (!os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_ERROR))
      {
        return;
      }

      if (*(this + 135) < 0)
      {
        v2 = *v2;
      }

      v14 = 136446466;
      v15 = v2;
      v16 = 1026;
      v17 = v5;
      v9 = "VendorLogger,could not create directory,%{public}s,%{public}d";
      v10 = v13;
      v11 = 18;
      goto LABEL_18;
    }

    if (*(this + 135) < 0)
    {
      v2 = *v2;
    }

    v6 = chmod(v2, 0x1F8u);
    v7 = GpsdLogObjectGeneral;
    if (v6)
    {
      if (!os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_ERROR))
      {
        return;
      }

      v8 = *__error();
      v14 = 67240192;
      LODWORD(v15) = v8;
      v9 = "VendorLogger,chmod failed,%{public}d";
      v10 = v7;
      v11 = 8;
LABEL_18:
      _os_log_error_impl(&dword_2454AA000, v10, OS_LOG_TYPE_ERROR, v9, &v14, v11);
      return;
    }

    if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_DEBUG))
    {
      v14 = 67240192;
      LODWORD(v15) = 504;
      _os_log_debug_impl(&dword_2454AA000, v7, OS_LOG_TYPE_DEBUG, "VendorLogger,directory exists,permissions,%{public}x", &v14, 8u);
    }
  }

  else
  {
    v12 = GpsdLogObjectGeneral;
    if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_INFO))
    {
      if (*(this + 135) < 0)
      {
        v2 = *v2;
      }

      v14 = 136446466;
      v15 = v2;
      v16 = 1026;
      v17 = 504;
      _os_log_impl(&dword_2454AA000, v12, OS_LOG_TYPE_INFO, "VendorLogger,created directory,%{public}s,permissions,%{public}x", &v14, 0x12u);
    }
  }
}

void VendorLogger::initCompression(VendorLogger *this)
{
  if (*(this + 244) == 1)
  {
    v10 = v1;
    v11 = v2;
    *(this + 31) = 0;
    v4 = *(this + 22);
    v5 = *(this + 23) - v4;
    if (v5 >> 15)
    {
      if (v5 != 0x8000)
      {
        *(this + 23) = v4 + 0x8000;
      }
    }

    else
    {
      std::vector<unsigned char>::__append(this + 22, 0x8000 - v5);
    }

    v6 = GpsdLogObjectGeneral;
    if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_debug_impl(&dword_2454AA000, v6, OS_LOG_TYPE_DEBUG, "VendorLogger,initCompression", buf, 2u);
    }

    if (compression_stream_init(this + 5, COMPRESSION_STREAM_ENCODE, *(this + 60)))
    {
      v7 = GpsdLogObjectGeneral;
      if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_ERROR))
      {
        *v8 = 0;
        _os_log_error_impl(&dword_2454AA000, v7, OS_LOG_TYPE_ERROR, "VendorLogger,initCompression,Could not init stream", v8, 2u);
      }

      *(this + 244) = 0;
      *(this + 23) = *(this + 22);
    }

    else
    {
      *(this + 245) = 1;
    }
  }
}

void VendorLogger::generateFilename(uint64_t *__return_ptr a1@<X8>, VendorLogger *this@<X0>)
{
  v55 = *MEMORY[0x277D85DE8];
  snprintf(__str, 8uLL, "%03d", *(this + 216));
  ++*(this + 216);
  a1[1] = 0;
  a1[2] = 0;
  *a1 = 0;
  VendorLogger::isoTimestampString(v51);
  std::string::basic_string[abi:ne200100]<0>(v49, __str);
  if (*GpsdPreferences::instance(0) == 3)
  {
    MEMORY[0x245D6AB60](v51, "unittest");
    MEMORY[0x245D6AB60](v49, "000");
  }

  if (*(this + 135) >= 0)
  {
    v4 = *(this + 135);
  }

  else
  {
    v4 = *(this + 15);
  }

  v5 = &v42;
  std::string::basic_string[abi:ne200100](&v42, v4 + 1);
  if ((v42.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v5 = v42.__r_.__value_.__r.__words[0];
  }

  if (v4)
  {
    if (*(this + 135) >= 0)
    {
      v6 = this + 112;
    }

    else
    {
      v6 = *(this + 14);
    }

    memmove(v5, v6, v4);
  }

  *(&v5->__r_.__value_.__l.__data_ + v4) = 47;
  v7 = *(this + 39);
  if (v7 >= 0)
  {
    v8 = this + 16;
  }

  else
  {
    v8 = *(this + 2);
  }

  if (v7 >= 0)
  {
    v9 = *(this + 39);
  }

  else
  {
    v9 = *(this + 3);
  }

  v10 = std::string::append(&v42, v8, v9);
  v11 = *&v10->__r_.__value_.__l.__data_;
  v43.__r_.__value_.__r.__words[2] = v10->__r_.__value_.__r.__words[2];
  *&v43.__r_.__value_.__l.__data_ = v11;
  v10->__r_.__value_.__l.__size_ = 0;
  v10->__r_.__value_.__r.__words[2] = 0;
  v10->__r_.__value_.__r.__words[0] = 0;
  if ((v52 & 0x80u) == 0)
  {
    v12 = v51;
  }

  else
  {
    v12 = v51[0];
  }

  if ((v52 & 0x80u) == 0)
  {
    v13 = v52;
  }

  else
  {
    v13 = v51[1];
  }

  v14 = std::string::append(&v43, v12, v13);
  v15 = *&v14->__r_.__value_.__l.__data_;
  v44.__r_.__value_.__r.__words[2] = v14->__r_.__value_.__r.__words[2];
  *&v44.__r_.__value_.__l.__data_ = v15;
  v14->__r_.__value_.__l.__size_ = 0;
  v14->__r_.__value_.__r.__words[2] = 0;
  v14->__r_.__value_.__r.__words[0] = 0;
  v16 = std::string::append(&v44, "_");
  v17 = *&v16->__r_.__value_.__l.__data_;
  v45.__r_.__value_.__r.__words[2] = v16->__r_.__value_.__r.__words[2];
  *&v45.__r_.__value_.__l.__data_ = v17;
  v16->__r_.__value_.__l.__size_ = 0;
  v16->__r_.__value_.__r.__words[2] = 0;
  v16->__r_.__value_.__r.__words[0] = 0;
  if (v50 >= 0)
  {
    v18 = v49;
  }

  else
  {
    v18 = v49[0];
  }

  std::string::basic_string[abi:ne200100]<0>(__p, v18);
  if ((v41 & 0x80u) == 0)
  {
    v19 = __p;
  }

  else
  {
    v19 = __p[0];
  }

  if ((v41 & 0x80u) == 0)
  {
    v20 = v41;
  }

  else
  {
    v20 = __p[1];
  }

  v21 = std::string::append(&v45, v19, v20);
  v22 = *&v21->__r_.__value_.__l.__data_;
  v46.__r_.__value_.__r.__words[2] = v21->__r_.__value_.__r.__words[2];
  *&v46.__r_.__value_.__l.__data_ = v22;
  v21->__r_.__value_.__l.__size_ = 0;
  v21->__r_.__value_.__r.__words[2] = 0;
  v21->__r_.__value_.__r.__words[0] = 0;
  v23 = std::string::append(&v46, ".");
  v24 = *&v23->__r_.__value_.__l.__data_;
  v47.__r_.__value_.__r.__words[2] = v23->__r_.__value_.__r.__words[2];
  *&v47.__r_.__value_.__l.__data_ = v24;
  v23->__r_.__value_.__l.__size_ = 0;
  v23->__r_.__value_.__r.__words[2] = 0;
  v23->__r_.__value_.__r.__words[0] = 0;
  v25 = *(this + 63);
  if (v25 >= 0)
  {
    v26 = this + 40;
  }

  else
  {
    v26 = *(this + 5);
  }

  if (v25 >= 0)
  {
    v27 = *(this + 63);
  }

  else
  {
    v27 = *(this + 6);
  }

  v28 = std::string::append(&v47, v26, v27);
  v29 = *&v28->__r_.__value_.__l.__data_;
  v48.__r_.__value_.__r.__words[2] = v28->__r_.__value_.__r.__words[2];
  *&v48.__r_.__value_.__l.__data_ = v29;
  v28->__r_.__value_.__l.__size_ = 0;
  v28->__r_.__value_.__r.__words[2] = 0;
  v28->__r_.__value_.__r.__words[0] = 0;
  v30 = *(this + 111);
  if (v30 >= 0)
  {
    v31 = this + 88;
  }

  else
  {
    v31 = *(this + 11);
  }

  if (v30 >= 0)
  {
    v32 = *(this + 111);
  }

  else
  {
    v32 = *(this + 12);
  }

  v33 = std::string::append(&v48, v31, v32);
  v34 = v33->__r_.__value_.__r.__words[0];
  v53[0] = v33->__r_.__value_.__l.__size_;
  *(v53 + 7) = *(&v33->__r_.__value_.__r.__words[1] + 7);
  v35 = HIBYTE(v33->__r_.__value_.__r.__words[2]);
  v33->__r_.__value_.__l.__size_ = 0;
  v33->__r_.__value_.__r.__words[2] = 0;
  v33->__r_.__value_.__r.__words[0] = 0;
  v36 = SHIBYTE(v48.__r_.__value_.__r.__words[2]);
  *(a1 + 15) = *(v53 + 7);
  v37 = v53[0];
  *a1 = v34;
  a1[1] = v37;
  *(a1 + 23) = v35;
  if (v36 < 0)
  {
    operator delete(v48.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v47.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v47.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v46.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v46.__r_.__value_.__l.__data_);
  }

  if (v41 < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v45.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v45.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v44.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v44.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v43.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v43.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v42.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v42.__r_.__value_.__l.__data_);
  }

  if (*(this + 244) == 1)
  {
    std::string::append(a1, ".");
    v38 = *(this + 60);
    if (v38 > 773)
    {
      if (v38 == 774)
      {
        v39 = "lzma";
        goto LABEL_73;
      }

      if (v38 == 2049)
      {
        v39 = "lzfse";
        goto LABEL_73;
      }
    }

    else
    {
      if (v38 == 256)
      {
        v39 = "lz4";
        goto LABEL_73;
      }

      if (v38 == 517)
      {
        v39 = "zlib";
LABEL_73:
        std::string::append(a1, v39);
        goto LABEL_74;
      }
    }

    v39 = "unk";
    goto LABEL_73;
  }

LABEL_74:
  if (v50 < 0)
  {
    operator delete(v49[0]);
  }

  if (v52 < 0)
  {
    operator delete(v51[0]);
  }
}

void sub_24556B518(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, void *a37, uint64_t a38, int a39, __int16 a40, char a41, char a42, uint64_t a43, void *a44, uint64_t a45, int a46, __int16 a47, char a48, char a49, uint64_t a50, void *__p, uint64_t a52, int a53, __int16 a54, char a55, char a56)
{
  if (*(v57 - 137) < 0)
  {
    operator delete(*(v57 - 160));
  }

  if (a56 < 0)
  {
    operator delete(__p);
  }

  if (a49 < 0)
  {
    operator delete(a44);
  }

  if (a16 < 0)
  {
    operator delete(a11);
  }

  if (a42 < 0)
  {
    operator delete(a37);
  }

  if (a35 < 0)
  {
    operator delete(a30);
  }

  if (a28 < 0)
  {
    operator delete(a23);
  }

  if (a22 < 0)
  {
    operator delete(a17);
  }

  if (*(v57 - 105) < 0)
  {
    operator delete(*(v57 - 128));
  }

  if (*(v57 - 81) < 0)
  {
    operator delete(*(v57 - 104));
  }

  if (*(v56 + 23) < 0)
  {
    operator delete(*v56);
  }

  _Unwind_Resume(exception_object);
}

VendorLogger::MemoryStat *VendorLogger::notifyStop(VendorLogger *this)
{
  v2 = GpsdLogObjectGeneral;
  if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_2454AA000, v2, OS_LOG_TYPE_INFO, "VendorLogger,notifyStop,received", buf, 2u);
  }

  v3 = *(this + 107);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 0x40000000;
  block[2] = ___ZN12VendorLogger10notifyStopEv_block_invoke;
  block[3] = &__block_descriptor_tmp_15;
  block[4] = this;
  dispatch_sync(v3, block);
  result = std::unique_ptr<VendorLogger::MemoryStat>::reset[abi:ne200100](this + 111, 0);
  atomic_store(0, this + 109);
  atomic_store(0, this + 110);
  return result;
}

void ___ZN12VendorLogger10notifyStopEv_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (*(v1 + 868) == 1)
  {
    VendorLogger::closeLogFile(*(a1 + 32));

    VendorLogger::pruneLogFiles(v1);
  }
}

VendorLogger::MemoryStat *std::unique_ptr<VendorLogger::MemoryStat>::reset[abi:ne200100](VendorLogger::MemoryStat **a1, VendorLogger::MemoryStat *a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    VendorLogger::MemoryStat::~MemoryStat(result);

    JUMPOUT(0x245D6AEE0);
  }

  return result;
}

void VendorLogger::flush(VendorLogger *this)
{
  v2 = GpsdLogObjectGeneral;
  if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_2454AA000, v2, OS_LOG_TYPE_DEFAULT, "VendorLogger,flush,received", buf, 2u);
  }

  v3 = *(this + 107);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 0x40000000;
  block[2] = ___ZN12VendorLogger5flushEv_block_invoke;
  block[3] = &__block_descriptor_tmp_16_0;
  block[4] = this;
  dispatch_sync(v3, block);
}

uint64_t ___ZN12VendorLogger5flushEv_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  VendorLogger::flushCompression(v1);
  VendorLogger::initCompression(v1);

  return std::ostream::flush();
}

void VendorLogger::prepareForTermination(VendorLogger *this)
{
  v2 = GpsdLogObjectGeneral;
  if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_2454AA000, v2, OS_LOG_TYPE_DEFAULT, "VendorLogger,prepareForTermination,received", buf, 2u);
  }

  v3 = *(this + 107);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 0x40000000;
  block[2] = ___ZN12VendorLogger21prepareForTerminationEv_block_invoke;
  block[3] = &__block_descriptor_tmp_17;
  block[4] = this;
  dispatch_sync(v3, block);
}

void ___ZN12VendorLogger21prepareForTerminationEv_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (*(v1 + 868) == 1)
  {
    VendorLogger::closeLogFile(*(a1 + 32));

    VendorLogger::pruneLogFiles(v1);
  }
}

void VendorLogger::log(uint64_t a1, uint64_t a2)
{
  v2[0] = 0;
  v2[1] = v2;
  v2[2] = 0x3002000000;
  v2[3] = __Block_byref_object_copy__0;
  v2[4] = __Block_byref_object_dispose__0;
  operator new();
}

uint64_t __Block_byref_object_copy__0(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a2 + 40) = 0;
  *(result + 40) = v2;
  return result;
}

void __Block_byref_object_dispose__0(uint64_t a1)
{
  v2 = *(a1 + 40);
  *(a1 + 40) = 0;
  if (v2)
  {
    std::default_delete<std::string>::operator()[abi:ne200100](v2);
  }
}

void ___ZN12VendorLogger3logEONSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEE_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(*(a1 + 32) + 8);
  v3 = *(v2 + 40);
  *(v2 + 40) = 0;
  v5 = v3;
  VendorLogger::logBounce(v1, &v5);
  v4 = v5;
  if (v5)
  {

    std::default_delete<std::string>::operator()[abi:ne200100](v4);
  }
}

void sub_24556BBC0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    std::default_delete<std::string>::operator()[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void VendorLogger::logBounce(unint64_t **a1, uint64_t *a2)
{
  VendorLogger::ensureMemoryStatExists(a1);
  shouldPauseLogging = VendorLogger::MemoryStat::shouldPauseLogging(a1[111], a2);
  if (!shouldPauseLogging)
  {
    v10[0] = 0;
    v10[1] = v10;
    v10[2] = 0x3002000000;
    v10[3] = __Block_byref_object_copy__0;
    v5 = *a2;
    *a2 = 0;
    v10[4] = __Block_byref_object_dispose__0;
    v11 = v5;
    v6 = gpsd::util::getMachContinuousTimeNs(shouldPauseLogging) * 0.000000001;
    v7 = a1[107];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 0x40000000;
    block[2] = ___ZN12VendorLogger9logBounceENSt3__110unique_ptrINS0_12basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEENS0_14default_deleteIS7_EEEE_block_invoke;
    block[3] = &unk_278E80818;
    block[4] = v10;
    block[5] = a1;
    *&block[6] = v6;
    dispatch_async(v7, block);
    _Block_object_dispose(v10, 8);
    v8 = v11;
    v11 = 0;
    if (v8)
    {
      std::default_delete<std::string>::operator()[abi:ne200100](v8);
    }
  }
}

void sub_24556BCEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  _Block_object_dispose(&a17, 8);
  v23 = a22;
  a22 = 0;
  if (v23)
  {
    std::default_delete<std::string>::operator()[abi:ne200100](v23);
  }

  _Unwind_Resume(a1);
}

VendorLogger::MemoryStat *VendorLogger::ensureMemoryStatExists(VendorLogger::MemoryStat *this)
{
  if (!*(this + 111))
  {
    operator new();
  }

  return this;
}

BOOL VendorLogger::MemoryStat::shouldPauseLogging(unint64_t *a1, uint64_t *a2)
{
  v34 = *MEMORY[0x277D85DE8];
  v2 = a1[4];
  v3 = atomic_load(a1[5]);
  v4 = v2 - v3;
  if (v2 >= v3)
  {
    if (a1[2] <= v4)
    {
      v8 = v2 - v3;
    }

    else
    {
      v8 = a1[2];
    }

    a1[2] = v8;
    v9 = *a1;
    v10 = *a2;
    v11 = *(*a2 + 23);
    v6 = v4 > *a1;
    if (v4 <= *a1)
    {
      if (v11 < 0)
      {
        v13 = (*(v10 + 16) & 0x7FFFFFFFFFFFFFFFLL) - 1;
      }

      else
      {
        v13 = 22;
      }

      a1[4] = v13 + v2;
      v14 = a1[3];
    }

    else
    {
      if (v11 < 0)
      {
        v12 = (*(v10 + 16) & 0x7FFFFFFFFFFFFFFFLL) - 1;
      }

      else
      {
        v12 = 22;
      }

      v14 = a1[3] + v12;
      a1[3] = v14;
    }

    v15 = v14 + v4;
    if (v14 + v4 > 0x100000 && v15 > a1[1] + 0x100000)
    {
      a1[1] = v15;
      v16 = GpsdLogObjectGeneral;
      v17 = 16 * (v4 > v9);
      if (os_log_type_enabled(GpsdLogObjectGeneral, v17))
      {
        v18 = atomic_load((a1[5] + 8));
        v20 = 134350592;
        v21 = v4 >> 10;
        v22 = 2050;
        v23 = v8 >> 10;
        v24 = 2050;
        v25 = v9 >> 10;
        v26 = 2050;
        v27 = v15 >> 10;
        v28 = 2050;
        v29 = v14;
        v30 = 1026;
        v31 = v4 > v9;
        v32 = 2050;
        v33 = v18;
        _os_log_impl(&dword_2454AA000, v16, v17, "VendorLogger,addtl memory,%{public}zu,KB,max,%{public}zu,KB,allowed,%{public}zu,KB,sum,%{public}zu,KB,dropped,%{public}zu,B,pause,%{public}d,backup,%{public}.3f,sec", &v20, 0x44u);
      }
    }
  }

  else
  {
    v5 = GpsdLogObjectGeneral;
    if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_FAULT))
    {
      v20 = 134349312;
      v21 = v2;
      v22 = 2050;
      v23 = v3;
      _os_log_fault_impl(&dword_2454AA000, v5, OS_LOG_TYPE_FAULT, "VendorLogger,shouldPauseLogging,bufferSize,in,%{public}zu,out,%{public}zu", &v20, 0x16u);
    }

    return 0;
  }

  return v6;
}

void ___ZN12VendorLogger9logBounceENSt3__110unique_ptrINS0_12basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEENS0_14default_deleteIS7_EEEE_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(*(a1 + 32) + 8);
  v3 = *(v2 + 40);
  *(v2 + 40) = 0;
  v4 = v3;
  VendorLogger::binaryLogWorker(v1, &v4, *(a1 + 48));
  if (v3)
  {

    std::default_delete<std::string>::operator()[abi:ne200100](v3);
  }
}

void sub_24556C038(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::default_delete<std::string>::operator()[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

void VendorLogger::binaryLogWorker(uint64_t a1, const unsigned __int8 **a2, double a3)
{
  v14 = *MEMORY[0x277D85DE8];
  if ((*a2)[23] < 0)
  {
    v6 = (*(*a2 + 2) & 0x7FFFFFFFFFFFFFFFLL) - 1;
  }

  else
  {
    v6 = 22;
  }

  atomic_fetch_add((a1 + 872), v6);
  v7 = gpsd::util::getMachContinuousTimeNs(a1) * 0.000000001 - a3;
  v8 = COERCE_DOUBLE(atomic_load((a1 + 880)));
  if (v7 <= v8)
  {
    v7 = v8;
  }

  atomic_store(*&v7, (a1 + 880));
  if ((*(a1 + 868) & 1) == 0)
  {
    VendorLogger::openNewLogFile(a1);
  }

  if (*(a1 + 244) == 1)
  {
    if (*(a1 + 164) == 1)
    {
      v9 = snprintf(__str, 0x10uLL, "%.3f,", a3);
      if (v9 >= 1)
      {
        VendorLogger::writeCompressed(a1, __str, v9);
      }
    }

    v10 = *a2;
    v11 = *(*a2 + 23);
    if (v11 < 0)
    {
      v10 = *v10;
      v11 = *(*a2 + 1);
    }

    VendorLogger::writeCompressed(a1, v10, v11);
  }

  else if ((*(a1 + 256 + *(*(a1 + 256) - 24) + 32) & 5) == 0)
  {
    if (*(a1 + 164) == 1 && snprintf(__str, 0x10uLL, "%.3f,", a3) >= 1)
    {
      v12 = strlen(__str);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>((a1 + 256), __str, v12);
    }

    std::ostream::write();
  }
}

void forceDelaysTestCase(void)
{
  v11 = *MEMORY[0x277D85DE8];
  v0 = GpsdPreferences::instance(0);
  v1 = GpsdPreferences::genericTestCase(v0);
  if (v1 == 1)
  {
    v2 = (gpsd::util::getMachContinuousTimeNs(v1) * 0.000000001);
    if (forceDelaysTestCase(void)::LastSleepMctSec != v2)
    {
      v3 = forceDelaysTestCase(void)::SleepIntervalSec;
      if (!(v2 % (forceDelaysTestCase(void)::SleepIntervalSec + 3)))
      {
        v4 = GpsdLogObjectGeneral;
        if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_DEFAULT))
        {
          v7 = 67240448;
          v8 = v2;
          v9 = 1026;
          v10 = v3;
          _os_log_impl(&dword_2454AA000, v4, OS_LOG_TYPE_DEFAULT, "VendorLogger,debugonly,presleep,%{public}d,delay,%{public}d", &v7, 0xEu);
          v3 = forceDelaysTestCase(void)::SleepIntervalSec;
        }

        sleep(v3);
        v5 = GpsdLogObjectGeneral;
        if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_DEFAULT))
        {
          v7 = 67240448;
          v8 = v2;
          v9 = 1026;
          v10 = forceDelaysTestCase(void)::SleepIntervalSec;
          _os_log_impl(&dword_2454AA000, v5, OS_LOG_TYPE_DEFAULT, "VendorLogger,debugonly,aftersleep,%{public}d,delay,%{public}d", &v7, 0xEu);
        }

        v6 = forceDelaysTestCase(void)::SleepIntervalSec;
        if (forceDelaysTestCase(void)::SleepIntervalSec >= 80)
        {
          v6 = 80;
        }

        forceDelaysTestCase(void)::SleepIntervalSec = v6 + 10;
      }
    }

    forceDelaysTestCase(void)::LastSleepMctSec = v2;
  }
}

void VendorLogger::writeCompressed(VendorLogger *this, const unsigned __int8 *a2, uint64_t a3)
{
  v21 = *MEMORY[0x277D85DE8];
  if (*(this + 244) != 1)
  {
    return;
  }

  if (*(this + 245))
  {
    v4 = *(this + 22);
    *(this + 25) = v4;
    *(this + 27) = a2;
    *(this + 28) = a3;
    *(this + 26) = *(this + 23) - v4;
    v5 = (this + 256);
    while (1)
    {
      v6 = compression_stream_process(this + 5, 0);
      if (v6)
      {
        break;
      }

      v7 = *(this + 23) - *(this + 22);
      v8 = *(this + 26);
      v9 = v7 - v8;
      if (v7 == v8)
      {
        if (!*(this + 28))
        {
          goto LABEL_25;
        }
      }

      else
      {
        if (v7 < v8)
        {
          v10 = GpsdLogObjectGeneral;
          if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_ERROR))
          {
            *buf = 134349312;
            v18 = v9;
            v19 = 2050;
            v20 = v7;
            _os_log_error_impl(&dword_2454AA000, v10, OS_LOG_TYPE_ERROR, "VendorLogger,Excessive bytes_to_print,%{public}zu,limit,%{public}zu", buf, 0x16u);
            v9 = *(this + 23) - *(this + 22);
          }

          else
          {
            v9 = v7;
          }
        }

        if ((*(this + *(*v5 - 24) + 288) & 5) != 0)
        {
          v11 = GpsdLogObjectGeneral;
          if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_INFO))
          {
            *buf = 0;
            _os_log_impl(&dword_2454AA000, v11, OS_LOG_TYPE_INFO, "VendorLogger,stream unavailable for compressed output", buf, 2u);
          }
        }

        else
        {
          std::ostream::write();
        }

        *(this + 31) += v9;
        v12 = *(this + 22);
        v13 = *(this + 23) - v12;
        *(this + 25) = v12;
        *(this + 26) = v13;
      }
    }

    if (v6 == COMPRESSION_STATUS_END)
    {
      v15 = GpsdLogObjectGeneral;
      if (!os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_25;
      }

      *buf = 0;
      v16 = "VendorLogger,writeCompressed,unexpected COMPRESSION_STATUS_END";
    }

    else
    {
      v15 = GpsdLogObjectGeneral;
      if (!os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_25;
      }

      *buf = 0;
      v16 = "VendorLogger,writeCompressed,unexpected COMPRESSION_STATUS_ERROR";
    }

    _os_log_error_impl(&dword_2454AA000, v15, OS_LOG_TYPE_ERROR, v16, buf, 2u);
LABEL_25:
    if (*(this + 31) > *(this + 18))
    {
      VendorLogger::openNewLogFile(this);
    }

    return;
  }

  if ((VendorLogger::writeCompressed(unsigned char const*,unsigned long)::kWarningPrinted & 1) == 0)
  {
    v14 = GpsdLogObjectWarning;
    if (os_log_type_enabled(GpsdLogObjectWarning, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_2454AA000, v14, OS_LOG_TYPE_DEFAULT, "VendorLogger,log dropped since compression spun down", buf, 2u);
    }

    VendorLogger::writeCompressed(unsigned char const*,unsigned long)::kWarningPrinted = 1;
  }
}

void VendorLogger::MemoryStat::~MemoryStat(VendorLogger::MemoryStat *this)
{
  v21 = *MEMORY[0x277D85DE8];
  v2 = GpsdLogObjectGeneral;
  if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_INFO))
  {
    v3 = *(this + 3);
    v4 = *(this + 2) >> 10;
    v5 = *this >> 10;
    v6 = *(this + 4);
    v7 = atomic_load(*(this + 5));
    v8 = atomic_load((*(this + 5) + 8));
    v9 = 134350336;
    v10 = v4;
    v11 = 2050;
    v12 = v5;
    v13 = 2050;
    v14 = v6;
    v15 = 2050;
    v16 = v7;
    v17 = 2050;
    v18 = v3;
    v19 = 2050;
    v20 = v8;
    _os_log_impl(&dword_2454AA000, v2, OS_LOG_TYPE_INFO, "VendorLogger,MemoryStat,dtor,sizeMax,%{public}zu,KB,allowed,%{public}zu,KB,buffer,in,%{public}zu,B,out,%{public}zu,B,dropped,%{public}zu,B,backup,%{public}.3f,sec", &v9, 0x3Eu);
  }
}

uint64_t *VendorLogger::isoTimestampString@<X0>(uint64_t *__return_ptr a1@<X8>)
{
  v6 = *MEMORY[0x277D85DE8];
  v4 = time(0);
  v2 = localtime(&v4);
  if (v4 < 0 || !v2)
  {
    strcpy(__s, "unknown_time");
  }

  else
  {
    strftime(__s, 0x20uLL, "%Y%m%dT_%H-%M-%S%z", v2);
  }

  return std::string::basic_string[abi:ne200100]<0>(a1, __s);
}

void std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<std::string>::clear[abi:ne200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<std::string>::clear[abi:ne200100](void ***a1)
{
  v2 = *a1;
  v3 = a1[1];
  while (v3 != v2)
  {
    v4 = *(v3 - 1);
    v3 -= 3;
    if (v4 < 0)
    {
      operator delete(*v3);
    }
  }

  a1[1] = v2;
}

void std::__introsort<std::_ClassicAlgPolicy,std::greater<void> &,std::string *,false>(__int128 *a1, __int128 *a2, uint64_t a3, char a4)
{
  v197 = *MEMORY[0x277D85DE8];
  while (2)
  {
    v6 = a2 - 3;
    v7 = (a2 - 3);
    v191 = a2;
    v8 = a2 - 9;
    v9 = a1;
    while (1)
    {
      while (1)
      {
        while (1)
        {
          a1 = v9;
          v10 = v191;
          v11 = v191 - v9;
          v12 = 0xAAAAAAAAAAAAAAABLL * ((v191 - v9) >> 3);
          v13 = v12 - 2;
          if (v12 > 2)
          {
            switch(v12)
            {
              case 3:
                v127 = std::greater<void>::operator()[abi:ne200100]<std::string &,std::string &>((v9 + 24), v9);
                v128 = std::greater<void>::operator()[abi:ne200100]<std::string &,std::string &>(v6, (v9 + 24));
                if (v127)
                {
                  if (v128)
                  {
                    goto LABEL_116;
                  }

                  v187 = *v9;
                  v194 = *(v9 + 16);
                  v193 = v187;
                  *v9 = *(v9 + 24);
                  *(v9 + 16) = *(v9 + 40);
                  *(v9 + 24) = v193;
                  *(v9 + 40) = v194;
                  if (!std::greater<void>::operator()[abi:ne200100]<std::string &,std::string &>(v6, (v9 + 24)))
                  {
                    return;
                  }

                  v131 = *(v9 + 24);
                  v193 = v131;
                  v132 = *(v9 + 40);
                  v194 = v132;
                  v188 = v6[2];
                  *(v9 + 24) = *v6;
                  *(v9 + 40) = v188;
LABEL_117:
                  v6[2] = v132;
                  *v6 = v131;
                  return;
                }

                if (!v128)
                {
                  return;
                }

                v193 = *(v9 + 24);
                v177 = v193;
                v194 = *(v9 + 40);
                v178 = v194;
                v179 = v6[2];
                *(v9 + 24) = *v6;
                *(v9 + 40) = v179;
                v6[2] = v178;
                *v6 = v177;
LABEL_173:
                if (std::greater<void>::operator()[abi:ne200100]<std::string &,std::string &>((v9 + 24), v9))
                {
                  v180 = *v9;
                  v194 = *(v9 + 16);
                  v193 = v180;
                  *v9 = *(v9 + 24);
                  *(v9 + 16) = *(v9 + 40);
                  *(v9 + 24) = v193;
                  *(v9 + 40) = v194;
                }

                return;
              case 4:

                std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,std::greater<void> &,std::string *,0>(v9, (v9 + 24), (v9 + 48), v6);
                return;
              case 5:
                std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,std::greater<void> &,std::string *,0>(v9, (v9 + 24), (v9 + 48), (v9 + 72));
                if (!std::greater<void>::operator()[abi:ne200100]<std::string &,std::string &>(v6, (v9 + 72)))
                {
                  return;
                }

                v193 = *(v9 + 72);
                v119 = v193;
                v194 = *(v9 + 88);
                v120 = v194;
                v121 = v6[2];
                *(v9 + 72) = *v6;
                *(v9 + 88) = v121;
                v6[2] = v120;
                *v6 = v119;
                if (!std::greater<void>::operator()[abi:ne200100]<std::string &,std::string &>((v9 + 72), (v9 + 48)))
                {
                  return;
                }

                v122 = *(v9 + 64);
                v123 = *(v9 + 48);
                *(v9 + 48) = *(v9 + 72);
                *(v9 + 64) = *(v9 + 88);
                *(v9 + 72) = v123;
                *(v9 + 88) = v122;
                if (!std::greater<void>::operator()[abi:ne200100]<std::string &,std::string &>((v9 + 48), (v9 + 24)))
                {
                  return;
                }

                v124 = *(v9 + 40);
                v125 = *(v9 + 24);
                *(v9 + 24) = *(v9 + 48);
                *(v9 + 40) = *(v9 + 64);
                *(v9 + 48) = v125;
                *(v9 + 64) = v124;
                goto LABEL_173;
            }
          }

          else
          {
            if (v12 < 2)
            {
              return;
            }

            if (v12 == 2)
            {
              if (!std::greater<void>::operator()[abi:ne200100]<std::string &,std::string &>(v6, v9))
              {
                return;
              }

LABEL_116:
              v129 = *v9;
              v194 = *(v9 + 16);
              v193 = v129;
              v130 = *v6;
              *(v9 + 16) = v6[2];
              *v9 = v130;
              v131 = v193;
              v132 = v194;
              goto LABEL_117;
            }
          }

          if (v11 <= 575)
          {
            v133 = (v9 + 24);
            v135 = v9 == v191 || v133 == v191;
            if (a4)
            {
              if (!v135)
              {
                v136 = 0;
                v137 = v9;
                do
                {
                  v138 = v137;
                  v137 = v133;
                  if (std::greater<void>::operator()[abi:ne200100]<std::string &,std::string &>(v133, v138))
                  {
                    v139 = *v137;
                    v194 = *(v137 + 16);
                    v193 = v139;
                    *(v137 + 8) = 0;
                    *(v137 + 16) = 0;
                    *v137 = 0;
                    v140 = v136;
                    while (1)
                    {
                      v141 = v9 + v140;
                      *(v141 + 24) = *(v9 + v140);
                      *(v141 + 40) = *(v9 + v140 + 16);
                      *(v141 + 23) = 0;
                      *v141 = 0;
                      if (!v140)
                      {
                        break;
                      }

                      v140 -= 24;
                      if (!std::greater<void>::operator()[abi:ne200100]<std::string &,std::string &>(&v193, (v140 + v9)))
                      {
                        v142 = v9 + v140 + 24;
                        goto LABEL_136;
                      }
                    }

                    v142 = v9;
LABEL_136:
                    v143 = v193;
                    *(v142 + 16) = v194;
                    *v142 = v143;
                  }

                  v133 = (v137 + 24);
                  v136 += 24;
                }

                while ((v137 + 24) != v191);
              }
            }

            else if (!v135)
            {
              v181 = v9 - 24;
              do
              {
                v182 = a1;
                a1 = v133;
                if (std::greater<void>::operator()[abi:ne200100]<std::string &,std::string &>(v133, v182))
                {
                  v183 = *a1;
                  v194 = *(a1 + 2);
                  v193 = v183;
                  *(a1 + 1) = 0;
                  *(a1 + 2) = 0;
                  *a1 = 0;
                  v184 = v181;
                  do
                  {
                    *(v184 + 48) = *(v184 + 24);
                    *(v184 + 64) = *(v184 + 40);
                    *(v184 + 47) = 0;
                    *(v184 + 24) = 0;
                    v185 = std::greater<void>::operator()[abi:ne200100]<std::string &,std::string &>(&v193, v184);
                    v184 -= 24;
                  }

                  while (v185);
                  v186 = v193;
                  *(v184 + 64) = v194;
                  *(v184 + 48) = v186;
                }

                v133 = a1 + 3;
                v181 += 24;
              }

              while ((a1 + 24) != v191);
            }

            return;
          }

          if (!a3)
          {
            if (v9 != v191)
            {
              v144 = v13 >> 1;
              v145 = v13 >> 1;
              do
              {
                v146 = v145;
                if (v144 >= v145)
                {
                  v147 = (2 * v145) | 1;
                  v148 = (a1 + 24 * v147);
                  if (2 * v145 + 2 < v12 && std::greater<void>::operator()[abi:ne200100]<std::string &,std::string &>(a1 + 3 * v147, v148 + 3))
                  {
                    v148 = (v148 + 24);
                    v147 = 2 * v146 + 2;
                  }

                  v149 = (a1 + 24 * v146);
                  if (!std::greater<void>::operator()[abi:ne200100]<std::string &,std::string &>(v148, v149))
                  {
                    v150 = *v149;
                    v194 = *(v149 + 2);
                    v193 = v150;
                    *(v149 + 1) = 0;
                    *(v149 + 2) = 0;
                    *v149 = 0;
                    do
                    {
                      v151 = v148;
                      v152 = *v148;
                      *(v149 + 2) = *(v148 + 2);
                      *v149 = v152;
                      *(v148 + 23) = 0;
                      *v148 = 0;
                      if (v144 < v147)
                      {
                        break;
                      }

                      v153 = (2 * v147) | 1;
                      v148 = (a1 + 24 * v153);
                      v154 = 2 * v147 + 2;
                      if (v154 < v12 && std::greater<void>::operator()[abi:ne200100]<std::string &,std::string &>(a1 + 3 * v153, v148 + 3))
                      {
                        v148 = (v148 + 24);
                        v153 = v154;
                      }

                      v149 = v151;
                      v147 = v153;
                    }

                    while (!std::greater<void>::operator()[abi:ne200100]<std::string &,std::string &>(v148, &v193));
                    v155 = v193;
                    *(v151 + 2) = v194;
                    *v151 = v155;
                    v10 = v191;
                  }
                }

                v145 = v146 - 1;
              }

              while (v146);
              v156 = 0xAAAAAAAAAAAAAAABLL * (v11 >> 3);
              do
              {
                v157 = 0;
                v158 = v10;
                v190 = *a1;
                *&v195 = *(a1 + 1);
                *(&v195 + 7) = *(a1 + 15);
                v192 = *(a1 + 23);
                *(a1 + 1) = 0;
                *(a1 + 2) = 0;
                *a1 = 0;
                v159 = a1;
                do
                {
                  v160 = v159 + 24 * v157;
                  v161 = v160 + 24;
                  v162 = (2 * v157) | 1;
                  v163 = 2 * v157 + 2;
                  if (v163 < v156)
                  {
                    v164 = v160 + 48;
                    if (std::greater<void>::operator()[abi:ne200100]<std::string &,std::string &>((v160 + 24), (v160 + 48)))
                    {
                      v161 = v164;
                      v162 = v163;
                    }
                  }

                  v165 = *v161;
                  *(v159 + 16) = *(v161 + 16);
                  *v159 = v165;
                  *(v161 + 23) = 0;
                  *v161 = 0;
                  v159 = v161;
                  v157 = v162;
                }

                while (v162 <= (v156 - 2) / 2);
                v10 -= 3;
                if (v161 == v158 - 3)
                {
                  *v161 = v190;
                  v175 = *(&v195 + 7);
                  *(v161 + 8) = v195;
                  *(v161 + 15) = v175;
                  *(v161 + 23) = v192;
                }

                else
                {
                  v166 = *v10;
                  *(v161 + 16) = *(v158 - 1);
                  *v161 = v166;
                  *(v158 - 3) = v190;
                  v167 = v195;
                  *(v158 - 9) = *(&v195 + 7);
                  *(v158 - 2) = v167;
                  *(v158 - 1) = v192;
                  v168 = v161 - a1 + 24;
                  if (v168 >= 25)
                  {
                    v169 = (-2 - 0x5555555555555555 * (v168 >> 3)) >> 1;
                    v170 = (a1 + 24 * v169);
                    if (std::greater<void>::operator()[abi:ne200100]<std::string &,std::string &>(v170, v161))
                    {
                      v171 = *v161;
                      v194 = *(v161 + 16);
                      v193 = v171;
                      *(v161 + 8) = 0;
                      *(v161 + 16) = 0;
                      *v161 = 0;
                      do
                      {
                        v172 = v170;
                        v173 = *v170;
                        *(v161 + 16) = *(v170 + 2);
                        *v161 = v173;
                        *(v170 + 23) = 0;
                        *v170 = 0;
                        if (!v169)
                        {
                          break;
                        }

                        v169 = (v169 - 1) >> 1;
                        v170 = (a1 + 24 * v169);
                        v161 = v172;
                      }

                      while (std::greater<void>::operator()[abi:ne200100]<std::string &,std::string &>(v170, &v193));
                      v174 = v193;
                      *(v172 + 16) = v194;
                      *v172 = v174;
                    }
                  }
                }
              }

              while (v156-- > 2);
            }

            return;
          }

          v14 = v12 >> 1;
          v15 = v9 + 24 * v14;
          if (v11 >= 0xC01)
          {
            v16 = std::greater<void>::operator()[abi:ne200100]<std::string &,std::string &>(a1 + 3 * v14, a1);
            v17 = std::greater<void>::operator()[abi:ne200100]<std::string &,std::string &>(v6, a1 + 3 * v14);
            if (v16)
            {
              if (v17)
              {
                v18 = *a1;
                v194 = *(a1 + 2);
                v193 = v18;
                v19 = *v6;
                *(a1 + 2) = v6[2];
                *a1 = v19;
              }

              else
              {
                v36 = *a1;
                v194 = *(a1 + 2);
                v193 = v36;
                v37 = *v15;
                *(a1 + 2) = *(v15 + 16);
                *a1 = v37;
                v38 = v193;
                *(v15 + 16) = v194;
                *v15 = v38;
                if (!std::greater<void>::operator()[abi:ne200100]<std::string &,std::string &>(v6, a1 + 3 * v14))
                {
                  goto LABEL_28;
                }

                v39 = *v15;
                v194 = *(v15 + 16);
                v193 = v39;
                v40 = *v6;
                *(v15 + 16) = v6[2];
                *v15 = v40;
              }

              v41 = v193;
              v6[2] = v194;
              *v6 = v41;
            }

            else if (v17)
            {
              v24 = *v15;
              v194 = *(v15 + 16);
              v193 = v24;
              v25 = *v6;
              *(v15 + 16) = v6[2];
              *v15 = v25;
              v26 = v193;
              v6[2] = v194;
              *v6 = v26;
              if (std::greater<void>::operator()[abi:ne200100]<std::string &,std::string &>(a1 + 3 * v14, a1))
              {
                v27 = *a1;
                v194 = *(a1 + 2);
                v193 = v27;
                v28 = *v15;
                *(a1 + 2) = *(v15 + 16);
                *a1 = v28;
                v29 = v193;
                *(v15 + 16) = v194;
                *v15 = v29;
              }
            }

LABEL_28:
            v42 = a1 + 24 * v14 - 24;
            v43 = std::greater<void>::operator()[abi:ne200100]<std::string &,std::string &>(v42, a1 + 3);
            v44 = std::greater<void>::operator()[abi:ne200100]<std::string &,std::string &>(v7, v42);
            if (v43)
            {
              if (v44)
              {
                v45 = *(a1 + 24);
                v193 = v45;
                v46 = *(a1 + 5);
                v194 = v46;
                v47 = v7[2];
                *(a1 + 24) = *v7;
                *(a1 + 5) = v47;
              }

              else
              {
                v193 = *(a1 + 24);
                v60 = v193;
                v194 = *(a1 + 5);
                v61 = v194;
                v62 = *(a1 + 3 * v14 - 1);
                *(a1 + 24) = *v42;
                *(a1 + 5) = v62;
                *(a1 + 3 * v14 - 1) = v61;
                *v42 = v60;
                if (!std::greater<void>::operator()[abi:ne200100]<std::string &,std::string &>(v7, v42))
                {
                  goto LABEL_40;
                }

                v63 = *v42;
                v194 = *(a1 + 3 * v14 - 1);
                v193 = v63;
                v64 = *v7;
                *(a1 + 3 * v14 - 1) = v7[2];
                *v42 = v64;
                v45 = v193;
                v46 = v194;
              }

              v7[2] = v46;
              *v7 = v45;
            }

            else if (v44)
            {
              v48 = *v42;
              v194 = *(a1 + 3 * v14 - 1);
              v193 = v48;
              v49 = *v7;
              *(a1 + 3 * v14 - 1) = v7[2];
              *v42 = v49;
              v50 = v193;
              v7[2] = v194;
              *v7 = v50;
              if (std::greater<void>::operator()[abi:ne200100]<std::string &,std::string &>(v42, a1 + 3))
              {
                v193 = *(a1 + 24);
                v51 = v193;
                v194 = *(a1 + 5);
                v52 = v194;
                v53 = *(a1 + 3 * v14 - 1);
                *(a1 + 24) = *v42;
                *(a1 + 5) = v53;
                *(a1 + 3 * v14 - 1) = v52;
                *v42 = v51;
              }
            }

LABEL_40:
            v65 = a1 + 24 * v14;
            v66 = std::greater<void>::operator()[abi:ne200100]<std::string &,std::string &>((v65 + 24), a1 + 6);
            v67 = std::greater<void>::operator()[abi:ne200100]<std::string &,std::string &>(v8, (v65 + 24));
            if (!v66)
            {
              if (v67)
              {
                v71 = *(v65 + 24);
                v194 = *(v65 + 40);
                v193 = v71;
                v72 = *v8;
                *(v65 + 40) = v8[2];
                *(v65 + 24) = v72;
                v73 = v193;
                v8[2] = v194;
                *v8 = v73;
                if (std::greater<void>::operator()[abi:ne200100]<std::string &,std::string &>((v65 + 24), a1 + 6))
                {
                  v193 = a1[3];
                  v74 = v193;
                  v194 = *(a1 + 8);
                  v75 = v194;
                  v76 = *(v65 + 40);
                  a1[3] = *(v65 + 24);
                  *(a1 + 8) = v76;
                  *(v65 + 40) = v75;
                  *(v65 + 24) = v74;
                }
              }

              goto LABEL_49;
            }

            if (v67)
            {
              v68 = a1[3];
              v193 = v68;
              v69 = *(a1 + 8);
              v194 = v69;
              v70 = v8[2];
              a1[3] = *v8;
              *(a1 + 8) = v70;
            }

            else
            {
              v193 = a1[3];
              v77 = v193;
              v194 = *(a1 + 8);
              v78 = v194;
              v79 = *(v65 + 40);
              a1[3] = *(v65 + 24);
              *(a1 + 8) = v79;
              *(v65 + 40) = v78;
              *(v65 + 24) = v77;
              if (!std::greater<void>::operator()[abi:ne200100]<std::string &,std::string &>(v8, (v65 + 24)))
              {
LABEL_49:
                v82 = std::greater<void>::operator()[abi:ne200100]<std::string &,std::string &>(v15, v42);
                v83 = std::greater<void>::operator()[abi:ne200100]<std::string &,std::string &>((v65 + 24), v15);
                if (v82)
                {
                  if (v83)
                  {
                    v84 = *v42;
                    v194 = *(v42 + 16);
                    v193 = v84;
                    *v42 = *(v65 + 24);
                    *(v42 + 16) = *(v65 + 40);
                    v85 = v193;
                    *(v65 + 40) = v194;
                    *(v65 + 24) = v85;
                    v10 = v191;
                  }

                  else
                  {
                    v90 = *v42;
                    v194 = *(v42 + 16);
                    v193 = v90;
                    *v42 = *v15;
                    *(v42 + 16) = *(v15 + 16);
                    v91 = v193;
                    *(v15 + 16) = v194;
                    *v15 = v91;
                    v10 = v191;
                    if (std::greater<void>::operator()[abi:ne200100]<std::string &,std::string &>((v65 + 24), v15))
                    {
                      v92 = *v15;
                      v194 = *(v15 + 16);
                      v193 = v92;
                      *v15 = *(v65 + 24);
                      *(v15 + 16) = *(v65 + 40);
                      v93 = v193;
                      *(v65 + 40) = v194;
                      *(v65 + 24) = v93;
                    }
                  }
                }

                else
                {
                  v10 = v191;
                  if (v83)
                  {
                    v86 = *v15;
                    v194 = *(v15 + 16);
                    v193 = v86;
                    *v15 = *(v65 + 24);
                    *(v15 + 16) = *(v65 + 40);
                    v87 = v193;
                    *(v65 + 40) = v194;
                    *(v65 + 24) = v87;
                    if (std::greater<void>::operator()[abi:ne200100]<std::string &,std::string &>(v15, v42))
                    {
                      v88 = *v42;
                      v194 = *(v42 + 16);
                      v193 = v88;
                      *v42 = *v15;
                      *(v42 + 16) = *(v15 + 16);
                      v89 = v193;
                      *(v15 + 16) = v194;
                      *v15 = v89;
                    }
                  }
                }

                v94 = *a1;
                v194 = *(a1 + 2);
                v193 = v94;
                v95 = *v15;
                *(a1 + 2) = *(v15 + 16);
                *a1 = v95;
                v96 = v193;
                *(v15 + 16) = v194;
                *v15 = v96;
                goto LABEL_58;
              }

              v80 = *(v65 + 24);
              v194 = *(v65 + 40);
              v193 = v80;
              v81 = *v8;
              *(v65 + 40) = v8[2];
              *(v65 + 24) = v81;
              v68 = v193;
              v69 = v194;
            }

            v8[2] = v69;
            *v8 = v68;
            goto LABEL_49;
          }

          v20 = std::greater<void>::operator()[abi:ne200100]<std::string &,std::string &>(a1, a1 + 3 * v14);
          v21 = std::greater<void>::operator()[abi:ne200100]<std::string &,std::string &>(v6, a1);
          if (v20)
          {
            if (v21)
            {
              v22 = *v15;
              v194 = *(v15 + 16);
              v193 = v22;
              v23 = *v6;
              *(v15 + 16) = v6[2];
              *v15 = v23;
            }

            else
            {
              v54 = *v15;
              v194 = *(v15 + 16);
              v193 = v54;
              v55 = *a1;
              *(v15 + 16) = *(a1 + 2);
              *v15 = v55;
              v56 = v193;
              *(a1 + 2) = v194;
              *a1 = v56;
              if (!std::greater<void>::operator()[abi:ne200100]<std::string &,std::string &>(v6, a1))
              {
                goto LABEL_58;
              }

              v57 = *a1;
              v194 = *(a1 + 2);
              v193 = v57;
              v58 = *v6;
              *(a1 + 2) = v6[2];
              *a1 = v58;
            }

            v59 = v193;
            v6[2] = v194;
            *v6 = v59;
            goto LABEL_58;
          }

          if (v21)
          {
            v30 = *a1;
            v194 = *(a1 + 2);
            v193 = v30;
            v31 = *v6;
            *(a1 + 2) = v6[2];
            *a1 = v31;
            v32 = v193;
            v6[2] = v194;
            *v6 = v32;
            if (std::greater<void>::operator()[abi:ne200100]<std::string &,std::string &>(a1, a1 + 3 * v14))
            {
              v33 = *v15;
              v194 = *(v15 + 16);
              v193 = v33;
              v34 = *a1;
              *(v15 + 16) = *(a1 + 2);
              *v15 = v34;
              v35 = v193;
              *(a1 + 2) = v194;
              *a1 = v35;
            }
          }

LABEL_58:
          --a3;
          if ((a4 & 1) != 0 || std::greater<void>::operator()[abi:ne200100]<std::string &,std::string &>(a1 - 3, a1))
          {
            break;
          }

          v109 = *a1;
          v196 = *(a1 + 2);
          v195 = v109;
          *(a1 + 1) = 0;
          *(a1 + 2) = 0;
          *a1 = 0;
          if (std::greater<void>::operator()[abi:ne200100]<std::string &,std::string &>(&v195, v6))
          {
            v9 = a1;
            do
            {
              v9 += 24;
            }

            while (!std::greater<void>::operator()[abi:ne200100]<std::string &,std::string &>(&v195, v9));
          }

          else
          {
            v110 = a1 + 3;
            do
            {
              v9 = v110;
              if (v110 >= v10)
              {
                break;
              }

              v111 = std::greater<void>::operator()[abi:ne200100]<std::string &,std::string &>(&v195, v110);
              v110 = (v9 + 24);
            }

            while (!v111);
          }

          v112 = v10;
          if (v9 < v10)
          {
            v112 = v10;
            do
            {
              v112 -= 3;
            }

            while (std::greater<void>::operator()[abi:ne200100]<std::string &,std::string &>(&v195, v112));
          }

          while (v9 < v112)
          {
            v113 = *v9;
            v194 = *(v9 + 16);
            v193 = v113;
            v114 = *v112;
            *(v9 + 16) = v112[2];
            *v9 = v114;
            v115 = v193;
            v112[2] = v194;
            *v112 = v115;
            do
            {
              v9 += 24;
            }

            while (!std::greater<void>::operator()[abi:ne200100]<std::string &,std::string &>(&v195, v9));
            do
            {
              v112 -= 3;
            }

            while (std::greater<void>::operator()[abi:ne200100]<std::string &,std::string &>(&v195, v112));
          }

          v116 = (v9 - 24);
          if ((v9 - 24) == a1)
          {
            if (*(v9 - 1) < 0)
            {
              operator delete(*a1);
            }
          }

          else
          {
            if (*(a1 + 23) < 0)
            {
              operator delete(*a1);
            }

            v117 = *v116;
            *(a1 + 2) = *(v9 - 8);
            *a1 = v117;
            *(v9 - 1) = 0;
            *(v9 - 24) = 0;
          }

          a4 = 0;
          v118 = v195;
          *(v9 - 8) = v196;
          *v116 = v118;
        }

        v97 = 0;
        v98 = *a1;
        v196 = *(a1 + 2);
        v195 = v98;
        *(a1 + 1) = 0;
        *(a1 + 2) = 0;
        *a1 = 0;
        do
        {
          v97 += 24;
        }

        while (std::greater<void>::operator()[abi:ne200100]<std::string &,std::string &>((a1 + v97), &v195));
        v99 = a1 + v97;
        v100 = v10;
        if (v97 == 24)
        {
          v100 = v10;
          do
          {
            if (v99 >= v100)
            {
              break;
            }

            v100 -= 3;
          }

          while (!std::greater<void>::operator()[abi:ne200100]<std::string &,std::string &>(v100, &v195));
        }

        else
        {
          do
          {
            v100 -= 3;
          }

          while (!std::greater<void>::operator()[abi:ne200100]<std::string &,std::string &>(v100, &v195));
        }

        v9 = a1 + v97;
        if (v99 < v100)
        {
          v101 = v100;
          do
          {
            v102 = *v9;
            v194 = *(v9 + 16);
            v193 = v102;
            v103 = *v101;
            *(v9 + 16) = v101[2];
            *v9 = v103;
            v104 = v193;
            v101[2] = v194;
            *v101 = v104;
            do
            {
              v9 += 24;
            }

            while (std::greater<void>::operator()[abi:ne200100]<std::string &,std::string &>(v9, &v195));
            do
            {
              v101 -= 3;
            }

            while (!std::greater<void>::operator()[abi:ne200100]<std::string &,std::string &>(v101, &v195));
          }

          while (v9 < v101);
        }

        v105 = (v9 - 24);
        if ((v9 - 24) == a1)
        {
          if (*(v9 - 1) < 0)
          {
            operator delete(*a1);
          }
        }

        else
        {
          if (*(a1 + 23) < 0)
          {
            operator delete(*a1);
          }

          v106 = *v105;
          *(a1 + 2) = *(v9 - 8);
          *a1 = v106;
          *(v9 - 1) = 0;
          *(v9 - 24) = 0;
        }

        v107 = v195;
        *(v9 - 8) = v196;
        *v105 = v107;
        if (v99 >= v100)
        {
          break;
        }

LABEL_83:
        std::__introsort<std::_ClassicAlgPolicy,std::greater<void> &,std::string *,false>(a1, (v9 - 24), a3, a4 & 1);
        a4 = 0;
      }

      v108 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::greater<void> &,std::string *>(a1, (v9 - 24));
      if (std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::greater<void> &,std::string *>(v9, v191))
      {
        break;
      }

      if (!v108)
      {
        goto LABEL_83;
      }
    }

    a2 = (v9 - 24);
    if (!v108)
    {
      continue;
    }

    break;
  }
}

BOOL std::greater<void>::operator()[abi:ne200100]<std::string &,std::string &>(const void **a1, const void **a2)
{
  v2 = *(a1 + 23);
  v3 = *(a2 + 23);
  if (v3 >= 0)
  {
    v4 = *(a2 + 23);
  }

  else
  {
    v4 = a2[1];
  }

  if (v3 >= 0)
  {
    v5 = a2;
  }

  else
  {
    v5 = *a2;
  }

  if (v2 >= 0)
  {
    v6 = *(a1 + 23);
  }

  else
  {
    v6 = a1[1];
  }

  if (v2 >= 0)
  {
    v7 = a1;
  }

  else
  {
    v7 = *a1;
  }

  if (v6 >= v4)
  {
    v8 = v4;
  }

  else
  {
    v8 = v6;
  }

  v9 = memcmp(v5, v7, v8);
  if (v9)
  {
    return v9 < 0;
  }

  else
  {
    return v4 < v6;
  }
}

__n128 std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,std::greater<void> &,std::string *,0>(const void **a1, const void **a2, const void **a3, __int128 *a4)
{
  v8 = std::greater<void>::operator()[abi:ne200100]<std::string &,std::string &>(a2, a1);
  v9 = std::greater<void>::operator()[abi:ne200100]<std::string &,std::string &>(a3, a2);
  if (v8)
  {
    if (v9)
    {
      v10 = a1[2];
      v11 = *a1;
      v12 = a3[2];
      *a1 = *a3;
      a1[2] = v12;
LABEL_9:
      *a3 = v11;
      a3[2] = v10;
      goto LABEL_10;
    }

    v19 = a1[2];
    v20 = *a1;
    v21 = a2[2];
    *a1 = *a2;
    a1[2] = v21;
    *a2 = v20;
    a2[2] = v19;
    if (std::greater<void>::operator()[abi:ne200100]<std::string &,std::string &>(a3, a2))
    {
      v10 = a2[2];
      v11 = *a2;
      v22 = a3[2];
      *a2 = *a3;
      a2[2] = v22;
      goto LABEL_9;
    }
  }

  else if (v9)
  {
    v13 = a2[2];
    v14 = *a2;
    v15 = a3[2];
    *a2 = *a3;
    a2[2] = v15;
    *a3 = v14;
    a3[2] = v13;
    if (std::greater<void>::operator()[abi:ne200100]<std::string &,std::string &>(a2, a1))
    {
      v16 = a1[2];
      v17 = *a1;
      v18 = a2[2];
      *a1 = *a2;
      a1[2] = v18;
      *a2 = v17;
      a2[2] = v16;
    }
  }

LABEL_10:
  if (std::greater<void>::operator()[abi:ne200100]<std::string &,std::string &>(a4, a3))
  {
    v24 = a3[2];
    v25 = *a3;
    v26 = *(a4 + 2);
    *a3 = *a4;
    a3[2] = v26;
    *a4 = v25;
    *(a4 + 2) = v24;
    if (std::greater<void>::operator()[abi:ne200100]<std::string &,std::string &>(a3, a2))
    {
      v27 = a2[2];
      v28 = *a2;
      v29 = a3[2];
      *a2 = *a3;
      a2[2] = v29;
      *a3 = v28;
      a3[2] = v27;
      if (std::greater<void>::operator()[abi:ne200100]<std::string &,std::string &>(a2, a1))
      {
        v30 = a1[2];
        result = *a1;
        v31 = a2[2];
        *a1 = *a2;
        a1[2] = v31;
        *a2 = result;
        a2[2] = v30;
      }
    }
  }

  return result;
}

BOOL std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::greater<void> &,std::string *>(__int128 *a1, __int128 *a2)
{
  v4 = 0xAAAAAAAAAAAAAAABLL * ((a2 - a1) >> 3);
  if (v4 > 2)
  {
    switch(v4)
    {
      case 3:
        v5 = a2 - 3;
        v14 = std::greater<void>::operator()[abi:ne200100]<std::string &,std::string &>(a1 + 3, a1);
        v15 = std::greater<void>::operator()[abi:ne200100]<std::string &,std::string &>(v5, a1 + 3);
        if (v14)
        {
          if (!v15)
          {
            v33 = *(a1 + 2);
            v34 = *a1;
            *a1 = *(a1 + 24);
            *(a1 + 2) = *(a1 + 5);
            *(a1 + 24) = v34;
            *(a1 + 5) = v33;
            if (!std::greater<void>::operator()[abi:ne200100]<std::string &,std::string &>(v5, a1 + 3))
            {
              return 1;
            }

            v16 = *(a1 + 5);
            v17 = *(a1 + 24);
            v35 = v5[2];
            *(a1 + 24) = *v5;
            *(a1 + 5) = v35;
            goto LABEL_16;
          }

LABEL_15:
          v16 = *(a1 + 2);
          v17 = *a1;
          v18 = v5[2];
          *a1 = *v5;
          *(a1 + 2) = v18;
LABEL_16:
          *v5 = v17;
          v5[2] = v16;
          return 1;
        }

        if (!v15)
        {
          return 1;
        }

        v24 = *(a1 + 5);
        v25 = *(a1 + 24);
        v26 = v5[2];
        *(a1 + 24) = *v5;
        *(a1 + 5) = v26;
        *v5 = v25;
        v5[2] = v24;
        break;
      case 4:
        std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,std::greater<void> &,std::string *,0>(a1, a1 + 3, a1 + 6, (a2 - 24));
        return 1;
      case 5:
        v6 = a2 - 24;
        std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,std::greater<void> &,std::string *,0>(a1, a1 + 3, a1 + 6, (a1 + 72));
        if (!std::greater<void>::operator()[abi:ne200100]<std::string &,std::string &>(v6, a1 + 9))
        {
          return 1;
        }

        v7 = *(a1 + 11);
        v8 = *(a1 + 72);
        v9 = *(v6 + 16);
        *(a1 + 72) = *v6;
        *(a1 + 11) = v9;
        *v6 = v8;
        *(v6 + 16) = v7;
        if (!std::greater<void>::operator()[abi:ne200100]<std::string &,std::string &>(a1 + 9, a1 + 6))
        {
          return 1;
        }

        v10 = *(a1 + 8);
        v11 = a1[3];
        a1[3] = *(a1 + 72);
        *(a1 + 8) = *(a1 + 11);
        *(a1 + 72) = v11;
        *(a1 + 11) = v10;
        if (!std::greater<void>::operator()[abi:ne200100]<std::string &,std::string &>(a1 + 6, a1 + 3))
        {
          return 1;
        }

        v12 = *(a1 + 5);
        v13 = *(a1 + 24);
        *(a1 + 24) = a1[3];
        *(a1 + 5) = *(a1 + 8);
        a1[3] = v13;
        *(a1 + 8) = v12;
        break;
      default:
        goto LABEL_17;
    }

    if (std::greater<void>::operator()[abi:ne200100]<std::string &,std::string &>(a1 + 3, a1))
    {
      v27 = *(a1 + 2);
      v28 = *a1;
      *a1 = *(a1 + 24);
      *(a1 + 2) = *(a1 + 5);
      *(a1 + 24) = v28;
      *(a1 + 5) = v27;
    }

    return 1;
  }

  if (v4 < 2)
  {
    return 1;
  }

  if (v4 == 2)
  {
    v5 = a2 - 3;
    if (!std::greater<void>::operator()[abi:ne200100]<std::string &,std::string &>(a2 - 3, a1))
    {
      return 1;
    }

    goto LABEL_15;
  }

LABEL_17:
  v19 = (a1 + 3);
  v20 = std::greater<void>::operator()[abi:ne200100]<std::string &,std::string &>(a1 + 3, a1);
  v21 = std::greater<void>::operator()[abi:ne200100]<std::string &,std::string &>(a1 + 6, a1 + 3);
  if (v20)
  {
    if (v21)
    {
      v22 = *(a1 + 2);
      v23 = *a1;
      *a1 = *v19;
      *(a1 + 2) = *(a1 + 8);
    }

    else
    {
      v36 = *(a1 + 2);
      v37 = *a1;
      *a1 = *(a1 + 24);
      *(a1 + 2) = *(a1 + 5);
      *(a1 + 24) = v37;
      *(a1 + 5) = v36;
      if (!std::greater<void>::operator()[abi:ne200100]<std::string &,std::string &>(a1 + 6, a1 + 3))
      {
        goto LABEL_33;
      }

      v22 = *(a1 + 5);
      v23 = *(a1 + 24);
      *(a1 + 24) = *v19;
      *(a1 + 5) = *(a1 + 8);
    }

    *v19 = v23;
    *(a1 + 8) = v22;
  }

  else if (v21)
  {
    v29 = *(a1 + 5);
    v30 = *(a1 + 24);
    *(a1 + 24) = *v19;
    *(a1 + 5) = *(a1 + 8);
    *v19 = v30;
    *(a1 + 8) = v29;
    if (std::greater<void>::operator()[abi:ne200100]<std::string &,std::string &>(a1 + 3, a1))
    {
      v31 = *(a1 + 2);
      v32 = *a1;
      *a1 = *(a1 + 24);
      *(a1 + 2) = *(a1 + 5);
      *(a1 + 24) = v32;
      *(a1 + 5) = v31;
    }
  }

LABEL_33:
  v38 = (a1 + 72);
  if ((a1 + 72) == a2)
  {
    return 1;
  }

  v39 = 0;
  v40 = 0;
  while (1)
  {
    if (std::greater<void>::operator()[abi:ne200100]<std::string &,std::string &>(v38, v19))
    {
      v45 = *v38;
      v46 = *(v38 + 2);
      *(v38 + 1) = 0;
      *(v38 + 2) = 0;
      *v38 = 0;
      v41 = v39;
      while (1)
      {
        v42 = a1 + v41;
        *(v42 + 72) = *(a1 + v41 + 48);
        *(v42 + 88) = *(a1 + v41 + 64);
        *(v42 + 71) = 0;
        *(v42 + 48) = 0;
        if (v41 == -48)
        {
          break;
        }

        v41 -= 24;
        if (!std::greater<void>::operator()[abi:ne200100]<std::string &,std::string &>(&v45, (v42 + 24)))
        {
          v43 = a1 + v41 + 72;
          goto LABEL_41;
        }
      }

      v43 = a1;
LABEL_41:
      *v43 = v45;
      *(v43 + 16) = v46;
      if (++v40 == 8)
      {
        return (v38 + 24) == a2;
      }
    }

    v19 = v38;
    v39 += 24;
    v38 = (v38 + 24);
    if (v38 == a2)
    {
      return 1;
    }
  }
}

void std::default_delete<std::string>::operator()[abi:ne200100](uint64_t a1)
{
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  JUMPOUT(0x245D6AEE0);
}

uint64_t gnss::Exception::instance(gnss::Exception *this)
{
  result = gnss::Exception::fInstance;
  if (!gnss::Exception::fInstance)
  {
    if (gnss::Exception::instance(void)::pred != -1)
    {
      dispatch_once(&gnss::Exception::instance(void)::pred, &__block_literal_global_3);
    }

    return gnss::Exception::fInstance;
  }

  return result;
}

double ___ZN4gnss9Exception8instanceEv_block_invoke()
{
  qword_27EE14C90 = 0;
  result = 0.0;
  gnss::ExceptionStaticMemory = 0u;
  unk_27EE14C80 = 0u;
  gnss::Exception::fInstance = &gnss::ExceptionStaticMemory;
  return result;
}

void gnss::Exception::instanceDelete(gnss::Exception *this)
{
  if (gnss::Exception::fInstance)
  {
    gnss::Exception::fInstance = 0;
  }

  else
  {
    v5 = v1;
    v6 = v2;
    v3 = GpsdLogObjectGeneral;
    if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_FAULT))
    {
      *v4 = 0;
      _os_log_fault_impl(&dword_2454AA000, v3, OS_LOG_TYPE_FAULT, "Exception,instanceDelete,nullptr", v4, 2u);
    }
  }
}

void gnss::Exception::set(uint64_t *a1, uint64_t a2)
{
  v2 = a2;
  v11 = *MEMORY[0x277D85DE8];
  v3 = *a1 | (1 << a2);
  *a1 = v3;
  v4 = GpsdLogObjectGeneral;
  if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136446722;
    v6 = gnss::Exception::toString(v2);
    v7 = 1026;
    v8 = v2;
    v9 = 2050;
    v10 = v3;
    _os_log_impl(&dword_2454AA000, v4, OS_LOG_TYPE_DEFAULT, "Exception::Type,set,type,%{public}s,%{public}d,%{public}llx", &v5, 0x1Cu);
  }
}

const char *gnss::Exception::toString(int a1)
{
  if ((a1 - 1) > 9)
  {
    return "Unknown";
  }

  else
  {
    return off_278E80858[(a1 - 1)];
  }
}

void gnss::Exception::set(uint64_t *a1, uint64_t a2, int a3)
{
  gnss::Exception::set(a1, a2);
  if (!a1[4])
  {
    v4 = GpsdLogObjectGeneral;
    if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v5) = 0;
      _os_log_error_impl(&dword_2454AA000, v4, OS_LOG_TYPE_ERROR, "Exception::set,fSendIndication,nullptr", &v5, 2u);
    }
  }

  v5 = &unk_285862178;
  v6 = 0u;
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0;
  v14 = MEMORY[0x277D82C30];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  memset(v18, 0, sizeof(v18));
  LODWORD(v6) = 23;
  v19 = 0x400100000000;
  operator new();
}

void gnss::stringify(int a1@<W0>, void *a2@<X8>)
{
  if (a1 <= 3)
  {
    if (a1 <= 1)
    {
      if (!a1)
      {
        v3 = "kDropped";
        goto LABEL_20;
      }

      if (a1 == 1)
      {
        v3 = "kSuccess";
        goto LABEL_20;
      }

      goto LABEL_23;
    }

    if (a1 == 2)
    {
      v3 = "kAborted";
    }

    else
    {
      v3 = "kInUse";
    }

LABEL_20:

    std::string::basic_string[abi:ne200100]<0>(a2, v3);
    return;
  }

  if (a1 <= 5)
  {
    if (a1 == 4)
    {
      v3 = "kInvalidArgument";
    }

    else
    {
      v3 = "kPermissionDenied";
    }

    goto LABEL_20;
  }

  switch(a1)
  {
    case 6:
      v3 = "kTimeout";
      goto LABEL_20;
    case 7:
      v3 = "kUnavailable";
      goto LABEL_20;
    case 8:
      v3 = "kCompletedWithFailure";
      goto LABEL_20;
  }

LABEL_23:
  std::to_string(&v6, a1);
  v4 = std::string::insert(&v6, 0, "unknown ");
  v5 = *&v4->__r_.__value_.__l.__data_;
  a2[2] = *(&v4->__r_.__value_.__l + 2);
  *a2 = v5;
  v4->__r_.__value_.__l.__size_ = 0;
  v4->__r_.__value_.__r.__words[2] = 0;
  v4->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v6.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v6.__r_.__value_.__l.__data_);
  }
}

void sub_24556E518(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t gnss::MeasurementData::fillIsUsableFlag(gnss::MeasurementData *this)
{
  result = GpsdPlatformInfo::instance(0);
  v3 = *(result + 8) - 103;
  v4 = v3 > 4;
  v5 = (1 << v3) & 0x19;
  if (!v4 && v5 != 0)
  {
    v7 = *(this + 19);
    for (i = *(this + 20); v7 != i; v7 += 176)
    {
      v9 = *(v7 + 56);
      if (v9 >= 5000.0)
      {
        *(v7 + 56) = -1082130432;
        v9 = -1.0;
      }

      v10 = *(v7 + 72);
      if (v10 >= 50.0)
      {
        *(v7 + 72) = 0xBFF0000000000000;
        v10 = -1.0;
      }

      v11 = v9 > 0.0 && *(v7 + 48) >= 0.0 || (*(v7 + 64) & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL && v10 > 0.0;
      *(v7 + 173) = v11;
    }
  }

  return result;
}

void gnss::deviceVersionCheck(gnss *this)
{
  v1 = this;
  v21 = *MEMORY[0x277D85DE8];
  GnssDeviceVersion = getGnssDeviceVersion();
  v3 = GpsdLogObjectGeneral;
  v4 = os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_DEFAULT);
  if (v4)
  {
    *buf = 134349570;
    v18 = 0x403911EB851EB852;
    v19 = 2050;
    *v20 = GnssDeviceVersion * 0.01;
    *&v20[8] = 2080;
    *&v20[10] = getVersionString();
    _os_log_impl(&dword_2454AA000, v3, OS_LOG_TYPE_DEFAULT, "#gdd,Local device version,%{public}.2f,Dylib device version,%{public}.2f,Dylib version string,%s", buf, 0x20u);
  }

  if (v1)
  {
    ProcessUptimeSec = gpsd::util::getProcessUptimeSec(v4);
    v6 = getGnssDeviceVersion();
    VersionString = getVersionString();
    printf("[%5.1f][TOOL] gnss::Device version %.2f, %s\n", ProcessUptimeSec, v6 * 0.01, VersionString);
    v8 = GpsdLogObjectGeneral;
    v9 = os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_DEFAULT);
    if (v9)
    {
      v10 = gpsd::util::getProcessUptimeSec(v9);
      v11 = getGnssDeviceVersion();
      v12 = getVersionString();
      *buf = 134218498;
      v18 = *&v10;
      v19 = 2048;
      *v20 = v11 * 0.01;
      *&v20[8] = 2080;
      *&v20[10] = v12;
      _os_log_impl(&dword_2454AA000, v8, OS_LOG_TYPE_DEFAULT, "[%5.1f][TOOL] gnss::Device version %.2f, %s", buf, 0x20u);
    }
  }

  if (GnssDeviceVersion != 2507)
  {
    v13 = GpsdLogObjectGeneral;
    if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2454AA000, v13, OS_LOG_TYPE_ERROR, "gnss::Device version mismatch", buf, 2u);
      v13 = GpsdLogObjectGeneral;
    }

    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v18 = "/Library/Caches/com.apple.xbs/Sources/CoreGPS/Sources/Util/GpsdUtil.cpp";
      v19 = 1026;
      *v20 = 83;
      *&v20[4] = 2082;
      *&v20[6] = "deviceVersionCheck";
      _os_log_error_impl(&dword_2454AA000, v13, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: assertion failure in %{public}s", buf, 0x1Cu);
    }

    std::string::basic_string[abi:ne200100]<0>(&v16, "assert");
    std::string::basic_string[abi:ne200100]<0>(&v15, "deviceVersionCheck");
    std::string::basic_string[abi:ne200100]<0>(&v14, "gnss::Device version mismatch");
    gpsd::util::triggerDiagnosticReport(&v16, &v15, &v14);
    std::string::~string(&v14);
    std::string::~string(&v15);
    std::string::~string(&v16);
    __assert_rtn("deviceVersionCheck", "GpsdUtil.cpp", 83, "false && gnss::Device version mismatch");
  }
}

void sub_24556E8F8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  if (a23 < 0)
  {
    operator delete(a18);
  }

  if (a29 < 0)
  {
    operator delete(a24);
  }

  _Unwind_Resume(exception_object);
}

double gpsd::util::getProcessUptimeSec(gpsd::util *this)
{
  if (!gpsd::util::getProcessUptimeSec(void)::sMachContTimeStartNs)
  {
    this = gpsd::util::getMachContinuousTimeNs(this);
    gpsd::util::getProcessUptimeSec(void)::sMachContTimeStartNs = this;
  }

  return (gpsd::util::getMachContinuousTimeNs(this) - gpsd::util::getProcessUptimeSec(void)::sMachContTimeStartNs) * 0.000000001;
}

uint64_t calculateGcd(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return a1;
  }

  do
  {
    v2 = a2;
    a2 = a1 % a2;
    LODWORD(a1) = v2;
  }

  while (a2);
  return v2;
}

uint64_t gpsd::util::getMachContinuousTimeNs(gpsd::util *this)
{
  {
    getTickToNsInfo();
  }

  v1 = mach_continuous_time();
  v2 = 8;
  if (!getTickToNsInfo(void)::info)
  {
    v2 = 0;
  }

  return ((v1 >> v2) * getTickToNsInfo(void)::info / getTickToNsInfo(void)::info) << v2;
}

void getTickToNsInfo(void)
{
  v24 = *MEMORY[0x277D85DE8];
  if (!getTickToNsInfo(void)::info)
  {
    mach_timebase_info(&info);
    if (info.denom)
    {
      denom = info.denom;
      numer = info.numer;
      do
      {
        v2 = denom;
        denom = numer % denom;
        numer = v2;
      }

      while (denom);
    }

    else
    {
      v2 = info.numer;
      if (!info.numer)
      {
        v7 = GpsdLogObjectGeneral;
        if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_error_impl(&dword_2454AA000, v7, OS_LOG_TYPE_ERROR, "gcd result is zero", buf, 2u);
          v7 = GpsdLogObjectGeneral;
        }

        if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
        {
          *buf = 136446722;
          v21 = "/Library/Caches/com.apple.xbs/Sources/CoreGPS/Sources/Util/GpsdUtil.cpp";
          v22 = 1026;
          *v23 = 110;
          *&v23[4] = 2082;
          *&v23[6] = "getTickToNsInfo";
          _os_log_error_impl(&dword_2454AA000, v7, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: assertion failure in %{public}s", buf, 0x1Cu);
        }

        std::string::basic_string[abi:ne200100]<0>(&v18, "assert");
        std::string::basic_string[abi:ne200100]<0>(&v17, "getTickToNsInfo");
        std::string::basic_string[abi:ne200100]<0>(&v16, "gcd result is zero");
        gpsd::util::triggerDiagnosticReport(&v18, &v17, &v16);
        std::string::~string(&v16);
        std::string::~string(&v17);
        std::string::~string(&v18);
        __assert_rtn("getTickToNsInfo", "GpsdUtil.cpp", 110, "false && gcd result is zero");
      }
    }

    getTickToNsInfo(void)::info = info.denom / v2;
    getTickToNsInfo(void)::info = info.numer / v2;
    if (v2 > info.denom)
    {
      v8 = GpsdLogObjectGeneral;
      if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_2454AA000, v8, OS_LOG_TYPE_ERROR, "info.denominator is zero", buf, 2u);
        v8 = GpsdLogObjectGeneral;
      }

      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446722;
        v21 = "/Library/Caches/com.apple.xbs/Sources/CoreGPS/Sources/Util/GpsdUtil.cpp";
        v22 = 1026;
        *v23 = 113;
        *&v23[4] = 2082;
        *&v23[6] = "getTickToNsInfo";
        _os_log_error_impl(&dword_2454AA000, v8, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: assertion failure in %{public}s", buf, 0x1Cu);
      }

      std::string::basic_string[abi:ne200100]<0>(&v15, "assert");
      std::string::basic_string[abi:ne200100]<0>(&v14, "getTickToNsInfo");
      std::string::basic_string[abi:ne200100]<0>(&v13, "info.denominator is zero");
      gpsd::util::triggerDiagnosticReport(&v15, &v14, &v13);
      std::string::~string(&v13);
      std::string::~string(&v14);
      std::string::~string(&v15);
      __assert_rtn("getTickToNsInfo", "GpsdUtil.cpp", 113, "false && info.denominator is zero");
    }

    if (v2 > info.numer)
    {
      v9 = GpsdLogObjectGeneral;
      if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_2454AA000, v9, OS_LOG_TYPE_ERROR, "info.numerator is zero", buf, 2u);
        v9 = GpsdLogObjectGeneral;
      }

      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446722;
        v21 = "/Library/Caches/com.apple.xbs/Sources/CoreGPS/Sources/Util/GpsdUtil.cpp";
        v22 = 1026;
        *v23 = 114;
        *&v23[4] = 2082;
        *&v23[6] = "getTickToNsInfo";
        _os_log_error_impl(&dword_2454AA000, v9, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: assertion failure in %{public}s", buf, 0x1Cu);
      }

      std::string::basic_string[abi:ne200100]<0>(&v12, "assert");
      std::string::basic_string[abi:ne200100]<0>(&v11, "getTickToNsInfo");
      std::string::basic_string[abi:ne200100]<0>(&v10, "info.numerator is zero");
      gpsd::util::triggerDiagnosticReport(&v12, &v11, &v10);
      std::string::~string(&v10);
      std::string::~string(&v11);
      std::string::~string(&v12);
      __assert_rtn("getTickToNsInfo", "GpsdUtil.cpp", 114, "false && info.numerator is zero");
    }

    v3 = info.numer / v2 * (info.denom / v2);
    if (v3 >= 0x17D)
    {
      getTickToNsInfo(void)::info = 1;
      v4 = GpsdLogObjectGeneral;
      if (v3 >> 10 > 0x5E)
      {
        if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_error_impl(&dword_2454AA000, v4, OS_LOG_TYPE_ERROR, "#gpsdUtil,Cannot protect against overflow in tick to ns", buf, 2u);
        }
      }

      else if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_2454AA000, v4, OS_LOG_TYPE_INFO, "#gpsdUtil,Reducing tick to ns precision to avoid overflow risk", buf, 2u);
      }
    }

    v5 = GpsdLogObjectGeneral;
    if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_DEBUG))
    {
      if (getTickToNsInfo(void)::info)
      {
        v6 = 8;
      }

      else
      {
        v6 = 0;
      }

      *buf = 134349568;
      v21 = getTickToNsInfo(void)::info;
      v22 = 2050;
      *v23 = getTickToNsInfo(void)::info;
      *&v23[8] = 1026;
      *&v23[10] = v6;
      _os_log_debug_impl(&dword_2454AA000, v5, OS_LOG_TYPE_DEBUG, "#gpsdUtil,Tick to ns info,Numerator,%{public}llu,Denominator,%{public}llu,PrecisionReductionBits,%{public}d", buf, 0x1Cu);
    }
  }
}

void sub_24556EFEC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, void *a33, uint64_t a34, int a35, __int16 a36, char a37, char a38, char a39, uint64_t a40, int a41, __int16 a42, char a43, char a44, void *a45, uint64_t a46, int a47, __int16 a48, char a49, char a50)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  _Unwind_Resume(exception_object);
}

uint64_t gpsd::util::getMachContinuousTimeMs(gpsd::util *this)
{
  if ((atomic_load_explicit(&_MergedGlobals_2, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals_2))
  {
    getTickToMsInfo();
    __cxa_guard_release(&_MergedGlobals_2);
  }

  return mach_continuous_time() / qword_27EE14DB0;
}

void getTickToMsInfo(void)
{
  v12 = *MEMORY[0x277D85DE8];
  if (!qword_27EE14DB0)
  {
    if ((atomic_load_explicit(&qword_27EE14DB8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27EE14DB8))
    {
      getTickToNsInfo();
      __cxa_guard_release(&qword_27EE14DB8);
    }

    v0 = 1000000 * getTickToNsInfo(void)::info / getTickToNsInfo(void)::info;
    qword_27EE14DB0 = v0;
    v1 = GpsdLogObjectGeneral;
    if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134349056;
      v7 = v0;
      _os_log_impl(&dword_2454AA000, v1, OS_LOG_TYPE_DEFAULT, "getTickToMsInfo,denominator,%{public}llu", buf, 0xCu);
      v0 = qword_27EE14DB0;
    }

    if (!v0)
    {
      v2 = GpsdLogObjectGeneral;
      if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_2454AA000, v2, OS_LOG_TYPE_ERROR, "getTickToMsInfo,Cannot get ms from this platform", buf, 2u);
        v2 = GpsdLogObjectGeneral;
      }

      if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446722;
        v7 = "/Library/Caches/com.apple.xbs/Sources/CoreGPS/Sources/Util/GpsdUtil.cpp";
        v8 = 1026;
        v9 = 152;
        v10 = 2082;
        v11 = "getTickToMsInfo";
        _os_log_error_impl(&dword_2454AA000, v2, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: assertion failure in %{public}s", buf, 0x1Cu);
      }

      std::string::basic_string[abi:ne200100]<0>(&v5, "assert");
      std::string::basic_string[abi:ne200100]<0>(&v4, "getTickToMsInfo");
      std::string::basic_string[abi:ne200100]<0>(&v3, "getTickToMsInfo,Cannot get ms from this platform");
      gpsd::util::triggerDiagnosticReport(&v5, &v4, &v3);
      std::string::~string(&v3);
      std::string::~string(&v4);
      std::string::~string(&v5);
      __assert_rtn("getTickToMsInfo", "GpsdUtil.cpp", 152, "false && getTickToMsInfo,Cannot get ms from this platform");
    }
  }
}

uint64_t gpsd::util::getMachAbsoluteTimeNs(gpsd::util *this)
{
  {
    getTickToNsInfo();
  }

  v1 = mach_absolute_time();
  v2 = 8;
  if (!getTickToNsInfo(void)::info)
  {
    v2 = 0;
  }

  return ((v1 >> v2) * getTickToNsInfo(void)::info / getTickToNsInfo(void)::info) << v2;
}

unint64_t gpsd::util::convertMachTimeInTicksToNs(unint64_t this)
{
  {
    getTickToNsInfo();
  }

  v2 = 8;
  if (!getTickToNsInfo(void)::info)
  {
    v2 = 0;
  }

  return ((this >> v2) * getTickToNsInfo(void)::info / getTickToNsInfo(void)::info) << v2;
}

unint64_t gpsd::util::convertNsToMachTimeInTicks(unint64_t this)
{
  {
    getTickToNsInfo();
  }

  v2 = 8;
  if (!getTickToNsInfo(void)::info)
  {
    v2 = 0;
  }

  return ((this >> v2) * getTickToNsInfo(void)::info / getTickToNsInfo(void)::info) << v2;
}

BOOL gpsd::util::getCurrentMachContinuousMinusMachAbsoluteTicks(gpsd::util *this, unint64_t *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  if (mach_get_times())
  {
    v3 = GpsdLogObjectGeneral;
    result = os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_ERROR);
    if (result)
    {
      *buf = 0;
      _os_log_error_impl(&dword_2454AA000, v3, OS_LOG_TYPE_ERROR, "#gpsdUtil,mach_get_times failed", buf, 2u);
      return 0;
    }
  }

  else
  {
    *this = 0;
    return 1;
  }

  return result;
}

BOOL gpsd::util::getCurrentMachContinuousMinusMachAbsoluteNanoseconds(gpsd::util *this, unint64_t *a2)
{
  v5 = 0;
  CurrentMachContinuousMinusMachAbsoluteTicks = gpsd::util::getCurrentMachContinuousMinusMachAbsoluteTicks(&v5, a2);
  if (CurrentMachContinuousMinusMachAbsoluteTicks)
  {
    *this = gpsd::util::convertMachTimeInTicksToNs(v5);
  }

  return CurrentMachContinuousMinusMachAbsoluteTicks;
}

uint64_t gpsd::util::fletcher16(unsigned __int8 **a1)
{
  v1 = *a1;
  v2 = a1[1] - *a1;
  if (v2)
  {
    v3 = 0;
    v4 = 0;
    do
    {
      v5 = *v1++;
      v4 += v5;
      v3 += v4;
      --v2;
    }

    while (v2);
  }

  else
  {
    LOBYTE(v4) = 0;
    v3 = 0;
  }

  return (v4 | (v3 << 8));
}

uint64_t gpsd::util::fletcher16(gpsd::util *this, const unsigned __int8 *a2)
{
  if (a2)
  {
    v2 = 0;
    v3 = 0;
    do
    {
      v4 = *this;
      this = (this + 1);
      v3 += v4;
      v2 += v3;
      --a2;
    }

    while (a2);
  }

  else
  {
    LOBYTE(v3) = 0;
    v2 = 0;
  }

  return (v3 | (v2 << 8));
}

uint64_t gpsd::util::fletcher16(unsigned __int8 *a1)
{
  v1 = a1[23];
  if ((v1 & 0x80u) == 0)
  {
    v2 = a1;
  }

  else
  {
    v2 = *a1;
  }

  if ((v1 & 0x80u) != 0)
  {
    v1 = *(a1 + 1);
  }

  if (v1)
  {
    v3 = 0;
    v4 = 0;
    do
    {
      v5 = *v2++;
      v4 += v5;
      v3 += v4;
      --v1;
    }

    while (v1);
  }

  else
  {
    LOBYTE(v4) = 0;
    v3 = 0;
  }

  return (v4 | (v3 << 8));
}

uint64_t gpsd::util::truncatedSha256(gpsd::util *this, const void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  if (CC_SHA256(this, a2, md))
  {
    return bswap32(*md);
  }

  v5 = GpsdLogObjectGeneral;
  result = os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_ERROR);
  if (result)
  {
    v6 = 134349312;
    v7 = this;
    v8 = 2050;
    v9 = a2;
    _os_log_error_impl(&dword_2454AA000, v5, OS_LOG_TYPE_ERROR, "#gpsdUtil,CC_SHA256 failed on,%{public}p,%{public}zu", &v6, 0x16u);
    return 0;
  }

  return result;
}

uint64_t gpsd::util::truncatedSha256(uint64_t a1)
{
  if (*(a1 + 23) >= 0)
  {
    return gpsd::util::truncatedSha256(a1, *(a1 + 23));
  }

  else
  {
    return gpsd::util::truncatedSha256(*a1, *(a1 + 8));
  }
}

BOOL gpsd::util::readFileIntoVector(uint64_t a1, uint64_t a2)
{
  v20[19] = *MEMORY[0x277D85DE8];
  std::ifstream::basic_ifstream(v17, a1, 4);
  v4 = v19;
  if (v19)
  {
    v5 = *&v18[*(v17[0] - 24) + 24];
    if (v5)
    {
      v12 = v19;
      v6 = v5[3];
      v7 = v5[4];
      if (v6 != v7)
      {
        goto LABEL_6;
      }

      if ((*(*v5 + 72))(v5) != -1)
      {
        v6 = v5[3];
        v7 = v5[4];
LABEL_6:
        if (v6 == v7)
        {
          (*(*v5 + 72))(v5);
        }

        operator new();
      }

      v4 = v12;
    }

    v9 = *a2;
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    v10 = GpsdLogObjectGeneral;
    if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136446466;
      v14 = a1;
      v15 = 2050;
      v16 = 0;
      _os_log_debug_impl(&dword_2454AA000, v10, OS_LOG_TYPE_DEBUG, "readFileIntoVector,%{public}s,size,%{public}zu", buf, 0x16u);
      if (!v9)
      {
        goto LABEL_15;
      }

      goto LABEL_14;
    }

    if (v9)
    {
LABEL_14:
      operator delete(v9);
    }
  }

  else
  {
    v8 = GpsdLogObjectGeneral;
    if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446210;
      v14 = a1;
      _os_log_impl(&dword_2454AA000, v8, OS_LOG_TYPE_DEFAULT, "readFileIntoVector,failed to open %{public}s", buf, 0xCu);
    }
  }

LABEL_15:
  v17[0] = *MEMORY[0x277D82808];
  *(v17 + *(v17[0] - 24)) = *(MEMORY[0x277D82808] + 24);
  MEMORY[0x245D6AC50](v18);
  std::istream::~istream();
  MEMORY[0x245D6AE70](v20);
  return v4 != 0;
}

uint64_t *std::ifstream::basic_ifstream(uint64_t *a1, uint64_t a2, int a3)
{
  a1[59] = 0;
  v4 = MEMORY[0x277D82858] + 64;
  a1[53] = MEMORY[0x277D82858] + 64;
  v5 = *(MEMORY[0x277D82808] + 16);
  v6 = *(MEMORY[0x277D82808] + 8);
  *a1 = v6;
  *(a1 + *(v6 - 24)) = v5;
  a1[1] = 0;
  v7 = (a1 + *(*a1 - 24));
  std::ios_base::init(v7, a1 + 2);
  v8 = MEMORY[0x277D82858] + 24;
  v7[1].__vftable = 0;
  v7[1].__fmtflags_ = -1;
  *a1 = v8;
  a1[53] = v4;
  MEMORY[0x245D6AC40](a1 + 2);
  if (!std::filebuf::open())
  {
    std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | 4);
  }

  return a1;
}

void sub_24556FF00(_Unwind_Exception *a1)
{
  std::istream::~istream();
  MEMORY[0x245D6AE70](v1);
  _Unwind_Resume(a1);
}

uint64_t gpsd::util::writeVectorToClassDFileWithRename(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v26 = *MEMORY[0x277D85DE8];
  if (*(a2 + 23) >= 0)
  {
    v4 = *(a2 + 23);
  }

  else
  {
    v4 = *(a2 + 8);
  }

  v5 = __p;
  std::string::basic_string[abi:ne200100](__p, v4 + 4);
  if (v19 < 0)
  {
    v5 = __p[0];
  }

  if (v4)
  {
    if (*(v2 + 23) >= 0)
    {
      v6 = v2;
    }

    else
    {
      v6 = *v2;
    }

    memmove(v5, v6, v4);
  }

  strcpy(v5 + v4, ".tmp");
  if (!gpsd::util::writeVectorToClassDFile(a1, __p))
  {
    goto LABEL_20;
  }

  if (v19 >= 0)
  {
    v8 = __p;
  }

  else
  {
    v8 = __p[0];
  }

  if (*(v2 + 23) >= 0)
  {
    v9 = v2;
  }

  else
  {
    v9 = *v2;
  }

  rename(v8, v9, v7);
  v10 = GpsdLogObjectGeneral;
  if (v11)
  {
    if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_ERROR))
    {
      if (*(v2 + 23) < 0)
      {
        v2 = *v2;
      }

      v14 = *__error();
      v15 = __error();
      v16 = strerror(*v15);
      *buf = 136446722;
      v21 = v2;
      v22 = 1026;
      v23 = v14;
      v24 = 2082;
      v25 = v16;
      _os_log_error_impl(&dword_2454AA000, v10, OS_LOG_TYPE_ERROR, "writeVectorToClassDFileWithRename,renameFailed,%{public}s,err,%{public}d,%{public}s", buf, 0x1Cu);
    }

LABEL_20:
    v12 = 0;
    goto LABEL_21;
  }

  if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_DEBUG))
  {
    if (*(v2 + 23) >= 0)
    {
      v17 = v2;
    }

    else
    {
      v17 = *v2;
    }

    *buf = 136446210;
    v21 = v17;
    _os_log_debug_impl(&dword_2454AA000, v10, OS_LOG_TYPE_DEBUG, "writeVectorToClassDFileWithRename,success,%{public}s", buf, 0xCu);
  }

  v12 = 1;
LABEL_21:
  if (v19 < 0)
  {
    operator delete(__p[0]);
  }

  return v12;
}

void sub_245570148(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL gpsd::util::writeVectorToClassDFile(uint64_t a1, uint64_t a2)
{
  v18 = *MEMORY[0x277D85DE8];
  if (*(a2 + 23) >= 0)
  {
    v3 = a2;
  }

  else
  {
    v3 = *a2;
  }

  v4 = fopen(v3, "wb+");
  if (!v4)
  {
    v10 = GpsdLogObjectGeneral;
    if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_ERROR))
    {
      v14 = *__error();
      v16 = 67240192;
      v17 = v14;
      v12 = "#utilWriteVector,open failed,%{public}d";
      goto LABEL_15;
    }

    return 0;
  }

  v6 = v4;
  gpsd::util::changeFileToClassD(v4, v5);
  v7 = fwrite(*a1, *(a1 + 8) - *a1, 1uLL, v6);
  v8 = v7 == 1;
  if (v7 != 1)
  {
    v9 = GpsdLogObjectGeneral;
    if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_ERROR))
    {
      v15 = *__error();
      v16 = 67240192;
      v17 = v15;
      _os_log_error_impl(&dword_2454AA000, v9, OS_LOG_TYPE_ERROR, "#utilWriteVector,write failed,%{public}d", &v16, 8u);
    }
  }

  if (fclose(v6))
  {
    v10 = GpsdLogObjectGeneral;
    if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_ERROR))
    {
      v11 = *__error();
      v16 = 67240192;
      v17 = v11;
      v12 = "#utilWriteVector,close failed,%{public}d";
LABEL_15:
      _os_log_error_impl(&dword_2454AA000, v10, OS_LOG_TYPE_ERROR, v12, &v16, 8u);
      return 0;
    }

    return 0;
  }

  return v8;
}

void gpsd::util::changeFileToClassD(FILE *this, __sFILE *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  if (this)
  {
    v2 = fileno(this);
    if (v2 == -1)
    {
      v4 = GpsdLogObjectGeneral;
      if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_ERROR))
      {
        v10 = *__error();
        *buf = 67240192;
        v12 = v10;
        v6 = "#utilFileClass,fileno failed,%{public}d";
        goto LABEL_12;
      }
    }

    else
    {
      v3 = v2;
      if (fcntl(v2, 63) != 4)
      {
        if (fcntl(v3, 64, 4))
        {
          v4 = GpsdLogObjectGeneral;
          if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_ERROR))
          {
            v5 = *__error();
            *buf = 67240192;
            v12 = v5;
            v6 = "#utilFileClass,set class failed,%{public}d";
LABEL_12:
            v8 = v4;
            v9 = 8;
            goto LABEL_13;
          }
        }
      }
    }
  }

  else
  {
    v7 = GpsdLogObjectGeneral;
    if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v6 = "#utilFileClass,nullptr";
      v8 = v7;
      v9 = 2;
LABEL_13:
      _os_log_error_impl(&dword_2454AA000, v8, OS_LOG_TYPE_ERROR, v6, buf, v9);
    }
  }
}

char *gpsd::util::getGpsWeekFromBuildDate(gpsd::util *this)
{
  result = gpsd::util::getGpsWeekFromBuildDate(void)::buildWeek;
  if (gpsd::util::getGpsWeekFromBuildDate(void)::buildWeek <= 0)
  {
    memset(&v4, 0, sizeof(v4));
    result = strptime("Oct 10 2025 21:36:40", "%b %d %Y %H:%M:%S", &v4);
    if (result)
    {
      v2 = mktime(&v4);
      if (v2 < 0)
      {
        return 0;
      }

      else
      {
        v3 = (v2 + -315964800.0 + -259200.0) / 604800.0;
        result = v3;
        gpsd::util::getGpsWeekFromBuildDate(void)::buildWeek = v3;
      }
    }
  }

  return result;
}

void gpsd::util::charToHex(std::string *__return_ptr a1@<X8>, gpsd::util *this@<X0>, const unsigned __int8 *a3@<X1>, int __c@<W2>)
{
  if (a3)
  {
    v8 = 0;
    *&a1->__r_.__value_.__l.__data_ = 0uLL;
    a1->__r_.__value_.__r.__words[2] = 0;
    do
    {
      if (__c)
      {
        if (v8)
        {
          std::string::push_back(a1, __c);
        }
      }

      std::string::push_back(a1, __const__ZN4gpsd4util9charToHexEPKhmc_charmap[v8[this] >> 4]);
      std::string::push_back(a1, __const__ZN4gpsd4util9charToHexEPKhmc_charmap[(v8++)[this] & 0xF]);
    }

    while (a3 != v8);
  }

  else
  {

    std::string::basic_string[abi:ne200100]<0>(a1, "EmptyBuffer");
  }
}

void sub_245570608(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void gpsd::util::charToHex(gpsd::util *this@<X0>, const unsigned __int8 *a2@<X1>, int a3@<W2>, std::string *a4@<X8>)
{
  if ((a2 & 0x8000000000000000) != 0)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  gpsd::util::charToHex(a4, this, a2, a3);
}

void gpsd::util::logBinaryBytes(gpsd::util *this, const unsigned __int8 *a2, uint64_t a3, const char *a4)
{
  v21 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    v7 = 0;
    v8 = a2;
    do
    {
      v9 = GpsdLogObjectGeneral;
      if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_DEBUG))
      {
        if (v8 >= 0x40)
        {
          v10 = 64;
        }

        else
        {
          v10 = v8;
        }

        gpsd::util::charToHex(&__p, (this + v7), v10, 0);
        p_p = &__p;
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          p_p = __p.__r_.__value_.__r.__words[0];
        }

        *buf = 136446979;
        v14 = a3;
        v15 = 2050;
        v16 = a2;
        v17 = 2050;
        v18 = v7;
        v19 = 2081;
        v20 = p_p;
        _os_log_debug_impl(&dword_2454AA000, v9, OS_LOG_TYPE_DEBUG, "%{public}s,%{public}zu,%{public}zu,%{private}s", buf, 0x2Au);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }
      }

      v7 += 64;
      v8 -= 64;
    }

    while (v7 < a2);
  }
}

id vectorToNSArray(double **a1)
{
  v2 = [MEMORY[0x277CBEB18] arrayWithCapacity:a1[1] - *a1];
  v3 = *a1;
  v4 = a1[1];
  if (*a1 != v4)
  {
    do
    {
      v5 = [MEMORY[0x277CCABB0] numberWithDouble:*v3];
      [v2 addObject:v5];

      ++v3;
    }

    while (v3 != v4);
  }

  return v2;
}

_DWORD *GpsdPreferences::GpsdPreferences(_DWORD *a1, int a2)
{
  v72[77] = *MEMORY[0x277D85DE8];
  *a1 = a2;
  v3 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v4 = fDefaults;
  fDefaults = v3;

  if (!a2)
  {
    [fDefaults addSuiteNamed:@"gpsd"];
  }

  [fDefaults addSuiteNamed:@"com.apple.coregps"];
  v5 = MEMORY[0x277CBEC28];
  v71[0] = @"ForceDisableGpsd";
  v71[1] = @"UseLegacyLibXpc";
  v72[0] = MEMORY[0x277CBEC28];
  v72[1] = MEMORY[0x277CBEC28];
  v71[2] = @"BigPowerSwitch";
  v6 = GpsdPlatformInfo::instance(0);
  v7 = MEMORY[0x277CBEC38];
  if (*(v6 + 8) == 201)
  {
    v8 = MEMORY[0x277CBEC38];
  }

  else
  {
    v8 = v5;
  }

  v72[2] = v8;
  v71[3] = @"BaudRate4M8";
  if (*(GpsdPlatformInfo::instance(0) + 8) == 201)
  {
    v9 = v7;
  }

  else
  {
    v9 = v5;
  }

  v72[3] = v9;
  v71[4] = @"UsesAsyncCommRead";
  v10 = *(GpsdPlatformInfo::instance(0) + 8);
  if ((v10 - 301) < 2 || v10 == 202 || (v11 = v5, v10 == 107))
  {
    v11 = MEMORY[0x277CBEC38];
  }

  v72[4] = v11;
  v72[5] = &stru_285865850;
  v71[5] = @"ForceGnssDeviceLibraryName";
  v71[6] = @"EnableMeasurementApi";
  v72[6] = v7;
  v72[7] = v7;
  v71[7] = @"EnableXocalRequests";
  v71[8] = @"ForceEnableXocalLearning";
  v72[8] = v5;
  v72[9] = &unk_285865C30;
  v71[9] = @"MaxSchedulerQos";
  v71[10] = @"EnableBasebandReset";
  v12 = *(GpsdPlatformInfo::instance(0) + 8);
  if ((v12 - 301) < 2 || (v13 = v5, v12 == 202))
  {
    if (*(GpsdPlatformInfo::instance(0) + 8) == 202)
    {
      v13 = v7;
    }

    else
    {
      v13 = v5;
    }
  }

  v72[10] = v13;
  v71[11] = @"LogLevel";
  v14 = [MEMORY[0x277CCABB0] numberWithInt:0];
  v72[11] = v14;
  v71[12] = @"SecondaryLogLevel";
  v15 = [MEMORY[0x277CCABB0] numberWithInt:0];
  v72[12] = v15;
  v72[13] = &unk_285865C48;
  v71[13] = @"LogMask";
  v71[14] = @"PvtmTimeOut";
  v72[14] = &unk_285865C60;
  v72[15] = @"0x0";
  v71[15] = @"NmeaMaskOverride";
  v71[16] = @"VendorLogQA";
  v72[16] = v5;
  v72[17] = v5;
  v71[17] = @"VendorLogRestrictedCarry";
  v71[18] = @"VendorLogAllToOsLog";
  v72[18] = v5;
  v72[19] = v5;
  v71[19] = @"VendorLogForceCustomer";
  v71[20] = @"VendorLogLz4";
  v72[20] = v7;
  v72[21] = v5;
  v71[21] = @"VendorLogLzfse";
  v71[22] = @"VendorLogZlib";
  v72[22] = v5;
  v72[23] = @"/var/mobile/Library/Logs/gpsd";
  v71[23] = @"VendorLogDirectory";
  v71[24] = @"VendorLogPrefixWithTimestamp";
  v72[24] = v5;
  v72[25] = &unk_285865C78;
  v71[25] = @"VendorLogMaxDirectorySizeMB";
  v71[26] = @"VendorLogRotationSizeMB";
  v72[26] = &unk_285865C90;
  v72[27] = &unk_285865CA8;
  v71[27] = @"VendorLogMaxNumberOfFiles";
  v71[28] = @"VendorLogRetentionDays";
  v72[28] = &unk_285865D08;
  v72[29] = &unk_285865CC0;
  v71[29] = @"VendorLogBufferSizeAllowedKB";
  v71[30] = @"EnableProtobufBinaryLog";
  v72[30] = v5;
  v72[31] = @"/var/mobile/Library/Logs/gpsd";
  v71[31] = @"ProtobufLogDirectory";
  v71[32] = @"ProtobufLogRetentionDays";
  v72[32] = &unk_285865D18;
  v72[33] = v5;
  v71[33] = @"EnableInterfaceTelemetry";
  v71[34] = @"NvStoreFile";
  v72[34] = @"/var/db/gpsd/gps_nvstore.bin";
  v72[35] = @"/var/db/gpsd/longTermPredictions";
  v71[35] = @"LongTermPredictionsFile";
  v71[36] = @"ShortTermPredictionsFile";
  v72[36] = @"/var/db/gpsd/shortTermPredictions";
  v72[37] = @"/var/db/gpsd/rtistore";
  v71[37] = @"RTIFile";
  v71[38] = @"RavenOrbitFile";
  v72[38] = @"/var/db/gpsd/ravenorbitstore";
  v72[39] = v5;
  v71[39] = @"VerboseNvStore";
  v71[40] = @"VerboseCommDataSize";
  v72[40] = v5;
  v72[41] = v5;
  v71[41] = @"VerboseCommDataSniffer";
  v71[42] = @"PerformanceReportIntervalSeconds";
  v72[42] = &unk_285865C60;
  v72[43] = &unk_285865C48;
  v71[43] = @"RecoveryTestCase";
  v71[44] = @"GenericTestCase";
  v72[44] = &unk_285865C48;
  v72[45] = v7;
  v71[45] = @"EnableGps";
  v71[46] = @"EnableQzss";
  v72[46] = v7;
  v72[47] = v7;
  v71[47] = @"EnableGlonass";
  v71[48] = @"EnableGalileo";
  v72[48] = v7;
  v71[49] = @"EnableBeidou";
  v16 = *(GpsdPlatformInfo::instance(0) + 8);
  if (v16 == 201 || v16 == 103)
  {
    v18 = v5;
  }

  else
  {
    v18 = v7;
  }

  v72[49] = v18;
  v71[50] = @"EnableNavic";
  v19 = GpsdPlatformInfo::instance(0);
  if (GpsdPlatformInfo::supportsNavic(v19))
  {
    v20 = v7;
  }

  else
  {
    v20 = v5;
  }

  v72[50] = v20;
  v71[51] = @"EnableL5";
  if (*(GpsdPlatformInfo::instance(0) + 24))
  {
    v21 = v7;
  }

  else
  {
    v21 = v5;
  }

  v72[51] = v21;
  v71[52] = @"EnableCoexL5NotchFilter";
  v22 = GpsdPlatformInfo::instance(0);
  v23 = v5;
  if (*(v22 + 8) == 107)
  {
    v24 = GpsdPlatformInfo::instance(0);
    if (GpsdPlatformInfo::isPhone(v24))
    {
      v23 = v7;
    }

    else
    {
      v23 = v5;
    }
  }

  v72[52] = v23;
  v72[53] = v7;
  v71[53] = @"EnableCoexBitEnhancedFreqAsst";
  v71[54] = @"EnableCoexBitCdmaFineTimeAsst";
  v72[54] = v7;
  v72[55] = v7;
  v71[55] = @"EnableCoexBitBlankingGpsL1";
  v71[56] = @"EnableCoexBitBlankingGloL1";
  v72[56] = v5;
  v72[57] = v5;
  v71[57] = @"EnableCoexBitBlankingBdsB1I";
  v71[58] = @"CoexForceGpsL1Filter";
  v72[58] = &unk_285865C48;
  v72[59] = &unk_285865C48;
  v71[59] = @"CoexForceGloL1Filter";
  v71[60] = @"CoexForceB1IFilter";
  v72[60] = &unk_285865C48;
  v71[61] = @"CoexUseB14LteFilterSettingsForB13";
  if (*(GpsdPlatformInfo::instance(0) + 8) == 107)
  {
    v25 = v7;
  }

  else
  {
    v25 = v5;
  }

  v72[61] = v25;
  v72[62] = v7;
  v71[62] = @"EnableCoexBitStaticSpur";
  v71[63] = @"EnableCoexBitDynamicNotch";
  v71[64] = @"EnableCoexBitJammer";
  v72[63] = v5;
  v72[64] = v7;
  v71[65] = @"GroupDelayL1InCAChips";
  v26 = MEMORY[0x277CCABB0];
  v27 = *(GpsdPlatformInfo::instance(0) + 8);
  v28 = 0.036;
  if (v27 != 202)
  {
    v28 = 0.0;
  }

  if (v27 == 201)
  {
    v28 = -7.149;
  }

  v29 = [v26 numberWithDouble:v28];
  v72[65] = v29;
  v71[66] = @"ExternalToChipL5GroupDelayMeters";
  v30 = MEMORY[0x277CCABB0];
  v31 = GpsdPlatformInfo::instance(0);
  v32 = 0.0;
  if (*(v31 + 24) == 1)
  {
    v32 = *(v31 + 16);
  }

  v33 = [v30 numberWithDouble:v32];
  v72[66] = v33;
  v71[67] = @"GlonassPerFrequencyGroupDelayMeters";
  v34 = GpsdPlatformInfo::instance(0);
  GpsdPlatformInfo::glonassPerFrequencyGroupDelayMeters(__p, v34);
  v35 = vectorToNSArray(__p);
  v72[67] = v35;
  v71[68] = @"RavenExpected";
  v36 = GpsdPlatformInfo::instance(0);
  if (GpsdPlatformInfo::expectedToHaveRaven(v36))
  {
    v37 = v7;
  }

  else
  {
    v37 = v5;
  }

  v72[68] = v37;
  v71[69] = @"ForceFireExtensionsPlatform";
  v72[69] = &unk_285865C48;
  v71[70] = @"UseInternalEmergencyStack";
  v38 = *(GpsdPlatformInfo::instance(0) + 8);
  if ((v38 - 301) < 2 || v38 == 107)
  {
    v40 = v7;
  }

  else
  {
    v40 = v5;
  }

  v72[70] = v40;
  v71[71] = @"UseNewGnssDeviceManager";
  v72[71] = v5;
  v71[72] = @"HasXtalFreqJumpRisk";
  if (*(GpsdPlatformInfo::instance(0) + 8) == 107)
  {
    v41 = v7;
  }

  else
  {
    v41 = v5;
  }

  v72[72] = v41;
  v71[73] = @"AllowAssistanceTimeTo10Milliseconds";
  if ((*(GpsdPlatformInfo::instance(0) + 8) - 301) >= 2)
  {
    v42 = v5;
  }

  else
  {
    v42 = v7;
  }

  v72[73] = v42;
  v71[74] = @"DebugFeaturesBitmask";
  v72[74] = &unk_285865C48;
  v71[75] = @"DebugSettingsString";
  v72[75] = &stru_285865850;
  v71[76] = @"EnableReceivingFTA";
  v43 = GpsdPlatformInfo::instance(0);
  if (GpsdPlatformInfo::isEnableReceivingFineTimeAssistance(v43))
  {
    v44 = v7;
  }

  else
  {
    v44 = v5;
  }

  v72[76] = v44;
  v45 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v72 forKeys:v71 count:77];

  if (*__p)
  {
    *&__p[8] = *__p;
    operator delete(*__p);
  }

  [fDefaults registerDefaults:v45];
  v46 = [MEMORY[0x277CBEAC0] dictionaryWithContentsOfFile:@"Library/Managed Preferences/mobile/gpsd.plist"];
  v47 = GpsdLogObjectGeneral;
  if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    *__p = 138543618;
    *&__p[4] = @"Library/Managed Preferences/mobile/gpsd.plist";
    *&__p[12] = 2114;
    *&__p[14] = v46;
    _os_log_impl(&dword_2454AA000, v47, OS_LOG_TYPE_DEFAULT, "gpsd_plistpath: %{public}@ defaults %{public}@", __p, 0x16u);
  }

  if (v46)
  {
    v48 = GpsdLogObjectGeneral;
    if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_DEFAULT))
    {
      *__p = 0;
      _os_log_impl(&dword_2454AA000, v48, OS_LOG_TYPE_DEFAULT, "gpsd.plist exists", __p, 2u);
    }

    [fDefaults registerDefaults:v46];
  }

  has_internal_diagnostics = [fDefaults BOOLForKey:@"VendorLogForceCustomer"];
  if ((has_internal_diagnostics & 1) == 0)
  {
    if (*a1)
    {
      v68[0] = @"LogLevel";
      v50 = [MEMORY[0x277CCABB0] numberWithInt:8];
      v68[1] = @"VendorLogMaxDirectorySizeMB";
      v68[2] = @"VendorLogRotationSizeMB";
      v69[0] = v50;
      v69[1] = &unk_285865C00;
      v69[2] = &unk_285865C00;
      v69[3] = &unk_285865C18;
      v68[3] = @"VendorLogMaxNumberOfFiles";
      v68[4] = @"VendorLogAllToOsLog";
      if (*a1 == 1)
      {
        v51 = v5;
      }

      else
      {
        v51 = v7;
      }

      v69[4] = v51;
      v69[5] = v5;
      v68[5] = @"VendorLogLz4";
      v68[6] = @"VendorLogLzfse";
      v69[6] = v5;
      v69[7] = v5;
      v68[7] = @"VendorLogZlib";
      v68[8] = @"VerboseCommDataSize";
      v69[8] = v7;
      v52 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v69 forKeys:v68 count:9];

      [fDefaults registerDefaults:v52];
    }

    else if (([fDefaults BOOLForKey:@"VendorLogQA"] & 1) != 0 || objc_msgSend(fDefaults, "BOOLForKey:", @"VendorLogAllToOsLog"))
    {
      v53 = *(GpsdPlatformInfo::instance(0) + 8) - 103;
      if (v53 > 4)
      {
        v54 = 6;
      }

      else
      {
        v54 = dword_2455859B0[v53];
      }

      v66[0] = @"LogLevel";
      v55 = [MEMORY[0x277CCABB0] numberWithInt:v54];
      v67[0] = v55;
      v67[1] = &unk_285865C00;
      v66[1] = @"VendorLogMaxDirectorySizeMB";
      v66[2] = @"VendorLogRotationSizeMB";
      v67[2] = &unk_285865C00;
      v67[3] = &unk_285865C18;
      v66[3] = @"VendorLogMaxNumberOfFiles";
      v66[4] = @"EnableProtobufBinaryLog";
      v67[4] = v7;
      v67[5] = &unk_285865D08;
      v66[5] = @"ProtobufLogRetentionDays";
      v66[6] = @"EnableInterfaceTelemetry";
      v67[6] = v7;
      v52 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v67 forKeys:v66 count:7];

      [fDefaults registerDefaults:v52];
    }

    else if ([fDefaults BOOLForKey:@"VendorLogRestrictedCarry"])
    {
      v57 = *(GpsdPlatformInfo::instance(0) + 8) - 103;
      if (v57 >= 5)
      {
        v58 = 6;
      }

      else
      {
        v58 = dword_2455859B0[v57];
      }

      v64[0] = @"LogLevel";
      v60 = [MEMORY[0x277CCABB0] numberWithInt:v58];
      v65[0] = v60;
      v65[1] = v7;
      v64[1] = @"EnableInterfaceTelemetry";
      v64[2] = @"EnableProtobufBinaryLog";
      v65[2] = v7;
      v65[3] = &unk_285865CD8;
      v64[3] = @"VendorLogMaxDirectorySizeMB";
      v64[4] = @"VendorLogMaxNumberOfFiles";
      v65[4] = &unk_285865CF0;
      v52 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v65 forKeys:v64 count:5];

      [fDefaults registerDefaults:v52];
    }

    else
    {
      has_internal_diagnostics = os_variant_has_internal_diagnostics();
      if (!has_internal_diagnostics)
      {
        goto LABEL_82;
      }

      v62[0] = @"LogLevel";
      v59 = [MEMORY[0x277CCABB0] numberWithInt:5];
      v63[0] = v59;
      v63[1] = v7;
      v62[1] = @"EnableInterfaceTelemetry";
      v62[2] = @"EnableProtobufBinaryLog";
      v63[2] = v7;
      v52 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v63 forKeys:v62 count:3];

      [fDefaults registerDefaults:v52];
    }
  }

LABEL_82:
  GpsdPreferences::dumpSettingsToLog(has_internal_diagnostics);

  return a1;
}

void GpsdPreferences::dumpSettingsToLog(GpsdPreferences *this)
{
  v24 = *MEMORY[0x277D85DE8];
  v1 = GpsdLogObjectGeneral;
  v2 = os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT);
  if (v2)
  {
    *buf = 134349056;
    v20 = gpsd::util::getMachContinuousTimeNs(v2) * 0.000000001;
    _os_log_impl(&dword_2454AA000, v1, OS_LOG_TYPE_DEFAULT, "#version,CoreGPS-328.0.1,machContSec,%{public}.3f,BuildTime,{Oct 10 2025,21:36:42}", buf, 0xCu);
  }

  v14 = [fDefaults dictionaryRepresentation];
  v3 = [v14 allKeys];
  v4 = [v3 sortedArrayUsingSelector:sel_compare_];

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = v4;
  v6 = [v5 countByEnumeratingWithState:&v15 objects:v23 count:16];
  if (v6)
  {
    v8 = *v16;
    *&v7 = 138543618;
    v13 = v7;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        if (([v10 isEqualToString:{@"AppleLanguages", v13}] & 1) == 0 && (objc_msgSend(v10, "isEqualToString:", @"NSLanguages") & 1) == 0 && (objc_msgSend(v10, "isEqualToString:", @"NSInterfaceStyle") & 1) == 0)
        {
          v11 = [v14 objectForKeyedSubscript:v10];
          v12 = GpsdLogObjectGeneral;
          if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_INFO))
          {
            *buf = v13;
            v20 = *&v10;
            v21 = 2114;
            v22 = v11;
            _os_log_impl(&dword_2454AA000, v12, OS_LOG_TYPE_INFO, "Pref: %{public}@ = %{public}@", buf, 0x16u);
          }
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v15 objects:v23 count:16];
    }

    while (v6);
  }
}

_DWORD *GpsdPreferences::setMode(uint64_t a1)
{
  v1 = a1;
  result = GpsdPreferences::instance(a1);
  if (result)
  {
    return (*result == v1);
  }

  return result;
}

uint64_t GpsdPreferences::instance(int a1)
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = ___ZN15GpsdPreferences8instanceENS_4ModeE_block_invoke;
  block[3] = &__block_descriptor_36_e5_v8__0l;
  v3 = a1;
  if (GpsdPreferences::instance(GpsdPreferences::Mode)::pred != -1)
  {
    dispatch_once(&GpsdPreferences::instance(GpsdPreferences::Mode)::pred, block);
  }

  return GpsdPreferences::fInstance;
}

void GpsdPreferences::vendorLogDirectory(GpsdPreferences *this@<X0>, void *a2@<X8>)
{
  v3 = *this;
  if (*this > 2)
  {
    if (v3 == 3)
    {
      v4 = "/var/root/gps_unittest_logs";
      goto LABEL_13;
    }

    if (v3 == 4)
    {
      v4 = "/private/var/logs/BurnIn/gps";
      goto LABEL_13;
    }
  }

  else
  {
    if (v3 == 1)
    {
      v4 = "/var/root/gpstool_logs";
      goto LABEL_13;
    }

    if (v3 == 2)
    {
      v4 = "/var/root/gpsfactorytest_logs";
LABEL_13:

      std::string::basic_string[abi:ne200100]<0>(a2, v4);
      return;
    }
  }

  v5 = [fDefaults stringForKey:@"VendorLogDirectory"];
  std::string::basic_string[abi:ne200100]<0>(a2, [v5 UTF8String]);
}

void GpsdPreferences::vendorLogDirectoryAssumingGpsd(void *a1@<X8>)
{
  v2 = [fDefaults stringForKey:@"VendorLogDirectory"];
  std::string::basic_string[abi:ne200100]<0>(a1, [v2 UTF8String]);
}

uint64_t GpsdPreferences::vendorLogPrefixWithTimestamp(GpsdPreferences *this)
{
  if (*this == 3)
  {
    return 0;
  }

  else
  {
    return [fDefaults BOOLForKey:@"VendorLogPrefixWithTimestamp"];
  }
}

unint64_t GpsdPreferences::vendorLogMaxDirectorySizeMB(GpsdPreferences *this)
{
  v1 = [fDefaults integerForKey:@"VendorLogMaxDirectorySizeMB"];
  if (![fDefaults BOOLForKey:@"VendorLogQA"])
  {
    return v1;
  }

  LODWORD(result) = [&unk_285865C00 intValue];
  if (result <= v1)
  {
    return v1;
  }

  else
  {
    return result;
  }
}

uint64_t GpsdPreferences::vendorLogRotationSizeMB(GpsdPreferences *this)
{
  if (*this == 3)
  {
    return 2000;
  }

  v1 = [fDefaults integerForKey:@"VendorLogRotationSizeMB"];
  if (![fDefaults BOOLForKey:@"VendorLogQA"])
  {
    return v1;
  }

  LODWORD(result) = [&unk_285865C00 intValue];
  if (result <= v1)
  {
    return v1;
  }

  else
  {
    return result;
  }
}

unint64_t GpsdPreferences::vendorLogMaxNumberOfFiles(GpsdPreferences *this)
{
  v1 = [fDefaults integerForKey:@"VendorLogMaxNumberOfFiles"];
  if (![fDefaults BOOLForKey:@"VendorLogQA"])
  {
    return v1;
  }

  LODWORD(result) = [&unk_285865C18 intValue];
  if (result <= v1)
  {
    return v1;
  }

  else
  {
    return result;
  }
}

void GpsdPreferences::forceGnssDeviceLibraryName(uint64_t *__return_ptr a1@<X8>)
{
  v2 = [fDefaults stringForKey:@"ForceGnssDeviceLibraryName"];
  std::string::basic_string[abi:ne200100]<0>(a1, [v2 UTF8String]);
}

uint64_t integerToHalLogLevel(unsigned int a1)
{
  v5 = *MEMORY[0x277D85DE8];
  if (a1 < 9)
  {
    return dword_2455859C4[a1 & 0xF];
  }

  v3 = GpsdLogObjectGeneral;
  if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_ERROR))
  {
    v4[0] = 67240192;
    v4[1] = a1;
    _os_log_error_impl(&dword_2454AA000, v3, OS_LOG_TYPE_ERROR, "Invalid LogLevel preference %{public}d", v4, 8u);
  }

  return 3;
}

uint64_t GpsdPreferences::getLogLevel(GpsdPreferences *this)
{
  v1 = [fDefaults integerForKey:@"LogLevel"];

  return integerToHalLogLevel(v1);
}

uint64_t GpsdPreferences::getSecondaryLogLevel(GpsdPreferences *this)
{
  v1 = [fDefaults integerForKey:@"SecondaryLogLevel"];

  return integerToHalLogLevel(v1);
}

uint64_t GpsdPreferences::getPvtmTimeOut(GpsdPreferences *this)
{
  v5 = *MEMORY[0x277D85DE8];
  v1 = [fDefaults integerForKey:@"PvtmTimeOut"];
  v2 = GpsdLogObjectGeneral;
  if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_INFO))
  {
    v4[0] = 67240192;
    v4[1] = v1;
    _os_log_impl(&dword_2454AA000, v2, OS_LOG_TYPE_INFO, "Pref: kPvtmTimeOut = %{public}d", v4, 8u);
  }

  return v1;
}

uint64_t GpsdPreferences::nmeaMaskOverride(GpsdPreferences *this)
{
  v9 = *MEMORY[0x277D85DE8];
  v1 = [fDefaults stringForKey:@"NmeaMaskOverride"];
  v6 = 0;
  v2 = [MEMORY[0x277CCAC80] scannerWithString:v1];
  [v2 scanHexLongLong:&v6];
  v3 = GpsdLogObjectGeneral;
  if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_INFO))
  {
    *buf = 134349056;
    v8 = v6;
    _os_log_impl(&dword_2454AA000, v3, OS_LOG_TYPE_INFO, "Pref: kNmeaMaskOverride = 0x%{public}llx", buf, 0xCu);
  }

  v4 = v6;

  return v4;
}

uint64_t GpsdPreferences::maxSchedulerQos(GpsdPreferences *this)
{
  v1 = [fDefaults integerForKey:@"MaxSchedulerQos"];
  v2 = GpsdLogObjectGeneral;
  v3 = os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_INFO);
  if (v1 == 2)
  {
    if (v3)
    {
      *v6 = 0;
      _os_log_impl(&dword_2454AA000, v2, OS_LOG_TYPE_INFO, "Pref,maxSchedulerQos,UserInteractive", v6, 2u);
    }

    return 33;
  }

  else if (v1 == 1)
  {
    if (v3)
    {
      *buf = 0;
      _os_log_impl(&dword_2454AA000, v2, OS_LOG_TYPE_INFO, "Pref,maxSchedulerQos,UserInitiated", buf, 2u);
    }

    return 25;
  }

  else
  {
    if (v3)
    {
      *v5 = 0;
      _os_log_impl(&dword_2454AA000, v2, OS_LOG_TYPE_INFO, "Pref,maxSchedulerQos,Default", v5, 2u);
    }

    return 21;
  }
}

void GpsdPreferences::protobufLogDirectory(void *a1@<X8>)
{
  v2 = [fDefaults stringForKey:@"ProtobufLogDirectory"];
  std::string::basic_string[abi:ne200100]<0>(a1, [v2 UTF8String]);
}

void GpsdPreferences::nvStorePath(uint64_t *__return_ptr a1@<X8>, GpsdPreferences *this@<X0>)
{
  v4 = [fDefaults stringForKey:@"DatabasePath"];
  v5 = v4;
  if (v4)
  {
    std::string::basic_string[abi:ne200100]<0>(a1, [v4 UTF8String]);
  }

  else
  {
    std::string::basic_string[abi:ne200100]<0>(a1, off_278E808C8[*this]);
  }
}

void GpsdPreferences::nvStoreFile(GpsdPreferences *this@<X0>, void *a2@<X8>)
{
  v3 = *this;
  if ((*this - 1) < 2)
  {
    v4 = "/var/root/gpstool_nvstore.bin";
    goto LABEL_7;
  }

  if (v3 == 4)
  {
    v4 = "/private/var/logs/BurnIn/gps/nvstore.bin";
    goto LABEL_7;
  }

  if (v3 == 3)
  {
    v4 = "/var/mobile/CoreGPS_UnitTests_nvstore.bin";
LABEL_7:

    std::string::basic_string[abi:ne200100]<0>(a2, v4);
    return;
  }

  v5 = [fDefaults stringForKey:@"NvStoreFile"];
  std::string::basic_string[abi:ne200100]<0>(a2, [v5 UTF8String]);
}

void GpsdPreferences::storeLongTermPredictionsFile(void *a1@<X8>)
{
  v2 = [fDefaults stringForKey:@"LongTermPredictionsFile"];
  std::string::basic_string[abi:ne200100]<0>(a1, [v2 UTF8String]);
}

void GpsdPreferences::storeShortTermPredictionsFile(void *a1@<X8>)
{
  v2 = [fDefaults stringForKey:@"ShortTermPredictionsFile"];
  std::string::basic_string[abi:ne200100]<0>(a1, [v2 UTF8String]);
}

void GpsdPreferences::storeRTIFile(void *a1@<X8>)
{
  v2 = [fDefaults stringForKey:@"RTIFile"];
  std::string::basic_string[abi:ne200100]<0>(a1, [v2 UTF8String]);
}

void GpsdPreferences::storeRavenOrbitFile(void *a1@<X8>)
{
  v2 = [fDefaults stringForKey:@"RavenOrbitFile"];
  std::string::basic_string[abi:ne200100]<0>(a1, [v2 UTF8String]);
}

void GpsdPreferences::recoveryTestCase(GpsdPreferences *this)
{
  v11 = *MEMORY[0x277D85DE8];
  v1 = GpsdLogObjectGeneral;
  if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_2454AA000, v1, OS_LOG_TYPE_ERROR, "Checking recoveryTestCase value is not permitted unless GPSD_DEBUGONLY_PERMIT_TEST_CASES is defined", buf, 2u);
    v1 = GpsdLogObjectGeneral;
  }

  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    *buf = 136446722;
    v6 = "/Library/Caches/com.apple.xbs/Sources/CoreGPS/Sources/Util/GpsdPreferences.mm";
    v7 = 1026;
    v8 = 685;
    v9 = 2082;
    v10 = "recoveryTestCase";
    _os_log_error_impl(&dword_2454AA000, v1, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: assertion failure in %{public}s", buf, 0x1Cu);
  }

  std::string::basic_string[abi:ne200100]<0>(&v4, "assert");
  std::string::basic_string[abi:ne200100]<0>(&v3, "recoveryTestCase");
  std::string::basic_string[abi:ne200100]<0>(&v2, "Checking recoveryTestCase value is not permitted unless GPSD_DEBUGONLY_PERMIT_TEST_CASES is defined");
  gpsd::util::triggerDiagnosticReport(&v4, &v3, &v2);
  std::string::~string(&v2);
  std::string::~string(&v3);
  std::string::~string(&v4);
  __assert_rtn("recoveryTestCase", "GpsdPreferences.mm", 685, "false && Checking recoveryTestCase value is not permitted unless GPSD_DEBUGONLY_PERMIT_TEST_CASES is defined");
}

void sub_24557296C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  _Unwind_Resume(exception_object);
}

uint64_t GpsdPreferences::enableConstellationsBitfield(GpsdPreferences *this)
{
  v1 = [fDefaults BOOLForKey:@"EnableGps"];
  if ([fDefaults BOOLForKey:@"EnableQzss"])
  {
    v2 = 16;
  }

  else
  {
    v2 = 0;
  }

  v3 = v2 | v1;
  if ([fDefaults BOOLForKey:@"EnableGlonass"])
  {
    v4 = 2;
  }

  else
  {
    v4 = 0;
  }

  if ([fDefaults BOOLForKey:@"EnableGalileo"])
  {
    v5 = 8;
  }

  else
  {
    v5 = 0;
  }

  v6 = v3 | v4 | v5;
  if ([fDefaults BOOLForKey:@"EnableBeidou"])
  {
    v7 = 4;
  }

  else
  {
    v7 = 0;
  }

  if ([fDefaults BOOLForKey:@"EnableNavic"])
  {
    v8 = 32;
  }

  else
  {
    v8 = 0;
  }

  return v6 | v7 | v8;
}

unint64_t GpsdPreferences::determineLibindusFinalCoExConfig(GpsdPreferences *this, uint64_t a2, int a3)
{
  v27 = *MEMORY[0x277D85DE8];
  v5 = GpsdPlatformInfo::instance(0);
  LibindusPlatformCo = GpsdPlatformInfo::getLibindusPlatformCoExConfigDefault(v5);
  v7 = LibindusPlatformCo;
  if (a3)
  {
    v8 = a2;
  }

  else
  {
    v8 = LibindusPlatformCo;
  }

  v9 = [fDefaults objectForKey:@"CREnableCoexBlanking2G"];

  if (v9)
  {
    if ([fDefaults BOOLForKey:@"CREnableCoexBlanking2G"])
    {
      v8 |= 1uLL;
    }

    else
    {
      v8 &= ~1uLL;
    }
  }

  v10 = [fDefaults objectForKey:@"CREnableCoexBlankingNR"];

  if (v10)
  {
    if ([fDefaults BOOLForKey:@"CREnableCoexBlankingNR"])
    {
      v8 |= 2uLL;
    }

    else
    {
      v8 &= ~2uLL;
    }
  }

  v11 = [fDefaults objectForKey:@"CREnableCoexLTEB13"];

  if (v11)
  {
    if ([fDefaults BOOLForKey:@"CREnableCoexLTEB13"])
    {
      v8 |= 4uLL;
    }

    else
    {
      v8 &= ~4uLL;
    }
  }

  v12 = [fDefaults objectForKey:@"CREnableCoexLTEB14"];

  if (v12)
  {
    if ([fDefaults BOOLForKey:@"CREnableCoexLTEB14"])
    {
      v8 |= 8uLL;
    }

    else
    {
      v8 &= ~8uLL;
    }
  }

  v13 = [fDefaults objectForKey:@"CREnableCoexEnhancedAssistance"];

  if (v13)
  {
    if ([fDefaults BOOLForKey:@"CREnableCoexEnhancedAssistance"])
    {
      v8 |= 0x10uLL;
    }

    else
    {
      v8 &= ~0x10uLL;
    }
  }

  v14 = [fDefaults objectForKey:@"CREnableSTWMitigation"];

  if (v14 && ![fDefaults BOOLForKey:@"CREnableSTWMitigation"])
  {
    v15 = v8 & 0xFFFFFFFFFFFFFFDFLL;
  }

  else
  {
    v15 = v8 | 0x20;
  }

  v16 = GpsdLogObjectGeneral;
  if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_INFO))
  {
    v17 = "No";
    v19 = 134349826;
    v20 = v15;
    v21 = 2050;
    if (a3)
    {
      v17 = "Yes";
    }

    v22 = v7;
    v23 = 2082;
    v24 = v17;
    v25 = 2050;
    v26 = a2;
    _os_log_impl(&dword_2454AA000, v16, OS_LOG_TYPE_INFO, "#gdm,decodeCoexConfig,coexConfigPostOverride,0x%{public}llx,coexConfigDefault,0x%{public}llx,isCLOverride,%{public}s,coexConfigCLOverride,0x%{public}llx", &v19, 0x2Au);
  }

  return v15;
}

unint64_t GpsdPreferences::libolafCoexFlagsBitfield(GpsdPreferences *this)
{
  v47 = *MEMORY[0x277D85DE8];
  v1 = [fDefaults BOOLForKey:@"EnableCoexBitEnhancedFreqAsst"];
  v23 = [fDefaults BOOLForKey:@"EnableCoexBitCdmaFineTimeAsst"];
  v24 = [fDefaults BOOLForKey:@"EnableCoexBitBlankingGpsL1"];
  v2 = [fDefaults BOOLForKey:@"EnableCoexBitBlankingGloL1"];
  v3 = [fDefaults BOOLForKey:@"EnableCoexBitBlankingBdsB1I"];
  v4 = [fDefaults BOOLForKey:@"EnableCoexBitStaticSpur"];
  v5 = [fDefaults BOOLForKey:@"EnableCoexBitDynamicNotch"];
  v6 = [fDefaults BOOLForKey:@"EnableCoexBitJammer"];
  v7 = [fDefaults integerForKey:@"CoexForceGpsL1Filter"];
  v8 = [fDefaults integerForKey:@"CoexForceGloL1Filter"];
  v9 = [fDefaults integerForKey:@"CoexForceB1IFilter"];
  v10 = GpsdLogObjectGeneral;
  if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_INFO))
  {
    *buf = 67242752;
    v26 = v1;
    v27 = 1026;
    v28 = v23;
    v29 = 1026;
    v30 = v24;
    v31 = 1026;
    v32 = v2;
    v33 = 1026;
    v34 = v3;
    v35 = 1026;
    v36 = v7;
    v37 = 1026;
    v38 = v8;
    v39 = 1026;
    v40 = v9;
    v41 = 1026;
    v42 = v4;
    v43 = 1026;
    v44 = v5;
    v45 = 1026;
    v46 = v6;
    _os_log_impl(&dword_2454AA000, v10, OS_LOG_TYPE_INFO, "#coex,eFA,%{public}d,FTA,%{public}d,blankingGPS/GLO/B1I,%{public}d,%{public}d,%{public}d,forceFilterGPS/GLO/B1I,%{public}d,%{public}d,%{public}d,enableSpurStatic,%{public}d,enableSpurDynamic,%{public}d,enableJammer,%{public}d", buf, 0x44u);
  }

  if ((v7 - 1) > 3)
  {
    v11 = 30720;
  }

  else
  {
    v11 = qword_2455859E8[v7 - 1];
  }

  if ((v9 - 1) > 2)
  {
    v12 = 917504;
  }

  else
  {
    v12 = qword_245585A08[v9 - 1];
  }

  v13 = 98304;
  if (v8 == 2)
  {
    v13 = 0x10000;
  }

  if (v8 == 1)
  {
    v13 = 0x8000;
  }

  v14 = 0x100000;
  if (!(v7 | v8))
  {
    v14 = (v9 != 0) << 20;
  }

  v15 = 4;
  if (!v1)
  {
    v15 = 0;
  }

  v16 = 8;
  if (!v4)
  {
    v16 = 0;
  }

  v17 = 16;
  if (!v5)
  {
    v17 = 0;
  }

  v18 = 32;
  if (!v6)
  {
    v18 = 0;
  }

  v19 = 256;
  if (!v24)
  {
    v19 = 0;
  }

  v20 = 512;
  if (!v2)
  {
    v20 = 0;
  }

  v21 = 1024;
  if (!v3)
  {
    v21 = 0;
  }

  return v15 | v23 | v19 | v20 | v21 | v16 | v17 | v18 | v13 | v14 | v11 | v12;
}

void GpsdPreferences::glonassPerFrequencyGroupDelayMeters(const void **a1@<X8>)
{
  v27 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  v2 = [fDefaults arrayForKey:@"GlonassPerFrequencyGroupDelayMeters"];
  v3 = v2;
  if (v2 && [v2 count] > 0xD)
  {
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v5 = v3;
    v6 = [v5 countByEnumeratingWithState:&v21 objects:v26 count:16];
    if (v6)
    {
      v7 = *v22;
      v8 = v3;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v22 != v7)
          {
            objc_enumerationMutation(v5);
          }

          [*(*(&v21 + 1) + 8 * i) doubleValue];
          v12 = a1[1];
          v11 = a1[2];
          if (v12 >= v11)
          {
            v14 = *a1;
            v15 = v12 - *a1;
            v16 = v15 >> 3;
            v17 = (v15 >> 3) + 1;
            if (v17 >> 61)
            {
              std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
            }

            v18 = v11 - v14;
            if (v18 >> 2 > v17)
            {
              v17 = v18 >> 2;
            }

            if (v18 >= 0x7FFFFFFFFFFFFFF8)
            {
              v19 = 0x1FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v19 = v17;
            }

            if (v19)
            {
              std::__allocate_at_least[abi:ne200100]<std::allocator<double>>(a1, v19);
            }

            *(8 * v16) = v10;
            v13 = (8 * v16 + 8);
            memcpy(0, v14, v15);
            v20 = *a1;
            *a1 = 0;
            a1[1] = v13;
            a1[2] = 0;
            if (v20)
            {
              operator delete(v20);
            }

            v3 = v8;
          }

          else
          {
            *v12 = v10;
            v13 = v12 + 8;
          }

          a1[1] = v13;
        }

        v6 = [v5 countByEnumeratingWithState:&v21 objects:v26 count:16];
      }

      while (v6);
    }
  }

  else
  {
    v4 = GpsdLogObjectGeneral;
    if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2454AA000, v4, OS_LOG_TYPE_ERROR, "Invalid glonassPerFrequencyGroupDelayMeters parameters", buf, 2u);
    }
  }
}

void sub_24557339C(_Unwind_Exception *a1)
{
  v5 = *v2;
  if (*v2)
  {
    *(v2 + 8) = v5;
    operator delete(v5);
  }

  _Unwind_Resume(a1);
}

uint64_t GpsdPreferences::debugFeaturesBitmask(GpsdPreferences *this)
{
  v6 = *MEMORY[0x277D85DE8];
  v1 = [fDefaults integerForKey:@"DebugFeaturesBitmask"];
  v2 = GpsdLogObjectGeneral;
  if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 134349056;
    v5 = v1;
    _os_log_impl(&dword_2454AA000, v2, OS_LOG_TYPE_DEFAULT, "debugFeaturesBitmask,0x%{public}llx", &v4, 0xCu);
  }

  return v1;
}

void GpsdPreferences::debugSettingsString(void *a1@<X8>)
{
  v2 = [fDefaults stringForKey:@"DebugSettingsString"];
  std::string::basic_string[abi:ne200100]<0>(a1, [v2 UTF8String]);
}

uint64_t GpsdPreferences::platformSpecificFeaturesBitmask(GpsdPreferences *this)
{
  if (*(GpsdPlatformInfo::instance(0) + 8) == 107)
  {
    v1 = [fDefaults BOOLForKey:@"EnableCoexL5NotchFilter"];
    if ([fDefaults BOOLForKey:@"HasXtalFreqJumpRisk"])
    {
      return v1 | 2;
    }

    else
    {
      return v1;
    }
  }

  else if ((*(GpsdPlatformInfo::instance(0) + 8) - 301) > 1)
  {
    return 0;
  }

  else
  {
    return [fDefaults BOOLForKey:@"EnableReceivingFTA"];
  }
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<double>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t GpsdPlatformInfoHardware::detectHardware(GpsdPlatformInfoHardware *this)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = xmmword_245585A28;
  v4 = 710807826;
  if (MGIsDeviceOfType())
  {
    return 10401;
  }

  v4 = 470738981;
  v3 = xmmword_245585A3C;
  if (MGIsDeviceOfType())
  {
    return 10401;
  }

  v4 = -2085056298;
  v3 = xmmword_245585A50;
  if (MGIsDeviceOfType())
  {
    return 10403;
  }

  v4 = 1860682089;
  v3 = xmmword_245585A64;
  if (MGIsDeviceOfType())
  {
    return 10403;
  }

  v4 = -338255497;
  v3 = xmmword_245585A78;
  if (MGIsDeviceOfType())
  {
    return 10509;
  }

  v4 = 152704997;
  v3 = xmmword_245585A8C;
  if (MGIsDeviceOfType())
  {
    return 10509;
  }

  v4 = 283967174;
  v3 = xmmword_245585AA0;
  if (MGIsDeviceOfType())
  {
    return 10511;
  }

  v4 = -1040127899;
  v3 = xmmword_245585AB4;
  if (MGIsDeviceOfType())
  {
    return 10511;
  }

  v4 = -1742178852;
  v3 = xmmword_245585AC8;
  if (MGIsDeviceOfType())
  {
    return 10501;
  }

  v4 = 2146530832;
  v3 = xmmword_245585ADC;
  if (MGIsDeviceOfType())
  {
    return 10501;
  }

  v4 = 1330813729;
  v3 = xmmword_245585AF0;
  if (MGIsDeviceOfType())
  {
    return 10503;
  }

  v4 = 617174804;
  v3 = xmmword_245585B04;
  if (MGIsDeviceOfType())
  {
    return 10503;
  }

  v4 = -871113647;
  v3 = xmmword_245585B18;
  if (MGIsDeviceOfType())
  {
    return 10601;
  }

  v4 = 1530707451;
  v3 = xmmword_245585B2C;
  if (MGIsDeviceOfType())
  {
    return 10601;
  }

  v4 = 1472775220;
  v3 = xmmword_245585B40;
  if (MGIsDeviceOfType())
  {
    return 10603;
  }

  v4 = 483476120;
  v3 = xmmword_245585B54;
  if (MGIsDeviceOfType())
  {
    return 10603;
  }

  v4 = 282158961;
  v3 = xmmword_245585B68;
  if (MGIsDeviceOfType())
  {
    return 10606;
  }

  v4 = 56502976;
  v3 = xmmword_245585B7C;
  if (MGIsDeviceOfType())
  {
    return 10606;
  }

  v4 = -961843768;
  v3 = xmmword_245585B90;
  if (MGIsDeviceOfType())
  {
    return 10608;
  }

  v4 = 1282132887;
  v3 = xmmword_245585BA4;
  if (MGIsDeviceOfType())
  {
    return 10608;
  }

  v4 = -441172408;
  v3 = xmmword_245585BB8;
  if (MGIsDeviceOfType())
  {
    return 10610;
  }

  v4 = 1326690998;
  v3 = xmmword_245585BCC;
  if (MGIsDeviceOfType())
  {
    return 10610;
  }

  v4 = 1756484512;
  v3 = xmmword_245585BE0;
  if (MGIsDeviceOfType())
  {
    return 10612;
  }

  v4 = -126099363;
  v3 = xmmword_245585BF4;
  if (MGIsDeviceOfType())
  {
    return 10612;
  }

  v4 = -1092155788;
  v3 = xmmword_245585C08;
  if (MGIsDeviceOfType())
  {
    return 10614;
  }

  v4 = 763775061;
  v3 = xmmword_245585C1C;
  if (MGIsDeviceOfType())
  {
    return 10614;
  }

  v4 = -63049871;
  v3 = xmmword_245585C30;
  if (MGIsDeviceOfType())
  {
    return 10616;
  }

  v4 = -557458837;
  v3 = xmmword_245585C44;
  if (MGIsDeviceOfType())
  {
    return 10616;
  }

  v4 = 1730000236;
  v3 = xmmword_245585C58;
  if (MGIsDeviceOfType())
  {
    return 10618;
  }

  v4 = 1530338216;
  v3 = xmmword_245585C6C;
  if (MGIsDeviceOfType())
  {
    return 10701;
  }

  v4 = 406601745;
  v3 = xmmword_245585C80;
  if (MGIsDeviceOfType())
  {
    return 10701;
  }

  v4 = 1654218604;
  v3 = xmmword_245585C94;
  if (MGIsDeviceOfType())
  {
    return 10703;
  }

  v4 = -1930811061;
  v3 = xmmword_245585CA8;
  if (MGIsDeviceOfType())
  {
    return 10703;
  }

  v4 = -182498503;
  v3 = xmmword_245585CBC;
  if (MGIsDeviceOfType())
  {
    return 10705;
  }

  v4 = 841005628;
  v3 = xmmword_245585CD0;
  if (MGIsDeviceOfType())
  {
    return 10708;
  }

  v4 = -2030489149;
  v3 = xmmword_245585CE4;
  if (MGIsDeviceOfType())
  {
    return 10708;
  }

  v4 = 1219348060;
  v3 = xmmword_245585CF8;
  if (MGIsDeviceOfType())
  {
    return 10710;
  }

  v4 = 223445260;
  v3 = xmmword_245585D0C;
  if (MGIsDeviceOfType())
  {
    return 10710;
  }

  v4 = -1921398171;
  v3 = xmmword_245585D20;
  if (MGIsDeviceOfType())
  {
    return 10717;
  }

  v4 = 373548423;
  v3 = xmmword_245585D34;
  if (MGIsDeviceOfType())
  {
    return 10717;
  }

  v4 = -936391310;
  v3 = xmmword_245585D48;
  if (MGIsDeviceOfType())
  {
    return 10719;
  }

  v4 = 2140507472;
  v3 = xmmword_245585D5C;
  if (MGIsDeviceOfType())
  {
    return 10719;
  }

  v4 = -1384522500;
  v3 = xmmword_245585D70;
  if (MGIsDeviceOfType())
  {
    return 10712;
  }

  v4 = 1815762806;
  v3 = xmmword_245585D84;
  if (MGIsDeviceOfType())
  {
    return 10713;
  }

  v4 = -782763850;
  v3 = xmmword_245585D98;
  if (MGIsDeviceOfType())
  {
    return 10713;
  }

  v4 = -652049476;
  v3 = xmmword_245585DAC;
  if (MGIsDeviceOfType())
  {
    return 10715;
  }

  v4 = -1897771119;
  v3 = xmmword_245585DC0;
  if (MGIsDeviceOfType())
  {
    return 10715;
  }

  v4 = -232427879;
  v3 = xmmword_245585DD4;
  if (MGIsDeviceOfType())
  {
    return 21102;
  }

  v4 = -427474227;
  v3 = xmmword_245585DE8;
  if (MGIsDeviceOfType())
  {
    return 21106;
  }

  v4 = 1477534141;
  v3 = xmmword_245585DFC;
  if (MGIsDeviceOfType())
  {
    return 21106;
  }

  v4 = -1843102369;
  v3 = xmmword_245585E10;
  if (MGIsDeviceOfType())
  {
    return 21108;
  }

  v4 = -61007701;
  v3 = xmmword_245585E24;
  if (MGIsDeviceOfType())
  {
    return 21203;
  }

  v4 = -235416490;
  v3 = xmmword_245585E38;
  if (MGIsDeviceOfType())
  {
    return 21205;
  }

  v4 = -820493242;
  v3 = xmmword_245585E4C;
  if (MGIsDeviceOfType())
  {
    return 21201;
  }

  v4 = -121925081;
  v3 = xmmword_245585E60;
  if (MGIsDeviceOfType())
  {
    return 21210;
  }

  v4 = -1820426635;
  v3 = xmmword_245585E74;
  if (MGIsDeviceOfType())
  {
    return 21502;
  }

  v4 = -937652876;
  v3 = xmmword_245585E88;
  if (MGIsDeviceOfType())
  {
    return 21503;
  }

  v4 = 169342588;
  v3 = xmmword_245585E9C;
  if (MGIsDeviceOfType())
  {
    return 21705;
  }

  v4 = 1874287171;
  v3 = xmmword_245585EB0;
  if (MGIsDeviceOfType())
  {
    return 21603;
  }

  v4 = -781324731;
  v3 = xmmword_245585EC4;
  if (MGIsDeviceOfType())
  {
    return 21602;
  }

  v4 = 431774303;
  v3 = xmmword_245585ED8;
  if (MGIsDeviceOfType())
  {
    return 21603;
  }

  v4 = 1214880059;
  v3 = xmmword_245585EEC;
  if (MGIsDeviceOfType())
  {
    return 21701;
  }

  v4 = 426359977;
  v3 = xmmword_245585F00;
  if (MGIsDeviceOfType())
  {
    return 21702;
  }

  v4 = -1354433901;
  v3 = xmmword_245585F14;
  if (MGIsDeviceOfType())
  {
    return 21801;
  }

  v4 = 1021543808;
  v3 = xmmword_245585F28;
  if (MGIsDeviceOfType())
  {
    return 21802;
  }

  v4 = 1459208360;
  v3 = xmmword_245585F3C;
  if (MGIsDeviceOfType())
  {
    return 21804;
  }

  v4 = -1841712216;
  v3 = xmmword_245585F50;
  if (MGIsDeviceOfType())
  {
    return 31102;
  }

  v4 = 213746202;
  v3 = xmmword_245585F64;
  if (MGIsDeviceOfType())
  {
    return 31104;
  }

  v4 = 300442574;
  v3 = xmmword_245585F78;
  if (MGIsDeviceOfType())
  {
    return 30808;
  }

  v4 = 440949464;
  v3 = xmmword_245585F8C;
  if (MGIsDeviceOfType())
  {
    return 31302;
  }

  v4 = -762483149;
  v3 = xmmword_245585FA0;
  if (MGIsDeviceOfType())
  {
    return 30804;
  }

  v4 = -1294188889;
  v3 = xmmword_245585FB4;
  if (MGIsDeviceOfType())
  {
    return 30808;
  }

  v4 = -1926937532;
  v3 = xmmword_245585FC8;
  if (MGIsDeviceOfType())
  {
    return 30804;
  }

  v4 = -2132668294;
  v3 = xmmword_245585FDC;
  if (MGIsDeviceOfType())
  {
    return 30712;
  }

  v4 = -858079590;
  v3 = xmmword_245585FF0;
  if (MGIsDeviceOfType())
  {
    return 31107;
  }

  v4 = -1675932945;
  v3 = xmmword_245586004;
  if (MGIsDeviceOfType())
  {
    return 30812;
  }

  v4 = 300130091;
  v3 = xmmword_245586018;
  if (MGIsDeviceOfType())
  {
    return 30810;
  }

  v4 = 646100384;
  v3 = xmmword_24558602C;
  if (MGIsDeviceOfType())
  {
    return 31202;
  }

  v4 = -2071977621;
  v3 = xmmword_245586040;
  if (MGIsDeviceOfType())
  {
    return 31702;
  }

  v4 = -1597604211;
  v3 = xmmword_245586054;
  if (MGIsDeviceOfType())
  {
    return 31704;
  }

  v2 = GpsdLogObjectGeneral;
  result = os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_ERROR);
  if (result)
  {
    LODWORD(v3) = 67109120;
    DWORD1(v3) = MGGetProductType();
    _os_log_error_impl(&dword_2454AA000, v2, OS_LOG_TYPE_ERROR, "GpsdPlatformInfo,Unknown or unsupported hardware,%x", &v3, 8u);
    return 0;
  }

  return result;
}

uint64_t GpsdHardwareConfig::GpsdHardwareConfig(uint64_t a1, int a2)
{
  v12 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  if (a2 > 21200)
  {
    if (a2 <= 30711)
    {
      if (a2 <= 21700)
      {
        if ((a2 - 21201) <= 9 && ((1 << (a2 + 47)) & 0x215) != 0)
        {
          goto LABEL_45;
        }

        if ((a2 - 21502) < 2)
        {
          *(a1 + 16) = 1;
          v8 = 0x401799999999999ALL;
LABEL_66:
          *(a1 + 8) = v8;
          goto LABEL_67;
        }

        if ((a2 - 21602) >= 2)
        {
          return a1;
        }

LABEL_49:
        *(a1 + 16) = 1;
        *(a1 + 8) = 0x401799999999999ALL;
        *(a1 + 32) = 1;
        *(a1 + 24) = 0x4039000000000000;
        goto LABEL_67;
      }

      if (a2 > 21800)
      {
        if ((a2 - 21801) < 2)
        {
          goto LABEL_49;
        }

        if ((a2 - 21804) >= 2)
        {
          return a1;
        }
      }

      else
      {
        if ((a2 - 21701) < 2)
        {
          goto LABEL_49;
        }

        if (a2 != 21705)
        {
          if (a2 != 21706)
          {
            return a1;
          }

          *(a1 + 16) = 1;
          *(a1 + 8) = 0;
          v5 = 302;
LABEL_72:
          *a1 = v5;
          return a1;
        }
      }

LABEL_60:
      *(a1 + 16) = 1;
      *(a1 + 8) = 0;
      v5 = 301;
      goto LABEL_72;
    }

    if (a2 <= 31201)
    {
      if (a2 <= 30809)
      {
        if (a2 != 30712 && a2 != 30804 && a2 != 30808)
        {
          return a1;
        }

        goto LABEL_56;
      }

      if ((a2 - 31102) <= 5 && ((1 << (a2 - 126)) & 0x25) != 0)
      {
LABEL_56:
        v5 = 201;
        goto LABEL_72;
      }

      if (a2 != 30810 && a2 != 30812)
      {
        return a1;
      }

LABEL_45:
      v5 = 202;
      goto LABEL_72;
    }

    if (a2 <= 31610)
    {
      if (a2 == 31202)
      {
        goto LABEL_56;
      }

      if (a2 == 31302)
      {
        goto LABEL_45;
      }

      v6 = 31609;
    }

    else if (a2 > 31703)
    {
      if (a2 == 31704)
      {
        goto LABEL_60;
      }

      v6 = 31802;
    }

    else
    {
      if (a2 == 31611)
      {
        goto LABEL_60;
      }

      v6 = 31702;
    }

    if (a2 != v6)
    {
      return a1;
    }

    goto LABEL_60;
  }

  if (a2 > 10700)
  {
    if ((a2 - 10701) <= 0x12)
    {
      v3 = 1 << (a2 + 51);
      if ((v3 & 0x552E5) != 0)
      {
        goto LABEL_67;
      }

      if ((v3 & 0x810) != 0)
      {
LABEL_65:
        *(a1 + 16) = 1;
        v8 = 0x3FF3333333333333;
        goto LABEL_66;
      }
    }

    if ((a2 - 21102) > 6 || ((1 << (a2 - 110)) & 0x51) == 0)
    {
      return a1;
    }

    goto LABEL_56;
  }

  if (a2 > 10600)
  {
    v4 = a2 - 110;
    if ((a2 - 10606) > 0xC)
    {
      goto LABEL_68;
    }

    if (((1 << v4) & 0x550) == 0)
    {
      if (((1 << v4) & 5) != 0)
      {
        v5 = 106;
        goto LABEL_72;
      }

      if (a2 == 10618)
      {
        goto LABEL_65;
      }

LABEL_68:
      if (a2 != 10601)
      {
        v7 = 10603;
LABEL_70:
        if (a2 != v7)
        {
          return a1;
        }
      }

LABEL_71:
      v5 = 103;
      goto LABEL_72;
    }

LABEL_67:
    v5 = 107;
    goto LABEL_72;
  }

  if (a2 > 10500)
  {
    if ((a2 - 10501) > 0xA || ((1 << (a2 - 5)) & 0x505) == 0)
    {
      return a1;
    }

    goto LABEL_71;
  }

  if (a2)
  {
    if (a2 != 10401)
    {
      v7 = 10403;
      goto LABEL_70;
    }

    goto LABEL_71;
  }

  v9 = GpsdLogObjectGeneral;
  if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_ERROR))
  {
    v11[0] = 67240192;
    v11[1] = 0;
    _os_log_error_impl(&dword_2454AA000, v9, OS_LOG_TYPE_ERROR, "GpsdPlatformInfo,device,%{public}d,unknown/unsupported", v11, 8u);
  }

  return a1;
}