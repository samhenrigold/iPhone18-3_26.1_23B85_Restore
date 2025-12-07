uint64_t awd::metrics::SoundUMB_ATM_REG_Duration::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 136);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(1, *(this + 8), a2, a4);
    v6 = *(v5 + 136);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_33;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(2, *(v5 + 16), a2, a4);
  v6 = *(v5 + 136);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_34;
  }

LABEL_33:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(3, *(v5 + 24), a2, a4);
  v6 = *(v5 + 136);
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_35;
  }

LABEL_34:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(4, *(v5 + 28), a2, a4);
  v6 = *(v5 + 136);
  if ((v6 & 0x10) == 0)
  {
LABEL_6:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_36;
  }

LABEL_35:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(5, *(v5 + 32), a2, a4);
  v6 = *(v5 + 136);
  if ((v6 & 0x20) == 0)
  {
LABEL_7:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_37;
  }

LABEL_36:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(6, *(v5 + 36), a2, a4);
  v6 = *(v5 + 136);
  if ((v6 & 0x40) == 0)
  {
LABEL_8:
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_38;
  }

LABEL_37:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(7, *(v5 + 40), a2, a4);
  v6 = *(v5 + 136);
  if ((v6 & 0x80) == 0)
  {
LABEL_9:
    if ((v6 & 0x100) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_39;
  }

LABEL_38:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(8, *(v5 + 44), a2, a4);
  v6 = *(v5 + 136);
  if ((v6 & 0x100) == 0)
  {
LABEL_10:
    if ((v6 & 0x200) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_40;
  }

LABEL_39:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(9, *(v5 + 48), a2, a4);
  v6 = *(v5 + 136);
  if ((v6 & 0x200) == 0)
  {
LABEL_11:
    if ((v6 & 0x400) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_41;
  }

LABEL_40:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xA, *(v5 + 52), a2, a4);
  v6 = *(v5 + 136);
  if ((v6 & 0x400) == 0)
  {
LABEL_12:
    if ((v6 & 0x800) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_42;
  }

LABEL_41:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xB, *(v5 + 56), a2, a4);
  v6 = *(v5 + 136);
  if ((v6 & 0x800) == 0)
  {
LABEL_13:
    if ((v6 & 0x1000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_43;
  }

LABEL_42:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xC, *(v5 + 60), a2, a4);
  v6 = *(v5 + 136);
  if ((v6 & 0x1000) == 0)
  {
LABEL_14:
    if ((v6 & 0x2000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_44;
  }

LABEL_43:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xD, *(v5 + 64), a2, a4);
  v6 = *(v5 + 136);
  if ((v6 & 0x2000) == 0)
  {
LABEL_15:
    if ((v6 & 0x4000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_45;
  }

LABEL_44:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xE, *(v5 + 68), a2, a4);
  v6 = *(v5 + 136);
  if ((v6 & 0x4000) == 0)
  {
LABEL_16:
    if ((v6 & 0x8000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_46;
  }

LABEL_45:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xF, *(v5 + 72), a2, a4);
  v6 = *(v5 + 136);
  if ((v6 & 0x8000) == 0)
  {
LABEL_17:
    if ((v6 & 0x10000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_47;
  }

LABEL_46:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x10, *(v5 + 76), a2, a4);
  v6 = *(v5 + 136);
  if ((v6 & 0x10000) == 0)
  {
LABEL_18:
    if ((v6 & 0x20000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_48;
  }

LABEL_47:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x11, *(v5 + 80), a2, a4);
  v6 = *(v5 + 136);
  if ((v6 & 0x20000) == 0)
  {
LABEL_19:
    if ((v6 & 0x40000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_49;
  }

LABEL_48:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x12, *(v5 + 84), a2, a4);
  v6 = *(v5 + 136);
  if ((v6 & 0x40000) == 0)
  {
LABEL_20:
    if ((v6 & 0x80000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_50;
  }

LABEL_49:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x13, *(v5 + 88), a2, a4);
  v6 = *(v5 + 136);
  if ((v6 & 0x80000) == 0)
  {
LABEL_21:
    if ((v6 & 0x100000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_51;
  }

LABEL_50:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x14, *(v5 + 92), a2, a4);
  v6 = *(v5 + 136);
  if ((v6 & 0x100000) == 0)
  {
LABEL_22:
    if ((v6 & 0x200000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_52;
  }

LABEL_51:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x15, *(v5 + 96), a2, a4);
  v6 = *(v5 + 136);
  if ((v6 & 0x200000) == 0)
  {
LABEL_23:
    if ((v6 & 0x400000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_53;
  }

LABEL_52:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x16, *(v5 + 100), a2, a4);
  v6 = *(v5 + 136);
  if ((v6 & 0x400000) == 0)
  {
LABEL_24:
    if ((v6 & 0x800000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_54;
  }

LABEL_53:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x17, *(v5 + 104), a2, a4);
  v6 = *(v5 + 136);
  if ((v6 & 0x800000) == 0)
  {
LABEL_25:
    if ((v6 & 0x1000000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_55;
  }

LABEL_54:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x18, *(v5 + 108), a2, a4);
  v6 = *(v5 + 136);
  if ((v6 & 0x1000000) == 0)
  {
LABEL_26:
    if ((v6 & 0x2000000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_56;
  }

LABEL_55:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x19, *(v5 + 112), a2, a4);
  v6 = *(v5 + 136);
  if ((v6 & 0x2000000) == 0)
  {
LABEL_27:
    if ((v6 & 0x4000000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_57;
  }

LABEL_56:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x1A, *(v5 + 116), a2, a4);
  v6 = *(v5 + 136);
  if ((v6 & 0x4000000) == 0)
  {
LABEL_28:
    if ((v6 & 0x8000000) == 0)
    {
      goto LABEL_29;
    }

LABEL_58:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x1C, *(v5 + 124), a2, a4);
    if ((*(v5 + 136) & 0x10000000) == 0)
    {
      return this;
    }

    goto LABEL_59;
  }

LABEL_57:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x1B, *(v5 + 120), a2, a4);
  v6 = *(v5 + 136);
  if ((v6 & 0x8000000) != 0)
  {
    goto LABEL_58;
  }

LABEL_29:
  if ((v6 & 0x10000000) == 0)
  {
    return this;
  }

LABEL_59:
  v7 = *(v5 + 128);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x1D, v7, a2, a4);
}

uint64_t awd::metrics::SoundUMB_ATM_REG_Duration::ByteSize(awd::metrics::SoundUMB_ATM_REG_Duration *this, unint64_t a2)
{
  v3 = *(this + 34);
  if (!v3)
  {
    v4 = 0;
    goto LABEL_39;
  }

  if (v3)
  {
    v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 1)) + 1;
    v3 = *(this + 34);
    if ((v3 & 2) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v4 = 0;
  if ((v3 & 2) != 0)
  {
LABEL_7:
    v4 = v4 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 2)) + 1;
    v3 = *(this + 34);
  }

LABEL_8:
  if ((v3 & 4) != 0)
  {
    v5 = *(this + 6);
    if (v5 >= 0x80)
    {
      v6 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5) + 1;
      v3 = *(this + 34);
    }

    else
    {
      v6 = 2;
    }

    v4 = (v6 + v4);
    if ((v3 & 8) == 0)
    {
LABEL_10:
      if ((v3 & 0x10) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_23;
    }
  }

  else if ((v3 & 8) == 0)
  {
    goto LABEL_10;
  }

  v7 = *(this + 7);
  if (v7 >= 0x80)
  {
    v8 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v7) + 1;
    v3 = *(this + 34);
  }

  else
  {
    v8 = 2;
  }

  v4 = (v8 + v4);
  if ((v3 & 0x10) == 0)
  {
LABEL_11:
    if ((v3 & 0x20) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_27;
  }

LABEL_23:
  v9 = *(this + 8);
  if (v9 >= 0x80)
  {
    v10 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v9) + 1;
    v3 = *(this + 34);
  }

  else
  {
    v10 = 2;
  }

  v4 = (v10 + v4);
  if ((v3 & 0x20) == 0)
  {
LABEL_12:
    if ((v3 & 0x40) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_31;
  }

LABEL_27:
  v11 = *(this + 9);
  if (v11 >= 0x80)
  {
    v12 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v11) + 1;
    v3 = *(this + 34);
  }

  else
  {
    v12 = 2;
  }

  v4 = (v12 + v4);
  if ((v3 & 0x40) == 0)
  {
LABEL_13:
    if ((v3 & 0x80) == 0)
    {
      goto LABEL_39;
    }

    goto LABEL_35;
  }

LABEL_31:
  v13 = *(this + 10);
  if (v13 >= 0x80)
  {
    v14 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v13) + 1;
    v3 = *(this + 34);
  }

  else
  {
    v14 = 2;
  }

  v4 = (v14 + v4);
  if ((v3 & 0x80) != 0)
  {
LABEL_35:
    v15 = *(this + 11);
    if (v15 >= 0x80)
    {
      v16 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v15) + 1;
      v3 = *(this + 34);
    }

    else
    {
      v16 = 2;
    }

    v4 = (v16 + v4);
  }

LABEL_39:
  if ((v3 & 0xFF00) == 0)
  {
    goto LABEL_81;
  }

  if ((v3 & 0x100) != 0)
  {
    v17 = *(this + 12);
    if (v17 >= 0x80)
    {
      v18 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v17) + 1;
      v3 = *(this + 34);
    }

    else
    {
      v18 = 2;
    }

    v4 = (v18 + v4);
    if ((v3 & 0x200) == 0)
    {
LABEL_42:
      if ((v3 & 0x400) == 0)
      {
        goto LABEL_43;
      }

      goto LABEL_57;
    }
  }

  else if ((v3 & 0x200) == 0)
  {
    goto LABEL_42;
  }

  v19 = *(this + 13);
  if (v19 >= 0x80)
  {
    v20 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v19) + 1;
    v3 = *(this + 34);
  }

  else
  {
    v20 = 2;
  }

  v4 = (v20 + v4);
  if ((v3 & 0x400) == 0)
  {
LABEL_43:
    if ((v3 & 0x800) == 0)
    {
      goto LABEL_44;
    }

    goto LABEL_61;
  }

LABEL_57:
  v21 = *(this + 14);
  if (v21 >= 0x80)
  {
    v22 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v21) + 1;
    v3 = *(this + 34);
  }

  else
  {
    v22 = 2;
  }

  v4 = (v22 + v4);
  if ((v3 & 0x800) == 0)
  {
LABEL_44:
    if ((v3 & 0x1000) == 0)
    {
      goto LABEL_45;
    }

    goto LABEL_65;
  }

LABEL_61:
  v23 = *(this + 15);
  if (v23 >= 0x80)
  {
    v24 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v23) + 1;
    v3 = *(this + 34);
  }

  else
  {
    v24 = 2;
  }

  v4 = (v24 + v4);
  if ((v3 & 0x1000) == 0)
  {
LABEL_45:
    if ((v3 & 0x2000) == 0)
    {
      goto LABEL_46;
    }

    goto LABEL_69;
  }

LABEL_65:
  v25 = *(this + 16);
  if (v25 >= 0x80)
  {
    v26 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v25) + 1;
    v3 = *(this + 34);
  }

  else
  {
    v26 = 2;
  }

  v4 = (v26 + v4);
  if ((v3 & 0x2000) == 0)
  {
LABEL_46:
    if ((v3 & 0x4000) == 0)
    {
      goto LABEL_47;
    }

    goto LABEL_73;
  }

LABEL_69:
  v27 = *(this + 17);
  if (v27 >= 0x80)
  {
    v28 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v27) + 1;
    v3 = *(this + 34);
  }

  else
  {
    v28 = 2;
  }

  v4 = (v28 + v4);
  if ((v3 & 0x4000) == 0)
  {
LABEL_47:
    if ((v3 & 0x8000) == 0)
    {
      goto LABEL_81;
    }

    goto LABEL_77;
  }

LABEL_73:
  v29 = *(this + 18);
  if (v29 >= 0x80)
  {
    v30 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v29) + 1;
    v3 = *(this + 34);
  }

  else
  {
    v30 = 2;
  }

  v4 = (v30 + v4);
  if ((v3 & 0x8000) != 0)
  {
LABEL_77:
    v31 = *(this + 19);
    if (v31 >= 0x80)
    {
      v32 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v31) + 2;
      v3 = *(this + 34);
    }

    else
    {
      v32 = 3;
    }

    v4 = (v32 + v4);
  }

LABEL_81:
  if ((v3 & 0xFF0000) == 0)
  {
    goto LABEL_123;
  }

  if ((v3 & 0x10000) != 0)
  {
    v33 = *(this + 20);
    if (v33 >= 0x80)
    {
      v34 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v33) + 2;
      v3 = *(this + 34);
    }

    else
    {
      v34 = 3;
    }

    v4 = (v34 + v4);
    if ((v3 & 0x20000) == 0)
    {
LABEL_84:
      if ((v3 & 0x40000) == 0)
      {
        goto LABEL_85;
      }

      goto LABEL_99;
    }
  }

  else if ((v3 & 0x20000) == 0)
  {
    goto LABEL_84;
  }

  v35 = *(this + 21);
  if (v35 >= 0x80)
  {
    v36 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v35) + 2;
    v3 = *(this + 34);
  }

  else
  {
    v36 = 3;
  }

  v4 = (v36 + v4);
  if ((v3 & 0x40000) == 0)
  {
LABEL_85:
    if ((v3 & 0x80000) == 0)
    {
      goto LABEL_86;
    }

    goto LABEL_103;
  }

LABEL_99:
  v37 = *(this + 22);
  if (v37 >= 0x80)
  {
    v38 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v37) + 2;
    v3 = *(this + 34);
  }

  else
  {
    v38 = 3;
  }

  v4 = (v38 + v4);
  if ((v3 & 0x80000) == 0)
  {
LABEL_86:
    if ((v3 & 0x100000) == 0)
    {
      goto LABEL_87;
    }

    goto LABEL_107;
  }

LABEL_103:
  v39 = *(this + 23);
  if (v39 >= 0x80)
  {
    v40 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v39) + 2;
    v3 = *(this + 34);
  }

  else
  {
    v40 = 3;
  }

  v4 = (v40 + v4);
  if ((v3 & 0x100000) == 0)
  {
LABEL_87:
    if ((v3 & 0x200000) == 0)
    {
      goto LABEL_88;
    }

    goto LABEL_111;
  }

LABEL_107:
  v41 = *(this + 24);
  if (v41 >= 0x80)
  {
    v42 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v41) + 2;
    v3 = *(this + 34);
  }

  else
  {
    v42 = 3;
  }

  v4 = (v42 + v4);
  if ((v3 & 0x200000) == 0)
  {
LABEL_88:
    if ((v3 & 0x400000) == 0)
    {
      goto LABEL_89;
    }

    goto LABEL_115;
  }

LABEL_111:
  v43 = *(this + 25);
  if (v43 >= 0x80)
  {
    v44 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v43) + 2;
    v3 = *(this + 34);
  }

  else
  {
    v44 = 3;
  }

  v4 = (v44 + v4);
  if ((v3 & 0x400000) == 0)
  {
LABEL_89:
    if ((v3 & 0x800000) == 0)
    {
      goto LABEL_123;
    }

    goto LABEL_119;
  }

LABEL_115:
  v45 = *(this + 26);
  if (v45 >= 0x80)
  {
    v46 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v45) + 2;
    v3 = *(this + 34);
  }

  else
  {
    v46 = 3;
  }

  v4 = (v46 + v4);
  if ((v3 & 0x800000) != 0)
  {
LABEL_119:
    v47 = *(this + 27);
    if (v47 >= 0x80)
    {
      v48 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v47) + 2;
      v3 = *(this + 34);
    }

    else
    {
      v48 = 3;
    }

    v4 = (v48 + v4);
  }

LABEL_123:
  if (!HIBYTE(v3))
  {
    goto LABEL_150;
  }

  if ((v3 & 0x1000000) != 0)
  {
    v49 = *(this + 28);
    if (v49 >= 0x80)
    {
      v50 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v49) + 2;
      v3 = *(this + 34);
    }

    else
    {
      v50 = 3;
    }

    v4 = (v50 + v4);
    if ((v3 & 0x2000000) == 0)
    {
LABEL_126:
      if ((v3 & 0x4000000) == 0)
      {
        goto LABEL_127;
      }

      goto LABEL_138;
    }
  }

  else if ((v3 & 0x2000000) == 0)
  {
    goto LABEL_126;
  }

  v51 = *(this + 29);
  if (v51 >= 0x80)
  {
    v52 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v51) + 2;
    v3 = *(this + 34);
  }

  else
  {
    v52 = 3;
  }

  v4 = (v52 + v4);
  if ((v3 & 0x4000000) == 0)
  {
LABEL_127:
    if ((v3 & 0x8000000) == 0)
    {
      goto LABEL_128;
    }

    goto LABEL_142;
  }

LABEL_138:
  v53 = *(this + 30);
  if (v53 >= 0x80)
  {
    v54 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v53) + 2;
    v3 = *(this + 34);
  }

  else
  {
    v54 = 3;
  }

  v4 = (v54 + v4);
  if ((v3 & 0x8000000) == 0)
  {
LABEL_128:
    if ((v3 & 0x10000000) == 0)
    {
      goto LABEL_150;
    }

    goto LABEL_146;
  }

LABEL_142:
  v55 = *(this + 31);
  if (v55 >= 0x80)
  {
    v56 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v55) + 2;
    v3 = *(this + 34);
  }

  else
  {
    v56 = 3;
  }

  v4 = (v56 + v4);
  if ((v3 & 0x10000000) != 0)
  {
LABEL_146:
    v57 = *(this + 32);
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

LABEL_150:
  *(this + 33) = v4;
  return v4;
}

void awd::metrics::SoundUMB_ATM_REG_Duration::CheckTypeAndMergeFrom(awd::metrics::SoundUMB_ATM_REG_Duration *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  if (lpsrc == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v34);
  }

  v4 = *(lpsrc + 34);
  if (!v4)
  {
    goto LABEL_14;
  }

  if (v4)
  {
    v9 = *(lpsrc + 1);
    *(this + 34) |= 1u;
    *(this + 1) = v9;
    v4 = *(lpsrc + 34);
    if ((v4 & 2) == 0)
    {
LABEL_7:
      if ((v4 & 4) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_44;
    }
  }

  else if ((v4 & 2) == 0)
  {
    goto LABEL_7;
  }

  v10 = *(lpsrc + 2);
  *(this + 34) |= 2u;
  *(this + 2) = v10;
  v4 = *(lpsrc + 34);
  if ((v4 & 4) == 0)
  {
LABEL_8:
    if ((v4 & 8) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_45;
  }

LABEL_44:
  v11 = *(lpsrc + 6);
  *(this + 34) |= 4u;
  *(this + 6) = v11;
  v4 = *(lpsrc + 34);
  if ((v4 & 8) == 0)
  {
LABEL_9:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_46;
  }

LABEL_45:
  v12 = *(lpsrc + 7);
  *(this + 34) |= 8u;
  *(this + 7) = v12;
  v4 = *(lpsrc + 34);
  if ((v4 & 0x10) == 0)
  {
LABEL_10:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_11;
    }

LABEL_47:
    v14 = *(lpsrc + 9);
    *(this + 34) |= 0x20u;
    *(this + 9) = v14;
    v4 = *(lpsrc + 34);
    if ((v4 & 0x40) == 0)
    {
LABEL_12:
      if ((v4 & 0x80) == 0)
      {
        goto LABEL_14;
      }

      goto LABEL_13;
    }

    goto LABEL_48;
  }

LABEL_46:
  v13 = *(lpsrc + 8);
  *(this + 34) |= 0x10u;
  *(this + 8) = v13;
  v4 = *(lpsrc + 34);
  if ((v4 & 0x20) != 0)
  {
    goto LABEL_47;
  }

LABEL_11:
  if ((v4 & 0x40) == 0)
  {
    goto LABEL_12;
  }

LABEL_48:
  v15 = *(lpsrc + 10);
  *(this + 34) |= 0x40u;
  *(this + 10) = v15;
  v4 = *(lpsrc + 34);
  if ((v4 & 0x80) != 0)
  {
LABEL_13:
    v5 = *(lpsrc + 11);
    *(this + 34) |= 0x80u;
    *(this + 11) = v5;
    v4 = *(lpsrc + 34);
  }

LABEL_14:
  if ((v4 & 0xFF00) == 0)
  {
    goto LABEL_24;
  }

  if ((v4 & 0x100) != 0)
  {
    v16 = *(lpsrc + 12);
    *(this + 34) |= 0x100u;
    *(this + 12) = v16;
    v4 = *(lpsrc + 34);
    if ((v4 & 0x200) == 0)
    {
LABEL_17:
      if ((v4 & 0x400) == 0)
      {
        goto LABEL_18;
      }

      goto LABEL_52;
    }
  }

  else if ((v4 & 0x200) == 0)
  {
    goto LABEL_17;
  }

  v17 = *(lpsrc + 13);
  *(this + 34) |= 0x200u;
  *(this + 13) = v17;
  v4 = *(lpsrc + 34);
  if ((v4 & 0x400) == 0)
  {
LABEL_18:
    if ((v4 & 0x800) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_53;
  }

LABEL_52:
  v18 = *(lpsrc + 14);
  *(this + 34) |= 0x400u;
  *(this + 14) = v18;
  v4 = *(lpsrc + 34);
  if ((v4 & 0x800) == 0)
  {
LABEL_19:
    if ((v4 & 0x1000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_54;
  }

LABEL_53:
  v19 = *(lpsrc + 15);
  *(this + 34) |= 0x800u;
  *(this + 15) = v19;
  v4 = *(lpsrc + 34);
  if ((v4 & 0x1000) == 0)
  {
LABEL_20:
    if ((v4 & 0x2000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_55;
  }

LABEL_54:
  v20 = *(lpsrc + 16);
  *(this + 34) |= 0x1000u;
  *(this + 16) = v20;
  v4 = *(lpsrc + 34);
  if ((v4 & 0x2000) == 0)
  {
LABEL_21:
    if ((v4 & 0x4000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_56;
  }

LABEL_55:
  v21 = *(lpsrc + 17);
  *(this + 34) |= 0x2000u;
  *(this + 17) = v21;
  v4 = *(lpsrc + 34);
  if ((v4 & 0x4000) == 0)
  {
LABEL_22:
    if ((v4 & 0x8000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_23;
  }

LABEL_56:
  v22 = *(lpsrc + 18);
  *(this + 34) |= 0x4000u;
  *(this + 18) = v22;
  v4 = *(lpsrc + 34);
  if ((v4 & 0x8000) != 0)
  {
LABEL_23:
    v6 = *(lpsrc + 19);
    *(this + 34) |= 0x8000u;
    *(this + 19) = v6;
    v4 = *(lpsrc + 34);
  }

LABEL_24:
  if ((v4 & 0xFF0000) == 0)
  {
    goto LABEL_34;
  }

  if ((v4 & 0x10000) != 0)
  {
    v23 = *(lpsrc + 20);
    *(this + 34) |= 0x10000u;
    *(this + 20) = v23;
    v4 = *(lpsrc + 34);
    if ((v4 & 0x20000) == 0)
    {
LABEL_27:
      if ((v4 & 0x40000) == 0)
      {
        goto LABEL_28;
      }

      goto LABEL_60;
    }
  }

  else if ((v4 & 0x20000) == 0)
  {
    goto LABEL_27;
  }

  v24 = *(lpsrc + 21);
  *(this + 34) |= 0x20000u;
  *(this + 21) = v24;
  v4 = *(lpsrc + 34);
  if ((v4 & 0x40000) == 0)
  {
LABEL_28:
    if ((v4 & 0x80000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_61;
  }

LABEL_60:
  v25 = *(lpsrc + 22);
  *(this + 34) |= 0x40000u;
  *(this + 22) = v25;
  v4 = *(lpsrc + 34);
  if ((v4 & 0x80000) == 0)
  {
LABEL_29:
    if ((v4 & 0x100000) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_62;
  }

LABEL_61:
  v26 = *(lpsrc + 23);
  *(this + 34) |= 0x80000u;
  *(this + 23) = v26;
  v4 = *(lpsrc + 34);
  if ((v4 & 0x100000) == 0)
  {
LABEL_30:
    if ((v4 & 0x200000) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_63;
  }

LABEL_62:
  v27 = *(lpsrc + 24);
  *(this + 34) |= 0x100000u;
  *(this + 24) = v27;
  v4 = *(lpsrc + 34);
  if ((v4 & 0x200000) == 0)
  {
LABEL_31:
    if ((v4 & 0x400000) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_64;
  }

LABEL_63:
  v28 = *(lpsrc + 25);
  *(this + 34) |= 0x200000u;
  *(this + 25) = v28;
  v4 = *(lpsrc + 34);
  if ((v4 & 0x400000) == 0)
  {
LABEL_32:
    if ((v4 & 0x800000) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_33;
  }

LABEL_64:
  v29 = *(lpsrc + 26);
  *(this + 34) |= 0x400000u;
  *(this + 26) = v29;
  v4 = *(lpsrc + 34);
  if ((v4 & 0x800000) != 0)
  {
LABEL_33:
    v7 = *(lpsrc + 27);
    *(this + 34) |= 0x800000u;
    *(this + 27) = v7;
    v4 = *(lpsrc + 34);
  }

LABEL_34:
  if (!HIBYTE(v4))
  {
    return;
  }

  if ((v4 & 0x1000000) != 0)
  {
    v30 = *(lpsrc + 28);
    *(this + 34) |= 0x1000000u;
    *(this + 28) = v30;
    v4 = *(lpsrc + 34);
    if ((v4 & 0x2000000) == 0)
    {
LABEL_37:
      if ((v4 & 0x4000000) == 0)
      {
        goto LABEL_38;
      }

      goto LABEL_68;
    }
  }

  else if ((v4 & 0x2000000) == 0)
  {
    goto LABEL_37;
  }

  v31 = *(lpsrc + 29);
  *(this + 34) |= 0x2000000u;
  *(this + 29) = v31;
  v4 = *(lpsrc + 34);
  if ((v4 & 0x4000000) == 0)
  {
LABEL_38:
    if ((v4 & 0x8000000) == 0)
    {
      goto LABEL_39;
    }

    goto LABEL_69;
  }

LABEL_68:
  v32 = *(lpsrc + 30);
  *(this + 34) |= 0x4000000u;
  *(this + 30) = v32;
  v4 = *(lpsrc + 34);
  if ((v4 & 0x8000000) == 0)
  {
LABEL_39:
    if ((v4 & 0x10000000) == 0)
    {
      return;
    }

    goto LABEL_40;
  }

LABEL_69:
  v33 = *(lpsrc + 31);
  *(this + 34) |= 0x8000000u;
  *(this + 31) = v33;
  if ((*(lpsrc + 34) & 0x10000000) != 0)
  {
LABEL_40:
    v8 = *(lpsrc + 32);
    *(this + 34) |= 0x10000000u;
    *(this + 32) = v8;
  }
}

void sub_2373C9084(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void _GLOBAL__sub_I_CCMetricsCounts_pb_cc(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  if ((_MergedGlobals_11 & 1) == 0)
  {
    _MergedGlobals_11 = 1;
    wireless_diagnostics::google::protobuf::internal::VerifyVersion(0x1E9808, 2005000, "/Library/Caches/com.apple.xbs/Sources/CoreTelephony/CommCenter/Source/AWDMetrics/cpp/CCMetricsCounts.pb.cc", a4);
    operator new();
  }
}

uint64_t awd::metrics::protobuf_ShutdownFile_CCMetricsInstruments_2eproto(awd::metrics *this)
{
  if (qword_2810D8910)
  {
    (*(*qword_2810D8910 + 8))(qword_2810D8910);
  }

  if (qword_2810D8918)
  {
    (*(*qword_2810D8918 + 8))(qword_2810D8918);
  }

  if (qword_2810D8920)
  {
    (*(*qword_2810D8920 + 8))(qword_2810D8920);
  }

  if (qword_2810D8928)
  {
    (*(*qword_2810D8928 + 8))(qword_2810D8928);
  }

  if (qword_2810D8930)
  {
    (*(*qword_2810D8930 + 8))(qword_2810D8930);
  }

  if (qword_2810D8938)
  {
    (*(*qword_2810D8938 + 8))(qword_2810D8938);
  }

  if (qword_2810D8940)
  {
    (*(*qword_2810D8940 + 8))(qword_2810D8940);
  }

  if (qword_2810D8948)
  {
    (*(*qword_2810D8948 + 8))(qword_2810D8948);
  }

  if (qword_2810D8950)
  {
    (*(*qword_2810D8950 + 8))(qword_2810D8950);
  }

  if (qword_2810D8958)
  {
    (*(*qword_2810D8958 + 8))(qword_2810D8958);
  }

  if (qword_2810D8960)
  {
    (*(*qword_2810D8960 + 8))(qword_2810D8960);
  }

  if (qword_2810D8968)
  {
    (*(*qword_2810D8968 + 8))(qword_2810D8968);
  }

  if (qword_2810D8970)
  {
    (*(*qword_2810D8970 + 8))(qword_2810D8970);
  }

  if (qword_2810D8978)
  {
    (*(*qword_2810D8978 + 8))(qword_2810D8978);
  }

  if (qword_2810D8980)
  {
    (*(*qword_2810D8980 + 8))(qword_2810D8980);
  }

  if (qword_2810D8988)
  {
    (*(*qword_2810D8988 + 8))(qword_2810D8988);
  }

  if (qword_2810D8990)
  {
    (*(*qword_2810D8990 + 8))(qword_2810D8990);
  }

  if (qword_2810D8998)
  {
    (*(*qword_2810D8998 + 8))(qword_2810D8998);
  }

  result = qword_2810D89A0;
  if (qword_2810D89A0)
  {
    v2 = *(*qword_2810D89A0 + 8);

    return v2();
  }

  return result;
}

uint64_t awd::metrics::CommCenter_Instruments_CellularWcdmaRrcMsgEvent::CommCenter_Instruments_CellularWcdmaRrcMsgEvent(uint64_t this)
{
  *(this + 8) = 0;
  *(this + 16) = 0;
  *this = &unk_284A602D0;
  *(this + 24) = 0;
  return this;
}

uint64_t awd::metrics::CommCenter_Instruments_CellularWcdmaRrcState::CommCenter_Instruments_CellularWcdmaRrcState(uint64_t this)
{
  *(this + 8) = 0;
  *(this + 16) = 0;
  *this = &unk_284A60348;
  *(this + 24) = 0;
  return this;
}

uint64_t awd::metrics::CommCenter_Instruments_CellularWcdmaTxRxAgc::CommCenter_Instruments_CellularWcdmaTxRxAgc(uint64_t this)
{
  *(this + 40) = 0;
  *this = &unk_284A60438;
  *(this + 8) = 0;
  *(this + 16) = 0;
  *(this + 24) = 0;
  *(this + 32) = 0;
  return this;
}

uint64_t awd::metrics::CommCenter_Instruments_CellularWcdmaMultiRabStatus::CommCenter_Instruments_CellularWcdmaMultiRabStatus(uint64_t this)
{
  *(this + 40) = 0;
  *this = &unk_284A60528;
  *(this + 8) = 0;
  *(this + 16) = 0;
  *(this + 24) = 0;
  *(this + 32) = 0;
  return this;
}

uint64_t awd::metrics::CommCenter_Instruments_CellularWcdmaRbRateStatus::CommCenter_Instruments_CellularWcdmaRbRateStatus(uint64_t this)
{
  *(this + 40) = 0;
  *this = &unk_284A60618;
  *(this + 8) = 0;
  *(this + 16) = 0;
  *(this + 24) = 0;
  *(this + 32) = 0;
  return this;
}

void *awd::metrics::CommCenter_Instruments_CellularPsCallConnect::CommCenter_Instruments_CellularPsCallConnect(void *this)
{
  this[1] = 0;
  this[2] = 0;
  *this = &unk_284A60690;
  return this;
}

void *awd::metrics::CommCenter_Instruments_CellularPsCallEnd::CommCenter_Instruments_CellularPsCallEnd(void *this)
{
  this[1] = 0;
  this[2] = 0;
  *this = &unk_284A60708;
  return this;
}

void *awd::metrics::CommCenter_Instruments_CellularEvdoAlmpConnOpened::CommCenter_Instruments_CellularEvdoAlmpConnOpened(void *this)
{
  this[1] = 0;
  this[2] = 0;
  *this = &unk_284A60780;
  return this;
}

void *awd::metrics::CommCenter_Instruments_CellularEvdoAlmpConnClosed::CommCenter_Instruments_CellularEvdoAlmpConnClosed(void *this)
{
  this[1] = 0;
  this[2] = 0;
  *this = &unk_284A607F8;
  return this;
}

void *awd::metrics::CommCenter_Instruments_CellularLteRrcMsgEvent::CommCenter_Instruments_CellularLteRrcMsgEvent(void *this)
{
  *this = &unk_284A60870;
  this[1] = 0;
  this[2] = 0;
  this[3] = 0;
  return this;
}

uint64_t awd::metrics::CommCenter_Instruments_CellularLteRrcState::CommCenter_Instruments_CellularLteRrcState(uint64_t this)
{
  *(this + 8) = 0;
  *(this + 16) = 0;
  *this = &unk_284A608E8;
  *(this + 24) = 0;
  return this;
}

uint64_t awd::metrics::CommCenter_Instruments_CellularLteRfAgc::CommCenter_Instruments_CellularLteRfAgc(uint64_t this)
{
  *(this + 8) = 0;
  *(this + 16) = 0;
  *this = &unk_284A60960;
  *(this + 24) = 0;
  return this;
}

uint64_t awd::metrics::CommCenter_Instruments_CellularFallback::CommCenter_Instruments_CellularFallback(uint64_t this)
{
  *(this + 8) = 0;
  *(this + 16) = 0;
  *this = &unk_284A609D8;
  *(this + 24) = 0;
  return this;
}

uint64_t awd::metrics::CommCenter_Instruments_CellularIpThroughput::CommCenter_Instruments_CellularIpThroughput(uint64_t this)
{
  *(this + 40) = 0;
  *(this + 48) = 0;
  *this = &unk_284A60AC8;
  *(this + 8) = 0;
  *(this + 16) = 0;
  *(this + 24) = 0;
  *(this + 32) = 0;
  return this;
}

uint64_t awd::metrics::CommCenter_Instruments_CellularServiceStatus::CommCenter_Instruments_CellularServiceStatus(uint64_t this)
{
  *(this + 8) = 0;
  *(this + 16) = 0;
  *this = &unk_284A60B40;
  *(this + 24) = 0;
  return this;
}

void awd::metrics::CommCenter_Instruments_CellularWcdmaRrcMsgEvent::~CommCenter_Instruments_CellularWcdmaRrcMsgEvent(awd::metrics::CommCenter_Instruments_CellularWcdmaRrcMsgEvent *this)
{
  *this = &unk_284A602D0;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_284A602D0;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  JUMPOUT(0x2383CAFA0);
}

uint64_t awd::metrics::CommCenter_Instruments_CellularWcdmaRrcMsgEvent::Clear(uint64_t this)
{
  if (*(this + 24))
  {
    *(this + 8) = 0;
    *(this + 16) = 0;
  }

  *(this + 24) = 0;
  return this;
}

uint64_t awd::metrics::CommCenter_Instruments_CellularWcdmaRrcMsgEvent::MergePartialFromCodedStream(awd::metrics::CommCenter_Instruments_CellularWcdmaRrcMsgEvent *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
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

      if (TagFallback >> 3 == 4)
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
      if (v10 < v7 && *v10 == 32)
      {
        v11 = v10 + 1;
        *(a2 + 1) = v11;
LABEL_22:
        if (v11 >= v7 || (v12 = *v11, v12 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 4);
          if (!result)
          {
            return result;
          }

          v13 = *(a2 + 1);
          v7 = *(a2 + 2);
        }

        else
        {
          *(this + 4) = v12;
          v13 = v11 + 1;
          *(a2 + 1) = v13;
        }

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

uint64_t awd::metrics::CommCenter_Instruments_CellularWcdmaRrcMsgEvent::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
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

    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(4, v7, a2, a4);
  }

  return this;
}

uint64_t awd::metrics::CommCenter_Instruments_CellularWcdmaRrcMsgEvent::ByteSize(wireless_diagnostics::google::protobuf::io::CodedOutputStream **this, unint64_t a2)
{
  if (*(this + 24))
  {
    if (this[3])
    {
      v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(this[1]) + 1;
      if ((this[3] & 2) == 0)
      {
        goto LABEL_11;
      }
    }

    else
    {
      v3 = 0;
      if ((this[3] & 2) == 0)
      {
        goto LABEL_11;
      }
    }

    v4 = *(this + 4);
    if (v4 >= 0x80)
    {
      v5 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v4) + 1;
    }

    else
    {
      v5 = 2;
    }

    v3 = (v5 + v3);
  }

  else
  {
    v3 = 0;
  }

LABEL_11:
  *(this + 5) = v3;
  return v3;
}

void awd::metrics::CommCenter_Instruments_CellularWcdmaRrcMsgEvent::CheckTypeAndMergeFrom(awd::metrics::CommCenter_Instruments_CellularWcdmaRrcMsgEvent *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  if (lpsrc == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v7);
  }

  LOBYTE(v4) = *(lpsrc + 24);
  if (v4)
  {
    if (*(lpsrc + 24))
    {
      v5 = *(lpsrc + 1);
      *(this + 6) |= 1u;
      *(this + 1) = v5;
      v4 = *(lpsrc + 6);
    }

    if ((v4 & 2) != 0)
    {
      v6 = *(lpsrc + 4);
      *(this + 6) |= 2u;
      *(this + 4) = v6;
    }
  }
}

void sub_2373CA0D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::metrics::CommCenter_Instruments_CellularWcdmaRrcState::~CommCenter_Instruments_CellularWcdmaRrcState(awd::metrics::CommCenter_Instruments_CellularWcdmaRrcState *this)
{
  *this = &unk_284A60348;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_284A60348;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  JUMPOUT(0x2383CAFA0);
}

uint64_t awd::metrics::CommCenter_Instruments_CellularWcdmaRrcState::Clear(uint64_t this)
{
  if (*(this + 24))
  {
    *(this + 8) = 0;
    *(this + 16) = 0;
  }

  *(this + 24) = 0;
  return this;
}

uint64_t awd::metrics::CommCenter_Instruments_CellularWcdmaRrcState::MergePartialFromCodedStream(awd::metrics::CommCenter_Instruments_CellularWcdmaRrcState *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
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

      if (TagFallback >> 3 == 3)
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
      if (v10 < v7 && *v10 == 24)
      {
        v11 = v10 + 1;
        *(a2 + 1) = v11;
LABEL_22:
        if (v11 >= v7 || (v12 = *v11, v12 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 4);
          if (!result)
          {
            return result;
          }

          v13 = *(a2 + 1);
          v7 = *(a2 + 2);
        }

        else
        {
          *(this + 4) = v12;
          v13 = v11 + 1;
          *(a2 + 1) = v13;
        }

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

uint64_t awd::metrics::CommCenter_Instruments_CellularWcdmaRrcState::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
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

    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(3, v7, a2, a4);
  }

  return this;
}

uint64_t awd::metrics::CommCenter_Instruments_CellularWcdmaRrcState::ByteSize(wireless_diagnostics::google::protobuf::io::CodedOutputStream **this, unint64_t a2)
{
  if (*(this + 24))
  {
    if (this[3])
    {
      v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(this[1]) + 1;
      if ((this[3] & 2) == 0)
      {
        goto LABEL_11;
      }
    }

    else
    {
      v3 = 0;
      if ((this[3] & 2) == 0)
      {
        goto LABEL_11;
      }
    }

    v4 = *(this + 4);
    if (v4 >= 0x80)
    {
      v5 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v4) + 1;
    }

    else
    {
      v5 = 2;
    }

    v3 = (v5 + v3);
  }

  else
  {
    v3 = 0;
  }

LABEL_11:
  *(this + 5) = v3;
  return v3;
}

void awd::metrics::CommCenter_Instruments_CellularWcdmaRrcState::CheckTypeAndMergeFrom(awd::metrics::CommCenter_Instruments_CellularWcdmaRrcState *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  if (lpsrc == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v7);
  }

  LOBYTE(v4) = *(lpsrc + 24);
  if (v4)
  {
    if (*(lpsrc + 24))
    {
      v5 = *(lpsrc + 1);
      *(this + 6) |= 1u;
      *(this + 1) = v5;
      v4 = *(lpsrc + 6);
    }

    if ((v4 & 2) != 0)
    {
      v6 = *(lpsrc + 4);
      *(this + 6) |= 2u;
      *(this + 4) = v6;
    }
  }
}

void sub_2373CA55C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::metrics::CommCenter_Instruments_CellularWcdmaTxRxAgc_TxRxAgc::MergeFrom(awd::metrics::CommCenter_Instruments_CellularWcdmaTxRxAgc_TxRxAgc *this, const awd::metrics::CommCenter_Instruments_CellularWcdmaTxRxAgc_TxRxAgc *a2)
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

void sub_2373CA618(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::metrics::CommCenter_Instruments_CellularWcdmaTxRxAgc_TxRxAgc::~CommCenter_Instruments_CellularWcdmaTxRxAgc_TxRxAgc(awd::metrics::CommCenter_Instruments_CellularWcdmaTxRxAgc_TxRxAgc *this)
{
  *this = &unk_284A603C0;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_284A603C0;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  JUMPOUT(0x2383CAFA0);
}

uint64_t awd::metrics::CommCenter_Instruments_CellularWcdmaTxRxAgc_TxRxAgc::Clear(uint64_t this)
{
  if (*(this + 16))
  {
    *(this + 8) = 0;
  }

  *(this + 16) = 0;
  return this;
}

uint64_t awd::metrics::CommCenter_Instruments_CellularWcdmaTxRxAgc_TxRxAgc::MergePartialFromCodedStream(awd::metrics::CommCenter_Instruments_CellularWcdmaTxRxAgc_TxRxAgc *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
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

      v12 = 0;
      v8 = *(a2 + 1);
      v7 = *(a2 + 2);
      if (v8 >= v7 || (v9 = *v8, (v9 & 0x80000000) != 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v12);
        if (!result)
        {
          return result;
        }

        v9 = v12;
        v10 = *(a2 + 1);
        v7 = *(a2 + 2);
      }

      else
      {
        v10 = v8 + 1;
        *(a2 + 1) = v10;
      }

      *(this + 2) = -(v9 & 1) ^ (v9 >> 1);
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

uint64_t awd::metrics::CommCenter_Instruments_CellularWcdmaTxRxAgc_TxRxAgc::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  if (*(this + 16))
  {
    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteSInt32(1, *(this + 8), a2, a4);
  }

  return this;
}

uint64_t awd::metrics::CommCenter_Instruments_CellularWcdmaTxRxAgc_TxRxAgc::ByteSize(awd::metrics::CommCenter_Instruments_CellularWcdmaTxRxAgc_TxRxAgc *this, unsigned int a2)
{
  if (*(this + 16))
  {
    v4 = ((2 * *(this + 2)) ^ (*(this + 2) >> 31));
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

void awd::metrics::CommCenter_Instruments_CellularWcdmaTxRxAgc_TxRxAgc::CheckTypeAndMergeFrom(awd::metrics::CommCenter_Instruments_CellularWcdmaTxRxAgc_TxRxAgc *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  awd::metrics::CommCenter_Instruments_CellularWcdmaTxRxAgc_TxRxAgc::MergeFrom(this, lpsrc);
}

void awd::metrics::CommCenter_Instruments_CellularWcdmaTxRxAgc::~CommCenter_Instruments_CellularWcdmaTxRxAgc(awd::metrics::CommCenter_Instruments_CellularWcdmaTxRxAgc *this)
{
  *this = &unk_284A60438;
  v2 = *(this + 7);
  if (v2 >= 1)
  {
    for (i = 0; i < v2; ++i)
    {
      v4 = *(*(this + 2) + 8 * i);
      if (v4)
      {
        (*(*v4 + 8))(v4);
        v2 = *(this + 7);
      }
    }
  }

  v5 = *(this + 2);
  if (v5)
  {
    MEMORY[0x2383CAF80](v5, 0x80C80B8603338);
  }

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  awd::metrics::CommCenter_Instruments_CellularWcdmaTxRxAgc::~CommCenter_Instruments_CellularWcdmaTxRxAgc(this);

  JUMPOUT(0x2383CAFA0);
}

uint64_t awd::metrics::CommCenter_Instruments_CellularWcdmaTxRxAgc::Clear(uint64_t this)
{
  v1 = this;
  if (*(this + 44))
  {
    *(this + 8) = 0;
  }

  if (*(this + 24) >= 1)
  {
    v2 = 0;
    do
    {
      v3 = *(*(v1 + 16) + 8 * v2);
      this = (*(*v3 + 32))(v3);
      ++v2;
    }

    while (v2 < *(v1 + 24));
  }

  *(v1 + 24) = 0;
  *(v1 + 44) = 0;
  return this;
}

uint64_t awd::metrics::CommCenter_Instruments_CellularWcdmaTxRxAgc::MergePartialFromCodedStream(awd::metrics::CommCenter_Instruments_CellularWcdmaTxRxAgc *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
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
      if (TagFallback >> 3 == 3)
      {
        break;
      }

      if (TagFallback >> 3 != 1 || (TagFallback & 7) != 0)
      {
        goto LABEL_13;
      }

      v8 = *(a2 + 1);
      v9 = *(a2 + 2);
      if (v8 >= v9 || (v10 = *v8, v10 < 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 1);
        if (!result)
        {
          return result;
        }

        v11 = *(a2 + 1);
        v9 = *(a2 + 2);
      }

      else
      {
        *(this + 1) = v10;
        v11 = v8 + 1;
        *(a2 + 1) = v11;
      }

      *(this + 11) |= 1u;
      if (v11 < v9 && *v11 == 26)
      {
        do
        {
          *(a2 + 1) = v11 + 1;
LABEL_21:
          v13 = *(this + 7);
          v14 = *(this + 6);
          if (v14 >= v13)
          {
            if (v13 == *(this + 8))
            {
              wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 16));
              v13 = *(this + 7);
            }

            *(this + 7) = v13 + 1;
            operator new();
          }

          v15 = *(this + 2);
          *(this + 6) = v14 + 1;
          v16 = *(v15 + 8 * v14);
          v25 = 0;
          v17 = *(a2 + 1);
          if (v17 >= *(a2 + 2) || *v17 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v25))
            {
              return 0;
            }
          }

          else
          {
            v25 = *v17;
            *(a2 + 1) = v17 + 1;
          }

          v18 = *(a2 + 14);
          v19 = *(a2 + 15);
          *(a2 + 14) = v18 + 1;
          if (v18 >= v19)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
          if (!awd::metrics::CommCenter_Instruments_CellularWcdmaTxRxAgc_TxRxAgc::MergePartialFromCodedStream(v16, a2, v20) || *(a2 + 36) != 1)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
          v21 = *(a2 + 14);
          v22 = __OFSUB__(v21, 1);
          v23 = v21 - 1;
          if (v23 < 0 == v22)
          {
            *(a2 + 14) = v23;
          }

          v11 = *(a2 + 1);
          v24 = *(a2 + 2);
        }

        while (v11 < v24 && *v11 == 26);
        if (v11 == v24 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
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
      goto LABEL_21;
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
}

uint64_t awd::metrics::CommCenter_Instruments_CellularWcdmaTxRxAgc::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  if (*(this + 44))
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(1, *(this + 8), a2, a4);
  }

  if (*(v5 + 24) >= 1)
  {
    v6 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(3, *(*(v5 + 16) + 8 * v6++), a2, a4);
    }

    while (v6 < *(v5 + 24));
  }

  return this;
}

uint64_t awd::metrics::CommCenter_Instruments_CellularWcdmaTxRxAgc::ByteSize(wireless_diagnostics::google::protobuf::io::CodedOutputStream **this, unint64_t a2)
{
  if (*(this + 44))
  {
    v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(this[1]) + 1;
  }

  else
  {
    v3 = 0;
  }

  v4 = *(this + 6);
  v5 = (v4 + v3);
  if (v4 >= 1)
  {
    v6 = 0;
    do
    {
      v7 = awd::metrics::CommCenter_Instruments_CellularWcdmaTxRxAgc_TxRxAgc::ByteSize(*(this[2] + v6), a2);
      v8 = v7;
      if (v7 >= 0x80)
      {
        v9 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v7);
      }

      else
      {
        v9 = 1;
      }

      v5 = (v8 + v5 + v9);
      ++v6;
    }

    while (v6 < *(this + 6));
  }

  *(this + 10) = v5;
  return v5;
}

void awd::metrics::CommCenter_Instruments_CellularWcdmaTxRxAgc::CheckTypeAndMergeFrom(awd::metrics::CommCenter_Instruments_CellularWcdmaTxRxAgc *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  if (lpsrc == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v11);
  }

  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 16));
  LODWORD(v4) = *(lpsrc + 6);
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
        wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v11);
      }

      v6 = *(*(lpsrc + 2) + 8 * v5);
      v7 = *(this + 7);
      v8 = *(this + 6);
      if (v8 >= v7)
      {
        if (v7 == *(this + 8))
        {
          wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 16));
          v7 = *(this + 7);
        }

        *(this + 7) = v7 + 1;
        operator new();
      }

      v9 = *(this + 2);
      *(this + 6) = v8 + 1;
      awd::metrics::CommCenter_Instruments_CellularWcdmaTxRxAgc_TxRxAgc::MergeFrom(*(v9 + 8 * v8), v6);
      ++v5;
      v4 = *(lpsrc + 6);
    }

    while (v5 < v4);
  }

  if (*(lpsrc + 44))
  {
    v10 = *(lpsrc + 1);
    *(this + 11) |= 1u;
    *(this + 1) = v10;
  }
}

