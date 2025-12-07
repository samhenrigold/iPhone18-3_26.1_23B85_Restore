void CoreNavigation::CLP::LogEntry::PrivateData::DirectionOfTravel::CopyFrom(CoreNavigation::CLP::LogEntry::PrivateData::DirectionOfTravel *this, const CoreNavigation::CLP::LogEntry::PrivateData::DirectionOfTravel *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    CoreNavigation::CLP::LogEntry::PrivateData::DirectionOfTravel::MergeFrom(this, a2);
  }
}

double CoreNavigation::CLP::LogEntry::PrivateData::DirectionOfTravel::Swap(CoreNavigation::CLP::LogEntry::PrivateData::DirectionOfTravel *this, CoreNavigation::CLP::LogEntry::PrivateData::DirectionOfTravel *a2)
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
    v5 = *(this + 4);
    *(this + 4) = *(a2 + 4);
    *(a2 + 4) = v5;
    v6 = *(this + 5);
    *(this + 5) = *(a2 + 5);
    *(a2 + 5) = v6;
    v7 = *(this + 6);
    *(this + 6) = *(a2 + 6);
    *(a2 + 6) = v7;
    v8 = *(this + 7);
    *(this + 7) = *(a2 + 7);
    *(a2 + 7) = v8;
    v9 = *(this + 8);
    *(this + 8) = *(a2 + 8);
    *(a2 + 8) = v9;
    v10 = *(this + 9);
    *(this + 9) = *(a2 + 9);
    *(a2 + 9) = v10;
    result = *(this + 10);
    *(this + 10) = *(a2 + 10);
    *(a2 + 10) = result;
    LOBYTE(v2) = *(this + 88);
    *(this + 88) = *(a2 + 88);
    *(a2 + 88) = v2;
    LOBYTE(v2) = *(this + 89);
    *(this + 89) = *(a2 + 89);
    *(a2 + 89) = v2;
    LOBYTE(v2) = *(this + 90);
    *(this + 90) = *(a2 + 90);
    *(a2 + 90) = v2;
    LOBYTE(v2) = *(this + 91);
    *(this + 91) = *(a2 + 91);
    *(a2 + 91) = v2;
    LODWORD(v2) = *(this + 24);
    *(this + 24) = *(a2 + 24);
    *(a2 + 24) = v2;
    LODWORD(v2) = *(this + 23);
    *(this + 23) = *(a2 + 23);
    *(a2 + 23) = v2;
  }

  return result;
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::MapVector::SharedCtor(uint64_t this)
{
  *(this + 8) = 0;
  *(this + 16) = 0;
  *(this + 32) = 0;
  *(this + 24) = 0;
  return this;
}

CoreNavigation::CLP::LogEntry::PrivateData::MapVector *CoreNavigation::CLP::LogEntry::PrivateData::MapVector::MapVector(CoreNavigation::CLP::LogEntry::PrivateData::MapVector *this, const CoreNavigation::CLP::LogEntry::PrivateData::MapVector *a2)
{
  *this = &unk_1F4CDA608;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 3) = 0;
  *(this + 8) = 0;
  CoreNavigation::CLP::LogEntry::PrivateData::MapVector::MergeFrom(this, a2);
  return this;
}

void CoreNavigation::CLP::LogEntry::PrivateData::MapVector::MergeFrom(CoreNavigation::CLP::LogEntry::PrivateData::MapVector *this, const CoreNavigation::CLP::LogEntry::PrivateData::MapVector *a2)
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
        v6 = *(CoreNavigation::CLP::LogEntry::PrivateData::MapVector::default_instance_ + 8);
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
      v9 = *(CoreNavigation::CLP::LogEntry::PrivateData::MapVector::default_instance_ + 16);
    }

    CoreNavigation::CLP::LogEntry::PrivateData::DirectionOfTravel::MergeFrom(v8, v9);
  }
}

void sub_1D0CD536C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void CoreNavigation::CLP::LogEntry::PrivateData::MapVector::~MapVector(CoreNavigation::CLP::LogEntry::PrivateData::MapVector *this)
{
  *this = &unk_1F4CDA608;
  CoreNavigation::CLP::LogEntry::PrivateData::MapVector::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  CoreNavigation::CLP::LogEntry::PrivateData::MapVector::~MapVector(this);

  JUMPOUT(0x1D387ECA0);
}

void CoreNavigation::CLP::LogEntry::PrivateData::MapVector::SharedDtor(CoreNavigation::CLP::LogEntry::PrivateData::MapVector *this)
{
  CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(this);
  if (CoreNavigation::CLP::LogEntry::PrivateData::MapVector::default_instance_ != this)
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

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::MapVector::Clear(uint64_t this)
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
        this = CoreNavigation::CLP::LogEntry::PrivateData::DirectionOfTravel::Clear(this);
      }
    }
  }

  *(v1 + 32) = 0;
  return this;
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::MapVector::MergePartialFromCodedStream(CoreNavigation::CLP::LogEntry::PrivateData::MapVector *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
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
          if (!CoreNavigation::CLP::LogEntry::PrivateData::DirectionOfTravel::MergePartialFromCodedStream(v24, a2, v28) || *(a2 + 36) != 1)
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

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::MapVector::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
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
    v7 = *(CoreNavigation::CLP::LogEntry::PrivateData::MapVector::default_instance_ + 8);
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
    v8 = *(CoreNavigation::CLP::LogEntry::PrivateData::MapVector::default_instance_ + 16);
  }

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(3, v8, a2, a4);
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::MapVector::ByteSize(CoreNavigation::CLP::LogEntry::PrivateData::MapVector *this, unsigned int a2)
{
  LOBYTE(v3) = *(this + 32);
  if (!v3)
  {
    v4 = 0;
    goto LABEL_25;
  }

  if (*(this + 32))
  {
    v5 = *(this + 1);
    if (!v5)
    {
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(this);
      v5 = *(CoreNavigation::CLP::LogEntry::PrivateData::MapVector::default_instance_ + 8);
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
      v10 = *(CoreNavigation::CLP::LogEntry::PrivateData::MapVector::default_instance_ + 16);
    }

    v4 = v4 + CoreNavigation::CLP::LogEntry::PrivateData::DirectionOfTravel::ByteSize(v10) + 2;
  }

LABEL_25:
  *(this + 7) = v4;
  return v4;
}

void CoreNavigation::CLP::LogEntry::PrivateData::MapVector::CheckTypeAndMergeFrom(CoreNavigation::CLP::LogEntry::PrivateData::MapVector *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  CoreNavigation::CLP::LogEntry::PrivateData::MapVector::MergeFrom(this, lpsrc);
}

void CoreNavigation::CLP::LogEntry::PrivateData::MapVector::CopyFrom(CoreNavigation::CLP::LogEntry::PrivateData::MapVector *this, const CoreNavigation::CLP::LogEntry::PrivateData::MapVector *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    CoreNavigation::CLP::LogEntry::PrivateData::MapVector::MergeFrom(this, a2);
  }
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::MapVector::Swap(uint64_t this, CoreNavigation::CLP::LogEntry::PrivateData::MapVector *a2)
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

double CoreNavigation::CLP::LogEntry::PrivateData::TunnelBridgeAssistance::SharedCtor(CoreNavigation::CLP::LogEntry::PrivateData::TunnelBridgeAssistance *this)
{
  result = 0.0;
  *(this + 36) = 0u;
  *(this + 24) = 0u;
  *(this + 8) = 0u;
  return result;
}

CoreNavigation::CLP::LogEntry::PrivateData::TunnelBridgeAssistance *CoreNavigation::CLP::LogEntry::PrivateData::TunnelBridgeAssistance::TunnelBridgeAssistance(CoreNavigation::CLP::LogEntry::PrivateData::TunnelBridgeAssistance *this, const CoreNavigation::CLP::LogEntry::PrivateData::TunnelBridgeAssistance *a2)
{
  *this = &unk_1F4CDA680;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 36) = 0u;
  CoreNavigation::CLP::LogEntry::PrivateData::TunnelBridgeAssistance::MergeFrom(this, a2);
  return this;
}

void CoreNavigation::CLP::LogEntry::PrivateData::TunnelBridgeAssistance::MergeFrom(CoreNavigation::CLP::LogEntry::PrivateData::TunnelBridgeAssistance *this, const CoreNavigation::CLP::LogEntry::PrivateData::TunnelBridgeAssistance *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v14);
  }

  LOBYTE(v4) = *(a2 + 48);
  if (v4)
  {
    if (*(a2 + 48))
    {
      *(this + 12) |= 1u;
      v6 = *(this + 1);
      if (!v6)
      {
        operator new();
      }

      v7 = *(a2 + 1);
      if (!v7)
      {
        CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(this);
        v7 = *(CoreNavigation::CLP::LogEntry::PrivateData::TunnelBridgeAssistance::default_instance_ + 8);
      }

      CoreNavigation::CLP::LogEntry::PrivateData::TimeStamp::MergeFrom(v6, v7);
      v4 = *(a2 + 12);
      if ((v4 & 2) == 0)
      {
LABEL_6:
        if ((v4 & 4) == 0)
        {
          goto LABEL_7;
        }

        goto LABEL_20;
      }
    }

    else if ((*(a2 + 48) & 2) == 0)
    {
      goto LABEL_6;
    }

    v8 = *(a2 + 2);
    *(this + 12) |= 2u;
    *(this + 2) = v8;
    v4 = *(a2 + 12);
    if ((v4 & 4) == 0)
    {
LABEL_7:
      if ((v4 & 8) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_21;
    }

LABEL_20:
    v9 = *(a2 + 3);
    *(this + 12) |= 4u;
    *(this + 3) = v9;
    v4 = *(a2 + 12);
    if ((v4 & 8) == 0)
    {
LABEL_8:
      if ((v4 & 0x10) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_22;
    }

LABEL_21:
    v10 = *(a2 + 4);
    *(this + 12) |= 8u;
    *(this + 4) = v10;
    v4 = *(a2 + 12);
    if ((v4 & 0x10) == 0)
    {
LABEL_9:
      if ((v4 & 0x20) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_23;
    }

LABEL_22:
    v11 = *(a2 + 40);
    *(this + 12) |= 0x10u;
    *(this + 40) = v11;
    v4 = *(a2 + 12);
    if ((v4 & 0x20) == 0)
    {
LABEL_10:
      if ((v4 & 0x40) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_24;
    }

LABEL_23:
    v12 = *(a2 + 41);
    *(this + 12) |= 0x20u;
    *(this + 41) = v12;
    v4 = *(a2 + 12);
    if ((v4 & 0x40) == 0)
    {
LABEL_11:
      if ((v4 & 0x80) == 0)
      {
        return;
      }

      goto LABEL_12;
    }

LABEL_24:
    v13 = *(a2 + 42);
    *(this + 12) |= 0x40u;
    *(this + 42) = v13;
    if ((*(a2 + 12) & 0x80) == 0)
    {
      return;
    }

LABEL_12:
    v5 = *(a2 + 43);
    *(this + 12) |= 0x80u;
    *(this + 43) = v5;
  }
}

void sub_1D0CD5EE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void CoreNavigation::CLP::LogEntry::PrivateData::TunnelBridgeAssistance::~TunnelBridgeAssistance(CoreNavigation::CLP::LogEntry::PrivateData::TunnelBridgeAssistance *this)
{
  *this = &unk_1F4CDA680;
  CoreNavigation::CLP::LogEntry::PrivateData::TunnelBridgeAssistance::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  CoreNavigation::CLP::LogEntry::PrivateData::TunnelBridgeAssistance::~TunnelBridgeAssistance(this);

  JUMPOUT(0x1D387ECA0);
}

void CoreNavigation::CLP::LogEntry::PrivateData::TunnelBridgeAssistance::SharedDtor(CoreNavigation::CLP::LogEntry::PrivateData::TunnelBridgeAssistance *this)
{
  CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(this);
  if (CoreNavigation::CLP::LogEntry::PrivateData::TunnelBridgeAssistance::default_instance_ != this)
  {
    v2 = *(this + 1);
    if (v2)
    {
      v3 = *(*v2 + 8);

      v3();
    }
  }
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::TunnelBridgeAssistance::Clear(uint64_t this)
{
  if (*(this + 48))
  {
    if (*(this + 48))
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
    *(this + 40) = 0;
    *(this + 32) = 0;
  }

  *(this + 48) = 0;
  return this;
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::TunnelBridgeAssistance::MergePartialFromCodedStream(CoreNavigation::CLP::LogEntry::PrivateData::TunnelBridgeAssistance *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
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
        if (TagFallback >> 3 > 6)
        {
          if (v7 == 7)
          {
            if ((TagFallback & 7) == 0)
            {
              v15 = *(a2 + 1);
              v9 = *(a2 + 2);
              goto LABEL_77;
            }
          }

          else if (v7 == 8 && (TagFallback & 7) == 0)
          {
            v11 = *(a2 + 1);
            v9 = *(a2 + 2);
            goto LABEL_85;
          }
        }

        else if (v7 == 5)
        {
          if ((TagFallback & 7) == 0)
          {
            v14 = *(a2 + 1);
            v9 = *(a2 + 2);
            goto LABEL_61;
          }
        }

        else if (v7 == 6 && (TagFallback & 7) == 0)
        {
          v10 = *(a2 + 1);
          v9 = *(a2 + 2);
          goto LABEL_69;
        }

        goto LABEL_36;
      }

      if (TagFallback >> 3 > 2)
      {
        if (v7 == 3)
        {
          if (v8 == 1)
          {
            goto LABEL_53;
          }
        }

        else if (v7 == 4 && v8 == 1)
        {
          goto LABEL_57;
        }

        goto LABEL_36;
      }

      if (v7 == 1)
      {
        break;
      }

      if (v7 == 2 && v8 == 1)
      {
        goto LABEL_49;
      }

LABEL_36:
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
      goto LABEL_36;
    }

    *(this + 12) |= 1u;
    v12 = *(this + 1);
    if (!v12)
    {
      operator new();
    }

    v35[0] = 0;
    v13 = *(a2 + 1);
    if (v13 >= *(a2 + 2) || *v13 < 0)
    {
      if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v35))
      {
        return 0;
      }
    }

    else
    {
      v35[0] = *v13;
      *(a2 + 1) = v13 + 1;
    }

    v16 = *(a2 + 14);
    v17 = *(a2 + 15);
    *(a2 + 14) = v16 + 1;
    if (v16 >= v17)
    {
      return 0;
    }

    wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
    if (!CoreNavigation::CLP::LogEntry::PrivateData::TimeStamp::MergePartialFromCodedStream(v12, a2, v18) || *(a2 + 36) != 1)
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
    if (v22 < *(a2 + 2) && *v22 == 17)
    {
      *(a2 + 1) = v22 + 1;
LABEL_49:
      *v35 = 0;
      if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v35) & 1) == 0)
      {
        return 0;
      }

      *(this + 2) = *v35;
      *(this + 12) |= 2u;
      v23 = *(a2 + 1);
      if (v23 < *(a2 + 2) && *v23 == 25)
      {
        *(a2 + 1) = v23 + 1;
LABEL_53:
        *v35 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v35) & 1) == 0)
        {
          return 0;
        }

        *(this + 3) = *v35;
        *(this + 12) |= 4u;
        v24 = *(a2 + 1);
        if (v24 < *(a2 + 2) && *v24 == 33)
        {
          *(a2 + 1) = v24 + 1;
LABEL_57:
          *v35 = 0;
          if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v35) & 1) == 0)
          {
            return 0;
          }

          *(this + 4) = *v35;
          *(this + 12) |= 8u;
          v25 = *(a2 + 1);
          v9 = *(a2 + 2);
          if (v25 < v9 && *v25 == 40)
          {
            v14 = v25 + 1;
            *(a2 + 1) = v14;
LABEL_61:
            v35[0] = 0;
            if (v14 >= v9 || (v26 = *v14, (v26 & 0x80000000) != 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v35);
              if (!result)
              {
                return result;
              }

              v26 = v35[0];
              v27 = *(a2 + 1);
              v9 = *(a2 + 2);
            }

            else
            {
              v27 = v14 + 1;
              *(a2 + 1) = v27;
            }

            *(this + 40) = v26 != 0;
            *(this + 12) |= 0x10u;
            if (v27 < v9 && *v27 == 48)
            {
              v10 = v27 + 1;
              *(a2 + 1) = v10;
LABEL_69:
              v35[0] = 0;
              if (v10 >= v9 || (v29 = *v10, (v29 & 0x80000000) != 0))
              {
                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v35);
                if (!result)
                {
                  return result;
                }

                v29 = v35[0];
                v30 = *(a2 + 1);
                v9 = *(a2 + 2);
              }

              else
              {
                v30 = v10 + 1;
                *(a2 + 1) = v30;
              }

              *(this + 41) = v29 != 0;
              *(this + 12) |= 0x20u;
              if (v30 < v9 && *v30 == 56)
              {
                v15 = v30 + 1;
                *(a2 + 1) = v15;
LABEL_77:
                v35[0] = 0;
                if (v15 >= v9 || (v31 = *v15, (v31 & 0x80000000) != 0))
                {
                  result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v35);
                  if (!result)
                  {
                    return result;
                  }

                  v31 = v35[0];
                  v32 = *(a2 + 1);
                  v9 = *(a2 + 2);
                }

                else
                {
                  v32 = v15 + 1;
                  *(a2 + 1) = v32;
                }

                *(this + 42) = v31 != 0;
                *(this + 12) |= 0x40u;
                if (v32 < v9 && *v32 == 64)
                {
                  v11 = v32 + 1;
                  *(a2 + 1) = v11;
LABEL_85:
                  v35[0] = 0;
                  if (v11 >= v9 || (v33 = *v11, (v33 & 0x80000000) != 0))
                  {
                    result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v35);
                    if (!result)
                    {
                      return result;
                    }

                    v33 = v35[0];
                    v34 = *(a2 + 1);
                    v9 = *(a2 + 2);
                  }

                  else
                  {
                    v34 = v11 + 1;
                    *(a2 + 1) = v34;
                  }

                  *(this + 43) = v33 != 0;
                  *(this + 12) |= 0x80u;
                  if (v34 == v9 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
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

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::TunnelBridgeAssistance::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 48);
  if (v6)
  {
    v7 = *(this + 8);
    if (!v7)
    {
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(this);
      v7 = *(CoreNavigation::CLP::LogEntry::PrivateData::TunnelBridgeAssistance::default_instance_ + 8);
    }

    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(1, v7, a2, a4);
    v6 = *(v5 + 48);
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

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(2, a2, *(v5 + 16), a3);
  v6 = *(v5 + 48);
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
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(3, a2, *(v5 + 24), a3);
  v6 = *(v5 + 48);
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
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(4, a2, *(v5 + 32), a3);
  v6 = *(v5 + 48);
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
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(5, *(v5 + 40), a2, a4);
  v6 = *(v5 + 48);
  if ((v6 & 0x20) == 0)
  {
LABEL_7:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_8;
    }

LABEL_18:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(7, *(v5 + 42), a2, a4);
    if ((*(v5 + 48) & 0x80) == 0)
    {
      return this;
    }

    goto LABEL_19;
  }

LABEL_17:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(6, *(v5 + 41), a2, a4);
  v6 = *(v5 + 48);
  if ((v6 & 0x40) != 0)
  {
    goto LABEL_18;
  }

LABEL_8:
  if ((v6 & 0x80) == 0)
  {
    return this;
  }

LABEL_19:
  v8 = *(v5 + 43);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(8, v8, a2, a4);
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::TunnelBridgeAssistance::ByteSize(CoreNavigation::CLP::LogEntry::PrivateData::TunnelBridgeAssistance *this)
{
  v2 = *(this + 12);
  if (v2)
  {
    if (v2)
    {
      v5 = *(this + 1);
      if (!v5)
      {
        CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(this);
        v5 = *(CoreNavigation::CLP::LogEntry::PrivateData::TunnelBridgeAssistance::default_instance_ + 8);
      }

      v6 = *(v5 + 36);
      v7 = (v6 << 31 >> 31) & 9;
      if ((v6 & 2) != 0)
      {
        v7 += 9;
      }

      if ((v6 & 4) != 0)
      {
        v7 += 9;
      }

      if (*(v5 + 36))
      {
        v8 = v7;
      }

      else
      {
        v8 = 0;
      }

      *(v5 + 32) = v8;
      v3 = v8 + 2;
      v2 = *(this + 12);
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
      v3 += 9;
    }

    if ((v2 & 8) != 0)
    {
      v3 += 9;
    }

    v9.i64[0] = 0x200000002;
    v9.i64[1] = 0x200000002;
    result = (vaddvq_s32(vandq_s8(vshlq_u32(vdupq_n_s32(v2), xmmword_1D0E7A300), v9)) + v3);
  }

  else
  {
    result = 0;
  }

  *(this + 11) = result;
  return result;
}

void CoreNavigation::CLP::LogEntry::PrivateData::TunnelBridgeAssistance::CheckTypeAndMergeFrom(CoreNavigation::CLP::LogEntry::PrivateData::TunnelBridgeAssistance *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  CoreNavigation::CLP::LogEntry::PrivateData::TunnelBridgeAssistance::MergeFrom(this, lpsrc);
}

void CoreNavigation::CLP::LogEntry::PrivateData::TunnelBridgeAssistance::CopyFrom(CoreNavigation::CLP::LogEntry::PrivateData::TunnelBridgeAssistance *this, const CoreNavigation::CLP::LogEntry::PrivateData::TunnelBridgeAssistance *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    CoreNavigation::CLP::LogEntry::PrivateData::TunnelBridgeAssistance::MergeFrom(this, a2);
  }
}

