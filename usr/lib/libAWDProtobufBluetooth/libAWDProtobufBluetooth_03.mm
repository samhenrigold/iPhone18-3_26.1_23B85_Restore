uint64_t awd::metrics::BluetoothLeDevicePaired::ByteSize(awd::metrics::BluetoothLeDevicePaired *this, unint64_t a2)
{
  v3 = *(this + 15);
  if (!v3)
  {
    v5 = 0;
    goto LABEL_52;
  }

  if (v3)
  {
    v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 1)) + 1;
    v3 = *(this + 15);
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

  v6 = *(this + 4);
  if (v6 >= 0x80)
  {
    v7 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v6) + 1;
    v3 = *(this + 15);
  }

  else
  {
    v7 = 2;
  }

  v4 += v7;
LABEL_11:
  v5 = ((v3 >> 1) & 2) + v4;
  if ((v3 & 8) != 0)
  {
    v8 = *(this + 3);
    v9 = *(v8 + 23);
    v10 = v9;
    v11 = *(v8 + 8);
    if ((v9 & 0x80u) == 0)
    {
      v12 = *(v8 + 23);
    }

    else
    {
      v12 = v11;
    }

    if (v12 >= 0x80)
    {
      v13 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v12);
      v9 = *(v8 + 23);
      v11 = *(v8 + 8);
      v3 = *(this + 15);
      v10 = *(v8 + 23);
    }

    else
    {
      v13 = 1;
    }

    if (v10 < 0)
    {
      v9 = v11;
    }

    v5 = (v5 + v13 + v9 + 1);
    if ((v3 & 0x10) == 0)
    {
LABEL_13:
      if ((v3 & 0x20) == 0)
      {
        goto LABEL_14;
      }

      goto LABEL_34;
    }
  }

  else if ((v3 & 0x10) == 0)
  {
    goto LABEL_13;
  }

  v14 = *(this + 4);
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
    v3 = *(this + 15);
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

  v5 = (v5 + v19 + v15 + 1);
  if ((v3 & 0x20) == 0)
  {
LABEL_14:
    if ((v3 & 0x40) == 0)
    {
      goto LABEL_52;
    }

    goto LABEL_43;
  }

LABEL_34:
  v20 = *(this + 5);
  v21 = *(v20 + 23);
  v22 = v21;
  v23 = *(v20 + 8);
  if ((v21 & 0x80u) == 0)
  {
    v24 = *(v20 + 23);
  }

  else
  {
    v24 = v23;
  }

  if (v24 >= 0x80)
  {
    v25 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v24);
    v21 = *(v20 + 23);
    v23 = *(v20 + 8);
    v3 = *(this + 15);
    v22 = *(v20 + 23);
  }

  else
  {
    v25 = 1;
  }

  if (v22 < 0)
  {
    v21 = v23;
  }

  v5 = (v5 + v25 + v21 + 2);
  if ((v3 & 0x40) != 0)
  {
LABEL_43:
    v26 = *(this + 6);
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

    v5 = (v5 + v31 + v27 + 2);
  }

LABEL_52:
  *(this + 14) = v5;
  return v5;
}

void awd::metrics::BluetoothLeDevicePaired::CheckTypeAndMergeFrom(awd::metrics::BluetoothLeDevicePaired *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  {
    awd::metrics::BluetoothLeDevicePaired::CheckTypeAndMergeFrom();
  }

  awd::metrics::BluetoothLeDevicePaired::MergeFrom(this, lpsrc);
}

void awd::metrics::BluetoothLeDevicePaired::CopyFrom(awd::metrics::BluetoothLeDevicePaired *this, const awd::metrics::BluetoothLeDevicePaired *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    awd::metrics::BluetoothLeDevicePaired::MergeFrom(this, a2);
  }
}

uint64_t awd::metrics::BluetoothLeDevicePaired::Swap(uint64_t this, awd::metrics::BluetoothLeDevicePaired *a2)
{
  if (a2 != this)
  {
    v2 = *(this + 8);
    *(this + 8) = *(a2 + 1);
    *(a2 + 1) = v2;
    LODWORD(v2) = *(this + 16);
    *(this + 16) = *(a2 + 4);
    *(a2 + 4) = v2;
    LOBYTE(v2) = *(this + 20);
    *(this + 20) = *(a2 + 20);
    *(a2 + 20) = v2;
    v3 = *(this + 24);
    *(this + 24) = *(a2 + 3);
    *(a2 + 3) = v3;
    v4 = *(this + 32);
    *(this + 32) = *(a2 + 4);
    *(a2 + 4) = v4;
    v5 = *(this + 40);
    *(this + 40) = *(a2 + 5);
    *(a2 + 5) = v5;
    v6 = *(this + 48);
    *(this + 48) = *(a2 + 6);
    *(a2 + 6) = v6;
    LODWORD(v6) = *(this + 60);
    *(this + 60) = *(a2 + 15);
    *(a2 + 15) = v6;
    LODWORD(v6) = *(this + 56);
    *(this + 56) = *(a2 + 14);
    *(a2 + 14) = v6;
  }

  return this;
}

void *awd::metrics::BluetoothLeDeviceUnpaired::SharedCtor(void *this)
{
  this[5] = 0;
  v1 = MEMORY[0x29EDC9758];
  this[1] = 0;
  this[2] = v1;
  this[3] = v1;
  this[4] = v1;
  return this;
}

awd::metrics::BluetoothLeDeviceUnpaired *awd::metrics::BluetoothLeDeviceUnpaired::BluetoothLeDeviceUnpaired(awd::metrics::BluetoothLeDeviceUnpaired *this, const awd::metrics::BluetoothLeDeviceUnpaired *a2)
{
  *this = &unk_2A1D4AD88;
  *(this + 1) = 0;
  v3 = MEMORY[0x29EDC9758];
  *(this + 2) = MEMORY[0x29EDC9758];
  *(this + 3) = v3;
  *(this + 4) = v3;
  *(this + 5) = 0;
  awd::metrics::BluetoothLeDeviceUnpaired::MergeFrom(this, a2);
  return this;
}

void awd::metrics::BluetoothLeDeviceUnpaired::MergeFrom(awd::metrics::BluetoothLeDeviceUnpaired *this, const awd::metrics::BluetoothLeDeviceUnpaired *a2)
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

void sub_296363688(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::metrics::BluetoothLeDeviceUnpaired::~BluetoothLeDeviceUnpaired(awd::metrics::BluetoothLeDeviceUnpaired *this)
{
  *this = &unk_2A1D4AD88;
  awd::metrics::BluetoothLeDeviceUnpaired::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2A1D4AD88;
  awd::metrics::BluetoothLeDeviceUnpaired::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2A1D4AD88;
  awd::metrics::BluetoothLeDeviceUnpaired::SharedDtor(this);
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  JUMPOUT(0x29C259F00);
}

uint64_t awd::metrics::BluetoothLeDeviceUnpaired::SharedDtor(uint64_t this)
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

uint64_t awd::metrics::BluetoothLeDeviceUnpaired::default_instance(awd::metrics::BluetoothLeDeviceUnpaired *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = awd::metrics::BluetoothLeDeviceUnpaired::default_instance_;
  if (!awd::metrics::BluetoothLeDeviceUnpaired::default_instance_)
  {
    awd::metrics::protobuf_AddDesc_Bluetooth_2eproto(0, a2, a3, a4);
    return awd::metrics::BluetoothLeDeviceUnpaired::default_instance_;
  }

  return result;
}

uint64_t awd::metrics::BluetoothLeDeviceUnpaired::Clear(uint64_t this)
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

uint64_t awd::metrics::BluetoothLeDeviceUnpaired::MergePartialFromCodedStream(awd::metrics::BluetoothLeDeviceUnpaired *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
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

          result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
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

uint64_t awd::metrics::BluetoothLeDeviceUnpaired::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
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

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
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

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBytes();
}

uint64_t awd::metrics::BluetoothLeDeviceUnpaired::ByteSize(awd::metrics::BluetoothLeDeviceUnpaired *this, unint64_t a2)
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

void awd::metrics::BluetoothLeDeviceUnpaired::CheckTypeAndMergeFrom(awd::metrics::BluetoothLeDeviceUnpaired *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  {
    awd::metrics::BluetoothLeDeviceUnpaired::CheckTypeAndMergeFrom();
  }

  awd::metrics::BluetoothLeDeviceUnpaired::MergeFrom(this, lpsrc);
}

void awd::metrics::BluetoothLeDeviceUnpaired::CopyFrom(awd::metrics::BluetoothLeDeviceUnpaired *this, const awd::metrics::BluetoothLeDeviceUnpaired *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    awd::metrics::BluetoothLeDeviceUnpaired::MergeFrom(this, a2);
  }
}

uint64_t awd::metrics::BluetoothLeDeviceUnpaired::Swap(uint64_t this, awd::metrics::BluetoothLeDeviceUnpaired *a2)
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

uint64_t awd::metrics::BluetoothHwFailure::SharedCtor(uint64_t this)
{
  *(this + 36) = 0;
  v1 = MEMORY[0x29EDC9758];
  *(this + 8) = 0;
  *(this + 16) = v1;
  *(this + 32) = 0;
  *(this + 24) = v1;
  return this;
}

awd::metrics::BluetoothHwFailure *awd::metrics::BluetoothHwFailure::BluetoothHwFailure(awd::metrics::BluetoothHwFailure *this, const awd::metrics::BluetoothHwFailure *a2)
{
  *this = &unk_2A1D4AE00;
  *(this + 1) = 0;
  v3 = MEMORY[0x29EDC9758];
  *(this + 3) = MEMORY[0x29EDC9758];
  *(this + 4) = 0;
  *(this + 2) = v3;
  *(this + 10) = 0;
  awd::metrics::BluetoothHwFailure::MergeFrom(this, a2);
  return this;
}

void awd::metrics::BluetoothHwFailure::MergeFrom(awd::metrics::BluetoothHwFailure *this, const awd::metrics::BluetoothHwFailure *a2)
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

    v6 = MEMORY[0x29EDC9758];
    if ((v4 & 2) != 0)
    {
      v7 = *(a2 + 2);
      *(this + 10) |= 2u;
      v8 = *(this + 2);
      if (v8 == v6)
      {
        operator new();
      }

      std::string::operator=(v8, v7);
      v4 = *(a2 + 10);
      if ((v4 & 4) == 0)
      {
LABEL_8:
        if ((v4 & 8) == 0)
        {
          return;
        }

        goto LABEL_14;
      }
    }

    else if ((v4 & 4) == 0)
    {
      goto LABEL_8;
    }

    v9 = *(a2 + 8);
    *(this + 10) |= 4u;
    *(this + 8) = v9;
    if ((*(a2 + 10) & 8) == 0)
    {
      return;
    }

LABEL_14:
    v10 = *(a2 + 3);
    *(this + 10) |= 8u;
    v11 = *(this + 3);
    if (v11 == v6)
    {
      operator new();
    }

    std::string::operator=(v11, v10);
  }
}

void sub_29636422C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::metrics::BluetoothHwFailure::~BluetoothHwFailure(awd::metrics::BluetoothHwFailure *this)
{
  *this = &unk_2A1D4AE00;
  awd::metrics::BluetoothHwFailure::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2A1D4AE00;
  awd::metrics::BluetoothHwFailure::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2A1D4AE00;
  awd::metrics::BluetoothHwFailure::SharedDtor(this);
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  JUMPOUT(0x29C259F00);
}

uint64_t awd::metrics::BluetoothHwFailure::SharedDtor(uint64_t this)
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

uint64_t awd::metrics::BluetoothHwFailure::default_instance(awd::metrics::BluetoothHwFailure *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = awd::metrics::BluetoothHwFailure::default_instance_;
  if (!awd::metrics::BluetoothHwFailure::default_instance_)
  {
    awd::metrics::protobuf_AddDesc_Bluetooth_2eproto(0, a2, a3, a4);
    return awd::metrics::BluetoothHwFailure::default_instance_;
  }

  return result;
}

uint64_t awd::metrics::BluetoothHwFailure::Clear(uint64_t this)
{
  v1 = *(this + 40);
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

    *(this + 32) = 0;
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

uint64_t awd::metrics::BluetoothHwFailure::MergePartialFromCodedStream(awd::metrics::BluetoothHwFailure *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
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

        if (v8 == 1)
        {
          if ((TagFallback & 7) != 0)
          {
            goto LABEL_21;
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

          v10 = *(this + 10) | 1;
          *(this + 10) = v10;
          if (v15 < v12 && *v15 == 18)
          {
            *(a2 + 1) = v15 + 1;
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
          v16 = *(a2 + 2);
          if (v18 < v16 && *v18 == 24)
          {
            v17 = v18 + 1;
            *(a2 + 1) = v17;
LABEL_36:
            if (v17 >= v16 || (v19 = *v17, v19 < 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 8);
              if (!result)
              {
                return result;
              }

              v20 = *(a2 + 1);
              v16 = *(a2 + 2);
            }

            else
            {
              *(this + 8) = v19;
              v20 = v17 + 1;
              *(a2 + 1) = v20;
            }

            v11 = *(this + 10) | 4;
            *(this + 10) = v11;
            if (v20 < v16 && *v20 == 34)
            {
              *(a2 + 1) = v20 + 1;
              goto LABEL_44;
            }
          }
        }
      }

      if (v8 == 3)
      {
        break;
      }

      if (v8 != 4 || v9 != 2)
      {
        goto LABEL_21;
      }

      v11 = *(this + 10);
LABEL_44:
      *(this + 10) = v11 | 8;
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

    if ((TagFallback & 7) == 0)
    {
      v17 = *(a2 + 1);
      v16 = *(a2 + 2);
      goto LABEL_36;
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

uint64_t awd::metrics::BluetoothHwFailure::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
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

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
}

uint64_t awd::metrics::BluetoothHwFailure::ByteSize(awd::metrics::BluetoothHwFailure *this, unint64_t a2)
{
  LOBYTE(v3) = *(this + 40);
  if (!v3)
  {
    v4 = 0;
    goto LABEL_32;
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
  if ((v3 & 4) == 0)
  {
    if ((v3 & 8) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_23;
  }

  v11 = *(this + 8);
  if (v11 >= 0x80)
  {
    v12 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v11) + 1;
    v3 = *(this + 10);
  }

  else
  {
    v12 = 2;
  }

  v4 = (v12 + v4);
  if ((v3 & 8) != 0)
  {
LABEL_23:
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

    v4 = (v4 + v18 + v14 + 1);
  }

LABEL_32:
  *(this + 9) = v4;
  return v4;
}

void awd::metrics::BluetoothHwFailure::CheckTypeAndMergeFrom(awd::metrics::BluetoothHwFailure *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  {
    awd::metrics::BluetoothHwFailure::CheckTypeAndMergeFrom();
  }

  awd::metrics::BluetoothHwFailure::MergeFrom(this, lpsrc);
}

void awd::metrics::BluetoothHwFailure::CopyFrom(awd::metrics::BluetoothHwFailure *this, const awd::metrics::BluetoothHwFailure *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    awd::metrics::BluetoothHwFailure::MergeFrom(this, a2);
  }
}

uint64_t awd::metrics::BluetoothHwFailure::Swap(uint64_t this, awd::metrics::BluetoothHwFailure *a2)
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

uint64_t awd::metrics::BluetoothMagnetConnection::SharedCtor(uint64_t this)
{
  *(this + 8) = 0;
  *(this + 16) = 0;
  *(this + 32) = 0;
  *(this + 24) = 0;
  return this;
}

awd::metrics::BluetoothMagnetConnection *awd::metrics::BluetoothMagnetConnection::BluetoothMagnetConnection(awd::metrics::BluetoothMagnetConnection *this, const awd::metrics::BluetoothMagnetConnection *a2)
{
  *this = &unk_2A1D4AE78;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 3) = 0;
  *(this + 8) = 0;
  awd::metrics::BluetoothMagnetConnection::MergeFrom(this, a2);
  return this;
}

void awd::metrics::BluetoothMagnetConnection::MergeFrom(awd::metrics::BluetoothMagnetConnection *this, const awd::metrics::BluetoothMagnetConnection *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v8);
  }

  LOBYTE(v4) = *(a2 + 32);
  if (v4)
  {
    if (*(a2 + 32))
    {
      v6 = *(a2 + 1);
      *(this + 8) |= 1u;
      *(this + 1) = v6;
      v4 = *(a2 + 8);
      if ((v4 & 2) == 0)
      {
LABEL_6:
        if ((v4 & 4) == 0)
        {
          return;
        }

        goto LABEL_7;
      }
    }

    else if ((*(a2 + 32) & 2) == 0)
    {
      goto LABEL_6;
    }

    v7 = *(a2 + 6);
    *(this + 8) |= 2u;
    *(this + 6) = v7;
    if ((*(a2 + 8) & 4) == 0)
    {
      return;
    }

LABEL_7:
    v5 = *(a2 + 2);
    *(this + 8) |= 4u;
    *(this + 2) = v5;
  }
}

void sub_296364C68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::metrics::BluetoothMagnetConnection::~BluetoothMagnetConnection(awd::metrics::BluetoothMagnetConnection *this)
{
  *this = &unk_2A1D4AE78;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2A1D4AE78;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2A1D4AE78;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  JUMPOUT(0x29C259F00);
}

uint64_t awd::metrics::BluetoothMagnetConnection::default_instance(awd::metrics::BluetoothMagnetConnection *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = awd::metrics::BluetoothMagnetConnection::default_instance_;
  if (!awd::metrics::BluetoothMagnetConnection::default_instance_)
  {
    awd::metrics::protobuf_AddDesc_Bluetooth_2eproto(0, a2, a3, a4);
    return awd::metrics::BluetoothMagnetConnection::default_instance_;
  }

  return result;
}

uint64_t awd::metrics::BluetoothMagnetConnection::Clear(uint64_t this)
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

uint64_t awd::metrics::BluetoothMagnetConnection::MergePartialFromCodedStream(awd::metrics::BluetoothMagnetConnection *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
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

      *(this + 8) |= 1u;
      if (v11 < v8 && *v11 == 16)
      {
        v12 = v11 + 1;
        *(a2 + 1) = v12;
LABEL_25:
        if (v12 >= v8 || (v14 = *v12, v14 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 6);
          if (!result)
          {
            return result;
          }

          v15 = *(a2 + 1);
          v8 = *(a2 + 2);
        }

        else
        {
          *(this + 6) = v14;
          v15 = v12 + 1;
          *(a2 + 1) = v15;
        }

        *(this + 8) |= 2u;
        if (v15 < v8 && *v15 == 24)
        {
          v13 = v15 + 1;
          *(a2 + 1) = v13;
LABEL_33:
          if (v13 >= v8 || (v16 = *v13, v16 < 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 2);
            if (!result)
            {
              return result;
            }

            v17 = *(a2 + 1);
            v8 = *(a2 + 2);
          }

          else
          {
            *(this + 2) = v16;
            v17 = v13 + 1;
            *(a2 + 1) = v17;
          }

          *(this + 8) |= 4u;
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

uint64_t awd::metrics::BluetoothMagnetConnection::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
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
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(2, *(v5 + 24), a2, a4);
    if ((*(v5 + 32) & 4) == 0)
    {
      return this;
    }

    goto LABEL_7;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(1, *(this + 8), a2, a4);
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
  v7 = *(v5 + 16);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(3, v7, a2, a4);
}

uint64_t awd::metrics::BluetoothMagnetConnection::ByteSize(awd::metrics::BluetoothMagnetConnection *this, unint64_t a2)
{
  LOBYTE(v3) = *(this + 32);
  if (!v3)
  {
    v4 = 0;
    goto LABEL_13;
  }

  if (*(this + 32))
  {
    v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 1)) + 1;
    v3 = *(this + 8);
    if ((v3 & 2) == 0)
    {
      goto LABEL_11;
    }

LABEL_7:
    v5 = *(this + 6);
    if (v5 >= 0x80)
    {
      v6 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5) + 1;
      v3 = *(this + 8);
    }

    else
    {
      v6 = 2;
    }

    v4 = (v6 + v4);
    goto LABEL_11;
  }

  v4 = 0;
  if ((*(this + 32) & 2) != 0)
  {
    goto LABEL_7;
  }

