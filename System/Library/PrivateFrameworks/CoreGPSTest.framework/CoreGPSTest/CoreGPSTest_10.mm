uint64_t CLP::LogEntry::PrivateData::MeasurementExtension::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 116);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(1, a2, *(this + 8), a3);
    v6 = *(v5 + 116);
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

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(2, a2, *(v5 + 12), a3);
  v6 = *(v5 + 116);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_26;
  }

LABEL_23:
  v8 = *(v5 + 16);
  if (!v8)
  {
    v8 = *(CLP::LogEntry::PrivateData::MeasurementExtension::default_instance_ + 16);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(3, v8, a2, a4);
  v6 = *(v5 + 116);
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_29;
  }

LABEL_26:
  v9 = *(v5 + 24);
  if (!v9)
  {
    v9 = *(CLP::LogEntry::PrivateData::MeasurementExtension::default_instance_ + 24);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(4, v9, a2, a4);
  v6 = *(v5 + 116);
  if ((v6 & 0x10) == 0)
  {
LABEL_6:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_32;
  }

LABEL_29:
  v10 = *(v5 + 32);
  if (!v10)
  {
    v10 = *(CLP::LogEntry::PrivateData::MeasurementExtension::default_instance_ + 32);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(5, v10, a2, a4);
  v6 = *(v5 + 116);
  if ((v6 & 0x20) == 0)
  {
LABEL_7:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_35;
  }

LABEL_32:
  v11 = *(v5 + 40);
  if (!v11)
  {
    v11 = *(CLP::LogEntry::PrivateData::MeasurementExtension::default_instance_ + 40);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(6, v11, a2, a4);
  v6 = *(v5 + 116);
  if ((v6 & 0x40) == 0)
  {
LABEL_8:
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_36;
  }

LABEL_35:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(7, *(v5 + 48), a2, a4);
  v6 = *(v5 + 116);
  if ((v6 & 0x80) == 0)
  {
LABEL_9:
    if ((v6 & 0x100) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_37;
  }

LABEL_36:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(8, *(v5 + 52), a2, a4);
  v6 = *(v5 + 116);
  if ((v6 & 0x100) == 0)
  {
LABEL_10:
    if ((v6 & 0x200) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_38;
  }

LABEL_37:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(9, *(v5 + 56), a2, a4);
  v6 = *(v5 + 116);
  if ((v6 & 0x200) == 0)
  {
LABEL_11:
    if ((v6 & 0x400) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_39;
  }

LABEL_38:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(0xA, *(v5 + 60), a2, a4);
  v6 = *(v5 + 116);
  if ((v6 & 0x400) == 0)
  {
LABEL_12:
    if ((v6 & 0x800) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_40;
  }

LABEL_39:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(0xB, *(v5 + 64), a2, a4);
  v6 = *(v5 + 116);
  if ((v6 & 0x800) == 0)
  {
LABEL_13:
    if ((v6 & 0x1000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_41;
  }

LABEL_40:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(0xC, a2, *(v5 + 68), a3);
  v6 = *(v5 + 116);
  if ((v6 & 0x1000) == 0)
  {
LABEL_14:
    if ((v6 & 0x2000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_42;
  }

LABEL_41:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(0xD, a2, *(v5 + 72), a3);
  v6 = *(v5 + 116);
  if ((v6 & 0x2000) == 0)
  {
LABEL_15:
    if ((v6 & 0x4000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

LABEL_42:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBytes();
  if ((*(v5 + 116) & 0x4000) != 0)
  {
LABEL_16:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xF, *(v5 + 76), a2, a4);
  }

LABEL_17:
  if (*(v5 + 96) >= 1)
  {
    v7 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x10, *(*(v5 + 88) + 8 * v7++), a2, a4);
    }

    while (v7 < *(v5 + 96));
  }

  return this;
}

uint64_t CLP::LogEntry::PrivateData::MeasurementExtension::ByteSize(CLP::LogEntry::PrivateData::MeasurementExtension *this, unsigned int a2)
{
  v3 = *(this + 29);
  if (!v3)
  {
    v4 = 0;
    goto LABEL_57;
  }

  if ((v3 & 2) != 0)
  {
    v4 = ((v3 << 31 >> 31) & 5) + 5;
  }

  else
  {
    v4 = (v3 << 31 >> 31) & 5;
  }

  if ((v3 & 4) != 0)
  {
    v5 = *(this + 2);
    if (!v5)
    {
      v5 = *(CLP::LogEntry::PrivateData::MeasurementExtension::default_instance_ + 16);
    }

    v6 = CLP::LogEntry::PrivateData::FullSvTime::ByteSize(v5, a2);
    v7 = v6;
    if (v6 >= 0x80)
    {
      v8 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v6);
    }

    else
    {
      v8 = 1;
    }

    v4 += v7 + v8 + 1;
    v3 = *(this + 29);
    if ((v3 & 8) == 0)
    {
LABEL_7:
      if ((v3 & 0x10) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_29;
    }
  }

  else if ((v3 & 8) == 0)
  {
    goto LABEL_7;
  }

  v9 = *(this + 3);
  if (!v9)
  {
    v9 = *(CLP::LogEntry::PrivateData::MeasurementExtension::default_instance_ + 24);
  }

  v10 = *(v9 + 24);
  v11 = (v10 << 31 >> 31) & 5;
  if ((v10 & 2) != 0)
  {
    v11 += 5;
  }

  if ((v10 & 4) != 0)
  {
    v11 += 5;
  }

  if (*(v9 + 24))
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  *(v9 + 20) = v12;
  v4 += v12 + 2;
  v3 = *(this + 29);
  if ((v3 & 0x10) == 0)
  {
LABEL_8:
    if ((v3 & 0x20) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_39;
  }

LABEL_29:
  v13 = *(this + 4);
  if (!v13)
  {
    v13 = *(CLP::LogEntry::PrivateData::MeasurementExtension::default_instance_ + 32);
  }

  v14 = *(v13 + 24);
  v15 = (v14 << 31 >> 31) & 5;
  if ((v14 & 2) != 0)
  {
    v15 += 5;
  }

  if ((v14 & 4) != 0)
  {
    v15 += 5;
  }

  if (*(v13 + 24))
  {
    v16 = v15;
  }

  else
  {
    v16 = 0;
  }

  *(v13 + 20) = v16;
  v4 += v16 + 2;
  v3 = *(this + 29);
  if ((v3 & 0x20) == 0)
  {
LABEL_9:
    if ((v3 & 0x40) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_49;
  }

LABEL_39:
  v17 = *(this + 5);
  if (!v17)
  {
    v17 = *(CLP::LogEntry::PrivateData::MeasurementExtension::default_instance_ + 40);
  }

  v18 = *(v17 + 24);
  v19 = (v18 << 31 >> 31) & 5;
  if ((v18 & 2) != 0)
  {
    v19 += 5;
  }

  if ((v18 & 4) != 0)
  {
    v19 += 5;
  }

  if (*(v17 + 24))
  {
    v20 = v19;
  }

  else
  {
    v20 = 0;
  }

  *(v17 + 20) = v20;
  v4 += v20 + 2;
  v3 = *(this + 29);
  if ((v3 & 0x40) == 0)
  {
LABEL_10:
    if ((v3 & 0x80) == 0)
    {
      goto LABEL_57;
    }

    goto LABEL_53;
  }

LABEL_49:
  v21 = *(this + 12);
  if (v21 >= 0x80)
  {
    v22 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v21) + 1;
    v3 = *(this + 29);
  }

  else
  {
    v22 = 2;
  }

  v4 += v22;
  if ((v3 & 0x80) != 0)
  {
LABEL_53:
    v23 = *(this + 13);
    if (v23 >= 0x80)
    {
      v24 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v23) + 1;
      v3 = *(this + 29);
    }

    else
    {
      v24 = 2;
    }

    v4 += v24;
  }

LABEL_57:
  if ((v3 & 0xFF00) == 0)
  {
    goto LABEL_100;
  }

  if ((v3 & 0x100) == 0)
  {
    if ((v3 & 0x200) == 0)
    {
      goto LABEL_60;
    }

LABEL_68:
    v27 = *(this + 15);
    if ((v27 & 0x80000000) != 0)
    {
      v28 = 11;
    }

    else if (v27 >= 0x80)
    {
      v28 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v27) + 1;
      v3 = *(this + 29);
    }

    else
    {
      v28 = 2;
    }

    v4 += v28;
    if ((v3 & 0x400) == 0)
    {
      goto LABEL_80;
    }

    goto LABEL_74;
  }

  v25 = *(this + 14);
  if ((v25 & 0x80000000) != 0)
  {
    v26 = 11;
  }

  else if (v25 >= 0x80)
  {
    v26 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v25) + 1;
    v3 = *(this + 29);
  }

  else
  {
    v26 = 2;
  }

  v4 += v26;
  if ((v3 & 0x200) != 0)
  {
    goto LABEL_68;
  }

LABEL_60:
  if ((v3 & 0x400) != 0)
  {
LABEL_74:
    v29 = *(this + 16);
    if ((v29 & 0x80000000) != 0)
    {
      v30 = 11;
    }

    else if (v29 >= 0x80)
    {
      v30 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v29) + 1;
      v3 = *(this + 29);
    }

    else
    {
      v30 = 2;
    }

    v4 += v30;
  }

LABEL_80:
  v31 = v4 + 5;
  if ((v3 & 0x800) == 0)
  {
    v31 = v4;
  }

  if ((v3 & 0x1000) != 0)
  {
    v4 = v31 + 5;
  }

  else
  {
    v4 = v31;
  }

  if ((v3 & 0x2000) != 0)
  {
    v32 = *(this + 10);
    v33 = *(v32 + 23);
    v34 = v33;
    v35 = *(v32 + 8);
    if ((v33 & 0x80u) == 0)
    {
      v36 = *(v32 + 23);
    }

    else
    {
      v36 = v35;
    }

    if (v36 >= 0x80)
    {
      v37 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v36);
      v33 = *(v32 + 23);
      v35 = *(v32 + 8);
      v3 = *(this + 29);
      v34 = *(v32 + 23);
    }

    else
    {
      v37 = 1;
    }

    if (v34 < 0)
    {
      v33 = v35;
    }

    v4 += v37 + v33 + 1;
  }

  if ((v3 & 0x4000) != 0)
  {
    v38 = *(this + 19);
    if (v38 >= 0x80)
    {
      v39 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v38) + 1;
    }

    else
    {
      v39 = 2;
    }

    v4 += v39;
  }

LABEL_100:
  v40 = *(this + 24);
  v41 = (v4 + 2 * v40);
  if (v40 >= 1)
  {
    v42 = 0;
    do
    {
      v41 = v41 + CLP::LogEntry::PrivateData::SignalCorrelationPeak::ByteSize(*(*(this + 11) + 8 * v42++)) + 1;
    }

    while (v42 < *(this + 24));
  }

  *(this + 28) = v41;
  return v41;
}

void CLP::LogEntry::PrivateData::MeasurementExtension::CheckTypeAndMergeFrom(CLP::LogEntry::PrivateData::MeasurementExtension *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  CLP::LogEntry::PrivateData::MeasurementExtension::MergeFrom(this, lpsrc);
}

void CLP::LogEntry::PrivateData::MeasurementExtension::CopyFrom(CLP::LogEntry::PrivateData::MeasurementExtension *this, const CLP::LogEntry::PrivateData::MeasurementExtension *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    CLP::LogEntry::PrivateData::MeasurementExtension::MergeFrom(this, a2);
  }
}

uint64_t CLP::LogEntry::PrivateData::MeasurementExtension::Swap(uint64_t this, CLP::LogEntry::PrivateData::MeasurementExtension *a2)
{
  if (a2 != this)
  {
    v3 = this;
    v4 = *(this + 8);
    *(this + 8) = *(a2 + 2);
    *(a2 + 2) = v4;
    v5 = *(this + 12);
    *(this + 12) = *(a2 + 3);
    *(a2 + 3) = v5;
    v6 = *(this + 16);
    *(this + 16) = *(a2 + 2);
    *(a2 + 2) = v6;
    v7 = *(this + 24);
    *(this + 24) = *(a2 + 3);
    *(a2 + 3) = v7;
    v8 = *(this + 32);
    *(this + 32) = *(a2 + 4);
    *(a2 + 4) = v8;
    v9 = *(this + 40);
    *(this + 40) = *(a2 + 5);
    *(a2 + 5) = v9;
    LODWORD(v9) = *(this + 48);
    *(this + 48) = *(a2 + 12);
    *(a2 + 12) = v9;
    LODWORD(v9) = *(this + 52);
    *(this + 52) = *(a2 + 13);
    *(a2 + 13) = v9;
    LODWORD(v9) = *(this + 56);
    *(this + 56) = *(a2 + 14);
    *(a2 + 14) = v9;
    LODWORD(v9) = *(this + 60);
    *(this + 60) = *(a2 + 15);
    *(a2 + 15) = v9;
    LODWORD(v9) = *(this + 64);
    *(this + 64) = *(a2 + 16);
    *(a2 + 16) = v9;
    v10 = *(this + 68);
    *(this + 68) = *(a2 + 17);
    *(a2 + 17) = v10;
    v11 = *(this + 72);
    *(this + 72) = *(a2 + 18);
    *(a2 + 18) = v11;
    v12 = *(this + 80);
    *(this + 80) = *(a2 + 10);
    *(a2 + 10) = v12;
    LODWORD(v12) = *(this + 76);
    *(this + 76) = *(a2 + 19);
    *(a2 + 19) = v12;
    this = wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Swap();
    v13 = *(v3 + 116);
    *(v3 + 116) = *(a2 + 29);
    *(a2 + 29) = v13;
    v14 = *(v3 + 112);
    *(v3 + 112) = *(a2 + 28);
    *(a2 + 28) = v14;
  }

  return this;
}

double CLP::LogEntry::PrivateData::Measurement::SharedCtor(CLP::LogEntry::PrivateData::Measurement *this)
{
  *(this + 27) = 0;
  *(this + 28) = 0;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 88) = 0u;
  *(this + 104) = 0;
  return result;
}

CLP::LogEntry::PrivateData::Measurement *CLP::LogEntry::PrivateData::Measurement::Measurement(CLP::LogEntry::PrivateData::Measurement *this, const CLP::LogEntry::PrivateData::Measurement *a2)
{
  *this = &unk_2858607F8;
  *(this + 27) = 0;
  *(this + 28) = 0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 88) = 0u;
  *(this + 104) = 0;
  CLP::LogEntry::PrivateData::Measurement::MergeFrom(this, a2);
  return this;
}

void CLP::LogEntry::PrivateData::Measurement::MergeFrom(CLP::LogEntry::PrivateData::Measurement *this, const CLP::LogEntry::PrivateData::Measurement *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v27);
  }

  v4 = *(a2 + 28);
  if (!v4)
  {
    goto LABEL_41;
  }

  if (v4)
  {
    *(this + 28) |= 1u;
    v5 = *(this + 1);
    if (!v5)
    {
      operator new();
    }

    v6 = *(a2 + 1);
    if (!v6)
    {
      v6 = *(CLP::LogEntry::PrivateData::Measurement::default_instance_ + 8);
    }

    CLP::LogEntry::PrivateData::SvId::MergeFrom(v5, v6);
    v4 = *(a2 + 28);
    if ((v4 & 2) == 0)
    {
LABEL_6:
      if ((v4 & 4) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_23;
    }
  }

  else if ((v4 & 2) == 0)
  {
    goto LABEL_6;
  }

  *(this + 28) |= 2u;
  v7 = *(this + 2);
  if (!v7)
  {
    operator new();
  }

  v8 = *(a2 + 2);
  if (!v8)
  {
    v8 = *(CLP::LogEntry::PrivateData::Measurement::default_instance_ + 16);
  }

  CLP::LogEntry::PrivateData::SyncState::MergeFrom(v7, v8);
  v4 = *(a2 + 28);
  if ((v4 & 4) == 0)
  {
LABEL_7:
    if ((v4 & 8) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_24;
  }

LABEL_23:
  v9 = *(a2 + 3);
  *(this + 28) |= 4u;
  *(this + 3) = v9;
  v4 = *(a2 + 28);
  if ((v4 & 8) == 0)
  {
LABEL_8:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_25;
  }

LABEL_24:
  v10 = *(a2 + 4);
  *(this + 28) |= 8u;
  *(this + 4) = v10;
  v4 = *(a2 + 28);
  if ((v4 & 0x10) == 0)
  {
LABEL_9:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_10;
    }

LABEL_26:
    *(this + 28) |= 0x20u;
    v12 = *(this + 6);
    if (!v12)
    {
      operator new();
    }

    v13 = *(a2 + 6);
    if (!v13)
    {
      v13 = *(CLP::LogEntry::PrivateData::Measurement::default_instance_ + 48);
    }

    CLP::LogEntry::PrivateData::SvTime::MergeFrom(v12, v13);
    v4 = *(a2 + 28);
    if ((v4 & 0x40) == 0)
    {
LABEL_11:
      if ((v4 & 0x80) == 0)
      {
        goto LABEL_41;
      }

      goto LABEL_36;
    }

    goto LABEL_31;
  }

LABEL_25:
  v11 = *(a2 + 5);
  *(this + 28) |= 0x10u;
  *(this + 5) = v11;
  v4 = *(a2 + 28);
  if ((v4 & 0x20) != 0)
  {
    goto LABEL_26;
  }

LABEL_10:
  if ((v4 & 0x40) == 0)
  {
    goto LABEL_11;
  }

LABEL_31:
  *(this + 28) |= 0x40u;
  v14 = *(this + 7);
  if (!v14)
  {
    operator new();
  }

  v15 = *(a2 + 7);
  if (!v15)
  {
    v15 = *(CLP::LogEntry::PrivateData::Measurement::default_instance_ + 56);
  }

  CLP::LogEntry::PrivateData::FrequencyOffset::MergeFrom(v14, v15);
  v4 = *(a2 + 28);
  if ((v4 & 0x80) != 0)
  {
LABEL_36:
    *(this + 28) |= 0x80u;
    v16 = *(this + 8);
    if (!v16)
    {
      operator new();
    }

    v17 = *(a2 + 8);
    if (!v17)
    {
      v17 = *(CLP::LogEntry::PrivateData::Measurement::default_instance_ + 64);
    }

    CLP::LogEntry::PrivateData::PhaseTracking::MergeFrom(v16, v17);
    v4 = *(a2 + 28);
  }

LABEL_41:
  if ((v4 & 0xFF00) == 0)
  {
    return;
  }

  if ((v4 & 0x100) != 0)
  {
    *(this + 28) |= 0x100u;
    v18 = *(this + 9);
    if (!v18)
    {
      operator new();
    }

    v19 = *(a2 + 9);
    if (!v19)
    {
      v19 = *(CLP::LogEntry::PrivateData::Measurement::default_instance_ + 72);
    }

    CLP::LogEntry::PrivateData::MeasurementExtension::MergeFrom(v18, v19);
    v4 = *(a2 + 28);
    if ((v4 & 0x200) == 0)
    {
LABEL_44:
      if ((v4 & 0x400) == 0)
      {
        goto LABEL_45;
      }

      goto LABEL_55;
    }
  }

  else if ((v4 & 0x200) == 0)
  {
    goto LABEL_44;
  }

  v20 = *(a2 + 20);
  *(this + 28) |= 0x200u;
  *(this + 20) = v20;
  v4 = *(a2 + 28);
  if ((v4 & 0x400) == 0)
  {
LABEL_45:
    if ((v4 & 0x800) == 0)
    {
      goto LABEL_46;
    }

    goto LABEL_57;
  }

LABEL_55:
  v21 = *(a2 + 21);
  if (v21 >= 5)
  {
    __assert_rtn("set_multipath_indicator", "CLPGnssMeasApi.pb.h", 9802, "::CLP::LogEntry::PrivateData::MultipathIndicator_IsValid(value)");
  }

  *(this + 28) |= 0x400u;
  *(this + 21) = v21;
  v4 = *(a2 + 28);
  if ((v4 & 0x800) == 0)
  {
LABEL_46:
    if ((v4 & 0x1000) == 0)
    {
      goto LABEL_47;
    }

LABEL_62:
    v24 = *(a2 + 104);
    *(this + 28) |= 0x1000u;
    *(this + 104) = v24;
    if ((*(a2 + 28) & 0x2000) == 0)
    {
      return;
    }

    goto LABEL_63;
  }

LABEL_57:
  *(this + 28) |= 0x800u;
  v22 = *(this + 11);
  if (!v22)
  {
    operator new();
  }

  v23 = *(a2 + 11);
  if (!v23)
  {
    v23 = *(CLP::LogEntry::PrivateData::Measurement::default_instance_ + 88);
  }

  CLP::LogEntry::PrivateData::FrequencyOffset::MergeFrom(v22, v23);
  v4 = *(a2 + 28);
  if ((v4 & 0x1000) != 0)
  {
    goto LABEL_62;
  }

LABEL_47:
  if ((v4 & 0x2000) == 0)
  {
    return;
  }

LABEL_63:
  *(this + 28) |= 0x2000u;
  v25 = *(this + 12);
  if (!v25)
  {
    operator new();
  }

  v26 = *(a2 + 12);
  if (!v26)
  {
    v26 = *(CLP::LogEntry::PrivateData::Measurement::default_instance_ + 96);
  }

  CLP::LogEntry::PrivateData::FrequencyOffsetFromPhaseTracking::MergeFrom(v25, v26);
}

void sub_245523B90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void CLP::LogEntry::PrivateData::Measurement::~Measurement(CLP::LogEntry::PrivateData::Measurement *this)
{
  *this = &unk_2858607F8;
  CLP::LogEntry::PrivateData::Measurement::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2858607F8;
  CLP::LogEntry::PrivateData::Measurement::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2858607F8;
  CLP::LogEntry::PrivateData::Measurement::SharedDtor(this);
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  JUMPOUT(0x245D6AEE0);
}

void *CLP::LogEntry::PrivateData::Measurement::SharedDtor(void *this)
{
  if (CLP::LogEntry::PrivateData::Measurement::default_instance_ != this)
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

    v4 = v1[6];
    if (v4)
    {
      (*(*v4 + 8))(v4);
    }

    v5 = v1[7];
    if (v5)
    {
      (*(*v5 + 8))(v5);
    }

    v6 = v1[8];
    if (v6)
    {
      (*(*v6 + 8))(v6);
    }

    v7 = v1[9];
    if (v7)
    {
      (*(*v7 + 8))(v7);
    }

    v8 = v1[11];
    if (v8)
    {
      (*(*v8 + 8))(v8);
    }

    this = v1[12];
    if (this)
    {
      v9 = *(*this + 8);

      return v9();
    }
  }

  return this;
}