void sub_2373CB108(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::metrics::CommCenter_Instruments_CellularWcdmaMultiRabStatus_Rab::MergeFrom(awd::metrics::CommCenter_Instruments_CellularWcdmaMultiRabStatus_Rab *this, const awd::metrics::CommCenter_Instruments_CellularWcdmaMultiRabStatus_Rab *a2)
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
    if (v4 >= 4)
    {
      __assert_rtn("set_rab_type", "CCMetricsInstruments.pb.h", 2139, "::awd::metrics::CommCenter_Instruments_CellularWcdmaMultiRabStatus_RabType_IsValid(value)");
    }

    *(this + 4) |= 1u;
    *(this + 2) = v4;
  }
}

void sub_2373CB1F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::metrics::CommCenter_Instruments_CellularWcdmaMultiRabStatus_Rab::~CommCenter_Instruments_CellularWcdmaMultiRabStatus_Rab(awd::metrics::CommCenter_Instruments_CellularWcdmaMultiRabStatus_Rab *this)
{
  *this = &unk_284A604B0;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_284A604B0;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  JUMPOUT(0x2383CAFA0);
}

uint64_t awd::metrics::CommCenter_Instruments_CellularWcdmaMultiRabStatus_Rab::Clear(uint64_t this)
{
  if (*(this + 16))
  {
    *(this + 8) = 0;
  }

  *(this + 16) = 0;
  return this;
}

uint64_t awd::metrics::CommCenter_Instruments_CellularWcdmaMultiRabStatus_Rab::MergePartialFromCodedStream(awd::metrics::CommCenter_Instruments_CellularWcdmaMultiRabStatus_Rab *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
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

      v10 = 0;
      v7 = *(a2 + 1);
      if (v7 >= *(a2 + 2) || (v8 = *v7, (v8 & 0x80000000) != 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v10);
        if (!result)
        {
          return result;
        }

        v8 = v10;
      }

      else
      {
        *(a2 + 1) = v7 + 1;
      }

      if (v8 <= 3)
      {
        *(this + 4) |= 1u;
        *(this + 2) = v8;
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

uint64_t awd::metrics::CommCenter_Instruments_CellularWcdmaMultiRabStatus_Rab::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  if (*(this + 16))
  {
    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(1, *(this + 8), a2, a4);
  }

  return this;
}

uint64_t awd::metrics::CommCenter_Instruments_CellularWcdmaMultiRabStatus_Rab::ByteSize(awd::metrics::CommCenter_Instruments_CellularWcdmaMultiRabStatus_Rab *this, unsigned int a2)
{
  if (*(this + 16))
  {
    v4 = *(this + 2);
    if ((v4 & 0x80000000) != 0)
    {
      result = 11;
    }

    else if (v4 >= 0x80)
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

void awd::metrics::CommCenter_Instruments_CellularWcdmaMultiRabStatus_Rab::CheckTypeAndMergeFrom(awd::metrics::CommCenter_Instruments_CellularWcdmaMultiRabStatus_Rab *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  awd::metrics::CommCenter_Instruments_CellularWcdmaMultiRabStatus_Rab::MergeFrom(this, lpsrc);
}

void awd::metrics::CommCenter_Instruments_CellularWcdmaMultiRabStatus::~CommCenter_Instruments_CellularWcdmaMultiRabStatus(awd::metrics::CommCenter_Instruments_CellularWcdmaMultiRabStatus *this)
{
  *this = &unk_284A60528;
  v2 = *(this + 7);
  if (v2 >= 1)
  {
    for (i = 0; i < v2; ++i)
    {
      v4 = *(*(this + 2) + 8 * i);
      if (v4)
      {
        (*(*v4 + 8))(v4);
        v2 = *(this + 7);
      }
    }
  }

  v5 = *(this + 2);
  if (v5)
  {
    MEMORY[0x2383CAF80](v5, 0x80C80B8603338);
  }

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  awd::metrics::CommCenter_Instruments_CellularWcdmaMultiRabStatus::~CommCenter_Instruments_CellularWcdmaMultiRabStatus(this);

  JUMPOUT(0x2383CAFA0);
}

uint64_t awd::metrics::CommCenter_Instruments_CellularWcdmaMultiRabStatus::Clear(uint64_t this)
{
  v1 = this;
  if (*(this + 44))
  {
    *(this + 8) = 0;
  }

  if (*(this + 24) >= 1)
  {
    v2 = 0;
    do
    {
      v3 = *(*(v1 + 16) + 8 * v2);
      this = (*(*v3 + 32))(v3);
      ++v2;
    }

    while (v2 < *(v1 + 24));
  }

  *(v1 + 24) = 0;
  *(v1 + 44) = 0;
  return this;
}

uint64_t awd::metrics::CommCenter_Instruments_CellularWcdmaMultiRabStatus::MergePartialFromCodedStream(awd::metrics::CommCenter_Instruments_CellularWcdmaMultiRabStatus *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
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
      if (TagFallback >> 3 == 5)
      {
        break;
      }

      if (TagFallback >> 3 != 1 || (TagFallback & 7) != 0)
      {
        goto LABEL_13;
      }

      v8 = *(a2 + 1);
      v9 = *(a2 + 2);
      if (v8 >= v9 || (v10 = *v8, v10 < 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 1);
        if (!result)
        {
          return result;
        }

        v11 = *(a2 + 1);
        v9 = *(a2 + 2);
      }

      else
      {
        *(this + 1) = v10;
        v11 = v8 + 1;
        *(a2 + 1) = v11;
      }

      *(this + 11) |= 1u;
      if (v11 < v9 && *v11 == 42)
      {
        do
        {
          *(a2 + 1) = v11 + 1;
LABEL_21:
          v13 = *(this + 7);
          v14 = *(this + 6);
          if (v14 >= v13)
          {
            if (v13 == *(this + 8))
            {
              wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 16));
              v13 = *(this + 7);
            }

            *(this + 7) = v13 + 1;
            operator new();
          }

          v15 = *(this + 2);
          *(this + 6) = v14 + 1;
          v16 = *(v15 + 8 * v14);
          v25 = 0;
          v17 = *(a2 + 1);
          if (v17 >= *(a2 + 2) || *v17 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v25))
            {
              return 0;
            }
          }

          else
          {
            v25 = *v17;
            *(a2 + 1) = v17 + 1;
          }

          v18 = *(a2 + 14);
          v19 = *(a2 + 15);
          *(a2 + 14) = v18 + 1;
          if (v18 >= v19)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
          if (!awd::metrics::CommCenter_Instruments_CellularWcdmaMultiRabStatus_Rab::MergePartialFromCodedStream(v16, a2, v20) || *(a2 + 36) != 1)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
          v21 = *(a2 + 14);
          v22 = __OFSUB__(v21, 1);
          v23 = v21 - 1;
          if (v23 < 0 == v22)
          {
            *(a2 + 14) = v23;
          }

          v11 = *(a2 + 1);
          v24 = *(a2 + 2);
        }

        while (v11 < v24 && *v11 == 42);
        if (v11 == v24 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
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
      goto LABEL_21;
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
}

uint64_t awd::metrics::CommCenter_Instruments_CellularWcdmaMultiRabStatus::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  if (*(this + 44))
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(1, *(this + 8), a2, a4);
  }

  if (*(v5 + 24) >= 1)
  {
    v6 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(5, *(*(v5 + 16) + 8 * v6++), a2, a4);
    }

    while (v6 < *(v5 + 24));
  }

  return this;
}

uint64_t awd::metrics::CommCenter_Instruments_CellularWcdmaMultiRabStatus::ByteSize(wireless_diagnostics::google::protobuf::io::CodedOutputStream **this, unint64_t a2)
{
  if (*(this + 44))
  {
    v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(this[1]) + 1;
  }

  else
  {
    v3 = 0;
  }

  v4 = *(this + 6);
  v5 = (v4 + v3);
  if (v4 >= 1)
  {
    v6 = 0;
    do
    {
      v7 = awd::metrics::CommCenter_Instruments_CellularWcdmaMultiRabStatus_Rab::ByteSize(*(this[2] + v6), a2);
      v8 = v7;
      if (v7 >= 0x80)
      {
        v9 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v7);
      }

      else
      {
        v9 = 1;
      }

      v5 = (v8 + v5 + v9);
      ++v6;
    }

    while (v6 < *(this + 6));
  }

  *(this + 10) = v5;
  return v5;
}

void awd::metrics::CommCenter_Instruments_CellularWcdmaMultiRabStatus::CheckTypeAndMergeFrom(awd::metrics::CommCenter_Instruments_CellularWcdmaMultiRabStatus *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  if (lpsrc == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v11);
  }

  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 16));
  LODWORD(v4) = *(lpsrc + 6);
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
        wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v11);
      }

      v6 = *(*(lpsrc + 2) + 8 * v5);
      v7 = *(this + 7);
      v8 = *(this + 6);
      if (v8 >= v7)
      {
        if (v7 == *(this + 8))
        {
          wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 16));
          v7 = *(this + 7);
        }

        *(this + 7) = v7 + 1;
        operator new();
      }

      v9 = *(this + 2);
      *(this + 6) = v8 + 1;
      awd::metrics::CommCenter_Instruments_CellularWcdmaMultiRabStatus_Rab::MergeFrom(*(v9 + 8 * v8), v6);
      ++v5;
      v4 = *(lpsrc + 6);
    }

    while (v5 < v4);
  }

  if (*(lpsrc + 44))
  {
    v10 = *(lpsrc + 1);
    *(this + 11) |= 1u;
    *(this + 1) = v10;
  }
}

void sub_2373CBCE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::metrics::CommCenter_Instruments_CellularWcdmaRbRateStatus_RbRate::MergeFrom(awd::metrics::CommCenter_Instruments_CellularWcdmaRbRateStatus_RbRate *this, const awd::metrics::CommCenter_Instruments_CellularWcdmaRbRateStatus_RbRate *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v9);
  }

  LOBYTE(v4) = *(a2 + 28);
  if (v4)
  {
    if (*(a2 + 28))
    {
      v6 = *(a2 + 2);
      *(this + 7) |= 1u;
      *(this + 2) = v6;
      v4 = *(a2 + 7);
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

    else if ((*(a2 + 28) & 2) == 0)
    {
      goto LABEL_6;
    }

    v7 = *(a2 + 3);
    *(this + 7) |= 2u;
    *(this + 3) = v7;
    v4 = *(a2 + 7);
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
    v8 = *(a2 + 4);
    *(this + 7) |= 4u;
    *(this + 4) = v8;
    if ((*(a2 + 7) & 8) == 0)
    {
      return;
    }

LABEL_8:
    v5 = *(a2 + 5);
    *(this + 7) |= 8u;
    *(this + 5) = v5;
  }
}

void sub_2373CBE10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::metrics::CommCenter_Instruments_CellularWcdmaRbRateStatus_RbRate::~CommCenter_Instruments_CellularWcdmaRbRateStatus_RbRate(awd::metrics::CommCenter_Instruments_CellularWcdmaRbRateStatus_RbRate *this)
{
  *this = &unk_284A605A0;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_284A605A0;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  JUMPOUT(0x2383CAFA0);
}

uint64_t awd::metrics::CommCenter_Instruments_CellularWcdmaRbRateStatus_RbRate::Clear(uint64_t this)
{
  if (*(this + 28))
  {
    *(this + 8) = 0;
    *(this + 16) = 0;
  }

  *(this + 28) = 0;
  return this;
}

uint64_t awd::metrics::CommCenter_Instruments_CellularWcdmaRbRateStatus_RbRate::MergePartialFromCodedStream(awd::metrics::CommCenter_Instruments_CellularWcdmaRbRateStatus_RbRate *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
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
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 2);
        if (!result)
        {
          return result;
        }

        v13 = *(a2 + 1);
        v8 = *(a2 + 2);
      }

      else
      {
        *(this + 2) = v12;
        v13 = v11 + 1;
        *(a2 + 1) = v13;
      }

      *(this + 7) |= 1u;
      if (v13 < v8 && *v13 == 16)
      {
        v9 = v13 + 1;
        *(a2 + 1) = v9;
LABEL_29:
        if (v9 >= v8 || (v15 = *v9, v15 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 3);
          if (!result)
          {
            return result;
          }

          v16 = *(a2 + 1);
          v8 = *(a2 + 2);
        }

        else
        {
          *(this + 3) = v15;
          v16 = v9 + 1;
          *(a2 + 1) = v16;
        }

        *(this + 7) |= 2u;
        if (v16 < v8 && *v16 == 24)
        {
          v14 = v16 + 1;
          *(a2 + 1) = v14;
LABEL_37:
          if (v14 >= v8 || (v17 = *v14, v17 < 0))
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
            v18 = v14 + 1;
            *(a2 + 1) = v18;
          }

          *(this + 7) |= 4u;
          if (v18 < v8 && *v18 == 32)
          {
            v10 = v18 + 1;
            *(a2 + 1) = v10;
LABEL_45:
            if (v10 >= v8 || (v19 = *v10, v19 < 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 5);
              if (!result)
              {
                return result;
              }

              v20 = *(a2 + 1);
              v8 = *(a2 + 2);
            }

            else
            {
              *(this + 5) = v19;
              v20 = v10 + 1;
              *(a2 + 1) = v20;
            }

            *(this + 7) |= 8u;
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

unsigned int *awd::metrics::CommCenter_Instruments_CellularWcdmaRbRateStatus_RbRate::SerializeWithCachedSizes(unsigned int *this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = this[7];
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(1, this[2], a2, a4);
    v6 = v5[7];
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

LABEL_8:
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(3, v5[4], a2, a4);
      if ((v5[7] & 8) == 0)
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

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(2, v5[3], a2, a4);
  v6 = v5[7];
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
  v7 = v5[5];

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(4, v7, a2, a4);
}

uint64_t awd::metrics::CommCenter_Instruments_CellularWcdmaRbRateStatus_RbRate::ByteSize(awd::metrics::CommCenter_Instruments_CellularWcdmaRbRateStatus_RbRate *this, unsigned int a2)
{
  LOBYTE(v3) = *(this + 28);
  if (!v3)
  {
    v4 = 0;
    goto LABEL_25;
  }

  if (*(this + 28))
  {
    v5 = *(this + 2);
    if (v5 >= 0x80)
    {
      v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5) + 1;
      v3 = *(this + 7);
      if ((v3 & 2) == 0)
      {
        goto LABEL_14;
      }
    }

    else
    {
      v4 = 2;
      if ((v3 & 2) == 0)
      {
        goto LABEL_14;
      }
    }
  }

  else
  {
    v4 = 0;
    if ((*(this + 28) & 2) == 0)
    {
      goto LABEL_14;
    }
  }

  v6 = *(this + 3);
  if (v6 >= 0x80)
  {
    v7 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v6) + 1;
    v3 = *(this + 7);
  }

  else
  {
    v7 = 2;
  }

  v4 = (v7 + v4);
LABEL_14:
  if ((v3 & 4) == 0)
  {
    if ((v3 & 8) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_21;
  }

  v8 = *(this + 4);
  if (v8 >= 0x80)
  {
    v9 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v8) + 1;
    v3 = *(this + 7);
  }

  else
  {
    v9 = 2;
  }

  v4 = (v9 + v4);
  if ((v3 & 8) != 0)
  {
LABEL_21:
    v10 = *(this + 5);
    if (v10 >= 0x80)
    {
      v11 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v10) + 1;
    }

    else
    {
      v11 = 2;
    }

    v4 = (v11 + v4);
  }

LABEL_25:
  *(this + 6) = v4;
  return v4;
}

void awd::metrics::CommCenter_Instruments_CellularWcdmaRbRateStatus_RbRate::CheckTypeAndMergeFrom(awd::metrics::CommCenter_Instruments_CellularWcdmaRbRateStatus_RbRate *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  awd::metrics::CommCenter_Instruments_CellularWcdmaRbRateStatus_RbRate::MergeFrom(this, lpsrc);
}

void awd::metrics::CommCenter_Instruments_CellularWcdmaRbRateStatus::~CommCenter_Instruments_CellularWcdmaRbRateStatus(awd::metrics::CommCenter_Instruments_CellularWcdmaRbRateStatus *this)
{
  *this = &unk_284A60618;
  v2 = *(this + 7);
  if (v2 >= 1)
  {
    for (i = 0; i < v2; ++i)
    {
      v4 = *(*(this + 2) + 8 * i);
      if (v4)
      {
        (*(*v4 + 8))(v4);
        v2 = *(this + 7);
      }
    }
  }

  v5 = *(this + 2);
  if (v5)
  {
    MEMORY[0x2383CAF80](v5, 0x80C80B8603338);
  }

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  awd::metrics::CommCenter_Instruments_CellularWcdmaRbRateStatus::~CommCenter_Instruments_CellularWcdmaRbRateStatus(this);

  JUMPOUT(0x2383CAFA0);
}

uint64_t awd::metrics::CommCenter_Instruments_CellularWcdmaRbRateStatus::Clear(uint64_t this)
{
  v1 = this;
  if (*(this + 44))
  {
    *(this + 8) = 0;
  }

  if (*(this + 24) >= 1)
  {
    v2 = 0;
    do
    {
      v3 = *(*(v1 + 16) + 8 * v2);
      this = (*(*v3 + 32))(v3);
      ++v2;
    }

    while (v2 < *(v1 + 24));
  }

  *(v1 + 24) = 0;
  *(v1 + 44) = 0;
  return this;
}

uint64_t awd::metrics::CommCenter_Instruments_CellularWcdmaRbRateStatus::MergePartialFromCodedStream(awd::metrics::CommCenter_Instruments_CellularWcdmaRbRateStatus *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
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
      if (TagFallback >> 3 == 3)
      {
        break;
      }

      if (TagFallback >> 3 != 1 || (TagFallback & 7) != 0)
      {
        goto LABEL_13;
      }

      v8 = *(a2 + 1);
      v9 = *(a2 + 2);
      if (v8 >= v9 || (v10 = *v8, v10 < 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 1);
        if (!result)
        {
          return result;
        }

        v11 = *(a2 + 1);
        v9 = *(a2 + 2);
      }

      else
      {
        *(this + 1) = v10;
        v11 = v8 + 1;
        *(a2 + 1) = v11;
      }

      *(this + 11) |= 1u;
      if (v11 < v9 && *v11 == 26)
      {
        do
        {
          *(a2 + 1) = v11 + 1;
LABEL_21:
          v13 = *(this + 7);
          v14 = *(this + 6);
          if (v14 >= v13)
          {
            if (v13 == *(this + 8))
            {
              wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 16));
              v13 = *(this + 7);
            }

            *(this + 7) = v13 + 1;
            operator new();
          }

          v15 = *(this + 2);
          *(this + 6) = v14 + 1;
          v16 = *(v15 + 8 * v14);
          v25 = 0;
          v17 = *(a2 + 1);
          if (v17 >= *(a2 + 2) || *v17 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v25))
            {
              return 0;
            }
          }

          else
          {
            v25 = *v17;
            *(a2 + 1) = v17 + 1;
          }

          v18 = *(a2 + 14);
          v19 = *(a2 + 15);
          *(a2 + 14) = v18 + 1;
          if (v18 >= v19)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
          if (!awd::metrics::CommCenter_Instruments_CellularWcdmaRbRateStatus_RbRate::MergePartialFromCodedStream(v16, a2, v20) || *(a2 + 36) != 1)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
          v21 = *(a2 + 14);
          v22 = __OFSUB__(v21, 1);
          v23 = v21 - 1;
          if (v23 < 0 == v22)
          {
            *(a2 + 14) = v23;
          }

          v11 = *(a2 + 1);
          v24 = *(a2 + 2);
        }

        while (v11 < v24 && *v11 == 26);
        if (v11 == v24 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
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
      goto LABEL_21;
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
}

uint64_t awd::metrics::CommCenter_Instruments_CellularWcdmaRbRateStatus::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  if (*(this + 44))
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(1, *(this + 8), a2, a4);
  }

  if (*(v5 + 24) >= 1)
  {
    v6 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(3, *(*(v5 + 16) + 8 * v6++), a2, a4);
    }

    while (v6 < *(v5 + 24));
  }

  return this;
}

uint64_t awd::metrics::CommCenter_Instruments_CellularWcdmaRbRateStatus::ByteSize(wireless_diagnostics::google::protobuf::io::CodedOutputStream **this, unint64_t a2)
{
  if (*(this + 44))
  {
    v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(this[1]) + 1;
  }

  else
  {
    v3 = 0;
  }

  v4 = *(this + 6);
  v5 = (v4 + v3);
  if (v4 >= 1)
  {
    v6 = 0;
    do
    {
      v7 = awd::metrics::CommCenter_Instruments_CellularWcdmaRbRateStatus_RbRate::ByteSize(*(this[2] + v6), a2);
      v8 = v7;
      if (v7 >= 0x80)
      {
        v9 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v7);
      }

      else
      {
        v9 = 1;
      }

      v5 = (v8 + v5 + v9);
      ++v6;
    }

    while (v6 < *(this + 6));
  }

  *(this + 10) = v5;
  return v5;
}

void awd::metrics::CommCenter_Instruments_CellularWcdmaRbRateStatus::CheckTypeAndMergeFrom(awd::metrics::CommCenter_Instruments_CellularWcdmaRbRateStatus *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  if (lpsrc == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v11);
  }

  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 16));
  LODWORD(v4) = *(lpsrc + 6);
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
        wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v11);
      }

      v6 = *(*(lpsrc + 2) + 8 * v5);
      v7 = *(this + 7);
      v8 = *(this + 6);
      if (v8 >= v7)
      {
        if (v7 == *(this + 8))
        {
          wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 16));
          v7 = *(this + 7);
        }

        *(this + 7) = v7 + 1;
        operator new();
      }

      v9 = *(this + 2);
      *(this + 6) = v8 + 1;
      awd::metrics::CommCenter_Instruments_CellularWcdmaRbRateStatus_RbRate::MergeFrom(*(v9 + 8 * v8), v6);
      ++v5;
      v4 = *(lpsrc + 6);
    }

    while (v5 < v4);
  }

  if (*(lpsrc + 44))
  {
    v10 = *(lpsrc + 1);
    *(this + 11) |= 1u;
    *(this + 1) = v10;
  }
}

void sub_2373CCB64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::metrics::CommCenter_Instruments_CellularPsCallConnect::~CommCenter_Instruments_CellularPsCallConnect(awd::metrics::CommCenter_Instruments_CellularPsCallConnect *this)
{
  *this = &unk_284A60690;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_284A60690;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  JUMPOUT(0x2383CAFA0);
}

uint64_t awd::metrics::CommCenter_Instruments_CellularPsCallConnect::Clear(uint64_t this)
{
  if (*(this + 20))
  {
    *(this + 8) = 0;
  }

  *(this + 20) = 0;
  return this;
}

uint64_t awd::metrics::CommCenter_Instruments_CellularPsCallConnect::MergePartialFromCodedStream(awd::metrics::CommCenter_Instruments_CellularPsCallConnect *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
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

      *(this + 5) |= 1u;
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

uint64_t awd::metrics::CommCenter_Instruments_CellularPsCallConnect::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  if (*(this + 20))
  {
    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(1, *(this + 8), a2, a4);
  }

  return this;
}

uint64_t awd::metrics::CommCenter_Instruments_CellularPsCallConnect::ByteSize(wireless_diagnostics::google::protobuf::io::CodedOutputStream **this, unint64_t a2)
{
  if (*(this + 20))
  {
    result = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(this[1]) + 1;
  }

  else
  {
    result = 0;
  }

  *(this + 4) = result;
  return result;
}

void awd::metrics::CommCenter_Instruments_CellularPsCallConnect::CheckTypeAndMergeFrom(awd::metrics::CommCenter_Instruments_CellularPsCallConnect *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  if (lpsrc == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v5);
  }

  if (*(lpsrc + 20))
  {
    v4 = *(lpsrc + 1);
    *(this + 5) |= 1u;
    *(this + 1) = v4;
  }
}

void sub_2373CCEC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::metrics::CommCenter_Instruments_CellularPsCallEnd::~CommCenter_Instruments_CellularPsCallEnd(awd::metrics::CommCenter_Instruments_CellularPsCallEnd *this)
{
  *this = &unk_284A60708;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_284A60708;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  JUMPOUT(0x2383CAFA0);
}

uint64_t awd::metrics::CommCenter_Instruments_CellularPsCallEnd::Clear(uint64_t this)
{
  if (*(this + 20))
  {
    *(this + 8) = 0;
  }

  *(this + 20) = 0;
  return this;
}

uint64_t awd::metrics::CommCenter_Instruments_CellularPsCallEnd::MergePartialFromCodedStream(awd::metrics::CommCenter_Instruments_CellularPsCallEnd *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
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

      *(this + 5) |= 1u;
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

uint64_t awd::metrics::CommCenter_Instruments_CellularPsCallEnd::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  if (*(this + 20))
  {
    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(1, *(this + 8), a2, a4);
  }

  return this;
}

uint64_t awd::metrics::CommCenter_Instruments_CellularPsCallEnd::ByteSize(wireless_diagnostics::google::protobuf::io::CodedOutputStream **this, unint64_t a2)
{
  if (*(this + 20))
  {
    result = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(this[1]) + 1;
  }

  else
  {
    result = 0;
  }

  *(this + 4) = result;
  return result;
}

void awd::metrics::CommCenter_Instruments_CellularPsCallEnd::CheckTypeAndMergeFrom(awd::metrics::CommCenter_Instruments_CellularPsCallEnd *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  if (lpsrc == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v5);
  }

  if (*(lpsrc + 20))
  {
    v4 = *(lpsrc + 1);
    *(this + 5) |= 1u;
    *(this + 1) = v4;
  }
}

void sub_2373CD214(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::metrics::CommCenter_Instruments_CellularEvdoAlmpConnOpened::~CommCenter_Instruments_CellularEvdoAlmpConnOpened(awd::metrics::CommCenter_Instruments_CellularEvdoAlmpConnOpened *this)
{
  *this = &unk_284A60780;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_284A60780;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  JUMPOUT(0x2383CAFA0);
}

uint64_t awd::metrics::CommCenter_Instruments_CellularEvdoAlmpConnOpened::Clear(uint64_t this)
{
  if (*(this + 20))
  {
    *(this + 8) = 0;
  }

  *(this + 20) = 0;
  return this;
}

uint64_t awd::metrics::CommCenter_Instruments_CellularEvdoAlmpConnOpened::MergePartialFromCodedStream(awd::metrics::CommCenter_Instruments_CellularEvdoAlmpConnOpened *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
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

      *(this + 5) |= 1u;
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

uint64_t awd::metrics::CommCenter_Instruments_CellularEvdoAlmpConnOpened::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  if (*(this + 20))
  {
    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(1, *(this + 8), a2, a4);
  }

  return this;
}

uint64_t awd::metrics::CommCenter_Instruments_CellularEvdoAlmpConnOpened::ByteSize(wireless_diagnostics::google::protobuf::io::CodedOutputStream **this, unint64_t a2)
{
  if (*(this + 20))
  {
    result = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(this[1]) + 1;
  }

  else
  {
    result = 0;
  }

  *(this + 4) = result;
  return result;
}

void awd::metrics::CommCenter_Instruments_CellularEvdoAlmpConnOpened::CheckTypeAndMergeFrom(awd::metrics::CommCenter_Instruments_CellularEvdoAlmpConnOpened *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  if (lpsrc == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v5);
  }

  if (*(lpsrc + 20))
  {
    v4 = *(lpsrc + 1);
    *(this + 5) |= 1u;
    *(this + 1) = v4;
  }
}

