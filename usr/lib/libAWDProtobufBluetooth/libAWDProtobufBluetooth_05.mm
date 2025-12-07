void sub_2963750E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t awd::metrics::BluetoothHFPAudioLinkInfo::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 216);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(1, *(this + 8), a2, a4);
    v6 = *(v5 + 216);
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
  if ((*(v5 + 216) & 4) != 0)
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

  v9 = *(v5 + 216);
  if ((v9 & 0x20) != 0)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(6, *(v5 + 56), a2, a4);
    v9 = *(v5 + 216);
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

  if (*(v5 + 88) >= 1)
  {
    v11 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(9, *(*(v5 + 80) + 4 * v11++), a2, a4);
    }

    while (v11 < *(v5 + 88));
  }

  v12 = *(v5 + 216);
  if ((v12 & 0x200) != 0)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
    v12 = *(v5 + 216);
    if ((v12 & 0x400) == 0)
    {
LABEL_23:
      if ((v12 & 0x800) == 0)
      {
        goto LABEL_24;
      }

      goto LABEL_55;
    }
  }

  else if ((v12 & 0x400) == 0)
  {
    goto LABEL_23;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xB, *(v5 + 104), a2, a4);
  v12 = *(v5 + 216);
  if ((v12 & 0x800) == 0)
  {
LABEL_24:
    if ((v12 & 0x1000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_56;
  }

LABEL_55:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xC, *(v5 + 108), a2, a4);
  v12 = *(v5 + 216);
  if ((v12 & 0x1000) == 0)
  {
LABEL_25:
    if ((v12 & 0x2000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_57;
  }

LABEL_56:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xD, *(v5 + 112), a2, a4);
  v12 = *(v5 + 216);
  if ((v12 & 0x2000) == 0)
  {
LABEL_26:
    if ((v12 & 0x4000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_58;
  }

LABEL_57:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xE, *(v5 + 116), a2, a4);
  v12 = *(v5 + 216);
  if ((v12 & 0x4000) == 0)
  {
LABEL_27:
    if ((v12 & 0x8000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_59;
  }

LABEL_58:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xF, *(v5 + 120), a2, a4);
  v12 = *(v5 + 216);
  if ((v12 & 0x8000) == 0)
  {
LABEL_28:
    if ((v12 & 0x10000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_60;
  }

LABEL_59:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x10, *(v5 + 124), a2, a4);
  v12 = *(v5 + 216);
  if ((v12 & 0x10000) == 0)
  {
LABEL_29:
    if ((v12 & 0x20000) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_61;
  }

LABEL_60:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x11, *(v5 + 128), a2, a4);
  v12 = *(v5 + 216);
  if ((v12 & 0x20000) == 0)
  {
LABEL_30:
    if ((v12 & 0x40000) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_62;
  }

LABEL_61:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x12, *(v5 + 132), a2, a4);
  v12 = *(v5 + 216);
  if ((v12 & 0x40000) == 0)
  {
LABEL_31:
    if ((v12 & 0x80000) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_63;
  }

LABEL_62:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x13, *(v5 + 136), a2, a4);
  v12 = *(v5 + 216);
  if ((v12 & 0x80000) == 0)
  {
LABEL_32:
    if ((v12 & 0x100000) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_64;
  }

LABEL_63:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x14, *(v5 + 140), a2, a4);
  v12 = *(v5 + 216);
  if ((v12 & 0x100000) == 0)
  {
LABEL_33:
    if ((v12 & 0x200000) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_65;
  }

LABEL_64:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x15, *(v5 + 144), a2, a4);
  v12 = *(v5 + 216);
  if ((v12 & 0x200000) == 0)
  {
LABEL_34:
    if ((v12 & 0x400000) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_66;
  }

LABEL_65:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteSInt32(0x16, *(v5 + 148), a2, a4);
  v12 = *(v5 + 216);
  if ((v12 & 0x400000) == 0)
  {
LABEL_35:
    if ((v12 & 0x800000) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_67;
  }

LABEL_66:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteSInt32(0x17, *(v5 + 152), a2, a4);
  v12 = *(v5 + 216);
  if ((v12 & 0x800000) == 0)
  {
LABEL_36:
    if ((v12 & 0x1000000) == 0)
    {
      goto LABEL_37;
    }

    goto LABEL_68;
  }

LABEL_67:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteSInt32(0x18, *(v5 + 156), a2, a4);
  v12 = *(v5 + 216);
  if ((v12 & 0x1000000) == 0)
  {
LABEL_37:
    if ((v12 & 0x2000000) == 0)
    {
      goto LABEL_38;
    }

    goto LABEL_69;
  }

LABEL_68:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteSInt32(0x19, *(v5 + 160), a2, a4);
  v12 = *(v5 + 216);
  if ((v12 & 0x2000000) == 0)
  {
LABEL_38:
    if ((v12 & 0x4000000) == 0)
    {
      goto LABEL_39;
    }

    goto LABEL_70;
  }

LABEL_69:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteSInt32(0x1A, *(v5 + 164), a2, a4);
  v12 = *(v5 + 216);
  if ((v12 & 0x4000000) == 0)
  {
LABEL_39:
    if ((v12 & 0x8000000) == 0)
    {
      goto LABEL_40;
    }

    goto LABEL_71;
  }

LABEL_70:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteSInt32(0x1B, *(v5 + 168), a2, a4);
  v12 = *(v5 + 216);
  if ((v12 & 0x8000000) == 0)
  {
LABEL_40:
    if ((v12 & 0x10000000) == 0)
    {
      goto LABEL_41;
    }

    goto LABEL_72;
  }

LABEL_71:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x1C, *(v5 + 172), a2, a4);
  v12 = *(v5 + 216);
  if ((v12 & 0x10000000) == 0)
  {
LABEL_41:
    if ((v12 & 0x20000000) == 0)
    {
      goto LABEL_42;
    }

    goto LABEL_73;
  }

LABEL_72:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x1D, *(v5 + 176), a2, a4);
  v12 = *(v5 + 216);
  if ((v12 & 0x20000000) == 0)
  {
LABEL_42:
    if ((v12 & 0x40000000) == 0)
    {
      goto LABEL_43;
    }

LABEL_74:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x1F, *(v5 + 184), a2, a4);
    if ((*(v5 + 216) & 0x80000000) == 0)
    {
      goto LABEL_44;
    }

    goto LABEL_75;
  }

LABEL_73:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x1E, *(v5 + 180), a2, a4);
  v12 = *(v5 + 216);
  if ((v12 & 0x40000000) != 0)
  {
    goto LABEL_74;
  }

LABEL_43:
  if ((v12 & 0x80000000) == 0)
  {
    goto LABEL_44;
  }

LABEL_75:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x20, *(v5 + 188), a2, a4);
LABEL_44:
  v13 = *(v5 + 220);
  if (v13)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x21, *(v5 + 192), a2, a4);
    v13 = *(v5 + 220);
    if ((v13 & 2) == 0)
    {
LABEL_46:
      if ((v13 & 4) == 0)
      {
        goto LABEL_47;
      }

      goto LABEL_78;
    }
  }

  else if ((v13 & 2) == 0)
  {
    goto LABEL_46;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x22, *(v5 + 196), a2, a4);
  v13 = *(v5 + 220);
  if ((v13 & 4) == 0)
  {
LABEL_47:
    if ((v13 & 8) == 0)
    {
      goto LABEL_48;
    }

LABEL_79:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x24, *(v5 + 204), a2, a4);
    if ((*(v5 + 220) & 0x10) == 0)
    {
      return this;
    }

    goto LABEL_80;
  }

LABEL_78:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x23, *(v5 + 200), a2, a4);
  v13 = *(v5 + 220);
  if ((v13 & 8) != 0)
  {
    goto LABEL_79;
  }

LABEL_48:
  if ((v13 & 0x10) == 0)
  {
    return this;
  }

LABEL_80:
  v14 = *(v5 + 208);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x25, v14, a2, a4);
}

uint64_t awd::metrics::BluetoothHFPAudioLinkInfo::ByteSize(awd::metrics::BluetoothHFPAudioLinkInfo *this, unint64_t a2)
{
  v3 = *(this + 54);
  if (!v3)
  {
    v5 = 0;
    goto LABEL_22;
  }

  if (v3)
  {
    v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 1)) + 1;
    v3 = *(this + 54);
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
      v3 = *(this + 54);
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
    v3 = *(this + 54);
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
      v3 = *(this + 54);
    }

    else
    {
      v11 = 2;
    }

    v5 += v11;
  }

LABEL_22:
  if ((v3 & 0x1FE00) == 0)
  {
    goto LABEL_64;
  }

  if ((v3 & 0x200) != 0)
  {
    v12 = *(this + 12);
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
      v3 = *(this + 54);
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
    if ((v3 & 0x400) == 0)
    {
LABEL_25:
      if ((v3 & 0x800) == 0)
      {
        goto LABEL_26;
      }

      goto LABEL_44;
    }
  }

  else if ((v3 & 0x400) == 0)
  {
    goto LABEL_25;
  }

  v18 = *(this + 26);
  if (v18 >= 0x80)
  {
    v19 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v18) + 1;
    v3 = *(this + 54);
  }

  else
  {
    v19 = 2;
  }

  v5 += v19;
  if ((v3 & 0x800) == 0)
  {
LABEL_26:
    if ((v3 & 0x1000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_48;
  }

LABEL_44:
  v20 = *(this + 27);
  if (v20 >= 0x80)
  {
    v21 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v20) + 1;
    v3 = *(this + 54);
  }

  else
  {
    v21 = 2;
  }

  v5 += v21;
  if ((v3 & 0x1000) == 0)
  {
LABEL_27:
    if ((v3 & 0x2000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_52;
  }

LABEL_48:
  v22 = *(this + 28);
  if (v22 >= 0x80)
  {
    v23 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v22) + 1;
    v3 = *(this + 54);
  }

  else
  {
    v23 = 2;
  }

  v5 += v23;
  if ((v3 & 0x2000) == 0)
  {
LABEL_28:
    if ((v3 & 0x4000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_56;
  }

LABEL_52:
  v24 = *(this + 29);
  if (v24 >= 0x80)
  {
    v25 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v24) + 1;
    v3 = *(this + 54);
  }

  else
  {
    v25 = 2;
  }

  v5 += v25;
  if ((v3 & 0x4000) == 0)
  {
LABEL_29:
    if ((v3 & 0x8000) == 0)
    {
      goto LABEL_64;
    }

    goto LABEL_60;
  }

LABEL_56:
  v26 = *(this + 30);
  if (v26 >= 0x80)
  {
    v27 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v26) + 1;
    v3 = *(this + 54);
  }

  else
  {
    v27 = 2;
  }

  v5 += v27;
  if ((v3 & 0x8000) != 0)
  {
LABEL_60:
    v28 = *(this + 31);
    if (v28 >= 0x80)
    {
      v29 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v28) + 2;
      v3 = *(this + 54);
    }

    else
    {
      v29 = 3;
    }

    v5 += v29;
  }

LABEL_64:
  if ((v3 & 0xFF0000) == 0)
  {
    goto LABEL_106;
  }

  if ((v3 & 0x10000) != 0)
  {
    v30 = *(this + 32);
    if (v30 >= 0x80)
    {
      v31 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v30) + 2;
      v3 = *(this + 54);
    }

    else
    {
      v31 = 3;
    }

    v5 += v31;
    if ((v3 & 0x20000) == 0)
    {
LABEL_67:
      if ((v3 & 0x40000) == 0)
      {
        goto LABEL_68;
      }

      goto LABEL_82;
    }
  }

  else if ((v3 & 0x20000) == 0)
  {
    goto LABEL_67;
  }

  v32 = *(this + 33);
  if (v32 >= 0x80)
  {
    v33 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v32) + 2;
    v3 = *(this + 54);
  }

  else
  {
    v33 = 3;
  }

  v5 += v33;
  if ((v3 & 0x40000) == 0)
  {
LABEL_68:
    if ((v3 & 0x80000) == 0)
    {
      goto LABEL_69;
    }

    goto LABEL_86;
  }

LABEL_82:
  v34 = *(this + 34);
  if (v34 >= 0x80)
  {
    v35 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v34) + 2;
    v3 = *(this + 54);
  }

  else
  {
    v35 = 3;
  }

  v5 += v35;
  if ((v3 & 0x80000) == 0)
  {
LABEL_69:
    if ((v3 & 0x100000) == 0)
    {
      goto LABEL_70;
    }

    goto LABEL_90;
  }

LABEL_86:
  v36 = *(this + 35);
  if (v36 >= 0x80)
  {
    v37 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v36) + 2;
    v3 = *(this + 54);
  }

  else
  {
    v37 = 3;
  }

  v5 += v37;
  if ((v3 & 0x100000) == 0)
  {
LABEL_70:
    if ((v3 & 0x200000) == 0)
    {
      goto LABEL_71;
    }

    goto LABEL_94;
  }

LABEL_90:
  v38 = *(this + 36);
  if (v38 >= 0x80)
  {
    v39 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v38) + 2;
    v3 = *(this + 54);
  }

  else
  {
    v39 = 3;
  }

  v5 += v39;
  if ((v3 & 0x200000) == 0)
  {
LABEL_71:
    if ((v3 & 0x400000) == 0)
    {
      goto LABEL_72;
    }

    goto LABEL_98;
  }

LABEL_94:
  v40 = ((2 * *(this + 37)) ^ (*(this + 37) >> 31));
  if (v40 >= 0x80)
  {
    v41 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v40) + 2;
    v3 = *(this + 54);
  }

  else
  {
    v41 = 3;
  }

  v5 += v41;
  if ((v3 & 0x400000) == 0)
  {
LABEL_72:
    if ((v3 & 0x800000) == 0)
    {
      goto LABEL_106;
    }

    goto LABEL_102;
  }

LABEL_98:
  v42 = ((2 * *(this + 38)) ^ (*(this + 38) >> 31));
  if (v42 >= 0x80)
  {
    v43 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v42) + 2;
    v3 = *(this + 54);
  }

  else
  {
    v43 = 3;
  }

  v5 += v43;
  if ((v3 & 0x800000) != 0)
  {
LABEL_102:
    v44 = ((2 * *(this + 39)) ^ (*(this + 39) >> 31));
    if (v44 >= 0x80)
    {
      v45 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v44) + 2;
      v3 = *(this + 54);
    }

    else
    {
      v45 = 3;
    }

    v5 += v45;
  }

LABEL_106:
  if (!HIBYTE(v3))
  {
    goto LABEL_148;
  }

  if ((v3 & 0x1000000) != 0)
  {
    v46 = ((2 * *(this + 40)) ^ (*(this + 40) >> 31));
    if (v46 >= 0x80)
    {
      v47 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v46) + 2;
      v3 = *(this + 54);
    }

    else
    {
      v47 = 3;
    }

    v5 += v47;
    if ((v3 & 0x2000000) == 0)
    {
LABEL_109:
      if ((v3 & 0x4000000) == 0)
      {
        goto LABEL_110;
      }

      goto LABEL_124;
    }
  }

  else if ((v3 & 0x2000000) == 0)
  {
    goto LABEL_109;
  }

  v48 = ((2 * *(this + 41)) ^ (*(this + 41) >> 31));
  if (v48 >= 0x80)
  {
    v49 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v48) + 2;
    v3 = *(this + 54);
  }

  else
  {
    v49 = 3;
  }

  v5 += v49;
  if ((v3 & 0x4000000) == 0)
  {
LABEL_110:
    if ((v3 & 0x8000000) == 0)
    {
      goto LABEL_111;
    }

    goto LABEL_128;
  }

LABEL_124:
  v50 = ((2 * *(this + 42)) ^ (*(this + 42) >> 31));
  if (v50 >= 0x80)
  {
    v51 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v50) + 2;
    v3 = *(this + 54);
  }

  else
  {
    v51 = 3;
  }

  v5 += v51;
  if ((v3 & 0x8000000) == 0)
  {
LABEL_111:
    if ((v3 & 0x10000000) == 0)
    {
      goto LABEL_112;
    }

    goto LABEL_132;
  }

LABEL_128:
  v52 = *(this + 43);
  if (v52 >= 0x80)
  {
    v53 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v52) + 2;
    v3 = *(this + 54);
  }

  else
  {
    v53 = 3;
  }

  v5 += v53;
  if ((v3 & 0x10000000) == 0)
  {
LABEL_112:
    if ((v3 & 0x20000000) == 0)
    {
      goto LABEL_113;
    }

    goto LABEL_136;
  }

LABEL_132:
  v54 = *(this + 44);
  if (v54 >= 0x80)
  {
    v55 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v54) + 2;
    v3 = *(this + 54);
  }

  else
  {
    v55 = 3;
  }

  v5 += v55;
  if ((v3 & 0x20000000) == 0)
  {
LABEL_113:
    if ((v3 & 0x40000000) == 0)
    {
      goto LABEL_114;
    }

    goto LABEL_140;
  }

LABEL_136:
  v56 = *(this + 45);
  if (v56 >= 0x80)
  {
    v57 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v56) + 2;
    v3 = *(this + 54);
  }

  else
  {
    v57 = 3;
  }

  v5 += v57;
  if ((v3 & 0x40000000) == 0)
  {
LABEL_114:
    if ((v3 & 0x80000000) == 0)
    {
      goto LABEL_148;
    }

    goto LABEL_144;
  }

LABEL_140:
  v58 = *(this + 46);
  if (v58 >= 0x80)
  {
    v59 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v58) + 2;
    v3 = *(this + 54);
  }

  else
  {
    v59 = 3;
  }

  v5 += v59;
  if ((v3 & 0x80000000) != 0)
  {
LABEL_144:
    v60 = *(this + 47);
    if (v60 >= 0x80)
    {
      v61 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v60) + 2;
    }

    else
    {
      v61 = 3;
    }

    v5 += v61;
  }

LABEL_148:
  LOBYTE(v62) = *(this + 220);
  if (!v62)
  {
    goto LABEL_175;
  }

  if (*(this + 220))
  {
    v63 = *(this + 48);
    if (v63 >= 0x80)
    {
      v64 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v63) + 2;
      v62 = *(this + 55);
    }

    else
    {
      v64 = 3;
    }

    v5 += v64;
    if ((v62 & 2) == 0)
    {
LABEL_151:
      if ((v62 & 4) == 0)
      {
        goto LABEL_152;
      }

      goto LABEL_163;
    }
  }

  else if ((*(this + 220) & 2) == 0)
  {
    goto LABEL_151;
  }

  v65 = *(this + 49);
  if (v65 >= 0x80)
  {
    v66 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v65) + 2;
    v62 = *(this + 55);
  }

  else
  {
    v66 = 3;
  }

  v5 += v66;
  if ((v62 & 4) == 0)
  {
LABEL_152:
    if ((v62 & 8) == 0)
    {
      goto LABEL_153;
    }

    goto LABEL_167;
  }

LABEL_163:
  v67 = *(this + 50);
  if (v67 >= 0x80)
  {
    v68 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v67) + 2;
    v62 = *(this + 55);
  }

  else
  {
    v68 = 3;
  }

  v5 += v68;
  if ((v62 & 8) == 0)
  {
LABEL_153:
    if ((v62 & 0x10) == 0)
    {
      goto LABEL_175;
    }

    goto LABEL_171;
  }

LABEL_167:
  v69 = *(this + 51);
  if (v69 >= 0x80)
  {
    v70 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v69) + 2;
    v62 = *(this + 55);
  }

  else
  {
    v70 = 3;
  }

  v5 += v70;
  if ((v62 & 0x10) != 0)
  {
LABEL_171:
    v71 = *(this + 52);
    if (v71 >= 0x80)
    {
      v72 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v71) + 2;
    }

    else
    {
      v72 = 3;
    }

    v5 += v72;
  }

LABEL_175:
  v73 = *(this + 8);
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
      v76 = *(*(this + 3) + 4 * v74);
      if (v76 >= 0x80)
      {
        v77 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v76);
        v73 = *(this + 8);
      }

      else
      {
        v77 = 1;
      }

      v75 += v77;
      ++v74;
    }

    while (v74 < v73);
  }

  v78 = *(this + 12);
  if (v78 < 1)
  {
    v80 = 0;
  }

  else
  {
    v79 = 0;
    v80 = 0;
    do
    {
      v81 = *(*(this + 5) + 4 * v79);
      if ((v81 & 0x80000000) != 0)
      {
        v82 = 10;
      }

      else if (v81 >= 0x80)
      {
        v82 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v81);
        v78 = *(this + 12);
      }

      else
      {
        v82 = 1;
      }

      v80 += v82;
      ++v79;
    }

    while (v79 < v78);
  }

  v83 = *(this + 18);
  if (v83 < 1)
  {
    v85 = 0;
  }

  else
  {
    v84 = 0;
    v85 = 0;
    do
    {
      v86 = *(*(this + 8) + 4 * v84);
      if (v86 >= 0x80)
      {
        v87 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v86);
        v83 = *(this + 18);
      }

      else
      {
        v87 = 1;
      }

      v85 += v87;
      ++v84;
    }

    while (v84 < v83);
  }

  v88 = *(this + 22);
  if (v88 < 1)
  {
    v90 = 0;
  }

  else
  {
    v89 = 0;
    v90 = 0;
    do
    {
      v91 = *(*(this + 10) + 4 * v89);
      if (v91 >= 0x80)
      {
        v92 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v91);
        v88 = *(this + 22);
      }

      else
      {
        v92 = 1;
      }

      v90 += v92;
      ++v89;
    }

    while (v89 < v88);
  }

  result = (v75 + v5 + v73 + v80 + v78 + v85 + v83 + v90 + v88);
  *(this + 53) = result;
  return result;
}

void awd::metrics::BluetoothHFPAudioLinkInfo::CheckTypeAndMergeFrom(awd::metrics::BluetoothHFPAudioLinkInfo *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  {
    awd::metrics::BluetoothHFPAudioLinkInfo::CheckTypeAndMergeFrom();
  }

  awd::metrics::BluetoothHFPAudioLinkInfo::MergeFrom(this, lpsrc);
}

void awd::metrics::BluetoothHFPAudioLinkInfo::CopyFrom(awd::metrics::BluetoothHFPAudioLinkInfo *this, const awd::metrics::BluetoothHFPAudioLinkInfo *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    awd::metrics::BluetoothHFPAudioLinkInfo::MergeFrom(this, a2);
  }
}

double awd::metrics::BluetoothHFPAudioLinkInfo::Swap(awd::metrics::BluetoothHFPAudioLinkInfo *this, awd::metrics::BluetoothHFPAudioLinkInfo *a2)
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
    v10 = *(a2 + 9);
    *(a2 + 8) = v9;
    v11 = *(this + 9);
    *(this + 9) = v10;
    *(a2 + 9) = v11;
    v12 = *(this + 10);
    *(this + 10) = *(a2 + 10);
    result = *(a2 + 11);
    *(a2 + 10) = v12;
    v14 = *(this + 11);
    *(this + 11) = result;
    *(a2 + 11) = v14;
    v15 = *(this + 12);
    *(this + 12) = *(a2 + 12);
    *(a2 + 12) = v15;
    LODWORD(v15) = *(this + 26);
    *(this + 26) = *(a2 + 26);
    *(a2 + 26) = v15;
    LODWORD(v15) = *(this + 27);
    *(this + 27) = *(a2 + 27);
    *(a2 + 27) = v15;
    LODWORD(v15) = *(this + 28);
    *(this + 28) = *(a2 + 28);
    *(a2 + 28) = v15;
    LODWORD(v15) = *(this + 29);
    *(this + 29) = *(a2 + 29);
    *(a2 + 29) = v15;
    LODWORD(v15) = *(this + 30);
    *(this + 30) = *(a2 + 30);
    *(a2 + 30) = v15;
    LODWORD(v15) = *(this + 31);
    *(this + 31) = *(a2 + 31);
    *(a2 + 31) = v15;
    LODWORD(v15) = *(this + 32);
    *(this + 32) = *(a2 + 32);
    *(a2 + 32) = v15;
    LODWORD(v15) = *(this + 33);
    *(this + 33) = *(a2 + 33);
    *(a2 + 33) = v15;
    LODWORD(v15) = *(this + 34);
    *(this + 34) = *(a2 + 34);
    *(a2 + 34) = v15;
    LODWORD(v15) = *(this + 35);
    *(this + 35) = *(a2 + 35);
    *(a2 + 35) = v15;
    LODWORD(v15) = *(this + 36);
    *(this + 36) = *(a2 + 36);
    *(a2 + 36) = v15;
    LODWORD(v15) = *(this + 37);
    *(this + 37) = *(a2 + 37);
    *(a2 + 37) = v15;
    LODWORD(v15) = *(this + 38);
    *(this + 38) = *(a2 + 38);
    *(a2 + 38) = v15;
    LODWORD(v15) = *(this + 39);
    *(this + 39) = *(a2 + 39);
    *(a2 + 39) = v15;
    LODWORD(v15) = *(this + 40);
    *(this + 40) = *(a2 + 40);
    *(a2 + 40) = v15;
    LODWORD(v15) = *(this + 41);
    *(this + 41) = *(a2 + 41);
    *(a2 + 41) = v15;
    LODWORD(v15) = *(this + 42);
    *(this + 42) = *(a2 + 42);
    *(a2 + 42) = v15;
    LODWORD(v15) = *(this + 43);
    *(this + 43) = *(a2 + 43);
    *(a2 + 43) = v15;
    LODWORD(v15) = *(this + 44);
    *(this + 44) = *(a2 + 44);
    *(a2 + 44) = v15;
    LODWORD(v15) = *(this + 45);
    *(this + 45) = *(a2 + 45);
    *(a2 + 45) = v15;
    LODWORD(v15) = *(this + 46);
    *(this + 46) = *(a2 + 46);
    *(a2 + 46) = v15;
    LODWORD(v15) = *(this + 47);
    *(this + 47) = *(a2 + 47);
    *(a2 + 47) = v15;
    LODWORD(v15) = *(this + 48);
    *(this + 48) = *(a2 + 48);
    *(a2 + 48) = v15;
    LODWORD(v15) = *(this + 49);
    *(this + 49) = *(a2 + 49);
    *(a2 + 49) = v15;
    LODWORD(v15) = *(this + 50);
    *(this + 50) = *(a2 + 50);
    *(a2 + 50) = v15;
    LODWORD(v15) = *(this + 51);
    *(this + 51) = *(a2 + 51);
    *(a2 + 51) = v15;
    LODWORD(v15) = *(this + 52);
    *(this + 52) = *(a2 + 52);
    *(a2 + 52) = v15;
    LODWORD(v15) = *(this + 54);
    *(this + 54) = *(a2 + 54);
    *(a2 + 54) = v15;
    LODWORD(v15) = *(this + 55);
    *(this + 55) = *(a2 + 55);
    *(a2 + 55) = v15;
    LODWORD(v15) = *(this + 53);
    *(this + 53) = *(a2 + 53);
    *(a2 + 53) = v15;
  }

  return result;
}

double awd::metrics::BluetoothFWError::SharedCtor(awd::metrics::BluetoothFWError *this)
{
  result = 0.0;
  v2 = MEMORY[0x29EDC9758];
  *(this + 8) = 0u;
  *(this + 3) = v2;
  *(this + 4) = v2;
  *(this + 5) = v2;
  *(this + 6) = 0;
  return result;
}

awd::metrics::BluetoothFWError *awd::metrics::BluetoothFWError::BluetoothFWError(awd::metrics::BluetoothFWError *this, const awd::metrics::BluetoothFWError *a2)
{
  *this = &unk_2A1D4B580;
  *(this + 1) = 0;
  v3 = MEMORY[0x29EDC9758];
  *(this + 2) = 0;
  *(this + 3) = v3;
  *(this + 4) = v3;
  *(this + 5) = v3;
  *(this + 6) = 0;
  awd::metrics::BluetoothFWError::MergeFrom(this, a2);
  return this;
}