uint64_t CLP::LogEntry::PrivateData::Measurement::default_instance(CLP::LogEntry::PrivateData::Measurement *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = CLP::LogEntry::PrivateData::Measurement::default_instance_;
  if (!CLP::LogEntry::PrivateData::Measurement::default_instance_)
  {
    CLP::LogEntry::PrivateData::protobuf_AddDesc_CLPGnssMeasApi_2eproto(0, a2, a3, a4);
    return CLP::LogEntry::PrivateData::Measurement::default_instance_;
  }

  return result;
}

uint64_t CLP::LogEntry::PrivateData::Measurement::Clear(uint64_t this)
{
  v1 = this;
  v2 = *(this + 112);
  if (v2)
  {
    if (v2)
    {
      this = *(this + 8);
      if (this)
      {
        this = CLP::LogEntry::PrivateData::SvId::Clear(this);
        v2 = *(v1 + 112);
      }
    }

    if ((v2 & 2) != 0)
    {
      this = *(v1 + 16);
      if (this)
      {
        this = CLP::LogEntry::PrivateData::SyncState::Clear(this);
        v2 = *(v1 + 112);
      }
    }

    *(v1 + 24) = 0;
    *(v1 + 32) = 0;
    *(v1 + 40) = 0;
    if ((v2 & 0x20) != 0)
    {
      v3 = *(v1 + 48);
      if (v3)
      {
        if (*(v3 + 32))
        {
          *(v3 + 8) = 0;
          *(v3 + 16) = 0;
          *(v3 + 24) = 0;
        }

        *(v3 + 32) = 0;
        v2 = *(v1 + 112);
      }
    }

    if ((v2 & 0x40) != 0)
    {
      v4 = *(v1 + 56);
      if (v4)
      {
        if (*(v4 + 32))
        {
          *(v4 + 8) = 0;
          *(v4 + 16) = 0;
          *(v4 + 24) = 0;
        }

        *(v4 + 32) = 0;
        v2 = *(v1 + 112);
      }
    }

    if ((v2 & 0x80) != 0)
    {
      v5 = *(v1 + 64);
      if (v5)
      {
        if (*(v5 + 48))
        {
          *(v5 + 40) = 0;
          *(v5 + 24) = 0u;
          *(v5 + 8) = 0u;
        }

        *(v5 + 48) = 0;
        v2 = *(v1 + 112);
      }
    }
  }

  if ((v2 & 0xFF00) != 0)
  {
    if ((v2 & 0x100) != 0)
    {
      this = *(v1 + 72);
      if (this)
      {
        this = CLP::LogEntry::PrivateData::MeasurementExtension::Clear(this);
        v2 = *(v1 + 112);
      }
    }

    *(v1 + 80) = 0;
    if ((v2 & 0x800) != 0)
    {
      v6 = *(v1 + 88);
      if (v6)
      {
        if (*(v6 + 32))
        {
          *(v6 + 8) = 0;
          *(v6 + 16) = 0;
          *(v6 + 24) = 0;
        }

        *(v6 + 32) = 0;
        v2 = *(v1 + 112);
      }
    }

    *(v1 + 104) = 0;
    if ((v2 & 0x2000) != 0)
    {
      v7 = *(v1 + 96);
      if (v7)
      {
        if (*(v7 + 32))
        {
          *(v7 + 8) = 0;
          *(v7 + 16) = 0;
          *(v7 + 24) = 0;
        }

        *(v7 + 32) = 0;
      }
    }
  }

  *(v1 + 112) = 0;
  return this;
}

uint64_t CLP::LogEntry::PrivateData::Measurement::MergePartialFromCodedStream(CLP::LogEntry::PrivateData::Measurement *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
{
  while (1)
  {
    v5 = *(a2 + 1);
    if (v5 < *(a2 + 2))
    {
      TagFallback = *v5;
      if ((TagFallback & 0x80000000) == 0)
      {
        *(a2 + 8) = TagFallback;
        *(a2 + 1) = v5 + 1;
        if (!TagFallback)
        {
          return 1;
        }

        goto LABEL_6;
      }
    }

    TagFallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadTagFallback(a2);
    *(a2 + 8) = TagFallback;
    if (!TagFallback)
    {
      return 1;
    }

LABEL_6:
    v7 = TagFallback & 7;
    switch(TagFallback >> 3)
    {
      case 1u:
        if (v7 != 2)
        {
          goto LABEL_38;
        }

        *(this + 28) |= 1u;
        v8 = *(this + 1);
        if (!v8)
        {
          operator new();
        }

        v94 = 0;
        v9 = *(a2 + 1);
        if (v9 >= *(a2 + 2) || *v9 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v94))
          {
            return 0;
          }
        }

        else
        {
          v94 = *v9;
          *(a2 + 1) = v9 + 1;
        }

        v20 = *(a2 + 14);
        v21 = *(a2 + 15);
        *(a2 + 14) = v20 + 1;
        if (v20 >= v21)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
        if (!CLP::LogEntry::PrivateData::SvId::MergePartialFromCodedStream(v8, a2, v22) || *(a2 + 36) != 1)
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
        if (v26 >= *(a2 + 2) || *v26 != 18)
        {
          continue;
        }

        *(a2 + 1) = v26 + 1;
        goto LABEL_50;
      case 2u:
        if (v7 != 2)
        {
          goto LABEL_38;
        }

LABEL_50:
        *(this + 28) |= 2u;
        v27 = *(this + 2);
        if (!v27)
        {
          operator new();
        }

        v94 = 0;
        v28 = *(a2 + 1);
        if (v28 >= *(a2 + 2) || *v28 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v94))
          {
            return 0;
          }
        }

        else
        {
          v94 = *v28;
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
        if (!CLP::LogEntry::PrivateData::SyncState::MergePartialFromCodedStream(v27, a2, v31) || *(a2 + 36) != 1)
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
        v10 = *(a2 + 2);
        if (v34 >= v10 || *v34 != 24)
        {
          continue;
        }

        v14 = v34 + 1;
        *(a2 + 1) = v14;
LABEL_64:
        if (v14 >= v10 || (v35 = *v14, v35 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 3);
          if (!result)
          {
            return result;
          }

          v36 = *(a2 + 1);
          v10 = *(a2 + 2);
        }

        else
        {
          *(this + 3) = v35;
          v36 = v14 + 1;
          *(a2 + 1) = v36;
        }

        *(this + 28) |= 4u;
        if (v36 >= v10 || *v36 != 32)
        {
          continue;
        }

        v15 = v36 + 1;
        *(a2 + 1) = v15;
LABEL_72:
        if (v15 >= v10 || (v38 = *v15, v38 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 4);
          if (!result)
          {
            return result;
          }

          v39 = *(a2 + 1);
          v10 = *(a2 + 2);
        }

        else
        {
          *(this + 4) = v38;
          v39 = v15 + 1;
          *(a2 + 1) = v39;
        }

        *(this + 28) |= 8u;
        if (v39 >= v10 || *v39 != 40)
        {
          continue;
        }

        v11 = v39 + 1;
        *(a2 + 1) = v11;
LABEL_80:
        if (v11 >= v10 || (v40 = *v11, v40 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 5);
          if (!result)
          {
            return result;
          }

          v41 = *(a2 + 1);
          v10 = *(a2 + 2);
        }

        else
        {
          *(this + 5) = v40;
          v41 = v11 + 1;
          *(a2 + 1) = v41;
        }

        v16 = *(this + 28) | 0x10;
        *(this + 28) = v16;
        if (v41 >= v10 || *v41 != 50)
        {
          continue;
        }

        *(a2 + 1) = v41 + 1;
LABEL_88:
        *(this + 28) = v16 | 0x20;
        v42 = *(this + 6);
        if (!v42)
        {
          operator new();
        }

        v94 = 0;
        v43 = *(a2 + 1);
        if (v43 >= *(a2 + 2) || *v43 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v94))
          {
            return 0;
          }
        }

        else
        {
          v94 = *v43;
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
        if (!CLP::LogEntry::PrivateData::SvTime::MergePartialFromCodedStream(v42, a2, v46) || *(a2 + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
        v47 = *(a2 + 14);
        v24 = __OFSUB__(v47, 1);
        v48 = v47 - 1;
        if (v48 < 0 == v24)
        {
          *(a2 + 14) = v48;
        }

        v49 = *(a2 + 1);
        if (v49 >= *(a2 + 2) || *v49 != 58)
        {
          continue;
        }

        *(a2 + 1) = v49 + 1;
LABEL_102:
        *(this + 28) |= 0x40u;
        v50 = *(this + 7);
        if (!v50)
        {
          operator new();
        }

        v94 = 0;
        v51 = *(a2 + 1);
        if (v51 >= *(a2 + 2) || *v51 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v94))
          {
            return 0;
          }
        }

        else
        {
          v94 = *v51;
          *(a2 + 1) = v51 + 1;
        }

        v52 = *(a2 + 14);
        v53 = *(a2 + 15);
        *(a2 + 14) = v52 + 1;
        if (v52 >= v53)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
        if (!CLP::LogEntry::PrivateData::FrequencyOffset::MergePartialFromCodedStream(v50, a2, v54) || *(a2 + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
        v55 = *(a2 + 14);
        v24 = __OFSUB__(v55, 1);
        v56 = v55 - 1;
        if (v56 < 0 == v24)
        {
          *(a2 + 14) = v56;
        }

        v57 = *(a2 + 1);
        if (v57 >= *(a2 + 2) || *v57 != 66)
        {
          continue;
        }

        *(a2 + 1) = v57 + 1;
LABEL_116:
        *(this + 28) |= 0x80u;
        v58 = *(this + 8);
        if (!v58)
        {
          operator new();
        }

        v94 = 0;
        v59 = *(a2 + 1);
        if (v59 >= *(a2 + 2) || *v59 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v94))
          {
            return 0;
          }
        }

        else
        {
          v94 = *v59;
          *(a2 + 1) = v59 + 1;
        }

        v60 = *(a2 + 14);
        v61 = *(a2 + 15);
        *(a2 + 14) = v60 + 1;
        if (v60 >= v61)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
        if (!CLP::LogEntry::PrivateData::PhaseTracking::MergePartialFromCodedStream(v58, a2, v62) || *(a2 + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
        v63 = *(a2 + 14);
        v24 = __OFSUB__(v63, 1);
        v64 = v63 - 1;
        if (v64 < 0 == v24)
        {
          *(a2 + 14) = v64;
        }

        v65 = *(a2 + 1);
        if (v65 >= *(a2 + 2) || *v65 != 74)
        {
          continue;
        }

        *(a2 + 1) = v65 + 1;
LABEL_130:
        *(this + 28) |= 0x100u;
        v66 = *(this + 9);
        if (!v66)
        {
          operator new();
        }

        v94 = 0;
        v67 = *(a2 + 1);
        if (v67 >= *(a2 + 2) || *v67 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v94))
          {
            return 0;
          }
        }

        else
        {
          v94 = *v67;
          *(a2 + 1) = v67 + 1;
        }

        v68 = *(a2 + 14);
        v69 = *(a2 + 15);
        *(a2 + 14) = v68 + 1;
        if (v68 >= v69)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
        if (!CLP::LogEntry::PrivateData::MeasurementExtension::MergePartialFromCodedStream(v66, a2, v70) || *(a2 + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
        v71 = *(a2 + 14);
        v24 = __OFSUB__(v71, 1);
        v72 = v71 - 1;
        if (v72 < 0 == v24)
        {
          *(a2 + 14) = v72;
        }

        v73 = *(a2 + 1);
        if (v73 >= *(a2 + 2) || *v73 != 85)
        {
          continue;
        }

        *(a2 + 1) = v73 + 1;
LABEL_144:
        v94 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a2, &v94) & 1) == 0)
        {
          return 0;
        }

        *(this + 20) = v94;
        *(this + 28) |= 0x200u;
        v74 = *(a2 + 1);
        v18 = *(a2 + 2);
        if (v74 >= v18 || *v74 != 88)
        {
          continue;
        }

        v19 = v74 + 1;
        *(a2 + 1) = v19;
LABEL_148:
        v94 = 0;
        if (v19 >= v18 || (v75 = *v19, (v75 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v94);
          if (!result)
          {
            return result;
          }

          v75 = v94;
        }

        else
        {
          *(a2 + 1) = v19 + 1;
        }

        if (v75 <= 4)
        {
          *(this + 28) |= 0x400u;
          *(this + 21) = v75;
        }

        v76 = *(a2 + 1);
        if (v76 >= *(a2 + 2) || *v76 != 98)
        {
          continue;
        }

        *(a2 + 1) = v76 + 1;
LABEL_158:
        *(this + 28) |= 0x800u;
        v77 = *(this + 11);
        if (!v77)
        {
          operator new();
        }

        v94 = 0;
        v78 = *(a2 + 1);
        if (v78 >= *(a2 + 2) || *v78 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v94))
          {
            return 0;
          }
        }

        else
        {
          v94 = *v78;
          *(a2 + 1) = v78 + 1;
        }

        v79 = *(a2 + 14);
        v80 = *(a2 + 15);
        *(a2 + 14) = v79 + 1;
        if (v79 >= v80)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
        if (!CLP::LogEntry::PrivateData::FrequencyOffset::MergePartialFromCodedStream(v77, a2, v81) || *(a2 + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
        v82 = *(a2 + 14);
        v24 = __OFSUB__(v82, 1);
        v83 = v82 - 1;
        if (v83 < 0 == v24)
        {
          *(a2 + 14) = v83;
        }

        v84 = *(a2 + 1);
        v12 = *(a2 + 2);
        if (v84 >= v12 || *v84 != 104)
        {
          continue;
        }

        v13 = v84 + 1;
        *(a2 + 1) = v13;
LABEL_172:
        v94 = 0;
        if (v13 >= v12 || (v85 = *v13, (v85 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v94);
          if (!result)
          {
            return result;
          }

          v85 = v94;
          v86 = *(a2 + 1);
          v12 = *(a2 + 2);
        }

        else
        {
          v86 = v13 + 1;
          *(a2 + 1) = v86;
        }

        *(this + 104) = v85 != 0;
        v17 = *(this + 28) | 0x1000;
        *(this + 28) = v17;
        if (v86 >= v12 || *v86 != 114)
        {
          continue;
        }

        *(a2 + 1) = v86 + 1;
LABEL_180:
        *(this + 28) = v17 | 0x2000;
        v87 = *(this + 12);
        if (!v87)
        {
          operator new();
        }

        v94 = 0;
        v88 = *(a2 + 1);
        if (v88 >= *(a2 + 2) || *v88 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v94))
          {
            return 0;
          }
        }

        else
        {
          v94 = *v88;
          *(a2 + 1) = v88 + 1;
        }

        v89 = *(a2 + 14);
        v90 = *(a2 + 15);
        *(a2 + 14) = v89 + 1;
        if (v89 >= v90)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
        if (!CLP::LogEntry::PrivateData::FrequencyOffsetFromPhaseTracking::MergePartialFromCodedStream(v87, a2, v91) || *(a2 + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
        v92 = *(a2 + 14);
        v24 = __OFSUB__(v92, 1);
        v93 = v92 - 1;
        if (v93 < 0 == v24)
        {
          *(a2 + 14) = v93;
        }

        if (*(a2 + 1) == *(a2 + 2) && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
        {
          *(a2 + 8) = 0;
          result = 1;
          *(a2 + 36) = 1;
          return result;
        }

        break;
      case 3u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_38;
        }

        v14 = *(a2 + 1);
        v10 = *(a2 + 2);
        goto LABEL_64;
      case 4u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_38;
        }

        v15 = *(a2 + 1);
        v10 = *(a2 + 2);
        goto LABEL_72;
      case 5u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_38;
        }

        v11 = *(a2 + 1);
        v10 = *(a2 + 2);
        goto LABEL_80;
      case 6u:
        if (v7 != 2)
        {
          goto LABEL_38;
        }

        v16 = *(this + 28);
        goto LABEL_88;
      case 7u:
        if (v7 == 2)
        {
          goto LABEL_102;
        }

        goto LABEL_38;
      case 8u:
        if (v7 == 2)
        {
          goto LABEL_116;
        }

        goto LABEL_38;
      case 9u:
        if (v7 != 2)
        {
          goto LABEL_38;
        }

        goto LABEL_130;
      case 0xAu:
        if (v7 == 5)
        {
          goto LABEL_144;
        }

        goto LABEL_38;
      case 0xBu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_38;
        }

        v19 = *(a2 + 1);
        v18 = *(a2 + 2);
        goto LABEL_148;
      case 0xCu:
        if (v7 == 2)
        {
          goto LABEL_158;
        }

        goto LABEL_38;
      case 0xDu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_38;
        }

        v13 = *(a2 + 1);
        v12 = *(a2 + 2);
        goto LABEL_172;
      case 0xEu:
        if (v7 != 2)
        {
          goto LABEL_38;
        }

        v17 = *(this + 28);
        goto LABEL_180;
      default:
LABEL_38:
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

uint64_t CLP::LogEntry::PrivateData::Measurement::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 112);
  if (v6)
  {
    v7 = *(this + 8);
    if (!v7)
    {
      v7 = *(CLP::LogEntry::PrivateData::Measurement::default_instance_ + 8);
    }

    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(1, v7, a2, a4);
    v6 = *(v5 + 112);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_22;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  v8 = *(v5 + 16);
  if (!v8)
  {
    v8 = *(CLP::LogEntry::PrivateData::Measurement::default_instance_ + 16);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(2, v8, a2, a4);
  v6 = *(v5 + 112);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_23;
  }

LABEL_22:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(3, *(v5 + 24), a2, a4);
  v6 = *(v5 + 112);
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_24;
  }

LABEL_23:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(4, *(v5 + 32), a2, a4);
  v6 = *(v5 + 112);
  if ((v6 & 0x10) == 0)
  {
LABEL_6:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_25;
  }

LABEL_24:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(5, *(v5 + 40), a2, a4);
  v6 = *(v5 + 112);
  if ((v6 & 0x20) == 0)
  {
LABEL_7:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_28;
  }

LABEL_25:
  v9 = *(v5 + 48);
  if (!v9)
  {
    v9 = *(CLP::LogEntry::PrivateData::Measurement::default_instance_ + 48);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(6, v9, a2, a4);
  v6 = *(v5 + 112);
  if ((v6 & 0x40) == 0)
  {
LABEL_8:
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_31;
  }

LABEL_28:
  v10 = *(v5 + 56);
  if (!v10)
  {
    v10 = *(CLP::LogEntry::PrivateData::Measurement::default_instance_ + 56);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(7, v10, a2, a4);
  v6 = *(v5 + 112);
  if ((v6 & 0x80) == 0)
  {
LABEL_9:
    if ((v6 & 0x100) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_34;
  }

LABEL_31:
  v11 = *(v5 + 64);
  if (!v11)
  {
    v11 = *(CLP::LogEntry::PrivateData::Measurement::default_instance_ + 64);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(8, v11, a2, a4);
  v6 = *(v5 + 112);
  if ((v6 & 0x100) == 0)
  {
LABEL_10:
    if ((v6 & 0x200) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_37;
  }

LABEL_34:
  v12 = *(v5 + 72);
  if (!v12)
  {
    v12 = *(CLP::LogEntry::PrivateData::Measurement::default_instance_ + 72);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(9, v12, a2, a4);
  v6 = *(v5 + 112);
  if ((v6 & 0x200) == 0)
  {
LABEL_11:
    if ((v6 & 0x400) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_38;
  }

LABEL_37:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(0xA, a2, *(v5 + 80), a3);
  v6 = *(v5 + 112);
  if ((v6 & 0x400) == 0)
  {
LABEL_12:
    if ((v6 & 0x800) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_39;
  }

LABEL_38:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(0xB, *(v5 + 84), a2, a4);
  v6 = *(v5 + 112);
  if ((v6 & 0x800) == 0)
  {
LABEL_13:
    if ((v6 & 0x1000) == 0)
    {
      goto LABEL_14;
    }

LABEL_42:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(0xD, *(v5 + 104), a2, a4);
    if ((*(v5 + 112) & 0x2000) == 0)
    {
      return this;
    }

    goto LABEL_43;
  }

LABEL_39:
  v13 = *(v5 + 88);
  if (!v13)
  {
    v13 = *(CLP::LogEntry::PrivateData::Measurement::default_instance_ + 88);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0xC, v13, a2, a4);
  v6 = *(v5 + 112);
  if ((v6 & 0x1000) != 0)
  {
    goto LABEL_42;
  }

LABEL_14:
  if ((v6 & 0x2000) == 0)
  {
    return this;
  }

LABEL_43:
  v14 = *(v5 + 96);
  if (!v14)
  {
    v14 = *(CLP::LogEntry::PrivateData::Measurement::default_instance_ + 96);
  }

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0xE, v14, a2, a4);
}

uint64_t CLP::LogEntry::PrivateData::Measurement::ByteSize(CLP::LogEntry::PrivateData::Measurement *this, unint64_t a2)
{
  v3 = *(this + 28);
  if (!v3)
  {
    v4 = 0;
    goto LABEL_50;
  }

  if ((v3 & 1) == 0)
  {
    v4 = 0;
    if ((v3 & 2) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_12;
  }

  v5 = *(this + 1);
  if (!v5)
  {
    v5 = *(CLP::LogEntry::PrivateData::Measurement::default_instance_ + 8);
  }

  v6 = CLP::LogEntry::PrivateData::SvId::ByteSize(v5, a2);
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
  v3 = *(this + 28);
  if ((v3 & 2) != 0)
  {
LABEL_12:
    v9 = *(this + 2);
    if (!v9)
    {
      v9 = *(CLP::LogEntry::PrivateData::Measurement::default_instance_ + 16);
    }

    v10 = CLP::LogEntry::PrivateData::SyncState::ByteSize(v9, a2);
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
    v3 = *(this + 28);
  }

LABEL_18:
  if ((v3 & 4) != 0)
  {
    v4 = v4 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 3)) + 1;
    v3 = *(this + 28);
    if ((v3 & 8) == 0)
    {
LABEL_20:
      if ((v3 & 0x10) == 0)
      {
        goto LABEL_21;
      }

      goto LABEL_27;
    }
  }

  else if ((v3 & 8) == 0)
  {
    goto LABEL_20;
  }

  v4 = v4 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 4)) + 1;
  v3 = *(this + 28);
  if ((v3 & 0x10) == 0)
  {
LABEL_21:
    if ((v3 & 0x20) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_28;
  }

LABEL_27:
  v4 = v4 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 5)) + 1;
  v3 = *(this + 28);
  if ((v3 & 0x20) == 0)
  {
LABEL_22:
    if ((v3 & 0x40) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_36;
  }

LABEL_28:
  v13 = *(this + 6);
  if (!v13)
  {
    v13 = *(CLP::LogEntry::PrivateData::Measurement::default_instance_ + 48);
  }

  v14 = *(v13 + 32);
  v15 = ((v14 << 31) >> 31) & 9;
  if ((v14 & 2) != 0)
  {
    v15 += 9;
  }

  v16 = v15 + ((v14 >> 1) & 2);
  if (*(v13 + 32))
  {
    v17 = v16;
  }

  else
  {
    v17 = 0;
  }

  *(v13 + 28) = v17;
  v4 = (v4 + v17 + 2);
  v3 = *(this + 28);
  if ((v3 & 0x40) == 0)
  {
LABEL_23:
    if ((v3 & 0x80) == 0)
    {
      goto LABEL_50;
    }

    goto LABEL_44;
  }

LABEL_36:
  v18 = *(this + 7);
  if (!v18)
  {
    v18 = *(CLP::LogEntry::PrivateData::Measurement::default_instance_ + 56);
  }

  v19 = *(v18 + 32);
  v20 = ((v19 << 31) >> 31) & 9;
  if ((v19 & 2) != 0)
  {
    v20 += 9;
  }

  v21 = v20 + ((v19 >> 1) & 2);
  if (*(v18 + 32))
  {
    v22 = v21;
  }

  else
  {
    v22 = 0;
  }

  *(v18 + 28) = v22;
  v4 = (v4 + v22 + 2);
  v3 = *(this + 28);
  if ((v3 & 0x80) != 0)
  {
LABEL_44:
    v23 = *(this + 8);
    if (!v23)
    {
      v23 = *(CLP::LogEntry::PrivateData::Measurement::default_instance_ + 64);
    }

    v24 = CLP::LogEntry::PrivateData::PhaseTracking::ByteSize(v23, a2);
    v25 = v24;
    if (v24 >= 0x80)
    {
      v26 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v24);
    }

    else
    {
      v26 = 1;
    }

    v4 = (v4 + v25 + v26 + 1);
    v3 = *(this + 28);
  }

LABEL_50:
  if ((v3 & 0xFF00) != 0)
  {
    if ((v3 & 0x100) != 0)
    {
      v27 = *(this + 9);
      if (!v27)
      {
        v27 = *(CLP::LogEntry::PrivateData::Measurement::default_instance_ + 72);
      }

      v28 = CLP::LogEntry::PrivateData::MeasurementExtension::ByteSize(v27, a2);
      v29 = v28;
      if (v28 >= 0x80)
      {
        v30 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v28);
      }

      else
      {
        v30 = 1;
      }

      LODWORD(v4) = v4 + v29 + v30 + 1;
      v3 = *(this + 28);
    }

    if ((v3 & 0x200) != 0)
    {
      LODWORD(v4) = v4 + 5;
    }

    if ((v3 & 0x400) != 0)
    {
      v31 = *(this + 21);
      if ((v31 & 0x80000000) != 0)
      {
        v32 = 11;
      }

      else if (v31 >= 0x80)
      {
        v32 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v31) + 1;
        v3 = *(this + 28);
      }

      else
      {
        v32 = 2;
      }

      LODWORD(v4) = v32 + v4;
    }

    if ((v3 & 0x800) != 0)
    {
      v33 = *(this + 11);
      if (!v33)
      {
        v33 = *(CLP::LogEntry::PrivateData::Measurement::default_instance_ + 88);
      }

      v34 = *(v33 + 32);
      v35 = ((v34 << 31) >> 31) & 9;
      if ((v34 & 2) != 0)
      {
        v35 += 9;
      }

      v36 = v35 + ((v34 >> 1) & 2);
      if (*(v33 + 32))
      {
        v37 = v36;
      }

      else
      {
        v37 = 0;
      }

      *(v33 + 28) = v37;
      LODWORD(v4) = v4 + v37 + 2;
      v3 = *(this + 28);
    }

    v4 = ((v3 >> 11) & 2) + v4;
    if ((v3 & 0x2000) != 0)
    {
      v38 = *(this + 12);
      if (!v38)
      {
        v38 = *(CLP::LogEntry::PrivateData::Measurement::default_instance_ + 96);
      }

      v4 = v4 + CLP::LogEntry::PrivateData::FrequencyOffsetFromPhaseTracking::ByteSize(v38) + 2;
    }
  }

  *(this + 27) = v4;
  return v4;
}

