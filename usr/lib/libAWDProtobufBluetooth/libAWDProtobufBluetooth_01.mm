void sub_29634FC04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::metrics::BluetoothA2DPAudioStart::~BluetoothA2DPAudioStart(awd::metrics::BluetoothA2DPAudioStart *this)
{
  *this = &unk_2A1D4A3B0;
  awd::metrics::BluetoothA2DPAudioStart::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2A1D4A3B0;
  awd::metrics::BluetoothA2DPAudioStart::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2A1D4A3B0;
  awd::metrics::BluetoothA2DPAudioStart::SharedDtor(this);
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  JUMPOUT(0x29C259F00);
}

uint64_t awd::metrics::BluetoothA2DPAudioStart::SharedDtor(uint64_t this)
{
  v1 = this;
  v2 = *(this + 16);
  v3 = MEMORY[0x29EDC9758];
  if (v2 != MEMORY[0x29EDC9758] && v2 != 0)
  {
    if (*(v2 + 23) < 0)
    {
      operator delete(*v2);
    }

    this = MEMORY[0x29C259F00](v2, 0x1012C40EC159624);
  }

  v5 = *(v1 + 32);
  if (v5 != v3 && v5 != 0)
  {
    if (*(v5 + 23) < 0)
    {
      operator delete(*v5);
    }

    this = MEMORY[0x29C259F00](v5, 0x1012C40EC159624);
  }

  v7 = *(v1 + 40);
  if (v7 != v3 && v7 != 0)
  {
    if (*(v7 + 23) < 0)
    {
      operator delete(*v7);
    }

    JUMPOUT(0x29C259F00);
  }

  return this;
}

uint64_t awd::metrics::BluetoothA2DPAudioStart::default_instance(awd::metrics::BluetoothA2DPAudioStart *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = awd::metrics::BluetoothA2DPAudioStart::default_instance_;
  if (!awd::metrics::BluetoothA2DPAudioStart::default_instance_)
  {
    awd::metrics::protobuf_AddDesc_Bluetooth_2eproto(0, a2, a3, a4);
    return awd::metrics::BluetoothA2DPAudioStart::default_instance_;
  }

  return result;
}

uint64_t awd::metrics::BluetoothA2DPAudioStart::Clear(uint64_t this)
{
  v1 = *(this + 56);
  if (v1)
  {
    *(this + 8) = 0;
    v2 = MEMORY[0x29EDC9758];
    if ((v1 & 2) != 0)
    {
      v3 = *(this + 16);
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

    *(this + 24) = 0;
    *(this + 28) = 0;
    *(this + 48) = 0;
    if ((*(this + 56) & 0x20) != 0)
    {
      v4 = *(this + 32);
      if (v4 != v2)
      {
        if (*(v4 + 23) < 0)
        {
          **v4 = 0;
          *(v4 + 8) = 0;
        }

        else
        {
          *v4 = 0;
          *(v4 + 23) = 0;
        }
      }
    }

    if ((*(this + 56) & 0x40) != 0)
    {
      v5 = *(this + 40);
      if (v5 != v2)
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
  }

  *(this + 56) = 0;
  return this;
}

uint64_t awd::metrics::BluetoothA2DPAudioStart::MergePartialFromCodedStream(awd::metrics::BluetoothA2DPAudioStart *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
{
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
          if (TagFallback >> 3 > 3)
          {
            break;
          }

          if (v8 == 1)
          {
            if ((TagFallback & 7) != 0)
            {
              goto LABEL_31;
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

            v19 = *(this + 14) | 1;
            *(this + 14) = v19;
            if (v16 < v13 && *v16 == 18)
            {
              *(a2 + 1) = v16 + 1;
              goto LABEL_40;
            }
          }

          else
          {
            if (v8 != 2)
            {
              if (v8 != 3 || (TagFallback & 7) != 0)
              {
                goto LABEL_31;
              }

              v12 = *(a2 + 1);
              v10 = *(a2 + 2);
              goto LABEL_46;
            }

            if (v9 != 2)
            {
              goto LABEL_31;
            }

            v19 = *(this + 14);
LABEL_40:
            *(this + 14) = v19 | 2;
            if (*(this + 2) == v5)
            {
              operator new();
            }

            result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadBytes();
            if (!result)
            {
              return result;
            }

            v20 = *(a2 + 1);
            v10 = *(a2 + 2);
            if (v20 < v10 && *v20 == 24)
            {
              v12 = v20 + 1;
              *(a2 + 1) = v12;
LABEL_46:
              if (v12 >= v10 || (v21 = *v12, v21 < 0))
              {
                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 6);
                if (!result)
                {
                  return result;
                }

                v22 = *(a2 + 1);
                v10 = *(a2 + 2);
              }

              else
              {
                *(this + 6) = v21;
                v22 = v12 + 1;
                *(a2 + 1) = v22;
              }

              *(this + 14) |= 4u;
              if (v22 < v10 && *v22 == 32)
              {
                v17 = v22 + 1;
                *(a2 + 1) = v17;
                goto LABEL_54;
              }
            }
          }
        }

        if (TagFallback >> 3 <= 0xFF)
        {
          break;
        }

        if (v8 != 256)
        {
          if (v8 == 257 && v9 == 2)
          {
            goto LABEL_78;
          }

          goto LABEL_31;
        }

        if (v9 != 2)
        {
          goto LABEL_31;
        }

        v18 = *(this + 14);
LABEL_71:
        *(this + 14) = v18 | 0x20;
        if (*(this + 4) == v5)
        {
          operator new();
        }

        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadBytes();
        if (!result)
        {
          return result;
        }

        v27 = *(a2 + 1);
        if (*(a2 + 4) - v27 >= 2 && *v27 == 138 && v27[1] == 16)
        {
          *(a2 + 1) = v27 + 2;
LABEL_78:
          *(this + 14) |= 0x40u;
          if (*(this + 5) == v5)
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

      if (v8 != 4)
      {
        break;
      }

      if ((TagFallback & 7) != 0)
      {
        goto LABEL_31;
      }

      v17 = *(a2 + 1);
      v10 = *(a2 + 2);
LABEL_54:
      v29 = 0;
      if (v17 >= v10 || (v23 = *v17, (v23 & 0x80000000) != 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v29);
        if (!result)
        {
          return result;
        }

        v23 = v29;
        v24 = *(a2 + 1);
        v10 = *(a2 + 2);
      }

      else
      {
        v24 = v17 + 1;
        *(a2 + 1) = v24;
      }

      *(this + 28) = v23 != 0;
      *(this + 14) |= 8u;
      if (v24 < v10 && *v24 == 40)
      {
        v11 = v24 + 1;
        *(a2 + 1) = v11;
LABEL_62:
        if (v11 >= v10 || (v25 = *v11, v25 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 12);
          if (!result)
          {
            return result;
          }

          v26 = *(a2 + 1);
          v10 = *(a2 + 2);
        }

        else
        {
          *(this + 12) = v25;
          v26 = (v11 + 1);
          *(a2 + 1) = v26;
        }

        v18 = *(this + 14) | 0x10;
        *(this + 14) = v18;
        if (v10 - v26 >= 2 && *v26 == 130 && v26[1] == 16)
        {
          *(a2 + 1) = v26 + 2;
          goto LABEL_71;
        }
      }
    }

    if (v8 == 5 && (TagFallback & 7) == 0)
    {
      v11 = *(a2 + 1);
      v10 = *(a2 + 2);
      goto LABEL_62;
    }

LABEL_31:
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

uint64_t awd::metrics::BluetoothA2DPAudioStart::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 56);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(1, *(this + 8), a2, a4);
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

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBytes();
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
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(3, *(v5 + 24), a2, a4);
  v6 = *(v5 + 56);
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_13;
  }

LABEL_12:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(4, *(v5 + 28), a2, a4);
  v6 = *(v5 + 56);
  if ((v6 & 0x10) == 0)
  {
LABEL_6:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_7;
    }

LABEL_14:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBytes();
    if ((*(v5 + 56) & 0x40) == 0)
    {
      return this;
    }

    goto LABEL_15;
  }

LABEL_13:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(5, *(v5 + 48), a2, a4);
  v6 = *(v5 + 56);
  if ((v6 & 0x20) != 0)
  {
    goto LABEL_14;
  }

LABEL_7:
  if ((v6 & 0x40) == 0)
  {
    return this;
  }

LABEL_15:

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
}

uint64_t awd::metrics::BluetoothA2DPAudioStart::ByteSize(awd::metrics::BluetoothA2DPAudioStart *this, unint64_t a2)
{
  v3 = *(this + 14);
  if (!v3)
  {
    v5 = 0;
    goto LABEL_47;
  }

  if (v3)
  {
    v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 1)) + 1;
    v3 = *(this + 14);
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
    v3 = *(this + 14);
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
    v12 = *(this + 6);
    if (v12 >= 0x80)
    {
      v13 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v12) + 1;
      v3 = *(this + 14);
    }

    else
    {
      v13 = 2;
    }

    v4 += v13;
  }

  v5 = ((v3 >> 2) & 2) + v4;
  if ((v3 & 0x10) != 0)
  {
    v14 = *(this + 12);
    if (v14 >= 0x80)
    {
      v15 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v14) + 1;
      v3 = *(this + 14);
    }

    else
    {
      v15 = 2;
    }

    v5 = (v15 + v5);
    if ((v3 & 0x20) == 0)
    {
LABEL_23:
      if ((v3 & 0x40) == 0)
      {
        goto LABEL_47;
      }

      goto LABEL_38;
    }
  }

  else if ((v3 & 0x20) == 0)
  {
    goto LABEL_23;
  }

  v16 = *(this + 4);
  v17 = *(v16 + 23);
  v18 = v17;
  v19 = *(v16 + 8);
  if ((v17 & 0x80u) == 0)
  {
    v20 = *(v16 + 23);
  }

  else
  {
    v20 = v19;
  }

  if (v20 >= 0x80)
  {
    v21 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v20);
    v17 = *(v16 + 23);
    v19 = *(v16 + 8);
    v3 = *(this + 14);
    v18 = *(v16 + 23);
  }

  else
  {
    v21 = 1;
  }

  if (v18 < 0)
  {
    v17 = v19;
  }

  v5 = (v5 + v21 + v17 + 2);
  if ((v3 & 0x40) != 0)
  {
LABEL_38:
    v22 = *(this + 5);
    v23 = *(v22 + 23);
    v24 = v23;
    v25 = *(v22 + 8);
    if ((v23 & 0x80u) == 0)
    {
      v26 = *(v22 + 23);
    }

    else
    {
      v26 = v25;
    }

    if (v26 >= 0x80)
    {
      v27 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v26);
      v23 = *(v22 + 23);
      v25 = *(v22 + 8);
      v24 = *(v22 + 23);
    }

    else
    {
      v27 = 1;
    }

    if (v24 < 0)
    {
      v23 = v25;
    }

    v5 = (v5 + v27 + v23 + 2);
  }

LABEL_47:
  *(this + 13) = v5;
  return v5;
}

void awd::metrics::BluetoothA2DPAudioStart::CheckTypeAndMergeFrom(awd::metrics::BluetoothA2DPAudioStart *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  {
    awd::metrics::BluetoothA2DPAudioStart::CheckTypeAndMergeFrom();
  }

  awd::metrics::BluetoothA2DPAudioStart::MergeFrom(this, lpsrc);
}

void awd::metrics::BluetoothA2DPAudioStart::CopyFrom(awd::metrics::BluetoothA2DPAudioStart *this, const awd::metrics::BluetoothA2DPAudioStart *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    awd::metrics::BluetoothA2DPAudioStart::MergeFrom(this, a2);
  }
}

uint64_t awd::metrics::BluetoothA2DPAudioStart::Swap(uint64_t this, awd::metrics::BluetoothA2DPAudioStart *a2)
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
    LODWORD(v2) = *(this + 48);
    *(this + 48) = *(a2 + 12);
    *(a2 + 12) = v2;
    v5 = *(this + 32);
    *(this + 32) = *(a2 + 4);
    *(a2 + 4) = v5;
    v6 = *(this + 40);
    *(this + 40) = *(a2 + 5);
    *(a2 + 5) = v6;
    LODWORD(v6) = *(this + 56);
    *(this + 56) = *(a2 + 14);
    *(a2 + 14) = v6;
    LODWORD(v6) = *(this + 52);
    *(this + 52) = *(a2 + 13);
    *(a2 + 13) = v6;
  }

  return this;
}

uint64_t awd::metrics::BluetoothA2DPAudioStop::SharedCtor(uint64_t this)
{
  *(this + 60) = 0;
  v1 = MEMORY[0x29EDC9758];
  *(this + 8) = 0;
  *(this + 16) = v1;
  *(this + 24) = 0;
  *(this + 28) = 0;
  *(this + 56) = 0;
  *(this + 32) = 0;
  *(this + 40) = v1;
  *(this + 48) = v1;
  return this;
}

awd::metrics::BluetoothA2DPAudioStop *awd::metrics::BluetoothA2DPAudioStop::BluetoothA2DPAudioStop(awd::metrics::BluetoothA2DPAudioStop *this, const awd::metrics::BluetoothA2DPAudioStop *a2)
{
  *this = &unk_2A1D4A428;
  *(this + 1) = 0;
  v3 = MEMORY[0x29EDC9758];
  *(this + 2) = MEMORY[0x29EDC9758];
  *(this + 6) = 0;
  *(this + 28) = 0;
  *(this + 4) = 0;
  *(this + 5) = v3;
  *(this + 6) = v3;
  *(this + 7) = 0;
  *(this + 16) = 0;
  awd::metrics::BluetoothA2DPAudioStop::MergeFrom(this, a2);
  return this;
}

void awd::metrics::BluetoothA2DPAudioStop::MergeFrom(awd::metrics::BluetoothA2DPAudioStop *this, const awd::metrics::BluetoothA2DPAudioStop *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v17);
  }

  LOBYTE(v4) = *(a2 + 64);
  if (!v4)
  {
    return;
  }

  if (*(a2 + 64))
  {
    v5 = *(a2 + 1);
    *(this + 16) |= 1u;
    *(this + 1) = v5;
    v4 = *(a2 + 16);
  }

  v6 = MEMORY[0x29EDC9758];
  if ((v4 & 2) != 0)
  {
    v7 = *(a2 + 2);
    *(this + 16) |= 2u;
    v8 = *(this + 2);
    if (v8 == v6)
    {
      operator new();
    }

    std::string::operator=(v8, v7);
    v4 = *(a2 + 16);
    if ((v4 & 4) == 0)
    {
LABEL_8:
      if ((v4 & 8) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_18;
    }
  }

  else if ((v4 & 4) == 0)
  {
    goto LABEL_8;
  }

  v9 = *(a2 + 6);
  *(this + 16) |= 4u;
  *(this + 6) = v9;
  v4 = *(a2 + 16);
  if ((v4 & 8) == 0)
  {
LABEL_9:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_19;
  }

LABEL_18:
  v10 = *(a2 + 28);
  *(this + 16) |= 8u;
  *(this + 28) = v10;
  v4 = *(a2 + 16);
  if ((v4 & 0x10) == 0)
  {
LABEL_10:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_11;
    }

LABEL_20:
    v12 = *(a2 + 4);
    *(this + 16) |= 0x20u;
    *(this + 4) = v12;
    v4 = *(a2 + 16);
    if ((v4 & 0x40) == 0)
    {
LABEL_12:
      if ((v4 & 0x80) == 0)
      {
        return;
      }

      goto LABEL_24;
    }

    goto LABEL_21;
  }

LABEL_19:
  v11 = *(a2 + 14);
  *(this + 16) |= 0x10u;
  *(this + 14) = v11;
  v4 = *(a2 + 16);
  if ((v4 & 0x20) != 0)
  {
    goto LABEL_20;
  }

LABEL_11:
  if ((v4 & 0x40) == 0)
  {
    goto LABEL_12;
  }

LABEL_21:
  v13 = *(a2 + 5);
  *(this + 16) |= 0x40u;
  v14 = *(this + 5);
  if (v14 == v6)
  {
    operator new();
  }

  std::string::operator=(v14, v13);
  if ((*(a2 + 16) & 0x80) != 0)
  {
LABEL_24:
    v15 = *(a2 + 6);
    *(this + 16) |= 0x80u;
    v16 = *(this + 6);
    if (v16 == v6)
    {
      operator new();
    }

    std::string::operator=(v16, v15);
  }
}

void sub_296350AF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::metrics::BluetoothA2DPAudioStop::~BluetoothA2DPAudioStop(awd::metrics::BluetoothA2DPAudioStop *this)
{
  *this = &unk_2A1D4A428;
  awd::metrics::BluetoothA2DPAudioStop::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2A1D4A428;
  awd::metrics::BluetoothA2DPAudioStop::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2A1D4A428;
  awd::metrics::BluetoothA2DPAudioStop::SharedDtor(this);
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  JUMPOUT(0x29C259F00);
}

uint64_t awd::metrics::BluetoothA2DPAudioStop::SharedDtor(uint64_t this)
{
  v1 = this;
  v2 = *(this + 16);
  v3 = MEMORY[0x29EDC9758];
  if (v2 != MEMORY[0x29EDC9758] && v2 != 0)
  {
    if (*(v2 + 23) < 0)
    {
      operator delete(*v2);
    }

    this = MEMORY[0x29C259F00](v2, 0x1012C40EC159624);
  }

  v5 = *(v1 + 40);
  if (v5 != v3 && v5 != 0)
  {
    if (*(v5 + 23) < 0)
    {
      operator delete(*v5);
    }

    this = MEMORY[0x29C259F00](v5, 0x1012C40EC159624);
  }

  v7 = *(v1 + 48);
  if (v7 != v3 && v7 != 0)
  {
    if (*(v7 + 23) < 0)
    {
      operator delete(*v7);
    }

    JUMPOUT(0x29C259F00);
  }

  return this;
}

uint64_t awd::metrics::BluetoothA2DPAudioStop::default_instance(awd::metrics::BluetoothA2DPAudioStop *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = awd::metrics::BluetoothA2DPAudioStop::default_instance_;
  if (!awd::metrics::BluetoothA2DPAudioStop::default_instance_)
  {
    awd::metrics::protobuf_AddDesc_Bluetooth_2eproto(0, a2, a3, a4);
    return awd::metrics::BluetoothA2DPAudioStop::default_instance_;
  }

  return result;
}

uint64_t awd::metrics::BluetoothA2DPAudioStop::Clear(uint64_t this)
{
  v1 = *(this + 64);
  if (v1)
  {
    *(this + 8) = 0;
    v2 = MEMORY[0x29EDC9758];
    if ((v1 & 2) != 0)
    {
      v3 = *(this + 16);
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

    *(this + 24) = 0;
    *(this + 28) = 0;
    *(this + 56) = 0;
    *(this + 32) = 0;
    if ((*(this + 64) & 0x40) != 0)
    {
      v4 = *(this + 40);
      if (v4 != v2)
      {
        if (*(v4 + 23) < 0)
        {
          **v4 = 0;
          *(v4 + 8) = 0;
        }

        else
        {
          *v4 = 0;
          *(v4 + 23) = 0;
        }
      }
    }

    if ((*(this + 64) & 0x80) != 0)
    {
      v5 = *(this + 48);
      if (v5 != v2)
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
  }

  *(this + 64) = 0;
  return this;
}

uint64_t awd::metrics::BluetoothA2DPAudioStop::MergePartialFromCodedStream(awd::metrics::BluetoothA2DPAudioStop *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
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

        v8 = TagFallback >> 3;
        v9 = TagFallback & 7;
        if (TagFallback >> 3 <= 4)
        {
          break;
        }

        if (TagFallback >> 3 <= 0xFF)
        {
          if (v8 == 5)
          {
            if ((TagFallback & 7) == 0)
            {
              v18 = *(a2 + 1);
              v11 = *(a2 + 2);
              goto LABEL_66;
            }
          }

          else if (v8 == 6 && (TagFallback & 7) == 0)
          {
            v12 = *(a2 + 1);
            v11 = *(a2 + 2);
            goto LABEL_74;
          }

          goto LABEL_35;
        }

        if (v8 != 256)
        {
          if (v8 == 257 && v9 == 2)
          {
            goto LABEL_90;
          }

          goto LABEL_35;
        }

        if (v9 != 2)
        {
          goto LABEL_35;
        }

        v20 = *(this + 16);
LABEL_83:
        *(this + 16) = v20 | 0x40;
        if (*(this + 5) == v5)
        {
          operator new();
        }

        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadBytes();
        if (!result)
        {
          return result;
        }

        v30 = *(a2 + 1);
        if (*(a2 + 4) - v30 >= 2 && *v30 == 138 && v30[1] == 16)
        {
          *(a2 + 1) = v30 + 2;
LABEL_90:
          *(this + 16) |= 0x80u;
          if (*(this + 6) == v5)
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

      if (TagFallback >> 3 > 2)
      {
        break;
      }

      if (v8 == 1)
      {
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_35;
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

        v10 = *(this + 16) | 1;
        *(this + 16) = v10;
        if (v17 < v14 && *v17 == 18)
        {
          *(a2 + 1) = v17 + 1;
          goto LABEL_44;
        }
      }

      else
      {
        if (v8 != 2 || v9 != 2)
        {
          goto LABEL_35;
        }

        v10 = *(this + 16);
LABEL_44:
        *(this + 16) = v10 | 2;
        if (*(this + 2) == v5)
        {
          operator new();
        }

        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadBytes();
        if (!result)
        {
          return result;
        }

        v21 = *(a2 + 1);
        v11 = *(a2 + 2);
        if (v21 < v11 && *v21 == 24)
        {
          v19 = v21 + 1;
          *(a2 + 1) = v19;
LABEL_50:
          if (v19 >= v11 || (v22 = *v19, v22 < 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 6);
            if (!result)
            {
              return result;
            }

            v23 = *(a2 + 1);
            v11 = *(a2 + 2);
          }

          else
          {
            *(this + 6) = v22;
            v23 = v19 + 1;
            *(a2 + 1) = v23;
          }

          *(this + 16) |= 4u;
          if (v23 < v11 && *v23 == 32)
          {
            v13 = v23 + 1;
            *(a2 + 1) = v13;
LABEL_58:
            v32 = 0;
            if (v13 >= v11 || (v24 = *v13, (v24 & 0x80000000) != 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v32);
              if (!result)
              {
                return result;
              }

              v24 = v32;
              v25 = *(a2 + 1);
              v11 = *(a2 + 2);
            }

            else
            {
              v25 = v13 + 1;
              *(a2 + 1) = v25;
            }

            *(this + 28) = v24 != 0;
            *(this + 16) |= 8u;
            if (v25 < v11 && *v25 == 40)
            {
              v18 = v25 + 1;
              *(a2 + 1) = v18;
LABEL_66:
              if (v18 >= v11 || (v26 = *v18, v26 < 0))
              {
                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 14);
                if (!result)
                {
                  return result;
                }

                v27 = *(a2 + 1);
                v11 = *(a2 + 2);
              }

              else
              {
                *(this + 14) = v26;
                v27 = v18 + 1;
                *(a2 + 1) = v27;
              }

              *(this + 16) |= 0x10u;
              if (v27 < v11 && *v27 == 48)
              {
                v12 = v27 + 1;
                *(a2 + 1) = v12;
LABEL_74:
                if (v12 >= v11 || (v28 = *v12, v28 < 0))
                {
                  result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 4);
                  if (!result)
                  {
                    return result;
                  }

                  v29 = *(a2 + 1);
                  v11 = *(a2 + 2);
                }

                else
                {
                  *(this + 4) = v28;
                  v29 = (v12 + 1);
                  *(a2 + 1) = v29;
                }

                v20 = *(this + 16) | 0x20;
                *(this + 16) = v20;
                if (v11 - v29 >= 2 && *v29 == 130 && v29[1] == 16)
                {
                  *(a2 + 1) = v29 + 2;
                  goto LABEL_83;
                }
              }
            }
          }
        }
      }
    }

    if (v8 == 3)
    {
      if ((TagFallback & 7) == 0)
      {
        v19 = *(a2 + 1);
        v11 = *(a2 + 2);
        goto LABEL_50;
      }
    }

    else if (v8 == 4 && (TagFallback & 7) == 0)
    {
      v13 = *(a2 + 1);
      v11 = *(a2 + 2);
      goto LABEL_58;
    }

LABEL_35:
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

uint64_t awd::metrics::BluetoothA2DPAudioStop::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 64);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(1, *(this + 8), a2, a4);
    v6 = *(v5 + 64);
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

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBytes();
  v6 = *(v5 + 64);
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
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(3, *(v5 + 24), a2, a4);
  v6 = *(v5 + 64);
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
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(4, *(v5 + 28), a2, a4);
  v6 = *(v5 + 64);
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
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(5, *(v5 + 56), a2, a4);
  v6 = *(v5 + 64);
  if ((v6 & 0x20) == 0)
  {
LABEL_7:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_8;
    }

