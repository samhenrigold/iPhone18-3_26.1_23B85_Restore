void awd::metrics::BluetoothCloudPairingInitiated::CheckTypeAndMergeFrom(awd::metrics::BluetoothCloudPairingInitiated *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  {
    awd::metrics::BluetoothCloudPairingInitiated::CheckTypeAndMergeFrom();
  }

  awd::metrics::BluetoothCloudPairingInitiated::MergeFrom(this, lpsrc);
}

void awd::metrics::BluetoothCloudPairingInitiated::CopyFrom(awd::metrics::BluetoothCloudPairingInitiated *this, const awd::metrics::BluetoothCloudPairingInitiated *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    awd::metrics::BluetoothCloudPairingInitiated::MergeFrom(this, a2);
  }
}

uint64_t awd::metrics::BluetoothCloudPairingInitiated::Swap(uint64_t this, awd::metrics::BluetoothCloudPairingInitiated *a2)
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

uint64_t awd::metrics::BluetoothCloudPairingSendFailure::SharedCtor(uint64_t this)
{
  *(this + 36) = 0;
  v1 = MEMORY[0x29EDC9758];
  *(this + 8) = 0;
  *(this + 16) = v1;
  *(this + 32) = 0;
  *(this + 24) = 0;
  return this;
}

awd::metrics::BluetoothCloudPairingSendFailure *awd::metrics::BluetoothCloudPairingSendFailure::BluetoothCloudPairingSendFailure(awd::metrics::BluetoothCloudPairingSendFailure *this, const awd::metrics::BluetoothCloudPairingSendFailure *a2)
{
  *this = &unk_2A1D4B2B0;
  *(this + 1) = 0;
  v3 = MEMORY[0x29EDC9758];
  *(this + 3) = 0;
  *(this + 4) = 0;
  *(this + 2) = v3;
  *(this + 10) = 0;
  awd::metrics::BluetoothCloudPairingSendFailure::MergeFrom(this, a2);
  return this;
}

void awd::metrics::BluetoothCloudPairingSendFailure::MergeFrom(awd::metrics::BluetoothCloudPairingSendFailure *this, const awd::metrics::BluetoothCloudPairingSendFailure *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v10);
  }

  LOBYTE(v4) = *(a2 + 40);
  if (v4)
  {
    if (*(a2 + 40))
    {
      v6 = *(a2 + 1);
      *(this + 10) |= 1u;
      *(this + 1) = v6;
      v4 = *(a2 + 10);
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

    else if ((*(a2 + 40) & 2) == 0)
    {
      goto LABEL_6;
    }

    v7 = *(a2 + 2);
    *(this + 10) |= 2u;
    v8 = *(this + 2);
    if (v8 == MEMORY[0x29EDC9758])
    {
      operator new();
    }

    std::string::operator=(v8, v7);
    v4 = *(a2 + 10);
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
    v9 = *(a2 + 8);
    *(this + 10) |= 4u;
    *(this + 8) = v9;
    if ((*(a2 + 10) & 8) == 0)
    {
      return;
    }

LABEL_8:
    v5 = *(a2 + 3);
    *(this + 10) |= 8u;
    *(this + 3) = v5;
  }
}

void sub_29636CA7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::metrics::BluetoothCloudPairingSendFailure::~BluetoothCloudPairingSendFailure(awd::metrics::BluetoothCloudPairingSendFailure *this)
{
  *this = &unk_2A1D4B2B0;
  awd::metrics::BluetoothCloudPairingSendFailure::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2A1D4B2B0;
  awd::metrics::BluetoothCloudPairingSendFailure::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2A1D4B2B0;
  awd::metrics::BluetoothCloudPairingSendFailure::SharedDtor(this);
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  JUMPOUT(0x29C259F00);
}

uint64_t awd::metrics::BluetoothCloudPairingSendFailure::SharedDtor(uint64_t this)
{
  v1 = *(this + 16);
  if (v1 != MEMORY[0x29EDC9758] && v1 != 0)
  {
    if (*(v1 + 23) < 0)
    {
      operator delete(*v1);
    }

    JUMPOUT(0x29C259F00);
  }

  return this;
}

uint64_t awd::metrics::BluetoothCloudPairingSendFailure::default_instance(awd::metrics::BluetoothCloudPairingSendFailure *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = awd::metrics::BluetoothCloudPairingSendFailure::default_instance_;
  if (!awd::metrics::BluetoothCloudPairingSendFailure::default_instance_)
  {
    awd::metrics::protobuf_AddDesc_Bluetooth_2eproto(0, a2, a3, a4);
    return awd::metrics::BluetoothCloudPairingSendFailure::default_instance_;
  }

  return result;
}

uint64_t awd::metrics::BluetoothCloudPairingSendFailure::Clear(uint64_t this)
{
  v1 = *(this + 40);
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

    *(this + 32) = 0;
    *(this + 24) = 0;
  }

  *(this + 40) = 0;
  return this;
}

uint64_t awd::metrics::BluetoothCloudPairingSendFailure::MergePartialFromCodedStream(awd::metrics::BluetoothCloudPairingSendFailure *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
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

        v10 = *(this + 10) | 1;
        *(this + 10) = v10;
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

        v10 = *(this + 10);
LABEL_30:
        *(this + 10) = v10 | 2;
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
          if (v17 >= v11 || (v19 = *v17, v19 < 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 8);
            if (!result)
            {
              return result;
            }

            v20 = *(a2 + 1);
            v11 = *(a2 + 2);
          }

          else
          {
            *(this + 8) = v19;
            v20 = v17 + 1;
            *(a2 + 1) = v20;
          }

          *(this + 10) |= 4u;
          if (v20 < v11 && *v20 == 32)
          {
            v12 = v20 + 1;
            *(a2 + 1) = v12;
LABEL_44:
            if (v12 >= v11 || (v21 = *v12, v21 < 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 3);
              if (!result)
              {
                return result;
              }

              v22 = *(a2 + 1);
              v11 = *(a2 + 2);
            }

            else
            {
              *(this + 3) = v21;
              v22 = v12 + 1;
              *(a2 + 1) = v22;
            }

            *(this + 10) |= 8u;
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

uint64_t awd::metrics::BluetoothCloudPairingSendFailure::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 40);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(1, *(this + 8), a2, a4);
    v6 = *(v5 + 40);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

LABEL_8:
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(3, *(v5 + 32), a2, a4);
      if ((*(v5 + 40) & 8) == 0)
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
  v6 = *(v5 + 40);
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

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(4, v7, a2, a4);
}

uint64_t awd::metrics::BluetoothCloudPairingSendFailure::ByteSize(awd::metrics::BluetoothCloudPairingSendFailure *this, unint64_t a2)
{
  LOBYTE(v3) = *(this + 40);
  if (!v3)
  {
    v4 = 0;
    goto LABEL_19;
  }

  if (*(this + 40))
  {
    v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 1)) + 1;
    v3 = *(this + 10);
    if ((v3 & 2) == 0)
    {
      goto LABEL_16;
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
    v3 = *(this + 10);
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
    v12 = *(this + 8);
    if (v12 >= 0x80)
    {
      v13 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v12) + 1;
      v3 = *(this + 10);
    }

    else
    {
      v13 = 2;
    }

    v4 = (v13 + v4);
    if ((v3 & 8) != 0)
    {
      goto LABEL_18;
    }
  }

  else if ((v3 & 8) != 0)
  {
LABEL_18:
    v4 = v4 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 3)) + 1;
  }

LABEL_19:
  *(this + 9) = v4;
  return v4;
}

void awd::metrics::BluetoothCloudPairingSendFailure::CheckTypeAndMergeFrom(awd::metrics::BluetoothCloudPairingSendFailure *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  {
    awd::metrics::BluetoothCloudPairingSendFailure::CheckTypeAndMergeFrom();
  }

  awd::metrics::BluetoothCloudPairingSendFailure::MergeFrom(this, lpsrc);
}

void awd::metrics::BluetoothCloudPairingSendFailure::CopyFrom(awd::metrics::BluetoothCloudPairingSendFailure *this, const awd::metrics::BluetoothCloudPairingSendFailure *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    awd::metrics::BluetoothCloudPairingSendFailure::MergeFrom(this, a2);
  }
}

uint64_t awd::metrics::BluetoothCloudPairingSendFailure::Swap(uint64_t this, awd::metrics::BluetoothCloudPairingSendFailure *a2)
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
    LODWORD(v2) = *(this + 32);
    *(this + 32) = *(a2 + 8);
    *(a2 + 8) = v2;
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

void *awd::metrics::BluetoothCloudPairingReceiveFailure::SharedCtor(void *this)
{
  this[3] = 0;
  v1 = MEMORY[0x29EDC9758];
  this[1] = 0;
  this[2] = v1;
  return this;
}

awd::metrics::BluetoothCloudPairingReceiveFailure *awd::metrics::BluetoothCloudPairingReceiveFailure::BluetoothCloudPairingReceiveFailure(awd::metrics::BluetoothCloudPairingReceiveFailure *this, const awd::metrics::BluetoothCloudPairingReceiveFailure *a2)
{
  *this = &unk_2A1D4B328;
  *(this + 1) = 0;
  *(this + 2) = MEMORY[0x29EDC9758];
  *(this + 3) = 0;
  awd::metrics::BluetoothCloudPairingReceiveFailure::MergeFrom(this, a2);
  return this;
}

void awd::metrics::BluetoothCloudPairingReceiveFailure::MergeFrom(awd::metrics::BluetoothCloudPairingReceiveFailure *this, const awd::metrics::BluetoothCloudPairingReceiveFailure *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v8);
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
      v7 = *(this + 2);
      if (v7 == MEMORY[0x29EDC9758])
      {
        operator new();
      }

      std::string::operator=(v7, v6);
    }
  }
}

void sub_29636D424(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::metrics::BluetoothCloudPairingReceiveFailure::~BluetoothCloudPairingReceiveFailure(awd::metrics::BluetoothCloudPairingReceiveFailure *this)
{
  *this = &unk_2A1D4B328;
  awd::metrics::BluetoothCloudPairingReceiveFailure::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2A1D4B328;
  awd::metrics::BluetoothCloudPairingReceiveFailure::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2A1D4B328;
  awd::metrics::BluetoothCloudPairingReceiveFailure::SharedDtor(this);
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  JUMPOUT(0x29C259F00);
}

uint64_t awd::metrics::BluetoothCloudPairingReceiveFailure::SharedDtor(uint64_t this)
{
  v1 = *(this + 16);
  if (v1 != MEMORY[0x29EDC9758] && v1 != 0)
  {
    if (*(v1 + 23) < 0)
    {
      operator delete(*v1);
    }

    JUMPOUT(0x29C259F00);
  }

  return this;
}

uint64_t awd::metrics::BluetoothCloudPairingReceiveFailure::default_instance(awd::metrics::BluetoothCloudPairingReceiveFailure *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = awd::metrics::BluetoothCloudPairingReceiveFailure::default_instance_;
  if (!awd::metrics::BluetoothCloudPairingReceiveFailure::default_instance_)
  {
    awd::metrics::protobuf_AddDesc_Bluetooth_2eproto(0, a2, a3, a4);
    return awd::metrics::BluetoothCloudPairingReceiveFailure::default_instance_;
  }

  return result;
}

uint64_t awd::metrics::BluetoothCloudPairingReceiveFailure::Clear(uint64_t this)
{
  v1 = *(this + 28);
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
  }

  *(this + 28) = 0;
  return this;
}

uint64_t awd::metrics::BluetoothCloudPairingReceiveFailure::MergePartialFromCodedStream(awd::metrics::BluetoothCloudPairingReceiveFailure *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
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

        if (v8 != 2)
        {
          goto LABEL_14;
        }

        v13 = *(this + 7);
LABEL_23:
        *(this + 7) = v13 | 2;
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

      if (TagFallback >> 3 != 1 || (TagFallback & 7) != 0)
      {
        break;
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

      v13 = *(this + 7) | 1;
      *(this + 7) = v13;
      if (v12 < v9 && *v12 == 18)
      {
        *(a2 + 1) = v12 + 1;
        goto LABEL_23;
      }
    }

LABEL_14:
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

uint64_t awd::metrics::BluetoothCloudPairingReceiveFailure::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v4 = this;
  v5 = *(this + 28);
  if (v5)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(1, *(this + 8), a2, a4);
    v5 = *(v4 + 28);
  }

  if ((v5 & 2) != 0)
  {

    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
  }

  return this;
}

uint64_t awd::metrics::BluetoothCloudPairingReceiveFailure::ByteSize(wireless_diagnostics::google::protobuf::io::CodedOutputStream **this, unint64_t a2)
{
  if (*(this + 28))
  {
    if (*(this + 28))
    {
      v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(this[1]) + 1;
      if ((*(this + 7) & 2) == 0)
      {
        goto LABEL_16;
      }
    }

    else
    {
      v3 = 0;
      if ((*(this + 28) & 2) == 0)
      {
        goto LABEL_16;
      }
    }

    v4 = this[2];
    v5 = *(v4 + 23);
    v6 = v5;
    v7 = *(v4 + 1);
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
      v9 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v8);
      v5 = *(v4 + 23);
      v7 = *(v4 + 1);
      v6 = *(v4 + 23);
    }

    else
    {
      v9 = 1;
    }

    if (v6 < 0)
    {
      v5 = v7;
    }

    v3 = (v3 + v9 + v5 + 1);
  }

  else
  {
    v3 = 0;
  }

LABEL_16:
  *(this + 6) = v3;
  return v3;
}

void awd::metrics::BluetoothCloudPairingReceiveFailure::CheckTypeAndMergeFrom(awd::metrics::BluetoothCloudPairingReceiveFailure *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  {
    awd::metrics::BluetoothCloudPairingReceiveFailure::CheckTypeAndMergeFrom();
  }

  awd::metrics::BluetoothCloudPairingReceiveFailure::MergeFrom(this, lpsrc);
}

void awd::metrics::BluetoothCloudPairingReceiveFailure::CopyFrom(awd::metrics::BluetoothCloudPairingReceiveFailure *this, const awd::metrics::BluetoothCloudPairingReceiveFailure *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    awd::metrics::BluetoothCloudPairingReceiveFailure::MergeFrom(this, a2);
  }
}

uint64_t awd::metrics::BluetoothCloudPairingReceiveFailure::Swap(uint64_t this, awd::metrics::BluetoothCloudPairingReceiveFailure *a2)
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
    LODWORD(v2) = *(this + 28);
    *(this + 28) = *(a2 + 7);
    *(a2 + 7) = v2;
    LODWORD(v2) = *(this + 24);
    *(this + 24) = *(a2 + 6);
    *(a2 + 6) = v2;
  }

  return this;
}

uint64_t awd::metrics::BluetoothCloudPairingRoleFailure::SharedCtor(uint64_t this)
{
  *(this + 20) = 0;
  *(this + 8) = 0;
  *(this + 16) = 0;
  return this;
}

awd::metrics::BluetoothCloudPairingRoleFailure *awd::metrics::BluetoothCloudPairingRoleFailure::BluetoothCloudPairingRoleFailure(awd::metrics::BluetoothCloudPairingRoleFailure *this, const awd::metrics::BluetoothCloudPairingRoleFailure *a2)
{
  *(this + 20) = 0;
  *this = &unk_2A1D4B3A0;
  *(this + 1) = 0;
  *(this + 16) = 0;
  awd::metrics::BluetoothCloudPairingRoleFailure::MergeFrom(this, a2);
  return this;
}

void awd::metrics::BluetoothCloudPairingRoleFailure::MergeFrom(awd::metrics::BluetoothCloudPairingRoleFailure *this, const awd::metrics::BluetoothCloudPairingRoleFailure *a2)
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
      v6 = *(a2 + 16);
      *(this + 6) |= 2u;
      *(this + 16) = v6;
    }
  }
}

void sub_29636DBE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::metrics::BluetoothCloudPairingRoleFailure::~BluetoothCloudPairingRoleFailure(awd::metrics::BluetoothCloudPairingRoleFailure *this)
{
  *this = &unk_2A1D4B3A0;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2A1D4B3A0;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2A1D4B3A0;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  JUMPOUT(0x29C259F00);
}

uint64_t awd::metrics::BluetoothCloudPairingRoleFailure::default_instance(awd::metrics::BluetoothCloudPairingRoleFailure *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = awd::metrics::BluetoothCloudPairingRoleFailure::default_instance_;
  if (!awd::metrics::BluetoothCloudPairingRoleFailure::default_instance_)
  {
    awd::metrics::protobuf_AddDesc_Bluetooth_2eproto(0, a2, a3, a4);
    return awd::metrics::BluetoothCloudPairingRoleFailure::default_instance_;
  }

  return result;
}

uint64_t awd::metrics::BluetoothCloudPairingRoleFailure::Clear(uint64_t this)
{
  if (*(this + 24))
  {
    *(this + 8) = 0;
    *(this + 16) = 0;
  }

  *(this + 24) = 0;
  return this;
}

uint64_t awd::metrics::BluetoothCloudPairingRoleFailure::MergePartialFromCodedStream(awd::metrics::BluetoothCloudPairingRoleFailure *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
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

        *(this + 16) = v12 != 0;
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

uint64_t awd::metrics::BluetoothCloudPairingRoleFailure::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
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

    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(2, v7, a2, a4);
  }

  return this;
}

uint64_t awd::metrics::BluetoothCloudPairingRoleFailure::ByteSize(awd::metrics::BluetoothCloudPairingRoleFailure *this, unint64_t a2)
{
  LOBYTE(v3) = *(this + 24);
  if (v3)
  {
    if (*(this + 24))
    {
      v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 1)) + 1;
      v3 = *(this + 6);
    }

    else
    {
      v4 = 0;
    }

    result = (v3 & 2u) + v4;
  }

  else
  {
    result = 0;
  }

  *(this + 5) = result;
  return result;
}

void awd::metrics::BluetoothCloudPairingRoleFailure::CheckTypeAndMergeFrom(awd::metrics::BluetoothCloudPairingRoleFailure *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  {
    awd::metrics::BluetoothCloudPairingRoleFailure::CheckTypeAndMergeFrom();
  }

  awd::metrics::BluetoothCloudPairingRoleFailure::MergeFrom(this, lpsrc);
}

void awd::metrics::BluetoothCloudPairingRoleFailure::CopyFrom(awd::metrics::BluetoothCloudPairingRoleFailure *this, const awd::metrics::BluetoothCloudPairingRoleFailure *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    awd::metrics::BluetoothCloudPairingRoleFailure::MergeFrom(this, a2);
  }
}

uint64_t awd::metrics::BluetoothCloudPairingRoleFailure::Swap(uint64_t this, awd::metrics::BluetoothCloudPairingRoleFailure *a2)
{
  if (a2 != this)
  {
    v2 = *(this + 8);
    *(this + 8) = *(a2 + 1);
    *(a2 + 1) = v2;
    LOBYTE(v2) = *(this + 16);
    *(this + 16) = *(a2 + 16);
    *(a2 + 16) = v2;
    LODWORD(v2) = *(this + 24);
    *(this + 24) = *(a2 + 6);
    *(a2 + 6) = v2;
    LODWORD(v2) = *(this + 20);
    *(this + 20) = *(a2 + 5);
    *(a2 + 5) = v2;
  }

  return this;
}

uint64_t awd::metrics::BluetoothCloudPairingPairFailure::SharedCtor(uint64_t this)
{
  *(this + 36) = 0;
  *(this + 32) = 0;
  v1 = MEMORY[0x29EDC9758];
  *(this + 8) = 0;
  *(this + 16) = v1;
  *(this + 24) = v1;
  return this;
}

awd::metrics::BluetoothCloudPairingPairFailure *awd::metrics::BluetoothCloudPairingPairFailure::BluetoothCloudPairingPairFailure(awd::metrics::BluetoothCloudPairingPairFailure *this, const awd::metrics::BluetoothCloudPairingPairFailure *a2)
{
  *(this + 36) = 0;
  *this = &unk_2A1D4B418;
  *(this + 1) = 0;
  *(this + 32) = 0;
  v3 = MEMORY[0x29EDC9758];
  *(this + 2) = MEMORY[0x29EDC9758];
  *(this + 3) = v3;
  awd::metrics::BluetoothCloudPairingPairFailure::MergeFrom(this, a2);
  return this;
}

void awd::metrics::BluetoothCloudPairingPairFailure::MergeFrom(awd::metrics::BluetoothCloudPairingPairFailure *this, const awd::metrics::BluetoothCloudPairingPairFailure *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v12);
  }

  LOBYTE(v4) = *(a2 + 40);
  if (v4)
  {
    if (*(a2 + 40))
    {
      v5 = *(a2 + 1);
      *(this + 10) |= 1u;
      *(this + 1) = v5;
      v4 = *(a2 + 10);
    }

    if ((v4 & 2) != 0)
    {
      v6 = *(a2 + 32);
      *(this + 10) |= 2u;
      *(this + 32) = v6;
      v4 = *(a2 + 10);
    }

    v7 = MEMORY[0x29EDC9758];
    if ((v4 & 4) != 0)
    {
      v8 = *(a2 + 2);
      *(this + 10) |= 4u;
      v9 = *(this + 2);
      if (v9 == v7)
      {
        operator new();
      }

      std::string::operator=(v9, v8);
      v4 = *(a2 + 10);
    }

    if ((v4 & 8) != 0)
    {
      v10 = *(a2 + 3);
      *(this + 10) |= 8u;
      v11 = *(this + 3);
      if (v11 == v7)
      {
        operator new();
      }

      std::string::operator=(v11, v10);
    }
  }
}

void sub_29636E304(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::metrics::BluetoothCloudPairingPairFailure::~BluetoothCloudPairingPairFailure(awd::metrics::BluetoothCloudPairingPairFailure *this)
{
  *this = &unk_2A1D4B418;
  awd::metrics::BluetoothCloudPairingPairFailure::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2A1D4B418;
  awd::metrics::BluetoothCloudPairingPairFailure::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2A1D4B418;
  awd::metrics::BluetoothCloudPairingPairFailure::SharedDtor(this);
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  JUMPOUT(0x29C259F00);
}

uint64_t awd::metrics::BluetoothCloudPairingPairFailure::SharedDtor(uint64_t this)
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

    JUMPOUT(0x29C259F00);
  }

  return this;
}

uint64_t awd::metrics::BluetoothCloudPairingPairFailure::default_instance(awd::metrics::BluetoothCloudPairingPairFailure *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = awd::metrics::BluetoothCloudPairingPairFailure::default_instance_;
  if (!awd::metrics::BluetoothCloudPairingPairFailure::default_instance_)
  {
    awd::metrics::protobuf_AddDesc_Bluetooth_2eproto(0, a2, a3, a4);
    return awd::metrics::BluetoothCloudPairingPairFailure::default_instance_;
  }

  return result;
}

uint64_t awd::metrics::BluetoothCloudPairingPairFailure::Clear(uint64_t this)
{
  v1 = *(this + 40);
  if (v1)
  {
    *(this + 8) = 0;
    *(this + 32) = 0;
    v2 = MEMORY[0x29EDC9758];
    if ((v1 & 4) != 0)
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

    if ((*(this + 40) & 8) != 0)
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
  }

  *(this + 40) = 0;
  return this;
}

uint64_t awd::metrics::BluetoothCloudPairingPairFailure::MergePartialFromCodedStream(awd::metrics::BluetoothCloudPairingPairFailure *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
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
        if (TagFallback >> 3 <= 2)
        {
          break;
        }

        if (v8 != 3)
        {
          if (v8 == 4 && v9 == 2)
          {
            goto LABEL_44;
          }

          goto LABEL_21;
        }

        if (v9 != 2)
        {
          goto LABEL_21;
        }

        v15 = *(this + 10);
LABEL_38:
        *(this + 10) = v15 | 4;
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
        if (v18 < *(a2 + 2) && *v18 == 34)
        {
          *(a2 + 1) = v18 + 1;
LABEL_44:
          *(this + 10) |= 8u;
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
      }

      if (v8 != 1)
      {
        break;
      }

      if ((TagFallback & 7) != 0)
      {
        goto LABEL_21;
      }

      v12 = *(a2 + 1);
      v10 = *(a2 + 2);
      if (v12 >= v10 || (v13 = *v12, v13 < 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 1);
        if (!result)
        {
          return result;
        }

        v14 = *(a2 + 1);
        v10 = *(a2 + 2);
      }

      else
      {
        *(this + 1) = v13;
        v14 = v12 + 1;
        *(a2 + 1) = v14;
      }

      *(this + 10) |= 1u;
      if (v14 < v10 && *v14 == 16)
      {
        v11 = v14 + 1;
        *(a2 + 1) = v11;
LABEL_30:
        v20 = 0;
        if (v11 >= v10 || (v16 = *v11, (v16 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v20);
          if (!result)
          {
            return result;
          }

          v16 = v20;
          v17 = *(a2 + 1);
          v10 = *(a2 + 2);
        }

        else
        {
          v17 = v11 + 1;
          *(a2 + 1) = v17;
        }

        *(this + 32) = v16 != 0;
        v15 = *(this + 10) | 2;
        *(this + 10) = v15;
        if (v17 < v10 && *v17 == 26)
        {
          *(a2 + 1) = v17 + 1;
          goto LABEL_38;
        }
      }
    }

    if (v8 == 2 && (TagFallback & 7) == 0)
    {
      v11 = *(a2 + 1);
      v10 = *(a2 + 2);
      goto LABEL_30;
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

uint64_t awd::metrics::BluetoothCloudPairingPairFailure::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 40);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(1, *(this + 8), a2, a4);
    v6 = *(v5 + 40);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

LABEL_8:
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
      if ((*(v5 + 40) & 8) == 0)
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

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(2, *(v5 + 32), a2, a4);
  v6 = *(v5 + 40);
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

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
}