void CLP::LogEntry::PrivateData::Measurement::CheckTypeAndMergeFrom(CLP::LogEntry::PrivateData::Measurement *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  CLP::LogEntry::PrivateData::Measurement::MergeFrom(this, lpsrc);
}

void CLP::LogEntry::PrivateData::Measurement::CopyFrom(CLP::LogEntry::PrivateData::Measurement *this, const CLP::LogEntry::PrivateData::Measurement *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    CLP::LogEntry::PrivateData::Measurement::MergeFrom(this, a2);
  }
}

float CLP::LogEntry::PrivateData::Measurement::Swap(CLP::LogEntry::PrivateData::Measurement *this, CLP::LogEntry::PrivateData::Measurement *a2)
{
  if (a2 != this)
  {
    v2 = *(this + 1);
    *(this + 1) = *(a2 + 1);
    *(a2 + 1) = v2;
    v3 = *(this + 2);
    v4 = *(this + 3);
    v5 = *(a2 + 3);
    *(this + 2) = *(a2 + 2);
    *(this + 3) = v5;
    *(a2 + 2) = v3;
    *(a2 + 3) = v4;
    v6 = *(this + 4);
    *(this + 4) = *(a2 + 4);
    *(a2 + 4) = v6;
    v7 = *(this + 5);
    v8 = *(this + 6);
    v9 = *(a2 + 6);
    *(this + 5) = *(a2 + 5);
    *(this + 6) = v9;
    *(a2 + 5) = v7;
    *(a2 + 6) = v8;
    v10 = *(this + 7);
    *(this + 7) = *(a2 + 7);
    *(a2 + 7) = v10;
    v11 = *(this + 8);
    *(this + 8) = *(a2 + 8);
    *(a2 + 8) = v11;
    v12 = *(this + 9);
    *(this + 9) = *(a2 + 9);
    *(a2 + 9) = v12;
    result = *(this + 20);
    *(this + 20) = *(a2 + 20);
    *(a2 + 20) = result;
    LODWORD(v12) = *(this + 21);
    *(this + 21) = *(a2 + 21);
    *(a2 + 21) = v12;
    v14 = *(this + 11);
    *(this + 11) = *(a2 + 11);
    *(a2 + 11) = v14;
    LOBYTE(v14) = *(this + 104);
    *(this + 104) = *(a2 + 104);
    *(a2 + 104) = v14;
    v15 = *(this + 12);
    *(this + 12) = *(a2 + 12);
    *(a2 + 12) = v15;
    LODWORD(v15) = *(this + 28);
    *(this + 28) = *(a2 + 28);
    *(a2 + 28) = v15;
    LODWORD(v15) = *(this + 27);
    *(this + 27) = *(a2 + 27);
    *(a2 + 27) = v15;
  }

  return result;
}

uint64_t CLP::LogEntry::PrivateData::ReceiverClockModel::SharedCtor(uint64_t this)
{
  *(this + 28) = 0;
  *(this + 32) = 0;
  *(this + 8) = 0;
  *(this + 16) = 0;
  *(this + 24) = 0;
  return this;
}

CLP::LogEntry::PrivateData::ReceiverClockModel *CLP::LogEntry::PrivateData::ReceiverClockModel::ReceiverClockModel(CLP::LogEntry::PrivateData::ReceiverClockModel *this, const CLP::LogEntry::PrivateData::ReceiverClockModel *a2)
{
  *(this + 7) = 0;
  *(this + 8) = 0;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *this = &unk_285860870;
  *(this + 24) = 0;
  CLP::LogEntry::PrivateData::ReceiverClockModel::MergeFrom(this, a2);
  return this;
}

float CLP::LogEntry::PrivateData::ReceiverClockModel::MergeFrom(CLP::LogEntry::PrivateData::ReceiverClockModel *this, const CLP::LogEntry::PrivateData::ReceiverClockModel *a2)
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
      result = *(a2 + 2);
      *(this + 8) |= 1u;
      *(this + 2) = result;
      v5 = *(a2 + 8);
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

    else if ((*(a2 + 32) & 2) == 0)
    {
      goto LABEL_6;
    }

    result = *(a2 + 3);
    *(this + 8) |= 2u;
    *(this + 3) = result;
    v5 = *(a2 + 8);
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
    result = *(a2 + 4);
    *(this + 8) |= 4u;
    *(this + 4) = result;
    v5 = *(a2 + 8);
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
    result = *(a2 + 5);
    *(this + 8) |= 8u;
    *(this + 5) = result;
    if ((*(a2 + 8) & 0x10) == 0)
    {
      return result;
    }

LABEL_9:
    v6 = *(a2 + 24);
    *(this + 8) |= 0x10u;
    *(this + 24) = v6;
  }

  return result;
}

void sub_245525648(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void CLP::LogEntry::PrivateData::ReceiverClockModel::~ReceiverClockModel(CLP::LogEntry::PrivateData::ReceiverClockModel *this)
{
  *this = &unk_285860870;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_285860870;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_285860870;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  JUMPOUT(0x245D6AEE0);
}

uint64_t CLP::LogEntry::PrivateData::ReceiverClockModel::default_instance(CLP::LogEntry::PrivateData::ReceiverClockModel *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = CLP::LogEntry::PrivateData::ReceiverClockModel::default_instance_;
  if (!CLP::LogEntry::PrivateData::ReceiverClockModel::default_instance_)
  {
    CLP::LogEntry::PrivateData::protobuf_AddDesc_CLPGnssMeasApi_2eproto(0, a2, a3, a4);
    return CLP::LogEntry::PrivateData::ReceiverClockModel::default_instance_;
  }

  return result;
}

uint64_t CLP::LogEntry::PrivateData::ReceiverClockModel::Clear(uint64_t this)
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

uint64_t CLP::LogEntry::PrivateData::ReceiverClockModel::MergePartialFromCodedStream(CLP::LogEntry::PrivateData::ReceiverClockModel *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
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
          if (v7 != 2 || v8 != 5)
          {
            goto LABEL_21;
          }

          goto LABEL_28;
        }

        if (v8 != 5)
        {
          goto LABEL_21;
        }

        v18 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a2, &v18) & 1) == 0)
        {
          return 0;
        }

        *(this + 2) = v18;
        *(this + 8) |= 1u;
        v11 = *(a2 + 1);
        if (v11 < *(a2 + 2) && *v11 == 21)
        {
          *(a2 + 1) = v11 + 1;
LABEL_28:
          v18 = 0;
          if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a2, &v18) & 1) == 0)
          {
            return 0;
          }

          *(this + 3) = v18;
          *(this + 8) |= 2u;
          v12 = *(a2 + 1);
          if (v12 < *(a2 + 2) && *v12 == 29)
          {
            *(a2 + 1) = v12 + 1;
LABEL_32:
            v18 = 0;
            if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a2, &v18) & 1) == 0)
            {
              return 0;
            }

            *(this + 4) = v18;
            *(this + 8) |= 4u;
            v13 = *(a2 + 1);
            if (v13 < *(a2 + 2) && *v13 == 37)
            {
              *(a2 + 1) = v13 + 1;
              goto LABEL_36;
            }
          }
        }
      }

      if (v7 == 3)
      {
        if (v8 != 5)
        {
          goto LABEL_21;
        }

        goto LABEL_32;
      }

      if (v7 != 4)
      {
        break;
      }

      if (v8 != 5)
      {
        goto LABEL_21;
      }

LABEL_36:
      v18 = 0;
      if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a2, &v18) & 1) == 0)
      {
        return 0;
      }

      *(this + 5) = v18;
      *(this + 8) |= 8u;
      v14 = *(a2 + 1);
      v9 = *(a2 + 2);
      if (v14 < v9 && *v14 == 40)
      {
        v10 = v14 + 1;
        *(a2 + 1) = v10;
LABEL_40:
        v18 = 0;
        if (v10 >= v9 || (v15 = *v10, (v15 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v18);
          if (!result)
          {
            return result;
          }

          v15 = v18;
          v16 = *(a2 + 1);
          v9 = *(a2 + 2);
        }

        else
        {
          v16 = v10 + 1;
          *(a2 + 1) = v16;
        }

        *(this + 24) = v15 != 0;
        *(this + 8) |= 0x10u;
        if (v16 == v9 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
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

uint64_t CLP::LogEntry::PrivateData::ReceiverClockModel::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 32);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(1, a2, *(this + 8), a3);
    v6 = *(v5 + 32);
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

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(2, a2, *(v5 + 12), a3);
  v6 = *(v5 + 32);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

LABEL_10:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(4, a2, *(v5 + 20), a3);
    if ((*(v5 + 32) & 0x10) == 0)
    {
      return this;
    }

    goto LABEL_11;
  }

LABEL_9:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(3, a2, *(v5 + 16), a3);
  v6 = *(v5 + 32);
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
  v7 = *(v5 + 24);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(5, v7, a2, a4);
}

uint64_t CLP::LogEntry::PrivateData::ReceiverClockModel::ByteSize(CLP::LogEntry::PrivateData::ReceiverClockModel *this)
{
  v1 = *(this + 8);
  if (v1)
  {
    v2 = ((v1 << 31) >> 31) & 5;
    if ((v1 & 2) != 0)
    {
      v2 += 5;
    }

    if ((v1 & 4) != 0)
    {
      v2 += 5;
    }

    if ((v1 & 8) != 0)
    {
      v2 += 5;
    }

    v3 = v2 + ((v1 >> 3) & 2);
  }

  else
  {
    v3 = 0;
  }

  *(this + 7) = v3;
  return v3;
}

float CLP::LogEntry::PrivateData::ReceiverClockModel::CheckTypeAndMergeFrom(CLP::LogEntry::PrivateData::ReceiverClockModel *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  return CLP::LogEntry::PrivateData::ReceiverClockModel::MergeFrom(this, lpsrc);
}

float CLP::LogEntry::PrivateData::ReceiverClockModel::CopyFrom(CLP::LogEntry::PrivateData::ReceiverClockModel *this, const CLP::LogEntry::PrivateData::ReceiverClockModel *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    return CLP::LogEntry::PrivateData::ReceiverClockModel::MergeFrom(this, a2);
  }

  return result;
}

float CLP::LogEntry::PrivateData::ReceiverClockModel::Swap(CLP::LogEntry::PrivateData::ReceiverClockModel *this, CLP::LogEntry::PrivateData::ReceiverClockModel *a2)
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
    result = *(this + 5);
    *(this + 5) = *(a2 + 5);
    *(a2 + 5) = result;
    v6 = *(this + 24);
    *(this + 24) = *(a2 + 24);
    *(a2 + 24) = v6;
    v7 = *(this + 8);
    *(this + 8) = *(a2 + 8);
    *(a2 + 8) = v7;
    v8 = *(this + 7);
    *(this + 7) = *(a2 + 7);
    *(a2 + 7) = v8;
  }

  return result;
}

double CLP::LogEntry::PrivateData::ReceiverClockCorrections::SharedCtor(CLP::LogEntry::PrivateData::ReceiverClockCorrections *this)
{
  result = 0.0;
  *(this + 40) = 0u;
  *(this + 24) = 0u;
  *(this + 8) = 0u;
  return result;
}

CLP::LogEntry::PrivateData::ReceiverClockCorrections *CLP::LogEntry::PrivateData::ReceiverClockCorrections::ReceiverClockCorrections(CLP::LogEntry::PrivateData::ReceiverClockCorrections *this, const CLP::LogEntry::PrivateData::ReceiverClockCorrections *a2)
{
  *this = &unk_2858608E8;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  CLP::LogEntry::PrivateData::ReceiverClockCorrections::MergeFrom(this, a2);
  return this;
}

double CLP::LogEntry::PrivateData::ReceiverClockCorrections::MergeFrom(CLP::LogEntry::PrivateData::ReceiverClockCorrections *this, const CLP::LogEntry::PrivateData::ReceiverClockCorrections *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v6);
  }

  LOBYTE(v5) = *(a2 + 52);
  if (v5)
  {
    if (*(a2 + 52))
    {
      result = *(a2 + 1);
      *(this + 13) |= 1u;
      *(this + 1) = result;
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

void sub_245525EC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void CLP::LogEntry::PrivateData::ReceiverClockCorrections::~ReceiverClockCorrections(CLP::LogEntry::PrivateData::ReceiverClockCorrections *this)
{
  *this = &unk_2858608E8;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2858608E8;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2858608E8;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  JUMPOUT(0x245D6AEE0);
}

uint64_t CLP::LogEntry::PrivateData::ReceiverClockCorrections::default_instance(CLP::LogEntry::PrivateData::ReceiverClockCorrections *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = CLP::LogEntry::PrivateData::ReceiverClockCorrections::default_instance_;
  if (!CLP::LogEntry::PrivateData::ReceiverClockCorrections::default_instance_)
  {
    CLP::LogEntry::PrivateData::protobuf_AddDesc_CLPGnssMeasApi_2eproto(0, a2, a3, a4);
    return CLP::LogEntry::PrivateData::ReceiverClockCorrections::default_instance_;
  }

  return result;
}

uint64_t CLP::LogEntry::PrivateData::ReceiverClockCorrections::Clear(uint64_t this)
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

uint64_t CLP::LogEntry::PrivateData::ReceiverClockCorrections::MergePartialFromCodedStream(CLP::LogEntry::PrivateData::ReceiverClockCorrections *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
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

          goto LABEL_32;
        }

        if (v7 == 4)
        {
          if (v8 != 1)
          {
            goto LABEL_21;
          }

LABEL_36:
          v14 = 0;
          if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, &v14) & 1) == 0)
          {
            return 0;
          }

          *(this + 4) = v14;
          *(this + 13) |= 8u;
          v12 = *(a2 + 1);
          if (v12 < *(a2 + 2) && *v12 == 41)
          {
            *(a2 + 1) = v12 + 1;
            goto LABEL_40;
          }
        }

        else
        {
          if (v7 != 5 || v8 != 1)
          {
            goto LABEL_21;
          }

LABEL_40:
          v14 = 0;
          if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, &v14) & 1) == 0)
          {
            return 0;
          }

          *(this + 5) = v14;
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

      if (v8 != 1)
      {
        goto LABEL_21;
      }

      v14 = 0;
      if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, &v14) & 1) == 0)
      {
        return 0;
      }

      *(this + 1) = v14;
      *(this + 13) |= 1u;
      v9 = *(a2 + 1);
      if (v9 < *(a2 + 2) && *v9 == 17)
      {
        *(a2 + 1) = v9 + 1;
LABEL_28:
        v14 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, &v14) & 1) == 0)
        {
          return 0;
        }

        *(this + 2) = v14;
        *(this + 13) |= 2u;
        v10 = *(a2 + 1);
        if (v10 < *(a2 + 2) && *v10 == 25)
        {
          *(a2 + 1) = v10 + 1;
LABEL_32:
          v14 = 0;
          if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, &v14) & 1) == 0)
          {
            return 0;
          }

          *(this + 3) = v14;
          *(this + 13) |= 4u;
          v11 = *(a2 + 1);
          if (v11 < *(a2 + 2) && *v11 == 33)
          {
            *(a2 + 1) = v11 + 1;
            goto LABEL_36;
          }
        }
      }
    }

    if (v7 == 2 && v8 == 1)
    {
      goto LABEL_28;
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

uint64_t CLP::LogEntry::PrivateData::ReceiverClockCorrections::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3)
{
  v4 = this;
  v5 = *(this + 52);
  if (v5)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(1, a2, *(this + 8), a3);
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

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(2, a2, *(v4 + 16), a3);
  v5 = *(v4 + 52);
  if ((v5 & 4) == 0)
  {
LABEL_4:
    if ((v5 & 8) == 0)
    {
      goto LABEL_5;
    }

LABEL_10:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(4, a2, *(v4 + 32), a3);
    if ((*(v4 + 52) & 0x10) == 0)
    {
      return this;
    }

    goto LABEL_11;
  }

LABEL_9:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(3, a2, *(v4 + 24), a3);
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
  v6 = *(v4 + 40);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(5, a2, v6, a3);
}

uint64_t CLP::LogEntry::PrivateData::ReceiverClockCorrections::ByteSize(CLP::LogEntry::PrivateData::ReceiverClockCorrections *this)
{
  v1 = *(this + 52);
  if (*(this + 52))
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
      v1 = v2 + 9;
    }

    else
    {
      v1 = v2;
    }
  }

  *(this + 12) = v1;
  return v1;
}

double CLP::LogEntry::PrivateData::ReceiverClockCorrections::CheckTypeAndMergeFrom(CLP::LogEntry::PrivateData::ReceiverClockCorrections *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  return CLP::LogEntry::PrivateData::ReceiverClockCorrections::MergeFrom(this, lpsrc);
}

double CLP::LogEntry::PrivateData::ReceiverClockCorrections::CopyFrom(CLP::LogEntry::PrivateData::ReceiverClockCorrections *this, const CLP::LogEntry::PrivateData::ReceiverClockCorrections *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    return CLP::LogEntry::PrivateData::ReceiverClockCorrections::MergeFrom(this, a2);
  }

  return result;
}

double CLP::LogEntry::PrivateData::ReceiverClockCorrections::Swap(CLP::LogEntry::PrivateData::ReceiverClockCorrections *this, CLP::LogEntry::PrivateData::ReceiverClockCorrections *a2)
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
    v7 = *(this + 13);
    *(this + 13) = *(a2 + 13);
    *(a2 + 13) = v7;
    v8 = *(this + 12);
    *(this + 12) = *(a2 + 12);
    *(a2 + 12) = v8;
  }

  return result;
}

double CLP::LogEntry::PrivateData::ReceiverToGpsTimeConversion::SharedCtor(CLP::LogEntry::PrivateData::ReceiverToGpsTimeConversion *this)
{
  *(this + 10) = 0;
  result = 0.0;
  *(this + 24) = 0u;
  *(this + 8) = 0u;
  return result;
}

CLP::LogEntry::PrivateData::ReceiverToGpsTimeConversion *CLP::LogEntry::PrivateData::ReceiverToGpsTimeConversion::ReceiverToGpsTimeConversion(CLP::LogEntry::PrivateData::ReceiverToGpsTimeConversion *this, const CLP::LogEntry::PrivateData::ReceiverToGpsTimeConversion *a2)
{
  *this = &unk_285860960;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 10) = 0;
  CLP::LogEntry::PrivateData::ReceiverToGpsTimeConversion::MergeFrom(this, a2);
  return this;
}

