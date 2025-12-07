uint64_t CLP::LogEntry::PrivateData::MeasurementReportCallbackContents::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 132);
  if (v6)
  {
    v7 = *(this + 8);
    if (!v7)
    {
      v7 = *(CLP::LogEntry::PrivateData::MeasurementReportCallbackContents::default_instance_ + 8);
    }

    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(1, v7, a2, a4);
    v6 = *(v5 + 132);
  }

  if ((v6 & 2) != 0)
  {
    v8 = *(v5 + 16);
    if (!v8)
    {
      v8 = *(CLP::LogEntry::PrivateData::MeasurementReportCallbackContents::default_instance_ + 16);
    }

    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(2, v8, a2, a4);
  }

  if (*(v5 + 32) >= 1)
  {
    v9 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(3, *(*(v5 + 24) + 8 * v9++), a2, a4);
    }

    while (v9 < *(v5 + 32));
  }

  if (*(v5 + 56) >= 1)
  {
    v10 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(4, *(*(v5 + 48) + 8 * v10++), a2, a4);
    }

    while (v10 < *(v5 + 56));
  }

  v11 = *(v5 + 132);
  if ((v11 & 0x10) != 0)
  {
    v12 = *(v5 + 72);
    if (!v12)
    {
      v12 = *(CLP::LogEntry::PrivateData::MeasurementReportCallbackContents::default_instance_ + 72);
    }

    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(5, v12, a2, a4);
    v11 = *(v5 + 132);
    if ((v11 & 0x20) == 0)
    {
LABEL_17:
      if ((v11 & 0x40) == 0)
      {
        goto LABEL_18;
      }

      goto LABEL_24;
    }
  }

  else if ((v11 & 0x20) == 0)
  {
    goto LABEL_17;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(6, a2, *(v5 + 80), a3);
  v11 = *(v5 + 132);
  if ((v11 & 0x40) == 0)
  {
LABEL_18:
    if ((v11 & 0x80) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_25;
  }

LABEL_24:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(7, a2, *(v5 + 88), a3);
  if ((*(v5 + 132) & 0x80) == 0)
  {
    goto LABEL_28;
  }

LABEL_25:
  v13 = *(v5 + 96);
  if (!v13)
  {
    v13 = *(CLP::LogEntry::PrivateData::MeasurementReportCallbackContents::default_instance_ + 96);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(8, v13, a2, a4);
LABEL_28:
  if (*(v5 + 112) >= 1)
  {
    v14 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(9, *(*(v5 + 104) + 8 * v14++), a2, a4);
    }

    while (v14 < *(v5 + 112));
  }

  return this;
}

uint64_t CLP::LogEntry::PrivateData::MeasurementReportCallbackContents::ByteSize(CLP::LogEntry::PrivateData::MeasurementReportCallbackContents *this, unint64_t a2)
{
  LOBYTE(v3) = *(this + 132);
  if (!v3)
  {
    v5 = 0;
    goto LABEL_40;
  }

  if (*(this + 132))
  {
    v6 = *(this + 1);
    if (!v6)
    {
      v6 = *(CLP::LogEntry::PrivateData::MeasurementReportCallbackContents::default_instance_ + 8);
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
    v3 = *(this + 33);
    if ((v3 & 2) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_15;
  }

  v4 = 0;
  if ((*(this + 132) & 2) != 0)
  {
LABEL_15:
    v9 = *(this + 2);
    if (!v9)
    {
      v9 = *(CLP::LogEntry::PrivateData::MeasurementReportCallbackContents::default_instance_ + 16);
    }

    v10 = CLP::LogEntry::PrivateData::MeasurementReport::ByteSize(v9, a2);
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
    v3 = *(this + 33);
  }

LABEL_21:
  if ((v3 & 0x10) != 0)
  {
    v13 = *(this + 9);
    if (!v13)
    {
      v13 = *(CLP::LogEntry::PrivateData::MeasurementReportCallbackContents::default_instance_ + 72);
    }

    v14 = CLP::LogEntry::PrivateData::TimeConversionInfo::ByteSize(v13, a2);
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
    v3 = *(this + 33);
  }

  v17 = v4 + 9;
  if ((v3 & 0x20) == 0)
  {
    v17 = v4;
  }

  if ((v3 & 0x40) != 0)
  {
    v5 = v17 + 9;
  }

  else
  {
    v5 = v17;
  }

  if ((v3 & 0x80) != 0)
  {
    v18 = *(this + 12);
    if (!v18)
    {
      v18 = *(CLP::LogEntry::PrivateData::MeasurementReportCallbackContents::default_instance_ + 96);
    }

    v19 = CLP::LogEntry::PrivateData::KlobucharModelParameters::ByteSize(v18, a2);
    v20 = v19;
    if (v19 >= 0x80)
    {
      v21 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v19);
    }

    else
    {
      v21 = 1;
    }

    v5 += v20 + v21 + 1;
  }

LABEL_40:
  v22 = *(this + 8);
  v23 = v22 + v5;
  if (v22 >= 1)
  {
    v24 = 0;
    do
    {
      v25 = CLP::LogEntry::PrivateData::SvInfo::ByteSize(*(*(this + 3) + 8 * v24), a2);
      v26 = v25;
      if (v25 >= 0x80)
      {
        v27 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v25);
      }

      else
      {
        v27 = 1;
      }

      v23 += v26 + v27;
      ++v24;
    }

    while (v24 < *(this + 8));
  }

  v28 = *(this + 14);
  v29 = v28 + v23;
  if (v28 >= 1)
  {
    v30 = 0;
    do
    {
      v31 = CLP::LogEntry::PrivateData::ReceiverBandCorrections::ByteSize(*(*(this + 6) + 8 * v30), a2);
      v32 = v31;
      if (v31 >= 0x80)
      {
        v33 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v31);
      }

      else
      {
        v33 = 1;
      }

      v29 += v32 + v33;
      ++v30;
    }

    while (v30 < *(this + 14));
  }

  v34 = *(this + 28);
  v35 = (v34 + v29);
  if (v34 >= 1)
  {
    v36 = 0;
    do
    {
      v37 = CLP::LogEntry::PrivateData::AntennaPhaseCenterSvOffset::ByteSize(*(*(this + 13) + 8 * v36), a2);
      v38 = v37;
      if (v37 >= 0x80)
      {
        v39 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v37);
      }

      else
      {
        v39 = 1;
      }

      v35 = (v38 + v35 + v39);
      ++v36;
    }

    while (v36 < *(this + 28));
  }

  *(this + 32) = v35;
  return v35;
}

float CLP::LogEntry::PrivateData::MeasurementReportCallbackContents::CheckTypeAndMergeFrom(CLP::LogEntry::PrivateData::MeasurementReportCallbackContents *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  return CLP::LogEntry::PrivateData::MeasurementReportCallbackContents::MergeFrom(this, lpsrc);
}

float CLP::LogEntry::PrivateData::MeasurementReportCallbackContents::CopyFrom(CLP::LogEntry::PrivateData::MeasurementReportCallbackContents *this, const CLP::LogEntry::PrivateData::MeasurementReportCallbackContents *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    return CLP::LogEntry::PrivateData::MeasurementReportCallbackContents::MergeFrom(this, a2);
  }

  return result;
}

CLP::LogEntry::PrivateData::MeasurementReportCallbackContents *CLP::LogEntry::PrivateData::MeasurementReportCallbackContents::Swap(CLP::LogEntry::PrivateData::MeasurementReportCallbackContents *this, CLP::LogEntry::PrivateData::MeasurementReportCallbackContents *a2)
{
  if (a2 != this)
  {
    v3 = this;
    v4 = *(this + 1);
    *(this + 1) = *(a2 + 1);
    *(a2 + 1) = v4;
    v5 = *(this + 2);
    *(this + 2) = *(a2 + 2);
    *(a2 + 2) = v5;
    wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Swap();
    wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Swap();
    v6 = *(v3 + 9);
    *(v3 + 9) = *(a2 + 9);
    *(a2 + 9) = v6;
    v7 = *(v3 + 10);
    *(v3 + 10) = *(a2 + 10);
    *(a2 + 10) = v7;
    v8 = *(v3 + 11);
    *(v3 + 11) = *(a2 + 11);
    *(a2 + 11) = v8;
    v9 = *(v3 + 12);
    *(v3 + 12) = *(a2 + 12);
    *(a2 + 12) = v9;
    this = wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Swap();
    v10 = *(v3 + 33);
    *(v3 + 33) = *(a2 + 33);
    *(a2 + 33) = v10;
    v11 = *(v3 + 32);
    *(v3 + 32) = *(a2 + 32);
    *(a2 + 32) = v11;
  }

  return this;
}

_DWORD *wireless_diagnostics::google::protobuf::RepeatedField<double>::Reserve(_DWORD *result, int a2)
{
  v2 = result[3];
  if (v2 < a2)
  {
    v3 = 2 * v2;
    if (v3 <= a2)
    {
      v3 = a2;
    }

    if (v3 <= 4)
    {
      v3 = 4;
    }

    result[3] = v3;
    operator new[]();
  }

  return result;
}

uint64_t proto::gnss::protobuf_ShutdownFile_GnssTypes_2eproto(proto::gnss *this)
{
  if (proto::gnss::Position::default_instance_)
  {
    (*(*proto::gnss::Position::default_instance_ + 8))(proto::gnss::Position::default_instance_);
  }

  if (proto::gnss::Velocity::default_instance_)
  {
    (*(*proto::gnss::Velocity::default_instance_ + 8))(proto::gnss::Velocity::default_instance_);
  }

  if (proto::gnss::Time::default_instance_)
  {
    (*(*proto::gnss::Time::default_instance_ + 8))(proto::gnss::Time::default_instance_);
  }

  if (proto::gnss::Fix::default_instance_)
  {
    (*(*proto::gnss::Fix::default_instance_ + 8))(proto::gnss::Fix::default_instance_);
  }

  if (proto::gnss::TimeTransferData::default_instance_)
  {
    (*(*proto::gnss::TimeTransferData::default_instance_ + 8))(proto::gnss::TimeTransferData::default_instance_);
  }

  if (proto::gnss::TimeTransferDataExtend::default_instance_)
  {
    (*(*proto::gnss::TimeTransferDataExtend::default_instance_ + 8))(proto::gnss::TimeTransferDataExtend::default_instance_);
  }

  if (proto::gnss::RawPressureSample::default_instance_)
  {
    (*(*proto::gnss::RawPressureSample::default_instance_ + 8))(proto::gnss::RawPressureSample::default_instance_);
  }

  if (proto::gnss::SensorSample3Axis::default_instance_)
  {
    (*(*proto::gnss::SensorSample3Axis::default_instance_ + 8))(proto::gnss::SensorSample3Axis::default_instance_);
  }

  if (proto::gnss::SvId::default_instance_)
  {
    (*(*proto::gnss::SvId::default_instance_ + 8))(proto::gnss::SvId::default_instance_);
  }

  if (proto::gnss::PwrMeasurement::default_instance_)
  {
    (*(*proto::gnss::PwrMeasurement::default_instance_ + 8))(proto::gnss::PwrMeasurement::default_instance_);
  }

  if (proto::gnss::DecodedRti::default_instance_)
  {
    (*(*proto::gnss::DecodedRti::default_instance_ + 8))(proto::gnss::DecodedRti::default_instance_);
  }

  result = proto::gnss::DecodedExtendedEphemeris::default_instance_;
  if (proto::gnss::DecodedExtendedEphemeris::default_instance_)
  {
    v2 = *(*proto::gnss::DecodedExtendedEphemeris::default_instance_ + 8);

    return v2();
  }

  return result;
}

void proto::gnss::protobuf_AddDesc_GnssTypes_2eproto(proto::gnss *this, uint64_t a2, uint64_t a3, const char *a4)
{
  if ((proto::gnss::protobuf_AddDesc_GnssTypes_2eproto(void)::already_here & 1) == 0)
  {
    proto::gnss::protobuf_AddDesc_GnssTypes_2eproto(void)::already_here = 1;
    v4 = wireless_diagnostics::google::protobuf::internal::VerifyVersion(0x1E9808, 2005000, "Sources/Protobuf/Generated/GnssTypes.pb.cc", a4);
    CLP::LogEntry::PrivateData::protobuf_AddDesc_CLPGnssMeasApi_2eproto(v4, v5, v6, v7);
    operator new();
  }
}

double proto::gnss::Position::Position(proto::gnss::Position *this)
{
  *this = &unk_2858619C8;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 84) = 0u;
  return result;
}

{
  *this = &unk_2858619C8;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 84) = 0u;
  return result;
}

double proto::gnss::Velocity::Velocity(proto::gnss::Velocity *this)
{
  *this = &unk_285861A40;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 7) = 0;
  return result;
}

{
  *this = &unk_285861A40;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 7) = 0;
  return result;
}

double proto::gnss::Time::Time(proto::gnss::Time *this)
{
  *this = &unk_285861AB8;
  *(this + 1) = 0;
  *(this + 4) = 0;
  *(this + 20) = 0;
  result = 0.0;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 18) = 0;
  return result;
}

{
  *this = &unk_285861AB8;
  *(this + 1) = 0;
  *(this + 4) = 0;
  *(this + 20) = 0;
  result = 0.0;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 18) = 0;
  return result;
}

double proto::gnss::Fix::Fix(proto::gnss::Fix *this)
{
  *this = &unk_285861B30;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 36) = 0u;
  return result;
}

{
  *this = &unk_285861B30;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 36) = 0u;
  return result;
}

double proto::gnss::TimeTransferData::TimeTransferData(proto::gnss::TimeTransferData *this)
{
  *(this + 16) = 0;
  *this = &unk_285861BA8;
  *(this + 1) = 0;
  result = 0.0;
  *(this + 20) = 0u;
  *(this + 36) = 0u;
  return result;
}

{
  *(this + 16) = 0;
  *this = &unk_285861BA8;
  *(this + 1) = 0;
  result = 0.0;
  *(this + 20) = 0u;
  *(this + 36) = 0u;
  return result;
}

double proto::gnss::TimeTransferDataExtend::TimeTransferDataExtend(proto::gnss::TimeTransferDataExtend *this)
{
  *this = &unk_285861C20;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  return result;
}

{
  *this = &unk_285861C20;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  return result;
}

uint64_t proto::gnss::RawPressureSample::RawPressureSample(uint64_t this)
{
  *(this + 8) = 0;
  *(this + 16) = 0;
  *this = &unk_285861C98;
  *(this + 24) = 0;
  return this;
}

{
  *(this + 8) = 0;
  *(this + 16) = 0;
  *this = &unk_285861C98;
  *(this + 24) = 0;
  return this;
}

uint64_t proto::gnss::SensorSample3Axis::SensorSample3Axis(uint64_t this)
{
  *this = &unk_285861D10;
  *(this + 8) = 0;
  *(this + 16) = 0;
  *(this + 24) = 0;
  *(this + 32) = 0;
  return this;
}

{
  *this = &unk_285861D10;
  *(this + 8) = 0;
  *(this + 16) = 0;
  *(this + 24) = 0;
  *(this + 32) = 0;
  return this;
}

uint64_t proto::gnss::SvId::SvId(uint64_t this)
{
  *this = &unk_285861D88;
  *(this + 8) = 0;
  *(this + 16) = 0;
  *(this + 24) = 0;
  *(this + 32) = 0;
  return this;
}

{
  *this = &unk_285861D88;
  *(this + 8) = 0;
  *(this + 16) = 0;
  *(this + 24) = 0;
  *(this + 32) = 0;
  return this;
}

double proto::gnss::PwrMeasurement::PwrMeasurement(proto::gnss::PwrMeasurement *this)
{
  *this = &unk_285861E00;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 36) = 0u;
  return result;
}

{
  *this = &unk_285861E00;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 36) = 0u;
  return result;
}

uint64_t proto::gnss::DecodedRti::DecodedRti(uint64_t this)
{
  *(this + 20) = 0;
  *this = &unk_285861E78;
  *(this + 8) = 0;
  *(this + 16) = 0;
  return this;
}

{
  *(this + 20) = 0;
  *this = &unk_285861E78;
  *(this + 8) = 0;
  *(this + 16) = 0;
  return this;
}

uint64_t proto::gnss::DecodedExtendedEphemeris::DecodedExtendedEphemeris(uint64_t this)
{
  *(this + 32) = 0;
  *(this + 28) = 0;
  *(this + 8) = 0;
  *(this + 16) = 0;
  *this = &unk_285861EF0;
  *(this + 24) = 0;
  return this;
}

{
  *(this + 32) = 0;
  *(this + 28) = 0;
  *(this + 8) = 0;
  *(this + 16) = 0;
  *this = &unk_285861EF0;
  *(this + 24) = 0;
  return this;
}

void proto::gnss::Fix::InitAsDefaultInstance(proto::gnss::Fix *this, uint64_t a2, uint64_t a3, const char *a4)
{
  v5 = proto::gnss::Time::default_instance_;
  if (!proto::gnss::Time::default_instance_)
  {
    proto::gnss::protobuf_AddDesc_GnssTypes_2eproto(this, a2, a3, a4);
    v5 = proto::gnss::Time::default_instance_;
  }

  *(this + 1) = v5;
  v6 = proto::gnss::Position::default_instance_;
  if (!proto::gnss::Position::default_instance_)
  {
    proto::gnss::protobuf_AddDesc_GnssTypes_2eproto(this, a2, a3, a4);
    v6 = proto::gnss::Position::default_instance_;
  }

  *(this + 2) = v6;
  v7 = proto::gnss::Velocity::default_instance_;
  if (!proto::gnss::Velocity::default_instance_)
  {
    proto::gnss::protobuf_AddDesc_GnssTypes_2eproto(this, a2, a3, a4);
    v7 = proto::gnss::Velocity::default_instance_;
  }

  *(this + 3) = v7;
}

void proto::gnss::TimeTransferData::InitAsDefaultInstance(proto::gnss::TimeTransferData *this, uint64_t a2, uint64_t a3, const char *a4)
{
  v5 = proto::gnss::Time::default_instance_;
  if (!proto::gnss::Time::default_instance_)
  {
    proto::gnss::protobuf_AddDesc_GnssTypes_2eproto(this, a2, a3, a4);
    v5 = proto::gnss::Time::default_instance_;
  }

  *(this + 1) = v5;
}

void proto::gnss::TimeTransferDataExtend::InitAsDefaultInstance(proto::gnss::TimeTransferDataExtend *this, uint64_t a2, uint64_t a3, const char *a4)
{
  v5 = proto::gnss::TimeTransferData::default_instance_;
  if (!proto::gnss::TimeTransferData::default_instance_)
  {
    proto::gnss::protobuf_AddDesc_GnssTypes_2eproto(this, a2, a3, a4);
    v5 = proto::gnss::TimeTransferData::default_instance_;
  }

  *(this + 1) = v5;
}

BOOL proto::gnss::Reliability_IsValid(proto::gnss *this)
{
  v1 = this;
  result = 1;
  if (v1 > 0x32 || ((1 << v1) & 0x4000002000403) == 0)
  {
    return v1 == 75;
  }

  return result;
}

double proto::gnss::Position::SharedCtor(proto::gnss::Position *this)
{
  result = 0.0;
  *(this + 84) = 0u;
  *(this + 72) = 0u;
  *(this + 56) = 0u;
  *(this + 40) = 0u;
  *(this + 24) = 0u;
  *(this + 8) = 0u;
  return result;
}

proto::gnss::Position *proto::gnss::Position::Position(proto::gnss::Position *this, const proto::gnss::Position *a2)
{
  *this = &unk_2858619C8;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 84) = 0u;
  proto::gnss::Position::MergeFrom(this, a2);
  return this;
}

void proto::gnss::Position::MergeFrom(proto::gnss::Position *this, const proto::gnss::Position *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v17);
  }

  v4 = *(a2 + 24);
  if (!v4)
  {
    goto LABEL_13;
  }

  if (v4)
  {
    v10 = *(a2 + 1);
    *(this + 24) |= 1u;
    *(this + 1) = v10;
    v4 = *(a2 + 24);
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

  v11 = *(a2 + 2);
  *(this + 24) |= 2u;
  *(this + 2) = v11;
  v4 = *(a2 + 24);
  if ((v4 & 4) == 0)
  {
LABEL_7:
    if ((v4 & 8) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_28;
  }

LABEL_27:
  v12 = *(a2 + 3);
  *(this + 24) |= 4u;
  *(this + 3) = v12;
  v4 = *(a2 + 24);
  if ((v4 & 8) == 0)
  {
LABEL_8:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_29;
  }

LABEL_28:
  v13 = *(a2 + 4);
  *(this + 24) |= 8u;
  *(this + 4) = v13;
  v4 = *(a2 + 24);
  if ((v4 & 0x10) == 0)
  {
LABEL_9:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_10;
    }

LABEL_30:
    v15 = *(a2 + 6);
    *(this + 24) |= 0x20u;
    *(this + 6) = v15;
    v4 = *(a2 + 24);
    if ((v4 & 0x40) == 0)
    {
LABEL_11:
      if ((v4 & 0x80) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_12;
    }

    goto LABEL_31;
  }

LABEL_29:
  v14 = *(a2 + 5);
  *(this + 24) |= 0x10u;
  *(this + 5) = v14;
  v4 = *(a2 + 24);
  if ((v4 & 0x20) != 0)
  {
    goto LABEL_30;
  }

LABEL_10:
  if ((v4 & 0x40) == 0)
  {
    goto LABEL_11;
  }

LABEL_31:
  v16 = *(a2 + 7);
  *(this + 24) |= 0x40u;
  *(this + 7) = v16;
  v4 = *(a2 + 24);
  if ((v4 & 0x80) != 0)
  {
LABEL_12:
    v5 = *(a2 + 8);
    *(this + 24) |= 0x80u;
    *(this + 8) = v5;
    v4 = *(a2 + 24);
  }

LABEL_13:
  if ((v4 & 0xFF00) != 0)
  {
    if ((v4 & 0x100) != 0)
    {
      v6 = *(a2 + 18);
      *(this + 24) |= 0x100u;
      *(this + 18) = v6;
      v4 = *(a2 + 24);
    }

    if ((v4 & 0x200) != 0)
    {
      v7 = *(a2 + 19);
      if (!proto::gnss::Reliability_IsValid(v7))
      {
        __assert_rtn("set_reliability", "GnssTypes.pb.h", 1975, "::proto::gnss::Reliability_IsValid(value)");
      }

      *(this + 24) |= 0x200u;
      *(this + 19) = v7;
      v4 = *(a2 + 24);
    }

    if ((v4 & 0x400) != 0)
    {
      v8 = *(a2 + 10);
      *(this + 24) |= 0x400u;
      *(this + 10) = v8;
      v4 = *(a2 + 24);
    }

    if ((v4 & 0x800) != 0)
    {
      v9 = *(a2 + 22);
      if (v9 >= 6)
      {
        __assert_rtn("set_gnss_content_in_fix", "GnssTypes.pb.h", 2020, "::proto::gnss::GnssContent_IsValid(value)");
      }

      *(this + 24) |= 0x800u;
      *(this + 22) = v9;
    }
  }
}

void sub_24553A6C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void proto::gnss::Position::~Position(proto::gnss::Position *this)
{
  *this = &unk_2858619C8;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2858619C8;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2858619C8;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  JUMPOUT(0x245D6AEE0);
}

uint64_t proto::gnss::Position::default_instance(proto::gnss::Position *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = proto::gnss::Position::default_instance_;
  if (!proto::gnss::Position::default_instance_)
  {
    proto::gnss::protobuf_AddDesc_GnssTypes_2eproto(0, a2, a3, a4);
    return proto::gnss::Position::default_instance_;
  }

  return result;
}

uint64_t proto::gnss::Position::Clear(uint64_t this)
{
  v1 = *(this + 96);
  if (v1)
  {
    *(this + 56) = 0u;
    *(this + 40) = 0u;
    *(this + 24) = 0u;
    *(this + 8) = 0u;
  }

  if ((v1 & 0xFF00) != 0)
  {
    *(this + 72) = 0;
    *(this + 80) = 0;
    *(this + 88) = 0;
  }

  *(this + 96) = 0;
  return this;
}

uint64_t proto::gnss::Position::MergePartialFromCodedStream(proto::gnss::Position *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
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
        if (TagFallback >> 3 > 6)
        {
          if (TagFallback >> 3 > 9)
          {
            if (v7 == 10)
            {
              if ((TagFallback & 7) == 0)
              {
                v14 = *(a2 + 1);
                v9 = *(a2 + 2);
                goto LABEL_85;
              }
            }

            else if (v7 == 11)
            {
              if ((TagFallback & 7) == 0)
              {
                v24 = *(a2 + 1);
                v11 = *(a2 + 2);
                goto LABEL_95;
              }
            }

            else if (v7 == 12 && (TagFallback & 7) == 0)
            {
              v12 = *(a2 + 1);
              v11 = *(a2 + 2);
              goto LABEL_103;
            }
          }

          else if (v7 == 7)
          {
            if (v8 == 1)
            {
              goto LABEL_64;
            }
          }

          else if (v7 == 8)
          {
            if (v8 == 1)
            {
              goto LABEL_68;
            }
          }

          else if (v7 == 9 && (TagFallback & 7) == 0)
          {
            v10 = *(a2 + 1);
            v9 = *(a2 + 2);
            goto LABEL_72;
          }

          goto LABEL_76;
        }

        if (TagFallback >> 3 > 3)
        {
          if (v7 == 4)
          {
            if (v8 == 1)
            {
              goto LABEL_49;
            }
          }

          else if (v7 == 5)
          {
            if (v8 == 1)
            {
              goto LABEL_56;
            }
          }

          else if (v7 == 6 && v8 == 1)
          {
            goto LABEL_60;
          }

          goto LABEL_76;
        }

        if (v7 != 1)
        {
          break;
        }

        if (v8 != 1)
        {
          goto LABEL_76;
        }

        *v31 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v31) & 1) == 0)
        {
          return 0;
        }

        *(this + 1) = *v31;
        *(this + 24) |= 1u;
        v13 = *(a2 + 1);
        if (v13 < *(a2 + 2) && *v13 == 17)
        {
          *(a2 + 1) = v13 + 1;
          goto LABEL_41;
        }
      }

      if (v7 != 2)
      {
        break;
      }

      if (v8 != 1)
      {
        goto LABEL_76;
      }