void awd::metrics::BluetoothFWError::MergeFrom(awd::metrics::BluetoothFWError *this, const awd::metrics::BluetoothFWError *a2)
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

  if ((*(a2 + 52) & 1) == 0)
  {
    if ((*(a2 + 52) & 2) == 0)
    {
      goto LABEL_6;
    }

LABEL_13:
    v8 = *(a2 + 4);
    *(this + 13) |= 2u;
    *(this + 4) = v8;
    v4 = *(a2 + 13);
    if ((v4 & 4) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v7 = *(a2 + 1);
  *(this + 13) |= 1u;
  *(this + 1) = v7;
  v4 = *(a2 + 13);
  if ((v4 & 2) != 0)
  {
    goto LABEL_13;
  }

LABEL_6:
  if ((v4 & 4) != 0)
  {
LABEL_7:
    v5 = *(a2 + 5);
    *(this + 13) |= 4u;
    *(this + 5) = v5;
    v4 = *(a2 + 13);
  }

LABEL_8:
  v6 = MEMORY[0x29EDC9758];
  if ((v4 & 8) != 0)
  {
    v9 = *(a2 + 3);
    *(this + 13) |= 8u;
    v10 = *(this + 3);
    if (v10 == v6)
    {
      operator new();
    }

    std::string::operator=(v10, v9);
    v4 = *(a2 + 13);
    if ((v4 & 0x10) == 0)
    {
LABEL_10:
      if ((v4 & 0x20) == 0)
      {
        return;
      }

      goto LABEL_21;
    }
  }

  else if ((v4 & 0x10) == 0)
  {
    goto LABEL_10;
  }

  v11 = *(a2 + 4);
  *(this + 13) |= 0x10u;
  v12 = *(this + 4);
  if (v12 == v6)
  {
    operator new();
  }

  std::string::operator=(v12, v11);
  if ((*(a2 + 13) & 0x20) != 0)
  {
LABEL_21:
    v13 = *(a2 + 5);
    *(this + 13) |= 0x20u;
    v14 = *(this + 5);
    if (v14 == v6)
    {
      operator new();
    }

    std::string::operator=(v14, v13);
  }
}

void sub_296376470(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::metrics::BluetoothFWError::~BluetoothFWError(awd::metrics::BluetoothFWError *this)
{
  *this = &unk_2A1D4B580;
  awd::metrics::BluetoothFWError::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2A1D4B580;
  awd::metrics::BluetoothFWError::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2A1D4B580;
  awd::metrics::BluetoothFWError::SharedDtor(this);
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  JUMPOUT(0x29C259F00);
}

uint64_t awd::metrics::BluetoothFWError::SharedDtor(uint64_t this)
{
  v1 = this;
  v2 = *(this + 24);
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

uint64_t awd::metrics::BluetoothFWError::default_instance(awd::metrics::BluetoothFWError *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = awd::metrics::BluetoothFWError::default_instance_;
  if (!awd::metrics::BluetoothFWError::default_instance_)
  {
    awd::metrics::protobuf_AddDesc_Bluetooth_2eproto(0, a2, a3, a4);
    return awd::metrics::BluetoothFWError::default_instance_;
  }

  return result;
}

uint64_t awd::metrics::BluetoothFWError::Clear(uint64_t this)
{
  v1 = *(this + 52);
  if (v1)
  {
    *(this + 8) = 0;
    *(this + 16) = 0;
    v2 = MEMORY[0x29EDC9758];
    if ((v1 & 8) != 0)
    {
      v3 = *(this + 24);
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

    if ((*(this + 52) & 0x10) != 0)
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

    if ((*(this + 52) & 0x20) != 0)
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

  *(this + 52) = 0;
  return this;
}

uint64_t awd::metrics::BluetoothFWError::MergePartialFromCodedStream(awd::metrics::BluetoothFWError *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
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
          if (TagFallback >> 3 <= 3)
          {
            break;
          }

          if (v8 == 4)
          {
            if ((TagFallback & 7) == 0)
            {
              v16 = *(a2 + 1);
              v10 = *(a2 + 2);
              goto LABEL_50;
            }

            goto LABEL_27;
          }

          if (v8 != 5)
          {
            if (v8 == 6 && v9 == 2)
            {
              goto LABEL_64;
            }

            goto LABEL_27;
          }

          if (v9 != 2)
          {
            goto LABEL_27;
          }

          v18 = *(this + 13);
LABEL_58:
          *(this + 13) = v18 | 8;
          if (*(this + 3) == v5)
          {
            operator new();
          }

          result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
          if (!result)
          {
            return result;
          }

          v24 = *(a2 + 1);
          if (v24 < *(a2 + 2) && *v24 == 50)
          {
            *(a2 + 1) = v24 + 1;
LABEL_64:
            *(this + 13) |= 0x10u;
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

        if (v8 != 1)
        {
          break;
        }

        if ((TagFallback & 7) != 0)
        {
          goto LABEL_27;
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

        v17 = *(this + 13) | 1;
        *(this + 13) = v17;
        if (v15 < v12 && *v15 == 18)
        {
          *(a2 + 1) = v15 + 1;
          goto LABEL_36;
        }
      }

      if (v8 != 2)
      {
        break;
      }

      if (v9 != 2)
      {
        goto LABEL_27;
      }

      v17 = *(this + 13);
LABEL_36:
      *(this + 13) = v17 | 0x20;
      if (*(this + 5) == v5)
      {
        operator new();
      }

      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadBytes();
      if (!result)
      {
        return result;
      }

      v19 = *(a2 + 1);
      v10 = *(a2 + 2);
      if (v19 < v10 && *v19 == 24)
      {
        v11 = v19 + 1;
        *(a2 + 1) = v11;
LABEL_42:
        if (v11 >= v10 || (v20 = *v11, v20 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 4);
          if (!result)
          {
            return result;
          }

          v21 = *(a2 + 1);
          v10 = *(a2 + 2);
        }

        else
        {
          *(this + 4) = v20;
          v21 = v11 + 1;
          *(a2 + 1) = v21;
        }

        *(this + 13) |= 2u;
        if (v21 < v10 && *v21 == 32)
        {
          v16 = v21 + 1;
          *(a2 + 1) = v16;
LABEL_50:
          if (v16 >= v10 || (v22 = *v16, v22 < 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 5);
            if (!result)
            {
              return result;
            }

            v23 = *(a2 + 1);
            v10 = *(a2 + 2);
          }

          else
          {
            *(this + 5) = v22;
            v23 = v16 + 1;
            *(a2 + 1) = v23;
          }

          v18 = *(this + 13) | 4;
          *(this + 13) = v18;
          if (v23 < v10 && *v23 == 42)
          {
            *(a2 + 1) = v23 + 1;
            goto LABEL_58;
          }
        }
      }
    }

    if (v8 == 3 && (TagFallback & 7) == 0)
    {
      v11 = *(a2 + 1);
      v10 = *(a2 + 2);
      goto LABEL_42;
    }

LABEL_27:
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

uint64_t awd::metrics::BluetoothFWError::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 52);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(1, *(this + 8), a2, a4);
    v6 = v5[13];
    if ((v6 & 0x20) == 0)
    {
LABEL_3:
      if ((v6 & 2) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_10;
    }
  }

  else if ((v6 & 0x20) == 0)
  {
    goto LABEL_3;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBytes();
  v6 = v5[13];
  if ((v6 & 2) == 0)
  {
LABEL_4:
    if ((v6 & 4) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_10:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(3, v5[4], a2, a4);
  v6 = v5[13];
  if ((v6 & 4) == 0)
  {
LABEL_5:
    if ((v6 & 8) == 0)
    {
      goto LABEL_6;
    }

LABEL_12:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
    if ((v5[13] & 0x10) == 0)
    {
      return this;
    }

    goto LABEL_13;
  }

LABEL_11:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(4, v5[5], a2, a4);
  v6 = v5[13];
  if ((v6 & 8) != 0)
  {
    goto LABEL_12;
  }

LABEL_6:
  if ((v6 & 0x10) == 0)
  {
    return this;
  }

LABEL_13:

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
}

uint64_t awd::metrics::BluetoothFWError::ByteSize(awd::metrics::BluetoothFWError *this, unint64_t a2)
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
      goto LABEL_11;
    }
  }

  else
  {
    v4 = 0;
    if ((*(this + 52) & 2) == 0)
    {
      goto LABEL_11;
    }
  }

  v5 = *(this + 4);
  if (v5 >= 0x80)
  {
    v6 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5) + 1;
    v3 = *(this + 13);
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
      v3 = *(this + 13);
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

      goto LABEL_29;
    }
  }

  else if ((v3 & 8) == 0)
  {
    goto LABEL_13;
  }

  v9 = *(this + 3);
  v10 = *(v9 + 23);
  v11 = v10;
  v12 = *(v9 + 8);
  if ((v10 & 0x80u) == 0)
  {
    v13 = *(v9 + 23);
  }

  else
  {
    v13 = v12;
  }

  if (v13 >= 0x80)
  {
    v14 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v13);
    v10 = *(v9 + 23);
    v12 = *(v9 + 8);
    v3 = *(this + 13);
    v11 = *(v9 + 23);
  }

  else
  {
    v14 = 1;
  }

  if (v11 < 0)
  {
    v10 = v12;
  }

  v4 = (v4 + v14 + v10 + 1);
  if ((v3 & 0x10) == 0)
  {
LABEL_14:
    if ((v3 & 0x20) == 0)
    {
      goto LABEL_47;
    }

    goto LABEL_38;
  }

LABEL_29:
  v15 = *(this + 4);
  v16 = *(v15 + 23);
  v17 = v16;
  v18 = *(v15 + 8);
  if ((v16 & 0x80u) == 0)
  {
    v19 = *(v15 + 23);
  }

  else
  {
    v19 = v18;
  }

  if (v19 >= 0x80)
  {
    v20 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v19);
    v16 = *(v15 + 23);
    v18 = *(v15 + 8);
    v3 = *(this + 13);
    v17 = *(v15 + 23);
  }

  else
  {
    v20 = 1;
  }

  if (v17 < 0)
  {
    v16 = v18;
  }

  v4 = (v4 + v20 + v16 + 1);
  if ((v3 & 0x20) != 0)
  {
LABEL_38:
    v21 = *(this + 5);
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

LABEL_47:
  *(this + 12) = v4;
  return v4;
}

void awd::metrics::BluetoothFWError::CheckTypeAndMergeFrom(awd::metrics::BluetoothFWError *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  {
    awd::metrics::BluetoothFWError::CheckTypeAndMergeFrom();
  }

  awd::metrics::BluetoothFWError::MergeFrom(this, lpsrc);
}

void awd::metrics::BluetoothFWError::CopyFrom(awd::metrics::BluetoothFWError *this, const awd::metrics::BluetoothFWError *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    awd::metrics::BluetoothFWError::MergeFrom(this, a2);
  }
}

uint64_t awd::metrics::BluetoothFWError::Swap(uint64_t this, awd::metrics::BluetoothFWError *a2)
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
    v5 = *(this + 40);
    *(this + 40) = *(a2 + 5);
    *(a2 + 5) = v5;
    LODWORD(v5) = *(this + 52);
    *(this + 52) = *(a2 + 13);
    *(a2 + 13) = v5;
    LODWORD(v5) = *(this + 48);
    *(this + 48) = *(a2 + 12);
    *(a2 + 12) = v5;
  }

  return this;
}

double awd::metrics::BluetoothAudioArbitration::SharedCtor(awd::metrics::BluetoothAudioArbitration *this)
{
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  v2 = MEMORY[0x29EDC9758];
  *(this + 6) = 0;
  *(this + 7) = 0;
  *(this + 5) = v2;
  return result;
}

awd::metrics::BluetoothAudioArbitration *awd::metrics::BluetoothAudioArbitration::BluetoothAudioArbitration(awd::metrics::BluetoothAudioArbitration *this, const awd::metrics::BluetoothAudioArbitration *a2)
{
  *this = &unk_2A1D4B5F8;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  v3 = MEMORY[0x29EDC9758];
  *(this + 6) = 0;
  *(this + 7) = 0;
  *(this + 5) = v3;
  awd::metrics::BluetoothAudioArbitration::MergeFrom(this, a2);
  return this;
}

void awd::metrics::BluetoothAudioArbitration::MergeFrom(awd::metrics::BluetoothAudioArbitration *this, const awd::metrics::BluetoothAudioArbitration *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v14);
  }

  LOBYTE(v4) = *(a2 + 60);
  if (!v4)
  {
    return;
  }

  if (*(a2 + 60))
  {
    v6 = *(a2 + 1);
    *(this + 15) |= 1u;
    *(this + 1) = v6;
    v4 = *(a2 + 15);
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

  else if ((*(a2 + 60) & 2) == 0)
  {
    goto LABEL_6;
  }

  v7 = *(a2 + 4);
  *(this + 15) |= 2u;
  *(this + 4) = v7;
  v4 = *(a2 + 15);
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
  v8 = *(a2 + 5);
  *(this + 15) |= 4u;
  *(this + 5) = v8;
  v4 = *(a2 + 15);
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
  v9 = *(a2 + 8);
  *(this + 15) |= 8u;
  *(this + 8) = v9;
  v4 = *(a2 + 15);
  if ((v4 & 0x10) == 0)
  {
LABEL_9:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_10;
    }

LABEL_19:
    v11 = *(a2 + 9);
    *(this + 15) |= 0x20u;
    *(this + 9) = v11;
    v4 = *(a2 + 15);
    if ((v4 & 0x40) == 0)
    {
LABEL_11:
      if ((v4 & 0x80) == 0)
      {
        return;
      }

      goto LABEL_12;
    }

    goto LABEL_20;
  }

LABEL_18:
  v10 = *(a2 + 3);
  *(this + 15) |= 0x10u;
  *(this + 3) = v10;
  v4 = *(a2 + 15);
  if ((v4 & 0x20) != 0)
  {
    goto LABEL_19;
  }

LABEL_10:
  if ((v4 & 0x40) == 0)
  {
    goto LABEL_11;
  }

LABEL_20:
  v12 = *(a2 + 5);
  *(this + 15) |= 0x40u;
  v13 = *(this + 5);
  if (v13 == MEMORY[0x29EDC9758])
  {
    operator new();
  }

  std::string::operator=(v13, v12);
  if ((*(a2 + 15) & 0x80) != 0)
  {
LABEL_12:
    v5 = *(a2 + 6);
    *(this + 15) |= 0x80u;
    *(this + 6) = v5;
  }
}

void sub_2963771F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::metrics::BluetoothAudioArbitration::~BluetoothAudioArbitration(awd::metrics::BluetoothAudioArbitration *this)
{
  *this = &unk_2A1D4B5F8;
  awd::metrics::BluetoothAudioArbitration::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2A1D4B5F8;
  awd::metrics::BluetoothAudioArbitration::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2A1D4B5F8;
  awd::metrics::BluetoothAudioArbitration::SharedDtor(this);
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  JUMPOUT(0x29C259F00);
}

uint64_t awd::metrics::BluetoothAudioArbitration::SharedDtor(uint64_t this)
{
  v1 = *(this + 40);
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

uint64_t awd::metrics::BluetoothAudioArbitration::default_instance(awd::metrics::BluetoothAudioArbitration *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = awd::metrics::BluetoothAudioArbitration::default_instance_;
  if (!awd::metrics::BluetoothAudioArbitration::default_instance_)
  {
    awd::metrics::protobuf_AddDesc_Bluetooth_2eproto(0, a2, a3, a4);
    return awd::metrics::BluetoothAudioArbitration::default_instance_;
  }

  return result;
}

uint64_t awd::metrics::BluetoothAudioArbitration::Clear(uint64_t this)
{
  v1 = *(this + 60);
  if (v1)
  {
    *(this + 24) = 0u;
    *(this + 8) = 0u;
    if ((v1 & 0x40) != 0)
    {
      v2 = *(this + 40);
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

    *(this + 48) = 0;
  }

  *(this + 60) = 0;
  return this;
}

uint64_t awd::metrics::BluetoothAudioArbitration::MergePartialFromCodedStream(awd::metrics::BluetoothAudioArbitration *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
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

        if (TagFallback >> 3 <= 6)
        {
          if (v8 == 5)
          {
            if ((TagFallback & 7) == 0)
            {
              v18 = *(a2 + 1);
              v10 = *(a2 + 2);
              goto LABEL_68;
            }
          }

          else if (v8 == 6 && (TagFallback & 7) == 0)
          {
            v12 = *(a2 + 1);
            v10 = *(a2 + 2);
            goto LABEL_76;
          }

          goto LABEL_35;
        }

        if (v8 == 7)
        {
          if ((TagFallback & 7) == 0)
          {
            v20 = *(a2 + 1);
            v10 = *(a2 + 2);
            goto LABEL_84;
          }

          goto LABEL_35;
        }

        if (v8 != 8 || v9 != 2)
        {
          goto LABEL_35;
        }

        v14 = *(this + 15);
LABEL_92:
        *(this + 15) = v14 | 0x40;
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

      if (TagFallback >> 3 > 2)
      {
        if (v8 == 3)
        {
          if ((TagFallback & 7) == 0)
          {
            v19 = *(a2 + 1);
            v10 = *(a2 + 2);
            goto LABEL_52;
          }
        }

        else if (v8 == 4 && (TagFallback & 7) == 0)
        {
          v13 = *(a2 + 1);
          v10 = *(a2 + 2);
          goto LABEL_60;
        }

        goto LABEL_35;
      }

      if (v8 != 1)
      {
        break;
      }

      if ((TagFallback & 7) != 0)
      {
        goto LABEL_35;
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
        v11 = v17 + 1;
        *(a2 + 1) = v11;
LABEL_44:
        if (v11 >= v10 || (v21 = *v11, v21 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 4);
          if (!result)
          {
            return result;
          }

          v22 = *(a2 + 1);
          v10 = *(a2 + 2);
        }

        else
        {
          *(this + 4) = v21;
          v22 = v11 + 1;
          *(a2 + 1) = v22;
        }

        *(this + 15) |= 2u;
        if (v22 < v10 && *v22 == 24)
        {
          v19 = v22 + 1;
          *(a2 + 1) = v19;
LABEL_52:
          if (v19 >= v10 || (v23 = *v19, v23 < 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 5);
            if (!result)
            {
              return result;
            }

            v24 = *(a2 + 1);
            v10 = *(a2 + 2);
          }

          else
          {
            *(this + 5) = v23;
            v24 = v19 + 1;
            *(a2 + 1) = v24;
          }

          *(this + 15) |= 4u;
          if (v24 < v10 && *v24 == 32)
          {
            v13 = v24 + 1;
            *(a2 + 1) = v13;
LABEL_60:
            if (v13 >= v10 || (v25 = *v13, v25 < 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 8);
              if (!result)
              {
                return result;
              }

              v26 = *(a2 + 1);
              v10 = *(a2 + 2);
            }

            else
            {
              *(this + 8) = v25;
              v26 = v13 + 1;
              *(a2 + 1) = v26;
            }

            *(this + 15) |= 8u;
            if (v26 < v10 && *v26 == 40)
            {
              v18 = v26 + 1;
              *(a2 + 1) = v18;
LABEL_68:
              if (v18 >= v10 || (v27 = *v18, v27 < 0))
              {
                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 3);
                if (!result)
                {
                  return result;
                }

                v28 = *(a2 + 1);
                v10 = *(a2 + 2);
              }

              else
              {
                *(this + 3) = v27;
                v28 = v18 + 1;
                *(a2 + 1) = v28;
              }

              *(this + 15) |= 0x10u;
              if (v28 < v10 && *v28 == 48)
              {
                v12 = v28 + 1;
                *(a2 + 1) = v12;
LABEL_76:
                if (v12 >= v10 || (v29 = *v12, v29 < 0))
                {
                  result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 6);
                  if (!result)
                  {
                    return result;
                  }

                  v30 = *(a2 + 1);
                  v10 = *(a2 + 2);
                }

                else
                {
                  *(this + 6) = v29;
                  v30 = v12 + 1;
                  *(a2 + 1) = v30;
                }

                *(this + 15) |= 0x80u;
                if (v30 < v10 && *v30 == 56)
                {
                  v20 = v30 + 1;
                  *(a2 + 1) = v20;
LABEL_84:
                  if (v20 >= v10 || (v31 = *v20, v31 < 0))
                  {
                    result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 9);
                    if (!result)
                    {
                      return result;
                    }

                    v32 = *(a2 + 1);
                    v10 = *(a2 + 2);
                  }

                  else
                  {
                    *(this + 9) = v31;
                    v32 = v20 + 1;
                    *(a2 + 1) = v32;
                  }

                  v14 = *(this + 15) | 0x20;
                  *(this + 15) = v14;
                  if (v32 < v10 && *v32 == 66)
                  {
                    *(a2 + 1) = v32 + 1;
                    goto LABEL_92;
                  }
                }
              }
            }
          }
        }
      }
    }

    if (v8 == 2 && (TagFallback & 7) == 0)
    {
      v11 = *(a2 + 1);
      v10 = *(a2 + 2);
      goto LABEL_44;
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

uint64_t awd::metrics::BluetoothAudioArbitration::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 60);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(1, *(this + 8), a2, a4);
    v6 = *(v5 + 60);
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

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(2, *(v5 + 16), a2, a4);
  v6 = *(v5 + 60);
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
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(3, *(v5 + 20), a2, a4);
  v6 = *(v5 + 60);
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
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(4, *(v5 + 32), a2, a4);
  v6 = *(v5 + 60);
  if ((v6 & 0x10) == 0)
  {
LABEL_6:
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_15;
  }

LABEL_14:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(5, *(v5 + 24), a2, a4);
  v6 = *(v5 + 60);
  if ((v6 & 0x80) == 0)
  {
LABEL_7:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_8;
    }

LABEL_16:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(7, *(v5 + 36), a2, a4);
    if ((*(v5 + 60) & 0x40) == 0)
    {
      return this;
    }

    goto LABEL_17;
  }

LABEL_15:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(6, *(v5 + 48), a2, a4);
  v6 = *(v5 + 60);
  if ((v6 & 0x20) != 0)
  {
    goto LABEL_16;
  }

LABEL_8:
  if ((v6 & 0x40) == 0)
  {
    return this;
  }

LABEL_17:

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
}

uint64_t awd::metrics::BluetoothAudioArbitration::ByteSize(awd::metrics::BluetoothAudioArbitration *this, unint64_t a2)
{
  LOBYTE(v3) = *(this + 60);
  if (!v3)
  {
    v4 = 0;
    goto LABEL_18;
  }

  if (*(this + 60))
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
    if ((*(this + 60) & 2) == 0)
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
    v8 = *(this + 5);
    if (v8 >= 0x80)
    {
      v9 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v8) + 1;
      v3 = *(this + 15);
    }

    else
    {
      v9 = 2;
    }

    v4 = (v9 + v4);
    if ((v3 & 8) == 0)
    {
LABEL_13:
      if ((v3 & 0x10) == 0)
      {
        goto LABEL_14;
      }

      goto LABEL_27;
    }
  }

  else if ((v3 & 8) == 0)
  {
    goto LABEL_13;
  }

  v10 = *(this + 8);
  if (v10 >= 0x80)
  {
    v11 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v10) + 1;
    v3 = *(this + 15);
  }

  else
  {
    v11 = 2;
  }

  v4 = (v11 + v4);
  if ((v3 & 0x10) == 0)
  {
LABEL_14:
    if ((v3 & 0x20) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_28;
  }

LABEL_27:
  v4 = v4 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 3)) + 1;
  v3 = *(this + 15);
  if ((v3 & 0x20) == 0)
  {
LABEL_15:
    if ((v3 & 0x40) == 0)
    {
      goto LABEL_16;
    }

LABEL_32:
    v14 = *(this + 5);
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

    v4 = (v4 + v19 + v15 + 1);
    if ((v3 & 0x80) != 0)
    {
      goto LABEL_17;
    }

    goto LABEL_18;
  }

LABEL_28:
  v12 = *(this + 9);
  if (v12 >= 0x80)
  {
    v13 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v12) + 1;
    v3 = *(this + 15);
  }

  else
  {
    v13 = 2;
  }

  v4 = (v13 + v4);
  if ((v3 & 0x40) != 0)
  {
    goto LABEL_32;
  }

LABEL_16:
  if ((v3 & 0x80) != 0)
  {
LABEL_17:
    v4 = v4 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 6)) + 1;
  }

LABEL_18:
  *(this + 14) = v4;
  return v4;
}

void awd::metrics::BluetoothAudioArbitration::CheckTypeAndMergeFrom(awd::metrics::BluetoothAudioArbitration *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  {
    awd::metrics::BluetoothAudioArbitration::CheckTypeAndMergeFrom();
  }

  awd::metrics::BluetoothAudioArbitration::MergeFrom(this, lpsrc);
}

void awd::metrics::BluetoothAudioArbitration::CopyFrom(awd::metrics::BluetoothAudioArbitration *this, const awd::metrics::BluetoothAudioArbitration *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    awd::metrics::BluetoothAudioArbitration::MergeFrom(this, a2);
  }
}

uint64_t awd::metrics::BluetoothAudioArbitration::Swap(uint64_t this, awd::metrics::BluetoothAudioArbitration *a2)
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
    LODWORD(v2) = *(this + 32);
    *(this + 32) = *(a2 + 8);
    *(a2 + 8) = v2;
    v3 = *(this + 24);
    *(this + 24) = *(a2 + 3);
    *(a2 + 3) = v3;
    LODWORD(v3) = *(this + 36);
    *(this + 36) = *(a2 + 9);
    *(a2 + 9) = v3;
    v4 = *(this + 40);
    v5 = *(this + 48);
    v6 = *(a2 + 6);
    *(this + 40) = *(a2 + 5);
    *(this + 48) = v6;
    *(a2 + 5) = v4;
    *(a2 + 6) = v5;
    LODWORD(v4) = *(this + 60);
    *(this + 60) = *(a2 + 15);
    *(a2 + 15) = v4;
    LODWORD(v4) = *(this + 56);
    *(this + 56) = *(a2 + 14);
    *(a2 + 14) = v4;
  }

  return this;
}

uint64_t awd::metrics::BluetoothAACPCrash::SharedCtor(uint64_t this)
{
  *(this + 36) = 0;
  *(this + 32) = 0;
  v1 = MEMORY[0x29EDC9758];
  *(this + 8) = 0;
  *(this + 16) = v1;
  *(this + 24) = v1;
  return this;
}

awd::metrics::BluetoothAACPCrash *awd::metrics::BluetoothAACPCrash::BluetoothAACPCrash(awd::metrics::BluetoothAACPCrash *this, const awd::metrics::BluetoothAACPCrash *a2)
{
  *this = &unk_2A1D4B670;
  *(this + 1) = 0;
  *(this + 4) = 0;
  v3 = MEMORY[0x29EDC9758];
  *(this + 2) = MEMORY[0x29EDC9758];
  *(this + 3) = v3;
  *(this + 10) = 0;
  awd::metrics::BluetoothAACPCrash::MergeFrom(this, a2);
  return this;
}

void awd::metrics::BluetoothAACPCrash::MergeFrom(awd::metrics::BluetoothAACPCrash *this, const awd::metrics::BluetoothAACPCrash *a2)
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
      v6 = *(a2 + 8);
      *(this + 10) |= 2u;
      *(this + 8) = v6;
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

void sub_296377F58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::metrics::BluetoothAACPCrash::~BluetoothAACPCrash(awd::metrics::BluetoothAACPCrash *this)
{
  *this = &unk_2A1D4B670;
  awd::metrics::BluetoothAACPCrash::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2A1D4B670;
  awd::metrics::BluetoothAACPCrash::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2A1D4B670;
  awd::metrics::BluetoothAACPCrash::SharedDtor(this);
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  JUMPOUT(0x29C259F00);
}

uint64_t awd::metrics::BluetoothAACPCrash::SharedDtor(uint64_t this)
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

uint64_t awd::metrics::BluetoothAACPCrash::default_instance(awd::metrics::BluetoothAACPCrash *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = awd::metrics::BluetoothAACPCrash::default_instance_;
  if (!awd::metrics::BluetoothAACPCrash::default_instance_)
  {
    awd::metrics::protobuf_AddDesc_Bluetooth_2eproto(0, a2, a3, a4);
    return awd::metrics::BluetoothAACPCrash::default_instance_;
  }

  return result;
}

uint64_t awd::metrics::BluetoothAACPCrash::Clear(uint64_t this)
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