LABEL_16:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBytes();
    if ((*(v5 + 64) & 0x80) == 0)
    {
      return this;
    }

    goto LABEL_17;
  }

LABEL_15:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(6, *(v5 + 32), a2, a4);
  v6 = *(v5 + 64);
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

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
}

uint64_t awd::metrics::BluetoothA2DPAudioStop::ByteSize(awd::metrics::BluetoothA2DPAudioStop *this, unint64_t a2)
{
  v3 = *(this + 16);
  if (!v3)
  {
    v5 = 0;
    goto LABEL_49;
  }

  if (v3)
  {
    v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 1)) + 1;
    v3 = *(this + 16);
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
    v3 = *(this + 16);
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
    v12 = *(this + 6);
    if (v12 >= 0x80)
    {
      v13 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v12) + 1;
      v3 = *(this + 16);
    }

    else
    {
      v13 = 2;
    }

    v4 += v13;
  }

  v5 = ((v3 >> 2) & 2) + v4;
  if ((v3 & 0x10) != 0)
  {
    v14 = *(this + 14);
    if (v14 >= 0x80)
    {
      v15 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v14) + 1;
      v3 = *(this + 16);
    }

    else
    {
      v15 = 2;
    }

    v5 = (v15 + v5);
    if ((v3 & 0x20) == 0)
    {
LABEL_23:
      if ((v3 & 0x40) == 0)
      {
        goto LABEL_24;
      }

      goto LABEL_31;
    }
  }

  else if ((v3 & 0x20) == 0)
  {
    goto LABEL_23;
  }

  v5 = v5 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 4)) + 1;
  v3 = *(this + 16);
  if ((v3 & 0x40) == 0)
  {
LABEL_24:
    if ((v3 & 0x80) == 0)
    {
      goto LABEL_49;
    }

    goto LABEL_40;
  }

LABEL_31:
  v16 = *(this + 5);
  v17 = *(v16 + 23);
  v18 = v17;
  v19 = *(v16 + 8);
  if ((v17 & 0x80u) == 0)
  {
    v20 = *(v16 + 23);
  }

  else
  {
    v20 = v19;
  }

  if (v20 >= 0x80)
  {
    v21 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v20);
    v17 = *(v16 + 23);
    v19 = *(v16 + 8);
    v3 = *(this + 16);
    v18 = *(v16 + 23);
  }

  else
  {
    v21 = 1;
  }

  if (v18 < 0)
  {
    v17 = v19;
  }

  v5 = (v5 + v21 + v17 + 2);
  if ((v3 & 0x80) != 0)
  {
LABEL_40:
    v22 = *(this + 6);
    v23 = *(v22 + 23);
    v24 = v23;
    v25 = *(v22 + 8);
    if ((v23 & 0x80u) == 0)
    {
      v26 = *(v22 + 23);
    }

    else
    {
      v26 = v25;
    }

    if (v26 >= 0x80)
    {
      v27 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v26);
      v23 = *(v22 + 23);
      v25 = *(v22 + 8);
      v24 = *(v22 + 23);
    }

    else
    {
      v27 = 1;
    }

    if (v24 < 0)
    {
      v23 = v25;
    }

    v5 = (v5 + v27 + v23 + 2);
  }

LABEL_49:
  *(this + 15) = v5;
  return v5;
}

void awd::metrics::BluetoothA2DPAudioStop::CheckTypeAndMergeFrom(awd::metrics::BluetoothA2DPAudioStop *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  {
    awd::metrics::BluetoothA2DPAudioStop::CheckTypeAndMergeFrom();
  }

  awd::metrics::BluetoothA2DPAudioStop::MergeFrom(this, lpsrc);
}

void awd::metrics::BluetoothA2DPAudioStop::CopyFrom(awd::metrics::BluetoothA2DPAudioStop *this, const awd::metrics::BluetoothA2DPAudioStop *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    awd::metrics::BluetoothA2DPAudioStop::MergeFrom(this, a2);
  }
}

uint64_t awd::metrics::BluetoothA2DPAudioStop::Swap(uint64_t this, awd::metrics::BluetoothA2DPAudioStop *a2)
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
    LODWORD(v2) = *(this + 56);
    *(this + 56) = *(a2 + 14);
    *(a2 + 14) = v2;
    v5 = *(this + 32);
    v6 = *(this + 40);
    v7 = *(a2 + 5);
    *(this + 32) = *(a2 + 4);
    *(this + 40) = v7;
    *(a2 + 4) = v5;
    *(a2 + 5) = v6;
    v8 = *(this + 48);
    *(this + 48) = *(a2 + 6);
    *(a2 + 6) = v8;
    LODWORD(v8) = *(this + 64);
    *(this + 64) = *(a2 + 16);
    *(a2 + 16) = v8;
    LODWORD(v8) = *(this + 60);
    *(this + 60) = *(a2 + 15);
    *(a2 + 15) = v8;
  }

  return this;
}

uint64_t awd::metrics::BluetoothATPhonebookTransferStart::SharedCtor(uint64_t this)
{
  v1 = MEMORY[0x29EDC9758];
  *(this + 44) = 0;
  *(this + 8) = 0;
  *(this + 16) = v1;
  *(this + 40) = 0;
  *(this + 24) = v1;
  *(this + 32) = v1;
  return this;
}

awd::metrics::BluetoothATPhonebookTransferStart *awd::metrics::BluetoothATPhonebookTransferStart::BluetoothATPhonebookTransferStart(awd::metrics::BluetoothATPhonebookTransferStart *this, const awd::metrics::BluetoothATPhonebookTransferStart *a2)
{
  v3 = MEMORY[0x29EDC9758];
  *this = &unk_2A1D4A4A0;
  *(this + 1) = 0;
  *(this + 2) = v3;
  *(this + 3) = v3;
  *(this + 4) = v3;
  *(this + 5) = 0;
  *(this + 12) = 0;
  awd::metrics::BluetoothATPhonebookTransferStart::MergeFrom(this, a2);
  return this;
}

void awd::metrics::BluetoothATPhonebookTransferStart::MergeFrom(awd::metrics::BluetoothATPhonebookTransferStart *this, const awd::metrics::BluetoothATPhonebookTransferStart *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v14);
  }

  LOBYTE(v4) = *(a2 + 48);
  if (!v4)
  {
    return;
  }

  if (*(a2 + 48))
  {
    v5 = *(a2 + 1);
    *(this + 12) |= 1u;
    *(this + 1) = v5;
    v4 = *(a2 + 12);
  }

  v6 = MEMORY[0x29EDC9758];
  if ((v4 & 2) == 0)
  {
    if ((v4 & 4) == 0)
    {
      goto LABEL_8;
    }

LABEL_14:
    v9 = *(a2 + 10);
    *(this + 12) |= 4u;
    *(this + 10) = v9;
    v4 = *(a2 + 12);
    if ((v4 & 8) == 0)
    {
LABEL_9:
      if ((v4 & 0x10) == 0)
      {
        return;
      }

      goto LABEL_18;
    }

    goto LABEL_15;
  }

  v7 = *(a2 + 2);
  *(this + 12) |= 2u;
  v8 = *(this + 2);
  if (v8 == v6)
  {
    operator new();
  }

  std::string::operator=(v8, v7);
  v4 = *(a2 + 12);
  if ((v4 & 4) != 0)
  {
    goto LABEL_14;
  }

LABEL_8:
  if ((v4 & 8) == 0)
  {
    goto LABEL_9;
  }

LABEL_15:
  v10 = *(a2 + 3);
  *(this + 12) |= 8u;
  v11 = *(this + 3);
  if (v11 == v6)
  {
    operator new();
  }

  std::string::operator=(v11, v10);
  if ((*(a2 + 12) & 0x10) != 0)
  {
LABEL_18:
    v12 = *(a2 + 4);
    *(this + 12) |= 0x10u;
    v13 = *(this + 4);
    if (v13 == v6)
    {
      operator new();
    }

    std::string::operator=(v13, v12);
  }
}

void sub_296351A14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::metrics::BluetoothATPhonebookTransferStart::~BluetoothATPhonebookTransferStart(awd::metrics::BluetoothATPhonebookTransferStart *this)
{
  *this = &unk_2A1D4A4A0;
  awd::metrics::BluetoothATPhonebookTransferStart::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2A1D4A4A0;
  awd::metrics::BluetoothATPhonebookTransferStart::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2A1D4A4A0;
  awd::metrics::BluetoothATPhonebookTransferStart::SharedDtor(this);
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  JUMPOUT(0x29C259F00);
}

uint64_t awd::metrics::BluetoothATPhonebookTransferStart::SharedDtor(uint64_t this)
{
  v1 = this;
  v2 = *(this + 16);
  v3 = MEMORY[0x29EDC9758];
  if (v2 != MEMORY[0x29EDC9758] && v2 != 0)
  {
    if (*(v2 + 23) < 0)
    {
      operator delete(*v2);
    }

    this = MEMORY[0x29C259F00](v2, 0x1012C40EC159624);
  }

  v5 = *(v1 + 24);
  if (v5 != v3 && v5 != 0)
  {
    if (*(v5 + 23) < 0)
    {
      operator delete(*v5);
    }

    this = MEMORY[0x29C259F00](v5, 0x1012C40EC159624);
  }

  v7 = *(v1 + 32);
  if (v7 != v3 && v7 != 0)
  {
    if (*(v7 + 23) < 0)
    {
      operator delete(*v7);
    }

    JUMPOUT(0x29C259F00);
  }

  return this;
}

uint64_t awd::metrics::BluetoothATPhonebookTransferStart::default_instance(awd::metrics::BluetoothATPhonebookTransferStart *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = awd::metrics::BluetoothATPhonebookTransferStart::default_instance_;
  if (!awd::metrics::BluetoothATPhonebookTransferStart::default_instance_)
  {
    awd::metrics::protobuf_AddDesc_Bluetooth_2eproto(0, a2, a3, a4);
    return awd::metrics::BluetoothATPhonebookTransferStart::default_instance_;
  }

  return result;
}

uint64_t awd::metrics::BluetoothATPhonebookTransferStart::Clear(uint64_t this)
{
  v1 = *(this + 48);
  if (v1)
  {
    *(this + 8) = 0;
    v2 = MEMORY[0x29EDC9758];
    if ((v1 & 2) != 0)
    {
      v3 = *(this + 16);
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

    *(this + 40) = 0;
    if ((*(this + 48) & 8) != 0)
    {
      v4 = *(this + 24);
      if (v4 != v2)
      {
        if (*(v4 + 23) < 0)
        {
          **v4 = 0;
          *(v4 + 8) = 0;
        }

        else
        {
          *v4 = 0;
          *(v4 + 23) = 0;
        }
      }
    }

    if ((*(this + 48) & 0x10) != 0)
    {
      v5 = *(this + 32);
      if (v5 != v2)
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
  }

  *(this + 48) = 0;
  return this;
}

uint64_t awd::metrics::BluetoothATPhonebookTransferStart::MergePartialFromCodedStream(awd::metrics::BluetoothATPhonebookTransferStart *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
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

        v8 = TagFallback >> 3;
        v9 = TagFallback & 7;
        if (TagFallback >> 3 > 2)
        {
          break;
        }

        if (v8 != 1)
        {
          if (v8 != 2 || v9 != 2)
          {
            goto LABEL_22;
          }

          v10 = *(this + 12);
          goto LABEL_33;
        }

        if ((TagFallback & 7) != 0)
        {
          goto LABEL_22;
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

        v10 = *(this + 12) | 1;
        *(this + 12) = v10;
        if (v17 < v14 && *v17 == 18)
        {
          *(a2 + 1) = v17 + 1;
LABEL_33:
          *(this + 12) = v10 | 2;
          if (*(this + 2) == v5)
          {
            operator new();
          }

          result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadBytes();
          if (!result)
          {
            return result;
          }

          v18 = *(a2 + 1);
          v11 = *(a2 + 2);
          if (v18 < v11 && *v18 == 24)
          {
            v12 = v18 + 1;
            *(a2 + 1) = v12;
LABEL_39:
            if (v12 >= v11 || (v19 = *v12, v19 < 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 10);
              if (!result)
              {
                return result;
              }

              v20 = *(a2 + 1);
              v11 = *(a2 + 2);
            }

            else
            {
              *(this + 10) = v19;
              v20 = (v12 + 1);
              *(a2 + 1) = v20;
            }

            v13 = *(this + 12) | 4;
            *(this + 12) = v13;
            if (v11 - v20 >= 2 && *v20 == 130 && v20[1] == 16)
            {
              *(a2 + 1) = v20 + 2;
              goto LABEL_48;
            }
          }
        }
      }

      if (v8 == 3)
      {
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_22;
        }

        v12 = *(a2 + 1);
        v11 = *(a2 + 2);
        goto LABEL_39;
      }

      if (v8 != 256)
      {
        break;
      }

      if (v9 != 2)
      {
        goto LABEL_22;
      }

      v13 = *(this + 12);
LABEL_48:
      *(this + 12) = v13 | 8;
      if (*(this + 3) == v5)
      {
        operator new();
      }

      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadBytes();
      if (!result)
      {
        return result;
      }

      v21 = *(a2 + 1);
      if (*(a2 + 4) - v21 >= 2 && *v21 == 138 && v21[1] == 16)
      {
        *(a2 + 1) = v21 + 2;
LABEL_55:
        *(this + 12) |= 0x10u;
        if (*(this + 4) == v5)
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

    if (v8 == 257 && v9 == 2)
    {
      goto LABEL_55;
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

uint64_t awd::metrics::BluetoothATPhonebookTransferStart::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
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

      goto LABEL_9;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBytes();
  v6 = *(v5 + 48);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

LABEL_10:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBytes();
    if ((*(v5 + 48) & 0x10) == 0)
    {
      return this;
    }

    goto LABEL_11;
  }

LABEL_9:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(3, *(v5 + 40), a2, a4);
  v6 = *(v5 + 48);
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

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
}

uint64_t awd::metrics::BluetoothATPhonebookTransferStart::ByteSize(awd::metrics::BluetoothATPhonebookTransferStart *this, unint64_t a2)
{
  LOBYTE(v3) = *(this + 48);
  if (!v3)
  {
    v4 = 0;
    goto LABEL_42;
  }

  if (*(this + 48))
  {
    v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 1)) + 1;
    v3 = *(this + 12);
    if ((v3 & 2) == 0)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v4 = 0;
    if ((*(this + 48) & 2) == 0)
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
    v3 = *(this + 12);
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
    v11 = *(this + 10);
    if (v11 >= 0x80)
    {
      v12 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v11) + 1;
      v3 = *(this + 12);
    }

    else
    {
      v12 = 2;
    }

    v4 = (v12 + v4);
    if ((v3 & 8) == 0)
    {
LABEL_18:
      if ((v3 & 0x10) == 0)
      {
        goto LABEL_42;
      }

      goto LABEL_33;
    }
  }

  else if ((v3 & 8) == 0)
  {
    goto LABEL_18;
  }

  v13 = *(this + 3);
  v14 = *(v13 + 23);
  v15 = v14;
  v16 = *(v13 + 8);
  if ((v14 & 0x80u) == 0)
  {
    v17 = *(v13 + 23);
  }

  else
  {
    v17 = v16;
  }

  if (v17 >= 0x80)
  {
    v18 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v17);
    v14 = *(v13 + 23);
    v16 = *(v13 + 8);
    v3 = *(this + 12);
    v15 = *(v13 + 23);
  }

  else
  {
    v18 = 1;
  }

  if (v15 < 0)
  {
    v14 = v16;
  }

  v4 = (v4 + v18 + v14 + 2);
  if ((v3 & 0x10) != 0)
  {
LABEL_33:
    v19 = *(this + 4);
    v20 = *(v19 + 23);
    v21 = v20;
    v22 = *(v19 + 8);
    if ((v20 & 0x80u) == 0)
    {
      v23 = *(v19 + 23);
    }

    else
    {
      v23 = v22;
    }

    if (v23 >= 0x80)
    {
      v24 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v23);
      v20 = *(v19 + 23);
      v22 = *(v19 + 8);
      v21 = *(v19 + 23);
    }

    else
    {
      v24 = 1;
    }

    if (v21 < 0)
    {
      v20 = v22;
    }

    v4 = (v4 + v24 + v20 + 2);
  }

LABEL_42:
  *(this + 11) = v4;
  return v4;
}

void awd::metrics::BluetoothATPhonebookTransferStart::CheckTypeAndMergeFrom(awd::metrics::BluetoothATPhonebookTransferStart *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  {
    awd::metrics::BluetoothATPhonebookTransferStart::CheckTypeAndMergeFrom();
  }

  awd::metrics::BluetoothATPhonebookTransferStart::MergeFrom(this, lpsrc);
}

void awd::metrics::BluetoothATPhonebookTransferStart::CopyFrom(awd::metrics::BluetoothATPhonebookTransferStart *this, const awd::metrics::BluetoothATPhonebookTransferStart *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    awd::metrics::BluetoothATPhonebookTransferStart::MergeFrom(this, a2);
  }
}

uint64_t awd::metrics::BluetoothATPhonebookTransferStart::Swap(uint64_t this, awd::metrics::BluetoothATPhonebookTransferStart *a2)
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
    LODWORD(v2) = *(this + 40);
    *(this + 40) = *(a2 + 10);
    *(a2 + 10) = v2;
    v5 = *(this + 24);
    *(this + 24) = *(a2 + 3);
    *(a2 + 3) = v5;
    v6 = *(this + 32);
    *(this + 32) = *(a2 + 4);
    *(a2 + 4) = v6;
    LODWORD(v6) = *(this + 48);
    *(this + 48) = *(a2 + 12);
    *(a2 + 12) = v6;
    LODWORD(v6) = *(this + 44);
    *(this + 44) = *(a2 + 11);
    *(a2 + 11) = v6;
  }

  return this;
}

uint64_t awd::metrics::BluetoothATPhonebookTransferStop::SharedCtor(uint64_t this)
{
  v1 = MEMORY[0x29EDC9758];
  *(this + 44) = 0;
  *(this + 8) = 0;
  *(this + 16) = v1;
  *(this + 40) = 0;
  *(this + 24) = v1;
  *(this + 32) = v1;
  return this;
}

awd::metrics::BluetoothATPhonebookTransferStop *awd::metrics::BluetoothATPhonebookTransferStop::BluetoothATPhonebookTransferStop(awd::metrics::BluetoothATPhonebookTransferStop *this, const awd::metrics::BluetoothATPhonebookTransferStop *a2)
{
  v3 = MEMORY[0x29EDC9758];
  *this = &unk_2A1D4A518;
  *(this + 1) = 0;
  *(this + 2) = v3;
  *(this + 3) = v3;
  *(this + 4) = v3;
  *(this + 5) = 0;
  *(this + 12) = 0;
  awd::metrics::BluetoothATPhonebookTransferStop::MergeFrom(this, a2);
  return this;
}

