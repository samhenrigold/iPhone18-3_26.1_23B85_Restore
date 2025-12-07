uint64_t CoreNavigation::CLP::LogEntry::PrivateData::MotionTypeDeviceMotion::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 56);
  if (v6)
  {
    v7 = *(this + 8);
    if (!v7)
    {
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(this);
      v7 = *(CoreNavigation::CLP::LogEntry::PrivateData::MotionTypeDeviceMotion::default_instance_ + 8);
    }

    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(1, v7, a2, a4);
    v6 = *(v5 + 56);
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

  v8 = *(v5 + 16);
  if (!v8)
  {
    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(this);
    v8 = *(CoreNavigation::CLP::LogEntry::PrivateData::MotionTypeDeviceMotion::default_instance_ + 16);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(2, v8, a2, a4);
  v6 = *(v5 + 56);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_20;
  }

LABEL_17:
  v9 = *(v5 + 24);
  if (!v9)
  {
    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(this);
    v9 = *(CoreNavigation::CLP::LogEntry::PrivateData::MotionTypeDeviceMotion::default_instance_ + 24);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(3, v9, a2, a4);
  v6 = *(v5 + 56);
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
  v10 = *(v5 + 32);
  if (!v10)
  {
    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(this);
    v10 = *(CoreNavigation::CLP::LogEntry::PrivateData::MotionTypeDeviceMotion::default_instance_ + 32);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(4, v10, a2, a4);
  v6 = *(v5 + 56);
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
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(5, *(v5 + 40), a2, a4);
  v6 = *(v5 + 56);
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
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(6, *(v5 + 44), a2, a4);
  v6 = *(v5 + 56);
  if ((v6 & 0x40) == 0)
  {
LABEL_8:
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_9;
    }

LABEL_26:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(8, *(v5 + 46), a2, a4);
    if ((*(v5 + 56) & 0x100) == 0)
    {
      return this;
    }

    goto LABEL_27;
  }

LABEL_25:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(7, *(v5 + 45), a2, a4);
  v6 = *(v5 + 56);
  if ((v6 & 0x80) != 0)
  {
    goto LABEL_26;
  }

LABEL_9:
  if ((v6 & 0x100) == 0)
  {
    return this;
  }

LABEL_27:
  v11 = *(v5 + 48);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(9, a2, v11, a3);
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::MotionTypeDeviceMotion::ByteSize(CoreNavigation::CLP::LogEntry::PrivateData::MotionTypeDoubleVector4 **this, unsigned int a2)
{
  v2 = this;
  v3 = *(this + 14);
  if (!v3)
  {
    v5 = 0;
    goto LABEL_47;
  }

  if ((v3 & 1) == 0)
  {
    v4 = 0;
    if ((v3 & 2) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_9;
  }

  v6 = this[1];
  if (!v6)
  {
    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(0);
    v6 = *(CoreNavigation::CLP::LogEntry::PrivateData::MotionTypeDeviceMotion::default_instance_ + 8);
  }

  this = CoreNavigation::CLP::LogEntry::PrivateData::MotionTypeDoubleVector4::ByteSize(v6);
  v4 = this + 2;
  v3 = *(v2 + 14);
  if ((v3 & 2) != 0)
  {
LABEL_9:
    v7 = v2[2];
    if (!v7)
    {
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(this);
      v7 = *(CoreNavigation::CLP::LogEntry::PrivateData::MotionTypeDeviceMotion::default_instance_ + 16);
    }

    v8 = *(v7 + 24);
    if (*(v7 + 24))
    {
      v9 = (v8 << 31 >> 31) & 5;
      if ((v8 & 2) != 0)
      {
        v9 += 5;
      }

      if ((v8 & 4) != 0)
      {
        v8 = v9 + 5;
      }

      else
      {
        v8 = v9;
      }
    }

    *(v7 + 5) = v8;
    v4 += v8 + 2;
    v3 = *(v2 + 14);
  }

LABEL_18:
  if ((v3 & 4) == 0)
  {
    if ((v3 & 8) == 0)
    {
      goto LABEL_20;
    }

LABEL_31:
    v13 = v2[4];
    if (!v13)
    {
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(this);
      v13 = *(CoreNavigation::CLP::LogEntry::PrivateData::MotionTypeDeviceMotion::default_instance_ + 32);
    }

    v14 = *(v13 + 24);
    if (*(v13 + 24))
    {
      v15 = (v14 << 31 >> 31) & 5;
      if ((v14 & 2) != 0)
      {
        v15 += 5;
      }

      if ((v14 & 4) != 0)
      {
        v14 = v15 + 5;
      }

      else
      {
        v14 = v15;
      }
    }

    *(v13 + 5) = v14;
    v4 += v14 + 2;
    v3 = *(v2 + 14);
    if ((v3 & 0x10) == 0)
    {
      goto LABEL_46;
    }

    goto LABEL_40;
  }

  v10 = v2[3];
  if (!v10)
  {
    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(this);
    v10 = *(CoreNavigation::CLP::LogEntry::PrivateData::MotionTypeDeviceMotion::default_instance_ + 24);
  }

  v11 = *(v10 + 24);
  if (*(v10 + 24))
  {
    v12 = (v11 << 31 >> 31) & 5;
    if ((v11 & 2) != 0)
    {
      v12 += 5;
    }

    if ((v11 & 4) != 0)
    {
      v11 = v12 + 5;
    }

    else
    {
      v11 = v12;
    }
  }

  *(v10 + 5) = v11;
  v4 += v11 + 2;
  v3 = *(v2 + 14);
  if ((v3 & 8) != 0)
  {
    goto LABEL_31;
  }

LABEL_20:
  if ((v3 & 0x10) != 0)
  {
LABEL_40:
    v16 = *(v2 + 10);
    if ((v16 & 0x80000000) != 0)
    {
      v17 = 11;
    }

    else if (v16 >= 0x80)
    {
      v17 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v16) + 1;
      v3 = *(v2 + 14);
    }

    else
    {
      v17 = 2;
    }

    v4 += v17;
  }

LABEL_46:
  v5 = ((v3 >> 4) & 2) + v4 + ((v3 >> 5) & 2) + ((v3 >> 6) & 2);
LABEL_47:
  if ((v3 & 0x100) != 0)
  {
    result = v5 + 5;
  }

  else
  {
    result = v5;
  }

  *(v2 + 13) = result;
  return result;
}

float CoreNavigation::CLP::LogEntry::PrivateData::MotionTypeDeviceMotion::CheckTypeAndMergeFrom(CoreNavigation::CLP::LogEntry::PrivateData::MotionTypeDeviceMotion *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  return CoreNavigation::CLP::LogEntry::PrivateData::MotionTypeDeviceMotion::MergeFrom(this, lpsrc);
}

float CoreNavigation::CLP::LogEntry::PrivateData::MotionTypeDeviceMotion::CopyFrom(CoreNavigation::CLP::LogEntry::PrivateData::MotionTypeDeviceMotion *this, const CoreNavigation::CLP::LogEntry::PrivateData::MotionTypeDeviceMotion *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    return CoreNavigation::CLP::LogEntry::PrivateData::MotionTypeDeviceMotion::MergeFrom(this, a2);
  }

  return result;
}

float CoreNavigation::CLP::LogEntry::PrivateData::MotionTypeDeviceMotion::Swap(CoreNavigation::CLP::LogEntry::PrivateData::MotionTypeDeviceMotion *this, CoreNavigation::CLP::LogEntry::PrivateData::MotionTypeDeviceMotion *a2)
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
    LODWORD(v5) = *(this + 10);
    *(this + 10) = *(a2 + 10);
    *(a2 + 10) = v5;
    LOBYTE(v5) = *(this + 44);
    *(this + 44) = *(a2 + 44);
    *(a2 + 44) = v5;
    LOBYTE(v5) = *(this + 45);
    *(this + 45) = *(a2 + 45);
    *(a2 + 45) = v5;
    LOBYTE(v5) = *(this + 46);
    *(this + 46) = *(a2 + 46);
    *(a2 + 46) = v5;
    result = *(this + 12);
    *(this + 12) = *(a2 + 12);
    *(a2 + 12) = result;
    LODWORD(v5) = *(this + 14);
    *(this + 14) = *(a2 + 14);
    *(a2 + 14) = v5;
    LODWORD(v5) = *(this + 13);
    *(this + 13) = *(a2 + 13);
    *(a2 + 13) = v5;
  }

  return result;
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::SensorFusionStatus::SharedCtor(uint64_t this)
{
  *(this + 8) = 0;
  *(this + 16) = 0;
  return this;
}

CoreNavigation::CLP::LogEntry::PrivateData::SensorFusionStatus *CoreNavigation::CLP::LogEntry::PrivateData::SensorFusionStatus::SensorFusionStatus(CoreNavigation::CLP::LogEntry::PrivateData::SensorFusionStatus *this, const CoreNavigation::CLP::LogEntry::PrivateData::SensorFusionStatus *a2)
{
  *this = &unk_1F4CDB2B0;
  *(this + 1) = 0;
  *(this + 4) = 0;
  CoreNavigation::CLP::LogEntry::PrivateData::SensorFusionStatus::MergeFrom(this, a2);
  return this;
}

void CoreNavigation::CLP::LogEntry::PrivateData::SensorFusionStatus::MergeFrom(CoreNavigation::CLP::LogEntry::PrivateData::SensorFusionStatus *this, const CoreNavigation::CLP::LogEntry::PrivateData::SensorFusionStatus *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v5);
  }

  if (*(a2 + 16))
  {
    v4 = *(a2 + 2);
    *(this + 4) |= 1u;
    *(this + 2) = v4;
  }
}

void sub_1D0CEAC40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void CoreNavigation::CLP::LogEntry::PrivateData::SensorFusionStatus::~SensorFusionStatus(CoreNavigation::CLP::LogEntry::PrivateData::SensorFusionStatus *this)
{
  *this = &unk_1F4CDB2B0;
  CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  CoreNavigation::CLP::LogEntry::PrivateData::SensorFusionStatus::~SensorFusionStatus(this);

  JUMPOUT(0x1D387ECA0);
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::SensorFusionStatus::Clear(uint64_t this)
{
  if (*(this + 16))
  {
    *(this + 8) = 0;
  }

  *(this + 16) = 0;
  return this;
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::SensorFusionStatus::MergePartialFromCodedStream(CoreNavigation::CLP::LogEntry::PrivateData::SensorFusionStatus *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
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

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::SensorFusionStatus::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  if (*(this + 16))
  {
    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(1, *(this + 8), a2, a4);
  }

  return this;
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::SensorFusionStatus::ByteSize(CoreNavigation::CLP::LogEntry::PrivateData::SensorFusionStatus *this, unsigned int a2)
{
  if (*(this + 16))
  {
    v4 = *(this + 2);
    if (v4 >= 0x80)
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

void CoreNavigation::CLP::LogEntry::PrivateData::SensorFusionStatus::CheckTypeAndMergeFrom(CoreNavigation::CLP::LogEntry::PrivateData::SensorFusionStatus *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  CoreNavigation::CLP::LogEntry::PrivateData::SensorFusionStatus::MergeFrom(this, lpsrc);
}

void CoreNavigation::CLP::LogEntry::PrivateData::SensorFusionStatus::CopyFrom(CoreNavigation::CLP::LogEntry::PrivateData::SensorFusionStatus *this, const CoreNavigation::CLP::LogEntry::PrivateData::SensorFusionStatus *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    CoreNavigation::CLP::LogEntry::PrivateData::SensorFusionStatus::MergeFrom(this, a2);
  }
}

CoreNavigation::CLP::LogEntry::PrivateData::SensorFusionStatus *CoreNavigation::CLP::LogEntry::PrivateData::SensorFusionStatus::Swap(CoreNavigation::CLP::LogEntry::PrivateData::SensorFusionStatus *this, CoreNavigation::CLP::LogEntry::PrivateData::SensorFusionStatus *a2)
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

double CoreNavigation::CLP::LogEntry::PrivateData::DeviceMotionSample::SharedCtor(CoreNavigation::CLP::LogEntry::PrivateData::DeviceMotionSample *this)
{
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 24) = 0;
  result = 0.0;
  *(this + 28) = 0u;
  *(this + 44) = 0u;
  return result;
}

CoreNavigation::CLP::LogEntry::PrivateData::DeviceMotionSample *CoreNavigation::CLP::LogEntry::PrivateData::DeviceMotionSample::DeviceMotionSample(CoreNavigation::CLP::LogEntry::PrivateData::DeviceMotionSample *this, const CoreNavigation::CLP::LogEntry::PrivateData::DeviceMotionSample *a2)
{
  *(this + 1) = 0;
  *(this + 2) = 0;
  *this = &unk_1F4CDB328;
  *(this + 24) = 0;
  *(this + 28) = 0u;
  *(this + 44) = 0u;
  CoreNavigation::CLP::LogEntry::PrivateData::DeviceMotionSample::MergeFrom(this, a2);
  return this;
}

float CoreNavigation::CLP::LogEntry::PrivateData::DeviceMotionSample::MergeFrom(CoreNavigation::CLP::LogEntry::PrivateData::DeviceMotionSample *this, const CoreNavigation::CLP::LogEntry::PrivateData::DeviceMotionSample *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v16);
  }

  LOBYTE(v5) = *(a2 + 56);
  if (!v5)
  {
    return *&v4;
  }

  if (*(a2 + 56))
  {
    *(this + 14) |= 1u;
    v6 = *(this + 1);
    if (!v6)
    {
      operator new();
    }

    v7 = *(a2 + 1);
    if (!v7)
    {
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(this);
      v7 = *(CoreNavigation::CLP::LogEntry::PrivateData::DeviceMotionSample::default_instance_ + 8);
    }

    v4 = CoreNavigation::CLP::LogEntry::PrivateData::TimeStamp::MergeFrom(v6, v7);
    v5 = *(a2 + 14);
    if ((v5 & 2) == 0)
    {
LABEL_6:
      if ((v5 & 4) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_24;
    }
  }

  else if ((*(a2 + 56) & 2) == 0)
  {
    goto LABEL_6;
  }

  *(this + 14) |= 2u;
  v8 = *(this + 2);
  if (!v8)
  {
    operator new();
  }

  v9 = *(a2 + 2);
  if (!v9)
  {
    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(this);
    v9 = *(CoreNavigation::CLP::LogEntry::PrivateData::DeviceMotionSample::default_instance_ + 16);
  }

  *&v4 = CoreNavigation::CLP::LogEntry::PrivateData::MotionTypeDeviceMotion::MergeFrom(v8, v9);
  v5 = *(a2 + 14);
  if ((v5 & 4) == 0)
  {
LABEL_7:
    if ((v5 & 8) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_25;
  }

LABEL_24:
  v10 = *(a2 + 24);
  *(this + 14) |= 4u;
  *(this + 24) = v10;
  v5 = *(a2 + 14);
  if ((v5 & 8) == 0)
  {
LABEL_8:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_26;
  }

LABEL_25:
  v11 = *(a2 + 7);
  *(this + 14) |= 8u;
  *(this + 7) = v11;
  v5 = *(a2 + 14);
  if ((v5 & 0x10) == 0)
  {
LABEL_9:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_28;
  }

LABEL_26:
  v12 = *(a2 + 10);
  if (v12 >= 5)
  {
    __assert_rtn("set_mode", "CoreNavigationCLPPrivateDataShared.pb.h", 24774, "::CoreNavigation::CLP::LogEntry::PrivateData::SensorFusionMode_IsValid(value)");
  }

  *(this + 14) |= 0x10u;
  *(this + 10) = v12;
  v5 = *(a2 + 14);
  if ((v5 & 0x20) == 0)
  {
LABEL_10:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_11;
    }

LABEL_33:
    LODWORD(v4) = *(a2 + 11);
    *(this + 14) |= 0x40u;
    *(this + 11) = LODWORD(v4);
    if ((*(a2 + 14) & 0x80) == 0)
    {
      return *&v4;
    }

    goto LABEL_12;
  }

LABEL_28:
  *(this + 14) |= 0x20u;
  v13 = *(this + 4);
  if (!v13)
  {
    operator new();
  }

  v14 = *(a2 + 4);
  if (!v14)
  {
    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(this);
    v14 = *(CoreNavigation::CLP::LogEntry::PrivateData::DeviceMotionSample::default_instance_ + 32);
  }

  CoreNavigation::CLP::LogEntry::PrivateData::SensorFusionStatus::MergeFrom(v13, v14);
  v5 = *(a2 + 14);
  if ((v5 & 0x40) != 0)
  {
    goto LABEL_33;
  }

LABEL_11:
  if ((v5 & 0x80) != 0)
  {
LABEL_12:
    LODWORD(v4) = *(a2 + 12);
    *(this + 14) |= 0x80u;
    *(this + 12) = LODWORD(v4);
  }

  return *&v4;
}

void sub_1D0CEB3F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void CoreNavigation::CLP::LogEntry::PrivateData::DeviceMotionSample::~DeviceMotionSample(CoreNavigation::CLP::LogEntry::PrivateData::DeviceMotionSample *this)
{
  *this = &unk_1F4CDB328;
  CoreNavigation::CLP::LogEntry::PrivateData::DeviceMotionSample::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  CoreNavigation::CLP::LogEntry::PrivateData::DeviceMotionSample::~DeviceMotionSample(this);

  JUMPOUT(0x1D387ECA0);
}

void CoreNavigation::CLP::LogEntry::PrivateData::DeviceMotionSample::SharedDtor(CoreNavigation::CLP::LogEntry::PrivateData::DeviceMotionSample *this)
{
  CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(this);
  if (CoreNavigation::CLP::LogEntry::PrivateData::DeviceMotionSample::default_instance_ != this)
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

    v4 = *(this + 4);
    if (v4)
    {
      v5 = *(*v4 + 8);

      v5();
    }
  }
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::DeviceMotionSample::Clear(uint64_t this)
{
  v1 = this;
  LOBYTE(v2) = *(this + 56);
  if (v2)
  {
    if (*(this + 56))
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
        v2 = *(this + 56);
      }
    }

    if ((v2 & 2) != 0)
    {
      this = *(this + 16);
      if (this)
      {
        this = CoreNavigation::CLP::LogEntry::PrivateData::MotionTypeDeviceMotion::Clear(this);
        v2 = *(v1 + 56);
      }
    }

    *(v1 + 24) = 0;
    *(v1 + 28) = 0;
    *(v1 + 40) = 0;
    if ((v2 & 0x20) != 0)
    {
      v4 = *(v1 + 32);
      if (v4)
      {
        if (*(v4 + 16))
        {
          *(v4 + 8) = 0;
        }

        *(v4 + 16) = 0;
      }
    }

    *(v1 + 44) = 0;
    *(v1 + 48) = 0;
  }

  *(v1 + 56) = 0;
  return this;
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::DeviceMotionSample::MergePartialFromCodedStream(CoreNavigation::CLP::LogEntry::PrivateData::DeviceMotionSample *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
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
        if (TagFallback >> 3 > 4)
        {
          break;
        }

        if (TagFallback >> 3 > 2)
        {
          if (v7 == 3)
          {
            if ((TagFallback & 7) == 0)
            {
              v14 = *(a2 + 1);
              v9 = *(a2 + 2);
              goto LABEL_62;
            }
          }

          else if (v7 == 4 && (TagFallback & 7) == 0)
          {
            v10 = *(a2 + 1);
            v9 = *(a2 + 2);
            goto LABEL_70;
          }

          goto LABEL_36;
        }

        if (v7 == 1)
        {
          if (v8 != 2)
          {
            goto LABEL_36;
          }

          *(this + 14) |= 1u;
          v11 = *(this + 1);
          if (!v11)
          {
            operator new();
          }

          v46 = 0;
          v12 = *(a2 + 1);
          if (v12 >= *(a2 + 2) || *v12 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v46))
            {
              return 0;
            }
          }

          else
          {
            v46 = *v12;
            *(a2 + 1) = v12 + 1;
          }

          v15 = *(a2 + 14);
          v16 = *(a2 + 15);
          *(a2 + 14) = v15 + 1;
          if (v15 >= v16)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
          if (!CoreNavigation::CLP::LogEntry::PrivateData::TimeStamp::MergePartialFromCodedStream(v11, a2, v17) || *(a2 + 36) != 1)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
          v18 = *(a2 + 14);
          v19 = __OFSUB__(v18, 1);
          v20 = v18 - 1;
          if (v20 < 0 == v19)
          {
            *(a2 + 14) = v20;
          }

          v21 = *(a2 + 1);
          if (v21 < *(a2 + 2) && *v21 == 18)
          {
            *(a2 + 1) = v21 + 1;
LABEL_48:
            *(this + 14) |= 2u;
            v22 = *(this + 2);
            if (!v22)
            {
              operator new();
            }

            v46 = 0;
            v23 = *(a2 + 1);
            if (v23 >= *(a2 + 2) || *v23 < 0)
            {
              if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v46))
              {
                return 0;
              }
            }

            else
            {
              v46 = *v23;
              *(a2 + 1) = v23 + 1;
            }

            v24 = *(a2 + 14);
            v25 = *(a2 + 15);
            *(a2 + 14) = v24 + 1;
            if (v24 >= v25)
            {
              return 0;
            }

            wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
            if (!CoreNavigation::CLP::LogEntry::PrivateData::MotionTypeDeviceMotion::MergePartialFromCodedStream(v22, a2, v26) || *(a2 + 36) != 1)
            {
              return 0;
            }

            wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
            v27 = *(a2 + 14);
            v19 = __OFSUB__(v27, 1);
            v28 = v27 - 1;
            if (v28 < 0 == v19)
            {
              *(a2 + 14) = v28;
            }

            v29 = *(a2 + 1);
            v9 = *(a2 + 2);
            if (v29 < v9 && *v29 == 24)
            {
              v14 = v29 + 1;
              *(a2 + 1) = v14;
LABEL_62:
              v46 = 0;
              if (v14 >= v9 || (v30 = *v14, (v30 & 0x80000000) != 0))
              {
                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v46);
                if (!result)
                {
                  return result;
                }

                v30 = v46;
                v31 = *(a2 + 1);
                v9 = *(a2 + 2);
              }

              else
              {
                v31 = v14 + 1;
                *(a2 + 1) = v31;
              }

              *(this + 24) = v30 != 0;
              *(this + 14) |= 4u;
              if (v31 < v9 && *v31 == 32)
              {
                v10 = v31 + 1;
                *(a2 + 1) = v10;
LABEL_70:
                if (v10 >= v9 || (v33 = *v10, v33 < 0))
                {
                  result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 7);
                  if (!result)
                  {
                    return result;
                  }

                  v34 = *(a2 + 1);
                  v9 = *(a2 + 2);
                }

                else
                {
                  *(this + 7) = v33;
                  v34 = v10 + 1;
                  *(a2 + 1) = v34;
                }

                *(this + 14) |= 8u;
                if (v34 < v9 && *v34 == 40)
                {
                  v13 = v34 + 1;
                  *(a2 + 1) = v13;
LABEL_78:
                  v46 = 0;
                  if (v13 >= v9 || (v35 = *v13, (v35 & 0x80000000) != 0))
                  {
                    result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v46);
                    if (!result)
                    {
                      return result;
                    }

                    v35 = v46;
                  }

                  else
                  {
                    *(a2 + 1) = v13 + 1;
                  }

                  if (v35 <= 4)
                  {
                    *(this + 14) |= 0x10u;
                    *(this + 10) = v35;
                  }

                  v36 = *(a2 + 1);
                  if (v36 < *(a2 + 2) && *v36 == 50)
                  {
                    *(a2 + 1) = v36 + 1;
                    goto LABEL_88;
                  }
                }
              }
            }
          }
        }

        else
        {
          if (v7 == 2 && v8 == 2)
          {
            goto LABEL_48;
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
      }

      if (TagFallback >> 3 <= 6)
      {
        break;
      }

      if (v7 == 7)
      {
        if (v8 != 5)
        {
          goto LABEL_36;
        }

LABEL_102:
        v46 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a2, &v46) & 1) == 0)
        {
          return 0;
        }

        *(this + 11) = v46;
        *(this + 14) |= 0x40u;
        v45 = *(a2 + 1);
        if (v45 < *(a2 + 2) && *v45 == 69)
        {
          *(a2 + 1) = v45 + 1;
          goto LABEL_106;
        }
      }

      else
      {
        if (v7 != 8 || v8 != 5)
        {
          goto LABEL_36;
        }

LABEL_106:
        v46 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a2, &v46) & 1) == 0)
        {
          return 0;
        }

        *(this + 12) = v46;
        *(this + 14) |= 0x80u;
        if (*(a2 + 1) == *(a2 + 2) && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
        {
          *(a2 + 8) = 0;
          result = 1;
          *(a2 + 36) = 1;
          return result;
        }
      }
    }

    if (v7 == 5)
    {
      if ((TagFallback & 7) == 0)
      {
        v13 = *(a2 + 1);
        v9 = *(a2 + 2);
        goto LABEL_78;
      }

      goto LABEL_36;
    }

    if (v7 != 6 || v8 != 2)
    {
      goto LABEL_36;
    }

