uint64_t awd::metrics::BluetoothLeAudioSessionStats::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 88);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(1, *(this + 8), a2, a4);
    v6 = v5[22];
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

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(2, v5[4], a2, a4);
  v6 = v5[22];
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
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(3, v5[5], a2, a4);
  v6 = v5[22];
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
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(4, v5[6], a2, a4);
  v6 = v5[22];
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
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(5, v5[7], a2, a4);
  v6 = v5[22];
  if ((v6 & 0x20) == 0)
  {
LABEL_7:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_26;
  }

LABEL_25:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(6, v5[8], a2, a4);
  v6 = v5[22];
  if ((v6 & 0x40) == 0)
  {
LABEL_8:
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_27;
  }

LABEL_26:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(7, v5[9], a2, a4);
  v6 = v5[22];
  if ((v6 & 0x80) == 0)
  {
LABEL_9:
    if ((v6 & 0x100) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_28;
  }

LABEL_27:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(8, v5[10], a2, a4);
  v6 = v5[22];
  if ((v6 & 0x100) == 0)
  {
LABEL_10:
    if ((v6 & 0x200) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_29;
  }

LABEL_28:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(9, v5[11], a2, a4);
  v6 = v5[22];
  if ((v6 & 0x200) == 0)
  {
LABEL_11:
    if ((v6 & 0x400) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_30;
  }

LABEL_29:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xA, v5[12], a2, a4);
  v6 = v5[22];
  if ((v6 & 0x400) == 0)
  {
LABEL_12:
    if ((v6 & 0x800) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_31;
  }

LABEL_30:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xB, v5[13], a2, a4);
  v6 = v5[22];
  if ((v6 & 0x800) == 0)
  {
LABEL_13:
    if ((v6 & 0x1000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_32;
  }

LABEL_31:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xC, v5[14], a2, a4);
  v6 = v5[22];
  if ((v6 & 0x1000) == 0)
  {
LABEL_14:
    if ((v6 & 0x2000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_33;
  }

LABEL_32:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xD, v5[15], a2, a4);
  v6 = v5[22];
  if ((v6 & 0x2000) == 0)
  {
LABEL_15:
    if ((v6 & 0x4000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_34;
  }

LABEL_33:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(0xE, v5[16], a2, a4);
  v6 = v5[22];
  if ((v6 & 0x4000) == 0)
  {
LABEL_16:
    if ((v6 & 0x8000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_35;
  }

LABEL_34:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xF, v5[17], a2, a4);
  v6 = v5[22];
  if ((v6 & 0x8000) == 0)
  {
LABEL_17:
    if ((v6 & 0x10000) == 0)
    {
      goto LABEL_18;
    }

LABEL_36:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x11, v5[19], a2, a4);
    if ((v5[22] & 0x20000) == 0)
    {
      return this;
    }

    goto LABEL_37;
  }

LABEL_35:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x10, v5[18], a2, a4);
  v6 = v5[22];
  if ((v6 & 0x10000) != 0)
  {
    goto LABEL_36;
  }

LABEL_18:
  if ((v6 & 0x20000) == 0)
  {
    return this;
  }

LABEL_37:
  v7 = v5[20];

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x12, v7, a2, a4);
}

uint64_t awd::metrics::BluetoothLeAudioSessionStats::ByteSize(awd::metrics::BluetoothLeAudioSessionStats *this, unint64_t a2)
{
  v3 = *(this + 22);
  if (!v3)
  {
    v4 = 0;
    goto LABEL_44;
  }

  if (v3)
  {
    v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 1)) + 1;
    v3 = *(this + 22);
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
    v3 = *(this + 22);
  }

  else
  {
    v6 = 2;
  }

  v4 = (v6 + v4);
LABEL_11:
  if ((v3 & 4) != 0)
  {
    v7 = *(this + 5);
    if (v7 >= 0x80)
    {
      v8 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v7) + 1;
      v3 = *(this + 22);
    }

    else
    {
      v8 = 2;
    }

    v4 = (v8 + v4);
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
    v3 = *(this + 22);
  }

  else
  {
    v10 = 2;
  }

  v4 = (v10 + v4);
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
    v3 = *(this + 22);
  }

  else
  {
    v12 = 2;
  }

  v4 = (v12 + v4);
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
    v3 = *(this + 22);
  }

  else
  {
    v14 = 2;
  }

  v4 = (v14 + v4);
  if ((v3 & 0x40) == 0)
  {
LABEL_16:
    if ((v3 & 0x80) == 0)
    {
      goto LABEL_44;
    }

    goto LABEL_38;
  }

LABEL_34:
  v15 = *(this + 9);
  if (v15 >= 0x80)
  {
    v16 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v15) + 1;
    v3 = *(this + 22);
  }

  else
  {
    v16 = 2;
  }

  v4 = (v16 + v4);
  if ((v3 & 0x80) != 0)
  {
LABEL_38:
    v17 = *(this + 10);
    if ((v17 & 0x80000000) != 0)
    {
      v18 = 11;
    }

    else if (v17 >= 0x80)
    {
      v18 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v17) + 1;
      v3 = *(this + 22);
    }

    else
    {
      v18 = 2;
    }

    v4 = (v18 + v4);
  }

LABEL_44:
  if ((v3 & 0xFF00) == 0)
  {
    goto LABEL_88;
  }

  if ((v3 & 0x100) != 0)
  {
    v19 = *(this + 11);
    if (v19 >= 0x80)
    {
      v20 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v19) + 1;
      v3 = *(this + 22);
    }

    else
    {
      v20 = 2;
    }

    v4 = (v20 + v4);
    if ((v3 & 0x200) == 0)
    {
LABEL_47:
      if ((v3 & 0x400) == 0)
      {
        goto LABEL_48;
      }

      goto LABEL_62;
    }
  }

  else if ((v3 & 0x200) == 0)
  {
    goto LABEL_47;
  }

  v21 = *(this + 12);
  if (v21 >= 0x80)
  {
    v22 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v21) + 1;
    v3 = *(this + 22);
  }

  else
  {
    v22 = 2;
  }

  v4 = (v22 + v4);
  if ((v3 & 0x400) == 0)
  {
LABEL_48:
    if ((v3 & 0x800) == 0)
    {
      goto LABEL_49;
    }

    goto LABEL_66;
  }

LABEL_62:
  v23 = *(this + 13);
  if (v23 >= 0x80)
  {
    v24 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v23) + 1;
    v3 = *(this + 22);
  }

  else
  {
    v24 = 2;
  }

  v4 = (v24 + v4);
  if ((v3 & 0x800) == 0)
  {
LABEL_49:
    if ((v3 & 0x1000) == 0)
    {
      goto LABEL_50;
    }

    goto LABEL_70;
  }

LABEL_66:
  v25 = *(this + 14);
  if (v25 >= 0x80)
  {
    v26 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v25) + 1;
    v3 = *(this + 22);
  }

  else
  {
    v26 = 2;
  }

  v4 = (v26 + v4);
  if ((v3 & 0x1000) == 0)
  {
LABEL_50:
    if ((v3 & 0x2000) == 0)
    {
      goto LABEL_51;
    }

    goto LABEL_74;
  }

LABEL_70:
  v27 = *(this + 15);
  if (v27 >= 0x80)
  {
    v28 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v27) + 1;
    v3 = *(this + 22);
  }

  else
  {
    v28 = 2;
  }

  v4 = (v28 + v4);
  if ((v3 & 0x2000) == 0)
  {
LABEL_51:
    if ((v3 & 0x4000) == 0)
    {
      goto LABEL_52;
    }

    goto LABEL_80;
  }

LABEL_74:
  v29 = *(this + 16);
  if ((v29 & 0x80000000) != 0)
  {
    v30 = 11;
  }

  else if (v29 >= 0x80)
  {
    v30 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v29) + 1;
    v3 = *(this + 22);
  }

  else
  {
    v30 = 2;
  }

  v4 = (v30 + v4);
  if ((v3 & 0x4000) == 0)
  {
LABEL_52:
    if ((v3 & 0x8000) == 0)
    {
      goto LABEL_88;
    }

    goto LABEL_84;
  }

LABEL_80:
  v31 = *(this + 17);
  if (v31 >= 0x80)
  {
    v32 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v31) + 1;
    v3 = *(this + 22);
  }

  else
  {
    v32 = 2;
  }

  v4 = (v32 + v4);
  if ((v3 & 0x8000) != 0)
  {
LABEL_84:
    v33 = *(this + 18);
    if (v33 >= 0x80)
    {
      v34 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v33) + 2;
      v3 = *(this + 22);
    }

    else
    {
      v34 = 3;
    }

    v4 = (v34 + v4);
  }

LABEL_88:
  if ((v3 & 0xFF0000) != 0)
  {
    if ((v3 & 0x10000) != 0)
    {
      v35 = *(this + 19);
      if (v35 >= 0x80)
      {
        v36 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v35) + 2;
        v3 = *(this + 22);
      }

      else
      {
        v36 = 3;
      }

      v4 = (v36 + v4);
    }

    if ((v3 & 0x20000) != 0)
    {
      v37 = *(this + 20);
      if (v37 >= 0x80)
      {
        v38 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v37) + 2;
      }

      else
      {
        v38 = 3;
      }

      v4 = (v38 + v4);
    }
  }

  *(this + 21) = v4;
  return v4;
}

void awd::metrics::BluetoothLeAudioSessionStats::CheckTypeAndMergeFrom(awd::metrics::BluetoothLeAudioSessionStats *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  {
    awd::metrics::BluetoothLeAudioSessionStats::CheckTypeAndMergeFrom();
  }

  awd::metrics::BluetoothLeAudioSessionStats::MergeFrom(this, lpsrc);
}

void awd::metrics::BluetoothLeAudioSessionStats::CopyFrom(awd::metrics::BluetoothLeAudioSessionStats *this, const awd::metrics::BluetoothLeAudioSessionStats *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    awd::metrics::BluetoothLeAudioSessionStats::MergeFrom(this, a2);
  }
}

uint64_t awd::metrics::BluetoothLeAudioSessionStats::Swap(uint64_t this, awd::metrics::BluetoothLeAudioSessionStats *a2)
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
    LODWORD(v2) = *(this + 28);
    *(this + 28) = *(a2 + 7);
    *(a2 + 7) = v2;
    LODWORD(v2) = *(this + 32);
    *(this + 32) = *(a2 + 8);
    *(a2 + 8) = v2;
    LODWORD(v2) = *(this + 36);
    *(this + 36) = *(a2 + 9);
    *(a2 + 9) = v2;
    LODWORD(v2) = *(this + 40);
    *(this + 40) = *(a2 + 10);
    *(a2 + 10) = v2;
    LODWORD(v2) = *(this + 44);
    *(this + 44) = *(a2 + 11);
    *(a2 + 11) = v2;
    LODWORD(v2) = *(this + 48);
    *(this + 48) = *(a2 + 12);
    *(a2 + 12) = v2;
    LODWORD(v2) = *(this + 52);
    *(this + 52) = *(a2 + 13);
    *(a2 + 13) = v2;
    LODWORD(v2) = *(this + 56);
    *(this + 56) = *(a2 + 14);
    *(a2 + 14) = v2;
    LODWORD(v2) = *(this + 60);
    *(this + 60) = *(a2 + 15);
    *(a2 + 15) = v2;
    LODWORD(v2) = *(this + 64);
    *(this + 64) = *(a2 + 16);
    *(a2 + 16) = v2;
    LODWORD(v2) = *(this + 68);
    *(this + 68) = *(a2 + 17);
    *(a2 + 17) = v2;
    LODWORD(v2) = *(this + 72);
    *(this + 72) = *(a2 + 18);
    *(a2 + 18) = v2;
    LODWORD(v2) = *(this + 76);
    *(this + 76) = *(a2 + 19);
    *(a2 + 19) = v2;
    LODWORD(v2) = *(this + 80);
    *(this + 80) = *(a2 + 20);
    *(a2 + 20) = v2;
    LODWORD(v2) = *(this + 88);
    *(this + 88) = *(a2 + 22);
    *(a2 + 22) = v2;
    LODWORD(v2) = *(this + 84);
    *(this + 84) = *(a2 + 21);
    *(a2 + 21) = v2;
  }

  return this;
}

double awd::metrics::BluetoothGameControllerSessionInfo::SharedCtor(awd::metrics::BluetoothGameControllerSessionInfo *this)
{
  *(this + 10) = 0;
  result = 0.0;
  *(this + 24) = 0u;
  *(this + 8) = 0u;
  return result;
}

awd::metrics::BluetoothGameControllerSessionInfo *awd::metrics::BluetoothGameControllerSessionInfo::BluetoothGameControllerSessionInfo(awd::metrics::BluetoothGameControllerSessionInfo *this, const awd::metrics::BluetoothGameControllerSessionInfo *a2)
{
  *this = &unk_2A1D4C318;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 10) = 0;
  awd::metrics::BluetoothGameControllerSessionInfo::MergeFrom(this, a2);
  return this;
}

void awd::metrics::BluetoothGameControllerSessionInfo::MergeFrom(awd::metrics::BluetoothGameControllerSessionInfo *this, const awd::metrics::BluetoothGameControllerSessionInfo *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v11);
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

    v7 = *(a2 + 4);
    *(this + 10) |= 2u;
    *(this + 4) = v7;
    v4 = *(a2 + 10);
    if ((v4 & 4) == 0)
    {
LABEL_7:
      if ((v4 & 8) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_15;
    }

LABEL_14:
    v8 = *(a2 + 5);
    *(this + 10) |= 4u;
    *(this + 5) = v8;
    v4 = *(a2 + 10);
    if ((v4 & 8) == 0)
    {
LABEL_8:
      if ((v4 & 0x10) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_16;
    }

LABEL_15:
    v9 = *(a2 + 6);
    *(this + 10) |= 8u;
    *(this + 6) = v9;
    v4 = *(a2 + 10);
    if ((v4 & 0x10) == 0)
    {
LABEL_9:
      if ((v4 & 0x20) == 0)
      {
        return;
      }

      goto LABEL_10;
    }

LABEL_16:
    v10 = *(a2 + 7);
    *(this + 10) |= 0x10u;
    *(this + 7) = v10;
    if ((*(a2 + 10) & 0x20) == 0)
    {
      return;
    }

LABEL_10:
    v5 = *(a2 + 8);
    *(this + 10) |= 0x20u;
    *(this + 8) = v5;
  }
}

void sub_2963AFDF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::metrics::BluetoothGameControllerSessionInfo::~BluetoothGameControllerSessionInfo(awd::metrics::BluetoothGameControllerSessionInfo *this)
{
  *this = &unk_2A1D4C318;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2A1D4C318;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2A1D4C318;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  JUMPOUT(0x29C259F00);
}

uint64_t awd::metrics::BluetoothGameControllerSessionInfo::default_instance(awd::metrics::BluetoothGameControllerSessionInfo *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = awd::metrics::BluetoothGameControllerSessionInfo::default_instance_;
  if (!awd::metrics::BluetoothGameControllerSessionInfo::default_instance_)
  {
    awd::metrics::protobuf_AddDesc_Bluetooth_2eproto(0, a2, a3, a4);
    return awd::metrics::BluetoothGameControllerSessionInfo::default_instance_;
  }

  return result;
}

uint64_t awd::metrics::BluetoothGameControllerSessionInfo::Clear(uint64_t this)
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

uint64_t awd::metrics::BluetoothGameControllerSessionInfo::MergePartialFromCodedStream(awd::metrics::BluetoothGameControllerSessionInfo *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
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
        if (TagFallback >> 3 > 3)
        {
          if (v7 == 4)
          {
            if ((TagFallback & 7) == 0)
            {
              v14 = *(a2 + 1);
              v8 = *(a2 + 2);
              goto LABEL_51;
            }
          }

          else if (v7 == 5)
          {
            if ((TagFallback & 7) == 0)
            {
              v16 = *(a2 + 1);
              v8 = *(a2 + 2);
              goto LABEL_59;
            }
          }

          else if (v7 == 6 && (TagFallback & 7) == 0)
          {
            v10 = *(a2 + 1);
            v8 = *(a2 + 2);
            goto LABEL_67;
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

        *(this + 10) |= 1u;
        if (v13 < v8 && *v13 == 16)
        {
          v15 = v13 + 1;
          *(a2 + 1) = v15;
          goto LABEL_35;
        }
      }

      if (v7 != 2)
      {
        break;
      }

      if ((TagFallback & 7) != 0)
      {
        goto LABEL_26;
      }

      v15 = *(a2 + 1);
      v8 = *(a2 + 2);
LABEL_35:
      if (v15 >= v8 || (v17 = *v15, v17 < 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 4);
        if (!result)
        {
          return result;
        }

        v18 = *(a2 + 1);
        v8 = *(a2 + 2);
      }

      else
      {
        *(this + 4) = v17;
        v18 = v15 + 1;
        *(a2 + 1) = v18;
      }

      *(this + 10) |= 2u;
      if (v18 < v8 && *v18 == 24)
      {
        v9 = v18 + 1;
        *(a2 + 1) = v9;
LABEL_43:
        v29 = 0;
        if (v9 >= v8 || (v19 = *v9, (v19 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v29);
          if (!result)
          {
            return result;
          }

          v19 = v29;
          v20 = *(a2 + 1);
          v8 = *(a2 + 2);
        }

        else
        {
          v20 = v9 + 1;
          *(a2 + 1) = v20;
        }

        *(this + 5) = v19;
        *(this + 10) |= 4u;
        if (v20 < v8 && *v20 == 32)
        {
          v14 = v20 + 1;
          *(a2 + 1) = v14;
LABEL_51:
          v28 = 0;
          if (v14 >= v8 || (v21 = *v14, (v21 & 0x80000000) != 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v28);
            if (!result)
            {
              return result;
            }

            v21 = v28;
            v22 = *(a2 + 1);
            v8 = *(a2 + 2);
          }

          else
          {
            v22 = v14 + 1;
            *(a2 + 1) = v22;
          }

          *(this + 6) = v21;
          *(this + 10) |= 8u;
          if (v22 < v8 && *v22 == 40)
          {
            v16 = v22 + 1;
            *(a2 + 1) = v16;
LABEL_59:
            if (v16 >= v8 || (v23 = *v16, v23 < 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 7);
              if (!result)
              {
                return result;
              }

              v24 = *(a2 + 1);
              v8 = *(a2 + 2);
            }

            else
            {
              *(this + 7) = v23;
              v24 = v16 + 1;
              *(a2 + 1) = v24;
            }

            *(this + 10) |= 0x10u;
            if (v24 < v8 && *v24 == 48)
            {
              v10 = v24 + 1;
              *(a2 + 1) = v10;
LABEL_67:
              if (v10 >= v8 || (v25 = *v10, v25 < 0))
              {
                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 8);
                if (!result)
                {
                  return result;
                }

                v26 = *(a2 + 1);
                v8 = *(a2 + 2);
              }

              else
              {
                *(this + 8) = v25;
                v26 = v10 + 1;
                *(a2 + 1) = v26;
              }

              *(this + 10) |= 0x20u;
              if (v26 == v8 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
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
      v9 = *(a2 + 1);
      v8 = *(a2 + 2);
      goto LABEL_43;
    }

LABEL_26:
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

uint64_t awd::metrics::BluetoothGameControllerSessionInfo::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 40);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(1, *(this + 8), a2, a4);
    v6 = v5[10];
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

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(2, v5[4], a2, a4);
  v6 = v5[10];
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
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(3, v5[5], a2, a4);
  v6 = v5[10];
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_6;
    }

LABEL_12:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(5, v5[7], a2, a4);
    if ((v5[10] & 0x20) == 0)
    {
      return this;
    }

    goto LABEL_13;
  }

LABEL_11:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(4, v5[6], a2, a4);
  v6 = v5[10];
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
  v7 = v5[8];

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(6, v7, a2, a4);
}

uint64_t awd::metrics::BluetoothGameControllerSessionInfo::ByteSize(awd::metrics::BluetoothGameControllerSessionInfo *this, unint64_t a2)
{
  LOBYTE(v3) = *(this + 40);
  if (!v3)
  {
    v4 = 0;
    goto LABEL_36;
  }

  if (*(this + 40))
  {
    v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 1)) + 1;
    v3 = *(this + 10);
    if ((v3 & 2) == 0)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v4 = 0;
    if ((*(this + 40) & 2) == 0)
    {
      goto LABEL_11;
    }
  }

  v5 = *(this + 4);
  if (v5 >= 0x80)
  {
    v6 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5) + 1;
    v3 = *(this + 10);
  }

  else
  {
    v6 = 2;
  }

  v4 = (v6 + v4);
LABEL_11:
  if ((v3 & 4) != 0)
  {
    v7 = *(this + 5);
    if ((v7 & 0x80000000) != 0)
    {
      v8 = 11;
    }

    else if (v7 >= 0x80)
    {
      v8 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v7) + 1;
      v3 = *(this + 10);
    }

    else
    {
      v8 = 2;
    }

    v4 = (v8 + v4);
    if ((v3 & 8) == 0)
    {
LABEL_13:
      if ((v3 & 0x10) == 0)
      {
        goto LABEL_14;
      }

      goto LABEL_28;
    }
  }

  else if ((v3 & 8) == 0)
  {
    goto LABEL_13;
  }

  v9 = *(this + 6);
  if ((v9 & 0x80000000) != 0)
  {
    v10 = 11;
  }

  else if (v9 >= 0x80)
  {
    v10 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v9) + 1;
    v3 = *(this + 10);
  }

  else
  {
    v10 = 2;
  }

  v4 = (v10 + v4);
  if ((v3 & 0x10) == 0)
  {
LABEL_14:
    if ((v3 & 0x20) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_32;
  }

LABEL_28:
  v11 = *(this + 7);
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
  if ((v3 & 0x20) != 0)
  {
LABEL_32:
    v13 = *(this + 8);
    if (v13 >= 0x80)
    {
      v14 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v13) + 1;
    }

    else
    {
      v14 = 2;
    }

    v4 = (v14 + v4);
  }

LABEL_36:
  *(this + 9) = v4;
  return v4;
}

void awd::metrics::BluetoothGameControllerSessionInfo::CheckTypeAndMergeFrom(awd::metrics::BluetoothGameControllerSessionInfo *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  {
    awd::metrics::BluetoothGameControllerSessionInfo::CheckTypeAndMergeFrom();
  }

  awd::metrics::BluetoothGameControllerSessionInfo::MergeFrom(this, lpsrc);
}

void awd::metrics::BluetoothGameControllerSessionInfo::CopyFrom(awd::metrics::BluetoothGameControllerSessionInfo *this, const awd::metrics::BluetoothGameControllerSessionInfo *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    awd::metrics::BluetoothGameControllerSessionInfo::MergeFrom(this, a2);
  }
}

