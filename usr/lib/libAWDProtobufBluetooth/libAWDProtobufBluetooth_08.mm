uint64_t awd::metrics::BluetoothAccessoryCaseCharging::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 128);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(1, *(this + 8), a2, a4);
    v6 = v5[32];
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

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(2, v5[4], a2, a4);
  v6 = v5[32];
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_33;
  }

LABEL_32:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(3, v5[5], a2, a4);
  v6 = v5[32];
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_34;
  }

LABEL_33:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(4, v5[6], a2, a4);
  v6 = v5[32];
  if ((v6 & 0x10) == 0)
  {
LABEL_6:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_35;
  }

LABEL_34:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(5, v5[7], a2, a4);
  v6 = v5[32];
  if ((v6 & 0x20) == 0)
  {
LABEL_7:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_36;
  }

LABEL_35:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(6, v5[8], a2, a4);
  v6 = v5[32];
  if ((v6 & 0x40) == 0)
  {
LABEL_8:
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_37;
  }

LABEL_36:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(7, v5[9], a2, a4);
  v6 = v5[32];
  if ((v6 & 0x80) == 0)
  {
LABEL_9:
    if ((v6 & 0x100) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_38;
  }

LABEL_37:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(8, v5[10], a2, a4);
  v6 = v5[32];
  if ((v6 & 0x100) == 0)
  {
LABEL_10:
    if ((v6 & 0x200) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_39;
  }

LABEL_38:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(9, v5[11], a2, a4);
  v6 = v5[32];
  if ((v6 & 0x200) == 0)
  {
LABEL_11:
    if ((v6 & 0x400) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_40;
  }

LABEL_39:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xA, v5[12], a2, a4);
  v6 = v5[32];
  if ((v6 & 0x400) == 0)
  {
LABEL_12:
    if ((v6 & 0x800) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_41;
  }

LABEL_40:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xB, v5[13], a2, a4);
  v6 = v5[32];
  if ((v6 & 0x800) == 0)
  {
LABEL_13:
    if ((v6 & 0x1000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_42;
  }

LABEL_41:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xC, v5[14], a2, a4);
  v6 = v5[32];
  if ((v6 & 0x1000) == 0)
  {
LABEL_14:
    if ((v6 & 0x2000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_43;
  }

LABEL_42:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xD, v5[15], a2, a4);
  v6 = v5[32];
  if ((v6 & 0x2000) == 0)
  {
LABEL_15:
    if ((v6 & 0x4000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_44;
  }

LABEL_43:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xE, v5[16], a2, a4);
  v6 = v5[32];
  if ((v6 & 0x4000) == 0)
  {
LABEL_16:
    if ((v6 & 0x8000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_45;
  }

LABEL_44:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(0xF, v5[17], a2, a4);
  v6 = v5[32];
  if ((v6 & 0x8000) == 0)
  {
LABEL_17:
    if ((v6 & 0x10000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_46;
  }

LABEL_45:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(0x10, v5[18], a2, a4);
  v6 = v5[32];
  if ((v6 & 0x10000) == 0)
  {
LABEL_18:
    if ((v6 & 0x20000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_47;
  }

LABEL_46:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x11, v5[19], a2, a4);
  v6 = v5[32];
  if ((v6 & 0x20000) == 0)
  {
LABEL_19:
    if ((v6 & 0x40000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_48;
  }

LABEL_47:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x12, v5[20], a2, a4);
  v6 = v5[32];
  if ((v6 & 0x40000) == 0)
  {
LABEL_20:
    if ((v6 & 0x80000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_49;
  }

LABEL_48:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x13, v5[21], a2, a4);
  v6 = v5[32];
  if ((v6 & 0x80000) == 0)
  {
LABEL_21:
    if ((v6 & 0x100000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_50;
  }

LABEL_49:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x14, v5[22], a2, a4);
  v6 = v5[32];
  if ((v6 & 0x100000) == 0)
  {
LABEL_22:
    if ((v6 & 0x200000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_51;
  }

LABEL_50:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(0x15, v5[23], a2, a4);
  v6 = v5[32];
  if ((v6 & 0x200000) == 0)
  {
LABEL_23:
    if ((v6 & 0x400000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_52;
  }

LABEL_51:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(0x16, v5[24], a2, a4);
  v6 = v5[32];
  if ((v6 & 0x400000) == 0)
  {
LABEL_24:
    if ((v6 & 0x800000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_53;
  }

LABEL_52:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x17, v5[25], a2, a4);
  v6 = v5[32];
  if ((v6 & 0x800000) == 0)
  {
LABEL_25:
    if ((v6 & 0x1000000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_54;
  }

LABEL_53:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(0x18, v5[26], a2, a4);
  v6 = v5[32];
  if ((v6 & 0x1000000) == 0)
  {
LABEL_26:
    if ((v6 & 0x2000000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_55;
  }

LABEL_54:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(0x19, v5[27], a2, a4);
  v6 = v5[32];
  if ((v6 & 0x2000000) == 0)
  {
LABEL_27:
    if ((v6 & 0x4000000) == 0)
    {
      goto LABEL_28;
    }

LABEL_56:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x1B, v5[29], a2, a4);
    if ((v5[32] & 0x8000000) == 0)
    {
      return this;
    }

    goto LABEL_57;
  }

LABEL_55:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x1A, v5[28], a2, a4);
  v6 = v5[32];
  if ((v6 & 0x4000000) != 0)
  {
    goto LABEL_56;
  }

LABEL_28:
  if ((v6 & 0x8000000) == 0)
  {
    return this;
  }

LABEL_57:
  v7 = v5[30];

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x1C, v7, a2, a4);
}

uint64_t awd::metrics::BluetoothAccessoryCaseCharging::ByteSize(awd::metrics::BluetoothAccessoryCaseCharging *this, unint64_t a2)
{
  v3 = *(this + 32);
  if (!v3)
  {
    v4 = 0;
    goto LABEL_42;
  }

  if (v3)
  {
    v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 1)) + 1;
    v3 = *(this + 32);
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
    v3 = *(this + 32);
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
      v3 = *(this + 32);
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
    v3 = *(this + 32);
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
    v3 = *(this + 32);
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
    v3 = *(this + 32);
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
    v3 = *(this + 32);
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
      v3 = *(this + 32);
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
    goto LABEL_88;
  }

  if ((v3 & 0x100) != 0)
  {
    v19 = *(this + 11);
    if (v19 >= 0x80)
    {
      v20 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v19) + 1;
      v3 = *(this + 32);
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
    v3 = *(this + 32);
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
      goto LABEL_47;
    }

    goto LABEL_64;
  }

LABEL_60:
  v23 = *(this + 13);
  if (v23 >= 0x80)
  {
    v24 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v23) + 1;
    v3 = *(this + 32);
  }

  else
  {
    v24 = 2;
  }

  v4 = (v24 + v4);
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
    v3 = *(this + 32);
  }

  else
  {
    v26 = 2;
  }

  v4 = (v26 + v4);
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
    v3 = *(this + 32);
  }

  else
  {
    v28 = 2;
  }

  v4 = (v28 + v4);
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
    v3 = *(this + 32);
  }

  else
  {
    v30 = 2;
  }

  v4 = (v30 + v4);
  if ((v3 & 0x4000) == 0)
  {
LABEL_50:
    if ((v3 & 0x8000) == 0)
    {
      goto LABEL_88;
    }

    goto LABEL_82;
  }

LABEL_76:
  v31 = *(this + 17);
  if ((v31 & 0x80000000) != 0)
  {
    v32 = 11;
  }

  else if (v31 >= 0x80)
  {
    v32 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v31) + 1;
    v3 = *(this + 32);
  }

  else
  {
    v32 = 2;
  }

  v4 = (v32 + v4);
  if ((v3 & 0x8000) != 0)
  {
LABEL_82:
    v33 = *(this + 18);
    if ((v33 & 0x80000000) != 0)
    {
      v34 = 12;
    }

    else if (v33 >= 0x80)
    {
      v34 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v33) + 2;
      v3 = *(this + 32);
    }

    else
    {
      v34 = 3;
    }

    v4 = (v34 + v4);
  }

LABEL_88:
  if ((v3 & 0xFF0000) == 0)
  {
    goto LABEL_136;
  }

  if ((v3 & 0x10000) != 0)
  {
    v35 = *(this + 19);
    if (v35 >= 0x80)
    {
      v36 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v35) + 2;
      v3 = *(this + 32);
    }

    else
    {
      v36 = 3;
    }

    v4 = (v36 + v4);
    if ((v3 & 0x20000) == 0)
    {
LABEL_91:
      if ((v3 & 0x40000) == 0)
      {
        goto LABEL_92;
      }

      goto LABEL_106;
    }
  }

  else if ((v3 & 0x20000) == 0)
  {
    goto LABEL_91;
  }

  v37 = *(this + 20);
  if (v37 >= 0x80)
  {
    v38 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v37) + 2;
    v3 = *(this + 32);
  }

  else
  {
    v38 = 3;
  }

  v4 = (v38 + v4);
  if ((v3 & 0x40000) == 0)
  {
LABEL_92:
    if ((v3 & 0x80000) == 0)
    {
      goto LABEL_93;
    }

    goto LABEL_110;
  }

LABEL_106:
  v39 = *(this + 21);
  if (v39 >= 0x80)
  {
    v40 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v39) + 2;
    v3 = *(this + 32);
  }

  else
  {
    v40 = 3;
  }

  v4 = (v40 + v4);
  if ((v3 & 0x80000) == 0)
  {
LABEL_93:
    if ((v3 & 0x100000) == 0)
    {
      goto LABEL_94;
    }

    goto LABEL_114;
  }

LABEL_110:
  v41 = *(this + 22);
  if (v41 >= 0x80)
  {
    v42 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v41) + 2;
    v3 = *(this + 32);
  }

  else
  {
    v42 = 3;
  }

  v4 = (v42 + v4);
  if ((v3 & 0x100000) == 0)
  {
LABEL_94:
    if ((v3 & 0x200000) == 0)
    {
      goto LABEL_95;
    }

    goto LABEL_120;
  }

LABEL_114:
  v43 = *(this + 23);
  if ((v43 & 0x80000000) != 0)
  {
    v44 = 12;
  }

  else if (v43 >= 0x80)
  {
    v44 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v43) + 2;
    v3 = *(this + 32);
  }

  else
  {
    v44 = 3;
  }

  v4 = (v44 + v4);
  if ((v3 & 0x200000) == 0)
  {
LABEL_95:
    if ((v3 & 0x400000) == 0)
    {
      goto LABEL_96;
    }

    goto LABEL_126;
  }

LABEL_120:
  v45 = *(this + 24);
  if ((v45 & 0x80000000) != 0)
  {
    v46 = 12;
  }

  else if (v45 >= 0x80)
  {
    v46 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v45) + 2;
    v3 = *(this + 32);
  }

  else
  {
    v46 = 3;
  }

  v4 = (v46 + v4);
  if ((v3 & 0x400000) == 0)
  {
LABEL_96:
    if ((v3 & 0x800000) == 0)
    {
      goto LABEL_136;
    }

    goto LABEL_130;
  }

LABEL_126:
  v47 = *(this + 25);
  if (v47 >= 0x80)
  {
    v48 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v47) + 2;
    v3 = *(this + 32);
  }

  else
  {
    v48 = 3;
  }

  v4 = (v48 + v4);
  if ((v3 & 0x800000) != 0)
  {
LABEL_130:
    v49 = *(this + 26);
    if ((v49 & 0x80000000) != 0)
    {
      v50 = 12;
    }

    else if (v49 >= 0x80)
    {
      v50 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v49) + 2;
      v3 = *(this + 32);
    }

    else
    {
      v50 = 3;
    }

    v4 = (v50 + v4);
  }

LABEL_136:
  if (!HIBYTE(v3))
  {
    goto LABEL_160;
  }

  if ((v3 & 0x1000000) != 0)
  {
    v51 = *(this + 27);
    if ((v51 & 0x80000000) != 0)
    {
      v52 = 12;
    }

    else if (v51 >= 0x80)
    {
      v52 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v51) + 2;
      v3 = *(this + 32);
    }

    else
    {
      v52 = 3;
    }

    v4 = (v52 + v4);
    if ((v3 & 0x2000000) == 0)
    {
LABEL_139:
      if ((v3 & 0x4000000) == 0)
      {
        goto LABEL_140;
      }

      goto LABEL_152;
    }
  }

  else if ((v3 & 0x2000000) == 0)
  {
    goto LABEL_139;
  }

  v53 = *(this + 28);
  if (v53 >= 0x80)
  {
    v54 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v53) + 2;
    v3 = *(this + 32);
  }

  else
  {
    v54 = 3;
  }

  v4 = (v54 + v4);
  if ((v3 & 0x4000000) == 0)
  {
LABEL_140:
    if ((v3 & 0x8000000) == 0)
    {
      goto LABEL_160;
    }

    goto LABEL_156;
  }

LABEL_152:
  v55 = *(this + 29);
  if (v55 >= 0x80)
  {
    v56 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v55) + 2;
    v3 = *(this + 32);
  }

  else
  {
    v56 = 3;
  }

  v4 = (v56 + v4);
  if ((v3 & 0x8000000) != 0)
  {
LABEL_156:
    v57 = *(this + 30);
    if (v57 >= 0x80)
    {
      v58 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v57) + 2;
    }

    else
    {
      v58 = 3;
    }

    v4 = (v58 + v4);
  }

LABEL_160:
  *(this + 31) = v4;
  return v4;
}

void awd::metrics::BluetoothAccessoryCaseCharging::CheckTypeAndMergeFrom(awd::metrics::BluetoothAccessoryCaseCharging *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  {
    awd::metrics::BluetoothAccessoryCaseCharging::CheckTypeAndMergeFrom();
  }

  awd::metrics::BluetoothAccessoryCaseCharging::MergeFrom(this, lpsrc);
}

void awd::metrics::BluetoothAccessoryCaseCharging::CopyFrom(awd::metrics::BluetoothAccessoryCaseCharging *this, const awd::metrics::BluetoothAccessoryCaseCharging *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    awd::metrics::BluetoothAccessoryCaseCharging::MergeFrom(this, a2);
  }
}

uint64_t awd::metrics::BluetoothAccessoryCaseCharging::Swap(uint64_t this, awd::metrics::BluetoothAccessoryCaseCharging *a2)
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
    LODWORD(v2) = *(this + 84);
    *(this + 84) = *(a2 + 21);
    *(a2 + 21) = v2;
    LODWORD(v2) = *(this + 88);
    *(this + 88) = *(a2 + 22);
    *(a2 + 22) = v2;
    LODWORD(v2) = *(this + 92);
    *(this + 92) = *(a2 + 23);
    *(a2 + 23) = v2;
    LODWORD(v2) = *(this + 96);
    *(this + 96) = *(a2 + 24);
    *(a2 + 24) = v2;
    LODWORD(v2) = *(this + 100);
    *(this + 100) = *(a2 + 25);
    *(a2 + 25) = v2;
    LODWORD(v2) = *(this + 104);
    *(this + 104) = *(a2 + 26);
    *(a2 + 26) = v2;
    LODWORD(v2) = *(this + 108);
    *(this + 108) = *(a2 + 27);
    *(a2 + 27) = v2;
    LODWORD(v2) = *(this + 112);
    *(this + 112) = *(a2 + 28);
    *(a2 + 28) = v2;
    LODWORD(v2) = *(this + 116);
    *(this + 116) = *(a2 + 29);
    *(a2 + 29) = v2;
    LODWORD(v2) = *(this + 120);
    *(this + 120) = *(a2 + 30);
    *(a2 + 30) = v2;
    LODWORD(v2) = *(this + 128);
    *(this + 128) = *(a2 + 32);
    *(a2 + 32) = v2;
    LODWORD(v2) = *(this + 124);
    *(this + 124) = *(a2 + 31);
    *(a2 + 31) = v2;
  }

  return this;
}

double awd::metrics::BluetoothAccessoryDsp::SharedCtor(awd::metrics::BluetoothAccessoryDsp *this)
{
  result = 0.0;
  *(this + 19) = 0;
  *(this + 24) = 0;
  *(this + 51) = 0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 31) = 0;
  *(this + 32) = 0;
  *(this + 54) = 0;
  *(this + 55) = 0;
  *(this + 112) = 0;
  return result;
}

awd::metrics::BluetoothAccessoryDsp *awd::metrics::BluetoothAccessoryDsp::BluetoothAccessoryDsp(awd::metrics::BluetoothAccessoryDsp *this, const awd::metrics::BluetoothAccessoryDsp *a2)
{
  *this = &unk_2A1D4BB20;
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
  *(this + 248) = 0u;
  *(this + 8) = 0u;
  *(this + 264) = 0u;
  *(this + 280) = 0u;
  *(this + 296) = 0u;
  *(this + 312) = 0u;
  *(this + 328) = 0u;
  *(this + 344) = 0u;
  *(this + 360) = 0u;
  *(this + 376) = 0u;
  *(this + 392) = 0u;
  *(this + 408) = 0u;
  *(this + 424) = 0u;
  *(this + 436) = 0u;
  awd::metrics::BluetoothAccessoryDsp::MergeFrom(this, a2);
  return this;
}

void sub_296394CA4(_Unwind_Exception *a1)
{
  v3 = *(v1 + 52);
  if (v3)
  {
    MEMORY[0x29C259EE0](v3, 0x1000C8052888210);
  }

  v4 = *(v1 + 49);
  if (v4)
  {
    MEMORY[0x29C259EE0](v4, 0x1000C8052888210);
  }

  v5 = *(v1 + 47);
  if (v5)
  {
    MEMORY[0x29C259EE0](v5, 0x1000C8052888210);
  }

  v6 = *(v1 + 45);
  if (v6)
  {
    MEMORY[0x29C259EE0](v6, 0x1000C8052888210);
  }

  v7 = *(v1 + 43);
  if (v7)
  {
    MEMORY[0x29C259EE0](v7, 0x1000C8052888210);
  }

  v8 = *(v1 + 41);
  if (v8)
  {
    MEMORY[0x29C259EE0](v8, 0x1000C8052888210);
  }

  v9 = *(v1 + 39);
  if (v9)
  {
    MEMORY[0x29C259EE0](v9, 0x1000C8052888210);
  }

  v10 = *(v1 + 37);
  if (v10)
  {
    MEMORY[0x29C259EE0](v10, 0x1000C8052888210);
  }

  v11 = *(v1 + 35);
  if (v11)
  {
    MEMORY[0x29C259EE0](v11, 0x1000C8052888210);
  }

  v12 = *(v1 + 33);
  if (v12)
  {
    MEMORY[0x29C259EE0](v12, 0x1000C8052888210);
  }

  v13 = *(v1 + 29);
  if (v13)
  {
    MEMORY[0x29C259EE0](v13, 0x1000C8052888210);
  }

  v14 = *(v1 + 27);
  if (v14)
  {
    MEMORY[0x29C259EE0](v14, 0x1000C8052888210);
  }

  v15 = *(v1 + 25);
  if (v15)
  {
    MEMORY[0x29C259EE0](v15, 0x1000C8052888210);
  }

  v16 = *(v1 + 22);
  if (v16)
  {
    MEMORY[0x29C259EE0](v16, 0x1000C8052888210);
  }

  v17 = *(v1 + 20);
  if (v17)
  {
    MEMORY[0x29C259EE0](v17, 0x1000C8052888210);
  }

  v18 = *(v1 + 17);
  if (v18)
  {
    MEMORY[0x29C259EE0](v18, 0x1000C8052888210);
  }

  v19 = *(v1 + 13);
  if (v19)
  {
    MEMORY[0x29C259EE0](v19, 0x1000C8052888210);
  }

  v20 = *(v1 + 11);
  if (v20)
  {
    MEMORY[0x29C259EE0](v20, 0x1000C8052888210);
  }

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(v1);
  _Unwind_Resume(a1);
}

void awd::metrics::BluetoothAccessoryDsp::MergeFrom(awd::metrics::BluetoothAccessoryDsp *this, const awd::metrics::BluetoothAccessoryDsp *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v59);
  }

  v4 = *(a2 + 24);
  if (v4)
  {
    wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 22, *(this + 24) + v4);
    memcpy((*(this + 11) + 4 * *(this + 24)), *(a2 + 11), 4 * *(a2 + 24));
    *(this + 24) += *(a2 + 24);
  }

  v5 = *(a2 + 28);
  if (v5)
  {
    wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 26, *(this + 28) + v5);
    memcpy((*(this + 13) + 4 * *(this + 28)), *(a2 + 13), 4 * *(a2 + 28));
    *(this + 28) += *(a2 + 28);
  }

  v6 = *(a2 + 36);
  if (v6)
  {
    wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 34, *(this + 36) + v6);
    memcpy((*(this + 17) + 4 * *(this + 36)), *(a2 + 17), 4 * *(a2 + 36));
    *(this + 36) += *(a2 + 36);
  }

  v7 = *(a2 + 42);
  if (v7)
  {
    wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 40, *(this + 42) + v7);
    memcpy((*(this + 20) + 4 * *(this + 42)), *(a2 + 20), 4 * *(a2 + 42));
    *(this + 42) += *(a2 + 42);
  }

  v8 = *(a2 + 46);
  if (v8)
  {
    wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 44, *(this + 46) + v8);
    memcpy((*(this + 22) + 4 * *(this + 46)), *(a2 + 22), 4 * *(a2 + 46));
    *(this + 46) += *(a2 + 46);
  }

  v9 = *(a2 + 52);
  if (v9)
  {
    wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 50, *(this + 52) + v9);
    memcpy((*(this + 25) + 4 * *(this + 52)), *(a2 + 25), 4 * *(a2 + 52));
    *(this + 52) += *(a2 + 52);
  }

  v10 = *(a2 + 56);
  if (v10)
  {
    wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 54, *(this + 56) + v10);
    memcpy((*(this + 27) + 4 * *(this + 56)), *(a2 + 27), 4 * *(a2 + 56));
    *(this + 56) += *(a2 + 56);
  }

  v11 = *(a2 + 60);
  if (v11)
  {
    wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 58, *(this + 60) + v11);
    memcpy((*(this + 29) + 4 * *(this + 60)), *(a2 + 29), 4 * *(a2 + 60));
    *(this + 60) += *(a2 + 60);
  }

  v12 = *(a2 + 68);
  if (v12)
  {
    wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 66, *(this + 68) + v12);
    memcpy((*(this + 33) + 4 * *(this + 68)), *(a2 + 33), 4 * *(a2 + 68));
    *(this + 68) += *(a2 + 68);
  }

  v13 = *(a2 + 72);
  if (v13)
  {
    wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 70, *(this + 72) + v13);
    memcpy((*(this + 35) + 4 * *(this + 72)), *(a2 + 35), 4 * *(a2 + 72));
    *(this + 72) += *(a2 + 72);
  }

  v14 = *(a2 + 76);
  if (v14)
  {
    wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 74, *(this + 76) + v14);
    memcpy((*(this + 37) + 4 * *(this + 76)), *(a2 + 37), 4 * *(a2 + 76));
    *(this + 76) += *(a2 + 76);
  }

  v15 = *(a2 + 80);
  if (v15)
  {
    wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 78, *(this + 80) + v15);
    memcpy((*(this + 39) + 4 * *(this + 80)), *(a2 + 39), 4 * *(a2 + 80));
    *(this + 80) += *(a2 + 80);
  }

  v16 = *(a2 + 84);
  if (v16)
  {
    wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 82, *(this + 84) + v16);
    memcpy((*(this + 41) + 4 * *(this + 84)), *(a2 + 41), 4 * *(a2 + 84));
    *(this + 84) += *(a2 + 84);
  }

  v17 = *(a2 + 88);
  if (v17)
  {
    wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 86, *(this + 88) + v17);
    memcpy((*(this + 43) + 4 * *(this + 88)), *(a2 + 43), 4 * *(a2 + 88));
    *(this + 88) += *(a2 + 88);
  }

  v18 = *(a2 + 92);
  if (v18)
  {
    wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 90, *(this + 92) + v18);
    memcpy((*(this + 45) + 4 * *(this + 92)), *(a2 + 45), 4 * *(a2 + 92));
    *(this + 92) += *(a2 + 92);
  }

  v19 = *(a2 + 96);
  if (v19)
  {
    wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 94, *(this + 96) + v19);
    memcpy((*(this + 47) + 4 * *(this + 96)), *(a2 + 47), 4 * *(a2 + 96));
    *(this + 96) += *(a2 + 96);
  }

  v20 = *(a2 + 100);
  if (v20)
  {
    wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 98, *(this + 100) + v20);
    memcpy((*(this + 49) + 4 * *(this + 100)), *(a2 + 49), 4 * *(a2 + 100));
    *(this + 100) += *(a2 + 100);
  }

  v21 = *(a2 + 106);
  if (v21)
  {
    wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 104, *(this + 106) + v21);
    memcpy((*(this + 52) + 4 * *(this + 106)), *(a2 + 52), 4 * *(a2 + 106));
    *(this + 106) += *(a2 + 106);
  }

  v22 = *(a2 + 111);
  if (!v22)
  {
    goto LABEL_49;
  }

  if (v22)
  {
    v30 = *(a2 + 1);
    *(this + 111) |= 1u;
    *(this + 1) = v30;
    v22 = *(a2 + 111);
    if ((v22 & 2) == 0)
    {
LABEL_42:
      if ((v22 & 4) == 0)
      {
        goto LABEL_43;
      }

      goto LABEL_89;
    }
  }

  else if ((v22 & 2) == 0)
  {
    goto LABEL_42;
  }

  v31 = *(a2 + 4);
  *(this + 111) |= 2u;
  *(this + 4) = v31;
  v22 = *(a2 + 111);
  if ((v22 & 4) == 0)
  {
LABEL_43:
    if ((v22 & 8) == 0)
    {
      goto LABEL_44;
    }

    goto LABEL_90;
  }

