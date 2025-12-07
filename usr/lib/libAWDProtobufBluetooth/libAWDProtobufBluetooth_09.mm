void sub_29639C6FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t awd::metrics::BluetoothAccessoryIedSensors::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 212);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(1, *(this + 8), a2, a4);
    v6 = *(v5 + 212);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_51;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(2, *(v5 + 16), a2, a4);
  v6 = *(v5 + 212);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_52;
  }

LABEL_51:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(3, *(v5 + 20), a2, a4);
  v6 = *(v5 + 212);
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_53;
  }

LABEL_52:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(4, *(v5 + 24), a2, a4);
  v6 = *(v5 + 212);
  if ((v6 & 0x10) == 0)
  {
LABEL_6:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_54;
  }

LABEL_53:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(5, *(v5 + 28), a2, a4);
  v6 = *(v5 + 212);
  if ((v6 & 0x20) == 0)
  {
LABEL_7:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_55;
  }

LABEL_54:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(6, *(v5 + 32), a2, a4);
  v6 = *(v5 + 212);
  if ((v6 & 0x40) == 0)
  {
LABEL_8:
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_56;
  }

LABEL_55:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(7, *(v5 + 36), a2, a4);
  v6 = *(v5 + 212);
  if ((v6 & 0x80) == 0)
  {
LABEL_9:
    if ((v6 & 0x100) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_57;
  }

LABEL_56:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(8, *(v5 + 40), a2, a4);
  v6 = *(v5 + 212);
  if ((v6 & 0x100) == 0)
  {
LABEL_10:
    if ((v6 & 0x200) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_58;
  }

LABEL_57:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(9, *(v5 + 44), a2, a4);
  v6 = *(v5 + 212);
  if ((v6 & 0x200) == 0)
  {
LABEL_11:
    if ((v6 & 0x400) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_59;
  }

LABEL_58:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xA, *(v5 + 48), a2, a4);
  v6 = *(v5 + 212);
  if ((v6 & 0x400) == 0)
  {
LABEL_12:
    if ((v6 & 0x800) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_60;
  }

LABEL_59:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xB, *(v5 + 52), a2, a4);
  v6 = *(v5 + 212);
  if ((v6 & 0x800) == 0)
  {
LABEL_13:
    if ((v6 & 0x1000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_61;
  }

LABEL_60:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xC, *(v5 + 56), a2, a4);
  v6 = *(v5 + 212);
  if ((v6 & 0x1000) == 0)
  {
LABEL_14:
    if ((v6 & 0x2000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_62;
  }

LABEL_61:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xD, *(v5 + 60), a2, a4);
  v6 = *(v5 + 212);
  if ((v6 & 0x2000) == 0)
  {
LABEL_15:
    if ((v6 & 0x4000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_63;
  }

LABEL_62:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xE, *(v5 + 64), a2, a4);
  v6 = *(v5 + 212);
  if ((v6 & 0x4000) == 0)
  {
LABEL_16:
    if ((v6 & 0x8000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_64;
  }

LABEL_63:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xF, *(v5 + 68), a2, a4);
  v6 = *(v5 + 212);
  if ((v6 & 0x8000) == 0)
  {
LABEL_17:
    if ((v6 & 0x10000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_65;
  }

LABEL_64:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x10, *(v5 + 72), a2, a4);
  v6 = *(v5 + 212);
  if ((v6 & 0x10000) == 0)
  {
LABEL_18:
    if ((v6 & 0x20000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_66;
  }

LABEL_65:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x11, *(v5 + 76), a2, a4);
  v6 = *(v5 + 212);
  if ((v6 & 0x20000) == 0)
  {
LABEL_19:
    if ((v6 & 0x40000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_67;
  }

LABEL_66:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x12, *(v5 + 80), a2, a4);
  v6 = *(v5 + 212);
  if ((v6 & 0x40000) == 0)
  {
LABEL_20:
    if ((v6 & 0x80000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_68;
  }

LABEL_67:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x13, *(v5 + 84), a2, a4);
  v6 = *(v5 + 212);
  if ((v6 & 0x80000) == 0)
  {
LABEL_21:
    if ((v6 & 0x100000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_69;
  }

LABEL_68:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x14, *(v5 + 88), a2, a4);
  v6 = *(v5 + 212);
  if ((v6 & 0x100000) == 0)
  {
LABEL_22:
    if ((v6 & 0x200000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_23;
  }

LABEL_69:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x15, *(v5 + 92), a2, a4);
  if ((*(v5 + 212) & 0x200000) != 0)
  {
LABEL_23:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x16, *(v5 + 96), a2, a4);
  }

LABEL_24:
  if (*(v5 + 112) >= 1)
  {
    v7 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x17, *(*(v5 + 104) + 4 * v7++), a2, a4);
    }

    while (v7 < *(v5 + 112));
  }

  v8 = *(v5 + 212);
  if ((v8 & 0x800000) != 0)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x18, *(v5 + 100), a2, a4);
    v8 = *(v5 + 212);
    if ((v8 & 0x1000000) == 0)
    {
LABEL_29:
      if ((v8 & 0x2000000) == 0)
      {
        goto LABEL_30;
      }

      goto LABEL_73;
    }
  }

  else if ((v8 & 0x1000000) == 0)
  {
    goto LABEL_29;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x19, *(v5 + 120), a2, a4);
  v8 = *(v5 + 212);
  if ((v8 & 0x2000000) == 0)
  {
LABEL_30:
    if ((v8 & 0x4000000) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_74;
  }

LABEL_73:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x1A, *(v5 + 124), a2, a4);
  v8 = *(v5 + 212);
  if ((v8 & 0x4000000) == 0)
  {
LABEL_31:
    if ((v8 & 0x8000000) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_32;
  }

LABEL_74:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x1B, *(v5 + 128), a2, a4);
  if ((*(v5 + 212) & 0x8000000) != 0)
  {
LABEL_32:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x1C, *(v5 + 132), a2, a4);
  }

LABEL_33:
  if (*(v5 + 144) >= 1)
  {
    v9 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x1D, *(*(v5 + 136) + 4 * v9++), a2, a4);
    }

    while (v9 < *(v5 + 144));
  }

  if (*(v5 + 160) >= 1)
  {
    v10 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x1E, *(*(v5 + 152) + 4 * v10++), a2, a4);
    }

    while (v10 < *(v5 + 160));
  }

  if (*(v5 + 176) >= 1)
  {
    v11 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x1F, *(*(v5 + 168) + 4 * v11++), a2, a4);
    }

    while (v11 < *(v5 + 176));
  }

  if (*(v5 + 192) >= 1)
  {
    v12 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x20, *(*(v5 + 184) + 4 * v12++), a2, a4);
    }

    while (v12 < *(v5 + 192));
  }

  v13 = *(v5 + 216);
  if (v13)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x21, *(v5 + 200), a2, a4);
    v13 = *(v5 + 216);
  }

  if ((v13 & 2) != 0)
  {
    v14 = *(v5 + 204);

    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x22, v14, a2, a4);
  }

  return this;
}

uint64_t awd::metrics::BluetoothAccessoryIedSensors::ByteSize(awd::metrics::BluetoothAccessoryIedSensors *this, unint64_t a2)
{
  v3 = *(this + 53);
  if (!v3)
  {
    v4 = 0;
    goto LABEL_42;
  }

  if (v3)
  {
    v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 1)) + 1;
    v3 = *(this + 53);
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
    v3 = *(this + 53);
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
      v3 = *(this + 53);
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
    v3 = *(this + 53);
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
    v3 = *(this + 53);
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
    v3 = *(this + 53);
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
    v3 = *(this + 53);
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
      v3 = *(this + 53);
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
    goto LABEL_84;
  }

  if ((v3 & 0x100) != 0)
  {
    v19 = *(this + 11);
    if (v19 >= 0x80)
    {
      v20 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v19) + 1;
      v3 = *(this + 53);
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
        goto LABEL_46;
      }

      goto LABEL_60;
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
    v3 = *(this + 53);
  }

  else
  {
    v22 = 2;
  }

  v4 += v22;
  if ((v3 & 0x400) == 0)
  {
LABEL_46:
    if ((v3 & 0x800) == 0)
    {
      goto LABEL_47;
    }

    goto LABEL_64;
  }

LABEL_60:
  v23 = *(this + 13);
  if (v23 >= 0x80)
  {
    v24 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v23) + 1;
    v3 = *(this + 53);
  }

  else
  {
    v24 = 2;
  }

  v4 += v24;
  if ((v3 & 0x800) == 0)
  {
LABEL_47:
    if ((v3 & 0x1000) == 0)
    {
      goto LABEL_48;
    }

    goto LABEL_68;
  }

LABEL_64:
  v25 = *(this + 14);
  if (v25 >= 0x80)
  {
    v26 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v25) + 1;
    v3 = *(this + 53);
  }

  else
  {
    v26 = 2;
  }

  v4 += v26;
  if ((v3 & 0x1000) == 0)
  {
LABEL_48:
    if ((v3 & 0x2000) == 0)
    {
      goto LABEL_49;
    }

    goto LABEL_72;
  }

LABEL_68:
  v27 = *(this + 15);
  if (v27 >= 0x80)
  {
    v28 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v27) + 1;
    v3 = *(this + 53);
  }

  else
  {
    v28 = 2;
  }

  v4 += v28;
  if ((v3 & 0x2000) == 0)
  {
LABEL_49:
    if ((v3 & 0x4000) == 0)
    {
      goto LABEL_50;
    }

    goto LABEL_76;
  }

LABEL_72:
  v29 = *(this + 16);
  if (v29 >= 0x80)
  {
    v30 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v29) + 1;
    v3 = *(this + 53);
  }

  else
  {
    v30 = 2;
  }

  v4 += v30;
  if ((v3 & 0x4000) == 0)
  {
LABEL_50:
    if ((v3 & 0x8000) == 0)
    {
      goto LABEL_84;
    }

    goto LABEL_80;
  }

LABEL_76:
  v31 = *(this + 17);
  if (v31 >= 0x80)
  {
    v32 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v31) + 1;
    v3 = *(this + 53);
  }

  else
  {
    v32 = 2;
  }

  v4 += v32;
  if ((v3 & 0x8000) != 0)
  {
LABEL_80:
    v33 = *(this + 18);
    if (v33 >= 0x80)
    {
      v34 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v33) + 2;
      v3 = *(this + 53);
    }

    else
    {
      v34 = 3;
    }

    v4 += v34;
  }

LABEL_84:
  if ((v3 & 0xFF0000) == 0)
  {
    goto LABEL_121;
  }

  if ((v3 & 0x10000) != 0)
  {
    v35 = *(this + 19);
    if (v35 >= 0x80)
    {
      v36 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v35) + 2;
      v3 = *(this + 53);
    }

    else
    {
      v36 = 3;
    }

    v4 += v36;
    if ((v3 & 0x20000) == 0)
    {
LABEL_87:
      if ((v3 & 0x40000) == 0)
      {
        goto LABEL_88;
      }

      goto LABEL_101;
    }
  }

  else if ((v3 & 0x20000) == 0)
  {
    goto LABEL_87;
  }

  v37 = *(this + 20);
  if (v37 >= 0x80)
  {
    v38 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v37) + 2;
    v3 = *(this + 53);
  }

  else
  {
    v38 = 3;
  }

  v4 += v38;
  if ((v3 & 0x40000) == 0)
  {
LABEL_88:
    if ((v3 & 0x80000) == 0)
    {
      goto LABEL_89;
    }

    goto LABEL_105;
  }

LABEL_101:
  v39 = *(this + 21);
  if (v39 >= 0x80)
  {
    v40 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v39) + 2;
    v3 = *(this + 53);
  }

  else
  {
    v40 = 3;
  }

  v4 += v40;
  if ((v3 & 0x80000) == 0)
  {
LABEL_89:
    if ((v3 & 0x100000) == 0)
    {
      goto LABEL_90;
    }

    goto LABEL_109;
  }

LABEL_105:
  v41 = *(this + 22);
  if (v41 >= 0x80)
  {
    v42 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v41) + 2;
    v3 = *(this + 53);
  }

  else
  {
    v42 = 3;
  }

  v4 += v42;
  if ((v3 & 0x100000) == 0)
  {
LABEL_90:
    if ((v3 & 0x200000) == 0)
    {
      goto LABEL_91;
    }

    goto LABEL_113;
  }

LABEL_109:
  v43 = *(this + 23);
  if (v43 >= 0x80)
  {
    v44 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v43) + 2;
    v3 = *(this + 53);
  }

  else
  {
    v44 = 3;
  }

  v4 += v44;
  if ((v3 & 0x200000) == 0)
  {
LABEL_91:
    if ((v3 & 0x800000) == 0)
    {
      goto LABEL_121;
    }

    goto LABEL_117;
  }

LABEL_113:
  v45 = *(this + 24);
  if (v45 >= 0x80)
  {
    v46 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v45) + 2;
    v3 = *(this + 53);
  }

  else
  {
    v46 = 3;
  }

  v4 += v46;
  if ((v3 & 0x800000) != 0)
  {
LABEL_117:
    v47 = *(this + 25);
    if (v47 >= 0x80)
    {
      v48 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v47) + 2;
      v3 = *(this + 53);
    }

    else
    {
      v48 = 3;
    }

    v4 += v48;
  }

LABEL_121:
  if (!HIBYTE(v3))
  {
    goto LABEL_143;
  }

  if ((v3 & 0x1000000) != 0)
  {
    v49 = *(this + 30);
    if (v49 >= 0x80)
    {
      v50 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v49) + 2;
      v3 = *(this + 53);
    }

    else
    {
      v50 = 3;
    }

    v4 += v50;
    if ((v3 & 0x2000000) == 0)
    {
LABEL_124:
      if ((v3 & 0x4000000) == 0)
      {
        goto LABEL_125;
      }

      goto LABEL_135;
    }
  }

  else if ((v3 & 0x2000000) == 0)
  {
    goto LABEL_124;
  }

  v51 = *(this + 31);
  if (v51 >= 0x80)
  {
    v52 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v51) + 2;
    v3 = *(this + 53);
  }

  else
  {
    v52 = 3;
  }

  v4 += v52;
  if ((v3 & 0x4000000) == 0)
  {
LABEL_125:
    if ((v3 & 0x8000000) == 0)
    {
      goto LABEL_143;
    }

    goto LABEL_139;
  }

LABEL_135:
  v53 = *(this + 32);
  if (v53 >= 0x80)
  {
    v54 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v53) + 2;
    v3 = *(this + 53);
  }

  else
  {
    v54 = 3;
  }

  v4 += v54;
  if ((v3 & 0x8000000) != 0)
  {
LABEL_139:
    v55 = *(this + 33);
    if (v55 >= 0x80)
    {
      v56 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v55) + 2;
    }

    else
    {
      v56 = 3;
    }

    v4 += v56;
  }

LABEL_143:
  LOBYTE(v57) = *(this + 216);
  if (v57)
  {
    if (*(this + 216))
    {
      v58 = *(this + 50);
      if (v58 >= 0x80)
      {
        v59 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v58) + 2;
        v57 = *(this + 54);
      }

      else
      {
        v59 = 3;
      }

      v4 += v59;
    }

    if ((v57 & 2) != 0)
    {
      v60 = *(this + 51);
      if (v60 >= 0x80)
      {
        v61 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v60) + 2;
      }

      else
      {
        v61 = 3;
      }

      v4 += v61;
    }
  }

  v89 = v4;
  v62 = *(this + 28);
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
      v65 = *(*(this + 13) + 4 * v63);
      if (v65 >= 0x80)
      {
        v66 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v65);
        v62 = *(this + 28);
      }

      else
      {
        v66 = 1;
      }

      v64 += v66;
      ++v63;
    }

    while (v63 < v62);
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
      if (v70 >= 0x80)
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

  v72 = *(this + 40);
  if (v72 < 1)
  {
    v74 = 0;
  }

  else
  {
    v73 = 0;
    v74 = 0;
    do
    {
      v75 = *(*(this + 19) + 4 * v73);
      if (v75 >= 0x80)
      {
        v76 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v75);
        v72 = *(this + 40);
      }

      else
      {
        v76 = 1;
      }

      v74 += v76;
      ++v73;
    }

    while (v73 < v72);
  }

  v77 = *(this + 44);
  if (v77 < 1)
  {
    v79 = 0;
  }

  else
  {
    v78 = 0;
    v79 = 0;
    do
    {
      v80 = *(*(this + 21) + 4 * v78);
      if (v80 >= 0x80)
      {
        v81 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v80);
        v77 = *(this + 44);
      }

      else
      {
        v81 = 1;
      }

      v79 += v81;
      ++v78;
    }

    while (v78 < v77);
  }

  v88 = v62;
  v82 = *(this + 48);
  if (v82 < 1)
  {
    v84 = 0;
  }

  else
  {
    v83 = 0;
    v84 = 0;
    do
    {
      v85 = *(*(this + 23) + 4 * v83);
      if (v85 >= 0x80)
      {
        v86 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v85);
        v82 = *(this + 48);
      }

      else
      {
        v86 = 1;
      }

      v84 += v86;
      ++v83;
    }

    while (v83 < v82);
  }

  result = (v64 + v89 + v69 + v74 + v79 + v84 + 2 * (v67 + v88 + v72 + v77 + v82));
  *(this + 52) = result;
  return result;
}

void awd::metrics::BluetoothAccessoryIedSensors::CheckTypeAndMergeFrom(awd::metrics::BluetoothAccessoryIedSensors *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  {
    awd::metrics::BluetoothAccessoryIedSensors::CheckTypeAndMergeFrom();
  }

  awd::metrics::BluetoothAccessoryIedSensors::MergeFrom(this, lpsrc);
}

void awd::metrics::BluetoothAccessoryIedSensors::CopyFrom(awd::metrics::BluetoothAccessoryIedSensors *this, const awd::metrics::BluetoothAccessoryIedSensors *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    awd::metrics::BluetoothAccessoryIedSensors::MergeFrom(this, a2);
  }
}

double awd::metrics::BluetoothAccessoryIedSensors::Swap(awd::metrics::BluetoothAccessoryIedSensors *this, awd::metrics::BluetoothAccessoryIedSensors *a2)
{
  if (a2 != this)
  {
    v2 = *(this + 1);
    *(this + 1) = *(a2 + 1);
    *(a2 + 1) = v2;
    LODWORD(v2) = *(this + 4);
    *(this + 4) = *(a2 + 4);
    *(a2 + 4) = v2;
    LODWORD(v2) = *(this + 5);
    *(this + 5) = *(a2 + 5);
    *(a2 + 5) = v2;
    LODWORD(v2) = *(this + 6);
    *(this + 6) = *(a2 + 6);
    *(a2 + 6) = v2;
    LODWORD(v2) = *(this + 7);
    *(this + 7) = *(a2 + 7);
    *(a2 + 7) = v2;
    LODWORD(v2) = *(this + 8);
    *(this + 8) = *(a2 + 8);
    *(a2 + 8) = v2;
    LODWORD(v2) = *(this + 9);
    *(this + 9) = *(a2 + 9);
    *(a2 + 9) = v2;
    LODWORD(v2) = *(this + 10);
    *(this + 10) = *(a2 + 10);
    *(a2 + 10) = v2;
    LODWORD(v2) = *(this + 11);
    *(this + 11) = *(a2 + 11);
    *(a2 + 11) = v2;
    LODWORD(v2) = *(this + 12);
    *(this + 12) = *(a2 + 12);
    *(a2 + 12) = v2;
    LODWORD(v2) = *(this + 13);
    *(this + 13) = *(a2 + 13);
    *(a2 + 13) = v2;
    LODWORD(v2) = *(this + 14);
    *(this + 14) = *(a2 + 14);
    *(a2 + 14) = v2;
    LODWORD(v2) = *(this + 15);
    *(this + 15) = *(a2 + 15);
    *(a2 + 15) = v2;
    LODWORD(v2) = *(this + 16);
    *(this + 16) = *(a2 + 16);
    *(a2 + 16) = v2;
    LODWORD(v2) = *(this + 17);
    *(this + 17) = *(a2 + 17);
    *(a2 + 17) = v2;
    LODWORD(v2) = *(this + 18);
    *(this + 18) = *(a2 + 18);
    *(a2 + 18) = v2;
    LODWORD(v2) = *(this + 19);
    *(this + 19) = *(a2 + 19);
    *(a2 + 19) = v2;
    LODWORD(v2) = *(this + 20);
    *(this + 20) = *(a2 + 20);
    *(a2 + 20) = v2;
    LODWORD(v2) = *(this + 21);
    *(this + 21) = *(a2 + 21);
    *(a2 + 21) = v2;
    LODWORD(v2) = *(this + 22);
    *(this + 22) = *(a2 + 22);
    *(a2 + 22) = v2;
    LODWORD(v2) = *(this + 23);
    *(this + 23) = *(a2 + 23);
    *(a2 + 23) = v2;
    LODWORD(v2) = *(this + 24);
    *(this + 24) = *(a2 + 24);
    *(a2 + 24) = v2;
    v3 = *(this + 13);
    *(this + 13) = *(a2 + 13);
    v4 = *(a2 + 14);
    *(a2 + 13) = v3;
    v5 = *(this + 14);
    *(this + 14) = v4;
    *(a2 + 14) = v5;
    LODWORD(v3) = *(this + 25);
    *(this + 25) = *(a2 + 25);
    *(a2 + 25) = v3;
    LODWORD(v3) = *(this + 30);
    *(this + 30) = *(a2 + 30);
    *(a2 + 30) = v3;
    LODWORD(v3) = *(this + 31);
    *(this + 31) = *(a2 + 31);
    *(a2 + 31) = v3;
    LODWORD(v3) = *(this + 32);
    *(this + 32) = *(a2 + 32);
    *(a2 + 32) = v3;
    LODWORD(v3) = *(this + 33);
    *(this + 33) = *(a2 + 33);
    *(a2 + 33) = v3;
    v6 = *(this + 17);
    *(this + 17) = *(a2 + 17);
    v7 = *(a2 + 18);
    *(a2 + 17) = v6;
    v8 = *(this + 18);
    *(this + 18) = v7;
    *(a2 + 18) = v8;
    v9 = *(this + 19);
    *(this + 19) = *(a2 + 19);
    v10 = *(a2 + 20);
    *(a2 + 19) = v9;
    v11 = *(this + 20);
    *(this + 20) = v10;
    *(a2 + 20) = v11;
    v12 = *(this + 21);
    *(this + 21) = *(a2 + 21);
    v13 = *(a2 + 22);
    *(a2 + 21) = v12;
    v14 = *(this + 22);
    *(this + 22) = v13;
    *(a2 + 22) = v14;
    v15 = *(this + 23);
    *(this + 23) = *(a2 + 23);
    result = *(a2 + 24);
    *(a2 + 23) = v15;
    v17 = *(this + 24);
    *(this + 24) = result;
    *(a2 + 24) = v17;
    LODWORD(v15) = *(this + 50);
    *(this + 50) = *(a2 + 50);
    *(a2 + 50) = v15;
    LODWORD(v15) = *(this + 51);
    *(this + 51) = *(a2 + 51);
    *(a2 + 51) = v15;
    LODWORD(v15) = *(this + 53);
    *(this + 53) = *(a2 + 53);
    *(a2 + 53) = v15;
    LODWORD(v15) = *(this + 54);
    *(this + 54) = *(a2 + 54);
    *(a2 + 54) = v15;
    LODWORD(v15) = *(this + 52);
    *(this + 52) = *(a2 + 52);
    *(a2 + 52) = v15;
  }

  return result;
}