LABEL_41:
      *v31 = 0;
      if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v31) & 1) == 0)
      {
        return 0;
      }

      *(this + 2) = *v31;
      *(this + 24) |= 2u;
      v15 = *(a2 + 1);
      if (v15 < *(a2 + 2) && *v15 == 25)
      {
        *(a2 + 1) = v15 + 1;
LABEL_45:
        *v31 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v31) & 1) == 0)
        {
          return 0;
        }

        *(this + 3) = *v31;
        *(this + 24) |= 4u;
        v16 = *(a2 + 1);
        if (v16 < *(a2 + 2) && *v16 == 33)
        {
          *(a2 + 1) = v16 + 1;
LABEL_49:
          *v31 = 0;
          if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v31) & 1) == 0)
          {
            return 0;
          }

          *(this + 4) = *v31;
          *(this + 24) |= 8u;
          v17 = *(a2 + 1);
          if (v17 < *(a2 + 2) && *v17 == 41)
          {
            *(a2 + 1) = v17 + 1;
LABEL_56:
            *v31 = 0;
            if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v31) & 1) == 0)
            {
              return 0;
            }

            *(this + 5) = *v31;
            *(this + 24) |= 0x10u;
            v18 = *(a2 + 1);
            if (v18 < *(a2 + 2) && *v18 == 49)
            {
              *(a2 + 1) = v18 + 1;
LABEL_60:
              *v31 = 0;
              if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v31) & 1) == 0)
              {
                return 0;
              }

              *(this + 6) = *v31;
              *(this + 24) |= 0x20u;
              v19 = *(a2 + 1);
              if (v19 < *(a2 + 2) && *v19 == 57)
              {
                *(a2 + 1) = v19 + 1;
LABEL_64:
                *v31 = 0;
                if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v31) & 1) == 0)
                {
                  return 0;
                }

                *(this + 7) = *v31;
                *(this + 24) |= 0x40u;
                v20 = *(a2 + 1);
                if (v20 < *(a2 + 2) && *v20 == 65)
                {
                  *(a2 + 1) = v20 + 1;
LABEL_68:
                  *v31 = 0;
                  if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v31) & 1) == 0)
                  {
                    return 0;
                  }

                  *(this + 8) = *v31;
                  *(this + 24) |= 0x80u;
                  v21 = *(a2 + 1);
                  v9 = *(a2 + 2);
                  if (v21 < v9 && *v21 == 72)
                  {
                    v10 = v21 + 1;
                    *(a2 + 1) = v10;
LABEL_72:
                    if (v10 >= v9 || (v22 = *v10, v22 < 0))
                    {
                      result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 18);
                      if (!result)
                      {
                        return result;
                      }

                      v23 = *(a2 + 1);
                      v9 = *(a2 + 2);
                    }

                    else
                    {
                      *(this + 18) = v22;
                      v23 = v10 + 1;
                      *(a2 + 1) = v23;
                    }

                    *(this + 24) |= 0x100u;
                    if (v23 < v9 && *v23 == 80)
                    {
                      v14 = v23 + 1;
                      *(a2 + 1) = v14;
LABEL_85:
                      v31[0] = 0;
                      if (v14 >= v9 || (v26 = *v14, (v26 & 0x80000000) != 0))
                      {
                        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v31);
                        if (!result)
                        {
                          return result;
                        }

                        v26 = v31[0];
                      }

                      else
                      {
                        *(a2 + 1) = v14 + 1;
                      }

                      if (proto::gnss::Reliability_IsValid(v26))
                      {
                        *(this + 24) |= 0x200u;
                        *(this + 19) = v26;
                      }

                      v27 = *(a2 + 1);
                      v11 = *(a2 + 2);
                      if (v27 < v11 && *v27 == 88)
                      {
                        v24 = v27 + 1;
                        *(a2 + 1) = v24;
LABEL_95:
                        if (v24 >= v11 || (v28 = *v24, v28 < 0))
                        {
                          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 10);
                          if (!result)
                          {
                            return result;
                          }

                          v29 = *(a2 + 1);
                          v11 = *(a2 + 2);
                        }

                        else
                        {
                          *(this + 10) = v28;
                          v29 = v24 + 1;
                          *(a2 + 1) = v29;
                        }

                        *(this + 24) |= 0x400u;
                        if (v29 < v11 && *v29 == 96)
                        {
                          v12 = v29 + 1;
                          *(a2 + 1) = v12;
LABEL_103:
                          v31[0] = 0;
                          if (v12 >= v11 || (v30 = *v12, (v30 & 0x80000000) != 0))
                          {
                            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v31);
                            if (!result)
                            {
                              return result;
                            }

                            v30 = v31[0];
                          }

                          else
                          {
                            *(a2 + 1) = v12 + 1;
                          }

                          if (v30 <= 5)
                          {
                            *(this + 24) |= 0x800u;
                            *(this + 22) = v30;
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
        }
      }
    }

    if (v7 == 3 && v8 == 1)
    {
      goto LABEL_45;
    }

LABEL_76:
    if (v8 == 4)
    {
      return 1;
    }
  }

  while ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(a2, TagFallback) & 1) != 0);
  return 0;
}

uint64_t proto::gnss::Position::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 96);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(1, a2, *(this + 8), a3);
    v6 = *(v5 + 96);
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

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(2, a2, *(v5 + 16), a3);
  v6 = *(v5 + 96);
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
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(3, a2, *(v5 + 24), a3);
  v6 = *(v5 + 96);
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
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(4, a2, *(v5 + 32), a3);
  v6 = *(v5 + 96);
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
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(5, a2, *(v5 + 40), a3);
  v6 = *(v5 + 96);
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
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(6, a2, *(v5 + 48), a3);
  v6 = *(v5 + 96);
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
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(7, a2, *(v5 + 56), a3);
  v6 = *(v5 + 96);
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
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(8, a2, *(v5 + 64), a3);
  v6 = *(v5 + 96);
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
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(9, *(v5 + 72), a2, a4);
  v6 = *(v5 + 96);
  if ((v6 & 0x200) == 0)
  {
LABEL_11:
    if ((v6 & 0x400) == 0)
    {
      goto LABEL_12;
    }

LABEL_24:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(0xB, *(v5 + 80), a2, a4);
    if ((*(v5 + 96) & 0x800) == 0)
    {
      return this;
    }

    goto LABEL_25;
  }

LABEL_23:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(0xA, *(v5 + 76), a2, a4);
  v6 = *(v5 + 96);
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
  v7 = *(v5 + 88);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(0xC, v7, a2, a4);
}

uint64_t proto::gnss::Position::ByteSize(proto::gnss::Position *this, unint64_t a2)
{
  v3 = *(this + 24);
  if (v3)
  {
    v4 = (v3 << 31 >> 31) & 9;
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
      v4 += 9;
    }

    if ((v3 & 0x40) != 0)
    {
      v4 += 9;
    }

    if ((v3 & 0x80) != 0)
    {
      v5 = v4 + 9;
    }

    else
    {
      v5 = v4;
    }
  }

  else
  {
    v5 = 0;
  }

  if ((v3 & 0xFF00) != 0)
  {
    if ((v3 & 0x100) != 0)
    {
      v6 = *(this + 18);
      if (v6 >= 0x80)
      {
        v7 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v6) + 1;
        v3 = *(this + 24);
      }

      else
      {
        v7 = 2;
      }

      v5 = (v7 + v5);
      if ((v3 & 0x200) == 0)
      {
LABEL_21:
        if ((v3 & 0x400) == 0)
        {
          goto LABEL_22;
        }

        goto LABEL_34;
      }
    }

    else if ((v3 & 0x200) == 0)
    {
      goto LABEL_21;
    }

    v8 = *(this + 19);
    if ((v8 & 0x80000000) != 0)
    {
      v9 = 11;
    }

    else if (v8 >= 0x80)
    {
      v9 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v8) + 1;
      v3 = *(this + 24);
    }

    else
    {
      v9 = 2;
    }

    v5 = (v9 + v5);
    if ((v3 & 0x400) == 0)
    {
LABEL_22:
      if ((v3 & 0x800) == 0)
      {
        goto LABEL_41;
      }

LABEL_35:
      v10 = *(this + 22);
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

      v5 = (v11 + v5);
      goto LABEL_41;
    }

LABEL_34:
    v5 = v5 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 10)) + 1;
    if ((*(this + 24) & 0x800) == 0)
    {
      goto LABEL_41;
    }

    goto LABEL_35;
  }

LABEL_41:
  *(this + 23) = v5;
  return v5;
}

void proto::gnss::Position::CheckTypeAndMergeFrom(proto::gnss::Position *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  proto::gnss::Position::MergeFrom(this, lpsrc);
}

void proto::gnss::Position::CopyFrom(proto::gnss::Position *this, const proto::gnss::Position *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    proto::gnss::Position::MergeFrom(this, a2);
  }
}

double proto::gnss::Position::Swap(proto::gnss::Position *this, proto::gnss::Position *a2)
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
    result = *(this + 8);
    *(this + 8) = *(a2 + 8);
    *(a2 + 8) = result;
    v10 = *(this + 18);
    *(this + 18) = *(a2 + 18);
    *(a2 + 18) = v10;
    v11 = *(this + 19);
    *(this + 19) = *(a2 + 19);
    *(a2 + 19) = v11;
    v12 = *(this + 10);
    *(this + 10) = *(a2 + 10);
    *(a2 + 10) = v12;
    LODWORD(v12) = *(this + 22);
    *(this + 22) = *(a2 + 22);
    *(a2 + 22) = v12;
    LODWORD(v12) = *(this + 24);
    *(this + 24) = *(a2 + 24);
    *(a2 + 24) = v12;
    LODWORD(v12) = *(this + 23);
    *(this + 23) = *(a2 + 23);
    *(a2 + 23) = v12;
  }

  return result;
}

double proto::gnss::Velocity::SharedCtor(proto::gnss::Velocity *this)
{
  *(this + 7) = 0;
  result = 0.0;
  *(this + 40) = 0u;
  *(this + 24) = 0u;
  *(this + 8) = 0u;
  return result;
}

proto::gnss::Velocity *proto::gnss::Velocity::Velocity(proto::gnss::Velocity *this, const proto::gnss::Velocity *a2)
{
  *this = &unk_285861A40;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 7) = 0;
  proto::gnss::Velocity::MergeFrom(this, a2);
  return this;
}

double proto::gnss::Velocity::MergeFrom(proto::gnss::Velocity *this, const proto::gnss::Velocity *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v6);
  }

  LOBYTE(v5) = *(a2 + 60);
  if (v5)
  {
    if (*(a2 + 60))
    {
      result = *(a2 + 1);
      *(this + 15) |= 1u;
      *(this + 1) = result;
      v5 = *(a2 + 15);
      if ((v5 & 2) == 0)
      {
LABEL_6:
        if ((v5 & 4) == 0)
        {
          goto LABEL_7;
        }

        goto LABEL_14;
      }
    }

    else if ((*(a2 + 60) & 2) == 0)
    {
      goto LABEL_6;
    }

    result = *(a2 + 2);
    *(this + 15) |= 2u;
    *(this + 2) = result;
    v5 = *(a2 + 15);
    if ((v5 & 4) == 0)
    {
LABEL_7:
      if ((v5 & 8) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_15;
    }

LABEL_14:
    result = *(a2 + 3);
    *(this + 15) |= 4u;
    *(this + 3) = result;
    v5 = *(a2 + 15);
    if ((v5 & 8) == 0)
    {
LABEL_8:
      if ((v5 & 0x10) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_16;
    }

LABEL_15:
    result = *(a2 + 4);
    *(this + 15) |= 8u;
    *(this + 4) = result;
    v5 = *(a2 + 15);
    if ((v5 & 0x10) == 0)
    {
LABEL_9:
      if ((v5 & 0x20) == 0)
      {
        return result;
      }

      goto LABEL_10;
    }

LABEL_16:
    result = *(a2 + 5);
    *(this + 15) |= 0x10u;
    *(this + 5) = result;
    if ((*(a2 + 15) & 0x20) == 0)
    {
      return result;
    }

LABEL_10:
    result = *(a2 + 6);
    *(this + 15) |= 0x20u;
    *(this + 6) = result;
  }

  return result;
}

void sub_24553B4B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void proto::gnss::Velocity::~Velocity(proto::gnss::Velocity *this)
{
  *this = &unk_285861A40;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_285861A40;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_285861A40;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  JUMPOUT(0x245D6AEE0);
}

uint64_t proto::gnss::Velocity::default_instance(proto::gnss::Velocity *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = proto::gnss::Velocity::default_instance_;
  if (!proto::gnss::Velocity::default_instance_)
  {
    proto::gnss::protobuf_AddDesc_GnssTypes_2eproto(0, a2, a3, a4);
    return proto::gnss::Velocity::default_instance_;
  }

  return result;
}

uint64_t proto::gnss::Velocity::Clear(uint64_t this)
{
  if (*(this + 60))
  {
    *(this + 40) = 0u;
    *(this + 24) = 0u;
    *(this + 8) = 0u;
  }

  *(this + 60) = 0;
  return this;
}

uint64_t proto::gnss::Velocity::MergePartialFromCodedStream(proto::gnss::Velocity *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
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
          if (TagFallback >> 3 <= 3)
          {
            break;
          }

          if (v7 == 4)
          {
            if (v8 == 1)
            {
              goto LABEL_33;
            }

            goto LABEL_38;
          }

          if (v7 == 5)
          {
            if (v8 == 1)
            {
              goto LABEL_41;
            }

            goto LABEL_38;
          }

          if (v7 != 6 || v8 != 1)
          {
            goto LABEL_38;
          }

LABEL_45:
          v15 = 0;
          if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, &v15) & 1) == 0)
          {
            return 0;
          }

          *(this + 6) = v15;
          *(this + 15) |= 0x20u;
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
          goto LABEL_38;
        }

        v15 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, &v15) & 1) == 0)
        {
          return 0;
        }

        *(this + 1) = v15;
        *(this + 15) |= 1u;
        v9 = *(a2 + 1);
        if (v9 < *(a2 + 2) && *v9 == 17)
        {
          *(a2 + 1) = v9 + 1;
          goto LABEL_25;
        }
      }

      if (v7 != 2)
      {
        break;
      }

      if (v8 != 1)
      {
        goto LABEL_38;
      }

LABEL_25:
      v15 = 0;
      if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, &v15) & 1) == 0)
      {
        return 0;
      }

      *(this + 2) = v15;
      *(this + 15) |= 2u;
      v10 = *(a2 + 1);
      if (v10 < *(a2 + 2) && *v10 == 25)
      {
        *(a2 + 1) = v10 + 1;
LABEL_29:
        v15 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, &v15) & 1) == 0)
        {
          return 0;
        }

        *(this + 3) = v15;
        *(this + 15) |= 4u;
        v11 = *(a2 + 1);
        if (v11 < *(a2 + 2) && *v11 == 33)
        {
          *(a2 + 1) = v11 + 1;
LABEL_33:
          v15 = 0;
          if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, &v15) & 1) == 0)
          {
            return 0;
          }

          *(this + 4) = v15;
          *(this + 15) |= 8u;
          v12 = *(a2 + 1);
          if (v12 < *(a2 + 2) && *v12 == 41)
          {
            *(a2 + 1) = v12 + 1;
LABEL_41:
            v15 = 0;
            if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, &v15) & 1) == 0)
            {
              return 0;
            }

            *(this + 5) = v15;
            *(this + 15) |= 0x10u;
            v13 = *(a2 + 1);
            if (v13 < *(a2 + 2) && *v13 == 49)
            {
              *(a2 + 1) = v13 + 1;
              goto LABEL_45;
            }
          }
        }
      }
    }

    if (v7 == 3 && v8 == 1)
    {
      goto LABEL_29;
    }

LABEL_38:
    if (v8 == 4)
    {
      return 1;
    }
  }

  while ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(a2, TagFallback) & 1) != 0);
  return 0;
}

uint64_t proto::gnss::Velocity::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3)
{
  v4 = this;
  v5 = *(this + 60);
  if (v5)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(1, a2, *(this + 8), a3);
    v5 = *(v4 + 60);
    if ((v5 & 2) == 0)
    {
LABEL_3:
      if ((v5 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_10;
    }
  }

  else if ((v5 & 2) == 0)
  {
    goto LABEL_3;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(2, a2, *(v4 + 16), a3);
  v5 = *(v4 + 60);
  if ((v5 & 4) == 0)
  {
LABEL_4:
    if ((v5 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_10:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(3, a2, *(v4 + 24), a3);
  v5 = *(v4 + 60);
  if ((v5 & 8) == 0)
  {
LABEL_5:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_6;
    }

LABEL_12:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(5, a2, *(v4 + 40), a3);
    if ((*(v4 + 60) & 0x20) == 0)
    {
      return this;
    }

    goto LABEL_13;
  }

LABEL_11:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(4, a2, *(v4 + 32), a3);
  v5 = *(v4 + 60);
  if ((v5 & 0x10) != 0)
  {
    goto LABEL_12;
  }

LABEL_6:
  if ((v5 & 0x20) == 0)
  {
    return this;
  }

LABEL_13:
  v6 = *(v4 + 48);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(6, a2, v6, a3);
}

uint64_t proto::gnss::Velocity::ByteSize(proto::gnss::Velocity *this)
{
  v1 = *(this + 60);
  if (*(this + 60))
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
      v2 += 9;
    }

    if ((v1 & 0x10) != 0)
    {
      v2 += 9;
    }

    if ((v1 & 0x20) != 0)
    {
      v1 = v2 + 9;
    }

    else
    {
      v1 = v2;
    }
  }

  *(this + 14) = v1;
  return v1;
}

double proto::gnss::Velocity::CheckTypeAndMergeFrom(proto::gnss::Velocity *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  return proto::gnss::Velocity::MergeFrom(this, lpsrc);
}

double proto::gnss::Velocity::CopyFrom(proto::gnss::Velocity *this, const proto::gnss::Velocity *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    return proto::gnss::Velocity::MergeFrom(this, a2);
  }

  return result;
}

double proto::gnss::Velocity::Swap(proto::gnss::Velocity *this, proto::gnss::Velocity *a2)
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
    result = *(this + 6);
    *(this + 6) = *(a2 + 6);
    *(a2 + 6) = result;
    v8 = *(this + 15);
    *(this + 15) = *(a2 + 15);
    *(a2 + 15) = v8;
    v9 = *(this + 14);
    *(this + 14) = *(a2 + 14);
    *(a2 + 14) = v9;
  }

  return result;
}

double proto::gnss::Time::SharedCtor(proto::gnss::Time *this)
{
  *(this + 1) = 0;
  *(this + 4) = 0;
  *(this + 20) = 0;
  result = 0.0;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 18) = 0;
  return result;
}

proto::gnss::Time *proto::gnss::Time::Time(proto::gnss::Time *this, const proto::gnss::Time *a2)
{
  *this = &unk_285861AB8;
  *(this + 1) = 0;
  *(this + 4) = 0;
  *(this + 20) = 0;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 18) = 0;
  proto::gnss::Time::MergeFrom(this, a2);
  return this;
}

void proto::gnss::Time::MergeFrom(proto::gnss::Time *this, const proto::gnss::Time *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v14);
  }

  v4 = *(a2 + 18);
  if (!v4)
  {
    goto LABEL_13;
  }

  if (v4)
  {
    v7 = *(a2 + 1);
    *(this + 18) |= 1u;
    *(this + 1) = v7;
    v4 = *(a2 + 18);
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

  v8 = *(a2 + 4);
  *(this + 18) |= 2u;
  *(this + 4) = v8;
  v4 = *(a2 + 18);
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
  v9 = *(a2 + 20);
  *(this + 18) |= 4u;
  *(this + 20) = v9;
  v4 = *(a2 + 18);
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
  v10 = *(a2 + 16);
  *(this + 18) |= 8u;
  *(this + 16) = v10;
  v4 = *(a2 + 18);
  if ((v4 & 0x10) == 0)
  {
LABEL_9:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_10;
    }

LABEL_21:
    v12 = *(a2 + 4);
    *(this + 18) |= 0x20u;
    *(this + 4) = v12;
    v4 = *(a2 + 18);
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
  v11 = *(a2 + 3);
  *(this + 18) |= 0x10u;
  *(this + 3) = v11;
  v4 = *(a2 + 18);
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
  v13 = *(a2 + 5);
  *(this + 18) |= 0x40u;
  *(this + 5) = v13;
  v4 = *(a2 + 18);
  if ((v4 & 0x80) != 0)
  {
LABEL_12:
    v5 = *(a2 + 6);
    *(this + 18) |= 0x80u;
    *(this + 6) = v5;
    v4 = *(a2 + 18);
  }

LABEL_13:
  if ((v4 & 0x100) != 0)
  {
    v6 = *(a2 + 7);
    *(this + 18) |= 0x100u;
    *(this + 7) = v6;
  }
}

