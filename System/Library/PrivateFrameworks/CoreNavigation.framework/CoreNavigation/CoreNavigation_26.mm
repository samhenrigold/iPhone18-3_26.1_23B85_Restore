void sub_1D0CDF794(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void CoreNavigation::CLP::LogEntry::PrivateData::MagSample::~MagSample(CoreNavigation::CLP::LogEntry::PrivateData::MagSample *this)
{
  *this = &unk_1F4CDAC20;
  CoreNavigation::CLP::LogEntry::PrivateData::MagSample::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  CoreNavigation::CLP::LogEntry::PrivateData::MagSample::~MagSample(this);

  JUMPOUT(0x1D387ECA0);
}

void CoreNavigation::CLP::LogEntry::PrivateData::MagSample::SharedDtor(CoreNavigation::CLP::LogEntry::PrivateData::MagSample *this)
{
  CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(this);
  if (CoreNavigation::CLP::LogEntry::PrivateData::MagSample::default_instance_ != this)
  {
    v2 = *(this + 1);
    if (v2)
    {
      v3 = *(*v2 + 8);

      v3();
    }
  }
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::MagSample::Clear(uint64_t this)
{
  if (*(this + 32))
  {
    if (*(this + 32))
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
    *(this + 24) = 0;
  }

  *(this + 32) = 0;
  return this;
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::MagSample::MergePartialFromCodedStream(CoreNavigation::CLP::LogEntry::PrivateData::MagSample *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
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
          if (v8 != 5)
          {
            goto LABEL_22;
          }

LABEL_38:
          v21 = 0;
          if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a2, &v21) & 1) == 0)
          {
            return 0;
          }

          *(this + 5) = v21;
          *(this + 8) |= 4u;
          v19 = *(a2 + 1);
          if (v19 < *(a2 + 2) && *v19 == 37)
          {
            *(a2 + 1) = v19 + 1;
            goto LABEL_42;
          }
        }

        else
        {
          if (v7 != 4 || v8 != 5)
          {
            goto LABEL_22;
          }

LABEL_42:
          v21 = 0;
          if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a2, &v21) & 1) == 0)
          {
            return 0;
          }

          *(this + 6) = v21;
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

      if (v7 == 1)
      {
        break;
      }

      if (v7 == 2 && v8 == 5)
      {
        goto LABEL_34;
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

    if (v8 != 2)
    {
      goto LABEL_22;
    }

    *(this + 8) |= 1u;
    v9 = *(this + 1);
    if (!v9)
    {
      operator new();
    }

    v21 = 0;
    v10 = *(a2 + 1);
    if (v10 >= *(a2 + 2) || *v10 < 0)
    {
      if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v21))
      {
        return 0;
      }
    }

    else
    {
      v21 = *v10;
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
    if (!CoreNavigation::CLP::LogEntry::PrivateData::TimeStamp::MergePartialFromCodedStream(v9, a2, v13) || *(a2 + 36) != 1)
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
    if (v17 < *(a2 + 2) && *v17 == 21)
    {
      *(a2 + 1) = v17 + 1;
LABEL_34:
      v21 = 0;
      if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a2, &v21) & 1) == 0)
      {
        return 0;
      }

      *(this + 4) = v21;
      *(this + 8) |= 2u;
      v18 = *(a2 + 1);
      if (v18 < *(a2 + 2) && *v18 == 29)
      {
        *(a2 + 1) = v18 + 1;
        goto LABEL_38;
      }
    }
  }
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::MagSample::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 32);
  if (v6)
  {
    v7 = *(this + 8);
    if (!v7)
    {
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(this);
      v7 = *(CoreNavigation::CLP::LogEntry::PrivateData::MagSample::default_instance_ + 8);
    }

    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(1, v7, a2, a4);
    v6 = *(v5 + 32);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

LABEL_10:
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(3, a2, *(v5 + 20), a3);
      if ((*(v5 + 32) & 8) == 0)
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

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(2, a2, *(v5 + 16), a3);
  v6 = *(v5 + 32);
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

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(4, a2, v8, a3);
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::MagSample::ByteSize(CoreNavigation::CLP::LogEntry::PrivateData::MagSample *this)
{
  LOBYTE(v2) = *(this + 32);
  if (v2)
  {
    if (*(this + 32))
    {
      v5 = *(this + 1);
      if (!v5)
      {
        CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(this);
        v5 = *(CoreNavigation::CLP::LogEntry::PrivateData::MagSample::default_instance_ + 8);
      }

      v6 = *(v5 + 36);
      if (*(v5 + 36))
      {
        v7 = (v6 << 31 >> 31) & 9;
        if ((v6 & 2) != 0)
        {
          v7 += 9;
        }

        if ((v6 & 4) != 0)
        {
          v6 = v7 + 9;
        }

        else
        {
          v6 = v7;
        }
      }

      *(v5 + 32) = v6;
      v3 = v6 + 2;
      v2 = *(this + 8);
    }

    else
    {
      v3 = 0;
    }

    if ((v2 & 2) != 0)
    {
      v3 += 5;
    }

    if ((v2 & 4) != 0)
    {
      v3 += 5;
    }

    if ((v2 & 8) != 0)
    {
      result = v3 + 5;
    }

    else
    {
      result = v3;
    }
  }

  else
  {
    result = 0;
  }

  *(this + 7) = result;
  return result;
}

float CoreNavigation::CLP::LogEntry::PrivateData::MagSample::CheckTypeAndMergeFrom(CoreNavigation::CLP::LogEntry::PrivateData::MagSample *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  return CoreNavigation::CLP::LogEntry::PrivateData::MagSample::MergeFrom(this, lpsrc);
}

float CoreNavigation::CLP::LogEntry::PrivateData::MagSample::CopyFrom(CoreNavigation::CLP::LogEntry::PrivateData::MagSample *this, const CoreNavigation::CLP::LogEntry::PrivateData::MagSample *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    return CoreNavigation::CLP::LogEntry::PrivateData::MagSample::MergeFrom(this, a2);
  }

  return result;
}

float CoreNavigation::CLP::LogEntry::PrivateData::MagSample::Swap(CoreNavigation::CLP::LogEntry::PrivateData::MagSample *this, CoreNavigation::CLP::LogEntry::PrivateData::MagSample *a2)
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
    result = *(this + 6);
    *(this + 6) = *(a2 + 6);
    *(a2 + 6) = result;
    LODWORD(v2) = *(this + 8);
    *(this + 8) = *(a2 + 8);
    *(a2 + 8) = v2;
    LODWORD(v2) = *(this + 7);
    *(this + 7) = *(a2 + 7);
    *(a2 + 7) = v2;
  }

  return result;
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::Magnetometer::SharedCtor(uint64_t this)
{
  *(this + 8) = 0;
  *(this + 40) = 0;
  return this;
}

CoreNavigation::CLP::LogEntry::PrivateData::Magnetometer *CoreNavigation::CLP::LogEntry::PrivateData::Magnetometer::Magnetometer(CoreNavigation::CLP::LogEntry::PrivateData::Magnetometer *this, const CoreNavigation::CLP::LogEntry::PrivateData::Magnetometer *a2)
{
  *(this + 5) = 0;
  *this = &unk_1F4CDAC98;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 3) = 0;
  *(this + 8) = 0;
  CoreNavigation::CLP::LogEntry::PrivateData::Magnetometer::MergeFrom(this, a2);
  return this;
}

void sub_1D0CDFFEC(_Unwind_Exception *a1)
{
  sub_1D0B8CD0C(v1 + 2);
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(v1);
  _Unwind_Resume(a1);
}

double CoreNavigation::CLP::LogEntry::PrivateData::Magnetometer::MergeFrom(CoreNavigation::CLP::LogEntry::PrivateData::Magnetometer *this, const CoreNavigation::CLP::LogEntry::PrivateData::Magnetometer *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v8);
  }

  sub_1D0CFEED8((this + 16), a2 + 16);
  if (*(a2 + 44))
  {
    *(this + 11) |= 1u;
    v6 = *(this + 1);
    if (!v6)
    {
      operator new();
    }

    v7 = *(a2 + 1);
    if (!v7)
    {
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(v4);
      v7 = *(CoreNavigation::CLP::LogEntry::PrivateData::Magnetometer::default_instance_ + 8);
    }

    return CoreNavigation::CLP::LogEntry::PrivateData::TimeStamp::MergeFrom(v6, v7);
  }

  return result;
}

void sub_1D0CE0114(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void CoreNavigation::CLP::LogEntry::PrivateData::Magnetometer::~Magnetometer(CoreNavigation::CLP::LogEntry::PrivateData::Magnetometer *this)
{
  *this = &unk_1F4CDAC98;
  CoreNavigation::CLP::LogEntry::PrivateData::Magnetometer::SharedDtor(this);
  sub_1D0B8CD0C(this + 2);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  CoreNavigation::CLP::LogEntry::PrivateData::Magnetometer::~Magnetometer(this);

  JUMPOUT(0x1D387ECA0);
}

void CoreNavigation::CLP::LogEntry::PrivateData::Magnetometer::SharedDtor(CoreNavigation::CLP::LogEntry::PrivateData::Magnetometer *this)
{
  CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(this);
  if (CoreNavigation::CLP::LogEntry::PrivateData::Magnetometer::default_instance_ != this)
  {
    v2 = *(this + 1);
    if (v2)
    {
      v3 = *(*v2 + 8);

      v3();
    }
  }
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::Magnetometer::Clear(CoreNavigation::CLP::LogEntry::PrivateData::Magnetometer *this)
{
  if (*(this + 44))
  {
    v2 = *(this + 1);
    if (v2)
    {
      if (*(v2 + 36))
      {
        *(v2 + 8) = 0;
        *(v2 + 16) = 0;
        *(v2 + 24) = 0;
      }

      *(v2 + 36) = 0;
    }
  }

  result = sub_1D0C77384(this + 16);
  *(this + 11) = 0;
  return result;
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::Magnetometer::MergePartialFromCodedStream(CoreNavigation::CLP::LogEntry::PrivateData::Magnetometer *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
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

      if (TagFallback >> 3 != 1 || v7 != 2)
      {
        goto LABEL_15;
      }

      *(this + 11) |= 1u;
      v8 = *(this + 1);
      if (!v8)
      {
        operator new();
      }

      v29 = 0;
      v9 = *(a2 + 1);
      if (v9 >= *(a2 + 2) || *v9 < 0)
      {
        if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v29))
        {
          return 0;
        }
      }

      else
      {
        v29 = *v9;
        *(a2 + 1) = v9 + 1;
      }

      v10 = *(a2 + 14);
      v11 = *(a2 + 15);
      *(a2 + 14) = v10 + 1;
      if (v10 >= v11)
      {
        return 0;
      }

      wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
      if (!CoreNavigation::CLP::LogEntry::PrivateData::TimeStamp::MergePartialFromCodedStream(v8, a2, v12) || *(a2 + 36) != 1)
      {
        return 0;
      }

      wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
      v13 = *(a2 + 14);
      v14 = __OFSUB__(v13, 1);
      v15 = v13 - 1;
      if (v15 < 0 == v14)
      {
        *(a2 + 14) = v15;
      }

      v16 = *(a2 + 1);
      if (v16 < *(a2 + 2) && *v16 == 18)
      {
        do
        {
          *(a2 + 1) = v16 + 1;
LABEL_27:
          v17 = *(this + 7);
          v18 = *(this + 6);
          if (v18 >= v17)
          {
            if (v17 == *(this + 8))
            {
              wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 16));
              v17 = *(this + 7);
            }

            *(this + 7) = v17 + 1;
            operator new();
          }

          v19 = *(this + 2);
          *(this + 6) = v18 + 1;
          v20 = *(v19 + 8 * v18);
          v30 = 0;
          v21 = *(a2 + 1);
          if (v21 >= *(a2 + 2) || *v21 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v30))
            {
              return 0;
            }
          }

          else
          {
            v30 = *v21;
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
          if (!CoreNavigation::CLP::LogEntry::PrivateData::MagSample::MergePartialFromCodedStream(v20, a2, v24) || *(a2 + 36) != 1)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
          v25 = *(a2 + 14);
          v14 = __OFSUB__(v25, 1);
          v26 = v25 - 1;
          if (v26 < 0 == v14)
          {
            *(a2 + 14) = v26;
          }

          v16 = *(a2 + 1);
          v27 = *(a2 + 2);
        }

        while (v16 < v27 && *v16 == 18);
        if (v16 == v27 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
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
      goto LABEL_27;
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
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::Magnetometer::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  if (*(this + 44))
  {
    v6 = *(this + 8);
    if (!v6)
    {
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(this);
      v6 = *(CoreNavigation::CLP::LogEntry::PrivateData::Magnetometer::default_instance_ + 8);
    }

    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(1, v6, a2, a4);
  }

  if (*(v5 + 24) >= 1)
  {
    v7 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(2, *(*(v5 + 16) + 8 * v7++), a2, a4);
    }

    while (v7 < *(v5 + 24));
  }

  return this;
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::Magnetometer::ByteSize(CoreNavigation::CLP::LogEntry::PrivateData::Magnetometer *this)
{
  if (*(this + 44))
  {
    v3 = *(this + 1);
    if (!v3)
    {
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(this);
      v3 = *(CoreNavigation::CLP::LogEntry::PrivateData::Magnetometer::default_instance_ + 8);
    }

    v4 = *(v3 + 36);
    if (*(v3 + 36))
    {
      v5 = (v4 << 31 >> 31) & 9;
      if ((v4 & 2) != 0)
      {
        v5 += 9;
      }

      if ((v4 & 4) != 0)
      {
        v4 = v5 + 9;
      }

      else
      {
        v4 = v5;
      }
    }

    *(v3 + 32) = v4;
    v2 = v4 + 2;
  }

  else
  {
    v2 = 0;
  }

  v6 = *(this + 6);
  v7 = (v6 + v2);
  if (v6 >= 1)
  {
    v8 = 0;
    do
    {
      v7 = v7 + CoreNavigation::CLP::LogEntry::PrivateData::MagSample::ByteSize(*(*(this + 2) + 8 * v8++)) + 1;
    }

    while (v8 < *(this + 6));
  }

  *(this + 10) = v7;
  return v7;
}

double CoreNavigation::CLP::LogEntry::PrivateData::Magnetometer::CheckTypeAndMergeFrom(CoreNavigation::CLP::LogEntry::PrivateData::Magnetometer *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  return CoreNavigation::CLP::LogEntry::PrivateData::Magnetometer::MergeFrom(this, lpsrc);
}

double CoreNavigation::CLP::LogEntry::PrivateData::Magnetometer::CopyFrom(CoreNavigation::CLP::LogEntry::PrivateData::Magnetometer *this, const CoreNavigation::CLP::LogEntry::PrivateData::Magnetometer *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    return CoreNavigation::CLP::LogEntry::PrivateData::Magnetometer::MergeFrom(this, a2);
  }

  return result;
}

CoreNavigation::CLP::LogEntry::PrivateData::Magnetometer *CoreNavigation::CLP::LogEntry::PrivateData::Magnetometer::Swap(CoreNavigation::CLP::LogEntry::PrivateData::Magnetometer *this, CoreNavigation::CLP::LogEntry::PrivateData::Magnetometer *a2)
{
  if (a2 != this)
  {
    v3 = this;
    v4 = *(this + 1);
    *(this + 1) = *(a2 + 1);
    *(a2 + 1) = v4;
    this = wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Swap();
    v5 = *(v3 + 11);
    *(v3 + 11) = *(a2 + 11);
    *(a2 + 11) = v5;
    v6 = *(v3 + 10);
    *(v3 + 10) = *(a2 + 10);
    *(a2 + 10) = v6;
  }

  return this;
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::Reset::SharedCtor(uint64_t this)
{
  *(this + 8) = 0;
  *(this + 16) = 0;
  return this;
}

CoreNavigation::CLP::LogEntry::PrivateData::Reset *CoreNavigation::CLP::LogEntry::PrivateData::Reset::Reset(CoreNavigation::CLP::LogEntry::PrivateData::Reset *this, const CoreNavigation::CLP::LogEntry::PrivateData::Reset *a2)
{
  *(this + 1) = 0;
  *(this + 2) = 0;
  *this = &unk_1F4CDAD10;
  CoreNavigation::CLP::LogEntry::PrivateData::Reset::MergeFrom(this, a2);
  return this;
}

double CoreNavigation::CLP::LogEntry::PrivateData::Reset::MergeFrom(CoreNavigation::CLP::LogEntry::PrivateData::Reset *this, const CoreNavigation::CLP::LogEntry::PrivateData::Reset *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v7);
  }

  if (*(a2 + 20))
  {
    *(this + 5) |= 1u;
    v5 = *(this + 1);
    if (!v5)
    {
      operator new();
    }

    v6 = *(a2 + 1);
    if (!v6)
    {
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(this);
      v6 = *(CoreNavigation::CLP::LogEntry::PrivateData::Reset::default_instance_ + 8);
    }

    return CoreNavigation::CLP::LogEntry::PrivateData::TimeStamp::MergeFrom(v5, v6);
  }

  return result;
}

void sub_1D0CE0AD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void CoreNavigation::CLP::LogEntry::PrivateData::Reset::~Reset(CoreNavigation::CLP::LogEntry::PrivateData::Reset *this)
{
  *this = &unk_1F4CDAD10;
  CoreNavigation::CLP::LogEntry::PrivateData::Reset::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  CoreNavigation::CLP::LogEntry::PrivateData::Reset::~Reset(this);

  JUMPOUT(0x1D387ECA0);
}