uint64_t awd::metrics::BluetoothAudioCodec::SharedCtor(uint64_t this)
{
  *(this + 8) = 0;
  *(this + 16) = 0;
  *(this + 32) = 0;
  *(this + 24) = 0;
  return this;
}

awd::metrics::BluetoothAudioCodec *awd::metrics::BluetoothAudioCodec::BluetoothAudioCodec(awd::metrics::BluetoothAudioCodec *this, const awd::metrics::BluetoothAudioCodec *a2)
{
  *this = &unk_2A1D4BC10;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 3) = 0;
  *(this + 8) = 0;
  awd::metrics::BluetoothAudioCodec::MergeFrom(this, a2);
  return this;
}

void awd::metrics::BluetoothAudioCodec::MergeFrom(awd::metrics::BluetoothAudioCodec *this, const awd::metrics::BluetoothAudioCodec *a2)
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

void sub_29639D880(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::metrics::BluetoothAudioCodec::~BluetoothAudioCodec(awd::metrics::BluetoothAudioCodec *this)
{
  *this = &unk_2A1D4BC10;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2A1D4BC10;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2A1D4BC10;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  JUMPOUT(0x29C259F00);
}

uint64_t awd::metrics::BluetoothAudioCodec::default_instance(awd::metrics::BluetoothAudioCodec *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = awd::metrics::BluetoothAudioCodec::default_instance_;
  if (!awd::metrics::BluetoothAudioCodec::default_instance_)
  {
    awd::metrics::protobuf_AddDesc_Bluetooth_2eproto(0, a2, a3, a4);
    return awd::metrics::BluetoothAudioCodec::default_instance_;
  }

  return result;
}

uint64_t awd::metrics::BluetoothAudioCodec::Clear(uint64_t this)
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

uint64_t awd::metrics::BluetoothAudioCodec::MergePartialFromCodedStream(awd::metrics::BluetoothAudioCodec *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
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

uint64_t awd::metrics::BluetoothAudioCodec::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
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

uint64_t awd::metrics::BluetoothAudioCodec::ByteSize(awd::metrics::BluetoothAudioCodec *this, unint64_t a2)
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

void awd::metrics::BluetoothAudioCodec::CheckTypeAndMergeFrom(awd::metrics::BluetoothAudioCodec *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  {
    awd::metrics::BluetoothAudioCodec::CheckTypeAndMergeFrom();
  }

  awd::metrics::BluetoothAudioCodec::MergeFrom(this, lpsrc);
}

void awd::metrics::BluetoothAudioCodec::CopyFrom(awd::metrics::BluetoothAudioCodec *this, const awd::metrics::BluetoothAudioCodec *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    awd::metrics::BluetoothAudioCodec::MergeFrom(this, a2);
  }
}

uint64_t awd::metrics::BluetoothAudioCodec::Swap(uint64_t this, awd::metrics::BluetoothAudioCodec *a2)
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

double awd::metrics::BluetoothMagicPairing::SharedCtor(awd::metrics::BluetoothMagicPairing *this)
{
  result = 0.0;
  *(this + 24) = 0u;
  *(this + 8) = 0u;
  return result;
}

awd::metrics::BluetoothMagicPairing *awd::metrics::BluetoothMagicPairing::BluetoothMagicPairing(awd::metrics::BluetoothMagicPairing *this, const awd::metrics::BluetoothMagicPairing *a2)
{
  *this = &unk_2A1D4BC88;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  awd::metrics::BluetoothMagicPairing::MergeFrom(this, a2);
  return this;
}

void awd::metrics::BluetoothMagicPairing::MergeFrom(awd::metrics::BluetoothMagicPairing *this, const awd::metrics::BluetoothMagicPairing *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v8);
  }

  LOBYTE(v4) = *(a2 + 36);
  if (v4)
  {
    if (*(a2 + 36))
    {
      v6 = *(a2 + 1);
      *(this + 9) |= 1u;
      *(this + 1) = v6;
      v4 = *(a2 + 9);
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

    else if ((*(a2 + 36) & 2) == 0)
    {
      goto LABEL_6;
    }

    v7 = *(a2 + 2);
    *(this + 9) |= 2u;
    *(this + 2) = v7;
    if ((*(a2 + 9) & 4) == 0)
    {
      return;
    }

LABEL_7:
    v5 = *(a2 + 3);
    *(this + 9) |= 4u;
    *(this + 3) = v5;
  }
}

void sub_29639E0A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::metrics::BluetoothMagicPairing::~BluetoothMagicPairing(awd::metrics::BluetoothMagicPairing *this)
{
  *this = &unk_2A1D4BC88;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2A1D4BC88;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2A1D4BC88;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  JUMPOUT(0x29C259F00);
}

uint64_t awd::metrics::BluetoothMagicPairing::default_instance(awd::metrics::BluetoothMagicPairing *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = awd::metrics::BluetoothMagicPairing::default_instance_;
  if (!awd::metrics::BluetoothMagicPairing::default_instance_)
  {
    awd::metrics::protobuf_AddDesc_Bluetooth_2eproto(0, a2, a3, a4);
    return awd::metrics::BluetoothMagicPairing::default_instance_;
  }

  return result;
}

uint64_t awd::metrics::BluetoothMagicPairing::Clear(uint64_t this)
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

uint64_t awd::metrics::BluetoothMagicPairing::MergePartialFromCodedStream(awd::metrics::BluetoothMagicPairing *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
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

      *(this + 9) |= 1u;
      if (v11 < v8 && *v11 == 16)
      {
        v12 = v11 + 1;
        *(a2 + 1) = v12;
LABEL_25:
        if (v12 >= v8 || (v14 = *v12, v14 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 2);
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
          v15 = v12 + 1;
          *(a2 + 1) = v15;
        }

        *(this + 9) |= 2u;
        if (v15 < v8 && *v15 == 24)
        {
          v13 = v15 + 1;
          *(a2 + 1) = v13;
LABEL_33:
          if (v13 >= v8 || (v16 = *v13, v16 < 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 3);
            if (!result)
            {
              return result;
            }

            v17 = *(a2 + 1);
            v8 = *(a2 + 2);
          }

          else
          {
            *(this + 3) = v16;
            v17 = v13 + 1;
            *(a2 + 1) = v17;
          }

          *(this + 9) |= 4u;
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

uint64_t awd::metrics::BluetoothMagicPairing::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 36);
  if ((v6 & 1) == 0)
  {
    if ((v6 & 2) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(2, *(v5 + 16), a2, a4);
    if ((*(v5 + 36) & 4) == 0)
    {
      return this;
    }

    goto LABEL_7;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(1, *(this + 8), a2, a4);
  v6 = *(v5 + 36);
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
  v7 = *(v5 + 24);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(3, v7, a2, a4);
}

uint64_t awd::metrics::BluetoothMagicPairing::ByteSize(awd::metrics::BluetoothMagicPairing *this, unint64_t a2)
{
  LOBYTE(v3) = *(this + 36);
  if (!v3)
  {
    v4 = 0;
    goto LABEL_10;
  }

  if (*(this + 36))
  {
    v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 1)) + 1;
    v3 = *(this + 9);
    if ((v3 & 2) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v4 = 0;
  if ((*(this + 36) & 2) != 0)
  {
LABEL_7:
    v4 = v4 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 2)) + 1;
    v3 = *(this + 9);
  }

LABEL_8:
  if ((v3 & 4) != 0)
  {
    v4 = v4 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 3)) + 1;
  }

LABEL_10:
  *(this + 8) = v4;
  return v4;
}

void awd::metrics::BluetoothMagicPairing::CheckTypeAndMergeFrom(awd::metrics::BluetoothMagicPairing *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  {
    awd::metrics::BluetoothMagicPairing::CheckTypeAndMergeFrom();
  }

  awd::metrics::BluetoothMagicPairing::MergeFrom(this, lpsrc);
}

void awd::metrics::BluetoothMagicPairing::CopyFrom(awd::metrics::BluetoothMagicPairing *this, const awd::metrics::BluetoothMagicPairing *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    awd::metrics::BluetoothMagicPairing::MergeFrom(this, a2);
  }
}

uint64_t awd::metrics::BluetoothMagicPairing::Swap(uint64_t this, awd::metrics::BluetoothMagicPairing *a2)
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
    *(this + 24) = *(a2 + 3);
    *(a2 + 3) = v4;
    LODWORD(v4) = *(this + 36);
    *(this + 36) = *(a2 + 9);
    *(a2 + 9) = v4;
    LODWORD(v4) = *(this + 32);
    *(this + 32) = *(a2 + 8);
    *(a2 + 8) = v4;
  }

  return this;
}

void *awd::metrics::BluetoothACIAudioLinkInfo::SharedCtor(void *this)
{
  this[1] = 0;
  this[25] = 0;
  this[26] = 0;
  this[24] = 0;
  return this;
}

awd::metrics::BluetoothACIAudioLinkInfo *awd::metrics::BluetoothACIAudioLinkInfo::BluetoothACIAudioLinkInfo(awd::metrics::BluetoothACIAudioLinkInfo *this, const awd::metrics::BluetoothACIAudioLinkInfo *a2)
{
  *this = &unk_2A1D4BD00;
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
  awd::metrics::BluetoothACIAudioLinkInfo::MergeFrom(this, a2);
  return this;
}

void sub_29639E748(_Unwind_Exception *a1)
{
  v3 = *(v1 + 22);
  if (v3)
  {
    MEMORY[0x29C259EE0](v3, 0x1000C8052888210);
  }

  v4 = *(v1 + 20);
  if (v4)
  {
    MEMORY[0x29C259EE0](v4, 0x1000C8052888210);
  }

  v5 = *(v1 + 18);
  if (v5)
  {
    MEMORY[0x29C259EE0](v5, 0x1000C8052888210);
  }

  v6 = *(v1 + 16);
  if (v6)
  {
    MEMORY[0x29C259EE0](v6, 0x1000C8052888210);
  }

  v7 = *(v1 + 14);
  if (v7)
  {
    MEMORY[0x29C259EE0](v7, 0x1000C8052888210);
  }

  v8 = *(v1 + 12);
  if (v8)
  {
    MEMORY[0x29C259EE0](v8, 0x1000C8052888210);
  }

  v9 = *(v1 + 10);
  if (v9)
  {
    MEMORY[0x29C259EE0](v9, 0x1000C8052888210);
  }

  v10 = *(v1 + 8);
  if (v10)
  {
    MEMORY[0x29C259EE0](v10, 0x1000C8052888210);
  }

  v11 = *(v1 + 6);
  if (v11)
  {
    MEMORY[0x29C259EE0](v11, 0x1000C8052888210);
  }

  v12 = *(v1 + 4);
  if (v12)
  {
    MEMORY[0x29C259EE0](v12, 0x1000C8052888210);
  }

  v13 = *(v1 + 2);
  if (v13)
  {
    MEMORY[0x29C259EE0](v13, 0x1000C8052888210);
  }

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(v1);
  _Unwind_Resume(a1);
}

void awd::metrics::BluetoothACIAudioLinkInfo::MergeFrom(awd::metrics::BluetoothACIAudioLinkInfo *this, const awd::metrics::BluetoothACIAudioLinkInfo *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v21);
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

  v7 = *(a2 + 18);
  if (v7)
  {
    wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 16, *(this + 18) + v7);
    memcpy((*(this + 8) + 4 * *(this + 18)), *(a2 + 8), 4 * *(a2 + 18));
    *(this + 18) += *(a2 + 18);
  }

  v8 = *(a2 + 22);
  if (v8)
  {
    wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 20, *(this + 22) + v8);
    memcpy((*(this + 10) + 4 * *(this + 22)), *(a2 + 10), 4 * *(a2 + 22));
    *(this + 22) += *(a2 + 22);
  }

  v9 = *(a2 + 26);
  if (v9)
  {
    wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 24, *(this + 26) + v9);
    memcpy((*(this + 12) + 4 * *(this + 26)), *(a2 + 12), 4 * *(a2 + 26));
    *(this + 26) += *(a2 + 26);
  }

  v10 = *(a2 + 30);
  if (v10)
  {
    wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 28, *(this + 30) + v10);
    memcpy((*(this + 14) + 4 * *(this + 30)), *(a2 + 14), 4 * *(a2 + 30));
    *(this + 30) += *(a2 + 30);
  }

  v11 = *(a2 + 34);
  if (v11)
  {
    wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 32, *(this + 34) + v11);
    memcpy((*(this + 16) + 4 * *(this + 34)), *(a2 + 16), 4 * *(a2 + 34));
    *(this + 34) += *(a2 + 34);
  }

  v12 = *(a2 + 38);
  if (v12)
  {
    wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 36, *(this + 38) + v12);
    memcpy((*(this + 18) + 4 * *(this + 38)), *(a2 + 18), 4 * *(a2 + 38));
    *(this + 38) += *(a2 + 38);
  }

  v13 = *(a2 + 42);
  if (v13)
  {
    wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 40, *(this + 42) + v13);
    memcpy((*(this + 20) + 4 * *(this + 42)), *(a2 + 20), 4 * *(a2 + 42));
    *(this + 42) += *(a2 + 42);
  }

  v14 = *(a2 + 46);
  if (v14)
  {
    wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 44, *(this + 46) + v14);
    memcpy((*(this + 22) + 4 * *(this + 46)), *(a2 + 22), 4 * *(a2 + 46));
    *(this + 46) += *(a2 + 46);
  }

  v15 = *(a2 + 53);
  if (v15)
  {
    v16 = *(a2 + 1);
    *(this + 53) |= 1u;
    *(this + 1) = v16;
    v15 = *(a2 + 53);
  }

  if ((v15 & 0xFF000) != 0)
  {
    if ((v15 & 0x1000) != 0)
    {
      v18 = *(a2 + 48);
      *(this + 53) |= 0x1000u;
      *(this + 48) = v18;
      v15 = *(a2 + 53);
      if ((v15 & 0x2000) == 0)
      {
LABEL_30:
        if ((v15 & 0x4000) == 0)
        {
          goto LABEL_31;
        }

        goto LABEL_36;
      }
    }

    else if ((v15 & 0x2000) == 0)
    {
      goto LABEL_30;
    }

    v19 = *(a2 + 49);
    *(this + 53) |= 0x2000u;
    *(this + 49) = v19;
    v15 = *(a2 + 53);
    if ((v15 & 0x4000) == 0)
    {
LABEL_31:
      if ((v15 & 0x8000) == 0)
      {
        return;
      }

      goto LABEL_32;
    }

LABEL_36:
    v20 = *(a2 + 50);
    *(this + 53) |= 0x4000u;
    *(this + 50) = v20;
    if ((*(a2 + 53) & 0x8000) == 0)
    {
      return;
    }

LABEL_32:
    v17 = *(a2 + 51);
    *(this + 53) |= 0x8000u;
    *(this + 51) = v17;
  }
}

void sub_29639EC28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::metrics::BluetoothACIAudioLinkInfo::~BluetoothACIAudioLinkInfo(awd::metrics::BluetoothACIAudioLinkInfo *this)
{
  *this = &unk_2A1D4BD00;
  v2 = *(this + 22);
  if (v2)
  {
    MEMORY[0x29C259EE0](v2, 0x1000C8052888210);
  }

  v3 = *(this + 20);
  if (v3)
  {
    MEMORY[0x29C259EE0](v3, 0x1000C8052888210);
  }

  v4 = *(this + 18);
  if (v4)
  {
    MEMORY[0x29C259EE0](v4, 0x1000C8052888210);
  }

  v5 = *(this + 16);
  if (v5)
  {
    MEMORY[0x29C259EE0](v5, 0x1000C8052888210);
  }

  v6 = *(this + 14);
  if (v6)
  {
    MEMORY[0x29C259EE0](v6, 0x1000C8052888210);
  }

  v7 = *(this + 12);
  if (v7)
  {
    MEMORY[0x29C259EE0](v7, 0x1000C8052888210);
  }

  v8 = *(this + 10);
  if (v8)
  {
    MEMORY[0x29C259EE0](v8, 0x1000C8052888210);
  }

  v9 = *(this + 8);
  if (v9)
  {
    MEMORY[0x29C259EE0](v9, 0x1000C8052888210);
  }

  v10 = *(this + 6);
  if (v10)
  {
    MEMORY[0x29C259EE0](v10, 0x1000C8052888210);
  }

  v11 = *(this + 4);
  if (v11)
  {
    MEMORY[0x29C259EE0](v11, 0x1000C8052888210);
  }

  v12 = *(this + 2);
  if (v12)
  {
    MEMORY[0x29C259EE0](v12, 0x1000C8052888210);
  }

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  awd::metrics::BluetoothACIAudioLinkInfo::~BluetoothACIAudioLinkInfo(this);

  JUMPOUT(0x29C259F00);
}

uint64_t awd::metrics::BluetoothACIAudioLinkInfo::default_instance(awd::metrics::BluetoothACIAudioLinkInfo *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = awd::metrics::BluetoothACIAudioLinkInfo::default_instance_;
  if (!awd::metrics::BluetoothACIAudioLinkInfo::default_instance_)
  {
    awd::metrics::protobuf_AddDesc_Bluetooth_2eproto(0, a2, a3, a4);
    return awd::metrics::BluetoothACIAudioLinkInfo::default_instance_;
  }

  return result;
}

uint64_t awd::metrics::BluetoothACIAudioLinkInfo::Clear(uint64_t this)
{
  v1 = *(this + 212);
  if (v1)
  {
    *(this + 8) = 0;
  }

  if ((v1 & 0xFF000) != 0)
  {
    *(this + 192) = 0;
    *(this + 200) = 0;
  }

  *(this + 24) = 0;
  *(this + 40) = 0;
  *(this + 56) = 0;
  *(this + 72) = 0;
  *(this + 88) = 0;
  *(this + 104) = 0;
  *(this + 120) = 0;
  *(this + 136) = 0;
  *(this + 152) = 0;
  *(this + 168) = 0;
  *(this + 184) = 0;
  *(this + 212) = 0;
  return this;
}