void awd::metrics::BluetoothATPhonebookTransferStop::MergeFrom(awd::metrics::BluetoothATPhonebookTransferStop *this, const awd::metrics::BluetoothATPhonebookTransferStop *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v14);
  }

  LOBYTE(v4) = *(a2 + 48);
  if (!v4)
  {
    return;
  }

  if (*(a2 + 48))
  {
    v5 = *(a2 + 1);
    *(this + 12) |= 1u;
    *(this + 1) = v5;
    v4 = *(a2 + 12);
  }

  v6 = MEMORY[0x29EDC9758];
  if ((v4 & 2) == 0)
  {
    if ((v4 & 4) == 0)
    {
      goto LABEL_8;
    }

LABEL_14:
    v9 = *(a2 + 10);
    *(this + 12) |= 4u;
    *(this + 10) = v9;
    v4 = *(a2 + 12);
    if ((v4 & 8) == 0)
    {
LABEL_9:
      if ((v4 & 0x10) == 0)
      {
        return;
      }

      goto LABEL_18;
    }

    goto LABEL_15;
  }

  v7 = *(a2 + 2);
  *(this + 12) |= 2u;
  v8 = *(this + 2);
  if (v8 == v6)
  {
    operator new();
  }

  std::string::operator=(v8, v7);
  v4 = *(a2 + 12);
  if ((v4 & 4) != 0)
  {
    goto LABEL_14;
  }

LABEL_8:
  if ((v4 & 8) == 0)
  {
    goto LABEL_9;
  }

LABEL_15:
  v10 = *(a2 + 3);
  *(this + 12) |= 8u;
  v11 = *(this + 3);
  if (v11 == v6)
  {
    operator new();
  }

  std::string::operator=(v11, v10);
  if ((*(a2 + 12) & 0x10) != 0)
  {
LABEL_18:
    v12 = *(a2 + 4);
    *(this + 12) |= 0x10u;
    v13 = *(this + 4);
    if (v13 == v6)
    {
      operator new();
    }

    std::string::operator=(v13, v12);
  }
}

void sub_2963526DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::metrics::BluetoothATPhonebookTransferStop::~BluetoothATPhonebookTransferStop(awd::metrics::BluetoothATPhonebookTransferStop *this)
{
  *this = &unk_2A1D4A518;
  awd::metrics::BluetoothATPhonebookTransferStop::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2A1D4A518;
  awd::metrics::BluetoothATPhonebookTransferStop::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2A1D4A518;
  awd::metrics::BluetoothATPhonebookTransferStop::SharedDtor(this);
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  JUMPOUT(0x29C259F00);
}

uint64_t awd::metrics::BluetoothATPhonebookTransferStop::SharedDtor(uint64_t this)
{
  v1 = this;
  v2 = *(this + 16);
  v3 = MEMORY[0x29EDC9758];
  if (v2 != MEMORY[0x29EDC9758] && v2 != 0)
  {
    if (*(v2 + 23) < 0)
    {
      operator delete(*v2);
    }

    this = MEMORY[0x29C259F00](v2, 0x1012C40EC159624);
  }

  v5 = *(v1 + 24);
  if (v5 != v3 && v5 != 0)
  {
    if (*(v5 + 23) < 0)
    {
      operator delete(*v5);
    }

    this = MEMORY[0x29C259F00](v5, 0x1012C40EC159624);
  }

  v7 = *(v1 + 32);
  if (v7 != v3 && v7 != 0)
  {
    if (*(v7 + 23) < 0)
    {
      operator delete(*v7);
    }

    JUMPOUT(0x29C259F00);
  }

  return this;
}

uint64_t awd::metrics::BluetoothATPhonebookTransferStop::default_instance(awd::metrics::BluetoothATPhonebookTransferStop *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = awd::metrics::BluetoothATPhonebookTransferStop::default_instance_;
  if (!awd::metrics::BluetoothATPhonebookTransferStop::default_instance_)
  {
    awd::metrics::protobuf_AddDesc_Bluetooth_2eproto(0, a2, a3, a4);
    return awd::metrics::BluetoothATPhonebookTransferStop::default_instance_;
  }

  return result;
}

uint64_t awd::metrics::BluetoothATPhonebookTransferStop::Clear(uint64_t this)
{
  v1 = *(this + 48);
  if (v1)
  {
    *(this + 8) = 0;
    v2 = MEMORY[0x29EDC9758];
    if ((v1 & 2) != 0)
    {
      v3 = *(this + 16);
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

    *(this + 40) = 0;
    if ((*(this + 48) & 8) != 0)
    {
      v4 = *(this + 24);
      if (v4 != v2)
      {
        if (*(v4 + 23) < 0)
        {
          **v4 = 0;
          *(v4 + 8) = 0;
        }

        else
        {
          *v4 = 0;
          *(v4 + 23) = 0;
        }
      }
    }

    if ((*(this + 48) & 0x10) != 0)
    {
      v5 = *(this + 32);
      if (v5 != v2)
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
  }

  *(this + 48) = 0;
  return this;
}

uint64_t awd::metrics::BluetoothATPhonebookTransferStop::MergePartialFromCodedStream(awd::metrics::BluetoothATPhonebookTransferStop *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
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

        v8 = TagFallback >> 3;
        v9 = TagFallback & 7;
        if (TagFallback >> 3 > 2)
        {
          break;
        }

        if (v8 != 1)
        {
          if (v8 != 2 || v9 != 2)
          {
            goto LABEL_22;
          }

          v10 = *(this + 12);
          goto LABEL_33;
        }

        if ((TagFallback & 7) != 0)
        {
          goto LABEL_22;
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

        v10 = *(this + 12) | 1;
        *(this + 12) = v10;
        if (v17 < v14 && *v17 == 18)
        {
          *(a2 + 1) = v17 + 1;
LABEL_33:
          *(this + 12) = v10 | 2;
          if (*(this + 2) == v5)
          {
            operator new();
          }

          result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadBytes();
          if (!result)
          {
            return result;
          }

          v18 = *(a2 + 1);
          v11 = *(a2 + 2);
          if (v18 < v11 && *v18 == 24)
          {
            v12 = v18 + 1;
            *(a2 + 1) = v12;
LABEL_39:
            if (v12 >= v11 || (v19 = *v12, v19 < 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 10);
              if (!result)
              {
                return result;
              }

              v20 = *(a2 + 1);
              v11 = *(a2 + 2);
            }

            else
            {
              *(this + 10) = v19;
              v20 = (v12 + 1);
              *(a2 + 1) = v20;
            }

            v13 = *(this + 12) | 4;
            *(this + 12) = v13;
            if (v11 - v20 >= 2 && *v20 == 130 && v20[1] == 16)
            {
              *(a2 + 1) = v20 + 2;
              goto LABEL_48;
            }
          }
        }
      }

      if (v8 == 3)
      {
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_22;
        }

        v12 = *(a2 + 1);
        v11 = *(a2 + 2);
        goto LABEL_39;
      }

      if (v8 != 256)
      {
        break;
      }

      if (v9 != 2)
      {
        goto LABEL_22;
      }

      v13 = *(this + 12);
LABEL_48:
      *(this + 12) = v13 | 8;
      if (*(this + 3) == v5)
      {
        operator new();
      }

      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadBytes();
      if (!result)
      {
        return result;
      }

      v21 = *(a2 + 1);
      if (*(a2 + 4) - v21 >= 2 && *v21 == 138 && v21[1] == 16)
      {
        *(a2 + 1) = v21 + 2;
LABEL_55:
        *(this + 12) |= 0x10u;
        if (*(this + 4) == v5)
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

    if (v8 == 257 && v9 == 2)
    {
      goto LABEL_55;
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

uint64_t awd::metrics::BluetoothATPhonebookTransferStop::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
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

      goto LABEL_9;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBytes();
  v6 = *(v5 + 48);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

LABEL_10:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBytes();
    if ((*(v5 + 48) & 0x10) == 0)
    {
      return this;
    }

    goto LABEL_11;
  }

LABEL_9:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(3, *(v5 + 40), a2, a4);
  v6 = *(v5 + 48);
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

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
}

uint64_t awd::metrics::BluetoothATPhonebookTransferStop::ByteSize(awd::metrics::BluetoothATPhonebookTransferStop *this, unint64_t a2)
{
  LOBYTE(v3) = *(this + 48);
  if (!v3)
  {
    v4 = 0;
    goto LABEL_42;
  }

  if (*(this + 48))
  {
    v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 1)) + 1;
    v3 = *(this + 12);
    if ((v3 & 2) == 0)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v4 = 0;
    if ((*(this + 48) & 2) == 0)
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
    v3 = *(this + 12);
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
    v11 = *(this + 10);
    if (v11 >= 0x80)
    {
      v12 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v11) + 1;
      v3 = *(this + 12);
    }

    else
    {
      v12 = 2;
    }

    v4 = (v12 + v4);
    if ((v3 & 8) == 0)
    {
LABEL_18:
      if ((v3 & 0x10) == 0)
      {
        goto LABEL_42;
      }

      goto LABEL_33;
    }
  }

  else if ((v3 & 8) == 0)
  {
    goto LABEL_18;
  }

  v13 = *(this + 3);
  v14 = *(v13 + 23);
  v15 = v14;
  v16 = *(v13 + 8);
  if ((v14 & 0x80u) == 0)
  {
    v17 = *(v13 + 23);
  }

  else
  {
    v17 = v16;
  }

  if (v17 >= 0x80)
  {
    v18 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v17);
    v14 = *(v13 + 23);
    v16 = *(v13 + 8);
    v3 = *(this + 12);
    v15 = *(v13 + 23);
  }

  else
  {
    v18 = 1;
  }

  if (v15 < 0)
  {
    v14 = v16;
  }

  v4 = (v4 + v18 + v14 + 2);
  if ((v3 & 0x10) != 0)
  {
LABEL_33:
    v19 = *(this + 4);
    v20 = *(v19 + 23);
    v21 = v20;
    v22 = *(v19 + 8);
    if ((v20 & 0x80u) == 0)
    {
      v23 = *(v19 + 23);
    }

    else
    {
      v23 = v22;
    }

    if (v23 >= 0x80)
    {
      v24 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v23);
      v20 = *(v19 + 23);
      v22 = *(v19 + 8);
      v21 = *(v19 + 23);
    }

    else
    {
      v24 = 1;
    }

    if (v21 < 0)
    {
      v20 = v22;
    }

    v4 = (v4 + v24 + v20 + 2);
  }

LABEL_42:
  *(this + 11) = v4;
  return v4;
}

void awd::metrics::BluetoothATPhonebookTransferStop::CheckTypeAndMergeFrom(awd::metrics::BluetoothATPhonebookTransferStop *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  {
    awd::metrics::BluetoothATPhonebookTransferStop::CheckTypeAndMergeFrom();
  }

  awd::metrics::BluetoothATPhonebookTransferStop::MergeFrom(this, lpsrc);
}

void awd::metrics::BluetoothATPhonebookTransferStop::CopyFrom(awd::metrics::BluetoothATPhonebookTransferStop *this, const awd::metrics::BluetoothATPhonebookTransferStop *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    awd::metrics::BluetoothATPhonebookTransferStop::MergeFrom(this, a2);
  }
}

uint64_t awd::metrics::BluetoothATPhonebookTransferStop::Swap(uint64_t this, awd::metrics::BluetoothATPhonebookTransferStop *a2)
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
    LODWORD(v2) = *(this + 40);
    *(this + 40) = *(a2 + 10);
    *(a2 + 10) = v2;
    v5 = *(this + 24);
    *(this + 24) = *(a2 + 3);
    *(a2 + 3) = v5;
    v6 = *(this + 32);
    *(this + 32) = *(a2 + 4);
    *(a2 + 4) = v6;
    LODWORD(v6) = *(this + 48);
    *(this + 48) = *(a2 + 12);
    *(a2 + 12) = v6;
    LODWORD(v6) = *(this + 44);
    *(this + 44) = *(a2 + 11);
    *(a2 + 11) = v6;
  }

  return this;
}

uint64_t awd::metrics::BluetoothPBAPPhonebookTransferStart::SharedCtor(uint64_t this)
{
  v1 = MEMORY[0x29EDC9758];
  *(this + 44) = 0;
  *(this + 8) = 0;
  *(this + 16) = v1;
  *(this + 40) = 0;
  *(this + 24) = v1;
  *(this + 32) = v1;
  return this;
}

awd::metrics::BluetoothPBAPPhonebookTransferStart *awd::metrics::BluetoothPBAPPhonebookTransferStart::BluetoothPBAPPhonebookTransferStart(awd::metrics::BluetoothPBAPPhonebookTransferStart *this, const awd::metrics::BluetoothPBAPPhonebookTransferStart *a2)
{
  v3 = MEMORY[0x29EDC9758];
  *this = &unk_2A1D4A590;
  *(this + 1) = 0;
  *(this + 2) = v3;
  *(this + 3) = v3;
  *(this + 4) = v3;
  *(this + 5) = 0;
  *(this + 12) = 0;
  awd::metrics::BluetoothPBAPPhonebookTransferStart::MergeFrom(this, a2);
  return this;
}

void awd::metrics::BluetoothPBAPPhonebookTransferStart::MergeFrom(awd::metrics::BluetoothPBAPPhonebookTransferStart *this, const awd::metrics::BluetoothPBAPPhonebookTransferStart *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v14);
  }

  LOBYTE(v4) = *(a2 + 48);
  if (!v4)
  {
    return;
  }

  if (*(a2 + 48))
  {
    v5 = *(a2 + 1);
    *(this + 12) |= 1u;
    *(this + 1) = v5;
    v4 = *(a2 + 12);
  }

  v6 = MEMORY[0x29EDC9758];
  if ((v4 & 2) == 0)
  {
    if ((v4 & 4) == 0)
    {
      goto LABEL_8;
    }

LABEL_14:
    v9 = *(a2 + 10);
    *(this + 12) |= 4u;
    *(this + 10) = v9;
    v4 = *(a2 + 12);
    if ((v4 & 8) == 0)
    {
LABEL_9:
      if ((v4 & 0x10) == 0)
      {
        return;
      }

      goto LABEL_18;
    }

    goto LABEL_15;
  }

  v7 = *(a2 + 2);
  *(this + 12) |= 2u;
  v8 = *(this + 2);
  if (v8 == v6)
  {
    operator new();
  }

  std::string::operator=(v8, v7);
  v4 = *(a2 + 12);
  if ((v4 & 4) != 0)
  {
    goto LABEL_14;
  }

LABEL_8:
  if ((v4 & 8) == 0)
  {
    goto LABEL_9;
  }

LABEL_15:
  v10 = *(a2 + 3);
  *(this + 12) |= 8u;
  v11 = *(this + 3);
  if (v11 == v6)
  {
    operator new();
  }

  std::string::operator=(v11, v10);
  if ((*(a2 + 12) & 0x10) != 0)
  {
LABEL_18:
    v12 = *(a2 + 4);
    *(this + 12) |= 0x10u;
    v13 = *(this + 4);
    if (v13 == v6)
    {
      operator new();
    }

    std::string::operator=(v13, v12);
  }
}

void sub_2963533A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::metrics::BluetoothPBAPPhonebookTransferStart::~BluetoothPBAPPhonebookTransferStart(awd::metrics::BluetoothPBAPPhonebookTransferStart *this)
{
  *this = &unk_2A1D4A590;
  awd::metrics::BluetoothPBAPPhonebookTransferStart::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2A1D4A590;
  awd::metrics::BluetoothPBAPPhonebookTransferStart::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2A1D4A590;
  awd::metrics::BluetoothPBAPPhonebookTransferStart::SharedDtor(this);
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  JUMPOUT(0x29C259F00);
}

uint64_t awd::metrics::BluetoothPBAPPhonebookTransferStart::SharedDtor(uint64_t this)
{
  v1 = this;
  v2 = *(this + 16);
  v3 = MEMORY[0x29EDC9758];
  if (v2 != MEMORY[0x29EDC9758] && v2 != 0)
  {
    if (*(v2 + 23) < 0)
    {
      operator delete(*v2);
    }

    this = MEMORY[0x29C259F00](v2, 0x1012C40EC159624);
  }

  v5 = *(v1 + 24);
  if (v5 != v3 && v5 != 0)
  {
    if (*(v5 + 23) < 0)
    {
      operator delete(*v5);
    }

    this = MEMORY[0x29C259F00](v5, 0x1012C40EC159624);
  }

  v7 = *(v1 + 32);
  if (v7 != v3 && v7 != 0)
  {
    if (*(v7 + 23) < 0)
    {
      operator delete(*v7);
    }

    JUMPOUT(0x29C259F00);
  }

  return this;
}

uint64_t awd::metrics::BluetoothPBAPPhonebookTransferStart::default_instance(awd::metrics::BluetoothPBAPPhonebookTransferStart *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = awd::metrics::BluetoothPBAPPhonebookTransferStart::default_instance_;
  if (!awd::metrics::BluetoothPBAPPhonebookTransferStart::default_instance_)
  {
    awd::metrics::protobuf_AddDesc_Bluetooth_2eproto(0, a2, a3, a4);
    return awd::metrics::BluetoothPBAPPhonebookTransferStart::default_instance_;
  }

  return result;
}

uint64_t awd::metrics::BluetoothPBAPPhonebookTransferStart::Clear(uint64_t this)
{
  v1 = *(this + 48);
  if (v1)
  {
    *(this + 8) = 0;
    v2 = MEMORY[0x29EDC9758];
    if ((v1 & 2) != 0)
    {
      v3 = *(this + 16);
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

    *(this + 40) = 0;
    if ((*(this + 48) & 8) != 0)
    {
      v4 = *(this + 24);
      if (v4 != v2)
      {
        if (*(v4 + 23) < 0)
        {
          **v4 = 0;
          *(v4 + 8) = 0;
        }

        else
        {
          *v4 = 0;
          *(v4 + 23) = 0;
        }
      }
    }

    if ((*(this + 48) & 0x10) != 0)
    {
      v5 = *(this + 32);
      if (v5 != v2)
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
  }

  *(this + 48) = 0;
  return this;
}

uint64_t awd::metrics::BluetoothPBAPPhonebookTransferStart::MergePartialFromCodedStream(awd::metrics::BluetoothPBAPPhonebookTransferStart *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
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

        v8 = TagFallback >> 3;
        v9 = TagFallback & 7;
        if (TagFallback >> 3 > 2)
        {
          break;
        }

        if (v8 != 1)
        {
          if (v8 != 2 || v9 != 2)
          {
            goto LABEL_22;
          }

          v10 = *(this + 12);
          goto LABEL_33;
        }

        if ((TagFallback & 7) != 0)
        {
          goto LABEL_22;
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

        v10 = *(this + 12) | 1;
        *(this + 12) = v10;
        if (v17 < v14 && *v17 == 18)
        {
          *(a2 + 1) = v17 + 1;
LABEL_33:
          *(this + 12) = v10 | 2;
          if (*(this + 2) == v5)
          {
            operator new();
          }

          result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadBytes();
          if (!result)
          {
            return result;
          }

          v18 = *(a2 + 1);
          v11 = *(a2 + 2);
          if (v18 < v11 && *v18 == 24)
          {
            v12 = v18 + 1;
            *(a2 + 1) = v12;
LABEL_39:
            if (v12 >= v11 || (v19 = *v12, v19 < 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 10);
              if (!result)
              {
                return result;
              }

              v20 = *(a2 + 1);
              v11 = *(a2 + 2);
            }

            else
            {
              *(this + 10) = v19;
              v20 = (v12 + 1);
              *(a2 + 1) = v20;
            }

            v13 = *(this + 12) | 4;
            *(this + 12) = v13;
            if (v11 - v20 >= 2 && *v20 == 130 && v20[1] == 16)
            {
              *(a2 + 1) = v20 + 2;
              goto LABEL_48;
            }
          }
        }
      }

      if (v8 == 3)
      {
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_22;
        }

        v12 = *(a2 + 1);
        v11 = *(a2 + 2);
        goto LABEL_39;
      }

      if (v8 != 256)
      {
        break;
      }

      if (v9 != 2)
      {
        goto LABEL_22;
      }

      v13 = *(this + 12);
LABEL_48:
      *(this + 12) = v13 | 8;
      if (*(this + 3) == v5)
      {
        operator new();
      }

      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadBytes();
      if (!result)
      {
        return result;
      }

      v21 = *(a2 + 1);
      if (*(a2 + 4) - v21 >= 2 && *v21 == 138 && v21[1] == 16)
      {
        *(a2 + 1) = v21 + 2;
LABEL_55:
        *(this + 12) |= 0x10u;
        if (*(this + 4) == v5)
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

    if (v8 == 257 && v9 == 2)
    {
      goto LABEL_55;
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

uint64_t awd::metrics::BluetoothPBAPPhonebookTransferStart::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
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

      goto LABEL_9;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBytes();
  v6 = *(v5 + 48);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

LABEL_10:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBytes();
    if ((*(v5 + 48) & 0x10) == 0)
    {
      return this;
    }

    goto LABEL_11;
  }

LABEL_9:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(3, *(v5 + 40), a2, a4);
  v6 = *(v5 + 48);
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

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
}

uint64_t awd::metrics::BluetoothPBAPPhonebookTransferStart::ByteSize(awd::metrics::BluetoothPBAPPhonebookTransferStart *this, unint64_t a2)
{
  LOBYTE(v3) = *(this + 48);
  if (!v3)
  {
    v4 = 0;
    goto LABEL_42;
  }

  if (*(this + 48))
  {
    v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 1)) + 1;
    v3 = *(this + 12);
    if ((v3 & 2) == 0)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v4 = 0;
    if ((*(this + 48) & 2) == 0)
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
    v3 = *(this + 12);
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
    v11 = *(this + 10);
    if (v11 >= 0x80)
    {
      v12 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v11) + 1;
      v3 = *(this + 12);
    }

    else
    {
      v12 = 2;
    }

    v4 = (v12 + v4);
    if ((v3 & 8) == 0)
    {
LABEL_18:
      if ((v3 & 0x10) == 0)
      {
        goto LABEL_42;
      }

      goto LABEL_33;
    }
  }

  else if ((v3 & 8) == 0)
  {
    goto LABEL_18;
  }

  v13 = *(this + 3);
  v14 = *(v13 + 23);
  v15 = v14;
  v16 = *(v13 + 8);
  if ((v14 & 0x80u) == 0)
  {
    v17 = *(v13 + 23);
  }

  else
  {
    v17 = v16;
  }

  if (v17 >= 0x80)
  {
    v18 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v17);
    v14 = *(v13 + 23);
    v16 = *(v13 + 8);
    v3 = *(this + 12);
    v15 = *(v13 + 23);
  }

  else
  {
    v18 = 1;
  }

  if (v15 < 0)
  {
    v14 = v16;
  }

  v4 = (v4 + v18 + v14 + 2);
  if ((v3 & 0x10) != 0)
  {
LABEL_33:
    v19 = *(this + 4);
    v20 = *(v19 + 23);
    v21 = v20;
    v22 = *(v19 + 8);
    if ((v20 & 0x80u) == 0)
    {
      v23 = *(v19 + 23);
    }

    else
    {
      v23 = v22;
    }

    if (v23 >= 0x80)
    {
      v24 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v23);
      v20 = *(v19 + 23);
      v22 = *(v19 + 8);
      v21 = *(v19 + 23);
    }

    else
    {
      v24 = 1;
    }

    if (v21 < 0)
    {
      v20 = v22;
    }

    v4 = (v4 + v24 + v20 + 2);
  }