uint64_t awd::metrics::BluetoothCloudPairingPairFailure::ByteSize(awd::metrics::BluetoothCloudPairingPairFailure *this, unint64_t a2)
{
  LOBYTE(v3) = *(this + 40);
  if (v3)
  {
    if (*(this + 40))
    {
      v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 1)) + 1;
      v3 = *(this + 10);
    }

    else
    {
      v4 = 0;
    }

    v5 = (v3 & 2u) + v4;
    if ((v3 & 4) != 0)
    {
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
        v3 = *(this + 10);
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

      v5 = (v5 + v11 + v7 + 1);
    }

    if ((v3 & 8) != 0)
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

      v5 = (v5 + v17 + v13 + 1);
    }
  }

  else
  {
    v5 = 0;
  }

  *(this + 9) = v5;
  return v5;
}

void awd::metrics::BluetoothCloudPairingPairFailure::CheckTypeAndMergeFrom(awd::metrics::BluetoothCloudPairingPairFailure *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  {
    awd::metrics::BluetoothCloudPairingPairFailure::CheckTypeAndMergeFrom();
  }

  awd::metrics::BluetoothCloudPairingPairFailure::MergeFrom(this, lpsrc);
}

void awd::metrics::BluetoothCloudPairingPairFailure::CopyFrom(awd::metrics::BluetoothCloudPairingPairFailure *this, const awd::metrics::BluetoothCloudPairingPairFailure *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    awd::metrics::BluetoothCloudPairingPairFailure::MergeFrom(this, a2);
  }
}

uint64_t awd::metrics::BluetoothCloudPairingPairFailure::Swap(uint64_t this, awd::metrics::BluetoothCloudPairingPairFailure *a2)
{
  if (a2 != this)
  {
    v2 = *(this + 32);
    *(this + 32) = *(a2 + 32);
    *(a2 + 32) = v2;
    v3 = *(this + 8);
    v4 = *(this + 16);
    v5 = *(a2 + 2);
    *(this + 8) = *(a2 + 1);
    *(this + 16) = v5;
    *(a2 + 1) = v3;
    *(a2 + 2) = v4;
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

uint64_t awd::metrics::BluetoothA2DPAudioLinkInfo::SharedCtor(awd::metrics::BluetoothA2DPAudioLinkInfo *this)
{
  *(this + 88) = 0u;
  result = this + 88;
  *(result + 220) = 0;
  *(result - 80) = 0;
  *(result - 72) = 0;
  *(result - 68) = 0;
  *(result - 32) = 0;
  *(result - 8) = MEMORY[0x29EDC9758];
  *(result + 224) = 0;
  *(result + 16) = 0u;
  *(result + 32) = 0u;
  *(result + 48) = 0u;
  *(result + 64) = 0u;
  *(result + 80) = 0u;
  *(result + 96) = 0u;
  *(result + 112) = 0u;
  *(result + 128) = 0u;
  *(result + 144) = 0u;
  *(result + 160) = 0u;
  *(result + 176) = 0u;
  *(result + 192) = 0u;
  *(result + 204) = 0u;
  return result;
}

awd::metrics::BluetoothA2DPAudioLinkInfo *awd::metrics::BluetoothA2DPAudioLinkInfo::BluetoothA2DPAudioLinkInfo(awd::metrics::BluetoothA2DPAudioLinkInfo *this, const awd::metrics::BluetoothA2DPAudioLinkInfo *a2)
{
  *(this + 77) = 0;
  *this = &unk_2A1D4B490;
  *(this + 1) = 0;
  *(this + 16) = 0;
  *(this + 20) = 0u;
  *(this + 36) = 0u;
  *(this + 52) = 0u;
  *(this + 4) = 0u;
  *(this + 10) = MEMORY[0x29EDC9758];
  *(this + 39) = 0;
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
  *(this + 88) = 0u;
  *(this + 264) = 0u;
  *(this + 280) = 0u;
  *(this + 292) = 0u;
  awd::metrics::BluetoothA2DPAudioLinkInfo::MergeFrom(this, a2);
  return this;
}

void sub_29636ED38(_Unwind_Exception *a1)
{
  v3 = v1[8];
  if (v3)
  {
    MEMORY[0x29C259EE0](v3, 0x1000C8052888210);
  }

  awd::metrics::BluetoothA2DPAudioLinkInfo::BluetoothA2DPAudioLinkInfo((v1 + 5), v1 + 3);
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(v1);
  _Unwind_Resume(a1);
}

void awd::metrics::BluetoothA2DPAudioLinkInfo::MergeFrom(awd::metrics::BluetoothA2DPAudioLinkInfo *this, const awd::metrics::BluetoothA2DPAudioLinkInfo *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v63);
  }

  v4 = *(a2 + 8);
  if (v4)
  {
    wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 6, *(this + 8) + v4);
    memcpy((*(this + 3) + 4 * *(this + 8)), *(a2 + 3), 4 * *(a2 + 8));
    *(this + 8) += *(a2 + 8);
  }

  v5 = *(a2 + 12);
  if (v5)
  {
    wireless_diagnostics::google::protobuf::RepeatedField<int>::Reserve(this + 10, *(this + 12) + v5);
    memcpy((*(this + 5) + 4 * *(this + 12)), *(a2 + 5), 4 * *(a2 + 12));
    *(this + 12) += *(a2 + 12);
  }

  v6 = *(a2 + 18);
  if (v6)
  {
    wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 16, *(this + 18) + v6);
    memcpy((*(this + 8) + 4 * *(this + 18)), *(a2 + 8), 4 * *(a2 + 18));
    *(this + 18) += *(a2 + 18);
  }

  v7 = *(a2 + 78);
  if (!v7)
  {
    goto LABEL_16;
  }

  if (v7)
  {
    v15 = *(a2 + 1);
    *(this + 78) |= 1u;
    *(this + 1) = v15;
    v7 = *(a2 + 78);
    if ((v7 & 2) == 0)
    {
LABEL_12:
      if ((v7 & 4) == 0)
      {
        goto LABEL_13;
      }

LABEL_78:
      v17 = *(a2 + 5);
      *(this + 78) |= 4u;
      *(this + 5) = v17;
      v7 = *(a2 + 78);
      if ((v7 & 0x20) == 0)
      {
LABEL_14:
        if ((v7 & 0x40) == 0)
        {
          goto LABEL_16;
        }

        goto LABEL_15;
      }

      goto LABEL_79;
    }
  }

  else if ((v7 & 2) == 0)
  {
    goto LABEL_12;
  }

  v16 = *(a2 + 16);
  *(this + 78) |= 2u;
  *(this + 16) = v16;
  v7 = *(a2 + 78);
  if ((v7 & 4) != 0)
  {
    goto LABEL_78;
  }

LABEL_13:
  if ((v7 & 0x20) == 0)
  {
    goto LABEL_14;
  }

LABEL_79:
  v18 = *(a2 + 14);
  *(this + 78) |= 0x20u;
  *(this + 14) = v18;
  v7 = *(a2 + 78);
  if ((v7 & 0x40) != 0)
  {
LABEL_15:
    v8 = *(a2 + 15);
    *(this + 78) |= 0x40u;
    *(this + 15) = v8;
    v7 = *(a2 + 78);
  }

LABEL_16:
  if ((v7 & 0xFF00) == 0)
  {
    goto LABEL_26;
  }

  if ((v7 & 0x100) != 0)
  {
    v19 = *(a2 + 10);
    *(this + 78) |= 0x100u;
    v20 = *(this + 10);
    if (v20 == MEMORY[0x29EDC9758])
    {
      operator new();
    }

    std::string::operator=(v20, v19);
    v7 = *(a2 + 78);
    if ((v7 & 0x200) == 0)
    {
LABEL_19:
      if ((v7 & 0x400) == 0)
      {
        goto LABEL_20;
      }

      goto LABEL_85;
    }
  }

  else if ((v7 & 0x200) == 0)
  {
    goto LABEL_19;
  }

  v21 = *(a2 + 22);
  *(this + 78) |= 0x200u;
  *(this + 22) = v21;
  v7 = *(a2 + 78);
  if ((v7 & 0x400) == 0)
  {
LABEL_20:
    if ((v7 & 0x800) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_86;
  }

LABEL_85:
  v22 = *(a2 + 23);
  *(this + 78) |= 0x400u;
  *(this + 23) = v22;
  v7 = *(a2 + 78);
  if ((v7 & 0x800) == 0)
  {
LABEL_21:
    if ((v7 & 0x1000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_87;
  }

LABEL_86:
  v23 = *(a2 + 24);
  *(this + 78) |= 0x800u;
  *(this + 24) = v23;
  v7 = *(a2 + 78);
  if ((v7 & 0x1000) == 0)
  {
LABEL_22:
    if ((v7 & 0x2000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_88;
  }

LABEL_87:
  v24 = *(a2 + 25);
  *(this + 78) |= 0x1000u;
  *(this + 25) = v24;
  v7 = *(a2 + 78);
  if ((v7 & 0x2000) == 0)
  {
LABEL_23:
    if ((v7 & 0x4000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_89;
  }

LABEL_88:
  v25 = *(a2 + 26);
  *(this + 78) |= 0x2000u;
  *(this + 26) = v25;
  v7 = *(a2 + 78);
  if ((v7 & 0x4000) == 0)
  {
LABEL_24:
    if ((v7 & 0x8000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_25;
  }

LABEL_89:
  v26 = *(a2 + 27);
  *(this + 78) |= 0x4000u;
  *(this + 27) = v26;
  v7 = *(a2 + 78);
  if ((v7 & 0x8000) != 0)
  {
LABEL_25:
    v9 = *(a2 + 28);
    *(this + 78) |= 0x8000u;
    *(this + 28) = v9;
    v7 = *(a2 + 78);
  }

LABEL_26:
  if ((v7 & 0xFF0000) == 0)
  {
    goto LABEL_36;
  }

  if ((v7 & 0x10000) != 0)
  {
    v27 = *(a2 + 29);
    *(this + 78) |= 0x10000u;
    *(this + 29) = v27;
    v7 = *(a2 + 78);
    if ((v7 & 0x20000) == 0)
    {
LABEL_29:
      if ((v7 & 0x40000) == 0)
      {
        goto LABEL_30;
      }

      goto LABEL_93;
    }
  }

  else if ((v7 & 0x20000) == 0)
  {
    goto LABEL_29;
  }

  v28 = *(a2 + 30);
  *(this + 78) |= 0x20000u;
  *(this + 30) = v28;
  v7 = *(a2 + 78);
  if ((v7 & 0x40000) == 0)
  {
LABEL_30:
    if ((v7 & 0x80000) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_94;
  }

LABEL_93:
  v29 = *(a2 + 31);
  *(this + 78) |= 0x40000u;
  *(this + 31) = v29;
  v7 = *(a2 + 78);
  if ((v7 & 0x80000) == 0)
  {
LABEL_31:
    if ((v7 & 0x100000) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_95;
  }

LABEL_94:
  v30 = *(a2 + 32);
  *(this + 78) |= 0x80000u;
  *(this + 32) = v30;
  v7 = *(a2 + 78);
  if ((v7 & 0x100000) == 0)
  {
LABEL_32:
    if ((v7 & 0x200000) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_96;
  }

LABEL_95:
  v31 = *(a2 + 33);
  *(this + 78) |= 0x100000u;
  *(this + 33) = v31;
  v7 = *(a2 + 78);
  if ((v7 & 0x200000) == 0)
  {
LABEL_33:
    if ((v7 & 0x400000) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_97;
  }

LABEL_96:
  v32 = *(a2 + 34);
  *(this + 78) |= 0x200000u;
  *(this + 34) = v32;
  v7 = *(a2 + 78);
  if ((v7 & 0x400000) == 0)
  {
LABEL_34:
    if ((v7 & 0x800000) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_35;
  }

LABEL_97:
  v33 = *(a2 + 35);
  *(this + 78) |= 0x400000u;
  *(this + 35) = v33;
  v7 = *(a2 + 78);
  if ((v7 & 0x800000) != 0)
  {
LABEL_35:
    v10 = *(a2 + 36);
    *(this + 78) |= 0x800000u;
    *(this + 36) = v10;
    v7 = *(a2 + 78);
  }

LABEL_36:
  if (!HIBYTE(v7))
  {
    goto LABEL_45;
  }

  if ((v7 & 0x1000000) != 0)
  {
    v55 = *(a2 + 37);
    *(this + 78) |= 0x1000000u;
    *(this + 37) = v55;
    v7 = *(a2 + 78);
    if ((v7 & 0x2000000) == 0)
    {
LABEL_39:
      if ((v7 & 0x4000000) == 0)
      {
        goto LABEL_40;
      }

      goto LABEL_125;
    }
  }

  else if ((v7 & 0x2000000) == 0)
  {
    goto LABEL_39;
  }

  v56 = *(a2 + 38);
  *(this + 78) |= 0x2000000u;
  *(this + 38) = v56;
  v7 = *(a2 + 78);
  if ((v7 & 0x4000000) == 0)
  {
LABEL_40:
    if ((v7 & 0x8000000) == 0)
    {
      goto LABEL_41;
    }

    goto LABEL_126;
  }

LABEL_125:
  v57 = *(a2 + 39);
  *(this + 78) |= 0x4000000u;
  *(this + 39) = v57;
  v7 = *(a2 + 78);
  if ((v7 & 0x8000000) == 0)
  {
LABEL_41:
    if ((v7 & 0x10000000) == 0)
    {
      goto LABEL_42;
    }

    goto LABEL_127;
  }

LABEL_126:
  v58 = *(a2 + 40);
  *(this + 78) |= 0x8000000u;
  *(this + 40) = v58;
  v7 = *(a2 + 78);
  if ((v7 & 0x10000000) == 0)
  {
LABEL_42:
    if ((v7 & 0x20000000) == 0)
    {
      goto LABEL_43;
    }

    goto LABEL_128;
  }

LABEL_127:
  v59 = *(a2 + 41);
  *(this + 78) |= 0x10000000u;
  *(this + 41) = v59;
  v7 = *(a2 + 78);
  if ((v7 & 0x20000000) == 0)
  {
LABEL_43:
    if ((v7 & 0x40000000) == 0)
    {
      goto LABEL_44;
    }

LABEL_129:
    v61 = *(a2 + 43);
    *(this + 78) |= 0x40000000u;
    *(this + 43) = v61;
    if ((*(a2 + 78) & 0x80000000) == 0)
    {
      goto LABEL_45;
    }

    goto LABEL_130;
  }

LABEL_128:
  v60 = *(a2 + 42);
  *(this + 78) |= 0x20000000u;
  *(this + 42) = v60;
  v7 = *(a2 + 78);
  if ((v7 & 0x40000000) != 0)
  {
    goto LABEL_129;
  }

LABEL_44:
  if ((v7 & 0x80000000) == 0)
  {
    goto LABEL_45;
  }

LABEL_130:
  v62 = *(a2 + 44);
  *(this + 78) |= 0x80000000;
  *(this + 44) = v62;
LABEL_45:
  v11 = *(a2 + 79);
  if (!v11)
  {
    goto LABEL_55;
  }

  if (v11)
  {
    v34 = *(a2 + 45);
    *(this + 79) |= 1u;
    *(this + 45) = v34;
    v11 = *(a2 + 79);
    if ((v11 & 2) == 0)
    {
LABEL_48:
      if ((v11 & 4) == 0)
      {
        goto LABEL_49;
      }

      goto LABEL_101;
    }
  }

  else if ((v11 & 2) == 0)
  {
    goto LABEL_48;
  }

  v35 = *(a2 + 23);
  *(this + 79) |= 2u;
  *(this + 23) = v35;
  v11 = *(a2 + 79);
  if ((v11 & 4) == 0)
  {
LABEL_49:
    if ((v11 & 8) == 0)
    {
      goto LABEL_50;
    }

    goto LABEL_102;
  }

LABEL_101:
  v36 = *(a2 + 24);
  *(this + 79) |= 4u;
  *(this + 24) = v36;
  v11 = *(a2 + 79);
  if ((v11 & 8) == 0)
  {
LABEL_50:
    if ((v11 & 0x10) == 0)
    {
      goto LABEL_51;
    }

    goto LABEL_103;
  }

LABEL_102:
  v37 = *(a2 + 50);
  *(this + 79) |= 8u;
  *(this + 50) = v37;
  v11 = *(a2 + 79);
  if ((v11 & 0x10) == 0)
  {
LABEL_51:
    if ((v11 & 0x20) == 0)
    {
      goto LABEL_52;
    }

    goto LABEL_104;
  }

LABEL_103:
  v38 = *(a2 + 51);
  *(this + 79) |= 0x10u;
  *(this + 51) = v38;
  v11 = *(a2 + 79);
  if ((v11 & 0x20) == 0)
  {
LABEL_52:
    if ((v11 & 0x40) == 0)
    {
      goto LABEL_53;
    }

    goto LABEL_105;
  }

LABEL_104:
  v39 = *(a2 + 52);
  *(this + 79) |= 0x20u;
  *(this + 52) = v39;
  v11 = *(a2 + 79);
  if ((v11 & 0x40) == 0)
  {
LABEL_53:
    if ((v11 & 0x80) == 0)
    {
      goto LABEL_55;
    }

    goto LABEL_54;
  }

LABEL_105:
  v40 = *(a2 + 53);
  *(this + 79) |= 0x40u;
  *(this + 53) = v40;
  v11 = *(a2 + 79);
  if ((v11 & 0x80) != 0)
  {
LABEL_54:
    v12 = *(a2 + 54);
    *(this + 79) |= 0x80u;
    *(this + 54) = v12;
    v11 = *(a2 + 79);
  }

LABEL_55:
  if ((v11 & 0xFF00) == 0)
  {
    goto LABEL_65;
  }

  if ((v11 & 0x100) != 0)
  {
    v41 = *(a2 + 55);
    *(this + 79) |= 0x100u;
    *(this + 55) = v41;
    v11 = *(a2 + 79);
    if ((v11 & 0x200) == 0)
    {
LABEL_58:
      if ((v11 & 0x400) == 0)
      {
        goto LABEL_59;
      }

      goto LABEL_109;
    }
  }

  else if ((v11 & 0x200) == 0)
  {
    goto LABEL_58;
  }

  v42 = *(a2 + 28);
  *(this + 79) |= 0x200u;
  *(this + 28) = v42;
  v11 = *(a2 + 79);
  if ((v11 & 0x400) == 0)
  {
LABEL_59:
    if ((v11 & 0x800) == 0)
    {
      goto LABEL_60;
    }

    goto LABEL_110;
  }

LABEL_109:
  v43 = *(a2 + 29);
  *(this + 79) |= 0x400u;
  *(this + 29) = v43;
  v11 = *(a2 + 79);
  if ((v11 & 0x800) == 0)
  {
LABEL_60:
    if ((v11 & 0x1000) == 0)
    {
      goto LABEL_61;
    }

    goto LABEL_111;
  }

LABEL_110:
  v44 = *(a2 + 30);
  *(this + 79) |= 0x800u;
  *(this + 30) = v44;
  v11 = *(a2 + 79);
  if ((v11 & 0x1000) == 0)
  {
LABEL_61:
    if ((v11 & 0x2000) == 0)
    {
      goto LABEL_62;
    }

    goto LABEL_112;
  }

LABEL_111:
  v45 = *(a2 + 31);
  *(this + 79) |= 0x1000u;
  *(this + 31) = v45;
  v11 = *(a2 + 79);
  if ((v11 & 0x2000) == 0)
  {
LABEL_62:
    if ((v11 & 0x4000) == 0)
    {
      goto LABEL_63;
    }

    goto LABEL_113;
  }

LABEL_112:
  v46 = *(a2 + 32);
  *(this + 79) |= 0x2000u;
  *(this + 32) = v46;
  v11 = *(a2 + 79);
  if ((v11 & 0x4000) == 0)
  {
LABEL_63:
    if ((v11 & 0x8000) == 0)
    {
      goto LABEL_65;
    }

    goto LABEL_64;
  }

LABEL_113:
  v47 = *(a2 + 33);
  *(this + 79) |= 0x4000u;
  *(this + 33) = v47;
  v11 = *(a2 + 79);
  if ((v11 & 0x8000) != 0)
  {
LABEL_64:
    v13 = *(a2 + 68);
    *(this + 79) |= 0x8000u;
    *(this + 68) = v13;
    v11 = *(a2 + 79);
  }

LABEL_65:
  if ((v11 & 0xFF0000) == 0)
  {
    return;
  }

  if ((v11 & 0x10000) != 0)
  {
    v48 = *(a2 + 69);
    *(this + 79) |= 0x10000u;
    *(this + 69) = v48;
    v11 = *(a2 + 79);
    if ((v11 & 0x20000) == 0)
    {
LABEL_68:
      if ((v11 & 0x40000) == 0)
      {
        goto LABEL_69;
      }

      goto LABEL_117;
    }
  }

  else if ((v11 & 0x20000) == 0)
  {
    goto LABEL_68;
  }

  v49 = *(a2 + 70);
  *(this + 79) |= 0x20000u;
  *(this + 70) = v49;
  v11 = *(a2 + 79);
  if ((v11 & 0x40000) == 0)
  {
LABEL_69:
    if ((v11 & 0x80000) == 0)
    {
      goto LABEL_70;
    }

    goto LABEL_118;
  }

LABEL_117:
  v50 = *(a2 + 71);
  *(this + 79) |= 0x40000u;
  *(this + 71) = v50;
  v11 = *(a2 + 79);
  if ((v11 & 0x80000) == 0)
  {
LABEL_70:
    if ((v11 & 0x100000) == 0)
    {
      goto LABEL_71;
    }

    goto LABEL_119;
  }

LABEL_118:
  v51 = *(a2 + 72);
  *(this + 79) |= 0x80000u;
  *(this + 72) = v51;
  v11 = *(a2 + 79);
  if ((v11 & 0x100000) == 0)
  {
LABEL_71:
    if ((v11 & 0x200000) == 0)
    {
      goto LABEL_72;
    }

    goto LABEL_120;
  }

LABEL_119:
  v52 = *(a2 + 73);
  *(this + 79) |= 0x100000u;
  *(this + 73) = v52;
  v11 = *(a2 + 79);
  if ((v11 & 0x200000) == 0)
  {
LABEL_72:
    if ((v11 & 0x400000) == 0)
    {
      goto LABEL_73;
    }

    goto LABEL_121;
  }

LABEL_120:
  v53 = *(a2 + 74);
  *(this + 79) |= 0x200000u;
  *(this + 74) = v53;
  v11 = *(a2 + 79);
  if ((v11 & 0x400000) == 0)
  {
LABEL_73:
    if ((v11 & 0x800000) == 0)
    {
      return;
    }

    goto LABEL_74;
  }

LABEL_121:
  v54 = *(a2 + 75);
  *(this + 79) |= 0x400000u;
  *(this + 75) = v54;
  if ((*(a2 + 79) & 0x800000) != 0)
  {
LABEL_74:
    v14 = *(a2 + 76);
    *(this + 79) |= 0x800000u;
    *(this + 76) = v14;
  }
}

void sub_29636F5CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::metrics::BluetoothA2DPAudioLinkInfo::~BluetoothA2DPAudioLinkInfo(awd::metrics::BluetoothA2DPAudioLinkInfo *this)
{
  *this = &unk_2A1D4B490;
  awd::metrics::BluetoothA2DPAudioLinkInfo::SharedDtor(this);
  v2 = *(this + 8);
  if (v2)
  {
    MEMORY[0x29C259EE0](v2, 0x1000C8052888210);
  }

  v3 = *(this + 5);
  if (v3)
  {
    MEMORY[0x29C259EE0](v3, 0x1000C8052888210);
  }

  v4 = *(this + 3);
  if (v4)
  {
    MEMORY[0x29C259EE0](v4, 0x1000C8052888210);
  }

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  awd::metrics::BluetoothA2DPAudioLinkInfo::~BluetoothA2DPAudioLinkInfo(this);

  JUMPOUT(0x29C259F00);
}

uint64_t awd::metrics::BluetoothA2DPAudioLinkInfo::SharedDtor(uint64_t this)
{
  v1 = *(this + 80);
  if (v1 != MEMORY[0x29EDC9758] && v1 != 0)
  {
    if (*(v1 + 23) < 0)
    {
      operator delete(*v1);
    }

    JUMPOUT(0x29C259F00);
  }

  return this;
}

uint64_t awd::metrics::BluetoothA2DPAudioLinkInfo::default_instance(awd::metrics::BluetoothA2DPAudioLinkInfo *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = awd::metrics::BluetoothA2DPAudioLinkInfo::default_instance_;
  if (!awd::metrics::BluetoothA2DPAudioLinkInfo::default_instance_)
  {
    awd::metrics::protobuf_AddDesc_Bluetooth_2eproto(0, a2, a3, a4);
    return awd::metrics::BluetoothA2DPAudioLinkInfo::default_instance_;
  }

  return result;
}

uint64_t awd::metrics::BluetoothA2DPAudioLinkInfo::Clear(uint64_t this)
{
  v1 = *(this + 312);
  if (v1)
  {
    *(this + 8) = 0;
    *(this + 16) = 0;
    *(this + 20) = 0;
    *(this + 56) = 0;
  }

  if ((v1 & 0xFF00) != 0)
  {
    if ((v1 & 0x100) != 0)
    {
      v2 = *(this + 80);
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

    *(this + 88) = 0;
    *(this + 96) = 0;
    *(this + 112) = 0;
    *(this + 104) = 0;
    v1 = *(this + 312);
  }

  if ((v1 & 0xFF0000) != 0)
  {
    *(this + 132) = 0u;
    *(this + 116) = 0u;
  }

  if (HIBYTE(v1))
  {
    *(this + 164) = 0u;
    *(this + 148) = 0u;
  }

  v3 = *(this + 316);
  if (v3)
  {
    *(this + 212) = 0;
    *(this + 196) = 0u;
    *(this + 180) = 0u;
  }

  if ((v3 & 0xFF00) != 0)
  {
    *(this + 220) = 0u;
    *(this + 268) = 0;
    *(this + 236) = 0u;
    *(this + 252) = 0u;
  }

  if ((v3 & 0xFF0000) != 0)
  {
    *(this + 276) = 0u;
    *(this + 292) = 0u;
  }

  *(this + 32) = 0;
  *(this + 48) = 0;
  *(this + 72) = 0;
  *(this + 312) = 0;
  return this;
}

uint64_t awd::metrics::BluetoothA2DPAudioLinkInfo::MergePartialFromCodedStream(awd::metrics::BluetoothA2DPAudioLinkInfo *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
{
  v5 = (this + 272);
  v6 = (this + 276);
  v7 = (this + 280);
  v8 = (this + 284);
  v9 = (this + 288);
  v10 = (this + 292);
  v11 = (this + 296);
  v220 = (this + 304);
  v221 = (this + 300);
LABEL_2:
  while (2)
  {
    v12 = *(a2 + 1);
    if (v12 >= *(a2 + 2) || (TagFallback = *v12, (TagFallback & 0x80000000) != 0))
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
      *(a2 + 1) = v12 + 1;
      if (!TagFallback)
      {
        return 1;
      }
    }

    v14 = TagFallback & 7;
    switch(TagFallback >> 3)
    {
      case 1u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_127;
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

        *(this + 78) |= 1u;
        if (v18 < v15 && *v18 == 16)
        {
          v51 = v18 + 1;
          *(a2 + 1) = v51;
          goto LABEL_139;
        }

        continue;
      case 2u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_127;
        }

        v51 = *(a2 + 1);
        v15 = *(a2 + 2);
LABEL_139:
        v223[0] = 0;
        if (v51 >= v15 || (v83 = *v51, (v83 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v223);
          if (!result)
          {
            return result;
          }

          v83 = v223[0];
          v84 = *(a2 + 1);
          v15 = *(a2 + 2);
        }

        else
        {
          v84 = v51 + 1;
          *(a2 + 1) = v84;
        }

        *(this + 16) = v83 != 0;
        *(this + 78) |= 2u;
        if (v84 >= v15 || *v84 != 24)
        {
          continue;
        }

        v49 = v84 + 1;
        *(a2 + 1) = v49;
LABEL_147:
        if (v49 >= v15 || (v85 = *v49, v85 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 5);
          if (!result)
          {
            return result;
          }

          v86 = *(a2 + 1);
          v15 = *(a2 + 2);
        }

        else
        {
          *(this + 5) = v85;
          v86 = (v49 + 1);
          *(a2 + 1) = v86;
        }

        *(this + 78) |= 4u;
        if (v86 >= v15)
        {
          continue;
        }

        v87 = *v86;
        goto LABEL_174;
      case 3u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_127;
        }

        v49 = *(a2 + 1);
        v15 = *(a2 + 2);
        goto LABEL_147;
      case 4u:
        if ((TagFallback & 7) == 0)
        {
          v81 = *(a2 + 1);
          v15 = *(a2 + 2);
          goto LABEL_155;
        }

        if (v14 != 2)
        {
          goto LABEL_127;
        }

        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadPackedPrimitiveNoInline<unsigned int,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)13>(a2, this + 3);
        if (!result)
        {
          return result;
        }

        while (2)
        {
          v86 = *(a2 + 1);
          v15 = *(a2 + 2);
          if (v86 < v15)
          {
            v87 = *v86;
            if (v87 == 40)
            {
              while (1)
              {
                v80 = (v86 + 1);
                *(a2 + 1) = v80;
LABEL_177:
                v223[0] = 0;
                v219 = v11;
                if (v80 >= v15 || (v98 = *v80, (v98 & 0x80000000) != 0))
                {
                  result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v223);
                  if (!result)
                  {
                    return result;
                  }

                  v37 = v10;
                  v38 = v9;
                  v39 = v8;
                  v40 = v7;
                  v41 = v6;
                  v98 = v223[0];
                }

                else
                {
                  v37 = v10;
                  v38 = v9;
                  v39 = v8;
                  v40 = v7;
                  v41 = v6;
                  *(a2 + 1) = v80 + 1;
                }

                v42 = v5;
                v99 = *(this + 12);
                if (v99 == *(this + 13))
                {
                  wireless_diagnostics::google::protobuf::RepeatedField<int>::Reserve(this + 10, v99 + 1);
                  v99 = *(this + 12);
                }

                v100 = *(this + 5);
                *(this + 12) = v99 + 1;
                *(v100 + 4 * v99) = v98;
                v101 = *(this + 13) - *(this + 12);
                if (v101 >= 1)
                {
                  v102 = v101 + 1;
                  do
                  {
                    v103 = *(a2 + 1);
                    v104 = *(a2 + 2);
                    if (v103 >= v104 || *v103 != 40)
                    {
                      break;
                    }

                    *(a2 + 1) = v103 + 1;
                    v223[0] = 0;
                    if ((v103 + 1) >= v104 || (v105 = v103[1], (v105 & 0x80000000) != 0))
                    {
                      result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v223);
                      if (!result)
                      {
                        return result;
                      }

                      v105 = v223[0];
                    }

                    else
                    {
                      *(a2 + 1) = v103 + 2;
                    }

                    v106 = *(this + 12);
                    if (v106 >= *(this + 13))
                    {
                      wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                      wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                      wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                      wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v223);
                      v106 = *(this + 12);
                    }

                    v107 = *(this + 5);
                    *(this + 12) = v106 + 1;
                    *(v107 + 4 * v106) = v105;
                    --v102;
                  }

                  while (v102 > 1);
                }

LABEL_196:
                v86 = *(a2 + 1);
                v15 = *(a2 + 2);
                v5 = v42;
                v6 = v41;
                v7 = v40;
                v8 = v39;
                v9 = v38;
                v10 = v37;
                v11 = v219;
                if (v86 >= v15)
                {
                  break;
                }

                v108 = *v86;
                if (v108 == 48)
                {
                  v56 = (v86 + 1);
                  *(a2 + 1) = v56;
LABEL_201:
                  if (v56 >= v15 || (v109 = *v56, v109 < 0))
                  {
                    result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 14);
                    if (!result)
                    {
                      return result;
                    }

                    v110 = *(a2 + 1);
                    v15 = *(a2 + 2);
                  }

                  else
                  {
                    *(this + 14) = v109;
                    v110 = v56 + 1;
                    *(a2 + 1) = v110;
                  }

                  *(this + 78) |= 0x20u;
                  if (v110 < v15 && *v110 == 56)
                  {
                    v59 = v110 + 1;
                    *(a2 + 1) = v59;
LABEL_209:
                    if (v59 >= v15 || (v111 = *v59, v111 < 0))
                    {
                      result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 15);
                      if (!result)
                      {
                        return result;
                      }

                      v112 = *(a2 + 1);
                      v15 = *(a2 + 2);
                    }

                    else
                    {
                      *(this + 15) = v111;
                      v112 = (v59 + 1);
                      *(a2 + 1) = v112;
                    }

                    *(this + 78) |= 0x40u;
                    if (v112 < v15)
                    {
                      v113 = *v112;
                      goto LABEL_235;
                    }
                  }

                  goto LABEL_2;
                }

                if (v108 != 40)
                {
                  goto LABEL_2;
                }
              }
            }

            else
            {
LABEL_174:
              if (v87 == 32)
              {
                v81 = (v86 + 1);
                *(a2 + 1) = v81;
LABEL_155:
                v222 = 0;
                if (v81 >= v15 || *v81 < 0)
                {
                  if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v222))
                  {
                    return 0;
                  }
                }

                else
                {
                  v222 = *v81;
                  *(a2 + 1) = v81 + 1;
                }

                v88 = *(this + 8);
                if (v88 == *(this + 9))
                {
                  wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 6, v88 + 1);
                  v88 = *(this + 8);
                }

                v89 = v222;
                v90 = *(this + 3);
                *(this + 8) = v88 + 1;
                *(v90 + 4 * v88) = v89;
                v91 = *(this + 9) - *(this + 8);
                if (v91 >= 1)
                {
                  v92 = v91 + 1;
                  do
                  {
                    v93 = *(a2 + 1);
                    v94 = *(a2 + 2);
                    if (v93 >= v94 || *v93 != 32)
                    {
                      break;
                    }

                    *(a2 + 1) = v93 + 1;
                    if ((v93 + 1) >= v94 || v93[1] < 0)
                    {
                      if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v222))
                      {
                        return 0;
                      }
                    }

                    else
                    {
                      v222 = v93[1];
                      *(a2 + 1) = v93 + 2;
                    }

                    v95 = *(this + 8);
                    if (v95 >= *(this + 9))
                    {
                      wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                      wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                      wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                      wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v223);
                      v95 = *(this + 8);
                    }

                    v96 = v222;
                    v97 = *(this + 3);
                    *(this + 8) = v95 + 1;
                    *(v97 + 4 * v95) = v96;
                    --v92;
                  }

                  while (v92 > 1);
                }

                continue;
              }
            }
          }

          goto LABEL_2;
        }

      case 5u:
        if ((TagFallback & 7) == 0)
        {
          v80 = *(a2 + 1);
          v15 = *(a2 + 2);
          goto LABEL_177;
        }

        if (v14 != 2)
        {
          goto LABEL_127;
        }

        v219 = v11;
        v37 = v10;
        v38 = v9;
        v39 = v8;
        v40 = v7;
        v41 = v6;
        v42 = v5;
        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadPackedPrimitiveNoInline<int,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)5>(a2, this + 5);
        if (!result)
        {
          return result;
        }

        goto LABEL_196;
      case 6u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_127;
        }

        v56 = *(a2 + 1);
        v15 = *(a2 + 2);
        goto LABEL_201;
      case 7u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_127;
        }

        v59 = *(a2 + 1);
        v15 = *(a2 + 2);
        goto LABEL_209;
      case 8u:
        if ((TagFallback & 7) != 0)
        {
          if (v14 == 2)
          {
            result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadPackedPrimitiveNoInline<unsigned int,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)13>(a2, this + 8);
            if (!result)
            {
              return result;
            }

            goto LABEL_233;
          }

LABEL_127:
          if (v14 == 4)
          {
            return 1;
          }

          if ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(a2, TagFallback) & 1) == 0)
          {
            return 0;
          }

          continue;
        }

        v82 = *(a2 + 1);
        v15 = *(a2 + 2);