uint64_t awd::metrics::BluetoothACIAudioLinkInfo::MergePartialFromCodedStream(awd::metrics::BluetoothACIAudioLinkInfo *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
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
          goto LABEL_61;
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
          v11 = (v9 + 1);
          *(a2 + 1) = v11;
        }

        *(this + 53) |= 1u;
        if (v11 >= v8)
        {
          continue;
        }

        v28 = *v11;
        goto LABEL_81;
      case 2u:
        if ((TagFallback & 7) != 0)
        {
          if (v7 == 2)
          {
            result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadPackedPrimitiveNoInline<unsigned int,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)13>(a2, this + 2);
            if (!result)
            {
              return result;
            }

            goto LABEL_100;
          }

          goto LABEL_61;
        }

        v23 = *(a2 + 1);
        v8 = *(a2 + 2);
        while (1)
        {
          v157 = 0;
          if (v23 >= v8 || *v23 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v157))
            {
              return 0;
            }
          }

          else
          {
            v157 = *v23;
            *(a2 + 1) = v23 + 1;
          }

          v29 = *(this + 6);
          if (v29 == *(this + 7))
          {
            wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 4, v29 + 1);
            v29 = *(this + 6);
          }

          v30 = v157;
          v31 = *(this + 2);
          *(this + 6) = v29 + 1;
          *(v31 + 4 * v29) = v30;
          v32 = *(this + 7) - *(this + 6);
          if (v32 >= 1)
          {
            v33 = v32 + 1;
            do
            {
              v34 = *(a2 + 1);
              v35 = *(a2 + 2);
              if (v34 >= v35 || *v34 != 16)
              {
                break;
              }

              *(a2 + 1) = v34 + 1;
              if ((v34 + 1) >= v35 || v34[1] < 0)
              {
                if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v157))
                {
                  return 0;
                }
              }

              else
              {
                v157 = v34[1];
                *(a2 + 1) = v34 + 2;
              }

              v36 = *(this + 6);
              if (v36 >= *(this + 7))
              {
                wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v158);
                v36 = *(this + 6);
              }

              v37 = v157;
              v38 = *(this + 2);
              *(this + 6) = v36 + 1;
              *(v38 + 4 * v36) = v37;
              --v33;
            }

            while (v33 > 1);
          }

LABEL_100:
          v11 = *(a2 + 1);
          v8 = *(a2 + 2);
          if (v11 >= v8)
          {
            goto LABEL_1;
          }

          v28 = *v11;
          if (v28 == 24)
          {
            goto LABEL_102;
          }

LABEL_81:
          if (v28 != 16)
          {
            goto LABEL_1;
          }

          v23 = (v11 + 1);
          *(a2 + 1) = v23;
        }

      case 3u:
        if ((TagFallback & 7) != 0)
        {
          if (v7 == 2)
          {
            result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadPackedPrimitiveNoInline<unsigned int,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)13>(a2, this + 4);
            if (!result)
            {
              return result;
            }

            goto LABEL_120;
          }

          goto LABEL_61;
        }

        v20 = *(a2 + 1);
        v8 = *(a2 + 2);
        while (1)
        {
          v157 = 0;
          if (v20 >= v8 || *v20 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v157))
            {
              return 0;
            }
          }

          else
          {
            v157 = *v20;
            *(a2 + 1) = v20 + 1;
          }

          v39 = *(this + 10);
          if (v39 == *(this + 11))
          {
            wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 8, v39 + 1);
            v39 = *(this + 10);
          }

          v40 = v157;
          v41 = *(this + 4);
          *(this + 10) = v39 + 1;
          *(v41 + 4 * v39) = v40;
          v42 = *(this + 11) - *(this + 10);
          if (v42 >= 1)
          {
            v43 = v42 + 1;
            do
            {
              v44 = *(a2 + 1);
              v45 = *(a2 + 2);
              if (v44 >= v45 || *v44 != 24)
              {
                break;
              }

              *(a2 + 1) = v44 + 1;
              if ((v44 + 1) >= v45 || v44[1] < 0)
              {
                if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v157))
                {
                  return 0;
                }
              }

              else
              {
                v157 = v44[1];
                *(a2 + 1) = v44 + 2;
              }

              v46 = *(this + 10);
              if (v46 >= *(this + 11))
              {
                wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v158);
                v46 = *(this + 10);
              }

              v47 = v157;
              v48 = *(this + 4);
              *(this + 10) = v46 + 1;
              *(v48 + 4 * v46) = v47;
              --v43;
            }

            while (v43 > 1);
          }

LABEL_120:
          v11 = *(a2 + 1);
          v8 = *(a2 + 2);
          if (v11 >= v8)
          {
            goto LABEL_1;
          }

          v49 = *v11;
          if (v49 == 32)
          {
            goto LABEL_124;
          }

          if (v49 != 24)
          {
            goto LABEL_1;
          }

LABEL_102:
          v20 = (v11 + 1);
          *(a2 + 1) = v20;
        }

      case 4u:
        if ((TagFallback & 7) != 0)
        {
          if (v7 == 2)
          {
            result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadPackedPrimitiveNoInline<unsigned int,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)13>(a2, this + 6);
            if (!result)
            {
              return result;
            }

            goto LABEL_142;
          }

          goto LABEL_61;
        }

        v21 = *(a2 + 1);
        v8 = *(a2 + 2);
        while (1)
        {
          v157 = 0;
          if (v21 >= v8 || *v21 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v157))
            {
              return 0;
            }
          }

          else
          {
            v157 = *v21;
            *(a2 + 1) = v21 + 1;
          }

          v50 = *(this + 14);
          if (v50 == *(this + 15))
          {
            wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 12, v50 + 1);
            v50 = *(this + 14);
          }

          v51 = v157;
          v52 = *(this + 6);
          *(this + 14) = v50 + 1;
          *(v52 + 4 * v50) = v51;
          v53 = *(this + 15) - *(this + 14);
          if (v53 >= 1)
          {
            v54 = v53 + 1;
            do
            {
              v55 = *(a2 + 1);
              v56 = *(a2 + 2);
              if (v55 >= v56 || *v55 != 32)
              {
                break;
              }

              *(a2 + 1) = v55 + 1;
              if ((v55 + 1) >= v56 || v55[1] < 0)
              {
                if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v157))
                {
                  return 0;
                }
              }

              else
              {
                v157 = v55[1];
                *(a2 + 1) = v55 + 2;
              }

              v57 = *(this + 14);
              if (v57 >= *(this + 15))
              {
                wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v158);
                v57 = *(this + 14);
              }

              v58 = v157;
              v59 = *(this + 6);
              *(this + 14) = v57 + 1;
              *(v59 + 4 * v57) = v58;
              --v54;
            }

            while (v54 > 1);
          }

LABEL_142:
          v11 = *(a2 + 1);
          v8 = *(a2 + 2);
          if (v11 >= v8)
          {
            goto LABEL_1;
          }

          v60 = *v11;
          if (v60 == 40)
          {
            goto LABEL_146;
          }

          if (v60 != 32)
          {
            goto LABEL_1;
          }

LABEL_124:
          v21 = (v11 + 1);
          *(a2 + 1) = v21;
        }

      case 5u:
        if ((TagFallback & 7) != 0)
        {
          if (v7 == 2)
          {
            result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadPackedPrimitiveNoInline<unsigned int,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)13>(a2, this + 8);
            if (!result)
            {
              return result;
            }

            goto LABEL_164;
          }

          goto LABEL_61;
        }

        v18 = *(a2 + 1);
        v8 = *(a2 + 2);
        while (1)
        {
          v157 = 0;
          if (v18 >= v8 || *v18 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v157))
            {
              return 0;
            }
          }

          else
          {
            v157 = *v18;
            *(a2 + 1) = v18 + 1;
          }

          v61 = *(this + 18);
          if (v61 == *(this + 19))
          {
            wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 16, v61 + 1);
            v61 = *(this + 18);
          }

          v62 = v157;
          v63 = *(this + 8);
          *(this + 18) = v61 + 1;
          *(v63 + 4 * v61) = v62;
          v64 = *(this + 19) - *(this + 18);
          if (v64 >= 1)
          {
            v65 = v64 + 1;
            do
            {
              v66 = *(a2 + 1);
              v67 = *(a2 + 2);
              if (v66 >= v67 || *v66 != 40)
              {
                break;
              }

              *(a2 + 1) = v66 + 1;
              if ((v66 + 1) >= v67 || v66[1] < 0)
              {
                if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v157))
                {
                  return 0;
                }
              }

              else
              {
                v157 = v66[1];
                *(a2 + 1) = v66 + 2;
              }

              v68 = *(this + 18);
              if (v68 >= *(this + 19))
              {
                wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v158);
                v68 = *(this + 18);
              }

              v69 = v157;
              v70 = *(this + 8);
              *(this + 18) = v68 + 1;
              *(v70 + 4 * v68) = v69;
              --v65;
            }

            while (v65 > 1);
          }

LABEL_164:
          v11 = *(a2 + 1);
          v8 = *(a2 + 2);
          if (v11 >= v8)
          {
            goto LABEL_1;
          }

          v71 = *v11;
          if (v71 == 48)
          {
            goto LABEL_168;
          }

          if (v71 != 40)
          {
            goto LABEL_1;
          }

LABEL_146:
          v18 = (v11 + 1);
          *(a2 + 1) = v18;
        }

      case 6u:
        if ((TagFallback & 7) != 0)
        {
          if (v7 == 2)
          {
            result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadPackedPrimitiveNoInline<unsigned int,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)13>(a2, this + 10);
            if (!result)
            {
              return result;
            }

            goto LABEL_186;
          }

          goto LABEL_61;
        }

        v24 = *(a2 + 1);
        v8 = *(a2 + 2);
        while (1)
        {
          v157 = 0;
          if (v24 >= v8 || *v24 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v157))
            {
              return 0;
            }
          }

          else
          {
            v157 = *v24;
            *(a2 + 1) = v24 + 1;
          }

          v72 = *(this + 22);
          if (v72 == *(this + 23))
          {
            wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 20, v72 + 1);
            v72 = *(this + 22);
          }

          v73 = v157;
          v74 = *(this + 10);
          *(this + 22) = v72 + 1;
          *(v74 + 4 * v72) = v73;
          v75 = *(this + 23) - *(this + 22);
          if (v75 >= 1)
          {
            v76 = v75 + 1;
            do
            {
              v77 = *(a2 + 1);
              v78 = *(a2 + 2);
              if (v77 >= v78 || *v77 != 48)
              {
                break;
              }

              *(a2 + 1) = v77 + 1;
              if ((v77 + 1) >= v78 || v77[1] < 0)
              {
                if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v157))
                {
                  return 0;
                }
              }

              else
              {
                v157 = v77[1];
                *(a2 + 1) = v77 + 2;
              }

              v79 = *(this + 22);
              if (v79 >= *(this + 23))
              {
                wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v158);
                v79 = *(this + 22);
              }

              v80 = v157;
              v81 = *(this + 10);
              *(this + 22) = v79 + 1;
              *(v81 + 4 * v79) = v80;
              --v76;
            }

            while (v76 > 1);
          }

LABEL_186:
          v11 = *(a2 + 1);
          v8 = *(a2 + 2);
          if (v11 >= v8)
          {
            goto LABEL_1;
          }

          v82 = *v11;
          if (v82 == 56)
          {
            goto LABEL_190;
          }

          if (v82 != 48)
          {
            goto LABEL_1;
          }

LABEL_168:
          v24 = (v11 + 1);
          *(a2 + 1) = v24;
        }

      case 7u:
        if ((TagFallback & 7) != 0)
        {
          if (v7 == 2)
          {
            result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadPackedPrimitiveNoInline<unsigned int,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)13>(a2, this + 12);
            if (!result)
            {
              return result;
            }

            goto LABEL_208;
          }

          goto LABEL_61;
        }

        v25 = *(a2 + 1);
        v8 = *(a2 + 2);
        while (1)
        {
          v157 = 0;
          if (v25 >= v8 || *v25 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v157))
            {
              return 0;
            }
          }

          else
          {
            v157 = *v25;
            *(a2 + 1) = v25 + 1;
          }

          v83 = *(this + 26);
          if (v83 == *(this + 27))
          {
            wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 24, v83 + 1);
            v83 = *(this + 26);
          }

          v84 = v157;
          v85 = *(this + 12);
          *(this + 26) = v83 + 1;
          *(v85 + 4 * v83) = v84;
          v86 = *(this + 27) - *(this + 26);
          if (v86 >= 1)
          {
            v87 = v86 + 1;
            do
            {
              v88 = *(a2 + 1);
              v89 = *(a2 + 2);
              if (v88 >= v89 || *v88 != 56)
              {
                break;
              }

              *(a2 + 1) = v88 + 1;
              if ((v88 + 1) >= v89 || v88[1] < 0)
              {
                if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v157))
                {
                  return 0;
                }
              }

              else
              {
                v157 = v88[1];
                *(a2 + 1) = v88 + 2;
              }

              v90 = *(this + 26);
              if (v90 >= *(this + 27))
              {
                wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v158);
                v90 = *(this + 26);
              }

              v91 = v157;
              v92 = *(this + 12);
              *(this + 26) = v90 + 1;
              *(v92 + 4 * v90) = v91;
              --v87;
            }

            while (v87 > 1);
          }

LABEL_208:
          v11 = *(a2 + 1);
          v8 = *(a2 + 2);
          if (v11 >= v8)
          {
            goto LABEL_1;
          }

          v93 = *v11;
          if (v93 == 64)
          {
            goto LABEL_212;
          }

          if (v93 != 56)
          {
            goto LABEL_1;
          }

LABEL_190:
          v25 = (v11 + 1);
          *(a2 + 1) = v25;
        }

      case 8u:
        if ((TagFallback & 7) != 0)
        {
          if (v7 == 2)
          {
            result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadPackedPrimitiveNoInline<unsigned int,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)13>(a2, this + 14);
            if (!result)
            {
              return result;
            }

            goto LABEL_230;
          }

          goto LABEL_61;
        }

        v22 = *(a2 + 1);
        v8 = *(a2 + 2);
        while (1)
        {
          v157 = 0;
          if (v22 >= v8 || *v22 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v157))
            {
              return 0;
            }
          }

          else
          {
            v157 = *v22;
            *(a2 + 1) = v22 + 1;
          }

          v94 = *(this + 30);
          if (v94 == *(this + 31))
          {
            wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 28, v94 + 1);
            v94 = *(this + 30);
          }

          v95 = v157;
          v96 = *(this + 14);
          *(this + 30) = v94 + 1;
          *(v96 + 4 * v94) = v95;
          v97 = *(this + 31) - *(this + 30);
          if (v97 >= 1)
          {
            v98 = v97 + 1;
            do
            {
              v99 = *(a2 + 1);
              v100 = *(a2 + 2);
              if (v99 >= v100 || *v99 != 64)
              {
                break;
              }

              *(a2 + 1) = v99 + 1;
              if ((v99 + 1) >= v100 || v99[1] < 0)
              {
                if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v157))
                {
                  return 0;
                }
              }

              else
              {
                v157 = v99[1];
                *(a2 + 1) = v99 + 2;
              }

              v101 = *(this + 30);
              if (v101 >= *(this + 31))
              {
                wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v158);
                v101 = *(this + 30);
              }

              v102 = v157;
              v103 = *(this + 14);
              *(this + 30) = v101 + 1;
              *(v103 + 4 * v101) = v102;
              --v98;
            }

            while (v98 > 1);
          }

LABEL_230:
          v11 = *(a2 + 1);
          v8 = *(a2 + 2);
          if (v11 >= v8)
          {
            goto LABEL_1;
          }

          v104 = *v11;
          if (v104 == 72)
          {
            goto LABEL_234;
          }

          if (v104 != 64)
          {
            goto LABEL_1;
          }

LABEL_212:
          v22 = (v11 + 1);
          *(a2 + 1) = v22;
        }

      case 9u:
        if ((TagFallback & 7) != 0)
        {
          if (v7 == 2)
          {
            result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadPackedPrimitiveNoInline<unsigned int,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)13>(a2, this + 16);
            if (!result)
            {
              return result;
            }

            goto LABEL_252;
          }

          goto LABEL_61;
        }

        v27 = *(a2 + 1);
        v8 = *(a2 + 2);
        while (1)
        {
          v157 = 0;
          if (v27 >= v8 || *v27 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v157))
            {
              return 0;
            }
          }

          else
          {
            v157 = *v27;
            *(a2 + 1) = v27 + 1;
          }

          v105 = *(this + 34);
          if (v105 == *(this + 35))
          {
            wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 32, v105 + 1);
            v105 = *(this + 34);
          }

          v106 = v157;
          v107 = *(this + 16);
          *(this + 34) = v105 + 1;
          *(v107 + 4 * v105) = v106;
          v108 = *(this + 35) - *(this + 34);
          if (v108 >= 1)
          {
            v109 = v108 + 1;
            do
            {
              v110 = *(a2 + 1);
              v111 = *(a2 + 2);
              if (v110 >= v111 || *v110 != 72)
              {
                break;
              }

              *(a2 + 1) = v110 + 1;
              if ((v110 + 1) >= v111 || v110[1] < 0)
              {
                if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v157))
                {
                  return 0;
                }
              }

              else
              {
                v157 = v110[1];
                *(a2 + 1) = v110 + 2;
              }

              v112 = *(this + 34);
              if (v112 >= *(this + 35))
              {
                wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v158);
                v112 = *(this + 34);
              }

              v113 = v157;
              v114 = *(this + 16);
              *(this + 34) = v112 + 1;
              *(v114 + 4 * v112) = v113;
              --v109;
            }

            while (v109 > 1);
          }

LABEL_252:
          v11 = *(a2 + 1);
          v8 = *(a2 + 2);
          if (v11 >= v8)
          {
            goto LABEL_1;
          }

          v115 = *v11;
          if (v115 == 80)
          {
            goto LABEL_256;
          }

          if (v115 != 72)
          {
            goto LABEL_1;
          }

LABEL_234:
          v27 = (v11 + 1);
          *(a2 + 1) = v27;
        }

      case 0xAu:
        if ((TagFallback & 7) != 0)
        {
          if (v7 == 2)
          {
            result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadPackedPrimitiveNoInline<unsigned int,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)13>(a2, this + 18);
            if (!result)
            {
              return result;
            }

            goto LABEL_274;
          }

          goto LABEL_61;
        }

        v19 = *(a2 + 1);
        v8 = *(a2 + 2);
        while (1)
        {
          v157 = 0;
          if (v19 >= v8 || *v19 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v157))
            {
              return 0;
            }
          }

          else
          {
            v157 = *v19;
            *(a2 + 1) = v19 + 1;
          }

          v116 = *(this + 38);
          if (v116 == *(this + 39))
          {
            wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 36, v116 + 1);
            v116 = *(this + 38);
          }

          v117 = v157;
          v118 = *(this + 18);
          *(this + 38) = v116 + 1;
          *(v118 + 4 * v116) = v117;
          v119 = *(this + 39) - *(this + 38);
          if (v119 >= 1)
          {
            v120 = v119 + 1;
            do
            {
              v121 = *(a2 + 1);
              v122 = *(a2 + 2);
              if (v121 >= v122 || *v121 != 80)
              {
                break;
              }

              *(a2 + 1) = v121 + 1;
              if ((v121 + 1) >= v122 || v121[1] < 0)
              {
                if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v157))
                {
                  return 0;
                }
              }

              else
              {
                v157 = v121[1];
                *(a2 + 1) = v121 + 2;
              }

              v123 = *(this + 38);
              if (v123 >= *(this + 39))
              {
                wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v158);
                v123 = *(this + 38);
              }

              v124 = v157;
              v125 = *(this + 18);
              *(this + 38) = v123 + 1;
              *(v125 + 4 * v123) = v124;
              --v120;
            }

            while (v120 > 1);
          }

LABEL_274:
          v11 = *(a2 + 1);
          v8 = *(a2 + 2);
          if (v11 >= v8)
          {
            goto LABEL_1;
          }

          v126 = *v11;
          if (v126 == 88)
          {
            goto LABEL_278;
          }

          if (v126 != 80)
          {
            goto LABEL_1;
          }

LABEL_256:
          v19 = (v11 + 1);
          *(a2 + 1) = v19;
        }

      case 0xBu:
        if ((TagFallback & 7) != 0)
        {
          if (v7 == 2)
          {
            result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadPackedPrimitiveNoInline<unsigned int,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)13>(a2, this + 20);
            if (!result)
            {
              return result;
            }

            goto LABEL_296;
          }

          goto LABEL_61;
        }

        v26 = *(a2 + 1);
        v8 = *(a2 + 2);
        while (1)
        {
          v157 = 0;
          if (v26 >= v8 || *v26 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v157))
            {
              return 0;
            }
          }

          else
          {
            v157 = *v26;
            *(a2 + 1) = v26 + 1;
          }

          v127 = *(this + 42);
          if (v127 == *(this + 43))
          {
            wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 40, v127 + 1);
            v127 = *(this + 42);
          }

          v128 = v157;
          v129 = *(this + 20);
          *(this + 42) = v127 + 1;
          *(v129 + 4 * v127) = v128;
          v130 = *(this + 43) - *(this + 42);
          if (v130 >= 1)
          {
            v131 = v130 + 1;
            do
            {
              v132 = *(a2 + 1);
              v133 = *(a2 + 2);
              if (v132 >= v133 || *v132 != 88)
              {
                break;
              }

              *(a2 + 1) = v132 + 1;
              if ((v132 + 1) >= v133 || v132[1] < 0)
              {
                if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v157))
                {
                  return 0;
                }
              }

              else
              {
                v157 = v132[1];
                *(a2 + 1) = v132 + 2;
              }

              v134 = *(this + 42);
              if (v134 >= *(this + 43))
              {
                wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v158);
                v134 = *(this + 42);
              }

              v135 = v157;
              v136 = *(this + 20);
              *(this + 42) = v134 + 1;
              *(v136 + 4 * v134) = v135;
              --v131;
            }

            while (v131 > 1);
          }