LABEL_11:
  if ((v3 & 4) != 0)
  {
    v4 = v4 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 2)) + 1;
  }

LABEL_13:
  *(this + 7) = v4;
  return v4;
}

void awd::metrics::BluetoothMagnetConnection::CheckTypeAndMergeFrom(awd::metrics::BluetoothMagnetConnection *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  {
    awd::metrics::BluetoothMagnetConnection::CheckTypeAndMergeFrom();
  }

  awd::metrics::BluetoothMagnetConnection::MergeFrom(this, lpsrc);
}

void awd::metrics::BluetoothMagnetConnection::CopyFrom(awd::metrics::BluetoothMagnetConnection *this, const awd::metrics::BluetoothMagnetConnection *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    awd::metrics::BluetoothMagnetConnection::MergeFrom(this, a2);
  }
}

uint64_t awd::metrics::BluetoothMagnetConnection::Swap(uint64_t this, awd::metrics::BluetoothMagnetConnection *a2)
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

double awd::metrics::BluetoothMagnetDisconnection::SharedCtor(awd::metrics::BluetoothMagnetDisconnection *this)
{
  *(this + 9) = 0;
  result = 0.0;
  *(this + 56) = 0u;
  *(this + 40) = 0u;
  *(this + 24) = 0u;
  *(this + 8) = 0u;
  return result;
}

awd::metrics::BluetoothMagnetDisconnection *awd::metrics::BluetoothMagnetDisconnection::BluetoothMagnetDisconnection(awd::metrics::BluetoothMagnetDisconnection *this, const awd::metrics::BluetoothMagnetDisconnection *a2)
{
  *this = &unk_2A1D4AEF0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 9) = 0;
  awd::metrics::BluetoothMagnetDisconnection::MergeFrom(this, a2);
  return this;
}

void awd::metrics::BluetoothMagnetDisconnection::MergeFrom(awd::metrics::BluetoothMagnetDisconnection *this, const awd::metrics::BluetoothMagnetDisconnection *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v14);
  }

  v4 = *(a2 + 19);
  if (!v4)
  {
    goto LABEL_13;
  }

  if (v4)
  {
    v7 = *(a2 + 1);
    *(this + 19) |= 1u;
    *(this + 1) = v7;
    v4 = *(a2 + 19);
    if ((v4 & 2) == 0)
    {
LABEL_6:
      if ((v4 & 4) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_18;
    }
  }

  else if ((v4 & 2) == 0)
  {
    goto LABEL_6;
  }

  v8 = *(a2 + 8);
  *(this + 19) |= 2u;
  *(this + 8) = v8;
  v4 = *(a2 + 19);
  if ((v4 & 4) == 0)
  {
LABEL_7:
    if ((v4 & 8) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_19;
  }

LABEL_18:
  v9 = *(a2 + 2);
  *(this + 19) |= 4u;
  *(this + 2) = v9;
  v4 = *(a2 + 19);
  if ((v4 & 8) == 0)
  {
LABEL_8:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_20;
  }

LABEL_19:
  v10 = *(a2 + 3);
  *(this + 19) |= 8u;
  *(this + 3) = v10;
  v4 = *(a2 + 19);
  if ((v4 & 0x10) == 0)
  {
LABEL_9:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_10;
    }

LABEL_21:
    v12 = *(a2 + 6);
    *(this + 19) |= 0x20u;
    *(this + 6) = v12;
    v4 = *(a2 + 19);
    if ((v4 & 0x40) == 0)
    {
LABEL_11:
      if ((v4 & 0x80) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_12;
    }

    goto LABEL_22;
  }

LABEL_20:
  v11 = *(a2 + 5);
  *(this + 19) |= 0x10u;
  *(this + 5) = v11;
  v4 = *(a2 + 19);
  if ((v4 & 0x20) != 0)
  {
    goto LABEL_21;
  }

LABEL_10:
  if ((v4 & 0x40) == 0)
  {
    goto LABEL_11;
  }

LABEL_22:
  v13 = *(a2 + 9);
  *(this + 19) |= 0x40u;
  *(this + 9) = v13;
  v4 = *(a2 + 19);
  if ((v4 & 0x80) != 0)
  {
LABEL_12:
    v5 = *(a2 + 7);
    *(this + 19) |= 0x80u;
    *(this + 7) = v5;
    v4 = *(a2 + 19);
  }

LABEL_13:
  if ((v4 & 0x100) != 0)
  {
    v6 = *(a2 + 8);
    *(this + 19) |= 0x100u;
    *(this + 8) = v6;
  }
}

void sub_296365488(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::metrics::BluetoothMagnetDisconnection::~BluetoothMagnetDisconnection(awd::metrics::BluetoothMagnetDisconnection *this)
{
  *this = &unk_2A1D4AEF0;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2A1D4AEF0;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2A1D4AEF0;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  JUMPOUT(0x29C259F00);
}

uint64_t awd::metrics::BluetoothMagnetDisconnection::default_instance(awd::metrics::BluetoothMagnetDisconnection *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = awd::metrics::BluetoothMagnetDisconnection::default_instance_;
  if (!awd::metrics::BluetoothMagnetDisconnection::default_instance_)
  {
    awd::metrics::protobuf_AddDesc_Bluetooth_2eproto(0, a2, a3, a4);
    return awd::metrics::BluetoothMagnetDisconnection::default_instance_;
  }

  return result;
}

uint64_t awd::metrics::BluetoothMagnetDisconnection::Clear(uint64_t this)
{
  v1 = *(this + 76);
  if (v1)
  {
    *(this + 56) = 0;
    *(this + 40) = 0u;
    *(this + 24) = 0u;
    *(this + 8) = 0u;
  }

  if ((v1 & 0xFF00) != 0)
  {
    *(this + 64) = 0;
  }

  *(this + 76) = 0;
  return this;
}

uint64_t awd::metrics::BluetoothMagnetDisconnection::MergePartialFromCodedStream(awd::metrics::BluetoothMagnetDisconnection *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
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
          if (TagFallback >> 3 > 4)
          {
            break;
          }

          if (TagFallback >> 3 > 2)
          {
            if (v7 != 3)
            {
              if (v7 != 4 || (TagFallback & 7) != 0)
              {
                goto LABEL_37;
              }

              v11 = *(a2 + 1);
              v8 = *(a2 + 2);
              goto LABEL_62;
            }

            if ((TagFallback & 7) != 0)
            {
              goto LABEL_37;
            }

            v16 = *(a2 + 1);
            v8 = *(a2 + 2);
LABEL_54:
            if (v16 >= v8 || (v22 = *v16, v22 < 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 2);
              if (!result)
              {
                return result;
              }

              v23 = *(a2 + 1);
              v8 = *(a2 + 2);
            }

            else
            {
              *(this + 2) = v22;
              v23 = v16 + 1;
              *(a2 + 1) = v23;
            }

            *(this + 19) |= 4u;
            if (v23 < v8 && *v23 == 32)
            {
              v11 = v23 + 1;
              *(a2 + 1) = v11;
LABEL_62:
              if (v11 >= v8 || (v24 = *v11, v24 < 0))
              {
                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 3);
                if (!result)
                {
                  return result;
                }

                v25 = *(a2 + 1);
                v8 = *(a2 + 2);
              }

              else
              {
                *(this + 3) = v24;
                v25 = v11 + 1;
                *(a2 + 1) = v25;
              }

              *(this + 19) |= 8u;
              if (v25 < v8 && *v25 == 40)
              {
                v18 = v25 + 1;
                *(a2 + 1) = v18;
                goto LABEL_70;
              }
            }
          }

          else
          {
            if (v7 != 1)
            {
              if (v7 != 2 || (TagFallback & 7) != 0)
              {
                goto LABEL_37;
              }

              v10 = *(a2 + 1);
              v8 = *(a2 + 2);
              goto LABEL_46;
            }

            if ((TagFallback & 7) != 0)
            {
              goto LABEL_37;
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

            *(this + 19) |= 1u;
            if (v15 < v8 && *v15 == 16)
            {
              v10 = v15 + 1;
              *(a2 + 1) = v10;
LABEL_46:
              if (v10 >= v8 || (v20 = *v10, v20 < 0))
              {
                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 8);
                if (!result)
                {
                  return result;
                }

                v21 = *(a2 + 1);
                v8 = *(a2 + 2);
              }

              else
              {
                *(this + 8) = v20;
                v21 = v10 + 1;
                *(a2 + 1) = v21;
              }

              *(this + 19) |= 2u;
              if (v21 < v8 && *v21 == 24)
              {
                v16 = v21 + 1;
                *(a2 + 1) = v16;
                goto LABEL_54;
              }
            }
          }
        }

        if (TagFallback >> 3 > 6)
        {
          break;
        }

        if (v7 != 5)
        {
          if (v7 != 6 || (TagFallback & 7) != 0)
          {
            goto LABEL_37;
          }

          v12 = *(a2 + 1);
          v8 = *(a2 + 2);
          goto LABEL_78;
        }

        if ((TagFallback & 7) != 0)
        {
          goto LABEL_37;
        }

        v18 = *(a2 + 1);
        v8 = *(a2 + 2);
LABEL_70:
        if (v18 >= v8 || (v26 = *v18, v26 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 5);
          if (!result)
          {
            return result;
          }

          v27 = *(a2 + 1);
          v8 = *(a2 + 2);
        }

        else
        {
          *(this + 5) = v26;
          v27 = v18 + 1;
          *(a2 + 1) = v27;
        }

        *(this + 19) |= 0x10u;
        if (v27 < v8 && *v27 == 48)
        {
          v12 = v27 + 1;
          *(a2 + 1) = v12;
LABEL_78:
          if (v12 >= v8 || (v28 = *v12, v28 < 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 6);
            if (!result)
            {
              return result;
            }

            v29 = *(a2 + 1);
            v8 = *(a2 + 2);
          }

          else
          {
            *(this + 6) = v28;
            v29 = v12 + 1;
            *(a2 + 1) = v29;
          }

          *(this + 19) |= 0x20u;
          if (v29 < v8 && *v29 == 56)
          {
            v17 = v29 + 1;
            *(a2 + 1) = v17;
LABEL_86:
            if (v17 >= v8 || (v30 = *v17, v30 < 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 9);
              if (!result)
              {
                return result;
              }

              v31 = *(a2 + 1);
              v8 = *(a2 + 2);
            }

            else
            {
              *(this + 9) = v30;
              v31 = v17 + 1;
              *(a2 + 1) = v31;
            }

            *(this + 19) |= 0x40u;
            if (v31 < v8 && *v31 == 64)
            {
              v19 = v31 + 1;
              *(a2 + 1) = v19;
              goto LABEL_94;
            }
          }
        }
      }

      if (v7 == 7)
      {
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_37;
        }

        v17 = *(a2 + 1);
        v8 = *(a2 + 2);
        goto LABEL_86;
      }

      if (v7 != 8)
      {
        break;
      }

      if ((TagFallback & 7) != 0)
      {
        goto LABEL_37;
      }

      v19 = *(a2 + 1);
      v8 = *(a2 + 2);
LABEL_94:
      if (v19 >= v8 || (v32 = *v19, v32 < 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 7);
        if (!result)
        {
          return result;
        }

        v33 = *(a2 + 1);
        v8 = *(a2 + 2);
      }

      else
      {
        *(this + 7) = v32;
        v33 = v19 + 1;
        *(a2 + 1) = v33;
      }

      *(this + 19) |= 0x80u;
      if (v33 < v8 && *v33 == 72)
      {
        v9 = v33 + 1;
        *(a2 + 1) = v9;
LABEL_102:
        if (v9 >= v8 || (v34 = *v9, v34 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 8);
          if (!result)
          {
            return result;
          }

          v35 = *(a2 + 1);
          v8 = *(a2 + 2);
        }

        else
        {
          *(this + 8) = v34;
          v35 = v9 + 1;
          *(a2 + 1) = v35;
        }

        *(this + 19) |= 0x100u;
        if (v35 == v8 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
        {
          *(a2 + 8) = 0;
          result = 1;
          *(a2 + 36) = 1;
          return result;
        }
      }
    }

    if (v7 == 9 && (TagFallback & 7) == 0)
    {
      v9 = *(a2 + 1);
      v8 = *(a2 + 2);
      goto LABEL_102;
    }

LABEL_37:
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

uint64_t awd::metrics::BluetoothMagnetDisconnection::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
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

      goto LABEL_13;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(2, *(v5 + 32), a2, a4);
  v6 = *(v5 + 76);
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
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(3, *(v5 + 16), a2, a4);
  v6 = *(v5 + 76);
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
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(4, *(v5 + 24), a2, a4);
  v6 = *(v5 + 76);
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
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(5, *(v5 + 40), a2, a4);
  v6 = *(v5 + 76);
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
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(6, *(v5 + 48), a2, a4);
  v6 = *(v5 + 76);
  if ((v6 & 0x40) == 0)
  {
LABEL_8:
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_9;
    }

LABEL_18:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(8, *(v5 + 56), a2, a4);
    if ((*(v5 + 76) & 0x100) == 0)
    {
      return this;
    }

    goto LABEL_19;
  }

LABEL_17:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(7, *(v5 + 36), a2, a4);
  v6 = *(v5 + 76);
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
  v7 = *(v5 + 64);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(9, v7, a2, a4);
}

uint64_t awd::metrics::BluetoothMagnetDisconnection::ByteSize(awd::metrics::BluetoothMagnetDisconnection *this, unint64_t a2)
{
  v3 = *(this + 19);
  if (!v3)
  {
    v4 = 0;
    if ((v3 & 0x100) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_19;
  }

  if (v3)
  {
    v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 1)) + 1;
    v3 = *(this + 19);
    if ((v3 & 2) == 0)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v4 = 0;
    if ((v3 & 2) == 0)
    {
      goto LABEL_12;
    }
  }

  v5 = *(this + 8);
  if (v5 >= 0x80)
  {
    v6 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5) + 1;
    v3 = *(this + 19);
  }

  else
  {
    v6 = 2;
  }

  v4 = (v6 + v4);
LABEL_12:
  if ((v3 & 4) != 0)
  {
    v4 = v4 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 2)) + 1;
    v3 = *(this + 19);
    if ((v3 & 8) == 0)
    {
LABEL_14:
      if ((v3 & 0x10) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_23;
    }
  }

  else if ((v3 & 8) == 0)
  {
    goto LABEL_14;
  }

  v4 = v4 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 3)) + 1;
  v3 = *(this + 19);
  if ((v3 & 0x10) == 0)
  {
LABEL_15:
    if ((v3 & 0x20) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_24;
  }

LABEL_23:
  v4 = v4 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 5)) + 1;
  v3 = *(this + 19);
  if ((v3 & 0x20) == 0)
  {
LABEL_16:
    if ((v3 & 0x40) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_25;
  }

LABEL_24:
  v4 = v4 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 6)) + 1;
  v3 = *(this + 19);
  if ((v3 & 0x40) == 0)
  {
LABEL_17:
    if ((v3 & 0x80) == 0)
    {
      goto LABEL_18;
    }

LABEL_29:
    v4 = v4 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 7)) + 1;
    if ((*(this + 19) & 0x100) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_19;
  }

LABEL_25:
  v8 = *(this + 9);
  if (v8 >= 0x80)
  {
    v9 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v8) + 1;
    v3 = *(this + 19);
  }

  else
  {
    v9 = 2;
  }

  v4 = (v9 + v4);
  if ((v3 & 0x80) != 0)
  {
    goto LABEL_29;
  }

LABEL_18:
  if ((v3 & 0x100) != 0)
  {
LABEL_19:
    v4 = v4 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 8)) + 1;
  }

LABEL_20:
  *(this + 18) = v4;
  return v4;
}

void awd::metrics::BluetoothMagnetDisconnection::CheckTypeAndMergeFrom(awd::metrics::BluetoothMagnetDisconnection *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  {
    awd::metrics::BluetoothMagnetDisconnection::CheckTypeAndMergeFrom();
  }

  awd::metrics::BluetoothMagnetDisconnection::MergeFrom(this, lpsrc);
}

void awd::metrics::BluetoothMagnetDisconnection::CopyFrom(awd::metrics::BluetoothMagnetDisconnection *this, const awd::metrics::BluetoothMagnetDisconnection *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    awd::metrics::BluetoothMagnetDisconnection::MergeFrom(this, a2);
  }
}

uint64_t awd::metrics::BluetoothMagnetDisconnection::Swap(uint64_t this, awd::metrics::BluetoothMagnetDisconnection *a2)
{
  if (a2 != this)
  {
    v2 = *(this + 8);
    *(this + 8) = *(a2 + 1);
    *(a2 + 1) = v2;
    LODWORD(v2) = *(this + 32);
    *(this + 32) = *(a2 + 8);
    *(a2 + 8) = v2;
    v3 = *(this + 16);
    *(this + 16) = *(a2 + 2);
    *(a2 + 2) = v3;
    v4 = *(this + 24);
    *(this + 24) = *(a2 + 3);
    *(a2 + 3) = v4;
    v5 = *(this + 40);
    *(this + 40) = *(a2 + 5);
    *(a2 + 5) = v5;
    v6 = *(this + 48);
    *(this + 48) = *(a2 + 6);
    *(a2 + 6) = v6;
    LODWORD(v6) = *(this + 36);
    *(this + 36) = *(a2 + 9);
    *(a2 + 9) = v6;
    v7 = *(this + 56);
    *(this + 56) = *(a2 + 7);
    *(a2 + 7) = v7;
    v8 = *(this + 64);
    *(this + 64) = *(a2 + 8);
    *(a2 + 8) = v8;
    LODWORD(v8) = *(this + 76);
    *(this + 76) = *(a2 + 19);
    *(a2 + 19) = v8;
    LODWORD(v8) = *(this + 72);
    *(this + 72) = *(a2 + 18);
    *(a2 + 18) = v8;
  }

  return this;
}

double awd::metrics::BluetoothMagnetUpgrade::SharedCtor(awd::metrics::BluetoothMagnetUpgrade *this)
{
  *(this + 9) = 0;
  result = 0.0;
  *(this + 56) = 0u;
  *(this + 40) = 0u;
  *(this + 24) = 0u;
  *(this + 8) = 0u;
  return result;
}

awd::metrics::BluetoothMagnetUpgrade *awd::metrics::BluetoothMagnetUpgrade::BluetoothMagnetUpgrade(awd::metrics::BluetoothMagnetUpgrade *this, const awd::metrics::BluetoothMagnetUpgrade *a2)
{
  *this = &unk_2A1D4AF68;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 9) = 0;
  awd::metrics::BluetoothMagnetUpgrade::MergeFrom(this, a2);
  return this;
}