LABEL_216:
        v222 = 0;
        if (v82 < v15 && (*v82 & 0x80000000) == 0)
        {
          v222 = *v82;
          *(a2 + 1) = v82 + 1;
          goto LABEL_220;
        }

        if (wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v222))
        {
LABEL_220:
          v114 = *(this + 18);
          if (v114 == *(this + 19))
          {
            wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 16, v114 + 1);
            v114 = *(this + 18);
          }

          v115 = v222;
          v116 = *(this + 8);
          *(this + 18) = v114 + 1;
          *(v116 + 4 * v114) = v115;
          v117 = *(this + 19) - *(this + 18);
          if (v117 >= 1)
          {
            v118 = v117 + 1;
            do
            {
              v119 = *(a2 + 1);
              v120 = *(a2 + 2);
              if (v119 >= v120 || *v119 != 64)
              {
                break;
              }

              *(a2 + 1) = v119 + 1;
              if ((v119 + 1) >= v120 || v119[1] < 0)
              {
                if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v222))
                {
                  return 0;
                }
              }

              else
              {
                v222 = v119[1];
                *(a2 + 1) = v119 + 2;
              }

              v121 = *(this + 18);
              if (v121 >= *(this + 19))
              {
                wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v223);
                v121 = *(this + 18);
              }

              v122 = v222;
              v123 = *(this + 8);
              *(this + 18) = v121 + 1;
              *(v123 + 4 * v121) = v122;
              --v118;
            }

            while (v118 > 1);
          }

LABEL_233:
          v112 = *(a2 + 1);
          v15 = *(a2 + 2);
          if (v112 >= v15)
          {
            continue;
          }

          v113 = *v112;
          if (v113 != 74)
          {
LABEL_235:
            if (v113 != 64)
            {
              continue;
            }

            v82 = (v112 + 1);
            *(a2 + 1) = v82;
            goto LABEL_216;
          }

          *(a2 + 1) = v112 + 1;