LABEL_89:
  v32 = *(a2 + 5);
  *(this + 111) |= 4u;
  *(this + 5) = v32;
  v22 = *(a2 + 111);
  if ((v22 & 8) == 0)
  {
LABEL_44:
    if ((v22 & 0x10) == 0)
    {
      goto LABEL_45;
    }

    goto LABEL_91;
  }

LABEL_90:
  v33 = *(a2 + 6);
  *(this + 111) |= 8u;
  *(this + 6) = v33;
  v22 = *(a2 + 111);
  if ((v22 & 0x10) == 0)
  {
LABEL_45:
    if ((v22 & 0x20) == 0)
    {
      goto LABEL_46;
    }

LABEL_92:
    v35 = *(a2 + 8);
    *(this + 111) |= 0x20u;
    *(this + 8) = v35;
    v22 = *(a2 + 111);
    if ((v22 & 0x40) == 0)
    {
LABEL_47:
      if ((v22 & 0x80) == 0)
      {
        goto LABEL_49;
      }

      goto LABEL_48;
    }

    goto LABEL_93;
  }

LABEL_91:
  v34 = *(a2 + 7);
  *(this + 111) |= 0x10u;
  *(this + 7) = v34;
  v22 = *(a2 + 111);
  if ((v22 & 0x20) != 0)
  {
    goto LABEL_92;
  }

LABEL_46:
  if ((v22 & 0x40) == 0)
  {
    goto LABEL_47;
  }

LABEL_93:
  v36 = *(a2 + 9);
  *(this + 111) |= 0x40u;
  *(this + 9) = v36;
  v22 = *(a2 + 111);
  if ((v22 & 0x80) != 0)
  {
LABEL_48:
    v23 = *(a2 + 10);
    *(this + 111) |= 0x80u;
    *(this + 10) = v23;
    v22 = *(a2 + 111);
  }

LABEL_49:
  if ((v22 & 0xFF00) == 0)
  {
    goto LABEL_59;
  }

  if ((v22 & 0x100) != 0)
  {
    v37 = *(a2 + 11);
    *(this + 111) |= 0x100u;
    *(this + 11) = v37;
    v22 = *(a2 + 111);
    if ((v22 & 0x200) == 0)
    {
LABEL_52:
      if ((v22 & 0x400) == 0)
      {
        goto LABEL_53;
      }

      goto LABEL_97;
    }
  }

  else if ((v22 & 0x200) == 0)
  {
    goto LABEL_52;
  }

  v38 = *(a2 + 12);
  *(this + 111) |= 0x200u;
  *(this + 12) = v38;
  v22 = *(a2 + 111);
  if ((v22 & 0x400) == 0)
  {
LABEL_53:
    if ((v22 & 0x800) == 0)
    {
      goto LABEL_54;
    }

    goto LABEL_98;
  }

LABEL_97:
  v39 = *(a2 + 13);
  *(this + 111) |= 0x400u;
  *(this + 13) = v39;
  v22 = *(a2 + 111);
  if ((v22 & 0x800) == 0)
  {
LABEL_54:
    if ((v22 & 0x1000) == 0)
    {
      goto LABEL_55;
    }

    goto LABEL_99;
  }

LABEL_98:
  v40 = *(a2 + 14);
  *(this + 111) |= 0x800u;
  *(this + 14) = v40;
  v22 = *(a2 + 111);
  if ((v22 & 0x1000) == 0)
  {
LABEL_55:
    if ((v22 & 0x2000) == 0)
    {
      goto LABEL_56;
    }

    goto LABEL_100;
  }

LABEL_99:
  v41 = *(a2 + 15);
  *(this + 111) |= 0x1000u;
  *(this + 15) = v41;
  v22 = *(a2 + 111);
  if ((v22 & 0x2000) == 0)
  {
LABEL_56:
    if ((v22 & 0x4000) == 0)
    {
      goto LABEL_57;
    }

    goto LABEL_101;
  }

LABEL_100:
  v42 = *(a2 + 16);
  *(this + 111) |= 0x2000u;
  *(this + 16) = v42;
  v22 = *(a2 + 111);
  if ((v22 & 0x4000) == 0)
  {
LABEL_57:
    if ((v22 & 0x8000) == 0)
    {
      goto LABEL_59;
    }

    goto LABEL_58;
  }

LABEL_101:
  v43 = *(a2 + 17);
  *(this + 111) |= 0x4000u;
  *(this + 17) = v43;
  v22 = *(a2 + 111);
  if ((v22 & 0x8000) != 0)
  {
LABEL_58:
    v24 = *(a2 + 18);
    *(this + 111) |= 0x8000u;
    *(this + 18) = v24;
    v22 = *(a2 + 111);
  }

LABEL_59:
  if ((v22 & 0xFF0000) == 0)
  {
    goto LABEL_67;
  }

  if ((v22 & 0x10000) != 0)
  {
    v44 = *(a2 + 19);
    *(this + 111) |= 0x10000u;
    *(this + 19) = v44;
    v22 = *(a2 + 111);
    if ((v22 & 0x20000) == 0)
    {
LABEL_62:
      if ((v22 & 0x40000) == 0)
      {
        goto LABEL_63;
      }

      goto LABEL_105;
    }
  }

  else if ((v22 & 0x20000) == 0)
  {
    goto LABEL_62;
  }

  v45 = *(a2 + 20);
  *(this + 111) |= 0x20000u;
  *(this + 20) = v45;
  v22 = *(a2 + 111);
  if ((v22 & 0x40000) == 0)
  {
LABEL_63:
    if ((v22 & 0x200000) == 0)
    {
      goto LABEL_64;
    }

    goto LABEL_106;
  }

LABEL_105:
  v46 = *(a2 + 21);
  *(this + 111) |= 0x40000u;
  *(this + 21) = v46;
  v22 = *(a2 + 111);
  if ((v22 & 0x200000) == 0)
  {
LABEL_64:
    if ((v22 & 0x400000) == 0)
    {
      goto LABEL_65;
    }

    goto LABEL_107;
  }

LABEL_106:
  v47 = *(a2 + 30);
  *(this + 111) |= 0x200000u;
  *(this + 30) = v47;
  v22 = *(a2 + 111);
  if ((v22 & 0x400000) == 0)
  {
LABEL_65:
    if ((v22 & 0x800000) == 0)
    {
      goto LABEL_67;
    }

    goto LABEL_66;
  }

LABEL_107:
  v48 = *(a2 + 31);
  *(this + 111) |= 0x400000u;
  *(this + 31) = v48;
  v22 = *(a2 + 111);
  if ((v22 & 0x800000) != 0)
  {
LABEL_66:
    v25 = *(a2 + 32);
    *(this + 111) |= 0x800000u;
    *(this + 32) = v25;
    v22 = *(a2 + 111);
  }

LABEL_67:
  if (!HIBYTE(v22))
  {
    goto LABEL_73;
  }

  if ((v22 & 0x1000000) != 0)
  {
    v56 = *(a2 + 33);
    *(this + 111) |= 0x1000000u;
    *(this + 33) = v56;
    v22 = *(a2 + 111);
    if ((v22 & 0x4000000) == 0)
    {
LABEL_70:
      if ((v22 & 0x8000000) == 0)
      {
        goto LABEL_71;
      }

      goto LABEL_120;
    }
  }

  else if ((v22 & 0x4000000) == 0)
  {
    goto LABEL_70;
  }

  v57 = *(a2 + 38);
  *(this + 111) |= 0x4000000u;
  *(this + 38) = v57;
  v22 = *(a2 + 111);
  if ((v22 & 0x8000000) == 0)
  {
LABEL_71:
    if ((v22 & 0x40000000) == 0)
    {
      goto LABEL_73;
    }

    goto LABEL_72;
  }

LABEL_120:
  v58 = *(a2 + 39);
  *(this + 111) |= 0x8000000u;
  *(this + 39) = v58;
  if ((*(a2 + 111) & 0x40000000) != 0)
  {
LABEL_72:
    v26 = *(a2 + 48);
    *(this + 111) |= 0x40000000u;
    *(this + 48) = v26;
  }

LABEL_73:
  v27 = *(a2 + 112);
  if (!v27)
  {
    goto LABEL_80;
  }

  if (v27)
  {
    v49 = *(a2 + 49);
    *(this + 112) |= 1u;
    *(this + 49) = v49;
    v27 = *(a2 + 112);
    if ((v27 & 8) == 0)
    {
LABEL_76:
      if ((v27 & 0x10) == 0)
      {
        goto LABEL_77;
      }

      goto LABEL_111;
    }
  }

  else if ((v27 & 8) == 0)
  {
    goto LABEL_76;
  }

  v50 = *(a2 + 62);
  *(this + 112) |= 8u;
  *(this + 62) = v50;
  v27 = *(a2 + 112);
  if ((v27 & 0x10) == 0)
  {
LABEL_77:
    if ((v27 & 0x20) == 0)
    {
      goto LABEL_78;
    }

    goto LABEL_112;
  }

LABEL_111:
  v51 = *(a2 + 63);
  *(this + 112) |= 0x10u;
  *(this + 63) = v51;
  v27 = *(a2 + 112);
  if ((v27 & 0x20) == 0)
  {
LABEL_78:
    if ((v27 & 0x40) == 0)
    {
      goto LABEL_80;
    }

    goto LABEL_79;
  }

LABEL_112:
  v52 = *(a2 + 64);
  *(this + 112) |= 0x20u;
  *(this + 64) = v52;
  v27 = *(a2 + 112);
  if ((v27 & 0x40) != 0)
  {
LABEL_79:
    v28 = *(a2 + 65);
    *(this + 112) |= 0x40u;
    *(this + 65) = v28;
    v27 = *(a2 + 112);
  }

LABEL_80:
  if ((v27 & 0xFF0000) == 0)
  {
    return;
  }

  if ((v27 & 0x10000) != 0)
  {
    v53 = *(a2 + 102);
    *(this + 112) |= 0x10000u;
    *(this + 102) = v53;
    v27 = *(a2 + 112);
    if ((v27 & 0x20000) == 0)
    {
LABEL_83:
      if ((v27 & 0x80000) == 0)
      {
        goto LABEL_84;
      }

      goto LABEL_116;
    }
  }

  else if ((v27 & 0x20000) == 0)
  {
    goto LABEL_83;
  }

  v54 = *(a2 + 103);
  *(this + 112) |= 0x20000u;
  *(this + 103) = v54;
  v27 = *(a2 + 112);
  if ((v27 & 0x80000) == 0)
  {
LABEL_84:
    if ((v27 & 0x100000) == 0)
    {
      return;
    }

    goto LABEL_85;
  }

LABEL_116:
  v55 = *(a2 + 108);
  *(this + 112) |= 0x80000u;
  *(this + 108) = v55;
  if ((*(a2 + 112) & 0x100000) != 0)
  {
LABEL_85:
    v29 = *(a2 + 109);
    *(this + 112) |= 0x100000u;
    *(this + 109) = v29;
  }
}

void sub_2963957BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::metrics::BluetoothAccessoryDsp::~BluetoothAccessoryDsp(awd::metrics::BluetoothAccessoryDsp *this)
{
  *this = &unk_2A1D4BB20;
  v2 = *(this + 52);
  if (v2)
  {
    MEMORY[0x29C259EE0](v2, 0x1000C8052888210);
  }

  v3 = *(this + 49);
  if (v3)
  {
    MEMORY[0x29C259EE0](v3, 0x1000C8052888210);
  }

  v4 = *(this + 47);
  if (v4)
  {
    MEMORY[0x29C259EE0](v4, 0x1000C8052888210);
  }

  v5 = *(this + 45);
  if (v5)
  {
    MEMORY[0x29C259EE0](v5, 0x1000C8052888210);
  }

  v6 = *(this + 43);
  if (v6)
  {
    MEMORY[0x29C259EE0](v6, 0x1000C8052888210);
  }

  v7 = *(this + 41);
  if (v7)
  {
    MEMORY[0x29C259EE0](v7, 0x1000C8052888210);
  }

  v8 = *(this + 39);
  if (v8)
  {
    MEMORY[0x29C259EE0](v8, 0x1000C8052888210);
  }

  v9 = *(this + 37);
  if (v9)
  {
    MEMORY[0x29C259EE0](v9, 0x1000C8052888210);
  }

  v10 = *(this + 35);
  if (v10)
  {
    MEMORY[0x29C259EE0](v10, 0x1000C8052888210);
  }

  v11 = *(this + 33);
  if (v11)
  {
    MEMORY[0x29C259EE0](v11, 0x1000C8052888210);
  }

  v12 = *(this + 29);
  if (v12)
  {
    MEMORY[0x29C259EE0](v12, 0x1000C8052888210);
  }

  v13 = *(this + 27);
  if (v13)
  {
    MEMORY[0x29C259EE0](v13, 0x1000C8052888210);
  }

  v14 = *(this + 25);
  if (v14)
  {
    MEMORY[0x29C259EE0](v14, 0x1000C8052888210);
  }

  v15 = *(this + 22);
  if (v15)
  {
    MEMORY[0x29C259EE0](v15, 0x1000C8052888210);
  }

  v16 = *(this + 20);
  if (v16)
  {
    MEMORY[0x29C259EE0](v16, 0x1000C8052888210);
  }

  v17 = *(this + 17);
  if (v17)
  {
    MEMORY[0x29C259EE0](v17, 0x1000C8052888210);
  }

  v18 = *(this + 13);
  if (v18)
  {
    MEMORY[0x29C259EE0](v18, 0x1000C8052888210);
  }

  v19 = *(this + 11);
  if (v19)
  {
    MEMORY[0x29C259EE0](v19, 0x1000C8052888210);
  }

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  awd::metrics::BluetoothAccessoryDsp::~BluetoothAccessoryDsp(this);

  JUMPOUT(0x29C259F00);
}

uint64_t awd::metrics::BluetoothAccessoryDsp::default_instance(awd::metrics::BluetoothAccessoryDsp *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = awd::metrics::BluetoothAccessoryDsp::default_instance_;
  if (!awd::metrics::BluetoothAccessoryDsp::default_instance_)
  {
    awd::metrics::protobuf_AddDesc_Bluetooth_2eproto(0, a2, a3, a4);
    return awd::metrics::BluetoothAccessoryDsp::default_instance_;
  }

  return result;
}

uint64_t awd::metrics::BluetoothAccessoryDsp::Clear(uint64_t this)
{
  v1 = *(this + 444);
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
    *(this + 84) = 0;
    *(this + 120) = 0;
    *(this + 128) = 0;
  }

  if (HIBYTE(v1))
  {
    *(this + 132) = 0;
    *(this + 152) = 0;
    *(this + 192) = 0;
  }

  v2 = *(this + 448);
  if (v2)
  {
    *(this + 196) = 0;
    *(this + 248) = 0;
    *(this + 256) = 0;
  }

  if ((v2 & 0xFF0000) != 0)
  {
    *(this + 408) = 0;
    *(this + 432) = 0;
  }

  *(this + 96) = 0;
  *(this + 112) = 0;
  *(this + 144) = 0;
  *(this + 168) = 0;
  *(this + 184) = 0;
  *(this + 208) = 0;
  *(this + 224) = 0;
  *(this + 240) = 0;
  *(this + 272) = 0;
  *(this + 288) = 0;
  *(this + 304) = 0;
  *(this + 320) = 0;
  *(this + 336) = 0;
  *(this + 352) = 0;
  *(this + 368) = 0;
  *(this + 384) = 0;
  *(this + 400) = 0;
  *(this + 424) = 0;
  *(this + 444) = 0;
  return this;
}

uint64_t awd::metrics::BluetoothAccessoryDsp::MergePartialFromCodedStream(awd::metrics::BluetoothAccessoryDsp *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
{
  v5 = (this + 256);
  v6 = (this + 260);
  v7 = (this + 408);
  v8 = (this + 412);
  v9 = (this + 432);
  v10 = (this + 436);
LABEL_2:
  while (2)
  {
    v11 = *(a2 + 1);
    if (v11 >= *(a2 + 2) || (TagFallback = *v11, (TagFallback & 0x80000000) != 0))
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
      *(a2 + 1) = v11 + 1;
      if (!TagFallback)
      {
        return 1;
      }
    }

    v13 = TagFallback & 7;
    switch(TagFallback >> 3)
    {
      case 1u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_151;
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

        *(this + 111) |= 1u;
        if (v17 < v14 && *v17 == 16)
        {
          v36 = v17 + 1;
          *(a2 + 1) = v36;
          goto LABEL_178;
        }

        continue;
      case 2u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_151;
        }

        v36 = *(a2 + 1);
        v14 = *(a2 + 2);
LABEL_178:
        if (v36 >= v14 || (v71 = *v36, v71 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 4);
          if (!result)
          {
            return result;
          }

          v72 = *(a2 + 1);
          v14 = *(a2 + 2);
        }

        else
        {
          *(this + 4) = v71;
          v72 = v36 + 1;
          *(a2 + 1) = v72;
        }

        *(this + 111) |= 2u;
        if (v72 >= v14 || *v72 != 24)
        {
          continue;
        }

        v32 = v72 + 1;
        *(a2 + 1) = v32;
LABEL_186:
        if (v32 >= v14 || (v73 = *v32, v73 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 5);
          if (!result)
          {
            return result;
          }

          v74 = *(a2 + 1);
          v14 = *(a2 + 2);
        }

        else
        {
          *(this + 5) = v73;
          v74 = v32 + 1;
          *(a2 + 1) = v74;
        }

        *(this + 111) |= 4u;
        if (v74 >= v14 || *v74 != 32)
        {
          continue;
        }

        v34 = v74 + 1;
        *(a2 + 1) = v34;
LABEL_194:
        if (v34 >= v14 || (v75 = *v34, v75 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 6);
          if (!result)
          {
            return result;
          }

          v76 = *(a2 + 1);
          v14 = *(a2 + 2);
        }

        else
        {
          *(this + 6) = v75;
          v76 = v34 + 1;
          *(a2 + 1) = v76;
        }

        *(this + 111) |= 8u;
        if (v76 >= v14 || *v76 != 40)
        {
          continue;
        }

        v28 = v76 + 1;
        *(a2 + 1) = v28;
LABEL_202:
        if (v28 >= v14 || (v77 = *v28, v77 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 7);
          if (!result)
          {
            return result;
          }

          v78 = *(a2 + 1);
          v14 = *(a2 + 2);
        }

        else
        {
          *(this + 7) = v77;
          v78 = v28 + 1;
          *(a2 + 1) = v78;
        }

        *(this + 111) |= 0x10u;
        if (v78 >= v14 || *v78 != 48)
        {
          continue;
        }

        v38 = v78 + 1;
        *(a2 + 1) = v38;
LABEL_210:
        if (v38 >= v14 || (v79 = *v38, v79 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 8);
          if (!result)
          {
            return result;
          }

          v80 = *(a2 + 1);
          v14 = *(a2 + 2);
        }

        else
        {
          *(this + 8) = v79;
          v80 = v38 + 1;
          *(a2 + 1) = v80;
        }

        *(this + 111) |= 0x20u;
        if (v80 >= v14 || *v80 != 56)
        {
          continue;
        }

        v41 = v80 + 1;
        *(a2 + 1) = v41;
LABEL_218:
        if (v41 >= v14 || (v81 = *v41, v81 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 9);
          if (!result)
          {
            return result;
          }

          v82 = *(a2 + 1);
          v14 = *(a2 + 2);
        }

        else
        {
          *(this + 9) = v81;
          v82 = v41 + 1;
          *(a2 + 1) = v82;
        }

        *(this + 111) |= 0x40u;
        if (v82 >= v14 || *v82 != 64)
        {
          continue;
        }

        v35 = v82 + 1;
        *(a2 + 1) = v35;
LABEL_226:
        if (v35 >= v14 || (v83 = *v35, v83 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 10);
          if (!result)
          {
            return result;
          }

          v84 = *(a2 + 1);
          v14 = *(a2 + 2);
        }

        else
        {
          *(this + 10) = v83;
          v84 = v35 + 1;
          *(a2 + 1) = v84;
        }

        *(this + 111) |= 0x80u;
        if (v84 >= v14 || *v84 != 72)
        {
          continue;
        }

        v44 = v84 + 1;
        *(a2 + 1) = v44;
LABEL_234:
        if (v44 >= v14 || (v85 = *v44, v85 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 11);
          if (!result)
          {
            return result;
          }

          v86 = *(a2 + 1);
          v14 = *(a2 + 2);
        }

        else
        {
          *(this + 11) = v85;
          v86 = v44 + 1;
          *(a2 + 1) = v86;
        }

        *(this + 111) |= 0x100u;
        if (v86 >= v14 || *v86 != 80)
        {
          continue;
        }

        v30 = v86 + 1;
        *(a2 + 1) = v30;
LABEL_242:
        if (v30 >= v14 || (v87 = *v30, v87 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 12);
          if (!result)
          {
            return result;
          }

          v88 = *(a2 + 1);
          v14 = *(a2 + 2);
        }

        else
        {
          *(this + 12) = v87;
          v88 = v30 + 1;
          *(a2 + 1) = v88;
        }

        *(this + 111) |= 0x200u;
        if (v88 >= v14 || *v88 != 88)
        {
          continue;
        }

        v43 = v88 + 1;
        *(a2 + 1) = v43;
LABEL_250:
        if (v43 >= v14 || (v89 = *v43, v89 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 13);
          if (!result)
          {
            return result;
          }

          v90 = *(a2 + 1);
          v14 = *(a2 + 2);
        }

        else
        {
          *(this + 13) = v89;
          v90 = v43 + 1;
          *(a2 + 1) = v90;
        }

        *(this + 111) |= 0x400u;
        if (v90 >= v14 || *v90 != 96)
        {
          continue;
        }

        v26 = v90 + 1;
        *(a2 + 1) = v26;
LABEL_258:
        if (v26 >= v14 || (v91 = *v26, v91 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 14);
          if (!result)
          {
            return result;
          }

          v92 = *(a2 + 1);
          v14 = *(a2 + 2);
        }

        else
        {
          *(this + 14) = v91;
          v92 = v26 + 1;
          *(a2 + 1) = v92;
        }

        *(this + 111) |= 0x800u;
        if (v92 >= v14 || *v92 != 104)
        {
          continue;
        }

        v29 = v92 + 1;
        *(a2 + 1) = v29;
LABEL_266:
        if (v29 >= v14 || (v93 = *v29, v93 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 15);
          if (!result)
          {
            return result;
          }

          v94 = *(a2 + 1);
          v14 = *(a2 + 2);
        }

        else
        {
          *(this + 15) = v93;
          v94 = v29 + 1;
          *(a2 + 1) = v94;
        }

        *(this + 111) |= 0x1000u;
        if (v94 >= v14 || *v94 != 112)
        {
          continue;
        }

        v40 = v94 + 1;
        *(a2 + 1) = v40;
LABEL_274:
        if (v40 >= v14 || (v95 = *v40, v95 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 16);
          if (!result)
          {
            return result;
          }

          v96 = *(a2 + 1);
          v14 = *(a2 + 2);
        }

        else
        {
          *(this + 16) = v95;
          v96 = v40 + 1;
          *(a2 + 1) = v96;
        }

        *(this + 111) |= 0x2000u;
        if (v96 >= v14 || *v96 != 120)
        {
          continue;
        }

        v24 = v96 + 1;
        *(a2 + 1) = v24;
LABEL_282:
        if (v24 >= v14 || (v97 = *v24, v97 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 17);
          if (!result)
          {
            return result;
          }

          v98 = *(a2 + 1);
          v14 = *(a2 + 2);
        }

        else
        {
          *(this + 17) = v97;
          v98 = (v24 + 1);
          *(a2 + 1) = v98;
        }

        *(this + 111) |= 0x4000u;
        if (v14 - v98 < 2 || *v98 != 128 || v98[1] != 1)
        {
          continue;
        }

        v33 = (v98 + 2);
        *(a2 + 1) = v33;
LABEL_291:
        if (v33 >= v14 || (v99 = *v33, v99 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 18);
          if (!result)
          {
            return result;
          }

          v100 = *(a2 + 1);
          v14 = *(a2 + 2);
        }

        else
        {
          *(this + 18) = v99;
          v100 = (v33 + 1);
          *(a2 + 1) = v100;
        }

        *(this + 111) |= 0x8000u;
        if (v14 - v100 < 2 || *v100 != 136 || v100[1] != 1)
        {
          continue;
        }

        v23 = (v100 + 2);
        *(a2 + 1) = v23;
LABEL_300:
        if (v23 >= v14 || (v101 = *v23, v101 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 19);
          if (!result)
          {
            return result;
          }

          v102 = *(a2 + 1);
          v14 = *(a2 + 2);
        }

        else
        {
          *(this + 19) = v101;
          v102 = (v23 + 1);
          *(a2 + 1) = v102;
        }

        *(this + 111) |= 0x10000u;
        if (v14 - v102 < 2 || *v102 != 144 || v102[1] != 1)
        {
          continue;
        }

        v37 = (v102 + 2);
        *(a2 + 1) = v37;
LABEL_309:
        if (v37 >= v14 || (v103 = *v37, v103 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 20);
          if (!result)
          {
            return result;
          }

          v104 = *(a2 + 1);
          v14 = *(a2 + 2);
        }

        else
        {
          *(this + 20) = v103;
          v104 = (v37 + 1);
          *(a2 + 1) = v104;
        }

        *(this + 111) |= 0x20000u;
        if (v14 - v104 < 2 || *v104 != 152 || v104[1] != 1)
        {
          continue;
        }

        v42 = (v104 + 2);
        *(a2 + 1) = v42;
LABEL_318:
        if (v42 >= v14 || (v105 = *v42, v105 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 21);
          if (!result)
          {
            return result;
          }

          v106 = *(a2 + 1);
          v14 = *(a2 + 2);
        }

        else
        {
          *(this + 21) = v105;
          v106 = (v42 + 1);
          *(a2 + 1) = v106;
        }

        *(this + 111) |= 0x40000u;
        if (v14 - v106 >= 2 && *v106 == 160 && v106[1] == 1)
        {
          goto LABEL_326;
        }

        continue;
      case 3u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_151;
        }

        v32 = *(a2 + 1);
        v14 = *(a2 + 2);
        goto LABEL_186;
      case 4u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_151;
        }

        v34 = *(a2 + 1);
        v14 = *(a2 + 2);
        goto LABEL_194;
      case 5u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_151;
        }

        v28 = *(a2 + 1);
        v14 = *(a2 + 2);
        goto LABEL_202;
      case 6u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_151;
        }

        v38 = *(a2 + 1);
        v14 = *(a2 + 2);
        goto LABEL_210;
      case 7u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_151;
        }

        v41 = *(a2 + 1);
        v14 = *(a2 + 2);
        goto LABEL_218;
      case 8u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_151;
        }

        v35 = *(a2 + 1);
        v14 = *(a2 + 2);
        goto LABEL_226;
      case 9u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_151;
        }

        v44 = *(a2 + 1);
        v14 = *(a2 + 2);
        goto LABEL_234;
      case 0xAu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_151;
        }

        v30 = *(a2 + 1);
        v14 = *(a2 + 2);
        goto LABEL_242;
      case 0xBu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_151;
        }

        v43 = *(a2 + 1);
        v14 = *(a2 + 2);
        goto LABEL_250;
      case 0xCu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_151;
        }

        v26 = *(a2 + 1);
        v14 = *(a2 + 2);
        goto LABEL_258;
      case 0xDu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_151;
        }

        v29 = *(a2 + 1);
        v14 = *(a2 + 2);
        goto LABEL_266;
      case 0xEu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_151;
        }

        v40 = *(a2 + 1);
        v14 = *(a2 + 2);
        goto LABEL_274;
      case 0xFu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_151;
        }

        v24 = *(a2 + 1);
        v14 = *(a2 + 2);
        goto LABEL_282;
      case 0x10u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_151;
        }

        v33 = *(a2 + 1);
        v14 = *(a2 + 2);
        goto LABEL_291;
      case 0x11u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_151;
        }

        v23 = *(a2 + 1);
        v14 = *(a2 + 2);
        goto LABEL_300;
      case 0x12u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_151;
        }

        v37 = *(a2 + 1);
        v14 = *(a2 + 2);
        goto LABEL_309;
      case 0x13u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_151;
        }

        v42 = *(a2 + 1);
        v14 = *(a2 + 2);
        goto LABEL_318;
      case 0x14u:
        if ((TagFallback & 7) != 0)
        {
          if (v13 == 2)
          {
            result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadPackedPrimitiveNoInline<unsigned int,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)13>(a2, this + 11);
            if (!result)
            {
              return result;
            }

            goto LABEL_345;
          }