double CLP::LogEntry::PrivateData::ReceiverToGpsTimeConversion::MergeFrom(CLP::LogEntry::PrivateData::ReceiverToGpsTimeConversion *this, const CLP::LogEntry::PrivateData::ReceiverToGpsTimeConversion *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v7);
  }

  LOBYTE(v5) = *(a2 + 40);
  if (v5)
  {
    if (*(a2 + 40))
    {
      v6 = *(a2 + 1);
      *(this + 10) |= 1u;
      *(this + 1) = v6;
      v5 = *(a2 + 10);
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

    else if ((*(a2 + 40) & 2) == 0)
    {
      goto LABEL_6;
    }

    LODWORD(result) = *(a2 + 4);
    *(this + 10) |= 2u;
    *(this + 4) = LODWORD(result);
    v5 = *(a2 + 10);
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
    LODWORD(result) = *(a2 + 5);
    *(this + 10) |= 4u;
    *(this + 5) = LODWORD(result);
    v5 = *(a2 + 10);
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
    result = *(a2 + 3);
    *(this + 10) |= 8u;
    *(this + 3) = result;
    if ((*(a2 + 10) & 0x10) == 0)
    {
      return result;
    }

LABEL_9:
    LODWORD(result) = *(a2 + 8);
    *(this + 10) |= 0x10u;
    *(this + 8) = LODWORD(result);
  }

  return result;
}

void sub_245526714(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void CLP::LogEntry::PrivateData::ReceiverToGpsTimeConversion::~ReceiverToGpsTimeConversion(CLP::LogEntry::PrivateData::ReceiverToGpsTimeConversion *this)
{
  *this = &unk_285860960;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_285860960;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_285860960;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  JUMPOUT(0x245D6AEE0);
}

uint64_t CLP::LogEntry::PrivateData::ReceiverToGpsTimeConversion::default_instance(CLP::LogEntry::PrivateData::ReceiverToGpsTimeConversion *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = CLP::LogEntry::PrivateData::ReceiverToGpsTimeConversion::default_instance_;
  if (!CLP::LogEntry::PrivateData::ReceiverToGpsTimeConversion::default_instance_)
  {
    CLP::LogEntry::PrivateData::protobuf_AddDesc_CLPGnssMeasApi_2eproto(0, a2, a3, a4);
    return CLP::LogEntry::PrivateData::ReceiverToGpsTimeConversion::default_instance_;
  }

  return result;
}

uint64_t CLP::LogEntry::PrivateData::ReceiverToGpsTimeConversion::Clear(uint64_t this)
{
  if (*(this + 40))
  {
    *(this + 8) = 0;
    *(this + 16) = 0;
    *(this + 32) = 0;
    *(this + 24) = 0;
  }

  *(this + 40) = 0;
  return this;
}

uint64_t CLP::LogEntry::PrivateData::ReceiverToGpsTimeConversion::MergePartialFromCodedStream(CLP::LogEntry::PrivateData::ReceiverToGpsTimeConversion *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
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
          *v17 = 0;
          if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v17) & 1) == 0)
          {
            return 0;
          }

          *(this + 3) = *v17;
          *(this + 10) |= 8u;
          v16 = *(a2 + 1);
          if (v16 < *(a2 + 2) && *v16 == 45)
          {
            *(a2 + 1) = v16 + 1;
            goto LABEL_44;
          }
        }

        else
        {
          if (v7 != 5 || v8 != 5)
          {
            goto LABEL_21;
          }

LABEL_44:
          v17[0] = 0;
          if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a2, v17) & 1) == 0)
          {
            return 0;
          }

          *(this + 8) = v17[0];
          *(this + 10) |= 0x10u;
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

      *v17 = 0;
      v10 = *(a2 + 1);
      v9 = *(a2 + 2);
      if (v10 >= v9 || (v11 = *v10, v11 < 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, v17);
        if (!result)
        {
          return result;
        }

        v11 = *v17;
        v12 = *(a2 + 1);
        v9 = *(a2 + 2);
      }

      else
      {
        v12 = v10 + 1;
        *(a2 + 1) = v12;
      }

      *(this + 1) = v11;
      *(this + 10) |= 1u;
      if (v12 < v9 && *v12 == 21)
      {
        *(a2 + 1) = v12 + 1;
LABEL_32:
        v17[0] = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a2, v17) & 1) == 0)
        {
          return 0;
        }

        *(this + 4) = v17[0];
        *(this + 10) |= 2u;
        v14 = *(a2 + 1);
        if (v14 < *(a2 + 2) && *v14 == 29)
        {
          *(a2 + 1) = v14 + 1;
LABEL_36:
          v17[0] = 0;
          if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a2, v17) & 1) == 0)
          {
            return 0;
          }

          *(this + 5) = v17[0];
          *(this + 10) |= 4u;
          v15 = *(a2 + 1);
          if (v15 < *(a2 + 2) && *v15 == 33)
          {
            *(a2 + 1) = v15 + 1;
            goto LABEL_40;
          }
        }
      }
    }

    if (v7 == 2 && v8 == 5)
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

uint64_t CLP::LogEntry::PrivateData::ReceiverToGpsTimeConversion::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 40);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt64(1, *(this + 8), a2, a4);
    v6 = *(v5 + 40);
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

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(2, a2, *(v5 + 16), a3);
  v6 = *(v5 + 40);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

LABEL_10:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(4, a2, *(v5 + 24), a3);
    if ((*(v5 + 40) & 0x10) == 0)
    {
      return this;
    }

    goto LABEL_11;
  }

LABEL_9:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(3, a2, *(v5 + 20), a3);
  v6 = *(v5 + 40);
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
  v7 = *(v5 + 32);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(5, a2, v7, a3);
}

uint64_t CLP::LogEntry::PrivateData::ReceiverToGpsTimeConversion::ByteSize(CLP::LogEntry::PrivateData::ReceiverToGpsTimeConversion *this, unint64_t a2)
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
      v4 += 9;
    }

    if ((v3 & 0x10) != 0)
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

  *(this + 9) = result;
  return result;
}

double CLP::LogEntry::PrivateData::ReceiverToGpsTimeConversion::CheckTypeAndMergeFrom(CLP::LogEntry::PrivateData::ReceiverToGpsTimeConversion *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  return CLP::LogEntry::PrivateData::ReceiverToGpsTimeConversion::MergeFrom(this, lpsrc);
}

double CLP::LogEntry::PrivateData::ReceiverToGpsTimeConversion::CopyFrom(CLP::LogEntry::PrivateData::ReceiverToGpsTimeConversion *this, const CLP::LogEntry::PrivateData::ReceiverToGpsTimeConversion *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    return CLP::LogEntry::PrivateData::ReceiverToGpsTimeConversion::MergeFrom(this, a2);
  }

  return result;
}

float CLP::LogEntry::PrivateData::ReceiverToGpsTimeConversion::Swap(CLP::LogEntry::PrivateData::ReceiverToGpsTimeConversion *this, CLP::LogEntry::PrivateData::ReceiverToGpsTimeConversion *a2)
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
    v5 = *(this + 3);
    *(this + 3) = *(a2 + 3);
    *(a2 + 3) = v5;
    result = *(this + 8);
    *(this + 8) = *(a2 + 8);
    *(a2 + 8) = result;
    LODWORD(v2) = *(this + 10);
    *(this + 10) = *(a2 + 10);
    *(a2 + 10) = v2;
    LODWORD(v2) = *(this + 9);
    *(this + 9) = *(a2 + 9);
    *(a2 + 9) = v2;
  }

  return result;
}

double CLP::LogEntry::PrivateData::Clock::SharedCtor(CLP::LogEntry::PrivateData::Clock *this)
{
  *(this + 5) = 0;
  result = 0.0;
  *(this + 24) = 0u;
  *(this + 8) = 0u;
  return result;
}

CLP::LogEntry::PrivateData::Clock *CLP::LogEntry::PrivateData::Clock::Clock(CLP::LogEntry::PrivateData::Clock *this, const CLP::LogEntry::PrivateData::Clock *a2)
{
  *this = &unk_2858609D8;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 5) = 0;
  CLP::LogEntry::PrivateData::Clock::MergeFrom(this, a2);
  return this;
}

double CLP::LogEntry::PrivateData::Clock::MergeFrom(CLP::LogEntry::PrivateData::Clock *this, const CLP::LogEntry::PrivateData::Clock *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v13);
  }

  LOBYTE(v5) = *(a2 + 44);
  if (!v5)
  {
    return result;
  }

  if ((*(a2 + 44) & 1) == 0)
  {
    if ((*(a2 + 44) & 2) == 0)
    {
      goto LABEL_6;
    }

LABEL_10:
    *(this + 11) |= 2u;
    v7 = *(this + 2);
    if (!v7)
    {
      operator new();
    }

    v8 = *(a2 + 2);
    if (!v8)
    {
      v8 = *(CLP::LogEntry::PrivateData::Clock::default_instance_ + 16);
    }

    *&result = CLP::LogEntry::PrivateData::ReceiverClockModel::MergeFrom(v7, v8);
    v5 = *(a2 + 11);
    if ((v5 & 4) == 0)
    {
LABEL_7:
      if ((v5 & 8) == 0)
      {
        return result;
      }

      goto LABEL_20;
    }

    goto LABEL_15;
  }

  v6 = *(a2 + 1);
  *(this + 11) |= 1u;
  *(this + 1) = v6;
  v5 = *(a2 + 11);
  if ((v5 & 2) != 0)
  {
    goto LABEL_10;
  }

LABEL_6:
  if ((v5 & 4) == 0)
  {
    goto LABEL_7;
  }

LABEL_15:
  *(this + 11) |= 4u;
  v9 = *(this + 3);
  if (!v9)
  {
    operator new();
  }

  v10 = *(a2 + 3);
  if (!v10)
  {
    v10 = *(CLP::LogEntry::PrivateData::Clock::default_instance_ + 24);
  }

  result = CLP::LogEntry::PrivateData::ReceiverClockCorrections::MergeFrom(v9, v10);
  if ((*(a2 + 11) & 8) != 0)
  {
LABEL_20:
    *(this + 11) |= 8u;
    v11 = *(this + 4);
    if (!v11)
    {
      operator new();
    }

    v12 = *(a2 + 4);
    if (!v12)
    {
      v12 = *(CLP::LogEntry::PrivateData::Clock::default_instance_ + 32);
    }

    return CLP::LogEntry::PrivateData::ReceiverToGpsTimeConversion::MergeFrom(v11, v12);
  }

  return result;
}

void sub_2455270AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void CLP::LogEntry::PrivateData::Clock::~Clock(CLP::LogEntry::PrivateData::Clock *this)
{
  *this = &unk_2858609D8;
  CLP::LogEntry::PrivateData::Clock::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2858609D8;
  CLP::LogEntry::PrivateData::Clock::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2858609D8;
  CLP::LogEntry::PrivateData::Clock::SharedDtor(this);
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  JUMPOUT(0x245D6AEE0);
}

void *CLP::LogEntry::PrivateData::Clock::SharedDtor(void *this)
{
  if (CLP::LogEntry::PrivateData::Clock::default_instance_ != this)
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

    this = v1[4];
    if (this)
    {
      v4 = *(*this + 8);

      return v4();
    }
  }

  return this;
}

uint64_t CLP::LogEntry::PrivateData::Clock::default_instance(CLP::LogEntry::PrivateData::Clock *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = CLP::LogEntry::PrivateData::Clock::default_instance_;
  if (!CLP::LogEntry::PrivateData::Clock::default_instance_)
  {
    CLP::LogEntry::PrivateData::protobuf_AddDesc_CLPGnssMeasApi_2eproto(0, a2, a3, a4);
    return CLP::LogEntry::PrivateData::Clock::default_instance_;
  }

  return result;
}

uint64_t CLP::LogEntry::PrivateData::Clock::Clear(uint64_t this)
{
  LOBYTE(v1) = *(this + 44);
  if (v1)
  {
    *(this + 8) = 0;
    if ((v1 & 2) != 0)
    {
      v2 = *(this + 16);
      if (v2)
      {
        if (*(v2 + 32))
        {
          *(v2 + 8) = 0;
          *(v2 + 16) = 0;
          *(v2 + 24) = 0;
        }

        *(v2 + 32) = 0;
        v1 = *(this + 44);
      }
    }

    if ((v1 & 4) != 0)
    {
      v3 = *(this + 24);
      if (v3)
      {
        if (*(v3 + 52))
        {
          *(v3 + 40) = 0;
          *(v3 + 24) = 0u;
          *(v3 + 8) = 0u;
        }

        *(v3 + 52) = 0;
        v1 = *(this + 44);
      }
    }

    if ((v1 & 8) != 0)
    {
      v4 = *(this + 32);
      if (v4)
      {
        if (*(v4 + 40))
        {
          *(v4 + 8) = 0;
          *(v4 + 16) = 0;
          *(v4 + 32) = 0;
          *(v4 + 24) = 0;
        }

        *(v4 + 40) = 0;
      }
    }
  }

  *(this + 44) = 0;
  return this;
}

uint64_t CLP::LogEntry::PrivateData::Clock::MergePartialFromCodedStream(CLP::LogEntry::PrivateData::Clock *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
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
          if (TagFallback >> 3 > 2)
          {
            break;
          }

          if (v7 == 1)
          {
            if ((TagFallback & 7) != 0)
            {
              goto LABEL_20;
            }

            v11 = *(a2 + 1);
            v10 = *(a2 + 2);
            if (v11 >= v10 || (v12 = *v11, v12 < 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 1);
              if (!result)
              {
                return result;
              }

              v13 = *(a2 + 1);
              v10 = *(a2 + 2);
            }

            else
            {
              *(this + 1) = v12;
              v13 = v11 + 1;
              *(a2 + 1) = v13;
            }

            v9 = *(this + 11) | 1;
            *(this + 11) = v9;
            if (v13 < v10 && *v13 == 18)
            {
              *(a2 + 1) = v13 + 1;
              goto LABEL_28;
            }
          }

          else
          {
            if (v7 != 2 || v8 != 2)
            {
              goto LABEL_20;
            }

            v9 = *(this + 11);
LABEL_28:
            *(this + 11) = v9 | 2;
            v15 = *(this + 2);
            if (!v15)
            {
              operator new();
            }

            v39 = 0;
            v16 = *(a2 + 1);
            if (v16 >= *(a2 + 2) || *v16 < 0)
            {
              if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v39))
              {
                return 0;
              }
            }

            else
            {
              v39 = *v16;
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
            if (!CLP::LogEntry::PrivateData::ReceiverClockModel::MergePartialFromCodedStream(v15, a2, v19) || *(a2 + 36) != 1)
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
            if (v23 < *(a2 + 2) && *v23 == 26)
            {
              *(a2 + 1) = v23 + 1;
              goto LABEL_42;
            }
          }
        }

        if (v7 != 3)
        {
          break;
        }

        if (v8 != 2)
        {
          goto LABEL_20;
        }

LABEL_42:
        *(this + 11) |= 4u;
        v24 = *(this + 3);
        if (!v24)
        {
          operator new();
        }

        v40 = 0;
        v25 = *(a2 + 1);
        if (v25 >= *(a2 + 2) || *v25 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v40))
          {
            return 0;
          }
        }

        else
        {
          v40 = *v25;
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
        if (!CLP::LogEntry::PrivateData::ReceiverClockCorrections::MergePartialFromCodedStream(v24, a2, v28) || *(a2 + 36) != 1)
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
        if (v31 < *(a2 + 2) && *v31 == 34)
        {
          *(a2 + 1) = v31 + 1;
          goto LABEL_56;
        }
      }

      if (v7 != 4 || v8 != 2)
      {
        break;
      }

LABEL_56:
      *(this + 11) |= 8u;
      v32 = *(this + 4);
      if (!v32)
      {
        operator new();
      }

      v41 = 0;
      v33 = *(a2 + 1);
      if (v33 >= *(a2 + 2) || *v33 < 0)
      {
        if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v41))
        {
          return 0;
        }
      }

      else
      {
        v41 = *v33;
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
      if (!CLP::LogEntry::PrivateData::ReceiverToGpsTimeConversion::MergePartialFromCodedStream(v32, a2, v36) || *(a2 + 36) != 1)
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

      if (*(a2 + 1) == *(a2 + 2) && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
      {
        *(a2 + 8) = 0;
        result = 1;
        *(a2 + 36) = 1;
        return result;
      }
    }

LABEL_20:
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

uint64_t CLP::LogEntry::PrivateData::Clock::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
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

      goto LABEL_10;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  v7 = *(v5 + 16);
  if (!v7)
  {
    v7 = *(CLP::LogEntry::PrivateData::Clock::default_instance_ + 16);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(2, v7, a2, a4);
  v6 = *(v5 + 44);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      return this;
    }

    goto LABEL_13;
  }

LABEL_10:
  v8 = *(v5 + 24);
  if (!v8)
  {
    v8 = *(CLP::LogEntry::PrivateData::Clock::default_instance_ + 24);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(3, v8, a2, a4);
  if ((*(v5 + 44) & 8) != 0)
  {
LABEL_13:
    v9 = *(v5 + 32);
    if (!v9)
    {
      v9 = *(CLP::LogEntry::PrivateData::Clock::default_instance_ + 32);
    }

    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(4, v9, a2, a4);
  }

  return this;
}

uint64_t CLP::LogEntry::PrivateData::Clock::ByteSize(CLP::LogEntry::PrivateData::Clock *this, unint64_t a2)
{
  LOBYTE(v3) = *(this + 44);
  if (!v3)
  {
    v4 = 0;
    goto LABEL_22;
  }

  if (*(this + 44))
  {
    v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 1)) + 1;
    v3 = *(this + 11);
    if ((v3 & 2) == 0)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v4 = 0;
    if ((*(this + 44) & 2) == 0)
    {
      goto LABEL_10;
    }
  }

  v5 = *(this + 2);
  if (!v5)
  {
    v5 = *(CLP::LogEntry::PrivateData::Clock::default_instance_ + 16);
  }

  v4 = v4 + CLP::LogEntry::PrivateData::ReceiverClockModel::ByteSize(v5) + 2;
  v3 = *(this + 11);
LABEL_10:
  if ((v3 & 4) == 0)
  {
    if ((v3 & 8) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_16;
  }

  v6 = *(this + 3);
  if (!v6)
  {
    v6 = *(CLP::LogEntry::PrivateData::Clock::default_instance_ + 24);
  }

  v4 = v4 + CLP::LogEntry::PrivateData::ReceiverClockCorrections::ByteSize(v6) + 2;
  if ((*(this + 11) & 8) != 0)
  {
LABEL_16:
    v7 = *(this + 4);
    if (!v7)
    {
      v7 = *(CLP::LogEntry::PrivateData::Clock::default_instance_ + 32);
    }

    v8 = CLP::LogEntry::PrivateData::ReceiverToGpsTimeConversion::ByteSize(v7, a2);
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

LABEL_22:
  *(this + 10) = v4;
  return v4;
}

double CLP::LogEntry::PrivateData::Clock::CheckTypeAndMergeFrom(CLP::LogEntry::PrivateData::Clock *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  return CLP::LogEntry::PrivateData::Clock::MergeFrom(this, lpsrc);
}

double CLP::LogEntry::PrivateData::Clock::CopyFrom(CLP::LogEntry::PrivateData::Clock *this, const CLP::LogEntry::PrivateData::Clock *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    return CLP::LogEntry::PrivateData::Clock::MergeFrom(this, a2);
  }

  return result;
}

uint64_t CLP::LogEntry::PrivateData::Clock::Swap(uint64_t this, CLP::LogEntry::PrivateData::Clock *a2)
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

uint64_t CLP::LogEntry::PrivateData::MeasurementReport::SharedCtor(uint64_t this)
{
  *(this + 8) = 0;
  *(this + 40) = 0;
  return this;
}

CLP::LogEntry::PrivateData::MeasurementReport *CLP::LogEntry::PrivateData::MeasurementReport::MeasurementReport(CLP::LogEntry::PrivateData::MeasurementReport *this, const CLP::LogEntry::PrivateData::MeasurementReport *a2)
{
  *(this + 5) = 0;
  *this = &unk_285860A50;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 3) = 0;
  *(this + 8) = 0;
  CLP::LogEntry::PrivateData::MeasurementReport::MergeFrom(this, a2);
  return this;
}

void sub_245527C4C(_Unwind_Exception *a1)
{
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<proto::gnsshal::NvStoreItem>::TypeHandler>(v1 + 2);
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(v1);
  _Unwind_Resume(a1);
}

double CLP::LogEntry::PrivateData::MeasurementReport::MergeFrom(CLP::LogEntry::PrivateData::MeasurementReport *this, const CLP::LogEntry::PrivateData::MeasurementReport *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v13);
  }

  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 16));
  LODWORD(v5) = *(a2 + 6);
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
        wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v13);
      }

      v7 = *(*(a2 + 2) + 8 * v6);
      v8 = *(this + 7);
      v9 = *(this + 6);
      if (v9 >= v8)
      {
        if (v8 == *(this + 8))
        {
          wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 16));
          v8 = *(this + 7);
        }

        *(this + 7) = v8 + 1;
        operator new();
      }

      v10 = *(this + 2);
      *(this + 6) = v9 + 1;
      CLP::LogEntry::PrivateData::Measurement::MergeFrom(*(v10 + 8 * v9), v7);
      ++v6;
      v5 = *(a2 + 6);
    }

    while (v6 < v5);
  }

  if (*(a2 + 44))
  {
    *(this + 11) |= 1u;
    v11 = *(this + 1);
    if (!v11)
    {
      operator new();
    }

    v12 = *(a2 + 1);
    if (!v12)
    {
      v12 = *(CLP::LogEntry::PrivateData::MeasurementReport::default_instance_ + 8);
    }

    return CLP::LogEntry::PrivateData::Clock::MergeFrom(v11, v12);
  }

  return result;
}

void sub_245527EB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void CLP::LogEntry::PrivateData::MeasurementReport::~MeasurementReport(CLP::LogEntry::PrivateData::MeasurementReport *this)
{
  *this = &unk_285860A50;
  if (CLP::LogEntry::PrivateData::MeasurementReport::default_instance_ != this)
  {
    v2 = *(this + 1);
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }
  }

  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<proto::gnsshal::NvStoreItem>::TypeHandler>(this + 2);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  CLP::LogEntry::PrivateData::MeasurementReport::~MeasurementReport(this);

  JUMPOUT(0x245D6AEE0);
}