uint64_t awd::metrics::BluetoothGameControllerSessionInfo::Swap(uint64_t this, awd::metrics::BluetoothGameControllerSessionInfo *a2)
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
    LODWORD(v2) = *(this + 28);
    *(this + 28) = *(a2 + 7);
    *(a2 + 7) = v2;
    LODWORD(v2) = *(this + 32);
    *(this + 32) = *(a2 + 8);
    *(a2 + 8) = v2;
    LODWORD(v2) = *(this + 40);
    *(this + 40) = *(a2 + 10);
    *(a2 + 10) = v2;
    LODWORD(v2) = *(this + 36);
    *(this + 36) = *(a2 + 9);
    *(a2 + 9) = v2;
  }

  return this;
}

double awd::metrics::BluetoothWirelessSplitterSessionInfo::SharedCtor(awd::metrics::BluetoothWirelessSplitterSessionInfo *this)
{
  result = 0.0;
  *(this + 52) = 0u;
  *(this + 40) = 0u;
  *(this + 24) = 0u;
  *(this + 8) = 0u;
  return result;
}

awd::metrics::BluetoothWirelessSplitterSessionInfo *awd::metrics::BluetoothWirelessSplitterSessionInfo::BluetoothWirelessSplitterSessionInfo(awd::metrics::BluetoothWirelessSplitterSessionInfo *this, const awd::metrics::BluetoothWirelessSplitterSessionInfo *a2)
{
  *this = &unk_2A1D4C390;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 52) = 0u;
  awd::metrics::BluetoothWirelessSplitterSessionInfo::MergeFrom(this, a2);
  return this;
}

void awd::metrics::BluetoothWirelessSplitterSessionInfo::MergeFrom(awd::metrics::BluetoothWirelessSplitterSessionInfo *this, const awd::metrics::BluetoothWirelessSplitterSessionInfo *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v17);
  }

  v4 = *(a2 + 16);
  if (!v4)
  {
    goto LABEL_13;
  }

  if (v4)
  {
    v7 = *(a2 + 1);
    *(this + 16) |= 1u;
    *(this + 1) = v7;
    v4 = *(a2 + 16);
    if ((v4 & 2) == 0)
    {
LABEL_6:
      if ((v4 & 4) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_22;
    }
  }

  else if ((v4 & 2) == 0)
  {
    goto LABEL_6;
  }

  v8 = *(a2 + 4);
  *(this + 16) |= 2u;
  *(this + 4) = v8;
  v4 = *(a2 + 16);
  if ((v4 & 4) == 0)
  {
LABEL_7:
    if ((v4 & 8) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_23;
  }

LABEL_22:
  v9 = *(a2 + 5);
  *(this + 16) |= 4u;
  *(this + 5) = v9;
  v4 = *(a2 + 16);
  if ((v4 & 8) == 0)
  {
LABEL_8:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_24;
  }

LABEL_23:
  v10 = *(a2 + 6);
  *(this + 16) |= 8u;
  *(this + 6) = v10;
  v4 = *(a2 + 16);
  if ((v4 & 0x10) == 0)
  {
LABEL_9:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_10;
    }

LABEL_25:
    v12 = *(a2 + 8);
    *(this + 16) |= 0x20u;
    *(this + 8) = v12;
    v4 = *(a2 + 16);
    if ((v4 & 0x40) == 0)
    {
LABEL_11:
      if ((v4 & 0x80) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_12;
    }

    goto LABEL_26;
  }

LABEL_24:
  v11 = *(a2 + 7);
  *(this + 16) |= 0x10u;
  *(this + 7) = v11;
  v4 = *(a2 + 16);
  if ((v4 & 0x20) != 0)
  {
    goto LABEL_25;
  }

LABEL_10:
  if ((v4 & 0x40) == 0)
  {
    goto LABEL_11;
  }

LABEL_26:
  v13 = *(a2 + 9);
  *(this + 16) |= 0x40u;
  *(this + 9) = v13;
  v4 = *(a2 + 16);
  if ((v4 & 0x80) != 0)
  {
LABEL_12:
    v5 = *(a2 + 10);
    *(this + 16) |= 0x80u;
    *(this + 10) = v5;
    v4 = *(a2 + 16);
  }

LABEL_13:
  if ((v4 & 0xFF00) == 0)
  {
    return;
  }

  if ((v4 & 0x100) != 0)
  {
    v14 = *(a2 + 11);
    *(this + 16) |= 0x100u;
    *(this + 11) = v14;
    v4 = *(a2 + 16);
    if ((v4 & 0x200) == 0)
    {
LABEL_16:
      if ((v4 & 0x400) == 0)
      {
        goto LABEL_17;
      }

      goto LABEL_30;
    }
  }

  else if ((v4 & 0x200) == 0)
  {
    goto LABEL_16;
  }

  v15 = *(a2 + 12);
  *(this + 16) |= 0x200u;
  *(this + 12) = v15;
  v4 = *(a2 + 16);
  if ((v4 & 0x400) == 0)
  {
LABEL_17:
    if ((v4 & 0x800) == 0)
    {
      return;
    }

    goto LABEL_18;
  }

LABEL_30:
  v16 = *(a2 + 13);
  *(this + 16) |= 0x400u;
  *(this + 13) = v16;
  if ((*(a2 + 16) & 0x800) == 0)
  {
    return;
  }

LABEL_18:
  v6 = *(a2 + 14);
  *(this + 16) |= 0x800u;
  *(this + 14) = v6;
}

void sub_2963B0924(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::metrics::BluetoothWirelessSplitterSessionInfo::~BluetoothWirelessSplitterSessionInfo(awd::metrics::BluetoothWirelessSplitterSessionInfo *this)
{
  *this = &unk_2A1D4C390;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2A1D4C390;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2A1D4C390;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  JUMPOUT(0x29C259F00);
}

uint64_t awd::metrics::BluetoothWirelessSplitterSessionInfo::default_instance(awd::metrics::BluetoothWirelessSplitterSessionInfo *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = awd::metrics::BluetoothWirelessSplitterSessionInfo::default_instance_;
  if (!awd::metrics::BluetoothWirelessSplitterSessionInfo::default_instance_)
  {
    awd::metrics::protobuf_AddDesc_Bluetooth_2eproto(0, a2, a3, a4);
    return awd::metrics::BluetoothWirelessSplitterSessionInfo::default_instance_;
  }

  return result;
}

uint64_t awd::metrics::BluetoothWirelessSplitterSessionInfo::Clear(uint64_t this)
{
  v1 = *(this + 64);
  if (v1)
  {
    *(this + 40) = 0;
    *(this + 24) = 0u;
    *(this + 8) = 0u;
  }

  if ((v1 & 0xFF00) != 0)
  {
    *(this + 52) = 0;
    *(this + 44) = 0;
  }

  *(this + 64) = 0;
  return this;
}

uint64_t awd::metrics::BluetoothWirelessSplitterSessionInfo::MergePartialFromCodedStream(awd::metrics::BluetoothWirelessSplitterSessionInfo *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
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
        if (TagFallback >> 3 > 6)
        {
          if (TagFallback >> 3 > 9)
          {
            if (v7 == 10)
            {
              if ((TagFallback & 7) == 0)
              {
                v18 = *(a2 + 1);
                v8 = *(a2 + 2);
                goto LABEL_119;
              }
            }

            else if (v7 == 11)
            {
              if ((TagFallback & 7) == 0)
              {
                v22 = *(a2 + 1);
                v8 = *(a2 + 2);
                goto LABEL_127;
              }
            }

            else if (v7 == 12 && (TagFallback & 7) == 0)
            {
              v12 = *(a2 + 1);
              v8 = *(a2 + 2);
              goto LABEL_135;
            }
          }

          else if (v7 == 7)
          {
            if ((TagFallback & 7) == 0)
            {
              v16 = *(a2 + 1);
              v8 = *(a2 + 2);
              goto LABEL_95;
            }
          }

          else if (v7 == 8)
          {
            if ((TagFallback & 7) == 0)
            {
              v20 = *(a2 + 1);
              v8 = *(a2 + 2);
              goto LABEL_103;
            }
          }

          else if (v7 == 9 && (TagFallback & 7) == 0)
          {
            v10 = *(a2 + 1);
            v8 = *(a2 + 2);
            goto LABEL_111;
          }

          goto LABEL_46;
        }

        if (TagFallback >> 3 > 3)
        {
          if (v7 == 4)
          {
            if ((TagFallback & 7) == 0)
            {
              v17 = *(a2 + 1);
              v8 = *(a2 + 2);
              goto LABEL_71;
            }
          }

          else if (v7 == 5)
          {
            if ((TagFallback & 7) == 0)
            {
              v21 = *(a2 + 1);
              v8 = *(a2 + 2);
              goto LABEL_79;
            }
          }

          else if (v7 == 6 && (TagFallback & 7) == 0)
          {
            v11 = *(a2 + 1);
            v8 = *(a2 + 2);
            goto LABEL_87;
          }

          goto LABEL_46;
        }

        if (v7 != 1)
        {
          break;
        }

        if ((TagFallback & 7) != 0)
        {
          goto LABEL_46;
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

        *(this + 16) |= 1u;
        if (v15 < v8 && *v15 == 16)
        {
          v19 = v15 + 1;
          *(a2 + 1) = v19;
          goto LABEL_55;
        }
      }

      if (v7 != 2)
      {
        break;
      }

      if ((TagFallback & 7) != 0)
      {
        goto LABEL_46;
      }

      v19 = *(a2 + 1);
      v8 = *(a2 + 2);
LABEL_55:
      if (v19 >= v8 || (v23 = *v19, v23 < 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 4);
        if (!result)
        {
          return result;
        }

        v24 = *(a2 + 1);
        v8 = *(a2 + 2);
      }

      else
      {
        *(this + 4) = v23;
        v24 = v19 + 1;
        *(a2 + 1) = v24;
      }

      *(this + 16) |= 2u;
      if (v24 < v8 && *v24 == 24)
      {
        v9 = v24 + 1;
        *(a2 + 1) = v9;
LABEL_63:
        if (v9 >= v8 || (v25 = *v9, v25 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 5);
          if (!result)
          {
            return result;
          }

          v26 = *(a2 + 1);
          v8 = *(a2 + 2);
        }

        else
        {
          *(this + 5) = v25;
          v26 = v9 + 1;
          *(a2 + 1) = v26;
        }

        *(this + 16) |= 4u;
        if (v26 < v8 && *v26 == 32)
        {
          v17 = v26 + 1;
          *(a2 + 1) = v17;
LABEL_71:
          if (v17 >= v8 || (v27 = *v17, v27 < 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 6);
            if (!result)
            {
              return result;
            }

            v28 = *(a2 + 1);
            v8 = *(a2 + 2);
          }

          else
          {
            *(this + 6) = v27;
            v28 = v17 + 1;
            *(a2 + 1) = v28;
          }

          *(this + 16) |= 8u;
          if (v28 < v8 && *v28 == 40)
          {
            v21 = v28 + 1;
            *(a2 + 1) = v21;
LABEL_79:
            if (v21 >= v8 || (v29 = *v21, v29 < 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 7);
              if (!result)
              {
                return result;
              }

              v30 = *(a2 + 1);
              v8 = *(a2 + 2);
            }

            else
            {
              *(this + 7) = v29;
              v30 = v21 + 1;
              *(a2 + 1) = v30;
            }

            *(this + 16) |= 0x10u;
            if (v30 < v8 && *v30 == 48)
            {
              v11 = v30 + 1;
              *(a2 + 1) = v11;
LABEL_87:
              if (v11 >= v8 || (v31 = *v11, v31 < 0))
              {
                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 8);
                if (!result)
                {
                  return result;
                }

                v32 = *(a2 + 1);
                v8 = *(a2 + 2);
              }

              else
              {
                *(this + 8) = v31;
                v32 = v11 + 1;
                *(a2 + 1) = v32;
              }

              *(this + 16) |= 0x20u;
              if (v32 < v8 && *v32 == 56)
              {
                v16 = v32 + 1;
                *(a2 + 1) = v16;
LABEL_95:
                if (v16 >= v8 || (v33 = *v16, v33 < 0))
                {
                  result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 9);
                  if (!result)
                  {
                    return result;
                  }

                  v34 = *(a2 + 1);
                  v8 = *(a2 + 2);
                }

                else
                {
                  *(this + 9) = v33;
                  v34 = v16 + 1;
                  *(a2 + 1) = v34;
                }

                *(this + 16) |= 0x40u;
                if (v34 < v8 && *v34 == 64)
                {
                  v20 = v34 + 1;
                  *(a2 + 1) = v20;
LABEL_103:
                  if (v20 >= v8 || (v35 = *v20, v35 < 0))
                  {
                    result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 10);
                    if (!result)
                    {
                      return result;
                    }

                    v36 = *(a2 + 1);
                    v8 = *(a2 + 2);
                  }

                  else
                  {
                    *(this + 10) = v35;
                    v36 = v20 + 1;
                    *(a2 + 1) = v36;
                  }

                  *(this + 16) |= 0x80u;
                  if (v36 < v8 && *v36 == 72)
                  {
                    v10 = v36 + 1;
                    *(a2 + 1) = v10;
LABEL_111:
                    if (v10 >= v8 || (v37 = *v10, v37 < 0))
                    {
                      result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 11);
                      if (!result)
                      {
                        return result;
                      }

                      v38 = *(a2 + 1);
                      v8 = *(a2 + 2);
                    }

                    else
                    {
                      *(this + 11) = v37;
                      v38 = v10 + 1;
                      *(a2 + 1) = v38;
                    }

                    *(this + 16) |= 0x100u;
                    if (v38 < v8 && *v38 == 80)
                    {
                      v18 = v38 + 1;
                      *(a2 + 1) = v18;
LABEL_119:
                      if (v18 >= v8 || (v39 = *v18, v39 < 0))
                      {
                        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 12);
                        if (!result)
                        {
                          return result;
                        }

                        v40 = *(a2 + 1);
                        v8 = *(a2 + 2);
                      }

                      else
                      {
                        *(this + 12) = v39;
                        v40 = v18 + 1;
                        *(a2 + 1) = v40;
                      }

                      *(this + 16) |= 0x200u;
                      if (v40 < v8 && *v40 == 88)
                      {
                        v22 = v40 + 1;
                        *(a2 + 1) = v22;
LABEL_127:
                        if (v22 >= v8 || (v41 = *v22, v41 < 0))
                        {
                          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 13);
                          if (!result)
                          {
                            return result;
                          }

                          v42 = *(a2 + 1);
                          v8 = *(a2 + 2);
                        }

                        else
                        {
                          *(this + 13) = v41;
                          v42 = v22 + 1;
                          *(a2 + 1) = v42;
                        }

                        *(this + 16) |= 0x400u;
                        if (v42 < v8 && *v42 == 96)
                        {
                          v12 = v42 + 1;
                          *(a2 + 1) = v12;
LABEL_135:
                          if (v12 >= v8 || (v43 = *v12, v43 < 0))
                          {
                            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 14);
                            if (!result)
                            {
                              return result;
                            }

                            v44 = *(a2 + 1);
                            v8 = *(a2 + 2);
                          }

                          else
                          {
                            *(this + 14) = v43;
                            v44 = v12 + 1;
                            *(a2 + 1) = v44;
                          }

                          *(this + 16) |= 0x800u;
                          if (v44 == v8 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
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

    if (v7 == 3 && (TagFallback & 7) == 0)
    {
      v9 = *(a2 + 1);
      v8 = *(a2 + 2);
      goto LABEL_63;
    }

LABEL_46:
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

uint64_t awd::metrics::BluetoothWirelessSplitterSessionInfo::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 64);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(1, *(this + 8), a2, a4);
    v6 = v5[16];
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

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(2, v5[4], a2, a4);
  v6 = v5[16];
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
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(3, v5[5], a2, a4);
  v6 = v5[16];
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
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(4, v5[6], a2, a4);
  v6 = v5[16];
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
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(5, v5[7], a2, a4);
  v6 = v5[16];
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
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(6, v5[8], a2, a4);
  v6 = v5[16];
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
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(7, v5[9], a2, a4);
  v6 = v5[16];
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
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(8, v5[10], a2, a4);
  v6 = v5[16];
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
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(9, v5[11], a2, a4);
  v6 = v5[16];
  if ((v6 & 0x200) == 0)
  {
LABEL_11:
    if ((v6 & 0x400) == 0)
    {
      goto LABEL_12;
    }

LABEL_24:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xB, v5[13], a2, a4);
    if ((v5[16] & 0x800) == 0)
    {
      return this;
    }

    goto LABEL_25;
  }

LABEL_23:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xA, v5[12], a2, a4);
  v6 = v5[16];
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
  v7 = v5[14];

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xC, v7, a2, a4);
}

uint64_t awd::metrics::BluetoothWirelessSplitterSessionInfo::ByteSize(awd::metrics::BluetoothWirelessSplitterSessionInfo *this, unint64_t a2)
{
  v3 = *(this + 16);
  if (!v3)
  {
    v4 = 0;
    goto LABEL_42;
  }

  if (v3)
  {
    v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 1)) + 1;
    v3 = *(this + 16);
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
    v3 = *(this + 16);
  }

  else
  {
    v6 = 2;
  }

  v4 = (v6 + v4);
LABEL_11:
  if ((v3 & 4) != 0)
  {
    v7 = *(this + 5);
    if (v7 >= 0x80)
    {
      v8 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v7) + 1;
      v3 = *(this + 16);
    }

    else
    {
      v8 = 2;
    }

    v4 = (v8 + v4);
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
    v3 = *(this + 16);
  }

  else
  {
    v10 = 2;
  }

  v4 = (v10 + v4);
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
    v3 = *(this + 16);
  }

  else
  {
    v12 = 2;
  }

  v4 = (v12 + v4);
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
    v3 = *(this + 16);
  }

  else
  {
    v14 = 2;
  }

  v4 = (v14 + v4);
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
    v3 = *(this + 16);
  }

  else
  {
    v16 = 2;
  }

  v4 = (v16 + v4);
  if ((v3 & 0x80) != 0)
  {
LABEL_38:
    v17 = *(this + 10);
    if (v17 >= 0x80)
    {
      v18 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v17) + 1;
      v3 = *(this + 16);
    }

    else
    {
      v18 = 2;
    }

    v4 = (v18 + v4);
  }

LABEL_42:
  if ((v3 & 0xFF00) == 0)
  {
    goto LABEL_64;
  }

  if ((v3 & 0x100) != 0)
  {
    v19 = *(this + 11);
    if (v19 >= 0x80)
    {
      v20 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v19) + 1;
      v3 = *(this + 16);
    }

    else
    {
      v20 = 2;
    }

    v4 = (v20 + v4);
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

  v21 = *(this + 12);
  if (v21 >= 0x80)
  {
    v22 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v21) + 1;
    v3 = *(this + 16);
  }

  else
  {
    v22 = 2;
  }

  v4 = (v22 + v4);
  if ((v3 & 0x400) == 0)
  {
LABEL_46:
    if ((v3 & 0x800) == 0)
    {
      goto LABEL_64;
    }

    goto LABEL_60;
  }

LABEL_56:
  v23 = *(this + 13);
  if (v23 >= 0x80)
  {
    v24 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v23) + 1;
    v3 = *(this + 16);
  }

  else
  {
    v24 = 2;
  }

  v4 = (v24 + v4);
  if ((v3 & 0x800) != 0)
  {
LABEL_60:
    v25 = *(this + 14);
    if (v25 >= 0x80)
    {
      v26 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v25) + 1;
    }

    else
    {
      v26 = 2;
    }

    v4 = (v26 + v4);
  }

LABEL_64:
  *(this + 15) = v4;
  return v4;
}

void awd::metrics::BluetoothWirelessSplitterSessionInfo::CheckTypeAndMergeFrom(awd::metrics::BluetoothWirelessSplitterSessionInfo *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  {
    awd::metrics::BluetoothWirelessSplitterSessionInfo::CheckTypeAndMergeFrom();
  }

  awd::metrics::BluetoothWirelessSplitterSessionInfo::MergeFrom(this, lpsrc);
}

void awd::metrics::BluetoothWirelessSplitterSessionInfo::CopyFrom(awd::metrics::BluetoothWirelessSplitterSessionInfo *this, const awd::metrics::BluetoothWirelessSplitterSessionInfo *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    awd::metrics::BluetoothWirelessSplitterSessionInfo::MergeFrom(this, a2);
  }
}

uint64_t awd::metrics::BluetoothWirelessSplitterSessionInfo::Swap(uint64_t this, awd::metrics::BluetoothWirelessSplitterSessionInfo *a2)
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
    LODWORD(v2) = *(this + 28);
    *(this + 28) = *(a2 + 7);
    *(a2 + 7) = v2;
    LODWORD(v2) = *(this + 32);
    *(this + 32) = *(a2 + 8);
    *(a2 + 8) = v2;
    LODWORD(v2) = *(this + 36);
    *(this + 36) = *(a2 + 9);
    *(a2 + 9) = v2;
    LODWORD(v2) = *(this + 40);
    *(this + 40) = *(a2 + 10);
    *(a2 + 10) = v2;
    LODWORD(v2) = *(this + 44);
    *(this + 44) = *(a2 + 11);
    *(a2 + 11) = v2;
    LODWORD(v2) = *(this + 48);
    *(this + 48) = *(a2 + 12);
    *(a2 + 12) = v2;
    LODWORD(v2) = *(this + 52);
    *(this + 52) = *(a2 + 13);
    *(a2 + 13) = v2;
    LODWORD(v2) = *(this + 56);
    *(this + 56) = *(a2 + 14);
    *(a2 + 14) = v2;
    LODWORD(v2) = *(this + 64);
    *(this + 64) = *(a2 + 16);
    *(a2 + 16) = v2;
    LODWORD(v2) = *(this + 60);
    *(this + 60) = *(a2 + 15);
    *(a2 + 15) = v2;
  }

  return this;
}

double awd::metrics::BluetoothUserPermission::SharedCtor(awd::metrics::BluetoothUserPermission *this)
{
  result = 0.0;
  *(this + 24) = 0u;
  *(this + 8) = 0u;
  v2 = MEMORY[0x29EDC9758];
  *(this + 5) = 0;
  *(this + 6) = v2;
  *(this + 7) = 0;
  return result;
}

awd::metrics::BluetoothUserPermission *awd::metrics::BluetoothUserPermission::BluetoothUserPermission(awd::metrics::BluetoothUserPermission *this, const awd::metrics::BluetoothUserPermission *a2)
{
  *this = &unk_2A1D4C408;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  v3 = MEMORY[0x29EDC9758];
  *(this + 5) = 0;
  *(this + 6) = v3;
  *(this + 7) = 0;
  awd::metrics::BluetoothUserPermission::MergeFrom(this, a2);
  return this;
}

