uint64_t CLMicroLocationProto::FingerprintMeasurement::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 36);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(1, a2, *(this + 8), a3);
    v6 = *(v5 + 36);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

LABEL_8:
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(3, a2, *(v5 + 20), a3);
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

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(2, *(v5 + 16), a2, a4);
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
  v7 = *(v5 + 24);
  if (!v7)
  {
    CLMicroLocationProto::protobuf_AddDesc_microlocation_2eproto(this);
    v7 = *(CLMicroLocationProto::FingerprintMeasurement::default_instance_ + 24);
  }

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(4, v7, a2, a4);
}

uint64_t CLMicroLocationProto::FingerprintMeasurement::ByteSize(CLMicroLocationProto::FingerprintMeasurement *this, unint64_t a2)
{
  v3 = *(this + 36);
  if (*(this + 36))
  {
    LODWORD(v4) = (v3 << 31 >> 31) & 9;
    if ((v3 & 2) != 0)
    {
      v5 = *(this + 4);
      if ((v5 & 0x80000000) != 0)
      {
        v6 = 11;
      }

      else if (v5 >= 0x80)
      {
        v6 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5) + 1;
        v3 = *(this + 9);
      }

      else
      {
        v6 = 2;
      }

      LODWORD(v4) = v6 + v4;
    }

    if ((v3 & 4) != 0)
    {
      v4 = (v4 + 5);
    }

    else
    {
      v4 = v4;
    }

    if ((v3 & 8) != 0)
    {
      v7 = *(this + 3);
      if (!v7)
      {
        CLMicroLocationProto::protobuf_AddDesc_microlocation_2eproto(0);
        v7 = *(CLMicroLocationProto::FingerprintMeasurement::default_instance_ + 24);
      }

      v8 = CLMicroLocationProto::DeviceId::ByteSize(v7, a2);
      v9 = v8;
      if (v8 >= 0x80)
      {
        v10 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v8);
      }

      else
      {
        v10 = 1;
      }

      v4 = (v4 + v9 + v10 + 1);
    }
  }

  else
  {
    v4 = 0;
  }

  *(this + 8) = v4;
  return v4;
}

void CLMicroLocationProto::FingerprintMeasurement::CheckTypeAndMergeFrom(CLMicroLocationProto::FingerprintMeasurement *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  {
    CLMicroLocationProto::BleLeechedBeacons::CheckTypeAndMergeFrom();
  }

  CLMicroLocationProto::FingerprintMeasurement::MergeFrom(this, lpsrc);
}

void CLMicroLocationProto::FingerprintMeasurement::CopyFrom(CLMicroLocationProto::FingerprintMeasurement *this, const CLMicroLocationProto::FingerprintMeasurement *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    CLMicroLocationProto::FingerprintMeasurement::MergeFrom(this, a2);
  }
}

double CLMicroLocationProto::PhotoFeatures::MergeFrom(CLMicroLocationProto::PhotoFeatures *this, const CLMicroLocationProto::PhotoFeatures *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v6);
  }

  v5 = *(a2 + 6);
  if (v5)
  {
    wireless_diagnostics::google::protobuf::RepeatedField<float>::Reserve(this + 4, *(this + 6) + v5);
    memcpy((*(this + 2) + 4 * *(this + 6)), *(a2 + 2), 4 * *(a2 + 6));
    *(this + 6) += *(a2 + 6);
  }

  if (*(a2 + 36))
  {
    result = *(a2 + 1);
    *(this + 9) |= 1u;
    *(this + 1) = result;
  }

  return result;
}

void sub_2590E205C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void CLMicroLocationProto::PhotoFeatures::~PhotoFeatures(CLMicroLocationProto::PhotoFeatures *this)
{
  *this = &unk_286A57990;
  CLMicroLocationProto::protobuf_AddDesc_microlocation_2eproto(this);
  v2 = *(this + 2);
  if (v2)
  {
    MEMORY[0x259CA1F70](v2, 0x1000C8052888210);
  }

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  CLMicroLocationProto::PhotoFeatures::~PhotoFeatures(this);

  JUMPOUT(0x259CA1F90);
}

uint64_t CLMicroLocationProto::PhotoFeatures::Clear(uint64_t this)
{
  if (*(this + 36))
  {
    *(this + 8) = 0;
  }

  *(this + 24) = 0;
  *(this + 36) = 0;
  return this;
}

uint64_t CLMicroLocationProto::PhotoFeatures::MergePartialFromCodedStream(CLMicroLocationProto::PhotoFeatures *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
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

        v7 = TagFallback & 7;
        if (TagFallback >> 3 == 2)
        {
          break;
        }

        if (TagFallback >> 3 != 1 || v7 != 1)
        {
          goto LABEL_15;
        }

        *v21 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v21) & 1) == 0)
        {
          return 0;
        }

        *(this + 1) = *v21;
        *(this + 9) |= 1u;
        v8 = *(a2 + 1);
        if (v8 < *(a2 + 2) && *v8 == 21)
        {
          goto LABEL_21;
        }
      }

      if (v7 == 2)
      {
        break;
      }

      if (v7 == 5)
      {
        goto LABEL_22;
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

    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadPackedPrimitiveNoInline<float,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)2>(a2, this + 4);
    if (!result)
    {
      return result;
    }

LABEL_19:
    v8 = *(a2 + 1);
    v10 = *(a2 + 2);
    if (v8 < v10 && *v8 == 21)
    {
      break;
    }

    if (v8 == v10 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
    {
      *(a2 + 8) = 0;
      result = 1;
      *(a2 + 36) = 1;
      return result;
    }
  }

LABEL_21:
  *(a2 + 1) = v8 + 1;
LABEL_22:
  v21[0] = 0;
  if (wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a2, v21))
  {
    v11 = v21[0];
    v12 = *(this + 6);
    if (v12 == *(this + 7))
    {
      wireless_diagnostics::google::protobuf::RepeatedField<float>::Reserve(this + 4, v12 + 1);
      v12 = *(this + 6);
    }

    v13 = *(this + 2);
    v14 = v12 + 1;
    *(this + 6) = v12 + 1;
    *(v13 + 4 * v12) = v11;
    v15 = *(a2 + 1);
    v16 = *(a2 + 4) - v15;
    if (v16 >= 1)
    {
      v17 = v16 / 5u;
      v18 = v17 >= *(this + 7) - v14 ? *(this + 7) - v14 : v17;
      if (v18 >= 1)
      {
        v19 = 0;
        while (*v15 == 21)
        {
          v20 = *(v15 + 1);
          if (v14 >= *(this + 7))
          {
            wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
            wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
            wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
            wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v21);
            v14 = *(this + 6);
            v13 = *(this + 2);
          }

          *(this + 6) = v14 + 1;
          *(v13 + 4 * v14) = v20;
          ++v19;
          v15 += 5;
          ++v14;
          if (v18 == v19)
          {
            goto LABEL_41;
          }
        }

        if (!v19)
        {
          goto LABEL_19;
        }

LABEL_41:
        wireless_diagnostics::google::protobuf::io::CodedInputStream::Skip(a2);
      }
    }

    goto LABEL_19;
  }

  return 0;
}

void sub_2590E243C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadPackedPrimitiveNoInline<float,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)2>(wireless_diagnostics::google::protobuf::io::CodedInputStream *this, _DWORD *a2)
{
  v9 = 0;
  v4 = *(this + 1);
  if (v4 >= *(this + 2) || *v4 < 0)
  {
    result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v9);
    if (!result)
    {
      return result;
    }
  }

  else
  {
    v9 = *v4;
    *(this + 1) = v4 + 1;
  }

  wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this);
  if (wireless_diagnostics::google::protobuf::io::CodedInputStream::BytesUntilLimit(this) < 1)
  {
LABEL_10:
    wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this);
    return 1;
  }

  else
  {
    while (1)
    {
      v10 = 0;
      result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(this, &v10);
      if (!result)
      {
        break;
      }

      v6 = v10;
      v7 = a2[2];
      if (v7 == a2[3])
      {
        wireless_diagnostics::google::protobuf::RepeatedField<float>::Reserve(a2, v7 + 1);
        v7 = a2[2];
      }

      v8 = *a2;
      a2[2] = v7 + 1;
      *(v8 + 4 * v7) = v6;
      if (wireless_diagnostics::google::protobuf::io::CodedInputStream::BytesUntilLimit(this) <= 0)
      {
        goto LABEL_10;
      }
    }
  }

  return result;
}

uint64_t CLMicroLocationProto::PhotoFeatures::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3)
{
  v4 = this;
  if (*(this + 36))
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(1, a2, *(this + 8), a3);
  }

  if (*(v4 + 24) >= 1)
  {
    v5 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(2, a2, *(*(v4 + 16) + 4 * v5++), a3);
    }

    while (v5 < *(v4 + 24));
  }

  return this;
}

uint64_t CLMicroLocationProto::PhotoFeatures::ByteSize(CLMicroLocationProto::PhotoFeatures *this)
{
  v1 = (((*(this + 9) << 31) >> 31) & 9u) + 5 * *(this + 6);
  *(this + 8) = v1;
  return v1;
}

double CLMicroLocationProto::PhotoFeatures::CheckTypeAndMergeFrom(CLMicroLocationProto::PhotoFeatures *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  {
    CLMicroLocationProto::BleLeechedBeacons::CheckTypeAndMergeFrom();
  }

  return CLMicroLocationProto::PhotoFeatures::MergeFrom(this, lpsrc);
}

double CLMicroLocationProto::PhotoFeatures::CopyFrom(CLMicroLocationProto::PhotoFeatures *this, const CLMicroLocationProto::PhotoFeatures *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    return CLMicroLocationProto::PhotoFeatures::MergeFrom(this, a2);
  }

  return result;
}

void CLMicroLocationProto::Fingerprint::MergeFrom(CLMicroLocationProto::Fingerprint *this, const CLMicroLocationProto::Fingerprint *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v27);
  }

  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 8));
  LODWORD(v4) = *(a2 + 4);
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
        wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v27);
      }

      v6 = *(*(a2 + 1) + 8 * v5);
      v7 = *(this + 5);
      v8 = *(this + 4);
      if (v8 >= v7)
      {
        if (v7 == *(this + 6))
        {
          wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 8));
          v7 = *(this + 5);
        }

        *(this + 5) = v7 + 1;
        operator new();
      }

      v9 = *(this + 1);
      *(this + 4) = v8 + 1;
      CLMicroLocationProto::Measurement::MergeFrom(*(v9 + 8 * v8), v6);
      ++v5;
      v4 = *(a2 + 4);
    }

    while (v5 < v4);
  }

  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 72));
  LODWORD(v10) = *(a2 + 20);
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
        wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v27);
      }

      v12 = *(*(a2 + 9) + 8 * v11);
      v13 = *(this + 21);
      v14 = *(this + 20);
      if (v14 >= v13)
      {
        if (v13 == *(this + 22))
        {
          wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 72));
          v13 = *(this + 21);
        }

        *(this + 21) = v13 + 1;
        operator new();
      }

      v15 = *(this + 9);
      *(this + 20) = v14 + 1;
      CLMicroLocationProto::FingerprintMeasurement::MergeFrom(*(v15 + 8 * v14), v12);
      ++v11;
      v10 = *(a2 + 20);
    }

    while (v11 < v10);
  }

  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::MergeFrom<wireless_diagnostics::google::protobuf::RepeatedPtrField<CLMicroLocationProto::PhotoFeatures>::TypeHandler>((this + 96), a2 + 96);
  v16 = *(a2 + 32);
  if ((v16 & 0x1FE) == 0)
  {
    goto LABEL_32;
  }

  if ((v16 & 2) == 0)
  {
    if ((v16 & 4) == 0)
    {
      goto LABEL_26;
    }

LABEL_36:
    v22 = *(a2 + 5);
    *(this + 32) |= 4u;
    *(this + 5) = v22;
    v16 = *(a2 + 32);
    if ((v16 & 8) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_27;
  }

  v21 = *(a2 + 4);
  *(this + 32) |= 2u;
  *(this + 4) = v21;
  v16 = *(a2 + 32);
  if ((v16 & 4) != 0)
  {
    goto LABEL_36;
  }

LABEL_26:
  if ((v16 & 8) != 0)
  {
LABEL_27:
    v17 = *(a2 + 6);
    *(this + 32) |= 8u;
    *(this + 6) = v17;
    v16 = *(a2 + 32);
  }

LABEL_28:
  v18 = MEMORY[0x277D82C30];
  if ((v16 & 0x10) != 0)
  {
    v23 = *(a2 + 7);
    *(this + 32) |= 0x10u;
    v24 = *(this + 7);
    if (v24 == v18)
    {
      operator new();
    }

    std::string::operator=(v24, v23);
    v16 = *(a2 + 32);
    if ((v16 & 0x20) == 0)
    {
LABEL_30:
      if ((v16 & 0x80) == 0)
      {
        goto LABEL_32;
      }

      goto LABEL_31;
    }
  }

  else if ((v16 & 0x20) == 0)
  {
    goto LABEL_30;
  }

  v25 = *(a2 + 8);
  *(this + 32) |= 0x20u;
  v26 = *(this + 8);
  if (v26 == v18)
  {
    operator new();
  }

  std::string::operator=(v26, v25);
  v16 = *(a2 + 32);
  if ((v16 & 0x80) != 0)
  {
LABEL_31:
    v19 = *(a2 + 120);
    *(this + 32) |= 0x80u;
    *(this + 120) = v19;
    v16 = *(a2 + 32);
  }

LABEL_32:
  if ((v16 & 0x100) != 0)
  {
    v20 = *(a2 + 121);
    *(this + 32) |= 0x100u;
    *(this + 121) = v20;
  }
}

void sub_2590E2B70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void CLMicroLocationProto::Fingerprint::~Fingerprint(CLMicroLocationProto::Fingerprint *this)
{
  *this = &unk_286A57A08;
  CLMicroLocationProto::Fingerprint::SharedDtor(this);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<CLMicroLocationProto::Measurement>::TypeHandler>(this + 12);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<CLMicroLocationProto::Measurement>::TypeHandler>(this + 9);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<CLMicroLocationProto::Measurement>::TypeHandler>(this + 1);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  CLMicroLocationProto::Fingerprint::~Fingerprint(this);

  JUMPOUT(0x259CA1F90);
}

void CLMicroLocationProto::Fingerprint::SharedDtor(CLMicroLocationProto::Fingerprint *this)
{
  v1 = this;
  v2 = *(this + 7);
  v3 = MEMORY[0x277D82C30];
  if (v2 != MEMORY[0x277D82C30] && v2 != 0)
  {
    if (*(v2 + 23) < 0)
    {
      operator delete(*v2);
    }

    this = MEMORY[0x259CA1F90](v2, 0x1012C40EC159624);
  }

  v5 = *(v1 + 8);
  if (v5 != v3 && v5 != 0)
  {
    if (*(v5 + 23) < 0)
    {
      operator delete(*v5);
    }

    this = MEMORY[0x259CA1F90](v5, 0x1012C40EC159624);
  }

  CLMicroLocationProto::protobuf_AddDesc_microlocation_2eproto(this);
}

uint64_t CLMicroLocationProto::Fingerprint::Clear(CLMicroLocationProto::Fingerprint *this)
{
  v2 = *(this + 32);
  if ((v2 & 0x1FE) != 0)
  {
    *(this + 4) = 0;
    *(this + 5) = 0;
    *(this + 6) = 0;
    v3 = MEMORY[0x277D82C30];
    if ((v2 & 0x10) != 0)
    {
      v4 = *(this + 7);
      if (v4 != MEMORY[0x277D82C30])
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

    if ((*(this + 128) & 0x20) != 0)
    {
      v5 = *(this + 8);
      if (v5 != v3)
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

    *(this + 120) = 0;
    v2 = *(this + 32);
  }

  if ((v2 & 0xFF00) != 0)
  {
    *(this + 121) = 0;
  }

  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Clear<wireless_diagnostics::google::protobuf::RepeatedPtrField<CLMicroLocationProto::Measurement>::TypeHandler>(this + 8);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Clear<wireless_diagnostics::google::protobuf::RepeatedPtrField<CLMicroLocationProto::Measurement>::TypeHandler>(this + 72);
  result = wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Clear<wireless_diagnostics::google::protobuf::RepeatedPtrField<CLMicroLocationProto::Measurement>::TypeHandler>(this + 96);
  *(this + 32) = 0;
  return result;
}

uint64_t CLMicroLocationProto::Fingerprint::MergePartialFromCodedStream(CLMicroLocationProto::Fingerprint *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
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
LABEL_2:
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
          if (TagFallback >> 3 > 5)
          {
            break;
          }

          if (TagFallback >> 3 <= 2)
          {
            if (v8 == 1)
            {
              if (v9 != 2)
              {
                goto LABEL_61;
              }

              while (1)
              {
                v15 = *(this + 5);
                v16 = *(this + 4);
                if (v16 >= v15)
                {
                  if (v15 == *(this + 6))
                  {
                    wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 8));
                    v15 = *(this + 5);
                  }

                  *(this + 5) = v15 + 1;
                  operator new();
                }

                v17 = *(this + 1);
                *(this + 4) = v16 + 1;
                v18 = *(v17 + 8 * v16);
                v62[0] = 0;
                v19 = *(a2 + 1);
                if (v19 >= *(a2 + 2) || *v19 < 0)
                {
                  if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v62))
                  {
                    return 0;
                  }
                }

                else
                {
                  v62[0] = *v19;
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
                if (!CLMicroLocationProto::Measurement::MergePartialFromCodedStream(v18, a2, v22) || *(a2 + 36) != 1)
                {
                  return 0;
                }

                wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
                v23 = *(a2 + 14);
                v24 = __OFSUB__(v23, 1);
                v25 = v23 - 1;
                if (v25 < 0 == v24)
                {
                  *(a2 + 14) = v25;
                }

                v26 = *(a2 + 1);
                v11 = *(a2 + 2);
                if (v26 >= v11)
                {
                  break;
                }

                v27 = *v26;
                if (v27 != 10)
                {
                  if (v27 != 16)
                  {
                    goto LABEL_2;
                  }

                  v12 = (v26 + 1);
                  *(a2 + 1) = v12;
                  goto LABEL_24;
                }

                *(a2 + 1) = v26 + 1;
              }
            }

            else
            {
              if (v8 != 2 || (TagFallback & 7) != 0)
              {
                goto LABEL_61;
              }

              v12 = *(a2 + 1);
              v11 = *(a2 + 2);
LABEL_24:
              if (v12 >= v11 || (v13 = *v12, v13 < 0))
              {
                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 4);
                if (!result)
                {
                  return result;
                }

                v14 = *(a2 + 1);
                v11 = *(a2 + 2);
              }

              else
              {
                *(this + 4) = v13;
                v14 = v12 + 1;
                *(a2 + 1) = v14;
              }

              *(this + 32) |= 2u;
              if (v14 < v11 && *v14 == 25)
              {
                *(a2 + 1) = v14 + 1;
LABEL_70:
                *v62 = 0;
                if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v62) & 1) == 0)
                {
                  return 0;
                }

                *(this + 5) = *v62;
                *(this + 32) |= 4u;
                v32 = *(a2 + 1);
                if (v32 < *(a2 + 2) && *v32 == 33)
                {
                  *(a2 + 1) = v32 + 1;
                  goto LABEL_74;
                }
              }
            }
          }

          else
          {
            if (v8 == 3)
            {
              if (v9 != 1)
              {
                goto LABEL_61;
              }

              goto LABEL_70;
            }

            if (v8 == 4)
            {
              if (v9 != 1)
              {
                goto LABEL_61;
              }

LABEL_74:
              *v62 = 0;
              if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v62) & 1) == 0)
              {
                return 0;
              }

              *(this + 6) = *v62;
              v10 = *(this + 32) | 8;
              *(this + 32) = v10;
              v33 = *(a2 + 1);
              if (v33 < *(a2 + 2) && *v33 == 42)
              {
                *(a2 + 1) = v33 + 1;
                goto LABEL_78;
              }
            }

            else
            {
              if (v8 != 5 || v9 != 2)
              {
                goto LABEL_61;
              }

              v10 = *(this + 32);
LABEL_78:
              *(this + 32) = v10 | 0x10;
              if (*(this + 7) == v5)
              {
                operator new();
              }

              result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadBytes();
              if (!result)
              {
                return result;
              }

              v34 = *(a2 + 1);
              if (v34 < *(a2 + 2) && *v34 == 50)
              {
                *(a2 + 1) = v34 + 1;
LABEL_84:
                *(this + 32) |= 0x20u;
                if (*(this + 8) == v5)
                {
                  operator new();
                }

                result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadBytes();
                if (!result)
                {
                  return result;
                }

                v35 = *(a2 + 1);
                if (v35 < *(a2 + 2) && *v35 == 58)
                {
LABEL_89:
                  *(a2 + 1) = v35 + 1;
                  goto LABEL_90;
                }
              }
            }
          }
        }

        if (TagFallback >> 3 <= 7)
        {
          break;
        }

        if (v8 == 8)
        {
          if ((TagFallback & 7) == 0)
          {
            v29 = *(a2 + 1);
            v28 = *(a2 + 2);
            goto LABEL_108;
          }

          goto LABEL_61;
        }

        if (v8 == 9)
        {
          if ((TagFallback & 7) == 0)
          {
            v30 = *(a2 + 1);
            v28 = *(a2 + 2);
            goto LABEL_116;
          }

          goto LABEL_61;
        }

        if (v8 != 10 || v9 != 2)
        {
          goto LABEL_61;
        }

        while (2)
        {
          v51 = *(this + 27);
          v52 = *(this + 26);
          if (v52 >= v51)
          {
            if (v51 == *(this + 28))
            {
              wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 96));
              v51 = *(this + 27);
            }

            *(this + 27) = v51 + 1;
            operator new();
          }

          v53 = *(this + 12);
          *(this + 26) = v52 + 1;
          v54 = *(v53 + 8 * v52);
          v62[0] = 0;
          v55 = *(a2 + 1);
          if (v55 >= *(a2 + 2) || *v55 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v62))
            {
              return 0;
            }
          }

          else
          {
            v62[0] = *v55;
            *(a2 + 1) = v55 + 1;
          }

          v56 = *(a2 + 14);
          v57 = *(a2 + 15);
          *(a2 + 14) = v56 + 1;
          if (v56 >= v57)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
          if (!CLMicroLocationProto::PhotoFeatures::MergePartialFromCodedStream(v54, a2, v58) || *(a2 + 36) != 1)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
          v59 = *(a2 + 14);
          v24 = __OFSUB__(v59, 1);
          v60 = v59 - 1;
          if (v60 < 0 == v24)
          {
            *(a2 + 14) = v60;
          }

          v50 = *(a2 + 1);
          v61 = *(a2 + 2);
          if (v50 < v61 && *v50 == 82)
          {
LABEL_123:
            *(a2 + 1) = v50 + 1;
            continue;
          }

          break;
        }

        if (v50 == v61 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
        {
          *(a2 + 8) = 0;
          result = 1;
          *(a2 + 36) = 1;
          return result;
        }
      }

      if (v8 == 6)
      {
        break;
      }

      if (v8 != 7 || v9 != 2)
      {
        goto LABEL_61;
      }