void sub_24553BE44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void proto::gnss::Time::~Time(proto::gnss::Time *this)
{
  *this = &unk_285861AB8;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_285861AB8;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_285861AB8;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  JUMPOUT(0x245D6AEE0);
}

uint64_t proto::gnss::Time::default_instance(proto::gnss::Time *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = proto::gnss::Time::default_instance_;
  if (!proto::gnss::Time::default_instance_)
  {
    proto::gnss::protobuf_AddDesc_GnssTypes_2eproto(0, a2, a3, a4);
    return proto::gnss::Time::default_instance_;
  }

  return result;
}

uint64_t proto::gnss::Time::Clear(uint64_t this)
{
  v1 = *(this + 72);
  if (v1)
  {
    *(this + 8) = 0;
    *(this + 16) = 0;
    *(this + 20) = 0;
    *(this + 64) = 0;
    *(this + 24) = 0u;
    *(this + 40) = 0u;
  }

  if ((v1 & 0xFF00) != 0)
  {
    *(this + 56) = 0;
  }

  *(this + 72) = 0;
  return this;
}

uint64_t proto::gnss::Time::MergePartialFromCodedStream(proto::gnss::Time *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
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

              v12 = *(a2 + 1);
              v11 = *(a2 + 2);
              goto LABEL_58;
            }

            if ((TagFallback & 7) != 0)
            {
              goto LABEL_37;
            }

            v17 = *(a2 + 1);
            v11 = *(a2 + 2);
LABEL_50:
            v34[0] = 0;
            if (v17 >= v11 || (v22 = *v17, (v22 & 0x80000000) != 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v34);
              if (!result)
              {
                return result;
              }

              v22 = v34[0];
              v23 = *(a2 + 1);
              v11 = *(a2 + 2);
            }

            else
            {
              v23 = v17 + 1;
              *(a2 + 1) = v23;
            }

            *(this + 20) = v22 != 0;
            *(this + 18) |= 4u;
            if (v23 < v11 && *v23 == 32)
            {
              v12 = v23 + 1;
              *(a2 + 1) = v12;
LABEL_58:
              v34[0] = 0;
              if (v12 >= v11 || (v24 = *v12, (v24 & 0x80000000) != 0))
              {
                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v34);
                if (!result)
                {
                  return result;
                }

                v24 = v34[0];
                v25 = *(a2 + 1);
                v11 = *(a2 + 2);
              }

              else
              {
                v25 = v12 + 1;
                *(a2 + 1) = v25;
              }

              *(this + 16) = v24;
              *(this + 18) |= 8u;
              if (v25 < v11 && *v25 == 40)
              {
                v18 = v25 + 1;
                *(a2 + 1) = v18;
                goto LABEL_66;
              }
            }
          }

          else
          {
            if (v7 != 1)
            {
              if (v7 != 2 || v8 != 5)
              {
                goto LABEL_37;
              }

              goto LABEL_46;
            }

            if ((TagFallback & 7) != 0)
            {
              goto LABEL_37;
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

            *(this + 18) |= 1u;
            if (v16 < v13 && *v16 == 21)
            {
              *(a2 + 1) = v16 + 1;
LABEL_46:
              v34[0] = 0;
              if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a2, v34) & 1) == 0)
              {
                return 0;
              }

              *(this + 4) = v34[0];
              *(this + 18) |= 2u;
              v21 = *(a2 + 1);
              v11 = *(a2 + 2);
              if (v21 < v11 && *v21 == 24)
              {
                v17 = v21 + 1;
                *(a2 + 1) = v17;
                goto LABEL_50;
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
          if (v7 != 6 || v8 != 1)
          {
            goto LABEL_37;
          }

          goto LABEL_74;
        }

        if ((TagFallback & 7) != 0)
        {
          goto LABEL_37;
        }

        v18 = *(a2 + 1);
        v11 = *(a2 + 2);
LABEL_66:
        if (v18 >= v11 || (v26 = *v18, v26 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 3);
          if (!result)
          {
            return result;
          }

          v27 = *(a2 + 1);
          v11 = *(a2 + 2);
        }

        else
        {
          *(this + 3) = v26;
          v27 = v18 + 1;
          *(a2 + 1) = v27;
        }

        *(this + 18) |= 0x10u;
        if (v27 < v11 && *v27 == 49)
        {
          *(a2 + 1) = v27 + 1;
LABEL_74:
          *v34 = 0;
          if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v34) & 1) == 0)
          {
            return 0;
          }

          *(this + 4) = *v34;
          *(this + 18) |= 0x20u;
          v28 = *(a2 + 1);
          if (v28 < *(a2 + 2) && *v28 == 57)
          {
            *(a2 + 1) = v28 + 1;
LABEL_78:
            *v34 = 0;
            if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v34) & 1) == 0)
            {
              return 0;
            }

            *(this + 5) = *v34;
            *(this + 18) |= 0x40u;
            v29 = *(a2 + 1);
            v9 = *(a2 + 2);
            if (v29 < v9 && *v29 == 64)
            {
              v19 = v29 + 1;
              *(a2 + 1) = v19;
              goto LABEL_82;
            }
          }
        }
      }

      if (v7 == 7)
      {
        if (v8 != 1)
        {
          goto LABEL_37;
        }

        goto LABEL_78;
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
      v9 = *(a2 + 2);
LABEL_82:
      if (v19 >= v9 || (v30 = *v19, v30 < 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 6);
        if (!result)
        {
          return result;
        }

        v31 = *(a2 + 1);
        v9 = *(a2 + 2);
      }

      else
      {
        *(this + 6) = v30;
        v31 = v19 + 1;
        *(a2 + 1) = v31;
      }

      *(this + 18) |= 0x80u;
      if (v31 < v9 && *v31 == 72)
      {
        v10 = v31 + 1;
        *(a2 + 1) = v10;
LABEL_90:
        if (v10 >= v9 || (v32 = *v10, v32 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 7);
          if (!result)
          {
            return result;
          }

          v33 = *(a2 + 1);
          v9 = *(a2 + 2);
        }

        else
        {
          *(this + 7) = v32;
          v33 = v10 + 1;
          *(a2 + 1) = v33;
        }

        *(this + 18) |= 0x100u;
        if (v33 == v9 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
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
      v10 = *(a2 + 1);
      v9 = *(a2 + 2);
      goto LABEL_90;
    }

LABEL_37:
    if (v8 == 4)
    {
      return 1;
    }
  }

  while ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(a2, TagFallback) & 1) != 0);
  return 0;
}

uint64_t proto::gnss::Time::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 72);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(1, *(this + 8), a2, a4);
    v6 = *(v5 + 72);
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

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(2, a2, *(v5 + 16), a3);
  v6 = *(v5 + 72);
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
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(3, *(v5 + 20), a2, a4);
  v6 = *(v5 + 72);
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
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(4, *(v5 + 64), a2, a4);
  v6 = *(v5 + 72);
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
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(5, *(v5 + 24), a2, a4);
  v6 = *(v5 + 72);
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
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(6, a2, *(v5 + 32), a3);
  v6 = *(v5 + 72);
  if ((v6 & 0x40) == 0)
  {
LABEL_8:
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_9;
    }

LABEL_18:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(8, *(v5 + 48), a2, a4);
    if ((*(v5 + 72) & 0x100) == 0)
    {
      return this;
    }

    goto LABEL_19;
  }

LABEL_17:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(7, a2, *(v5 + 40), a3);
  v6 = *(v5 + 72);
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
  v7 = *(v5 + 56);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(9, v7, a2, a4);
}

uint64_t proto::gnss::Time::ByteSize(proto::gnss::Time *this, unint64_t a2)
{
  v3 = *(this + 18);
  if (v3)
  {
    if (v3)
    {
      v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 1)) + 1;
      v3 = *(this + 18);
    }

    else
    {
      v4 = 0;
    }

    if ((v3 & 2) != 0)
    {
      v4 += 5;
    }

    v6 = v4 + ((v3 >> 1) & 2);
    if ((v3 & 8) != 0)
    {
      v7 = *(this + 16);
      if ((v7 & 0x80000000) != 0)
      {
        v8 = 11;
      }

      else if (v7 >= 0x80)
      {
        v8 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v7) + 1;
        v3 = *(this + 18);
      }

      else
      {
        v8 = 2;
      }

      v6 += v8;
    }

    if ((v3 & 0x10) != 0)
    {
      v6 += wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 3)) + 1;
      v3 = *(this + 18);
    }

    v9 = v6 + 9;
    if ((v3 & 0x20) == 0)
    {
      v9 = v6;
    }

    if ((v3 & 0x40) != 0)
    {
      v5 = v9 + 9;
    }

    else
    {
      v5 = v9;
    }

    if ((v3 & 0x80) != 0)
    {
      v5 = v5 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 6)) + 1;
      v3 = *(this + 18);
    }
  }

  else
  {
    v5 = 0;
  }

  if ((v3 & 0x100) != 0)
  {
    v5 = v5 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 7)) + 1;
  }

  *(this + 17) = v5;
  return v5;
}

void proto::gnss::Time::CheckTypeAndMergeFrom(proto::gnss::Time *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  proto::gnss::Time::MergeFrom(this, lpsrc);
}

void proto::gnss::Time::CopyFrom(proto::gnss::Time *this, const proto::gnss::Time *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    proto::gnss::Time::MergeFrom(this, a2);
  }
}

double proto::gnss::Time::Swap(proto::gnss::Time *this, proto::gnss::Time *a2)
{
  if (a2 != this)
  {
    v2 = *(this + 1);
    *(this + 1) = *(a2 + 1);
    *(a2 + 1) = v2;
    v3 = *(this + 4);
    *(this + 4) = *(a2 + 4);
    *(a2 + 4) = v3;
    LOBYTE(v2) = *(this + 20);
    *(this + 20) = *(a2 + 20);
    *(a2 + 20) = v2;
    LODWORD(v2) = *(this + 16);
    *(this + 16) = *(a2 + 16);
    *(a2 + 16) = v2;
    v4 = *(this + 3);
    *(this + 3) = *(a2 + 3);
    *(a2 + 3) = v4;
    v5 = *(this + 4);
    *(this + 4) = *(a2 + 4);
    *(a2 + 4) = v5;
    result = *(this + 5);
    *(this + 5) = *(a2 + 5);
    *(a2 + 5) = result;
    v7 = *(this + 6);
    *(this + 6) = *(a2 + 6);
    *(a2 + 6) = v7;
    v8 = *(this + 7);
    *(this + 7) = *(a2 + 7);
    *(a2 + 7) = v8;
    LODWORD(v8) = *(this + 18);
    *(this + 18) = *(a2 + 18);
    *(a2 + 18) = v8;
    LODWORD(v8) = *(this + 17);
    *(this + 17) = *(a2 + 17);
    *(a2 + 17) = v8;
  }

  return result;
}

double proto::gnss::Fix::SharedCtor(proto::gnss::Fix *this)
{
  result = 0.0;
  *(this + 36) = 0u;
  *(this + 24) = 0u;
  *(this + 8) = 0u;
  return result;
}

proto::gnss::Fix *proto::gnss::Fix::Fix(proto::gnss::Fix *this, const proto::gnss::Fix *a2)
{
  *this = &unk_285861B30;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 36) = 0u;
  proto::gnss::Fix::MergeFrom(this, a2);
  return this;
}

void proto::gnss::Fix::MergeFrom(proto::gnss::Fix *this, const proto::gnss::Fix *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v13);
  }

  LOBYTE(v4) = *(a2 + 48);
  if (v4)
  {
    if (*(a2 + 48))
    {
      *(this + 12) |= 1u;
      v5 = *(this + 1);
      if (!v5)
      {
        operator new();
      }

      v6 = *(a2 + 1);
      if (!v6)
      {
        v6 = *(proto::gnss::Fix::default_instance_ + 8);
      }

      proto::gnss::Time::MergeFrom(v5, v6);
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

    *(this + 12) |= 2u;
    v7 = *(this + 2);
    if (!v7)
    {
      operator new();
    }

    v8 = *(a2 + 2);
    if (!v8)
    {
      v8 = *(proto::gnss::Fix::default_instance_ + 16);
    }

    proto::gnss::Position::MergeFrom(v7, v8);
    v4 = *(a2 + 12);
    if ((v4 & 4) == 0)
    {
LABEL_7:
      if ((v4 & 8) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_25;
    }

LABEL_20:
    *(this + 12) |= 4u;
    v9 = *(this + 3);
    if (!v9)
    {
      operator new();
    }

    v10 = *(a2 + 3);
    if (!v10)
    {
      v10 = *(proto::gnss::Fix::default_instance_ + 24);
    }

    proto::gnss::Velocity::MergeFrom(v9, v10);
    v4 = *(a2 + 12);
    if ((v4 & 8) == 0)
    {
LABEL_8:
      if ((v4 & 0x10) == 0)
      {
        return;
      }

LABEL_26:
      v12 = *(a2 + 10);
      if (v12 >= 5)
      {
        __assert_rtn("set_estimation_technology", "GnssTypes.pb.h", 2533, "::proto::gnss::EstimationTechnology_IsValid(value)");
      }

      *(this + 12) |= 0x10u;
      *(this + 10) = v12;
      return;
    }

LABEL_25:
    v11 = *(a2 + 4);
    *(this + 12) |= 8u;
    *(this + 4) = v11;
    if ((*(a2 + 12) & 0x10) == 0)
    {
      return;
    }

    goto LABEL_26;
  }
}

void sub_24553CB94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void proto::gnss::Fix::~Fix(proto::gnss::Fix *this)
{
  *this = &unk_285861B30;
  proto::gnss::Fix::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_285861B30;
  proto::gnss::Fix::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_285861B30;
  proto::gnss::Fix::SharedDtor(this);
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  JUMPOUT(0x245D6AEE0);
}

void *proto::gnss::Fix::SharedDtor(void *this)
{
  if (proto::gnss::Fix::default_instance_ != this)
  {
    v1 = this;
    v2 = this[1];
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }

    v3 = v1[2];
    if (v3)
    {
      (*(*v3 + 8))(v3);
    }

    this = v1[3];
    if (this)
    {
      v4 = *(*this + 8);

      return v4();
    }
  }

  return this;
}

uint64_t proto::gnss::Fix::default_instance(proto::gnss::Fix *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = proto::gnss::Fix::default_instance_;
  if (!proto::gnss::Fix::default_instance_)
  {
    proto::gnss::protobuf_AddDesc_GnssTypes_2eproto(0, a2, a3, a4);
    return proto::gnss::Fix::default_instance_;
  }

  return result;
}

uint64_t proto::gnss::Fix::Clear(uint64_t this)
{
  LOBYTE(v1) = *(this + 48);
  if (v1)
  {
    if (*(this + 48))
    {
      v2 = *(this + 8);
      if (v2)
      {
        v3 = *(v2 + 72);
        if (v3)
        {
          *(v2 + 8) = 0;
          *(v2 + 16) = 0;
          *(v2 + 20) = 0;
          *(v2 + 64) = 0;
          *(v2 + 24) = 0u;
          *(v2 + 40) = 0u;
        }

        if ((v3 & 0xFF00) != 0)
        {
          *(v2 + 56) = 0;
        }

        *(v2 + 72) = 0;
        v1 = *(this + 48);
      }
    }

    if ((v1 & 2) != 0)
    {
      v4 = *(this + 16);
      if (v4)
      {
        v5 = *(v4 + 96);
        if (v5)
        {
          *(v4 + 56) = 0u;
          *(v4 + 40) = 0u;
          *(v4 + 24) = 0u;
          *(v4 + 8) = 0u;
        }

        if ((v5 & 0xFF00) != 0)
        {
          *(v4 + 72) = 0;
          *(v4 + 80) = 0;
          *(v4 + 88) = 0;
        }

        *(v4 + 96) = 0;
        v1 = *(this + 48);
      }
    }

    if ((v1 & 4) != 0)
    {
      v6 = *(this + 24);
      if (v6)
      {
        if (*(v6 + 60))
        {
          *(v6 + 40) = 0u;
          *(v6 + 24) = 0u;
          *(v6 + 8) = 0u;
        }

        *(v6 + 60) = 0;
      }
    }

    *(this + 32) = 0;
    *(this + 40) = 0;
  }

  *(this + 48) = 0;
  return this;
}

uint64_t proto::gnss::Fix::MergePartialFromCodedStream(proto::gnss::Fix *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
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
        if (TagFallback >> 3 > 2)
        {
          break;
        }

        if (v7 != 1)
        {
          if (v7 != 2 || v8 != 2)
          {
            goto LABEL_21;
          }

          goto LABEL_38;
        }

        if (v8 != 2)
        {
          goto LABEL_21;
        }

        *(this + 12) |= 1u;
        v12 = *(this + 1);
        if (!v12)
        {
          operator new();
        }

        v41 = 0;
        v13 = *(a2 + 1);
        if (v13 >= *(a2 + 2) || *v13 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v41))
          {
            return 0;
          }
        }

        else
        {
          v41 = *v13;
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
        if (!proto::gnss::Time::MergePartialFromCodedStream(v12, a2, v16) || *(a2 + 36) != 1)
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
          *(a2 + 1) = v20 + 1;
LABEL_38:
          *(this + 12) |= 2u;
          v21 = *(this + 2);
          if (!v21)
          {
            operator new();
          }

          v41 = 0;
          v22 = *(a2 + 1);
          if (v22 >= *(a2 + 2) || *v22 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v41))
            {
              return 0;
            }
          }

          else
          {
            v41 = *v22;
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
          if (!proto::gnss::Position::MergePartialFromCodedStream(v21, a2, v25) || *(a2 + 36) != 1)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
          v26 = *(a2 + 14);
          v18 = __OFSUB__(v26, 1);
          v27 = v26 - 1;
          if (v27 < 0 == v18)
          {
            *(a2 + 14) = v27;
          }

          v28 = *(a2 + 1);
          if (v28 < *(a2 + 2) && *v28 == 26)
          {
            *(a2 + 1) = v28 + 1;
LABEL_52:
            *(this + 12) |= 4u;
            v29 = *(this + 3);
            if (!v29)
            {
              operator new();
            }

            v41 = 0;
            v30 = *(a2 + 1);
            if (v30 >= *(a2 + 2) || *v30 < 0)
            {
              if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v41))
              {
                return 0;
              }
            }

            else
            {
              v41 = *v30;
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
            if (!proto::gnss::Velocity::MergePartialFromCodedStream(v29, a2, v33) || *(a2 + 36) != 1)
            {
              return 0;
            }

            wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
            v34 = *(a2 + 14);
            v18 = __OFSUB__(v34, 1);
            v35 = v34 - 1;
            if (v35 < 0 == v18)
            {
              *(a2 + 14) = v35;
            }

            v36 = *(a2 + 1);
            v9 = *(a2 + 2);
            if (v36 < v9 && *v36 == 32)
            {
              v11 = v36 + 1;
              *(a2 + 1) = v11;
              goto LABEL_66;
            }
          }
        }
      }

      if (v7 == 3)
      {
        if (v8 != 2)
        {
          goto LABEL_21;
        }

        goto LABEL_52;
      }

      if (v7 != 4)
      {
        break;
      }

      if ((TagFallback & 7) != 0)
      {
        goto LABEL_21;
      }

      v11 = *(a2 + 1);
      v9 = *(a2 + 2);