void sub_2373CD568(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::metrics::CommCenter_Instruments_CellularEvdoAlmpConnClosed::~CommCenter_Instruments_CellularEvdoAlmpConnClosed(awd::metrics::CommCenter_Instruments_CellularEvdoAlmpConnClosed *this)
{
  *this = &unk_284A607F8;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_284A607F8;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  JUMPOUT(0x2383CAFA0);
}

uint64_t awd::metrics::CommCenter_Instruments_CellularEvdoAlmpConnClosed::Clear(uint64_t this)
{
  if (*(this + 20))
  {
    *(this + 8) = 0;
  }

  *(this + 20) = 0;
  return this;
}

uint64_t awd::metrics::CommCenter_Instruments_CellularEvdoAlmpConnClosed::MergePartialFromCodedStream(awd::metrics::CommCenter_Instruments_CellularEvdoAlmpConnClosed *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
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

      *(this + 5) |= 1u;
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

uint64_t awd::metrics::CommCenter_Instruments_CellularEvdoAlmpConnClosed::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  if (*(this + 20))
  {
    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(1, *(this + 8), a2, a4);
  }

  return this;
}

uint64_t awd::metrics::CommCenter_Instruments_CellularEvdoAlmpConnClosed::ByteSize(wireless_diagnostics::google::protobuf::io::CodedOutputStream **this, unint64_t a2)
{
  if (*(this + 20))
  {
    result = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(this[1]) + 1;
  }

  else
  {
    result = 0;
  }

  *(this + 4) = result;
  return result;
}

void awd::metrics::CommCenter_Instruments_CellularEvdoAlmpConnClosed::CheckTypeAndMergeFrom(awd::metrics::CommCenter_Instruments_CellularEvdoAlmpConnClosed *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  if (lpsrc == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v5);
  }

  if (*(lpsrc + 20))
  {
    v4 = *(lpsrc + 1);
    *(this + 5) |= 1u;
    *(this + 1) = v4;
  }
}

void sub_2373CD8BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::metrics::CommCenter_Instruments_CellularLteRrcMsgEvent::~CommCenter_Instruments_CellularLteRrcMsgEvent(awd::metrics::CommCenter_Instruments_CellularLteRrcMsgEvent *this)
{
  *this = &unk_284A60870;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_284A60870;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  JUMPOUT(0x2383CAFA0);
}

uint64_t awd::metrics::CommCenter_Instruments_CellularLteRrcMsgEvent::Clear(uint64_t this)
{
  if (*(this + 28))
  {
    *(this + 8) = 0;
    *(this + 16) = 0;
  }

  *(this + 28) = 0;
  return this;
}

uint64_t awd::metrics::CommCenter_Instruments_CellularLteRrcMsgEvent::MergePartialFromCodedStream(awd::metrics::CommCenter_Instruments_CellularLteRrcMsgEvent *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
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
          v14 = *(a2 + 1);
          v13 = *(a2 + 2);
          goto LABEL_35;
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

      *(this + 7) |= 1u;
      if (v11 < v8 && *v11 == 16)
      {
        v12 = v11 + 1;
        *(a2 + 1) = v12;
LABEL_25:
        v20 = 0;
        if (v12 >= v8 || (v15 = *v12, (v15 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v20);
          if (!result)
          {
            return result;
          }

          v15 = v20;
        }

        else
        {
          *(a2 + 1) = v12 + 1;
        }

        if (v15 <= 1)
        {
          *(this + 7) |= 2u;
          *(this + 4) = v15;
        }

        v16 = *(a2 + 1);
        v13 = *(a2 + 2);
        if (v16 < v13 && *v16 == 32)
        {
          v14 = v16 + 1;
          *(a2 + 1) = v14;
LABEL_35:
          if (v14 >= v13 || (v17 = *v14, v17 < 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 5);
            if (!result)
            {
              return result;
            }

            v18 = *(a2 + 1);
            v13 = *(a2 + 2);
          }

          else
          {
            *(this + 5) = v17;
            v18 = v14 + 1;
            *(a2 + 1) = v18;
          }

          *(this + 7) |= 4u;
          if (v18 == v13 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
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

uint64_t awd::metrics::CommCenter_Instruments_CellularLteRrcMsgEvent::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
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
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(2, v5[4], a2, a4);
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

uint64_t awd::metrics::CommCenter_Instruments_CellularLteRrcMsgEvent::ByteSize(awd::metrics::CommCenter_Instruments_CellularLteRrcMsgEvent *this, unint64_t a2)
{
  LOBYTE(v3) = *(this + 28);
  if (!v3)
  {
    v4 = 0;
    goto LABEL_18;
  }

  if (*(this + 28))
  {
    v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 1)) + 1;
    v3 = *(this + 7);
    if ((v3 & 2) == 0)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v4 = 0;
    if ((*(this + 28) & 2) == 0)
    {
      goto LABEL_13;
    }
  }

  v5 = *(this + 4);
  if ((v5 & 0x80000000) != 0)
  {
    v6 = 11;
  }

  else if (v5 >= 0x80)
  {
    v6 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5) + 1;
    v3 = *(this + 7);
  }

  else
  {
    v6 = 2;
  }

  v4 = (v6 + v4);
LABEL_13:
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

LABEL_18:
  *(this + 6) = v4;
  return v4;
}

void awd::metrics::CommCenter_Instruments_CellularLteRrcMsgEvent::CheckTypeAndMergeFrom(awd::metrics::CommCenter_Instruments_CellularLteRrcMsgEvent *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  if (lpsrc == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v8);
  }

  LOBYTE(v4) = *(lpsrc + 28);
  if (v4)
  {
    if (*(lpsrc + 28))
    {
      v5 = *(lpsrc + 1);
      *(this + 7) |= 1u;
      *(this + 1) = v5;
      v4 = *(lpsrc + 7);
    }

    if ((v4 & 2) != 0)
    {
      v6 = *(lpsrc + 4);
      if (v6 >= 2)
      {
        __assert_rtn("set_dir", "CCMetricsInstruments.pb.h", 2486, "::awd::metrics::CommCenter_Instruments_CellularLteRrcMsgEvent_MessageDir_IsValid(value)");
      }

      *(this + 7) |= 2u;
      *(this + 4) = v6;
      v4 = *(lpsrc + 7);
    }

    if ((v4 & 4) != 0)
    {
      v7 = *(lpsrc + 5);
      *(this + 7) |= 4u;
      *(this + 5) = v7;
    }
  }
}

void sub_2373CDE58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::metrics::CommCenter_Instruments_CellularLteRrcState::~CommCenter_Instruments_CellularLteRrcState(awd::metrics::CommCenter_Instruments_CellularLteRrcState *this)
{
  *this = &unk_284A608E8;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_284A608E8;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  JUMPOUT(0x2383CAFA0);
}

uint64_t awd::metrics::CommCenter_Instruments_CellularLteRrcState::Clear(uint64_t this)
{
  if (*(this + 24))
  {
    *(this + 8) = 0;
    *(this + 16) = 0;
  }

  *(this + 24) = 0;
  return this;
}

uint64_t awd::metrics::CommCenter_Instruments_CellularLteRrcState::MergePartialFromCodedStream(awd::metrics::CommCenter_Instruments_CellularLteRrcState *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
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
        if (v11 >= v7 || (v12 = *v11, v12 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 4);
          if (!result)
          {
            return result;
          }

          v13 = *(a2 + 1);
          v7 = *(a2 + 2);
        }

        else
        {
          *(this + 4) = v12;
          v13 = v11 + 1;
          *(a2 + 1) = v13;
        }

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

uint64_t awd::metrics::CommCenter_Instruments_CellularLteRrcState::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
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

    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(2, v7, a2, a4);
  }

  return this;
}

uint64_t awd::metrics::CommCenter_Instruments_CellularLteRrcState::ByteSize(wireless_diagnostics::google::protobuf::io::CodedOutputStream **this, unint64_t a2)
{
  if (*(this + 24))
  {
    if (this[3])
    {
      v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(this[1]) + 1;
      if ((this[3] & 2) == 0)
      {
        goto LABEL_11;
      }
    }

    else
    {
      v3 = 0;
      if ((this[3] & 2) == 0)
      {
        goto LABEL_11;
      }
    }

    v4 = *(this + 4);
    if (v4 >= 0x80)
    {
      v5 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v4) + 1;
    }

    else
    {
      v5 = 2;
    }

    v3 = (v5 + v3);
  }

  else
  {
    v3 = 0;
  }

LABEL_11:
  *(this + 5) = v3;
  return v3;
}

void awd::metrics::CommCenter_Instruments_CellularLteRrcState::CheckTypeAndMergeFrom(awd::metrics::CommCenter_Instruments_CellularLteRrcState *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  if (lpsrc == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v7);
  }

  LOBYTE(v4) = *(lpsrc + 24);
  if (v4)
  {
    if (*(lpsrc + 24))
    {
      v5 = *(lpsrc + 1);
      *(this + 6) |= 1u;
      *(this + 1) = v5;
      v4 = *(lpsrc + 6);
    }

    if ((v4 & 2) != 0)
    {
      v6 = *(lpsrc + 4);
      *(this + 6) |= 2u;
      *(this + 4) = v6;
    }
  }
}

void sub_2373CE2DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::metrics::CommCenter_Instruments_CellularLteRfAgc::~CommCenter_Instruments_CellularLteRfAgc(awd::metrics::CommCenter_Instruments_CellularLteRfAgc *this)
{
  *this = &unk_284A60960;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_284A60960;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  JUMPOUT(0x2383CAFA0);
}

uint64_t awd::metrics::CommCenter_Instruments_CellularLteRfAgc::Clear(uint64_t this)
{
  if (*(this + 24))
  {
    *(this + 8) = 0;
    *(this + 16) = 0;
  }

  *(this + 24) = 0;
  return this;
}

uint64_t awd::metrics::CommCenter_Instruments_CellularLteRfAgc::MergePartialFromCodedStream(awd::metrics::CommCenter_Instruments_CellularLteRfAgc *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
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

      if (TagFallback >> 3 == 12)
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
      if (v10 < v7 && *v10 == 96)
      {
        v11 = v10 + 1;
        *(a2 + 1) = v10 + 1;
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

        *(this + 4) = -(v12 & 1) ^ (v12 >> 1);
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

uint64_t awd::metrics::CommCenter_Instruments_CellularLteRfAgc::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
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

    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteSInt32(0xC, v7, a2, a4);
  }

  return this;
}

uint64_t awd::metrics::CommCenter_Instruments_CellularLteRfAgc::ByteSize(wireless_diagnostics::google::protobuf::io::CodedOutputStream **this, unint64_t a2)
{
  if (*(this + 24))
  {
    if (this[3])
    {
      v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(this[1]) + 1;
      if ((this[3] & 2) == 0)
      {
        goto LABEL_11;
      }
    }

    else
    {
      v3 = 0;
      if ((this[3] & 2) == 0)
      {
        goto LABEL_11;
      }
    }

    v4 = ((2 * *(this + 4)) ^ (*(this + 4) >> 31));
    if (v4 >= 0x80)
    {
      v5 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v4) + 1;
    }

    else
    {
      v5 = 2;
    }

    v3 = (v5 + v3);
  }

  else
  {
    v3 = 0;
  }

LABEL_11:
  *(this + 5) = v3;
  return v3;
}

void awd::metrics::CommCenter_Instruments_CellularLteRfAgc::CheckTypeAndMergeFrom(awd::metrics::CommCenter_Instruments_CellularLteRfAgc *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  if (lpsrc == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v7);
  }

  LOBYTE(v4) = *(lpsrc + 24);
  if (v4)
  {
    if (*(lpsrc + 24))
    {
      v5 = *(lpsrc + 1);
      *(this + 6) |= 1u;
      *(this + 1) = v5;
      v4 = *(lpsrc + 6);
    }

    if ((v4 & 2) != 0)
    {
      v6 = *(lpsrc + 4);
      *(this + 6) |= 2u;
      *(this + 4) = v6;
    }
  }
}

void sub_2373CE784(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::metrics::CommCenter_Instruments_CellularFallback::~CommCenter_Instruments_CellularFallback(awd::metrics::CommCenter_Instruments_CellularFallback *this)
{
  *this = &unk_284A609D8;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_284A609D8;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  JUMPOUT(0x2383CAFA0);
}

uint64_t awd::metrics::CommCenter_Instruments_CellularFallback::Clear(uint64_t this)
{
  if (*(this + 24))
  {
    *(this + 8) = 0;
    *(this + 16) = 0;
  }

  *(this + 24) = 0;
  return this;
}

uint64_t awd::metrics::CommCenter_Instruments_CellularFallback::MergePartialFromCodedStream(awd::metrics::CommCenter_Instruments_CellularFallback *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
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
        if (v11 >= v7 || (v12 = *v11, v12 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 4);
          if (!result)
          {
            return result;
          }

          v13 = *(a2 + 1);
          v7 = *(a2 + 2);
        }

        else
        {
          *(this + 4) = v12;
          v13 = v11 + 1;
          *(a2 + 1) = v13;
        }

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

uint64_t awd::metrics::CommCenter_Instruments_CellularFallback::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
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

    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(2, v7, a2, a4);
  }

  return this;
}

uint64_t awd::metrics::CommCenter_Instruments_CellularFallback::ByteSize(wireless_diagnostics::google::protobuf::io::CodedOutputStream **this, unint64_t a2)
{
  if (*(this + 24))
  {
    if (this[3])
    {
      v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(this[1]) + 1;
      if ((this[3] & 2) == 0)
      {
        goto LABEL_11;
      }
    }

    else
    {
      v3 = 0;
      if ((this[3] & 2) == 0)
      {
        goto LABEL_11;
      }
    }

    v4 = *(this + 4);
    if (v4 >= 0x80)
    {
      v5 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v4) + 1;
    }

    else
    {
      v5 = 2;
    }

    v3 = (v5 + v3);
  }

  else
  {
    v3 = 0;
  }

LABEL_11:
  *(this + 5) = v3;
  return v3;
}

void awd::metrics::CommCenter_Instruments_CellularFallback::CheckTypeAndMergeFrom(awd::metrics::CommCenter_Instruments_CellularFallback *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  if (lpsrc == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v7);
  }

  LOBYTE(v4) = *(lpsrc + 24);
  if (v4)
  {
    if (*(lpsrc + 24))
    {
      v5 = *(lpsrc + 1);
      *(this + 6) |= 1u;
      *(this + 1) = v5;
      v4 = *(lpsrc + 6);
    }

    if ((v4 & 2) != 0)
    {
      v6 = *(lpsrc + 4);
      *(this + 6) |= 2u;
      *(this + 4) = v6;
    }
  }
}

void sub_2373CEC08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::metrics::CommCenter_Instruments_CellularIpThroughput_Record::MergeFrom(awd::metrics::CommCenter_Instruments_CellularIpThroughput_Record *this, const awd::metrics::CommCenter_Instruments_CellularIpThroughput_Record *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v14);
  }

  v4 = *(a2 + 9);
  if (!v4)
  {
    goto LABEL_13;
  }

  if (v4)
  {
    v7 = *(a2 + 2);
    *(this + 9) |= 1u;
    *(this + 2) = v7;
    v4 = *(a2 + 9);
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

  v8 = *(a2 + 3);
  *(this + 9) |= 2u;
  *(this + 3) = v8;
  v4 = *(a2 + 9);
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
  v9 = *(a2 + 4);
  *(this + 9) |= 4u;
  *(this + 4) = v9;
  v4 = *(a2 + 9);
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
  v10 = *(a2 + 5);
  *(this + 9) |= 8u;
  *(this + 5) = v10;
  v4 = *(a2 + 9);
  if ((v4 & 0x10) == 0)
  {
LABEL_9:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_10;
    }

LABEL_21:
    v12 = *(a2 + 28);
    *(this + 9) |= 0x20u;
    *(this + 28) = v12;
    v4 = *(a2 + 9);
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
  v11 = *(a2 + 6);
  *(this + 9) |= 0x10u;
  *(this + 6) = v11;
  v4 = *(a2 + 9);
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
  v13 = *(a2 + 29);
  *(this + 9) |= 0x40u;
  *(this + 29) = v13;
  v4 = *(a2 + 9);
  if ((v4 & 0x80) != 0)
  {
LABEL_12:
    v5 = *(a2 + 30);
    *(this + 9) |= 0x80u;
    *(this + 30) = v5;
    v4 = *(a2 + 9);
  }

LABEL_13:
  if ((v4 & 0x100) != 0)
  {
    v6 = *(a2 + 31);
    *(this + 9) |= 0x100u;
    *(this + 31) = v6;
  }
}

void sub_2373CEDCC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::metrics::CommCenter_Instruments_CellularIpThroughput_Record::~CommCenter_Instruments_CellularIpThroughput_Record(awd::metrics::CommCenter_Instruments_CellularIpThroughput_Record *this)
{
  *this = &unk_284A60A50;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_284A60A50;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  JUMPOUT(0x2383CAFA0);
}

uint64_t awd::metrics::CommCenter_Instruments_CellularIpThroughput_Record::Clear(uint64_t this)
{
  v1 = *(this + 36);
  if (v1)
  {
    *(this + 8) = 0;
    *(this + 16) = 0;
    *(this + 23) = 0;
  }

  if ((v1 & 0xFF00) != 0)
  {
    *(this + 31) = 0;
  }

  *(this + 36) = 0;
  return this;
}

uint64_t awd::metrics::CommCenter_Instruments_CellularIpThroughput_Record::MergePartialFromCodedStream(awd::metrics::CommCenter_Instruments_CellularIpThroughput_Record *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
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

              v11 = *(a2 + 1);
              v8 = *(a2 + 2);
              goto LABEL_62;
            }

            if ((TagFallback & 7) != 0)
            {
              goto LABEL_37;
            }

            v16 = *(a2 + 1);
            v8 = *(a2 + 2);
LABEL_54:
            if (v16 >= v8 || (v22 = *v16, v22 < 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 4);
              if (!result)
              {
                return result;
              }

              v23 = *(a2 + 1);
              v8 = *(a2 + 2);
            }

            else
            {
              *(this + 4) = v22;
              v23 = v16 + 1;
              *(a2 + 1) = v23;
            }

            *(this + 9) |= 4u;
            if (v23 < v8 && *v23 == 32)
            {
              v11 = v23 + 1;
              *(a2 + 1) = v11;
LABEL_62:
              if (v11 >= v8 || (v24 = *v11, v24 < 0))
              {
                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 5);
                if (!result)
                {
                  return result;
                }

                v25 = *(a2 + 1);
                v8 = *(a2 + 2);
              }

              else
              {
                *(this + 5) = v24;
                v25 = v11 + 1;
                *(a2 + 1) = v25;
              }

              *(this + 9) |= 8u;
              if (v25 < v8 && *v25 == 40)
              {
                v18 = v25 + 1;
                *(a2 + 1) = v18;
                goto LABEL_70;
              }
            }
          }

          else
          {
            if (v7 != 1)
            {
              if (v7 != 2 || (TagFallback & 7) != 0)
              {
                goto LABEL_37;
              }

              v10 = *(a2 + 1);
              v8 = *(a2 + 2);
              goto LABEL_46;
            }

            if ((TagFallback & 7) != 0)
            {
              goto LABEL_37;
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

            *(this + 9) |= 1u;
            if (v15 < v8 && *v15 == 16)
            {
              v10 = v15 + 1;
              *(a2 + 1) = v10;
LABEL_46:
              if (v10 >= v8 || (v20 = *v10, v20 < 0))
              {
                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 3);
                if (!result)
                {
                  return result;
                }

                v21 = *(a2 + 1);
                v8 = *(a2 + 2);
              }

              else
              {
                *(this + 3) = v20;
                v21 = v10 + 1;
                *(a2 + 1) = v21;
              }

              *(this + 9) |= 2u;
              if (v21 < v8 && *v21 == 24)
              {
                v16 = v21 + 1;
                *(a2 + 1) = v16;
                goto LABEL_54;
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
          if (v7 != 6 || (TagFallback & 7) != 0)
          {
            goto LABEL_37;
          }

          v12 = *(a2 + 1);
          v8 = *(a2 + 2);
          goto LABEL_78;
        }

        if ((TagFallback & 7) != 0)
        {
          goto LABEL_37;
        }

        v18 = *(a2 + 1);
        v8 = *(a2 + 2);
LABEL_70:
        if (v18 >= v8 || (v26 = *v18, v26 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 6);
          if (!result)
          {
            return result;
          }

          v27 = *(a2 + 1);
          v8 = *(a2 + 2);
        }

        else
        {
          *(this + 6) = v26;
          v27 = v18 + 1;
          *(a2 + 1) = v27;
        }

        *(this + 9) |= 0x10u;
        if (v27 < v8 && *v27 == 48)
        {
          v12 = v27 + 1;
          *(a2 + 1) = v12;
LABEL_78:
          v37 = 0;
          if (v12 >= v8 || (v28 = *v12, (v28 & 0x80000000) != 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v37);
            if (!result)
            {
              return result;
            }

            v28 = v37;
            v29 = *(a2 + 1);
            v8 = *(a2 + 2);
          }

          else
          {
            v29 = v12 + 1;
            *(a2 + 1) = v29;
          }

          *(this + 28) = v28 != 0;
          *(this + 9) |= 0x20u;
          if (v29 < v8 && *v29 == 56)
          {
            v17 = v29 + 1;
            *(a2 + 1) = v17;
LABEL_86:
            v37 = 0;
            if (v17 >= v8 || (v30 = *v17, (v30 & 0x80000000) != 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v37);
              if (!result)
              {
                return result;
              }

              v30 = v37;
              v31 = *(a2 + 1);
              v8 = *(a2 + 2);
            }

            else
            {
              v31 = v17 + 1;
              *(a2 + 1) = v31;
            }

            *(this + 29) = v30 != 0;
            *(this + 9) |= 0x40u;
            if (v31 < v8 && *v31 == 64)
            {
              v19 = v31 + 1;
              *(a2 + 1) = v19;
              goto LABEL_94;
            }
          }
        }
      }

      if (v7 == 7)
      {
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_37;
        }

        v17 = *(a2 + 1);
        v8 = *(a2 + 2);
        goto LABEL_86;
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
      v8 = *(a2 + 2);
LABEL_94:
      v37 = 0;
      if (v19 >= v8 || (v32 = *v19, (v32 & 0x80000000) != 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v37);
        if (!result)
        {
          return result;
        }

        v32 = v37;
        v33 = *(a2 + 1);
        v8 = *(a2 + 2);
      }

      else
      {
        v33 = v19 + 1;
        *(a2 + 1) = v33;
      }

      *(this + 30) = v32 != 0;
      *(this + 9) |= 0x80u;
      if (v33 < v8 && *v33 == 72)
      {
        v9 = v33 + 1;
        *(a2 + 1) = v9;
LABEL_102:
        v37 = 0;
        if (v9 >= v8 || (v34 = *v9, (v34 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v37);
          if (!result)
          {
            return result;
          }

          v34 = v37;
          v35 = *(a2 + 1);
          v8 = *(a2 + 2);
        }

        else
        {
          v35 = v9 + 1;
          *(a2 + 1) = v35;
        }

        *(this + 31) = v34 != 0;
        *(this + 9) |= 0x100u;
        if (v35 == v8 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
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
      v9 = *(a2 + 1);
      v8 = *(a2 + 2);
      goto LABEL_102;
    }

LABEL_37:
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

uint64_t awd::metrics::CommCenter_Instruments_CellularIpThroughput_Record::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 36);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(1, *(this + 8), a2, a4);
    v6 = *(v5 + 36);
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

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(2, *(v5 + 12), a2, a4);
  v6 = *(v5 + 36);
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
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(3, *(v5 + 16), a2, a4);
  v6 = *(v5 + 36);
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
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(4, *(v5 + 20), a2, a4);
  v6 = *(v5 + 36);
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
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(5, *(v5 + 24), a2, a4);
  v6 = *(v5 + 36);
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
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(6, *(v5 + 28), a2, a4);
  v6 = *(v5 + 36);
  if ((v6 & 0x40) == 0)
  {
LABEL_8:
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_9;
    }

LABEL_18:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(8, *(v5 + 30), a2, a4);
    if ((*(v5 + 36) & 0x100) == 0)
    {
      return this;
    }

    goto LABEL_19;
  }

LABEL_17:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(7, *(v5 + 29), a2, a4);
  v6 = *(v5 + 36);
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
  v7 = *(v5 + 31);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(9, v7, a2, a4);
}

uint64_t awd::metrics::CommCenter_Instruments_CellularIpThroughput_Record::ByteSize(awd::metrics::CommCenter_Instruments_CellularIpThroughput_Record *this, unsigned int a2)
{
  v3 = *(this + 9);
  if (!v3)
  {
    v5 = 0;
    goto LABEL_31;
  }

  if (v3)
  {
    v6 = *(this + 2);
    if (v6 >= 0x80)
    {
      v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v6) + 1;
      v3 = *(this + 9);
      if ((v3 & 2) == 0)
      {
        goto LABEL_14;
      }
    }

    else
    {
      v4 = 2;
      if ((v3 & 2) == 0)
      {
        goto LABEL_14;
      }
    }
  }

  else
  {
    v4 = 0;
    if ((v3 & 2) == 0)
    {
      goto LABEL_14;
    }
  }

  v7 = *(this + 3);
  if (v7 >= 0x80)
  {
    v8 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v7) + 1;
    v3 = *(this + 9);
  }

  else
  {
    v8 = 2;
  }

  v4 += v8;
LABEL_14:
  if ((v3 & 4) == 0)
  {
    if ((v3 & 8) == 0)
    {
      goto LABEL_16;
    }

LABEL_22:
    v11 = *(this + 5);
    if (v11 >= 0x80)
    {
      v12 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v11) + 1;
      v3 = *(this + 9);
    }

    else
    {
      v12 = 2;
    }

    v4 += v12;
    if ((v3 & 0x10) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_26;
  }

  v9 = *(this + 4);
  if (v9 >= 0x80)
  {
    v10 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v9) + 1;
    v3 = *(this + 9);
  }

  else
  {
    v10 = 2;
  }

  v4 += v10;
  if ((v3 & 8) != 0)
  {
    goto LABEL_22;
  }

LABEL_16:
  if ((v3 & 0x10) != 0)
  {
LABEL_26:
    v13 = *(this + 6);
    if (v13 >= 0x80)
    {
      v14 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v13) + 1;
      v3 = *(this + 9);
    }

    else
    {
      v14 = 2;
    }

    v4 += v14;
  }

LABEL_30:
  v5 = ((v3 >> 4) & 2) + v4 + ((v3 >> 5) & 2) + ((v3 >> 6) & 2);
LABEL_31:
  if ((v3 & 0xFF00) != 0)
  {
    v15 = (v3 >> 7) & 2;
  }

  else
  {
    v15 = 0;
  }

  result = (v15 + v5);
  *(this + 8) = result;
  return result;
}

void awd::metrics::CommCenter_Instruments_CellularIpThroughput_Record::CheckTypeAndMergeFrom(awd::metrics::CommCenter_Instruments_CellularIpThroughput_Record *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  awd::metrics::CommCenter_Instruments_CellularIpThroughput_Record::MergeFrom(this, lpsrc);
}

void awd::metrics::CommCenter_Instruments_CellularIpThroughput::~CommCenter_Instruments_CellularIpThroughput(awd::metrics::CommCenter_Instruments_CellularIpThroughput *this)
{
  *this = &unk_284A60AC8;
  v2 = *(this + 7);
  if (v2 >= 1)
  {
    for (i = 0; i < v2; ++i)
    {
      v4 = *(*(this + 2) + 8 * i);
      if (v4)
      {
        (*(*v4 + 8))(v4);
        v2 = *(this + 7);
      }
    }
  }

  v5 = *(this + 2);
  if (v5)
  {
    MEMORY[0x2383CAF80](v5, 0x80C80B8603338);
  }

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  awd::metrics::CommCenter_Instruments_CellularIpThroughput::~CommCenter_Instruments_CellularIpThroughput(this);

  JUMPOUT(0x2383CAFA0);
}

uint64_t awd::metrics::CommCenter_Instruments_CellularIpThroughput::Clear(uint64_t this)
{
  v1 = this;
  if (*(this + 48))
  {
    *(this + 8) = 0;
    *(this + 40) = 0;
  }

  if (*(this + 24) >= 1)
  {
    v2 = 0;
    do
    {
      v3 = *(*(v1 + 16) + 8 * v2);
      this = (*(*v3 + 32))(v3);
      ++v2;
    }

    while (v2 < *(v1 + 24));
  }

  *(v1 + 24) = 0;
  *(v1 + 48) = 0;
  return this;
}

uint64_t awd::metrics::CommCenter_Instruments_CellularIpThroughput::MergePartialFromCodedStream(awd::metrics::CommCenter_Instruments_CellularIpThroughput *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
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
          goto LABEL_32;
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

      *(this + 12) |= 1u;
      if (v12 < v9 && *v12 == 16)
      {
        v13 = v12 + 1;
        *(a2 + 1) = v13;
LABEL_24:
        if (v13 >= v9 || (v15 = *v13, v15 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 10);
          if (!result)
          {
            return result;
          }

          v16 = *(a2 + 1);
          v9 = *(a2 + 2);
        }

        else
        {
          *(this + 10) = v15;
          v16 = v13 + 1;
          *(a2 + 1) = v16;
        }

        *(this + 12) |= 2u;
        if (v16 < v9 && *v16 == 26)
        {
          do
          {
            *(a2 + 1) = v16 + 1;
LABEL_32:
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
            v29 = 0;
            v21 = *(a2 + 1);
            if (v21 >= *(a2 + 2) || *v21 < 0)
            {
              if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v29))
              {
                return 0;
              }
            }

            else
            {
              v29 = *v21;
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
            if (!awd::metrics::CommCenter_Instruments_CellularIpThroughput_Record::MergePartialFromCodedStream(v20, a2, v24) || *(a2 + 36) != 1)
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

            v16 = *(a2 + 1);
            v28 = *(a2 + 2);
          }

          while (v16 < v28 && *v16 == 26);
          if (v16 == v28 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
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
      v13 = *(a2 + 1);
      v9 = *(a2 + 2);
      goto LABEL_24;
    }

LABEL_16:
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

uint64_t awd::metrics::CommCenter_Instruments_CellularIpThroughput::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 48);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(1, *(this + 8), a2, a4);
    v6 = *(v5 + 48);
  }

  if ((v6 & 2) != 0)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(2, *(v5 + 40), a2, a4);
  }

  if (*(v5 + 24) >= 1)
  {
    v7 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(3, *(*(v5 + 16) + 8 * v7++), a2, a4);
    }

    while (v7 < *(v5 + 24));
  }

  return this;
}

uint64_t awd::metrics::CommCenter_Instruments_CellularIpThroughput::ByteSize(awd::metrics::CommCenter_Instruments_CellularIpThroughput *this, unint64_t a2)
{
  if (!*(this + 48))
  {
    v3 = 0;
    goto LABEL_11;
  }

  if (*(this + 48))
  {
    v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 1)) + 1;
    if ((*(this + 12) & 2) == 0)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v3 = 0;
    if ((*(this + 48) & 2) == 0)
    {
      goto LABEL_11;
    }
  }

  v4 = *(this + 10);
  if (v4 >= 0x80)
  {
    v5 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v4) + 1;
  }

  else
  {
    v5 = 2;
  }

  v3 += v5;
LABEL_11:
  v6 = *(this + 6);
  v7 = (v6 + v3);
  if (v6 >= 1)
  {
    v8 = 0;
    do
    {
      v9 = awd::metrics::CommCenter_Instruments_CellularIpThroughput_Record::ByteSize(*(*(this + 2) + 8 * v8), a2);
      v10 = v9;
      if (v9 >= 0x80)
      {
        v11 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v9);
      }

      else
      {
        v11 = 1;
      }

      v7 = (v10 + v7 + v11);
      ++v8;
    }

    while (v8 < *(this + 6));
  }

  *(this + 11) = v7;
  return v7;
}

void awd::metrics::CommCenter_Instruments_CellularIpThroughput::CheckTypeAndMergeFrom(awd::metrics::CommCenter_Instruments_CellularIpThroughput *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  if (lpsrc == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v13);
  }

  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 16));
  LODWORD(v4) = *(lpsrc + 6);
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

      v6 = *(*(lpsrc + 2) + 8 * v5);
      v7 = *(this + 7);
      v8 = *(this + 6);
      if (v8 >= v7)
      {
        if (v7 == *(this + 8))
        {
          wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 16));
          v7 = *(this + 7);
        }

        *(this + 7) = v7 + 1;
        operator new();
      }

      v9 = *(this + 2);
      *(this + 6) = v8 + 1;
      awd::metrics::CommCenter_Instruments_CellularIpThroughput_Record::MergeFrom(*(v9 + 8 * v8), v6);
      ++v5;
      v4 = *(lpsrc + 6);
    }

    while (v5 < v4);
  }

  LOBYTE(v10) = *(lpsrc + 48);
  if (v10)
  {
    if (*(lpsrc + 48))
    {
      v11 = *(lpsrc + 1);
      *(this + 12) |= 1u;
      *(this + 1) = v11;
      v10 = *(lpsrc + 12);
    }

    if ((v10 & 2) != 0)
    {
      v12 = *(lpsrc + 10);
      *(this + 12) |= 2u;
      *(this + 10) = v12;
    }
  }
}

void sub_2373CFFB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::metrics::CommCenter_Instruments_CellularServiceStatus::~CommCenter_Instruments_CellularServiceStatus(awd::metrics::CommCenter_Instruments_CellularServiceStatus *this)
{
  *this = &unk_284A60B40;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_284A60B40;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  JUMPOUT(0x2383CAFA0);
}

uint64_t awd::metrics::CommCenter_Instruments_CellularServiceStatus::Clear(uint64_t this)
{
  if (*(this + 24))
  {
    *(this + 8) = 0;
    *(this + 16) = 0;
  }

  *(this + 24) = 0;
  return this;
}

uint64_t awd::metrics::CommCenter_Instruments_CellularServiceStatus::MergePartialFromCodedStream(awd::metrics::CommCenter_Instruments_CellularServiceStatus *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
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

      if (TagFallback >> 3 == 3)
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
      if (v10 < v7 && *v10 == 24)
      {
        v11 = v10 + 1;
        *(a2 + 1) = v11;
LABEL_22:
        if (v11 >= v7 || (v12 = *v11, v12 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 4);
          if (!result)
          {
            return result;
          }

          v13 = *(a2 + 1);
          v7 = *(a2 + 2);
        }

        else
        {
          *(this + 4) = v12;
          v13 = v11 + 1;
          *(a2 + 1) = v13;
        }

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

uint64_t awd::metrics::CommCenter_Instruments_CellularServiceStatus::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
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

    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(3, v7, a2, a4);
  }

  return this;
}

uint64_t awd::metrics::CommCenter_Instruments_CellularServiceStatus::ByteSize(wireless_diagnostics::google::protobuf::io::CodedOutputStream **this, unint64_t a2)
{
  if (*(this + 24))
  {
    if (this[3])
    {
      v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(this[1]) + 1;
      if ((this[3] & 2) == 0)
      {
        goto LABEL_11;
      }
    }

    else
    {
      v3 = 0;
      if ((this[3] & 2) == 0)
      {
        goto LABEL_11;
      }
    }

    v4 = *(this + 4);
    if (v4 >= 0x80)
    {
      v5 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v4) + 1;
    }

    else
    {
      v5 = 2;
    }

    v3 = (v5 + v3);
  }

  else
  {
    v3 = 0;
  }

LABEL_11:
  *(this + 5) = v3;
  return v3;
}

void awd::metrics::CommCenter_Instruments_CellularServiceStatus::CheckTypeAndMergeFrom(awd::metrics::CommCenter_Instruments_CellularServiceStatus *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  if (lpsrc == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v7);
  }

  LOBYTE(v4) = *(lpsrc + 24);
  if (v4)
  {
    if (*(lpsrc + 24))
    {
      v5 = *(lpsrc + 1);
      *(this + 6) |= 1u;
      *(this + 1) = v5;
      v4 = *(lpsrc + 6);
    }

    if ((v4 & 2) != 0)
    {
      v6 = *(lpsrc + 4);
      *(this + 6) |= 2u;
      *(this + 4) = v6;
    }
  }
}

void sub_2373D043C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void _GLOBAL__sub_I_CCMetricsInstruments_pb_cc(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  if ((_MergedGlobals_12 & 1) == 0)
  {
    _MergedGlobals_12 = 1;
    wireless_diagnostics::google::protobuf::internal::VerifyVersion(0x1E9808, 2005000, "/Library/Caches/com.apple.xbs/Sources/CoreTelephony/CommCenter/Source/AWDMetrics/cpp/CCMetricsInstruments.pb.cc", a4);
    operator new();
  }
}

uint64_t awd::metrics::protobuf_ShutdownFile_CCMetricsSpringBoard_2eproto(awd::metrics *this)
{
  if (qword_2810D89B0)
  {
    (*(*qword_2810D89B0 + 8))(qword_2810D89B0);
  }

  result = qword_2810D89B8;
  if (qword_2810D89B8)
  {
    v2 = *(*qword_2810D89B8 + 8);

    return v2();
  }

  return result;
}

uint64_t awd::metrics::SpringBoardScreenChange::Clear(uint64_t this)
{
  if (*(this + 24))
  {
    *(this + 8) = 0;
    *(this + 16) = 0;
  }

  *(this + 24) = 0;
  return this;
}