LABEL_90:
      v36 = *(this + 21);
      v37 = *(this + 20);
      if (v37 >= v36)
      {
        if (v36 == *(this + 22))
        {
          wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 72));
          v36 = *(this + 21);
        }

        *(this + 21) = v36 + 1;
        operator new();
      }

      v38 = *(this + 9);
      *(this + 20) = v37 + 1;
      v39 = *(v38 + 8 * v37);
      v62[0] = 0;
      v40 = *(a2 + 1);
      if (v40 >= *(a2 + 2) || *v40 < 0)
      {
        if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v62))
        {
          return 0;
        }
      }

      else
      {
        v62[0] = *v40;
        *(a2 + 1) = v40 + 1;
      }

      v41 = *(a2 + 14);
      v42 = *(a2 + 15);
      *(a2 + 14) = v41 + 1;
      if (v41 >= v42)
      {
        return 0;
      }

      wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
      if (!CLMicroLocationProto::FingerprintMeasurement::MergePartialFromCodedStream(v39, a2, v43) || *(a2 + 36) != 1)
      {
        return 0;
      }

      wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
      v44 = *(a2 + 14);
      v24 = __OFSUB__(v44, 1);
      v45 = v44 - 1;
      if (v45 < 0 == v24)
      {
        *(a2 + 14) = v45;
      }

      v35 = *(a2 + 1);
      v28 = *(a2 + 2);
      if (v35 < v28)
      {
        v46 = *v35;
        if (v46 == 58)
        {
          goto LABEL_89;
        }

        if (v46 == 64)
        {
          v29 = v35 + 1;
          *(a2 + 1) = v29;
LABEL_108:
          v62[0] = 0;
          if (v29 >= v28 || (v47 = *v29, (v47 & 0x80000000) != 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v62);
            if (!result)
            {
              return result;
            }

            v47 = v62[0];
            v48 = *(a2 + 1);
            v28 = *(a2 + 2);
          }

          else
          {
            v48 = v29 + 1;
            *(a2 + 1) = v48;
          }

          *(this + 120) = v47 != 0;
          *(this + 32) |= 0x80u;
          if (v48 < v28 && *v48 == 72)
          {
            v30 = v48 + 1;
            *(a2 + 1) = v30;
LABEL_116:
            v62[0] = 0;
            if (v30 >= v28 || (v49 = *v30, (v49 & 0x80000000) != 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v62);
              if (!result)
              {
                return result;
              }

              v49 = v62[0];
              v50 = *(a2 + 1);
              v28 = *(a2 + 2);
            }

            else
            {
              v50 = v30 + 1;
              *(a2 + 1) = v50;
            }

            *(this + 121) = v49 != 0;
            *(this + 32) |= 0x100u;
            if (v50 < v28 && *v50 == 82)
            {
              goto LABEL_123;
            }
          }
        }
      }
    }

    if (v9 == 2)
    {
      goto LABEL_84;
    }

LABEL_61:
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

uint64_t CLMicroLocationProto::Fingerprint::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
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

  v7 = *(v5 + 128);
  if ((v7 & 2) != 0)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(2, *(v5 + 32), a2, a4);
    v7 = *(v5 + 128);
    if ((v7 & 4) == 0)
    {
LABEL_6:
      if ((v7 & 8) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_23;
    }
  }

  else if ((v7 & 4) == 0)
  {
    goto LABEL_6;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(3, a2, *(v5 + 40), a3);
  v7 = *(v5 + 128);
  if ((v7 & 8) == 0)
  {
LABEL_7:
    if ((v7 & 0x10) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_24;
  }

LABEL_23:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(4, a2, *(v5 + 48), a3);
  v7 = *(v5 + 128);
  if ((v7 & 0x10) == 0)
  {
LABEL_8:
    if ((v7 & 0x20) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

LABEL_24:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBytes();
  if ((*(v5 + 128) & 0x20) != 0)
  {
LABEL_9:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBytes();
  }

LABEL_10:
  if (*(v5 + 80) >= 1)
  {
    v8 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(7, *(*(v5 + 72) + 8 * v8++), a2, a4);
    }

    while (v8 < *(v5 + 80));
  }

  v9 = *(v5 + 128);
  if ((v9 & 0x80) != 0)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(8, *(v5 + 120), a2, a4);
    v9 = *(v5 + 128);
  }

  if ((v9 & 0x100) != 0)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(9, *(v5 + 121), a2, a4);
  }

  if (*(v5 + 104) >= 1)
  {
    v10 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0xA, *(*(v5 + 96) + 8 * v10++), a2, a4);
    }

    while (v10 < *(v5 + 104));
  }

  return this;
}

uint64_t CLMicroLocationProto::Fingerprint::ByteSize(CLMicroLocationProto::Fingerprint *this, unint64_t a2)
{
  v3 = *(this + 32);
  if ((v3 & 0x1FE) != 0)
  {
    if ((v3 & 2) != 0)
    {
      v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 4)) + 1;
      v3 = *(this + 32);
    }

    else
    {
      v4 = 0;
    }

    if ((v3 & 4) != 0)
    {
      v4 += 9;
    }

    if ((v3 & 8) != 0)
    {
      v6 = v4 + 9;
    }

    else
    {
      v6 = v4;
    }

    if ((v3 & 0x10) != 0)
    {
      v7 = *(this + 7);
      v8 = *(v7 + 23);
      v9 = v8;
      v10 = *(v7 + 8);
      if ((v8 & 0x80u) == 0)
      {
        v11 = *(v7 + 23);
      }

      else
      {
        v11 = v10;
      }

      if (v11 >= 0x80)
      {
        v12 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v11);
        v8 = *(v7 + 23);
        v10 = *(v7 + 8);
        v3 = *(this + 32);
        v9 = *(v7 + 23);
      }

      else
      {
        v12 = 1;
      }

      if (v9 < 0)
      {
        v8 = v10;
      }

      v6 += v12 + v8 + 1;
    }

    if ((v3 & 0x20) != 0)
    {
      v13 = *(this + 8);
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
        v3 = *(this + 32);
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

      v6 += v18 + v14 + 1;
    }

    v5 = ((v3 >> 6) & 2) + v6;
  }

  else
  {
    v5 = 0;
  }

  if ((v3 & 0xFF00) != 0)
  {
    v19 = (v3 >> 7) & 2;
  }

  else
  {
    v19 = 0;
  }

  v20 = *(this + 4);
  v21 = v20 + v5 + v19;
  if (v20 >= 1)
  {
    v22 = 0;
    do
    {
      v23 = CLMicroLocationProto::Measurement::ByteSize(*(*(this + 1) + 8 * v22), a2);
      v24 = v23;
      if (v23 >= 0x80)
      {
        v25 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v23);
      }

      else
      {
        v25 = 1;
      }

      v21 += v24 + v25;
      ++v22;
    }

    while (v22 < *(this + 4));
  }

  v26 = *(this + 20);
  v27 = v26 + v21;
  if (v26 >= 1)
  {
    v28 = 0;
    do
    {
      v29 = CLMicroLocationProto::FingerprintMeasurement::ByteSize(*(*(this + 9) + 8 * v28), a2);
      v30 = v29;
      if (v29 >= 0x80)
      {
        v31 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v29);
      }

      else
      {
        v31 = 1;
      }

      v27 += v30 + v31;
      ++v28;
    }

    while (v28 < *(this + 20));
  }

  v32 = *(this + 26);
  v33 = (v32 + v27);
  if (v32 >= 1)
  {
    for (i = 0; i < v32; ++i)
    {
      v35 = *(*(this + 12) + 8 * i);
      v36 = ((((v35[9] << 31) >> 31) & 9u) + 5 * v35[6]);
      v35[8] = v36;
      if (v36 >= 0x80)
      {
        v37 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v36);
        v32 = *(this + 26);
      }

      else
      {
        v37 = 1;
      }

      v33 = (v36 + v33 + v37);
    }
  }

  *(this + 31) = v33;
  return v33;
}

void CLMicroLocationProto::Fingerprint::CheckTypeAndMergeFrom(CLMicroLocationProto::Fingerprint *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  {
    CLMicroLocationProto::BleLeechedBeacons::CheckTypeAndMergeFrom();
  }

  CLMicroLocationProto::Fingerprint::MergeFrom(this, lpsrc);
}

void CLMicroLocationProto::Fingerprint::CopyFrom(std::string *this, std::string *a2)
{
  if (a2 != this)
  {
    (*(this->__r_.__value_.__r.__words[0] + 32))(this);

    CLMicroLocationProto::Fingerprint::MergeFrom(this, a2);
  }
}

std::string *CLMicroLocationProto::ClusterRecordings::MergeFrom(CLMicroLocationProto::ClusterRecordings *this, const CLMicroLocationProto::ClusterRecordings *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v7);
  }

  result = wireless_diagnostics::google::protobuf::RepeatedPtrField<std::string>::MergeFrom((this + 16), a2 + 16);
  if (*(a2 + 44))
  {
    v5 = *(a2 + 1);
    *(this + 11) |= 1u;
    v6 = *(this + 1);
    if (v6 == MEMORY[0x277D82C30])
    {
      operator new();
    }

    return std::string::operator=(v6, v5);
  }

  return result;
}

void sub_2590E3CAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void CLMicroLocationProto::ClusterRecordings::~ClusterRecordings(CLMicroLocationProto::ClusterRecordings *this)
{
  *this = &unk_286A57A80;
  CLMicroLocationProto::ClusterRecordings::SharedDtor(this);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<std::string>::TypeHandler>(this + 4);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  CLMicroLocationProto::ClusterRecordings::~ClusterRecordings(this);

  JUMPOUT(0x259CA1F90);
}

void CLMicroLocationProto::ClusterRecordings::SharedDtor(CLMicroLocationProto::ClusterRecordings *this)
{
  v1 = *(this + 1);
  if (v1 != MEMORY[0x277D82C30] && v1 != 0)
  {
    if (*(v1 + 23) < 0)
    {
      operator delete(*v1);
    }

    this = MEMORY[0x259CA1F90](v1, 0x1012C40EC159624);
  }

  CLMicroLocationProto::protobuf_AddDesc_microlocation_2eproto(this);
}

uint64_t CLMicroLocationProto::ClusterRecordings::Clear(CLMicroLocationProto::ClusterRecordings *this)
{
  if (*(this + 44))
  {
    v2 = *(this + 1);
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

  result = wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Clear<wireless_diagnostics::google::protobuf::RepeatedPtrField<std::string>::TypeHandler>(this + 16);
  *(this + 11) = 0;
  return result;
}

uint64_t CLMicroLocationProto::ClusterRecordings::MergePartialFromCodedStream(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
{
  v4 = this;
  v5 = MEMORY[0x277D82C30];
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

      v8 = v7 & 7;
      if (v7 >> 3 == 2)
      {
        break;
      }

      if (v7 >> 3 != 1 || v8 != 2)
      {
        goto LABEL_17;
      }

      *(v4 + 44) |= 1u;
      if (*(v4 + 8) == v5)
      {
        operator new();
      }

      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadBytes();
      if (!this)
      {
        return this;
      }

      v9 = *(a2 + 1);
      if (v9 < *(a2 + 2) && *v9 == 18)
      {
        do
        {
          *(a2 + 1) = v9 + 1;
LABEL_20:
          v10 = *(v4 + 28);
          v11 = *(v4 + 24);
          if (v11 >= v10)
          {
            if (v10 == *(v4 + 32))
            {
              this = wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((v4 + 16));
              v10 = *(v4 + 28);
            }

            *(v4 + 28) = v10 + 1;
            v12 = wireless_diagnostics::google::protobuf::internal::StringTypeHandlerBase::New(this);
            v13 = *(v4 + 16);
            v14 = *(v4 + 24);
            *(v4 + 24) = v14 + 1;
            *(v13 + 8 * v14) = v12;
          }

          else
          {
            *(v4 + 24) = v11 + 1;
          }

          this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadBytes();
          if (!this)
          {
            return this;
          }

          v9 = *(a2 + 1);
          v15 = *(a2 + 2);
        }

        while (v9 < v15 && *v9 == 18);
        if (v9 == v15 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
        {
          *(a2 + 8) = 0;
          this = 1;
          *(a2 + 36) = 1;
          return this;
        }
      }
    }

    if (v8 == 2)
    {
      goto LABEL_20;
    }

LABEL_17:
    if (v8 == 4)
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

uint64_t CLMicroLocationProto::ClusterRecordings::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2)
{
  v2 = this;
  if (*(this + 44))
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBytes();
  }

  if (*(v2 + 24) >= 1)
  {
    v3 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBytes();
      ++v3;
    }

    while (v3 < *(v2 + 24));
  }

  return this;
}

uint64_t CLMicroLocationProto::ClusterRecordings::ByteSize(CLMicroLocationProto::ClusterRecordings *this, unsigned int a2)
{
  if (*(this + 44))
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

    v3 = v9 + v5;
  }

  else
  {
    v3 = 0;
  }

  v11 = *(this + 6);
  v12 = (v11 + v3);
  if (v11 >= 1)
  {
    for (i = 0; i < v11; ++i)
    {
      v14 = *(*(this + 2) + 8 * i);
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
        v11 = *(this + 6);
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

      v12 = (v19 + v12 + v15);
    }
  }

  *(this + 10) = v12;
  return v12;
}

std::string *CLMicroLocationProto::ClusterRecordings::CheckTypeAndMergeFrom(CLMicroLocationProto::ClusterRecordings *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  {
    CLMicroLocationProto::BleLeechedBeacons::CheckTypeAndMergeFrom();
  }

  return CLMicroLocationProto::ClusterRecordings::MergeFrom(this, lpsrc);
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

void sub_2590E43A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void CLMicroLocationProto::AnchorMetadata::MergeFrom(CLMicroLocationProto::AnchorMetadata *this, const CLMicroLocationProto::AnchorMetadata *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v13);
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

  else if ((*(a2 + 48) & 2) == 0)
  {
    goto LABEL_6;
  }

  v6 = *(a2 + 2);
  *(this + 12) |= 2u;
  *(this + 2) = v6;
  v4 = *(a2 + 12);
  if ((v4 & 4) == 0)
  {
LABEL_7:
    if ((v4 & 8) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_16;
  }

LABEL_14:
  v7 = *(a2 + 6);
  if ((v7 - 1) >= 2)
  {
    CLMicroLocationProto::AnchorMetadata::MergeFrom();
  }

  *(this + 12) |= 4u;
  *(this + 6) = v7;
  v4 = *(a2 + 12);
  if ((v4 & 8) == 0)
  {
LABEL_8:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_9;
    }

LABEL_17:
    v9 = *(a2 + 29);
    *(this + 12) |= 0x10u;
    *(this + 29) = v9;
    v4 = *(a2 + 12);
    if ((v4 & 0x20) == 0)
    {
LABEL_10:
      if ((v4 & 0x40) == 0)
      {
        return;
      }

      goto LABEL_20;
    }

    goto LABEL_18;
  }

LABEL_16:
  v8 = *(a2 + 28);
  *(this + 12) |= 8u;
  *(this + 28) = v8;
  v4 = *(a2 + 12);
  if ((v4 & 0x10) != 0)
  {
    goto LABEL_17;
  }

LABEL_9:
  if ((v4 & 0x20) == 0)
  {
    goto LABEL_10;
  }

LABEL_18:
  v10 = *(a2 + 10);
  if ((v10 - 1) >= 7)
  {
    CLMicroLocationProto::AnchorMetadata::MergeFrom();
  }

  *(this + 12) |= 0x20u;
  *(this + 10) = v10;
  if ((*(a2 + 12) & 0x40) != 0)
  {
LABEL_20:
    v11 = *(a2 + 4);
    *(this + 12) |= 0x40u;
    v12 = *(this + 4);
    if (v12 == MEMORY[0x277D82C30])
    {
      operator new();
    }

    std::string::operator=(v12, v11);
  }
}

void sub_2590E4588(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void CLMicroLocationProto::AnchorMetadata::~AnchorMetadata(CLMicroLocationProto::AnchorMetadata *this)
{
  *this = &unk_286A57AF8;
  CLMicroLocationProto::AnchorMetadata::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  CLMicroLocationProto::AnchorMetadata::~AnchorMetadata(this);

  JUMPOUT(0x259CA1F90);
}

void CLMicroLocationProto::AnchorMetadata::SharedDtor(CLMicroLocationProto::AnchorMetadata *this)
{
  v1 = *(this + 4);
  if (v1 != MEMORY[0x277D82C30] && v1 != 0)
  {
    if (*(v1 + 23) < 0)
    {
      operator delete(*v1);
    }

    this = MEMORY[0x259CA1F90](v1, 0x1012C40EC159624);
  }

  CLMicroLocationProto::protobuf_AddDesc_microlocation_2eproto(this);
}

uint64_t CLMicroLocationProto::AnchorMetadata::Clear(uint64_t this)
{
  v1 = *(this + 48);
  if (v1)
  {
    *(this + 8) = 0;
    *(this + 16) = 0;
    *(this + 24) = 1;
    *(this + 28) = 0;
    *(this + 40) = 1;
    if ((v1 & 0x40) != 0)
    {
      v2 = *(this + 32);
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
  }

  *(this + 48) = 0;
  return this;
}

uint64_t CLMicroLocationProto::AnchorMetadata::MergePartialFromCodedStream(CLMicroLocationProto::AnchorMetadata *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
{
  v5 = MEMORY[0x277D82C30];
  do
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
          if (v9 != 1)
          {
            goto LABEL_32;
          }

          *v27 = 0;
          if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v27) & 1) == 0)
          {
            return 0;
          }

          *(this + 1) = *v27;
          *(this + 12) |= 1u;
          v14 = *(a2 + 1);
          if (v14 < *(a2 + 2) && *v14 == 17)
          {
            *(a2 + 1) = v14 + 1;
            goto LABEL_35;
          }
        }

        else
        {
          if (v8 != 2)
          {
            if (v8 != 3 || (TagFallback & 7) != 0)
            {
              goto LABEL_32;
            }

            v13 = *(a2 + 1);
            v12 = *(a2 + 2);
            goto LABEL_39;
          }

          if (v9 != 1)
          {
            goto LABEL_32;
          }

LABEL_35:
          *v27 = 0;
          if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v27) & 1) == 0)
          {
            return 0;
          }

          *(this + 2) = *v27;
          *(this + 12) |= 2u;
          v17 = *(a2 + 1);
          v12 = *(a2 + 2);
          if (v17 < v12 && *v17 == 24)
          {
            v13 = v17 + 1;
            *(a2 + 1) = v13;
LABEL_39:
            v27[0] = 0;
            if (v13 >= v12 || (v18 = *v13, (v18 & 0x80000000) != 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v27);
              if (!result)
              {
                return result;
              }

              v18 = v27[0];
            }

            else
            {
              *(a2 + 1) = v13 + 1;
            }

            if (v18 - 1 <= 1)
            {
              *(this + 12) |= 4u;
              *(this + 6) = v18;
            }

            v20 = *(a2 + 1);
            v10 = *(a2 + 2);
            if (v20 < v10 && *v20 == 32)
            {
              v15 = v20 + 1;
              *(a2 + 1) = v15;
              goto LABEL_49;
            }
          }
        }
      }

      if (TagFallback >> 3 > 5)
      {
        if (v8 == 6)
        {
          if ((TagFallback & 7) == 0)
          {
            v16 = *(a2 + 1);
            v10 = *(a2 + 2);
            goto LABEL_65;
          }
        }

        else if (v8 == 7 && v9 == 2)
        {
          goto LABEL_75;
        }

        goto LABEL_32;
      }

      if (v8 != 4)
      {
        break;
      }

      if ((TagFallback & 7) != 0)
      {
        goto LABEL_32;
      }

      v15 = *(a2 + 1);
      v10 = *(a2 + 2);