void awd::metrics::BluetoothMagnetUpgrade::MergeFrom(awd::metrics::BluetoothMagnetUpgrade *this, const awd::metrics::BluetoothMagnetUpgrade *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v14);
  }

  v4 = *(a2 + 19);
  if (!v4)
  {
    goto LABEL_13;
  }

  if (v4)
  {
    v7 = *(a2 + 1);
    *(this + 19) |= 1u;
    *(this + 1) = v7;
    v4 = *(a2 + 19);
    if ((v4 & 2) == 0)
    {
LABEL_6:
      if ((v4 & 4) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_18;
    }
  }

  else if ((v4 & 2) == 0)
  {
    goto LABEL_6;
  }

  v8 = *(a2 + 8);
  *(this + 19) |= 2u;
  *(this + 8) = v8;
  v4 = *(a2 + 19);
  if ((v4 & 4) == 0)
  {
LABEL_7:
    if ((v4 & 8) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_19;
  }

LABEL_18:
  v9 = *(a2 + 2);
  *(this + 19) |= 4u;
  *(this + 2) = v9;
  v4 = *(a2 + 19);
  if ((v4 & 8) == 0)
  {
LABEL_8:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_20;
  }

LABEL_19:
  v10 = *(a2 + 3);
  *(this + 19) |= 8u;
  *(this + 3) = v10;
  v4 = *(a2 + 19);
  if ((v4 & 0x10) == 0)
  {
LABEL_9:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_10;
    }

LABEL_21:
    v12 = *(a2 + 6);
    *(this + 19) |= 0x20u;
    *(this + 6) = v12;
    v4 = *(a2 + 19);
    if ((v4 & 0x40) == 0)
    {
LABEL_11:
      if ((v4 & 0x80) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_12;
    }

    goto LABEL_22;
  }

LABEL_20:
  v11 = *(a2 + 5);
  *(this + 19) |= 0x10u;
  *(this + 5) = v11;
  v4 = *(a2 + 19);
  if ((v4 & 0x20) != 0)
  {
    goto LABEL_21;
  }

LABEL_10:
  if ((v4 & 0x40) == 0)
  {
    goto LABEL_11;
  }

LABEL_22:
  v13 = *(a2 + 9);
  *(this + 19) |= 0x40u;
  *(this + 9) = v13;
  v4 = *(a2 + 19);
  if ((v4 & 0x80) != 0)
  {
LABEL_12:
    v5 = *(a2 + 7);
    *(this + 19) |= 0x80u;
    *(this + 7) = v5;
    v4 = *(a2 + 19);
  }

LABEL_13:
  if ((v4 & 0x100) != 0)
  {
    v6 = *(a2 + 8);
    *(this + 19) |= 0x100u;
    *(this + 8) = v6;
  }
}

void sub_296366158(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::metrics::BluetoothMagnetUpgrade::~BluetoothMagnetUpgrade(awd::metrics::BluetoothMagnetUpgrade *this)
{
  *this = &unk_2A1D4AF68;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2A1D4AF68;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2A1D4AF68;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  JUMPOUT(0x29C259F00);
}

uint64_t awd::metrics::BluetoothMagnetUpgrade::default_instance(awd::metrics::BluetoothMagnetUpgrade *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = awd::metrics::BluetoothMagnetUpgrade::default_instance_;
  if (!awd::metrics::BluetoothMagnetUpgrade::default_instance_)
  {
    awd::metrics::protobuf_AddDesc_Bluetooth_2eproto(0, a2, a3, a4);
    return awd::metrics::BluetoothMagnetUpgrade::default_instance_;
  }

  return result;
}

uint64_t awd::metrics::BluetoothMagnetUpgrade::Clear(uint64_t this)
{
  v1 = *(this + 76);
  if (v1)
  {
    *(this + 56) = 0;
    *(this + 40) = 0u;
    *(this + 24) = 0u;
    *(this + 8) = 0u;
  }

  if ((v1 & 0xFF00) != 0)
  {
    *(this + 64) = 0;
  }

  *(this + 76) = 0;
  return this;
}

uint64_t awd::metrics::BluetoothMagnetUpgrade::MergePartialFromCodedStream(awd::metrics::BluetoothMagnetUpgrade *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
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
          if (TagFallback >> 3 > 4)
          {
            break;
          }

          if (TagFallback >> 3 > 2)
          {
            if (v7 != 3)
            {
              if (v7 != 4 || (TagFallback & 7) != 0)
              {
                goto LABEL_37;
              }

              v11 = *(a2 + 1);
              v8 = *(a2 + 2);
              goto LABEL_62;
            }

            if ((TagFallback & 7) != 0)
            {
              goto LABEL_37;
            }

            v16 = *(a2 + 1);
            v8 = *(a2 + 2);
LABEL_54:
            if (v16 >= v8 || (v22 = *v16, v22 < 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 2);
              if (!result)
              {
                return result;
              }

              v23 = *(a2 + 1);
              v8 = *(a2 + 2);
            }

            else
            {
              *(this + 2) = v22;
              v23 = v16 + 1;
              *(a2 + 1) = v23;
            }

            *(this + 19) |= 4u;
            if (v23 < v8 && *v23 == 32)
            {
              v11 = v23 + 1;
              *(a2 + 1) = v11;
LABEL_62:
              if (v11 >= v8 || (v24 = *v11, v24 < 0))
              {
                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 3);
                if (!result)
                {
                  return result;
                }

                v25 = *(a2 + 1);
                v8 = *(a2 + 2);
              }

              else
              {
                *(this + 3) = v24;
                v25 = v11 + 1;
                *(a2 + 1) = v25;
              }

              *(this + 19) |= 8u;
              if (v25 < v8 && *v25 == 40)
              {
                v18 = v25 + 1;
                *(a2 + 1) = v18;
                goto LABEL_70;
              }
            }
          }

          else
          {
            if (v7 != 1)
            {
              if (v7 != 2 || (TagFallback & 7) != 0)
              {
                goto LABEL_37;
              }

              v10 = *(a2 + 1);
              v8 = *(a2 + 2);
              goto LABEL_46;
            }

            if ((TagFallback & 7) != 0)
            {
              goto LABEL_37;
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

            *(this + 19) |= 1u;
            if (v15 < v8 && *v15 == 16)
            {
              v10 = v15 + 1;
              *(a2 + 1) = v10;
LABEL_46:
              if (v10 >= v8 || (v20 = *v10, v20 < 0))
              {
                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 8);
                if (!result)
                {
                  return result;
                }

                v21 = *(a2 + 1);
                v8 = *(a2 + 2);
              }

              else
              {
                *(this + 8) = v20;
                v21 = v10 + 1;
                *(a2 + 1) = v21;
              }

              *(this + 19) |= 2u;
              if (v21 < v8 && *v21 == 24)
              {
                v16 = v21 + 1;
                *(a2 + 1) = v16;
                goto LABEL_54;
              }
            }
          }
        }

        if (TagFallback >> 3 > 6)
        {
          break;
        }

        if (v7 != 5)
        {
          if (v7 != 6 || (TagFallback & 7) != 0)
          {
            goto LABEL_37;
          }

          v12 = *(a2 + 1);
          v8 = *(a2 + 2);
          goto LABEL_78;
        }

        if ((TagFallback & 7) != 0)
        {
          goto LABEL_37;
        }

        v18 = *(a2 + 1);
        v8 = *(a2 + 2);
LABEL_70:
        if (v18 >= v8 || (v26 = *v18, v26 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 5);
          if (!result)
          {
            return result;
          }

          v27 = *(a2 + 1);
          v8 = *(a2 + 2);
        }

        else
        {
          *(this + 5) = v26;
          v27 = v18 + 1;
          *(a2 + 1) = v27;
        }

        *(this + 19) |= 0x10u;
        if (v27 < v8 && *v27 == 48)
        {
          v12 = v27 + 1;
          *(a2 + 1) = v12;
LABEL_78:
          if (v12 >= v8 || (v28 = *v12, v28 < 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 6);
            if (!result)
            {
              return result;
            }

            v29 = *(a2 + 1);
            v8 = *(a2 + 2);
          }

          else
          {
            *(this + 6) = v28;
            v29 = v12 + 1;
            *(a2 + 1) = v29;
          }

          *(this + 19) |= 0x20u;
          if (v29 < v8 && *v29 == 56)
          {
            v17 = v29 + 1;
            *(a2 + 1) = v17;
LABEL_86:
            if (v17 >= v8 || (v30 = *v17, v30 < 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 9);
              if (!result)
              {
                return result;
              }

              v31 = *(a2 + 1);
              v8 = *(a2 + 2);
            }

            else
            {
              *(this + 9) = v30;
              v31 = v17 + 1;
              *(a2 + 1) = v31;
            }

            *(this + 19) |= 0x40u;
            if (v31 < v8 && *v31 == 64)
            {
              v19 = v31 + 1;
              *(a2 + 1) = v19;
              goto LABEL_94;
            }
          }
        }
      }

      if (v7 == 7)
      {
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_37;
        }

        v17 = *(a2 + 1);
        v8 = *(a2 + 2);
        goto LABEL_86;
      }

      if (v7 != 8)
      {
        break;
      }

      if ((TagFallback & 7) != 0)
      {
        goto LABEL_37;
      }

      v19 = *(a2 + 1);
      v8 = *(a2 + 2);
LABEL_94:
      if (v19 >= v8 || (v32 = *v19, v32 < 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 7);
        if (!result)
        {
          return result;
        }

        v33 = *(a2 + 1);
        v8 = *(a2 + 2);
      }

      else
      {
        *(this + 7) = v32;
        v33 = v19 + 1;
        *(a2 + 1) = v33;
      }

      *(this + 19) |= 0x80u;
      if (v33 < v8 && *v33 == 72)
      {
        v9 = v33 + 1;
        *(a2 + 1) = v9;
LABEL_102:
        if (v9 >= v8 || (v34 = *v9, v34 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 8);
          if (!result)
          {
            return result;
          }

          v35 = *(a2 + 1);
          v8 = *(a2 + 2);
        }

        else
        {
          *(this + 8) = v34;
          v35 = v9 + 1;
          *(a2 + 1) = v35;
        }

        *(this + 19) |= 0x100u;
        if (v35 == v8 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
        {
          *(a2 + 8) = 0;
          result = 1;
          *(a2 + 36) = 1;
          return result;
        }
      }
    }

    if (v7 == 9 && (TagFallback & 7) == 0)
    {
      v9 = *(a2 + 1);
      v8 = *(a2 + 2);
      goto LABEL_102;
    }

LABEL_37:
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

uint64_t awd::metrics::BluetoothMagnetUpgrade::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
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

      goto LABEL_13;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(2, *(v5 + 32), a2, a4);
  v6 = *(v5 + 76);
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
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(3, *(v5 + 16), a2, a4);
  v6 = *(v5 + 76);
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
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(4, *(v5 + 24), a2, a4);
  v6 = *(v5 + 76);
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
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(5, *(v5 + 40), a2, a4);
  v6 = *(v5 + 76);
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
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(6, *(v5 + 48), a2, a4);
  v6 = *(v5 + 76);
  if ((v6 & 0x40) == 0)
  {
LABEL_8:
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_9;
    }

LABEL_18:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(8, *(v5 + 56), a2, a4);
    if ((*(v5 + 76) & 0x100) == 0)
    {
      return this;
    }

    goto LABEL_19;
  }

LABEL_17:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(7, *(v5 + 36), a2, a4);
  v6 = *(v5 + 76);
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
  v7 = *(v5 + 64);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(9, v7, a2, a4);
}

uint64_t awd::metrics::BluetoothMagnetUpgrade::ByteSize(awd::metrics::BluetoothMagnetUpgrade *this, unint64_t a2)
{
  v3 = *(this + 19);
  if (!v3)
  {
    v4 = 0;
    if ((v3 & 0x100) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_19;
  }

  if (v3)
  {
    v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 1)) + 1;
    v3 = *(this + 19);
    if ((v3 & 2) == 0)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v4 = 0;
    if ((v3 & 2) == 0)
    {
      goto LABEL_12;
    }
  }

  v5 = *(this + 8);
  if (v5 >= 0x80)
  {
    v6 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5) + 1;
    v3 = *(this + 19);
  }

  else
  {
    v6 = 2;
  }

  v4 = (v6 + v4);
LABEL_12:
  if ((v3 & 4) != 0)
  {
    v4 = v4 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 2)) + 1;
    v3 = *(this + 19);
    if ((v3 & 8) == 0)
    {
LABEL_14:
      if ((v3 & 0x10) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_23;
    }
  }

  else if ((v3 & 8) == 0)
  {
    goto LABEL_14;
  }

  v4 = v4 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 3)) + 1;
  v3 = *(this + 19);
  if ((v3 & 0x10) == 0)
  {
LABEL_15:
    if ((v3 & 0x20) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_24;
  }

LABEL_23:
  v4 = v4 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 5)) + 1;
  v3 = *(this + 19);
  if ((v3 & 0x20) == 0)
  {
LABEL_16:
    if ((v3 & 0x40) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_25;
  }

LABEL_24:
  v4 = v4 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 6)) + 1;
  v3 = *(this + 19);
  if ((v3 & 0x40) == 0)
  {
LABEL_17:
    if ((v3 & 0x80) == 0)
    {
      goto LABEL_18;
    }

LABEL_29:
    v4 = v4 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 7)) + 1;
    if ((*(this + 19) & 0x100) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_19;
  }

LABEL_25:
  v8 = *(this + 9);
  if (v8 >= 0x80)
  {
    v9 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v8) + 1;
    v3 = *(this + 19);
  }

  else
  {
    v9 = 2;
  }

  v4 = (v9 + v4);
  if ((v3 & 0x80) != 0)
  {
    goto LABEL_29;
  }

LABEL_18:
  if ((v3 & 0x100) != 0)
  {
LABEL_19:
    v4 = v4 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 8)) + 1;
  }

LABEL_20:
  *(this + 18) = v4;
  return v4;
}

void awd::metrics::BluetoothMagnetUpgrade::CheckTypeAndMergeFrom(awd::metrics::BluetoothMagnetUpgrade *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  {
    awd::metrics::BluetoothMagnetUpgrade::CheckTypeAndMergeFrom();
  }

  awd::metrics::BluetoothMagnetUpgrade::MergeFrom(this, lpsrc);
}

void awd::metrics::BluetoothMagnetUpgrade::CopyFrom(awd::metrics::BluetoothMagnetUpgrade *this, const awd::metrics::BluetoothMagnetUpgrade *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    awd::metrics::BluetoothMagnetUpgrade::MergeFrom(this, a2);
  }
}

uint64_t awd::metrics::BluetoothMagnetUpgrade::Swap(uint64_t this, awd::metrics::BluetoothMagnetUpgrade *a2)
{
  if (a2 != this)
  {
    v2 = *(this + 8);
    *(this + 8) = *(a2 + 1);
    *(a2 + 1) = v2;
    LODWORD(v2) = *(this + 32);
    *(this + 32) = *(a2 + 8);
    *(a2 + 8) = v2;
    v3 = *(this + 16);
    *(this + 16) = *(a2 + 2);
    *(a2 + 2) = v3;
    v4 = *(this + 24);
    *(this + 24) = *(a2 + 3);
    *(a2 + 3) = v4;
    v5 = *(this + 40);
    *(this + 40) = *(a2 + 5);
    *(a2 + 5) = v5;
    v6 = *(this + 48);
    *(this + 48) = *(a2 + 6);
    *(a2 + 6) = v6;
    LODWORD(v6) = *(this + 36);
    *(this + 36) = *(a2 + 9);
    *(a2 + 9) = v6;
    v7 = *(this + 56);
    *(this + 56) = *(a2 + 7);
    *(a2 + 7) = v7;
    v8 = *(this + 64);
    *(this + 64) = *(a2 + 8);
    *(a2 + 8) = v8;
    LODWORD(v8) = *(this + 76);
    *(this + 76) = *(a2 + 19);
    *(a2 + 19) = v8;
    LODWORD(v8) = *(this + 72);
    *(this + 72) = *(a2 + 18);
    *(a2 + 18) = v8;
  }

  return this;
}

uint64_t awd::metrics::BluetoothMagnetGenericError::SharedCtor(uint64_t this)
{
  *(this + 8) = 0;
  *(this + 16) = 0;
  *(this + 32) = 0;
  *(this + 24) = 0;
  return this;
}

awd::metrics::BluetoothMagnetGenericError *awd::metrics::BluetoothMagnetGenericError::BluetoothMagnetGenericError(awd::metrics::BluetoothMagnetGenericError *this, const awd::metrics::BluetoothMagnetGenericError *a2)
{
  *this = &unk_2A1D4AFE0;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 3) = 0;
  *(this + 8) = 0;
  awd::metrics::BluetoothMagnetGenericError::MergeFrom(this, a2);
  return this;
}

void awd::metrics::BluetoothMagnetGenericError::MergeFrom(awd::metrics::BluetoothMagnetGenericError *this, const awd::metrics::BluetoothMagnetGenericError *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v9);
  }

  LOBYTE(v4) = *(a2 + 32);
  if (v4)
  {
    if (*(a2 + 32))
    {
      v6 = *(a2 + 1);
      *(this + 8) |= 1u;
      *(this + 1) = v6;
      v4 = *(a2 + 8);
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

    else if ((*(a2 + 32) & 2) == 0)
    {
      goto LABEL_6;
    }

    v7 = *(a2 + 4);
    *(this + 8) |= 2u;
    *(this + 4) = v7;
    v4 = *(a2 + 8);
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
    v8 = *(a2 + 5);
    *(this + 8) |= 4u;
    *(this + 5) = v8;
    if ((*(a2 + 8) & 8) == 0)
    {
      return;
    }

LABEL_8:
    v5 = *(a2 + 6);
    *(this + 8) |= 8u;
    *(this + 6) = v5;
  }
}

void sub_296366D5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::metrics::BluetoothMagnetGenericError::~BluetoothMagnetGenericError(awd::metrics::BluetoothMagnetGenericError *this)
{
  *this = &unk_2A1D4AFE0;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2A1D4AFE0;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2A1D4AFE0;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  JUMPOUT(0x29C259F00);
}

uint64_t awd::metrics::BluetoothMagnetGenericError::default_instance(awd::metrics::BluetoothMagnetGenericError *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = awd::metrics::BluetoothMagnetGenericError::default_instance_;
  if (!awd::metrics::BluetoothMagnetGenericError::default_instance_)
  {
    awd::metrics::protobuf_AddDesc_Bluetooth_2eproto(0, a2, a3, a4);
    return awd::metrics::BluetoothMagnetGenericError::default_instance_;
  }

  return result;
}

uint64_t awd::metrics::BluetoothMagnetGenericError::Clear(uint64_t this)
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