void awd::metrics::BluetoothUserPermission::MergeFrom(awd::metrics::BluetoothUserPermission *this, const awd::metrics::BluetoothUserPermission *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v16);
  }

  v4 = *(a2 + 15);
  if (!v4)
  {
    goto LABEL_13;
  }

  if (v4)
  {
    v9 = *(a2 + 1);
    *(this + 15) |= 1u;
    *(this + 1) = v9;
    v4 = *(a2 + 15);
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

  v10 = *(a2 + 4);
  *(this + 15) |= 2u;
  *(this + 4) = v10;
  v4 = *(a2 + 15);
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
  v11 = *(a2 + 5);
  *(this + 15) |= 4u;
  *(this + 5) = v11;
  v4 = *(a2 + 15);
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
  v12 = *(a2 + 6);
  *(this + 15) |= 8u;
  *(this + 6) = v12;
  v4 = *(a2 + 15);
  if ((v4 & 0x10) == 0)
  {
LABEL_9:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_10;
    }

LABEL_26:
    v14 = *(a2 + 8);
    *(this + 15) |= 0x20u;
    *(this + 8) = v14;
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

    goto LABEL_27;
  }

LABEL_25:
  v13 = *(a2 + 7);
  *(this + 15) |= 0x10u;
  *(this + 7) = v13;
  v4 = *(a2 + 15);
  if ((v4 & 0x20) != 0)
  {
    goto LABEL_26;
  }

LABEL_10:
  if ((v4 & 0x40) == 0)
  {
    goto LABEL_11;
  }

LABEL_27:
  v15 = *(a2 + 9);
  *(this + 15) |= 0x40u;
  *(this + 9) = v15;
  v4 = *(a2 + 15);
  if ((v4 & 0x80) != 0)
  {
LABEL_12:
    v5 = *(a2 + 10);
    *(this + 15) |= 0x80u;
    *(this + 10) = v5;
    v4 = *(a2 + 15);
  }

LABEL_13:
  if ((v4 & 0xFF00) != 0)
  {
    if ((v4 & 0x100) != 0)
    {
      v6 = *(a2 + 11);
      *(this + 15) |= 0x100u;
      *(this + 11) = v6;
      v4 = *(a2 + 15);
    }

    if ((v4 & 0x200) != 0)
    {
      v7 = *(a2 + 6);
      *(this + 15) |= 0x200u;
      v8 = *(this + 6);
      if (v8 == MEMORY[0x29EDC9758])
      {
        operator new();
      }

      std::string::operator=(v8, v7);
    }
  }
}

void sub_2963B1918(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::metrics::BluetoothUserPermission::~BluetoothUserPermission(awd::metrics::BluetoothUserPermission *this)
{
  *this = &unk_2A1D4C408;
  awd::metrics::BluetoothUserPermission::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2A1D4C408;
  awd::metrics::BluetoothUserPermission::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2A1D4C408;
  awd::metrics::BluetoothUserPermission::SharedDtor(this);
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  JUMPOUT(0x29C259F00);
}

uint64_t awd::metrics::BluetoothUserPermission::SharedDtor(uint64_t this)
{
  v1 = *(this + 48);
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

uint64_t awd::metrics::BluetoothUserPermission::default_instance(awd::metrics::BluetoothUserPermission *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = awd::metrics::BluetoothUserPermission::default_instance_;
  if (!awd::metrics::BluetoothUserPermission::default_instance_)
  {
    awd::metrics::protobuf_AddDesc_Bluetooth_2eproto(0, a2, a3, a4);
    return awd::metrics::BluetoothUserPermission::default_instance_;
  }

  return result;
}

uint64_t awd::metrics::BluetoothUserPermission::Clear(uint64_t this)
{
  v1 = *(this + 60);
  if (v1)
  {
    *(this + 40) = 0;
    *(this + 24) = 0u;
    *(this + 8) = 0u;
  }

  if ((v1 & 0xFF00) != 0)
  {
    *(this + 44) = 0;
    if ((v1 & 0x200) != 0)
    {
      v2 = *(this + 48);
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

  *(this + 60) = 0;
  return this;
}

uint64_t awd::metrics::BluetoothUserPermission::MergePartialFromCodedStream(awd::metrics::BluetoothUserPermission *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
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
          if (TagFallback >> 3 <= 5)
          {
            break;
          }

          if (TagFallback >> 3 <= 7)
          {
            if (v8 == 6)
            {
              if ((TagFallback & 7) == 0)
              {
                v18 = *(a2 + 1);
                v10 = *(a2 + 2);
                goto LABEL_82;
              }
            }

            else if (v8 == 7 && (TagFallback & 7) == 0)
            {
              v14 = *(a2 + 1);
              v10 = *(a2 + 2);
              goto LABEL_90;
            }

            goto LABEL_41;
          }

          if (v8 == 8)
          {
            if ((TagFallback & 7) == 0)
            {
              v20 = *(a2 + 1);
              v10 = *(a2 + 2);
              goto LABEL_98;
            }

            goto LABEL_41;
          }

          if (v8 == 9)
          {
            if ((TagFallback & 7) == 0)
            {
              v22 = *(a2 + 1);
              v10 = *(a2 + 2);
              goto LABEL_106;
            }

            goto LABEL_41;
          }

          if (v8 != 10 || v9 != 2)
          {
            goto LABEL_41;
          }

          v12 = *(this + 15);
LABEL_114:
          *(this + 15) = v12 | 0x200;
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

        if (TagFallback >> 3 > 2)
        {
          break;
        }

        if (v8 != 1)
        {
          if (v8 != 2 || (TagFallback & 7) != 0)
          {
            goto LABEL_41;
          }

          v13 = *(a2 + 1);
          v10 = *(a2 + 2);
          goto LABEL_50;
        }

        if ((TagFallback & 7) != 0)
        {
          goto LABEL_41;
        }

        v15 = *(a2 + 1);
        v10 = *(a2 + 2);
        if (v15 >= v10 || (v16 = *v15, v16 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 1);
          if (!result)
          {
            return result;
          }

          v17 = *(a2 + 1);
          v10 = *(a2 + 2);
        }

        else
        {
          *(this + 1) = v16;
          v17 = v15 + 1;
          *(a2 + 1) = v17;
        }

        *(this + 15) |= 1u;
        if (v17 < v10 && *v17 == 16)
        {
          v13 = v17 + 1;
          *(a2 + 1) = v13;
LABEL_50:
          if (v13 >= v10 || (v23 = *v13, v23 < 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 4);
            if (!result)
            {
              return result;
            }

            v24 = *(a2 + 1);
            v10 = *(a2 + 2);
          }

          else
          {
            *(this + 4) = v23;
            v24 = v13 + 1;
            *(a2 + 1) = v24;
          }

          *(this + 15) |= 2u;
          if (v24 < v10 && *v24 == 24)
          {
            v19 = v24 + 1;
            *(a2 + 1) = v19;
LABEL_58:
            if (v19 >= v10 || (v25 = *v19, v25 < 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 5);
              if (!result)
              {
                return result;
              }

              v26 = *(a2 + 1);
              v10 = *(a2 + 2);
            }

            else
            {
              *(this + 5) = v25;
              v26 = v19 + 1;
              *(a2 + 1) = v26;
            }

            *(this + 15) |= 4u;
            if (v26 < v10 && *v26 == 32)
            {
              v21 = v26 + 1;
              *(a2 + 1) = v21;
              goto LABEL_66;
            }
          }
        }
      }

      if (v8 == 3)
      {
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_41;
        }

        v19 = *(a2 + 1);
        v10 = *(a2 + 2);
        goto LABEL_58;
      }

      if (v8 != 4)
      {
        break;
      }

      if ((TagFallback & 7) != 0)
      {
        goto LABEL_41;
      }

      v21 = *(a2 + 1);
      v10 = *(a2 + 2);
LABEL_66:
      if (v21 >= v10 || (v27 = *v21, v27 < 0))
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
        v28 = v21 + 1;
        *(a2 + 1) = v28;
      }

      *(this + 15) |= 8u;
      if (v28 < v10 && *v28 == 40)
      {
        v11 = v28 + 1;
        *(a2 + 1) = v11;
LABEL_74:
        if (v11 >= v10 || (v29 = *v11, v29 < 0))
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
          v30 = v11 + 1;
          *(a2 + 1) = v30;
        }

        *(this + 15) |= 0x10u;
        if (v30 < v10 && *v30 == 48)
        {
          v18 = v30 + 1;
          *(a2 + 1) = v18;
LABEL_82:
          if (v18 >= v10 || (v31 = *v18, v31 < 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 8);
            if (!result)
            {
              return result;
            }

            v32 = *(a2 + 1);
            v10 = *(a2 + 2);
          }

          else
          {
            *(this + 8) = v31;
            v32 = v18 + 1;
            *(a2 + 1) = v32;
          }

          *(this + 15) |= 0x20u;
          if (v32 < v10 && *v32 == 56)
          {
            v14 = v32 + 1;
            *(a2 + 1) = v14;
LABEL_90:
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

            *(this + 15) |= 0x40u;
            if (v34 < v10 && *v34 == 64)
            {
              v20 = v34 + 1;
              *(a2 + 1) = v20;
LABEL_98:
              if (v20 >= v10 || (v35 = *v20, v35 < 0))
              {
                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 10);
                if (!result)
                {
                  return result;
                }

                v36 = *(a2 + 1);
                v10 = *(a2 + 2);
              }

              else
              {
                *(this + 10) = v35;
                v36 = v20 + 1;
                *(a2 + 1) = v36;
              }

              *(this + 15) |= 0x80u;
              if (v36 < v10 && *v36 == 72)
              {
                v22 = v36 + 1;
                *(a2 + 1) = v22;
LABEL_106:
                if (v22 >= v10 || (v37 = *v22, v37 < 0))
                {
                  result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 11);
                  if (!result)
                  {
                    return result;
                  }

                  v38 = *(a2 + 1);
                  v10 = *(a2 + 2);
                }

                else
                {
                  *(this + 11) = v37;
                  v38 = v22 + 1;
                  *(a2 + 1) = v38;
                }

                v12 = *(this + 15) | 0x100;
                *(this + 15) = v12;
                if (v38 < v10 && *v38 == 82)
                {
                  *(a2 + 1) = v38 + 1;
                  goto LABEL_114;
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
      goto LABEL_74;
    }

LABEL_41:
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

uint64_t awd::metrics::BluetoothUserPermission::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 60);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(1, *(this + 8), a2, a4);
    v6 = v5[15];
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

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(2, v5[4], a2, a4);
  v6 = v5[15];
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
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(3, v5[5], a2, a4);
  v6 = v5[15];
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
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(4, v5[6], a2, a4);
  v6 = v5[15];
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
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(5, v5[7], a2, a4);
  v6 = v5[15];
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
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(6, v5[8], a2, a4);
  v6 = v5[15];
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
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(7, v5[9], a2, a4);
  v6 = v5[15];
  if ((v6 & 0x80) == 0)
  {
LABEL_9:
    if ((v6 & 0x100) == 0)
    {
      goto LABEL_10;
    }

LABEL_20:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(9, v5[11], a2, a4);
    if ((v5[15] & 0x200) == 0)
    {
      return this;
    }

    goto LABEL_21;
  }

LABEL_19:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(8, v5[10], a2, a4);
  v6 = v5[15];
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

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
}

uint64_t awd::metrics::BluetoothUserPermission::ByteSize(awd::metrics::BluetoothUserPermission *this, unint64_t a2)
{
  v3 = *(this + 15);
  if (!v3)
  {
    v4 = 0;
    goto LABEL_42;
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

  v5 = *(this + 4);
  if (v5 >= 0x80)
  {
    v6 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5) + 1;
    v3 = *(this + 15);
  }

  else
  {
    v6 = 2;
  }

  v4 = (v6 + v4);
LABEL_11:
  if ((v3 & 4) != 0)
  {
    v7 = *(this + 5);
    if (v7 >= 0x80)
    {
      v8 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v7) + 1;
      v3 = *(this + 15);
    }

    else
    {
      v8 = 2;
    }

    v4 = (v8 + v4);
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
    v3 = *(this + 15);
  }

  else
  {
    v10 = 2;
  }

  v4 = (v10 + v4);
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
    v3 = *(this + 15);
  }

  else
  {
    v12 = 2;
  }

  v4 = (v12 + v4);
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
    v3 = *(this + 15);
  }

  else
  {
    v14 = 2;
  }

  v4 = (v14 + v4);
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
    v3 = *(this + 15);
  }

  else
  {
    v16 = 2;
  }

  v4 = (v16 + v4);
  if ((v3 & 0x80) != 0)
  {
LABEL_38:
    v17 = *(this + 10);
    if (v17 >= 0x80)
    {
      v18 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v17) + 1;
      v3 = *(this + 15);
    }

    else
    {
      v18 = 2;
    }

    v4 = (v18 + v4);
  }

LABEL_42:
  if ((v3 & 0xFF00) != 0)
  {
    if ((v3 & 0x100) != 0)
    {
      v19 = *(this + 11);
      if (v19 >= 0x80)
      {
        v20 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v19) + 1;
        v3 = *(this + 15);
      }

      else
      {
        v20 = 2;
      }

      v4 = (v20 + v4);
    }

    if ((v3 & 0x200) != 0)
    {
      v21 = *(this + 6);
      v22 = *(v21 + 23);
      v23 = v22;
      v24 = *(v21 + 8);
      if ((v22 & 0x80u) == 0)
      {
        v25 = *(v21 + 23);
      }

      else
      {
        v25 = v24;
      }

      if (v25 >= 0x80)
      {
        v26 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v25);
        v22 = *(v21 + 23);
        v24 = *(v21 + 8);
        v23 = *(v21 + 23);
      }

      else
      {
        v26 = 1;
      }

      if (v23 < 0)
      {
        v22 = v24;
      }

      v4 = (v4 + v26 + v22 + 1);
    }
  }

  *(this + 14) = v4;
  return v4;
}

void awd::metrics::BluetoothUserPermission::CheckTypeAndMergeFrom(awd::metrics::BluetoothUserPermission *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  {
    awd::metrics::BluetoothUserPermission::CheckTypeAndMergeFrom();
  }

  awd::metrics::BluetoothUserPermission::MergeFrom(this, lpsrc);
}

void awd::metrics::BluetoothUserPermission::CopyFrom(awd::metrics::BluetoothUserPermission *this, const awd::metrics::BluetoothUserPermission *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    awd::metrics::BluetoothUserPermission::MergeFrom(this, a2);
  }
}

uint64_t awd::metrics::BluetoothUserPermission::Swap(uint64_t this, awd::metrics::BluetoothUserPermission *a2)
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
    LODWORD(v2) = *(this + 28);
    *(this + 28) = *(a2 + 7);
    *(a2 + 7) = v2;
    LODWORD(v2) = *(this + 32);
    *(this + 32) = *(a2 + 8);
    *(a2 + 8) = v2;
    LODWORD(v2) = *(this + 36);
    *(this + 36) = *(a2 + 9);
    *(a2 + 9) = v2;
    LODWORD(v2) = *(this + 40);
    *(this + 40) = *(a2 + 10);
    *(a2 + 10) = v2;
    LODWORD(v2) = *(this + 44);
    *(this + 44) = *(a2 + 11);
    *(a2 + 11) = v2;
    v3 = *(this + 48);
    *(this + 48) = *(a2 + 6);
    *(a2 + 6) = v3;
    LODWORD(v3) = *(this + 60);
    *(this + 60) = *(a2 + 15);
    *(a2 + 15) = v3;
    LODWORD(v3) = *(this + 56);
    *(this + 56) = *(a2 + 14);
    *(a2 + 14) = v3;
  }

  return this;
}

uint64_t awd::metrics::BluetoothAdvBABufferStats::SharedCtor(uint64_t this)
{
  *(this + 64) = 0;
  *(this + 8) = 0;
  return this;
}

awd::metrics::BluetoothAdvBABufferStats *awd::metrics::BluetoothAdvBABufferStats::BluetoothAdvBABufferStats(awd::metrics::BluetoothAdvBABufferStats *this, const awd::metrics::BluetoothAdvBABufferStats *a2)
{
  *this = &unk_2A1D4C480;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  awd::metrics::BluetoothAdvBABufferStats::MergeFrom(this, a2);
  return this;
}

void sub_2963B26CC(_Unwind_Exception *a1)
{
  v3 = v1[6];
  if (v3)
  {
    MEMORY[0x29C259EE0](v3, 0x1000C8052888210);
  }

  awd::metrics::BluetoothAdvBABufferStats::BluetoothAdvBABufferStats((v1 + 4), v1 + 2);
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(v1);
  _Unwind_Resume(a1);
}

void awd::metrics::BluetoothAdvBABufferStats::MergeFrom(awd::metrics::BluetoothAdvBABufferStats *this, const awd::metrics::BluetoothAdvBABufferStats *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v8);
  }

  v4 = *(a2 + 6);
  if (v4)
  {
    wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 4, *(this + 6) + v4);
    memcpy((*(this + 2) + 4 * *(this + 6)), *(a2 + 2), 4 * *(a2 + 6));
    *(this + 6) += *(a2 + 6);
  }

  v5 = *(a2 + 10);
  if (v5)
  {
    wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 8, *(this + 10) + v5);
    memcpy((*(this + 4) + 4 * *(this + 10)), *(a2 + 4), 4 * *(a2 + 10));
    *(this + 10) += *(a2 + 10);
  }

  v6 = *(a2 + 14);
  if (v6)
  {
    wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 12, *(this + 14) + v6);
    memcpy((*(this + 6) + 4 * *(this + 14)), *(a2 + 6), 4 * *(a2 + 14));
    *(this + 14) += *(a2 + 14);
  }

  if (*(a2 + 68))
  {
    v7 = *(a2 + 1);
    *(this + 17) |= 1u;
    *(this + 1) = v7;
  }
}

void sub_2963B2860(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::metrics::BluetoothAdvBABufferStats::~BluetoothAdvBABufferStats(awd::metrics::BluetoothAdvBABufferStats *this)
{
  *this = &unk_2A1D4C480;
  v2 = *(this + 6);
  if (v2)
  {
    MEMORY[0x29C259EE0](v2, 0x1000C8052888210);
  }

  v3 = *(this + 4);
  if (v3)
  {
    MEMORY[0x29C259EE0](v3, 0x1000C8052888210);
  }

  v4 = *(this + 2);
  if (v4)
  {
    MEMORY[0x29C259EE0](v4, 0x1000C8052888210);
  }

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  awd::metrics::BluetoothAdvBABufferStats::~BluetoothAdvBABufferStats(this);

  JUMPOUT(0x29C259F00);
}

uint64_t awd::metrics::BluetoothAdvBABufferStats::default_instance(awd::metrics::BluetoothAdvBABufferStats *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = awd::metrics::BluetoothAdvBABufferStats::default_instance_;
  if (!awd::metrics::BluetoothAdvBABufferStats::default_instance_)
  {
    awd::metrics::protobuf_AddDesc_Bluetooth_2eproto(0, a2, a3, a4);
    return awd::metrics::BluetoothAdvBABufferStats::default_instance_;
  }

  return result;
}

uint64_t awd::metrics::BluetoothAdvBABufferStats::Clear(uint64_t this)
{
  if (*(this + 68))
  {
    *(this + 8) = 0;
  }

  *(this + 24) = 0;
  *(this + 40) = 0;
  *(this + 56) = 0;
  *(this + 68) = 0;
  return this;
}

uint64_t awd::metrics::BluetoothAdvBABufferStats::MergePartialFromCodedStream(awd::metrics::BluetoothAdvBABufferStats *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
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

        if (v7 != 1)
        {
          if (v7 == 2)
          {
            if ((TagFallback & 7) == 0)
            {
              v14 = *(a2 + 1);
              v10 = *(a2 + 2);
              goto LABEL_39;
            }

            if (v8 == 2)
            {
              result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadPackedPrimitiveNoInline<unsigned int,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)13>(a2, this + 2);
              if (!result)
              {
                return result;
              }

              goto LABEL_56;
            }
          }

          goto LABEL_25;
        }

        if ((TagFallback & 7) != 0)
        {
          goto LABEL_25;
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

        *(this + 17) |= 1u;
        if (v13 < v10)
        {
          v17 = *v13;
          while (v17 == 16)
          {
            v14 = v13 + 1;
            *(a2 + 1) = v14;
LABEL_39:
            v49 = 0;
            if (v14 >= v10 || *v14 < 0)
            {
              if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v49))
              {
                return 0;
              }
            }

            else
            {
              v49 = *v14;
              *(a2 + 1) = v14 + 1;
            }

            v18 = *(this + 6);
            if (v18 == *(this + 7))
            {
              wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 4, v18 + 1);
              v18 = *(this + 6);
            }

            v19 = v49;
            v20 = *(this + 2);
            *(this + 6) = v18 + 1;
            *(v20 + 4 * v18) = v19;
            v21 = *(this + 7) - *(this + 6);
            if (v21 >= 1)
            {
              v22 = v21 + 1;
              do
              {
                v23 = *(a2 + 1);
                v24 = *(a2 + 2);
                if (v23 >= v24 || *v23 != 16)
                {
                  break;
                }

                *(a2 + 1) = v23 + 1;
                if ((v23 + 1) >= v24 || v23[1] < 0)
                {
                  if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v49))
                  {
                    return 0;
                  }
                }

                else
                {
                  v49 = v23[1];
                  *(a2 + 1) = v23 + 2;
                }

                v25 = *(this + 6);
                if (v25 >= *(this + 7))
                {
                  wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                  wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                  wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v50);
                  v25 = *(this + 6);
                }

                v26 = v49;
                v27 = *(this + 2);
                *(this + 6) = v25 + 1;
                *(v27 + 4 * v25) = v26;
                --v22;
              }

              while (v22 > 1);
            }

LABEL_56:
            v13 = *(a2 + 1);
            v10 = *(a2 + 2);
            if (v13 >= v10)
            {
              break;
            }

            v17 = *v13;
            if (v17 == 24)
            {
              goto LABEL_58;
            }
          }
        }
      }

      if (v7 != 3)
      {
        if (v7 == 4)
        {
          if ((TagFallback & 7) == 0)
          {
            v15 = *(a2 + 1);
            v10 = *(a2 + 2);
            goto LABEL_81;
          }

          if (v8 == 2)
          {
            result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadPackedPrimitiveNoInline<unsigned int,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)13>(a2, this + 6);
            if (!result)
            {
              return result;
            }

            goto LABEL_98;
          }
        }

        goto LABEL_25;
      }

      if ((TagFallback & 7) != 0)
      {
        break;
      }

      v16 = *(a2 + 1);
      v10 = *(a2 + 2);
      while (1)
      {
        v49 = 0;
        if (v16 >= v10 || *v16 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v49))
          {
            return 0;
          }
        }

        else
        {
          v49 = *v16;
          *(a2 + 1) = v16 + 1;
        }

        v28 = *(this + 10);
        if (v28 == *(this + 11))
        {
          wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 8, v28 + 1);
          v28 = *(this + 10);
        }

        v29 = v49;
        v30 = *(this + 4);
        *(this + 10) = v28 + 1;
        *(v30 + 4 * v28) = v29;
        v31 = *(this + 11) - *(this + 10);
        if (v31 >= 1)
        {
          v32 = v31 + 1;
          do
          {
            v33 = *(a2 + 1);
            v34 = *(a2 + 2);
            if (v33 >= v34 || *v33 != 24)
            {
              break;
            }

            *(a2 + 1) = v33 + 1;
            if ((v33 + 1) >= v34 || v33[1] < 0)
            {
              if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v49))
              {
                return 0;
              }
            }

            else
            {
              v49 = v33[1];
              *(a2 + 1) = v33 + 2;
            }

            v35 = *(this + 10);
            if (v35 >= *(this + 11))
            {
              wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
              wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
              wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
              wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v50);
              v35 = *(this + 10);
            }

            v36 = v49;
            v37 = *(this + 4);
            *(this + 10) = v35 + 1;
            *(v37 + 4 * v35) = v36;
            --v32;
          }

          while (v32 > 1);
        }