void *CLP::LogEntry::PrivateData::MeasurementReport::SharedDtor(void *this)
{
  if (CLP::LogEntry::PrivateData::MeasurementReport::default_instance_ != this)
  {
    this = this[1];
    if (this)
    {
      return (*(*this + 8))();
    }
  }

  return this;
}

uint64_t CLP::LogEntry::PrivateData::MeasurementReport::default_instance(CLP::LogEntry::PrivateData::MeasurementReport *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = CLP::LogEntry::PrivateData::MeasurementReport::default_instance_;
  if (!CLP::LogEntry::PrivateData::MeasurementReport::default_instance_)
  {
    CLP::LogEntry::PrivateData::protobuf_AddDesc_CLPGnssMeasApi_2eproto(0, a2, a3, a4);
    return CLP::LogEntry::PrivateData::MeasurementReport::default_instance_;
  }

  return result;
}

uint64_t CLP::LogEntry::PrivateData::MeasurementReport::Clear(CLP::LogEntry::PrivateData::MeasurementReport *this)
{
  if (*(this + 44))
  {
    v2 = *(this + 1);
    if (v2)
    {
      CLP::LogEntry::PrivateData::Clock::Clear(v2);
    }
  }

  result = wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Clear<wireless_diagnostics::google::protobuf::RepeatedPtrField<proto::gnsshal::NvStoreItem>::TypeHandler>(this + 16);
  *(this + 11) = 0;
  return result;
}

uint64_t CLP::LogEntry::PrivateData::MeasurementReport::MergePartialFromCodedStream(CLP::LogEntry::PrivateData::MeasurementReport *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
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
      if (!CLP::LogEntry::PrivateData::Clock::MergePartialFromCodedStream(v8, a2, v12) || *(a2 + 36) != 1)
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
          if (!CLP::LogEntry::PrivateData::Measurement::MergePartialFromCodedStream(v20, a2, v24) || *(a2 + 36) != 1)
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

uint64_t CLP::LogEntry::PrivateData::MeasurementReport::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  if (*(this + 44))
  {
    v6 = *(this + 8);
    if (!v6)
    {
      v6 = *(CLP::LogEntry::PrivateData::MeasurementReport::default_instance_ + 8);
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

uint64_t CLP::LogEntry::PrivateData::MeasurementReport::ByteSize(CLP::LogEntry::PrivateData::MeasurementReport *this, unint64_t a2)
{
  if (*(this + 44))
  {
    v4 = *(this + 1);
    if (!v4)
    {
      v4 = *(CLP::LogEntry::PrivateData::MeasurementReport::default_instance_ + 8);
    }

    v5 = CLP::LogEntry::PrivateData::Clock::ByteSize(v4, a2);
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

  v8 = *(this + 6);
  v9 = (v8 + v3);
  if (v8 >= 1)
  {
    v10 = 0;
    do
    {
      v11 = CLP::LogEntry::PrivateData::Measurement::ByteSize(*(*(this + 2) + 8 * v10), a2);
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

    while (v10 < *(this + 6));
  }

  *(this + 10) = v9;
  return v9;
}

double CLP::LogEntry::PrivateData::MeasurementReport::CheckTypeAndMergeFrom(CLP::LogEntry::PrivateData::MeasurementReport *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  return CLP::LogEntry::PrivateData::MeasurementReport::MergeFrom(this, lpsrc);
}

double CLP::LogEntry::PrivateData::MeasurementReport::CopyFrom(CLP::LogEntry::PrivateData::MeasurementReport *this, const CLP::LogEntry::PrivateData::MeasurementReport *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    return CLP::LogEntry::PrivateData::MeasurementReport::MergeFrom(this, a2);
  }

  return result;
}

CLP::LogEntry::PrivateData::MeasurementReport *CLP::LogEntry::PrivateData::MeasurementReport::Swap(CLP::LogEntry::PrivateData::MeasurementReport *this, CLP::LogEntry::PrivateData::MeasurementReport *a2)
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

double CLP::LogEntry::PrivateData::Wgs84Ecef::SharedCtor(CLP::LogEntry::PrivateData::Wgs84Ecef *this)
{
  result = 0.0;
  *(this + 24) = 0u;
  *(this + 8) = 0u;
  return result;
}

CLP::LogEntry::PrivateData::Wgs84Ecef *CLP::LogEntry::PrivateData::Wgs84Ecef::Wgs84Ecef(CLP::LogEntry::PrivateData::Wgs84Ecef *this, const CLP::LogEntry::PrivateData::Wgs84Ecef *a2)
{
  *this = &unk_285860AC8;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  CLP::LogEntry::PrivateData::Wgs84Ecef::MergeFrom(this, a2);
  return this;
}

double CLP::LogEntry::PrivateData::Wgs84Ecef::MergeFrom(CLP::LogEntry::PrivateData::Wgs84Ecef *this, const CLP::LogEntry::PrivateData::Wgs84Ecef *a2)
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

void sub_245528898(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void CLP::LogEntry::PrivateData::Wgs84Ecef::~Wgs84Ecef(CLP::LogEntry::PrivateData::Wgs84Ecef *this)
{
  *this = &unk_285860AC8;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_285860AC8;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_285860AC8;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  JUMPOUT(0x245D6AEE0);
}

uint64_t CLP::LogEntry::PrivateData::Wgs84Ecef::default_instance(CLP::LogEntry::PrivateData::Wgs84Ecef *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = CLP::LogEntry::PrivateData::Wgs84Ecef::default_instance_;
  if (!CLP::LogEntry::PrivateData::Wgs84Ecef::default_instance_)
  {
    CLP::LogEntry::PrivateData::protobuf_AddDesc_CLPGnssMeasApi_2eproto(0, a2, a3, a4);
    return CLP::LogEntry::PrivateData::Wgs84Ecef::default_instance_;
  }

  return result;
}

uint64_t CLP::LogEntry::PrivateData::Wgs84Ecef::Clear(uint64_t this)
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

uint64_t CLP::LogEntry::PrivateData::Wgs84Ecef::MergePartialFromCodedStream(CLP::LogEntry::PrivateData::Wgs84Ecef *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
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

uint64_t CLP::LogEntry::PrivateData::Wgs84Ecef::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3)
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

uint64_t CLP::LogEntry::PrivateData::Wgs84Ecef::ByteSize(CLP::LogEntry::PrivateData::Wgs84Ecef *this)
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

double CLP::LogEntry::PrivateData::Wgs84Ecef::CheckTypeAndMergeFrom(CLP::LogEntry::PrivateData::Wgs84Ecef *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  return CLP::LogEntry::PrivateData::Wgs84Ecef::MergeFrom(this, lpsrc);
}

double CLP::LogEntry::PrivateData::Wgs84Ecef::CopyFrom(CLP::LogEntry::PrivateData::Wgs84Ecef *this, const CLP::LogEntry::PrivateData::Wgs84Ecef *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    return CLP::LogEntry::PrivateData::Wgs84Ecef::MergeFrom(this, a2);
  }

  return result;
}

double CLP::LogEntry::PrivateData::Wgs84Ecef::Swap(CLP::LogEntry::PrivateData::Wgs84Ecef *this, CLP::LogEntry::PrivateData::Wgs84Ecef *a2)
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

double CLP::LogEntry::PrivateData::SvBandCorrections::SharedCtor(CLP::LogEntry::PrivateData::SvBandCorrections *this)
{
  *(this + 5) = 0;
  result = 0.0;
  *(this + 24) = 0u;
  *(this + 8) = 0u;
  return result;
}

CLP::LogEntry::PrivateData::SvBandCorrections *CLP::LogEntry::PrivateData::SvBandCorrections::SvBandCorrections(CLP::LogEntry::PrivateData::SvBandCorrections *this, const CLP::LogEntry::PrivateData::SvBandCorrections *a2)
{
  *this = &unk_285860B40;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 5) = 0;
  CLP::LogEntry::PrivateData::SvBandCorrections::MergeFrom(this, a2);
  return this;
}

void CLP::LogEntry::PrivateData::SvBandCorrections::MergeFrom(CLP::LogEntry::PrivateData::SvBandCorrections *this, const CLP::LogEntry::PrivateData::SvBandCorrections *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v10);
  }

  LOBYTE(v4) = *(a2 + 44);
  if (v4)
  {
    if (*(a2 + 44))
    {
      v5 = *(a2 + 6);
      if (v5 >= 0xD)
      {
        __assert_rtn("set_band", "CLPGnssMeasApi.pb.h", 10570, "::CLP::LogEntry::PrivateData::Band_IsValid(value)");
      }

      *(this + 11) |= 1u;
      *(this + 6) = v5;
      v4 = *(a2 + 11);
    }

    if ((v4 & 2) != 0)
    {
      v6 = *(a2 + 1);
      *(this + 11) |= 2u;
      *(this + 1) = v6;
      v4 = *(a2 + 11);
      if ((v4 & 4) == 0)
      {
LABEL_9:
        if ((v4 & 8) == 0)
        {
          goto LABEL_10;
        }

        goto LABEL_14;
      }
    }

    else if ((v4 & 4) == 0)
    {
      goto LABEL_9;
    }

    v7 = *(a2 + 2);
    *(this + 11) |= 4u;
    *(this + 2) = v7;
    v4 = *(a2 + 11);
    if ((v4 & 8) == 0)
    {
LABEL_10:
      if ((v4 & 0x10) == 0)
      {
        return;
      }

LABEL_15:
      v9 = *(a2 + 7);
      if (v9 >= 3)
      {
        __assert_rtn("set_ionospheric_model", "CLPGnssMeasApi.pb.h", 10659, "::CLP::LogEntry::PrivateData::IonosphericCorrectionSource_IsValid(value)");
      }

      *(this + 11) |= 0x10u;
      *(this + 7) = v9;
      return;
    }

LABEL_14:
    v8 = *(a2 + 4);
    *(this + 11) |= 8u;
    *(this + 4) = v8;
    if ((*(a2 + 11) & 0x10) == 0)
    {
      return;
    }

    goto LABEL_15;
  }
}

void sub_245528FFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void CLP::LogEntry::PrivateData::SvBandCorrections::~SvBandCorrections(CLP::LogEntry::PrivateData::SvBandCorrections *this)
{
  *this = &unk_285860B40;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_285860B40;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_285860B40;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  JUMPOUT(0x245D6AEE0);
}

uint64_t CLP::LogEntry::PrivateData::SvBandCorrections::default_instance(CLP::LogEntry::PrivateData::SvBandCorrections *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = CLP::LogEntry::PrivateData::SvBandCorrections::default_instance_;
  if (!CLP::LogEntry::PrivateData::SvBandCorrections::default_instance_)
  {
    CLP::LogEntry::PrivateData::protobuf_AddDesc_CLPGnssMeasApi_2eproto(0, a2, a3, a4);
    return CLP::LogEntry::PrivateData::SvBandCorrections::default_instance_;
  }

  return result;
}

uint64_t CLP::LogEntry::PrivateData::SvBandCorrections::Clear(uint64_t this)
{
  if (*(this + 44))
  {
    *(this + 24) = 0u;
    *(this + 8) = 0u;
  }

  *(this + 44) = 0;
  return this;
}

uint64_t CLP::LogEntry::PrivateData::SvBandCorrections::MergePartialFromCodedStream(CLP::LogEntry::PrivateData::SvBandCorrections *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
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

          goto LABEL_34;
        }

        if ((TagFallback & 7) != 0)
        {
          goto LABEL_21;
        }

        v19[0] = 0;
        v11 = *(a2 + 1);
        if (v11 >= *(a2 + 2) || (v12 = *v11, (v12 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v19);
          if (!result)
          {
            return result;
          }

          v12 = v19[0];
        }

        else
        {
          *(a2 + 1) = v11 + 1;
        }

        if (v12 <= 0xC)
        {
          *(this + 11) |= 1u;
          *(this + 6) = v12;
        }

        v14 = *(a2 + 1);
        if (v14 < *(a2 + 2) && *v14 == 17)
        {
          *(a2 + 1) = v14 + 1;
LABEL_34:
          *v19 = 0;
          if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v19) & 1) == 0)
          {
            return 0;
          }

          *(this + 1) = *v19;
          *(this + 11) |= 2u;
          v15 = *(a2 + 1);
          if (v15 < *(a2 + 2) && *v15 == 25)
          {
            *(a2 + 1) = v15 + 1;
LABEL_38:
            *v19 = 0;
            if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v19) & 1) == 0)
            {
              return 0;
            }

            *(this + 2) = *v19;
            *(this + 11) |= 4u;
            v16 = *(a2 + 1);
            if (v16 < *(a2 + 2) && *v16 == 33)
            {
              *(a2 + 1) = v16 + 1;
              goto LABEL_42;
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

        goto LABEL_38;
      }

      if (v7 != 4)
      {
        break;
      }

      if (v8 != 1)
      {
        goto LABEL_21;
      }

LABEL_42:
      *v19 = 0;
      if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v19) & 1) == 0)
      {
        return 0;
      }

      *(this + 4) = *v19;
      *(this + 11) |= 8u;
      v17 = *(a2 + 1);
      v9 = *(a2 + 2);
      if (v17 < v9 && *v17 == 40)
      {
        v10 = v17 + 1;
        *(a2 + 1) = v10;
LABEL_46:
        v19[0] = 0;
        if (v10 >= v9 || (v18 = *v10, (v18 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v19);
          if (!result)
          {
            return result;
          }

          v18 = v19[0];
        }

        else
        {
          *(a2 + 1) = v10 + 1;
        }

        if (v18 <= 2)
        {
          *(this + 11) |= 0x10u;
          *(this + 7) = v18;
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
      goto LABEL_46;
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

uint64_t CLP::LogEntry::PrivateData::SvBandCorrections::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 44);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(1, *(this + 24), a2, a4);
    v6 = *(v5 + 44);
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

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(2, a2, *(v5 + 8), a3);
  v6 = *(v5 + 44);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

LABEL_10:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(4, a2, *(v5 + 32), a3);
    if ((*(v5 + 44) & 0x10) == 0)
    {
      return this;
    }

    goto LABEL_11;
  }

LABEL_9:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(3, a2, *(v5 + 16), a3);
  v6 = *(v5 + 44);
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
  v7 = *(v5 + 28);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(5, v7, a2, a4);
}

uint64_t CLP::LogEntry::PrivateData::SvBandCorrections::ByteSize(CLP::LogEntry::PrivateData::SvBandCorrections *this, unsigned int a2)
{
  LOBYTE(v3) = *(this + 44);
  if (v3)
  {
    if (*(this + 44))
    {
      v6 = *(this + 6);
      if ((v6 & 0x80000000) != 0)
      {
        v4 = 11;
      }

      else if (v6 >= 0x80)
      {
        v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v6) + 1;
        v3 = *(this + 11);
      }

      else
      {
        v4 = 2;
      }
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
      v5 = v4 + 9;
    }

    else
    {
      v5 = v4;
    }

    if ((v3 & 0x10) != 0)
    {
      v7 = *(this + 7);
      if ((v7 & 0x80000000) != 0)
      {
        v8 = 11;
      }

      else if (v7 >= 0x80)
      {
        v8 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v7) + 1;
      }

      else
      {
        v8 = 2;
      }

      v5 = (v8 + v5);
    }
  }

  else
  {
    v5 = 0;
  }

  *(this + 10) = v5;
  return v5;
}

void CLP::LogEntry::PrivateData::SvBandCorrections::CheckTypeAndMergeFrom(CLP::LogEntry::PrivateData::SvBandCorrections *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  CLP::LogEntry::PrivateData::SvBandCorrections::MergeFrom(this, lpsrc);
}

void CLP::LogEntry::PrivateData::SvBandCorrections::CopyFrom(CLP::LogEntry::PrivateData::SvBandCorrections *this, const CLP::LogEntry::PrivateData::SvBandCorrections *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    CLP::LogEntry::PrivateData::SvBandCorrections::MergeFrom(this, a2);
  }
}

double CLP::LogEntry::PrivateData::SvBandCorrections::Swap(CLP::LogEntry::PrivateData::SvBandCorrections *this, CLP::LogEntry::PrivateData::SvBandCorrections *a2)
{
  if (a2 != this)
  {
    v2 = *(this + 6);
    *(this + 6) = *(a2 + 6);
    *(a2 + 6) = v2;
    v3 = *(this + 1);
    *(this + 1) = *(a2 + 1);
    *(a2 + 1) = v3;
    v4 = *(this + 2);
    *(this + 2) = *(a2 + 2);
    *(a2 + 2) = v4;
    result = *(this + 4);
    *(this + 4) = *(a2 + 4);
    *(a2 + 4) = result;
    v6 = *(this + 7);
    *(this + 7) = *(a2 + 7);
    *(a2 + 7) = v6;
    v7 = *(this + 11);
    *(this + 11) = *(a2 + 11);
    *(a2 + 11) = v7;
    v8 = *(this + 10);
    *(this + 10) = *(a2 + 10);
    *(a2 + 10) = v8;
  }

  return result;
}

void *CLP::LogEntry::PrivateData::SvPositionAtTime::SharedCtor(void *this)
{
  this[1] = 0;
  this[2] = 0;
  this[3] = 0;
  return this;
}

CLP::LogEntry::PrivateData::SvPositionAtTime *CLP::LogEntry::PrivateData::SvPositionAtTime::SvPositionAtTime(CLP::LogEntry::PrivateData::SvPositionAtTime *this, const CLP::LogEntry::PrivateData::SvPositionAtTime *a2)
{
  *this = &unk_285860BB8;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 3) = 0;
  CLP::LogEntry::PrivateData::SvPositionAtTime::MergeFrom(this, a2);
  return this;
}

double CLP::LogEntry::PrivateData::SvPositionAtTime::MergeFrom(CLP::LogEntry::PrivateData::SvPositionAtTime *this, const CLP::LogEntry::PrivateData::SvPositionAtTime *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v8);
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
      *(this + 7) |= 2u;
      v6 = *(this + 2);
      if (!v6)
      {
        operator new();
      }

      v7 = *(a2 + 2);
      if (!v7)
      {
        v7 = *(CLP::LogEntry::PrivateData::SvPositionAtTime::default_instance_ + 16);
      }

      return CLP::LogEntry::PrivateData::Wgs84Ecef::MergeFrom(v6, v7);
    }
  }

  return result;
}

void sub_2455298DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void CLP::LogEntry::PrivateData::SvPositionAtTime::~SvPositionAtTime(CLP::LogEntry::PrivateData::SvPositionAtTime *this)
{
  *this = &unk_285860BB8;
  if (CLP::LogEntry::PrivateData::SvPositionAtTime::default_instance_ != this)
  {
    v2 = *(this + 2);
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }
  }

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  CLP::LogEntry::PrivateData::SvPositionAtTime::~SvPositionAtTime(this);

  JUMPOUT(0x245D6AEE0);
}

void *CLP::LogEntry::PrivateData::SvPositionAtTime::SharedDtor(void *this)
{
  if (CLP::LogEntry::PrivateData::SvPositionAtTime::default_instance_ != this)
  {
    this = this[2];
    if (this)
    {
      return (*(*this + 8))();
    }
  }

  return this;
}

uint64_t CLP::LogEntry::PrivateData::SvPositionAtTime::default_instance(CLP::LogEntry::PrivateData::SvPositionAtTime *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = CLP::LogEntry::PrivateData::SvPositionAtTime::default_instance_;
  if (!CLP::LogEntry::PrivateData::SvPositionAtTime::default_instance_)
  {
    CLP::LogEntry::PrivateData::protobuf_AddDesc_CLPGnssMeasApi_2eproto(0, a2, a3, a4);
    return CLP::LogEntry::PrivateData::SvPositionAtTime::default_instance_;
  }

  return result;
}

uint64_t CLP::LogEntry::PrivateData::SvPositionAtTime::Clear(uint64_t this)
{
  v1 = *(this + 28);
  if (v1)
  {
    *(this + 8) = 0;
    if ((v1 & 2) != 0)
    {
      v2 = *(this + 16);
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

  *(this + 28) = 0;
  return this;
}

uint64_t CLP::LogEntry::PrivateData::SvPositionAtTime::MergePartialFromCodedStream(CLP::LogEntry::PrivateData::SvPositionAtTime *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
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
          goto LABEL_14;
        }

        v19 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, &v19) & 1) == 0)
        {
          return 0;
        }

        *(this + 1) = v19;
        v8 = *(this + 7) | 1;
        *(this + 7) = v8;
        v9 = *(a2 + 1);
        if (v9 < *(a2 + 2) && *v9 == 18)
        {
          *(a2 + 1) = v9 + 1;
          goto LABEL_18;
        }
      }

      if (v7 == 2)
      {
        break;
      }

LABEL_14:
      if (v7 == 4)
      {
        return 1;
      }

      if ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(a2, TagFallback) & 1) == 0)
      {
        return 0;
      }
    }

    v8 = *(this + 7);
LABEL_18:
    *(this + 7) = v8 | 2;
    v10 = *(this + 2);
    if (!v10)
    {
      operator new();
    }

    v20 = 0;
    v11 = *(a2 + 1);
    if (v11 >= *(a2 + 2) || *v11 < 0)
    {
      if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v20))
      {
        return 0;
      }
    }

    else
    {
      v20 = *v11;
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
    if (!CLP::LogEntry::PrivateData::Wgs84Ecef::MergePartialFromCodedStream(v10, a2, v14) || *(a2 + 36) != 1)
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

    if (*(a2 + 1) == *(a2 + 2) && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
    {
      *(a2 + 8) = 0;
      result = 1;
      *(a2 + 36) = 1;
      return result;
    }
  }
}

uint64_t CLP::LogEntry::PrivateData::SvPositionAtTime::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 28);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(1, a2, *(this + 8), a3);
    v6 = *(v5 + 28);
  }

  if ((v6 & 2) != 0)
  {
    v7 = *(v5 + 16);
    if (!v7)
    {
      v7 = *(CLP::LogEntry::PrivateData::SvPositionAtTime::default_instance_ + 16);
    }

    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(2, v7, a2, a4);
  }

  return this;
}