LABEL_42:
  *(this + 11) = v4;
  return v4;
}

void awd::metrics::BluetoothPBAPPhonebookTransferStart::CheckTypeAndMergeFrom(awd::metrics::BluetoothPBAPPhonebookTransferStart *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  {
    awd::metrics::BluetoothPBAPPhonebookTransferStart::CheckTypeAndMergeFrom();
  }

  awd::metrics::BluetoothPBAPPhonebookTransferStart::MergeFrom(this, lpsrc);
}

void awd::metrics::BluetoothPBAPPhonebookTransferStart::CopyFrom(awd::metrics::BluetoothPBAPPhonebookTransferStart *this, const awd::metrics::BluetoothPBAPPhonebookTransferStart *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    awd::metrics::BluetoothPBAPPhonebookTransferStart::MergeFrom(this, a2);
  }
}

uint64_t awd::metrics::BluetoothPBAPPhonebookTransferStart::Swap(uint64_t this, awd::metrics::BluetoothPBAPPhonebookTransferStart *a2)
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
    LODWORD(v2) = *(this + 40);
    *(this + 40) = *(a2 + 10);
    *(a2 + 10) = v2;
    v5 = *(this + 24);
    *(this + 24) = *(a2 + 3);
    *(a2 + 3) = v5;
    v6 = *(this + 32);
    *(this + 32) = *(a2 + 4);
    *(a2 + 4) = v6;
    LODWORD(v6) = *(this + 48);
    *(this + 48) = *(a2 + 12);
    *(a2 + 12) = v6;
    LODWORD(v6) = *(this + 44);
    *(this + 44) = *(a2 + 11);
    *(a2 + 11) = v6;
  }

  return this;
}

void *awd::metrics::BluetoothPBAPPhonebookTransferStop::SharedCtor(void *this)
{
  this[5] = 0;
  v1 = MEMORY[0x29EDC9758];
  this[1] = 0;
  this[2] = v1;
  this[3] = v1;
  this[4] = v1;
  return this;
}

awd::metrics::BluetoothPBAPPhonebookTransferStop *awd::metrics::BluetoothPBAPPhonebookTransferStop::BluetoothPBAPPhonebookTransferStop(awd::metrics::BluetoothPBAPPhonebookTransferStop *this, const awd::metrics::BluetoothPBAPPhonebookTransferStop *a2)
{
  *this = &unk_2A1D4A608;
  *(this + 1) = 0;
  v3 = MEMORY[0x29EDC9758];
  *(this + 2) = MEMORY[0x29EDC9758];
  *(this + 3) = v3;
  *(this + 4) = v3;
  *(this + 5) = 0;
  awd::metrics::BluetoothPBAPPhonebookTransferStop::MergeFrom(this, a2);
  return this;
}

void awd::metrics::BluetoothPBAPPhonebookTransferStop::MergeFrom(awd::metrics::BluetoothPBAPPhonebookTransferStop *this, const awd::metrics::BluetoothPBAPPhonebookTransferStop *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v13);
  }

  LOBYTE(v4) = *(a2 + 44);
  if (v4)
  {
    if (*(a2 + 44))
    {
      v5 = *(a2 + 1);
      *(this + 11) |= 1u;
      *(this + 1) = v5;
      v4 = *(a2 + 11);
    }

    v6 = MEMORY[0x29EDC9758];
    if ((v4 & 2) != 0)
    {
      v7 = *(a2 + 2);
      *(this + 11) |= 2u;
      v8 = *(this + 2);
      if (v8 == v6)
      {
        operator new();
      }

      std::string::operator=(v8, v7);
      v4 = *(a2 + 11);
      if ((v4 & 4) == 0)
      {
LABEL_8:
        if ((v4 & 8) == 0)
        {
          return;
        }

        goto LABEL_16;
      }
    }

    else if ((v4 & 4) == 0)
    {
      goto LABEL_8;
    }

    v9 = *(a2 + 3);
    *(this + 11) |= 4u;
    v10 = *(this + 3);
    if (v10 == v6)
    {
      operator new();
    }

    std::string::operator=(v10, v9);
    if ((*(a2 + 11) & 8) != 0)
    {
LABEL_16:
      v11 = *(a2 + 4);
      *(this + 11) |= 8u;
      v12 = *(this + 4);
      if (v12 == v6)
      {
        operator new();
      }

      std::string::operator=(v12, v11);
    }
  }
}

void sub_296354040(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::metrics::BluetoothPBAPPhonebookTransferStop::~BluetoothPBAPPhonebookTransferStop(awd::metrics::BluetoothPBAPPhonebookTransferStop *this)
{
  *this = &unk_2A1D4A608;
  awd::metrics::BluetoothPBAPPhonebookTransferStop::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2A1D4A608;
  awd::metrics::BluetoothPBAPPhonebookTransferStop::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2A1D4A608;
  awd::metrics::BluetoothPBAPPhonebookTransferStop::SharedDtor(this);
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  JUMPOUT(0x29C259F00);
}

uint64_t awd::metrics::BluetoothPBAPPhonebookTransferStop::SharedDtor(uint64_t this)
{
  v1 = this;
  v2 = *(this + 16);
  v3 = MEMORY[0x29EDC9758];
  if (v2 != MEMORY[0x29EDC9758] && v2 != 0)
  {
    if (*(v2 + 23) < 0)
    {
      operator delete(*v2);
    }

    this = MEMORY[0x29C259F00](v2, 0x1012C40EC159624);
  }

  v5 = *(v1 + 24);
  if (v5 != v3 && v5 != 0)
  {
    if (*(v5 + 23) < 0)
    {
      operator delete(*v5);
    }

    this = MEMORY[0x29C259F00](v5, 0x1012C40EC159624);
  }

  v7 = *(v1 + 32);
  if (v7 != v3 && v7 != 0)
  {
    if (*(v7 + 23) < 0)
    {
      operator delete(*v7);
    }

    JUMPOUT(0x29C259F00);
  }

  return this;
}

uint64_t awd::metrics::BluetoothPBAPPhonebookTransferStop::default_instance(awd::metrics::BluetoothPBAPPhonebookTransferStop *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = awd::metrics::BluetoothPBAPPhonebookTransferStop::default_instance_;
  if (!awd::metrics::BluetoothPBAPPhonebookTransferStop::default_instance_)
  {
    awd::metrics::protobuf_AddDesc_Bluetooth_2eproto(0, a2, a3, a4);
    return awd::metrics::BluetoothPBAPPhonebookTransferStop::default_instance_;
  }

  return result;
}

uint64_t awd::metrics::BluetoothPBAPPhonebookTransferStop::Clear(uint64_t this)
{
  v1 = *(this + 44);
  if (v1)
  {
    *(this + 8) = 0;
    v2 = MEMORY[0x29EDC9758];
    if ((v1 & 2) != 0)
    {
      v3 = *(this + 16);
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

    if ((*(this + 44) & 4) != 0)
    {
      v4 = *(this + 24);
      if (v4 != v2)
      {
        if (*(v4 + 23) < 0)
        {
          **v4 = 0;
          *(v4 + 8) = 0;
        }

        else
        {
          *v4 = 0;
          *(v4 + 23) = 0;
        }
      }
    }

    if ((*(this + 44) & 8) != 0)
    {
      v5 = *(this + 32);
      if (v5 != v2)
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
  }

  *(this + 44) = 0;
  return this;
}

uint64_t awd::metrics::BluetoothPBAPPhonebookTransferStop::MergePartialFromCodedStream(awd::metrics::BluetoothPBAPPhonebookTransferStop *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
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

        v8 = TagFallback >> 3;
        v9 = TagFallback & 7;
        if (TagFallback >> 3 > 0xFF)
        {
          break;
        }

        if (v8 == 1)
        {
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

          v10 = *(this + 11) | 1;
          *(this + 11) = v10;
          if (v14 < v11 && *v14 == 18)
          {
            *(a2 + 1) = v14 + 1;
            goto LABEL_29;
          }
        }

        else
        {
          if (v8 != 2 || v9 != 2)
          {
            goto LABEL_21;
          }

          v10 = *(this + 11);
LABEL_29:
          *(this + 11) = v10 | 2;
          if (*(this + 2) == v5)
          {
            operator new();
          }

          result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadBytes();
          if (!result)
          {
            return result;
          }

          v15 = *(a2 + 1);
          if (*(a2 + 4) - v15 >= 2 && *v15 == 130 && v15[1] == 16)
          {
            *(a2 + 1) = v15 + 2;
            goto LABEL_36;
          }
        }
      }

      if (v8 != 256)
      {
        break;
      }

      if (v9 != 2)
      {
        goto LABEL_21;
      }

LABEL_36:
      *(this + 11) |= 4u;
      if (*(this + 3) == v5)
      {
        operator new();
      }

      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadBytes();
      if (!result)
      {
        return result;
      }

      v16 = *(a2 + 1);
      if (*(a2 + 4) - v16 >= 2 && *v16 == 138 && v16[1] == 16)
      {
        *(a2 + 1) = v16 + 2;
LABEL_43:
        *(this + 11) |= 8u;
        if (*(this + 4) == v5)
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

    if (v8 == 257 && v9 == 2)
    {
      goto LABEL_43;
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

uint64_t awd::metrics::BluetoothPBAPPhonebookTransferStop::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v4 = this;
  v5 = *(this + 44);
  if (v5)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(1, *(this + 8), a2, a4);
    v5 = *(v4 + 44);
    if ((v5 & 2) == 0)
    {
LABEL_3:
      if ((v5 & 4) == 0)
      {
        goto LABEL_4;
      }

LABEL_8:
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBytes();
      if ((*(v4 + 44) & 8) == 0)
      {
        return this;
      }

      goto LABEL_9;
    }
  }

  else if ((v5 & 2) == 0)
  {
    goto LABEL_3;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBytes();
  v5 = *(v4 + 44);
  if ((v5 & 4) != 0)
  {
    goto LABEL_8;
  }

LABEL_4:
  if ((v5 & 8) == 0)
  {
    return this;
  }

LABEL_9:

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
}

uint64_t awd::metrics::BluetoothPBAPPhonebookTransferStop::ByteSize(awd::metrics::BluetoothPBAPPhonebookTransferStop *this, unint64_t a2)
{
  LOBYTE(v3) = *(this + 44);
  if (!v3)
  {
    v4 = 0;
    goto LABEL_37;
  }

  if (*(this + 44))
  {
    v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 1)) + 1;
    v3 = *(this + 11);
    if ((v3 & 2) == 0)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v4 = 0;
    if ((*(this + 44) & 2) == 0)
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
    v3 = *(this + 11);
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
  if ((v3 & 4) == 0)
  {
    if ((v3 & 8) == 0)
    {
      goto LABEL_37;
    }

    goto LABEL_28;
  }

  v11 = *(this + 3);
  v12 = *(v11 + 23);
  v13 = v12;
  v14 = *(v11 + 8);
  if ((v12 & 0x80u) == 0)
  {
    v15 = *(v11 + 23);
  }

  else
  {
    v15 = v14;
  }

  if (v15 >= 0x80)
  {
    v16 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v15);
    v12 = *(v11 + 23);
    v14 = *(v11 + 8);
    v3 = *(this + 11);
    v13 = *(v11 + 23);
  }

  else
  {
    v16 = 1;
  }

  if (v13 < 0)
  {
    v12 = v14;
  }

  v4 = (v4 + v16 + v12 + 2);
  if ((v3 & 8) != 0)
  {
LABEL_28:
    v17 = *(this + 4);
    v18 = *(v17 + 23);
    v19 = v18;
    v20 = *(v17 + 8);
    if ((v18 & 0x80u) == 0)
    {
      v21 = *(v17 + 23);
    }

    else
    {
      v21 = v20;
    }

    if (v21 >= 0x80)
    {
      v22 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v21);
      v18 = *(v17 + 23);
      v20 = *(v17 + 8);
      v19 = *(v17 + 23);
    }

    else
    {
      v22 = 1;
    }

    if (v19 < 0)
    {
      v18 = v20;
    }

    v4 = (v4 + v22 + v18 + 2);
  }

LABEL_37:
  *(this + 10) = v4;
  return v4;
}

void awd::metrics::BluetoothPBAPPhonebookTransferStop::CheckTypeAndMergeFrom(awd::metrics::BluetoothPBAPPhonebookTransferStop *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  {
    awd::metrics::BluetoothPBAPPhonebookTransferStop::CheckTypeAndMergeFrom();
  }

  awd::metrics::BluetoothPBAPPhonebookTransferStop::MergeFrom(this, lpsrc);
}

void awd::metrics::BluetoothPBAPPhonebookTransferStop::CopyFrom(awd::metrics::BluetoothPBAPPhonebookTransferStop *this, const awd::metrics::BluetoothPBAPPhonebookTransferStop *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    awd::metrics::BluetoothPBAPPhonebookTransferStop::MergeFrom(this, a2);
  }
}

uint64_t awd::metrics::BluetoothPBAPPhonebookTransferStop::Swap(uint64_t this, awd::metrics::BluetoothPBAPPhonebookTransferStop *a2)
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
    LODWORD(v6) = *(this + 44);
    *(this + 44) = *(a2 + 11);
    *(a2 + 11) = v6;
    LODWORD(v6) = *(this + 40);
    *(this + 40) = *(a2 + 10);
    *(a2 + 10) = v6;
  }

  return this;
}

uint64_t awd::metrics::BluetoothServiceConnectionAttempt::SharedCtor(uint64_t this)
{
  v1 = MEMORY[0x29EDC9758];
  *(this + 64) = MEMORY[0x29EDC9758];
  *(this + 72) = 0;
  *(this + 8) = 0;
  *(this + 16) = v1;
  *(this + 24) = 0;
  *(this + 28) = 0;
  *(this + 32) = v1;
  *(this + 40) = 0;
  *(this + 48) = 0;
  *(this + 56) = v1;
  return this;
}

awd::metrics::BluetoothServiceConnectionAttempt *awd::metrics::BluetoothServiceConnectionAttempt::BluetoothServiceConnectionAttempt(awd::metrics::BluetoothServiceConnectionAttempt *this, const awd::metrics::BluetoothServiceConnectionAttempt *a2)
{
  *(this + 9) = 0;
  *this = &unk_2A1D4A680;
  *(this + 1) = 0;
  v3 = MEMORY[0x29EDC9758];
  *(this + 2) = MEMORY[0x29EDC9758];
  *(this + 6) = 0;
  *(this + 14) = 0;
  *(this + 4) = v3;
  *(this + 5) = 0;
  *(this + 6) = 0;
  *(this + 7) = v3;
  *(this + 8) = v3;
  awd::metrics::BluetoothServiceConnectionAttempt::MergeFrom(this, a2);
  return this;
}

void awd::metrics::BluetoothServiceConnectionAttempt::MergeFrom(awd::metrics::BluetoothServiceConnectionAttempt *this, const awd::metrics::BluetoothServiceConnectionAttempt *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v22);
  }

  v4 = *(a2 + 19);
  if (!v4)
  {
    goto LABEL_14;
  }

  if (v4)
  {
    v5 = *(a2 + 1);
    *(this + 19) |= 1u;
    *(this + 1) = v5;
    v4 = *(a2 + 19);
  }

  v6 = MEMORY[0x29EDC9758];
  if ((v4 & 2) != 0)
  {
    v8 = *(a2 + 2);
    *(this + 19) |= 2u;
    v9 = *(this + 2);
    if (v9 == v6)
    {
      operator new();
    }

    std::string::operator=(v9, v8);
    v4 = *(a2 + 19);
    if ((v4 & 4) == 0)
    {
LABEL_8:
      if ((v4 & 8) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_24;
    }
  }

  else if ((v4 & 4) == 0)
  {
    goto LABEL_8;
  }

  v10 = *(a2 + 6);
  *(this + 19) |= 4u;
  *(this + 6) = v10;
  v4 = *(a2 + 19);
  if ((v4 & 8) == 0)
  {
LABEL_9:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_25;
  }

LABEL_24:
  v11 = *(a2 + 28);
  *(this + 19) |= 8u;
  *(this + 28) = v11;
  v4 = *(a2 + 19);
  if ((v4 & 0x10) == 0)
  {
LABEL_10:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_11;
    }

LABEL_26:
    v13 = *(a2 + 10);
    *(this + 19) |= 0x20u;
    *(this + 10) = v13;
    v4 = *(a2 + 19);
    if ((v4 & 0x40) == 0)
    {
LABEL_12:
      if ((v4 & 0x80) == 0)
      {
        goto LABEL_14;
      }

      goto LABEL_13;
    }

    goto LABEL_27;
  }

LABEL_25:
  v12 = *(a2 + 29);
  *(this + 19) |= 0x10u;
  *(this + 29) = v12;
  v4 = *(a2 + 19);
  if ((v4 & 0x20) != 0)
  {
    goto LABEL_26;
  }

LABEL_11:
  if ((v4 & 0x40) == 0)
  {
    goto LABEL_12;
  }

LABEL_27:
  v14 = *(a2 + 4);
  *(this + 19) |= 0x40u;
  v15 = *(this + 4);
  if (v15 == v6)
  {
    operator new();
  }

  std::string::operator=(v15, v14);
  v4 = *(a2 + 19);
  if ((v4 & 0x80) != 0)
  {
LABEL_13:
    v7 = *(a2 + 11);
    *(this + 19) |= 0x80u;
    *(this + 11) = v7;
    v4 = *(a2 + 19);
  }

LABEL_14:
  if ((v4 & 0xFF00) == 0)
  {
    return;
  }

  if ((v4 & 0x100) != 0)
  {
    v16 = *(a2 + 12);
    *(this + 19) |= 0x100u;
    *(this + 12) = v16;
    v4 = *(a2 + 19);
    if ((v4 & 0x200) == 0)
    {
LABEL_17:
      if ((v4 & 0x400) == 0)
      {
        goto LABEL_18;
      }

      goto LABEL_33;
    }
  }

  else if ((v4 & 0x200) == 0)
  {
    goto LABEL_17;
  }

  v17 = *(a2 + 13);
  *(this + 19) |= 0x200u;
  *(this + 13) = v17;
  v4 = *(a2 + 19);
  if ((v4 & 0x400) == 0)
  {
LABEL_18:
    if ((v4 & 0x800) == 0)
    {
      return;
    }

    goto LABEL_36;
  }

LABEL_33:
  v18 = *(a2 + 7);
  *(this + 19) |= 0x400u;
  v19 = *(this + 7);
  if (v19 == MEMORY[0x29EDC9758])
  {
    operator new();
  }

  std::string::operator=(v19, v18);
  if ((*(a2 + 19) & 0x800) != 0)
  {
LABEL_36:
    v20 = *(a2 + 8);
    *(this + 19) |= 0x800u;
    v21 = *(this + 8);
    if (v21 == MEMORY[0x29EDC9758])
    {
      operator new();
    }

    std::string::operator=(v21, v20);
  }
}

void sub_296354D90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::metrics::BluetoothServiceConnectionAttempt::~BluetoothServiceConnectionAttempt(awd::metrics::BluetoothServiceConnectionAttempt *this)
{
  *this = &unk_2A1D4A680;
  awd::metrics::BluetoothServiceConnectionAttempt::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2A1D4A680;
  awd::metrics::BluetoothServiceConnectionAttempt::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2A1D4A680;
  awd::metrics::BluetoothServiceConnectionAttempt::SharedDtor(this);
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  JUMPOUT(0x29C259F00);
}