LABEL_76:
        v13 = *(a2 + 1);
        v10 = *(a2 + 2);
        if (v13 >= v10)
        {
          break;
        }

        v38 = *v13;
        if (v38 == 32)
        {
          do
          {
            v15 = v13 + 1;
            *(a2 + 1) = v15;
LABEL_81:
            v49 = 0;
            if (v15 >= v10 || *v15 < 0)
            {
              if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v49))
              {
                return 0;
              }
            }

            else
            {
              v49 = *v15;
              *(a2 + 1) = v15 + 1;
            }

            v39 = *(this + 14);
            if (v39 == *(this + 15))
            {
              wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 12, v39 + 1);
              v39 = *(this + 14);
            }

            v40 = v49;
            v41 = *(this + 6);
            *(this + 14) = v39 + 1;
            *(v41 + 4 * v39) = v40;
            v42 = *(this + 15) - *(this + 14);
            if (v42 >= 1)
            {
              v43 = v42 + 1;
              do
              {
                v44 = *(a2 + 1);
                v45 = *(a2 + 2);
                if (v44 >= v45 || *v44 != 32)
                {
                  break;
                }

                *(a2 + 1) = v44 + 1;
                if ((v44 + 1) >= v45 || v44[1] < 0)
                {
                  if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v49))
                  {
                    return 0;
                  }
                }

                else
                {
                  v49 = v44[1];
                  *(a2 + 1) = v44 + 2;
                }

                v46 = *(this + 14);
                if (v46 >= *(this + 15))
                {
                  wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                  wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                  wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v50);
                  v46 = *(this + 14);
                }

                v47 = v49;
                v48 = *(this + 6);
                *(this + 14) = v46 + 1;
                *(v48 + 4 * v46) = v47;
                --v43;
              }

              while (v43 > 1);
            }

LABEL_98:
            v13 = *(a2 + 1);
            v10 = *(a2 + 2);
          }

          while (v13 < v10 && *v13 == 32);
          if (v13 == v10 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
          {
            *(a2 + 8) = 0;
            result = 1;
            *(a2 + 36) = 1;
            return result;
          }

          goto LABEL_1;
        }

        if (v38 != 24)
        {
          goto LABEL_1;
        }

LABEL_58:
        v16 = v13 + 1;
        *(a2 + 1) = v16;
      }
    }

    if (v8 == 2)
    {
      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadPackedPrimitiveNoInline<unsigned int,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)13>(a2, this + 4);
      if (!result)
      {
        return result;
      }

      goto LABEL_76;
    }

LABEL_25:
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

void sub_2963B2FD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t awd::metrics::BluetoothAdvBABufferStats::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  if (*(this + 68))
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(1, *(this + 8), a2, a4);
  }

  if (*(v5 + 24) >= 1)
  {
    v6 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(2, *(*(v5 + 16) + 4 * v6++), a2, a4);
    }

    while (v6 < *(v5 + 24));
  }

  if (*(v5 + 40) >= 1)
  {
    v7 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(3, *(*(v5 + 32) + 4 * v7++), a2, a4);
    }

    while (v7 < *(v5 + 40));
  }

  if (*(v5 + 56) >= 1)
  {
    v8 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(4, *(*(v5 + 48) + 4 * v8++), a2, a4);
    }

    while (v8 < *(v5 + 56));
  }

  return this;
}

uint64_t awd::metrics::BluetoothAdvBABufferStats::ByteSize(wireless_diagnostics::google::protobuf::io::CodedOutputStream **this, unint64_t a2)
{
  if (*(this + 68))
  {
    v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(this[1]) + 1;
  }

  else
  {
    v3 = 0;
  }

  v4 = *(this + 6);
  if (v4 < 1)
  {
    v6 = 0;
  }

  else
  {
    v5 = 0;
    v6 = 0;
    do
    {
      v7 = *(this[2] + v5);
      if (v7 >= 0x80)
      {
        v8 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v7);
        v4 = *(this + 6);
      }

      else
      {
        v8 = 1;
      }

      v6 += v8;
      ++v5;
    }

    while (v5 < v4);
  }

  v9 = *(this + 10);
  if (v9 < 1)
  {
    v11 = 0;
  }

  else
  {
    v10 = 0;
    v11 = 0;
    do
    {
      v12 = *(this[4] + v10);
      if (v12 >= 0x80)
      {
        v13 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v12);
        v9 = *(this + 10);
      }

      else
      {
        v13 = 1;
      }

      v11 += v13;
      ++v10;
    }

    while (v10 < v9);
  }

  v14 = *(this + 14);
  if (v14 < 1)
  {
    v16 = 0;
  }

  else
  {
    v15 = 0;
    v16 = 0;
    do
    {
      v17 = *(this[6] + v15);
      if (v17 >= 0x80)
      {
        v18 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v17);
        v14 = *(this + 14);
      }

      else
      {
        v18 = 1;
      }

      v16 += v18;
      ++v15;
    }

    while (v15 < v14);
  }

  result = (v6 + v3 + v4 + v11 + v9 + v16 + v14);
  *(this + 16) = result;
  return result;
}

void awd::metrics::BluetoothAdvBABufferStats::CheckTypeAndMergeFrom(awd::metrics::BluetoothAdvBABufferStats *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  {
    awd::metrics::BluetoothAdvBABufferStats::CheckTypeAndMergeFrom();
  }

  awd::metrics::BluetoothAdvBABufferStats::MergeFrom(this, lpsrc);
}

void awd::metrics::BluetoothAdvBABufferStats::CopyFrom(awd::metrics::BluetoothAdvBABufferStats *this, const awd::metrics::BluetoothAdvBABufferStats *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    awd::metrics::BluetoothAdvBABufferStats::MergeFrom(this, a2);
  }
}

double awd::metrics::BluetoothAdvBABufferStats::Swap(awd::metrics::BluetoothAdvBABufferStats *this, awd::metrics::BluetoothAdvBABufferStats *a2)
{
  if (a2 != this)
  {
    v2 = *(this + 1);
    v3 = *(this + 2);
    v4 = *(a2 + 2);
    *(this + 1) = *(a2 + 1);
    *(this + 2) = v4;
    v5 = *(a2 + 3);
    *(a2 + 1) = v2;
    *(a2 + 2) = v3;
    v6 = *(this + 3);
    *(this + 3) = v5;
    *(a2 + 3) = v6;
    v7 = *(this + 4);
    *(this + 4) = *(a2 + 4);
    v8 = *(a2 + 5);
    *(a2 + 4) = v7;
    v9 = *(this + 5);
    *(this + 5) = v8;
    *(a2 + 5) = v9;
    v10 = *(this + 6);
    *(this + 6) = *(a2 + 6);
    result = *(a2 + 7);
    *(a2 + 6) = v10;
    v12 = *(this + 7);
    *(this + 7) = result;
    *(a2 + 7) = v12;
    LODWORD(v10) = *(this + 17);
    *(this + 17) = *(a2 + 17);
    *(a2 + 17) = v10;
    LODWORD(v10) = *(this + 16);
    *(this + 16) = *(a2 + 16);
    *(a2 + 16) = v10;
  }

  return result;
}

uint64_t awd::metrics::BluetoothLowPowerCoreStats::SharedCtor(uint64_t this)
{
  *(this + 112) = 0;
  *(this + 8) = 0;
  return this;
}

awd::metrics::BluetoothLowPowerCoreStats *awd::metrics::BluetoothLowPowerCoreStats::BluetoothLowPowerCoreStats(awd::metrics::BluetoothLowPowerCoreStats *this, const awd::metrics::BluetoothLowPowerCoreStats *a2)
{
  *this = &unk_2A1D4C4F8;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 88) = 0u;
  *(this + 104) = 0u;
  awd::metrics::BluetoothLowPowerCoreStats::MergeFrom(this, a2);
  return this;
}

void sub_2963B347C(_Unwind_Exception *a1)
{
  v3 = *(v1 + 12);
  if (v3)
  {
    MEMORY[0x29C259EE0](v3, 0x1000C8000313F17);
  }

  v4 = *(v1 + 10);
  if (v4)
  {
    MEMORY[0x29C259EE0](v4, 0x1000C8000313F17);
  }

  v5 = *(v1 + 8);
  if (v5)
  {
    MEMORY[0x29C259EE0](v5, 0x1000C8000313F17);
  }

  v6 = *(v1 + 6);
  if (v6)
  {
    MEMORY[0x29C259EE0](v6, 0x1000C8000313F17);
  }

  v7 = *(v1 + 4);
  if (v7)
  {
    MEMORY[0x29C259EE0](v7, 0x1000C8052888210);
  }

  v8 = *(v1 + 2);
  if (v8)
  {
    MEMORY[0x29C259EE0](v8, 0x1000C8052888210);
  }

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(v1);
  _Unwind_Resume(a1);
}

void awd::metrics::BluetoothLowPowerCoreStats::MergeFrom(awd::metrics::BluetoothLowPowerCoreStats *this, const awd::metrics::BluetoothLowPowerCoreStats *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v11);
  }

  v4 = *(a2 + 6);
  if (v4)
  {
    wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 4, *(this + 6) + v4);
    memcpy((*(this + 2) + 4 * *(this + 6)), *(a2 + 2), 4 * *(a2 + 6));
    *(this + 6) += *(a2 + 6);
  }

  v5 = *(a2 + 10);
  if (v5)
  {
    wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 8, *(this + 10) + v5);
    memcpy((*(this + 4) + 4 * *(this + 10)), *(a2 + 4), 4 * *(a2 + 10));
    *(this + 10) += *(a2 + 10);
  }

  v6 = *(a2 + 14);
  if (v6)
  {
    wireless_diagnostics::google::protobuf::RepeatedField<unsigned long long>::Reserve(this + 12, *(this + 14) + v6);
    memcpy((*(this + 6) + 8 * *(this + 14)), *(a2 + 6), 8 * *(a2 + 14));
    *(this + 14) += *(a2 + 14);
  }

  v7 = *(a2 + 18);
  if (v7)
  {
    wireless_diagnostics::google::protobuf::RepeatedField<unsigned long long>::Reserve(this + 16, *(this + 18) + v7);
    memcpy((*(this + 8) + 8 * *(this + 18)), *(a2 + 8), 8 * *(a2 + 18));
    *(this + 18) += *(a2 + 18);
  }

  v8 = *(a2 + 22);
  if (v8)
  {
    wireless_diagnostics::google::protobuf::RepeatedField<unsigned long long>::Reserve(this + 20, *(this + 22) + v8);
    memcpy((*(this + 10) + 8 * *(this + 22)), *(a2 + 10), 8 * *(a2 + 22));
    *(this + 22) += *(a2 + 22);
  }

  v9 = *(a2 + 26);
  if (v9)
  {
    wireless_diagnostics::google::protobuf::RepeatedField<unsigned long long>::Reserve(this + 24, *(this + 26) + v9);
    memcpy((*(this + 12) + 8 * *(this + 26)), *(a2 + 12), 8 * *(a2 + 26));
    *(this + 26) += *(a2 + 26);
  }

  if (*(a2 + 116))
  {
    v10 = *(a2 + 1);
    *(this + 29) |= 1u;
    *(this + 1) = v10;
  }
}

void sub_2963B3740(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::metrics::BluetoothLowPowerCoreStats::~BluetoothLowPowerCoreStats(awd::metrics::BluetoothLowPowerCoreStats *this)
{
  *this = &unk_2A1D4C4F8;
  v2 = *(this + 12);
  if (v2)
  {
    MEMORY[0x29C259EE0](v2, 0x1000C8000313F17);
  }

  v3 = *(this + 10);
  if (v3)
  {
    MEMORY[0x29C259EE0](v3, 0x1000C8000313F17);
  }

  v4 = *(this + 8);
  if (v4)
  {
    MEMORY[0x29C259EE0](v4, 0x1000C8000313F17);
  }

  v5 = *(this + 6);
  if (v5)
  {
    MEMORY[0x29C259EE0](v5, 0x1000C8000313F17);
  }

  v6 = *(this + 4);
  if (v6)
  {
    MEMORY[0x29C259EE0](v6, 0x1000C8052888210);
  }

  v7 = *(this + 2);
  if (v7)
  {
    MEMORY[0x29C259EE0](v7, 0x1000C8052888210);
  }

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  awd::metrics::BluetoothLowPowerCoreStats::~BluetoothLowPowerCoreStats(this);

  JUMPOUT(0x29C259F00);
}

uint64_t awd::metrics::BluetoothLowPowerCoreStats::default_instance(awd::metrics::BluetoothLowPowerCoreStats *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = awd::metrics::BluetoothLowPowerCoreStats::default_instance_;
  if (!awd::metrics::BluetoothLowPowerCoreStats::default_instance_)
  {
    awd::metrics::protobuf_AddDesc_Bluetooth_2eproto(0, a2, a3, a4);
    return awd::metrics::BluetoothLowPowerCoreStats::default_instance_;
  }

  return result;
}

uint64_t awd::metrics::BluetoothLowPowerCoreStats::Clear(uint64_t this)
{
  if (*(this + 116))
  {
    *(this + 8) = 0;
  }

  *(this + 24) = 0;
  *(this + 40) = 0;
  *(this + 56) = 0;
  *(this + 72) = 0;
  *(this + 88) = 0;
  *(this + 104) = 0;
  *(this + 116) = 0;
  return this;
}

uint64_t awd::metrics::BluetoothLowPowerCoreStats::MergePartialFromCodedStream(awd::metrics::BluetoothLowPowerCoreStats *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
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
        if (TagFallback >> 3 <= 3)
        {
          break;
        }

        if (TagFallback >> 3 <= 5)
        {
          if (v7 == 4)
          {
            if ((TagFallback & 7) == 0)
            {
              v14 = *(a2 + 1);
              v10 = *(a2 + 2);
              goto LABEL_100;
            }

            if (v8 == 2)
            {
              result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadPackedPrimitiveNoInline<unsigned long long,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)4>(a2, this + 6);
              if (!result)
              {
                return result;
              }

              goto LABEL_118;
            }
          }

          else if (v7 == 5)
          {
            if ((TagFallback & 7) == 0)
            {
              v16 = *(a2 + 1);
              v10 = *(a2 + 2);
              goto LABEL_123;
            }

            if (v8 == 2)
            {
              result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadPackedPrimitiveNoInline<unsigned long long,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)4>(a2, this + 8);
              if (!result)
              {
                return result;
              }

              goto LABEL_141;
            }
          }

          goto LABEL_41;
        }

        if (v7 != 6)
        {
          if (v7 == 7)
          {
            if ((TagFallback & 7) == 0)
            {
              v17 = *(a2 + 1);
              v10 = *(a2 + 2);
              goto LABEL_169;
            }

            if (v8 == 2)
            {
              result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadPackedPrimitiveNoInline<unsigned long long,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)4>(a2, this + 12);
              if (!result)
              {
                return result;
              }

              goto LABEL_187;
            }
          }

          goto LABEL_41;
        }

        if ((TagFallback & 7) != 0)
        {
          if (v8 == 2)
          {
            result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadPackedPrimitiveNoInline<unsigned long long,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)4>(a2, this + 10);
            if (!result)
            {
              return result;
            }

            goto LABEL_164;
          }

          goto LABEL_41;
        }

        v15 = *(a2 + 1);
        v10 = *(a2 + 2);
        while (1)
        {
          v85 = 0;
          if (v15 >= v10 || (*v15 & 0x8000000000000000) != 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, &v85))
            {
              return 0;
            }
          }

          else
          {
            v85 = *v15;
            *(a2 + 1) = v15 + 1;
          }

          v64 = *(this + 22);
          v65 = *(this + 23);
          if (v64 == v65)
          {
            wireless_diagnostics::google::protobuf::RepeatedField<unsigned long long>::Reserve(this + 20, v64 + 1);
            v64 = *(this + 22);
            v65 = *(this + 23);
          }

          v66 = v85;
          v67 = *(this + 10);
          v68 = v64 + 1;
          *(this + 22) = v64 + 1;
          *(v67 + 8 * v64) = v66;
          if (v65 - (v64 + 1) >= 1)
          {
            v69 = v65 - v64;
            do
            {
              v70 = *(a2 + 1);
              v71 = *(a2 + 2);
              if (v70 >= v71 || *v70 != 48)
              {
                break;
              }

              *(a2 + 1) = v70 + 1;
              if ((v70 + 1) >= v71 || (v70[1] & 0x8000000000000000) != 0)
              {
                if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, &v85))
                {
                  return 0;
                }

                v68 = *(this + 22);
              }

              else
              {
                v85 = v70[1];
                *(a2 + 1) = v70 + 2;
              }

              if (v68 >= *(this + 23))
              {
                wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v86);
                v68 = *(this + 22);
              }

              v72 = v85;
              v73 = *(this + 10);
              *(this + 22) = v68 + 1;
              *(v73 + 8 * v68) = v72;
              --v69;
              ++v68;
            }

            while (v69 > 1);
          }

LABEL_164:
          v13 = *(a2 + 1);
          v10 = *(a2 + 2);
          if (v13 >= v10)
          {
            break;
          }

          v74 = *v13;
          if (v74 == 56)
          {
            do
            {
              v17 = v13 + 1;
              *(a2 + 1) = v17;
LABEL_169:
              v85 = 0;
              if (v17 >= v10 || (*v17 & 0x8000000000000000) != 0)
              {
                if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, &v85))
                {
                  return 0;
                }
              }

              else
              {
                v85 = *v17;
                *(a2 + 1) = v17 + 1;
              }

              v75 = *(this + 26);
              v76 = *(this + 27);
              if (v75 == v76)
              {
                wireless_diagnostics::google::protobuf::RepeatedField<unsigned long long>::Reserve(this + 24, v75 + 1);
                v75 = *(this + 26);
                v76 = *(this + 27);
              }

              v77 = v85;
              v78 = *(this + 12);
              v79 = v75 + 1;
              *(this + 26) = v75 + 1;
              *(v78 + 8 * v75) = v77;
              if (v76 - (v75 + 1) >= 1)
              {
                v80 = v76 - v75;
                do
                {
                  v81 = *(a2 + 1);
                  v82 = *(a2 + 2);
                  if (v81 >= v82 || *v81 != 56)
                  {
                    break;
                  }

                  *(a2 + 1) = v81 + 1;
                  if ((v81 + 1) >= v82 || (v81[1] & 0x8000000000000000) != 0)
                  {
                    if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, &v85))
                    {
                      return 0;
                    }

                    v79 = *(this + 26);
                  }

                  else
                  {
                    v85 = v81[1];
                    *(a2 + 1) = v81 + 2;
                  }

                  if (v79 >= *(this + 27))
                  {
                    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v86);
                    v79 = *(this + 26);
                  }

                  v83 = v85;
                  v84 = *(this + 12);
                  *(this + 26) = v79 + 1;
                  *(v84 + 8 * v79) = v83;
                  --v80;
                  ++v79;
                }

                while (v80 > 1);
              }

LABEL_187:
              v13 = *(a2 + 1);
              v10 = *(a2 + 2);
            }

            while (v13 < v10 && *v13 == 56);
            if (v13 == v10 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
            {
              *(a2 + 8) = 0;
              result = 1;
              *(a2 + 36) = 1;
              return result;
            }

            goto LABEL_1;
          }

          if (v74 != 48)
          {
            goto LABEL_1;
          }

LABEL_145:
          v15 = v13 + 1;
          *(a2 + 1) = v15;
        }
      }

      if (v7 != 1)
      {
        break;
      }

      if ((TagFallback & 7) != 0)
      {
        goto LABEL_41;
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

      *(this + 29) |= 1u;
      if (v13 < v10)
      {
        v20 = *v13;
        while (v20 == 16)
        {
          v19 = v13 + 1;
          *(a2 + 1) = v19;
LABEL_58:
          LODWORD(v85) = 0;
          if (v19 >= v10 || *v19 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v85))
            {
              return 0;
            }
          }

          else
          {
            LODWORD(v85) = *v19;
            *(a2 + 1) = v19 + 1;
          }

          v21 = *(this + 6);
          if (v21 == *(this + 7))
          {
            wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 4, v21 + 1);
            v21 = *(this + 6);
          }

          v22 = v85;
          v23 = *(this + 2);
          *(this + 6) = v21 + 1;
          *(v23 + 4 * v21) = v22;
          v24 = *(this + 7) - *(this + 6);
          if (v24 >= 1)
          {
            v25 = v24 + 1;
            do
            {
              v26 = *(a2 + 1);
              v27 = *(a2 + 2);
              if (v26 >= v27 || *v26 != 16)
              {
                break;
              }

              *(a2 + 1) = v26 + 1;
              if ((v26 + 1) >= v27 || v26[1] < 0)
              {
                if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v85))
                {
                  return 0;
                }
              }

              else
              {
                LODWORD(v85) = v26[1];
                *(a2 + 1) = v26 + 2;
              }

              v28 = *(this + 6);
              if (v28 >= *(this + 7))
              {
                wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v86);
                v28 = *(this + 6);
              }

              v29 = v85;
              v30 = *(this + 2);
              *(this + 6) = v28 + 1;
              *(v30 + 4 * v28) = v29;
              --v25;
            }

            while (v25 > 1);
          }

LABEL_75:
          v13 = *(a2 + 1);
          v10 = *(a2 + 2);
          if (v13 >= v10)
          {
            break;
          }

          v20 = *v13;
          if (v20 == 24)
          {
            while (1)
            {
              v18 = v13 + 1;
              *(a2 + 1) = v18;
LABEL_78:
              LODWORD(v85) = 0;
              if (v18 >= v10 || *v18 < 0)
              {
                if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v85))
                {
                  return 0;
                }
              }

              else
              {
                LODWORD(v85) = *v18;
                *(a2 + 1) = v18 + 1;
              }

              v31 = *(this + 10);
              if (v31 == *(this + 11))
              {
                wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 8, v31 + 1);
                v31 = *(this + 10);
              }

              v32 = v85;
              v33 = *(this + 4);
              *(this + 10) = v31 + 1;
              *(v33 + 4 * v31) = v32;
              v34 = *(this + 11) - *(this + 10);
              if (v34 >= 1)
              {
                v35 = v34 + 1;
                do
                {
                  v36 = *(a2 + 1);
                  v37 = *(a2 + 2);
                  if (v36 >= v37 || *v36 != 24)
                  {
                    break;
                  }

                  *(a2 + 1) = v36 + 1;
                  if ((v36 + 1) >= v37 || v36[1] < 0)
                  {
                    if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v85))
                    {
                      return 0;
                    }
                  }

                  else
                  {
                    LODWORD(v85) = v36[1];
                    *(a2 + 1) = v36 + 2;
                  }

                  v38 = *(this + 10);
                  if (v38 >= *(this + 11))
                  {
                    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v86);
                    v38 = *(this + 10);
                  }

                  v39 = v85;
                  v40 = *(this + 4);
                  *(this + 10) = v38 + 1;
                  *(v40 + 4 * v38) = v39;
                  --v35;
                }

                while (v35 > 1);
              }