LABEL_88:
    *(this + 14) |= 0x20u;
    v37 = *(this + 4);
    if (!v37)
    {
      operator new();
    }

    v46 = 0;
    v38 = *(a2 + 1);
    if (v38 >= *(a2 + 2) || *v38 < 0)
    {
      if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v46))
      {
        return 0;
      }
    }

    else
    {
      v46 = *v38;
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
    if (!CoreNavigation::CLP::LogEntry::PrivateData::SensorFusionStatus::MergePartialFromCodedStream(v37, a2, v41) || *(a2 + 36) != 1)
    {
      return 0;
    }

    wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
    v42 = *(a2 + 14);
    v19 = __OFSUB__(v42, 1);
    v43 = v42 - 1;
    if (v43 < 0 == v19)
    {
      *(a2 + 14) = v43;
    }

    v44 = *(a2 + 1);
    if (v44 < *(a2 + 2) && *v44 == 61)
    {
      *(a2 + 1) = v44 + 1;
      goto LABEL_102;
    }
  }
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::DeviceMotionSample::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 56);
  if (v6)
  {
    v7 = *(this + 8);
    if (!v7)
    {
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(this);
      v7 = *(CoreNavigation::CLP::LogEntry::PrivateData::DeviceMotionSample::default_instance_ + 8);
    }

    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(1, v7, a2, a4);
    v6 = *(v5 + 56);
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

  v8 = *(v5 + 16);
  if (!v8)
  {
    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(this);
    v8 = *(CoreNavigation::CLP::LogEntry::PrivateData::DeviceMotionSample::default_instance_ + 16);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(2, v8, a2, a4);
  v6 = *(v5 + 56);
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
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(3, *(v5 + 24), a2, a4);
  v6 = *(v5 + 56);
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
  v6 = *(v5 + 56);
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
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(5, *(v5 + 40), a2, a4);
  v6 = *(v5 + 56);
  if ((v6 & 0x20) == 0)
  {
LABEL_7:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_8;
    }

LABEL_22:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(7, a2, *(v5 + 44), a3);
    if ((*(v5 + 56) & 0x80) == 0)
    {
      return this;
    }

    goto LABEL_23;
  }

LABEL_19:
  v9 = *(v5 + 32);
  if (!v9)
  {
    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(this);
    v9 = *(CoreNavigation::CLP::LogEntry::PrivateData::DeviceMotionSample::default_instance_ + 32);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(6, v9, a2, a4);
  v6 = *(v5 + 56);
  if ((v6 & 0x40) != 0)
  {
    goto LABEL_22;
  }

LABEL_8:
  if ((v6 & 0x80) == 0)
  {
    return this;
  }

LABEL_23:
  v10 = *(v5 + 48);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(8, a2, v10, a3);
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::DeviceMotionSample::ByteSize(uint64_t this, unsigned int a2)
{
  v2 = this;
  v3 = *(this + 56);
  if (!v3)
  {
    result = 0;
    goto LABEL_49;
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

  v6 = *(this + 8);
  if (!v6)
  {
    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(this);
    v6 = *(CoreNavigation::CLP::LogEntry::PrivateData::DeviceMotionSample::default_instance_ + 8);
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
  v3 = *(v2 + 56);
  if ((v3 & 2) != 0)
  {
LABEL_15:
    v9 = *(v2 + 16);
    if (!v9)
    {
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(0);
      v9 = *(CoreNavigation::CLP::LogEntry::PrivateData::DeviceMotionSample::default_instance_ + 16);
    }

    v10 = CoreNavigation::CLP::LogEntry::PrivateData::MotionTypeDeviceMotion::ByteSize(v9, a2);
    v11 = v10;
    if (v10 >= 0x80)
    {
      this = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v10);
    }

    else
    {
      this = 1;
    }

    v4 += v11 + this + 1;
    v3 = *(v2 + 56);
  }

LABEL_21:
  v12 = ((v3 >> 1) & 2) + v4;
  if ((v3 & 8) != 0)
  {
    this = *(v2 + 28);
    if (this >= 0x80)
    {
      this = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(this);
      v13 = this + 1;
      v3 = *(v2 + 56);
    }

    else
    {
      v13 = 2;
    }

    v12 += v13;
    if ((v3 & 0x10) == 0)
    {
LABEL_23:
      if ((v3 & 0x20) == 0)
      {
        goto LABEL_44;
      }

LABEL_35:
      v15 = *(v2 + 32);
      if (!v15)
      {
        CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(this);
        v15 = *(CoreNavigation::CLP::LogEntry::PrivateData::DeviceMotionSample::default_instance_ + 32);
      }

      if (*(v15 + 16))
      {
        v17 = *(v15 + 8);
        if (v17 > 0x7F)
        {
          v20 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v17);
          v16 = v20 + 1;
          *(v15 + 12) = v20 + 1;
          if ((v20 + 1) >= 0x80)
          {
            v18 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback((v20 + 1));
            goto LABEL_43;
          }

LABEL_42:
          v18 = 1;
LABEL_43:
          v12 += v16 + v18 + 1;
          v3 = *(v2 + 56);
          goto LABEL_44;
        }

        v16 = 2;
      }

      else
      {
        v16 = 0;
      }

      *(v15 + 12) = v16;
      goto LABEL_42;
    }
  }

  else if ((v3 & 0x10) == 0)
  {
    goto LABEL_23;
  }

  this = *(v2 + 40);
  if ((this & 0x80000000) != 0)
  {
    v14 = 11;
  }

  else if (this >= 0x80)
  {
    this = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(this);
    v14 = this + 1;
    v3 = *(v2 + 56);
  }

  else
  {
    v14 = 2;
  }

  v12 += v14;
  if ((v3 & 0x20) != 0)
  {
    goto LABEL_35;
  }

LABEL_44:
  v19 = v12 + 5;
  if ((v3 & 0x40) == 0)
  {
    v19 = v12;
  }

  if ((v3 & 0x80) != 0)
  {
    result = v19 + 5;
  }

  else
  {
    result = v19;
  }

LABEL_49:
  *(v2 + 52) = result;
  return result;
}

float CoreNavigation::CLP::LogEntry::PrivateData::DeviceMotionSample::CheckTypeAndMergeFrom(CoreNavigation::CLP::LogEntry::PrivateData::DeviceMotionSample *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  return CoreNavigation::CLP::LogEntry::PrivateData::DeviceMotionSample::MergeFrom(this, lpsrc);
}

float CoreNavigation::CLP::LogEntry::PrivateData::DeviceMotionSample::CopyFrom(CoreNavigation::CLP::LogEntry::PrivateData::DeviceMotionSample *this, const CoreNavigation::CLP::LogEntry::PrivateData::DeviceMotionSample *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    return CoreNavigation::CLP::LogEntry::PrivateData::DeviceMotionSample::MergeFrom(this, a2);
  }

  return result;
}

float CoreNavigation::CLP::LogEntry::PrivateData::DeviceMotionSample::Swap(CoreNavigation::CLP::LogEntry::PrivateData::DeviceMotionSample *this, CoreNavigation::CLP::LogEntry::PrivateData::DeviceMotionSample *a2)
{
  if (a2 != this)
  {
    v2 = *(this + 1);
    *(this + 1) = *(a2 + 1);
    *(a2 + 1) = v2;
    v3 = *(this + 2);
    *(this + 2) = *(a2 + 2);
    *(a2 + 2) = v3;
    LOBYTE(v3) = *(this + 24);
    *(this + 24) = *(a2 + 24);
    *(a2 + 24) = v3;
    LODWORD(v3) = *(this + 7);
    *(this + 7) = *(a2 + 7);
    *(a2 + 7) = v3;
    LODWORD(v3) = *(this + 10);
    *(this + 10) = *(a2 + 10);
    *(a2 + 10) = v3;
    v4 = *(this + 4);
    *(this + 4) = *(a2 + 4);
    *(a2 + 4) = v4;
    v5 = *(this + 11);
    *(this + 11) = *(a2 + 11);
    *(a2 + 11) = v5;
    result = *(this + 12);
    *(this + 12) = *(a2 + 12);
    *(a2 + 12) = result;
    LODWORD(v4) = *(this + 14);
    *(this + 14) = *(a2 + 14);
    *(a2 + 14) = v4;
    LODWORD(v4) = *(this + 13);
    *(this + 13) = *(a2 + 13);
    *(a2 + 13) = v4;
  }

  return result;
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::DeviceMotion::SharedCtor(uint64_t this)
{
  *(this + 8) = 0;
  *(this + 40) = 0;
  return this;
}

CoreNavigation::CLP::LogEntry::PrivateData::DeviceMotion *CoreNavigation::CLP::LogEntry::PrivateData::DeviceMotion::DeviceMotion(CoreNavigation::CLP::LogEntry::PrivateData::DeviceMotion *this, const CoreNavigation::CLP::LogEntry::PrivateData::DeviceMotion *a2)
{
  *(this + 5) = 0;
  *this = &unk_1F4CDB3A0;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 3) = 0;
  *(this + 8) = 0;
  CoreNavigation::CLP::LogEntry::PrivateData::DeviceMotion::MergeFrom(this, a2);
  return this;
}

void sub_1D0CEC2A0(_Unwind_Exception *a1)
{
  sub_1D0B8CD0C(v1 + 2);
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(v1);
  _Unwind_Resume(a1);
}

double CoreNavigation::CLP::LogEntry::PrivateData::DeviceMotion::MergeFrom(CoreNavigation::CLP::LogEntry::PrivateData::DeviceMotion *this, const CoreNavigation::CLP::LogEntry::PrivateData::DeviceMotion *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v8);
  }

  sub_1D0CFF1E4((this + 16), a2 + 16);
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
      v7 = *(CoreNavigation::CLP::LogEntry::PrivateData::DeviceMotion::default_instance_ + 8);
    }

    return CoreNavigation::CLP::LogEntry::PrivateData::TimeStamp::MergeFrom(v6, v7);
  }

  return result;
}

void sub_1D0CEC3C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void CoreNavigation::CLP::LogEntry::PrivateData::DeviceMotion::~DeviceMotion(CoreNavigation::CLP::LogEntry::PrivateData::DeviceMotion *this)
{
  *this = &unk_1F4CDB3A0;
  CoreNavigation::CLP::LogEntry::PrivateData::DeviceMotion::SharedDtor(this);
  sub_1D0B8CD0C(this + 2);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  CoreNavigation::CLP::LogEntry::PrivateData::DeviceMotion::~DeviceMotion(this);

  JUMPOUT(0x1D387ECA0);
}

void CoreNavigation::CLP::LogEntry::PrivateData::DeviceMotion::SharedDtor(CoreNavigation::CLP::LogEntry::PrivateData::DeviceMotion *this)
{
  CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(this);
  if (CoreNavigation::CLP::LogEntry::PrivateData::DeviceMotion::default_instance_ != this)
  {
    v2 = *(this + 1);
    if (v2)
    {
      v3 = *(*v2 + 8);

      v3();
    }
  }
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::DeviceMotion::Clear(CoreNavigation::CLP::LogEntry::PrivateData::DeviceMotion *this)
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

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::DeviceMotion::MergePartialFromCodedStream(CoreNavigation::CLP::LogEntry::PrivateData::DeviceMotion *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
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
          if (!CoreNavigation::CLP::LogEntry::PrivateData::DeviceMotionSample::MergePartialFromCodedStream(v20, a2, v24) || *(a2 + 36) != 1)
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

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::DeviceMotion::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  if (*(this + 44))
  {
    v6 = *(this + 8);
    if (!v6)
    {
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(this);
      v6 = *(CoreNavigation::CLP::LogEntry::PrivateData::DeviceMotion::default_instance_ + 8);
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

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::DeviceMotion::ByteSize(CoreNavigation::CLP::LogEntry::PrivateData::DeviceMotion *this, unsigned int a2)
{
  if (*(this + 44))
  {
    v4 = *(this + 1);
    if (!v4)
    {
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(this);
      v4 = *(CoreNavigation::CLP::LogEntry::PrivateData::DeviceMotion::default_instance_ + 8);
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
      v10 = CoreNavigation::CLP::LogEntry::PrivateData::DeviceMotionSample::ByteSize(*(*(this + 2) + 8 * v9), a2);
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

double CoreNavigation::CLP::LogEntry::PrivateData::DeviceMotion::CheckTypeAndMergeFrom(CoreNavigation::CLP::LogEntry::PrivateData::DeviceMotion *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  return CoreNavigation::CLP::LogEntry::PrivateData::DeviceMotion::MergeFrom(this, lpsrc);
}

double CoreNavigation::CLP::LogEntry::PrivateData::DeviceMotion::CopyFrom(CoreNavigation::CLP::LogEntry::PrivateData::DeviceMotion *this, const CoreNavigation::CLP::LogEntry::PrivateData::DeviceMotion *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    return CoreNavigation::CLP::LogEntry::PrivateData::DeviceMotion::MergeFrom(this, a2);
  }

  return result;
}

CoreNavigation::CLP::LogEntry::PrivateData::DeviceMotion *CoreNavigation::CLP::LogEntry::PrivateData::DeviceMotion::Swap(CoreNavigation::CLP::LogEntry::PrivateData::DeviceMotion *this, CoreNavigation::CLP::LogEntry::PrivateData::DeviceMotion *a2)
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

double CoreNavigation::CLP::LogEntry::PrivateData::MotionTypeGeomagneticModelData::SharedCtor(CoreNavigation::CLP::LogEntry::PrivateData::MotionTypeGeomagneticModelData *this)
{
  *(this + 9) = 0;
  result = 0.0;
  *(this + 56) = 0u;
  *(this + 40) = 0u;
  *(this + 24) = 0u;
  *(this + 8) = 0u;
  return result;
}

CoreNavigation::CLP::LogEntry::PrivateData::MotionTypeGeomagneticModelData *CoreNavigation::CLP::LogEntry::PrivateData::MotionTypeGeomagneticModelData::MotionTypeGeomagneticModelData(CoreNavigation::CLP::LogEntry::PrivateData::MotionTypeGeomagneticModelData *this, const CoreNavigation::CLP::LogEntry::PrivateData::MotionTypeGeomagneticModelData *a2)
{
  *this = &unk_1F4CDB418;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 9) = 0;
  CoreNavigation::CLP::LogEntry::PrivateData::MotionTypeGeomagneticModelData::MergeFrom(this, a2);
  return this;
}

double CoreNavigation::CLP::LogEntry::PrivateData::MotionTypeGeomagneticModelData::MergeFrom(CoreNavigation::CLP::LogEntry::PrivateData::MotionTypeGeomagneticModelData *this, const CoreNavigation::CLP::LogEntry::PrivateData::MotionTypeGeomagneticModelData *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v8);
  }

  LOBYTE(v5) = *(a2 + 76);
  if (v5)
  {
    if (*(a2 + 76))
    {
      result = *(a2 + 1);
      *(this + 19) |= 1u;
      *(this + 1) = result;
      v5 = *(a2 + 19);
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

    else if ((*(a2 + 76) & 2) == 0)
    {
      goto LABEL_6;
    }

    result = *(a2 + 2);
    *(this + 19) |= 2u;
    *(this + 2) = result;
    v5 = *(a2 + 19);
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
    result = *(a2 + 3);
    *(this + 19) |= 4u;
    *(this + 3) = result;
    v5 = *(a2 + 19);
    if ((v5 & 8) == 0)
    {
LABEL_8:
      if ((v5 & 0x10) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_17;
    }

LABEL_16:
    result = *(a2 + 4);
    *(this + 19) |= 8u;
    *(this + 4) = result;
    v5 = *(a2 + 19);
    if ((v5 & 0x10) == 0)
    {
LABEL_9:
      if ((v5 & 0x20) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_18;
    }

LABEL_17:
    result = *(a2 + 5);
    *(this + 19) |= 0x10u;
    *(this + 5) = result;
    v5 = *(a2 + 19);
    if ((v5 & 0x20) == 0)
    {
LABEL_10:
      if ((v5 & 0x40) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_19;
    }

LABEL_18:
    result = *(a2 + 6);
    *(this + 19) |= 0x20u;
    *(this + 6) = result;
    v5 = *(a2 + 19);
    if ((v5 & 0x40) == 0)
    {
LABEL_11:
      if ((v5 & 0x80) == 0)
      {
        return result;
      }

      goto LABEL_20;
    }

LABEL_19:
    result = *(a2 + 7);
    *(this + 19) |= 0x40u;
    *(this + 7) = result;
    if ((*(a2 + 19) & 0x80) == 0)
    {
      return result;
    }

LABEL_20:
    *(this + 19) |= 0x80u;
    v6 = *(this + 8);
    if (!v6)
    {
      operator new();
    }

    v7 = *(a2 + 8);
    if (!v7)
    {
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(this);
      v7 = *(CoreNavigation::CLP::LogEntry::PrivateData::MotionTypeGeomagneticModelData::default_instance_ + 64);
    }

    return CoreNavigation::CLP::LogEntry::PrivateData::TimeStamp::MergeFrom(v6, v7);
  }

  return result;
}

void sub_1D0CECED8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void CoreNavigation::CLP::LogEntry::PrivateData::MotionTypeGeomagneticModelData::~MotionTypeGeomagneticModelData(CoreNavigation::CLP::LogEntry::PrivateData::MotionTypeGeomagneticModelData *this)
{
  *this = &unk_1F4CDB418;
  CoreNavigation::CLP::LogEntry::PrivateData::MotionTypeGeomagneticModelData::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  CoreNavigation::CLP::LogEntry::PrivateData::MotionTypeGeomagneticModelData::~MotionTypeGeomagneticModelData(this);

  JUMPOUT(0x1D387ECA0);
}

void CoreNavigation::CLP::LogEntry::PrivateData::MotionTypeGeomagneticModelData::SharedDtor(CoreNavigation::CLP::LogEntry::PrivateData::MotionTypeGeomagneticModelData *this)
{
  CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(this);
  if (CoreNavigation::CLP::LogEntry::PrivateData::MotionTypeGeomagneticModelData::default_instance_ != this)
  {
    v2 = *(this + 8);
    if (v2)
    {
      v3 = *(*v2 + 8);

      v3();
    }
  }
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::MotionTypeGeomagneticModelData::Clear(uint64_t this)
{
  v1 = *(this + 76);
  if (v1)
  {
    *(this + 56) = 0;
    *(this + 40) = 0u;
    *(this + 24) = 0u;
    *(this + 8) = 0u;
    if (v1 < 0)
    {
      v2 = *(this + 64);
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
  }

  *(this + 76) = 0;
  return this;
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::MotionTypeGeomagneticModelData::MergePartialFromCodedStream(CoreNavigation::CLP::LogEntry::PrivateData::MotionTypeGeomagneticModelData *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
{
  while (1)
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
        if (TagFallback >> 3 > 4)
        {
          break;
        }

        if (TagFallback >> 3 > 2)
        {
          if (v7 == 3)
          {
            if (v8 == 1)
            {
              goto LABEL_37;
            }
          }

          else if (v7 == 4 && v8 == 1)
          {
            goto LABEL_41;
          }

          goto LABEL_54;
        }

        if (v7 == 1)
        {
          if (v8 != 1)
          {
            goto LABEL_54;
          }

          *v26 = 0;
          if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v26) & 1) == 0)
          {
            return 0;
          }

          *(this + 1) = *v26;
          *(this + 19) |= 1u;
          v10 = *(a2 + 1);
          if (v10 < *(a2 + 2) && *v10 == 17)
          {
            *(a2 + 1) = v10 + 1;
LABEL_30:
            *v26 = 0;
            if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v26) & 1) == 0)
            {
              return 0;
            }

            *(this + 2) = *v26;
            *(this + 19) |= 2u;
            v11 = *(a2 + 1);
            if (v11 < *(a2 + 2) && *v11 == 25)
            {
              *(a2 + 1) = v11 + 1;
LABEL_37:
              *v26 = 0;
              if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v26) & 1) == 0)
              {
                return 0;
              }

              *(this + 3) = *v26;
              *(this + 19) |= 4u;
              v12 = *(a2 + 1);
              if (v12 < *(a2 + 2) && *v12 == 33)
              {
                *(a2 + 1) = v12 + 1;
LABEL_41:
                *v26 = 0;
                if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v26) & 1) == 0)
                {
                  return 0;
                }

                *(this + 4) = *v26;
                *(this + 19) |= 8u;
                v13 = *(a2 + 1);
                if (v13 < *(a2 + 2) && *v13 == 41)
                {
                  *(a2 + 1) = v13 + 1;
LABEL_45:
                  *v26 = 0;
                  if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v26) & 1) == 0)
                  {
                    return 0;
                  }

                  *(this + 5) = *v26;
                  *(this + 19) |= 0x10u;
                  v14 = *(a2 + 1);
                  if (v14 < *(a2 + 2) && *v14 == 49)
                  {
                    *(a2 + 1) = v14 + 1;
LABEL_49:
                    *v26 = 0;
                    if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v26) & 1) == 0)
                    {
                      return 0;
                    }

                    *(this + 6) = *v26;
                    *(this + 19) |= 0x20u;
                    v15 = *(a2 + 1);
                    if (v15 < *(a2 + 2) && *v15 == 57)
                    {
                      *(a2 + 1) = v15 + 1;
                      goto LABEL_57;
                    }
                  }
                }
              }
            }
          }
        }

        else
        {
          if (v7 == 2 && v8 == 1)
          {
            goto LABEL_30;
          }

LABEL_54:
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

      if (TagFallback >> 3 <= 6)
      {
        if (v7 == 5)
        {
          if (v8 == 1)
          {
            goto LABEL_45;
          }
        }

        else if (v7 == 6 && v8 == 1)
        {
          goto LABEL_49;
        }

        goto LABEL_54;
      }

      if (v7 != 7)
      {
        if (v7 == 8 && v8 == 2)
        {
          v9 = *(this + 19);
          goto LABEL_61;
        }

        goto LABEL_54;
      }

      if (v8 != 1)
      {
        goto LABEL_54;
      }

LABEL_57:
      *v26 = 0;
      if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v26) & 1) == 0)
      {
        return 0;
      }

      *(this + 7) = *v26;
      v9 = *(this + 19) | 0x40;
      *(this + 19) = v9;
      v16 = *(a2 + 1);
    }

    while (v16 >= *(a2 + 2) || *v16 != 66);
    *(a2 + 1) = v16 + 1;