uint64_t awd::metrics::BluetoothMagnetGenericError::MergePartialFromCodedStream(awd::metrics::BluetoothMagnetGenericError *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
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

      v11 = *(a2 + 1);
      v8 = *(a2 + 2);
      if (v11 >= v8 || (v12 = *v11, v12 < 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 1);
        if (!result)
        {
          return result;
        }

        v13 = *(a2 + 1);
        v8 = *(a2 + 2);
      }

      else
      {
        *(this + 1) = v12;
        v13 = v11 + 1;
        *(a2 + 1) = v13;
      }

      *(this + 8) |= 1u;
      if (v13 < v8 && *v13 == 16)
      {
        v9 = v13 + 1;
        *(a2 + 1) = v9;
LABEL_29:
        if (v9 >= v8 || (v15 = *v9, v15 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 4);
          if (!result)
          {
            return result;
          }

          v16 = *(a2 + 1);
          v8 = *(a2 + 2);
        }

        else
        {
          *(this + 4) = v15;
          v16 = v9 + 1;
          *(a2 + 1) = v16;
        }

        *(this + 8) |= 2u;
        if (v16 < v8 && *v16 == 24)
        {
          v14 = v16 + 1;
          *(a2 + 1) = v14;
LABEL_37:
          if (v14 >= v8 || (v17 = *v14, v17 < 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 5);
            if (!result)
            {
              return result;
            }

            v18 = *(a2 + 1);
            v8 = *(a2 + 2);
          }

          else
          {
            *(this + 5) = v17;
            v18 = v14 + 1;
            *(a2 + 1) = v18;
          }

          *(this + 8) |= 4u;
          if (v18 < v8 && *v18 == 32)
          {
            v10 = v18 + 1;
            *(a2 + 1) = v10;
LABEL_45:
            if (v10 >= v8 || (v19 = *v10, v19 < 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 6);
              if (!result)
              {
                return result;
              }

              v20 = *(a2 + 1);
              v8 = *(a2 + 2);
            }

            else
            {
              *(this + 6) = v19;
              v20 = v10 + 1;
              *(a2 + 1) = v20;
            }

            *(this + 8) |= 8u;
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

uint64_t awd::metrics::BluetoothMagnetGenericError::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
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
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(3, v5[5], a2, a4);
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

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(2, v5[4], a2, a4);
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

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(4, v7, a2, a4);
}

uint64_t awd::metrics::BluetoothMagnetGenericError::ByteSize(awd::metrics::BluetoothMagnetGenericError *this, unint64_t a2)
{
  LOBYTE(v3) = *(this + 32);
  if (!v3)
  {
    v4 = 0;
    goto LABEL_22;
  }

  if (*(this + 32))
  {
    v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 1)) + 1;
    v3 = *(this + 8);
    if ((v3 & 2) == 0)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v4 = 0;
    if ((*(this + 32) & 2) == 0)
    {
      goto LABEL_11;
    }
  }

  v5 = *(this + 4);
  if (v5 >= 0x80)
  {
    v6 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5) + 1;
    v3 = *(this + 8);
  }

  else
  {
    v6 = 2;
  }

  v4 = (v6 + v4);
LABEL_11:
  if ((v3 & 4) == 0)
  {
    if ((v3 & 8) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_18;
  }

  v7 = *(this + 5);
  if (v7 >= 0x80)
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
LABEL_18:
    v9 = *(this + 6);
    if (v9 >= 0x80)
    {
      v10 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v9) + 1;
    }

    else
    {
      v10 = 2;
    }

    v4 = (v10 + v4);
  }

LABEL_22:
  *(this + 7) = v4;
  return v4;
}

void awd::metrics::BluetoothMagnetGenericError::CheckTypeAndMergeFrom(awd::metrics::BluetoothMagnetGenericError *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  {
    awd::metrics::BluetoothMagnetGenericError::CheckTypeAndMergeFrom();
  }

  awd::metrics::BluetoothMagnetGenericError::MergeFrom(this, lpsrc);
}

void awd::metrics::BluetoothMagnetGenericError::CopyFrom(awd::metrics::BluetoothMagnetGenericError *this, const awd::metrics::BluetoothMagnetGenericError *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    awd::metrics::BluetoothMagnetGenericError::MergeFrom(this, a2);
  }
}

uint64_t awd::metrics::BluetoothMagnetGenericError::Swap(uint64_t this, awd::metrics::BluetoothMagnetGenericError *a2)
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

double awd::metrics::BluetoothMagnetState::SharedCtor(awd::metrics::BluetoothMagnetState *this)
{
  *(this + 1) = 0;
  *(this + 4) = 0;
  *(this + 20) = 0;
  result = 0.0;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 68) = 0u;
  return result;
}

awd::metrics::BluetoothMagnetState *awd::metrics::BluetoothMagnetState::BluetoothMagnetState(awd::metrics::BluetoothMagnetState *this, const awd::metrics::BluetoothMagnetState *a2)
{
  *this = &unk_2A1D4B058;
  *(this + 1) = 0;
  *(this + 4) = 0;
  *(this + 20) = 0;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 68) = 0u;
  awd::metrics::BluetoothMagnetState::MergeFrom(this, a2);
  return this;
}

void awd::metrics::BluetoothMagnetState::MergeFrom(awd::metrics::BluetoothMagnetState *this, const awd::metrics::BluetoothMagnetState *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v15);
  }

  v4 = *(a2 + 20);
  if (!v4)
  {
    goto LABEL_13;
  }

  if (v4)
  {
    v8 = *(a2 + 1);
    *(this + 20) |= 1u;
    *(this + 1) = v8;
    v4 = *(a2 + 20);
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

  v9 = *(a2 + 4);
  *(this + 20) |= 2u;
  *(this + 4) = v9;
  v4 = *(a2 + 20);
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
  v10 = *(a2 + 20);
  *(this + 20) |= 4u;
  *(this + 20) = v10;
  v4 = *(a2 + 20);
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
  v11 = *(a2 + 3);
  *(this + 20) |= 8u;
  *(this + 3) = v11;
  v4 = *(a2 + 20);
  if ((v4 & 0x10) == 0)
  {
LABEL_9:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_10;
    }

LABEL_24:
    v13 = *(a2 + 5);
    *(this + 20) |= 0x20u;
    *(this + 5) = v13;
    v4 = *(a2 + 20);
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
  v12 = *(a2 + 4);
  *(this + 20) |= 0x10u;
  *(this + 4) = v12;
  v4 = *(a2 + 20);
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
  v14 = *(a2 + 18);
  *(this + 20) |= 0x40u;
  *(this + 18) = v14;
  v4 = *(a2 + 20);
  if ((v4 & 0x80) != 0)
  {
LABEL_12:
    v5 = *(a2 + 6);
    *(this + 20) |= 0x80u;
    *(this + 6) = v5;
    v4 = *(a2 + 20);
  }

LABEL_13:
  if ((v4 & 0xFF00) != 0)
  {
    if ((v4 & 0x100) != 0)
    {
      v6 = *(a2 + 7);
      *(this + 20) |= 0x100u;
      *(this + 7) = v6;
      v4 = *(a2 + 20);
    }

    if ((v4 & 0x200) != 0)
    {
      v7 = *(a2 + 8);
      *(this + 20) |= 0x200u;
      *(this + 8) = v7;
    }
  }
}

void sub_296367694(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::metrics::BluetoothMagnetState::~BluetoothMagnetState(awd::metrics::BluetoothMagnetState *this)
{
  *this = &unk_2A1D4B058;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2A1D4B058;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2A1D4B058;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  JUMPOUT(0x29C259F00);
}

uint64_t awd::metrics::BluetoothMagnetState::default_instance(awd::metrics::BluetoothMagnetState *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = awd::metrics::BluetoothMagnetState::default_instance_;
  if (!awd::metrics::BluetoothMagnetState::default_instance_)
  {
    awd::metrics::protobuf_AddDesc_Bluetooth_2eproto(0, a2, a3, a4);
    return awd::metrics::BluetoothMagnetState::default_instance_;
  }

  return result;
}

uint64_t awd::metrics::BluetoothMagnetState::Clear(uint64_t this)
{
  v1 = *(this + 80);
  if (v1)
  {
    *(this + 8) = 0;
    *(this + 16) = 0;
    *(this + 20) = 0;
    *(this + 72) = 0;
    *(this + 24) = 0u;
    *(this + 40) = 0u;
  }

  if ((v1 & 0xFF00) != 0)
  {
    *(this + 56) = 0;
    *(this + 64) = 0;
  }

  *(this + 80) = 0;
  return this;
}

uint64_t awd::metrics::BluetoothMagnetState::MergePartialFromCodedStream(awd::metrics::BluetoothMagnetState *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
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
          if (TagFallback >> 3 <= 7)
          {
            if (v7 == 6)
            {
              if ((TagFallback & 7) == 0)
              {
                v16 = *(a2 + 1);
                v8 = *(a2 + 2);
                goto LABEL_81;
              }
            }

            else if (v7 == 7 && (TagFallback & 7) == 0)
            {
              v12 = *(a2 + 1);
              v8 = *(a2 + 2);
              goto LABEL_89;
            }
          }

          else if (v7 == 8)
          {
            if ((TagFallback & 7) == 0)
            {
              v18 = *(a2 + 1);
              v8 = *(a2 + 2);
              goto LABEL_97;
            }
          }

          else if (v7 == 9)
          {
            if ((TagFallback & 7) == 0)
            {
              v20 = *(a2 + 1);
              v8 = *(a2 + 2);
              goto LABEL_105;
            }
          }

          else if (v7 == 10 && (TagFallback & 7) == 0)
          {
            v10 = *(a2 + 1);
            v8 = *(a2 + 2);
            goto LABEL_113;
          }

          goto LABEL_40;
        }

        if (TagFallback >> 3 > 2)
        {
          break;
        }

        if (v7 != 1)
        {
          if (v7 != 2 || (TagFallback & 7) != 0)
          {
            goto LABEL_40;
          }

          v11 = *(a2 + 1);
          v8 = *(a2 + 2);
          goto LABEL_49;
        }

        if ((TagFallback & 7) != 0)
        {
          goto LABEL_40;
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

        *(this + 20) |= 1u;
        if (v15 < v8 && *v15 == 16)
        {
          v11 = v15 + 1;
          *(a2 + 1) = v11;
LABEL_49:
          if (v11 >= v8 || (v21 = *v11, v21 < 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 4);
            if (!result)
            {
              return result;
            }

            v22 = *(a2 + 1);
            v8 = *(a2 + 2);
          }

          else
          {
            *(this + 4) = v21;
            v22 = v11 + 1;
            *(a2 + 1) = v22;
          }

          *(this + 20) |= 2u;
          if (v22 < v8 && *v22 == 24)
          {
            v17 = v22 + 1;
            *(a2 + 1) = v17;
LABEL_57:
            v40 = 0;
            if (v17 >= v8 || (v23 = *v17, (v23 & 0x80000000) != 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v40);
              if (!result)
              {
                return result;
              }

              v23 = v40;
              v24 = *(a2 + 1);
              v8 = *(a2 + 2);
            }

            else
            {
              v24 = v17 + 1;
              *(a2 + 1) = v24;
            }

            *(this + 20) = v23 != 0;
            *(this + 20) |= 4u;
            if (v24 < v8 && *v24 == 32)
            {
              v19 = v24 + 1;
              *(a2 + 1) = v19;
              goto LABEL_65;
            }
          }
        }
      }

      if (v7 == 3)
      {
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_40;
        }

        v17 = *(a2 + 1);
        v8 = *(a2 + 2);
        goto LABEL_57;
      }

      if (v7 != 4)
      {
        break;
      }

      if ((TagFallback & 7) != 0)
      {
        goto LABEL_40;
      }

      v19 = *(a2 + 1);
      v8 = *(a2 + 2);
LABEL_65:
      if (v19 >= v8 || (v25 = *v19, v25 < 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 3);
        if (!result)
        {
          return result;
        }

        v26 = *(a2 + 1);
        v8 = *(a2 + 2);
      }

      else
      {
        *(this + 3) = v25;
        v26 = v19 + 1;
        *(a2 + 1) = v26;
      }

      *(this + 20) |= 8u;
      if (v26 < v8 && *v26 == 40)
      {
        v9 = v26 + 1;
        *(a2 + 1) = v9;
LABEL_73:
        if (v9 >= v8 || (v27 = *v9, v27 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 4);
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
          v28 = v9 + 1;
          *(a2 + 1) = v28;
        }

        *(this + 20) |= 0x10u;
        if (v28 < v8 && *v28 == 48)
        {
          v16 = v28 + 1;
          *(a2 + 1) = v16;
LABEL_81:
          if (v16 >= v8 || (v29 = *v16, v29 < 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 5);
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
            v30 = v16 + 1;
            *(a2 + 1) = v30;
          }

          *(this + 20) |= 0x20u;
          if (v30 < v8 && *v30 == 56)
          {
            v12 = v30 + 1;
            *(a2 + 1) = v12;
LABEL_89:
            if (v12 >= v8 || (v31 = *v12, v31 < 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 18);
              if (!result)
              {
                return result;
              }

              v32 = *(a2 + 1);
              v8 = *(a2 + 2);
            }

            else
            {
              *(this + 18) = v31;
              v32 = v12 + 1;
              *(a2 + 1) = v32;
            }

            *(this + 20) |= 0x40u;
            if (v32 < v8 && *v32 == 64)
            {
              v18 = v32 + 1;
              *(a2 + 1) = v18;
LABEL_97:
              if (v18 >= v8 || (v33 = *v18, v33 < 0))
              {
                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 6);
                if (!result)
                {
                  return result;
                }

                v34 = *(a2 + 1);
                v8 = *(a2 + 2);
              }

              else
              {
                *(this + 6) = v33;
                v34 = v18 + 1;
                *(a2 + 1) = v34;
              }

              *(this + 20) |= 0x80u;
              if (v34 < v8 && *v34 == 72)
              {
                v20 = v34 + 1;
                *(a2 + 1) = v20;
LABEL_105:
                if (v20 >= v8 || (v35 = *v20, v35 < 0))
                {
                  result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 7);
                  if (!result)
                  {
                    return result;
                  }

                  v36 = *(a2 + 1);
                  v8 = *(a2 + 2);
                }

                else
                {
                  *(this + 7) = v35;
                  v36 = v20 + 1;
                  *(a2 + 1) = v36;
                }

                *(this + 20) |= 0x100u;
                if (v36 < v8 && *v36 == 80)
                {
                  v10 = v36 + 1;
                  *(a2 + 1) = v10;
LABEL_113:
                  v41 = 0;
                  if (v10 >= v8 || (v37 = *v10, (v37 & 0x8000000000000000) != 0))
                  {
                    result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, &v41);
                    if (!result)
                    {
                      return result;
                    }

                    v37 = v41;
                    v38 = *(a2 + 1);
                    v8 = *(a2 + 2);
                  }

                  else
                  {
                    v38 = v10 + 1;
                    *(a2 + 1) = v38;
                  }

                  *(this + 8) = v37;
                  *(this + 20) |= 0x200u;
                  if (v38 == v8 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
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

    if (v7 == 5 && (TagFallback & 7) == 0)
    {
      v9 = *(a2 + 1);
      v8 = *(a2 + 2);
      goto LABEL_73;
    }

LABEL_40:
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

uint64_t awd::metrics::BluetoothMagnetState::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
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

      goto LABEL_14;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(2, *(v5 + 16), a2, a4);
  v6 = *(v5 + 80);
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
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(3, *(v5 + 20), a2, a4);
  v6 = *(v5 + 80);
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
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(4, *(v5 + 24), a2, a4);
  v6 = *(v5 + 80);
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
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(5, *(v5 + 32), a2, a4);
  v6 = *(v5 + 80);
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
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(6, *(v5 + 40), a2, a4);
  v6 = *(v5 + 80);
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
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(7, *(v5 + 72), a2, a4);
  v6 = *(v5 + 80);
  if ((v6 & 0x80) == 0)
  {
LABEL_9:
    if ((v6 & 0x100) == 0)
    {
      goto LABEL_10;
    }

LABEL_20:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(9, *(v5 + 56), a2, a4);
    if ((*(v5 + 80) & 0x200) == 0)
    {
      return this;
    }

    goto LABEL_21;
  }

LABEL_19:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(8, *(v5 + 48), a2, a4);
  v6 = *(v5 + 80);
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
  v7 = *(v5 + 64);

  return MEMORY[0x2A1C715C8](10, v7, a2);
}

uint64_t awd::metrics::BluetoothMagnetState::ByteSize(awd::metrics::BluetoothMagnetState *this, unint64_t a2)
{
  v3 = *(this + 20);
  if (!v3)
  {
    v5 = 0;
    goto LABEL_17;
  }

  if (v3)
  {
    v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 1)) + 1;
    v3 = *(this + 20);
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

  v6 = *(this + 4);
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
LABEL_11:
  v5 = ((v3 >> 1) & 2) + v4;
  if ((v3 & 8) != 0)
  {
    v5 = v5 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 3)) + 1;
    v3 = *(this + 20);
    if ((v3 & 0x10) == 0)
    {
LABEL_13:
      if ((v3 & 0x20) == 0)
      {
        goto LABEL_14;
      }

      goto LABEL_25;
    }
  }

  else if ((v3 & 0x10) == 0)
  {
    goto LABEL_13;
  }

  v5 = v5 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 4)) + 1;
  v3 = *(this + 20);
  if ((v3 & 0x20) == 0)
  {
LABEL_14:
    if ((v3 & 0x40) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_26;
  }

LABEL_25:
  v5 = v5 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 5)) + 1;
  v3 = *(this + 20);
  if ((v3 & 0x40) == 0)
  {
LABEL_15:
    if ((v3 & 0x80) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

LABEL_26:
  v9 = *(this + 18);
  if (v9 >= 0x80)
  {
    v10 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v9) + 1;
    v3 = *(this + 20);
  }

  else
  {
    v10 = 2;
  }

  v5 = (v10 + v5);
  if ((v3 & 0x80) != 0)
  {
LABEL_16:
    v5 = v5 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 6)) + 1;
    v3 = *(this + 20);
  }

LABEL_17:
  if ((v3 & 0xFF00) != 0)
  {
    if ((v3 & 0x100) != 0)
    {
      v5 = v5 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 7)) + 1;
      v3 = *(this + 20);
    }

    if ((v3 & 0x200) != 0)
    {
      v5 = v5 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 8)) + 1;
    }
  }

  *(this + 19) = v5;
  return v5;
}

void awd::metrics::BluetoothMagnetState::CheckTypeAndMergeFrom(awd::metrics::BluetoothMagnetState *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  {
    awd::metrics::BluetoothMagnetState::CheckTypeAndMergeFrom();
  }

  awd::metrics::BluetoothMagnetState::MergeFrom(this, lpsrc);
}

void awd::metrics::BluetoothMagnetState::CopyFrom(awd::metrics::BluetoothMagnetState *this, const awd::metrics::BluetoothMagnetState *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    awd::metrics::BluetoothMagnetState::MergeFrom(this, a2);
  }
}

uint64_t awd::metrics::BluetoothMagnetState::Swap(uint64_t this, awd::metrics::BluetoothMagnetState *a2)
{
  if (a2 != this)
  {
    v2 = *(this + 8);
    *(this + 8) = *(a2 + 1);
    *(a2 + 1) = v2;
    LODWORD(v2) = *(this + 16);
    *(this + 16) = *(a2 + 4);
    *(a2 + 4) = v2;
    LOBYTE(v2) = *(this + 20);
    *(this + 20) = *(a2 + 20);
    *(a2 + 20) = v2;
    v3 = *(this + 24);
    *(this + 24) = *(a2 + 3);
    *(a2 + 3) = v3;
    v4 = *(this + 32);
    *(this + 32) = *(a2 + 4);
    *(a2 + 4) = v4;
    v5 = *(this + 40);
    *(this + 40) = *(a2 + 5);
    *(a2 + 5) = v5;
    LODWORD(v5) = *(this + 72);
    *(this + 72) = *(a2 + 18);
    *(a2 + 18) = v5;
    v6 = *(this + 48);
    *(this + 48) = *(a2 + 6);
    *(a2 + 6) = v6;
    v7 = *(this + 56);
    *(this + 56) = *(a2 + 7);
    *(a2 + 7) = v7;
    v8 = *(this + 64);
    *(this + 64) = *(a2 + 8);
    *(a2 + 8) = v8;
    LODWORD(v8) = *(this + 80);
    *(this + 80) = *(a2 + 20);
    *(a2 + 20) = v8;
    LODWORD(v8) = *(this + 76);
    *(this + 76) = *(a2 + 19);
    *(a2 + 19) = v8;
  }

  return this;
}

uint64_t awd::metrics::BluetoothMagnetPhyStats_BluetoothMagnetPhyStatsPERvsRSSI::SharedCtor(uint64_t this)
{
  *(this + 8) = 0;
  *(this + 16) = 0;
  *(this + 24) = 0;
  return this;
}