LABEL_95:
              v13 = *(a2 + 1);
              v10 = *(a2 + 2);
              if (v13 >= v10)
              {
                goto LABEL_1;
              }

              v41 = *v13;
              if (v41 == 32)
              {
                while (1)
                {
                  v14 = v13 + 1;
                  *(a2 + 1) = v14;
LABEL_100:
                  v85 = 0;
                  if (v14 >= v10 || (*v14 & 0x8000000000000000) != 0)
                  {
                    if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, &v85))
                    {
                      return 0;
                    }
                  }

                  else
                  {
                    v85 = *v14;
                    *(a2 + 1) = v14 + 1;
                  }

                  v42 = *(this + 14);
                  v43 = *(this + 15);
                  if (v42 == v43)
                  {
                    wireless_diagnostics::google::protobuf::RepeatedField<unsigned long long>::Reserve(this + 12, v42 + 1);
                    v42 = *(this + 14);
                    v43 = *(this + 15);
                  }

                  v44 = v85;
                  v45 = *(this + 6);
                  v46 = v42 + 1;
                  *(this + 14) = v42 + 1;
                  *(v45 + 8 * v42) = v44;
                  if (v43 - (v42 + 1) >= 1)
                  {
                    v47 = v43 - v42;
                    do
                    {
                      v48 = *(a2 + 1);
                      v49 = *(a2 + 2);
                      if (v48 >= v49 || *v48 != 32)
                      {
                        break;
                      }

                      *(a2 + 1) = v48 + 1;
                      if ((v48 + 1) >= v49 || (v48[1] & 0x8000000000000000) != 0)
                      {
                        if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, &v85))
                        {
                          return 0;
                        }

                        v46 = *(this + 14);
                      }

                      else
                      {
                        v85 = v48[1];
                        *(a2 + 1) = v48 + 2;
                      }

                      if (v46 >= *(this + 15))
                      {
                        wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                        wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                        wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                        wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v86);
                        v46 = *(this + 14);
                      }

                      v50 = v85;
                      v51 = *(this + 6);
                      *(this + 14) = v46 + 1;
                      *(v51 + 8 * v46) = v50;
                      --v47;
                      ++v46;
                    }

                    while (v47 > 1);
                  }

LABEL_118:
                  v13 = *(a2 + 1);
                  v10 = *(a2 + 2);
                  if (v13 >= v10)
                  {
                    goto LABEL_1;
                  }

                  v52 = *v13;
                  if (v52 == 40)
                  {
                    do
                    {
                      v16 = v13 + 1;
                      *(a2 + 1) = v16;
LABEL_123:
                      v85 = 0;
                      if (v16 >= v10 || (*v16 & 0x8000000000000000) != 0)
                      {
                        if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, &v85))
                        {
                          return 0;
                        }
                      }

                      else
                      {
                        v85 = *v16;
                        *(a2 + 1) = v16 + 1;
                      }

                      v53 = *(this + 18);
                      v54 = *(this + 19);
                      if (v53 == v54)
                      {
                        wireless_diagnostics::google::protobuf::RepeatedField<unsigned long long>::Reserve(this + 16, v53 + 1);
                        v53 = *(this + 18);
                        v54 = *(this + 19);
                      }

                      v55 = v85;
                      v56 = *(this + 8);
                      v57 = v53 + 1;
                      *(this + 18) = v53 + 1;
                      *(v56 + 8 * v53) = v55;
                      if (v54 - (v53 + 1) >= 1)
                      {
                        v58 = v54 - v53;
                        do
                        {
                          v59 = *(a2 + 1);
                          v60 = *(a2 + 2);
                          if (v59 >= v60 || *v59 != 40)
                          {
                            break;
                          }

                          *(a2 + 1) = v59 + 1;
                          if ((v59 + 1) >= v60 || (v59[1] & 0x8000000000000000) != 0)
                          {
                            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, &v85))
                            {
                              return 0;
                            }

                            v57 = *(this + 18);
                          }

                          else
                          {
                            v85 = v59[1];
                            *(a2 + 1) = v59 + 2;
                          }

                          if (v57 >= *(this + 19))
                          {
                            wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                            wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                            wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                            wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v86);
                            v57 = *(this + 18);
                          }

                          v61 = v85;
                          v62 = *(this + 8);
                          *(this + 18) = v57 + 1;
                          *(v62 + 8 * v57) = v61;
                          --v58;
                          ++v57;
                        }

                        while (v58 > 1);
                      }

LABEL_141:
                      v13 = *(a2 + 1);
                      v10 = *(a2 + 2);
                      if (v13 >= v10)
                      {
                        break;
                      }

                      v63 = *v13;
                      if (v63 == 48)
                      {
                        goto LABEL_145;
                      }
                    }

                    while (v63 == 40);
                    goto LABEL_1;
                  }

                  if (v52 != 32)
                  {
                    goto LABEL_1;
                  }
                }
              }

              if (v41 != 24)
              {
                goto LABEL_1;
              }
            }
          }
        }
      }
    }

    if (v7 == 2)
    {
      if ((TagFallback & 7) == 0)
      {
        v19 = *(a2 + 1);
        v10 = *(a2 + 2);
        goto LABEL_58;
      }

      if (v8 == 2)
      {
        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadPackedPrimitiveNoInline<unsigned int,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)13>(a2, this + 2);
        if (!result)
        {
          return result;
        }

        goto LABEL_75;
      }
    }

    else if (v7 == 3)
    {
      if ((TagFallback & 7) == 0)
      {
        v18 = *(a2 + 1);
        v10 = *(a2 + 2);
        goto LABEL_78;
      }

      if (v8 == 2)
      {
        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadPackedPrimitiveNoInline<unsigned int,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)13>(a2, this + 4);
        if (!result)
        {
          return result;
        }

        goto LABEL_95;
      }
    }

LABEL_41:
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

void sub_2963B43B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
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
        wireless_diagnostics::google::protobuf::RepeatedField<unsigned long long>::Reserve(a2, v7 + 1);
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

uint64_t awd::metrics::BluetoothLowPowerCoreStats::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  if (*(this + 116))
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(1, *(this + 8), a2, a4);
  }

  if (*(v5 + 24) >= 1)
  {
    v6 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(2, *(*(v5 + 16) + 4 * v6++), a2, a4);
    }

    while (v6 < *(v5 + 24));
  }

  if (*(v5 + 40) >= 1)
  {
    v7 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(3, *(*(v5 + 32) + 4 * v7++), a2, a4);
    }

    while (v7 < *(v5 + 40));
  }

  if (*(v5 + 56) >= 1)
  {
    v8 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(4, *(*(v5 + 48) + 8 * v8++), a2, a4);
    }

    while (v8 < *(v5 + 56));
  }

  if (*(v5 + 72) >= 1)
  {
    v9 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(5, *(*(v5 + 64) + 8 * v9++), a2, a4);
    }

    while (v9 < *(v5 + 72));
  }

  if (*(v5 + 88) >= 1)
  {
    v10 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(6, *(*(v5 + 80) + 8 * v10++), a2, a4);
    }

    while (v10 < *(v5 + 88));
  }

  if (*(v5 + 104) >= 1)
  {
    v11 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(7, *(*(v5 + 96) + 8 * v11++), a2, a4);
    }

    while (v11 < *(v5 + 104));
  }

  return this;
}

uint64_t awd::metrics::BluetoothLowPowerCoreStats::ByteSize(wireless_diagnostics::google::protobuf::io::CodedOutputStream **this, unint64_t a2)
{
  if (*(this + 116))
  {
    v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(this[1]) + 1;
  }

  else
  {
    v3 = 0;
  }

  v4 = *(this + 6);
  if (v4 < 1)
  {
    v6 = 0;
  }

  else
  {
    v5 = 0;
    v6 = 0;
    do
    {
      v7 = *(this[2] + v5);
      if (v7 >= 0x80)
      {
        v8 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v7);
        v4 = *(this + 6);
      }

      else
      {
        v8 = 1;
      }

      v6 += v8;
      ++v5;
    }

    while (v5 < v4);
  }

  v9 = *(this + 10);
  if (v9 < 1)
  {
    v11 = 0;
  }

  else
  {
    v10 = 0;
    v11 = 0;
    do
    {
      v12 = *(this[4] + v10);
      if (v12 >= 0x80)
      {
        v13 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v12);
        v9 = *(this + 10);
      }

      else
      {
        v13 = 1;
      }

      v11 += v13;
      ++v10;
    }

    while (v10 < v9);
  }

  v28 = v9;
  LODWORD(v14) = *(this + 14);
  if (v14 < 1)
  {
    v16 = 0;
  }

  else
  {
    v15 = 0;
    v16 = 0;
    do
    {
      v16 += wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this[6] + v15++));
      v14 = *(this + 14);
    }

    while (v15 < v14);
  }

  LODWORD(v17) = *(this + 18);
  v30 = v4;
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
      v19 += wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this[8] + v18++));
      v17 = *(this + 18);
    }

    while (v18 < v17);
  }

  v29 = v6;
  LODWORD(v20) = *(this + 22);
  if (v20 < 1)
  {
    v22 = 0;
  }

  else
  {
    v21 = 0;
    v22 = 0;
    do
    {
      v22 += wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this[10] + v21++));
      v20 = *(this + 22);
    }

    while (v21 < v20);
  }

  LODWORD(v23) = *(this + 26);
  if (v23 < 1)
  {
    v25 = 0;
  }

  else
  {
    v27 = v3;
    v24 = 0;
    v25 = 0;
    do
    {
      v25 += wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this[12] + v24++));
      v23 = *(this + 26);
    }

    while (v24 < v23);
    v3 = v27;
  }

  result = (v29 + v3 + v30 + v11 + v28 + v16 + v14 + v19 + v17 + v22 + v20 + v23 + v25);
  *(this + 28) = result;
  return result;
}

void awd::metrics::BluetoothLowPowerCoreStats::CheckTypeAndMergeFrom(awd::metrics::BluetoothLowPowerCoreStats *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  {
    awd::metrics::BluetoothLowPowerCoreStats::CheckTypeAndMergeFrom();
  }

  awd::metrics::BluetoothLowPowerCoreStats::MergeFrom(this, lpsrc);
}

void awd::metrics::BluetoothLowPowerCoreStats::CopyFrom(awd::metrics::BluetoothLowPowerCoreStats *this, const awd::metrics::BluetoothLowPowerCoreStats *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    awd::metrics::BluetoothLowPowerCoreStats::MergeFrom(this, a2);
  }
}

double awd::metrics::BluetoothLowPowerCoreStats::Swap(awd::metrics::BluetoothLowPowerCoreStats *this, awd::metrics::BluetoothLowPowerCoreStats *a2)
{
  if (a2 != this)
  {
    v2 = *(this + 1);
    v3 = *(this + 2);
    v4 = *(a2 + 2);
    *(this + 1) = *(a2 + 1);
    *(this + 2) = v4;
    v5 = *(a2 + 3);
    *(a2 + 1) = v2;
    *(a2 + 2) = v3;
    v6 = *(this + 3);
    *(this + 3) = v5;
    *(a2 + 3) = v6;
    v7 = *(this + 4);
    *(this + 4) = *(a2 + 4);
    v8 = *(a2 + 5);
    *(a2 + 4) = v7;
    v9 = *(this + 5);
    *(this + 5) = v8;
    *(a2 + 5) = v9;
    v10 = *(this + 6);
    *(this + 6) = *(a2 + 6);
    v11 = *(a2 + 7);
    *(a2 + 6) = v10;
    v12 = *(this + 7);
    *(this + 7) = v11;
    *(a2 + 7) = v12;
    v13 = *(this + 8);
    *(this + 8) = *(a2 + 8);
    v14 = *(a2 + 9);
    *(a2 + 8) = v13;
    v15 = *(this + 9);
    *(this + 9) = v14;
    *(a2 + 9) = v15;
    v16 = *(this + 10);
    *(this + 10) = *(a2 + 10);
    v17 = *(a2 + 11);
    *(a2 + 10) = v16;
    v18 = *(this + 11);
    *(this + 11) = v17;
    *(a2 + 11) = v18;
    v19 = *(this + 12);
    *(this + 12) = *(a2 + 12);
    result = *(a2 + 13);
    *(a2 + 12) = v19;
    v21 = *(this + 13);
    *(this + 13) = result;
    *(a2 + 13) = v21;
    LODWORD(v19) = *(this + 29);
    *(this + 29) = *(a2 + 29);
    *(a2 + 29) = v19;
    LODWORD(v19) = *(this + 28);
    *(this + 28) = *(a2 + 28);
    *(a2 + 28) = v19;
  }

  return result;
}

double awd::metrics::BluetoothAccessoryIdentification::BluetoothAccessoryIdentification(awd::metrics::BluetoothAccessoryIdentification *this)
{
  *(this + 5) = 0;
  *(this + 6) = 0;
  *(this + 14) = 0;
  *(this + 11) = 0;
  *(this + 24) = 0;
  *(this + 15) = 0;
  *(this + 32) = 0;
  *(this + 69) = 0;
  *this = &unk_2A1D4C570;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 3) = 0;
  *(this + 8) = 0;
  v1 = MEMORY[0x29EDC9758];
  *(this + 8) = MEMORY[0x29EDC9758];
  result = 0.0;
  *(this + 72) = 0u;
  *(this + 104) = 0u;
  *(this + 136) = 0u;
  *(this + 152) = 0u;
  *(this + 168) = 0u;
  *(this + 184) = 0u;
  *(this + 200) = 0u;
  *(this + 27) = v1;
  *(this + 28) = v1;
  *(this + 272) = 0;
  *(this + 29) = v1;
  *(this + 30) = v1;
  *(this + 31) = v1;
  *(this + 32) = v1;
  *(this + 33) = v1;
  *(this + 35) = 0;
  return result;
}

double awd::metrics::BluetoothAccessoryIdentification::SharedCtor(awd::metrics::BluetoothAccessoryIdentification *this)
{
  *(this + 69) = 0;
  *(this + 1) = 0;
  v1 = MEMORY[0x29EDC9758];
  *(this + 8) = MEMORY[0x29EDC9758];
  result = 0.0;
  *(this + 9) = 0;
  *(this + 13) = 0;
  *(this + 136) = 0u;
  *(this + 152) = 0u;
  *(this + 168) = 0u;
  *(this + 184) = 0u;
  *(this + 200) = 0u;
  *(this + 27) = v1;
  *(this + 28) = v1;
  *(this + 272) = 0;
  *(this + 29) = v1;
  *(this + 30) = v1;
  *(this + 31) = v1;
  *(this + 32) = v1;
  *(this + 33) = v1;
  *(this + 35) = 0;
  return result;
}

awd::metrics::BluetoothAccessoryIdentification *awd::metrics::BluetoothAccessoryIdentification::BluetoothAccessoryIdentification(awd::metrics::BluetoothAccessoryIdentification *this, const awd::metrics::BluetoothAccessoryIdentification *a2)
{
  *(this + 2) = 0;
  *(this + 5) = 0;
  *(this + 6) = 0;
  *(this + 14) = 0;
  *(this + 11) = 0;
  *(this + 24) = 0;
  *(this + 15) = 0;
  *(this + 32) = 0;
  *(this + 69) = 0;
  *this = &unk_2A1D4C570;
  *(this + 1) = 0;
  *(this + 3) = 0;
  *(this + 8) = 0;
  v3 = MEMORY[0x29EDC9758];
  *(this + 8) = MEMORY[0x29EDC9758];
  *(this + 72) = 0u;
  *(this + 104) = 0u;
  *(this + 136) = 0u;
  *(this + 152) = 0u;
  *(this + 168) = 0u;
  *(this + 184) = 0u;
  *(this + 200) = 0u;
  *(this + 27) = v3;
  *(this + 28) = v3;
  *(this + 272) = 0;
  *(this + 29) = v3;
  *(this + 30) = v3;
  *(this + 31) = v3;
  *(this + 32) = v3;
  *(this + 33) = v3;
  *(this + 35) = 0;
  awd::metrics::BluetoothAccessoryIdentification::MergeFrom(this, a2);
  return this;
}

void sub_2963B4C70(_Unwind_Exception *a1)
{
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<std::string>::TypeHandler>(v1 + 28);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<std::string>::TypeHandler>(v1 + 20);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<std::string>::TypeHandler>(v3);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<std::string>::TypeHandler>(v2);
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(v1);
  _Unwind_Resume(a1);
}

std::string *awd::metrics::BluetoothAccessoryIdentification::MergeFrom(awd::metrics::BluetoothAccessoryIdentification *this, const awd::metrics::BluetoothAccessoryIdentification *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v49);
  }

  wireless_diagnostics::google::protobuf::RepeatedPtrField<std::string>::MergeFrom((this + 16), a2 + 16);
  wireless_diagnostics::google::protobuf::RepeatedPtrField<std::string>::MergeFrom((this + 40), a2 + 40);
  wireless_diagnostics::google::protobuf::RepeatedPtrField<std::string>::MergeFrom((this + 80), a2 + 80);
  result = wireless_diagnostics::google::protobuf::RepeatedPtrField<std::string>::MergeFrom((this + 112), a2 + 112);
  v5 = *(a2 + 70);
  if (!v5)
  {
    goto LABEL_10;
  }

  if (v5)
  {
    v9 = *(a2 + 1);
    *(this + 70) |= 1u;
    *(this + 1) = v9;
    v5 = *(a2 + 70);
    if ((v5 & 8) == 0)
    {
LABEL_6:
      if ((v5 & 0x10) == 0)
      {
        goto LABEL_7;
      }

LABEL_43:
      v12 = *(a2 + 18);
      *(this + 70) |= 0x10u;
      *(this + 18) = v12;
      v5 = *(a2 + 70);
      if ((v5 & 0x20) == 0)
      {
LABEL_8:
        if ((v5 & 0x40) == 0)
        {
          goto LABEL_10;
        }

        goto LABEL_9;
      }

      goto LABEL_44;
    }
  }

  else if ((v5 & 8) == 0)
  {
    goto LABEL_6;
  }

  v10 = *(a2 + 8);
  *(this + 70) |= 8u;
  v11 = *(this + 8);
  if (v11 == MEMORY[0x29EDC9758])
  {
    operator new();
  }

  result = std::string::operator=(v11, v10);
  v5 = *(a2 + 70);
  if ((v5 & 0x10) != 0)
  {
    goto LABEL_43;
  }

LABEL_7:
  if ((v5 & 0x20) == 0)
  {
    goto LABEL_8;
  }

LABEL_44:
  v13 = *(a2 + 19);
  *(this + 70) |= 0x20u;
  *(this + 19) = v13;
  v5 = *(a2 + 70);
  if ((v5 & 0x40) != 0)
  {
LABEL_9:
    v6 = *(a2 + 26);
    *(this + 70) |= 0x40u;
    *(this + 26) = v6;
    v5 = *(a2 + 70);
  }