uint64_t CLP::LogEntry::PrivateData::SvPositionAtTime::ByteSize(CLP::LogEntry::PrivateData::SvPositionAtTime *this)
{
  v1 = *(this + 28);
  if (*(this + 28))
  {
    v2 = (v1 << 31 >> 31) & 9;
    if ((v1 & 2) != 0)
    {
      v3 = *(this + 2);
      if (!v3)
      {
        v3 = *(CLP::LogEntry::PrivateData::SvPositionAtTime::default_instance_ + 16);
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
      v2 = (v4 + v2 + 2);
    }
  }

  else
  {
    v2 = 0;
  }

  *(this + 6) = v2;
  return v2;
}

double CLP::LogEntry::PrivateData::SvPositionAtTime::CheckTypeAndMergeFrom(CLP::LogEntry::PrivateData::SvPositionAtTime *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  return CLP::LogEntry::PrivateData::SvPositionAtTime::MergeFrom(this, lpsrc);
}

double CLP::LogEntry::PrivateData::SvPositionAtTime::CopyFrom(CLP::LogEntry::PrivateData::SvPositionAtTime *this, const CLP::LogEntry::PrivateData::SvPositionAtTime *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    return CLP::LogEntry::PrivateData::SvPositionAtTime::MergeFrom(this, a2);
  }

  return result;
}

double CLP::LogEntry::PrivateData::SvPositionAtTime::Swap(CLP::LogEntry::PrivateData::SvPositionAtTime *this, CLP::LogEntry::PrivateData::SvPositionAtTime *a2)
{
  if (a2 != this)
  {
    result = *(this + 1);
    *(this + 1) = *(a2 + 1);
    *(a2 + 1) = result;
    v3 = *(this + 2);
    *(this + 2) = *(a2 + 2);
    *(a2 + 2) = v3;
    LODWORD(v3) = *(this + 7);
    *(this + 7) = *(a2 + 7);
    *(a2 + 7) = v3;
    LODWORD(v3) = *(this + 6);
    *(this + 6) = *(a2 + 6);
    *(a2 + 6) = v3;
  }

  return result;
}

void *CLP::LogEntry::PrivateData::PolynomialOrbit::SharedCtor(void *this)
{
  this[9] = 0;
  this[1] = 0;
  this[2] = 0;
  return this;
}

CLP::LogEntry::PrivateData::PolynomialOrbit *CLP::LogEntry::PrivateData::PolynomialOrbit::PolynomialOrbit(CLP::LogEntry::PrivateData::PolynomialOrbit *this, const CLP::LogEntry::PrivateData::PolynomialOrbit *a2)
{
  *this = &unk_285860C30;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 9) = 0;
  CLP::LogEntry::PrivateData::PolynomialOrbit::MergeFrom(this, a2);
  return this;
}

void sub_24552A000(_Unwind_Exception *a1)
{
  v3 = *(v1 + 7);
  if (v3)
  {
    MEMORY[0x245D6AEC0](v3, 0x1000C8000313F17);
  }

  v4 = *(v1 + 5);
  if (v4)
  {
    MEMORY[0x245D6AEC0](v4, 0x1000C8000313F17);
  }

  v5 = *(v1 + 3);
  if (v5)
  {
    MEMORY[0x245D6AEC0](v5, 0x1000C8000313F17);
  }

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(v1);
  _Unwind_Resume(a1);
}

double CLP::LogEntry::PrivateData::PolynomialOrbit::MergeFrom(CLP::LogEntry::PrivateData::PolynomialOrbit *this, const CLP::LogEntry::PrivateData::PolynomialOrbit *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v9);
  }

  v5 = *(a2 + 8);
  if (v5)
  {
    wireless_diagnostics::google::protobuf::RepeatedField<double>::Reserve(this + 6, *(this + 8) + v5);
    memcpy((*(this + 3) + 8 * *(this + 8)), *(a2 + 3), 8 * *(a2 + 8));
    *(this + 8) += *(a2 + 8);
  }

  v6 = *(a2 + 12);
  if (v6)
  {
    wireless_diagnostics::google::protobuf::RepeatedField<double>::Reserve(this + 10, *(this + 12) + v6);
    memcpy((*(this + 5) + 8 * *(this + 12)), *(a2 + 5), 8 * *(a2 + 12));
    *(this + 12) += *(a2 + 12);
  }

  v7 = *(a2 + 16);
  if (v7)
  {
    wireless_diagnostics::google::protobuf::RepeatedField<double>::Reserve(this + 14, *(this + 16) + v7);
    memcpy((*(this + 7) + 8 * *(this + 16)), *(a2 + 7), 8 * *(a2 + 16));
    *(this + 16) += *(a2 + 16);
  }

  LOBYTE(v8) = *(a2 + 76);
  if (v8)
  {
    if (*(a2 + 76))
    {
      result = *(a2 + 1);
      *(this + 19) |= 1u;
      *(this + 1) = result;
      v8 = *(a2 + 19);
    }

    if ((v8 & 2) != 0)
    {
      result = *(a2 + 2);
      *(this + 19) |= 2u;
      *(this + 2) = result;
    }
  }

  return result;
}

void sub_24552A1D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void CLP::LogEntry::PrivateData::PolynomialOrbit::~PolynomialOrbit(CLP::LogEntry::PrivateData::PolynomialOrbit *this)
{
  *this = &unk_285860C30;
  v2 = *(this + 7);
  if (v2)
  {
    MEMORY[0x245D6AEC0](v2, 0x1000C8000313F17);
  }

  v3 = *(this + 5);
  if (v3)
  {
    MEMORY[0x245D6AEC0](v3, 0x1000C8000313F17);
  }

  v4 = *(this + 3);
  if (v4)
  {
    MEMORY[0x245D6AEC0](v4, 0x1000C8000313F17);
  }

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  CLP::LogEntry::PrivateData::PolynomialOrbit::~PolynomialOrbit(this);

  JUMPOUT(0x245D6AEE0);
}

uint64_t CLP::LogEntry::PrivateData::PolynomialOrbit::default_instance(CLP::LogEntry::PrivateData::PolynomialOrbit *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = CLP::LogEntry::PrivateData::PolynomialOrbit::default_instance_;
  if (!CLP::LogEntry::PrivateData::PolynomialOrbit::default_instance_)
  {
    CLP::LogEntry::PrivateData::protobuf_AddDesc_CLPGnssMeasApi_2eproto(0, a2, a3, a4);
    return CLP::LogEntry::PrivateData::PolynomialOrbit::default_instance_;
  }

  return result;
}

uint64_t CLP::LogEntry::PrivateData::PolynomialOrbit::Clear(uint64_t this)
{
  if (*(this + 76))
  {
    *(this + 8) = 0;
    *(this + 16) = 0;
  }

  *(this + 32) = 0;
  *(this + 48) = 0;
  *(this + 64) = 0;
  *(this + 76) = 0;
  return this;
}

uint64_t CLP::LogEntry::PrivateData::PolynomialOrbit::MergePartialFromCodedStream(CLP::LogEntry::PrivateData::PolynomialOrbit *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
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
      if (TagFallback >> 3 > 3)
      {
        break;
      }

      if (v7 != 2)
      {
        if (v7 != 3 || v8 != 1)
        {
          goto LABEL_27;
        }

        goto LABEL_34;
      }

      if (v8 != 1)
      {
        goto LABEL_27;
      }

      v45[0] = 0;
      if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v45) & 1) == 0)
      {
        return 0;
      }

      *(this + 1) = v45[0];
      *(this + 19) |= 1u;
      v10 = *(a2 + 1);
      if (v10 < *(a2 + 2) && *v10 == 25)
      {
        *(a2 + 1) = v10 + 1;
LABEL_34:
        v45[0] = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v45) & 1) == 0)
        {
          return 0;
        }

        *(this + 2) = v45[0];
        *(this + 19) |= 2u;
        v11 = *(a2 + 1);
        if (v11 < *(a2 + 2) && *v11 == 33)
        {
LABEL_37:
          *(a2 + 1) = v11 + 1;
          goto LABEL_38;
        }
      }
    }

    if (v7 != 4)
    {
      break;
    }

    if (v8 == 1)
    {
LABEL_38:
      v45[0] = 0;
      if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v45) & 1) == 0)
      {
        return 0;
      }

      v12 = v45[0];
      v13 = *(this + 8);
      if (v13 == *(this + 9))
      {
        wireless_diagnostics::google::protobuf::RepeatedField<double>::Reserve(this + 6, v13 + 1);
        v13 = *(this + 8);
      }

      v14 = *(this + 3);
      v15 = v13 + 1;
      *(this + 8) = v13 + 1;
      *(v14 + 8 * v13) = v12;
      v16 = *(a2 + 1);
      v17 = *(a2 + 4) - v16;
      if (v17 >= 1)
      {
        v18 = v17 / 9u;
        v19 = v18 >= *(this + 9) - v15 ? *(this + 9) - v15 : v18;
        if (v19 >= 1)
        {
          v20 = 0;
          while (*v16 == 33)
          {
            v21 = *(v16 + 1);
            if (v15 >= *(this + 9))
            {
              wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
              wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
              wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
              wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v45);
              v15 = *(this + 8);
              v14 = *(this + 3);
            }

            *(this + 8) = v15 + 1;
            *(v14 + 8 * v15) = v21;
            ++v20;
            v16 += 9;
            ++v15;
            if (v19 == v20)
            {
              goto LABEL_53;
            }
          }

          if (!v20)
          {
            goto LABEL_54;
          }

LABEL_53:
          wireless_diagnostics::google::protobuf::io::CodedInputStream::Skip(a2);
        }
      }

LABEL_54:
      v11 = *(a2 + 1);
      if (v11 < *(a2 + 2))
      {
        v22 = *v11;
        if (v22 == 33)
        {
          goto LABEL_37;
        }

        if (v22 == 41)
        {
          while (1)
          {
            *(a2 + 1) = v11 + 1;
LABEL_58:
            v45[0] = 0;
            if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v45) & 1) == 0)
            {
              return 0;
            }

            v23 = v45[0];
            v24 = *(this + 12);
            if (v24 == *(this + 13))
            {
              wireless_diagnostics::google::protobuf::RepeatedField<double>::Reserve(this + 10, v24 + 1);
              v24 = *(this + 12);
            }

            v25 = *(this + 5);
            v26 = v24 + 1;
            *(this + 12) = v24 + 1;
            *(v25 + 8 * v24) = v23;
            v27 = *(a2 + 1);
            v28 = *(a2 + 4) - v27;
            if (v28 >= 1)
            {
              v29 = v28 / 9u;
              v30 = v29 >= *(this + 13) - v26 ? *(this + 13) - v26 : v29;
              if (v30 >= 1)
              {
                v31 = 0;
                while (*v27 == 41)
                {
                  v32 = *(v27 + 1);
                  if (v26 >= *(this + 13))
                  {
                    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v45);
                    v26 = *(this + 12);
                    v25 = *(this + 5);
                  }

                  *(this + 12) = v26 + 1;
                  *(v25 + 8 * v26) = v32;
                  ++v31;
                  v27 += 9;
                  ++v26;
                  if (v30 == v31)
                  {
                    goto LABEL_73;
                  }
                }

                if (!v31)
                {
                  goto LABEL_74;
                }

LABEL_73:
                wireless_diagnostics::google::protobuf::io::CodedInputStream::Skip(a2);
              }
            }

LABEL_74:
            v11 = *(a2 + 1);
            if (v11 >= *(a2 + 2))
            {
              break;
            }

            v33 = *v11;
            if (v33 != 41)
            {
              if (v33 == 49)
              {
                do
                {
                  *(a2 + 1) = v11 + 1;
LABEL_78:
                  v45[0] = 0;
                  if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v45) & 1) == 0)
                  {
                    return 0;
                  }

                  v34 = v45[0];
                  v35 = *(this + 16);
                  if (v35 == *(this + 17))
                  {
                    wireless_diagnostics::google::protobuf::RepeatedField<double>::Reserve(this + 14, v35 + 1);
                    v35 = *(this + 16);
                  }

                  v36 = *(this + 7);
                  v37 = v35 + 1;
                  *(this + 16) = v35 + 1;
                  *(v36 + 8 * v35) = v34;
                  v38 = *(a2 + 1);
                  v39 = *(a2 + 4) - v38;
                  if (v39 >= 1)
                  {
                    v40 = v39 / 9u;
                    v41 = v40 >= *(this + 17) - v37 ? *(this + 17) - v37 : v40;
                    if (v41 >= 1)
                    {
                      v42 = 0;
                      while (*v38 == 49)
                      {
                        v43 = *(v38 + 1);
                        if (v37 >= *(this + 17))
                        {
                          wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                          wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                          wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                          wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v45);
                          v37 = *(this + 16);
                          v36 = *(this + 7);
                        }

                        *(this + 16) = v37 + 1;
                        *(v36 + 8 * v37) = v43;
                        ++v42;
                        v38 += 9;
                        ++v37;
                        if (v41 == v42)
                        {
                          goto LABEL_93;
                        }
                      }

                      if (!v42)
                      {
                        goto LABEL_94;
                      }

LABEL_93:
                      wireless_diagnostics::google::protobuf::io::CodedInputStream::Skip(a2);
                    }
                  }

LABEL_94:
                  v11 = *(a2 + 1);
                  v44 = *(a2 + 2);
                }

                while (v11 < v44 && *v11 == 49);
                if (v11 == v44 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
                {
                  *(a2 + 8) = 0;
                  result = 1;
                  *(a2 + 36) = 1;
                  return result;
                }
              }

              goto LABEL_1;
            }
          }
        }
      }
    }

    else
    {
      if (v8 == 2)
      {
        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadPackedPrimitiveNoInline<double,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)1>(a2, this + 3);
        if (!result)
        {
          return result;
        }

        goto LABEL_54;
      }

LABEL_27:
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

  if (v7 == 5)
  {
    if (v8 != 1)
    {
      if (v8 == 2)
      {
        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadPackedPrimitiveNoInline<double,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)1>(a2, this + 5);
        if (!result)
        {
          return result;
        }

        goto LABEL_74;
      }

      goto LABEL_27;
    }

    goto LABEL_58;
  }

  if (v7 != 6)
  {
    goto LABEL_27;
  }

  if (v8 == 1)
  {
    goto LABEL_78;
  }

  if (v8 != 2)
  {
    goto LABEL_27;
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadPackedPrimitiveNoInline<double,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)1>(a2, this + 7);
  if (result)
  {
    goto LABEL_94;
  }

  return result;
}

void sub_24552A94C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
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

uint64_t CLP::LogEntry::PrivateData::PolynomialOrbit::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3)
{
  v4 = this;
  v5 = *(this + 76);
  if (v5)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(2, a2, *(this + 8), a3);
    v5 = *(v4 + 76);
  }

  if ((v5 & 2) != 0)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(3, a2, *(v4 + 16), a3);
  }

  if (*(v4 + 32) >= 1)
  {
    v6 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(4, a2, *(*(v4 + 24) + 8 * v6++), a3);
    }

    while (v6 < *(v4 + 32));
  }

  if (*(v4 + 48) >= 1)
  {
    v7 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(5, a2, *(*(v4 + 40) + 8 * v7++), a3);
    }

    while (v7 < *(v4 + 48));
  }

  if (*(v4 + 64) >= 1)
  {
    v8 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(6, a2, *(*(v4 + 56) + 8 * v8++), a3);
    }

    while (v8 < *(v4 + 64));
  }

  return this;
}

uint64_t CLP::LogEntry::PrivateData::PolynomialOrbit::ByteSize(CLP::LogEntry::PrivateData::PolynomialOrbit *this)
{
  v1 = *(this + 76);
  v2 = (v1 << 31 >> 31) & 9;
  if ((v1 & 2) != 0)
  {
    v2 += 9;
  }

  if (*(this + 76))
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  v4 = (9 * (*(this + 12) + *(this + 8) + *(this + 16)) + v3);
  *(this + 18) = v4;
  return v4;
}

double CLP::LogEntry::PrivateData::PolynomialOrbit::CheckTypeAndMergeFrom(CLP::LogEntry::PrivateData::PolynomialOrbit *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  return CLP::LogEntry::PrivateData::PolynomialOrbit::MergeFrom(this, lpsrc);
}

double CLP::LogEntry::PrivateData::PolynomialOrbit::CopyFrom(CLP::LogEntry::PrivateData::PolynomialOrbit *this, const CLP::LogEntry::PrivateData::PolynomialOrbit *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    return CLP::LogEntry::PrivateData::PolynomialOrbit::MergeFrom(this, a2);
  }

  return result;
}

double CLP::LogEntry::PrivateData::PolynomialOrbit::Swap(CLP::LogEntry::PrivateData::PolynomialOrbit *this, CLP::LogEntry::PrivateData::PolynomialOrbit *a2)
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
    v5 = *(a2 + 4);
    *(a2 + 3) = v4;
    v6 = *(this + 4);
    *(this + 4) = v5;
    *(a2 + 4) = v6;
    v7 = *(this + 5);
    *(this + 5) = *(a2 + 5);
    v8 = *(a2 + 6);
    *(a2 + 5) = v7;
    v9 = *(this + 6);
    *(this + 6) = v8;
    *(a2 + 6) = v9;
    v10 = *(this + 7);
    *(this + 7) = *(a2 + 7);
    result = *(a2 + 8);
    *(a2 + 7) = v10;
    v12 = *(this + 8);
    *(this + 8) = result;
    *(a2 + 8) = v12;
    LODWORD(v10) = *(this + 19);
    *(this + 19) = *(a2 + 19);
    *(a2 + 19) = v10;
    LODWORD(v10) = *(this + 18);
    *(this + 18) = *(a2 + 18);
    *(a2 + 18) = v10;
  }

  return result;
}

double CLP::LogEntry::PrivateData::SvInfo::SharedCtor(CLP::LogEntry::PrivateData::SvInfo *this)
{
  *(this + 1) = 0;
  *(this + 2) = 0;
  result = 0.0;
  *(this + 3) = 0u;
  *(this + 4) = 0u;
  *(this + 5) = 0u;
  *(this + 12) = 0;
  *(this + 8) = 0u;
  *(this + 9) = 0u;
  *(this + 10) = 0u;
  return result;
}

CLP::LogEntry::PrivateData::SvInfo *CLP::LogEntry::PrivateData::SvInfo::SvInfo(CLP::LogEntry::PrivateData::SvInfo *this, const CLP::LogEntry::PrivateData::SvInfo *a2)
{
  *this = &unk_285860CA8;
  *(this + 24) = 0u;
  *(this + 8) = 0u;
  *(this + 9) = 0u;
  *(this + 10) = 0u;
  *(this + 8) = 0u;
  *(this + 10) = 0;
  *(this + 3) = 0u;
  *(this + 4) = 0u;
  *(this + 5) = 0u;
  *(this + 6) = 0u;
  *(this + 108) = 0u;
  CLP::LogEntry::PrivateData::SvInfo::MergeFrom(this, a2);
  return this;
}

void sub_24552AE5C(_Unwind_Exception *a1)
{
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<proto::gnsshal::NvStoreItem>::TypeHandler>(v1 + 13);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<proto::gnsshal::NvStoreItem>::TypeHandler>(v2);
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(v1);
  _Unwind_Resume(a1);
}