LABEL_66:
      if (v11 >= v9 || (v37 = *v11, v37 < 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 4);
        if (!result)
        {
          return result;
        }

        v38 = *(a2 + 1);
        v9 = *(a2 + 2);
      }

      else
      {
        *(this + 4) = v37;
        v38 = v11 + 1;
        *(a2 + 1) = v38;
      }

      *(this + 12) |= 8u;
      if (v38 < v9 && *v38 == 40)
      {
        v10 = v38 + 1;
        *(a2 + 1) = v10;
LABEL_74:
        v41 = 0;
        if (v10 >= v9 || (v40 = *v10, (v40 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v41);
          if (!result)
          {
            return result;
          }

          v40 = v41;
        }

        else
        {
          *(a2 + 1) = v10 + 1;
        }

        if (v40 <= 4)
        {
          *(this + 12) |= 0x10u;
          *(this + 10) = v40;
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

    if (v7 == 5 && (TagFallback & 7) == 0)
    {
      v10 = *(a2 + 1);
      v9 = *(a2 + 2);
      goto LABEL_74;
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

uint64_t proto::gnss::Fix::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 48);
  if (v6)
  {
    v7 = *(this + 8);
    if (!v7)
    {
      v7 = *(proto::gnss::Fix::default_instance_ + 8);
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
    v8 = *(proto::gnss::Fix::default_instance_ + 16);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(2, v8, a2, a4);
  v6 = *(v5 + 48);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

LABEL_16:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(4, *(v5 + 32), a2, a4);
    if ((*(v5 + 48) & 0x10) == 0)
    {
      return this;
    }

    goto LABEL_17;
  }

LABEL_13:
  v9 = *(v5 + 24);
  if (!v9)
  {
    v9 = *(proto::gnss::Fix::default_instance_ + 24);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(3, v9, a2, a4);
  v6 = *(v5 + 48);
  if ((v6 & 8) != 0)
  {
    goto LABEL_16;
  }

LABEL_5:
  if ((v6 & 0x10) == 0)
  {
    return this;
  }

LABEL_17:
  v10 = *(v5 + 40);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(5, v10, a2, a4);
}

uint64_t proto::gnss::Fix::ByteSize(proto::gnss::Fix *this, unint64_t a2)
{
  LOBYTE(v3) = *(this + 48);
  if (!v3)
  {
    v4 = 0;
    goto LABEL_32;
  }

  if ((*(this + 48) & 1) == 0)
  {
    v4 = 0;
    if ((*(this + 48) & 2) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_12;
  }

  v5 = *(this + 1);
  if (!v5)
  {
    v5 = *(proto::gnss::Fix::default_instance_ + 8);
  }

  v6 = proto::gnss::Time::ByteSize(v5, a2);
  v7 = v6;
  if (v6 >= 0x80)
  {
    v8 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v6);
  }

  else
  {
    v8 = 1;
  }

  v4 = (v7 + v8 + 1);
  v3 = *(this + 12);
  if ((v3 & 2) != 0)
  {
LABEL_12:
    v9 = *(this + 2);
    if (!v9)
    {
      v9 = *(proto::gnss::Fix::default_instance_ + 16);
    }

    v10 = proto::gnss::Position::ByteSize(v9, a2);
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
    v3 = *(this + 12);
  }

LABEL_18:
  if ((v3 & 4) == 0)
  {
    if ((v3 & 8) == 0)
    {
      goto LABEL_20;
    }

LABEL_25:
    v4 = v4 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 4)) + 1;
    if ((*(this + 12) & 0x10) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_26;
  }

  v13 = *(this + 3);
  if (!v13)
  {
    v13 = *(proto::gnss::Fix::default_instance_ + 24);
  }

  v4 = v4 + proto::gnss::Velocity::ByteSize(v13) + 2;
  v3 = *(this + 12);
  if ((v3 & 8) != 0)
  {
    goto LABEL_25;
  }

LABEL_20:
  if ((v3 & 0x10) == 0)
  {
    goto LABEL_32;
  }

LABEL_26:
  v14 = *(this + 10);
  if ((v14 & 0x80000000) != 0)
  {
    v15 = 11;
  }

  else if (v14 >= 0x80)
  {
    v15 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v14) + 1;
  }

  else
  {
    v15 = 2;
  }

  v4 = (v15 + v4);
LABEL_32:
  *(this + 11) = v4;
  return v4;
}

void proto::gnss::Fix::CheckTypeAndMergeFrom(proto::gnss::Fix *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  proto::gnss::Fix::MergeFrom(this, lpsrc);
}

void proto::gnss::Fix::CopyFrom(proto::gnss::Fix *this, const proto::gnss::Fix *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    proto::gnss::Fix::MergeFrom(this, a2);
  }
}

uint64_t proto::gnss::Fix::Swap(uint64_t this, proto::gnss::Fix *a2)
{
  if (a2 != this)
  {
    v2 = *(this + 8);
    *(this + 8) = *(a2 + 1);
    *(a2 + 1) = v2;
    v3 = *(this + 16);
    *(this + 16) = *(a2 + 2);
    *(a2 + 2) = v3;
    v4 = *(this + 24);
    v5 = *(this + 32);
    v6 = *(a2 + 4);
    *(this + 24) = *(a2 + 3);
    *(this + 32) = v6;
    *(a2 + 3) = v4;
    *(a2 + 4) = v5;
    LODWORD(v4) = *(this + 40);
    *(this + 40) = *(a2 + 10);
    *(a2 + 10) = v4;
    LODWORD(v4) = *(this + 48);
    *(this + 48) = *(a2 + 12);
    *(a2 + 12) = v4;
    LODWORD(v4) = *(this + 44);
    *(this + 44) = *(a2 + 11);
    *(a2 + 11) = v4;
  }

  return this;
}

double proto::gnss::TimeTransferData::SharedCtor(proto::gnss::TimeTransferData *this)
{
  *(this + 16) = 0;
  *(this + 1) = 0;
  result = 0.0;
  *(this + 20) = 0u;
  *(this + 36) = 0u;
  return result;
}

proto::gnss::TimeTransferData *proto::gnss::TimeTransferData::TimeTransferData(proto::gnss::TimeTransferData *this, const proto::gnss::TimeTransferData *a2)
{
  *(this + 16) = 0;
  *this = &unk_285861BA8;
  *(this + 1) = 0;
  *(this + 20) = 0u;
  *(this + 36) = 0u;
  proto::gnss::TimeTransferData::MergeFrom(this, a2);
  return this;
}

void proto::gnss::TimeTransferData::MergeFrom(proto::gnss::TimeTransferData *this, const proto::gnss::TimeTransferData *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v12);
  }

  LOBYTE(v4) = *(a2 + 48);
  if (!v4)
  {
    return;
  }

  if (*(a2 + 48))
  {
    v6 = *(a2 + 16);
    *(this + 12) |= 1u;
    *(this + 16) = v6;
    v4 = *(a2 + 12);
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

  else if ((*(a2 + 48) & 2) == 0)
  {
    goto LABEL_6;
  }

  *(this + 12) |= 2u;
  v7 = *(this + 1);
  if (!v7)
  {
    operator new();
  }

  v8 = *(a2 + 1);
  if (!v8)
  {
    v8 = *(proto::gnss::TimeTransferData::default_instance_ + 8);
  }

  proto::gnss::Time::MergeFrom(v7, v8);
  v4 = *(a2 + 12);
  if ((v4 & 4) == 0)
  {
LABEL_7:
    if ((v4 & 8) == 0)
    {
      goto LABEL_8;
    }

LABEL_20:
    v10 = *(a2 + 10);
    *(this + 12) |= 8u;
    *(this + 10) = v10;
    v4 = *(a2 + 12);
    if ((v4 & 0x10) == 0)
    {
LABEL_9:
      if ((v4 & 0x20) == 0)
      {
        return;
      }

      goto LABEL_10;
    }

    goto LABEL_21;
  }

LABEL_18:
  v9 = *(a2 + 5);
  if (v9 >= 7)
  {
    __assert_rtn("set_quality", "GnssTypes.pb.h", 2624, "::proto::gnss::TimeQuality_IsValid(value)");
  }

  *(this + 12) |= 4u;
  *(this + 5) = v9;
  v4 = *(a2 + 12);
  if ((v4 & 8) != 0)
  {
    goto LABEL_20;
  }

LABEL_8:
  if ((v4 & 0x10) == 0)
  {
    goto LABEL_9;
  }

LABEL_21:
  v11 = *(a2 + 3);
  *(this + 12) |= 0x10u;
  *(this + 3) = v11;
  if ((*(a2 + 12) & 0x20) != 0)
  {
LABEL_10:
    v5 = *(a2 + 4);
    *(this + 12) |= 0x20u;
    *(this + 4) = v5;
  }
}

void sub_24553DA90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void proto::gnss::TimeTransferData::~TimeTransferData(proto::gnss::TimeTransferData *this)
{
  *this = &unk_285861BA8;
  if (proto::gnss::TimeTransferData::default_instance_ != this)
  {
    v2 = *(this + 1);
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }
  }

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  proto::gnss::TimeTransferData::~TimeTransferData(this);

  JUMPOUT(0x245D6AEE0);
}

void *proto::gnss::TimeTransferData::SharedDtor(void *this)
{
  if (proto::gnss::TimeTransferData::default_instance_ != this)
  {
    this = this[1];
    if (this)
    {
      return (*(*this + 8))();
    }
  }

  return this;
}

uint64_t proto::gnss::TimeTransferData::default_instance(proto::gnss::TimeTransferData *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = proto::gnss::TimeTransferData::default_instance_;
  if (!proto::gnss::TimeTransferData::default_instance_)
  {
    proto::gnss::protobuf_AddDesc_GnssTypes_2eproto(0, a2, a3, a4);
    return proto::gnss::TimeTransferData::default_instance_;
  }

  return result;
}

uint64_t proto::gnss::TimeTransferData::Clear(uint64_t this)
{
  v1 = *(this + 48);
  if (v1)
  {
    *(this + 16) = 0;
    if ((v1 & 2) != 0)
    {
      v2 = *(this + 8);
      if (v2)
      {
        v3 = *(v2 + 72);
        if (v3)
        {
          *(v2 + 8) = 0;
          *(v2 + 16) = 0;
          *(v2 + 20) = 0;
          *(v2 + 64) = 0;
          *(v2 + 24) = 0u;
          *(v2 + 40) = 0u;
        }

        if ((v3 & 0xFF00) != 0)
        {
          *(v2 + 56) = 0;
        }

        *(v2 + 72) = 0;
      }
    }

    *(this + 28) = 0;
    *(this + 20) = 0;
    *(this + 36) = 0;
  }

  *(this + 48) = 0;
  return this;
}

uint64_t proto::gnss::TimeTransferData::MergePartialFromCodedStream(proto::gnss::TimeTransferData *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
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
          if (v7 == 4)
          {
            if ((TagFallback & 7) == 0)
            {
              v17 = *(a2 + 1);
              v11 = *(a2 + 2);
              goto LABEL_59;
            }
          }

          else if (v7 == 5)
          {
            if ((TagFallback & 7) == 0)
            {
              v19 = *(a2 + 1);
              v11 = *(a2 + 2);
              goto LABEL_67;
            }
          }

          else if (v7 == 6 && (TagFallback & 7) == 0)
          {
            v12 = *(a2 + 1);
            v11 = *(a2 + 2);
            goto LABEL_75;
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

        v39 = 0;
        v14 = *(a2 + 1);
        v13 = *(a2 + 2);
        if (v14 >= v13 || (v15 = *v14, (v15 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v39);
          if (!result)
          {
            return result;
          }

          v15 = v39;
          v16 = *(a2 + 1);
          v13 = *(a2 + 2);
        }

        else
        {
          v16 = v14 + 1;
          *(a2 + 1) = v16;
        }

        *(this + 16) = v15 != 0;
        v18 = *(this + 12) | 1;
        *(this + 12) = v18;
        if (v16 < v13 && *v16 == 18)
        {
          *(a2 + 1) = v16 + 1;
          goto LABEL_35;
        }
      }

      if (v7 == 2)
      {
        break;
      }

      if (v7 == 3 && (TagFallback & 7) == 0)
      {
        v10 = *(a2 + 1);
        v9 = *(a2 + 2);
        goto LABEL_49;
      }

LABEL_26:
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
      goto LABEL_26;
    }

    v18 = *(this + 12);
LABEL_35:
    *(this + 12) = v18 | 2;
    v21 = *(this + 1);
    if (!v21)
    {
      operator new();
    }

    v40 = 0;
    v22 = *(a2 + 1);
    if (v22 >= *(a2 + 2) || *v22 < 0)
    {
      if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v40))
      {
        return 0;
      }
    }

    else
    {
      v40 = *v22;
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
    if (!proto::gnss::Time::MergePartialFromCodedStream(v21, a2, v25) || *(a2 + 36) != 1)
    {
      return 0;
    }

    wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
    v26 = *(a2 + 14);
    v27 = __OFSUB__(v26, 1);
    v28 = v26 - 1;
    if (v28 < 0 == v27)
    {
      *(a2 + 14) = v28;
    }

    v29 = *(a2 + 1);
    v9 = *(a2 + 2);
    if (v29 < v9 && *v29 == 24)
    {
      v10 = v29 + 1;
      *(a2 + 1) = v10;
LABEL_49:
      v38 = 0;
      if (v10 >= v9 || (v30 = *v10, (v30 & 0x80000000) != 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v38);
        if (!result)
        {
          return result;
        }

        v30 = v38;
      }

      else
      {
        *(a2 + 1) = v10 + 1;
      }

      if (v30 <= 6)
      {
        *(this + 12) |= 4u;
        *(this + 5) = v30;
      }

      v31 = *(a2 + 1);
      v11 = *(a2 + 2);
      if (v31 < v11 && *v31 == 32)
      {
        v17 = v31 + 1;
        *(a2 + 1) = v17;
LABEL_59:
        if (v17 >= v11 || (v32 = *v17, v32 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 10);
          if (!result)
          {
            return result;
          }

          v33 = *(a2 + 1);
          v11 = *(a2 + 2);
        }

        else
        {
          *(this + 10) = v32;
          v33 = v17 + 1;
          *(a2 + 1) = v33;
        }

        *(this + 12) |= 8u;
        if (v33 < v11 && *v33 == 40)
        {
          v19 = v33 + 1;
          *(a2 + 1) = v19;
LABEL_67:
          if (v19 >= v11 || (v34 = *v19, v34 < 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 3);
            if (!result)
            {
              return result;
            }

            v35 = *(a2 + 1);
            v11 = *(a2 + 2);
          }

          else
          {
            *(this + 3) = v34;
            v35 = v19 + 1;
            *(a2 + 1) = v35;
          }

          *(this + 12) |= 0x10u;
          if (v35 < v11 && *v35 == 48)
          {
            v12 = v35 + 1;
            *(a2 + 1) = v12;
LABEL_75:
            if (v12 >= v11 || (v36 = *v12, v36 < 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 4);
              if (!result)
              {
                return result;
              }

              v37 = *(a2 + 1);
              v11 = *(a2 + 2);
            }

            else
            {
              *(this + 4) = v36;
              v37 = v12 + 1;
              *(a2 + 1) = v37;
            }

            *(this + 12) |= 0x20u;
            if (v37 == v11 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
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

uint64_t proto::gnss::TimeTransferData::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 48);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(1, *(this + 16), a2, a4);
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

  v7 = *(v5 + 8);
  if (!v7)
  {
    v7 = *(proto::gnss::TimeTransferData::default_instance_ + 8);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(2, v7, a2, a4);
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
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(3, *(v5 + 20), a2, a4);
  v6 = *(v5 + 48);
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_6;
    }

LABEL_14:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(5, *(v5 + 24), a2, a4);
    if ((*(v5 + 48) & 0x20) == 0)
    {
      return this;
    }

    goto LABEL_15;
  }

LABEL_13:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(4, *(v5 + 40), a2, a4);
  v6 = *(v5 + 48);
  if ((v6 & 0x10) != 0)
  {
    goto LABEL_14;
  }

LABEL_6:
  if ((v6 & 0x20) == 0)
  {
    return this;
  }

LABEL_15:
  v8 = *(v5 + 32);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(6, v8, a2, a4);
}

uint64_t proto::gnss::TimeTransferData::ByteSize(proto::gnss::TimeTransferData *this, unint64_t a2)
{
  v3 = *(this + 12);
  if (!v3)
  {
    v4 = 0;
    goto LABEL_27;
  }

  v4 = 2 * (v3 & 1u);
  if ((v3 & 2) != 0)
  {
    v5 = *(this + 1);
    if (!v5)
    {
      v5 = *(proto::gnss::TimeTransferData::default_instance_ + 8);
    }

    v6 = proto::gnss::Time::ByteSize(v5, a2);
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
    v3 = *(this + 12);
    if ((v3 & 4) == 0)
    {
LABEL_4:
      if ((v3 & 8) == 0)
      {
        goto LABEL_5;
      }

LABEL_21:
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
      if ((v3 & 0x10) == 0)
      {
LABEL_6:
        if ((v3 & 0x20) == 0)
        {
          goto LABEL_27;
        }

        goto LABEL_26;
      }

      goto LABEL_25;
    }
  }

  else if ((v3 & 4) == 0)
  {
    goto LABEL_4;
  }

  v9 = *(this + 5);
  if ((v9 & 0x80000000) != 0)
  {
    v10 = 11;
  }

  else if (v9 >= 0x80)
  {
    v10 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v9) + 1;
    v3 = *(this + 12);
  }

  else
  {
    v10 = 2;
  }

  v4 = (v10 + v4);
  if ((v3 & 8) != 0)
  {
    goto LABEL_21;
  }

LABEL_5:
  if ((v3 & 0x10) == 0)
  {
    goto LABEL_6;
  }

LABEL_25:
  v4 = v4 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 3)) + 1;
  if ((*(this + 12) & 0x20) != 0)
  {
LABEL_26:
    v4 = v4 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 4)) + 1;
  }

LABEL_27:
  *(this + 11) = v4;
  return v4;
}

void proto::gnss::TimeTransferData::CheckTypeAndMergeFrom(proto::gnss::TimeTransferData *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  proto::gnss::TimeTransferData::MergeFrom(this, lpsrc);
}

void proto::gnss::TimeTransferData::CopyFrom(proto::gnss::TimeTransferData *this, const proto::gnss::TimeTransferData *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    proto::gnss::TimeTransferData::MergeFrom(this, a2);
  }
}

uint64_t proto::gnss::TimeTransferData::Swap(uint64_t this, proto::gnss::TimeTransferData *a2)
{
  if (a2 != this)
  {
    v2 = *(this + 16);
    *(this + 16) = *(a2 + 16);
    *(a2 + 16) = v2;
    v3 = *(this + 8);
    *(this + 8) = *(a2 + 1);
    *(a2 + 1) = v3;
    LODWORD(v3) = *(this + 20);
    *(this + 20) = *(a2 + 5);
    *(a2 + 5) = v3;
    LODWORD(v3) = *(this + 40);
    *(this + 40) = *(a2 + 10);
    *(a2 + 10) = v3;
    v4 = *(this + 24);
    *(this + 24) = *(a2 + 3);
    *(a2 + 3) = v4;
    v5 = *(this + 32);
    *(this + 32) = *(a2 + 4);
    *(a2 + 4) = v5;
    LODWORD(v5) = *(this + 48);
    *(this + 48) = *(a2 + 12);
    *(a2 + 12) = v5;
    LODWORD(v5) = *(this + 44);
    *(this + 44) = *(a2 + 11);
    *(a2 + 11) = v5;
  }

  return this;
}

double proto::gnss::TimeTransferDataExtend::SharedCtor(proto::gnss::TimeTransferDataExtend *this)
{
  result = 0.0;
  *(this + 40) = 0u;
  *(this + 24) = 0u;
  *(this + 8) = 0u;
  return result;
}

proto::gnss::TimeTransferDataExtend *proto::gnss::TimeTransferDataExtend::TimeTransferDataExtend(proto::gnss::TimeTransferDataExtend *this, const proto::gnss::TimeTransferDataExtend *a2)
{
  *this = &unk_285861C20;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  proto::gnss::TimeTransferDataExtend::MergeFrom(this, a2);
  return this;
}

void proto::gnss::TimeTransferDataExtend::MergeFrom(proto::gnss::TimeTransferDataExtend *this, const proto::gnss::TimeTransferDataExtend *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v11);
  }

  LOBYTE(v4) = *(a2 + 52);
  if (v4)
  {
    if (*(a2 + 52))
    {
      *(this + 13) |= 1u;
      v6 = *(this + 1);
      if (!v6)
      {
        operator new();
      }

      v7 = *(a2 + 1);
      if (!v7)
      {
        v7 = *(proto::gnss::TimeTransferDataExtend::default_instance_ + 8);
      }

      proto::gnss::TimeTransferData::MergeFrom(v6, v7);
      v4 = *(a2 + 13);
      if ((v4 & 2) == 0)
      {
LABEL_6:
        if ((v4 & 4) == 0)
        {
          goto LABEL_7;
        }

        goto LABEL_17;
      }
    }

    else if ((*(a2 + 52) & 2) == 0)
    {
      goto LABEL_6;
    }

    v8 = *(a2 + 2);
    *(this + 13) |= 2u;
    *(this + 2) = v8;
    v4 = *(a2 + 13);
    if ((v4 & 4) == 0)
    {
LABEL_7:
      if ((v4 & 8) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_18;
    }

LABEL_17:
    v9 = *(a2 + 3);
    *(this + 13) |= 4u;
    *(this + 3) = v9;
    v4 = *(a2 + 13);
    if ((v4 & 8) == 0)
    {
LABEL_8:
      if ((v4 & 0x10) == 0)
      {
        return;
      }

      goto LABEL_9;
    }

LABEL_18:
    v10 = *(a2 + 4);
    *(this + 13) |= 8u;
    *(this + 4) = v10;
    if ((*(a2 + 13) & 0x10) == 0)
    {
      return;
    }

LABEL_9:
    v5 = *(a2 + 5);
    *(this + 13) |= 0x10u;
    *(this + 5) = v5;
  }
}

void sub_24553E6DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void proto::gnss::TimeTransferDataExtend::~TimeTransferDataExtend(proto::gnss::TimeTransferDataExtend *this)
{
  *this = &unk_285861C20;
  if (proto::gnss::TimeTransferDataExtend::default_instance_ != this)
  {
    v2 = *(this + 1);
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }
  }

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  proto::gnss::TimeTransferDataExtend::~TimeTransferDataExtend(this);

  JUMPOUT(0x245D6AEE0);
}

void *proto::gnss::TimeTransferDataExtend::SharedDtor(void *this)
{
  if (proto::gnss::TimeTransferDataExtend::default_instance_ != this)
  {
    this = this[1];
    if (this)
    {
      return (*(*this + 8))();
    }
  }

  return this;
}

uint64_t proto::gnss::TimeTransferDataExtend::default_instance(proto::gnss::TimeTransferDataExtend *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = proto::gnss::TimeTransferDataExtend::default_instance_;
  if (!proto::gnss::TimeTransferDataExtend::default_instance_)
  {
    proto::gnss::protobuf_AddDesc_GnssTypes_2eproto(0, a2, a3, a4);
    return proto::gnss::TimeTransferDataExtend::default_instance_;
  }

  return result;
}

uint64_t proto::gnss::TimeTransferDataExtend::Clear(uint64_t this)
{
  v1 = this;
  if (*(this + 52))
  {
    if (*(this + 52))
    {
      this = *(this + 8);
      if (this)
      {
        this = proto::gnss::TimeTransferData::Clear(this);
      }
    }

    *(v1 + 16) = 0u;
    *(v1 + 32) = 0u;
  }

  *(v1 + 52) = 0;
  return this;
}

uint64_t proto::gnss::TimeTransferDataExtend::MergePartialFromCodedStream(proto::gnss::TimeTransferDataExtend *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
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
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_21;
        }

        v12 = *(a2 + 1);
        v9 = *(a2 + 2);
        goto LABEL_46;
      }

      if (v7 == 4)
      {
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_21;
        }

        v13 = *(a2 + 1);
        v9 = *(a2 + 2);
LABEL_54:
        if (v13 >= v9 || (v28 = *v13, v28 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 4);
          if (!result)
          {
            return result;
          }

          v29 = *(a2 + 1);
          v9 = *(a2 + 2);
        }

        else
        {
          *(this + 4) = v28;
          v29 = v13 + 1;
          *(a2 + 1) = v29;
        }

        *(this + 13) |= 8u;
        if (v29 < v9 && *v29 == 40)
        {
          v10 = v29 + 1;
          *(a2 + 1) = v10;
LABEL_62:
          if (v10 >= v9 || (v30 = *v10, v30 < 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 5);
            if (!result)
            {
              return result;
            }

            v31 = *(a2 + 1);
            v9 = *(a2 + 2);
          }

          else
          {
            *(this + 5) = v30;
            v31 = v10 + 1;
            *(a2 + 1) = v31;
          }

          *(this + 13) |= 0x10u;
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
          goto LABEL_62;
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
      if (v7 != 2 || (TagFallback & 7) != 0)
      {
        goto LABEL_21;
      }

      v11 = *(a2 + 1);
      v9 = *(a2 + 2);
      goto LABEL_38;
    }

    if (v8 != 2)
    {
      goto LABEL_21;
    }

    *(this + 13) |= 1u;
    v14 = *(this + 1);
    if (!v14)
    {
      operator new();
    }

    v32 = 0;
    v15 = *(a2 + 1);
    if (v15 >= *(a2 + 2) || *v15 < 0)
    {
      if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v32))
      {
        return 0;
      }
    }

    else
    {
      v32 = *v15;
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
    if (!proto::gnss::TimeTransferData::MergePartialFromCodedStream(v14, a2, v18) || *(a2 + 36) != 1)
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
    v9 = *(a2 + 2);
    if (v22 < v9 && *v22 == 16)
    {
      v11 = v22 + 1;
      *(a2 + 1) = v11;
LABEL_38:
      if (v11 >= v9 || (v23 = *v11, v23 < 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 2);
        if (!result)
        {
          return result;
        }

        v24 = *(a2 + 1);
        v9 = *(a2 + 2);
      }

      else
      {
        *(this + 2) = v23;
        v24 = v11 + 1;
        *(a2 + 1) = v24;
      }

      *(this + 13) |= 2u;
      if (v24 < v9 && *v24 == 24)
      {
        v12 = v24 + 1;
        *(a2 + 1) = v12;
LABEL_46:
        if (v12 >= v9 || (v26 = *v12, v26 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 3);
          if (!result)
          {
            return result;
          }

          v27 = *(a2 + 1);
          v9 = *(a2 + 2);
        }

        else
        {
          *(this + 3) = v26;
          v27 = v12 + 1;
          *(a2 + 1) = v27;
        }

        *(this + 13) |= 4u;
        if (v27 < v9 && *v27 == 32)
        {
          v13 = v27 + 1;
          *(a2 + 1) = v13;
          goto LABEL_54;
        }
      }
    }
  }
}