LABEL_49:
      v27[0] = 0;
      if (v15 >= v10 || (v21 = *v15, (v21 & 0x80000000) != 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v27);
        if (!result)
        {
          return result;
        }

        v21 = v27[0];
        v22 = *(a2 + 1);
        v10 = *(a2 + 2);
      }

      else
      {
        v22 = v15 + 1;
        *(a2 + 1) = v22;
      }

      *(this + 28) = v21 != 0;
      *(this + 12) |= 8u;
      if (v22 < v10 && *v22 == 40)
      {
        v11 = v22 + 1;
        *(a2 + 1) = v11;
LABEL_57:
        v27[0] = 0;
        if (v11 >= v10 || (v23 = *v11, (v23 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v27);
          if (!result)
          {
            return result;
          }

          v23 = v27[0];
          v24 = *(a2 + 1);
          v10 = *(a2 + 2);
        }

        else
        {
          v24 = v11 + 1;
          *(a2 + 1) = v24;
        }

        *(this + 29) = v23 != 0;
        *(this + 12) |= 0x10u;
        if (v24 < v10 && *v24 == 48)
        {
          v16 = v24 + 1;
          *(a2 + 1) = v16;
LABEL_65:
          v27[0] = 0;
          if (v16 >= v10 || (v25 = *v16, (v25 & 0x80000000) != 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v27);
            if (!result)
            {
              return result;
            }

            v25 = v27[0];
          }

          else
          {
            *(a2 + 1) = v16 + 1;
          }

          if (v25 - 1 <= 6)
          {
            *(this + 12) |= 0x20u;
            *(this + 10) = v25;
          }

          v26 = *(a2 + 1);
          if (v26 < *(a2 + 2) && *v26 == 58)
          {
            *(a2 + 1) = v26 + 1;
LABEL_75:
            *(this + 12) |= 0x40u;
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
      }
    }

    if (v8 == 5 && (TagFallback & 7) == 0)
    {
      v11 = *(a2 + 1);
      v10 = *(a2 + 2);
      goto LABEL_57;
    }

LABEL_32:
    if (v9 == 4)
    {
      return 1;
    }
  }

  while ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(a2, TagFallback) & 1) != 0);
  return 0;
}

uint64_t CLMicroLocationProto::AnchorMetadata::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 48);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(1, a2, *(this + 8), a3);
    v6 = *(v5 + 48);
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

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(2, a2, *(v5 + 16), a3);
  v6 = *(v5 + 48);
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
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(3, *(v5 + 24), a2, a4);
  v6 = *(v5 + 48);
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
  v6 = *(v5 + 48);
  if ((v6 & 0x10) == 0)
  {
LABEL_6:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_7;
    }

LABEL_14:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(6, *(v5 + 40), a2, a4);
    if ((*(v5 + 48) & 0x40) == 0)
    {
      return this;
    }

    goto LABEL_15;
  }

LABEL_13:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(5, *(v5 + 29), a2, a4);
  v6 = *(v5 + 48);
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

uint64_t CLMicroLocationProto::AnchorMetadata::ByteSize(CLMicroLocationProto::AnchorMetadata *this, unsigned int a2)
{
  v3 = *(this + 12);
  if (v3)
  {
    if ((v3 & 2) != 0)
    {
      v4 = (((v3 << 31) >> 31) & 9) + 9;
    }

    else
    {
      v4 = ((v3 << 31) >> 31) & 9;
    }

    if ((v3 & 4) != 0)
    {
      v5 = *(this + 6);
      if ((v5 & 0x80000000) != 0)
      {
        v6 = 11;
      }

      else if (v5 >= 0x80)
      {
        v6 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5) + 1;
        v3 = *(this + 12);
      }

      else
      {
        v6 = 2;
      }

      v4 += v6;
    }

    v7 = ((v3 >> 2) & 2) + ((v3 >> 3) & 2) + v4;
    if ((v3 & 0x20) != 0)
    {
      v8 = *(this + 10);
      if ((v8 & 0x80000000) != 0)
      {
        v9 = 11;
      }

      else if (v8 >= 0x80)
      {
        v9 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v8) + 1;
        v3 = *(this + 12);
      }

      else
      {
        v9 = 2;
      }

      v7 = (v9 + v7);
    }

    if ((v3 & 0x40) != 0)
    {
      v10 = *(this + 4);
      v11 = *(v10 + 23);
      v12 = v11;
      v13 = *(v10 + 8);
      if ((v11 & 0x80u) == 0)
      {
        v14 = *(v10 + 23);
      }

      else
      {
        v14 = v13;
      }

      if (v14 >= 0x80)
      {
        v15 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v14);
        v11 = *(v10 + 23);
        v13 = *(v10 + 8);
        v12 = *(v10 + 23);
      }

      else
      {
        v15 = 1;
      }

      if (v12 < 0)
      {
        v11 = v13;
      }

      v7 = (v7 + v15 + v11 + 1);
    }
  }

  else
  {
    v7 = 0;
  }

  *(this + 11) = v7;
  return v7;
}

void CLMicroLocationProto::AnchorMetadata::CheckTypeAndMergeFrom(CLMicroLocationProto::AnchorMetadata *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  {
    CLMicroLocationProto::BleLeechedBeacons::CheckTypeAndMergeFrom();
  }

  CLMicroLocationProto::AnchorMetadata::MergeFrom(this, lpsrc);
}

void CLMicroLocationProto::AnchorAppearance::MergeFrom(CLMicroLocationProto::AnchorAppearance *this, const CLMicroLocationProto::AnchorAppearance *a2)
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
      v5 = *(a2 + 1);
      *(this + 10) |= 1u;
      *(this + 1) = v5;
      v4 = *(a2 + 10);
      if ((v4 & 2) == 0)
      {
LABEL_6:
        if ((v4 & 4) == 0)
        {
          goto LABEL_7;
        }

        goto LABEL_11;
      }
    }

    else if ((*(a2 + 40) & 2) == 0)
    {
      goto LABEL_6;
    }

    v6 = *(a2 + 2);
    *(this + 10) |= 2u;
    *(this + 2) = v6;
    v4 = *(a2 + 10);
    if ((v4 & 4) == 0)
    {
LABEL_7:
      if ((v4 & 8) == 0)
      {
        return;
      }

      goto LABEL_12;
    }

LABEL_11:
    v7 = *(a2 + 8);
    *(this + 10) |= 4u;
    *(this + 8) = v7;
    if ((*(a2 + 10) & 8) == 0)
    {
      return;
    }

LABEL_12:
    v8 = *(a2 + 3);
    *(this + 10) |= 8u;
    v9 = *(this + 3);
    if (v9 == MEMORY[0x277D82C30])
    {
      operator new();
    }

    std::string::operator=(v9, v8);
  }
}

void sub_2590E4F68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void CLMicroLocationProto::AnchorAppearance::~AnchorAppearance(CLMicroLocationProto::AnchorAppearance *this)
{
  *this = &unk_286A57B70;
  CLMicroLocationProto::WiFiRange::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  CLMicroLocationProto::AnchorAppearance::~AnchorAppearance(this);

  JUMPOUT(0x259CA1F90);
}

uint64_t CLMicroLocationProto::AnchorAppearance::Clear(uint64_t this)
{
  v1 = *(this + 40);
  if (v1)
  {
    *(this + 32) = 0;
    *(this + 8) = 0;
    *(this + 16) = 0;
    if ((v1 & 8) != 0)
    {
      v2 = *(this + 24);
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
  }

  *(this + 40) = 0;
  return this;
}

uint64_t CLMicroLocationProto::AnchorAppearance::MergePartialFromCodedStream(CLMicroLocationProto::AnchorAppearance *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
{
  v5 = MEMORY[0x277D82C30];
  do
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

        if (v8 == 3)
        {
          if ((TagFallback & 7) != 0)
          {
            goto LABEL_26;
          }

          v14 = *(a2 + 1);
          v12 = *(a2 + 2);
LABEL_30:
          if (v14 >= v12 || (v15 = *v14, v15 < 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 8);
            if (!result)
            {
              return result;
            }

            v16 = *(a2 + 1);
            v12 = *(a2 + 2);
          }

          else
          {
            *(this + 8) = v15;
            v16 = v14 + 1;
            *(a2 + 1) = v16;
          }

          v10 = *(this + 10) | 4;
          *(this + 10) = v10;
          if (v16 < v12 && *v16 == 34)
          {
            *(a2 + 1) = v16 + 1;
            goto LABEL_38;
          }
        }

        else
        {
          if (v8 != 4 || v9 != 2)
          {
            goto LABEL_26;
          }

          v10 = *(this + 10);
LABEL_38:
          *(this + 10) = v10 | 8;
          if (*(this + 3) == v5)
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

      if (v8 != 1)
      {
        break;
      }

      if (v9 != 1)
      {
        goto LABEL_26;
      }

      v18 = 0;
      if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, &v18) & 1) == 0)
      {
        return 0;
      }

      *(this + 1) = v18;
      *(this + 10) |= 1u;
      v11 = *(a2 + 1);
      if (v11 < *(a2 + 2) && *v11 == 17)
      {
        *(a2 + 1) = v11 + 1;
LABEL_21:
        v18 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, &v18) & 1) == 0)
        {
          return 0;
        }

        *(this + 2) = v18;
        *(this + 10) |= 2u;
        v13 = *(a2 + 1);
        v12 = *(a2 + 2);
        if (v13 < v12 && *v13 == 24)
        {
          v14 = v13 + 1;
          *(a2 + 1) = v14;
          goto LABEL_30;
        }
      }
    }

    if (v8 == 2 && v9 == 1)
    {
      goto LABEL_21;
    }

LABEL_26:
    if (v9 == 4)
    {
      return 1;
    }
  }

  while ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(a2, TagFallback) & 1) != 0);
  return 0;
}

uint64_t CLMicroLocationProto::AnchorAppearance::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 40);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(1, a2, *(this + 8), a3);
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

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(2, a2, *(v5 + 16), a3);
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

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBytes();
}

uint64_t CLMicroLocationProto::AnchorAppearance::ByteSize(CLMicroLocationProto::AnchorAppearance *this, unsigned int a2)
{
  v3 = *(this + 40);
  if (*(this + 40))
  {
    v4 = (v3 << 31 >> 31) & 9;
    if ((v3 & 2) != 0)
    {
      v5 = v4 + 9;
    }

    else
    {
      v5 = v4;
    }

    if ((v3 & 4) != 0)
    {
      v6 = *(this + 8);
      if (v6 >= 0x80)
      {
        v7 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v6) + 1;
        v3 = *(this + 10);
      }

      else
      {
        v7 = 2;
      }

      v5 = (v7 + v5);
    }

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
    }
  }

  else
  {
    v5 = 0;
  }

  *(this + 9) = v5;
  return v5;
}

void CLMicroLocationProto::AnchorAppearance::CheckTypeAndMergeFrom(CLMicroLocationProto::AnchorAppearance *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  {
    CLMicroLocationProto::BleLeechedBeacons::CheckTypeAndMergeFrom();
  }

  CLMicroLocationProto::AnchorAppearance::MergeFrom(this, lpsrc);
}

void CLMicroLocationProto::AnchorAppearance::CopyFrom(CLMicroLocationProto::AnchorAppearance *this, const CLMicroLocationProto::AnchorAppearance *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    CLMicroLocationProto::AnchorAppearance::MergeFrom(this, a2);
  }
}

void CLMicroLocationProto::anchorAppearancesVector::MergeFrom(CLMicroLocationProto::anchorAppearancesVector *this, const CLMicroLocationProto::anchorAppearancesVector *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v10);
  }

  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 8));
  LODWORD(v4) = *(a2 + 4);
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
        wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v10);
      }

      v6 = *(*(a2 + 1) + 8 * v5);
      v7 = *(this + 5);
      v8 = *(this + 4);
      if (v8 >= v7)
      {
        if (v7 == *(this + 6))
        {
          wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 8));
          v7 = *(this + 5);
        }

        *(this + 5) = v7 + 1;
        operator new();
      }

      v9 = *(this + 1);
      *(this + 4) = v8 + 1;
      CLMicroLocationProto::AnchorAppearance::MergeFrom(*(v9 + 8 * v8), v6);
      ++v5;
      v4 = *(a2 + 4);
    }

    while (v5 < v4);
  }
}

void sub_2590E5770(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void CLMicroLocationProto::anchorAppearancesVector::~anchorAppearancesVector(CLMicroLocationProto::anchorAppearancesVector *this)
{
  *this = &unk_286A57BE8;
  CLMicroLocationProto::protobuf_AddDesc_microlocation_2eproto(this);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<CLMicroLocationProto::Measurement>::TypeHandler>(this + 1);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  CLMicroLocationProto::anchorAppearancesVector::~anchorAppearancesVector(this);

  JUMPOUT(0x259CA1F90);
}

uint64_t CLMicroLocationProto::anchorAppearancesVector::Clear(CLMicroLocationProto::anchorAppearancesVector *this)
{
  result = wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Clear<wireless_diagnostics::google::protobuf::RepeatedPtrField<CLMicroLocationProto::Measurement>::TypeHandler>(this + 8);
  *(this + 9) = 0;
  return result;
}

uint64_t CLMicroLocationProto::anchorAppearancesVector::MergePartialFromCodedStream(CLMicroLocationProto::anchorAppearancesVector *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
{
  while (1)
  {
LABEL_1:
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

    if (TagFallback == 10)
    {
      while (1)
      {
        v7 = *(this + 5);
        v8 = *(this + 4);
        if (v8 >= v7)
        {
          if (v7 == *(this + 6))
          {
            wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 8));
            v7 = *(this + 5);
          }

          *(this + 5) = v7 + 1;
          operator new();
        }

        v9 = *(this + 1);
        *(this + 4) = v8 + 1;
        v10 = *(v9 + 8 * v8);
        v21 = 0;
        v11 = *(a2 + 1);
        if (v11 >= *(a2 + 2) || *v11 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v21))
          {
            return 0;
          }
        }

        else
        {
          v21 = *v11;
          *(a2 + 1) = v11 + 1;
        }

        v12 = *(a2 + 14);
        v13 = *(a2 + 15);
        *(a2 + 14) = v12 + 1;
        if (v12 >= v13)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
        if (!CLMicroLocationProto::AnchorAppearance::MergePartialFromCodedStream(v10, a2, v14) || *(a2 + 36) != 1)
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
        v19 = *(a2 + 2);
        if (v18 >= v19 || *v18 != 10)
        {
          if (v18 == v19 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
          {
            *(a2 + 8) = 0;
            result = 1;
            *(a2 + 36) = 1;
            return result;
          }

          goto LABEL_1;
        }

        *(a2 + 1) = v18 + 1;
      }
    }

    if (!TagFallback || (TagFallback & 7) == 4)
    {
      return 1;
    }

    if ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(a2, TagFallback) & 1) == 0)
    {
      return 0;
    }
  }
}

uint64_t CLMicroLocationProto::anchorAppearancesVector::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  if (*(this + 16) >= 1)
  {
    v5 = this;
    v6 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(1, *(*(v5 + 8) + 8 * v6++), a2, a4);
    }

    while (v6 < *(v5 + 16));
  }

  return this;
}

uint64_t CLMicroLocationProto::anchorAppearancesVector::ByteSize(CLMicroLocationProto::anchorAppearancesVector *this, unsigned int a2)
{
  v3 = *(this + 4);
  if (v3 >= 1)
  {
    v4 = 0;
    do
    {
      v5 = CLMicroLocationProto::AnchorAppearance::ByteSize(*(*(this + 1) + 8 * v4), a2);
      v6 = v5;
      if (v5 >= 0x80)
      {
        v7 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5);
      }

      else
      {
        v7 = 1;
      }

      v3 = (v6 + v3 + v7);
      ++v4;
    }

    while (v4 < *(this + 4));
  }

  *(this + 8) = v3;
  return v3;
}

void CLMicroLocationProto::anchorAppearancesVector::CheckTypeAndMergeFrom(CLMicroLocationProto::anchorAppearancesVector *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  {
    CLMicroLocationProto::BleLeechedBeacons::CheckTypeAndMergeFrom();
  }

  CLMicroLocationProto::anchorAppearancesVector::MergeFrom(this, lpsrc);
}

void CLMicroLocationProto::anchorAppearancesVector::CopyFrom(CLMicroLocationProto::anchorAppearancesVector *this, const CLMicroLocationProto::anchorAppearancesVector *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    CLMicroLocationProto::anchorAppearancesVector::MergeFrom(this, a2);
  }
}

void CLMicroLocationProto::AnchorValueStatistics::MergeFrom(CLMicroLocationProto::AnchorValueStatistics *this, const CLMicroLocationProto::AnchorValueStatistics *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v9);
  }

  LOBYTE(v4) = *(a2 + 36);
  if (v4)
  {
    if (*(a2 + 36))
    {
      v5 = *(a2 + 1);
      *(this + 9) |= 1u;
      *(this + 1) = v5;
      v4 = *(a2 + 9);
      if ((v4 & 2) == 0)
      {
LABEL_6:
        if ((v4 & 4) == 0)
        {
          return;
        }

        goto LABEL_10;
      }
    }

    else if ((*(a2 + 36) & 2) == 0)
    {
      goto LABEL_6;
    }

    v6 = *(a2 + 2);
    *(this + 9) |= 2u;
    *(this + 2) = v6;
    if ((*(a2 + 9) & 4) == 0)
    {
      return;
    }

LABEL_10:
    v7 = *(a2 + 3);
    *(this + 9) |= 4u;
    v8 = *(this + 3);
    if (v8 == MEMORY[0x277D82C30])
    {
      operator new();
    }

    std::string::operator=(v8, v7);
  }
}

void sub_2590E5DE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void CLMicroLocationProto::AnchorValueStatistics::~AnchorValueStatistics(CLMicroLocationProto::AnchorValueStatistics *this)
{
  *this = &unk_286A57C60;
  CLMicroLocationProto::WiFiRange::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  CLMicroLocationProto::AnchorValueStatistics::~AnchorValueStatistics(this);

  JUMPOUT(0x259CA1F90);
}

uint64_t CLMicroLocationProto::AnchorValueStatistics::Clear(uint64_t this)
{
  v1 = *(this + 36);
  if (v1)
  {
    *(this + 8) = 0;
    *(this + 16) = 0;
    if ((v1 & 4) != 0)
    {
      v2 = *(this + 24);
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
  }

  *(this + 36) = 0;
  return this;
}

uint64_t CLMicroLocationProto::AnchorValueStatistics::MergePartialFromCodedStream(CLMicroLocationProto::AnchorValueStatistics *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
{
  v5 = MEMORY[0x277D82C30];
  do
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
      if (TagFallback >> 3 == 3)
      {
        if (v9 == 2)
        {
          v11 = *(this + 9);
          goto LABEL_25;
        }

        goto LABEL_21;
      }

      if (v8 == 2)
      {
        break;
      }

      if (v8 != 1 || v9 != 1)
      {
        goto LABEL_21;
      }

      v14 = 0;
      if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, &v14) & 1) == 0)
      {
        return 0;
      }

      *(this + 1) = v14;
      *(this + 9) |= 1u;
      v10 = *(a2 + 1);
      if (v10 < *(a2 + 2) && *v10 == 17)
      {
        *(a2 + 1) = v10 + 1;
LABEL_16:
        v14 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, &v14) & 1) == 0)
        {
          return 0;
        }

        *(this + 2) = v14;
        v11 = *(this + 9) | 2;
        *(this + 9) = v11;
        v12 = *(a2 + 1);
        if (v12 < *(a2 + 2) && *v12 == 26)
        {
          *(a2 + 1) = v12 + 1;
LABEL_25:
          *(this + 9) = v11 | 4;
          if (*(this + 3) == v5)
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
    }

    if (v9 == 1)
    {
      goto LABEL_16;
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

uint64_t CLMicroLocationProto::AnchorValueStatistics::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3)
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

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBytes();
}

uint64_t CLMicroLocationProto::AnchorValueStatistics::ByteSize(CLMicroLocationProto::AnchorValueStatistics *this, unsigned int a2)
{
  v3 = *(this + 36);
  if (*(this + 36))
  {
    v4 = (v3 << 31 >> 31) & 9;
    if ((v3 & 2) != 0)
    {
      v5 = v4 + 9;
    }

    else
    {
      v5 = v4;
    }

    if ((v3 & 4) != 0)
    {
      v6 = *(this + 3);
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
  }

  else
  {
    v5 = 0;
  }

  *(this + 8) = v5;
  return v5;
}

void CLMicroLocationProto::AnchorValueStatistics::CheckTypeAndMergeFrom(CLMicroLocationProto::AnchorValueStatistics *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  {
    CLMicroLocationProto::BleLeechedBeacons::CheckTypeAndMergeFrom();
  }

  CLMicroLocationProto::AnchorValueStatistics::MergeFrom(this, lpsrc);
}

void CLMicroLocationProto::ClusterAnchorValueStatistics::MergeFrom(CLMicroLocationProto::ClusterAnchorValueStatistics *this, const CLMicroLocationProto::ClusterAnchorValueStatistics *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v13);
  }

  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 8));
  LODWORD(v4) = *(a2 + 4);
  v5 = MEMORY[0x277D82C30];
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
        wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v13);
      }

      v7 = *(*(a2 + 1) + 8 * v6);
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
      CLMicroLocationProto::AnchorValueStatistics::MergeFrom(*(v10 + 8 * v9), v7);
      ++v6;
      v4 = *(a2 + 4);
    }

    while (v6 < v4);
  }

  if ((*(a2 + 44) & 2) != 0)
  {
    v11 = *(a2 + 4);
    *(this + 11) |= 2u;
    v12 = *(this + 4);
    if (v12 == v5)
    {
      operator new();
    }

    std::string::operator=(v12, v11);
  }
}