uint64_t awd::metrics::BluetoothAACPCrash::MergePartialFromCodedStream(awd::metrics::BluetoothAACPCrash *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
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
        if (TagFallback >> 3 <= 0xFF)
        {
          break;
        }

        if (v8 != 256)
        {
          if (v8 == 257 && v9 == 2)
          {
            goto LABEL_46;
          }

          goto LABEL_21;
        }

        if (v9 != 2)
        {
          goto LABEL_21;
        }

        v15 = *(this + 10);
LABEL_39:
        *(this + 10) = v15 | 4;
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
        if (*(a2 + 4) - v18 >= 2 && *v18 == 138 && v18[1] == 16)
        {
          *(a2 + 1) = v18 + 2;
LABEL_46:
          *(this + 10) |= 8u;
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
        if (v11 >= v10 || (v16 = *v11, v16 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 8);
          if (!result)
          {
            return result;
          }

          v17 = *(a2 + 1);
          v10 = *(a2 + 2);
        }

        else
        {
          *(this + 8) = v16;
          v17 = (v11 + 1);
          *(a2 + 1) = v17;
        }

        v15 = *(this + 10) | 2;
        *(this + 10) = v15;
        if (v10 - v17 >= 2 && *v17 == 130 && v17[1] == 16)
        {
          *(a2 + 1) = v17 + 2;
          goto LABEL_39;
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

uint64_t awd::metrics::BluetoothAACPCrash::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
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
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBytes();
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

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(2, *(v5 + 32), a2, a4);
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

uint64_t awd::metrics::BluetoothAACPCrash::ByteSize(awd::metrics::BluetoothAACPCrash *this, unint64_t a2)
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

  v5 = *(this + 8);
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
  if ((v3 & 4) == 0)
  {
    if ((v3 & 8) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_23;
  }

  v7 = *(this + 2);
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
    v3 = *(this + 10);
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

  v4 = (v4 + v12 + v8 + 2);
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

    v4 = (v4 + v18 + v14 + 2);
  }

LABEL_32:
  *(this + 9) = v4;
  return v4;
}

void awd::metrics::BluetoothAACPCrash::CheckTypeAndMergeFrom(awd::metrics::BluetoothAACPCrash *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  {
    awd::metrics::BluetoothAACPCrash::CheckTypeAndMergeFrom();
  }

  awd::metrics::BluetoothAACPCrash::MergeFrom(this, lpsrc);
}

void awd::metrics::BluetoothAACPCrash::CopyFrom(awd::metrics::BluetoothAACPCrash *this, const awd::metrics::BluetoothAACPCrash *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    awd::metrics::BluetoothAACPCrash::MergeFrom(this, a2);
  }
}

uint64_t awd::metrics::BluetoothAACPCrash::Swap(uint64_t this, awd::metrics::BluetoothAACPCrash *a2)
{
  if (a2 != this)
  {
    v2 = *(this + 32);
    *(this + 32) = *(a2 + 8);
    *(a2 + 8) = v2;
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

uint64_t awd::metrics::BluetoothAACPStatistics::SharedCtor(uint64_t this)
{
  *(this + 68) = 0;
  v1 = MEMORY[0x29EDC9758];
  *(this + 8) = 0;
  *(this + 16) = v1;
  *(this + 24) = v1;
  *(this + 32) = 0;
  *(this + 64) = 0;
  *(this + 40) = v1;
  *(this + 48) = v1;
  *(this + 56) = v1;
  return this;
}

awd::metrics::BluetoothAACPStatistics *awd::metrics::BluetoothAACPStatistics::BluetoothAACPStatistics(awd::metrics::BluetoothAACPStatistics *this, const awd::metrics::BluetoothAACPStatistics *a2)
{
  *this = &unk_2A1D4B6E8;
  *(this + 1) = 0;
  v3 = MEMORY[0x29EDC9758];
  *(this + 2) = MEMORY[0x29EDC9758];
  *(this + 3) = v3;
  *(this + 4) = 0;
  *(this + 5) = v3;
  *(this + 6) = v3;
  *(this + 7) = v3;
  *(this + 8) = 0;
  *(this + 18) = 0;
  awd::metrics::BluetoothAACPStatistics::MergeFrom(this, a2);
  return this;
}

void awd::metrics::BluetoothAACPStatistics::MergeFrom(awd::metrics::BluetoothAACPStatistics *this, const awd::metrics::BluetoothAACPStatistics *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v20);
  }

  v4 = *(a2 + 18);
  v5 = MEMORY[0x29EDC9758];
  if (!v4)
  {
    goto LABEL_12;
  }

  if (v4)
  {
    v6 = *(a2 + 1);
    *(this + 18) |= 1u;
    *(this + 1) = v6;
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

  v7 = *(a2 + 2);
  *(this + 18) |= 2u;
  v8 = *(this + 2);
  if (v8 == v5)
  {
    operator new();
  }

  std::string::operator=(v8, v7);
  v4 = *(a2 + 18);
  if ((v4 & 4) == 0)
  {
LABEL_7:
    if ((v4 & 8) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_21;
  }

LABEL_18:
  v9 = *(a2 + 3);
  *(this + 18) |= 4u;
  v10 = *(this + 3);
  if (v10 == v5)
  {
    operator new();
  }

  std::string::operator=(v10, v9);
  v4 = *(a2 + 18);
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
  v11 = *(a2 + 8);
  *(this + 18) |= 8u;
  *(this + 8) = v11;
  v4 = *(a2 + 18);
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
  v12 = *(a2 + 9);
  *(this + 18) |= 0x10u;
  *(this + 9) = v12;
  v4 = *(a2 + 18);
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
  v13 = *(a2 + 16);
  *(this + 18) |= 0x20u;
  *(this + 16) = v13;
  v4 = *(a2 + 18);
  if ((v4 & 0x40) != 0)
  {
LABEL_24:
    v14 = *(a2 + 5);
    *(this + 18) |= 0x40u;
    v15 = *(this + 5);
    if (v15 == v5)
    {
      operator new();
    }

    std::string::operator=(v15, v14);
    v4 = *(a2 + 18);
    if ((v4 & 0x80) != 0)
    {
      goto LABEL_27;
    }

LABEL_12:
    if ((v4 & 0x100) == 0)
    {
      return;
    }

    goto LABEL_30;
  }

LABEL_11:
  if ((v4 & 0x80) == 0)
  {
    goto LABEL_12;
  }

LABEL_27:
  v16 = *(a2 + 6);
  *(this + 18) |= 0x80u;
  v17 = *(this + 6);
  if (v17 == v5)
  {
    operator new();
  }

  std::string::operator=(v17, v16);
  if ((*(a2 + 18) & 0x100) != 0)
  {
LABEL_30:
    v18 = *(a2 + 7);
    *(this + 18) |= 0x100u;
    v19 = *(this + 7);
    if (v19 == v5)
    {
      operator new();
    }

    std::string::operator=(v19, v18);
  }
}

void sub_296378BCC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::metrics::BluetoothAACPStatistics::~BluetoothAACPStatistics(awd::metrics::BluetoothAACPStatistics *this)
{
  *this = &unk_2A1D4B6E8;
  awd::metrics::BluetoothAACPStatistics::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2A1D4B6E8;
  awd::metrics::BluetoothAACPStatistics::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2A1D4B6E8;
  awd::metrics::BluetoothAACPStatistics::SharedDtor(this);
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  JUMPOUT(0x29C259F00);
}

void *awd::metrics::BluetoothAACPStatistics::SharedDtor(void *this)
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

  v7 = v1[5];
  if (v7 != v3 && v7 != 0)
  {
    if (*(v7 + 23) < 0)
    {
      operator delete(*v7);
    }

    this = MEMORY[0x29C259F00](v7, 0x1012C40EC159624);
  }

  v9 = v1[6];
  if (v9 != v3 && v9 != 0)
  {
    if (*(v9 + 23) < 0)
    {
      operator delete(*v9);
    }

    this = MEMORY[0x29C259F00](v9, 0x1012C40EC159624);
  }

  v11 = v1[7];
  if (v11 != v3 && v11)
  {
    if (*(v11 + 23) < 0)
    {
      operator delete(*v11);
    }

    JUMPOUT(0x29C259F00);
  }

  return this;
}

uint64_t awd::metrics::BluetoothAACPStatistics::default_instance(awd::metrics::BluetoothAACPStatistics *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = awd::metrics::BluetoothAACPStatistics::default_instance_;
  if (!awd::metrics::BluetoothAACPStatistics::default_instance_)
  {
    awd::metrics::protobuf_AddDesc_Bluetooth_2eproto(0, a2, a3, a4);
    return awd::metrics::BluetoothAACPStatistics::default_instance_;
  }

  return result;
}

uint64_t awd::metrics::BluetoothAACPStatistics::Clear(uint64_t this)
{
  v1 = *(this + 72);
  v2 = MEMORY[0x29EDC9758];
  if (v1)
  {
    *(this + 8) = 0;
    if ((v1 & 2) != 0)
    {
      v3 = *(this + 16);
      if (v3 != v2)
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

    if ((*(this + 72) & 4) != 0)
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

    *(this + 32) = 0;
    *(this + 64) = 0;
    if ((*(this + 72) & 0x40) != 0)
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

    if ((*(this + 72) & 0x80) != 0)
    {
      v6 = *(this + 48);
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

  if (*(this + 73))
  {
    v7 = *(this + 56);
    if (v7 != v2)
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

  *(this + 72) = 0;
  return this;
}

uint64_t awd::metrics::BluetoothAACPStatistics::MergePartialFromCodedStream(awd::metrics::BluetoothAACPStatistics *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
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
          if (TagFallback >> 3 > 4)
          {
            break;
          }

          if (TagFallback >> 3 > 2)
          {
            if (v8 != 3)
            {
              if (v8 != 4 || (TagFallback & 7) != 0)
              {
                goto LABEL_38;
              }

              v12 = *(a2 + 1);
              v11 = *(a2 + 2);
              goto LABEL_58;
            }

            if (v9 != 2)
            {
              goto LABEL_38;
            }

LABEL_52:
            *(this + 18) |= 4u;
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
            v11 = *(a2 + 2);
            if (v21 < v11 && *v21 == 32)
            {
              v12 = v21 + 1;
              *(a2 + 1) = v12;
LABEL_58:
              if (v12 >= v11 || (v22 = *v12, v22 < 0))
              {
                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 8);
                if (!result)
                {
                  return result;
                }

                v23 = *(a2 + 1);
                v11 = *(a2 + 2);
              }

              else
              {
                *(this + 8) = v22;
                v23 = v12 + 1;
                *(a2 + 1) = v23;
              }

              *(this + 18) |= 8u;
              if (v23 < v11 && *v23 == 40)
              {
                v19 = v23 + 1;
                *(a2 + 1) = v19;
                goto LABEL_66;
              }
            }
          }

          else
          {
            if (v8 != 1)
            {
              if (v8 != 2 || v9 != 2)
              {
                goto LABEL_38;
              }

              v10 = *(this + 18);
              goto LABEL_46;
            }

            if ((TagFallback & 7) != 0)
            {
              goto LABEL_38;
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

            v10 = *(this + 18) | 1;
            *(this + 18) = v10;
            if (v17 < v14 && *v17 == 18)
            {
              *(a2 + 1) = v17 + 1;
LABEL_46:
              *(this + 18) = v10 | 2;
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
              if (v20 < *(a2 + 2) && *v20 == 26)
              {
                *(a2 + 1) = v20 + 1;
                goto LABEL_52;
              }
            }
          }
        }

        if (TagFallback >> 3 > 6)
        {
          break;
        }

        if (v8 != 5)
        {
          if (v8 != 6 || (TagFallback & 7) != 0)
          {
            goto LABEL_38;
          }

          v13 = *(a2 + 1);
          v11 = *(a2 + 2);
          goto LABEL_74;
        }

        if ((TagFallback & 7) != 0)
        {
          goto LABEL_38;
        }

        v19 = *(a2 + 1);
        v11 = *(a2 + 2);
LABEL_66:
        if (v19 >= v11 || (v24 = *v19, v24 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 9);
          if (!result)
          {
            return result;
          }

          v25 = *(a2 + 1);
          v11 = *(a2 + 2);
        }

        else
        {
          *(this + 9) = v24;
          v25 = v19 + 1;
          *(a2 + 1) = v25;
        }

        *(this + 18) |= 0x10u;
        if (v25 < v11 && *v25 == 48)
        {
          v13 = v25 + 1;
          *(a2 + 1) = v13;
LABEL_74:
          if (v13 >= v11 || (v26 = *v13, v26 < 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 16);
            if (!result)
            {
              return result;
            }

            v27 = *(a2 + 1);
            v11 = *(a2 + 2);
          }

          else
          {
            *(this + 16) = v26;
            v27 = v13 + 1;
            *(a2 + 1) = v27;
          }

          v18 = *(this + 18) | 0x20;
          *(this + 18) = v18;
          if (v27 < v11 && *v27 == 58)
          {
            *(a2 + 1) = v27 + 1;
LABEL_82:
            *(this + 18) = v18 | 0x40;
            if (*(this + 5) == v5)
            {
              operator new();
            }

            result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadBytes();
            if (!result)
            {
              return result;
            }

            v28 = *(a2 + 1);
            if (v28 < *(a2 + 2) && *v28 == 66)
            {
              *(a2 + 1) = v28 + 1;
              goto LABEL_88;
            }
          }
        }
      }

      if (v8 == 7)
      {
        if (v9 != 2)
        {
          goto LABEL_38;
        }

        v18 = *(this + 18);
        goto LABEL_82;
      }

      if (v8 != 8)
      {
        break;
      }

      if (v9 != 2)
      {
        goto LABEL_38;
      }

LABEL_88:
      *(this + 18) |= 0x80u;
      if (*(this + 6) == v5)
      {
        operator new();
      }

      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadBytes();
      if (!result)
      {
        return result;
      }

      v29 = *(a2 + 1);
      if (v29 < *(a2 + 2) && *v29 == 74)
      {
        *(a2 + 1) = v29 + 1;
LABEL_94:
        *(this + 18) |= 0x100u;
        if (*(this + 7) == v5)
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

    if (v8 == 9 && v9 == 2)
    {
      goto LABEL_94;
    }

LABEL_38:
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

uint64_t awd::metrics::BluetoothAACPStatistics::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 72);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(1, *(this + 8), a2, a4);
    v6 = v5[18];
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

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBytes();
  v6 = v5[18];
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
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBytes();
  v6 = v5[18];
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
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(4, v5[8], a2, a4);
  v6 = v5[18];
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
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(5, v5[9], a2, a4);
  v6 = v5[18];
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
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(6, v5[16], a2, a4);
  v6 = v5[18];
  if ((v6 & 0x40) == 0)
  {
LABEL_8:
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_9;
    }

LABEL_18:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBytes();
    if ((v5[18] & 0x100) == 0)
    {
      return this;
    }

    goto LABEL_19;
  }

LABEL_17:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBytes();
  v6 = v5[18];
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

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBytes();
}

uint64_t awd::metrics::BluetoothAACPStatistics::ByteSize(awd::metrics::BluetoothAACPStatistics *this, unint64_t a2)
{
  v3 = *(this + 18);
  if (!v3)
  {
    v4 = 0;
    if ((v3 & 0x100) == 0)
    {
      goto LABEL_73;
    }

    goto LABEL_64;
  }

  if (v3)
  {
    v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 1)) + 1;
    v3 = *(this + 18);
    if ((v3 & 2) == 0)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v4 = 0;
    if ((v3 & 2) == 0)
    {
      goto LABEL_17;
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
    v3 = *(this + 18);
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
LABEL_17:
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
      v3 = *(this + 18);
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
LABEL_19:
      if ((v3 & 0x10) == 0)
      {
        goto LABEL_20;
      }

      goto LABEL_38;
    }
  }

  else if ((v3 & 8) == 0)
  {
    goto LABEL_19;
  }

  v17 = *(this + 8);
  if (v17 >= 0x80)
  {
    v18 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v17) + 1;
    v3 = *(this + 18);
  }

  else
  {
    v18 = 2;
  }

  v4 = (v18 + v4);
  if ((v3 & 0x10) == 0)
  {
LABEL_20:
    if ((v3 & 0x20) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_42;
  }

LABEL_38:
  v19 = *(this + 9);
  if (v19 >= 0x80)
  {
    v20 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v19) + 1;
    v3 = *(this + 18);
  }

  else
  {
    v20 = 2;
  }

  v4 = (v20 + v4);
  if ((v3 & 0x20) == 0)
  {
LABEL_21:
    if ((v3 & 0x40) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_46;
  }

LABEL_42:
  v21 = *(this + 16);
  if (v21 >= 0x80)
  {
    v22 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v21) + 1;
    v3 = *(this + 18);
  }

  else
  {
    v22 = 2;
  }

  v4 = (v22 + v4);
  if ((v3 & 0x40) == 0)
  {
LABEL_22:
    if ((v3 & 0x80) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_55;
  }

LABEL_46:
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
    v3 = *(this + 18);
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
  if ((v3 & 0x80) == 0)
  {
LABEL_23:
    if ((v3 & 0x100) == 0)
    {
      goto LABEL_73;
    }

    goto LABEL_64;
  }

LABEL_55:
  v29 = *(this + 6);
  v30 = *(v29 + 23);
  v31 = v30;
  v32 = *(v29 + 8);
  if ((v30 & 0x80u) == 0)
  {
    v33 = *(v29 + 23);
  }

  else
  {
    v33 = v32;
  }

  if (v33 >= 0x80)
  {
    v34 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v33);
    v30 = *(v29 + 23);
    v32 = *(v29 + 8);
    v3 = *(this + 18);
    v31 = *(v29 + 23);
  }

  else
  {
    v34 = 1;
  }

  if (v31 < 0)
  {
    v30 = v32;
  }

  v4 = (v4 + v34 + v30 + 1);
  if ((v3 & 0x100) != 0)
  {
LABEL_64:
    v35 = *(this + 7);
    v36 = *(v35 + 23);
    v37 = v36;
    v38 = *(v35 + 8);
    if ((v36 & 0x80u) == 0)
    {
      v39 = *(v35 + 23);
    }

    else
    {
      v39 = v38;
    }

    if (v39 >= 0x80)
    {
      v40 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v39);
      v36 = *(v35 + 23);
      v38 = *(v35 + 8);
      v37 = *(v35 + 23);
    }

    else
    {
      v40 = 1;
    }

    if (v37 < 0)
    {
      v36 = v38;
    }

    v4 = (v4 + v40 + v36 + 1);
  }

LABEL_73:
  *(this + 17) = v4;
  return v4;
}

void awd::metrics::BluetoothAACPStatistics::CheckTypeAndMergeFrom(awd::metrics::BluetoothAACPStatistics *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  {
    awd::metrics::BluetoothAACPStatistics::CheckTypeAndMergeFrom();
  }

  awd::metrics::BluetoothAACPStatistics::MergeFrom(this, lpsrc);
}

void awd::metrics::BluetoothAACPStatistics::CopyFrom(awd::metrics::BluetoothAACPStatistics *this, const awd::metrics::BluetoothAACPStatistics *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    awd::metrics::BluetoothAACPStatistics::MergeFrom(this, a2);
  }
}

uint64_t awd::metrics::BluetoothAACPStatistics::Swap(uint64_t this, awd::metrics::BluetoothAACPStatistics *a2)
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
    LODWORD(v5) = *(this + 32);
    *(this + 32) = *(a2 + 8);
    *(a2 + 8) = v5;
    LODWORD(v5) = *(this + 36);
    *(this + 36) = *(a2 + 9);
    *(a2 + 9) = v5;
    LODWORD(v5) = *(this + 64);
    *(this + 64) = *(a2 + 16);
    *(a2 + 16) = v5;
    v6 = *(this + 40);
    *(this + 40) = *(a2 + 5);
    *(a2 + 5) = v6;
    v7 = *(this + 48);
    *(this + 48) = *(a2 + 6);
    *(a2 + 6) = v7;
    v8 = *(this + 56);
    *(this + 56) = *(a2 + 7);
    *(a2 + 7) = v8;
    LODWORD(v8) = *(this + 72);
    *(this + 72) = *(a2 + 18);
    *(a2 + 18) = v8;
    LODWORD(v8) = *(this + 68);
    *(this + 68) = *(a2 + 17);
    *(a2 + 17) = v8;
  }

  return this;
}

uint64_t awd::metrics::BluetoothAACPEarState::SharedCtor(uint64_t this)
{
  *(this + 8) = 0;
  *(this + 16) = 0;
  *(this + 32) = 0;
  *(this + 24) = 0;
  return this;
}

awd::metrics::BluetoothAACPEarState *awd::metrics::BluetoothAACPEarState::BluetoothAACPEarState(awd::metrics::BluetoothAACPEarState *this, const awd::metrics::BluetoothAACPEarState *a2)
{
  *this = &unk_2A1D4B760;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 3) = 0;
  *(this + 8) = 0;
  awd::metrics::BluetoothAACPEarState::MergeFrom(this, a2);
  return this;
}

void awd::metrics::BluetoothAACPEarState::MergeFrom(awd::metrics::BluetoothAACPEarState *this, const awd::metrics::BluetoothAACPEarState *a2)
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

void sub_296379BEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::metrics::BluetoothAACPEarState::~BluetoothAACPEarState(awd::metrics::BluetoothAACPEarState *this)
{
  *this = &unk_2A1D4B760;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2A1D4B760;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2A1D4B760;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  JUMPOUT(0x29C259F00);
}

uint64_t awd::metrics::BluetoothAACPEarState::default_instance(awd::metrics::BluetoothAACPEarState *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = awd::metrics::BluetoothAACPEarState::default_instance_;
  if (!awd::metrics::BluetoothAACPEarState::default_instance_)
  {
    awd::metrics::protobuf_AddDesc_Bluetooth_2eproto(0, a2, a3, a4);
    return awd::metrics::BluetoothAACPEarState::default_instance_;
  }

  return result;
}

uint64_t awd::metrics::BluetoothAACPEarState::Clear(uint64_t this)
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

uint64_t awd::metrics::BluetoothAACPEarState::MergePartialFromCodedStream(awd::metrics::BluetoothAACPEarState *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
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

uint64_t awd::metrics::BluetoothAACPEarState::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
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

uint64_t awd::metrics::BluetoothAACPEarState::ByteSize(awd::metrics::BluetoothAACPEarState *this, unint64_t a2)
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

void awd::metrics::BluetoothAACPEarState::CheckTypeAndMergeFrom(awd::metrics::BluetoothAACPEarState *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  {
    awd::metrics::BluetoothAACPEarState::CheckTypeAndMergeFrom();
  }

  awd::metrics::BluetoothAACPEarState::MergeFrom(this, lpsrc);
}

void awd::metrics::BluetoothAACPEarState::CopyFrom(awd::metrics::BluetoothAACPEarState *this, const awd::metrics::BluetoothAACPEarState *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    awd::metrics::BluetoothAACPEarState::MergeFrom(this, a2);
  }
}

uint64_t awd::metrics::BluetoothAACPEarState::Swap(uint64_t this, awd::metrics::BluetoothAACPEarState *a2)
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

void *awd::metrics::BluetoothAACPBattery::SharedCtor(void *this)
{
  this[1] = 0;
  this[2] = 0;
  this[3] = 0;
  return this;
}

awd::metrics::BluetoothAACPBattery *awd::metrics::BluetoothAACPBattery::BluetoothAACPBattery(awd::metrics::BluetoothAACPBattery *this, const awd::metrics::BluetoothAACPBattery *a2)
{
  *this = &unk_2A1D4B7D8;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 3) = 0;
  awd::metrics::BluetoothAACPBattery::MergeFrom(this, a2);
  return this;
}

void awd::metrics::BluetoothAACPBattery::MergeFrom(awd::metrics::BluetoothAACPBattery *this, const awd::metrics::BluetoothAACPBattery *a2)
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
      v6 = *(a2 + 1);
      *(this + 7) |= 1u;
      *(this + 1) = v6;
      v4 = *(a2 + 7);
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

    else if ((*(a2 + 28) & 2) == 0)
    {
      goto LABEL_6;
    }

    v7 = *(a2 + 4);
    *(this + 7) |= 2u;
    *(this + 4) = v7;
    if ((*(a2 + 7) & 4) == 0)
    {
      return;
    }

LABEL_7:
    v5 = *(a2 + 5);
    *(this + 7) |= 4u;
    *(this + 5) = v5;
  }
}

void sub_29637A3F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::metrics::BluetoothAACPBattery::~BluetoothAACPBattery(awd::metrics::BluetoothAACPBattery *this)
{
  *this = &unk_2A1D4B7D8;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2A1D4B7D8;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2A1D4B7D8;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  JUMPOUT(0x29C259F00);
}

uint64_t awd::metrics::BluetoothAACPBattery::default_instance(awd::metrics::BluetoothAACPBattery *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = awd::metrics::BluetoothAACPBattery::default_instance_;
  if (!awd::metrics::BluetoothAACPBattery::default_instance_)
  {
    awd::metrics::protobuf_AddDesc_Bluetooth_2eproto(0, a2, a3, a4);
    return awd::metrics::BluetoothAACPBattery::default_instance_;
  }

  return result;
}

uint64_t awd::metrics::BluetoothAACPBattery::Clear(uint64_t this)
{
  if (*(this + 28))
  {
    *(this + 8) = 0;
    *(this + 16) = 0;
  }

  *(this + 28) = 0;
  return this;
}

uint64_t awd::metrics::BluetoothAACPBattery::MergePartialFromCodedStream(awd::metrics::BluetoothAACPBattery *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
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
      if (TagFallback >> 3 == 4)
      {
        if ((TagFallback & 7) == 0)
        {
          v13 = *(a2 + 1);
          v8 = *(a2 + 2);
          goto LABEL_33;
        }

        goto LABEL_16;
      }

      if (v7 == 3)
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

      *(this + 7) |= 1u;
      if (v11 < v8 && *v11 == 24)
      {
        v12 = v11 + 1;
        *(a2 + 1) = v12;
LABEL_25:
        if (v12 >= v8 || (v14 = *v12, v14 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 4);
          if (!result)
          {
            return result;
          }

          v15 = *(a2 + 1);
          v8 = *(a2 + 2);
        }

        else
        {
          *(this + 4) = v14;
          v15 = v12 + 1;
          *(a2 + 1) = v15;
        }

        *(this + 7) |= 2u;
        if (v15 < v8 && *v15 == 32)
        {
          v13 = v15 + 1;
          *(a2 + 1) = v13;
LABEL_33:
          if (v13 >= v8 || (v16 = *v13, v16 < 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 5);
            if (!result)
            {
              return result;
            }

            v17 = *(a2 + 1);
            v8 = *(a2 + 2);
          }

          else
          {
            *(this + 5) = v16;
            v17 = v13 + 1;
            *(a2 + 1) = v17;
          }

          *(this + 7) |= 4u;
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

uint64_t awd::metrics::BluetoothAACPBattery::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 28);
  if ((v6 & 1) == 0)
  {
    if ((v6 & 2) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(3, v5[4], a2, a4);
    if ((v5[7] & 4) == 0)
    {
      return this;
    }

    goto LABEL_7;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(1, *(this + 8), a2, a4);
  v6 = v5[7];
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
  v7 = v5[5];

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(4, v7, a2, a4);
}

uint64_t awd::metrics::BluetoothAACPBattery::ByteSize(awd::metrics::BluetoothAACPBattery *this, unint64_t a2)
{
  LOBYTE(v3) = *(this + 28);
  if (!v3)
  {
    v4 = 0;
    goto LABEL_16;
  }

  if (*(this + 28))
  {
    v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 1)) + 1;
    v3 = *(this + 7);
    if ((v3 & 2) == 0)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v4 = 0;
    if ((*(this + 28) & 2) == 0)
    {
      goto LABEL_11;
    }
  }

  v5 = *(this + 4);
  if (v5 >= 0x80)
  {
    v6 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5) + 1;
    v3 = *(this + 7);
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
    }

    else
    {
      v8 = 2;
    }

    v4 = (v8 + v4);
  }

LABEL_16:
  *(this + 6) = v4;
  return v4;
}