awd::metrics::BluetoothMagnetPhyStats_BluetoothMagnetPhyStatsPERvsRSSI *awd::metrics::BluetoothMagnetPhyStats_BluetoothMagnetPhyStatsPERvsRSSI::BluetoothMagnetPhyStats_BluetoothMagnetPhyStatsPERvsRSSI(awd::metrics::BluetoothMagnetPhyStats_BluetoothMagnetPhyStatsPERvsRSSI *this, const awd::metrics::BluetoothMagnetPhyStats_BluetoothMagnetPhyStatsPERvsRSSI *a2)
{
  *(this + 1) = 0;
  *(this + 2) = 0;
  *this = &unk_2A1D4B0D0;
  *(this + 6) = 0;
  awd::metrics::BluetoothMagnetPhyStats_BluetoothMagnetPhyStatsPERvsRSSI::MergeFrom(this, a2);
  return this;
}

void awd::metrics::BluetoothMagnetPhyStats_BluetoothMagnetPhyStatsPERvsRSSI::MergeFrom(awd::metrics::BluetoothMagnetPhyStats_BluetoothMagnetPhyStatsPERvsRSSI *this, const awd::metrics::BluetoothMagnetPhyStats_BluetoothMagnetPhyStatsPERvsRSSI *a2)
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
      v6 = *(a2 + 2);
      *(this + 6) |= 1u;
      *(this + 2) = v6;
      v4 = *(a2 + 6);
      if ((v4 & 2) == 0)
      {
LABEL_6:
        if ((v4 & 4) == 0)
        {
          return;
        }

        goto LABEL_7;
      }
    }

    else if ((*(a2 + 24) & 2) == 0)
    {
      goto LABEL_6;
    }

    v7 = *(a2 + 3);
    *(this + 6) |= 2u;
    *(this + 3) = v7;
    if ((*(a2 + 6) & 4) == 0)
    {
      return;
    }

LABEL_7:
    v5 = *(a2 + 4);
    *(this + 6) |= 4u;
    *(this + 4) = v5;
  }
}

void sub_296368344(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::metrics::BluetoothMagnetPhyStats_BluetoothMagnetPhyStatsPERvsRSSI::~BluetoothMagnetPhyStats_BluetoothMagnetPhyStatsPERvsRSSI(awd::metrics::BluetoothMagnetPhyStats_BluetoothMagnetPhyStatsPERvsRSSI *this)
{
  *this = &unk_2A1D4B0D0;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2A1D4B0D0;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2A1D4B0D0;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  JUMPOUT(0x29C259F00);
}

uint64_t awd::metrics::BluetoothMagnetPhyStats_BluetoothMagnetPhyStatsPERvsRSSI::default_instance(awd::metrics::BluetoothMagnetPhyStats_BluetoothMagnetPhyStatsPERvsRSSI *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = awd::metrics::BluetoothMagnetPhyStats_BluetoothMagnetPhyStatsPERvsRSSI::default_instance_;
  if (!awd::metrics::BluetoothMagnetPhyStats_BluetoothMagnetPhyStatsPERvsRSSI::default_instance_)
  {
    awd::metrics::protobuf_AddDesc_Bluetooth_2eproto(0, a2, a3, a4);
    return awd::metrics::BluetoothMagnetPhyStats_BluetoothMagnetPhyStatsPERvsRSSI::default_instance_;
  }

  return result;
}

uint64_t awd::metrics::BluetoothMagnetPhyStats_BluetoothMagnetPhyStatsPERvsRSSI::Clear(uint64_t this)
{
  if (*(this + 24))
  {
    *(this + 8) = 0;
    *(this + 16) = 0;
  }

  *(this + 24) = 0;
  return this;
}

uint64_t awd::metrics::BluetoothMagnetPhyStats_BluetoothMagnetPhyStatsPERvsRSSI::MergePartialFromCodedStream(awd::metrics::BluetoothMagnetPhyStats_BluetoothMagnetPhyStatsPERvsRSSI *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
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
      if (TagFallback >> 3 == 9)
      {
        if ((TagFallback & 7) == 0)
        {
          v13 = *(a2 + 1);
          v8 = *(a2 + 2);
          goto LABEL_33;
        }

        goto LABEL_16;
      }

      if (v7 == 8)
      {
        break;
      }

      if (v7 != 7 || (TagFallback & 7) != 0)
      {
        goto LABEL_16;
      }

      v9 = *(a2 + 1);
      v8 = *(a2 + 2);
      if (v9 >= v8 || (v10 = *v9, v10 < 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 2);
        if (!result)
        {
          return result;
        }

        v11 = *(a2 + 1);
        v8 = *(a2 + 2);
      }

      else
      {
        *(this + 2) = v10;
        v11 = v9 + 1;
        *(a2 + 1) = v11;
      }

      *(this + 6) |= 1u;
      if (v11 < v8 && *v11 == 64)
      {
        v12 = v11 + 1;
        *(a2 + 1) = v12;
LABEL_25:
        if (v12 >= v8 || (v14 = *v12, v14 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 3);
          if (!result)
          {
            return result;
          }

          v15 = *(a2 + 1);
          v8 = *(a2 + 2);
        }

        else
        {
          *(this + 3) = v14;
          v15 = v12 + 1;
          *(a2 + 1) = v15;
        }

        *(this + 6) |= 2u;
        if (v15 < v8 && *v15 == 72)
        {
          v13 = v15 + 1;
          *(a2 + 1) = v13;
LABEL_33:
          if (v13 >= v8 || (v16 = *v13, v16 < 0))
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
            v17 = v13 + 1;
            *(a2 + 1) = v17;
          }

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

unsigned int *awd::metrics::BluetoothMagnetPhyStats_BluetoothMagnetPhyStatsPERvsRSSI::SerializeWithCachedSizes(unsigned int *this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
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
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(8, v5[3], a2, a4);
    if ((v5[6] & 4) == 0)
    {
      return this;
    }

    goto LABEL_7;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(7, this[2], a2, a4);
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

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(9, v7, a2, a4);
}

uint64_t awd::metrics::BluetoothMagnetPhyStats_BluetoothMagnetPhyStatsPERvsRSSI::ByteSize(awd::metrics::BluetoothMagnetPhyStats_BluetoothMagnetPhyStatsPERvsRSSI *this, unsigned int a2)
{
  LOBYTE(v3) = *(this + 24);
  if (!v3)
  {
    v4 = 0;
    goto LABEL_19;
  }

  if (*(this + 24))
  {
    v5 = *(this + 2);
    if (v5 >= 0x80)
    {
      v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5) + 1;
      v3 = *(this + 6);
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
    if ((*(this + 24) & 2) == 0)
    {
      goto LABEL_14;
    }
  }

  v6 = *(this + 3);
  if (v6 >= 0x80)
  {
    v7 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v6) + 1;
    v3 = *(this + 6);
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
    }

    else
    {
      v9 = 2;
    }

    v4 = (v9 + v4);
  }

LABEL_19:
  *(this + 5) = v4;
  return v4;
}

void awd::metrics::BluetoothMagnetPhyStats_BluetoothMagnetPhyStatsPERvsRSSI::CheckTypeAndMergeFrom(awd::metrics::BluetoothMagnetPhyStats_BluetoothMagnetPhyStatsPERvsRSSI *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  {
    awd::metrics::BluetoothMagnetPhyStats_BluetoothMagnetPhyStatsPERvsRSSI::CheckTypeAndMergeFrom();
  }

  awd::metrics::BluetoothMagnetPhyStats_BluetoothMagnetPhyStatsPERvsRSSI::MergeFrom(this, lpsrc);
}

void awd::metrics::BluetoothMagnetPhyStats_BluetoothMagnetPhyStatsPERvsRSSI::CopyFrom(awd::metrics::BluetoothMagnetPhyStats_BluetoothMagnetPhyStatsPERvsRSSI *this, const awd::metrics::BluetoothMagnetPhyStats_BluetoothMagnetPhyStatsPERvsRSSI *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    awd::metrics::BluetoothMagnetPhyStats_BluetoothMagnetPhyStatsPERvsRSSI::MergeFrom(this, a2);
  }
}

awd::metrics::BluetoothMagnetPhyStats_BluetoothMagnetPhyStatsPERvsRSSI *awd::metrics::BluetoothMagnetPhyStats_BluetoothMagnetPhyStatsPERvsRSSI::Swap(awd::metrics::BluetoothMagnetPhyStats_BluetoothMagnetPhyStatsPERvsRSSI *this, awd::metrics::BluetoothMagnetPhyStats_BluetoothMagnetPhyStatsPERvsRSSI *a2)
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

double awd::metrics::BluetoothMagnetPhyStats::SharedCtor(awd::metrics::BluetoothMagnetPhyStats *this)
{
  result = 0.0;
  *(this + 40) = 0u;
  *(this + 24) = 0u;
  *(this + 8) = 0u;
  *(this + 28) = 0;
  *(this + 29) = 0;
  *(this + 27) = 0;
  return result;
}

awd::metrics::BluetoothMagnetPhyStats *awd::metrics::BluetoothMagnetPhyStats::BluetoothMagnetPhyStats(awd::metrics::BluetoothMagnetPhyStats *this, const awd::metrics::BluetoothMagnetPhyStats *a2)
{
  *this = &unk_2A1D4B148;
  *(this + 56) = 0u;
  *(this + 10) = 0;
  *(this + 11) = 0;
  *(this + 13) = 0;
  *(this + 24) = 0;
  *(this + 14) = 0;
  *(this + 30) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  *(this + 36) = 0;
  *(this + 152) = 0u;
  *(this + 168) = 0u;
  *(this + 184) = 0u;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 18) = 0;
  *(this + 200) = 0u;
  *(this + 216) = 0u;
  *(this + 29) = 0;
  awd::metrics::BluetoothMagnetPhyStats::MergeFrom(this, a2);
  return this;
}

void sub_296368A88(_Unwind_Exception *a1)
{
  v10 = *(v1 + 25);
  if (v10)
  {
    MEMORY[0x29C259EE0](v10, 0x1000C8052888210);
  }

  awd::metrics::BluetoothMagnetPhyStats::BluetoothMagnetPhyStats(v8, v7, v6);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::BluetoothMagnetPhyStats_BluetoothMagnetPhyStatsPERvsRSSI>::TypeHandler>(v5);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::BluetoothMagnetPhyStats_BluetoothMagnetPhyStatsPERvsRSSI>::TypeHandler>(v4);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::BluetoothMagnetPhyStats_BluetoothMagnetPhyStatsPERvsRSSI>::TypeHandler>(v3);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::BluetoothMagnetPhyStats_BluetoothMagnetPhyStatsPERvsRSSI>::TypeHandler>(v2);
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(v1);
  _Unwind_Resume(a1);
}