void sub_2590E6508(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void CLMicroLocationProto::ClusterAnchorValueStatistics::~ClusterAnchorValueStatistics(CLMicroLocationProto::ClusterAnchorValueStatistics *this)
{
  *this = &unk_286A57CD8;
  CLMicroLocationProto::AnchorMetadata::SharedDtor(this);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<CLMicroLocationProto::Measurement>::TypeHandler>(this + 1);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  CLMicroLocationProto::ClusterAnchorValueStatistics::~ClusterAnchorValueStatistics(this);

  JUMPOUT(0x259CA1F90);
}

uint64_t CLMicroLocationProto::ClusterAnchorValueStatistics::Clear(CLMicroLocationProto::ClusterAnchorValueStatistics *this)
{
  if ((*(this + 44) & 2) != 0)
  {
    v2 = *(this + 4);
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

  result = wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Clear<wireless_diagnostics::google::protobuf::RepeatedPtrField<CLMicroLocationProto::Measurement>::TypeHandler>(this + 8);
  *(this + 11) = 0;
  return result;
}

uint64_t CLMicroLocationProto::ClusterAnchorValueStatistics::MergePartialFromCodedStream(CLMicroLocationProto::ClusterAnchorValueStatistics *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
{
  v5 = MEMORY[0x277D82C30];
  while (1)
  {
    while (1)
    {
LABEL_2:
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
        goto LABEL_31;
      }

LABEL_34:
      *(this + 11) |= 2u;
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

    if (TagFallback >> 3 == 1 && v8 == 2)
    {
      while (1)
      {
        v9 = *(this + 5);
        v10 = *(this + 4);
        if (v10 >= v9)
        {
          if (v9 == *(this + 6))
          {
            wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 8));
            v9 = *(this + 5);
          }

          *(this + 5) = v9 + 1;
          operator new();
        }

        v11 = *(this + 1);
        *(this + 4) = v10 + 1;
        v12 = *(v11 + 8 * v10);
        v23 = 0;
        v13 = *(a2 + 1);
        if (v13 >= *(a2 + 2) || *v13 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v23))
          {
            return 0;
          }
        }

        else
        {
          v23 = *v13;
          *(a2 + 1) = v13 + 1;
        }

        v14 = *(a2 + 14);
        v15 = *(a2 + 15);
        *(a2 + 14) = v14 + 1;
        if (v14 >= v15)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
        if (!CLMicroLocationProto::AnchorValueStatistics::MergePartialFromCodedStream(v12, a2, v16) || *(a2 + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
        v17 = *(a2 + 14);
        v18 = __OFSUB__(v17, 1);
        v19 = v17 - 1;
        if (v19 < 0 == v18)
        {
          *(a2 + 14) = v19;
        }

        v20 = *(a2 + 1);
        if (v20 >= *(a2 + 2))
        {
          goto LABEL_2;
        }

        v21 = *v20;
        if (v21 != 10)
        {
          if (v21 != 18)
          {
            goto LABEL_2;
          }

          *(a2 + 1) = v20 + 1;
          goto LABEL_34;
        }

        *(a2 + 1) = v20 + 1;
      }
    }

LABEL_31:
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

uint64_t CLMicroLocationProto::ClusterAnchorValueStatistics::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
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

    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBytes();
  }

  return this;
}

uint64_t CLMicroLocationProto::ClusterAnchorValueStatistics::ByteSize(CLMicroLocationProto::ClusterAnchorValueStatistics *this, unsigned int a2)
{
  if ((*(this + 44) & 2) != 0)
  {
    v4 = *(this + 4);
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

    v3 = v9 + v5;
  }

  else
  {
    v3 = 0;
  }

  v11 = *(this + 4);
  v12 = (v11 + v3);
  if (v11 >= 1)
  {
    v13 = 0;
    do
    {
      v14 = CLMicroLocationProto::AnchorValueStatistics::ByteSize(*(*(this + 1) + 8 * v13), a2);
      v15 = v14;
      if (v14 >= 0x80)
      {
        v16 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v14);
      }

      else
      {
        v16 = 1;
      }

      v12 = (v15 + v12 + v16);
      ++v13;
    }

    while (v13 < *(this + 4));
  }

  *(this + 10) = v12;
  return v12;
}

void CLMicroLocationProto::ClusterAnchorValueStatistics::CheckTypeAndMergeFrom(CLMicroLocationProto::ClusterAnchorValueStatistics *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  {
    CLMicroLocationProto::BleLeechedBeacons::CheckTypeAndMergeFrom();
  }

  CLMicroLocationProto::ClusterAnchorValueStatistics::MergeFrom(this, lpsrc);
}

void CLMicroLocationProto::ClusterAnchorValueStatisticsVector::MergeFrom(CLMicroLocationProto::ClusterAnchorValueStatisticsVector *this, const CLMicroLocationProto::ClusterAnchorValueStatisticsVector *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v10);
  }

  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 8));
  LODWORD(v4) = *(a2 + 4);
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
        wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v10);
      }

      v6 = *(*(a2 + 1) + 8 * v5);
      v7 = *(this + 5);
      v8 = *(this + 4);
      if (v8 >= v7)
      {
        if (v7 == *(this + 6))
        {
          wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 8));
          v7 = *(this + 5);
        }

        *(this + 5) = v7 + 1;
        operator new();
      }

      v9 = *(this + 1);
      *(this + 4) = v8 + 1;
      CLMicroLocationProto::ClusterAnchorValueStatistics::MergeFrom(*(v9 + 8 * v8), v6);
      ++v5;
      v4 = *(a2 + 4);
    }

    while (v5 < v4);
  }
}

void sub_2590E6D24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void CLMicroLocationProto::ClusterAnchorValueStatisticsVector::~ClusterAnchorValueStatisticsVector(CLMicroLocationProto::ClusterAnchorValueStatisticsVector *this)
{
  *this = &unk_286A57D50;
  CLMicroLocationProto::protobuf_AddDesc_microlocation_2eproto(this);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<CLMicroLocationProto::Measurement>::TypeHandler>(this + 1);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  CLMicroLocationProto::ClusterAnchorValueStatisticsVector::~ClusterAnchorValueStatisticsVector(this);

  JUMPOUT(0x259CA1F90);
}

uint64_t CLMicroLocationProto::ClusterAnchorValueStatisticsVector::Clear(CLMicroLocationProto::ClusterAnchorValueStatisticsVector *this)
{
  result = wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Clear<wireless_diagnostics::google::protobuf::RepeatedPtrField<CLMicroLocationProto::Measurement>::TypeHandler>(this + 8);
  *(this + 9) = 0;
  return result;
}

uint64_t CLMicroLocationProto::ClusterAnchorValueStatisticsVector::MergePartialFromCodedStream(CLMicroLocationProto::ClusterAnchorValueStatisticsVector *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
{
  while (1)
  {
LABEL_1:
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

    if (TagFallback == 10)
    {
      while (1)
      {
        v7 = *(this + 5);
        v8 = *(this + 4);
        if (v8 >= v7)
        {
          if (v7 == *(this + 6))
          {
            wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 8));
            v7 = *(this + 5);
          }

          *(this + 5) = v7 + 1;
          operator new();
        }

        v9 = *(this + 1);
        *(this + 4) = v8 + 1;
        v10 = *(v9 + 8 * v8);
        v21 = 0;
        v11 = *(a2 + 1);
        if (v11 >= *(a2 + 2) || *v11 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v21))
          {
            return 0;
          }
        }

        else
        {
          v21 = *v11;
          *(a2 + 1) = v11 + 1;
        }

        v12 = *(a2 + 14);
        v13 = *(a2 + 15);
        *(a2 + 14) = v12 + 1;
        if (v12 >= v13)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
        if (!CLMicroLocationProto::ClusterAnchorValueStatistics::MergePartialFromCodedStream(v10, a2, v14) || *(a2 + 36) != 1)
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
        v19 = *(a2 + 2);
        if (v18 >= v19 || *v18 != 10)
        {
          if (v18 == v19 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
          {
            *(a2 + 8) = 0;
            result = 1;
            *(a2 + 36) = 1;
            return result;
          }

          goto LABEL_1;
        }

        *(a2 + 1) = v18 + 1;
      }
    }

    if (!TagFallback || (TagFallback & 7) == 4)
    {
      return 1;
    }

    if ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(a2, TagFallback) & 1) == 0)
    {
      return 0;
    }
  }
}

uint64_t CLMicroLocationProto::ClusterAnchorValueStatisticsVector::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  if (*(this + 16) >= 1)
  {
    v5 = this;
    v6 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(1, *(*(v5 + 8) + 8 * v6++), a2, a4);
    }

    while (v6 < *(v5 + 16));
  }

  return this;
}

uint64_t CLMicroLocationProto::ClusterAnchorValueStatisticsVector::ByteSize(CLMicroLocationProto::ClusterAnchorValueStatisticsVector *this, unsigned int a2)
{
  v3 = *(this + 4);
  if (v3 >= 1)
  {
    v4 = 0;
    do
    {
      v5 = CLMicroLocationProto::ClusterAnchorValueStatistics::ByteSize(*(*(this + 1) + 8 * v4), a2);
      v6 = v5;
      if (v5 >= 0x80)
      {
        v7 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5);
      }

      else
      {
        v7 = 1;
      }

      v3 = (v6 + v3 + v7);
      ++v4;
    }

    while (v4 < *(this + 4));
  }

  *(this + 8) = v3;
  return v3;
}

void CLMicroLocationProto::ClusterAnchorValueStatisticsVector::CheckTypeAndMergeFrom(CLMicroLocationProto::ClusterAnchorValueStatisticsVector *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  {
    CLMicroLocationProto::BleLeechedBeacons::CheckTypeAndMergeFrom();
  }

  CLMicroLocationProto::ClusterAnchorValueStatisticsVector::MergeFrom(this, lpsrc);
}

void CLMicroLocationProto::LocationSimilarityListElement::MergeFrom(CLMicroLocationProto::LocationSimilarityListElement *this, const CLMicroLocationProto::LocationSimilarityListElement *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v7);
  }

  v4 = *(a2 + 6);
  if (v4)
  {
    wireless_diagnostics::google::protobuf::RepeatedField<double>::Reserve(this + 4, *(this + 6) + v4);
    memcpy((*(this + 2) + 8 * *(this + 6)), *(a2 + 2), 8 * *(a2 + 6));
    *(this + 6) += *(a2 + 6);
  }

  if (*(a2 + 36))
  {
    v5 = *(a2 + 1);
    *(this + 9) |= 1u;
    v6 = *(this + 1);
    if (v6 == MEMORY[0x277D82C30])
    {
      operator new();
    }

    std::string::operator=(v6, v5);
  }
}

void sub_2590E7328(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void CLMicroLocationProto::LocationSimilarityListElement::~LocationSimilarityListElement(CLMicroLocationProto::LocationSimilarityListElement *this)
{
  *this = &unk_286A57DC8;
  CLMicroLocationProto::ClusterRecordings::SharedDtor(this);
  v2 = *(this + 2);
  if (v2)
  {
    MEMORY[0x259CA1F70](v2, 0x1000C8000313F17);
  }

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  CLMicroLocationProto::LocationSimilarityListElement::~LocationSimilarityListElement(this);

  JUMPOUT(0x259CA1F90);
}

uint64_t CLMicroLocationProto::LocationSimilarityListElement::Clear(uint64_t this)
{
  if (*(this + 36))
  {
    v1 = *(this + 8);
    if (v1 != MEMORY[0x277D82C30])
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

  *(this + 24) = 0;
  *(this + 36) = 0;
  return this;
}

uint64_t CLMicroLocationProto::LocationSimilarityListElement::MergePartialFromCodedStream(CLMicroLocationProto::LocationSimilarityListElement *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
{
  v5 = MEMORY[0x277D82C30];
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
        if (TagFallback >> 3 == 2)
        {
          break;
        }

        if (TagFallback >> 3 != 1 || v8 != 2)
        {
          goto LABEL_18;
        }

        *(this + 9) |= 1u;
        if (*(this + 1) == v5)
        {
          operator new();
        }

        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadBytes();
        if (!result)
        {
          return result;
        }

        v10 = *(a2 + 1);
        if (v10 < *(a2 + 2) && *v10 == 17)
        {
          goto LABEL_41;
        }
      }

      if (v8 == 1)
      {
        goto LABEL_23;
      }

      if (v8 == 2)
      {
        break;
      }

LABEL_18:
      if (v8 == 4)
      {
        return 1;
      }

      if ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(a2, TagFallback) & 1) == 0)
      {
        return 0;
      }
    }

    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadPackedPrimitiveNoInline<double,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)1>(a2, this + 2);
    if (!result)
    {
      return result;
    }

LABEL_39:
    v10 = *(a2 + 1);
    v21 = *(a2 + 2);
    if (v10 < v21 && *v10 == 17)
    {
      break;
    }

    if (v10 == v21 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
    {
      *(a2 + 8) = 0;
      result = 1;
      *(a2 + 36) = 1;
      return result;
    }
  }

LABEL_41:
  *(a2 + 1) = v10 + 1;
LABEL_23:
  v22[0] = 0;
  if (wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v22))
  {
    v11 = v22[0];
    v12 = *(this + 6);
    if (v12 == *(this + 7))
    {
      wireless_diagnostics::google::protobuf::RepeatedField<double>::Reserve(this + 4, v12 + 1);
      v12 = *(this + 6);
    }

    v13 = *(this + 2);
    v14 = v12 + 1;
    *(this + 6) = v12 + 1;
    *(v13 + 8 * v12) = v11;
    v15 = *(a2 + 1);
    v16 = *(a2 + 4) - v15;
    if (v16 >= 1)
    {
      v17 = v16 / 9u;
      v18 = v17 >= *(this + 7) - v14 ? *(this + 7) - v14 : v17;
      if (v18 >= 1)
      {
        v19 = 0;
        while (*v15 == 17)
        {
          v20 = *(v15 + 1);
          if (v14 >= *(this + 7))
          {
            wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
            wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
            wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
            wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v22);
            v14 = *(this + 6);
            v13 = *(this + 2);
          }

          *(this + 6) = v14 + 1;
          *(v13 + 8 * v14) = v20;
          ++v19;
          v15 += 9;
          ++v14;
          if (v18 == v19)
          {
            goto LABEL_38;
          }
        }

        if (!v19)
        {
          goto LABEL_39;
        }

LABEL_38:
        wireless_diagnostics::google::protobuf::io::CodedInputStream::Skip(a2);
      }
    }

    goto LABEL_39;
  }

  return 0;
}

void sub_2590E7770(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadPackedPrimitiveNoInline<double,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)1>(wireless_diagnostics::google::protobuf::io::CodedInputStream *this, uint64_t *a2)
{
  v9 = 0;
  v4 = *(this + 1);
  if (v4 >= *(this + 2) || *v4 < 0)
  {
    result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v9);
    if (!result)
    {
      return result;
    }
  }

  else
  {
    v9 = *v4;
    *(this + 1) = v4 + 1;
  }

  wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this);
  if (wireless_diagnostics::google::protobuf::io::CodedInputStream::BytesUntilLimit(this) < 1)
  {
LABEL_10:
    wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this);
    return 1;
  }

  else
  {
    while (1)
    {
      v10 = 0;
      result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, &v10);
      if (!result)
      {
        break;
      }

      v6 = v10;
      v7 = *(a2 + 2);
      if (v7 == *(a2 + 3))
      {
        wireless_diagnostics::google::protobuf::RepeatedField<double>::Reserve(a2, v7 + 1);
        v7 = *(a2 + 2);
      }

      v8 = *a2;
      *(a2 + 2) = v7 + 1;
      *(v8 + 8 * v7) = v6;
      if (wireless_diagnostics::google::protobuf::io::CodedInputStream::BytesUntilLimit(this) <= 0)
      {
        goto LABEL_10;
      }
    }
  }

  return result;
}

uint64_t CLMicroLocationProto::LocationSimilarityListElement::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3)
{
  v4 = this;
  if (*(this + 36))
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBytes();
  }

  if (*(v4 + 24) >= 1)
  {
    v5 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(2, a2, *(*(v4 + 16) + 8 * v5++), a3);
    }

    while (v5 < *(v4 + 24));
  }

  return this;
}

uint64_t CLMicroLocationProto::LocationSimilarityListElement::ByteSize(CLMicroLocationProto::LocationSimilarityListElement *this, unsigned int a2)
{
  if (*(this + 36))
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

    v3 = v9 + v5;
  }

  else
  {
    v3 = 0;
  }

  result = (9 * *(this + 6) + v3);
  *(this + 8) = result;
  return result;
}

void CLMicroLocationProto::LocationSimilarityListElement::CheckTypeAndMergeFrom(CLMicroLocationProto::LocationSimilarityListElement *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  {
    CLMicroLocationProto::BleLeechedBeacons::CheckTypeAndMergeFrom();
  }

  CLMicroLocationProto::LocationSimilarityListElement::MergeFrom(this, lpsrc);
}

void CLMicroLocationProto::LocationSimilarityListData::MergeFrom(CLMicroLocationProto::LocationSimilarityListData *this, const CLMicroLocationProto::LocationSimilarityListData *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v5);
  }

  wireless_diagnostics::google::protobuf::RepeatedPtrField<std::string>::MergeFrom((this + 8), a2 + 8);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::MergeFrom<wireless_diagnostics::google::protobuf::RepeatedPtrField<CLMicroLocationProto::LocationSimilarityListElement>::TypeHandler>((this + 32), a2 + 32);
  v4 = *(a2 + 16);
  if (v4)
  {
    wireless_diagnostics::google::protobuf::RepeatedField<float>::Reserve(this + 14, *(this + 16) + v4);
    memcpy((*(this + 7) + 4 * *(this + 16)), *(a2 + 7), 4 * *(a2 + 16));
    *(this + 16) += *(a2 + 16);
  }
}

void sub_2590E7AF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void CLMicroLocationProto::LocationSimilarityListData::~LocationSimilarityListData(CLMicroLocationProto::LocationSimilarityListData *this)
{
  *this = &unk_286A57E40;
  CLMicroLocationProto::protobuf_AddDesc_microlocation_2eproto(this);
  v2 = *(this + 7);
  if (v2)
  {
    MEMORY[0x259CA1F70](v2, 0x1000C8052888210);
  }

  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<CLMicroLocationProto::Measurement>::TypeHandler>(this + 4);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<std::string>::TypeHandler>(this + 2);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  CLMicroLocationProto::LocationSimilarityListData::~LocationSimilarityListData(this);

  JUMPOUT(0x259CA1F90);
}

uint64_t CLMicroLocationProto::LocationSimilarityListData::Clear(CLMicroLocationProto::LocationSimilarityListData *this)
{
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Clear<wireless_diagnostics::google::protobuf::RepeatedPtrField<std::string>::TypeHandler>(this + 8);
  result = wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Clear<wireless_diagnostics::google::protobuf::RepeatedPtrField<CLMicroLocationProto::Measurement>::TypeHandler>(this + 32);
  *(this + 16) = 0;
  *(this + 19) = 0;
  return result;
}

uint64_t CLMicroLocationProto::LocationSimilarityListData::MergePartialFromCodedStream(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
{
  v4 = this;
  while (1)
  {
    while (1)
    {
LABEL_2:
      v5 = *(a2 + 1);
      if (v5 >= *(a2 + 2) || (v6 = *v5, (v6 & 0x80000000) != 0))
      {
        this = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadTagFallback(a2);
        v6 = this;
        *(a2 + 8) = this;
        if (!this)
        {
          return 1;
        }
      }

      else
      {
        *(a2 + 8) = v6;
        *(a2 + 1) = v5 + 1;
        if (!v6)
        {
          return 1;
        }
      }

      v7 = v6 >> 3;
      v8 = v6 & 7;
      if (v6 >> 3 != 3)
      {
        break;
      }

      if ((v6 & 7) != 0)
      {
        if (v8 == 2)
        {
          this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadPackedEnumNoInline();
          if (!this)
          {
            return this;
          }

          goto LABEL_65;
        }

LABEL_27:
        if (v8 == 4)
        {
          return 1;
        }

        this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(a2, v6);
        if ((this & 1) == 0)
        {
          return 0;
        }
      }

      else
      {
        v17 = *(a2 + 1);
        v16 = *(a2 + 2);
        while (1)
        {
          v34 = 0;
          if (v17 >= v16 || (v30 = *v17, (v30 & 0x80000000) != 0))
          {
            this = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v34);
            if (!this)
            {
              return this;
            }

            v30 = v34;
          }

          else
          {
            *(a2 + 1) = v17 + 1;
          }

          if (v30 < 4 || v30 == 15)
          {
            v32 = v4[16];
            if (v32 == v4[17])
            {
              this = wireless_diagnostics::google::protobuf::RepeatedField<float>::Reserve(v4 + 14, v32 + 1);
              v32 = v4[16];
            }

            v33 = *(v4 + 7);
            v4[16] = v32 + 1;
            *(v33 + 4 * v32) = v30;
          }

LABEL_65:
          v14 = *(a2 + 1);
          v16 = *(a2 + 2);
          if (v14 >= v16 || *v14 != 24)
          {
            break;
          }

LABEL_67:
          v17 = v14 + 1;
          *(a2 + 1) = v17;
        }

        if (v14 == v16 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
        {
          *(a2 + 8) = 0;
          this = 1;
          *(a2 + 36) = 1;
          return this;
        }
      }
    }

    if (v7 == 2)
    {
      break;
    }

    if (v7 != 1 || v8 != 2)
    {
      goto LABEL_27;
    }

    while (1)
    {
      v9 = v4[5];
      v10 = v4[4];
      if (v10 >= v9)
      {
        if (v9 == v4[6])
        {
          this = wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((v4 + 2));
          v9 = v4[5];
        }

        v4[5] = v9 + 1;
        v11 = wireless_diagnostics::google::protobuf::internal::StringTypeHandlerBase::New(this);
        v12 = *(v4 + 1);
        v13 = v4[4];
        v4[4] = v13 + 1;
        *(v12 + 8 * v13) = v11;
      }

      else
      {
        v4[4] = v10 + 1;
      }

      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadBytes();
      if (!this)
      {
        return this;
      }

      v14 = *(a2 + 1);
      if (v14 >= *(a2 + 2))
      {
        break;
      }

      v15 = *v14;
      if (v15 != 10)
      {
        if (v15 != 18)
        {
          goto LABEL_2;
        }

        goto LABEL_51;
      }

      *(a2 + 1) = v14 + 1;
    }
  }

  if (v8 != 2)
  {
    goto LABEL_27;
  }

  while (1)
  {
    v18 = v4[11];
    v19 = v4[10];
    if (v19 >= v18)
    {
      if (v18 == v4[12])
      {
        wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((v4 + 8));
        v18 = v4[11];
      }

      v4[11] = v18 + 1;
      operator new();
    }

    v20 = *(v4 + 4);
    v4[10] = v19 + 1;
    v21 = *(v20 + 8 * v19);
    v35 = 0;
    v22 = *(a2 + 1);
    if (v22 >= *(a2 + 2) || *v22 < 0)
    {
      if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v35))
      {
        return 0;
      }
    }

    else
    {
      v35 = *v22;
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
    if (!CLMicroLocationProto::LocationSimilarityListElement::MergePartialFromCodedStream(v21, a2, v25) || *(a2 + 36) != 1)
    {
      return 0;
    }

    this = wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
    v26 = *(a2 + 14);
    v27 = __OFSUB__(v26, 1);
    v28 = v26 - 1;
    if (v28 < 0 == v27)
    {
      *(a2 + 14) = v28;
    }

    v14 = *(a2 + 1);
    v16 = *(a2 + 2);
    if (v14 >= v16)
    {
      goto LABEL_2;
    }

    v29 = *v14;
    if (v29 != 18)
    {
      if (v29 == 24)
      {
        goto LABEL_67;
      }

      goto LABEL_2;
    }

LABEL_51:
    *(a2 + 1) = v14 + 1;
  }
}