void awd::metrics::BluetoothAACPBattery::CheckTypeAndMergeFrom(awd::metrics::BluetoothAACPBattery *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  {
    awd::metrics::BluetoothAACPBattery::CheckTypeAndMergeFrom();
  }

  awd::metrics::BluetoothAACPBattery::MergeFrom(this, lpsrc);
}

void awd::metrics::BluetoothAACPBattery::CopyFrom(awd::metrics::BluetoothAACPBattery *this, const awd::metrics::BluetoothAACPBattery *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    awd::metrics::BluetoothAACPBattery::MergeFrom(this, a2);
  }
}

uint64_t awd::metrics::BluetoothAACPBattery::Swap(uint64_t this, awd::metrics::BluetoothAACPBattery *a2)
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
    LODWORD(v2) = *(this + 28);
    *(this + 28) = *(a2 + 7);
    *(a2 + 7) = v2;
    LODWORD(v2) = *(this + 24);
    *(this + 24) = *(a2 + 6);
    *(a2 + 6) = v2;
  }

  return this;
}

uint64_t awd::metrics::BluetoothAACPDoubleTapSetting::SharedCtor(uint64_t this)
{
  *(this + 8) = 0;
  *(this + 16) = 0;
  *(this + 32) = 0;
  *(this + 24) = 0;
  return this;
}

awd::metrics::BluetoothAACPDoubleTapSetting *awd::metrics::BluetoothAACPDoubleTapSetting::BluetoothAACPDoubleTapSetting(awd::metrics::BluetoothAACPDoubleTapSetting *this, const awd::metrics::BluetoothAACPDoubleTapSetting *a2)
{
  *this = &unk_2A1D4B850;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 3) = 0;
  *(this + 8) = 0;
  awd::metrics::BluetoothAACPDoubleTapSetting::MergeFrom(this, a2);
  return this;
}

void awd::metrics::BluetoothAACPDoubleTapSetting::MergeFrom(awd::metrics::BluetoothAACPDoubleTapSetting *this, const awd::metrics::BluetoothAACPDoubleTapSetting *a2)
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

void sub_29637AB54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::metrics::BluetoothAACPDoubleTapSetting::~BluetoothAACPDoubleTapSetting(awd::metrics::BluetoothAACPDoubleTapSetting *this)
{
  *this = &unk_2A1D4B850;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2A1D4B850;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2A1D4B850;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  JUMPOUT(0x29C259F00);
}

uint64_t awd::metrics::BluetoothAACPDoubleTapSetting::default_instance(awd::metrics::BluetoothAACPDoubleTapSetting *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = awd::metrics::BluetoothAACPDoubleTapSetting::default_instance_;
  if (!awd::metrics::BluetoothAACPDoubleTapSetting::default_instance_)
  {
    awd::metrics::protobuf_AddDesc_Bluetooth_2eproto(0, a2, a3, a4);
    return awd::metrics::BluetoothAACPDoubleTapSetting::default_instance_;
  }

  return result;
}

uint64_t awd::metrics::BluetoothAACPDoubleTapSetting::Clear(uint64_t this)
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

uint64_t awd::metrics::BluetoothAACPDoubleTapSetting::MergePartialFromCodedStream(awd::metrics::BluetoothAACPDoubleTapSetting *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
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

uint64_t awd::metrics::BluetoothAACPDoubleTapSetting::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
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

uint64_t awd::metrics::BluetoothAACPDoubleTapSetting::ByteSize(awd::metrics::BluetoothAACPDoubleTapSetting *this, unint64_t a2)
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

void awd::metrics::BluetoothAACPDoubleTapSetting::CheckTypeAndMergeFrom(awd::metrics::BluetoothAACPDoubleTapSetting *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  {
    awd::metrics::BluetoothAACPDoubleTapSetting::CheckTypeAndMergeFrom();
  }

  awd::metrics::BluetoothAACPDoubleTapSetting::MergeFrom(this, lpsrc);
}

void awd::metrics::BluetoothAACPDoubleTapSetting::CopyFrom(awd::metrics::BluetoothAACPDoubleTapSetting *this, const awd::metrics::BluetoothAACPDoubleTapSetting *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    awd::metrics::BluetoothAACPDoubleTapSetting::MergeFrom(this, a2);
  }
}

uint64_t awd::metrics::BluetoothAACPDoubleTapSetting::Swap(uint64_t this, awd::metrics::BluetoothAACPDoubleTapSetting *a2)
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

double awd::metrics::BluetoothAACPLinkInfo::SharedCtor(awd::metrics::BluetoothAACPLinkInfo *this)
{
  result = 0.0;
  *(this + 16) = 0;
  *(this + 54) = 0;
  *(this + 62) = 0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 9) = 0;
  *(this + 232) = 0u;
  *(this + 248) = 0u;
  *(this + 33) = 0;
  *(this + 18) = 0u;
  *(this + 19) = 0u;
  *(this + 22) = 0u;
  *(this + 23) = 0u;
  *(this + 24) = 0u;
  *(this + 25) = 0u;
  *(this + 59) = 0;
  *(this + 456) = 0u;
  *(this + 134) = 0;
  *(this + 520) = 0u;
  return result;
}

awd::metrics::BluetoothAACPLinkInfo *awd::metrics::BluetoothAACPLinkInfo::BluetoothAACPLinkInfo(awd::metrics::BluetoothAACPLinkInfo *this, const awd::metrics::BluetoothAACPLinkInfo *a2)
{
  *this = &unk_2A1D4B8C8;
  bzero(this + 8, 0x214uLL);
  awd::metrics::BluetoothAACPLinkInfo::MergeFrom(this, a2);
  return this;
}

void sub_29637B300(_Unwind_Exception *a1)
{
  v3 = *(v1 + 63);
  if (v3)
  {
    MEMORY[0x29C259EE0](v3, 0x1000C8052888210);
  }

  v4 = *(v1 + 60);
  if (v4)
  {
    MEMORY[0x29C259EE0](v4, 0x1000C8052888210);
  }

  v5 = *(v1 + 55);
  if (v5)
  {
    MEMORY[0x29C259EE0](v5, 0x1000C8052888210);
  }

  v6 = *(v1 + 52);
  if (v6)
  {
    MEMORY[0x29C259EE0](v6, 0x1000C8052888210);
  }

  v7 = *(v1 + 42);
  if (v7)
  {
    MEMORY[0x29C259EE0](v7, 0x1000C8052888210);
  }

  v8 = *(v1 + 40);
  if (v8)
  {
    MEMORY[0x29C259EE0](v8, 0x1000C8052888210);
  }

  v9 = *(v1 + 34);
  if (v9)
  {
    MEMORY[0x29C259EE0](v9, 0x1000C8052888210);
  }

  v10 = *(v1 + 27);
  if (v10)
  {
    MEMORY[0x29C259EE0](v10, 0x1000C8052888210);
  }

  v11 = *(v1 + 25);
  if (v11)
  {
    MEMORY[0x29C259EE0](v11, 0x1000C8052888210);
  }

  v12 = *(v1 + 23);
  if (v12)
  {
    MEMORY[0x29C259EE0](v12, 0x1000C8052888210);
  }

  v13 = *(v1 + 21);
  if (v13)
  {
    MEMORY[0x29C259EE0](v13, 0x1000C8052888210);
  }

  v14 = *(v1 + 19);
  if (v14)
  {
    MEMORY[0x29C259EE0](v14, 0x1000C8052888210);
  }

  v15 = *(v1 + 17);
  if (v15)
  {
    MEMORY[0x29C259EE0](v15, 0x1000C8052888210);
  }

  v16 = *(v1 + 14);
  if (v16)
  {
    MEMORY[0x29C259EE0](v16, 0x1000C8052888210);
  }

  v17 = *(v1 + 12);
  if (v17)
  {
    MEMORY[0x29C259EE0](v17, 0x1000C8052888210);
  }

  v18 = *(v1 + 10);
  if (v18)
  {
    MEMORY[0x29C259EE0](v18, 0x1000C8052888210);
  }

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(v1);
  _Unwind_Resume(a1);
}

void awd::metrics::BluetoothAACPLinkInfo::MergeFrom(awd::metrics::BluetoothAACPLinkInfo *this, const awd::metrics::BluetoothAACPLinkInfo *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v87);
  }

  v4 = *(a2 + 22);
  if (v4)
  {
    wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 20, *(this + 22) + v4);
    memcpy((*(this + 10) + 4 * *(this + 22)), *(a2 + 10), 4 * *(a2 + 22));
    *(this + 22) += *(a2 + 22);
  }

  v5 = *(a2 + 26);
  if (v5)
  {
    wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 24, *(this + 26) + v5);
    memcpy((*(this + 12) + 4 * *(this + 26)), *(a2 + 12), 4 * *(a2 + 26));
    *(this + 26) += *(a2 + 26);
  }

  v6 = *(a2 + 30);
  if (v6)
  {
    wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 28, *(this + 30) + v6);
    memcpy((*(this + 14) + 4 * *(this + 30)), *(a2 + 14), 4 * *(a2 + 30));
    *(this + 30) += *(a2 + 30);
  }

  v7 = *(a2 + 36);
  if (v7)
  {
    wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 34, *(this + 36) + v7);
    memcpy((*(this + 17) + 4 * *(this + 36)), *(a2 + 17), 4 * *(a2 + 36));
    *(this + 36) += *(a2 + 36);
  }

  v8 = *(a2 + 40);
  if (v8)
  {
    wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 38, *(this + 40) + v8);
    memcpy((*(this + 19) + 4 * *(this + 40)), *(a2 + 19), 4 * *(a2 + 40));
    *(this + 40) += *(a2 + 40);
  }

  v9 = *(a2 + 44);
  if (v9)
  {
    wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 42, *(this + 44) + v9);
    memcpy((*(this + 21) + 4 * *(this + 44)), *(a2 + 21), 4 * *(a2 + 44));
    *(this + 44) += *(a2 + 44);
  }

  v10 = *(a2 + 48);
  if (v10)
  {
    wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 46, *(this + 48) + v10);
    memcpy((*(this + 23) + 4 * *(this + 48)), *(a2 + 23), 4 * *(a2 + 48));
    *(this + 48) += *(a2 + 48);
  }

  v11 = *(a2 + 52);
  if (v11)
  {
    wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 50, *(this + 52) + v11);
    memcpy((*(this + 25) + 4 * *(this + 52)), *(a2 + 25), 4 * *(a2 + 52));
    *(this + 52) += *(a2 + 52);
  }

  v12 = *(a2 + 56);
  if (v12)
  {
    wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 54, *(this + 56) + v12);
    memcpy((*(this + 27) + 4 * *(this + 56)), *(a2 + 27), 4 * *(a2 + 56));
    *(this + 56) += *(a2 + 56);
  }

  v13 = *(a2 + 70);
  if (v13)
  {
    wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 68, *(this + 70) + v13);
    memcpy((*(this + 34) + 4 * *(this + 70)), *(a2 + 34), 4 * *(a2 + 70));
    *(this + 70) += *(a2 + 70);
  }

  v14 = *(a2 + 82);
  if (v14)
  {
    wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 80, *(this + 82) + v14);
    memcpy((*(this + 40) + 4 * *(this + 82)), *(a2 + 40), 4 * *(a2 + 82));
    *(this + 82) += *(a2 + 82);
  }

  v15 = *(a2 + 86);
  if (v15)
  {
    wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 84, *(this + 86) + v15);
    memcpy((*(this + 42) + 4 * *(this + 86)), *(a2 + 42), 4 * *(a2 + 86));
    *(this + 86) += *(a2 + 86);
  }

  v16 = *(a2 + 106);
  if (v16)
  {
    wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 104, *(this + 106) + v16);
    memcpy((*(this + 52) + 4 * *(this + 106)), *(a2 + 52), 4 * *(a2 + 106));
    *(this + 106) += *(a2 + 106);
  }

  v17 = *(a2 + 112);
  if (v17)
  {
    wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 110, *(this + 112) + v17);
    memcpy((*(this + 55) + 4 * *(this + 112)), *(a2 + 55), 4 * *(a2 + 112));
    *(this + 112) += *(a2 + 112);
  }

  v18 = *(a2 + 122);
  if (v18)
  {
    wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 120, *(this + 122) + v18);
    memcpy((*(this + 60) + 4 * *(this + 122)), *(a2 + 60), 4 * *(a2 + 122));
    *(this + 122) += *(a2 + 122);
  }

  v19 = *(a2 + 128);
  if (v19)
  {
    wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 126, *(this + 128) + v19);
    memcpy((*(this + 63) + 4 * *(this + 128)), *(a2 + 63), 4 * *(a2 + 128));
    *(this + 128) += *(a2 + 128);
  }

  v20 = *(a2 + 132);
  if (!v20)
  {
    goto LABEL_45;
  }

  if (v20)
  {
    v32 = *(a2 + 1);
    *(this + 132) |= 1u;
    *(this + 1) = v32;
    v20 = *(a2 + 132);
    if ((v20 & 2) == 0)
    {
LABEL_38:
      if ((v20 & 4) == 0)
      {
        goto LABEL_39;
      }

      goto LABEL_121;
    }
  }

  else if ((v20 & 2) == 0)
  {
    goto LABEL_38;
  }

  v33 = *(a2 + 4);
  *(this + 132) |= 2u;
  *(this + 4) = v33;
  v20 = *(a2 + 132);
  if ((v20 & 4) == 0)
  {
LABEL_39:
    if ((v20 & 8) == 0)
    {
      goto LABEL_40;
    }

    goto LABEL_122;
  }

LABEL_121:
  v34 = *(a2 + 5);
  *(this + 132) |= 4u;
  *(this + 5) = v34;
  v20 = *(a2 + 132);
  if ((v20 & 8) == 0)
  {
LABEL_40:
    if ((v20 & 0x10) == 0)
    {
      goto LABEL_41;
    }

    goto LABEL_123;
  }

LABEL_122:
  v35 = *(a2 + 6);
  *(this + 132) |= 8u;
  *(this + 6) = v35;
  v20 = *(a2 + 132);
  if ((v20 & 0x10) == 0)
  {
LABEL_41:
    if ((v20 & 0x20) == 0)
    {
      goto LABEL_42;
    }

LABEL_124:
    v37 = *(a2 + 8);
    *(this + 132) |= 0x20u;
    *(this + 8) = v37;
    v20 = *(a2 + 132);
    if ((v20 & 0x40) == 0)
    {
LABEL_43:
      if ((v20 & 0x80) == 0)
      {
        goto LABEL_45;
      }

      goto LABEL_44;
    }

    goto LABEL_125;
  }

LABEL_123:
  v36 = *(a2 + 7);
  *(this + 132) |= 0x10u;
  *(this + 7) = v36;
  v20 = *(a2 + 132);
  if ((v20 & 0x20) != 0)
  {
    goto LABEL_124;
  }

LABEL_42:
  if ((v20 & 0x40) == 0)
  {
    goto LABEL_43;
  }

LABEL_125:
  v38 = *(a2 + 9);
  *(this + 132) |= 0x40u;
  *(this + 9) = v38;
  v20 = *(a2 + 132);
  if ((v20 & 0x80) != 0)
  {
LABEL_44:
    v21 = *(a2 + 10);
    *(this + 132) |= 0x80u;
    *(this + 10) = v21;
    v20 = *(a2 + 132);
  }

LABEL_45:
  if ((v20 & 0xFF00) == 0)
  {
    goto LABEL_55;
  }

  if ((v20 & 0x100) != 0)
  {
    v39 = *(a2 + 11);
    *(this + 132) |= 0x100u;
    *(this + 11) = v39;
    v20 = *(a2 + 132);
    if ((v20 & 0x200) == 0)
    {
LABEL_48:
      if ((v20 & 0x400) == 0)
      {
        goto LABEL_49;
      }

      goto LABEL_129;
    }
  }

  else if ((v20 & 0x200) == 0)
  {
    goto LABEL_48;
  }

  v40 = *(a2 + 12);
  *(this + 132) |= 0x200u;
  *(this + 12) = v40;
  v20 = *(a2 + 132);
  if ((v20 & 0x400) == 0)
  {
LABEL_49:
    if ((v20 & 0x800) == 0)
    {
      goto LABEL_50;
    }

    goto LABEL_130;
  }

LABEL_129:
  v41 = *(a2 + 13);
  *(this + 132) |= 0x400u;
  *(this + 13) = v41;
  v20 = *(a2 + 132);
  if ((v20 & 0x800) == 0)
  {
LABEL_50:
    if ((v20 & 0x1000) == 0)
    {
      goto LABEL_51;
    }

    goto LABEL_131;
  }

LABEL_130:
  v42 = *(a2 + 14);
  *(this + 132) |= 0x800u;
  *(this + 14) = v42;
  v20 = *(a2 + 132);
  if ((v20 & 0x1000) == 0)
  {
LABEL_51:
    if ((v20 & 0x2000) == 0)
    {
      goto LABEL_52;
    }

    goto LABEL_132;
  }

LABEL_131:
  v43 = *(a2 + 15);
  *(this + 132) |= 0x1000u;
  *(this + 15) = v43;
  v20 = *(a2 + 132);
  if ((v20 & 0x2000) == 0)
  {
LABEL_52:
    if ((v20 & 0x4000) == 0)
    {
      goto LABEL_53;
    }

    goto LABEL_133;
  }

LABEL_132:
  v44 = *(a2 + 16);
  *(this + 132) |= 0x2000u;
  *(this + 16) = v44;
  v20 = *(a2 + 132);
  if ((v20 & 0x4000) == 0)
  {
LABEL_53:
    if ((v20 & 0x8000) == 0)
    {
      goto LABEL_55;
    }

    goto LABEL_54;
  }

LABEL_133:
  v45 = *(a2 + 17);
  *(this + 132) |= 0x4000u;
  *(this + 17) = v45;
  v20 = *(a2 + 132);
  if ((v20 & 0x8000) != 0)
  {
LABEL_54:
    v22 = *(a2 + 18);
    *(this + 132) |= 0x8000u;
    *(this + 18) = v22;
    v20 = *(a2 + 132);
  }

LABEL_55:
  if ((v20 & 0xFF0000) != 0)
  {
    if ((v20 & 0x10000) != 0)
    {
      v23 = *(a2 + 19);
      *(this + 132) |= 0x10000u;
      *(this + 19) = v23;
      v20 = *(a2 + 132);
    }

    if ((v20 & 0x20000) != 0)
    {
      v24 = *(a2 + 32);
      *(this + 132) |= 0x20000u;
      *(this + 32) = v24;
      v20 = *(a2 + 132);
    }
  }

  if (v20 >> 25)
  {
    if ((v20 & 0x2000000) != 0)
    {
      v74 = *(a2 + 33);
      *(this + 132) |= 0x2000000u;
      *(this + 33) = v74;
      v20 = *(a2 + 132);
      if ((v20 & 0x10000000) == 0)
      {
LABEL_63:
        if ((v20 & 0x20000000) == 0)
        {
          goto LABEL_64;
        }

        goto LABEL_170;
      }
    }

    else if ((v20 & 0x10000000) == 0)
    {
      goto LABEL_63;
    }

    v75 = *(a2 + 58);
    *(this + 132) |= 0x10000000u;
    *(this + 58) = v75;
    v20 = *(a2 + 132);
    if ((v20 & 0x20000000) == 0)
    {
LABEL_64:
      if ((v20 & 0x40000000) == 0)
      {
        goto LABEL_65;
      }

      goto LABEL_171;
    }

LABEL_170:
    v76 = *(a2 + 59);
    *(this + 132) |= 0x20000000u;
    *(this + 59) = v76;
    v20 = *(a2 + 132);
    if ((v20 & 0x40000000) == 0)
    {
LABEL_65:
      if ((v20 & 0x80000000) == 0)
      {
        goto LABEL_66;
      }

LABEL_172:
      v78 = *(a2 + 61);
      *(this + 132) |= 0x80000000;
      *(this + 61) = v78;
      goto LABEL_66;
    }

LABEL_171:
    v77 = *(a2 + 60);
    *(this + 132) |= 0x40000000u;
    *(this + 60) = v77;
    if ((*(a2 + 132) & 0x80000000) == 0)
    {
      goto LABEL_66;
    }

    goto LABEL_172;
  }

LABEL_66:
  v25 = *(a2 + 133);
  if (!v25)
  {
    goto LABEL_75;
  }

  if (v25)
  {
    v46 = *(a2 + 62);
    *(this + 133) |= 1u;
    *(this + 62) = v46;
    v25 = *(a2 + 133);
    if ((v25 & 2) == 0)
    {
LABEL_69:
      if ((v25 & 4) == 0)
      {
        goto LABEL_70;
      }

      goto LABEL_137;
    }
  }

  else if ((v25 & 2) == 0)
  {
    goto LABEL_69;
  }

  v47 = *(a2 + 63);
  *(this + 133) |= 2u;
  *(this + 63) = v47;
  v25 = *(a2 + 133);
  if ((v25 & 4) == 0)
  {
LABEL_70:
    if ((v25 & 8) == 0)
    {
      goto LABEL_71;
    }

    goto LABEL_138;
  }

LABEL_137:
  v48 = *(a2 + 64);
  *(this + 133) |= 4u;
  *(this + 64) = v48;
  v25 = *(a2 + 133);
  if ((v25 & 8) == 0)
  {
LABEL_71:
    if ((v25 & 0x10) == 0)
    {
      goto LABEL_72;
    }

    goto LABEL_139;
  }

LABEL_138:
  v49 = *(a2 + 65);
  *(this + 133) |= 8u;
  *(this + 65) = v49;
  v25 = *(a2 + 133);
  if ((v25 & 0x10) == 0)
  {
LABEL_72:
    if ((v25 & 0x40) == 0)
    {
      goto LABEL_73;
    }

    goto LABEL_140;
  }

LABEL_139:
  v50 = *(a2 + 66);
  *(this + 133) |= 0x10u;
  *(this + 66) = v50;
  v25 = *(a2 + 133);
  if ((v25 & 0x40) == 0)
  {
LABEL_73:
    if ((v25 & 0x80) == 0)
    {
      goto LABEL_75;
    }

    goto LABEL_74;
  }

LABEL_140:
  v51 = *(a2 + 67);
  *(this + 133) |= 0x40u;
  *(this + 67) = v51;
  v25 = *(a2 + 133);
  if ((v25 & 0x80) != 0)
  {
LABEL_74:
    v26 = *(a2 + 72);
    *(this + 133) |= 0x80u;
    *(this + 72) = v26;
    v25 = *(a2 + 133);
  }

LABEL_75:
  if ((v25 & 0xFF00) == 0)
  {
    goto LABEL_84;
  }

  if ((v25 & 0x100) != 0)
  {
    v52 = *(a2 + 73);
    *(this + 133) |= 0x100u;
    *(this + 73) = v52;
    v25 = *(a2 + 133);
    if ((v25 & 0x200) == 0)
    {
LABEL_78:
      if ((v25 & 0x400) == 0)
      {
        goto LABEL_79;
      }

      goto LABEL_144;
    }
  }

  else if ((v25 & 0x200) == 0)
  {
    goto LABEL_78;
  }

  v53 = *(a2 + 74);
  *(this + 133) |= 0x200u;
  *(this + 74) = v53;
  v25 = *(a2 + 133);
  if ((v25 & 0x400) == 0)
  {
LABEL_79:
    if ((v25 & 0x800) == 0)
    {
      goto LABEL_80;
    }

    goto LABEL_145;
  }

LABEL_144:
  v54 = *(a2 + 75);
  *(this + 133) |= 0x400u;
  *(this + 75) = v54;
  v25 = *(a2 + 133);
  if ((v25 & 0x800) == 0)
  {
LABEL_80:
    if ((v25 & 0x1000) == 0)
    {
      goto LABEL_81;
    }

    goto LABEL_146;
  }

LABEL_145:
  v55 = *(a2 + 76);
  *(this + 133) |= 0x800u;
  *(this + 76) = v55;
  v25 = *(a2 + 133);
  if ((v25 & 0x1000) == 0)
  {
LABEL_81:
    if ((v25 & 0x2000) == 0)
    {
      goto LABEL_82;
    }

    goto LABEL_147;
  }

LABEL_146:
  v56 = *(a2 + 77);
  *(this + 133) |= 0x1000u;
  *(this + 77) = v56;
  v25 = *(a2 + 133);
  if ((v25 & 0x2000) == 0)
  {
LABEL_82:
    if ((v25 & 0x8000) == 0)
    {
      goto LABEL_84;
    }

    goto LABEL_83;
  }

LABEL_147:
  v57 = *(a2 + 78);
  *(this + 133) |= 0x2000u;
  *(this + 78) = v57;
  v25 = *(a2 + 133);
  if ((v25 & 0x8000) != 0)
  {
LABEL_83:
    v27 = *(a2 + 79);
    *(this + 133) |= 0x8000u;
    *(this + 79) = v27;
    v25 = *(a2 + 133);
  }

LABEL_84:
  if ((v25 & 0xFF0000) == 0)
  {
    goto LABEL_93;
  }

  if ((v25 & 0x10000) != 0)
  {
    v58 = *(a2 + 88);
    *(this + 133) |= 0x10000u;
    *(this + 88) = v58;
    v25 = *(a2 + 133);
    if ((v25 & 0x40000) == 0)
    {
LABEL_87:
      if ((v25 & 0x80000) == 0)
      {
        goto LABEL_88;
      }

      goto LABEL_151;
    }
  }

  else if ((v25 & 0x40000) == 0)
  {
    goto LABEL_87;
  }

  v59 = *(a2 + 89);
  *(this + 133) |= 0x40000u;
  *(this + 89) = v59;
  v25 = *(a2 + 133);
  if ((v25 & 0x80000) == 0)
  {
LABEL_88:
    if ((v25 & 0x100000) == 0)
    {
      goto LABEL_89;
    }

    goto LABEL_152;
  }

LABEL_151:
  v60 = *(a2 + 90);
  *(this + 133) |= 0x80000u;
  *(this + 90) = v60;
  v25 = *(a2 + 133);
  if ((v25 & 0x100000) == 0)
  {
LABEL_89:
    if ((v25 & 0x200000) == 0)
    {
      goto LABEL_90;
    }

    goto LABEL_153;
  }

LABEL_152:
  v61 = *(a2 + 91);
  *(this + 133) |= 0x100000u;
  *(this + 91) = v61;
  v25 = *(a2 + 133);
  if ((v25 & 0x200000) == 0)
  {
LABEL_90:
    if ((v25 & 0x400000) == 0)
    {
      goto LABEL_91;
    }

    goto LABEL_154;
  }

LABEL_153:
  v62 = *(a2 + 92);
  *(this + 133) |= 0x200000u;
  *(this + 92) = v62;
  v25 = *(a2 + 133);
  if ((v25 & 0x400000) == 0)
  {
LABEL_91:
    if ((v25 & 0x800000) == 0)
    {
      goto LABEL_93;
    }

    goto LABEL_92;
  }

LABEL_154:
  v63 = *(a2 + 93);
  *(this + 133) |= 0x400000u;
  *(this + 93) = v63;
  v25 = *(a2 + 133);
  if ((v25 & 0x800000) != 0)
  {
LABEL_92:
    v28 = *(a2 + 94);
    *(this + 133) |= 0x800000u;
    *(this + 94) = v28;
    v25 = *(a2 + 133);
  }

LABEL_93:
  if (!HIBYTE(v25))
  {
    goto LABEL_102;
  }

  if ((v25 & 0x1000000) != 0)
  {
    v79 = *(a2 + 95);
    *(this + 133) |= 0x1000000u;
    *(this + 95) = v79;
    v25 = *(a2 + 133);
    if ((v25 & 0x2000000) == 0)
    {
LABEL_96:
      if ((v25 & 0x4000000) == 0)
      {
        goto LABEL_97;
      }

      goto LABEL_175;
    }
  }

  else if ((v25 & 0x2000000) == 0)
  {
    goto LABEL_96;
  }

  v80 = *(a2 + 96);
  *(this + 133) |= 0x2000000u;
  *(this + 96) = v80;
  v25 = *(a2 + 133);
  if ((v25 & 0x4000000) == 0)
  {
LABEL_97:
    if ((v25 & 0x8000000) == 0)
    {
      goto LABEL_98;
    }

    goto LABEL_176;
  }