void CoreNavigation::CLP::LogEntry::PrivateData::Reset::SharedDtor(CoreNavigation::CLP::LogEntry::PrivateData::Reset *this)
{
  CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(this);
  if (CoreNavigation::CLP::LogEntry::PrivateData::Reset::default_instance_ != this)
  {
    v2 = *(this + 1);
    if (v2)
    {
      v3 = *(*v2 + 8);

      v3();
    }
  }
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::Reset::Clear(uint64_t this)
{
  if (*(this + 20))
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

  *(this + 20) = 0;
  return this;
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::Reset::MergePartialFromCodedStream(CoreNavigation::CLP::LogEntry::PrivateData::Reset *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
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

      if (TagFallback != 10)
      {
        break;
      }

      *(this + 5) |= 1u;
      v7 = *(this + 1);
      if (!v7)
      {
        operator new();
      }

      v16 = 0;
      v8 = *(a2 + 1);
      if (v8 >= *(a2 + 2) || *v8 < 0)
      {
        if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v16))
        {
          return 0;
        }
      }

      else
      {
        v16 = *v8;
        *(a2 + 1) = v8 + 1;
      }

      v9 = *(a2 + 14);
      v10 = *(a2 + 15);
      *(a2 + 14) = v9 + 1;
      if (v9 >= v10)
      {
        return 0;
      }

      wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
      if (!CoreNavigation::CLP::LogEntry::PrivateData::TimeStamp::MergePartialFromCodedStream(v7, a2, v11) || *(a2 + 36) != 1)
      {
        return 0;
      }

      wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
      v12 = *(a2 + 14);
      v13 = __OFSUB__(v12, 1);
      v14 = v12 - 1;
      if (v14 < 0 == v13)
      {
        *(a2 + 14) = v14;
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

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::Reset::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  if (*(this + 20))
  {
    v6 = *(this + 8);
    if (!v6)
    {
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(this);
      v6 = *(CoreNavigation::CLP::LogEntry::PrivateData::Reset::default_instance_ + 8);
    }

    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(1, v6, a2, a4);
  }

  return this;
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::Reset::ByteSize(CoreNavigation::CLP::LogEntry::PrivateData::Reset *this)
{
  if (*(this + 20))
  {
    v3 = *(this + 1);
    if (!v3)
    {
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(this);
      v3 = *(CoreNavigation::CLP::LogEntry::PrivateData::Reset::default_instance_ + 8);
    }

    v4 = *(v3 + 36);
    if (*(v3 + 36))
    {
      v5 = (v4 << 31 >> 31) & 9;
      if ((v4 & 2) != 0)
      {
        v5 += 9;
      }

      if ((v4 & 4) != 0)
      {
        v4 = v5 + 9;
      }

      else
      {
        v4 = v5;
      }
    }

    *(v3 + 32) = v4;
    result = (v4 + 2);
  }

  else
  {
    result = 0;
  }

  *(this + 4) = result;
  return result;
}

double CoreNavigation::CLP::LogEntry::PrivateData::Reset::CheckTypeAndMergeFrom(CoreNavigation::CLP::LogEntry::PrivateData::Reset *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  return CoreNavigation::CLP::LogEntry::PrivateData::Reset::MergeFrom(this, lpsrc);
}

double CoreNavigation::CLP::LogEntry::PrivateData::Reset::CopyFrom(CoreNavigation::CLP::LogEntry::PrivateData::Reset *this, const CoreNavigation::CLP::LogEntry::PrivateData::Reset *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    return CoreNavigation::CLP::LogEntry::PrivateData::Reset::MergeFrom(this, a2);
  }

  return result;
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::Reset::Swap(uint64_t this, CoreNavigation::CLP::LogEntry::PrivateData::Reset *a2)
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

double CoreNavigation::CLP::LogEntry::PrivateData::AccelerometerPace::SharedCtor(CoreNavigation::CLP::LogEntry::PrivateData::AccelerometerPace *this)
{
  result = 0.0;
  *(this + 24) = 0u;
  *(this + 8) = 0u;
  return result;
}

CoreNavigation::CLP::LogEntry::PrivateData::AccelerometerPace *CoreNavigation::CLP::LogEntry::PrivateData::AccelerometerPace::AccelerometerPace(CoreNavigation::CLP::LogEntry::PrivateData::AccelerometerPace *this, const CoreNavigation::CLP::LogEntry::PrivateData::AccelerometerPace *a2)
{
  *this = &unk_1F4CDAD88;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  CoreNavigation::CLP::LogEntry::PrivateData::AccelerometerPace::MergeFrom(this, a2);
  return this;
}

double CoreNavigation::CLP::LogEntry::PrivateData::AccelerometerPace::MergeFrom(CoreNavigation::CLP::LogEntry::PrivateData::AccelerometerPace *this, const CoreNavigation::CLP::LogEntry::PrivateData::AccelerometerPace *a2)
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

void sub_1D0CE1220(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void CoreNavigation::CLP::LogEntry::PrivateData::AccelerometerPace::~AccelerometerPace(CoreNavigation::CLP::LogEntry::PrivateData::AccelerometerPace *this)
{
  *this = &unk_1F4CDAD88;
  CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  CoreNavigation::CLP::LogEntry::PrivateData::AccelerometerPace::~AccelerometerPace(this);

  JUMPOUT(0x1D387ECA0);
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::AccelerometerPace::Clear(uint64_t this)
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

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::AccelerometerPace::MergePartialFromCodedStream(CoreNavigation::CLP::LogEntry::PrivateData::AccelerometerPace *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
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

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::AccelerometerPace::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3)
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

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::AccelerometerPace::ByteSize(CoreNavigation::CLP::LogEntry::PrivateData::AccelerometerPace *this)
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

double CoreNavigation::CLP::LogEntry::PrivateData::AccelerometerPace::CheckTypeAndMergeFrom(CoreNavigation::CLP::LogEntry::PrivateData::AccelerometerPace *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  return CoreNavigation::CLP::LogEntry::PrivateData::AccelerometerPace::MergeFrom(this, lpsrc);
}

double CoreNavigation::CLP::LogEntry::PrivateData::AccelerometerPace::CopyFrom(CoreNavigation::CLP::LogEntry::PrivateData::AccelerometerPace *this, const CoreNavigation::CLP::LogEntry::PrivateData::AccelerometerPace *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    return CoreNavigation::CLP::LogEntry::PrivateData::AccelerometerPace::MergeFrom(this, a2);
  }

  return result;
}

double CoreNavigation::CLP::LogEntry::PrivateData::AccelerometerPace::Swap(CoreNavigation::CLP::LogEntry::PrivateData::AccelerometerPace *this, CoreNavigation::CLP::LogEntry::PrivateData::AccelerometerPace *a2)
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

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::FalseStepDetectorState::SharedCtor(uint64_t this)
{
  *(this + 8) = 0;
  *(this + 16) = 0;
  return this;
}

CoreNavigation::CLP::LogEntry::PrivateData::FalseStepDetectorState *CoreNavigation::CLP::LogEntry::PrivateData::FalseStepDetectorState::FalseStepDetectorState(CoreNavigation::CLP::LogEntry::PrivateData::FalseStepDetectorState *this, const CoreNavigation::CLP::LogEntry::PrivateData::FalseStepDetectorState *a2)
{
  *(this + 1) = 0;
  *(this + 2) = 0;
  *this = &unk_1F4CDAE00;
  CoreNavigation::CLP::LogEntry::PrivateData::FalseStepDetectorState::MergeFrom(this, a2);
  return this;
}

void CoreNavigation::CLP::LogEntry::PrivateData::FalseStepDetectorState::MergeFrom(CoreNavigation::CLP::LogEntry::PrivateData::FalseStepDetectorState *this, const CoreNavigation::CLP::LogEntry::PrivateData::FalseStepDetectorState *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v13);
  }

  LOBYTE(v4) = *(a2 + 20);
  if (v4)
  {
    if (*(a2 + 20))
    {
      v6 = *(a2 + 8);
      *(this + 5) |= 1u;
      *(this + 8) = v6;
      v4 = *(a2 + 5);
      if ((v4 & 2) == 0)
      {
LABEL_6:
        if ((v4 & 4) == 0)
        {
          goto LABEL_7;
        }

        goto LABEL_16;
      }
    }

    else if ((*(a2 + 20) & 2) == 0)
    {
      goto LABEL_6;
    }

    v7 = *(a2 + 9);
    *(this + 5) |= 2u;
    *(this + 9) = v7;
    v4 = *(a2 + 5);
    if ((v4 & 4) == 0)
    {
LABEL_7:
      if ((v4 & 8) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_17;
    }

LABEL_16:
    v8 = *(a2 + 10);
    *(this + 5) |= 4u;
    *(this + 10) = v8;
    v4 = *(a2 + 5);
    if ((v4 & 8) == 0)
    {
LABEL_8:
      if ((v4 & 0x10) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_18;
    }

LABEL_17:
    v9 = *(a2 + 11);
    *(this + 5) |= 8u;
    *(this + 11) = v9;
    v4 = *(a2 + 5);
    if ((v4 & 0x10) == 0)
    {
LABEL_9:
      if ((v4 & 0x20) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_19;
    }

LABEL_18:
    v10 = *(a2 + 12);
    *(this + 5) |= 0x10u;
    *(this + 12) = v10;
    v4 = *(a2 + 5);
    if ((v4 & 0x20) == 0)
    {
LABEL_10:
      if ((v4 & 0x40) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_20;
    }

LABEL_19:
    v11 = *(a2 + 13);
    *(this + 5) |= 0x20u;
    *(this + 13) = v11;
    v4 = *(a2 + 5);
    if ((v4 & 0x40) == 0)
    {
LABEL_11:
      if ((v4 & 0x80) == 0)
      {
        return;
      }

      goto LABEL_12;
    }

LABEL_20:
    v12 = *(a2 + 14);
    *(this + 5) |= 0x40u;
    *(this + 14) = v12;
    if ((*(a2 + 5) & 0x80) == 0)
    {
      return;
    }

LABEL_12:
    v5 = *(a2 + 15);
    *(this + 5) |= 0x80u;
    *(this + 15) = v5;
  }
}

void sub_1D0CE1964(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void CoreNavigation::CLP::LogEntry::PrivateData::FalseStepDetectorState::~FalseStepDetectorState(CoreNavigation::CLP::LogEntry::PrivateData::FalseStepDetectorState *this)
{
  *this = &unk_1F4CDAE00;
  CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  CoreNavigation::CLP::LogEntry::PrivateData::FalseStepDetectorState::~FalseStepDetectorState(this);

  JUMPOUT(0x1D387ECA0);
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::FalseStepDetectorState::Clear(uint64_t this)
{
  if (*(this + 20))
  {
    *(this + 8) = 0;
  }

  *(this + 20) = 0;
  return this;
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::FalseStepDetectorState::MergePartialFromCodedStream(CoreNavigation::CLP::LogEntry::PrivateData::FalseStepDetectorState *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
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
        if (TagFallback >> 3 > 6)
        {
          if (v7 == 7)
          {
            if ((TagFallback & 7) == 0)
            {
              v18 = *(a2 + 1);
              v8 = *(a2 + 2);
              goto LABEL_83;
            }
          }

          else if (v7 == 8 && (TagFallback & 7) == 0)
          {
            v12 = *(a2 + 1);
            v8 = *(a2 + 2);
            goto LABEL_91;
          }
        }

        else if (v7 == 5)
        {
          if ((TagFallback & 7) == 0)
          {
            v16 = *(a2 + 1);
            v8 = *(a2 + 2);
            goto LABEL_67;
          }
        }

        else if (v7 == 6 && (TagFallback & 7) == 0)
        {
          v10 = *(a2 + 1);
          v8 = *(a2 + 2);
          goto LABEL_75;
        }

        goto LABEL_34;
      }

      if (TagFallback >> 3 > 2)
      {
        if (v7 == 3)
        {
          if ((TagFallback & 7) == 0)
          {
            v17 = *(a2 + 1);
            v8 = *(a2 + 2);
            goto LABEL_51;
          }
        }

        else if (v7 == 4 && (TagFallback & 7) == 0)
        {
          v11 = *(a2 + 1);
          v8 = *(a2 + 2);
          goto LABEL_59;
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

      v34 = 0;
      v13 = *(a2 + 1);
      v8 = *(a2 + 2);
      if (v13 >= v8 || (v14 = *v13, (v14 & 0x80000000) != 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v34);
        if (!result)
        {
          return result;
        }

        v14 = v34;
        v15 = *(a2 + 1);
        v8 = *(a2 + 2);
      }

      else
      {
        v15 = v13 + 1;
        *(a2 + 1) = v15;
      }

      *(this + 8) = v14 != 0;
      *(this + 5) |= 1u;
      if (v15 < v8 && *v15 == 16)
      {
        v9 = v15 + 1;
        *(a2 + 1) = v9;
LABEL_43:
        v34 = 0;
        if (v9 >= v8 || (v19 = *v9, (v19 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v34);
          if (!result)
          {
            return result;
          }

          v19 = v34;
          v20 = *(a2 + 1);
          v8 = *(a2 + 2);
        }

        else
        {
          v20 = v9 + 1;
          *(a2 + 1) = v20;
        }

        *(this + 9) = v19 != 0;
        *(this + 5) |= 2u;
        if (v20 < v8 && *v20 == 24)
        {
          v17 = v20 + 1;
          *(a2 + 1) = v17;
LABEL_51:
          v34 = 0;
          if (v17 >= v8 || (v21 = *v17, (v21 & 0x80000000) != 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v34);
            if (!result)
            {
              return result;
            }

            v21 = v34;
            v22 = *(a2 + 1);
            v8 = *(a2 + 2);
          }

          else
          {
            v22 = v17 + 1;
            *(a2 + 1) = v22;
          }

          *(this + 10) = v21 != 0;
          *(this + 5) |= 4u;
          if (v22 < v8 && *v22 == 32)
          {
            v11 = v22 + 1;
            *(a2 + 1) = v11;
LABEL_59:
            v34 = 0;
            if (v11 >= v8 || (v23 = *v11, (v23 & 0x80000000) != 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v34);
              if (!result)
              {
                return result;
              }

              v23 = v34;
              v24 = *(a2 + 1);
              v8 = *(a2 + 2);
            }

            else
            {
              v24 = v11 + 1;
              *(a2 + 1) = v24;
            }

            *(this + 11) = v23 != 0;
            *(this + 5) |= 8u;
            if (v24 < v8 && *v24 == 40)
            {
              v16 = v24 + 1;
              *(a2 + 1) = v16;
LABEL_67:
              v34 = 0;
              if (v16 >= v8 || (v25 = *v16, (v25 & 0x80000000) != 0))
              {
                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v34);
                if (!result)
                {
                  return result;
                }

                v25 = v34;
                v26 = *(a2 + 1);
                v8 = *(a2 + 2);
              }

              else
              {
                v26 = v16 + 1;
                *(a2 + 1) = v26;
              }

              *(this + 12) = v25 != 0;
              *(this + 5) |= 0x10u;
              if (v26 < v8 && *v26 == 48)
              {
                v10 = v26 + 1;
                *(a2 + 1) = v10;
LABEL_75:
                v34 = 0;
                if (v10 >= v8 || (v27 = *v10, (v27 & 0x80000000) != 0))
                {
                  result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v34);
                  if (!result)
                  {
                    return result;
                  }

                  v27 = v34;
                  v28 = *(a2 + 1);
                  v8 = *(a2 + 2);
                }

                else
                {
                  v28 = v10 + 1;
                  *(a2 + 1) = v28;
                }

                *(this + 13) = v27 != 0;
                *(this + 5) |= 0x20u;
                if (v28 < v8 && *v28 == 56)
                {
                  v18 = v28 + 1;
                  *(a2 + 1) = v18;
LABEL_83:
                  v34 = 0;
                  if (v18 >= v8 || (v29 = *v18, (v29 & 0x80000000) != 0))
                  {
                    result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v34);
                    if (!result)
                    {
                      return result;
                    }

                    v29 = v34;
                    v30 = *(a2 + 1);
                    v8 = *(a2 + 2);
                  }

                  else
                  {
                    v30 = v18 + 1;
                    *(a2 + 1) = v30;
                  }

                  *(this + 14) = v29 != 0;
                  *(this + 5) |= 0x40u;
                  if (v30 < v8 && *v30 == 64)
                  {
                    v12 = v30 + 1;
                    *(a2 + 1) = v12;
LABEL_91:
                    v34 = 0;
                    if (v12 >= v8 || (v31 = *v12, (v31 & 0x80000000) != 0))
                    {
                      result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v34);
                      if (!result)
                      {
                        return result;
                      }

                      v31 = v34;
                      v32 = *(a2 + 1);
                      v8 = *(a2 + 2);
                    }

                    else
                    {
                      v32 = v12 + 1;
                      *(a2 + 1) = v32;
                    }

                    *(this + 15) = v31 != 0;
                    *(this + 5) |= 0x80u;
                    if (v32 == v8 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
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

    if (v7 == 2 && (TagFallback & 7) == 0)
    {
      v9 = *(a2 + 1);
      v8 = *(a2 + 2);
      goto LABEL_43;
    }

LABEL_34:
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

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::FalseStepDetectorState::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 20);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(1, *(this + 8), a2, a4);
    v6 = *(v5 + 20);
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

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(2, *(v5 + 9), a2, a4);
  v6 = *(v5 + 20);
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
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(3, *(v5 + 10), a2, a4);
  v6 = *(v5 + 20);
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
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(4, *(v5 + 11), a2, a4);
  v6 = *(v5 + 20);
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
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(5, *(v5 + 12), a2, a4);
  v6 = *(v5 + 20);
  if ((v6 & 0x20) == 0)
  {
LABEL_7:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_8;
    }

LABEL_16:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(7, *(v5 + 14), a2, a4);
    if ((*(v5 + 20) & 0x80) == 0)
    {
      return this;
    }

    goto LABEL_17;
  }

LABEL_15:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(6, *(v5 + 13), a2, a4);
  v6 = *(v5 + 20);
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
  v7 = *(v5 + 15);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(8, v7, a2, a4);
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::FalseStepDetectorState::ByteSize(CoreNavigation::CLP::LogEntry::PrivateData::FalseStepDetectorState *this)
{
  if (*(this + 5))
  {
    v2.i64[0] = 0x200000002;
    v2.i64[1] = 0x200000002;
    v1 = *(this + 5);
    v3 = vaddvq_s32(vandq_s8(vshlq_u32(vdupq_n_s32(v1), xmmword_1D0E7A310), v2)) + 2 * (v1 & 1) + (v1 & 2) + ((v1 >> 5) & 2) + ((v1 >> 6) & 2);
  }

  else
  {
    v3 = 0;
  }

  *(this + 4) = v3;
  return v3;
}

void CoreNavigation::CLP::LogEntry::PrivateData::FalseStepDetectorState::CheckTypeAndMergeFrom(CoreNavigation::CLP::LogEntry::PrivateData::FalseStepDetectorState *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  CoreNavigation::CLP::LogEntry::PrivateData::FalseStepDetectorState::MergeFrom(this, lpsrc);
}

void CoreNavigation::CLP::LogEntry::PrivateData::FalseStepDetectorState::CopyFrom(CoreNavigation::CLP::LogEntry::PrivateData::FalseStepDetectorState *this, const CoreNavigation::CLP::LogEntry::PrivateData::FalseStepDetectorState *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    CoreNavigation::CLP::LogEntry::PrivateData::FalseStepDetectorState::MergeFrom(this, a2);
  }
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::FalseStepDetectorState::Swap(uint64_t this, CoreNavigation::CLP::LogEntry::PrivateData::FalseStepDetectorState *a2)
{
  if (a2 != this)
  {
    v2 = *(this + 8);
    *(this + 8) = *(a2 + 8);
    *(a2 + 8) = v2;
    v3 = *(this + 9);
    *(this + 9) = *(a2 + 9);
    *(a2 + 9) = v3;
    v4 = *(this + 10);
    *(this + 10) = *(a2 + 10);
    *(a2 + 10) = v4;
    v5 = *(this + 11);
    *(this + 11) = *(a2 + 11);
    *(a2 + 11) = v5;
    v6 = *(this + 12);
    *(this + 12) = *(a2 + 12);
    *(a2 + 12) = v6;
    v7 = *(this + 13);
    *(this + 13) = *(a2 + 13);
    *(a2 + 13) = v7;
    v8 = *(this + 14);
    *(this + 14) = *(a2 + 14);
    *(a2 + 14) = v8;
    v9 = *(this + 15);
    *(this + 15) = *(a2 + 15);
    *(a2 + 15) = v9;
    v10 = *(this + 20);
    *(this + 20) = *(a2 + 5);
    *(a2 + 5) = v10;
    v11 = *(this + 16);
    *(this + 16) = *(a2 + 4);
    *(a2 + 4) = v11;
  }

  return this;
}

double CoreNavigation::CLP::LogEntry::PrivateData::StepCountEntry::SharedCtor(CoreNavigation::CLP::LogEntry::PrivateData::StepCountEntry *this)
{
  *(this + 18) = 0;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  v2 = MEMORY[0x1E69E5958];
  *(this + 72) = 0u;
  *(this + 11) = v2;
  *(this + 48) = 0;
  *(this + 100) = 0u;
  *(this + 116) = 0u;
  *(this + 8) = 0u;
  return result;
}

CoreNavigation::CLP::LogEntry::PrivateData::StepCountEntry *CoreNavigation::CLP::LogEntry::PrivateData::StepCountEntry::StepCountEntry(CoreNavigation::CLP::LogEntry::PrivateData::StepCountEntry *this, std::string *a2)
{
  *this = &unk_1F4CDAE78;
  *(this + 18) = 0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  v3 = MEMORY[0x1E69E5958];
  *(this + 72) = 0u;
  *(this + 11) = v3;
  *(this + 48) = 0;
  *(this + 100) = 0u;
  *(this + 116) = 0u;
  *(this + 8) = 0u;
  CoreNavigation::CLP::LogEntry::PrivateData::StepCountEntry::MergeFrom(this, a2);
  return this;
}

void CoreNavigation::CLP::LogEntry::PrivateData::StepCountEntry::MergeFrom(std::string *this, std::string *a2)
{
  v3 = this;
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v35);
  }

  v4 = HIDWORD(a2[6].__r_.__value_.__r.__words[0]);
  if (!v4)
  {
    goto LABEL_13;
  }

  if (v4)
  {
    HIDWORD(v3[6].__r_.__value_.__r.__words[0]) |= 1u;
    size = v3->__r_.__value_.__l.__size_;
    if (!size)
    {
      operator new();
    }

    v7 = a2->__r_.__value_.__l.__size_;
    if (!v7)
    {
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(this);
      v7 = *(CoreNavigation::CLP::LogEntry::PrivateData::StepCountEntry::default_instance_ + 8);
    }

    CoreNavigation::CLP::LogEntry::PrivateData::TimeStamp::MergeFrom(size, v7);
    v4 = HIDWORD(a2[6].__r_.__value_.__r.__words[0]);
    if ((v4 & 2) == 0)
    {
LABEL_6:
      if ((v4 & 4) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_33;
    }
  }

  else if ((v4 & 2) == 0)
  {
    goto LABEL_6;
  }

  HIDWORD(v3[6].__r_.__value_.__r.__words[0]) |= 2u;
  v8 = v3->__r_.__value_.__r.__words[2];
  if (!v8)
  {
    operator new();
  }

  v9 = a2->__r_.__value_.__r.__words[2];
  if (!v9)
  {
    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(this);
    v9 = *(CoreNavigation::CLP::LogEntry::PrivateData::StepCountEntry::default_instance_ + 16);
  }

  CoreNavigation::CLP::LogEntry::PrivateData::TimeStamp::MergeFrom(v8, v9);
  v4 = HIDWORD(a2[6].__r_.__value_.__r.__words[0]);
  if ((v4 & 4) == 0)
  {
LABEL_7:
    if ((v4 & 8) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_38;
  }

LABEL_33:
  HIDWORD(v3[6].__r_.__value_.__r.__words[0]) |= 4u;
  data = v3[1].__r_.__value_.__l.__data_;
  if (!data)
  {
    operator new();
  }

  v11 = a2[1].__r_.__value_.__l.__data_;
  if (!v11)
  {
    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(this);
    v11 = *(CoreNavigation::CLP::LogEntry::PrivateData::StepCountEntry::default_instance_ + 24);
  }

  CoreNavigation::CLP::LogEntry::PrivateData::TimeStamp::MergeFrom(data, v11);
  v4 = HIDWORD(a2[6].__r_.__value_.__r.__words[0]);
  if ((v4 & 8) == 0)
  {
LABEL_8:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_39;
  }

LABEL_38:
  v12 = a2[1].__r_.__value_.__r.__words[2];
  HIDWORD(v3[6].__r_.__value_.__r.__words[0]) |= 8u;
  LODWORD(v3[1].__r_.__value_.__r.__words[2]) = v12;
  v4 = HIDWORD(a2[6].__r_.__value_.__r.__words[0]);
  if ((v4 & 0x10) == 0)
  {
LABEL_9:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_10;
    }

LABEL_40:
    v14 = a2[2].__r_.__value_.__l.__data_;
    HIDWORD(v3[6].__r_.__value_.__r.__words[0]) |= 0x20u;
    v3[2].__r_.__value_.__r.__words[0] = v14;
    v4 = HIDWORD(a2[6].__r_.__value_.__r.__words[0]);
    if ((v4 & 0x40) == 0)
    {
LABEL_11:
      if ((v4 & 0x80) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_12;
    }

    goto LABEL_41;
  }

LABEL_39:
  v13 = a2[1].__r_.__value_.__l.__size_;
  HIDWORD(v3[6].__r_.__value_.__r.__words[0]) |= 0x10u;
  v3[1].__r_.__value_.__l.__size_ = v13;
  v4 = HIDWORD(a2[6].__r_.__value_.__r.__words[0]);
  if ((v4 & 0x20) != 0)
  {
    goto LABEL_40;
  }

LABEL_10:
  if ((v4 & 0x40) == 0)
  {
    goto LABEL_11;
  }

LABEL_41:
  v15 = HIDWORD(a2[1].__r_.__value_.__r.__words[2]);
  HIDWORD(v3[6].__r_.__value_.__r.__words[0]) |= 0x40u;
  HIDWORD(v3[1].__r_.__value_.__r.__words[2]) = v15;
  v4 = HIDWORD(a2[6].__r_.__value_.__r.__words[0]);
  if ((v4 & 0x80) != 0)
  {
LABEL_12:
    v5 = a2[3].__r_.__value_.__l.__data_;
    HIDWORD(v3[6].__r_.__value_.__r.__words[0]) |= 0x80u;
    LODWORD(v3[3].__r_.__value_.__l.__data_) = v5;
    v4 = HIDWORD(a2[6].__r_.__value_.__r.__words[0]);
  }

LABEL_13:
  if ((v4 & 0xFF00) == 0)
  {
    goto LABEL_57;
  }

  if ((v4 & 0x100) != 0)
  {
    v16 = a2[2].__r_.__value_.__l.__size_;
    HIDWORD(v3[6].__r_.__value_.__r.__words[0]) |= 0x100u;
    v3[2].__r_.__value_.__l.__size_ = v16;
    v4 = HIDWORD(a2[6].__r_.__value_.__r.__words[0]);
    if ((v4 & 0x200) == 0)
    {
LABEL_16:
      if ((v4 & 0x400) == 0)
      {
        goto LABEL_17;
      }

      goto LABEL_45;
    }
  }

  else if ((v4 & 0x200) == 0)
  {
    goto LABEL_16;
  }

  v17 = a2[2].__r_.__value_.__r.__words[2];
  HIDWORD(v3[6].__r_.__value_.__r.__words[0]) |= 0x200u;
  v3[2].__r_.__value_.__r.__words[2] = v17;
  v4 = HIDWORD(a2[6].__r_.__value_.__r.__words[0]);
  if ((v4 & 0x400) == 0)
  {
LABEL_17:
    if ((v4 & 0x800) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_46;
  }

LABEL_45:
  v18 = a2[3].__r_.__value_.__l.__size_;
  HIDWORD(v3[6].__r_.__value_.__r.__words[0]) |= 0x400u;
  v3[3].__r_.__value_.__l.__size_ = v18;
  v4 = HIDWORD(a2[6].__r_.__value_.__r.__words[0]);
  if ((v4 & 0x800) == 0)
  {
LABEL_18:
    if ((v4 & 0x1000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_47;
  }

LABEL_46:
  v19 = HIDWORD(a2[3].__r_.__value_.__r.__words[0]);
  HIDWORD(v3[6].__r_.__value_.__r.__words[0]) |= 0x800u;
  HIDWORD(v3[3].__r_.__value_.__r.__words[0]) = v19;
  v4 = HIDWORD(a2[6].__r_.__value_.__r.__words[0]);
  if ((v4 & 0x1000) == 0)
  {
LABEL_19:
    if ((v4 & 0x2000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_50;
  }

LABEL_47:
  v20 = a2[3].__r_.__value_.__r.__words[2];
  HIDWORD(v3[6].__r_.__value_.__r.__words[0]) |= 0x1000u;
  v21 = v3[3].__r_.__value_.__r.__words[2];
  if (v21 == MEMORY[0x1E69E5958])
  {
    operator new();
  }

  this = std::string::operator=(v21, v20);
  v4 = HIDWORD(a2[6].__r_.__value_.__r.__words[0]);
  if ((v4 & 0x2000) == 0)
  {
LABEL_20:
    if ((v4 & 0x4000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_51;
  }

LABEL_50:
  v22 = a2[4].__r_.__value_.__s.__data_[0];
  HIDWORD(v3[6].__r_.__value_.__r.__words[0]) |= 0x2000u;
  v3[4].__r_.__value_.__s.__data_[0] = v22;
  v4 = HIDWORD(a2[6].__r_.__value_.__r.__words[0]);
  if ((v4 & 0x4000) == 0)
  {
LABEL_21:
    if ((v4 & 0x8000) == 0)
    {
      goto LABEL_57;
    }

    goto LABEL_52;
  }

LABEL_51:
  v23 = a2[4].__r_.__value_.__s.__data_[1];
  HIDWORD(v3[6].__r_.__value_.__r.__words[0]) |= 0x4000u;
  v3[4].__r_.__value_.__s.__data_[1] = v23;
  v4 = HIDWORD(a2[6].__r_.__value_.__r.__words[0]);
  if ((v4 & 0x8000) == 0)
  {
    goto LABEL_57;
  }

LABEL_52:
  HIDWORD(v3[6].__r_.__value_.__r.__words[0]) |= 0x8000u;
  v24 = v3[4].__r_.__value_.__l.__size_;
  if (!v24)
  {
    operator new();
  }

  v25 = a2[4].__r_.__value_.__l.__size_;
  if (!v25)
  {
    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(this);
    v25 = *(CoreNavigation::CLP::LogEntry::PrivateData::StepCountEntry::default_instance_ + 104);
  }

  CoreNavigation::CLP::LogEntry::PrivateData::AccelerometerPace::MergeFrom(v24, v25);
  v4 = HIDWORD(a2[6].__r_.__value_.__r.__words[0]);
LABEL_57:
  if ((v4 & 0xFF0000) == 0)
  {
    return;
  }

  if ((v4 & 0x10000) != 0)
  {
    v26 = HIDWORD(a2[4].__r_.__value_.__r.__words[0]);
    HIDWORD(v3[6].__r_.__value_.__r.__words[0]) |= 0x10000u;
    HIDWORD(v3[4].__r_.__value_.__r.__words[0]) = v26;
    v4 = HIDWORD(a2[6].__r_.__value_.__r.__words[0]);
    if ((v4 & 0x20000) == 0)
    {
LABEL_60:
      if ((v4 & 0x40000) == 0)
      {
        goto LABEL_61;
      }

      goto LABEL_69;
    }
  }

  else if ((v4 & 0x20000) == 0)
  {
    goto LABEL_60;
  }

  v27 = a2[4].__r_.__value_.__r.__words[2];
  HIDWORD(v3[6].__r_.__value_.__r.__words[0]) |= 0x20000u;
  LODWORD(v3[4].__r_.__value_.__r.__words[2]) = v27;
  v4 = HIDWORD(a2[6].__r_.__value_.__r.__words[0]);
  if ((v4 & 0x40000) == 0)
  {
LABEL_61:
    if ((v4 & 0x80000) == 0)
    {
      goto LABEL_62;
    }

    goto LABEL_70;
  }

LABEL_69:
  v28 = HIDWORD(a2[4].__r_.__value_.__r.__words[2]);
  HIDWORD(v3[6].__r_.__value_.__r.__words[0]) |= 0x40000u;
  HIDWORD(v3[4].__r_.__value_.__r.__words[2]) = v28;
  v4 = HIDWORD(a2[6].__r_.__value_.__r.__words[0]);
  if ((v4 & 0x80000) == 0)
  {
LABEL_62:
    if ((v4 & 0x100000) == 0)
    {
      goto LABEL_63;
    }

    goto LABEL_71;
  }

LABEL_70:
  v29 = a2[5].__r_.__value_.__l.__data_;
  HIDWORD(v3[6].__r_.__value_.__r.__words[0]) |= 0x80000u;
  LODWORD(v3[5].__r_.__value_.__l.__data_) = v29;
  v4 = HIDWORD(a2[6].__r_.__value_.__r.__words[0]);
  if ((v4 & 0x100000) == 0)
  {
LABEL_63:
    if ((v4 & 0x200000) == 0)
    {
      goto LABEL_64;
    }

    goto LABEL_72;
  }

LABEL_71:
  v30 = HIDWORD(a2[5].__r_.__value_.__r.__words[0]);
  HIDWORD(v3[6].__r_.__value_.__r.__words[0]) |= 0x100000u;
  HIDWORD(v3[5].__r_.__value_.__r.__words[0]) = v30;
  v4 = HIDWORD(a2[6].__r_.__value_.__r.__words[0]);
  if ((v4 & 0x200000) == 0)
  {
LABEL_64:
    if ((v4 & 0x400000) == 0)
    {
      goto LABEL_65;
    }

    goto LABEL_73;
  }

LABEL_72:
  v31 = a2[5].__r_.__value_.__r.__words[1];
  HIDWORD(v3[6].__r_.__value_.__r.__words[0]) |= 0x200000u;
  LODWORD(v3[5].__r_.__value_.__r.__words[1]) = v31;
  v4 = HIDWORD(a2[6].__r_.__value_.__r.__words[0]);
  if ((v4 & 0x400000) == 0)
  {
LABEL_65:
    if ((v4 & 0x800000) == 0)
    {
      return;
    }

    goto LABEL_75;
  }

LABEL_73:
  v32 = HIDWORD(a2[5].__r_.__value_.__r.__words[1]);
  if (v32 >= 6)
  {
    __assert_rtn("set_distance_source", "CoreNavigationCLPPrivateDataShared.pb.h", 23332, "::CoreNavigation::CLP::LogEntry::PrivateData::StepCountEntry_DistanceSourceType_IsValid(value)");
  }

  HIDWORD(v3[6].__r_.__value_.__r.__words[0]) |= 0x400000u;
  HIDWORD(v3[5].__r_.__value_.__r.__words[1]) = v32;
  if ((a2[6].__r_.__value_.__r.__words[0] & 0x80000000000000) != 0)
  {
LABEL_75:
    HIDWORD(v3[6].__r_.__value_.__r.__words[0]) |= 0x800000u;
    v33 = v3[5].__r_.__value_.__r.__words[2];
    if (!v33)
    {
      operator new();
    }

    v34 = a2[5].__r_.__value_.__r.__words[2];
    if (!v34)
    {
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(this);
      v34 = *(CoreNavigation::CLP::LogEntry::PrivateData::StepCountEntry::default_instance_ + 136);
    }

    CoreNavigation::CLP::LogEntry::PrivateData::FalseStepDetectorState::MergeFrom(v33, v34);
  }
}

void sub_1D0CE29D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void CoreNavigation::CLP::LogEntry::PrivateData::StepCountEntry::~StepCountEntry(CoreNavigation::CLP::LogEntry::PrivateData::StepCountEntry *this)
{
  *this = &unk_1F4CDAE78;
  CoreNavigation::CLP::LogEntry::PrivateData::StepCountEntry::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  CoreNavigation::CLP::LogEntry::PrivateData::StepCountEntry::~StepCountEntry(this);

  JUMPOUT(0x1D387ECA0);
}

void CoreNavigation::CLP::LogEntry::PrivateData::StepCountEntry::SharedDtor(CoreNavigation::CLP::LogEntry::PrivateData::StepCountEntry *this)
{
  v1 = this;
  v2 = *(this + 11);
  if (v2 != MEMORY[0x1E69E5958] && v2 != 0)
  {
    if (*(v2 + 23) < 0)
    {
      operator delete(*v2);
    }

    this = MEMORY[0x1D387ECA0](v2, 0x1012C40EC159624);
  }

  CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(this);
  if (CoreNavigation::CLP::LogEntry::PrivateData::StepCountEntry::default_instance_ != v1)
  {
    v4 = *(v1 + 1);
    if (v4)
    {
      (*(*v4 + 8))(v4);
    }

    v5 = *(v1 + 2);
    if (v5)
    {
      (*(*v5 + 8))(v5);
    }

    v6 = *(v1 + 3);
    if (v6)
    {
      (*(*v6 + 8))(v6);
    }

    v7 = *(v1 + 13);
    if (v7)
    {
      (*(*v7 + 8))(v7);
    }

    v8 = *(v1 + 17);
    if (v8)
    {
      v9 = *(*v8 + 8);

      v9();
    }
  }
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::StepCountEntry::Clear(uint64_t this)
{
  v1 = *(this + 148);
  if (v1)
  {
    if (v1)
    {
      v2 = *(this + 8);
      if (v2)
      {
        if (*(v2 + 36))
        {
          *(v2 + 8) = 0;
          *(v2 + 16) = 0;
          *(v2 + 24) = 0;
        }

        *(v2 + 36) = 0;
        v1 = *(this + 148);
      }
    }

    if ((v1 & 2) != 0)
    {
      v3 = *(this + 16);
      if (v3)
      {
        if (*(v3 + 36))
        {
          *(v3 + 8) = 0;
          *(v3 + 16) = 0;
          *(v3 + 24) = 0;
        }

        *(v3 + 36) = 0;
        v1 = *(this + 148);
      }
    }

    if ((v1 & 4) != 0)
    {
      v4 = *(this + 24);
      if (v4)
      {
        if (*(v4 + 36))
        {
          *(v4 + 8) = 0;
          *(v4 + 16) = 0;
          *(v4 + 24) = 0;
        }

        *(v4 + 36) = 0;
        v1 = *(this + 148);
      }
    }

    *(this + 72) = 0;
    *(this + 40) = 0;
    *(this + 48) = 0;
    *(this + 32) = 0;
  }

  if ((v1 & 0xFF00) != 0)
  {
    *(this + 80) = 0;
    *(this + 76) = 0;
    *(this + 56) = 0;
    *(this + 64) = 0;
    if ((v1 & 0x1000) != 0)
    {
      v5 = *(this + 88);
      if (v5 != MEMORY[0x1E69E5958])
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

    *(this + 96) = 0;
    v1 = *(this + 148);
    if ((v1 & 0x8000) != 0)
    {
      v6 = *(this + 104);
      if (v6)
      {
        if (*(v6 + 36))
        {
          *(v6 + 8) = 0;
          *(v6 + 16) = 0;
          *(v6 + 24) = 0;
        }

        *(v6 + 36) = 0;
        v1 = *(this + 148);
      }
    }
  }

  if ((v1 & 0xFF0000) != 0)
  {
    *(this + 100) = 0;
    *(this + 120) = 0;
    *(this + 128) = 0;
    *(this + 112) = 0;
    if ((v1 & 0x800000) != 0)
    {
      v7 = *(this + 136);
      if (v7)
      {
        if (*(v7 + 20))
        {
          *(v7 + 8) = 0;
        }

        *(v7 + 20) = 0;
      }
    }
  }

  *(this + 148) = 0;
  return this;
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::StepCountEntry::MergePartialFromCodedStream(CoreNavigation::CLP::LogEntry::PrivateData::StepCountEntry *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
{
  v5 = MEMORY[0x1E69E5958];
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
          goto LABEL_59;
        }

        *(this + 37) |= 1u;
        v9 = *(this + 1);
        if (!v9)
        {
          operator new();
        }

        v102[0] = 0;
        v10 = *(a2 + 1);
        if (v10 >= *(a2 + 2) || *v10 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v102))
          {
            return 0;
          }
        }

        else
        {
          v102[0] = *v10;
          *(a2 + 1) = v10 + 1;
        }

        v31 = *(a2 + 14);
        v32 = *(a2 + 15);
        *(a2 + 14) = v31 + 1;
        if (v31 >= v32)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
        if (!CoreNavigation::CLP::LogEntry::PrivateData::TimeStamp::MergePartialFromCodedStream(v9, a2, v33) || *(a2 + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
        v34 = *(a2 + 14);
        v35 = __OFSUB__(v34, 1);
        v36 = v34 - 1;
        if (v36 < 0 == v35)
        {
          *(a2 + 14) = v36;
        }

        v37 = *(a2 + 1);
        if (v37 >= *(a2 + 2) || *v37 != 18)
        {
          continue;
        }

        *(a2 + 1) = v37 + 1;
        goto LABEL_71;
      case 2u:
        if (v8 != 2)
        {
          goto LABEL_59;
        }

LABEL_71:
        *(this + 37) |= 2u;
        v38 = *(this + 2);
        if (!v38)
        {
          operator new();
        }

        v102[0] = 0;
        v39 = *(a2 + 1);
        if (v39 >= *(a2 + 2) || *v39 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v102))
          {
            return 0;
          }
        }

        else
        {
          v102[0] = *v39;
          *(a2 + 1) = v39 + 1;
        }

        v40 = *(a2 + 14);
        v41 = *(a2 + 15);
        *(a2 + 14) = v40 + 1;
        if (v40 >= v41)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
        if (!CoreNavigation::CLP::LogEntry::PrivateData::TimeStamp::MergePartialFromCodedStream(v38, a2, v42) || *(a2 + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
        v43 = *(a2 + 14);
        v35 = __OFSUB__(v43, 1);
        v44 = v43 - 1;
        if (v44 < 0 == v35)
        {
          *(a2 + 14) = v44;
        }

        v45 = *(a2 + 1);
        if (v45 >= *(a2 + 2) || *v45 != 26)
        {
          continue;
        }

        *(a2 + 1) = v45 + 1;
LABEL_85:
        *(this + 37) |= 4u;
        v46 = *(this + 3);
        if (!v46)
        {
          operator new();
        }

        v102[0] = 0;
        v47 = *(a2 + 1);
        if (v47 >= *(a2 + 2) || *v47 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v102))
          {
            return 0;
          }
        }

        else
        {
          v102[0] = *v47;
          *(a2 + 1) = v47 + 1;
        }

        v48 = *(a2 + 14);
        v49 = *(a2 + 15);
        *(a2 + 14) = v48 + 1;
        if (v48 >= v49)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
        if (!CoreNavigation::CLP::LogEntry::PrivateData::TimeStamp::MergePartialFromCodedStream(v46, a2, v50) || *(a2 + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
        v51 = *(a2 + 14);
        v35 = __OFSUB__(v51, 1);
        v52 = v51 - 1;
        if (v52 < 0 == v35)
        {
          *(a2 + 14) = v52;
        }

        v53 = *(a2 + 1);
        v19 = *(a2 + 2);
        if (v53 >= v19 || *v53 != 32)
        {
          continue;
        }

        v20 = v53 + 1;
        *(a2 + 1) = v20;
LABEL_99:
        if (v20 >= v19 || (v54 = *v20, v54 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 10);
          if (!result)
          {
            return result;
          }

          v55 = *(a2 + 1);
          v19 = *(a2 + 2);
        }

        else
        {
          *(this + 10) = v54;
          v55 = v20 + 1;
          *(a2 + 1) = v55;
        }

        *(this + 37) |= 8u;
        if (v55 >= v19 || *v55 != 41)
        {
          continue;
        }

        *(a2 + 1) = v55 + 1;
LABEL_107:
        *v102 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v102) & 1) == 0)
        {
          return 0;
        }

        *(this + 4) = *v102;
        *(this + 37) |= 0x10u;
        v57 = *(a2 + 1);
        if (v57 >= *(a2 + 2) || *v57 != 49)
        {
          continue;
        }

        *(a2 + 1) = v57 + 1;
LABEL_111:
        *v102 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v102) & 1) == 0)
        {
          return 0;
        }

        *(this + 6) = *v102;
        *(this + 37) |= 0x20u;
        v58 = *(a2 + 1);
        v21 = *(a2 + 2);
        if (v58 >= v21 || *v58 != 56)
        {
          continue;
        }

        v27 = v58 + 1;
        *(a2 + 1) = v27;
LABEL_115:
        if (v27 >= v21 || (v59 = *v27, v59 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 11);
          if (!result)
          {
            return result;
          }

          v60 = *(a2 + 1);
          v21 = *(a2 + 2);
        }

        else
        {
          *(this + 11) = v59;
          v60 = v27 + 1;
          *(a2 + 1) = v60;
        }

        *(this + 37) |= 0x40u;
        if (v60 >= v21 || *v60 != 64)
        {
          continue;
        }

        v22 = v60 + 1;
        *(a2 + 1) = v22;
LABEL_123:
        if (v22 >= v21 || (v61 = *v22, v61 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 18);
          if (!result)
          {
            return result;
          }

          v62 = *(a2 + 1);
          v21 = *(a2 + 2);
        }

        else
        {
          *(this + 18) = v61;
          v62 = v22 + 1;
          *(a2 + 1) = v62;
        }

        *(this + 37) |= 0x80u;
        if (v62 >= v21 || *v62 != 73)
        {
          continue;
        }

        *(a2 + 1) = v62 + 1;
LABEL_131:
        *v102 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v102) & 1) == 0)
        {
          return 0;
        }

        *(this + 7) = *v102;
        *(this + 37) |= 0x100u;
        v63 = *(a2 + 1);
        if (v63 >= *(a2 + 2) || *v63 != 81)
        {
          continue;
        }

        *(a2 + 1) = v63 + 1;
LABEL_135:
        *v102 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v102) & 1) == 0)
        {
          return 0;
        }

        *(this + 8) = *v102;
        *(this + 37) |= 0x200u;
        v64 = *(a2 + 1);
        if (v64 >= *(a2 + 2) || *v64 != 89)
        {
          continue;
        }

        *(a2 + 1) = v64 + 1;
LABEL_139:
        *v102 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v102) & 1) == 0)
        {
          return 0;
        }

        *(this + 10) = *v102;
        *(this + 37) |= 0x400u;
        v65 = *(a2 + 1);
        v15 = *(a2 + 2);
        if (v65 >= v15 || *v65 != 96)
        {
          continue;
        }

        v16 = v65 + 1;
        *(a2 + 1) = v16;
LABEL_143:
        v102[0] = 0;
        if (v16 >= v15 || (v66 = *v16, (v66 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v102);
          if (!result)
          {
            return result;
          }

          v66 = v102[0];
          v67 = *(a2 + 1);
          v15 = *(a2 + 2);
        }

        else
        {
          v67 = v16 + 1;
          *(a2 + 1) = v67;
        }

        *(this + 19) = v66;
        v17 = *(this + 37) | 0x800;
        *(this + 37) = v17;
        if (v67 >= v15 || *v67 != 106)
        {
          continue;
        }

        *(a2 + 1) = v67 + 1;
LABEL_151:
        *(this + 37) = v17 | 0x1000;
        if (*(this + 11) == v5)
        {
          operator new();
        }

        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
        if (!result)
        {
          return result;
        }

        v68 = *(a2 + 1);
        v13 = *(a2 + 2);
        if (v68 >= v13 || *v68 != 112)
        {
          continue;
        }

        v26 = v68 + 1;
        *(a2 + 1) = v26;
LABEL_157:
        v102[0] = 0;
        if (v26 >= v13 || (v69 = *v26, (v69 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v102);
          if (!result)
          {
            return result;
          }

          v69 = v102[0];
          v70 = *(a2 + 1);
          v13 = *(a2 + 2);
        }

        else
        {
          v70 = v26 + 1;
          *(a2 + 1) = v70;
        }

        *(this + 96) = v69 != 0;
        *(this + 37) |= 0x2000u;
        if (v70 >= v13 || *v70 != 120)
        {
          continue;
        }

        v14 = v70 + 1;
        *(a2 + 1) = v14;
LABEL_165:
        v102[0] = 0;
        if (v14 >= v13 || (v71 = *v14, (v71 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v102);
          if (!result)
          {
            return result;
          }

          v71 = v102[0];
          v72 = *(a2 + 1);
          v13 = *(a2 + 2);
        }

        else
        {
          v72 = (v14 + 1);
          *(a2 + 1) = v72;
        }

        *(this + 97) = v71 != 0;
        v18 = *(this + 37) | 0x4000;
        *(this + 37) = v18;
        if (v13 - v72 < 2 || *v72 != 130 || v72[1] != 1)
        {
          continue;
        }

        *(a2 + 1) = v72 + 2;
LABEL_174:
        *(this + 37) = v18 | 0x8000;
        v73 = *(this + 13);
        if (!v73)
        {
          operator new();
        }

        v102[0] = 0;
        v74 = *(a2 + 1);
        if (v74 >= *(a2 + 2) || *v74 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v102))
          {
            return 0;
          }
        }

        else
        {
          v102[0] = *v74;
          *(a2 + 1) = v74 + 1;
        }

        v75 = *(a2 + 14);
        v76 = *(a2 + 15);
        *(a2 + 14) = v75 + 1;
        if (v75 >= v76)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
        if (!CoreNavigation::CLP::LogEntry::PrivateData::AccelerometerPace::MergePartialFromCodedStream(v73, a2, v77) || *(a2 + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
        v78 = *(a2 + 14);
        v35 = __OFSUB__(v78, 1);
        v79 = v78 - 1;
        if (v79 < 0 == v35)
        {
          *(a2 + 14) = v79;
        }

        v80 = *(a2 + 1);
        v11 = *(a2 + 2);
        if (v11 - v80 <= 1 || *v80 != 136 || v80[1] != 1)
        {
          continue;
        }

        v12 = (v80 + 2);
        *(a2 + 1) = v12;
LABEL_189:
        if (v12 >= v11 || (v81 = *v12, v81 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 25);
          if (!result)
          {
            return result;
          }

          v82 = *(a2 + 1);
          v11 = *(a2 + 2);
        }

        else
        {
          *(this + 25) = v81;
          v82 = (v12 + 1);
          *(a2 + 1) = v82;
        }

        *(this + 37) |= 0x10000u;
        if (v11 - v82 < 2 || *v82 != 144 || v82[1] != 1)
        {
          continue;
        }

        v23 = (v82 + 2);
        *(a2 + 1) = v23;
LABEL_198:
        if (v23 >= v11 || (v83 = *v23, v83 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 28);
          if (!result)
          {
            return result;
          }

          v84 = *(a2 + 1);
          v11 = *(a2 + 2);
        }

        else
        {
          *(this + 28) = v83;
          v84 = (v23 + 1);
          *(a2 + 1) = v84;
        }

        *(this + 37) |= 0x20000u;
        if (v11 - v84 < 2 || *v84 != 152 || v84[1] != 1)
        {
          continue;
        }

        v28 = (v84 + 2);
        *(a2 + 1) = v28;
LABEL_207:
        if (v28 >= v11 || (v85 = *v28, v85 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 29);
          if (!result)
          {
            return result;
          }

          v86 = *(a2 + 1);
          v11 = *(a2 + 2);
        }

        else
        {
          *(this + 29) = v85;
          v86 = (v28 + 1);
          *(a2 + 1) = v86;
        }

        *(this + 37) |= 0x40000u;
        if (v11 - v86 < 2 || *v86 != 160 || v86[1] != 1)
        {
          continue;
        }

        v30 = (v86 + 2);
        *(a2 + 1) = v30;
LABEL_216:
        if (v30 >= v11 || (v87 = *v30, v87 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 30);
          if (!result)
          {
            return result;
          }

          v88 = *(a2 + 1);
          v11 = *(a2 + 2);
        }

        else
        {
          *(this + 30) = v87;
          v88 = (v30 + 1);
          *(a2 + 1) = v88;
        }

        *(this + 37) |= 0x80000u;
        if (v11 - v88 < 2 || *v88 != 168 || v88[1] != 1)
        {
          continue;
        }

        v24 = (v88 + 2);
        *(a2 + 1) = v24;
LABEL_225:
        if (v24 >= v11 || (v89 = *v24, v89 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 31);
          if (!result)
          {
            return result;
          }

          v90 = *(a2 + 1);
          v11 = *(a2 + 2);
        }

        else
        {
          *(this + 31) = v89;
          v90 = (v24 + 1);
          *(a2 + 1) = v90;
        }

        *(this + 37) |= 0x100000u;
        if (v11 - v90 < 2 || *v90 != 176 || v90[1] != 1)
        {
          continue;
        }

        v25 = (v90 + 2);
        *(a2 + 1) = v25;
LABEL_234:
        if (v25 >= v11 || (v91 = *v25, v91 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 32);
          if (!result)
          {
            return result;
          }

          v92 = *(a2 + 1);
          v11 = *(a2 + 2);
        }

        else
        {
          *(this + 32) = v91;
          v92 = (v25 + 1);
          *(a2 + 1) = v92;
        }

        *(this + 37) |= 0x200000u;
        if (v11 - v92 < 2 || *v92 != 184 || v92[1] != 1)
        {
          continue;
        }

        v29 = (v92 + 2);
        *(a2 + 1) = v29;
LABEL_243:
        v102[0] = 0;
        if (v29 >= v11 || (v93 = *v29, (v93 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v102);
          if (!result)
          {
            return result;
          }

          v93 = v102[0];
        }

        else
        {
          *(a2 + 1) = v29 + 1;
        }

        if (v93 <= 5)
        {
          *(this + 37) |= 0x400000u;
          *(this + 33) = v93;
        }

        v94 = *(a2 + 1);
        if (*(a2 + 4) - v94 < 2 || *v94 != 194 || v94[1] != 1)
        {
          continue;
        }

        *(a2 + 1) = v94 + 2;
LABEL_254:
        *(this + 37) |= 0x800000u;
        v95 = *(this + 17);
        if (!v95)
        {
          operator new();
        }

        v102[0] = 0;
        v96 = *(a2 + 1);
        if (v96 >= *(a2 + 2) || *v96 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v102))
          {
            return 0;
          }
        }

        else
        {
          v102[0] = *v96;
          *(a2 + 1) = v96 + 1;
        }

        v97 = *(a2 + 14);
        v98 = *(a2 + 15);
        *(a2 + 14) = v97 + 1;
        if (v97 < v98)
        {
          wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
          if (CoreNavigation::CLP::LogEntry::PrivateData::FalseStepDetectorState::MergePartialFromCodedStream(v95, a2, v99))
          {
            if (*(a2 + 36) == 1)
            {
              wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
              v100 = *(a2 + 14);
              v35 = __OFSUB__(v100, 1);
              v101 = v100 - 1;
              if (v101 < 0 == v35)
              {
                *(a2 + 14) = v101;
              }

              if (*(a2 + 1) == *(a2 + 2) && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
              {
                *(a2 + 8) = 0;
                result = 1;
                *(a2 + 36) = 1;
                return result;
              }

              continue;
            }
          }
        }

        return 0;
      case 3u:
        if (v8 == 2)
        {
          goto LABEL_85;
        }

        goto LABEL_59;
      case 4u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_59;
        }

        v20 = *(a2 + 1);
        v19 = *(a2 + 2);
        goto LABEL_99;
      case 5u:
        if (v8 == 1)
        {
          goto LABEL_107;
        }

        goto LABEL_59;
      case 6u:
        if (v8 == 1)
        {
          goto LABEL_111;
        }

        goto LABEL_59;
      case 7u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_59;
        }

        v27 = *(a2 + 1);
        v21 = *(a2 + 2);
        goto LABEL_115;
      case 8u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_59;
        }

        v22 = *(a2 + 1);
        v21 = *(a2 + 2);
        goto LABEL_123;
      case 9u:
        if (v8 == 1)
        {
          goto LABEL_131;
        }

        goto LABEL_59;
      case 0xAu:
        if (v8 == 1)
        {
          goto LABEL_135;
        }

        goto LABEL_59;
      case 0xBu:
        if (v8 == 1)
        {
          goto LABEL_139;
        }

        goto LABEL_59;
      case 0xCu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_59;
        }

        v16 = *(a2 + 1);
        v15 = *(a2 + 2);
        goto LABEL_143;
      case 0xDu:
        if (v8 != 2)
        {
          goto LABEL_59;
        }

        v17 = *(this + 37);
        goto LABEL_151;
      case 0xEu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_59;
        }

        v26 = *(a2 + 1);
        v13 = *(a2 + 2);
        goto LABEL_157;
      case 0xFu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_59;
        }

        v14 = *(a2 + 1);
        v13 = *(a2 + 2);
        goto LABEL_165;
      case 0x10u:
        if (v8 != 2)
        {
          goto LABEL_59;
        }

        v18 = *(this + 37);
        goto LABEL_174;
      case 0x11u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_59;
        }

        v12 = *(a2 + 1);
        v11 = *(a2 + 2);
        goto LABEL_189;
      case 0x12u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_59;
        }

        v23 = *(a2 + 1);
        v11 = *(a2 + 2);
        goto LABEL_198;
      case 0x13u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_59;
        }

        v28 = *(a2 + 1);
        v11 = *(a2 + 2);
        goto LABEL_207;
      case 0x14u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_59;
        }

        v30 = *(a2 + 1);
        v11 = *(a2 + 2);
        goto LABEL_216;
      case 0x15u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_59;
        }

        v24 = *(a2 + 1);
        v11 = *(a2 + 2);
        goto LABEL_225;
      case 0x16u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_59;
        }

        v25 = *(a2 + 1);
        v11 = *(a2 + 2);
        goto LABEL_234;
      case 0x17u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_59;
        }

        v29 = *(a2 + 1);
        v11 = *(a2 + 2);
        goto LABEL_243;
      case 0x18u:
        if (v8 != 2)
        {
          goto LABEL_59;
        }

        goto LABEL_254;
      default:
LABEL_59:
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
  }
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::StepCountEntry::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 148);
  if (v6)
  {
    v7 = *(this + 8);
    if (!v7)
    {
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(this);
      v7 = *(CoreNavigation::CLP::LogEntry::PrivateData::StepCountEntry::default_instance_ + 8);
    }

    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(1, v7, a2, a4);
    v6 = *(v5 + 148);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_32;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  v8 = *(v5 + 16);
  if (!v8)
  {
    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(this);
    v8 = *(CoreNavigation::CLP::LogEntry::PrivateData::StepCountEntry::default_instance_ + 16);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(2, v8, a2, a4);
  v6 = *(v5 + 148);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_35;
  }

LABEL_32:
  v9 = *(v5 + 24);
  if (!v9)
  {
    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(this);
    v9 = *(CoreNavigation::CLP::LogEntry::PrivateData::StepCountEntry::default_instance_ + 24);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(3, v9, a2, a4);
  v6 = *(v5 + 148);
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_36;
  }

LABEL_35:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(4, *(v5 + 40), a2, a4);
  v6 = *(v5 + 148);
  if ((v6 & 0x10) == 0)
  {
LABEL_6:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_37;
  }

LABEL_36:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(5, a2, *(v5 + 32), a3);
  v6 = *(v5 + 148);
  if ((v6 & 0x20) == 0)
  {
LABEL_7:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_38;
  }

LABEL_37:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(6, a2, *(v5 + 48), a3);
  v6 = *(v5 + 148);
  if ((v6 & 0x40) == 0)
  {
LABEL_8:
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_39;
  }

LABEL_38:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(7, *(v5 + 44), a2, a4);
  v6 = *(v5 + 148);
  if ((v6 & 0x80) == 0)
  {
LABEL_9:
    if ((v6 & 0x100) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_40;
  }

LABEL_39:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(8, *(v5 + 72), a2, a4);
  v6 = *(v5 + 148);
  if ((v6 & 0x100) == 0)
  {
LABEL_10:
    if ((v6 & 0x200) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_41;
  }

LABEL_40:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(9, a2, *(v5 + 56), a3);
  v6 = *(v5 + 148);
  if ((v6 & 0x200) == 0)
  {
LABEL_11:
    if ((v6 & 0x400) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_42;
  }

LABEL_41:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(0xA, a2, *(v5 + 64), a3);
  v6 = *(v5 + 148);
  if ((v6 & 0x400) == 0)
  {
LABEL_12:
    if ((v6 & 0x800) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_43;
  }

LABEL_42:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(0xB, a2, *(v5 + 80), a3);
  v6 = *(v5 + 148);
  if ((v6 & 0x800) == 0)
  {
LABEL_13:
    if ((v6 & 0x1000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_44;
  }

LABEL_43:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(0xC, *(v5 + 76), a2, a4);
  v6 = *(v5 + 148);
  if ((v6 & 0x1000) == 0)
  {
LABEL_14:
    if ((v6 & 0x2000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_45;
  }

LABEL_44:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
  v6 = *(v5 + 148);
  if ((v6 & 0x2000) == 0)
  {
LABEL_15:
    if ((v6 & 0x4000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_46;
  }

LABEL_45:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(0xE, *(v5 + 96), a2, a4);
  v6 = *(v5 + 148);
  if ((v6 & 0x4000) == 0)
  {
LABEL_16:
    if ((v6 & 0x8000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_47;
  }

LABEL_46:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(0xF, *(v5 + 97), a2, a4);
  v6 = *(v5 + 148);
  if ((v6 & 0x8000) == 0)
  {
LABEL_17:
    if ((v6 & 0x10000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_50;
  }

LABEL_47:
  v10 = *(v5 + 104);
  if (!v10)
  {
    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(this);
    v10 = *(CoreNavigation::CLP::LogEntry::PrivateData::StepCountEntry::default_instance_ + 104);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x10, v10, a2, a4);
  v6 = *(v5 + 148);
  if ((v6 & 0x10000) == 0)
  {
LABEL_18:
    if ((v6 & 0x20000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_51;
  }

LABEL_50:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x11, *(v5 + 100), a2, a4);
  v6 = *(v5 + 148);
  if ((v6 & 0x20000) == 0)
  {
LABEL_19:
    if ((v6 & 0x40000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_52;
  }

LABEL_51:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x12, *(v5 + 112), a2, a4);
  v6 = *(v5 + 148);
  if ((v6 & 0x40000) == 0)
  {
LABEL_20:
    if ((v6 & 0x80000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_53;
  }

LABEL_52:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x13, *(v5 + 116), a2, a4);
  v6 = *(v5 + 148);
  if ((v6 & 0x80000) == 0)
  {
LABEL_21:
    if ((v6 & 0x100000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_54;
  }

LABEL_53:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x14, *(v5 + 120), a2, a4);
  v6 = *(v5 + 148);
  if ((v6 & 0x100000) == 0)
  {
LABEL_22:
    if ((v6 & 0x200000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_55;
  }

LABEL_54:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x15, *(v5 + 124), a2, a4);
  v6 = *(v5 + 148);
  if ((v6 & 0x200000) == 0)
  {
LABEL_23:
    if ((v6 & 0x400000) == 0)
    {
      goto LABEL_24;
    }

LABEL_56:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(0x17, *(v5 + 132), a2, a4);
    if ((*(v5 + 148) & 0x800000) == 0)
    {
      return this;
    }

    goto LABEL_57;
  }

LABEL_55:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x16, *(v5 + 128), a2, a4);
  v6 = *(v5 + 148);
  if ((v6 & 0x400000) != 0)
  {
    goto LABEL_56;
  }

LABEL_24:
  if ((v6 & 0x800000) == 0)
  {
    return this;
  }

LABEL_57:
  v11 = *(v5 + 136);
  if (!v11)
  {
    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(this);
    v11 = *(CoreNavigation::CLP::LogEntry::PrivateData::StepCountEntry::default_instance_ + 136);
  }

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x18, v11, a2, a4);
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::StepCountEntry::ByteSize(uint64_t this, unsigned int a2)
{
  v2 = this;
  v3 = *(this + 148);
  if (!v3)
  {
    v5 = 0;
    goto LABEL_55;
  }

  if ((v3 & 1) == 0)
  {
    v4 = 0;
    if ((v3 & 2) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_15;
  }

  v6 = *(this + 8);
  if (!v6)
  {
    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(this);
    v6 = *(CoreNavigation::CLP::LogEntry::PrivateData::StepCountEntry::default_instance_ + 8);
  }

  v7 = *(v6 + 36);
  if (*(v6 + 36))
  {
    v8 = (v7 << 31 >> 31) & 9;
    if ((v7 & 2) != 0)
    {
      v8 += 9;
    }

    if ((v7 & 4) != 0)
    {
      v7 = v8 + 9;
    }

    else
    {
      v7 = v8;
    }
  }

  *(v6 + 32) = v7;
  v4 = v7 + 2;
  v3 = *(v2 + 148);
  if ((v3 & 2) != 0)
  {
LABEL_15:
    v9 = *(v2 + 16);
    if (!v9)
    {
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(this);
      v9 = *(CoreNavigation::CLP::LogEntry::PrivateData::StepCountEntry::default_instance_ + 16);
    }

    v10 = *(v9 + 36);
    if (*(v9 + 36))
    {
      v11 = (v10 << 31 >> 31) & 9;
      if ((v10 & 2) != 0)
      {
        v11 += 9;
      }

      if ((v10 & 4) != 0)
      {
        v10 = v11 + 9;
      }

      else
      {
        v10 = v11;
      }
    }

    *(v9 + 32) = v10;
    v4 += v10 + 2;
    v3 = *(v2 + 148);
  }

LABEL_24:
  if ((v3 & 4) != 0)
  {
    v12 = *(v2 + 24);
    if (!v12)
    {
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(this);
      v12 = *(CoreNavigation::CLP::LogEntry::PrivateData::StepCountEntry::default_instance_ + 24);
    }

    v13 = *(v12 + 36);
    if (*(v12 + 36))
    {
      v14 = (v13 << 31 >> 31) & 9;
      if ((v13 & 2) != 0)
      {
        v14 += 9;
      }

      if ((v13 & 4) != 0)
      {
        v13 = v14 + 9;
      }

      else
      {
        v13 = v14;
      }
    }

    *(v12 + 32) = v13;
    v4 += v13 + 2;
    v3 = *(v2 + 148);
    if ((v3 & 8) == 0)
    {
      goto LABEL_40;
    }

    goto LABEL_36;
  }

  if ((v3 & 8) != 0)
  {
LABEL_36:
    this = *(v2 + 40);
    if (this >= 0x80)
    {
      this = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(this);
      v15 = this + 1;
      v3 = *(v2 + 148);
    }

    else
    {
      v15 = 2;
    }

    v4 += v15;
  }

LABEL_40:
  v16 = v4 + 9;
  if ((v3 & 0x10) == 0)
  {
    v16 = v4;
  }

  if ((v3 & 0x20) != 0)
  {
    v5 = v16 + 9;
  }

  else
  {
    v5 = v16;
  }

  if ((v3 & 0x40) != 0)
  {
    this = *(v2 + 44);
    if (this >= 0x80)
    {
      this = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(this);
      v17 = this + 1;
      v3 = *(v2 + 148);
    }

    else
    {
      v17 = 2;
    }

    v5 = (v17 + v5);
  }

  if ((v3 & 0x80) != 0)
  {
    this = *(v2 + 72);
    if (this >= 0x80)
    {
      this = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(this);
      v18 = this + 1;
      v3 = *(v2 + 148);
    }

    else
    {
      v18 = 2;
    }

    v5 = (v18 + v5);
  }

LABEL_55:
  if ((v3 & 0xFF00) != 0)
  {
    v19 = v5 + 9;
    if ((v3 & 0x100) == 0)
    {
      v19 = v5;
    }

    if ((v3 & 0x200) != 0)
    {
      v19 += 9;
    }

    if ((v3 & 0x400) != 0)
    {
      v20 = v19 + 9;
    }

    else
    {
      v20 = v19;
    }

    if ((v3 & 0x800) != 0)
    {
      this = *(v2 + 76);
      if ((this & 0x80000000) != 0)
      {
        v21 = 11;
      }

      else if (this >= 0x80)
      {
        this = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(this);
        v21 = this + 1;
        v3 = *(v2 + 148);
      }

      else
      {
        v21 = 2;
      }

      v20 += v21;
    }

    if ((v3 & 0x1000) != 0)
    {
      v22 = *(v2 + 88);
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
        this = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v26);
        v23 = *(v22 + 23);
        v25 = *(v22 + 8);
        v3 = *(v2 + 148);
        v24 = *(v22 + 23);
      }

      else
      {
        this = 1;
      }

      if (v24 < 0)
      {
        v23 = v25;
      }

      v20 += this + v23 + 1;
    }

    v5 = ((v3 >> 12) & 2) + ((v3 >> 13) & 2) + v20;
    if ((v3 & 0x8000) != 0)
    {
      v27 = *(v2 + 104);
      if (!v27)
      {
        CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(this);
        v27 = *(CoreNavigation::CLP::LogEntry::PrivateData::StepCountEntry::default_instance_ + 104);
      }

      v28 = *(v27 + 36);
      v29 = (v28 << 31 >> 31) & 9;
      if ((v28 & 2) != 0)
      {
        v29 += 9;
      }

      if ((v28 & 4) != 0)
      {
        v29 += 9;
      }

      if (*(v27 + 36))
      {
        v30 = v29;
      }

      else
      {
        v30 = 0;
      }

      *(v27 + 32) = v30;
      v5 = (v5 + v30 + 3);
      v3 = *(v2 + 148);
    }
  }

  if ((v3 & 0xFF0000) != 0)
  {
    if ((v3 & 0x10000) != 0)
    {
      v31 = *(v2 + 100);
      if (v31 >= 0x80)
      {
        v32 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v31) + 2;
        v3 = *(v2 + 148);
      }

      else
      {
        v32 = 3;
      }

      v5 = (v32 + v5);
      if ((v3 & 0x20000) == 0)
      {
LABEL_94:
        if ((v3 & 0x40000) == 0)
        {
          goto LABEL_95;
        }

        goto LABEL_109;
      }
    }

    else if ((v3 & 0x20000) == 0)
    {
      goto LABEL_94;
    }

    v33 = *(v2 + 112);
    if (v33 >= 0x80)
    {
      v34 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v33) + 2;
      v3 = *(v2 + 148);
    }

    else
    {
      v34 = 3;
    }

    v5 = (v34 + v5);
    if ((v3 & 0x40000) == 0)
    {
LABEL_95:
      if ((v3 & 0x80000) == 0)
      {
        goto LABEL_96;
      }

      goto LABEL_113;
    }

LABEL_109:
    v35 = *(v2 + 116);
    if (v35 >= 0x80)
    {
      v36 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v35) + 2;
      v3 = *(v2 + 148);
    }

    else
    {
      v36 = 3;
    }

    v5 = (v36 + v5);
    if ((v3 & 0x80000) == 0)
    {
LABEL_96:
      if ((v3 & 0x100000) == 0)
      {
        goto LABEL_97;
      }

      goto LABEL_117;
    }

LABEL_113:
    v37 = *(v2 + 120);
    if (v37 >= 0x80)
    {
      v38 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v37) + 2;
      v3 = *(v2 + 148);
    }

    else
    {
      v38 = 3;
    }

    v5 = (v38 + v5);
    if ((v3 & 0x100000) == 0)
    {
LABEL_97:
      if ((v3 & 0x200000) == 0)
      {
        goto LABEL_98;
      }

      goto LABEL_121;
    }

LABEL_117:
    v39 = *(v2 + 124);
    if (v39 >= 0x80)
    {
      v40 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v39) + 2;
      v3 = *(v2 + 148);
    }

    else
    {
      v40 = 3;
    }

    v5 = (v40 + v5);
    if ((v3 & 0x200000) == 0)
    {
LABEL_98:
      if ((v3 & 0x400000) == 0)
      {
        goto LABEL_99;
      }

      goto LABEL_125;
    }

LABEL_121:
    v41 = *(v2 + 128);
    if (v41 >= 0x80)
    {
      v42 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v41) + 2;
      v3 = *(v2 + 148);
    }

    else
    {
      v42 = 3;
    }

    v5 = (v42 + v5);
    if ((v3 & 0x400000) == 0)
    {
LABEL_99:
      if ((v3 & 0x800000) == 0)
      {
        goto LABEL_134;
      }

LABEL_131:
      v45 = *(v2 + 136);
      if (!v45)
      {
        CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(0);
        v45 = *(CoreNavigation::CLP::LogEntry::PrivateData::StepCountEntry::default_instance_ + 136);
      }

      v5 = v5 + CoreNavigation::CLP::LogEntry::PrivateData::FalseStepDetectorState::ByteSize(v45) + 3;
      goto LABEL_134;
    }

LABEL_125:
    v43 = *(v2 + 132);
    if ((v43 & 0x80000000) != 0)
    {
      v44 = 12;
    }

    else if (v43 >= 0x80)
    {
      v44 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v43) + 2;
      v3 = *(v2 + 148);
    }

    else
    {
      v44 = 3;
    }

    v5 = (v44 + v5);
    if ((v3 & 0x800000) == 0)
    {
      goto LABEL_134;
    }

    goto LABEL_131;
  }

LABEL_134:
  *(v2 + 144) = v5;
  return v5;
}

void CoreNavigation::CLP::LogEntry::PrivateData::StepCountEntry::CheckTypeAndMergeFrom(std::string *this, std::string *lpsrc)
{
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  CoreNavigation::CLP::LogEntry::PrivateData::StepCountEntry::MergeFrom(this, lpsrc);
}

void CoreNavigation::CLP::LogEntry::PrivateData::StepCountEntry::CopyFrom(std::string *this, std::string *a2)
{
  if (a2 != this)
  {
    (*(this->__r_.__value_.__r.__words[0] + 32))(this);

    CoreNavigation::CLP::LogEntry::PrivateData::StepCountEntry::MergeFrom(this, a2);
  }
}

double CoreNavigation::CLP::LogEntry::PrivateData::StepCountEntry::Swap(CoreNavigation::CLP::LogEntry::PrivateData::StepCountEntry *this, CoreNavigation::CLP::LogEntry::PrivateData::StepCountEntry *a2)
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
    LODWORD(v4) = *(this + 10);
    *(this + 10) = *(a2 + 10);
    *(a2 + 10) = v4;
    v5 = *(this + 4);
    *(this + 4) = *(a2 + 4);
    *(a2 + 4) = v5;
    v6 = *(this + 6);
    *(this + 6) = *(a2 + 6);
    *(a2 + 6) = v6;
    LODWORD(v4) = *(this + 11);
    *(this + 11) = *(a2 + 11);
    *(a2 + 11) = v4;
    LODWORD(v4) = *(this + 18);
    *(this + 18) = *(a2 + 18);
    *(a2 + 18) = v4;
    v7 = *(this + 7);
    *(this + 7) = *(a2 + 7);
    *(a2 + 7) = v7;
    v8 = *(this + 8);
    *(this + 8) = *(a2 + 8);
    *(a2 + 8) = v8;
    result = *(this + 10);
    *(this + 10) = *(a2 + 10);
    *(a2 + 10) = result;
    LODWORD(v4) = *(this + 19);
    *(this + 19) = *(a2 + 19);
    *(a2 + 19) = v4;
    v10 = *(this + 11);
    *(this + 11) = *(a2 + 11);
    *(a2 + 11) = v10;
    LOBYTE(v10) = *(this + 96);
    *(this + 96) = *(a2 + 96);
    *(a2 + 96) = v10;
    LOBYTE(v10) = *(this + 97);
    *(this + 97) = *(a2 + 97);
    *(a2 + 97) = v10;
    v11 = *(this + 13);
    *(this + 13) = *(a2 + 13);
    *(a2 + 13) = v11;
    LODWORD(v11) = *(this + 25);
    *(this + 25) = *(a2 + 25);
    *(a2 + 25) = v11;
    LODWORD(v11) = *(this + 28);
    *(this + 28) = *(a2 + 28);
    *(a2 + 28) = v11;
    LODWORD(v11) = *(this + 29);
    *(this + 29) = *(a2 + 29);
    *(a2 + 29) = v11;
    LODWORD(v11) = *(this + 30);
    *(this + 30) = *(a2 + 30);
    *(a2 + 30) = v11;
    LODWORD(v11) = *(this + 31);
    *(this + 31) = *(a2 + 31);
    *(a2 + 31) = v11;
    LODWORD(v11) = *(this + 32);
    *(this + 32) = *(a2 + 32);
    *(a2 + 32) = v11;
    LODWORD(v11) = *(this + 33);
    *(this + 33) = *(a2 + 33);
    *(a2 + 33) = v11;
    v12 = *(this + 17);
    *(this + 17) = *(a2 + 17);
    *(a2 + 17) = v12;
    LODWORD(v12) = *(this + 37);
    *(this + 37) = *(a2 + 37);
    *(a2 + 37) = v12;
    LODWORD(v12) = *(this + 36);
    *(this + 36) = *(a2 + 36);
    *(a2 + 36) = v12;
  }

  return result;
}

double CoreNavigation::CLP::LogEntry::PrivateData::PedometerPathStraightness::SharedCtor(CoreNavigation::CLP::LogEntry::PrivateData::PedometerPathStraightness *this)
{
  *(this + 5) = 0;
  result = 0.0;
  *(this + 24) = 0u;
  *(this + 8) = 0u;
  return result;
}

CoreNavigation::CLP::LogEntry::PrivateData::PedometerPathStraightness *CoreNavigation::CLP::LogEntry::PrivateData::PedometerPathStraightness::PedometerPathStraightness(CoreNavigation::CLP::LogEntry::PrivateData::PedometerPathStraightness *this, const CoreNavigation::CLP::LogEntry::PrivateData::PedometerPathStraightness *a2)
{
  *this = &unk_1F4CDAEF0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 5) = 0;
  CoreNavigation::CLP::LogEntry::PrivateData::PedometerPathStraightness::MergeFrom(this, a2);
  return this;
}

double CoreNavigation::CLP::LogEntry::PrivateData::PedometerPathStraightness::MergeFrom(CoreNavigation::CLP::LogEntry::PrivateData::PedometerPathStraightness *this, const CoreNavigation::CLP::LogEntry::PrivateData::PedometerPathStraightness *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v10);
  }

  LOBYTE(v5) = *(a2 + 44);
  if (v5)
  {
    if (*(a2 + 44))
    {
      *(this + 11) |= 1u;
      v6 = *(this + 1);
      if (!v6)
      {
        operator new();
      }

      v7 = *(a2 + 1);
      if (!v7)
      {
        CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(this);
        v7 = *(CoreNavigation::CLP::LogEntry::PrivateData::PedometerPathStraightness::default_instance_ + 8);
      }

      result = CoreNavigation::CLP::LogEntry::PrivateData::TimeStamp::MergeFrom(v6, v7);
      v5 = *(a2 + 11);
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

      goto LABEL_16;
    }

LABEL_15:
    result = *(a2 + 3);
    *(this + 11) |= 4u;
    *(this + 3) = result;
    if ((*(a2 + 11) & 8) == 0)
    {
      return result;
    }

LABEL_16:
    *(this + 11) |= 8u;
    v8 = *(this + 4);
    if (!v8)
    {
      operator new();
    }

    v9 = *(a2 + 4);
    if (!v9)
    {
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(this);
      v9 = *(CoreNavigation::CLP::LogEntry::PrivateData::PedometerPathStraightness::default_instance_ + 32);
    }

    return CoreNavigation::CLP::LogEntry::PrivateData::TimeStamp::MergeFrom(v8, v9);
  }

  return result;
}

void sub_1D0CE4964(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void CoreNavigation::CLP::LogEntry::PrivateData::PedometerPathStraightness::~PedometerPathStraightness(CoreNavigation::CLP::LogEntry::PrivateData::PedometerPathStraightness *this)
{
  *this = &unk_1F4CDAEF0;
  CoreNavigation::CLP::LogEntry::PrivateData::PedometerPathStraightness::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  CoreNavigation::CLP::LogEntry::PrivateData::PedometerPathStraightness::~PedometerPathStraightness(this);

  JUMPOUT(0x1D387ECA0);
}

void CoreNavigation::CLP::LogEntry::PrivateData::PedometerPathStraightness::SharedDtor(CoreNavigation::CLP::LogEntry::PrivateData::PedometerPathStraightness *this)
{
  CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(this);
  if (CoreNavigation::CLP::LogEntry::PrivateData::PedometerPathStraightness::default_instance_ != this)
  {
    v2 = *(this + 1);
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }

    v3 = *(this + 4);
    if (v3)
    {
      v4 = *(*v3 + 8);

      v4();
    }
  }
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::PedometerPathStraightness::Clear(uint64_t this)
{
  LOBYTE(v1) = *(this + 44);
  if (v1)
  {
    if (*(this + 44))
    {
      v2 = *(this + 8);
      if (v2)
      {
        if (*(v2 + 36))
        {
          *(v2 + 8) = 0;
          *(v2 + 16) = 0;
          *(v2 + 24) = 0;
        }

        *(v2 + 36) = 0;
        v1 = *(this + 44);
      }
    }

    *(this + 16) = 0;
    *(this + 24) = 0;
    if ((v1 & 8) != 0)
    {
      v3 = *(this + 32);
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

  *(this + 44) = 0;
  return this;
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::PedometerPathStraightness::MergePartialFromCodedStream(CoreNavigation::CLP::LogEntry::PrivateData::PedometerPathStraightness *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
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

        if (v7 != 3)
        {
          if (v7 == 4 && v8 == 2)
          {
            v9 = *(this + 11);
            goto LABEL_42;
          }

          goto LABEL_22;
        }

        if (v8 != 1)
        {
          goto LABEL_22;
        }

LABEL_38:
        *v29 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v29) & 1) == 0)
        {
          return 0;
        }

        *(this + 3) = *v29;
        v9 = *(this + 11) | 4;
        *(this + 11) = v9;
        v20 = *(a2 + 1);
        if (v20 < *(a2 + 2) && *v20 == 34)
        {
          *(a2 + 1) = v20 + 1;
LABEL_42:
          *(this + 11) = v9 | 8;
          v21 = *(this + 4);
          if (!v21)
          {
            operator new();
          }

          v29[0] = 0;
          v22 = *(a2 + 1);
          if (v22 >= *(a2 + 2) || *v22 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v29))
            {
              return 0;
            }
          }

          else
          {
            v29[0] = *v22;
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
          if (!CoreNavigation::CLP::LogEntry::PrivateData::TimeStamp::MergePartialFromCodedStream(v21, a2, v25) || *(a2 + 36) != 1)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
          v26 = *(a2 + 14);
          v16 = __OFSUB__(v26, 1);
          v27 = v26 - 1;
          if (v27 < 0 == v16)
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
      }

      if (v7 != 1)
      {
        break;
      }

      if (v8 != 2)
      {
        goto LABEL_22;
      }

      *(this + 11) |= 1u;
      v10 = *(this + 1);
      if (!v10)
      {
        operator new();
      }

      v29[0] = 0;
      v11 = *(a2 + 1);
      if (v11 >= *(a2 + 2) || *v11 < 0)
      {
        if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v29))
        {
          return 0;
        }
      }

      else
      {
        v29[0] = *v11;
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
      if (!CoreNavigation::CLP::LogEntry::PrivateData::TimeStamp::MergePartialFromCodedStream(v10, a2, v14) || *(a2 + 36) != 1)
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
      if (v18 < *(a2 + 2) && *v18 == 17)
      {
        *(a2 + 1) = v18 + 1;
LABEL_34:
        *v29 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v29) & 1) == 0)
        {
          return 0;
        }

        *(this + 2) = *v29;
        *(this + 11) |= 2u;
        v19 = *(a2 + 1);
        if (v19 < *(a2 + 2) && *v19 == 25)
        {
          *(a2 + 1) = v19 + 1;
          goto LABEL_38;
        }
      }
    }

    if (v7 == 2 && v8 == 1)
    {
      goto LABEL_34;
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

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::PedometerPathStraightness::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 44);
  if (v6)
  {
    v7 = *(this + 8);
    if (!v7)
    {
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(this);
      v7 = *(CoreNavigation::CLP::LogEntry::PrivateData::PedometerPathStraightness::default_instance_ + 8);
    }

    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(1, v7, a2, a4);
    v6 = *(v5 + 44);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

LABEL_10:
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(3, a2, *(v5 + 24), a3);
      if ((*(v5 + 44) & 8) == 0)
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

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(2, a2, *(v5 + 16), a3);
  v6 = *(v5 + 44);
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
  v8 = *(v5 + 32);
  if (!v8)
  {
    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(this);
    v8 = *(CoreNavigation::CLP::LogEntry::PrivateData::PedometerPathStraightness::default_instance_ + 32);
  }

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(4, v8, a2, a4);
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::PedometerPathStraightness::ByteSize(CoreNavigation::CLP::LogEntry::PrivateData::PedometerPathStraightness *this)
{
  LOBYTE(v2) = *(this + 44);
  if (v2)
  {
    if (*(this + 44))
    {
      v5 = *(this + 1);
      if (!v5)
      {
        CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(this);
        v5 = *(CoreNavigation::CLP::LogEntry::PrivateData::PedometerPathStraightness::default_instance_ + 8);
      }

      v6 = *(v5 + 36);
      if (*(v5 + 36))
      {
        v7 = (v6 << 31 >> 31) & 9;
        if ((v6 & 2) != 0)
        {
          v7 += 9;
        }

        if ((v6 & 4) != 0)
        {
          v6 = v7 + 9;
        }

        else
        {
          v6 = v7;
        }
      }

      *(v5 + 32) = v6;
      v3 = v6 + 2;
      v2 = *(this + 11);
    }

    else
    {
      v3 = 0;
    }

    if ((v2 & 2) != 0)
    {
      v3 += 9;
    }

    if ((v2 & 4) != 0)
    {
      v4 = v3 + 9;
    }

    else
    {
      v4 = v3;
    }

    if ((v2 & 8) != 0)
    {
      v8 = *(this + 4);
      if (!v8)
      {
        CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(this);
        v8 = *(CoreNavigation::CLP::LogEntry::PrivateData::PedometerPathStraightness::default_instance_ + 32);
      }

      v9 = *(v8 + 36);
      v10 = (v9 << 31 >> 31) & 9;
      if ((v9 & 2) != 0)
      {
        v10 += 9;
      }

      if ((v9 & 4) != 0)
      {
        v10 += 9;
      }

      if (*(v8 + 36))
      {
        v11 = v10;
      }

      else
      {
        v11 = 0;
      }

      *(v8 + 32) = v11;
      v4 = (v4 + v11 + 2);
    }
  }

  else
  {
    v4 = 0;
  }

  *(this + 10) = v4;
  return v4;
}

double CoreNavigation::CLP::LogEntry::PrivateData::PedometerPathStraightness::CheckTypeAndMergeFrom(CoreNavigation::CLP::LogEntry::PrivateData::PedometerPathStraightness *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  return CoreNavigation::CLP::LogEntry::PrivateData::PedometerPathStraightness::MergeFrom(this, lpsrc);
}

double CoreNavigation::CLP::LogEntry::PrivateData::PedometerPathStraightness::CopyFrom(CoreNavigation::CLP::LogEntry::PrivateData::PedometerPathStraightness *this, const CoreNavigation::CLP::LogEntry::PrivateData::PedometerPathStraightness *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    return CoreNavigation::CLP::LogEntry::PrivateData::PedometerPathStraightness::MergeFrom(this, a2);
  }

  return result;
}

double CoreNavigation::CLP::LogEntry::PrivateData::PedometerPathStraightness::Swap(CoreNavigation::CLP::LogEntry::PrivateData::PedometerPathStraightness *this, CoreNavigation::CLP::LogEntry::PrivateData::PedometerPathStraightness *a2)
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
    v5 = *(this + 4);
    *(this + 4) = *(a2 + 4);
    *(a2 + 4) = v5;
    LODWORD(v5) = *(this + 11);
    *(this + 11) = *(a2 + 11);
    *(a2 + 11) = v5;
    LODWORD(v5) = *(this + 10);
    *(this + 10) = *(a2 + 10);
    *(a2 + 10) = v5;
  }

  return result;
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::StepCount::SharedCtor(uint64_t this)
{
  *(this + 8) = 0;
  *(this + 16) = 0;
  *(this + 32) = 0;
  *(this + 24) = 0;
  return this;
}