double CoreNavigation::CLP::LogEntry::PrivateData::TunnelBridgeAssistance::Swap(CoreNavigation::CLP::LogEntry::PrivateData::TunnelBridgeAssistance *this, CoreNavigation::CLP::LogEntry::PrivateData::TunnelBridgeAssistance *a2)
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
    LOBYTE(v2) = *(this + 40);
    *(this + 40) = *(a2 + 40);
    *(a2 + 40) = v2;
    LOBYTE(v2) = *(this + 41);
    *(this + 41) = *(a2 + 41);
    *(a2 + 41) = v2;
    LOBYTE(v2) = *(this + 42);
    *(this + 42) = *(a2 + 42);
    *(a2 + 42) = v2;
    LOBYTE(v2) = *(this + 43);
    *(this + 43) = *(a2 + 43);
    *(a2 + 43) = v2;
    LODWORD(v2) = *(this + 12);
    *(this + 12) = *(a2 + 12);
    *(a2 + 12) = v2;
    LODWORD(v2) = *(this + 11);
    *(this + 11) = *(a2 + 11);
    *(a2 + 11) = v2;
  }

  return result;
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::TunnelBridgeNotification::SharedCtor(uint64_t this)
{
  *(this + 8) = 0;
  *(this + 16) = 0;
  *(this + 32) = 0;
  *(this + 24) = 0;
  return this;
}

CoreNavigation::CLP::LogEntry::PrivateData::TunnelBridgeNotification *CoreNavigation::CLP::LogEntry::PrivateData::TunnelBridgeNotification::TunnelBridgeNotification(CoreNavigation::CLP::LogEntry::PrivateData::TunnelBridgeNotification *this, const CoreNavigation::CLP::LogEntry::PrivateData::TunnelBridgeNotification *a2)
{
  *this = &unk_1F4CDA6F8;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 3) = 0;
  *(this + 8) = 0;
  CoreNavigation::CLP::LogEntry::PrivateData::TunnelBridgeNotification::MergeFrom(this, a2);
  return this;
}

void CoreNavigation::CLP::LogEntry::PrivateData::TunnelBridgeNotification::MergeFrom(CoreNavigation::CLP::LogEntry::PrivateData::TunnelBridgeNotification *this, const CoreNavigation::CLP::LogEntry::PrivateData::TunnelBridgeNotification *a2)
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
        v6 = *(CoreNavigation::CLP::LogEntry::PrivateData::TunnelBridgeNotification::default_instance_ + 8);
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
      v9 = *(CoreNavigation::CLP::LogEntry::PrivateData::TunnelBridgeNotification::default_instance_ + 16);
    }

    CoreNavigation::CLP::LogEntry::PrivateData::TunnelBridgeAssistance::MergeFrom(v8, v9);
  }
}

void sub_1D0CD6BF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void CoreNavigation::CLP::LogEntry::PrivateData::TunnelBridgeNotification::~TunnelBridgeNotification(CoreNavigation::CLP::LogEntry::PrivateData::TunnelBridgeNotification *this)
{
  *this = &unk_1F4CDA6F8;
  CoreNavigation::CLP::LogEntry::PrivateData::TunnelBridgeNotification::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  CoreNavigation::CLP::LogEntry::PrivateData::TunnelBridgeNotification::~TunnelBridgeNotification(this);

  JUMPOUT(0x1D387ECA0);
}

void CoreNavigation::CLP::LogEntry::PrivateData::TunnelBridgeNotification::SharedDtor(CoreNavigation::CLP::LogEntry::PrivateData::TunnelBridgeNotification *this)
{
  CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(this);
  if (CoreNavigation::CLP::LogEntry::PrivateData::TunnelBridgeNotification::default_instance_ != this)
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

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::TunnelBridgeNotification::Clear(uint64_t this)
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
        this = CoreNavigation::CLP::LogEntry::PrivateData::TunnelBridgeAssistance::Clear(this);
      }
    }
  }

  *(v1 + 32) = 0;
  return this;
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::TunnelBridgeNotification::MergePartialFromCodedStream(CoreNavigation::CLP::LogEntry::PrivateData::TunnelBridgeNotification *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
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
          if (!CoreNavigation::CLP::LogEntry::PrivateData::TunnelBridgeAssistance::MergePartialFromCodedStream(v24, a2, v28) || *(a2 + 36) != 1)
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

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::TunnelBridgeNotification::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
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
    v7 = *(CoreNavigation::CLP::LogEntry::PrivateData::TunnelBridgeNotification::default_instance_ + 8);
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
    v8 = *(CoreNavigation::CLP::LogEntry::PrivateData::TunnelBridgeNotification::default_instance_ + 16);
  }

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(3, v8, a2, a4);
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::TunnelBridgeNotification::ByteSize(CoreNavigation::CLP::LogEntry::PrivateData::TunnelBridgeNotification *this, unsigned int a2)
{
  LOBYTE(v3) = *(this + 32);
  if (!v3)
  {
    v4 = 0;
    goto LABEL_25;
  }

  if (*(this + 32))
  {
    v5 = *(this + 1);
    if (!v5)
    {
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(this);
      v5 = *(CoreNavigation::CLP::LogEntry::PrivateData::TunnelBridgeNotification::default_instance_ + 8);
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
      v10 = *(CoreNavigation::CLP::LogEntry::PrivateData::TunnelBridgeNotification::default_instance_ + 16);
    }

    v4 = v4 + CoreNavigation::CLP::LogEntry::PrivateData::TunnelBridgeAssistance::ByteSize(v10) + 2;
  }

LABEL_25:
  *(this + 7) = v4;
  return v4;
}

void CoreNavigation::CLP::LogEntry::PrivateData::TunnelBridgeNotification::CheckTypeAndMergeFrom(CoreNavigation::CLP::LogEntry::PrivateData::TunnelBridgeNotification *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  CoreNavigation::CLP::LogEntry::PrivateData::TunnelBridgeNotification::MergeFrom(this, lpsrc);
}

void CoreNavigation::CLP::LogEntry::PrivateData::TunnelBridgeNotification::CopyFrom(CoreNavigation::CLP::LogEntry::PrivateData::TunnelBridgeNotification *this, const CoreNavigation::CLP::LogEntry::PrivateData::TunnelBridgeNotification *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    CoreNavigation::CLP::LogEntry::PrivateData::TunnelBridgeNotification::MergeFrom(this, a2);
  }
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::TunnelBridgeNotification::Swap(uint64_t this, CoreNavigation::CLP::LogEntry::PrivateData::TunnelBridgeNotification *a2)
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

double CoreNavigation::CLP::LogEntry::PrivateData::TunnelEndPointAssistance::SharedCtor(CoreNavigation::CLP::LogEntry::PrivateData::TunnelEndPointAssistance *this)
{
  *(this + 69) = 0;
  result = 0.0;
  *(this + 56) = 0u;
  *(this + 40) = 0u;
  *(this + 24) = 0u;
  *(this + 8) = 0u;
  *(this + 5) = 0u;
  *(this + 6) = 0u;
  *(this + 7) = 0u;
  return result;
}

CoreNavigation::CLP::LogEntry::PrivateData::TunnelEndPointAssistance *CoreNavigation::CLP::LogEntry::PrivateData::TunnelEndPointAssistance::TunnelEndPointAssistance(CoreNavigation::CLP::LogEntry::PrivateData::TunnelEndPointAssistance *this, const CoreNavigation::CLP::LogEntry::PrivateData::TunnelEndPointAssistance *a2)
{
  *this = &unk_1F4CDA770;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 69) = 0;
  *(this + 5) = 0u;
  *(this + 6) = 0u;
  *(this + 7) = 0u;
  CoreNavigation::CLP::LogEntry::PrivateData::TunnelEndPointAssistance::MergeFrom(this, a2);
  return this;
}

double CoreNavigation::CLP::LogEntry::PrivateData::TunnelEndPointAssistance::MergeFrom(CoreNavigation::CLP::LogEntry::PrivateData::TunnelEndPointAssistance *this, const CoreNavigation::CLP::LogEntry::PrivateData::TunnelEndPointAssistance *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v10);
  }

  v5 = *(a2 + 31);
  if (!v5)
  {
    goto LABEL_13;
  }

  if (v5)
  {
    *(this + 31) |= 1u;
    v6 = *(this + 1);
    if (!v6)
    {
      operator new();
    }

    v7 = *(a2 + 1);
    if (!v7)
    {
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(this);
      v7 = *(CoreNavigation::CLP::LogEntry::PrivateData::TunnelEndPointAssistance::default_instance_ + 8);
    }

    result = CoreNavigation::CLP::LogEntry::PrivateData::TimeStamp::MergeFrom(v6, v7);
    v5 = *(a2 + 31);
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

  result = *(a2 + 2);
  *(this + 31) |= 2u;
  *(this + 2) = result;
  v5 = *(a2 + 31);
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
  result = *(a2 + 3);
  *(this + 31) |= 4u;
  *(this + 3) = result;
  v5 = *(a2 + 31);
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
  result = *(a2 + 4);
  *(this + 31) |= 8u;
  *(this + 4) = result;
  v5 = *(a2 + 31);
  if ((v5 & 0x10) == 0)
  {
LABEL_9:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_10;
    }

LABEL_32:
    result = *(a2 + 6);
    *(this + 31) |= 0x20u;
    *(this + 6) = result;
    v5 = *(a2 + 31);
    if ((v5 & 0x40) == 0)
    {
LABEL_11:
      if ((v5 & 0x80) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_12;
    }

    goto LABEL_33;
  }

LABEL_31:
  result = *(a2 + 5);
  *(this + 31) |= 0x10u;
  *(this + 5) = result;
  v5 = *(a2 + 31);
  if ((v5 & 0x20) != 0)
  {
    goto LABEL_32;
  }

LABEL_10:
  if ((v5 & 0x40) == 0)
  {
    goto LABEL_11;
  }

LABEL_33:
  v8 = *(a2 + 18);
  if (v8 >= 3)
  {
    __assert_rtn("set_reference_frame", "CoreNavigationCLPPrivateDataShared.pb.h", 20659, "::CoreNavigation::CLP::LogEntry::PrivateData::ClientLocationReferenceFrameType_IsValid(value)");
  }

  *(this + 31) |= 0x40u;
  *(this + 18) = v8;
  v5 = *(a2 + 31);
  if ((v5 & 0x80) != 0)
  {
LABEL_12:
    result = *(a2 + 7);
    *(this + 31) |= 0x80u;
    *(this + 7) = result;
    v5 = *(a2 + 31);
  }

LABEL_13:
  if ((v5 & 0xFF00) == 0)
  {
    return result;
  }

  if ((v5 & 0x100) != 0)
  {
    result = *(a2 + 8);
    *(this + 31) |= 0x100u;
    *(this + 8) = result;
    v5 = *(a2 + 31);
    if ((v5 & 0x200) == 0)
    {
LABEL_16:
      if ((v5 & 0x400) == 0)
      {
        goto LABEL_17;
      }

      goto LABEL_38;
    }
  }

  else if ((v5 & 0x200) == 0)
  {
    goto LABEL_16;
  }

  result = *(a2 + 10);
  *(this + 31) |= 0x200u;
  *(this + 10) = result;
  v5 = *(a2 + 31);
  if ((v5 & 0x400) == 0)
  {
LABEL_17:
    if ((v5 & 0x800) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_39;
  }

LABEL_38:
  v9 = *(a2 + 76);
  *(this + 31) |= 0x400u;
  *(this + 76) = v9;
  v5 = *(a2 + 31);
  if ((v5 & 0x800) == 0)
  {
LABEL_18:
    if ((v5 & 0x1000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_40;
  }

LABEL_39:
  result = *(a2 + 11);
  *(this + 31) |= 0x800u;
  *(this + 11) = result;
  v5 = *(a2 + 31);
  if ((v5 & 0x1000) == 0)
  {
LABEL_19:
    if ((v5 & 0x2000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_41;
  }

LABEL_40:
  result = *(a2 + 12);
  *(this + 31) |= 0x1000u;
  *(this + 12) = result;
  v5 = *(a2 + 31);
  if ((v5 & 0x2000) == 0)
  {
LABEL_20:
    if ((v5 & 0x4000) == 0)
    {
      return result;
    }

    goto LABEL_21;
  }

LABEL_41:
  result = *(a2 + 13);
  *(this + 31) |= 0x2000u;
  *(this + 13) = result;
  if ((*(a2 + 31) & 0x4000) != 0)
  {
LABEL_21:
    result = *(a2 + 14);
    *(this + 31) |= 0x4000u;
    *(this + 14) = result;
  }

  return result;
}

void sub_1D0CD78A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void CoreNavigation::CLP::LogEntry::PrivateData::TunnelEndPointAssistance::~TunnelEndPointAssistance(CoreNavigation::CLP::LogEntry::PrivateData::TunnelEndPointAssistance *this)
{
  *this = &unk_1F4CDA770;
  CoreNavigation::CLP::LogEntry::PrivateData::TunnelEndPointAssistance::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  CoreNavigation::CLP::LogEntry::PrivateData::TunnelEndPointAssistance::~TunnelEndPointAssistance(this);

  JUMPOUT(0x1D387ECA0);
}

void CoreNavigation::CLP::LogEntry::PrivateData::TunnelEndPointAssistance::SharedDtor(CoreNavigation::CLP::LogEntry::PrivateData::TunnelEndPointAssistance *this)
{
  CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(this);
  if (CoreNavigation::CLP::LogEntry::PrivateData::TunnelEndPointAssistance::default_instance_ != this)
  {
    v2 = *(this + 1);
    if (v2)
    {
      v3 = *(*v2 + 8);

      v3();
    }
  }
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::TunnelEndPointAssistance::Clear(uint64_t this)
{
  v1 = *(this + 124);
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
        v1 = *(this + 124);
      }
    }

    *(this + 72) = 0;
    *(this + 16) = 0u;
    *(this + 32) = 0u;
    *(this + 48) = 0u;
  }

  if ((v1 & 0xFF00) != 0)
  {
    *(this + 64) = 0;
    *(this + 76) = 0;
    *(this + 80) = 0u;
    *(this + 96) = 0u;
    *(this + 112) = 0;
  }

  *(this + 124) = 0;
  return this;
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::TunnelEndPointAssistance::MergePartialFromCodedStream(CoreNavigation::CLP::LogEntry::PrivateData::TunnelEndPointAssistance *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
{
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
        if (v7 != 2)
        {
          goto LABEL_40;
        }

        *(this + 31) |= 1u;
        v8 = *(this + 1);
        if (!v8)
        {
          operator new();
        }

        v37[0] = 0;
        v9 = *(a2 + 1);
        if (v9 >= *(a2 + 2) || *v9 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v37))
          {
            return 0;
          }
        }

        else
        {
          v37[0] = *v9;
          *(a2 + 1) = v9 + 1;
        }

        v14 = *(a2 + 14);
        v15 = *(a2 + 15);
        *(a2 + 14) = v14 + 1;
        if (v14 >= v15)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
        if (!CoreNavigation::CLP::LogEntry::PrivateData::TimeStamp::MergePartialFromCodedStream(v8, a2, v16) || *(a2 + 36) != 1)
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
        if (v20 >= *(a2 + 2) || *v20 != 17)
        {
          continue;
        }

        *(a2 + 1) = v20 + 1;
        goto LABEL_52;
      case 2u:
        if (v7 != 1)
        {
          goto LABEL_40;
        }

LABEL_52:
        *v37 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v37) & 1) == 0)
        {
          return 0;
        }

        *(this + 2) = *v37;
        *(this + 31) |= 2u;
        v21 = *(a2 + 1);
        if (v21 >= *(a2 + 2) || *v21 != 25)
        {
          continue;
        }

        *(a2 + 1) = v21 + 1;
LABEL_56:
        *v37 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v37) & 1) == 0)
        {
          return 0;
        }

        *(this + 3) = *v37;
        *(this + 31) |= 4u;
        v22 = *(a2 + 1);
        if (v22 >= *(a2 + 2) || *v22 != 33)
        {
          continue;
        }

        *(a2 + 1) = v22 + 1;
LABEL_60:
        *v37 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v37) & 1) == 0)
        {
          return 0;
        }

        *(this + 4) = *v37;
        *(this + 31) |= 8u;
        v23 = *(a2 + 1);
        if (v23 >= *(a2 + 2) || *v23 != 41)
        {
          continue;
        }

        *(a2 + 1) = v23 + 1;
LABEL_64:
        *v37 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v37) & 1) == 0)
        {
          return 0;
        }

        *(this + 5) = *v37;
        *(this + 31) |= 0x10u;
        v24 = *(a2 + 1);
        if (v24 >= *(a2 + 2) || *v24 != 49)
        {
          continue;
        }

        *(a2 + 1) = v24 + 1;
LABEL_68:
        *v37 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v37) & 1) == 0)
        {
          return 0;
        }

        *(this + 6) = *v37;
        *(this + 31) |= 0x20u;
        v25 = *(a2 + 1);
        v10 = *(a2 + 2);
        if (v25 >= v10 || *v25 != 56)
        {
          continue;
        }

        v11 = v25 + 1;
        *(a2 + 1) = v11;
LABEL_72:
        v37[0] = 0;
        if (v11 >= v10 || (v26 = *v11, (v26 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v37);
          if (!result)
          {
            return result;
          }

          v26 = v37[0];
        }

        else
        {
          *(a2 + 1) = v11 + 1;
        }

        if (v26 <= 2)
        {
          *(this + 31) |= 0x40u;
          *(this + 18) = v26;
        }

        v28 = *(a2 + 1);
        if (v28 >= *(a2 + 2) || *v28 != 65)
        {
          continue;
        }

        *(a2 + 1) = v28 + 1;
LABEL_82:
        *v37 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v37) & 1) == 0)
        {
          return 0;
        }

        *(this + 7) = *v37;
        *(this + 31) |= 0x80u;
        v29 = *(a2 + 1);
        if (v29 >= *(a2 + 2) || *v29 != 73)
        {
          continue;
        }

        *(a2 + 1) = v29 + 1;
LABEL_86:
        *v37 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v37) & 1) == 0)
        {
          return 0;
        }

        *(this + 8) = *v37;
        *(this + 31) |= 0x100u;
        v30 = *(a2 + 1);
        if (v30 >= *(a2 + 2) || *v30 != 81)
        {
          continue;
        }

        *(a2 + 1) = v30 + 1;
LABEL_90:
        *v37 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v37) & 1) == 0)
        {
          return 0;
        }

        *(this + 10) = *v37;
        *(this + 31) |= 0x200u;
        v31 = *(a2 + 1);
        v12 = *(a2 + 2);
        if (v31 >= v12 || *v31 != 88)
        {
          continue;
        }

        v13 = v31 + 1;
        *(a2 + 1) = v13;
LABEL_94:
        v37[0] = 0;
        if (v13 >= v12 || (v32 = *v13, (v32 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v37);
          if (!result)
          {
            return result;
          }

          v32 = v37[0];
          v33 = *(a2 + 1);
          v12 = *(a2 + 2);
        }

        else
        {
          v33 = v13 + 1;
          *(a2 + 1) = v33;
        }

        *(this + 76) = v32 != 0;
        *(this + 31) |= 0x400u;
        if (v33 >= v12 || *v33 != 97)
        {
          continue;
        }

        *(a2 + 1) = v33 + 1;
LABEL_102:
        *v37 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v37) & 1) == 0)
        {
          return 0;
        }

        *(this + 11) = *v37;
        *(this + 31) |= 0x800u;
        v34 = *(a2 + 1);
        if (v34 >= *(a2 + 2) || *v34 != 105)
        {
          continue;
        }

        *(a2 + 1) = v34 + 1;
LABEL_106:
        *v37 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v37) & 1) == 0)
        {
          return 0;
        }

        *(this + 12) = *v37;
        *(this + 31) |= 0x1000u;
        v35 = *(a2 + 1);
        if (v35 >= *(a2 + 2) || *v35 != 113)
        {
          continue;
        }

        *(a2 + 1) = v35 + 1;
LABEL_110:
        *v37 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v37) & 1) == 0)
        {
          return 0;
        }

        *(this + 13) = *v37;
        *(this + 31) |= 0x2000u;
        v36 = *(a2 + 1);
        if (v36 >= *(a2 + 2) || *v36 != 121)
        {
          continue;
        }

        *(a2 + 1) = v36 + 1;