LABEL_151:
          if (v13 == 4)
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
          v66 = *(a2 + 1);
          v14 = *(a2 + 2);
          while (1)
          {
            v337 = 0;
            if (v66 >= v14 || *v66 < 0)
            {
              if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v337))
              {
                return 0;
              }
            }

            else
            {
              v337 = *v66;
              *(a2 + 1) = v66 + 1;
            }

            v107 = *(this + 24);
            if (v107 == *(this + 25))
            {
              wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 22, v107 + 1);
              v107 = *(this + 24);
            }

            v108 = v337;
            v109 = *(this + 11);
            *(this + 24) = v107 + 1;
            *(v109 + 4 * v107) = v108;
            v110 = *(this + 25) - *(this + 24);
            if (v110 >= 1)
            {
              v111 = v110 + 1;
              do
              {
                v112 = *(a2 + 1);
                v113 = *(a2 + 2);
                if (v113 - v112 < 2 || *v112 != 160 || v112[1] != 1)
                {
                  break;
                }

                *(a2 + 1) = v112 + 2;
                if ((v112 + 2) >= v113 || v112[2] < 0)
                {
                  if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v337))
                  {
                    return 0;
                  }
                }

                else
                {
                  v337 = v112[2];
                  *(a2 + 1) = v112 + 3;
                }

                v114 = *(this + 24);
                if (v114 >= *(this + 25))
                {
                  wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                  wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                  wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v338);
                  v114 = *(this + 24);
                }

                v115 = v337;
                v116 = *(this + 11);
                *(this + 24) = v114 + 1;
                *(v116 + 4 * v114) = v115;
                --v111;
              }

              while (v111 > 1);
            }

LABEL_345:
            v106 = *(a2 + 1);
            v14 = *(a2 + 2);
            if (v14 - v106 < 2)
            {
              goto LABEL_2;
            }

            v117 = *v106;
            if (v117 == 168)
            {
              break;
            }

            if (v117 != 160 || v106[1] != 1)
            {
              goto LABEL_2;
            }

LABEL_326:
            v66 = (v106 + 2);
            *(a2 + 1) = v66;
          }

          if (v106[1] == 1)
          {
            while (1)
            {
              v63 = (v106 + 2);
              *(a2 + 1) = v63;
LABEL_352:
              v337 = 0;
              if (v63 >= v14 || *v63 < 0)
              {
                if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v337))
                {
                  return 0;
                }
              }

              else
              {
                v337 = *v63;
                *(a2 + 1) = v63 + 1;
              }

              v118 = *(this + 28);
              if (v118 == *(this + 29))
              {
                wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 26, v118 + 1);
                v118 = *(this + 28);
              }

              v119 = v337;
              v120 = *(this + 13);
              *(this + 28) = v118 + 1;
              *(v120 + 4 * v118) = v119;
              v121 = *(this + 29) - *(this + 28);
              if (v121 >= 1)
              {
                v122 = v121 + 1;
                do
                {
                  v123 = *(a2 + 1);
                  v124 = *(a2 + 2);
                  if (v124 - v123 < 2 || *v123 != 168 || v123[1] != 1)
                  {
                    break;
                  }

                  *(a2 + 1) = v123 + 2;
                  if ((v123 + 2) >= v124 || v123[2] < 0)
                  {
                    if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v337))
                    {
                      return 0;
                    }
                  }

                  else
                  {
                    v337 = v123[2];
                    *(a2 + 1) = v123 + 3;
                  }

                  v125 = *(this + 28);
                  if (v125 >= *(this + 29))
                  {
                    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v338);
                    v125 = *(this + 28);
                  }

                  v126 = v337;
                  v127 = *(this + 13);
                  *(this + 28) = v125 + 1;
                  *(v127 + 4 * v125) = v126;
                  --v122;
                }

                while (v122 > 1);
              }

LABEL_370:
              v106 = *(a2 + 1);
              v14 = *(a2 + 2);
              if (v14 - v106 < 2)
              {
                goto LABEL_2;
              }

              v128 = *v106;
              if (v128 == 176)
              {
                break;
              }

              if (v128 != 168 || v106[1] != 1)
              {
                goto LABEL_2;
              }
            }

            if (v106[1] == 1)
            {
              v39 = (v106 + 2);
              *(a2 + 1) = v39;
LABEL_377:
              if (v39 >= v14 || (v129 = *v39, v129 < 0))
              {
                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 30);
                if (!result)
                {
                  return result;
                }

                v130 = *(a2 + 1);
                v14 = *(a2 + 2);
              }

              else
              {
                *(this + 30) = v129;
                v130 = (v39 + 1);
                *(a2 + 1) = v130;
              }

              *(this + 111) |= 0x200000u;
              if (v14 - v130 >= 2 && *v130 == 184 && v130[1] == 1)
              {
                v47 = (v130 + 2);
                *(a2 + 1) = v47;
LABEL_386:
                if (v47 >= v14 || (v131 = *v47, v131 < 0))
                {
                  result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 31);
                  if (!result)
                  {
                    return result;
                  }

                  v132 = *(a2 + 1);
                  v14 = *(a2 + 2);
                }

                else
                {
                  *(this + 31) = v131;
                  v132 = (v47 + 1);
                  *(a2 + 1) = v132;
                }

                *(this + 111) |= 0x400000u;
                if (v14 - v132 >= 2 && *v132 == 192 && v132[1] == 1)
                {
                  v48 = (v132 + 2);
                  *(a2 + 1) = v48;
LABEL_395:
                  if (v48 >= v14 || (v133 = *v48, v133 < 0))
                  {
                    result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 32);
                    if (!result)
                    {
                      return result;
                    }

                    v134 = *(a2 + 1);
                    v14 = *(a2 + 2);
                  }

                  else
                  {
                    *(this + 32) = v133;
                    v134 = (v48 + 1);
                    *(a2 + 1) = v134;
                  }

                  *(this + 111) |= 0x800000u;
                  if (v14 - v134 >= 2 && *v134 == 200 && v134[1] == 1)
                  {
                    v31 = (v134 + 2);
                    *(a2 + 1) = v31;
LABEL_404:
                    if (v31 >= v14 || (v135 = *v31, v135 < 0))
                    {
                      result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 33);
                      if (!result)
                      {
                        return result;
                      }

                      v136 = *(a2 + 1);
                      v14 = *(a2 + 2);
                    }

                    else
                    {
                      *(this + 33) = v135;
                      v136 = (v31 + 1);
                      *(a2 + 1) = v136;
                    }

                    *(this + 111) |= 0x1000000u;
                    if (v14 - v136 >= 2 && *v136 == 208 && v136[1] == 1)
                    {
                      while (1)
                      {
                        v60 = (v136 + 2);
                        *(a2 + 1) = v60;
LABEL_413:
                        v337 = 0;
                        if (v60 >= v14 || *v60 < 0)
                        {
                          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v337))
                          {
                            return 0;
                          }
                        }

                        else
                        {
                          v337 = *v60;
                          *(a2 + 1) = v60 + 1;
                        }

                        v137 = *(this + 36);
                        if (v137 == *(this + 37))
                        {
                          wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 34, v137 + 1);
                          v137 = *(this + 36);
                        }

                        v138 = v337;
                        v139 = *(this + 17);
                        *(this + 36) = v137 + 1;
                        *(v139 + 4 * v137) = v138;
                        v140 = *(this + 37) - *(this + 36);
                        if (v140 >= 1)
                        {
                          v141 = v140 + 1;
                          do
                          {
                            v142 = *(a2 + 1);
                            v143 = *(a2 + 2);
                            if (v143 - v142 < 2 || *v142 != 208 || v142[1] != 1)
                            {
                              break;
                            }

                            *(a2 + 1) = v142 + 2;
                            if ((v142 + 2) >= v143 || v142[2] < 0)
                            {
                              if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v337))
                              {
                                return 0;
                              }
                            }

                            else
                            {
                              v337 = v142[2];
                              *(a2 + 1) = v142 + 3;
                            }

                            v144 = *(this + 36);
                            if (v144 >= *(this + 37))
                            {
                              wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                              wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                              wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                              wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v338);
                              v144 = *(this + 36);
                            }

                            v145 = v337;
                            v146 = *(this + 17);
                            *(this + 36) = v144 + 1;
                            *(v146 + 4 * v144) = v145;
                            --v141;
                          }

                          while (v141 > 1);
                        }

LABEL_431:
                        v136 = *(a2 + 1);
                        v14 = *(a2 + 2);
                        if (v14 - v136 < 2)
                        {
                          goto LABEL_2;
                        }

                        v147 = *v136;
                        if (v147 == 216)
                        {
                          break;
                        }

                        if (v147 != 208 || v136[1] != 1)
                        {
                          goto LABEL_2;
                        }
                      }

                      if (v136[1] == 1)
                      {
                        v50 = (v136 + 2);
                        *(a2 + 1) = v50;
LABEL_438:
                        if (v50 >= v14 || (v148 = *v50, v148 < 0))
                        {
                          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 38);
                          if (!result)
                          {
                            return result;
                          }

                          v149 = *(a2 + 1);
                          v14 = *(a2 + 2);
                        }

                        else
                        {
                          *(this + 38) = v148;
                          v149 = (v50 + 1);
                          *(a2 + 1) = v149;
                        }

                        *(this + 111) |= 0x4000000u;
                        if (v14 - v149 >= 2 && *v149 == 224 && v149[1] == 1)
                        {
                          v22 = (v149 + 2);
                          *(a2 + 1) = v22;
LABEL_447:
                          if (v22 >= v14 || (v150 = *v22, v150 < 0))
                          {
                            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 39);
                            if (!result)
                            {
                              return result;
                            }

                            v151 = *(a2 + 1);
                            v14 = *(a2 + 2);
                          }

                          else
                          {
                            *(this + 39) = v150;
                            v151 = (v22 + 1);
                            *(a2 + 1) = v151;
                          }

                          *(this + 111) |= 0x8000000u;
                          if (v14 - v151 >= 2 && *v151 == 232 && v151[1] == 1)
                          {
                            while (1)
                            {
                              v68 = (v151 + 2);
                              *(a2 + 1) = v68;
LABEL_456:
                              v337 = 0;
                              if (v68 >= v14 || *v68 < 0)
                              {
                                if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v337))
                                {
                                  return 0;
                                }
                              }

                              else
                              {
                                v337 = *v68;
                                *(a2 + 1) = v68 + 1;
                              }

                              v152 = *(this + 42);
                              if (v152 == *(this + 43))
                              {
                                wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 40, v152 + 1);
                                v152 = *(this + 42);
                              }

                              v153 = v337;
                              v154 = *(this + 20);
                              *(this + 42) = v152 + 1;
                              *(v154 + 4 * v152) = v153;
                              v155 = *(this + 43) - *(this + 42);
                              if (v155 >= 1)
                              {
                                v156 = v155 + 1;
                                do
                                {
                                  v157 = *(a2 + 1);
                                  v158 = *(a2 + 2);
                                  if (v158 - v157 < 2 || *v157 != 232 || v157[1] != 1)
                                  {
                                    break;
                                  }

                                  *(a2 + 1) = v157 + 2;
                                  if ((v157 + 2) >= v158 || v157[2] < 0)
                                  {
                                    if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v337))
                                    {
                                      return 0;
                                    }
                                  }

                                  else
                                  {
                                    v337 = v157[2];
                                    *(a2 + 1) = v157 + 3;
                                  }

                                  v159 = *(this + 42);
                                  if (v159 >= *(this + 43))
                                  {
                                    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                                    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                                    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                                    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v338);
                                    v159 = *(this + 42);
                                  }

                                  v160 = v337;
                                  v161 = *(this + 20);
                                  *(this + 42) = v159 + 1;
                                  *(v161 + 4 * v159) = v160;
                                  --v156;
                                }

                                while (v156 > 1);
                              }

LABEL_474:
                              v151 = *(a2 + 1);
                              v14 = *(a2 + 2);
                              if (v14 - v151 < 2)
                              {
                                goto LABEL_2;
                              }

                              v162 = *v151;
                              if (v162 == 240)
                              {
                                break;
                              }

                              if (v162 != 232 || v151[1] != 1)
                              {
                                goto LABEL_2;
                              }
                            }

                            if (v151[1] == 1)
                            {
                              while (1)
                              {
                                v69 = (v151 + 2);
                                *(a2 + 1) = v69;
LABEL_481:
                                v337 = 0;
                                if (v69 >= v14 || *v69 < 0)
                                {
                                  if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v337))
                                  {
                                    return 0;
                                  }
                                }

                                else
                                {
                                  v337 = *v69;
                                  *(a2 + 1) = v69 + 1;
                                }

                                v163 = *(this + 46);
                                if (v163 == *(this + 47))
                                {
                                  wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 44, v163 + 1);
                                  v163 = *(this + 46);
                                }

                                v164 = v337;
                                v165 = *(this + 22);
                                *(this + 46) = v163 + 1;
                                *(v165 + 4 * v163) = v164;
                                v166 = *(this + 47) - *(this + 46);
                                if (v166 >= 1)
                                {
                                  v167 = v166 + 1;
                                  do
                                  {
                                    v168 = *(a2 + 1);
                                    v169 = *(a2 + 2);
                                    if (v169 - v168 < 2 || *v168 != 240 || v168[1] != 1)
                                    {
                                      break;
                                    }

                                    *(a2 + 1) = v168 + 2;
                                    if ((v168 + 2) >= v169 || v168[2] < 0)
                                    {
                                      if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v337))
                                      {
                                        return 0;
                                      }
                                    }

                                    else
                                    {
                                      v337 = v168[2];
                                      *(a2 + 1) = v168 + 3;
                                    }

                                    v170 = *(this + 46);
                                    if (v170 >= *(this + 47))
                                    {
                                      wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                                      wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                                      wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                                      wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v338);
                                      v170 = *(this + 46);
                                    }

                                    v171 = v337;
                                    v172 = *(this + 22);
                                    *(this + 46) = v170 + 1;
                                    *(v172 + 4 * v170) = v171;
                                    --v167;
                                  }

                                  while (v167 > 1);
                                }

LABEL_499:
                                v151 = *(a2 + 1);
                                v14 = *(a2 + 2);
                                if (v14 - v151 < 2)
                                {
                                  goto LABEL_2;
                                }

                                v173 = *v151;
                                if (v173 == 248)
                                {
                                  break;
                                }

                                if (v173 != 240 || v151[1] != 1)
                                {
                                  goto LABEL_2;
                                }
                              }

                              if (v151[1] == 1)
                              {
                                v45 = (v151 + 2);
                                *(a2 + 1) = v45;
LABEL_506:
                                if (v45 >= v14 || (v174 = *v45, v174 < 0))
                                {
                                  result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 48);
                                  if (!result)
                                  {
                                    return result;
                                  }

                                  v175 = *(a2 + 1);
                                  v14 = *(a2 + 2);
                                }

                                else
                                {
                                  *(this + 48) = v174;
                                  v175 = (v45 + 1);
                                  *(a2 + 1) = v175;
                                }

                                *(this + 111) |= 0x40000000u;
                                if (v14 - v175 >= 2 && *v175 == 128 && v175[1] == 2)
                                {
                                  while (1)
                                  {
                                    v61 = (v175 + 2);
                                    *(a2 + 1) = v61;
LABEL_515:
                                    v337 = 0;
                                    if (v61 >= v14 || *v61 < 0)
                                    {
                                      if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v337))
                                      {
                                        return 0;
                                      }
                                    }

                                    else
                                    {
                                      v337 = *v61;
                                      *(a2 + 1) = v61 + 1;
                                    }

                                    v176 = *(this + 52);
                                    if (v176 == *(this + 53))
                                    {
                                      wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 50, v176 + 1);
                                      v176 = *(this + 52);
                                    }

                                    v177 = v337;
                                    v178 = *(this + 25);
                                    *(this + 52) = v176 + 1;
                                    *(v178 + 4 * v176) = v177;
                                    v179 = *(this + 53) - *(this + 52);
                                    if (v179 >= 1)
                                    {
                                      v180 = v179 + 1;
                                      do
                                      {
                                        v181 = *(a2 + 1);
                                        v182 = *(a2 + 2);
                                        if (v182 - v181 < 2 || *v181 != 128 || v181[1] != 2)
                                        {
                                          break;
                                        }

                                        *(a2 + 1) = v181 + 2;
                                        if ((v181 + 2) >= v182 || v181[2] < 0)
                                        {
                                          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v337))
                                          {
                                            return 0;
                                          }
                                        }

                                        else
                                        {
                                          v337 = v181[2];
                                          *(a2 + 1) = v181 + 3;
                                        }

                                        v183 = *(this + 52);
                                        if (v183 >= *(this + 53))
                                        {
                                          wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                                          wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                                          wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                                          wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v338);
                                          v183 = *(this + 52);
                                        }

                                        v184 = v337;
                                        v185 = *(this + 25);
                                        *(this + 52) = v183 + 1;
                                        *(v185 + 4 * v183) = v184;
                                        --v180;
                                      }

                                      while (v180 > 1);
                                    }

LABEL_533:
                                    v175 = *(a2 + 1);
                                    v14 = *(a2 + 2);
                                    if (v14 - v175 < 2)
                                    {
                                      goto LABEL_2;
                                    }

                                    v186 = *v175;
                                    if (v186 == 136)
                                    {
                                      break;
                                    }

                                    if (v186 != 128 || v175[1] != 2)
                                    {
                                      goto LABEL_2;
                                    }
                                  }

                                  if (v175[1] == 2)
                                  {
                                    v46 = (v175 + 2);
                                    *(a2 + 1) = v46;
LABEL_540:
                                    if (v46 >= v14 || (v187 = *v46, v187 < 0))
                                    {
                                      result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 49);
                                      if (!result)
                                      {
                                        return result;
                                      }

                                      v188 = *(a2 + 1);
                                      v14 = *(a2 + 2);
                                    }

                                    else
                                    {
                                      *(this + 49) = v187;
                                      v188 = (v46 + 1);
                                      *(a2 + 1) = v188;
                                    }

                                    *(this + 112) |= 1u;
                                    if (v14 - v188 >= 2 && *v188 == 144 && v188[1] == 2)
                                    {
                                      while (1)
                                      {
                                        v58 = (v188 + 2);
                                        *(a2 + 1) = v58;
LABEL_549:
                                        v337 = 0;
                                        if (v58 >= v14 || *v58 < 0)
                                        {
                                          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v337))
                                          {
                                            return 0;
                                          }
                                        }

                                        else
                                        {
                                          v337 = *v58;
                                          *(a2 + 1) = v58 + 1;
                                        }

                                        v189 = *(this + 56);
                                        if (v189 == *(this + 57))
                                        {
                                          wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 54, v189 + 1);
                                          v189 = *(this + 56);
                                        }

                                        v190 = v337;
                                        v191 = *(this + 27);
                                        *(this + 56) = v189 + 1;
                                        *(v191 + 4 * v189) = v190;
                                        v192 = *(this + 57) - *(this + 56);
                                        if (v192 >= 1)
                                        {
                                          v193 = v192 + 1;
                                          do
                                          {
                                            v194 = *(a2 + 1);
                                            v195 = *(a2 + 2);
                                            if (v195 - v194 < 2 || *v194 != 144 || v194[1] != 2)
                                            {
                                              break;
                                            }

                                            *(a2 + 1) = v194 + 2;
                                            if ((v194 + 2) >= v195 || v194[2] < 0)
                                            {
                                              if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v337))
                                              {
                                                return 0;
                                              }
                                            }

                                            else
                                            {
                                              v337 = v194[2];
                                              *(a2 + 1) = v194 + 3;
                                            }

                                            v196 = *(this + 56);
                                            if (v196 >= *(this + 57))
                                            {
                                              wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                                              wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                                              wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                                              wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v338);
                                              v196 = *(this + 56);
                                            }

                                            v197 = v337;
                                            v198 = *(this + 27);
                                            *(this + 56) = v196 + 1;
                                            *(v198 + 4 * v196) = v197;
                                            --v193;
                                          }

                                          while (v193 > 1);
                                        }