CoreNavigation::CLP::LogEntry::PrivateData::StepCount *CoreNavigation::CLP::LogEntry::PrivateData::StepCount::StepCount(CoreNavigation::CLP::LogEntry::PrivateData::StepCount *this, const CoreNavigation::CLP::LogEntry::PrivateData::StepCount *a2)
{
  *this = &unk_1F4CDAF68;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 3) = 0;
  *(this + 8) = 0;
  CoreNavigation::CLP::LogEntry::PrivateData::StepCount::MergeFrom(this, a2);
  return this;
}

void CoreNavigation::CLP::LogEntry::PrivateData::StepCount::MergeFrom(CoreNavigation::CLP::LogEntry::PrivateData::StepCount *this, const CoreNavigation::CLP::LogEntry::PrivateData::StepCount *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v10);
  }

  LOBYTE(v4) = *(a2 + 32);
  if (v4)
  {
    if (*(a2 + 32))
    {
      *(this + 8) |= 1u;
      v5 = *(this + 1);
      if (!v5)
      {
        operator new();
      }

      v6 = *(a2 + 1);
      if (!v6)
      {
        CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(this);
        v6 = *(CoreNavigation::CLP::LogEntry::PrivateData::StepCount::default_instance_ + 8);
      }

      CoreNavigation::CLP::LogEntry::PrivateData::TimeStamp::MergeFrom(v5, v6);
      v4 = *(a2 + 8);
      if ((v4 & 2) == 0)
      {
LABEL_6:
        if ((v4 & 4) == 0)
        {
          return;
        }

        goto LABEL_14;
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

LABEL_14:
    *(this + 8) |= 4u;
    v8 = *(this + 2);
    if (!v8)
    {
      operator new();
    }

    v9 = *(a2 + 2);
    if (!v9)
    {
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(this);
      v9 = *(CoreNavigation::CLP::LogEntry::PrivateData::StepCount::default_instance_ + 16);
    }

    CoreNavigation::CLP::LogEntry::PrivateData::StepCountEntry::MergeFrom(v8, v9);
  }
}

void sub_1D0CE5518(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void CoreNavigation::CLP::LogEntry::PrivateData::StepCount::~StepCount(CoreNavigation::CLP::LogEntry::PrivateData::StepCount *this)
{
  *this = &unk_1F4CDAF68;
  CoreNavigation::CLP::LogEntry::PrivateData::StepCount::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  CoreNavigation::CLP::LogEntry::PrivateData::StepCount::~StepCount(this);

  JUMPOUT(0x1D387ECA0);
}

void CoreNavigation::CLP::LogEntry::PrivateData::StepCount::SharedDtor(CoreNavigation::CLP::LogEntry::PrivateData::StepCount *this)
{
  CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(this);
  if (CoreNavigation::CLP::LogEntry::PrivateData::StepCount::default_instance_ != this)
  {
    v2 = *(this + 1);
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }

    v3 = *(this + 2);
    if (v3)
    {
      v4 = *(*v3 + 8);

      v4();
    }
  }
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::StepCount::Clear(uint64_t this)
{
  v1 = this;
  LOBYTE(v2) = *(this + 32);
  if (v2)
  {
    if (*(this + 32))
    {
      v3 = *(this + 8);
      if (v3)
      {
        if (*(v3 + 36))
        {
          *(v3 + 8) = 0;
          *(v3 + 16) = 0;
          *(v3 + 24) = 0;
        }

        *(v3 + 36) = 0;
        v2 = *(this + 32);
      }
    }

    *(this + 24) = 0;
    if ((v2 & 4) != 0)
    {
      this = *(this + 16);
      if (this)
      {
        this = CoreNavigation::CLP::LogEntry::PrivateData::StepCountEntry::Clear(this);
      }
    }
  }

  *(v1 + 32) = 0;
  return this;
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::StepCount::MergePartialFromCodedStream(CoreNavigation::CLP::LogEntry::PrivateData::StepCount *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
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
          v13 = *(this + 8);
          goto LABEL_39;
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

      *(this + 8) |= 1u;
      v9 = *(this + 1);
      if (!v9)
      {
        operator new();
      }

      v32 = 0;
      v10 = *(a2 + 1);
      if (v10 >= *(a2 + 2) || *v10 < 0)
      {
        if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v32))
        {
          return 0;
        }
      }

      else
      {
        v32 = *v10;
        *(a2 + 1) = v10 + 1;
      }

      v14 = *(a2 + 14);
      v15 = *(a2 + 15);
      *(a2 + 14) = v14 + 1;
      if (v14 >= v15)
      {
        return 0;
      }

      wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
      if (!CoreNavigation::CLP::LogEntry::PrivateData::TimeStamp::MergePartialFromCodedStream(v9, a2, v16) || *(a2 + 36) != 1)
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
      v11 = *(a2 + 2);
      if (v20 < v11 && *v20 == 16)
      {
        v12 = v20 + 1;
        *(a2 + 1) = v12;
LABEL_31:
        v31 = 0;
        if (v12 >= v11 || (v21 = *v12, (v21 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v31);
          if (!result)
          {
            return result;
          }

          v21 = v31;
          v22 = *(a2 + 1);
          v11 = *(a2 + 2);
        }

        else
        {
          v22 = v12 + 1;
          *(a2 + 1) = v22;
        }

        *(this + 6) = v21;
        v13 = *(this + 8) | 2;
        *(this + 8) = v13;
        if (v22 < v11 && *v22 == 26)
        {
          *(a2 + 1) = v22 + 1;
LABEL_39:
          *(this + 8) = v13 | 4;
          v24 = *(this + 2);
          if (!v24)
          {
            operator new();
          }

          v33 = 0;
          v25 = *(a2 + 1);
          if (v25 >= *(a2 + 2) || *v25 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v33))
            {
              return 0;
            }
          }

          else
          {
            v33 = *v25;
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
          if (!CoreNavigation::CLP::LogEntry::PrivateData::StepCountEntry::MergePartialFromCodedStream(v24, a2, v28) || *(a2 + 36) != 1)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
          v29 = *(a2 + 14);
          v18 = __OFSUB__(v29, 1);
          v30 = v29 - 1;
          if (v30 < 0 == v18)
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
    }

    if ((TagFallback & 7) == 0)
    {
      v12 = *(a2 + 1);
      v11 = *(a2 + 2);
      goto LABEL_31;
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

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::StepCount::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 32);
  if ((v6 & 1) == 0)
  {
    if ((v6 & 2) == 0)
    {
      goto LABEL_3;
    }

LABEL_8:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(2, *(v5 + 24), a2, a4);
    if ((*(v5 + 32) & 4) == 0)
    {
      return this;
    }

    goto LABEL_9;
  }

  v7 = *(this + 8);
  if (!v7)
  {
    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(this);
    v7 = *(CoreNavigation::CLP::LogEntry::PrivateData::StepCount::default_instance_ + 8);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(1, v7, a2, a4);
  v6 = *(v5 + 32);
  if ((v6 & 2) != 0)
  {
    goto LABEL_8;
  }

LABEL_3:
  if ((v6 & 4) == 0)
  {
    return this;
  }

LABEL_9:
  v8 = *(v5 + 16);
  if (!v8)
  {
    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(this);
    v8 = *(CoreNavigation::CLP::LogEntry::PrivateData::StepCount::default_instance_ + 16);
  }

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(3, v8, a2, a4);
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::StepCount::ByteSize(CoreNavigation::CLP::LogEntry::PrivateData::StepCount *this, unsigned int a2)
{
  LOBYTE(v3) = *(this + 32);
  if (!v3)
  {
    v4 = 0;
    goto LABEL_28;
  }

  if (*(this + 32))
  {
    v5 = *(this + 1);
    if (!v5)
    {
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(this);
      v5 = *(CoreNavigation::CLP::LogEntry::PrivateData::StepCount::default_instance_ + 8);
    }

    v6 = *(v5 + 36);
    if (*(v5 + 36))
    {
      v7 = (v6 << 31 >> 31) & 9;
      if ((v6 & 2) != 0)
      {
        v7 += 9;
      }

      if ((v6 & 4) != 0)
      {
        v6 = v7 + 9;
      }

      else
      {
        v6 = v7;
      }
    }

    *(v5 + 32) = v6;
    v4 = (v6 + 2);
    v3 = *(this + 8);
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

  v8 = *(this + 6);
  if ((v8 & 0x80000000) != 0)
  {
    v9 = 11;
  }

  else if (v8 >= 0x80)
  {
    v9 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v8) + 1;
    v3 = *(this + 8);
  }

  else
  {
    v9 = 2;
  }

  v4 = (v9 + v4);
LABEL_21:
  if ((v3 & 4) != 0)
  {
    v10 = *(this + 2);
    if (!v10)
    {
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(0);
      v10 = *(CoreNavigation::CLP::LogEntry::PrivateData::StepCount::default_instance_ + 16);
    }

    v11 = CoreNavigation::CLP::LogEntry::PrivateData::StepCountEntry::ByteSize(v10, a2);
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

LABEL_28:
  *(this + 7) = v4;
  return v4;
}

void CoreNavigation::CLP::LogEntry::PrivateData::StepCount::CheckTypeAndMergeFrom(CoreNavigation::CLP::LogEntry::PrivateData::StepCount *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  CoreNavigation::CLP::LogEntry::PrivateData::StepCount::MergeFrom(this, lpsrc);
}

void CoreNavigation::CLP::LogEntry::PrivateData::StepCount::CopyFrom(CoreNavigation::CLP::LogEntry::PrivateData::StepCount *this, const CoreNavigation::CLP::LogEntry::PrivateData::StepCount *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    CoreNavigation::CLP::LogEntry::PrivateData::StepCount::MergeFrom(this, a2);
  }
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::StepCount::Swap(uint64_t this, CoreNavigation::CLP::LogEntry::PrivateData::StepCount *a2)
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

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::MotionTypeVector3::SharedCtor(uint64_t this)
{
  *(this + 8) = 0;
  *(this + 16) = 0;
  *(this + 24) = 0;
  return this;
}

CoreNavigation::CLP::LogEntry::PrivateData::MotionTypeVector3 *CoreNavigation::CLP::LogEntry::PrivateData::MotionTypeVector3::MotionTypeVector3(CoreNavigation::CLP::LogEntry::PrivateData::MotionTypeVector3 *this, const CoreNavigation::CLP::LogEntry::PrivateData::MotionTypeVector3 *a2)
{
  *(this + 1) = 0;
  *(this + 2) = 0;
  *this = &unk_1F4CDAFE0;
  *(this + 6) = 0;
  CoreNavigation::CLP::LogEntry::PrivateData::MotionTypeVector3::MergeFrom(this, a2);
  return this;
}

float CoreNavigation::CLP::LogEntry::PrivateData::MotionTypeVector3::MergeFrom(CoreNavigation::CLP::LogEntry::PrivateData::MotionTypeVector3 *this, const CoreNavigation::CLP::LogEntry::PrivateData::MotionTypeVector3 *a2)
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

void sub_1D0CE5FB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void CoreNavigation::CLP::LogEntry::PrivateData::MotionTypeVector3::~MotionTypeVector3(CoreNavigation::CLP::LogEntry::PrivateData::MotionTypeVector3 *this)
{
  *this = &unk_1F4CDAFE0;
  CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  CoreNavigation::CLP::LogEntry::PrivateData::MotionTypeVector3::~MotionTypeVector3(this);

  JUMPOUT(0x1D387ECA0);
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::MotionTypeVector3::Clear(uint64_t this)
{
  if (*(this + 24))
  {
    *(this + 8) = 0;
    *(this + 16) = 0;
  }

  *(this + 24) = 0;
  return this;
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::MotionTypeVector3::MergePartialFromCodedStream(CoreNavigation::CLP::LogEntry::PrivateData::MotionTypeVector3 *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
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

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::MotionTypeVector3::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3)
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

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::MotionTypeVector3::ByteSize(CoreNavigation::CLP::LogEntry::PrivateData::MotionTypeVector3 *this)
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

float CoreNavigation::CLP::LogEntry::PrivateData::MotionTypeVector3::CheckTypeAndMergeFrom(CoreNavigation::CLP::LogEntry::PrivateData::MotionTypeVector3 *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  return CoreNavigation::CLP::LogEntry::PrivateData::MotionTypeVector3::MergeFrom(this, lpsrc);
}

float CoreNavigation::CLP::LogEntry::PrivateData::MotionTypeVector3::CopyFrom(CoreNavigation::CLP::LogEntry::PrivateData::MotionTypeVector3 *this, const CoreNavigation::CLP::LogEntry::PrivateData::MotionTypeVector3 *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    return CoreNavigation::CLP::LogEntry::PrivateData::MotionTypeVector3::MergeFrom(this, a2);
  }

  return result;
}

float CoreNavigation::CLP::LogEntry::PrivateData::MotionTypeVector3::Swap(CoreNavigation::CLP::LogEntry::PrivateData::MotionTypeVector3 *this, CoreNavigation::CLP::LogEntry::PrivateData::MotionTypeVector3 *a2)
{
  if (a2 != this)
  {
    v2 = *(this + 2);
    *(this + 2) = *(a2 + 2);
    *(a2 + 2) = v2;
    v3 = *(this + 3);
    *(this + 3) = *(a2 + 3);
    *(a2 + 3) = v3;
    result = *(this + 4);
    *(this + 4) = *(a2 + 4);
    *(a2 + 4) = result;
    v5 = *(this + 6);
    *(this + 6) = *(a2 + 6);
    *(a2 + 6) = v5;
    v6 = *(this + 5);
    *(this + 5) = *(a2 + 5);
    *(a2 + 5) = v6;
  }

  return result;
}

double CoreNavigation::CLP::LogEntry::PrivateData::MotionTypeDoubleVector4::SharedCtor(CoreNavigation::CLP::LogEntry::PrivateData::MotionTypeDoubleVector4 *this)
{
  *(this + 5) = 0;
  result = 0.0;
  *(this + 24) = 0u;
  *(this + 8) = 0u;
  return result;
}

CoreNavigation::CLP::LogEntry::PrivateData::MotionTypeDoubleVector4 *CoreNavigation::CLP::LogEntry::PrivateData::MotionTypeDoubleVector4::MotionTypeDoubleVector4(CoreNavigation::CLP::LogEntry::PrivateData::MotionTypeDoubleVector4 *this, const CoreNavigation::CLP::LogEntry::PrivateData::MotionTypeDoubleVector4 *a2)
{
  *this = &unk_1F4CDB058;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 5) = 0;
  CoreNavigation::CLP::LogEntry::PrivateData::MotionTypeDoubleVector4::MergeFrom(this, a2);
  return this;
}

double CoreNavigation::CLP::LogEntry::PrivateData::MotionTypeDoubleVector4::MergeFrom(CoreNavigation::CLP::LogEntry::PrivateData::MotionTypeDoubleVector4 *this, const CoreNavigation::CLP::LogEntry::PrivateData::MotionTypeDoubleVector4 *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v6);
  }

  LOBYTE(v5) = *(a2 + 44);
  if (v5)
  {
    if (*(a2 + 44))
    {
      result = *(a2 + 1);
      *(this + 11) |= 1u;
      *(this + 1) = result;
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

void sub_1D0CE6698(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void CoreNavigation::CLP::LogEntry::PrivateData::MotionTypeDoubleVector4::~MotionTypeDoubleVector4(CoreNavigation::CLP::LogEntry::PrivateData::MotionTypeDoubleVector4 *this)
{
  *this = &unk_1F4CDB058;
  CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  CoreNavigation::CLP::LogEntry::PrivateData::MotionTypeDoubleVector4::~MotionTypeDoubleVector4(this);

  JUMPOUT(0x1D387ECA0);
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::MotionTypeDoubleVector4::Clear(uint64_t this)
{
  if (*(this + 44))
  {
    *(this + 24) = 0u;
    *(this + 8) = 0u;
  }

  *(this + 44) = 0;
  return this;
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::MotionTypeDoubleVector4::MergePartialFromCodedStream(CoreNavigation::CLP::LogEntry::PrivateData::MotionTypeDoubleVector4 *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
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
          if (v8 == 1)
          {
            goto LABEL_28;
          }

          goto LABEL_25;
        }

        if (v7 != 4 || v8 != 1)
        {
          goto LABEL_25;
        }

LABEL_32:
        v13 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, &v13) & 1) == 0)
        {
          return 0;
        }

        *(this + 4) = v13;
        *(this + 11) |= 8u;
        if (*(a2 + 1) == *(a2 + 2) && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
        {
          *(a2 + 8) = 0;
          result = 1;
          *(a2 + 36) = 1;
          return result;
        }
      }

      if (v7 != 1)
      {
        break;
      }

      if (v8 != 1)
      {
        goto LABEL_25;
      }

      v13 = 0;
      if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, &v13) & 1) == 0)
      {
        return 0;
      }

      *(this + 1) = v13;
      *(this + 11) |= 1u;
      v9 = *(a2 + 1);
      if (v9 < *(a2 + 2) && *v9 == 17)
      {
        *(a2 + 1) = v9 + 1;
LABEL_20:
        v13 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, &v13) & 1) == 0)
        {
          return 0;
        }

        *(this + 2) = v13;
        *(this + 11) |= 2u;
        v10 = *(a2 + 1);
        if (v10 < *(a2 + 2) && *v10 == 25)
        {
          *(a2 + 1) = v10 + 1;
LABEL_28:
          v13 = 0;
          if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, &v13) & 1) == 0)
          {
            return 0;
          }

          *(this + 3) = v13;
          *(this + 11) |= 4u;
          v11 = *(a2 + 1);
          if (v11 < *(a2 + 2) && *v11 == 33)
          {
            *(a2 + 1) = v11 + 1;
            goto LABEL_32;
          }
        }
      }
    }

    if (v7 == 2 && v8 == 1)
    {
      goto LABEL_20;
    }