LABEL_114:
        *v37 = 0;
        if (wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v37))
        {
          *(this + 14) = *v37;
          *(this + 31) |= 0x4000u;
          if (*(a2 + 1) == *(a2 + 2) && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
          {
            *(a2 + 8) = 0;
            result = 1;
            *(a2 + 36) = 1;
            return result;
          }

          continue;
        }

        return 0;
      case 3u:
        if (v7 == 1)
        {
          goto LABEL_56;
        }

        goto LABEL_40;
      case 4u:
        if (v7 == 1)
        {
          goto LABEL_60;
        }

        goto LABEL_40;
      case 5u:
        if (v7 == 1)
        {
          goto LABEL_64;
        }

        goto LABEL_40;
      case 6u:
        if (v7 == 1)
        {
          goto LABEL_68;
        }

        goto LABEL_40;
      case 7u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_40;
        }

        v11 = *(a2 + 1);
        v10 = *(a2 + 2);
        goto LABEL_72;
      case 8u:
        if (v7 == 1)
        {
          goto LABEL_82;
        }

        goto LABEL_40;
      case 9u:
        if (v7 != 1)
        {
          goto LABEL_40;
        }

        goto LABEL_86;
      case 0xAu:
        if (v7 == 1)
        {
          goto LABEL_90;
        }

        goto LABEL_40;
      case 0xBu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_40;
        }

        v13 = *(a2 + 1);
        v12 = *(a2 + 2);
        goto LABEL_94;
      case 0xCu:
        if (v7 == 1)
        {
          goto LABEL_102;
        }

        goto LABEL_40;
      case 0xDu:
        if (v7 == 1)
        {
          goto LABEL_106;
        }

        goto LABEL_40;
      case 0xEu:
        if (v7 == 1)
        {
          goto LABEL_110;
        }

        goto LABEL_40;
      case 0xFu:
        if (v7 == 1)
        {
          goto LABEL_114;
        }

        goto LABEL_40;
      default:
LABEL_40:
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
  }
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::TunnelEndPointAssistance::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 124);
  if (v6)
  {
    v7 = *(this + 8);
    if (!v7)
    {
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(this);
      v7 = *(CoreNavigation::CLP::LogEntry::PrivateData::TunnelEndPointAssistance::default_instance_ + 8);
    }

    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(1, v7, a2, a4);
    v6 = *(v5 + 124);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_21;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(2, a2, *(v5 + 16), a3);
  v6 = *(v5 + 124);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_22;
  }

LABEL_21:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(3, a2, *(v5 + 24), a3);
  v6 = *(v5 + 124);
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_23;
  }

LABEL_22:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(4, a2, *(v5 + 32), a3);
  v6 = *(v5 + 124);
  if ((v6 & 0x10) == 0)
  {
LABEL_6:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_24;
  }

LABEL_23:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(5, a2, *(v5 + 40), a3);
  v6 = *(v5 + 124);
  if ((v6 & 0x20) == 0)
  {
LABEL_7:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_25;
  }

LABEL_24:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(6, a2, *(v5 + 48), a3);
  v6 = *(v5 + 124);
  if ((v6 & 0x40) == 0)
  {
LABEL_8:
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_26;
  }

LABEL_25:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(7, *(v5 + 72), a2, a4);
  v6 = *(v5 + 124);
  if ((v6 & 0x80) == 0)
  {
LABEL_9:
    if ((v6 & 0x100) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_27;
  }

LABEL_26:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(8, a2, *(v5 + 56), a3);
  v6 = *(v5 + 124);
  if ((v6 & 0x100) == 0)
  {
LABEL_10:
    if ((v6 & 0x200) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_28;
  }

LABEL_27:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(9, a2, *(v5 + 64), a3);
  v6 = *(v5 + 124);
  if ((v6 & 0x200) == 0)
  {
LABEL_11:
    if ((v6 & 0x400) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_29;
  }

LABEL_28:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(0xA, a2, *(v5 + 80), a3);
  v6 = *(v5 + 124);
  if ((v6 & 0x400) == 0)
  {
LABEL_12:
    if ((v6 & 0x800) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_30;
  }

LABEL_29:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(0xB, *(v5 + 76), a2, a4);
  v6 = *(v5 + 124);
  if ((v6 & 0x800) == 0)
  {
LABEL_13:
    if ((v6 & 0x1000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_31;
  }

LABEL_30:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(0xC, a2, *(v5 + 88), a3);
  v6 = *(v5 + 124);
  if ((v6 & 0x1000) == 0)
  {
LABEL_14:
    if ((v6 & 0x2000) == 0)
    {
      goto LABEL_15;
    }

LABEL_32:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(0xE, a2, *(v5 + 104), a3);
    if ((*(v5 + 124) & 0x4000) == 0)
    {
      return this;
    }

    goto LABEL_33;
  }

LABEL_31:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(0xD, a2, *(v5 + 96), a3);
  v6 = *(v5 + 124);
  if ((v6 & 0x2000) != 0)
  {
    goto LABEL_32;
  }

LABEL_15:
  if ((v6 & 0x4000) == 0)
  {
    return this;
  }

LABEL_33:
  v8 = *(v5 + 112);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(0xF, a2, v8, a3);
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::TunnelEndPointAssistance::ByteSize(CoreNavigation::CLP::LogEntry::PrivateData::TunnelEndPointAssistance *this, unsigned int a2)
{
  v3 = *(this + 31);
  if (v3)
  {
    if (v3)
    {
      v6 = *(this + 1);
      if (!v6)
      {
        CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(this);
        v6 = *(CoreNavigation::CLP::LogEntry::PrivateData::TunnelEndPointAssistance::default_instance_ + 8);
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
      v3 = *(this + 31);
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
      v4 += 9;
    }

    if ((v3 & 0x10) != 0)
    {
      v4 += 9;
    }

    if ((v3 & 0x20) != 0)
    {
      v9 = v4 + 9;
    }

    else
    {
      v9 = v4;
    }

    if ((v3 & 0x40) != 0)
    {
      v10 = *(this + 18);
      if ((v10 & 0x80000000) != 0)
      {
        v11 = 11;
      }

      else if (v10 >= 0x80)
      {
        v11 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v10) + 1;
        v3 = *(this + 31);
      }

      else
      {
        v11 = 2;
      }

      v9 += v11;
    }

    if ((v3 & 0x80) != 0)
    {
      result = v9 + 9;
    }

    else
    {
      result = v9;
    }
  }

  else
  {
    result = 0;
  }

  if ((v3 & 0xFF00) != 0)
  {
    v12 = result + 9;
    if ((v3 & 0x100) == 0)
    {
      v12 = result;
    }

    if ((v3 & 0x200) != 0)
    {
      v12 += 9;
    }

    v13 = v12 + ((v3 >> 9) & 2);
    if ((v3 & 0x800) != 0)
    {
      v13 += 9;
    }

    if ((v3 & 0x1000) != 0)
    {
      v13 += 9;
    }

    if ((v3 & 0x2000) != 0)
    {
      v13 += 9;
    }

    if ((v3 & 0x4000) != 0)
    {
      result = v13 + 9;
    }

    else
    {
      result = v13;
    }
  }

  *(this + 30) = result;
  return result;
}

double CoreNavigation::CLP::LogEntry::PrivateData::TunnelEndPointAssistance::CheckTypeAndMergeFrom(CoreNavigation::CLP::LogEntry::PrivateData::TunnelEndPointAssistance *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  return CoreNavigation::CLP::LogEntry::PrivateData::TunnelEndPointAssistance::MergeFrom(this, lpsrc);
}

double CoreNavigation::CLP::LogEntry::PrivateData::TunnelEndPointAssistance::CopyFrom(CoreNavigation::CLP::LogEntry::PrivateData::TunnelEndPointAssistance *this, const CoreNavigation::CLP::LogEntry::PrivateData::TunnelEndPointAssistance *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    return CoreNavigation::CLP::LogEntry::PrivateData::TunnelEndPointAssistance::MergeFrom(this, a2);
  }

  return result;
}

double CoreNavigation::CLP::LogEntry::PrivateData::TunnelEndPointAssistance::Swap(CoreNavigation::CLP::LogEntry::PrivateData::TunnelEndPointAssistance *this, CoreNavigation::CLP::LogEntry::PrivateData::TunnelEndPointAssistance *a2)
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
    v5 = *(this + 4);
    *(this + 4) = *(a2 + 4);
    *(a2 + 4) = v5;
    v6 = *(this + 5);
    *(this + 5) = *(a2 + 5);
    *(a2 + 5) = v6;
    v7 = *(this + 6);
    *(this + 6) = *(a2 + 6);
    *(a2 + 6) = v7;
    LODWORD(v2) = *(this + 18);
    *(this + 18) = *(a2 + 18);
    *(a2 + 18) = v2;
    v8 = *(this + 7);
    *(this + 7) = *(a2 + 7);
    *(a2 + 7) = v8;
    v9 = *(this + 8);
    *(this + 8) = *(a2 + 8);
    *(a2 + 8) = v9;
    v10 = *(this + 10);
    *(this + 10) = *(a2 + 10);
    *(a2 + 10) = v10;
    LOBYTE(v2) = *(this + 76);
    *(this + 76) = *(a2 + 76);
    *(a2 + 76) = v2;
    v11 = *(this + 11);
    *(this + 11) = *(a2 + 11);
    *(a2 + 11) = v11;
    v12 = *(this + 12);
    *(this + 12) = *(a2 + 12);
    *(a2 + 12) = v12;
    v13 = *(this + 13);
    *(this + 13) = *(a2 + 13);
    *(a2 + 13) = v13;
    result = *(this + 14);
    *(this + 14) = *(a2 + 14);
    *(a2 + 14) = result;
    LODWORD(v2) = *(this + 31);
    *(this + 31) = *(a2 + 31);
    *(a2 + 31) = v2;
    LODWORD(v2) = *(this + 30);
    *(this + 30) = *(a2 + 30);
    *(a2 + 30) = v2;
  }

  return result;
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::TunnelEndPoint::SharedCtor(uint64_t this)
{
  *(this + 8) = 0;
  *(this + 16) = 0;
  *(this + 32) = 0;
  *(this + 24) = 0;
  return this;
}

CoreNavigation::CLP::LogEntry::PrivateData::TunnelEndPoint *CoreNavigation::CLP::LogEntry::PrivateData::TunnelEndPoint::TunnelEndPoint(CoreNavigation::CLP::LogEntry::PrivateData::TunnelEndPoint *this, const CoreNavigation::CLP::LogEntry::PrivateData::TunnelEndPoint *a2)
{
  *this = &unk_1F4CDA7E8;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 3) = 0;
  *(this + 8) = 0;
  CoreNavigation::CLP::LogEntry::PrivateData::TunnelEndPoint::MergeFrom(this, a2);
  return this;
}

double CoreNavigation::CLP::LogEntry::PrivateData::TunnelEndPoint::MergeFrom(CoreNavigation::CLP::LogEntry::PrivateData::TunnelEndPoint *this, const CoreNavigation::CLP::LogEntry::PrivateData::TunnelEndPoint *a2)
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
      *(this + 8) |= 1u;
      v6 = *(this + 1);
      if (!v6)
      {
        operator new();
      }

      v7 = *(a2 + 1);
      if (!v7)
      {
        CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(this);
        v7 = *(CoreNavigation::CLP::LogEntry::PrivateData::TunnelEndPoint::default_instance_ + 8);
      }

      result = CoreNavigation::CLP::LogEntry::PrivateData::TimeStamp::MergeFrom(v6, v7);
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

    v8 = *(a2 + 6);
    *(this + 8) |= 2u;
    *(this + 6) = v8;
    if ((*(a2 + 8) & 4) == 0)
    {
      return result;
    }

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
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(this);
      v10 = *(CoreNavigation::CLP::LogEntry::PrivateData::TunnelEndPoint::default_instance_ + 16);
    }

    return CoreNavigation::CLP::LogEntry::PrivateData::TunnelEndPointAssistance::MergeFrom(v9, v10);
  }

  return result;
}

void sub_1D0CD8998(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void CoreNavigation::CLP::LogEntry::PrivateData::TunnelEndPoint::~TunnelEndPoint(CoreNavigation::CLP::LogEntry::PrivateData::TunnelEndPoint *this)
{
  *this = &unk_1F4CDA7E8;
  CoreNavigation::CLP::LogEntry::PrivateData::TunnelEndPoint::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  CoreNavigation::CLP::LogEntry::PrivateData::TunnelEndPoint::~TunnelEndPoint(this);

  JUMPOUT(0x1D387ECA0);
}

void CoreNavigation::CLP::LogEntry::PrivateData::TunnelEndPoint::SharedDtor(CoreNavigation::CLP::LogEntry::PrivateData::TunnelEndPoint *this)
{
  CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(this);
  if (CoreNavigation::CLP::LogEntry::PrivateData::TunnelEndPoint::default_instance_ != this)
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

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::TunnelEndPoint::Clear(uint64_t this)
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
        this = CoreNavigation::CLP::LogEntry::PrivateData::TunnelEndPointAssistance::Clear(this);
      }
    }
  }

  *(v1 + 32) = 0;
  return this;
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::TunnelEndPoint::MergePartialFromCodedStream(CoreNavigation::CLP::LogEntry::PrivateData::TunnelEndPoint *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
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
          if (!CoreNavigation::CLP::LogEntry::PrivateData::TunnelEndPointAssistance::MergePartialFromCodedStream(v24, a2, v28) || *(a2 + 36) != 1)
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

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::TunnelEndPoint::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
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
    v7 = *(CoreNavigation::CLP::LogEntry::PrivateData::TunnelEndPoint::default_instance_ + 8);
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
    v8 = *(CoreNavigation::CLP::LogEntry::PrivateData::TunnelEndPoint::default_instance_ + 16);
  }

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(3, v8, a2, a4);
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::TunnelEndPoint::ByteSize(CoreNavigation::CLP::LogEntry::PrivateData::TunnelEndPoint *this, unsigned int a2)
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
      v5 = *(CoreNavigation::CLP::LogEntry::PrivateData::TunnelEndPoint::default_instance_ + 8);
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
      v10 = *(CoreNavigation::CLP::LogEntry::PrivateData::TunnelEndPoint::default_instance_ + 16);
    }

    v11 = CoreNavigation::CLP::LogEntry::PrivateData::TunnelEndPointAssistance::ByteSize(v10, a2);
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

double CoreNavigation::CLP::LogEntry::PrivateData::TunnelEndPoint::CheckTypeAndMergeFrom(CoreNavigation::CLP::LogEntry::PrivateData::TunnelEndPoint *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  return CoreNavigation::CLP::LogEntry::PrivateData::TunnelEndPoint::MergeFrom(this, lpsrc);
}

double CoreNavigation::CLP::LogEntry::PrivateData::TunnelEndPoint::CopyFrom(CoreNavigation::CLP::LogEntry::PrivateData::TunnelEndPoint *this, const CoreNavigation::CLP::LogEntry::PrivateData::TunnelEndPoint *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    return CoreNavigation::CLP::LogEntry::PrivateData::TunnelEndPoint::MergeFrom(this, a2);
  }

  return result;
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::TunnelEndPoint::Swap(uint64_t this, CoreNavigation::CLP::LogEntry::PrivateData::TunnelEndPoint *a2)
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

double CoreNavigation::CLP::LogEntry::PrivateData::MapsRouteHintData::SharedCtor(CoreNavigation::CLP::LogEntry::PrivateData::MapsRouteHintData *this)
{
  result = 0.0;
  *(this + 40) = 0u;
  *(this + 24) = 0u;
  *(this + 8) = 0u;
  return result;
}

CoreNavigation::CLP::LogEntry::PrivateData::MapsRouteHintData *CoreNavigation::CLP::LogEntry::PrivateData::MapsRouteHintData::MapsRouteHintData(CoreNavigation::CLP::LogEntry::PrivateData::MapsRouteHintData *this, const CoreNavigation::CLP::LogEntry::PrivateData::MapsRouteHintData *a2)
{
  *this = &unk_1F4CDA860;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  CoreNavigation::CLP::LogEntry::PrivateData::MapsRouteHintData::MergeFrom(this, a2);
  return this;
}

double CoreNavigation::CLP::LogEntry::PrivateData::MapsRouteHintData::MergeFrom(CoreNavigation::CLP::LogEntry::PrivateData::MapsRouteHintData *this, const CoreNavigation::CLP::LogEntry::PrivateData::MapsRouteHintData *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v7);
  }

  LOBYTE(v5) = *(a2 + 52);
  if (v5)
  {
    if (*(a2 + 52))
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

        goto LABEL_13;
      }
    }

    else if ((*(a2 + 52) & 2) == 0)
    {
      goto LABEL_6;
    }

    result = *(a2 + 2);
    *(this + 13) |= 2u;
    *(this + 2) = result;
    v5 = *(a2 + 13);
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
    result = *(a2 + 3);
    *(this + 13) |= 4u;
    *(this + 3) = result;
    v5 = *(a2 + 13);
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
    result = *(a2 + 4);
    *(this + 13) |= 8u;
    *(this + 4) = result;
    if ((*(a2 + 13) & 0x10) == 0)
    {
      return result;
    }

LABEL_9:
    result = *(a2 + 5);
    *(this + 13) |= 0x10u;
    *(this + 5) = result;
  }

  return result;
}

void sub_1D0CD946C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void CoreNavigation::CLP::LogEntry::PrivateData::MapsRouteHintData::~MapsRouteHintData(CoreNavigation::CLP::LogEntry::PrivateData::MapsRouteHintData *this)
{
  *this = &unk_1F4CDA860;
  CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  CoreNavigation::CLP::LogEntry::PrivateData::MapsRouteHintData::~MapsRouteHintData(this);

  JUMPOUT(0x1D387ECA0);
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::MapsRouteHintData::Clear(uint64_t this)
{
  if (*(this + 52))
  {
    *(this + 40) = 0;
    *(this + 24) = 0u;
    *(this + 8) = 0u;
  }

  *(this + 52) = 0;
  return this;
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::MapsRouteHintData::MergePartialFromCodedStream(CoreNavigation::CLP::LogEntry::PrivateData::MapsRouteHintData *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
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
            goto LABEL_21;
          }

          goto LABEL_36;
        }

        if (v7 == 4)
        {
          if (v8 != 1)
          {
            goto LABEL_21;
          }

LABEL_40:
          v17 = 0;
          if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, &v17) & 1) == 0)
          {
            return 0;
          }

          *(this + 4) = v17;
          *(this + 13) |= 8u;
          v16 = *(a2 + 1);
          if (v16 < *(a2 + 2) && *v16 == 41)
          {
            *(a2 + 1) = v16 + 1;
            goto LABEL_44;
          }
        }

        else
        {
          if (v7 != 5 || v8 != 1)
          {
            goto LABEL_21;
          }

LABEL_44:
          v17 = 0;
          if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, &v17) & 1) == 0)
          {
            return 0;
          }

          *(this + 5) = v17;
          *(this + 13) |= 0x10u;
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
        goto LABEL_21;
      }

      v17 = 0;
      v10 = *(a2 + 1);
      v9 = *(a2 + 2);
      if (v10 >= v9 || (v11 = *v10, (v11 & 0x8000000000000000) != 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, &v17);
        if (!result)
        {
          return result;
        }

        v11 = v17;
        v12 = *(a2 + 1);
        v9 = *(a2 + 2);
      }

      else
      {
        v12 = v10 + 1;
        *(a2 + 1) = v12;
      }

      *(this + 1) = v11;
      *(this + 13) |= 1u;
      if (v12 < v9 && *v12 == 17)
      {
        *(a2 + 1) = v12 + 1;
LABEL_32:
        v17 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, &v17) & 1) == 0)
        {
          return 0;
        }

        *(this + 2) = v17;
        *(this + 13) |= 2u;
        v14 = *(a2 + 1);
        if (v14 < *(a2 + 2) && *v14 == 25)
        {
          *(a2 + 1) = v14 + 1;
LABEL_36:
          v17 = 0;
          if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, &v17) & 1) == 0)
          {
            return 0;
          }

          *(this + 3) = v17;
          *(this + 13) |= 4u;
          v15 = *(a2 + 1);
          if (v15 < *(a2 + 2) && *v15 == 33)
          {
            *(a2 + 1) = v15 + 1;
            goto LABEL_40;
          }
        }
      }
    }

    if (v7 == 2 && v8 == 1)
    {
      goto LABEL_32;
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

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::MapsRouteHintData::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 52);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt64(1, *(this + 8), a2, a4);
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

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(2, a2, *(v5 + 16), a3);
  v6 = *(v5 + 52);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

LABEL_10:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(4, a2, *(v5 + 32), a3);
    if ((*(v5 + 52) & 0x10) == 0)
    {
      return this;
    }

    goto LABEL_11;
  }