LABEL_567:
                                        v188 = *(a2 + 1);
                                        v14 = *(a2 + 2);
                                        if (v14 - v188 < 2)
                                        {
                                          goto LABEL_2;
                                        }

                                        v199 = *v188;
                                        if (v199 == 152)
                                        {
                                          break;
                                        }

                                        if (v199 != 144 || v188[1] != 2)
                                        {
                                          goto LABEL_2;
                                        }
                                      }

                                      if (v188[1] == 2)
                                      {
                                        while (1)
                                        {
                                          v56 = (v188 + 2);
                                          *(a2 + 1) = v56;
LABEL_574:
                                          v337 = 0;
                                          if (v56 >= v14 || *v56 < 0)
                                          {
                                            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v337))
                                            {
                                              return 0;
                                            }
                                          }

                                          else
                                          {
                                            v337 = *v56;
                                            *(a2 + 1) = v56 + 1;
                                          }

                                          v200 = *(this + 60);
                                          if (v200 == *(this + 61))
                                          {
                                            wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 58, v200 + 1);
                                            v200 = *(this + 60);
                                          }

                                          v201 = v337;
                                          v202 = *(this + 29);
                                          *(this + 60) = v200 + 1;
                                          *(v202 + 4 * v200) = v201;
                                          v203 = *(this + 61) - *(this + 60);
                                          if (v203 >= 1)
                                          {
                                            v204 = v203 + 1;
                                            do
                                            {
                                              v205 = *(a2 + 1);
                                              v206 = *(a2 + 2);
                                              if (v206 - v205 < 2 || *v205 != 152 || v205[1] != 2)
                                              {
                                                break;
                                              }

                                              *(a2 + 1) = v205 + 2;
                                              if ((v205 + 2) >= v206 || v205[2] < 0)
                                              {
                                                if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v337))
                                                {
                                                  return 0;
                                                }
                                              }

                                              else
                                              {
                                                v337 = v205[2];
                                                *(a2 + 1) = v205 + 3;
                                              }

                                              v207 = *(this + 60);
                                              if (v207 >= *(this + 61))
                                              {
                                                wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                                                wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                                                wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                                                wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v338);
                                                v207 = *(this + 60);
                                              }

                                              v208 = v337;
                                              v209 = *(this + 29);
                                              *(this + 60) = v207 + 1;
                                              *(v209 + 4 * v207) = v208;
                                              --v204;
                                            }

                                            while (v204 > 1);
                                          }

LABEL_592:
                                          v188 = *(a2 + 1);
                                          v14 = *(a2 + 2);
                                          if (v14 - v188 < 2)
                                          {
                                            goto LABEL_2;
                                          }

                                          v210 = *v188;
                                          if (v210 == 160)
                                          {
                                            break;
                                          }

                                          if (v210 != 152 || v188[1] != 2)
                                          {
                                            goto LABEL_2;
                                          }
                                        }

                                        if (v188[1] == 2)
                                        {
                                          v20 = (v188 + 2);
                                          *(a2 + 1) = v20;
LABEL_599:
                                          if (v20 >= v14 || (v211 = *v20, v211 < 0))
                                          {
                                            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 62);
                                            if (!result)
                                            {
                                              return result;
                                            }

                                            v212 = *(a2 + 1);
                                            v14 = *(a2 + 2);
                                          }

                                          else
                                          {
                                            *(this + 62) = v211;
                                            v212 = (v20 + 1);
                                            *(a2 + 1) = v212;
                                          }

                                          *(this + 112) |= 8u;
                                          if (v14 - v212 >= 2 && *v212 == 168 && v212[1] == 2)
                                          {
                                            v21 = (v212 + 2);
                                            *(a2 + 1) = v21;
LABEL_608:
                                            if (v21 >= v14 || (v213 = *v21, v213 < 0))
                                            {
                                              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 63);
                                              if (!result)
                                              {
                                                return result;
                                              }

                                              v214 = *(a2 + 1);
                                              v14 = *(a2 + 2);
                                            }

                                            else
                                            {
                                              *(this + 63) = v213;
                                              v214 = (v21 + 1);
                                              *(a2 + 1) = v214;
                                            }

                                            *(this + 112) |= 0x10u;
                                            if (v14 - v214 >= 2 && *v214 == 176 && v214[1] == 2)
                                            {
                                              v19 = (v214 + 2);
                                              *(a2 + 1) = v19;
LABEL_617:
                                              if (v19 >= v14 || (v215 = *v19, (v215 & 0x80000000) != 0))
                                              {
                                                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v5);
                                                if (!result)
                                                {
                                                  return result;
                                                }

                                                v216 = *(a2 + 1);
                                                v14 = *(a2 + 2);
                                              }

                                              else
                                              {
                                                *v5 = v215;
                                                v216 = (v19 + 1);
                                                *(a2 + 1) = v216;
                                              }

                                              *(this + 112) |= 0x20u;
                                              if (v14 - v216 >= 2 && *v216 == 184 && v216[1] == 2)
                                              {
                                                v49 = (v216 + 2);
                                                *(a2 + 1) = v49;
LABEL_626:
                                                if (v49 >= v14 || (v217 = *v49, (v217 & 0x80000000) != 0))
                                                {
                                                  result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v6);
                                                  if (!result)
                                                  {
                                                    return result;
                                                  }

                                                  v218 = *(a2 + 1);
                                                  v14 = *(a2 + 2);
                                                }

                                                else
                                                {
                                                  *v6 = v217;
                                                  v218 = (v49 + 1);
                                                  *(a2 + 1) = v218;
                                                }

                                                *(this + 112) |= 0x40u;
                                                if (v14 - v218 >= 2 && *v218 == 192 && v218[1] == 2)
                                                {
                                                  while (1)
                                                  {
                                                    v65 = (v218 + 2);
                                                    *(a2 + 1) = v65;
LABEL_635:
                                                    v337 = 0;
                                                    if (v65 >= v14 || *v65 < 0)
                                                    {
                                                      if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v337))
                                                      {
                                                        return 0;
                                                      }
                                                    }

                                                    else
                                                    {
                                                      v337 = *v65;
                                                      *(a2 + 1) = v65 + 1;
                                                    }

                                                    v219 = *(this + 68);
                                                    if (v219 == *(this + 69))
                                                    {
                                                      wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 66, v219 + 1);
                                                      v219 = *(this + 68);
                                                    }

                                                    v220 = v337;
                                                    v221 = *(this + 33);
                                                    *(this + 68) = v219 + 1;
                                                    *(v221 + 4 * v219) = v220;
                                                    v222 = *(this + 69) - *(this + 68);
                                                    if (v222 >= 1)
                                                    {
                                                      v223 = v222 + 1;
                                                      do
                                                      {
                                                        v224 = *(a2 + 1);
                                                        v225 = *(a2 + 2);
                                                        if (v225 - v224 < 2 || *v224 != 192 || v224[1] != 2)
                                                        {
                                                          break;
                                                        }

                                                        *(a2 + 1) = v224 + 2;
                                                        if ((v224 + 2) >= v225 || v224[2] < 0)
                                                        {
                                                          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v337))
                                                          {
                                                            return 0;
                                                          }
                                                        }

                                                        else
                                                        {
                                                          v337 = v224[2];
                                                          *(a2 + 1) = v224 + 3;
                                                        }

                                                        v226 = *(this + 68);
                                                        if (v226 >= *(this + 69))
                                                        {
                                                          wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                                                          wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                                                          wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                                                          wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v338);
                                                          v226 = *(this + 68);
                                                        }

                                                        v227 = v337;
                                                        v228 = *(this + 33);
                                                        *(this + 68) = v226 + 1;
                                                        *(v228 + 4 * v226) = v227;
                                                        --v223;
                                                      }

                                                      while (v223 > 1);
                                                    }

LABEL_653:
                                                    v218 = *(a2 + 1);
                                                    v14 = *(a2 + 2);
                                                    if (v14 - v218 < 2)
                                                    {
                                                      goto LABEL_2;
                                                    }

                                                    v229 = *v218;
                                                    if (v229 == 200)
                                                    {
                                                      break;
                                                    }

                                                    if (v229 != 192 || v218[1] != 2)
                                                    {
                                                      goto LABEL_2;
                                                    }
                                                  }

                                                  if (v218[1] == 2)
                                                  {
                                                    while (1)
                                                    {
                                                      v59 = (v218 + 2);
                                                      *(a2 + 1) = v59;
LABEL_660:
                                                      v337 = 0;
                                                      if (v59 >= v14 || *v59 < 0)
                                                      {
                                                        if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v337))
                                                        {
                                                          return 0;
                                                        }
                                                      }

                                                      else
                                                      {
                                                        v337 = *v59;
                                                        *(a2 + 1) = v59 + 1;
                                                      }

                                                      v230 = *(this + 72);
                                                      if (v230 == *(this + 73))
                                                      {
                                                        wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 70, v230 + 1);
                                                        v230 = *(this + 72);
                                                      }

                                                      v231 = v337;
                                                      v232 = *(this + 35);
                                                      *(this + 72) = v230 + 1;
                                                      *(v232 + 4 * v230) = v231;
                                                      v233 = *(this + 73) - *(this + 72);
                                                      if (v233 >= 1)
                                                      {
                                                        v234 = v233 + 1;
                                                        do
                                                        {
                                                          v235 = *(a2 + 1);
                                                          v236 = *(a2 + 2);
                                                          if (v236 - v235 < 2 || *v235 != 200 || v235[1] != 2)
                                                          {
                                                            break;
                                                          }

                                                          *(a2 + 1) = v235 + 2;
                                                          if ((v235 + 2) >= v236 || v235[2] < 0)
                                                          {
                                                            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v337))
                                                            {
                                                              return 0;
                                                            }
                                                          }

                                                          else
                                                          {
                                                            v337 = v235[2];
                                                            *(a2 + 1) = v235 + 3;
                                                          }

                                                          v237 = *(this + 72);
                                                          if (v237 >= *(this + 73))
                                                          {
                                                            wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                                                            wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                                                            wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                                                            wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v338);
                                                            v237 = *(this + 72);
                                                          }

                                                          v238 = v337;
                                                          v239 = *(this + 35);
                                                          *(this + 72) = v237 + 1;
                                                          *(v239 + 4 * v237) = v238;
                                                          --v234;
                                                        }

                                                        while (v234 > 1);
                                                      }

LABEL_678:
                                                      v218 = *(a2 + 1);
                                                      v14 = *(a2 + 2);
                                                      if (v14 - v218 < 2)
                                                      {
                                                        goto LABEL_2;
                                                      }

                                                      v240 = *v218;
                                                      if (v240 == 208)
                                                      {
                                                        break;
                                                      }

                                                      if (v240 != 200 || v218[1] != 2)
                                                      {
                                                        goto LABEL_2;
                                                      }
                                                    }

                                                    if (v218[1] == 2)
                                                    {
                                                      while (1)
                                                      {
                                                        v62 = (v218 + 2);
                                                        *(a2 + 1) = v62;
LABEL_685:
                                                        v337 = 0;
                                                        if (v62 >= v14 || *v62 < 0)
                                                        {
                                                          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v337))
                                                          {
                                                            return 0;
                                                          }
                                                        }

                                                        else
                                                        {
                                                          v337 = *v62;
                                                          *(a2 + 1) = v62 + 1;
                                                        }

                                                        v241 = *(this + 76);
                                                        if (v241 == *(this + 77))
                                                        {
                                                          wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 74, v241 + 1);
                                                          v241 = *(this + 76);
                                                        }

                                                        v242 = v337;
                                                        v243 = *(this + 37);
                                                        *(this + 76) = v241 + 1;
                                                        *(v243 + 4 * v241) = v242;
                                                        v244 = *(this + 77) - *(this + 76);
                                                        if (v244 >= 1)
                                                        {
                                                          v245 = v244 + 1;
                                                          do
                                                          {
                                                            v246 = *(a2 + 1);
                                                            v247 = *(a2 + 2);
                                                            if (v247 - v246 < 2 || *v246 != 208 || v246[1] != 2)
                                                            {
                                                              break;
                                                            }

                                                            *(a2 + 1) = v246 + 2;
                                                            if ((v246 + 2) >= v247 || v246[2] < 0)
                                                            {
                                                              if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v337))
                                                              {
                                                                return 0;
                                                              }
                                                            }

                                                            else
                                                            {
                                                              v337 = v246[2];
                                                              *(a2 + 1) = v246 + 3;
                                                            }

                                                            v248 = *(this + 76);
                                                            if (v248 >= *(this + 77))
                                                            {
                                                              wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                                                              wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                                                              wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                                                              wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v338);
                                                              v248 = *(this + 76);
                                                            }

                                                            v249 = v337;
                                                            v250 = *(this + 37);
                                                            *(this + 76) = v248 + 1;
                                                            *(v250 + 4 * v248) = v249;
                                                            --v245;
                                                          }

                                                          while (v245 > 1);
                                                        }

LABEL_703:
                                                        v218 = *(a2 + 1);
                                                        v14 = *(a2 + 2);
                                                        if (v14 - v218 < 2)
                                                        {
                                                          goto LABEL_2;
                                                        }

                                                        v251 = *v218;
                                                        if (v251 == 216)
                                                        {
                                                          break;
                                                        }

                                                        if (v251 != 208 || v218[1] != 2)
                                                        {
                                                          goto LABEL_2;
                                                        }
                                                      }

                                                      if (v218[1] == 2)
                                                      {
                                                        while (1)
                                                        {
                                                          v67 = (v218 + 2);
                                                          *(a2 + 1) = v67;
LABEL_710:
                                                          v337 = 0;
                                                          if (v67 >= v14 || *v67 < 0)
                                                          {
                                                            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v337))
                                                            {
                                                              return 0;
                                                            }
                                                          }

                                                          else
                                                          {
                                                            v337 = *v67;
                                                            *(a2 + 1) = v67 + 1;
                                                          }

                                                          v252 = *(this + 80);
                                                          if (v252 == *(this + 81))
                                                          {
                                                            wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 78, v252 + 1);
                                                            v252 = *(this + 80);
                                                          }

                                                          v253 = v337;
                                                          v254 = *(this + 39);
                                                          *(this + 80) = v252 + 1;
                                                          *(v254 + 4 * v252) = v253;
                                                          v255 = *(this + 81) - *(this + 80);
                                                          if (v255 >= 1)
                                                          {
                                                            v256 = v255 + 1;
                                                            do
                                                            {
                                                              v257 = *(a2 + 1);
                                                              v258 = *(a2 + 2);
                                                              if (v258 - v257 < 2 || *v257 != 216 || v257[1] != 2)
                                                              {
                                                                break;
                                                              }

                                                              *(a2 + 1) = v257 + 2;
                                                              if ((v257 + 2) >= v258 || v257[2] < 0)
                                                              {
                                                                if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v337))
                                                                {
                                                                  return 0;
                                                                }
                                                              }

                                                              else
                                                              {
                                                                v337 = v257[2];
                                                                *(a2 + 1) = v257 + 3;
                                                              }

                                                              v259 = *(this + 80);
                                                              if (v259 >= *(this + 81))
                                                              {
                                                                wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                                                                wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                                                                wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                                                                wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v338);
                                                                v259 = *(this + 80);
                                                              }

                                                              v260 = v337;
                                                              v261 = *(this + 39);
                                                              *(this + 80) = v259 + 1;
                                                              *(v261 + 4 * v259) = v260;
                                                              --v256;
                                                            }

                                                            while (v256 > 1);
                                                          }

LABEL_728:
                                                          v218 = *(a2 + 1);
                                                          v14 = *(a2 + 2);
                                                          if (v14 - v218 < 2)
                                                          {
                                                            goto LABEL_2;
                                                          }

                                                          v262 = *v218;
                                                          if (v262 == 224)
                                                          {
                                                            break;
                                                          }

                                                          if (v262 != 216 || v218[1] != 2)
                                                          {
                                                            goto LABEL_2;
                                                          }
                                                        }

                                                        if (v218[1] == 2)
                                                        {
                                                          while (1)
                                                          {
                                                            v54 = (v218 + 2);
                                                            *(a2 + 1) = v54;
LABEL_735:
                                                            v337 = 0;
                                                            if (v54 >= v14 || *v54 < 0)
                                                            {
                                                              if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v337))
                                                              {
                                                                return 0;
                                                              }
                                                            }

                                                            else
                                                            {
                                                              v337 = *v54;
                                                              *(a2 + 1) = v54 + 1;
                                                            }

                                                            v263 = *(this + 84);
                                                            if (v263 == *(this + 85))
                                                            {
                                                              wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 82, v263 + 1);
                                                              v263 = *(this + 84);
                                                            }

                                                            v264 = v337;
                                                            v265 = *(this + 41);
                                                            *(this + 84) = v263 + 1;
                                                            *(v265 + 4 * v263) = v264;
                                                            v266 = *(this + 85) - *(this + 84);
                                                            if (v266 >= 1)
                                                            {
                                                              v267 = v266 + 1;
                                                              do
                                                              {
                                                                v268 = *(a2 + 1);
                                                                v269 = *(a2 + 2);
                                                                if (v269 - v268 < 2 || *v268 != 224 || v268[1] != 2)
                                                                {
                                                                  break;
                                                                }

                                                                *(a2 + 1) = v268 + 2;
                                                                if ((v268 + 2) >= v269 || v268[2] < 0)
                                                                {
                                                                  if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v337))
                                                                  {
                                                                    return 0;
                                                                  }
                                                                }

                                                                else
                                                                {
                                                                  v337 = v268[2];
                                                                  *(a2 + 1) = v268 + 3;
                                                                }

                                                                v270 = *(this + 84);
                                                                if (v270 >= *(this + 85))
                                                                {
                                                                  wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                                                                  wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                                                                  wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                                                                  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v338);
                                                                  v270 = *(this + 84);
                                                                }

                                                                v271 = v337;
                                                                v272 = *(this + 41);
                                                                *(this + 84) = v270 + 1;
                                                                *(v272 + 4 * v270) = v271;
                                                                --v267;
                                                              }

                                                              while (v267 > 1);
                                                            }

LABEL_753:
                                                            v218 = *(a2 + 1);
                                                            v14 = *(a2 + 2);
                                                            if (v14 - v218 < 2)
                                                            {
                                                              goto LABEL_2;
                                                            }

                                                            v273 = *v218;
                                                            if (v273 == 232)
                                                            {
                                                              break;
                                                            }

                                                            if (v273 != 224 || v218[1] != 2)
                                                            {
                                                              goto LABEL_2;
                                                            }
                                                          }

                                                          if (v218[1] == 2)
                                                          {
                                                            while (1)
                                                            {
                                                              v57 = (v218 + 2);
                                                              *(a2 + 1) = v57;
LABEL_760:
                                                              v337 = 0;
                                                              if (v57 >= v14 || *v57 < 0)
                                                              {
                                                                if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v337))
                                                                {
                                                                  return 0;
                                                                }
                                                              }

                                                              else
                                                              {
                                                                v337 = *v57;
                                                                *(a2 + 1) = v57 + 1;
                                                              }

                                                              v274 = *(this + 88);
                                                              if (v274 == *(this + 89))
                                                              {
                                                                wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 86, v274 + 1);
                                                                v274 = *(this + 88);
                                                              }

                                                              v275 = v337;
                                                              v276 = *(this + 43);
                                                              *(this + 88) = v274 + 1;
                                                              *(v276 + 4 * v274) = v275;
                                                              v277 = *(this + 89) - *(this + 88);
                                                              if (v277 >= 1)
                                                              {
                                                                v278 = v277 + 1;
                                                                do
                                                                {
                                                                  v279 = *(a2 + 1);
                                                                  v280 = *(a2 + 2);
                                                                  if (v280 - v279 < 2 || *v279 != 232 || v279[1] != 2)
                                                                  {
                                                                    break;
                                                                  }

                                                                  *(a2 + 1) = v279 + 2;
                                                                  if ((v279 + 2) >= v280 || v279[2] < 0)
                                                                  {
                                                                    if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v337))
                                                                    {
                                                                      return 0;
                                                                    }
                                                                  }

                                                                  else
                                                                  {
                                                                    v337 = v279[2];
                                                                    *(a2 + 1) = v279 + 3;
                                                                  }

                                                                  v281 = *(this + 88);
                                                                  if (v281 >= *(this + 89))
                                                                  {
                                                                    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                                                                    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                                                                    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                                                                    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v338);
                                                                    v281 = *(this + 88);
                                                                  }

                                                                  v282 = v337;
                                                                  v283 = *(this + 43);
                                                                  *(this + 88) = v281 + 1;
                                                                  *(v283 + 4 * v281) = v282;
                                                                  --v278;
                                                                }

                                                                while (v278 > 1);
                                                              }

LABEL_778:
                                                              v218 = *(a2 + 1);
                                                              v14 = *(a2 + 2);
                                                              if (v14 - v218 < 2)
                                                              {
                                                                goto LABEL_2;
                                                              }

                                                              v284 = *v218;
                                                              if (v284 == 240)
                                                              {
                                                                break;
                                                              }

                                                              if (v284 != 232 || v218[1] != 2)
                                                              {
                                                                goto LABEL_2;
                                                              }
                                                            }

                                                            if (v218[1] == 2)
                                                            {
                                                              while (1)
                                                              {
                                                                v64 = (v218 + 2);
                                                                *(a2 + 1) = v64;
LABEL_785:
                                                                v337 = 0;
                                                                if (v64 >= v14 || *v64 < 0)
                                                                {
                                                                  if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v337))
                                                                  {
                                                                    return 0;
                                                                  }
                                                                }

                                                                else
                                                                {
                                                                  v337 = *v64;
                                                                  *(a2 + 1) = v64 + 1;
                                                                }

                                                                v285 = *(this + 92);
                                                                if (v285 == *(this + 93))
                                                                {
                                                                  wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 90, v285 + 1);
                                                                  v285 = *(this + 92);
                                                                }

                                                                v286 = v337;
                                                                v287 = *(this + 45);
                                                                *(this + 92) = v285 + 1;
                                                                *(v287 + 4 * v285) = v286;
                                                                v288 = *(this + 93) - *(this + 92);
                                                                if (v288 >= 1)
                                                                {
                                                                  v289 = v288 + 1;
                                                                  do
                                                                  {
                                                                    v290 = *(a2 + 1);
                                                                    v291 = *(a2 + 2);
                                                                    if (v291 - v290 < 2 || *v290 != 240 || v290[1] != 2)
                                                                    {
                                                                      break;
                                                                    }

                                                                    *(a2 + 1) = v290 + 2;
                                                                    if ((v290 + 2) >= v291 || v290[2] < 0)
                                                                    {
                                                                      if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v337))
                                                                      {
                                                                        return 0;
                                                                      }
                                                                    }

                                                                    else
                                                                    {
                                                                      v337 = v290[2];
                                                                      *(a2 + 1) = v290 + 3;
                                                                    }

                                                                    v292 = *(this + 92);
                                                                    if (v292 >= *(this + 93))
                                                                    {
                                                                      wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                                                                      wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                                                                      wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                                                                      wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v338);
                                                                      v292 = *(this + 92);
                                                                    }

                                                                    v293 = v337;
                                                                    v294 = *(this + 45);
                                                                    *(this + 92) = v292 + 1;
                                                                    *(v294 + 4 * v292) = v293;
                                                                    --v289;
                                                                  }

                                                                  while (v289 > 1);
                                                                }

LABEL_803:
                                                                v218 = *(a2 + 1);
                                                                v14 = *(a2 + 2);
                                                                if (v14 - v218 < 2)
                                                                {
                                                                  goto LABEL_2;
                                                                }

                                                                v295 = *v218;
                                                                if (v295 == 248)
                                                                {
                                                                  break;
                                                                }

                                                                if (v295 != 240 || v218[1] != 2)
                                                                {
                                                                  goto LABEL_2;
                                                                }
                                                              }

                                                              if (v218[1] == 2)
                                                              {
                                                                while (1)
                                                                {
                                                                  v70 = (v218 + 2);
                                                                  *(a2 + 1) = v70;
LABEL_810:
                                                                  v337 = 0;
                                                                  if (v70 >= v14 || *v70 < 0)
                                                                  {
                                                                    if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v337))
                                                                    {
                                                                      return 0;
                                                                    }
                                                                  }

                                                                  else
                                                                  {
                                                                    v337 = *v70;
                                                                    *(a2 + 1) = v70 + 1;
                                                                  }

                                                                  v296 = *(this + 96);
                                                                  if (v296 == *(this + 97))
                                                                  {
                                                                    wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 94, v296 + 1);
                                                                    v296 = *(this + 96);
                                                                  }

                                                                  v297 = v337;
                                                                  v298 = *(this + 47);
                                                                  *(this + 96) = v296 + 1;
                                                                  *(v298 + 4 * v296) = v297;
                                                                  v299 = *(this + 97) - *(this + 96);
                                                                  if (v299 >= 1)
                                                                  {
                                                                    v300 = v299 + 1;
                                                                    do
                                                                    {
                                                                      v301 = *(a2 + 1);
                                                                      v302 = *(a2 + 2);
                                                                      if (v302 - v301 < 2 || *v301 != 248 || v301[1] != 2)
                                                                      {
                                                                        break;
                                                                      }

                                                                      *(a2 + 1) = v301 + 2;
                                                                      if ((v301 + 2) >= v302 || v301[2] < 0)
                                                                      {
                                                                        if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v337))
                                                                        {
                                                                          return 0;
                                                                        }
                                                                      }

                                                                      else
                                                                      {
                                                                        v337 = v301[2];
                                                                        *(a2 + 1) = v301 + 3;
                                                                      }

                                                                      v303 = *(this + 96);
                                                                      if (v303 >= *(this + 97))
                                                                      {
                                                                        wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                                                                        wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                                                                        wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                                                                        wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v338);
                                                                        v303 = *(this + 96);
                                                                      }

                                                                      v304 = v337;
                                                                      v305 = *(this + 47);
                                                                      *(this + 96) = v303 + 1;
                                                                      *(v305 + 4 * v303) = v304;
                                                                      --v300;
                                                                    }

                                                                    while (v300 > 1);
                                                                  }