LABEL_61:
    *(this + 19) = v9 | 0x80;
    v17 = *(this + 8);
    if (!v17)
    {
      operator new();
    }

    v26[0] = 0;
    v18 = *(a2 + 1);
    if (v18 >= *(a2 + 2) || *v18 < 0)
    {
      if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v26))
      {
        return 0;
      }
    }

    else
    {
      v26[0] = *v18;
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
    if (!CoreNavigation::CLP::LogEntry::PrivateData::TimeStamp::MergePartialFromCodedStream(v17, a2, v21) || *(a2 + 36) != 1)
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

    if (*(a2 + 1) == *(a2 + 2) && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
    {
      *(a2 + 8) = 0;
      result = 1;
      *(a2 + 36) = 1;
      return result;
    }
  }
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::MotionTypeGeomagneticModelData::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 76);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(1, a2, *(this + 8), a3);
    v6 = *(v5 + 76);
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

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(2, a2, *(v5 + 16), a3);
  v6 = *(v5 + 76);
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
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(3, a2, *(v5 + 24), a3);
  v6 = *(v5 + 76);
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
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(4, a2, *(v5 + 32), a3);
  v6 = *(v5 + 76);
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
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(5, a2, *(v5 + 40), a3);
  v6 = *(v5 + 76);
  if ((v6 & 0x20) == 0)
  {
LABEL_7:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_8;
    }

LABEL_16:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(7, a2, *(v5 + 56), a3);
    if ((*(v5 + 76) & 0x80) == 0)
    {
      return this;
    }

    goto LABEL_17;
  }

LABEL_15:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(6, a2, *(v5 + 48), a3);
  v6 = *(v5 + 76);
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
  v7 = *(v5 + 64);
  if (!v7)
  {
    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(this);
    v7 = *(CoreNavigation::CLP::LogEntry::PrivateData::MotionTypeGeomagneticModelData::default_instance_ + 64);
  }

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(8, v7, a2, a4);
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::MotionTypeGeomagneticModelData::ByteSize(CoreNavigation::CLP::LogEntry::PrivateData::MotionTypeGeomagneticModelData *this)
{
  v2 = *(this + 76);
  if (*(this + 76))
  {
    v3 = (v2 << 31 >> 31) & 9;
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

    if ((v2 & 0x10) != 0)
    {
      v3 += 9;
    }

    if ((v2 & 0x20) != 0)
    {
      v3 += 9;
    }

    if ((v2 & 0x40) != 0)
    {
      v4 = v3 + 9;
    }

    else
    {
      v4 = v3;
    }

    if ((v2 & 0x80) != 0)
    {
      v5 = *(this + 8);
      if (!v5)
      {
        CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(this);
        v5 = *(CoreNavigation::CLP::LogEntry::PrivateData::MotionTypeGeomagneticModelData::default_instance_ + 64);
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
      v4 = (v4 + v8 + 2);
    }
  }

  else
  {
    v4 = 0;
  }

  *(this + 18) = v4;
  return v4;
}

double CoreNavigation::CLP::LogEntry::PrivateData::MotionTypeGeomagneticModelData::CheckTypeAndMergeFrom(CoreNavigation::CLP::LogEntry::PrivateData::MotionTypeGeomagneticModelData *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  return CoreNavigation::CLP::LogEntry::PrivateData::MotionTypeGeomagneticModelData::MergeFrom(this, lpsrc);
}

double CoreNavigation::CLP::LogEntry::PrivateData::MotionTypeGeomagneticModelData::CopyFrom(CoreNavigation::CLP::LogEntry::PrivateData::MotionTypeGeomagneticModelData *this, const CoreNavigation::CLP::LogEntry::PrivateData::MotionTypeGeomagneticModelData *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    return CoreNavigation::CLP::LogEntry::PrivateData::MotionTypeGeomagneticModelData::MergeFrom(this, a2);
  }

  return result;
}

double CoreNavigation::CLP::LogEntry::PrivateData::MotionTypeGeomagneticModelData::Swap(CoreNavigation::CLP::LogEntry::PrivateData::MotionTypeGeomagneticModelData *this, CoreNavigation::CLP::LogEntry::PrivateData::MotionTypeGeomagneticModelData *a2)
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
    result = *(this + 7);
    *(this + 7) = *(a2 + 7);
    *(a2 + 7) = result;
    v9 = *(this + 8);
    *(this + 8) = *(a2 + 8);
    *(a2 + 8) = v9;
    LODWORD(v9) = *(this + 19);
    *(this + 19) = *(a2 + 19);
    *(a2 + 19) = v9;
    LODWORD(v9) = *(this + 18);
    *(this + 18) = *(a2 + 18);
    *(a2 + 18) = v9;
  }

  return result;
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::GeomagneticModelData::SharedCtor(uint64_t this)
{
  *(this + 8) = 0;
  *(this + 16) = 0;
  return this;
}

CoreNavigation::CLP::LogEntry::PrivateData::GeomagneticModelData *CoreNavigation::CLP::LogEntry::PrivateData::GeomagneticModelData::GeomagneticModelData(CoreNavigation::CLP::LogEntry::PrivateData::GeomagneticModelData *this, const CoreNavigation::CLP::LogEntry::PrivateData::GeomagneticModelData *a2)
{
  *(this + 1) = 0;
  *(this + 2) = 0;
  *this = &unk_1F4CDB490;
  CoreNavigation::CLP::LogEntry::PrivateData::GeomagneticModelData::MergeFrom(this, a2);
  return this;
}

double CoreNavigation::CLP::LogEntry::PrivateData::GeomagneticModelData::MergeFrom(CoreNavigation::CLP::LogEntry::PrivateData::GeomagneticModelData *this, const CoreNavigation::CLP::LogEntry::PrivateData::GeomagneticModelData *a2)
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
      v6 = *(CoreNavigation::CLP::LogEntry::PrivateData::GeomagneticModelData::default_instance_ + 8);
    }

    return CoreNavigation::CLP::LogEntry::PrivateData::MotionTypeGeomagneticModelData::MergeFrom(v5, v6);
  }

  return result;
}

void sub_1D0CEDAB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void CoreNavigation::CLP::LogEntry::PrivateData::GeomagneticModelData::~GeomagneticModelData(CoreNavigation::CLP::LogEntry::PrivateData::GeomagneticModelData *this)
{
  *this = &unk_1F4CDB490;
  CoreNavigation::CLP::LogEntry::PrivateData::GeomagneticModelData::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  CoreNavigation::CLP::LogEntry::PrivateData::GeomagneticModelData::~GeomagneticModelData(this);

  JUMPOUT(0x1D387ECA0);
}

void CoreNavigation::CLP::LogEntry::PrivateData::GeomagneticModelData::SharedDtor(CoreNavigation::CLP::LogEntry::PrivateData::GeomagneticModelData *this)
{
  CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(this);
  if (CoreNavigation::CLP::LogEntry::PrivateData::GeomagneticModelData::default_instance_ != this)
  {
    v2 = *(this + 1);
    if (v2)
    {
      v3 = *(*v2 + 8);

      v3();
    }
  }
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::GeomagneticModelData::Clear(uint64_t this)
{
  v1 = this;
  if (*(this + 20))
  {
    this = *(this + 8);
    if (this)
    {
      this = CoreNavigation::CLP::LogEntry::PrivateData::MotionTypeGeomagneticModelData::Clear(this);
    }
  }

  *(v1 + 20) = 0;
  return this;
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::GeomagneticModelData::MergePartialFromCodedStream(CoreNavigation::CLP::LogEntry::PrivateData::GeomagneticModelData *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
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
      if (!CoreNavigation::CLP::LogEntry::PrivateData::MotionTypeGeomagneticModelData::MergePartialFromCodedStream(v7, a2, v11) || *(a2 + 36) != 1)
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

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::GeomagneticModelData::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  if (*(this + 20))
  {
    v6 = *(this + 8);
    if (!v6)
    {
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(this);
      v6 = *(CoreNavigation::CLP::LogEntry::PrivateData::GeomagneticModelData::default_instance_ + 8);
    }

    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(1, v6, a2, a4);
  }

  return this;
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::GeomagneticModelData::ByteSize(CoreNavigation::CLP::LogEntry::PrivateData::GeomagneticModelData *this)
{
  if (*(this + 20))
  {
    v3 = *(this + 1);
    if (!v3)
    {
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(0);
      v3 = *(CoreNavigation::CLP::LogEntry::PrivateData::GeomagneticModelData::default_instance_ + 8);
    }

    result = CoreNavigation::CLP::LogEntry::PrivateData::MotionTypeGeomagneticModelData::ByteSize(v3) + 2;
  }

  else
  {
    result = 0;
  }

  *(this + 4) = result;
  return result;
}

double CoreNavigation::CLP::LogEntry::PrivateData::GeomagneticModelData::CheckTypeAndMergeFrom(CoreNavigation::CLP::LogEntry::PrivateData::GeomagneticModelData *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  return CoreNavigation::CLP::LogEntry::PrivateData::GeomagneticModelData::MergeFrom(this, lpsrc);
}

double CoreNavigation::CLP::LogEntry::PrivateData::GeomagneticModelData::CopyFrom(CoreNavigation::CLP::LogEntry::PrivateData::GeomagneticModelData *this, const CoreNavigation::CLP::LogEntry::PrivateData::GeomagneticModelData *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    return CoreNavigation::CLP::LogEntry::PrivateData::GeomagneticModelData::MergeFrom(this, a2);
  }

  return result;
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::GeomagneticModelData::Swap(uint64_t this, CoreNavigation::CLP::LogEntry::PrivateData::GeomagneticModelData *a2)
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

double CoreNavigation::CLP::LogEntry::PrivateData::WifiAccessPoint::SharedCtor(CoreNavigation::CLP::LogEntry::PrivateData::WifiAccessPoint *this)
{
  v1 = MEMORY[0x1E69E5958];
  *(this + 1) = 0;
  *(this + 2) = v1;
  result = 0.0;
  *(this + 44) = 0u;
  *(this + 3) = 0;
  *(this + 4) = 0;
  *(this + 20) = 0;
  return result;
}

CoreNavigation::CLP::LogEntry::PrivateData::WifiAccessPoint *CoreNavigation::CLP::LogEntry::PrivateData::WifiAccessPoint::WifiAccessPoint(CoreNavigation::CLP::LogEntry::PrivateData::WifiAccessPoint *this, const CoreNavigation::CLP::LogEntry::PrivateData::WifiAccessPoint *a2)
{
  *(this + 52) = 0;
  *this = &unk_1F4CDB508;
  *(this + 1) = 0;
  v3 = MEMORY[0x1E69E5958];
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 3) = 0;
  *(this + 4) = 0;
  *(this + 2) = v3;
  *(this + 20) = 0;
  CoreNavigation::CLP::LogEntry::PrivateData::WifiAccessPoint::MergeFrom(this, a2);
  return this;
}

void CoreNavigation::CLP::LogEntry::PrivateData::WifiAccessPoint::MergeFrom(CoreNavigation::CLP::LogEntry::PrivateData::WifiAccessPoint *this, const CoreNavigation::CLP::LogEntry::PrivateData::WifiAccessPoint *a2)
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
    v8 = *(a2 + 1);
    *(this + 14) |= 1u;
    *(this + 1) = v8;
    v4 = *(a2 + 14);
    if ((v4 & 2) == 0)
    {
LABEL_6:
      if ((v4 & 4) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_24;
    }
  }

  else if ((v4 & 2) == 0)
  {
    goto LABEL_6;
  }

  v9 = *(a2 + 2);
  *(this + 14) |= 2u;
  v10 = *(this + 2);
  if (v10 == MEMORY[0x1E69E5958])
  {
    operator new();
  }

  std::string::operator=(v10, v9);
  v4 = *(a2 + 14);
  if ((v4 & 4) == 0)
  {
LABEL_7:
    if ((v4 & 8) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_25;
  }

LABEL_24:
  v11 = *(a2 + 6);
  *(this + 14) |= 4u;
  *(this + 6) = v11;
  v4 = *(a2 + 14);
  if ((v4 & 8) == 0)
  {
LABEL_8:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_27;
  }

LABEL_25:
  v12 = *(a2 + 7);
  if (v12 >= 4)
  {
    __assert_rtn("set_mode", "CoreNavigationCLPPrivateDataShared.pb.h", 25318, "::CoreNavigation::CLP::LogEntry::PrivateData::WifiAccessPointMode_IsValid(value)");
  }

  *(this + 14) |= 8u;
  *(this + 7) = v12;
  v4 = *(a2 + 14);
  if ((v4 & 0x10) == 0)
  {
LABEL_9:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_10;
    }

LABEL_28:
    v14 = *(a2 + 9);
    *(this + 14) |= 0x20u;
    *(this + 9) = v14;
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

    goto LABEL_29;
  }

LABEL_27:
  v13 = *(a2 + 8);
  *(this + 14) |= 0x10u;
  *(this + 8) = v13;
  v4 = *(a2 + 14);
  if ((v4 & 0x20) != 0)
  {
    goto LABEL_28;
  }

LABEL_10:
  if ((v4 & 0x40) == 0)
  {
    goto LABEL_11;
  }

LABEL_29:
  v15 = *(a2 + 40);
  *(this + 14) |= 0x40u;
  *(this + 40) = v15;
  v4 = *(a2 + 14);
  if ((v4 & 0x80) != 0)
  {
LABEL_12:
    v5 = *(a2 + 41);
    *(this + 14) |= 0x80u;
    *(this + 41) = v5;
    v4 = *(a2 + 14);
  }

LABEL_13:
  if ((v4 & 0xFF00) != 0)
  {
    if ((v4 & 0x100) != 0)
    {
      v6 = *(a2 + 11);
      if (v6 >= 4)
      {
        __assert_rtn("set_band", "CoreNavigationCLPPrivateDataShared.pb.h", 25429, "::CoreNavigation::CLP::LogEntry::PrivateData::WifiRfBand_IsValid(value)");
      }

      *(this + 14) |= 0x100u;
      *(this + 11) = v6;
      v4 = *(a2 + 14);
    }

    if ((v4 & 0x200) != 0)
    {
      v7 = *(a2 + 12);
      *(this + 14) |= 0x200u;
      *(this + 12) = v7;
    }
  }
}

void sub_1D0CEE398(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void CoreNavigation::CLP::LogEntry::PrivateData::WifiAccessPoint::~WifiAccessPoint(CoreNavigation::CLP::LogEntry::PrivateData::WifiAccessPoint *this)
{
  *this = &unk_1F4CDB508;
  CoreNavigation::CLP::LogEntry::PrivateData::WifiAccessPoint::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  CoreNavigation::CLP::LogEntry::PrivateData::WifiAccessPoint::~WifiAccessPoint(this);

  JUMPOUT(0x1D387ECA0);
}

void CoreNavigation::CLP::LogEntry::PrivateData::WifiAccessPoint::SharedDtor(CoreNavigation::CLP::LogEntry::PrivateData::WifiAccessPoint *this)
{
  v1 = *(this + 2);
  if (v1 != MEMORY[0x1E69E5958] && v1 != 0)
  {
    if (*(v1 + 23) < 0)
    {
      operator delete(*v1);
    }

    this = MEMORY[0x1D387ECA0](v1, 0x1012C40EC159624);
  }

  CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(this);
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::WifiAccessPoint::Clear(uint64_t this)
{
  v1 = *(this + 56);
  if (v1)
  {
    *(this + 8) = 0;
    if ((v1 & 2) != 0)
    {
      v2 = *(this + 16);
      if (v2 != MEMORY[0x1E69E5958])
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
    *(this + 32) = 0;
    *(this + 40) = 0;
    v1 = *(this + 56);
  }

  if ((v1 & 0xFF00) != 0)
  {
    *(this + 44) = 0;
    *(this + 48) = 0;
  }

  *(this + 56) = 0;
  return this;
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::WifiAccessPoint::MergePartialFromCodedStream(CoreNavigation::CLP::LogEntry::PrivateData::WifiAccessPoint *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
{
  v5 = MEMORY[0x1E69E5958];
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
        if (TagFallback >> 3 > 5)
        {
          if (TagFallback >> 3 <= 7)
          {
            if (v8 == 6)
            {
              if (v9 == 5)
              {
                goto LABEL_78;
              }
            }

            else if (v8 == 7 && (TagFallback & 7) == 0)
            {
              v16 = *(a2 + 1);
              v15 = *(a2 + 2);
              goto LABEL_82;
            }
          }

          else if (v8 == 8)
          {
            if ((TagFallback & 7) == 0)
            {
              v24 = *(a2 + 1);
              v15 = *(a2 + 2);
              goto LABEL_90;
            }
          }

          else if (v8 == 9)
          {
            if ((TagFallback & 7) == 0)
            {
              v26 = *(a2 + 1);
              v15 = *(a2 + 2);
              goto LABEL_98;
            }
          }

          else if (v8 == 10 && (TagFallback & 7) == 0)
          {
            v13 = *(a2 + 1);
            v12 = *(a2 + 2);
            goto LABEL_108;
          }

          goto LABEL_51;
        }

        if (TagFallback >> 3 > 2)
        {
          break;
        }

        if (v8 != 1)
        {
          if (v8 != 2 || v9 != 2)
          {
            goto LABEL_51;
          }

          v14 = *(this + 14);
          goto LABEL_33;
        }

        if (v9 != 1)
        {
          goto LABEL_51;
        }

        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, this + 1);
        if (!result)
        {
          return result;
        }

        v14 = *(this + 14) | 1;
        *(this + 14) = v14;
        v18 = *(a2 + 1);
        if (v18 < *(a2 + 2) && *v18 == 18)
        {
          *(a2 + 1) = v18 + 1;
LABEL_33:
          *(this + 14) = v14 | 2;
          if (*(this + 2) == v5)
          {
            operator new();
          }

          result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
          if (!result)
          {
            return result;
          }

          v20 = *(a2 + 1);
          v19 = *(a2 + 2);
          if (v20 < v19 && *v20 == 24)
          {
            v21 = v20 + 1;
            *(a2 + 1) = v21;
LABEL_43:
            v40 = 0;
            if (v21 >= v19 || (v22 = *v21, (v22 & 0x80000000) != 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v40);
              if (!result)
              {
                return result;
              }

              v22 = v40;
              v23 = *(a2 + 1);
              v19 = *(a2 + 2);
            }

            else
            {
              v23 = v21 + 1;
              *(a2 + 1) = v23;
            }

            *(this + 6) = -(v22 & 1) ^ (v22 >> 1);
            *(this + 14) |= 4u;
            if (v23 < v19 && *v23 == 32)
            {
              v25 = v23 + 1;
              *(a2 + 1) = v25;
              goto LABEL_60;
            }
          }
        }
      }

      if (v8 == 3)
      {
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_51;
        }

        v21 = *(a2 + 1);
        v19 = *(a2 + 2);
        goto LABEL_43;
      }

      if (v8 != 4)
      {
        break;
      }

      if ((TagFallback & 7) != 0)
      {
        goto LABEL_51;
      }

      v25 = *(a2 + 1);
      v19 = *(a2 + 2);
LABEL_60:
      v40 = 0;
      if (v25 >= v19 || (v27 = *v25, (v27 & 0x80000000) != 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v40);
        if (!result)
        {
          return result;
        }

        v27 = v40;
      }

      else
      {
        *(a2 + 1) = v25 + 1;
      }

      if (v27 <= 3)
      {
        *(this + 14) |= 8u;
        *(this + 7) = v27;
      }

      v28 = *(a2 + 1);
      v10 = *(a2 + 2);
      if (v28 < v10 && *v28 == 40)
      {
        v11 = v28 + 1;
        *(a2 + 1) = v11;
LABEL_70:
        v40 = 0;
        if (v11 >= v10 || (v29 = *v11, (v29 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v40);
          if (!result)
          {
            return result;
          }

          v29 = v40;
          v30 = *(a2 + 1);
          v10 = *(a2 + 2);
        }

        else
        {
          v30 = v11 + 1;
          *(a2 + 1) = v30;
        }

        *(this + 8) = v29;
        *(this + 14) |= 0x10u;
        if (v30 < v10 && *v30 == 53)
        {
          *(a2 + 1) = v30 + 1;
LABEL_78:
          v40 = 0;
          if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a2, &v40) & 1) == 0)
          {
            return 0;
          }

          *(this + 9) = v40;
          *(this + 14) |= 0x20u;
          v31 = *(a2 + 1);
          v15 = *(a2 + 2);
          if (v31 < v15 && *v31 == 56)
          {
            v16 = v31 + 1;
            *(a2 + 1) = v16;
LABEL_82:
            v40 = 0;
            if (v16 >= v15 || (v32 = *v16, (v32 & 0x80000000) != 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v40);
              if (!result)
              {
                return result;
              }

              v32 = v40;
              v33 = *(a2 + 1);
              v15 = *(a2 + 2);
            }

            else
            {
              v33 = v16 + 1;
              *(a2 + 1) = v33;
            }

            *(this + 40) = v32 != 0;
            *(this + 14) |= 0x40u;
            if (v33 < v15 && *v33 == 64)
            {
              v24 = v33 + 1;
              *(a2 + 1) = v24;
LABEL_90:
              v40 = 0;
              if (v24 >= v15 || (v34 = *v24, (v34 & 0x80000000) != 0))
              {
                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v40);
                if (!result)
                {
                  return result;
                }

                v34 = v40;
                v35 = *(a2 + 1);
                v15 = *(a2 + 2);
              }

              else
              {
                v35 = v24 + 1;
                *(a2 + 1) = v35;
              }

              *(this + 41) = v34 != 0;
              *(this + 14) |= 0x80u;
              if (v35 < v15 && *v35 == 72)
              {
                v26 = v35 + 1;
                *(a2 + 1) = v26;
LABEL_98:
                v40 = 0;
                if (v26 >= v15 || (v36 = *v26, (v36 & 0x80000000) != 0))
                {
                  result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v40);
                  if (!result)
                  {
                    return result;
                  }

                  v36 = v40;
                }

                else
                {
                  *(a2 + 1) = v26 + 1;
                }

                if (v36 <= 3)
                {
                  *(this + 14) |= 0x100u;
                  *(this + 11) = v36;
                }

                v37 = *(a2 + 1);
                v12 = *(a2 + 2);
                if (v37 < v12 && *v37 == 80)
                {
                  v13 = v37 + 1;
                  *(a2 + 1) = v13;
LABEL_108:
                  v40 = 0;
                  if (v13 >= v12 || (v38 = *v13, (v38 & 0x80000000) != 0))
                  {
                    result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v40);
                    if (!result)
                    {
                      return result;
                    }

                    v38 = v40;
                    v39 = *(a2 + 1);
                    v12 = *(a2 + 2);
                  }

                  else
                  {
                    v39 = v13 + 1;
                    *(a2 + 1) = v39;
                  }

                  *(this + 12) = v38;
                  *(this + 14) |= 0x200u;
                  if (v39 == v12 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
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

    if (v8 == 5 && (TagFallback & 7) == 0)
    {
      v11 = *(a2 + 1);
      v10 = *(a2 + 2);
      goto LABEL_70;
    }

LABEL_51:
    if (v9 == 4)
    {
      return 1;
    }
  }

  while ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(a2, TagFallback) & 1) != 0);
  return 0;
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::WifiAccessPoint::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 56);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFixed64(1, *(this + 8), a2, a4);
    v6 = *(v5 + 56);
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

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
  v6 = *(v5 + 56);
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
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteSInt32(3, *(v5 + 24), a2, a4);
  v6 = *(v5 + 56);
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
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(4, *(v5 + 28), a2, a4);
  v6 = *(v5 + 56);
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
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(5, *(v5 + 32), a2, a4);
  v6 = *(v5 + 56);
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
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(6, a2, *(v5 + 36), a3);
  v6 = *(v5 + 56);
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
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(7, *(v5 + 40), a2, a4);
  v6 = *(v5 + 56);
  if ((v6 & 0x80) == 0)
  {
LABEL_9:
    if ((v6 & 0x100) == 0)
    {
      goto LABEL_10;
    }

LABEL_20:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(9, *(v5 + 44), a2, a4);
    if ((*(v5 + 56) & 0x200) == 0)
    {
      return this;
    }

    goto LABEL_21;
  }

LABEL_19:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(8, *(v5 + 41), a2, a4);
  v6 = *(v5 + 56);
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
  v7 = *(v5 + 48);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(0xA, v7, a2, a4);
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::WifiAccessPoint::ByteSize(CoreNavigation::CLP::LogEntry::PrivateData::WifiAccessPoint *this, unsigned int a2)
{
  v3 = *(this + 14);
  if (!v3)
  {
    v5 = 0;
    goto LABEL_36;
  }

  v4 = ((v3 << 31) >> 31) & 9;
  if ((v3 & 2) != 0)
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
    if ((v3 & 4) == 0)
    {
LABEL_4:
      if ((v3 & 8) == 0)
      {
        goto LABEL_5;
      }

LABEL_21:
      v14 = *(this + 7);
      if ((v14 & 0x80000000) != 0)
      {
        v15 = 11;
      }

      else if (v14 >= 0x80)
      {
        v15 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v14) + 1;
        v3 = *(this + 14);
      }

      else
      {
        v15 = 2;
      }

      v4 += v15;
      if ((v3 & 0x10) == 0)
      {
        goto LABEL_33;
      }

      goto LABEL_27;
    }
  }

  else if ((v3 & 4) == 0)
  {
    goto LABEL_4;
  }

  v12 = ((2 * *(this + 6)) ^ (*(this + 6) >> 31));
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
  if ((v3 & 8) != 0)
  {
    goto LABEL_21;
  }

LABEL_5:
  if ((v3 & 0x10) != 0)
  {
LABEL_27:
    v16 = *(this + 8);
    if ((v16 & 0x80000000) != 0)
    {
      v17 = 11;
    }

    else if (v16 >= 0x80)
    {
      v17 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v16) + 1;
      v3 = *(this + 14);
    }

    else
    {
      v17 = 2;
    }

    v4 += v17;
  }