LABEL_9:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(3, a2, *(v5 + 24), a3);
  v6 = *(v5 + 52);
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
  v7 = *(v5 + 40);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(5, a2, v7, a3);
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::MapsRouteHintData::ByteSize(CoreNavigation::CLP::LogEntry::PrivateData::MapsRouteHintData *this, unint64_t a2)
{
  LOBYTE(v3) = *(this + 52);
  if (v3)
  {
    if (*(this + 52))
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
      v4 += 9;
    }

    if ((v3 & 4) != 0)
    {
      v4 += 9;
    }

    if ((v3 & 8) != 0)
    {
      v4 += 9;
    }

    if ((v3 & 0x10) != 0)
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

  *(this + 12) = result;
  return result;
}

double CoreNavigation::CLP::LogEntry::PrivateData::MapsRouteHintData::CheckTypeAndMergeFrom(CoreNavigation::CLP::LogEntry::PrivateData::MapsRouteHintData *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  return CoreNavigation::CLP::LogEntry::PrivateData::MapsRouteHintData::MergeFrom(this, lpsrc);
}

double CoreNavigation::CLP::LogEntry::PrivateData::MapsRouteHintData::CopyFrom(CoreNavigation::CLP::LogEntry::PrivateData::MapsRouteHintData *this, const CoreNavigation::CLP::LogEntry::PrivateData::MapsRouteHintData *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    return CoreNavigation::CLP::LogEntry::PrivateData::MapsRouteHintData::MergeFrom(this, a2);
  }

  return result;
}

double CoreNavigation::CLP::LogEntry::PrivateData::MapsRouteHintData::Swap(CoreNavigation::CLP::LogEntry::PrivateData::MapsRouteHintData *this, CoreNavigation::CLP::LogEntry::PrivateData::MapsRouteHintData *a2)
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
    v5 = *(this + 4);
    *(this + 4) = *(a2 + 4);
    *(a2 + 4) = v5;
    result = *(this + 5);
    *(this + 5) = *(a2 + 5);
    *(a2 + 5) = result;
    LODWORD(v2) = *(this + 13);
    *(this + 13) = *(a2 + 13);
    *(a2 + 13) = v2;
    LODWORD(v2) = *(this + 12);
    *(this + 12) = *(a2 + 12);
    *(a2 + 12) = v2;
  }

  return result;
}

void *CoreNavigation::CLP::LogEntry::PrivateData::MapMatchingRouteHint::SharedCtor(void *this)
{
  this[7] = 0;
  this[2] = 0;
  this[3] = 0;
  this[1] = 0;
  return this;
}

CoreNavigation::CLP::LogEntry::PrivateData::MapMatchingRouteHint *CoreNavigation::CLP::LogEntry::PrivateData::MapMatchingRouteHint::MapMatchingRouteHint(CoreNavigation::CLP::LogEntry::PrivateData::MapMatchingRouteHint *this, const CoreNavigation::CLP::LogEntry::PrivateData::MapMatchingRouteHint *a2)
{
  *this = &unk_1F4CDA8D8;
  *(this + 7) = 0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 36) = 0u;
  CoreNavigation::CLP::LogEntry::PrivateData::MapMatchingRouteHint::MergeFrom(this, a2);
  return this;
}

void sub_1D0CD9BE4(_Unwind_Exception *a1)
{
  sub_1D0B8CD0C(v1 + 4);
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(v1);
  _Unwind_Resume(a1);
}

void CoreNavigation::CLP::LogEntry::PrivateData::MapMatchingRouteHint::MergeFrom(CoreNavigation::CLP::LogEntry::PrivateData::MapMatchingRouteHint *this, const CoreNavigation::CLP::LogEntry::PrivateData::MapMatchingRouteHint *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v18);
  }

  v4 = wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 32));
  LODWORD(v5) = *(a2 + 10);
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
        wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v18);
      }

      v7 = *(*(a2 + 4) + 8 * v6);
      v8 = *(this + 11);
      v9 = *(this + 10);
      if (v9 >= v8)
      {
        if (v8 == *(this + 12))
        {
          wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 32));
          v8 = *(this + 11);
        }

        *(this + 11) = v8 + 1;
        operator new();
      }

      v10 = *(this + 4);
      *(this + 10) = v9 + 1;
      CoreNavigation::CLP::LogEntry::PrivateData::MapsRouteHintData::MergeFrom(*(v10 + 8 * v9), v7);
      ++v6;
      v5 = *(a2 + 10);
    }

    while (v6 < v5);
  }

  LOBYTE(v11) = *(a2 + 60);
  if (!v11)
  {
    return;
  }

  if ((*(a2 + 60) & 1) == 0)
  {
    if ((*(a2 + 60) & 2) == 0)
    {
      goto LABEL_16;
    }

LABEL_24:
    *(this + 15) |= 2u;
    v14 = *(this + 2);
    if (!v14)
    {
      operator new();
    }

    v15 = *(a2 + 2);
    if (!v15)
    {
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(v4);
      v15 = *(CoreNavigation::CLP::LogEntry::PrivateData::MapMatchingRouteHint::default_instance_ + 16);
    }

    CoreNavigation::CLP::LogEntry::PrivateData::TimeStamp::MergeFrom(v14, v15);
    v11 = *(a2 + 15);
    if ((v11 & 4) == 0)
    {
LABEL_17:
      if ((v11 & 8) == 0)
      {
        return;
      }

      goto LABEL_31;
    }

    goto LABEL_29;
  }

  *(this + 15) |= 1u;
  v12 = *(this + 1);
  if (!v12)
  {
    operator new();
  }

  v13 = *(a2 + 1);
  if (!v13)
  {
    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(v4);
    v13 = *(CoreNavigation::CLP::LogEntry::PrivateData::MapMatchingRouteHint::default_instance_ + 8);
  }

  CoreNavigation::CLP::LogEntry::PrivateData::TimeStamp::MergeFrom(v12, v13);
  v11 = *(a2 + 15);
  if ((v11 & 2) != 0)
  {
    goto LABEL_24;
  }

LABEL_16:
  if ((v11 & 4) == 0)
  {
    goto LABEL_17;
  }

LABEL_29:
  v16 = *(a2 + 6);
  if (v16 >= 7)
  {
    __assert_rtn("set_route_type", "CoreNavigationCLPPrivateDataShared.pb.h", 21170, "::CoreNavigation::CLP::LogEntry::PrivateData::MapMatchingRouteHint_RoutingType_IsValid(value)");
  }

  *(this + 15) |= 4u;
  *(this + 6) = v16;
  if ((*(a2 + 15) & 8) != 0)
  {
LABEL_31:
    v17 = *(a2 + 7);
    if (v17 >= 7)
    {
      __assert_rtn("set_step_type", "CoreNavigationCLPPrivateDataShared.pb.h", 21193, "::CoreNavigation::CLP::LogEntry::PrivateData::MapMatchingRouteHint_RoutingType_IsValid(value)");
    }

    *(this + 15) |= 8u;
    *(this + 7) = v17;
  }
}

void sub_1D0CD9F64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::MapMatchingRouteHint::Clear(CoreNavigation::CLP::LogEntry::PrivateData::MapMatchingRouteHint *this)
{
  LOBYTE(v2) = *(this + 60);
  if (v2)
  {
    if (*(this + 60))
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
        v2 = *(this + 15);
      }
    }

    if ((v2 & 2) != 0)
    {
      v4 = *(this + 2);
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

    *(this + 3) = 0;
  }

  result = sub_1D0C77384(this + 32);
  *(this + 15) = 0;
  return result;
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::MapMatchingRouteHint::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 60);
  if (v6)
  {
    v8 = *(this + 8);
    if (!v8)
    {
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(this);
      v8 = *(CoreNavigation::CLP::LogEntry::PrivateData::MapMatchingRouteHint::default_instance_ + 8);
    }

    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(1, v8, a2, a4);
    v6 = *(v5 + 60);
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

  v9 = *(v5 + 16);
  if (!v9)
  {
    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(this);
    v9 = *(CoreNavigation::CLP::LogEntry::PrivateData::MapMatchingRouteHint::default_instance_ + 16);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(2, v9, a2, a4);
  v6 = *(v5 + 60);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_16:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(3, *(v5 + 24), a2, a4);
  if ((*(v5 + 60) & 8) != 0)
  {
LABEL_5:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(4, *(v5 + 28), a2, a4);
  }

LABEL_6:
  if (*(v5 + 40) >= 1)
  {
    v7 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(5, *(*(v5 + 32) + 8 * v7++), a2, a4);
    }

    while (v7 < *(v5 + 40));
  }

  return this;
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::MapMatchingRouteHint::ByteSize(CoreNavigation::CLP::LogEntry::PrivateData::MapMatchingRouteHint *this, unint64_t a2)
{
  LOBYTE(v3) = *(this + 60);
  if (!v3)
  {
    v4 = 0;
    goto LABEL_39;
  }

  if ((*(this + 60) & 1) == 0)
  {
    v4 = 0;
    if ((*(this + 60) & 2) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_15;
  }

  v5 = *(this + 1);
  if (!v5)
  {
    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(this);
    v5 = *(CoreNavigation::CLP::LogEntry::PrivateData::MapMatchingRouteHint::default_instance_ + 8);
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
  v4 = v6 + 2;
  v3 = *(this + 15);
  if ((v3 & 2) != 0)
  {
LABEL_15:
    v8 = *(this + 2);
    if (!v8)
    {
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(this);
      v8 = *(CoreNavigation::CLP::LogEntry::PrivateData::MapMatchingRouteHint::default_instance_ + 16);
    }

    v9 = *(v8 + 36);
    if (*(v8 + 36))
    {
      v10 = (v9 << 31 >> 31) & 9;
      if ((v9 & 2) != 0)
      {
        v10 += 9;
      }

      if ((v9 & 4) != 0)
      {
        v9 = v10 + 9;
      }

      else
      {
        v9 = v10;
      }
    }

    *(v8 + 32) = v9;
    v4 += v9 + 2;
    v3 = *(this + 15);
  }

LABEL_24:
  if ((v3 & 4) == 0)
  {
    if ((v3 & 8) == 0)
    {
      goto LABEL_39;
    }

    goto LABEL_33;
  }

  v11 = *(this + 6);
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

  v4 += v12;
  if ((v3 & 8) != 0)
  {
LABEL_33:
    v13 = *(this + 7);
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

LABEL_39:
  v15 = *(this + 10);
  v16 = (v15 + v4);
  if (v15 >= 1)
  {
    v17 = 0;
    do
    {
      v18 = CoreNavigation::CLP::LogEntry::PrivateData::MapsRouteHintData::ByteSize(*(*(this + 4) + 8 * v17), a2);
      v19 = v18;
      if (v18 >= 0x80)
      {
        v20 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v18);
      }

      else
      {
        v20 = 1;
      }

      v16 = (v19 + v16 + v20);
      ++v17;
    }

    while (v17 < *(this + 10));
  }

  *(this + 14) = v16;
  return v16;
}

void CoreNavigation::CLP::LogEntry::PrivateData::MapMatchingRouteHint::CheckTypeAndMergeFrom(CoreNavigation::CLP::LogEntry::PrivateData::MapMatchingRouteHint *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  CoreNavigation::CLP::LogEntry::PrivateData::MapMatchingRouteHint::MergeFrom(this, lpsrc);
}

void CoreNavigation::CLP::LogEntry::PrivateData::MapMatchingRouteHint::CopyFrom(CoreNavigation::CLP::LogEntry::PrivateData::MapMatchingRouteHint *this, const CoreNavigation::CLP::LogEntry::PrivateData::MapMatchingRouteHint *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    CoreNavigation::CLP::LogEntry::PrivateData::MapMatchingRouteHint::MergeFrom(this, a2);
  }
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::MapMatchingRouteHint::Swap(uint64_t this, CoreNavigation::CLP::LogEntry::PrivateData::MapMatchingRouteHint *a2)
{
  if (a2 != this)
  {
    v3 = this;
    v4 = *(this + 8);
    *(this + 8) = *(a2 + 1);
    *(a2 + 1) = v4;
    v5 = *(this + 16);
    *(this + 16) = *(a2 + 2);
    *(a2 + 2) = v5;
    LODWORD(v5) = *(this + 24);
    *(this + 24) = *(a2 + 6);
    *(a2 + 6) = v5;
    LODWORD(v5) = *(this + 28);
    *(this + 28) = *(a2 + 7);
    *(a2 + 7) = v5;
    this = wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Swap();
    v6 = *(v3 + 60);
    *(v3 + 60) = *(a2 + 15);
    *(a2 + 15) = v6;
    v7 = *(v3 + 56);
    *(v3 + 56) = *(a2 + 14);
    *(a2 + 14) = v7;
  }

  return this;
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::AccessoryVehicleSpeedNotification::SharedCtor(uint64_t this)
{
  *(this + 48) = 0;
  *(this + 52) = 0;
  *(this + 72) = 0;
  *(this + 80) = 0;
  *(this + 16) = 0;
  *(this + 24) = 0;
  *(this + 8) = 0;
  return this;
}

CoreNavigation::CLP::LogEntry::PrivateData::AccessoryVehicleSpeedNotification *CoreNavigation::CLP::LogEntry::PrivateData::AccessoryVehicleSpeedNotification::AccessoryVehicleSpeedNotification(CoreNavigation::CLP::LogEntry::PrivateData::AccessoryVehicleSpeedNotification *this, const CoreNavigation::CLP::LogEntry::PrivateData::AccessoryVehicleSpeedNotification *a2)
{
  *this = &unk_1F4CDA950;
  *(this + 7) = 0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 37) = 0u;
  *(this + 8) = 0;
  *(this + 9) = 0;
  *(this + 20) = 0;
  CoreNavigation::CLP::LogEntry::PrivateData::AccessoryVehicleSpeedNotification::MergeFrom(this, a2);
  return this;
}

void sub_1D0CDA5D4(_Unwind_Exception *a1)
{
  v3 = v2;
  if (*v3)
  {
    MEMORY[0x1D387EC80](*v3, 0x1000C8000313F17);
  }

  v5 = *(v1 + 4);
  if (v5)
  {
    MEMORY[0x1D387EC80](v5, 0x1000C8000313F17);
  }

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(v1);
  _Unwind_Resume(a1);
}

void CoreNavigation::CLP::LogEntry::PrivateData::AccessoryVehicleSpeedNotification::MergeFrom(CoreNavigation::CLP::LogEntry::PrivateData::AccessoryVehicleSpeedNotification *this, const CoreNavigation::CLP::LogEntry::PrivateData::AccessoryVehicleSpeedNotification *a2)
{
  v3 = this;
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
    sub_1D0C773F4(v3 + 8, *(v3 + 10) + v4);
    this = memcpy((*(v3 + 4) + 8 * *(v3 + 10)), *(a2 + 4), 8 * *(a2 + 10));
    *(v3 + 10) += *(a2 + 10);
  }

  v5 = *(a2 + 16);
  if (v5)
  {
    sub_1D0C773F4(v3 + 14, *(v3 + 16) + v5);
    this = memcpy((*(v3 + 7) + 8 * *(v3 + 16)), *(a2 + 7), 8 * *(a2 + 16));
    *(v3 + 16) += *(a2 + 16);
  }

  v6 = *(a2 + 20);
  if (v6)
  {
    if (v6)
    {
      *(v3 + 20) |= 1u;
      v10 = *(v3 + 1);
      if (!v10)
      {
        operator new();
      }

      v11 = *(a2 + 1);
      if (!v11)
      {
        CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(this);
        v11 = *(CoreNavigation::CLP::LogEntry::PrivateData::AccessoryVehicleSpeedNotification::default_instance_ + 8);
      }

      CoreNavigation::CLP::LogEntry::PrivateData::TimeStamp::MergeFrom(v10, v11);
      v6 = *(a2 + 20);
      if ((v6 & 2) == 0)
      {
LABEL_10:
        if ((v6 & 4) == 0)
        {
          goto LABEL_11;
        }

        goto LABEL_30;
      }
    }

    else if ((v6 & 2) == 0)
    {
      goto LABEL_10;
    }

    *(v3 + 20) |= 2u;
    v12 = *(v3 + 2);
    if (!v12)
    {
      operator new();
    }

    v13 = *(a2 + 2);
    if (!v13)
    {
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(this);
      v13 = *(CoreNavigation::CLP::LogEntry::PrivateData::AccessoryVehicleSpeedNotification::default_instance_ + 16);
    }

    CoreNavigation::CLP::LogEntry::PrivateData::TimeStamp::MergeFrom(v12, v13);
    v6 = *(a2 + 20);
    if ((v6 & 4) == 0)
    {
LABEL_11:
      if ((v6 & 8) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_31;
    }

LABEL_30:
    v14 = *(a2 + 6);
    *(v3 + 20) |= 4u;
    *(v3 + 6) = v14;
    v6 = *(a2 + 20);
    if ((v6 & 8) == 0)
    {
LABEL_12:
      if ((v6 & 0x10) == 0)
      {
        goto LABEL_14;
      }

      goto LABEL_13;
    }

LABEL_31:
    v15 = *(a2 + 7);
    if (v15 >= 5)
    {
      __assert_rtn("set_transmission_state", "CoreNavigationCLPPrivateDataShared.pb.h", 21351, "::CoreNavigation::CLP::LogEntry::PrivateData::AccessoryVehicleSpeedNotification_TransmissionStateType_IsValid(value)");
    }

    *(v3 + 20) |= 8u;
    *(v3 + 7) = v15;
    v6 = *(a2 + 20);
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_14;
    }

LABEL_13:
    v7 = *(a2 + 12);
    *(v3 + 20) |= 0x10u;
    *(v3 + 12) = v7;
    v6 = *(a2 + 20);
LABEL_14:
    if ((v6 & 0x80) != 0)
    {
      v8 = *(a2 + 52);
      *(v3 + 20) |= 0x80u;
      *(v3 + 52) = v8;
      v6 = *(a2 + 20);
    }
  }

  if ((v6 & 0x100) != 0)
  {
    v9 = *(a2 + 18);
    if (v9 >= 2)
    {
      __assert_rtn("set_sensor_type", "CoreNavigationCLPPrivateDataShared.pb.h", 21468, "::CoreNavigation::CLP::LogEntry::PrivateData::AccessoryVehicleSpeedNotification_SensorType_IsValid(value)");
    }

    *(v3 + 20) |= 0x100u;
    *(v3 + 18) = v9;
  }
}

void sub_1D0CDA924(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void CoreNavigation::CLP::LogEntry::PrivateData::AccessoryVehicleSpeedNotification::~AccessoryVehicleSpeedNotification(CoreNavigation::CLP::LogEntry::PrivateData::AccessoryVehicleSpeedNotification *this)
{
  *this = &unk_1F4CDA950;
  CoreNavigation::CLP::LogEntry::PrivateData::AccessoryVehicleSpeedNotification::SharedDtor(this);
  v2 = *(this + 7);
  if (v2)
  {
    MEMORY[0x1D387EC80](v2, 0x1000C8000313F17);
  }

  v3 = *(this + 4);
  if (v3)
  {
    MEMORY[0x1D387EC80](v3, 0x1000C8000313F17);
  }

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  CoreNavigation::CLP::LogEntry::PrivateData::AccessoryVehicleSpeedNotification::~AccessoryVehicleSpeedNotification(this);

  JUMPOUT(0x1D387ECA0);
}

void CoreNavigation::CLP::LogEntry::PrivateData::AccessoryVehicleSpeedNotification::SharedDtor(CoreNavigation::CLP::LogEntry::PrivateData::AccessoryVehicleSpeedNotification *this)
{
  CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(this);
  if (CoreNavigation::CLP::LogEntry::PrivateData::AccessoryVehicleSpeedNotification::default_instance_ != this)
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

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::AccessoryVehicleSpeedNotification::Clear(uint64_t this)
{
  v1 = *(this + 80);
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
        v1 = *(this + 80);
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
        v1 = *(this + 80);
      }
    }

    *(this + 24) = 0;
    *(this + 48) = 0;
    *(this + 52) = 0;
  }

  if ((v1 & 0xFF00) != 0)
  {
    *(this + 72) = 0;
  }

  *(this + 40) = 0;
  *(this + 64) = 0;
  *(this + 80) = 0;
  return this;
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::AccessoryVehicleSpeedNotification::MergePartialFromCodedStream(CoreNavigation::CLP::LogEntry::PrivateData::AccessoryVehicleSpeedNotification *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
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
            goto LABEL_43;
          }

          v12 = *(a2 + 1);
          v11 = *(a2 + 2);
          goto LABEL_78;
        }

        if ((TagFallback & 7) != 0)
        {
          goto LABEL_43;
        }

        v16 = *(a2 + 1);
        v11 = *(a2 + 2);
LABEL_70:
        v66[0] = 0;
        if (v16 >= v11 || (v35 = *v16, (v35 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v66);
          if (!result)
          {
            return result;
          }

          v35 = v66[0];
          v36 = *(a2 + 1);
          v11 = *(a2 + 2);
        }

        else
        {
          v36 = v16 + 1;
          *(a2 + 1) = v36;
        }

        *(this + 6) = v35;
        *(this + 20) |= 4u;
        if (v36 < v11 && *v36 == 32)
        {
          v12 = v36 + 1;
          *(a2 + 1) = v12;
LABEL_78:
          v66[0] = 0;
          if (v12 >= v11 || (v37 = *v12, (v37 & 0x80000000) != 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v66);
            if (!result)
            {
              return result;
            }

            v37 = v66[0];
          }

          else
          {
            *(a2 + 1) = v12 + 1;
          }

          if (v37 <= 4)
          {
            *(this + 20) |= 8u;
            *(this + 7) = v37;
          }

          v38 = *(a2 + 1);
          v17 = *(a2 + 2);
          if (v38 < v17 && *v38 == 40)
          {
            v18 = v38 + 1;
            *(a2 + 1) = v18;
LABEL_88:
            v66[0] = 0;
            if (v18 >= v17 || (v39 = *v18, (v39 & 0x80000000) != 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v66);
              if (!result)
              {
                return result;
              }

              v39 = v66[0];
              v40 = *(a2 + 1);
              v17 = *(a2 + 2);
            }

            else
            {
              v40 = v18 + 1;
              *(a2 + 1) = v40;
            }

            *(this + 12) = v39;
            *(this + 20) |= 0x10u;
            if (v40 < v17 && *v40 == 49)
            {
              while (1)
              {
                *(a2 + 1) = v40 + 1;
LABEL_96:
                *v66 = 0;
                if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v66) & 1) == 0)
                {
                  return 0;
                }

                v41 = *v66;
                v42 = *(this + 10);
                if (v42 == *(this + 11))
                {
                  sub_1D0C773F4(this + 8, v42 + 1);
                  v42 = *(this + 10);
                }

                v43 = *(this + 4);
                v44 = v42 + 1;
                *(this + 10) = v42 + 1;
                *(v43 + 8 * v42) = v41;
                v45 = *(a2 + 1);
                v46 = *(a2 + 4) - v45;
                if (v46 >= 1)
                {
                  v47 = v46 / 9u;
                  v48 = v47 >= *(this + 11) - v44 ? *(this + 11) - v44 : v47;
                  if (v48 >= 1)
                  {
                    v49 = 0;
                    while (*v45 == 49)
                    {
                      v50 = *(v45 + 1);
                      if (v44 >= *(this + 11))
                      {
                        wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                        wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                        wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                        wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v66);
                        v44 = *(this + 10);
                        v43 = *(this + 4);
                      }

                      *(this + 10) = v44 + 1;
                      *(v43 + 8 * v44) = v50;
                      ++v49;
                      v45 += 9;
                      ++v44;
                      if (v48 == v49)
                      {
                        goto LABEL_111;
                      }
                    }

                    if (!v49)
                    {
                      goto LABEL_112;
                    }

LABEL_111:
                    wireless_diagnostics::google::protobuf::io::CodedInputStream::Skip(a2);
                  }
                }

LABEL_112:
                v40 = *(a2 + 1);
                if (v40 >= *(a2 + 2))
                {
                  break;
                }

                v51 = *v40;
                if (v51 != 49)
                {
                  if (v51 == 57)
                  {
                    while (1)
                    {
                      *(a2 + 1) = v40 + 1;
LABEL_116:
                      *v66 = 0;
                      if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v66) & 1) == 0)
                      {
                        return 0;
                      }

                      v52 = *v66;
                      v53 = *(this + 16);
                      if (v53 == *(this + 17))
                      {
                        sub_1D0C773F4(this + 14, v53 + 1);
                        v53 = *(this + 16);
                      }

                      v54 = *(this + 7);
                      v55 = v53 + 1;
                      *(this + 16) = v53 + 1;
                      *(v54 + 8 * v53) = v52;
                      v56 = *(a2 + 1);
                      v57 = *(a2 + 4) - v56;
                      if (v57 >= 1)
                      {
                        v58 = v57 / 9u;
                        v59 = v58 >= *(this + 17) - v55 ? *(this + 17) - v55 : v58;
                        if (v59 >= 1)
                        {
                          v60 = 0;
                          while (*v56 == 57)
                          {
                            v61 = *(v56 + 1);
                            if (v55 >= *(this + 17))
                            {
                              wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                              wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                              wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                              wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v66);
                              v55 = *(this + 16);
                              v54 = *(this + 7);
                            }

                            *(this + 16) = v55 + 1;
                            *(v54 + 8 * v55) = v61;
                            ++v60;
                            v56 += 9;
                            ++v55;
                            if (v59 == v60)
                            {
                              goto LABEL_131;
                            }
                          }

                          if (!v60)
                          {
                            goto LABEL_132;
                          }

LABEL_131:
                          wireless_diagnostics::google::protobuf::io::CodedInputStream::Skip(a2);
                        }
                      }

LABEL_132:
                      v40 = *(a2 + 1);
                      v9 = *(a2 + 2);
                      if (v40 >= v9)
                      {
                        break;
                      }

                      v62 = *v40;
                      if (v62 != 57)
                      {
                        if (v62 != 64)
                        {
                          goto LABEL_1;
                        }

                        v19 = v40 + 1;
                        *(a2 + 1) = v19;
                        goto LABEL_136;
                      }
                    }
                  }

                  goto LABEL_1;
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
          if (v7 != 2 || v8 != 2)
          {
            goto LABEL_43;
          }

          goto LABEL_56;
        }

        if (v8 != 2)
        {
          goto LABEL_43;
        }

        *(this + 20) |= 1u;
        v14 = *(this + 1);
        if (!v14)
        {
          operator new();
        }

        v66[0] = 0;
        v15 = *(a2 + 1);
        if (v15 >= *(a2 + 2) || *v15 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v66))
          {
            return 0;
          }
        }

        else
        {
          v66[0] = *v15;
          *(a2 + 1) = v15 + 1;
        }

        v20 = *(a2 + 14);
        v21 = *(a2 + 15);
        *(a2 + 14) = v20 + 1;
        if (v20 >= v21)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
        if (!CoreNavigation::CLP::LogEntry::PrivateData::TimeStamp::MergePartialFromCodedStream(v14, a2, v22) || *(a2 + 36) != 1)
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
        if (v26 < *(a2 + 2) && *v26 == 18)
        {
          *(a2 + 1) = v26 + 1;
LABEL_56:
          *(this + 20) |= 2u;
          v27 = *(this + 2);
          if (!v27)
          {
            operator new();
          }

          v66[0] = 0;
          v28 = *(a2 + 1);
          if (v28 >= *(a2 + 2) || *v28 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v66))
            {
              return 0;
            }
          }

          else
          {
            v66[0] = *v28;
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
          if (!CoreNavigation::CLP::LogEntry::PrivateData::TimeStamp::MergePartialFromCodedStream(v27, a2, v31) || *(a2 + 36) != 1)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
          v32 = *(a2 + 14);
          v24 = __OFSUB__(v32, 1);
          v33 = v32 - 1;
          if (v33 < 0 == v24)
          {
            *(a2 + 14) = v33;
          }

          v34 = *(a2 + 1);
          v11 = *(a2 + 2);
          if (v34 < v11 && *v34 == 24)
          {
            v16 = v34 + 1;
            *(a2 + 1) = v16;
            goto LABEL_70;
          }
        }
      }
    }

    if (TagFallback >> 3 <= 6)
    {
      if (v7 != 5)
      {
        if (v7 != 6)
        {
          goto LABEL_43;
        }

        if (v8 != 1)
        {
          if (v8 == 2)
          {
            result = sub_1D0C99640(a2, this + 8);
            if (!result)
            {
              return result;
            }

            goto LABEL_112;
          }

          goto LABEL_43;
        }

        goto LABEL_96;
      }

      if ((TagFallback & 7) != 0)
      {
        goto LABEL_43;
      }

      v18 = *(a2 + 1);
      v17 = *(a2 + 2);
      goto LABEL_88;
    }

    if (v7 == 7)
    {
      break;
    }

    if (v7 == 8)
    {
      if ((TagFallback & 7) != 0)
      {
        goto LABEL_43;
      }

      v19 = *(a2 + 1);
      v9 = *(a2 + 2);
LABEL_136:
      v66[0] = 0;
      if (v19 >= v9 || (v63 = *v19, (v63 & 0x80000000) != 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v66);
        if (!result)
        {
          return result;
        }

        v63 = v66[0];
        v64 = *(a2 + 1);
        v9 = *(a2 + 2);
      }

      else
      {
        v64 = v19 + 1;
        *(a2 + 1) = v64;
      }

      *(this + 52) = v63 != 0;
      *(this + 20) |= 0x80u;
      if (v64 < v9 && *v64 == 72)
      {
        v10 = v64 + 1;
        *(a2 + 1) = v10;
LABEL_144:
        v66[0] = 0;
        if (v10 >= v9 || (v65 = *v10, (v65 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v66);
          if (!result)
          {
            return result;
          }

          v65 = v66[0];
        }

        else
        {
          *(a2 + 1) = v10 + 1;
        }

        if (v65 <= 1)
        {
          *(this + 20) |= 0x100u;
          *(this + 18) = v65;
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
      if (v7 == 9 && (TagFallback & 7) == 0)
      {
        v10 = *(a2 + 1);
        v9 = *(a2 + 2);
        goto LABEL_144;
      }

LABEL_43:
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

  if (v8 == 1)
  {
    goto LABEL_116;
  }

  if (v8 != 2)
  {
    goto LABEL_43;
  }

  result = sub_1D0C99640(a2, this + 14);
  if (result)
  {
    goto LABEL_132;
  }

  return result;
}

void sub_1D0CDB41C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::AccessoryVehicleSpeedNotification::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 80);
  if (v6)
  {
    v10 = *(this + 8);
    if (!v10)
    {
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(this);
      v10 = *(CoreNavigation::CLP::LogEntry::PrivateData::AccessoryVehicleSpeedNotification::default_instance_ + 8);
    }

    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(1, v10, a2, a4);
    v6 = *(v5 + 80);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_23;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  v11 = *(v5 + 16);
  if (!v11)
  {
    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(this);
    v11 = *(CoreNavigation::CLP::LogEntry::PrivateData::AccessoryVehicleSpeedNotification::default_instance_ + 16);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(2, v11, a2, a4);
  v6 = *(v5 + 80);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_24;
  }

LABEL_23:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(3, *(v5 + 24), a2, a4);
  v6 = *(v5 + 80);
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

LABEL_24:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(4, *(v5 + 28), a2, a4);
  if ((*(v5 + 80) & 0x10) != 0)
  {
LABEL_6:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(5, *(v5 + 48), a2, a4);
  }

LABEL_7:
  if (*(v5 + 40) >= 1)
  {
    v7 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(6, a2, *(*(v5 + 32) + 8 * v7++), a3);
    }

    while (v7 < *(v5 + 40));
  }

  if (*(v5 + 64) >= 1)
  {
    v8 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(7, a2, *(*(v5 + 56) + 8 * v8++), a3);
    }

    while (v8 < *(v5 + 64));
  }

  v9 = *(v5 + 80);
  if ((v9 & 0x80) != 0)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(8, *(v5 + 52), a2, a4);
    v9 = *(v5 + 80);
  }

  if ((v9 & 0x100) != 0)
  {
    v12 = *(v5 + 72);

    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(9, v12, a2, a4);
  }

  return this;
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::AccessoryVehicleSpeedNotification::ByteSize(CoreNavigation::CLP::LogEntry::PrivateData::AccessoryVehicleSpeedNotification *this, unsigned int a2)
{
  v3 = *(this + 20);
  if (v3)
  {
    if (v3)
    {
      v6 = *(this + 1);
      if (!v6)
      {
        CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(this);
        v6 = *(CoreNavigation::CLP::LogEntry::PrivateData::AccessoryVehicleSpeedNotification::default_instance_ + 8);
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
      v3 = *(this + 20);
      if ((v3 & 2) == 0)
      {
LABEL_25:
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
            v3 = *(this + 20);
          }

          else
          {
            v13 = 2;
          }

          v4 += v13;
          if ((v3 & 8) == 0)
          {
LABEL_27:
            if ((v3 & 0x10) == 0)
            {
              goto LABEL_47;
            }

            goto LABEL_41;
          }
        }

        else if ((v3 & 8) == 0)
        {
          goto LABEL_27;
        }

        v14 = *(this + 7);
        if ((v14 & 0x80000000) != 0)
        {
          v15 = 11;
        }

        else if (v14 >= 0x80)
        {
          v15 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v14) + 1;
          v3 = *(this + 20);
        }

        else
        {
          v15 = 2;
        }

        v4 += v15;
        if ((v3 & 0x10) == 0)
        {
LABEL_47:
          v5 = ((v3 >> 6) & 2) + v4;
          if ((v3 & 0x100) == 0)
          {
            goto LABEL_54;
          }

          goto LABEL_48;
        }

LABEL_41:
        v16 = *(this + 12);
        if ((v16 & 0x80000000) != 0)
        {
          v17 = 11;
        }

        else if (v16 >= 0x80)
        {
          v17 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v16) + 1;
          v3 = *(this + 20);
        }

        else
        {
          v17 = 2;
        }

        v4 += v17;
        goto LABEL_47;
      }
    }

    else
    {
      v4 = 0;
      if ((v3 & 2) == 0)
      {
        goto LABEL_25;
      }
    }

    v9 = *(this + 2);
    if (!v9)
    {
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(this);
      v9 = *(CoreNavigation::CLP::LogEntry::PrivateData::AccessoryVehicleSpeedNotification::default_instance_ + 16);
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
    v3 = *(this + 20);
    goto LABEL_25;
  }

  v5 = 0;
  if ((v3 & 0x100) == 0)
  {
    goto LABEL_54;
  }