LABEL_238:
          *(this + 78) |= 0x100u;
          if (*(this + 10) == MEMORY[0x29EDC9758])
          {
            operator new();
          }

          result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
          if (!result)
          {
            return result;
          }

          v124 = *(a2 + 1);
          v27 = *(a2 + 2);
          if (v124 < v27 && *v124 == 80)
          {
            v46 = v124 + 1;
            *(a2 + 1) = v46;
LABEL_244:
            if (v46 >= v27 || (v125 = *v46, v125 < 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 22);
              if (!result)
              {
                return result;
              }

              v126 = *(a2 + 1);
              v27 = *(a2 + 2);
            }

            else
            {
              *(this + 22) = v125;
              v126 = v46 + 1;
              *(a2 + 1) = v126;
            }

            *(this + 78) |= 0x200u;
            if (v126 < v27 && *v126 == 88)
            {
              v61 = v126 + 1;
              *(a2 + 1) = v61;
LABEL_252:
              if (v61 >= v27 || (v127 = *v61, v127 < 0))
              {
                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 23);
                if (!result)
                {
                  return result;
                }

                v128 = *(a2 + 1);
                v27 = *(a2 + 2);
              }

              else
              {
                *(this + 23) = v127;
                v128 = v61 + 1;
                *(a2 + 1) = v128;
              }

              *(this + 78) |= 0x400u;
              if (v128 < v27 && *v128 == 96)
              {
                v35 = v128 + 1;
                *(a2 + 1) = v35;
LABEL_260:
                if (v35 >= v27 || (v129 = *v35, v129 < 0))
                {
                  result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 24);
                  if (!result)
                  {
                    return result;
                  }

                  v130 = *(a2 + 1);
                  v27 = *(a2 + 2);
                }

                else
                {
                  *(this + 24) = v129;
                  v130 = v35 + 1;
                  *(a2 + 1) = v130;
                }

                *(this + 78) |= 0x800u;
                if (v130 < v27 && *v130 == 104)
                {
                  v45 = v130 + 1;
                  *(a2 + 1) = v45;
LABEL_268:
                  if (v45 >= v27 || (v131 = *v45, v131 < 0))
                  {
                    result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 25);
                    if (!result)
                    {
                      return result;
                    }

                    v132 = *(a2 + 1);
                    v27 = *(a2 + 2);
                  }

                  else
                  {
                    *(this + 25) = v131;
                    v132 = v45 + 1;
                    *(a2 + 1) = v132;
                  }

                  *(this + 78) |= 0x1000u;
                  if (v132 < v27 && *v132 == 112)
                  {
                    v58 = v132 + 1;
                    *(a2 + 1) = v58;
LABEL_276:
                    if (v58 >= v27 || (v133 = *v58, v133 < 0))
                    {
                      result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 26);
                      if (!result)
                      {
                        return result;
                      }

                      v134 = *(a2 + 1);
                      v27 = *(a2 + 2);
                    }

                    else
                    {
                      *(this + 26) = v133;
                      v134 = v58 + 1;
                      *(a2 + 1) = v134;
                    }

                    *(this + 78) |= 0x2000u;
                    if (v134 < v27 && *v134 == 120)
                    {
                      v32 = v134 + 1;
                      *(a2 + 1) = v32;
LABEL_284:
                      if (v32 >= v27 || (v135 = *v32, v135 < 0))
                      {
                        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 27);
                        if (!result)
                        {
                          return result;
                        }

                        v136 = *(a2 + 1);
                        v27 = *(a2 + 2);
                      }

                      else
                      {
                        *(this + 27) = v135;
                        v136 = (v32 + 1);
                        *(a2 + 1) = v136;
                      }

                      *(this + 78) |= 0x4000u;
                      if (v27 - v136 >= 2 && *v136 == 128 && v136[1] == 1)
                      {
                        v50 = (v136 + 2);
                        *(a2 + 1) = v50;
LABEL_293:
                        v223[0] = 0;
                        if (v50 >= v27 || (v137 = *v50, (v137 & 0x80000000) != 0))
                        {
                          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v223);
                          if (!result)
                          {
                            return result;
                          }

                          v137 = v223[0];
                          v138 = *(a2 + 1);
                          v27 = *(a2 + 2);
                        }

                        else
                        {
                          v138 = (v50 + 1);
                          *(a2 + 1) = v138;
                        }

                        *(this + 28) = -(v137 & 1) ^ (v137 >> 1);
                        *(this + 78) |= 0x8000u;
                        if (v27 - v138 >= 2 && *v138 == 136 && v138[1] == 1)
                        {
                          v30 = (v138 + 2);
                          *(a2 + 1) = v30;
LABEL_302:
                          v223[0] = 0;
                          if (v30 >= v27 || (v139 = *v30, (v139 & 0x80000000) != 0))
                          {
                            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v223);
                            if (!result)
                            {
                              return result;
                            }

                            v139 = v223[0];
                            v140 = *(a2 + 1);
                            v27 = *(a2 + 2);
                          }

                          else
                          {
                            v140 = (v30 + 1);
                            *(a2 + 1) = v140;
                          }

                          *(this + 29) = -(v139 & 1) ^ (v139 >> 1);
                          *(this + 78) |= 0x10000u;
                          if (v27 - v140 >= 2 && *v140 == 144 && v140[1] == 1)
                          {
                            v53 = (v140 + 2);
                            *(a2 + 1) = v53;
LABEL_311:
                            v223[0] = 0;
                            if (v53 >= v27 || (v141 = *v53, (v141 & 0x80000000) != 0))
                            {
                              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v223);
                              if (!result)
                              {
                                return result;
                              }

                              v141 = v223[0];
                              v142 = *(a2 + 1);
                              v27 = *(a2 + 2);
                            }

                            else
                            {
                              v142 = (v53 + 1);
                              *(a2 + 1) = v142;
                            }

                            *(this + 30) = -(v141 & 1) ^ (v141 >> 1);
                            *(this + 78) |= 0x20000u;
                            if (v27 - v142 >= 2 && *v142 == 152 && v142[1] == 1)
                            {
                              v60 = (v142 + 2);
                              *(a2 + 1) = v60;
LABEL_320:
                              v223[0] = 0;
                              if (v60 >= v27 || (v143 = *v60, (v143 & 0x80000000) != 0))
                              {
                                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v223);
                                if (!result)
                                {
                                  return result;
                                }

                                v143 = v223[0];
                                v144 = *(a2 + 1);
                                v27 = *(a2 + 2);
                              }

                              else
                              {
                                v144 = (v60 + 1);
                                *(a2 + 1) = v144;
                              }

                              *(this + 31) = -(v143 & 1) ^ (v143 >> 1);
                              *(this + 78) |= 0x40000u;
                              if (v27 - v144 >= 2 && *v144 == 160 && v144[1] == 1)
                              {
                                v67 = (v144 + 2);
                                *(a2 + 1) = v67;
LABEL_329:
                                v223[0] = 0;
                                if (v67 >= v27 || (v145 = *v67, (v145 & 0x80000000) != 0))
                                {
                                  result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v223);
                                  if (!result)
                                  {
                                    return result;
                                  }

                                  v145 = v223[0];
                                  v146 = *(a2 + 1);
                                  v27 = *(a2 + 2);
                                }

                                else
                                {
                                  v146 = (v67 + 1);
                                  *(a2 + 1) = v146;
                                }

                                *(this + 32) = -(v145 & 1) ^ (v145 >> 1);
                                *(this + 78) |= 0x80000u;
                                if (v27 - v146 >= 2 && *v146 == 168 && v146[1] == 1)
                                {
                                  v55 = (v146 + 2);
                                  *(a2 + 1) = v55;
LABEL_338:
                                  v223[0] = 0;
                                  if (v55 >= v27 || (v147 = *v55, (v147 & 0x80000000) != 0))
                                  {
                                    result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v223);
                                    if (!result)
                                    {
                                      return result;
                                    }

                                    v147 = v223[0];
                                    v148 = *(a2 + 1);
                                    v27 = *(a2 + 2);
                                  }

                                  else
                                  {
                                    v148 = (v55 + 1);
                                    *(a2 + 1) = v148;
                                  }

                                  *(this + 33) = -(v147 & 1) ^ (v147 >> 1);
                                  *(this + 78) |= 0x100000u;
                                  if (v27 - v148 >= 2 && *v148 == 176 && v148[1] == 1)
                                  {
                                    v57 = (v148 + 2);
                                    *(a2 + 1) = v57;
LABEL_347:
                                    if (v57 >= v27 || (v149 = *v57, v149 < 0))
                                    {
                                      result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 34);
                                      if (!result)
                                      {
                                        return result;
                                      }

                                      v150 = *(a2 + 1);
                                      v27 = *(a2 + 2);
                                    }

                                    else
                                    {
                                      *(this + 34) = v149;
                                      v150 = (v57 + 1);
                                      *(a2 + 1) = v150;
                                    }

                                    *(this + 78) |= 0x200000u;
                                    if (v27 - v150 >= 2 && *v150 == 184 && v150[1] == 1)
                                    {
                                      v65 = (v150 + 2);
                                      *(a2 + 1) = v65;
LABEL_356:
                                      if (v65 >= v27 || (v151 = *v65, v151 < 0))
                                      {
                                        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 35);
                                        if (!result)
                                        {
                                          return result;
                                        }

                                        v152 = *(a2 + 1);
                                        v27 = *(a2 + 2);
                                      }

                                      else
                                      {
                                        *(this + 35) = v151;
                                        v152 = (v65 + 1);
                                        *(a2 + 1) = v152;
                                      }

                                      *(this + 78) |= 0x400000u;
                                      if (v27 - v152 >= 2 && *v152 == 192 && v152[1] == 1)
                                      {
                                        v69 = (v152 + 2);
                                        *(a2 + 1) = v69;
LABEL_365:
                                        if (v69 >= v27 || (v153 = *v69, v153 < 0))
                                        {
                                          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 36);
                                          if (!result)
                                          {
                                            return result;
                                          }

                                          v154 = *(a2 + 1);
                                          v27 = *(a2 + 2);
                                        }

                                        else
                                        {
                                          *(this + 36) = v153;
                                          v154 = (v69 + 1);
                                          *(a2 + 1) = v154;
                                        }

                                        *(this + 78) |= 0x800000u;
                                        if (v27 - v154 >= 2 && *v154 == 200 && v154[1] == 1)
                                        {
                                          v48 = (v154 + 2);
                                          *(a2 + 1) = v48;
LABEL_374:
                                          if (v48 >= v27 || (v155 = *v48, v155 < 0))
                                          {
                                            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 37);
                                            if (!result)
                                            {
                                              return result;
                                            }

                                            v156 = *(a2 + 1);
                                            v27 = *(a2 + 2);
                                          }

                                          else
                                          {
                                            *(this + 37) = v155;
                                            v156 = (v48 + 1);
                                            *(a2 + 1) = v156;
                                          }

                                          *(this + 78) |= 0x1000000u;
                                          if (v27 - v156 >= 2 && *v156 == 208 && v156[1] == 1)
                                          {
                                            v47 = (v156 + 2);
                                            *(a2 + 1) = v47;
LABEL_383:
                                            if (v47 >= v27 || (v157 = *v47, v157 < 0))
                                            {
                                              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 38);
                                              if (!result)
                                              {
                                                return result;
                                              }

                                              v158 = *(a2 + 1);
                                              v27 = *(a2 + 2);
                                            }

                                            else
                                            {
                                              *(this + 38) = v157;
                                              v158 = (v47 + 1);
                                              *(a2 + 1) = v158;
                                            }

                                            *(this + 78) |= 0x2000000u;
                                            if (v27 - v158 >= 2 && *v158 == 216 && v158[1] == 1)
                                            {
                                              v73 = (v158 + 2);
                                              *(a2 + 1) = v73;
LABEL_392:
                                              if (v73 >= v27 || (v159 = *v73, v159 < 0))
                                              {
                                                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 39);
                                                if (!result)
                                                {
                                                  return result;
                                                }

                                                v160 = *(a2 + 1);
                                                v27 = *(a2 + 2);
                                              }

                                              else
                                              {
                                                *(this + 39) = v159;
                                                v160 = (v73 + 1);
                                                *(a2 + 1) = v160;
                                              }

                                              *(this + 78) |= 0x4000000u;
                                              if (v27 - v160 >= 2 && *v160 == 224 && v160[1] == 1)
                                              {
                                                v28 = (v160 + 2);
                                                *(a2 + 1) = v28;
LABEL_401:
                                                if (v28 >= v27 || (v161 = *v28, v161 < 0))
                                                {
                                                  result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 40);
                                                  if (!result)
                                                  {
                                                    return result;
                                                  }

                                                  v162 = *(a2 + 1);
                                                  v27 = *(a2 + 2);
                                                }

                                                else
                                                {
                                                  *(this + 40) = v161;
                                                  v162 = (v28 + 1);
                                                  *(a2 + 1) = v162;
                                                }

                                                *(this + 78) |= 0x8000000u;
                                                if (v27 - v162 >= 2 && *v162 == 232 && v162[1] == 1)
                                                {
                                                  v70 = (v162 + 2);
                                                  *(a2 + 1) = v70;
LABEL_410:
                                                  if (v70 >= v27 || (v163 = *v70, v163 < 0))
                                                  {
                                                    result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 41);
                                                    if (!result)
                                                    {
                                                      return result;
                                                    }

                                                    v164 = *(a2 + 1);
                                                    v27 = *(a2 + 2);
                                                  }

                                                  else
                                                  {
                                                    *(this + 41) = v163;
                                                    v164 = (v70 + 1);
                                                    *(a2 + 1) = v164;
                                                  }

                                                  *(this + 78) |= 0x10000000u;
                                                  if (v27 - v164 >= 2 && *v164 == 240 && v164[1] == 1)
                                                  {
                                                    v71 = (v164 + 2);
                                                    *(a2 + 1) = v71;
LABEL_419:
                                                    if (v71 >= v27 || (v165 = *v71, v165 < 0))
                                                    {
                                                      result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 42);
                                                      if (!result)
                                                      {
                                                        return result;
                                                      }

                                                      v166 = *(a2 + 1);
                                                      v27 = *(a2 + 2);
                                                    }

                                                    else
                                                    {
                                                      *(this + 42) = v165;
                                                      v166 = (v71 + 1);
                                                      *(a2 + 1) = v166;
                                                    }

                                                    *(this + 78) |= 0x20000000u;
                                                    if (v27 - v166 >= 2 && *v166 == 248 && v166[1] == 1)
                                                    {
                                                      v62 = (v166 + 2);
                                                      *(a2 + 1) = v62;
LABEL_428:
                                                      if (v62 >= v27 || (v167 = *v62, v167 < 0))
                                                      {
                                                        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 43);
                                                        if (!result)
                                                        {
                                                          return result;
                                                        }

                                                        v168 = *(a2 + 1);
                                                        v27 = *(a2 + 2);
                                                      }

                                                      else
                                                      {
                                                        *(this + 43) = v167;
                                                        v168 = (v62 + 1);
                                                        *(a2 + 1) = v168;
                                                      }

                                                      *(this + 78) |= 0x40000000u;
                                                      if (v27 - v168 >= 2 && *v168 == 128 && v168[1] == 2)
                                                      {
                                                        v52 = (v168 + 2);
                                                        *(a2 + 1) = v52;
LABEL_437:
                                                        if (v52 >= v27 || (v169 = *v52, v169 < 0))
                                                        {
                                                          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 44);
                                                          if (!result)
                                                          {
                                                            return result;
                                                          }

                                                          v170 = *(a2 + 1);
                                                        }

                                                        else
                                                        {
                                                          *(this + 44) = v169;
                                                          v170 = (v52 + 1);
                                                          *(a2 + 1) = v170;
                                                        }

                                                        *(this + 78) |= 0x80000000;
                                                        v19 = *(a2 + 2);
                                                        if (v19 - v170 >= 2 && *v170 == 136 && v170[1] == 2)
                                                        {
                                                          v63 = (v170 + 2);
                                                          *(a2 + 1) = v63;
LABEL_446:
                                                          if (v63 >= v19 || (v171 = *v63, v171 < 0))
                                                          {
                                                            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 45);
                                                            if (!result)
                                                            {
                                                              return result;
                                                            }

                                                            v172 = *(a2 + 1);
                                                            v19 = *(a2 + 2);
                                                          }

                                                          else
                                                          {
                                                            *(this + 45) = v171;
                                                            v172 = (v63 + 1);
                                                            *(a2 + 1) = v172;
                                                          }

                                                          *(this + 79) |= 1u;
                                                          if (v19 - v172 >= 2 && *v172 == 144 && v172[1] == 2)
                                                          {
                                                            v33 = (v172 + 2);
                                                            *(a2 + 1) = v33;
LABEL_455:
                                                            if (v33 >= v19 || (v173 = *v33, v173 < 0))
                                                            {
                                                              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 23);
                                                              if (!result)
                                                              {
                                                                return result;
                                                              }

                                                              v174 = *(a2 + 1);
                                                              v19 = *(a2 + 2);
                                                            }

                                                            else
                                                            {
                                                              *(this + 23) = v173;
                                                              v174 = (v33 + 1);
                                                              *(a2 + 1) = v174;
                                                            }

                                                            *(this + 79) |= 2u;
                                                            if (v19 - v174 >= 2 && *v174 == 152 && v174[1] == 2)
                                                            {
                                                              v29 = (v174 + 2);
                                                              *(a2 + 1) = v29;
LABEL_464:
                                                              if (v29 >= v19 || (v175 = *v29, v175 < 0))
                                                              {
                                                                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 24);
                                                                if (!result)
                                                                {
                                                                  return result;
                                                                }

                                                                v176 = *(a2 + 1);
                                                                v19 = *(a2 + 2);
                                                              }

                                                              else
                                                              {
                                                                *(this + 24) = v175;
                                                                v176 = (v29 + 1);
                                                                *(a2 + 1) = v176;
                                                              }

                                                              *(this + 79) |= 4u;
                                                              if (v19 - v176 >= 2 && *v176 == 160 && v176[1] == 2)
                                                              {
                                                                v25 = (v176 + 2);
                                                                *(a2 + 1) = v25;
LABEL_473:
                                                                if (v25 >= v19 || (v177 = *v25, v177 < 0))
                                                                {
                                                                  result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 50);
                                                                  if (!result)
                                                                  {
                                                                    return result;
                                                                  }

                                                                  v178 = *(a2 + 1);
                                                                  v19 = *(a2 + 2);
                                                                }

                                                                else
                                                                {
                                                                  *(this + 50) = v177;
                                                                  v178 = (v25 + 1);
                                                                  *(a2 + 1) = v178;
                                                                }

                                                                *(this + 79) |= 8u;
                                                                if (v19 - v178 >= 2 && *v178 == 168 && v178[1] == 2)
                                                                {
                                                                  v26 = (v178 + 2);
                                                                  *(a2 + 1) = v26;
LABEL_482:
                                                                  if (v26 >= v19 || (v179 = *v26, v179 < 0))
                                                                  {
                                                                    result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 51);
                                                                    if (!result)
                                                                    {
                                                                      return result;
                                                                    }

                                                                    v180 = *(a2 + 1);
                                                                    v19 = *(a2 + 2);
                                                                  }

                                                                  else
                                                                  {
                                                                    *(this + 51) = v179;
                                                                    v180 = (v26 + 1);
                                                                    *(a2 + 1) = v180;
                                                                  }

                                                                  *(this + 79) |= 0x10u;
                                                                  if (v19 - v180 >= 2 && *v180 == 176 && v180[1] == 2)
                                                                  {
                                                                    v22 = (v180 + 2);
                                                                    *(a2 + 1) = v22;
LABEL_491:
                                                                    v223[0] = 0;
                                                                    if (v22 >= v19 || (v181 = *v22, (v181 & 0x80000000) != 0))
                                                                    {
                                                                      result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v223);
                                                                      if (!result)
                                                                      {
                                                                        return result;
                                                                      }

                                                                      v181 = v223[0];
                                                                      v182 = *(a2 + 1);
                                                                      v19 = *(a2 + 2);
                                                                    }

                                                                    else
                                                                    {
                                                                      v182 = (v22 + 1);
                                                                      *(a2 + 1) = v182;
                                                                    }

                                                                    *(this + 52) = v181;
                                                                    *(this + 79) |= 0x20u;
                                                                    if (v19 - v182 >= 2 && *v182 == 184 && v182[1] == 2)
                                                                    {
                                                                      v72 = (v182 + 2);
                                                                      *(a2 + 1) = v72;
LABEL_500:
                                                                      v223[0] = 0;
                                                                      if (v72 >= v19 || (v183 = *v72, (v183 & 0x80000000) != 0))
                                                                      {
                                                                        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v223);
                                                                        if (!result)
                                                                        {
                                                                          return result;
                                                                        }

                                                                        v183 = v223[0];
                                                                        v184 = *(a2 + 1);
                                                                        v19 = *(a2 + 2);
                                                                      }

                                                                      else
                                                                      {
                                                                        v184 = (v72 + 1);
                                                                        *(a2 + 1) = v184;
                                                                      }

                                                                      *(this + 53) = v183;
                                                                      *(this + 79) |= 0x40u;
                                                                      if (v19 - v184 >= 2 && *v184 == 192 && v184[1] == 2)
                                                                      {
                                                                        v66 = (v184 + 2);
                                                                        *(a2 + 1) = v66;
LABEL_509:
                                                                        v223[0] = 0;
                                                                        if (v66 >= v19 || (v185 = *v66, (v185 & 0x80000000) != 0))
                                                                        {
                                                                          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v223);
                                                                          if (!result)
                                                                          {
                                                                            return result;
                                                                          }

                                                                          v185 = v223[0];
                                                                          v186 = *(a2 + 1);
                                                                          v19 = *(a2 + 2);
                                                                        }

                                                                        else
                                                                        {
                                                                          v186 = (v66 + 1);
                                                                          *(a2 + 1) = v186;
                                                                        }

                                                                        *(this + 54) = v185;
                                                                        *(this + 79) |= 0x80u;
                                                                        if (v19 - v186 >= 2 && *v186 == 200 && v186[1] == 2)
                                                                        {
                                                                          v44 = (v186 + 2);
                                                                          *(a2 + 1) = v44;
LABEL_518:
                                                                          v223[0] = 0;
                                                                          if (v44 >= v19 || (v187 = *v44, (v187 & 0x80000000) != 0))
                                                                          {
                                                                            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v223);
                                                                            if (!result)
                                                                            {
                                                                              return result;
                                                                            }

                                                                            v187 = v223[0];
                                                                            v188 = *(a2 + 1);
                                                                            v19 = *(a2 + 2);
                                                                          }

                                                                          else
                                                                          {
                                                                            v188 = (v44 + 1);
                                                                            *(a2 + 1) = v188;
                                                                          }

                                                                          *(this + 55) = v187;
                                                                          *(this + 79) |= 0x100u;
                                                                          if (v19 - v188 >= 2 && *v188 == 208 && v188[1] == 2)
                                                                          {
                                                                            v54 = (v188 + 2);
                                                                            *(a2 + 1) = v54;
LABEL_527:
                                                                            if (v54 >= v19 || (v189 = *v54, v189 < 0))
                                                                            {
                                                                              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 28);
                                                                              if (!result)
                                                                              {
                                                                                return result;
                                                                              }

                                                                              v190 = *(a2 + 1);
                                                                              v19 = *(a2 + 2);
                                                                            }

                                                                            else
                                                                            {
                                                                              *(this + 28) = v189;
                                                                              v190 = (v54 + 1);
                                                                              *(a2 + 1) = v190;
                                                                            }

                                                                            *(this + 79) |= 0x200u;
                                                                            if (v19 - v190 >= 2 && *v190 == 216 && v190[1] == 2)
                                                                            {
                                                                              v68 = (v190 + 2);
                                                                              *(a2 + 1) = v68;
LABEL_536:
                                                                              if (v68 >= v19 || (v191 = *v68, v191 < 0))
                                                                              {
                                                                                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 29);
                                                                                if (!result)
                                                                                {
                                                                                  return result;
                                                                                }

                                                                                v192 = *(a2 + 1);
                                                                                v19 = *(a2 + 2);
                                                                              }

                                                                              else
                                                                              {
                                                                                *(this + 29) = v191;
                                                                                v192 = (v68 + 1);
                                                                                *(a2 + 1) = v192;
                                                                              }

                                                                              *(this + 79) |= 0x400u;
                                                                              if (v19 - v192 >= 2 && *v192 == 224 && v192[1] == 2)
                                                                              {
                                                                                v21 = (v192 + 2);
                                                                                *(a2 + 1) = v21;
LABEL_545:
                                                                                if (v21 >= v19 || (v193 = *v21, v193 < 0))
                                                                                {
                                                                                  result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 30);
                                                                                  if (!result)
                                                                                  {
                                                                                    return result;
                                                                                  }

                                                                                  v194 = *(a2 + 1);
                                                                                  v19 = *(a2 + 2);
                                                                                }

                                                                                else
                                                                                {
                                                                                  *(this + 30) = v193;
                                                                                  v194 = (v21 + 1);
                                                                                  *(a2 + 1) = v194;
                                                                                }

                                                                                *(this + 79) |= 0x800u;
                                                                                if (v19 - v194 >= 2 && *v194 == 232 && v194[1] == 2)
                                                                                {
                                                                                  v31 = (v194 + 2);
                                                                                  *(a2 + 1) = v31;
LABEL_554:
                                                                                  if (v31 >= v19 || (v195 = *v31, v195 < 0))
                                                                                  {
                                                                                    result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 31);
                                                                                    if (!result)
                                                                                    {
                                                                                      return result;
                                                                                    }

                                                                                    v196 = *(a2 + 1);
                                                                                    v19 = *(a2 + 2);
                                                                                  }

                                                                                  else
                                                                                  {
                                                                                    *(this + 31) = v195;
                                                                                    v196 = (v31 + 1);
                                                                                    *(a2 + 1) = v196;
                                                                                  }

                                                                                  *(this + 79) |= 0x1000u;
                                                                                  if (v19 - v196 >= 2 && *v196 == 240 && v196[1] == 2)
                                                                                  {
                                                                                    v64 = (v196 + 2);
                                                                                    *(a2 + 1) = v64;
LABEL_563:
                                                                                    if (v64 >= v19 || (v197 = *v64, v197 < 0))
                                                                                    {
                                                                                      result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 32);
                                                                                      if (!result)
                                                                                      {
                                                                                        return result;
                                                                                      }

                                                                                      v198 = *(a2 + 1);
                                                                                      v19 = *(a2 + 2);
                                                                                    }

                                                                                    else
                                                                                    {
                                                                                      *(this + 32) = v197;
                                                                                      v198 = (v64 + 1);
                                                                                      *(a2 + 1) = v198;
                                                                                    }

                                                                                    *(this + 79) |= 0x2000u;
                                                                                    if (v19 - v198 >= 2 && *v198 == 248 && v198[1] == 2)
                                                                                    {
                                                                                      v78 = (v198 + 2);
                                                                                      *(a2 + 1) = v78;
LABEL_572:
                                                                                      if (v78 >= v19 || (v199 = *v78, v199 < 0))
                                                                                      {
                                                                                        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 33);
                                                                                        if (!result)
                                                                                        {
                                                                                          return result;
                                                                                        }

                                                                                        v200 = *(a2 + 1);
                                                                                        v19 = *(a2 + 2);
                                                                                      }

                                                                                      else
                                                                                      {
                                                                                        *(this + 33) = v199;
                                                                                        v200 = (v78 + 1);
                                                                                        *(a2 + 1) = v200;
                                                                                      }

                                                                                      *(this + 79) |= 0x4000u;
                                                                                      if (v19 - v200 >= 2 && *v200 == 128 && v200[1] == 3)
                                                                                      {
                                                                                        v24 = (v200 + 2);
                                                                                        *(a2 + 1) = v24;
LABEL_581:
                                                                                        if (v24 >= v19 || (v201 = *v24, (v201 & 0x80000000) != 0))
                                                                                        {
                                                                                          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v5);
                                                                                          if (!result)
                                                                                          {
                                                                                            return result;
                                                                                          }

                                                                                          v202 = *(a2 + 1);
                                                                                          v19 = *(a2 + 2);
                                                                                        }

                                                                                        else
                                                                                        {
                                                                                          *v5 = v201;
                                                                                          v202 = (v24 + 1);
                                                                                          *(a2 + 1) = v202;
                                                                                        }

                                                                                        *(this + 79) |= 0x8000u;
                                                                                        if (v19 - v202 >= 2 && *v202 == 136 && v202[1] == 3)
                                                                                        {
                                                                                          v34 = (v202 + 2);
                                                                                          *(a2 + 1) = v34;
LABEL_590:
                                                                                          if (v34 >= v19 || (v203 = *v34, (v203 & 0x80000000) != 0))
                                                                                          {
                                                                                            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v6);
                                                                                            if (!result)
                                                                                            {
                                                                                              return result;
                                                                                            }

                                                                                            v204 = *(a2 + 1);
                                                                                            v19 = *(a2 + 2);
                                                                                          }

                                                                                          else
                                                                                          {
                                                                                            *v6 = v203;
                                                                                            v204 = (v34 + 1);
                                                                                            *(a2 + 1) = v204;
                                                                                          }

                                                                                          *(this + 79) |= 0x10000u;
                                                                                          if (v19 - v204 >= 2 && *v204 == 144 && v204[1] == 3)
                                                                                          {
                                                                                            v36 = (v204 + 2);
                                                                                            *(a2 + 1) = v36;
LABEL_599:
                                                                                            if (v36 >= v19 || (v205 = *v36, (v205 & 0x80000000) != 0))
                                                                                            {
                                                                                              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v7);
                                                                                              if (!result)
                                                                                              {
                                                                                                return result;
                                                                                              }

                                                                                              v206 = *(a2 + 1);
                                                                                              v19 = *(a2 + 2);
                                                                                            }

                                                                                            else
                                                                                            {
                                                                                              *v7 = v205;
                                                                                              v206 = (v36 + 1);
                                                                                              *(a2 + 1) = v206;
                                                                                            }

                                                                                            *(this + 79) |= 0x20000u;
                                                                                            if (v19 - v206 >= 2 && *v206 == 152 && v206[1] == 3)
                                                                                            {
                                                                                              v20 = (v206 + 2);
                                                                                              *(a2 + 1) = v20;
LABEL_608:
                                                                                              if (v20 >= v19 || (v207 = *v20, (v207 & 0x80000000) != 0))
                                                                                              {
                                                                                                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v8);
                                                                                                if (!result)
                                                                                                {
                                                                                                  return result;
                                                                                                }

                                                                                                v208 = *(a2 + 1);
                                                                                                v19 = *(a2 + 2);
                                                                                              }

                                                                                              else
                                                                                              {
                                                                                                *v8 = v207;
                                                                                                v208 = (v20 + 1);
                                                                                                *(a2 + 1) = v208;
                                                                                              }

                                                                                              *(this + 79) |= 0x40000u;
                                                                                              if (v19 - v208 >= 2 && *v208 == 160 && v208[1] == 3)
                                                                                              {
                                                                                                v79 = (v208 + 2);
                                                                                                *(a2 + 1) = v79;
LABEL_617:
                                                                                                if (v79 >= v19 || (v209 = *v79, (v209 & 0x80000000) != 0))
                                                                                                {
                                                                                                  result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v9);
                                                                                                  if (!result)
                                                                                                  {
                                                                                                    return result;
                                                                                                  }

                                                                                                  v210 = *(a2 + 1);
                                                                                                  v19 = *(a2 + 2);
                                                                                                }

                                                                                                else
                                                                                                {
                                                                                                  *v9 = v209;
                                                                                                  v210 = (v79 + 1);
                                                                                                  *(a2 + 1) = v210;
                                                                                                }

                                                                                                *(this + 79) |= 0x80000u;
                                                                                                if (v19 - v210 >= 2 && *v210 == 168 && v210[1] == 3)
                                                                                                {
                                                                                                  v77 = (v210 + 2);
                                                                                                  *(a2 + 1) = v77;
LABEL_626:
                                                                                                  if (v77 >= v19 || (v211 = *v77, (v211 & 0x80000000) != 0))
                                                                                                  {
                                                                                                    result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v10);
                                                                                                    if (!result)
                                                                                                    {
                                                                                                      return result;
                                                                                                    }

                                                                                                    v212 = *(a2 + 1);
                                                                                                    v19 = *(a2 + 2);
                                                                                                  }

                                                                                                  else
                                                                                                  {
                                                                                                    *v10 = v211;
                                                                                                    v212 = (v77 + 1);
                                                                                                    *(a2 + 1) = v212;
                                                                                                  }

                                                                                                  *(this + 79) |= 0x100000u;
                                                                                                  if (v19 - v212 >= 2 && *v212 == 176 && v212[1] == 3)
                                                                                                  {
                                                                                                    v23 = (v212 + 2);
                                                                                                    *(a2 + 1) = v23;
LABEL_635:
                                                                                                    if (v23 >= v19 || (v213 = *v23, (v213 & 0x80000000) != 0))
                                                                                                    {
                                                                                                      result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v11);
                                                                                                      if (!result)
                                                                                                      {
                                                                                                        return result;
                                                                                                      }

                                                                                                      v214 = *(a2 + 1);
                                                                                                      v19 = *(a2 + 2);
                                                                                                    }

                                                                                                    else
                                                                                                    {
                                                                                                      *v11 = v213;
                                                                                                      v214 = (v23 + 1);
                                                                                                      *(a2 + 1) = v214;
                                                                                                    }

                                                                                                    *(this + 79) |= 0x200000u;
                                                                                                    if (v19 - v214 >= 2 && *v214 == 184 && v214[1] == 3)
                                                                                                    {
                                                                                                      v74 = (v214 + 2);
                                                                                                      *(a2 + 1) = v74;
LABEL_644:
                                                                                                      v75 = *(a2 + 2);
                                                                                                      if (v74 >= v75 || (v215 = *v74, (v215 & 0x80000000) != 0))
                                                                                                      {
                                                                                                        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v221);
                                                                                                        if (!result)
                                                                                                        {
                                                                                                          return result;
                                                                                                        }

                                                                                                        v216 = *(a2 + 1);
                                                                                                        v75 = *(a2 + 2);
                                                                                                      }

                                                                                                      else
                                                                                                      {
                                                                                                        *v221 = v215;
                                                                                                        v216 = (v74 + 1);
                                                                                                        *(a2 + 1) = v216;
                                                                                                      }

                                                                                                      *(this + 79) |= 0x400000u;
                                                                                                      if (v75 - v216 >= 2 && *v216 == 192 && v216[1] == 3)
                                                                                                      {
                                                                                                        v76 = (v216 + 2);
                                                                                                        *(a2 + 1) = v76;
LABEL_653:
                                                                                                        if (v76 >= v75 || (v217 = *v76, (v217 & 0x80000000) != 0))
                                                                                                        {
                                                                                                          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v220);
                                                                                                          if (!result)
                                                                                                          {
                                                                                                            return result;
                                                                                                          }

                                                                                                          v218 = *(a2 + 1);
                                                                                                          v75 = *(a2 + 2);
                                                                                                        }

                                                                                                        else
                                                                                                        {
                                                                                                          *v220 = v217;
                                                                                                          v218 = v76 + 1;
                                                                                                          *(a2 + 1) = v218;
                                                                                                        }

                                                                                                        *(this + 79) |= 0x800000u;
                                                                                                        if (v218 == v75 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
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

        return 0;
      case 9u:
        if (v14 == 2)
        {
          goto LABEL_238;
        }

        goto LABEL_127;
      case 0xAu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_127;
        }

        v46 = *(a2 + 1);
        v27 = *(a2 + 2);
        goto LABEL_244;
      case 0xBu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_127;
        }

        v61 = *(a2 + 1);
        v27 = *(a2 + 2);
        goto LABEL_252;
      case 0xCu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_127;
        }

        v35 = *(a2 + 1);
        v27 = *(a2 + 2);
        goto LABEL_260;
      case 0xDu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_127;
        }

        v45 = *(a2 + 1);
        v27 = *(a2 + 2);
        goto LABEL_268;
      case 0xEu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_127;
        }

        v58 = *(a2 + 1);
        v27 = *(a2 + 2);
        goto LABEL_276;
      case 0xFu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_127;
        }

        v32 = *(a2 + 1);
        v27 = *(a2 + 2);
        goto LABEL_284;
      case 0x10u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_127;
        }

        v50 = *(a2 + 1);
        v27 = *(a2 + 2);
        goto LABEL_293;
      case 0x11u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_127;
        }

        v30 = *(a2 + 1);
        v27 = *(a2 + 2);
        goto LABEL_302;
      case 0x12u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_127;
        }

        v53 = *(a2 + 1);
        v27 = *(a2 + 2);
        goto LABEL_311;
      case 0x13u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_127;
        }

        v60 = *(a2 + 1);
        v27 = *(a2 + 2);
        goto LABEL_320;
      case 0x14u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_127;
        }

        v67 = *(a2 + 1);
        v27 = *(a2 + 2);
        goto LABEL_329;
      case 0x15u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_127;
        }

        v55 = *(a2 + 1);
        v27 = *(a2 + 2);
        goto LABEL_338;
      case 0x16u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_127;
        }

        v57 = *(a2 + 1);
        v27 = *(a2 + 2);
        goto LABEL_347;
      case 0x17u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_127;
        }

        v65 = *(a2 + 1);
        v27 = *(a2 + 2);
        goto LABEL_356;
      case 0x18u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_127;
        }

        v69 = *(a2 + 1);
        v27 = *(a2 + 2);
        goto LABEL_365;
      case 0x19u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_127;
        }

        v48 = *(a2 + 1);
        v27 = *(a2 + 2);
        goto LABEL_374;
      case 0x1Au:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_127;
        }

        v47 = *(a2 + 1);
        v27 = *(a2 + 2);
        goto LABEL_383;
      case 0x1Bu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_127;
        }

        v73 = *(a2 + 1);
        v27 = *(a2 + 2);
        goto LABEL_392;
      case 0x1Cu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_127;
        }

        v28 = *(a2 + 1);
        v27 = *(a2 + 2);
        goto LABEL_401;
      case 0x1Du:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_127;
        }

        v70 = *(a2 + 1);
        v27 = *(a2 + 2);
        goto LABEL_410;
      case 0x1Eu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_127;
        }

        v71 = *(a2 + 1);
        v27 = *(a2 + 2);
        goto LABEL_419;
      case 0x1Fu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_127;
        }

        v62 = *(a2 + 1);
        v27 = *(a2 + 2);
        goto LABEL_428;
      case 0x20u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_127;
        }

        v52 = *(a2 + 1);
        v27 = *(a2 + 2);
        goto LABEL_437;
      case 0x21u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_127;
        }

        v63 = *(a2 + 1);
        v19 = *(a2 + 2);
        goto LABEL_446;
      case 0x22u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_127;
        }

        v33 = *(a2 + 1);
        v19 = *(a2 + 2);
        goto LABEL_455;
      case 0x23u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_127;
        }

        v29 = *(a2 + 1);
        v19 = *(a2 + 2);
        goto LABEL_464;
      case 0x24u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_127;
        }

        v25 = *(a2 + 1);
        v19 = *(a2 + 2);
        goto LABEL_473;
      case 0x25u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_127;
        }

        v26 = *(a2 + 1);
        v19 = *(a2 + 2);
        goto LABEL_482;
      case 0x26u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_127;
        }

        v22 = *(a2 + 1);
        v19 = *(a2 + 2);
        goto LABEL_491;
      case 0x27u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_127;
        }

        v72 = *(a2 + 1);
        v19 = *(a2 + 2);
        goto LABEL_500;
      case 0x28u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_127;
        }

        v66 = *(a2 + 1);
        v19 = *(a2 + 2);
        goto LABEL_509;
      case 0x29u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_127;
        }

        v44 = *(a2 + 1);
        v19 = *(a2 + 2);
        goto LABEL_518;
      case 0x2Au:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_127;
        }

        v54 = *(a2 + 1);
        v19 = *(a2 + 2);
        goto LABEL_527;
      case 0x2Bu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_127;
        }

        v68 = *(a2 + 1);
        v19 = *(a2 + 2);
        goto LABEL_536;
      case 0x2Cu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_127;
        }

        v21 = *(a2 + 1);
        v19 = *(a2 + 2);
        goto LABEL_545;
      case 0x2Du:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_127;
        }

        v31 = *(a2 + 1);
        v19 = *(a2 + 2);
        goto LABEL_554;
      case 0x2Eu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_127;
        }

        v64 = *(a2 + 1);
        v19 = *(a2 + 2);
        goto LABEL_563;
      case 0x2Fu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_127;
        }

        v78 = *(a2 + 1);
        v19 = *(a2 + 2);
        goto LABEL_572;
      case 0x30u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_127;
        }

        v24 = *(a2 + 1);
        v19 = *(a2 + 2);
        goto LABEL_581;
      case 0x31u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_127;
        }

        v34 = *(a2 + 1);
        v19 = *(a2 + 2);
        goto LABEL_590;
      case 0x32u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_127;
        }

        v36 = *(a2 + 1);
        v19 = *(a2 + 2);
        goto LABEL_599;
      case 0x33u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_127;
        }

        v20 = *(a2 + 1);
        v19 = *(a2 + 2);
        goto LABEL_608;
      case 0x34u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_127;
        }

        v79 = *(a2 + 1);
        v19 = *(a2 + 2);
        goto LABEL_617;
      case 0x35u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_127;
        }

        v77 = *(a2 + 1);
        v19 = *(a2 + 2);
        goto LABEL_626;
      case 0x36u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_127;
        }

        v23 = *(a2 + 1);
        v19 = *(a2 + 2);
        goto LABEL_635;
      case 0x37u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_127;
        }

        v74 = *(a2 + 1);
        goto LABEL_644;
      case 0x38u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_127;
        }

        v76 = *(a2 + 1);
        v75 = *(a2 + 2);
        goto LABEL_653;
      default:
        goto LABEL_127;
    }
  }
}