uint64_t proto::gnss::TimeTransferDataExtend::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 52);
  if (v6)
  {
    v7 = *(this + 8);
    if (!v7)
    {
      v7 = *(proto::gnss::TimeTransferDataExtend::default_instance_ + 8);
    }

    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(1, v7, a2, a4);
    v6 = *(v5 + 52);
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

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(2, *(v5 + 16), a2, a4);
  v6 = *(v5 + 52);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

LABEL_12:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(4, *(v5 + 32), a2, a4);
    if ((*(v5 + 52) & 0x10) == 0)
    {
      return this;
    }

    goto LABEL_13;
  }

LABEL_11:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(3, *(v5 + 24), a2, a4);
  v6 = *(v5 + 52);
  if ((v6 & 8) != 0)
  {
    goto LABEL_12;
  }

LABEL_5:
  if ((v6 & 0x10) == 0)
  {
    return this;
  }

LABEL_13:
  v8 = *(v5 + 40);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(5, v8, a2, a4);
}

uint64_t proto::gnss::TimeTransferDataExtend::ByteSize(proto::gnss::TimeTransferDataExtend *this, unint64_t a2)
{
  LOBYTE(v3) = *(this + 52);
  if (!v3)
  {
    v4 = 0;
    goto LABEL_17;
  }

  if ((*(this + 52) & 1) == 0)
  {
    v4 = 0;
    if ((*(this + 52) & 2) == 0)
    {
      goto LABEL_13;
    }

LABEL_12:
    v4 = v4 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 2)) + 1;
    v3 = *(this + 13);
    goto LABEL_13;
  }

  v5 = *(this + 1);
  if (!v5)
  {
    v5 = *(proto::gnss::TimeTransferDataExtend::default_instance_ + 8);
  }

  v6 = proto::gnss::TimeTransferData::ByteSize(v5, a2);
  v7 = v6;
  if (v6 >= 0x80)
  {
    v8 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v6);
  }

  else
  {
    v8 = 1;
  }

  v4 = (v7 + v8 + 1);
  v3 = *(this + 13);
  if ((v3 & 2) != 0)
  {
    goto LABEL_12;
  }

LABEL_13:
  if ((v3 & 4) == 0)
  {
    if ((v3 & 8) == 0)
    {
      goto LABEL_15;
    }

LABEL_19:
    v4 = v4 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 4)) + 1;
    if ((*(this + 13) & 0x10) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

  v4 = v4 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 3)) + 1;
  v3 = *(this + 13);
  if ((v3 & 8) != 0)
  {
    goto LABEL_19;
  }

LABEL_15:
  if ((v3 & 0x10) != 0)
  {
LABEL_16:
    v4 = v4 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 5)) + 1;
  }

LABEL_17:
  *(this + 12) = v4;
  return v4;
}

void proto::gnss::TimeTransferDataExtend::CheckTypeAndMergeFrom(proto::gnss::TimeTransferDataExtend *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  proto::gnss::TimeTransferDataExtend::MergeFrom(this, lpsrc);
}

void proto::gnss::TimeTransferDataExtend::CopyFrom(proto::gnss::TimeTransferDataExtend *this, const proto::gnss::TimeTransferDataExtend *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    proto::gnss::TimeTransferDataExtend::MergeFrom(this, a2);
  }
}

uint64_t proto::gnss::TimeTransferDataExtend::Swap(uint64_t this, proto::gnss::TimeTransferDataExtend *a2)
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

uint64_t proto::gnss::RawPressureSample::SharedCtor(uint64_t this)
{
  *(this + 8) = 0;
  *(this + 16) = 0;
  *(this + 24) = 0;
  return this;
}

proto::gnss::RawPressureSample *proto::gnss::RawPressureSample::RawPressureSample(proto::gnss::RawPressureSample *this, const proto::gnss::RawPressureSample *a2)
{
  *(this + 1) = 0;
  *(this + 2) = 0;
  *this = &unk_285861C98;
  *(this + 6) = 0;
  proto::gnss::RawPressureSample::MergeFrom(this, a2);
  return this;
}

float proto::gnss::RawPressureSample::MergeFrom(proto::gnss::RawPressureSample *this, const proto::gnss::RawPressureSample *a2)
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

void sub_24553F114(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void proto::gnss::RawPressureSample::~RawPressureSample(proto::gnss::RawPressureSample *this)
{
  *this = &unk_285861C98;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_285861C98;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_285861C98;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  JUMPOUT(0x245D6AEE0);
}

uint64_t proto::gnss::RawPressureSample::default_instance(proto::gnss::RawPressureSample *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = proto::gnss::RawPressureSample::default_instance_;
  if (!proto::gnss::RawPressureSample::default_instance_)
  {
    proto::gnss::protobuf_AddDesc_GnssTypes_2eproto(0, a2, a3, a4);
    return proto::gnss::RawPressureSample::default_instance_;
  }

  return result;
}

uint64_t proto::gnss::RawPressureSample::Clear(uint64_t this)
{
  if (*(this + 24))
  {
    *(this + 8) = 0;
    *(this + 16) = 0;
  }

  *(this + 24) = 0;
  return this;
}

uint64_t proto::gnss::RawPressureSample::MergePartialFromCodedStream(proto::gnss::RawPressureSample *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
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
      if (TagFallback >> 3 == 2)
      {
        break;
      }

      if (TagFallback >> 3 != 1 || (TagFallback & 7) != 0)
      {
        goto LABEL_13;
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

      *(this + 6) |= 1u;
      if (v11 < v8 && *v11 == 21)
      {
        *(a2 + 1) = v11 + 1;
LABEL_21:
        v13 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a2, &v13) & 1) == 0)
        {
          return 0;
        }

        *(this + 4) = v13;
        *(this + 6) |= 2u;
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
      goto LABEL_21;
    }

LABEL_13:
    if (v7 == 4)
    {
      return 1;
    }
  }

  while ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(a2, TagFallback) & 1) != 0);
  return 0;
}

uint64_t proto::gnss::RawPressureSample::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
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

    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(2, a2, v7, a3);
  }

  return this;
}

uint64_t proto::gnss::RawPressureSample::ByteSize(proto::gnss::RawPressureSample *this, unint64_t a2)
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

    if ((v3 & 2) != 0)
    {
      result = v4 + 5;
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

  *(this + 5) = result;
  return result;
}

float proto::gnss::RawPressureSample::CheckTypeAndMergeFrom(proto::gnss::RawPressureSample *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  return proto::gnss::RawPressureSample::MergeFrom(this, lpsrc);
}

float proto::gnss::RawPressureSample::CopyFrom(proto::gnss::RawPressureSample *this, const proto::gnss::RawPressureSample *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    return proto::gnss::RawPressureSample::MergeFrom(this, a2);
  }

  return result;
}

float proto::gnss::RawPressureSample::Swap(proto::gnss::RawPressureSample *this, proto::gnss::RawPressureSample *a2)
{
  if (a2 != this)
  {
    v2 = *(this + 1);
    *(this + 1) = *(a2 + 1);
    *(a2 + 1) = v2;
    result = *(this + 4);
    *(this + 4) = *(a2 + 4);
    *(a2 + 4) = result;
    LODWORD(v2) = *(this + 6);
    *(this + 6) = *(a2 + 6);
    *(a2 + 6) = v2;
    LODWORD(v2) = *(this + 5);
    *(this + 5) = *(a2 + 5);
    *(a2 + 5) = v2;
  }

  return result;
}

uint64_t proto::gnss::SensorSample3Axis::SharedCtor(uint64_t this)
{
  *(this + 8) = 0;
  *(this + 16) = 0;
  *(this + 32) = 0;
  *(this + 24) = 0;
  return this;
}

proto::gnss::SensorSample3Axis *proto::gnss::SensorSample3Axis::SensorSample3Axis(proto::gnss::SensorSample3Axis *this, const proto::gnss::SensorSample3Axis *a2)
{
  *this = &unk_285861D10;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 3) = 0;
  *(this + 8) = 0;
  proto::gnss::SensorSample3Axis::MergeFrom(this, a2);
  return this;
}

float proto::gnss::SensorSample3Axis::MergeFrom(proto::gnss::SensorSample3Axis *this, const proto::gnss::SensorSample3Axis *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v7);
  }

  LOBYTE(v5) = *(a2 + 32);
  if (v5)
  {
    if (*(a2 + 32))
    {
      v6 = *(a2 + 1);
      *(this + 8) |= 1u;
      *(this + 1) = v6;
      v5 = *(a2 + 8);
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

    else if ((*(a2 + 32) & 2) == 0)
    {
      goto LABEL_6;
    }

    result = *(a2 + 4);
    *(this + 8) |= 2u;
    *(this + 4) = result;
    v5 = *(a2 + 8);
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
    result = *(a2 + 5);
    *(this + 8) |= 4u;
    *(this + 5) = result;
    if ((*(a2 + 8) & 8) == 0)
    {
      return result;
    }

LABEL_8:
    result = *(a2 + 6);
    *(this + 8) |= 8u;
    *(this + 6) = result;
  }

  return result;
}

void sub_24553F79C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void proto::gnss::SensorSample3Axis::~SensorSample3Axis(proto::gnss::SensorSample3Axis *this)
{
  *this = &unk_285861D10;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_285861D10;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_285861D10;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  JUMPOUT(0x245D6AEE0);
}

uint64_t proto::gnss::SensorSample3Axis::default_instance(proto::gnss::SensorSample3Axis *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = proto::gnss::SensorSample3Axis::default_instance_;
  if (!proto::gnss::SensorSample3Axis::default_instance_)
  {
    proto::gnss::protobuf_AddDesc_GnssTypes_2eproto(0, a2, a3, a4);
    return proto::gnss::SensorSample3Axis::default_instance_;
  }

  return result;
}

uint64_t proto::gnss::SensorSample3Axis::Clear(uint64_t this)
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

uint64_t proto::gnss::SensorSample3Axis::MergePartialFromCodedStream(proto::gnss::SensorSample3Axis *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
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
          if (v8 != 5)
          {
            goto LABEL_20;
          }

LABEL_32:
          v17 = 0;
          if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a2, &v17) & 1) == 0)
          {
            return 0;
          }

          *(this + 5) = v17;
          *(this + 8) |= 4u;
          v15 = *(a2 + 1);
          if (v15 < *(a2 + 2) && *v15 == 37)
          {
            *(a2 + 1) = v15 + 1;
            goto LABEL_36;
          }
        }

        else
        {
          if (v7 != 4 || v8 != 5)
          {
            goto LABEL_20;
          }

LABEL_36:
          v16 = 0;
          if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a2, &v16) & 1) == 0)
          {
            return 0;
          }

          *(this + 6) = v16;
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

      *(this + 8) |= 1u;
      if (v12 < v9 && *v12 == 21)
      {
        *(a2 + 1) = v12 + 1;
LABEL_28:
        v18 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a2, &v18) & 1) == 0)
        {
          return 0;
        }

        *(this + 4) = v18;
        *(this + 8) |= 2u;
        v14 = *(a2 + 1);
        if (v14 < *(a2 + 2) && *v14 == 29)
        {
          *(a2 + 1) = v14 + 1;
          goto LABEL_32;
        }
      }
    }

    if (v7 == 2 && v8 == 5)
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

uint64_t proto::gnss::SensorSample3Axis::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 32);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(1, *(this + 8), a2, a4);
    v6 = *(v5 + 32);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

LABEL_8:
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(3, a2, *(v5 + 20), a3);
      if ((*(v5 + 32) & 8) == 0)
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

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(2, a2, *(v5 + 16), a3);
  v6 = *(v5 + 32);
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

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(4, a2, v7, a3);
}

uint64_t proto::gnss::SensorSample3Axis::ByteSize(proto::gnss::SensorSample3Axis *this, unint64_t a2)
{
  LOBYTE(v3) = *(this + 32);
  if (v3)
  {
    if (*(this + 32))
    {
      v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 1)) + 1;
      v3 = *(this + 8);
    }

    else
    {
      v4 = 0;
    }

    if ((v3 & 2) != 0)
    {
      v4 += 5;
    }

    if ((v3 & 4) != 0)
    {
      v4 += 5;
    }

    if ((v3 & 8) != 0)
    {
      result = v4 + 5;
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

  *(this + 7) = result;
  return result;
}

float proto::gnss::SensorSample3Axis::CheckTypeAndMergeFrom(proto::gnss::SensorSample3Axis *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  return proto::gnss::SensorSample3Axis::MergeFrom(this, lpsrc);
}

float proto::gnss::SensorSample3Axis::CopyFrom(proto::gnss::SensorSample3Axis *this, const proto::gnss::SensorSample3Axis *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    return proto::gnss::SensorSample3Axis::MergeFrom(this, a2);
  }

  return result;
}

float proto::gnss::SensorSample3Axis::Swap(proto::gnss::SensorSample3Axis *this, proto::gnss::SensorSample3Axis *a2)
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

uint64_t proto::gnss::SvId::SharedCtor(uint64_t this)
{
  *(this + 8) = 0;
  *(this + 16) = 0;
  *(this + 32) = 0;
  *(this + 24) = 0;
  return this;
}

proto::gnss::SvId *proto::gnss::SvId::SvId(proto::gnss::SvId *this, const proto::gnss::SvId *a2)
{
  *this = &unk_285861D88;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 3) = 0;
  *(this + 8) = 0;
  proto::gnss::SvId::MergeFrom(this, a2);
  return this;
}

void proto::gnss::SvId::MergeFrom(proto::gnss::SvId *this, const proto::gnss::SvId *a2)
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
      v6 = *(a2 + 2);
      *(this + 8) |= 1u;
      *(this + 2) = v6;
      v4 = *(a2 + 8);
      if ((v4 & 2) == 0)
      {
LABEL_6:
        if ((v4 & 4) == 0)
        {
          goto LABEL_7;
        }

        goto LABEL_13;
      }
    }

    else if ((*(a2 + 32) & 2) == 0)
    {
      goto LABEL_6;
    }

    v7 = *(a2 + 3);
    *(this + 8) |= 2u;
    *(this + 3) = v7;
    v4 = *(a2 + 8);
    if ((v4 & 4) == 0)
    {
LABEL_7:
      if ((v4 & 8) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_14;
    }

LABEL_13:
    v8 = *(a2 + 4);
    *(this + 8) |= 4u;
    *(this + 4) = v8;
    v4 = *(a2 + 8);
    if ((v4 & 8) == 0)
    {
LABEL_8:
      if ((v4 & 0x10) == 0)
      {
        return;
      }

      goto LABEL_9;
    }

LABEL_14:
    v9 = *(a2 + 5);
    *(this + 8) |= 8u;
    *(this + 5) = v9;
    if ((*(a2 + 8) & 0x10) == 0)
    {
      return;
    }

LABEL_9:
    v5 = *(a2 + 6);
    *(this + 8) |= 0x10u;
    *(this + 6) = v5;
  }
}

void sub_24553FF78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void proto::gnss::SvId::~SvId(proto::gnss::SvId *this)
{
  *this = &unk_285861D88;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_285861D88;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_285861D88;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  JUMPOUT(0x245D6AEE0);
}

uint64_t proto::gnss::SvId::default_instance(proto::gnss::SvId *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = proto::gnss::SvId::default_instance_;
  if (!proto::gnss::SvId::default_instance_)
  {
    proto::gnss::protobuf_AddDesc_GnssTypes_2eproto(0, a2, a3, a4);
    return proto::gnss::SvId::default_instance_;
  }

  return result;
}

uint64_t proto::gnss::SvId::Clear(uint64_t this)
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

uint64_t proto::gnss::SvId::MergePartialFromCodedStream(proto::gnss::SvId *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
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

        v13 = *(a2 + 1);
        v8 = *(a2 + 2);
        if (v13 >= v8 || (v14 = *v13, v14 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 2);
          if (!result)
          {
            return result;
          }

          v15 = *(a2 + 1);
          v8 = *(a2 + 2);
        }

        else
        {
          *(this + 2) = v14;
          v15 = v13 + 1;
          *(a2 + 1) = v15;
        }

        *(this + 8) |= 1u;
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

          *(this + 3) = v16;
          *(this + 8) |= 2u;
          if (v17 < v8 && *v17 == 24)
          {
            v11 = v17 + 1;
            *(a2 + 1) = v11;
LABEL_40:
            if (v11 >= v8 || (v18 = *v11, v18 < 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 4);
              if (!result)
              {
                return result;
              }

              v19 = *(a2 + 1);
              v8 = *(a2 + 2);
            }

            else
            {
              *(this + 4) = v18;
              v19 = v11 + 1;
              *(a2 + 1) = v19;
            }

            *(this + 8) |= 4u;
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
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 5);
        if (!result)
        {
          return result;
        }

        v21 = *(a2 + 1);
        v8 = *(a2 + 2);
      }

      else
      {
        *(this + 5) = v20;
        v21 = v12 + 1;
        *(a2 + 1) = v21;
      }

      *(this + 8) |= 8u;
      if (v21 < v8 && *v21 == 40)
      {
        v9 = v21 + 1;
        *(a2 + 1) = v21 + 1;
LABEL_56:
        v26 = 0;
        if (v9 >= v8 || (v22 = *v9, (v22 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v26);
          if (!result)
          {
            return result;
          }

          v22 = v26;
          v23 = *(a2 + 1);
          v8 = *(a2 + 2);
        }

        else
        {
          v23 = v9 + 1;
          *(a2 + 1) = v23;
        }

        *(this + 6) = -(v22 & 1) ^ (v22 >> 1);
        *(this + 8) |= 0x10u;
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

unsigned int *proto::gnss::SvId::SerializeWithCachedSizes(unsigned int *this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = this[8];
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(1, this[2], a2, a4);
    v6 = v5[8];
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

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(2, v5[3], a2, a4);
  v6 = v5[8];
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

LABEL_10:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(4, v5[5], a2, a4);
    if ((v5[8] & 0x10) == 0)
    {
      return this;
    }

    goto LABEL_11;
  }

LABEL_9:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(3, v5[4], a2, a4);
  v6 = v5[8];
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
  v7 = v5[6];

  return MEMORY[0x2821F9CB0](5, v7, a2);
}

uint64_t proto::gnss::SvId::ByteSize(proto::gnss::SvId *this, unsigned int a2)
{
  LOBYTE(v3) = *(this + 32);
  if (!v3)
  {
    v4 = 0;
    goto LABEL_32;
  }

  if (*(this + 32))
  {
    v5 = *(this + 2);
    if (v5 >= 0x80)
    {
      v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5) + 1;
      v3 = *(this + 8);
      if ((v3 & 2) == 0)
      {
        goto LABEL_16;
      }
    }

    else
    {
      v4 = 2;
      if ((v3 & 2) == 0)
      {
        goto LABEL_16;
      }
    }
  }

  else
  {
    v4 = 0;
    if ((*(this + 32) & 2) == 0)
    {
      goto LABEL_16;
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
    v3 = *(this + 8);
  }

  else
  {
    v7 = 2;
  }

  v4 = (v7 + v4);
LABEL_16:
  if ((v3 & 4) != 0)
  {
    v8 = *(this + 4);
    if (v8 >= 0x80)
    {
      v9 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v8) + 1;
      v3 = *(this + 8);
    }

    else
    {
      v9 = 2;
    }

    v4 = (v9 + v4);
    if ((v3 & 8) == 0)
    {
LABEL_18:
      if ((v3 & 0x10) == 0)
      {
        goto LABEL_32;
      }

      goto LABEL_28;
    }
  }

  else if ((v3 & 8) == 0)
  {
    goto LABEL_18;
  }

  v10 = *(this + 5);
  if (v10 >= 0x80)
  {
    v11 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v10) + 1;
    v3 = *(this + 8);
  }

  else
  {
    v11 = 2;
  }

  v4 = (v11 + v4);
  if ((v3 & 0x10) != 0)
  {
LABEL_28:
    v12 = ((2 * *(this + 6)) ^ (*(this + 6) >> 31));
    if (v12 >= 0x80)
    {
      v13 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v12) + 1;
    }

    else
    {
      v13 = 2;
    }

    v4 = (v13 + v4);
  }

LABEL_32:
  *(this + 7) = v4;
  return v4;
}

void proto::gnss::SvId::CheckTypeAndMergeFrom(proto::gnss::SvId *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  proto::gnss::SvId::MergeFrom(this, lpsrc);
}

void proto::gnss::SvId::CopyFrom(proto::gnss::SvId *this, const proto::gnss::SvId *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    proto::gnss::SvId::MergeFrom(this, a2);
  }
}

proto::gnss::SvId *proto::gnss::SvId::Swap(proto::gnss::SvId *this, proto::gnss::SvId *a2)
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
    v7 = *(this + 8);
    *(this + 8) = *(a2 + 8);
    *(a2 + 8) = v7;
    v8 = *(this + 7);
    *(this + 7) = *(a2 + 7);
    *(a2 + 7) = v8;
  }

  return this;
}

double proto::gnss::PwrMeasurement::SharedCtor(proto::gnss::PwrMeasurement *this)
{
  result = 0.0;
  *(this + 36) = 0u;
  *(this + 24) = 0u;
  *(this + 8) = 0u;
  return result;
}

proto::gnss::PwrMeasurement *proto::gnss::PwrMeasurement::PwrMeasurement(proto::gnss::PwrMeasurement *this, const proto::gnss::PwrMeasurement *a2)
{
  *this = &unk_285861E00;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 36) = 0u;
  proto::gnss::PwrMeasurement::MergeFrom(this, a2);
  return this;
}

void proto::gnss::PwrMeasurement::MergeFrom(proto::gnss::PwrMeasurement *this, const proto::gnss::PwrMeasurement *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v10);
  }

  LOBYTE(v4) = *(a2 + 48);
  if (v4)
  {
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

        goto LABEL_12;
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

      goto LABEL_13;
    }

LABEL_12:
    v7 = *(a2 + 3);
    *(this + 12) |= 4u;
    *(this + 3) = v7;
    v4 = *(a2 + 12);
    if ((v4 & 8) == 0)
    {
LABEL_8:
      if ((v4 & 0x10) == 0)
      {
        return;
      }

LABEL_14:
      v9 = *(a2 + 10);
      if (v9 >= 2)
      {
        __assert_rtn("set_status", "GnssTypes.pb.h", 3193, "::proto::gnss::PwrMeasurement_PowerLoggingStatus_IsValid(value)");
      }

      *(this + 12) |= 0x10u;
      *(this + 10) = v9;
      return;
    }

LABEL_13:
    v8 = *(a2 + 4);
    *(this + 12) |= 8u;
    *(this + 4) = v8;
    if ((*(a2 + 12) & 0x10) == 0)
    {
      return;
    }

    goto LABEL_14;
  }
}