uint64_t awd::metrics::SpringBoardScreenChange::MergePartialFromCodedStream(awd::metrics::SpringBoardScreenChange *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
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

void awd::metrics::SpringBoardScreenChange::CheckTypeAndMergeFrom(awd::metrics::SpringBoardScreenChange *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  if (lpsrc == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v7);
  }

  LOBYTE(v4) = *(lpsrc + 24);
  if (v4)
  {
    if (*(lpsrc + 24))
    {
      v5 = *(lpsrc + 1);
      *(this + 6) |= 1u;
      *(this + 1) = v5;
      v4 = *(lpsrc + 6);
    }

    if ((v4 & 2) != 0)
    {
      v6 = *(lpsrc + 16);
      *(this + 6) |= 2u;
      *(this + 16) = v6;
    }
  }
}

void sub_2373D0D98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t awd::metrics::SpringBoardLockStateChange::Clear(uint64_t this)
{
  if (*(this + 24))
  {
    *(this + 8) = 0;
    *(this + 16) = 0;
  }

  *(this + 24) = 0;
  return this;
}

uint64_t awd::metrics::SpringBoardLockStateChange::MergePartialFromCodedStream(awd::metrics::SpringBoardLockStateChange *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
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

void awd::metrics::SpringBoardLockStateChange::CheckTypeAndMergeFrom(awd::metrics::SpringBoardLockStateChange *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  if (lpsrc == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v7);
  }

  LOBYTE(v4) = *(lpsrc + 24);
  if (v4)
  {
    if (*(lpsrc + 24))
    {
      v5 = *(lpsrc + 1);
      *(this + 6) |= 1u;
      *(this + 1) = v5;
      v4 = *(lpsrc + 6);
    }

    if ((v4 & 2) != 0)
    {
      v6 = *(lpsrc + 16);
      *(this + 6) |= 2u;
      *(this + 16) = v6;
    }
  }
}

void sub_2373D10F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void _GLOBAL__sub_I_CCMetricsSpringBoard_pb_cc(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  if ((_MergedGlobals_13 & 1) == 0)
  {
    _MergedGlobals_13 = 1;
    wireless_diagnostics::google::protobuf::internal::VerifyVersion(0x1E9808, 2005000, "/Library/Caches/com.apple.xbs/Sources/CoreTelephony/CommCenter/Source/AWDMetrics/cpp/CCMetricsSpringBoard.pb.cc", a4);
    operator new();
  }
}

uint64_t awd::metrics::protobuf_ShutdownFile_CCMetricsCarrierBundle_2eproto(awd::metrics *this)
{
  if (qword_2810D89C8)
  {
    (*(*qword_2810D89C8 + 8))(qword_2810D89C8);
  }

  if (qword_2810D89D0)
  {
    (*(*qword_2810D89D0 + 8))(qword_2810D89D0);
  }

  if (qword_2810D89D8)
  {
    (*(*qword_2810D89D8 + 8))(qword_2810D89D8);
  }

  if (qword_2810D89E0)
  {
    (*(*qword_2810D89E0 + 8))(qword_2810D89E0);
  }

  if (qword_2810D89E8)
  {
    (*(*qword_2810D89E8 + 8))(qword_2810D89E8);
  }

  if (qword_2810D89F0)
  {
    (*(*qword_2810D89F0 + 8))(qword_2810D89F0);
  }

  if (qword_2810D89F8)
  {
    (*(*qword_2810D89F8 + 8))(qword_2810D89F8);
  }

  if (qword_2810D8A00)
  {
    (*(*qword_2810D8A00 + 8))(qword_2810D8A00);
  }

  if (qword_2810D8A08)
  {
    (*(*qword_2810D8A08 + 8))(qword_2810D8A08);
  }

  if (qword_2810D8A10)
  {
    (*(*qword_2810D8A10 + 8))(qword_2810D8A10);
  }

  if (qword_2810D8A18)
  {
    (*(*qword_2810D8A18 + 8))(qword_2810D8A18);
  }

  result = qword_2810D8A20;
  if (qword_2810D8A20)
  {
    v2 = *(*qword_2810D8A20 + 8);

    return v2();
  }

  return result;
}

uint64_t awd::metrics::CommCenterBundleDetails::CommCenterBundleDetails(uint64_t this)
{
  *(this + 88) = 0;
  *(this + 40) = 0;
  v1 = MEMORY[0x277D82C30];
  *this = &unk_284A60EA0;
  *(this + 8) = v1;
  *(this + 16) = v1;
  *(this + 24) = v1;
  *(this + 32) = v1;
  *(this + 44) = 0;
  *(this + 48) = v1;
  *(this + 56) = v1;
  *(this + 64) = 0;
  *(this + 72) = v1;
  *(this + 80) = v1;
  return this;
}

uint64_t awd::metrics::CommCenterBundle::CommCenterBundle(uint64_t this)
{
  *(this + 40) = 0;
  *this = &unk_284A60F18;
  *(this + 8) = 0;
  *(this + 16) = 0;
  *(this + 24) = 0;
  *(this + 32) = 0;
  return this;
}

void *awd::metrics::CommCenterThumperHomeCarrier::CommCenterThumperHomeCarrier(void *this)
{
  *this = &unk_284A60F90;
  this[1] = 0;
  this[2] = MEMORY[0x277D82C30];
  this[3] = 0;
  return this;
}

uint64_t awd::metrics::CommCenterBundleUpdateCheckInfo::CommCenterBundleUpdateCheckInfo(uint64_t this)
{
  *(this + 24) = 0;
  v1 = MEMORY[0x277D82C30];
  *(this + 16) = 0;
  *this = &unk_284A61008;
  *(this + 8) = v1;
  *(this + 20) = 0;
  return this;
}

uint64_t awd::metrics::CommCenterBundleUpdateCheck::CommCenterBundleUpdateCheck(uint64_t this)
{
  *(this + 48) = 0;
  *(this + 40) = 0;
  *(this + 43) = 0;
  *this = &unk_284A61080;
  *(this + 8) = 0;
  *(this + 16) = 0;
  *(this + 24) = 0;
  *(this + 32) = 0;
  return this;
}

uint64_t awd::metrics::CommCenterBundleUpdateCheckSchedule::CommCenterBundleUpdateCheckSchedule(uint64_t this)
{
  *(this + 8) = 0;
  *(this + 16) = 0;
  *this = &unk_284A610F8;
  *(this + 24) = 0;
  return this;
}

uint64_t awd::metrics::CommCenterBundleUpdateInfo::CommCenterBundleUpdateInfo(uint64_t this)
{
  *(this + 32) = 0;
  v1 = MEMORY[0x277D82C30];
  *this = &unk_284A61170;
  *(this + 8) = v1;
  *(this + 16) = v1;
  *(this + 24) = v1;
  *(this + 40) = 0;
  return this;
}

uint64_t awd::metrics::CommCenterBundleUpdateInstalled::CommCenterBundleUpdateInstalled(uint64_t this)
{
  *(this + 40) = 0;
  *(this + 48) = 0;
  *this = &unk_284A611E8;
  *(this + 8) = 0;
  *(this + 16) = 0;
  *(this + 24) = 0;
  *(this + 32) = 0;
  return this;
}

uint64_t awd::metrics::CommCenterBundleUpdateFailed::CommCenterBundleUpdateFailed(uint64_t this)
{
  *(this + 40) = 0;
  *(this + 48) = 0;
  *this = &unk_284A61260;
  *(this + 8) = 0;
  *(this + 16) = 0;
  *(this + 24) = 0;
  *(this + 32) = 0;
  return this;
}

uint64_t awd::metrics::CommCenterBundleUpdateDeclined::CommCenterBundleUpdateDeclined(uint64_t this)
{
  *(this + 44) = 0;
  *(this + 40) = 0;
  *(this + 42) = 0;
  *this = &unk_284A612D8;
  *(this + 8) = 0;
  *(this + 16) = 0;
  *(this + 24) = 0;
  *(this + 32) = 0;
  return this;
}

uint64_t awd::metrics::CommCenterBasebandFilePush::CommCenterBasebandFilePush(uint64_t this)
{
  *(this + 40) = 0;
  *(this + 48) = 0;
  *(this + 56) = 0;
  *this = &unk_284A61350;
  *(this + 8) = 0;
  *(this + 16) = 0;
  *(this + 24) = 0;
  *(this + 32) = 0;
  *(this + 72) = 0;
  *(this + 80) = 0;
  *(this + 64) = 0;
  *(this + 88) = 0;
  return this;
}

uint64_t awd::metrics::CommCenterBundleOverlayFileWriteFailure::CommCenterBundleOverlayFileWriteFailure(uint64_t this)
{
  v1 = MEMORY[0x277D82C30];
  *this = &unk_284A613C8;
  *(this + 8) = 0;
  *(this + 16) = v1;
  *(this + 24) = v1;
  *(this + 32) = 0;
  *(this + 40) = 0;
  return this;
}

void awd::metrics::CommCenterBundleDetails::MergeFrom(awd::metrics::CommCenterBundleDetails *this, const awd::metrics::CommCenterBundleDetails *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v27);
  }

  v4 = *(a2 + 23);
  if (!v4)
  {
    goto LABEL_33;
  }

  if (v4)
  {
    v5 = *(a2 + 10);
    *(this + 23) |= 1u;
    *(this + 10) = v5;
    v4 = *(a2 + 23);
  }

  v6 = MEMORY[0x277D82C30];
  if ((v4 & 2) != 0)
  {
    v7 = *(a2 + 1);
    *(this + 23) |= 2u;
    v8 = *(this + 1);
    if (v8 == v6)
    {
      operator new();
    }

    std::string::operator=(v8, v7);
    v4 = *(a2 + 23);
    if ((v4 & 4) == 0)
    {
LABEL_8:
      if ((v4 & 8) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_20;
    }
  }

  else if ((v4 & 4) == 0)
  {
    goto LABEL_8;
  }

  v9 = *(a2 + 2);
  *(this + 23) |= 4u;
  v10 = *(this + 2);
  if (v10 == v6)
  {
    operator new();
  }

  std::string::operator=(v10, v9);
  v4 = *(a2 + 23);
  if ((v4 & 8) == 0)
  {
LABEL_9:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_23;
  }

LABEL_20:
  v11 = *(a2 + 3);
  *(this + 23) |= 8u;
  v12 = *(this + 3);
  if (v12 == v6)
  {
    operator new();
  }

  std::string::operator=(v12, v11);
  v4 = *(a2 + 23);
  if ((v4 & 0x10) == 0)
  {
LABEL_10:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_11;
    }

LABEL_26:
    v15 = *(a2 + 44);
    *(this + 23) |= 0x20u;
    *(this + 44) = v15;
    v4 = *(a2 + 23);
    if ((v4 & 0x40) == 0)
    {
LABEL_12:
      if ((v4 & 0x80) == 0)
      {
        goto LABEL_33;
      }

      goto LABEL_30;
    }

    goto LABEL_27;
  }

LABEL_23:
  v13 = *(a2 + 4);
  *(this + 23) |= 0x10u;
  v14 = *(this + 4);
  if (v14 == v6)
  {
    operator new();
  }

  std::string::operator=(v14, v13);
  v4 = *(a2 + 23);
  if ((v4 & 0x20) != 0)
  {
    goto LABEL_26;
  }

LABEL_11:
  if ((v4 & 0x40) == 0)
  {
    goto LABEL_12;
  }

LABEL_27:
  v16 = *(a2 + 6);
  *(this + 23) |= 0x40u;
  v17 = *(this + 6);
  if (v17 == v6)
  {
    operator new();
  }

  std::string::operator=(v17, v16);
  v4 = *(a2 + 23);
  if ((v4 & 0x80) != 0)
  {
LABEL_30:
    v18 = *(a2 + 7);
    *(this + 23) |= 0x80u;
    v19 = *(this + 7);
    if (v19 == v6)
    {
      operator new();
    }

    std::string::operator=(v19, v18);
    v4 = *(a2 + 23);
  }

LABEL_33:
  if ((v4 & 0xFF00) == 0)
  {
    return;
  }

  if ((v4 & 0x100) != 0)
  {
    v20 = *(a2 + 16);
    *(this + 23) |= 0x100u;
    *(this + 16) = v20;
    v4 = *(a2 + 23);
    if ((v4 & 0x200) == 0)
    {
LABEL_36:
      if ((v4 & 0x400) == 0)
      {
        goto LABEL_37;
      }

      goto LABEL_42;
    }
  }

  else if ((v4 & 0x200) == 0)
  {
    goto LABEL_36;
  }

  v21 = *(a2 + 17);
  *(this + 23) |= 0x200u;
  *(this + 17) = v21;
  v4 = *(a2 + 23);
  if ((v4 & 0x400) == 0)
  {
LABEL_37:
    if ((v4 & 0x800) == 0)
    {
      goto LABEL_38;
    }

    goto LABEL_43;
  }

LABEL_42:
  v22 = *(a2 + 45);
  *(this + 23) |= 0x400u;
  *(this + 45) = v22;
  v4 = *(a2 + 23);
  if ((v4 & 0x800) == 0)
  {
LABEL_38:
    if ((v4 & 0x1000) == 0)
    {
      return;
    }

    goto LABEL_46;
  }

LABEL_43:
  v23 = *(a2 + 9);
  *(this + 23) |= 0x800u;
  v24 = *(this + 9);
  if (v24 == MEMORY[0x277D82C30])
  {
    operator new();
  }

  std::string::operator=(v24, v23);
  if ((*(a2 + 23) & 0x1000) != 0)
  {
LABEL_46:
    v25 = *(a2 + 10);
    *(this + 23) |= 0x1000u;
    v26 = *(this + 10);
    if (v26 == MEMORY[0x277D82C30])
    {
      operator new();
    }

    std::string::operator=(v26, v25);
  }
}

void sub_2373D1AA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void *awd::metrics::CommCenterBundleDetails::SharedDtor(void *this)
{
  v1 = this;
  v2 = this[1];
  v3 = MEMORY[0x277D82C30];
  if (v2 != MEMORY[0x277D82C30] && v2 != 0)
  {
    if (*(v2 + 23) < 0)
    {
      operator delete(*v2);
    }

    this = MEMORY[0x2383CAFA0](v2, 0x1012C40EC159624);
  }

  v5 = v1[2];
  if (v5 != v3 && v5 != 0)
  {
    if (*(v5 + 23) < 0)
    {
      operator delete(*v5);
    }

    this = MEMORY[0x2383CAFA0](v5, 0x1012C40EC159624);
  }

  v7 = v1[3];
  if (v7 != v3 && v7 != 0)
  {
    if (*(v7 + 23) < 0)
    {
      operator delete(*v7);
    }

    this = MEMORY[0x2383CAFA0](v7, 0x1012C40EC159624);
  }

  v9 = v1[4];
  if (v9 != v3 && v9 != 0)
  {
    if (*(v9 + 23) < 0)
    {
      operator delete(*v9);
    }

    this = MEMORY[0x2383CAFA0](v9, 0x1012C40EC159624);
  }

  v11 = v1[6];
  if (v11 != v3 && v11)
  {
    if (*(v11 + 23) < 0)
    {
      operator delete(*v11);
    }

    this = MEMORY[0x2383CAFA0](v11, 0x1012C40EC159624);
  }

  v12 = v1[7];
  if (v12 != v3 && v12)
  {
    if (*(v12 + 23) < 0)
    {
      operator delete(*v12);
    }

    this = MEMORY[0x2383CAFA0](v12, 0x1012C40EC159624);
  }

  v13 = v1[9];
  if (v13 != v3 && v13)
  {
    if (*(v13 + 23) < 0)
    {
      operator delete(*v13);
    }

    this = MEMORY[0x2383CAFA0](v13, 0x1012C40EC159624);
  }

  v14 = v1[10];
  if (v14 != v3 && v14)
  {
    if (*(v14 + 23) < 0)
    {
      operator delete(*v14);
    }

    JUMPOUT(0x2383CAFA0);
  }

  return this;
}

void awd::metrics::CommCenterBundleDetails::~CommCenterBundleDetails(awd::metrics::CommCenterBundleDetails *this)
{
  *this = &unk_284A60EA0;
  awd::metrics::CommCenterBundleDetails::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_284A60EA0;
  awd::metrics::CommCenterBundleDetails::SharedDtor(this);
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  JUMPOUT(0x2383CAFA0);
}

uint64_t awd::metrics::CommCenterBundleDetails::Clear(uint64_t this)
{
  v1 = *(this + 92);
  if (v1)
  {
    *(this + 40) = 0;
    v2 = MEMORY[0x277D82C30];
    if ((v1 & 2) != 0)
    {
      v3 = *(this + 8);
      if (v3 != MEMORY[0x277D82C30])
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

    if ((*(this + 92) & 4) != 0)
    {
      v4 = *(this + 16);
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

    if ((*(this + 92) & 8) != 0)
    {
      v5 = *(this + 24);
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

    if ((*(this + 92) & 0x10) != 0)
    {
      v6 = *(this + 32);
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

    *(this + 44) = 0;
    if ((*(this + 92) & 0x40) != 0)
    {
      v7 = *(this + 48);
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

    if ((*(this + 92) & 0x80) != 0)
    {
      v8 = *(this + 56);
      if (v8 != v2)
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
  }

  v9 = *(this + 92);
  if ((v9 & 0xFF00) != 0)
  {
    *(this + 64) = 0;
    *(this + 45) = 0;
    if ((v9 & 0x800) != 0)
    {
      v10 = *(this + 72);
      if (v10 != MEMORY[0x277D82C30])
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

    if ((*(this + 93) & 0x10) != 0)
    {
      v11 = *(this + 80);
      if (v11 != MEMORY[0x277D82C30])
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

  *(this + 92) = 0;
  return this;
}

uint64_t awd::metrics::CommCenterBundleDetails::MergePartialFromCodedStream(awd::metrics::CommCenterBundleDetails *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
{
  v5 = MEMORY[0x277D82C30];
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
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_35;
        }

        v10 = *(a2 + 1);
        v9 = *(a2 + 2);
        if (v10 < v9)
        {
          v11 = *v10;
          if ((v11 & 0x80000000) == 0)
          {
            *(this + 10) = v11;
            v12 = v10 + 1;
            *(a2 + 1) = v12;
LABEL_41:
            v16 = *(this + 23) | 1;
            *(this + 23) = v16;
            if (v12 < v9 && *v12 == 18)
            {
              *(a2 + 1) = v12 + 1;
              goto LABEL_44;
            }

            continue;
          }
        }

        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 10);
        if (result)
        {
          v12 = *(a2 + 1);
          v9 = *(a2 + 2);
          goto LABEL_41;
        }

        break;
      case 2u:
        if (v8 != 2)
        {
          goto LABEL_35;
        }

        v16 = *(this + 23);
LABEL_44:
        *(this + 23) = v16 | 2;
        if (*(this + 1) == v5)
        {
          operator new();
        }

        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
        if (!result)
        {
          return result;
        }

        v22 = *(a2 + 1);
        if (v22 >= *(a2 + 2) || *v22 != 26)
        {
          continue;
        }

        *(a2 + 1) = v22 + 1;
LABEL_50:
        *(this + 23) |= 4u;
        if (*(this + 2) == v5)
        {
          operator new();
        }

        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
        if (!result)
        {
          return result;
        }

        v23 = *(a2 + 1);
        if (v23 >= *(a2 + 2) || *v23 != 34)
        {
          continue;
        }

        *(a2 + 1) = v23 + 1;
LABEL_56:
        *(this + 23) |= 8u;
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
        if (v24 >= *(a2 + 2) || *v24 != 42)
        {
          continue;
        }

        *(a2 + 1) = v24 + 1;
LABEL_62:
        *(this + 23) |= 0x10u;
        if (*(this + 4) == v5)
        {
          operator new();
        }

        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
        if (!result)
        {
          return result;
        }

        v25 = *(a2 + 1);
        v17 = *(a2 + 2);
        if (v25 >= v17 || *v25 != 48)
        {
          continue;
        }

        v18 = v25 + 1;
        *(a2 + 1) = v18;
LABEL_68:
        v39 = 0;
        if (v18 >= v17 || (v26 = *v18, (v26 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v39);
          if (!result)
          {
            return result;
          }

          v26 = v39;
          v27 = *(a2 + 1);
          v17 = *(a2 + 2);
        }

        else
        {
          v27 = v18 + 1;
          *(a2 + 1) = v27;
        }

        *(this + 44) = v26 != 0;
        v19 = *(this + 23) | 0x20;
        *(this + 23) = v19;
        if (v27 >= v17 || *v27 != 58)
        {
          continue;
        }

        *(a2 + 1) = v27 + 1;
LABEL_76:
        *(this + 23) = v19 | 0x40;
        if (*(this + 6) == v5)
        {
          operator new();
        }

        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
        if (!result)
        {
          return result;
        }

        v28 = *(a2 + 1);
        if (v28 >= *(a2 + 2) || *v28 != 66)
        {
          continue;
        }

        *(a2 + 1) = v28 + 1;
LABEL_82:
        *(this + 23) |= 0x80u;
        if (*(this + 7) == v5)
        {
          operator new();
        }

        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
        if (!result)
        {
          return result;
        }

        v29 = *(a2 + 1);
        v14 = *(a2 + 2);
        if (v29 >= v14 || *v29 != 72)
        {
          continue;
        }

        v21 = v29 + 1;
        *(a2 + 1) = v21;
LABEL_88:
        if (v21 >= v14 || (v30 = *v21, v30 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 16);
          if (!result)
          {
            return result;
          }

          v31 = *(a2 + 1);
          v14 = *(a2 + 2);
        }

        else
        {
          *(this + 16) = v30;
          v31 = v21 + 1;
          *(a2 + 1) = v31;
        }

        *(this + 23) |= 0x100u;
        if (v31 >= v14 || *v31 != 80)
        {
          continue;
        }

        v15 = v31 + 1;
        *(a2 + 1) = v15;
LABEL_96:
        if (v15 >= v14 || (v32 = *v15, v32 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 17);
          if (!result)
          {
            return result;
          }

          v33 = *(a2 + 1);
          v14 = *(a2 + 2);
        }

        else
        {
          *(this + 17) = v32;
          v33 = v15 + 1;
          *(a2 + 1) = v33;
        }

        *(this + 23) |= 0x200u;
        if (v33 >= v14 || *v33 != 88)
        {
          continue;
        }

        v20 = v33 + 1;
        *(a2 + 1) = v20;
LABEL_104:
        v38 = 0;
        if (v20 >= v14 || (v34 = *v20, (v34 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v38);
          if (!result)
          {
            return result;
          }

          v34 = v38;
          v35 = *(a2 + 1);
          v14 = *(a2 + 2);
        }

        else
        {
          v35 = v20 + 1;
          *(a2 + 1) = v35;
        }

        *(this + 45) = v34 != 0;
        v13 = *(this + 23) | 0x400;
        *(this + 23) = v13;
        if (v35 >= v14 || *v35 != 98)
        {
          continue;
        }

        *(a2 + 1) = v35 + 1;
LABEL_112:
        *(this + 23) = v13 | 0x800;
        if (*(this + 9) == v5)
        {
          operator new();
        }

        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
        if (!result)
        {
          return result;
        }

        v36 = *(a2 + 1);
        if (v36 >= *(a2 + 2) || *v36 != 106)
        {
          continue;
        }

        *(a2 + 1) = v36 + 1;
LABEL_118:
        *(this + 23) |= 0x1000u;
        if (*(this + 10) == v5)
        {
          operator new();
        }

        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
        if (!result)
        {
          return result;
        }

        if (*(a2 + 1) != *(a2 + 2) || !*(a2 + 11) && *(a2 + 6) != *(a2 + 10))
        {
          continue;
        }

        *(a2 + 8) = 0;
        result = 1;
        *(a2 + 36) = 1;
        return result;
      case 3u:
        if (v8 == 2)
        {
          goto LABEL_50;
        }

        goto LABEL_35;
      case 4u:
        if (v8 == 2)
        {
          goto LABEL_56;
        }

        goto LABEL_35;
      case 5u:
        if (v8 == 2)
        {
          goto LABEL_62;
        }

        goto LABEL_35;
      case 6u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_35;
        }

        v18 = *(a2 + 1);
        v17 = *(a2 + 2);
        goto LABEL_68;
      case 7u:
        if (v8 != 2)
        {
          goto LABEL_35;
        }

        v19 = *(this + 23);
        goto LABEL_76;
      case 8u:
        if (v8 == 2)
        {
          goto LABEL_82;
        }

        goto LABEL_35;
      case 9u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_35;
        }

        v21 = *(a2 + 1);
        v14 = *(a2 + 2);
        goto LABEL_88;
      case 0xAu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_35;
        }

        v15 = *(a2 + 1);
        v14 = *(a2 + 2);
        goto LABEL_96;
      case 0xBu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_35;
        }

        v20 = *(a2 + 1);
        v14 = *(a2 + 2);
        goto LABEL_104;
      case 0xCu:
        if (v8 != 2)
        {
          goto LABEL_35;
        }

        v13 = *(this + 23);
        goto LABEL_112;
      case 0xDu:
        if (v8 == 2)
        {
          goto LABEL_118;
        }

        goto LABEL_35;
      default:
LABEL_35:
        if (v8 == 4)
        {
          return 1;
        }

        if (wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(a2, TagFallback))
        {
          continue;
        }

        return 0;
    }

    return result;
  }
}

uint64_t awd::metrics::CommCenterBundleDetails::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 92);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(1, *(this + 40), a2, a4);
    v6 = *(v5 + 92);
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

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
  v6 = *(v5 + 92);
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
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
  v6 = *(v5 + 92);
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
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
  v6 = *(v5 + 92);
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
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
  v6 = *(v5 + 92);
  if ((v6 & 0x20) == 0)
  {
LABEL_7:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_21;
  }

LABEL_20:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(6, *(v5 + 44), a2, a4);
  v6 = *(v5 + 92);
  if ((v6 & 0x40) == 0)
  {
LABEL_8:
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_22;
  }

LABEL_21:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
  v6 = *(v5 + 92);
  if ((v6 & 0x80) == 0)
  {
LABEL_9:
    if ((v6 & 0x100) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_23;
  }

LABEL_22:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
  v6 = *(v5 + 92);
  if ((v6 & 0x100) == 0)
  {
LABEL_10:
    if ((v6 & 0x200) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_24;
  }

LABEL_23:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(9, *(v5 + 64), a2, a4);
  v6 = *(v5 + 92);
  if ((v6 & 0x200) == 0)
  {
LABEL_11:
    if ((v6 & 0x400) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_25;
  }

LABEL_24:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xA, *(v5 + 68), a2, a4);
  v6 = *(v5 + 92);
  if ((v6 & 0x400) == 0)
  {
LABEL_12:
    if ((v6 & 0x800) == 0)
    {
      goto LABEL_13;
    }

LABEL_26:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
    if ((*(v5 + 92) & 0x1000) == 0)
    {
      return this;
    }

    goto LABEL_27;
  }

LABEL_25:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(0xB, *(v5 + 45), a2, a4);
  v6 = *(v5 + 92);
  if ((v6 & 0x800) != 0)
  {
    goto LABEL_26;
  }

LABEL_13:
  if ((v6 & 0x1000) == 0)
  {
    return this;
  }

LABEL_27:

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
}

uint64_t awd::metrics::CommCenterBundleDetails::ByteSize(awd::metrics::CommCenterBundleDetails *this, unsigned int a2)
{
  v3 = *(this + 23);
  if (!v3)
  {
    v5 = 0;
    goto LABEL_70;
  }

  if (v3)
  {
    v6 = *(this + 10);
    if (v6 >= 0x80)
    {
      v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v6) + 1;
      v3 = *(this + 23);
      if ((v3 & 2) == 0)
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
    if ((v3 & 2) == 0)
    {
      goto LABEL_19;
    }
  }

  v7 = *(this + 1);
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
    v3 = *(this + 23);
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

  v4 += v12 + v8 + 1;
LABEL_19:
  if ((v3 & 4) == 0)
  {
    if ((v3 & 8) == 0)
    {
      goto LABEL_21;
    }

LABEL_32:
    v19 = *(this + 3);
    v20 = *(v19 + 23);
    v21 = v20;
    v22 = *(v19 + 8);
    if ((v20 & 0x80u) == 0)
    {
      v23 = *(v19 + 23);
    }

    else
    {
      v23 = v22;
    }

    if (v23 >= 0x80)
    {
      v24 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v23);
      v20 = *(v19 + 23);
      v22 = *(v19 + 8);
      v3 = *(this + 23);
      v21 = *(v19 + 23);
    }

    else
    {
      v24 = 1;
    }

    if (v21 < 0)
    {
      v20 = v22;
    }

    v4 += v24 + v20 + 1;
    if ((v3 & 0x10) == 0)
    {
      goto LABEL_50;
    }

    goto LABEL_41;
  }

  v13 = *(this + 2);
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
    v3 = *(this + 23);
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

  v4 += v18 + v14 + 1;
  if ((v3 & 8) != 0)
  {
    goto LABEL_32;
  }

LABEL_21:
  if ((v3 & 0x10) != 0)
  {
LABEL_41:
    v25 = *(this + 4);
    v26 = *(v25 + 23);
    v27 = v26;
    v28 = *(v25 + 8);
    if ((v26 & 0x80u) == 0)
    {
      v29 = *(v25 + 23);
    }

    else
    {
      v29 = v28;
    }

    if (v29 >= 0x80)
    {
      v30 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v29);
      v26 = *(v25 + 23);
      v28 = *(v25 + 8);
      v3 = *(this + 23);
      v27 = *(v25 + 23);
    }

    else
    {
      v30 = 1;
    }

    if (v27 < 0)
    {
      v26 = v28;
    }

    v4 += v30 + v26 + 1;
  }

LABEL_50:
  v5 = ((v3 >> 4) & 2) + v4;
  if ((v3 & 0x40) != 0)
  {
    v31 = *(this + 6);
    v32 = *(v31 + 23);
    v33 = v32;
    v34 = *(v31 + 8);
    if ((v32 & 0x80u) == 0)
    {
      v35 = *(v31 + 23);
    }

    else
    {
      v35 = v34;
    }

    if (v35 >= 0x80)
    {
      v36 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v35);
      v32 = *(v31 + 23);
      v34 = *(v31 + 8);
      v3 = *(this + 23);
      v33 = *(v31 + 23);
    }

    else
    {
      v36 = 1;
    }

    if (v33 < 0)
    {
      v32 = v34;
    }

    v5 = (v5 + v36 + v32 + 1);
  }

  if ((v3 & 0x80) != 0)
  {
    v37 = *(this + 7);
    v38 = *(v37 + 23);
    v39 = v38;
    v40 = *(v37 + 8);
    if ((v38 & 0x80u) == 0)
    {
      v41 = *(v37 + 23);
    }

    else
    {
      v41 = v40;
    }

    if (v41 >= 0x80)
    {
      v42 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v41);
      v38 = *(v37 + 23);
      v40 = *(v37 + 8);
      v3 = *(this + 23);
      v39 = *(v37 + 23);
    }

    else
    {
      v42 = 1;
    }

    if (v39 < 0)
    {
      v38 = v40;
    }

    v5 = (v5 + v42 + v38 + 1);
  }

LABEL_70:
  if ((v3 & 0xFF00) != 0)
  {
    if ((v3 & 0x100) != 0)
    {
      v43 = *(this + 16);
      if (v43 >= 0x80)
      {
        v44 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v43) + 1;
        v3 = *(this + 23);
      }

      else
      {
        v44 = 2;
      }

      LODWORD(v5) = v44 + v5;
    }

    if ((v3 & 0x200) != 0)
    {
      v45 = *(this + 17);
      if (v45 >= 0x80)
      {
        v46 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v45) + 1;
        v3 = *(this + 23);
      }

      else
      {
        v46 = 2;
      }

      LODWORD(v5) = v46 + v5;
    }

    v5 = ((v3 >> 9) & 2) + v5;
    if ((v3 & 0x800) != 0)
    {
      v47 = *(this + 9);
      v48 = *(v47 + 23);
      v49 = v48;
      v50 = *(v47 + 8);
      if ((v48 & 0x80u) == 0)
      {
        v51 = *(v47 + 23);
      }

      else
      {
        v51 = v50;
      }

      if (v51 >= 0x80)
      {
        v52 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v51);
        v48 = *(v47 + 23);
        v50 = *(v47 + 8);
        v3 = *(this + 23);
        v49 = *(v47 + 23);
      }

      else
      {
        v52 = 1;
      }

      if (v49 < 0)
      {
        v48 = v50;
      }

      v5 = (v5 + v52 + v48 + 1);
    }

    if ((v3 & 0x1000) != 0)
    {
      v53 = *(this + 10);
      v54 = *(v53 + 23);
      v55 = v54;
      v56 = *(v53 + 8);
      if ((v54 & 0x80u) == 0)
      {
        v57 = *(v53 + 23);
      }

      else
      {
        v57 = v56;
      }

      if (v57 >= 0x80)
      {
        v58 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v57);
        v54 = *(v53 + 23);
        v56 = *(v53 + 8);
        v55 = *(v53 + 23);
      }

      else
      {
        v58 = 1;
      }

      if (v55 < 0)
      {
        v54 = v56;
      }

      v5 = (v5 + v58 + v54 + 1);
    }
  }

  *(this + 22) = v5;
  return v5;
}

void awd::metrics::CommCenterBundleDetails::CheckTypeAndMergeFrom(awd::metrics::CommCenterBundleDetails *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  awd::metrics::CommCenterBundleDetails::MergeFrom(this, lpsrc);
}

void awd::metrics::CommCenterBundle::~CommCenterBundle(awd::metrics::CommCenterBundle *this)
{
  *this = &unk_284A60F18;
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::configs::ConfigurationParameter>::TypeHandler>(this + 2);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  awd::metrics::CommCenterBundle::~CommCenterBundle(this);

  JUMPOUT(0x2383CAFA0);
}

uint64_t awd::metrics::CommCenterBundle::Clear(awd::metrics::CommCenterBundle *this)
{
  if (*(this + 44))
  {
    *(this + 1) = 0;
  }

  result = wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Clear<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::configs::ConfigurationParameter>::TypeHandler>(this + 16);
  *(this + 11) = 0;
  return result;
}

uint64_t awd::metrics::CommCenterBundle::MergePartialFromCodedStream(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
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

      if (TagFallback >> 3 != 1 || (TagFallback & 7) != 0)
      {
        goto LABEL_13;
      }

      v8 = *(a2 + 1);
      v9 = *(a2 + 2);
      if (v8 >= v9 || (v10 = *v8, v10 < 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, (this + 8));
        if (!result)
        {
          return result;
        }

        v11 = *(a2 + 1);
        v9 = *(a2 + 2);
      }

      else
      {
        *(this + 8) = v10;
        v11 = v8 + 1;
        *(a2 + 1) = v11;
      }

      *(this + 44) |= 1u;
      if (v11 < v9 && *v11 == 18)
      {
        do
        {
          *(a2 + 1) = v11 + 1;
LABEL_21:
          v13 = *(this + 28);
          v14 = *(this + 24);
          if (v14 >= v13)
          {
            if (v13 == *(this + 32))
            {
              wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 16));
              v13 = *(this + 28);
            }

            *(this + 28) = v13 + 1;
            wireless_diagnostics::google::protobuf::internal::GenericTypeHandler<awd::metrics::CommCenterBundleDetails>::New();
          }

          v15 = *(this + 16);
          *(this + 24) = v14 + 1;
          v16 = *(v15 + 8 * v14);
          v25 = 0;
          v17 = *(a2 + 1);
          if (v17 >= *(a2 + 2) || *v17 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v25))
            {
              return 0;
            }
          }

          else
          {
            v25 = *v17;
            *(a2 + 1) = v17 + 1;
          }

          v18 = *(a2 + 14);
          v19 = *(a2 + 15);
          *(a2 + 14) = v18 + 1;
          if (v18 >= v19)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
          if (!awd::metrics::CommCenterBundleDetails::MergePartialFromCodedStream(v16, a2, v20) || *(a2 + 36) != 1)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
          v21 = *(a2 + 14);
          v22 = __OFSUB__(v21, 1);
          v23 = v21 - 1;
          if (v23 < 0 == v22)
          {
            *(a2 + 14) = v23;
          }

          v11 = *(a2 + 1);
          v24 = *(a2 + 2);
        }

        while (v11 < v24 && *v11 == 18);
        if (v11 == v24 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
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
      goto LABEL_21;
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
}

uint64_t awd::metrics::CommCenterBundle::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  if (*(this + 44))
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(1, *(this + 8), a2, a4);
  }

  if (*(v5 + 24) >= 1)
  {
    v6 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(2, *(*(v5 + 16) + 8 * v6++), a2, a4);
    }

    while (v6 < *(v5 + 24));
  }

  return this;
}

uint64_t awd::metrics::CommCenterBundle::ByteSize(wireless_diagnostics::google::protobuf::io::CodedOutputStream **this, unint64_t a2)
{
  if (*(this + 44))
  {
    v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(this[1]) + 1;
  }

  else
  {
    v3 = 0;
  }

  v4 = *(this + 6);
  v5 = (v4 + v3);
  if (v4 >= 1)
  {
    v6 = 0;
    do
    {
      v7 = awd::metrics::CommCenterBundleDetails::ByteSize(*(this[2] + v6), a2);
      v8 = v7;
      if (v7 >= 0x80)
      {
        v9 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v7);
      }

      else
      {
        v9 = 1;
      }

      v5 = (v8 + v5 + v9);
      ++v6;
    }

    while (v6 < *(this + 6));
  }

  *(this + 10) = v5;
  return v5;
}

void awd::metrics::CommCenterBundle::CheckTypeAndMergeFrom(awd::metrics::CommCenterBundle *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  if (lpsrc == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v5);
  }

  wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::CommCenterBundleDetails>::MergeFrom((this + 16), lpsrc + 16);
  if (*(lpsrc + 44))
  {
    v4 = *(lpsrc + 1);
    *(this + 11) |= 1u;
    *(this + 1) = v4;
  }
}

void sub_2373D31A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::CommCenterBundleDetails>::MergeFrom(wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase *a1, uint64_t a2)
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
        wireless_diagnostics::google::protobuf::internal::GenericTypeHandler<awd::metrics::CommCenterBundleDetails>::New();
      }

      v9 = *a1;
      *(a1 + 2) = v8 + 1;
      awd::metrics::CommCenterBundleDetails::MergeFrom(*(v9 + 8 * v8), v6);
      ++v5;
      v4 = *(a2 + 8);
    }

    while (v5 < v4);
  }
}