LABEL_296:
          v11 = *(a2 + 1);
          v8 = *(a2 + 2);
          if (v11 >= v8)
          {
            goto LABEL_1;
          }

          v137 = *v11;
          if (v137 == 96)
          {
            goto LABEL_300;
          }

          if (v137 != 88)
          {
            goto LABEL_1;
          }

LABEL_278:
          v26 = (v11 + 1);
          *(a2 + 1) = v26;
        }

      case 0xCu:
        if ((TagFallback & 7) == 0)
        {
          v17 = *(a2 + 1);
          v8 = *(a2 + 2);
          while (1)
          {
            v157 = 0;
            if (v17 >= v8 || *v17 < 0)
            {
              if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v157))
              {
                return 0;
              }
            }

            else
            {
              v157 = *v17;
              *(a2 + 1) = v17 + 1;
            }

            v138 = *(this + 46);
            if (v138 == *(this + 47))
            {
              wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 44, v138 + 1);
              v138 = *(this + 46);
            }

            v139 = v157;
            v140 = *(this + 22);
            *(this + 46) = v138 + 1;
            *(v140 + 4 * v138) = v139;
            v141 = *(this + 47) - *(this + 46);
            if (v141 >= 1)
            {
              v142 = v141 + 1;
              do
              {
                v143 = *(a2 + 1);
                v144 = *(a2 + 2);
                if (v143 >= v144 || *v143 != 96)
                {
                  break;
                }

                *(a2 + 1) = v143 + 1;
                if ((v143 + 1) >= v144 || v143[1] < 0)
                {
                  if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v157))
                  {
                    return 0;
                  }
                }

                else
                {
                  v157 = v143[1];
                  *(a2 + 1) = v143 + 2;
                }

                v145 = *(this + 46);
                if (v145 >= *(this + 47))
                {
                  wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                  wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                  wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v158);
                  v145 = *(this + 46);
                }

                v146 = v157;
                v147 = *(this + 22);
                *(this + 46) = v145 + 1;
                *(v147 + 4 * v145) = v146;
                --v142;
              }

              while (v142 > 1);
            }

LABEL_318:
            v11 = *(a2 + 1);
            v8 = *(a2 + 2);
            if (v11 >= v8)
            {
              goto LABEL_1;
            }

            v148 = *v11;
            if (v148 == 104)
            {
              v14 = (v11 + 1);
              *(a2 + 1) = v14;
LABEL_323:
              if (v14 >= v8 || (v149 = *v14, v149 < 0))
              {
                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 48);
                if (!result)
                {
                  return result;
                }

                v150 = *(a2 + 1);
                v8 = *(a2 + 2);
              }

              else
              {
                *(this + 48) = v149;
                v150 = v14 + 1;
                *(a2 + 1) = v150;
              }

              *(this + 53) |= 0x1000u;
              if (v150 < v8 && *v150 == 112)
              {
                v16 = v150 + 1;
                *(a2 + 1) = v16;
LABEL_331:
                if (v16 >= v8 || (v151 = *v16, v151 < 0))
                {
                  result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 49);
                  if (!result)
                  {
                    return result;
                  }

                  v152 = *(a2 + 1);
                  v8 = *(a2 + 2);
                }

                else
                {
                  *(this + 49) = v151;
                  v152 = v16 + 1;
                  *(a2 + 1) = v152;
                }

                *(this + 53) |= 0x2000u;
                if (v152 < v8 && *v152 == 120)
                {
                  v12 = v152 + 1;
                  *(a2 + 1) = v12;
LABEL_339:
                  if (v12 >= v8 || (v153 = *v12, v153 < 0))
                  {
                    result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 50);
                    if (!result)
                    {
                      return result;
                    }

                    v154 = *(a2 + 1);
                    v8 = *(a2 + 2);
                  }

                  else
                  {
                    *(this + 50) = v153;
                    v154 = (v12 + 1);
                    *(a2 + 1) = v154;
                  }

                  *(this + 53) |= 0x4000u;
                  if (v8 - v154 >= 2 && *v154 == 128 && v154[1] == 1)
                  {
                    v15 = (v154 + 2);
                    *(a2 + 1) = v15;
LABEL_348:
                    if (v15 >= v8 || (v155 = *v15, v155 < 0))
                    {
                      result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 51);
                      if (!result)
                      {
                        return result;
                      }

                      v156 = *(a2 + 1);
                      v8 = *(a2 + 2);
                    }

                    else
                    {
                      *(this + 51) = v155;
                      v156 = v15 + 1;
                      *(a2 + 1) = v156;
                    }

                    *(this + 53) |= 0x8000u;
                    if (v156 == v8 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
                    {
                      *(a2 + 8) = 0;
                      result = 1;
                      *(a2 + 36) = 1;
                      return result;
                    }
                  }
                }
              }

              goto LABEL_1;
            }

            if (v148 != 96)
            {
              goto LABEL_1;
            }

LABEL_300:
            v17 = (v11 + 1);
            *(a2 + 1) = v17;
          }
        }

        if (v7 == 2)
        {
          result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadPackedPrimitiveNoInline<unsigned int,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)13>(a2, this + 22);
          if (!result)
          {
            return result;
          }

          goto LABEL_318;
        }

LABEL_61:
        if (v7 != 4)
        {
          if ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(a2, TagFallback) & 1) == 0)
          {
            return 0;
          }

          continue;
        }

        return 1;
      case 0xDu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_61;
        }

        v14 = *(a2 + 1);
        v8 = *(a2 + 2);
        goto LABEL_323;
      case 0xEu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_61;
        }

        v16 = *(a2 + 1);
        v8 = *(a2 + 2);
        goto LABEL_331;
      case 0xFu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_61;
        }

        v12 = *(a2 + 1);
        v8 = *(a2 + 2);
        goto LABEL_339;
      case 0x10u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_61;
        }

        v15 = *(a2 + 1);
        v8 = *(a2 + 2);
        goto LABEL_348;
      default:
        goto LABEL_61;
    }
  }
}

void sub_2963A0218(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t awd::metrics::BluetoothACIAudioLinkInfo::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  if (*(this + 212))
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

  if (*(v5 + 72) >= 1)
  {
    v9 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(5, *(*(v5 + 64) + 4 * v9++), a2, a4);
    }

    while (v9 < *(v5 + 72));
  }

  if (*(v5 + 88) >= 1)
  {
    v10 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(6, *(*(v5 + 80) + 4 * v10++), a2, a4);
    }

    while (v10 < *(v5 + 88));
  }

  if (*(v5 + 104) >= 1)
  {
    v11 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(7, *(*(v5 + 96) + 4 * v11++), a2, a4);
    }

    while (v11 < *(v5 + 104));
  }

  if (*(v5 + 120) >= 1)
  {
    v12 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(8, *(*(v5 + 112) + 4 * v12++), a2, a4);
    }

    while (v12 < *(v5 + 120));
  }

  if (*(v5 + 136) >= 1)
  {
    v13 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(9, *(*(v5 + 128) + 4 * v13++), a2, a4);
    }

    while (v13 < *(v5 + 136));
  }

  if (*(v5 + 152) >= 1)
  {
    v14 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xA, *(*(v5 + 144) + 4 * v14++), a2, a4);
    }

    while (v14 < *(v5 + 152));
  }

  if (*(v5 + 168) >= 1)
  {
    v15 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xB, *(*(v5 + 160) + 4 * v15++), a2, a4);
    }

    while (v15 < *(v5 + 168));
  }

  if (*(v5 + 184) >= 1)
  {
    v16 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xC, *(*(v5 + 176) + 4 * v16++), a2, a4);
    }

    while (v16 < *(v5 + 184));
  }

  v17 = *(v5 + 212);
  if ((v17 & 0x1000) != 0)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xD, *(v5 + 192), a2, a4);
    v17 = *(v5 + 212);
    if ((v17 & 0x2000) == 0)
    {
LABEL_38:
      if ((v17 & 0x4000) == 0)
      {
        goto LABEL_39;
      }

LABEL_43:
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xF, *(v5 + 200), a2, a4);
      if ((*(v5 + 212) & 0x8000) == 0)
      {
        return this;
      }

      goto LABEL_44;
    }
  }

  else if ((v17 & 0x2000) == 0)
  {
    goto LABEL_38;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xE, *(v5 + 196), a2, a4);
  v17 = *(v5 + 212);
  if ((v17 & 0x4000) != 0)
  {
    goto LABEL_43;
  }

LABEL_39:
  if ((v17 & 0x8000) == 0)
  {
    return this;
  }

LABEL_44:
  v18 = *(v5 + 204);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x10, v18, a2, a4);
}

uint64_t awd::metrics::BluetoothACIAudioLinkInfo::ByteSize(awd::metrics::BluetoothACIAudioLinkInfo *this, unint64_t a2)
{
  v3 = *(this + 53);
  if (v3)
  {
    v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 1)) + 1;
    v3 = *(this + 53);
  }

  else
  {
    v4 = 0;
  }

  if ((v3 & 0xFF000) == 0)
  {
    goto LABEL_26;
  }

  if ((v3 & 0x1000) != 0)
  {
    v5 = *(this + 48);
    if (v5 >= 0x80)
    {
      v6 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5) + 1;
      v3 = *(this + 53);
    }

    else
    {
      v6 = 2;
    }

    v4 += v6;
    if ((v3 & 0x2000) == 0)
    {
LABEL_7:
      if ((v3 & 0x4000) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_18;
    }
  }

  else if ((v3 & 0x2000) == 0)
  {
    goto LABEL_7;
  }

  v7 = *(this + 49);
  if (v7 >= 0x80)
  {
    v8 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v7) + 1;
    v3 = *(this + 53);
  }

  else
  {
    v8 = 2;
  }

  v4 += v8;
  if ((v3 & 0x4000) == 0)
  {
LABEL_8:
    if ((v3 & 0x8000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_22;
  }

LABEL_18:
  v9 = *(this + 50);
  if (v9 >= 0x80)
  {
    v10 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v9) + 1;
    v3 = *(this + 53);
  }

  else
  {
    v10 = 2;
  }

  v4 += v10;
  if ((v3 & 0x8000) != 0)
  {
LABEL_22:
    v11 = *(this + 51);
    if (v11 >= 0x80)
    {
      v12 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v11) + 2;
    }

    else
    {
      v12 = 3;
    }

    v4 += v12;
  }

LABEL_26:
  v82 = v4;
  v13 = *(this + 6);
  if (v13 < 1)
  {
    v15 = 0;
  }

  else
  {
    v14 = 0;
    v15 = 0;
    do
    {
      v16 = *(*(this + 2) + 4 * v14);
      if (v16 >= 0x80)
      {
        v17 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v16);
        v13 = *(this + 6);
      }

      else
      {
        v17 = 1;
      }

      v15 += v17;
      ++v14;
    }

    while (v14 < v13);
  }

  v18 = *(this + 10);
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
      v21 = *(*(this + 4) + 4 * v19);
      if (v21 >= 0x80)
      {
        v22 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v21);
        v18 = *(this + 10);
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

  v23 = *(this + 14);
  if (v23 < 1)
  {
    v25 = 0;
  }

  else
  {
    v24 = 0;
    v25 = 0;
    do
    {
      v26 = *(*(this + 6) + 4 * v24);
      if (v26 >= 0x80)
      {
        v27 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v26);
        v23 = *(this + 14);
      }

      else
      {
        v27 = 1;
      }

      v25 += v27;
      ++v24;
    }

    while (v24 < v23);
  }

  v28 = *(this + 18);
  if (v28 < 1)
  {
    v30 = 0;
  }

  else
  {
    v29 = 0;
    v30 = 0;
    do
    {
      v31 = *(*(this + 8) + 4 * v29);
      if (v31 >= 0x80)
      {
        v32 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v31);
        v28 = *(this + 18);
      }

      else
      {
        v32 = 1;
      }

      v30 += v32;
      ++v29;
    }

    while (v29 < v28);
  }

  v81 = v13;
  v33 = *(this + 22);
  if (v33 < 1)
  {
    v35 = 0;
  }

  else
  {
    v34 = 0;
    v35 = 0;
    do
    {
      v36 = *(*(this + 10) + 4 * v34);
      if (v36 >= 0x80)
      {
        v37 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v36);
        v33 = *(this + 22);
      }

      else
      {
        v37 = 1;
      }

      v35 += v37;
      ++v34;
    }

    while (v34 < v33);
  }

  v74 = v33;
  v77 = v23;
  v38 = *(this + 26);
  if (v38 < 1)
  {
    v40 = 0;
  }

  else
  {
    v39 = 0;
    v40 = 0;
    do
    {
      v41 = *(*(this + 12) + 4 * v39);
      if (v41 >= 0x80)
      {
        v42 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v41);
        v38 = *(this + 26);
      }

      else
      {
        v42 = 1;
      }

      v40 += v42;
      ++v39;
    }

    while (v39 < v38);
  }

  v73 = v38;
  v80 = v15;
  v43 = *(this + 30);
  if (v43 < 1)
  {
    v45 = 0;
  }

  else
  {
    v44 = 0;
    v45 = 0;
    do
    {
      v46 = *(*(this + 14) + 4 * v44);
      if (v46 >= 0x80)
      {
        v47 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v46);
        v43 = *(this + 30);
      }

      else
      {
        v47 = 1;
      }

      v45 += v47;
      ++v44;
    }

    while (v44 < v43);
  }

  v72 = v43;
  v75 = v28;
  v48 = *(this + 34);
  if (v48 < 1)
  {
    v50 = 0;
  }

  else
  {
    v49 = 0;
    v50 = 0;
    do
    {
      v51 = *(*(this + 16) + 4 * v49);
      if (v51 >= 0x80)
      {
        v52 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v51);
        v48 = *(this + 34);
      }

      else
      {
        v52 = 1;
      }

      v50 += v52;
      ++v49;
    }

    while (v49 < v48);
  }

  v71 = v48;
  v79 = v18;
  v53 = *(this + 38);
  if (v53 < 1)
  {
    v55 = 0;
  }

  else
  {
    v54 = 0;
    v55 = 0;
    do
    {
      v56 = *(*(this + 18) + 4 * v54);
      if (v56 >= 0x80)
      {
        v57 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v56);
        v53 = *(this + 38);
      }

      else
      {
        v57 = 1;
      }

      v55 += v57;
      ++v54;
    }

    while (v54 < v53);
  }

  v70 = v53;
  v78 = v20;
  v58 = *(this + 42);
  if (v58 < 1)
  {
    v60 = 0;
  }

  else
  {
    v59 = 0;
    v60 = 0;
    do
    {
      v61 = *(*(this + 20) + 4 * v59);
      if (v61 >= 0x80)
      {
        v62 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v61);
        v58 = *(this + 42);
      }

      else
      {
        v62 = 1;
      }

      v60 += v62;
      ++v59;
    }

    while (v59 < v58);
  }

  v76 = v25;
  v63 = *(this + 46);
  v69 = v58;
  if (v63 < 1)
  {
    v65 = 0;
  }

  else
  {
    v64 = 0;
    v65 = 0;
    do
    {
      v66 = *(*(this + 22) + 4 * v64);
      if (v66 >= 0x80)
      {
        v67 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v66);
        v63 = *(this + 46);
      }

      else
      {
        v67 = 1;
      }

      v65 += v67;
      ++v64;
    }

    while (v64 < v63);
  }

  result = (v80 + v82 + v81 + v78 + v79 + v76 + v77 + v30 + v75 + v35 + v74 + v40 + v73 + v45 + v72 + v50 + v71 + v55 + v70 + v60 + v69 + v65 + v63);
  *(this + 52) = result;
  return result;
}

void awd::metrics::BluetoothACIAudioLinkInfo::CheckTypeAndMergeFrom(awd::metrics::BluetoothACIAudioLinkInfo *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  {
    awd::metrics::BluetoothACIAudioLinkInfo::CheckTypeAndMergeFrom();
  }

  awd::metrics::BluetoothACIAudioLinkInfo::MergeFrom(this, lpsrc);
}

void awd::metrics::BluetoothACIAudioLinkInfo::CopyFrom(awd::metrics::BluetoothACIAudioLinkInfo *this, const awd::metrics::BluetoothACIAudioLinkInfo *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    awd::metrics::BluetoothACIAudioLinkInfo::MergeFrom(this, a2);
  }
}

double awd::metrics::BluetoothACIAudioLinkInfo::Swap(awd::metrics::BluetoothACIAudioLinkInfo *this, awd::metrics::BluetoothACIAudioLinkInfo *a2)
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
    v20 = *(a2 + 13);
    *(a2 + 12) = v19;
    v21 = *(this + 13);
    *(this + 13) = v20;
    *(a2 + 13) = v21;
    v22 = *(this + 14);
    *(this + 14) = *(a2 + 14);
    v23 = *(a2 + 15);
    *(a2 + 14) = v22;
    v24 = *(this + 15);
    *(this + 15) = v23;
    *(a2 + 15) = v24;
    v25 = *(this + 16);
    *(this + 16) = *(a2 + 16);
    v26 = *(a2 + 17);
    *(a2 + 16) = v25;
    v27 = *(this + 17);
    *(this + 17) = v26;
    *(a2 + 17) = v27;
    v28 = *(this + 18);
    *(this + 18) = *(a2 + 18);
    v29 = *(a2 + 19);
    *(a2 + 18) = v28;
    v30 = *(this + 19);
    *(this + 19) = v29;
    *(a2 + 19) = v30;
    v31 = *(this + 20);
    *(this + 20) = *(a2 + 20);
    v32 = *(a2 + 21);
    *(a2 + 20) = v31;
    v33 = *(this + 21);
    *(this + 21) = v32;
    *(a2 + 21) = v33;
    v34 = *(this + 22);
    *(this + 22) = *(a2 + 22);
    result = *(a2 + 23);
    *(a2 + 22) = v34;
    v36 = *(this + 23);
    *(this + 23) = result;
    *(a2 + 23) = v36;
    LODWORD(v34) = *(this + 48);
    *(this + 48) = *(a2 + 48);
    *(a2 + 48) = v34;
    LODWORD(v34) = *(this + 49);
    *(this + 49) = *(a2 + 49);
    *(a2 + 49) = v34;
    LODWORD(v34) = *(this + 50);
    *(this + 50) = *(a2 + 50);
    *(a2 + 50) = v34;
    LODWORD(v34) = *(this + 51);
    *(this + 51) = *(a2 + 51);
    *(a2 + 51) = v34;
    LODWORD(v34) = *(this + 53);
    *(this + 53) = *(a2 + 53);
    *(a2 + 53) = v34;
    LODWORD(v34) = *(this + 52);
    *(this + 52) = *(a2 + 52);
    *(a2 + 52) = v34;
  }

  return result;
}

uint64_t awd::metrics::BluetoothACIMagnetLinkInfo::SharedCtor(uint64_t this)
{
  *(this + 112) = 0;
  *(this + 120) = 0;
  *(this + 16) = 0;
  *(this + 24) = 0;
  *(this + 8) = 0;
  return this;
}

awd::metrics::BluetoothACIMagnetLinkInfo *awd::metrics::BluetoothACIMagnetLinkInfo::BluetoothACIMagnetLinkInfo(awd::metrics::BluetoothACIMagnetLinkInfo *this, const awd::metrics::BluetoothACIMagnetLinkInfo *a2)
{
  *this = &unk_2A1D4BD78;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 88) = 0u;
  *(this + 104) = 0u;
  *(this + 30) = 0;
  awd::metrics::BluetoothACIMagnetLinkInfo::MergeFrom(this, a2);
  return this;
}

void sub_2963A0E9C(_Unwind_Exception *a1)
{
  v3 = v1[12];
  if (v3)
  {
    MEMORY[0x29C259EE0](v3, 0x1000C8052888210);
  }

  awd::metrics::BluetoothACIMagnetLinkInfo::BluetoothACIMagnetLinkInfo((v1 + 10), v1 + 8, v1 + 6, v1 + 4);
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(v1);
  _Unwind_Resume(a1);
}