LABEL_48:
  v18 = *(this + 18);
  if ((v18 & 0x80000000) != 0)
  {
    v19 = 11;
  }

  else if (v18 >= 0x80)
  {
    v19 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v18) + 1;
  }

  else
  {
    v19 = 2;
  }

  v5 += v19;
LABEL_54:
  result = 9 * (*(this + 16) + *(this + 10)) + v5;
  *(this + 19) = result;
  return result;
}

void CoreNavigation::CLP::LogEntry::PrivateData::AccessoryVehicleSpeedNotification::CheckTypeAndMergeFrom(CoreNavigation::CLP::LogEntry::PrivateData::AccessoryVehicleSpeedNotification *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  CoreNavigation::CLP::LogEntry::PrivateData::AccessoryVehicleSpeedNotification::MergeFrom(this, lpsrc);
}

void CoreNavigation::CLP::LogEntry::PrivateData::AccessoryVehicleSpeedNotification::CopyFrom(CoreNavigation::CLP::LogEntry::PrivateData::AccessoryVehicleSpeedNotification *this, const CoreNavigation::CLP::LogEntry::PrivateData::AccessoryVehicleSpeedNotification *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    CoreNavigation::CLP::LogEntry::PrivateData::AccessoryVehicleSpeedNotification::MergeFrom(this, a2);
  }
}

double CoreNavigation::CLP::LogEntry::PrivateData::AccessoryVehicleSpeedNotification::Swap(CoreNavigation::CLP::LogEntry::PrivateData::AccessoryVehicleSpeedNotification *this, CoreNavigation::CLP::LogEntry::PrivateData::AccessoryVehicleSpeedNotification *a2)
{
  if (a2 != this)
  {
    v2 = *(this + 1);
    *(this + 1) = *(a2 + 1);
    *(a2 + 1) = v2;
    v3 = *(this + 2);
    *(this + 2) = *(a2 + 2);
    *(a2 + 2) = v3;
    LODWORD(v3) = *(this + 6);
    *(this + 6) = *(a2 + 6);
    *(a2 + 6) = v3;
    LODWORD(v3) = *(this + 7);
    *(this + 7) = *(a2 + 7);
    *(a2 + 7) = v3;
    LODWORD(v3) = *(this + 12);
    *(this + 12) = *(a2 + 12);
    *(a2 + 12) = v3;
    v4 = *(this + 4);
    *(this + 4) = *(a2 + 4);
    v5 = *(a2 + 5);
    *(a2 + 4) = v4;
    v6 = *(this + 5);
    *(this + 5) = v5;
    *(a2 + 5) = v6;
    v7 = *(this + 7);
    *(this + 7) = *(a2 + 7);
    result = *(a2 + 8);
    *(a2 + 7) = v7;
    v9 = *(this + 8);
    *(this + 8) = result;
    *(a2 + 8) = v9;
    LOBYTE(v7) = *(this + 52);
    *(this + 52) = *(a2 + 52);
    *(a2 + 52) = v7;
    LODWORD(v7) = *(this + 18);
    *(this + 18) = *(a2 + 18);
    *(a2 + 18) = v7;
    LODWORD(v7) = *(this + 20);
    *(this + 20) = *(a2 + 20);
    *(a2 + 20) = v7;
    LODWORD(v7) = *(this + 19);
    *(this + 19) = *(a2 + 19);
    *(a2 + 19) = v7;
  }

  return result;
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::ReachabilityState::SharedCtor(uint64_t this)
{
  *(this + 20) = 0;
  *(this + 24) = 0;
  *(this + 8) = 0;
  *(this + 16) = 0;
  return this;
}

CoreNavigation::CLP::LogEntry::PrivateData::ReachabilityState *CoreNavigation::CLP::LogEntry::PrivateData::ReachabilityState::ReachabilityState(CoreNavigation::CLP::LogEntry::PrivateData::ReachabilityState *this, const CoreNavigation::CLP::LogEntry::PrivateData::ReachabilityState *a2)
{
  *(this + 5) = 0;
  *(this + 6) = 0;
  *this = &unk_1F4CDA9C8;
  *(this + 1) = 0;
  *(this + 8) = 0;
  CoreNavigation::CLP::LogEntry::PrivateData::ReachabilityState::MergeFrom(this, a2);
  return this;
}

void CoreNavigation::CLP::LogEntry::PrivateData::ReachabilityState::MergeFrom(CoreNavigation::CLP::LogEntry::PrivateData::ReachabilityState *this, const CoreNavigation::CLP::LogEntry::PrivateData::ReachabilityState *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v9);
  }

  LOBYTE(v4) = *(a2 + 24);
  if (v4)
  {
    if (*(a2 + 24))
    {
      v5 = *(a2 + 2);
      if (v5 >= 4 && v5 != 1001)
      {
        __assert_rtn("set_previous", "CoreNavigationCLPPrivateDataShared.pb.h", 21495, "::CoreNavigation::CLP::LogEntry::PrivateData::ReachabilityType_IsValid(value)");
      }

      *(this + 6) |= 1u;
      *(this + 2) = v5;
      v4 = *(a2 + 6);
    }

    if ((v4 & 2) != 0)
    {
      v6 = *(a2 + 3);
      if (v6 >= 4 && v6 != 1001)
      {
        __assert_rtn("set_current", "CoreNavigationCLPPrivateDataShared.pb.h", 21518, "::CoreNavigation::CLP::LogEntry::PrivateData::ReachabilityType_IsValid(value)");
      }

      *(this + 6) |= 2u;
      *(this + 3) = v6;
      v4 = *(a2 + 6);
    }

    if ((v4 & 4) != 0)
    {
      v7 = *(a2 + 16);
      *(this + 6) |= 4u;
      *(this + 16) = v7;
      v4 = *(a2 + 6);
    }

    if ((v4 & 8) != 0)
    {
      v8 = *(a2 + 17);
      *(this + 6) |= 8u;
      *(this + 17) = v8;
    }
  }
}