void awd::metrics::BluetoothMagnetPhyStats::MergeFrom(awd::metrics::BluetoothMagnetPhyStats *this, const awd::metrics::BluetoothMagnetPhyStats *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v24);
  }

  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::MergeFrom<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::BluetoothMagnetPhyStats_BluetoothMagnetPhyStatsPERvsRSSI>::TypeHandler>((this + 56), a2 + 56);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::MergeFrom<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::BluetoothMagnetPhyStats_BluetoothMagnetPhyStatsPERvsRSSI>::TypeHandler>((this + 80), a2 + 80);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::MergeFrom<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::BluetoothMagnetPhyStats_BluetoothMagnetPhyStatsPERvsRSSI>::TypeHandler>((this + 104), a2 + 104);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::MergeFrom<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::BluetoothMagnetPhyStats_BluetoothMagnetPhyStatsPERvsRSSI>::TypeHandler>((this + 128), a2 + 128);
  v4 = *(a2 + 40);
  if (v4)
  {
    wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 38, *(this + 40) + v4);
    memcpy((*(this + 19) + 4 * *(this + 40)), *(a2 + 19), 4 * *(a2 + 40));
    *(this + 40) += *(a2 + 40);
  }

  v5 = *(a2 + 44);
  if (v5)
  {
    wireless_diagnostics::google::protobuf::RepeatedField<int>::Reserve(this + 42, *(this + 44) + v5);
    memcpy((*(this + 21) + 4 * *(this + 44)), *(a2 + 21), 4 * *(a2 + 44));
    *(this + 44) += *(a2 + 44);
  }

  v6 = *(a2 + 48);
  if (v6)
  {
    wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 46, *(this + 48) + v6);
    memcpy((*(this + 23) + 4 * *(this + 48)), *(a2 + 23), 4 * *(a2 + 48));
    *(this + 48) += *(a2 + 48);
  }

  v7 = *(a2 + 52);
  if (v7)
  {
    wireless_diagnostics::google::protobuf::RepeatedField<int>::Reserve(this + 50, *(this + 52) + v7);
    memcpy((*(this + 25) + 4 * *(this + 52)), *(a2 + 25), 4 * *(a2 + 52));
    *(this + 52) += *(a2 + 52);
  }

  v8 = *(a2 + 59);
  if (!v8)
  {
    goto LABEL_21;
  }

  if (v8)
  {
    v12 = *(a2 + 1);
    *(this + 59) |= 1u;
    *(this + 1) = v12;
    v8 = *(a2 + 59);
    if ((v8 & 2) == 0)
    {
LABEL_14:
      if ((v8 & 4) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_35;
    }
  }

  else if ((v8 & 2) == 0)
  {
    goto LABEL_14;
  }

  v13 = *(a2 + 4);
  *(this + 59) |= 2u;
  *(this + 4) = v13;
  v8 = *(a2 + 59);
  if ((v8 & 4) == 0)
  {
LABEL_15:
    if ((v8 & 8) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_36;
  }

LABEL_35:
  v14 = *(a2 + 5);
  *(this + 59) |= 4u;
  *(this + 5) = v14;
  v8 = *(a2 + 59);
  if ((v8 & 8) == 0)
  {
LABEL_16:
    if ((v8 & 0x10) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_37;
  }

LABEL_36:
  v15 = *(a2 + 6);
  *(this + 59) |= 8u;
  *(this + 6) = v15;
  v8 = *(a2 + 59);
  if ((v8 & 0x10) == 0)
  {
LABEL_17:
    if ((v8 & 0x20) == 0)
    {
      goto LABEL_18;
    }

LABEL_38:
    v17 = *(a2 + 8);
    *(this + 59) |= 0x20u;
    *(this + 8) = v17;
    v8 = *(a2 + 59);
    if ((v8 & 0x40) == 0)
    {
LABEL_19:
      if ((v8 & 0x80) == 0)
      {
        goto LABEL_21;
      }

      goto LABEL_20;
    }

    goto LABEL_39;
  }

LABEL_37:
  v16 = *(a2 + 7);
  *(this + 59) |= 0x10u;
  *(this + 7) = v16;
  v8 = *(a2 + 59);
  if ((v8 & 0x20) != 0)
  {
    goto LABEL_38;
  }

LABEL_18:
  if ((v8 & 0x40) == 0)
  {
    goto LABEL_19;
  }

LABEL_39:
  v18 = *(a2 + 9);
  *(this + 59) |= 0x40u;
  *(this + 9) = v18;
  v8 = *(a2 + 59);
  if ((v8 & 0x80) != 0)
  {
LABEL_20:
    v9 = *(a2 + 10);
    *(this + 59) |= 0x80u;
    *(this + 10) = v9;
    v8 = *(a2 + 59);
  }

LABEL_21:
  if ((v8 & 0xFF00) == 0)
  {
    goto LABEL_26;
  }

  if ((v8 & 0x100) != 0)
  {
    v19 = *(a2 + 11);
    *(this + 59) |= 0x100u;
    *(this + 11) = v19;
    v8 = *(a2 + 59);
    if ((v8 & 0x200) == 0)
    {
LABEL_24:
      if ((v8 & 0x400) == 0)
      {
        goto LABEL_26;
      }

      goto LABEL_25;
    }
  }

  else if ((v8 & 0x200) == 0)
  {
    goto LABEL_24;
  }

  v20 = *(a2 + 12);
  *(this + 59) |= 0x200u;
  *(this + 12) = v20;
  v8 = *(a2 + 59);
  if ((v8 & 0x400) != 0)
  {
LABEL_25:
    v10 = *(a2 + 13);
    *(this + 59) |= 0x400u;
    *(this + 13) = v10;
    v8 = *(a2 + 59);
  }

LABEL_26:
  if ((v8 & 0x7F80000) == 0)
  {
    return;
  }

  if ((v8 & 0x80000) != 0)
  {
    v21 = *(a2 + 54);
    *(this + 59) |= 0x80000u;
    *(this + 54) = v21;
    v8 = *(a2 + 59);
    if ((v8 & 0x100000) == 0)
    {
LABEL_29:
      if ((v8 & 0x200000) == 0)
      {
        goto LABEL_30;
      }

      goto LABEL_46;
    }
  }

  else if ((v8 & 0x100000) == 0)
  {
    goto LABEL_29;
  }

  v22 = *(a2 + 55);
  *(this + 59) |= 0x100000u;
  *(this + 55) = v22;
  v8 = *(a2 + 59);
  if ((v8 & 0x200000) == 0)
  {
LABEL_30:
    if ((v8 & 0x400000) == 0)
    {
      return;
    }

    goto LABEL_31;
  }

LABEL_46:
  v23 = *(a2 + 56);
  *(this + 59) |= 0x200000u;
  *(this + 56) = v23;
  if ((*(a2 + 59) & 0x400000) == 0)
  {
    return;
  }

LABEL_31:
  v11 = *(a2 + 57);
  *(this + 59) |= 0x400000u;
  *(this + 57) = v11;
}

void sub_296368EA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::metrics::BluetoothMagnetPhyStats::~BluetoothMagnetPhyStats(awd::metrics::BluetoothMagnetPhyStats *this)
{
  *this = &unk_2A1D4B148;
  v2 = *(this + 25);
  if (v2)
  {
    MEMORY[0x29C259EE0](v2, 0x1000C8052888210);
  }

  v3 = *(this + 23);
  if (v3)
  {
    MEMORY[0x29C259EE0](v3, 0x1000C8052888210);
  }

  v4 = *(this + 21);
  if (v4)
  {
    MEMORY[0x29C259EE0](v4, 0x1000C8052888210);
  }

  v5 = *(this + 19);
  if (v5)
  {
    MEMORY[0x29C259EE0](v5, 0x1000C8052888210);
  }

  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::BluetoothMagnetPhyStats_BluetoothMagnetPhyStatsPERvsRSSI>::TypeHandler>(this + 16);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::BluetoothMagnetPhyStats_BluetoothMagnetPhyStatsPERvsRSSI>::TypeHandler>(this + 13);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::BluetoothMagnetPhyStats_BluetoothMagnetPhyStatsPERvsRSSI>::TypeHandler>(this + 10);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::BluetoothMagnetPhyStats_BluetoothMagnetPhyStatsPERvsRSSI>::TypeHandler>(this + 7);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  awd::metrics::BluetoothMagnetPhyStats::~BluetoothMagnetPhyStats(this);

  JUMPOUT(0x29C259F00);
}

uint64_t awd::metrics::BluetoothMagnetPhyStats::default_instance(awd::metrics::BluetoothMagnetPhyStats *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = awd::metrics::BluetoothMagnetPhyStats::default_instance_;
  if (!awd::metrics::BluetoothMagnetPhyStats::default_instance_)
  {
    awd::metrics::protobuf_AddDesc_Bluetooth_2eproto(0, a2, a3, a4);
    return awd::metrics::BluetoothMagnetPhyStats::default_instance_;
  }

  return result;
}

uint64_t awd::metrics::BluetoothMagnetPhyStats::Clear(awd::metrics::BluetoothMagnetPhyStats *this)
{
  v2 = *(this + 59);
  if (v2)
  {
    *(this + 10) = 0;
    *(this + 24) = 0u;
    *(this + 8) = 0u;
  }

  if ((v2 & 0xFF00) != 0)
  {
    *(this + 6) = 0;
    *(this + 11) = 0;
  }

  if ((v2 & 0x7F80000) != 0)
  {
    *(this + 27) = 0;
    *(this + 28) = 0;
  }

  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Clear<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::BluetoothMagnetPhyStats_BluetoothMagnetPhyStatsPERvsRSSI>::TypeHandler>(this + 56);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Clear<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::BluetoothMagnetPhyStats_BluetoothMagnetPhyStatsPERvsRSSI>::TypeHandler>(this + 80);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Clear<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::BluetoothMagnetPhyStats_BluetoothMagnetPhyStatsPERvsRSSI>::TypeHandler>(this + 104);
  result = wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Clear<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::BluetoothMagnetPhyStats_BluetoothMagnetPhyStatsPERvsRSSI>::TypeHandler>(this + 128);
  *(this + 40) = 0;
  *(this + 44) = 0;
  *(this + 48) = 0;
  *(this + 52) = 0;
  *(this + 59) = 0;
  return result;
}

uint64_t awd::metrics::BluetoothMagnetPhyStats::MergePartialFromCodedStream(awd::metrics::BluetoothMagnetPhyStats *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
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
    switch(TagFallback >> 3)
    {
      case 1u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_62;
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

        *(this + 59) |= 1u;
        if (v11 < v8 && *v11 == 16)
        {
          v22 = v11 + 1;
          *(a2 + 1) = v22;
          goto LABEL_75;
        }

        continue;
      case 2u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_62;
        }

        v22 = *(a2 + 1);
        v8 = *(a2 + 2);
LABEL_75:
        if (v22 >= v8 || (v32 = *v22, v32 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 4);
          if (!result)
          {
            return result;
          }

          v33 = *(a2 + 1);
          v8 = *(a2 + 2);
        }

        else
        {
          *(this + 4) = v32;
          v33 = v22 + 1;
          *(a2 + 1) = v33;
        }

        *(this + 59) |= 2u;
        if (v33 >= v8 || *v33 != 24)
        {
          continue;
        }

        v16 = v33 + 1;
        *(a2 + 1) = v16;
LABEL_83:
        if (v16 >= v8 || (v34 = *v16, v34 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 5);
          if (!result)
          {
            return result;
          }

          v35 = *(a2 + 1);
          v8 = *(a2 + 2);
        }

        else
        {
          *(this + 5) = v34;
          v35 = v16 + 1;
          *(a2 + 1) = v35;
        }

        *(this + 59) |= 4u;
        if (v35 >= v8 || *v35 != 32)
        {
          continue;
        }

        v21 = v35 + 1;
        *(a2 + 1) = v21;
LABEL_91:
        if (v21 >= v8 || (v36 = *v21, v36 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 6);
          if (!result)
          {
            return result;
          }

          v37 = *(a2 + 1);
          v8 = *(a2 + 2);
        }

        else
        {
          *(this + 6) = v36;
          v37 = v21 + 1;
          *(a2 + 1) = v37;
        }

        *(this + 59) |= 8u;
        if (v37 >= v8 || *v37 != 40)
        {
          continue;
        }

        v17 = v37 + 1;
        *(a2 + 1) = v17;
LABEL_99:
        if (v17 >= v8 || (v38 = *v17, v38 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 7);
          if (!result)
          {
            return result;
          }

          v39 = *(a2 + 1);
          v8 = *(a2 + 2);
        }

        else
        {
          *(this + 7) = v38;
          v39 = v17 + 1;
          *(a2 + 1) = v39;
        }

        *(this + 59) |= 0x10u;
        if (v39 >= v8 || *v39 != 48)
        {
          continue;
        }

        v20 = v39 + 1;
        *(a2 + 1) = v20;
LABEL_107:
        if (v20 >= v8 || (v40 = *v20, v40 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 8);
          if (!result)
          {
            return result;
          }

          v41 = *(a2 + 1);
          v8 = *(a2 + 2);
        }

        else
        {
          *(this + 8) = v40;
          v41 = v20 + 1;
          *(a2 + 1) = v41;
        }

        *(this + 59) |= 0x20u;
        if (v41 >= v8 || *v41 != 80)
        {
          continue;
        }

        v23 = v41 + 1;
        *(a2 + 1) = v23;
LABEL_115:
        if (v23 >= v8 || (v42 = *v23, v42 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 9);
          if (!result)
          {
            return result;
          }

          v43 = *(a2 + 1);
          v8 = *(a2 + 2);
        }

        else
        {
          *(this + 9) = v42;
          v43 = v23 + 1;
          *(a2 + 1) = v43;
        }

        *(this + 59) |= 0x40u;
        if (v43 >= v8 || *v43 != 88)
        {
          continue;
        }

        v24 = v43 + 1;
        *(a2 + 1) = v24;
LABEL_123:
        if (v24 >= v8 || (v44 = *v24, v44 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 10);
          if (!result)
          {
            return result;
          }

          v45 = *(a2 + 1);
          v8 = *(a2 + 2);
        }

        else
        {
          *(this + 10) = v44;
          v45 = v24 + 1;
          *(a2 + 1) = v45;
        }

        *(this + 59) |= 0x80u;
        if (v45 >= v8 || *v45 != 96)
        {
          continue;
        }

        v26 = v45 + 1;
        *(a2 + 1) = v26;
LABEL_131:
        if (v26 >= v8 || (v46 = *v26, v46 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 11);
          if (!result)
          {
            return result;
          }

          v47 = *(a2 + 1);
          v8 = *(a2 + 2);
        }

        else
        {
          *(this + 11) = v46;
          v47 = v26 + 1;
          *(a2 + 1) = v47;
        }

        *(this + 59) |= 0x100u;
        if (v47 >= v8 || *v47 != 104)
        {
          continue;
        }

        v25 = v47 + 1;
        *(a2 + 1) = v25;
LABEL_139:
        if (v25 >= v8 || (v48 = *v25, v48 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 12);
          if (!result)
          {
            return result;
          }

          v49 = *(a2 + 1);
          v8 = *(a2 + 2);
        }

        else
        {
          *(this + 12) = v48;
          v49 = v25 + 1;
          *(a2 + 1) = v49;
        }

        *(this + 59) |= 0x200u;
        if (v49 >= v8 || *v49 != 112)
        {
          continue;
        }

        v15 = v49 + 1;
        *(a2 + 1) = v15;
LABEL_147:
        if (v15 >= v8 || (v50 = *v15, v50 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 13);
          if (!result)
          {
            return result;
          }

          v51 = *(a2 + 1);
          v8 = *(a2 + 2);
        }

        else
        {
          *(this + 13) = v50;
          v51 = (v15 + 1);
          *(a2 + 1) = v51;
        }

        *(this + 59) |= 0x400u;
        if (v51 >= v8 || *v51 != 122)
        {
          continue;
        }

        do
        {
          *(a2 + 1) = v51 + 1;
LABEL_155:
          v52 = *(this + 17);
          v53 = *(this + 16);
          if (v53 >= v52)
          {
            if (v52 == *(this + 18))
            {
              wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 56));
              v52 = *(this + 17);
            }

            *(this + 17) = v52 + 1;
            operator new();
          }

          v54 = *(this + 7);
          *(this + 16) = v53 + 1;
          v55 = *(v54 + 8 * v53);
          v152[0] = 0;
          v56 = *(a2 + 1);
          if (v56 >= *(a2 + 2) || *v56 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v152))
            {
              return 0;
            }
          }

          else
          {
            v152[0] = *v56;
            *(a2 + 1) = v56 + 1;
          }

          v57 = *(a2 + 14);
          v58 = *(a2 + 15);
          *(a2 + 14) = v57 + 1;
          if (v57 >= v58)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
          if (!awd::metrics::BluetoothMagnetPhyStats_BluetoothMagnetPhyStatsPERvsRSSI::MergePartialFromCodedStream(v55, a2, v59) || *(a2 + 36) != 1)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
          v60 = *(a2 + 14);
          v61 = __OFSUB__(v60, 1);
          v62 = v60 - 1;
          if (v62 < 0 == v61)
          {
            *(a2 + 14) = v62;
          }

          v51 = *(a2 + 1);
          v63 = *(a2 + 2);
        }

        while (v51 < v63 && *v51 == 122);
        if (v63 - v51 < 2 || *v51 != 130 || v51[1] != 1)
        {
          continue;
        }

        break;
      case 3u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_62;
        }

        v16 = *(a2 + 1);
        v8 = *(a2 + 2);
        goto LABEL_83;
      case 4u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_62;
        }

        v21 = *(a2 + 1);
        v8 = *(a2 + 2);
        goto LABEL_91;
      case 5u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_62;
        }

        v17 = *(a2 + 1);
        v8 = *(a2 + 2);
        goto LABEL_99;
      case 6u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_62;
        }

        v20 = *(a2 + 1);
        v8 = *(a2 + 2);
        goto LABEL_107;
      case 0xAu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_62;
        }

        v23 = *(a2 + 1);
        v8 = *(a2 + 2);
        goto LABEL_115;
      case 0xBu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_62;
        }

        v24 = *(a2 + 1);
        v8 = *(a2 + 2);
        goto LABEL_123;
      case 0xCu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_62;
        }

        v26 = *(a2 + 1);
        v8 = *(a2 + 2);
        goto LABEL_131;
      case 0xDu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_62;
        }

        v25 = *(a2 + 1);
        v8 = *(a2 + 2);
        goto LABEL_139;
      case 0xEu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_62;
        }

        v15 = *(a2 + 1);
        v8 = *(a2 + 2);
        goto LABEL_147;
      case 0xFu:
        if (v7 == 2)
        {
          goto LABEL_155;
        }

        goto LABEL_62;
      case 0x10u:
        if (v7 == 2)
        {
          goto LABEL_175;
        }

        goto LABEL_62;
      case 0x11u:
        if (v7 == 2)
        {
          goto LABEL_196;
        }

        goto LABEL_62;
      case 0x12u:
        if (v7 == 2)
        {
          goto LABEL_217;
        }

        goto LABEL_62;
      case 0x13u:
        if ((TagFallback & 7) == 0)
        {
          v29 = *(a2 + 1);
          v13 = *(a2 + 2);
          goto LABEL_238;
        }

        if (v7 != 2)
        {
          goto LABEL_62;
        }

        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadPackedPrimitiveNoInline<unsigned int,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)13>(a2, this + 19);
        if (!result)
        {
          return result;
        }

        goto LABEL_256;
      case 0x14u:
        if ((TagFallback & 7) == 0)
        {
          v31 = *(a2 + 1);
          v13 = *(a2 + 2);
          goto LABEL_263;
        }

        if (v7 != 2)
        {
          goto LABEL_62;
        }

        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadPackedPrimitiveNoInline<int,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)17>(a2, this + 21);
        if (!result)
        {
          return result;
        }

        goto LABEL_283;
      case 0x15u:
        if ((TagFallback & 7) == 0)
        {
          v30 = *(a2 + 1);
          v13 = *(a2 + 2);
          goto LABEL_290;
        }

        if (v7 != 2)
        {
          goto LABEL_62;
        }

        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadPackedPrimitiveNoInline<unsigned int,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)13>(a2, this + 23);
        if (!result)
        {
          return result;
        }

        goto LABEL_308;
      case 0x16u:
        if ((TagFallback & 7) == 0)
        {
          v28 = *(a2 + 1);
          v13 = *(a2 + 2);
          goto LABEL_315;
        }

        if (v7 == 2)
        {
          result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadPackedPrimitiveNoInline<int,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)17>(a2, this + 25);
          if (!result)
          {
            return result;
          }

          goto LABEL_335;
        }

LABEL_62:
        if (v7 == 4)
        {
          return 1;
        }

        if ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(a2, TagFallback) & 1) == 0)
        {
          return 0;
        }

        continue;
      case 0x17u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_62;
        }

        v19 = *(a2 + 1);
        v13 = *(a2 + 2);
        goto LABEL_342;
      case 0x18u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_62;
        }

        v27 = *(a2 + 1);
        v13 = *(a2 + 2);
        goto LABEL_351;
      case 0x19u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_62;
        }

        v14 = *(a2 + 1);
        v13 = *(a2 + 2);
        goto LABEL_360;
      case 0x1Au:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_62;
        }

        v18 = *(a2 + 1);
        v13 = *(a2 + 2);
        goto LABEL_369;
      default:
        goto LABEL_62;
    }

    while (1)
    {
      *(a2 + 1) = v51 + 2;
LABEL_175:
      v64 = *(this + 23);
      v65 = *(this + 22);
      if (v65 >= v64)
      {
        if (v64 == *(this + 24))
        {
          wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 80));
          v64 = *(this + 23);
        }

        *(this + 23) = v64 + 1;
        operator new();
      }

      v66 = *(this + 10);
      *(this + 22) = v65 + 1;
      v67 = *(v66 + 8 * v65);
      v152[0] = 0;
      v68 = *(a2 + 1);
      if (v68 >= *(a2 + 2) || *v68 < 0)
      {
        if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v152))
        {
          return 0;
        }
      }

      else
      {
        v152[0] = *v68;
        *(a2 + 1) = v68 + 1;
      }

      v69 = *(a2 + 14);
      v70 = *(a2 + 15);
      *(a2 + 14) = v69 + 1;
      if (v69 >= v70)
      {
        return 0;
      }

      wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
      if (!awd::metrics::BluetoothMagnetPhyStats_BluetoothMagnetPhyStatsPERvsRSSI::MergePartialFromCodedStream(v67, a2, v71) || *(a2 + 36) != 1)
      {
        return 0;
      }

      wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
      v72 = *(a2 + 14);
      v61 = __OFSUB__(v72, 1);
      v73 = v72 - 1;
      if (v73 < 0 == v61)
      {
        *(a2 + 14) = v73;
      }

      v51 = *(a2 + 1);
      if (*(a2 + 4) - v51 <= 1)
      {
        goto LABEL_1;
      }

      v74 = *v51;
      if (v74 == 138)
      {
        break;
      }

      if (v74 != 130 || v51[1] != 1)
      {
        goto LABEL_1;
      }
    }

    if (v51[1] == 1)
    {
      while (1)
      {
        *(a2 + 1) = v51 + 2;
LABEL_196:
        v75 = *(this + 29);
        v76 = *(this + 28);
        if (v76 >= v75)
        {
          if (v75 == *(this + 30))
          {
            wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 104));
            v75 = *(this + 29);
          }

          *(this + 29) = v75 + 1;
          operator new();
        }

        v77 = *(this + 13);
        *(this + 28) = v76 + 1;
        v78 = *(v77 + 8 * v76);
        v152[0] = 0;
        v79 = *(a2 + 1);
        if (v79 >= *(a2 + 2) || *v79 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v152))
          {
            return 0;
          }
        }

        else
        {
          v152[0] = *v79;
          *(a2 + 1) = v79 + 1;
        }

        v80 = *(a2 + 14);
        v81 = *(a2 + 15);
        *(a2 + 14) = v80 + 1;
        if (v80 >= v81)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
        if (!awd::metrics::BluetoothMagnetPhyStats_BluetoothMagnetPhyStatsPERvsRSSI::MergePartialFromCodedStream(v78, a2, v82) || *(a2 + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
        v83 = *(a2 + 14);
        v61 = __OFSUB__(v83, 1);
        v84 = v83 - 1;
        if (v84 < 0 == v61)
        {
          *(a2 + 14) = v84;
        }

        v51 = *(a2 + 1);
        if (*(a2 + 4) - v51 <= 1)
        {
          goto LABEL_1;
        }

        v85 = *v51;
        if (v85 == 146)
        {
          break;
        }

        if (v85 != 138 || v51[1] != 1)
        {
          goto LABEL_1;
        }
      }

      if (v51[1] == 1)
      {
        break;
      }
    }
  }

  while (1)
  {
    *(a2 + 1) = v51 + 2;
LABEL_217:
    v86 = *(this + 35);
    v87 = *(this + 34);
    if (v87 >= v86)
    {
      if (v86 == *(this + 36))
      {
        wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 128));
        v86 = *(this + 35);
      }

      *(this + 35) = v86 + 1;
      operator new();
    }

    v88 = *(this + 16);
    *(this + 34) = v87 + 1;
    v89 = *(v88 + 8 * v87);
    v152[0] = 0;
    v90 = *(a2 + 1);
    if (v90 >= *(a2 + 2) || *v90 < 0)
    {
      if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v152))
      {
        return 0;
      }
    }

    else
    {
      v152[0] = *v90;
      *(a2 + 1) = v90 + 1;
    }

    v91 = *(a2 + 14);
    v92 = *(a2 + 15);
    *(a2 + 14) = v91 + 1;
    if (v91 >= v92)
    {
      return 0;
    }

    wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
    if (!awd::metrics::BluetoothMagnetPhyStats_BluetoothMagnetPhyStatsPERvsRSSI::MergePartialFromCodedStream(v89, a2, v93) || *(a2 + 36) != 1)
    {
      return 0;
    }

    wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
    v94 = *(a2 + 14);
    v61 = __OFSUB__(v94, 1);
    v95 = v94 - 1;
    if (v95 < 0 == v61)
    {
      *(a2 + 14) = v95;
    }

    v51 = *(a2 + 1);
    v13 = *(a2 + 2);
    if (v13 - v51 <= 1)
    {
      goto LABEL_1;
    }

    v96 = *v51;
    if (v96 == 152)
    {
      if (v51[1] == 1)
      {
        while (1)
        {
          v29 = (v51 + 2);
          *(a2 + 1) = v29;
LABEL_238:
          v151 = 0;
          if (v29 >= v13 || *v29 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v151))
            {
              return 0;
            }
          }

          else
          {
            v151 = *v29;
            *(a2 + 1) = v29 + 1;
          }

          v97 = *(this + 40);
          if (v97 == *(this + 41))
          {
            wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 38, v97 + 1);
            v97 = *(this + 40);
          }

          v98 = v151;
          v99 = *(this + 19);
          *(this + 40) = v97 + 1;
          *(v99 + 4 * v97) = v98;
          v100 = *(this + 41) - *(this + 40);
          if (v100 >= 1)
          {
            v101 = v100 + 1;
            do
            {
              v102 = *(a2 + 1);
              v103 = *(a2 + 2);
              if (v103 - v102 < 2 || *v102 != 152 || v102[1] != 1)
              {
                break;
              }

              *(a2 + 1) = v102 + 2;
              if ((v102 + 2) >= v103 || v102[2] < 0)
              {
                if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v151))
                {
                  return 0;
                }
              }

              else
              {
                v151 = v102[2];
                *(a2 + 1) = v102 + 3;
              }

              v104 = *(this + 40);
              if (v104 >= *(this + 41))
              {
                wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v152);
                v104 = *(this + 40);
              }

              v105 = v151;
              v106 = *(this + 19);
              *(this + 40) = v104 + 1;
              *(v106 + 4 * v104) = v105;
              --v101;
            }

            while (v101 > 1);
          }