void *awd::metrics::BluetoothServiceConnectionAttempt::SharedDtor(void *this)
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

    this = MEMORY[0x29C259F00](v2, 0x1012C40EC159624);
  }

  v5 = v1[4];
  if (v5 != v3 && v5 != 0)
  {
    if (*(v5 + 23) < 0)
    {
      operator delete(*v5);
    }

    this = MEMORY[0x29C259F00](v5, 0x1012C40EC159624);
  }

  v7 = v1[7];
  if (v7 != v3 && v7 != 0)
  {
    if (*(v7 + 23) < 0)
    {
      operator delete(*v7);
    }

    this = MEMORY[0x29C259F00](v7, 0x1012C40EC159624);
  }

  v9 = v1[8];
  if (v9 != v3 && v9 != 0)
  {
    if (*(v9 + 23) < 0)
    {
      operator delete(*v9);
    }

    JUMPOUT(0x29C259F00);
  }

  return this;
}

uint64_t awd::metrics::BluetoothServiceConnectionAttempt::default_instance(awd::metrics::BluetoothServiceConnectionAttempt *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = awd::metrics::BluetoothServiceConnectionAttempt::default_instance_;
  if (!awd::metrics::BluetoothServiceConnectionAttempt::default_instance_)
  {
    awd::metrics::protobuf_AddDesc_Bluetooth_2eproto(0, a2, a3, a4);
    return awd::metrics::BluetoothServiceConnectionAttempt::default_instance_;
  }

  return result;
}

uint64_t awd::metrics::BluetoothServiceConnectionAttempt::Clear(uint64_t this)
{
  v1 = *(this + 76);
  if (v1)
  {
    *(this + 8) = 0;
    v2 = MEMORY[0x29EDC9758];
    if ((v1 & 2) != 0)
    {
      v3 = *(this + 16);
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

    *(this + 24) = 0;
    *(this + 28) = 0;
    *(this + 40) = 0;
    if ((*(this + 76) & 0x40) != 0)
    {
      v4 = *(this + 32);
      if (v4 != v2)
      {
        if (*(v4 + 23) < 0)
        {
          **v4 = 0;
          *(v4 + 8) = 0;
        }

        else
        {
          *v4 = 0;
          *(v4 + 23) = 0;
        }
      }
    }

    *(this + 44) = 0;
    v1 = *(this + 76);
  }

  if ((v1 & 0xFF00) != 0)
  {
    *(this + 48) = 0;
    if ((v1 & 0x400) != 0)
    {
      v5 = *(this + 56);
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

    if ((*(this + 77) & 8) != 0)
    {
      v6 = *(this + 64);
      if (v6 != MEMORY[0x29EDC9758])
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
  }

  *(this + 76) = 0;
  return this;
}

uint64_t awd::metrics::BluetoothServiceConnectionAttempt::MergePartialFromCodedStream(awd::metrics::BluetoothServiceConnectionAttempt *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
{
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
          if (TagFallback >> 3 <= 6)
          {
            break;
          }

          if (TagFallback >> 3 > 0xA)
          {
            if (v8 == 11)
            {
              if ((TagFallback & 7) == 0)
              {
                v21 = *(a2 + 1);
                v12 = *(a2 + 2);
                goto LABEL_116;
              }

              goto LABEL_47;
            }

            if (v8 != 256)
            {
              if (v8 == 257 && v9 == 2)
              {
                goto LABEL_132;
              }

              goto LABEL_47;
            }

            if (v9 != 2)
            {
              goto LABEL_47;
            }

            v25 = *(this + 19);
LABEL_125:
            *(this + 19) = v25 | 0x400;
            if (*(this + 7) == v5)
            {
              operator new();
            }

            result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadBytes();
            if (!result)
            {
              return result;
            }

            v42 = *(a2 + 1);
            if (*(a2 + 4) - v42 >= 2 && *v42 == 138 && v42[1] == 16)
            {
              *(a2 + 1) = v42 + 2;
LABEL_132:
              *(this + 19) |= 0x800u;
              if (*(this + 8) == v5)
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

          else
          {
            if (v8 != 7)
            {
              if (v8 == 9)
              {
                if ((TagFallback & 7) == 0)
                {
                  v23 = *(a2 + 1);
                  v12 = *(a2 + 2);
                  goto LABEL_100;
                }
              }

              else if (v8 == 10 && (TagFallback & 7) == 0)
              {
                v13 = *(a2 + 1);
                v12 = *(a2 + 2);
                goto LABEL_108;
              }

              goto LABEL_47;
            }

            if (v9 != 2)
            {
              goto LABEL_47;
            }

            v19 = *(this + 19);
LABEL_94:
            *(this + 19) = v19 | 0x40;
            if (*(this + 4) == v5)
            {
              operator new();
            }

            result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
            if (!result)
            {
              return result;
            }

            v35 = *(a2 + 1);
            v12 = *(a2 + 2);
            if (v35 < v12 && *v35 == 72)
            {
              v23 = v35 + 1;
              *(a2 + 1) = v23;
LABEL_100:
              if (v23 >= v12 || (v36 = *v23, v36 < 0))
              {
                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 11);
                if (!result)
                {
                  return result;
                }

                v37 = *(a2 + 1);
                v12 = *(a2 + 2);
              }

              else
              {
                *(this + 11) = v36;
                v37 = v23 + 1;
                *(a2 + 1) = v37;
              }

              *(this + 19) |= 0x80u;
              if (v37 < v12 && *v37 == 80)
              {
                v13 = v37 + 1;
                *(a2 + 1) = v13;
LABEL_108:
                if (v13 >= v12 || (v38 = *v13, v38 < 0))
                {
                  result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 12);
                  if (!result)
                  {
                    return result;
                  }

                  v39 = *(a2 + 1);
                  v12 = *(a2 + 2);
                }

                else
                {
                  *(this + 12) = v38;
                  v39 = v13 + 1;
                  *(a2 + 1) = v39;
                }

                *(this + 19) |= 0x100u;
                if (v39 < v12 && *v39 == 88)
                {
                  v21 = v39 + 1;
                  *(a2 + 1) = v21;
LABEL_116:
                  if (v21 >= v12 || (v40 = *v21, v40 < 0))
                  {
                    result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 13);
                    if (!result)
                    {
                      return result;
                    }

                    v41 = *(a2 + 1);
                    v12 = *(a2 + 2);
                  }

                  else
                  {
                    *(this + 13) = v40;
                    v41 = (v21 + 1);
                    *(a2 + 1) = v41;
                  }

                  v25 = *(this + 19) | 0x200;
                  *(this + 19) = v25;
                  if (v12 - v41 >= 2 && *v41 == 130 && v41[1] == 16)
                  {
                    *(a2 + 1) = v41 + 2;
                    goto LABEL_125;
                  }
                }
              }
            }
          }
        }

        if (TagFallback >> 3 > 3)
        {
          if (v8 == 4)
          {
            if ((TagFallback & 7) == 0)
            {
              v20 = *(a2 + 1);
              v10 = *(a2 + 2);
              goto LABEL_70;
            }
          }

          else if (v8 == 5)
          {
            if ((TagFallback & 7) == 0)
            {
              v24 = *(a2 + 1);
              v10 = *(a2 + 2);
              goto LABEL_78;
            }
          }

          else if (v8 == 6 && (TagFallback & 7) == 0)
          {
            v14 = *(a2 + 1);
            v10 = *(a2 + 2);
            goto LABEL_86;
          }

          goto LABEL_47;
        }

        if (v8 != 1)
        {
          break;
        }

        if ((TagFallback & 7) != 0)
        {
          goto LABEL_47;
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

        v22 = *(this + 19) | 1;
        *(this + 19) = v22;
        if (v18 < v15 && *v18 == 18)
        {
          *(a2 + 1) = v18 + 1;
          goto LABEL_56;
        }
      }

      if (v8 != 2)
      {
        break;
      }

      if (v9 != 2)
      {
        goto LABEL_47;
      }

      v22 = *(this + 19);
LABEL_56:
      *(this + 19) = v22 | 2;
      if (*(this + 2) == v5)
      {
        operator new();
      }

      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadBytes();
      if (!result)
      {
        return result;
      }

      v26 = *(a2 + 1);
      v10 = *(a2 + 2);
      if (v26 < v10 && *v26 == 24)
      {
        v11 = v26 + 1;
        *(a2 + 1) = v11;
LABEL_62:
        if (v11 >= v10 || (v27 = *v11, v27 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 6);
          if (!result)
          {
            return result;
          }

          v28 = *(a2 + 1);
          v10 = *(a2 + 2);
        }

        else
        {
          *(this + 6) = v27;
          v28 = v11 + 1;
          *(a2 + 1) = v28;
        }

        *(this + 19) |= 4u;
        if (v28 < v10 && *v28 == 32)
        {
          v20 = v28 + 1;
          *(a2 + 1) = v20;
LABEL_70:
          v45 = 0;
          if (v20 >= v10 || (v29 = *v20, (v29 & 0x80000000) != 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v45);
            if (!result)
            {
              return result;
            }

            v29 = v45;
            v30 = *(a2 + 1);
            v10 = *(a2 + 2);
          }

          else
          {
            v30 = v20 + 1;
            *(a2 + 1) = v30;
          }

          *(this + 28) = v29 != 0;
          *(this + 19) |= 8u;
          if (v30 < v10 && *v30 == 40)
          {
            v24 = v30 + 1;
            *(a2 + 1) = v24;
LABEL_78:
            v44 = 0;
            if (v24 >= v10 || (v31 = *v24, (v31 & 0x80000000) != 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v44);
              if (!result)
              {
                return result;
              }

              v31 = v44;
              v32 = *(a2 + 1);
              v10 = *(a2 + 2);
            }

            else
            {
              v32 = v24 + 1;
              *(a2 + 1) = v32;
            }

            *(this + 29) = v31 != 0;
            *(this + 19) |= 0x10u;
            if (v32 < v10 && *v32 == 48)
            {
              v14 = v32 + 1;
              *(a2 + 1) = v14;
LABEL_86:
              if (v14 >= v10 || (v33 = *v14, v33 < 0))
              {
                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 10);
                if (!result)
                {
                  return result;
                }

                v34 = *(a2 + 1);
                v10 = *(a2 + 2);
              }

              else
              {
                *(this + 10) = v33;
                v34 = v14 + 1;
                *(a2 + 1) = v34;
              }

              v19 = *(this + 19) | 0x20;
              *(this + 19) = v19;
              if (v34 < v10 && *v34 == 58)
              {
                *(a2 + 1) = v34 + 1;
                goto LABEL_94;
              }
            }
          }
        }
      }
    }

    if (v8 == 3 && (TagFallback & 7) == 0)
    {
      v11 = *(a2 + 1);
      v10 = *(a2 + 2);
      goto LABEL_62;
    }

LABEL_47:
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

uint64_t awd::metrics::BluetoothServiceConnectionAttempt::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
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

      goto LABEL_16;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBytes();
  v6 = *(v5 + 76);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_17;
  }

LABEL_16:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(3, *(v5 + 24), a2, a4);
  v6 = *(v5 + 76);
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_18;
  }

LABEL_17:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(4, *(v5 + 28), a2, a4);
  v6 = *(v5 + 76);
  if ((v6 & 0x10) == 0)
  {
LABEL_6:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_19;
  }

LABEL_18:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(5, *(v5 + 29), a2, a4);
  v6 = *(v5 + 76);
  if ((v6 & 0x20) == 0)
  {
LABEL_7:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_20;
  }

LABEL_19:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(6, *(v5 + 40), a2, a4);
  v6 = *(v5 + 76);
  if ((v6 & 0x40) == 0)
  {
LABEL_8:
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_21;
  }

LABEL_20:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
  v6 = *(v5 + 76);
  if ((v6 & 0x80) == 0)
  {
LABEL_9:
    if ((v6 & 0x100) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_22;
  }

LABEL_21:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(9, *(v5 + 44), a2, a4);
  v6 = *(v5 + 76);
  if ((v6 & 0x100) == 0)
  {
LABEL_10:
    if ((v6 & 0x200) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_23;
  }

LABEL_22:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xA, *(v5 + 48), a2, a4);
  v6 = *(v5 + 76);
  if ((v6 & 0x200) == 0)
  {
LABEL_11:
    if ((v6 & 0x400) == 0)
    {
      goto LABEL_12;
    }

LABEL_24:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBytes();
    if ((*(v5 + 76) & 0x800) == 0)
    {
      return this;
    }

    goto LABEL_25;
  }

LABEL_23:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xB, *(v5 + 52), a2, a4);
  v6 = *(v5 + 76);
  if ((v6 & 0x400) != 0)
  {
    goto LABEL_24;
  }

LABEL_12:
  if ((v6 & 0x800) == 0)
  {
    return this;
  }

LABEL_25:

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
}

uint64_t awd::metrics::BluetoothServiceConnectionAttempt::ByteSize(awd::metrics::BluetoothServiceConnectionAttempt *this, unint64_t a2)
{
  v3 = *(this + 19);
  if (!v3)
  {
    v5 = 0;
    goto LABEL_42;
  }

  if (v3)
  {
    v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 1)) + 1;
    v3 = *(this + 19);
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
    v3 = *(this + 19);
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
    v12 = *(this + 6);
    if (v12 >= 0x80)
    {
      v13 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v12) + 1;
      v3 = *(this + 19);
    }

    else
    {
      v13 = 2;
    }

    v4 += v13;
  }

  v5 = ((v3 >> 2) & 2) + v4 + ((v3 >> 3) & 2);
  if ((v3 & 0x20) != 0)
  {
    v14 = *(this + 10);
    if (v14 >= 0x80)
    {
      v15 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v14) + 1;
      v3 = *(this + 19);
    }

    else
    {
      v15 = 2;
    }

    v5 = (v15 + v5);
    if ((v3 & 0x40) == 0)
    {
LABEL_23:
      if ((v3 & 0x80) == 0)
      {
        goto LABEL_42;
      }

      goto LABEL_38;
    }
  }

  else if ((v3 & 0x40) == 0)
  {
    goto LABEL_23;
  }

  v16 = *(this + 4);
  v17 = *(v16 + 23);
  v18 = v17;
  v19 = *(v16 + 8);
  if ((v17 & 0x80u) == 0)
  {
    v20 = *(v16 + 23);
  }

  else
  {
    v20 = v19;
  }

  if (v20 >= 0x80)
  {
    v21 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v20);
    v17 = *(v16 + 23);
    v19 = *(v16 + 8);
    v3 = *(this + 19);
    v18 = *(v16 + 23);
  }

  else
  {
    v21 = 1;
  }

  if (v18 < 0)
  {
    v17 = v19;
  }

  v5 = (v5 + v21 + v17 + 1);
  if ((v3 & 0x80) != 0)
  {
LABEL_38:
    v22 = *(this + 11);
    if (v22 >= 0x80)
    {
      v23 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v22) + 1;
      v3 = *(this + 19);
    }

    else
    {
      v23 = 2;
    }

    v5 = (v23 + v5);
  }

LABEL_42:
  if ((v3 & 0xFF00) == 0)
  {
    goto LABEL_74;
  }

  if ((v3 & 0x100) != 0)
  {
    v24 = *(this + 12);
    if (v24 >= 0x80)
    {
      v25 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v24) + 1;
      v3 = *(this + 19);
    }

    else
    {
      v25 = 2;
    }

    v5 = (v25 + v5);
    if ((v3 & 0x200) == 0)
    {
LABEL_45:
      if ((v3 & 0x400) == 0)
      {
        goto LABEL_46;
      }

      goto LABEL_56;
    }
  }

  else if ((v3 & 0x200) == 0)
  {
    goto LABEL_45;
  }

  v26 = *(this + 13);
  if (v26 >= 0x80)
  {
    v27 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v26) + 1;
    v3 = *(this + 19);
  }

  else
  {
    v27 = 2;
  }

  v5 = (v27 + v5);
  if ((v3 & 0x400) == 0)
  {
LABEL_46:
    if ((v3 & 0x800) == 0)
    {
      goto LABEL_74;
    }

    goto LABEL_65;
  }

LABEL_56:
  v28 = *(this + 7);
  v29 = *(v28 + 23);
  v30 = v29;
  v31 = *(v28 + 8);
  if ((v29 & 0x80u) == 0)
  {
    v32 = *(v28 + 23);
  }

  else
  {
    v32 = v31;
  }

  if (v32 >= 0x80)
  {
    v33 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v32);
    v29 = *(v28 + 23);
    v31 = *(v28 + 8);
    v3 = *(this + 19);
    v30 = *(v28 + 23);
  }

  else
  {
    v33 = 1;
  }

  if (v30 < 0)
  {
    v29 = v31;
  }

  v5 = (v5 + v33 + v29 + 2);
  if ((v3 & 0x800) != 0)
  {
LABEL_65:
    v34 = *(this + 8);
    v35 = *(v34 + 23);
    v36 = v35;
    v37 = *(v34 + 8);
    if ((v35 & 0x80u) == 0)
    {
      v38 = *(v34 + 23);
    }

    else
    {
      v38 = v37;
    }

    if (v38 >= 0x80)
    {
      v39 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v38);
      v35 = *(v34 + 23);
      v37 = *(v34 + 8);
      v36 = *(v34 + 23);
    }

    else
    {
      v39 = 1;
    }

    if (v36 < 0)
    {
      v35 = v37;
    }

    v5 = (v5 + v39 + v35 + 2);
  }

LABEL_74:
  *(this + 18) = v5;
  return v5;
}

void awd::metrics::BluetoothServiceConnectionAttempt::CheckTypeAndMergeFrom(awd::metrics::BluetoothServiceConnectionAttempt *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  {
    awd::metrics::BluetoothServiceConnectionAttempt::CheckTypeAndMergeFrom();
  }

  awd::metrics::BluetoothServiceConnectionAttempt::MergeFrom(this, lpsrc);
}

void awd::metrics::BluetoothServiceConnectionAttempt::CopyFrom(awd::metrics::BluetoothServiceConnectionAttempt *this, const awd::metrics::BluetoothServiceConnectionAttempt *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    awd::metrics::BluetoothServiceConnectionAttempt::MergeFrom(this, a2);
  }
}

uint64_t awd::metrics::BluetoothServiceConnectionAttempt::Swap(uint64_t this, awd::metrics::BluetoothServiceConnectionAttempt *a2)
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
    LOBYTE(v2) = *(this + 29);
    *(this + 29) = *(a2 + 29);
    *(a2 + 29) = v2;
    LODWORD(v2) = *(this + 40);
    *(this + 40) = *(a2 + 10);
    *(a2 + 10) = v2;
    v5 = *(this + 32);
    *(this + 32) = *(a2 + 4);
    *(a2 + 4) = v5;
    LODWORD(v5) = *(this + 44);
    *(this + 44) = *(a2 + 11);
    *(a2 + 11) = v5;
    LODWORD(v5) = *(this + 48);
    *(this + 48) = *(a2 + 12);
    *(a2 + 12) = v5;
    LODWORD(v5) = *(this + 52);
    *(this + 52) = *(a2 + 13);
    *(a2 + 13) = v5;
    v6 = *(this + 56);
    *(this + 56) = *(a2 + 7);
    *(a2 + 7) = v6;
    v7 = *(this + 64);
    *(this + 64) = *(a2 + 8);
    *(a2 + 8) = v7;
    LODWORD(v7) = *(this + 76);
    *(this + 76) = *(a2 + 19);
    *(a2 + 19) = v7;
    LODWORD(v7) = *(this + 72);
    *(this + 72) = *(a2 + 18);
    *(a2 + 18) = v7;
  }

  return this;
}

uint64_t awd::metrics::BluetoothServiceConnectionResult::SharedCtor(uint64_t this)
{
  v1 = MEMORY[0x29EDC9758];
  *(this + 76) = 0;
  *(this + 8) = 0;
  *(this + 16) = v1;
  *(this + 36) = 0;
  *(this + 24) = 0;
  *(this + 32) = 0;
  *(this + 40) = v1;
  *(this + 48) = 0;
  *(this + 72) = 0;
  *(this + 56) = v1;
  *(this + 64) = v1;
  return this;
}

awd::metrics::BluetoothServiceConnectionResult *awd::metrics::BluetoothServiceConnectionResult::BluetoothServiceConnectionResult(awd::metrics::BluetoothServiceConnectionResult *this, const awd::metrics::BluetoothServiceConnectionResult *a2)
{
  v3 = MEMORY[0x29EDC9758];
  *this = &unk_2A1D4A6F8;
  *(this + 1) = 0;
  *(this + 9) = 0;
  *(this + 2) = v3;
  *(this + 3) = 0;
  *(this + 32) = 0;
  *(this + 5) = v3;
  *(this + 6) = 0;
  *(this + 8) = v3;
  *(this + 9) = 0;
  *(this + 7) = v3;
  *(this + 20) = 0;
  awd::metrics::BluetoothServiceConnectionResult::MergeFrom(this, a2);
  return this;
}

void awd::metrics::BluetoothServiceConnectionResult::MergeFrom(awd::metrics::BluetoothServiceConnectionResult *this, const awd::metrics::BluetoothServiceConnectionResult *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v22);
  }

  v4 = *(a2 + 20);
  if (!v4)
  {
    goto LABEL_14;
  }

  if (v4)
  {
    v5 = *(a2 + 1);
    *(this + 20) |= 1u;
    *(this + 1) = v5;
    v4 = *(a2 + 20);
  }

  v6 = MEMORY[0x29EDC9758];
  if ((v4 & 2) != 0)
  {
    v8 = *(a2 + 2);
    *(this + 20) |= 2u;
    v9 = *(this + 2);
    if (v9 == v6)
    {
      operator new();
    }

    std::string::operator=(v9, v8);
    v4 = *(a2 + 20);
    if ((v4 & 4) == 0)
    {
LABEL_8:
      if ((v4 & 8) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_24;
    }
  }

  else if ((v4 & 4) == 0)
  {
    goto LABEL_8;
  }

  v10 = *(a2 + 6);
  *(this + 20) |= 4u;
  *(this + 6) = v10;
  v4 = *(a2 + 20);
  if ((v4 & 8) == 0)
  {
LABEL_9:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_25;
  }

LABEL_24:
  v11 = *(a2 + 7);
  *(this + 20) |= 8u;
  *(this + 7) = v11;
  v4 = *(a2 + 20);
  if ((v4 & 0x10) == 0)
  {
LABEL_10:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_11;
    }

LABEL_26:
    v13 = *(a2 + 9);
    *(this + 20) |= 0x20u;
    *(this + 9) = v13;
    v4 = *(a2 + 20);
    if ((v4 & 0x40) == 0)
    {
LABEL_12:
      if ((v4 & 0x80) == 0)
      {
        goto LABEL_14;
      }

      goto LABEL_13;
    }

    goto LABEL_27;
  }