LABEL_10:
  if ((v5 & 0x1FE00) == 0)
  {
    goto LABEL_19;
  }

  if ((v5 & 0x200) != 0)
  {
    v14 = *(a2 + 27);
    *(this + 70) |= 0x200u;
    *(this + 27) = v14;
    v5 = *(a2 + 70);
    if ((v5 & 0x400) == 0)
    {
LABEL_13:
      if ((v5 & 0x800) == 0)
      {
        goto LABEL_14;
      }

      goto LABEL_48;
    }
  }

  else if ((v5 & 0x400) == 0)
  {
    goto LABEL_13;
  }

  v15 = *(a2 + 34);
  *(this + 70) |= 0x400u;
  *(this + 34) = v15;
  v5 = *(a2 + 70);
  if ((v5 & 0x800) == 0)
  {
LABEL_14:
    if ((v5 & 0x1000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_49;
  }

LABEL_48:
  v16 = *(a2 + 35);
  *(this + 70) |= 0x800u;
  *(this + 35) = v16;
  v5 = *(a2 + 70);
  if ((v5 & 0x1000) == 0)
  {
LABEL_15:
    if ((v5 & 0x2000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_50;
  }

LABEL_49:
  v17 = *(a2 + 36);
  *(this + 70) |= 0x1000u;
  *(this + 36) = v17;
  v5 = *(a2 + 70);
  if ((v5 & 0x2000) == 0)
  {
LABEL_16:
    if ((v5 & 0x4000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_51;
  }

LABEL_50:
  v18 = *(a2 + 37);
  *(this + 70) |= 0x2000u;
  *(this + 37) = v18;
  v5 = *(a2 + 70);
  if ((v5 & 0x4000) == 0)
  {
LABEL_17:
    if ((v5 & 0x8000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

LABEL_51:
  v19 = *(a2 + 38);
  *(this + 70) |= 0x4000u;
  *(this + 38) = v19;
  v5 = *(a2 + 70);
  if ((v5 & 0x8000) != 0)
  {
LABEL_18:
    v7 = *(a2 + 39);
    *(this + 70) |= 0x8000u;
    *(this + 39) = v7;
    v5 = *(a2 + 70);
  }

LABEL_19:
  if ((v5 & 0xFF0000) == 0)
  {
    goto LABEL_29;
  }

  if ((v5 & 0x10000) != 0)
  {
    v20 = *(a2 + 40);
    *(this + 70) |= 0x10000u;
    *(this + 40) = v20;
    v5 = *(a2 + 70);
    if ((v5 & 0x20000) == 0)
    {
LABEL_22:
      if ((v5 & 0x40000) == 0)
      {
        goto LABEL_23;
      }

      goto LABEL_55;
    }
  }

  else if ((v5 & 0x20000) == 0)
  {
    goto LABEL_22;
  }

  v21 = *(a2 + 41);
  *(this + 70) |= 0x20000u;
  *(this + 41) = v21;
  v5 = *(a2 + 70);
  if ((v5 & 0x40000) == 0)
  {
LABEL_23:
    if ((v5 & 0x80000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_56;
  }

LABEL_55:
  v22 = *(a2 + 42);
  *(this + 70) |= 0x40000u;
  *(this + 42) = v22;
  v5 = *(a2 + 70);
  if ((v5 & 0x80000) == 0)
  {
LABEL_24:
    if ((v5 & 0x100000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_57;
  }

LABEL_56:
  v23 = *(a2 + 43);
  *(this + 70) |= 0x80000u;
  *(this + 43) = v23;
  v5 = *(a2 + 70);
  if ((v5 & 0x100000) == 0)
  {
LABEL_25:
    if ((v5 & 0x200000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_58;
  }

LABEL_57:
  v24 = *(a2 + 44);
  *(this + 70) |= 0x100000u;
  *(this + 44) = v24;
  v5 = *(a2 + 70);
  if ((v5 & 0x200000) == 0)
  {
LABEL_26:
    if ((v5 & 0x400000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_59;
  }

LABEL_58:
  v25 = *(a2 + 45);
  *(this + 70) |= 0x200000u;
  *(this + 45) = v25;
  v5 = *(a2 + 70);
  if ((v5 & 0x400000) == 0)
  {
LABEL_27:
    if ((v5 & 0x800000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_28;
  }

LABEL_59:
  v26 = *(a2 + 46);
  *(this + 70) |= 0x400000u;
  *(this + 46) = v26;
  v5 = *(a2 + 70);
  if ((v5 & 0x800000) != 0)
  {
LABEL_28:
    v8 = *(a2 + 47);
    *(this + 70) |= 0x800000u;
    *(this + 47) = v8;
    v5 = *(a2 + 70);
  }

LABEL_29:
  if (!HIBYTE(v5))
  {
    goto LABEL_73;
  }

  if ((v5 & 0x1000000) != 0)
  {
    v27 = *(a2 + 48);
    *(this + 70) |= 0x1000000u;
    *(this + 48) = v27;
    v5 = *(a2 + 70);
    if ((v5 & 0x2000000) == 0)
    {
LABEL_32:
      if ((v5 & 0x4000000) == 0)
      {
        goto LABEL_33;
      }

      goto LABEL_63;
    }
  }

  else if ((v5 & 0x2000000) == 0)
  {
    goto LABEL_32;
  }

  v28 = *(a2 + 49);
  *(this + 70) |= 0x2000000u;
  *(this + 49) = v28;
  v5 = *(a2 + 70);
  if ((v5 & 0x4000000) == 0)
  {
LABEL_33:
    if ((v5 & 0x8000000) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_64;
  }

LABEL_63:
  v29 = *(a2 + 50);
  *(this + 70) |= 0x4000000u;
  *(this + 50) = v29;
  v5 = *(a2 + 70);
  if ((v5 & 0x8000000) == 0)
  {
LABEL_34:
    if ((v5 & 0x10000000) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_65;
  }

LABEL_64:
  v30 = *(a2 + 51);
  *(this + 70) |= 0x8000000u;
  *(this + 51) = v30;
  v5 = *(a2 + 70);
  if ((v5 & 0x10000000) == 0)
  {
LABEL_35:
    if ((v5 & 0x20000000) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_66;
  }

LABEL_65:
  v31 = *(a2 + 52);
  *(this + 70) |= 0x10000000u;
  *(this + 52) = v31;
  v5 = *(a2 + 70);
  if ((v5 & 0x20000000) == 0)
  {
LABEL_36:
    if ((v5 & 0x40000000) == 0)
    {
      goto LABEL_37;
    }

    goto LABEL_67;
  }

LABEL_66:
  v32 = *(a2 + 53);
  *(this + 70) |= 0x20000000u;
  *(this + 53) = v32;
  v5 = *(a2 + 70);
  if ((v5 & 0x40000000) == 0)
  {
LABEL_37:
    if ((v5 & 0x80000000) == 0)
    {
      goto LABEL_73;
    }

    goto LABEL_70;
  }

LABEL_67:
  v33 = *(a2 + 27);
  *(this + 70) |= 0x40000000u;
  v34 = *(this + 27);
  if (v34 == MEMORY[0x29EDC9758])
  {
    operator new();
  }

  result = std::string::operator=(v34, v33);
  if ((*(a2 + 70) & 0x80000000) != 0)
  {
LABEL_70:
    v35 = *(a2 + 28);
    *(this + 70) |= 0x80000000;
    v36 = *(this + 28);
    if (v36 == MEMORY[0x29EDC9758])
    {
      operator new();
    }

    result = std::string::operator=(v36, v35);
  }

LABEL_73:
  LOBYTE(v37) = *(a2 + 284);
  if (!v37)
  {
    return result;
  }

  if (*(a2 + 284))
  {
    v38 = *(a2 + 272);
    *(this + 71) |= 1u;
    *(this + 272) = v38;
    v37 = *(a2 + 71);
    if ((v37 & 2) == 0)
    {
LABEL_76:
      if ((v37 & 4) == 0)
      {
        goto LABEL_77;
      }

      goto LABEL_85;
    }
  }

  else if ((*(a2 + 284) & 2) == 0)
  {
    goto LABEL_76;
  }

  v39 = *(a2 + 29);
  *(this + 71) |= 2u;
  v40 = *(this + 29);
  if (v40 == MEMORY[0x29EDC9758])
  {
    operator new();
  }

  result = std::string::operator=(v40, v39);
  v37 = *(a2 + 71);
  if ((v37 & 4) == 0)
  {
LABEL_77:
    if ((v37 & 8) == 0)
    {
      goto LABEL_78;
    }

    goto LABEL_88;
  }

LABEL_85:
  v41 = *(a2 + 30);
  *(this + 71) |= 4u;
  v42 = *(this + 30);
  if (v42 == MEMORY[0x29EDC9758])
  {
    operator new();
  }

  result = std::string::operator=(v42, v41);
  v37 = *(a2 + 71);
  if ((v37 & 8) == 0)
  {
LABEL_78:
    if ((v37 & 0x10) == 0)
    {
      goto LABEL_79;
    }

    goto LABEL_91;
  }

LABEL_88:
  v43 = *(a2 + 31);
  *(this + 71) |= 8u;
  v44 = *(this + 31);
  if (v44 == MEMORY[0x29EDC9758])
  {
    operator new();
  }

  result = std::string::operator=(v44, v43);
  v37 = *(a2 + 71);
  if ((v37 & 0x10) == 0)
  {
LABEL_79:
    if ((v37 & 0x20) == 0)
    {
      return result;
    }

    goto LABEL_94;
  }

LABEL_91:
  v45 = *(a2 + 32);
  *(this + 71) |= 0x10u;
  v46 = *(this + 32);
  if (v46 == MEMORY[0x29EDC9758])
  {
    operator new();
  }

  result = std::string::operator=(v46, v45);
  if ((*(a2 + 71) & 0x20) != 0)
  {
LABEL_94:
    v47 = *(a2 + 33);
    *(this + 71) |= 0x20u;
    v48 = *(this + 33);
    if (v48 == MEMORY[0x29EDC9758])
    {
      operator new();
    }

    return std::string::operator=(v48, v47);
  }

  return result;
}

void sub_2963B53A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::metrics::BluetoothAccessoryIdentification::~BluetoothAccessoryIdentification(awd::metrics::BluetoothAccessoryIdentification *this)
{
  *this = &unk_2A1D4C570;
  v2 = (this + 112);
  awd::metrics::BluetoothAccessoryIdentification::SharedDtor(this);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<std::string>::TypeHandler>(v2);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<std::string>::TypeHandler>(this + 20);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<std::string>::TypeHandler>(this + 10);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<std::string>::TypeHandler>(this + 4);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  awd::metrics::BluetoothAccessoryIdentification::~BluetoothAccessoryIdentification(this);

  JUMPOUT(0x29C259F00);
}

void *awd::metrics::BluetoothAccessoryIdentification::SharedDtor(void *this)
{
  v1 = this;
  v2 = this[8];
  v3 = MEMORY[0x29EDC9758];
  if (v2 != MEMORY[0x29EDC9758] && v2 != 0)
  {
    if (*(v2 + 23) < 0)
    {
      operator delete(*v2);
    }

    this = MEMORY[0x29C259F00](v2, 0x1012C40EC159624);
  }

  v5 = v1[27];
  if (v5 != v3 && v5 != 0)
  {
    if (*(v5 + 23) < 0)
    {
      operator delete(*v5);
    }

    this = MEMORY[0x29C259F00](v5, 0x1012C40EC159624);
  }

  v7 = v1[28];
  if (v7 != v3 && v7 != 0)
  {
    if (*(v7 + 23) < 0)
    {
      operator delete(*v7);
    }

    this = MEMORY[0x29C259F00](v7, 0x1012C40EC159624);
  }

  v9 = v1[29];
  if (v9 != v3 && v9 != 0)
  {
    if (*(v9 + 23) < 0)
    {
      operator delete(*v9);
    }

    this = MEMORY[0x29C259F00](v9, 0x1012C40EC159624);
  }

  v11 = v1[30];
  if (v11 != v3 && v11)
  {
    if (*(v11 + 23) < 0)
    {
      operator delete(*v11);
    }

    this = MEMORY[0x29C259F00](v11, 0x1012C40EC159624);
  }

  v12 = v1[31];
  if (v12 != v3 && v12)
  {
    if (*(v12 + 23) < 0)
    {
      operator delete(*v12);
    }

    this = MEMORY[0x29C259F00](v12, 0x1012C40EC159624);
  }

  v13 = v1[32];
  if (v13 != v3 && v13)
  {
    if (*(v13 + 23) < 0)
    {
      operator delete(*v13);
    }

    this = MEMORY[0x29C259F00](v13, 0x1012C40EC159624);
  }

  v14 = v1[33];
  if (v14 != v3 && v14)
  {
    if (*(v14 + 23) < 0)
    {
      operator delete(*v14);
    }

    JUMPOUT(0x29C259F00);
  }

  return this;
}

uint64_t awd::metrics::BluetoothAccessoryIdentification::default_instance(awd::metrics::BluetoothAccessoryIdentification *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = awd::metrics::BluetoothAccessoryIdentification::default_instance_;
  if (!awd::metrics::BluetoothAccessoryIdentification::default_instance_)
  {
    awd::metrics::protobuf_AddDesc_Bluetooth_2eproto(0, a2, a3, a4);
    return awd::metrics::BluetoothAccessoryIdentification::default_instance_;
  }

  return result;
}

uint64_t awd::metrics::BluetoothAccessoryIdentification::Clear(awd::metrics::BluetoothAccessoryIdentification *this)
{
  v2 = *(this + 70);
  if (v2)
  {
    *(this + 1) = 0;
    if ((v2 & 8) != 0)
    {
      v3 = *(this + 8);
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

    *(this + 9) = 0;
    *(this + 26) = 0;
    v2 = *(this + 70);
  }

  if ((v2 & 0x1FE00) != 0)
  {
    *(this + 27) = 0;
    *(this + 18) = 0;
    *(this + 19) = 0;
    *(this + 17) = 0;
  }

  if ((v2 & 0xFF0000) != 0)
  {
    *(this + 10) = 0u;
    *(this + 11) = 0u;
  }

  if (HIBYTE(v2))
  {
    *(this + 24) = 0;
    *(this + 25) = 0;
    *(this + 26) = 0;
    if ((v2 & 0x40000000) != 0)
    {
      v4 = *(this + 27);
      if (v4 != MEMORY[0x29EDC9758])
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

    if ((*(this + 70) & 0x80000000) != 0)
    {
      v7 = *(this + 28);
      if (v7 != MEMORY[0x29EDC9758])
      {
        if (*(v7 + 23) < 0)
        {
          **v7 = 0;
          *(v7 + 8) = 0;
        }

        else
        {
          *v7 = 0;
          *(v7 + 23) = 0;
        }
      }
    }
  }

  v5 = *(this + 284);
  if (v5)
  {
    *(this + 272) = 0;
    if ((v5 & 2) != 0)
    {
      v6 = *(this + 29);
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

    if ((*(this + 284) & 4) != 0)
    {
      v8 = *(this + 30);
      if (v8 != MEMORY[0x29EDC9758])
      {
        if (*(v8 + 23) < 0)
        {
          **v8 = 0;
          *(v8 + 8) = 0;
        }

        else
        {
          *v8 = 0;
          *(v8 + 23) = 0;
        }
      }
    }

    if ((*(this + 284) & 8) != 0)
    {
      v9 = *(this + 31);
      if (v9 != MEMORY[0x29EDC9758])
      {
        if (*(v9 + 23) < 0)
        {
          **v9 = 0;
          *(v9 + 8) = 0;
        }

        else
        {
          *v9 = 0;
          *(v9 + 23) = 0;
        }
      }
    }

    if ((*(this + 284) & 0x10) != 0)
    {
      v10 = *(this + 32);
      if (v10 != MEMORY[0x29EDC9758])
      {
        if (*(v10 + 23) < 0)
        {
          **v10 = 0;
          *(v10 + 8) = 0;
        }

        else
        {
          *v10 = 0;
          *(v10 + 23) = 0;
        }
      }
    }

    if ((*(this + 284) & 0x20) != 0)
    {
      v11 = *(this + 33);
      if (v11 != MEMORY[0x29EDC9758])
      {
        if (*(v11 + 23) < 0)
        {
          **v11 = 0;
          *(v11 + 8) = 0;
        }

        else
        {
          *v11 = 0;
          *(v11 + 23) = 0;
        }
      }
    }
  }

  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Clear<wireless_diagnostics::google::protobuf::RepeatedPtrField<std::string>::TypeHandler>(this + 16);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Clear<wireless_diagnostics::google::protobuf::RepeatedPtrField<std::string>::TypeHandler>(this + 40);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Clear<wireless_diagnostics::google::protobuf::RepeatedPtrField<std::string>::TypeHandler>(this + 80);
  result = wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Clear<wireless_diagnostics::google::protobuf::RepeatedPtrField<std::string>::TypeHandler>(this + 112);
  *(this + 35) = 0;
  return result;
}

uint64_t awd::metrics::BluetoothAccessoryIdentification::MergePartialFromCodedStream(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
{
  v4 = this;
LABEL_2:
  while (2)
  {
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

    v7 = v6 & 7;
    switch(v6 >> 3)
    {
      case 1u:
        if ((v6 & 7) != 0)
        {
          goto LABEL_85;
        }

        v8 = *(a2 + 1);
        v9 = *(a2 + 2);
        if (v8 < v9)
        {
          v10 = *v8;
          if ((v10 & 0x8000000000000000) == 0)
          {
            *(v4 + 8) = v10;
            v11 = v8 + 1;
            *(a2 + 1) = v11;
LABEL_91:
            *(v4 + 280) |= 1u;
            if (v11 >= v9 || *v11 != 18)
            {
              continue;
            }

            goto LABEL_93;
          }
        }

        this = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, (v4 + 8));
        if (this)
        {
          v11 = *(a2 + 1);
          v9 = *(a2 + 2);
          goto LABEL_91;
        }

        break;
      case 2u:
        if (v7 != 2)
        {
          goto LABEL_85;
        }

LABEL_94:
        v42 = *(v4 + 28);
        v43 = *(v4 + 24);
        if (v43 >= v42)
        {
          if (v42 == *(v4 + 32))
          {
            this = wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((v4 + 16));
            v42 = *(v4 + 28);
          }

          *(v4 + 28) = v42 + 1;
          v44 = wireless_diagnostics::google::protobuf::internal::StringTypeHandlerBase::New(this);
          v45 = *(v4 + 16);
          v46 = *(v4 + 24);
          *(v4 + 24) = v46 + 1;
          *(v45 + 8 * v46) = v44;
        }

        else
        {
          *(v4 + 24) = v43 + 1;
        }

        this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadBytes();
        if (!this)
        {
          return this;
        }

        v11 = *(a2 + 1);
        if (v11 >= *(a2 + 2))
        {
          continue;
        }

        v47 = *v11;
        if (v47 == 18)
        {
LABEL_93:
          *(a2 + 1) = v11 + 1;
          goto LABEL_94;
        }

        if (v47 != 26)
        {
          continue;
        }

        do
        {
          *(a2 + 1) = v11 + 1;
LABEL_104:
          v48 = *(v4 + 52);
          v49 = *(v4 + 48);
          if (v49 >= v48)
          {
            if (v48 == *(v4 + 56))
            {
              this = wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((v4 + 40));
              v48 = *(v4 + 52);
            }

            *(v4 + 52) = v48 + 1;
            v50 = wireless_diagnostics::google::protobuf::internal::StringTypeHandlerBase::New(this);
            v51 = *(v4 + 40);
            v52 = *(v4 + 48);
            *(v4 + 48) = v52 + 1;
            *(v51 + 8 * v52) = v50;
          }

          else
          {
            *(v4 + 48) = v49 + 1;
          }

          this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadBytes();
          if (!this)
          {
            return this;
          }

          v11 = *(a2 + 1);
          if (v11 >= *(a2 + 2))
          {
            goto LABEL_2;
          }

          v53 = *v11;
        }

        while (v53 == 26);
        if (v53 != 34)
        {
          continue;
        }

        *(a2 + 1) = v11 + 1;
LABEL_114:
        *(v4 + 280) |= 8u;
        if (*(v4 + 64) == MEMORY[0x29EDC9758])
        {
          operator new();
        }

        this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
        if (!this)
        {
          return this;
        }

        v54 = *(a2 + 1);
        v18 = *(a2 + 2);
        if (v54 >= v18 || *v54 != 40)
        {
          continue;
        }

        v19 = v54 + 1;
        *(a2 + 1) = v19;
LABEL_120:
        if (v19 >= v18 || (v55 = *v19, v55 < 0))
        {
          this = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, (v4 + 72));
          if (!this)
          {
            return this;
          }

          v56 = *(a2 + 1);
          v18 = *(a2 + 2);
        }

        else
        {
          *(v4 + 72) = v55;
          v56 = v19 + 1;
          *(a2 + 1) = v56;
        }

        *(v4 + 280) |= 0x10u;
        if (v56 >= v18 || *v56 != 48)
        {
          continue;
        }

        v27 = v56 + 1;
        *(a2 + 1) = v27;
LABEL_128:
        if (v27 >= v18 || (v57 = *v27, v57 < 0))
        {
          this = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, (v4 + 76));
          if (!this)
          {
            return this;
          }

          v58 = *(a2 + 1);
          v18 = *(a2 + 2);
        }

        else
        {
          *(v4 + 76) = v57;
          v58 = v27 + 1;
          *(a2 + 1) = v58;
        }

        *(v4 + 280) |= 0x20u;
        if (v58 >= v18 || *v58 != 56)
        {
          continue;
        }

        v30 = v58 + 1;
        *(a2 + 1) = v30;
LABEL_136:
        if (v30 >= v18 || (v59 = *v30, v59 < 0))
        {
          this = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, (v4 + 104));
          if (!this)
          {
            return this;
          }

          v60 = *(a2 + 1);
          v18 = *(a2 + 2);
        }

        else
        {
          *(v4 + 104) = v59;
          v60 = v30 + 1;
          *(a2 + 1) = v60;
        }

        *(v4 + 280) |= 0x40u;
        if (v60 >= v18 || *v60 != 66)
        {
          continue;
        }

        do
        {
          *(a2 + 1) = v60 + 1;
LABEL_144:
          v61 = *(v4 + 92);
          v62 = *(v4 + 88);
          if (v62 >= v61)
          {
            if (v61 == *(v4 + 96))
            {
              this = wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((v4 + 80));
              v61 = *(v4 + 92);
            }

            *(v4 + 92) = v61 + 1;
            v63 = wireless_diagnostics::google::protobuf::internal::StringTypeHandlerBase::New(this);
            v64 = *(v4 + 80);
            v65 = *(v4 + 88);
            *(v4 + 88) = v65 + 1;
            *(v64 + 8 * v65) = v63;
          }

          else
          {
            *(v4 + 88) = v62 + 1;
          }

          this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadBytes();
          if (!this)
          {
            return this;
          }

          v60 = *(a2 + 1);
          if (v60 >= *(a2 + 2))
          {
            goto LABEL_2;
          }

          v66 = *v60;
        }

        while (v66 == 66);
        if (v66 != 74)
        {
          continue;
        }

        do
        {
          *(a2 + 1) = v60 + 1;
LABEL_154:
          v67 = *(v4 + 124);
          v68 = *(v4 + 120);
          if (v68 >= v67)
          {
            if (v67 == *(v4 + 128))
            {
              this = wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((v4 + 112));
              v67 = *(v4 + 124);
            }

            *(v4 + 124) = v67 + 1;
            v69 = wireless_diagnostics::google::protobuf::internal::StringTypeHandlerBase::New(this);
            v70 = *(v4 + 112);
            v71 = *(v4 + 120);
            *(v4 + 120) = v71 + 1;
            *(v70 + 8 * v71) = v69;
          }

          else
          {
            *(v4 + 120) = v68 + 1;
          }

          this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadBytes();
          if (!this)
          {
            return this;
          }

          v60 = *(a2 + 1);
          v12 = *(a2 + 2);
          if (v60 >= v12)
          {
            goto LABEL_2;
          }

          v72 = *v60;
        }

        while (v72 == 74);
        if (v72 != 80)
        {
          continue;
        }

        v21 = v60 + 1;
        *(a2 + 1) = v21;
LABEL_164:
        if (v21 >= v12 || (v73 = *v21, v73 < 0))
        {
          this = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, (v4 + 108));
          if (!this)
          {
            return this;
          }

          v74 = *(a2 + 1);
          v12 = *(a2 + 2);
        }

        else
        {
          *(v4 + 108) = v73;
          v74 = v21 + 1;
          *(a2 + 1) = v74;
        }

        *(v4 + 280) |= 0x200u;
        if (v74 >= v12 || *v74 != 88)
        {
          continue;
        }

        v32 = v74 + 1;
        *(a2 + 1) = v32;
LABEL_172:
        if (v32 >= v12 || (v75 = *v32, v75 < 0))
        {
          this = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, (v4 + 136));
          if (!this)
          {
            return this;
          }

          v76 = *(a2 + 1);
          v12 = *(a2 + 2);
        }

        else
        {
          *(v4 + 136) = v75;
          v76 = v32 + 1;
          *(a2 + 1) = v76;
        }

        *(v4 + 280) |= 0x400u;
        if (v76 >= v12 || *v76 != 96)
        {
          continue;
        }

        v17 = v76 + 1;
        *(a2 + 1) = v17;
LABEL_180:
        if (v17 >= v12 || (v77 = *v17, v77 < 0))
        {
          this = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, (v4 + 140));
          if (!this)
          {
            return this;
          }

          v78 = *(a2 + 1);
          v12 = *(a2 + 2);
        }

        else
        {
          *(v4 + 140) = v77;
          v78 = v17 + 1;
          *(a2 + 1) = v78;
        }

        *(v4 + 280) |= 0x800u;
        if (v78 >= v12 || *v78 != 104)
        {
          continue;
        }

        v20 = v78 + 1;
        *(a2 + 1) = v20;
LABEL_188:
        if (v20 >= v12 || (v79 = *v20, v79 < 0))
        {
          this = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, (v4 + 144));
          if (!this)
          {
            return this;
          }

          v80 = *(a2 + 1);
          v12 = *(a2 + 2);
        }

        else
        {
          *(v4 + 144) = v79;
          v80 = v20 + 1;
          *(a2 + 1) = v80;
        }

        *(v4 + 280) |= 0x1000u;
        if (v80 >= v12 || *v80 != 112)
        {
          continue;
        }

        v29 = v80 + 1;
        *(a2 + 1) = v29;
LABEL_196:
        if (v29 >= v12 || (v81 = *v29, v81 < 0))
        {
          this = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, (v4 + 148));
          if (!this)
          {
            return this;
          }

          v82 = *(a2 + 1);
          v12 = *(a2 + 2);
        }

        else
        {
          *(v4 + 148) = v81;
          v82 = v29 + 1;
          *(a2 + 1) = v82;
        }

        *(v4 + 280) |= 0x2000u;
        if (v82 >= v12 || *v82 != 120)
        {
          continue;
        }

        v15 = v82 + 1;
        *(a2 + 1) = v15;
LABEL_204:
        if (v15 >= v12 || (v83 = *v15, v83 < 0))
        {
          this = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, (v4 + 152));
          if (!this)
          {
            return this;
          }

          v84 = *(a2 + 1);
          v12 = *(a2 + 2);
        }

        else
        {
          *(v4 + 152) = v83;
          v84 = (v15 + 1);
          *(a2 + 1) = v84;
        }

        *(v4 + 280) |= 0x4000u;
        if (v12 - v84 < 2 || *v84 != 128 || v84[1] != 1)
        {
          continue;
        }

        v24 = (v84 + 2);
        *(a2 + 1) = v24;
LABEL_213:
        if (v24 >= v12 || (v85 = *v24, v85 < 0))
        {
          this = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, (v4 + 156));
          if (!this)
          {
            return this;
          }

          v86 = *(a2 + 1);
          v12 = *(a2 + 2);
        }

        else
        {
          *(v4 + 156) = v85;
          v86 = (v24 + 1);
          *(a2 + 1) = v86;
        }

        *(v4 + 280) |= 0x8000u;
        if (v12 - v86 < 2 || *v86 != 136 || v86[1] != 1)
        {
          continue;
        }

        v14 = (v86 + 2);
        *(a2 + 1) = v14;
LABEL_222:
        if (v14 >= v12 || (v87 = *v14, v87 < 0))
        {
          this = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, (v4 + 160));
          if (!this)
          {
            return this;
          }

          v88 = *(a2 + 1);
          v12 = *(a2 + 2);
        }

        else
        {
          *(v4 + 160) = v87;
          v88 = (v14 + 1);
          *(a2 + 1) = v88;
        }

        *(v4 + 280) |= 0x10000u;
        if (v12 - v88 < 2 || *v88 != 144 || v88[1] != 1)
        {
          continue;
        }

        v25 = (v88 + 2);
        *(a2 + 1) = v25;
LABEL_231:
        if (v25 >= v12 || (v89 = *v25, v89 < 0))
        {
          this = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, (v4 + 164));
          if (!this)
          {
            return this;
          }

          v90 = *(a2 + 1);
          v12 = *(a2 + 2);
        }

        else
        {
          *(v4 + 164) = v89;
          v90 = (v25 + 1);
          *(a2 + 1) = v90;
        }

        *(v4 + 280) |= 0x20000u;
        if (v12 - v90 < 2 || *v90 != 152 || v90[1] != 1)
        {
          continue;
        }

        v31 = (v90 + 2);
        *(a2 + 1) = v31;
LABEL_240:
        if (v31 >= v12 || (v91 = *v31, v91 < 0))
        {
          this = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, (v4 + 168));
          if (!this)
          {
            return this;
          }

          v92 = *(a2 + 1);
          v12 = *(a2 + 2);
        }

        else
        {
          *(v4 + 168) = v91;
          v92 = (v31 + 1);
          *(a2 + 1) = v92;
        }

        *(v4 + 280) |= 0x40000u;
        if (v12 - v92 < 2 || *v92 != 160 || v92[1] != 1)
        {
          continue;
        }

        v37 = (v92 + 2);
        *(a2 + 1) = v37;
LABEL_249:
        if (v37 >= v12 || (v93 = *v37, v93 < 0))
        {
          this = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, (v4 + 172));
          if (!this)
          {
            return this;
          }

          v94 = *(a2 + 1);
          v12 = *(a2 + 2);
        }

        else
        {
          *(v4 + 172) = v93;
          v94 = (v37 + 1);
          *(a2 + 1) = v94;
        }

        *(v4 + 280) |= 0x80000u;
        if (v12 - v94 < 2 || *v94 != 168 || v94[1] != 1)
        {
          continue;
        }

        v26 = (v94 + 2);
        *(a2 + 1) = v26;
LABEL_258:
        if (v26 >= v12 || (v95 = *v26, v95 < 0))
        {
          this = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, (v4 + 176));
          if (!this)
          {
            return this;
          }

          v96 = *(a2 + 1);
          v12 = *(a2 + 2);
        }

        else
        {
          *(v4 + 176) = v95;
          v96 = (v26 + 1);
          *(a2 + 1) = v96;
        }

        *(v4 + 280) |= 0x100000u;
        if (v12 - v96 < 2 || *v96 != 176 || v96[1] != 1)
        {
          continue;
        }

        v28 = (v96 + 2);
        *(a2 + 1) = v28;
LABEL_267:
        if (v28 >= v12 || (v97 = *v28, v97 < 0))
        {
          this = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, (v4 + 180));
          if (!this)
          {
            return this;
          }

          v98 = *(a2 + 1);
          v12 = *(a2 + 2);
        }

        else
        {
          *(v4 + 180) = v97;
          v98 = (v28 + 1);
          *(a2 + 1) = v98;
        }

        *(v4 + 280) |= 0x200000u;
        if (v12 - v98 < 2 || *v98 != 184 || v98[1] != 1)
        {
          continue;
        }

        v36 = (v98 + 2);
        *(a2 + 1) = v36;
LABEL_276:
        if (v36 >= v12 || (v99 = *v36, v99 < 0))
        {
          this = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, (v4 + 184));
          if (!this)
          {
            return this;
          }

          v100 = *(a2 + 1);
          v12 = *(a2 + 2);
        }

        else
        {
          *(v4 + 184) = v99;
          v100 = (v36 + 1);
          *(a2 + 1) = v100;
        }

        *(v4 + 280) |= 0x400000u;
        if (v12 - v100 < 2 || *v100 != 192 || v100[1] != 1)
        {
          continue;
        }

        v38 = (v100 + 2);
        *(a2 + 1) = v38;
LABEL_285:
        if (v38 >= v12 || (v101 = *v38, v101 < 0))
        {
          this = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, (v4 + 188));
          if (!this)
          {
            return this;
          }

          v102 = *(a2 + 1);
          v12 = *(a2 + 2);
        }

        else
        {
          *(v4 + 188) = v101;
          v102 = (v38 + 1);
          *(a2 + 1) = v102;
        }

        *(v4 + 280) |= 0x800000u;
        if (v12 - v102 < 2 || *v102 != 200 || v102[1] != 1)
        {
          continue;
        }

        v23 = (v102 + 2);
        *(a2 + 1) = v23;
LABEL_294:
        if (v23 >= v12 || (v103 = *v23, v103 < 0))
        {
          this = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, (v4 + 192));
          if (!this)
          {
            return this;
          }

          v104 = *(a2 + 1);
          v12 = *(a2 + 2);
        }

        else
        {
          *(v4 + 192) = v103;
          v104 = (v23 + 1);
          *(a2 + 1) = v104;
        }

        *(v4 + 280) |= 0x1000000u;
        if (v12 - v104 < 2 || *v104 != 208 || v104[1] != 1)
        {
          continue;
        }

        v22 = (v104 + 2);
        *(a2 + 1) = v22;
LABEL_303:
        if (v22 >= v12 || (v105 = *v22, v105 < 0))
        {
          this = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, (v4 + 196));
          if (!this)
          {
            return this;
          }

          v106 = *(a2 + 1);
          v12 = *(a2 + 2);
        }

        else
        {
          *(v4 + 196) = v105;
          v106 = (v22 + 1);
          *(a2 + 1) = v106;
        }

        *(v4 + 280) |= 0x2000000u;
        if (v12 - v106 < 2 || *v106 != 216 || v106[1] != 1)
        {
          continue;
        }

        v41 = (v106 + 2);
        *(a2 + 1) = v41;
LABEL_312:
        if (v41 >= v12 || (v107 = *v41, v107 < 0))
        {
          this = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, (v4 + 200));
          if (!this)
          {
            return this;
          }

          v108 = *(a2 + 1);
          v12 = *(a2 + 2);
        }

        else
        {
          *(v4 + 200) = v107;
          v108 = (v41 + 1);
          *(a2 + 1) = v108;
        }

        *(v4 + 280) |= 0x4000000u;
        if (v12 - v108 < 2 || *v108 != 224 || v108[1] != 1)
        {
          continue;
        }

        v13 = (v108 + 2);
        *(a2 + 1) = v13;
LABEL_321:
        if (v13 >= v12 || (v109 = *v13, v109 < 0))
        {
          this = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, (v4 + 204));
          if (!this)
          {
            return this;
          }

          v110 = *(a2 + 1);
          v12 = *(a2 + 2);
        }

        else
        {
          *(v4 + 204) = v109;
          v110 = (v13 + 1);
          *(a2 + 1) = v110;
        }

        *(v4 + 280) |= 0x8000000u;
        if (v12 - v110 < 2 || *v110 != 232 || v110[1] != 1)
        {
          continue;
        }

        v39 = (v110 + 2);
        *(a2 + 1) = v39;
LABEL_330:
        if (v39 >= v12 || (v111 = *v39, v111 < 0))
        {
          this = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, (v4 + 208));
          if (!this)
          {
            return this;
          }

          v112 = *(a2 + 1);
          v12 = *(a2 + 2);
        }

        else
        {
          *(v4 + 208) = v111;
          v112 = (v39 + 1);
          *(a2 + 1) = v112;
        }

        *(v4 + 280) |= 0x10000000u;
        if (v12 - v112 < 2 || *v112 != 240 || v112[1] != 1)
        {
          continue;
        }

        v40 = (v112 + 2);
        *(a2 + 1) = v40;
LABEL_339:
        if (v40 >= v12 || (v113 = *v40, v113 < 0))
        {
          this = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, (v4 + 212));
          if (!this)
          {
            return this;
          }

          v114 = *(a2 + 1);
          v12 = *(a2 + 2);
        }

        else
        {
          *(v4 + 212) = v113;
          v114 = (v40 + 1);
          *(a2 + 1) = v114;
        }

        v33 = *(v4 + 280) | 0x20000000;
        *(v4 + 280) = v33;
        if (v12 - v114 < 2 || *v114 != 250 || v114[1] != 1)
        {
          continue;
        }

        *(a2 + 1) = v114 + 2;
LABEL_348:
        *(v4 + 280) = v33 | 0x40000000;
        if (*(v4 + 216) == MEMORY[0x29EDC9758])
        {
          operator new();
        }

        this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
        if (!this)
        {
          return this;
        }

        v115 = *(a2 + 1);
        if (*(a2 + 4) - v115 < 2 || *v115 != 130 || v115[1] != 2)
        {
          continue;
        }

        *(a2 + 1) = v115 + 2;
LABEL_355:
        *(v4 + 280) |= 0x80000000;
        if (*(v4 + 224) == MEMORY[0x29EDC9758])
        {
          operator new();
        }

        this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
        if (!this)
        {
          return this;
        }

        v116 = *(a2 + 1);
        v34 = *(a2 + 2);
        if (v34 - v116 < 2 || *v116 != 136 || v116[1] != 2)
        {
          continue;
        }

        v35 = (v116 + 2);
        *(a2 + 1) = v35;
LABEL_362:
        v123 = 0;
        if (v35 >= v34 || (v117 = *v35, (v117 & 0x80000000) != 0))
        {
          this = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v123);
          if (!this)
          {
            return this;
          }

          v117 = v123;
          v118 = *(a2 + 1);
          v34 = *(a2 + 2);
        }

        else
        {
          v118 = (v35 + 1);
          *(a2 + 1) = v118;
        }

        *(v4 + 272) = v117 != 0;
        v16 = *(v4 + 284) | 1;
        *(v4 + 284) = v16;
        if (v34 - v118 < 2 || *v118 != 146 || v118[1] != 2)
        {
          continue;
        }

        *(a2 + 1) = v118 + 2;
LABEL_371:
        *(v4 + 284) = v16 | 2;
        if (*(v4 + 232) == MEMORY[0x29EDC9758])
        {
          operator new();
        }

        this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
        if (!this)
        {
          return this;
        }

        v119 = *(a2 + 1);
        if (*(a2 + 4) - v119 < 2 || *v119 != 154 || v119[1] != 2)
        {
          continue;
        }

        *(a2 + 1) = v119 + 2;
LABEL_378:
        *(v4 + 284) |= 4u;
        if (*(v4 + 240) == MEMORY[0x29EDC9758])
        {
          operator new();
        }

        this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
        if (!this)
        {
          return this;
        }

        v120 = *(a2 + 1);
        if (*(a2 + 4) - v120 < 2 || *v120 != 162 || v120[1] != 2)
        {
          continue;
        }

        *(a2 + 1) = v120 + 2;
LABEL_385:
        *(v4 + 284) |= 8u;
        if (*(v4 + 248) == MEMORY[0x29EDC9758])
        {
          operator new();
        }

        this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
        if (!this)
        {
          return this;
        }

        v121 = *(a2 + 1);
        if (*(a2 + 4) - v121 < 2 || *v121 != 170 || v121[1] != 2)
        {
          continue;
        }

        *(a2 + 1) = v121 + 2;
LABEL_392:
        *(v4 + 284) |= 0x10u;
        if (*(v4 + 256) == MEMORY[0x29EDC9758])
        {
          operator new();
        }

        this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
        if (!this)
        {
          return this;
        }

        v122 = *(a2 + 1);
        if (*(a2 + 4) - v122 < 2 || *v122 != 178 || v122[1] != 2)
        {
          continue;
        }

        *(a2 + 1) = v122 + 2;
LABEL_399:
        *(v4 + 284) |= 0x20u;
        if (*(v4 + 264) == MEMORY[0x29EDC9758])
        {
          operator new();
        }

        this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
        if (!this)
        {
          return this;
        }

        if (*(a2 + 1) != *(a2 + 2) || !*(a2 + 11) && *(a2 + 6) != *(a2 + 10))
        {
          continue;
        }

        *(a2 + 8) = 0;
        this = 1;
        *(a2 + 36) = 1;
        return this;
      case 3u:
        if (v7 == 2)
        {
          goto LABEL_104;
        }

        goto LABEL_85;
      case 4u:
        if (v7 == 2)
        {
          goto LABEL_114;
        }

        goto LABEL_85;
      case 5u:
        if ((v6 & 7) != 0)
        {
          goto LABEL_85;
        }

        v19 = *(a2 + 1);
        v18 = *(a2 + 2);
        goto LABEL_120;
      case 6u:
        if ((v6 & 7) != 0)
        {
          goto LABEL_85;
        }

        v27 = *(a2 + 1);
        v18 = *(a2 + 2);
        goto LABEL_128;
      case 7u:
        if ((v6 & 7) != 0)
        {
          goto LABEL_85;
        }

        v30 = *(a2 + 1);
        v18 = *(a2 + 2);
        goto LABEL_136;
      case 8u:
        if (v7 == 2)
        {
          goto LABEL_144;
        }

        goto LABEL_85;
      case 9u:
        if (v7 == 2)
        {
          goto LABEL_154;
        }

        goto LABEL_85;
      case 0xAu:
        if ((v6 & 7) != 0)
        {
          goto LABEL_85;
        }

        v21 = *(a2 + 1);
        v12 = *(a2 + 2);
        goto LABEL_164;
      case 0xBu:
        if ((v6 & 7) != 0)
        {
          goto LABEL_85;
        }

        v32 = *(a2 + 1);
        v12 = *(a2 + 2);
        goto LABEL_172;
      case 0xCu:
        if ((v6 & 7) != 0)
        {
          goto LABEL_85;
        }

        v17 = *(a2 + 1);
        v12 = *(a2 + 2);
        goto LABEL_180;
      case 0xDu:
        if ((v6 & 7) != 0)
        {
          goto LABEL_85;
        }

        v20 = *(a2 + 1);
        v12 = *(a2 + 2);
        goto LABEL_188;
      case 0xEu:
        if ((v6 & 7) != 0)
        {
          goto LABEL_85;
        }

        v29 = *(a2 + 1);
        v12 = *(a2 + 2);
        goto LABEL_196;
      case 0xFu:
        if ((v6 & 7) != 0)
        {
          goto LABEL_85;
        }

        v15 = *(a2 + 1);
        v12 = *(a2 + 2);
        goto LABEL_204;
      case 0x10u:
        if ((v6 & 7) != 0)
        {
          goto LABEL_85;
        }

        v24 = *(a2 + 1);
        v12 = *(a2 + 2);
        goto LABEL_213;
      case 0x11u:
        if ((v6 & 7) != 0)
        {
          goto LABEL_85;
        }

        v14 = *(a2 + 1);
        v12 = *(a2 + 2);
        goto LABEL_222;
      case 0x12u:
        if ((v6 & 7) != 0)
        {
          goto LABEL_85;
        }

        v25 = *(a2 + 1);
        v12 = *(a2 + 2);
        goto LABEL_231;
      case 0x13u:
        if ((v6 & 7) != 0)
        {
          goto LABEL_85;
        }

        v31 = *(a2 + 1);
        v12 = *(a2 + 2);
        goto LABEL_240;
      case 0x14u:
        if ((v6 & 7) != 0)
        {
          goto LABEL_85;
        }

        v37 = *(a2 + 1);
        v12 = *(a2 + 2);
        goto LABEL_249;
      case 0x15u:
        if ((v6 & 7) != 0)
        {
          goto LABEL_85;
        }

        v26 = *(a2 + 1);
        v12 = *(a2 + 2);
        goto LABEL_258;
      case 0x16u:
        if ((v6 & 7) != 0)
        {
          goto LABEL_85;
        }

        v28 = *(a2 + 1);
        v12 = *(a2 + 2);
        goto LABEL_267;
      case 0x17u:
        if ((v6 & 7) != 0)
        {
          goto LABEL_85;
        }

        v36 = *(a2 + 1);
        v12 = *(a2 + 2);
        goto LABEL_276;
      case 0x18u:
        if ((v6 & 7) != 0)
        {
          goto LABEL_85;
        }

        v38 = *(a2 + 1);
        v12 = *(a2 + 2);
        goto LABEL_285;
      case 0x19u:
        if ((v6 & 7) != 0)
        {
          goto LABEL_85;
        }

        v23 = *(a2 + 1);
        v12 = *(a2 + 2);
        goto LABEL_294;
      case 0x1Au:
        if ((v6 & 7) != 0)
        {
          goto LABEL_85;
        }

        v22 = *(a2 + 1);
        v12 = *(a2 + 2);
        goto LABEL_303;
      case 0x1Bu:
        if ((v6 & 7) != 0)
        {
          goto LABEL_85;
        }

        v41 = *(a2 + 1);
        v12 = *(a2 + 2);
        goto LABEL_312;
      case 0x1Cu:
        if ((v6 & 7) != 0)
        {
          goto LABEL_85;
        }

        v13 = *(a2 + 1);
        v12 = *(a2 + 2);
        goto LABEL_321;
      case 0x1Du:
        if ((v6 & 7) != 0)
        {
          goto LABEL_85;
        }

        v39 = *(a2 + 1);
        v12 = *(a2 + 2);
        goto LABEL_330;
      case 0x1Eu:
        if ((v6 & 7) != 0)
        {
          goto LABEL_85;
        }

        v40 = *(a2 + 1);
        v12 = *(a2 + 2);
        goto LABEL_339;
      case 0x1Fu:
        if (v7 != 2)
        {
          goto LABEL_85;
        }

        v33 = *(v4 + 280);
        goto LABEL_348;
      case 0x20u:
        if (v7 == 2)
        {
          goto LABEL_355;
        }

        goto LABEL_85;
      case 0x21u:
        if ((v6 & 7) != 0)
        {
          goto LABEL_85;
        }

        v35 = *(a2 + 1);
        v34 = *(a2 + 2);
        goto LABEL_362;
      case 0x22u:
        if (v7 != 2)
        {
          goto LABEL_85;
        }

        v16 = *(v4 + 284);
        goto LABEL_371;
      case 0x23u:
        if (v7 == 2)
        {
          goto LABEL_378;
        }

        goto LABEL_85;
      case 0x24u:
        if (v7 == 2)
        {
          goto LABEL_385;
        }

        goto LABEL_85;
      case 0x25u:
        if (v7 == 2)
        {
          goto LABEL_392;
        }

        goto LABEL_85;
      case 0x26u:
        if (v7 == 2)
        {
          goto LABEL_399;
        }

        goto LABEL_85;
      default:
LABEL_85:
        if (v7 == 4)
        {
          return 1;
        }

        this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(a2, v6);
        if (this)
        {
          continue;
        }

        return 0;
    }

    return this;
  }
}