void sub_245540948(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void proto::gnss::PwrMeasurement::~PwrMeasurement(proto::gnss::PwrMeasurement *this)
{
  *this = &unk_285861E00;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_285861E00;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_285861E00;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  JUMPOUT(0x245D6AEE0);
}

uint64_t proto::gnss::PwrMeasurement::default_instance(proto::gnss::PwrMeasurement *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = proto::gnss::PwrMeasurement::default_instance_;
  if (!proto::gnss::PwrMeasurement::default_instance_)
  {
    proto::gnss::protobuf_AddDesc_GnssTypes_2eproto(0, a2, a3, a4);
    return proto::gnss::PwrMeasurement::default_instance_;
  }

  return result;
}

uint64_t proto::gnss::PwrMeasurement::Clear(uint64_t this)
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

uint64_t proto::gnss::PwrMeasurement::MergePartialFromCodedStream(proto::gnss::PwrMeasurement *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
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
          if (v7 != 2 || v8 != 1)
          {
            goto LABEL_21;
          }

          goto LABEL_28;
        }

        if (v8 != 1)
        {
          goto LABEL_21;
        }

        *v17 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v17) & 1) == 0)
        {
          return 0;
        }

        *(this + 1) = *v17;
        *(this + 12) |= 1u;
        v11 = *(a2 + 1);
        if (v11 < *(a2 + 2) && *v11 == 17)
        {
          *(a2 + 1) = v11 + 1;
LABEL_28:
          *v17 = 0;
          if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v17) & 1) == 0)
          {
            return 0;
          }

          *(this + 2) = *v17;
          *(this + 12) |= 2u;
          v12 = *(a2 + 1);
          if (v12 < *(a2 + 2) && *v12 == 25)
          {
            *(a2 + 1) = v12 + 1;
LABEL_32:
            *v17 = 0;
            if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v17) & 1) == 0)
            {
              return 0;
            }

            *(this + 3) = *v17;
            *(this + 12) |= 4u;
            v13 = *(a2 + 1);
            if (v13 < *(a2 + 2) && *v13 == 33)
            {
              *(a2 + 1) = v13 + 1;
              goto LABEL_36;
            }
          }
        }
      }

      if (v7 == 3)
      {
        if (v8 != 1)
        {
          goto LABEL_21;
        }

        goto LABEL_32;
      }

      if (v7 != 4)
      {
        break;
      }

      if (v8 != 1)
      {
        goto LABEL_21;
      }

LABEL_36:
      *v17 = 0;
      if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v17) & 1) == 0)
      {
        return 0;
      }

      *(this + 4) = *v17;
      *(this + 12) |= 8u;
      v14 = *(a2 + 1);
      v9 = *(a2 + 2);
      if (v14 < v9 && *v14 == 40)
      {
        v10 = v14 + 1;
        *(a2 + 1) = v10;
LABEL_40:
        v17[0] = 0;
        if (v10 >= v9 || (v15 = *v10, (v15 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v17);
          if (!result)
          {
            return result;
          }

          v15 = v17[0];
        }

        else
        {
          *(a2 + 1) = v10 + 1;
        }

        if (v15 <= 1)
        {
          *(this + 12) |= 0x10u;
          *(this + 10) = v15;
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

    if (v7 == 5 && (TagFallback & 7) == 0)
    {
      v10 = *(a2 + 1);
      v9 = *(a2 + 2);
      goto LABEL_40;
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

uint64_t proto::gnss::PwrMeasurement::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
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

      goto LABEL_9;
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

LABEL_10:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(4, a2, *(v5 + 32), a3);
    if ((*(v5 + 48) & 0x10) == 0)
    {
      return this;
    }

    goto LABEL_11;
  }

LABEL_9:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(3, a2, *(v5 + 24), a3);
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
  v7 = *(v5 + 40);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(5, v7, a2, a4);
}

uint64_t proto::gnss::PwrMeasurement::ByteSize(proto::gnss::PwrMeasurement *this, unsigned int a2)
{
  v3 = *(this + 48);
  if (*(this + 48))
  {
    v4 = (v3 << 31 >> 31) & 9;
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
      v5 = v4 + 9;
    }

    else
    {
      v5 = v4;
    }

    if ((v3 & 0x10) != 0)
    {
      v6 = *(this + 10);
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

      v5 = (v7 + v5);
    }
  }

  else
  {
    v5 = 0;
  }

  *(this + 11) = v5;
  return v5;
}

void proto::gnss::PwrMeasurement::CheckTypeAndMergeFrom(proto::gnss::PwrMeasurement *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  proto::gnss::PwrMeasurement::MergeFrom(this, lpsrc);
}

void proto::gnss::PwrMeasurement::CopyFrom(proto::gnss::PwrMeasurement *this, const proto::gnss::PwrMeasurement *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    proto::gnss::PwrMeasurement::MergeFrom(this, a2);
  }
}

double proto::gnss::PwrMeasurement::Swap(proto::gnss::PwrMeasurement *this, proto::gnss::PwrMeasurement *a2)
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
    v6 = *(this + 10);
    *(this + 10) = *(a2 + 10);
    *(a2 + 10) = v6;
    v7 = *(this + 12);
    *(this + 12) = *(a2 + 12);
    *(a2 + 12) = v7;
    v8 = *(this + 11);
    *(this + 11) = *(a2 + 11);
    *(a2 + 11) = v8;
  }

  return result;
}

uint64_t proto::gnss::DecodedRti::SharedCtor(uint64_t this)
{
  *(this + 20) = 0;
  *(this + 8) = 0;
  *(this + 16) = 0;
  return this;
}

proto::gnss::DecodedRti *proto::gnss::DecodedRti::DecodedRti(proto::gnss::DecodedRti *this, const proto::gnss::DecodedRti *a2)
{
  *(this + 20) = 0;
  *this = &unk_285861E78;
  *(this + 1) = 0;
  *(this + 16) = 0;
  proto::gnss::DecodedRti::MergeFrom(this, a2);
  return this;
}

void proto::gnss::DecodedRti::MergeFrom(proto::gnss::DecodedRti *this, const proto::gnss::DecodedRti *a2)
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

void sub_24554118C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void proto::gnss::DecodedRti::~DecodedRti(proto::gnss::DecodedRti *this)
{
  *this = &unk_285861E78;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_285861E78;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_285861E78;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  JUMPOUT(0x245D6AEE0);
}

uint64_t proto::gnss::DecodedRti::default_instance(proto::gnss::DecodedRti *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = proto::gnss::DecodedRti::default_instance_;
  if (!proto::gnss::DecodedRti::default_instance_)
  {
    proto::gnss::protobuf_AddDesc_GnssTypes_2eproto(0, a2, a3, a4);
    return proto::gnss::DecodedRti::default_instance_;
  }

  return result;
}

uint64_t proto::gnss::DecodedRti::Clear(uint64_t this)
{
  if (*(this + 24))
  {
    *(this + 8) = 0;
    *(this + 16) = 0;
  }

  *(this + 24) = 0;
  return this;
}

uint64_t proto::gnss::DecodedRti::MergePartialFromCodedStream(proto::gnss::DecodedRti *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
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

uint64_t proto::gnss::DecodedRti::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
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

uint64_t proto::gnss::DecodedRti::ByteSize(proto::gnss::DecodedRti *this, unint64_t a2)
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

void proto::gnss::DecodedRti::CheckTypeAndMergeFrom(proto::gnss::DecodedRti *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  proto::gnss::DecodedRti::MergeFrom(this, lpsrc);
}

void proto::gnss::DecodedRti::CopyFrom(proto::gnss::DecodedRti *this, const proto::gnss::DecodedRti *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    proto::gnss::DecodedRti::MergeFrom(this, a2);
  }
}

uint64_t proto::gnss::DecodedRti::Swap(uint64_t this, proto::gnss::DecodedRti *a2)
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

uint64_t proto::gnss::DecodedExtendedEphemeris::SharedCtor(uint64_t this)
{
  *(this + 32) = 0;
  *(this + 28) = 0;
  *(this + 8) = 0;
  *(this + 16) = 0;
  *(this + 24) = 0;
  return this;
}

proto::gnss::DecodedExtendedEphemeris *proto::gnss::DecodedExtendedEphemeris::DecodedExtendedEphemeris(proto::gnss::DecodedExtendedEphemeris *this, const proto::gnss::DecodedExtendedEphemeris *a2)
{
  *(this + 4) = 0;
  *(this + 7) = 0;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *this = &unk_285861EF0;
  *(this + 24) = 0;
  proto::gnss::DecodedExtendedEphemeris::MergeFrom(this, a2);
  return this;
}

void proto::gnss::DecodedExtendedEphemeris::MergeFrom(proto::gnss::DecodedExtendedEphemeris *this, const proto::gnss::DecodedExtendedEphemeris *a2)
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
          goto LABEL_7;
        }

        goto LABEL_11;
      }
    }

    else if ((*(a2 + 36) & 2) == 0)
    {
      goto LABEL_6;
    }

    v6 = *(a2 + 24);
    *(this + 9) |= 2u;
    *(this + 24) = v6;
    v4 = *(a2 + 9);
    if ((v4 & 4) == 0)
    {
LABEL_7:
      if ((v4 & 8) == 0)
      {
        return;
      }

LABEL_12:
      v8 = *(a2 + 7);
      if (v8 >= 7)
      {
        __assert_rtn("set_assistance_file_type", "GnssTypes.pb.h", 3334, "::CLP::LogEntry::PrivateData::SvPositionSource_IsValid(value)");
      }

      *(this + 9) |= 8u;
      *(this + 7) = v8;
      return;
    }

LABEL_11:
    v7 = *(a2 + 2);
    *(this + 9) |= 4u;
    *(this + 2) = v7;
    if ((*(a2 + 9) & 8) == 0)
    {
      return;
    }

    goto LABEL_12;
  }
}

void sub_245541874(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void proto::gnss::DecodedExtendedEphemeris::~DecodedExtendedEphemeris(proto::gnss::DecodedExtendedEphemeris *this)
{
  *this = &unk_285861EF0;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_285861EF0;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_285861EF0;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  JUMPOUT(0x245D6AEE0);
}

uint64_t proto::gnss::DecodedExtendedEphemeris::default_instance(proto::gnss::DecodedExtendedEphemeris *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = proto::gnss::DecodedExtendedEphemeris::default_instance_;
  if (!proto::gnss::DecodedExtendedEphemeris::default_instance_)
  {
    proto::gnss::protobuf_AddDesc_GnssTypes_2eproto(0, a2, a3, a4);
    return proto::gnss::DecodedExtendedEphemeris::default_instance_;
  }

  return result;
}

uint64_t proto::gnss::DecodedExtendedEphemeris::Clear(uint64_t this)
{
  if (*(this + 36))
  {
    *(this + 28) = 0;
    *(this + 8) = 0;
    *(this + 16) = 0;
    *(this + 24) = 0;
  }

  *(this + 36) = 0;
  return this;
}

uint64_t proto::gnss::DecodedExtendedEphemeris::MergePartialFromCodedStream(proto::gnss::DecodedExtendedEphemeris *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
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

      *(this + 9) |= 1u;
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

        *(this + 24) = v15 != 0;
        *(this + 9) |= 2u;
        if (v16 < v8 && *v16 == 24)
        {
          v14 = v16 + 1;
          *(a2 + 1) = v14;
LABEL_37:
          if (v14 >= v8 || (v17 = *v14, v17 < 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 2);
            if (!result)
            {
              return result;
            }

            v18 = *(a2 + 1);
            v8 = *(a2 + 2);
          }

          else
          {
            *(this + 2) = v17;
            v18 = v14 + 1;
            *(a2 + 1) = v18;
          }

          *(this + 9) |= 4u;
          if (v18 < v8 && *v18 == 32)
          {
            v10 = v18 + 1;
            *(a2 + 1) = v10;
LABEL_45:
            v21 = 0;
            if (v10 >= v8 || (v19 = *v10, (v19 & 0x80000000) != 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v21);
              if (!result)
              {
                return result;
              }

              v19 = v21;
            }

            else
            {
              *(a2 + 1) = v10 + 1;
            }

            if (v19 <= 6)
            {
              *(this + 9) |= 8u;
              *(this + 7) = v19;
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

uint64_t proto::gnss::DecodedExtendedEphemeris::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
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
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(3, *(v5 + 16), a2, a4);
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

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(2, *(v5 + 24), a2, a4);
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

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(4, v7, a2, a4);
}

uint64_t proto::gnss::DecodedExtendedEphemeris::ByteSize(proto::gnss::DecodedExtendedEphemeris *this, unint64_t a2)
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

    v5 = (v3 & 2u) + v4;
    if ((v3 & 4) != 0)
    {
      v5 = v5 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 2)) + 1;
      v3 = *(this + 9);
    }

    if ((v3 & 8) != 0)
    {
      v6 = *(this + 7);
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

      v5 = (v7 + v5);
    }
  }

  else
  {
    v5 = 0;
  }

  *(this + 8) = v5;
  return v5;
}

void proto::gnss::DecodedExtendedEphemeris::CheckTypeAndMergeFrom(proto::gnss::DecodedExtendedEphemeris *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  proto::gnss::DecodedExtendedEphemeris::MergeFrom(this, lpsrc);
}

void proto::gnss::DecodedExtendedEphemeris::CopyFrom(proto::gnss::DecodedExtendedEphemeris *this, const proto::gnss::DecodedExtendedEphemeris *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    proto::gnss::DecodedExtendedEphemeris::MergeFrom(this, a2);
  }
}

uint64_t proto::gnss::DecodedExtendedEphemeris::Swap(uint64_t this, proto::gnss::DecodedExtendedEphemeris *a2)
{
  if (a2 != this)
  {
    v2 = *(this + 8);
    *(this + 8) = *(a2 + 1);
    *(a2 + 1) = v2;
    LOBYTE(v2) = *(this + 24);
    *(this + 24) = *(a2 + 24);
    *(a2 + 24) = v2;
    v3 = *(this + 16);
    *(this + 16) = *(a2 + 2);
    *(a2 + 2) = v3;
    LODWORD(v3) = *(this + 28);
    *(this + 28) = *(a2 + 7);
    *(a2 + 7) = v3;
    LODWORD(v3) = *(this + 36);
    *(this + 36) = *(a2 + 9);
    *(a2 + 9) = v3;
    LODWORD(v3) = *(this + 32);
    *(this + 32) = *(a2 + 8);
    *(a2 + 8) = v3;
  }

  return this;
}

uint64_t proto::gpsd::protobuf_ShutdownFile_GpsdProtocol_2eproto(proto::gpsd *this)
{
  if (proto::gpsd::Request::default_instance_)
  {
    (*(*proto::gpsd::Request::default_instance_ + 8))(proto::gpsd::Request::default_instance_);
  }

  if (proto::gpsd::Response::default_instance_)
  {
    (*(*proto::gpsd::Response::default_instance_ + 8))(proto::gpsd::Response::default_instance_);
  }

  if (proto::gpsd::Indication::default_instance_)
  {
    (*(*proto::gpsd::Indication::default_instance_ + 8))(proto::gpsd::Indication::default_instance_);
  }

  if (proto::gpsd::Status::default_instance_)
  {
    (*(*proto::gpsd::Status::default_instance_ + 8))(proto::gpsd::Status::default_instance_);
  }

  if (proto::gpsd::SetPvtmReport::default_instance_)
  {
    (*(*proto::gpsd::SetPvtmReport::default_instance_ + 8))(proto::gpsd::SetPvtmReport::default_instance_);
  }

  if (proto::gpsd::InjectAssistanceFile::default_instance_)
  {
    (*(*proto::gpsd::InjectAssistanceFile::default_instance_ + 8))(proto::gpsd::InjectAssistanceFile::default_instance_);
  }

  if (proto::gpsd::InjectRtiFile::default_instance_)
  {
    (*(*proto::gpsd::InjectRtiFile::default_instance_ + 8))(proto::gpsd::InjectRtiFile::default_instance_);
  }

  if (proto::gpsd::InjectRavenOrbitFile::default_instance_)
  {
    (*(*proto::gpsd::InjectRavenOrbitFile::default_instance_ + 8))(proto::gpsd::InjectRavenOrbitFile::default_instance_);
  }

  if (proto::gpsd::InjectSvidBlocklist::default_instance_)
  {
    (*(*proto::gpsd::InjectSvidBlocklist::default_instance_ + 8))(proto::gpsd::InjectSvidBlocklist::default_instance_);
  }

  if (proto::gpsd::InjectAssistancePosition::default_instance_)
  {
    (*(*proto::gpsd::InjectAssistancePosition::default_instance_ + 8))(proto::gpsd::InjectAssistancePosition::default_instance_);
  }

  if (proto::gpsd::InjectAssistanceTime::default_instance_)
  {
    (*(*proto::gpsd::InjectAssistanceTime::default_instance_ + 8))(proto::gpsd::InjectAssistanceTime::default_instance_);
  }

  if (proto::gpsd::DeleteGnssData::default_instance_)
  {
    (*(*proto::gpsd::DeleteGnssData::default_instance_ + 8))(proto::gpsd::DeleteGnssData::default_instance_);
  }

  if (proto::gpsd::SetNmeaHandler::default_instance_)
  {
    (*(*proto::gpsd::SetNmeaHandler::default_instance_ + 8))(proto::gpsd::SetNmeaHandler::default_instance_);
  }

  if (proto::gpsd::SetAssistancePressure::default_instance_)
  {
    (*(*proto::gpsd::SetAssistancePressure::default_instance_ + 8))(proto::gpsd::SetAssistancePressure::default_instance_);
  }

  if (proto::gpsd::SetAssistanceAccel::default_instance_)
  {
    (*(*proto::gpsd::SetAssistanceAccel::default_instance_ + 8))(proto::gpsd::SetAssistanceAccel::default_instance_);
  }

  if (proto::gpsd::SetAssistanceGyro::default_instance_)
  {
    (*(*proto::gpsd::SetAssistanceGyro::default_instance_ + 8))(proto::gpsd::SetAssistanceGyro::default_instance_);
  }

  if (proto::gpsd::SetAssistanceDem::default_instance_)
  {
    (*(*proto::gpsd::SetAssistanceDem::default_instance_ + 8))(proto::gpsd::SetAssistanceDem::default_instance_);
  }

  if (proto::gpsd::SetAssistanceMapVector::default_instance_)
  {
    (*(*proto::gpsd::SetAssistanceMapVector::default_instance_ + 8))(proto::gpsd::SetAssistanceMapVector::default_instance_);
  }

  if (proto::gpsd::SetAssistanceMotionActivityContext::default_instance_)
  {
    (*(*proto::gpsd::SetAssistanceMotionActivityContext::default_instance_ + 8))(proto::gpsd::SetAssistanceMotionActivityContext::default_instance_);
  }

  if (proto::gpsd::SetAssistanceMountState::default_instance_)
  {
    (*(*proto::gpsd::SetAssistanceMountState::default_instance_ + 8))(proto::gpsd::SetAssistanceMountState::default_instance_);
  }

  if (proto::gpsd::SetAssistanceSignalEnvironment::default_instance_)
  {
    (*(*proto::gpsd::SetAssistanceSignalEnvironment::default_instance_ + 8))(proto::gpsd::SetAssistanceSignalEnvironment::default_instance_);
  }

  if (proto::gpsd::SetAssistanceSpeedConstraint::default_instance_)
  {
    (*(*proto::gpsd::SetAssistanceSpeedConstraint::default_instance_ + 8))(proto::gpsd::SetAssistanceSpeedConstraint::default_instance_);
  }

  if (proto::gpsd::SetAssistanceAlongTrackVelocity::default_instance_)
  {
    (*(*proto::gpsd::SetAssistanceAlongTrackVelocity::default_instance_ + 8))(proto::gpsd::SetAssistanceAlongTrackVelocity::default_instance_);
  }

  if (proto::gpsd::SetThermalRiskState::default_instance_)
  {
    (*(*proto::gpsd::SetThermalRiskState::default_instance_ + 8))(proto::gpsd::SetThermalRiskState::default_instance_);
  }

  if (proto::gpsd::SetConfigSimulatorMode::default_instance_)
  {
    (*(*proto::gpsd::SetConfigSimulatorMode::default_instance_ + 8))(proto::gpsd::SetConfigSimulatorMode::default_instance_);
  }

  if (proto::gpsd::SetConfigEnableGnssConstellations::default_instance_)
  {
    (*(*proto::gpsd::SetConfigEnableGnssConstellations::default_instance_ + 8))(proto::gpsd::SetConfigEnableGnssConstellations::default_instance_);
  }

  if (proto::gpsd::SetConfigRfBandEnable::default_instance_)
  {
    (*(*proto::gpsd::SetConfigRfBandEnable::default_instance_ + 8))(proto::gpsd::SetConfigRfBandEnable::default_instance_);
  }

  if (proto::gpsd::SetConfigDutyCycling::default_instance_)
  {
    (*(*proto::gpsd::SetConfigDutyCycling::default_instance_ + 8))(proto::gpsd::SetConfigDutyCycling::default_instance_);
  }

  if (proto::gpsd::TerminationImminent::default_instance_)
  {
    (*(*proto::gpsd::TerminationImminent::default_instance_ + 8))(proto::gpsd::TerminationImminent::default_instance_);
  }

  if (proto::gpsd::ExitMessage::default_instance_)
  {
    (*(*proto::gpsd::ExitMessage::default_instance_ + 8))(proto::gpsd::ExitMessage::default_instance_);
  }

  if (proto::gpsd::RecoveryStatistics::default_instance_)
  {
    (*(*proto::gpsd::RecoveryStatistics::default_instance_ + 8))(proto::gpsd::RecoveryStatistics::default_instance_);
  }

  if (proto::gpsd::RecoveryStatistics_RecoveryStatus::default_instance_)
  {
    (*(*proto::gpsd::RecoveryStatistics_RecoveryStatus::default_instance_ + 8))(proto::gpsd::RecoveryStatistics_RecoveryStatus::default_instance_);
  }

  if (proto::gpsd::RecoveryStatistics_RecoveryPoint::default_instance_)
  {
    (*(*proto::gpsd::RecoveryStatistics_RecoveryPoint::default_instance_ + 8))(proto::gpsd::RecoveryStatistics_RecoveryPoint::default_instance_);
  }

  if (proto::gpsd::LtlInfoRequest::default_instance_)
  {
    (*(*proto::gpsd::LtlInfoRequest::default_instance_ + 8))(proto::gpsd::LtlInfoRequest::default_instance_);
  }

  if (proto::gpsd::LtlInfo::default_instance_)
  {
    (*(*proto::gpsd::LtlInfo::default_instance_ + 8))(proto::gpsd::LtlInfo::default_instance_);
  }

  if (proto::gpsd::LtlInfo_LtlLutParams::default_instance_)
  {
    (*(*proto::gpsd::LtlInfo_LtlLutParams::default_instance_ + 8))(proto::gpsd::LtlInfo_LtlLutParams::default_instance_);
  }

  if (proto::gpsd::LtlInfo_LtlCurrentSrcCalibData::default_instance_)
  {
    (*(*proto::gpsd::LtlInfo_LtlCurrentSrcCalibData::default_instance_ + 8))(proto::gpsd::LtlInfo_LtlCurrentSrcCalibData::default_instance_);
  }

  if (proto::gpsd::LtlInfo_LtlRacPmicAdcPreCalData::default_instance_)
  {
    (*(*proto::gpsd::LtlInfo_LtlRacPmicAdcPreCalData::default_instance_ + 8))(proto::gpsd::LtlInfo_LtlRacPmicAdcPreCalData::default_instance_);
  }

  if (proto::gpsd::LtlInfo_LtlInitialParams::default_instance_)
  {
    (*(*proto::gpsd::LtlInfo_LtlInitialParams::default_instance_ + 8))(proto::gpsd::LtlInfo_LtlInitialParams::default_instance_);
  }

  if (proto::gpsd::Exception::default_instance_)
  {
    (*(*proto::gpsd::Exception::default_instance_ + 8))(proto::gpsd::Exception::default_instance_);
  }

  if (proto::gpsd::AskBasebandReset::default_instance_)
  {
    (*(*proto::gpsd::AskBasebandReset::default_instance_ + 8))(proto::gpsd::AskBasebandReset::default_instance_);
  }

  if (proto::gpsd::LogEntry::default_instance_)
  {
    (*(*proto::gpsd::LogEntry::default_instance_ + 8))(proto::gpsd::LogEntry::default_instance_);
  }

  result = proto::gpsd::StartContext::default_instance_;
  if (proto::gpsd::StartContext::default_instance_)
  {
    v2 = *(*proto::gpsd::StartContext::default_instance_ + 8);

    return v2();
  }

  return result;
}