LABEL_33:
  v18 = v4 + 5;
  if ((v3 & 0x20) == 0)
  {
    v18 = v4;
  }

  v5 = ((v3 >> 6) & 2) + ((v3 >> 5) & 2) + v18;
LABEL_36:
  if ((v3 & 0xFF00) != 0)
  {
    if ((v3 & 0x100) != 0)
    {
      v19 = *(this + 11);
      if ((v19 & 0x80000000) != 0)
      {
        v20 = 11;
      }

      else if (v19 >= 0x80)
      {
        v20 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v19) + 1;
        v3 = *(this + 14);
      }

      else
      {
        v20 = 2;
      }

      v5 = (v20 + v5);
    }

    if ((v3 & 0x200) != 0)
    {
      v21 = *(this + 12);
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

      v5 = (v22 + v5);
    }
  }

  *(this + 13) = v5;
  return v5;
}

void CoreNavigation::CLP::LogEntry::PrivateData::WifiAccessPoint::CheckTypeAndMergeFrom(CoreNavigation::CLP::LogEntry::PrivateData::WifiAccessPoint *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  CoreNavigation::CLP::LogEntry::PrivateData::WifiAccessPoint::MergeFrom(this, lpsrc);
}

void CoreNavigation::CLP::LogEntry::PrivateData::WifiAccessPoint::CopyFrom(CoreNavigation::CLP::LogEntry::PrivateData::WifiAccessPoint *this, const CoreNavigation::CLP::LogEntry::PrivateData::WifiAccessPoint *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    CoreNavigation::CLP::LogEntry::PrivateData::WifiAccessPoint::MergeFrom(this, a2);
  }
}

float CoreNavigation::CLP::LogEntry::PrivateData::WifiAccessPoint::Swap(CoreNavigation::CLP::LogEntry::PrivateData::WifiAccessPoint *this, CoreNavigation::CLP::LogEntry::PrivateData::WifiAccessPoint *a2)
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
    LODWORD(v2) = *(this + 6);
    *(this + 6) = *(a2 + 6);
    *(a2 + 6) = v2;
    LODWORD(v2) = *(this + 7);
    *(this + 7) = *(a2 + 7);
    *(a2 + 7) = v2;
    LODWORD(v2) = *(this + 8);
    *(this + 8) = *(a2 + 8);
    *(a2 + 8) = v2;
    result = *(this + 9);
    *(this + 9) = *(a2 + 9);
    *(a2 + 9) = result;
    LOBYTE(v2) = *(this + 40);
    *(this + 40) = *(a2 + 40);
    *(a2 + 40) = v2;
    LOBYTE(v2) = *(this + 41);
    *(this + 41) = *(a2 + 41);
    *(a2 + 41) = v2;
    LODWORD(v2) = *(this + 11);
    *(this + 11) = *(a2 + 11);
    *(a2 + 11) = v2;
    LODWORD(v2) = *(this + 12);
    *(this + 12) = *(a2 + 12);
    *(a2 + 12) = v2;
    LODWORD(v2) = *(this + 14);
    *(this + 14) = *(a2 + 14);
    *(a2 + 14) = v2;
    LODWORD(v2) = *(this + 13);
    *(this + 13) = *(a2 + 13);
    *(a2 + 13) = v2;
  }

  return result;
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::WifiAssociationState::SharedCtor(uint64_t this)
{
  *(this + 20) = 0;
  *(this + 16) = 0;
  *(this + 8) = 0;
  return this;
}

CoreNavigation::CLP::LogEntry::PrivateData::WifiAssociationState *CoreNavigation::CLP::LogEntry::PrivateData::WifiAssociationState::WifiAssociationState(CoreNavigation::CLP::LogEntry::PrivateData::WifiAssociationState *this, const CoreNavigation::CLP::LogEntry::PrivateData::WifiAssociationState *a2)
{
  *(this + 20) = 0;
  *(this + 16) = 0;
  *this = &unk_1F4CDB580;
  *(this + 1) = 0;
  CoreNavigation::CLP::LogEntry::PrivateData::WifiAssociationState::MergeFrom(this, a2);
  return this;
}

void CoreNavigation::CLP::LogEntry::PrivateData::WifiAssociationState::MergeFrom(CoreNavigation::CLP::LogEntry::PrivateData::WifiAssociationState *this, const CoreNavigation::CLP::LogEntry::PrivateData::WifiAssociationState *a2)
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
      v5 = *(a2 + 16);
      *(this + 6) |= 1u;
      *(this + 16) = v5;
      v4 = *(a2 + 6);
    }

    if ((v4 & 2) != 0)
    {
      *(this + 6) |= 2u;
      v6 = *(this + 1);
      if (!v6)
      {
        operator new();
      }

      v7 = *(a2 + 1);
      if (!v7)
      {
        CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(this);
        v7 = *(CoreNavigation::CLP::LogEntry::PrivateData::WifiAssociationState::default_instance_ + 8);
      }

      CoreNavigation::CLP::LogEntry::PrivateData::WifiAccessPoint::MergeFrom(v6, v7);
    }
  }
}

void sub_1D0CEF1F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void CoreNavigation::CLP::LogEntry::PrivateData::WifiAssociationState::~WifiAssociationState(CoreNavigation::CLP::LogEntry::PrivateData::WifiAssociationState *this)
{
  *this = &unk_1F4CDB580;
  CoreNavigation::CLP::LogEntry::PrivateData::WifiAssociationState::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  CoreNavigation::CLP::LogEntry::PrivateData::WifiAssociationState::~WifiAssociationState(this);

  JUMPOUT(0x1D387ECA0);
}

void CoreNavigation::CLP::LogEntry::PrivateData::WifiAssociationState::SharedDtor(CoreNavigation::CLP::LogEntry::PrivateData::WifiAssociationState *this)
{
  CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(this);
  if (CoreNavigation::CLP::LogEntry::PrivateData::WifiAssociationState::default_instance_ != this)
  {
    v2 = *(this + 1);
    if (v2)
    {
      v3 = *(*v2 + 8);

      v3();
    }
  }
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::WifiAssociationState::Clear(uint64_t this)
{
  v1 = this;
  v2 = *(this + 24);
  if (v2)
  {
    *(this + 16) = 0;
    if ((v2 & 2) != 0)
    {
      this = *(this + 8);
      if (this)
      {
        this = CoreNavigation::CLP::LogEntry::PrivateData::WifiAccessPoint::Clear(this);
      }
    }
  }

  *(v1 + 24) = 0;
  return this;
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::WifiAssociationState::MergePartialFromCodedStream(CoreNavigation::CLP::LogEntry::PrivateData::WifiAssociationState *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
{
  while (1)
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

        v7 = TagFallback & 7;
        if (TagFallback >> 3 != 2)
        {
          break;
        }

        if (v7 == 2)
        {
          v12 = *(this + 6);
          goto LABEL_22;
        }

LABEL_13:
        if (v7 == 4)
        {
          return 1;
        }

        if ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(a2, TagFallback) & 1) == 0)
        {
          return 0;
        }
      }

      if (TagFallback >> 3 != 1 || (TagFallback & 7) != 0)
      {
        goto LABEL_13;
      }

      v22 = 0;
      v9 = *(a2 + 1);
      v8 = *(a2 + 2);
      if (v9 >= v8 || (v10 = *v9, (v10 & 0x80000000) != 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v22);
        if (!result)
        {
          return result;
        }

        v10 = v22;
        v11 = *(a2 + 1);
        v8 = *(a2 + 2);
      }

      else
      {
        v11 = v9 + 1;
        *(a2 + 1) = v11;
      }

      *(this + 16) = v10 != 0;
      v12 = *(this + 6) | 1;
      *(this + 6) = v12;
    }

    while (v11 >= v8 || *v11 != 18);
    *(a2 + 1) = v11 + 1;
LABEL_22:
    *(this + 6) = v12 | 2;
    v14 = *(this + 1);
    if (!v14)
    {
      operator new();
    }

    v23 = 0;
    v15 = *(a2 + 1);
    if (v15 >= *(a2 + 2) || *v15 < 0)
    {
      if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v23))
      {
        return 0;
      }
    }

    else
    {
      v23 = *v15;
      *(a2 + 1) = v15 + 1;
    }

    v16 = *(a2 + 14);
    v17 = *(a2 + 15);
    *(a2 + 14) = v16 + 1;
    if (v16 >= v17)
    {
      return 0;
    }

    wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
    if (!CoreNavigation::CLP::LogEntry::PrivateData::WifiAccessPoint::MergePartialFromCodedStream(v14, a2, v18) || *(a2 + 36) != 1)
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

    if (*(a2 + 1) == *(a2 + 2) && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
    {
      *(a2 + 8) = 0;
      result = 1;
      *(a2 + 36) = 1;
      return result;
    }
  }
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::WifiAssociationState::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 24);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(1, *(this + 16), a2, a4);
    v6 = *(v5 + 24);
  }

  if ((v6 & 2) != 0)
  {
    v7 = *(v5 + 8);
    if (!v7)
    {
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(this);
      v7 = *(CoreNavigation::CLP::LogEntry::PrivateData::WifiAssociationState::default_instance_ + 8);
    }

    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(2, v7, a2, a4);
  }

  return this;
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::WifiAssociationState::ByteSize(CoreNavigation::CLP::LogEntry::PrivateData::WifiAssociationState *this, unsigned int a2)
{
  v3 = *(this + 6);
  if (v3)
  {
    v4 = 2 * (v3 & 1u);
    if ((v3 & 2) != 0)
    {
      v5 = *(this + 1);
      if (!v5)
      {
        CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(0);
        v5 = *(CoreNavigation::CLP::LogEntry::PrivateData::WifiAssociationState::default_instance_ + 8);
      }

      v6 = CoreNavigation::CLP::LogEntry::PrivateData::WifiAccessPoint::ByteSize(v5, a2);
      v7 = v6;
      if (v6 >= 0x80)
      {
        v8 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v6);
      }

      else
      {
        v8 = 1;
      }

      v4 = (v7 + v4 + v8 + 1);
    }
  }

  else
  {
    v4 = 0;
  }

  *(this + 5) = v4;
  return v4;
}

void CoreNavigation::CLP::LogEntry::PrivateData::WifiAssociationState::CheckTypeAndMergeFrom(CoreNavigation::CLP::LogEntry::PrivateData::WifiAssociationState *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  CoreNavigation::CLP::LogEntry::PrivateData::WifiAssociationState::MergeFrom(this, lpsrc);
}

void CoreNavigation::CLP::LogEntry::PrivateData::WifiAssociationState::CopyFrom(CoreNavigation::CLP::LogEntry::PrivateData::WifiAssociationState *this, const CoreNavigation::CLP::LogEntry::PrivateData::WifiAssociationState *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    CoreNavigation::CLP::LogEntry::PrivateData::WifiAssociationState::MergeFrom(this, a2);
  }
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::WifiAssociationState::Swap(uint64_t this, CoreNavigation::CLP::LogEntry::PrivateData::WifiAssociationState *a2)
{
  if (a2 != this)
  {
    v2 = *(this + 16);
    *(this + 16) = *(a2 + 16);
    *(a2 + 16) = v2;
    v3 = *(this + 8);
    *(this + 8) = *(a2 + 1);
    *(a2 + 1) = v3;
    LODWORD(v3) = *(this + 24);
    *(this + 24) = *(a2 + 6);
    *(a2 + 6) = v3;
    LODWORD(v3) = *(this + 20);
    *(this + 20) = *(a2 + 5);
    *(a2 + 5) = v3;
  }

  return this;
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::WifiScanResult::SharedCtor(uint64_t this)
{
  *(this + 8) = 0;
  *(this + 40) = 0;
  return this;
}

CoreNavigation::CLP::LogEntry::PrivateData::WifiScanResult *CoreNavigation::CLP::LogEntry::PrivateData::WifiScanResult::WifiScanResult(CoreNavigation::CLP::LogEntry::PrivateData::WifiScanResult *this, const CoreNavigation::CLP::LogEntry::PrivateData::WifiScanResult *a2)
{
  *(this + 5) = 0;
  *this = &unk_1F4CDB5F8;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 3) = 0;
  *(this + 8) = 0;
  CoreNavigation::CLP::LogEntry::PrivateData::WifiScanResult::MergeFrom(this, a2);
  return this;
}

void sub_1D0CEF948(_Unwind_Exception *a1)
{
  sub_1D0B8CD0C(v1 + 2);
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(v1);
  _Unwind_Resume(a1);
}

double CoreNavigation::CLP::LogEntry::PrivateData::WifiScanResult::MergeFrom(CoreNavigation::CLP::LogEntry::PrivateData::WifiScanResult *this, const CoreNavigation::CLP::LogEntry::PrivateData::WifiScanResult *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v14);
  }

  v4 = wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 16));
  LODWORD(v6) = *(a2 + 6);
  if (v6 >= 1)
  {
    v7 = 0;
    do
    {
      if (v7 >= v6)
      {
        wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
        wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
        wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
        wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v14);
      }

      v8 = *(*(a2 + 2) + 8 * v7);
      v9 = *(this + 7);
      v10 = *(this + 6);
      if (v10 >= v9)
      {
        if (v9 == *(this + 8))
        {
          wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 16));
          v9 = *(this + 7);
        }

        *(this + 7) = v9 + 1;
        operator new();
      }

      v11 = *(this + 2);
      *(this + 6) = v10 + 1;
      CoreNavigation::CLP::LogEntry::PrivateData::WifiAccessPoint::MergeFrom(*(v11 + 8 * v10), v8);
      ++v7;
      v6 = *(a2 + 6);
    }

    while (v7 < v6);
  }

  if (*(a2 + 44))
  {
    *(this + 11) |= 1u;
    v12 = *(this + 1);
    if (!v12)
    {
      operator new();
    }

    v13 = *(a2 + 1);
    if (!v13)
    {
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(v4);
      v13 = *(CoreNavigation::CLP::LogEntry::PrivateData::WifiScanResult::default_instance_ + 8);
    }

    return CoreNavigation::CLP::LogEntry::PrivateData::TimeStamp::MergeFrom(v12, v13);
  }

  return result;
}

void sub_1D0CEFBB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void CoreNavigation::CLP::LogEntry::PrivateData::WifiScanResult::~WifiScanResult(CoreNavigation::CLP::LogEntry::PrivateData::WifiScanResult *this)
{
  *this = &unk_1F4CDB5F8;
  CoreNavigation::CLP::LogEntry::PrivateData::WifiScanResult::SharedDtor(this);
  sub_1D0B8CD0C(this + 2);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  CoreNavigation::CLP::LogEntry::PrivateData::WifiScanResult::~WifiScanResult(this);

  JUMPOUT(0x1D387ECA0);
}