LABEL_25:
    if (v8 == 4)
    {
      return 1;
    }
  }

  while ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(a2, TagFallback) & 1) != 0);
  return 0;
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::MotionTypeDoubleVector4::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3)
{
  v4 = this;
  v5 = *(this + 44);
  if (v5)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(1, a2, *(this + 8), a3);
    v5 = *(v4 + 44);
    if ((v5 & 2) == 0)
    {
LABEL_3:
      if ((v5 & 4) == 0)
      {
        goto LABEL_4;
      }

LABEL_8:
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(3, a2, *(v4 + 24), a3);
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

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(2, a2, *(v4 + 16), a3);
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
  v6 = *(v4 + 32);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(4, a2, v6, a3);
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::MotionTypeDoubleVector4::ByteSize(CoreNavigation::CLP::LogEntry::PrivateData::MotionTypeDoubleVector4 *this)
{
  v1 = *(this + 44);
  if (*(this + 44))
  {
    v2 = ((v1 << 31) >> 31) & 9;
    if ((v1 & 2) != 0)
    {
      v2 += 9;
    }

    if ((v1 & 4) != 0)
    {
      v2 += 9;
    }

    if ((v1 & 8) != 0)
    {
      v1 = v2 + 9;
    }

    else
    {
      v1 = v2;
    }
  }

  *(this + 10) = v1;
  return v1;
}

double CoreNavigation::CLP::LogEntry::PrivateData::MotionTypeDoubleVector4::CheckTypeAndMergeFrom(CoreNavigation::CLP::LogEntry::PrivateData::MotionTypeDoubleVector4 *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  return CoreNavigation::CLP::LogEntry::PrivateData::MotionTypeDoubleVector4::MergeFrom(this, lpsrc);
}

double CoreNavigation::CLP::LogEntry::PrivateData::MotionTypeDoubleVector4::CopyFrom(CoreNavigation::CLP::LogEntry::PrivateData::MotionTypeDoubleVector4 *this, const CoreNavigation::CLP::LogEntry::PrivateData::MotionTypeDoubleVector4 *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    return CoreNavigation::CLP::LogEntry::PrivateData::MotionTypeDoubleVector4::MergeFrom(this, a2);
  }

  return result;
}

double CoreNavigation::CLP::LogEntry::PrivateData::MotionTypeDoubleVector4::Swap(CoreNavigation::CLP::LogEntry::PrivateData::MotionTypeDoubleVector4 *this, CoreNavigation::CLP::LogEntry::PrivateData::MotionTypeDoubleVector4 *a2)
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
    v6 = *(this + 11);
    *(this + 11) = *(a2 + 11);
    *(a2 + 11) = v6;
    v7 = *(this + 10);
    *(this + 10) = *(a2 + 10);
    *(a2 + 10) = v7;
  }

  return result;
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::MotionTypeCompass::SharedCtor(uint64_t this)
{
  *(this + 8) = 0;
  *(this + 16) = 0;
  *(this + 24) = 0;
  *(this + 32) = 0xFFFFFFFF00000000;
  *(this + 40) = 0;
  *(this + 68) = 0;
  *(this + 60) = 0;
  *(this + 52) = 0;
  *(this + 44) = 0;
  return this;
}