LABEL_25:
  v12 = *(a2 + 32);
  *(this + 20) |= 0x10u;
  *(this + 32) = v12;
  v4 = *(a2 + 20);
  if ((v4 & 0x20) != 0)
  {
    goto LABEL_26;
  }

LABEL_11:
  if ((v4 & 0x40) == 0)
  {
    goto LABEL_12;
  }

LABEL_27:
  v14 = *(a2 + 5);
  *(this + 20) |= 0x40u;
  v15 = *(this + 5);
  if (v15 == v6)
  {
    operator new();
  }

  std::string::operator=(v15, v14);
  v4 = *(a2 + 20);
  if ((v4 & 0x80) != 0)
  {
LABEL_13:
    v7 = *(a2 + 12);
    *(this + 20) |= 0x80u;
    *(this + 12) = v7;
    v4 = *(a2 + 20);
  }

LABEL_14:
  if ((v4 & 0xFF00) == 0)
  {
    return;
  }

  if ((v4 & 0x100) != 0)
  {
    v16 = *(a2 + 13);
    *(this + 20) |= 0x100u;
    *(this + 13) = v16;
    v4 = *(a2 + 20);
    if ((v4 & 0x200) == 0)
    {
LABEL_17:
      if ((v4 & 0x400) == 0)
      {
        goto LABEL_18;
      }

      goto LABEL_33;
    }
  }

  else if ((v4 & 0x200) == 0)
  {
    goto LABEL_17;
  }

  v17 = *(a2 + 18);
  *(this + 20) |= 0x200u;
  *(this + 18) = v17;
  v4 = *(a2 + 20);
  if ((v4 & 0x400) == 0)
  {
LABEL_18:
    if ((v4 & 0x800) == 0)
    {
      return;
    }

    goto LABEL_36;
  }

LABEL_33:
  v18 = *(a2 + 7);
  *(this + 20) |= 0x400u;
  v19 = *(this + 7);
  if (v19 == MEMORY[0x29EDC9758])
  {
    operator new();
  }

  std::string::operator=(v19, v18);
  if ((*(a2 + 20) & 0x800) != 0)
  {
LABEL_36:
    v20 = *(a2 + 8);
    *(this + 20) |= 0x800u;
    v21 = *(this + 8);
    if (v21 == MEMORY[0x29EDC9758])
    {
      operator new();
    }

    std::string::operator=(v21, v20);
  }
}

void sub_296356200(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::metrics::BluetoothServiceConnectionResult::~BluetoothServiceConnectionResult(awd::metrics::BluetoothServiceConnectionResult *this)
{
  *this = &unk_2A1D4A6F8;
  awd::metrics::BluetoothServiceConnectionResult::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2A1D4A6F8;
  awd::metrics::BluetoothServiceConnectionResult::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2A1D4A6F8;
  awd::metrics::BluetoothServiceConnectionResult::SharedDtor(this);
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  JUMPOUT(0x29C259F00);
}

void *awd::metrics::BluetoothServiceConnectionResult::SharedDtor(void *this)
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

    this = MEMORY[0x29C259F00](v2, 0x1012C40EC159624);
  }

  v5 = v1[5];
  if (v5 != v3 && v5 != 0)
  {
    if (*(v5 + 23) < 0)
    {
      operator delete(*v5);
    }

    this = MEMORY[0x29C259F00](v5, 0x1012C40EC159624);
  }

  v7 = v1[7];
  if (v7 != v3 && v7 != 0)
  {
    if (*(v7 + 23) < 0)
    {
      operator delete(*v7);
    }

    this = MEMORY[0x29C259F00](v7, 0x1012C40EC159624);
  }

  v9 = v1[8];
  if (v9 != v3 && v9 != 0)
  {
    if (*(v9 + 23) < 0)
    {
      operator delete(*v9);
    }

    JUMPOUT(0x29C259F00);
  }

  return this;
}

uint64_t awd::metrics::BluetoothServiceConnectionResult::default_instance(awd::metrics::BluetoothServiceConnectionResult *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = awd::metrics::BluetoothServiceConnectionResult::default_instance_;
  if (!awd::metrics::BluetoothServiceConnectionResult::default_instance_)
  {
    awd::metrics::protobuf_AddDesc_Bluetooth_2eproto(0, a2, a3, a4);
    return awd::metrics::BluetoothServiceConnectionResult::default_instance_;
  }

  return result;
}

uint64_t awd::metrics::BluetoothServiceConnectionResult::Clear(uint64_t this)
{
  v1 = *(this + 80);
  if (v1)
  {
    *(this + 8) = 0;
    v2 = MEMORY[0x29EDC9758];
    if ((v1 & 2) != 0)
    {
      v3 = *(this + 16);
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

    *(this + 36) = 0;
    *(this + 24) = 0;
    *(this + 32) = 0;
    if ((*(this + 80) & 0x40) != 0)
    {
      v4 = *(this + 40);
      if (v4 != v2)
      {
        if (*(v4 + 23) < 0)
        {
          **v4 = 0;
          *(v4 + 8) = 0;
        }

        else
        {
          *v4 = 0;
          *(v4 + 23) = 0;
        }
      }
    }

    *(this + 48) = 0;
    v1 = *(this + 80);
  }

  if ((v1 & 0xFF00) != 0)
  {
    *(this + 52) = 0;
    *(this + 72) = 0;
    if ((v1 & 0x400) != 0)
    {
      v5 = *(this + 56);
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

    if ((*(this + 81) & 8) != 0)
    {
      v6 = *(this + 64);
      if (v6 != MEMORY[0x29EDC9758])
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
  }

  *(this + 80) = 0;
  return this;
}

uint64_t awd::metrics::BluetoothServiceConnectionResult::MergePartialFromCodedStream(awd::metrics::BluetoothServiceConnectionResult *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
{
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
          if (TagFallback >> 3 <= 6)
          {
            break;
          }

          if (TagFallback >> 3 > 0xA)
          {
            if (v8 == 11)
            {
              if ((TagFallback & 7) == 0)
              {
                v21 = *(a2 + 1);
                v12 = *(a2 + 2);
                goto LABEL_116;
              }

              goto LABEL_47;
            }

            if (v8 != 256)
            {
              if (v8 == 257 && v9 == 2)
              {
                goto LABEL_132;
              }

              goto LABEL_47;
            }

            if (v9 != 2)
            {
              goto LABEL_47;
            }

            v25 = *(this + 20);
LABEL_125:
            *(this + 20) = v25 | 0x400;
            if (*(this + 7) == v5)
            {
              operator new();
            }

            result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadBytes();
            if (!result)
            {
              return result;
            }

            v42 = *(a2 + 1);
            if (*(a2 + 4) - v42 >= 2 && *v42 == 138 && v42[1] == 16)
            {
              *(a2 + 1) = v42 + 2;
LABEL_132:
              *(this + 20) |= 0x800u;
              if (*(this + 8) == v5)
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

          else
          {
            if (v8 != 7)
            {
              if (v8 == 9)
              {
                if ((TagFallback & 7) == 0)
                {
                  v23 = *(a2 + 1);
                  v12 = *(a2 + 2);
                  goto LABEL_100;
                }
              }

              else if (v8 == 10 && (TagFallback & 7) == 0)
              {
                v13 = *(a2 + 1);
                v12 = *(a2 + 2);
                goto LABEL_108;
              }

              goto LABEL_47;
            }

            if (v9 != 2)
            {
              goto LABEL_47;
            }

            v19 = *(this + 20);
LABEL_94:
            *(this + 20) = v19 | 0x40;
            if (*(this + 5) == v5)
            {
              operator new();
            }

            result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
            if (!result)
            {
              return result;
            }

            v35 = *(a2 + 1);
            v12 = *(a2 + 2);
            if (v35 < v12 && *v35 == 72)
            {
              v23 = v35 + 1;
              *(a2 + 1) = v23;
LABEL_100:
              if (v23 >= v12 || (v36 = *v23, v36 < 0))
              {
                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 12);
                if (!result)
                {
                  return result;
                }

                v37 = *(a2 + 1);
                v12 = *(a2 + 2);
              }

              else
              {
                *(this + 12) = v36;
                v37 = v23 + 1;
                *(a2 + 1) = v37;
              }

              *(this + 20) |= 0x80u;
              if (v37 < v12 && *v37 == 80)
              {
                v13 = v37 + 1;
                *(a2 + 1) = v13;
LABEL_108:
                if (v13 >= v12 || (v38 = *v13, v38 < 0))
                {
                  result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 13);
                  if (!result)
                  {
                    return result;
                  }

                  v39 = *(a2 + 1);
                  v12 = *(a2 + 2);
                }

                else
                {
                  *(this + 13) = v38;
                  v39 = v13 + 1;
                  *(a2 + 1) = v39;
                }

                *(this + 20) |= 0x100u;
                if (v39 < v12 && *v39 == 88)
                {
                  v21 = v39 + 1;
                  *(a2 + 1) = v21;
LABEL_116:
                  if (v21 >= v12 || (v40 = *v21, v40 < 0))
                  {
                    result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 18);
                    if (!result)
                    {
                      return result;
                    }

                    v41 = *(a2 + 1);
                    v12 = *(a2 + 2);
                  }

                  else
                  {
                    *(this + 18) = v40;
                    v41 = (v21 + 1);
                    *(a2 + 1) = v41;
                  }

                  v25 = *(this + 20) | 0x200;
                  *(this + 20) = v25;
                  if (v12 - v41 >= 2 && *v41 == 130 && v41[1] == 16)
                  {
                    *(a2 + 1) = v41 + 2;
                    goto LABEL_125;
                  }
                }
              }
            }
          }
        }

        if (TagFallback >> 3 > 3)
        {
          if (v8 == 4)
          {
            if ((TagFallback & 7) == 0)
            {
              v20 = *(a2 + 1);
              v10 = *(a2 + 2);
              goto LABEL_70;
            }
          }

          else if (v8 == 5)
          {
            if ((TagFallback & 7) == 0)
            {
              v24 = *(a2 + 1);
              v10 = *(a2 + 2);
              goto LABEL_78;
            }
          }

          else if (v8 == 6 && (TagFallback & 7) == 0)
          {
            v14 = *(a2 + 1);
            v10 = *(a2 + 2);
            goto LABEL_86;
          }

          goto LABEL_47;
        }

        if (v8 != 1)
        {
          break;
        }

        if ((TagFallback & 7) != 0)
        {
          goto LABEL_47;
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

        v22 = *(this + 20) | 1;
        *(this + 20) = v22;
        if (v18 < v15 && *v18 == 18)
        {
          *(a2 + 1) = v18 + 1;
          goto LABEL_56;
        }
      }

      if (v8 != 2)
      {
        break;
      }

      if (v9 != 2)
      {
        goto LABEL_47;
      }

      v22 = *(this + 20);
LABEL_56:
      *(this + 20) = v22 | 2;
      if (*(this + 2) == v5)
      {
        operator new();
      }

      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadBytes();
      if (!result)
      {
        return result;
      }

      v26 = *(a2 + 1);
      v10 = *(a2 + 2);
      if (v26 < v10 && *v26 == 24)
      {
        v11 = v26 + 1;
        *(a2 + 1) = v11;
LABEL_62:
        if (v11 >= v10 || (v27 = *v11, v27 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 6);
          if (!result)
          {
            return result;
          }

          v28 = *(a2 + 1);
          v10 = *(a2 + 2);
        }

        else
        {
          *(this + 6) = v27;
          v28 = v11 + 1;
          *(a2 + 1) = v28;
        }

        *(this + 20) |= 4u;
        if (v28 < v10 && *v28 == 32)
        {
          v20 = v28 + 1;
          *(a2 + 1) = v20;
LABEL_70:
          if (v20 >= v10 || (v29 = *v20, v29 < 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 7);
            if (!result)
            {
              return result;
            }

            v30 = *(a2 + 1);
            v10 = *(a2 + 2);
          }

          else
          {
            *(this + 7) = v29;
            v30 = v20 + 1;
            *(a2 + 1) = v30;
          }

          *(this + 20) |= 8u;
          if (v30 < v10 && *v30 == 40)
          {
            v24 = v30 + 1;
            *(a2 + 1) = v24;
LABEL_78:
            v44 = 0;
            if (v24 >= v10 || (v31 = *v24, (v31 & 0x80000000) != 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v44);
              if (!result)
              {
                return result;
              }

              v31 = v44;
              v32 = *(a2 + 1);
              v10 = *(a2 + 2);
            }

            else
            {
              v32 = v24 + 1;
              *(a2 + 1) = v32;
            }

            *(this + 32) = v31 != 0;
            *(this + 20) |= 0x10u;
            if (v32 < v10 && *v32 == 48)
            {
              v14 = v32 + 1;
              *(a2 + 1) = v14;
LABEL_86:
              if (v14 >= v10 || (v33 = *v14, v33 < 0))
              {
                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 9);
                if (!result)
                {
                  return result;
                }

                v34 = *(a2 + 1);
                v10 = *(a2 + 2);
              }

              else
              {
                *(this + 9) = v33;
                v34 = v14 + 1;
                *(a2 + 1) = v34;
              }

              v19 = *(this + 20) | 0x20;
              *(this + 20) = v19;
              if (v34 < v10 && *v34 == 58)
              {
                *(a2 + 1) = v34 + 1;
                goto LABEL_94;
              }
            }
          }
        }
      }
    }

    if (v8 == 3 && (TagFallback & 7) == 0)
    {
      v11 = *(a2 + 1);
      v10 = *(a2 + 2);
      goto LABEL_62;
    }

LABEL_47:
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

uint64_t awd::metrics::BluetoothServiceConnectionResult::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 80);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(1, *(this + 8), a2, a4);
    v6 = *(v5 + 80);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_16;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBytes();
  v6 = *(v5 + 80);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_17;
  }

LABEL_16:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(3, *(v5 + 24), a2, a4);
  v6 = *(v5 + 80);
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_18;
  }

LABEL_17:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(4, *(v5 + 28), a2, a4);
  v6 = *(v5 + 80);
  if ((v6 & 0x10) == 0)
  {
LABEL_6:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_19;
  }

LABEL_18:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(5, *(v5 + 32), a2, a4);
  v6 = *(v5 + 80);
  if ((v6 & 0x20) == 0)
  {
LABEL_7:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_20;
  }

LABEL_19:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(6, *(v5 + 36), a2, a4);
  v6 = *(v5 + 80);
  if ((v6 & 0x40) == 0)
  {
LABEL_8:
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_21;
  }

LABEL_20:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
  v6 = *(v5 + 80);
  if ((v6 & 0x80) == 0)
  {
LABEL_9:
    if ((v6 & 0x100) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_22;
  }

LABEL_21:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(9, *(v5 + 48), a2, a4);
  v6 = *(v5 + 80);
  if ((v6 & 0x100) == 0)
  {
LABEL_10:
    if ((v6 & 0x200) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_23;
  }

LABEL_22:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xA, *(v5 + 52), a2, a4);
  v6 = *(v5 + 80);
  if ((v6 & 0x200) == 0)
  {
LABEL_11:
    if ((v6 & 0x400) == 0)
    {
      goto LABEL_12;
    }

LABEL_24:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBytes();
    if ((*(v5 + 80) & 0x800) == 0)
    {
      return this;
    }

    goto LABEL_25;
  }

LABEL_23:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xB, *(v5 + 72), a2, a4);
  v6 = *(v5 + 80);
  if ((v6 & 0x400) != 0)
  {
    goto LABEL_24;
  }

LABEL_12:
  if ((v6 & 0x800) == 0)
  {
    return this;
  }

LABEL_25:

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
}

uint64_t awd::metrics::BluetoothServiceConnectionResult::ByteSize(awd::metrics::BluetoothServiceConnectionResult *this, unint64_t a2)
{
  v3 = *(this + 20);
  if (!v3)
  {
    v5 = 0;
    goto LABEL_48;
  }

  if (v3)
  {
    v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 1)) + 1;
    v3 = *(this + 20);
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
    v3 = *(this + 20);
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
  if ((v3 & 4) == 0)
  {
    if ((v3 & 8) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_23;
  }

  v12 = *(this + 6);
  if (v12 >= 0x80)
  {
    v13 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v12) + 1;
    v3 = *(this + 20);
  }

  else
  {
    v13 = 2;
  }

  v4 += v13;
  if ((v3 & 8) != 0)
  {
LABEL_23:
    v14 = *(this + 7);
    if (v14 >= 0x80)
    {
      v15 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v14) + 1;
      v3 = *(this + 20);
    }

    else
    {
      v15 = 2;
    }

    v4 += v15;
  }

LABEL_27:
  v5 = ((v3 >> 3) & 2) + v4;
  if ((v3 & 0x20) != 0)
  {
    v16 = *(this + 9);
    if (v16 >= 0x80)
    {
      v17 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v16) + 1;
      v3 = *(this + 20);
    }

    else
    {
      v17 = 2;
    }

    v5 = (v17 + v5);
    if ((v3 & 0x40) == 0)
    {
LABEL_29:
      if ((v3 & 0x80) == 0)
      {
        goto LABEL_48;
      }

      goto LABEL_44;
    }
  }

  else if ((v3 & 0x40) == 0)
  {
    goto LABEL_29;
  }

  v18 = *(this + 5);
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
    v3 = *(this + 20);
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

  v5 = (v5 + v23 + v19 + 1);
  if ((v3 & 0x80) != 0)
  {
LABEL_44:
    v24 = *(this + 12);
    if (v24 >= 0x80)
    {
      v25 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v24) + 1;
      v3 = *(this + 20);
    }

    else
    {
      v25 = 2;
    }

    v5 = (v25 + v5);
  }

LABEL_48:
  if ((v3 & 0xFF00) == 0)
  {
    goto LABEL_80;
  }

  if ((v3 & 0x100) != 0)
  {
    v26 = *(this + 13);
    if (v26 >= 0x80)
    {
      v27 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v26) + 1;
      v3 = *(this + 20);
    }

    else
    {
      v27 = 2;
    }

    v5 = (v27 + v5);
    if ((v3 & 0x200) == 0)
    {
LABEL_51:
      if ((v3 & 0x400) == 0)
      {
        goto LABEL_52;
      }

      goto LABEL_62;
    }
  }

  else if ((v3 & 0x200) == 0)
  {
    goto LABEL_51;
  }

  v28 = *(this + 18);
  if (v28 >= 0x80)
  {
    v29 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v28) + 1;
    v3 = *(this + 20);
  }

  else
  {
    v29 = 2;
  }

  v5 = (v29 + v5);
  if ((v3 & 0x400) == 0)
  {
LABEL_52:
    if ((v3 & 0x800) == 0)
    {
      goto LABEL_80;
    }

    goto LABEL_71;
  }

LABEL_62:
  v30 = *(this + 7);
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
    v3 = *(this + 20);
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

  v5 = (v5 + v35 + v31 + 2);
  if ((v3 & 0x800) != 0)
  {
LABEL_71:
    v36 = *(this + 8);
    v37 = *(v36 + 23);
    v38 = v37;
    v39 = *(v36 + 8);
    if ((v37 & 0x80u) == 0)
    {
      v40 = *(v36 + 23);
    }

    else
    {
      v40 = v39;
    }

    if (v40 >= 0x80)
    {
      v41 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v40);
      v37 = *(v36 + 23);
      v39 = *(v36 + 8);
      v38 = *(v36 + 23);
    }

    else
    {
      v41 = 1;
    }

    if (v38 < 0)
    {
      v37 = v39;
    }

    v5 = (v5 + v41 + v37 + 2);
  }

LABEL_80:
  *(this + 19) = v5;
  return v5;
}

void awd::metrics::BluetoothServiceConnectionResult::CheckTypeAndMergeFrom(awd::metrics::BluetoothServiceConnectionResult *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  {
    awd::metrics::BluetoothServiceConnectionResult::CheckTypeAndMergeFrom();
  }

  awd::metrics::BluetoothServiceConnectionResult::MergeFrom(this, lpsrc);
}

void awd::metrics::BluetoothServiceConnectionResult::CopyFrom(awd::metrics::BluetoothServiceConnectionResult *this, const awd::metrics::BluetoothServiceConnectionResult *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    awd::metrics::BluetoothServiceConnectionResult::MergeFrom(this, a2);
  }
}