void CoreNavigation::CLP::LogEntry::PrivateData::WifiScanResult::SharedDtor(CoreNavigation::CLP::LogEntry::PrivateData::WifiScanResult *this)
{
  CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(this);
  if (CoreNavigation::CLP::LogEntry::PrivateData::WifiScanResult::default_instance_ != this)
  {
    v2 = *(this + 1);
    if (v2)
    {
      v3 = *(*v2 + 8);

      v3();
    }
  }
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::WifiScanResult::Clear(CoreNavigation::CLP::LogEntry::PrivateData::WifiScanResult *this)
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

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::WifiScanResult::MergePartialFromCodedStream(CoreNavigation::CLP::LogEntry::PrivateData::WifiScanResult *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
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
          if (!CoreNavigation::CLP::LogEntry::PrivateData::WifiAccessPoint::MergePartialFromCodedStream(v20, a2, v24) || *(a2 + 36) != 1)
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

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::WifiScanResult::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  if (*(this + 44))
  {
    v6 = *(this + 8);
    if (!v6)
    {
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(this);
      v6 = *(CoreNavigation::CLP::LogEntry::PrivateData::WifiScanResult::default_instance_ + 8);
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

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::WifiScanResult::ByteSize(CoreNavigation::CLP::LogEntry::PrivateData::WifiScanResult *this, unsigned int a2)
{
  if (*(this + 44))
  {
    v4 = *(this + 1);
    if (!v4)
    {
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(this);
      v4 = *(CoreNavigation::CLP::LogEntry::PrivateData::WifiScanResult::default_instance_ + 8);
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
      v10 = CoreNavigation::CLP::LogEntry::PrivateData::WifiAccessPoint::ByteSize(*(*(this + 2) + 8 * v9), a2);
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

double CoreNavigation::CLP::LogEntry::PrivateData::WifiScanResult::CheckTypeAndMergeFrom(CoreNavigation::CLP::LogEntry::PrivateData::WifiScanResult *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  return CoreNavigation::CLP::LogEntry::PrivateData::WifiScanResult::MergeFrom(this, lpsrc);
}

double CoreNavigation::CLP::LogEntry::PrivateData::WifiScanResult::CopyFrom(CoreNavigation::CLP::LogEntry::PrivateData::WifiScanResult *this, const CoreNavigation::CLP::LogEntry::PrivateData::WifiScanResult *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    return CoreNavigation::CLP::LogEntry::PrivateData::WifiScanResult::MergeFrom(this, a2);
  }

  return result;
}

CoreNavigation::CLP::LogEntry::PrivateData::WifiScanResult *CoreNavigation::CLP::LogEntry::PrivateData::WifiScanResult::Swap(CoreNavigation::CLP::LogEntry::PrivateData::WifiScanResult *this, CoreNavigation::CLP::LogEntry::PrivateData::WifiScanResult *a2)
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

double CoreNavigation::CLP::LogEntry::PrivateData::WifiNotification::SharedCtor(CoreNavigation::CLP::LogEntry::PrivateData::WifiNotification *this)
{
  *(this + 13) = 0;
  *(this + 14) = 0;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 33) = 0u;
  return result;
}

CoreNavigation::CLP::LogEntry::PrivateData::WifiNotification *CoreNavigation::CLP::LogEntry::PrivateData::WifiNotification::WifiNotification(CoreNavigation::CLP::LogEntry::PrivateData::WifiNotification *this, const CoreNavigation::CLP::LogEntry::PrivateData::WifiNotification *a2)
{
  *this = &unk_1F4CDB670;
  *(this + 13) = 0;
  *(this + 14) = 0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 33) = 0u;
  CoreNavigation::CLP::LogEntry::PrivateData::WifiNotification::MergeFrom(this, a2);
  return this;
}

void CoreNavigation::CLP::LogEntry::PrivateData::WifiNotification::MergeFrom(CoreNavigation::CLP::LogEntry::PrivateData::WifiNotification *this, const CoreNavigation::CLP::LogEntry::PrivateData::WifiNotification *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v19);
  }

  v4 = *(a2 + 14);
  if (!v4)
  {
    goto LABEL_13;
  }

  if (v4)
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
      v8 = *(CoreNavigation::CLP::LogEntry::PrivateData::WifiNotification::default_instance_ + 8);
    }

    CoreNavigation::CLP::LogEntry::PrivateData::TimeStamp::MergeFrom(v7, v8);
    v4 = *(a2 + 14);
    if ((v4 & 2) == 0)
    {
LABEL_6:
      if ((v4 & 4) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_25;
    }
  }

  else if ((v4 & 2) == 0)
  {
    goto LABEL_6;
  }

  v9 = *(a2 + 4);
  *(this + 14) |= 2u;
  *(this + 4) = v9;
  v4 = *(a2 + 14);
  if ((v4 & 4) == 0)
  {
LABEL_7:
    if ((v4 & 8) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_27;
  }

LABEL_25:
  v10 = *(a2 + 5);
  if (v10 >= 0xF)
  {
    __assert_rtn("set_type", "CoreNavigationCLPPrivateDataShared.pb.h", 25681, "::CoreNavigation::CLP::LogEntry::PrivateData::WifiNotificationType_IsValid(value)");
  }

  *(this + 14) |= 4u;
  *(this + 5) = v10;
  v4 = *(a2 + 14);
  if ((v4 & 8) == 0)
  {
LABEL_8:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_29;
  }

LABEL_27:
  v11 = *(a2 + 10);
  if (v11 >= 0xF)
  {
    __assert_rtn("set_scan_type", "CoreNavigationCLPPrivateDataShared.pb.h", 25704, "::CoreNavigation::CLP::LogEntry::PrivateData::WifiScanType_IsValid(value)");
  }

  *(this + 14) |= 8u;
  *(this + 10) = v11;
  v4 = *(a2 + 14);
  if ((v4 & 0x10) == 0)
  {
LABEL_9:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_10;
    }

LABEL_30:
    *(this + 14) |= 0x20u;
    v13 = *(this + 3);
    if (!v13)
    {
      operator new();
    }

    v14 = *(a2 + 3);
    if (!v14)
    {
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(this);
      v14 = *(CoreNavigation::CLP::LogEntry::PrivateData::WifiNotification::default_instance_ + 24);
    }

    CoreNavigation::CLP::LogEntry::PrivateData::WifiAssociationState::MergeFrom(v13, v14);
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

    goto LABEL_35;
  }

LABEL_29:
  v12 = *(a2 + 44);
  *(this + 14) |= 0x10u;
  *(this + 44) = v12;
  v4 = *(a2 + 14);
  if ((v4 & 0x20) != 0)
  {
    goto LABEL_30;
  }

LABEL_10:
  if ((v4 & 0x40) == 0)
  {
    goto LABEL_11;
  }

LABEL_35:
  *(this + 14) |= 0x40u;
  v15 = *(this + 4);
  if (!v15)
  {
    operator new();
  }

  v16 = *(a2 + 4);
  if (!v16)
  {
    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(this);
    v16 = *(CoreNavigation::CLP::LogEntry::PrivateData::WifiNotification::default_instance_ + 32);
  }

  CoreNavigation::CLP::LogEntry::PrivateData::WifiScanResult::MergeFrom(v15, v16);
  v4 = *(a2 + 14);
  if ((v4 & 0x80) != 0)
  {
LABEL_12:
    v5 = *(a2 + 45);
    *(this + 14) |= 0x80u;
    *(this + 45) = v5;
    v4 = *(a2 + 14);
  }

LABEL_13:
  if ((v4 & 0xFF00) == 0)
  {
    return;
  }

  if ((v4 & 0x100) != 0)
  {
    v17 = *(a2 + 46);
    *(this + 14) |= 0x100u;
    *(this + 46) = v17;
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

  v18 = *(a2 + 47);
  *(this + 14) |= 0x200u;
  *(this + 47) = v18;
  if ((*(a2 + 14) & 0x400) != 0)
  {
LABEL_17:
    v6 = *(a2 + 48);
    *(this + 14) |= 0x400u;
    *(this + 48) = v6;
  }
}

void sub_1D0CF0858(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void CoreNavigation::CLP::LogEntry::PrivateData::WifiNotification::~WifiNotification(CoreNavigation::CLP::LogEntry::PrivateData::WifiNotification *this)
{
  *this = &unk_1F4CDB670;
  CoreNavigation::CLP::LogEntry::PrivateData::WifiNotification::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  CoreNavigation::CLP::LogEntry::PrivateData::WifiNotification::~WifiNotification(this);

  JUMPOUT(0x1D387ECA0);
}

void CoreNavigation::CLP::LogEntry::PrivateData::WifiNotification::SharedDtor(CoreNavigation::CLP::LogEntry::PrivateData::WifiNotification *this)
{
  CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(this);
  if (CoreNavigation::CLP::LogEntry::PrivateData::WifiNotification::default_instance_ != this)
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

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::WifiNotification::Clear(uint64_t this)
{
  v1 = this;
  v2 = *(this + 56);
  if (v2)
  {
    if (v2)
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
        v2 = *(this + 56);
      }
    }

    *(this + 16) = 0;
    *(this + 40) = 0;
    *(this + 44) = 0;
    if ((v2 & 0x20) != 0)
    {
      this = *(this + 24);
      if (this)
      {
        this = CoreNavigation::CLP::LogEntry::PrivateData::WifiAssociationState::Clear(this);
        v2 = *(v1 + 56);
      }
    }

    if ((v2 & 0x40) != 0)
    {
      this = *(v1 + 32);
      if (this)
      {
        this = CoreNavigation::CLP::LogEntry::PrivateData::WifiScanResult::Clear(this);
        v2 = *(v1 + 56);
      }
    }

    *(v1 + 45) = 0;
  }

  if ((v2 & 0xFF00) != 0)
  {
    *(v1 + 46) = 0;
    *(v1 + 48) = 0;
  }

  *(v1 + 56) = 0;
  return this;
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::WifiNotification::MergePartialFromCodedStream(CoreNavigation::CLP::LogEntry::PrivateData::WifiNotification *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
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
            if (v7 != 2 || (TagFallback & 7) != 0)
            {
              goto LABEL_45;
            }

            v15 = *(a2 + 1);
            v14 = *(a2 + 2);
            goto LABEL_58;
          }

          if (v8 != 2)
          {
            goto LABEL_45;
          }

          *(this + 14) |= 1u;
          v16 = *(this + 1);
          if (!v16)
          {
            operator new();
          }

          v64 = 0;
          v17 = *(a2 + 1);
          if (v17 >= *(a2 + 2) || *v17 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v64))
            {
              return 0;
            }
          }

          else
          {
            v64 = *v17;
            *(a2 + 1) = v17 + 1;
          }

          v24 = *(a2 + 14);
          v25 = *(a2 + 15);
          *(a2 + 14) = v24 + 1;
          if (v24 >= v25)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
          if (!CoreNavigation::CLP::LogEntry::PrivateData::TimeStamp::MergePartialFromCodedStream(v16, a2, v26) || *(a2 + 36) != 1)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
          v27 = *(a2 + 14);
          v28 = __OFSUB__(v27, 1);
          v29 = v27 - 1;
          if (v29 < 0 == v28)
          {
            *(a2 + 14) = v29;
          }

          v30 = *(a2 + 1);
          v14 = *(a2 + 2);
          if (v30 < v14 && *v30 == 16)
          {
            v15 = v30 + 1;
            *(a2 + 1) = v15;
LABEL_58:
            v64 = 0;
            if (v15 >= v14 || (v31 = *v15, (v31 & 0x80000000) != 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v64);
              if (!result)
              {
                return result;
              }

              v31 = v64;
              v32 = *(a2 + 1);
              v14 = *(a2 + 2);
            }

            else
            {
              v32 = v15 + 1;
              *(a2 + 1) = v32;
            }

            *(this + 4) = v31;
            *(this + 14) |= 2u;
            if (v32 < v14 && *v32 == 24)
            {
              v21 = v32 + 1;
              *(a2 + 1) = v21;
LABEL_66:
              v64 = 0;
              if (v21 >= v14 || (v34 = *v21, (v34 & 0x80000000) != 0))
              {
                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v64);
                if (!result)
                {
                  return result;
                }

                v34 = v64;
              }

              else
              {
                *(a2 + 1) = v21 + 1;
              }

              if (v34 <= 0xE)
              {
                *(this + 14) |= 4u;
                *(this + 5) = v34;
              }

              v35 = *(a2 + 1);
              v18 = *(a2 + 2);
              if (v35 < v18 && *v35 == 32)
              {
                v19 = v35 + 1;
                *(a2 + 1) = v19;
                goto LABEL_76;
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
              goto LABEL_45;
            }

            v21 = *(a2 + 1);
            v14 = *(a2 + 2);
            goto LABEL_66;
          }

          if (v7 != 4)
          {
            if (v7 != 5 || (TagFallback & 7) != 0)
            {
              goto LABEL_45;
            }

            v12 = *(a2 + 1);
            v11 = *(a2 + 2);
            goto LABEL_86;
          }

          if ((TagFallback & 7) != 0)
          {
            goto LABEL_45;
          }

          v19 = *(a2 + 1);
          v18 = *(a2 + 2);
LABEL_76:
          v64 = 0;
          if (v19 >= v18 || (v36 = *v19, (v36 & 0x80000000) != 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v64);
            if (!result)
            {
              return result;
            }

            v36 = v64;
          }

          else
          {
            *(a2 + 1) = v19 + 1;
          }

          if (v36 <= 0xE)
          {
            *(this + 14) |= 8u;
            *(this + 10) = v36;
          }

          v37 = *(a2 + 1);
          v11 = *(a2 + 2);
          if (v37 < v11 && *v37 == 40)
          {
            v12 = v37 + 1;
            *(a2 + 1) = v12;
LABEL_86:
            v64 = 0;
            if (v12 >= v11 || (v38 = *v12, (v38 & 0x80000000) != 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v64);
              if (!result)
              {
                return result;
              }

              v38 = v64;
              v39 = *(a2 + 1);
              v11 = *(a2 + 2);
            }

            else
            {
              v39 = v12 + 1;
              *(a2 + 1) = v39;
            }

            *(this + 44) = v38 != 0;
            v22 = *(this + 14) | 0x10;
            *(this + 14) = v22;
            if (v39 < v11 && *v39 == 50)
            {
              *(a2 + 1) = v39 + 1;
LABEL_94:
              *(this + 14) = v22 | 0x20;
              v40 = *(this + 3);
              if (!v40)
              {
                operator new();
              }

              v64 = 0;
              v41 = *(a2 + 1);
              if (v41 >= *(a2 + 2) || *v41 < 0)
              {
                if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v64))
                {
                  return 0;
                }
              }

              else
              {
                v64 = *v41;
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
              if (!CoreNavigation::CLP::LogEntry::PrivateData::WifiAssociationState::MergePartialFromCodedStream(v40, a2, v44) || *(a2 + 36) != 1)
              {
                return 0;
              }

              wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
              v45 = *(a2 + 14);
              v28 = __OFSUB__(v45, 1);
              v46 = v45 - 1;
              if (v46 < 0 == v28)
              {
                *(a2 + 14) = v46;
              }

              v47 = *(a2 + 1);
              if (v47 < *(a2 + 2) && *v47 == 58)
              {
                *(a2 + 1) = v47 + 1;
                goto LABEL_108;
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
            v23 = *(a2 + 1);
            v9 = *(a2 + 2);
            goto LABEL_130;
          }
        }

        else if (v7 == 10)
        {
          if ((TagFallback & 7) == 0)
          {
            v20 = *(a2 + 1);
            v9 = *(a2 + 2);
            goto LABEL_138;
          }
        }

        else if (v7 == 11 && (TagFallback & 7) == 0)
        {
          v13 = *(a2 + 1);
          v9 = *(a2 + 2);
          goto LABEL_146;
        }

        goto LABEL_45;
      }

      if (v7 == 6)
      {
        if (v8 != 2)
        {
          goto LABEL_45;
        }

        v22 = *(this + 14);
        goto LABEL_94;
      }

      if (v7 == 7)
      {
        break;
      }

      if (v7 == 8 && (TagFallback & 7) == 0)
      {
        v10 = *(a2 + 1);
        v9 = *(a2 + 2);
        goto LABEL_122;
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

    if (v8 != 2)
    {
      goto LABEL_45;
    }

LABEL_108:
    *(this + 14) |= 0x40u;
    v48 = *(this + 4);
    if (!v48)
    {
      operator new();
    }

    v64 = 0;
    v49 = *(a2 + 1);
    if (v49 >= *(a2 + 2) || *v49 < 0)
    {
      if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v64))
      {
        return 0;
      }
    }

    else
    {
      v64 = *v49;
      *(a2 + 1) = v49 + 1;
    }

    v50 = *(a2 + 14);
    v51 = *(a2 + 15);
    *(a2 + 14) = v50 + 1;
    if (v50 >= v51)
    {
      return 0;
    }

    wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
    if (!CoreNavigation::CLP::LogEntry::PrivateData::WifiScanResult::MergePartialFromCodedStream(v48, a2, v52) || *(a2 + 36) != 1)
    {
      return 0;
    }

    wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
    v53 = *(a2 + 14);
    v28 = __OFSUB__(v53, 1);
    v54 = v53 - 1;
    if (v54 < 0 == v28)
    {
      *(a2 + 14) = v54;
    }

    v55 = *(a2 + 1);
    v9 = *(a2 + 2);
    if (v55 < v9 && *v55 == 64)
    {
      v10 = v55 + 1;
      *(a2 + 1) = v10;
LABEL_122:
      v64 = 0;
      if (v10 >= v9 || (v56 = *v10, (v56 & 0x80000000) != 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v64);
        if (!result)
        {
          return result;
        }

        v56 = v64;
        v57 = *(a2 + 1);
        v9 = *(a2 + 2);
      }

      else
      {
        v57 = v10 + 1;
        *(a2 + 1) = v57;
      }

      *(this + 45) = v56 != 0;
      *(this + 14) |= 0x80u;
      if (v57 < v9 && *v57 == 72)
      {
        v23 = v57 + 1;
        *(a2 + 1) = v23;
LABEL_130:
        v64 = 0;
        if (v23 >= v9 || (v58 = *v23, (v58 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v64);
          if (!result)
          {
            return result;
          }

          v58 = v64;
          v59 = *(a2 + 1);
          v9 = *(a2 + 2);
        }

        else
        {
          v59 = v23 + 1;
          *(a2 + 1) = v59;
        }

        *(this + 46) = v58 != 0;
        *(this + 14) |= 0x100u;
        if (v59 < v9 && *v59 == 80)
        {
          v20 = v59 + 1;
          *(a2 + 1) = v20;
LABEL_138:
          v64 = 0;
          if (v20 >= v9 || (v60 = *v20, (v60 & 0x80000000) != 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v64);
            if (!result)
            {
              return result;
            }

            v60 = v64;
            v61 = *(a2 + 1);
            v9 = *(a2 + 2);
          }

          else
          {
            v61 = v20 + 1;
            *(a2 + 1) = v61;
          }

          *(this + 47) = v60 != 0;
          *(this + 14) |= 0x200u;
          if (v61 < v9 && *v61 == 88)
          {
            v13 = v61 + 1;
            *(a2 + 1) = v13;
LABEL_146:
            v64 = 0;
            if (v13 >= v9 || (v62 = *v13, (v62 & 0x80000000) != 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v64);
              if (!result)
              {
                return result;
              }

              v62 = v64;
              v63 = *(a2 + 1);
              v9 = *(a2 + 2);
            }

            else
            {
              v63 = v13 + 1;
              *(a2 + 1) = v63;
            }

            *(this + 48) = v62 != 0;
            *(this + 14) |= 0x400u;
            if (v63 == v9 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
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

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::WifiNotification::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 56);
  if (v6)
  {
    v7 = *(this + 8);
    if (!v7)
    {
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(this);
      v7 = *(CoreNavigation::CLP::LogEntry::PrivateData::WifiNotification::default_instance_ + 8);
    }

    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(1, v7, a2, a4);
    v6 = *(v5 + 56);
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

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(2, *(v5 + 16), a2, a4);
  v6 = *(v5 + 56);
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
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(3, *(v5 + 20), a2, a4);
  v6 = *(v5 + 56);
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
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(4, *(v5 + 40), a2, a4);
  v6 = *(v5 + 56);
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
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(5, *(v5 + 44), a2, a4);
  v6 = *(v5 + 56);
  if ((v6 & 0x20) == 0)
  {
LABEL_7:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_23;
  }

LABEL_20:
  v8 = *(v5 + 24);
  if (!v8)
  {
    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(this);
    v8 = *(CoreNavigation::CLP::LogEntry::PrivateData::WifiNotification::default_instance_ + 24);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(6, v8, a2, a4);
  v6 = *(v5 + 56);
  if ((v6 & 0x40) == 0)
  {
LABEL_8:
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_26;
  }

LABEL_23:
  v9 = *(v5 + 32);
  if (!v9)
  {
    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(this);
    v9 = *(CoreNavigation::CLP::LogEntry::PrivateData::WifiNotification::default_instance_ + 32);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(7, v9, a2, a4);
  v6 = *(v5 + 56);
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
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(8, *(v5 + 45), a2, a4);
  v6 = *(v5 + 56);
  if ((v6 & 0x100) == 0)
  {
LABEL_10:
    if ((v6 & 0x200) == 0)
    {
      goto LABEL_11;
    }

LABEL_28:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(0xA, *(v5 + 47), a2, a4);
    if ((*(v5 + 56) & 0x400) == 0)
    {
      return this;
    }

    goto LABEL_29;
  }

LABEL_27:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(9, *(v5 + 46), a2, a4);
  v6 = *(v5 + 56);
  if ((v6 & 0x200) != 0)
  {
    goto LABEL_28;
  }

LABEL_11:
  if ((v6 & 0x400) == 0)
  {
    return this;
  }

LABEL_29:
  v10 = *(v5 + 48);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(0xB, v10, a2, a4);
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::WifiNotification::ByteSize(CoreNavigation::CLP::LogEntry::PrivateData::WifiNotification *this, unsigned int a2)
{
  v3 = *(this + 14);
  if (!v3)
  {
    v5 = 0;
    goto LABEL_51;
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
    v6 = *(CoreNavigation::CLP::LogEntry::PrivateData::WifiNotification::default_instance_ + 8);
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
  v3 = *(this + 14);
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
      v3 = *(this + 14);
    }

    else
    {
      v10 = 2;
    }

    v4 += v10;
  }

LABEL_21:
  if ((v3 & 4) != 0)
  {
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
    if ((v3 & 8) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_30;
  }

  if ((v3 & 8) != 0)
  {
LABEL_30:
    v13 = *(this + 10);
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
  }

LABEL_36:
  v15 = ((v3 >> 3) & 2) + v4;
  if ((v3 & 0x20) != 0)
  {
    v16 = *(this + 3);
    if (!v16)
    {
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(0);
      v16 = *(CoreNavigation::CLP::LogEntry::PrivateData::WifiNotification::default_instance_ + 24);
    }

    v17 = CoreNavigation::CLP::LogEntry::PrivateData::WifiAssociationState::ByteSize(v16, a2);
    v18 = v17;
    if (v17 >= 0x80)
    {
      v19 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v17);
    }

    else
    {
      v19 = 1;
    }

    v15 += v18 + v19 + 1;
    v3 = *(this + 14);
  }

  if ((v3 & 0x40) != 0)
  {
    v20 = *(this + 4);
    if (!v20)
    {
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(0);
      v20 = *(CoreNavigation::CLP::LogEntry::PrivateData::WifiNotification::default_instance_ + 32);
    }

    v21 = CoreNavigation::CLP::LogEntry::PrivateData::WifiScanResult::ByteSize(v20, a2);
    v22 = v21;
    if (v21 >= 0x80)
    {
      v23 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v21);
    }

    else
    {
      v23 = 1;
    }

    v15 += v22 + v23 + 1;
    v3 = *(this + 14);
  }

  v5 = ((v3 >> 6) & 2) + v15;
LABEL_51:
  v24 = (v3 & 0xFF00) == 0;
  v25 = ((v3 >> 7) & 2) + v5 + ((v3 >> 8) & 2) + ((v3 >> 9) & 2);
  if (v24)
  {
    result = v5;
  }

  else
  {
    result = v25;
  }

  *(this + 13) = result;
  return result;
}

void CoreNavigation::CLP::LogEntry::PrivateData::WifiNotification::CheckTypeAndMergeFrom(CoreNavigation::CLP::LogEntry::PrivateData::WifiNotification *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  CoreNavigation::CLP::LogEntry::PrivateData::WifiNotification::MergeFrom(this, lpsrc);
}

void CoreNavigation::CLP::LogEntry::PrivateData::WifiNotification::CopyFrom(CoreNavigation::CLP::LogEntry::PrivateData::WifiNotification *this, const CoreNavigation::CLP::LogEntry::PrivateData::WifiNotification *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    CoreNavigation::CLP::LogEntry::PrivateData::WifiNotification::MergeFrom(this, a2);
  }
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::WifiNotification::Swap(uint64_t this, CoreNavigation::CLP::LogEntry::PrivateData::WifiNotification *a2)
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
    LODWORD(v2) = *(this + 40);
    *(this + 40) = *(a2 + 10);
    *(a2 + 10) = v2;
    LOBYTE(v2) = *(this + 44);
    *(this + 44) = *(a2 + 44);
    *(a2 + 44) = v2;
    v3 = *(this + 24);
    *(this + 24) = *(a2 + 3);
    *(a2 + 3) = v3;
    v4 = *(this + 32);
    *(this + 32) = *(a2 + 4);
    *(a2 + 4) = v4;
    LOBYTE(v4) = *(this + 45);
    *(this + 45) = *(a2 + 45);
    *(a2 + 45) = v4;
    LOBYTE(v4) = *(this + 46);
    *(this + 46) = *(a2 + 46);
    *(a2 + 46) = v4;
    LOBYTE(v4) = *(this + 47);
    *(this + 47) = *(a2 + 47);
    *(a2 + 47) = v4;
    LOBYTE(v4) = *(this + 48);
    *(this + 48) = *(a2 + 48);
    *(a2 + 48) = v4;
    LODWORD(v4) = *(this + 56);
    *(this + 56) = *(a2 + 14);
    *(a2 + 14) = v4;
    LODWORD(v4) = *(this + 52);
    *(this + 52) = *(a2 + 13);
    *(a2 + 13) = v4;
  }

  return this;
}

double CoreNavigation::CLP::LogEntry::PrivateData::GnssAvailabilityPrediction::SharedCtor(CoreNavigation::CLP::LogEntry::PrivateData::GnssAvailabilityPrediction *this)
{
  result = 0.0;
  *(this + 24) = 0u;
  *(this + 8) = 0u;
  return result;
}

CoreNavigation::CLP::LogEntry::PrivateData::GnssAvailabilityPrediction *CoreNavigation::CLP::LogEntry::PrivateData::GnssAvailabilityPrediction::GnssAvailabilityPrediction(CoreNavigation::CLP::LogEntry::PrivateData::GnssAvailabilityPrediction *this, const CoreNavigation::CLP::LogEntry::PrivateData::GnssAvailabilityPrediction *a2)
{
  *this = &unk_1F4CDB6E8;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  CoreNavigation::CLP::LogEntry::PrivateData::GnssAvailabilityPrediction::MergeFrom(this, a2);
  return this;
}

void CoreNavigation::CLP::LogEntry::PrivateData::GnssAvailabilityPrediction::MergeFrom(CoreNavigation::CLP::LogEntry::PrivateData::GnssAvailabilityPrediction *this, const CoreNavigation::CLP::LogEntry::PrivateData::GnssAvailabilityPrediction *a2)
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
      *(this + 9) |= 1u;
      v5 = *(this + 1);
      if (!v5)
      {
        operator new();
      }

      v6 = *(a2 + 1);
      if (!v6)
      {
        CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(this);
        v6 = *(CoreNavigation::CLP::LogEntry::PrivateData::GnssAvailabilityPrediction::default_instance_ + 8);
      }

      CoreNavigation::CLP::LogEntry::PrivateData::TimeStamp::MergeFrom(v5, v6);
      v4 = *(a2 + 9);
    }

    if ((v4 & 2) != 0)
    {
      v7 = *(a2 + 6);
      if (v7 >= 4)
      {
        __assert_rtn("set_state", "CoreNavigationCLPPrivateDataShared.pb.h", 25967, "::CoreNavigation::CLP::LogEntry::PrivateData::GnssAvailabilityPrediction_GnssAvailability_IsValid(value)");
      }

      *(this + 9) |= 2u;
      *(this + 6) = v7;
      v4 = *(a2 + 9);
    }

    if ((v4 & 4) != 0)
    {
      v8 = *(a2 + 2);
      *(this + 9) |= 4u;
      *(this + 2) = v8;
      v4 = *(a2 + 9);
    }

    if ((v4 & 8) != 0)
    {
      v9 = *(a2 + 7);
      if (v9 >= 4)
      {
        __assert_rtn("set_measurement_source", "CoreNavigationCLPPrivateDataShared.pb.h", 26012, "::CoreNavigation::CLP::LogEntry::PrivateData::GnssAvailabilityPrediction_MeasurementSource_IsValid(value)");
      }

      *(this + 9) |= 8u;
      *(this + 7) = v9;
    }
  }
}

void sub_1D0CF1B60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::GnssAvailabilityPrediction::Clear(uint64_t this)
{
  if (*(this + 36))
  {
    if (*(this + 36))
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

  *(this + 36) = 0;
  return this;
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::GnssAvailabilityPrediction::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 36);
  if (v6)
  {
    v7 = *(this + 8);
    if (!v7)
    {
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(this);
      v7 = *(CoreNavigation::CLP::LogEntry::PrivateData::GnssAvailabilityPrediction::default_instance_ + 8);
    }

    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(1, v7, a2, a4);
    v6 = *(v5 + 36);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

LABEL_10:
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(3, a2, *(v5 + 16), a3);
      if ((*(v5 + 36) & 8) == 0)
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

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(2, *(v5 + 24), a2, a4);
  v6 = *(v5 + 36);
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
  v8 = *(v5 + 28);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(4, v8, a2, a4);
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::GnssAvailabilityPrediction::ByteSize(CoreNavigation::CLP::LogEntry::PrivateData::GnssAvailabilityPrediction *this, unsigned int a2)
{
  LOBYTE(v3) = *(this + 36);
  if (!v3)
  {
    v4 = 0;
    goto LABEL_31;
  }

  if (*(this + 36))
  {
    v5 = *(this + 1);
    if (!v5)
    {
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(this);
      v5 = *(CoreNavigation::CLP::LogEntry::PrivateData::GnssAvailabilityPrediction::default_instance_ + 8);
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
    LODWORD(v4) = v6 + 2;
    v3 = *(this + 9);
    if ((v3 & 2) == 0)
    {
      goto LABEL_21;
    }
  }

  else
  {
    LODWORD(v4) = 0;
    if ((*(this + 36) & 2) == 0)
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
    v3 = *(this + 9);
  }

  else
  {
    v9 = 2;
  }

  LODWORD(v4) = v9 + v4;
LABEL_21:
  if ((v3 & 4) != 0)
  {
    v4 = (v4 + 9);
  }

  else
  {
    v4 = v4;
  }

  if ((v3 & 8) != 0)
  {
    v10 = *(this + 7);
    if ((v10 & 0x80000000) != 0)
    {
      v11 = 11;
    }

    else if (v10 >= 0x80)
    {
      v11 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v10) + 1;
    }

    else
    {
      v11 = 2;
    }

    v4 = (v11 + v4);
  }

LABEL_31:
  *(this + 8) = v4;
  return v4;
}

void CoreNavigation::CLP::LogEntry::PrivateData::GnssAvailabilityPrediction::CheckTypeAndMergeFrom(CoreNavigation::CLP::LogEntry::PrivateData::GnssAvailabilityPrediction *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  CoreNavigation::CLP::LogEntry::PrivateData::GnssAvailabilityPrediction::MergeFrom(this, lpsrc);
}

void CoreNavigation::CLP::LogEntry::PrivateData::GnssAvailabilityPrediction::CopyFrom(CoreNavigation::CLP::LogEntry::PrivateData::GnssAvailabilityPrediction *this, const CoreNavigation::CLP::LogEntry::PrivateData::GnssAvailabilityPrediction *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    CoreNavigation::CLP::LogEntry::PrivateData::GnssAvailabilityPrediction::MergeFrom(this, a2);
  }
}

double CoreNavigation::CLP::LogEntry::PrivateData::GnssAvailabilityPrediction::Swap(CoreNavigation::CLP::LogEntry::PrivateData::GnssAvailabilityPrediction *this, CoreNavigation::CLP::LogEntry::PrivateData::GnssAvailabilityPrediction *a2)
{
  if (a2 != this)
  {
    v2 = *(this + 1);
    *(this + 1) = *(a2 + 1);
    *(a2 + 1) = v2;
    LODWORD(v2) = *(this + 6);
    *(this + 6) = *(a2 + 6);
    *(a2 + 6) = v2;
    result = *(this + 2);
    *(this + 2) = *(a2 + 2);
    *(a2 + 2) = result;
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

void *CoreNavigation::CLP::LogEntry::PrivateData::GEOLocationCoordinate2D::SharedCtor(void *this)
{
  this[1] = 0;
  this[2] = 0;
  this[3] = 0;
  return this;
}

CoreNavigation::CLP::LogEntry::PrivateData::GEOLocationCoordinate2D *CoreNavigation::CLP::LogEntry::PrivateData::GEOLocationCoordinate2D::GEOLocationCoordinate2D(CoreNavigation::CLP::LogEntry::PrivateData::GEOLocationCoordinate2D *this, const CoreNavigation::CLP::LogEntry::PrivateData::GEOLocationCoordinate2D *a2)
{
  *this = &unk_1F4CDB760;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 3) = 0;
  CoreNavigation::CLP::LogEntry::PrivateData::GEOLocationCoordinate2D::MergeFrom(this, a2);
  return this;
}

double CoreNavigation::CLP::LogEntry::PrivateData::GEOLocationCoordinate2D::MergeFrom(CoreNavigation::CLP::LogEntry::PrivateData::GEOLocationCoordinate2D *this, const CoreNavigation::CLP::LogEntry::PrivateData::GEOLocationCoordinate2D *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v6);
  }

  LOBYTE(v5) = *(a2 + 28);
  if (v5)
  {
    if (*(a2 + 28))
    {
      result = *(a2 + 1);
      *(this + 7) |= 1u;
      *(this + 1) = result;
      v5 = *(a2 + 7);
    }

    if ((v5 & 2) != 0)
    {
      result = *(a2 + 2);
      *(this + 7) |= 2u;
      *(this + 2) = result;
    }
  }

  return result;
}

void sub_1D0CF20C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void CoreNavigation::CLP::LogEntry::PrivateData::GEOLocationCoordinate2D::~GEOLocationCoordinate2D(CoreNavigation::CLP::LogEntry::PrivateData::GEOLocationCoordinate2D *this)
{
  *this = &unk_1F4CDB760;
  CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  CoreNavigation::CLP::LogEntry::PrivateData::GEOLocationCoordinate2D::~GEOLocationCoordinate2D(this);

  JUMPOUT(0x1D387ECA0);
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::GEOLocationCoordinate2D::Clear(uint64_t this)
{
  if (*(this + 28))
  {
    *(this + 8) = 0;
    *(this + 16) = 0;
  }

  *(this + 28) = 0;
  return this;
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::GEOLocationCoordinate2D::MergePartialFromCodedStream(CoreNavigation::CLP::LogEntry::PrivateData::GEOLocationCoordinate2D *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
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

        if (v7 != 1)
        {
          goto LABEL_14;
        }

LABEL_17:
        v10 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, &v10) & 1) == 0)
        {
          return 0;
        }

        *(this + 2) = v10;
        *(this + 7) |= 2u;
        if (*(a2 + 1) == *(a2 + 2) && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
        {
          *(a2 + 8) = 0;
          result = 1;
          *(a2 + 36) = 1;
          return result;
        }
      }

      if (TagFallback >> 3 != 1 || v7 != 1)
      {
        break;
      }

      v10 = 0;
      if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, &v10) & 1) == 0)
      {
        return 0;
      }

      *(this + 1) = v10;
      *(this + 7) |= 1u;
      v8 = *(a2 + 1);
      if (v8 < *(a2 + 2) && *v8 == 17)
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

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::GEOLocationCoordinate2D::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3)
{
  v4 = this;
  v5 = *(this + 28);
  if (v5)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(1, a2, *(this + 8), a3);
    v5 = *(v4 + 28);
  }

  if ((v5 & 2) != 0)
  {
    v6 = *(v4 + 16);

    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(2, a2, v6, a3);
  }

  return this;
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::GEOLocationCoordinate2D::ByteSize(CoreNavigation::CLP::LogEntry::PrivateData::GEOLocationCoordinate2D *this)
{
  v1 = *(this + 28);
  if (*(this + 28))
  {
    v2 = ((v1 << 31) >> 31) & 9;
    if ((v1 & 2) != 0)
    {
      v1 = v2 + 9;
    }

    else
    {
      v1 = v2;
    }
  }

  *(this + 6) = v1;
  return v1;
}