uint64_t CLMicroLocationProto::LocationSimilarityListData::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  if (*(this + 16) >= 1)
  {
    v6 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBytes();
      ++v6;
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

  if (*(v5 + 64) >= 1)
  {
    v8 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(3, *(*(v5 + 56) + 4 * v8++), a2, a4);
    }

    while (v8 < *(v5 + 64));
  }

  return this;
}

uint64_t CLMicroLocationProto::LocationSimilarityListData::ByteSize(CLMicroLocationProto::LocationSimilarityListData *this, unsigned int a2)
{
  v3 = *(this + 4);
  if (v3 < 1)
  {
    v5 = *(this + 4);
  }

  else
  {
    v4 = 0;
    v5 = *(this + 4);
    do
    {
      v6 = *(*(this + 1) + 8 * v4);
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
        v3 = *(this + 4);
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

      v5 += v11 + v7;
      ++v4;
    }

    while (v4 < v3);
  }

  v12 = *(this + 10);
  v13 = v12 + v5;
  if (v12 >= 1)
  {
    v14 = 0;
    do
    {
      v15 = CLMicroLocationProto::LocationSimilarityListElement::ByteSize(*(*(this + 4) + 8 * v14), a2);
      v16 = v15;
      if (v15 >= 0x80)
      {
        v17 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v15);
      }

      else
      {
        v17 = 1;
      }

      v13 += v16 + v17;
      ++v14;
    }

    while (v14 < *(this + 10));
  }

  v18 = *(this + 16);
  if (v18 < 1)
  {
    v20 = 0;
  }

  else
  {
    v19 = 0;
    v20 = 0;
    do
    {
      v21 = *(*(this + 7) + 4 * v19);
      if ((v21 & 0x80000000) != 0)
      {
        v22 = 10;
      }

      else if (v21 >= 0x80)
      {
        v22 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v21);
        v18 = *(this + 16);
      }

      else
      {
        v22 = 1;
      }

      v20 += v22;
      ++v19;
    }

    while (v19 < v18);
  }

  result = (v20 + v13 + v18);
  *(this + 18) = result;
  return result;
}

void CLMicroLocationProto::LocationSimilarityListData::CheckTypeAndMergeFrom(CLMicroLocationProto::LocationSimilarityListData *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  {
    CLMicroLocationProto::BleLeechedBeacons::CheckTypeAndMergeFrom();
  }

  CLMicroLocationProto::LocationSimilarityListData::MergeFrom(this, lpsrc);
}

float CLMicroLocationProto::BlueAtlasData::MergeFrom(CLMicroLocationProto::BlueAtlasData *this, const CLMicroLocationProto::BlueAtlasData *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v9);
  }

  v4 = wireless_diagnostics::google::protobuf::RepeatedPtrField<std::string>::MergeFrom((this + 8), a2 + 8);
  v6 = *(a2 + 10);
  if (v6)
  {
    wireless_diagnostics::google::protobuf::RepeatedField<double>::Reserve(this + 8, *(this + 10) + v6);
    v4 = memcpy((*(this + 4) + 8 * *(this + 10)), *(a2 + 4), 8 * *(a2 + 10));
    *(this + 10) += *(a2 + 10);
  }

  if ((*(a2 + 60) & 4) != 0)
  {
    *(this + 15) |= 4u;
    v7 = *(this + 6);
    if (!v7)
    {
      operator new();
    }

    v8 = *(a2 + 6);
    if (!v8)
    {
      CLMicroLocationProto::protobuf_AddDesc_microlocation_2eproto(v4);
      v8 = *(CLMicroLocationProto::BlueAtlasData::default_instance_ + 48);
    }

    return CLMicroLocationProto::AssociatedAccessPointInfo::MergeFrom(v7, v8);
  }

  return result;
}

void sub_2590E8448(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void CLMicroLocationProto::BlueAtlasData::~BlueAtlasData(CLMicroLocationProto::BlueAtlasData *this)
{
  *this = &unk_286A57EB8;
  CLMicroLocationProto::BlueAtlasData::SharedDtor(this);
  v2 = *(this + 4);
  if (v2)
  {
    MEMORY[0x259CA1F70](v2, 0x1000C8000313F17);
  }

  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<std::string>::TypeHandler>(this + 2);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  CLMicroLocationProto::BlueAtlasData::~BlueAtlasData(this);

  JUMPOUT(0x259CA1F90);
}

void CLMicroLocationProto::BlueAtlasData::SharedDtor(CLMicroLocationProto::BlueAtlasData *this)
{
  CLMicroLocationProto::protobuf_AddDesc_microlocation_2eproto(this);
  if (CLMicroLocationProto::BlueAtlasData::default_instance_ != this)
  {
    v2 = *(this + 6);
    if (v2)
    {
      v3 = *(*v2 + 8);

      v3();
    }
  }
}

uint64_t CLMicroLocationProto::BlueAtlasData::Clear(CLMicroLocationProto::BlueAtlasData *this)
{
  if ((*(this + 60) & 4) != 0)
  {
    v2 = *(this + 6);
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

  result = wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Clear<wireless_diagnostics::google::protobuf::RepeatedPtrField<std::string>::TypeHandler>(this + 8);
  *(this + 10) = 0;
  *(this + 15) = 0;
  return result;
}

uint64_t CLMicroLocationProto::AssociatedAccessPointInfo::Clear(uint64_t this)
{
  if (*(this + 24))
  {
    *(this + 8) = 0;
    *(this + 16) = 0;
  }

  *(this + 24) = 0;
  return this;
}

uint64_t CLMicroLocationProto::BlueAtlasData::MergePartialFromCodedStream(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
{
  v4 = this;
  while (1)
  {
    while (1)
    {
      while (1)
      {
        while (1)
        {
LABEL_2:
          v5 = *(a2 + 1);
          if (v5 >= *(a2 + 2) || (v6 = *v5, (v6 & 0x80000000) != 0))
          {
            this = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadTagFallback(a2);
            v6 = this;
            *(a2 + 8) = this;
            if (!this)
            {
              return 1;
            }
          }

          else
          {
            *(a2 + 8) = v6;
            *(a2 + 1) = v5 + 1;
            if (!v6)
            {
              return 1;
            }
          }

          v7 = v6 >> 3;
          v8 = v6 & 7;
          if (v6 >> 3 != 3)
          {
            break;
          }

          if (v8 != 2)
          {
            goto LABEL_27;
          }

LABEL_54:
          *(v4 + 60) |= 4u;
          v28 = *(v4 + 48);
          if (!v28)
          {
            operator new();
          }

          v37[0] = 0;
          v29 = *(a2 + 1);
          if (v29 >= *(a2 + 2) || *v29 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v37))
            {
              return 0;
            }
          }

          else
          {
            v37[0] = *v29;
            *(a2 + 1) = v29 + 1;
          }

          v30 = *(a2 + 14);
          v31 = *(a2 + 15);
          *(a2 + 14) = v30 + 1;
          if (v30 >= v31)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
          if (!CLMicroLocationProto::AssociatedAccessPointInfo::MergePartialFromCodedStream(v28, a2, v32) || *(a2 + 36) != 1)
          {
            return 0;
          }

          this = wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
          v33 = *(a2 + 14);
          v34 = __OFSUB__(v33, 1);
          v35 = v33 - 1;
          if (v35 < 0 == v34)
          {
            *(a2 + 14) = v35;
          }

          if (*(a2 + 1) == *(a2 + 2) && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
          {
            *(a2 + 8) = 0;
            this = 1;
            *(a2 + 36) = 1;
            return this;
          }
        }

        if (v7 == 2)
        {
          break;
        }

        if (v7 != 1 || v8 != 2)
        {
          goto LABEL_27;
        }

        while (1)
        {
          v9 = *(v4 + 20);
          v10 = *(v4 + 16);
          if (v10 >= v9)
          {
            if (v9 == *(v4 + 24))
            {
              this = wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((v4 + 8));
              v9 = *(v4 + 20);
            }

            *(v4 + 20) = v9 + 1;
            v11 = wireless_diagnostics::google::protobuf::internal::StringTypeHandlerBase::New(this);
            v12 = *(v4 + 8);
            v13 = *(v4 + 16);
            *(v4 + 16) = v13 + 1;
            *(v12 + 8 * v13) = v11;
          }

          else
          {
            *(v4 + 16) = v10 + 1;
          }

          this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadBytes();
          if (!this)
          {
            return this;
          }

          v15 = *(a2 + 1);
          v14 = *(a2 + 2);
          if (v15 >= v14)
          {
            break;
          }

          v16 = *v15;
          if (v16 != 10)
          {
            goto LABEL_51;
          }

          *(a2 + 1) = v15 + 1;
        }
      }

      if ((v6 & 7) != 0)
      {
        break;
      }

      v17 = *(a2 + 1);
      v14 = *(a2 + 2);
      while (1)
      {
        v36 = 0;
        if (v17 >= v14 || (*v17 & 0x8000000000000000) != 0)
        {
          this = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, &v36);
          if (!this)
          {
            return 0;
          }
        }

        else
        {
          v36 = *v17;
          *(a2 + 1) = v17 + 1;
        }

        v18 = *(v4 + 40);
        v19 = *(v4 + 44);
        if (v18 == v19)
        {
          this = wireless_diagnostics::google::protobuf::RepeatedField<double>::Reserve((v4 + 32), v18 + 1);
          v18 = *(v4 + 40);
          v19 = *(v4 + 44);
        }

        v20 = v36;
        v21 = *(v4 + 32);
        v22 = v18 + 1;
        *(v4 + 40) = v18 + 1;
        *(v21 + 8 * v18) = v20;
        if (v19 - (v18 + 1) >= 1)
        {
          v23 = v19 - v18;
          do
          {
            v24 = *(a2 + 1);
            v25 = *(a2 + 2);
            if (v24 >= v25 || *v24 != 16)
            {
              break;
            }

            *(a2 + 1) = v24 + 1;
            if ((v24 + 1) >= v25 || (v24[1] & 0x8000000000000000) != 0)
            {
              this = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, &v36);
              if (!this)
              {
                return 0;
              }

              v22 = *(v4 + 40);
            }

            else
            {
              v36 = v24[1];
              *(a2 + 1) = v24 + 2;
            }

            if (v22 >= *(v4 + 44))
            {
              wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
              wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
              wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
              wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v37);
              v22 = *(v4 + 40);
            }

            v26 = v36;
            v27 = *(v4 + 32);
            *(v4 + 40) = v22 + 1;
            *(v27 + 8 * v22) = v26;
            --v23;
            ++v22;
          }

          while (v23 > 1);
        }

LABEL_49:
        v15 = *(a2 + 1);
        v14 = *(a2 + 2);
        if (v15 >= v14)
        {
          break;
        }

        v16 = *v15;
        if (v16 == 26)
        {
          *(a2 + 1) = v15 + 1;
          goto LABEL_54;
        }

LABEL_51:
        if (v16 != 16)
        {
          goto LABEL_2;
        }

        v17 = (v15 + 1);
        *(a2 + 1) = v17;
      }
    }

    if (v8 == 2)
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadPackedPrimitiveNoInline<unsigned long long,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)4>(a2, (v4 + 32));
      if (!this)
      {
        return this;
      }

      goto LABEL_49;
    }

LABEL_27:
    if (v8 == 4)
    {
      return 1;
    }

    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(a2, v6);
    if ((this & 1) == 0)
    {
      return 0;
    }
  }
}

void sub_2590E8AA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
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
        wireless_diagnostics::google::protobuf::RepeatedField<double>::Reserve(a2, v7 + 1);
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

CLMicroLocationProto *CLMicroLocationProto::BlueAtlasData::SerializeWithCachedSizes(CLMicroLocationProto *this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  if (*(this + 4) >= 1)
  {
    v6 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBytes();
      ++v6;
    }

    while (v6 < *(v5 + 4));
  }

  if (*(v5 + 10) >= 1)
  {
    v7 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(2, *(*(v5 + 4) + 8 * v7++), a2, a4);
    }

    while (v7 < *(v5 + 10));
  }

  if ((*(v5 + 60) & 4) != 0)
  {
    v8 = *(v5 + 6);
    if (!v8)
    {
      CLMicroLocationProto::protobuf_AddDesc_microlocation_2eproto(this);
      v8 = *(CLMicroLocationProto::BlueAtlasData::default_instance_ + 48);
    }

    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(3, v8, a2, a4);
  }

  return this;
}

uint64_t CLMicroLocationProto::BlueAtlasData::ByteSize(CLMicroLocationProto::BlueAtlasData *this, unint64_t a2)
{
  if ((*(this + 60) & 4) != 0)
  {
    v4 = *(this + 6);
    if (!v4)
    {
      CLMicroLocationProto::protobuf_AddDesc_microlocation_2eproto(0);
      v4 = *(CLMicroLocationProto::BlueAtlasData::default_instance_ + 48);
    }

    v5 = CLMicroLocationProto::AssociatedAccessPointInfo::ByteSize(v4, a2);
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
  v9 = v8 + v3;
  if (v8 >= 1)
  {
    for (i = 0; i < v8; ++i)
    {
      v11 = *(*(this + 1) + 8 * i);
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
        v8 = *(this + 4);
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

      v9 += v16 + v12;
    }
  }

  LODWORD(v17) = *(this + 10);
  if (v17 < 1)
  {
    v19 = 0;
  }

  else
  {
    v18 = 0;
    v19 = 0;
    do
    {
      v19 += wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(*(this + 4) + 8 * v18++));
      v17 = *(this + 10);
    }

    while (v18 < v17);
  }

  result = (v19 + v9 + v17);
  *(this + 14) = result;
  return result;
}

float CLMicroLocationProto::BlueAtlasData::CheckTypeAndMergeFrom(CLMicroLocationProto::BlueAtlasData *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  {
    CLMicroLocationProto::BleLeechedBeacons::CheckTypeAndMergeFrom();
  }

  return CLMicroLocationProto::BlueAtlasData::MergeFrom(this, lpsrc);
}

float CLMicroLocationProto::AssociatedAccessPointInfo::MergeFrom(CLMicroLocationProto::AssociatedAccessPointInfo *this, const CLMicroLocationProto::AssociatedAccessPointInfo *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v7);
  }

  LOBYTE(v5) = *(a2 + 24);
  if (v5)
  {
    if (*(a2 + 24))
    {
      v6 = *(a2 + 1);
      *(this + 6) |= 1u;
      *(this + 1) = v6;
      v5 = *(a2 + 6);
    }

    if ((v5 & 2) != 0)
    {
      result = *(a2 + 4);
      *(this + 6) |= 2u;
      *(this + 4) = result;
    }
  }

  return result;
}

void sub_2590E8F10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

float CLMicroLocationProto::BlueAtlasData::CopyFrom(CLMicroLocationProto::AssociatedAccessPointInfo *this, const CLMicroLocationProto::BlueAtlasData *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    return CLMicroLocationProto::BlueAtlasData::MergeFrom(this, a2);
  }

  return result;
}

CLMicroLocationProto::Model *CLMicroLocationProto::Model::Model(CLMicroLocationProto::Model *this, const CLMicroLocationProto::Model *a2)
{
  *(this + 1) = 0;
  *this = &unk_286A57F30;
  *(this + 2) = 0;
  *(this + 6) = 0;
  *(this + 10) = 0;
  *(this + 11) = 0;
  *(this + 24) = 0;
  *(this + 104) = 0;
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  *(this + 60) = 0u;
  *(this + 108) = 0u;
  *(this + 124) = 0u;
  *(this + 140) = 0u;
  *(this + 156) = 0u;
  *(this + 43) = 0;
  v3 = MEMORY[0x277D82C30];
  *(this + 23) = 0;
  *(this + 24) = 0;
  *(this + 22) = v3;
  *(this + 50) = 0;
  CLMicroLocationProto::Model::MergeFrom(this, a2);
  return this;
}

void sub_2590E905C(_Unwind_Exception *a1)
{
  v5 = v1[17];
  if (v5)
  {
    MEMORY[0x259CA1F70](v5, 0x1000C8052888210);
  }

  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<CLMicroLocationProto::Measurement>::TypeHandler>(v3);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<CLMicroLocationProto::Measurement>::TypeHandler>(v1 + 7);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<CLMicroLocationProto::Measurement>::TypeHandler>(v2);
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(v1);
  _Unwind_Resume(a1);
}

void CLMicroLocationProto::Model::MergeFrom(CLMicroLocationProto::Model *this, const CLMicroLocationProto::Model *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v42);
  }

  wireless_diagnostics::google::protobuf::RepeatedPtrField<CLMicroLocationProto::Fingerprint>::MergeFrom((this + 8), a2 + 8);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 56));
  LODWORD(v4) = *(a2 + 16);
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
        wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v42);
      }

      v6 = *(*(a2 + 7) + 8 * v5);
      v7 = *(this + 17);
      v8 = *(this + 16);
      if (v8 >= v7)
      {
        if (v7 == *(this + 18))
        {
          wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 56));
          v7 = *(this + 17);
        }

        *(this + 17) = v7 + 1;
        operator new();
      }

      v9 = *(this + 7);
      *(this + 16) = v8 + 1;
      CLMicroLocationProto::ClusterRecordings::MergeFrom(*(v9 + 8 * v8), v6);
      ++v5;
      v4 = *(a2 + 16);
    }

    while (v5 < v4);
  }

  v10 = wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 80));
  LODWORD(v11) = *(a2 + 22);
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
        wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v42);
      }

      v13 = *(*(a2 + 10) + 8 * v12);
      v14 = *(this + 23);
      v15 = *(this + 22);
      if (v15 >= v14)
      {
        if (v14 == *(this + 24))
        {
          wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 80));
          v14 = *(this + 23);
        }

        *(this + 23) = v14 + 1;
        operator new();
      }

      v16 = *(this + 10);
      *(this + 22) = v15 + 1;
      CLMicroLocationProto::AnchorMetadata::MergeFrom(*(v16 + 8 * v15), v13);
      ++v12;
      v11 = *(a2 + 22);
    }

    while (v12 < v11);
  }

  v17 = *(a2 + 36);
  if (v17)
  {
    wireless_diagnostics::google::protobuf::RepeatedField<float>::Reserve(this + 34, *(this + 36) + v17);
    v10 = memcpy((*(this + 17) + 4 * *(this + 36)), *(a2 + 17), 4 * *(a2 + 36));
    *(this + 36) += *(a2 + 36);
  }

  v18 = *(a2 + 50);
  if ((v18 & 0x1FE) == 0)
  {
    goto LABEL_32;
  }

  if ((v18 & 2) != 0)
  {
    v22 = *(a2 + 4);
    *(this + 50) |= 2u;
    *(this + 4) = v22;
    v18 = *(a2 + 50);
    if ((v18 & 4) == 0)
    {
LABEL_28:
      if ((v18 & 8) == 0)
      {
        goto LABEL_29;
      }

LABEL_53:
      v24 = *(a2 + 12);
      if (v24 >= 6)
      {
        CLMicroLocationProto::Model::MergeFrom();
      }

      *(this + 50) |= 8u;
      *(this + 12) = v24;
      v18 = *(a2 + 50);
      if ((v18 & 0x10) == 0)
      {
LABEL_30:
        if ((v18 & 0x80) == 0)
        {
          goto LABEL_32;
        }

        goto LABEL_31;
      }

      goto LABEL_55;
    }
  }

  else if ((v18 & 4) == 0)
  {
    goto LABEL_28;
  }

  v23 = *(a2 + 5);
  *(this + 50) |= 4u;
  *(this + 5) = v23;
  v18 = *(a2 + 50);
  if ((v18 & 8) != 0)
  {
    goto LABEL_53;
  }

LABEL_29:
  if ((v18 & 0x10) == 0)
  {
    goto LABEL_30;
  }

LABEL_55:
  v25 = *(a2 + 13);
  if (v25 >= 6)
  {
    CLMicroLocationProto::Model::MergeFrom();
  }

  *(this + 50) |= 0x10u;
  *(this + 13) = v25;
  v18 = *(a2 + 50);
  if ((v18 & 0x80) != 0)
  {
LABEL_31:
    v19 = *(a2 + 104);
    *(this + 50) |= 0x80u;
    *(this + 104) = v19;
    v18 = *(a2 + 50);
  }

LABEL_32:
  if ((v18 & 0xFF00) == 0)
  {
    goto LABEL_42;
  }

  if ((v18 & 0x100) != 0)
  {
    *(this + 50) |= 0x100u;
    v26 = *(this + 14);
    if (!v26)
    {
      operator new();
    }

    v27 = *(a2 + 14);
    if (!v27)
    {
      CLMicroLocationProto::protobuf_AddDesc_microlocation_2eproto(v10);
      v27 = *(CLMicroLocationProto::Model::default_instance_ + 112);
    }

    CLMicroLocationProto::anchorAppearancesVector::MergeFrom(v26, v27);
    v18 = *(a2 + 50);
    if ((v18 & 0x200) == 0)
    {
LABEL_35:
      if ((v18 & 0x400) == 0)
      {
        goto LABEL_36;
      }

      goto LABEL_64;
    }
  }

  else if ((v18 & 0x200) == 0)
  {
    goto LABEL_35;
  }

  v28 = *(a2 + 27);
  *(this + 50) |= 0x200u;
  *(this + 27) = v28;
  v18 = *(a2 + 50);
  if ((v18 & 0x400) == 0)
  {
LABEL_36:
    if ((v18 & 0x800) == 0)
    {
      goto LABEL_37;
    }

    goto LABEL_69;
  }