void proto::gpsd::protobuf_AddDesc_GpsdProtocol_2eproto(proto::gpsd *this, uint64_t a2, uint64_t a3, const char *a4)
{
  if ((proto::gpsd::protobuf_AddDesc_GpsdProtocol_2eproto(void)::already_here & 1) == 0)
  {
    proto::gpsd::protobuf_AddDesc_GpsdProtocol_2eproto(void)::already_here = 1;
    v4 = wireless_diagnostics::google::protobuf::internal::VerifyVersion(0x1E9808, 2005000, "Sources/Protobuf/Generated/GpsdProtocol.pb.cc", a4);
    proto::gnss::protobuf_AddDesc_GnssTypes_2eproto(v4, v5, v6, v7);
    proto::gnss::Emergency::protobuf_AddDesc_GnssEmergencyTypes_2eproto(v8, v9, v10, v11);
    CLP::LogEntry::PrivateData::protobuf_AddDesc_CLPGnssMeasApi_2eproto(v12, v13, v14, v15);
    operator new();
  }
}

double proto::gpsd::Request::Request(proto::gpsd::Request *this)
{
  *this = &unk_285862088;
  *(this + 41) = 0;
  *(this + 42) = 0;
  *(this + 45) = 0;
  *(this + 98) = 0;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 88) = 0u;
  *(this + 104) = 0u;
  *(this + 120) = 0u;
  *(this + 136) = 0u;
  *(this + 152) = 0u;
  *(this + 168) = 0u;
  *(this + 184) = 0u;
  *(this + 200) = 0u;
  *(this + 216) = 0u;
  *(this + 232) = 0u;
  v2 = MEMORY[0x277D82C30];
  *(this + 31) = 0;
  *(this + 32) = v2;
  *(this + 43) = 0;
  *(this + 44) = 0;
  *(this + 368) = 0;
  *(this + 396) = 0;
  *(this + 264) = 0u;
  *(this + 280) = 0u;
  *(this + 296) = 0u;
  *(this + 312) = 0u;
  *(this + 97) = 0;
  *(this + 372) = 0;
  *(this + 380) = 0;
  return result;
}

{
  *this = &unk_285862088;
  *(this + 41) = 0;
  *(this + 42) = 0;
  *(this + 45) = 0;
  *(this + 98) = 0;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 88) = 0u;
  *(this + 104) = 0u;
  *(this + 120) = 0u;
  *(this + 136) = 0u;
  *(this + 152) = 0u;
  *(this + 168) = 0u;
  *(this + 184) = 0u;
  *(this + 200) = 0u;
  *(this + 216) = 0u;
  *(this + 232) = 0u;
  v2 = MEMORY[0x277D82C30];
  *(this + 31) = 0;
  *(this + 32) = v2;
  *(this + 43) = 0;
  *(this + 44) = 0;
  *(this + 368) = 0;
  *(this + 396) = 0;
  *(this + 264) = 0u;
  *(this + 280) = 0u;
  *(this + 296) = 0u;
  *(this + 312) = 0u;
  *(this + 97) = 0;
  *(this + 372) = 0;
  *(this + 380) = 0;
  return result;
}

void *proto::gpsd::Response::Response(void *this)
{
  *this = &unk_285862100;
  this[1] = 0;
  this[2] = 0;
  this[3] = 0;
  return this;
}

{
  *this = &unk_285862100;
  this[1] = 0;
  this[2] = 0;
  this[3] = 0;
  return this;
}

double proto::gpsd::Indication::Indication(proto::gpsd::Indication *this)
{
  *this = &unk_285862178;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 88) = 0u;
  *(this + 104) = 0u;
  v2 = MEMORY[0x277D82C30];
  *(this + 15) = 0;
  *(this + 16) = v2;
  *(this + 53) = 0;
  *(this + 54) = 0;
  *(this + 136) = 0u;
  *(this + 152) = 0u;
  *(this + 168) = 0u;
  *(this + 184) = 0u;
  *(this + 196) = 0u;
  return result;
}

{
  *this = &unk_285862178;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 88) = 0u;
  *(this + 104) = 0u;
  v2 = MEMORY[0x277D82C30];
  *(this + 15) = 0;
  *(this + 16) = v2;
  *(this + 53) = 0;
  *(this + 54) = 0;
  *(this + 136) = 0u;
  *(this + 152) = 0u;
  *(this + 168) = 0u;
  *(this + 184) = 0u;
  *(this + 196) = 0u;
  return result;
}

uint64_t proto::gpsd::Status::Status(uint64_t this)
{
  *(this + 28) = 0;
  *(this + 32) = 0;
  *(this + 8) = 0;
  *(this + 16) = 0;
  *this = &unk_2858621F0;
  *(this + 23) = 0;
  return this;
}

{
  *(this + 28) = 0;
  *(this + 32) = 0;
  *(this + 8) = 0;
  *(this + 16) = 0;
  *this = &unk_2858621F0;
  *(this + 23) = 0;
  return this;
}

uint64_t proto::gpsd::SetPvtmReport::SetPvtmReport(uint64_t this)
{
  *this = &unk_285862268;
  *(this + 16) = 0;
  *(this + 8) = 1;
  *(this + 9) = 0;
  *(this + 13) = 0;
  return this;
}

{
  *this = &unk_285862268;
  *(this + 16) = 0;
  *(this + 8) = 1;
  *(this + 9) = 0;
  *(this + 13) = 0;
  return this;
}

void *proto::gpsd::InjectAssistanceFile::InjectAssistanceFile(void *this)
{
  v1 = MEMORY[0x277D82C30];
  *this = &unk_2858622E0;
  this[1] = v1;
  this[2] = 0;
  this[3] = 0;
  return this;
}

{
  v1 = MEMORY[0x277D82C30];
  *this = &unk_2858622E0;
  this[1] = v1;
  this[2] = 0;
  this[3] = 0;
  return this;
}

void *proto::gpsd::InjectRtiFile::InjectRtiFile(void *this)
{
  v1 = MEMORY[0x277D82C30];
  *this = &unk_285862358;
  this[1] = v1;
  this[2] = 0;
  return this;
}

{
  v1 = MEMORY[0x277D82C30];
  *this = &unk_285862358;
  this[1] = v1;
  this[2] = 0;
  return this;
}

void *proto::gpsd::InjectRavenOrbitFile::InjectRavenOrbitFile(void *this)
{
  v1 = MEMORY[0x277D82C30];
  *this = &unk_2858623D0;
  this[1] = v1;
  this[2] = 0;
  return this;
}

{
  v1 = MEMORY[0x277D82C30];
  *this = &unk_2858623D0;
  this[1] = v1;
  this[2] = 0;
  return this;
}

uint64_t proto::gpsd::InjectSvidBlocklist::InjectSvidBlocklist(uint64_t this)
{
  *(this + 8) = 0;
  *(this + 16) = 0;
  *this = &unk_285862448;
  *(this + 24) = 0;
  *(this + 32) = 0;
  return this;
}

{
  *(this + 8) = 0;
  *(this + 16) = 0;
  *this = &unk_285862448;
  *(this + 24) = 0;
  *(this + 32) = 0;
  return this;
}

uint64_t proto::gpsd::InjectAssistancePosition::InjectAssistancePosition(uint64_t this)
{
  *this = &unk_2858624C0;
  *(this + 8) = 0;
  *(this + 16) = 0;
  *(this + 20) = 0;
  *(this + 24) = 0;
  *(this + 32) = 0;
  return this;
}

{
  *this = &unk_2858624C0;
  *(this + 8) = 0;
  *(this + 16) = 0;
  *(this + 20) = 0;
  *(this + 24) = 0;
  *(this + 32) = 0;
  return this;
}

double proto::gpsd::InjectAssistanceTime::InjectAssistanceTime(proto::gpsd::InjectAssistanceTime *this)
{
  *this = &unk_285862538;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  return result;
}

{
  *this = &unk_285862538;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  return result;
}

void *proto::gpsd::DeleteGnssData::DeleteGnssData(void *this)
{
  this[1] = 0;
  this[2] = 0;
  *this = &unk_2858625B0;
  return this;
}

{
  this[1] = 0;
  this[2] = 0;
  *this = &unk_2858625B0;
  return this;
}

void *proto::gpsd::SetNmeaHandler::SetNmeaHandler(void *this)
{
  this[1] = 0;
  this[2] = 0;
  *this = &unk_285862628;
  return this;
}

{
  this[1] = 0;
  this[2] = 0;
  *this = &unk_285862628;
  return this;
}

uint64_t proto::gpsd::SetAssistancePressure::SetAssistancePressure(uint64_t this)
{
  *(this + 8) = 0;
  *(this + 16) = 0;
  *this = &unk_2858626A0;
  *(this + 24) = 0;
  *(this + 32) = 0;
  return this;
}

{
  *(this + 8) = 0;
  *(this + 16) = 0;
  *this = &unk_2858626A0;
  *(this + 24) = 0;
  *(this + 32) = 0;
  return this;
}

uint64_t proto::gpsd::SetAssistanceAccel::SetAssistanceAccel(uint64_t this)
{
  *(this + 8) = 0;
  *(this + 16) = 0;
  *this = &unk_285862718;
  *(this + 24) = 0;
  *(this + 32) = 0;
  return this;
}

{
  *(this + 8) = 0;
  *(this + 16) = 0;
  *this = &unk_285862718;
  *(this + 24) = 0;
  *(this + 32) = 0;
  return this;
}

uint64_t proto::gpsd::SetAssistanceGyro::SetAssistanceGyro(uint64_t this)
{
  *(this + 8) = 0;
  *(this + 16) = 0;
  *this = &unk_285862790;
  *(this + 24) = 0;
  *(this + 32) = 0;
  return this;
}

{
  *(this + 8) = 0;
  *(this + 16) = 0;
  *this = &unk_285862790;
  *(this + 24) = 0;
  *(this + 32) = 0;
  return this;
}

double proto::gpsd::SetAssistanceDem::SetAssistanceDem(proto::gpsd::SetAssistanceDem *this)
{
  *this = &unk_285862808;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  return result;
}

{
  *this = &unk_285862808;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  return result;
}

double proto::gpsd::SetAssistanceMapVector::SetAssistanceMapVector(proto::gpsd::SetAssistanceMapVector *this)
{
  *this = &unk_285862880;
  *(this + 9) = 0;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 54) = 0u;
  return result;
}

{
  *this = &unk_285862880;
  *(this + 9) = 0;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 54) = 0u;
  return result;
}

double proto::gpsd::SetAssistanceMotionActivityContext::SetAssistanceMotionActivityContext(proto::gpsd::SetAssistanceMotionActivityContext *this)
{
  *this = &unk_2858628F8;
  *(this + 1) = 0;
  *&result = 0x400000000;
  *(this + 2) = 0x400000000;
  *(this + 3) = 0;
  *(this + 8) = 0;
  return result;
}

{
  *this = &unk_2858628F8;
  *(this + 1) = 0;
  *&result = 0x400000000;
  *(this + 2) = 0x400000000;
  *(this + 3) = 0;
  *(this + 8) = 0;
  return result;
}

uint64_t proto::gpsd::SetAssistanceMountState::SetAssistanceMountState(uint64_t this)
{
  *this = &unk_285862970;
  *(this + 8) = 0;
  *(this + 16) = 4;
  *(this + 24) = 0;
  return this;
}

{
  *this = &unk_285862970;
  *(this + 8) = 0;
  *(this + 16) = 4;
  *(this + 24) = 0;
  return this;
}

double proto::gpsd::SetAssistanceSignalEnvironment::SetAssistanceSignalEnvironment(proto::gpsd::SetAssistanceSignalEnvironment *this)
{
  *this = &unk_2858629E8;
  *&result = 15;
  *(this + 1) = 15;
  *(this + 4) = 0;
  return result;
}

{
  *this = &unk_2858629E8;
  *&result = 15;
  *(this + 1) = 15;
  *(this + 4) = 0;
  return result;
}

double proto::gpsd::SetAssistanceSpeedConstraint::SetAssistanceSpeedConstraint(proto::gpsd::SetAssistanceSpeedConstraint *this)
{
  *this = &unk_285862A60;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 5) = 0;
  return result;
}

{
  *this = &unk_285862A60;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 5) = 0;
  return result;
}

double proto::gpsd::SetAssistanceAlongTrackVelocity::SetAssistanceAlongTrackVelocity(proto::gpsd::SetAssistanceAlongTrackVelocity *this)
{
  *this = &unk_285862AD8;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  return result;
}

{
  *this = &unk_285862AD8;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  return result;
}

uint64_t proto::gpsd::SetThermalRiskState::SetThermalRiskState(uint64_t this)
{
  *(this + 8) = 0;
  *(this + 16) = 0;
  *this = &unk_285862B50;
  *(this + 24) = 0;
  return this;
}

{
  *(this + 8) = 0;
  *(this + 16) = 0;
  *this = &unk_285862B50;
  *(this + 24) = 0;
  return this;
}

uint64_t proto::gpsd::SetConfigSimulatorMode::SetConfigSimulatorMode(uint64_t this)
{
  *this = &unk_285862BC8;
  *(this + 8) = 0;
  *(this + 12) = 0;
  *(this + 20) = 0;
  return this;
}

{
  *this = &unk_285862BC8;
  *(this + 8) = 0;
  *(this + 12) = 0;
  *(this + 20) = 0;
  return this;
}

void *proto::gpsd::SetConfigEnableGnssConstellations::SetConfigEnableGnssConstellations(void *this)
{
  this[1] = 0;
  this[2] = 0;
  *this = &unk_285862C40;
  return this;
}

{
  this[1] = 0;
  this[2] = 0;
  *this = &unk_285862C40;
  return this;
}

uint64_t proto::gpsd::SetConfigRfBandEnable::SetConfigRfBandEnable(uint64_t this)
{
  *this = &unk_285862CB8;
  *(this + 12) = 0;
  *(this + 8) = 0;
  return this;
}

{
  *this = &unk_285862CB8;
  *(this + 12) = 0;
  *(this + 8) = 0;
  return this;
}

uint64_t proto::gpsd::SetConfigDutyCycling::SetConfigDutyCycling(uint64_t this)
{
  *this = &unk_285862D30;
  *(this + 12) = 0;
  *(this + 8) = 0;
  return this;
}

{
  *this = &unk_285862D30;
  *(this + 12) = 0;
  *(this + 8) = 0;
  return this;
}

void *proto::gpsd::TerminationImminent::TerminationImminent(void *this)
{
  v1 = MEMORY[0x277D82C30];
  *this = &unk_285862DA8;
  this[1] = v1;
  this[2] = 0;
  return this;
}

{
  v1 = MEMORY[0x277D82C30];
  *this = &unk_285862DA8;
  this[1] = v1;
  this[2] = 0;
  return this;
}

void *proto::gpsd::ExitMessage::ExitMessage(void *this)
{
  v1 = MEMORY[0x277D82C30];
  *this = &unk_285862E20;
  this[1] = v1;
  this[2] = 0;
  return this;
}

{
  v1 = MEMORY[0x277D82C30];
  *this = &unk_285862E20;
  this[1] = v1;
  this[2] = 0;
  return this;
}

uint64_t proto::gpsd::RecoveryStatistics::RecoveryStatistics(uint64_t this)
{
  *(this + 8) = 0;
  *(this + 16) = 0;
  *this = &unk_285862F88;
  *(this + 24) = 0;
  *(this + 32) = 0;
  *(this + 40) = 0;
  return this;
}

{
  *(this + 8) = 0;
  *(this + 16) = 0;
  *this = &unk_285862F88;
  *(this + 24) = 0;
  *(this + 32) = 0;
  *(this + 40) = 0;
  return this;
}

uint64_t proto::gpsd::RecoveryStatistics_RecoveryStatus::RecoveryStatistics_RecoveryStatus(uint64_t this)
{
  *this = &unk_285862E98;
  *(this + 16) = 0;
  *(this + 8) = 0;
  *(this + 11) = 0;
  return this;
}

{
  *this = &unk_285862E98;
  *(this + 16) = 0;
  *(this + 8) = 0;
  *(this + 11) = 0;
  return this;
}

uint64_t proto::gpsd::RecoveryStatistics_RecoveryPoint::RecoveryStatistics_RecoveryPoint(uint64_t this)
{
  v1 = MEMORY[0x277D82C30];
  *this = &unk_285862F10;
  *(this + 8) = v1;
  *(this + 16) = v1;
  *(this + 24) = 0;
  *(this + 32) = 0;
  return this;
}

{
  v1 = MEMORY[0x277D82C30];
  *this = &unk_285862F10;
  *(this + 8) = v1;
  *(this + 16) = v1;
  *(this + 24) = 0;
  *(this + 32) = 0;
  return this;
}

uint64_t proto::gpsd::LtlInfoRequest::LtlInfoRequest(uint64_t this)
{
  *this = &unk_285863000;
  *(this + 8) = 0;
  *(this + 16) = 0;
  return this;
}

{
  *this = &unk_285863000;
  *(this + 8) = 0;
  *(this + 16) = 0;
  return this;
}

double proto::gpsd::LtlInfo::LtlInfo(proto::gpsd::LtlInfo *this)
{
  *this = &unk_285863258;
  *(this + 8) = 0;
  result = 0.0;
  *(this + 12) = 0u;
  *(this + 28) = 0u;
  *(this + 44) = 0u;
  return result;
}

{
  *this = &unk_285863258;
  *(this + 8) = 0;
  result = 0.0;
  *(this + 12) = 0u;
  *(this + 28) = 0u;
  *(this + 44) = 0u;
  return result;
}

double proto::gpsd::LtlInfo_LtlLutParams::LtlInfo_LtlLutParams(proto::gpsd::LtlInfo_LtlLutParams *this)
{
  *this = &unk_285863078;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  return result;
}

{
  *this = &unk_285863078;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  return result;
}

double proto::gpsd::LtlInfo_LtlCurrentSrcCalibData::LtlInfo_LtlCurrentSrcCalibData(proto::gpsd::LtlInfo_LtlCurrentSrcCalibData *this)
{
  *this = &unk_2858630F0;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  return result;
}

{
  *this = &unk_2858630F0;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  return result;
}

void *proto::gpsd::LtlInfo_LtlRacPmicAdcPreCalData::LtlInfo_LtlRacPmicAdcPreCalData(void *this)
{
  this[1] = 0;
  this[2] = 0;
  *this = &unk_285863168;
  return this;
}

{
  this[1] = 0;
  this[2] = 0;
  *this = &unk_285863168;
  return this;
}

uint64_t proto::gpsd::LtlInfo_LtlInitialParams::LtlInfo_LtlInitialParams(uint64_t this)
{
  *this = &unk_2858631E0;
  *(this + 8) = 0;
  *(this + 16) = 0;
  *(this + 24) = 0;
  *(this + 32) = 0;
  *(this + 36) = 0;
  *(this + 52) = 0;
  *(this + 44) = 0;
  return this;
}

{
  *this = &unk_2858631E0;
  *(this + 8) = 0;
  *(this + 16) = 0;
  *(this + 24) = 0;
  *(this + 32) = 0;
  *(this + 36) = 0;
  *(this + 52) = 0;
  *(this + 44) = 0;
  return this;
}

uint64_t proto::gpsd::Exception::Exception(uint64_t this)
{
  *(this + 8) = 0;
  *(this + 16) = 0;
  *this = &unk_2858632D0;
  *(this + 24) = 0;
  return this;
}

{
  *(this + 8) = 0;
  *(this + 16) = 0;
  *this = &unk_2858632D0;
  *(this + 24) = 0;
  return this;
}

void *proto::gpsd::AskBasebandReset::AskBasebandReset(void *this)
{
  v1 = MEMORY[0x277D82C30];
  *this = &unk_285863348;
  this[1] = 0;
  this[2] = 0;
  this[3] = v1;
  this[4] = 0;
  return this;
}

{
  v1 = MEMORY[0x277D82C30];
  *this = &unk_285863348;
  this[1] = 0;
  this[2] = 0;
  this[3] = v1;
  this[4] = 0;
  return this;
}

void *proto::gpsd::LogEntry::LogEntry(void *this)
{
  this[6] = 0;
  v1 = MEMORY[0x277D82C30];
  *this = &unk_2858633C0;
  this[1] = 0;
  this[2] = v1;
  this[3] = 0;
  this[4] = 0;
  this[5] = 0;
  return this;
}

{
  this[6] = 0;
  v1 = MEMORY[0x277D82C30];
  *this = &unk_2858633C0;
  this[1] = 0;
  this[2] = v1;
  this[3] = 0;
  this[4] = 0;
  this[5] = 0;
  return this;
}

uint64_t proto::gpsd::StartContext::StartContext(uint64_t this)
{
  *(this + 8) = 0;
  *(this + 16) = 0;
  *this = &unk_285863438;
  *(this + 24) = 0;
  return this;
}

{
  *(this + 8) = 0;
  *(this + 16) = 0;
  *this = &unk_285863438;
  *(this + 24) = 0;
  return this;
}