CoreNavigation::CLP::LogEntry::PrivateData::MotionTypeCompass *CoreNavigation::CLP::LogEntry::PrivateData::MotionTypeCompass::MotionTypeCompass(CoreNavigation::CLP::LogEntry::PrivateData::MotionTypeCompass *this, const CoreNavigation::CLP::LogEntry::PrivateData::MotionTypeCompass *a2)
{
  *this = &unk_1F4CDB0D0;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 3) = 0;
  *(this + 4) = 0xFFFFFFFF00000000;
  *(this + 40) = 0;
  *(this + 17) = 0;
  *(this + 52) = 0;
  *(this + 44) = 0;
  *(this + 60) = 0;
  CoreNavigation::CLP::LogEntry::PrivateData::MotionTypeCompass::MergeFrom(this, a2);
  return this;
}

double CoreNavigation::CLP::LogEntry::PrivateData::MotionTypeCompass::MergeFrom(CoreNavigation::CLP::LogEntry::PrivateData::MotionTypeCompass *this, const CoreNavigation::CLP::LogEntry::PrivateData::MotionTypeCompass *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v14);
  }

  v5 = *(a2 + 17);
  if (v5)
  {
    if (v5)
    {
      *(this + 17) |= 1u;
      v7 = *(this + 1);
      if (!v7)
      {
        operator new();
      }

      v8 = *(a2 + 1);
      if (!v8)
      {
        CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(this);
        v8 = *(CoreNavigation::CLP::LogEntry::PrivateData::MotionTypeCompass::default_instance_ + 8);
      }

      *&result = CoreNavigation::CLP::LogEntry::PrivateData::MotionTypeVector3::MergeFrom(v7, v8);
      v5 = *(a2 + 17);
      if ((v5 & 2) == 0)
      {
LABEL_6:
        if ((v5 & 4) == 0)
        {
          goto LABEL_7;
        }

        goto LABEL_29;
      }
    }

    else if ((v5 & 2) == 0)
    {
      goto LABEL_6;
    }

    *(this + 17) |= 2u;
    v9 = *(this + 2);
    if (!v9)
    {
      operator new();
    }

    v10 = *(a2 + 2);
    if (!v10)
    {
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(this);
      v10 = *(CoreNavigation::CLP::LogEntry::PrivateData::MotionTypeCompass::default_instance_ + 16);
    }

    *&result = CoreNavigation::CLP::LogEntry::PrivateData::MotionTypeVector3::MergeFrom(v9, v10);
    v5 = *(a2 + 17);
    if ((v5 & 4) == 0)
    {
LABEL_7:
      if ((v5 & 8) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_30;
    }

LABEL_29:
    LODWORD(result) = *(a2 + 6);
    *(this + 17) |= 4u;
    *(this + 6) = LODWORD(result);
    v5 = *(a2 + 17);
    if ((v5 & 8) == 0)
    {
LABEL_8:
      if ((v5 & 0x10) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_31;
    }

LABEL_30:
    LODWORD(result) = *(a2 + 7);
    *(this + 17) |= 8u;
    *(this + 7) = LODWORD(result);
    v5 = *(a2 + 17);
    if ((v5 & 0x10) == 0)
    {
LABEL_9:
      if ((v5 & 0x20) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_32;
    }

LABEL_31:
    LODWORD(result) = *(a2 + 8);
    *(this + 17) |= 0x10u;
    *(this + 8) = LODWORD(result);
    v5 = *(a2 + 17);
    if ((v5 & 0x20) == 0)
    {
LABEL_10:
      if ((v5 & 0x40) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_11;
    }

LABEL_32:
    v11 = *(a2 + 9);
    if ((v11 + 1) >= 8)
    {
      __assert_rtn("set_calibration_level", "CoreNavigationCLPPrivateDataShared.pb.h", 23955, "::CoreNavigation::CLP::LogEntry::PrivateData::MotionTypeCompassCalibrationLevel_IsValid(value)");
    }

    *(this + 17) |= 0x20u;
    *(this + 9) = v11;
    v5 = *(a2 + 17);
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_12;
    }

LABEL_11:
    v6 = *(a2 + 40);
    *(this + 17) |= 0x40u;
    *(this + 40) = v6;
    v5 = *(a2 + 17);
LABEL_12:
    if ((v5 & 0x80) != 0)
    {
      LODWORD(result) = *(a2 + 11);
      *(this + 17) |= 0x80u;
      *(this + 11) = LODWORD(result);
      v5 = *(a2 + 17);
    }
  }

  if ((v5 & 0xFF00) == 0)
  {
    return result;
  }

  if ((v5 & 0x100) == 0)
  {
    if ((v5 & 0x200) == 0)
    {
      goto LABEL_17;
    }

LABEL_36:
    LODWORD(result) = *(a2 + 13);
    *(this + 17) |= 0x200u;
    *(this + 13) = LODWORD(result);
    if ((*(a2 + 17) & 0x400) == 0)
    {
      return result;
    }

    goto LABEL_37;
  }

  LODWORD(result) = *(a2 + 12);
  *(this + 17) |= 0x100u;
  *(this + 12) = LODWORD(result);
  v5 = *(a2 + 17);
  if ((v5 & 0x200) != 0)
  {
    goto LABEL_36;
  }

LABEL_17:
  if ((v5 & 0x400) == 0)
  {
    return result;
  }

LABEL_37:
  *(this + 17) |= 0x400u;
  v12 = *(this + 7);
  if (!v12)
  {
    operator new();
  }

  v13 = *(a2 + 7);
  if (!v13)
  {
    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(this);
    v13 = *(CoreNavigation::CLP::LogEntry::PrivateData::MotionTypeCompass::default_instance_ + 56);
  }

  return CoreNavigation::CLP::LogEntry::PrivateData::MotionTypeDoubleVector4::MergeFrom(v12, v13);
}

void sub_1D0CE70A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void CoreNavigation::CLP::LogEntry::PrivateData::MotionTypeCompass::~MotionTypeCompass(CoreNavigation::CLP::LogEntry::PrivateData::MotionTypeCompass *this)
{
  *this = &unk_1F4CDB0D0;
  CoreNavigation::CLP::LogEntry::PrivateData::MotionTypeCompass::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  CoreNavigation::CLP::LogEntry::PrivateData::MotionTypeCompass::~MotionTypeCompass(this);

  JUMPOUT(0x1D387ECA0);
}

void CoreNavigation::CLP::LogEntry::PrivateData::MotionTypeCompass::SharedDtor(CoreNavigation::CLP::LogEntry::PrivateData::MotionTypeCompass *this)
{
  CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(this);
  if (CoreNavigation::CLP::LogEntry::PrivateData::MotionTypeCompass::default_instance_ != this)
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

    v4 = *(this + 7);
    if (v4)
    {
      v5 = *(*v4 + 8);

      v5();
    }
  }
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::MotionTypeCompass::Clear(uint64_t this)
{
  v1 = *(this + 68);
  if (v1)
  {
    if (v1)
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
        v1 = *(this + 68);
      }
    }

    if ((v1 & 2) != 0)
    {
      v3 = *(this + 16);
      if (v3)
      {
        if (*(v3 + 24))
        {
          *(v3 + 8) = 0;
          *(v3 + 16) = 0;
        }

        *(v3 + 24) = 0;
        v1 = *(this + 68);
      }
    }

    *(this + 24) = 0;
    *(this + 32) = 0xFFFFFFFF00000000;
    *(this + 40) = 0;
    *(this + 44) = 0;
  }

  if ((v1 & 0xFF00) != 0)
  {
    *(this + 48) = 0;
    if ((v1 & 0x400) != 0)
    {
      v4 = *(this + 56);
      if (v4)
      {
        if (*(v4 + 44))
        {
          *(v4 + 24) = 0u;
          *(v4 + 8) = 0u;
        }

        *(v4 + 44) = 0;
      }
    }
  }

  *(this + 68) = 0;
  return this;
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::MotionTypeCompass::MergePartialFromCodedStream(CoreNavigation::CLP::LogEntry::PrivateData::MotionTypeCompass *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
{
  while (1)
  {
    do
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
            if (TagFallback >> 3 > 5)
            {
              break;
            }

            if (TagFallback >> 3 <= 2)
            {
              if (v7 != 1)
              {
                if (v7 != 2 || v8 != 2)
                {
                  goto LABEL_45;
                }

                goto LABEL_57;
              }

              if (v8 != 2)
              {
                goto LABEL_45;
              }

              *(this + 17) |= 1u;
              v10 = *(this + 1);
              if (!v10)
              {
                operator new();
              }

              v49 = 0;
              v11 = *(a2 + 1);
              if (v11 >= *(a2 + 2) || *v11 < 0)
              {
                if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v49))
                {
                  return 0;
                }
              }

              else
              {
                v49 = *v11;
                *(a2 + 1) = v11 + 1;
              }

              v16 = *(a2 + 14);
              v17 = *(a2 + 15);
              *(a2 + 14) = v16 + 1;
              if (v16 >= v17)
              {
                return 0;
              }

              wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
              if (!CoreNavigation::CLP::LogEntry::PrivateData::MotionTypeVector3::MergePartialFromCodedStream(v10, a2, v18) || *(a2 + 36) != 1)
              {
                return 0;
              }

              wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
              v19 = *(a2 + 14);
              v20 = __OFSUB__(v19, 1);
              v21 = v19 - 1;
              if (v21 < 0 == v20)
              {
                *(a2 + 14) = v21;
              }

              v22 = *(a2 + 1);
              if (v22 < *(a2 + 2) && *v22 == 18)
              {
                *(a2 + 1) = v22 + 1;
LABEL_57:
                *(this + 17) |= 2u;
                v23 = *(this + 2);
                if (!v23)
                {
                  operator new();
                }

                v49 = 0;
                v24 = *(a2 + 1);
                if (v24 >= *(a2 + 2) || *v24 < 0)
                {
                  if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v49))
                  {
                    return 0;
                  }
                }

                else
                {
                  v49 = *v24;
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
                if (!CoreNavigation::CLP::LogEntry::PrivateData::MotionTypeVector3::MergePartialFromCodedStream(v23, a2, v27) || *(a2 + 36) != 1)
                {
                  return 0;
                }

                wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
                v28 = *(a2 + 14);
                v20 = __OFSUB__(v28, 1);
                v29 = v28 - 1;
                if (v29 < 0 == v20)
                {
                  *(a2 + 14) = v29;
                }

                v30 = *(a2 + 1);
                if (v30 < *(a2 + 2) && *v30 == 29)
                {
                  *(a2 + 1) = v30 + 1;
LABEL_71:
                  v49 = 0;
                  if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a2, &v49) & 1) == 0)
                  {
                    return 0;
                  }

                  *(this + 6) = v49;
                  *(this + 17) |= 4u;
                  v31 = *(a2 + 1);
                  if (v31 < *(a2 + 2) && *v31 == 37)
                  {
                    *(a2 + 1) = v31 + 1;
                    goto LABEL_75;
                  }
                }
              }
            }

            else
            {
              if (v7 == 3)
              {
                if (v8 != 5)
                {
                  goto LABEL_45;
                }

                goto LABEL_71;
              }

              if (v7 != 4)
              {
                if (v7 != 5 || v8 != 5)
                {
                  goto LABEL_45;
                }

                goto LABEL_79;
              }

              if (v8 != 5)
              {
                goto LABEL_45;
              }

LABEL_75:
              v49 = 0;
              if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a2, &v49) & 1) == 0)
              {
                return 0;
              }

              *(this + 7) = v49;
              *(this + 17) |= 8u;
              v32 = *(a2 + 1);
              if (v32 < *(a2 + 2) && *v32 == 45)
              {
                *(a2 + 1) = v32 + 1;
LABEL_79:
                v49 = 0;
                if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a2, &v49) & 1) == 0)
                {
                  return 0;
                }

                *(this + 8) = v49;
                *(this + 17) |= 0x10u;
                v33 = *(a2 + 1);
                v14 = *(a2 + 2);
                if (v33 < v14 && *v33 == 48)
                {
                  v15 = v33 + 1;
                  *(a2 + 1) = v15;
LABEL_83:
                  v49 = 0;
                  if (v15 >= v14 || (v34 = *v15, (v34 & 0x80000000) != 0))
                  {
                    result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v49);
                    if (!result)
                    {
                      return result;
                    }

                    v34 = v49;
                  }

                  else
                  {
                    *(a2 + 1) = v15 + 1;
                  }

                  if (v34 + 1 <= 7)
                  {
                    *(this + 17) |= 0x20u;
                    *(this + 9) = v34;
                  }

                  v36 = *(a2 + 1);
                  v12 = *(a2 + 2);
                  if (v36 < v12 && *v36 == 56)
                  {
                    v13 = v36 + 1;
                    *(a2 + 1) = v13;
                    goto LABEL_93;
                  }
                }
              }
            }
          }

          if (TagFallback >> 3 > 8)
          {
            break;
          }

          if (v7 == 6)
          {
            if ((TagFallback & 7) != 0)
            {
              goto LABEL_45;
            }

            v15 = *(a2 + 1);
            v14 = *(a2 + 2);
            goto LABEL_83;
          }

          if (v7 == 7)
          {
            if ((TagFallback & 7) != 0)
            {
              goto LABEL_45;
            }

            v13 = *(a2 + 1);
            v12 = *(a2 + 2);
LABEL_93:
            v49 = 0;
            if (v13 >= v12 || (v37 = *v13, (v37 & 0x80000000) != 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v49);
              if (!result)
              {
                return result;
              }

              v37 = v49;
              v38 = *(a2 + 1);
              v12 = *(a2 + 2);
            }

            else
            {
              v38 = v13 + 1;
              *(a2 + 1) = v38;
            }

            *(this + 40) = v37 != 0;
            *(this + 17) |= 0x40u;
            if (v38 < v12 && *v38 == 69)
            {
              *(a2 + 1) = v38 + 1;
LABEL_101:
              v49 = 0;
              if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a2, &v49) & 1) == 0)
              {
                return 0;
              }

              *(this + 11) = v49;
              *(this + 17) |= 0x80u;
              v39 = *(a2 + 1);
              if (v39 < *(a2 + 2) && *v39 == 77)
              {
                *(a2 + 1) = v39 + 1;
                goto LABEL_105;
              }
            }
          }

          else
          {
            if (v7 == 8 && v8 == 5)
            {
              goto LABEL_101;
            }

LABEL_45:
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

        if (v7 != 9)
        {
          break;
        }

        if (v8 != 5)
        {
          goto LABEL_45;
        }

LABEL_105:
        v49 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a2, &v49) & 1) == 0)
        {
          return 0;
        }

        *(this + 12) = v49;
        *(this + 17) |= 0x100u;
        v40 = *(a2 + 1);
        if (v40 < *(a2 + 2) && *v40 == 85)
        {
          *(a2 + 1) = v40 + 1;
          goto LABEL_109;
        }
      }

      if (v7 != 10)
      {
        if (v7 == 11 && v8 == 2)
        {
          v9 = *(this + 17);
          goto LABEL_113;
        }

        goto LABEL_45;
      }

      if (v8 != 5)
      {
        goto LABEL_45;
      }