void awd::metrics::BluetoothACIMagnetLinkInfo::MergeFrom(awd::metrics::BluetoothACIMagnetLinkInfo *this, const awd::metrics::BluetoothACIMagnetLinkInfo *a2)
{
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
    wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 8, *(this + 10) + v4);
    memcpy((*(this + 4) + 4 * *(this + 10)), *(a2 + 4), 4 * *(a2 + 10));
    *(this + 10) += *(a2 + 10);
  }

  v5 = *(a2 + 14);
  if (v5)
  {
    wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 12, *(this + 14) + v5);
    memcpy((*(this + 6) + 4 * *(this + 14)), *(a2 + 6), 4 * *(a2 + 14));
    *(this + 14) += *(a2 + 14);
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

  v8 = *(a2 + 26);
  if (v8)
  {
    wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 24, *(this + 26) + v8);
    memcpy((*(this + 12) + 4 * *(this + 26)), *(a2 + 12), 4 * *(a2 + 26));
    *(this + 26) += *(a2 + 26);
  }

  v9 = *(a2 + 30);
  if (!v9)
  {
    goto LABEL_20;
  }

  if (v9)
  {
    v12 = *(a2 + 1);
    *(this + 30) |= 1u;
    *(this + 1) = v12;
    v9 = *(a2 + 30);
    if ((v9 & 2) == 0)
    {
LABEL_16:
      if ((v9 & 4) == 0)
      {
        goto LABEL_17;
      }

LABEL_25:
      v14 = *(a2 + 5);
      *(this + 30) |= 4u;
      *(this + 5) = v14;
      v9 = *(a2 + 30);
      if ((v9 & 8) == 0)
      {
LABEL_18:
        if ((v9 & 0x10) == 0)
        {
          goto LABEL_20;
        }

        goto LABEL_19;
      }

      goto LABEL_26;
    }
  }

  else if ((v9 & 2) == 0)
  {
    goto LABEL_16;
  }

  v13 = *(a2 + 4);
  *(this + 30) |= 2u;
  *(this + 4) = v13;
  v9 = *(a2 + 30);
  if ((v9 & 4) != 0)
  {
    goto LABEL_25;
  }

LABEL_17:
  if ((v9 & 8) == 0)
  {
    goto LABEL_18;
  }

LABEL_26:
  v15 = *(a2 + 6);
  *(this + 30) |= 8u;
  *(this + 6) = v15;
  v9 = *(a2 + 30);
  if ((v9 & 0x10) != 0)
  {
LABEL_19:
    v10 = *(a2 + 7);
    *(this + 30) |= 0x10u;
    *(this + 7) = v10;
    v9 = *(a2 + 30);
  }

LABEL_20:
  if ((v9 & 0x200) != 0)
  {
    v11 = *(a2 + 28);
    *(this + 30) |= 0x200u;
    *(this + 28) = v11;
  }
}

void sub_2963A1168(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::metrics::BluetoothACIMagnetLinkInfo::~BluetoothACIMagnetLinkInfo(awd::metrics::BluetoothACIMagnetLinkInfo *this)
{
  *this = &unk_2A1D4BD78;
  v2 = *(this + 12);
  if (v2)
  {
    MEMORY[0x29C259EE0](v2, 0x1000C8052888210);
  }

  v3 = *(this + 10);
  if (v3)
  {
    MEMORY[0x29C259EE0](v3, 0x1000C8052888210);
  }

  v4 = *(this + 8);
  if (v4)
  {
    MEMORY[0x29C259EE0](v4, 0x1000C8052888210);
  }

  v5 = *(this + 6);
  if (v5)
  {
    MEMORY[0x29C259EE0](v5, 0x1000C8052888210);
  }

  v6 = *(this + 4);
  if (v6)
  {
    MEMORY[0x29C259EE0](v6, 0x1000C8052888210);
  }

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  awd::metrics::BluetoothACIMagnetLinkInfo::~BluetoothACIMagnetLinkInfo(this);

  JUMPOUT(0x29C259F00);
}

uint64_t awd::metrics::BluetoothACIMagnetLinkInfo::default_instance(awd::metrics::BluetoothACIMagnetLinkInfo *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = awd::metrics::BluetoothACIMagnetLinkInfo::default_instance_;
  if (!awd::metrics::BluetoothACIMagnetLinkInfo::default_instance_)
  {
    awd::metrics::protobuf_AddDesc_Bluetooth_2eproto(0, a2, a3, a4);
    return awd::metrics::BluetoothACIMagnetLinkInfo::default_instance_;
  }

  return result;
}

uint64_t awd::metrics::BluetoothACIMagnetLinkInfo::Clear(uint64_t this)
{
  v1 = *(this + 120);
  if (v1)
  {
    *(this + 8) = 0;
    *(this + 16) = 0;
    *(this + 24) = 0;
  }

  if ((v1 & 0x1FE00) != 0)
  {
    *(this + 112) = 0;
  }

  *(this + 40) = 0;
  *(this + 56) = 0;
  *(this + 72) = 0;
  *(this + 88) = 0;
  *(this + 104) = 0;
  *(this + 120) = 0;
  return this;
}

uint64_t awd::metrics::BluetoothACIMagnetLinkInfo::MergePartialFromCodedStream(awd::metrics::BluetoothACIMagnetLinkInfo *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
{
  while (1)
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
                goto LABEL_52;
              }

              v13 = *(a2 + 1);
              v10 = *(a2 + 2);
              goto LABEL_67;
            }

            if ((TagFallback & 7) != 0)
            {
              goto LABEL_52;
            }

            v14 = *(a2 + 1);
            v10 = *(a2 + 2);
            if (v14 >= v10 || (v15 = *v14, v15 < 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 1);
              if (!result)
              {
                return result;
              }

              v16 = *(a2 + 1);
              v10 = *(a2 + 2);
            }

            else
            {
              *(this + 1) = v15;
              v16 = v14 + 1;
              *(a2 + 1) = v16;
            }

            *(this + 30) |= 1u;
            if (v16 < v10 && *v16 == 16)
            {
              v13 = v16 + 1;
              *(a2 + 1) = v13;
LABEL_67:
              if (v13 >= v10 || (v24 = *v13, v24 < 0))
              {
                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 4);
                if (!result)
                {
                  return result;
                }

                v25 = *(a2 + 1);
                v10 = *(a2 + 2);
              }

              else
              {
                *(this + 4) = v24;
                v25 = v13 + 1;
                *(a2 + 1) = v25;
              }

              *(this + 30) |= 2u;
              if (v25 < v10 && *v25 == 24)
              {
                v18 = v25 + 1;
                *(a2 + 1) = v18;
LABEL_75:
                if (v18 >= v10 || (v26 = *v18, v26 < 0))
                {
                  result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 5);
                  if (!result)
                  {
                    return result;
                  }

                  v27 = *(a2 + 1);
                  v10 = *(a2 + 2);
                }

                else
                {
                  *(this + 5) = v26;
                  v27 = v18 + 1;
                  *(a2 + 1) = v27;
                }

                *(this + 30) |= 4u;
                if (v27 < v10 && *v27 == 32)
                {
                  v17 = v27 + 1;
                  *(a2 + 1) = v17;
LABEL_83:
                  if (v17 >= v10 || (v28 = *v17, v28 < 0))
                  {
                    result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 6);
                    if (!result)
                    {
                      return result;
                    }

                    v29 = *(a2 + 1);
                    v10 = *(a2 + 2);
                  }

                  else
                  {
                    *(this + 6) = v28;
                    v29 = v17 + 1;
                    *(a2 + 1) = v29;
                  }

                  *(this + 30) |= 8u;
                  if (v29 < v10 && *v29 == 40)
                  {
                    v11 = v29 + 1;
                    *(a2 + 1) = v11;
                    goto LABEL_91;
                  }
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
                goto LABEL_52;
              }

              v18 = *(a2 + 1);
              v10 = *(a2 + 2);
              goto LABEL_75;
            }

            if (v7 == 4)
            {
              if ((TagFallback & 7) != 0)
              {
                goto LABEL_52;
              }

              v17 = *(a2 + 1);
              v10 = *(a2 + 2);
              goto LABEL_83;
            }

            if (v7 != 5 || (TagFallback & 7) != 0)
            {
              goto LABEL_52;
            }

            v11 = *(a2 + 1);
            v10 = *(a2 + 2);
LABEL_91:
            if (v11 >= v10 || (v30 = *v11, v30 < 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 7);
              if (!result)
              {
                return result;
              }

              v31 = *(a2 + 1);
              v10 = *(a2 + 2);
            }

            else
            {
              *(this + 7) = v30;
              v31 = (v11 + 1);
              *(a2 + 1) = v31;
            }

            *(this + 30) |= 0x10u;
            if (v31 < v10)
            {
              v32 = *v31;
              while (v32 == 48)
              {
                v22 = (v31 + 1);
                *(a2 + 1) = v22;
LABEL_100:
                v89 = 0;
                if (v22 >= v10 || *v22 < 0)
                {
                  if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v89))
                  {
                    return 0;
                  }
                }

                else
                {
                  v89 = *v22;
                  *(a2 + 1) = v22 + 1;
                }

                v33 = *(this + 26);
                if (v33 == *(this + 27))
                {
                  wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 24, v33 + 1);
                  v33 = *(this + 26);
                }

                v34 = v89;
                v35 = *(this + 12);
                *(this + 26) = v33 + 1;
                *(v35 + 4 * v33) = v34;
                v36 = *(this + 27) - *(this + 26);
                if (v36 >= 1)
                {
                  v37 = v36 + 1;
                  do
                  {
                    v38 = *(a2 + 1);
                    v39 = *(a2 + 2);
                    if (v38 >= v39 || *v38 != 48)
                    {
                      break;
                    }

                    *(a2 + 1) = v38 + 1;
                    if ((v38 + 1) >= v39 || v38[1] < 0)
                    {
                      if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v89))
                      {
                        return 0;
                      }
                    }

                    else
                    {
                      v89 = v38[1];
                      *(a2 + 1) = v38 + 2;
                    }

                    v40 = *(this + 26);
                    if (v40 >= *(this + 27))
                    {
                      wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                      wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                      wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                      wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v90);
                      v40 = *(this + 26);
                    }

                    v41 = v89;
                    v42 = *(this + 12);
                    *(this + 26) = v40 + 1;
                    *(v42 + 4 * v40) = v41;
                    --v37;
                  }

                  while (v37 > 1);
                }

LABEL_117:
                v31 = *(a2 + 1);
                v10 = *(a2 + 2);
                if (v31 >= v10)
                {
                  break;
                }

                v32 = *v31;
                if (v32 == 56)
                {
                  while (1)
                  {
                    v19 = (v31 + 1);
                    *(a2 + 1) = v19;
LABEL_120:
                    v89 = 0;
                    if (v19 >= v10 || *v19 < 0)
                    {
                      if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v89))
                      {
                        return 0;
                      }
                    }

                    else
                    {
                      v89 = *v19;
                      *(a2 + 1) = v19 + 1;
                    }

                    v43 = *(this + 10);
                    if (v43 == *(this + 11))
                    {
                      wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 8, v43 + 1);
                      v43 = *(this + 10);
                    }

                    v44 = v89;
                    v45 = *(this + 4);
                    *(this + 10) = v43 + 1;
                    *(v45 + 4 * v43) = v44;
                    v46 = *(this + 11) - *(this + 10);
                    if (v46 >= 1)
                    {
                      v47 = v46 + 1;
                      do
                      {
                        v48 = *(a2 + 1);
                        v49 = *(a2 + 2);
                        if (v48 >= v49 || *v48 != 56)
                        {
                          break;
                        }

                        *(a2 + 1) = v48 + 1;
                        if ((v48 + 1) >= v49 || v48[1] < 0)
                        {
                          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v89))
                          {
                            return 0;
                          }
                        }

                        else
                        {
                          v89 = v48[1];
                          *(a2 + 1) = v48 + 2;
                        }

                        v50 = *(this + 10);
                        if (v50 >= *(this + 11))
                        {
                          wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                          wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                          wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                          wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v90);
                          v50 = *(this + 10);
                        }

                        v51 = v89;
                        v52 = *(this + 4);
                        *(this + 10) = v50 + 1;
                        *(v52 + 4 * v50) = v51;
                        --v47;
                      }

                      while (v47 > 1);
                    }

LABEL_137:
                    v31 = *(a2 + 1);
                    v10 = *(a2 + 2);
                    if (v31 >= v10)
                    {
                      goto LABEL_1;
                    }

                    v53 = *v31;
                    if (v53 == 64)
                    {
                      do
                      {
                        v21 = (v31 + 1);
                        *(a2 + 1) = v21;
LABEL_142:
                        v89 = 0;
                        if (v21 >= v10 || *v21 < 0)
                        {
                          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v89))
                          {
                            return 0;
                          }
                        }

                        else
                        {
                          v89 = *v21;
                          *(a2 + 1) = v21 + 1;
                        }

                        v54 = *(this + 14);
                        if (v54 == *(this + 15))
                        {
                          wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 12, v54 + 1);
                          v54 = *(this + 14);
                        }

                        v55 = v89;
                        v56 = *(this + 6);
                        *(this + 14) = v54 + 1;
                        *(v56 + 4 * v54) = v55;
                        v57 = *(this + 15) - *(this + 14);
                        if (v57 >= 1)
                        {
                          v58 = v57 + 1;
                          do
                          {
                            v59 = *(a2 + 1);
                            v60 = *(a2 + 2);
                            if (v59 >= v60 || *v59 != 64)
                            {
                              break;
                            }

                            *(a2 + 1) = v59 + 1;
                            if ((v59 + 1) >= v60 || v59[1] < 0)
                            {
                              if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v89))
                              {
                                return 0;
                              }
                            }

                            else
                            {
                              v89 = v59[1];
                              *(a2 + 1) = v59 + 2;
                            }

                            v61 = *(this + 14);
                            if (v61 >= *(this + 15))
                            {
                              wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                              wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                              wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                              wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v90);
                              v61 = *(this + 14);
                            }

                            v62 = v89;
                            v63 = *(this + 6);
                            *(this + 14) = v61 + 1;
                            *(v63 + 4 * v61) = v62;
                            --v58;
                          }

                          while (v58 > 1);
                        }

LABEL_159:
                        v31 = *(a2 + 1);
                        v10 = *(a2 + 2);
                        if (v31 >= v10)
                        {
                          break;
                        }

                        v64 = *v31;
                        if (v64 == 72)
                        {
                          goto LABEL_163;
                        }
                      }

                      while (v64 == 64);
                      goto LABEL_1;
                    }

                    if (v53 != 56)
                    {
                      goto LABEL_1;
                    }
                  }
                }
              }
            }
          }
        }

        if (TagFallback >> 3 <= 8)
        {
          switch(v7)
          {
            case 6u:
              if ((TagFallback & 7) == 0)
              {
                v22 = *(a2 + 1);
                v10 = *(a2 + 2);
                goto LABEL_100;
              }

              if (v8 == 2)
              {
                result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadPackedPrimitiveNoInline<unsigned int,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)13>(a2, this + 12);
                if (!result)
                {
                  return result;
                }

                goto LABEL_117;
              }

              break;
            case 7u:
              if ((TagFallback & 7) == 0)
              {
                v19 = *(a2 + 1);
                v10 = *(a2 + 2);
                goto LABEL_120;
              }

              if (v8 == 2)
              {
                result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadPackedPrimitiveNoInline<unsigned int,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)13>(a2, this + 4);
                if (!result)
                {
                  return result;
                }

                goto LABEL_137;
              }

              break;
            case 8u:
              if ((TagFallback & 7) == 0)
              {
                v21 = *(a2 + 1);
                v10 = *(a2 + 2);
                goto LABEL_142;
              }

              if (v8 == 2)
              {
                result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadPackedPrimitiveNoInline<unsigned int,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)13>(a2, this + 6);
                if (!result)
                {
                  return result;
                }

                goto LABEL_159;
              }

              break;
          }

          goto LABEL_52;
        }

        if (v7 == 9)
        {
          break;
        }

        if (v7 == 10)
        {
          if ((TagFallback & 7) == 0)
          {
            v20 = *(a2 + 1);
            v10 = *(a2 + 2);
            goto LABEL_186;
          }

          if (v8 == 2)
          {
            result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadPackedPrimitiveNoInline<unsigned int,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)13>(a2, this + 10);
            if (!result)
            {
              return result;
            }

            goto LABEL_203;
          }

          goto LABEL_52;
        }

        if (v7 != 11 || (TagFallback & 7) != 0)
        {
          goto LABEL_52;
        }

        v12 = *(a2 + 1);
        v10 = *(a2 + 2);
LABEL_208:
        if (v12 >= v10 || (v87 = *v12, v87 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 28);
          if (!result)
          {
            return result;
          }

          v88 = *(a2 + 1);
          v10 = *(a2 + 2);
        }

        else
        {
          *(this + 28) = v87;
          v88 = v12 + 1;
          *(a2 + 1) = v88;
        }

        *(this + 30) |= 0x200u;
        if (v88 == v10 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
        {
          *(a2 + 8) = 0;
          result = 1;
          *(a2 + 36) = 1;
          return result;
        }
      }

      if ((TagFallback & 7) != 0)
      {
        break;
      }

      v23 = *(a2 + 1);
      v10 = *(a2 + 2);
      while (1)
      {
        v89 = 0;
        if (v23 >= v10 || *v23 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v89))
          {
            return 0;
          }
        }

        else
        {
          v89 = *v23;
          *(a2 + 1) = v23 + 1;
        }

        v65 = *(this + 18);
        if (v65 == *(this + 19))
        {
          wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 16, v65 + 1);
          v65 = *(this + 18);
        }

        v66 = v89;
        v67 = *(this + 8);
        *(this + 18) = v65 + 1;
        *(v67 + 4 * v65) = v66;
        v68 = *(this + 19) - *(this + 18);
        if (v68 >= 1)
        {
          v69 = v68 + 1;
          do
          {
            v70 = *(a2 + 1);
            v71 = *(a2 + 2);
            if (v70 >= v71 || *v70 != 72)
            {
              break;
            }

            *(a2 + 1) = v70 + 1;
            if ((v70 + 1) >= v71 || v70[1] < 0)
            {
              if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v89))
              {
                return 0;
              }
            }

            else
            {
              v89 = v70[1];
              *(a2 + 1) = v70 + 2;
            }

            v72 = *(this + 18);
            if (v72 >= *(this + 19))
            {
              wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
              wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
              wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
              wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v90);
              v72 = *(this + 18);
            }

            v73 = v89;
            v74 = *(this + 8);
            *(this + 18) = v72 + 1;
            *(v74 + 4 * v72) = v73;
            --v69;
          }

          while (v69 > 1);
        }

LABEL_181:
        v31 = *(a2 + 1);
        v10 = *(a2 + 2);
        if (v31 >= v10)
        {
          break;
        }

        v75 = *v31;
        if (v75 == 80)
        {
          while (1)
          {
            v20 = (v31 + 1);
            *(a2 + 1) = v20;
LABEL_186:
            v89 = 0;
            if (v20 >= v10 || *v20 < 0)
            {
              if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v89))
              {
                return 0;
              }
            }

            else
            {
              v89 = *v20;
              *(a2 + 1) = v20 + 1;
            }

            v76 = *(this + 22);
            if (v76 == *(this + 23))
            {
              wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 20, v76 + 1);
              v76 = *(this + 22);
            }

            v77 = v89;
            v78 = *(this + 10);
            *(this + 22) = v76 + 1;
            *(v78 + 4 * v76) = v77;
            v79 = *(this + 23) - *(this + 22);
            if (v79 >= 1)
            {
              v80 = v79 + 1;
              do
              {
                v81 = *(a2 + 1);
                v82 = *(a2 + 2);
                if (v81 >= v82 || *v81 != 80)
                {
                  break;
                }

                *(a2 + 1) = v81 + 1;
                if ((v81 + 1) >= v82 || v81[1] < 0)
                {
                  if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v89))
                  {
                    return 0;
                  }
                }

                else
                {
                  v89 = v81[1];
                  *(a2 + 1) = v81 + 2;
                }

                v83 = *(this + 22);
                if (v83 >= *(this + 23))
                {
                  wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                  wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                  wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v90);
                  v83 = *(this + 22);
                }

                v84 = v89;
                v85 = *(this + 10);
                *(this + 22) = v83 + 1;
                *(v85 + 4 * v83) = v84;
                --v80;
              }

              while (v80 > 1);
            }

LABEL_203:
            v31 = *(a2 + 1);
            v10 = *(a2 + 2);
            if (v31 >= v10)
            {
              goto LABEL_1;
            }

            v86 = *v31;
            if (v86 == 88)
            {
              v12 = (v31 + 1);
              *(a2 + 1) = v12;
              goto LABEL_208;
            }

            if (v86 != 80)
            {
              goto LABEL_1;
            }
          }
        }

        if (v75 != 72)
        {
          goto LABEL_1;
        }

LABEL_163:
        v23 = (v31 + 1);
        *(a2 + 1) = v23;
      }
    }

    if (v8 == 2)
    {
      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadPackedPrimitiveNoInline<unsigned int,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)13>(a2, this + 8);
      if (!result)
      {
        return result;
      }

      goto LABEL_181;
    }

LABEL_52:
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

void sub_2963A1E6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t awd::metrics::BluetoothACIMagnetLinkInfo::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 120);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(1, *(this + 8), a2, a4);
    v6 = *(v5 + 120);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_26;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(2, *(v5 + 16), a2, a4);
  v6 = *(v5 + 120);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_27;
  }

LABEL_26:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(3, *(v5 + 20), a2, a4);
  v6 = *(v5 + 120);
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

LABEL_27:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(4, *(v5 + 24), a2, a4);
  if ((*(v5 + 120) & 0x10) != 0)
  {
LABEL_6:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(5, *(v5 + 28), a2, a4);
  }