uint64_t awd::metrics::BluetoothAccessoryIdentification::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  if (*(this + 280))
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(1, *(this + 8), a2, a4);
  }

  if (*(v5 + 24) >= 1)
  {
    v6 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBytes();
      ++v6;
    }

    while (v6 < *(v5 + 24));
  }

  if (*(v5 + 48) >= 1)
  {
    v7 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBytes();
      ++v7;
    }

    while (v7 < *(v5 + 48));
  }

  v8 = *(v5 + 280);
  if ((v8 & 8) != 0)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
    v8 = *(v5 + 280);
    if ((v8 & 0x10) == 0)
    {
LABEL_11:
      if ((v8 & 0x20) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_52;
    }
  }

  else if ((v8 & 0x10) == 0)
  {
    goto LABEL_11;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(5, *(v5 + 72), a2, a4);
  v8 = *(v5 + 280);
  if ((v8 & 0x20) == 0)
  {
LABEL_12:
    if ((v8 & 0x40) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

LABEL_52:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(6, *(v5 + 76), a2, a4);
  if ((*(v5 + 280) & 0x40) != 0)
  {
LABEL_13:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(7, *(v5 + 104), a2, a4);
  }

LABEL_14:
  if (*(v5 + 88) >= 1)
  {
    v9 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBytes();
      ++v9;
    }

    while (v9 < *(v5 + 88));
  }

  if (*(v5 + 120) >= 1)
  {
    v10 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBytes();
      ++v10;
    }

    while (v10 < *(v5 + 120));
  }

  v11 = *(v5 + 280);
  if ((v11 & 0x200) != 0)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xA, *(v5 + 108), a2, a4);
    v11 = *(v5 + 280);
    if ((v11 & 0x400) == 0)
    {
LABEL_22:
      if ((v11 & 0x800) == 0)
      {
        goto LABEL_23;
      }

      goto LABEL_56;
    }
  }

  else if ((v11 & 0x400) == 0)
  {
    goto LABEL_22;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xB, *(v5 + 136), a2, a4);
  v11 = *(v5 + 280);
  if ((v11 & 0x800) == 0)
  {
LABEL_23:
    if ((v11 & 0x1000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_57;
  }

LABEL_56:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xC, *(v5 + 140), a2, a4);
  v11 = *(v5 + 280);
  if ((v11 & 0x1000) == 0)
  {
LABEL_24:
    if ((v11 & 0x2000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_58;
  }

LABEL_57:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xD, *(v5 + 144), a2, a4);
  v11 = *(v5 + 280);
  if ((v11 & 0x2000) == 0)
  {
LABEL_25:
    if ((v11 & 0x4000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_59;
  }

LABEL_58:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xE, *(v5 + 148), a2, a4);
  v11 = *(v5 + 280);
  if ((v11 & 0x4000) == 0)
  {
LABEL_26:
    if ((v11 & 0x8000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_60;
  }

LABEL_59:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xF, *(v5 + 152), a2, a4);
  v11 = *(v5 + 280);
  if ((v11 & 0x8000) == 0)
  {
LABEL_27:
    if ((v11 & 0x10000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_61;
  }

LABEL_60:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x10, *(v5 + 156), a2, a4);
  v11 = *(v5 + 280);
  if ((v11 & 0x10000) == 0)
  {
LABEL_28:
    if ((v11 & 0x20000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_62;
  }

LABEL_61:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x11, *(v5 + 160), a2, a4);
  v11 = *(v5 + 280);
  if ((v11 & 0x20000) == 0)
  {
LABEL_29:
    if ((v11 & 0x40000) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_63;
  }

LABEL_62:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x12, *(v5 + 164), a2, a4);
  v11 = *(v5 + 280);
  if ((v11 & 0x40000) == 0)
  {
LABEL_30:
    if ((v11 & 0x80000) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_64;
  }

LABEL_63:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x13, *(v5 + 168), a2, a4);
  v11 = *(v5 + 280);
  if ((v11 & 0x80000) == 0)
  {
LABEL_31:
    if ((v11 & 0x100000) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_65;
  }

LABEL_64:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x14, *(v5 + 172), a2, a4);
  v11 = *(v5 + 280);
  if ((v11 & 0x100000) == 0)
  {
LABEL_32:
    if ((v11 & 0x200000) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_66;
  }

LABEL_65:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x15, *(v5 + 176), a2, a4);
  v11 = *(v5 + 280);
  if ((v11 & 0x200000) == 0)
  {
LABEL_33:
    if ((v11 & 0x400000) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_67;
  }

LABEL_66:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x16, *(v5 + 180), a2, a4);
  v11 = *(v5 + 280);
  if ((v11 & 0x400000) == 0)
  {
LABEL_34:
    if ((v11 & 0x800000) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_68;
  }

LABEL_67:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x17, *(v5 + 184), a2, a4);
  v11 = *(v5 + 280);
  if ((v11 & 0x800000) == 0)
  {
LABEL_35:
    if ((v11 & 0x1000000) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_69;
  }

LABEL_68:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x18, *(v5 + 188), a2, a4);
  v11 = *(v5 + 280);
  if ((v11 & 0x1000000) == 0)
  {
LABEL_36:
    if ((v11 & 0x2000000) == 0)
    {
      goto LABEL_37;
    }

    goto LABEL_70;
  }

LABEL_69:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x19, *(v5 + 192), a2, a4);
  v11 = *(v5 + 280);
  if ((v11 & 0x2000000) == 0)
  {
LABEL_37:
    if ((v11 & 0x4000000) == 0)
    {
      goto LABEL_38;
    }

    goto LABEL_71;
  }

LABEL_70:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x1A, *(v5 + 196), a2, a4);
  v11 = *(v5 + 280);
  if ((v11 & 0x4000000) == 0)
  {
LABEL_38:
    if ((v11 & 0x8000000) == 0)
    {
      goto LABEL_39;
    }

    goto LABEL_72;
  }

LABEL_71:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x1B, *(v5 + 200), a2, a4);
  v11 = *(v5 + 280);
  if ((v11 & 0x8000000) == 0)
  {
LABEL_39:
    if ((v11 & 0x10000000) == 0)
    {
      goto LABEL_40;
    }

    goto LABEL_73;
  }

LABEL_72:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x1C, *(v5 + 204), a2, a4);
  v11 = *(v5 + 280);
  if ((v11 & 0x10000000) == 0)
  {
LABEL_40:
    if ((v11 & 0x20000000) == 0)
    {
      goto LABEL_41;
    }

    goto LABEL_74;
  }

LABEL_73:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x1D, *(v5 + 208), a2, a4);
  v11 = *(v5 + 280);
  if ((v11 & 0x20000000) == 0)
  {
LABEL_41:
    if ((v11 & 0x40000000) == 0)
    {
      goto LABEL_42;
    }

LABEL_75:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
    if ((*(v5 + 280) & 0x80000000) == 0)
    {
      goto LABEL_43;
    }

    goto LABEL_76;
  }

LABEL_74:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x1E, *(v5 + 212), a2, a4);
  v11 = *(v5 + 280);
  if ((v11 & 0x40000000) != 0)
  {
    goto LABEL_75;
  }