void sub_2373D32E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::metrics::CommCenterThumperHomeCarrier::~CommCenterThumperHomeCarrier(awd::metrics::CommCenterThumperHomeCarrier *this)
{
  *this = &unk_284A60F90;
  awd::configs::AggregationSpec::SharedDtor(*(this + 2));

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_284A60F90;
  awd::configs::AggregationSpec::SharedDtor(*(this + 2));
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  JUMPOUT(0x2383CAFA0);
}

uint64_t awd::metrics::CommCenterThumperHomeCarrier::Clear(uint64_t this)
{
  v1 = *(this + 28);
  if (v1)
  {
    *(this + 8) = 0;
    if ((v1 & 2) != 0)
    {
      v2 = *(this + 16);
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

  *(this + 28) = 0;
  return this;
}

uint64_t awd::metrics::CommCenterThumperHomeCarrier::MergePartialFromCodedStream(awd::metrics::CommCenterThumperHomeCarrier *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
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
        if (TagFallback >> 3 != 4)
        {
          break;
        }

        if (v8 != 2)
        {
          goto LABEL_14;
        }

        v13 = *(this + 7);
LABEL_23:
        *(this + 7) = v13 | 2;
        if (*(this + 2) == v5)
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

      if (TagFallback >> 3 != 1 || (TagFallback & 7) != 0)
      {
        break;
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

      v13 = *(this + 7) | 1;
      *(this + 7) = v13;
      if (v12 < v9 && *v12 == 34)
      {
        *(a2 + 1) = v12 + 1;
        goto LABEL_23;
      }
    }

LABEL_14:
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

uint64_t awd::metrics::CommCenterThumperHomeCarrier::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v4 = this;
  v5 = *(this + 28);
  if (v5)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(1, *(this + 8), a2, a4);
    v5 = *(v4 + 28);
  }

  if ((v5 & 2) != 0)
  {

    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
  }

  return this;
}

uint64_t awd::metrics::CommCenterThumperHomeCarrier::ByteSize(wireless_diagnostics::google::protobuf::io::CodedOutputStream **this, unint64_t a2)
{
  if (*(this + 28))
  {
    if (*(this + 28))
    {
      v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(this[1]) + 1;
      if ((*(this + 7) & 2) == 0)
      {
        goto LABEL_16;
      }
    }

    else
    {
      v3 = 0;
      if ((*(this + 28) & 2) == 0)
      {
        goto LABEL_16;
      }
    }

    v4 = this[2];
    v5 = *(v4 + 23);
    v6 = v5;
    v7 = *(v4 + 1);
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
      v9 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v8);
      v5 = *(v4 + 23);
      v7 = *(v4 + 1);
      v6 = *(v4 + 23);
    }

    else
    {
      v9 = 1;
    }

    if (v6 < 0)
    {
      v5 = v7;
    }

    v3 = (v3 + v9 + v5 + 1);
  }

  else
  {
    v3 = 0;
  }

LABEL_16:
  *(this + 6) = v3;
  return v3;
}

void awd::metrics::CommCenterThumperHomeCarrier::CheckTypeAndMergeFrom(const std::string **this, const std::string **lpsrc)
{
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  if (lpsrc == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v8);
  }

  LOBYTE(v4) = *(lpsrc + 28);
  if (v4)
  {
    if (*(lpsrc + 28))
    {
      v5 = lpsrc[1];
      *(this + 7) |= 1u;
      this[1] = v5;
      v4 = *(lpsrc + 7);
    }

    if ((v4 & 2) != 0)
    {
      v6 = lpsrc[2];
      *(this + 7) |= 2u;
      v7 = this[2];
      if (v7 == MEMORY[0x277D82C30])
      {
        operator new();
      }

      std::string::operator=(v7, v6);
    }
  }
}

void sub_2373D3888(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::metrics::CommCenterBundleUpdateCheckInfo::MergeFrom(awd::metrics::CommCenterBundleUpdateCheckInfo *this, const awd::metrics::CommCenterBundleUpdateCheckInfo *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v9);
  }

  LOBYTE(v4) = *(a2 + 28);
  if (v4)
  {
    if (*(a2 + 28))
    {
      v6 = *(a2 + 4);
      *(this + 7) |= 1u;
      *(this + 4) = v6;
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

    v7 = *(a2 + 1);
    *(this + 7) |= 2u;
    v8 = *(this + 1);
    if (v8 == MEMORY[0x277D82C30])
    {
      operator new();
    }

    std::string::operator=(v8, v7);
    if ((*(a2 + 7) & 4) != 0)
    {
LABEL_7:
      v5 = *(a2 + 20);
      *(this + 7) |= 4u;
      *(this + 20) = v5;
    }
  }
}

void sub_2373D39D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::metrics::CommCenterBundleUpdateCheckInfo::~CommCenterBundleUpdateCheckInfo(awd::metrics::CommCenterBundleUpdateCheckInfo *this)
{
  *this = &unk_284A61008;
  awd::configs::AggregationSpec::SharedDtor(*(this + 1));

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_284A61008;
  awd::configs::AggregationSpec::SharedDtor(*(this + 1));
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  JUMPOUT(0x2383CAFA0);
}

uint64_t awd::metrics::CommCenterBundleUpdateCheckInfo::Clear(uint64_t this)
{
  v1 = *(this + 28);
  if (v1)
  {
    *(this + 16) = 0;
    if ((v1 & 2) != 0)
    {
      v2 = *(this + 8);
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

    *(this + 20) = 0;
  }

  *(this + 28) = 0;
  return this;
}

uint64_t awd::metrics::CommCenterBundleUpdateCheckInfo::MergePartialFromCodedStream(awd::metrics::CommCenterBundleUpdateCheckInfo *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
{
  v5 = MEMORY[0x277D82C30];
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
      if (TagFallback >> 3 == 4)
      {
        break;
      }

      if (v8 == 3)
      {
        if (v9 != 2)
        {
          goto LABEL_17;
        }

        v14 = *(this + 7);
LABEL_26:
        *(this + 7) = v14 | 2;
        if (*(this + 1) == v5)
        {
          operator new();
        }

        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
        if (!result)
        {
          return result;
        }

        v17 = *(a2 + 1);
        v15 = *(a2 + 2);
        if (v17 < v15 && *v17 == 32)
        {
          v16 = v17 + 1;
          *(a2 + 1) = v16;
LABEL_32:
          v21 = 0;
          if (v16 >= v15 || (v18 = *v16, (v18 & 0x80000000) != 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v21);
            if (!result)
            {
              return result;
            }

            v18 = v21;
            v19 = *(a2 + 1);
            v15 = *(a2 + 2);
          }

          else
          {
            v19 = v16 + 1;
            *(a2 + 1) = v19;
          }

          *(this + 20) = v18 != 0;
          *(this + 7) |= 4u;
          if (v19 == v15 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
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
        if (v8 != 1 || (TagFallback & 7) != 0)
        {
          goto LABEL_17;
        }

        v11 = *(a2 + 1);
        v10 = *(a2 + 2);
        if (v11 >= v10 || (v12 = *v11, v12 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 4);
          if (!result)
          {
            return result;
          }

          v13 = *(a2 + 1);
          v10 = *(a2 + 2);
        }

        else
        {
          *(this + 4) = v12;
          v13 = v11 + 1;
          *(a2 + 1) = v13;
        }

        v14 = *(this + 7) | 1;
        *(this + 7) = v14;
        if (v13 < v10 && *v13 == 26)
        {
          *(a2 + 1) = v13 + 1;
          goto LABEL_26;
        }
      }
    }

    if ((TagFallback & 7) == 0)
    {
      v16 = *(a2 + 1);
      v15 = *(a2 + 2);
      goto LABEL_32;
    }

LABEL_17:
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

uint64_t awd::metrics::CommCenterBundleUpdateCheckInfo::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
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
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
    if ((*(v5 + 28) & 4) == 0)
    {
      return this;
    }

    goto LABEL_7;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(1, *(this + 16), a2, a4);
  v6 = *(v5 + 28);
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
  v7 = *(v5 + 20);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(4, v7, a2, a4);
}

uint64_t awd::metrics::CommCenterBundleUpdateCheckInfo::ByteSize(awd::metrics::CommCenterBundleUpdateCheckInfo *this, unsigned int a2)
{
  v3 = *(this + 7);
  if (v3)
  {
    if (v3)
    {
      v6 = *(this + 4);
      if (v6 >= 0x80)
      {
        v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v6) + 1;
        v3 = *(this + 7);
        if ((v3 & 2) == 0)
        {
LABEL_19:
          result = ((v3 >> 1) & 2) + v4;
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

    v7 = *(this + 1);
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
      v3 = *(this + 7);
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

    v4 += v12 + v8 + 1;
    goto LABEL_19;
  }

  result = 0;
LABEL_20:
  *(this + 6) = result;
  return result;
}

void awd::metrics::CommCenterBundleUpdateCheckInfo::CheckTypeAndMergeFrom(awd::metrics::CommCenterBundleUpdateCheckInfo *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  awd::metrics::CommCenterBundleUpdateCheckInfo::MergeFrom(this, lpsrc);
}

void awd::metrics::CommCenterBundleUpdateCheck::~CommCenterBundleUpdateCheck(awd::metrics::CommCenterBundleUpdateCheck *this)
{
  *this = &unk_284A61080;
  v2 = *(this + 7);
  if (v2 >= 1)
  {
    for (i = 0; i < v2; ++i)
    {
      v4 = *(*(this + 2) + 8 * i);
      if (v4)
      {
        (*(*v4 + 8))(v4);
        v2 = *(this + 7);
      }
    }
  }

  v5 = *(this + 2);
  if (v5)
  {
    MEMORY[0x2383CAF80](v5, 0x80C80B8603338);
  }

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  awd::metrics::CommCenterBundleUpdateCheck::~CommCenterBundleUpdateCheck(this);

  JUMPOUT(0x2383CAFA0);
}

uint64_t awd::metrics::CommCenterBundleUpdateCheck::Clear(uint64_t this)
{
  v1 = this;
  if (*(this + 52))
  {
    *(this + 8) = 0;
    *(this + 40) = 0;
    *(this + 43) = 0;
  }

  if (*(this + 24) >= 1)
  {
    v2 = 0;
    do
    {
      v3 = *(*(v1 + 16) + 8 * v2);
      this = (*(*v3 + 32))(v3);
      ++v2;
    }

    while (v2 < *(v1 + 24));
  }

  *(v1 + 24) = 0;
  *(v1 + 52) = 0;
  return this;
}

uint64_t awd::metrics::CommCenterBundleUpdateCheck::MergePartialFromCodedStream(awd::metrics::CommCenterBundleUpdateCheck *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
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
              v15 = *(a2 + 1);
              v9 = *(a2 + 2);
              goto LABEL_61;
            }
          }

          else if (v7 == 5)
          {
            if ((TagFallback & 7) == 0)
            {
              v17 = *(a2 + 1);
              v9 = *(a2 + 2);
              goto LABEL_69;
            }
          }

          else if (v7 == 6 && (TagFallback & 7) == 0)
          {
            v10 = *(a2 + 1);
            v9 = *(a2 + 2);
            goto LABEL_77;
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

        v12 = *(a2 + 1);
        v11 = *(a2 + 2);
        if (v12 >= v11 || (v13 = *v12, v13 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 1);
          if (!result)
          {
            return result;
          }

          v14 = *(a2 + 1);
          v11 = *(a2 + 2);
        }

        else
        {
          *(this + 1) = v13;
          v14 = v12 + 1;
          *(a2 + 1) = v14;
        }

        *(this + 13) |= 1u;
        if (v14 < v11 && *v14 == 16)
        {
          v16 = v14 + 1;
          *(a2 + 1) = v16;
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

      v16 = *(a2 + 1);
      v11 = *(a2 + 2);
LABEL_35:
      if (v16 >= v11 || (v19 = *v16, v19 < 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 10);
        if (!result)
        {
          return result;
        }

        v20 = *(a2 + 1);
        v11 = *(a2 + 2);
      }

      else
      {
        *(this + 10) = v19;
        v20 = v16 + 1;
        *(a2 + 1) = v20;
      }

      *(this + 13) |= 2u;
      if (v20 < v11 && *v20 == 26)
      {
        while (2)
        {
          *(a2 + 1) = v20 + 1;
LABEL_43:
          v21 = *(this + 7);
          v22 = *(this + 6);
          if (v22 >= v21)
          {
            if (v21 == *(this + 8))
            {
              wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 16));
              v21 = *(this + 7);
            }

            *(this + 7) = v21 + 1;
            operator new();
          }

          v23 = *(this + 2);
          *(this + 6) = v22 + 1;
          v24 = *(v23 + 8 * v22);
          v39 = 0;
          v25 = *(a2 + 1);
          if (v25 >= *(a2 + 2) || *v25 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v39))
            {
              return 0;
            }
          }

          else
          {
            v39 = *v25;
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
          if (!awd::metrics::CommCenterBundleUpdateCheckInfo::MergePartialFromCodedStream(v24, a2, v28) || *(a2 + 36) != 1)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
          v29 = *(a2 + 14);
          v30 = __OFSUB__(v29, 1);
          v31 = v29 - 1;
          if (v31 < 0 == v30)
          {
            *(a2 + 14) = v31;
          }

          v20 = *(a2 + 1);
          v9 = *(a2 + 2);
          if (v20 < v9)
          {
            v32 = *v20;
            if (v32 == 26)
            {
              continue;
            }

            if (v32 == 32)
            {
              v15 = v20 + 1;
              *(a2 + 1) = v15;
LABEL_61:
              v39 = 0;
              if (v15 >= v9 || (v33 = *v15, (v33 & 0x80000000) != 0))
              {
                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v39);
                if (!result)
                {
                  return result;
                }

                v33 = v39;
                v34 = *(a2 + 1);
                v9 = *(a2 + 2);
              }

              else
              {
                v34 = v15 + 1;
                *(a2 + 1) = v34;
              }

              *(this + 44) = v33 != 0;
              *(this + 13) |= 8u;
              if (v34 < v9 && *v34 == 40)
              {
                v17 = v34 + 1;
                *(a2 + 1) = v17;
LABEL_69:
                v39 = 0;
                if (v17 >= v9 || (v35 = *v17, (v35 & 0x80000000) != 0))
                {
                  result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v39);
                  if (!result)
                  {
                    return result;
                  }

                  v35 = v39;
                  v36 = *(a2 + 1);
                  v9 = *(a2 + 2);
                }

                else
                {
                  v36 = v17 + 1;
                  *(a2 + 1) = v36;
                }

                *(this + 45) = v35 != 0;
                *(this + 13) |= 0x10u;
                if (v36 < v9 && *v36 == 48)
                {
                  v10 = v36 + 1;
                  *(a2 + 1) = v10;
LABEL_77:
                  v39 = 0;
                  if (v10 >= v9 || (v37 = *v10, (v37 & 0x80000000) != 0))
                  {
                    result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v39);
                    if (!result)
                    {
                      return result;
                    }

                    v37 = v39;
                    v38 = *(a2 + 1);
                    v9 = *(a2 + 2);
                  }

                  else
                  {
                    v38 = v10 + 1;
                    *(a2 + 1) = v38;
                  }

                  *(this + 46) = v37 != 0;
                  *(this + 13) |= 0x20u;
                  if (v38 == v9 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
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

          break;
        }
      }
    }

    if (v7 == 3 && v8 == 2)
    {
      goto LABEL_43;
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
}

uint64_t awd::metrics::CommCenterBundleUpdateCheck::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 52);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(1, *(this + 8), a2, a4);
    v6 = *(v5 + 52);
  }

  if ((v6 & 2) != 0)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(2, *(v5 + 40), a2, a4);
  }

  if (*(v5 + 24) >= 1)
  {
    v7 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(3, *(*(v5 + 16) + 8 * v7++), a2, a4);
    }

    while (v7 < *(v5 + 24));
  }

  v8 = *(v5 + 52);
  if ((v8 & 8) == 0)
  {
    if ((v8 & 0x10) == 0)
    {
      goto LABEL_10;
    }

LABEL_13:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(5, *(v5 + 45), a2, a4);
    if ((*(v5 + 52) & 0x20) == 0)
    {
      return this;
    }

    goto LABEL_14;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(4, *(v5 + 44), a2, a4);
  v8 = *(v5 + 52);
  if ((v8 & 0x10) != 0)
  {
    goto LABEL_13;
  }

LABEL_10:
  if ((v8 & 0x20) == 0)
  {
    return this;
  }

LABEL_14:
  v9 = *(v5 + 46);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(6, v9, a2, a4);
}

uint64_t awd::metrics::CommCenterBundleUpdateCheck::ByteSize(awd::metrics::CommCenterBundleUpdateCheck *this, unint64_t a2)
{
  v3 = *(this + 13);
  if (!v3)
  {
    v5 = 0;
    goto LABEL_12;
  }

  if ((v3 & 1) == 0)
  {
    v4 = 0;
    if ((v3 & 2) == 0)
    {
      goto LABEL_11;
    }

LABEL_7:
    v6 = *(this + 10);
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
    goto LABEL_11;
  }

  v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 1)) + 1;
  v3 = *(this + 13);
  if ((v3 & 2) != 0)
  {
    goto LABEL_7;
  }

LABEL_11:
  v5 = ((v3 >> 2) & 2) + v4 + ((v3 >> 3) & 2) + ((v3 >> 4) & 2);
LABEL_12:
  v8 = *(this + 6);
  v9 = (v8 + v5);
  if (v8 >= 1)
  {
    v10 = 0;
    do
    {
      v11 = awd::metrics::CommCenterBundleUpdateCheckInfo::ByteSize(*(*(this + 2) + 8 * v10), a2);
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

  *(this + 12) = v9;
  return v9;
}

void awd::metrics::CommCenterBundleUpdateCheck::CheckTypeAndMergeFrom(awd::metrics::CommCenterBundleUpdateCheck *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  if (lpsrc == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v16);
  }

  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 16));
  LODWORD(v4) = *(lpsrc + 6);
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
        wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v16);
      }

      v6 = *(*(lpsrc + 2) + 8 * v5);
      v7 = *(this + 7);
      v8 = *(this + 6);
      if (v8 >= v7)
      {
        if (v7 == *(this + 8))
        {
          wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 16));
          v7 = *(this + 7);
        }

        *(this + 7) = v7 + 1;
        operator new();
      }

      v9 = *(this + 2);
      *(this + 6) = v8 + 1;
      awd::metrics::CommCenterBundleUpdateCheckInfo::MergeFrom(*(v9 + 8 * v8), v6);
      ++v5;
      v4 = *(lpsrc + 6);
    }

    while (v5 < v4);
  }

  LOBYTE(v10) = *(lpsrc + 52);
  if (!v10)
  {
    return;
  }

  if (*(lpsrc + 52))
  {
    v12 = *(lpsrc + 1);
    *(this + 13) |= 1u;
    *(this + 1) = v12;
    v10 = *(lpsrc + 13);
    if ((v10 & 2) == 0)
    {
LABEL_17:
      if ((v10 & 8) == 0)
      {
        goto LABEL_18;
      }

LABEL_24:
      v14 = *(lpsrc + 44);
      *(this + 13) |= 8u;
      *(this + 44) = v14;
      v10 = *(lpsrc + 13);
      if ((v10 & 0x10) == 0)
      {
LABEL_19:
        if ((v10 & 0x20) == 0)
        {
          return;
        }

        goto LABEL_20;
      }

      goto LABEL_25;
    }
  }

  else if ((*(lpsrc + 52) & 2) == 0)
  {
    goto LABEL_17;
  }

  v13 = *(lpsrc + 10);
  *(this + 13) |= 2u;
  *(this + 10) = v13;
  v10 = *(lpsrc + 13);
  if ((v10 & 8) != 0)
  {
    goto LABEL_24;
  }

LABEL_18:
  if ((v10 & 0x10) == 0)
  {
    goto LABEL_19;
  }

LABEL_25:
  v15 = *(lpsrc + 45);
  *(this + 13) |= 0x10u;
  *(this + 45) = v15;
  if ((*(lpsrc + 13) & 0x20) != 0)
  {
LABEL_20:
    v11 = *(lpsrc + 46);
    *(this + 13) |= 0x20u;
    *(this + 46) = v11;
  }
}

void sub_2373D4AE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::metrics::CommCenterBundleUpdateCheckSchedule::~CommCenterBundleUpdateCheckSchedule(awd::metrics::CommCenterBundleUpdateCheckSchedule *this)
{
  *this = &unk_284A610F8;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_284A610F8;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  JUMPOUT(0x2383CAFA0);
}

uint64_t awd::metrics::CommCenterBundleUpdateCheckSchedule::Clear(uint64_t this)
{
  if (*(this + 24))
  {
    *(this + 8) = 0;
    *(this + 16) = 0;
  }

  *(this + 24) = 0;
  return this;
}

uint64_t awd::metrics::CommCenterBundleUpdateCheckSchedule::MergePartialFromCodedStream(awd::metrics::CommCenterBundleUpdateCheckSchedule *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
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
        if (v11 >= v7 || (v12 = *v11, v12 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 4);
          if (!result)
          {
            return result;
          }

          v13 = *(a2 + 1);
          v7 = *(a2 + 2);
        }

        else
        {
          *(this + 4) = v12;
          v13 = v11 + 1;
          *(a2 + 1) = v13;
        }

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

uint64_t awd::metrics::CommCenterBundleUpdateCheckSchedule::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
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

    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(2, v7, a2, a4);
  }

  return this;
}

uint64_t awd::metrics::CommCenterBundleUpdateCheckSchedule::ByteSize(wireless_diagnostics::google::protobuf::io::CodedOutputStream **this, unint64_t a2)
{
  if (*(this + 24))
  {
    if (this[3])
    {
      v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(this[1]) + 1;
      if ((this[3] & 2) == 0)
      {
        goto LABEL_11;
      }
    }

    else
    {
      v3 = 0;
      if ((this[3] & 2) == 0)
      {
        goto LABEL_11;
      }
    }

    v4 = *(this + 4);
    if (v4 >= 0x80)
    {
      v5 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v4) + 1;
    }

    else
    {
      v5 = 2;
    }

    v3 = (v5 + v3);
  }

  else
  {
    v3 = 0;
  }

LABEL_11:
  *(this + 5) = v3;
  return v3;
}

void awd::metrics::CommCenterBundleUpdateCheckSchedule::CheckTypeAndMergeFrom(awd::metrics::CommCenterBundleUpdateCheckSchedule *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  if (lpsrc == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v7);
  }

  LOBYTE(v4) = *(lpsrc + 24);
  if (v4)
  {
    if (*(lpsrc + 24))
    {
      v5 = *(lpsrc + 1);
      *(this + 6) |= 1u;
      *(this + 1) = v5;
      v4 = *(lpsrc + 6);
    }

    if ((v4 & 2) != 0)
    {
      v6 = *(lpsrc + 4);
      *(this + 6) |= 2u;
      *(this + 4) = v6;
    }
  }
}

void sub_2373D4F6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::metrics::CommCenterBundleUpdateInfo::MergeFrom(awd::metrics::CommCenterBundleUpdateInfo *this, const awd::metrics::CommCenterBundleUpdateInfo *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v13);
  }

  LOBYTE(v4) = *(a2 + 40);
  if (v4)
  {
    if (*(a2 + 40))
    {
      v5 = *(a2 + 8);
      *(this + 10) |= 1u;
      *(this + 8) = v5;
      v4 = *(a2 + 10);
    }

    v6 = MEMORY[0x277D82C30];
    if ((v4 & 2) != 0)
    {
      v7 = *(a2 + 1);
      *(this + 10) |= 2u;
      v8 = *(this + 1);
      if (v8 == v6)
      {
        operator new();
      }

      std::string::operator=(v8, v7);
      v4 = *(a2 + 10);
      if ((v4 & 4) == 0)
      {
LABEL_8:
        if ((v4 & 8) == 0)
        {
          return;
        }

        goto LABEL_16;
      }
    }

    else if ((v4 & 4) == 0)
    {
      goto LABEL_8;
    }

    v9 = *(a2 + 2);
    *(this + 10) |= 4u;
    v10 = *(this + 2);
    if (v10 == v6)
    {
      operator new();
    }

    std::string::operator=(v10, v9);
    if ((*(a2 + 10) & 8) != 0)
    {
LABEL_16:
      v11 = *(a2 + 3);
      *(this + 10) |= 8u;
      v12 = *(this + 3);
      if (v12 == v6)
      {
        operator new();
      }

      std::string::operator=(v12, v11);
    }
  }
}

void sub_2373D5138(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::metrics::CommCenterBundleUpdateInfo::~CommCenterBundleUpdateInfo(awd::metrics::CommCenterBundleUpdateInfo *this)
{
  *this = &unk_284A61170;
  awd::metrics::operator_info_3GPP::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_284A61170;
  awd::metrics::operator_info_3GPP::SharedDtor(this);
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  JUMPOUT(0x2383CAFA0);
}

uint64_t awd::metrics::CommCenterBundleUpdateInfo::Clear(uint64_t this)
{
  v1 = *(this + 40);
  if (v1)
  {
    *(this + 32) = 0;
    v2 = MEMORY[0x277D82C30];
    if ((v1 & 2) != 0)
    {
      v3 = *(this + 8);
      if (v3 != MEMORY[0x277D82C30])
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

    if ((*(this + 40) & 4) != 0)
    {
      v4 = *(this + 16);
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

    if ((*(this + 40) & 8) != 0)
    {
      v5 = *(this + 24);
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

  *(this + 40) = 0;
  return this;
}

uint64_t awd::metrics::CommCenterBundleUpdateInfo::MergePartialFromCodedStream(awd::metrics::CommCenterBundleUpdateInfo *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
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

        v8 = TagFallback >> 3;
        v9 = TagFallback & 7;
        if (TagFallback >> 3 > 2)
        {
          break;
        }

        if (v8 == 1)
        {
          if ((TagFallback & 7) != 0)
          {
            goto LABEL_21;
          }

          v12 = *(a2 + 1);
          v11 = *(a2 + 2);
          if (v12 >= v11 || (v13 = *v12, v13 < 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 8);
            if (!result)
            {
              return result;
            }

            v14 = *(a2 + 1);
            v11 = *(a2 + 2);
          }

          else
          {
            *(this + 8) = v13;
            v14 = v12 + 1;
            *(a2 + 1) = v14;
          }

          v10 = *(this + 10) | 1;
          *(this + 10) = v10;
          if (v14 < v11 && *v14 == 18)
          {
            *(a2 + 1) = v14 + 1;
            goto LABEL_29;
          }
        }

        else
        {
          if (v8 != 2 || v9 != 2)
          {
            goto LABEL_21;
          }

          v10 = *(this + 10);
LABEL_29:
          *(this + 10) = v10 | 2;
          if (*(this + 1) == v5)
          {
            operator new();
          }

          result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
          if (!result)
          {
            return result;
          }

          v15 = *(a2 + 1);
          if (v15 < *(a2 + 2) && *v15 == 26)
          {
            *(a2 + 1) = v15 + 1;
            goto LABEL_35;
          }
        }
      }

      if (v8 != 3)
      {
        break;
      }

      if (v9 != 2)
      {
        goto LABEL_21;
      }

LABEL_35:
      *(this + 10) |= 4u;
      if (*(this + 2) == v5)
      {
        operator new();
      }

      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
      if (!result)
      {
        return result;
      }

      v16 = *(a2 + 1);
      if (v16 < *(a2 + 2) && *v16 == 34)
      {
        *(a2 + 1) = v16 + 1;
LABEL_41:
        *(this + 10) |= 8u;
        if (*(this + 3) == v5)
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

    if (v8 == 4 && v9 == 2)
    {
      goto LABEL_41;
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

uint64_t awd::metrics::CommCenterBundleUpdateInfo::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v4 = this;
  v5 = *(this + 40);
  if (v5)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(1, *(this + 32), a2, a4);
    v5 = *(v4 + 40);
    if ((v5 & 2) == 0)
    {
LABEL_3:
      if ((v5 & 4) == 0)
      {
        goto LABEL_4;
      }

LABEL_8:
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
      if ((*(v4 + 40) & 8) == 0)
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

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
  v5 = *(v4 + 40);
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

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
}

uint64_t awd::metrics::CommCenterBundleUpdateInfo::ByteSize(awd::metrics::CommCenterBundleUpdateInfo *this, unsigned int a2)
{
  LOBYTE(v3) = *(this + 40);
  if (!v3)
  {
    v4 = 0;
    goto LABEL_40;
  }

  if (*(this + 40))
  {
    v5 = *(this + 8);
    if (v5 >= 0x80)
    {
      v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5) + 1;
      v3 = *(this + 10);
      if ((v3 & 2) == 0)
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
    if ((*(this + 40) & 2) == 0)
    {
      goto LABEL_19;
    }
  }

  v6 = *(this + 1);
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
    v3 = *(this + 10);
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

  v4 = (v4 + v11 + v7 + 1);
LABEL_19:
  if ((v3 & 4) == 0)
  {
    if ((v3 & 8) == 0)
    {
      goto LABEL_40;
    }

    goto LABEL_31;
  }

  v12 = *(this + 2);
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
    v3 = *(this + 10);
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

  v4 = (v4 + v17 + v13 + 1);
  if ((v3 & 8) != 0)
  {
LABEL_31:
    v18 = *(this + 3);
    v19 = *(v18 + 23);
    v20 = v19;
    v21 = *(v18 + 8);
    if ((v19 & 0x80u) == 0)
    {
      v22 = *(v18 + 23);
    }

    else
    {
      v22 = v21;
    }

    if (v22 >= 0x80)
    {
      v23 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v22);
      v19 = *(v18 + 23);
      v21 = *(v18 + 8);
      v20 = *(v18 + 23);
    }

    else
    {
      v23 = 1;
    }

    if (v20 < 0)
    {
      v19 = v21;
    }

    v4 = (v4 + v23 + v19 + 1);
  }

LABEL_40:
  *(this + 9) = v4;
  return v4;
}

void awd::metrics::CommCenterBundleUpdateInfo::CheckTypeAndMergeFrom(awd::metrics::CommCenterBundleUpdateInfo *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  awd::metrics::CommCenterBundleUpdateInfo::MergeFrom(this, lpsrc);
}

void awd::metrics::CommCenterBundleUpdateInstalled::~CommCenterBundleUpdateInstalled(awd::metrics::CommCenterBundleUpdateInstalled *this)
{
  *this = &unk_284A611E8;
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::configs::ConfigurationParameter>::TypeHandler>(this + 2);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  awd::metrics::CommCenterBundleUpdateInstalled::~CommCenterBundleUpdateInstalled(this);

  JUMPOUT(0x2383CAFA0);
}

uint64_t awd::metrics::CommCenterBundleUpdateInstalled::Clear(awd::metrics::CommCenterBundleUpdateInstalled *this)
{
  if (*(this + 48))
  {
    *(this + 1) = 0;
    *(this + 10) = 0;
  }

  result = wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Clear<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::configs::ConfigurationParameter>::TypeHandler>(this + 16);
  *(this + 12) = 0;
  return result;
}

uint64_t awd::metrics::CommCenterBundleUpdateInstalled::MergePartialFromCodedStream(awd::metrics::CommCenterBundleUpdateInstalled *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
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
        if (v7 == 4)
        {
          if ((TagFallback & 7) == 0)
          {
            v16 = *(a2 + 1);
            v9 = *(a2 + 2);
            goto LABEL_61;
          }
        }

        else if (v7 == 5)
        {
          if ((TagFallback & 7) == 0)
          {
            v17 = *(a2 + 1);
            v9 = *(a2 + 2);
            goto LABEL_69;
          }
        }

        else if (v7 == 6 && (TagFallback & 7) == 0)
        {
          v11 = *(a2 + 1);
          v9 = *(a2 + 2);
          goto LABEL_77;
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

      *(this + 12) |= 1u;
      if (v15 < v12 && *v15 == 18)
      {
        while (1)
        {
          *(a2 + 1) = v15 + 1;
LABEL_35:
          v19 = *(this + 7);
          v20 = *(this + 6);
          if (v20 >= v19)
          {
            if (v19 == *(this + 8))
            {
              wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 16));
              v19 = *(this + 7);
            }

            *(this + 7) = v19 + 1;
            operator new();
          }

          v21 = *(this + 2);
          *(this + 6) = v20 + 1;
          v22 = *(v21 + 8 * v20);
          v39 = 0;
          v23 = *(a2 + 1);
          if (v23 >= *(a2 + 2) || *v23 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v39))
            {
              return 0;
            }
          }

          else
          {
            v39 = *v23;
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
          if (!awd::metrics::CommCenterBundleUpdateInfo::MergePartialFromCodedStream(v22, a2, v26) || *(a2 + 36) != 1)
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

          v15 = *(a2 + 1);
          v9 = *(a2 + 2);
          if (v15 >= v9)
          {
            break;
          }

          v30 = *v15;
          if (v30 != 18)
          {
            if (v30 == 24)
            {
              v10 = v15 + 1;
              *(a2 + 1) = v10;
LABEL_53:
              v39 = 0;
              if (v10 >= v9 || (v31 = *v10, (v31 & 0x80000000) != 0))
              {
                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v39);
                if (!result)
                {
                  return result;
                }

                v31 = v39;
                v32 = *(a2 + 1);
                v9 = *(a2 + 2);
              }

              else
              {
                v32 = v10 + 1;
                *(a2 + 1) = v32;
              }

              *(this + 40) = v31 != 0;
              *(this + 12) |= 4u;
              if (v32 < v9 && *v32 == 32)
              {
                v16 = v32 + 1;
                *(a2 + 1) = v16;
LABEL_61:
                v39 = 0;
                if (v16 >= v9 || (v33 = *v16, (v33 & 0x80000000) != 0))
                {
                  result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v39);
                  if (!result)
                  {
                    return result;
                  }

                  v33 = v39;
                  v34 = *(a2 + 1);
                  v9 = *(a2 + 2);
                }

                else
                {
                  v34 = v16 + 1;
                  *(a2 + 1) = v34;
                }

                *(this + 41) = v33 != 0;
                *(this + 12) |= 8u;
                if (v34 < v9 && *v34 == 40)
                {
                  v17 = v34 + 1;
                  *(a2 + 1) = v17;
LABEL_69:
                  v39 = 0;
                  if (v17 >= v9 || (v35 = *v17, (v35 & 0x80000000) != 0))
                  {
                    result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v39);
                    if (!result)
                    {
                      return result;
                    }

                    v35 = v39;
                    v36 = *(a2 + 1);
                    v9 = *(a2 + 2);
                  }

                  else
                  {
                    v36 = v17 + 1;
                    *(a2 + 1) = v36;
                  }

                  *(this + 42) = v35 != 0;
                  *(this + 12) |= 0x10u;
                  if (v36 < v9 && *v36 == 48)
                  {
                    v11 = v36 + 1;
                    *(a2 + 1) = v11;
LABEL_77:
                    v39 = 0;
                    if (v11 >= v9 || (v37 = *v11, (v37 & 0x80000000) != 0))
                    {
                      result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v39);
                      if (!result)
                      {
                        return result;
                      }

                      v37 = v39;
                      v38 = *(a2 + 1);
                      v9 = *(a2 + 2);
                    }

                    else
                    {
                      v38 = v11 + 1;
                      *(a2 + 1) = v38;
                    }

                    *(this + 43) = v37 != 0;
                    *(this + 12) |= 0x20u;
                    if (v38 == v9 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
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

            goto LABEL_1;
          }
        }
      }
    }

    if (v7 == 2)
    {
      if (v8 != 2)
      {
        goto LABEL_26;
      }

      goto LABEL_35;
    }

    if (v7 == 3 && (TagFallback & 7) == 0)
    {
      v10 = *(a2 + 1);
      v9 = *(a2 + 2);
      goto LABEL_53;
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
}

uint64_t awd::metrics::CommCenterBundleUpdateInstalled::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  if (*(this + 48))
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(1, *(this + 8), a2, a4);
  }

  if (*(v5 + 24) >= 1)
  {
    v6 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(2, *(*(v5 + 16) + 8 * v6++), a2, a4);
    }

    while (v6 < *(v5 + 24));
  }

  v7 = *(v5 + 48);
  if ((v7 & 4) != 0)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(3, *(v5 + 40), a2, a4);
    v7 = *(v5 + 48);
    if ((v7 & 8) == 0)
    {
LABEL_8:
      if ((v7 & 0x10) == 0)
      {
        goto LABEL_9;
      }

LABEL_13:
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(5, *(v5 + 42), a2, a4);
      if ((*(v5 + 48) & 0x20) == 0)
      {
        return this;
      }

      goto LABEL_14;
    }
  }

  else if ((v7 & 8) == 0)
  {
    goto LABEL_8;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(4, *(v5 + 41), a2, a4);
  v7 = *(v5 + 48);
  if ((v7 & 0x10) != 0)
  {
    goto LABEL_13;
  }

LABEL_9:
  if ((v7 & 0x20) == 0)
  {
    return this;
  }

LABEL_14:
  v8 = *(v5 + 43);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(6, v8, a2, a4);
}

uint64_t awd::metrics::CommCenterBundleUpdateInstalled::ByteSize(awd::metrics::CommCenterBundleUpdateInstalled *this, unint64_t a2)
{
  v3 = *(this + 12);
  if (v3)
  {
    if (v3)
    {
      v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 1)) + 1;
      v3 = *(this + 12);
    }

    else
    {
      v4 = 0;
    }

    v6.i64[0] = 0x200000002;
    v6.i64[1] = 0x200000002;
    v5 = vaddvq_s32(vandq_s8(vshlq_u32(vdupq_n_s32(v3), xmmword_2373DF0D0), v6)) + v4;
  }

  else
  {
    v5 = 0;
  }

  v7 = *(this + 6);
  v8 = (v7 + v5);
  if (v7 >= 1)
  {
    v9 = 0;
    do
    {
      v10 = awd::metrics::CommCenterBundleUpdateInfo::ByteSize(*(*(this + 2) + 8 * v9), a2);
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

  *(this + 11) = v8;
  return v8;
}

void awd::metrics::CommCenterBundleUpdateInstalled::CheckTypeAndMergeFrom(awd::metrics::CommCenterBundleUpdateInstalled *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  if (lpsrc == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v10);
  }

  wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::CommCenterBundleUpdateInfo>::MergeFrom((this + 16), lpsrc + 16);
  LOBYTE(v4) = *(lpsrc + 48);
  if (!v4)
  {
    return;
  }

  if (*(lpsrc + 48))
  {
    v6 = *(lpsrc + 1);
    *(this + 12) |= 1u;
    *(this + 1) = v6;
    v4 = *(lpsrc + 12);
    if ((v4 & 4) == 0)
    {
LABEL_7:
      if ((v4 & 8) == 0)
      {
        goto LABEL_8;
      }

LABEL_14:
      v8 = *(lpsrc + 41);
      *(this + 12) |= 8u;
      *(this + 41) = v8;
      v4 = *(lpsrc + 12);
      if ((v4 & 0x10) == 0)
      {
LABEL_9:
        if ((v4 & 0x20) == 0)
        {
          return;
        }

        goto LABEL_10;
      }

      goto LABEL_15;
    }
  }

  else if ((*(lpsrc + 48) & 4) == 0)
  {
    goto LABEL_7;
  }

  v7 = *(lpsrc + 40);
  *(this + 12) |= 4u;
  *(this + 40) = v7;
  v4 = *(lpsrc + 12);
  if ((v4 & 8) != 0)
  {
    goto LABEL_14;
  }

LABEL_8:
  if ((v4 & 0x10) == 0)
  {
    goto LABEL_9;
  }

LABEL_15:
  v9 = *(lpsrc + 42);
  *(this + 12) |= 0x10u;
  *(this + 42) = v9;
  if ((*(lpsrc + 12) & 0x20) != 0)
  {
LABEL_10:
    v5 = *(lpsrc + 43);
    *(this + 12) |= 0x20u;
    *(this + 43) = v5;
  }
}

void sub_2373D61BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::CommCenterBundleUpdateInfo>::MergeFrom(wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase *a1, uint64_t a2)
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
        operator new();
      }

      v9 = *a1;
      *(a1 + 2) = v8 + 1;
      awd::metrics::CommCenterBundleUpdateInfo::MergeFrom(*(v9 + 8 * v8), v6);
      ++v5;
      v4 = *(a2 + 8);
    }

    while (v5 < v4);
  }
}