LABEL_64:
  *(this + 50) |= 0x400u;
  v29 = *(this + 15);
  if (!v29)
  {
    operator new();
  }

  v30 = *(a2 + 15);
  if (!v30)
  {
    CLMicroLocationProto::protobuf_AddDesc_microlocation_2eproto(v10);
    v30 = *(CLMicroLocationProto::Model::default_instance_ + 120);
  }

  CLMicroLocationProto::LocationSimilarityListData::MergeFrom(v29, v30);
  v18 = *(a2 + 50);
  if ((v18 & 0x800) == 0)
  {
LABEL_37:
    if ((v18 & 0x1000) == 0)
    {
      goto LABEL_38;
    }

    goto LABEL_71;
  }

LABEL_69:
  v31 = *(a2 + 32);
  if (v31 >= 4)
  {
    CLMicroLocationProto::Model::MergeFrom();
  }

  *(this + 50) |= 0x800u;
  *(this + 32) = v31;
  v18 = *(a2 + 50);
  if ((v18 & 0x1000) == 0)
  {
LABEL_38:
    if ((v18 & 0x4000) == 0)
    {
      goto LABEL_40;
    }

    goto LABEL_39;
  }

LABEL_71:
  v32 = *(a2 + 33);
  if (v32 >= 4)
  {
    CLMicroLocationProto::Model::MergeFrom();
  }

  *(this + 50) |= 0x1000u;
  *(this + 33) = v32;
  v18 = *(a2 + 50);
  if ((v18 & 0x4000) == 0)
  {
    goto LABEL_40;
  }

LABEL_39:
  v20 = *(a2 + 38);
  *(this + 50) |= 0x4000u;
  *(this + 38) = v20;
  v18 = *(a2 + 50);
LABEL_40:
  if ((v18 & 0x8000) != 0)
  {
    v21 = *(a2 + 39);
    *(this + 50) |= 0x8000u;
    *(this + 39) = v21;
    v18 = *(a2 + 50);
  }

LABEL_42:
  if ((v18 & 0xFF0000) == 0)
  {
    return;
  }

  if ((v18 & 0x10000) != 0)
  {
    v33 = *(a2 + 40);
    *(this + 50) |= 0x10000u;
    *(this + 40) = v33;
    v18 = *(a2 + 50);
    if ((v18 & 0x20000) == 0)
    {
LABEL_45:
      if ((v18 & 0x40000) == 0)
      {
        goto LABEL_46;
      }

      goto LABEL_76;
    }
  }

  else if ((v18 & 0x20000) == 0)
  {
    goto LABEL_45;
  }

  v34 = *(a2 + 41);
  *(this + 50) |= 0x20000u;
  *(this + 41) = v34;
  v18 = *(a2 + 50);
  if ((v18 & 0x40000) == 0)
  {
LABEL_46:
    if ((v18 & 0x80000) == 0)
    {
      goto LABEL_47;
    }

    goto LABEL_77;
  }

LABEL_76:
  v35 = *(a2 + 42);
  *(this + 50) |= 0x40000u;
  *(this + 42) = v35;
  v18 = *(a2 + 50);
  if ((v18 & 0x80000) == 0)
  {
LABEL_47:
    if ((v18 & 0x100000) == 0)
    {
      goto LABEL_48;
    }

    goto LABEL_78;
  }

LABEL_77:
  v36 = *(a2 + 43);
  *(this + 50) |= 0x80000u;
  *(this + 43) = v36;
  v18 = *(a2 + 50);
  if ((v18 & 0x100000) == 0)
  {
LABEL_48:
    if ((v18 & 0x200000) == 0)
    {
      goto LABEL_49;
    }

    goto LABEL_79;
  }

LABEL_78:
  v37 = *(a2 + 48);
  *(this + 50) |= 0x100000u;
  *(this + 48) = v37;
  v18 = *(a2 + 50);
  if ((v18 & 0x200000) == 0)
  {
LABEL_49:
    if ((v18 & 0x400000) == 0)
    {
      return;
    }

    goto LABEL_82;
  }

LABEL_79:
  v38 = *(a2 + 22);
  *(this + 50) |= 0x200000u;
  v39 = *(this + 22);
  if (v39 == MEMORY[0x277D82C30])
  {
    operator new();
  }

  v10 = std::string::operator=(v39, v38);
  if ((*(a2 + 50) & 0x400000) != 0)
  {
LABEL_82:
    *(this + 50) |= 0x400000u;
    v40 = *(this + 23);
    if (!v40)
    {
      operator new();
    }

    v41 = *(a2 + 23);
    if (!v41)
    {
      CLMicroLocationProto::protobuf_AddDesc_microlocation_2eproto(v10);
      v41 = *(CLMicroLocationProto::Model::default_instance_ + 184);
    }

    CLMicroLocationProto::BlueAtlasData::MergeFrom(v40, v41);
  }
}

void sub_2590E9834(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void CLMicroLocationProto::Model::~Model(CLMicroLocationProto::Model *this)
{
  *this = &unk_286A57F30;
  CLMicroLocationProto::Model::SharedDtor(this);
  v2 = *(this + 17);
  if (v2)
  {
    MEMORY[0x259CA1F70](v2, 0x1000C8052888210);
  }

  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<CLMicroLocationProto::Measurement>::TypeHandler>(this + 10);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<CLMicroLocationProto::Measurement>::TypeHandler>(this + 7);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<CLMicroLocationProto::Measurement>::TypeHandler>(this + 1);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  CLMicroLocationProto::Model::~Model(this);

  JUMPOUT(0x259CA1F90);
}

void CLMicroLocationProto::Model::SharedDtor(CLMicroLocationProto::Model *this)
{
  v1 = this;
  v2 = *(this + 22);
  if (v2 != MEMORY[0x277D82C30] && v2 != 0)
  {
    if (*(v2 + 23) < 0)
    {
      operator delete(*v2);
    }

    this = MEMORY[0x259CA1F90](v2, 0x1012C40EC159624);
  }

  CLMicroLocationProto::protobuf_AddDesc_microlocation_2eproto(this);
  if (CLMicroLocationProto::Model::default_instance_ != v1)
  {
    v4 = *(v1 + 14);
    if (v4)
    {
      (*(*v4 + 8))(v4);
    }

    v5 = *(v1 + 15);
    if (v5)
    {
      (*(*v5 + 8))(v5);
    }

    v6 = *(v1 + 23);
    if (v6)
    {
      v7 = *(*v6 + 8);

      v7();
    }
  }
}

uint64_t CLMicroLocationProto::Model::Clear(CLMicroLocationProto::Model *this)
{
  v2 = *(this + 50);
  if ((v2 & 0x1FE) != 0)
  {
    *(this + 104) = 0;
    *(this + 5) = 0;
    *(this + 6) = 0;
    *(this + 4) = 0;
  }

  if ((v2 & 0xFF00) != 0)
  {
    if ((v2 & 0x100) != 0)
    {
      v3 = *(this + 14);
      if (v3)
      {
        wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Clear<wireless_diagnostics::google::protobuf::RepeatedPtrField<CLMicroLocationProto::Measurement>::TypeHandler>(v3 + 8);
        *(v3 + 36) = 0;
        v2 = *(this + 50);
      }
    }

    *(this + 27) = 0;
    if ((v2 & 0x400) != 0)
    {
      v4 = *(this + 15);
      if (v4)
      {
        wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Clear<wireless_diagnostics::google::protobuf::RepeatedPtrField<std::string>::TypeHandler>(v4 + 8);
        wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Clear<wireless_diagnostics::google::protobuf::RepeatedPtrField<CLMicroLocationProto::Measurement>::TypeHandler>(v4 + 32);
        *(v4 + 64) = 0;
        *(v4 + 76) = 0;
        v2 = *(this + 50);
      }
    }

    *(this + 16) = 0;
    *(this + 19) = 0;
  }

  if ((v2 & 0xFF0000) != 0)
  {
    *(this + 48) = 0;
    *(this + 20) = 0;
    *(this + 21) = 0;
    if ((v2 & 0x200000) != 0)
    {
      v5 = *(this + 22);
      if (v5 != MEMORY[0x277D82C30])
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

    if ((*(this + 202) & 0x40) != 0)
    {
      v6 = *(this + 23);
      if (v6)
      {
        CLMicroLocationProto::BlueAtlasData::Clear(v6);
      }
    }
  }

  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Clear<wireless_diagnostics::google::protobuf::RepeatedPtrField<CLMicroLocationProto::Measurement>::TypeHandler>(this + 8);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Clear<wireless_diagnostics::google::protobuf::RepeatedPtrField<CLMicroLocationProto::Measurement>::TypeHandler>(this + 56);
  result = wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Clear<wireless_diagnostics::google::protobuf::RepeatedPtrField<CLMicroLocationProto::Measurement>::TypeHandler>(this + 80);
  *(this + 36) = 0;
  *(this + 50) = 0;
  return result;
}

uint64_t CLMicroLocationProto::Model::MergePartialFromCodedStream(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
{
  v5 = MEMORY[0x277D82C30];
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
        if (v8 != 2)
        {
          goto LABEL_77;
        }

        while (1)
        {
          v9 = *(this + 20);
          v10 = *(this + 16);
          if (v10 >= v9)
          {
            if (v9 == *(this + 24))
            {
              wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 8));
              v9 = *(this + 20);
            }

            *(this + 20) = v9 + 1;
            wireless_diagnostics::google::protobuf::internal::GenericTypeHandler<CLMicroLocationProto::Fingerprint>::New();
          }

          v11 = *(this + 8);
          *(this + 16) = v10 + 1;
          v12 = *(v11 + 8 * v10);
          v128[0] = 0;
          v13 = *(a2 + 1);
          if (v13 >= *(a2 + 2) || *v13 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v128))
            {
              return 0;
            }
          }

          else
          {
            v128[0] = *v13;
            *(a2 + 1) = v13 + 1;
          }

          v14 = *(a2 + 14);
          v15 = *(a2 + 15);
          *(a2 + 14) = v14 + 1;
          if (v14 >= v15)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
          if (!CLMicroLocationProto::Fingerprint::MergePartialFromCodedStream(v12, a2, v16) || *(a2 + 36) != 1)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
          v17 = *(a2 + 14);
          v18 = __OFSUB__(v17, 1);
          v19 = v17 - 1;
          if (v19 < 0 == v18)
          {
            *(a2 + 14) = v19;
          }

          v21 = *(a2 + 1);
          v20 = *(a2 + 2);
          if (v21 >= v20)
          {
            goto LABEL_2;
          }

          v22 = *v21;
          if (v22 != 10)
          {
            break;
          }

          *(a2 + 1) = v21 + 1;
        }

        if (v22 != 16)
        {
          continue;
        }

        v23 = (v21 + 1);
        *(a2 + 1) = v23;
        goto LABEL_51;
      case 2u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_77;
        }

        v23 = *(a2 + 1);
        v20 = *(a2 + 2);
LABEL_51:
        if (v23 >= v20 || (v40 = *v23, v40 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, (this + 32));
          if (!result)
          {
            return result;
          }

          v41 = *(a2 + 1);
          v20 = *(a2 + 2);
        }

        else
        {
          *(this + 32) = v40;
          v41 = v23 + 1;
          *(a2 + 1) = v41;
        }

        *(this + 200) |= 2u;
        if (v41 >= v20 || *v41 != 25)
        {
          continue;
        }

        *(a2 + 1) = v41 + 1;
LABEL_87:
        *v128 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v128) & 1) == 0)
        {
          return 0;
        }

        *(this + 40) = *v128;
        *(this + 200) |= 4u;
        v51 = *(a2 + 1);
        v36 = *(a2 + 2);
        if (v51 >= v36 || *v51 != 32)
        {
          continue;
        }

        v37 = v51 + 1;
        *(a2 + 1) = v37;
LABEL_91:
        v128[0] = 0;
        if (v37 >= v36 || (v52 = *v37, (v52 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v128);
          if (!result)
          {
            return result;
          }

          v52 = v128[0];
        }

        else
        {
          *(a2 + 1) = v37 + 1;
        }

        if (v52 <= 5)
        {
          *(this + 200) |= 8u;
          *(this + 48) = v52;
        }

        v53 = *(a2 + 1);
        v29 = *(a2 + 2);
        if (v53 >= v29 || *v53 != 40)
        {
          continue;
        }

        v30 = v53 + 1;
        *(a2 + 1) = v30;
LABEL_101:
        v128[0] = 0;
        if (v30 >= v29 || (v54 = *v30, (v54 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v128);
          if (!result)
          {
            return result;
          }

          v54 = v128[0];
        }

        else
        {
          *(a2 + 1) = v30 + 1;
        }

        if (v54 <= 5)
        {
          *(this + 200) |= 0x10u;
          *(this + 52) = v54;
        }

        v55 = *(a2 + 1);
        if (v55 >= *(a2 + 2) || *v55 != 50)
        {
          continue;
        }

        do
        {
          *(a2 + 1) = v55 + 1;
LABEL_111:
          v56 = *(this + 68);
          v57 = *(this + 64);
          if (v57 >= v56)
          {
            if (v56 == *(this + 72))
            {
              wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 56));
              v56 = *(this + 68);
            }

            *(this + 68) = v56 + 1;
            operator new();
          }

          v58 = *(this + 56);
          *(this + 64) = v57 + 1;
          v59 = *(v58 + 8 * v57);
          v128[0] = 0;
          v60 = *(a2 + 1);
          if (v60 >= *(a2 + 2) || *v60 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v128))
            {
              return 0;
            }
          }

          else
          {
            v128[0] = *v60;
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
          if (!CLMicroLocationProto::ClusterRecordings::MergePartialFromCodedStream(v59, a2, v63) || *(a2 + 36) != 1)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
          v64 = *(a2 + 14);
          v18 = __OFSUB__(v64, 1);
          v65 = v64 - 1;
          if (v65 < 0 == v18)
          {
            *(a2 + 14) = v65;
          }

          v55 = *(a2 + 1);
          if (v55 >= *(a2 + 2))
          {
            goto LABEL_2;
          }

          v66 = *v55;
        }

        while (v66 == 50);
        if (v66 != 58)
        {
          continue;
        }

        do
        {
          *(a2 + 1) = v55 + 1;
LABEL_129:
          v67 = *(this + 92);
          v68 = *(this + 88);
          if (v68 >= v67)
          {
            if (v67 == *(this + 96))
            {
              wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 80));
              v67 = *(this + 92);
            }

            *(this + 92) = v67 + 1;
            operator new();
          }

          v69 = *(this + 80);
          *(this + 88) = v68 + 1;
          v70 = *(v69 + 8 * v68);
          v128[0] = 0;
          v71 = *(a2 + 1);
          if (v71 >= *(a2 + 2) || *v71 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v128))
            {
              return 0;
            }
          }

          else
          {
            v128[0] = *v71;
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
          if (!CLMicroLocationProto::AnchorMetadata::MergePartialFromCodedStream(v70, a2, v74) || *(a2 + 36) != 1)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
          v75 = *(a2 + 14);
          v18 = __OFSUB__(v75, 1);
          v76 = v75 - 1;
          if (v76 < 0 == v18)
          {
            *(a2 + 14) = v76;
          }

          v55 = *(a2 + 1);
          v38 = *(a2 + 2);
          if (v55 >= v38)
          {
            goto LABEL_2;
          }

          v77 = *v55;
        }

        while (v77 == 58);
        if (v77 != 64)
        {
          continue;
        }

        v39 = v55 + 1;
        *(a2 + 1) = v39;