LABEL_175:
  v81 = *(a2 + 97);
  *(this + 133) |= 0x4000000u;
  *(this + 97) = v81;
  v25 = *(a2 + 133);
  if ((v25 & 0x8000000) == 0)
  {
LABEL_98:
    if ((v25 & 0x10000000) == 0)
    {
      goto LABEL_99;
    }

    goto LABEL_177;
  }

LABEL_176:
  v82 = *(a2 + 98);
  *(this + 133) |= 0x8000000u;
  *(this + 98) = v82;
  v25 = *(a2 + 133);
  if ((v25 & 0x10000000) == 0)
  {
LABEL_99:
    if ((v25 & 0x20000000) == 0)
    {
      goto LABEL_100;
    }

    goto LABEL_178;
  }

LABEL_177:
  v83 = *(a2 + 99);
  *(this + 133) |= 0x10000000u;
  *(this + 99) = v83;
  v25 = *(a2 + 133);
  if ((v25 & 0x20000000) == 0)
  {
LABEL_100:
    if ((v25 & 0x40000000) == 0)
    {
      goto LABEL_101;
    }

LABEL_179:
    v85 = *(a2 + 101);
    *(this + 133) |= 0x40000000u;
    *(this + 101) = v85;
    if ((*(a2 + 133) & 0x80000000) == 0)
    {
      goto LABEL_102;
    }

    goto LABEL_180;
  }

LABEL_178:
  v84 = *(a2 + 100);
  *(this + 133) |= 0x20000000u;
  *(this + 100) = v84;
  v25 = *(a2 + 133);
  if ((v25 & 0x40000000) != 0)
  {
    goto LABEL_179;
  }

LABEL_101:
  if ((v25 & 0x80000000) == 0)
  {
    goto LABEL_102;
  }

LABEL_180:
  v86 = *(a2 + 102);
  *(this + 133) |= 0x80000000;
  *(this + 102) = v86;
LABEL_102:
  v29 = *(a2 + 134);
  if (!v29)
  {
    goto LABEL_110;
  }

  if (v29)
  {
    v64 = *(a2 + 103);
    *(this + 134) |= 1u;
    *(this + 103) = v64;
    v29 = *(a2 + 134);
    if ((v29 & 2) == 0)
    {
LABEL_105:
      if ((v29 & 8) == 0)
      {
        goto LABEL_106;
      }

      goto LABEL_158;
    }
  }

  else if ((v29 & 2) == 0)
  {
    goto LABEL_105;
  }

  v65 = *(a2 + 108);
  *(this + 134) |= 2u;
  *(this + 108) = v65;
  v29 = *(a2 + 134);
  if ((v29 & 8) == 0)
  {
LABEL_106:
    if ((v29 & 0x20) == 0)
    {
      goto LABEL_107;
    }

    goto LABEL_159;
  }

LABEL_158:
  v66 = *(a2 + 109);
  *(this + 134) |= 8u;
  *(this + 109) = v66;
  v29 = *(a2 + 134);
  if ((v29 & 0x20) == 0)
  {
LABEL_107:
    if ((v29 & 0x40) == 0)
    {
      goto LABEL_108;
    }

    goto LABEL_160;
  }

LABEL_159:
  v67 = *(a2 + 114);
  *(this + 134) |= 0x20u;
  *(this + 114) = v67;
  v29 = *(a2 + 134);
  if ((v29 & 0x40) == 0)
  {
LABEL_108:
    if ((v29 & 0x80) == 0)
    {
      goto LABEL_110;
    }

    goto LABEL_109;
  }

LABEL_160:
  v68 = *(a2 + 115);
  *(this + 134) |= 0x40u;
  *(this + 115) = v68;
  v29 = *(a2 + 134);
  if ((v29 & 0x80) != 0)
  {
LABEL_109:
    v30 = *(a2 + 116);
    *(this + 134) |= 0x80u;
    *(this + 116) = v30;
    v29 = *(a2 + 134);
  }

LABEL_110:
  if ((v29 & 0xFF00) == 0)
  {
    return;
  }

  if ((v29 & 0x100) != 0)
  {
    v69 = *(a2 + 117);
    *(this + 134) |= 0x100u;
    *(this + 117) = v69;
    v29 = *(a2 + 134);
    if ((v29 & 0x200) == 0)
    {
LABEL_113:
      if ((v29 & 0x400) == 0)
      {
        goto LABEL_114;
      }

      goto LABEL_164;
    }
  }

  else if ((v29 & 0x200) == 0)
  {
    goto LABEL_113;
  }

  v70 = *(a2 + 118);
  *(this + 134) |= 0x200u;
  *(this + 118) = v70;
  v29 = *(a2 + 134);
  if ((v29 & 0x400) == 0)
  {
LABEL_114:
    if ((v29 & 0x800) == 0)
    {
      goto LABEL_115;
    }

    goto LABEL_165;
  }

LABEL_164:
  v71 = *(a2 + 119);
  *(this + 134) |= 0x400u;
  *(this + 119) = v71;
  v29 = *(a2 + 134);
  if ((v29 & 0x800) == 0)
  {
LABEL_115:
    if ((v29 & 0x2000) == 0)
    {
      goto LABEL_116;
    }

    goto LABEL_166;
  }

LABEL_165:
  v72 = *(a2 + 124);
  *(this + 134) |= 0x800u;
  *(this + 124) = v72;
  v29 = *(a2 + 134);
  if ((v29 & 0x2000) == 0)
  {
LABEL_116:
    if ((v29 & 0x4000) == 0)
    {
      return;
    }

    goto LABEL_117;
  }

LABEL_166:
  v73 = *(a2 + 125);
  *(this + 134) |= 0x2000u;
  *(this + 125) = v73;
  if ((*(a2 + 134) & 0x4000) != 0)
  {
LABEL_117:
    v31 = *(a2 + 130);
    *(this + 134) |= 0x4000u;
    *(this + 130) = v31;
  }
}

void sub_29637C128(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::metrics::BluetoothAACPLinkInfo::~BluetoothAACPLinkInfo(awd::metrics::BluetoothAACPLinkInfo *this)
{
  *this = &unk_2A1D4B8C8;
  v2 = *(this + 63);
  if (v2)
  {
    MEMORY[0x29C259EE0](v2, 0x1000C8052888210);
  }

  v3 = *(this + 60);
  if (v3)
  {
    MEMORY[0x29C259EE0](v3, 0x1000C8052888210);
  }

  v4 = *(this + 55);
  if (v4)
  {
    MEMORY[0x29C259EE0](v4, 0x1000C8052888210);
  }

  v5 = *(this + 52);
  if (v5)
  {
    MEMORY[0x29C259EE0](v5, 0x1000C8052888210);
  }

  v6 = *(this + 42);
  if (v6)
  {
    MEMORY[0x29C259EE0](v6, 0x1000C8052888210);
  }

  v7 = *(this + 40);
  if (v7)
  {
    MEMORY[0x29C259EE0](v7, 0x1000C8052888210);
  }

  v8 = *(this + 34);
  if (v8)
  {
    MEMORY[0x29C259EE0](v8, 0x1000C8052888210);
  }

  v9 = *(this + 27);
  if (v9)
  {
    MEMORY[0x29C259EE0](v9, 0x1000C8052888210);
  }

  v10 = *(this + 25);
  if (v10)
  {
    MEMORY[0x29C259EE0](v10, 0x1000C8052888210);
  }

  v11 = *(this + 23);
  if (v11)
  {
    MEMORY[0x29C259EE0](v11, 0x1000C8052888210);
  }

  v12 = *(this + 21);
  if (v12)
  {
    MEMORY[0x29C259EE0](v12, 0x1000C8052888210);
  }

  v13 = *(this + 19);
  if (v13)
  {
    MEMORY[0x29C259EE0](v13, 0x1000C8052888210);
  }

  v14 = *(this + 17);
  if (v14)
  {
    MEMORY[0x29C259EE0](v14, 0x1000C8052888210);
  }

  v15 = *(this + 14);
  if (v15)
  {
    MEMORY[0x29C259EE0](v15, 0x1000C8052888210);
  }

  v16 = *(this + 12);
  if (v16)
  {
    MEMORY[0x29C259EE0](v16, 0x1000C8052888210);
  }

  v17 = *(this + 10);
  if (v17)
  {
    MEMORY[0x29C259EE0](v17, 0x1000C8052888210);
  }

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  awd::metrics::BluetoothAACPLinkInfo::~BluetoothAACPLinkInfo(this);

  JUMPOUT(0x29C259F00);
}

uint64_t awd::metrics::BluetoothAACPLinkInfo::default_instance(awd::metrics::BluetoothAACPLinkInfo *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = awd::metrics::BluetoothAACPLinkInfo::default_instance_;
  if (!awd::metrics::BluetoothAACPLinkInfo::default_instance_)
  {
    awd::metrics::protobuf_AddDesc_Bluetooth_2eproto(0, a2, a3, a4);
    return awd::metrics::BluetoothAACPLinkInfo::default_instance_;
  }

  return result;
}

uint64_t awd::metrics::BluetoothAACPLinkInfo::Clear(uint64_t this)
{
  v1 = *(this + 528);
  if (v1)
  {
    *(this + 40) = 0;
    *(this + 24) = 0u;
    *(this + 8) = 0u;
  }

  if ((v1 & 0xFF00) != 0)
  {
    *(this + 60) = 0u;
    *(this + 44) = 0u;
  }

  if ((v1 & 0xFF0000) != 0)
  {
    *(this + 76) = 0;
    *(this + 128) = 0;
  }

  if (v1 >> 25)
  {
    *(this + 132) = 0;
    *(this + 232) = 0;
    *(this + 240) = 0;
  }

  v2 = *(this + 532);
  if (v2)
  {
    *(this + 288) = 0;
    *(this + 256) = 0;
    *(this + 264) = 0;
    *(this + 248) = 0;
  }

  if ((v2 & 0xFF00) != 0)
  {
    *(this + 316) = 0;
    *(this + 300) = 0;
    *(this + 292) = 0;
    *(this + 308) = 0;
  }

  if ((v2 & 0xFF0000) != 0)
  {
    *(this + 352) = 0;
    *(this + 360) = 0;
    *(this + 376) = 0;
    *(this + 368) = 0;
  }

  if (HIBYTE(v2))
  {
    *(this + 380) = 0u;
    *(this + 396) = 0u;
  }

  v3 = *(this + 536);
  if (v3)
  {
    *(this + 412) = 0;
    *(this + 432) = 0;
    *(this + 456) = 0;
    *(this + 464) = 0;
  }

  if ((v3 & 0xFF00) != 0)
  {
    *(this + 468) = 0;
    *(this + 472) = 0;
    *(this + 496) = 0;
    *(this + 520) = 0;
  }

  *(this + 88) = 0;
  *(this + 104) = 0;
  *(this + 120) = 0;
  *(this + 144) = 0;
  *(this + 160) = 0;
  *(this + 176) = 0;
  *(this + 192) = 0;
  *(this + 208) = 0;
  *(this + 224) = 0;
  *(this + 280) = 0;
  *(this + 328) = 0;
  *(this + 344) = 0;
  *(this + 424) = 0;
  *(this + 448) = 0;
  *(this + 488) = 0;
  *(this + 512) = 0;
  *(this + 528) = 0;
  *(this + 536) = 0;
  return this;
}

uint64_t awd::metrics::BluetoothAACPLinkInfo::MergePartialFromCodedStream(awd::metrics::BluetoothAACPLinkInfo *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
{
  v427 = (this + 520);
  v413 = (this + 256);
  v411 = (this + 260);
  v409 = (this + 264);
  v429 = (this + 268);
  v425 = (this + 288);
  v421 = (this + 292);
  v418 = (this + 296);
  v416 = (this + 300);
  v414 = (this + 304);
  v412 = (this + 308);
  v410 = (this + 312);
  v428 = (this + 316);
  v424 = (this + 352);
  v430 = (this + 356);
  v426 = (this + 360);
  v422 = (this + 364);
  v419 = (this + 368);
  v417 = (this + 372);
  v415 = (this + 376);
  v407 = (this + 392);
  v408 = (this + 388);
  v405 = (this + 400);
  v406 = (this + 396);
  v403 = (this + 408);
  v404 = (this + 404);
  v401 = (this + 432);
  v402 = (this + 412);
  v5 = (this + 436);
  v6 = (this + 456);
  v7 = (this + 460);
  v423 = (this + 464);
  v420 = (this + 468);
  v8 = (this + 472);
  v9 = (this + 476);
  v10 = (this + 496);
  v11 = (this + 500);
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
          goto LABEL_200;
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

        *(this + 132) |= 1u;
        if (v18 < v15 && *v18 == 16)
        {
          v55 = v18 + 1;
          *(a2 + 1) = v55;
          goto LABEL_226;
        }

        continue;
      case 2u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_200;
        }

        v55 = *(a2 + 1);
        v15 = *(a2 + 2);
LABEL_226:
        if (v55 >= v15 || (v99 = *v55, v99 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 4);
          if (!result)
          {
            return result;
          }

          v100 = *(a2 + 1);
          v15 = *(a2 + 2);
        }

        else
        {
          *(this + 4) = v99;
          v100 = v55 + 1;
          *(a2 + 1) = v100;
        }

        *(this + 132) |= 2u;
        if (v100 >= v15 || *v100 != 24)
        {
          continue;
        }

        v50 = v100 + 1;
        *(a2 + 1) = v50;
LABEL_234:
        if (v50 >= v15 || (v101 = *v50, v101 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 5);
          if (!result)
          {
            return result;
          }

          v102 = *(a2 + 1);
          v15 = *(a2 + 2);
        }

        else
        {
          *(this + 5) = v101;
          v102 = v50 + 1;
          *(a2 + 1) = v102;
        }

        *(this + 132) |= 4u;
        if (v102 >= v15 || *v102 != 32)
        {
          continue;
        }

        v53 = v102 + 1;
        *(a2 + 1) = v53;
LABEL_242:
        if (v53 >= v15 || (v103 = *v53, v103 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 6);
          if (!result)
          {
            return result;
          }

          v104 = *(a2 + 1);
          v15 = *(a2 + 2);
        }

        else
        {
          *(this + 6) = v103;
          v104 = v53 + 1;
          *(a2 + 1) = v104;
        }

        *(this + 132) |= 8u;
        if (v104 >= v15 || *v104 != 40)
        {
          continue;
        }

        v43 = v104 + 1;
        *(a2 + 1) = v43;
LABEL_250:
        if (v43 >= v15 || (v105 = *v43, v105 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 7);
          if (!result)
          {
            return result;
          }

          v106 = *(a2 + 1);
          v15 = *(a2 + 2);
        }

        else
        {
          *(this + 7) = v105;
          v106 = v43 + 1;
          *(a2 + 1) = v106;
        }

        *(this + 132) |= 0x10u;
        if (v106 >= v15 || *v106 != 48)
        {
          continue;
        }

        v61 = v106 + 1;
        *(a2 + 1) = v61;
LABEL_258:
        if (v61 >= v15 || (v107 = *v61, v107 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 8);
          if (!result)
          {
            return result;
          }

          v108 = *(a2 + 1);
          v15 = *(a2 + 2);
        }

        else
        {
          *(this + 8) = v107;
          v108 = v61 + 1;
          *(a2 + 1) = v108;
        }

        *(this + 132) |= 0x20u;
        if (v108 >= v15 || *v108 != 56)
        {
          continue;
        }

        v65 = v108 + 1;
        *(a2 + 1) = v65;
LABEL_266:
        if (v65 >= v15 || (v109 = *v65, v109 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 9);
          if (!result)
          {
            return result;
          }

          v110 = *(a2 + 1);
          v15 = *(a2 + 2);
        }

        else
        {
          *(this + 9) = v109;
          v110 = v65 + 1;
          *(a2 + 1) = v110;
        }

        *(this + 132) |= 0x40u;
        if (v110 >= v15 || *v110 != 64)
        {
          continue;
        }

        v54 = v110 + 1;
        *(a2 + 1) = v54;
LABEL_274:
        if (v54 >= v15 || (v111 = *v54, v111 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 10);
          if (!result)
          {
            return result;
          }

          v112 = *(a2 + 1);
          v15 = *(a2 + 2);
        }

        else
        {
          *(this + 10) = v111;
          v112 = v54 + 1;
          *(a2 + 1) = v112;
        }

        *(this + 132) |= 0x80u;
        if (v112 >= v15 || *v112 != 72)
        {
          continue;
        }

        v67 = v112 + 1;
        *(a2 + 1) = v67;
LABEL_282:
        if (v67 >= v15 || (v113 = *v67, v113 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 11);
          if (!result)
          {
            return result;
          }

          v114 = *(a2 + 1);
          v15 = *(a2 + 2);
        }

        else
        {
          *(this + 11) = v113;
          v114 = v67 + 1;
          *(a2 + 1) = v114;
        }

        *(this + 132) |= 0x100u;
        if (v114 >= v15 || *v114 != 80)
        {
          continue;
        }

        v48 = v114 + 1;
        *(a2 + 1) = v48;
LABEL_290:
        if (v48 >= v15 || (v115 = *v48, v115 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 12);
          if (!result)
          {
            return result;
          }

          v116 = *(a2 + 1);
          v15 = *(a2 + 2);
        }

        else
        {
          *(this + 12) = v115;
          v116 = v48 + 1;
          *(a2 + 1) = v116;
        }

        *(this + 132) |= 0x200u;
        if (v116 >= v15 || *v116 != 88)
        {
          continue;
        }

        v66 = v116 + 1;
        *(a2 + 1) = v66;
LABEL_298:
        if (v66 >= v15 || (v117 = *v66, v117 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 13);
          if (!result)
          {
            return result;
          }

          v118 = *(a2 + 1);
          v15 = *(a2 + 2);
        }

        else
        {
          *(this + 13) = v117;
          v118 = v66 + 1;
          *(a2 + 1) = v118;
        }

        *(this + 132) |= 0x400u;
        if (v118 >= v15 || *v118 != 96)
        {
          continue;
        }

        v41 = v118 + 1;
        *(a2 + 1) = v41;
LABEL_306:
        if (v41 >= v15 || (v119 = *v41, v119 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 14);
          if (!result)
          {
            return result;
          }

          v120 = *(a2 + 1);
          v15 = *(a2 + 2);
        }

        else
        {
          *(this + 14) = v119;
          v120 = v41 + 1;
          *(a2 + 1) = v120;
        }

        *(this + 132) |= 0x800u;
        if (v120 >= v15 || *v120 != 104)
        {
          continue;
        }

        v47 = v120 + 1;
        *(a2 + 1) = v47;
LABEL_314:
        if (v47 >= v15 || (v121 = *v47, v121 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 15);
          if (!result)
          {
            return result;
          }

          v122 = *(a2 + 1);
          v15 = *(a2 + 2);
        }

        else
        {
          *(this + 15) = v121;
          v122 = v47 + 1;
          *(a2 + 1) = v122;
        }

        *(this + 132) |= 0x1000u;
        if (v122 >= v15 || *v122 != 112)
        {
          continue;
        }

        v64 = v122 + 1;
        *(a2 + 1) = v64;
LABEL_322:
        if (v64 >= v15 || (v123 = *v64, v123 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 16);
          if (!result)
          {
            return result;
          }

          v124 = *(a2 + 1);
          v15 = *(a2 + 2);
        }

        else
        {
          *(this + 16) = v123;
          v124 = v64 + 1;
          *(a2 + 1) = v124;
        }

        *(this + 132) |= 0x2000u;
        if (v124 >= v15 || *v124 != 120)
        {
          continue;
        }

        v38 = v124 + 1;
        *(a2 + 1) = v38;
LABEL_330:
        if (v38 >= v15 || (v125 = *v38, v125 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 17);
          if (!result)
          {
            return result;
          }

          v126 = *(a2 + 1);
          v15 = *(a2 + 2);
        }

        else
        {
          *(this + 17) = v125;
          v126 = (v38 + 1);
          *(a2 + 1) = v126;
        }

        *(this + 132) |= 0x4000u;
        if (v15 - v126 < 2 || *v126 != 128 || v126[1] != 1)
        {
          continue;
        }

        v51 = (v126 + 2);
        *(a2 + 1) = v51;
LABEL_339:
        if (v51 >= v15 || (v127 = *v51, v127 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 18);
          if (!result)
          {
            return result;
          }

          v128 = *(a2 + 1);
          v15 = *(a2 + 2);
        }

        else
        {
          *(this + 18) = v127;
          v128 = (v51 + 1);
          *(a2 + 1) = v128;
        }

        *(this + 132) |= 0x8000u;
        if (v15 - v128 < 2 || *v128 != 136 || v128[1] != 1)
        {
          continue;
        }

        v35 = (v128 + 2);
        *(a2 + 1) = v35;
LABEL_348:
        if (v35 >= v15 || (v129 = *v35, v129 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 19);
          if (!result)
          {
            return result;
          }

          v130 = *(a2 + 1);
          v15 = *(a2 + 2);
        }

        else
        {
          *(this + 19) = v129;
          v130 = (v35 + 1);
          *(a2 + 1) = v130;
        }

        *(this + 132) |= 0x10000u;
        if (v15 - v130 < 2 || *v130 != 144 || v130[1] != 1)
        {
          continue;
        }

        v57 = (v130 + 2);
        *(a2 + 1) = v57;
LABEL_357:
        if (v57 >= v15 || (v131 = *v57, v131 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 32);
          if (!result)
          {
            return result;
          }

          v132 = *(a2 + 1);
          v15 = *(a2 + 2);
        }

        else
        {
          *(this + 32) = v131;
          v132 = (v57 + 1);
          *(a2 + 1) = v132;
        }

        *(this + 132) |= 0x20000u;
        if (v15 - v132 >= 2 && *v132 == 152 && v132[1] == 1)
        {
          goto LABEL_365;
        }

        continue;
      case 3u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_200;
        }

        v50 = *(a2 + 1);
        v15 = *(a2 + 2);
        goto LABEL_234;
      case 4u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_200;
        }

        v53 = *(a2 + 1);
        v15 = *(a2 + 2);
        goto LABEL_242;
      case 5u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_200;
        }

        v43 = *(a2 + 1);
        v15 = *(a2 + 2);
        goto LABEL_250;
      case 6u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_200;
        }

        v61 = *(a2 + 1);
        v15 = *(a2 + 2);
        goto LABEL_258;
      case 7u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_200;
        }

        v65 = *(a2 + 1);
        v15 = *(a2 + 2);
        goto LABEL_266;
      case 8u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_200;
        }

        v54 = *(a2 + 1);
        v15 = *(a2 + 2);
        goto LABEL_274;
      case 9u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_200;
        }

        v67 = *(a2 + 1);
        v15 = *(a2 + 2);
        goto LABEL_282;
      case 0xAu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_200;
        }

        v48 = *(a2 + 1);
        v15 = *(a2 + 2);
        goto LABEL_290;
      case 0xBu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_200;
        }

        v66 = *(a2 + 1);
        v15 = *(a2 + 2);
        goto LABEL_298;
      case 0xCu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_200;
        }

        v41 = *(a2 + 1);
        v15 = *(a2 + 2);
        goto LABEL_306;
      case 0xDu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_200;
        }

        v47 = *(a2 + 1);
        v15 = *(a2 + 2);
        goto LABEL_314;
      case 0xEu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_200;
        }

        v64 = *(a2 + 1);
        v15 = *(a2 + 2);
        goto LABEL_322;
      case 0xFu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_200;
        }

        v38 = *(a2 + 1);
        v15 = *(a2 + 2);
        goto LABEL_330;
      case 0x10u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_200;
        }

        v51 = *(a2 + 1);
        v15 = *(a2 + 2);
        goto LABEL_339;
      case 0x11u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_200;
        }

        v35 = *(a2 + 1);
        v15 = *(a2 + 2);
        goto LABEL_348;
      case 0x12u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_200;
        }

        v57 = *(a2 + 1);
        v15 = *(a2 + 2);
        goto LABEL_357;
      case 0x13u:
        if ((TagFallback & 7) != 0)
        {
          if (v14 == 2)
          {
            result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadPackedPrimitiveNoInline<unsigned int,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)13>(a2, this + 10);
            if (!result)
            {
              return result;
            }

            goto LABEL_384;
          }

LABEL_200:
          if (v14 == 4)
          {
            return 1;
          }

          if ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(a2, TagFallback) & 1) == 0)
          {
            return 0;
          }
        }

        else
        {
          v89 = *(a2 + 1);
          v15 = *(a2 + 2);
          while (1)
          {
            v431 = 0;
            if (v89 >= v15 || *v89 < 0)
            {
              if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v431))
              {
                return 0;
              }
            }

            else
            {
              v431 = *v89;
              *(a2 + 1) = v89 + 1;
            }

            v133 = *(this + 22);
            if (v133 == *(this + 23))
            {
              wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 20, v133 + 1);
              v133 = *(this + 22);
            }

            v134 = v431;
            v135 = *(this + 10);
            *(this + 22) = v133 + 1;
            *(v135 + 4 * v133) = v134;
            v136 = *(this + 23) - *(this + 22);
            if (v136 >= 1)
            {
              v137 = v136 + 1;
              do
              {
                v138 = *(a2 + 1);
                v139 = *(a2 + 2);
                if (v139 - v138 < 2 || *v138 != 152 || v138[1] != 1)
                {
                  break;
                }

                *(a2 + 1) = v138 + 2;
                if ((v138 + 2) >= v139 || v138[2] < 0)
                {
                  if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v431))
                  {
                    return 0;
                  }
                }

                else
                {
                  v431 = v138[2];
                  *(a2 + 1) = v138 + 3;
                }

                v140 = *(this + 22);
                if (v140 >= *(this + 23))
                {
                  wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                  wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                  wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v432);
                  v140 = *(this + 22);
                }

                v141 = v431;
                v142 = *(this + 10);
                *(this + 22) = v140 + 1;
                *(v142 + 4 * v140) = v141;
                --v137;
              }

              while (v137 > 1);
            }

LABEL_384:
            v132 = *(a2 + 1);
            v15 = *(a2 + 2);
            if (v15 - v132 < 2)
            {
              goto LABEL_2;
            }

            v143 = *v132;
            if (v143 == 160)
            {
              break;
            }

            if (v143 != 152 || v132[1] != 1)
            {
              goto LABEL_2;
            }

LABEL_365:
            v89 = (v132 + 2);
            *(a2 + 1) = v89;
          }

          if (v132[1] == 1)
          {
            while (1)
            {
              v92 = (v132 + 2);
              *(a2 + 1) = v92;
LABEL_391:
              v431 = 0;
              if (v92 >= v15 || *v92 < 0)
              {
                if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v431))
                {
                  return 0;
                }
              }

              else
              {
                v431 = *v92;
                *(a2 + 1) = v92 + 1;
              }

              v144 = *(this + 26);
              if (v144 == *(this + 27))
              {
                wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 24, v144 + 1);
                v144 = *(this + 26);
              }

              v145 = v431;
              v146 = *(this + 12);
              *(this + 26) = v144 + 1;
              *(v146 + 4 * v144) = v145;
              v147 = *(this + 27) - *(this + 26);
              if (v147 >= 1)
              {
                v148 = v147 + 1;
                do
                {
                  v149 = *(a2 + 1);
                  v150 = *(a2 + 2);
                  if (v150 - v149 < 2 || *v149 != 160 || v149[1] != 1)
                  {
                    break;
                  }

                  *(a2 + 1) = v149 + 2;
                  if ((v149 + 2) >= v150 || v149[2] < 0)
                  {
                    if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v431))
                    {
                      return 0;
                    }
                  }

                  else
                  {
                    v431 = v149[2];
                    *(a2 + 1) = v149 + 3;
                  }

                  v151 = *(this + 26);
                  if (v151 >= *(this + 27))
                  {
                    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v432);
                    v151 = *(this + 26);
                  }

                  v152 = v431;
                  v153 = *(this + 12);
                  *(this + 26) = v151 + 1;
                  *(v153 + 4 * v151) = v152;
                  --v148;
                }

                while (v148 > 1);
              }