void sub_2963717F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadPackedPrimitiveNoInline<int,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)5>(wireless_diagnostics::google::protobuf::io::CodedInputStream *this, uint64_t *a2)
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

      v8 = *(a2 + 2);
      if (v8 == *(a2 + 3))
      {
        wireless_diagnostics::google::protobuf::RepeatedField<int>::Reserve(a2, v8 + 1);
        v8 = *(a2 + 2);
      }

      v9 = *a2;
      *(a2 + 2) = v8 + 1;
      *(v9 + 4 * v8) = v7;
    }

    while (wireless_diagnostics::google::protobuf::io::CodedInputStream::BytesUntilLimit(this) > 0);
  }

  wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this);
  return 1;
}

uint64_t awd::metrics::BluetoothA2DPAudioLinkInfo::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 312);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(1, *(this + 8), a2, a4);
    v6 = *(v5 + 312);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(2, *(v5 + 16), a2, a4);
  if ((*(v5 + 312) & 4) != 0)
  {
LABEL_4:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(3, *(v5 + 20), a2, a4);
  }

LABEL_5:
  if (*(v5 + 32) >= 1)
  {
    v7 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(4, *(*(v5 + 24) + 4 * v7++), a2, a4);
    }

    while (v7 < *(v5 + 32));
  }

  if (*(v5 + 48) >= 1)
  {
    v8 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(5, *(*(v5 + 40) + 4 * v8++), a2, a4);
    }

    while (v8 < *(v5 + 48));
  }

  v9 = *(v5 + 312);
  if ((v9 & 0x20) != 0)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(6, *(v5 + 56), a2, a4);
    v9 = *(v5 + 312);
  }

  if ((v9 & 0x40) != 0)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(7, *(v5 + 60), a2, a4);
  }

  if (*(v5 + 72) >= 1)
  {
    v10 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(8, *(*(v5 + 64) + 4 * v10++), a2, a4);
    }

    while (v10 < *(v5 + 72));
  }

  v11 = *(v5 + 312);
  if ((v11 & 0x100) != 0)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
    v11 = *(v5 + 312);
    if ((v11 & 0x200) == 0)
    {
LABEL_20:
      if ((v11 & 0x400) == 0)
      {
        goto LABEL_21;
      }

      goto LABEL_72;
    }
  }

  else if ((v11 & 0x200) == 0)
  {
    goto LABEL_20;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xA, *(v5 + 88), a2, a4);
  v11 = *(v5 + 312);
  if ((v11 & 0x400) == 0)
  {
LABEL_21:
    if ((v11 & 0x800) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_73;
  }

LABEL_72:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xB, *(v5 + 92), a2, a4);
  v11 = *(v5 + 312);
  if ((v11 & 0x800) == 0)
  {
LABEL_22:
    if ((v11 & 0x1000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_74;
  }

LABEL_73:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xC, *(v5 + 96), a2, a4);
  v11 = *(v5 + 312);
  if ((v11 & 0x1000) == 0)
  {
LABEL_23:
    if ((v11 & 0x2000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_75;
  }

LABEL_74:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xD, *(v5 + 100), a2, a4);
  v11 = *(v5 + 312);
  if ((v11 & 0x2000) == 0)
  {
LABEL_24:
    if ((v11 & 0x4000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_76;
  }

LABEL_75:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xE, *(v5 + 104), a2, a4);
  v11 = *(v5 + 312);
  if ((v11 & 0x4000) == 0)
  {
LABEL_25:
    if ((v11 & 0x8000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_77;
  }

LABEL_76:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xF, *(v5 + 108), a2, a4);
  v11 = *(v5 + 312);
  if ((v11 & 0x8000) == 0)
  {
LABEL_26:
    if ((v11 & 0x10000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_78;
  }

LABEL_77:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteSInt32(0x10, *(v5 + 112), a2, a4);
  v11 = *(v5 + 312);
  if ((v11 & 0x10000) == 0)
  {
LABEL_27:
    if ((v11 & 0x20000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_79;
  }

LABEL_78:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteSInt32(0x11, *(v5 + 116), a2, a4);
  v11 = *(v5 + 312);
  if ((v11 & 0x20000) == 0)
  {
LABEL_28:
    if ((v11 & 0x40000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_80;
  }

LABEL_79:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteSInt32(0x12, *(v5 + 120), a2, a4);
  v11 = *(v5 + 312);
  if ((v11 & 0x40000) == 0)
  {
LABEL_29:
    if ((v11 & 0x80000) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_81;
  }

LABEL_80:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteSInt32(0x13, *(v5 + 124), a2, a4);
  v11 = *(v5 + 312);
  if ((v11 & 0x80000) == 0)
  {
LABEL_30:
    if ((v11 & 0x100000) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_82;
  }

LABEL_81:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteSInt32(0x14, *(v5 + 128), a2, a4);
  v11 = *(v5 + 312);
  if ((v11 & 0x100000) == 0)
  {
LABEL_31:
    if ((v11 & 0x200000) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_83;
  }

LABEL_82:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteSInt32(0x15, *(v5 + 132), a2, a4);
  v11 = *(v5 + 312);
  if ((v11 & 0x200000) == 0)
  {
LABEL_32:
    if ((v11 & 0x400000) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_84;
  }

LABEL_83:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x16, *(v5 + 136), a2, a4);
  v11 = *(v5 + 312);
  if ((v11 & 0x400000) == 0)
  {
LABEL_33:
    if ((v11 & 0x800000) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_85;
  }

LABEL_84:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x17, *(v5 + 140), a2, a4);
  v11 = *(v5 + 312);
  if ((v11 & 0x800000) == 0)
  {
LABEL_34:
    if ((v11 & 0x1000000) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_86;
  }

LABEL_85:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x18, *(v5 + 144), a2, a4);
  v11 = *(v5 + 312);
  if ((v11 & 0x1000000) == 0)
  {
LABEL_35:
    if ((v11 & 0x2000000) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_87;
  }

LABEL_86:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x19, *(v5 + 148), a2, a4);
  v11 = *(v5 + 312);
  if ((v11 & 0x2000000) == 0)
  {
LABEL_36:
    if ((v11 & 0x4000000) == 0)
    {
      goto LABEL_37;
    }

    goto LABEL_88;
  }

LABEL_87:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x1A, *(v5 + 152), a2, a4);
  v11 = *(v5 + 312);
  if ((v11 & 0x4000000) == 0)
  {
LABEL_37:
    if ((v11 & 0x8000000) == 0)
    {
      goto LABEL_38;
    }

    goto LABEL_89;
  }

LABEL_88:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x1B, *(v5 + 156), a2, a4);
  v11 = *(v5 + 312);
  if ((v11 & 0x8000000) == 0)
  {
LABEL_38:
    if ((v11 & 0x10000000) == 0)
    {
      goto LABEL_39;
    }

    goto LABEL_90;
  }

LABEL_89:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x1C, *(v5 + 160), a2, a4);
  v11 = *(v5 + 312);
  if ((v11 & 0x10000000) == 0)
  {
LABEL_39:
    if ((v11 & 0x20000000) == 0)
    {
      goto LABEL_40;
    }

    goto LABEL_91;
  }

LABEL_90:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x1D, *(v5 + 164), a2, a4);
  v11 = *(v5 + 312);
  if ((v11 & 0x20000000) == 0)
  {
LABEL_40:
    if ((v11 & 0x40000000) == 0)
    {
      goto LABEL_41;
    }

LABEL_92:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x1F, *(v5 + 172), a2, a4);
    if ((*(v5 + 312) & 0x80000000) == 0)
    {
      goto LABEL_42;
    }

    goto LABEL_93;
  }

LABEL_91:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x1E, *(v5 + 168), a2, a4);
  v11 = *(v5 + 312);
  if ((v11 & 0x40000000) != 0)
  {
    goto LABEL_92;
  }

LABEL_41:
  if ((v11 & 0x80000000) == 0)
  {
    goto LABEL_42;
  }

LABEL_93:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x20, *(v5 + 176), a2, a4);
LABEL_42:
  v12 = *(v5 + 316);
  if (v12)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x21, *(v5 + 180), a2, a4);
    v12 = *(v5 + 316);
    if ((v12 & 2) == 0)
    {
LABEL_44:
      if ((v12 & 4) == 0)
      {
        goto LABEL_45;
      }

      goto LABEL_96;
    }
  }

  else if ((v12 & 2) == 0)
  {
    goto LABEL_44;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(0x22, *(v5 + 184), a2, a4);
  v12 = *(v5 + 316);
  if ((v12 & 4) == 0)
  {
LABEL_45:
    if ((v12 & 8) == 0)
    {
      goto LABEL_46;
    }

    goto LABEL_97;
  }

LABEL_96:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(0x23, *(v5 + 192), a2, a4);
  v12 = *(v5 + 316);
  if ((v12 & 8) == 0)
  {
LABEL_46:
    if ((v12 & 0x10) == 0)
    {
      goto LABEL_47;
    }

    goto LABEL_98;
  }

LABEL_97:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x24, *(v5 + 200), a2, a4);
  v12 = *(v5 + 316);
  if ((v12 & 0x10) == 0)
  {
LABEL_47:
    if ((v12 & 0x20) == 0)
    {
      goto LABEL_48;
    }

    goto LABEL_99;
  }

LABEL_98:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x25, *(v5 + 204), a2, a4);
  v12 = *(v5 + 316);
  if ((v12 & 0x20) == 0)
  {
LABEL_48:
    if ((v12 & 0x40) == 0)
    {
      goto LABEL_49;
    }

    goto LABEL_100;
  }

LABEL_99:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(0x26, *(v5 + 208), a2, a4);
  v12 = *(v5 + 316);
  if ((v12 & 0x40) == 0)
  {
LABEL_49:
    if ((v12 & 0x80) == 0)
    {
      goto LABEL_50;
    }

    goto LABEL_101;
  }

LABEL_100:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(0x27, *(v5 + 212), a2, a4);
  v12 = *(v5 + 316);
  if ((v12 & 0x80) == 0)
  {
LABEL_50:
    if ((v12 & 0x100) == 0)
    {
      goto LABEL_51;
    }

    goto LABEL_102;
  }

LABEL_101:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(0x28, *(v5 + 216), a2, a4);
  v12 = *(v5 + 316);
  if ((v12 & 0x100) == 0)
  {
LABEL_51:
    if ((v12 & 0x200) == 0)
    {
      goto LABEL_52;
    }

    goto LABEL_103;
  }

LABEL_102:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(0x29, *(v5 + 220), a2, a4);
  v12 = *(v5 + 316);
  if ((v12 & 0x200) == 0)
  {
LABEL_52:
    if ((v12 & 0x400) == 0)
    {
      goto LABEL_53;
    }

    goto LABEL_104;
  }

LABEL_103:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(0x2A, *(v5 + 224), a2, a4);
  v12 = *(v5 + 316);
  if ((v12 & 0x400) == 0)
  {
LABEL_53:
    if ((v12 & 0x800) == 0)
    {
      goto LABEL_54;
    }

    goto LABEL_105;
  }

LABEL_104:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(0x2B, *(v5 + 232), a2, a4);
  v12 = *(v5 + 316);
  if ((v12 & 0x800) == 0)
  {
LABEL_54:
    if ((v12 & 0x1000) == 0)
    {
      goto LABEL_55;
    }

    goto LABEL_106;
  }

LABEL_105:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(0x2C, *(v5 + 240), a2, a4);
  v12 = *(v5 + 316);
  if ((v12 & 0x1000) == 0)
  {
LABEL_55:
    if ((v12 & 0x2000) == 0)
    {
      goto LABEL_56;
    }

    goto LABEL_107;
  }

LABEL_106:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(0x2D, *(v5 + 248), a2, a4);
  v12 = *(v5 + 316);
  if ((v12 & 0x2000) == 0)
  {
LABEL_56:
    if ((v12 & 0x4000) == 0)
    {
      goto LABEL_57;
    }

    goto LABEL_108;
  }

LABEL_107:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(0x2E, *(v5 + 256), a2, a4);
  v12 = *(v5 + 316);
  if ((v12 & 0x4000) == 0)
  {
LABEL_57:
    if ((v12 & 0x8000) == 0)
    {
      goto LABEL_58;
    }

    goto LABEL_109;
  }

LABEL_108:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(0x2F, *(v5 + 264), a2, a4);
  v12 = *(v5 + 316);
  if ((v12 & 0x8000) == 0)
  {
LABEL_58:
    if ((v12 & 0x10000) == 0)
    {
      goto LABEL_59;
    }

    goto LABEL_110;
  }

LABEL_109:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x30, *(v5 + 272), a2, a4);
  v12 = *(v5 + 316);
  if ((v12 & 0x10000) == 0)
  {
LABEL_59:
    if ((v12 & 0x20000) == 0)
    {
      goto LABEL_60;
    }

    goto LABEL_111;
  }

LABEL_110:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x31, *(v5 + 276), a2, a4);
  v12 = *(v5 + 316);
  if ((v12 & 0x20000) == 0)
  {
LABEL_60:
    if ((v12 & 0x40000) == 0)
    {
      goto LABEL_61;
    }

    goto LABEL_112;
  }

LABEL_111:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x32, *(v5 + 280), a2, a4);
  v12 = *(v5 + 316);
  if ((v12 & 0x40000) == 0)
  {
LABEL_61:
    if ((v12 & 0x80000) == 0)
    {
      goto LABEL_62;
    }

    goto LABEL_113;
  }

LABEL_112:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x33, *(v5 + 284), a2, a4);
  v12 = *(v5 + 316);
  if ((v12 & 0x80000) == 0)
  {
LABEL_62:
    if ((v12 & 0x100000) == 0)
    {
      goto LABEL_63;
    }

    goto LABEL_114;
  }

LABEL_113:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x34, *(v5 + 288), a2, a4);
  v12 = *(v5 + 316);
  if ((v12 & 0x100000) == 0)
  {
LABEL_63:
    if ((v12 & 0x200000) == 0)
    {
      goto LABEL_64;
    }

    goto LABEL_115;
  }

LABEL_114:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x35, *(v5 + 292), a2, a4);
  v12 = *(v5 + 316);
  if ((v12 & 0x200000) == 0)
  {
LABEL_64:
    if ((v12 & 0x400000) == 0)
    {
      goto LABEL_65;
    }

LABEL_116:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x37, *(v5 + 300), a2, a4);
    if ((*(v5 + 316) & 0x800000) == 0)
    {
      return this;
    }

    goto LABEL_117;
  }

LABEL_115:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x36, *(v5 + 296), a2, a4);
  v12 = *(v5 + 316);
  if ((v12 & 0x400000) != 0)
  {
    goto LABEL_116;
  }

LABEL_65:
  if ((v12 & 0x800000) == 0)
  {
    return this;
  }

LABEL_117:
  v13 = *(v5 + 304);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x38, v13, a2, a4);
}

uint64_t awd::metrics::BluetoothA2DPAudioLinkInfo::ByteSize(awd::metrics::BluetoothA2DPAudioLinkInfo *this, unint64_t a2)
{
  v3 = *(this + 78);
  if (!v3)
  {
    v5 = 0;
    goto LABEL_22;
  }

  if (v3)
  {
    v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 1)) + 1;
    v3 = *(this + 78);
  }

  else
  {
    v4 = 0;
  }

  v5 = (v3 & 2) + v4;
  if ((v3 & 4) != 0)
  {
    v6 = *(this + 5);
    if (v6 >= 0x80)
    {
      v7 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v6) + 1;
      v3 = *(this + 78);
    }

    else
    {
      v7 = 2;
    }

    v5 += v7;
    if ((v3 & 0x20) == 0)
    {
LABEL_8:
      if ((v3 & 0x40) == 0)
      {
        goto LABEL_22;
      }

      goto LABEL_18;
    }
  }

  else if ((v3 & 0x20) == 0)
  {
    goto LABEL_8;
  }

  v8 = *(this + 14);
  if (v8 >= 0x80)
  {
    v9 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v8) + 1;
    v3 = *(this + 78);
  }

  else
  {
    v9 = 2;
  }

  v5 += v9;
  if ((v3 & 0x40) != 0)
  {
LABEL_18:
    v10 = *(this + 15);
    if (v10 >= 0x80)
    {
      v11 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v10) + 1;
      v3 = *(this + 78);
    }

    else
    {
      v11 = 2;
    }

    v5 += v11;
  }

LABEL_22:
  if ((v3 & 0xFF00) == 0)
  {
    goto LABEL_69;
  }

  if ((v3 & 0x100) != 0)
  {
    v12 = *(this + 10);
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
      v3 = *(this + 78);
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

    v5 += v17 + v13 + 1;
    if ((v3 & 0x200) == 0)
    {
LABEL_25:
      if ((v3 & 0x400) == 0)
      {
        goto LABEL_26;
      }

      goto LABEL_45;
    }
  }

  else if ((v3 & 0x200) == 0)
  {
    goto LABEL_25;
  }

  v18 = *(this + 22);
  if (v18 >= 0x80)
  {
    v19 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v18) + 1;
    v3 = *(this + 78);
  }

  else
  {
    v19 = 2;
  }

  v5 += v19;
  if ((v3 & 0x400) == 0)
  {
LABEL_26:
    if ((v3 & 0x800) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_49;
  }

LABEL_45:
  v20 = *(this + 23);
  if (v20 >= 0x80)
  {
    v21 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v20) + 1;
    v3 = *(this + 78);
  }

  else
  {
    v21 = 2;
  }

  v5 += v21;
  if ((v3 & 0x800) == 0)
  {
LABEL_27:
    if ((v3 & 0x1000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_53;
  }

LABEL_49:
  v22 = *(this + 24);
  if (v22 >= 0x80)
  {
    v23 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v22) + 1;
    v3 = *(this + 78);
  }

  else
  {
    v23 = 2;
  }

  v5 += v23;
  if ((v3 & 0x1000) == 0)
  {
LABEL_28:
    if ((v3 & 0x2000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_57;
  }

LABEL_53:
  v24 = *(this + 25);
  if (v24 >= 0x80)
  {
    v25 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v24) + 1;
    v3 = *(this + 78);
  }

  else
  {
    v25 = 2;
  }

  v5 += v25;
  if ((v3 & 0x2000) == 0)
  {
LABEL_29:
    if ((v3 & 0x4000) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_61;
  }

LABEL_57:
  v26 = *(this + 26);
  if (v26 >= 0x80)
  {
    v27 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v26) + 1;
    v3 = *(this + 78);
  }

  else
  {
    v27 = 2;
  }

  v5 += v27;
  if ((v3 & 0x4000) == 0)
  {
LABEL_30:
    if ((v3 & 0x8000) == 0)
    {
      goto LABEL_69;
    }

    goto LABEL_65;
  }

LABEL_61:
  v28 = *(this + 27);
  if (v28 >= 0x80)
  {
    v29 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v28) + 1;
    v3 = *(this + 78);
  }

  else
  {
    v29 = 2;
  }

  v5 += v29;
  if ((v3 & 0x8000) != 0)
  {
LABEL_65:
    v30 = ((2 * *(this + 28)) ^ (*(this + 28) >> 31));
    if (v30 >= 0x80)
    {
      v31 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v30) + 2;
      v3 = *(this + 78);
    }

    else
    {
      v31 = 3;
    }

    v5 += v31;
  }

LABEL_69:
  if ((v3 & 0xFF0000) == 0)
  {
    goto LABEL_111;
  }

  if ((v3 & 0x10000) != 0)
  {
    v32 = ((2 * *(this + 29)) ^ (*(this + 29) >> 31));
    if (v32 >= 0x80)
    {
      v33 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v32) + 2;
      v3 = *(this + 78);
    }

    else
    {
      v33 = 3;
    }

    v5 += v33;
    if ((v3 & 0x20000) == 0)
    {
LABEL_72:
      if ((v3 & 0x40000) == 0)
      {
        goto LABEL_73;
      }

      goto LABEL_87;
    }
  }

  else if ((v3 & 0x20000) == 0)
  {
    goto LABEL_72;
  }

  v34 = ((2 * *(this + 30)) ^ (*(this + 30) >> 31));
  if (v34 >= 0x80)
  {
    v35 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v34) + 2;
    v3 = *(this + 78);
  }

  else
  {
    v35 = 3;
  }

  v5 += v35;
  if ((v3 & 0x40000) == 0)
  {
LABEL_73:
    if ((v3 & 0x80000) == 0)
    {
      goto LABEL_74;
    }

    goto LABEL_91;
  }

LABEL_87:
  v36 = ((2 * *(this + 31)) ^ (*(this + 31) >> 31));
  if (v36 >= 0x80)
  {
    v37 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v36) + 2;
    v3 = *(this + 78);
  }

  else
  {
    v37 = 3;
  }

  v5 += v37;
  if ((v3 & 0x80000) == 0)
  {
LABEL_74:
    if ((v3 & 0x100000) == 0)
    {
      goto LABEL_75;
    }

    goto LABEL_95;
  }

LABEL_91:
  v38 = ((2 * *(this + 32)) ^ (*(this + 32) >> 31));
  if (v38 >= 0x80)
  {
    v39 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v38) + 2;
    v3 = *(this + 78);
  }

  else
  {
    v39 = 3;
  }

  v5 += v39;
  if ((v3 & 0x100000) == 0)
  {
LABEL_75:
    if ((v3 & 0x200000) == 0)
    {
      goto LABEL_76;
    }

    goto LABEL_99;
  }