LABEL_147:
        v128[0] = 0;
        if (v39 >= v38 || (v78 = *v39, (v78 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v128);
          if (!result)
          {
            return result;
          }

          v78 = v128[0];
          v79 = *(a2 + 1);
          v38 = *(a2 + 2);
        }

        else
        {
          v79 = v39 + 1;
          *(a2 + 1) = v79;
        }

        *(this + 104) = v78 != 0;
        v48 = *(this + 200) | 0x80;
        *(this + 200) = v48;
        if (v79 >= v38 || *v79 != 74)
        {
          continue;
        }

        *(a2 + 1) = v79 + 1;
LABEL_155:
        *(this + 200) = v48 | 0x100;
        v80 = *(this + 112);
        if (!v80)
        {
          operator new();
        }

        v128[0] = 0;
        v81 = *(a2 + 1);
        if (v81 >= *(a2 + 2) || *v81 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v128))
          {
            return 0;
          }
        }

        else
        {
          v128[0] = *v81;
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
        if (!CLMicroLocationProto::anchorAppearancesVector::MergePartialFromCodedStream(v80, a2, v84) || *(a2 + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
        v85 = *(a2 + 14);
        v18 = __OFSUB__(v85, 1);
        v86 = v85 - 1;
        if (v86 < 0 == v18)
        {
          *(a2 + 14) = v86;
        }

        v87 = *(a2 + 1);
        v33 = *(a2 + 2);
        if (v87 >= v33 || *v87 != 80)
        {
          continue;
        }

        v34 = v87 + 1;
        *(a2 + 1) = v34;
LABEL_169:
        if (v34 >= v33 || (v88 = *v34, v88 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, (this + 108));
          if (!result)
          {
            return result;
          }

          v89 = *(a2 + 1);
          v33 = *(a2 + 2);
        }

        else
        {
          *(this + 108) = v88;
          v89 = v34 + 1;
          *(a2 + 1) = v89;
        }

        v47 = *(this + 200) | 0x200;
        *(this + 200) = v47;
        if (v89 >= v33 || *v89 != 90)
        {
          continue;
        }

        *(a2 + 1) = v89 + 1;
LABEL_177:
        *(this + 200) = v47 | 0x400;
        v90 = *(this + 120);
        if (!v90)
        {
          operator new();
        }

        v128[0] = 0;
        v91 = *(a2 + 1);
        if (v91 >= *(a2 + 2) || *v91 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v128))
          {
            return 0;
          }
        }

        else
        {
          v128[0] = *v91;
          *(a2 + 1) = v91 + 1;
        }

        v92 = *(a2 + 14);
        v93 = *(a2 + 15);
        *(a2 + 14) = v92 + 1;
        if (v92 >= v93)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
        if (!CLMicroLocationProto::LocationSimilarityListData::MergePartialFromCodedStream(v90, a2, v94) || *(a2 + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
        v95 = *(a2 + 14);
        v18 = __OFSUB__(v95, 1);
        v96 = v95 - 1;
        if (v96 < 0 == v18)
        {
          *(a2 + 14) = v96;
        }

        v97 = *(a2 + 1);
        v27 = *(a2 + 2);
        if (v97 >= v27 || *v97 != 96)
        {
          continue;
        }

        v28 = v97 + 1;
        *(a2 + 1) = v28;
LABEL_191:
        v128[0] = 0;
        if (v28 >= v27 || (v98 = *v28, (v98 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v128);
          if (!result)
          {
            return result;
          }

          v98 = v128[0];
        }

        else
        {
          *(a2 + 1) = v28 + 1;
        }

        if (v98 <= 3)
        {
          *(this + 200) |= 0x800u;
          *(this + 128) = v98;
        }

        v99 = *(a2 + 1);
        v31 = *(a2 + 2);
        if (v99 >= v31 || *v99 != 104)
        {
          continue;
        }

        v32 = v99 + 1;
        *(a2 + 1) = v32;
LABEL_201:
        v128[0] = 0;
        if (v32 >= v31 || (v100 = *v32, (v100 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v128);
          if (!result)
          {
            return result;
          }

          v100 = v128[0];
        }

        else
        {
          *(a2 + 1) = v32 + 1;
        }

        if (v100 <= 3)
        {
          *(this + 200) |= 0x1000u;
          *(this + 132) = v100;
        }

        v101 = *(a2 + 1);
        v24 = *(a2 + 2);
        if (v101 < v24)
        {
          v102 = *v101;
          goto LABEL_210;
        }

        continue;
      case 3u:
        if (v8 == 1)
        {
          goto LABEL_87;
        }

        goto LABEL_77;
      case 4u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_77;
        }

        v37 = *(a2 + 1);
        v36 = *(a2 + 2);
        goto LABEL_91;
      case 5u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_77;
        }

        v30 = *(a2 + 1);
        v29 = *(a2 + 2);
        goto LABEL_101;
      case 6u:
        if (v8 == 2)
        {
          goto LABEL_111;
        }

        goto LABEL_77;
      case 7u:
        if (v8 == 2)
        {
          goto LABEL_129;
        }

        goto LABEL_77;
      case 8u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_77;
        }

        v39 = *(a2 + 1);
        v38 = *(a2 + 2);
        goto LABEL_147;
      case 9u:
        if (v8 != 2)
        {
          goto LABEL_77;
        }

        v48 = *(this + 200);
        goto LABEL_155;
      case 0xAu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_77;
        }

        v34 = *(a2 + 1);
        v33 = *(a2 + 2);
        goto LABEL_169;
      case 0xBu:
        if (v8 != 2)
        {
          goto LABEL_77;
        }

        v47 = *(this + 200);
        goto LABEL_177;
      case 0xCu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_77;
        }

        v28 = *(a2 + 1);
        v27 = *(a2 + 2);
        goto LABEL_191;
      case 0xDu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_77;
        }

        v32 = *(a2 + 1);
        v31 = *(a2 + 2);
        goto LABEL_201;
      case 0xEu:
        if ((TagFallback & 7) == 0)
        {
          v50 = *(a2 + 1);
          v24 = *(a2 + 2);
          while (1)
          {
            v128[0] = 0;
            if (v50 >= v24 || (v103 = *v50, (v103 & 0x80000000) != 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v128);
              if (!result)
              {
                return result;
              }

              v103 = v128[0];
            }

            else
            {
              *(a2 + 1) = v50 + 1;
            }

            if (v103 <= 8)
            {
              v104 = *(this + 144);
              if (v104 == *(this + 148))
              {
                wireless_diagnostics::google::protobuf::RepeatedField<float>::Reserve((this + 136), v104 + 1);
                v104 = *(this + 144);
              }

              v105 = *(this + 136);
              *(this + 144) = v104 + 1;
              *(v105 + 4 * v104) = v103;
            }

LABEL_221:
            v101 = *(a2 + 1);
            v24 = *(a2 + 2);
            if (v101 >= v24)
            {
              goto LABEL_2;
            }

            v102 = *v101;
            if (v102 == 120)
            {
              break;
            }

LABEL_210:
            if (v102 != 112)
            {
              goto LABEL_2;
            }

            v50 = (v101 + 1);
            *(a2 + 1) = v50;
          }

          v26 = (v101 + 1);
          *(a2 + 1) = v26;
LABEL_224:
          if (v26 >= v24 || (v106 = *v26, v106 < 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, (this + 152));
            if (!result)
            {
              return result;
            }

            v107 = *(a2 + 1);
            v24 = *(a2 + 2);
          }

          else
          {
            *(this + 152) = v106;
            v107 = (v26 + 1);
            *(a2 + 1) = v107;
          }

          *(this + 200) |= 0x4000u;
          if (v24 - v107 >= 2 && *v107 == 128 && v107[1] == 1)
          {
            v35 = (v107 + 2);
            *(a2 + 1) = v35;
LABEL_233:
            if (v35 >= v24 || (v108 = *v35, v108 < 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, (this + 156));
              if (!result)
              {
                return result;
              }

              v109 = *(a2 + 1);
              v24 = *(a2 + 2);
            }

            else
            {
              *(this + 156) = v108;
              v109 = (v35 + 1);
              *(a2 + 1) = v109;
            }

            *(this + 200) |= 0x8000u;
            if (v24 - v109 >= 2 && *v109 == 136 && v109[1] == 1)
            {
              v25 = (v109 + 2);
              *(a2 + 1) = v25;
LABEL_242:
              if (v25 >= v24 || (v110 = *v25, v110 < 0))
              {
                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, (this + 160));
                if (!result)
                {
                  return result;
                }

                v111 = *(a2 + 1);
                v24 = *(a2 + 2);
              }

              else
              {
                *(this + 160) = v110;
                v111 = (v25 + 1);
                *(a2 + 1) = v111;
              }

              *(this + 200) |= 0x10000u;
              if (v24 - v111 >= 2 && *v111 == 144 && v111[1] == 1)
              {
                v42 = (v111 + 2);
                *(a2 + 1) = v42;
LABEL_251:
                if (v42 >= v24 || (v112 = *v42, v112 < 0))
                {
                  result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, (this + 164));
                  if (!result)
                  {
                    return result;
                  }

                  v113 = *(a2 + 1);
                  v24 = *(a2 + 2);
                }

                else
                {
                  *(this + 164) = v112;
                  v113 = (v42 + 1);
                  *(a2 + 1) = v113;
                }

                *(this + 200) |= 0x20000u;
                if (v24 - v113 >= 2 && *v113 == 152 && v113[1] == 1)
                {
                  v46 = (v113 + 2);
                  *(a2 + 1) = v46;
LABEL_260:
                  if (v46 >= v24 || (v114 = *v46, v114 < 0))
                  {
                    result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, (this + 168));
                    if (!result)
                    {
                      return result;
                    }

                    v115 = *(a2 + 1);
                    v24 = *(a2 + 2);
                  }

                  else
                  {
                    *(this + 168) = v114;
                    v115 = (v46 + 1);
                    *(a2 + 1) = v115;
                  }

                  *(this + 200) |= 0x40000u;
                  if (v24 - v115 >= 2 && *v115 == 160 && v115[1] == 1)
                  {
                    v49 = (v115 + 2);
                    *(a2 + 1) = v49;
LABEL_269:
                    if (v49 >= v24 || (v116 = *v49, v116 < 0))
                    {
                      result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, (this + 172));
                      if (!result)
                      {
                        return result;
                      }

                      v117 = *(a2 + 1);
                      v24 = *(a2 + 2);
                    }

                    else
                    {
                      *(this + 172) = v116;
                      v117 = (v49 + 1);
                      *(a2 + 1) = v117;
                    }

                    *(this + 200) |= 0x80000u;
                    if (v24 - v117 >= 2 && *v117 == 168 && v117[1] == 1)
                    {
                      v43 = (v117 + 2);
                      *(a2 + 1) = v43;
LABEL_278:
                      if (v43 >= v24 || (v118 = *v43, v118 < 0))
                      {
                        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, (this + 192));
                        if (!result)
                        {
                          return result;
                        }

                        v119 = *(a2 + 1);
                        v24 = *(a2 + 2);
                      }

                      else
                      {
                        *(this + 192) = v118;
                        v119 = (v43 + 1);
                        *(a2 + 1) = v119;
                      }

                      v44 = *(this + 200) | 0x100000;
                      *(this + 200) = v44;
                      if (v24 - v119 >= 2 && *v119 == 178 && v119[1] == 1)
                      {
                        *(a2 + 1) = v119 + 2;
LABEL_287:
                        *(this + 200) = v44 | 0x200000;
                        if (*(this + 176) == v5)
                        {
                          operator new();
                        }

                        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
                        if (!result)
                        {
                          return result;
                        }

                        v120 = *(a2 + 1);
                        if (*(a2 + 4) - v120 >= 2 && *v120 == 186 && v120[1] == 1)
                        {
                          *(a2 + 1) = v120 + 2;
LABEL_294:
                          *(this + 200) |= 0x400000u;
                          v121 = *(this + 184);
                          if (!v121)
                          {
                            operator new();
                          }

                          v128[0] = 0;
                          v122 = *(a2 + 1);
                          if (v122 >= *(a2 + 2) || *v122 < 0)
                          {
                            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v128))
                            {
                              return 0;
                            }
                          }

                          else
                          {
                            v128[0] = *v122;
                            *(a2 + 1) = v122 + 1;
                          }

                          v123 = *(a2 + 14);
                          v124 = *(a2 + 15);
                          *(a2 + 14) = v123 + 1;
                          if (v123 >= v124)
                          {
                            return 0;
                          }

                          wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
                          if (!CLMicroLocationProto::BlueAtlasData::MergePartialFromCodedStream(v121, a2, v125) || *(a2 + 36) != 1)
                          {
                            return 0;
                          }

                          wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
                          v126 = *(a2 + 14);
                          v18 = __OFSUB__(v126, 1);
                          v127 = v126 - 1;
                          if (v127 < 0 == v18)
                          {
                            *(a2 + 14) = v127;
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
              }
            }
          }

          continue;
        }

        if (v8 != 2)
        {
LABEL_77:
          if (v8 == 4)
          {
            return 1;
          }

          if ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(a2, TagFallback) & 1) == 0)
          {
            return 0;
          }

          continue;
        }

        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadPackedEnumNoInline();
        if (result)
        {
          goto LABEL_221;
        }

        return result;
      case 0xFu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_77;
        }

        v26 = *(a2 + 1);
        v24 = *(a2 + 2);
        goto LABEL_224;
      case 0x10u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_77;
        }

        v35 = *(a2 + 1);
        v24 = *(a2 + 2);
        goto LABEL_233;
      case 0x11u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_77;
        }

        v25 = *(a2 + 1);
        v24 = *(a2 + 2);
        goto LABEL_242;
      case 0x12u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_77;
        }

        v42 = *(a2 + 1);
        v24 = *(a2 + 2);
        goto LABEL_251;
      case 0x13u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_77;
        }

        v46 = *(a2 + 1);
        v24 = *(a2 + 2);
        goto LABEL_260;
      case 0x14u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_77;
        }

        v49 = *(a2 + 1);
        v24 = *(a2 + 2);
        goto LABEL_269;
      case 0x15u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_77;
        }

        v43 = *(a2 + 1);
        v24 = *(a2 + 2);
        goto LABEL_278;
      case 0x16u:
        if (v8 != 2)
        {
          goto LABEL_77;
        }

        v44 = *(this + 200);
        goto LABEL_287;
      case 0x17u:
        if (v8 == 2)
        {
          goto LABEL_294;
        }

        goto LABEL_77;
      default:
        goto LABEL_77;
    }
  }
}

CLMicroLocationProto *CLMicroLocationProto::Model::SerializeWithCachedSizes(CLMicroLocationProto *this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  if (*(this + 4) >= 1)
  {
    v6 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(1, *(*(v5 + 1) + 8 * v6++), a2, a4);
    }

    while (v6 < *(v5 + 4));
  }

  v7 = *(v5 + 50);
  if ((v7 & 2) != 0)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(2, *(v5 + 4), a2, a4);
    v7 = *(v5 + 50);
    if ((v7 & 4) == 0)
    {
LABEL_6:
      if ((v7 & 8) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_37;
    }
  }

  else if ((v7 & 4) == 0)
  {
    goto LABEL_6;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(3, a2, *(v5 + 5), a3);
  v7 = *(v5 + 50);
  if ((v7 & 8) == 0)
  {
LABEL_7:
    if ((v7 & 0x10) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

LABEL_37:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(4, *(v5 + 12), a2, a4);
  if ((*(v5 + 50) & 0x10) != 0)
  {
LABEL_8:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(5, *(v5 + 13), a2, a4);
  }

LABEL_9:
  if (*(v5 + 16) >= 1)
  {
    v8 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(6, *(*(v5 + 7) + 8 * v8++), a2, a4);
    }

    while (v8 < *(v5 + 16));
  }

  if (*(v5 + 22) >= 1)
  {
    v9 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(7, *(*(v5 + 10) + 8 * v9++), a2, a4);
    }

    while (v9 < *(v5 + 22));
  }

  v10 = *(v5 + 50);
  if ((v10 & 0x80) != 0)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(8, *(v5 + 104), a2, a4);
    v10 = *(v5 + 50);
    if ((v10 & 0x100) == 0)
    {
LABEL_17:
      if ((v10 & 0x200) == 0)
      {
        goto LABEL_18;
      }

      goto LABEL_43;
    }
  }

  else if ((v10 & 0x100) == 0)
  {
    goto LABEL_17;
  }

  v13 = *(v5 + 14);
  if (!v13)
  {
    CLMicroLocationProto::protobuf_AddDesc_microlocation_2eproto(this);
    v13 = *(CLMicroLocationProto::Model::default_instance_ + 112);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(9, v13, a2, a4);
  v10 = *(v5 + 50);
  if ((v10 & 0x200) == 0)
  {
LABEL_18:
    if ((v10 & 0x400) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_44;
  }

LABEL_43:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xA, *(v5 + 27), a2, a4);
  v10 = *(v5 + 50);
  if ((v10 & 0x400) == 0)
  {
LABEL_19:
    if ((v10 & 0x800) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_47;
  }

LABEL_44:
  v14 = *(v5 + 15);
  if (!v14)
  {
    CLMicroLocationProto::protobuf_AddDesc_microlocation_2eproto(this);
    v14 = *(CLMicroLocationProto::Model::default_instance_ + 120);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0xB, v14, a2, a4);
  v10 = *(v5 + 50);
  if ((v10 & 0x800) == 0)
  {
LABEL_20:
    if ((v10 & 0x1000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_21;
  }

LABEL_47:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(0xC, *(v5 + 32), a2, a4);
  if ((*(v5 + 50) & 0x1000) != 0)
  {
LABEL_21:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(0xD, *(v5 + 33), a2, a4);
  }

LABEL_22:
  if (*(v5 + 36) >= 1)
  {
    v11 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(0xE, *(*(v5 + 17) + 4 * v11++), a2, a4);
    }

    while (v11 < *(v5 + 36));
  }

  v12 = *(v5 + 50);
  if ((v12 & 0x4000) != 0)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xF, *(v5 + 38), a2, a4);
    v12 = *(v5 + 50);
    if ((v12 & 0x8000) == 0)
    {
LABEL_27:
      if ((v12 & 0x10000) == 0)
      {
        goto LABEL_28;
      }

      goto LABEL_51;
    }
  }

  else if ((v12 & 0x8000) == 0)
  {
    goto LABEL_27;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x10, *(v5 + 39), a2, a4);
  v12 = *(v5 + 50);
  if ((v12 & 0x10000) == 0)
  {
LABEL_28:
    if ((v12 & 0x20000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_52;
  }

LABEL_51:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x11, *(v5 + 40), a2, a4);
  v12 = *(v5 + 50);
  if ((v12 & 0x20000) == 0)
  {
LABEL_29:
    if ((v12 & 0x40000) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_53;
  }

LABEL_52:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x12, *(v5 + 41), a2, a4);
  v12 = *(v5 + 50);
  if ((v12 & 0x40000) == 0)
  {
LABEL_30:
    if ((v12 & 0x80000) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_54;
  }

LABEL_53:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x13, *(v5 + 42), a2, a4);
  v12 = *(v5 + 50);
  if ((v12 & 0x80000) == 0)
  {
LABEL_31:
    if ((v12 & 0x100000) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_55;
  }

LABEL_54:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x14, *(v5 + 43), a2, a4);
  v12 = *(v5 + 50);
  if ((v12 & 0x100000) == 0)
  {
LABEL_32:
    if ((v12 & 0x200000) == 0)
    {
      goto LABEL_33;
    }

LABEL_56:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
    if ((*(v5 + 50) & 0x400000) == 0)
    {
      return this;
    }

    goto LABEL_57;
  }

LABEL_55:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x15, *(v5 + 48), a2, a4);
  v12 = *(v5 + 50);
  if ((v12 & 0x200000) != 0)
  {
    goto LABEL_56;
  }

LABEL_33:
  if ((v12 & 0x400000) == 0)
  {
    return this;
  }

LABEL_57:
  v15 = *(v5 + 23);
  if (!v15)
  {
    CLMicroLocationProto::protobuf_AddDesc_microlocation_2eproto(this);
    v15 = *(CLMicroLocationProto::Model::default_instance_ + 184);
  }

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x17, v15, a2, a4);
}

uint64_t CLMicroLocationProto::Model::ByteSize(CLMicroLocationProto::Model *this, unint64_t a2)
{
  v3 = *(this + 50);
  if ((v3 & 0x1FE) != 0)
  {
    if ((v3 & 2) != 0)
    {
      v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 4)) + 1;
      v3 = *(this + 50);
    }

    else
    {
      v4 = 0;
    }

    if ((v3 & 4) != 0)
    {
      v6 = v4 + 9;
    }

    else
    {
      v6 = v4;
    }

    if ((v3 & 8) != 0)
    {
      v7 = *(this + 12);
      if ((v7 & 0x80000000) != 0)
      {
        v8 = 11;
      }

      else if (v7 >= 0x80)
      {
        v8 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v7) + 1;
        v3 = *(this + 50);
      }

      else
      {
        v8 = 2;
      }

      v6 += v8;
    }

    if ((v3 & 0x10) != 0)
    {
      v9 = *(this + 13);
      if ((v9 & 0x80000000) != 0)
      {
        v10 = 11;
      }

      else if (v9 >= 0x80)
      {
        v10 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v9) + 1;
        v3 = *(this + 50);
      }

      else
      {
        v10 = 2;
      }

      v6 += v10;
    }

    v5 = ((v3 >> 6) & 2) + v6;
  }

  else
  {
    v5 = 0;
  }

  if ((v3 & 0xFF00) == 0)
  {
    goto LABEL_69;
  }

  if ((v3 & 0x100) != 0)
  {
    v11 = *(this + 14);
    if (!v11)
    {
      CLMicroLocationProto::protobuf_AddDesc_microlocation_2eproto(0);
      v11 = *(CLMicroLocationProto::Model::default_instance_ + 112);
    }

    v12 = CLMicroLocationProto::anchorAppearancesVector::ByteSize(v11, a2);
    v13 = v12;
    if (v12 >= 0x80)
    {
      v14 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v12);
    }

    else
    {
      v14 = 1;
    }

    v5 += v13 + v14 + 1;
    v3 = *(this + 50);
    if ((v3 & 0x200) == 0)
    {
LABEL_27:
      if ((v3 & 0x400) == 0)
      {
        goto LABEL_28;
      }

      goto LABEL_43;
    }
  }

  else if ((v3 & 0x200) == 0)
  {
    goto LABEL_27;
  }

  v15 = *(this + 27);
  if (v15 >= 0x80)
  {
    v16 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v15) + 1;
    v3 = *(this + 50);
  }

  else
  {
    v16 = 2;
  }

  v5 += v16;
  if ((v3 & 0x400) == 0)
  {
LABEL_28:
    if ((v3 & 0x800) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_49;
  }

LABEL_43:
  v17 = *(this + 15);
  if (!v17)
  {
    CLMicroLocationProto::protobuf_AddDesc_microlocation_2eproto(0);
    v17 = *(CLMicroLocationProto::Model::default_instance_ + 120);
  }

  v18 = CLMicroLocationProto::LocationSimilarityListData::ByteSize(v17, a2);
  v19 = v18;
  if (v18 >= 0x80)
  {
    v20 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v18);
  }

  else
  {
    v20 = 1;
  }

  v5 += v19 + v20 + 1;
  v3 = *(this + 50);
  if ((v3 & 0x800) == 0)
  {
LABEL_29:
    if ((v3 & 0x1000) == 0)
    {
      goto LABEL_30;
    }

LABEL_55:
    v23 = *(this + 33);
    if ((v23 & 0x80000000) != 0)
    {
      v24 = 11;
    }

    else if (v23 >= 0x80)
    {
      v24 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v23) + 1;
      v3 = *(this + 50);
    }

    else
    {
      v24 = 2;
    }

    v5 += v24;
    if ((v3 & 0x4000) == 0)
    {
LABEL_31:
      if ((v3 & 0x8000) == 0)
      {
        goto LABEL_69;
      }

      goto LABEL_65;
    }

    goto LABEL_61;
  }

LABEL_49:
  v21 = *(this + 32);
  if ((v21 & 0x80000000) != 0)
  {
    v22 = 11;
  }

  else if (v21 >= 0x80)
  {
    v22 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v21) + 1;
    v3 = *(this + 50);
  }

  else
  {
    v22 = 2;
  }

  v5 += v22;
  if ((v3 & 0x1000) != 0)
  {
    goto LABEL_55;
  }

LABEL_30:
  if ((v3 & 0x4000) == 0)
  {
    goto LABEL_31;
  }

LABEL_61:
  v25 = *(this + 38);
  if (v25 >= 0x80)
  {
    v26 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v25) + 1;
    v3 = *(this + 50);
  }

  else
  {
    v26 = 2;
  }

  v5 += v26;
  if ((v3 & 0x8000) != 0)
  {
LABEL_65:
    v27 = *(this + 39);
    if (v27 >= 0x80)
    {
      v28 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v27) + 2;
      v3 = *(this + 50);
    }

    else
    {
      v28 = 3;
    }

    v5 += v28;
  }

LABEL_69:
  if ((v3 & 0xFF0000) == 0)
  {
    goto LABEL_113;
  }

  if ((v3 & 0x10000) != 0)
  {
    v29 = *(this + 40);
    if (v29 >= 0x80)
    {
      v30 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v29) + 2;
      v3 = *(this + 50);
    }

    else
    {
      v30 = 3;
    }

    v5 += v30;
    if ((v3 & 0x20000) == 0)
    {
LABEL_72:
      if ((v3 & 0x40000) == 0)
      {
        goto LABEL_73;
      }

      goto LABEL_86;
    }
  }

  else if ((v3 & 0x20000) == 0)
  {
    goto LABEL_72;
  }

  v31 = *(this + 41);
  if (v31 >= 0x80)
  {
    v32 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v31) + 2;
    v3 = *(this + 50);
  }

  else
  {
    v32 = 3;
  }

  v5 += v32;
  if ((v3 & 0x40000) == 0)
  {
LABEL_73:
    if ((v3 & 0x80000) == 0)
    {
      goto LABEL_74;
    }

    goto LABEL_90;
  }

LABEL_86:
  v33 = *(this + 42);
  if (v33 >= 0x80)
  {
    v34 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v33) + 2;
    v3 = *(this + 50);
  }

  else
  {
    v34 = 3;
  }

  v5 += v34;
  if ((v3 & 0x80000) == 0)
  {
LABEL_74:
    if ((v3 & 0x100000) == 0)
    {
      goto LABEL_75;
    }

    goto LABEL_94;
  }

LABEL_90:
  v35 = *(this + 43);
  if (v35 >= 0x80)
  {
    v36 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v35) + 2;
    v3 = *(this + 50);
  }

  else
  {
    v36 = 3;
  }

  v5 += v36;
  if ((v3 & 0x100000) == 0)
  {
LABEL_75:
    if ((v3 & 0x200000) == 0)
    {
      goto LABEL_76;
    }

    goto LABEL_98;
  }

LABEL_94:
  v37 = *(this + 48);
  if (v37 >= 0x80)
  {
    v38 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v37) + 2;
    v3 = *(this + 50);
  }

  else
  {
    v38 = 3;
  }

  v5 += v38;
  if ((v3 & 0x200000) == 0)
  {
LABEL_76:
    if ((v3 & 0x400000) == 0)
    {
      goto LABEL_113;
    }

    goto LABEL_107;
  }

LABEL_98:
  v39 = *(this + 22);
  v40 = *(v39 + 23);
  v41 = v40;
  v42 = *(v39 + 8);
  if ((v40 & 0x80u) == 0)
  {
    v43 = *(v39 + 23);
  }

  else
  {
    v43 = v42;
  }

  if (v43 >= 0x80)
  {
    v44 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v43);
    v40 = *(v39 + 23);
    v42 = *(v39 + 8);
    v3 = *(this + 50);
    v41 = *(v39 + 23);
  }

  else
  {
    v44 = 1;
  }

  if (v41 < 0)
  {
    v40 = v42;
  }

  v5 += v44 + v40 + 2;
  if ((v3 & 0x400000) != 0)
  {
LABEL_107:
    v45 = *(this + 23);
    if (!v45)
    {
      CLMicroLocationProto::protobuf_AddDesc_microlocation_2eproto(0);
      v45 = *(CLMicroLocationProto::Model::default_instance_ + 184);
    }

    v46 = CLMicroLocationProto::BlueAtlasData::ByteSize(v45, a2);
    v47 = v46;
    if (v46 >= 0x80)
    {
      v48 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v46);
    }

    else
    {
      v48 = 1;
    }

    v5 += v47 + v48 + 2;
  }