void sub_1D0CDBB9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void CoreNavigation::CLP::LogEntry::PrivateData::ReachabilityState::~ReachabilityState(CoreNavigation::CLP::LogEntry::PrivateData::ReachabilityState *this)
{
  *this = &unk_1F4CDA9C8;
  CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  CoreNavigation::CLP::LogEntry::PrivateData::ReachabilityState::~ReachabilityState(this);

  JUMPOUT(0x1D387ECA0);
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::ReachabilityState::Clear(uint64_t this)
{
  if (*(this + 24))
  {
    *(this + 16) = 0;
    *(this + 8) = 0;
  }

  *(this + 24) = 0;
  return this;
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::ReachabilityState::MergePartialFromCodedStream(CoreNavigation::CLP::LogEntry::PrivateData::ReachabilityState *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
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
            v10 = *(a2 + 2);
            goto LABEL_43;
          }
        }

        else if (v7 == 4 && (TagFallback & 7) == 0)
        {
          v11 = *(a2 + 1);
          v10 = *(a2 + 2);
          goto LABEL_51;
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

      v23 = 0;
      v12 = *(a2 + 1);
      if (v12 >= *(a2 + 2) || (v13 = *v12, (v13 & 0x80000000) != 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v23);
        if (!result)
        {
          return result;
        }

        v13 = v23;
      }

      else
      {
        *(a2 + 1) = v12 + 1;
      }

      if (v13 < 4 || v13 == 1001)
      {
        *(this + 6) |= 1u;
        *(this + 2) = v13;
      }

      v15 = *(a2 + 1);
      v8 = *(a2 + 2);
      if (v15 < v8 && *v15 == 16)
      {
        v9 = v15 + 1;
        *(a2 + 1) = v9;
LABEL_32:
        v23 = 0;
        if (v9 >= v8 || (v16 = *v9, (v16 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v23);
          if (!result)
          {
            return result;
          }

          v16 = v23;
        }

        else
        {
          *(a2 + 1) = v9 + 1;
        }

        if (v16 < 4 || v16 == 1001)
        {
          *(this + 6) |= 2u;
          *(this + 3) = v16;
        }

        v17 = *(a2 + 1);
        v10 = *(a2 + 2);
        if (v17 < v10 && *v17 == 24)
        {
          v14 = v17 + 1;
          *(a2 + 1) = v14;
LABEL_43:
          v23 = 0;
          if (v14 >= v10 || (v18 = *v14, (v18 & 0x80000000) != 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v23);
            if (!result)
            {
              return result;
            }

            v18 = v23;
            v19 = *(a2 + 1);
            v10 = *(a2 + 2);
          }

          else
          {
            v19 = v14 + 1;
            *(a2 + 1) = v19;
          }

          *(this + 16) = v18 != 0;
          *(this + 6) |= 4u;
          if (v19 < v10 && *v19 == 32)
          {
            v11 = v19 + 1;
            *(a2 + 1) = v11;
LABEL_51:
            v23 = 0;
            if (v11 >= v10 || (v20 = *v11, (v20 & 0x80000000) != 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v23);
              if (!result)
              {
                return result;
              }

              v20 = v23;
              v21 = *(a2 + 1);
              v10 = *(a2 + 2);
            }

            else
            {
              v21 = v11 + 1;
              *(a2 + 1) = v21;
            }

            *(this + 17) = v20 != 0;
            *(this + 6) |= 8u;
            if (v21 == v10 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
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
      goto LABEL_32;
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

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::ReachabilityState::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 24);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(1, *(this + 8), a2, a4);
    v6 = *(v5 + 24);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

LABEL_8:
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(3, *(v5 + 16), a2, a4);
      if ((*(v5 + 24) & 8) == 0)
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

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(2, *(v5 + 12), a2, a4);
  v6 = *(v5 + 24);
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
  v7 = *(v5 + 17);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(4, v7, a2, a4);
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::ReachabilityState::ByteSize(CoreNavigation::CLP::LogEntry::PrivateData::ReachabilityState *this, unsigned int a2)
{
  v3 = *(this + 6);
  if (v3)
  {
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
        v3 = *(this + 6);
        if ((v3 & 2) == 0)
        {
LABEL_19:
          result = ((v3 >> 1) & 2) + v4 + ((v3 >> 2) & 2);
          goto LABEL_20;
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
      v3 = *(this + 6);
    }

    else
    {
      v8 = 2;
    }

    v4 += v8;
    goto LABEL_19;
  }

  result = 0;
LABEL_20:
  *(this + 5) = result;
  return result;
}

void CoreNavigation::CLP::LogEntry::PrivateData::ReachabilityState::CheckTypeAndMergeFrom(CoreNavigation::CLP::LogEntry::PrivateData::ReachabilityState *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  CoreNavigation::CLP::LogEntry::PrivateData::ReachabilityState::MergeFrom(this, lpsrc);
}

void CoreNavigation::CLP::LogEntry::PrivateData::ReachabilityState::CopyFrom(CoreNavigation::CLP::LogEntry::PrivateData::ReachabilityState *this, const CoreNavigation::CLP::LogEntry::PrivateData::ReachabilityState *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    CoreNavigation::CLP::LogEntry::PrivateData::ReachabilityState::MergeFrom(this, a2);
  }
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::ReachabilityState::Swap(uint64_t this, CoreNavigation::CLP::LogEntry::PrivateData::ReachabilityState *a2)
{
  if (a2 != this)
  {
    v2 = *(this + 8);
    *(this + 8) = *(a2 + 2);
    *(a2 + 2) = v2;
    v3 = *(this + 12);
    *(this + 12) = *(a2 + 3);
    *(a2 + 3) = v3;
    LOBYTE(v3) = *(this + 16);
    *(this + 16) = *(a2 + 16);
    *(a2 + 16) = v3;
    LOBYTE(v3) = *(this + 17);
    *(this + 17) = *(a2 + 17);
    *(a2 + 17) = v3;
    v4 = *(this + 24);
    *(this + 24) = *(a2 + 6);
    *(a2 + 6) = v4;
    v5 = *(this + 20);
    *(this + 20) = *(a2 + 5);
    *(a2 + 5) = v5;
  }

  return this;
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::Battery::SharedCtor(uint64_t this)
{
  *(this + 8) = 0xBFF0000000000000;
  *(this + 16) = 0;
  *(this + 20) = 0;
  *(this + 18) = 0;
  *(this + 24) = 0;
  *(this + 32) = 0;
  return this;
}

CoreNavigation::CLP::LogEntry::PrivateData::Battery *CoreNavigation::CLP::LogEntry::PrivateData::Battery::Battery(CoreNavigation::CLP::LogEntry::PrivateData::Battery *this, const CoreNavigation::CLP::LogEntry::PrivateData::Battery *a2)
{
  *this = &unk_1F4CDAA40;
  *(this + 1) = 0xBFF0000000000000;
  *(this + 8) = 0;
  *(this + 28) = 0;
  *(this + 20) = 0;
  *(this + 18) = 0;
  CoreNavigation::CLP::LogEntry::PrivateData::Battery::MergeFrom(this, a2);
  return this;
}

void CoreNavigation::CLP::LogEntry::PrivateData::Battery::MergeFrom(CoreNavigation::CLP::LogEntry::PrivateData::Battery *this, const CoreNavigation::CLP::LogEntry::PrivateData::Battery *a2)
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
    if (*(a2 + 32))
    {
      v7 = *(a2 + 1);
      *(this + 8) |= 1u;
      *(this + 1) = v7;
      v4 = *(a2 + 8);
      if ((v4 & 2) == 0)
      {
LABEL_6:
        if ((v4 & 4) == 0)
        {
          goto LABEL_7;
        }

        goto LABEL_15;
      }
    }

    else if ((*(a2 + 32) & 2) == 0)
    {
      goto LABEL_6;
    }

    v8 = *(a2 + 16);
    *(this + 8) |= 2u;
    *(this + 16) = v8;
    v4 = *(a2 + 8);
    if ((v4 & 4) == 0)
    {
LABEL_7:
      if ((v4 & 8) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_16;
    }

LABEL_15:
    v9 = *(a2 + 17);
    *(this + 8) |= 4u;
    *(this + 17) = v9;
    v4 = *(a2 + 8);
    if ((v4 & 8) == 0)
    {
LABEL_8:
      if ((v4 & 0x10) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_9;
    }

LABEL_16:
    v10 = *(a2 + 5);
    if (v10 >= 5)
    {
      __assert_rtn("set_charger_type", "CoreNavigationCLPPrivateDataShared.pb.h", 21655, "::CoreNavigation::CLP::LogEntry::PrivateData::BatteryChargerType_IsValid(value)");
    }

    *(this + 8) |= 8u;
    *(this + 5) = v10;
    v4 = *(a2 + 8);
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_10;
    }

LABEL_9:
    v5 = *(a2 + 18);
    *(this + 8) |= 0x10u;
    *(this + 18) = v5;
    v4 = *(a2 + 8);
LABEL_10:
    if ((v4 & 0x20) != 0)
    {
      v6 = *(a2 + 6);
      *(this + 8) |= 0x20u;
      *(this + 6) = v6;
    }
  }
}

void sub_1D0CDC4B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void CoreNavigation::CLP::LogEntry::PrivateData::Battery::~Battery(CoreNavigation::CLP::LogEntry::PrivateData::Battery *this)
{
  *this = &unk_1F4CDAA40;
  CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  CoreNavigation::CLP::LogEntry::PrivateData::Battery::~Battery(this);

  JUMPOUT(0x1D387ECA0);
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::Battery::Clear(uint64_t this)
{
  if (*(this + 32))
  {
    *(this + 8) = 0xBFF0000000000000;
    *(this + 16) = 0;
    *(this + 20) = 0;
    *(this + 18) = 0;
  }

  *(this + 32) = 0;
  return this;
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::Battery::MergePartialFromCodedStream(CoreNavigation::CLP::LogEntry::PrivateData::Battery *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
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
        if (TagFallback >> 3 > 3)
        {
          if (v7 == 4)
          {
            if ((TagFallback & 7) == 0)
            {
              v15 = *(a2 + 1);
              v9 = *(a2 + 2);
              goto LABEL_47;
            }
          }

          else if (v7 == 5)
          {
            if ((TagFallback & 7) == 0)
            {
              v18 = *(a2 + 1);
              v11 = *(a2 + 2);
              goto LABEL_57;
            }
          }

          else if (v7 == 6 && (TagFallback & 7) == 0)
          {
            v12 = *(a2 + 1);
            v11 = *(a2 + 2);
            goto LABEL_65;
          }

          goto LABEL_30;
        }

        if (v7 != 1)
        {
          break;
        }

        if (v8 != 1)
        {
          goto LABEL_30;
        }

        *v28 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v28) & 1) == 0)
        {
          return 0;
        }

        *(this + 1) = *v28;
        *(this + 8) |= 1u;
        v13 = *(a2 + 1);
        v9 = *(a2 + 2);
        if (v13 < v9 && *v13 == 16)
        {
          v14 = v13 + 1;
          *(a2 + 1) = v14;
          goto LABEL_26;
        }
      }

      if (v7 != 2)
      {
        break;
      }

      if ((TagFallback & 7) != 0)
      {
        goto LABEL_30;
      }

      v14 = *(a2 + 1);
      v9 = *(a2 + 2);
LABEL_26:
      v28[0] = 0;
      if (v14 >= v9 || (v16 = *v14, (v16 & 0x80000000) != 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v28);
        if (!result)
        {
          return result;
        }

        v16 = v28[0];
        v17 = *(a2 + 1);
        v9 = *(a2 + 2);
      }

      else
      {
        v17 = v14 + 1;
        *(a2 + 1) = v17;
      }

      *(this + 16) = v16 != 0;
      *(this + 8) |= 2u;
      if (v17 < v9 && *v17 == 24)
      {
        v10 = v17 + 1;
        *(a2 + 1) = v10;
LABEL_39:
        v28[0] = 0;
        if (v10 >= v9 || (v20 = *v10, (v20 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v28);
          if (!result)
          {
            return result;
          }

          v20 = v28[0];
          v21 = *(a2 + 1);
          v9 = *(a2 + 2);
        }

        else
        {
          v21 = v10 + 1;
          *(a2 + 1) = v21;
        }

        *(this + 17) = v20 != 0;
        *(this + 8) |= 4u;
        if (v21 < v9 && *v21 == 32)
        {
          v15 = v21 + 1;
          *(a2 + 1) = v15;
LABEL_47:
          v28[0] = 0;
          if (v15 >= v9 || (v22 = *v15, (v22 & 0x80000000) != 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v28);
            if (!result)
            {
              return result;
            }

            v22 = v28[0];
          }

          else
          {
            *(a2 + 1) = v15 + 1;
          }

          if (v22 <= 4)
          {
            *(this + 8) |= 8u;
            *(this + 5) = v22;
          }

          v23 = *(a2 + 1);
          v11 = *(a2 + 2);
          if (v23 < v11 && *v23 == 40)
          {
            v18 = v23 + 1;
            *(a2 + 1) = v18;
LABEL_57:
            v28[0] = 0;
            if (v18 >= v11 || (v24 = *v18, (v24 & 0x80000000) != 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v28);
              if (!result)
              {
                return result;
              }

              v24 = v28[0];
              v25 = *(a2 + 1);
              v11 = *(a2 + 2);
            }

            else
            {
              v25 = v18 + 1;
              *(a2 + 1) = v25;
            }

            *(this + 18) = v24 != 0;
            *(this + 8) |= 0x10u;
            if (v25 < v11 && *v25 == 48)
            {
              v12 = v25 + 1;
              *(a2 + 1) = v12;
LABEL_65:
              v28[0] = 0;
              if (v12 >= v11 || (v26 = *v12, (v26 & 0x80000000) != 0))
              {
                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v28);
                if (!result)
                {
                  return result;
                }

                v26 = v28[0];
                v27 = *(a2 + 1);
                v11 = *(a2 + 2);
              }

              else
              {
                v27 = v12 + 1;
                *(a2 + 1) = v27;
              }

              *(this + 6) = v26;
              *(this + 8) |= 0x20u;
              if (v27 == v11 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
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
      v10 = *(a2 + 1);
      v9 = *(a2 + 2);
      goto LABEL_39;
    }

LABEL_30:
    if (v8 == 4)
    {
      return 1;
    }
  }

  while ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(a2, TagFallback) & 1) != 0);
  return 0;
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::Battery::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 32);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(1, a2, *(this + 8), a3);
    v6 = *(v5 + 32);
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

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(2, *(v5 + 16), a2, a4);
  v6 = *(v5 + 32);
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
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(3, *(v5 + 17), a2, a4);
  v6 = *(v5 + 32);
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_6;
    }

LABEL_12:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(5, *(v5 + 18), a2, a4);
    if ((*(v5 + 32) & 0x20) == 0)
    {
      return this;
    }

    goto LABEL_13;
  }

LABEL_11:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(4, *(v5 + 20), a2, a4);
  v6 = *(v5 + 32);
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
  v7 = *(v5 + 24);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(6, v7, a2, a4);
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::Battery::ByteSize(CoreNavigation::CLP::LogEntry::PrivateData::Battery *this, unsigned int a2)
{
  v3 = *(this + 8);
  if (v3)
  {
    v4 = (((v3 << 31) >> 31) & 9 | v3 & 2) + ((v3 >> 1) & 2);
    if ((v3 & 8) != 0)
    {
      v5 = *(this + 5);
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

      v4 += v6;
    }

    v7 = ((v3 >> 3) & 2) + v4;
    if ((v3 & 0x20) != 0)
    {
      v8 = *(this + 6);
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

      v7 = (v9 + v7);
    }
  }

  else
  {
    v7 = 0;
  }

  *(this + 7) = v7;
  return v7;
}

void CoreNavigation::CLP::LogEntry::PrivateData::Battery::CheckTypeAndMergeFrom(CoreNavigation::CLP::LogEntry::PrivateData::Battery *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  CoreNavigation::CLP::LogEntry::PrivateData::Battery::MergeFrom(this, lpsrc);
}

void CoreNavigation::CLP::LogEntry::PrivateData::Battery::CopyFrom(CoreNavigation::CLP::LogEntry::PrivateData::Battery *this, const CoreNavigation::CLP::LogEntry::PrivateData::Battery *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    CoreNavigation::CLP::LogEntry::PrivateData::Battery::MergeFrom(this, a2);
  }
}

double CoreNavigation::CLP::LogEntry::PrivateData::Battery::Swap(CoreNavigation::CLP::LogEntry::PrivateData::Battery *this, CoreNavigation::CLP::LogEntry::PrivateData::Battery *a2)
{
  if (a2 != this)
  {
    result = *(this + 1);
    *(this + 1) = *(a2 + 1);
    *(a2 + 1) = result;
    v3 = *(this + 16);
    *(this + 16) = *(a2 + 16);
    *(a2 + 16) = v3;
    v4 = *(this + 17);
    *(this + 17) = *(a2 + 17);
    *(a2 + 17) = v4;
    v5 = *(this + 5);
    *(this + 5) = *(a2 + 5);
    *(a2 + 5) = v5;
    LOBYTE(v5) = *(this + 18);
    *(this + 18) = *(a2 + 18);
    *(a2 + 18) = v5;
    v6 = *(this + 6);
    *(this + 6) = *(a2 + 6);
    *(a2 + 6) = v6;
    v7 = *(this + 8);
    *(this + 8) = *(a2 + 8);
    *(a2 + 8) = v7;
    v8 = *(this + 7);
    *(this + 7) = *(a2 + 7);
    *(a2 + 7) = v8;
  }

  return result;
}

double CoreNavigation::CLP::LogEntry::PrivateData::DeviceStatus::SharedCtor(CoreNavigation::CLP::LogEntry::PrivateData::DeviceStatus *this)
{
  *(this + 7) = 0;
  *(this + 13) = 0;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 34) = 0u;
  return result;
}

CoreNavigation::CLP::LogEntry::PrivateData::DeviceStatus *CoreNavigation::CLP::LogEntry::PrivateData::DeviceStatus::DeviceStatus(CoreNavigation::CLP::LogEntry::PrivateData::DeviceStatus *this, const CoreNavigation::CLP::LogEntry::PrivateData::DeviceStatus *a2)
{
  *this = &unk_1F4CDAAB8;
  *(this + 7) = 0;
  *(this + 13) = 0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 34) = 0u;
  CoreNavigation::CLP::LogEntry::PrivateData::DeviceStatus::MergeFrom(this, a2);
  return this;
}