void sub_2373D634C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::metrics::CommCenterBundleUpdateFailed::~CommCenterBundleUpdateFailed(awd::metrics::CommCenterBundleUpdateFailed *this)
{
  *this = &unk_284A61260;
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::configs::ConfigurationParameter>::TypeHandler>(this + 2);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  awd::metrics::CommCenterBundleUpdateFailed::~CommCenterBundleUpdateFailed(this);

  JUMPOUT(0x2383CAFA0);
}

uint64_t awd::metrics::CommCenterBundleUpdateFailed::Clear(awd::metrics::CommCenterBundleUpdateFailed *this)
{
  if (*(this + 52))
  {
    *(this + 1) = 0;
    *(this + 5) = 0;
  }

  result = wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Clear<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::configs::ConfigurationParameter>::TypeHandler>(this + 16);
  *(this + 13) = 0;
  return result;
}

uint64_t awd::metrics::CommCenterBundleUpdateFailed::MergePartialFromCodedStream(awd::metrics::CommCenterBundleUpdateFailed *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
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
          if (TagFallback >> 3 <= 3)
          {
            break;
          }

          if (TagFallback >> 3 > 5)
          {
            if (v7 == 6)
            {
              if ((TagFallback & 7) == 0)
              {
                v18 = *(a2 + 1);
                v9 = *(a2 + 2);
                goto LABEL_80;
              }
            }

            else if (v7 == 7 && (TagFallback & 7) == 0)
            {
              v12 = *(a2 + 1);
              v9 = *(a2 + 2);
              goto LABEL_88;
            }

            goto LABEL_30;
          }

          if (v7 != 4)
          {
            if (v7 == 5 && (TagFallback & 7) == 0)
            {
              v10 = *(a2 + 1);
              v9 = *(a2 + 2);
              goto LABEL_72;
            }

            goto LABEL_30;
          }

          if ((TagFallback & 7) != 0)
          {
            goto LABEL_30;
          }

          v17 = *(a2 + 1);
          v9 = *(a2 + 2);
LABEL_64:
          if (v17 >= v9 || (v34 = *v17, v34 < 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 10);
            if (!result)
            {
              return result;
            }

            v35 = *(a2 + 1);
            v9 = *(a2 + 2);
          }

          else
          {
            *(this + 10) = v34;
            v35 = v17 + 1;
            *(a2 + 1) = v35;
          }

          *(this + 13) |= 8u;
          if (v35 < v9 && *v35 == 40)
          {
            v10 = v35 + 1;
            *(a2 + 1) = v10;
LABEL_72:
            v42 = 0;
            if (v10 >= v9 || (v36 = *v10, (v36 & 0x80000000) != 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v42);
              if (!result)
              {
                return result;
              }

              v36 = v42;
              v37 = *(a2 + 1);
              v9 = *(a2 + 2);
            }

            else
            {
              v37 = v10 + 1;
              *(a2 + 1) = v37;
            }

            *(this + 45) = v36 != 0;
            *(this + 13) |= 0x10u;
            if (v37 < v9 && *v37 == 48)
            {
              v18 = v37 + 1;
              *(a2 + 1) = v18;
LABEL_80:
              v42 = 0;
              if (v18 >= v9 || (v38 = *v18, (v38 & 0x80000000) != 0))
              {
                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v42);
                if (!result)
                {
                  return result;
                }

                v38 = v42;
                v39 = *(a2 + 1);
                v9 = *(a2 + 2);
              }

              else
              {
                v39 = v18 + 1;
                *(a2 + 1) = v39;
              }

              *(this + 46) = v38 != 0;
              *(this + 13) |= 0x20u;
              if (v39 < v9 && *v39 == 56)
              {
                v12 = v39 + 1;
                *(a2 + 1) = v12;
LABEL_88:
                v42 = 0;
                if (v12 >= v9 || (v40 = *v12, (v40 & 0x80000000) != 0))
                {
                  result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v42);
                  if (!result)
                  {
                    return result;
                  }

                  v40 = v42;
                  v41 = *(a2 + 1);
                  v9 = *(a2 + 2);
                }

                else
                {
                  v41 = v12 + 1;
                  *(a2 + 1) = v41;
                }

                *(this + 47) = v40 != 0;
                *(this + 13) |= 0x40u;
                if (v41 == v9 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
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

        if (v7 != 1)
        {
          break;
        }

        if ((TagFallback & 7) != 0)
        {
          goto LABEL_30;
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

        *(this + 13) |= 1u;
        if (v16 < v13 && *v16 == 18)
        {
          while (1)
          {
            *(a2 + 1) = v16 + 1;
LABEL_38:
            v20 = *(this + 7);
            v21 = *(this + 6);
            if (v21 >= v20)
            {
              if (v20 == *(this + 8))
              {
                wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 16));
                v20 = *(this + 7);
              }

              *(this + 7) = v20 + 1;
              operator new();
            }

            v22 = *(this + 2);
            *(this + 6) = v21 + 1;
            v23 = *(v22 + 8 * v21);
            v42 = 0;
            v24 = *(a2 + 1);
            if (v24 >= *(a2 + 2) || *v24 < 0)
            {
              if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v42))
              {
                return 0;
              }
            }

            else
            {
              v42 = *v24;
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
            if (!awd::metrics::CommCenterBundleUpdateInfo::MergePartialFromCodedStream(v23, a2, v27) || *(a2 + 36) != 1)
            {
              return 0;
            }

            wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
            v28 = *(a2 + 14);
            v29 = __OFSUB__(v28, 1);
            v30 = v28 - 1;
            if (v30 < 0 == v29)
            {
              *(a2 + 14) = v30;
            }

            v16 = *(a2 + 1);
            v9 = *(a2 + 2);
            if (v16 >= v9)
            {
              break;
            }

            v31 = *v16;
            if (v31 != 18)
            {
              if (v31 != 24)
              {
                goto LABEL_1;
              }

              v11 = v16 + 1;
              *(a2 + 1) = v11;
              goto LABEL_56;
            }
          }
        }
      }

      if (v7 == 2)
      {
        if (v8 != 2)
        {
          break;
        }

        goto LABEL_38;
      }

      if (v7 != 3 || (TagFallback & 7) != 0)
      {
        break;
      }

      v11 = *(a2 + 1);
      v9 = *(a2 + 2);
LABEL_56:
      v42 = 0;
      if (v11 >= v9 || (v32 = *v11, (v32 & 0x80000000) != 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v42);
        if (!result)
        {
          return result;
        }

        v32 = v42;
        v33 = *(a2 + 1);
        v9 = *(a2 + 2);
      }

      else
      {
        v33 = v11 + 1;
        *(a2 + 1) = v33;
      }

      *(this + 44) = v32 != 0;
      *(this + 13) |= 4u;
      if (v33 < v9 && *v33 == 32)
      {
        v17 = v33 + 1;
        *(a2 + 1) = v17;
        goto LABEL_64;
      }
    }

LABEL_30:
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

uint64_t awd::metrics::CommCenterBundleUpdateFailed::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  if (*(this + 52))
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(1, *(this + 8), a2, a4);
  }

  if (*(v5 + 24) >= 1)
  {
    v6 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(2, *(*(v5 + 16) + 8 * v6++), a2, a4);
    }

    while (v6 < *(v5 + 24));
  }

  v7 = *(v5 + 52);
  if ((v7 & 4) != 0)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(3, *(v5 + 44), a2, a4);
    v7 = *(v5 + 52);
    if ((v7 & 8) == 0)
    {
LABEL_8:
      if ((v7 & 0x10) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_14;
    }
  }

  else if ((v7 & 8) == 0)
  {
    goto LABEL_8;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(4, *(v5 + 40), a2, a4);
  v7 = *(v5 + 52);
  if ((v7 & 0x10) == 0)
  {
LABEL_9:
    if ((v7 & 0x20) == 0)
    {
      goto LABEL_10;
    }

LABEL_15:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(6, *(v5 + 46), a2, a4);
    if ((*(v5 + 52) & 0x40) == 0)
    {
      return this;
    }

    goto LABEL_16;
  }

LABEL_14:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(5, *(v5 + 45), a2, a4);
  v7 = *(v5 + 52);
  if ((v7 & 0x20) != 0)
  {
    goto LABEL_15;
  }

LABEL_10:
  if ((v7 & 0x40) == 0)
  {
    return this;
  }

LABEL_16:
  v8 = *(v5 + 47);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(7, v8, a2, a4);
}

uint64_t awd::metrics::CommCenterBundleUpdateFailed::ByteSize(awd::metrics::CommCenterBundleUpdateFailed *this, unint64_t a2)
{
  v3 = *(this + 13);
  if (v3)
  {
    if (v3)
    {
      v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 1)) + 1;
      v3 = *(this + 13);
    }

    else
    {
      v4 = 0;
    }

    v6 = ((v3 >> 1) & 2) + v4;
    if ((v3 & 8) != 0)
    {
      v7 = *(this + 10);
      if (v7 >= 0x80)
      {
        v8 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v7) + 1;
        v3 = *(this + 13);
      }

      else
      {
        v8 = 2;
      }

      v6 += v8;
    }

    v5 = ((v3 >> 3) & 2) + ((v3 >> 4) & 2) + v6 + ((v3 >> 5) & 2);
  }

  else
  {
    v5 = 0;
  }

  v9 = *(this + 6);
  v10 = (v9 + v5);
  if (v9 >= 1)
  {
    v11 = 0;
    do
    {
      v12 = awd::metrics::CommCenterBundleUpdateInfo::ByteSize(*(*(this + 2) + 8 * v11), a2);
      v13 = v12;
      if (v12 >= 0x80)
      {
        v14 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v12);
      }

      else
      {
        v14 = 1;
      }

      v10 = (v13 + v10 + v14);
      ++v11;
    }

    while (v11 < *(this + 6));
  }

  *(this + 12) = v10;
  return v10;
}

void awd::metrics::CommCenterBundleUpdateFailed::CheckTypeAndMergeFrom(awd::metrics::CommCenterBundleUpdateFailed *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  if (lpsrc == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v11);
  }

  wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::CommCenterBundleUpdateInfo>::MergeFrom((this + 16), lpsrc + 16);
  LOBYTE(v4) = *(lpsrc + 52);
  if (!v4)
  {
    return;
  }

  if (*(lpsrc + 52))
  {
    v6 = *(lpsrc + 1);
    *(this + 13) |= 1u;
    *(this + 1) = v6;
    v4 = *(lpsrc + 13);
    if ((v4 & 4) == 0)
    {
LABEL_7:
      if ((v4 & 8) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_15;
    }
  }

  else if ((*(lpsrc + 52) & 4) == 0)
  {
    goto LABEL_7;
  }

  v7 = *(lpsrc + 44);
  *(this + 13) |= 4u;
  *(this + 44) = v7;
  v4 = *(lpsrc + 13);
  if ((v4 & 8) == 0)
  {
LABEL_8:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_9;
    }

LABEL_16:
    v9 = *(lpsrc + 45);
    *(this + 13) |= 0x10u;
    *(this + 45) = v9;
    v4 = *(lpsrc + 13);
    if ((v4 & 0x20) == 0)
    {
LABEL_10:
      if ((v4 & 0x40) == 0)
      {
        return;
      }

      goto LABEL_11;
    }

    goto LABEL_17;
  }

LABEL_15:
  v8 = *(lpsrc + 10);
  *(this + 13) |= 8u;
  *(this + 10) = v8;
  v4 = *(lpsrc + 13);
  if ((v4 & 0x10) != 0)
  {
    goto LABEL_16;
  }

LABEL_9:
  if ((v4 & 0x20) == 0)
  {
    goto LABEL_10;
  }

LABEL_17:
  v10 = *(lpsrc + 46);
  *(this + 13) |= 0x20u;
  *(this + 46) = v10;
  if ((*(lpsrc + 13) & 0x40) != 0)
  {
LABEL_11:
    v5 = *(lpsrc + 47);
    *(this + 13) |= 0x40u;
    *(this + 47) = v5;
  }
}

void sub_2373D6D8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::metrics::CommCenterBundleUpdateDeclined::~CommCenterBundleUpdateDeclined(awd::metrics::CommCenterBundleUpdateDeclined *this)
{
  *this = &unk_284A612D8;
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::configs::ConfigurationParameter>::TypeHandler>(this + 2);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  awd::metrics::CommCenterBundleUpdateDeclined::~CommCenterBundleUpdateDeclined(this);

  JUMPOUT(0x2383CAFA0);
}

uint64_t awd::metrics::CommCenterBundleUpdateDeclined::Clear(awd::metrics::CommCenterBundleUpdateDeclined *this)
{
  if (*(this + 48))
  {
    *(this + 1) = 0;
    *(this + 20) = 0;
    *(this + 42) = 0;
  }

  result = wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Clear<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::configs::ConfigurationParameter>::TypeHandler>(this + 16);
  *(this + 12) = 0;
  return result;
}

uint64_t awd::metrics::CommCenterBundleUpdateDeclined::MergePartialFromCodedStream(awd::metrics::CommCenterBundleUpdateDeclined *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
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

            goto LABEL_32;
          }

          if ((TagFallback & 7) != 0)
          {
            goto LABEL_21;
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

          *(this + 12) |= 1u;
          if (v16 < v13 && *v16 == 18)
          {
            while (1)
            {
              *(a2 + 1) = v16 + 1;
LABEL_32:
              v18 = *(this + 7);
              v19 = *(this + 6);
              if (v19 >= v18)
              {
                if (v18 == *(this + 8))
                {
                  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 16));
                  v18 = *(this + 7);
                }

                *(this + 7) = v18 + 1;
                operator new();
              }

              v20 = *(this + 2);
              *(this + 6) = v19 + 1;
              v21 = *(v20 + 8 * v19);
              v36 = 0;
              v22 = *(a2 + 1);
              if (v22 >= *(a2 + 2) || *v22 < 0)
              {
                if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v36))
                {
                  return 0;
                }
              }

              else
              {
                v36 = *v22;
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
              if (!awd::metrics::CommCenterBundleUpdateInfo::MergePartialFromCodedStream(v21, a2, v25) || *(a2 + 36) != 1)
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

              v16 = *(a2 + 1);
              v9 = *(a2 + 2);
              if (v16 >= v9)
              {
                break;
              }

              v29 = *v16;
              if (v29 != 18)
              {
                if (v29 != 24)
                {
                  goto LABEL_1;
                }

                v11 = v16 + 1;
                *(a2 + 1) = v11;
                goto LABEL_50;
              }
            }
          }
        }

        if (v7 != 3)
        {
          break;
        }

        if ((TagFallback & 7) != 0)
        {
          goto LABEL_21;
        }

        v11 = *(a2 + 1);
        v9 = *(a2 + 2);
LABEL_50:
        v36 = 0;
        if (v11 >= v9 || (v30 = *v11, (v30 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v36);
          if (!result)
          {
            return result;
          }

          v30 = v36;
          v31 = *(a2 + 1);
          v9 = *(a2 + 2);
        }

        else
        {
          v31 = v11 + 1;
          *(a2 + 1) = v31;
        }

        *(this + 40) = v30 != 0;
        *(this + 12) |= 4u;
        if (v31 < v9 && *v31 == 32)
        {
          v12 = v31 + 1;
          *(a2 + 1) = v12;
          goto LABEL_58;
        }
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
      v9 = *(a2 + 2);
LABEL_58:
      v36 = 0;
      if (v12 >= v9 || (v32 = *v12, (v32 & 0x80000000) != 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v36);
        if (!result)
        {
          return result;
        }

        v32 = v36;
        v33 = *(a2 + 1);
        v9 = *(a2 + 2);
      }

      else
      {
        v33 = v12 + 1;
        *(a2 + 1) = v33;
      }

      *(this + 41) = v32 != 0;
      *(this + 12) |= 8u;
      if (v33 < v9 && *v33 == 40)
      {
        v10 = v33 + 1;
        *(a2 + 1) = v10;
LABEL_66:
        v36 = 0;
        if (v10 >= v9 || (v34 = *v10, (v34 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v36);
          if (!result)
          {
            return result;
          }

          v34 = v36;
          v35 = *(a2 + 1);
          v9 = *(a2 + 2);
        }

        else
        {
          v35 = v10 + 1;
          *(a2 + 1) = v35;
        }

        *(this + 42) = v34 != 0;
        *(this + 12) |= 0x10u;
        if (v35 == v9 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
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
      goto LABEL_66;
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

uint64_t awd::metrics::CommCenterBundleUpdateDeclined::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  if (*(this + 48))
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(1, *(this + 8), a2, a4);
  }

  if (*(v5 + 24) >= 1)
  {
    v6 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(2, *(*(v5 + 16) + 8 * v6++), a2, a4);
    }

    while (v6 < *(v5 + 24));
  }

  v7 = *(v5 + 48);
  if ((v7 & 4) == 0)
  {
    if ((v7 & 8) == 0)
    {
      goto LABEL_8;
    }

LABEL_11:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(4, *(v5 + 41), a2, a4);
    if ((*(v5 + 48) & 0x10) == 0)
    {
      return this;
    }

    goto LABEL_12;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(3, *(v5 + 40), a2, a4);
  v7 = *(v5 + 48);
  if ((v7 & 8) != 0)
  {
    goto LABEL_11;
  }

LABEL_8:
  if ((v7 & 0x10) == 0)
  {
    return this;
  }

LABEL_12:
  v8 = *(v5 + 42);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(5, v8, a2, a4);
}

uint64_t awd::metrics::CommCenterBundleUpdateDeclined::ByteSize(awd::metrics::CommCenterBundleUpdateDeclined *this, unint64_t a2)
{
  v3 = *(this + 12);
  if (v3)
  {
    if (v3)
    {
      v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 1)) + 1;
      v3 = *(this + 12);
    }

    else
    {
      v4 = 0;
    }

    v5 = ((v3 >> 1) & 2) + v4 + ((v3 >> 2) & 2) + ((v3 >> 3) & 2);
  }

  else
  {
    v5 = 0;
  }

  v6 = *(this + 6);
  v7 = (v6 + v5);
  if (v6 >= 1)
  {
    v8 = 0;
    do
    {
      v9 = awd::metrics::CommCenterBundleUpdateInfo::ByteSize(*(*(this + 2) + 8 * v8), a2);
      v10 = v9;
      if (v9 >= 0x80)
      {
        v11 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v9);
      }

      else
      {
        v11 = 1;
      }

      v7 = (v10 + v7 + v11);
      ++v8;
    }

    while (v8 < *(this + 6));
  }

  *(this + 11) = v7;
  return v7;
}

void awd::metrics::CommCenterBundleUpdateDeclined::CheckTypeAndMergeFrom(awd::metrics::CommCenterBundleUpdateDeclined *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  if (lpsrc == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v9);
  }

  wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::CommCenterBundleUpdateInfo>::MergeFrom((this + 16), lpsrc + 16);
  LOBYTE(v4) = *(lpsrc + 48);
  if (!v4)
  {
    return;
  }

  if ((*(lpsrc + 48) & 1) == 0)
  {
    if ((*(lpsrc + 48) & 4) == 0)
    {
      goto LABEL_7;
    }

LABEL_12:
    v7 = *(lpsrc + 40);
    *(this + 12) |= 4u;
    *(this + 40) = v7;
    v4 = *(lpsrc + 12);
    if ((v4 & 8) == 0)
    {
LABEL_8:
      if ((v4 & 0x10) == 0)
      {
        return;
      }

      goto LABEL_9;
    }

    goto LABEL_13;
  }

  v6 = *(lpsrc + 1);
  *(this + 12) |= 1u;
  *(this + 1) = v6;
  v4 = *(lpsrc + 12);
  if ((v4 & 4) != 0)
  {
    goto LABEL_12;
  }

LABEL_7:
  if ((v4 & 8) == 0)
  {
    goto LABEL_8;
  }

LABEL_13:
  v8 = *(lpsrc + 41);
  *(this + 12) |= 8u;
  *(this + 41) = v8;
  if ((*(lpsrc + 12) & 0x10) != 0)
  {
LABEL_9:
    v5 = *(lpsrc + 42);
    *(this + 12) |= 0x10u;
    *(this + 42) = v5;
  }
}

void sub_2373D7638(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::metrics::CommCenterBasebandFilePush::~CommCenterBasebandFilePush(awd::metrics::CommCenterBasebandFilePush *this)
{
  *this = &unk_284A61350;
  v2 = *(this + 8);
  if (v2)
  {
    MEMORY[0x2383CAF80](v2, 0x1000C8052888210);
  }

  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<std::string>::TypeHandler>(this + 10);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::configs::ConfigurationParameter>::TypeHandler>(this + 2);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  awd::metrics::CommCenterBasebandFilePush::~CommCenterBasebandFilePush(this);

  JUMPOUT(0x2383CAFA0);
}

uint64_t awd::metrics::CommCenterBasebandFilePush::Clear(awd::metrics::CommCenterBasebandFilePush *this)
{
  if (*(this + 88))
  {
    *(this + 1) = 0;
    *(this + 20) = 0;
  }

  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Clear<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::configs::ConfigurationParameter>::TypeHandler>(this + 16);
  result = wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Clear<wireless_diagnostics::google::protobuf::RepeatedPtrField<std::string>::TypeHandler>(this + 40);
  *(this + 18) = 0;
  *(this + 22) = 0;
  return result;
}

uint64_t awd::metrics::CommCenterBasebandFilePush::MergePartialFromCodedStream(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
{
  v4 = this;
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
        if (v6 >> 3 > 2)
        {
          break;
        }

        if (v7 != 1)
        {
          if (v7 != 2 || v8 != 2)
          {
            goto LABEL_24;
          }

          goto LABEL_36;
        }

        if ((v6 & 7) != 0)
        {
          goto LABEL_24;
        }

        v12 = *(a2 + 1);
        v11 = *(a2 + 2);
        if (v12 >= v11 || (v13 = *v12, v13 < 0))
        {
          this = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, (v4 + 8));
          if (!this)
          {
            return this;
          }

          v14 = *(a2 + 1);
          v11 = *(a2 + 2);
        }

        else
        {
          *(v4 + 8) = v13;
          v14 = v12 + 1;
          *(a2 + 1) = v14;
        }

        *(v4 + 88) |= 1u;
        if (v14 < v11 && *v14 == 18)
        {
          while (1)
          {
            *(a2 + 1) = v14 + 1;
LABEL_36:
            v16 = *(v4 + 28);
            v17 = *(v4 + 24);
            if (v17 >= v16)
            {
              if (v16 == *(v4 + 32))
              {
                wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((v4 + 16));
                v16 = *(v4 + 28);
              }

              *(v4 + 28) = v16 + 1;
              wireless_diagnostics::google::protobuf::internal::GenericTypeHandler<awd::metrics::CommCenterBundleDetails>::New();
            }

            v18 = *(v4 + 16);
            *(v4 + 24) = v17 + 1;
            v19 = *(v18 + 8 * v17);
            v40 = 0;
            v20 = *(a2 + 1);
            if (v20 >= *(a2 + 2) || *v20 < 0)
            {
              if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v40))
              {
                return 0;
              }
            }

            else
            {
              v40 = *v20;
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
            if (!awd::metrics::CommCenterBundleDetails::MergePartialFromCodedStream(v19, a2, v23) || *(a2 + 36) != 1)
            {
              return 0;
            }

            this = wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
            v24 = *(a2 + 14);
            v25 = __OFSUB__(v24, 1);
            v26 = v24 - 1;
            if (v26 < 0 == v25)
            {
              *(a2 + 14) = v26;
            }

            v14 = *(a2 + 1);
            if (v14 >= *(a2 + 2))
            {
              break;
            }

            v27 = *v14;
            if (v27 != 18)
            {
              if (v27 == 26)
              {
                while (1)
                {
                  *(a2 + 1) = v14 + 1;
LABEL_54:
                  v28 = *(v4 + 52);
                  v29 = *(v4 + 48);
                  if (v29 >= v28)
                  {
                    if (v28 == *(v4 + 56))
                    {
                      this = wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((v4 + 40));
                      v28 = *(v4 + 52);
                    }

                    *(v4 + 52) = v28 + 1;
                    v30 = wireless_diagnostics::google::protobuf::internal::StringTypeHandlerBase::New(this);
                    v31 = *(v4 + 40);
                    v32 = *(v4 + 48);
                    *(v4 + 48) = v32 + 1;
                    *(v31 + 8 * v32) = v30;
                  }

                  else
                  {
                    *(v4 + 48) = v29 + 1;
                  }

                  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
                  if (!this)
                  {
                    return this;
                  }

                  v14 = *(a2 + 1);
                  v9 = *(a2 + 2);
                  if (v14 >= v9)
                  {
                    break;
                  }

                  v33 = *v14;
                  if (v33 != 26)
                  {
                    while (v33 == 32)
                    {
                      v15 = v14 + 1;
                      *(a2 + 1) = v15;
LABEL_64:
                      v39 = 0;
                      if (v15 >= v9 || (v34 = *v15, (v34 & 0x80000000) != 0))
                      {
                        this = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v39);
                        if (!this)
                        {
                          return this;
                        }

                        v34 = v39;
                      }

                      else
                      {
                        *(a2 + 1) = v15 + 1;
                      }

                      if (v34 <= 0xC)
                      {
                        v35 = *(v4 + 72);
                        if (v35 == *(v4 + 76))
                        {
                          this = wireless_diagnostics::google::protobuf::RepeatedField<int>::Reserve((v4 + 64), v35 + 1);
                          v35 = *(v4 + 72);
                        }

                        v36 = *(v4 + 64);
                        *(v4 + 72) = v35 + 1;
                        *(v36 + 4 * v35) = v34;
                      }

LABEL_73:
                      v14 = *(a2 + 1);
                      v9 = *(a2 + 2);
                      if (v14 >= v9)
                      {
                        break;
                      }

                      v33 = *v14;
                      if (v33 == 40)
                      {
                        v10 = v14 + 1;
                        *(a2 + 1) = v10;
                        goto LABEL_76;
                      }
                    }

                    goto LABEL_2;
                  }
                }
              }

              goto LABEL_2;
            }
          }
        }
      }

      if (v7 == 3)
      {
        if (v8 != 2)
        {
          goto LABEL_24;
        }

        goto LABEL_54;
      }

      if (v7 == 4)
      {
        break;
      }

      if (v7 != 5 || (v6 & 7) != 0)
      {
        goto LABEL_24;
      }

      v10 = *(a2 + 1);
      v9 = *(a2 + 2);
LABEL_76:
      v38 = 0;
      if (v10 >= v9 || (v37 = *v10, (v37 & 0x80000000) != 0))
      {
        this = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v38);
        if (!this)
        {
          return this;
        }

        v37 = v38;
      }

      else
      {
        *(a2 + 1) = v10 + 1;
      }

      if (v37 <= 2)
      {
        *(v4 + 88) |= 0x10u;
        *(v4 + 80) = v37;
      }

      if (*(a2 + 1) == *(a2 + 2) && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
      {
        *(a2 + 8) = 0;
        this = 1;
        *(a2 + 36) = 1;
        return this;
      }
    }

    if ((v6 & 7) == 0)
    {
      v15 = *(a2 + 1);
      v9 = *(a2 + 2);
      goto LABEL_64;
    }

    if (v8 == 2)
    {
      break;
    }

LABEL_24:
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

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadPackedEnumNoInline();
  if (this)
  {
    goto LABEL_73;
  }

  return this;
}

uint64_t awd::metrics::CommCenterBasebandFilePush::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  if (*(this + 88))
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(1, *(this + 8), a2, a4);
  }

  if (*(v5 + 24) >= 1)
  {
    v6 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(2, *(*(v5 + 16) + 8 * v6++), a2, a4);
    }

    while (v6 < *(v5 + 24));
  }

  if (*(v5 + 48) >= 1)
  {
    v7 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
      ++v7;
    }

    while (v7 < *(v5 + 48));
  }

  if (*(v5 + 72) >= 1)
  {
    v8 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(4, *(*(v5 + 64) + 4 * v8++), a2, a4);
    }

    while (v8 < *(v5 + 72));
  }

  if ((*(v5 + 88) & 0x10) != 0)
  {
    v9 = *(v5 + 80);

    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(5, v9, a2, a4);
  }

  return this;
}

uint64_t awd::metrics::CommCenterBasebandFilePush::ByteSize(awd::metrics::CommCenterBasebandFilePush *this, unint64_t a2)
{
  if (!*(this + 88))
  {
    v3 = 0;
    goto LABEL_13;
  }

  if (*(this + 88))
  {
    v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 1)) + 1;
    if ((*(this + 22) & 0x10) == 0)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v3 = 0;
    if ((*(this + 88) & 0x10) == 0)
    {
      goto LABEL_13;
    }
  }

  v4 = *(this + 20);
  if ((v4 & 0x80000000) != 0)
  {
    v5 = 11;
  }

  else if (v4 >= 0x80)
  {
    v5 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v4) + 1;
  }

  else
  {
    v5 = 2;
  }

  v3 += v5;
LABEL_13:
  v6 = *(this + 6);
  v7 = v6 + v3;
  if (v6 >= 1)
  {
    v8 = 0;
    do
    {
      v9 = awd::metrics::CommCenterBundleDetails::ByteSize(*(*(this + 2) + 8 * v8), a2);
      v10 = v9;
      if (v9 >= 0x80)
      {
        v11 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v9);
      }

      else
      {
        v11 = 1;
      }

      v7 += v10 + v11;
      ++v8;
    }

    while (v8 < *(this + 6));
  }

  v12 = *(this + 12);
  v13 = v12 + v7;
  if (v12 >= 1)
  {
    for (i = 0; i < v12; ++i)
    {
      v15 = *(*(this + 5) + 8 * i);
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
        v12 = *(this + 12);
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

      v13 += v20 + v16;
    }
  }

  v21 = *(this + 18);
  if (v21 < 1)
  {
    v23 = 0;
  }

  else
  {
    v22 = 0;
    v23 = 0;
    do
    {
      v24 = *(*(this + 8) + 4 * v22);
      if ((v24 & 0x80000000) != 0)
      {
        v25 = 10;
      }

      else if (v24 >= 0x80)
      {
        v25 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v24);
        v21 = *(this + 18);
      }

      else
      {
        v25 = 1;
      }

      v23 += v25;
      ++v22;
    }

    while (v22 < v21);
  }

  result = (v23 + v13 + v21);
  *(this + 21) = result;
  return result;
}

void *awd::metrics::CommCenterBasebandFilePush::CheckTypeAndMergeFrom(const void **this, const void **lpsrc)
{
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  if (lpsrc == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v9);
  }

  wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::CommCenterBundleDetails>::MergeFrom((this + 2), (lpsrc + 2));
  result = wireless_diagnostics::google::protobuf::RepeatedPtrField<std::string>::MergeFrom((this + 5), (lpsrc + 5));
  v5 = *(lpsrc + 18);
  if (v5)
  {
    wireless_diagnostics::google::protobuf::RepeatedField<int>::Reserve(this + 16, *(this + 18) + v5);
    result = memcpy(this[8] + 4 * *(this + 18), lpsrc[8], 4 * *(lpsrc + 18));
    *(this + 18) += *(lpsrc + 18);
  }

  LOBYTE(v6) = *(lpsrc + 88);
  if (v6)
  {
    if (lpsrc[11])
    {
      v7 = lpsrc[1];
      *(this + 22) |= 1u;
      this[1] = v7;
      v6 = *(lpsrc + 22);
    }

    if ((v6 & 0x10) != 0)
    {
      v8 = *(lpsrc + 20);
      if (v8 >= 3)
      {
        __assert_rtn("set_push_reason", "CCMetricsCarrierBundle.pb.h", 3618, "::awd::metrics::CommCenterFilePushReason_IsValid(value)");
      }

      *(this + 22) |= 0x10u;
      *(this + 20) = v8;
    }
  }

  return result;
}