LABEL_828:
                                                                  v218 = *(a2 + 1);
                                                                  v14 = *(a2 + 2);
                                                                  if (v14 - v218 < 2)
                                                                  {
                                                                    goto LABEL_2;
                                                                  }

                                                                  v306 = *v218;
                                                                  if (v306 == 128)
                                                                  {
                                                                    break;
                                                                  }

                                                                  if (v306 != 248 || v218[1] != 2)
                                                                  {
                                                                    goto LABEL_2;
                                                                  }
                                                                }

                                                                if (v218[1] == 3)
                                                                {
                                                                  while (1)
                                                                  {
                                                                    v55 = (v218 + 2);
                                                                    *(a2 + 1) = v55;
LABEL_835:
                                                                    v337 = 0;
                                                                    if (v55 >= v14 || *v55 < 0)
                                                                    {
                                                                      if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v337))
                                                                      {
                                                                        return 0;
                                                                      }
                                                                    }

                                                                    else
                                                                    {
                                                                      v337 = *v55;
                                                                      *(a2 + 1) = v55 + 1;
                                                                    }

                                                                    v307 = *(this + 100);
                                                                    if (v307 == *(this + 101))
                                                                    {
                                                                      wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 98, v307 + 1);
                                                                      v307 = *(this + 100);
                                                                    }

                                                                    v308 = v337;
                                                                    v309 = *(this + 49);
                                                                    *(this + 100) = v307 + 1;
                                                                    *(v309 + 4 * v307) = v308;
                                                                    v310 = *(this + 101) - *(this + 100);
                                                                    if (v310 >= 1)
                                                                    {
                                                                      v311 = v310 + 1;
                                                                      do
                                                                      {
                                                                        v312 = *(a2 + 1);
                                                                        v313 = *(a2 + 2);
                                                                        if (v313 - v312 < 2 || *v312 != 128 || v312[1] != 3)
                                                                        {
                                                                          break;
                                                                        }

                                                                        *(a2 + 1) = v312 + 2;
                                                                        if ((v312 + 2) >= v313 || v312[2] < 0)
                                                                        {
                                                                          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v337))
                                                                          {
                                                                            return 0;
                                                                          }
                                                                        }

                                                                        else
                                                                        {
                                                                          v337 = v312[2];
                                                                          *(a2 + 1) = v312 + 3;
                                                                        }

                                                                        v314 = *(this + 100);
                                                                        if (v314 >= *(this + 101))
                                                                        {
                                                                          wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                                                                          wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                                                                          wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                                                                          wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v338);
                                                                          v314 = *(this + 100);
                                                                        }

                                                                        v315 = v337;
                                                                        v316 = *(this + 49);
                                                                        *(this + 100) = v314 + 1;
                                                                        *(v316 + 4 * v314) = v315;
                                                                        --v311;
                                                                      }

                                                                      while (v311 > 1);
                                                                    }

LABEL_853:
                                                                    v218 = *(a2 + 1);
                                                                    v14 = *(a2 + 2);
                                                                    if (v14 - v218 < 2)
                                                                    {
                                                                      goto LABEL_2;
                                                                    }

                                                                    v317 = *v218;
                                                                    if (v317 == 136)
                                                                    {
                                                                      break;
                                                                    }

                                                                    if (v317 != 128 || v218[1] != 3)
                                                                    {
                                                                      goto LABEL_2;
                                                                    }
                                                                  }

                                                                  if (v218[1] == 3)
                                                                  {
                                                                    v25 = (v218 + 2);
                                                                    *(a2 + 1) = v25;
LABEL_860:
                                                                    if (v25 >= v14 || (v318 = *v25, (v318 & 0x80000000) != 0))
                                                                    {
                                                                      result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v7);
                                                                      if (!result)
                                                                      {
                                                                        return result;
                                                                      }

                                                                      v319 = *(a2 + 1);
                                                                      v14 = *(a2 + 2);
                                                                    }

                                                                    else
                                                                    {
                                                                      *v7 = v318;
                                                                      v319 = (v25 + 1);
                                                                      *(a2 + 1) = v319;
                                                                    }

                                                                    *(this + 112) |= 0x10000u;
                                                                    if (v14 - v319 >= 2 && *v319 == 144 && v319[1] == 3)
                                                                    {
                                                                      v27 = (v319 + 2);
                                                                      *(a2 + 1) = v27;
LABEL_869:
                                                                      if (v27 >= v14 || (v320 = *v27, (v320 & 0x80000000) != 0))
                                                                      {
                                                                        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v8);
                                                                        if (!result)
                                                                        {
                                                                          return result;
                                                                        }

                                                                        v321 = *(a2 + 1);
                                                                        v14 = *(a2 + 2);
                                                                      }

                                                                      else
                                                                      {
                                                                        *v8 = v320;
                                                                        v321 = (v27 + 1);
                                                                        *(a2 + 1) = v321;
                                                                      }

                                                                      *(this + 112) |= 0x20000u;
                                                                      if (v14 - v321 >= 2 && *v321 == 152 && v321[1] == 3)
                                                                      {
LABEL_877:
                                                                        v53 = (v321 + 2);
                                                                        *(a2 + 1) = v53;
                                                                        goto LABEL_878;
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
      case 0x15u:
        if ((TagFallback & 7) == 0)
        {
          v63 = *(a2 + 1);
          v14 = *(a2 + 2);
          goto LABEL_352;
        }

        if (v13 != 2)
        {
          goto LABEL_151;
        }

        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadPackedPrimitiveNoInline<unsigned int,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)13>(a2, this + 13);
        if (!result)
        {
          return result;
        }

        goto LABEL_370;
      case 0x16u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_151;
        }

        v39 = *(a2 + 1);
        v14 = *(a2 + 2);
        goto LABEL_377;
      case 0x17u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_151;
        }

        v47 = *(a2 + 1);
        v14 = *(a2 + 2);
        goto LABEL_386;
      case 0x18u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_151;
        }

        v48 = *(a2 + 1);
        v14 = *(a2 + 2);
        goto LABEL_395;
      case 0x19u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_151;
        }

        v31 = *(a2 + 1);
        v14 = *(a2 + 2);
        goto LABEL_404;
      case 0x1Au:
        if ((TagFallback & 7) == 0)
        {
          v60 = *(a2 + 1);
          v14 = *(a2 + 2);
          goto LABEL_413;
        }

        if (v13 != 2)
        {
          goto LABEL_151;
        }

        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadPackedPrimitiveNoInline<unsigned int,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)13>(a2, this + 17);
        if (!result)
        {
          return result;
        }

        goto LABEL_431;
      case 0x1Bu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_151;
        }

        v50 = *(a2 + 1);
        v14 = *(a2 + 2);
        goto LABEL_438;
      case 0x1Cu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_151;
        }

        v22 = *(a2 + 1);
        v14 = *(a2 + 2);
        goto LABEL_447;
      case 0x1Du:
        if ((TagFallback & 7) == 0)
        {
          v68 = *(a2 + 1);
          v14 = *(a2 + 2);
          goto LABEL_456;
        }

        if (v13 != 2)
        {
          goto LABEL_151;
        }

        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadPackedPrimitiveNoInline<unsigned int,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)13>(a2, this + 20);
        if (!result)
        {
          return result;
        }

        goto LABEL_474;
      case 0x1Eu:
        if ((TagFallback & 7) == 0)
        {
          v69 = *(a2 + 1);
          v14 = *(a2 + 2);
          goto LABEL_481;
        }

        if (v13 != 2)
        {
          goto LABEL_151;
        }

        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadPackedPrimitiveNoInline<unsigned int,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)13>(a2, this + 22);
        if (!result)
        {
          return result;
        }

        goto LABEL_499;
      case 0x1Fu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_151;
        }

        v45 = *(a2 + 1);
        v14 = *(a2 + 2);
        goto LABEL_506;
      case 0x20u:
        if ((TagFallback & 7) == 0)
        {
          v61 = *(a2 + 1);
          v14 = *(a2 + 2);
          goto LABEL_515;
        }

        if (v13 != 2)
        {
          goto LABEL_151;
        }

        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadPackedPrimitiveNoInline<unsigned int,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)13>(a2, this + 25);
        if (!result)
        {
          return result;
        }

        goto LABEL_533;
      case 0x21u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_151;
        }

        v46 = *(a2 + 1);
        v14 = *(a2 + 2);
        goto LABEL_540;
      case 0x22u:
        if ((TagFallback & 7) == 0)
        {
          v58 = *(a2 + 1);
          v14 = *(a2 + 2);
          goto LABEL_549;
        }

        if (v13 != 2)
        {
          goto LABEL_151;
        }

        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadPackedPrimitiveNoInline<unsigned int,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)13>(a2, this + 27);
        if (!result)
        {
          return result;
        }

        goto LABEL_567;
      case 0x23u:
        if ((TagFallback & 7) == 0)
        {
          v56 = *(a2 + 1);
          v14 = *(a2 + 2);
          goto LABEL_574;
        }

        if (v13 != 2)
        {
          goto LABEL_151;
        }

        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadPackedPrimitiveNoInline<unsigned int,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)13>(a2, this + 29);
        if (!result)
        {
          return result;
        }

        goto LABEL_592;
      case 0x24u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_151;
        }

        v20 = *(a2 + 1);
        v14 = *(a2 + 2);
        goto LABEL_599;
      case 0x25u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_151;
        }

        v21 = *(a2 + 1);
        v14 = *(a2 + 2);
        goto LABEL_608;
      case 0x26u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_151;
        }

        v19 = *(a2 + 1);
        v14 = *(a2 + 2);
        goto LABEL_617;
      case 0x27u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_151;
        }

        v49 = *(a2 + 1);
        v14 = *(a2 + 2);
        goto LABEL_626;
      case 0x28u:
        if ((TagFallback & 7) == 0)
        {
          v65 = *(a2 + 1);
          v14 = *(a2 + 2);
          goto LABEL_635;
        }

        if (v13 != 2)
        {
          goto LABEL_151;
        }

        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadPackedPrimitiveNoInline<unsigned int,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)13>(a2, this + 33);
        if (!result)
        {
          return result;
        }

        goto LABEL_653;
      case 0x29u:
        if ((TagFallback & 7) == 0)
        {
          v59 = *(a2 + 1);
          v14 = *(a2 + 2);
          goto LABEL_660;
        }

        if (v13 != 2)
        {
          goto LABEL_151;
        }

        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadPackedPrimitiveNoInline<unsigned int,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)13>(a2, this + 35);
        if (!result)
        {
          return result;
        }

        goto LABEL_678;
      case 0x2Au:
        if ((TagFallback & 7) == 0)
        {
          v62 = *(a2 + 1);
          v14 = *(a2 + 2);
          goto LABEL_685;
        }

        if (v13 != 2)
        {
          goto LABEL_151;
        }

        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadPackedPrimitiveNoInline<unsigned int,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)13>(a2, this + 37);
        if (!result)
        {
          return result;
        }

        goto LABEL_703;
      case 0x2Bu:
        if ((TagFallback & 7) == 0)
        {
          v67 = *(a2 + 1);
          v14 = *(a2 + 2);
          goto LABEL_710;
        }

        if (v13 != 2)
        {
          goto LABEL_151;
        }

        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadPackedPrimitiveNoInline<unsigned int,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)13>(a2, this + 39);
        if (!result)
        {
          return result;
        }

        goto LABEL_728;
      case 0x2Cu:
        if ((TagFallback & 7) == 0)
        {
          v54 = *(a2 + 1);
          v14 = *(a2 + 2);
          goto LABEL_735;
        }

        if (v13 != 2)
        {
          goto LABEL_151;
        }

        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadPackedPrimitiveNoInline<unsigned int,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)13>(a2, this + 41);
        if (!result)
        {
          return result;
        }

        goto LABEL_753;
      case 0x2Du:
        if ((TagFallback & 7) == 0)
        {
          v57 = *(a2 + 1);
          v14 = *(a2 + 2);
          goto LABEL_760;
        }

        if (v13 != 2)
        {
          goto LABEL_151;
        }

        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadPackedPrimitiveNoInline<unsigned int,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)13>(a2, this + 43);
        if (!result)
        {
          return result;
        }

        goto LABEL_778;
      case 0x2Eu:
        if ((TagFallback & 7) == 0)
        {
          v64 = *(a2 + 1);
          v14 = *(a2 + 2);
          goto LABEL_785;
        }

        if (v13 != 2)
        {
          goto LABEL_151;
        }

        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadPackedPrimitiveNoInline<unsigned int,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)13>(a2, this + 45);
        if (!result)
        {
          return result;
        }

        goto LABEL_803;
      case 0x2Fu:
        if ((TagFallback & 7) == 0)
        {
          v70 = *(a2 + 1);
          v14 = *(a2 + 2);
          goto LABEL_810;
        }

        if (v13 != 2)
        {
          goto LABEL_151;
        }

        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadPackedPrimitiveNoInline<unsigned int,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)13>(a2, this + 47);
        if (!result)
        {
          return result;
        }

        goto LABEL_828;
      case 0x30u:
        if ((TagFallback & 7) == 0)
        {
          v55 = *(a2 + 1);
          v14 = *(a2 + 2);
          goto LABEL_835;
        }

        if (v13 != 2)
        {
          goto LABEL_151;
        }

        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadPackedPrimitiveNoInline<unsigned int,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)13>(a2, this + 49);
        if (!result)
        {
          return result;
        }

        goto LABEL_853;
      case 0x31u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_151;
        }

        v25 = *(a2 + 1);
        v14 = *(a2 + 2);
        goto LABEL_860;
      case 0x32u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_151;
        }

        v27 = *(a2 + 1);
        v14 = *(a2 + 2);
        goto LABEL_869;
      case 0x33u:
        if ((TagFallback & 7) != 0)
        {
          if (v13 != 2)
          {
            goto LABEL_151;
          }

          result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadPackedPrimitiveNoInline<unsigned int,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)13>(a2, this + 52);
          if (!result)
          {
            return result;
          }

LABEL_896:
          v321 = *(a2 + 1);
          v14 = *(a2 + 2);
          if (v14 - v321 >= 2)
          {
            v332 = *v321;
            if (v332 == 160)
            {
              if (v321[1] == 3)
              {
                v52 = (v321 + 2);
                *(a2 + 1) = v52;
LABEL_903:
                if (v52 >= v14 || (v333 = *v52, (v333 & 0x80000000) != 0))
                {
                  result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v9);
                  if (!result)
                  {
                    return result;
                  }

                  v334 = *(a2 + 1);
                  v14 = *(a2 + 2);
                }

                else
                {
                  *v9 = v333;
                  v334 = (v52 + 1);
                  *(a2 + 1) = v334;
                }

                *(this + 112) |= 0x80000u;
                if (v14 - v334 >= 2 && *v334 == 168 && v334[1] == 3)
                {
                  v51 = (v334 + 2);
                  *(a2 + 1) = v51;
LABEL_912:
                  if (v51 >= v14 || (v335 = *v51, (v335 & 0x80000000) != 0))
                  {
                    result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v10);
                    if (!result)
                    {
                      return result;
                    }

                    v336 = *(a2 + 1);
                    v14 = *(a2 + 2);
                  }

                  else
                  {
                    *v10 = v335;
                    v336 = v51 + 1;
                    *(a2 + 1) = v336;
                  }

                  *(this + 112) |= 0x100000u;
                  if (v336 == v14 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
                  {
                    *(a2 + 8) = 0;
                    result = 1;
                    *(a2 + 36) = 1;
                    return result;
                  }
                }
              }
            }

            else if (v332 == 152 && v321[1] == 3)
            {
              goto LABEL_877;
            }
          }

          continue;
        }

        v53 = *(a2 + 1);
        v14 = *(a2 + 2);
LABEL_878:
        v337 = 0;
        if (v53 < v14 && (*v53 & 0x80000000) == 0)
        {
          v337 = *v53;
          *(a2 + 1) = v53 + 1;
          goto LABEL_882;
        }

        if (wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v337))
        {
LABEL_882:
          v322 = *(this + 106);
          if (v322 == *(this + 107))
          {
            wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 104, v322 + 1);
            v322 = *(this + 106);
          }

          v323 = v337;
          v324 = *(this + 52);
          *(this + 106) = v322 + 1;
          *(v324 + 4 * v322) = v323;
          v325 = *(this + 107) - *(this + 106);
          if (v325 >= 1)
          {
            v326 = v325 + 1;
            do
            {
              v327 = *(a2 + 1);
              v328 = *(a2 + 2);
              if (v328 - v327 < 2 || *v327 != 152 || v327[1] != 3)
              {
                break;
              }

              *(a2 + 1) = v327 + 2;
              if ((v327 + 2) >= v328 || v327[2] < 0)
              {
                if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v337))
                {
                  return 0;
                }
              }

              else
              {
                v337 = v327[2];
                *(a2 + 1) = v327 + 3;
              }

              v329 = *(this + 106);
              if (v329 >= *(this + 107))
              {
                wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v338);
                v329 = *(this + 106);
              }

              v330 = v337;
              v331 = *(this + 52);
              *(this + 106) = v329 + 1;
              *(v331 + 4 * v329) = v330;
              --v326;
            }

            while (v326 > 1);
          }

          goto LABEL_896;
        }

        return 0;
      case 0x34u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_151;
        }

        v52 = *(a2 + 1);
        v14 = *(a2 + 2);
        goto LABEL_903;
      case 0x35u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_151;
        }

        v51 = *(a2 + 1);
        v14 = *(a2 + 2);
        goto LABEL_912;
      default:
        goto LABEL_151;
    }
  }
}

void sub_296398B44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t awd::metrics::BluetoothAccessoryDsp::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 444);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(1, *(this + 8), a2, a4);
    v6 = *(v5 + 444);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_103;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(2, *(v5 + 16), a2, a4);
  v6 = *(v5 + 444);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_104;
  }

LABEL_103:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(3, *(v5 + 20), a2, a4);
  v6 = *(v5 + 444);
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_105;
  }

LABEL_104:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(4, *(v5 + 24), a2, a4);
  v6 = *(v5 + 444);
  if ((v6 & 0x10) == 0)
  {
LABEL_6:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_106;
  }

LABEL_105:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(5, *(v5 + 28), a2, a4);
  v6 = *(v5 + 444);
  if ((v6 & 0x20) == 0)
  {
LABEL_7:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_107;
  }

LABEL_106:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(6, *(v5 + 32), a2, a4);
  v6 = *(v5 + 444);
  if ((v6 & 0x40) == 0)
  {
LABEL_8:
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_108;
  }

LABEL_107:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(7, *(v5 + 36), a2, a4);
  v6 = *(v5 + 444);
  if ((v6 & 0x80) == 0)
  {
LABEL_9:
    if ((v6 & 0x100) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_109;
  }

LABEL_108:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(8, *(v5 + 40), a2, a4);
  v6 = *(v5 + 444);
  if ((v6 & 0x100) == 0)
  {
LABEL_10:
    if ((v6 & 0x200) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_110;
  }

LABEL_109:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(9, *(v5 + 44), a2, a4);
  v6 = *(v5 + 444);
  if ((v6 & 0x200) == 0)
  {
LABEL_11:
    if ((v6 & 0x400) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_111;
  }

LABEL_110:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xA, *(v5 + 48), a2, a4);
  v6 = *(v5 + 444);
  if ((v6 & 0x400) == 0)
  {
LABEL_12:
    if ((v6 & 0x800) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_112;
  }

LABEL_111:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xB, *(v5 + 52), a2, a4);
  v6 = *(v5 + 444);
  if ((v6 & 0x800) == 0)
  {
LABEL_13:
    if ((v6 & 0x1000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_113;
  }

LABEL_112:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xC, *(v5 + 56), a2, a4);
  v6 = *(v5 + 444);
  if ((v6 & 0x1000) == 0)
  {
LABEL_14:
    if ((v6 & 0x2000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_114;
  }

LABEL_113:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xD, *(v5 + 60), a2, a4);
  v6 = *(v5 + 444);
  if ((v6 & 0x2000) == 0)
  {
LABEL_15:
    if ((v6 & 0x4000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_115;
  }

LABEL_114:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xE, *(v5 + 64), a2, a4);
  v6 = *(v5 + 444);
  if ((v6 & 0x4000) == 0)
  {
LABEL_16:
    if ((v6 & 0x8000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_116;
  }

LABEL_115:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xF, *(v5 + 68), a2, a4);
  v6 = *(v5 + 444);
  if ((v6 & 0x8000) == 0)
  {
LABEL_17:
    if ((v6 & 0x10000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_117;
  }

LABEL_116:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x10, *(v5 + 72), a2, a4);
  v6 = *(v5 + 444);
  if ((v6 & 0x10000) == 0)
  {
LABEL_18:
    if ((v6 & 0x20000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_118;
  }

LABEL_117:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x11, *(v5 + 76), a2, a4);
  v6 = *(v5 + 444);
  if ((v6 & 0x20000) == 0)
  {
LABEL_19:
    if ((v6 & 0x40000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_20;
  }

LABEL_118:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x12, *(v5 + 80), a2, a4);
  if ((*(v5 + 444) & 0x40000) != 0)
  {
LABEL_20:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x13, *(v5 + 84), a2, a4);
  }

LABEL_21:
  if (*(v5 + 96) >= 1)
  {
    v7 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x14, *(*(v5 + 88) + 4 * v7++), a2, a4);
    }

    while (v7 < *(v5 + 96));
  }

  if (*(v5 + 112) >= 1)
  {
    v8 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x15, *(*(v5 + 104) + 4 * v8++), a2, a4);
    }

    while (v8 < *(v5 + 112));
  }

  v9 = *(v5 + 444);
  if ((v9 & 0x200000) != 0)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x16, *(v5 + 120), a2, a4);
    v9 = *(v5 + 444);
    if ((v9 & 0x400000) == 0)
    {
LABEL_29:
      if ((v9 & 0x800000) == 0)
      {
        goto LABEL_30;
      }

      goto LABEL_122;
    }
  }

  else if ((v9 & 0x400000) == 0)
  {
    goto LABEL_29;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x17, *(v5 + 124), a2, a4);
  v9 = *(v5 + 444);
  if ((v9 & 0x800000) == 0)
  {
LABEL_30:
    if ((v9 & 0x1000000) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_31;
  }

LABEL_122:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x18, *(v5 + 128), a2, a4);
  if ((*(v5 + 444) & 0x1000000) != 0)
  {
LABEL_31:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x19, *(v5 + 132), a2, a4);
  }

LABEL_32:
  if (*(v5 + 144) >= 1)
  {
    v10 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x1A, *(*(v5 + 136) + 4 * v10++), a2, a4);
    }

    while (v10 < *(v5 + 144));
  }

  v11 = *(v5 + 444);
  if ((v11 & 0x4000000) != 0)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x1B, *(v5 + 152), a2, a4);
    v11 = *(v5 + 444);
  }

  if ((v11 & 0x8000000) != 0)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x1C, *(v5 + 156), a2, a4);
  }

  if (*(v5 + 168) >= 1)
  {
    v12 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x1D, *(*(v5 + 160) + 4 * v12++), a2, a4);
    }

    while (v12 < *(v5 + 168));
  }

  if (*(v5 + 184) >= 1)
  {
    v13 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x1E, *(*(v5 + 176) + 4 * v13++), a2, a4);
    }

    while (v13 < *(v5 + 184));
  }

  if ((*(v5 + 447) & 0x40) != 0)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x1F, *(v5 + 192), a2, a4);
  }

  if (*(v5 + 208) >= 1)
  {
    v14 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x20, *(*(v5 + 200) + 4 * v14++), a2, a4);
    }

    while (v14 < *(v5 + 208));
  }

  if (*(v5 + 448))
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x21, *(v5 + 196), a2, a4);
  }

  if (*(v5 + 224) >= 1)
  {
    v15 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x22, *(*(v5 + 216) + 4 * v15++), a2, a4);
    }

    while (v15 < *(v5 + 224));
  }

  if (*(v5 + 240) >= 1)
  {
    v16 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x23, *(*(v5 + 232) + 4 * v16++), a2, a4);
    }

    while (v16 < *(v5 + 240));
  }

  v17 = *(v5 + 448);
  if ((v17 & 8) != 0)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x24, *(v5 + 248), a2, a4);
    v17 = *(v5 + 448);
    if ((v17 & 0x10) == 0)
    {
LABEL_60:
      if ((v17 & 0x20) == 0)
      {
        goto LABEL_61;
      }

      goto LABEL_126;
    }
  }

  else if ((v17 & 0x10) == 0)
  {
    goto LABEL_60;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x25, *(v5 + 252), a2, a4);
  v17 = *(v5 + 448);
  if ((v17 & 0x20) == 0)
  {
LABEL_61:
    if ((v17 & 0x40) == 0)
    {
      goto LABEL_63;
    }

    goto LABEL_62;
  }