uint64_t awd::metrics::BluetoothServiceConnectionResult::Swap(uint64_t this, awd::metrics::BluetoothServiceConnectionResult *a2)
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
    LODWORD(v2) = *(this + 28);
    *(this + 28) = *(a2 + 7);
    *(a2 + 7) = v2;
    LOBYTE(v2) = *(this + 32);
    *(this + 32) = *(a2 + 32);
    *(a2 + 32) = v2;
    LODWORD(v2) = *(this + 36);
    *(this + 36) = *(a2 + 9);
    *(a2 + 9) = v2;
    v5 = *(this + 40);
    *(this + 40) = *(a2 + 5);
    *(a2 + 5) = v5;
    LODWORD(v5) = *(this + 48);
    *(this + 48) = *(a2 + 12);
    *(a2 + 12) = v5;
    LODWORD(v5) = *(this + 52);
    *(this + 52) = *(a2 + 13);
    *(a2 + 13) = v5;
    LODWORD(v5) = *(this + 72);
    *(this + 72) = *(a2 + 18);
    *(a2 + 18) = v5;
    v6 = *(this + 56);
    *(this + 56) = *(a2 + 7);
    *(a2 + 7) = v6;
    v7 = *(this + 64);
    *(this + 64) = *(a2 + 8);
    *(a2 + 8) = v7;
    LODWORD(v7) = *(this + 80);
    *(this + 80) = *(a2 + 20);
    *(a2 + 20) = v7;
    LODWORD(v7) = *(this + 76);
    *(this + 76) = *(a2 + 19);
    *(a2 + 19) = v7;
  }

  return this;
}

uint64_t awd::metrics::BluetoothServiceDisconnectionAttempt::SharedCtor(uint64_t this)
{
  v1 = MEMORY[0x29EDC9758];
  *(this + 64) = MEMORY[0x29EDC9758];
  *(this + 72) = 0;
  *(this + 8) = 0;
  *(this + 16) = v1;
  *(this + 24) = 0;
  *(this + 28) = 0;
  *(this + 32) = v1;
  *(this + 40) = 0;
  *(this + 48) = 0;
  *(this + 56) = v1;
  return this;
}

awd::metrics::BluetoothServiceDisconnectionAttempt *awd::metrics::BluetoothServiceDisconnectionAttempt::BluetoothServiceDisconnectionAttempt(awd::metrics::BluetoothServiceDisconnectionAttempt *this, const awd::metrics::BluetoothServiceDisconnectionAttempt *a2)
{
  *(this + 9) = 0;
  *this = &unk_2A1D4A770;
  *(this + 1) = 0;
  v3 = MEMORY[0x29EDC9758];
  *(this + 2) = MEMORY[0x29EDC9758];
  *(this + 6) = 0;
  *(this + 14) = 0;
  *(this + 4) = v3;
  *(this + 5) = 0;
  *(this + 6) = 0;
  *(this + 7) = v3;
  *(this + 8) = v3;
  awd::metrics::BluetoothServiceDisconnectionAttempt::MergeFrom(this, a2);
  return this;
}

void awd::metrics::BluetoothServiceDisconnectionAttempt::MergeFrom(awd::metrics::BluetoothServiceDisconnectionAttempt *this, const awd::metrics::BluetoothServiceDisconnectionAttempt *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v22);
  }

  v4 = *(a2 + 19);
  if (!v4)
  {
    goto LABEL_14;
  }

  if (v4)
  {
    v5 = *(a2 + 1);
    *(this + 19) |= 1u;
    *(this + 1) = v5;
    v4 = *(a2 + 19);
  }

  v6 = MEMORY[0x29EDC9758];
  if ((v4 & 2) != 0)
  {
    v8 = *(a2 + 2);
    *(this + 19) |= 2u;
    v9 = *(this + 2);
    if (v9 == v6)
    {
      operator new();
    }

    std::string::operator=(v9, v8);
    v4 = *(a2 + 19);
    if ((v4 & 4) == 0)
    {
LABEL_8:
      if ((v4 & 8) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_24;
    }
  }

  else if ((v4 & 4) == 0)
  {
    goto LABEL_8;
  }

  v10 = *(a2 + 6);
  *(this + 19) |= 4u;
  *(this + 6) = v10;
  v4 = *(a2 + 19);
  if ((v4 & 8) == 0)
  {
LABEL_9:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_25;
  }

LABEL_24:
  v11 = *(a2 + 28);
  *(this + 19) |= 8u;
  *(this + 28) = v11;
  v4 = *(a2 + 19);
  if ((v4 & 0x10) == 0)
  {
LABEL_10:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_11;
    }

LABEL_26:
    v13 = *(a2 + 10);
    *(this + 19) |= 0x20u;
    *(this + 10) = v13;
    v4 = *(a2 + 19);
    if ((v4 & 0x40) == 0)
    {
LABEL_12:
      if ((v4 & 0x80) == 0)
      {
        goto LABEL_14;
      }

      goto LABEL_13;
    }

    goto LABEL_27;
  }

LABEL_25:
  v12 = *(a2 + 29);
  *(this + 19) |= 0x10u;
  *(this + 29) = v12;
  v4 = *(a2 + 19);
  if ((v4 & 0x20) != 0)
  {
    goto LABEL_26;
  }

LABEL_11:
  if ((v4 & 0x40) == 0)
  {
    goto LABEL_12;
  }

LABEL_27:
  v14 = *(a2 + 4);
  *(this + 19) |= 0x40u;
  v15 = *(this + 4);
  if (v15 == v6)
  {
    operator new();
  }

  std::string::operator=(v15, v14);
  v4 = *(a2 + 19);
  if ((v4 & 0x80) != 0)
  {
LABEL_13:
    v7 = *(a2 + 11);
    *(this + 19) |= 0x80u;
    *(this + 11) = v7;
    v4 = *(a2 + 19);
  }

LABEL_14:
  if ((v4 & 0xFF00) == 0)
  {
    return;
  }

  if ((v4 & 0x100) != 0)
  {
    v16 = *(a2 + 12);
    *(this + 19) |= 0x100u;
    *(this + 12) = v16;
    v4 = *(a2 + 19);
    if ((v4 & 0x200) == 0)
    {
LABEL_17:
      if ((v4 & 0x400) == 0)
      {
        goto LABEL_18;
      }

      goto LABEL_33;
    }
  }

  else if ((v4 & 0x200) == 0)
  {
    goto LABEL_17;
  }

  v17 = *(a2 + 13);
  *(this + 19) |= 0x200u;
  *(this + 13) = v17;
  v4 = *(a2 + 19);
  if ((v4 & 0x400) == 0)
  {
LABEL_18:
    if ((v4 & 0x800) == 0)
    {
      return;
    }

    goto LABEL_36;
  }

LABEL_33:
  v18 = *(a2 + 7);
  *(this + 19) |= 0x400u;
  v19 = *(this + 7);
  if (v19 == MEMORY[0x29EDC9758])
  {
    operator new();
  }

  std::string::operator=(v19, v18);
  if ((*(a2 + 19) & 0x800) != 0)
  {
LABEL_36:
    v20 = *(a2 + 8);
    *(this + 19) |= 0x800u;
    v21 = *(this + 8);
    if (v21 == MEMORY[0x29EDC9758])
    {
      operator new();
    }

    std::string::operator=(v21, v20);
  }
}

void sub_296357680(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::metrics::BluetoothServiceDisconnectionAttempt::~BluetoothServiceDisconnectionAttempt(awd::metrics::BluetoothServiceDisconnectionAttempt *this)
{
  *this = &unk_2A1D4A770;
  awd::metrics::BluetoothServiceDisconnectionAttempt::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2A1D4A770;
  awd::metrics::BluetoothServiceDisconnectionAttempt::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2A1D4A770;
  awd::metrics::BluetoothServiceDisconnectionAttempt::SharedDtor(this);
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  JUMPOUT(0x29C259F00);
}

void *awd::metrics::BluetoothServiceDisconnectionAttempt::SharedDtor(void *this)
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

    this = MEMORY[0x29C259F00](v2, 0x1012C40EC159624);
  }

  v5 = v1[4];
  if (v5 != v3 && v5 != 0)
  {
    if (*(v5 + 23) < 0)
    {
      operator delete(*v5);
    }

    this = MEMORY[0x29C259F00](v5, 0x1012C40EC159624);
  }

  v7 = v1[7];
  if (v7 != v3 && v7 != 0)
  {
    if (*(v7 + 23) < 0)
    {
      operator delete(*v7);
    }

    this = MEMORY[0x29C259F00](v7, 0x1012C40EC159624);
  }

  v9 = v1[8];
  if (v9 != v3 && v9 != 0)
  {
    if (*(v9 + 23) < 0)
    {
      operator delete(*v9);
    }

    JUMPOUT(0x29C259F00);
  }

  return this;
}

uint64_t awd::metrics::BluetoothServiceDisconnectionAttempt::default_instance(awd::metrics::BluetoothServiceDisconnectionAttempt *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = awd::metrics::BluetoothServiceDisconnectionAttempt::default_instance_;
  if (!awd::metrics::BluetoothServiceDisconnectionAttempt::default_instance_)
  {
    awd::metrics::protobuf_AddDesc_Bluetooth_2eproto(0, a2, a3, a4);
    return awd::metrics::BluetoothServiceDisconnectionAttempt::default_instance_;
  }

  return result;
}

uint64_t awd::metrics::BluetoothServiceDisconnectionAttempt::Clear(uint64_t this)
{
  v1 = *(this + 76);
  if (v1)
  {
    *(this + 8) = 0;
    v2 = MEMORY[0x29EDC9758];
    if ((v1 & 2) != 0)
    {
      v3 = *(this + 16);
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

    *(this + 24) = 0;
    *(this + 28) = 0;
    *(this + 40) = 0;
    if ((*(this + 76) & 0x40) != 0)
    {
      v4 = *(this + 32);
      if (v4 != v2)
      {
        if (*(v4 + 23) < 0)
        {
          **v4 = 0;
          *(v4 + 8) = 0;
        }

        else
        {
          *v4 = 0;
          *(v4 + 23) = 0;
        }
      }
    }

    *(this + 44) = 0;
    v1 = *(this + 76);
  }

  if ((v1 & 0xFF00) != 0)
  {
    *(this + 48) = 0;
    if ((v1 & 0x400) != 0)
    {
      v5 = *(this + 56);
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

    if ((*(this + 77) & 8) != 0)
    {
      v6 = *(this + 64);
      if (v6 != MEMORY[0x29EDC9758])
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
  }

  *(this + 76) = 0;
  return this;
}

uint64_t awd::metrics::BluetoothServiceDisconnectionAttempt::MergePartialFromCodedStream(awd::metrics::BluetoothServiceDisconnectionAttempt *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
{
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
          if (TagFallback >> 3 <= 6)
          {
            break;
          }

          if (TagFallback >> 3 > 0xA)
          {
            if (v8 == 11)
            {
              if ((TagFallback & 7) == 0)
              {
                v21 = *(a2 + 1);
                v12 = *(a2 + 2);
                goto LABEL_116;
              }

              goto LABEL_47;
            }

            if (v8 != 256)
            {
              if (v8 == 257 && v9 == 2)
              {
                goto LABEL_132;
              }

              goto LABEL_47;
            }

            if (v9 != 2)
            {
              goto LABEL_47;
            }

            v25 = *(this + 19);
LABEL_125:
            *(this + 19) = v25 | 0x400;
            if (*(this + 7) == v5)
            {
              operator new();
            }

            result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadBytes();
            if (!result)
            {
              return result;
            }

            v42 = *(a2 + 1);
            if (*(a2 + 4) - v42 >= 2 && *v42 == 138 && v42[1] == 16)
            {
              *(a2 + 1) = v42 + 2;
LABEL_132:
              *(this + 19) |= 0x800u;
              if (*(this + 8) == v5)
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

          else
          {
            if (v8 != 7)
            {
              if (v8 == 9)
              {
                if ((TagFallback & 7) == 0)
                {
                  v23 = *(a2 + 1);
                  v12 = *(a2 + 2);
                  goto LABEL_100;
                }
              }

              else if (v8 == 10 && (TagFallback & 7) == 0)
              {
                v13 = *(a2 + 1);
                v12 = *(a2 + 2);
                goto LABEL_108;
              }

              goto LABEL_47;
            }

            if (v9 != 2)
            {
              goto LABEL_47;
            }

            v19 = *(this + 19);
LABEL_94:
            *(this + 19) = v19 | 0x40;
            if (*(this + 4) == v5)
            {
              operator new();
            }

            result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
            if (!result)
            {
              return result;
            }

            v35 = *(a2 + 1);
            v12 = *(a2 + 2);
            if (v35 < v12 && *v35 == 72)
            {
              v23 = v35 + 1;
              *(a2 + 1) = v23;
LABEL_100:
              if (v23 >= v12 || (v36 = *v23, v36 < 0))
              {
                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 11);
                if (!result)
                {
                  return result;
                }

                v37 = *(a2 + 1);
                v12 = *(a2 + 2);
              }

              else
              {
                *(this + 11) = v36;
                v37 = v23 + 1;
                *(a2 + 1) = v37;
              }

              *(this + 19) |= 0x80u;
              if (v37 < v12 && *v37 == 80)
              {
                v13 = v37 + 1;
                *(a2 + 1) = v13;
LABEL_108:
                if (v13 >= v12 || (v38 = *v13, v38 < 0))
                {
                  result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 12);
                  if (!result)
                  {
                    return result;
                  }

                  v39 = *(a2 + 1);
                  v12 = *(a2 + 2);
                }

                else
                {
                  *(this + 12) = v38;
                  v39 = v13 + 1;
                  *(a2 + 1) = v39;
                }

                *(this + 19) |= 0x100u;
                if (v39 < v12 && *v39 == 88)
                {
                  v21 = v39 + 1;
                  *(a2 + 1) = v21;
LABEL_116:
                  if (v21 >= v12 || (v40 = *v21, v40 < 0))
                  {
                    result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 13);
                    if (!result)
                    {
                      return result;
                    }

                    v41 = *(a2 + 1);
                    v12 = *(a2 + 2);
                  }

                  else
                  {
                    *(this + 13) = v40;
                    v41 = (v21 + 1);
                    *(a2 + 1) = v41;
                  }

                  v25 = *(this + 19) | 0x200;
                  *(this + 19) = v25;
                  if (v12 - v41 >= 2 && *v41 == 130 && v41[1] == 16)
                  {
                    *(a2 + 1) = v41 + 2;
                    goto LABEL_125;
                  }
                }
              }
            }
          }
        }

        if (TagFallback >> 3 > 3)
        {
          if (v8 == 4)
          {
            if ((TagFallback & 7) == 0)
            {
              v20 = *(a2 + 1);
              v10 = *(a2 + 2);
              goto LABEL_70;
            }
          }

          else if (v8 == 5)
          {
            if ((TagFallback & 7) == 0)
            {
              v24 = *(a2 + 1);
              v10 = *(a2 + 2);
              goto LABEL_78;
            }
          }

          else if (v8 == 6 && (TagFallback & 7) == 0)
          {
            v14 = *(a2 + 1);
            v10 = *(a2 + 2);
            goto LABEL_86;
          }

          goto LABEL_47;
        }

        if (v8 != 1)
        {
          break;
        }

        if ((TagFallback & 7) != 0)
        {
          goto LABEL_47;
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

        v22 = *(this + 19) | 1;
        *(this + 19) = v22;
        if (v18 < v15 && *v18 == 18)
        {
          *(a2 + 1) = v18 + 1;
          goto LABEL_56;
        }
      }

      if (v8 != 2)
      {
        break;
      }

      if (v9 != 2)
      {
        goto LABEL_47;
      }

      v22 = *(this + 19);
LABEL_56:
      *(this + 19) = v22 | 2;
      if (*(this + 2) == v5)
      {
        operator new();
      }

      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadBytes();
      if (!result)
      {
        return result;
      }

      v26 = *(a2 + 1);
      v10 = *(a2 + 2);
      if (v26 < v10 && *v26 == 24)
      {
        v11 = v26 + 1;
        *(a2 + 1) = v11;
LABEL_62:
        if (v11 >= v10 || (v27 = *v11, v27 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 6);
          if (!result)
          {
            return result;
          }

          v28 = *(a2 + 1);
          v10 = *(a2 + 2);
        }

        else
        {
          *(this + 6) = v27;
          v28 = v11 + 1;
          *(a2 + 1) = v28;
        }

        *(this + 19) |= 4u;
        if (v28 < v10 && *v28 == 32)
        {
          v20 = v28 + 1;
          *(a2 + 1) = v20;
LABEL_70:
          v45 = 0;
          if (v20 >= v10 || (v29 = *v20, (v29 & 0x80000000) != 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v45);
            if (!result)
            {
              return result;
            }

            v29 = v45;
            v30 = *(a2 + 1);
            v10 = *(a2 + 2);
          }

          else
          {
            v30 = v20 + 1;
            *(a2 + 1) = v30;
          }

          *(this + 28) = v29 != 0;
          *(this + 19) |= 8u;
          if (v30 < v10 && *v30 == 40)
          {
            v24 = v30 + 1;
            *(a2 + 1) = v24;
LABEL_78:
            v44 = 0;
            if (v24 >= v10 || (v31 = *v24, (v31 & 0x80000000) != 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v44);
              if (!result)
              {
                return result;
              }

              v31 = v44;
              v32 = *(a2 + 1);
              v10 = *(a2 + 2);
            }

            else
            {
              v32 = v24 + 1;
              *(a2 + 1) = v32;
            }

            *(this + 29) = v31 != 0;
            *(this + 19) |= 0x10u;
            if (v32 < v10 && *v32 == 48)
            {
              v14 = v32 + 1;
              *(a2 + 1) = v14;
LABEL_86:
              if (v14 >= v10 || (v33 = *v14, v33 < 0))
              {
                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 10);
                if (!result)
                {
                  return result;
                }

                v34 = *(a2 + 1);
                v10 = *(a2 + 2);
              }

              else
              {
                *(this + 10) = v33;
                v34 = v14 + 1;
                *(a2 + 1) = v34;
              }

              v19 = *(this + 19) | 0x20;
              *(this + 19) = v19;
              if (v34 < v10 && *v34 == 58)
              {
                *(a2 + 1) = v34 + 1;
                goto LABEL_94;
              }
            }
          }
        }
      }
    }

    if (v8 == 3 && (TagFallback & 7) == 0)
    {
      v11 = *(a2 + 1);
      v10 = *(a2 + 2);
      goto LABEL_62;
    }

LABEL_47:
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

uint64_t awd::metrics::BluetoothServiceDisconnectionAttempt::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
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

      goto LABEL_16;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBytes();
  v6 = *(v5 + 76);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_17;
  }

LABEL_16:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(3, *(v5 + 24), a2, a4);
  v6 = *(v5 + 76);
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_18;
  }

LABEL_17:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(4, *(v5 + 28), a2, a4);
  v6 = *(v5 + 76);
  if ((v6 & 0x10) == 0)
  {
LABEL_6:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_19;
  }

LABEL_18:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(5, *(v5 + 29), a2, a4);
  v6 = *(v5 + 76);
  if ((v6 & 0x20) == 0)
  {
LABEL_7:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_20;
  }

LABEL_19:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(6, *(v5 + 40), a2, a4);
  v6 = *(v5 + 76);
  if ((v6 & 0x40) == 0)
  {
LABEL_8:
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_21;
  }

LABEL_20:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
  v6 = *(v5 + 76);
  if ((v6 & 0x80) == 0)
  {
LABEL_9:
    if ((v6 & 0x100) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_22;
  }

LABEL_21:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(9, *(v5 + 44), a2, a4);
  v6 = *(v5 + 76);
  if ((v6 & 0x100) == 0)
  {
LABEL_10:
    if ((v6 & 0x200) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_23;
  }

LABEL_22:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xA, *(v5 + 48), a2, a4);
  v6 = *(v5 + 76);
  if ((v6 & 0x200) == 0)
  {
LABEL_11:
    if ((v6 & 0x400) == 0)
    {
      goto LABEL_12;
    }

LABEL_24:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBytes();
    if ((*(v5 + 76) & 0x800) == 0)
    {
      return this;
    }

    goto LABEL_25;
  }

LABEL_23:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xB, *(v5 + 52), a2, a4);
  v6 = *(v5 + 76);
  if ((v6 & 0x400) != 0)
  {
    goto LABEL_24;
  }

LABEL_12:
  if ((v6 & 0x800) == 0)
  {
    return this;
  }

LABEL_25:

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
}

uint64_t awd::metrics::BluetoothServiceDisconnectionAttempt::ByteSize(awd::metrics::BluetoothServiceDisconnectionAttempt *this, unint64_t a2)
{
  v3 = *(this + 19);
  if (!v3)
  {
    v5 = 0;
    goto LABEL_42;
  }

  if (v3)
  {
    v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 1)) + 1;
    v3 = *(this + 19);
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
    v3 = *(this + 19);
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
    v12 = *(this + 6);
    if (v12 >= 0x80)
    {
      v13 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v12) + 1;
      v3 = *(this + 19);
    }

    else
    {
      v13 = 2;
    }

    v4 += v13;
  }

  v5 = ((v3 >> 2) & 2) + v4 + ((v3 >> 3) & 2);
  if ((v3 & 0x20) != 0)
  {
    v14 = *(this + 10);
    if (v14 >= 0x80)
    {
      v15 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v14) + 1;
      v3 = *(this + 19);
    }

    else
    {
      v15 = 2;
    }

    v5 = (v15 + v5);
    if ((v3 & 0x40) == 0)
    {
LABEL_23:
      if ((v3 & 0x80) == 0)
      {
        goto LABEL_42;
      }

      goto LABEL_38;
    }
  }

  else if ((v3 & 0x40) == 0)
  {
    goto LABEL_23;
  }

  v16 = *(this + 4);
  v17 = *(v16 + 23);
  v18 = v17;
  v19 = *(v16 + 8);
  if ((v17 & 0x80u) == 0)
  {
    v20 = *(v16 + 23);
  }

  else
  {
    v20 = v19;
  }

  if (v20 >= 0x80)
  {
    v21 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v20);
    v17 = *(v16 + 23);
    v19 = *(v16 + 8);
    v3 = *(this + 19);
    v18 = *(v16 + 23);
  }

  else
  {
    v21 = 1;
  }

  if (v18 < 0)
  {
    v17 = v19;
  }

  v5 = (v5 + v21 + v17 + 1);
  if ((v3 & 0x80) != 0)
  {
LABEL_38:
    v22 = *(this + 11);
    if (v22 >= 0x80)
    {
      v23 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v22) + 1;
      v3 = *(this + 19);
    }

    else
    {
      v23 = 2;
    }

    v5 = (v23 + v5);
  }