void sub_2373D8080(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::metrics::CommCenterBundleOverlayFileWriteFailure::~CommCenterBundleOverlayFileWriteFailure(awd::metrics::CommCenterBundleOverlayFileWriteFailure *this)
{
  *this = &unk_284A613C8;
  awd::metrics::CommCenterNrDisableStatus::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_284A613C8;
  awd::metrics::CommCenterNrDisableStatus::SharedDtor(this);
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  JUMPOUT(0x2383CAFA0);
}

uint64_t awd::metrics::CommCenterBundleOverlayFileWriteFailure::Clear(uint64_t this)
{
  v1 = *(this + 40);
  if (v1)
  {
    *(this + 8) = 0;
    v2 = MEMORY[0x277D82C30];
    if ((v1 & 2) != 0)
    {
      v3 = *(this + 16);
      if (v3 != MEMORY[0x277D82C30])
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

    if ((*(this + 40) & 4) != 0)
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
  }

  *(this + 40) = 0;
  return this;
}

uint64_t awd::metrics::CommCenterBundleOverlayFileWriteFailure::MergePartialFromCodedStream(awd::metrics::CommCenterBundleOverlayFileWriteFailure *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
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

        v8 = TagFallback >> 3;
        v9 = TagFallback & 7;
        if (TagFallback >> 3 > 2)
        {
          break;
        }

        if (v8 == 1)
        {
          if ((TagFallback & 7) != 0)
          {
            goto LABEL_21;
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

          v10 = *(this + 10) | 1;
          *(this + 10) = v10;
          if (v16 < v13 && *v16 == 18)
          {
            *(a2 + 1) = v16 + 1;
            goto LABEL_29;
          }
        }

        else
        {
          if (v8 != 2 || v9 != 2)
          {
            goto LABEL_21;
          }

          v10 = *(this + 10);
LABEL_29:
          *(this + 10) = v10 | 2;
          if (*(this + 2) == v5)
          {
            operator new();
          }

          result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
          if (!result)
          {
            return result;
          }

          v17 = *(a2 + 1);
          if (v17 < *(a2 + 2) && *v17 == 26)
          {
            *(a2 + 1) = v17 + 1;
            goto LABEL_35;
          }
        }
      }

      if (v8 != 3)
      {
        break;
      }

      if (v9 != 2)
      {
        goto LABEL_21;
      }

LABEL_35:
      *(this + 10) |= 4u;
      if (*(this + 3) == v5)
      {
        operator new();
      }

      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
      if (!result)
      {
        return result;
      }

      v18 = *(a2 + 1);
      v11 = *(a2 + 2);
      if (v18 < v11 && *v18 == 32)
      {
        v12 = v18 + 1;
        *(a2 + 1) = v12;
LABEL_41:
        if (v12 >= v11 || (v19 = *v12, v19 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 8);
          if (!result)
          {
            return result;
          }

          v20 = *(a2 + 1);
          v11 = *(a2 + 2);
        }

        else
        {
          *(this + 8) = v19;
          v20 = v12 + 1;
          *(a2 + 1) = v20;
        }

        *(this + 10) |= 8u;
        if (v20 == v11 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
        {
          *(a2 + 8) = 0;
          result = 1;
          *(a2 + 36) = 1;
          return result;
        }
      }
    }

    if (v8 == 4 && (TagFallback & 7) == 0)
    {
      v12 = *(a2 + 1);
      v11 = *(a2 + 2);
      goto LABEL_41;
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

uint64_t awd::metrics::CommCenterBundleOverlayFileWriteFailure::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
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
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
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

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
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
  v7 = *(v5 + 32);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(4, v7, a2, a4);
}

uint64_t awd::metrics::CommCenterBundleOverlayFileWriteFailure::ByteSize(awd::metrics::CommCenterBundleOverlayFileWriteFailure *this, unint64_t a2)
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
      goto LABEL_16;
    }
  }

  else
  {
    v4 = 0;
    if ((*(this + 40) & 2) == 0)
    {
      goto LABEL_16;
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
    v3 = *(this + 10);
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
LABEL_16:
  if ((v3 & 4) == 0)
  {
    if ((v3 & 8) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_28;
  }

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
    v3 = *(this + 10);
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
  if ((v3 & 8) != 0)
  {
LABEL_28:
    v17 = *(this + 8);
    if (v17 >= 0x80)
    {
      v18 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v17) + 1;
    }

    else
    {
      v18 = 2;
    }

    v4 = (v18 + v4);
  }

LABEL_32:
  *(this + 9) = v4;
  return v4;
}

void awd::metrics::CommCenterBundleOverlayFileWriteFailure::CheckTypeAndMergeFrom(const std::string **this, const std::string **lpsrc)
{
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  if (lpsrc == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v12);
  }

  LOBYTE(v4) = *(lpsrc + 40);
  if (v4)
  {
    if (lpsrc[5])
    {
      v5 = lpsrc[1];
      *(this + 10) |= 1u;
      this[1] = v5;
      v4 = *(lpsrc + 10);
    }

    v6 = MEMORY[0x277D82C30];
    if ((v4 & 2) != 0)
    {
      v8 = lpsrc[2];
      *(this + 10) |= 2u;
      v9 = this[2];
      if (v9 == v6)
      {
        operator new();
      }

      std::string::operator=(v9, v8);
      v4 = *(lpsrc + 10);
      if ((v4 & 4) == 0)
      {
LABEL_9:
        if ((v4 & 8) == 0)
        {
          return;
        }

        goto LABEL_10;
      }
    }

    else if ((v4 & 4) == 0)
    {
      goto LABEL_9;
    }

    v10 = lpsrc[3];
    *(this + 10) |= 4u;
    v11 = this[3];
    if (v11 == v6)
    {
      operator new();
    }

    std::string::operator=(v11, v10);
    if ((lpsrc[5] & 8) != 0)
    {
LABEL_10:
      v7 = *(lpsrc + 8);
      *(this + 10) |= 8u;
      *(this + 8) = v7;
    }
  }
}

void sub_2373D8888(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void _GLOBAL__sub_I_CCMetricsCarrierBundle_pb_cc(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  if ((_MergedGlobals_14 & 1) == 0)
  {
    _MergedGlobals_14 = 1;
    wireless_diagnostics::google::protobuf::internal::VerifyVersion(0x1E9808, 2005000, "/Library/Caches/com.apple.xbs/Sources/CoreTelephony/CommCenter/Source/AWDMetrics/cpp/CCMetricsCarrierBundle.pb.cc", a4);
    operator new();
  }
}

uint64_t awd::metrics::protobuf_ShutdownFile_IMSMetrics_2eproto(awd::metrics *this)
{
  if (qword_2810D8A30)
  {
    (*(*qword_2810D8A30 + 8))(qword_2810D8A30);
  }

  if (qword_2810D8A38)
  {
    (*(*qword_2810D8A38 + 8))(qword_2810D8A38);
  }

  result = qword_2810D8A40;
  if (qword_2810D8A40)
  {
    v2 = *(*qword_2810D8A40 + 8);

    return v2();
  }

  return result;
}

uint64_t awd::metrics::SoundUMB_REGUPDATE::SoundUMB_REGUPDATE(uint64_t this)
{
  *(this + 88) = 0;
  *(this + 52) = 0;
  v1 = MEMORY[0x277D82C30];
  *this = &unk_284A61560;
  *(this + 8) = 0;
  *(this + 16) = 0;
  *(this + 24) = v1;
  *(this + 32) = v1;
  *(this + 40) = 0;
  *(this + 48) = 0;
  *(this + 56) = 0;
  *(this + 64) = 0;
  *(this + 72) = 0;
  *(this + 80) = v1;
  return this;
}

uint64_t awd::metrics::ATM_quietly_recall::ATM_quietly_recall(uint64_t this)
{
  *(this + 8) = 0;
  *(this + 16) = 0;
  *this = &unk_284A61650;
  *(this + 24) = 0;
  *(this + 36) = 0;
  *(this + 28) = 0;
  *(this + 44) = 0;
  v1 = MEMORY[0x277D82C30];
  *(this + 48) = MEMORY[0x277D82C30];
  *(this + 56) = 0;
  *(this + 64) = 0;
  *(this + 72) = v1;
  *(this + 80) = 0;
  return this;
}

uint64_t awd::metrics::SoundUMB_REGUPDATE::SharedDtor(uint64_t this)
{
  v1 = this;
  v2 = *(this + 24);
  v3 = MEMORY[0x277D82C30];
  if (v2 != MEMORY[0x277D82C30] && v2 != 0)
  {
    if (*(v2 + 23) < 0)
    {
      operator delete(*v2);
    }

    this = MEMORY[0x2383CAFA0](v2, 0x1012C40EC159624);
  }

  v5 = *(v1 + 32);
  if (v5 != v3 && v5 != 0)
  {
    if (*(v5 + 23) < 0)
    {
      operator delete(*v5);
    }

    this = MEMORY[0x2383CAFA0](v5, 0x1012C40EC159624);
  }

  v7 = *(v1 + 80);
  if (v7 != v3 && v7 != 0)
  {
    if (*(v7 + 23) < 0)
    {
      operator delete(*v7);
    }

    JUMPOUT(0x2383CAFA0);
  }

  return this;
}

void awd::metrics::SoundUMB_REGUPDATE::~SoundUMB_REGUPDATE(awd::metrics::SoundUMB_REGUPDATE *this)
{
  *this = &unk_284A61560;
  awd::metrics::SoundUMB_REGUPDATE::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_284A61560;
  awd::metrics::SoundUMB_REGUPDATE::SharedDtor(this);
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  JUMPOUT(0x2383CAFA0);
}

uint64_t awd::metrics::SoundUMB_REGUPDATE::Clear(uint64_t this)
{
  v1 = *(this + 92);
  v2 = MEMORY[0x277D82C30];
  if (v1)
  {
    *(this + 52) = 0;
    *(this + 8) = 0;
    *(this + 16) = 0;
    if ((v1 & 0x10) != 0)
    {
      v3 = *(this + 24);
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

    if ((*(this + 92) & 0x20) != 0)
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

    *(this + 40) = 0;
    v1 = *(this + 92);
  }

  if ((v1 & 0xFF00) != 0)
  {
    *(this + 48) = 0;
    *(this + 53) = 0;
    *(this + 64) = 0;
    *(this + 72) = 0;
    *(this + 56) = 0;
  }

  if ((v1 & 0x10000) != 0)
  {
    v5 = *(this + 80);
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

  *(this + 92) = 0;
  return this;
}

uint64_t awd::metrics::SoundUMB_REGUPDATE::MergePartialFromCodedStream(awd::metrics::SoundUMB_REGUPDATE *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
{
  v5 = MEMORY[0x277D82C30];
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

    v8 = TagFallback >> 3;
    v9 = TagFallback & 7;
    switch(TagFallback >> 3)
    {
      case 1u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_45;
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

        *(this + 23) |= 1u;
        if (v13 < v10 && *v13 == 16)
        {
          v25 = v13 + 1;
          *(a2 + 1) = v25;
          goto LABEL_54;
        }

        continue;
      case 2u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_45;
        }

        v25 = *(a2 + 1);
        v10 = *(a2 + 2);
LABEL_54:
        if (v25 >= v10 || (v31 = *v25, v31 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 4);
          if (!result)
          {
            return result;
          }

          v32 = *(a2 + 1);
          v10 = *(a2 + 2);
        }

        else
        {
          *(this + 4) = v31;
          v32 = v25 + 1;
          *(a2 + 1) = v32;
        }

        *(this + 23) |= 2u;
        if (v32 >= v10 || *v32 != 24)
        {
          continue;
        }

        v22 = v32 + 1;
        *(a2 + 1) = v22;
LABEL_62:
        v61 = 0;
        if (v22 >= v10 || (v33 = *v22, (v33 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v61);
          if (!result)
          {
            return result;
          }

          v33 = v61;
          v34 = *(a2 + 1);
          v10 = *(a2 + 2);
        }

        else
        {
          v34 = v22 + 1;
          *(a2 + 1) = v34;
        }

        *(this + 52) = v33 != 0;
        *(this + 23) |= 4u;
        if (v34 >= v10 || *v34 != 32)
        {
          continue;
        }

        v23 = v34 + 1;
        *(a2 + 1) = v23;
LABEL_70:
        if (v23 >= v10 || (v35 = *v23, v35 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 5);
          if (!result)
          {
            return result;
          }

          v36 = *(a2 + 1);
          v10 = *(a2 + 2);
        }

        else
        {
          *(this + 5) = v35;
          v36 = v23 + 1;
          *(a2 + 1) = v36;
        }

        v19 = *(this + 23) | 8;
        *(this + 23) = v19;
        if (v36 >= v10 || *v36 != 42)
        {
          continue;
        }

        *(a2 + 1) = v36 + 1;
LABEL_78:
        *(this + 23) = v19 | 0x10;
        if (*(this + 3) == v5)
        {
          operator new();
        }

        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
        if (!result)
        {
          return result;
        }

        v37 = *(a2 + 1);
        if (v37 >= *(a2 + 2) || *v37 != 50)
        {
          continue;
        }

        *(a2 + 1) = v37 + 1;
LABEL_84:
        *(this + 23) |= 0x20u;
        if (*(this + 4) == v5)
        {
          operator new();
        }

        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
        if (!result)
        {
          return result;
        }

        v38 = *(a2 + 1);
        v17 = *(a2 + 2);
        if (v38 >= v17 || *v38 != 56)
        {
          continue;
        }

        v28 = v38 + 1;
        *(a2 + 1) = v28;
LABEL_90:
        if (v28 >= v17 || (v39 = *v28, v39 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 10);
          if (!result)
          {
            return result;
          }

          v40 = *(a2 + 1);
          v17 = *(a2 + 2);
        }

        else
        {
          *(this + 10) = v39;
          v40 = v28 + 1;
          *(a2 + 1) = v40;
        }

        *(this + 23) |= 0x40u;
        if (v40 >= v17 || *v40 != 64)
        {
          continue;
        }

        v24 = v40 + 1;
        *(a2 + 1) = v24;
LABEL_98:
        if (v24 >= v17 || (v41 = *v24, v41 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 11);
          if (!result)
          {
            return result;
          }

          v42 = *(a2 + 1);
          v17 = *(a2 + 2);
        }

        else
        {
          *(this + 11) = v41;
          v42 = v24 + 1;
          *(a2 + 1) = v42;
        }

        *(this + 23) |= 0x80u;
        if (v42 >= v17 || *v42 != 72)
        {
          continue;
        }

        v30 = v42 + 1;
        *(a2 + 1) = v30;
LABEL_106:
        if (v30 >= v17 || (v43 = *v30, v43 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 12);
          if (!result)
          {
            return result;
          }

          v44 = *(a2 + 1);
          v17 = *(a2 + 2);
        }

        else
        {
          *(this + 12) = v43;
          v44 = v30 + 1;
          *(a2 + 1) = v44;
        }

        *(this + 23) |= 0x100u;
        if (v44 >= v17 || *v44 != 80)
        {
          continue;
        }

        v21 = v44 + 1;
        *(a2 + 1) = v21;
LABEL_114:
        if (v21 >= v17 || (v45 = *v21, v45 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 14);
          if (!result)
          {
            return result;
          }

          v46 = *(a2 + 1);
          v17 = *(a2 + 2);
        }

        else
        {
          *(this + 14) = v45;
          v46 = v21 + 1;
          *(a2 + 1) = v46;
        }

        *(this + 23) |= 0x200u;
        if (v46 >= v17 || *v46 != 88)
        {
          continue;
        }

        v29 = v46 + 1;
        *(a2 + 1) = v29;
LABEL_122:
        if (v29 >= v17 || (v47 = *v29, v47 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 15);
          if (!result)
          {
            return result;
          }

          v48 = *(a2 + 1);
          v17 = *(a2 + 2);
        }

        else
        {
          *(this + 15) = v47;
          v48 = v29 + 1;
          *(a2 + 1) = v48;
        }

        *(this + 23) |= 0x400u;
        if (v48 >= v17 || *v48 != 96)
        {
          continue;
        }

        v18 = v48 + 1;
        *(a2 + 1) = v18;
LABEL_130:
        if (v18 >= v17 || (v49 = *v18, v49 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 16);
          if (!result)
          {
            return result;
          }

          v50 = *(a2 + 1);
          v17 = *(a2 + 2);
        }

        else
        {
          *(this + 16) = v49;
          v50 = v18 + 1;
          *(a2 + 1) = v50;
        }

        *(this + 23) |= 0x800u;
        if (v50 >= v17 || *v50 != 104)
        {
          continue;
        }

        v20 = v50 + 1;
        *(a2 + 1) = v20;
LABEL_138:
        if (v20 >= v17 || (v51 = *v20, v51 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 17);
          if (!result)
          {
            return result;
          }

          v52 = *(a2 + 1);
          v17 = *(a2 + 2);
        }

        else
        {
          *(this + 17) = v51;
          v52 = v20 + 1;
          *(a2 + 1) = v52;
        }

        *(this + 23) |= 0x1000u;
        if (v52 >= v17 || *v52 != 112)
        {
          continue;
        }

        v27 = v52 + 1;
        *(a2 + 1) = v27;
LABEL_146:
        v62 = 0;
        if (v27 >= v17 || (v53 = *v27, (v53 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v62);
          if (!result)
          {
            return result;
          }

          v53 = v62;
        }

        else
        {
          *(a2 + 1) = v27 + 1;
        }

        if (v53 <= 6)
        {
          *(this + 23) |= 0x2000u;
          *(this + 18) = v53;
        }

        v54 = *(a2 + 1);
        v15 = *(a2 + 2);
        if (v54 >= v15 || *v54 != 120)
        {
          continue;
        }

        v16 = v54 + 1;
        *(a2 + 1) = v16;
LABEL_156:
        v60 = 0;
        if (v16 >= v15 || (v55 = *v16, (v55 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v60);
          if (!result)
          {
            return result;
          }

          v55 = v60;
          v56 = *(a2 + 1);
          v15 = *(a2 + 2);
        }

        else
        {
          v56 = (v16 + 1);
          *(a2 + 1) = v56;
        }

        *(this + 53) = v55 != 0;
        *(this + 23) |= 0x4000u;
        if (v15 - v56 < 2 || *v56 != 240 || v56[1] != 34)
        {
          continue;
        }

        v26 = (v56 + 2);
        *(a2 + 1) = v26;
        goto LABEL_165;
      case 3u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_45;
        }

        v22 = *(a2 + 1);
        v10 = *(a2 + 2);
        goto LABEL_62;
      case 4u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_45;
        }

        v23 = *(a2 + 1);
        v10 = *(a2 + 2);
        goto LABEL_70;
      case 5u:
        if (v9 != 2)
        {
          goto LABEL_45;
        }

        v19 = *(this + 23);
        goto LABEL_78;
      case 6u:
        if (v9 == 2)
        {
          goto LABEL_84;
        }

        goto LABEL_45;
      case 7u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_45;
        }

        v28 = *(a2 + 1);
        v17 = *(a2 + 2);
        goto LABEL_90;
      case 8u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_45;
        }

        v24 = *(a2 + 1);
        v17 = *(a2 + 2);
        goto LABEL_98;
      case 9u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_45;
        }

        v30 = *(a2 + 1);
        v17 = *(a2 + 2);
        goto LABEL_106;
      case 0xAu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_45;
        }

        v21 = *(a2 + 1);
        v17 = *(a2 + 2);
        goto LABEL_114;
      case 0xBu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_45;
        }

        v29 = *(a2 + 1);
        v17 = *(a2 + 2);
        goto LABEL_122;
      case 0xCu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_45;
        }

        v18 = *(a2 + 1);
        v17 = *(a2 + 2);
        goto LABEL_130;
      case 0xDu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_45;
        }

        v20 = *(a2 + 1);
        v17 = *(a2 + 2);
        goto LABEL_138;
      case 0xEu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_45;
        }

        v27 = *(a2 + 1);
        v17 = *(a2 + 2);
        goto LABEL_146;
      case 0xFu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_45;
        }

        v16 = *(a2 + 1);
        v15 = *(a2 + 2);
        goto LABEL_156;
      default:
        if (v8 == 558)
        {
          if ((TagFallback & 7) != 0)
          {
            goto LABEL_45;
          }

          v26 = *(a2 + 1);
          v15 = *(a2 + 2);
LABEL_165:
          if (v26 >= v15 || (v57 = *v26, v57 < 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 19);
            if (!result)
            {
              return result;
            }

            v58 = *(a2 + 1);
            v15 = *(a2 + 2);
          }

          else
          {
            *(this + 19) = v57;
            v58 = (v26 + 1);
            *(a2 + 1) = v58;
          }

          v14 = *(this + 23) | 0x8000;
          *(this + 23) = v14;
          if (v15 - v58 >= 2 && *v58 == 250 && v58[1] == 34)
          {
            *(a2 + 1) = v58 + 2;
            goto LABEL_174;
          }

          continue;
        }

        if (v8 == 559 && v9 == 2)
        {
          v14 = *(this + 23);
LABEL_174:
          *(this + 23) = v14 | 0x10000;
          if (*(this + 10) == v5)
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

          continue;
        }

LABEL_45:
        if (v9 != 4)
        {
          if ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(a2, TagFallback) & 1) == 0)
          {
            return 0;
          }

          continue;
        }

        return 1;
    }
  }
}

uint64_t awd::metrics::SoundUMB_REGUPDATE::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 92);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(1, *(this + 8), a2, a4);
    v6 = *(v5 + 92);
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

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(2, *(v5 + 16), a2, a4);
  v6 = *(v5 + 92);
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
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(3, *(v5 + 52), a2, a4);
  v6 = *(v5 + 92);
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
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(4, *(v5 + 20), a2, a4);
  v6 = *(v5 + 92);
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
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
  v6 = *(v5 + 92);
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
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
  v6 = *(v5 + 92);
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
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(7, *(v5 + 40), a2, a4);
  v6 = *(v5 + 92);
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
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(8, *(v5 + 44), a2, a4);
  v6 = *(v5 + 92);
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
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(9, *(v5 + 48), a2, a4);
  v6 = *(v5 + 92);
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
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xA, *(v5 + 56), a2, a4);
  v6 = *(v5 + 92);
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
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xB, *(v5 + 60), a2, a4);
  v6 = *(v5 + 92);
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
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xC, *(v5 + 64), a2, a4);
  v6 = *(v5 + 92);
  if ((v6 & 0x1000) == 0)
  {
LABEL_14:
    if ((v6 & 0x2000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_32;
  }

LABEL_31:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xD, *(v5 + 68), a2, a4);
  v6 = *(v5 + 92);
  if ((v6 & 0x2000) == 0)
  {
LABEL_15:
    if ((v6 & 0x4000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_33;
  }

LABEL_32:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(0xE, *(v5 + 72), a2, a4);
  v6 = *(v5 + 92);
  if ((v6 & 0x4000) == 0)
  {
LABEL_16:
    if ((v6 & 0x8000) == 0)
    {
      goto LABEL_17;
    }

LABEL_34:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x22E, *(v5 + 76), a2, a4);
    if ((*(v5 + 92) & 0x10000) == 0)
    {
      return this;
    }

    goto LABEL_35;
  }

LABEL_33:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(0xF, *(v5 + 53), a2, a4);
  v6 = *(v5 + 92);
  if ((v6 & 0x8000) != 0)
  {
    goto LABEL_34;
  }

LABEL_17:
  if ((v6 & 0x10000) == 0)
  {
    return this;
  }

LABEL_35:

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
}

uint64_t awd::metrics::SoundUMB_REGUPDATE::ByteSize(awd::metrics::SoundUMB_REGUPDATE *this, unint64_t a2)
{
  v3 = *(this + 23);
  if (!v3)
  {
    v5 = 0;
    goto LABEL_47;
  }

  if (v3)
  {
    v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 1)) + 1;
    v3 = *(this + 23);
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

  v6 = *(this + 4);
  if (v6 >= 0x80)
  {
    v7 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v6) + 1;
    v3 = *(this + 23);
  }

  else
  {
    v7 = 2;
  }

  v4 += v7;
LABEL_11:
  v5 = ((v3 >> 1) & 2) + v4;
  if ((v3 & 8) != 0)
  {
    v8 = *(this + 5);
    if (v8 >= 0x80)
    {
      v9 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v8) + 1;
      v3 = *(this + 23);
    }

    else
    {
      v9 = 2;
    }

    v5 = (v9 + v5);
    if ((v3 & 0x10) == 0)
    {
LABEL_13:
      if ((v3 & 0x20) == 0)
      {
        goto LABEL_14;
      }

      goto LABEL_30;
    }
  }

  else if ((v3 & 0x10) == 0)
  {
    goto LABEL_13;
  }

  v10 = *(this + 3);
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
    v3 = *(this + 23);
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

  v5 = (v5 + v15 + v11 + 1);
  if ((v3 & 0x20) == 0)
  {
LABEL_14:
    if ((v3 & 0x40) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_39;
  }

LABEL_30:
  v16 = *(this + 4);
  v17 = *(v16 + 23);
  v18 = v17;
  v19 = *(v16 + 8);
  if ((v17 & 0x80u) == 0)
  {
    v20 = *(v16 + 23);
  }

  else
  {
    v20 = v19;
  }

  if (v20 >= 0x80)
  {
    v21 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v20);
    v17 = *(v16 + 23);
    v19 = *(v16 + 8);
    v3 = *(this + 23);
    v18 = *(v16 + 23);
  }

  else
  {
    v21 = 1;
  }

  if (v18 < 0)
  {
    v17 = v19;
  }

  v5 = (v5 + v21 + v17 + 1);
  if ((v3 & 0x40) == 0)
  {
LABEL_15:
    if ((v3 & 0x80) == 0)
    {
      goto LABEL_47;
    }

    goto LABEL_43;
  }

LABEL_39:
  v22 = *(this + 10);
  if (v22 >= 0x80)
  {
    v23 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v22) + 1;
    v3 = *(this + 23);
  }

  else
  {
    v23 = 2;
  }

  v5 = (v23 + v5);
  if ((v3 & 0x80) != 0)
  {
LABEL_43:
    v24 = *(this + 11);
    if (v24 >= 0x80)
    {
      v25 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v24) + 1;
      v3 = *(this + 23);
    }

    else
    {
      v25 = 2;
    }

    v5 = (v25 + v5);
  }

LABEL_47:
  if ((v3 & 0xFF00) == 0)
  {
    goto LABEL_86;
  }

  if ((v3 & 0x100) != 0)
  {
    v26 = *(this + 12);
    if (v26 >= 0x80)
    {
      v27 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v26) + 1;
      v3 = *(this + 23);
    }

    else
    {
      v27 = 2;
    }

    LODWORD(v5) = v27 + v5;
    if ((v3 & 0x200) == 0)
    {
LABEL_50:
      if ((v3 & 0x400) == 0)
      {
        goto LABEL_51;
      }

      goto LABEL_63;
    }
  }

  else if ((v3 & 0x200) == 0)
  {
    goto LABEL_50;
  }

  v28 = *(this + 14);
  if (v28 >= 0x80)
  {
    v29 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v28) + 1;
    v3 = *(this + 23);
  }

  else
  {
    v29 = 2;
  }

  LODWORD(v5) = v29 + v5;
  if ((v3 & 0x400) == 0)
  {
LABEL_51:
    if ((v3 & 0x800) == 0)
    {
      goto LABEL_52;
    }

    goto LABEL_67;
  }

LABEL_63:
  v30 = *(this + 15);
  if (v30 >= 0x80)
  {
    v31 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v30) + 1;
    v3 = *(this + 23);
  }

  else
  {
    v31 = 2;
  }

  LODWORD(v5) = v31 + v5;
  if ((v3 & 0x800) == 0)
  {
LABEL_52:
    if ((v3 & 0x1000) == 0)
    {
      goto LABEL_53;
    }

    goto LABEL_71;
  }

LABEL_67:
  v32 = *(this + 16);
  if (v32 >= 0x80)
  {
    v33 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v32) + 1;
    v3 = *(this + 23);
  }

  else
  {
    v33 = 2;
  }

  LODWORD(v5) = v33 + v5;
  if ((v3 & 0x1000) == 0)
  {
LABEL_53:
    if ((v3 & 0x2000) == 0)
    {
      goto LABEL_81;
    }

    goto LABEL_75;
  }

LABEL_71:
  v34 = *(this + 17);
  if (v34 >= 0x80)
  {
    v35 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v34) + 1;
    v3 = *(this + 23);
  }

  else
  {
    v35 = 2;
  }

  LODWORD(v5) = v35 + v5;
  if ((v3 & 0x2000) != 0)
  {
LABEL_75:
    v36 = *(this + 18);
    if ((v36 & 0x80000000) != 0)
    {
      v37 = 11;
    }

    else if (v36 >= 0x80)
    {
      v37 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v36) + 1;
      v3 = *(this + 23);
    }

    else
    {
      v37 = 2;
    }

    LODWORD(v5) = v37 + v5;
  }

LABEL_81:
  v5 = ((v3 >> 13) & 2) + v5;
  if ((v3 & 0x8000) != 0)
  {
    v38 = *(this + 19);
    if (v38 >= 0x80)
    {
      v39 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v38) + 2;
      v3 = *(this + 23);
    }

    else
    {
      v39 = 3;
    }

    v5 = (v39 + v5);
  }

LABEL_86:
  if ((v3 & 0x10000) != 0)
  {
    v40 = *(this + 10);
    v41 = *(v40 + 23);
    v42 = v41;
    v43 = *(v40 + 8);
    if ((v41 & 0x80u) == 0)
    {
      v44 = *(v40 + 23);
    }

    else
    {
      v44 = v43;
    }

    if (v44 >= 0x80)
    {
      v45 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v44);
      v41 = *(v40 + 23);
      v43 = *(v40 + 8);
      v42 = *(v40 + 23);
    }

    else
    {
      v45 = 1;
    }

    if (v42 < 0)
    {
      v41 = v43;
    }

    v5 = (v5 + v45 + v41 + 2);
  }

  *(this + 22) = v5;
  return v5;
}

void awd::metrics::SoundUMB_REGUPDATE::CheckTypeAndMergeFrom(awd::metrics::SoundUMB_REGUPDATE *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  if (lpsrc == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v26);
  }

  v4 = *(lpsrc + 23);
  v5 = MEMORY[0x277D82C30];
  if (!v4)
  {
    goto LABEL_14;
  }

  if (v4)
  {
    v11 = *(lpsrc + 1);
    *(this + 23) |= 1u;
    *(this + 1) = v11;
    v4 = *(lpsrc + 23);
    if ((v4 & 2) == 0)
    {
LABEL_7:
      if ((v4 & 4) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_32;
    }
  }

  else if ((v4 & 2) == 0)
  {
    goto LABEL_7;
  }

  v12 = *(lpsrc + 4);
  *(this + 23) |= 2u;
  *(this + 4) = v12;
  v4 = *(lpsrc + 23);
  if ((v4 & 4) == 0)
  {
LABEL_8:
    if ((v4 & 8) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_33;
  }

LABEL_32:
  v13 = *(lpsrc + 52);
  *(this + 23) |= 4u;
  *(this + 52) = v13;
  v4 = *(lpsrc + 23);
  if ((v4 & 8) == 0)
  {
LABEL_9:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_34;
  }

LABEL_33:
  v14 = *(lpsrc + 5);
  *(this + 23) |= 8u;
  *(this + 5) = v14;
  v4 = *(lpsrc + 23);
  if ((v4 & 0x10) == 0)
  {
LABEL_10:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_11;
    }

LABEL_37:
    v17 = *(lpsrc + 4);
    *(this + 23) |= 0x20u;
    v18 = *(this + 4);
    if (v18 == v5)
    {
      operator new();
    }

    std::string::operator=(v18, v17);
    v4 = *(lpsrc + 23);
    if ((v4 & 0x40) == 0)
    {
LABEL_12:
      if ((v4 & 0x80) == 0)
      {
        goto LABEL_14;
      }

      goto LABEL_13;
    }

    goto LABEL_40;
  }

LABEL_34:
  v15 = *(lpsrc + 3);
  *(this + 23) |= 0x10u;
  v16 = *(this + 3);
  if (v16 == v5)
  {
    operator new();
  }

  std::string::operator=(v16, v15);
  v4 = *(lpsrc + 23);
  if ((v4 & 0x20) != 0)
  {
    goto LABEL_37;
  }

LABEL_11:
  if ((v4 & 0x40) == 0)
  {
    goto LABEL_12;
  }

LABEL_40:
  v19 = *(lpsrc + 10);
  *(this + 23) |= 0x40u;
  *(this + 10) = v19;
  v4 = *(lpsrc + 23);
  if ((v4 & 0x80) != 0)
  {
LABEL_13:
    v6 = *(lpsrc + 11);
    *(this + 23) |= 0x80u;
    *(this + 11) = v6;
    v4 = *(lpsrc + 23);
  }

LABEL_14:
  if ((v4 & 0xFF00) == 0)
  {
    goto LABEL_25;
  }

  if ((v4 & 0x100) != 0)
  {
    v20 = *(lpsrc + 12);
    *(this + 23) |= 0x100u;
    *(this + 12) = v20;
    v4 = *(lpsrc + 23);
    if ((v4 & 0x200) == 0)
    {
LABEL_17:
      if ((v4 & 0x400) == 0)
      {
        goto LABEL_18;
      }

      goto LABEL_44;
    }
  }

  else if ((v4 & 0x200) == 0)
  {
    goto LABEL_17;
  }

  v21 = *(lpsrc + 14);
  *(this + 23) |= 0x200u;
  *(this + 14) = v21;
  v4 = *(lpsrc + 23);
  if ((v4 & 0x400) == 0)
  {
LABEL_18:
    if ((v4 & 0x800) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_45;
  }

LABEL_44:
  v22 = *(lpsrc + 15);
  *(this + 23) |= 0x400u;
  *(this + 15) = v22;
  v4 = *(lpsrc + 23);
  if ((v4 & 0x800) == 0)
  {
LABEL_19:
    if ((v4 & 0x1000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_46;
  }

LABEL_45:
  v23 = *(lpsrc + 16);
  *(this + 23) |= 0x800u;
  *(this + 16) = v23;
  v4 = *(lpsrc + 23);
  if ((v4 & 0x1000) == 0)
  {
LABEL_20:
    if ((v4 & 0x2000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_47;
  }

LABEL_46:
  v24 = *(lpsrc + 17);
  *(this + 23) |= 0x1000u;
  *(this + 17) = v24;
  v4 = *(lpsrc + 23);
  if ((v4 & 0x2000) == 0)
  {
LABEL_21:
    if ((v4 & 0x4000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_22;
  }

LABEL_47:
  v25 = *(lpsrc + 18);
  if (v25 >= 7)
  {
    __assert_rtn("set_event", "IMSMetrics.pb.h", 1178, "::awd::metrics::enum_reg_event_IsValid(value)");
  }

  *(this + 23) |= 0x2000u;
  *(this + 18) = v25;
  v4 = *(lpsrc + 23);
  if ((v4 & 0x4000) == 0)
  {
    goto LABEL_23;
  }

LABEL_22:
  v7 = *(lpsrc + 53);
  *(this + 23) |= 0x4000u;
  *(this + 53) = v7;
  v4 = *(lpsrc + 23);
LABEL_23:
  if ((v4 & 0x8000) != 0)
  {
    v8 = *(lpsrc + 19);
    *(this + 23) |= 0x8000u;
    *(this + 19) = v8;
    v4 = *(lpsrc + 23);
  }

LABEL_25:
  if ((v4 & 0x10000) != 0)
  {
    v9 = *(lpsrc + 10);
    *(this + 23) |= 0x10000u;
    v10 = *(this + 10);
    if (v10 == v5)
    {
      operator new();
    }

    std::string::operator=(v10, v9);
  }
}

void sub_2373DA33C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t awd::metrics::ATM_process_health::SharedDtor(uint64_t this)
{
  v1 = this;
  v2 = *(this + 48);
  v3 = MEMORY[0x277D82C30];
  if (v2 != MEMORY[0x277D82C30] && v2 != 0)
  {
    if (*(v2 + 23) < 0)
    {
      operator delete(*v2);
    }

    this = MEMORY[0x2383CAFA0](v2, 0x1012C40EC159624);
  }

  v5 = *(v1 + 64);
  if (v5 != v3 && v5 != 0)
  {
    if (*(v5 + 23) < 0)
    {
      operator delete(*v5);
    }

    JUMPOUT(0x2383CAFA0);
  }

  return this;
}

void awd::metrics::ATM_process_health::~ATM_process_health(awd::metrics::ATM_process_health *this)
{
  *this = &unk_284A615D8;
  awd::metrics::ATM_process_health::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_284A615D8;
  awd::metrics::ATM_process_health::SharedDtor(this);
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  JUMPOUT(0x2383CAFA0);
}

uint64_t awd::metrics::ATM_process_health::Clear(uint64_t this)
{
  v1 = *(this + 76);
  if (v1)
  {
    *(this + 40) = 0;
    *(this + 24) = 0u;
    *(this + 8) = 0u;
  }

  if ((v1 & 0xFF00) != 0)
  {
    *(this + 44) = 0;
    *(this + 56) = 0;
    v2 = MEMORY[0x277D82C30];
    if ((v1 & 0x400) != 0)
    {
      v3 = *(this + 48);
      if (v3 != MEMORY[0x277D82C30])
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

    *(this + 60) = 0;
    if ((*(this + 77) & 0x10) != 0)
    {
      v4 = *(this + 64);
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

  *(this + 76) = 0;
  return this;
}

uint64_t awd::metrics::ATM_process_health::MergePartialFromCodedStream(awd::metrics::ATM_process_health *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
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
            if (TagFallback >> 3 > 6)
            {
              break;
            }

            if (TagFallback >> 3 > 3)
            {
              if (v8 == 4)
              {
                if ((TagFallback & 7) != 0)
                {
                  goto LABEL_51;
                }

                v24 = *(a2 + 1);
                v11 = *(a2 + 2);
                goto LABEL_76;
              }

              if (v8 != 5)
              {
                if (v8 != 6 || (TagFallback & 7) != 0)
                {
                  goto LABEL_51;
                }

                v14 = *(a2 + 1);
                v11 = *(a2 + 2);
                goto LABEL_92;
              }

              if ((TagFallback & 7) != 0)
              {
                goto LABEL_51;
              }

              v26 = *(a2 + 1);
              v11 = *(a2 + 2);
LABEL_84:
              if (v26 >= v11 || (v33 = *v26, v33 < 0))
              {
                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 7);
                if (!result)
                {
                  return result;
                }

                v34 = *(a2 + 1);
                v11 = *(a2 + 2);
              }

              else
              {
                *(this + 7) = v33;
                v34 = v26 + 1;
                *(a2 + 1) = v34;
              }

              *(this + 19) |= 0x10u;
              if (v34 < v11 && *v34 == 48)
              {
                v14 = v34 + 1;
                *(a2 + 1) = v14;
LABEL_92:
                if (v14 >= v11 || (v35 = *v14, v35 < 0))
                {
                  result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 8);
                  if (!result)
                  {
                    return result;
                  }

                  v36 = *(a2 + 1);
                  v11 = *(a2 + 2);
                }

                else
                {
                  *(this + 8) = v35;
                  v36 = v14 + 1;
                  *(a2 + 1) = v36;
                }

                *(this + 19) |= 0x20u;
                if (v36 < v11 && *v36 == 56)
                {
                  v19 = v36 + 1;
                  *(a2 + 1) = v19;
LABEL_100:
                  if (v19 >= v11 || (v37 = *v19, v37 < 0))
                  {
                    result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 9);
                    if (!result)
                    {
                      return result;
                    }

                    v38 = *(a2 + 1);
                    v11 = *(a2 + 2);
                  }

                  else
                  {
                    *(this + 9) = v37;
                    v38 = v19 + 1;
                    *(a2 + 1) = v38;
                  }

                  *(this + 19) |= 0x40u;
                  if (v38 < v11 && *v38 == 64)
                  {
                    v20 = v38 + 1;
                    *(a2 + 1) = v20;
LABEL_108:
                    if (v20 >= v11 || (v39 = *v20, v39 < 0))
                    {
                      result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 10);
                      if (!result)
                      {
                        return result;
                      }

                      v40 = *(a2 + 1);
                      v11 = *(a2 + 2);
                    }

                    else
                    {
                      *(this + 10) = v39;
                      v40 = v20 + 1;
                      *(a2 + 1) = v40;
                    }

                    *(this + 19) |= 0x80u;
                    if (v40 < v11 && *v40 == 72)
                    {
                      v13 = v40 + 1;
                      *(a2 + 1) = v13;
                      goto LABEL_116;
                    }
                  }
                }
              }
            }

            else if (v8 == 1)
            {
              if ((TagFallback & 7) != 0)
              {
                goto LABEL_51;
              }

              v21 = *(a2 + 1);
              v11 = *(a2 + 2);
              if (v21 >= v11 || (v22 = *v21, v22 < 0))
              {
                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 1);
                if (!result)
                {
                  return result;
                }

                v23 = *(a2 + 1);
                v11 = *(a2 + 2);
              }

              else
              {
                *(this + 1) = v22;
                v23 = v21 + 1;
                *(a2 + 1) = v23;
              }

              *(this + 19) |= 1u;
              if (v23 < v11 && *v23 == 16)
              {
                v25 = v23 + 1;
                *(a2 + 1) = v25;
                goto LABEL_60;
              }
            }

            else
            {
              if (v8 != 2)
              {
                if (v8 != 3 || (TagFallback & 7) != 0)
                {
                  goto LABEL_51;
                }

                v12 = *(a2 + 1);
                v11 = *(a2 + 2);
                goto LABEL_68;
              }

              if ((TagFallback & 7) != 0)
              {
                goto LABEL_51;
              }

              v25 = *(a2 + 1);
              v11 = *(a2 + 2);
LABEL_60:
              if (v25 >= v11 || (v27 = *v25, v27 < 0))
              {
                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 4);
                if (!result)
                {
                  return result;
                }

                v28 = *(a2 + 1);
                v11 = *(a2 + 2);
              }

              else
              {
                *(this + 4) = v27;
                v28 = v25 + 1;
                *(a2 + 1) = v28;
              }

              *(this + 19) |= 2u;
              if (v28 < v11 && *v28 == 24)
              {
                v12 = v28 + 1;
                *(a2 + 1) = v12;
LABEL_68:
                if (v12 >= v11 || (v29 = *v12, v29 < 0))
                {
                  result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 5);
                  if (!result)
                  {
                    return result;
                  }

                  v30 = *(a2 + 1);
                  v11 = *(a2 + 2);
                }

                else
                {
                  *(this + 5) = v29;
                  v30 = v12 + 1;
                  *(a2 + 1) = v30;
                }

                *(this + 19) |= 4u;
                if (v30 < v11 && *v30 == 32)
                {
                  v24 = v30 + 1;
                  *(a2 + 1) = v24;
LABEL_76:
                  if (v24 >= v11 || (v31 = *v24, v31 < 0))
                  {
                    result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 6);
                    if (!result)
                    {
                      return result;
                    }

                    v32 = *(a2 + 1);
                    v11 = *(a2 + 2);
                  }

                  else
                  {
                    *(this + 6) = v31;
                    v32 = v24 + 1;
                    *(a2 + 1) = v32;
                  }

                  *(this + 19) |= 8u;
                  if (v32 < v11 && *v32 == 40)
                  {
                    v26 = v32 + 1;
                    *(a2 + 1) = v26;
                    goto LABEL_84;
                  }
                }
              }
            }
          }

          if (TagFallback >> 3 > 9)
          {
            break;
          }

          if (v8 == 7)
          {
            if ((TagFallback & 7) != 0)
            {
              goto LABEL_51;
            }

            v19 = *(a2 + 1);
            v11 = *(a2 + 2);
            goto LABEL_100;
          }

          if (v8 == 8)
          {
            if ((TagFallback & 7) != 0)
            {
              goto LABEL_51;
            }

            v20 = *(a2 + 1);
            v11 = *(a2 + 2);
            goto LABEL_108;
          }

          if (v8 != 9 || (TagFallback & 7) != 0)
          {
            goto LABEL_51;
          }

          v13 = *(a2 + 1);
          v11 = *(a2 + 2);
LABEL_116:
          if (v13 >= v11 || (v41 = *v13, v41 < 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 11);
            if (!result)
            {
              return result;
            }

            v42 = *(a2 + 1);
            v11 = *(a2 + 2);
          }

          else
          {
            *(this + 11) = v41;
            v42 = v13 + 1;
            *(a2 + 1) = v42;
          }

          *(this + 19) |= 0x100u;
          if (v42 < v11 && *v42 == 80)
          {
            v16 = v42 + 1;
            *(a2 + 1) = v16;
            goto LABEL_124;
          }
        }

        if (TagFallback >> 3 > 0x22D)
        {
          break;
        }

        if (v8 == 10)
        {
          if ((TagFallback & 7) != 0)
          {
            goto LABEL_51;
          }

          v16 = *(a2 + 1);
          v11 = *(a2 + 2);
LABEL_124:
          if (v16 >= v11 || (v43 = *v16, v43 < 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 14);
            if (!result)
            {
              return result;
            }

            v44 = *(a2 + 1);
            v11 = *(a2 + 2);
          }

          else
          {
            *(this + 14) = v43;
            v44 = v16 + 1;
            *(a2 + 1) = v44;
          }

          v10 = *(this + 19) | 0x200;
          *(this + 19) = v10;
          if (v44 < v11 && *v44 == 90)
          {
            *(a2 + 1) = v44 + 1;
            goto LABEL_132;
          }
        }

        else
        {
          if (v8 != 11 || v9 != 2)
          {
            goto LABEL_51;
          }

          v10 = *(this + 19);
LABEL_132:
          *(this + 19) = v10 | 0x400;
          if (*(this + 6) == v5)
          {
            operator new();
          }

          result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
          if (!result)
          {
            return result;
          }

          v45 = *(a2 + 1);
          v17 = *(a2 + 2);
          if (v17 - v45 >= 2 && *v45 == 240 && v45[1] == 34)
          {
            v18 = (v45 + 2);
            *(a2 + 1) = v18;
LABEL_139:
            if (v18 >= v17 || (v46 = *v18, v46 < 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 15);
              if (!result)
              {
                return result;
              }

              v47 = *(a2 + 1);
              v17 = *(a2 + 2);
            }

            else
            {
              *(this + 15) = v46;
              v47 = (v18 + 1);
              *(a2 + 1) = v47;
            }

            v15 = *(this + 19) | 0x800;
            *(this + 19) = v15;
            if (v17 - v47 >= 2 && *v47 == 250 && v47[1] == 34)
            {
              *(a2 + 1) = v47 + 2;
              goto LABEL_148;
            }
          }
        }
      }

      if (v8 == 558)
      {
        break;
      }

      if (v8 != 559 || v9 != 2)
      {
        goto LABEL_51;
      }

      v15 = *(this + 19);