LABEL_126:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x26, *(v5 + 256), a2, a4);
  if ((*(v5 + 448) & 0x40) != 0)
  {
LABEL_62:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x27, *(v5 + 260), a2, a4);
  }

LABEL_63:
  if (*(v5 + 272) >= 1)
  {
    v18 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x28, *(*(v5 + 264) + 4 * v18++), a2, a4);
    }

    while (v18 < *(v5 + 272));
  }

  if (*(v5 + 288) >= 1)
  {
    v19 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x29, *(*(v5 + 280) + 4 * v19++), a2, a4);
    }

    while (v19 < *(v5 + 288));
  }

  if (*(v5 + 304) >= 1)
  {
    v20 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x2A, *(*(v5 + 296) + 4 * v20++), a2, a4);
    }

    while (v20 < *(v5 + 304));
  }

  if (*(v5 + 320) >= 1)
  {
    v21 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x2B, *(*(v5 + 312) + 4 * v21++), a2, a4);
    }

    while (v21 < *(v5 + 320));
  }

  if (*(v5 + 336) >= 1)
  {
    v22 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x2C, *(*(v5 + 328) + 4 * v22++), a2, a4);
    }

    while (v22 < *(v5 + 336));
  }

  if (*(v5 + 352) >= 1)
  {
    v23 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x2D, *(*(v5 + 344) + 4 * v23++), a2, a4);
    }

    while (v23 < *(v5 + 352));
  }

  if (*(v5 + 368) >= 1)
  {
    v24 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x2E, *(*(v5 + 360) + 4 * v24++), a2, a4);
    }

    while (v24 < *(v5 + 368));
  }

  if (*(v5 + 384) >= 1)
  {
    v25 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x2F, *(*(v5 + 376) + 4 * v25++), a2, a4);
    }

    while (v25 < *(v5 + 384));
  }

  if (*(v5 + 400) >= 1)
  {
    v26 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x30, *(*(v5 + 392) + 4 * v26++), a2, a4);
    }

    while (v26 < *(v5 + 400));
  }

  v27 = *(v5 + 448);
  if ((v27 & 0x10000) != 0)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x31, *(v5 + 408), a2, a4);
    v27 = *(v5 + 448);
  }

  if ((v27 & 0x20000) != 0)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x32, *(v5 + 412), a2, a4);
  }

  if (*(v5 + 424) >= 1)
  {
    v28 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x33, *(*(v5 + 416) + 4 * v28++), a2, a4);
    }

    while (v28 < *(v5 + 424));
  }

  v29 = *(v5 + 448);
  if ((v29 & 0x80000) != 0)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x34, *(v5 + 432), a2, a4);
    v29 = *(v5 + 448);
  }

  if ((v29 & 0x100000) != 0)
  {
    v30 = *(v5 + 436);

    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x35, v30, a2, a4);
  }

  return this;
}

uint64_t awd::metrics::BluetoothAccessoryDsp::ByteSize(awd::metrics::BluetoothAccessoryDsp *this, unint64_t a2)
{
  v3 = *(this + 111);
  if (!v3)
  {
    v4 = 0;
    goto LABEL_42;
  }

  if (v3)
  {
    v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 1)) + 1;
    v3 = *(this + 111);
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
    v3 = *(this + 111);
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
      v3 = *(this + 111);
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
    v3 = *(this + 111);
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
    v3 = *(this + 111);
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
    v3 = *(this + 111);
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
    v3 = *(this + 111);
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
      v3 = *(this + 111);
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
      v3 = *(this + 111);
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
    v3 = *(this + 111);
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
    v3 = *(this + 111);
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
    v3 = *(this + 111);
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
    v3 = *(this + 111);
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
    v3 = *(this + 111);
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
    v3 = *(this + 111);
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
      v3 = *(this + 111);
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
    goto LABEL_116;
  }

  if ((v3 & 0x10000) != 0)
  {
    v35 = *(this + 19);
    if (v35 >= 0x80)
    {
      v36 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v35) + 2;
      v3 = *(this + 111);
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

      goto LABEL_100;
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
    v3 = *(this + 111);
  }

  else
  {
    v38 = 3;
  }

  v4 += v38;
  if ((v3 & 0x40000) == 0)
  {
LABEL_88:
    if ((v3 & 0x200000) == 0)
    {
      goto LABEL_89;
    }

    goto LABEL_104;
  }

LABEL_100:
  v39 = *(this + 21);
  if (v39 >= 0x80)
  {
    v40 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v39) + 2;
    v3 = *(this + 111);
  }

  else
  {
    v40 = 3;
  }

  v4 += v40;
  if ((v3 & 0x200000) == 0)
  {
LABEL_89:
    if ((v3 & 0x400000) == 0)
    {
      goto LABEL_90;
    }

    goto LABEL_108;
  }

LABEL_104:
  v41 = *(this + 30);
  if (v41 >= 0x80)
  {
    v42 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v41) + 2;
    v3 = *(this + 111);
  }

  else
  {
    v42 = 3;
  }

  v4 += v42;
  if ((v3 & 0x400000) == 0)
  {
LABEL_90:
    if ((v3 & 0x800000) == 0)
    {
      goto LABEL_116;
    }

    goto LABEL_112;
  }

LABEL_108:
  v43 = *(this + 31);
  if (v43 >= 0x80)
  {
    v44 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v43) + 2;
    v3 = *(this + 111);
  }

  else
  {
    v44 = 3;
  }

  v4 += v44;
  if ((v3 & 0x800000) != 0)
  {
LABEL_112:
    v45 = *(this + 32);
    if (v45 >= 0x80)
    {
      v46 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v45) + 2;
      v3 = *(this + 111);
    }

    else
    {
      v46 = 3;
    }

    v4 += v46;
  }

LABEL_116:
  if (!HIBYTE(v3))
  {
    goto LABEL_138;
  }

  if ((v3 & 0x1000000) != 0)
  {
    v47 = *(this + 33);
    if (v47 >= 0x80)
    {
      v48 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v47) + 2;
      v3 = *(this + 111);
    }

    else
    {
      v48 = 3;
    }

    v4 += v48;
    if ((v3 & 0x4000000) == 0)
    {
LABEL_119:
      if ((v3 & 0x8000000) == 0)
      {
        goto LABEL_120;
      }

      goto LABEL_130;
    }
  }

  else if ((v3 & 0x4000000) == 0)
  {
    goto LABEL_119;
  }

  v49 = *(this + 38);
  if (v49 >= 0x80)
  {
    v50 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v49) + 2;
    v3 = *(this + 111);
  }

  else
  {
    v50 = 3;
  }

  v4 += v50;
  if ((v3 & 0x8000000) == 0)
  {
LABEL_120:
    if ((v3 & 0x40000000) == 0)
    {
      goto LABEL_138;
    }

    goto LABEL_134;
  }

LABEL_130:
  v51 = *(this + 39);
  if (v51 >= 0x80)
  {
    v52 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v51) + 2;
    v3 = *(this + 111);
  }

  else
  {
    v52 = 3;
  }

  v4 += v52;
  if ((v3 & 0x40000000) != 0)
  {
LABEL_134:
    v53 = *(this + 48);
    if (v53 >= 0x80)
    {
      v54 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v53) + 2;
    }

    else
    {
      v54 = 3;
    }

    v4 += v54;
  }

LABEL_138:
  v55 = *(this + 112);
  if (!v55)
  {
    goto LABEL_165;
  }

  if (v55)
  {
    v56 = *(this + 49);
    if (v56 >= 0x80)
    {
      v57 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v56) + 2;
      v55 = *(this + 112);
    }

    else
    {
      v57 = 3;
    }

    v4 += v57;
    if ((v55 & 8) == 0)
    {
LABEL_141:
      if ((v55 & 0x10) == 0)
      {
        goto LABEL_142;
      }

      goto LABEL_153;
    }
  }

  else if ((v55 & 8) == 0)
  {
    goto LABEL_141;
  }

  v58 = *(this + 62);
  if (v58 >= 0x80)
  {
    v59 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v58) + 2;
    v55 = *(this + 112);
  }

  else
  {
    v59 = 3;
  }

  v4 += v59;
  if ((v55 & 0x10) == 0)
  {
LABEL_142:
    if ((v55 & 0x20) == 0)
    {
      goto LABEL_143;
    }

    goto LABEL_157;
  }

LABEL_153:
  v60 = *(this + 63);
  if (v60 >= 0x80)
  {
    v61 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v60) + 2;
    v55 = *(this + 112);
  }

  else
  {
    v61 = 3;
  }

  v4 += v61;
  if ((v55 & 0x20) == 0)
  {
LABEL_143:
    if ((v55 & 0x40) == 0)
    {
      goto LABEL_165;
    }

    goto LABEL_161;
  }

LABEL_157:
  v62 = *(this + 64);
  if (v62 >= 0x80)
  {
    v63 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v62) + 2;
    v55 = *(this + 112);
  }

  else
  {
    v63 = 3;
  }

  v4 += v63;
  if ((v55 & 0x40) != 0)
  {
LABEL_161:
    v64 = *(this + 65);
    if (v64 >= 0x80)
    {
      v65 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v64) + 2;
      v55 = *(this + 112);
    }

    else
    {
      v65 = 3;
    }

    v4 += v65;
  }

LABEL_165:
  if ((v55 & 0xFF0000) == 0)
  {
    goto LABEL_187;
  }

  if ((v55 & 0x10000) != 0)
  {
    v66 = *(this + 102);
    if (v66 >= 0x80)
    {
      v67 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v66) + 2;
      v55 = *(this + 112);
    }

    else
    {
      v67 = 3;
    }

    v4 += v67;
    if ((v55 & 0x20000) == 0)
    {
LABEL_168:
      if ((v55 & 0x80000) == 0)
      {
        goto LABEL_169;
      }

      goto LABEL_179;
    }
  }

  else if ((v55 & 0x20000) == 0)
  {
    goto LABEL_168;
  }

  v68 = *(this + 103);
  if (v68 >= 0x80)
  {
    v69 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v68) + 2;
    v55 = *(this + 112);
  }

  else
  {
    v69 = 3;
  }

  v4 += v69;
  if ((v55 & 0x80000) == 0)
  {
LABEL_169:
    if ((v55 & 0x100000) == 0)
    {
      goto LABEL_187;
    }

    goto LABEL_183;
  }

LABEL_179:
  v70 = *(this + 108);
  if (v70 >= 0x80)
  {
    v71 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v70) + 2;
    v55 = *(this + 112);
  }

  else
  {
    v71 = 3;
  }

  v4 += v71;
  if ((v55 & 0x100000) != 0)
  {
LABEL_183:
    v72 = *(this + 109);
    if (v72 >= 0x80)
    {
      v73 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v72) + 2;
    }

    else
    {
      v73 = 3;
    }

    v4 += v73;
  }

LABEL_187:
  v186 = v4;
  v74 = *(this + 24);
  if (v74 < 1)
  {
    v76 = 0;
  }

  else
  {
    v75 = 0;
    v76 = 0;
    do
    {
      v77 = *(*(this + 11) + 4 * v75);
      if (v77 >= 0x80)
      {
        v78 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v77);
        v74 = *(this + 24);
      }

      else
      {
        v78 = 1;
      }

      v76 += v78;
      ++v75;
    }

    while (v75 < v74);
  }

  v79 = *(this + 28);
  if (v79 < 1)
  {
    v81 = 0;
  }

  else
  {
    v80 = 0;
    v81 = 0;
    do
    {
      v82 = *(*(this + 13) + 4 * v80);
      if (v82 >= 0x80)
      {
        v83 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v82);
        v79 = *(this + 28);
      }

      else
      {
        v83 = 1;
      }

      v81 += v83;
      ++v80;
    }

    while (v80 < v79);
  }

  v84 = *(this + 36);
  if (v84 < 1)
  {
    v86 = 0;
  }

  else
  {
    v85 = 0;
    v86 = 0;
    do
    {
      v87 = *(*(this + 17) + 4 * v85);
      if (v87 >= 0x80)
      {
        v88 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v87);
        v84 = *(this + 36);
      }

      else
      {
        v88 = 1;
      }

      v86 += v88;
      ++v85;
    }

    while (v85 < v84);
  }

  v89 = *(this + 42);
  if (v89 < 1)
  {
    v91 = 0;
  }

  else
  {
    v90 = 0;
    v91 = 0;
    do
    {
      v92 = *(*(this + 20) + 4 * v90);
      if (v92 >= 0x80)
      {
        v93 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v92);
        v89 = *(this + 42);
      }

      else
      {
        v93 = 1;
      }

      v91 += v93;
      ++v90;
    }

    while (v90 < v89);
  }

  v94 = *(this + 46);
  if (v94 < 1)
  {
    v192 = 0;
  }

  else
  {
    v95 = 0;
    v192 = 0;
    do
    {
      v96 = v94;
      v97 = *(*(this + 22) + 4 * v95);
      if (v97 >= 0x80)
      {
        v98 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v97);
        v96 = *(this + 46);
      }

      else
      {
        v98 = 1;
      }

      v192 += v98;
      ++v95;
      v94 = v96;
    }

    while (v95 < v96);
  }

  v177 = v94;
  v99 = *(this + 52);
  if (v99 < 1)
  {
    v191 = 0;
  }

  else
  {
    v100 = 0;
    v191 = 0;
    do
    {
      v101 = v99;
      v102 = *(*(this + 25) + 4 * v100);
      if (v102 >= 0x80)
      {
        v103 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v102);
        v101 = *(this + 52);
      }

      else
      {
        v103 = 1;
      }

      v191 += v103;
      ++v100;
      v99 = v101;
    }

    while (v100 < v101);
  }

  v176 = v99;
  v104 = *(this + 56);
  if (v104 < 1)
  {
    v190 = 0;
  }

  else
  {
    v105 = 0;
    v190 = 0;
    do
    {
      v106 = v104;
      v107 = *(*(this + 27) + 4 * v105);
      if (v107 >= 0x80)
      {
        v108 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v107);
        v106 = *(this + 56);
      }

      else
      {
        v108 = 1;
      }

      v190 += v108;
      ++v105;
      v104 = v106;
    }

    while (v105 < v106);
  }

  v175 = v104;
  v109 = *(this + 60);
  if (v109 < 1)
  {
    v189 = 0;
  }

  else
  {
    v110 = 0;
    v189 = 0;
    do
    {
      v111 = v109;
      v112 = *(*(this + 29) + 4 * v110);
      if (v112 >= 0x80)
      {
        v113 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v112);
        v111 = *(this + 60);
      }

      else
      {
        v113 = 1;
      }

      v189 += v113;
      ++v110;
      v109 = v111;
    }

    while (v110 < v111);
  }

  v174 = v109;
  v114 = *(this + 68);
  if (v114 < 1)
  {
    v188 = 0;
  }

  else
  {
    v115 = 0;
    v188 = 0;
    do
    {
      v116 = v114;
      v117 = *(*(this + 33) + 4 * v115);
      if (v117 >= 0x80)
      {
        v118 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v117);
        v116 = *(this + 68);
      }

      else
      {
        v118 = 1;
      }

      v188 += v118;
      ++v115;
      v114 = v116;
    }

    while (v115 < v116);
  }

  v173 = v114;
  v119 = *(this + 72);
  if (v119 < 1)
  {
    v187 = 0;
  }

  else
  {
    v120 = 0;
    v187 = 0;
    do
    {
      v121 = v119;
      v122 = *(*(this + 35) + 4 * v120);
      if (v122 >= 0x80)
      {
        v123 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v122);
        v121 = *(this + 72);
      }

      else
      {
        v123 = 1;
      }

      v187 += v123;
      ++v120;
      v119 = v121;
    }

    while (v120 < v121);
  }

  v172 = v119;
  v183 = v81;
  v124 = *(this + 76);
  if (v124 < 1)
  {
    v126 = 0;
  }

  else
  {
    v125 = 0;
    v126 = 0;
    do
    {
      v127 = *(*(this + 37) + 4 * v125);
      if (v127 >= 0x80)
      {
        v128 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v127);
        v124 = *(this + 76);
      }

      else
      {
        v128 = 1;
      }

      v126 += v128;
      ++v125;
    }

    while (v125 < v124);
  }

  v171 = v124;
  v181 = v86;
  v129 = *(this + 80);
  if (v129 < 1)
  {
    v131 = 0;
  }

  else
  {
    v130 = 0;
    v131 = 0;
    do
    {
      v132 = *(*(this + 39) + 4 * v130);
      if (v132 >= 0x80)
      {
        v133 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v132);
        v129 = *(this + 80);
      }

      else
      {
        v133 = 1;
      }

      v131 += v133;
      ++v130;
    }

    while (v130 < v129);
  }

  v170 = v129;
  v179 = v91;
  v134 = *(this + 84);
  if (v134 < 1)
  {
    v136 = 0;
  }

  else
  {
    v135 = 0;
    v136 = 0;
    do
    {
      v137 = *(*(this + 41) + 4 * v135);
      if (v137 >= 0x80)
      {
        v138 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v137);
        v134 = *(this + 84);
      }

      else
      {
        v138 = 1;
      }

      v136 += v138;
      ++v135;
    }

    while (v135 < v134);
  }

  v169 = v134;
  v185 = v76;
  v139 = *(this + 88);
  if (v139 < 1)
  {
    v141 = 0;
  }

  else
  {
    v140 = 0;
    v141 = 0;
    do
    {
      v142 = *(*(this + 43) + 4 * v140);
      if (v142 >= 0x80)
      {
        v143 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v142);
        v139 = *(this + 88);
      }

      else
      {
        v143 = 1;
      }

      v141 += v143;
      ++v140;
    }

    while (v140 < v139);
  }

  v168 = v139;
  v182 = v79;
  v144 = *(this + 92);
  if (v144 < 1)
  {
    v146 = 0;
  }

  else
  {
    v145 = 0;
    v146 = 0;
    do
    {
      v147 = *(*(this + 45) + 4 * v145);
      if (v147 >= 0x80)
      {
        v148 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v147);
        v144 = *(this + 92);
      }

      else
      {
        v148 = 1;
      }

      v146 += v148;
      ++v145;
    }

    while (v145 < v144);
  }

  v167 = v144;
  v178 = v89;
  v149 = *(this + 96);
  if (v149 < 1)
  {
    v151 = 0;
  }

  else
  {
    v150 = 0;
    v151 = 0;
    do
    {
      v152 = *(*(this + 47) + 4 * v150);
      if (v152 >= 0x80)
      {
        v153 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v152);
        v149 = *(this + 96);
      }

      else
      {
        v153 = 1;
      }

      v151 += v153;
      ++v150;
    }

    while (v150 < v149);
  }

  v166 = v149;
  v180 = v84;
  v154 = *(this + 100);
  if (v154 < 1)
  {
    v156 = 0;
  }

  else
  {
    v155 = 0;
    v156 = 0;
    do
    {
      v157 = *(*(this + 49) + 4 * v155);
      if (v157 >= 0x80)
      {
        v158 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v157);
        v154 = *(this + 100);
      }

      else
      {
        v158 = 1;
      }

      v156 += v158;
      ++v155;
    }

    while (v155 < v154);
  }

  v184 = v74;
  v159 = *(this + 106);
  v165 = v154;
  if (v159 < 1)
  {
    v161 = 0;
  }

  else
  {
    v160 = 0;
    v161 = 0;
    do
    {
      v162 = *(*(this + 52) + 4 * v160);
      if (v162 >= 0x80)
      {
        v163 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v162);
        v159 = *(this + 106);
      }

      else
      {
        v163 = 1;
      }

      v161 += v163;
      ++v160;
    }

    while (v160 < v159);
  }

  result = (v185 + v186 + v183 + v181 + v179 + v192 + v191 + v190 + v189 + v188 + v187 + v126 + v131 + v136 + v141 + v146 + v151 + v156 + v161 + 2 * (v182 + v184 + v180 + v178 + v177 + v176 + v175 + v174 + v173 + v172 + v171 + v170 + v169 + v168 + v167 + v166 + v165 + v159));
  *(this + 110) = result;
  return result;
}

void awd::metrics::BluetoothAccessoryDsp::CheckTypeAndMergeFrom(awd::metrics::BluetoothAccessoryDsp *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  {
    awd::metrics::BluetoothAccessoryDsp::CheckTypeAndMergeFrom();
  }

  awd::metrics::BluetoothAccessoryDsp::MergeFrom(this, lpsrc);
}

void awd::metrics::BluetoothAccessoryDsp::CopyFrom(awd::metrics::BluetoothAccessoryDsp *this, const awd::metrics::BluetoothAccessoryDsp *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    awd::metrics::BluetoothAccessoryDsp::MergeFrom(this, a2);
  }
}