void CoreNavigation::CLP::LogEntry::PrivateData::DeviceStatus::MergeFrom(CoreNavigation::CLP::LogEntry::PrivateData::DeviceStatus *this, const CoreNavigation::CLP::LogEntry::PrivateData::DeviceStatus *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v21);
  }

  v4 = *(a2 + 15);
  if (!v4)
  {
    goto LABEL_13;
  }

  if (v4)
  {
    *(this + 15) |= 1u;
    v7 = *(this + 1);
    if (!v7)
    {
      operator new();
    }

    v8 = *(a2 + 1);
    if (!v8)
    {
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(this);
      v8 = *(CoreNavigation::CLP::LogEntry::PrivateData::DeviceStatus::default_instance_ + 8);
    }

    CoreNavigation::CLP::LogEntry::PrivateData::TimeStamp::MergeFrom(v7, v8);
    v4 = *(a2 + 15);
    if ((v4 & 2) == 0)
    {
LABEL_6:
      if ((v4 & 4) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_27;
    }
  }

  else if ((v4 & 2) == 0)
  {
    goto LABEL_6;
  }

  v9 = *(a2 + 4);
  *(this + 15) |= 2u;
  *(this + 4) = v9;
  v4 = *(a2 + 15);
  if ((v4 & 4) == 0)
  {
LABEL_7:
    if ((v4 & 8) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_29;
  }

LABEL_27:
  v10 = *(a2 + 5);
  if (v10 >= 0x14)
  {
    __assert_rtn("set_notification_data", "CoreNavigationCLPPrivateDataShared.pb.h", 21790, "::CoreNavigation::CLP::LogEntry::PrivateData::DeviceStatus_NotificationType_IsValid(value)");
  }

  *(this + 15) |= 4u;
  *(this + 5) = v10;
  v4 = *(a2 + 15);
  if ((v4 & 8) == 0)
  {
LABEL_8:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_34;
  }

LABEL_29:
  *(this + 15) |= 8u;
  v11 = *(this + 3);
  if (!v11)
  {
    operator new();
  }

  v12 = *(a2 + 3);
  if (!v12)
  {
    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(this);
    v12 = *(CoreNavigation::CLP::LogEntry::PrivateData::DeviceStatus::default_instance_ + 24);
  }

  CoreNavigation::CLP::LogEntry::PrivateData::ReachabilityState::MergeFrom(v11, v12);
  v4 = *(a2 + 15);
  if ((v4 & 0x10) == 0)
  {
LABEL_9:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_10;
    }

LABEL_39:
    v15 = *(a2 + 40);
    *(this + 15) |= 0x20u;
    *(this + 40) = v15;
    v4 = *(a2 + 15);
    if ((v4 & 0x40) == 0)
    {
LABEL_11:
      if ((v4 & 0x80) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_12;
    }

    goto LABEL_40;
  }

LABEL_34:
  *(this + 15) |= 0x10u;
  v13 = *(this + 4);
  if (!v13)
  {
    operator new();
  }

  v14 = *(a2 + 4);
  if (!v14)
  {
    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(this);
    v14 = *(CoreNavigation::CLP::LogEntry::PrivateData::DeviceStatus::default_instance_ + 32);
  }

  CoreNavigation::CLP::LogEntry::PrivateData::Battery::MergeFrom(v13, v14);
  v4 = *(a2 + 15);
  if ((v4 & 0x20) != 0)
  {
    goto LABEL_39;
  }

LABEL_10:
  if ((v4 & 0x40) == 0)
  {
    goto LABEL_11;
  }

LABEL_40:
  v16 = *(a2 + 41);
  *(this + 15) |= 0x40u;
  *(this + 41) = v16;
  v4 = *(a2 + 15);
  if ((v4 & 0x80) != 0)
  {
LABEL_12:
    v5 = *(a2 + 42);
    *(this + 15) |= 0x80u;
    *(this + 42) = v5;
    v4 = *(a2 + 15);
  }

LABEL_13:
  if ((v4 & 0xFF00) == 0)
  {
    return;
  }

  if ((v4 & 0x100) != 0)
  {
    v17 = *(a2 + 43);
    *(this + 15) |= 0x100u;
    *(this + 43) = v17;
    v4 = *(a2 + 15);
    if ((v4 & 0x200) == 0)
    {
LABEL_16:
      if ((v4 & 0x400) == 0)
      {
        goto LABEL_17;
      }

      goto LABEL_44;
    }
  }

  else if ((v4 & 0x200) == 0)
  {
    goto LABEL_16;
  }

  v18 = *(a2 + 48);
  *(this + 15) |= 0x200u;
  *(this + 48) = v18;
  v4 = *(a2 + 15);
  if ((v4 & 0x400) == 0)
  {
LABEL_17:
    if ((v4 & 0x800) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_45;
  }

LABEL_44:
  v19 = *(a2 + 11);
  *(this + 15) |= 0x400u;
  *(this + 11) = v19;
  v4 = *(a2 + 15);
  if ((v4 & 0x800) == 0)
  {
LABEL_18:
    if ((v4 & 0x1000) == 0)
    {
      return;
    }

    goto LABEL_19;
  }

LABEL_45:
  v20 = *(a2 + 13);
  *(this + 15) |= 0x800u;
  *(this + 13) = v20;
  if ((*(a2 + 15) & 0x1000) != 0)
  {
LABEL_19:
    v6 = *(a2 + 49);
    *(this + 15) |= 0x1000u;
    *(this + 49) = v6;
  }
}

void sub_1D0CDD150(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void CoreNavigation::CLP::LogEntry::PrivateData::DeviceStatus::~DeviceStatus(CoreNavigation::CLP::LogEntry::PrivateData::DeviceStatus *this)
{
  *this = &unk_1F4CDAAB8;
  CoreNavigation::CLP::LogEntry::PrivateData::DeviceStatus::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  CoreNavigation::CLP::LogEntry::PrivateData::DeviceStatus::~DeviceStatus(this);

  JUMPOUT(0x1D387ECA0);
}

void CoreNavigation::CLP::LogEntry::PrivateData::DeviceStatus::SharedDtor(CoreNavigation::CLP::LogEntry::PrivateData::DeviceStatus *this)
{
  CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(this);
  if (CoreNavigation::CLP::LogEntry::PrivateData::DeviceStatus::default_instance_ != this)
  {
    v2 = *(this + 1);
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }

    v3 = *(this + 3);
    if (v3)
    {
      (*(*v3 + 8))(v3);
    }

    v4 = *(this + 4);
    if (v4)
    {
      v5 = *(*v4 + 8);

      v5();
    }
  }
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::DeviceStatus::Clear(uint64_t this)
{
  v1 = *(this + 60);
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
        v1 = *(this + 60);
      }
    }

    *(this + 16) = 0;
    if ((v1 & 8) != 0)
    {
      v3 = *(this + 24);
      if (v3)
      {
        if (*(v3 + 24))
        {
          *(v3 + 16) = 0;
          *(v3 + 8) = 0;
        }

        *(v3 + 24) = 0;
        v1 = *(this + 60);
      }
    }

    if ((v1 & 0x10) != 0)
    {
      v4 = *(this + 32);
      if (v4)
      {
        if (*(v4 + 32))
        {
          *(v4 + 8) = 0xBFF0000000000000;
          *(v4 + 16) = 0;
          *(v4 + 20) = 0;
          *(v4 + 18) = 0;
        }

        *(v4 + 32) = 0;
        v1 = *(this + 60);
      }
    }

    *(this + 40) = 0;
    *(this + 42) = 0;
  }

  if ((v1 & 0xFF00) != 0)
  {
    *(this + 52) = 0;
    *(this + 43) = 0;
    *(this + 46) = 0;
  }

  *(this + 60) = 0;
  return this;
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::DeviceStatus::MergePartialFromCodedStream(CoreNavigation::CLP::LogEntry::PrivateData::DeviceStatus *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
{
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
        if (v7 != 2)
        {
          goto LABEL_36;
        }

        *(this + 15) |= 1u;
        v8 = *(this + 1);
        if (!v8)
        {
          operator new();
        }

        v66 = 0;
        v9 = *(a2 + 1);
        if (v9 >= *(a2 + 2) || *v9 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v66))
          {
            return 0;
          }
        }

        else
        {
          v66 = *v9;
          *(a2 + 1) = v9 + 1;
        }

        v22 = *(a2 + 14);
        v23 = *(a2 + 15);
        *(a2 + 14) = v22 + 1;
        if (v22 >= v23)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
        if (!CoreNavigation::CLP::LogEntry::PrivateData::TimeStamp::MergePartialFromCodedStream(v8, a2, v24) || *(a2 + 36) != 1)
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
        v14 = *(a2 + 2);
        if (v28 >= v14 || *v28 != 16)
        {
          continue;
        }

        v17 = v28 + 1;
        *(a2 + 1) = v17;
        goto LABEL_49;
      case 2u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_36;
        }

        v17 = *(a2 + 1);
        v14 = *(a2 + 2);
LABEL_49:
        v66 = 0;
        if (v17 >= v14 || (v29 = *v17, (v29 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v66);
          if (!result)
          {
            return result;
          }

          v29 = v66;
          v30 = *(a2 + 1);
          v14 = *(a2 + 2);
        }

        else
        {
          v30 = v17 + 1;
          *(a2 + 1) = v30;
        }

        *(this + 4) = v29;
        *(this + 15) |= 2u;
        if (v30 >= v14 || *v30 != 24)
        {
          continue;
        }

        v15 = v30 + 1;
        *(a2 + 1) = v15;
LABEL_57:
        v66 = 0;
        if (v15 >= v14 || (v32 = *v15, (v32 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v66);
          if (!result)
          {
            return result;
          }

          v32 = v66;
        }

        else
        {
          *(a2 + 1) = v15 + 1;
        }

        if (v32 <= 0x13)
        {
          *(this + 15) |= 4u;
          *(this + 5) = v32;
        }

        v33 = *(a2 + 1);
        if (v33 >= *(a2 + 2) || *v33 != 34)
        {
          continue;
        }

        *(a2 + 1) = v33 + 1;
LABEL_67:
        *(this + 15) |= 8u;
        v34 = *(this + 3);
        if (!v34)
        {
          operator new();
        }

        v66 = 0;
        v35 = *(a2 + 1);
        if (v35 >= *(a2 + 2) || *v35 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v66))
          {
            return 0;
          }
        }

        else
        {
          v66 = *v35;
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
        if (!CoreNavigation::CLP::LogEntry::PrivateData::ReachabilityState::MergePartialFromCodedStream(v34, a2, v38) || *(a2 + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
        v39 = *(a2 + 14);
        v26 = __OFSUB__(v39, 1);
        v40 = v39 - 1;
        if (v40 < 0 == v26)
        {
          *(a2 + 14) = v40;
        }

        v41 = *(a2 + 1);
        if (v41 >= *(a2 + 2) || *v41 != 42)
        {
          continue;
        }

        *(a2 + 1) = v41 + 1;
LABEL_81:
        *(this + 15) |= 0x10u;
        v42 = *(this + 4);
        if (!v42)
        {
          operator new();
        }

        v66 = 0;
        v43 = *(a2 + 1);
        if (v43 >= *(a2 + 2) || *v43 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v66))
          {
            return 0;
          }
        }

        else
        {
          v66 = *v43;
          *(a2 + 1) = v43 + 1;
        }

        v44 = *(a2 + 14);
        v45 = *(a2 + 15);
        *(a2 + 14) = v44 + 1;
        if (v44 < v45)
        {
          wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
          if (CoreNavigation::CLP::LogEntry::PrivateData::Battery::MergePartialFromCodedStream(v42, a2, v46))
          {
            if (*(a2 + 36) == 1)
            {
              wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
              v47 = *(a2 + 14);
              v26 = __OFSUB__(v47, 1);
              v48 = v47 - 1;
              if (v48 < 0 == v26)
              {
                *(a2 + 14) = v48;
              }

              v49 = *(a2 + 1);
              v10 = *(a2 + 2);
              if (v49 < v10 && *v49 == 48)
              {
                v18 = v49 + 1;
                *(a2 + 1) = v18;
LABEL_95:
                v66 = 0;
                if (v18 >= v10 || (v50 = *v18, (v50 & 0x80000000) != 0))
                {
                  result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v66);
                  if (!result)
                  {
                    return result;
                  }

                  v50 = v66;
                  v51 = *(a2 + 1);
                  v10 = *(a2 + 2);
                }

                else
                {
                  v51 = v18 + 1;
                  *(a2 + 1) = v51;
                }

                *(this + 40) = v50 != 0;
                *(this + 15) |= 0x20u;
                if (v51 < v10 && *v51 == 56)
                {
                  v19 = v51 + 1;
                  *(a2 + 1) = v19;
LABEL_103:
                  v66 = 0;
                  if (v19 >= v10 || (v52 = *v19, (v52 & 0x80000000) != 0))
                  {
                    result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v66);
                    if (!result)
                    {
                      return result;
                    }

                    v52 = v66;
                    v53 = *(a2 + 1);
                    v10 = *(a2 + 2);
                  }

                  else
                  {
                    v53 = v19 + 1;
                    *(a2 + 1) = v53;
                  }

                  *(this + 41) = v52 != 0;
                  *(this + 15) |= 0x40u;
                  if (v53 < v10 && *v53 == 64)
                  {
                    v16 = v53 + 1;
                    *(a2 + 1) = v16;
LABEL_111:
                    v66 = 0;
                    if (v16 >= v10 || (v54 = *v16, (v54 & 0x80000000) != 0))
                    {
                      result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v66);
                      if (!result)
                      {
                        return result;
                      }

                      v54 = v66;
                      v55 = *(a2 + 1);
                      v10 = *(a2 + 2);
                    }

                    else
                    {
                      v55 = v16 + 1;
                      *(a2 + 1) = v55;
                    }

                    *(this + 42) = v54 != 0;
                    *(this + 15) |= 0x80u;
                    if (v55 < v10 && *v55 == 72)
                    {
                      v21 = v55 + 1;
                      *(a2 + 1) = v21;
LABEL_119:
                      v66 = 0;
                      if (v21 >= v10 || (v56 = *v21, (v56 & 0x80000000) != 0))
                      {
                        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v66);
                        if (!result)
                        {
                          return result;
                        }

                        v56 = v66;
                        v57 = *(a2 + 1);
                        v10 = *(a2 + 2);
                      }

                      else
                      {
                        v57 = v21 + 1;
                        *(a2 + 1) = v57;
                      }

                      *(this + 43) = v56 != 0;
                      *(this + 15) |= 0x100u;
                      if (v57 < v10 && *v57 == 80)
                      {
                        v13 = v57 + 1;
                        *(a2 + 1) = v13;
LABEL_127:
                        v66 = 0;
                        if (v13 >= v10 || (v58 = *v13, (v58 & 0x80000000) != 0))
                        {
                          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v66);
                          if (!result)
                          {
                            return result;
                          }

                          v58 = v66;
                          v59 = *(a2 + 1);
                          v10 = *(a2 + 2);
                        }

                        else
                        {
                          v59 = v13 + 1;
                          *(a2 + 1) = v59;
                        }

                        *(this + 48) = v58 != 0;
                        *(this + 15) |= 0x200u;
                        if (v59 < v10 && *v59 == 88)
                        {
                          v20 = v59 + 1;
                          *(a2 + 1) = v20;
LABEL_135:
                          v66 = 0;
                          if (v20 >= v10 || (v60 = *v20, (v60 & 0x80000000) != 0))
                          {
                            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v66);
                            if (!result)
                            {
                              return result;
                            }

                            v60 = v66;
                            v61 = *(a2 + 1);
                            v10 = *(a2 + 2);
                          }

                          else
                          {
                            v61 = v20 + 1;
                            *(a2 + 1) = v61;
                          }

                          *(this + 11) = v60;
                          *(this + 15) |= 0x400u;
                          if (v61 < v10 && *v61 == 96)
                          {
                            v11 = v61 + 1;
                            *(a2 + 1) = v11;
LABEL_143:
                            v66 = 0;
                            if (v11 >= v10 || (v62 = *v11, (v62 & 0x80000000) != 0))
                            {
                              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v66);
                              if (!result)
                              {
                                return result;
                              }

                              v62 = v66;
                              v63 = *(a2 + 1);
                              v10 = *(a2 + 2);
                            }

                            else
                            {
                              v63 = v11 + 1;
                              *(a2 + 1) = v63;
                            }

                            *(this + 13) = v62;
                            *(this + 15) |= 0x800u;
                            if (v63 < v10 && *v63 == 104)
                            {
                              v12 = v63 + 1;
                              *(a2 + 1) = v12;
LABEL_151:
                              v66 = 0;
                              if (v12 >= v10 || (v64 = *v12, (v64 & 0x80000000) != 0))
                              {
                                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v66);
                                if (!result)
                                {
                                  return result;
                                }

                                v64 = v66;
                                v65 = *(a2 + 1);
                                v10 = *(a2 + 2);
                              }

                              else
                              {
                                v65 = v12 + 1;
                                *(a2 + 1) = v65;
                              }

                              *(this + 49) = v64 != 0;
                              *(this + 15) |= 0x1000u;
                              if (v65 == v10 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
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
          }
        }

        return 0;
      case 3u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_36;
        }

        v15 = *(a2 + 1);
        v14 = *(a2 + 2);
        goto LABEL_57;
      case 4u:
        if (v7 == 2)
        {
          goto LABEL_67;
        }

        goto LABEL_36;
      case 5u:
        if (v7 == 2)
        {
          goto LABEL_81;
        }

        goto LABEL_36;
      case 6u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_36;
        }

        v18 = *(a2 + 1);
        v10 = *(a2 + 2);
        goto LABEL_95;
      case 7u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_36;
        }

        v19 = *(a2 + 1);
        v10 = *(a2 + 2);
        goto LABEL_103;
      case 8u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_36;
        }

        v16 = *(a2 + 1);
        v10 = *(a2 + 2);
        goto LABEL_111;
      case 9u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_36;
        }

        v21 = *(a2 + 1);
        v10 = *(a2 + 2);
        goto LABEL_119;
      case 0xAu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_36;
        }

        v13 = *(a2 + 1);
        v10 = *(a2 + 2);
        goto LABEL_127;
      case 0xBu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_36;
        }

        v20 = *(a2 + 1);
        v10 = *(a2 + 2);
        goto LABEL_135;
      case 0xCu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_36;
        }

        v11 = *(a2 + 1);
        v10 = *(a2 + 2);
        goto LABEL_143;
      case 0xDu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_36;
        }

        v12 = *(a2 + 1);
        v10 = *(a2 + 2);
        goto LABEL_151;
      default:
LABEL_36:
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
  }
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::DeviceStatus::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 60);
  if (v6)
  {
    v7 = *(this + 8);
    if (!v7)
    {
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(this);
      v7 = *(CoreNavigation::CLP::LogEntry::PrivateData::DeviceStatus::default_instance_ + 8);
    }

    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(1, v7, a2, a4);
    v6 = *(v5 + 60);
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

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(2, *(v5 + 16), a2, a4);
  v6 = *(v5 + 60);
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
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(3, *(v5 + 20), a2, a4);
  v6 = *(v5 + 60);
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_23;
  }

LABEL_20:
  v8 = *(v5 + 24);
  if (!v8)
  {
    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(this);
    v8 = *(CoreNavigation::CLP::LogEntry::PrivateData::DeviceStatus::default_instance_ + 24);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(4, v8, a2, a4);
  v6 = *(v5 + 60);
  if ((v6 & 0x10) == 0)
  {
LABEL_6:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_26;
  }

LABEL_23:
  v9 = *(v5 + 32);
  if (!v9)
  {
    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(this);
    v9 = *(CoreNavigation::CLP::LogEntry::PrivateData::DeviceStatus::default_instance_ + 32);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(5, v9, a2, a4);
  v6 = *(v5 + 60);
  if ((v6 & 0x20) == 0)
  {
LABEL_7:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_27;
  }

LABEL_26:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(6, *(v5 + 40), a2, a4);
  v6 = *(v5 + 60);
  if ((v6 & 0x40) == 0)
  {
LABEL_8:
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_28;
  }

LABEL_27:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(7, *(v5 + 41), a2, a4);
  v6 = *(v5 + 60);
  if ((v6 & 0x80) == 0)
  {
LABEL_9:
    if ((v6 & 0x100) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_29;
  }

LABEL_28:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(8, *(v5 + 42), a2, a4);
  v6 = *(v5 + 60);
  if ((v6 & 0x100) == 0)
  {
LABEL_10:
    if ((v6 & 0x200) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_30;
  }

LABEL_29:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(9, *(v5 + 43), a2, a4);
  v6 = *(v5 + 60);
  if ((v6 & 0x200) == 0)
  {
LABEL_11:
    if ((v6 & 0x400) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_31;
  }

LABEL_30:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(0xA, *(v5 + 48), a2, a4);
  v6 = *(v5 + 60);
  if ((v6 & 0x400) == 0)
  {
LABEL_12:
    if ((v6 & 0x800) == 0)
    {
      goto LABEL_13;
    }

LABEL_32:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(0xC, *(v5 + 52), a2, a4);
    if ((*(v5 + 60) & 0x1000) == 0)
    {
      return this;
    }

    goto LABEL_33;
  }

LABEL_31:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(0xB, *(v5 + 44), a2, a4);
  v6 = *(v5 + 60);
  if ((v6 & 0x800) != 0)
  {
    goto LABEL_32;
  }

LABEL_13:
  if ((v6 & 0x1000) == 0)
  {
    return this;
  }

LABEL_33:
  v10 = *(v5 + 49);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(0xD, v10, a2, a4);
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::DeviceStatus::ByteSize(CoreNavigation::CLP::LogEntry::PrivateData::DeviceStatus *this, unsigned int a2)
{
  v3 = *(this + 15);
  if (!v3)
  {
    result = 0;
    goto LABEL_44;
  }

  if ((v3 & 1) == 0)
  {
    v4 = 0;
    if ((v3 & 2) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_15;
  }

  v6 = *(this + 1);
  if (!v6)
  {
    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(this);
    v6 = *(CoreNavigation::CLP::LogEntry::PrivateData::DeviceStatus::default_instance_ + 8);
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
  v3 = *(this + 15);
  if ((v3 & 2) != 0)
  {
LABEL_15:
    v9 = *(this + 4);
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

    v4 += v10;
  }

LABEL_21:
  if ((v3 & 4) == 0)
  {
    if ((v3 & 8) == 0)
    {
      goto LABEL_23;
    }

LABEL_31:
    v13 = *(this + 3);
    if (!v13)
    {
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(0);
      v13 = *(CoreNavigation::CLP::LogEntry::PrivateData::DeviceStatus::default_instance_ + 24);
    }

    v14 = CoreNavigation::CLP::LogEntry::PrivateData::ReachabilityState::ByteSize(v13, a2);
    v15 = v14;
    if (v14 >= 0x80)
    {
      v16 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v14);
    }

    else
    {
      v16 = 1;
    }

    v4 += v15 + v16 + 1;
    v3 = *(this + 15);
    if ((v3 & 0x10) == 0)
    {
      goto LABEL_43;
    }

    goto LABEL_37;
  }

  v11 = *(this + 5);
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

  v4 += v12;
  if ((v3 & 8) != 0)
  {
    goto LABEL_31;
  }

LABEL_23:
  if ((v3 & 0x10) != 0)
  {
LABEL_37:
    v17 = *(this + 4);
    if (!v17)
    {
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(0);
      v17 = *(CoreNavigation::CLP::LogEntry::PrivateData::DeviceStatus::default_instance_ + 32);
    }

    v18 = CoreNavigation::CLP::LogEntry::PrivateData::Battery::ByteSize(v17, a2);
    v19 = v18;
    if (v18 >= 0x80)
    {
      v20 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v18);
    }

    else
    {
      v20 = 1;
    }

    v4 += v19 + v20 + 1;
    v3 = *(this + 15);
  }

LABEL_43:
  result = ((v3 >> 4) & 2) + v4 + ((v3 >> 5) & 2) + ((v3 >> 6) & 2);
LABEL_44:
  if ((v3 & 0xFF00) != 0)
  {
    v21 = ((v3 >> 7) & 2) + result + ((v3 >> 8) & 2);
    if ((v3 & 0x400) != 0)
    {
      v22 = *(this + 11);
      if ((v22 & 0x80000000) != 0)
      {
        v23 = 11;
      }

      else if (v22 >= 0x80)
      {
        v23 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v22) + 1;
        v3 = *(this + 15);
      }

      else
      {
        v23 = 2;
      }

      v21 += v23;
    }

    if ((v3 & 0x800) != 0)
    {
      v24 = *(this + 13);
      if ((v24 & 0x80000000) != 0)
      {
        v25 = 11;
      }

      else if (v24 >= 0x80)
      {
        v25 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v24) + 1;
        v3 = *(this + 15);
      }

      else
      {
        v25 = 2;
      }

      v21 += v25;
    }

    result = ((v3 >> 11) & 2) + v21;
  }

  *(this + 14) = result;
  return result;
}

void CoreNavigation::CLP::LogEntry::PrivateData::DeviceStatus::CheckTypeAndMergeFrom(CoreNavigation::CLP::LogEntry::PrivateData::DeviceStatus *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  CoreNavigation::CLP::LogEntry::PrivateData::DeviceStatus::MergeFrom(this, lpsrc);
}

void CoreNavigation::CLP::LogEntry::PrivateData::DeviceStatus::CopyFrom(CoreNavigation::CLP::LogEntry::PrivateData::DeviceStatus *this, const CoreNavigation::CLP::LogEntry::PrivateData::DeviceStatus *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    CoreNavigation::CLP::LogEntry::PrivateData::DeviceStatus::MergeFrom(this, a2);
  }
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::DeviceStatus::Swap(uint64_t this, CoreNavigation::CLP::LogEntry::PrivateData::DeviceStatus *a2)
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
    v4 = *(this + 32);
    *(this + 32) = *(a2 + 4);
    *(a2 + 4) = v4;
    LOBYTE(v4) = *(this + 40);
    *(this + 40) = *(a2 + 40);
    *(a2 + 40) = v4;
    LOBYTE(v4) = *(this + 41);
    *(this + 41) = *(a2 + 41);
    *(a2 + 41) = v4;
    LOBYTE(v4) = *(this + 42);
    *(this + 42) = *(a2 + 42);
    *(a2 + 42) = v4;
    LOBYTE(v4) = *(this + 43);
    *(this + 43) = *(a2 + 43);
    *(a2 + 43) = v4;
    LOBYTE(v4) = *(this + 48);
    *(this + 48) = *(a2 + 48);
    *(a2 + 48) = v4;
    LODWORD(v4) = *(this + 44);
    *(this + 44) = *(a2 + 11);
    *(a2 + 11) = v4;
    LODWORD(v4) = *(this + 52);
    *(this + 52) = *(a2 + 13);
    *(a2 + 13) = v4;
    LOBYTE(v4) = *(this + 49);
    *(this + 49) = *(a2 + 49);
    *(a2 + 49) = v4;
    LODWORD(v4) = *(this + 60);
    *(this + 60) = *(a2 + 15);
    *(a2 + 15) = v4;
    LODWORD(v4) = *(this + 56);
    *(this + 56) = *(a2 + 14);
    *(a2 + 14) = v4;
  }

  return this;
}

double CoreNavigation::CLP::LogEntry::PrivateData::SignalEnvironment::SharedCtor(CoreNavigation::CLP::LogEntry::PrivateData::SignalEnvironment *this)
{
  *(this + 1) = 0;
  result = NAN;
  *(this + 1) = xmmword_1D0E7A2D0;
  *(this + 8) = 0;
  return result;
}

CoreNavigation::CLP::LogEntry::PrivateData::SignalEnvironment *CoreNavigation::CLP::LogEntry::PrivateData::SignalEnvironment::SignalEnvironment(CoreNavigation::CLP::LogEntry::PrivateData::SignalEnvironment *this, const CoreNavigation::CLP::LogEntry::PrivateData::SignalEnvironment *a2)
{
  *this = &unk_1F4CDAB30;
  *(this + 1) = 0;
  *(this + 1) = xmmword_1D0E7A2D0;
  *(this + 8) = 0;
  CoreNavigation::CLP::LogEntry::PrivateData::SignalEnvironment::MergeFrom(this, a2);
  return this;
}

void CoreNavigation::CLP::LogEntry::PrivateData::SignalEnvironment::MergeFrom(CoreNavigation::CLP::LogEntry::PrivateData::SignalEnvironment *this, const CoreNavigation::CLP::LogEntry::PrivateData::SignalEnvironment *a2)
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
        v6 = *(CoreNavigation::CLP::LogEntry::PrivateData::SignalEnvironment::default_instance_ + 8);
      }

      CoreNavigation::CLP::LogEntry::PrivateData::TimeStamp::MergeFrom(v5, v6);
      v4 = *(a2 + 8);
    }

    if ((v4 & 2) != 0)
    {
      v7 = *(a2 + 4);
      if ((v7 + 1) >= 8)
      {
        __assert_rtn("set_coarse_signal_environment", "CoreNavigationCLPPrivateDataShared.pb.h", 22119, "::CoreNavigation::CLP::LogEntry::PrivateData::SignalEnvironment_SignalEnvironmentType_IsValid(value)");
      }

      *(this + 8) |= 2u;
      *(this + 4) = v7;
      v4 = *(a2 + 8);
    }

    if ((v4 & 4) != 0)
    {
      v8 = *(a2 + 5);
      if ((v8 + 1) >= 8)
      {
        __assert_rtn("set_high_resolution_signal_environment", "CoreNavigationCLPPrivateDataShared.pb.h", 22142, "::CoreNavigation::CLP::LogEntry::PrivateData::SignalEnvironment_SignalEnvironmentType_IsValid(value)");
      }

      *(this + 8) |= 4u;
      *(this + 5) = v8;
      v4 = *(a2 + 8);
    }

    if ((v4 & 8) != 0)
    {
      v9 = *(a2 + 6);
      *(this + 8) |= 8u;
      *(this + 6) = v9;
    }
  }
}