LABEL_7:
  if (*(v5 + 104) >= 1)
  {
    v7 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(6, *(*(v5 + 96) + 4 * v7++), a2, a4);
    }

    while (v7 < *(v5 + 104));
  }

  if (*(v5 + 40) >= 1)
  {
    v8 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(7, *(*(v5 + 32) + 4 * v8++), a2, a4);
    }

    while (v8 < *(v5 + 40));
  }

  if (*(v5 + 56) >= 1)
  {
    v9 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(8, *(*(v5 + 48) + 4 * v9++), a2, a4);
    }

    while (v9 < *(v5 + 56));
  }

  if (*(v5 + 72) >= 1)
  {
    v10 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(9, *(*(v5 + 64) + 4 * v10++), a2, a4);
    }

    while (v10 < *(v5 + 72));
  }

  if (*(v5 + 88) >= 1)
  {
    v11 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xA, *(*(v5 + 80) + 4 * v11++), a2, a4);
    }

    while (v11 < *(v5 + 88));
  }

  if ((*(v5 + 121) & 2) != 0)
  {
    v12 = *(v5 + 112);

    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xB, v12, a2, a4);
  }

  return this;
}

uint64_t awd::metrics::BluetoothACIMagnetLinkInfo::ByteSize(awd::metrics::BluetoothACIMagnetLinkInfo *this, unint64_t a2)
{
  v3 = *(this + 30);
  if (!v3)
  {
    v4 = 0;
    if ((v3 & 0x200) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_29;
  }

  if (v3)
  {
    v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 1)) + 1;
    v3 = *(this + 30);
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

  v5 = *(this + 4);
  if (v5 >= 0x80)
  {
    v6 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5) + 1;
    v3 = *(this + 30);
  }

  else
  {
    v6 = 2;
  }

  v4 += v6;
LABEL_12:
  if ((v3 & 4) != 0)
  {
    v7 = *(this + 5);
    if (v7 >= 0x80)
    {
      v8 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v7) + 1;
      v3 = *(this + 30);
    }

    else
    {
      v8 = 2;
    }

    v4 += v8;
    if ((v3 & 8) == 0)
    {
LABEL_14:
      if ((v3 & 0x10) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_25;
    }
  }

  else if ((v3 & 8) == 0)
  {
    goto LABEL_14;
  }

  v9 = *(this + 6);
  if (v9 >= 0x80)
  {
    v10 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v9) + 1;
    v3 = *(this + 30);
  }

  else
  {
    v10 = 2;
  }

  v4 += v10;
  if ((v3 & 0x10) == 0)
  {
LABEL_15:
    if ((v3 & 0x200) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_29;
  }

LABEL_25:
  v11 = *(this + 7);
  if (v11 >= 0x80)
  {
    v12 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v11) + 1;
    v3 = *(this + 30);
  }

  else
  {
    v12 = 2;
  }

  v4 += v12;
  if ((v3 & 0x200) != 0)
  {
LABEL_29:
    v13 = *(this + 28);
    if (v13 >= 0x80)
    {
      v14 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v13) + 1;
    }

    else
    {
      v14 = 2;
    }

    v4 += v14;
  }

LABEL_33:
  v42 = v4;
  v15 = *(this + 10);
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
      v18 = *(*(this + 4) + 4 * v16);
      if (v18 >= 0x80)
      {
        v19 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v18);
        v15 = *(this + 10);
      }

      else
      {
        v19 = 1;
      }

      v17 += v19;
      ++v16;
    }

    while (v16 < v15);
  }

  v20 = *(this + 14);
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
      v23 = *(*(this + 6) + 4 * v21);
      if (v23 >= 0x80)
      {
        v24 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v23);
        v20 = *(this + 14);
      }

      else
      {
        v24 = 1;
      }

      v22 += v24;
      ++v21;
    }

    while (v21 < v20);
  }

  v25 = *(this + 18);
  if (v25 < 1)
  {
    v27 = 0;
  }

  else
  {
    v26 = 0;
    v27 = 0;
    do
    {
      v28 = *(*(this + 8) + 4 * v26);
      if (v28 >= 0x80)
      {
        v29 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v28);
        v25 = *(this + 18);
      }

      else
      {
        v29 = 1;
      }

      v27 += v29;
      ++v26;
    }

    while (v26 < v25);
  }

  v30 = *(this + 22);
  if (v30 < 1)
  {
    v32 = 0;
  }

  else
  {
    v31 = 0;
    v32 = 0;
    do
    {
      v33 = *(*(this + 10) + 4 * v31);
      if (v33 >= 0x80)
      {
        v34 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v33);
        v30 = *(this + 22);
      }

      else
      {
        v34 = 1;
      }

      v32 += v34;
      ++v31;
    }

    while (v31 < v30);
  }

  v41 = v15;
  v35 = *(this + 26);
  if (v35 < 1)
  {
    v37 = 0;
  }

  else
  {
    v36 = 0;
    v37 = 0;
    do
    {
      v38 = *(*(this + 12) + 4 * v36);
      if (v38 >= 0x80)
      {
        v39 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v38);
        v35 = *(this + 26);
      }

      else
      {
        v39 = 1;
      }

      v37 += v39;
      ++v36;
    }

    while (v36 < v35);
  }

  result = (v17 + v42 + v41 + v22 + v20 + v27 + v25 + v32 + v30 + v37 + v35);
  *(this + 29) = result;
  return result;
}

void awd::metrics::BluetoothACIMagnetLinkInfo::CheckTypeAndMergeFrom(awd::metrics::BluetoothACIMagnetLinkInfo *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  {
    awd::metrics::BluetoothACIMagnetLinkInfo::CheckTypeAndMergeFrom();
  }

  awd::metrics::BluetoothACIMagnetLinkInfo::MergeFrom(this, lpsrc);
}

void awd::metrics::BluetoothACIMagnetLinkInfo::CopyFrom(awd::metrics::BluetoothACIMagnetLinkInfo *this, const awd::metrics::BluetoothACIMagnetLinkInfo *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    awd::metrics::BluetoothACIMagnetLinkInfo::MergeFrom(this, a2);
  }
}

double awd::metrics::BluetoothACIMagnetLinkInfo::Swap(awd::metrics::BluetoothACIMagnetLinkInfo *this, awd::metrics::BluetoothACIMagnetLinkInfo *a2)
{
  if (a2 != this)
  {
    v2 = *(this + 1);
    *(this + 1) = *(a2 + 1);
    *(a2 + 1) = v2;
    LODWORD(v2) = *(this + 4);
    *(this + 4) = *(a2 + 4);
    *(a2 + 4) = v2;
    LODWORD(v2) = *(this + 5);
    *(this + 5) = *(a2 + 5);
    *(a2 + 5) = v2;
    LODWORD(v2) = *(this + 6);
    *(this + 6) = *(a2 + 6);
    *(a2 + 6) = v2;
    LODWORD(v2) = *(this + 7);
    *(this + 7) = *(a2 + 7);
    *(a2 + 7) = v2;
    v3 = *(this + 4);
    *(this + 4) = *(a2 + 4);
    v4 = *(a2 + 5);
    *(a2 + 4) = v3;
    v5 = *(this + 5);
    *(this + 5) = v4;
    *(a2 + 5) = v5;
    v6 = *(this + 6);
    *(this + 6) = *(a2 + 6);
    v7 = *(a2 + 7);
    *(a2 + 6) = v6;
    v8 = *(this + 7);
    *(this + 7) = v7;
    *(a2 + 7) = v8;
    v9 = *(this + 8);
    *(this + 8) = *(a2 + 8);
    v10 = *(a2 + 9);
    *(a2 + 8) = v9;
    v11 = *(this + 9);
    *(this + 9) = v10;
    *(a2 + 9) = v11;
    v12 = *(this + 10);
    *(this + 10) = *(a2 + 10);
    v13 = *(a2 + 11);
    *(a2 + 10) = v12;
    v14 = *(this + 11);
    *(this + 11) = v13;
    *(a2 + 11) = v14;
    LODWORD(v12) = *(this + 28);
    *(this + 28) = *(a2 + 28);
    *(a2 + 28) = v12;
    v15 = *(this + 12);
    *(this + 12) = *(a2 + 12);
    result = *(a2 + 13);
    *(a2 + 12) = v15;
    v17 = *(this + 13);
    *(this + 13) = result;
    *(a2 + 13) = v17;
    LODWORD(v15) = *(this + 30);
    *(this + 30) = *(a2 + 30);
    *(a2 + 30) = v15;
    LODWORD(v15) = *(this + 29);
    *(this + 29) = *(a2 + 29);
    *(a2 + 29) = v15;
  }

  return result;
}

uint64_t awd::metrics::BluetoothA2DPLowLatencyLinkInfo::SharedCtor(uint64_t this)
{
  *(this + 112) = 0;
  *(this + 8) = 0;
  return this;
}

awd::metrics::BluetoothA2DPLowLatencyLinkInfo *awd::metrics::BluetoothA2DPLowLatencyLinkInfo::BluetoothA2DPLowLatencyLinkInfo(awd::metrics::BluetoothA2DPLowLatencyLinkInfo *this, const awd::metrics::BluetoothA2DPLowLatencyLinkInfo *a2)
{
  *this = &unk_2A1D4BDF0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 88) = 0u;
  *(this + 104) = 0u;
  awd::metrics::BluetoothA2DPLowLatencyLinkInfo::MergeFrom(this, a2);
  return this;
}

void sub_2963A268C(_Unwind_Exception *a1)
{
  v3 = *(v1 + 12);
  if (v3)
  {
    MEMORY[0x29C259EE0](v3, 0x1000C8052888210);
  }

  v4 = *(v1 + 10);
  if (v4)
  {
    MEMORY[0x29C259EE0](v4, 0x1000C8052888210);
  }

  v5 = *(v1 + 8);
  if (v5)
  {
    MEMORY[0x29C259EE0](v5, 0x1000C8052888210);
  }

  v6 = *(v1 + 6);
  if (v6)
  {
    MEMORY[0x29C259EE0](v6, 0x1000C8052888210);
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

void awd::metrics::BluetoothA2DPLowLatencyLinkInfo::MergeFrom(awd::metrics::BluetoothA2DPLowLatencyLinkInfo *this, const awd::metrics::BluetoothA2DPLowLatencyLinkInfo *a2)
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
    wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 12, *(this + 14) + v6);
    memcpy((*(this + 6) + 4 * *(this + 14)), *(a2 + 6), 4 * *(a2 + 14));
    *(this + 14) += *(a2 + 14);
  }

  v7 = *(a2 + 18);
  if (v7)
  {
    wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 16, *(this + 18) + v7);
    memcpy((*(this + 8) + 4 * *(this + 18)), *(a2 + 8), 4 * *(a2 + 18));
    *(this + 18) += *(a2 + 18);
  }

  v8 = *(a2 + 22);
  if (v8)
  {
    wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 20, *(this + 22) + v8);
    memcpy((*(this + 10) + 4 * *(this + 22)), *(a2 + 10), 4 * *(a2 + 22));
    *(this + 22) += *(a2 + 22);
  }

  v9 = *(a2 + 26);
  if (v9)
  {
    wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 24, *(this + 26) + v9);
    memcpy((*(this + 12) + 4 * *(this + 26)), *(a2 + 12), 4 * *(a2 + 26));
    *(this + 26) += *(a2 + 26);
  }

  if (*(a2 + 116))
  {
    v10 = *(a2 + 1);
    *(this + 29) |= 1u;
    *(this + 1) = v10;
  }
}

void sub_2963A2940(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::metrics::BluetoothA2DPLowLatencyLinkInfo::~BluetoothA2DPLowLatencyLinkInfo(awd::metrics::BluetoothA2DPLowLatencyLinkInfo *this)
{
  *this = &unk_2A1D4BDF0;
  v2 = *(this + 12);
  if (v2)
  {
    MEMORY[0x29C259EE0](v2, 0x1000C8052888210);
  }

  v3 = *(this + 10);
  if (v3)
  {
    MEMORY[0x29C259EE0](v3, 0x1000C8052888210);
  }

  v4 = *(this + 8);
  if (v4)
  {
    MEMORY[0x29C259EE0](v4, 0x1000C8052888210);
  }

  v5 = *(this + 6);
  if (v5)
  {
    MEMORY[0x29C259EE0](v5, 0x1000C8052888210);
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
  awd::metrics::BluetoothA2DPLowLatencyLinkInfo::~BluetoothA2DPLowLatencyLinkInfo(this);

  JUMPOUT(0x29C259F00);
}

uint64_t awd::metrics::BluetoothA2DPLowLatencyLinkInfo::default_instance(awd::metrics::BluetoothA2DPLowLatencyLinkInfo *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = awd::metrics::BluetoothA2DPLowLatencyLinkInfo::default_instance_;
  if (!awd::metrics::BluetoothA2DPLowLatencyLinkInfo::default_instance_)
  {
    awd::metrics::protobuf_AddDesc_Bluetooth_2eproto(0, a2, a3, a4);
    return awd::metrics::BluetoothA2DPLowLatencyLinkInfo::default_instance_;
  }

  return result;
}

uint64_t awd::metrics::BluetoothA2DPLowLatencyLinkInfo::Clear(uint64_t this)
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

uint64_t awd::metrics::BluetoothA2DPLowLatencyLinkInfo::MergePartialFromCodedStream(awd::metrics::BluetoothA2DPLowLatencyLinkInfo *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
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
              result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadPackedPrimitiveNoInline<unsigned int,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)13>(a2, this + 6);
              if (!result)
              {
                return result;
              }

              goto LABEL_117;
            }
          }

          else if (v7 == 5)
          {
            if ((TagFallback & 7) == 0)
            {
              v16 = *(a2 + 1);
              v10 = *(a2 + 2);
              goto LABEL_122;
            }

            if (v8 == 2)
            {
              result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadPackedPrimitiveNoInline<unsigned int,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)13>(a2, this + 8);
              if (!result)
              {
                return result;
              }

              goto LABEL_139;
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
              goto LABEL_166;
            }

            if (v8 == 2)
            {
              result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadPackedPrimitiveNoInline<unsigned int,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)13>(a2, this + 12);
              if (!result)
              {
                return result;
              }

              goto LABEL_183;
            }
          }

          goto LABEL_41;
        }

        if ((TagFallback & 7) != 0)
        {
          if (v8 == 2)
          {
            result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadPackedPrimitiveNoInline<unsigned int,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)13>(a2, this + 10);
            if (!result)
            {
              return result;
            }

            goto LABEL_161;
          }

          goto LABEL_41;
        }

        v15 = *(a2 + 1);
        v10 = *(a2 + 2);
        while (1)
        {
          v85 = 0;
          if (v15 >= v10 || *v15 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v85))
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
          if (v64 == *(this + 23))
          {
            wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 20, v64 + 1);
            v64 = *(this + 22);
          }

          v65 = v85;
          v66 = *(this + 10);
          *(this + 22) = v64 + 1;
          *(v66 + 4 * v64) = v65;
          v67 = *(this + 23) - *(this + 22);
          if (v67 >= 1)
          {
            v68 = v67 + 1;
            do
            {
              v69 = *(a2 + 1);
              v70 = *(a2 + 2);
              if (v69 >= v70 || *v69 != 48)
              {
                break;
              }

              *(a2 + 1) = v69 + 1;
              if ((v69 + 1) >= v70 || v69[1] < 0)
              {
                if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v85))
                {
                  return 0;
                }
              }

              else
              {
                v85 = v69[1];
                *(a2 + 1) = v69 + 2;
              }

              v71 = *(this + 22);
              if (v71 >= *(this + 23))
              {
                wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v86);
                v71 = *(this + 22);
              }

              v72 = v85;
              v73 = *(this + 10);
              *(this + 22) = v71 + 1;
              *(v73 + 4 * v71) = v72;
              --v68;
            }

            while (v68 > 1);
          }

LABEL_161:
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
LABEL_166:
              v85 = 0;
              if (v17 >= v10 || *v17 < 0)
              {
                if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v85))
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
              if (v75 == *(this + 27))
              {
                wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 24, v75 + 1);
                v75 = *(this + 26);
              }

              v76 = v85;
              v77 = *(this + 12);
              *(this + 26) = v75 + 1;
              *(v77 + 4 * v75) = v76;
              v78 = *(this + 27) - *(this + 26);
              if (v78 >= 1)
              {
                v79 = v78 + 1;
                do
                {
                  v80 = *(a2 + 1);
                  v81 = *(a2 + 2);
                  if (v80 >= v81 || *v80 != 56)
                  {
                    break;
                  }

                  *(a2 + 1) = v80 + 1;
                  if ((v80 + 1) >= v81 || v80[1] < 0)
                  {
                    if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v85))
                    {
                      return 0;
                    }
                  }

                  else
                  {
                    v85 = v80[1];
                    *(a2 + 1) = v80 + 2;
                  }

                  v82 = *(this + 26);
                  if (v82 >= *(this + 27))
                  {
                    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v86);
                    v82 = *(this + 26);
                  }

                  v83 = v85;
                  v84 = *(this + 12);
                  *(this + 26) = v82 + 1;
                  *(v84 + 4 * v82) = v83;
                  --v79;
                }

                while (v79 > 1);
              }

LABEL_183:
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

LABEL_143:
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
          v85 = 0;
          if (v19 >= v10 || *v19 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v85))
            {
              return 0;
            }
          }

          else
          {
            v85 = *v19;
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
                v85 = v26[1];
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
              v85 = 0;
              if (v18 >= v10 || *v18 < 0)
              {
                if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v85))
                {
                  return 0;
                }
              }

              else
              {
                v85 = *v18;
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
                    v85 = v36[1];
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
                  if (v14 >= v10 || *v14 < 0)
                  {
                    if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v85))
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
                  if (v42 == *(this + 15))
                  {
                    wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 12, v42 + 1);
                    v42 = *(this + 14);
                  }

                  v43 = v85;
                  v44 = *(this + 6);
                  *(this + 14) = v42 + 1;
                  *(v44 + 4 * v42) = v43;
                  v45 = *(this + 15) - *(this + 14);
                  if (v45 >= 1)
                  {
                    v46 = v45 + 1;
                    do
                    {
                      v47 = *(a2 + 1);
                      v48 = *(a2 + 2);
                      if (v47 >= v48 || *v47 != 32)
                      {
                        break;
                      }

                      *(a2 + 1) = v47 + 1;
                      if ((v47 + 1) >= v48 || v47[1] < 0)
                      {
                        if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v85))
                        {
                          return 0;
                        }
                      }

                      else
                      {
                        v85 = v47[1];
                        *(a2 + 1) = v47 + 2;
                      }

                      v49 = *(this + 14);
                      if (v49 >= *(this + 15))
                      {
                        wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                        wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                        wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                        wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v86);
                        v49 = *(this + 14);
                      }

                      v50 = v85;
                      v51 = *(this + 6);
                      *(this + 14) = v49 + 1;
                      *(v51 + 4 * v49) = v50;
                      --v46;
                    }

                    while (v46 > 1);
                  }

LABEL_117:
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
LABEL_122:
                      v85 = 0;
                      if (v16 >= v10 || *v16 < 0)
                      {
                        if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v85))
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
                      if (v53 == *(this + 19))
                      {
                        wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 16, v53 + 1);
                        v53 = *(this + 18);
                      }

                      v54 = v85;
                      v55 = *(this + 8);
                      *(this + 18) = v53 + 1;
                      *(v55 + 4 * v53) = v54;
                      v56 = *(this + 19) - *(this + 18);
                      if (v56 >= 1)
                      {
                        v57 = v56 + 1;
                        do
                        {
                          v58 = *(a2 + 1);
                          v59 = *(a2 + 2);
                          if (v58 >= v59 || *v58 != 40)
                          {
                            break;
                          }

                          *(a2 + 1) = v58 + 1;
                          if ((v58 + 1) >= v59 || v58[1] < 0)
                          {
                            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v85))
                            {
                              return 0;
                            }
                          }

                          else
                          {
                            v85 = v58[1];
                            *(a2 + 1) = v58 + 2;
                          }

                          v60 = *(this + 18);
                          if (v60 >= *(this + 19))
                          {
                            wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                            wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                            wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                            wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v86);
                            v60 = *(this + 18);
                          }

                          v61 = v85;
                          v62 = *(this + 8);
                          *(this + 18) = v60 + 1;
                          *(v62 + 4 * v60) = v61;
                          --v57;
                        }

                        while (v57 > 1);
                      }

LABEL_139:
                      v13 = *(a2 + 1);
                      v10 = *(a2 + 2);
                      if (v13 >= v10)
                      {
                        break;
                      }

                      v63 = *v13;
                      if (v63 == 48)
                      {
                        goto LABEL_143;
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

void sub_2963A3598(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t awd::metrics::BluetoothA2DPLowLatencyLinkInfo::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
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
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(4, *(*(v5 + 48) + 4 * v8++), a2, a4);
    }

    while (v8 < *(v5 + 56));
  }

  if (*(v5 + 72) >= 1)
  {
    v9 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(5, *(*(v5 + 64) + 4 * v9++), a2, a4);
    }

    while (v9 < *(v5 + 72));
  }

  if (*(v5 + 88) >= 1)
  {
    v10 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(6, *(*(v5 + 80) + 4 * v10++), a2, a4);
    }

    while (v10 < *(v5 + 88));
  }

  if (*(v5 + 104) >= 1)
  {
    v11 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(7, *(*(v5 + 96) + 4 * v11++), a2, a4);
    }

    while (v11 < *(v5 + 104));
  }

  return this;
}