LABEL_256:
          v51 = *(a2 + 1);
          v13 = *(a2 + 2);
          if (v13 - v51 < 2)
          {
            break;
          }

          v107 = *v51;
          if (v107 == 160)
          {
            if (v51[1] == 1)
            {
              while (1)
              {
                v31 = (v51 + 2);
                *(a2 + 1) = v31;
LABEL_263:
                v152[0] = 0;
                if (v31 >= v13 || (v108 = *v31, (v108 & 0x80000000) != 0))
                {
                  result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v152);
                  if (!result)
                  {
                    return result;
                  }

                  v108 = v152[0];
                }

                else
                {
                  *(a2 + 1) = v31 + 1;
                }

                v109 = -(v108 & 1) ^ (v108 >> 1);
                v110 = *(this + 44);
                if (v110 == *(this + 45))
                {
                  wireless_diagnostics::google::protobuf::RepeatedField<int>::Reserve(this + 42, v110 + 1);
                  v110 = *(this + 44);
                }

                v111 = *(this + 21);
                *(this + 44) = v110 + 1;
                *(v111 + 4 * v110) = v109;
                v112 = *(this + 45) - *(this + 44);
                if (v112 >= 1)
                {
                  v113 = v112 + 1;
                  do
                  {
                    v114 = *(a2 + 1);
                    v115 = *(a2 + 2);
                    if (v115 - v114 < 2 || *v114 != 160 || v114[1] != 1)
                    {
                      break;
                    }

                    *(a2 + 1) = v114 + 2;
                    v152[0] = 0;
                    if ((v114 + 2) >= v115 || (v116 = v114[2], (v116 & 0x80000000) != 0))
                    {
                      result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v152);
                      if (!result)
                      {
                        return result;
                      }

                      v116 = v152[0];
                    }

                    else
                    {
                      *(a2 + 1) = v114 + 3;
                    }

                    v117 = *(this + 44);
                    if (v117 >= *(this + 45))
                    {
                      wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                      wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                      wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                      wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v152);
                      v117 = *(this + 44);
                    }

                    v118 = *(this + 21);
                    *(this + 44) = v117 + 1;
                    *(v118 + 4 * v117) = -(v116 & 1) ^ (v116 >> 1);
                    --v113;
                  }

                  while (v113 > 1);
                }

LABEL_283:
                v51 = *(a2 + 1);
                v13 = *(a2 + 2);
                if (v13 - v51 <= 1)
                {
                  break;
                }

                v119 = *v51;
                if (v119 == 168)
                {
                  if (v51[1] == 1)
                  {
                    while (1)
                    {
                      v30 = (v51 + 2);
                      *(a2 + 1) = v30;
LABEL_290:
                      v151 = 0;
                      if (v30 >= v13 || *v30 < 0)
                      {
                        if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v151))
                        {
                          return 0;
                        }
                      }

                      else
                      {
                        v151 = *v30;
                        *(a2 + 1) = v30 + 1;
                      }

                      v120 = *(this + 48);
                      if (v120 == *(this + 49))
                      {
                        wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 46, v120 + 1);
                        v120 = *(this + 48);
                      }

                      v121 = v151;
                      v122 = *(this + 23);
                      *(this + 48) = v120 + 1;
                      *(v122 + 4 * v120) = v121;
                      v123 = *(this + 49) - *(this + 48);
                      if (v123 >= 1)
                      {
                        v124 = v123 + 1;
                        do
                        {
                          v125 = *(a2 + 1);
                          v126 = *(a2 + 2);
                          if (v126 - v125 < 2 || *v125 != 168 || v125[1] != 1)
                          {
                            break;
                          }

                          *(a2 + 1) = v125 + 2;
                          if ((v125 + 2) >= v126 || v125[2] < 0)
                          {
                            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v151))
                            {
                              return 0;
                            }
                          }

                          else
                          {
                            v151 = v125[2];
                            *(a2 + 1) = v125 + 3;
                          }

                          v127 = *(this + 48);
                          if (v127 >= *(this + 49))
                          {
                            wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                            wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                            wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                            wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v152);
                            v127 = *(this + 48);
                          }

                          v128 = v151;
                          v129 = *(this + 23);
                          *(this + 48) = v127 + 1;
                          *(v129 + 4 * v127) = v128;
                          --v124;
                        }

                        while (v124 > 1);
                      }

LABEL_308:
                      v51 = *(a2 + 1);
                      v13 = *(a2 + 2);
                      if (v13 - v51 < 2)
                      {
                        break;
                      }

                      v130 = *v51;
                      if (v130 == 176)
                      {
                        if (v51[1] == 1)
                        {
                          while (1)
                          {
                            v28 = (v51 + 2);
                            *(a2 + 1) = v28;
LABEL_315:
                            v152[0] = 0;
                            if (v28 >= v13 || (v131 = *v28, (v131 & 0x80000000) != 0))
                            {
                              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v152);
                              if (!result)
                              {
                                return result;
                              }

                              v131 = v152[0];
                            }

                            else
                            {
                              *(a2 + 1) = v28 + 1;
                            }

                            v132 = -(v131 & 1) ^ (v131 >> 1);
                            v133 = *(this + 52);
                            if (v133 == *(this + 53))
                            {
                              wireless_diagnostics::google::protobuf::RepeatedField<int>::Reserve(this + 50, v133 + 1);
                              v133 = *(this + 52);
                            }

                            v134 = *(this + 25);
                            *(this + 52) = v133 + 1;
                            *(v134 + 4 * v133) = v132;
                            v135 = *(this + 53) - *(this + 52);
                            if (v135 >= 1)
                            {
                              v136 = v135 + 1;
                              do
                              {
                                v137 = *(a2 + 1);
                                v138 = *(a2 + 2);
                                if (v138 - v137 < 2 || *v137 != 176 || v137[1] != 1)
                                {
                                  break;
                                }

                                *(a2 + 1) = v137 + 2;
                                v152[0] = 0;
                                if ((v137 + 2) >= v138 || (v139 = v137[2], (v139 & 0x80000000) != 0))
                                {
                                  result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v152);
                                  if (!result)
                                  {
                                    return result;
                                  }

                                  v139 = v152[0];
                                }

                                else
                                {
                                  *(a2 + 1) = v137 + 3;
                                }

                                v140 = *(this + 52);
                                if (v140 >= *(this + 53))
                                {
                                  wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                                  wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                                  wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                                  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v152);
                                  v140 = *(this + 52);
                                }

                                v141 = *(this + 25);
                                *(this + 52) = v140 + 1;
                                *(v141 + 4 * v140) = -(v139 & 1) ^ (v139 >> 1);
                                --v136;
                              }

                              while (v136 > 1);
                            }

LABEL_335:
                            v51 = *(a2 + 1);
                            v13 = *(a2 + 2);
                            if (v13 - v51 <= 1)
                            {
                              break;
                            }

                            v142 = *v51;
                            if (v142 == 184)
                            {
                              if (v51[1] == 1)
                              {
                                v19 = (v51 + 2);
                                *(a2 + 1) = v19;
LABEL_342:
                                if (v19 >= v13 || (v143 = *v19, v143 < 0))
                                {
                                  result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 54);
                                  if (!result)
                                  {
                                    return result;
                                  }

                                  v144 = *(a2 + 1);
                                  v13 = *(a2 + 2);
                                }

                                else
                                {
                                  *(this + 54) = v143;
                                  v144 = (v19 + 1);
                                  *(a2 + 1) = v144;
                                }

                                *(this + 59) |= 0x80000u;
                                if (v13 - v144 >= 2 && *v144 == 192 && v144[1] == 1)
                                {
                                  v27 = (v144 + 2);
                                  *(a2 + 1) = v27;
LABEL_351:
                                  if (v27 >= v13 || (v145 = *v27, v145 < 0))
                                  {
                                    result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 55);
                                    if (!result)
                                    {
                                      return result;
                                    }

                                    v146 = *(a2 + 1);
                                    v13 = *(a2 + 2);
                                  }

                                  else
                                  {
                                    *(this + 55) = v145;
                                    v146 = (v27 + 1);
                                    *(a2 + 1) = v146;
                                  }

                                  *(this + 59) |= 0x100000u;
                                  if (v13 - v146 >= 2 && *v146 == 200 && v146[1] == 1)
                                  {
                                    v14 = (v146 + 2);
                                    *(a2 + 1) = v14;
LABEL_360:
                                    if (v14 >= v13 || (v147 = *v14, v147 < 0))
                                    {
                                      result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 56);
                                      if (!result)
                                      {
                                        return result;
                                      }

                                      v148 = *(a2 + 1);
                                      v13 = *(a2 + 2);
                                    }

                                    else
                                    {
                                      *(this + 56) = v147;
                                      v148 = (v14 + 1);
                                      *(a2 + 1) = v148;
                                    }

                                    *(this + 59) |= 0x200000u;
                                    if (v13 - v148 >= 2 && *v148 == 208 && v148[1] == 1)
                                    {
                                      v18 = (v148 + 2);
                                      *(a2 + 1) = v18;
LABEL_369:
                                      if (v18 >= v13 || (v149 = *v18, v149 < 0))
                                      {
                                        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 57);
                                        if (!result)
                                        {
                                          return result;
                                        }

                                        v150 = *(a2 + 1);
                                        v13 = *(a2 + 2);
                                      }

                                      else
                                      {
                                        *(this + 57) = v149;
                                        v150 = v18 + 1;
                                        *(a2 + 1) = v150;
                                      }

                                      *(this + 59) |= 0x400000u;
                                      if (v150 == v13 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
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

                              goto LABEL_1;
                            }

                            if (v142 != 176 || v51[1] != 1)
                            {
                              goto LABEL_1;
                            }
                          }
                        }

                        goto LABEL_1;
                      }

                      if (v130 != 168 || v51[1] != 1)
                      {
                        goto LABEL_1;
                      }
                    }
                  }

                  goto LABEL_1;
                }

                if (v119 != 160 || v51[1] != 1)
                {
                  goto LABEL_1;
                }
              }
            }

            goto LABEL_1;
          }

          if (v107 != 152 || v51[1] != 1)
          {
            goto LABEL_1;
          }
        }
      }

      goto LABEL_1;
    }

    if (v96 != 146 || v51[1] != 1)
    {
      goto LABEL_1;
    }
  }
}

void sub_29636A548(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadPackedPrimitiveNoInline<int,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)17>(wireless_diagnostics::google::protobuf::io::CodedInputStream *this, uint64_t *a2)
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
      *(v9 + 4 * v8) = -(v7 & 1) ^ (v7 >> 1);
    }

    while (wireless_diagnostics::google::protobuf::io::CodedInputStream::BytesUntilLimit(this) > 0);
  }

  wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this);
  return 1;
}

uint64_t awd::metrics::BluetoothMagnetPhyStats::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 236);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(1, *(this + 8), a2, a4);
    v6 = *(v5 + 236);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_44;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(2, *(v5 + 16), a2, a4);
  v6 = *(v5 + 236);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_45;
  }

LABEL_44:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(3, *(v5 + 20), a2, a4);
  v6 = *(v5 + 236);
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_46;
  }

LABEL_45:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(4, *(v5 + 24), a2, a4);
  v6 = *(v5 + 236);
  if ((v6 & 0x10) == 0)
  {
LABEL_6:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_47;
  }

LABEL_46:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(5, *(v5 + 28), a2, a4);
  v6 = *(v5 + 236);
  if ((v6 & 0x20) == 0)
  {
LABEL_7:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_48;
  }

LABEL_47:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(6, *(v5 + 32), a2, a4);
  v6 = *(v5 + 236);
  if ((v6 & 0x40) == 0)
  {
LABEL_8:
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_49;
  }

LABEL_48:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xA, *(v5 + 36), a2, a4);
  v6 = *(v5 + 236);
  if ((v6 & 0x80) == 0)
  {
LABEL_9:
    if ((v6 & 0x100) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_50;
  }

LABEL_49:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xB, *(v5 + 40), a2, a4);
  v6 = *(v5 + 236);
  if ((v6 & 0x100) == 0)
  {
LABEL_10:
    if ((v6 & 0x200) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_51;
  }

LABEL_50:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xC, *(v5 + 44), a2, a4);
  v6 = *(v5 + 236);
  if ((v6 & 0x200) == 0)
  {
LABEL_11:
    if ((v6 & 0x400) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

LABEL_51:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xD, *(v5 + 48), a2, a4);
  if ((*(v5 + 236) & 0x400) != 0)
  {
LABEL_12:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xE, *(v5 + 52), a2, a4);
  }

LABEL_13:
  if (*(v5 + 64) >= 1)
  {
    v7 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0xF, *(*(v5 + 56) + 8 * v7++), a2, a4);
    }

    while (v7 < *(v5 + 64));
  }

  if (*(v5 + 88) >= 1)
  {
    v8 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x10, *(*(v5 + 80) + 8 * v8++), a2, a4);
    }

    while (v8 < *(v5 + 88));
  }

  if (*(v5 + 112) >= 1)
  {
    v9 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x11, *(*(v5 + 104) + 8 * v9++), a2, a4);
    }

    while (v9 < *(v5 + 112));
  }

  if (*(v5 + 136) >= 1)
  {
    v10 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x12, *(*(v5 + 128) + 8 * v10++), a2, a4);
    }

    while (v10 < *(v5 + 136));
  }

  if (*(v5 + 160) >= 1)
  {
    v11 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x13, *(*(v5 + 152) + 4 * v11++), a2, a4);
    }

    while (v11 < *(v5 + 160));
  }

  if (*(v5 + 176) >= 1)
  {
    v12 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteSInt32(0x14, *(*(v5 + 168) + 4 * v12++), a2, a4);
    }

    while (v12 < *(v5 + 176));
  }

  if (*(v5 + 192) >= 1)
  {
    v13 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x15, *(*(v5 + 184) + 4 * v13++), a2, a4);
    }

    while (v13 < *(v5 + 192));
  }

  if (*(v5 + 208) >= 1)
  {
    v14 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteSInt32(0x16, *(*(v5 + 200) + 4 * v14++), a2, a4);
    }

    while (v14 < *(v5 + 208));
  }

  v15 = *(v5 + 236);
  if ((v15 & 0x80000) != 0)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x17, *(v5 + 216), a2, a4);
    v15 = *(v5 + 236);
    if ((v15 & 0x100000) == 0)
    {
LABEL_39:
      if ((v15 & 0x200000) == 0)
      {
        goto LABEL_40;
      }

LABEL_55:
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x19, *(v5 + 224), a2, a4);
      if ((*(v5 + 236) & 0x400000) == 0)
      {
        return this;
      }

      goto LABEL_56;
    }
  }

  else if ((v15 & 0x100000) == 0)
  {
    goto LABEL_39;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x18, *(v5 + 220), a2, a4);
  v15 = *(v5 + 236);
  if ((v15 & 0x200000) != 0)
  {
    goto LABEL_55;
  }

LABEL_40:
  if ((v15 & 0x400000) == 0)
  {
    return this;
  }

LABEL_56:
  v16 = *(v5 + 228);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x1A, v16, a2, a4);
}

uint64_t awd::metrics::BluetoothMagnetPhyStats::ByteSize(awd::metrics::BluetoothMagnetPhyStats *this, unint64_t a2)
{
  v3 = *(this + 59);
  if (!v3)
  {
    v4 = 0;
    goto LABEL_42;
  }

  if (v3)
  {
    v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 1)) + 1;
    v3 = *(this + 59);
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
    v3 = *(this + 59);
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
      v3 = *(this + 59);
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
    v3 = *(this + 59);
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
    v3 = *(this + 59);
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
    v3 = *(this + 59);
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
    v3 = *(this + 59);
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
      v3 = *(this + 59);
    }

    else
    {
      v18 = 2;
    }

    v4 += v18;
  }

LABEL_42:
  if ((v3 & 0xFF00) == 0)
  {
    goto LABEL_59;
  }

  if ((v3 & 0x100) != 0)
  {
    v19 = *(this + 11);
    if (v19 >= 0x80)
    {
      v20 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v19) + 1;
      v3 = *(this + 59);
    }

    else
    {
      v20 = 2;
    }

    v4 += v20;
    if ((v3 & 0x200) == 0)
    {
LABEL_45:
      if ((v3 & 0x400) == 0)
      {
        goto LABEL_59;
      }

      goto LABEL_55;
    }
  }

  else if ((v3 & 0x200) == 0)
  {
    goto LABEL_45;
  }

  v21 = *(this + 12);
  if (v21 >= 0x80)
  {
    v22 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v21) + 1;
    v3 = *(this + 59);
  }

  else
  {
    v22 = 2;
  }

  v4 += v22;
  if ((v3 & 0x400) != 0)
  {
LABEL_55:
    v23 = *(this + 13);
    if (v23 >= 0x80)
    {
      v24 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v23) + 1;
      v3 = *(this + 59);
    }

    else
    {
      v24 = 2;
    }

    v4 += v24;
  }

LABEL_59:
  if ((v3 & 0x7F80000) == 0)
  {
    goto LABEL_81;
  }

  if ((v3 & 0x80000) != 0)
  {
    v25 = *(this + 54);
    if (v25 >= 0x80)
    {
      v26 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v25) + 2;
      v3 = *(this + 59);
    }

    else
    {
      v26 = 3;
    }

    v4 += v26;
    if ((v3 & 0x100000) == 0)
    {
LABEL_62:
      if ((v3 & 0x200000) == 0)
      {
        goto LABEL_63;
      }

      goto LABEL_73;
    }
  }

  else if ((v3 & 0x100000) == 0)
  {
    goto LABEL_62;
  }

  v27 = *(this + 55);
  if (v27 >= 0x80)
  {
    v28 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v27) + 2;
    v3 = *(this + 59);
  }

  else
  {
    v28 = 3;
  }

  v4 += v28;
  if ((v3 & 0x200000) == 0)
  {
LABEL_63:
    if ((v3 & 0x400000) == 0)
    {
      goto LABEL_81;
    }

    goto LABEL_77;
  }

LABEL_73:
  v29 = *(this + 56);
  if (v29 >= 0x80)
  {
    v30 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v29) + 2;
    v3 = *(this + 59);
  }

  else
  {
    v30 = 3;
  }

  v4 += v30;
  if ((v3 & 0x400000) != 0)
  {
LABEL_77:
    v31 = *(this + 57);
    if (v31 >= 0x80)
    {
      v32 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v31) + 2;
    }

    else
    {
      v32 = 3;
    }

    v4 += v32;
  }