void CLP::LogEntry::PrivateData::SvInfo::MergeFrom(CLP::LogEntry::PrivateData::SvInfo *this, const CLP::LogEntry::PrivateData::SvInfo *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v40);
  }

  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 24));
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
        wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v40);
      }

      v6 = *(*(a2 + 3) + 8 * v5);
      v7 = *(this + 9);
      v8 = *(this + 8);
      if (v8 >= v7)
      {
        if (v7 == *(this + 10))
        {
          wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 24));
          v7 = *(this + 9);
        }

        *(this + 9) = v7 + 1;
        operator new();
      }

      v9 = *(this + 3);
      *(this + 8) = v8 + 1;
      CLP::LogEntry::PrivateData::SvPositionAtTime::MergeFrom(*(v9 + 8 * v8), v6);
      ++v5;
      v4 = *(a2 + 8);
    }

    while (v5 < v4);
  }

  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 104));
  LODWORD(v10) = *(a2 + 28);
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
        wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v40);
      }

      v12 = *(*(a2 + 13) + 8 * v11);
      v13 = *(this + 29);
      v14 = *(this + 28);
      if (v14 >= v13)
      {
        if (v13 == *(this + 30))
        {
          wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 104));
          v13 = *(this + 29);
        }

        *(this + 29) = v13 + 1;
        operator new();
      }

      v15 = *(this + 13);
      *(this + 28) = v14 + 1;
      CLP::LogEntry::PrivateData::SvBandCorrections::MergeFrom(*(v15 + 8 * v14), v12);
      ++v11;
      v10 = *(a2 + 28);
    }

    while (v11 < v10);
  }

  v16 = *(a2 + 43);
  if (!v16)
  {
    goto LABEL_32;
  }

  if (v16)
  {
    *(this + 43) |= 1u;
    v33 = *(this + 1);
    if (!v33)
    {
      operator new();
    }

    v34 = *(a2 + 1);
    if (!v34)
    {
      v34 = *(CLP::LogEntry::PrivateData::SvInfo::default_instance_ + 8);
    }

    CLP::LogEntry::PrivateData::SvId::MergeFrom(v33, v34);
    v16 = *(a2 + 43);
    if ((v16 & 2) == 0)
    {
LABEL_26:
      if ((v16 & 4) == 0)
      {
        goto LABEL_27;
      }

      goto LABEL_84;
    }
  }

  else if ((v16 & 2) == 0)
  {
    goto LABEL_26;
  }

  v35 = *(a2 + 2);
  *(this + 43) |= 2u;
  *(this + 2) = v35;
  v16 = *(a2 + 43);
  if ((v16 & 4) == 0)
  {
LABEL_27:
    if ((v16 & 0x10) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_86;
  }

LABEL_84:
  v36 = *(a2 + 14);
  if (v36 >= 7)
  {
    __assert_rtn("set_position_source", "CLPGnssMeasApi.pb.h", 10941, "::CLP::LogEntry::PrivateData::SvPositionSource_IsValid(value)");
  }

  *(this + 43) |= 4u;
  *(this + 14) = v36;
  v16 = *(a2 + 43);
  if ((v16 & 0x10) == 0)
  {
LABEL_28:
    if ((v16 & 0x20) == 0)
    {
      goto LABEL_29;
    }

LABEL_87:
    v38 = *(a2 + 8);
    *(this + 43) |= 0x20u;
    *(this + 8) = v38;
    v16 = *(a2 + 43);
    if ((v16 & 0x40) == 0)
    {
LABEL_30:
      if ((v16 & 0x80) == 0)
      {
        goto LABEL_32;
      }

      goto LABEL_31;
    }

    goto LABEL_88;
  }

LABEL_86:
  v37 = *(a2 + 6);
  *(this + 43) |= 0x10u;
  *(this + 6) = v37;
  v16 = *(a2 + 43);
  if ((v16 & 0x20) != 0)
  {
    goto LABEL_87;
  }

LABEL_29:
  if ((v16 & 0x40) == 0)
  {
    goto LABEL_30;
  }

LABEL_88:
  v39 = *(a2 + 9);
  *(this + 43) |= 0x40u;
  *(this + 9) = v39;
  v16 = *(a2 + 43);
  if ((v16 & 0x80) != 0)
  {
LABEL_31:
    v17 = *(a2 + 15);
    *(this + 43) |= 0x80u;
    *(this + 15) = v17;
    v16 = *(a2 + 43);
  }

LABEL_32:
  if ((v16 & 0xFF00) != 0)
  {
    if ((v16 & 0x100) != 0)
    {
      v18 = *(a2 + 20);
      *(this + 43) |= 0x100u;
      *(this + 20) = v18;
      v16 = *(a2 + 43);
    }

    if ((v16 & 0x200) != 0)
    {
      v19 = *(a2 + 21);
      if (v19 >= 5)
      {
        __assert_rtn("set_over_the_air_from_sv_health_l1", "CLPGnssMeasApi.pb.h", 11099, "::CLP::LogEntry::PrivateData::SvHealthIndication_IsValid(value)");
      }

      *(this + 43) |= 0x200u;
      *(this + 21) = v19;
      v16 = *(a2 + 43);
    }

    if ((v16 & 0x400) != 0)
    {
      v20 = *(a2 + 22);
      if (v20 >= 5)
      {
        __assert_rtn("set_over_the_air_from_other_sv_health_l1", "CLPGnssMeasApi.pb.h", 11122, "::CLP::LogEntry::PrivateData::SvHealthIndication_IsValid(value)");
      }

      *(this + 43) |= 0x400u;
      *(this + 22) = v20;
      v16 = *(a2 + 43);
    }

    if ((v16 & 0x800) != 0)
    {
      v21 = *(a2 + 23);
      if (v21 >= 5)
      {
        __assert_rtn("set_assistance_file_health_l1", "CLPGnssMeasApi.pb.h", 11145, "::CLP::LogEntry::PrivateData::SvHealthIndication_IsValid(value)");
      }

      *(this + 43) |= 0x800u;
      *(this + 23) = v21;
      v16 = *(a2 + 43);
    }

    if ((v16 & 0x1000) != 0)
    {
      v22 = *(a2 + 24);
      if (v22 >= 5)
      {
        __assert_rtn("set_ms_based_health_l1", "CLPGnssMeasApi.pb.h", 11168, "::CLP::LogEntry::PrivateData::SvHealthIndication_IsValid(value)");
      }

      *(this + 43) |= 0x1000u;
      *(this + 24) = v22;
      v16 = *(a2 + 43);
    }

    if ((v16 & 0x2000) != 0)
    {
      v23 = *(a2 + 25);
      if (v23 >= 5)
      {
        __assert_rtn("set_integrity_health_l1", "CLPGnssMeasApi.pb.h", 11191, "::CLP::LogEntry::PrivateData::SvHealthIndication_IsValid(value)");
      }

      *(this + 43) |= 0x2000u;
      *(this + 25) = v23;
      v16 = *(a2 + 43);
    }

    if ((v16 & 0x8000) != 0)
    {
      *(this + 43) |= 0x8000u;
      v24 = *(this + 16);
      if (!v24)
      {
        operator new();
      }

      v25 = *(a2 + 16);
      if (!v25)
      {
        v25 = *(CLP::LogEntry::PrivateData::SvInfo::default_instance_ + 128);
      }

      CLP::LogEntry::PrivateData::PolynomialOrbit::MergeFrom(v24, v25);
      v16 = *(a2 + 43);
    }
  }

  if ((v16 & 0xFF0000) != 0)
  {
    if ((v16 & 0x10000) != 0)
    {
      v26 = *(a2 + 34);
      if (v26 >= 5)
      {
        __assert_rtn("set_over_the_air_from_sv_health_l5", "CLPGnssMeasApi.pb.h", 11281, "::CLP::LogEntry::PrivateData::SvHealthIndication_IsValid(value)");
      }

      *(this + 43) |= 0x10000u;
      *(this + 34) = v26;
      v16 = *(a2 + 43);
    }

    if ((v16 & 0x20000) != 0)
    {
      v27 = *(a2 + 35);
      if (v27 >= 5)
      {
        __assert_rtn("set_over_the_air_from_other_sv_health_l5", "CLPGnssMeasApi.pb.h", 11304, "::CLP::LogEntry::PrivateData::SvHealthIndication_IsValid(value)");
      }

      *(this + 43) |= 0x20000u;
      *(this + 35) = v27;
      v16 = *(a2 + 43);
    }

    if ((v16 & 0x40000) != 0)
    {
      v28 = *(a2 + 36);
      if (v28 >= 5)
      {
        __assert_rtn("set_assistance_file_health_l5", "CLPGnssMeasApi.pb.h", 11327, "::CLP::LogEntry::PrivateData::SvHealthIndication_IsValid(value)");
      }

      *(this + 43) |= 0x40000u;
      *(this + 36) = v28;
      v16 = *(a2 + 43);
    }

    if ((v16 & 0x80000) != 0)
    {
      v29 = *(a2 + 37);
      if (v29 >= 5)
      {
        __assert_rtn("set_ms_based_health_l5", "CLPGnssMeasApi.pb.h", 11350, "::CLP::LogEntry::PrivateData::SvHealthIndication_IsValid(value)");
      }

      *(this + 43) |= 0x80000u;
      *(this + 37) = v29;
      v16 = *(a2 + 43);
    }

    if ((v16 & 0x100000) != 0)
    {
      v30 = *(a2 + 40);
      if (v30 >= 5)
      {
        __assert_rtn("set_integrity_health_l5", "CLPGnssMeasApi.pb.h", 11373, "::CLP::LogEntry::PrivateData::SvHealthIndication_IsValid(value)");
      }

      *(this + 43) |= 0x100000u;
      *(this + 40) = v30;
      v16 = *(a2 + 43);
    }

    if ((v16 & 0x200000) != 0)
    {
      v31 = *(a2 + 19);
      *(this + 43) |= 0x200000u;
      *(this + 19) = v31;
      v16 = *(a2 + 43);
    }

    if ((v16 & 0x400000) != 0)
    {
      v32 = *(a2 + 41);
      if (v32 >= 4)
      {
        __assert_rtn("set_sv_reference_point", "CLPGnssMeasApi.pb.h", 11418, "::CLP::LogEntry::PrivateData::SvReferencePoint_IsValid(value)");
      }

      *(this + 43) |= 0x400000u;
      *(this + 41) = v32;
    }
  }
}

void sub_24552B68C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void CLP::LogEntry::PrivateData::SvInfo::~SvInfo(CLP::LogEntry::PrivateData::SvInfo *this)
{
  *this = &unk_285860CA8;
  v2 = (this + 104);
  CLP::LogEntry::PrivateData::SvInfo::SharedDtor(this);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<proto::gnsshal::NvStoreItem>::TypeHandler>(v2);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<proto::gnsshal::NvStoreItem>::TypeHandler>(this + 3);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  CLP::LogEntry::PrivateData::SvInfo::~SvInfo(this);

  JUMPOUT(0x245D6AEE0);
}

void *CLP::LogEntry::PrivateData::SvInfo::SharedDtor(void *this)
{
  if (CLP::LogEntry::PrivateData::SvInfo::default_instance_ != this)
  {
    v1 = this;
    v2 = this[1];
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }

    this = v1[16];
    if (this)
    {
      v3 = *(*this + 8);

      return v3();
    }
  }

  return this;
}

uint64_t CLP::LogEntry::PrivateData::SvInfo::default_instance(CLP::LogEntry::PrivateData::SvInfo *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = CLP::LogEntry::PrivateData::SvInfo::default_instance_;
  if (!CLP::LogEntry::PrivateData::SvInfo::default_instance_)
  {
    CLP::LogEntry::PrivateData::protobuf_AddDesc_CLPGnssMeasApi_2eproto(0, a2, a3, a4);
    return CLP::LogEntry::PrivateData::SvInfo::default_instance_;
  }

  return result;
}

uint64_t CLP::LogEntry::PrivateData::SvInfo::Clear(uint64_t this)
{
  v1 = this;
  v2 = *(this + 172);
  if (v2)
  {
    if (v2)
    {
      this = *(this + 8);
      if (this)
      {
        this = CLP::LogEntry::PrivateData::SvId::Clear(this);
        v2 = *(v1 + 172);
      }
    }

    *(v1 + 16) = 0;
    *(v1 + 48) = 0u;
    *(v1 + 64) = 0u;
  }

  if ((v2 & 0xFF00) != 0)
  {
    *(v1 + 80) = 0;
    *(v1 + 88) = 0;
    *(v1 + 96) = 0;
    if ((v2 & 0x8000) != 0)
    {
      v3 = *(v1 + 128);
      if (v3)
      {
        if (*(v3 + 76))
        {
          *(v3 + 8) = 0;
          *(v3 + 16) = 0;
        }

        *(v3 + 32) = 0;
        *(v3 + 48) = 0;
        *(v3 + 64) = 0;
        *(v3 + 76) = 0;
        v2 = *(v1 + 172);
      }
    }
  }

  if ((v2 & 0xFF0000) != 0)
  {
    *(v1 + 152) = 0u;
    *(v1 + 136) = 0u;
  }

  if (*(v1 + 32) >= 1)
  {
    v4 = 0;
    do
    {
      v5 = *(*(v1 + 24) + 8 * v4);
      this = (*(*v5 + 32))(v5);
      ++v4;
    }

    while (v4 < *(v1 + 32));
  }

  *(v1 + 32) = 0;
  if (*(v1 + 112) >= 1)
  {
    v6 = 0;
    do
    {
      v7 = *(*(v1 + 104) + 8 * v6);
      this = (*(*v7 + 32))(v7);
      ++v6;
    }

    while (v6 < *(v1 + 112));
  }

  *(v1 + 112) = 0;
  *(v1 + 172) = 0;
  return this;
}

uint64_t CLP::LogEntry::PrivateData::SvInfo::MergePartialFromCodedStream(CLP::LogEntry::PrivateData::SvInfo *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
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
        if (v7 != 2)
        {
          goto LABEL_56;
        }

        *(this + 43) |= 1u;
        v8 = *(this + 1);
        if (!v8)
        {
          operator new();
        }

        v102[0] = 0;
        v9 = *(a2 + 1);
        if (v9 >= *(a2 + 2) || *v9 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v102))
          {
            return 0;
          }
        }

        else
        {
          v102[0] = *v9;
          *(a2 + 1) = v9 + 1;
        }

        v34 = *(a2 + 14);
        v35 = *(a2 + 15);
        *(a2 + 14) = v34 + 1;
        if (v34 >= v35)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
        if (!CLP::LogEntry::PrivateData::SvId::MergePartialFromCodedStream(v8, a2, v36) || *(a2 + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
        v37 = *(a2 + 14);
        v38 = __OFSUB__(v37, 1);
        v39 = v37 - 1;
        if (v39 < 0 == v38)
        {
          *(a2 + 14) = v39;
        }

        v40 = *(a2 + 1);
        if (v40 >= *(a2 + 2) || *v40 != 17)
        {
          continue;
        }

        *(a2 + 1) = v40 + 1;
        goto LABEL_69;
      case 2u:
        if (v7 != 1)
        {
          goto LABEL_56;
        }

LABEL_69:
        *v102 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v102) & 1) == 0)
        {
          return 0;
        }

        *(this + 2) = *v102;
        *(this + 43) |= 2u;
        v41 = *(a2 + 1);
        v16 = *(a2 + 2);
        if (v41 >= v16 || *v41 != 24)
        {
          continue;
        }

        v17 = v41 + 1;
        *(a2 + 1) = v17;
LABEL_73:
        v102[0] = 0;
        if (v17 >= v16 || (v42 = *v17, (v42 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v102);
          if (!result)
          {
            return result;
          }

          v42 = v102[0];
        }

        else
        {
          *(a2 + 1) = v17 + 1;
        }

        if (v42 <= 6)
        {
          *(this + 43) |= 4u;
          *(this + 14) = v42;
        }

        v44 = *(a2 + 1);
        if (v44 >= *(a2 + 2) || *v44 != 34)
        {
          continue;
        }

        do
        {
          *(a2 + 1) = v44 + 1;
LABEL_83:
          v45 = *(this + 9);
          v46 = *(this + 8);
          if (v46 >= v45)
          {
            if (v45 == *(this + 10))
            {
              wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 24));
              v45 = *(this + 9);
            }

            *(this + 9) = v45 + 1;
            operator new();
          }

          v47 = *(this + 3);
          *(this + 8) = v46 + 1;
          v48 = *(v47 + 8 * v46);
          v102[0] = 0;
          v49 = *(a2 + 1);
          if (v49 >= *(a2 + 2) || *v49 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v102))
            {
              return 0;
            }
          }

          else
          {
            v102[0] = *v49;
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
          if (!CLP::LogEntry::PrivateData::SvPositionAtTime::MergePartialFromCodedStream(v48, a2, v52) || *(a2 + 36) != 1)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
          v53 = *(a2 + 14);
          v38 = __OFSUB__(v53, 1);
          v54 = v53 - 1;
          if (v54 < 0 == v38)
          {
            *(a2 + 14) = v54;
          }

          v44 = *(a2 + 1);
          if (v44 >= *(a2 + 2))
          {
            goto LABEL_1;
          }

          v55 = *v44;
        }

        while (v55 == 34);
        if (v55 != 41)
        {
          continue;
        }

        *(a2 + 1) = v44 + 1;
LABEL_101:
        *v102 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v102) & 1) == 0)
        {
          return 0;
        }

        *(this + 6) = *v102;
        *(this + 43) |= 0x10u;
        v56 = *(a2 + 1);
        if (v56 >= *(a2 + 2) || *v56 != 49)
        {
          continue;
        }

        *(a2 + 1) = v56 + 1;
LABEL_105:
        *v102 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v102) & 1) == 0)
        {
          return 0;
        }

        *(this + 8) = *v102;
        *(this + 43) |= 0x20u;
        v57 = *(a2 + 1);
        if (v57 >= *(a2 + 2) || *v57 != 57)
        {
          continue;
        }

        *(a2 + 1) = v57 + 1;
LABEL_109:
        *v102 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v102) & 1) == 0)
        {
          return 0;
        }

        *(this + 9) = *v102;
        *(this + 43) |= 0x40u;
        v58 = *(a2 + 1);
        if (v58 >= *(a2 + 2) || *v58 != 69)
        {
          continue;
        }

        *(a2 + 1) = v58 + 1;
LABEL_113:
        v102[0] = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a2, v102) & 1) == 0)
        {
          return 0;
        }

        *(this + 15) = v102[0];
        *(this + 43) |= 0x80u;
        v59 = *(a2 + 1);
        if (v59 >= *(a2 + 2) || *v59 != 77)
        {
          continue;
        }

        *(a2 + 1) = v59 + 1;
LABEL_117:
        v102[0] = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a2, v102) & 1) == 0)
        {
          return 0;
        }

        *(this + 20) = v102[0];
        *(this + 43) |= 0x100u;
        v60 = *(a2 + 1);
        v26 = *(a2 + 2);
        if (v60 >= v26 || *v60 != 80)
        {
          continue;
        }

        v27 = v60 + 1;
        *(a2 + 1) = v27;
LABEL_121:
        v102[0] = 0;
        if (v27 >= v26 || (v61 = *v27, (v61 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v102);
          if (!result)
          {
            return result;
          }

          v61 = v102[0];
        }

        else
        {
          *(a2 + 1) = v27 + 1;
        }

        if (v61 <= 4)
        {
          *(this + 43) |= 0x200u;
          *(this + 21) = v61;
        }

        v62 = *(a2 + 1);
        v14 = *(a2 + 2);
        if (v62 >= v14 || *v62 != 88)
        {
          continue;
        }

        v15 = v62 + 1;
        *(a2 + 1) = v15;
LABEL_131:
        v102[0] = 0;
        if (v15 >= v14 || (v63 = *v15, (v63 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v102);
          if (!result)
          {
            return result;
          }

          v63 = v102[0];
        }

        else
        {
          *(a2 + 1) = v15 + 1;
        }

        if (v63 <= 4)
        {
          *(this + 43) |= 0x400u;
          *(this + 22) = v63;
        }

        v64 = *(a2 + 1);
        v24 = *(a2 + 2);
        if (v64 >= v24 || *v64 != 96)
        {
          continue;
        }

        v25 = v64 + 1;
        *(a2 + 1) = v25;
LABEL_141:
        v102[0] = 0;
        if (v25 >= v24 || (v65 = *v25, (v65 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v102);
          if (!result)
          {
            return result;
          }

          v65 = v102[0];
        }

        else
        {
          *(a2 + 1) = v25 + 1;
        }

        if (v65 <= 4)
        {
          *(this + 43) |= 0x800u;
          *(this + 23) = v65;
        }

        v66 = *(a2 + 1);
        v20 = *(a2 + 2);
        if (v66 >= v20 || *v66 != 104)
        {
          continue;
        }

        v21 = v66 + 1;
        *(a2 + 1) = v21;
LABEL_151:
        v102[0] = 0;
        if (v21 >= v20 || (v67 = *v21, (v67 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v102);
          if (!result)
          {
            return result;
          }

          v67 = v102[0];
        }

        else
        {
          *(a2 + 1) = v21 + 1;
        }

        if (v67 <= 4)
        {
          *(this + 43) |= 0x1000u;
          *(this + 24) = v67;
        }

        v68 = *(a2 + 1);
        v12 = *(a2 + 2);
        if (v68 >= v12 || *v68 != 112)
        {
          continue;
        }

        v13 = v68 + 1;
        *(a2 + 1) = v13;
LABEL_161:
        v102[0] = 0;
        if (v13 >= v12 || (v69 = *v13, (v69 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v102);
          if (!result)
          {
            return result;
          }

          v69 = v102[0];
        }

        else
        {
          *(a2 + 1) = v13 + 1;
        }

        if (v69 <= 4)
        {
          *(this + 43) |= 0x2000u;
          *(this + 25) = v69;
        }

        v70 = *(a2 + 1);
        if (v70 >= *(a2 + 2) || *v70 != 122)
        {
          continue;
        }

        do
        {
          *(a2 + 1) = v70 + 1;
LABEL_171:
          v71 = *(this + 29);
          v72 = *(this + 28);
          if (v72 >= v71)
          {
            if (v71 == *(this + 30))
            {
              wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 104));
              v71 = *(this + 29);
            }

            *(this + 29) = v71 + 1;
            operator new();
          }

          v73 = *(this + 13);
          *(this + 28) = v72 + 1;
          v74 = *(v73 + 8 * v72);
          v102[0] = 0;
          v75 = *(a2 + 1);
          if (v75 >= *(a2 + 2) || *v75 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v102))
            {
              return 0;
            }
          }

          else
          {
            v102[0] = *v75;
            *(a2 + 1) = v75 + 1;
          }

          v76 = *(a2 + 14);
          v77 = *(a2 + 15);
          *(a2 + 14) = v76 + 1;
          if (v76 >= v77)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
          if (!CLP::LogEntry::PrivateData::SvBandCorrections::MergePartialFromCodedStream(v74, a2, v78) || *(a2 + 36) != 1)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
          v79 = *(a2 + 14);
          v38 = __OFSUB__(v79, 1);
          v80 = v79 - 1;
          if (v80 < 0 == v38)
          {
            *(a2 + 14) = v80;
          }

          v70 = *(a2 + 1);
          v81 = *(a2 + 2);
        }

        while (v70 < v81 && *v70 == 122);
        if (v81 - v70 < 2 || *v70 != 130 || v70[1] != 1)
        {
          continue;
        }

        *(a2 + 1) = v70 + 2;
LABEL_191:
        *(this + 43) |= 0x8000u;
        v82 = *(this + 16);
        if (!v82)
        {
          operator new();
        }

        v102[0] = 0;
        v83 = *(a2 + 1);
        if (v83 >= *(a2 + 2) || *v83 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v102))
          {
            return 0;
          }
        }

        else
        {
          v102[0] = *v83;
          *(a2 + 1) = v83 + 1;
        }

        v84 = *(a2 + 14);
        v85 = *(a2 + 15);
        *(a2 + 14) = v84 + 1;
        if (v84 >= v85)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
        if (!CLP::LogEntry::PrivateData::PolynomialOrbit::MergePartialFromCodedStream(v82, a2, v86) || *(a2 + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
        v87 = *(a2 + 14);
        v38 = __OFSUB__(v87, 1);
        v88 = v87 - 1;
        if (v88 < 0 == v38)
        {
          *(a2 + 14) = v88;
        }

        v89 = *(a2 + 1);
        v30 = *(a2 + 2);
        if (v30 - v89 <= 1 || *v89 != 144 || v89[1] != 1)
        {
          continue;
        }

        v31 = (v89 + 2);
        *(a2 + 1) = v31;
LABEL_206:
        v102[0] = 0;
        if (v31 >= v30 || (v90 = *v31, (v90 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v102);
          if (!result)
          {
            return result;
          }

          v90 = v102[0];
        }

        else
        {
          *(a2 + 1) = v31 + 1;
        }

        if (v90 <= 4)
        {
          *(this + 43) |= 0x10000u;
          *(this + 34) = v90;
        }

        v91 = *(a2 + 1);
        v28 = *(a2 + 2);
        if (v28 - v91 < 2 || *v91 != 152 || v91[1] != 1)
        {
          continue;
        }

        v29 = (v91 + 2);
        *(a2 + 1) = v29;
LABEL_217:
        v102[0] = 0;
        if (v29 >= v28 || (v92 = *v29, (v92 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v102);
          if (!result)
          {
            return result;
          }

          v92 = v102[0];
        }

        else
        {
          *(a2 + 1) = v29 + 1;
        }

        if (v92 <= 4)
        {
          *(this + 43) |= 0x20000u;
          *(this + 35) = v92;
        }

        v93 = *(a2 + 1);
        v10 = *(a2 + 2);
        if (v10 - v93 < 2 || *v93 != 160 || v93[1] != 1)
        {
          continue;
        }

        v11 = (v93 + 2);
        *(a2 + 1) = v11;
LABEL_228:
        v102[0] = 0;
        if (v11 >= v10 || (v94 = *v11, (v94 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v102);
          if (!result)
          {
            return result;
          }

          v94 = v102[0];
        }

        else
        {
          *(a2 + 1) = v11 + 1;
        }

        if (v94 <= 4)
        {
          *(this + 43) |= 0x40000u;
          *(this + 36) = v94;
        }

        v95 = *(a2 + 1);
        v22 = *(a2 + 2);
        if (v22 - v95 < 2 || *v95 != 168 || v95[1] != 1)
        {
          continue;
        }

        v23 = (v95 + 2);
        *(a2 + 1) = v23;
LABEL_239:
        v102[0] = 0;
        if (v23 >= v22 || (v96 = *v23, (v96 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v102);
          if (!result)
          {
            return result;
          }

          v96 = v102[0];
        }

        else
        {
          *(a2 + 1) = v23 + 1;
        }

        if (v96 <= 4)
        {
          *(this + 43) |= 0x80000u;
          *(this + 37) = v96;
        }

        v97 = *(a2 + 1);
        v32 = *(a2 + 2);
        if (v32 - v97 < 2 || *v97 != 176 || v97[1] != 1)
        {
          continue;
        }

        v33 = (v97 + 2);
        *(a2 + 1) = v33;
LABEL_250:
        v102[0] = 0;
        if (v33 >= v32 || (v98 = *v33, (v98 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v102);
          if (!result)
          {
            return result;
          }

          v98 = v102[0];
        }

        else
        {
          *(a2 + 1) = v33 + 1;
        }

        if (v98 <= 4)
        {
          *(this + 43) |= 0x100000u;
          *(this + 40) = v98;
        }

        v99 = *(a2 + 1);
        if (*(a2 + 4) - v99 < 2 || *v99 != 185 || v99[1] != 1)
        {
          continue;
        }

        *(a2 + 1) = v99 + 2;
LABEL_261:
        *v102 = 0;
        if (wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v102))
        {
          *(this + 19) = *v102;
          *(this + 43) |= 0x200000u;
          v100 = *(a2 + 1);
          v18 = *(a2 + 2);
          if (v18 - v100 >= 2 && *v100 == 192 && v100[1] == 1)
          {
            v19 = (v100 + 2);
            *(a2 + 1) = v19;
LABEL_266:
            v102[0] = 0;
            if (v19 >= v18 || (v101 = *v19, (v101 & 0x80000000) != 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v102);
              if (!result)
              {
                return result;
              }

              v101 = v102[0];
            }

            else
            {
              *(a2 + 1) = v19 + 1;
            }

            if (v101 <= 3)
            {
              *(this + 43) |= 0x400000u;
              *(this + 41) = v101;
            }

            if (*(a2 + 1) == *(a2 + 2) && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
            {
              *(a2 + 8) = 0;
              result = 1;
              *(a2 + 36) = 1;
              return result;
            }
          }

          continue;
        }

        return 0;
      case 3u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_56;
        }

        v17 = *(a2 + 1);
        v16 = *(a2 + 2);
        goto LABEL_73;
      case 4u:
        if (v7 == 2)
        {
          goto LABEL_83;
        }

        goto LABEL_56;
      case 5u:
        if (v7 == 1)
        {
          goto LABEL_101;
        }

        goto LABEL_56;
      case 6u:
        if (v7 == 1)
        {
          goto LABEL_105;
        }

        goto LABEL_56;
      case 7u:
        if (v7 == 1)
        {
          goto LABEL_109;
        }

        goto LABEL_56;
      case 8u:
        if (v7 == 5)
        {
          goto LABEL_113;
        }

        goto LABEL_56;
      case 9u:
        if (v7 == 5)
        {
          goto LABEL_117;
        }

        goto LABEL_56;
      case 0xAu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_56;
        }

        v27 = *(a2 + 1);
        v26 = *(a2 + 2);
        goto LABEL_121;
      case 0xBu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_56;
        }

        v15 = *(a2 + 1);
        v14 = *(a2 + 2);
        goto LABEL_131;
      case 0xCu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_56;
        }

        v25 = *(a2 + 1);
        v24 = *(a2 + 2);
        goto LABEL_141;
      case 0xDu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_56;
        }

        v21 = *(a2 + 1);
        v20 = *(a2 + 2);
        goto LABEL_151;
      case 0xEu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_56;
        }

        v13 = *(a2 + 1);
        v12 = *(a2 + 2);
        goto LABEL_161;
      case 0xFu:
        if (v7 == 2)
        {
          goto LABEL_171;
        }

        goto LABEL_56;
      case 0x10u:
        if (v7 == 2)
        {
          goto LABEL_191;
        }

        goto LABEL_56;
      case 0x12u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_56;
        }

        v31 = *(a2 + 1);
        v30 = *(a2 + 2);
        goto LABEL_206;
      case 0x13u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_56;
        }

        v29 = *(a2 + 1);
        v28 = *(a2 + 2);
        goto LABEL_217;
      case 0x14u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_56;
        }

        v11 = *(a2 + 1);
        v10 = *(a2 + 2);
        goto LABEL_228;
      case 0x15u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_56;
        }

        v23 = *(a2 + 1);
        v22 = *(a2 + 2);
        goto LABEL_239;
      case 0x16u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_56;
        }

        v33 = *(a2 + 1);
        v32 = *(a2 + 2);
        goto LABEL_250;
      case 0x17u:
        if (v7 == 1)
        {
          goto LABEL_261;
        }

        goto LABEL_56;
      case 0x18u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_56;
        }

        v19 = *(a2 + 1);
        v18 = *(a2 + 2);
        goto LABEL_266;
      default:
LABEL_56:
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

uint64_t CLP::LogEntry::PrivateData::SvInfo::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 172);
  if (v6)
  {
    v11 = *(this + 8);
    if (!v11)
    {
      v11 = *(CLP::LogEntry::PrivateData::SvInfo::default_instance_ + 8);
    }

    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(1, v11, a2, a4);
    v6 = *(v5 + 172);
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

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(2, a2, *(v5 + 16), a3);
  if ((*(v5 + 172) & 4) != 0)
  {
LABEL_4:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(3, *(v5 + 56), a2, a4);
  }

LABEL_5:
  if (*(v5 + 32) >= 1)
  {
    v7 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(4, *(*(v5 + 24) + 8 * v7++), a2, a4);
    }

    while (v7 < *(v5 + 32));
  }

  v8 = *(v5 + 172);
  if ((v8 & 0x10) != 0)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(5, a2, *(v5 + 48), a3);
    v8 = *(v5 + 172);
    if ((v8 & 0x20) == 0)
    {
LABEL_10:
      if ((v8 & 0x40) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_38;
    }
  }

  else if ((v8 & 0x20) == 0)
  {
    goto LABEL_10;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(6, a2, *(v5 + 64), a3);
  v8 = *(v5 + 172);
  if ((v8 & 0x40) == 0)
  {
LABEL_11:
    if ((v8 & 0x80) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_39;
  }

LABEL_38:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(7, a2, *(v5 + 72), a3);
  v8 = *(v5 + 172);
  if ((v8 & 0x80) == 0)
  {
LABEL_12:
    if ((v8 & 0x100) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_40;
  }

LABEL_39:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(8, a2, *(v5 + 60), a3);
  v8 = *(v5 + 172);
  if ((v8 & 0x100) == 0)
  {
LABEL_13:
    if ((v8 & 0x200) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_41;
  }

LABEL_40:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(9, a2, *(v5 + 80), a3);
  v8 = *(v5 + 172);
  if ((v8 & 0x200) == 0)
  {
LABEL_14:
    if ((v8 & 0x400) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_42;
  }

LABEL_41:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(0xA, *(v5 + 84), a2, a4);
  v8 = *(v5 + 172);
  if ((v8 & 0x400) == 0)
  {
LABEL_15:
    if ((v8 & 0x800) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_43;
  }

LABEL_42:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(0xB, *(v5 + 88), a2, a4);
  v8 = *(v5 + 172);
  if ((v8 & 0x800) == 0)
  {
LABEL_16:
    if ((v8 & 0x1000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_44;
  }

LABEL_43:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(0xC, *(v5 + 92), a2, a4);
  v8 = *(v5 + 172);
  if ((v8 & 0x1000) == 0)
  {
LABEL_17:
    if ((v8 & 0x2000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

LABEL_44:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(0xD, *(v5 + 96), a2, a4);
  if ((*(v5 + 172) & 0x2000) != 0)
  {
LABEL_18:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(0xE, *(v5 + 100), a2, a4);
  }

LABEL_19:
  if (*(v5 + 112) >= 1)
  {
    v9 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0xF, *(*(v5 + 104) + 8 * v9++), a2, a4);
    }

    while (v9 < *(v5 + 112));
  }

  v10 = *(v5 + 172);
  if ((v10 & 0x8000) != 0)
  {
    v12 = *(v5 + 128);
    if (!v12)
    {
      v12 = *(CLP::LogEntry::PrivateData::SvInfo::default_instance_ + 128);
    }

    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x10, v12, a2, a4);
    v10 = *(v5 + 172);
    if ((v10 & 0x10000) == 0)
    {
LABEL_24:
      if ((v10 & 0x20000) == 0)
      {
        goto LABEL_25;
      }

      goto LABEL_50;
    }
  }

  else if ((v10 & 0x10000) == 0)
  {
    goto LABEL_24;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(0x12, *(v5 + 136), a2, a4);
  v10 = *(v5 + 172);
  if ((v10 & 0x20000) == 0)
  {
LABEL_25:
    if ((v10 & 0x40000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_51;
  }

LABEL_50:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(0x13, *(v5 + 140), a2, a4);
  v10 = *(v5 + 172);
  if ((v10 & 0x40000) == 0)
  {
LABEL_26:
    if ((v10 & 0x80000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_52;
  }

LABEL_51:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(0x14, *(v5 + 144), a2, a4);
  v10 = *(v5 + 172);
  if ((v10 & 0x80000) == 0)
  {
LABEL_27:
    if ((v10 & 0x100000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_53;
  }

LABEL_52:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(0x15, *(v5 + 148), a2, a4);
  v10 = *(v5 + 172);
  if ((v10 & 0x100000) == 0)
  {
LABEL_28:
    if ((v10 & 0x200000) == 0)
    {
      goto LABEL_29;
    }

LABEL_54:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(0x17, a2, *(v5 + 152), a3);
    if ((*(v5 + 172) & 0x400000) == 0)
    {
      return this;
    }

    goto LABEL_55;
  }

LABEL_53:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(0x16, *(v5 + 160), a2, a4);
  v10 = *(v5 + 172);
  if ((v10 & 0x200000) != 0)
  {
    goto LABEL_54;
  }

LABEL_29:
  if ((v10 & 0x400000) == 0)
  {
    return this;
  }

LABEL_55:
  v13 = *(v5 + 164);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(0x18, v13, a2, a4);
}

uint64_t CLP::LogEntry::PrivateData::SvInfo::ByteSize(CLP::LogEntry::PrivateData::SvInfo *this, unsigned int a2)
{
  v3 = *(this + 43);
  if (v3)
  {
    if (v3)
    {
      v6 = *(this + 1);
      if (!v6)
      {
        v6 = *(CLP::LogEntry::PrivateData::SvInfo::default_instance_ + 8);
      }

      v7 = CLP::LogEntry::PrivateData::SvId::ByteSize(v6, a2);
      v8 = v7;
      if (v7 >= 0x80)
      {
        v9 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v7);
      }

      else
      {
        v9 = 1;
      }

      v4 = v8 + v9 + 1;
      v3 = *(this + 43);
    }

    else
    {
      v4 = 0;
    }

    if ((v3 & 2) != 0)
    {
      v10 = v4 + 9;
    }

    else
    {
      v10 = v4;
    }

    if ((v3 & 4) != 0)
    {
      v11 = *(this + 14);
      if ((v11 & 0x80000000) != 0)
      {
        v12 = 11;
      }

      else if (v11 >= 0x80)
      {
        v12 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v11) + 1;
        v3 = *(this + 43);
      }

      else
      {
        v12 = 2;
      }

      v10 += v12;
    }

    v13 = v10 + 9;
    if ((v3 & 0x10) == 0)
    {
      v13 = v10;
    }

    if ((v3 & 0x20) != 0)
    {
      v13 += 9;
    }

    if ((v3 & 0x40) != 0)
    {
      v13 += 9;
    }

    if ((v3 & 0x80) != 0)
    {
      v5 = v13 + 5;
    }

    else
    {
      v5 = v13;
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
      v5 += 5;
    }

    if ((v3 & 0x200) != 0)
    {
      v14 = *(this + 21);
      if ((v14 & 0x80000000) != 0)
      {
        v15 = 11;
      }

      else if (v14 >= 0x80)
      {
        v15 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v14) + 1;
        v3 = *(this + 43);
      }

      else
      {
        v15 = 2;
      }

      v5 += v15;
      if ((v3 & 0x400) == 0)
      {
LABEL_35:
        if ((v3 & 0x800) == 0)
        {
          goto LABEL_36;
        }

        goto LABEL_52;
      }
    }

    else if ((v3 & 0x400) == 0)
    {
      goto LABEL_35;
    }

    v16 = *(this + 22);
    if ((v16 & 0x80000000) != 0)
    {
      v17 = 11;
    }

    else if (v16 >= 0x80)
    {
      v17 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v16) + 1;
      v3 = *(this + 43);
    }

    else
    {
      v17 = 2;
    }

    v5 += v17;
    if ((v3 & 0x800) == 0)
    {
LABEL_36:
      if ((v3 & 0x1000) == 0)
      {
        goto LABEL_37;
      }

      goto LABEL_58;
    }

LABEL_52:
    v18 = *(this + 23);
    if ((v18 & 0x80000000) != 0)
    {
      v19 = 11;
    }

    else if (v18 >= 0x80)
    {
      v19 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v18) + 1;
      v3 = *(this + 43);
    }

    else
    {
      v19 = 2;
    }

    v5 += v19;
    if ((v3 & 0x1000) == 0)
    {
LABEL_37:
      if ((v3 & 0x2000) == 0)
      {
        goto LABEL_38;
      }

      goto LABEL_64;
    }

LABEL_58:
    v20 = *(this + 24);
    if ((v20 & 0x80000000) != 0)
    {
      v21 = 11;
    }

    else if (v20 >= 0x80)
    {
      v21 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v20) + 1;
      v3 = *(this + 43);
    }

    else
    {
      v21 = 2;
    }

    v5 += v21;
    if ((v3 & 0x2000) == 0)
    {
LABEL_38:
      if ((v3 & 0x8000) == 0)
      {
        goto LABEL_76;
      }

LABEL_70:
      v24 = *(this + 16);
      if (!v24)
      {
        v24 = *(CLP::LogEntry::PrivateData::SvInfo::default_instance_ + 128);
      }

      v25 = CLP::LogEntry::PrivateData::PolynomialOrbit::ByteSize(v24);
      v26 = v25;
      if (v25 >= 0x80)
      {
        v27 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v25);
      }

      else
      {
        v27 = 1;
      }

      v5 += v26 + v27 + 2;
      v3 = *(this + 43);
      goto LABEL_76;
    }

LABEL_64:
    v22 = *(this + 25);
    if ((v22 & 0x80000000) != 0)
    {
      v23 = 11;
    }

    else if (v22 >= 0x80)
    {
      v23 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v22) + 1;
      v3 = *(this + 43);
    }

    else
    {
      v23 = 2;
    }

    v5 += v23;
    if ((v3 & 0x8000) == 0)
    {
      goto LABEL_76;
    }

    goto LABEL_70;
  }

LABEL_76:
  if ((v3 & 0xFF0000) == 0)
  {
    goto LABEL_122;
  }

  if ((v3 & 0x10000) != 0)
  {
    v28 = *(this + 34);
    if ((v28 & 0x80000000) != 0)
    {
      v29 = 12;
    }

    else if (v28 >= 0x80)
    {
      v29 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v28) + 2;
      v3 = *(this + 43);
    }

    else
    {
      v29 = 3;
    }

    v5 += v29;
    if ((v3 & 0x20000) == 0)
    {
LABEL_79:
      if ((v3 & 0x40000) == 0)
      {
        goto LABEL_80;
      }

      goto LABEL_95;
    }
  }

  else if ((v3 & 0x20000) == 0)
  {
    goto LABEL_79;
  }

  v30 = *(this + 35);
  if ((v30 & 0x80000000) != 0)
  {
    v31 = 12;
  }

  else if (v30 >= 0x80)
  {
    v31 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v30) + 2;
    v3 = *(this + 43);
  }

  else
  {
    v31 = 3;
  }

  v5 += v31;
  if ((v3 & 0x40000) == 0)
  {
LABEL_80:
    if ((v3 & 0x80000) == 0)
    {
      goto LABEL_81;
    }

LABEL_101:
    v34 = *(this + 37);
    if ((v34 & 0x80000000) != 0)
    {
      v35 = 12;
    }

    else if (v34 >= 0x80)
    {
      v35 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v34) + 2;
      v3 = *(this + 43);
    }

    else
    {
      v35 = 3;
    }

    v5 += v35;
    if ((v3 & 0x100000) == 0)
    {
      goto LABEL_113;
    }

    goto LABEL_107;
  }

LABEL_95:
  v32 = *(this + 36);
  if ((v32 & 0x80000000) != 0)
  {
    v33 = 12;
  }

  else if (v32 >= 0x80)
  {
    v33 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v32) + 2;
    v3 = *(this + 43);
  }

  else
  {
    v33 = 3;
  }

  v5 += v33;
  if ((v3 & 0x80000) != 0)
  {
    goto LABEL_101;
  }

LABEL_81:
  if ((v3 & 0x100000) != 0)
  {
LABEL_107:
    v36 = *(this + 40);
    if ((v36 & 0x80000000) != 0)
    {
      v37 = 12;
    }

    else if (v36 >= 0x80)
    {
      v37 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v36) + 2;
      v3 = *(this + 43);
    }

    else
    {
      v37 = 3;
    }

    v5 += v37;
  }

LABEL_113:
  if ((v3 & 0x200000) != 0)
  {
    v5 += 10;
  }

  if ((v3 & 0x400000) != 0)
  {
    v38 = *(this + 41);
    if ((v38 & 0x80000000) != 0)
    {
      v39 = 12;
    }

    else if (v38 >= 0x80)
    {
      v39 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v38) + 2;
    }

    else
    {
      v39 = 3;
    }

    v5 += v39;
  }

LABEL_122:
  v40 = *(this + 8);
  v41 = v40 + v5;
  if (v40 >= 1)
  {
    v42 = 0;
    do
    {
      v41 += CLP::LogEntry::PrivateData::SvPositionAtTime::ByteSize(*(*(this + 3) + 8 * v42++)) + 1;
    }

    while (v42 < *(this + 8));
  }

  v43 = *(this + 28);
  v44 = (v43 + v41);
  if (v43 >= 1)
  {
    v45 = 0;
    do
    {
      v46 = CLP::LogEntry::PrivateData::SvBandCorrections::ByteSize(*(*(this + 13) + 8 * v45), a2);
      v47 = v46;
      if (v46 >= 0x80)
      {
        v48 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v46);
      }

      else
      {
        v48 = 1;
      }

      v44 = (v47 + v44 + v48);
      ++v45;
    }

    while (v45 < *(this + 28));
  }

  *(this + 42) = v44;
  return v44;
}

void CLP::LogEntry::PrivateData::SvInfo::CheckTypeAndMergeFrom(CLP::LogEntry::PrivateData::SvInfo *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  CLP::LogEntry::PrivateData::SvInfo::MergeFrom(this, lpsrc);
}

void CLP::LogEntry::PrivateData::SvInfo::CopyFrom(CLP::LogEntry::PrivateData::SvInfo *this, const CLP::LogEntry::PrivateData::SvInfo *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    CLP::LogEntry::PrivateData::SvInfo::MergeFrom(this, a2);
  }
}

double CLP::LogEntry::PrivateData::SvInfo::Swap(CLP::LogEntry::PrivateData::SvInfo *this, CLP::LogEntry::PrivateData::SvInfo *a2)
{
  if (a2 != this)
  {
    v4 = *(this + 1);
    *(this + 1) = *(a2 + 1);
    *(a2 + 1) = v4;
    v5 = *(this + 2);
    *(this + 2) = *(a2 + 2);
    *(a2 + 2) = v5;
    LODWORD(v4) = *(this + 14);
    *(this + 14) = *(a2 + 14);
    *(a2 + 14) = v4;
    wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Swap();
    v6 = *(this + 6);
    *(this + 6) = *(a2 + 6);
    *(a2 + 6) = v6;
    v7 = *(this + 8);
    *(this + 8) = *(a2 + 8);
    *(a2 + 8) = v7;
    v8 = *(this + 9);
    *(this + 9) = *(a2 + 9);
    *(a2 + 9) = v8;
    LODWORD(v8) = *(this + 15);
    *(this + 15) = *(a2 + 15);
    *(a2 + 15) = v8;
    LODWORD(v8) = *(this + 20);
    *(this + 20) = *(a2 + 20);
    *(a2 + 20) = v8;
    v9 = *(this + 21);
    *(this + 21) = *(a2 + 21);
    *(a2 + 21) = v9;
    v10 = *(this + 22);
    *(this + 22) = *(a2 + 22);
    *(a2 + 22) = v10;
    v11 = *(this + 23);
    *(this + 23) = *(a2 + 23);
    *(a2 + 23) = v11;
    v12 = *(this + 24);
    *(this + 24) = *(a2 + 24);
    *(a2 + 24) = v12;
    v13 = *(this + 25);
    *(this + 25) = *(a2 + 25);
    *(a2 + 25) = v13;
    wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Swap();
    v14 = *(this + 16);
    *(this + 16) = *(a2 + 16);
    *(a2 + 16) = v14;
    LODWORD(v14) = *(this + 34);
    *(this + 34) = *(a2 + 34);
    *(a2 + 34) = v14;
    LODWORD(v14) = *(this + 35);
    *(this + 35) = *(a2 + 35);
    *(a2 + 35) = v14;
    LODWORD(v14) = *(this + 36);
    *(this + 36) = *(a2 + 36);
    *(a2 + 36) = v14;
    LODWORD(v14) = *(this + 37);
    *(this + 37) = *(a2 + 37);
    *(a2 + 37) = v14;
    LODWORD(v14) = *(this + 40);
    *(this + 40) = *(a2 + 40);
    *(a2 + 40) = v14;
    result = *(this + 19);
    *(this + 19) = *(a2 + 19);
    *(a2 + 19) = result;
    LODWORD(v14) = *(this + 41);
    *(this + 41) = *(a2 + 41);
    *(a2 + 41) = v14;
    LODWORD(v14) = *(this + 43);
    *(this + 43) = *(a2 + 43);
    *(a2 + 43) = v14;
    LODWORD(v14) = *(this + 42);
    *(this + 42) = *(a2 + 42);
    *(a2 + 42) = v14;
  }

  return result;
}