LABEL_113:
  v49 = *(this + 4);
  v50 = v49 + v5;
  if (v49 >= 1)
  {
    v51 = 0;
    do
    {
      v52 = CLMicroLocationProto::Fingerprint::ByteSize(*(*(this + 1) + 8 * v51), a2);
      v53 = v52;
      if (v52 >= 0x80)
      {
        v54 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v52);
      }

      else
      {
        v54 = 1;
      }

      v50 += v53 + v54;
      ++v51;
    }

    while (v51 < *(this + 4));
  }

  v55 = *(this + 16);
  v56 = v55 + v50;
  if (v55 >= 1)
  {
    v57 = 0;
    do
    {
      v58 = CLMicroLocationProto::ClusterRecordings::ByteSize(*(*(this + 7) + 8 * v57), a2);
      v59 = v58;
      if (v58 >= 0x80)
      {
        v60 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v58);
      }

      else
      {
        v60 = 1;
      }

      v56 += v59 + v60;
      ++v57;
    }

    while (v57 < *(this + 16));
  }

  v61 = *(this + 22);
  v62 = v61 + v56;
  if (v61 >= 1)
  {
    v63 = 0;
    do
    {
      v64 = CLMicroLocationProto::AnchorMetadata::ByteSize(*(*(this + 10) + 8 * v63), a2);
      v65 = v64;
      if (v64 >= 0x80)
      {
        v66 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v64);
      }

      else
      {
        v66 = 1;
      }

      v62 += v65 + v66;
      ++v63;
    }

    while (v63 < *(this + 22));
  }

  v67 = *(this + 36);
  if (v67 < 1)
  {
    v69 = 0;
  }

  else
  {
    v68 = 0;
    v69 = 0;
    do
    {
      v70 = *(*(this + 17) + 4 * v68);
      if ((v70 & 0x80000000) != 0)
      {
        v71 = 10;
      }

      else if (v70 >= 0x80)
      {
        v71 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v70);
        v67 = *(this + 36);
      }

      else
      {
        v71 = 1;
      }

      v69 += v71;
      ++v68;
    }

    while (v68 < v67);
  }

  result = (v69 + v62 + v67);
  *(this + 49) = result;
  return result;
}

void CLMicroLocationProto::Model::CheckTypeAndMergeFrom(CLMicroLocationProto::Model *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  {
    CLMicroLocationProto::BleLeechedBeacons::CheckTypeAndMergeFrom();
  }

  CLMicroLocationProto::Model::MergeFrom(this, lpsrc);
}

void wireless_diagnostics::google::protobuf::RepeatedPtrField<CLMicroLocationProto::Fingerprint>::MergeFrom(wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase *a1, uint64_t a2)
{
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve(a1);
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
        wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v10);
      }

      v6 = *(*a2 + 8 * v5);
      v7 = *(a1 + 3);
      v8 = *(a1 + 2);
      if (v8 >= v7)
      {
        if (v7 == *(a1 + 4))
        {
          wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve(a1);
          v7 = *(a1 + 3);
        }

        *(a1 + 3) = v7 + 1;
        wireless_diagnostics::google::protobuf::internal::GenericTypeHandler<CLMicroLocationProto::Fingerprint>::New();
      }

      v9 = *a1;
      *(a1 + 2) = v8 + 1;
      CLMicroLocationProto::Fingerprint::MergeFrom(*(v9 + 8 * v8), v6);
      ++v5;
      v4 = *(a2 + 8);
    }

    while (v5 < v4);
  }
}

void sub_2590EB708(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

double CLMicroLocationProto::Model::Swap(CLMicroLocationProto::Model *this, CLMicroLocationProto::Model *a2)
{
  if (a2 != this)
  {
    wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Swap();
    v4 = *(this + 4);
    *(this + 4) = *(a2 + 4);
    *(a2 + 4) = v4;
    v5 = *(this + 5);
    *(this + 5) = *(a2 + 5);
    *(a2 + 5) = v5;
    LODWORD(v4) = *(this + 12);
    *(this + 12) = *(a2 + 12);
    *(a2 + 12) = v4;
    LODWORD(v4) = *(this + 13);
    *(this + 13) = *(a2 + 13);
    *(a2 + 13) = v4;
    wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Swap();
    wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Swap();
    v6 = *(this + 104);
    *(this + 104) = *(a2 + 104);
    *(a2 + 104) = v6;
    v7 = *(this + 14);
    *(this + 14) = *(a2 + 14);
    *(a2 + 14) = v7;
    LODWORD(v7) = *(this + 27);
    *(this + 27) = *(a2 + 27);
    *(a2 + 27) = v7;
    v8 = *(this + 15);
    *(this + 15) = *(a2 + 15);
    *(a2 + 15) = v8;
    LODWORD(v8) = *(this + 32);
    *(this + 32) = *(a2 + 32);
    *(a2 + 32) = v8;
    LODWORD(v8) = *(this + 33);
    *(this + 33) = *(a2 + 33);
    *(a2 + 33) = v8;
    v9 = *(this + 17);
    *(this + 17) = *(a2 + 17);
    result = *(a2 + 18);
    *(a2 + 17) = v9;
    v11 = *(this + 18);
    *(this + 18) = result;
    *(a2 + 18) = v11;
    LODWORD(v9) = *(this + 38);
    *(this + 38) = *(a2 + 38);
    *(a2 + 38) = v9;
    LODWORD(v9) = *(this + 39);
    *(this + 39) = *(a2 + 39);
    *(a2 + 39) = v9;
    LODWORD(v9) = *(this + 40);
    *(this + 40) = *(a2 + 40);
    *(a2 + 40) = v9;
    LODWORD(v9) = *(this + 41);
    *(this + 41) = *(a2 + 41);
    *(a2 + 41) = v9;
    LODWORD(v9) = *(this + 42);
    *(this + 42) = *(a2 + 42);
    *(a2 + 42) = v9;
    LODWORD(v9) = *(this + 43);
    *(this + 43) = *(a2 + 43);
    *(a2 + 43) = v9;
    LODWORD(v9) = *(this + 48);
    *(this + 48) = *(a2 + 48);
    *(a2 + 48) = v9;
    v12 = *(this + 22);
    *(this + 22) = *(a2 + 22);
    *(a2 + 22) = v12;
    v13 = *(this + 23);
    *(this + 23) = *(a2 + 23);
    *(a2 + 23) = v13;
    LODWORD(v13) = *(this + 50);
    *(this + 50) = *(a2 + 50);
    *(a2 + 50) = v13;
    LODWORD(v13) = *(this + 49);
    *(this + 49) = *(a2 + 49);
    *(a2 + 49) = v13;
  }

  return result;
}

float CLMicroLocationProto::ULPointLocation::MergeFrom(CLMicroLocationProto::ULPointLocation *this, const CLMicroLocationProto::ULPointLocation *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v6);
  }

  LOBYTE(v5) = *(a2 + 24);
  if (v5)
  {
    if (*(a2 + 24))
    {
      result = *(a2 + 2);
      *(this + 6) |= 1u;
      *(this + 2) = result;
      v5 = *(a2 + 6);
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

    else if ((*(a2 + 24) & 2) == 0)
    {
      goto LABEL_6;
    }

    result = *(a2 + 3);
    *(this + 6) |= 2u;
    *(this + 3) = result;
    if ((*(a2 + 6) & 4) == 0)
    {
      return result;
    }

LABEL_7:
    result = *(a2 + 4);
    *(this + 6) |= 4u;
    *(this + 4) = result;
  }

  return result;
}

void sub_2590EB9D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void CLMicroLocationProto::ULPointLocation::~ULPointLocation(CLMicroLocationProto::ULPointLocation *this)
{
  *this = &unk_286A57FA8;
  CLMicroLocationProto::protobuf_AddDesc_microlocation_2eproto(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  CLMicroLocationProto::ULPointLocation::~ULPointLocation(this);

  JUMPOUT(0x259CA1F90);
}

uint64_t CLMicroLocationProto::ULPointLocation::Clear(uint64_t this)
{
  if (*(this + 24))
  {
    *(this + 8) = 0;
    *(this + 16) = 0;
  }

  *(this + 24) = 0;
  return this;
}

uint64_t CLMicroLocationProto::ULPointLocation::MergePartialFromCodedStream(CLMicroLocationProto::ULPointLocation *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
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

        if (v8 != 5)
        {
          goto LABEL_20;
        }

LABEL_23:
        v12 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a2, &v12) & 1) == 0)
        {
          return 0;
        }

        *(this + 4) = v12;
        *(this + 6) |= 4u;
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

      if (v7 != 1 || v8 != 5)
      {
        goto LABEL_20;
      }

      v14 = 0;
      if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a2, &v14) & 1) == 0)
      {
        return 0;
      }

      *(this + 2) = v14;
      *(this + 6) |= 1u;
      v9 = *(a2 + 1);
      if (v9 < *(a2 + 2) && *v9 == 21)
      {
        *(a2 + 1) = v9 + 1;
LABEL_15:
        v13 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a2, &v13) & 1) == 0)
        {
          return 0;
        }

        *(this + 3) = v13;
        *(this + 6) |= 2u;
        v10 = *(a2 + 1);
        if (v10 < *(a2 + 2) && *v10 == 29)
        {
          *(a2 + 1) = v10 + 1;
          goto LABEL_23;
        }
      }
    }

    if (v8 == 5)
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

uint64_t CLMicroLocationProto::ULPointLocation::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3)
{
  v4 = this;
  v5 = *(this + 24);
  if ((v5 & 1) == 0)
  {
    if ((v5 & 2) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(2, a2, *(v4 + 12), a3);
    if ((*(v4 + 24) & 4) == 0)
    {
      return this;
    }

    goto LABEL_7;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(1, a2, *(this + 8), a3);
  v5 = *(v4 + 24);
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
  v6 = *(v4 + 16);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(3, a2, v6, a3);
}

uint64_t CLMicroLocationProto::ULPointLocation::ByteSize(CLMicroLocationProto::ULPointLocation *this)
{
  v1 = *(this + 24);
  if (*(this + 24))
  {
    v2 = ((v1 << 31) >> 31) & 5;
    if ((v1 & 2) != 0)
    {
      v2 += 5;
    }

    if ((v1 & 4) != 0)
    {
      v1 = v2 + 5;
    }

    else
    {
      v1 = v2;
    }
  }

  *(this + 5) = v1;
  return v1;
}

float CLMicroLocationProto::ULPointLocation::CheckTypeAndMergeFrom(CLMicroLocationProto::ULPointLocation *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  {
    CLMicroLocationProto::BleLeechedBeacons::CheckTypeAndMergeFrom();
  }

  return CLMicroLocationProto::ULPointLocation::MergeFrom(this, lpsrc);
}

float CLMicroLocationProto::ULPointLocation::CopyFrom(CLMicroLocationProto::ULPointLocation *this, const CLMicroLocationProto::ULPointLocation *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    return CLMicroLocationProto::ULPointLocation::MergeFrom(this, a2);
  }

  return result;
}

float CLMicroLocationProto::ULPointMovement::MergeFrom(CLMicroLocationProto::ULPointMovement *this, const CLMicroLocationProto::ULPointMovement *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v6);
  }

  LOBYTE(v5) = *(a2 + 20);
  if (v5)
  {
    if (*(a2 + 20))
    {
      result = *(a2 + 2);
      *(this + 5) |= 1u;
      *(this + 2) = result;
      v5 = *(a2 + 5);
    }

    if ((v5 & 2) != 0)
    {
      result = *(a2 + 3);
      *(this + 5) |= 2u;
      *(this + 3) = result;
    }
  }

  return result;
}

void sub_2590EBF18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void CLMicroLocationProto::ULPointMovement::~ULPointMovement(CLMicroLocationProto::ULPointMovement *this)
{
  *this = &unk_286A58020;
  CLMicroLocationProto::protobuf_AddDesc_microlocation_2eproto(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  CLMicroLocationProto::ULPointMovement::~ULPointMovement(this);

  JUMPOUT(0x259CA1F90);
}

uint64_t CLMicroLocationProto::ULPointMovement::Clear(uint64_t this)
{
  if (*(this + 20))
  {
    *(this + 8) = 0;
  }

  *(this + 20) = 0;
  return this;
}

uint64_t CLMicroLocationProto::ULPointMovement::MergePartialFromCodedStream(CLMicroLocationProto::ULPointMovement *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
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

        if (v7 != 5)
        {
          goto LABEL_14;
        }

LABEL_17:
        v10 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a2, &v10) & 1) == 0)
        {
          return 0;
        }

        *(this + 3) = v10;
        *(this + 5) |= 2u;
        if (*(a2 + 1) == *(a2 + 2) && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
        {
          *(a2 + 8) = 0;
          result = 1;
          *(a2 + 36) = 1;
          return result;
        }
      }

      if (TagFallback >> 3 != 1 || v7 != 5)
      {
        break;
      }

      v11 = 0;
      if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a2, &v11) & 1) == 0)
      {
        return 0;
      }

      *(this + 2) = v11;
      *(this + 5) |= 1u;
      v8 = *(a2 + 1);
      if (v8 < *(a2 + 2) && *v8 == 21)
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

uint64_t CLMicroLocationProto::ULPointMovement::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3)
{
  v4 = this;
  v5 = *(this + 20);
  if (v5)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(1, a2, *(this + 8), a3);
    v5 = *(v4 + 20);
  }

  if ((v5 & 2) != 0)
  {
    v6 = *(v4 + 12);

    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(2, a2, v6, a3);
  }

  return this;
}

uint64_t CLMicroLocationProto::ULPointMovement::ByteSize(CLMicroLocationProto::ULPointMovement *this)
{
  v1 = *(this + 20);
  if (*(this + 20))
  {
    v2 = ((v1 << 31) >> 31) & 5;
    if ((v1 & 2) != 0)
    {
      v1 = v2 + 5;
    }

    else
    {
      v1 = v2;
    }
  }

  *(this + 4) = v1;
  return v1;
}

float CLMicroLocationProto::ULPointMovement::CheckTypeAndMergeFrom(CLMicroLocationProto::ULPointMovement *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  {
    CLMicroLocationProto::BleLeechedBeacons::CheckTypeAndMergeFrom();
  }

  return CLMicroLocationProto::ULPointMovement::MergeFrom(this, lpsrc);
}

float CLMicroLocationProto::ULPointMovement::CopyFrom(CLMicroLocationProto::ULPointMovement *this, const CLMicroLocationProto::ULPointMovement *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    return CLMicroLocationProto::ULPointMovement::MergeFrom(this, a2);
  }

  return result;
}

float CLMicroLocationProto::ULTrajectoryPoint::MergeFrom(CLMicroLocationProto::ULTrajectoryPoint *this, const CLMicroLocationProto::ULTrajectoryPoint *a2)
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
        CLMicroLocationProto::protobuf_AddDesc_microlocation_2eproto(this);
        v7 = *(CLMicroLocationProto::ULTrajectoryPoint::default_instance_ + 8);
      }

      result = CLMicroLocationProto::ULPointLocation::MergeFrom(v6, v7);
      v5 = *(a2 + 9);
      if ((v5 & 2) == 0)
      {
LABEL_6:
        if ((v5 & 4) == 0)
        {
          return result;
        }

        goto LABEL_18;
      }
    }

    else if ((*(a2 + 36) & 2) == 0)
    {
      goto LABEL_6;
    }

    *(this + 9) |= 2u;
    v8 = *(this + 2);
    if (!v8)
    {
      operator new();
    }

    v9 = *(a2 + 2);
    if (!v9)
    {
      CLMicroLocationProto::protobuf_AddDesc_microlocation_2eproto(this);
      v9 = *(CLMicroLocationProto::ULTrajectoryPoint::default_instance_ + 16);
    }

    result = CLMicroLocationProto::ULPointMovement::MergeFrom(v8, v9);
    if ((*(a2 + 9) & 4) != 0)
    {
LABEL_18:
      *(this + 9) |= 4u;
      v10 = *(this + 3);
      if (!v10)
      {
        operator new();
      }

      v11 = *(a2 + 3);
      if (!v11)
      {
        CLMicroLocationProto::protobuf_AddDesc_microlocation_2eproto(this);
        v11 = *(CLMicroLocationProto::ULTrajectoryPoint::default_instance_ + 24);
      }

      return CLMicroLocationProto::ULPointMovement::MergeFrom(v10, v11);
    }
  }

  return result;
}

void sub_2590EC524(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void CLMicroLocationProto::ULTrajectoryPoint::~ULTrajectoryPoint(CLMicroLocationProto::ULTrajectoryPoint *this)
{
  *this = &unk_286A58098;
  CLMicroLocationProto::ULTrajectoryPoint::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  CLMicroLocationProto::ULTrajectoryPoint::~ULTrajectoryPoint(this);

  JUMPOUT(0x259CA1F90);
}

void CLMicroLocationProto::ULTrajectoryPoint::SharedDtor(CLMicroLocationProto::ULTrajectoryPoint *this)
{
  CLMicroLocationProto::protobuf_AddDesc_microlocation_2eproto(this);
  if (CLMicroLocationProto::ULTrajectoryPoint::default_instance_ != this)
  {
    v2 = *(this + 1);
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }

    v3 = *(this + 2);
    if (v3)
    {
      (*(*v3 + 8))(v3);
    }

    v4 = *(this + 3);
    if (v4)
    {
      v5 = *(*v4 + 8);

      v5();
    }
  }
}

uint64_t CLMicroLocationProto::ULTrajectoryPoint::Clear(uint64_t this)
{
  LOBYTE(v1) = *(this + 36);
  if (v1)
  {
    if (*(this + 36))
    {
      v2 = *(this + 8);
      if (v2)
      {
        if (*(v2 + 24))
        {
          *(v2 + 8) = 0;
          *(v2 + 16) = 0;
        }

        *(v2 + 24) = 0;
        v1 = *(this + 36);
      }
    }

    if ((v1 & 2) != 0)
    {
      v3 = *(this + 16);
      if (v3)
      {
        if (*(v3 + 20))
        {
          *(v3 + 8) = 0;
        }

        *(v3 + 20) = 0;
        v1 = *(this + 36);
      }
    }

    if ((v1 & 4) != 0)
    {
      v4 = *(this + 24);
      if (v4)
      {
        if (*(v4 + 20))
        {
          *(v4 + 8) = 0;
        }

        *(v4 + 20) = 0;
      }
    }
  }

  *(this + 36) = 0;
  return this;
}

uint64_t CLMicroLocationProto::ULTrajectoryPoint::MergePartialFromCodedStream(CLMicroLocationProto::ULTrajectoryPoint *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
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
        if (v8 == 2)
        {
          goto LABEL_44;
        }

        goto LABEL_18;
      }

      if (v7 == 2)
      {
        break;
      }

      if (v7 != 1 || v8 != 2)
      {
        goto LABEL_18;
      }

      *(this + 9) |= 1u;
      v9 = *(this + 1);
      if (!v9)
      {
        operator new();
      }

      v34 = 0;
      v10 = *(a2 + 1);
      if (v10 >= *(a2 + 2) || *v10 < 0)
      {
        if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v34))
        {
          return 0;
        }
      }

      else
      {
        v34 = *v10;
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
      if (!CLMicroLocationProto::ULPointLocation::MergePartialFromCodedStream(v9, a2, v13) || *(a2 + 36) != 1)
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
LABEL_30:
        *(this + 9) |= 2u;
        v18 = *(this + 2);
        if (!v18)
        {
          operator new();
        }

        v35 = 0;
        v19 = *(a2 + 1);
        if (v19 >= *(a2 + 2) || *v19 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v35))
          {
            return 0;
          }
        }

        else
        {
          v35 = *v19;
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
        if (!CLMicroLocationProto::ULPointMovement::MergePartialFromCodedStream(v18, a2, v22) || *(a2 + 36) != 1)
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
LABEL_44:
          *(this + 9) |= 4u;
          v26 = *(this + 3);
          if (!v26)
          {
            operator new();
          }

          v36 = 0;
          v27 = *(a2 + 1);
          if (v27 >= *(a2 + 2) || *v27 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v36))
            {
              return 0;
            }
          }

          else
          {
            v36 = *v27;
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
          if (!CLMicroLocationProto::ULPointMovement::MergePartialFromCodedStream(v26, a2, v30) || *(a2 + 36) != 1)
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

    if (v8 == 2)
    {
      goto LABEL_30;
    }

LABEL_18:
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

uint64_t CLMicroLocationProto::ULTrajectoryPoint::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 36);
  if (v6)
  {
    v7 = *(this + 8);
    if (!v7)
    {
      CLMicroLocationProto::protobuf_AddDesc_microlocation_2eproto(this);
      v7 = *(CLMicroLocationProto::ULTrajectoryPoint::default_instance_ + 8);
    }

    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(1, v7, a2, a4);
    v6 = *(v5 + 36);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
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

  v8 = *(v5 + 16);
  if (!v8)
  {
    CLMicroLocationProto::protobuf_AddDesc_microlocation_2eproto(this);
    v8 = *(CLMicroLocationProto::ULTrajectoryPoint::default_instance_ + 16);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(2, v8, a2, a4);
  if ((*(v5 + 36) & 4) != 0)
  {
LABEL_11:
    v9 = *(v5 + 24);
    if (!v9)
    {
      CLMicroLocationProto::protobuf_AddDesc_microlocation_2eproto(this);
      v9 = *(CLMicroLocationProto::ULTrajectoryPoint::default_instance_ + 24);
    }

    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(3, v9, a2, a4);
  }

  return this;
}