LABEL_148:
      *(this + 19) = v15 | 0x1000;
      if (*(this + 8) == v5)
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

    if ((TagFallback & 7) == 0)
    {
      v18 = *(a2 + 1);
      v17 = *(a2 + 2);
      goto LABEL_139;
    }

LABEL_51:
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

uint64_t awd::metrics::ATM_process_health::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 76);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(1, *(this + 8), a2, a4);
    v6 = v5[19];
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

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(2, v5[4], a2, a4);
  v6 = v5[19];
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
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(3, v5[5], a2, a4);
  v6 = v5[19];
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
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(4, v5[6], a2, a4);
  v6 = v5[19];
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
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(5, v5[7], a2, a4);
  v6 = v5[19];
  if ((v6 & 0x20) == 0)
  {
LABEL_7:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_21;
  }

LABEL_20:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(6, v5[8], a2, a4);
  v6 = v5[19];
  if ((v6 & 0x40) == 0)
  {
LABEL_8:
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_22;
  }

LABEL_21:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(7, v5[9], a2, a4);
  v6 = v5[19];
  if ((v6 & 0x80) == 0)
  {
LABEL_9:
    if ((v6 & 0x100) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_23;
  }

LABEL_22:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(8, v5[10], a2, a4);
  v6 = v5[19];
  if ((v6 & 0x100) == 0)
  {
LABEL_10:
    if ((v6 & 0x200) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_24;
  }

LABEL_23:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(9, v5[11], a2, a4);
  v6 = v5[19];
  if ((v6 & 0x200) == 0)
  {
LABEL_11:
    if ((v6 & 0x400) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_25;
  }

LABEL_24:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xA, v5[14], a2, a4);
  v6 = v5[19];
  if ((v6 & 0x400) == 0)
  {
LABEL_12:
    if ((v6 & 0x800) == 0)
    {
      goto LABEL_13;
    }

LABEL_26:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x22E, v5[15], a2, a4);
    if ((v5[19] & 0x1000) == 0)
    {
      return this;
    }

    goto LABEL_27;
  }

LABEL_25:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
  v6 = v5[19];
  if ((v6 & 0x800) != 0)
  {
    goto LABEL_26;
  }

LABEL_13:
  if ((v6 & 0x1000) == 0)
  {
    return this;
  }

LABEL_27:

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
}

uint64_t awd::metrics::ATM_process_health::ByteSize(awd::metrics::ATM_process_health *this, unint64_t a2)
{
  v3 = *(this + 19);
  if (!v3)
  {
    v4 = 0;
    goto LABEL_42;
  }

  if (v3)
  {
    v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 1)) + 1;
    v3 = *(this + 19);
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
    v3 = *(this + 19);
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
      v3 = *(this + 19);
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
    v3 = *(this + 19);
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
    v3 = *(this + 19);
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
    v3 = *(this + 19);
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
    v3 = *(this + 19);
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
      v3 = *(this + 19);
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
    goto LABEL_79;
  }

  if ((v3 & 0x100) != 0)
  {
    v19 = *(this + 11);
    if (v19 >= 0x80)
    {
      v20 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v19) + 1;
      v3 = *(this + 19);
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

      goto LABEL_57;
    }
  }

  else if ((v3 & 0x200) == 0)
  {
    goto LABEL_45;
  }

  v21 = *(this + 14);
  if (v21 >= 0x80)
  {
    v22 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v21) + 1;
    v3 = *(this + 19);
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

    goto LABEL_66;
  }

LABEL_57:
  v23 = *(this + 6);
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
    v3 = *(this + 19);
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
  if ((v3 & 0x800) == 0)
  {
LABEL_47:
    if ((v3 & 0x1000) == 0)
    {
      goto LABEL_79;
    }

    goto LABEL_70;
  }

LABEL_66:
  v29 = *(this + 15);
  if (v29 >= 0x80)
  {
    v30 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v29) + 2;
    v3 = *(this + 19);
  }

  else
  {
    v30 = 3;
  }

  v4 = (v30 + v4);
  if ((v3 & 0x1000) != 0)
  {
LABEL_70:
    v31 = *(this + 8);
    v32 = *(v31 + 23);
    v33 = v32;
    v34 = *(v31 + 8);
    if ((v32 & 0x80u) == 0)
    {
      v35 = *(v31 + 23);
    }

    else
    {
      v35 = v34;
    }

    if (v35 >= 0x80)
    {
      v36 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v35);
      v32 = *(v31 + 23);
      v34 = *(v31 + 8);
      v33 = *(v31 + 23);
    }

    else
    {
      v36 = 1;
    }

    if (v33 < 0)
    {
      v32 = v34;
    }

    v4 = (v4 + v36 + v32 + 2);
  }

LABEL_79:
  *(this + 18) = v4;
  return v4;
}

void awd::metrics::ATM_process_health::CheckTypeAndMergeFrom(const std::string **this, const std::string **lpsrc)
{
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  if (lpsrc == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v21);
  }

  v4 = *(lpsrc + 19);
  if (!v4)
  {
    goto LABEL_14;
  }

  if (v4)
  {
    v9 = lpsrc[1];
    *(this + 19) |= 1u;
    this[1] = v9;
    v4 = *(lpsrc + 19);
    if ((v4 & 2) == 0)
    {
LABEL_7:
      if ((v4 & 4) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_25;
    }
  }

  else if ((v4 & 2) == 0)
  {
    goto LABEL_7;
  }

  v10 = *(lpsrc + 4);
  *(this + 19) |= 2u;
  *(this + 4) = v10;
  v4 = *(lpsrc + 19);
  if ((v4 & 4) == 0)
  {
LABEL_8:
    if ((v4 & 8) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_26;
  }

LABEL_25:
  v11 = *(lpsrc + 5);
  *(this + 19) |= 4u;
  *(this + 5) = v11;
  v4 = *(lpsrc + 19);
  if ((v4 & 8) == 0)
  {
LABEL_9:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_27;
  }

LABEL_26:
  v12 = *(lpsrc + 6);
  *(this + 19) |= 8u;
  *(this + 6) = v12;
  v4 = *(lpsrc + 19);
  if ((v4 & 0x10) == 0)
  {
LABEL_10:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_11;
    }

LABEL_28:
    v14 = *(lpsrc + 8);
    *(this + 19) |= 0x20u;
    *(this + 8) = v14;
    v4 = *(lpsrc + 19);
    if ((v4 & 0x40) == 0)
    {
LABEL_12:
      if ((v4 & 0x80) == 0)
      {
        goto LABEL_14;
      }

      goto LABEL_13;
    }

    goto LABEL_29;
  }

LABEL_27:
  v13 = *(lpsrc + 7);
  *(this + 19) |= 0x10u;
  *(this + 7) = v13;
  v4 = *(lpsrc + 19);
  if ((v4 & 0x20) != 0)
  {
    goto LABEL_28;
  }

LABEL_11:
  if ((v4 & 0x40) == 0)
  {
    goto LABEL_12;
  }

LABEL_29:
  v15 = *(lpsrc + 9);
  *(this + 19) |= 0x40u;
  *(this + 9) = v15;
  v4 = *(lpsrc + 19);
  if ((v4 & 0x80) != 0)
  {
LABEL_13:
    v5 = *(lpsrc + 10);
    *(this + 19) |= 0x80u;
    *(this + 10) = v5;
    v4 = *(lpsrc + 19);
  }

LABEL_14:
  if ((v4 & 0xFF00) == 0)
  {
    return;
  }

  if ((v4 & 0x100) != 0)
  {
    v6 = *(lpsrc + 11);
    *(this + 19) |= 0x100u;
    *(this + 11) = v6;
    v4 = *(lpsrc + 19);
  }

  if ((v4 & 0x200) != 0)
  {
    v7 = *(lpsrc + 14);
    *(this + 19) |= 0x200u;
    *(this + 14) = v7;
    v4 = *(lpsrc + 19);
  }

  v8 = MEMORY[0x277D82C30];
  if ((v4 & 0x400) == 0)
  {
    if ((v4 & 0x800) == 0)
    {
      goto LABEL_21;
    }

LABEL_34:
    v18 = *(lpsrc + 15);
    *(this + 19) |= 0x800u;
    *(this + 15) = v18;
    if ((*(lpsrc + 19) & 0x1000) == 0)
    {
      return;
    }

    goto LABEL_35;
  }

  v16 = lpsrc[6];
  *(this + 19) |= 0x400u;
  v17 = this[6];
  if (v17 == v8)
  {
    operator new();
  }

  std::string::operator=(v17, v16);
  v4 = *(lpsrc + 19);
  if ((v4 & 0x800) != 0)
  {
    goto LABEL_34;
  }

LABEL_21:
  if ((v4 & 0x1000) == 0)
  {
    return;
  }

LABEL_35:
  v19 = lpsrc[8];
  *(this + 19) |= 0x1000u;
  v20 = this[8];
  if (v20 == v8)
  {
    operator new();
  }

  std::string::operator=(v20, v19);
}

void sub_2373DB410(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t awd::metrics::ATM_quietly_recall::SharedDtor(uint64_t this)
{
  v1 = this;
  v2 = *(this + 48);
  v3 = MEMORY[0x277D82C30];
  if (v2 != MEMORY[0x277D82C30] && v2 != 0)
  {
    if (*(v2 + 23) < 0)
    {
      operator delete(*v2);
    }

    this = MEMORY[0x2383CAFA0](v2, 0x1012C40EC159624);
  }

  v5 = *(v1 + 72);
  if (v5 != v3 && v5 != 0)
  {
    if (*(v5 + 23) < 0)
    {
      operator delete(*v5);
    }

    JUMPOUT(0x2383CAFA0);
  }

  return this;
}

void awd::metrics::ATM_quietly_recall::~ATM_quietly_recall(awd::metrics::ATM_quietly_recall *this)
{
  *this = &unk_284A61650;
  awd::metrics::ATM_quietly_recall::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_284A61650;
  awd::metrics::ATM_quietly_recall::SharedDtor(this);
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  JUMPOUT(0x2383CAFA0);
}

uint64_t awd::metrics::ATM_quietly_recall::Clear(uint64_t this)
{
  v1 = *(this + 84);
  if (v1)
  {
    *(this + 8) = 0;
    *(this + 16) = 0;
    *(this + 24) = 0;
    *(this + 36) = 0;
    *(this + 28) = 0;
  }

  if ((v1 & 0xFF00) != 0)
  {
    *(this + 44) = 0;
    *(this + 56) = 0;
    v2 = MEMORY[0x277D82C30];
    if ((v1 & 0x400) != 0)
    {
      v3 = *(this + 48);
      if (v3 != MEMORY[0x277D82C30])
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

    *(this + 64) = 0;
    *(this + 60) = 0;
    if ((*(this + 85) & 0x40) != 0)
    {
      v4 = *(this + 72);
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

  *(this + 84) = 0;
  return this;
}

uint64_t awd::metrics::ATM_quietly_recall::MergePartialFromCodedStream(awd::metrics::ATM_quietly_recall *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
{
  v5 = MEMORY[0x277D82C30];
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

    v8 = TagFallback >> 3;
    v9 = TagFallback & 7;
    switch(TagFallback >> 3)
    {
      case 1u:
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

        *(this + 21) |= 1u;
        if (v13 < v10 && *v13 == 16)
        {
          v24 = v13 + 1;
          *(a2 + 1) = v24;
          goto LABEL_50;
        }

        continue;
      case 2u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_41;
        }

        v24 = *(a2 + 1);
        v10 = *(a2 + 2);
LABEL_50:
        if (v24 >= v10 || (v29 = *v24, v29 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 4);
          if (!result)
          {
            return result;
          }

          v30 = *(a2 + 1);
          v10 = *(a2 + 2);
        }

        else
        {
          *(this + 4) = v29;
          v30 = v24 + 1;
          *(a2 + 1) = v30;
        }

        *(this + 21) |= 2u;
        if (v30 >= v10 || *v30 != 24)
        {
          continue;
        }

        v21 = v30 + 1;
        *(a2 + 1) = v21;
LABEL_58:
        if (v21 >= v10 || (v31 = *v21, v31 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 5);
          if (!result)
          {
            return result;
          }

          v32 = *(a2 + 1);
          v10 = *(a2 + 2);
        }

        else
        {
          *(this + 5) = v31;
          v32 = v21 + 1;
          *(a2 + 1) = v32;
        }

        *(this + 21) |= 4u;
        if (v32 >= v10 || *v32 != 32)
        {
          continue;
        }

        v22 = v32 + 1;
        *(a2 + 1) = v22;
LABEL_66:
        v55 = 0;
        if (v22 >= v10 || (v33 = *v22, (v33 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v55);
          if (!result)
          {
            return result;
          }

          v33 = v55;
          v34 = *(a2 + 1);
          v10 = *(a2 + 2);
        }

        else
        {
          v34 = v22 + 1;
          *(a2 + 1) = v34;
        }

        *(this + 24) = v33 != 0;
        *(this + 21) |= 8u;
        if (v34 >= v10 || *v34 != 40)
        {
          continue;
        }

        v17 = v34 + 1;
        *(a2 + 1) = v17;
LABEL_74:
        if (v17 >= v10 || (v35 = *v17, v35 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 7);
          if (!result)
          {
            return result;
          }

          v36 = *(a2 + 1);
          v10 = *(a2 + 2);
        }

        else
        {
          *(this + 7) = v35;
          v36 = v17 + 1;
          *(a2 + 1) = v36;
        }

        *(this + 21) |= 0x10u;
        if (v36 >= v10 || *v36 != 48)
        {
          continue;
        }

        v25 = v36 + 1;
        *(a2 + 1) = v25;
LABEL_82:
        if (v25 >= v10 || (v37 = *v25, v37 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 8);
          if (!result)
          {
            return result;
          }

          v38 = *(a2 + 1);
          v10 = *(a2 + 2);
        }

        else
        {
          *(this + 8) = v37;
          v38 = v25 + 1;
          *(a2 + 1) = v38;
        }

        *(this + 21) |= 0x20u;
        if (v38 >= v10 || *v38 != 56)
        {
          continue;
        }

        v26 = v38 + 1;
        *(a2 + 1) = v26;
LABEL_90:
        if (v26 >= v10 || (v39 = *v26, v39 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 9);
          if (!result)
          {
            return result;
          }

          v40 = *(a2 + 1);
          v10 = *(a2 + 2);
        }

        else
        {
          *(this + 9) = v39;
          v40 = v26 + 1;
          *(a2 + 1) = v40;
        }

        *(this + 21) |= 0x40u;
        if (v40 >= v10 || *v40 != 64)
        {
          continue;
        }

        v23 = v40 + 1;
        *(a2 + 1) = v23;
LABEL_98:
        if (v23 >= v10 || (v41 = *v23, v41 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 10);
          if (!result)
          {
            return result;
          }

          v42 = *(a2 + 1);
          v10 = *(a2 + 2);
        }

        else
        {
          *(this + 10) = v41;
          v42 = v23 + 1;
          *(a2 + 1) = v42;
        }

        *(this + 21) |= 0x80u;
        if (v42 >= v10 || *v42 != 72)
        {
          continue;
        }

        v28 = v42 + 1;
        *(a2 + 1) = v28;
LABEL_106:
        if (v28 >= v10 || (v43 = *v28, v43 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 11);
          if (!result)
          {
            return result;
          }

          v44 = *(a2 + 1);
          v10 = *(a2 + 2);
        }

        else
        {
          *(this + 11) = v43;
          v44 = v28 + 1;
          *(a2 + 1) = v44;
        }

        *(this + 21) |= 0x100u;
        if (v44 >= v10 || *v44 != 80)
        {
          continue;
        }

        v19 = v44 + 1;
        *(a2 + 1) = v19;
LABEL_114:
        if (v19 >= v10 || (v45 = *v19, v45 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 14);
          if (!result)
          {
            return result;
          }

          v46 = *(a2 + 1);
          v10 = *(a2 + 2);
        }

        else
        {
          *(this + 14) = v45;
          v46 = v19 + 1;
          *(a2 + 1) = v46;
        }

        v27 = *(this + 21) | 0x200;
        *(this + 21) = v27;
        if (v46 >= v10 || *v46 != 90)
        {
          continue;
        }

        *(a2 + 1) = v46 + 1;
LABEL_122:
        *(this + 21) = v27 | 0x400;
        if (*(this + 6) == v5)
        {
          operator new();
        }

        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
        if (!result)
        {
          return result;
        }

        v47 = *(a2 + 1);
        v15 = *(a2 + 2);
        if (v47 >= v15 || *v47 != 96)
        {
          continue;
        }

        v16 = v47 + 1;
        *(a2 + 1) = v16;
LABEL_128:
        if (v16 >= v15 || (v48 = *v16, v48 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 15);
          if (!result)
          {
            return result;
          }

          v49 = *(a2 + 1);
          v15 = *(a2 + 2);
        }

        else
        {
          *(this + 15) = v48;
          v49 = v16 + 1;
          *(a2 + 1) = v49;
        }

        *(this + 21) |= 0x800u;
        if (v49 >= v15 || *v49 != 104)
        {
          continue;
        }

        v18 = v49 + 1;
        *(a2 + 1) = v18;
LABEL_136:
        if (v18 >= v15 || (v50 = *v18, v50 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 16);
          if (!result)
          {
            return result;
          }

          v51 = *(a2 + 1);
          v15 = *(a2 + 2);
        }

        else
        {
          *(this + 16) = v50;
          v51 = (v18 + 1);
          *(a2 + 1) = v51;
        }

        *(this + 21) |= 0x1000u;
        if (v15 - v51 < 2 || *v51 != 240 || v51[1] != 34)
        {
          continue;
        }

        v20 = (v51 + 2);
        *(a2 + 1) = v20;
        goto LABEL_145;
      case 3u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_41;
        }

        v21 = *(a2 + 1);
        v10 = *(a2 + 2);
        goto LABEL_58;
      case 4u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_41;
        }

        v22 = *(a2 + 1);
        v10 = *(a2 + 2);
        goto LABEL_66;
      case 5u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_41;
        }

        v17 = *(a2 + 1);
        v10 = *(a2 + 2);
        goto LABEL_74;
      case 6u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_41;
        }

        v25 = *(a2 + 1);
        v10 = *(a2 + 2);
        goto LABEL_82;
      case 7u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_41;
        }

        v26 = *(a2 + 1);
        v10 = *(a2 + 2);
        goto LABEL_90;
      case 8u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_41;
        }

        v23 = *(a2 + 1);
        v10 = *(a2 + 2);
        goto LABEL_98;
      case 9u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_41;
        }

        v28 = *(a2 + 1);
        v10 = *(a2 + 2);
        goto LABEL_106;
      case 0xAu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_41;
        }

        v19 = *(a2 + 1);
        v10 = *(a2 + 2);
        goto LABEL_114;
      case 0xBu:
        if (v9 != 2)
        {
          goto LABEL_41;
        }

        v27 = *(this + 21);
        goto LABEL_122;
      case 0xCu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_41;
        }

        v16 = *(a2 + 1);
        v15 = *(a2 + 2);
        goto LABEL_128;
      case 0xDu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_41;
        }

        v18 = *(a2 + 1);
        v15 = *(a2 + 2);
        goto LABEL_136;
      default:
        if (v8 == 558)
        {
          if ((TagFallback & 7) != 0)
          {
            goto LABEL_41;
          }

          v20 = *(a2 + 1);
          v15 = *(a2 + 2);
LABEL_145:
          if (v20 >= v15 || (v52 = *v20, v52 < 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 17);
            if (!result)
            {
              return result;
            }

            v53 = *(a2 + 1);
            v15 = *(a2 + 2);
          }

          else
          {
            *(this + 17) = v52;
            v53 = (v20 + 1);
            *(a2 + 1) = v53;
          }

          v14 = *(this + 21) | 0x2000;
          *(this + 21) = v14;
          if (v15 - v53 >= 2 && *v53 == 250 && v53[1] == 34)
          {
            *(a2 + 1) = v53 + 2;
            goto LABEL_154;
          }

          continue;
        }

        if (v8 == 559 && v9 == 2)
        {
          v14 = *(this + 21);
LABEL_154:
          *(this + 21) = v14 | 0x4000;
          if (*(this + 9) == v5)
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

          continue;
        }

LABEL_41:
        if (v9 != 4)
        {
          if ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(a2, TagFallback) & 1) == 0)
          {
            return 0;
          }

          continue;
        }

        return 1;
    }
  }
}

uint64_t awd::metrics::ATM_quietly_recall::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 84);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(1, *(this + 8), a2, a4);
    v6 = *(v5 + 84);
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

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(2, *(v5 + 16), a2, a4);
  v6 = *(v5 + 84);
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
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(3, *(v5 + 20), a2, a4);
  v6 = *(v5 + 84);
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
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(4, *(v5 + 24), a2, a4);
  v6 = *(v5 + 84);
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
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(5, *(v5 + 28), a2, a4);
  v6 = *(v5 + 84);
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
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(6, *(v5 + 32), a2, a4);
  v6 = *(v5 + 84);
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
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(7, *(v5 + 36), a2, a4);
  v6 = *(v5 + 84);
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
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(8, *(v5 + 40), a2, a4);
  v6 = *(v5 + 84);
  if ((v6 & 0x100) == 0)
  {
LABEL_10:
    if ((v6 & 0x200) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_26;
  }

LABEL_25:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(9, *(v5 + 44), a2, a4);
  v6 = *(v5 + 84);
  if ((v6 & 0x200) == 0)
  {
LABEL_11:
    if ((v6 & 0x400) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_27;
  }

LABEL_26:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xA, *(v5 + 56), a2, a4);
  v6 = *(v5 + 84);
  if ((v6 & 0x400) == 0)
  {
LABEL_12:
    if ((v6 & 0x800) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_28;
  }

LABEL_27:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
  v6 = *(v5 + 84);
  if ((v6 & 0x800) == 0)
  {
LABEL_13:
    if ((v6 & 0x1000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_29;
  }

LABEL_28:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xC, *(v5 + 60), a2, a4);
  v6 = *(v5 + 84);
  if ((v6 & 0x1000) == 0)
  {
LABEL_14:
    if ((v6 & 0x2000) == 0)
    {
      goto LABEL_15;
    }

LABEL_30:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x22E, *(v5 + 68), a2, a4);
    if ((*(v5 + 84) & 0x4000) == 0)
    {
      return this;
    }

    goto LABEL_31;
  }

LABEL_29:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xD, *(v5 + 64), a2, a4);
  v6 = *(v5 + 84);
  if ((v6 & 0x2000) != 0)
  {
    goto LABEL_30;
  }

LABEL_15:
  if ((v6 & 0x4000) == 0)
  {
    return this;
  }

LABEL_31:

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
}

uint64_t awd::metrics::ATM_quietly_recall::ByteSize(awd::metrics::ATM_quietly_recall *this, unint64_t a2)
{
  v3 = *(this + 21);
  if (!v3)
  {
    v5 = 0;
    goto LABEL_37;
  }

  if (v3)
  {
    v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 1)) + 1;
    v3 = *(this + 21);
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

  v6 = *(this + 4);
  if (v6 >= 0x80)
  {
    v7 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v6) + 1;
    v3 = *(this + 21);
  }

  else
  {
    v7 = 2;
  }

  v4 += v7;
LABEL_11:
  if ((v3 & 4) != 0)
  {
    v8 = *(this + 5);
    if (v8 >= 0x80)
    {
      v9 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v8) + 1;
      v3 = *(this + 21);
    }

    else
    {
      v9 = 2;
    }

    v4 += v9;
  }

  v5 = ((v3 >> 2) & 2) + v4;
  if ((v3 & 0x10) != 0)
  {
    v10 = *(this + 7);
    if (v10 >= 0x80)
    {
      v11 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v10) + 1;
      v3 = *(this + 21);
    }

    else
    {
      v11 = 2;
    }

    v5 = (v11 + v5);
    if ((v3 & 0x20) == 0)
    {
LABEL_18:
      if ((v3 & 0x40) == 0)
      {
        goto LABEL_19;
      }

      goto LABEL_29;
    }
  }

  else if ((v3 & 0x20) == 0)
  {
    goto LABEL_18;
  }

  v12 = *(this + 8);
  if (v12 >= 0x80)
  {
    v13 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v12) + 1;
    v3 = *(this + 21);
  }

  else
  {
    v13 = 2;
  }

  v5 = (v13 + v5);
  if ((v3 & 0x40) == 0)
  {
LABEL_19:
    if ((v3 & 0x80) == 0)
    {
      goto LABEL_37;
    }

    goto LABEL_33;
  }

LABEL_29:
  v14 = *(this + 9);
  if (v14 >= 0x80)
  {
    v15 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v14) + 1;
    v3 = *(this + 21);
  }

  else
  {
    v15 = 2;
  }

  v5 = (v15 + v5);
  if ((v3 & 0x80) != 0)
  {
LABEL_33:
    v16 = *(this + 10);
    if (v16 >= 0x80)
    {
      v17 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v16) + 1;
      v3 = *(this + 21);
    }

    else
    {
      v17 = 2;
    }

    v5 = (v17 + v5);
  }

LABEL_37:
  if ((v3 & 0xFF00) == 0)
  {
    goto LABEL_84;
  }

  if ((v3 & 0x100) != 0)
  {
    v18 = *(this + 11);
    if (v18 >= 0x80)
    {
      v19 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v18) + 1;
      v3 = *(this + 21);
    }

    else
    {
      v19 = 2;
    }

    v5 = (v19 + v5);
    if ((v3 & 0x200) == 0)
    {
LABEL_40:
      if ((v3 & 0x400) == 0)
      {
        goto LABEL_41;
      }

      goto LABEL_54;
    }
  }

  else if ((v3 & 0x200) == 0)
  {
    goto LABEL_40;
  }

  v20 = *(this + 14);
  if (v20 >= 0x80)
  {
    v21 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v20) + 1;
    v3 = *(this + 21);
  }

  else
  {
    v21 = 2;
  }

  v5 = (v21 + v5);
  if ((v3 & 0x400) == 0)
  {
LABEL_41:
    if ((v3 & 0x800) == 0)
    {
      goto LABEL_42;
    }

    goto LABEL_63;
  }

LABEL_54:
  v22 = *(this + 6);
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
    v27 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v26);
    v23 = *(v22 + 23);
    v25 = *(v22 + 8);
    v3 = *(this + 21);
    v24 = *(v22 + 23);
  }

  else
  {
    v27 = 1;
  }

  if (v24 < 0)
  {
    v23 = v25;
  }

  v5 = (v5 + v27 + v23 + 1);
  if ((v3 & 0x800) == 0)
  {
LABEL_42:
    if ((v3 & 0x1000) == 0)
    {
      goto LABEL_43;
    }

    goto LABEL_67;
  }

LABEL_63:
  v28 = *(this + 15);
  if (v28 >= 0x80)
  {
    v29 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v28) + 1;
    v3 = *(this + 21);
  }

  else
  {
    v29 = 2;
  }

  v5 = (v29 + v5);
  if ((v3 & 0x1000) == 0)
  {
LABEL_43:
    if ((v3 & 0x2000) == 0)
    {
      goto LABEL_44;
    }

    goto LABEL_71;
  }

LABEL_67:
  v30 = *(this + 16);
  if (v30 >= 0x80)
  {
    v31 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v30) + 1;
    v3 = *(this + 21);
  }

  else
  {
    v31 = 2;
  }

  v5 = (v31 + v5);
  if ((v3 & 0x2000) == 0)
  {
LABEL_44:
    if ((v3 & 0x4000) == 0)
    {
      goto LABEL_84;
    }

    goto LABEL_75;
  }

LABEL_71:
  v32 = *(this + 17);
  if (v32 >= 0x80)
  {
    v33 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v32) + 2;
    v3 = *(this + 21);
  }

  else
  {
    v33 = 3;
  }

  v5 = (v33 + v5);
  if ((v3 & 0x4000) != 0)
  {
LABEL_75:
    v34 = *(this + 9);
    v35 = *(v34 + 23);
    v36 = v35;
    v37 = *(v34 + 8);
    if ((v35 & 0x80u) == 0)
    {
      v38 = *(v34 + 23);
    }

    else
    {
      v38 = v37;
    }

    if (v38 >= 0x80)
    {
      v39 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v38);
      v35 = *(v34 + 23);
      v37 = *(v34 + 8);
      v36 = *(v34 + 23);
    }

    else
    {
      v39 = 1;
    }

    if (v36 < 0)
    {
      v35 = v37;
    }

    v5 = (v5 + v39 + v35 + 2);
  }

LABEL_84:
  *(this + 20) = v5;
  return v5;
}

void awd::metrics::ATM_quietly_recall::CheckTypeAndMergeFrom(const std::string **this, const std::string **lpsrc)
{
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  if (lpsrc == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v23);
  }

  v4 = *(lpsrc + 21);
  if (!v4)
  {
    goto LABEL_14;
  }

  if (v4)
  {
    v9 = lpsrc[1];
    *(this + 21) |= 1u;
    this[1] = v9;
    v4 = *(lpsrc + 21);
    if ((v4 & 2) == 0)
    {
LABEL_7:
      if ((v4 & 4) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_27;
    }
  }

  else if ((v4 & 2) == 0)
  {
    goto LABEL_7;
  }

  v10 = *(lpsrc + 4);
  *(this + 21) |= 2u;
  *(this + 4) = v10;
  v4 = *(lpsrc + 21);
  if ((v4 & 4) == 0)
  {
LABEL_8:
    if ((v4 & 8) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_28;
  }

LABEL_27:
  v11 = *(lpsrc + 5);
  *(this + 21) |= 4u;
  *(this + 5) = v11;
  v4 = *(lpsrc + 21);
  if ((v4 & 8) == 0)
  {
LABEL_9:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_29;
  }

LABEL_28:
  v12 = *(lpsrc + 24);
  *(this + 21) |= 8u;
  *(this + 24) = v12;
  v4 = *(lpsrc + 21);
  if ((v4 & 0x10) == 0)
  {
LABEL_10:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_11;
    }

LABEL_30:
    v14 = *(lpsrc + 8);
    *(this + 21) |= 0x20u;
    *(this + 8) = v14;
    v4 = *(lpsrc + 21);
    if ((v4 & 0x40) == 0)
    {
LABEL_12:
      if ((v4 & 0x80) == 0)
      {
        goto LABEL_14;
      }

      goto LABEL_13;
    }

    goto LABEL_31;
  }

LABEL_29:
  v13 = *(lpsrc + 7);
  *(this + 21) |= 0x10u;
  *(this + 7) = v13;
  v4 = *(lpsrc + 21);
  if ((v4 & 0x20) != 0)
  {
    goto LABEL_30;
  }

LABEL_11:
  if ((v4 & 0x40) == 0)
  {
    goto LABEL_12;
  }

LABEL_31:
  v15 = *(lpsrc + 9);
  *(this + 21) |= 0x40u;
  *(this + 9) = v15;
  v4 = *(lpsrc + 21);
  if ((v4 & 0x80) != 0)
  {
LABEL_13:
    v5 = *(lpsrc + 10);
    *(this + 21) |= 0x80u;
    *(this + 10) = v5;
    v4 = *(lpsrc + 21);
  }

LABEL_14:
  if ((v4 & 0xFF00) == 0)
  {
    return;
  }

  if ((v4 & 0x100) != 0)
  {
    v6 = *(lpsrc + 11);
    *(this + 21) |= 0x100u;
    *(this + 11) = v6;
    v4 = *(lpsrc + 21);
  }

  if ((v4 & 0x200) != 0)
  {
    v7 = *(lpsrc + 14);
    *(this + 21) |= 0x200u;
    *(this + 14) = v7;
    v4 = *(lpsrc + 21);
  }

  v8 = MEMORY[0x277D82C30];
  if ((v4 & 0x400) != 0)
  {
    v16 = lpsrc[6];
    *(this + 21) |= 0x400u;
    v17 = this[6];
    if (v17 == v8)
    {
      operator new();
    }

    std::string::operator=(v17, v16);
    v4 = *(lpsrc + 21);
    if ((v4 & 0x800) == 0)
    {
LABEL_21:
      if ((v4 & 0x1000) == 0)
      {
        goto LABEL_22;
      }

      goto LABEL_37;
    }
  }

  else if ((v4 & 0x800) == 0)
  {
    goto LABEL_21;
  }

  v18 = *(lpsrc + 15);
  *(this + 21) |= 0x800u;
  *(this + 15) = v18;
  v4 = *(lpsrc + 21);
  if ((v4 & 0x1000) == 0)
  {
LABEL_22:
    if ((v4 & 0x2000) == 0)
    {
      goto LABEL_23;
    }

LABEL_38:
    v20 = *(lpsrc + 17);
    *(this + 21) |= 0x2000u;
    *(this + 17) = v20;
    if ((*(lpsrc + 21) & 0x4000) == 0)
    {
      return;
    }

    goto LABEL_39;
  }

LABEL_37:
  v19 = *(lpsrc + 16);
  *(this + 21) |= 0x1000u;
  *(this + 16) = v19;
  v4 = *(lpsrc + 21);
  if ((v4 & 0x2000) != 0)
  {
    goto LABEL_38;
  }

LABEL_23:
  if ((v4 & 0x4000) == 0)
  {
    return;
  }

LABEL_39:
  v21 = lpsrc[9];
  *(this + 21) |= 0x4000u;
  v22 = this[9];
  if (v22 == v8)
  {
    operator new();
  }

  std::string::operator=(v22, v21);
}

void sub_2373DC634(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void _GLOBAL__sub_I_IMSMetrics_pb_cc(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  if ((_MergedGlobals_15 & 1) == 0)
  {
    _MergedGlobals_15 = 1;
    wireless_diagnostics::google::protobuf::internal::VerifyVersion(0x1E9808, 2005000, "/Library/Caches/com.apple.xbs/Sources/CoreTelephony/CommCenter/Source/AWDMetrics/cpp/IMSMetrics.pb.cc", a4);
    operator new();
  }
}

void operator delete[]()
{
    ;
  }
}

void operator delete(void *__p)
{
    ;
  }
}

void operator delete()
{
    ;
  }
}

void operator new[]()
{
    ;
  }
}

void operator new()
{
    ;
  }
}