LABEL_81:
  v33 = *(this + 16);
  v34 = v33 + v4;
  if (v33 >= 1)
  {
    v35 = 0;
    do
    {
      v36 = awd::metrics::BluetoothMagnetPhyStats_BluetoothMagnetPhyStatsPERvsRSSI::ByteSize(*(*(this + 7) + 8 * v35), a2);
      v37 = v36;
      if (v36 >= 0x80)
      {
        v38 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v36);
      }

      else
      {
        v38 = 1;
      }

      v34 += v37 + v38;
      ++v35;
    }

    while (v35 < *(this + 16));
  }

  v39 = *(this + 22);
  v40 = v34 + 2 * v39;
  if (v39 >= 1)
  {
    v41 = 0;
    do
    {
      v42 = awd::metrics::BluetoothMagnetPhyStats_BluetoothMagnetPhyStatsPERvsRSSI::ByteSize(*(*(this + 10) + 8 * v41), a2);
      v43 = v42;
      if (v42 >= 0x80)
      {
        v44 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v42);
      }

      else
      {
        v44 = 1;
      }

      v40 += v43 + v44;
      ++v41;
    }

    while (v41 < *(this + 22));
  }

  v45 = *(this + 28);
  v46 = v40 + 2 * v45;
  if (v45 >= 1)
  {
    v47 = 0;
    do
    {
      v48 = awd::metrics::BluetoothMagnetPhyStats_BluetoothMagnetPhyStatsPERvsRSSI::ByteSize(*(*(this + 13) + 8 * v47), a2);
      v49 = v48;
      if (v48 >= 0x80)
      {
        v50 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v48);
      }

      else
      {
        v50 = 1;
      }

      v46 += v49 + v50;
      ++v47;
    }

    while (v47 < *(this + 28));
  }

  v51 = *(this + 34);
  v52 = v46 + 2 * v51;
  if (v51 >= 1)
  {
    v53 = 0;
    do
    {
      v54 = awd::metrics::BluetoothMagnetPhyStats_BluetoothMagnetPhyStatsPERvsRSSI::ByteSize(*(*(this + 16) + 8 * v53), a2);
      v55 = v54;
      if (v54 >= 0x80)
      {
        v56 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v54);
      }

      else
      {
        v56 = 1;
      }

      v52 += v55 + v56;
      ++v53;
    }

    while (v53 < *(this + 34));
  }

  v57 = *(this + 40);
  if (v57 < 1)
  {
    v59 = 0;
  }

  else
  {
    v58 = 0;
    v59 = 0;
    do
    {
      v60 = *(*(this + 19) + 4 * v58);
      if (v60 >= 0x80)
      {
        v61 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v60);
        v57 = *(this + 40);
      }

      else
      {
        v61 = 1;
      }

      v59 += v61;
      ++v58;
    }

    while (v58 < v57);
  }

  v62 = *(this + 44);
  if (v62 < 1)
  {
    v64 = 0;
  }

  else
  {
    v63 = 0;
    v64 = 0;
    do
    {
      v65 = *(*(this + 21) + 4 * v63);
      v66 = ((2 * v65) ^ (v65 >> 31));
      if (v66 >= 0x80)
      {
        v67 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v66);
        v62 = *(this + 44);
      }

      else
      {
        v67 = 1;
      }

      v64 += v67;
      ++v63;
    }

    while (v63 < v62);
  }

  v68 = *(this + 48);
  if (v68 < 1)
  {
    v70 = 0;
  }

  else
  {
    v69 = 0;
    v70 = 0;
    do
    {
      v71 = *(*(this + 23) + 4 * v69);
      if (v71 >= 0x80)
      {
        v72 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v71);
        v68 = *(this + 48);
      }

      else
      {
        v72 = 1;
      }

      v70 += v72;
      ++v69;
    }

    while (v69 < v68);
  }

  v73 = *(this + 52);
  if (v73 < 1)
  {
    v75 = 0;
  }

  else
  {
    v74 = 0;
    v75 = 0;
    do
    {
      v76 = *(*(this + 25) + 4 * v74);
      v77 = ((2 * v76) ^ (v76 >> 31));
      if (v77 >= 0x80)
      {
        v78 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v77);
        v73 = *(this + 52);
      }

      else
      {
        v78 = 1;
      }

      v75 += v78;
      ++v74;
    }

    while (v74 < v73);
  }

  result = (v59 + v52 + v64 + v70 + v75 + 2 * (v62 + v57 + v68 + v73));
  *(this + 58) = result;
  return result;
}

void awd::metrics::BluetoothMagnetPhyStats::CheckTypeAndMergeFrom(awd::metrics::BluetoothMagnetPhyStats *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  {
    awd::metrics::BluetoothMagnetPhyStats::CheckTypeAndMergeFrom();
  }

  awd::metrics::BluetoothMagnetPhyStats::MergeFrom(this, lpsrc);
}

void awd::metrics::BluetoothMagnetPhyStats::CopyFrom(const awd::metrics::BluetoothMagnetPhyStats *this, const awd::metrics::BluetoothMagnetPhyStats *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    awd::metrics::BluetoothMagnetPhyStats::MergeFrom(this, a2);
  }
}

double awd::metrics::BluetoothMagnetPhyStats::Swap(awd::metrics::BluetoothMagnetPhyStats *this, awd::metrics::BluetoothMagnetPhyStats *a2)
{
  if (a2 != this)
  {
    v4 = *(this + 1);
    *(this + 1) = *(a2 + 1);
    *(a2 + 1) = v4;
    LODWORD(v4) = *(this + 4);
    *(this + 4) = *(a2 + 4);
    *(a2 + 4) = v4;
    LODWORD(v4) = *(this + 5);
    *(this + 5) = *(a2 + 5);
    *(a2 + 5) = v4;
    LODWORD(v4) = *(this + 6);
    *(this + 6) = *(a2 + 6);
    *(a2 + 6) = v4;
    LODWORD(v4) = *(this + 7);
    *(this + 7) = *(a2 + 7);
    *(a2 + 7) = v4;
    LODWORD(v4) = *(this + 8);
    *(this + 8) = *(a2 + 8);
    *(a2 + 8) = v4;
    LODWORD(v4) = *(this + 9);
    *(this + 9) = *(a2 + 9);
    *(a2 + 9) = v4;
    LODWORD(v4) = *(this + 10);
    *(this + 10) = *(a2 + 10);
    *(a2 + 10) = v4;
    LODWORD(v4) = *(this + 11);
    *(this + 11) = *(a2 + 11);
    *(a2 + 11) = v4;
    LODWORD(v4) = *(this + 12);
    *(this + 12) = *(a2 + 12);
    *(a2 + 12) = v4;
    LODWORD(v4) = *(this + 13);
    *(this + 13) = *(a2 + 13);
    *(a2 + 13) = v4;
    wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Swap();
    wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Swap();
    wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Swap();
    wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Swap();
    v5 = *(this + 19);
    *(this + 19) = *(a2 + 19);
    v6 = *(a2 + 20);
    *(a2 + 19) = v5;
    v7 = *(this + 20);
    *(this + 20) = v6;
    *(a2 + 20) = v7;
    v8 = *(this + 21);
    *(this + 21) = *(a2 + 21);
    v9 = *(a2 + 22);
    *(a2 + 21) = v8;
    v10 = *(this + 22);
    *(this + 22) = v9;
    *(a2 + 22) = v10;
    v11 = *(this + 23);
    *(this + 23) = *(a2 + 23);
    v12 = *(a2 + 24);
    *(a2 + 23) = v11;
    v13 = *(this + 24);
    *(this + 24) = v12;
    *(a2 + 24) = v13;
    v14 = *(this + 25);
    *(this + 25) = *(a2 + 25);
    result = *(a2 + 26);
    *(a2 + 25) = v14;
    v16 = *(this + 26);
    *(this + 26) = result;
    *(a2 + 26) = v16;
    LODWORD(v14) = *(this + 54);
    *(this + 54) = *(a2 + 54);
    *(a2 + 54) = v14;
    LODWORD(v14) = *(this + 55);
    *(this + 55) = *(a2 + 55);
    *(a2 + 55) = v14;
    LODWORD(v14) = *(this + 56);
    *(this + 56) = *(a2 + 56);
    *(a2 + 56) = v14;
    LODWORD(v14) = *(this + 57);
    *(this + 57) = *(a2 + 57);
    *(a2 + 57) = v14;
    LODWORD(v14) = *(this + 59);
    *(this + 59) = *(a2 + 59);
    *(a2 + 59) = v14;
    LODWORD(v14) = *(this + 58);
    *(this + 58) = *(a2 + 58);
    *(a2 + 58) = v14;
  }

  return result;
}

void *awd::metrics::BluetoothMagnetDisconnectData::SharedCtor(void *this)
{
  this[3] = 0;
  v1 = MEMORY[0x29EDC9758];
  this[1] = 0;
  this[2] = v1;
  return this;
}

awd::metrics::BluetoothMagnetDisconnectData *awd::metrics::BluetoothMagnetDisconnectData::BluetoothMagnetDisconnectData(awd::metrics::BluetoothMagnetDisconnectData *this, const awd::metrics::BluetoothMagnetDisconnectData *a2)
{
  *this = &unk_2A1D4B1C0;
  *(this + 1) = 0;
  *(this + 2) = MEMORY[0x29EDC9758];
  *(this + 3) = 0;
  awd::metrics::BluetoothMagnetDisconnectData::MergeFrom(this, a2);
  return this;
}

void awd::metrics::BluetoothMagnetDisconnectData::MergeFrom(awd::metrics::BluetoothMagnetDisconnectData *this, const awd::metrics::BluetoothMagnetDisconnectData *a2)
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

void sub_29636B4A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::metrics::BluetoothMagnetDisconnectData::~BluetoothMagnetDisconnectData(awd::metrics::BluetoothMagnetDisconnectData *this)
{
  *this = &unk_2A1D4B1C0;
  awd::metrics::BluetoothMagnetDisconnectData::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2A1D4B1C0;
  awd::metrics::BluetoothMagnetDisconnectData::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2A1D4B1C0;
  awd::metrics::BluetoothMagnetDisconnectData::SharedDtor(this);
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  JUMPOUT(0x29C259F00);
}

uint64_t awd::metrics::BluetoothMagnetDisconnectData::SharedDtor(uint64_t this)
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

uint64_t awd::metrics::BluetoothMagnetDisconnectData::default_instance(awd::metrics::BluetoothMagnetDisconnectData *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = awd::metrics::BluetoothMagnetDisconnectData::default_instance_;
  if (!awd::metrics::BluetoothMagnetDisconnectData::default_instance_)
  {
    awd::metrics::protobuf_AddDesc_Bluetooth_2eproto(0, a2, a3, a4);
    return awd::metrics::BluetoothMagnetDisconnectData::default_instance_;
  }

  return result;
}

uint64_t awd::metrics::BluetoothMagnetDisconnectData::Clear(uint64_t this)
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

uint64_t awd::metrics::BluetoothMagnetDisconnectData::MergePartialFromCodedStream(awd::metrics::BluetoothMagnetDisconnectData *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
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
        if (TagFallback >> 3 != 6)
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
      if (v12 < v9 && *v12 == 50)
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

uint64_t awd::metrics::BluetoothMagnetDisconnectData::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
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

    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBytes();
  }

  return this;
}

uint64_t awd::metrics::BluetoothMagnetDisconnectData::ByteSize(wireless_diagnostics::google::protobuf::io::CodedOutputStream **this, unint64_t a2)
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

void awd::metrics::BluetoothMagnetDisconnectData::CheckTypeAndMergeFrom(awd::metrics::BluetoothMagnetDisconnectData *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  {
    awd::metrics::BluetoothMagnetDisconnectData::CheckTypeAndMergeFrom();
  }

  awd::metrics::BluetoothMagnetDisconnectData::MergeFrom(this, lpsrc);
}

void awd::metrics::BluetoothMagnetDisconnectData::CopyFrom(awd::metrics::BluetoothMagnetDisconnectData *this, const awd::metrics::BluetoothMagnetDisconnectData *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    awd::metrics::BluetoothMagnetDisconnectData::MergeFrom(this, a2);
  }
}

uint64_t awd::metrics::BluetoothMagnetDisconnectData::Swap(uint64_t this, awd::metrics::BluetoothMagnetDisconnectData *a2)
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

void *awd::metrics::BluetoothCloudPairingInitiated::SharedCtor(void *this)
{
  v1 = MEMORY[0x29EDC9758];
  this[1] = 0;
  this[2] = v1;
  this[3] = v1;
  this[4] = v1;
  this[5] = v1;
  this[6] = 0;
  return this;
}

awd::metrics::BluetoothCloudPairingInitiated *awd::metrics::BluetoothCloudPairingInitiated::BluetoothCloudPairingInitiated(awd::metrics::BluetoothCloudPairingInitiated *this, const awd::metrics::BluetoothCloudPairingInitiated *a2)
{
  *(this + 6) = 0;
  *this = &unk_2A1D4B238;
  *(this + 1) = 0;
  v3 = MEMORY[0x29EDC9758];
  *(this + 2) = MEMORY[0x29EDC9758];
  *(this + 3) = v3;
  *(this + 4) = v3;
  *(this + 5) = v3;
  awd::metrics::BluetoothCloudPairingInitiated::MergeFrom(this, a2);
  return this;
}

void awd::metrics::BluetoothCloudPairingInitiated::MergeFrom(awd::metrics::BluetoothCloudPairingInitiated *this, const awd::metrics::BluetoothCloudPairingInitiated *a2)
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
    v5 = *(a2 + 1);
    *(this + 13) |= 1u;
    *(this + 1) = v5;
    v4 = *(a2 + 13);
  }

  v6 = MEMORY[0x29EDC9758];
  if ((v4 & 2) == 0)
  {
    if ((v4 & 4) == 0)
    {
      goto LABEL_8;
    }

LABEL_14:
    v9 = *(a2 + 3);
    *(this + 13) |= 4u;
    v10 = *(this + 3);
    if (v10 == v6)
    {
      operator new();
    }

    std::string::operator=(v10, v9);
    v4 = *(a2 + 13);
    if ((v4 & 8) == 0)
    {
LABEL_9:
      if ((v4 & 0x10) == 0)
      {
        return;
      }

      goto LABEL_20;
    }

    goto LABEL_17;
  }

  v7 = *(a2 + 2);
  *(this + 13) |= 2u;
  v8 = *(this + 2);
  if (v8 == v6)
  {
    operator new();
  }

  std::string::operator=(v8, v7);
  v4 = *(a2 + 13);
  if ((v4 & 4) != 0)
  {
    goto LABEL_14;
  }

LABEL_8:
  if ((v4 & 8) == 0)
  {
    goto LABEL_9;
  }

LABEL_17:
  v11 = *(a2 + 4);
  *(this + 13) |= 8u;
  v12 = *(this + 4);
  if (v12 == v6)
  {
    operator new();
  }

  std::string::operator=(v12, v11);
  if ((*(a2 + 13) & 0x10) != 0)
  {
LABEL_20:
    v13 = *(a2 + 5);
    *(this + 13) |= 0x10u;
    v14 = *(this + 5);
    if (v14 == v6)
    {
      operator new();
    }

    std::string::operator=(v14, v13);
  }
}

void sub_29636BDCC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::metrics::BluetoothCloudPairingInitiated::~BluetoothCloudPairingInitiated(awd::metrics::BluetoothCloudPairingInitiated *this)
{
  *this = &unk_2A1D4B238;
  awd::metrics::BluetoothCloudPairingInitiated::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2A1D4B238;
  awd::metrics::BluetoothCloudPairingInitiated::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2A1D4B238;
  awd::metrics::BluetoothCloudPairingInitiated::SharedDtor(this);
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  JUMPOUT(0x29C259F00);
}

void *awd::metrics::BluetoothCloudPairingInitiated::SharedDtor(void *this)
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

  v5 = v1[3];
  if (v5 != v3 && v5 != 0)
  {
    if (*(v5 + 23) < 0)
    {
      operator delete(*v5);
    }

    this = MEMORY[0x29C259F00](v5, 0x1012C40EC159624);
  }

  v7 = v1[4];
  if (v7 != v3 && v7 != 0)
  {
    if (*(v7 + 23) < 0)
    {
      operator delete(*v7);
    }

    this = MEMORY[0x29C259F00](v7, 0x1012C40EC159624);
  }

  v9 = v1[5];
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

uint64_t awd::metrics::BluetoothCloudPairingInitiated::default_instance(awd::metrics::BluetoothCloudPairingInitiated *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = awd::metrics::BluetoothCloudPairingInitiated::default_instance_;
  if (!awd::metrics::BluetoothCloudPairingInitiated::default_instance_)
  {
    awd::metrics::protobuf_AddDesc_Bluetooth_2eproto(0, a2, a3, a4);
    return awd::metrics::BluetoothCloudPairingInitiated::default_instance_;
  }

  return result;
}

uint64_t awd::metrics::BluetoothCloudPairingInitiated::Clear(uint64_t this)
{
  v1 = *(this + 52);
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

    if ((*(this + 52) & 4) != 0)
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

    if ((*(this + 52) & 8) != 0)
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

    if ((*(this + 52) & 0x10) != 0)
    {
      v6 = *(this + 40);
      if (v6 != v2)
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

  *(this + 52) = 0;
  return this;
}

uint64_t awd::metrics::BluetoothCloudPairingInitiated::MergePartialFromCodedStream(awd::metrics::BluetoothCloudPairingInitiated *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
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

          v10 = *(this + 13);
          goto LABEL_33;
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

          v15 = *(a2 + 1);
          if (v15 < *(a2 + 2) && *v15 == 26)
          {
            *(a2 + 1) = v15 + 1;
LABEL_39:
            *(this + 13) |= 4u;
            if (*(this + 3) == v5)
            {
              operator new();
            }

            result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
            if (!result)
            {
              return result;
            }

            v16 = *(a2 + 1);
            if (v16 < *(a2 + 2) && *v16 == 34)
            {
              *(a2 + 1) = v16 + 1;
              goto LABEL_45;
            }
          }
        }
      }

      if (v8 == 3)
      {
        if (v9 != 2)
        {
          goto LABEL_22;
        }

        goto LABEL_39;
      }

      if (v8 != 4)
      {
        break;
      }

      if (v9 != 2)
      {
        goto LABEL_22;
      }

LABEL_45:
      *(this + 13) |= 8u;
      if (*(this + 4) == v5)
      {
        operator new();
      }

      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
      if (!result)
      {
        return result;
      }

      v17 = *(a2 + 1);
      if (v17 < *(a2 + 2) && *v17 == 42)
      {
        *(a2 + 1) = v17 + 1;
LABEL_51:
        *(this + 13) |= 0x10u;
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

    if (v8 == 5 && v9 == 2)
    {
      goto LABEL_51;
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

uint64_t awd::metrics::BluetoothCloudPairingInitiated::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v4 = this;
  v5 = *(this + 52);
  if (v5)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(1, *(this + 8), a2, a4);
    v5 = *(v4 + 52);
    if ((v5 & 2) == 0)
    {
LABEL_3:
      if ((v5 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_9;
    }
  }

  else if ((v5 & 2) == 0)
  {
    goto LABEL_3;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
  v5 = *(v4 + 52);
  if ((v5 & 4) == 0)
  {
LABEL_4:
    if ((v5 & 8) == 0)
    {
      goto LABEL_5;
    }

LABEL_10:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
    if ((*(v4 + 52) & 0x10) == 0)
    {
      return this;
    }

    goto LABEL_11;
  }

LABEL_9:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
  v5 = *(v4 + 52);
  if ((v5 & 8) != 0)
  {
    goto LABEL_10;
  }

LABEL_5:
  if ((v5 & 0x10) == 0)
  {
    return this;
  }

LABEL_11:

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
}

uint64_t awd::metrics::BluetoothCloudPairingInitiated::ByteSize(awd::metrics::BluetoothCloudPairingInitiated *this, unint64_t a2)
{
  LOBYTE(v3) = *(this + 52);
  if (!v3)
  {
    v4 = 0;
    goto LABEL_47;
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
      v3 = *(this + 13);
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

    v4 = (v4 + v16 + v12 + 1);
    if ((v3 & 8) == 0)
    {
LABEL_18:
      if ((v3 & 0x10) == 0)
      {
        goto LABEL_47;
      }

      goto LABEL_38;
    }
  }

  else if ((v3 & 8) == 0)
  {
    goto LABEL_18;
  }

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
    v3 = *(this + 13);
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

  v4 = (v4 + v22 + v18 + 1);
  if ((v3 & 0x10) != 0)
  {
LABEL_38:
    v23 = *(this + 5);
    v24 = *(v23 + 23);
    v25 = v24;
    v26 = *(v23 + 8);
    if ((v24 & 0x80u) == 0)
    {
      v27 = *(v23 + 23);
    }

    else
    {
      v27 = v26;
    }

    if (v27 >= 0x80)
    {
      v28 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v27);
      v24 = *(v23 + 23);
      v26 = *(v23 + 8);
      v25 = *(v23 + 23);
    }

    else
    {
      v28 = 1;
    }

    if (v25 < 0)
    {
      v24 = v26;
    }

    v4 = (v4 + v28 + v24 + 1);
  }

LABEL_47:
  *(this + 12) = v4;
  return v4;
}