LABEL_95:
  v40 = ((2 * *(this + 33)) ^ (*(this + 33) >> 31));
  if (v40 >= 0x80)
  {
    v41 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v40) + 2;
    v3 = *(this + 78);
  }

  else
  {
    v41 = 3;
  }

  v5 += v41;
  if ((v3 & 0x200000) == 0)
  {
LABEL_76:
    if ((v3 & 0x400000) == 0)
    {
      goto LABEL_77;
    }

    goto LABEL_103;
  }

LABEL_99:
  v42 = *(this + 34);
  if (v42 >= 0x80)
  {
    v43 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v42) + 2;
    v3 = *(this + 78);
  }

  else
  {
    v43 = 3;
  }

  v5 += v43;
  if ((v3 & 0x400000) == 0)
  {
LABEL_77:
    if ((v3 & 0x800000) == 0)
    {
      goto LABEL_111;
    }

    goto LABEL_107;
  }

LABEL_103:
  v44 = *(this + 35);
  if (v44 >= 0x80)
  {
    v45 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v44) + 2;
    v3 = *(this + 78);
  }

  else
  {
    v45 = 3;
  }

  v5 += v45;
  if ((v3 & 0x800000) != 0)
  {
LABEL_107:
    v46 = *(this + 36);
    if (v46 >= 0x80)
    {
      v47 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v46) + 2;
      v3 = *(this + 78);
    }

    else
    {
      v47 = 3;
    }

    v5 += v47;
  }

LABEL_111:
  if (!HIBYTE(v3))
  {
    goto LABEL_153;
  }

  if ((v3 & 0x1000000) != 0)
  {
    v48 = *(this + 37);
    if (v48 >= 0x80)
    {
      v49 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v48) + 2;
      v3 = *(this + 78);
    }

    else
    {
      v49 = 3;
    }

    v5 += v49;
    if ((v3 & 0x2000000) == 0)
    {
LABEL_114:
      if ((v3 & 0x4000000) == 0)
      {
        goto LABEL_115;
      }

      goto LABEL_129;
    }
  }

  else if ((v3 & 0x2000000) == 0)
  {
    goto LABEL_114;
  }

  v50 = *(this + 38);
  if (v50 >= 0x80)
  {
    v51 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v50) + 2;
    v3 = *(this + 78);
  }

  else
  {
    v51 = 3;
  }

  v5 += v51;
  if ((v3 & 0x4000000) == 0)
  {
LABEL_115:
    if ((v3 & 0x8000000) == 0)
    {
      goto LABEL_116;
    }

    goto LABEL_133;
  }

LABEL_129:
  v52 = *(this + 39);
  if (v52 >= 0x80)
  {
    v53 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v52) + 2;
    v3 = *(this + 78);
  }

  else
  {
    v53 = 3;
  }

  v5 += v53;
  if ((v3 & 0x8000000) == 0)
  {
LABEL_116:
    if ((v3 & 0x10000000) == 0)
    {
      goto LABEL_117;
    }

    goto LABEL_137;
  }

LABEL_133:
  v54 = *(this + 40);
  if (v54 >= 0x80)
  {
    v55 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v54) + 2;
    v3 = *(this + 78);
  }

  else
  {
    v55 = 3;
  }

  v5 += v55;
  if ((v3 & 0x10000000) == 0)
  {
LABEL_117:
    if ((v3 & 0x20000000) == 0)
    {
      goto LABEL_118;
    }

    goto LABEL_141;
  }

LABEL_137:
  v56 = *(this + 41);
  if (v56 >= 0x80)
  {
    v57 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v56) + 2;
    v3 = *(this + 78);
  }

  else
  {
    v57 = 3;
  }

  v5 += v57;
  if ((v3 & 0x20000000) == 0)
  {
LABEL_118:
    if ((v3 & 0x40000000) == 0)
    {
      goto LABEL_119;
    }

    goto LABEL_145;
  }

LABEL_141:
  v58 = *(this + 42);
  if (v58 >= 0x80)
  {
    v59 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v58) + 2;
    v3 = *(this + 78);
  }

  else
  {
    v59 = 3;
  }

  v5 += v59;
  if ((v3 & 0x40000000) == 0)
  {
LABEL_119:
    if ((v3 & 0x80000000) == 0)
    {
      goto LABEL_153;
    }

    goto LABEL_149;
  }

LABEL_145:
  v60 = *(this + 43);
  if (v60 >= 0x80)
  {
    v61 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v60) + 2;
    v3 = *(this + 78);
  }

  else
  {
    v61 = 3;
  }

  v5 += v61;
  if ((v3 & 0x80000000) != 0)
  {
LABEL_149:
    v62 = *(this + 44);
    if (v62 >= 0x80)
    {
      v63 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v62) + 2;
    }

    else
    {
      v63 = 3;
    }

    v5 += v63;
  }

LABEL_153:
  v64 = *(this + 79);
  if (!v64)
  {
    goto LABEL_195;
  }

  if (v64)
  {
    v65 = *(this + 45);
    if (v65 >= 0x80)
    {
      v66 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v65) + 2;
      v64 = *(this + 79);
    }

    else
    {
      v66 = 3;
    }

    v5 += v66;
    if ((v64 & 2) == 0)
    {
LABEL_156:
      if ((v64 & 4) == 0)
      {
        goto LABEL_157;
      }

      goto LABEL_168;
    }
  }

  else if ((v64 & 2) == 0)
  {
    goto LABEL_156;
  }

  v5 += wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 23)) + 2;
  v64 = *(this + 79);
  if ((v64 & 4) == 0)
  {
LABEL_157:
    if ((v64 & 8) == 0)
    {
      goto LABEL_158;
    }

    goto LABEL_169;
  }

LABEL_168:
  v5 += wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 24)) + 2;
  v64 = *(this + 79);
  if ((v64 & 8) == 0)
  {
LABEL_158:
    if ((v64 & 0x10) == 0)
    {
      goto LABEL_159;
    }

    goto LABEL_173;
  }

LABEL_169:
  v67 = *(this + 50);
  if (v67 >= 0x80)
  {
    v68 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v67) + 2;
    v64 = *(this + 79);
  }

  else
  {
    v68 = 3;
  }

  v5 += v68;
  if ((v64 & 0x10) == 0)
  {
LABEL_159:
    if ((v64 & 0x20) == 0)
    {
      goto LABEL_160;
    }

    goto LABEL_177;
  }

LABEL_173:
  v69 = *(this + 51);
  if (v69 >= 0x80)
  {
    v70 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v69) + 2;
    v64 = *(this + 79);
  }

  else
  {
    v70 = 3;
  }

  v5 += v70;
  if ((v64 & 0x20) == 0)
  {
LABEL_160:
    if ((v64 & 0x40) == 0)
    {
      goto LABEL_161;
    }

    goto LABEL_183;
  }

LABEL_177:
  v71 = *(this + 52);
  if ((v71 & 0x80000000) != 0)
  {
    v72 = 12;
  }

  else if (v71 >= 0x80)
  {
    v72 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v71) + 2;
    v64 = *(this + 79);
  }

  else
  {
    v72 = 3;
  }

  v5 += v72;
  if ((v64 & 0x40) == 0)
  {
LABEL_161:
    if ((v64 & 0x80) == 0)
    {
      goto LABEL_195;
    }

    goto LABEL_189;
  }

LABEL_183:
  v73 = *(this + 53);
  if ((v73 & 0x80000000) != 0)
  {
    v74 = 12;
  }

  else if (v73 >= 0x80)
  {
    v74 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v73) + 2;
    v64 = *(this + 79);
  }

  else
  {
    v74 = 3;
  }

  v5 += v74;
  if ((v64 & 0x80) != 0)
  {
LABEL_189:
    v75 = *(this + 54);
    if ((v75 & 0x80000000) != 0)
    {
      v76 = 12;
    }

    else if (v75 >= 0x80)
    {
      v76 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v75) + 2;
      v64 = *(this + 79);
    }

    else
    {
      v76 = 3;
    }

    v5 += v76;
  }

LABEL_195:
  if ((v64 & 0xFF00) == 0)
  {
    goto LABEL_221;
  }

  if ((v64 & 0x100) != 0)
  {
    v77 = *(this + 55);
    if ((v77 & 0x80000000) != 0)
    {
      v78 = 12;
    }

    else if (v77 >= 0x80)
    {
      v78 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v77) + 2;
      v64 = *(this + 79);
    }

    else
    {
      v78 = 3;
    }

    v5 += v78;
    if ((v64 & 0x200) == 0)
    {
LABEL_198:
      if ((v64 & 0x400) == 0)
      {
        goto LABEL_199;
      }

      goto LABEL_212;
    }
  }

  else if ((v64 & 0x200) == 0)
  {
    goto LABEL_198;
  }

  v5 += wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 28)) + 2;
  v64 = *(this + 79);
  if ((v64 & 0x400) == 0)
  {
LABEL_199:
    if ((v64 & 0x800) == 0)
    {
      goto LABEL_200;
    }

    goto LABEL_213;
  }

LABEL_212:
  v5 += wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 29)) + 2;
  v64 = *(this + 79);
  if ((v64 & 0x800) == 0)
  {
LABEL_200:
    if ((v64 & 0x1000) == 0)
    {
      goto LABEL_201;
    }

    goto LABEL_214;
  }

LABEL_213:
  v5 += wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 30)) + 2;
  v64 = *(this + 79);
  if ((v64 & 0x1000) == 0)
  {
LABEL_201:
    if ((v64 & 0x2000) == 0)
    {
      goto LABEL_202;
    }

    goto LABEL_215;
  }

LABEL_214:
  v5 += wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 31)) + 2;
  v64 = *(this + 79);
  if ((v64 & 0x2000) == 0)
  {
LABEL_202:
    if ((v64 & 0x4000) == 0)
    {
      goto LABEL_203;
    }

    goto LABEL_216;
  }

LABEL_215:
  v5 += wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 32)) + 2;
  v64 = *(this + 79);
  if ((v64 & 0x4000) == 0)
  {
LABEL_203:
    if ((v64 & 0x8000) == 0)
    {
      goto LABEL_221;
    }

    goto LABEL_217;
  }

LABEL_216:
  v5 += wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 33)) + 2;
  v64 = *(this + 79);
  if ((v64 & 0x8000) == 0)
  {
    goto LABEL_221;
  }

LABEL_217:
  v79 = *(this + 68);
  if (v79 >= 0x80)
  {
    v80 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v79) + 2;
    v64 = *(this + 79);
  }

  else
  {
    v80 = 3;
  }

  v5 += v80;
LABEL_221:
  if ((v64 & 0xFF0000) == 0)
  {
    goto LABEL_263;
  }

  if ((v64 & 0x10000) != 0)
  {
    v81 = *(this + 69);
    if (v81 >= 0x80)
    {
      v82 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v81) + 2;
      v64 = *(this + 79);
    }

    else
    {
      v82 = 3;
    }

    v5 += v82;
    if ((v64 & 0x20000) == 0)
    {
LABEL_224:
      if ((v64 & 0x40000) == 0)
      {
        goto LABEL_225;
      }

      goto LABEL_239;
    }
  }

  else if ((v64 & 0x20000) == 0)
  {
    goto LABEL_224;
  }

  v83 = *(this + 70);
  if (v83 >= 0x80)
  {
    v84 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v83) + 2;
    v64 = *(this + 79);
  }

  else
  {
    v84 = 3;
  }

  v5 += v84;
  if ((v64 & 0x40000) == 0)
  {
LABEL_225:
    if ((v64 & 0x80000) == 0)
    {
      goto LABEL_226;
    }

    goto LABEL_243;
  }

LABEL_239:
  v85 = *(this + 71);
  if (v85 >= 0x80)
  {
    v86 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v85) + 2;
    v64 = *(this + 79);
  }

  else
  {
    v86 = 3;
  }

  v5 += v86;
  if ((v64 & 0x80000) == 0)
  {
LABEL_226:
    if ((v64 & 0x100000) == 0)
    {
      goto LABEL_227;
    }

    goto LABEL_247;
  }

LABEL_243:
  v87 = *(this + 72);
  if (v87 >= 0x80)
  {
    v88 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v87) + 2;
    v64 = *(this + 79);
  }

  else
  {
    v88 = 3;
  }

  v5 += v88;
  if ((v64 & 0x100000) == 0)
  {
LABEL_227:
    if ((v64 & 0x200000) == 0)
    {
      goto LABEL_228;
    }

    goto LABEL_251;
  }

LABEL_247:
  v89 = *(this + 73);
  if (v89 >= 0x80)
  {
    v90 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v89) + 2;
    v64 = *(this + 79);
  }

  else
  {
    v90 = 3;
  }

  v5 += v90;
  if ((v64 & 0x200000) == 0)
  {
LABEL_228:
    if ((v64 & 0x400000) == 0)
    {
      goto LABEL_229;
    }

    goto LABEL_255;
  }

LABEL_251:
  v91 = *(this + 74);
  if (v91 >= 0x80)
  {
    v92 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v91) + 2;
    v64 = *(this + 79);
  }

  else
  {
    v92 = 3;
  }

  v5 += v92;
  if ((v64 & 0x400000) == 0)
  {
LABEL_229:
    if ((v64 & 0x800000) == 0)
    {
      goto LABEL_263;
    }

    goto LABEL_259;
  }

LABEL_255:
  v93 = *(this + 75);
  if (v93 >= 0x80)
  {
    v94 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v93) + 2;
    v64 = *(this + 79);
  }

  else
  {
    v94 = 3;
  }

  v5 += v94;
  if ((v64 & 0x800000) != 0)
  {
LABEL_259:
    v95 = *(this + 76);
    if (v95 >= 0x80)
    {
      v96 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v95) + 2;
    }

    else
    {
      v96 = 3;
    }

    v5 += v96;
  }

LABEL_263:
  v97 = *(this + 8);
  if (v97 < 1)
  {
    v99 = 0;
  }

  else
  {
    v98 = 0;
    v99 = 0;
    do
    {
      v100 = *(*(this + 3) + 4 * v98);
      if (v100 >= 0x80)
      {
        v101 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v100);
        v97 = *(this + 8);
      }

      else
      {
        v101 = 1;
      }

      v99 += v101;
      ++v98;
    }

    while (v98 < v97);
  }

  v102 = *(this + 12);
  if (v102 < 1)
  {
    v104 = 0;
  }

  else
  {
    v103 = 0;
    v104 = 0;
    do
    {
      v105 = *(*(this + 5) + 4 * v103);
      if ((v105 & 0x80000000) != 0)
      {
        v106 = 10;
      }

      else if (v105 >= 0x80)
      {
        v106 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v105);
        v102 = *(this + 12);
      }

      else
      {
        v106 = 1;
      }

      v104 += v106;
      ++v103;
    }

    while (v103 < v102);
  }

  v107 = *(this + 18);
  if (v107 < 1)
  {
    v109 = 0;
  }

  else
  {
    v108 = 0;
    v109 = 0;
    do
    {
      v110 = *(*(this + 8) + 4 * v108);
      if (v110 >= 0x80)
      {
        v111 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v110);
        v107 = *(this + 18);
      }

      else
      {
        v111 = 1;
      }

      v109 += v111;
      ++v108;
    }

    while (v108 < v107);
  }

  result = (v99 + v5 + v97 + v104 + v102 + v109 + v107);
  *(this + 77) = result;
  return result;
}

void awd::metrics::BluetoothA2DPAudioLinkInfo::CheckTypeAndMergeFrom(awd::metrics::BluetoothA2DPAudioLinkInfo *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  {
    awd::metrics::BluetoothA2DPAudioLinkInfo::CheckTypeAndMergeFrom();
  }

  awd::metrics::BluetoothA2DPAudioLinkInfo::MergeFrom(this, lpsrc);
}

void awd::metrics::BluetoothA2DPAudioLinkInfo::CopyFrom(awd::metrics::BluetoothA2DPAudioLinkInfo *this, const awd::metrics::BluetoothA2DPAudioLinkInfo *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    awd::metrics::BluetoothA2DPAudioLinkInfo::MergeFrom(this, a2);
  }
}

double awd::metrics::BluetoothA2DPAudioLinkInfo::Swap(awd::metrics::BluetoothA2DPAudioLinkInfo *this, awd::metrics::BluetoothA2DPAudioLinkInfo *a2)
{
  if (a2 != this)
  {
    v2 = *(this + 1);
    *(this + 1) = *(a2 + 1);
    *(a2 + 1) = v2;
    LOBYTE(v2) = *(this + 16);
    *(this + 16) = *(a2 + 16);
    *(a2 + 16) = v2;
    LODWORD(v2) = *(this + 5);
    *(this + 5) = *(a2 + 5);
    *(a2 + 5) = v2;
    v3 = *(this + 3);
    *(this + 3) = *(a2 + 3);
    v4 = *(a2 + 4);
    *(a2 + 3) = v3;
    v5 = *(this + 4);
    *(this + 4) = v4;
    *(a2 + 4) = v5;
    v6 = *(this + 5);
    *(this + 5) = *(a2 + 5);
    v7 = *(a2 + 6);
    *(a2 + 5) = v6;
    v8 = *(this + 6);
    *(this + 6) = v7;
    *(a2 + 6) = v8;
    LODWORD(v6) = *(this + 14);
    *(this + 14) = *(a2 + 14);
    *(a2 + 14) = v6;
    LODWORD(v6) = *(this + 15);
    *(this + 15) = *(a2 + 15);
    *(a2 + 15) = v6;
    v9 = *(this + 8);
    *(this + 8) = *(a2 + 8);
    result = *(a2 + 9);
    *(a2 + 8) = v9;
    v11 = *(this + 9);
    *(this + 9) = result;
    *(a2 + 9) = v11;
    v12 = *(this + 10);
    *(this + 10) = *(a2 + 10);
    *(a2 + 10) = v12;
    LODWORD(v12) = *(this + 22);
    *(this + 22) = *(a2 + 22);
    *(a2 + 22) = v12;
    LODWORD(v12) = *(this + 23);
    *(this + 23) = *(a2 + 23);
    *(a2 + 23) = v12;
    LODWORD(v12) = *(this + 24);
    *(this + 24) = *(a2 + 24);
    *(a2 + 24) = v12;
    LODWORD(v12) = *(this + 25);
    *(this + 25) = *(a2 + 25);
    *(a2 + 25) = v12;
    LODWORD(v12) = *(this + 26);
    *(this + 26) = *(a2 + 26);
    *(a2 + 26) = v12;
    LODWORD(v12) = *(this + 27);
    *(this + 27) = *(a2 + 27);
    *(a2 + 27) = v12;
    LODWORD(v12) = *(this + 28);
    *(this + 28) = *(a2 + 28);
    *(a2 + 28) = v12;
    LODWORD(v12) = *(this + 29);
    *(this + 29) = *(a2 + 29);
    *(a2 + 29) = v12;
    LODWORD(v12) = *(this + 30);
    *(this + 30) = *(a2 + 30);
    *(a2 + 30) = v12;
    LODWORD(v12) = *(this + 31);
    *(this + 31) = *(a2 + 31);
    *(a2 + 31) = v12;
    LODWORD(v12) = *(this + 32);
    *(this + 32) = *(a2 + 32);
    *(a2 + 32) = v12;
    LODWORD(v12) = *(this + 33);
    *(this + 33) = *(a2 + 33);
    *(a2 + 33) = v12;
    LODWORD(v12) = *(this + 34);
    *(this + 34) = *(a2 + 34);
    *(a2 + 34) = v12;
    LODWORD(v12) = *(this + 35);
    *(this + 35) = *(a2 + 35);
    *(a2 + 35) = v12;
    LODWORD(v12) = *(this + 36);
    *(this + 36) = *(a2 + 36);
    *(a2 + 36) = v12;
    LODWORD(v12) = *(this + 37);
    *(this + 37) = *(a2 + 37);
    *(a2 + 37) = v12;
    LODWORD(v12) = *(this + 38);
    *(this + 38) = *(a2 + 38);
    *(a2 + 38) = v12;
    LODWORD(v12) = *(this + 39);
    *(this + 39) = *(a2 + 39);
    *(a2 + 39) = v12;
    LODWORD(v12) = *(this + 40);
    *(this + 40) = *(a2 + 40);
    *(a2 + 40) = v12;
    LODWORD(v12) = *(this + 41);
    *(this + 41) = *(a2 + 41);
    *(a2 + 41) = v12;
    LODWORD(v12) = *(this + 42);
    *(this + 42) = *(a2 + 42);
    *(a2 + 42) = v12;
    LODWORD(v12) = *(this + 43);
    *(this + 43) = *(a2 + 43);
    *(a2 + 43) = v12;
    LODWORD(v12) = *(this + 44);
    *(this + 44) = *(a2 + 44);
    *(a2 + 44) = v12;
    LODWORD(v12) = *(this + 45);
    *(this + 45) = *(a2 + 45);
    *(a2 + 45) = v12;
    v13 = *(this + 23);
    *(this + 23) = *(a2 + 23);
    *(a2 + 23) = v13;
    v14 = *(this + 24);
    *(this + 24) = *(a2 + 24);
    *(a2 + 24) = v14;
    LODWORD(v14) = *(this + 50);
    *(this + 50) = *(a2 + 50);
    *(a2 + 50) = v14;
    LODWORD(v14) = *(this + 51);
    *(this + 51) = *(a2 + 51);
    *(a2 + 51) = v14;
    LODWORD(v14) = *(this + 52);
    *(this + 52) = *(a2 + 52);
    *(a2 + 52) = v14;
    LODWORD(v14) = *(this + 53);
    *(this + 53) = *(a2 + 53);
    *(a2 + 53) = v14;
    LODWORD(v14) = *(this + 54);
    *(this + 54) = *(a2 + 54);
    *(a2 + 54) = v14;
    LODWORD(v14) = *(this + 55);
    *(this + 55) = *(a2 + 55);
    *(a2 + 55) = v14;
    v15 = *(this + 28);
    *(this + 28) = *(a2 + 28);
    *(a2 + 28) = v15;
    v16 = *(this + 29);
    *(this + 29) = *(a2 + 29);
    *(a2 + 29) = v16;
    v17 = *(this + 30);
    *(this + 30) = *(a2 + 30);
    *(a2 + 30) = v17;
    v18 = *(this + 31);
    *(this + 31) = *(a2 + 31);
    *(a2 + 31) = v18;
    v19 = *(this + 32);
    *(this + 32) = *(a2 + 32);
    *(a2 + 32) = v19;
    v20 = *(this + 33);
    *(this + 33) = *(a2 + 33);
    *(a2 + 33) = v20;
    LODWORD(v20) = *(this + 68);
    *(this + 68) = *(a2 + 68);
    *(a2 + 68) = v20;
    LODWORD(v20) = *(this + 69);
    *(this + 69) = *(a2 + 69);
    *(a2 + 69) = v20;
    LODWORD(v20) = *(this + 70);
    *(this + 70) = *(a2 + 70);
    *(a2 + 70) = v20;
    LODWORD(v20) = *(this + 71);
    *(this + 71) = *(a2 + 71);
    *(a2 + 71) = v20;
    LODWORD(v20) = *(this + 72);
    *(this + 72) = *(a2 + 72);
    *(a2 + 72) = v20;
    LODWORD(v20) = *(this + 73);
    *(this + 73) = *(a2 + 73);
    *(a2 + 73) = v20;
    LODWORD(v20) = *(this + 74);
    *(this + 74) = *(a2 + 74);
    *(a2 + 74) = v20;
    LODWORD(v20) = *(this + 75);
    *(this + 75) = *(a2 + 75);
    *(a2 + 75) = v20;
    LODWORD(v20) = *(this + 76);
    *(this + 76) = *(a2 + 76);
    *(a2 + 76) = v20;
    LODWORD(v20) = *(this + 78);
    *(this + 78) = *(a2 + 78);
    *(a2 + 78) = v20;
    LODWORD(v20) = *(this + 79);
    *(this + 79) = *(a2 + 79);
    *(a2 + 79) = v20;
    LODWORD(v20) = *(this + 77);
    *(this + 77) = *(a2 + 77);
    *(a2 + 77) = v20;
  }

  return result;
}

double awd::metrics::BluetoothHFPAudioLinkInfo::SharedCtor(awd::metrics::BluetoothHFPAudioLinkInfo *this)
{
  *(this + 53) = 0;
  *(this + 1) = 0;
  *(this + 16) = 0;
  *(this + 5) = 0;
  *(this + 7) = 0;
  *(this + 12) = MEMORY[0x29EDC9758];
  *(this + 27) = 0;
  result = 0.0;
  *(this + 104) = 0u;
  *(this + 120) = 0u;
  *(this + 136) = 0u;
  *(this + 152) = 0u;
  *(this + 168) = 0u;
  *(this + 184) = 0u;
  *(this + 196) = 0u;
  return result;
}

awd::metrics::BluetoothHFPAudioLinkInfo *awd::metrics::BluetoothHFPAudioLinkInfo::BluetoothHFPAudioLinkInfo(awd::metrics::BluetoothHFPAudioLinkInfo *this, const awd::metrics::BluetoothHFPAudioLinkInfo *a2)
{
  *(this + 53) = 0;
  *this = &unk_2A1D4B508;
  *(this + 1) = 0;
  *(this + 16) = 0;
  *(this + 20) = 0u;
  *(this + 36) = 0u;
  *(this + 52) = 0u;
  *(this + 68) = 0u;
  *(this + 5) = 0u;
  *(this + 12) = MEMORY[0x29EDC9758];
  *(this + 27) = 0;
  *(this + 104) = 0u;
  *(this + 120) = 0u;
  *(this + 136) = 0u;
  *(this + 152) = 0u;
  *(this + 168) = 0u;
  *(this + 184) = 0u;
  *(this + 196) = 0u;
  awd::metrics::BluetoothHFPAudioLinkInfo::MergeFrom(this, a2);
  return this;
}