uint64_t awd::metrics::BluetoothA2DPLowLatencyLinkInfo::ByteSize(wireless_diagnostics::google::protobuf::io::CodedOutputStream **this, unint64_t a2)
{
  if (*(this + 116))
  {
    v37 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(this[1]) + 1;
  }

  else
  {
    v37 = 0;
  }

  v3 = *(this + 6);
  if (v3 < 1)
  {
    v5 = 0;
  }

  else
  {
    v4 = 0;
    v5 = 0;
    do
    {
      v6 = *(this[2] + v4);
      if (v6 >= 0x80)
      {
        v7 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v6);
        v3 = *(this + 6);
      }

      else
      {
        v7 = 1;
      }

      v5 += v7;
      ++v4;
    }

    while (v4 < v3);
  }

  v8 = *(this + 10);
  if (v8 < 1)
  {
    v10 = 0;
  }

  else
  {
    v9 = 0;
    v10 = 0;
    do
    {
      v11 = *(this[4] + v9);
      if (v11 >= 0x80)
      {
        v12 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v11);
        v8 = *(this + 10);
      }

      else
      {
        v12 = 1;
      }

      v10 += v12;
      ++v9;
    }

    while (v9 < v8);
  }

  v13 = *(this + 14);
  if (v13 < 1)
  {
    v15 = 0;
  }

  else
  {
    v14 = 0;
    v15 = 0;
    do
    {
      v16 = *(this[6] + v14);
      if (v16 >= 0x80)
      {
        v17 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v16);
        v13 = *(this + 14);
      }

      else
      {
        v17 = 1;
      }

      v15 += v17;
      ++v14;
    }

    while (v14 < v13);
  }

  v18 = *(this + 18);
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
      v21 = *(this[8] + v19);
      if (v21 >= 0x80)
      {
        v22 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v21);
        v18 = *(this + 18);
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

  v35 = v8;
  v36 = v3;
  v23 = *(this + 22);
  if (v23 < 1)
  {
    v25 = 0;
  }

  else
  {
    v24 = 0;
    v25 = 0;
    do
    {
      v26 = *(this[10] + v24);
      if (v26 >= 0x80)
      {
        v27 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v26);
        v23 = *(this + 22);
      }

      else
      {
        v27 = 1;
      }

      v25 += v27;
      ++v24;
    }

    while (v24 < v23);
  }

  v34 = v13;
  v28 = *(this + 26);
  if (v28 < 1)
  {
    v30 = 0;
  }

  else
  {
    v29 = 0;
    v30 = 0;
    do
    {
      v31 = *(this[12] + v29);
      if (v31 >= 0x80)
      {
        v32 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v31);
        v28 = *(this + 26);
      }

      else
      {
        v32 = 1;
      }

      v30 += v32;
      ++v29;
    }

    while (v29 < v28);
  }

  result = (v5 + v37 + v36 + v10 + v35 + v15 + v34 + v20 + v18 + v25 + v23 + v30 + v28);
  *(this + 28) = result;
  return result;
}

void awd::metrics::BluetoothA2DPLowLatencyLinkInfo::CheckTypeAndMergeFrom(awd::metrics::BluetoothA2DPLowLatencyLinkInfo *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  {
    awd::metrics::BluetoothA2DPLowLatencyLinkInfo::CheckTypeAndMergeFrom();
  }

  awd::metrics::BluetoothA2DPLowLatencyLinkInfo::MergeFrom(this, lpsrc);
}

void awd::metrics::BluetoothA2DPLowLatencyLinkInfo::CopyFrom(awd::metrics::BluetoothA2DPLowLatencyLinkInfo *this, const awd::metrics::BluetoothA2DPLowLatencyLinkInfo *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    awd::metrics::BluetoothA2DPLowLatencyLinkInfo::MergeFrom(this, a2);
  }
}

double awd::metrics::BluetoothA2DPLowLatencyLinkInfo::Swap(awd::metrics::BluetoothA2DPLowLatencyLinkInfo *this, awd::metrics::BluetoothA2DPLowLatencyLinkInfo *a2)
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

void *awd::metrics::BluetoothACIAudioVoiceLinkInfo1::SharedCtor(void *this)
{
  this[1] = 0;
  this[25] = 0;
  this[26] = 0;
  this[24] = 0;
  return this;
}

awd::metrics::BluetoothACIAudioVoiceLinkInfo1 *awd::metrics::BluetoothACIAudioVoiceLinkInfo1::BluetoothACIAudioVoiceLinkInfo1(awd::metrics::BluetoothACIAudioVoiceLinkInfo1 *this, const awd::metrics::BluetoothACIAudioVoiceLinkInfo1 *a2)
{
  *this = &unk_2A1D4BE68;
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
  awd::metrics::BluetoothACIAudioVoiceLinkInfo1::MergeFrom(this, a2);
  return this;
}

void sub_2963A3CAC(_Unwind_Exception *a1)
{
  v3 = *(v1 + 22);
  if (v3)
  {
    MEMORY[0x29C259EE0](v3, 0x1000C8052888210);
  }

  v4 = *(v1 + 20);
  if (v4)
  {
    MEMORY[0x29C259EE0](v4, 0x1000C8052888210);
  }

  v5 = *(v1 + 18);
  if (v5)
  {
    MEMORY[0x29C259EE0](v5, 0x1000C8052888210);
  }

  v6 = *(v1 + 16);
  if (v6)
  {
    MEMORY[0x29C259EE0](v6, 0x1000C8052888210);
  }

  v7 = *(v1 + 14);
  if (v7)
  {
    MEMORY[0x29C259EE0](v7, 0x1000C8052888210);
  }

  v8 = *(v1 + 12);
  if (v8)
  {
    MEMORY[0x29C259EE0](v8, 0x1000C8052888210);
  }

  v9 = *(v1 + 10);
  if (v9)
  {
    MEMORY[0x29C259EE0](v9, 0x1000C8052888210);
  }

  v10 = *(v1 + 8);
  if (v10)
  {
    MEMORY[0x29C259EE0](v10, 0x1000C8052888210);
  }

  v11 = *(v1 + 6);
  if (v11)
  {
    MEMORY[0x29C259EE0](v11, 0x1000C8052888210);
  }

  v12 = *(v1 + 4);
  if (v12)
  {
    MEMORY[0x29C259EE0](v12, 0x1000C8052888210);
  }

  v13 = *(v1 + 2);
  if (v13)
  {
    MEMORY[0x29C259EE0](v13, 0x1000C8052888210);
  }

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(v1);
  _Unwind_Resume(a1);
}

void awd::metrics::BluetoothACIAudioVoiceLinkInfo1::MergeFrom(awd::metrics::BluetoothACIAudioVoiceLinkInfo1 *this, const awd::metrics::BluetoothACIAudioVoiceLinkInfo1 *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v21);
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

  v7 = *(a2 + 18);
  if (v7)
  {
    wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 16, *(this + 18) + v7);
    memcpy((*(this + 8) + 4 * *(this + 18)), *(a2 + 8), 4 * *(a2 + 18));
    *(this + 18) += *(a2 + 18);
  }

  v8 = *(a2 + 22);
  if (v8)
  {
    wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 20, *(this + 22) + v8);
    memcpy((*(this + 10) + 4 * *(this + 22)), *(a2 + 10), 4 * *(a2 + 22));
    *(this + 22) += *(a2 + 22);
  }

  v9 = *(a2 + 26);
  if (v9)
  {
    wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 24, *(this + 26) + v9);
    memcpy((*(this + 12) + 4 * *(this + 26)), *(a2 + 12), 4 * *(a2 + 26));
    *(this + 26) += *(a2 + 26);
  }

  v10 = *(a2 + 30);
  if (v10)
  {
    wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 28, *(this + 30) + v10);
    memcpy((*(this + 14) + 4 * *(this + 30)), *(a2 + 14), 4 * *(a2 + 30));
    *(this + 30) += *(a2 + 30);
  }

  v11 = *(a2 + 34);
  if (v11)
  {
    wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 32, *(this + 34) + v11);
    memcpy((*(this + 16) + 4 * *(this + 34)), *(a2 + 16), 4 * *(a2 + 34));
    *(this + 34) += *(a2 + 34);
  }

  v12 = *(a2 + 38);
  if (v12)
  {
    wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 36, *(this + 38) + v12);
    memcpy((*(this + 18) + 4 * *(this + 38)), *(a2 + 18), 4 * *(a2 + 38));
    *(this + 38) += *(a2 + 38);
  }

  v13 = *(a2 + 42);
  if (v13)
  {
    wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 40, *(this + 42) + v13);
    memcpy((*(this + 20) + 4 * *(this + 42)), *(a2 + 20), 4 * *(a2 + 42));
    *(this + 42) += *(a2 + 42);
  }

  v14 = *(a2 + 46);
  if (v14)
  {
    wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 44, *(this + 46) + v14);
    memcpy((*(this + 22) + 4 * *(this + 46)), *(a2 + 22), 4 * *(a2 + 46));
    *(this + 46) += *(a2 + 46);
  }

  v15 = *(a2 + 53);
  if (v15)
  {
    v16 = *(a2 + 1);
    *(this + 53) |= 1u;
    *(this + 1) = v16;
    v15 = *(a2 + 53);
  }

  if ((v15 & 0xFF000) != 0)
  {
    if ((v15 & 0x1000) != 0)
    {
      v18 = *(a2 + 48);
      *(this + 53) |= 0x1000u;
      *(this + 48) = v18;
      v15 = *(a2 + 53);
      if ((v15 & 0x2000) == 0)
      {
LABEL_30:
        if ((v15 & 0x4000) == 0)
        {
          goto LABEL_31;
        }

        goto LABEL_36;
      }
    }

    else if ((v15 & 0x2000) == 0)
    {
      goto LABEL_30;
    }

    v19 = *(a2 + 49);
    *(this + 53) |= 0x2000u;
    *(this + 49) = v19;
    v15 = *(a2 + 53);
    if ((v15 & 0x4000) == 0)
    {
LABEL_31:
      if ((v15 & 0x8000) == 0)
      {
        return;
      }

      goto LABEL_32;
    }

LABEL_36:
    v20 = *(a2 + 50);
    *(this + 53) |= 0x4000u;
    *(this + 50) = v20;
    if ((*(a2 + 53) & 0x8000) == 0)
    {
      return;
    }

LABEL_32:
    v17 = *(a2 + 51);
    *(this + 53) |= 0x8000u;
    *(this + 51) = v17;
  }
}

void sub_2963A418C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::metrics::BluetoothACIAudioVoiceLinkInfo1::~BluetoothACIAudioVoiceLinkInfo1(awd::metrics::BluetoothACIAudioVoiceLinkInfo1 *this)
{
  *this = &unk_2A1D4BE68;
  v2 = *(this + 22);
  if (v2)
  {
    MEMORY[0x29C259EE0](v2, 0x1000C8052888210);
  }

  v3 = *(this + 20);
  if (v3)
  {
    MEMORY[0x29C259EE0](v3, 0x1000C8052888210);
  }

  v4 = *(this + 18);
  if (v4)
  {
    MEMORY[0x29C259EE0](v4, 0x1000C8052888210);
  }

  v5 = *(this + 16);
  if (v5)
  {
    MEMORY[0x29C259EE0](v5, 0x1000C8052888210);
  }

  v6 = *(this + 14);
  if (v6)
  {
    MEMORY[0x29C259EE0](v6, 0x1000C8052888210);
  }

  v7 = *(this + 12);
  if (v7)
  {
    MEMORY[0x29C259EE0](v7, 0x1000C8052888210);
  }

  v8 = *(this + 10);
  if (v8)
  {
    MEMORY[0x29C259EE0](v8, 0x1000C8052888210);
  }

  v9 = *(this + 8);
  if (v9)
  {
    MEMORY[0x29C259EE0](v9, 0x1000C8052888210);
  }

  v10 = *(this + 6);
  if (v10)
  {
    MEMORY[0x29C259EE0](v10, 0x1000C8052888210);
  }

  v11 = *(this + 4);
  if (v11)
  {
    MEMORY[0x29C259EE0](v11, 0x1000C8052888210);
  }

  v12 = *(this + 2);
  if (v12)
  {
    MEMORY[0x29C259EE0](v12, 0x1000C8052888210);
  }

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  awd::metrics::BluetoothACIAudioVoiceLinkInfo1::~BluetoothACIAudioVoiceLinkInfo1(this);

  JUMPOUT(0x29C259F00);
}

uint64_t awd::metrics::BluetoothACIAudioVoiceLinkInfo1::default_instance(awd::metrics::BluetoothACIAudioVoiceLinkInfo1 *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = awd::metrics::BluetoothACIAudioVoiceLinkInfo1::default_instance_;
  if (!awd::metrics::BluetoothACIAudioVoiceLinkInfo1::default_instance_)
  {
    awd::metrics::protobuf_AddDesc_Bluetooth_2eproto(0, a2, a3, a4);
    return awd::metrics::BluetoothACIAudioVoiceLinkInfo1::default_instance_;
  }

  return result;
}

uint64_t awd::metrics::BluetoothACIAudioVoiceLinkInfo1::Clear(uint64_t this)
{
  v1 = *(this + 212);
  if (v1)
  {
    *(this + 8) = 0;
  }

  if ((v1 & 0xFF000) != 0)
  {
    *(this + 192) = 0;
    *(this + 200) = 0;
  }

  *(this + 24) = 0;
  *(this + 40) = 0;
  *(this + 56) = 0;
  *(this + 72) = 0;
  *(this + 88) = 0;
  *(this + 104) = 0;
  *(this + 120) = 0;
  *(this + 136) = 0;
  *(this + 152) = 0;
  *(this + 168) = 0;
  *(this + 184) = 0;
  *(this + 212) = 0;
  return this;
}

uint64_t awd::metrics::BluetoothACIAudioVoiceLinkInfo1::MergePartialFromCodedStream(awd::metrics::BluetoothACIAudioVoiceLinkInfo1 *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
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
          goto LABEL_61;
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
          v11 = (v9 + 1);
          *(a2 + 1) = v11;
        }

        *(this + 53) |= 1u;
        if (v11 >= v8)
        {
          continue;
        }

        v28 = *v11;
        goto LABEL_81;
      case 2u:
        if ((TagFallback & 7) != 0)
        {
          if (v7 == 2)
          {
            result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadPackedPrimitiveNoInline<unsigned int,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)13>(a2, this + 2);
            if (!result)
            {
              return result;
            }

            goto LABEL_100;
          }

          goto LABEL_61;
        }

        v23 = *(a2 + 1);
        v8 = *(a2 + 2);
        while (1)
        {
          v157 = 0;
          if (v23 >= v8 || *v23 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v157))
            {
              return 0;
            }
          }

          else
          {
            v157 = *v23;
            *(a2 + 1) = v23 + 1;
          }

          v29 = *(this + 6);
          if (v29 == *(this + 7))
          {
            wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 4, v29 + 1);
            v29 = *(this + 6);
          }

          v30 = v157;
          v31 = *(this + 2);
          *(this + 6) = v29 + 1;
          *(v31 + 4 * v29) = v30;
          v32 = *(this + 7) - *(this + 6);
          if (v32 >= 1)
          {
            v33 = v32 + 1;
            do
            {
              v34 = *(a2 + 1);
              v35 = *(a2 + 2);
              if (v34 >= v35 || *v34 != 16)
              {
                break;
              }

              *(a2 + 1) = v34 + 1;
              if ((v34 + 1) >= v35 || v34[1] < 0)
              {
                if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v157))
                {
                  return 0;
                }
              }

              else
              {
                v157 = v34[1];
                *(a2 + 1) = v34 + 2;
              }

              v36 = *(this + 6);
              if (v36 >= *(this + 7))
              {
                wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v158);
                v36 = *(this + 6);
              }

              v37 = v157;
              v38 = *(this + 2);
              *(this + 6) = v36 + 1;
              *(v38 + 4 * v36) = v37;
              --v33;
            }

            while (v33 > 1);
          }

LABEL_100:
          v11 = *(a2 + 1);
          v8 = *(a2 + 2);
          if (v11 >= v8)
          {
            goto LABEL_1;
          }

          v28 = *v11;
          if (v28 == 24)
          {
            goto LABEL_102;
          }

LABEL_81:
          if (v28 != 16)
          {
            goto LABEL_1;
          }

          v23 = (v11 + 1);
          *(a2 + 1) = v23;
        }

      case 3u:
        if ((TagFallback & 7) != 0)
        {
          if (v7 == 2)
          {
            result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadPackedPrimitiveNoInline<unsigned int,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)13>(a2, this + 4);
            if (!result)
            {
              return result;
            }

            goto LABEL_120;
          }

          goto LABEL_61;
        }

        v20 = *(a2 + 1);
        v8 = *(a2 + 2);
        while (1)
        {
          v157 = 0;
          if (v20 >= v8 || *v20 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v157))
            {
              return 0;
            }
          }

          else
          {
            v157 = *v20;
            *(a2 + 1) = v20 + 1;
          }

          v39 = *(this + 10);
          if (v39 == *(this + 11))
          {
            wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 8, v39 + 1);
            v39 = *(this + 10);
          }

          v40 = v157;
          v41 = *(this + 4);
          *(this + 10) = v39 + 1;
          *(v41 + 4 * v39) = v40;
          v42 = *(this + 11) - *(this + 10);
          if (v42 >= 1)
          {
            v43 = v42 + 1;
            do
            {
              v44 = *(a2 + 1);
              v45 = *(a2 + 2);
              if (v44 >= v45 || *v44 != 24)
              {
                break;
              }

              *(a2 + 1) = v44 + 1;
              if ((v44 + 1) >= v45 || v44[1] < 0)
              {
                if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v157))
                {
                  return 0;
                }
              }

              else
              {
                v157 = v44[1];
                *(a2 + 1) = v44 + 2;
              }

              v46 = *(this + 10);
              if (v46 >= *(this + 11))
              {
                wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v158);
                v46 = *(this + 10);
              }

              v47 = v157;
              v48 = *(this + 4);
              *(this + 10) = v46 + 1;
              *(v48 + 4 * v46) = v47;
              --v43;
            }

            while (v43 > 1);
          }

LABEL_120:
          v11 = *(a2 + 1);
          v8 = *(a2 + 2);
          if (v11 >= v8)
          {
            goto LABEL_1;
          }

          v49 = *v11;
          if (v49 == 32)
          {
            goto LABEL_124;
          }

          if (v49 != 24)
          {
            goto LABEL_1;
          }

LABEL_102:
          v20 = (v11 + 1);
          *(a2 + 1) = v20;
        }

      case 4u:
        if ((TagFallback & 7) != 0)
        {
          if (v7 == 2)
          {
            result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadPackedPrimitiveNoInline<unsigned int,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)13>(a2, this + 6);
            if (!result)
            {
              return result;
            }

            goto LABEL_142;
          }

          goto LABEL_61;
        }

        v21 = *(a2 + 1);
        v8 = *(a2 + 2);
        while (1)
        {
          v157 = 0;
          if (v21 >= v8 || *v21 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v157))
            {
              return 0;
            }
          }

          else
          {
            v157 = *v21;
            *(a2 + 1) = v21 + 1;
          }

          v50 = *(this + 14);
          if (v50 == *(this + 15))
          {
            wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 12, v50 + 1);
            v50 = *(this + 14);
          }

          v51 = v157;
          v52 = *(this + 6);
          *(this + 14) = v50 + 1;
          *(v52 + 4 * v50) = v51;
          v53 = *(this + 15) - *(this + 14);
          if (v53 >= 1)
          {
            v54 = v53 + 1;
            do
            {
              v55 = *(a2 + 1);
              v56 = *(a2 + 2);
              if (v55 >= v56 || *v55 != 32)
              {
                break;
              }

              *(a2 + 1) = v55 + 1;
              if ((v55 + 1) >= v56 || v55[1] < 0)
              {
                if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v157))
                {
                  return 0;
                }
              }

              else
              {
                v157 = v55[1];
                *(a2 + 1) = v55 + 2;
              }

              v57 = *(this + 14);
              if (v57 >= *(this + 15))
              {
                wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v158);
                v57 = *(this + 14);
              }

              v58 = v157;
              v59 = *(this + 6);
              *(this + 14) = v57 + 1;
              *(v59 + 4 * v57) = v58;
              --v54;
            }

            while (v54 > 1);
          }

LABEL_142:
          v11 = *(a2 + 1);
          v8 = *(a2 + 2);
          if (v11 >= v8)
          {
            goto LABEL_1;
          }

          v60 = *v11;
          if (v60 == 40)
          {
            goto LABEL_146;
          }

          if (v60 != 32)
          {
            goto LABEL_1;
          }