LABEL_109:
      v49 = 0;
      if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a2, &v49) & 1) == 0)
      {
        return 0;
      }

      *(this + 13) = v49;
      v9 = *(this + 17) | 0x200;
      *(this + 17) = v9;
      v41 = *(a2 + 1);
    }

    while (v41 >= *(a2 + 2) || *v41 != 90);
    *(a2 + 1) = v41 + 1;
LABEL_113:
    *(this + 17) = v9 | 0x400;
    v42 = *(this + 7);
    if (!v42)
    {
      operator new();
    }

    v49 = 0;
    v43 = *(a2 + 1);
    if (v43 >= *(a2 + 2) || *v43 < 0)
    {
      if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v49))
      {
        return 0;
      }
    }

    else
    {
      v49 = *v43;
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
    if (!CoreNavigation::CLP::LogEntry::PrivateData::MotionTypeDoubleVector4::MergePartialFromCodedStream(v42, a2, v46) || *(a2 + 36) != 1)
    {
      return 0;
    }

    wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
    v47 = *(a2 + 14);
    v20 = __OFSUB__(v47, 1);
    v48 = v47 - 1;
    if (v48 < 0 == v20)
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

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::MotionTypeCompass::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 68);
  if (v6)
  {
    v7 = *(this + 8);
    if (!v7)
    {
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(this);
      v7 = *(CoreNavigation::CLP::LogEntry::PrivateData::MotionTypeCompass::default_instance_ + 8);
    }

    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(1, v7, a2, a4);
    v6 = *(v5 + 68);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_19;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  v8 = *(v5 + 16);
  if (!v8)
  {
    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(this);
    v8 = *(CoreNavigation::CLP::LogEntry::PrivateData::MotionTypeCompass::default_instance_ + 16);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(2, v8, a2, a4);
  v6 = *(v5 + 68);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_20;
  }

LABEL_19:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(3, a2, *(v5 + 24), a3);
  v6 = *(v5 + 68);
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_21;
  }

LABEL_20:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(4, a2, *(v5 + 28), a3);
  v6 = *(v5 + 68);
  if ((v6 & 0x10) == 0)
  {
LABEL_6:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_22;
  }

LABEL_21:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(5, a2, *(v5 + 32), a3);
  v6 = *(v5 + 68);
  if ((v6 & 0x20) == 0)
  {
LABEL_7:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_23;
  }

LABEL_22:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(6, *(v5 + 36), a2, a4);
  v6 = *(v5 + 68);
  if ((v6 & 0x40) == 0)
  {
LABEL_8:
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_24;
  }

LABEL_23:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(7, *(v5 + 40), a2, a4);
  v6 = *(v5 + 68);
  if ((v6 & 0x80) == 0)
  {
LABEL_9:
    if ((v6 & 0x100) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_25;
  }

LABEL_24:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(8, a2, *(v5 + 44), a3);
  v6 = *(v5 + 68);
  if ((v6 & 0x100) == 0)
  {
LABEL_10:
    if ((v6 & 0x200) == 0)
    {
      goto LABEL_11;
    }

LABEL_26:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(0xA, a2, *(v5 + 52), a3);
    if ((*(v5 + 68) & 0x400) == 0)
    {
      return this;
    }

    goto LABEL_27;
  }

LABEL_25:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(9, a2, *(v5 + 48), a3);
  v6 = *(v5 + 68);
  if ((v6 & 0x200) != 0)
  {
    goto LABEL_26;
  }

LABEL_11:
  if ((v6 & 0x400) == 0)
  {
    return this;
  }

LABEL_27:
  v9 = *(v5 + 56);
  if (!v9)
  {
    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(this);
    v9 = *(CoreNavigation::CLP::LogEntry::PrivateData::MotionTypeCompass::default_instance_ + 56);
  }

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0xB, v9, a2, a4);
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::MotionTypeCompass::ByteSize(CoreNavigation::CLP::LogEntry::PrivateData::MotionTypeCompass *this, unsigned int a2)
{
  v3 = *(this + 17);
  if (!v3)
  {
    v5 = 0;
    goto LABEL_41;
  }

  if (v3)
  {
    v6 = *(this + 1);
    if (!v6)
    {
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(this);
      v6 = *(CoreNavigation::CLP::LogEntry::PrivateData::MotionTypeCompass::default_instance_ + 8);
    }

    v7 = *(v6 + 24);
    if (*(v6 + 24))
    {
      v8 = (v7 << 31 >> 31) & 5;
      if ((v7 & 2) != 0)
      {
        v8 += 5;
      }

      if ((v7 & 4) != 0)
      {
        v7 = v8 + 5;
      }

      else
      {
        v7 = v8;
      }
    }

    *(v6 + 20) = v7;
    v4 = v7 + 2;
    v3 = *(this + 17);
    if ((v3 & 2) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_15;
  }

  v4 = 0;
  if ((v3 & 2) != 0)
  {
LABEL_15:
    v9 = *(this + 2);
    if (!v9)
    {
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(this);
      v9 = *(CoreNavigation::CLP::LogEntry::PrivateData::MotionTypeCompass::default_instance_ + 16);
    }

    v10 = *(v9 + 24);
    if (*(v9 + 24))
    {
      v11 = (v10 << 31 >> 31) & 5;
      if ((v10 & 2) != 0)
      {
        v11 += 5;
      }

      if ((v10 & 4) != 0)
      {
        v10 = v11 + 5;
      }

      else
      {
        v10 = v11;
      }
    }

    *(v9 + 20) = v10;
    v4 += v10 + 2;
    v3 = *(this + 17);
  }

LABEL_24:
  v12 = v4 + 5;
  if ((v3 & 4) == 0)
  {
    v12 = v4;
  }

  if ((v3 & 8) != 0)
  {
    v12 += 5;
  }

  if ((v3 & 0x10) != 0)
  {
    v13 = v12 + 5;
  }

  else
  {
    v13 = v12;
  }

  if ((v3 & 0x20) != 0)
  {
    v14 = *(this + 9);
    if ((v14 & 0x80000000) != 0)
    {
      v15 = 11;
    }

    else if (v14 >= 0x80)
    {
      v15 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v14) + 1;
      v3 = *(this + 17);
    }

    else
    {
      v15 = 2;
    }

    v13 += v15;
  }

  v16 = ((v3 >> 5) & 2) + v13;
  if ((v3 & 0x80) != 0)
  {
    v5 = v16 + 5;
  }

  else
  {
    v5 = v16;
  }

LABEL_41:
  if ((v3 & 0xFF00) != 0)
  {
    v17 = v5 + 5;
    if ((v3 & 0x100) == 0)
    {
      v17 = v5;
    }

    if ((v3 & 0x200) != 0)
    {
      v5 = v17 + 5;
    }

    else
    {
      v5 = v17;
    }

    if ((v3 & 0x400) != 0)
    {
      v18 = *(this + 7);
      if (!v18)
      {
        CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(0);
        v18 = *(CoreNavigation::CLP::LogEntry::PrivateData::MotionTypeCompass::default_instance_ + 56);
      }

      v5 = v5 + CoreNavigation::CLP::LogEntry::PrivateData::MotionTypeDoubleVector4::ByteSize(v18) + 2;
    }
  }

  *(this + 16) = v5;
  return v5;
}

double CoreNavigation::CLP::LogEntry::PrivateData::MotionTypeCompass::CheckTypeAndMergeFrom(CoreNavigation::CLP::LogEntry::PrivateData::MotionTypeCompass *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  return CoreNavigation::CLP::LogEntry::PrivateData::MotionTypeCompass::MergeFrom(this, lpsrc);
}

double CoreNavigation::CLP::LogEntry::PrivateData::MotionTypeCompass::CopyFrom(CoreNavigation::CLP::LogEntry::PrivateData::MotionTypeCompass *this, const CoreNavigation::CLP::LogEntry::PrivateData::MotionTypeCompass *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    return CoreNavigation::CLP::LogEntry::PrivateData::MotionTypeCompass::MergeFrom(this, a2);
  }

  return result;
}

float CoreNavigation::CLP::LogEntry::PrivateData::MotionTypeCompass::Swap(CoreNavigation::CLP::LogEntry::PrivateData::MotionTypeCompass *this, CoreNavigation::CLP::LogEntry::PrivateData::MotionTypeCompass *a2)
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
    v6 = *(this + 8);
    *(this + 8) = *(a2 + 8);
    *(a2 + 8) = v6;
    LODWORD(v3) = *(this + 9);
    *(this + 9) = *(a2 + 9);
    *(a2 + 9) = v3;
    LOBYTE(v3) = *(this + 40);
    *(this + 40) = *(a2 + 40);
    *(a2 + 40) = v3;
    v7 = *(this + 11);
    *(this + 11) = *(a2 + 11);
    *(a2 + 11) = v7;
    v8 = *(this + 12);
    *(this + 12) = *(a2 + 12);
    *(a2 + 12) = v8;
    result = *(this + 13);
    *(this + 13) = *(a2 + 13);
    *(a2 + 13) = result;
    v10 = *(this + 7);
    *(this + 7) = *(a2 + 7);
    *(a2 + 7) = v10;
    LODWORD(v10) = *(this + 17);
    *(this + 17) = *(a2 + 17);
    *(a2 + 17) = v10;
    LODWORD(v10) = *(this + 16);
    *(this + 16) = *(a2 + 16);
    *(a2 + 16) = v10;
  }

  return result;
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::CompassTypeSample::SharedCtor(uint64_t this)
{
  *(this + 36) = 0;
  *(this + 40) = 0;
  *(this + 16) = 0;
  *(this + 24) = 0;
  *(this + 8) = 0;
  *(this + 32) = 0;
  return this;
}

CoreNavigation::CLP::LogEntry::PrivateData::CompassTypeSample *CoreNavigation::CLP::LogEntry::PrivateData::CompassTypeSample::CompassTypeSample(CoreNavigation::CLP::LogEntry::PrivateData::CompassTypeSample *this, const CoreNavigation::CLP::LogEntry::PrivateData::CompassTypeSample *a2)
{
  *(this + 9) = 0;
  *(this + 10) = 0;
  *this = &unk_1F4CDB148;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 3) = 0;
  *(this + 32) = 0;
  CoreNavigation::CLP::LogEntry::PrivateData::CompassTypeSample::MergeFrom(this, a2);
  return this;
}

float CoreNavigation::CLP::LogEntry::PrivateData::CompassTypeSample::MergeFrom(CoreNavigation::CLP::LogEntry::PrivateData::CompassTypeSample *this, const CoreNavigation::CLP::LogEntry::PrivateData::CompassTypeSample *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v12);
  }

  LOBYTE(v5) = *(a2 + 40);
  if (!v5)
  {
    return *&v4;
  }

  if (*(a2 + 40))
  {
    *(this + 10) |= 1u;
    v7 = *(this + 1);
    if (!v7)
    {
      operator new();
    }

    v8 = *(a2 + 1);
    if (!v8)
    {
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(this);
      v8 = *(CoreNavigation::CLP::LogEntry::PrivateData::CompassTypeSample::default_instance_ + 8);
    }

    v4 = CoreNavigation::CLP::LogEntry::PrivateData::TimeStamp::MergeFrom(v7, v8);
    v5 = *(a2 + 10);
    if ((v5 & 2) == 0)
    {
LABEL_6:
      if ((v5 & 4) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_21;
    }
  }

  else if ((*(a2 + 40) & 2) == 0)
  {
    goto LABEL_6;
  }

  *(this + 10) |= 2u;
  v9 = *(this + 2);
  if (!v9)
  {
    operator new();
  }

  v10 = *(a2 + 2);
  if (!v10)
  {
    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(this);
    v10 = *(CoreNavigation::CLP::LogEntry::PrivateData::CompassTypeSample::default_instance_ + 16);
  }

  v4 = CoreNavigation::CLP::LogEntry::PrivateData::MotionTypeCompass::MergeFrom(v9, v10);
  v5 = *(a2 + 10);
  if ((v5 & 4) == 0)
  {
LABEL_7:
    if ((v5 & 8) == 0)
    {
      goto LABEL_8;
    }

LABEL_22:
    LODWORD(v4) = *(a2 + 7);
    *(this + 10) |= 8u;
    *(this + 7) = LODWORD(v4);
    if ((*(a2 + 10) & 0x10) != 0)
    {
      goto LABEL_9;
    }

    return *&v4;
  }

LABEL_21:
  LODWORD(v4) = *(a2 + 6);
  *(this + 10) |= 4u;
  *(this + 6) = LODWORD(v4);
  v5 = *(a2 + 10);
  if ((v5 & 8) != 0)
  {
    goto LABEL_22;
  }

LABEL_8:
  if ((v5 & 0x10) != 0)
  {
LABEL_9:
    v6 = *(a2 + 32);
    *(this + 10) |= 0x10u;
    *(this + 32) = v6;
  }

  return *&v4;
}

void sub_1D0CE82A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void CoreNavigation::CLP::LogEntry::PrivateData::CompassTypeSample::~CompassTypeSample(CoreNavigation::CLP::LogEntry::PrivateData::CompassTypeSample *this)
{
  *this = &unk_1F4CDB148;
  CoreNavigation::CLP::LogEntry::PrivateData::CompassTypeSample::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  CoreNavigation::CLP::LogEntry::PrivateData::CompassTypeSample::~CompassTypeSample(this);

  JUMPOUT(0x1D387ECA0);
}

void CoreNavigation::CLP::LogEntry::PrivateData::CompassTypeSample::SharedDtor(CoreNavigation::CLP::LogEntry::PrivateData::CompassTypeSample *this)
{
  CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(this);
  if (CoreNavigation::CLP::LogEntry::PrivateData::CompassTypeSample::default_instance_ != this)
  {
    v2 = *(this + 1);
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }

    v3 = *(this + 2);
    if (v3)
    {
      v4 = *(*v3 + 8);

      v4();
    }
  }
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::CompassTypeSample::Clear(uint64_t this)
{
  v1 = this;
  LOBYTE(v2) = *(this + 40);
  if (v2)
  {
    if (*(this + 40))
    {
      v3 = *(this + 8);
      if (v3)
      {
        if (*(v3 + 36))
        {
          *(v3 + 8) = 0;
          *(v3 + 16) = 0;
          *(v3 + 24) = 0;
        }

        *(v3 + 36) = 0;
        v2 = *(this + 40);
      }
    }

    if ((v2 & 2) != 0)
    {
      this = *(this + 16);
      if (this)
      {
        this = CoreNavigation::CLP::LogEntry::PrivateData::MotionTypeCompass::Clear(this);
      }
    }

    *(v1 + 32) = 0;
    *(v1 + 24) = 0;
  }

  *(v1 + 40) = 0;
  return this;
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::CompassTypeSample::MergePartialFromCodedStream(CoreNavigation::CLP::LogEntry::PrivateData::CompassTypeSample *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
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
          if (v8 != 5)
          {
            goto LABEL_21;
          }

          goto LABEL_52;
        }

        if (v7 == 4)
        {
          if (v8 != 5)
          {
            goto LABEL_21;
          }

LABEL_56:
          v33 = 0;
          if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a2, &v33) & 1) == 0)
          {
            return 0;
          }

          *(this + 7) = v33;
          *(this + 10) |= 8u;
          v29 = *(a2 + 1);
          v9 = *(a2 + 2);
          if (v29 < v9 && *v29 == 40)
          {
            v10 = v29 + 1;
            *(a2 + 1) = v10;
LABEL_60:
            v33 = 0;
            if (v10 >= v9 || (v30 = *v10, (v30 & 0x80000000) != 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v33);
              if (!result)
              {
                return result;
              }

              v30 = v33;
              v31 = *(a2 + 1);
              v9 = *(a2 + 2);
            }

            else
            {
              v31 = v10 + 1;
              *(a2 + 1) = v31;
            }

            *(this + 32) = v30 != 0;
            *(this + 10) |= 0x10u;
            if (v31 == v9 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
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
          if (v7 == 5 && (TagFallback & 7) == 0)
          {
            v10 = *(a2 + 1);
            v9 = *(a2 + 2);
            goto LABEL_60;
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

      if (v7 != 1)
      {
        break;
      }

      if (v8 != 2)
      {
        goto LABEL_21;
      }

      *(this + 10) |= 1u;
      v11 = *(this + 1);
      if (!v11)
      {
        operator new();
      }

      v33 = 0;
      v12 = *(a2 + 1);
      if (v12 >= *(a2 + 2) || *v12 < 0)
      {
        if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v33))
        {
          return 0;
        }
      }

      else
      {
        v33 = *v12;
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
      if (!CoreNavigation::CLP::LogEntry::PrivateData::TimeStamp::MergePartialFromCodedStream(v11, a2, v15) || *(a2 + 36) != 1)
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
      if (v19 < *(a2 + 2) && *v19 == 18)
      {
        *(a2 + 1) = v19 + 1;
        goto LABEL_38;
      }
    }

    if (v7 != 2 || v8 != 2)
    {
      goto LABEL_21;
    }

LABEL_38:
    *(this + 10) |= 2u;
    v20 = *(this + 2);
    if (!v20)
    {
      operator new();
    }

    v33 = 0;
    v21 = *(a2 + 1);
    if (v21 >= *(a2 + 2) || *v21 < 0)
    {
      if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v33))
      {
        return 0;
      }
    }

    else
    {
      v33 = *v21;
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
    if (!CoreNavigation::CLP::LogEntry::PrivateData::MotionTypeCompass::MergePartialFromCodedStream(v20, a2, v24) || *(a2 + 36) != 1)
    {
      return 0;
    }

    wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
    v25 = *(a2 + 14);
    v17 = __OFSUB__(v25, 1);
    v26 = v25 - 1;
    if (v26 < 0 == v17)
    {
      *(a2 + 14) = v26;
    }

    v27 = *(a2 + 1);
    if (v27 < *(a2 + 2) && *v27 == 29)
    {
      *(a2 + 1) = v27 + 1;
LABEL_52:
      v33 = 0;
      if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a2, &v33) & 1) == 0)
      {
        return 0;
      }

      *(this + 6) = v33;
      *(this + 10) |= 4u;
      v28 = *(a2 + 1);
      if (v28 < *(a2 + 2) && *v28 == 37)
      {
        *(a2 + 1) = v28 + 1;
        goto LABEL_56;
      }
    }
  }
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::CompassTypeSample::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 40);
  if (v6)
  {
    v7 = *(this + 8);
    if (!v7)
    {
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(this);
      v7 = *(CoreNavigation::CLP::LogEntry::PrivateData::CompassTypeSample::default_instance_ + 8);
    }

    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(1, v7, a2, a4);
    v6 = *(v5 + 40);
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
    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(this);
    v8 = *(CoreNavigation::CLP::LogEntry::PrivateData::CompassTypeSample::default_instance_ + 16);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(2, v8, a2, a4);
  v6 = *(v5 + 40);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

LABEL_14:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(4, a2, *(v5 + 28), a3);
    if ((*(v5 + 40) & 0x10) == 0)
    {
      return this;
    }

    goto LABEL_15;
  }

LABEL_13:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(3, a2, *(v5 + 24), a3);
  v6 = *(v5 + 40);
  if ((v6 & 8) != 0)
  {
    goto LABEL_14;
  }

LABEL_5:
  if ((v6 & 0x10) == 0)
  {
    return this;
  }

LABEL_15:
  v9 = *(v5 + 32);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(5, v9, a2, a4);
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::CompassTypeSample::ByteSize(CoreNavigation::CLP::LogEntry::PrivateData::CompassTypeSample *this, unsigned int a2)
{
  v3 = *(this + 10);
  if (!v3)
  {
    result = 0;
    goto LABEL_26;
  }

  if (v3)
  {
    v6 = *(this + 1);
    if (!v6)
    {
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(this);
      v6 = *(CoreNavigation::CLP::LogEntry::PrivateData::CompassTypeSample::default_instance_ + 8);
    }

    v7 = *(v6 + 36);
    if (*(v6 + 36))
    {
      v8 = (v7 << 31 >> 31) & 9;
      if ((v7 & 2) != 0)
      {
        v8 += 9;
      }

      if ((v7 & 4) != 0)
      {
        v7 = v8 + 9;
      }

      else
      {
        v7 = v8;
      }
    }

    *(v6 + 32) = v7;
    v4 = v7 + 2;
    v3 = *(this + 10);
    if ((v3 & 2) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_15;
  }

  v4 = 0;
  if ((v3 & 2) != 0)
  {
LABEL_15:
    v9 = *(this + 2);
    if (!v9)
    {
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(0);
      v9 = *(CoreNavigation::CLP::LogEntry::PrivateData::CompassTypeSample::default_instance_ + 16);
    }

    v10 = CoreNavigation::CLP::LogEntry::PrivateData::MotionTypeCompass::ByteSize(v9, a2);
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
    v3 = *(this + 10);
  }

LABEL_21:
  v13 = v4 + 5;
  if ((v3 & 4) == 0)
  {
    v13 = v4;
  }

  if ((v3 & 8) != 0)
  {
    v13 += 5;
  }

  result = v13 + ((v3 >> 3) & 2);
LABEL_26:
  *(this + 9) = result;
  return result;
}

float CoreNavigation::CLP::LogEntry::PrivateData::CompassTypeSample::CheckTypeAndMergeFrom(CoreNavigation::CLP::LogEntry::PrivateData::CompassTypeSample *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  return CoreNavigation::CLP::LogEntry::PrivateData::CompassTypeSample::MergeFrom(this, lpsrc);
}

float CoreNavigation::CLP::LogEntry::PrivateData::CompassTypeSample::CopyFrom(CoreNavigation::CLP::LogEntry::PrivateData::CompassTypeSample *this, const CoreNavigation::CLP::LogEntry::PrivateData::CompassTypeSample *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    return CoreNavigation::CLP::LogEntry::PrivateData::CompassTypeSample::MergeFrom(this, a2);
  }

  return result;
}

float CoreNavigation::CLP::LogEntry::PrivateData::CompassTypeSample::Swap(CoreNavigation::CLP::LogEntry::PrivateData::CompassTypeSample *this, CoreNavigation::CLP::LogEntry::PrivateData::CompassTypeSample *a2)
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
    result = *(this + 7);
    *(this + 7) = *(a2 + 7);
    *(a2 + 7) = result;
    LOBYTE(v3) = *(this + 32);
    *(this + 32) = *(a2 + 32);
    *(a2 + 32) = v3;
    LODWORD(v3) = *(this + 10);
    *(this + 10) = *(a2 + 10);
    *(a2 + 10) = v3;
    LODWORD(v3) = *(this + 9);
    *(this + 9) = *(a2 + 9);
    *(a2 + 9) = v3;
  }

  return result;
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::Compass::SharedCtor(uint64_t this)
{
  *(this + 8) = 0;
  *(this + 40) = 0;
  return this;
}

CoreNavigation::CLP::LogEntry::PrivateData::Compass *CoreNavigation::CLP::LogEntry::PrivateData::Compass::Compass(CoreNavigation::CLP::LogEntry::PrivateData::Compass *this, const CoreNavigation::CLP::LogEntry::PrivateData::Compass *a2)
{
  *(this + 5) = 0;
  *this = &unk_1F4CDB1C0;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 3) = 0;
  *(this + 8) = 0;
  CoreNavigation::CLP::LogEntry::PrivateData::Compass::MergeFrom(this, a2);
  return this;
}