void proto::gpsd::Request::InitAsDefaultInstance(proto::gpsd::Request *this, uint64_t a2, uint64_t a3, const char *a4)
{
  v5 = proto::gpsd::InjectAssistancePosition::default_instance_;
  if (!proto::gpsd::InjectAssistancePosition::default_instance_)
  {
    proto::gpsd::protobuf_AddDesc_GpsdProtocol_2eproto(this, a2, a3, a4);
    v5 = proto::gpsd::InjectAssistancePosition::default_instance_;
  }

  *(this + 3) = v5;
  v6 = proto::gpsd::InjectAssistanceTime::default_instance_;
  if (!proto::gpsd::InjectAssistanceTime::default_instance_)
  {
    proto::gpsd::protobuf_AddDesc_GpsdProtocol_2eproto(this, a2, a3, a4);
    v6 = proto::gpsd::InjectAssistanceTime::default_instance_;
  }

  *(this + 4) = v6;
  v7 = proto::gpsd::SetAssistancePressure::default_instance_;
  if (!proto::gpsd::SetAssistancePressure::default_instance_)
  {
    proto::gpsd::protobuf_AddDesc_GpsdProtocol_2eproto(this, a2, a3, a4);
    v7 = proto::gpsd::SetAssistancePressure::default_instance_;
  }

  *(this + 5) = v7;
  v8 = proto::gpsd::SetAssistanceAccel::default_instance_;
  if (!proto::gpsd::SetAssistanceAccel::default_instance_)
  {
    proto::gpsd::protobuf_AddDesc_GpsdProtocol_2eproto(this, a2, a3, a4);
    v8 = proto::gpsd::SetAssistanceAccel::default_instance_;
  }

  *(this + 6) = v8;
  v9 = proto::gpsd::SetAssistanceGyro::default_instance_;
  if (!proto::gpsd::SetAssistanceGyro::default_instance_)
  {
    proto::gpsd::protobuf_AddDesc_GpsdProtocol_2eproto(this, a2, a3, a4);
    v9 = proto::gpsd::SetAssistanceGyro::default_instance_;
  }

  *(this + 7) = v9;
  v10 = proto::gpsd::SetAssistanceDem::default_instance_;
  if (!proto::gpsd::SetAssistanceDem::default_instance_)
  {
    proto::gpsd::protobuf_AddDesc_GpsdProtocol_2eproto(this, a2, a3, a4);
    v10 = proto::gpsd::SetAssistanceDem::default_instance_;
  }

  *(this + 8) = v10;
  v11 = proto::gpsd::SetAssistanceMapVector::default_instance_;
  if (!proto::gpsd::SetAssistanceMapVector::default_instance_)
  {
    proto::gpsd::protobuf_AddDesc_GpsdProtocol_2eproto(this, a2, a3, a4);
    v11 = proto::gpsd::SetAssistanceMapVector::default_instance_;
  }

  *(this + 9) = v11;
  v12 = proto::gpsd::SetAssistanceMotionActivityContext::default_instance_;
  if (!proto::gpsd::SetAssistanceMotionActivityContext::default_instance_)
  {
    proto::gpsd::protobuf_AddDesc_GpsdProtocol_2eproto(this, a2, a3, a4);
    v12 = proto::gpsd::SetAssistanceMotionActivityContext::default_instance_;
  }

  *(this + 10) = v12;
  v13 = proto::gpsd::SetAssistanceMountState::default_instance_;
  if (!proto::gpsd::SetAssistanceMountState::default_instance_)
  {
    proto::gpsd::protobuf_AddDesc_GpsdProtocol_2eproto(this, a2, a3, a4);
    v13 = proto::gpsd::SetAssistanceMountState::default_instance_;
  }

  *(this + 11) = v13;
  v14 = proto::gpsd::SetAssistanceSignalEnvironment::default_instance_;
  if (!proto::gpsd::SetAssistanceSignalEnvironment::default_instance_)
  {
    proto::gpsd::protobuf_AddDesc_GpsdProtocol_2eproto(this, a2, a3, a4);
    v14 = proto::gpsd::SetAssistanceSignalEnvironment::default_instance_;
  }

  *(this + 12) = v14;
  v15 = proto::gpsd::SetAssistanceSpeedConstraint::default_instance_;
  if (!proto::gpsd::SetAssistanceSpeedConstraint::default_instance_)
  {
    proto::gpsd::protobuf_AddDesc_GpsdProtocol_2eproto(this, a2, a3, a4);
    v15 = proto::gpsd::SetAssistanceSpeedConstraint::default_instance_;
  }

  *(this + 13) = v15;
  v16 = proto::gpsd::SetAssistanceAlongTrackVelocity::default_instance_;
  if (!proto::gpsd::SetAssistanceAlongTrackVelocity::default_instance_)
  {
    proto::gpsd::protobuf_AddDesc_GpsdProtocol_2eproto(this, a2, a3, a4);
    v16 = proto::gpsd::SetAssistanceAlongTrackVelocity::default_instance_;
  }

  *(this + 14) = v16;
  v17 = proto::gpsd::InjectAssistanceFile::default_instance_;
  if (!proto::gpsd::InjectAssistanceFile::default_instance_)
  {
    proto::gpsd::protobuf_AddDesc_GpsdProtocol_2eproto(this, a2, a3, a4);
    v17 = proto::gpsd::InjectAssistanceFile::default_instance_;
  }

  *(this + 15) = v17;
  v18 = proto::gpsd::InjectRtiFile::default_instance_;
  if (!proto::gpsd::InjectRtiFile::default_instance_)
  {
    proto::gpsd::protobuf_AddDesc_GpsdProtocol_2eproto(this, a2, a3, a4);
    v18 = proto::gpsd::InjectRtiFile::default_instance_;
  }

  *(this + 16) = v18;
  v19 = proto::gpsd::InjectSvidBlocklist::default_instance_;
  if (!proto::gpsd::InjectSvidBlocklist::default_instance_)
  {
    proto::gpsd::protobuf_AddDesc_GpsdProtocol_2eproto(this, a2, a3, a4);
    v19 = proto::gpsd::InjectSvidBlocklist::default_instance_;
  }

  *(this + 17) = v19;
  v20 = proto::gpsd::DeleteGnssData::default_instance_;
  if (!proto::gpsd::DeleteGnssData::default_instance_)
  {
    proto::gpsd::protobuf_AddDesc_GpsdProtocol_2eproto(this, a2, a3, a4);
    v20 = proto::gpsd::DeleteGnssData::default_instance_;
  }

  *(this + 18) = v20;
  v21 = proto::gpsd::SetPvtmReport::default_instance_;
  if (!proto::gpsd::SetPvtmReport::default_instance_)
  {
    proto::gpsd::protobuf_AddDesc_GpsdProtocol_2eproto(this, a2, a3, a4);
    v21 = proto::gpsd::SetPvtmReport::default_instance_;
  }

  *(this + 19) = v21;
  v22 = proto::gpsd::SetNmeaHandler::default_instance_;
  if (!proto::gpsd::SetNmeaHandler::default_instance_)
  {
    proto::gpsd::protobuf_AddDesc_GpsdProtocol_2eproto(this, a2, a3, a4);
    v22 = proto::gpsd::SetNmeaHandler::default_instance_;
  }

  *(this + 20) = v22;
  v23 = proto::gpsd::SetConfigSimulatorMode::default_instance_;
  if (!proto::gpsd::SetConfigSimulatorMode::default_instance_)
  {
    proto::gpsd::protobuf_AddDesc_GpsdProtocol_2eproto(this, a2, a3, a4);
    v23 = proto::gpsd::SetConfigSimulatorMode::default_instance_;
  }

  *(this + 21) = v23;
  v24 = proto::gpsd::SetConfigEnableGnssConstellations::default_instance_;
  if (!proto::gpsd::SetConfigEnableGnssConstellations::default_instance_)
  {
    proto::gpsd::protobuf_AddDesc_GpsdProtocol_2eproto(this, a2, a3, a4);
    v24 = proto::gpsd::SetConfigEnableGnssConstellations::default_instance_;
  }

  *(this + 22) = v24;
  v25 = proto::gpsd::SetConfigDutyCycling::default_instance_;
  if (!proto::gpsd::SetConfigDutyCycling::default_instance_)
  {
    proto::gpsd::protobuf_AddDesc_GpsdProtocol_2eproto(this, a2, a3, a4);
    v25 = proto::gpsd::SetConfigDutyCycling::default_instance_;
  }

  *(this + 23) = v25;
  v26 = proto::gpsd::TerminationImminent::default_instance_;
  if (!proto::gpsd::TerminationImminent::default_instance_)
  {
    proto::gpsd::protobuf_AddDesc_GpsdProtocol_2eproto(this, a2, a3, a4);
    v26 = proto::gpsd::TerminationImminent::default_instance_;
  }

  *(this + 24) = v26;
  v27 = proto::gpsd::ExitMessage::default_instance_;
  if (!proto::gpsd::ExitMessage::default_instance_)
  {
    proto::gpsd::protobuf_AddDesc_GpsdProtocol_2eproto(this, a2, a3, a4);
    v27 = proto::gpsd::ExitMessage::default_instance_;
  }

  *(this + 25) = v27;
  v28 = proto::gpsd::LtlInfo::default_instance_;
  if (!proto::gpsd::LtlInfo::default_instance_)
  {
    proto::gpsd::protobuf_AddDesc_GpsdProtocol_2eproto(this, a2, a3, a4);
    v28 = proto::gpsd::LtlInfo::default_instance_;
  }

  *(this + 26) = v28;
  v29 = proto::gpsd::StartContext::default_instance_;
  if (!proto::gpsd::StartContext::default_instance_)
  {
    proto::gpsd::protobuf_AddDesc_GpsdProtocol_2eproto(this, a2, a3, a4);
    v29 = proto::gpsd::StartContext::default_instance_;
  }

  *(this + 27) = v29;
  v30 = proto::gpsd::SetThermalRiskState::default_instance_;
  if (!proto::gpsd::SetThermalRiskState::default_instance_)
  {
    proto::gpsd::protobuf_AddDesc_GpsdProtocol_2eproto(this, a2, a3, a4);
    v30 = proto::gpsd::SetThermalRiskState::default_instance_;
  }

  *(this + 28) = v30;
  v31 = proto::gpsd::SetConfigRfBandEnable::default_instance_;
  if (!proto::gpsd::SetConfigRfBandEnable::default_instance_)
  {
    proto::gpsd::protobuf_AddDesc_GpsdProtocol_2eproto(this, a2, a3, a4);
    v31 = proto::gpsd::SetConfigRfBandEnable::default_instance_;
  }

  *(this + 29) = v31;
  v32 = proto::gpsd::InjectRavenOrbitFile::default_instance_;
  if (!proto::gpsd::InjectRavenOrbitFile::default_instance_)
  {
    proto::gpsd::protobuf_AddDesc_GpsdProtocol_2eproto(this, a2, a3, a4);
    v32 = proto::gpsd::InjectRavenOrbitFile::default_instance_;
  }

  *(this + 30) = v32;
  v33 = proto::gnss::Emergency::EmergConfig::default_instance_;
  if (!proto::gnss::Emergency::EmergConfig::default_instance_)
  {
    proto::gnss::Emergency::protobuf_AddDesc_GnssEmergencyTypes_2eproto(this, a2, a3, a4);
    v33 = proto::gnss::Emergency::EmergConfig::default_instance_;
  }

  *(this + 31) = v33;
  v34 = proto::gnss::Emergency::PositionRequest::default_instance_;
  if (!proto::gnss::Emergency::PositionRequest::default_instance_)
  {
    proto::gnss::Emergency::protobuf_AddDesc_GnssEmergencyTypes_2eproto(this, a2, a3, a4);
    v34 = proto::gnss::Emergency::PositionRequest::default_instance_;
  }

  *(this + 33) = v34;
  v35 = proto::gnss::Emergency::GpsReferenceTime::default_instance_;
  if (!proto::gnss::Emergency::GpsReferenceTime::default_instance_)
  {
    proto::gnss::Emergency::protobuf_AddDesc_GnssEmergencyTypes_2eproto(this, a2, a3, a4);
    v35 = proto::gnss::Emergency::GpsReferenceTime::default_instance_;
  }

  *(this + 34) = v35;
  v36 = proto::gnss::Emergency::ReferenceLocation::default_instance_;
  if (!proto::gnss::Emergency::ReferenceLocation::default_instance_)
  {
    proto::gnss::Emergency::protobuf_AddDesc_GnssEmergencyTypes_2eproto(this, a2, a3, a4);
    v36 = proto::gnss::Emergency::ReferenceLocation::default_instance_;
  }

  *(this + 35) = v36;
  v37 = proto::gnss::Emergency::GpsNavigationModel::default_instance_;
  if (!proto::gnss::Emergency::GpsNavigationModel::default_instance_)
  {
    proto::gnss::Emergency::protobuf_AddDesc_GnssEmergencyTypes_2eproto(this, a2, a3, a4);
    v37 = proto::gnss::Emergency::GpsNavigationModel::default_instance_;
  }

  *(this + 36) = v37;
  v38 = proto::gnss::Emergency::GpsAcqAssistance::default_instance_;
  if (!proto::gnss::Emergency::GpsAcqAssistance::default_instance_)
  {
    proto::gnss::Emergency::protobuf_AddDesc_GnssEmergencyTypes_2eproto(this, a2, a3, a4);
    v38 = proto::gnss::Emergency::GpsAcqAssistance::default_instance_;
  }

  *(this + 37) = v38;
  v39 = proto::gnss::Emergency::CellFTAssistance::default_instance_;
  if (!proto::gnss::Emergency::CellFTAssistance::default_instance_)
  {
    proto::gnss::Emergency::protobuf_AddDesc_GnssEmergencyTypes_2eproto(this, a2, a3, a4);
    v39 = proto::gnss::Emergency::CellFTAssistance::default_instance_;
  }

  *(this + 39) = v39;
  v40 = proto::gnss::Emergency::CplaneContext::default_instance_;
  if (!proto::gnss::Emergency::CplaneContext::default_instance_)
  {
    proto::gnss::Emergency::protobuf_AddDesc_GnssEmergencyTypes_2eproto(this, a2, a3, a4);
    v40 = proto::gnss::Emergency::CplaneContext::default_instance_;
  }

  *(this + 40) = v40;
  v41 = proto::gnss::Emergency::LocationId::default_instance_;
  if (!proto::gnss::Emergency::LocationId::default_instance_)
  {
    proto::gnss::Emergency::protobuf_AddDesc_GnssEmergencyTypes_2eproto(this, a2, a3, a4);
    v41 = proto::gnss::Emergency::LocationId::default_instance_;
  }

  *(this + 43) = v41;
  v42 = proto::gnss::Emergency::SuplContext::default_instance_;
  if (!proto::gnss::Emergency::SuplContext::default_instance_)
  {
    proto::gnss::Emergency::protobuf_AddDesc_GnssEmergencyTypes_2eproto(this, a2, a3, a4);
    v42 = proto::gnss::Emergency::SuplContext::default_instance_;
  }

  *(this + 47) = v42;
  v43 = proto::gnss::Emergency::WlanMeasurementList::default_instance_;
  if (!proto::gnss::Emergency::WlanMeasurementList::default_instance_)
  {
    proto::gnss::Emergency::protobuf_AddDesc_GnssEmergencyTypes_2eproto(this, a2, a3, a4);
    v43 = proto::gnss::Emergency::WlanMeasurementList::default_instance_;
  }

  *(this + 48) = v43;
}

void proto::gpsd::Indication::InitAsDefaultInstance(proto::gpsd::Indication *this, uint64_t a2, uint64_t a3, const char *a4)
{
  v5 = proto::gnss::Fix::default_instance_;
  if (!proto::gnss::Fix::default_instance_)
  {
    proto::gnss::protobuf_AddDesc_GnssTypes_2eproto(this, a2, a3, a4);
    v5 = proto::gnss::Fix::default_instance_;
  }

  *(this + 3) = v5;
  v6 = CLP::LogEntry::PrivateData::MeasurementReportCallbackContents::default_instance_;
  if (!CLP::LogEntry::PrivateData::MeasurementReportCallbackContents::default_instance_)
  {
    CLP::LogEntry::PrivateData::protobuf_AddDesc_CLPGnssMeasApi_2eproto(this, a2, a3, a4);
    v6 = CLP::LogEntry::PrivateData::MeasurementReportCallbackContents::default_instance_;
  }

  *(this + 4) = v6;
  v7 = proto::gnss::PwrMeasurement::default_instance_;
  if (!proto::gnss::PwrMeasurement::default_instance_)
  {
    proto::gnss::protobuf_AddDesc_GnssTypes_2eproto(this, a2, a3, a4);
    v7 = proto::gnss::PwrMeasurement::default_instance_;
  }

  *(this + 5) = v7;
  v8 = proto::gpsd::Status::default_instance_;
  if (!proto::gpsd::Status::default_instance_)
  {
    proto::gpsd::protobuf_AddDesc_GpsdProtocol_2eproto(this, a2, a3, a4);
    v8 = proto::gpsd::Status::default_instance_;
  }

  *(this + 6) = v8;
  v9 = proto::gnss::TimeTransferDataExtend::default_instance_;
  if (!proto::gnss::TimeTransferDataExtend::default_instance_)
  {
    proto::gnss::protobuf_AddDesc_GnssTypes_2eproto(this, a2, a3, a4);
    v9 = proto::gnss::TimeTransferDataExtend::default_instance_;
  }

  *(this + 7) = v9;
  v10 = proto::gpsd::RecoveryStatistics::default_instance_;
  if (!proto::gpsd::RecoveryStatistics::default_instance_)
  {
    proto::gpsd::protobuf_AddDesc_GpsdProtocol_2eproto(this, a2, a3, a4);
    v10 = proto::gpsd::RecoveryStatistics::default_instance_;
  }

  *(this + 8) = v10;
  v11 = proto::gpsd::LtlInfoRequest::default_instance_;
  if (!proto::gpsd::LtlInfoRequest::default_instance_)
  {
    proto::gpsd::protobuf_AddDesc_GpsdProtocol_2eproto(this, a2, a3, a4);
    v11 = proto::gpsd::LtlInfoRequest::default_instance_;
  }

  *(this + 9) = v11;
  v12 = proto::gnss::DecodedExtendedEphemeris::default_instance_;
  if (!proto::gnss::DecodedExtendedEphemeris::default_instance_)
  {
    proto::gnss::protobuf_AddDesc_GnssTypes_2eproto(this, a2, a3, a4);
    v12 = proto::gnss::DecodedExtendedEphemeris::default_instance_;
  }

  *(this + 10) = v12;
  v13 = proto::gnss::DecodedRti::default_instance_;
  if (!proto::gnss::DecodedRti::default_instance_)
  {
    proto::gnss::protobuf_AddDesc_GnssTypes_2eproto(this, a2, a3, a4);
    v13 = proto::gnss::DecodedRti::default_instance_;
  }

  *(this + 11) = v13;
  v14 = proto::gpsd::Exception::default_instance_;
  if (!proto::gpsd::Exception::default_instance_)
  {
    proto::gpsd::protobuf_AddDesc_GpsdProtocol_2eproto(this, a2, a3, a4);
    v14 = proto::gpsd::Exception::default_instance_;
  }

  *(this + 13) = v14;
  v15 = proto::gpsd::AskBasebandReset::default_instance_;
  if (!proto::gpsd::AskBasebandReset::default_instance_)
  {
    proto::gpsd::protobuf_AddDesc_GpsdProtocol_2eproto(this, a2, a3, a4);
    v15 = proto::gpsd::AskBasebandReset::default_instance_;
  }

  *(this + 14) = v15;
  v16 = proto::gnss::Emergency::SummaryReport::default_instance_;
  if (!proto::gnss::Emergency::SummaryReport::default_instance_)
  {
    proto::gnss::Emergency::protobuf_AddDesc_GnssEmergencyTypes_2eproto(this, a2, a3, a4);
    v16 = proto::gnss::Emergency::SummaryReport::default_instance_;
  }

  *(this + 15) = v16;
  v17 = proto::gnss::Emergency::PositionReport::default_instance_;
  if (!proto::gnss::Emergency::PositionReport::default_instance_)
  {
    proto::gnss::Emergency::protobuf_AddDesc_GnssEmergencyTypes_2eproto(this, a2, a3, a4);
    v17 = proto::gnss::Emergency::PositionReport::default_instance_;
  }

  *(this + 17) = v17;
  v18 = proto::gnss::Emergency::MeasurementReport::default_instance_;
  if (!proto::gnss::Emergency::MeasurementReport::default_instance_)
  {
    proto::gnss::Emergency::protobuf_AddDesc_GnssEmergencyTypes_2eproto(this, a2, a3, a4);
    v18 = proto::gnss::Emergency::MeasurementReport::default_instance_;
  }

  *(this + 18) = v18;
  v19 = proto::gnss::Emergency::AssistanceNeededReport::default_instance_;
  if (!proto::gnss::Emergency::AssistanceNeededReport::default_instance_)
  {
    proto::gnss::Emergency::protobuf_AddDesc_GnssEmergencyTypes_2eproto(this, a2, a3, a4);
    v19 = proto::gnss::Emergency::AssistanceNeededReport::default_instance_;
  }

  *(this + 19) = v19;
  v20 = proto::gnss::Emergency::CellFTAssistanceRequest::default_instance_;
  if (!proto::gnss::Emergency::CellFTAssistanceRequest::default_instance_)
  {
    proto::gnss::Emergency::protobuf_AddDesc_GnssEmergencyTypes_2eproto(this, a2, a3, a4);
    v20 = proto::gnss::Emergency::CellFTAssistanceRequest::default_instance_;
  }

  *(this + 20) = v20;
  v21 = proto::gnss::Emergency::MeasurementReportWithEstimate::default_instance_;
  if (!proto::gnss::Emergency::MeasurementReportWithEstimate::default_instance_)
  {
    proto::gnss::Emergency::protobuf_AddDesc_GnssEmergencyTypes_2eproto(this, a2, a3, a4);
    v21 = proto::gnss::Emergency::MeasurementReportWithEstimate::default_instance_;
  }

  *(this + 21) = v21;
  v22 = proto::gnss::Emergency::SessionStatus::default_instance_;
  if (!proto::gnss::Emergency::SessionStatus::default_instance_)
  {
    proto::gnss::Emergency::protobuf_AddDesc_GnssEmergencyTypes_2eproto(this, a2, a3, a4);
    v22 = proto::gnss::Emergency::SessionStatus::default_instance_;
  }

  *(this + 22) = v22;
  v23 = proto::gnss::Emergency::Init::default_instance_;
  if (!proto::gnss::Emergency::Init::default_instance_)
  {
    proto::gnss::Emergency::protobuf_AddDesc_GnssEmergencyTypes_2eproto(this, a2, a3, a4);
    v23 = proto::gnss::Emergency::Init::default_instance_;
  }

  *(this + 23) = v23;
  v24 = proto::gnss::Emergency::WlanMeasurementRequest::default_instance_;
  if (!proto::gnss::Emergency::WlanMeasurementRequest::default_instance_)
  {
    proto::gnss::Emergency::protobuf_AddDesc_GnssEmergencyTypes_2eproto(this, a2, a3, a4);
    v24 = proto::gnss::Emergency::WlanMeasurementRequest::default_instance_;
  }

  *(this + 25) = v24;
}

void proto::gpsd::InjectAssistancePosition::InitAsDefaultInstance(proto::gpsd::InjectAssistancePosition *this, uint64_t a2, uint64_t a3, const char *a4)
{
  v5 = proto::gnss::Position::default_instance_;
  if (!proto::gnss::Position::default_instance_)
  {
    proto::gnss::protobuf_AddDesc_GnssTypes_2eproto(this, a2, a3, a4);
    v5 = proto::gnss::Position::default_instance_;
  }

  *(this + 1) = v5;
}

void proto::gpsd::RecoveryStatistics::InitAsDefaultInstance(proto::gpsd::RecoveryStatistics *this, uint64_t a2, uint64_t a3, const char *a4)
{
  v5 = proto::gpsd::RecoveryStatistics_RecoveryStatus::default_instance_;
  if (!proto::gpsd::RecoveryStatistics_RecoveryStatus::default_instance_)
  {
    proto::gpsd::protobuf_AddDesc_GpsdProtocol_2eproto(this, a2, a3, a4);
    v5 = proto::gpsd::RecoveryStatistics_RecoveryStatus::default_instance_;
  }

  *(this + 4) = v5;
}