LABEL_409:
              v132 = *(a2 + 1);
              v15 = *(a2 + 2);
              if (v15 - v132 < 2)
              {
                goto LABEL_2;
              }

              v154 = *v132;
              if (v154 == 168)
              {
                break;
              }

              if (v154 != 160 || v132[1] != 1)
              {
                goto LABEL_2;
              }
            }

            if (v132[1] == 1)
            {
              while (1)
              {
                v87 = (v132 + 2);
                *(a2 + 1) = v87;
LABEL_416:
                v431 = 0;
                if (v87 >= v15 || *v87 < 0)
                {
                  if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v431))
                  {
                    return 0;
                  }
                }

                else
                {
                  v431 = *v87;
                  *(a2 + 1) = v87 + 1;
                }

                v155 = *(this + 30);
                if (v155 == *(this + 31))
                {
                  wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 28, v155 + 1);
                  v155 = *(this + 30);
                }

                v156 = v431;
                v157 = *(this + 14);
                *(this + 30) = v155 + 1;
                *(v157 + 4 * v155) = v156;
                v158 = *(this + 31) - *(this + 30);
                if (v158 >= 1)
                {
                  v159 = v158 + 1;
                  do
                  {
                    v160 = *(a2 + 1);
                    v161 = *(a2 + 2);
                    if (v161 - v160 < 2 || *v160 != 168 || v160[1] != 1)
                    {
                      break;
                    }

                    *(a2 + 1) = v160 + 2;
                    if ((v160 + 2) >= v161 || v160[2] < 0)
                    {
                      if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v431))
                      {
                        return 0;
                      }
                    }

                    else
                    {
                      v431 = v160[2];
                      *(a2 + 1) = v160 + 3;
                    }

                    v162 = *(this + 30);
                    if (v162 >= *(this + 31))
                    {
                      wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                      wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                      wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                      wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v432);
                      v162 = *(this + 30);
                    }

                    v163 = v431;
                    v164 = *(this + 14);
                    *(this + 30) = v162 + 1;
                    *(v164 + 4 * v162) = v163;
                    --v159;
                  }

                  while (v159 > 1);
                }

LABEL_434:
                v132 = *(a2 + 1);
                v15 = *(a2 + 2);
                if (v15 - v132 < 2)
                {
                  goto LABEL_2;
                }

                v165 = *v132;
                if (v165 == 176)
                {
                  break;
                }

                if (v165 != 168 || v132[1] != 1)
                {
                  goto LABEL_2;
                }
              }

              if (v132[1] == 1)
              {
                while (1)
                {
                  v88 = (v132 + 2);
                  *(a2 + 1) = v88;
LABEL_441:
                  v431 = 0;
                  if (v88 >= v15 || *v88 < 0)
                  {
                    if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v431))
                    {
                      return 0;
                    }
                  }

                  else
                  {
                    v431 = *v88;
                    *(a2 + 1) = v88 + 1;
                  }

                  v166 = *(this + 36);
                  if (v166 == *(this + 37))
                  {
                    wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 34, v166 + 1);
                    v166 = *(this + 36);
                  }

                  v167 = v431;
                  v168 = *(this + 17);
                  *(this + 36) = v166 + 1;
                  *(v168 + 4 * v166) = v167;
                  v169 = *(this + 37) - *(this + 36);
                  if (v169 >= 1)
                  {
                    v170 = v169 + 1;
                    do
                    {
                      v171 = *(a2 + 1);
                      v172 = *(a2 + 2);
                      if (v172 - v171 < 2 || *v171 != 176 || v171[1] != 1)
                      {
                        break;
                      }

                      *(a2 + 1) = v171 + 2;
                      if ((v171 + 2) >= v172 || v171[2] < 0)
                      {
                        if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v431))
                        {
                          return 0;
                        }
                      }

                      else
                      {
                        v431 = v171[2];
                        *(a2 + 1) = v171 + 3;
                      }

                      v173 = *(this + 36);
                      if (v173 >= *(this + 37))
                      {
                        wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                        wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                        wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                        wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v432);
                        v173 = *(this + 36);
                      }

                      v174 = v431;
                      v175 = *(this + 17);
                      *(this + 36) = v173 + 1;
                      *(v175 + 4 * v173) = v174;
                      --v170;
                    }

                    while (v170 > 1);
                  }

LABEL_459:
                  v132 = *(a2 + 1);
                  v15 = *(a2 + 2);
                  if (v15 - v132 < 2)
                  {
                    goto LABEL_2;
                  }

                  v176 = *v132;
                  if (v176 == 184)
                  {
                    break;
                  }

                  if (v176 != 176 || v132[1] != 1)
                  {
                    goto LABEL_2;
                  }
                }

                if (v132[1] == 1)
                {
                  while (1)
                  {
                    v90 = (v132 + 2);
                    *(a2 + 1) = v90;
LABEL_466:
                    v431 = 0;
                    if (v90 >= v15 || *v90 < 0)
                    {
                      if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v431))
                      {
                        return 0;
                      }
                    }

                    else
                    {
                      v431 = *v90;
                      *(a2 + 1) = v90 + 1;
                    }

                    v177 = *(this + 40);
                    if (v177 == *(this + 41))
                    {
                      wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 38, v177 + 1);
                      v177 = *(this + 40);
                    }

                    v178 = v431;
                    v179 = *(this + 19);
                    *(this + 40) = v177 + 1;
                    *(v179 + 4 * v177) = v178;
                    v180 = *(this + 41) - *(this + 40);
                    if (v180 >= 1)
                    {
                      v181 = v180 + 1;
                      do
                      {
                        v182 = *(a2 + 1);
                        v183 = *(a2 + 2);
                        if (v183 - v182 < 2 || *v182 != 184 || v182[1] != 1)
                        {
                          break;
                        }

                        *(a2 + 1) = v182 + 2;
                        if ((v182 + 2) >= v183 || v182[2] < 0)
                        {
                          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v431))
                          {
                            return 0;
                          }
                        }

                        else
                        {
                          v431 = v182[2];
                          *(a2 + 1) = v182 + 3;
                        }

                        v184 = *(this + 40);
                        if (v184 >= *(this + 41))
                        {
                          wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                          wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                          wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                          wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v432);
                          v184 = *(this + 40);
                        }

                        v185 = v431;
                        v186 = *(this + 19);
                        *(this + 40) = v184 + 1;
                        *(v186 + 4 * v184) = v185;
                        --v181;
                      }

                      while (v181 > 1);
                    }

LABEL_484:
                    v132 = *(a2 + 1);
                    v15 = *(a2 + 2);
                    if (v15 - v132 < 2)
                    {
                      goto LABEL_2;
                    }

                    v187 = *v132;
                    if (v187 == 192)
                    {
                      break;
                    }

                    if (v187 != 184 || v132[1] != 1)
                    {
                      goto LABEL_2;
                    }
                  }

                  if (v132[1] == 1)
                  {
                    while (1)
                    {
                      v93 = (v132 + 2);
                      *(a2 + 1) = v93;
LABEL_491:
                      v431 = 0;
                      if (v93 >= v15 || *v93 < 0)
                      {
                        if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v431))
                        {
                          return 0;
                        }
                      }

                      else
                      {
                        v431 = *v93;
                        *(a2 + 1) = v93 + 1;
                      }

                      v188 = *(this + 44);
                      if (v188 == *(this + 45))
                      {
                        wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 42, v188 + 1);
                        v188 = *(this + 44);
                      }

                      v189 = v431;
                      v190 = *(this + 21);
                      *(this + 44) = v188 + 1;
                      *(v190 + 4 * v188) = v189;
                      v191 = *(this + 45) - *(this + 44);
                      if (v191 >= 1)
                      {
                        v192 = v191 + 1;
                        do
                        {
                          v193 = *(a2 + 1);
                          v194 = *(a2 + 2);
                          if (v194 - v193 < 2 || *v193 != 192 || v193[1] != 1)
                          {
                            break;
                          }

                          *(a2 + 1) = v193 + 2;
                          if ((v193 + 2) >= v194 || v193[2] < 0)
                          {
                            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v431))
                            {
                              return 0;
                            }
                          }

                          else
                          {
                            v431 = v193[2];
                            *(a2 + 1) = v193 + 3;
                          }

                          v195 = *(this + 44);
                          if (v195 >= *(this + 45))
                          {
                            wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                            wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                            wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                            wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v432);
                            v195 = *(this + 44);
                          }

                          v196 = v431;
                          v197 = *(this + 21);
                          *(this + 44) = v195 + 1;
                          *(v197 + 4 * v195) = v196;
                          --v192;
                        }

                        while (v192 > 1);
                      }

LABEL_509:
                      v132 = *(a2 + 1);
                      v15 = *(a2 + 2);
                      if (v15 - v132 < 2)
                      {
                        goto LABEL_2;
                      }

                      v198 = *v132;
                      if (v198 == 200)
                      {
                        break;
                      }

                      if (v198 != 192 || v132[1] != 1)
                      {
                        goto LABEL_2;
                      }
                    }

                    if (v132[1] == 1)
                    {
                      while (1)
                      {
                        v86 = (v132 + 2);
                        *(a2 + 1) = v86;
LABEL_516:
                        v431 = 0;
                        if (v86 >= v15 || *v86 < 0)
                        {
                          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v431))
                          {
                            return 0;
                          }
                        }

                        else
                        {
                          v431 = *v86;
                          *(a2 + 1) = v86 + 1;
                        }

                        v199 = *(this + 48);
                        if (v199 == *(this + 49))
                        {
                          wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 46, v199 + 1);
                          v199 = *(this + 48);
                        }

                        v200 = v431;
                        v201 = *(this + 23);
                        *(this + 48) = v199 + 1;
                        *(v201 + 4 * v199) = v200;
                        v202 = *(this + 49) - *(this + 48);
                        if (v202 >= 1)
                        {
                          v203 = v202 + 1;
                          do
                          {
                            v204 = *(a2 + 1);
                            v205 = *(a2 + 2);
                            if (v205 - v204 < 2 || *v204 != 200 || v204[1] != 1)
                            {
                              break;
                            }

                            *(a2 + 1) = v204 + 2;
                            if ((v204 + 2) >= v205 || v204[2] < 0)
                            {
                              if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v431))
                              {
                                return 0;
                              }
                            }

                            else
                            {
                              v431 = v204[2];
                              *(a2 + 1) = v204 + 3;
                            }

                            v206 = *(this + 48);
                            if (v206 >= *(this + 49))
                            {
                              wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                              wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                              wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                              wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v432);
                              v206 = *(this + 48);
                            }

                            v207 = v431;
                            v208 = *(this + 23);
                            *(this + 48) = v206 + 1;
                            *(v208 + 4 * v206) = v207;
                            --v203;
                          }

                          while (v203 > 1);
                        }

LABEL_534:
                        v132 = *(a2 + 1);
                        v15 = *(a2 + 2);
                        if (v15 - v132 < 2)
                        {
                          goto LABEL_2;
                        }

                        v209 = *v132;
                        if (v209 == 208)
                        {
                          break;
                        }

                        if (v209 != 200 || v132[1] != 1)
                        {
                          goto LABEL_2;
                        }
                      }

                      if (v132[1] == 1)
                      {
                        v49 = (v132 + 2);
                        *(a2 + 1) = v49;
LABEL_541:
                        if (v49 >= v15 || (v210 = *v49, v210 < 0))
                        {
                          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 33);
                          if (!result)
                          {
                            return result;
                          }

                          v211 = *(a2 + 1);
                          v15 = *(a2 + 2);
                        }

                        else
                        {
                          *(this + 33) = v210;
                          v211 = (v49 + 1);
                          *(a2 + 1) = v211;
                        }

                        *(this + 132) |= 0x2000000u;
                        if (v15 - v211 >= 2 && *v211 == 216 && v211[1] == 1)
                        {
                          v75 = (v211 + 2);
                          *(a2 + 1) = v75;
LABEL_550:
                          if (v75 >= v15 || (v212 = *v75, (v212 & 0x80000000) != 0))
                          {
                            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v427);
                            if (!result)
                            {
                              return result;
                            }

                            v213 = *(a2 + 1);
                            v15 = *(a2 + 2);
                          }

                          else
                          {
                            *v427 = v212;
                            v213 = (v75 + 1);
                            *(a2 + 1) = v213;
                          }

                          *(this + 134) |= 0x4000u;
                          if (v15 - v213 >= 2 && *v213 == 224 && v213[1] == 1)
                          {
                            while (1)
                            {
                              v84 = (v213 + 2);
                              *(a2 + 1) = v84;
LABEL_559:
                              v431 = 0;
                              if (v84 >= v15 || *v84 < 0)
                              {
                                if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v431))
                                {
                                  return 0;
                                }
                              }

                              else
                              {
                                v431 = *v84;
                                *(a2 + 1) = v84 + 1;
                              }

                              v214 = *(this + 128);
                              if (v214 == *(this + 129))
                              {
                                wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 126, v214 + 1);
                                v214 = *(this + 128);
                              }

                              v215 = v431;
                              v216 = *(this + 63);
                              *(this + 128) = v214 + 1;
                              *(v216 + 4 * v214) = v215;
                              v217 = *(this + 129) - *(this + 128);
                              if (v217 >= 1)
                              {
                                v218 = v217 + 1;
                                do
                                {
                                  v219 = *(a2 + 1);
                                  v220 = *(a2 + 2);
                                  if (v220 - v219 < 2 || *v219 != 224 || v219[1] != 1)
                                  {
                                    break;
                                  }

                                  *(a2 + 1) = v219 + 2;
                                  if ((v219 + 2) >= v220 || v219[2] < 0)
                                  {
                                    if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v431))
                                    {
                                      return 0;
                                    }
                                  }

                                  else
                                  {
                                    v431 = v219[2];
                                    *(a2 + 1) = v219 + 3;
                                  }

                                  v221 = *(this + 128);
                                  if (v221 >= *(this + 129))
                                  {
                                    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                                    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                                    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                                    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v432);
                                    v221 = *(this + 128);
                                  }

                                  v222 = v431;
                                  v223 = *(this + 63);
                                  *(this + 128) = v221 + 1;
                                  *(v223 + 4 * v221) = v222;
                                  --v218;
                                }

                                while (v218 > 1);
                              }

LABEL_577:
                              v213 = *(a2 + 1);
                              v15 = *(a2 + 2);
                              if (v15 - v213 < 2)
                              {
                                goto LABEL_2;
                              }

                              v224 = *v213;
                              if (v224 == 232)
                              {
                                break;
                              }

                              if (v224 != 224 || v213[1] != 1)
                              {
                                goto LABEL_2;
                              }
                            }

                            if (v213[1] == 1)
                            {
                              while (1)
                              {
                                v94 = (v213 + 2);
                                *(a2 + 1) = v94;
LABEL_584:
                                v431 = 0;
                                if (v94 >= v15 || *v94 < 0)
                                {
                                  if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v431))
                                  {
                                    return 0;
                                  }
                                }

                                else
                                {
                                  v431 = *v94;
                                  *(a2 + 1) = v94 + 1;
                                }

                                v225 = *(this + 52);
                                if (v225 == *(this + 53))
                                {
                                  wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 50, v225 + 1);
                                  v225 = *(this + 52);
                                }

                                v226 = v431;
                                v227 = *(this + 25);
                                *(this + 52) = v225 + 1;
                                *(v227 + 4 * v225) = v226;
                                v228 = *(this + 53) - *(this + 52);
                                if (v228 >= 1)
                                {
                                  v229 = v228 + 1;
                                  do
                                  {
                                    v230 = *(a2 + 1);
                                    v231 = *(a2 + 2);
                                    if (v231 - v230 < 2 || *v230 != 232 || v230[1] != 1)
                                    {
                                      break;
                                    }

                                    *(a2 + 1) = v230 + 2;
                                    if ((v230 + 2) >= v231 || v230[2] < 0)
                                    {
                                      if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v431))
                                      {
                                        return 0;
                                      }
                                    }

                                    else
                                    {
                                      v431 = v230[2];
                                      *(a2 + 1) = v230 + 3;
                                    }

                                    v232 = *(this + 52);
                                    if (v232 >= *(this + 53))
                                    {
                                      wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                                      wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                                      wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                                      wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v432);
                                      v232 = *(this + 52);
                                    }

                                    v233 = v431;
                                    v234 = *(this + 25);
                                    *(this + 52) = v232 + 1;
                                    *(v234 + 4 * v232) = v233;
                                    --v229;
                                  }

                                  while (v229 > 1);
                                }

LABEL_602:
                                v213 = *(a2 + 1);
                                v15 = *(a2 + 2);
                                if (v15 - v213 < 2)
                                {
                                  goto LABEL_2;
                                }

                                v235 = *v213;
                                if (v235 == 240)
                                {
                                  break;
                                }

                                if (v235 != 232 || v213[1] != 1)
                                {
                                  goto LABEL_2;
                                }
                              }

                              if (v213[1] == 1)
                              {
                                while (1)
                                {
                                  v95 = (v213 + 2);
                                  *(a2 + 1) = v95;
LABEL_609:
                                  v431 = 0;
                                  if (v95 >= v15 || *v95 < 0)
                                  {
                                    if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v431))
                                    {
                                      return 0;
                                    }
                                  }

                                  else
                                  {
                                    v431 = *v95;
                                    *(a2 + 1) = v95 + 1;
                                  }

                                  v236 = *(this + 56);
                                  if (v236 == *(this + 57))
                                  {
                                    wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 54, v236 + 1);
                                    v236 = *(this + 56);
                                  }

                                  v237 = v431;
                                  v238 = *(this + 27);
                                  *(this + 56) = v236 + 1;
                                  *(v238 + 4 * v236) = v237;
                                  v239 = *(this + 57) - *(this + 56);
                                  if (v239 >= 1)
                                  {
                                    v240 = v239 + 1;
                                    do
                                    {
                                      v241 = *(a2 + 1);
                                      v242 = *(a2 + 2);
                                      if (v242 - v241 < 2 || *v241 != 240 || v241[1] != 1)
                                      {
                                        break;
                                      }

                                      *(a2 + 1) = v241 + 2;
                                      if ((v241 + 2) >= v242 || v241[2] < 0)
                                      {
                                        if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v431))
                                        {
                                          return 0;
                                        }
                                      }

                                      else
                                      {
                                        v431 = v241[2];
                                        *(a2 + 1) = v241 + 3;
                                      }

                                      v243 = *(this + 56);
                                      if (v243 >= *(this + 57))
                                      {
                                        wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                                        wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                                        wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                                        wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v432);
                                        v243 = *(this + 56);
                                      }

                                      v244 = v431;
                                      v245 = *(this + 27);
                                      *(this + 56) = v243 + 1;
                                      *(v245 + 4 * v243) = v244;
                                      --v240;
                                    }

                                    while (v240 > 1);
                                  }

LABEL_627:
                                  v213 = *(a2 + 1);
                                  v15 = *(a2 + 2);
                                  if (v15 - v213 < 2)
                                  {
                                    goto LABEL_2;
                                  }

                                  v246 = *v213;
                                  if (v246 == 248)
                                  {
                                    break;
                                  }

                                  if (v246 != 240 || v213[1] != 1)
                                  {
                                    goto LABEL_2;
                                  }
                                }

                                if (v213[1] == 1)
                                {
                                  v68 = (v213 + 2);
                                  *(a2 + 1) = v68;
LABEL_634:
                                  if (v68 >= v15 || (v247 = *v68, v247 < 0))
                                  {
                                    result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 58);
                                    if (!result)
                                    {
                                      return result;
                                    }

                                    v248 = *(a2 + 1);
                                    v15 = *(a2 + 2);
                                  }

                                  else
                                  {
                                    *(this + 58) = v247;
                                    v248 = (v68 + 1);
                                    *(a2 + 1) = v248;
                                  }

                                  *(this + 132) |= 0x10000000u;
                                  if (v15 - v248 >= 2 && *v248 == 128 && v248[1] == 2)
                                  {
                                    v56 = (v248 + 2);
                                    *(a2 + 1) = v56;
LABEL_643:
                                    if (v56 >= v15 || (v249 = *v56, v249 < 0))
                                    {
                                      result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 59);
                                      if (!result)
                                      {
                                        return result;
                                      }

                                      v250 = *(a2 + 1);
                                      v15 = *(a2 + 2);
                                    }

                                    else
                                    {
                                      *(this + 59) = v249;
                                      v250 = (v56 + 1);
                                      *(a2 + 1) = v250;
                                    }

                                    *(this + 132) |= 0x20000000u;
                                    if (v15 - v250 >= 2 && *v250 == 136 && v250[1] == 2)
                                    {
                                      v69 = (v250 + 2);
                                      *(a2 + 1) = v69;
LABEL_652:
                                      if (v69 >= v15 || (v251 = *v69, v251 < 0))
                                      {
                                        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 60);
                                        if (!result)
                                        {
                                          return result;
                                        }

                                        v252 = *(a2 + 1);
                                        v15 = *(a2 + 2);
                                      }

                                      else
                                      {
                                        *(this + 60) = v251;
                                        v252 = (v69 + 1);
                                        *(a2 + 1) = v252;
                                      }

                                      *(this + 132) |= 0x40000000u;
                                      if (v15 - v252 >= 2 && *v252 == 144 && v252[1] == 2)
                                      {
                                        v39 = (v252 + 2);
                                        *(a2 + 1) = v39;
LABEL_661:
                                        if (v39 >= v15 || (v253 = *v39, v253 < 0))
                                        {
                                          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 61);
                                          if (!result)
                                          {
                                            return result;
                                          }

                                          v254 = *(a2 + 1);
                                          v15 = *(a2 + 2);
                                        }

                                        else
                                        {
                                          *(this + 61) = v253;
                                          v254 = (v39 + 1);
                                          *(a2 + 1) = v254;
                                        }

                                        *(this + 132) |= 0x80000000;
                                        if (v15 - v254 >= 2 && *v254 == 152 && v254[1] == 2)
                                        {
                                          v34 = (v254 + 2);
                                          *(a2 + 1) = v34;
LABEL_670:
                                          if (v34 >= v15 || (v255 = *v34, v255 < 0))
                                          {
                                            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 62);
                                            if (!result)
                                            {
                                              return result;
                                            }

                                            v256 = *(a2 + 1);
                                            v15 = *(a2 + 2);
                                          }

                                          else
                                          {
                                            *(this + 62) = v255;
                                            v256 = (v34 + 1);
                                            *(a2 + 1) = v256;
                                          }

                                          *(this + 133) |= 1u;
                                          if (v15 - v256 >= 2 && *v256 == 160 && v256[1] == 2)
                                          {
                                            v31 = (v256 + 2);
                                            *(a2 + 1) = v31;
LABEL_679:
                                            if (v31 >= v15 || (v257 = *v31, v257 < 0))
                                            {
                                              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 63);
                                              if (!result)
                                              {
                                                return result;
                                              }

                                              v258 = *(a2 + 1);
                                              v15 = *(a2 + 2);
                                            }

                                            else
                                            {
                                              *(this + 63) = v257;
                                              v258 = (v31 + 1);
                                              *(a2 + 1) = v258;
                                            }

                                            *(this + 133) |= 2u;
                                            if (v15 - v258 >= 2 && *v258 == 168 && v258[1] == 2)
                                            {
                                              v32 = (v258 + 2);
                                              *(a2 + 1) = v32;
LABEL_688:
                                              if (v32 >= v15 || (v259 = *v32, (v259 & 0x80000000) != 0))
                                              {
                                                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v413);
                                                if (!result)
                                                {
                                                  return result;
                                                }

                                                v260 = *(a2 + 1);
                                                v15 = *(a2 + 2);
                                              }

                                              else
                                              {
                                                *v413 = v259;
                                                v260 = (v32 + 1);
                                                *(a2 + 1) = v260;
                                              }

                                              *(this + 133) |= 4u;
                                              if (v15 - v260 >= 2 && *v260 == 176 && v260[1] == 2)
                                              {
                                                v26 = (v260 + 2);
                                                *(a2 + 1) = v26;
LABEL_697:
                                                if (v26 >= v15 || (v261 = *v26, (v261 & 0x80000000) != 0))
                                                {
                                                  result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v411);
                                                  if (!result)
                                                  {
                                                    return result;
                                                  }

                                                  v262 = *(a2 + 1);
                                                  v15 = *(a2 + 2);
                                                }

                                                else
                                                {
                                                  *v411 = v261;
                                                  v262 = (v26 + 1);
                                                  *(a2 + 1) = v262;
                                                }

                                                *(this + 133) |= 8u;
                                                if (v15 - v262 >= 2 && *v262 == 184 && v262[1] == 2)
                                                {
                                                  v74 = (v262 + 2);
                                                  *(a2 + 1) = v74;
LABEL_706:
                                                  if (v74 >= v15 || (v263 = *v74, (v263 & 0x80000000) != 0))
                                                  {
                                                    result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v409);
                                                    if (!result)
                                                    {
                                                      return result;
                                                    }

                                                    v264 = *(a2 + 1);
                                                    v15 = *(a2 + 2);
                                                  }

                                                  else
                                                  {
                                                    *v409 = v263;
                                                    v264 = (v74 + 1);
                                                    *(a2 + 1) = v264;
                                                  }

                                                  *(this + 133) |= 0x10u;
                                                  if (v15 - v264 >= 2 && *v264 == 192 && v264[1] == 2)
                                                  {
                                                    while (1)
                                                    {
                                                      v91 = (v264 + 2);
                                                      *(a2 + 1) = v91;
LABEL_715:
                                                      v431 = 0;
                                                      if (v91 >= v15 || *v91 < 0)
                                                      {
                                                        if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v431))
                                                        {
                                                          return 0;
                                                        }
                                                      }

                                                      else
                                                      {
                                                        v431 = *v91;
                                                        *(a2 + 1) = v91 + 1;
                                                      }

                                                      v265 = *(this + 70);
                                                      if (v265 == *(this + 71))
                                                      {
                                                        wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 68, v265 + 1);
                                                        v265 = *(this + 70);
                                                      }

                                                      v266 = v431;
                                                      v267 = *(this + 34);
                                                      *(this + 70) = v265 + 1;
                                                      *(v267 + 4 * v265) = v266;
                                                      v268 = *(this + 71) - *(this + 70);
                                                      if (v268 >= 1)
                                                      {
                                                        v269 = v268 + 1;
                                                        do
                                                        {
                                                          v270 = *(a2 + 1);
                                                          v271 = *(a2 + 2);
                                                          if (v271 - v270 < 2 || *v270 != 192 || v270[1] != 2)
                                                          {
                                                            break;
                                                          }

                                                          *(a2 + 1) = v270 + 2;
                                                          if ((v270 + 2) >= v271 || v270[2] < 0)
                                                          {
                                                            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v431))
                                                            {
                                                              return 0;
                                                            }
                                                          }

                                                          else
                                                          {
                                                            v431 = v270[2];
                                                            *(a2 + 1) = v270 + 3;
                                                          }

                                                          v272 = *(this + 70);
                                                          if (v272 >= *(this + 71))
                                                          {
                                                            wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                                                            wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                                                            wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                                                            wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v432);
                                                            v272 = *(this + 70);
                                                          }

                                                          v273 = v431;
                                                          v274 = *(this + 34);
                                                          *(this + 70) = v272 + 1;
                                                          *(v274 + 4 * v272) = v273;
                                                          --v269;
                                                        }

                                                        while (v269 > 1);
                                                      }