LABEL_42:
  if ((v3 & 0xFF00) == 0)
  {
    goto LABEL_74;
  }

  if ((v3 & 0x100) != 0)
  {
    v24 = *(this + 12);
    if (v24 >= 0x80)
    {
      v25 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v24) + 1;
      v3 = *(this + 19);
    }

    else
    {
      v25 = 2;
    }

    v5 = (v25 + v5);
    if ((v3 & 0x200) == 0)
    {
LABEL_45:
      if ((v3 & 0x400) == 0)
      {
        goto LABEL_46;
      }

      goto LABEL_56;
    }
  }

  else if ((v3 & 0x200) == 0)
  {
    goto LABEL_45;
  }

  v26 = *(this + 13);
  if (v26 >= 0x80)
  {
    v27 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v26) + 1;
    v3 = *(this + 19);
  }

  else
  {
    v27 = 2;
  }

  v5 = (v27 + v5);
  if ((v3 & 0x400) == 0)
  {
LABEL_46:
    if ((v3 & 0x800) == 0)
    {
      goto LABEL_74;
    }

    goto LABEL_65;
  }

LABEL_56:
  v28 = *(this + 7);
  v29 = *(v28 + 23);
  v30 = v29;
  v31 = *(v28 + 8);
  if ((v29 & 0x80u) == 0)
  {
    v32 = *(v28 + 23);
  }

  else
  {
    v32 = v31;
  }

  if (v32 >= 0x80)
  {
    v33 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v32);
    v29 = *(v28 + 23);
    v31 = *(v28 + 8);
    v3 = *(this + 19);
    v30 = *(v28 + 23);
  }

  else
  {
    v33 = 1;
  }

  if (v30 < 0)
  {
    v29 = v31;
  }

  v5 = (v5 + v33 + v29 + 2);
  if ((v3 & 0x800) != 0)
  {
LABEL_65:
    v34 = *(this + 8);
    v35 = *(v34 + 23);
    v36 = v35;
    v37 = *(v34 + 8);
    if ((v35 & 0x80u) == 0)
    {
      v38 = *(v34 + 23);
    }

    else
    {
      v38 = v37;
    }

    if (v38 >= 0x80)
    {
      v39 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v38);
      v35 = *(v34 + 23);
      v37 = *(v34 + 8);
      v36 = *(v34 + 23);
    }

    else
    {
      v39 = 1;
    }

    if (v36 < 0)
    {
      v35 = v37;
    }

    v5 = (v5 + v39 + v35 + 2);
  }

LABEL_74:
  *(this + 18) = v5;
  return v5;
}

void awd::metrics::BluetoothServiceDisconnectionAttempt::CheckTypeAndMergeFrom(awd::metrics::BluetoothServiceDisconnectionAttempt *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  {
    awd::metrics::BluetoothServiceDisconnectionAttempt::CheckTypeAndMergeFrom();
  }

  awd::metrics::BluetoothServiceDisconnectionAttempt::MergeFrom(this, lpsrc);
}

void awd::metrics::BluetoothServiceDisconnectionAttempt::CopyFrom(awd::metrics::BluetoothServiceDisconnectionAttempt *this, const awd::metrics::BluetoothServiceDisconnectionAttempt *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    awd::metrics::BluetoothServiceDisconnectionAttempt::MergeFrom(this, a2);
  }
}

uint64_t awd::metrics::BluetoothServiceDisconnectionAttempt::Swap(uint64_t this, awd::metrics::BluetoothServiceDisconnectionAttempt *a2)
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
    LOBYTE(v2) = *(this + 29);
    *(this + 29) = *(a2 + 29);
    *(a2 + 29) = v2;
    LODWORD(v2) = *(this + 40);
    *(this + 40) = *(a2 + 10);
    *(a2 + 10) = v2;
    v5 = *(this + 32);
    *(this + 32) = *(a2 + 4);
    *(a2 + 4) = v5;
    LODWORD(v5) = *(this + 44);
    *(this + 44) = *(a2 + 11);
    *(a2 + 11) = v5;
    LODWORD(v5) = *(this + 48);
    *(this + 48) = *(a2 + 12);
    *(a2 + 12) = v5;
    LODWORD(v5) = *(this + 52);
    *(this + 52) = *(a2 + 13);
    *(a2 + 13) = v5;
    v6 = *(this + 56);
    *(this + 56) = *(a2 + 7);
    *(a2 + 7) = v6;
    v7 = *(this + 64);
    *(this + 64) = *(a2 + 8);
    *(a2 + 8) = v7;
    LODWORD(v7) = *(this + 76);
    *(this + 76) = *(a2 + 19);
    *(a2 + 19) = v7;
    LODWORD(v7) = *(this + 72);
    *(this + 72) = *(a2 + 18);
    *(a2 + 18) = v7;
  }

  return this;
}

uint64_t awd::metrics::BluetoothServiceDisconnectionResult::SharedCtor(uint64_t this)
{
  v1 = MEMORY[0x29EDC9758];
  *(this + 76) = 0;
  *(this + 8) = 0;
  *(this + 16) = v1;
  *(this + 36) = 0;
  *(this + 24) = 0;
  *(this + 32) = 0;
  *(this + 40) = v1;
  *(this + 48) = 0;
  *(this + 72) = 0;
  *(this + 56) = v1;
  *(this + 64) = v1;
  return this;
}

awd::metrics::BluetoothServiceDisconnectionResult *awd::metrics::BluetoothServiceDisconnectionResult::BluetoothServiceDisconnectionResult(awd::metrics::BluetoothServiceDisconnectionResult *this, const awd::metrics::BluetoothServiceDisconnectionResult *a2)
{
  v3 = MEMORY[0x29EDC9758];
  *this = &unk_2A1D4A7E8;
  *(this + 1) = 0;
  *(this + 9) = 0;
  *(this + 2) = v3;
  *(this + 3) = 0;
  *(this + 32) = 0;
  *(this + 5) = v3;
  *(this + 6) = 0;
  *(this + 8) = v3;
  *(this + 9) = 0;
  *(this + 7) = v3;
  *(this + 20) = 0;
  awd::metrics::BluetoothServiceDisconnectionResult::MergeFrom(this, a2);
  return this;
}

void awd::metrics::BluetoothServiceDisconnectionResult::MergeFrom(awd::metrics::BluetoothServiceDisconnectionResult *this, const awd::metrics::BluetoothServiceDisconnectionResult *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v22);
  }

  v4 = *(a2 + 20);
  if (!v4)
  {
    goto LABEL_14;
  }

  if (v4)
  {
    v5 = *(a2 + 1);
    *(this + 20) |= 1u;
    *(this + 1) = v5;
    v4 = *(a2 + 20);
  }

  v6 = MEMORY[0x29EDC9758];
  if ((v4 & 2) != 0)
  {
    v8 = *(a2 + 2);
    *(this + 20) |= 2u;
    v9 = *(this + 2);
    if (v9 == v6)
    {
      operator new();
    }

    std::string::operator=(v9, v8);
    v4 = *(a2 + 20);
    if ((v4 & 4) == 0)
    {
LABEL_8:
      if ((v4 & 8) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_24;
    }
  }

  else if ((v4 & 4) == 0)
  {
    goto LABEL_8;
  }

  v10 = *(a2 + 6);
  *(this + 20) |= 4u;
  *(this + 6) = v10;
  v4 = *(a2 + 20);
  if ((v4 & 8) == 0)
  {
LABEL_9:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_25;
  }

LABEL_24:
  v11 = *(a2 + 7);
  *(this + 20) |= 8u;
  *(this + 7) = v11;
  v4 = *(a2 + 20);
  if ((v4 & 0x10) == 0)
  {
LABEL_10:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_11;
    }

LABEL_26:
    v13 = *(a2 + 9);
    *(this + 20) |= 0x20u;
    *(this + 9) = v13;
    v4 = *(a2 + 20);
    if ((v4 & 0x40) == 0)
    {
LABEL_12:
      if ((v4 & 0x80) == 0)
      {
        goto LABEL_14;
      }

      goto LABEL_13;
    }

    goto LABEL_27;
  }

LABEL_25:
  v12 = *(a2 + 32);
  *(this + 20) |= 0x10u;
  *(this + 32) = v12;
  v4 = *(a2 + 20);
  if ((v4 & 0x20) != 0)
  {
    goto LABEL_26;
  }

LABEL_11:
  if ((v4 & 0x40) == 0)
  {
    goto LABEL_12;
  }

LABEL_27:
  v14 = *(a2 + 5);
  *(this + 20) |= 0x40u;
  v15 = *(this + 5);
  if (v15 == v6)
  {
    operator new();
  }

  std::string::operator=(v15, v14);
  v4 = *(a2 + 20);
  if ((v4 & 0x80) != 0)
  {
LABEL_13:
    v7 = *(a2 + 12);
    *(this + 20) |= 0x80u;
    *(this + 12) = v7;
    v4 = *(a2 + 20);
  }

LABEL_14:
  if ((v4 & 0xFF00) == 0)
  {
    return;
  }

  if ((v4 & 0x100) != 0)
  {
    v16 = *(a2 + 13);
    *(this + 20) |= 0x100u;
    *(this + 13) = v16;
    v4 = *(a2 + 20);
    if ((v4 & 0x200) == 0)
    {
LABEL_17:
      if ((v4 & 0x400) == 0)
      {
        goto LABEL_18;
      }

      goto LABEL_33;
    }
  }

  else if ((v4 & 0x200) == 0)
  {
    goto LABEL_17;
  }

  v17 = *(a2 + 18);
  *(this + 20) |= 0x200u;
  *(this + 18) = v17;
  v4 = *(a2 + 20);
  if ((v4 & 0x400) == 0)
  {
LABEL_18:
    if ((v4 & 0x800) == 0)
    {
      return;
    }

    goto LABEL_36;
  }

LABEL_33:
  v18 = *(a2 + 7);
  *(this + 20) |= 0x400u;
  v19 = *(this + 7);
  if (v19 == MEMORY[0x29EDC9758])
  {
    operator new();
  }

  std::string::operator=(v19, v18);
  if ((*(a2 + 20) & 0x800) != 0)
  {
LABEL_36:
    v20 = *(a2 + 8);
    *(this + 20) |= 0x800u;
    v21 = *(this + 8);
    if (v21 == MEMORY[0x29EDC9758])
    {
      operator new();
    }

    std::string::operator=(v21, v20);
  }
}

void sub_296358AF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::metrics::BluetoothServiceDisconnectionResult::~BluetoothServiceDisconnectionResult(awd::metrics::BluetoothServiceDisconnectionResult *this)
{
  *this = &unk_2A1D4A7E8;
  awd::metrics::BluetoothServiceDisconnectionResult::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2A1D4A7E8;
  awd::metrics::BluetoothServiceDisconnectionResult::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2A1D4A7E8;
  awd::metrics::BluetoothServiceDisconnectionResult::SharedDtor(this);
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  JUMPOUT(0x29C259F00);
}

void *awd::metrics::BluetoothServiceDisconnectionResult::SharedDtor(void *this)
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

    this = MEMORY[0x29C259F00](v2, 0x1012C40EC159624);
  }

  v5 = v1[5];
  if (v5 != v3 && v5 != 0)
  {
    if (*(v5 + 23) < 0)
    {
      operator delete(*v5);
    }

    this = MEMORY[0x29C259F00](v5, 0x1012C40EC159624);
  }

  v7 = v1[7];
  if (v7 != v3 && v7 != 0)
  {
    if (*(v7 + 23) < 0)
    {
      operator delete(*v7);
    }

    this = MEMORY[0x29C259F00](v7, 0x1012C40EC159624);
  }

  v9 = v1[8];
  if (v9 != v3 && v9 != 0)
  {
    if (*(v9 + 23) < 0)
    {
      operator delete(*v9);
    }

    JUMPOUT(0x29C259F00);
  }

  return this;
}

uint64_t awd::metrics::BluetoothServiceDisconnectionResult::default_instance(awd::metrics::BluetoothServiceDisconnectionResult *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = awd::metrics::BluetoothServiceDisconnectionResult::default_instance_;
  if (!awd::metrics::BluetoothServiceDisconnectionResult::default_instance_)
  {
    awd::metrics::protobuf_AddDesc_Bluetooth_2eproto(0, a2, a3, a4);
    return awd::metrics::BluetoothServiceDisconnectionResult::default_instance_;
  }

  return result;
}

uint64_t awd::metrics::BluetoothServiceDisconnectionResult::Clear(uint64_t this)
{
  v1 = *(this + 80);
  if (v1)
  {
    *(this + 8) = 0;
    v2 = MEMORY[0x29EDC9758];
    if ((v1 & 2) != 0)
    {
      v3 = *(this + 16);
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

    *(this + 36) = 0;
    *(this + 24) = 0;
    *(this + 32) = 0;
    if ((*(this + 80) & 0x40) != 0)
    {
      v4 = *(this + 40);
      if (v4 != v2)
      {
        if (*(v4 + 23) < 0)
        {
          **v4 = 0;
          *(v4 + 8) = 0;
        }

        else
        {
          *v4 = 0;
          *(v4 + 23) = 0;
        }
      }
    }

    *(this + 48) = 0;
    v1 = *(this + 80);
  }

  if ((v1 & 0xFF00) != 0)
  {
    *(this + 52) = 0;
    *(this + 72) = 0;
    if ((v1 & 0x400) != 0)
    {
      v5 = *(this + 56);
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

    if ((*(this + 81) & 8) != 0)
    {
      v6 = *(this + 64);
      if (v6 != MEMORY[0x29EDC9758])
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
  }

  *(this + 80) = 0;
  return this;
}

uint64_t awd::metrics::BluetoothServiceDisconnectionResult::MergePartialFromCodedStream(awd::metrics::BluetoothServiceDisconnectionResult *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
{
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
          if (TagFallback >> 3 <= 6)
          {
            break;
          }

          if (TagFallback >> 3 > 0xA)
          {
            if (v8 == 11)
            {
              if ((TagFallback & 7) == 0)
              {
                v21 = *(a2 + 1);
                v12 = *(a2 + 2);
                goto LABEL_116;
              }

              goto LABEL_47;
            }

            if (v8 != 256)
            {
              if (v8 == 257 && v9 == 2)
              {
                goto LABEL_132;
              }

              goto LABEL_47;
            }

            if (v9 != 2)
            {
              goto LABEL_47;
            }

            v25 = *(this + 20);
LABEL_125:
            *(this + 20) = v25 | 0x400;
            if (*(this + 7) == v5)
            {
              operator new();
            }

            result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadBytes();
            if (!result)
            {
              return result;
            }

            v42 = *(a2 + 1);
            if (*(a2 + 4) - v42 >= 2 && *v42 == 138 && v42[1] == 16)
            {
              *(a2 + 1) = v42 + 2;
LABEL_132:
              *(this + 20) |= 0x800u;
              if (*(this + 8) == v5)
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

          else
          {
            if (v8 != 7)
            {
              if (v8 == 9)
              {
                if ((TagFallback & 7) == 0)
                {
                  v23 = *(a2 + 1);
                  v12 = *(a2 + 2);
                  goto LABEL_100;
                }
              }

              else if (v8 == 10 && (TagFallback & 7) == 0)
              {
                v13 = *(a2 + 1);
                v12 = *(a2 + 2);
                goto LABEL_108;
              }

              goto LABEL_47;
            }

            if (v9 != 2)
            {
              goto LABEL_47;
            }

            v19 = *(this + 20);
LABEL_94:
            *(this + 20) = v19 | 0x40;
            if (*(this + 5) == v5)
            {
              operator new();
            }

            result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
            if (!result)
            {
              return result;
            }

            v35 = *(a2 + 1);
            v12 = *(a2 + 2);
            if (v35 < v12 && *v35 == 72)
            {
              v23 = v35 + 1;
              *(a2 + 1) = v23;
LABEL_100:
              if (v23 >= v12 || (v36 = *v23, v36 < 0))
              {
                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 12);
                if (!result)
                {
                  return result;
                }

                v37 = *(a2 + 1);
                v12 = *(a2 + 2);
              }

              else
              {
                *(this + 12) = v36;
                v37 = v23 + 1;
                *(a2 + 1) = v37;
              }

              *(this + 20) |= 0x80u;
              if (v37 < v12 && *v37 == 80)
              {
                v13 = v37 + 1;
                *(a2 + 1) = v13;
LABEL_108:
                if (v13 >= v12 || (v38 = *v13, v38 < 0))
                {
                  result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 13);
                  if (!result)
                  {
                    return result;
                  }

                  v39 = *(a2 + 1);
                  v12 = *(a2 + 2);
                }

                else
                {
                  *(this + 13) = v38;
                  v39 = v13 + 1;
                  *(a2 + 1) = v39;
                }

                *(this + 20) |= 0x100u;
                if (v39 < v12 && *v39 == 88)
                {
                  v21 = v39 + 1;
                  *(a2 + 1) = v21;
LABEL_116:
                  if (v21 >= v12 || (v40 = *v21, v40 < 0))
                  {
                    result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 18);
                    if (!result)
                    {
                      return result;
                    }

                    v41 = *(a2 + 1);
                    v12 = *(a2 + 2);
                  }

                  else
                  {
                    *(this + 18) = v40;
                    v41 = (v21 + 1);
                    *(a2 + 1) = v41;
                  }

                  v25 = *(this + 20) | 0x200;
                  *(this + 20) = v25;
                  if (v12 - v41 >= 2 && *v41 == 130 && v41[1] == 16)
                  {
                    *(a2 + 1) = v41 + 2;
                    goto LABEL_125;
                  }
                }
              }
            }
          }
        }

        if (TagFallback >> 3 > 3)
        {
          if (v8 == 4)
          {
            if ((TagFallback & 7) == 0)
            {
              v20 = *(a2 + 1);
              v10 = *(a2 + 2);
              goto LABEL_70;
            }
          }

          else if (v8 == 5)
          {
            if ((TagFallback & 7) == 0)
            {
              v24 = *(a2 + 1);
              v10 = *(a2 + 2);
              goto LABEL_78;
            }
          }

          else if (v8 == 6 && (TagFallback & 7) == 0)
          {
            v14 = *(a2 + 1);
            v10 = *(a2 + 2);
            goto LABEL_86;
          }

          goto LABEL_47;
        }

        if (v8 != 1)
        {
          break;
        }

        if ((TagFallback & 7) != 0)
        {
          goto LABEL_47;
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

        v22 = *(this + 20) | 1;
        *(this + 20) = v22;
        if (v18 < v15 && *v18 == 18)
        {
          *(a2 + 1) = v18 + 1;
          goto LABEL_56;
        }
      }

      if (v8 != 2)
      {
        break;
      }

      if (v9 != 2)
      {
        goto LABEL_47;
      }

      v22 = *(this + 20);
LABEL_56:
      *(this + 20) = v22 | 2;
      if (*(this + 2) == v5)
      {
        operator new();
      }

      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadBytes();
      if (!result)
      {
        return result;
      }

      v26 = *(a2 + 1);
      v10 = *(a2 + 2);
      if (v26 < v10 && *v26 == 24)
      {
        v11 = v26 + 1;
        *(a2 + 1) = v11;
LABEL_62:
        if (v11 >= v10 || (v27 = *v11, v27 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 6);
          if (!result)
          {
            return result;
          }

          v28 = *(a2 + 1);
          v10 = *(a2 + 2);
        }

        else
        {
          *(this + 6) = v27;
          v28 = v11 + 1;
          *(a2 + 1) = v28;
        }

        *(this + 20) |= 4u;
        if (v28 < v10 && *v28 == 32)
        {
          v20 = v28 + 1;
          *(a2 + 1) = v20;
LABEL_70:
          if (v20 >= v10 || (v29 = *v20, v29 < 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 7);
            if (!result)
            {
              return result;
            }

            v30 = *(a2 + 1);
            v10 = *(a2 + 2);
          }

          else
          {
            *(this + 7) = v29;
            v30 = v20 + 1;
            *(a2 + 1) = v30;
          }

          *(this + 20) |= 8u;
          if (v30 < v10 && *v30 == 40)
          {
            v24 = v30 + 1;
            *(a2 + 1) = v24;
LABEL_78:
            v44 = 0;
            if (v24 >= v10 || (v31 = *v24, (v31 & 0x80000000) != 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v44);
              if (!result)
              {
                return result;
              }

              v31 = v44;
              v32 = *(a2 + 1);
              v10 = *(a2 + 2);
            }

            else
            {
              v32 = v24 + 1;
              *(a2 + 1) = v32;
            }

            *(this + 32) = v31 != 0;
            *(this + 20) |= 0x10u;
            if (v32 < v10 && *v32 == 48)
            {
              v14 = v32 + 1;
              *(a2 + 1) = v14;
LABEL_86:
              if (v14 >= v10 || (v33 = *v14, v33 < 0))
              {
                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 9);
                if (!result)
                {
                  return result;
                }

                v34 = *(a2 + 1);
                v10 = *(a2 + 2);
              }

              else
              {
                *(this + 9) = v33;
                v34 = v14 + 1;
                *(a2 + 1) = v34;
              }

              v19 = *(this + 20) | 0x20;
              *(this + 20) = v19;
              if (v34 < v10 && *v34 == 58)
              {
                *(a2 + 1) = v34 + 1;
                goto LABEL_94;
              }
            }
          }
        }
      }
    }

    if (v8 == 3 && (TagFallback & 7) == 0)
    {
      v11 = *(a2 + 1);
      v10 = *(a2 + 2);
      goto LABEL_62;
    }

LABEL_47:
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