void sub_29637316C(_Unwind_Exception *a1)
{
  v3 = v1[10];
  if (v3)
  {
    MEMORY[0x29C259EE0](v3, 0x1000C8052888210);
  }

  awd::metrics::BluetoothHFPAudioLinkInfo::BluetoothHFPAudioLinkInfo((v1 + 8), v1 + 5, v1 + 3);
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(v1);
  _Unwind_Resume(a1);
}

void awd::metrics::BluetoothHFPAudioLinkInfo::MergeFrom(awd::metrics::BluetoothHFPAudioLinkInfo *this, const awd::metrics::BluetoothHFPAudioLinkInfo *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v44);
  }

  v4 = *(a2 + 8);
  if (v4)
  {
    wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 6, *(this + 8) + v4);
    memcpy((*(this + 3) + 4 * *(this + 8)), *(a2 + 3), 4 * *(a2 + 8));
    *(this + 8) += *(a2 + 8);
  }

  v5 = *(a2 + 12);
  if (v5)
  {
    wireless_diagnostics::google::protobuf::RepeatedField<int>::Reserve(this + 10, *(this + 12) + v5);
    memcpy((*(this + 5) + 4 * *(this + 12)), *(a2 + 5), 4 * *(a2 + 12));
    *(this + 12) += *(a2 + 12);
  }

  v6 = *(a2 + 18);
  if (v6)
  {
    wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 16, *(this + 18) + v6);
    memcpy((*(this + 8) + 4 * *(this + 18)), *(a2 + 8), 4 * *(a2 + 18));
    *(this + 18) += *(a2 + 18);
  }

  v7 = *(a2 + 22);
  if (v7)
  {
    wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 20, *(this + 22) + v7);
    memcpy((*(this + 10) + 4 * *(this + 22)), *(a2 + 10), 4 * *(a2 + 22));
    *(this + 22) += *(a2 + 22);
  }

  v8 = *(a2 + 54);
  if (!v8)
  {
    goto LABEL_18;
  }

  if (v8)
  {
    v14 = *(a2 + 1);
    *(this + 54) |= 1u;
    *(this + 1) = v14;
    v8 = *(a2 + 54);
    if ((v8 & 2) == 0)
    {
LABEL_14:
      if ((v8 & 4) == 0)
      {
        goto LABEL_15;
      }

LABEL_56:
      v16 = *(a2 + 5);
      *(this + 54) |= 4u;
      *(this + 5) = v16;
      v8 = *(a2 + 54);
      if ((v8 & 0x20) == 0)
      {
LABEL_16:
        if ((v8 & 0x40) == 0)
        {
          goto LABEL_18;
        }

        goto LABEL_17;
      }

      goto LABEL_57;
    }
  }

  else if ((v8 & 2) == 0)
  {
    goto LABEL_14;
  }

  v15 = *(a2 + 16);
  *(this + 54) |= 2u;
  *(this + 16) = v15;
  v8 = *(a2 + 54);
  if ((v8 & 4) != 0)
  {
    goto LABEL_56;
  }

LABEL_15:
  if ((v8 & 0x20) == 0)
  {
    goto LABEL_16;
  }

LABEL_57:
  v17 = *(a2 + 14);
  *(this + 54) |= 0x20u;
  *(this + 14) = v17;
  v8 = *(a2 + 54);
  if ((v8 & 0x40) != 0)
  {
LABEL_17:
    v9 = *(a2 + 15);
    *(this + 54) |= 0x40u;
    *(this + 15) = v9;
    v8 = *(a2 + 54);
  }

LABEL_18:
  if ((v8 & 0x1FE00) == 0)
  {
    goto LABEL_27;
  }

  if ((v8 & 0x200) != 0)
  {
    v18 = *(a2 + 12);
    *(this + 54) |= 0x200u;
    v19 = *(this + 12);
    if (v19 == MEMORY[0x29EDC9758])
    {
      operator new();
    }

    std::string::operator=(v19, v18);
    v8 = *(a2 + 54);
    if ((v8 & 0x400) == 0)
    {
LABEL_21:
      if ((v8 & 0x800) == 0)
      {
        goto LABEL_22;
      }

      goto LABEL_63;
    }
  }

  else if ((v8 & 0x400) == 0)
  {
    goto LABEL_21;
  }

  v20 = *(a2 + 26);
  *(this + 54) |= 0x400u;
  *(this + 26) = v20;
  v8 = *(a2 + 54);
  if ((v8 & 0x800) == 0)
  {
LABEL_22:
    if ((v8 & 0x1000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_64;
  }

LABEL_63:
  v21 = *(a2 + 27);
  *(this + 54) |= 0x800u;
  *(this + 27) = v21;
  v8 = *(a2 + 54);
  if ((v8 & 0x1000) == 0)
  {
LABEL_23:
    if ((v8 & 0x2000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_65;
  }

LABEL_64:
  v22 = *(a2 + 28);
  *(this + 54) |= 0x1000u;
  *(this + 28) = v22;
  v8 = *(a2 + 54);
  if ((v8 & 0x2000) == 0)
  {
LABEL_24:
    if ((v8 & 0x4000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_66;
  }

LABEL_65:
  v23 = *(a2 + 29);
  *(this + 54) |= 0x2000u;
  *(this + 29) = v23;
  v8 = *(a2 + 54);
  if ((v8 & 0x4000) == 0)
  {
LABEL_25:
    if ((v8 & 0x8000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_26;
  }

LABEL_66:
  v24 = *(a2 + 30);
  *(this + 54) |= 0x4000u;
  *(this + 30) = v24;
  v8 = *(a2 + 54);
  if ((v8 & 0x8000) != 0)
  {
LABEL_26:
    v10 = *(a2 + 31);
    *(this + 54) |= 0x8000u;
    *(this + 31) = v10;
    v8 = *(a2 + 54);
  }

LABEL_27:
  if ((v8 & 0xFF0000) == 0)
  {
    goto LABEL_37;
  }

  if ((v8 & 0x10000) != 0)
  {
    v25 = *(a2 + 32);
    *(this + 54) |= 0x10000u;
    *(this + 32) = v25;
    v8 = *(a2 + 54);
    if ((v8 & 0x20000) == 0)
    {
LABEL_30:
      if ((v8 & 0x40000) == 0)
      {
        goto LABEL_31;
      }

      goto LABEL_70;
    }
  }

  else if ((v8 & 0x20000) == 0)
  {
    goto LABEL_30;
  }

  v26 = *(a2 + 33);
  *(this + 54) |= 0x20000u;
  *(this + 33) = v26;
  v8 = *(a2 + 54);
  if ((v8 & 0x40000) == 0)
  {
LABEL_31:
    if ((v8 & 0x80000) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_71;
  }

LABEL_70:
  v27 = *(a2 + 34);
  *(this + 54) |= 0x40000u;
  *(this + 34) = v27;
  v8 = *(a2 + 54);
  if ((v8 & 0x80000) == 0)
  {
LABEL_32:
    if ((v8 & 0x100000) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_72;
  }

LABEL_71:
  v28 = *(a2 + 35);
  *(this + 54) |= 0x80000u;
  *(this + 35) = v28;
  v8 = *(a2 + 54);
  if ((v8 & 0x100000) == 0)
  {
LABEL_33:
    if ((v8 & 0x200000) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_73;
  }

LABEL_72:
  v29 = *(a2 + 36);
  *(this + 54) |= 0x100000u;
  *(this + 36) = v29;
  v8 = *(a2 + 54);
  if ((v8 & 0x200000) == 0)
  {
LABEL_34:
    if ((v8 & 0x400000) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_74;
  }

LABEL_73:
  v30 = *(a2 + 37);
  *(this + 54) |= 0x200000u;
  *(this + 37) = v30;
  v8 = *(a2 + 54);
  if ((v8 & 0x400000) == 0)
  {
LABEL_35:
    if ((v8 & 0x800000) == 0)
    {
      goto LABEL_37;
    }

    goto LABEL_36;
  }

LABEL_74:
  v31 = *(a2 + 38);
  *(this + 54) |= 0x400000u;
  *(this + 38) = v31;
  v8 = *(a2 + 54);
  if ((v8 & 0x800000) != 0)
  {
LABEL_36:
    v11 = *(a2 + 39);
    *(this + 54) |= 0x800000u;
    *(this + 39) = v11;
    v8 = *(a2 + 54);
  }

LABEL_37:
  if (!HIBYTE(v8))
  {
    goto LABEL_46;
  }

  if ((v8 & 0x1000000) != 0)
  {
    v36 = *(a2 + 40);
    *(this + 54) |= 0x1000000u;
    *(this + 40) = v36;
    v8 = *(a2 + 54);
    if ((v8 & 0x2000000) == 0)
    {
LABEL_40:
      if ((v8 & 0x4000000) == 0)
      {
        goto LABEL_41;
      }

      goto LABEL_83;
    }
  }

  else if ((v8 & 0x2000000) == 0)
  {
    goto LABEL_40;
  }

  v37 = *(a2 + 41);
  *(this + 54) |= 0x2000000u;
  *(this + 41) = v37;
  v8 = *(a2 + 54);
  if ((v8 & 0x4000000) == 0)
  {
LABEL_41:
    if ((v8 & 0x8000000) == 0)
    {
      goto LABEL_42;
    }

    goto LABEL_84;
  }

LABEL_83:
  v38 = *(a2 + 42);
  *(this + 54) |= 0x4000000u;
  *(this + 42) = v38;
  v8 = *(a2 + 54);
  if ((v8 & 0x8000000) == 0)
  {
LABEL_42:
    if ((v8 & 0x10000000) == 0)
    {
      goto LABEL_43;
    }

    goto LABEL_85;
  }

LABEL_84:
  v39 = *(a2 + 43);
  *(this + 54) |= 0x8000000u;
  *(this + 43) = v39;
  v8 = *(a2 + 54);
  if ((v8 & 0x10000000) == 0)
  {
LABEL_43:
    if ((v8 & 0x20000000) == 0)
    {
      goto LABEL_44;
    }

    goto LABEL_86;
  }

LABEL_85:
  v40 = *(a2 + 44);
  *(this + 54) |= 0x10000000u;
  *(this + 44) = v40;
  v8 = *(a2 + 54);
  if ((v8 & 0x20000000) == 0)
  {
LABEL_44:
    if ((v8 & 0x40000000) == 0)
    {
      goto LABEL_45;
    }

LABEL_87:
    v42 = *(a2 + 46);
    *(this + 54) |= 0x40000000u;
    *(this + 46) = v42;
    if ((*(a2 + 54) & 0x80000000) == 0)
    {
      goto LABEL_46;
    }

    goto LABEL_88;
  }

LABEL_86:
  v41 = *(a2 + 45);
  *(this + 54) |= 0x20000000u;
  *(this + 45) = v41;
  v8 = *(a2 + 54);
  if ((v8 & 0x40000000) != 0)
  {
    goto LABEL_87;
  }

LABEL_45:
  if ((v8 & 0x80000000) == 0)
  {
    goto LABEL_46;
  }

LABEL_88:
  v43 = *(a2 + 47);
  *(this + 54) |= 0x80000000;
  *(this + 47) = v43;
LABEL_46:
  LOBYTE(v12) = *(a2 + 220);
  if (!v12)
  {
    return;
  }

  if (*(a2 + 220))
  {
    v32 = *(a2 + 48);
    *(this + 55) |= 1u;
    *(this + 48) = v32;
    v12 = *(a2 + 55);
    if ((v12 & 2) == 0)
    {
LABEL_49:
      if ((v12 & 4) == 0)
      {
        goto LABEL_50;
      }

      goto LABEL_78;
    }
  }

  else if ((*(a2 + 220) & 2) == 0)
  {
    goto LABEL_49;
  }

  v33 = *(a2 + 49);
  *(this + 55) |= 2u;
  *(this + 49) = v33;
  v12 = *(a2 + 55);
  if ((v12 & 4) == 0)
  {
LABEL_50:
    if ((v12 & 8) == 0)
    {
      goto LABEL_51;
    }

    goto LABEL_79;
  }

LABEL_78:
  v34 = *(a2 + 50);
  *(this + 55) |= 4u;
  *(this + 50) = v34;
  v12 = *(a2 + 55);
  if ((v12 & 8) == 0)
  {
LABEL_51:
    if ((v12 & 0x10) == 0)
    {
      return;
    }

    goto LABEL_52;
  }

LABEL_79:
  v35 = *(a2 + 51);
  *(this + 55) |= 8u;
  *(this + 51) = v35;
  if ((*(a2 + 55) & 0x10) != 0)
  {
LABEL_52:
    v13 = *(a2 + 52);
    *(this + 55) |= 0x10u;
    *(this + 52) = v13;
  }
}

void sub_2963737B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::metrics::BluetoothHFPAudioLinkInfo::~BluetoothHFPAudioLinkInfo(awd::metrics::BluetoothHFPAudioLinkInfo *this)
{
  *this = &unk_2A1D4B508;
  awd::metrics::BluetoothHFPAudioLinkInfo::SharedDtor(this);
  v2 = *(this + 10);
  if (v2)
  {
    MEMORY[0x29C259EE0](v2, 0x1000C8052888210);
  }

  v3 = *(this + 8);
  if (v3)
  {
    MEMORY[0x29C259EE0](v3, 0x1000C8052888210);
  }

  v4 = *(this + 5);
  if (v4)
  {
    MEMORY[0x29C259EE0](v4, 0x1000C8052888210);
  }

  v5 = *(this + 3);
  if (v5)
  {
    MEMORY[0x29C259EE0](v5, 0x1000C8052888210);
  }

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  awd::metrics::BluetoothHFPAudioLinkInfo::~BluetoothHFPAudioLinkInfo(this);

  JUMPOUT(0x29C259F00);
}

uint64_t awd::metrics::BluetoothHFPAudioLinkInfo::SharedDtor(uint64_t this)
{
  v1 = *(this + 96);
  if (v1 != MEMORY[0x29EDC9758] && v1 != 0)
  {
    if (*(v1 + 23) < 0)
    {
      operator delete(*v1);
    }

    JUMPOUT(0x29C259F00);
  }

  return this;
}

uint64_t awd::metrics::BluetoothHFPAudioLinkInfo::default_instance(awd::metrics::BluetoothHFPAudioLinkInfo *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = awd::metrics::BluetoothHFPAudioLinkInfo::default_instance_;
  if (!awd::metrics::BluetoothHFPAudioLinkInfo::default_instance_)
  {
    awd::metrics::protobuf_AddDesc_Bluetooth_2eproto(0, a2, a3, a4);
    return awd::metrics::BluetoothHFPAudioLinkInfo::default_instance_;
  }

  return result;
}

uint64_t awd::metrics::BluetoothHFPAudioLinkInfo::Clear(uint64_t this)
{
  v1 = *(this + 216);
  if (v1)
  {
    *(this + 8) = 0;
    *(this + 16) = 0;
    *(this + 20) = 0;
    *(this + 56) = 0;
  }

  if ((v1 & 0x1FE00) != 0)
  {
    if ((v1 & 0x200) != 0)
    {
      v2 = *(this + 96);
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

    *(this + 104) = 0;
    *(this + 112) = 0;
    *(this + 120) = 0;
    v1 = *(this + 216);
  }

  if ((v1 & 0xFF0000) != 0)
  {
    *(this + 128) = 0u;
    *(this + 144) = 0u;
  }

  if (HIBYTE(v1))
  {
    *(this + 160) = 0u;
    *(this + 176) = 0u;
  }

  if (*(this + 220))
  {
    *(this + 192) = 0;
    *(this + 200) = 0;
    *(this + 208) = 0;
  }

  *(this + 32) = 0;
  *(this + 48) = 0;
  *(this + 72) = 0;
  *(this + 88) = 0;
  *(this + 216) = 0;
  return this;
}

uint64_t awd::metrics::BluetoothHFPAudioLinkInfo::MergePartialFromCodedStream(awd::metrics::BluetoothHFPAudioLinkInfo *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
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
          goto LABEL_90;
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

        *(this + 54) |= 1u;
        if (v11 < v8 && *v11 == 16)
        {
          v28 = v11 + 1;
          *(a2 + 1) = v28;
          goto LABEL_103;
        }

        continue;
      case 2u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_90;
        }

        v28 = *(a2 + 1);
        v8 = *(a2 + 2);
LABEL_103:
        v158[0] = 0;
        if (v28 >= v8 || (v50 = *v28, (v50 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v158);
          if (!result)
          {
            return result;
          }

          v50 = v158[0];
          v51 = *(a2 + 1);
          v8 = *(a2 + 2);
        }

        else
        {
          v51 = v28 + 1;
          *(a2 + 1) = v51;
        }

        *(this + 16) = v50 != 0;
        *(this + 54) |= 2u;
        if (v51 >= v8 || *v51 != 24)
        {
          continue;
        }

        v26 = v51 + 1;
        *(a2 + 1) = v26;
LABEL_111:
        if (v26 >= v8 || (v52 = *v26, v52 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 5);
          if (!result)
          {
            return result;
          }

          v53 = *(a2 + 1);
          v8 = *(a2 + 2);
        }

        else
        {
          *(this + 5) = v52;
          v53 = (v26 + 1);
          *(a2 + 1) = v53;
        }

        *(this + 54) |= 4u;
        if (v53 >= v8)
        {
          continue;
        }

        v54 = *v53;
        goto LABEL_118;
      case 3u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_90;
        }

        v26 = *(a2 + 1);
        v8 = *(a2 + 2);
        goto LABEL_111;
      case 4u:
        if ((TagFallback & 7) == 0)
        {
          v47 = *(a2 + 1);
          v8 = *(a2 + 2);
LABEL_120:
          v157 = 0;
          if (v47 >= v8 || *v47 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v157))
            {
              return 0;
            }
          }

          else
          {
            v157 = *v47;
            *(a2 + 1) = v47 + 1;
          }

          v55 = *(this + 8);
          if (v55 == *(this + 9))
          {
            wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 6, v55 + 1);
            v55 = *(this + 8);
          }

          v56 = v157;
          v57 = *(this + 3);
          *(this + 8) = v55 + 1;
          *(v57 + 4 * v55) = v56;
          v58 = *(this + 9) - *(this + 8);
          if (v58 >= 1)
          {
            v59 = v58 + 1;
            do
            {
              v60 = *(a2 + 1);
              v61 = *(a2 + 2);
              if (v60 >= v61 || *v60 != 32)
              {
                break;
              }

              *(a2 + 1) = v60 + 1;
              if ((v60 + 1) >= v61 || v60[1] < 0)
              {
                if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v157))
                {
                  return 0;
                }
              }

              else
              {
                v157 = v60[1];
                *(a2 + 1) = v60 + 2;
              }

              v62 = *(this + 8);
              if (v62 >= *(this + 9))
              {
                wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v158);
                v62 = *(this + 8);
              }

              v63 = v157;
              v64 = *(this + 3);
              *(this + 8) = v62 + 1;
              *(v64 + 4 * v62) = v63;
              --v59;
            }

            while (v59 > 1);
          }

          goto LABEL_137;
        }

        if (v7 != 2)
        {
          goto LABEL_90;
        }

        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadPackedPrimitiveNoInline<unsigned int,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)13>(a2, this + 3);
        if (!result)
        {
          return result;
        }

LABEL_137:
        v53 = *(a2 + 1);
        v8 = *(a2 + 2);
        if (v53 < v8)
        {
          v54 = *v53;
          if (v54 == 40)
          {
            while (1)
            {
              v46 = (v53 + 1);
              *(a2 + 1) = v46;
LABEL_140:
              v158[0] = 0;
              if (v46 >= v8 || (v65 = *v46, (v65 & 0x80000000) != 0))
              {
                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v158);
                if (!result)
                {
                  return result;
                }

                v65 = v158[0];
              }

              else
              {
                *(a2 + 1) = v46 + 1;
              }

              v66 = *(this + 12);
              if (v66 == *(this + 13))
              {
                wireless_diagnostics::google::protobuf::RepeatedField<int>::Reserve(this + 10, v66 + 1);
                v66 = *(this + 12);
              }

              v67 = *(this + 5);
              *(this + 12) = v66 + 1;
              *(v67 + 4 * v66) = v65;
              v68 = *(this + 13) - *(this + 12);
              if (v68 >= 1)
              {
                v69 = v68 + 1;
                do
                {
                  v70 = *(a2 + 1);
                  v71 = *(a2 + 2);
                  if (v70 >= v71 || *v70 != 40)
                  {
                    break;
                  }

                  *(a2 + 1) = v70 + 1;
                  v158[0] = 0;
                  if ((v70 + 1) >= v71 || (v72 = v70[1], (v72 & 0x80000000) != 0))
                  {
                    result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v158);
                    if (!result)
                    {
                      return result;
                    }

                    v72 = v158[0];
                  }

                  else
                  {
                    *(a2 + 1) = v70 + 2;
                  }

                  v73 = *(this + 12);
                  if (v73 >= *(this + 13))
                  {
                    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v158);
                    v73 = *(this + 12);
                  }

                  v74 = *(this + 5);
                  *(this + 12) = v73 + 1;
                  *(v74 + 4 * v73) = v72;
                  --v69;
                }

                while (v69 > 1);
              }

LABEL_159:
              v53 = *(a2 + 1);
              v8 = *(a2 + 2);
              if (v53 >= v8)
              {
                break;
              }

              v75 = *v53;
              if (v75 == 48)
              {
                v32 = (v53 + 1);
                *(a2 + 1) = v32;
LABEL_164:
                if (v32 >= v8 || (v76 = *v32, v76 < 0))
                {
                  result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 14);
                  if (!result)
                  {
                    return result;
                  }

                  v77 = *(a2 + 1);
                  v8 = *(a2 + 2);
                }

                else
                {
                  *(this + 14) = v76;
                  v77 = v32 + 1;
                  *(a2 + 1) = v77;
                }

                *(this + 54) |= 0x20u;
                if (v77 < v8 && *v77 == 56)
                {
                  v35 = v77 + 1;
                  *(a2 + 1) = v35;
LABEL_172:
                  if (v35 >= v8 || (v78 = *v35, v78 < 0))
                  {
                    result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 15);
                    if (!result)
                    {
                      return result;
                    }

                    v79 = *(a2 + 1);
                    v8 = *(a2 + 2);
                  }

                  else
                  {
                    *(this + 15) = v78;
                    v79 = (v35 + 1);
                    *(a2 + 1) = v79;
                  }

                  *(this + 54) |= 0x40u;
                  if (v79 < v8)
                  {
                    v80 = *v79;
                    goto LABEL_179;
                  }
                }

                goto LABEL_1;
              }

              if (v75 != 40)
              {
                goto LABEL_1;
              }
            }
          }

          else
          {
LABEL_118:
            if (v54 == 32)
            {
              v47 = (v53 + 1);
              *(a2 + 1) = v47;
              goto LABEL_120;
            }
          }
        }

        continue;
      case 5u:
        if ((TagFallback & 7) == 0)
        {
          v46 = *(a2 + 1);
          v8 = *(a2 + 2);
          goto LABEL_140;
        }

        if (v7 != 2)
        {
          goto LABEL_90;
        }

        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadPackedPrimitiveNoInline<int,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)5>(a2, this + 5);
        if (!result)
        {
          return result;
        }

        goto LABEL_159;
      case 6u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_90;
        }

        v32 = *(a2 + 1);
        v8 = *(a2 + 2);
        goto LABEL_164;
      case 7u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_90;
        }

        v35 = *(a2 + 1);
        v8 = *(a2 + 2);
        goto LABEL_172;
      case 8u:
        if ((TagFallback & 7) != 0)
        {
          if (v7 == 2)
          {
            result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadPackedPrimitiveNoInline<unsigned int,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)13>(a2, this + 8);
            if (!result)
            {
              return result;
            }

            goto LABEL_198;
          }

          goto LABEL_90;
        }

        v48 = *(a2 + 1);
        v8 = *(a2 + 2);
        while (1)
        {
          v157 = 0;
          if (v48 >= v8 || *v48 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v157))
            {
              return 0;
            }
          }

          else
          {
            v157 = *v48;
            *(a2 + 1) = v48 + 1;
          }

          v81 = *(this + 18);
          if (v81 == *(this + 19))
          {
            wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 16, v81 + 1);
            v81 = *(this + 18);
          }

          v82 = v157;
          v83 = *(this + 8);
          *(this + 18) = v81 + 1;
          *(v83 + 4 * v81) = v82;
          v84 = *(this + 19) - *(this + 18);
          if (v84 >= 1)
          {
            v85 = v84 + 1;
            do
            {
              v86 = *(a2 + 1);
              v87 = *(a2 + 2);
              if (v86 >= v87 || *v86 != 64)
              {
                break;
              }

              *(a2 + 1) = v86 + 1;
              if ((v86 + 1) >= v87 || v86[1] < 0)
              {
                if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v157))
                {
                  return 0;
                }
              }

              else
              {
                v157 = v86[1];
                *(a2 + 1) = v86 + 2;
              }

              v88 = *(this + 18);
              if (v88 >= *(this + 19))
              {
                wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v158);
                v88 = *(this + 18);
              }

              v89 = v157;
              v90 = *(this + 8);
              *(this + 18) = v88 + 1;
              *(v90 + 4 * v88) = v89;
              --v85;
            }

            while (v85 > 1);
          }