LABEL_124:
          v21 = (v11 + 1);
          *(a2 + 1) = v21;
        }

      case 5u:
        if ((TagFallback & 7) != 0)
        {
          if (v7 == 2)
          {
            result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadPackedPrimitiveNoInline<unsigned int,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)13>(a2, this + 8);
            if (!result)
            {
              return result;
            }

            goto LABEL_164;
          }

          goto LABEL_61;
        }

        v18 = *(a2 + 1);
        v8 = *(a2 + 2);
        while (1)
        {
          v157 = 0;
          if (v18 >= v8 || *v18 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v157))
            {
              return 0;
            }
          }

          else
          {
            v157 = *v18;
            *(a2 + 1) = v18 + 1;
          }

          v61 = *(this + 18);
          if (v61 == *(this + 19))
          {
            wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 16, v61 + 1);
            v61 = *(this + 18);
          }

          v62 = v157;
          v63 = *(this + 8);
          *(this + 18) = v61 + 1;
          *(v63 + 4 * v61) = v62;
          v64 = *(this + 19) - *(this + 18);
          if (v64 >= 1)
          {
            v65 = v64 + 1;
            do
            {
              v66 = *(a2 + 1);
              v67 = *(a2 + 2);
              if (v66 >= v67 || *v66 != 40)
              {
                break;
              }

              *(a2 + 1) = v66 + 1;
              if ((v66 + 1) >= v67 || v66[1] < 0)
              {
                if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v157))
                {
                  return 0;
                }
              }

              else
              {
                v157 = v66[1];
                *(a2 + 1) = v66 + 2;
              }

              v68 = *(this + 18);
              if (v68 >= *(this + 19))
              {
                wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v158);
                v68 = *(this + 18);
              }

              v69 = v157;
              v70 = *(this + 8);
              *(this + 18) = v68 + 1;
              *(v70 + 4 * v68) = v69;
              --v65;
            }

            while (v65 > 1);
          }

LABEL_164:
          v11 = *(a2 + 1);
          v8 = *(a2 + 2);
          if (v11 >= v8)
          {
            goto LABEL_1;
          }

          v71 = *v11;
          if (v71 == 48)
          {
            goto LABEL_168;
          }

          if (v71 != 40)
          {
            goto LABEL_1;
          }

LABEL_146:
          v18 = (v11 + 1);
          *(a2 + 1) = v18;
        }

      case 6u:
        if ((TagFallback & 7) != 0)
        {
          if (v7 == 2)
          {
            result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadPackedPrimitiveNoInline<unsigned int,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)13>(a2, this + 10);
            if (!result)
            {
              return result;
            }

            goto LABEL_186;
          }

          goto LABEL_61;
        }

        v24 = *(a2 + 1);
        v8 = *(a2 + 2);
        while (1)
        {
          v157 = 0;
          if (v24 >= v8 || *v24 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v157))
            {
              return 0;
            }
          }

          else
          {
            v157 = *v24;
            *(a2 + 1) = v24 + 1;
          }

          v72 = *(this + 22);
          if (v72 == *(this + 23))
          {
            wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 20, v72 + 1);
            v72 = *(this + 22);
          }

          v73 = v157;
          v74 = *(this + 10);
          *(this + 22) = v72 + 1;
          *(v74 + 4 * v72) = v73;
          v75 = *(this + 23) - *(this + 22);
          if (v75 >= 1)
          {
            v76 = v75 + 1;
            do
            {
              v77 = *(a2 + 1);
              v78 = *(a2 + 2);
              if (v77 >= v78 || *v77 != 48)
              {
                break;
              }

              *(a2 + 1) = v77 + 1;
              if ((v77 + 1) >= v78 || v77[1] < 0)
              {
                if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v157))
                {
                  return 0;
                }
              }

              else
              {
                v157 = v77[1];
                *(a2 + 1) = v77 + 2;
              }

              v79 = *(this + 22);
              if (v79 >= *(this + 23))
              {
                wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v158);
                v79 = *(this + 22);
              }

              v80 = v157;
              v81 = *(this + 10);
              *(this + 22) = v79 + 1;
              *(v81 + 4 * v79) = v80;
              --v76;
            }

            while (v76 > 1);
          }

LABEL_186:
          v11 = *(a2 + 1);
          v8 = *(a2 + 2);
          if (v11 >= v8)
          {
            goto LABEL_1;
          }

          v82 = *v11;
          if (v82 == 56)
          {
            goto LABEL_190;
          }

          if (v82 != 48)
          {
            goto LABEL_1;
          }

LABEL_168:
          v24 = (v11 + 1);
          *(a2 + 1) = v24;
        }

      case 7u:
        if ((TagFallback & 7) != 0)
        {
          if (v7 == 2)
          {
            result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadPackedPrimitiveNoInline<unsigned int,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)13>(a2, this + 12);
            if (!result)
            {
              return result;
            }

            goto LABEL_208;
          }

          goto LABEL_61;
        }

        v25 = *(a2 + 1);
        v8 = *(a2 + 2);
        while (1)
        {
          v157 = 0;
          if (v25 >= v8 || *v25 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v157))
            {
              return 0;
            }
          }

          else
          {
            v157 = *v25;
            *(a2 + 1) = v25 + 1;
          }

          v83 = *(this + 26);
          if (v83 == *(this + 27))
          {
            wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 24, v83 + 1);
            v83 = *(this + 26);
          }

          v84 = v157;
          v85 = *(this + 12);
          *(this + 26) = v83 + 1;
          *(v85 + 4 * v83) = v84;
          v86 = *(this + 27) - *(this + 26);
          if (v86 >= 1)
          {
            v87 = v86 + 1;
            do
            {
              v88 = *(a2 + 1);
              v89 = *(a2 + 2);
              if (v88 >= v89 || *v88 != 56)
              {
                break;
              }

              *(a2 + 1) = v88 + 1;
              if ((v88 + 1) >= v89 || v88[1] < 0)
              {
                if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v157))
                {
                  return 0;
                }
              }

              else
              {
                v157 = v88[1];
                *(a2 + 1) = v88 + 2;
              }

              v90 = *(this + 26);
              if (v90 >= *(this + 27))
              {
                wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v158);
                v90 = *(this + 26);
              }

              v91 = v157;
              v92 = *(this + 12);
              *(this + 26) = v90 + 1;
              *(v92 + 4 * v90) = v91;
              --v87;
            }

            while (v87 > 1);
          }

LABEL_208:
          v11 = *(a2 + 1);
          v8 = *(a2 + 2);
          if (v11 >= v8)
          {
            goto LABEL_1;
          }

          v93 = *v11;
          if (v93 == 64)
          {
            goto LABEL_212;
          }

          if (v93 != 56)
          {
            goto LABEL_1;
          }

LABEL_190:
          v25 = (v11 + 1);
          *(a2 + 1) = v25;
        }

      case 8u:
        if ((TagFallback & 7) != 0)
        {
          if (v7 == 2)
          {
            result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadPackedPrimitiveNoInline<unsigned int,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)13>(a2, this + 14);
            if (!result)
            {
              return result;
            }

            goto LABEL_230;
          }

          goto LABEL_61;
        }

        v22 = *(a2 + 1);
        v8 = *(a2 + 2);
        while (1)
        {
          v157 = 0;
          if (v22 >= v8 || *v22 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v157))
            {
              return 0;
            }
          }

          else
          {
            v157 = *v22;
            *(a2 + 1) = v22 + 1;
          }

          v94 = *(this + 30);
          if (v94 == *(this + 31))
          {
            wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 28, v94 + 1);
            v94 = *(this + 30);
          }

          v95 = v157;
          v96 = *(this + 14);
          *(this + 30) = v94 + 1;
          *(v96 + 4 * v94) = v95;
          v97 = *(this + 31) - *(this + 30);
          if (v97 >= 1)
          {
            v98 = v97 + 1;
            do
            {
              v99 = *(a2 + 1);
              v100 = *(a2 + 2);
              if (v99 >= v100 || *v99 != 64)
              {
                break;
              }

              *(a2 + 1) = v99 + 1;
              if ((v99 + 1) >= v100 || v99[1] < 0)
              {
                if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v157))
                {
                  return 0;
                }
              }

              else
              {
                v157 = v99[1];
                *(a2 + 1) = v99 + 2;
              }

              v101 = *(this + 30);
              if (v101 >= *(this + 31))
              {
                wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v158);
                v101 = *(this + 30);
              }

              v102 = v157;
              v103 = *(this + 14);
              *(this + 30) = v101 + 1;
              *(v103 + 4 * v101) = v102;
              --v98;
            }

            while (v98 > 1);
          }

LABEL_230:
          v11 = *(a2 + 1);
          v8 = *(a2 + 2);
          if (v11 >= v8)
          {
            goto LABEL_1;
          }

          v104 = *v11;
          if (v104 == 72)
          {
            goto LABEL_234;
          }

          if (v104 != 64)
          {
            goto LABEL_1;
          }

LABEL_212:
          v22 = (v11 + 1);
          *(a2 + 1) = v22;
        }

      case 9u:
        if ((TagFallback & 7) != 0)
        {
          if (v7 == 2)
          {
            result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadPackedPrimitiveNoInline<unsigned int,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)13>(a2, this + 16);
            if (!result)
            {
              return result;
            }

            goto LABEL_252;
          }

          goto LABEL_61;
        }

        v27 = *(a2 + 1);
        v8 = *(a2 + 2);
        while (1)
        {
          v157 = 0;
          if (v27 >= v8 || *v27 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v157))
            {
              return 0;
            }
          }

          else
          {
            v157 = *v27;
            *(a2 + 1) = v27 + 1;
          }

          v105 = *(this + 34);
          if (v105 == *(this + 35))
          {
            wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 32, v105 + 1);
            v105 = *(this + 34);
          }

          v106 = v157;
          v107 = *(this + 16);
          *(this + 34) = v105 + 1;
          *(v107 + 4 * v105) = v106;
          v108 = *(this + 35) - *(this + 34);
          if (v108 >= 1)
          {
            v109 = v108 + 1;
            do
            {
              v110 = *(a2 + 1);
              v111 = *(a2 + 2);
              if (v110 >= v111 || *v110 != 72)
              {
                break;
              }

              *(a2 + 1) = v110 + 1;
              if ((v110 + 1) >= v111 || v110[1] < 0)
              {
                if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v157))
                {
                  return 0;
                }
              }

              else
              {
                v157 = v110[1];
                *(a2 + 1) = v110 + 2;
              }

              v112 = *(this + 34);
              if (v112 >= *(this + 35))
              {
                wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v158);
                v112 = *(this + 34);
              }

              v113 = v157;
              v114 = *(this + 16);
              *(this + 34) = v112 + 1;
              *(v114 + 4 * v112) = v113;
              --v109;
            }

            while (v109 > 1);
          }

LABEL_252:
          v11 = *(a2 + 1);
          v8 = *(a2 + 2);
          if (v11 >= v8)
          {
            goto LABEL_1;
          }

          v115 = *v11;
          if (v115 == 80)
          {
            goto LABEL_256;
          }

          if (v115 != 72)
          {
            goto LABEL_1;
          }

LABEL_234:
          v27 = (v11 + 1);
          *(a2 + 1) = v27;
        }

      case 0xAu:
        if ((TagFallback & 7) != 0)
        {
          if (v7 == 2)
          {
            result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadPackedPrimitiveNoInline<unsigned int,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)13>(a2, this + 18);
            if (!result)
            {
              return result;
            }

            goto LABEL_274;
          }

          goto LABEL_61;
        }

        v19 = *(a2 + 1);
        v8 = *(a2 + 2);
        while (1)
        {
          v157 = 0;
          if (v19 >= v8 || *v19 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v157))
            {
              return 0;
            }
          }

          else
          {
            v157 = *v19;
            *(a2 + 1) = v19 + 1;
          }

          v116 = *(this + 38);
          if (v116 == *(this + 39))
          {
            wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 36, v116 + 1);
            v116 = *(this + 38);
          }

          v117 = v157;
          v118 = *(this + 18);
          *(this + 38) = v116 + 1;
          *(v118 + 4 * v116) = v117;
          v119 = *(this + 39) - *(this + 38);
          if (v119 >= 1)
          {
            v120 = v119 + 1;
            do
            {
              v121 = *(a2 + 1);
              v122 = *(a2 + 2);
              if (v121 >= v122 || *v121 != 80)
              {
                break;
              }

              *(a2 + 1) = v121 + 1;
              if ((v121 + 1) >= v122 || v121[1] < 0)
              {
                if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v157))
                {
                  return 0;
                }
              }

              else
              {
                v157 = v121[1];
                *(a2 + 1) = v121 + 2;
              }

              v123 = *(this + 38);
              if (v123 >= *(this + 39))
              {
                wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v158);
                v123 = *(this + 38);
              }

              v124 = v157;
              v125 = *(this + 18);
              *(this + 38) = v123 + 1;
              *(v125 + 4 * v123) = v124;
              --v120;
            }

            while (v120 > 1);
          }

LABEL_274:
          v11 = *(a2 + 1);
          v8 = *(a2 + 2);
          if (v11 >= v8)
          {
            goto LABEL_1;
          }

          v126 = *v11;
          if (v126 == 88)
          {
            goto LABEL_278;
          }

          if (v126 != 80)
          {
            goto LABEL_1;
          }

LABEL_256:
          v19 = (v11 + 1);
          *(a2 + 1) = v19;
        }

      case 0xBu:
        if ((TagFallback & 7) != 0)
        {
          if (v7 == 2)
          {
            result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadPackedPrimitiveNoInline<unsigned int,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)13>(a2, this + 20);
            if (!result)
            {
              return result;
            }

            goto LABEL_296;
          }

          goto LABEL_61;
        }

        v26 = *(a2 + 1);
        v8 = *(a2 + 2);
        while (1)
        {
          v157 = 0;
          if (v26 >= v8 || *v26 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v157))
            {
              return 0;
            }
          }

          else
          {
            v157 = *v26;
            *(a2 + 1) = v26 + 1;
          }

          v127 = *(this + 42);
          if (v127 == *(this + 43))
          {
            wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 40, v127 + 1);
            v127 = *(this + 42);
          }

          v128 = v157;
          v129 = *(this + 20);
          *(this + 42) = v127 + 1;
          *(v129 + 4 * v127) = v128;
          v130 = *(this + 43) - *(this + 42);
          if (v130 >= 1)
          {
            v131 = v130 + 1;
            do
            {
              v132 = *(a2 + 1);
              v133 = *(a2 + 2);
              if (v132 >= v133 || *v132 != 88)
              {
                break;
              }

              *(a2 + 1) = v132 + 1;
              if ((v132 + 1) >= v133 || v132[1] < 0)
              {
                if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v157))
                {
                  return 0;
                }
              }

              else
              {
                v157 = v132[1];
                *(a2 + 1) = v132 + 2;
              }

              v134 = *(this + 42);
              if (v134 >= *(this + 43))
              {
                wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v158);
                v134 = *(this + 42);
              }

              v135 = v157;
              v136 = *(this + 20);
              *(this + 42) = v134 + 1;
              *(v136 + 4 * v134) = v135;
              --v131;
            }

            while (v131 > 1);
          }

LABEL_296:
          v11 = *(a2 + 1);
          v8 = *(a2 + 2);
          if (v11 >= v8)
          {
            goto LABEL_1;
          }

          v137 = *v11;
          if (v137 == 96)
          {
            goto LABEL_300;
          }

          if (v137 != 88)
          {
            goto LABEL_1;
          }

LABEL_278:
          v26 = (v11 + 1);
          *(a2 + 1) = v26;
        }

      case 0xCu:
        if ((TagFallback & 7) == 0)
        {
          v17 = *(a2 + 1);
          v8 = *(a2 + 2);
          while (1)
          {
            v157 = 0;
            if (v17 >= v8 || *v17 < 0)
            {
              if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v157))
              {
                return 0;
              }
            }

            else
            {
              v157 = *v17;
              *(a2 + 1) = v17 + 1;
            }

            v138 = *(this + 46);
            if (v138 == *(this + 47))
            {
              wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 44, v138 + 1);
              v138 = *(this + 46);
            }

            v139 = v157;
            v140 = *(this + 22);
            *(this + 46) = v138 + 1;
            *(v140 + 4 * v138) = v139;
            v141 = *(this + 47) - *(this + 46);
            if (v141 >= 1)
            {
              v142 = v141 + 1;
              do
              {
                v143 = *(a2 + 1);
                v144 = *(a2 + 2);
                if (v143 >= v144 || *v143 != 96)
                {
                  break;
                }

                *(a2 + 1) = v143 + 1;
                if ((v143 + 1) >= v144 || v143[1] < 0)
                {
                  if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v157))
                  {
                    return 0;
                  }
                }

                else
                {
                  v157 = v143[1];
                  *(a2 + 1) = v143 + 2;
                }

                v145 = *(this + 46);
                if (v145 >= *(this + 47))
                {
                  wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                  wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                  wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v158);
                  v145 = *(this + 46);
                }

                v146 = v157;
                v147 = *(this + 22);
                *(this + 46) = v145 + 1;
                *(v147 + 4 * v145) = v146;
                --v142;
              }

              while (v142 > 1);
            }

LABEL_318:
            v11 = *(a2 + 1);
            v8 = *(a2 + 2);
            if (v11 >= v8)
            {
              goto LABEL_1;
            }

            v148 = *v11;
            if (v148 == 104)
            {
              v14 = (v11 + 1);
              *(a2 + 1) = v14;
LABEL_323:
              if (v14 >= v8 || (v149 = *v14, v149 < 0))
              {
                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 48);
                if (!result)
                {
                  return result;
                }

                v150 = *(a2 + 1);
                v8 = *(a2 + 2);
              }

              else
              {
                *(this + 48) = v149;
                v150 = v14 + 1;
                *(a2 + 1) = v150;
              }

              *(this + 53) |= 0x1000u;
              if (v150 < v8 && *v150 == 112)
              {
                v16 = v150 + 1;
                *(a2 + 1) = v16;
LABEL_331:
                if (v16 >= v8 || (v151 = *v16, v151 < 0))
                {
                  result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 49);
                  if (!result)
                  {
                    return result;
                  }

                  v152 = *(a2 + 1);
                  v8 = *(a2 + 2);
                }

                else
                {
                  *(this + 49) = v151;
                  v152 = v16 + 1;
                  *(a2 + 1) = v152;
                }

                *(this + 53) |= 0x2000u;
                if (v152 < v8 && *v152 == 120)
                {
                  v12 = v152 + 1;
                  *(a2 + 1) = v12;
LABEL_339:
                  if (v12 >= v8 || (v153 = *v12, v153 < 0))
                  {
                    result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 50);
                    if (!result)
                    {
                      return result;
                    }

                    v154 = *(a2 + 1);
                    v8 = *(a2 + 2);
                  }

                  else
                  {
                    *(this + 50) = v153;
                    v154 = (v12 + 1);
                    *(a2 + 1) = v154;
                  }

                  *(this + 53) |= 0x4000u;
                  if (v8 - v154 >= 2 && *v154 == 128 && v154[1] == 1)
                  {
                    v15 = (v154 + 2);
                    *(a2 + 1) = v15;
LABEL_348:
                    if (v15 >= v8 || (v155 = *v15, v155 < 0))
                    {
                      result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 51);
                      if (!result)
                      {
                        return result;
                      }

                      v156 = *(a2 + 1);
                      v8 = *(a2 + 2);
                    }

                    else
                    {
                      *(this + 51) = v155;
                      v156 = v15 + 1;
                      *(a2 + 1) = v156;
                    }

                    *(this + 53) |= 0x8000u;
                    if (v156 == v8 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
                    {
                      *(a2 + 8) = 0;
                      result = 1;
                      *(a2 + 36) = 1;
                      return result;
                    }
                  }
                }
              }

              goto LABEL_1;
            }

            if (v148 != 96)
            {
              goto LABEL_1;
            }

LABEL_300:
            v17 = (v11 + 1);
            *(a2 + 1) = v17;
          }
        }

        if (v7 == 2)
        {
          result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadPackedPrimitiveNoInline<unsigned int,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)13>(a2, this + 22);
          if (!result)
          {
            return result;
          }

          goto LABEL_318;
        }

LABEL_61:
        if (v7 != 4)
        {
          if ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(a2, TagFallback) & 1) == 0)
          {
            return 0;
          }

          continue;
        }

        return 1;
      case 0xDu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_61;
        }

        v14 = *(a2 + 1);
        v8 = *(a2 + 2);
        goto LABEL_323;
      case 0xEu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_61;
        }

        v16 = *(a2 + 1);
        v8 = *(a2 + 2);
        goto LABEL_331;
      case 0xFu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_61;
        }

        v12 = *(a2 + 1);
        v8 = *(a2 + 2);
        goto LABEL_339;
      case 0x10u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_61;
        }

        v15 = *(a2 + 1);
        v8 = *(a2 + 2);
        goto LABEL_348;
      default:
        goto LABEL_61;
    }
  }
}