double CoreNavigation::CLP::LogEntry::PrivateData::GEOLocationCoordinate2D::CheckTypeAndMergeFrom(CoreNavigation::CLP::LogEntry::PrivateData::GEOLocationCoordinate2D *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  return CoreNavigation::CLP::LogEntry::PrivateData::GEOLocationCoordinate2D::MergeFrom(this, lpsrc);
}

double CoreNavigation::CLP::LogEntry::PrivateData::GEOLocationCoordinate2D::CopyFrom(CoreNavigation::CLP::LogEntry::PrivateData::GEOLocationCoordinate2D *this, const CoreNavigation::CLP::LogEntry::PrivateData::GEOLocationCoordinate2D *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    return CoreNavigation::CLP::LogEntry::PrivateData::GEOLocationCoordinate2D::MergeFrom(this, a2);
  }

  return result;
}

double CoreNavigation::CLP::LogEntry::PrivateData::GEOLocationCoordinate2D::Swap(CoreNavigation::CLP::LogEntry::PrivateData::GEOLocationCoordinate2D *this, CoreNavigation::CLP::LogEntry::PrivateData::GEOLocationCoordinate2D *a2)
{
  if (a2 != this)
  {
    v2 = *(this + 1);
    *(this + 1) = *(a2 + 1);
    *(a2 + 1) = v2;
    result = *(this + 2);
    *(this + 2) = *(a2 + 2);
    *(a2 + 2) = result;
    v4 = *(this + 7);
    *(this + 7) = *(a2 + 7);
    *(a2 + 7) = v4;
    v5 = *(this + 6);
    *(this + 6) = *(a2 + 6);
    *(a2 + 6) = v5;
  }

  return result;
}

double CoreNavigation::CLP::LogEntry::PrivateData::GEOMapFeatureBuildingSection::SharedCtor(CoreNavigation::CLP::LogEntry::PrivateData::GEOMapFeatureBuildingSection *this)
{
  *(this + 21) = 0;
  *(this + 22) = 0;
  result = 0.0;
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  *(this + 4) = 0u;
  *(this + 80) = 0;
  return result;
}

CoreNavigation::CLP::LogEntry::PrivateData::GEOMapFeatureBuildingSection *CoreNavigation::CLP::LogEntry::PrivateData::GEOMapFeatureBuildingSection::GEOMapFeatureBuildingSection(CoreNavigation::CLP::LogEntry::PrivateData::GEOMapFeatureBuildingSection *this, const CoreNavigation::CLP::LogEntry::PrivateData::GEOMapFeatureBuildingSection *a2)
{
  *this = &unk_1F4CDB7D8;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 6) = 0;
  *(this + 21) = 0;
  *(this + 22) = 0;
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  *(this + 4) = 0u;
  *(this + 80) = 0;
  CoreNavigation::CLP::LogEntry::PrivateData::GEOMapFeatureBuildingSection::MergeFrom(this, a2);
  return this;
}

void sub_1D0CF2628(_Unwind_Exception *a1)
{
  sub_1D0B8CD0C(v2);
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(v1);
  _Unwind_Resume(a1);
}

double CoreNavigation::CLP::LogEntry::PrivateData::GEOMapFeatureBuildingSection::MergeFrom(CoreNavigation::CLP::LogEntry::PrivateData::GEOMapFeatureBuildingSection *this, const CoreNavigation::CLP::LogEntry::PrivateData::GEOMapFeatureBuildingSection *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v7);
  }

  sub_1D0CFF374((this + 8), a2 + 8);
  v5 = *(a2 + 22);
  if ((v5 & 0x1FE) != 0)
  {
    if ((v5 & 2) != 0)
    {
      result = *(a2 + 4);
      *(this + 22) |= 2u;
      *(this + 4) = result;
      v5 = *(a2 + 22);
      if ((v5 & 4) == 0)
      {
LABEL_6:
        if ((v5 & 8) == 0)
        {
          goto LABEL_7;
        }

        goto LABEL_15;
      }
    }

    else if ((v5 & 4) == 0)
    {
      goto LABEL_6;
    }

    result = *(a2 + 5);
    *(this + 22) |= 4u;
    *(this + 5) = result;
    v5 = *(a2 + 22);
    if ((v5 & 8) == 0)
    {
LABEL_7:
      if ((v5 & 0x10) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_16;
    }

LABEL_15:
    v6 = *(a2 + 80);
    *(this + 22) |= 8u;
    *(this + 80) = v6;
    v5 = *(a2 + 22);
    if ((v5 & 0x10) == 0)
    {
LABEL_8:
      if ((v5 & 0x20) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_17;
    }

LABEL_16:
    result = *(a2 + 6);
    *(this + 22) |= 0x10u;
    *(this + 6) = result;
    v5 = *(a2 + 22);
    if ((v5 & 0x20) == 0)
    {
LABEL_9:
      if ((v5 & 0x40) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_18;
    }

LABEL_17:
    result = *(a2 + 7);
    *(this + 22) |= 0x20u;
    *(this + 7) = result;
    v5 = *(a2 + 22);
    if ((v5 & 0x40) == 0)
    {
LABEL_10:
      if ((v5 & 0x80) == 0)
      {
        return result;
      }

      goto LABEL_11;
    }

LABEL_18:
    result = *(a2 + 8);
    *(this + 22) |= 0x40u;
    *(this + 8) = result;
    if ((*(a2 + 22) & 0x80) == 0)
    {
      return result;
    }

LABEL_11:
    result = *(a2 + 9);
    *(this + 22) |= 0x80u;
    *(this + 9) = result;
  }

  return result;
}

void sub_1D0CF27AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void CoreNavigation::CLP::LogEntry::PrivateData::GEOMapFeatureBuildingSection::~GEOMapFeatureBuildingSection(CoreNavigation::CLP::LogEntry::PrivateData::GEOMapFeatureBuildingSection *this)
{
  *this = &unk_1F4CDB7D8;
  CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(this);
  sub_1D0B8CD0C(this + 1);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  CoreNavigation::CLP::LogEntry::PrivateData::GEOMapFeatureBuildingSection::~GEOMapFeatureBuildingSection(this);

  JUMPOUT(0x1D387ECA0);
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::GEOMapFeatureBuildingSection::Clear(CoreNavigation::CLP::LogEntry::PrivateData::GEOMapFeatureBuildingSection *this)
{
  if ((*(this + 44) & 0x1FE) != 0)
  {
    *(this + 80) = 0;
    *(this + 3) = 0u;
    *(this + 4) = 0u;
    *(this + 2) = 0u;
  }

  result = sub_1D0C77384(this + 8);
  *(this + 22) = 0;
  return result;
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::GEOMapFeatureBuildingSection::MergePartialFromCodedStream(CoreNavigation::CLP::LogEntry::PrivateData::GEOMapFeatureBuildingSection *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
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
        if (TagFallback >> 3 <= 4)
        {
          break;
        }

        if (TagFallback >> 3 <= 6)
        {
          if (v7 == 5)
          {
            if (v8 == 1)
            {
              goto LABEL_68;
            }
          }

          else if (v7 == 6 && v8 == 1)
          {
            goto LABEL_72;
          }

          goto LABEL_60;
        }

        if (v7 == 7)
        {
          if (v8 != 1)
          {
            goto LABEL_60;
          }

LABEL_76:
          *v32 = 0;
          if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v32) & 1) == 0)
          {
            return 0;
          }

          *(this + 8) = *v32;
          *(this + 22) |= 0x40u;
          v31 = *(a2 + 1);
          if (v31 < *(a2 + 2) && *v31 == 65)
          {
            *(a2 + 1) = v31 + 1;
            goto LABEL_80;
          }
        }

        else
        {
          if (v7 != 8 || v8 != 1)
          {
            goto LABEL_60;
          }

LABEL_80:
          *v32 = 0;
          if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v32) & 1) == 0)
          {
            return 0;
          }

          *(this + 9) = *v32;
          *(this + 22) |= 0x80u;
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

      if (v7 == 1)
      {
        if (v8 == 2)
        {
          while (1)
          {
            v12 = *(this + 5);
            v13 = *(this + 4);
            if (v13 >= v12)
            {
              if (v12 == *(this + 6))
              {
                wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 8));
                v12 = *(this + 5);
              }

              *(this + 5) = v12 + 1;
              operator new();
            }

            v14 = *(this + 1);
            *(this + 4) = v13 + 1;
            v15 = *(v14 + 8 * v13);
            v32[0] = 0;
            v16 = *(a2 + 1);
            if (v16 >= *(a2 + 2) || *v16 < 0)
            {
              if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v32))
              {
                return 0;
              }
            }

            else
            {
              v32[0] = *v16;
              *(a2 + 1) = v16 + 1;
            }

            v17 = *(a2 + 14);
            v18 = *(a2 + 15);
            *(a2 + 14) = v17 + 1;
            if (v17 >= v18)
            {
              return 0;
            }

            wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
            if (!CoreNavigation::CLP::LogEntry::PrivateData::GEOLocationCoordinate2D::MergePartialFromCodedStream(v15, a2, v19) || *(a2 + 36) != 1)
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
            if (v23 >= *(a2 + 2))
            {
              goto LABEL_1;
            }

            v24 = *v23;
            if (v24 != 10)
            {
              if (v24 != 17)
              {
                goto LABEL_1;
              }

              *(a2 + 1) = v23 + 1;
              goto LABEL_11;
            }

            *(a2 + 1) = v23 + 1;
          }
        }

        goto LABEL_60;
      }

      if (v7 != 2 || v8 != 1)
      {
        goto LABEL_60;
      }