LABEL_198:
          v79 = *(a2 + 1);
          v8 = *(a2 + 2);
          if (v79 >= v8)
          {
            goto LABEL_1;
          }

          v80 = *v79;
          if (v80 == 72)
          {
            goto LABEL_200;
          }

LABEL_179:
          if (v80 != 64)
          {
            goto LABEL_1;
          }

          v48 = (v79 + 1);
          *(a2 + 1) = v48;
        }

      case 9u:
        if ((TagFallback & 7) != 0)
        {
          if (v7 == 2)
          {
            result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadPackedPrimitiveNoInline<unsigned int,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)13>(a2, this + 10);
            if (!result)
            {
              return result;
            }

            goto LABEL_218;
          }

LABEL_90:
          if (v7 == 4)
          {
            return 1;
          }

          if ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(a2, TagFallback) & 1) == 0)
          {
            return 0;
          }

          continue;
        }

        v49 = *(a2 + 1);
        v8 = *(a2 + 2);
LABEL_201:
        v157 = 0;
        if (v49 < v8 && (*v49 & 0x80000000) == 0)
        {
          v157 = *v49;
          *(a2 + 1) = v49 + 1;
          goto LABEL_205;
        }

        if (wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v157))
        {
LABEL_205:
          v91 = *(this + 22);
          if (v91 == *(this + 23))
          {
            wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 20, v91 + 1);
            v91 = *(this + 22);
          }

          v92 = v157;
          v93 = *(this + 10);
          *(this + 22) = v91 + 1;
          *(v93 + 4 * v91) = v92;
          v94 = *(this + 23) - *(this + 22);
          if (v94 >= 1)
          {
            v95 = v94 + 1;
            do
            {
              v96 = *(a2 + 1);
              v97 = *(a2 + 2);
              if (v96 >= v97 || *v96 != 72)
              {
                break;
              }

              *(a2 + 1) = v96 + 1;
              if ((v96 + 1) >= v97 || v96[1] < 0)
              {
                if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v157))
                {
                  return 0;
                }
              }

              else
              {
                v157 = v96[1];
                *(a2 + 1) = v96 + 2;
              }

              v98 = *(this + 22);
              if (v98 >= *(this + 23))
              {
                wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v158);
                v98 = *(this + 22);
              }

              v99 = v157;
              v100 = *(this + 10);
              *(this + 22) = v98 + 1;
              *(v100 + 4 * v98) = v99;
              --v95;
            }

            while (v95 > 1);
          }

LABEL_218:
          v79 = *(a2 + 1);
          v8 = *(a2 + 2);
          if (v79 >= v8)
          {
            continue;
          }

          v101 = *v79;
          if (v101 != 82)
          {
            if (v101 != 72)
            {
              continue;
            }

LABEL_200:
            v49 = (v79 + 1);
            *(a2 + 1) = v49;
            goto LABEL_201;
          }

          *(a2 + 1) = v79 + 1;
LABEL_223:
          *(this + 54) |= 0x200u;
          if (*(this + 12) == MEMORY[0x29EDC9758])
          {
            operator new();
          }

          result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
          if (!result)
          {
            return result;
          }

          v102 = *(a2 + 1);
          v15 = *(a2 + 2);
          if (v102 < v15 && *v102 == 88)
          {
            v37 = v102 + 1;
            *(a2 + 1) = v37;
LABEL_229:
            if (v37 >= v15 || (v103 = *v37, v103 < 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 26);
              if (!result)
              {
                return result;
              }

              v104 = *(a2 + 1);
              v15 = *(a2 + 2);
            }

            else
            {
              *(this + 26) = v103;
              v104 = v37 + 1;
              *(a2 + 1) = v104;
            }

            *(this + 54) |= 0x400u;
            if (v104 < v15 && *v104 == 96)
            {
              v21 = v104 + 1;
              *(a2 + 1) = v21;
LABEL_237:
              if (v21 >= v15 || (v105 = *v21, v105 < 0))
              {
                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 27);
                if (!result)
                {
                  return result;
                }

                v106 = *(a2 + 1);
                v15 = *(a2 + 2);
              }

              else
              {
                *(this + 27) = v105;
                v106 = v21 + 1;
                *(a2 + 1) = v106;
              }

              *(this + 54) |= 0x800u;
              if (v106 < v15 && *v106 == 104)
              {
                v23 = v106 + 1;
                *(a2 + 1) = v23;
LABEL_245:
                if (v23 >= v15 || (v107 = *v23, v107 < 0))
                {
                  result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 28);
                  if (!result)
                  {
                    return result;
                  }

                  v108 = *(a2 + 1);
                  v15 = *(a2 + 2);
                }

                else
                {
                  *(this + 28) = v107;
                  v108 = v23 + 1;
                  *(a2 + 1) = v108;
                }

                *(this + 54) |= 0x1000u;
                if (v108 < v15 && *v108 == 112)
                {
                  v34 = v108 + 1;
                  *(a2 + 1) = v34;
LABEL_253:
                  if (v34 >= v15 || (v109 = *v34, v109 < 0))
                  {
                    result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 29);
                    if (!result)
                    {
                      return result;
                    }

                    v110 = *(a2 + 1);
                    v15 = *(a2 + 2);
                  }

                  else
                  {
                    *(this + 29) = v109;
                    v110 = v34 + 1;
                    *(a2 + 1) = v110;
                  }

                  *(this + 54) |= 0x2000u;
                  if (v110 < v15 && *v110 == 120)
                  {
                    v19 = v110 + 1;
                    *(a2 + 1) = v19;
LABEL_261:
                    if (v19 >= v15 || (v111 = *v19, v111 < 0))
                    {
                      result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 30);
                      if (!result)
                      {
                        return result;
                      }

                      v112 = *(a2 + 1);
                      v15 = *(a2 + 2);
                    }

                    else
                    {
                      *(this + 30) = v111;
                      v112 = (v19 + 1);
                      *(a2 + 1) = v112;
                    }

                    *(this + 54) |= 0x4000u;
                    if (v15 - v112 >= 2 && *v112 == 128 && v112[1] == 1)
                    {
                      v27 = (v112 + 2);
                      *(a2 + 1) = v27;
LABEL_270:
                      if (v27 >= v15 || (v113 = *v27, v113 < 0))
                      {
                        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 31);
                        if (!result)
                        {
                          return result;
                        }

                        v114 = *(a2 + 1);
                        v15 = *(a2 + 2);
                      }

                      else
                      {
                        *(this + 31) = v113;
                        v114 = (v27 + 1);
                        *(a2 + 1) = v114;
                      }

                      *(this + 54) |= 0x8000u;
                      if (v15 - v114 >= 2 && *v114 == 136 && v114[1] == 1)
                      {
                        v18 = (v114 + 2);
                        *(a2 + 1) = v18;
LABEL_279:
                        if (v18 >= v15 || (v115 = *v18, v115 < 0))
                        {
                          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 32);
                          if (!result)
                          {
                            return result;
                          }

                          v116 = *(a2 + 1);
                          v15 = *(a2 + 2);
                        }

                        else
                        {
                          *(this + 32) = v115;
                          v116 = (v18 + 1);
                          *(a2 + 1) = v116;
                        }

                        *(this + 54) |= 0x10000u;
                        if (v15 - v116 >= 2 && *v116 == 144 && v116[1] == 1)
                        {
                          v30 = (v116 + 2);
                          *(a2 + 1) = v30;
LABEL_288:
                          if (v30 >= v15 || (v117 = *v30, v117 < 0))
                          {
                            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 33);
                            if (!result)
                            {
                              return result;
                            }

                            v118 = *(a2 + 1);
                            v15 = *(a2 + 2);
                          }

                          else
                          {
                            *(this + 33) = v117;
                            v118 = (v30 + 1);
                            *(a2 + 1) = v118;
                          }

                          *(this + 54) |= 0x20000u;
                          if (v15 - v118 >= 2 && *v118 == 152 && v118[1] == 1)
                          {
                            v36 = (v118 + 2);
                            *(a2 + 1) = v36;
LABEL_297:
                            if (v36 >= v15 || (v119 = *v36, v119 < 0))
                            {
                              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 34);
                              if (!result)
                              {
                                return result;
                              }

                              v120 = *(a2 + 1);
                              v15 = *(a2 + 2);
                            }

                            else
                            {
                              *(this + 34) = v119;
                              v120 = (v36 + 1);
                              *(a2 + 1) = v120;
                            }

                            *(this + 54) |= 0x40000u;
                            if (v15 - v120 >= 2 && *v120 == 160 && v120[1] == 1)
                            {
                              v41 = (v120 + 2);
                              *(a2 + 1) = v41;
LABEL_306:
                              if (v41 >= v15 || (v121 = *v41, v121 < 0))
                              {
                                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 35);
                                if (!result)
                                {
                                  return result;
                                }

                                v122 = *(a2 + 1);
                                v15 = *(a2 + 2);
                              }

                              else
                              {
                                *(this + 35) = v121;
                                v122 = (v41 + 1);
                                *(a2 + 1) = v122;
                              }

                              *(this + 54) |= 0x80000u;
                              if (v15 - v122 >= 2 && *v122 == 168 && v122[1] == 1)
                              {
                                v31 = (v122 + 2);
                                *(a2 + 1) = v31;
LABEL_315:
                                if (v31 >= v15 || (v123 = *v31, v123 < 0))
                                {
                                  result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 36);
                                  if (!result)
                                  {
                                    return result;
                                  }

                                  v124 = *(a2 + 1);
                                  v15 = *(a2 + 2);
                                }

                                else
                                {
                                  *(this + 36) = v123;
                                  v124 = (v31 + 1);
                                  *(a2 + 1) = v124;
                                }

                                *(this + 54) |= 0x100000u;
                                if (v15 - v124 >= 2 && *v124 == 176 && v124[1] == 1)
                                {
                                  v33 = (v124 + 2);
                                  *(a2 + 1) = v33;
LABEL_324:
                                  v158[0] = 0;
                                  if (v33 >= v15 || (v125 = *v33, (v125 & 0x80000000) != 0))
                                  {
                                    result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v158);
                                    if (!result)
                                    {
                                      return result;
                                    }

                                    v125 = v158[0];
                                    v126 = *(a2 + 1);
                                    v15 = *(a2 + 2);
                                  }

                                  else
                                  {
                                    v126 = (v33 + 1);
                                    *(a2 + 1) = v126;
                                  }

                                  *(this + 37) = -(v125 & 1) ^ (v125 >> 1);
                                  *(this + 54) |= 0x200000u;
                                  if (v15 - v126 >= 2 && *v126 == 184 && v126[1] == 1)
                                  {
                                    v40 = (v126 + 2);
                                    *(a2 + 1) = v40;
LABEL_333:
                                    v158[0] = 0;
                                    if (v40 >= v15 || (v127 = *v40, (v127 & 0x80000000) != 0))
                                    {
                                      result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v158);
                                      if (!result)
                                      {
                                        return result;
                                      }

                                      v127 = v158[0];
                                      v128 = *(a2 + 1);
                                      v15 = *(a2 + 2);
                                    }

                                    else
                                    {
                                      v128 = (v40 + 1);
                                      *(a2 + 1) = v128;
                                    }

                                    *(this + 38) = -(v127 & 1) ^ (v127 >> 1);
                                    *(this + 54) |= 0x400000u;
                                    if (v15 - v128 >= 2 && *v128 == 192 && v128[1] == 1)
                                    {
                                      v42 = (v128 + 2);
                                      *(a2 + 1) = v42;
LABEL_342:
                                      v158[0] = 0;
                                      if (v42 >= v15 || (v129 = *v42, (v129 & 0x80000000) != 0))
                                      {
                                        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v158);
                                        if (!result)
                                        {
                                          return result;
                                        }

                                        v129 = v158[0];
                                        v130 = *(a2 + 1);
                                        v15 = *(a2 + 2);
                                      }

                                      else
                                      {
                                        v130 = (v42 + 1);
                                        *(a2 + 1) = v130;
                                      }

                                      *(this + 39) = -(v129 & 1) ^ (v129 >> 1);
                                      *(this + 54) |= 0x800000u;
                                      if (v15 - v130 >= 2 && *v130 == 200 && v130[1] == 1)
                                      {
                                        v25 = (v130 + 2);
                                        *(a2 + 1) = v25;
LABEL_351:
                                        v158[0] = 0;
                                        if (v25 >= v15 || (v131 = *v25, (v131 & 0x80000000) != 0))
                                        {
                                          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v158);
                                          if (!result)
                                          {
                                            return result;
                                          }

                                          v131 = v158[0];
                                          v132 = *(a2 + 1);
                                          v15 = *(a2 + 2);
                                        }

                                        else
                                        {
                                          v132 = (v25 + 1);
                                          *(a2 + 1) = v132;
                                        }

                                        *(this + 40) = -(v131 & 1) ^ (v131 >> 1);
                                        *(this + 54) |= 0x1000000u;
                                        if (v15 - v132 >= 2 && *v132 == 208 && v132[1] == 1)
                                        {
                                          v24 = (v132 + 2);
                                          *(a2 + 1) = v24;
LABEL_360:
                                          v158[0] = 0;
                                          if (v24 >= v15 || (v133 = *v24, (v133 & 0x80000000) != 0))
                                          {
                                            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v158);
                                            if (!result)
                                            {
                                              return result;
                                            }

                                            v133 = v158[0];
                                            v134 = *(a2 + 1);
                                            v15 = *(a2 + 2);
                                          }

                                          else
                                          {
                                            v134 = (v24 + 1);
                                            *(a2 + 1) = v134;
                                          }

                                          *(this + 41) = -(v133 & 1) ^ (v133 >> 1);
                                          *(this + 54) |= 0x2000000u;
                                          if (v15 - v134 >= 2 && *v134 == 216 && v134[1] == 1)
                                          {
                                            v45 = (v134 + 2);
                                            *(a2 + 1) = v45;
LABEL_369:
                                            v158[0] = 0;
                                            if (v45 >= v15 || (v135 = *v45, (v135 & 0x80000000) != 0))
                                            {
                                              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v158);
                                              if (!result)
                                              {
                                                return result;
                                              }

                                              v135 = v158[0];
                                              v136 = *(a2 + 1);
                                              v15 = *(a2 + 2);
                                            }

                                            else
                                            {
                                              v136 = (v45 + 1);
                                              *(a2 + 1) = v136;
                                            }

                                            *(this + 42) = -(v135 & 1) ^ (v135 >> 1);
                                            *(this + 54) |= 0x4000000u;
                                            if (v15 - v136 >= 2 && *v136 == 224 && v136[1] == 1)
                                            {
                                              v16 = (v136 + 2);
                                              *(a2 + 1) = v16;
LABEL_378:
                                              if (v16 >= v15 || (v137 = *v16, v137 < 0))
                                              {
                                                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 43);
                                                if (!result)
                                                {
                                                  return result;
                                                }

                                                v138 = *(a2 + 1);
                                                v15 = *(a2 + 2);
                                              }

                                              else
                                              {
                                                *(this + 43) = v137;
                                                v138 = (v16 + 1);
                                                *(a2 + 1) = v138;
                                              }

                                              *(this + 54) |= 0x8000000u;
                                              if (v15 - v138 >= 2 && *v138 == 232 && v138[1] == 1)
                                              {
                                                v43 = (v138 + 2);
                                                *(a2 + 1) = v43;
LABEL_387:
                                                if (v43 >= v15 || (v139 = *v43, v139 < 0))
                                                {
                                                  result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 44);
                                                  if (!result)
                                                  {
                                                    return result;
                                                  }

                                                  v140 = *(a2 + 1);
                                                  v15 = *(a2 + 2);
                                                }

                                                else
                                                {
                                                  *(this + 44) = v139;
                                                  v140 = (v43 + 1);
                                                  *(a2 + 1) = v140;
                                                }

                                                *(this + 54) |= 0x10000000u;
                                                if (v15 - v140 >= 2 && *v140 == 240 && v140[1] == 1)
                                                {
                                                  v44 = (v140 + 2);
                                                  *(a2 + 1) = v44;
LABEL_396:
                                                  if (v44 >= v15 || (v141 = *v44, v141 < 0))
                                                  {
                                                    result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 45);
                                                    if (!result)
                                                    {
                                                      return result;
                                                    }

                                                    v142 = *(a2 + 1);
                                                    v15 = *(a2 + 2);
                                                  }

                                                  else
                                                  {
                                                    *(this + 45) = v141;
                                                    v142 = (v44 + 1);
                                                    *(a2 + 1) = v142;
                                                  }

                                                  *(this + 54) |= 0x20000000u;
                                                  if (v15 - v142 >= 2 && *v142 == 248 && v142[1] == 1)
                                                  {
                                                    v38 = (v142 + 2);
                                                    *(a2 + 1) = v38;
LABEL_405:
                                                    if (v38 >= v15 || (v143 = *v38, v143 < 0))
                                                    {
                                                      result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 46);
                                                      if (!result)
                                                      {
                                                        return result;
                                                      }

                                                      v144 = *(a2 + 1);
                                                      v15 = *(a2 + 2);
                                                    }

                                                    else
                                                    {
                                                      *(this + 46) = v143;
                                                      v144 = (v38 + 1);
                                                      *(a2 + 1) = v144;
                                                    }

                                                    *(this + 54) |= 0x40000000u;
                                                    if (v15 - v144 >= 2 && *v144 == 128 && v144[1] == 2)
                                                    {
                                                      v29 = (v144 + 2);
                                                      *(a2 + 1) = v29;
LABEL_414:
                                                      if (v29 >= v15 || (v145 = *v29, v145 < 0))
                                                      {
                                                        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 47);
                                                        if (!result)
                                                        {
                                                          return result;
                                                        }

                                                        v146 = *(a2 + 1);
                                                        v15 = *(a2 + 2);
                                                      }

                                                      else
                                                      {
                                                        *(this + 47) = v145;
                                                        v146 = (v29 + 1);
                                                        *(a2 + 1) = v146;
                                                      }

                                                      *(this + 54) |= 0x80000000;
                                                      if (v15 - v146 >= 2 && *v146 == 136 && v146[1] == 2)
                                                      {
                                                        v39 = (v146 + 2);
                                                        *(a2 + 1) = v39;
LABEL_423:
                                                        if (v39 >= v15 || (v147 = *v39, v147 < 0))
                                                        {
                                                          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 48);
                                                          if (!result)
                                                          {
                                                            return result;
                                                          }

                                                          v148 = *(a2 + 1);
                                                        }

                                                        else
                                                        {
                                                          *(this + 48) = v147;
                                                          v148 = (v39 + 1);
                                                          *(a2 + 1) = v148;
                                                        }

                                                        *(this + 55) |= 1u;
                                                        v12 = *(a2 + 2);
                                                        if (v12 - v148 >= 2 && *v148 == 144 && v148[1] == 2)
                                                        {
                                                          v20 = (v148 + 2);
                                                          *(a2 + 1) = v20;
LABEL_432:
                                                          if (v20 >= v12 || (v149 = *v20, v149 < 0))
                                                          {
                                                            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 49);
                                                            if (!result)
                                                            {
                                                              return result;
                                                            }

                                                            v150 = *(a2 + 1);
                                                            v12 = *(a2 + 2);
                                                          }

                                                          else
                                                          {
                                                            *(this + 49) = v149;
                                                            v150 = (v20 + 1);
                                                            *(a2 + 1) = v150;
                                                          }

                                                          *(this + 55) |= 2u;
                                                          if (v12 - v150 >= 2 && *v150 == 152 && v150[1] == 2)
                                                          {
                                                            v17 = (v150 + 2);
                                                            *(a2 + 1) = v17;
LABEL_441:
                                                            if (v17 >= v12 || (v151 = *v17, v151 < 0))
                                                            {
                                                              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 50);
                                                              if (!result)
                                                              {
                                                                return result;
                                                              }

                                                              v152 = *(a2 + 1);
                                                              v12 = *(a2 + 2);
                                                            }

                                                            else
                                                            {
                                                              *(this + 50) = v151;
                                                              v152 = (v17 + 1);
                                                              *(a2 + 1) = v152;
                                                            }

                                                            *(this + 55) |= 4u;
                                                            if (v12 - v152 >= 2 && *v152 == 160 && v152[1] == 2)
                                                            {
                                                              v13 = (v152 + 2);
                                                              *(a2 + 1) = v13;
LABEL_450:
                                                              if (v13 >= v12 || (v153 = *v13, v153 < 0))
                                                              {
                                                                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 51);
                                                                if (!result)
                                                                {
                                                                  return result;
                                                                }

                                                                v154 = *(a2 + 1);
                                                                v12 = *(a2 + 2);
                                                              }

                                                              else
                                                              {
                                                                *(this + 51) = v153;
                                                                v154 = (v13 + 1);
                                                                *(a2 + 1) = v154;
                                                              }

                                                              *(this + 55) |= 8u;
                                                              if (v12 - v154 >= 2 && *v154 == 168 && v154[1] == 2)
                                                              {
                                                                v14 = (v154 + 2);
                                                                *(a2 + 1) = v14;
LABEL_459:
                                                                if (v14 >= v12 || (v155 = *v14, v155 < 0))
                                                                {
                                                                  result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 52);
                                                                  if (!result)
                                                                  {
                                                                    return result;
                                                                  }

                                                                  v156 = *(a2 + 1);
                                                                  v12 = *(a2 + 2);
                                                                }

                                                                else
                                                                {
                                                                  *(this + 52) = v155;
                                                                  v156 = v14 + 1;
                                                                  *(a2 + 1) = v156;
                                                                }

                                                                *(this + 55) |= 0x10u;
                                                                if (v156 == v12 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
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

        return 0;
      case 0xAu:
        if (v7 == 2)
        {
          goto LABEL_223;
        }

        goto LABEL_90;
      case 0xBu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_90;
        }

        v37 = *(a2 + 1);
        v15 = *(a2 + 2);
        goto LABEL_229;
      case 0xCu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_90;
        }

        v21 = *(a2 + 1);
        v15 = *(a2 + 2);
        goto LABEL_237;
      case 0xDu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_90;
        }

        v23 = *(a2 + 1);
        v15 = *(a2 + 2);
        goto LABEL_245;
      case 0xEu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_90;
        }

        v34 = *(a2 + 1);
        v15 = *(a2 + 2);
        goto LABEL_253;
      case 0xFu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_90;
        }

        v19 = *(a2 + 1);
        v15 = *(a2 + 2);
        goto LABEL_261;
      case 0x10u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_90;
        }

        v27 = *(a2 + 1);
        v15 = *(a2 + 2);
        goto LABEL_270;
      case 0x11u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_90;
        }

        v18 = *(a2 + 1);
        v15 = *(a2 + 2);
        goto LABEL_279;
      case 0x12u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_90;
        }

        v30 = *(a2 + 1);
        v15 = *(a2 + 2);
        goto LABEL_288;
      case 0x13u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_90;
        }

        v36 = *(a2 + 1);
        v15 = *(a2 + 2);
        goto LABEL_297;
      case 0x14u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_90;
        }

        v41 = *(a2 + 1);
        v15 = *(a2 + 2);
        goto LABEL_306;
      case 0x15u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_90;
        }

        v31 = *(a2 + 1);
        v15 = *(a2 + 2);
        goto LABEL_315;
      case 0x16u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_90;
        }

        v33 = *(a2 + 1);
        v15 = *(a2 + 2);
        goto LABEL_324;
      case 0x17u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_90;
        }

        v40 = *(a2 + 1);
        v15 = *(a2 + 2);
        goto LABEL_333;
      case 0x18u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_90;
        }

        v42 = *(a2 + 1);
        v15 = *(a2 + 2);
        goto LABEL_342;
      case 0x19u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_90;
        }

        v25 = *(a2 + 1);
        v15 = *(a2 + 2);
        goto LABEL_351;
      case 0x1Au:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_90;
        }

        v24 = *(a2 + 1);
        v15 = *(a2 + 2);
        goto LABEL_360;
      case 0x1Bu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_90;
        }

        v45 = *(a2 + 1);
        v15 = *(a2 + 2);
        goto LABEL_369;
      case 0x1Cu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_90;
        }

        v16 = *(a2 + 1);
        v15 = *(a2 + 2);
        goto LABEL_378;
      case 0x1Du:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_90;
        }

        v43 = *(a2 + 1);
        v15 = *(a2 + 2);
        goto LABEL_387;
      case 0x1Eu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_90;
        }

        v44 = *(a2 + 1);
        v15 = *(a2 + 2);
        goto LABEL_396;
      case 0x1Fu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_90;
        }

        v38 = *(a2 + 1);
        v15 = *(a2 + 2);
        goto LABEL_405;
      case 0x20u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_90;
        }

        v29 = *(a2 + 1);
        v15 = *(a2 + 2);
        goto LABEL_414;
      case 0x21u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_90;
        }

        v39 = *(a2 + 1);
        v15 = *(a2 + 2);
        goto LABEL_423;
      case 0x22u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_90;
        }

        v20 = *(a2 + 1);
        v12 = *(a2 + 2);
        goto LABEL_432;
      case 0x23u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_90;
        }

        v17 = *(a2 + 1);
        v12 = *(a2 + 2);
        goto LABEL_441;
      case 0x24u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_90;
        }

        v13 = *(a2 + 1);
        v12 = *(a2 + 2);
        goto LABEL_450;
      case 0x25u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_90;
        }

        v14 = *(a2 + 1);
        v12 = *(a2 + 2);
        goto LABEL_459;
      default:
        goto LABEL_90;
    }
  }
}