LABEL_733:
                                                      v264 = *(a2 + 1);
                                                      v15 = *(a2 + 2);
                                                      if (v15 - v264 < 2)
                                                      {
                                                        goto LABEL_2;
                                                      }

                                                      v275 = *v264;
                                                      if (v275 == 200)
                                                      {
                                                        break;
                                                      }

                                                      if (v275 != 192 || v264[1] != 2)
                                                      {
                                                        goto LABEL_2;
                                                      }
                                                    }

                                                    if (v264[1] == 2)
                                                    {
                                                      v44 = (v264 + 2);
                                                      *(a2 + 1) = v44;
LABEL_740:
                                                      if (v44 >= v15 || (v276 = *v44, (v276 & 0x80000000) != 0))
                                                      {
                                                        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v429);
                                                        if (!result)
                                                        {
                                                          return result;
                                                        }

                                                        v277 = *(a2 + 1);
                                                        v15 = *(a2 + 2);
                                                      }

                                                      else
                                                      {
                                                        *v429 = v276;
                                                        v277 = (v44 + 1);
                                                        *(a2 + 1) = v277;
                                                      }

                                                      *(this + 133) |= 0x40u;
                                                      if (v15 - v277 >= 2 && *v277 == 208 && v277[1] == 2)
                                                      {
                                                        v58 = (v277 + 2);
                                                        *(a2 + 1) = v58;
LABEL_749:
                                                        if (v58 >= v15 || (v278 = *v58, (v278 & 0x80000000) != 0))
                                                        {
                                                          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v425);
                                                          if (!result)
                                                          {
                                                            return result;
                                                          }

                                                          v279 = *(a2 + 1);
                                                          v15 = *(a2 + 2);
                                                        }

                                                        else
                                                        {
                                                          *v425 = v278;
                                                          v279 = (v58 + 1);
                                                          *(a2 + 1) = v279;
                                                        }

                                                        *(this + 133) |= 0x80u;
                                                        if (v15 - v279 >= 2 && *v279 == 216 && v279[1] == 2)
                                                        {
                                                          v72 = (v279 + 2);
                                                          *(a2 + 1) = v72;
LABEL_758:
                                                          if (v72 >= v15 || (v280 = *v72, (v280 & 0x80000000) != 0))
                                                          {
                                                            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v421);
                                                            if (!result)
                                                            {
                                                              return result;
                                                            }

                                                            v281 = *(a2 + 1);
                                                            v15 = *(a2 + 2);
                                                          }

                                                          else
                                                          {
                                                            *v421 = v280;
                                                            v281 = (v72 + 1);
                                                            *(a2 + 1) = v281;
                                                          }

                                                          *(this + 133) |= 0x100u;
                                                          if (v15 - v281 >= 2 && *v281 == 224 && v281[1] == 2)
                                                          {
                                                            v23 = (v281 + 2);
                                                            *(a2 + 1) = v23;
LABEL_767:
                                                            if (v23 >= v15 || (v282 = *v23, (v282 & 0x80000000) != 0))
                                                            {
                                                              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v418);
                                                              if (!result)
                                                              {
                                                                return result;
                                                              }

                                                              v283 = *(a2 + 1);
                                                              v15 = *(a2 + 2);
                                                            }

                                                            else
                                                            {
                                                              *v418 = v282;
                                                              v283 = (v23 + 1);
                                                              *(a2 + 1) = v283;
                                                            }

                                                            *(this + 133) |= 0x200u;
                                                            if (v15 - v283 >= 2 && *v283 == 232 && v283[1] == 2)
                                                            {
                                                              v37 = (v283 + 2);
                                                              *(a2 + 1) = v37;
LABEL_776:
                                                              if (v37 >= v15 || (v284 = *v37, (v284 & 0x80000000) != 0))
                                                              {
                                                                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v416);
                                                                if (!result)
                                                                {
                                                                  return result;
                                                                }

                                                                v285 = *(a2 + 1);
                                                                v15 = *(a2 + 2);
                                                              }

                                                              else
                                                              {
                                                                *v416 = v284;
                                                                v285 = (v37 + 1);
                                                                *(a2 + 1) = v285;
                                                              }

                                                              *(this + 133) |= 0x400u;
                                                              if (v15 - v285 >= 2 && *v285 == 240 && v285[1] == 2)
                                                              {
                                                                v70 = (v285 + 2);
                                                                *(a2 + 1) = v70;
LABEL_785:
                                                                if (v70 >= v15 || (v286 = *v70, (v286 & 0x80000000) != 0))
                                                                {
                                                                  result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v414);
                                                                  if (!result)
                                                                  {
                                                                    return result;
                                                                  }

                                                                  v287 = *(a2 + 1);
                                                                  v15 = *(a2 + 2);
                                                                }

                                                                else
                                                                {
                                                                  *v414 = v286;
                                                                  v287 = (v70 + 1);
                                                                  *(a2 + 1) = v287;
                                                                }

                                                                *(this + 133) |= 0x800u;
                                                                if (v15 - v287 >= 2 && *v287 == 248 && v287[1] == 2)
                                                                {
                                                                  v80 = (v287 + 2);
                                                                  *(a2 + 1) = v80;
LABEL_794:
                                                                  if (v80 >= v15 || (v288 = *v80, (v288 & 0x80000000) != 0))
                                                                  {
                                                                    result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v412);
                                                                    if (!result)
                                                                    {
                                                                      return result;
                                                                    }

                                                                    v289 = *(a2 + 1);
                                                                    v15 = *(a2 + 2);
                                                                  }

                                                                  else
                                                                  {
                                                                    *v412 = v288;
                                                                    v289 = (v80 + 1);
                                                                    *(a2 + 1) = v289;
                                                                  }

                                                                  *(this + 133) |= 0x1000u;
                                                                  if (v15 - v289 >= 2 && *v289 == 128 && v289[1] == 3)
                                                                  {
                                                                    v28 = (v289 + 2);
                                                                    *(a2 + 1) = v28;
LABEL_803:
                                                                    if (v28 >= v15 || (v290 = *v28, (v290 & 0x80000000) != 0))
                                                                    {
                                                                      result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v410);
                                                                      if (!result)
                                                                      {
                                                                        return result;
                                                                      }

                                                                      v291 = *(a2 + 1);
                                                                      v15 = *(a2 + 2);
                                                                    }

                                                                    else
                                                                    {
                                                                      *v410 = v290;
                                                                      v291 = (v28 + 1);
                                                                      *(a2 + 1) = v291;
                                                                    }

                                                                    *(this + 133) |= 0x2000u;
                                                                    if (v15 - v291 >= 2 && *v291 == 136 && v291[1] == 3)
                                                                    {
                                                                      while (1)
                                                                      {
                                                                        v85 = (v291 + 2);
                                                                        *(a2 + 1) = v85;
LABEL_812:
                                                                        v431 = 0;
                                                                        if (v85 >= v15 || *v85 < 0)
                                                                        {
                                                                          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v431))
                                                                          {
                                                                            return 0;
                                                                          }
                                                                        }

                                                                        else
                                                                        {
                                                                          v431 = *v85;
                                                                          *(a2 + 1) = v85 + 1;
                                                                        }

                                                                        v292 = *(this + 82);
                                                                        if (v292 == *(this + 83))
                                                                        {
                                                                          wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 80, v292 + 1);
                                                                          v292 = *(this + 82);
                                                                        }

                                                                        v293 = v431;
                                                                        v294 = *(this + 40);
                                                                        *(this + 82) = v292 + 1;
                                                                        *(v294 + 4 * v292) = v293;
                                                                        v295 = *(this + 83) - *(this + 82);
                                                                        if (v295 >= 1)
                                                                        {
                                                                          v296 = v295 + 1;
                                                                          do
                                                                          {
                                                                            v297 = *(a2 + 1);
                                                                            v298 = *(a2 + 2);
                                                                            if (v298 - v297 < 2 || *v297 != 136 || v297[1] != 3)
                                                                            {
                                                                              break;
                                                                            }

                                                                            *(a2 + 1) = v297 + 2;
                                                                            if ((v297 + 2) >= v298 || v297[2] < 0)
                                                                            {
                                                                              if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v431))
                                                                              {
                                                                                return 0;
                                                                              }
                                                                            }

                                                                            else
                                                                            {
                                                                              v431 = v297[2];
                                                                              *(a2 + 1) = v297 + 3;
                                                                            }

                                                                            v299 = *(this + 82);
                                                                            if (v299 >= *(this + 83))
                                                                            {
                                                                              wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                                                                              wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                                                                              wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                                                                              wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v432);
                                                                              v299 = *(this + 82);
                                                                            }

                                                                            v300 = v431;
                                                                            v301 = *(this + 40);
                                                                            *(this + 82) = v299 + 1;
                                                                            *(v301 + 4 * v299) = v300;
                                                                            --v296;
                                                                          }

                                                                          while (v296 > 1);
                                                                        }

LABEL_830:
                                                                        v291 = *(a2 + 1);
                                                                        v15 = *(a2 + 2);
                                                                        if (v15 - v291 < 2)
                                                                        {
                                                                          goto LABEL_2;
                                                                        }

                                                                        v302 = *v291;
                                                                        if (v302 == 144)
                                                                        {
                                                                          break;
                                                                        }

                                                                        if (v302 != 136 || v291[1] != 3)
                                                                        {
                                                                          goto LABEL_2;
                                                                        }
                                                                      }

                                                                      if (v291[1] == 3)
                                                                      {
                                                                        v42 = (v291 + 2);
                                                                        *(a2 + 1) = v42;
LABEL_837:
                                                                        if (v42 >= v15 || (v303 = *v42, (v303 & 0x80000000) != 0))
                                                                        {
                                                                          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v428);
                                                                          if (!result)
                                                                          {
                                                                            return result;
                                                                          }

                                                                          v304 = *(a2 + 1);
                                                                          v15 = *(a2 + 2);
                                                                        }

                                                                        else
                                                                        {
                                                                          *v428 = v303;
                                                                          v304 = (v42 + 1);
                                                                          *(a2 + 1) = v304;
                                                                        }

                                                                        *(this + 133) |= 0x8000u;
                                                                        if (v15 - v304 >= 2 && *v304 == 152 && v304[1] == 3)
                                                                        {
                                                                          v22 = (v304 + 2);
                                                                          *(a2 + 1) = v22;
LABEL_846:
                                                                          if (v22 >= v15 || (v305 = *v22, (v305 & 0x80000000) != 0))
                                                                          {
                                                                            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v424);
                                                                            if (!result)
                                                                            {
                                                                              return result;
                                                                            }

                                                                            v306 = *(a2 + 1);
                                                                            v15 = *(a2 + 2);
                                                                          }

                                                                          else
                                                                          {
                                                                            *v424 = v305;
                                                                            v306 = (v22 + 1);
                                                                            *(a2 + 1) = v306;
                                                                          }

                                                                          *(this + 133) |= 0x10000u;
                                                                          if (v15 - v306 >= 2 && *v306 == 160 && v306[1] == 3)
                                                                          {
                                                                            while (1)
                                                                            {
                                                                              v96 = (v306 + 2);
                                                                              *(a2 + 1) = v96;
LABEL_855:
                                                                              v431 = 0;
                                                                              if (v96 >= v15 || *v96 < 0)
                                                                              {
                                                                                if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v431))
                                                                                {
                                                                                  return 0;
                                                                                }
                                                                              }

                                                                              else
                                                                              {
                                                                                v431 = *v96;
                                                                                *(a2 + 1) = v96 + 1;
                                                                              }

                                                                              v307 = *(this + 86);
                                                                              if (v307 == *(this + 87))
                                                                              {
                                                                                wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 84, v307 + 1);
                                                                                v307 = *(this + 86);
                                                                              }

                                                                              v308 = v431;
                                                                              v309 = *(this + 42);
                                                                              *(this + 86) = v307 + 1;
                                                                              *(v309 + 4 * v307) = v308;
                                                                              v310 = *(this + 87) - *(this + 86);
                                                                              if (v310 >= 1)
                                                                              {
                                                                                v311 = v310 + 1;
                                                                                do
                                                                                {
                                                                                  v312 = *(a2 + 1);
                                                                                  v313 = *(a2 + 2);
                                                                                  if (v313 - v312 < 2 || *v312 != 160 || v312[1] != 3)
                                                                                  {
                                                                                    break;
                                                                                  }

                                                                                  *(a2 + 1) = v312 + 2;
                                                                                  if ((v312 + 2) >= v313 || v312[2] < 0)
                                                                                  {
                                                                                    if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v431))
                                                                                    {
                                                                                      return 0;
                                                                                    }
                                                                                  }

                                                                                  else
                                                                                  {
                                                                                    v431 = v312[2];
                                                                                    *(a2 + 1) = v312 + 3;
                                                                                  }

                                                                                  v314 = *(this + 86);
                                                                                  if (v314 >= *(this + 87))
                                                                                  {
                                                                                    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                                                                                    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                                                                                    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                                                                                    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v432);
                                                                                    v314 = *(this + 86);
                                                                                  }

                                                                                  v315 = v431;
                                                                                  v316 = *(this + 42);
                                                                                  *(this + 86) = v314 + 1;
                                                                                  *(v316 + 4 * v314) = v315;
                                                                                  --v311;
                                                                                }

                                                                                while (v311 > 1);
                                                                              }

LABEL_873:
                                                                              v306 = *(a2 + 1);
                                                                              v15 = *(a2 + 2);
                                                                              if (v15 - v306 < 2)
                                                                              {
                                                                                goto LABEL_2;
                                                                              }

                                                                              v317 = *v306;
                                                                              if (v317 == 168)
                                                                              {
                                                                                break;
                                                                              }

                                                                              if (v317 != 160 || v306[1] != 3)
                                                                              {
                                                                                goto LABEL_2;
                                                                              }
                                                                            }

                                                                            if (v306[1] == 3)
                                                                            {
                                                                              v79 = (v306 + 2);
                                                                              *(a2 + 1) = v79;
LABEL_880:
                                                                              if (v79 >= v15 || (v318 = *v79, (v318 & 0x80000000) != 0))
                                                                              {
                                                                                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v430);
                                                                                if (!result)
                                                                                {
                                                                                  return result;
                                                                                }

                                                                                v319 = *(a2 + 1);
                                                                                v15 = *(a2 + 2);
                                                                              }

                                                                              else
                                                                              {
                                                                                *v430 = v318;
                                                                                v319 = (v79 + 1);
                                                                                *(a2 + 1) = v319;
                                                                              }

                                                                              *(this + 133) |= 0x40000u;
                                                                              if (v15 - v319 >= 2 && *v319 == 176 && v319[1] == 3)
                                                                              {
                                                                                v27 = (v319 + 2);
                                                                                *(a2 + 1) = v27;
LABEL_889:
                                                                                if (v27 >= v15 || (v320 = *v27, (v320 & 0x80000000) != 0))
                                                                                {
                                                                                  result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v426);
                                                                                  if (!result)
                                                                                  {
                                                                                    return result;
                                                                                  }

                                                                                  v321 = *(a2 + 1);
                                                                                  v15 = *(a2 + 2);
                                                                                }

                                                                                else
                                                                                {
                                                                                  *v426 = v320;
                                                                                  v321 = (v27 + 1);
                                                                                  *(a2 + 1) = v321;
                                                                                }

                                                                                *(this + 133) |= 0x80000u;
                                                                                if (v15 - v321 >= 2 && *v321 == 184 && v321[1] == 3)
                                                                                {
                                                                                  v76 = (v321 + 2);
                                                                                  *(a2 + 1) = v76;
LABEL_898:
                                                                                  if (v76 >= v15 || (v322 = *v76, (v322 & 0x80000000) != 0))
                                                                                  {
                                                                                    result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v422);
                                                                                    if (!result)
                                                                                    {
                                                                                      return result;
                                                                                    }

                                                                                    v323 = *(a2 + 1);
                                                                                    v15 = *(a2 + 2);
                                                                                  }

                                                                                  else
                                                                                  {
                                                                                    *v422 = v322;
                                                                                    v323 = (v76 + 1);
                                                                                    *(a2 + 1) = v323;
                                                                                  }

                                                                                  *(this + 133) |= 0x100000u;
                                                                                  if (v15 - v323 >= 2 && *v323 == 192 && v323[1] == 3)
                                                                                  {
                                                                                    v78 = (v323 + 2);
                                                                                    *(a2 + 1) = v78;
LABEL_907:
                                                                                    if (v78 >= v15 || (v324 = *v78, (v324 & 0x80000000) != 0))
                                                                                    {
                                                                                      result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v419);
                                                                                      if (!result)
                                                                                      {
                                                                                        return result;
                                                                                      }

                                                                                      v325 = *(a2 + 1);
                                                                                      v15 = *(a2 + 2);
                                                                                    }

                                                                                    else
                                                                                    {
                                                                                      *v419 = v324;
                                                                                      v325 = (v78 + 1);
                                                                                      *(a2 + 1) = v325;
                                                                                    }

                                                                                    *(this + 133) |= 0x200000u;
                                                                                    if (v15 - v325 >= 2 && *v325 == 200 && v325[1] == 3)
                                                                                    {
                                                                                      v29 = (v325 + 2);
                                                                                      *(a2 + 1) = v29;
LABEL_916:
                                                                                      if (v29 >= v15 || (v326 = *v29, (v326 & 0x80000000) != 0))
                                                                                      {
                                                                                        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v417);
                                                                                        if (!result)
                                                                                        {
                                                                                          return result;
                                                                                        }

                                                                                        v327 = *(a2 + 1);
                                                                                        v15 = *(a2 + 2);
                                                                                      }

                                                                                      else
                                                                                      {
                                                                                        *v417 = v326;
                                                                                        v327 = (v29 + 1);
                                                                                        *(a2 + 1) = v327;
                                                                                      }

                                                                                      *(this + 133) |= 0x400000u;
                                                                                      if (v15 - v327 >= 2 && *v327 == 208 && v327[1] == 3)
                                                                                      {
                                                                                        v71 = (v327 + 2);
                                                                                        *(a2 + 1) = v71;
LABEL_925:
                                                                                        if (v71 >= v15 || (v328 = *v71, (v328 & 0x80000000) != 0))
                                                                                        {
                                                                                          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v415);
                                                                                          if (!result)
                                                                                          {
                                                                                            return result;
                                                                                          }

                                                                                          v329 = *(a2 + 1);
                                                                                          v15 = *(a2 + 2);
                                                                                        }

                                                                                        else
                                                                                        {
                                                                                          *v415 = v328;
                                                                                          v329 = (v71 + 1);
                                                                                          *(a2 + 1) = v329;
                                                                                        }

                                                                                        *(this + 133) |= 0x800000u;
                                                                                        if (v15 - v329 >= 2 && *v329 == 216 && v329[1] == 3)
                                                                                        {
                                                                                          v40 = (v329 + 2);
                                                                                          *(a2 + 1) = v40;
LABEL_934:
                                                                                          v432[0] = 0;
                                                                                          if (v40 >= v15 || (v330 = *v40, (v330 & 0x80000000) != 0))
                                                                                          {
                                                                                            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v432);
                                                                                            if (!result)
                                                                                            {
                                                                                              return result;
                                                                                            }

                                                                                            v330 = v432[0];
                                                                                            v331 = *(a2 + 1);
                                                                                            v15 = *(a2 + 2);
                                                                                          }

                                                                                          else
                                                                                          {
                                                                                            v331 = (v40 + 1);
                                                                                            *(a2 + 1) = v331;
                                                                                          }

                                                                                          *(this + 95) = v330;
                                                                                          *(this + 133) |= 0x1000000u;
                                                                                          if (v15 - v331 >= 2 && *v331 == 224 && v331[1] == 3)
                                                                                          {
                                                                                            v73 = (v331 + 2);
                                                                                            *(a2 + 1) = v73;
LABEL_943:
                                                                                            v432[0] = 0;
                                                                                            if (v73 >= v15 || (v332 = *v73, (v332 & 0x80000000) != 0))
                                                                                            {
                                                                                              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v432);
                                                                                              if (!result)
                                                                                              {
                                                                                                return result;
                                                                                              }

                                                                                              v332 = v432[0];
                                                                                              v333 = *(a2 + 1);
                                                                                              v15 = *(a2 + 2);
                                                                                            }

                                                                                            else
                                                                                            {
                                                                                              v333 = (v73 + 1);
                                                                                              *(a2 + 1) = v333;
                                                                                            }

                                                                                            *(this + 96) = v332;
                                                                                            *(this + 133) |= 0x2000000u;
                                                                                            if (v15 - v333 >= 2 && *v333 == 232 && v333[1] == 3)
                                                                                            {
                                                                                              v45 = (v333 + 2);
                                                                                              *(a2 + 1) = v45;
LABEL_952:
                                                                                              if (v45 >= v15 || (v334 = *v45, (v334 & 0x80000000) != 0))
                                                                                              {
                                                                                                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v408);
                                                                                                if (!result)
                                                                                                {
                                                                                                  return result;
                                                                                                }

                                                                                                v335 = *(a2 + 1);
                                                                                                v15 = *(a2 + 2);
                                                                                              }

                                                                                              else
                                                                                              {
                                                                                                *v408 = v334;
                                                                                                v335 = (v45 + 1);
                                                                                                *(a2 + 1) = v335;
                                                                                              }

                                                                                              *(this + 133) |= 0x4000000u;
                                                                                              if (v15 - v335 >= 2 && *v335 == 240 && v335[1] == 3)
                                                                                              {
                                                                                                v60 = (v335 + 2);
                                                                                                *(a2 + 1) = v60;
LABEL_961:
                                                                                                if (v60 >= v15 || (v336 = *v60, (v336 & 0x80000000) != 0))
                                                                                                {
                                                                                                  result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v407);
                                                                                                  if (!result)
                                                                                                  {
                                                                                                    return result;
                                                                                                  }

                                                                                                  v337 = *(a2 + 1);
                                                                                                  v15 = *(a2 + 2);
                                                                                                }

                                                                                                else
                                                                                                {
                                                                                                  *v407 = v336;
                                                                                                  v337 = (v60 + 1);
                                                                                                  *(a2 + 1) = v337;
                                                                                                }

                                                                                                *(this + 133) |= 0x8000000u;
                                                                                                if (v15 - v337 >= 2 && *v337 == 248 && v337[1] == 3)
                                                                                                {
                                                                                                  v63 = (v337 + 2);
                                                                                                  *(a2 + 1) = v63;
LABEL_970:
                                                                                                  if (v63 >= v15 || (v338 = *v63, (v338 & 0x80000000) != 0))
                                                                                                  {
                                                                                                    result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v406);
                                                                                                    if (!result)
                                                                                                    {
                                                                                                      return result;
                                                                                                    }

                                                                                                    v339 = *(a2 + 1);
                                                                                                    v15 = *(a2 + 2);
                                                                                                  }

                                                                                                  else
                                                                                                  {
                                                                                                    *v406 = v338;
                                                                                                    v339 = (v63 + 1);
                                                                                                    *(a2 + 1) = v339;
                                                                                                  }

                                                                                                  *(this + 133) |= 0x10000000u;
                                                                                                  if (v15 - v339 >= 2 && *v339 == 128 && v339[1] == 4)
                                                                                                  {
                                                                                                    v52 = (v339 + 2);
                                                                                                    *(a2 + 1) = v52;
LABEL_979:
                                                                                                    if (v52 >= v15 || (v340 = *v52, (v340 & 0x80000000) != 0))
                                                                                                    {
                                                                                                      result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v405);
                                                                                                      if (!result)
                                                                                                      {
                                                                                                        return result;
                                                                                                      }

                                                                                                      v341 = *(a2 + 1);
                                                                                                      v15 = *(a2 + 2);
                                                                                                    }

                                                                                                    else
                                                                                                    {
                                                                                                      *v405 = v340;
                                                                                                      v341 = (v52 + 1);
                                                                                                      *(a2 + 1) = v341;
                                                                                                    }

                                                                                                    *(this + 133) |= 0x20000000u;
                                                                                                    if (v15 - v341 >= 2 && *v341 == 136 && v341[1] == 4)
                                                                                                    {
                                                                                                      v46 = (v341 + 2);
                                                                                                      *(a2 + 1) = v46;
LABEL_988:
                                                                                                      if (v46 >= v15 || (v342 = *v46, (v342 & 0x80000000) != 0))
                                                                                                      {
                                                                                                        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v404);
                                                                                                        if (!result)
                                                                                                        {
                                                                                                          return result;
                                                                                                        }

                                                                                                        v343 = *(a2 + 1);
                                                                                                        v15 = *(a2 + 2);
                                                                                                      }

                                                                                                      else
                                                                                                      {
                                                                                                        *v404 = v342;
                                                                                                        v343 = (v46 + 1);
                                                                                                        *(a2 + 1) = v343;
                                                                                                      }

                                                                                                      *(this + 133) |= 0x40000000u;
                                                                                                      if (v15 - v343 >= 2 && *v343 == 144 && v343[1] == 4)
                                                                                                      {
                                                                                                        v62 = (v343 + 2);
                                                                                                        *(a2 + 1) = v62;
LABEL_997:
                                                                                                        if (v62 >= v15 || (v344 = *v62, (v344 & 0x80000000) != 0))
                                                                                                        {
                                                                                                          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v403);
                                                                                                          if (!result)
                                                                                                          {
                                                                                                            return result;
                                                                                                          }

                                                                                                          v345 = *(a2 + 1);
                                                                                                          v15 = *(a2 + 2);
                                                                                                        }

                                                                                                        else
                                                                                                        {
                                                                                                          *v403 = v344;
                                                                                                          v345 = (v62 + 1);
                                                                                                          *(a2 + 1) = v345;
                                                                                                        }

                                                                                                        *(this + 133) |= 0x80000000;
                                                                                                        if (v15 - v345 >= 2 && *v345 == 152 && v345[1] == 4)
                                                                                                        {
                                                                                                          v24 = (v345 + 2);
                                                                                                          *(a2 + 1) = v24;
LABEL_1006:
                                                                                                          if (v24 >= v15 || (v346 = *v24, (v346 & 0x80000000) != 0))
                                                                                                          {
                                                                                                            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v402);
                                                                                                            if (!result)
                                                                                                            {
                                                                                                              return result;
                                                                                                            }

                                                                                                            v347 = *(a2 + 1);
                                                                                                            v15 = *(a2 + 2);
                                                                                                          }

                                                                                                          else
                                                                                                          {
                                                                                                            *v402 = v346;
                                                                                                            v347 = (v24 + 1);
                                                                                                            *(a2 + 1) = v347;
                                                                                                          }

                                                                                                          *(this + 134) |= 1u;
                                                                                                          if (v15 - v347 >= 2 && *v347 == 160 && v347[1] == 4)
                                                                                                          {
                                                                                                            v36 = (v347 + 2);
                                                                                                            *(a2 + 1) = v36;
LABEL_1015:
                                                                                                            if (v36 >= v15 || (v348 = *v36, (v348 & 0x80000000) != 0))
                                                                                                            {
                                                                                                              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v401);
                                                                                                              if (!result)
                                                                                                              {
                                                                                                                return result;
                                                                                                              }

                                                                                                              v349 = *(a2 + 1);
                                                                                                              v15 = *(a2 + 2);
                                                                                                            }

                                                                                                            else
                                                                                                            {
                                                                                                              *v401 = v348;
                                                                                                              v349 = (v36 + 1);
                                                                                                              *(a2 + 1) = v349;
                                                                                                            }

                                                                                                            *(this + 134) |= 2u;
                                                                                                            if (v15 - v349 >= 2 && *v349 == 168 && v349[1] == 4)
                                                                                                            {
                                                                                                              while (1)
                                                                                                              {
                                                                                                                v98 = (v349 + 2);
                                                                                                                *(a2 + 1) = v98;
LABEL_1024:
                                                                                                                v431 = 0;
                                                                                                                if (v98 >= v15 || *v98 < 0)
                                                                                                                {
                                                                                                                  if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v431))
                                                                                                                  {
                                                                                                                    return 0;
                                                                                                                  }
                                                                                                                }

                                                                                                                else
                                                                                                                {
                                                                                                                  v431 = *v98;
                                                                                                                  *(a2 + 1) = v98 + 1;
                                                                                                                }

                                                                                                                v350 = *(this + 106);
                                                                                                                if (v350 == *(this + 107))
                                                                                                                {
                                                                                                                  wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 104, v350 + 1);
                                                                                                                  v350 = *(this + 106);
                                                                                                                }

                                                                                                                v351 = v431;
                                                                                                                v352 = *(this + 52);
                                                                                                                *(this + 106) = v350 + 1;
                                                                                                                *(v352 + 4 * v350) = v351;
                                                                                                                v353 = *(this + 107) - *(this + 106);
                                                                                                                if (v353 >= 1)
                                                                                                                {
                                                                                                                  v354 = v353 + 1;
                                                                                                                  do
                                                                                                                  {
                                                                                                                    v355 = *(a2 + 1);
                                                                                                                    v356 = *(a2 + 2);
                                                                                                                    if (v356 - v355 < 2 || *v355 != 168 || v355[1] != 4)
                                                                                                                    {
                                                                                                                      break;
                                                                                                                    }

                                                                                                                    *(a2 + 1) = v355 + 2;
                                                                                                                    if ((v355 + 2) >= v356 || v355[2] < 0)
                                                                                                                    {
                                                                                                                      if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v431))
                                                                                                                      {
                                                                                                                        return 0;
                                                                                                                      }
                                                                                                                    }

                                                                                                                    else
                                                                                                                    {
                                                                                                                      v431 = v355[2];
                                                                                                                      *(a2 + 1) = v355 + 3;
                                                                                                                    }

                                                                                                                    v357 = *(this + 106);
                                                                                                                    if (v357 >= *(this + 107))
                                                                                                                    {
                                                                                                                      wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                                                                                                                      wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                                                                                                                      wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                                                                                                                      wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v432);
                                                                                                                      v357 = *(this + 106);
                                                                                                                    }

                                                                                                                    v358 = v431;
                                                                                                                    v359 = *(this + 52);
                                                                                                                    *(this + 106) = v357 + 1;
                                                                                                                    *(v359 + 4 * v357) = v358;
                                                                                                                    --v354;
                                                                                                                  }

                                                                                                                  while (v354 > 1);
                                                                                                                }