void sub_1D0CDE5AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void CoreNavigation::CLP::LogEntry::PrivateData::SignalEnvironment::~SignalEnvironment(CoreNavigation::CLP::LogEntry::PrivateData::SignalEnvironment *this)
{
  *this = &unk_1F4CDAB30;
  CoreNavigation::CLP::LogEntry::PrivateData::SignalEnvironment::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  CoreNavigation::CLP::LogEntry::PrivateData::SignalEnvironment::~SignalEnvironment(this);

  JUMPOUT(0x1D387ECA0);
}

void CoreNavigation::CLP::LogEntry::PrivateData::SignalEnvironment::SharedDtor(CoreNavigation::CLP::LogEntry::PrivateData::SignalEnvironment *this)
{
  CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(this);
  if (CoreNavigation::CLP::LogEntry::PrivateData::SignalEnvironment::default_instance_ != this)
  {
    v2 = *(this + 1);
    if (v2)
    {
      v3 = *(*v2 + 8);

      v3();
    }
  }
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::SignalEnvironment::Clear(uint64_t this)
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

    *(this + 16) = -1;
    *(this + 24) = 0;
  }

  *(this + 32) = 0;
  return this;
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::SignalEnvironment::MergePartialFromCodedStream(CoreNavigation::CLP::LogEntry::PrivateData::SignalEnvironment *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
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
        if (v7 == 3)
        {
          if ((TagFallback & 7) == 0)
          {
            v16 = *(a2 + 1);
            v15 = *(a2 + 2);
            goto LABEL_45;
          }
        }

        else if (v7 == 4 && (TagFallback & 7) == 0)
        {
          v12 = *(a2 + 1);
          v11 = *(a2 + 2);
          goto LABEL_55;
        }

        goto LABEL_22;
      }

      if (v7 == 1)
      {
        break;
      }

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

    if (v8 != 2)
    {
      goto LABEL_22;
    }

    *(this + 8) |= 1u;
    v13 = *(this + 1);
    if (!v13)
    {
      operator new();
    }

    v31 = 0;
    v14 = *(a2 + 1);
    if (v14 >= *(a2 + 2) || *v14 < 0)
    {
      if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v31))
      {
        return 0;
      }
    }

    else
    {
      v31 = *v14;
      *(a2 + 1) = v14 + 1;
    }

    v17 = *(a2 + 14);
    v18 = *(a2 + 15);
    *(a2 + 14) = v17 + 1;
    if (v17 >= v18)
    {
      return 0;
    }

    wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
    if (!CoreNavigation::CLP::LogEntry::PrivateData::TimeStamp::MergePartialFromCodedStream(v13, a2, v19) || *(a2 + 36) != 1)
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
    v9 = *(a2 + 2);
    if (v23 < v9 && *v23 == 16)
    {
      v10 = v23 + 1;
      *(a2 + 1) = v10;
LABEL_35:
      v31 = 0;
      if (v10 >= v9 || (v24 = *v10, (v24 & 0x80000000) != 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v31);
        if (!result)
        {
          return result;
        }

        v24 = v31;
      }

      else
      {
        *(a2 + 1) = v10 + 1;
      }

      if (v24 + 1 <= 7)
      {
        *(this + 8) |= 2u;
        *(this + 4) = v24;
      }

      v26 = *(a2 + 1);
      v15 = *(a2 + 2);
      if (v26 < v15 && *v26 == 24)
      {
        v16 = v26 + 1;
        *(a2 + 1) = v16;
LABEL_45:
        v31 = 0;
        if (v16 >= v15 || (v27 = *v16, (v27 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v31);
          if (!result)
          {
            return result;
          }

          v27 = v31;
        }

        else
        {
          *(a2 + 1) = v16 + 1;
        }

        if (v27 + 1 <= 7)
        {
          *(this + 8) |= 4u;
          *(this + 5) = v27;
        }

        v28 = *(a2 + 1);
        v11 = *(a2 + 2);
        if (v28 < v11 && *v28 == 32)
        {
          v12 = v28 + 1;
          *(a2 + 1) = v12;
LABEL_55:
          v31 = 0;
          if (v12 >= v11 || (v29 = *v12, (v29 & 0x80000000) != 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v31);
            if (!result)
            {
              return result;
            }

            v29 = v31;
            v30 = *(a2 + 1);
            v11 = *(a2 + 2);
          }

          else
          {
            v30 = v12 + 1;
            *(a2 + 1) = v30;
          }

          *(this + 6) = v29;
          *(this + 8) |= 8u;
          if (v30 == v11 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
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

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::SignalEnvironment::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 32);
  if (v6)
  {
    v7 = *(this + 8);
    if (!v7)
    {
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(this);
      v7 = *(CoreNavigation::CLP::LogEntry::PrivateData::SignalEnvironment::default_instance_ + 8);
    }

    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(1, v7, a2, a4);
    v6 = v5[8];
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

LABEL_10:
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(3, v5[5], a2, a4);
      if ((v5[8] & 8) == 0)
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

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(2, v5[4], a2, a4);
  v6 = v5[8];
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
  v8 = v5[6];

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(4, v8, a2, a4);
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::SignalEnvironment::ByteSize(CoreNavigation::CLP::LogEntry::PrivateData::SignalEnvironment *this, unsigned int a2)
{
  LOBYTE(v3) = *(this + 32);
  if (!v3)
  {
    v4 = 0;
    goto LABEL_36;
  }

  if ((*(this + 32) & 1) == 0)
  {
    v4 = 0;
    if ((*(this + 32) & 2) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_15;
  }

  v5 = *(this + 1);
  if (!v5)
  {
    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(this);
    v5 = *(CoreNavigation::CLP::LogEntry::PrivateData::SignalEnvironment::default_instance_ + 8);
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
  if ((v3 & 2) != 0)
  {
LABEL_15:
    v8 = *(this + 4);
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
  }

LABEL_21:
  if ((v3 & 4) == 0)
  {
    if ((v3 & 8) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_30;
  }

  v10 = *(this + 5);
  if ((v10 & 0x80000000) != 0)
  {
    v11 = 11;
  }

  else if (v10 >= 0x80)
  {
    v11 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v10) + 1;
    v3 = *(this + 8);
  }

  else
  {
    v11 = 2;
  }

  v4 = (v11 + v4);
  if ((v3 & 8) != 0)
  {
LABEL_30:
    v12 = *(this + 6);
    if ((v12 & 0x80000000) != 0)
    {
      v13 = 11;
    }

    else if (v12 >= 0x80)
    {
      v13 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v12) + 1;
    }

    else
    {
      v13 = 2;
    }

    v4 = (v13 + v4);
  }

LABEL_36:
  *(this + 7) = v4;
  return v4;
}

void CoreNavigation::CLP::LogEntry::PrivateData::SignalEnvironment::CheckTypeAndMergeFrom(CoreNavigation::CLP::LogEntry::PrivateData::SignalEnvironment *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  CoreNavigation::CLP::LogEntry::PrivateData::SignalEnvironment::MergeFrom(this, lpsrc);
}

void CoreNavigation::CLP::LogEntry::PrivateData::SignalEnvironment::CopyFrom(CoreNavigation::CLP::LogEntry::PrivateData::SignalEnvironment *this, const CoreNavigation::CLP::LogEntry::PrivateData::SignalEnvironment *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    CoreNavigation::CLP::LogEntry::PrivateData::SignalEnvironment::MergeFrom(this, a2);
  }
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::SignalEnvironment::Swap(uint64_t this, CoreNavigation::CLP::LogEntry::PrivateData::SignalEnvironment *a2)
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

double CoreNavigation::CLP::LogEntry::PrivateData::SignalEnvironmentInfo::SharedCtor(CoreNavigation::CLP::LogEntry::PrivateData::SignalEnvironmentInfo *this)
{
  *&result = 0xFFFFFFFFLL;
  *(this + 8) = xmmword_1D0E7A2E0;
  return result;
}

CoreNavigation::CLP::LogEntry::PrivateData::SignalEnvironmentInfo *CoreNavigation::CLP::LogEntry::PrivateData::SignalEnvironmentInfo::SignalEnvironmentInfo(CoreNavigation::CLP::LogEntry::PrivateData::SignalEnvironmentInfo *this, const CoreNavigation::CLP::LogEntry::PrivateData::SignalEnvironmentInfo *a2)
{
  *this = &unk_1F4CDABA8;
  *(this + 8) = xmmword_1D0E7A2E0;
  CoreNavigation::CLP::LogEntry::PrivateData::SignalEnvironmentInfo::MergeFrom(this, a2);
  return this;
}

void CoreNavigation::CLP::LogEntry::PrivateData::SignalEnvironmentInfo::MergeFrom(CoreNavigation::CLP::LogEntry::PrivateData::SignalEnvironmentInfo *this, const CoreNavigation::CLP::LogEntry::PrivateData::SignalEnvironmentInfo *a2)
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
      if ((v5 + 1) >= 8)
      {
        __assert_rtn("set_type", "CoreNavigationCLPPrivateDataShared.pb.h", 22191, "::CoreNavigation::CLP::LogEntry::PrivateData::SignalEnvironment_SignalEnvironmentType_IsValid(value)");
      }

      *(this + 5) |= 1u;
      *(this + 2) = v5;
      v4 = *(a2 + 5);
    }

    if ((v4 & 2) != 0)
    {
      v6 = *(a2 + 3);
      if (v6 >= 4)
      {
        __assert_rtn("set_fidelity_level", "CoreNavigationCLPPrivateDataShared.pb.h", 22214, "::CoreNavigation::CLP::LogEntry::PrivateData::SignalEnvironmentFidelityLevel_IsValid(value)");
      }

      *(this + 5) |= 2u;
      *(this + 3) = v6;
    }
  }
}

void sub_1D0CDF01C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void CoreNavigation::CLP::LogEntry::PrivateData::SignalEnvironmentInfo::~SignalEnvironmentInfo(CoreNavigation::CLP::LogEntry::PrivateData::SignalEnvironmentInfo *this)
{
  *this = &unk_1F4CDABA8;
  CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  CoreNavigation::CLP::LogEntry::PrivateData::SignalEnvironmentInfo::~SignalEnvironmentInfo(this);

  JUMPOUT(0x1D387ECA0);
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::SignalEnvironmentInfo::Clear(uint64_t this)
{
  if (*(this + 20))
  {
    *(this + 8) = 0xFFFFFFFFLL;
  }

  *(this + 20) = 0;
  return this;
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::SignalEnvironmentInfo::MergePartialFromCodedStream(CoreNavigation::CLP::LogEntry::PrivateData::SignalEnvironmentInfo *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
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
      v7 = *(a2 + 1);
      if (v7 >= *(a2 + 2) || (v8 = *v7, (v8 & 0x80000000) != 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v15);
        if (!result)
        {
          return result;
        }

        v8 = v15;
      }

      else
      {
        *(a2 + 1) = v7 + 1;
      }

      if (v8 + 1 <= 7)
      {
        *(this + 5) |= 1u;
        *(this + 2) = v8;
      }

      v11 = *(a2 + 1);
      v9 = *(a2 + 2);
      if (v11 < v9 && *v11 == 16)
      {
        v10 = v11 + 1;
        *(a2 + 1) = v10;
LABEL_24:
        v14 = 0;
        if (v10 >= v9 || (v12 = *v10, (v12 & 0x80000000) != 0))
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
          *(a2 + 1) = v10 + 1;
        }

        if (v12 <= 3)
        {
          *(this + 5) |= 2u;
          *(this + 3) = v12;
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
      v10 = *(a2 + 1);
      v9 = *(a2 + 2);
      goto LABEL_24;
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

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::SignalEnvironmentInfo::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 20);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(1, *(this + 8), a2, a4);
    v6 = *(v5 + 20);
  }

  if ((v6 & 2) != 0)
  {
    v7 = *(v5 + 12);

    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(2, v7, a2, a4);
  }

  return this;
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::SignalEnvironmentInfo::ByteSize(CoreNavigation::CLP::LogEntry::PrivateData::SignalEnvironmentInfo *this, unsigned int a2)
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
          goto LABEL_19;
        }
      }

      else if (v5 >= 0x80)
      {
        v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5) + 1;
        if ((*(this + 5) & 2) == 0)
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
      if ((*(this + 20) & 2) == 0)
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

LABEL_19:
  *(this + 4) = v4;
  return v4;
}

void CoreNavigation::CLP::LogEntry::PrivateData::SignalEnvironmentInfo::CheckTypeAndMergeFrom(CoreNavigation::CLP::LogEntry::PrivateData::SignalEnvironmentInfo *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  CoreNavigation::CLP::LogEntry::PrivateData::SignalEnvironmentInfo::MergeFrom(this, lpsrc);
}

void CoreNavigation::CLP::LogEntry::PrivateData::SignalEnvironmentInfo::CopyFrom(CoreNavigation::CLP::LogEntry::PrivateData::SignalEnvironmentInfo *this, const CoreNavigation::CLP::LogEntry::PrivateData::SignalEnvironmentInfo *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    CoreNavigation::CLP::LogEntry::PrivateData::SignalEnvironmentInfo::MergeFrom(this, a2);
  }
}

CoreNavigation::CLP::LogEntry::PrivateData::SignalEnvironmentInfo *CoreNavigation::CLP::LogEntry::PrivateData::SignalEnvironmentInfo::Swap(CoreNavigation::CLP::LogEntry::PrivateData::SignalEnvironmentInfo *this, CoreNavigation::CLP::LogEntry::PrivateData::SignalEnvironmentInfo *a2)
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

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::MagSample::SharedCtor(uint64_t this)
{
  *(this + 8) = 0;
  *(this + 16) = 0;
  *(this + 32) = 0;
  *(this + 24) = 0;
  return this;
}

CoreNavigation::CLP::LogEntry::PrivateData::MagSample *CoreNavigation::CLP::LogEntry::PrivateData::MagSample::MagSample(CoreNavigation::CLP::LogEntry::PrivateData::MagSample *this, const CoreNavigation::CLP::LogEntry::PrivateData::MagSample *a2)
{
  *this = &unk_1F4CDAC20;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 3) = 0;
  *(this + 8) = 0;
  CoreNavigation::CLP::LogEntry::PrivateData::MagSample::MergeFrom(this, a2);
  return this;
}

float CoreNavigation::CLP::LogEntry::PrivateData::MagSample::MergeFrom(CoreNavigation::CLP::LogEntry::PrivateData::MagSample *this, const CoreNavigation::CLP::LogEntry::PrivateData::MagSample *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v9);
  }

  LOBYTE(v5) = *(a2 + 32);
  if (!v5)
  {
    return *&v4;
  }

  if (*(a2 + 32))
  {
    *(this + 8) |= 1u;
    v6 = *(this + 1);
    if (!v6)
    {
      operator new();
    }

    v7 = *(a2 + 1);
    if (!v7)
    {
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(this);
      v7 = *(CoreNavigation::CLP::LogEntry::PrivateData::MagSample::default_instance_ + 8);
    }

    v4 = CoreNavigation::CLP::LogEntry::PrivateData::TimeStamp::MergeFrom(v6, v7);
    v5 = *(a2 + 8);
    if ((v5 & 2) == 0)
    {
LABEL_6:
      if ((v5 & 4) == 0)
      {
        goto LABEL_7;
      }

LABEL_16:
      LODWORD(v4) = *(a2 + 5);
      *(this + 8) |= 4u;
      *(this + 5) = LODWORD(v4);
      if ((*(a2 + 8) & 8) != 0)
      {
        goto LABEL_8;
      }

      return *&v4;
    }
  }

  else if ((*(a2 + 32) & 2) == 0)
  {
    goto LABEL_6;
  }

  LODWORD(v4) = *(a2 + 4);
  *(this + 8) |= 2u;
  *(this + 4) = LODWORD(v4);
  v5 = *(a2 + 8);
  if ((v5 & 4) != 0)
  {
    goto LABEL_16;
  }

LABEL_7:
  if ((v5 & 8) != 0)
  {
LABEL_8:
    LODWORD(v4) = *(a2 + 6);
    *(this + 8) |= 8u;
    *(this + 6) = LODWORD(v4);
  }

  return *&v4;
}