LABEL_11:
      *v32 = 0;
      if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v32) & 1) == 0)
      {
        return 0;
      }

      *(this + 4) = *v32;
      *(this + 22) |= 2u;
      v9 = *(a2 + 1);
      if (v9 < *(a2 + 2) && *v9 == 25)
      {
        *(a2 + 1) = v9 + 1;
LABEL_52:
        *v32 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v32) & 1) == 0)
        {
          return 0;
        }

        *(this + 5) = *v32;
        *(this + 22) |= 4u;
        v25 = *(a2 + 1);
        v10 = *(a2 + 2);
        if (v25 < v10 && *v25 == 32)
        {
          v11 = v25 + 1;
          *(a2 + 1) = v11;
LABEL_56:
          v32[0] = 0;
          if (v11 >= v10 || (v26 = *v11, (v26 & 0x80000000) != 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v32);
            if (!result)
            {
              return result;
            }

            v26 = v32[0];
            v27 = *(a2 + 1);
            v10 = *(a2 + 2);
          }

          else
          {
            v27 = v11 + 1;
            *(a2 + 1) = v27;
          }

          *(this + 80) = v26 != 0;
          *(this + 22) |= 8u;
          if (v27 < v10 && *v27 == 41)
          {
            *(a2 + 1) = v27 + 1;
LABEL_68:
            *v32 = 0;
            if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v32) & 1) == 0)
            {
              return 0;
            }

            *(this + 6) = *v32;
            *(this + 22) |= 0x10u;
            v29 = *(a2 + 1);
            if (v29 < *(a2 + 2) && *v29 == 49)
            {
              *(a2 + 1) = v29 + 1;
LABEL_72:
              *v32 = 0;
              if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v32) & 1) == 0)
              {
                return 0;
              }

              *(this + 7) = *v32;
              *(this + 22) |= 0x20u;
              v30 = *(a2 + 1);
              if (v30 < *(a2 + 2) && *v30 == 57)
              {
                *(a2 + 1) = v30 + 1;
                goto LABEL_76;
              }
            }
          }
        }
      }
    }

    if (v7 == 3)
    {
      if (v8 == 1)
      {
        goto LABEL_52;
      }
    }

    else if (v7 == 4 && (TagFallback & 7) == 0)
    {
      v11 = *(a2 + 1);
      v10 = *(a2 + 2);
      goto LABEL_56;
    }

LABEL_60:
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

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::GEOMapFeatureBuildingSection::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
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

  v7 = *(v5 + 88);
  if ((v7 & 2) != 0)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(2, a2, *(v5 + 32), a3);
    v7 = *(v5 + 88);
    if ((v7 & 4) == 0)
    {
LABEL_6:
      if ((v7 & 8) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_14;
    }
  }

  else if ((v7 & 4) == 0)
  {
    goto LABEL_6;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(3, a2, *(v5 + 40), a3);
  v7 = *(v5 + 88);
  if ((v7 & 8) == 0)
  {
LABEL_7:
    if ((v7 & 0x10) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_15;
  }

LABEL_14:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(4, *(v5 + 80), a2, a4);
  v7 = *(v5 + 88);
  if ((v7 & 0x10) == 0)
  {
LABEL_8:
    if ((v7 & 0x20) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_16;
  }

LABEL_15:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(5, a2, *(v5 + 48), a3);
  v7 = *(v5 + 88);
  if ((v7 & 0x20) == 0)
  {
LABEL_9:
    if ((v7 & 0x40) == 0)
    {
      goto LABEL_10;
    }

LABEL_17:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(7, a2, *(v5 + 64), a3);
    if ((*(v5 + 88) & 0x80) == 0)
    {
      return this;
    }

    goto LABEL_18;
  }

LABEL_16:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(6, a2, *(v5 + 56), a3);
  v7 = *(v5 + 88);
  if ((v7 & 0x40) != 0)
  {
    goto LABEL_17;
  }

LABEL_10:
  if ((v7 & 0x80) == 0)
  {
    return this;
  }

LABEL_18:
  v8 = *(v5 + 72);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(8, a2, v8, a3);
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::GEOMapFeatureBuildingSection::ByteSize(CoreNavigation::CLP::LogEntry::PrivateData::GEOMapFeatureBuildingSection *this)
{
  v1 = *(this + 22);
  if ((v1 & 0x1FE) != 0)
  {
    v2 = ((v1 << 30) >> 31) & 9;
    if ((v1 & 4) != 0)
    {
      v2 += 9;
    }

    v3 = v2 + ((v1 >> 2) & 2);
    if ((v1 & 0x10) != 0)
    {
      v3 += 9;
    }

    if ((v1 & 0x20) != 0)
    {
      v3 += 9;
    }

    if ((v1 & 0x40) != 0)
    {
      v3 += 9;
    }

    if ((v1 & 0x80) != 0)
    {
      v4 = v3 + 9;
    }

    else
    {
      v4 = v3;
    }
  }

  else
  {
    v4 = 0;
  }

  v5 = *(this + 4);
  v6 = (v5 + v4);
  if (v5 >= 1)
  {
    v7 = *(this + 1);
    do
    {
      v8 = *(*v7 + 28);
      if (*(*v7 + 28))
      {
        if ((v8 & 2) != 0)
        {
          v8 = ((v8 << 31 >> 31) & 9) + 9;
        }

        else
        {
          v8 = (v8 << 31 >> 31) & 9;
        }
      }

      *(*v7 + 24) = v8;
      v6 = (v6 + v8 + 1);
      v7 += 8;
      --v5;
    }

    while (v5);
  }

  *(this + 21) = v6;
  return v6;
}

double CoreNavigation::CLP::LogEntry::PrivateData::GEOMapFeatureBuildingSection::CheckTypeAndMergeFrom(CoreNavigation::CLP::LogEntry::PrivateData::GEOMapFeatureBuildingSection *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  return CoreNavigation::CLP::LogEntry::PrivateData::GEOMapFeatureBuildingSection::MergeFrom(this, lpsrc);
}

double CoreNavigation::CLP::LogEntry::PrivateData::GEOMapFeatureBuildingSection::CopyFrom(CoreNavigation::CLP::LogEntry::PrivateData::GEOMapFeatureBuildingSection *this, const CoreNavigation::CLP::LogEntry::PrivateData::GEOMapFeatureBuildingSection *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    return CoreNavigation::CLP::LogEntry::PrivateData::GEOMapFeatureBuildingSection::MergeFrom(this, a2);
  }

  return result;
}

double CoreNavigation::CLP::LogEntry::PrivateData::GEOMapFeatureBuildingSection::Swap(CoreNavigation::CLP::LogEntry::PrivateData::GEOMapFeatureBuildingSection *this, CoreNavigation::CLP::LogEntry::PrivateData::GEOMapFeatureBuildingSection *a2)
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
    v6 = *(this + 80);
    *(this + 80) = *(a2 + 80);
    *(a2 + 80) = v6;
    v7 = *(this + 6);
    *(this + 6) = *(a2 + 6);
    *(a2 + 6) = v7;
    v8 = *(this + 7);
    *(this + 7) = *(a2 + 7);
    *(a2 + 7) = v8;
    v9 = *(this + 8);
    *(this + 8) = *(a2 + 8);
    *(a2 + 8) = v9;
    result = *(this + 9);
    *(this + 9) = *(a2 + 9);
    *(a2 + 9) = result;
    v11 = *(this + 22);
    *(this + 22) = *(a2 + 22);
    *(a2 + 22) = v11;
    v12 = *(this + 21);
    *(this + 21) = *(a2 + 21);
    *(a2 + 21) = v12;
  }

  return result;
}

void *CoreNavigation::CLP::LogEntry::PrivateData::GEOMapFeatureBuilding::SharedCtor(void *this)
{
  this[4] = 0;
  this[5] = 0;
  this[6] = 0;
  return this;
}

CoreNavigation::CLP::LogEntry::PrivateData::GEOMapFeatureBuilding *CoreNavigation::CLP::LogEntry::PrivateData::GEOMapFeatureBuilding::GEOMapFeatureBuilding(CoreNavigation::CLP::LogEntry::PrivateData::GEOMapFeatureBuilding *this, const CoreNavigation::CLP::LogEntry::PrivateData::GEOMapFeatureBuilding *a2)
{
  *(this + 1) = 0;
  *this = &unk_1F4CDB850;
  *(this + 2) = 0;
  *(this + 6) = 0;
  *(this + 5) = 0;
  *(this + 6) = 0;
  *(this + 4) = 0;
  CoreNavigation::CLP::LogEntry::PrivateData::GEOMapFeatureBuilding::MergeFrom(this, a2);
  return this;
}

void sub_1D0CF32BC(_Unwind_Exception *a1)
{
  sub_1D0B8CD0C(v2);
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(v1);
  _Unwind_Resume(a1);
}

void CoreNavigation::CLP::LogEntry::PrivateData::GEOMapFeatureBuilding::MergeFrom(CoreNavigation::CLP::LogEntry::PrivateData::GEOMapFeatureBuilding *this, const CoreNavigation::CLP::LogEntry::PrivateData::GEOMapFeatureBuilding *a2)
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
        wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v13);
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
      CoreNavigation::CLP::LogEntry::PrivateData::GEOMapFeatureBuildingSection::MergeFrom(*(v9 + 8 * v8), v6);
      ++v5;
      v4 = *(a2 + 4);
    }

    while (v5 < v4);
  }

  v10 = *(a2 + 13);
  if ((v10 & 0x1FE) != 0)
  {
    if ((v10 & 2) != 0)
    {
      v11 = *(a2 + 4);
      *(this + 13) |= 2u;
      *(this + 4) = v11;
      v10 = *(a2 + 13);
    }

    if ((v10 & 4) != 0)
    {
      v12 = *(a2 + 5);
      *(this + 13) |= 4u;
      *(this + 5) = v12;
    }
  }
}

void sub_1D0CF34E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void CoreNavigation::CLP::LogEntry::PrivateData::GEOMapFeatureBuilding::~GEOMapFeatureBuilding(CoreNavigation::CLP::LogEntry::PrivateData::GEOMapFeatureBuilding *this)
{
  *this = &unk_1F4CDB850;
  CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(this);
  sub_1D0B8CD0C(this + 1);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  CoreNavigation::CLP::LogEntry::PrivateData::GEOMapFeatureBuilding::~GEOMapFeatureBuilding(this);

  JUMPOUT(0x1D387ECA0);
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::GEOMapFeatureBuilding::Clear(uint64_t this)
{
  v1 = this;
  if ((*(this + 52) & 0x1FE) != 0)
  {
    *(this + 32) = 0;
    *(this + 40) = 0;
  }

  if (*(this + 16) >= 1)
  {
    v2 = 0;
    do
    {
      v3 = *(*(v1 + 8) + 8 * v2);
      this = (*(*v3 + 32))(v3);
      ++v2;
    }

    while (v2 < *(v1 + 16));
  }

  *(v1 + 16) = 0;
  *(v1 + 52) = 0;
  return this;
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::GEOMapFeatureBuilding::MergePartialFromCodedStream(CoreNavigation::CLP::LogEntry::PrivateData::GEOMapFeatureBuilding *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
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

        if ((TagFallback & 7) != 0)
        {
          goto LABEL_36;
        }

        v26 = *(a2 + 1);
        v20 = *(a2 + 2);
LABEL_45:
        if (v26 >= v20 || (v28 = *v26, v28 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 5);
          if (!result)
          {
            return result;
          }

          v29 = *(a2 + 1);
          v20 = *(a2 + 2);
        }

        else
        {
          *(this + 5) = v28;
          v29 = v26 + 1;
          *(a2 + 1) = v29;
        }

        *(this + 13) |= 4u;
        if (v29 == v20 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
        {
          *(a2 + 8) = 0;
          result = 1;
          *(a2 + 36) = 1;
          return result;
        }
      }

      if (v7 != 2)
      {
        break;
      }

      if ((TagFallback & 7) != 0)
      {
        goto LABEL_36;
      }

      v23 = *(a2 + 1);
      v20 = *(a2 + 2);
LABEL_32:
      if (v23 >= v20 || (v24 = *v23, v24 < 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 4);
        if (!result)
        {
          return result;
        }

        v25 = *(a2 + 1);
        v20 = *(a2 + 2);
      }

      else
      {
        *(this + 4) = v24;
        v25 = v23 + 1;
        *(a2 + 1) = v25;
      }

      *(this + 13) |= 2u;
      if (v25 < v20 && *v25 == 24)
      {
        v26 = v25 + 1;
        *(a2 + 1) = v26;
        goto LABEL_45;
      }
    }

    if (v7 == 1 && v8 == 2)
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
        v30 = 0;
        v13 = *(a2 + 1);
        if (v13 >= *(a2 + 2) || *v13 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v30))
          {
            return 0;
          }
        }

        else
        {
          v30 = *v13;
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
        if (!CoreNavigation::CLP::LogEntry::PrivateData::GEOMapFeatureBuildingSection::MergePartialFromCodedStream(v12, a2, v16) || *(a2 + 36) != 1)
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
          goto LABEL_1;
        }

        v22 = *v21;
        if (v22 != 10)
        {
          if (v22 != 16)
          {
            goto LABEL_1;
          }

          v23 = (v21 + 1);
          *(a2 + 1) = v23;
          goto LABEL_32;
        }

        *(a2 + 1) = v21 + 1;
      }
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
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::GEOMapFeatureBuilding::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
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

  v7 = *(v5 + 52);
  if ((v7 & 2) != 0)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(2, *(v5 + 32), a2, a4);
    v7 = *(v5 + 52);
  }

  if ((v7 & 4) != 0)
  {
    v8 = *(v5 + 40);

    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(3, v8, a2, a4);
  }

  return this;
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::GEOMapFeatureBuilding::ByteSize(CoreNavigation::CLP::LogEntry::PrivateData::GEOMapFeatureBuilding *this, unint64_t a2)
{
  v3 = *(this + 13);
  if ((v3 & 0x1FE) == 0)
  {
    v4 = 0;
    goto LABEL_8;
  }

  if ((v3 & 2) != 0)
  {
    v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 4)) + 1;
    if ((*(this + 13) & 4) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v4 = 0;
  if ((v3 & 4) != 0)
  {
LABEL_7:
    v4 += wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 5)) + 1;
  }

LABEL_8:
  v5 = *(this + 4);
  v6 = (v5 + v4);
  if (v5 >= 1)
  {
    v7 = 0;
    do
    {
      v8 = CoreNavigation::CLP::LogEntry::PrivateData::GEOMapFeatureBuildingSection::ByteSize(*(*(this + 1) + 8 * v7));
      v9 = v8;
      if (v8 >= 0x80)
      {
        v10 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v8);
      }

      else
      {
        v10 = 1;
      }

      v6 = (v9 + v6 + v10);
      ++v7;
    }

    while (v7 < *(this + 4));
  }

  *(this + 12) = v6;
  return v6;
}

void CoreNavigation::CLP::LogEntry::PrivateData::GEOMapFeatureBuilding::CheckTypeAndMergeFrom(CoreNavigation::CLP::LogEntry::PrivateData::GEOMapFeatureBuilding *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  CoreNavigation::CLP::LogEntry::PrivateData::GEOMapFeatureBuilding::MergeFrom(this, lpsrc);
}

void CoreNavigation::CLP::LogEntry::PrivateData::GEOMapFeatureBuilding::CopyFrom(CoreNavigation::CLP::LogEntry::PrivateData::GEOMapFeatureBuilding *this, const CoreNavigation::CLP::LogEntry::PrivateData::GEOMapFeatureBuilding *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    CoreNavigation::CLP::LogEntry::PrivateData::GEOMapFeatureBuilding::MergeFrom(this, a2);
  }
}

CoreNavigation::CLP::LogEntry::PrivateData::GEOMapFeatureBuilding *CoreNavigation::CLP::LogEntry::PrivateData::GEOMapFeatureBuilding::Swap(CoreNavigation::CLP::LogEntry::PrivateData::GEOMapFeatureBuilding *this, CoreNavigation::CLP::LogEntry::PrivateData::GEOMapFeatureBuilding *a2)
{
  if (a2 != this)
  {
    v3 = this;
    this = wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Swap();
    v4 = *(v3 + 4);
    *(v3 + 4) = *(a2 + 4);
    *(a2 + 4) = v4;
    v5 = *(v3 + 5);
    *(v3 + 5) = *(a2 + 5);
    *(a2 + 5) = v5;
    LODWORD(v5) = *(v3 + 13);
    *(v3 + 13) = *(a2 + 13);
    *(a2 + 13) = v5;
    LODWORD(v5) = *(v3 + 12);
    *(v3 + 12) = *(a2 + 12);
    *(a2 + 12) = v5;
  }

  return this;
}

void *CoreNavigation::CLP::LogEntry::PrivateData::GEOMapBuildingData::SharedCtor(void *this)
{
  this[1] = 0;
  this[7] = 0;
  this[8] = 0;
  return this;
}

CoreNavigation::CLP::LogEntry::PrivateData::GEOMapBuildingData *CoreNavigation::CLP::LogEntry::PrivateData::GEOMapBuildingData::GEOMapBuildingData(CoreNavigation::CLP::LogEntry::PrivateData::GEOMapBuildingData *this, const CoreNavigation::CLP::LogEntry::PrivateData::GEOMapBuildingData *a2)
{
  *(this + 2) = 0;
  *(this + 40) = 0u;
  *this = &unk_1F4CDB8C8;
  *(this + 1) = 0;
  *(this + 3) = 0;
  *(this + 8) = 0;
  *(this + 56) = 0u;
  CoreNavigation::CLP::LogEntry::PrivateData::GEOMapBuildingData::MergeFrom(this, a2);
  return this;
}

void sub_1D0CF3D9C(_Unwind_Exception *a1)
{
  v4 = v3;
  if (*v4)
  {
    MEMORY[0x1D387EC80](*v4, 0x1000C8000313F17);
  }

  sub_1D0B8CD0C(v2);
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(v1);
  _Unwind_Resume(a1);
}

double CoreNavigation::CLP::LogEntry::PrivateData::GEOMapBuildingData::MergeFrom(CoreNavigation::CLP::LogEntry::PrivateData::GEOMapBuildingData *this, const CoreNavigation::CLP::LogEntry::PrivateData::GEOMapBuildingData *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v18);
  }

  v4 = wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 16));
  LODWORD(v6) = *(a2 + 6);
  if (v6 >= 1)
  {
    v7 = 0;
    do
    {
      if (v7 >= v6)
      {
        wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
        wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
        wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
        wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v18);
      }

      v8 = *(*(a2 + 2) + 8 * v7);
      v9 = *(this + 7);
      v10 = *(this + 6);
      if (v10 >= v9)
      {
        if (v9 == *(this + 8))
        {
          wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 16));
          v9 = *(this + 7);
        }

        *(this + 7) = v9 + 1;
        operator new();
      }

      v11 = *(this + 2);
      *(this + 6) = v10 + 1;
      CoreNavigation::CLP::LogEntry::PrivateData::GEOMapFeatureBuilding::MergeFrom(*(v11 + 8 * v10), v8);
      ++v7;
      v6 = *(a2 + 6);
    }

    while (v7 < v6);
  }

  v12 = *(a2 + 12);
  if (v12)
  {
    sub_1D0C773F4(this + 10, *(this + 12) + v12);
    v4 = memcpy((*(this + 5) + 8 * *(this + 12)), *(a2 + 5), 8 * *(a2 + 12));
    *(this + 12) += *(a2 + 12);
  }

  LOBYTE(v13) = *(a2 + 68);
  if (v13)
  {
    if (*(a2 + 68))
    {
      *(this + 17) |= 1u;
      v14 = *(this + 1);
      if (!v14)
      {
        operator new();
      }

      v15 = *(a2 + 1);
      if (!v15)
      {
        CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(v4);
        v15 = *(CoreNavigation::CLP::LogEntry::PrivateData::GEOMapBuildingData::default_instance_ + 8);
      }

      result = CoreNavigation::CLP::LogEntry::PrivateData::TimeStamp::MergeFrom(v14, v15);
      v13 = *(a2 + 17);
    }

    if ((v13 & 8) != 0)
    {
      *(this + 17) |= 8u;
      v16 = *(this + 7);
      if (!v16)
      {
        operator new();
      }

      v17 = *(a2 + 7);
      if (!v17)
      {
        CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(v4);
        v17 = *(CoreNavigation::CLP::LogEntry::PrivateData::GEOMapBuildingData::default_instance_ + 56);
      }

      return CoreNavigation::CLP::LogEntry::PrivateData::GEOLocationCoordinate2D::MergeFrom(v16, v17);
    }
  }

  return result;
}

void sub_1D0CF40E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void CoreNavigation::CLP::LogEntry::PrivateData::GEOMapBuildingData::~GEOMapBuildingData(CoreNavigation::CLP::LogEntry::PrivateData::GEOMapBuildingData *this)
{
  *this = &unk_1F4CDB8C8;
  CoreNavigation::CLP::LogEntry::PrivateData::GEOMapBuildingData::SharedDtor(this);
  v2 = *(this + 5);
  if (v2)
  {
    MEMORY[0x1D387EC80](v2, 0x1000C8000313F17);
  }

  sub_1D0B8CD0C(this + 2);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  CoreNavigation::CLP::LogEntry::PrivateData::GEOMapBuildingData::~GEOMapBuildingData(this);

  JUMPOUT(0x1D387ECA0);
}

void CoreNavigation::CLP::LogEntry::PrivateData::GEOMapBuildingData::SharedDtor(CoreNavigation::CLP::LogEntry::PrivateData::GEOMapBuildingData *this)
{
  CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(this);
  if (CoreNavigation::CLP::LogEntry::PrivateData::GEOMapBuildingData::default_instance_ != this)
  {
    v2 = *(this + 1);
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }

    v3 = *(this + 7);
    if (v3)
    {
      v4 = *(*v3 + 8);

      v4();
    }
  }
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::GEOMapBuildingData::Clear(CoreNavigation::CLP::LogEntry::PrivateData::GEOMapBuildingData *this)
{
  LOBYTE(v2) = *(this + 68);
  if (v2)
  {
    if (*(this + 68))
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
        v2 = *(this + 17);
      }
    }

    if ((v2 & 8) != 0)
    {
      v4 = *(this + 7);
      if (v4)
      {
        if (*(v4 + 28))
        {
          *(v4 + 8) = 0;
          *(v4 + 16) = 0;
        }

        *(v4 + 28) = 0;
      }
    }
  }

  result = sub_1D0C77384(this + 16);
  *(this + 12) = 0;
  *(this + 17) = 0;
  return result;
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::GEOMapBuildingData::MergePartialFromCodedStream(CoreNavigation::CLP::LogEntry::PrivateData::GEOMapBuildingData *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
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
          if ((TagFallback & 7) == 0)
          {
            v13 = *(a2 + 1);
            v12 = *(a2 + 2);
            goto LABEL_69;
          }

          if (v8 == 2)
          {
            v54[0] = 0;
            v11 = *(a2 + 1);
            if (v11 >= *(a2 + 2) || *v11 < 0)
            {
              if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v54))
              {
                return 0;
              }
            }

            else
            {
              v54[0] = *v11;
              *(a2 + 1) = v11 + 1;
            }

            wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
            while (wireless_diagnostics::google::protobuf::io::CodedInputStream::BytesUntilLimit(a2) >= 1)
            {
              *v55 = 0;
              v21 = *(a2 + 1);
              if (v21 >= *(a2 + 2) || (*v21 & 0x8000000000000000) != 0)
              {
                if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, v55))
                {
                  return 0;
                }
              }

              else
              {
                *v55 = *v21;
                *(a2 + 1) = v21 + 1;
              }

              v22 = *(this + 12);
              if (v22 == *(this + 13))
              {
                sub_1D0C773F4(this + 10, v22 + 1);
                v22 = *(this + 12);
              }

              v23 = *v55;
              v24 = *(this + 5);
              *(this + 12) = v22 + 1;
              *(v24 + 8 * v22) = v23;
            }

            wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
            goto LABEL_87;
          }

          goto LABEL_23;
        }

        if (v7 != 4 || v8 != 2)
        {
          goto LABEL_23;
        }