double awd::metrics::BluetoothAccessoryDsp::Swap(awd::metrics::BluetoothAccessoryDsp *this, awd::metrics::BluetoothAccessoryDsp *a2)
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
    v3 = *(this + 11);
    *(this + 11) = *(a2 + 11);
    v4 = *(a2 + 12);
    *(a2 + 11) = v3;
    v5 = *(this + 12);
    *(this + 12) = v4;
    *(a2 + 12) = v5;
    v6 = *(this + 13);
    *(this + 13) = *(a2 + 13);
    v7 = *(a2 + 14);
    *(a2 + 13) = v6;
    v8 = *(this + 14);
    *(this + 14) = v7;
    *(a2 + 14) = v8;
    LODWORD(v6) = *(this + 30);
    *(this + 30) = *(a2 + 30);
    *(a2 + 30) = v6;
    LODWORD(v6) = *(this + 31);
    *(this + 31) = *(a2 + 31);
    *(a2 + 31) = v6;
    LODWORD(v6) = *(this + 32);
    *(this + 32) = *(a2 + 32);
    *(a2 + 32) = v6;
    LODWORD(v6) = *(this + 33);
    *(this + 33) = *(a2 + 33);
    *(a2 + 33) = v6;
    v9 = *(this + 17);
    *(this + 17) = *(a2 + 17);
    v10 = *(a2 + 18);
    *(a2 + 17) = v9;
    v11 = *(this + 18);
    *(this + 18) = v10;
    *(a2 + 18) = v11;
    LODWORD(v9) = *(this + 38);
    *(this + 38) = *(a2 + 38);
    *(a2 + 38) = v9;
    LODWORD(v9) = *(this + 39);
    *(this + 39) = *(a2 + 39);
    *(a2 + 39) = v9;
    v12 = *(this + 20);
    *(this + 20) = *(a2 + 20);
    v13 = *(a2 + 21);
    *(a2 + 20) = v12;
    v14 = *(this + 21);
    *(this + 21) = v13;
    *(a2 + 21) = v14;
    v15 = *(this + 22);
    *(this + 22) = *(a2 + 22);
    v16 = *(a2 + 23);
    *(a2 + 22) = v15;
    v17 = *(this + 23);
    *(this + 23) = v16;
    *(a2 + 23) = v17;
    LODWORD(v15) = *(this + 48);
    *(this + 48) = *(a2 + 48);
    *(a2 + 48) = v15;
    v18 = *(this + 25);
    *(this + 25) = *(a2 + 25);
    v19 = *(a2 + 26);
    *(a2 + 25) = v18;
    v20 = *(this + 26);
    *(this + 26) = v19;
    *(a2 + 26) = v20;
    LODWORD(v18) = *(this + 49);
    *(this + 49) = *(a2 + 49);
    *(a2 + 49) = v18;
    v21 = *(this + 27);
    *(this + 27) = *(a2 + 27);
    v22 = *(a2 + 28);
    *(a2 + 27) = v21;
    v23 = *(this + 28);
    *(this + 28) = v22;
    *(a2 + 28) = v23;
    v24 = *(this + 29);
    *(this + 29) = *(a2 + 29);
    v25 = *(a2 + 30);
    *(a2 + 29) = v24;
    v26 = *(this + 30);
    *(this + 30) = v25;
    *(a2 + 30) = v26;
    LODWORD(v24) = *(this + 62);
    *(this + 62) = *(a2 + 62);
    *(a2 + 62) = v24;
    LODWORD(v24) = *(this + 63);
    *(this + 63) = *(a2 + 63);
    *(a2 + 63) = v24;
    LODWORD(v24) = *(this + 64);
    *(this + 64) = *(a2 + 64);
    *(a2 + 64) = v24;
    LODWORD(v24) = *(this + 65);
    *(this + 65) = *(a2 + 65);
    *(a2 + 65) = v24;
    v27 = *(this + 33);
    *(this + 33) = *(a2 + 33);
    v28 = *(a2 + 34);
    *(a2 + 33) = v27;
    v29 = *(this + 34);
    *(this + 34) = v28;
    *(a2 + 34) = v29;
    v30 = *(this + 35);
    *(this + 35) = *(a2 + 35);
    v31 = *(a2 + 36);
    *(a2 + 35) = v30;
    v32 = *(this + 36);
    *(this + 36) = v31;
    *(a2 + 36) = v32;
    v33 = *(this + 37);
    *(this + 37) = *(a2 + 37);
    v34 = *(a2 + 38);
    *(a2 + 37) = v33;
    v35 = *(this + 38);
    *(this + 38) = v34;
    *(a2 + 38) = v35;
    v36 = *(this + 39);
    *(this + 39) = *(a2 + 39);
    v37 = *(a2 + 40);
    *(a2 + 39) = v36;
    v38 = *(this + 40);
    *(this + 40) = v37;
    *(a2 + 40) = v38;
    v39 = *(this + 41);
    *(this + 41) = *(a2 + 41);
    v40 = *(a2 + 42);
    *(a2 + 41) = v39;
    v41 = *(this + 42);
    *(this + 42) = v40;
    *(a2 + 42) = v41;
    v42 = *(this + 43);
    *(this + 43) = *(a2 + 43);
    v43 = *(a2 + 44);
    *(a2 + 43) = v42;
    v44 = *(this + 44);
    *(this + 44) = v43;
    *(a2 + 44) = v44;
    v45 = *(this + 45);
    *(this + 45) = *(a2 + 45);
    v46 = *(a2 + 46);
    *(a2 + 45) = v45;
    v47 = *(this + 46);
    *(this + 46) = v46;
    *(a2 + 46) = v47;
    v48 = *(this + 47);
    *(this + 47) = *(a2 + 47);
    v49 = *(a2 + 48);
    *(a2 + 47) = v48;
    v50 = *(this + 48);
    *(this + 48) = v49;
    *(a2 + 48) = v50;
    v51 = *(this + 49);
    *(this + 49) = *(a2 + 49);
    v52 = *(a2 + 50);
    *(a2 + 49) = v51;
    v53 = *(this + 50);
    *(this + 50) = v52;
    *(a2 + 50) = v53;
    LODWORD(v51) = *(this + 102);
    *(this + 102) = *(a2 + 102);
    *(a2 + 102) = v51;
    LODWORD(v51) = *(this + 103);
    *(this + 103) = *(a2 + 103);
    *(a2 + 103) = v51;
    v54 = *(this + 52);
    *(this + 52) = *(a2 + 52);
    result = *(a2 + 53);
    *(a2 + 52) = v54;
    v56 = *(this + 53);
    *(this + 53) = result;
    *(a2 + 53) = v56;
    LODWORD(v54) = *(this + 108);
    *(this + 108) = *(a2 + 108);
    *(a2 + 108) = v54;
    LODWORD(v54) = *(this + 109);
    *(this + 109) = *(a2 + 109);
    *(a2 + 109) = v54;
    LODWORD(v54) = *(this + 111);
    *(this + 111) = *(a2 + 111);
    *(a2 + 111) = v54;
    LODWORD(v54) = *(this + 112);
    *(this + 112) = *(a2 + 112);
    *(a2 + 112) = v54;
    LODWORD(v54) = *(this + 110);
    *(this + 110) = *(a2 + 110);
    *(a2 + 110) = v54;
  }

  return result;
}

double awd::metrics::BluetoothAccessoryIedSensors::SharedCtor(awd::metrics::BluetoothAccessoryIedSensors *this)
{
  result = 0.0;
  *(this + 88) = 0u;
  *(this + 72) = 0u;
  *(this + 56) = 0u;
  *(this + 40) = 0u;
  *(this + 24) = 0u;
  *(this + 8) = 0u;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 25) = 0;
  *(this + 26) = 0;
  *(this + 54) = 0;
  return result;
}

awd::metrics::BluetoothAccessoryIedSensors *awd::metrics::BluetoothAccessoryIedSensors::BluetoothAccessoryIedSensors(awd::metrics::BluetoothAccessoryIedSensors *this, const awd::metrics::BluetoothAccessoryIedSensors *a2)
{
  *this = &unk_2A1D4BB98;
  *(this + 104) = 0u;
  *(this + 136) = 0u;
  *(this + 152) = 0u;
  *(this + 168) = 0u;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 88) = 0u;
  *(this + 120) = 0u;
  *(this + 184) = 0u;
  *(this + 200) = 0u;
  *(this + 54) = 0;
  awd::metrics::BluetoothAccessoryIedSensors::MergeFrom(this, a2);
  return this;
}

void sub_29639A8DC(_Unwind_Exception *a1)
{
  v7 = *(v1 + 23);
  if (v7)
  {
    MEMORY[0x29C259EE0](v7, 0x1000C8052888210);
  }

  awd::metrics::BluetoothAccessoryIedSensors::BluetoothAccessoryIedSensors(v5, v4, v3, v2);
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(v1);
  _Unwind_Resume(a1);
}

void awd::metrics::BluetoothAccessoryIedSensors::MergeFrom(awd::metrics::BluetoothAccessoryIedSensors *this, const awd::metrics::BluetoothAccessoryIedSensors *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v40);
  }

  v4 = *(a2 + 28);
  if (v4)
  {
    wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 26, *(this + 28) + v4);
    memcpy((*(this + 13) + 4 * *(this + 28)), *(a2 + 13), 4 * *(a2 + 28));
    *(this + 28) += *(a2 + 28);
  }

  v5 = *(a2 + 36);
  if (v5)
  {
    wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 34, *(this + 36) + v5);
    memcpy((*(this + 17) + 4 * *(this + 36)), *(a2 + 17), 4 * *(a2 + 36));
    *(this + 36) += *(a2 + 36);
  }

  v6 = *(a2 + 40);
  if (v6)
  {
    wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 38, *(this + 40) + v6);
    memcpy((*(this + 19) + 4 * *(this + 40)), *(a2 + 19), 4 * *(a2 + 40));
    *(this + 40) += *(a2 + 40);
  }

  v7 = *(a2 + 44);
  if (v7)
  {
    wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 42, *(this + 44) + v7);
    memcpy((*(this + 21) + 4 * *(this + 44)), *(a2 + 21), 4 * *(a2 + 44));
    *(this + 44) += *(a2 + 44);
  }

  v8 = *(a2 + 48);
  if (v8)
  {
    wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 46, *(this + 48) + v8);
    memcpy((*(this + 23) + 4 * *(this + 48)), *(a2 + 23), 4 * *(a2 + 48));
    *(this + 48) += *(a2 + 48);
  }

  v9 = *(a2 + 53);
  if (!v9)
  {
    goto LABEL_23;
  }

  if (v9)
  {
    v17 = *(a2 + 1);
    *(this + 53) |= 1u;
    *(this + 1) = v17;
    v9 = *(a2 + 53);
    if ((v9 & 2) == 0)
    {
LABEL_16:
      if ((v9 & 4) == 0)
      {
        goto LABEL_17;
      }

      goto LABEL_56;
    }
  }

  else if ((v9 & 2) == 0)
  {
    goto LABEL_16;
  }

  v18 = *(a2 + 4);
  *(this + 53) |= 2u;
  *(this + 4) = v18;
  v9 = *(a2 + 53);
  if ((v9 & 4) == 0)
  {
LABEL_17:
    if ((v9 & 8) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_57;
  }

LABEL_56:
  v19 = *(a2 + 5);
  *(this + 53) |= 4u;
  *(this + 5) = v19;
  v9 = *(a2 + 53);
  if ((v9 & 8) == 0)
  {
LABEL_18:
    if ((v9 & 0x10) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_58;
  }

LABEL_57:
  v20 = *(a2 + 6);
  *(this + 53) |= 8u;
  *(this + 6) = v20;
  v9 = *(a2 + 53);
  if ((v9 & 0x10) == 0)
  {
LABEL_19:
    if ((v9 & 0x20) == 0)
    {
      goto LABEL_20;
    }

LABEL_59:
    v22 = *(a2 + 8);
    *(this + 53) |= 0x20u;
    *(this + 8) = v22;
    v9 = *(a2 + 53);
    if ((v9 & 0x40) == 0)
    {
LABEL_21:
      if ((v9 & 0x80) == 0)
      {
        goto LABEL_23;
      }

      goto LABEL_22;
    }

    goto LABEL_60;
  }

LABEL_58:
  v21 = *(a2 + 7);
  *(this + 53) |= 0x10u;
  *(this + 7) = v21;
  v9 = *(a2 + 53);
  if ((v9 & 0x20) != 0)
  {
    goto LABEL_59;
  }

LABEL_20:
  if ((v9 & 0x40) == 0)
  {
    goto LABEL_21;
  }

LABEL_60:
  v23 = *(a2 + 9);
  *(this + 53) |= 0x40u;
  *(this + 9) = v23;
  v9 = *(a2 + 53);
  if ((v9 & 0x80) != 0)
  {
LABEL_22:
    v10 = *(a2 + 10);
    *(this + 53) |= 0x80u;
    *(this + 10) = v10;
    v9 = *(a2 + 53);
  }

LABEL_23:
  if ((v9 & 0xFF00) == 0)
  {
    goto LABEL_33;
  }

  if ((v9 & 0x100) != 0)
  {
    v24 = *(a2 + 11);
    *(this + 53) |= 0x100u;
    *(this + 11) = v24;
    v9 = *(a2 + 53);
    if ((v9 & 0x200) == 0)
    {
LABEL_26:
      if ((v9 & 0x400) == 0)
      {
        goto LABEL_27;
      }

      goto LABEL_64;
    }
  }

  else if ((v9 & 0x200) == 0)
  {
    goto LABEL_26;
  }

  v25 = *(a2 + 12);
  *(this + 53) |= 0x200u;
  *(this + 12) = v25;
  v9 = *(a2 + 53);
  if ((v9 & 0x400) == 0)
  {
LABEL_27:
    if ((v9 & 0x800) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_65;
  }

LABEL_64:
  v26 = *(a2 + 13);
  *(this + 53) |= 0x400u;
  *(this + 13) = v26;
  v9 = *(a2 + 53);
  if ((v9 & 0x800) == 0)
  {
LABEL_28:
    if ((v9 & 0x1000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_66;
  }

LABEL_65:
  v27 = *(a2 + 14);
  *(this + 53) |= 0x800u;
  *(this + 14) = v27;
  v9 = *(a2 + 53);
  if ((v9 & 0x1000) == 0)
  {
LABEL_29:
    if ((v9 & 0x2000) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_67;
  }

LABEL_66:
  v28 = *(a2 + 15);
  *(this + 53) |= 0x1000u;
  *(this + 15) = v28;
  v9 = *(a2 + 53);
  if ((v9 & 0x2000) == 0)
  {
LABEL_30:
    if ((v9 & 0x4000) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_68;
  }

LABEL_67:
  v29 = *(a2 + 16);
  *(this + 53) |= 0x2000u;
  *(this + 16) = v29;
  v9 = *(a2 + 53);
  if ((v9 & 0x4000) == 0)
  {
LABEL_31:
    if ((v9 & 0x8000) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_32;
  }

LABEL_68:
  v30 = *(a2 + 17);
  *(this + 53) |= 0x4000u;
  *(this + 17) = v30;
  v9 = *(a2 + 53);
  if ((v9 & 0x8000) != 0)
  {
LABEL_32:
    v11 = *(a2 + 18);
    *(this + 53) |= 0x8000u;
    *(this + 18) = v11;
    v9 = *(a2 + 53);
  }

LABEL_33:
  if ((v9 & 0xFF0000) == 0)
  {
    goto LABEL_42;
  }

  if ((v9 & 0x10000) != 0)
  {
    v31 = *(a2 + 19);
    *(this + 53) |= 0x10000u;
    *(this + 19) = v31;
    v9 = *(a2 + 53);
    if ((v9 & 0x20000) == 0)
    {
LABEL_36:
      if ((v9 & 0x40000) == 0)
      {
        goto LABEL_37;
      }

      goto LABEL_72;
    }
  }

  else if ((v9 & 0x20000) == 0)
  {
    goto LABEL_36;
  }

  v32 = *(a2 + 20);
  *(this + 53) |= 0x20000u;
  *(this + 20) = v32;
  v9 = *(a2 + 53);
  if ((v9 & 0x40000) == 0)
  {
LABEL_37:
    if ((v9 & 0x80000) == 0)
    {
      goto LABEL_38;
    }

    goto LABEL_73;
  }

LABEL_72:
  v33 = *(a2 + 21);
  *(this + 53) |= 0x40000u;
  *(this + 21) = v33;
  v9 = *(a2 + 53);
  if ((v9 & 0x80000) == 0)
  {
LABEL_38:
    if ((v9 & 0x100000) == 0)
    {
      goto LABEL_39;
    }

    goto LABEL_74;
  }

LABEL_73:
  v34 = *(a2 + 22);
  *(this + 53) |= 0x80000u;
  *(this + 22) = v34;
  v9 = *(a2 + 53);
  if ((v9 & 0x100000) == 0)
  {
LABEL_39:
    if ((v9 & 0x200000) == 0)
    {
      goto LABEL_40;
    }

    goto LABEL_75;
  }

LABEL_74:
  v35 = *(a2 + 23);
  *(this + 53) |= 0x100000u;
  *(this + 23) = v35;
  v9 = *(a2 + 53);
  if ((v9 & 0x200000) == 0)
  {
LABEL_40:
    if ((v9 & 0x800000) == 0)
    {
      goto LABEL_42;
    }

    goto LABEL_41;
  }

LABEL_75:
  v36 = *(a2 + 24);
  *(this + 53) |= 0x200000u;
  *(this + 24) = v36;
  v9 = *(a2 + 53);
  if ((v9 & 0x800000) != 0)
  {
LABEL_41:
    v12 = *(a2 + 25);
    *(this + 53) |= 0x800000u;
    *(this + 25) = v12;
    v9 = *(a2 + 53);
  }

LABEL_42:
  if (!HIBYTE(v9))
  {
    goto LABEL_48;
  }

  if ((v9 & 0x1000000) != 0)
  {
    v37 = *(a2 + 30);
    *(this + 53) |= 0x1000000u;
    *(this + 30) = v37;
    v9 = *(a2 + 53);
    if ((v9 & 0x2000000) == 0)
    {
LABEL_45:
      if ((v9 & 0x4000000) == 0)
      {
        goto LABEL_46;
      }

      goto LABEL_79;
    }
  }

  else if ((v9 & 0x2000000) == 0)
  {
    goto LABEL_45;
  }

  v38 = *(a2 + 31);
  *(this + 53) |= 0x2000000u;
  *(this + 31) = v38;
  v9 = *(a2 + 53);
  if ((v9 & 0x4000000) == 0)
  {
LABEL_46:
    if ((v9 & 0x8000000) == 0)
    {
      goto LABEL_48;
    }

    goto LABEL_47;
  }

LABEL_79:
  v39 = *(a2 + 32);
  *(this + 53) |= 0x4000000u;
  *(this + 32) = v39;
  if ((*(a2 + 53) & 0x8000000) != 0)
  {
LABEL_47:
    v13 = *(a2 + 33);
    *(this + 53) |= 0x8000000u;
    *(this + 33) = v13;
  }

LABEL_48:
  LOBYTE(v14) = *(a2 + 216);
  if (v14)
  {
    if (*(a2 + 216))
    {
      v15 = *(a2 + 50);
      *(this + 54) |= 1u;
      *(this + 50) = v15;
      v14 = *(a2 + 54);
    }

    if ((v14 & 2) != 0)
    {
      v16 = *(a2 + 51);
      *(this + 54) |= 2u;
      *(this + 51) = v16;
    }
  }
}

void sub_29639AEA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::metrics::BluetoothAccessoryIedSensors::~BluetoothAccessoryIedSensors(awd::metrics::BluetoothAccessoryIedSensors *this)
{
  *this = &unk_2A1D4BB98;
  v2 = *(this + 23);
  if (v2)
  {
    MEMORY[0x29C259EE0](v2, 0x1000C8052888210);
  }

  v3 = *(this + 21);
  if (v3)
  {
    MEMORY[0x29C259EE0](v3, 0x1000C8052888210);
  }

  v4 = *(this + 19);
  if (v4)
  {
    MEMORY[0x29C259EE0](v4, 0x1000C8052888210);
  }

  v5 = *(this + 17);
  if (v5)
  {
    MEMORY[0x29C259EE0](v5, 0x1000C8052888210);
  }

  v6 = *(this + 13);
  if (v6)
  {
    MEMORY[0x29C259EE0](v6, 0x1000C8052888210);
  }

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  awd::metrics::BluetoothAccessoryIedSensors::~BluetoothAccessoryIedSensors(this);

  JUMPOUT(0x29C259F00);
}

uint64_t awd::metrics::BluetoothAccessoryIedSensors::default_instance(awd::metrics::BluetoothAccessoryIedSensors *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = awd::metrics::BluetoothAccessoryIedSensors::default_instance_;
  if (!awd::metrics::BluetoothAccessoryIedSensors::default_instance_)
  {
    awd::metrics::protobuf_AddDesc_Bluetooth_2eproto(0, a2, a3, a4);
    return awd::metrics::BluetoothAccessoryIedSensors::default_instance_;
  }

  return result;
}

uint64_t awd::metrics::BluetoothAccessoryIedSensors::Clear(uint64_t this)
{
  v1 = *(this + 212);
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
    *(this + 84) = 0;
    *(this + 76) = 0;
    *(this + 100) = 0;
    *(this + 92) = 0;
  }

  if (HIBYTE(v1))
  {
    *(this + 120) = 0;
    *(this + 128) = 0;
  }

  if (*(this + 216))
  {
    *(this + 200) = 0;
  }

  *(this + 112) = 0;
  *(this + 144) = 0;
  *(this + 160) = 0;
  *(this + 176) = 0;
  *(this + 192) = 0;
  *(this + 212) = 0;
  return this;
}

uint64_t awd::metrics::BluetoothAccessoryIedSensors::MergePartialFromCodedStream(awd::metrics::BluetoothAccessoryIedSensors *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
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
          goto LABEL_86;
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

        *(this + 53) |= 1u;
        if (v11 < v8 && *v11 == 16)
        {
          v26 = v11 + 1;
          *(a2 + 1) = v26;
          goto LABEL_100;
        }

        continue;
      case 2u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_86;
        }

        v26 = *(a2 + 1);
        v8 = *(a2 + 2);
LABEL_100:
        if (v26 >= v8 || (v46 = *v26, v46 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 4);
          if (!result)
          {
            return result;
          }

          v47 = *(a2 + 1);
          v8 = *(a2 + 2);
        }

        else
        {
          *(this + 4) = v46;
          v47 = v26 + 1;
          *(a2 + 1) = v47;
        }

        *(this + 53) |= 2u;
        if (v47 >= v8 || *v47 != 24)
        {
          continue;
        }

        v22 = v47 + 1;
        *(a2 + 1) = v22;
LABEL_108:
        if (v22 >= v8 || (v48 = *v22, v48 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 5);
          if (!result)
          {
            return result;
          }

          v49 = *(a2 + 1);
          v8 = *(a2 + 2);
        }

        else
        {
          *(this + 5) = v48;
          v49 = v22 + 1;
          *(a2 + 1) = v49;
        }

        *(this + 53) |= 4u;
        if (v49 >= v8 || *v49 != 32)
        {
          continue;
        }

        v24 = v49 + 1;
        *(a2 + 1) = v24;
LABEL_116:
        if (v24 >= v8 || (v50 = *v24, v50 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 6);
          if (!result)
          {
            return result;
          }

          v51 = *(a2 + 1);
          v8 = *(a2 + 2);
        }

        else
        {
          *(this + 6) = v50;
          v51 = v24 + 1;
          *(a2 + 1) = v51;
        }

        *(this + 53) |= 8u;
        if (v51 >= v8 || *v51 != 40)
        {
          continue;
        }

        v17 = v51 + 1;
        *(a2 + 1) = v17;
LABEL_124:
        if (v17 >= v8 || (v52 = *v17, v52 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 7);
          if (!result)
          {
            return result;
          }

          v53 = *(a2 + 1);
          v8 = *(a2 + 2);
        }

        else
        {
          *(this + 7) = v52;
          v53 = v17 + 1;
          *(a2 + 1) = v53;
        }

        *(this + 53) |= 0x10u;
        if (v53 >= v8 || *v53 != 48)
        {
          continue;
        }

        v30 = v53 + 1;
        *(a2 + 1) = v30;
LABEL_132:
        if (v30 >= v8 || (v54 = *v30, v54 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 8);
          if (!result)
          {
            return result;
          }

          v55 = *(a2 + 1);
          v8 = *(a2 + 2);
        }

        else
        {
          *(this + 8) = v54;
          v55 = v30 + 1;
          *(a2 + 1) = v55;
        }

        *(this + 53) |= 0x20u;
        if (v55 >= v8 || *v55 != 56)
        {
          continue;
        }

        v33 = v55 + 1;
        *(a2 + 1) = v33;
LABEL_140:
        if (v33 >= v8 || (v56 = *v33, v56 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 9);
          if (!result)
          {
            return result;
          }

          v57 = *(a2 + 1);
          v8 = *(a2 + 2);
        }

        else
        {
          *(this + 9) = v56;
          v57 = v33 + 1;
          *(a2 + 1) = v57;
        }

        *(this + 53) |= 0x40u;
        if (v57 >= v8 || *v57 != 64)
        {
          continue;
        }

        v25 = v57 + 1;
        *(a2 + 1) = v25;
LABEL_148:
        if (v25 >= v8 || (v58 = *v25, v58 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 10);
          if (!result)
          {
            return result;
          }

          v59 = *(a2 + 1);
          v8 = *(a2 + 2);
        }

        else
        {
          *(this + 10) = v58;
          v59 = v25 + 1;
          *(a2 + 1) = v59;
        }

        *(this + 53) |= 0x80u;
        if (v59 >= v8 || *v59 != 72)
        {
          continue;
        }

        v36 = v59 + 1;
        *(a2 + 1) = v36;
LABEL_156:
        if (v36 >= v8 || (v60 = *v36, v60 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 11);
          if (!result)
          {
            return result;
          }

          v61 = *(a2 + 1);
          v8 = *(a2 + 2);
        }

        else
        {
          *(this + 11) = v60;
          v61 = v36 + 1;
          *(a2 + 1) = v61;
        }

        *(this + 53) |= 0x100u;
        if (v61 >= v8 || *v61 != 80)
        {
          continue;
        }

        v19 = v61 + 1;
        *(a2 + 1) = v19;
LABEL_164:
        if (v19 >= v8 || (v62 = *v19, v62 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 12);
          if (!result)
          {
            return result;
          }

          v63 = *(a2 + 1);
          v8 = *(a2 + 2);
        }

        else
        {
          *(this + 12) = v62;
          v63 = v19 + 1;
          *(a2 + 1) = v63;
        }

        *(this + 53) |= 0x200u;
        if (v63 >= v8 || *v63 != 88)
        {
          continue;
        }

        v35 = v63 + 1;
        *(a2 + 1) = v35;
LABEL_172:
        if (v35 >= v8 || (v64 = *v35, v64 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 13);
          if (!result)
          {
            return result;
          }

          v65 = *(a2 + 1);
          v8 = *(a2 + 2);
        }

        else
        {
          *(this + 13) = v64;
          v65 = v35 + 1;
          *(a2 + 1) = v65;
        }

        *(this + 53) |= 0x400u;
        if (v65 >= v8 || *v65 != 96)
        {
          continue;
        }

        v16 = v65 + 1;
        *(a2 + 1) = v16;
LABEL_180:
        if (v16 >= v8 || (v66 = *v16, v66 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 14);
          if (!result)
          {
            return result;
          }

          v67 = *(a2 + 1);
          v8 = *(a2 + 2);
        }

        else
        {
          *(this + 14) = v66;
          v67 = v16 + 1;
          *(a2 + 1) = v67;
        }

        *(this + 53) |= 0x800u;
        if (v67 >= v8 || *v67 != 104)
        {
          continue;
        }

        v18 = v67 + 1;
        *(a2 + 1) = v18;
LABEL_188:
        if (v18 >= v8 || (v68 = *v18, v68 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 15);
          if (!result)
          {
            return result;
          }

          v69 = *(a2 + 1);
          v8 = *(a2 + 2);
        }

        else
        {
          *(this + 15) = v68;
          v69 = v18 + 1;
          *(a2 + 1) = v69;
        }

        *(this + 53) |= 0x1000u;
        if (v69 >= v8 || *v69 != 112)
        {
          continue;
        }

        v32 = v69 + 1;
        *(a2 + 1) = v32;
LABEL_196:
        if (v32 >= v8 || (v70 = *v32, v70 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 16);
          if (!result)
          {
            return result;
          }

          v71 = *(a2 + 1);
          v8 = *(a2 + 2);
        }

        else
        {
          *(this + 16) = v70;
          v71 = v32 + 1;
          *(a2 + 1) = v71;
        }

        *(this + 53) |= 0x2000u;
        if (v71 >= v8 || *v71 != 120)
        {
          continue;
        }

        v14 = v71 + 1;
        *(a2 + 1) = v14;
LABEL_204:
        if (v14 >= v8 || (v72 = *v14, v72 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 17);
          if (!result)
          {
            return result;
          }

          v73 = *(a2 + 1);
          v8 = *(a2 + 2);
        }

        else
        {
          *(this + 17) = v72;
          v73 = (v14 + 1);
          *(a2 + 1) = v73;
        }

        *(this + 53) |= 0x4000u;
        if (v8 - v73 < 2 || *v73 != 128 || v73[1] != 1)
        {
          continue;
        }

        v23 = (v73 + 2);
        *(a2 + 1) = v23;
LABEL_213:
        if (v23 >= v8 || (v74 = *v23, v74 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 18);
          if (!result)
          {
            return result;
          }

          v75 = *(a2 + 1);
          v8 = *(a2 + 2);
        }

        else
        {
          *(this + 18) = v74;
          v75 = (v23 + 1);
          *(a2 + 1) = v75;
        }

        *(this + 53) |= 0x8000u;
        if (v8 - v75 < 2 || *v75 != 136 || v75[1] != 1)
        {
          continue;
        }

        v13 = (v75 + 2);
        *(a2 + 1) = v13;
LABEL_222:
        if (v13 >= v8 || (v76 = *v13, v76 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 19);
          if (!result)
          {
            return result;
          }

          v77 = *(a2 + 1);
          v8 = *(a2 + 2);
        }

        else
        {
          *(this + 19) = v76;
          v77 = (v13 + 1);
          *(a2 + 1) = v77;
        }

        *(this + 53) |= 0x10000u;
        if (v8 - v77 < 2 || *v77 != 144 || v77[1] != 1)
        {
          continue;
        }

        v28 = (v77 + 2);
        *(a2 + 1) = v28;
LABEL_231:
        if (v28 >= v8 || (v78 = *v28, v78 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 20);
          if (!result)
          {
            return result;
          }

          v79 = *(a2 + 1);
          v8 = *(a2 + 2);
        }

        else
        {
          *(this + 20) = v78;
          v79 = (v28 + 1);
          *(a2 + 1) = v79;
        }

        *(this + 53) |= 0x20000u;
        if (v8 - v79 < 2 || *v79 != 152 || v79[1] != 1)
        {
          continue;
        }

        v34 = (v79 + 2);
        *(a2 + 1) = v34;
LABEL_240:
        if (v34 >= v8 || (v80 = *v34, v80 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 21);
          if (!result)
          {
            return result;
          }

          v81 = *(a2 + 1);
          v8 = *(a2 + 2);
        }

        else
        {
          *(this + 21) = v80;
          v81 = (v34 + 1);
          *(a2 + 1) = v81;
        }

        *(this + 53) |= 0x40000u;
        if (v8 - v81 < 2 || *v81 != 160 || v81[1] != 1)
        {
          continue;
        }

        v38 = (v81 + 2);
        *(a2 + 1) = v38;
LABEL_249:
        if (v38 >= v8 || (v82 = *v38, v82 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 22);
          if (!result)
          {
            return result;
          }

          v83 = *(a2 + 1);
          v8 = *(a2 + 2);
        }

        else
        {
          *(this + 22) = v82;
          v83 = (v38 + 1);
          *(a2 + 1) = v83;
        }

        *(this + 53) |= 0x80000u;
        if (v8 - v83 < 2 || *v83 != 168 || v83[1] != 1)
        {
          continue;
        }

        v29 = (v83 + 2);
        *(a2 + 1) = v29;
LABEL_258:
        if (v29 >= v8 || (v84 = *v29, v84 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 23);
          if (!result)
          {
            return result;
          }

          v85 = *(a2 + 1);
          v8 = *(a2 + 2);
        }

        else
        {
          *(this + 23) = v84;
          v85 = (v29 + 1);
          *(a2 + 1) = v85;
        }

        *(this + 53) |= 0x100000u;
        if (v8 - v85 < 2 || *v85 != 176 || v85[1] != 1)
        {
          continue;
        }

        v31 = (v85 + 2);
        *(a2 + 1) = v31;
LABEL_267:
        if (v31 >= v8 || (v86 = *v31, v86 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 24);
          if (!result)
          {
            return result;
          }

          v87 = *(a2 + 1);
          v8 = *(a2 + 2);
        }

        else
        {
          *(this + 24) = v86;
          v87 = (v31 + 1);
          *(a2 + 1) = v87;
        }

        *(this + 53) |= 0x200000u;
        if (v8 - v87 >= 2 && *v87 == 184 && v87[1] == 1)
        {
          goto LABEL_275;
        }

        continue;
      case 3u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_86;
        }

        v22 = *(a2 + 1);
        v8 = *(a2 + 2);
        goto LABEL_108;
      case 4u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_86;
        }

        v24 = *(a2 + 1);
        v8 = *(a2 + 2);
        goto LABEL_116;
      case 5u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_86;
        }

        v17 = *(a2 + 1);
        v8 = *(a2 + 2);
        goto LABEL_124;
      case 6u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_86;
        }

        v30 = *(a2 + 1);
        v8 = *(a2 + 2);
        goto LABEL_132;
      case 7u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_86;
        }

        v33 = *(a2 + 1);
        v8 = *(a2 + 2);
        goto LABEL_140;
      case 8u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_86;
        }

        v25 = *(a2 + 1);
        v8 = *(a2 + 2);
        goto LABEL_148;
      case 9u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_86;
        }

        v36 = *(a2 + 1);
        v8 = *(a2 + 2);
        goto LABEL_156;
      case 0xAu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_86;
        }

        v19 = *(a2 + 1);
        v8 = *(a2 + 2);
        goto LABEL_164;
      case 0xBu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_86;
        }

        v35 = *(a2 + 1);
        v8 = *(a2 + 2);
        goto LABEL_172;
      case 0xCu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_86;
        }

        v16 = *(a2 + 1);
        v8 = *(a2 + 2);
        goto LABEL_180;
      case 0xDu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_86;
        }

        v18 = *(a2 + 1);
        v8 = *(a2 + 2);
        goto LABEL_188;
      case 0xEu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_86;
        }

        v32 = *(a2 + 1);
        v8 = *(a2 + 2);
        goto LABEL_196;
      case 0xFu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_86;
        }

        v14 = *(a2 + 1);
        v8 = *(a2 + 2);
        goto LABEL_204;
      case 0x10u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_86;
        }

        v23 = *(a2 + 1);
        v8 = *(a2 + 2);
        goto LABEL_213;
      case 0x11u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_86;
        }

        v13 = *(a2 + 1);
        v8 = *(a2 + 2);
        goto LABEL_222;
      case 0x12u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_86;
        }

        v28 = *(a2 + 1);
        v8 = *(a2 + 2);
        goto LABEL_231;
      case 0x13u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_86;
        }

        v34 = *(a2 + 1);
        v8 = *(a2 + 2);
        goto LABEL_240;
      case 0x14u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_86;
        }

        v38 = *(a2 + 1);
        v8 = *(a2 + 2);
        goto LABEL_249;
      case 0x15u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_86;
        }

        v29 = *(a2 + 1);
        v8 = *(a2 + 2);
        goto LABEL_258;
      case 0x16u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_86;
        }

        v31 = *(a2 + 1);
        v8 = *(a2 + 2);
        goto LABEL_267;
      case 0x17u:
        if ((TagFallback & 7) != 0)
        {
          if (v7 == 2)
          {
            result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadPackedPrimitiveNoInline<unsigned int,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)13>(a2, this + 13);
            if (!result)
            {
              return result;
            }

            goto LABEL_294;
          }