LABEL_42:
  if ((v11 & 0x80000000) == 0)
  {
    goto LABEL_43;
  }

LABEL_76:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
LABEL_43:
  v12 = *(v5 + 284);
  if (v12)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(0x21, *(v5 + 272), a2, a4);
    v12 = *(v5 + 284);
    if ((v12 & 2) == 0)
    {
LABEL_45:
      if ((v12 & 4) == 0)
      {
        goto LABEL_46;
      }

      goto LABEL_79;
    }
  }

  else if ((v12 & 2) == 0)
  {
    goto LABEL_45;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
  v12 = *(v5 + 284);
  if ((v12 & 4) == 0)
  {
LABEL_46:
    if ((v12 & 8) == 0)
    {
      goto LABEL_47;
    }

    goto LABEL_80;
  }

LABEL_79:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
  v12 = *(v5 + 284);
  if ((v12 & 8) == 0)
  {
LABEL_47:
    if ((v12 & 0x10) == 0)
    {
      goto LABEL_48;
    }

LABEL_81:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
    if ((*(v5 + 284) & 0x20) == 0)
    {
      return this;
    }

    goto LABEL_82;
  }

LABEL_80:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
  v12 = *(v5 + 284);
  if ((v12 & 0x10) != 0)
  {
    goto LABEL_81;
  }

LABEL_48:
  if ((v12 & 0x20) == 0)
  {
    return this;
  }

LABEL_82:

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
}

uint64_t awd::metrics::BluetoothAccessoryIdentification::ByteSize(awd::metrics::BluetoothAccessoryIdentification *this, unint64_t a2)
{
  v3 = *(this + 70);
  if (!v3)
  {
    v4 = 0;
    goto LABEL_32;
  }

  if (v3)
  {
    v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 1)) + 1;
    v3 = *(this + 70);
    if ((v3 & 8) == 0)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v4 = 0;
    if ((v3 & 8) == 0)
    {
      goto LABEL_16;
    }
  }

  v5 = *(this + 8);
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
    v3 = *(this + 70);
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

  v4 += v10 + v6 + 1;
LABEL_16:
  if ((v3 & 0x10) != 0)
  {
    v11 = *(this + 18);
    if (v11 >= 0x80)
    {
      v12 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v11) + 1;
      v3 = *(this + 70);
    }

    else
    {
      v12 = 2;
    }

    v4 += v12;
    if ((v3 & 0x20) == 0)
    {
LABEL_18:
      if ((v3 & 0x40) == 0)
      {
        goto LABEL_32;
      }

      goto LABEL_28;
    }
  }

  else if ((v3 & 0x20) == 0)
  {
    goto LABEL_18;
  }

  v13 = *(this + 19);
  if (v13 >= 0x80)
  {
    v14 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v13) + 1;
    v3 = *(this + 70);
  }

  else
  {
    v14 = 2;
  }

  v4 += v14;
  if ((v3 & 0x40) != 0)
  {
LABEL_28:
    v15 = *(this + 26);
    if (v15 >= 0x80)
    {
      v16 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v15) + 1;
      v3 = *(this + 70);
    }

    else
    {
      v16 = 2;
    }

    v4 += v16;
  }

LABEL_32:
  if ((v3 & 0x1FE00) == 0)
  {
    goto LABEL_69;
  }

  if ((v3 & 0x200) != 0)
  {
    v17 = *(this + 27);
    if (v17 >= 0x80)
    {
      v18 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v17) + 1;
      v3 = *(this + 70);
    }

    else
    {
      v18 = 2;
    }

    v4 += v18;
    if ((v3 & 0x400) == 0)
    {
LABEL_35:
      if ((v3 & 0x800) == 0)
      {
        goto LABEL_36;
      }

      goto LABEL_49;
    }
  }

  else if ((v3 & 0x400) == 0)
  {
    goto LABEL_35;
  }

  v19 = *(this + 34);
  if (v19 >= 0x80)
  {
    v20 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v19) + 1;
    v3 = *(this + 70);
  }

  else
  {
    v20 = 2;
  }

  v4 += v20;
  if ((v3 & 0x800) == 0)
  {
LABEL_36:
    if ((v3 & 0x1000) == 0)
    {
      goto LABEL_37;
    }

    goto LABEL_53;
  }

LABEL_49:
  v21 = *(this + 35);
  if (v21 >= 0x80)
  {
    v22 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v21) + 1;
    v3 = *(this + 70);
  }

  else
  {
    v22 = 2;
  }

  v4 += v22;
  if ((v3 & 0x1000) == 0)
  {
LABEL_37:
    if ((v3 & 0x2000) == 0)
    {
      goto LABEL_38;
    }

    goto LABEL_57;
  }

LABEL_53:
  v23 = *(this + 36);
  if (v23 >= 0x80)
  {
    v24 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v23) + 1;
    v3 = *(this + 70);
  }

  else
  {
    v24 = 2;
  }

  v4 += v24;
  if ((v3 & 0x2000) == 0)
  {
LABEL_38:
    if ((v3 & 0x4000) == 0)
    {
      goto LABEL_39;
    }

    goto LABEL_61;
  }

LABEL_57:
  v25 = *(this + 37);
  if (v25 >= 0x80)
  {
    v26 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v25) + 1;
    v3 = *(this + 70);
  }

  else
  {
    v26 = 2;
  }

  v4 += v26;
  if ((v3 & 0x4000) == 0)
  {
LABEL_39:
    if ((v3 & 0x8000) == 0)
    {
      goto LABEL_69;
    }

    goto LABEL_65;
  }

LABEL_61:
  v27 = *(this + 38);
  if (v27 >= 0x80)
  {
    v28 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v27) + 1;
    v3 = *(this + 70);
  }

  else
  {
    v28 = 2;
  }

  v4 += v28;
  if ((v3 & 0x8000) != 0)
  {
LABEL_65:
    v29 = *(this + 39);
    if (v29 >= 0x80)
    {
      v30 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v29) + 2;
      v3 = *(this + 70);
    }

    else
    {
      v30 = 3;
    }

    v4 += v30;
  }

LABEL_69:
  if ((v3 & 0xFF0000) == 0)
  {
    goto LABEL_111;
  }

  if ((v3 & 0x10000) != 0)
  {
    v31 = *(this + 40);
    if (v31 >= 0x80)
    {
      v32 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v31) + 2;
      v3 = *(this + 70);
    }

    else
    {
      v32 = 3;
    }

    v4 += v32;
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

  v33 = *(this + 41);
  if (v33 >= 0x80)
  {
    v34 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v33) + 2;
    v3 = *(this + 70);
  }

  else
  {
    v34 = 3;
  }

  v4 += v34;
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
  v35 = *(this + 42);
  if (v35 >= 0x80)
  {
    v36 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v35) + 2;
    v3 = *(this + 70);
  }

  else
  {
    v36 = 3;
  }

  v4 += v36;
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
  v37 = *(this + 43);
  if (v37 >= 0x80)
  {
    v38 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v37) + 2;
    v3 = *(this + 70);
  }

  else
  {
    v38 = 3;
  }

  v4 += v38;
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
  v39 = *(this + 44);
  if (v39 >= 0x80)
  {
    v40 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v39) + 2;
    v3 = *(this + 70);
  }

  else
  {
    v40 = 3;
  }

  v4 += v40;
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
  v41 = *(this + 45);
  if (v41 >= 0x80)
  {
    v42 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v41) + 2;
    v3 = *(this + 70);
  }

  else
  {
    v42 = 3;
  }

  v4 += v42;
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
  v43 = *(this + 46);
  if (v43 >= 0x80)
  {
    v44 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v43) + 2;
    v3 = *(this + 70);
  }

  else
  {
    v44 = 3;
  }

  v4 += v44;
  if ((v3 & 0x800000) != 0)
  {
LABEL_107:
    v45 = *(this + 47);
    if (v45 >= 0x80)
    {
      v46 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v45) + 2;
      v3 = *(this + 70);
    }

    else
    {
      v46 = 3;
    }

    v4 += v46;
  }

LABEL_111:
  if (!HIBYTE(v3))
  {
    goto LABEL_163;
  }

  if ((v3 & 0x1000000) != 0)
  {
    v47 = *(this + 48);
    if (v47 >= 0x80)
    {
      v48 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v47) + 2;
      v3 = *(this + 70);
    }

    else
    {
      v48 = 3;
    }

    v4 += v48;
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

  v49 = *(this + 49);
  if (v49 >= 0x80)
  {
    v50 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v49) + 2;
    v3 = *(this + 70);
  }

  else
  {
    v50 = 3;
  }

  v4 += v50;
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
  v51 = *(this + 50);
  if (v51 >= 0x80)
  {
    v52 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v51) + 2;
    v3 = *(this + 70);
  }

  else
  {
    v52 = 3;
  }

  v4 += v52;
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
  v53 = *(this + 51);
  if (v53 >= 0x80)
  {
    v54 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v53) + 2;
    v3 = *(this + 70);
  }

  else
  {
    v54 = 3;
  }

  v4 += v54;
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
  v55 = *(this + 52);
  if (v55 >= 0x80)
  {
    v56 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v55) + 2;
    v3 = *(this + 70);
  }

  else
  {
    v56 = 3;
  }

  v4 += v56;
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
  v57 = *(this + 53);
  if (v57 >= 0x80)
  {
    v58 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v57) + 2;
    v3 = *(this + 70);
  }

  else
  {
    v58 = 3;
  }

  v4 += v58;
  if ((v3 & 0x40000000) == 0)
  {
LABEL_119:
    if ((v3 & 0x80000000) == 0)
    {
      goto LABEL_163;
    }

    goto LABEL_154;
  }

LABEL_145:
  v59 = *(this + 27);
  v60 = *(v59 + 23);
  v61 = v60;
  v62 = *(v59 + 8);
  if ((v60 & 0x80u) == 0)
  {
    v63 = *(v59 + 23);
  }

  else
  {
    v63 = v62;
  }

  if (v63 >= 0x80)
  {
    v64 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v63);
    v60 = *(v59 + 23);
    v62 = *(v59 + 8);
    v3 = *(this + 70);
    v61 = *(v59 + 23);
  }

  else
  {
    v64 = 1;
  }

  if (v61 < 0)
  {
    v60 = v62;
  }

  v4 += v64 + v60 + 2;
  if ((v3 & 0x80000000) != 0)
  {
LABEL_154:
    v65 = *(this + 28);
    v66 = *(v65 + 23);
    v67 = v66;
    v68 = *(v65 + 8);
    if ((v66 & 0x80u) == 0)
    {
      v69 = *(v65 + 23);
    }

    else
    {
      v69 = v68;
    }

    if (v69 >= 0x80)
    {
      v70 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v69);
      v66 = *(v65 + 23);
      v68 = *(v65 + 8);
      v67 = *(v65 + 23);
    }

    else
    {
      v70 = 1;
    }

    if (v67 < 0)
    {
      v66 = v68;
    }

    v4 += v70 + v66 + 2;
  }

LABEL_163:
  LOBYTE(v71) = *(this + 284);
  if (!v71)
  {
    goto LABEL_217;
  }

  if (*(this + 284))
  {
    v4 += 3;
  }

  if ((*(this + 284) & 2) != 0)
  {
    v72 = *(this + 29);
    v73 = *(v72 + 23);
    v74 = v73;
    v75 = *(v72 + 8);
    if ((v73 & 0x80u) == 0)
    {
      v76 = *(v72 + 23);
    }

    else
    {
      v76 = v75;
    }

    if (v76 >= 0x80)
    {
      v77 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v76);
      v73 = *(v72 + 23);
      v75 = *(v72 + 8);
      v71 = *(this + 71);
      v74 = *(v72 + 23);
    }

    else
    {
      v77 = 1;
    }

    if (v74 < 0)
    {
      v73 = v75;
    }

    v4 += v77 + v73 + 2;
    if ((v71 & 4) == 0)
    {
LABEL_168:
      if ((v71 & 8) == 0)
      {
        goto LABEL_169;
      }

      goto LABEL_190;
    }
  }

  else if ((*(this + 284) & 4) == 0)
  {
    goto LABEL_168;
  }

  v78 = *(this + 30);
  v79 = *(v78 + 23);
  v80 = v79;
  v81 = *(v78 + 8);
  if ((v79 & 0x80u) == 0)
  {
    v82 = *(v78 + 23);
  }

  else
  {
    v82 = v81;
  }

  if (v82 >= 0x80)
  {
    v83 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v82);
    v79 = *(v78 + 23);
    v81 = *(v78 + 8);
    v71 = *(this + 71);
    v80 = *(v78 + 23);
  }

  else
  {
    v83 = 1;
  }

  if (v80 < 0)
  {
    v79 = v81;
  }

  v4 += v83 + v79 + 2;
  if ((v71 & 8) == 0)
  {
LABEL_169:
    if ((v71 & 0x10) == 0)
    {
      goto LABEL_170;
    }

    goto LABEL_199;
  }

LABEL_190:
  v84 = *(this + 31);
  v85 = *(v84 + 23);
  v86 = v85;
  v87 = *(v84 + 8);
  if ((v85 & 0x80u) == 0)
  {
    v88 = *(v84 + 23);
  }

  else
  {
    v88 = v87;
  }

  if (v88 >= 0x80)
  {
    v89 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v88);
    v85 = *(v84 + 23);
    v87 = *(v84 + 8);
    v71 = *(this + 71);
    v86 = *(v84 + 23);
  }

  else
  {
    v89 = 1;
  }

  if (v86 < 0)
  {
    v85 = v87;
  }

  v4 += v89 + v85 + 2;
  if ((v71 & 0x10) == 0)
  {
LABEL_170:
    if ((v71 & 0x20) == 0)
    {
      goto LABEL_217;
    }

    goto LABEL_208;
  }

LABEL_199:
  v90 = *(this + 32);
  v91 = *(v90 + 23);
  v92 = v91;
  v93 = *(v90 + 8);
  if ((v91 & 0x80u) == 0)
  {
    v94 = *(v90 + 23);
  }

  else
  {
    v94 = v93;
  }

  if (v94 >= 0x80)
  {
    v95 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v94);
    v91 = *(v90 + 23);
    v93 = *(v90 + 8);
    v71 = *(this + 71);
    v92 = *(v90 + 23);
  }

  else
  {
    v95 = 1;
  }

  if (v92 < 0)
  {
    v91 = v93;
  }

  v4 += v95 + v91 + 2;
  if ((v71 & 0x20) != 0)
  {
LABEL_208:
    v96 = *(this + 33);
    v97 = *(v96 + 23);
    v98 = v97;
    v99 = *(v96 + 8);
    if ((v97 & 0x80u) == 0)
    {
      v100 = *(v96 + 23);
    }

    else
    {
      v100 = v99;
    }

    if (v100 >= 0x80)
    {
      v101 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v100);
      v97 = *(v96 + 23);
      v99 = *(v96 + 8);
      v98 = *(v96 + 23);
    }

    else
    {
      v101 = 1;
    }

    if (v98 < 0)
    {
      v97 = v99;
    }

    v4 += v101 + v97 + 2;
  }

LABEL_217:
  v102 = *(this + 6);
  v103 = v102 + v4;
  if (v102 >= 1)
  {
    for (i = 0; i < v102; ++i)
    {
      v105 = *(*(this + 2) + 8 * i);
      v106 = *(v105 + 23);
      v107 = v106;
      v108 = *(v105 + 8);
      if ((v106 & 0x80u) == 0)
      {
        v109 = *(v105 + 23);
      }

      else
      {
        v109 = v108;
      }

      if (v109 >= 0x80)
      {
        v110 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v109);
        v106 = *(v105 + 23);
        v108 = *(v105 + 8);
        v102 = *(this + 6);
        v107 = *(v105 + 23);
      }

      else
      {
        v110 = 1;
      }

      if (v107 < 0)
      {
        v106 = v108;
      }

      v103 += v110 + v106;
    }
  }

  v111 = *(this + 12);
  v112 = v111 + v103;
  if (v111 >= 1)
  {
    for (j = 0; j < v111; ++j)
    {
      v114 = *(*(this + 5) + 8 * j);
      v115 = *(v114 + 23);
      v116 = v115;
      v117 = *(v114 + 8);
      if ((v115 & 0x80u) == 0)
      {
        v118 = *(v114 + 23);
      }

      else
      {
        v118 = v117;
      }

      if (v118 >= 0x80)
      {
        v119 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v118);
        v115 = *(v114 + 23);
        v117 = *(v114 + 8);
        v111 = *(this + 12);
        v116 = *(v114 + 23);
      }

      else
      {
        v119 = 1;
      }

      if (v116 < 0)
      {
        v115 = v117;
      }

      v112 += v119 + v115;
    }
  }

  v120 = *(this + 22);
  v121 = v120 + v112;
  if (v120 >= 1)
  {
    for (k = 0; k < v120; ++k)
    {
      v123 = *(*(this + 10) + 8 * k);
      v124 = *(v123 + 23);
      v125 = v124;
      v126 = *(v123 + 8);
      if ((v124 & 0x80u) == 0)
      {
        v127 = *(v123 + 23);
      }

      else
      {
        v127 = v126;
      }

      if (v127 >= 0x80)
      {
        v128 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v127);
        v124 = *(v123 + 23);
        v126 = *(v123 + 8);
        v120 = *(this + 22);
        v125 = *(v123 + 23);
      }

      else
      {
        v128 = 1;
      }

      if (v125 < 0)
      {
        v124 = v126;
      }

      v121 += v128 + v124;
    }
  }

  v129 = *(this + 30);
  v130 = (v129 + v121);
  if (v129 >= 1)
  {
    for (m = 0; m < v129; ++m)
    {
      v132 = *(*(this + 14) + 8 * m);
      v133 = *(v132 + 23);
      v134 = v133;
      v135 = *(v132 + 8);
      if ((v133 & 0x80u) == 0)
      {
        v136 = *(v132 + 23);
      }

      else
      {
        v136 = v135;
      }

      if (v136 >= 0x80)
      {
        v137 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v136);
        v133 = *(v132 + 23);
        v135 = *(v132 + 8);
        v129 = *(this + 30);
        v134 = *(v132 + 23);
      }

      else
      {
        v137 = 1;
      }

      if (v134 < 0)
      {
        v133 = v135;
      }

      v130 = (v137 + v130 + v133);
    }
  }

  *(this + 69) = v130;
  return v130;
}