void sub_1D0CE8D64(_Unwind_Exception *a1)
{
  sub_1D0B8CD0C(v1 + 2);
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(v1);
  _Unwind_Resume(a1);
}

double CoreNavigation::CLP::LogEntry::PrivateData::Compass::MergeFrom(CoreNavigation::CLP::LogEntry::PrivateData::Compass *this, const CoreNavigation::CLP::LogEntry::PrivateData::Compass *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v8);
  }

  sub_1D0CFF05C((this + 16), a2 + 16);
  if (*(a2 + 44))
  {
    *(this + 11) |= 1u;
    v6 = *(this + 1);
    if (!v6)
    {
      operator new();
    }

    v7 = *(a2 + 1);
    if (!v7)
    {
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(v4);
      v7 = *(CoreNavigation::CLP::LogEntry::PrivateData::Compass::default_instance_ + 8);
    }

    return CoreNavigation::CLP::LogEntry::PrivateData::TimeStamp::MergeFrom(v6, v7);
  }

  return result;
}

void sub_1D0CE8E8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void CoreNavigation::CLP::LogEntry::PrivateData::Compass::~Compass(CoreNavigation::CLP::LogEntry::PrivateData::Compass *this)
{
  *this = &unk_1F4CDB1C0;
  CoreNavigation::CLP::LogEntry::PrivateData::Compass::SharedDtor(this);
  sub_1D0B8CD0C(this + 2);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  CoreNavigation::CLP::LogEntry::PrivateData::Compass::~Compass(this);

  JUMPOUT(0x1D387ECA0);
}

void CoreNavigation::CLP::LogEntry::PrivateData::Compass::SharedDtor(CoreNavigation::CLP::LogEntry::PrivateData::Compass *this)
{
  CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(this);
  if (CoreNavigation::CLP::LogEntry::PrivateData::Compass::default_instance_ != this)
  {
    v2 = *(this + 1);
    if (v2)
    {
      v3 = *(*v2 + 8);

      v3();
    }
  }
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::Compass::Clear(CoreNavigation::CLP::LogEntry::PrivateData::Compass *this)
{
  if (*(this + 44))
  {
    v2 = *(this + 1);
    if (v2)
    {
      if (*(v2 + 36))
      {
        *(v2 + 8) = 0;
        *(v2 + 16) = 0;
        *(v2 + 24) = 0;
      }

      *(v2 + 36) = 0;
    }
  }

  result = sub_1D0C77384(this + 16);
  *(this + 11) = 0;
  return result;
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::Compass::MergePartialFromCodedStream(CoreNavigation::CLP::LogEntry::PrivateData::Compass *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
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

      if (TagFallback >> 3 != 1 || v7 != 2)
      {
        goto LABEL_15;
      }

      *(this + 11) |= 1u;
      v8 = *(this + 1);
      if (!v8)
      {
        operator new();
      }

      v29 = 0;
      v9 = *(a2 + 1);
      if (v9 >= *(a2 + 2) || *v9 < 0)
      {
        if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v29))
        {
          return 0;
        }
      }

      else
      {
        v29 = *v9;
        *(a2 + 1) = v9 + 1;
      }

      v10 = *(a2 + 14);
      v11 = *(a2 + 15);
      *(a2 + 14) = v10 + 1;
      if (v10 >= v11)
      {
        return 0;
      }

      wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
      if (!CoreNavigation::CLP::LogEntry::PrivateData::TimeStamp::MergePartialFromCodedStream(v8, a2, v12) || *(a2 + 36) != 1)
      {
        return 0;
      }

      wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
      v13 = *(a2 + 14);
      v14 = __OFSUB__(v13, 1);
      v15 = v13 - 1;
      if (v15 < 0 == v14)
      {
        *(a2 + 14) = v15;
      }

      v16 = *(a2 + 1);
      if (v16 < *(a2 + 2) && *v16 == 18)
      {
        do
        {
          *(a2 + 1) = v16 + 1;
LABEL_27:
          v17 = *(this + 7);
          v18 = *(this + 6);
          if (v18 >= v17)
          {
            if (v17 == *(this + 8))
            {
              wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 16));
              v17 = *(this + 7);
            }

            *(this + 7) = v17 + 1;
            operator new();
          }

          v19 = *(this + 2);
          *(this + 6) = v18 + 1;
          v20 = *(v19 + 8 * v18);
          v30 = 0;
          v21 = *(a2 + 1);
          if (v21 >= *(a2 + 2) || *v21 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v30))
            {
              return 0;
            }
          }

          else
          {
            v30 = *v21;
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
          if (!CoreNavigation::CLP::LogEntry::PrivateData::CompassTypeSample::MergePartialFromCodedStream(v20, a2, v24) || *(a2 + 36) != 1)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
          v25 = *(a2 + 14);
          v14 = __OFSUB__(v25, 1);
          v26 = v25 - 1;
          if (v26 < 0 == v14)
          {
            *(a2 + 14) = v26;
          }

          v16 = *(a2 + 1);
          v27 = *(a2 + 2);
        }

        while (v16 < v27 && *v16 == 18);
        if (v16 == v27 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
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
      goto LABEL_27;
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
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::Compass::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  if (*(this + 44))
  {
    v6 = *(this + 8);
    if (!v6)
    {
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(this);
      v6 = *(CoreNavigation::CLP::LogEntry::PrivateData::Compass::default_instance_ + 8);
    }

    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(1, v6, a2, a4);
  }

  if (*(v5 + 24) >= 1)
  {
    v7 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(2, *(*(v5 + 16) + 8 * v7++), a2, a4);
    }

    while (v7 < *(v5 + 24));
  }

  return this;
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::Compass::ByteSize(CoreNavigation::CLP::LogEntry::PrivateData::Compass *this, unsigned int a2)
{
  if (*(this + 44))
  {
    v4 = *(this + 1);
    if (!v4)
    {
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(this);
      v4 = *(CoreNavigation::CLP::LogEntry::PrivateData::Compass::default_instance_ + 8);
    }

    v5 = *(v4 + 36);
    if (*(v4 + 36))
    {
      v6 = (v5 << 31 >> 31) & 9;
      if ((v5 & 2) != 0)
      {
        v6 += 9;
      }

      if ((v5 & 4) != 0)
      {
        v5 = v6 + 9;
      }

      else
      {
        v5 = v6;
      }
    }

    *(v4 + 32) = v5;
    v3 = v5 + 2;
  }

  else
  {
    v3 = 0;
  }

  v7 = *(this + 6);
  v8 = (v7 + v3);
  if (v7 >= 1)
  {
    v9 = 0;
    do
    {
      v10 = CoreNavigation::CLP::LogEntry::PrivateData::CompassTypeSample::ByteSize(*(*(this + 2) + 8 * v9), a2);
      v11 = v10;
      if (v10 >= 0x80)
      {
        v12 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v10);
      }

      else
      {
        v12 = 1;
      }

      v8 = (v11 + v8 + v12);
      ++v9;
    }

    while (v9 < *(this + 6));
  }

  *(this + 10) = v8;
  return v8;
}

double CoreNavigation::CLP::LogEntry::PrivateData::Compass::CheckTypeAndMergeFrom(CoreNavigation::CLP::LogEntry::PrivateData::Compass *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  return CoreNavigation::CLP::LogEntry::PrivateData::Compass::MergeFrom(this, lpsrc);
}

double CoreNavigation::CLP::LogEntry::PrivateData::Compass::CopyFrom(CoreNavigation::CLP::LogEntry::PrivateData::Compass *this, const CoreNavigation::CLP::LogEntry::PrivateData::Compass *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    return CoreNavigation::CLP::LogEntry::PrivateData::Compass::MergeFrom(this, a2);
  }

  return result;
}

CoreNavigation::CLP::LogEntry::PrivateData::Compass *CoreNavigation::CLP::LogEntry::PrivateData::Compass::Swap(CoreNavigation::CLP::LogEntry::PrivateData::Compass *this, CoreNavigation::CLP::LogEntry::PrivateData::Compass *a2)
{
  if (a2 != this)
  {
    v3 = this;
    v4 = *(this + 1);
    *(this + 1) = *(a2 + 1);
    *(a2 + 1) = v4;
    this = wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Swap();
    v5 = *(v3 + 11);
    *(v3 + 11) = *(a2 + 11);
    *(a2 + 11) = v5;
    v6 = *(v3 + 10);
    *(v3 + 10) = *(a2 + 10);
    *(a2 + 10) = v6;
  }

  return this;
}

double CoreNavigation::CLP::LogEntry::PrivateData::MotionTypeDeviceMotion::SharedCtor(CoreNavigation::CLP::LogEntry::PrivateData::MotionTypeDeviceMotion *this)
{
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 10) = -1;
  *(this + 22) = 0;
  *(this + 46) = 0;
  *(this + 6) = 0;
  *(this + 14) = 0;
  return result;
}

CoreNavigation::CLP::LogEntry::PrivateData::MotionTypeDeviceMotion *CoreNavigation::CLP::LogEntry::PrivateData::MotionTypeDeviceMotion::MotionTypeDeviceMotion(CoreNavigation::CLP::LogEntry::PrivateData::MotionTypeDeviceMotion *this, const CoreNavigation::CLP::LogEntry::PrivateData::MotionTypeDeviceMotion *a2)
{
  *this = &unk_1F4CDB238;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 10) = -1;
  *(this + 22) = 0;
  *(this + 46) = 0;
  *(this + 6) = 0;
  *(this + 14) = 0;
  CoreNavigation::CLP::LogEntry::PrivateData::MotionTypeDeviceMotion::MergeFrom(this, a2);
  return this;
}

float CoreNavigation::CLP::LogEntry::PrivateData::MotionTypeDeviceMotion::MergeFrom(CoreNavigation::CLP::LogEntry::PrivateData::MotionTypeDeviceMotion *this, const CoreNavigation::CLP::LogEntry::PrivateData::MotionTypeDeviceMotion *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v19);
  }

  v5 = *(a2 + 14);
  if (!v5)
  {
    goto LABEL_13;
  }

  if (v5)
  {
    *(this + 14) |= 1u;
    v7 = *(this + 1);
    if (!v7)
    {
      operator new();
    }

    v8 = *(a2 + 1);
    if (!v8)
    {
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(this);
      v8 = *(CoreNavigation::CLP::LogEntry::PrivateData::MotionTypeDeviceMotion::default_instance_ + 8);
    }

    v4 = CoreNavigation::CLP::LogEntry::PrivateData::MotionTypeDoubleVector4::MergeFrom(v7, v8);
    v5 = *(a2 + 14);
    if ((v5 & 2) == 0)
    {
LABEL_6:
      if ((v5 & 4) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_26;
    }
  }

  else if ((v5 & 2) == 0)
  {
    goto LABEL_6;
  }

  *(this + 14) |= 2u;
  v9 = *(this + 2);
  if (!v9)
  {
    operator new();
  }

  v10 = *(a2 + 2);
  if (!v10)
  {
    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(this);
    v10 = *(CoreNavigation::CLP::LogEntry::PrivateData::MotionTypeDeviceMotion::default_instance_ + 16);
  }

  *&v4 = CoreNavigation::CLP::LogEntry::PrivateData::MotionTypeVector3::MergeFrom(v9, v10);
  v5 = *(a2 + 14);
  if ((v5 & 4) == 0)
  {
LABEL_7:
    if ((v5 & 8) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_31;
  }

LABEL_26:
  *(this + 14) |= 4u;
  v11 = *(this + 3);
  if (!v11)
  {
    operator new();
  }

  v12 = *(a2 + 3);
  if (!v12)
  {
    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(this);
    v12 = *(CoreNavigation::CLP::LogEntry::PrivateData::MotionTypeDeviceMotion::default_instance_ + 24);
  }

  *&v4 = CoreNavigation::CLP::LogEntry::PrivateData::MotionTypeVector3::MergeFrom(v11, v12);
  v5 = *(a2 + 14);
  if ((v5 & 8) == 0)
  {
LABEL_8:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_36;
  }

LABEL_31:
  *(this + 14) |= 8u;
  v13 = *(this + 4);
  if (!v13)
  {
    operator new();
  }

  v14 = *(a2 + 4);
  if (!v14)
  {
    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(this);
    v14 = *(CoreNavigation::CLP::LogEntry::PrivateData::MotionTypeDeviceMotion::default_instance_ + 32);
  }

  *&v4 = CoreNavigation::CLP::LogEntry::PrivateData::MotionTypeVector3::MergeFrom(v13, v14);
  v5 = *(a2 + 14);
  if ((v5 & 0x10) == 0)
  {
LABEL_9:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_10;
    }

LABEL_38:
    v16 = *(a2 + 44);
    *(this + 14) |= 0x20u;
    *(this + 44) = v16;
    v5 = *(a2 + 14);
    if ((v5 & 0x40) == 0)
    {
LABEL_11:
      if ((v5 & 0x80) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_12;
    }

    goto LABEL_39;
  }

LABEL_36:
  v15 = *(a2 + 10);
  if ((v15 + 1) >= 8)
  {
    __assert_rtn("set_magnetic_field_calibration_level", "CoreNavigationCLPPrivateDataShared.pb.h", 24505, "::CoreNavigation::CLP::LogEntry::PrivateData::MotionTypeCompassCalibrationLevel_IsValid(value)");
  }

  *(this + 14) |= 0x10u;
  *(this + 10) = v15;
  v5 = *(a2 + 14);
  if ((v5 & 0x20) != 0)
  {
    goto LABEL_38;
  }

LABEL_10:
  if ((v5 & 0x40) == 0)
  {
    goto LABEL_11;
  }

LABEL_39:
  v17 = *(a2 + 45);
  *(this + 14) |= 0x40u;
  *(this + 45) = v17;
  v5 = *(a2 + 14);
  if ((v5 & 0x80) != 0)
  {
LABEL_12:
    v6 = *(a2 + 46);
    *(this + 14) |= 0x80u;
    *(this + 46) = v6;
    v5 = *(a2 + 14);
  }

LABEL_13:
  if ((v5 & 0x100) != 0)
  {
    LODWORD(v4) = *(a2 + 12);
    *(this + 14) |= 0x100u;
    *(this + 12) = LODWORD(v4);
  }

  return *&v4;
}

void sub_1D0CE9B34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void CoreNavigation::CLP::LogEntry::PrivateData::MotionTypeDeviceMotion::~MotionTypeDeviceMotion(CoreNavigation::CLP::LogEntry::PrivateData::MotionTypeDeviceMotion *this)
{
  *this = &unk_1F4CDB238;
  CoreNavigation::CLP::LogEntry::PrivateData::MotionTypeDeviceMotion::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  CoreNavigation::CLP::LogEntry::PrivateData::MotionTypeDeviceMotion::~MotionTypeDeviceMotion(this);

  JUMPOUT(0x1D387ECA0);
}

void CoreNavigation::CLP::LogEntry::PrivateData::MotionTypeDeviceMotion::SharedDtor(CoreNavigation::CLP::LogEntry::PrivateData::MotionTypeDeviceMotion *this)
{
  CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(this);
  if (CoreNavigation::CLP::LogEntry::PrivateData::MotionTypeDeviceMotion::default_instance_ != this)
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
      (*(*v4 + 8))(v4);
    }

    v5 = *(this + 4);
    if (v5)
    {
      v6 = *(*v5 + 8);

      v6();
    }
  }
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::MotionTypeDeviceMotion::Clear(uint64_t this)
{
  v1 = *(this + 56);
  if (v1)
  {
    if (v1)
    {
      v2 = *(this + 8);
      if (v2)
      {
        if (*(v2 + 44))
        {
          *(v2 + 24) = 0u;
          *(v2 + 8) = 0u;
        }

        *(v2 + 44) = 0;
        v1 = *(this + 56);
      }
    }

    if ((v1 & 2) != 0)
    {
      v3 = *(this + 16);
      if (v3)
      {
        if (*(v3 + 24))
        {
          *(v3 + 8) = 0;
          *(v3 + 16) = 0;
        }

        *(v3 + 24) = 0;
        v1 = *(this + 56);
      }
    }

    if ((v1 & 4) != 0)
    {
      v4 = *(this + 24);
      if (v4)
      {
        if (*(v4 + 24))
        {
          *(v4 + 8) = 0;
          *(v4 + 16) = 0;
        }

        *(v4 + 24) = 0;
        v1 = *(this + 56);
      }
    }

    if ((v1 & 8) != 0)
    {
      v5 = *(this + 32);
      if (v5)
      {
        if (*(v5 + 24))
        {
          *(v5 + 8) = 0;
          *(v5 + 16) = 0;
        }

        *(v5 + 24) = 0;
        v1 = *(this + 56);
      }
    }

    *(this + 40) = -1;
    *(this + 44) = 0;
    *(this + 46) = 0;
  }

  if ((v1 & 0xFF00) != 0)
  {
    *(this + 48) = 0;
  }

  *(this + 56) = 0;
  return this;
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::MotionTypeDeviceMotion::MergePartialFromCodedStream(CoreNavigation::CLP::LogEntry::PrivateData::MotionTypeDeviceMotion *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
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
              goto LABEL_39;
            }

            v10 = *(a2 + 1);
            v9 = *(a2 + 2);
            goto LABEL_104;
          }

          if ((TagFallback & 7) != 0)
          {
            goto LABEL_39;
          }

          v15 = *(a2 + 1);
          v14 = *(a2 + 2);
LABEL_94:
          v57 = 0;
          if (v15 >= v14 || (v48 = *v15, (v48 & 0x80000000) != 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v57);
            if (!result)
            {
              return result;
            }

            v48 = v57;
          }

          else
          {
            *(a2 + 1) = v15 + 1;
          }

          if (v48 + 1 <= 7)
          {
            *(this + 14) |= 0x10u;
            *(this + 10) = v48;
          }

          v50 = *(a2 + 1);
          v9 = *(a2 + 2);
          if (v50 < v9 && *v50 == 48)
          {
            v10 = v50 + 1;
            *(a2 + 1) = v10;
LABEL_104:
            v57 = 0;
            if (v10 >= v9 || (v51 = *v10, (v51 & 0x80000000) != 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v57);
              if (!result)
              {
                return result;
              }

              v51 = v57;
              v52 = *(a2 + 1);
              v9 = *(a2 + 2);
            }

            else
            {
              v52 = v10 + 1;
              *(a2 + 1) = v52;
            }

            *(this + 44) = v51 != 0;
            *(this + 14) |= 0x20u;
            if (v52 < v9 && *v52 == 56)
            {
              v13 = v52 + 1;
              *(a2 + 1) = v13;
LABEL_112:
              v57 = 0;
              if (v13 >= v9 || (v53 = *v13, (v53 & 0x80000000) != 0))
              {
                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v57);
                if (!result)
                {
                  return result;
                }

                v53 = v57;
                v54 = *(a2 + 1);
                v9 = *(a2 + 2);
              }

              else
              {
                v54 = v13 + 1;
                *(a2 + 1) = v54;
              }

              *(this + 45) = v53 != 0;
              *(this + 14) |= 0x40u;
              if (v54 < v9 && *v54 == 64)
              {
                v16 = v54 + 1;
                *(a2 + 1) = v16;
                goto LABEL_120;
              }
            }
          }
        }

        else if (v7 == 7)
        {
          if ((TagFallback & 7) == 0)
          {
            v13 = *(a2 + 1);
            v9 = *(a2 + 2);
            goto LABEL_112;
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

        else if (v7 == 8)
        {
          if ((TagFallback & 7) != 0)
          {
            goto LABEL_39;
          }

          v16 = *(a2 + 1);
          v9 = *(a2 + 2);
LABEL_120:
          v57 = 0;
          if (v16 >= v9 || (v55 = *v16, (v55 & 0x80000000) != 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v57);
            if (!result)
            {
              return result;
            }

            v55 = v57;
            v56 = *(a2 + 1);
            v9 = *(a2 + 2);
          }

          else
          {
            v56 = v16 + 1;
            *(a2 + 1) = v56;
          }

          *(this + 46) = v55 != 0;
          *(this + 14) |= 0x80u;
          if (v56 < v9 && *v56 == 77)
          {
            *(a2 + 1) = v56 + 1;
            goto LABEL_128;
          }
        }

        else
        {
          if (v7 != 9 || v8 != 5)
          {
            goto LABEL_39;
          }

LABEL_128:
          v57 = 0;
          if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a2, &v57) & 1) == 0)
          {
            return 0;
          }

          *(this + 12) = v57;
          *(this + 14) |= 0x100u;
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

      *(this + 14) |= 1u;
      v11 = *(this + 1);
      if (!v11)
      {
        operator new();
      }

      v57 = 0;
      v12 = *(a2 + 1);
      if (v12 >= *(a2 + 2) || *v12 < 0)
      {
        if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v57))
        {
          return 0;
        }
      }

      else
      {
        v57 = *v12;
        *(a2 + 1) = v12 + 1;
      }

      v17 = *(a2 + 14);
      v18 = *(a2 + 15);
      *(a2 + 14) = v17 + 1;
      if (v17 >= v18)
      {
        return 0;
      }

      wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
      if (!CoreNavigation::CLP::LogEntry::PrivateData::MotionTypeDoubleVector4::MergePartialFromCodedStream(v11, a2, v19) || *(a2 + 36) != 1)
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
      if (v23 < *(a2 + 2) && *v23 == 18)
      {
        *(a2 + 1) = v23 + 1;
LABEL_52:
        *(this + 14) |= 2u;
        v24 = *(this + 2);
        if (!v24)
        {
          operator new();
        }

        v57 = 0;
        v25 = *(a2 + 1);
        if (v25 >= *(a2 + 2) || *v25 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v57))
          {
            return 0;
          }
        }

        else
        {
          v57 = *v25;
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
        if (!CoreNavigation::CLP::LogEntry::PrivateData::MotionTypeVector3::MergePartialFromCodedStream(v24, a2, v28) || *(a2 + 36) != 1)
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
        if (v31 < *(a2 + 2) && *v31 == 26)
        {
          *(a2 + 1) = v31 + 1;
LABEL_66:
          *(this + 14) |= 4u;
          v32 = *(this + 3);
          if (!v32)
          {
            operator new();
          }

          v57 = 0;
          v33 = *(a2 + 1);
          if (v33 >= *(a2 + 2) || *v33 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v57))
            {
              return 0;
            }
          }

          else
          {
            v57 = *v33;
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
          if (!CoreNavigation::CLP::LogEntry::PrivateData::MotionTypeVector3::MergePartialFromCodedStream(v32, a2, v36) || *(a2 + 36) != 1)
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
          if (v39 < *(a2 + 2) && *v39 == 34)
          {
            *(a2 + 1) = v39 + 1;
            goto LABEL_80;
          }
        }
      }
    }

    if (v7 == 3)
    {
      if (v8 != 2)
      {
        goto LABEL_39;
      }

      goto LABEL_66;
    }

    if (v7 != 4 || v8 != 2)
    {
      goto LABEL_39;
    }

LABEL_80:
    *(this + 14) |= 8u;
    v40 = *(this + 4);
    if (!v40)
    {
      operator new();
    }

    v57 = 0;
    v41 = *(a2 + 1);
    if (v41 >= *(a2 + 2) || *v41 < 0)
    {
      if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v57))
      {
        return 0;
      }
    }

    else
    {
      v57 = *v41;
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
    if (!CoreNavigation::CLP::LogEntry::PrivateData::MotionTypeVector3::MergePartialFromCodedStream(v40, a2, v44) || *(a2 + 36) != 1)
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
    v14 = *(a2 + 2);
    if (v47 < v14 && *v47 == 40)
    {
      v15 = v47 + 1;
      *(a2 + 1) = v15;
      goto LABEL_94;
    }
  }
}