LABEL_86:
          if (v7 == 4)
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
          v43 = *(a2 + 1);
          v8 = *(a2 + 2);
          while (1)
          {
            v157 = 0;
            if (v43 >= v8 || *v43 < 0)
            {
              if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v157))
              {
                return 0;
              }
            }

            else
            {
              v157 = *v43;
              *(a2 + 1) = v43 + 1;
            }

            v88 = *(this + 28);
            if (v88 == *(this + 29))
            {
              wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 26, v88 + 1);
              v88 = *(this + 28);
            }

            v89 = v157;
            v90 = *(this + 13);
            *(this + 28) = v88 + 1;
            *(v90 + 4 * v88) = v89;
            v91 = *(this + 29) - *(this + 28);
            if (v91 >= 1)
            {
              v92 = v91 + 1;
              do
              {
                v93 = *(a2 + 1);
                v94 = *(a2 + 2);
                if (v94 - v93 < 2 || *v93 != 184 || v93[1] != 1)
                {
                  break;
                }

                *(a2 + 1) = v93 + 2;
                if ((v93 + 2) >= v94 || v93[2] < 0)
                {
                  if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v157))
                  {
                    return 0;
                  }
                }

                else
                {
                  v157 = v93[2];
                  *(a2 + 1) = v93 + 3;
                }

                v95 = *(this + 28);
                if (v95 >= *(this + 29))
                {
                  wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                  wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                  wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v158);
                  v95 = *(this + 28);
                }

                v96 = v157;
                v97 = *(this + 13);
                *(this + 28) = v95 + 1;
                *(v97 + 4 * v95) = v96;
                --v92;
              }

              while (v92 > 1);
            }

LABEL_294:
            v87 = *(a2 + 1);
            v8 = *(a2 + 2);
            if (v8 - v87 < 2)
            {
              goto LABEL_1;
            }

            v98 = *v87;
            if (v98 == 192)
            {
              break;
            }

            if (v98 != 184 || v87[1] != 1)
            {
              goto LABEL_1;
            }

LABEL_275:
            v43 = (v87 + 2);
            *(a2 + 1) = v43;
          }

          if (v87[1] == 1)
          {
            v39 = (v87 + 2);
            *(a2 + 1) = v39;
LABEL_301:
            if (v39 >= v8 || (v99 = *v39, v99 < 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 25);
              if (!result)
              {
                return result;
              }

              v100 = *(a2 + 1);
              v8 = *(a2 + 2);
            }

            else
            {
              *(this + 25) = v99;
              v100 = (v39 + 1);
              *(a2 + 1) = v100;
            }

            *(this + 53) |= 0x800000u;
            if (v8 - v100 >= 2 && *v100 == 200 && v100[1] == 1)
            {
              v21 = (v100 + 2);
              *(a2 + 1) = v21;
LABEL_310:
              if (v21 >= v8 || (v101 = *v21, v101 < 0))
              {
                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 30);
                if (!result)
                {
                  return result;
                }

                v102 = *(a2 + 1);
                v8 = *(a2 + 2);
              }

              else
              {
                *(this + 30) = v101;
                v102 = (v21 + 1);
                *(a2 + 1) = v102;
              }

              *(this + 53) |= 0x1000000u;
              if (v8 - v102 >= 2 && *v102 == 208 && v102[1] == 1)
              {
                v20 = (v102 + 2);
                *(a2 + 1) = v20;
LABEL_319:
                if (v20 >= v8 || (v103 = *v20, v103 < 0))
                {
                  result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 31);
                  if (!result)
                  {
                    return result;
                  }

                  v104 = *(a2 + 1);
                  v8 = *(a2 + 2);
                }

                else
                {
                  *(this + 31) = v103;
                  v104 = (v20 + 1);
                  *(a2 + 1) = v104;
                }

                *(this + 53) |= 0x2000000u;
                if (v8 - v104 >= 2 && *v104 == 216 && v104[1] == 1)
                {
                  v40 = (v104 + 2);
                  *(a2 + 1) = v40;
LABEL_328:
                  if (v40 >= v8 || (v105 = *v40, v105 < 0))
                  {
                    result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 32);
                    if (!result)
                    {
                      return result;
                    }

                    v106 = *(a2 + 1);
                    v8 = *(a2 + 2);
                  }

                  else
                  {
                    *(this + 32) = v105;
                    v106 = (v40 + 1);
                    *(a2 + 1) = v106;
                  }

                  *(this + 53) |= 0x4000000u;
                  if (v8 - v106 >= 2 && *v106 == 224 && v106[1] == 1)
                  {
                    v12 = (v106 + 2);
                    *(a2 + 1) = v12;
LABEL_337:
                    if (v12 >= v8 || (v107 = *v12, v107 < 0))
                    {
                      result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 33);
                      if (!result)
                      {
                        return result;
                      }

                      v108 = *(a2 + 1);
                      v8 = *(a2 + 2);
                    }

                    else
                    {
                      *(this + 33) = v107;
                      v108 = (v12 + 1);
                      *(a2 + 1) = v108;
                    }

                    *(this + 53) |= 0x8000000u;
                    if (v8 - v108 >= 2 && *v108 == 232 && v108[1] == 1)
                    {
                      while (1)
                      {
                        v44 = (v108 + 2);
                        *(a2 + 1) = v44;
LABEL_346:
                        v157 = 0;
                        if (v44 >= v8 || *v44 < 0)
                        {
                          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v157))
                          {
                            return 0;
                          }
                        }

                        else
                        {
                          v157 = *v44;
                          *(a2 + 1) = v44 + 1;
                        }

                        v109 = *(this + 36);
                        if (v109 == *(this + 37))
                        {
                          wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 34, v109 + 1);
                          v109 = *(this + 36);
                        }

                        v110 = v157;
                        v111 = *(this + 17);
                        *(this + 36) = v109 + 1;
                        *(v111 + 4 * v109) = v110;
                        v112 = *(this + 37) - *(this + 36);
                        if (v112 >= 1)
                        {
                          v113 = v112 + 1;
                          do
                          {
                            v114 = *(a2 + 1);
                            v115 = *(a2 + 2);
                            if (v115 - v114 < 2 || *v114 != 232 || v114[1] != 1)
                            {
                              break;
                            }

                            *(a2 + 1) = v114 + 2;
                            if ((v114 + 2) >= v115 || v114[2] < 0)
                            {
                              if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v157))
                              {
                                return 0;
                              }
                            }

                            else
                            {
                              v157 = v114[2];
                              *(a2 + 1) = v114 + 3;
                            }

                            v116 = *(this + 36);
                            if (v116 >= *(this + 37))
                            {
                              wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                              wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                              wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                              wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v158);
                              v116 = *(this + 36);
                            }

                            v117 = v157;
                            v118 = *(this + 17);
                            *(this + 36) = v116 + 1;
                            *(v118 + 4 * v116) = v117;
                            --v113;
                          }

                          while (v113 > 1);
                        }

LABEL_364:
                        v108 = *(a2 + 1);
                        v8 = *(a2 + 2);
                        if (v8 - v108 < 2)
                        {
                          goto LABEL_1;
                        }

                        v119 = *v108;
                        if (v119 == 240)
                        {
                          break;
                        }

                        if (v119 != 232 || v108[1] != 1)
                        {
                          goto LABEL_1;
                        }
                      }

                      if (v108[1] == 1)
                      {
                        while (1)
                        {
                          v45 = (v108 + 2);
                          *(a2 + 1) = v45;
LABEL_371:
                          v157 = 0;
                          if (v45 >= v8 || *v45 < 0)
                          {
                            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v157))
                            {
                              return 0;
                            }
                          }

                          else
                          {
                            v157 = *v45;
                            *(a2 + 1) = v45 + 1;
                          }

                          v120 = *(this + 40);
                          if (v120 == *(this + 41))
                          {
                            wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 38, v120 + 1);
                            v120 = *(this + 40);
                          }

                          v121 = v157;
                          v122 = *(this + 19);
                          *(this + 40) = v120 + 1;
                          *(v122 + 4 * v120) = v121;
                          v123 = *(this + 41) - *(this + 40);
                          if (v123 >= 1)
                          {
                            v124 = v123 + 1;
                            do
                            {
                              v125 = *(a2 + 1);
                              v126 = *(a2 + 2);
                              if (v126 - v125 < 2 || *v125 != 240 || v125[1] != 1)
                              {
                                break;
                              }

                              *(a2 + 1) = v125 + 2;
                              if ((v125 + 2) >= v126 || v125[2] < 0)
                              {
                                if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v157))
                                {
                                  return 0;
                                }
                              }

                              else
                              {
                                v157 = v125[2];
                                *(a2 + 1) = v125 + 3;
                              }

                              v127 = *(this + 40);
                              if (v127 >= *(this + 41))
                              {
                                wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                                wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                                wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                                wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v158);
                                v127 = *(this + 40);
                              }

                              v128 = v157;
                              v129 = *(this + 19);
                              *(this + 40) = v127 + 1;
                              *(v129 + 4 * v127) = v128;
                              --v124;
                            }

                            while (v124 > 1);
                          }

LABEL_389:
                          v108 = *(a2 + 1);
                          v8 = *(a2 + 2);
                          if (v8 - v108 < 2)
                          {
                            goto LABEL_1;
                          }

                          v130 = *v108;
                          if (v130 == 248)
                          {
                            break;
                          }

                          if (v130 != 240 || v108[1] != 1)
                          {
                            goto LABEL_1;
                          }
                        }

                        if (v108[1] == 1)
                        {
                          while (1)
                          {
                            v42 = (v108 + 2);
                            *(a2 + 1) = v42;
LABEL_396:
                            v157 = 0;
                            if (v42 >= v8 || *v42 < 0)
                            {
                              if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v157))
                              {
                                return 0;
                              }
                            }

                            else
                            {
                              v157 = *v42;
                              *(a2 + 1) = v42 + 1;
                            }

                            v131 = *(this + 44);
                            if (v131 == *(this + 45))
                            {
                              wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 42, v131 + 1);
                              v131 = *(this + 44);
                            }

                            v132 = v157;
                            v133 = *(this + 21);
                            *(this + 44) = v131 + 1;
                            *(v133 + 4 * v131) = v132;
                            v134 = *(this + 45) - *(this + 44);
                            if (v134 >= 1)
                            {
                              v135 = v134 + 1;
                              do
                              {
                                v136 = *(a2 + 1);
                                v137 = *(a2 + 2);
                                if (v137 - v136 < 2 || *v136 != 248 || v136[1] != 1)
                                {
                                  break;
                                }

                                *(a2 + 1) = v136 + 2;
                                if ((v136 + 2) >= v137 || v136[2] < 0)
                                {
                                  if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v157))
                                  {
                                    return 0;
                                  }
                                }

                                else
                                {
                                  v157 = v136[2];
                                  *(a2 + 1) = v136 + 3;
                                }

                                v138 = *(this + 44);
                                if (v138 >= *(this + 45))
                                {
                                  wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                                  wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                                  wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                                  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v158);
                                  v138 = *(this + 44);
                                }

                                v139 = v157;
                                v140 = *(this + 21);
                                *(this + 44) = v138 + 1;
                                *(v140 + 4 * v138) = v139;
                                --v135;
                              }

                              while (v135 > 1);
                            }

LABEL_414:
                            v108 = *(a2 + 1);
                            v8 = *(a2 + 2);
                            if (v8 - v108 < 2)
                            {
                              goto LABEL_1;
                            }

                            v141 = *v108;
                            if (v141 == 128)
                            {
                              break;
                            }

                            if (v141 != 248 || v108[1] != 1)
                            {
                              goto LABEL_1;
                            }
                          }

                          if (v108[1] == 2)
                          {
LABEL_420:
                            v41 = (v108 + 2);
                            *(a2 + 1) = v41;
                            goto LABEL_421;
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
      case 0x18u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_86;
        }

        v39 = *(a2 + 1);
        v8 = *(a2 + 2);
        goto LABEL_301;
      case 0x19u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_86;
        }

        v21 = *(a2 + 1);
        v8 = *(a2 + 2);
        goto LABEL_310;
      case 0x1Au:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_86;
        }

        v20 = *(a2 + 1);
        v8 = *(a2 + 2);
        goto LABEL_319;
      case 0x1Bu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_86;
        }

        v40 = *(a2 + 1);
        v8 = *(a2 + 2);
        goto LABEL_328;
      case 0x1Cu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_86;
        }

        v12 = *(a2 + 1);
        v8 = *(a2 + 2);
        goto LABEL_337;
      case 0x1Du:
        if ((TagFallback & 7) == 0)
        {
          v44 = *(a2 + 1);
          v8 = *(a2 + 2);
          goto LABEL_346;
        }

        if (v7 != 2)
        {
          goto LABEL_86;
        }

        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadPackedPrimitiveNoInline<unsigned int,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)13>(a2, this + 17);
        if (!result)
        {
          return result;
        }

        goto LABEL_364;
      case 0x1Eu:
        if ((TagFallback & 7) == 0)
        {
          v45 = *(a2 + 1);
          v8 = *(a2 + 2);
          goto LABEL_371;
        }

        if (v7 != 2)
        {
          goto LABEL_86;
        }

        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadPackedPrimitiveNoInline<unsigned int,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)13>(a2, this + 19);
        if (!result)
        {
          return result;
        }

        goto LABEL_389;
      case 0x1Fu:
        if ((TagFallback & 7) == 0)
        {
          v42 = *(a2 + 1);
          v8 = *(a2 + 2);
          goto LABEL_396;
        }

        if (v7 != 2)
        {
          goto LABEL_86;
        }

        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadPackedPrimitiveNoInline<unsigned int,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)13>(a2, this + 21);
        if (!result)
        {
          return result;
        }

        goto LABEL_414;
      case 0x20u:
        if ((TagFallback & 7) != 0)
        {
          if (v7 != 2)
          {
            goto LABEL_86;
          }

          result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadPackedPrimitiveNoInline<unsigned int,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)13>(a2, this + 23);
          if (!result)
          {
            return result;
          }

LABEL_439:
          v108 = *(a2 + 1);
          v8 = *(a2 + 2);
          if (v8 - v108 >= 2)
          {
            v152 = *v108;
            if (v152 == 136)
            {
              if (v108[1] == 2)
              {
                v37 = (v108 + 2);
                *(a2 + 1) = v37;
LABEL_446:
                if (v37 >= v8 || (v153 = *v37, v153 < 0))
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
                  v154 = (v37 + 1);
                  *(a2 + 1) = v154;
                }

                *(this + 54) |= 1u;
                if (v8 - v154 >= 2 && *v154 == 144 && v154[1] == 2)
                {
                  v15 = (v154 + 2);
                  *(a2 + 1) = v15;
LABEL_455:
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

                  *(this + 54) |= 2u;
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

            else if (v152 == 128 && v108[1] == 2)
            {
              goto LABEL_420;
            }
          }

          continue;
        }

        v41 = *(a2 + 1);
        v8 = *(a2 + 2);
LABEL_421:
        v157 = 0;
        if (v41 < v8 && (*v41 & 0x80000000) == 0)
        {
          v157 = *v41;
          *(a2 + 1) = v41 + 1;
          goto LABEL_425;
        }

        if (wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v157))
        {
LABEL_425:
          v142 = *(this + 48);
          if (v142 == *(this + 49))
          {
            wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 46, v142 + 1);
            v142 = *(this + 48);
          }

          v143 = v157;
          v144 = *(this + 23);
          *(this + 48) = v142 + 1;
          *(v144 + 4 * v142) = v143;
          v145 = *(this + 49) - *(this + 48);
          if (v145 >= 1)
          {
            v146 = v145 + 1;
            do
            {
              v147 = *(a2 + 1);
              v148 = *(a2 + 2);
              if (v148 - v147 < 2 || *v147 != 128 || v147[1] != 2)
              {
                break;
              }

              *(a2 + 1) = v147 + 2;
              if ((v147 + 2) >= v148 || v147[2] < 0)
              {
                if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v157))
                {
                  return 0;
                }
              }

              else
              {
                v157 = v147[2];
                *(a2 + 1) = v147 + 3;
              }

              v149 = *(this + 48);
              if (v149 >= *(this + 49))
              {
                wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v158);
                v149 = *(this + 48);
              }

              v150 = v157;
              v151 = *(this + 23);
              *(this + 48) = v149 + 1;
              *(v151 + 4 * v149) = v150;
              --v146;
            }

            while (v146 > 1);
          }

          goto LABEL_439;
        }

        return 0;
      case 0x21u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_86;
        }

        v37 = *(a2 + 1);
        v8 = *(a2 + 2);
        goto LABEL_446;
      case 0x22u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_86;
        }

        v15 = *(a2 + 1);
        v8 = *(a2 + 2);
        goto LABEL_455;
      default:
        goto LABEL_86;
    }
  }
}