LABEL_90:
        *(this + 17) |= 8u;
        v46 = *(this + 7);
        if (!v46)
        {
          operator new();
        }

        v55[0] = 0;
        v47 = *(a2 + 1);
        if (v47 >= *(a2 + 2) || *v47 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v55))
          {
            return 0;
          }
        }

        else
        {
          v55[0] = *v47;
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
        if (!CoreNavigation::CLP::LogEntry::PrivateData::GEOLocationCoordinate2D::MergePartialFromCodedStream(v46, a2, v50) || *(a2 + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
        v51 = *(a2 + 14);
        v18 = __OFSUB__(v51, 1);
        v52 = v51 - 1;
        if (v52 < 0 == v18)
        {
          *(a2 + 14) = v52;
        }

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

      if (v8 != 2)
      {
        goto LABEL_23;
      }

      *(this + 17) |= 1u;
      v9 = *(this + 1);
      if (!v9)
      {
        operator new();
      }

      v55[0] = 0;
      v10 = *(a2 + 1);
      if (v10 >= *(a2 + 2) || *v10 < 0)
      {
        if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v55))
        {
          return 0;
        }
      }

      else
      {
        v55[0] = *v10;
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
      if (v20 < *(a2 + 2) && *v20 == 18)
      {
        while (2)
        {
          *(a2 + 1) = v20 + 1;
LABEL_51:
          v25 = *(this + 7);
          v26 = *(this + 6);
          if (v26 >= v25)
          {
            if (v25 == *(this + 8))
            {
              wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 16));
              v25 = *(this + 7);
            }

            *(this + 7) = v25 + 1;
            operator new();
          }

          v27 = *(this + 2);
          *(this + 6) = v26 + 1;
          v28 = *(v27 + 8 * v26);
          v55[0] = 0;
          v29 = *(a2 + 1);
          if (v29 >= *(a2 + 2) || *v29 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v55))
            {
              return 0;
            }
          }

          else
          {
            v55[0] = *v29;
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
          if (!CoreNavigation::CLP::LogEntry::PrivateData::GEOMapFeatureBuilding::MergePartialFromCodedStream(v28, a2, v32) || *(a2 + 36) != 1)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
          v33 = *(a2 + 14);
          v18 = __OFSUB__(v33, 1);
          v34 = v33 - 1;
          if (v34 < 0 == v18)
          {
            *(a2 + 14) = v34;
          }

          v20 = *(a2 + 1);
          v12 = *(a2 + 2);
          if (v20 < v12)
          {
            v35 = *v20;
            if (v35 == 18)
            {
              continue;
            }

            while (v35 == 24)
            {
              v13 = v20 + 1;
              *(a2 + 1) = v13;
LABEL_69:
              *v54 = 0;
              if (v13 >= v12 || (*v13 & 0x8000000000000000) != 0)
              {
                if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, v54))
                {
                  return 0;
                }
              }

              else
              {
                *v54 = *v13;
                *(a2 + 1) = v13 + 1;
              }

              v36 = *(this + 12);
              v37 = *(this + 13);
              if (v36 == v37)
              {
                sub_1D0C773F4(this + 10, v36 + 1);
                v36 = *(this + 12);
                v37 = *(this + 13);
              }

              v38 = *v54;
              v39 = *(this + 5);
              v40 = v36 + 1;
              *(this + 12) = v36 + 1;
              *(v39 + 8 * v36) = v38;
              if (v37 - (v36 + 1) >= 1)
              {
                v41 = v37 - v36;
                do
                {
                  v42 = *(a2 + 1);
                  v43 = *(a2 + 2);
                  if (v42 >= v43 || *v42 != 24)
                  {
                    break;
                  }

                  *(a2 + 1) = v42 + 1;
                  if ((v42 + 1) >= v43 || (v42[1] & 0x8000000000000000) != 0)
                  {
                    if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, v54))
                    {
                      return 0;
                    }

                    v40 = *(this + 12);
                  }

                  else
                  {
                    *v54 = v42[1];
                    *(a2 + 1) = v42 + 2;
                  }

                  if (v40 >= *(this + 13))
                  {
                    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v55);
                    v40 = *(this + 12);
                  }

                  v44 = *v54;
                  v45 = *(this + 5);
                  *(this + 12) = v40 + 1;
                  *(v45 + 8 * v40) = v44;
                  --v41;
                  ++v40;
                }

                while (v41 > 1);
              }

LABEL_87:
              v20 = *(a2 + 1);
              v12 = *(a2 + 2);
              if (v20 >= v12)
              {
                break;
              }

              v35 = *v20;
              if (v35 == 34)
              {
                *(a2 + 1) = v20 + 1;
                goto LABEL_90;
              }
            }
          }

          break;
        }
      }
    }

    if (v7 == 2 && v8 == 2)
    {
      goto LABEL_51;
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

void sub_1D0CF4A40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::GEOMapBuildingData::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  if (*(this + 68))
  {
    v6 = *(this + 8);
    if (!v6)
    {
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(this);
      v6 = *(CoreNavigation::CLP::LogEntry::PrivateData::GEOMapBuildingData::default_instance_ + 8);
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

  if (*(v5 + 48) >= 1)
  {
    v8 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(3, *(*(v5 + 40) + 8 * v8++), a2, a4);
    }

    while (v8 < *(v5 + 48));
  }

  if ((*(v5 + 68) & 8) != 0)
  {
    v9 = *(v5 + 56);
    if (!v9)
    {
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(this);
      v9 = *(CoreNavigation::CLP::LogEntry::PrivateData::GEOMapBuildingData::default_instance_ + 56);
    }

    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(4, v9, a2, a4);
  }

  return this;
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::GEOMapBuildingData::ByteSize(CoreNavigation::CLP::LogEntry::PrivateData::GEOMapBuildingData *this, unint64_t a2)
{
  if (!*(this + 68))
  {
    v3 = 0;
    goto LABEL_22;
  }

  if ((*(this + 68) & 1) == 0)
  {
    v3 = 0;
    if ((*(this + 68) & 8) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_15;
  }

  v4 = *(this + 1);
  if (!v4)
  {
    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(this);
    v4 = *(CoreNavigation::CLP::LogEntry::PrivateData::GEOMapBuildingData::default_instance_ + 8);
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
  if ((*(this + 17) & 8) != 0)
  {
LABEL_15:
    v7 = *(this + 7);
    if (!v7)
    {
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(this);
      v7 = *(CoreNavigation::CLP::LogEntry::PrivateData::GEOMapBuildingData::default_instance_ + 56);
    }

    v8 = *(v7 + 28);
    if (*(v7 + 28))
    {
      if ((v8 & 2) != 0)
      {
        v8 = ((v8 << 31 >> 31) & 9) + 9;
      }

      else
      {
        v8 = (v8 << 31 >> 31) & 9;
      }
    }

    *(v7 + 24) = v8;
    v3 += v8 + 2;
  }

LABEL_22:
  v9 = *(this + 6);
  v10 = v9 + v3;
  if (v9 >= 1)
  {
    v11 = 0;
    do
    {
      v12 = CoreNavigation::CLP::LogEntry::PrivateData::GEOMapFeatureBuilding::ByteSize(*(*(this + 2) + 8 * v11), a2);
      v13 = v12;
      if (v12 >= 0x80)
      {
        v14 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v12);
      }

      else
      {
        v14 = 1;
      }

      v10 += v13 + v14;
      ++v11;
    }

    while (v11 < *(this + 6));
  }

  LODWORD(v15) = *(this + 12);
  if (v15 < 1)
  {
    v17 = 0;
  }

  else
  {
    v16 = 0;
    v17 = 0;
    do
    {
      v17 += wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(*(this + 5) + 8 * v16++));
      v15 = *(this + 12);
    }

    while (v16 < v15);
  }

  result = (v17 + v10 + v15);
  *(this + 16) = result;
  return result;
}

double CoreNavigation::CLP::LogEntry::PrivateData::GEOMapBuildingData::CheckTypeAndMergeFrom(CoreNavigation::CLP::LogEntry::PrivateData::GEOMapBuildingData *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  return CoreNavigation::CLP::LogEntry::PrivateData::GEOMapBuildingData::MergeFrom(this, lpsrc);
}

double CoreNavigation::CLP::LogEntry::PrivateData::GEOMapBuildingData::CopyFrom(CoreNavigation::CLP::LogEntry::PrivateData::GEOMapBuildingData *this, const CoreNavigation::CLP::LogEntry::PrivateData::GEOMapBuildingData *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    return CoreNavigation::CLP::LogEntry::PrivateData::GEOMapBuildingData::MergeFrom(this, a2);
  }

  return result;
}

double CoreNavigation::CLP::LogEntry::PrivateData::GEOMapBuildingData::Swap(CoreNavigation::CLP::LogEntry::PrivateData::GEOMapBuildingData *this, CoreNavigation::CLP::LogEntry::PrivateData::GEOMapBuildingData *a2)
{
  if (a2 != this)
  {
    v4 = *(this + 1);
    *(this + 1) = *(a2 + 1);
    *(a2 + 1) = v4;
    wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Swap();
    v5 = *(this + 5);
    *(this + 5) = *(a2 + 5);
    result = *(a2 + 6);
    *(a2 + 5) = v5;
    v7 = *(this + 6);
    *(this + 6) = result;
    *(a2 + 6) = v7;
    v8 = *(this + 7);
    *(this + 7) = *(a2 + 7);
    *(a2 + 7) = v8;
    LODWORD(v8) = *(this + 17);
    *(this + 17) = *(a2 + 17);
    *(a2 + 17) = v8;
    LODWORD(v8) = *(this + 16);
    *(this + 16) = *(a2 + 16);
    *(a2 + 16) = v8;
  }

  return result;
}

void *CoreNavigation::CLP::LogEntry::PrivateData::GEOMapFeatureTropicalSavannaBranch::SharedCtor(void *this)
{
  this[4] = 0;
  this[5] = 0;
  this[6] = 0;
  return this;
}

CoreNavigation::CLP::LogEntry::PrivateData::GEOMapFeatureTropicalSavannaBranch *CoreNavigation::CLP::LogEntry::PrivateData::GEOMapFeatureTropicalSavannaBranch::GEOMapFeatureTropicalSavannaBranch(CoreNavigation::CLP::LogEntry::PrivateData::GEOMapFeatureTropicalSavannaBranch *this, const CoreNavigation::CLP::LogEntry::PrivateData::GEOMapFeatureTropicalSavannaBranch *a2)
{
  *(this + 1) = 0;
  *this = &unk_1F4CDB940;
  *(this + 2) = 0;
  *(this + 6) = 0;
  *(this + 5) = 0;
  *(this + 6) = 0;
  *(this + 4) = 0;
  CoreNavigation::CLP::LogEntry::PrivateData::GEOMapFeatureTropicalSavannaBranch::MergeFrom(this, a2);
  return this;
}

void sub_1D0CF4F4C(_Unwind_Exception *a1)
{
  sub_1D0B8CD0C(v2);
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(v1);
  _Unwind_Resume(a1);
}

void CoreNavigation::CLP::LogEntry::PrivateData::GEOMapFeatureTropicalSavannaBranch::MergeFrom(CoreNavigation::CLP::LogEntry::PrivateData::GEOMapFeatureTropicalSavannaBranch *this, const CoreNavigation::CLP::LogEntry::PrivateData::GEOMapFeatureTropicalSavannaBranch *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v9);
  }

  sub_1D0CFF374((this + 8), a2 + 8);
  v4 = *(a2 + 13);
  if ((v4 & 0x1FE) != 0)
  {
    if ((v4 & 2) != 0)
    {
      v5 = *(a2 + 8);
      if (v5 >= 4)
      {
        __assert_rtn("set_branch_type", "CoreNavigationCLPPrivateDataShared.pb.h", 26506, "::CoreNavigation::CLP::LogEntry::PrivateData::GEOMapFeatureTropicalSavannaBranch_BranchType_IsValid(value)");
      }

      *(this + 13) |= 2u;
      *(this + 8) = v5;
      v4 = *(a2 + 13);
    }

    if ((v4 & 4) != 0)
    {
      v7 = *(a2 + 9);
      *(this + 13) |= 4u;
      *(this + 9) = v7;
      v4 = *(a2 + 13);
      if ((v4 & 8) == 0)
      {
LABEL_9:
        if ((v4 & 0x10) == 0)
        {
          return;
        }

        goto LABEL_10;
      }
    }

    else if ((v4 & 8) == 0)
    {
      goto LABEL_9;
    }

    v8 = *(a2 + 10);
    *(this + 13) |= 8u;
    *(this + 10) = v8;
    if ((*(a2 + 13) & 0x10) != 0)
    {
LABEL_10:
      v6 = *(a2 + 11);
      *(this + 13) |= 0x10u;
      *(this + 11) = v6;
    }
  }
}

void sub_1D0CF5094(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void CoreNavigation::CLP::LogEntry::PrivateData::GEOMapFeatureTropicalSavannaBranch::~GEOMapFeatureTropicalSavannaBranch(CoreNavigation::CLP::LogEntry::PrivateData::GEOMapFeatureTropicalSavannaBranch *this)
{
  *this = &unk_1F4CDB940;
  CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(this);
  sub_1D0B8CD0C(this + 1);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  CoreNavigation::CLP::LogEntry::PrivateData::GEOMapFeatureTropicalSavannaBranch::~GEOMapFeatureTropicalSavannaBranch(this);

  JUMPOUT(0x1D387ECA0);
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::GEOMapFeatureTropicalSavannaBranch::Clear(CoreNavigation::CLP::LogEntry::PrivateData::GEOMapFeatureTropicalSavannaBranch *this)
{
  if ((*(this + 26) & 0x1FE) != 0)
  {
    *(this + 4) = 0;
    *(this + 5) = 0;
  }

  result = sub_1D0C77384(this + 8);
  *(this + 13) = 0;
  return result;
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::GEOMapFeatureTropicalSavannaBranch::MergePartialFromCodedStream(CoreNavigation::CLP::LogEntry::PrivateData::GEOMapFeatureTropicalSavannaBranch *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
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
        if (TagFallback >> 3 > 2)
        {
          break;
        }

        if (v7 == 1)
        {
          if (v8 == 2)
          {
            while (1)
            {
              v16 = *(this + 5);
              v17 = *(this + 4);
              if (v17 >= v16)
              {
                if (v16 == *(this + 6))
                {
                  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 8));
                  v16 = *(this + 5);
                }

                *(this + 5) = v16 + 1;
                operator new();
              }

              v18 = *(this + 1);
              *(this + 4) = v17 + 1;
              v19 = *(v18 + 8 * v17);
              v38 = 0;
              v20 = *(a2 + 1);
              if (v20 >= *(a2 + 2) || *v20 < 0)
              {
                if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v38))
                {
                  return 0;
                }
              }

              else
              {
                v38 = *v20;
                *(a2 + 1) = v20 + 1;
              }

              v21 = *(a2 + 14);
              v22 = *(a2 + 15);
              *(a2 + 14) = v21 + 1;
              if (v21 >= v22)
              {
                return 0;
              }

              wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
              if (!CoreNavigation::CLP::LogEntry::PrivateData::GEOLocationCoordinate2D::MergePartialFromCodedStream(v19, a2, v23) || *(a2 + 36) != 1)
              {
                return 0;
              }

              wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
              v24 = *(a2 + 14);
              v25 = __OFSUB__(v24, 1);
              v26 = v24 - 1;
              if (v26 < 0 == v25)
              {
                *(a2 + 14) = v26;
              }

              v27 = *(a2 + 1);
              v11 = *(a2 + 2);
              if (v27 >= v11)
              {
                goto LABEL_1;
              }

              v28 = *v27;
              if (v28 != 10)
              {
                if (v28 != 16)
                {
                  goto LABEL_1;
                }

                v12 = (v27 + 1);
                *(a2 + 1) = v12;
                goto LABEL_16;
              }

              *(a2 + 1) = v27 + 1;
            }
          }

          goto LABEL_24;
        }

        if (v7 != 2 || (TagFallback & 7) != 0)
        {
          goto LABEL_24;
        }

        v12 = *(a2 + 1);
        v11 = *(a2 + 2);
LABEL_16:
        v37 = 0;
        if (v12 >= v11 || (v13 = *v12, (v13 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v37);
          if (!result)
          {
            return result;
          }

          v13 = v37;
        }

        else
        {
          *(a2 + 1) = v12 + 1;
        }

        if (v13 <= 3)
        {
          *(this + 13) |= 2u;
          *(this + 8) = v13;
        }

        v30 = *(a2 + 1);
        v9 = *(a2 + 2);
        if (v30 < v9 && *v30 == 24)
        {
          v14 = v30 + 1;
          *(a2 + 1) = v14;
LABEL_53:
          if (v14 >= v9 || (v31 = *v14, v31 < 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 9);
            if (!result)
            {
              return result;
            }

            v32 = *(a2 + 1);
            v9 = *(a2 + 2);
          }

          else
          {
            *(this + 9) = v31;
            v32 = v14 + 1;
            *(a2 + 1) = v32;
          }

          *(this + 13) |= 4u;
          if (v32 < v9 && *v32 == 32)
          {
            v15 = v32 + 1;
            *(a2 + 1) = v15;
            goto LABEL_61;
          }
        }
      }

      if (v7 == 3)
      {
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_24;
        }

        v14 = *(a2 + 1);
        v9 = *(a2 + 2);
        goto LABEL_53;
      }

      if (v7 != 4)
      {
        break;
      }

      if ((TagFallback & 7) != 0)
      {
        goto LABEL_24;
      }

      v15 = *(a2 + 1);
      v9 = *(a2 + 2);
LABEL_61:
      if (v15 >= v9 || (v33 = *v15, v33 < 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 10);
        if (!result)
        {
          return result;
        }

        v34 = *(a2 + 1);
        v9 = *(a2 + 2);
      }

      else
      {
        *(this + 10) = v33;
        v34 = v15 + 1;
        *(a2 + 1) = v34;
      }

      *(this + 13) |= 8u;
      if (v34 < v9 && *v34 == 40)
      {
        v10 = v34 + 1;
        *(a2 + 1) = v10;
LABEL_69:
        if (v10 >= v9 || (v35 = *v10, v35 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 11);
          if (!result)
          {
            return result;
          }

          v36 = *(a2 + 1);
          v9 = *(a2 + 2);
        }

        else
        {
          *(this + 11) = v35;
          v36 = v10 + 1;
          *(a2 + 1) = v36;
        }

        *(this + 13) |= 0x10u;
        if (v36 == v9 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
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
      goto LABEL_69;
    }

LABEL_24:
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

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::GEOMapFeatureTropicalSavannaBranch::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
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

  v7 = *(v5 + 52);
  if ((v7 & 2) != 0)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(2, *(v5 + 32), a2, a4);
    v7 = *(v5 + 52);
    if ((v7 & 4) == 0)
    {
LABEL_6:
      if ((v7 & 8) == 0)
      {
        goto LABEL_7;
      }

LABEL_11:
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(4, *(v5 + 40), a2, a4);
      if ((*(v5 + 52) & 0x10) == 0)
      {
        return this;
      }

      goto LABEL_12;
    }
  }

  else if ((v7 & 4) == 0)
  {
    goto LABEL_6;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(3, *(v5 + 36), a2, a4);
  v7 = *(v5 + 52);
  if ((v7 & 8) != 0)
  {
    goto LABEL_11;
  }

LABEL_7:
  if ((v7 & 0x10) == 0)
  {
    return this;
  }

LABEL_12:
  v8 = *(v5 + 44);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(5, v8, a2, a4);
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::GEOMapFeatureTropicalSavannaBranch::ByteSize(CoreNavigation::CLP::LogEntry::PrivateData::GEOMapFeatureTropicalSavannaBranch *this, unsigned int a2)
{
  v3 = *(this + 13);
  if ((v3 & 0x1FE) == 0)
  {
    v4 = 0;
    goto LABEL_28;
  }

  if ((v3 & 2) != 0)
  {
    v5 = *(this + 8);
    if ((v5 & 0x80000000) != 0)
    {
      v4 = 11;
      if ((v3 & 4) == 0)
      {
        goto LABEL_17;
      }
    }

    else if (v5 >= 0x80)
    {
      v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5) + 1;
      v3 = *(this + 13);
      if ((v3 & 4) == 0)
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = 2;
      if ((v3 & 4) == 0)
      {
        goto LABEL_17;
      }
    }
  }

  else
  {
    v4 = 0;
    if ((v3 & 4) == 0)
    {
      goto LABEL_17;
    }
  }

  v6 = *(this + 9);
  if (v6 >= 0x80)
  {
    v7 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v6) + 1;
    v3 = *(this + 13);
  }

  else
  {
    v7 = 2;
  }

  v4 += v7;
LABEL_17:
  if ((v3 & 8) == 0)
  {
    if ((v3 & 0x10) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_24;
  }

  v8 = *(this + 10);
  if (v8 >= 0x80)
  {
    v9 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v8) + 1;
    v3 = *(this + 13);
  }

  else
  {
    v9 = 2;
  }

  v4 += v9;
  if ((v3 & 0x10) != 0)
  {
LABEL_24:
    v10 = *(this + 11);
    if (v10 >= 0x80)
    {
      v11 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v10) + 1;
    }

    else
    {
      v11 = 2;
    }

    v4 += v11;
  }

LABEL_28:
  v12 = *(this + 4);
  result = (v12 + v4);
  if (v12 >= 1)
  {
    v14 = *(this + 1);
    do
    {
      v15 = *(*v14 + 28);
      if (*(*v14 + 28))
      {
        if ((v15 & 2) != 0)
        {
          v15 = ((v15 << 31 >> 31) & 9) + 9;
        }

        else
        {
          v15 = (v15 << 31 >> 31) & 9;
        }
      }

      *(*v14 + 24) = v15;
      result = (result + v15 + 1);
      v14 += 8;
      --v12;
    }

    while (v12);
  }

  *(this + 12) = result;
  return result;
}