LABEL_1042:
                                                                                                                v349 = *(a2 + 1);
                                                                                                                v15 = *(a2 + 2);
                                                                                                                if (v15 - v349 < 2)
                                                                                                                {
                                                                                                                  goto LABEL_2;
                                                                                                                }

                                                                                                                v360 = *v349;
                                                                                                                if (v360 == 176)
                                                                                                                {
                                                                                                                  break;
                                                                                                                }

                                                                                                                if (v360 != 168 || v349[1] != 4)
                                                                                                                {
                                                                                                                  goto LABEL_2;
                                                                                                                }
                                                                                                              }

                                                                                                              if (v349[1] == 4)
                                                                                                              {
                                                                                                                v33 = (v349 + 2);
                                                                                                                *(a2 + 1) = v33;
LABEL_1049:
                                                                                                                if (v33 >= v15 || (v361 = *v33, (v361 & 0x80000000) != 0))
                                                                                                                {
                                                                                                                  result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v5);
                                                                                                                  if (!result)
                                                                                                                  {
                                                                                                                    return result;
                                                                                                                  }

                                                                                                                  v362 = *(a2 + 1);
                                                                                                                  v15 = *(a2 + 2);
                                                                                                                }

                                                                                                                else
                                                                                                                {
                                                                                                                  *v5 = v361;
                                                                                                                  v362 = (v33 + 1);
                                                                                                                  *(a2 + 1) = v362;
                                                                                                                }

                                                                                                                *(this + 134) |= 8u;
                                                                                                                if (v15 - v362 >= 2 && *v362 == 184 && v362[1] == 4)
                                                                                                                {
                                                                                                                  while (1)
                                                                                                                  {
                                                                                                                    v83 = (v362 + 2);
                                                                                                                    *(a2 + 1) = v83;
LABEL_1058:
                                                                                                                    v431 = 0;
                                                                                                                    if (v83 >= v15 || *v83 < 0)
                                                                                                                    {
                                                                                                                      if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v431))
                                                                                                                      {
                                                                                                                        return 0;
                                                                                                                      }
                                                                                                                    }

                                                                                                                    else
                                                                                                                    {
                                                                                                                      v431 = *v83;
                                                                                                                      *(a2 + 1) = v83 + 1;
                                                                                                                    }

                                                                                                                    v363 = *(this + 112);
                                                                                                                    if (v363 == *(this + 113))
                                                                                                                    {
                                                                                                                      wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 110, v363 + 1);
                                                                                                                      v363 = *(this + 112);
                                                                                                                    }

                                                                                                                    v364 = v431;
                                                                                                                    v365 = *(this + 55);
                                                                                                                    *(this + 112) = v363 + 1;
                                                                                                                    *(v365 + 4 * v363) = v364;
                                                                                                                    v366 = *(this + 113) - *(this + 112);
                                                                                                                    if (v366 >= 1)
                                                                                                                    {
                                                                                                                      v367 = v366 + 1;
                                                                                                                      do
                                                                                                                      {
                                                                                                                        v368 = *(a2 + 1);
                                                                                                                        v369 = *(a2 + 2);
                                                                                                                        if (v369 - v368 < 2 || *v368 != 184 || v368[1] != 4)
                                                                                                                        {
                                                                                                                          break;
                                                                                                                        }

                                                                                                                        *(a2 + 1) = v368 + 2;
                                                                                                                        if ((v368 + 2) >= v369 || v368[2] < 0)
                                                                                                                        {
                                                                                                                          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v431))
                                                                                                                          {
                                                                                                                            return 0;
                                                                                                                          }
                                                                                                                        }

                                                                                                                        else
                                                                                                                        {
                                                                                                                          v431 = v368[2];
                                                                                                                          *(a2 + 1) = v368 + 3;
                                                                                                                        }

                                                                                                                        v370 = *(this + 112);
                                                                                                                        if (v370 >= *(this + 113))
                                                                                                                        {
                                                                                                                          wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                                                                                                                          wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                                                                                                                          wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                                                                                                                          wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v432);
                                                                                                                          v370 = *(this + 112);
                                                                                                                        }

                                                                                                                        v371 = v431;
                                                                                                                        v372 = *(this + 55);
                                                                                                                        *(this + 112) = v370 + 1;
                                                                                                                        *(v372 + 4 * v370) = v371;
                                                                                                                        --v367;
                                                                                                                      }

                                                                                                                      while (v367 > 1);
                                                                                                                    }

LABEL_1076:
                                                                                                                    v362 = *(a2 + 1);
                                                                                                                    v15 = *(a2 + 2);
                                                                                                                    if (v15 - v362 < 2)
                                                                                                                    {
                                                                                                                      goto LABEL_2;
                                                                                                                    }

                                                                                                                    v373 = *v362;
                                                                                                                    if (v373 == 192)
                                                                                                                    {
                                                                                                                      break;
                                                                                                                    }

                                                                                                                    if (v373 != 184 || v362[1] != 4)
                                                                                                                    {
                                                                                                                      goto LABEL_2;
                                                                                                                    }
                                                                                                                  }

                                                                                                                  if (v362[1] == 4)
                                                                                                                  {
                                                                                                                    v25 = (v362 + 2);
                                                                                                                    *(a2 + 1) = v25;
LABEL_1083:
                                                                                                                    if (v25 >= v15 || (v374 = *v25, (v374 & 0x80000000) != 0))
                                                                                                                    {
                                                                                                                      result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v6);
                                                                                                                      if (!result)
                                                                                                                      {
                                                                                                                        return result;
                                                                                                                      }

                                                                                                                      v375 = *(a2 + 1);
                                                                                                                      v15 = *(a2 + 2);
                                                                                                                    }

                                                                                                                    else
                                                                                                                    {
                                                                                                                      *v6 = v374;
                                                                                                                      v375 = (v25 + 1);
                                                                                                                      *(a2 + 1) = v375;
                                                                                                                    }

                                                                                                                    *(this + 134) |= 0x20u;
                                                                                                                    if (v15 - v375 >= 2 && *v375 == 200 && v375[1] == 4)
                                                                                                                    {
                                                                                                                      v77 = (v375 + 2);
                                                                                                                      *(a2 + 1) = v77;
LABEL_1092:
                                                                                                                      if (v77 >= v15 || (v376 = *v77, (v376 & 0x80000000) != 0))
                                                                                                                      {
                                                                                                                        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v7);
                                                                                                                        if (!result)
                                                                                                                        {
                                                                                                                          return result;
                                                                                                                        }

                                                                                                                        v377 = *(a2 + 1);
                                                                                                                        v15 = *(a2 + 2);
                                                                                                                      }

                                                                                                                      else
                                                                                                                      {
                                                                                                                        *v7 = v376;
                                                                                                                        v377 = (v77 + 1);
                                                                                                                        *(a2 + 1) = v377;
                                                                                                                      }

                                                                                                                      *(this + 134) |= 0x40u;
                                                                                                                      if (v15 - v377 >= 2 && *v377 == 208 && v377[1] == 4)
                                                                                                                      {
                                                                                                                        v81 = (v377 + 2);
                                                                                                                        *(a2 + 1) = v81;
LABEL_1101:
                                                                                                                        if (v81 >= v15 || (v378 = *v81, (v378 & 0x80000000) != 0))
                                                                                                                        {
                                                                                                                          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v423);
                                                                                                                          if (!result)
                                                                                                                          {
                                                                                                                            return result;
                                                                                                                          }

                                                                                                                          v379 = *(a2 + 1);
                                                                                                                          v15 = *(a2 + 2);
                                                                                                                        }

                                                                                                                        else
                                                                                                                        {
                                                                                                                          *v423 = v378;
                                                                                                                          v379 = (v81 + 1);
                                                                                                                          *(a2 + 1) = v379;
                                                                                                                        }

                                                                                                                        *(this + 134) |= 0x80u;
                                                                                                                        if (v15 - v379 >= 2 && *v379 == 216 && v379[1] == 4)
                                                                                                                        {
                                                                                                                          v82 = (v379 + 2);
                                                                                                                          *(a2 + 1) = v82;
LABEL_1110:
                                                                                                                          if (v82 >= v15 || (v380 = *v82, (v380 & 0x80000000) != 0))
                                                                                                                          {
                                                                                                                            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v420);
                                                                                                                            if (!result)
                                                                                                                            {
                                                                                                                              return result;
                                                                                                                            }

                                                                                                                            v381 = *(a2 + 1);
                                                                                                                            v15 = *(a2 + 2);
                                                                                                                          }

                                                                                                                          else
                                                                                                                          {
                                                                                                                            *v420 = v380;
                                                                                                                            v381 = (v82 + 1);
                                                                                                                            *(a2 + 1) = v381;
                                                                                                                          }

                                                                                                                          *(this + 134) |= 0x100u;
                                                                                                                          if (v15 - v381 >= 2 && *v381 == 224 && v381[1] == 4)
                                                                                                                          {
                                                                                                                            v30 = (v381 + 2);
                                                                                                                            *(a2 + 1) = v30;
LABEL_1119:
                                                                                                                            if (v30 >= v15 || (v382 = *v30, (v382 & 0x80000000) != 0))
                                                                                                                            {
                                                                                                                              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v8);
                                                                                                                              if (!result)
                                                                                                                              {
                                                                                                                                return result;
                                                                                                                              }

                                                                                                                              v383 = *(a2 + 1);
                                                                                                                              v15 = *(a2 + 2);
                                                                                                                            }

                                                                                                                            else
                                                                                                                            {
                                                                                                                              *v8 = v382;
                                                                                                                              v383 = (v30 + 1);
                                                                                                                              *(a2 + 1) = v383;
                                                                                                                            }

                                                                                                                            *(this + 134) |= 0x200u;
                                                                                                                            if (v15 - v383 >= 2 && *v383 == 232 && v383[1] == 4)
                                                                                                                            {
                                                                                                                              v59 = (v383 + 2);
                                                                                                                              *(a2 + 1) = v59;
LABEL_1128:
                                                                                                                              if (v59 >= v15 || (v384 = *v59, (v384 & 0x80000000) != 0))
                                                                                                                              {
                                                                                                                                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v9);
                                                                                                                                if (!result)
                                                                                                                                {
                                                                                                                                  return result;
                                                                                                                                }

                                                                                                                                v385 = *(a2 + 1);
                                                                                                                                v15 = *(a2 + 2);
                                                                                                                              }

                                                                                                                              else
                                                                                                                              {
                                                                                                                                *v9 = v384;
                                                                                                                                v385 = (v59 + 1);
                                                                                                                                *(a2 + 1) = v385;
                                                                                                                              }

                                                                                                                              *(this + 134) |= 0x400u;
                                                                                                                              if (v15 - v385 >= 2 && *v385 == 240 && v385[1] == 4)
                                                                                                                              {
                                                                                                                                v21 = (v385 + 2);
                                                                                                                                *(a2 + 1) = v21;
LABEL_1137:
                                                                                                                                if (v21 >= v15 || (v386 = *v21, (v386 & 0x80000000) != 0))
                                                                                                                                {
                                                                                                                                  result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v10);
                                                                                                                                  if (!result)
                                                                                                                                  {
                                                                                                                                    return result;
                                                                                                                                  }

                                                                                                                                  v387 = *(a2 + 1);
                                                                                                                                  v15 = *(a2 + 2);
                                                                                                                                }

                                                                                                                                else
                                                                                                                                {
                                                                                                                                  *v10 = v386;
                                                                                                                                  v387 = (v21 + 1);
                                                                                                                                  *(a2 + 1) = v387;
                                                                                                                                }

                                                                                                                                *(this + 134) |= 0x800u;
                                                                                                                                if (v15 - v387 >= 2 && *v387 == 248 && v387[1] == 4)
                                                                                                                                {
LABEL_1145:
                                                                                                                                  v97 = (v387 + 2);
                                                                                                                                  *(a2 + 1) = v97;
                                                                                                                                  goto LABEL_1146;
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
      case 0x14u:
        if ((TagFallback & 7) == 0)
        {
          v92 = *(a2 + 1);
          v15 = *(a2 + 2);
          goto LABEL_391;
        }

        if (v14 != 2)
        {
          goto LABEL_200;
        }

        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadPackedPrimitiveNoInline<unsigned int,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)13>(a2, this + 12);
        if (!result)
        {
          return result;
        }

        goto LABEL_409;
      case 0x15u:
        if ((TagFallback & 7) == 0)
        {
          v87 = *(a2 + 1);
          v15 = *(a2 + 2);
          goto LABEL_416;
        }

        if (v14 != 2)
        {
          goto LABEL_200;
        }

        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadPackedPrimitiveNoInline<unsigned int,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)13>(a2, this + 14);
        if (!result)
        {
          return result;
        }

        goto LABEL_434;
      case 0x16u:
        if ((TagFallback & 7) == 0)
        {
          v88 = *(a2 + 1);
          v15 = *(a2 + 2);
          goto LABEL_441;
        }

        if (v14 != 2)
        {
          goto LABEL_200;
        }

        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadPackedPrimitiveNoInline<unsigned int,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)13>(a2, this + 17);
        if (!result)
        {
          return result;
        }

        goto LABEL_459;
      case 0x17u:
        if ((TagFallback & 7) == 0)
        {
          v90 = *(a2 + 1);
          v15 = *(a2 + 2);
          goto LABEL_466;
        }

        if (v14 != 2)
        {
          goto LABEL_200;
        }

        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadPackedPrimitiveNoInline<unsigned int,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)13>(a2, this + 19);
        if (!result)
        {
          return result;
        }

        goto LABEL_484;
      case 0x18u:
        if ((TagFallback & 7) == 0)
        {
          v93 = *(a2 + 1);
          v15 = *(a2 + 2);
          goto LABEL_491;
        }

        if (v14 != 2)
        {
          goto LABEL_200;
        }

        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadPackedPrimitiveNoInline<unsigned int,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)13>(a2, this + 21);
        if (!result)
        {
          return result;
        }

        goto LABEL_509;
      case 0x19u:
        if ((TagFallback & 7) == 0)
        {
          v86 = *(a2 + 1);
          v15 = *(a2 + 2);
          goto LABEL_516;
        }

        if (v14 != 2)
        {
          goto LABEL_200;
        }

        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadPackedPrimitiveNoInline<unsigned int,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)13>(a2, this + 23);
        if (!result)
        {
          return result;
        }

        goto LABEL_534;
      case 0x1Au:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_200;
        }

        v49 = *(a2 + 1);
        v15 = *(a2 + 2);
        goto LABEL_541;
      case 0x1Bu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_200;
        }

        v75 = *(a2 + 1);
        v15 = *(a2 + 2);
        goto LABEL_550;
      case 0x1Cu:
        if ((TagFallback & 7) == 0)
        {
          v84 = *(a2 + 1);
          v15 = *(a2 + 2);
          goto LABEL_559;
        }

        if (v14 != 2)
        {
          goto LABEL_200;
        }

        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadPackedPrimitiveNoInline<unsigned int,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)13>(a2, this + 63);
        if (!result)
        {
          return result;
        }

        goto LABEL_577;
      case 0x1Du:
        if ((TagFallback & 7) == 0)
        {
          v94 = *(a2 + 1);
          v15 = *(a2 + 2);
          goto LABEL_584;
        }

        if (v14 != 2)
        {
          goto LABEL_200;
        }

        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadPackedPrimitiveNoInline<unsigned int,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)13>(a2, this + 25);
        if (!result)
        {
          return result;
        }

        goto LABEL_602;
      case 0x1Eu:
        if ((TagFallback & 7) == 0)
        {
          v95 = *(a2 + 1);
          v15 = *(a2 + 2);
          goto LABEL_609;
        }

        if (v14 != 2)
        {
          goto LABEL_200;
        }

        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadPackedPrimitiveNoInline<unsigned int,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)13>(a2, this + 27);
        if (!result)
        {
          return result;
        }

        goto LABEL_627;
      case 0x1Fu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_200;
        }

        v68 = *(a2 + 1);
        v15 = *(a2 + 2);
        goto LABEL_634;
      case 0x20u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_200;
        }

        v56 = *(a2 + 1);
        v15 = *(a2 + 2);
        goto LABEL_643;
      case 0x21u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_200;
        }

        v69 = *(a2 + 1);
        v15 = *(a2 + 2);
        goto LABEL_652;
      case 0x22u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_200;
        }

        v39 = *(a2 + 1);
        v15 = *(a2 + 2);
        goto LABEL_661;
      case 0x23u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_200;
        }

        v34 = *(a2 + 1);
        v15 = *(a2 + 2);
        goto LABEL_670;
      case 0x24u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_200;
        }

        v31 = *(a2 + 1);
        v15 = *(a2 + 2);
        goto LABEL_679;
      case 0x25u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_200;
        }

        v32 = *(a2 + 1);
        v15 = *(a2 + 2);
        goto LABEL_688;
      case 0x26u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_200;
        }

        v26 = *(a2 + 1);
        v15 = *(a2 + 2);
        goto LABEL_697;
      case 0x27u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_200;
        }

        v74 = *(a2 + 1);
        v15 = *(a2 + 2);
        goto LABEL_706;
      case 0x28u:
        if ((TagFallback & 7) == 0)
        {
          v91 = *(a2 + 1);
          v15 = *(a2 + 2);
          goto LABEL_715;
        }

        if (v14 != 2)
        {
          goto LABEL_200;
        }

        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadPackedPrimitiveNoInline<unsigned int,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)13>(a2, this + 34);
        if (!result)
        {
          return result;
        }

        goto LABEL_733;
      case 0x29u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_200;
        }

        v44 = *(a2 + 1);
        v15 = *(a2 + 2);
        goto LABEL_740;
      case 0x2Au:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_200;
        }

        v58 = *(a2 + 1);
        v15 = *(a2 + 2);
        goto LABEL_749;
      case 0x2Bu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_200;
        }

        v72 = *(a2 + 1);
        v15 = *(a2 + 2);
        goto LABEL_758;
      case 0x2Cu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_200;
        }

        v23 = *(a2 + 1);
        v15 = *(a2 + 2);
        goto LABEL_767;
      case 0x2Du:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_200;
        }

        v37 = *(a2 + 1);
        v15 = *(a2 + 2);
        goto LABEL_776;
      case 0x2Eu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_200;
        }

        v70 = *(a2 + 1);
        v15 = *(a2 + 2);
        goto LABEL_785;
      case 0x2Fu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_200;
        }

        v80 = *(a2 + 1);
        v15 = *(a2 + 2);
        goto LABEL_794;
      case 0x30u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_200;
        }

        v28 = *(a2 + 1);
        v15 = *(a2 + 2);
        goto LABEL_803;
      case 0x31u:
        if ((TagFallback & 7) == 0)
        {
          v85 = *(a2 + 1);
          v15 = *(a2 + 2);
          goto LABEL_812;
        }

        if (v14 != 2)
        {
          goto LABEL_200;
        }

        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadPackedPrimitiveNoInline<unsigned int,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)13>(a2, this + 40);
        if (!result)
        {
          return result;
        }

        goto LABEL_830;
      case 0x32u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_200;
        }

        v42 = *(a2 + 1);
        v15 = *(a2 + 2);
        goto LABEL_837;
      case 0x33u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_200;
        }

        v22 = *(a2 + 1);
        v15 = *(a2 + 2);
        goto LABEL_846;
      case 0x34u:
        if ((TagFallback & 7) == 0)
        {
          v96 = *(a2 + 1);
          v15 = *(a2 + 2);
          goto LABEL_855;
        }

        if (v14 != 2)
        {
          goto LABEL_200;
        }

        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadPackedPrimitiveNoInline<unsigned int,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)13>(a2, this + 42);
        if (!result)
        {
          return result;
        }

        goto LABEL_873;
      case 0x35u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_200;
        }

        v79 = *(a2 + 1);
        v15 = *(a2 + 2);
        goto LABEL_880;
      case 0x36u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_200;
        }

        v27 = *(a2 + 1);
        v15 = *(a2 + 2);
        goto LABEL_889;
      case 0x37u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_200;
        }

        v76 = *(a2 + 1);
        v15 = *(a2 + 2);
        goto LABEL_898;
      case 0x38u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_200;
        }

        v78 = *(a2 + 1);
        v15 = *(a2 + 2);
        goto LABEL_907;
      case 0x39u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_200;
        }

        v29 = *(a2 + 1);
        v15 = *(a2 + 2);
        goto LABEL_916;
      case 0x3Au:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_200;
        }

        v71 = *(a2 + 1);
        v15 = *(a2 + 2);
        goto LABEL_925;
      case 0x3Bu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_200;
        }

        v40 = *(a2 + 1);
        v15 = *(a2 + 2);
        goto LABEL_934;
      case 0x3Cu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_200;
        }

        v73 = *(a2 + 1);
        v15 = *(a2 + 2);
        goto LABEL_943;
      case 0x3Du:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_200;
        }

        v45 = *(a2 + 1);
        v15 = *(a2 + 2);
        goto LABEL_952;
      case 0x3Eu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_200;
        }

        v60 = *(a2 + 1);
        v15 = *(a2 + 2);
        goto LABEL_961;
      case 0x3Fu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_200;
        }

        v63 = *(a2 + 1);
        v15 = *(a2 + 2);
        goto LABEL_970;
      case 0x40u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_200;
        }

        v52 = *(a2 + 1);
        v15 = *(a2 + 2);
        goto LABEL_979;
      case 0x41u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_200;
        }

        v46 = *(a2 + 1);
        v15 = *(a2 + 2);
        goto LABEL_988;
      case 0x42u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_200;
        }

        v62 = *(a2 + 1);
        v15 = *(a2 + 2);
        goto LABEL_997;
      case 0x43u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_200;
        }

        v24 = *(a2 + 1);
        v15 = *(a2 + 2);
        goto LABEL_1006;
      case 0x44u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_200;
        }

        v36 = *(a2 + 1);
        v15 = *(a2 + 2);
        goto LABEL_1015;
      case 0x45u:
        if ((TagFallback & 7) == 0)
        {
          v98 = *(a2 + 1);
          v15 = *(a2 + 2);
          goto LABEL_1024;
        }

        if (v14 != 2)
        {
          goto LABEL_200;
        }

        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadPackedPrimitiveNoInline<unsigned int,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)13>(a2, this + 52);
        if (!result)
        {
          return result;
        }

        goto LABEL_1042;
      case 0x46u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_200;
        }

        v33 = *(a2 + 1);
        v15 = *(a2 + 2);
        goto LABEL_1049;
      case 0x47u:
        if ((TagFallback & 7) == 0)
        {
          v83 = *(a2 + 1);
          v15 = *(a2 + 2);
          goto LABEL_1058;
        }

        if (v14 != 2)
        {
          goto LABEL_200;
        }

        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadPackedPrimitiveNoInline<unsigned int,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)13>(a2, this + 55);
        if (!result)
        {
          return result;
        }

        goto LABEL_1076;
      case 0x48u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_200;
        }

        v25 = *(a2 + 1);
        v15 = *(a2 + 2);
        goto LABEL_1083;
      case 0x49u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_200;
        }

        v77 = *(a2 + 1);
        v15 = *(a2 + 2);
        goto LABEL_1092;
      case 0x4Au:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_200;
        }

        v81 = *(a2 + 1);
        v15 = *(a2 + 2);
        goto LABEL_1101;
      case 0x4Bu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_200;
        }

        v82 = *(a2 + 1);
        v15 = *(a2 + 2);
        goto LABEL_1110;
      case 0x4Cu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_200;
        }

        v30 = *(a2 + 1);
        v15 = *(a2 + 2);
        goto LABEL_1119;
      case 0x4Du:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_200;
        }

        v59 = *(a2 + 1);
        v15 = *(a2 + 2);
        goto LABEL_1128;
      case 0x4Eu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_200;
        }

        v21 = *(a2 + 1);
        v15 = *(a2 + 2);
        goto LABEL_1137;
      case 0x4Fu:
        if ((TagFallback & 7) != 0)
        {
          if (v14 != 2)
          {
            goto LABEL_200;
          }

          result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadPackedPrimitiveNoInline<unsigned int,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)13>(a2, this + 60);
          if (!result)
          {
            return result;
          }

LABEL_1164:
          v387 = *(a2 + 1);
          v15 = *(a2 + 2);
          if (v15 - v387 >= 2)
          {
            v398 = *v387;
            if (v398 == 128)
            {
              if (v387[1] == 5)
              {
                v19 = (v387 + 2);
                *(a2 + 1) = v19;
LABEL_1171:
                if (v19 >= v15 || (v399 = *v19, (v399 & 0x80000000) != 0))
                {
                  result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v11);
                  if (!result)
                  {
                    return result;
                  }

                  v400 = *(a2 + 1);
                  v15 = *(a2 + 2);
                }

                else
                {
                  *v11 = v399;
                  v400 = v19 + 1;
                  *(a2 + 1) = v400;
                }

                *(this + 134) |= 0x2000u;
                if (v400 == v15 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
                {
                  *(a2 + 8) = 0;
                  result = 1;
                  *(a2 + 36) = 1;
                  return result;
                }
              }
            }

            else if (v398 == 248 && v387[1] == 4)
            {
              goto LABEL_1145;
            }
          }

          continue;
        }

        v97 = *(a2 + 1);
        v15 = *(a2 + 2);
LABEL_1146:
        v431 = 0;
        if (v97 < v15 && (*v97 & 0x80000000) == 0)
        {
          v431 = *v97;
          *(a2 + 1) = v97 + 1;
          goto LABEL_1150;
        }

        if (wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v431))
        {
LABEL_1150:
          v388 = *(this + 122);
          if (v388 == *(this + 123))
          {
            wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 120, v388 + 1);
            v388 = *(this + 122);
          }

          v389 = v431;
          v390 = *(this + 60);
          *(this + 122) = v388 + 1;
          *(v390 + 4 * v388) = v389;
          v391 = *(this + 123) - *(this + 122);
          if (v391 >= 1)
          {
            v392 = v391 + 1;
            do
            {
              v393 = *(a2 + 1);
              v394 = *(a2 + 2);
              if (v394 - v393 < 2 || *v393 != 248 || v393[1] != 4)
              {
                break;
              }

              *(a2 + 1) = v393 + 2;
              if ((v393 + 2) >= v394 || v393[2] < 0)
              {
                if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v431))
                {
                  return 0;
                }
              }

              else
              {
                v431 = v393[2];
                *(a2 + 1) = v393 + 3;
              }

              v395 = *(this + 122);
              if (v395 >= *(this + 123))
              {
                wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v432);
                v395 = *(this + 122);
              }

              v396 = v431;
              v397 = *(this + 60);
              *(this + 122) = v395 + 1;
              *(v397 + 4 * v395) = v396;
              --v392;
            }

            while (v392 > 1);
          }

          goto LABEL_1164;
        }

        return 0;
      case 0x50u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_200;
        }

        v19 = *(a2 + 1);
        v15 = *(a2 + 2);
        goto LABEL_1171;
      default:
        goto LABEL_200;
    }
  }
}