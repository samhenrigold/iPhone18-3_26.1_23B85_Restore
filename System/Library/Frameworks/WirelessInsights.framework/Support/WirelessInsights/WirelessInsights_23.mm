uint64_t awd::metrics::KCellularServiceStatus::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v4 = a2;
  v5 = this;
  v6 = *(this + 116);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(1, *(this + 8), a2, a4);
    v6 = *(v5 + 116);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_28;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(2, *(v5 + 16), v4, a4);
  v6 = *(v5 + 116);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_29;
  }

LABEL_28:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(5, *(v5 + 60), v4, a4);
  v6 = *(v5 + 116);
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_30;
  }

LABEL_29:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(6, *(v5 + 20), v4, a4);
  v6 = *(v5 + 116);
  if ((v6 & 0x10) == 0)
  {
LABEL_6:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_31;
  }

LABEL_30:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBytes();
  v6 = *(v5 + 116);
  if ((v6 & 0x20) == 0)
  {
LABEL_7:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_32;
  }

LABEL_31:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBytes();
  v6 = *(v5 + 116);
  if ((v6 & 0x40) == 0)
  {
LABEL_8:
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_33;
  }

LABEL_32:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(9, *(v5 + 40), v4, a4);
  v6 = *(v5 + 116);
  if ((v6 & 0x80) == 0)
  {
LABEL_9:
    if ((v6 & 0x100) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_34;
  }

LABEL_33:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(0xA, *(v5 + 44), v4, a4);
  v6 = *(v5 + 116);
  if ((v6 & 0x100) == 0)
  {
LABEL_10:
    if ((v6 & 0x200) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_35;
  }

LABEL_34:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(0xB, *(v5 + 48), v4, a4);
  v6 = *(v5 + 116);
  if ((v6 & 0x200) == 0)
  {
LABEL_11:
    if ((v6 & 0x400) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_36;
  }

LABEL_35:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xC, *(v5 + 52), v4, a4);
  v6 = *(v5 + 116);
  if ((v6 & 0x400) == 0)
  {
LABEL_12:
    if ((v6 & 0x800) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_37;
  }

LABEL_36:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xD, *(v5 + 56), v4, a4);
  v6 = *(v5 + 116);
  if ((v6 & 0x800) == 0)
  {
LABEL_13:
    if ((v6 & 0x1000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_38;
  }

LABEL_37:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xE, *(v5 + 64), v4, a4);
  v6 = *(v5 + 116);
  if ((v6 & 0x1000) == 0)
  {
LABEL_14:
    if ((v6 & 0x2000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_39;
  }

LABEL_38:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xF, *(v5 + 68), v4, a4);
  v6 = *(v5 + 116);
  if ((v6 & 0x2000) == 0)
  {
LABEL_15:
    if ((v6 & 0x4000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_40;
  }

LABEL_39:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(0x10, *(v5 + 72), v4, a4);
  v6 = *(v5 + 116);
  if ((v6 & 0x4000) == 0)
  {
LABEL_16:
    if ((v6 & 0x8000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_41;
  }

LABEL_40:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(0x11, *(v5 + 76), v4, a4);
  v6 = *(v5 + 116);
  if ((v6 & 0x8000) == 0)
  {
LABEL_17:
    if ((v6 & 0x10000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_42;
  }

LABEL_41:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x12, *(v5 + 80), v4, a4);
  v6 = *(v5 + 116);
  if ((v6 & 0x10000) == 0)
  {
LABEL_18:
    if ((v6 & 0x20000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_43;
  }

LABEL_42:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x13, *(v5 + 84), v4, a4);
  v6 = *(v5 + 116);
  if ((v6 & 0x20000) == 0)
  {
LABEL_19:
    if ((v6 & 0x40000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_44;
  }

LABEL_43:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteSInt32(0x14, *(v5 + 88), v4, a4);
  v6 = *(v5 + 116);
  if ((v6 & 0x40000) == 0)
  {
LABEL_20:
    if ((v6 & 0x80000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_45;
  }

LABEL_44:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteSInt32(0x15, *(v5 + 92), v4, a4);
  v6 = *(v5 + 116);
  if ((v6 & 0x80000) == 0)
  {
LABEL_21:
    if ((v6 & 0x100000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_46;
  }

LABEL_45:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(0x16, *(v5 + 61), v4, a4);
  v6 = *(v5 + 116);
  if ((v6 & 0x100000) == 0)
  {
LABEL_22:
    if ((v6 & 0x200000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_47;
  }

LABEL_46:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(0x17, *(v5 + 96), v4, a4);
  v6 = *(v5 + 116);
  if ((v6 & 0x200000) == 0)
  {
LABEL_23:
    if ((v6 & 0x400000) == 0)
    {
      goto LABEL_24;
    }

LABEL_48:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x19, *(v5 + 104), v4, a4);
    if ((*(v5 + 116) & 0x800000) == 0)
    {
      return this;
    }

    goto LABEL_49;
  }

LABEL_47:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x18, *(v5 + 100), v4, a4);
  v6 = *(v5 + 116);
  if ((v6 & 0x400000) != 0)
  {
    goto LABEL_48;
  }

LABEL_24:
  if ((v6 & 0x800000) == 0)
  {
    return this;
  }

LABEL_49:
  v7 = *(v5 + 108);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(0x1A, v7, v4, a4);
}

uint64_t awd::metrics::KCellularServiceStatus::ByteSize(awd::metrics::KCellularServiceStatus *this, unint64_t a2)
{
  v3 = *(this + 29);
  if (!v3)
  {
    v5 = 0;
    goto LABEL_53;
  }

  if (v3)
  {
    v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 1), a2) + 1;
    v3 = *(this + 29);
    if ((v3 & 2) == 0)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v4 = 0;
    if ((v3 & 2) == 0)
    {
      goto LABEL_13;
    }
  }

  v6 = *(this + 4);
  if ((v6 & 0x80000000) != 0)
  {
    v7 = 11;
  }

  else if (v6 >= 0x80)
  {
    v7 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v6, a2) + 1;
    v3 = *(this + 29);
  }

  else
  {
    v7 = 2;
  }

  v4 += v7;
LABEL_13:
  v5 = ((v3 >> 1) & 2) + v4;
  if ((v3 & 8) != 0)
  {
    v8 = *(this + 5);
    if (v8 >= 0x80)
    {
      v9 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v8, a2) + 1;
      v3 = *(this + 29);
    }

    else
    {
      v9 = 2;
    }

    v5 = (v9 + v5);
    if ((v3 & 0x10) == 0)
    {
LABEL_15:
      if ((v3 & 0x20) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_32;
    }
  }

  else if ((v3 & 0x10) == 0)
  {
    goto LABEL_15;
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
    v15 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v14, a2);
    v11 = *(v10 + 23);
    v13 = *(v10 + 8);
    v3 = *(this + 29);
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
LABEL_16:
    if ((v3 & 0x40) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_41;
  }

LABEL_32:
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
    v21 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v20, a2);
    v17 = *(v16 + 23);
    v19 = *(v16 + 8);
    v3 = *(this + 29);
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
LABEL_17:
    if ((v3 & 0x80) == 0)
    {
      goto LABEL_53;
    }

    goto LABEL_47;
  }

LABEL_41:
  v22 = *(this + 10);
  if ((v22 & 0x80000000) != 0)
  {
    v23 = 11;
  }

  else if (v22 >= 0x80)
  {
    v23 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v22, a2) + 1;
    v3 = *(this + 29);
  }

  else
  {
    v23 = 2;
  }

  v5 = (v23 + v5);
  if ((v3 & 0x80) != 0)
  {
LABEL_47:
    v24 = *(this + 11);
    if ((v24 & 0x80000000) != 0)
    {
      v25 = 11;
    }

    else if (v24 >= 0x80)
    {
      v25 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v24, a2) + 1;
      v3 = *(this + 29);
    }

    else
    {
      v25 = 2;
    }

    v5 = (v25 + v5);
  }

LABEL_53:
  if ((v3 & 0xFF00) == 0)
  {
    goto LABEL_101;
  }

  if ((v3 & 0x100) != 0)
  {
    v26 = *(this + 12);
    if ((v26 & 0x80000000) != 0)
    {
      v27 = 11;
    }

    else if (v26 >= 0x80)
    {
      v27 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v26, a2) + 1;
      v3 = *(this + 29);
    }

    else
    {
      v27 = 2;
    }

    v5 = (v27 + v5);
    if ((v3 & 0x200) == 0)
    {
LABEL_56:
      if ((v3 & 0x400) == 0)
      {
        goto LABEL_57;
      }

      goto LABEL_73;
    }
  }

  else if ((v3 & 0x200) == 0)
  {
    goto LABEL_56;
  }

  v28 = *(this + 13);
  if (v28 >= 0x80)
  {
    v29 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v28, a2) + 1;
    v3 = *(this + 29);
  }

  else
  {
    v29 = 2;
  }

  v5 = (v29 + v5);
  if ((v3 & 0x400) == 0)
  {
LABEL_57:
    if ((v3 & 0x800) == 0)
    {
      goto LABEL_58;
    }

    goto LABEL_77;
  }

LABEL_73:
  v30 = *(this + 14);
  if (v30 >= 0x80)
  {
    v31 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v30, a2) + 1;
    v3 = *(this + 29);
  }

  else
  {
    v31 = 2;
  }

  v5 = (v31 + v5);
  if ((v3 & 0x800) == 0)
  {
LABEL_58:
    if ((v3 & 0x1000) == 0)
    {
      goto LABEL_59;
    }

    goto LABEL_81;
  }

LABEL_77:
  v32 = *(this + 16);
  if (v32 >= 0x80)
  {
    v33 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v32, a2) + 1;
    v3 = *(this + 29);
  }

  else
  {
    v33 = 2;
  }

  v5 = (v33 + v5);
  if ((v3 & 0x1000) == 0)
  {
LABEL_59:
    if ((v3 & 0x2000) == 0)
    {
      goto LABEL_60;
    }

    goto LABEL_85;
  }

LABEL_81:
  v34 = *(this + 17);
  if (v34 >= 0x80)
  {
    v35 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v34, a2) + 1;
    v3 = *(this + 29);
  }

  else
  {
    v35 = 2;
  }

  v5 = (v35 + v5);
  if ((v3 & 0x2000) == 0)
  {
LABEL_60:
    if ((v3 & 0x4000) == 0)
    {
      goto LABEL_61;
    }

    goto LABEL_91;
  }

LABEL_85:
  v36 = *(this + 18);
  if ((v36 & 0x80000000) != 0)
  {
    v37 = 12;
  }

  else if (v36 >= 0x80)
  {
    v37 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v36, a2) + 2;
    v3 = *(this + 29);
  }

  else
  {
    v37 = 3;
  }

  v5 = (v37 + v5);
  if ((v3 & 0x4000) == 0)
  {
LABEL_61:
    if ((v3 & 0x8000) == 0)
    {
      goto LABEL_101;
    }

    goto LABEL_97;
  }

LABEL_91:
  v38 = *(this + 19);
  if ((v38 & 0x80000000) != 0)
  {
    v39 = 12;
  }

  else if (v38 >= 0x80)
  {
    v39 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v38, a2) + 2;
    v3 = *(this + 29);
  }

  else
  {
    v39 = 3;
  }

  v5 = (v39 + v5);
  if ((v3 & 0x8000) != 0)
  {
LABEL_97:
    v40 = *(this + 20);
    if (v40 >= 0x80)
    {
      v41 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v40, a2) + 2;
      v3 = *(this + 29);
    }

    else
    {
      v41 = 3;
    }

    v5 = (v41 + v5);
  }

LABEL_101:
  if ((v3 & 0xFF0000) == 0)
  {
    goto LABEL_146;
  }

  if ((v3 & 0x10000) != 0)
  {
    v42 = *(this + 21);
    if (v42 >= 0x80)
    {
      v43 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v42, a2) + 2;
      v3 = *(this + 29);
    }

    else
    {
      v43 = 3;
    }

    LODWORD(v5) = v43 + v5;
    if ((v3 & 0x20000) == 0)
    {
LABEL_104:
      if ((v3 & 0x40000) == 0)
      {
        goto LABEL_118;
      }

      goto LABEL_114;
    }
  }

  else if ((v3 & 0x20000) == 0)
  {
    goto LABEL_104;
  }

  v44 = ((2 * *(this + 22)) ^ (*(this + 22) >> 31));
  if (v44 >= 0x80)
  {
    v45 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v44, a2) + 2;
    v3 = *(this + 29);
  }

  else
  {
    v45 = 3;
  }

  LODWORD(v5) = v45 + v5;
  if ((v3 & 0x40000) != 0)
  {
LABEL_114:
    v46 = ((2 * *(this + 23)) ^ (*(this + 23) >> 31));
    if (v46 >= 0x80)
    {
      v47 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v46, a2) + 2;
      v3 = *(this + 29);
    }

    else
    {
      v47 = 3;
    }

    LODWORD(v5) = v47 + v5;
  }

LABEL_118:
  if ((v3 & 0x80000) != 0)
  {
    v5 = (v5 + 3);
  }

  else
  {
    v5 = v5;
  }

  if ((v3 & 0x100000) != 0)
  {
    v48 = *(this + 24);
    if ((v48 & 0x80000000) != 0)
    {
      v49 = 12;
    }

    else if (v48 >= 0x80)
    {
      v49 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v48, a2) + 2;
      v3 = *(this + 29);
    }

    else
    {
      v49 = 3;
    }

    v5 = (v49 + v5);
    if ((v3 & 0x200000) == 0)
    {
LABEL_123:
      if ((v3 & 0x400000) == 0)
      {
        goto LABEL_124;
      }

      goto LABEL_136;
    }
  }

  else if ((v3 & 0x200000) == 0)
  {
    goto LABEL_123;
  }

  v50 = *(this + 25);
  if (v50 >= 0x80)
  {
    v51 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v50, a2) + 2;
    v3 = *(this + 29);
  }

  else
  {
    v51 = 3;
  }

  v5 = (v51 + v5);
  if ((v3 & 0x400000) == 0)
  {
LABEL_124:
    if ((v3 & 0x800000) == 0)
    {
      goto LABEL_146;
    }

    goto LABEL_140;
  }

LABEL_136:
  v52 = *(this + 26);
  if (v52 >= 0x80)
  {
    v53 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v52, a2) + 2;
    v3 = *(this + 29);
  }

  else
  {
    v53 = 3;
  }

  v5 = (v53 + v5);
  if ((v3 & 0x800000) != 0)
  {
LABEL_140:
    v54 = *(this + 27);
    if ((v54 & 0x80000000) != 0)
    {
      v55 = 12;
    }

    else if (v54 >= 0x80)
    {
      v55 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v54, a2) + 2;
    }

    else
    {
      v55 = 3;
    }

    v5 = (v55 + v5);
  }

LABEL_146:
  *(this + 28) = v5;
  return v5;
}

uint64_t awd::metrics::protobuf_ShutdownFile_AwddMetricsGeneral_2eproto(awd::metrics *this)
{
  if (awd::metrics::MetricAwddLocation::default_instance_)
  {
    (*(*awd::metrics::MetricAwddLocation::default_instance_ + 8))(awd::metrics::MetricAwddLocation::default_instance_);
  }

  if (awd::metrics::MetricCCDiagnosticsAllowed::default_instance_)
  {
    (*(*awd::metrics::MetricCCDiagnosticsAllowed::default_instance_ + 8))(awd::metrics::MetricCCDiagnosticsAllowed::default_instance_);
  }

  if (awd::metrics::AwddShutdown::default_instance_)
  {
    (*(*awd::metrics::AwddShutdown::default_instance_ + 8))(awd::metrics::AwddShutdown::default_instance_);
  }

  if (awd::metrics::AwddStartup::default_instance_)
  {
    (*(*awd::metrics::AwddStartup::default_instance_ + 8))(awd::metrics::AwddStartup::default_instance_);
  }

  if (awd::metrics::BatteryPowerLevel::default_instance_)
  {
    (*(*awd::metrics::BatteryPowerLevel::default_instance_ + 8))(awd::metrics::BatteryPowerLevel::default_instance_);
  }

  result = awd::metrics::AwddAggregation::default_instance_;
  if (awd::metrics::AwddAggregation::default_instance_)
  {
    v2 = *(*awd::metrics::AwddAggregation::default_instance_ + 8);

    return v2();
  }

  return result;
}

uint64_t awd::metrics::MetricCCDiagnosticsAllowed::MetricCCDiagnosticsAllowed(uint64_t this)
{
  *(this + 20) = 0;
  *(this + 16) = 0;
  *this = off_1002B88A0;
  *(this + 8) = 0;
  return this;
}

void *awd::metrics::AwddShutdown::AwddShutdown(void *this)
{
  this[1] = 0;
  this[2] = 0;
  *this = off_1002B8918;
  return this;
}

void *awd::metrics::AwddStartup::AwddStartup(void *this)
{
  this[1] = 0;
  this[2] = 0;
  *this = off_1002B8990;
  return this;
}

void awd::metrics::protobuf_AddDesc_AwddMetricsGeneral_2eproto(awd::metrics *this)
{
  v1 = awd::metrics::protobuf_AddDesc_AwddMetricsGeneral_2eproto_once_;
  __dmb(0xBu);
  if (v1 != 2)
  {
    v2[1] = awd::metrics::protobuf_AddDesc_AwddMetricsGeneral_2eproto_impl;
    v3 = 0;
    wireless_diagnostics::google::protobuf::GoogleOnceInitImpl();
    wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(v2);
  }
}

void sub_1001E5EF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

double awd::metrics::MetricAwddLocation::MergeFrom(awd::metrics::MetricAwddLocation *this, const awd::metrics::MetricAwddLocation *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v7);
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
    v6 = *(a2 + 4);
    *(this + 11) |= 8u;
    *(this + 4) = v6;
  }

  return result;
}

void sub_1001E5FFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::metrics::MetricAwddLocation::~MetricAwddLocation(awd::metrics::MetricAwddLocation *this)
{
  *this = off_1002B8828;
  awd::metrics::protobuf_AddDesc_AwddMetricsGeneral_2eproto(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  awd::metrics::MetricAwddLocation::~MetricAwddLocation(this);

  operator delete();
}

uint64_t awd::metrics::MetricAwddLocation::Clear(uint64_t this)
{
  if (*(this + 44))
  {
    *(this + 24) = 0u;
    *(this + 8) = 0u;
  }

  *(this + 44) = 0;
  return this;
}

uint64_t awd::metrics::MetricAwddLocation::MergePartialFromCodedStream(awd::metrics::MetricAwddLocation *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
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
          if ((TagFallback & 7) != 0)
          {
            goto LABEL_25;
          }

          v12 = *(a2 + 1);
          v10 = *(a2 + 2);
LABEL_29:
          if (v12 >= v10 || (v13 = *v12, v13 < 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 4);
            if (!result)
            {
              return result;
            }

            v14 = *(a2 + 1);
            v10 = *(a2 + 2);
          }

          else
          {
            *(this + 4) = v13;
            v14 = v12 + 1;
            *(a2 + 1) = v14;
          }

          *(this + 11) |= 8u;
          if (v14 < v10 && *v14 == 33)
          {
            *(a2 + 1) = v14 + 1;
            goto LABEL_37;
          }
        }

        else
        {
          if (v7 != 4 || v8 != 1)
          {
            goto LABEL_25;
          }

LABEL_37:
          v16 = 0;
          if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, &v16) & 1) == 0)
          {
            return 0;
          }

          *(this + 3) = v16;
          *(this + 11) |= 4u;
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
        goto LABEL_25;
      }

      v16 = 0;
      if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, &v16) & 1) == 0)
      {
        return 0;
      }

      *(this + 1) = v16;
      *(this + 11) |= 1u;
      v9 = *(a2 + 1);
      if (v9 < *(a2 + 2) && *v9 == 17)
      {
        *(a2 + 1) = v9 + 1;
LABEL_20:
        v16 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, &v16) & 1) == 0)
        {
          return 0;
        }

        *(this + 2) = v16;
        *(this + 11) |= 2u;
        v11 = *(a2 + 1);
        v10 = *(a2 + 2);
        if (v11 < v10 && *v11 == 24)
        {
          v12 = v11 + 1;
          *(a2 + 1) = v12;
          goto LABEL_29;
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

  while ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(a2, TagFallback, a3) & 1) != 0);
  return 0;
}

uint64_t awd::metrics::MetricAwddLocation::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 44);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(1, a2, *(this + 8), a3);
    v6 = *(v5 + 44);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 8) == 0)
      {
        goto LABEL_4;
      }

LABEL_8:
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(3, *(v5 + 32), a2, a4);
      if ((*(v5 + 44) & 4) == 0)
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

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(2, a2, *(v5 + 16), a3);
  v6 = *(v5 + 44);
  if ((v6 & 8) != 0)
  {
    goto LABEL_8;
  }

LABEL_4:
  if ((v6 & 4) == 0)
  {
    return this;
  }

LABEL_9:
  v7 = *(v5 + 24);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(4, a2, v7, a3);
}

uint64_t awd::metrics::MetricAwddLocation::ByteSize(wireless_diagnostics::google::protobuf::io::CodedOutputStream **this, unint64_t a2)
{
  v3 = *(this + 44);
  if (*(this + 44))
  {
    v4 = (v3 << 31 >> 31) & 9;
    if ((v3 & 2) != 0)
    {
      v4 += 9;
    }

    if ((v3 & 4) != 0)
    {
      v5 = v4 + 9;
    }

    else
    {
      v5 = v4;
    }

    if ((v3 & 8) != 0)
    {
      v5 = v5 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(this[4], a2) + 1;
    }
  }

  else
  {
    v5 = 0;
  }

  *(this + 10) = v5;
  return v5;
}

void awd::metrics::MetricCCDiagnosticsAllowed::MergeFrom(awd::metrics::MetricCCDiagnosticsAllowed *this, const awd::metrics::MetricCCDiagnosticsAllowed *a2)
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
      v5 = *(a2 + 16);
      *(this + 6) |= 1u;
      *(this + 16) = v5;
      v4 = *(a2 + 6);
    }

    if ((v4 & 2) != 0)
    {
      v6 = *(a2 + 1);
      *(this + 6) |= 2u;
      *(this + 1) = v6;
    }
  }
}

void sub_1001E652C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::metrics::MetricCCDiagnosticsAllowed::~MetricCCDiagnosticsAllowed(awd::metrics::MetricCCDiagnosticsAllowed *this)
{
  *this = off_1002B88A0;
  awd::metrics::protobuf_AddDesc_AwddMetricsGeneral_2eproto(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  awd::metrics::MetricCCDiagnosticsAllowed::~MetricCCDiagnosticsAllowed(this);

  operator delete();
}

uint64_t awd::metrics::MetricCCDiagnosticsAllowed::Clear(uint64_t this)
{
  if (*(this + 24))
  {
    *(this + 16) = 0;
    *(this + 8) = 0;
  }

  *(this + 24) = 0;
  return this;
}

uint64_t awd::metrics::MetricCCDiagnosticsAllowed::MergePartialFromCodedStream(awd::metrics::MetricCCDiagnosticsAllowed *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
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

      v15 = 0;
      v8 = *(a2 + 1);
      v7 = *(a2 + 2);
      if (v8 >= v7 || (v9 = *v8, (v9 & 0x80000000) != 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v15);
        if (!result)
        {
          return result;
        }

        v9 = v15;
        v10 = *(a2 + 1);
        v7 = *(a2 + 2);
      }

      else
      {
        v10 = v8 + 1;
        *(a2 + 1) = v10;
      }

      *(this + 16) = v9 != 0;
      *(this + 6) |= 1u;
      if (v10 < v7 && *v10 == 32)
      {
        v11 = v10 + 1;
        *(a2 + 1) = v11;
LABEL_22:
        if (v11 >= v7 || (v12 = *v11, v12 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 1);
          if (!result)
          {
            return result;
          }

          v13 = *(a2 + 1);
          v7 = *(a2 + 2);
        }

        else
        {
          *(this + 1) = v12;
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

    if ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(a2, TagFallback, a3) & 1) == 0)
    {
      return 0;
    }
  }
}

uint64_t awd::metrics::MetricCCDiagnosticsAllowed::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
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

    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(4, v7, a2, a4);
  }

  return this;
}

uint64_t awd::metrics::MetricCCDiagnosticsAllowed::ByteSize(awd::metrics::MetricCCDiagnosticsAllowed *this, unint64_t a2)
{
  v3 = *(this + 6);
  if (v3)
  {
    v4 = 2 * (v3 & 1u);
    if ((v3 & 2) != 0)
    {
      v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 1), a2) + v4 + 1;
    }
  }

  else
  {
    v4 = 0;
  }

  *(this + 5) = v4;
  return v4;
}

void awd::metrics::AwddShutdown::MergeFrom(awd::metrics::AwddShutdown *this, const awd::metrics::AwddShutdown *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v5);
  }

  if (*(a2 + 20))
  {
    v4 = *(a2 + 1);
    *(this + 5) |= 1u;
    *(this + 1) = v4;
  }
}

void sub_1001E693C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::metrics::AwddShutdown::~AwddShutdown(awd::metrics::AwddShutdown *this)
{
  *this = off_1002B8918;
  awd::metrics::protobuf_AddDesc_AwddMetricsGeneral_2eproto(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  awd::metrics::AwddShutdown::~AwddShutdown(this);

  operator delete();
}

uint64_t awd::metrics::AwddShutdown::Clear(uint64_t this)
{
  if (*(this + 20))
  {
    *(this + 8) = 0;
  }

  *(this + 20) = 0;
  return this;
}

uint64_t awd::metrics::AwddShutdown::MergePartialFromCodedStream(awd::metrics::AwddShutdown *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
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

    if ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(a2, TagFallback, a3) & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t awd::metrics::AwddShutdown::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  if (*(this + 20))
  {
    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(1, *(this + 8), a2, a4);
  }

  return this;
}

uint64_t awd::metrics::AwddShutdown::ByteSize(wireless_diagnostics::google::protobuf::io::CodedOutputStream **this, unint64_t a2)
{
  if (*(this + 20))
  {
    result = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(this[1], a2) + 1;
  }

  else
  {
    result = 0;
  }

  *(this + 4) = result;
  return result;
}

void awd::metrics::AwddStartup::MergeFrom(awd::metrics::AwddStartup *this, const awd::metrics::AwddStartup *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v5);
  }

  if (*(a2 + 20))
  {
    v4 = *(a2 + 1);
    *(this + 5) |= 1u;
    *(this + 1) = v4;
  }
}

void sub_1001E6C4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::metrics::AwddStartup::~AwddStartup(awd::metrics::AwddStartup *this)
{
  *this = off_1002B8990;
  awd::metrics::protobuf_AddDesc_AwddMetricsGeneral_2eproto(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  awd::metrics::AwddStartup::~AwddStartup(this);

  operator delete();
}

uint64_t awd::metrics::AwddStartup::Clear(uint64_t this)
{
  if (*(this + 20))
  {
    *(this + 8) = 0;
  }

  *(this + 20) = 0;
  return this;
}

uint64_t awd::metrics::AwddStartup::MergePartialFromCodedStream(awd::metrics::AwddStartup *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
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

    if ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(a2, TagFallback, a3) & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t awd::metrics::AwddStartup::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  if (*(this + 20))
  {
    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(1, *(this + 8), a2, a4);
  }

  return this;
}

uint64_t awd::metrics::AwddStartup::ByteSize(wireless_diagnostics::google::protobuf::io::CodedOutputStream **this, unint64_t a2)
{
  if (*(this + 20))
  {
    result = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(this[1], a2) + 1;
  }

  else
  {
    result = 0;
  }

  *(this + 4) = result;
  return result;
}

void awd::metrics::BatteryPowerLevel::MergeFrom(awd::metrics::BatteryPowerLevel *this, const awd::metrics::BatteryPowerLevel *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v9);
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

        goto LABEL_12;
      }
    }

    else if ((*(a2 + 40) & 2) == 0)
    {
      goto LABEL_6;
    }

    v7 = *(a2 + 2);
    *(this + 10) |= 2u;
    *(this + 2) = v7;
    v4 = *(a2 + 10);
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
    v8 = *(a2 + 3);
    *(this + 10) |= 4u;
    *(this + 3) = v8;
    if ((*(a2 + 10) & 8) == 0)
    {
      return;
    }

LABEL_8:
    v5 = *(a2 + 32);
    *(this + 10) |= 8u;
    *(this + 32) = v5;
  }
}

void sub_1001E6FC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::metrics::BatteryPowerLevel::~BatteryPowerLevel(awd::metrics::BatteryPowerLevel *this)
{
  *this = off_1002B8A08;
  awd::metrics::protobuf_AddDesc_AwddMetricsGeneral_2eproto(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  awd::metrics::BatteryPowerLevel::~BatteryPowerLevel(this);

  operator delete();
}

uint64_t awd::metrics::BatteryPowerLevel::Clear(uint64_t this)
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

uint64_t awd::metrics::BatteryPowerLevel::MergePartialFromCodedStream(awd::metrics::BatteryPowerLevel *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
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

      *(this + 10) |= 1u;
      if (v13 < v8 && *v13 == 16)
      {
        v9 = v13 + 1;
        *(a2 + 1) = v9;
LABEL_29:
        *v22 = 0;
        if (v9 >= v8 || (v15 = *v9, v15 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, v22);
          if (!result)
          {
            return result;
          }

          v15 = *v22;
          v16 = *(a2 + 1);
          v8 = *(a2 + 2);
        }

        else
        {
          v16 = v9 + 1;
          *(a2 + 1) = v16;
        }

        *(this + 2) = v15;
        *(this + 10) |= 2u;
        if (v16 < v8 && *v16 == 24)
        {
          v14 = v16 + 1;
          *(a2 + 1) = v14;
LABEL_37:
          v22[0] = 0;
          if (v14 >= v8 || (v17 = *v14, (v17 & 0x80000000) != 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v22);
            if (!result)
            {
              return result;
            }

            v17 = v22[0];
            v18 = *(a2 + 1);
            v8 = *(a2 + 2);
          }

          else
          {
            v18 = v14 + 1;
            *(a2 + 1) = v18;
          }

          *(this + 32) = v17 != 0;
          *(this + 10) |= 8u;
          if (v18 < v8 && *v18 == 32)
          {
            v10 = v18 + 1;
            *(a2 + 1) = v10;
LABEL_45:
            *v22 = 0;
            if (v10 >= v8 || (v19 = *v10, v19 < 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, v22);
              if (!result)
              {
                return result;
              }

              v19 = *v22;
              v20 = *(a2 + 1);
              v8 = *(a2 + 2);
            }

            else
            {
              v20 = v10 + 1;
              *(a2 + 1) = v20;
            }

            *(this + 3) = v19;
            *(this + 10) |= 4u;
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

    if ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(a2, TagFallback, a3) & 1) == 0)
    {
      return 0;
    }
  }
}

uint64_t awd::metrics::BatteryPowerLevel::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
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
      if ((v6 & 8) == 0)
      {
        goto LABEL_4;
      }

LABEL_8:
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(3, *(v5 + 32), a2, a4);
      if ((*(v5 + 40) & 4) == 0)
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

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt64(2, *(v5 + 16), a2, a4);
  v6 = *(v5 + 40);
  if ((v6 & 8) != 0)
  {
    goto LABEL_8;
  }

LABEL_4:
  if ((v6 & 4) == 0)
  {
    return this;
  }

LABEL_9:
  v7 = *(v5 + 24);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt64(4, v7, a2, a4);
}

uint64_t awd::metrics::BatteryPowerLevel::ByteSize(awd::metrics::BatteryPowerLevel *this, unint64_t a2)
{
  v3 = *(this + 10);
  if (!v3)
  {
    result = 0;
    goto LABEL_11;
  }

  if ((v3 & 1) == 0)
  {
    v4 = 0;
    if ((v3 & 2) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 1), a2) + 1;
  v3 = *(this + 10);
  if ((v3 & 2) != 0)
  {
LABEL_7:
    v4 += wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 2), a2) + 1;
    v3 = *(this + 10);
  }

LABEL_8:
  if ((v3 & 4) != 0)
  {
    v4 += wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 3), a2) + 1;
    v3 = *(this + 10);
  }

  result = ((v3 >> 2) & 2) + v4;
LABEL_11:
  *(this + 9) = result;
  return result;
}

void awd::metrics::AwddAggregation::MergeFrom(awd::metrics::AwddAggregation *this, const awd::metrics::AwddAggregation *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v16);
  }

  v4 = *(a2 + 20);
  if (!v4)
  {
    goto LABEL_13;
  }

  if (v4)
  {
    v8 = *(a2 + 1);
    *(this + 20) |= 1u;
    *(this + 1) = v8;
    v4 = *(a2 + 20);
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

  v9 = *(a2 + 2);
  *(this + 20) |= 2u;
  v10 = *(this + 2);
  if (v10 == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
  {
    operator new();
  }

  std::string::operator=(v10, v9);
  v4 = *(a2 + 20);
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
  v11 = *(a2 + 3);
  *(this + 20) |= 4u;
  *(this + 3) = v11;
  v4 = *(a2 + 20);
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
  v12 = *(a2 + 4);
  *(this + 20) |= 8u;
  *(this + 4) = v12;
  v4 = *(a2 + 20);
  if ((v4 & 0x10) == 0)
  {
LABEL_9:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_10;
    }

LABEL_26:
    v14 = *(a2 + 6);
    *(this + 20) |= 0x20u;
    *(this + 6) = v14;
    v4 = *(a2 + 20);
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
  v13 = *(a2 + 5);
  *(this + 20) |= 0x10u;
  *(this + 5) = v13;
  v4 = *(a2 + 20);
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
  v15 = *(a2 + 7);
  *(this + 20) |= 0x40u;
  *(this + 7) = v15;
  v4 = *(a2 + 20);
  if ((v4 & 0x80) != 0)
  {
LABEL_12:
    v5 = *(a2 + 8);
    *(this + 20) |= 0x80u;
    *(this + 8) = v5;
    v4 = *(a2 + 20);
  }

LABEL_13:
  if ((v4 & 0xFF00) != 0)
  {
    if ((v4 & 0x100) != 0)
    {
      v6 = *(a2 + 72);
      *(this + 20) |= 0x100u;
      *(this + 72) = v6;
      v4 = *(a2 + 20);
    }

    if ((v4 & 0x200) != 0)
    {
      v7 = *(a2 + 73);
      *(this + 20) |= 0x200u;
      *(this + 73) = v7;
    }
  }
}

void sub_1001E76C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::metrics::AwddAggregation::~AwddAggregation(awd::metrics::AwddAggregation *this)
{
  *this = off_1002B8A80;
  awd::metrics::AwddAggregation::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  awd::metrics::AwddAggregation::~AwddAggregation(this);

  operator delete();
}

void awd::metrics::AwddAggregation::SharedDtor(awd::metrics::AwddAggregation *this)
{
  v1 = *(this + 2);
  if (v1 != &wireless_diagnostics::google::protobuf::internal::kEmptyString && v1 != 0)
  {
    if (*(v1 + 23) < 0)
    {
      operator delete(*v1);
    }

    operator delete();
  }

  awd::metrics::protobuf_AddDesc_AwddMetricsGeneral_2eproto(this);
}

uint64_t awd::metrics::AwddAggregation::Clear(uint64_t this)
{
  v1 = *(this + 80);
  if (v1)
  {
    *(this + 8) = 0;
    if ((v1 & 2) != 0)
    {
      v2 = *(this + 16);
      if (v2 != &wireless_diagnostics::google::protobuf::internal::kEmptyString)
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

    *(this + 56) = 0u;
    *(this + 40) = 0u;
    *(this + 24) = 0u;
    v1 = *(this + 80);
  }

  if ((v1 & 0xFF00) != 0)
  {
    *(this + 72) = 0;
  }

  *(this + 80) = 0;
  return this;
}

uint64_t awd::metrics::AwddAggregation::MergePartialFromCodedStream(awd::metrics::AwddAggregation *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
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
          if (TagFallback >> 3 <= 7)
          {
            if (v7 == 6)
            {
              if ((TagFallback & 7) == 0)
              {
                v18 = *(a2 + 1);
                v9 = *(a2 + 2);
                goto LABEL_79;
              }
            }

            else if (v7 == 7 && (TagFallback & 7) == 0)
            {
              v13 = *(a2 + 1);
              v9 = *(a2 + 2);
              goto LABEL_87;
            }
          }

          else if (v7 == 8)
          {
            if ((TagFallback & 7) == 0)
            {
              v20 = *(a2 + 1);
              v9 = *(a2 + 2);
              goto LABEL_95;
            }
          }

          else if (v7 == 9)
          {
            if ((TagFallback & 7) == 0)
            {
              v22 = *(a2 + 1);
              v9 = *(a2 + 2);
              goto LABEL_103;
            }
          }

          else if (v7 == 10 && (TagFallback & 7) == 0)
          {
            v11 = *(a2 + 1);
            v9 = *(a2 + 2);
            goto LABEL_111;
          }

          goto LABEL_40;
        }

        if (TagFallback >> 3 > 2)
        {
          break;
        }

        if (v7 != 1)
        {
          if (v7 != 2 || v8 != 2)
          {
            goto LABEL_40;
          }

          v12 = *(this + 20);
          goto LABEL_49;
        }

        if ((TagFallback & 7) != 0)
        {
          goto LABEL_40;
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

        v12 = *(this + 20) | 1;
        *(this + 20) = v12;
        if (v17 < v14 && *v17 == 18)
        {
          *(a2 + 1) = v17 + 1;
LABEL_49:
          *(this + 20) = v12 | 2;
          if (*(this + 2) == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
          {
            operator new();
          }

          result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
          if (!result)
          {
            return result;
          }

          v23 = *(a2 + 1);
          v9 = *(a2 + 2);
          if (v23 < v9 && *v23 == 24)
          {
            v19 = v23 + 1;
            *(a2 + 1) = v19;
LABEL_55:
            if (v19 >= v9 || (v24 = *v19, v24 < 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 3);
              if (!result)
              {
                return result;
              }

              v25 = *(a2 + 1);
              v9 = *(a2 + 2);
            }

            else
            {
              *(this + 3) = v24;
              v25 = v19 + 1;
              *(a2 + 1) = v25;
            }

            *(this + 20) |= 4u;
            if (v25 < v9 && *v25 == 32)
            {
              v21 = v25 + 1;
              *(a2 + 1) = v21;
              goto LABEL_63;
            }
          }
        }
      }

      if (v7 == 3)
      {
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_40;
        }

        v19 = *(a2 + 1);
        v9 = *(a2 + 2);
        goto LABEL_55;
      }

      if (v7 != 4)
      {
        break;
      }

      if ((TagFallback & 7) != 0)
      {
        goto LABEL_40;
      }

      v21 = *(a2 + 1);
      v9 = *(a2 + 2);
LABEL_63:
      if (v21 >= v9 || (v26 = *v21, v26 < 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 4);
        if (!result)
        {
          return result;
        }

        v27 = *(a2 + 1);
        v9 = *(a2 + 2);
      }

      else
      {
        *(this + 4) = v26;
        v27 = v21 + 1;
        *(a2 + 1) = v27;
      }

      *(this + 20) |= 8u;
      if (v27 < v9 && *v27 == 40)
      {
        v10 = v27 + 1;
        *(a2 + 1) = v10;
LABEL_71:
        *v41 = 0;
        if (v10 >= v9 || (v28 = *v10, v28 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, v41);
          if (!result)
          {
            return result;
          }

          v28 = *v41;
          v29 = *(a2 + 1);
          v9 = *(a2 + 2);
        }

        else
        {
          v29 = v10 + 1;
          *(a2 + 1) = v29;
        }

        *(this + 5) = v28;
        *(this + 20) |= 0x10u;
        if (v29 < v9 && *v29 == 48)
        {
          v18 = v29 + 1;
          *(a2 + 1) = v18;
LABEL_79:
          *v41 = 0;
          if (v18 >= v9 || (v30 = *v18, v30 < 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, v41);
            if (!result)
            {
              return result;
            }

            v30 = *v41;
            v31 = *(a2 + 1);
            v9 = *(a2 + 2);
          }

          else
          {
            v31 = v18 + 1;
            *(a2 + 1) = v31;
          }

          *(this + 6) = v30;
          *(this + 20) |= 0x20u;
          if (v31 < v9 && *v31 == 56)
          {
            v13 = v31 + 1;
            *(a2 + 1) = v13;
LABEL_87:
            *v41 = 0;
            if (v13 >= v9 || (v32 = *v13, v32 < 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, v41);
              if (!result)
              {
                return result;
              }

              v32 = *v41;
              v33 = *(a2 + 1);
              v9 = *(a2 + 2);
            }

            else
            {
              v33 = v13 + 1;
              *(a2 + 1) = v33;
            }

            *(this + 7) = v32;
            *(this + 20) |= 0x40u;
            if (v33 < v9 && *v33 == 64)
            {
              v20 = v33 + 1;
              *(a2 + 1) = v20;
LABEL_95:
              *v41 = 0;
              if (v20 >= v9 || (v34 = *v20, v34 < 0))
              {
                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, v41);
                if (!result)
                {
                  return result;
                }

                v34 = *v41;
                v35 = *(a2 + 1);
                v9 = *(a2 + 2);
              }

              else
              {
                v35 = v20 + 1;
                *(a2 + 1) = v35;
              }

              *(this + 8) = v34;
              *(this + 20) |= 0x80u;
              if (v35 < v9 && *v35 == 72)
              {
                v22 = v35 + 1;
                *(a2 + 1) = v22;
LABEL_103:
                v41[0] = 0;
                if (v22 >= v9 || (v36 = *v22, (v36 & 0x80000000) != 0))
                {
                  result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v41);
                  if (!result)
                  {
                    return result;
                  }

                  v36 = v41[0];
                  v37 = *(a2 + 1);
                  v9 = *(a2 + 2);
                }

                else
                {
                  v37 = v22 + 1;
                  *(a2 + 1) = v37;
                }

                *(this + 72) = v36 != 0;
                *(this + 20) |= 0x100u;
                if (v37 < v9 && *v37 == 80)
                {
                  v11 = v37 + 1;
                  *(a2 + 1) = v11;
LABEL_111:
                  v41[0] = 0;
                  if (v11 >= v9 || (v38 = *v11, (v38 & 0x80000000) != 0))
                  {
                    result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v41);
                    if (!result)
                    {
                      return result;
                    }

                    v38 = v41[0];
                    v39 = *(a2 + 1);
                    v9 = *(a2 + 2);
                  }

                  else
                  {
                    v39 = v11 + 1;
                    *(a2 + 1) = v39;
                  }

                  *(this + 73) = v38 != 0;
                  *(this + 20) |= 0x200u;
                  if (v39 == v9 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
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

    if (v7 == 5 && (TagFallback & 7) == 0)
    {
      v10 = *(a2 + 1);
      v9 = *(a2 + 2);
      goto LABEL_71;
    }

LABEL_40:
    if (v8 == 4)
    {
      return 1;
    }

    if ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(a2, TagFallback, a3) & 1) == 0)
    {
      return 0;
    }
  }
}

uint64_t awd::metrics::AwddAggregation::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 80);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(1, *(this + 8), a2, a4);
    v6 = *(v5 + 80);
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
  v6 = *(v5 + 80);
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
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(3, *(v5 + 24), a2, a4);
  v6 = *(v5 + 80);
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
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(4, *(v5 + 32), a2, a4);
  v6 = *(v5 + 80);
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
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt64(5, *(v5 + 40), a2, a4);
  v6 = *(v5 + 80);
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
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt64(6, *(v5 + 48), a2, a4);
  v6 = *(v5 + 80);
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
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt64(7, *(v5 + 56), a2, a4);
  v6 = *(v5 + 80);
  if ((v6 & 0x80) == 0)
  {
LABEL_9:
    if ((v6 & 0x100) == 0)
    {
      goto LABEL_10;
    }

LABEL_20:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(9, *(v5 + 72), a2, a4);
    if ((*(v5 + 80) & 0x200) == 0)
    {
      return this;
    }

    goto LABEL_21;
  }

LABEL_19:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt64(8, *(v5 + 64), a2, a4);
  v6 = *(v5 + 80);
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
  v7 = *(v5 + 73);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(0xA, v7, a2, a4);
}

uint64_t awd::metrics::AwddAggregation::ByteSize(awd::metrics::AwddAggregation *this, unint64_t a2)
{
  v3 = *(this + 20);
  if (!v3)
  {
    v4 = 0;
    goto LABEL_23;
  }

  if (v3)
  {
    v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 1), a2) + 1;
    v3 = *(this + 20);
    if ((v3 & 2) == 0)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v4 = 0;
    if ((v3 & 2) == 0)
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
    v10 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v9, a2);
    v6 = *(v5 + 23);
    v8 = *(v5 + 8);
    v3 = *(this + 20);
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
  if ((v3 & 4) != 0)
  {
    v4 += wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 3), a2) + 1;
    v3 = *(this + 20);
    if ((v3 & 8) == 0)
    {
LABEL_18:
      if ((v3 & 0x10) == 0)
      {
        goto LABEL_19;
      }

      goto LABEL_29;
    }
  }

  else if ((v3 & 8) == 0)
  {
    goto LABEL_18;
  }

  v4 += wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 4), a2) + 1;
  v3 = *(this + 20);
  if ((v3 & 0x10) == 0)
  {
LABEL_19:
    if ((v3 & 0x20) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_30;
  }

LABEL_29:
  v4 += wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 5), a2) + 1;
  v3 = *(this + 20);
  if ((v3 & 0x20) == 0)
  {
LABEL_20:
    if ((v3 & 0x40) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_31;
  }

LABEL_30:
  v4 += wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 6), a2) + 1;
  v3 = *(this + 20);
  if ((v3 & 0x40) == 0)
  {
LABEL_21:
    if ((v3 & 0x80) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_22;
  }

LABEL_31:
  v4 += wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 7), a2) + 1;
  v3 = *(this + 20);
  if ((v3 & 0x80) != 0)
  {
LABEL_22:
    v4 += wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 8), a2) + 1;
    v3 = *(this + 20);
  }

LABEL_23:
  v11 = (v3 & 0xFF00) == 0;
  v12 = ((v3 >> 7) & 2) + v4 + ((v3 >> 8) & 2);
  if (v11)
  {
    result = v4;
  }

  else
  {
    result = v12;
  }

  *(this + 19) = result;
  return result;
}

uint64_t awd::profile::protobuf_ShutdownFile_AwdProfile_2eproto(awd::profile *this)
{
  if (awd::profile::ProcessingRule::default_instance_)
  {
    (*(*awd::profile::ProcessingRule::default_instance_ + 8))(awd::profile::ProcessingRule::default_instance_);
  }

  if (awd::profile::BedfTreeNode::default_instance_)
  {
    (*(*awd::profile::BedfTreeNode::default_instance_ + 8))(awd::profile::BedfTreeNode::default_instance_);
  }

  if (awd::profile::BedfConfig::default_instance_)
  {
    (*(*awd::profile::BedfConfig::default_instance_ + 8))(awd::profile::BedfConfig::default_instance_);
  }

  if (awd::profile::Metric::default_instance_)
  {
    (*(*awd::profile::Metric::default_instance_ + 8))(awd::profile::Metric::default_instance_);
  }

  if (awd::profile::Profile::default_instance_)
  {
    (*(*awd::profile::Profile::default_instance_ + 8))(awd::profile::Profile::default_instance_);
  }

  if (awd::profile::LogParameter::default_instance_)
  {
    (*(*awd::profile::LogParameter::default_instance_ + 8))(awd::profile::LogParameter::default_instance_);
  }

  if (awd::profile::Log::default_instance_)
  {
    (*(*awd::profile::Log::default_instance_ + 8))(awd::profile::Log::default_instance_);
  }

  if (awd::profile::ConfigurationParameter::default_instance_)
  {
    (*(*awd::profile::ConfigurationParameter::default_instance_ + 8))(awd::profile::ConfigurationParameter::default_instance_);
  }

  if (awd::profile::ComponentConfiguration::default_instance_)
  {
    (*(*awd::profile::ComponentConfiguration::default_instance_ + 8))(awd::profile::ComponentConfiguration::default_instance_);
  }

  if (awd::profile::TimerSpec::default_instance_)
  {
    (*(*awd::profile::TimerSpec::default_instance_ + 8))(awd::profile::TimerSpec::default_instance_);
  }

  if (awd::profile::TypeVariant::default_instance_)
  {
    (*(*awd::profile::TypeVariant::default_instance_ + 8))(awd::profile::TypeVariant::default_instance_);
  }

  if (awd::profile::Condition::default_instance_)
  {
    (*(*awd::profile::Condition::default_instance_ + 8))(awd::profile::Condition::default_instance_);
  }

  if (awd::profile::ConditionClause::default_instance_)
  {
    (*(*awd::profile::ConditionClause::default_instance_ + 8))(awd::profile::ConditionClause::default_instance_);
  }

  if (awd::profile::TriggerSource::default_instance_)
  {
    (*(*awd::profile::TriggerSource::default_instance_ + 8))(awd::profile::TriggerSource::default_instance_);
  }

  if (awd::profile::TriggerProcessingRule::default_instance_)
  {
    (*(*awd::profile::TriggerProcessingRule::default_instance_ + 8))(awd::profile::TriggerProcessingRule::default_instance_);
  }

  if (awd::profile::AggregationSpec::default_instance_)
  {
    (*(*awd::profile::AggregationSpec::default_instance_ + 8))(awd::profile::AggregationSpec::default_instance_);
  }

  if (awd::profile::MetricFileSpec::default_instance_)
  {
    (*(*awd::profile::MetricFileSpec::default_instance_ + 8))(awd::profile::MetricFileSpec::default_instance_);
  }

  if (awd::profile::TaskingCriteria::default_instance_)
  {
    (*(*awd::profile::TaskingCriteria::default_instance_ + 8))(awd::profile::TaskingCriteria::default_instance_);
  }

  result = awd::profile::DeviceConfiguration::default_instance_;
  if (awd::profile::DeviceConfiguration::default_instance_)
  {
    v2 = *(*awd::profile::DeviceConfiguration::default_instance_ + 8);

    return v2();
  }

  return result;
}

double awd::profile::TypeVariant::TypeVariant(awd::profile::TypeVariant *this)
{
  *this = off_1002B9038;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 10) = 0;
  *(this + 44) = 0;
  *(this + 6) = &wireless_diagnostics::google::protobuf::internal::kEmptyString;
  *(this + 7) = &wireless_diagnostics::google::protobuf::internal::kEmptyString;
  *(this + 8) = 0;
  *(this + 18) = 0;
  return result;
}

double awd::profile::MetricFileSpec::MetricFileSpec(awd::profile::MetricFileSpec *this)
{
  *this = off_1002B9308;
  result = COERCE_DOUBLE(&_mh_execute_header);
  *(this + 1) = &_mh_execute_header;
  *(this + 4) = 0;
  *(this + 20) = 0;
  *(this + 3) = 0;
  *(this + 4) = 0;
  return result;
}

uint64_t awd::profile::DeviceConfiguration::DeviceConfiguration(uint64_t this)
{
  *(this + 8) = 0;
  *(this + 16) = 0;
  *this = off_1002B93F8;
  *(this + 24) = 0;
  *(this + 40) = 0;
  *(this + 48) = 0;
  *(this + 56) = 0;
  *(this + 80) = 0;
  *(this + 88) = 0;
  *(this + 96) = 0;
  *(this + 104) = 0;
  *(this + 112) = 0;
  *(this + 120) = 0;
  *(this + 128) = 0;
  *(this + 136) = 0;
  *(this + 168) = 0;
  *(this + 160) = 0;
  *(this + 176) = 0;
  *(this + 184) = 0;
  *(this + 192) = 0;
  *(this + 32) = 0;
  *(this + 36) = 0;
  *(this + 200) = 0;
  *(this + 64) = &wireless_diagnostics::google::protobuf::internal::kEmptyString;
  *(this + 72) = 0;
  *(this + 144) = 0;
  *(this + 152) = 0;
  *(this + 208) = 0;
  return this;
}

void awd::profile::protobuf_AddDesc_AwdProfile_2eproto(awd::profile *this)
{
  v1 = awd::profile::protobuf_AddDesc_AwdProfile_2eproto_once_;
  __dmb(0xBu);
  if (v1 != 2)
  {
    v2[1] = awd::profile::protobuf_AddDesc_AwdProfile_2eproto_impl;
    v3 = 0;
    wireless_diagnostics::google::protobuf::GoogleOnceInitImpl();
    wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(v2);
  }
}

void sub_1001E8D90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

void awd::profile::ProcessingRule::MergeFrom(awd::profile::ProcessingRule *this, const awd::profile::ProcessingRule *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v13);
  }

  LOBYTE(v4) = *(a2 + 52);
  if (!v4)
  {
    return;
  }

  if (*(a2 + 52))
  {
    v6 = *(a2 + 4);
    *(this + 13) |= 1u;
    *(this + 4) = v6;
    v4 = *(a2 + 13);
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

  else if ((*(a2 + 52) & 2) == 0)
  {
    goto LABEL_6;
  }

  v7 = *(a2 + 1);
  *(this + 13) |= 2u;
  *(this + 1) = v7;
  v4 = *(a2 + 13);
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
  v8 = *(a2 + 3);
  *(this + 13) |= 4u;
  *(this + 3) = v8;
  v4 = *(a2 + 13);
  if ((v4 & 8) == 0)
  {
LABEL_8:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_9;
    }

LABEL_17:
    v10 = *(a2 + 40);
    *(this + 13) |= 0x10u;
    *(this + 40) = v10;
    v4 = *(a2 + 13);
    if ((v4 & 0x20) == 0)
    {
LABEL_10:
      if ((v4 & 0x40) == 0)
      {
        return;
      }

      goto LABEL_11;
    }

    goto LABEL_18;
  }

LABEL_16:
  v9 = *(a2 + 5);
  *(this + 13) |= 8u;
  *(this + 5) = v9;
  v4 = *(a2 + 13);
  if ((v4 & 0x10) != 0)
  {
    goto LABEL_17;
  }

LABEL_9:
  if ((v4 & 0x20) == 0)
  {
    goto LABEL_10;
  }

LABEL_18:
  *(this + 13) |= 0x20u;
  v11 = *(this + 4);
  if (!v11)
  {
    operator new();
  }

  v12 = *(a2 + 4);
  if (!v12)
  {
    awd::profile::protobuf_AddDesc_AwdProfile_2eproto(this);
    v12 = *(awd::profile::ProcessingRule::default_instance_ + 32);
  }

  awd::profile::ProcessingRule::MergeFrom(v11, v12);
  if ((*(a2 + 13) & 0x40) != 0)
  {
LABEL_11:
    v5 = *(a2 + 11);
    *(this + 13) |= 0x40u;
    *(this + 11) = v5;
  }
}

void sub_1001E8F74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::profile::ProcessingRule::~ProcessingRule(awd::profile::ProcessingRule *this)
{
  *this = off_1002B8B88;
  awd::profile::ProcessingRule::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  awd::profile::ProcessingRule::~ProcessingRule(this);

  operator delete();
}

void awd::profile::ProcessingRule::SharedDtor(awd::profile::ProcessingRule *this)
{
  awd::profile::protobuf_AddDesc_AwdProfile_2eproto(this);
  if (awd::profile::ProcessingRule::default_instance_ != this)
  {
    v2 = *(this + 4);
    if (v2)
    {
      v3 = *(*v2 + 8);

      v3();
    }
  }
}

uint64_t awd::profile::ProcessingRule::Clear(uint64_t this)
{
  v1 = this;
  v2 = *(this + 52);
  if (v2)
  {
    *(this + 40) = 0;
    *(this + 16) = 0;
    *(this + 24) = 0;
    *(this + 8) = 0;
    if ((v2 & 0x20) != 0)
    {
      this = *(this + 32);
      if (this)
      {
        this = awd::profile::ProcessingRule::Clear(this);
      }
    }

    *(v1 + 44) = 0;
  }

  *(v1 + 52) = 0;
  return this;
}

uint64_t awd::profile::ProcessingRule::MergePartialFromCodedStream(awd::profile::ProcessingRule *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
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
        if (TagFallback >> 3 > 0x11)
        {
          break;
        }

        if (v7 == 1)
        {
          if ((TagFallback & 7) != 0)
          {
            goto LABEL_30;
          }

          v15 = *(a2 + 1);
          v11 = *(a2 + 2);
          if (v15 >= v11 || (v16 = *v15, v16 < 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 4);
            if (!result)
            {
              return result;
            }

            v17 = *(a2 + 1);
            v11 = *(a2 + 2);
          }

          else
          {
            *(this + 4) = v16;
            v17 = (v15 + 1);
            *(a2 + 1) = v17;
          }

          *(this + 13) |= 1u;
          if (v11 - v17 >= 2 && *v17 == 128 && v17[1] == 1)
          {
            v19 = (v17 + 2);
            *(a2 + 1) = v19;
            goto LABEL_34;
          }
        }

        else
        {
          if (v7 != 16)
          {
            if (v7 != 17 || (TagFallback & 7) != 0)
            {
              goto LABEL_30;
            }

            v12 = *(a2 + 1);
            v11 = *(a2 + 2);
            goto LABEL_43;
          }

          if ((TagFallback & 7) != 0)
          {
            goto LABEL_30;
          }

          v19 = *(a2 + 1);
          v11 = *(a2 + 2);
LABEL_34:
          if (v19 >= v11 || (v20 = *v19, v20 < 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 1);
            if (!result)
            {
              return result;
            }

            v21 = *(a2 + 1);
            v11 = *(a2 + 2);
          }

          else
          {
            *(this + 1) = v20;
            v21 = (v19 + 1);
            *(a2 + 1) = v21;
          }

          *(this + 13) |= 2u;
          if (v11 - v21 >= 2 && *v21 == 136 && v21[1] == 1)
          {
            v12 = (v21 + 2);
            *(a2 + 1) = v12;
LABEL_43:
            v40[0] = 0;
            if (v12 >= v11 || (v23 = *v12, (v23 & 0x80000000) != 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v40);
              if (!result)
              {
                return result;
              }

              v23 = v40[0];
              v24 = *(a2 + 1);
              v11 = *(a2 + 2);
            }

            else
            {
              v24 = (v12 + 1);
              *(a2 + 1) = v24;
            }

            *(this + 40) = v23 != 0;
            v18 = *(this + 13) | 0x10;
            *(this + 13) = v18;
            if (v11 - v24 >= 2 && *v24 == 146 && v24[1] == 1)
            {
              *(a2 + 1) = v24 + 2;
              goto LABEL_52;
            }
          }
        }
      }

      if (TagFallback >> 3 > 0x13)
      {
        break;
      }

      if (v7 == 18)
      {
        if (v8 != 2)
        {
          goto LABEL_30;
        }

        v18 = *(this + 13);
LABEL_52:
        *(this + 13) = v18 | 0x20;
        v25 = *(this + 4);
        if (!v25)
        {
          operator new();
        }

        v40[0] = 0;
        v26 = *(a2 + 1);
        if (v26 >= *(a2 + 2) || *v26 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v40))
          {
            return 0;
          }
        }

        else
        {
          v40[0] = *v26;
          *(a2 + 1) = v26 + 1;
        }

        v27 = *(a2 + 14);
        v28 = *(a2 + 15);
        *(a2 + 14) = v27 + 1;
        if (v27 >= v28)
        {
          return 0;
        }

        v29 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2, v40[0]);
        if (!awd::profile::ProcessingRule::MergePartialFromCodedStream(v25, a2, v30) || *(a2 + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2, v29);
        v31 = *(a2 + 14);
        v32 = __OFSUB__(v31, 1);
        v33 = v31 - 1;
        if (v33 < 0 == v32)
        {
          *(a2 + 14) = v33;
        }

        v34 = *(a2 + 1);
        v9 = *(a2 + 2);
        if (v9 - v34 > 1 && *v34 == 152 && v34[1] == 1)
        {
          v10 = (v34 + 2);
          *(a2 + 1) = v10;
LABEL_67:
          if (v10 >= v9 || (v35 = *v10, v35 < 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 5);
            if (!result)
            {
              return result;
            }

            v36 = *(a2 + 1);
            v9 = *(a2 + 2);
          }

          else
          {
            *(this + 5) = v35;
            v36 = (v10 + 1);
            *(a2 + 1) = v36;
          }

          *(this + 13) |= 8u;
          if (v9 - v36 >= 2 && *v36 == 161 && v36[1] == 1)
          {
            *(a2 + 1) = v36 + 2;
LABEL_76:
            *v40 = 0;
            if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v40) & 1) == 0)
            {
              return 0;
            }

            *(this + 3) = *v40;
            *(this + 13) |= 4u;
            v37 = *(a2 + 1);
            v13 = *(a2 + 2);
            if (v13 - v37 >= 2 && *v37 == 168 && v37[1] == 1)
            {
              v14 = (v37 + 2);
              *(a2 + 1) = v14;
              goto LABEL_81;
            }
          }
        }
      }

      else
      {
        if (v7 == 19 && (TagFallback & 7) == 0)
        {
          v10 = *(a2 + 1);
          v9 = *(a2 + 2);
          goto LABEL_67;
        }

LABEL_30:
        if (v8 == 4)
        {
          return 1;
        }

        if ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(a2, TagFallback, a3) & 1) == 0)
        {
          return 0;
        }
      }
    }

    if (v7 == 20)
    {
      if (v8 == 1)
      {
        goto LABEL_76;
      }

      goto LABEL_30;
    }

    if (v7 != 21 || (TagFallback & 7) != 0)
    {
      goto LABEL_30;
    }

    v14 = *(a2 + 1);
    v13 = *(a2 + 2);
LABEL_81:
    if (v14 >= v13 || (v38 = *v14, v38 < 0))
    {
      result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 11);
      if (!result)
      {
        return result;
      }

      v39 = *(a2 + 1);
      v13 = *(a2 + 2);
    }

    else
    {
      *(this + 11) = v38;
      v39 = v14 + 1;
      *(a2 + 1) = v39;
    }

    *(this + 13) |= 0x40u;
  }

  while (v39 != v13 || !*(a2 + 11) && *(a2 + 6) != *(a2 + 10));
  *(a2 + 8) = 0;
  result = 1;
  *(a2 + 36) = 1;
  return result;
}

awd::profile *awd::profile::ProcessingRule::SerializeWithCachedSizes(awd::profile *this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 13);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(1, *(this + 4), a2, a4);
    v6 = *(v5 + 13);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 0x10) == 0)
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

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(0x10, *(v5 + 1), a2, a4);
  v6 = *(v5 + 13);
  if ((v6 & 0x10) == 0)
  {
LABEL_4:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_12;
  }

LABEL_11:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(0x11, *(v5 + 40), a2, a4);
  v6 = *(v5 + 13);
  if ((v6 & 0x20) == 0)
  {
LABEL_5:
    if ((v6 & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_15;
  }

LABEL_12:
  v7 = *(v5 + 4);
  if (!v7)
  {
    awd::profile::protobuf_AddDesc_AwdProfile_2eproto(this);
    v7 = *(awd::profile::ProcessingRule::default_instance_ + 32);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x12, v7, a2, a4);
  v6 = *(v5 + 13);
  if ((v6 & 8) == 0)
  {
LABEL_6:
    if ((v6 & 4) == 0)
    {
      goto LABEL_7;
    }

LABEL_16:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(0x14, a2, *(v5 + 3), a3);
    if ((*(v5 + 13) & 0x40) == 0)
    {
      return this;
    }

    goto LABEL_17;
  }

LABEL_15:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x13, *(v5 + 5), a2, a4);
  v6 = *(v5 + 13);
  if ((v6 & 4) != 0)
  {
    goto LABEL_16;
  }

LABEL_7:
  if ((v6 & 0x40) == 0)
  {
    return this;
  }

LABEL_17:
  v8 = *(v5 + 11);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x15, v8, a2, a4);
}

uint64_t awd::profile::ProcessingRule::ByteSize(awd::profile::ProcessingRule *this, unint64_t a2)
{
  LOBYTE(v3) = *(this + 52);
  if (!v3)
  {
    v4 = 0;
    goto LABEL_33;
  }

  if ((*(this + 52) & 1) == 0)
  {
    LODWORD(v4) = 0;
    if ((*(this + 52) & 2) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  v5 = *(this + 4);
  if (v5 < 0x80)
  {
    LODWORD(v4) = 2;
    if ((v3 & 2) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  LODWORD(v4) = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5, a2) + 1;
  v3 = *(this + 13);
  if ((v3 & 2) != 0)
  {
LABEL_10:
    LODWORD(v4) = v4 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 1), a2) + 2;
    v3 = *(this + 13);
  }

LABEL_11:
  if ((v3 & 4) != 0)
  {
    LODWORD(v4) = v4 + 10;
  }

  if ((v3 & 8) != 0)
  {
    v6 = *(this + 5);
    if (v6 >= 0x80)
    {
      v7 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v6, a2) + 2;
      v3 = *(this + 13);
    }

    else
    {
      v7 = 3;
    }

    LODWORD(v4) = v7 + v4;
  }

  if ((v3 & 0x10) != 0)
  {
    v4 = (v4 + 3);
  }

  else
  {
    v4 = v4;
  }

  if ((v3 & 0x20) != 0)
  {
    v8 = *(this + 4);
    if (!v8)
    {
      awd::profile::protobuf_AddDesc_AwdProfile_2eproto(0);
      v8 = *(awd::profile::ProcessingRule::default_instance_ + 32);
    }

    v9 = awd::profile::ProcessingRule::ByteSize(v8, a2);
    v10 = v9;
    if (v9 >= 0x80)
    {
      v11 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v9, a2);
    }

    else
    {
      v11 = 1;
    }

    v4 = (v4 + v10 + v11 + 2);
    v3 = *(this + 13);
  }

  if ((v3 & 0x40) != 0)
  {
    v12 = *(this + 11);
    if (v12 >= 0x80)
    {
      v13 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v12, a2) + 2;
    }

    else
    {
      v13 = 3;
    }

    v4 = (v13 + v4);
  }

LABEL_33:
  *(this + 12) = v4;
  return v4;
}

void awd::profile::BedfTreeNode::MergeFrom(awd::profile::BedfTreeNode *this, const awd::profile::BedfTreeNode *a2)
{
  v3 = this;
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v14);
  }

  v4 = *(a2 + 12);
  if (v4)
  {
    sub_10001C3A0(v3 + 10, *(v3 + 12) + v4);
    this = memcpy((*(v3 + 5) + 4 * *(v3 + 12)), *(a2 + 5), 4 * *(a2 + 12));
    *(v3 + 12) += *(a2 + 12);
  }

  LOBYTE(v5) = *(a2 + 60);
  if (v5)
  {
    if (*(a2 + 60))
    {
      v7 = *(a2 + 2);
      *(v3 + 15) |= 1u;
      *(v3 + 2) = v7;
      v5 = *(a2 + 15);
      if ((v5 & 2) == 0)
      {
LABEL_8:
        if ((v5 & 4) == 0)
        {
          goto LABEL_9;
        }

        goto LABEL_16;
      }
    }

    else if ((*(a2 + 60) & 2) == 0)
    {
      goto LABEL_8;
    }

    v8 = *(a2 + 3);
    *(v3 + 15) |= 2u;
    *(v3 + 3) = v8;
    v5 = *(a2 + 15);
    if ((v5 & 4) == 0)
    {
LABEL_9:
      if ((v5 & 8) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_21;
    }

LABEL_16:
    *(v3 + 15) |= 4u;
    v9 = *(v3 + 2);
    if (!v9)
    {
      operator new();
    }

    v10 = *(a2 + 2);
    if (!v10)
    {
      awd::profile::protobuf_AddDesc_AwdProfile_2eproto(this);
      v10 = *(awd::profile::BedfTreeNode::default_instance_ + 16);
    }

    awd::profile::BedfTreeNode::MergeFrom(v9, v10);
    v5 = *(a2 + 15);
    if ((v5 & 8) == 0)
    {
LABEL_10:
      if ((v5 & 0x10) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_26;
    }

LABEL_21:
    *(v3 + 15) |= 8u;
    v11 = *(v3 + 3);
    if (!v11)
    {
      operator new();
    }

    v12 = *(a2 + 3);
    if (!v12)
    {
      awd::profile::protobuf_AddDesc_AwdProfile_2eproto(this);
      v12 = *(awd::profile::BedfTreeNode::default_instance_ + 24);
    }

    awd::profile::BedfTreeNode::MergeFrom(v11, v12);
    v5 = *(a2 + 15);
    if ((v5 & 0x10) == 0)
    {
LABEL_11:
      if ((v5 & 0x20) == 0)
      {
        return;
      }

      goto LABEL_12;
    }

LABEL_26:
    v13 = *(a2 + 8);
    *(v3 + 15) |= 0x10u;
    *(v3 + 8) = v13;
    if ((*(a2 + 15) & 0x20) == 0)
    {
      return;
    }

LABEL_12:
    v6 = *(a2 + 9);
    *(v3 + 15) |= 0x20u;
    *(v3 + 9) = v6;
  }
}

void sub_1001E9B2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::profile::BedfTreeNode::~BedfTreeNode(awd::profile::BedfTreeNode *this)
{
  *this = off_1002B8C00;
  awd::profile::BedfTreeNode::SharedDtor(this);
  if (*(this + 5))
  {
    operator delete[]();
  }

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  awd::profile::BedfTreeNode::~BedfTreeNode(this);

  operator delete();
}

void awd::profile::BedfTreeNode::SharedDtor(awd::profile::BedfTreeNode *this)
{
  awd::profile::protobuf_AddDesc_AwdProfile_2eproto(this);
  if (awd::profile::BedfTreeNode::default_instance_ != this)
  {
    v2 = *(this + 2);
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }

    v3 = *(this + 3);
    if (v3)
    {
      v4 = *(*v3 + 8);

      v4();
    }
  }
}

uint64_t awd::profile::BedfTreeNode::Clear(uint64_t this)
{
  v1 = this;
  LOBYTE(v2) = *(this + 60);
  if (v2)
  {
    *(this + 8) = &_mh_execute_header;
    if ((v2 & 4) != 0)
    {
      this = *(this + 16);
      if (this)
      {
        this = awd::profile::BedfTreeNode::Clear(this);
        v2 = *(v1 + 60);
      }
    }

    if ((v2 & 8) != 0)
    {
      this = *(v1 + 24);
      if (this)
      {
        this = awd::profile::BedfTreeNode::Clear(this);
      }
    }

    *(v1 + 32) = 0;
  }

  *(v1 + 48) = 0;
  *(v1 + 60) = 0;
  return this;
}

uint64_t awd::profile::BedfTreeNode::MergePartialFromCodedStream(awd::profile::BedfTreeNode *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
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
          break;
        }

        if (v7 == 1)
        {
          if ((TagFallback & 7) != 0)
          {
            goto LABEL_32;
          }

          v53 = 0;
          v12 = *(a2 + 1);
          if (v12 >= *(a2 + 2) || (v13 = *v12, (v13 & 0x80000000) != 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v53);
            if (!result)
            {
              return result;
            }

            v13 = v53;
          }

          else
          {
            *(a2 + 1) = v12 + 1;
          }

          if (v13 <= 3)
          {
            *(this + 15) |= 1u;
            *(this + 2) = v13;
          }

          v18 = *(a2 + 1);
          v15 = *(a2 + 2);
          if (v18 < v15 && *v18 == 16)
          {
            v16 = v18 + 1;
            *(a2 + 1) = v16;
            goto LABEL_44;
          }
        }

        else
        {
          if (v7 != 2)
          {
            if (v7 != 3 || v8 != 2)
            {
              goto LABEL_32;
            }

            goto LABEL_54;
          }

          if ((TagFallback & 7) != 0)
          {
            goto LABEL_32;
          }

          v16 = *(a2 + 1);
          v15 = *(a2 + 2);
LABEL_44:
          v53 = 0;
          if (v16 >= v15 || (v19 = *v16, (v19 & 0x80000000) != 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v53);
            if (!result)
            {
              return result;
            }

            v19 = v53;
          }

          else
          {
            *(a2 + 1) = v16 + 1;
          }

          if (v19 - 1 <= 0xB)
          {
            *(this + 15) |= 2u;
            *(this + 3) = v19;
          }

          v20 = *(a2 + 1);
          if (v20 < *(a2 + 2) && *v20 == 26)
          {
            *(a2 + 1) = v20 + 1;
LABEL_54:
            *(this + 15) |= 4u;
            v21 = *(this + 2);
            if (!v21)
            {
              operator new();
            }

            v53 = 0;
            v22 = *(a2 + 1);
            if (v22 >= *(a2 + 2) || *v22 < 0)
            {
              if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v53))
              {
                return 0;
              }
            }

            else
            {
              v53 = *v22;
              *(a2 + 1) = v22 + 1;
            }

            v23 = *(a2 + 14);
            v24 = *(a2 + 15);
            *(a2 + 14) = v23 + 1;
            if (v23 >= v24)
            {
              return 0;
            }

            v25 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2, v53);
            if (!awd::profile::BedfTreeNode::MergePartialFromCodedStream(v21, a2, v26) || *(a2 + 36) != 1)
            {
              return 0;
            }

            wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2, v25);
            v27 = *(a2 + 14);
            v28 = __OFSUB__(v27, 1);
            v29 = v27 - 1;
            if (v29 < 0 == v28)
            {
              *(a2 + 14) = v29;
            }

            v30 = *(a2 + 1);
            if (v30 < *(a2 + 2) && *v30 == 34)
            {
              *(a2 + 1) = v30 + 1;
              goto LABEL_68;
            }
          }
        }
      }

      if (TagFallback >> 3 > 5)
      {
        if (v7 == 6)
        {
          if ((TagFallback & 7) == 0)
          {
            v14 = *(a2 + 1);
            v9 = *(a2 + 2);
            goto LABEL_90;
          }
        }

        else if (v7 == 7)
        {
          if ((TagFallback & 7) == 0)
          {
            v17 = *(a2 + 1);
            v9 = *(a2 + 2);
            goto LABEL_98;
          }

          if (v8 == 2)
          {
            result = sub_1000C71A8(a2, this + 10);
            if (!result)
            {
              return result;
            }

            goto LABEL_115;
          }
        }

        goto LABEL_32;
      }

      if (v7 == 4)
      {
        break;
      }

      if (v7 == 5 && (TagFallback & 7) == 0)
      {
        v10 = *(a2 + 1);
        v9 = *(a2 + 2);
        goto LABEL_82;
      }

LABEL_32:
      if (v8 == 4)
      {
        return 1;
      }

      if ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(a2, TagFallback, a3) & 1) == 0)
      {
        return 0;
      }
    }

    if (v8 != 2)
    {
      goto LABEL_32;
    }

LABEL_68:
    *(this + 15) |= 8u;
    v31 = *(this + 3);
    if (!v31)
    {
      operator new();
    }

    v53 = 0;
    v32 = *(a2 + 1);
    if (v32 >= *(a2 + 2) || *v32 < 0)
    {
      if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v53))
      {
        return 0;
      }
    }

    else
    {
      v53 = *v32;
      *(a2 + 1) = v32 + 1;
    }

    v33 = *(a2 + 14);
    v34 = *(a2 + 15);
    *(a2 + 14) = v33 + 1;
    if (v33 >= v34)
    {
      return 0;
    }

    v35 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2, v53);
    if (!awd::profile::BedfTreeNode::MergePartialFromCodedStream(v31, a2, v36) || *(a2 + 36) != 1)
    {
      return 0;
    }

    wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2, v35);
    v37 = *(a2 + 14);
    v28 = __OFSUB__(v37, 1);
    v38 = v37 - 1;
    if (v38 < 0 == v28)
    {
      *(a2 + 14) = v38;
    }

    v39 = *(a2 + 1);
    v9 = *(a2 + 2);
    if (v39 < v9 && *v39 == 40)
    {
      v10 = v39 + 1;
      *(a2 + 1) = v10;
LABEL_82:
      v53 = 0;
      if (v10 >= v9 || (v40 = *v10, (v40 & 0x80000000) != 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v53);
        if (!result)
        {
          return result;
        }

        v40 = v53;
        v41 = *(a2 + 1);
        v9 = *(a2 + 2);
      }

      else
      {
        v41 = v10 + 1;
        *(a2 + 1) = v41;
      }

      *(this + 8) = v40;
      *(this + 15) |= 0x10u;
      if (v41 < v9 && *v41 == 48)
      {
        v14 = v41 + 1;
        *(a2 + 1) = v14;
LABEL_90:
        v53 = 0;
        if (v14 >= v9 || (v42 = *v14, (v42 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v53);
          if (!result)
          {
            return result;
          }

          v42 = v53;
          v43 = *(a2 + 1);
          v9 = *(a2 + 2);
        }

        else
        {
          v43 = v14 + 1;
          *(a2 + 1) = v43;
        }

        *(this + 9) = v42;
        *(this + 15) |= 0x20u;
        if (v43 < v9 && *v43 == 56)
        {
          do
          {
            v17 = v43 + 1;
            *(a2 + 1) = v17;
LABEL_98:
            v53 = 0;
            if (v17 >= v9 || (v44 = *v17, (v44 & 0x80000000) != 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v53);
              if (!result)
              {
                return result;
              }

              v44 = v53;
            }

            else
            {
              *(a2 + 1) = v17 + 1;
            }

            v45 = *(this + 12);
            if (v45 == *(this + 13))
            {
              sub_10001C3A0(this + 10, v45 + 1);
              v45 = *(this + 12);
            }

            v46 = *(this + 5);
            *(this + 12) = v45 + 1;
            *(v46 + 4 * v45) = v44;
            v47 = *(this + 13) - *(this + 12);
            if (v47 >= 1)
            {
              v48 = v47 + 1;
              do
              {
                v49 = *(a2 + 1);
                v50 = *(a2 + 2);
                if (v49 >= v50 || *v49 != 56)
                {
                  break;
                }

                *(a2 + 1) = v49 + 1;
                v53 = 0;
                if ((v49 + 1) >= v50 || (v51 = v49[1], (v51 & 0x80000000) != 0))
                {
                  result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v53);
                  if (!result)
                  {
                    return result;
                  }

                  v51 = v53;
                  v46 = *(this + 5);
                }

                else
                {
                  *(a2 + 1) = v49 + 2;
                }

                v52 = *(this + 12);
                *(this + 12) = v52 + 1;
                *(v46 + 4 * v52) = v51;
                --v48;
              }

              while (v48 > 1);
            }

LABEL_115:
            v43 = *(a2 + 1);
            v9 = *(a2 + 2);
          }

          while (v43 < v9 && *v43 == 56);
          if (v43 == v9 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
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

awd::profile *awd::profile::BedfTreeNode::SerializeWithCachedSizes(awd::profile *this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 15);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(1, *(this + 2), a2, a4);
    v6 = *(v5 + 15);
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

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(2, *(v5 + 3), a2, a4);
  v6 = *(v5 + 15);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_17;
  }

LABEL_14:
  v8 = *(v5 + 2);
  if (!v8)
  {
    awd::profile::protobuf_AddDesc_AwdProfile_2eproto(this);
    v8 = *(awd::profile::BedfTreeNode::default_instance_ + 16);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(3, v8, a2, a4);
  v6 = *(v5 + 15);
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_20;
  }

LABEL_17:
  v9 = *(v5 + 3);
  if (!v9)
  {
    awd::profile::protobuf_AddDesc_AwdProfile_2eproto(this);
    v9 = *(awd::profile::BedfTreeNode::default_instance_ + 24);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(4, v9, a2, a4);
  v6 = *(v5 + 15);
  if ((v6 & 0x10) == 0)
  {
LABEL_6:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

LABEL_20:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(5, *(v5 + 8), a2, a4);
  if ((*(v5 + 15) & 0x20) != 0)
  {
LABEL_7:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(6, *(v5 + 9), a2, a4);
  }

LABEL_8:
  if (*(v5 + 12) >= 1)
  {
    v7 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(7, *(*(v5 + 5) + 4 * v7++), a2, a4);
    }

    while (v7 < *(v5 + 12));
  }

  return this;
}

uint64_t awd::profile::BedfTreeNode::ByteSize(awd::profile::BedfTreeNode *this, unsigned int a2)
{
  LOBYTE(v3) = *(this + 60);
  if (!v3)
  {
    v4 = 0;
    goto LABEL_48;
  }

  if (*(this + 60))
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
      v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5, a2) + 1;
      v3 = *(this + 15);
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
    if ((*(this + 60) & 2) == 0)
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
    v7 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v6, a2) + 1;
    v3 = *(this + 15);
  }

  else
  {
    v7 = 2;
  }

  v4 += v7;
LABEL_19:
  if ((v3 & 4) != 0)
  {
    v8 = *(this + 2);
    if (!v8)
    {
      awd::profile::protobuf_AddDesc_AwdProfile_2eproto(0);
      v8 = *(awd::profile::BedfTreeNode::default_instance_ + 16);
    }

    v9 = awd::profile::BedfTreeNode::ByteSize(v8, a2);
    v10 = v9;
    if (v9 >= 0x80)
    {
      v11 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v9, a2);
    }

    else
    {
      v11 = 1;
    }

    v4 += v10 + v11 + 1;
    v3 = *(this + 15);
    if ((v3 & 8) == 0)
    {
LABEL_21:
      if ((v3 & 0x10) == 0)
      {
        goto LABEL_22;
      }

      goto LABEL_36;
    }
  }

  else if ((v3 & 8) == 0)
  {
    goto LABEL_21;
  }

  v12 = *(this + 3);
  if (!v12)
  {
    awd::profile::protobuf_AddDesc_AwdProfile_2eproto(0);
    v12 = *(awd::profile::BedfTreeNode::default_instance_ + 24);
  }

  v13 = awd::profile::BedfTreeNode::ByteSize(v12, a2);
  v14 = v13;
  if (v13 >= 0x80)
  {
    v15 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v13, a2);
  }

  else
  {
    v15 = 1;
  }

  v4 += v14 + v15 + 1;
  v3 = *(this + 15);
  if ((v3 & 0x10) == 0)
  {
LABEL_22:
    if ((v3 & 0x20) == 0)
    {
      goto LABEL_48;
    }

    goto LABEL_42;
  }

LABEL_36:
  v16 = *(this + 8);
  if ((v16 & 0x80000000) != 0)
  {
    v17 = 11;
  }

  else if (v16 >= 0x80)
  {
    v17 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v16, a2) + 1;
    v3 = *(this + 15);
  }

  else
  {
    v17 = 2;
  }

  v4 += v17;
  if ((v3 & 0x20) != 0)
  {
LABEL_42:
    v18 = *(this + 9);
    if ((v18 & 0x80000000) != 0)
    {
      v19 = 11;
    }

    else if (v18 >= 0x80)
    {
      v19 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v18, a2) + 1;
    }

    else
    {
      v19 = 2;
    }

    v4 += v19;
  }

LABEL_48:
  v20 = *(this + 12);
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
      v23 = *(*(this + 5) + 4 * v21);
      if ((v23 & 0x80000000) != 0)
      {
        v24 = 10;
      }

      else if (v23 >= 0x80)
      {
        v24 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v23, a2);
        v20 = *(this + 12);
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

  result = (v22 + v4 + v20);
  *(this + 14) = result;
  return result;
}

void awd::profile::BedfConfig::MergeFrom(awd::profile::BedfConfig *this, const awd::profile::BedfConfig *a2)
{
  v3 = this;
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v10);
  }

  v4 = *(a2 + 8);
  if (v4)
  {
    sub_10001C3A0(v3 + 6, *(v3 + 8) + v4);
    this = memcpy((*(v3 + 3) + 4 * *(v3 + 8)), *(a2 + 3), 4 * *(a2 + 8));
    *(v3 + 8) += *(a2 + 8);
  }

  LOBYTE(v5) = *(a2 + 44);
  if (v5)
  {
    if (*(a2 + 44))
    {
      v6 = *(a2 + 2);
      *(v3 + 11) |= 1u;
      *(v3 + 2) = v6;
      v5 = *(a2 + 11);
      if ((v5 & 2) == 0)
      {
LABEL_8:
        if ((v5 & 4) == 0)
        {
          return;
        }

        goto LABEL_12;
      }
    }

    else if ((*(a2 + 44) & 2) == 0)
    {
      goto LABEL_8;
    }

    v7 = *(a2 + 3);
    *(v3 + 11) |= 2u;
    *(v3 + 3) = v7;
    if ((*(a2 + 11) & 4) == 0)
    {
      return;
    }

LABEL_12:
    *(v3 + 11) |= 4u;
    v8 = *(v3 + 2);
    if (!v8)
    {
      operator new();
    }

    v9 = *(a2 + 2);
    if (!v9)
    {
      awd::profile::protobuf_AddDesc_AwdProfile_2eproto(this);
      v9 = *(awd::profile::BedfConfig::default_instance_ + 16);
    }

    awd::profile::BedfTreeNode::MergeFrom(v8, v9);
  }
}

void sub_1001EA8B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::profile::BedfConfig::~BedfConfig(awd::profile::BedfConfig *this)
{
  *this = off_1002B8C78;
  awd::profile::BedfConfig::SharedDtor(this);
  if (*(this + 3))
  {
    operator delete[]();
  }

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  awd::profile::BedfConfig::~BedfConfig(this);

  operator delete();
}

void awd::profile::BedfConfig::SharedDtor(awd::profile::BedfConfig *this)
{
  awd::profile::protobuf_AddDesc_AwdProfile_2eproto(this);
  if (awd::profile::BedfConfig::default_instance_ != this)
  {
    v2 = *(this + 2);
    if (v2)
    {
      v3 = *(*v2 + 8);

      v3();
    }
  }
}

uint64_t awd::profile::BedfConfig::Clear(uint64_t this)
{
  v1 = this;
  v2 = *(this + 44);
  if (v2)
  {
    *(this + 8) = 0;
    if ((v2 & 4) != 0)
    {
      this = *(this + 16);
      if (this)
      {
        this = awd::profile::BedfTreeNode::Clear(this);
      }
    }
  }

  *(v1 + 32) = 0;
  *(v1 + 44) = 0;
  return this;
}

uint64_t awd::profile::BedfConfig::MergePartialFromCodedStream(awd::profile::BedfConfig *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
{
  while (1)
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
            if (v8 == 2)
            {
              v15 = *(this + 11);
              goto LABEL_40;
            }
          }

          else if (v7 == 4)
          {
            if ((TagFallback & 7) == 0)
            {
              v17 = *(a2 + 1);
              v16 = *(a2 + 2);
              goto LABEL_54;
            }

            if (v8 == 2)
            {
              result = sub_1000C71A8(a2, this + 6);
              if (!result)
              {
                return result;
              }

              goto LABEL_71;
            }
          }

LABEL_22:
          if (v8 == 4)
          {
            return 1;
          }

          if ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(a2, TagFallback, a3) & 1) == 0)
          {
            return 0;
          }
        }

        if (v7 != 1)
        {
          break;
        }

        if ((TagFallback & 7) != 0)
        {
          goto LABEL_22;
        }

        v12 = *(a2 + 1);
        v9 = *(a2 + 2);
        if (v12 >= v9 || (v13 = *v12, v13 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 2);
          if (!result)
          {
            return result;
          }

          v14 = *(a2 + 1);
          v9 = *(a2 + 2);
        }

        else
        {
          *(this + 2) = v13;
          v14 = v12 + 1;
          *(a2 + 1) = v14;
        }

        *(this + 11) |= 1u;
        if (v14 < v9 && *v14 == 16)
        {
          v10 = v14 + 1;
          *(a2 + 1) = v10;
          goto LABEL_32;
        }
      }

      if (v7 != 2 || (TagFallback & 7) != 0)
      {
        goto LABEL_22;
      }

      v10 = *(a2 + 1);
      v9 = *(a2 + 2);
LABEL_32:
      if (v10 >= v9 || (v18 = *v10, v18 < 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 3);
        if (!result)
        {
          return result;
        }

        v19 = *(a2 + 1);
        v9 = *(a2 + 2);
      }

      else
      {
        *(this + 3) = v18;
        v19 = v10 + 1;
        *(a2 + 1) = v19;
      }

      v15 = *(this + 11) | 2;
      *(this + 11) = v15;
    }

    while (v19 >= v9 || *v19 != 26);
    *(a2 + 1) = v19 + 1;
LABEL_40:
    *(this + 11) = v15 | 4;
    v20 = *(this + 2);
    if (!v20)
    {
      operator new();
    }

    v41 = 0;
    v21 = *(a2 + 1);
    if (v21 >= *(a2 + 2) || *v21 < 0)
    {
      if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v41))
      {
        return 0;
      }
    }

    else
    {
      v41 = *v21;
      *(a2 + 1) = v21 + 1;
    }

    v22 = *(a2 + 14);
    v23 = *(a2 + 15);
    *(a2 + 14) = v22 + 1;
    if (v22 >= v23)
    {
      return 0;
    }

    v24 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2, v41);
    if (!awd::profile::BedfTreeNode::MergePartialFromCodedStream(v20, a2, v25) || *(a2 + 36) != 1)
    {
      return 0;
    }

    wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2, v24);
    v26 = *(a2 + 14);
    v27 = __OFSUB__(v26, 1);
    v28 = v26 - 1;
    if (v28 < 0 == v27)
    {
      *(a2 + 14) = v28;
    }

    v29 = *(a2 + 1);
    v16 = *(a2 + 2);
    if (v29 < v16 && *v29 == 32)
    {
      do
      {
        v17 = v29 + 1;
        *(a2 + 1) = v17;
LABEL_54:
        v40 = 0;
        if (v17 >= v16 || (v30 = *v17, (v30 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v40);
          if (!result)
          {
            return result;
          }

          v30 = v40;
        }

        else
        {
          *(a2 + 1) = v17 + 1;
        }

        v31 = *(this + 8);
        if (v31 == *(this + 9))
        {
          sub_10001C3A0(this + 6, v31 + 1);
          v31 = *(this + 8);
        }

        v32 = *(this + 3);
        *(this + 8) = v31 + 1;
        *(v32 + 4 * v31) = v30;
        v33 = *(this + 9) - *(this + 8);
        if (v33 >= 1)
        {
          v34 = v33 + 1;
          do
          {
            v35 = *(a2 + 1);
            v36 = *(a2 + 2);
            if (v35 >= v36 || *v35 != 32)
            {
              break;
            }

            *(a2 + 1) = v35 + 1;
            v39 = 0;
            if ((v35 + 1) >= v36 || (v37 = v35[1], (v37 & 0x80000000) != 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v39);
              if (!result)
              {
                return result;
              }

              v37 = v39;
              v32 = *(this + 3);
            }

            else
            {
              *(a2 + 1) = v35 + 2;
            }

            v38 = *(this + 8);
            *(this + 8) = v38 + 1;
            *(v32 + 4 * v38) = v37;
            --v34;
          }

          while (v34 > 1);
        }

LABEL_71:
        v29 = *(a2 + 1);
        v16 = *(a2 + 2);
      }

      while (v29 < v16 && *v29 == 32);
      if (v29 == v16 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
      {
        *(a2 + 8) = 0;
        result = 1;
        *(a2 + 36) = 1;
        return result;
      }
    }
  }
}

awd::profile *awd::profile::BedfConfig::SerializeWithCachedSizes(awd::profile *this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 11);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(1, *(this + 2), a2, a4);
    v6 = *(v5 + 11);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_7;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(2, *(v5 + 3), a2, a4);
  if ((*(v5 + 11) & 4) == 0)
  {
    goto LABEL_10;
  }

LABEL_7:
  v7 = *(v5 + 2);
  if (!v7)
  {
    awd::profile::protobuf_AddDesc_AwdProfile_2eproto(this);
    v7 = *(awd::profile::BedfConfig::default_instance_ + 16);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(3, v7, a2, a4);
LABEL_10:
  if (*(v5 + 8) >= 1)
  {
    v8 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(4, *(*(v5 + 3) + 4 * v8++), a2, a4);
    }

    while (v8 < *(v5 + 8));
  }

  return this;
}

uint64_t awd::profile::BedfConfig::ByteSize(awd::profile::BedfConfig *this, unsigned int a2)
{
  LOBYTE(v3) = *(this + 44);
  if (!v3)
  {
    v4 = 0;
    goto LABEL_21;
  }

  if (*(this + 44))
  {
    v5 = *(this + 2);
    if (v5 >= 0x80)
    {
      v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5, a2) + 1;
      v3 = *(this + 11);
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
    if ((*(this + 44) & 2) == 0)
    {
      goto LABEL_14;
    }
  }

  v6 = *(this + 3);
  if (v6 >= 0x80)
  {
    v7 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v6, a2) + 1;
    v3 = *(this + 11);
  }

  else
  {
    v7 = 2;
  }

  v4 += v7;
LABEL_14:
  if ((v3 & 4) != 0)
  {
    v8 = *(this + 2);
    if (!v8)
    {
      awd::profile::protobuf_AddDesc_AwdProfile_2eproto(0);
      v8 = *(awd::profile::BedfConfig::default_instance_ + 16);
    }

    v9 = awd::profile::BedfTreeNode::ByteSize(v8, a2);
    v10 = v9;
    if (v9 >= 0x80)
    {
      v11 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v9, a2);
    }

    else
    {
      v11 = 1;
    }

    v4 += v10 + v11 + 1;
  }

LABEL_21:
  v12 = *(this + 8);
  if (v12 < 1)
  {
    v14 = 0;
  }

  else
  {
    v13 = 0;
    v14 = 0;
    do
    {
      v15 = *(*(this + 3) + 4 * v13);
      if ((v15 & 0x80000000) != 0)
      {
        v16 = 10;
      }

      else if (v15 >= 0x80)
      {
        v16 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v15, a2);
        v12 = *(this + 8);
      }

      else
      {
        v16 = 1;
      }

      v14 += v16;
      ++v13;
    }

    while (v13 < v12);
  }

  result = (v14 + v4 + v12);
  *(this + 10) = result;
  return result;
}

void awd::profile::Metric::MergeFrom(awd::profile::Metric *this, const awd::profile::Metric *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v32);
  }

  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 48), *(a2 + 14) + *(this + 14));
  if (*(a2 + 14) >= 1)
  {
    v4 = 0;
    do
    {
      v5 = *(*(a2 + 6) + 8 * v4);
      v6 = *(this + 15);
      v7 = *(this + 14);
      if (v7 >= v6)
      {
        if (v6 == *(this + 16))
        {
          wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 48), v6 + 1);
          v6 = *(this + 15);
        }

        *(this + 15) = v6 + 1;
        operator new();
      }

      v8 = *(this + 6);
      *(this + 14) = v7 + 1;
      awd::profile::ProcessingRule::MergeFrom(*(v8 + 8 * v7), v5);
      ++v4;
    }

    while (v4 < *(a2 + 14));
  }

  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 72), *(a2 + 20) + *(this + 20));
  if (*(a2 + 20) >= 1)
  {
    v9 = 0;
    do
    {
      v10 = *(*(a2 + 9) + 8 * v9);
      v11 = *(this + 21);
      v12 = *(this + 20);
      if (v12 >= v11)
      {
        if (v11 == *(this + 22))
        {
          wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 72), v11 + 1);
          v11 = *(this + 21);
        }

        *(this + 21) = v11 + 1;
        operator new();
      }

      v13 = *(this + 9);
      *(this + 20) = v12 + 1;
      awd::profile::BedfConfig::MergeFrom(*(v13 + 8 * v12), v10);
      ++v9;
    }

    while (v9 < *(a2 + 20));
  }

  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 96), *(a2 + 26) + *(this + 26));
  if (*(a2 + 26) >= 1)
  {
    v14 = 0;
    do
    {
      v15 = *(*(a2 + 12) + 8 * v14);
      v16 = *(this + 27);
      v17 = *(this + 26);
      if (v17 >= v16)
      {
        if (v16 == *(this + 28))
        {
          wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 96), v16 + 1);
          v16 = *(this + 27);
        }

        *(this + 27) = v16 + 1;
        operator new();
      }

      v18 = *(this + 12);
      *(this + 26) = v17 + 1;
      awd::profile::ConfigurationParameter::MergeFrom(*(v18 + 8 * v17), v15);
      ++v14;
    }

    while (v14 < *(a2 + 26));
  }

  v19 = *(a2 + 33);
  if (!v19)
  {
    goto LABEL_37;
  }

  if (v19)
  {
    v22 = *(a2 + 2);
    *(this + 33) |= 1u;
    *(this + 2) = v22;
    v19 = *(a2 + 33);
    if ((v19 & 2) == 0)
    {
LABEL_30:
      if ((v19 & 4) == 0)
      {
        goto LABEL_31;
      }

      goto LABEL_46;
    }
  }

  else if ((v19 & 2) == 0)
  {
    goto LABEL_30;
  }

  v23 = *(a2 + 3);
  *(this + 33) |= 2u;
  *(this + 3) = v23;
  v19 = *(a2 + 33);
  if ((v19 & 4) == 0)
  {
LABEL_31:
    if ((v19 & 8) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_47;
  }

LABEL_46:
  v24 = *(a2 + 4);
  *(this + 33) |= 4u;
  *(this + 4) = v24;
  v19 = *(a2 + 33);
  if ((v19 & 8) == 0)
  {
LABEL_32:
    if ((v19 & 0x10) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_48;
  }

LABEL_47:
  v25 = *(a2 + 5);
  *(this + 33) |= 8u;
  *(this + 5) = v25;
  v19 = *(a2 + 33);
  if ((v19 & 0x10) == 0)
  {
LABEL_33:
    if ((v19 & 0x20) == 0)
    {
      goto LABEL_34;
    }

LABEL_49:
    v27 = *(a2 + 7);
    *(this + 33) |= 0x20u;
    *(this + 7) = v27;
    v19 = *(a2 + 33);
    if ((v19 & 0x40) == 0)
    {
LABEL_35:
      if ((v19 & 0x80) == 0)
      {
        goto LABEL_37;
      }

      goto LABEL_36;
    }

    goto LABEL_50;
  }

LABEL_48:
  v26 = *(a2 + 6);
  *(this + 33) |= 0x10u;
  *(this + 6) = v26;
  v19 = *(a2 + 33);
  if ((v19 & 0x20) != 0)
  {
    goto LABEL_49;
  }

LABEL_34:
  if ((v19 & 0x40) == 0)
  {
    goto LABEL_35;
  }

LABEL_50:
  v28 = *(a2 + 8);
  *(this + 33) |= 0x40u;
  *(this + 8) = v28;
  v19 = *(a2 + 33);
  if ((v19 & 0x80) != 0)
  {
LABEL_36:
    v20 = *(a2 + 9);
    *(this + 33) |= 0x80u;
    *(this + 9) = v20;
    v19 = *(a2 + 33);
  }

LABEL_37:
  if ((v19 & 0xFF00) == 0)
  {
    return;
  }

  if ((v19 & 0x100) != 0)
  {
    v29 = *(a2 + 40);
    *(this + 33) |= 0x100u;
    *(this + 40) = v29;
    v19 = *(a2 + 33);
    if ((v19 & 0x200) == 0)
    {
LABEL_40:
      if ((v19 & 0x1000) == 0)
      {
        goto LABEL_41;
      }

      goto LABEL_54;
    }
  }

  else if ((v19 & 0x200) == 0)
  {
    goto LABEL_40;
  }

  v30 = *(a2 + 11);
  *(this + 33) |= 0x200u;
  *(this + 11) = v30;
  v19 = *(a2 + 33);
  if ((v19 & 0x1000) == 0)
  {
LABEL_41:
    if ((v19 & 0x4000) == 0)
    {
      return;
    }

    goto LABEL_42;
  }

LABEL_54:
  v31 = *(a2 + 30);
  *(this + 33) |= 0x1000u;
  *(this + 30) = v31;
  if ((*(a2 + 33) & 0x4000) == 0)
  {
    return;
  }

LABEL_42:
  v21 = *(a2 + 31);
  *(this + 33) |= 0x4000u;
  *(this + 31) = v21;
}

void sub_1001EB5B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::profile::Metric::~Metric(awd::profile::Metric *this)
{
  *this = off_1002B8CF0;
  awd::profile::protobuf_AddDesc_AwdProfile_2eproto(this);
  sub_1000C8650(this + 96);
  sub_1000C8650(this + 72);
  sub_1000C8650(this + 48);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  awd::profile::Metric::~Metric(this);

  operator delete();
}

uint64_t awd::profile::Metric::Clear(awd::profile::Metric *this)
{
  v2 = *(this + 33);
  if (v2)
  {
    *(this + 24) = 0u;
    *(this + 8) = 0u;
  }

  if ((v2 & 0xFF00) != 0)
  {
    *(this + 40) = 0;
    *(this + 11) = 0;
    *(this + 15) = 0;
  }

  sub_1000C85E0(this + 48);
  sub_1000C85E0(this + 72);
  result = sub_1000C85E0(this + 96);
  *(this + 33) = 0;
  return result;
}

uint64_t awd::profile::Metric::MergePartialFromCodedStream(awd::profile::Metric *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
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

      v7 = TagFallback & 7;
      switch(TagFallback >> 3)
      {
        case 1u:
          if ((TagFallback & 7) != 0)
          {
            goto LABEL_38;
          }

          v9 = *(a2 + 1);
          v8 = *(a2 + 2);
          if (v9 >= v8 || (v10 = *v9, v10 < 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 2);
            if (!result)
            {
              return result;
            }

            v11 = *(a2 + 1);
            v8 = *(a2 + 2);
          }

          else
          {
            *(this + 2) = v10;
            v11 = v9 + 1;
            *(a2 + 1) = v11;
          }

          *(this + 33) |= 1u;
          if (v11 < v8 && *v11 == 16)
          {
            v21 = v11 + 1;
            *(a2 + 1) = v21;
            goto LABEL_47;
          }

          continue;
        case 2u:
          if ((TagFallback & 7) != 0)
          {
            goto LABEL_38;
          }

          v21 = *(a2 + 1);
          v8 = *(a2 + 2);
LABEL_47:
          if (v21 >= v8 || (v26 = *v21, v26 < 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 3);
            if (!result)
            {
              return result;
            }

            v27 = *(a2 + 1);
            v8 = *(a2 + 2);
          }

          else
          {
            *(this + 3) = v26;
            v27 = v21 + 1;
            *(a2 + 1) = v27;
          }

          *(this + 33) |= 2u;
          if (v27 >= v8 || *v27 != 24)
          {
            continue;
          }

          v18 = v27 + 1;
          *(a2 + 1) = v18;
LABEL_55:
          v85 = 0;
          if (v18 >= v8 || (v28 = *v18, (v28 & 0x80000000) != 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v85);
            if (!result)
            {
              return result;
            }

            v28 = v85;
            v29 = *(a2 + 1);
            v8 = *(a2 + 2);
          }

          else
          {
            v29 = v18 + 1;
            *(a2 + 1) = v29;
          }

          *(this + 4) = -(v28 & 1) ^ (v28 >> 1);
          *(this + 33) |= 4u;
          if (v29 >= v8 || *v29 != 32)
          {
            continue;
          }

          v19 = v29 + 1;
          *(a2 + 1) = v19;
LABEL_63:
          v85 = 0;
          if (v19 >= v8 || (v30 = *v19, (v30 & 0x80000000) != 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v85);
            if (!result)
            {
              return result;
            }

            v30 = v85;
            v31 = *(a2 + 1);
            v8 = *(a2 + 2);
          }

          else
          {
            v31 = v19 + 1;
            *(a2 + 1) = v31;
          }

          *(this + 5) = -(v30 & 1) ^ (v30 >> 1);
          *(this + 33) |= 8u;
          if (v31 >= v8 || *v31 != 40)
          {
            continue;
          }

          v14 = v31 + 1;
          *(a2 + 1) = v14;
LABEL_71:
          if (v14 >= v8 || (v32 = *v14, v32 < 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 6);
            if (!result)
            {
              return result;
            }

            v33 = *(a2 + 1);
            v8 = *(a2 + 2);
          }

          else
          {
            *(this + 6) = v32;
            v33 = v14 + 1;
            *(a2 + 1) = v33;
          }

          *(this + 33) |= 0x10u;
          if (v33 >= v8 || *v33 != 48)
          {
            continue;
          }

          v22 = v33 + 1;
          *(a2 + 1) = v22;
LABEL_79:
          if (v22 >= v8 || (v34 = *v22, v34 < 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 7);
            if (!result)
            {
              return result;
            }

            v35 = *(a2 + 1);
            v8 = *(a2 + 2);
          }

          else
          {
            *(this + 7) = v34;
            v35 = v22 + 1;
            *(a2 + 1) = v35;
          }

          *(this + 33) |= 0x20u;
          if (v35 >= v8 || *v35 != 56)
          {
            continue;
          }

          v23 = v35 + 1;
          *(a2 + 1) = v23;
LABEL_87:
          v85 = 0;
          if (v23 >= v8 || (v36 = *v23, (v36 & 0x80000000) != 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v85);
            if (!result)
            {
              return result;
            }

            v36 = v85;
            v37 = *(a2 + 1);
            v8 = *(a2 + 2);
          }

          else
          {
            v37 = v23 + 1;
            *(a2 + 1) = v37;
          }

          *(this + 8) = v36;
          *(this + 33) |= 0x40u;
          if (v37 >= v8 || *v37 != 64)
          {
            continue;
          }

          v20 = v37 + 1;
          *(a2 + 1) = v20;
LABEL_95:
          v85 = 0;
          if (v20 >= v8 || (v38 = *v20, (v38 & 0x80000000) != 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v85);
            if (!result)
            {
              return result;
            }

            v38 = v85;
            v39 = *(a2 + 1);
            v8 = *(a2 + 2);
          }

          else
          {
            v39 = v20 + 1;
            *(a2 + 1) = v39;
          }

          *(this + 9) = v38;
          *(this + 33) |= 0x80u;
          if (v39 >= v8 || *v39 != 72)
          {
            continue;
          }

          v24 = v39 + 1;
          *(a2 + 1) = v24;
LABEL_103:
          v85 = 0;
          if (v24 >= v8 || (v40 = *v24, (v40 & 0x80000000) != 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v85);
            if (!result)
            {
              return result;
            }

            v40 = v85;
            v41 = *(a2 + 1);
            v8 = *(a2 + 2);
          }

          else
          {
            v41 = v24 + 1;
            *(a2 + 1) = v41;
          }

          *(this + 40) = v40 != 0;
          *(this + 33) |= 0x100u;
          if (v41 >= v8 || *v41 != 80)
          {
            continue;
          }

          v17 = v41 + 1;
          *(a2 + 1) = v17;
LABEL_111:
          if (v17 >= v8 || (v42 = *v17, v42 < 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 11);
            if (!result)
            {
              return result;
            }

            v43 = *(a2 + 1);
            v8 = *(a2 + 2);
          }

          else
          {
            *(this + 11) = v42;
            v43 = v17 + 1;
            *(a2 + 1) = v43;
          }

          *(this + 33) |= 0x200u;
          if (v43 >= v8 || *v43 != 90)
          {
            continue;
          }

          break;
        case 3u:
          if ((TagFallback & 7) != 0)
          {
            goto LABEL_38;
          }

          v18 = *(a2 + 1);
          v8 = *(a2 + 2);
          goto LABEL_55;
        case 4u:
          if ((TagFallback & 7) != 0)
          {
            goto LABEL_38;
          }

          v19 = *(a2 + 1);
          v8 = *(a2 + 2);
          goto LABEL_63;
        case 5u:
          if ((TagFallback & 7) != 0)
          {
            goto LABEL_38;
          }

          v14 = *(a2 + 1);
          v8 = *(a2 + 2);
          goto LABEL_71;
        case 6u:
          if ((TagFallback & 7) != 0)
          {
            goto LABEL_38;
          }

          v22 = *(a2 + 1);
          v8 = *(a2 + 2);
          goto LABEL_79;
        case 7u:
          if ((TagFallback & 7) != 0)
          {
            goto LABEL_38;
          }

          v23 = *(a2 + 1);
          v8 = *(a2 + 2);
          goto LABEL_87;
        case 8u:
          if ((TagFallback & 7) != 0)
          {
            goto LABEL_38;
          }

          v20 = *(a2 + 1);
          v8 = *(a2 + 2);
          goto LABEL_95;
        case 9u:
          if ((TagFallback & 7) != 0)
          {
            goto LABEL_38;
          }

          v24 = *(a2 + 1);
          v8 = *(a2 + 2);
          goto LABEL_103;
        case 0xAu:
          if ((TagFallback & 7) != 0)
          {
            goto LABEL_38;
          }

          v17 = *(a2 + 1);
          v8 = *(a2 + 2);
          goto LABEL_111;
        case 0xBu:
          if (v7 == 2)
          {
            goto LABEL_119;
          }

          goto LABEL_38;
        case 0xCu:
          if (v7 == 2)
          {
            goto LABEL_137;
          }

          goto LABEL_38;
        case 0xDu:
          if ((TagFallback & 7) != 0)
          {
            goto LABEL_38;
          }

          v16 = *(a2 + 1);
          v15 = *(a2 + 2);
          goto LABEL_155;
        case 0xEu:
          if (v7 == 2)
          {
            goto LABEL_163;
          }

          goto LABEL_38;
        case 0xFu:
          if ((TagFallback & 7) != 0)
          {
            goto LABEL_38;
          }

          v13 = *(a2 + 1);
          v12 = *(a2 + 2);
          goto LABEL_181;
        default:
LABEL_38:
          if (v7 == 4)
          {
            return 1;
          }

          if ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(a2, TagFallback, a3) & 1) == 0)
          {
            return 0;
          }

          continue;
      }

      do
      {
        *(a2 + 1) = v43 + 1;
LABEL_119:
        v44 = *(this + 15);
        v45 = *(this + 14);
        if (v45 >= v44)
        {
          if (v44 == *(this + 16))
          {
            wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 48), v44 + 1);
            v44 = *(this + 15);
          }

          *(this + 15) = v44 + 1;
          operator new();
        }

        v46 = *(this + 6);
        *(this + 14) = v45 + 1;
        v47 = *(v46 + 8 * v45);
        v85 = 0;
        v48 = *(a2 + 1);
        if (v48 >= *(a2 + 2) || *v48 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v85))
          {
            return 0;
          }
        }

        else
        {
          v85 = *v48;
          *(a2 + 1) = v48 + 1;
        }

        v49 = *(a2 + 14);
        v50 = *(a2 + 15);
        *(a2 + 14) = v49 + 1;
        if (v49 >= v50)
        {
          return 0;
        }

        v51 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2, v85);
        if (!awd::profile::ProcessingRule::MergePartialFromCodedStream(v47, a2, v52) || *(a2 + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2, v51);
        v53 = *(a2 + 14);
        v54 = __OFSUB__(v53, 1);
        v55 = v53 - 1;
        if (v55 < 0 == v54)
        {
          *(a2 + 14) = v55;
        }

        v43 = *(a2 + 1);
        if (v43 >= *(a2 + 2))
        {
          goto LABEL_1;
        }

        v56 = *v43;
      }

      while (v56 == 90);
      if (v56 == 98)
      {
        do
        {
          *(a2 + 1) = v43 + 1;
LABEL_137:
          v57 = *(this + 21);
          v58 = *(this + 20);
          if (v58 >= v57)
          {
            if (v57 == *(this + 22))
            {
              wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 72), v57 + 1);
              v57 = *(this + 21);
            }

            *(this + 21) = v57 + 1;
            operator new();
          }

          v59 = *(this + 9);
          *(this + 20) = v58 + 1;
          v60 = *(v59 + 8 * v58);
          v85 = 0;
          v61 = *(a2 + 1);
          if (v61 >= *(a2 + 2) || *v61 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v85))
            {
              return 0;
            }
          }

          else
          {
            v85 = *v61;
            *(a2 + 1) = v61 + 1;
          }

          v62 = *(a2 + 14);
          v63 = *(a2 + 15);
          *(a2 + 14) = v62 + 1;
          if (v62 >= v63)
          {
            return 0;
          }

          v64 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2, v85);
          if (!awd::profile::BedfConfig::MergePartialFromCodedStream(v60, a2, v65) || *(a2 + 36) != 1)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2, v64);
          v66 = *(a2 + 14);
          v54 = __OFSUB__(v66, 1);
          v67 = v66 - 1;
          if (v67 < 0 == v54)
          {
            *(a2 + 14) = v67;
          }

          v43 = *(a2 + 1);
          v15 = *(a2 + 2);
          if (v43 >= v15)
          {
            goto LABEL_1;
          }

          v68 = *v43;
        }

        while (v68 == 98);
        if (v68 == 104)
        {
          v16 = v43 + 1;
          *(a2 + 1) = v16;
LABEL_155:
          if (v16 < v15)
          {
            v69 = *v16;
            if ((v69 & 0x80000000) == 0)
            {
              *(this + 30) = v69;
              v70 = v16 + 1;
              *(a2 + 1) = v70;
              goto LABEL_160;
            }
          }

          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 30);
          if (!result)
          {
            return result;
          }

          v70 = *(a2 + 1);
          v15 = *(a2 + 2);
LABEL_160:
          *(this + 33) |= 0x1000u;
          if (v70 < v15 && *v70 == 114)
          {
            do
            {
              *(a2 + 1) = v70 + 1;
LABEL_163:
              v71 = *(this + 27);
              v72 = *(this + 26);
              if (v72 >= v71)
              {
                if (v71 == *(this + 28))
                {
                  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 96), v71 + 1);
                  v71 = *(this + 27);
                }

                *(this + 27) = v71 + 1;
                operator new();
              }

              v73 = *(this + 12);
              *(this + 26) = v72 + 1;
              v74 = *(v73 + 8 * v72);
              v85 = 0;
              v75 = *(a2 + 1);
              if (v75 >= *(a2 + 2) || *v75 < 0)
              {
                if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v85))
                {
                  return 0;
                }
              }

              else
              {
                v85 = *v75;
                *(a2 + 1) = v75 + 1;
              }

              v76 = *(a2 + 14);
              v77 = *(a2 + 15);
              *(a2 + 14) = v76 + 1;
              if (v76 >= v77)
              {
                return 0;
              }

              v78 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2, v85);
              if (!awd::profile::ConfigurationParameter::MergePartialFromCodedStream(v74, a2, v79) || *(a2 + 36) != 1)
              {
                return 0;
              }

              wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2, v78);
              v80 = *(a2 + 14);
              v54 = __OFSUB__(v80, 1);
              v81 = v80 - 1;
              if (v81 < 0 == v54)
              {
                *(a2 + 14) = v81;
              }

              v70 = *(a2 + 1);
              v12 = *(a2 + 2);
              if (v70 >= v12)
              {
                goto LABEL_1;
              }

              v82 = *v70;
            }

            while (v82 == 114);
            if (v82 == 120)
            {
              break;
            }
          }
        }
      }
    }

    v13 = v70 + 1;
    *(a2 + 1) = v13;
LABEL_181:
    if (v13 >= v12)
    {
      break;
    }

    v83 = *v13;
    if (v83 < 0)
    {
      break;
    }

    *(this + 31) = v83;
    v84 = v13 + 1;
    *(a2 + 1) = v84;
LABEL_186:
    *(this + 33) |= 0x4000u;
    if (v84 == v12 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
    {
      *(a2 + 8) = 0;
      result = 1;
      *(a2 + 36) = 1;
      return result;
    }
  }

  result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 31);
  if (result)
  {
    v84 = *(a2 + 1);
    v12 = *(a2 + 2);
    goto LABEL_186;
  }

  return result;
}

uint64_t awd::profile::Metric::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 132);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(1, *(this + 8), a2, a4);
    v6 = *(v5 + 132);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_27;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(2, *(v5 + 12), a2, a4);
  v6 = *(v5 + 132);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_28;
  }

LABEL_27:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteSInt32(3, *(v5 + 16), a2, a4);
  v6 = *(v5 + 132);
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_29;
  }

LABEL_28:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteSInt32(4, *(v5 + 20), a2, a4);
  v6 = *(v5 + 132);
  if ((v6 & 0x10) == 0)
  {
LABEL_6:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_30;
  }

LABEL_29:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(5, *(v5 + 24), a2, a4);
  v6 = *(v5 + 132);
  if ((v6 & 0x20) == 0)
  {
LABEL_7:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_31;
  }

LABEL_30:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(6, *(v5 + 28), a2, a4);
  v6 = *(v5 + 132);
  if ((v6 & 0x40) == 0)
  {
LABEL_8:
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_32;
  }

LABEL_31:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(7, *(v5 + 32), a2, a4);
  v6 = *(v5 + 132);
  if ((v6 & 0x80) == 0)
  {
LABEL_9:
    if ((v6 & 0x100) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_33;
  }

LABEL_32:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(8, *(v5 + 36), a2, a4);
  v6 = *(v5 + 132);
  if ((v6 & 0x100) == 0)
  {
LABEL_10:
    if ((v6 & 0x200) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

LABEL_33:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(9, *(v5 + 40), a2, a4);
  if ((*(v5 + 132) & 0x200) != 0)
  {
LABEL_11:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xA, *(v5 + 44), a2, a4);
  }

LABEL_12:
  if (*(v5 + 56) >= 1)
  {
    v7 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0xB, *(*(v5 + 48) + 8 * v7++), a2, a4);
    }

    while (v7 < *(v5 + 56));
  }

  if (*(v5 + 80) >= 1)
  {
    v8 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0xC, *(*(v5 + 72) + 8 * v8++), a2, a4);
    }

    while (v8 < *(v5 + 80));
  }

  if ((*(v5 + 133) & 0x10) != 0)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xD, *(v5 + 120), a2, a4);
  }

  if (*(v5 + 104) >= 1)
  {
    v9 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0xE, *(*(v5 + 96) + 8 * v9++), a2, a4);
    }

    while (v9 < *(v5 + 104));
  }

  if ((*(v5 + 133) & 0x40) != 0)
  {
    v10 = *(v5 + 124);

    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xF, v10, a2, a4);
  }

  return this;
}

uint64_t awd::profile::Metric::ByteSize(awd::profile::Metric *this, unint64_t a2)
{
  v3 = *(this + 33);
  if (!v3)
  {
    v4 = 0;
    goto LABEL_49;
  }

  if (v3)
  {
    v5 = *(this + 2);
    if (v5 >= 0x80)
    {
      v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5, a2) + 1;
      v3 = *(this + 33);
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

  v6 = *(this + 3);
  if (v6 >= 0x80)
  {
    v7 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v6, a2) + 1;
    v3 = *(this + 33);
  }

  else
  {
    v7 = 2;
  }

  v4 += v7;
LABEL_14:
  if ((v3 & 4) != 0)
  {
    v8 = ((2 * *(this + 4)) ^ (*(this + 4) >> 31));
    if (v8 >= 0x80)
    {
      v9 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v8, a2) + 1;
      v3 = *(this + 33);
    }

    else
    {
      v9 = 2;
    }

    v4 += v9;
    if ((v3 & 8) == 0)
    {
LABEL_16:
      if ((v3 & 0x10) == 0)
      {
        goto LABEL_17;
      }

      goto LABEL_29;
    }
  }

  else if ((v3 & 8) == 0)
  {
    goto LABEL_16;
  }

  v10 = ((2 * *(this + 5)) ^ (*(this + 5) >> 31));
  if (v10 >= 0x80)
  {
    v11 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v10, a2) + 1;
    v3 = *(this + 33);
  }

  else
  {
    v11 = 2;
  }

  v4 += v11;
  if ((v3 & 0x10) == 0)
  {
LABEL_17:
    if ((v3 & 0x20) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_33;
  }

LABEL_29:
  v12 = *(this + 6);
  if (v12 >= 0x80)
  {
    v13 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v12, a2) + 1;
    v3 = *(this + 33);
  }

  else
  {
    v13 = 2;
  }

  v4 += v13;
  if ((v3 & 0x20) == 0)
  {
LABEL_18:
    if ((v3 & 0x40) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_37;
  }

LABEL_33:
  v14 = *(this + 7);
  if (v14 >= 0x80)
  {
    v15 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v14, a2) + 1;
    v3 = *(this + 33);
  }

  else
  {
    v15 = 2;
  }

  v4 += v15;
  if ((v3 & 0x40) == 0)
  {
LABEL_19:
    if ((v3 & 0x80) == 0)
    {
      goto LABEL_49;
    }

    goto LABEL_43;
  }

LABEL_37:
  v16 = *(this + 8);
  if ((v16 & 0x80000000) != 0)
  {
    v17 = 11;
  }

  else if (v16 >= 0x80)
  {
    v17 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v16, a2) + 1;
    v3 = *(this + 33);
  }

  else
  {
    v17 = 2;
  }

  v4 += v17;
  if ((v3 & 0x80) != 0)
  {
LABEL_43:
    v18 = *(this + 9);
    if ((v18 & 0x80000000) != 0)
    {
      v19 = 11;
    }

    else if (v18 >= 0x80)
    {
      v19 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v18, a2) + 1;
      v3 = *(this + 33);
    }

    else
    {
      v19 = 2;
    }

    v4 += v19;
  }

LABEL_49:
  if ((v3 & 0xFF00) == 0)
  {
    goto LABEL_66;
  }

  v4 += (v3 >> 7) & 2;
  if ((v3 & 0x200) != 0)
  {
    v20 = *(this + 11);
    if (v20 >= 0x80)
    {
      v21 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v20, a2) + 1;
      v3 = *(this + 33);
    }

    else
    {
      v21 = 2;
    }

    v4 += v21;
    if ((v3 & 0x1000) == 0)
    {
LABEL_52:
      if ((v3 & 0x4000) == 0)
      {
        goto LABEL_66;
      }

      goto LABEL_62;
    }
  }

  else if ((v3 & 0x1000) == 0)
  {
    goto LABEL_52;
  }

  v22 = *(this + 30);
  if (v22 >= 0x80)
  {
    v23 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v22, a2) + 1;
    v3 = *(this + 33);
  }

  else
  {
    v23 = 2;
  }

  v4 += v23;
  if ((v3 & 0x4000) != 0)
  {
LABEL_62:
    v24 = *(this + 31);
    if (v24 >= 0x80)
    {
      v25 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v24, a2) + 1;
    }

    else
    {
      v25 = 2;
    }

    v4 += v25;
  }

LABEL_66:
  v26 = *(this + 14);
  v27 = v26 + v4;
  if (v26 >= 1)
  {
    v28 = 0;
    do
    {
      v29 = awd::profile::ProcessingRule::ByteSize(*(*(this + 6) + 8 * v28), a2);
      v30 = v29;
      if (v29 >= 0x80)
      {
        v31 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v29, a2);
      }

      else
      {
        v31 = 1;
      }

      v27 += v30 + v31;
      ++v28;
    }

    while (v28 < *(this + 14));
  }

  v32 = *(this + 20);
  v33 = v32 + v27;
  if (v32 >= 1)
  {
    v34 = 0;
    do
    {
      v35 = awd::profile::BedfConfig::ByteSize(*(*(this + 9) + 8 * v34), a2);
      v36 = v35;
      if (v35 >= 0x80)
      {
        v37 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v35, a2);
      }

      else
      {
        v37 = 1;
      }

      v33 += v36 + v37;
      ++v34;
    }

    while (v34 < *(this + 20));
  }

  v38 = *(this + 26);
  v39 = (v38 + v33);
  if (v38 >= 1)
  {
    v40 = 0;
    do
    {
      v41 = awd::profile::ConfigurationParameter::ByteSize(*(*(this + 12) + 8 * v40), a2);
      v42 = v41;
      if (v41 >= 0x80)
      {
        v43 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v41, a2);
      }

      else
      {
        v43 = 1;
      }

      v39 = (v42 + v39 + v43);
      ++v40;
    }

    while (v40 < *(this + 26));
  }

  *(this + 32) = v39;
  return v39;
}

void awd::profile::Profile::MergeFrom(awd::profile::Profile *this, const awd::profile::Profile *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v34);
  }

  v4 = *(a2 + 6);
  if (v4)
  {
    sub_10001C3A0(this + 4, *(this + 6) + v4);
    memcpy((*(this + 2) + 4 * *(this + 6)), *(a2 + 2), 4 * *(a2 + 6));
    *(this + 6) += *(a2 + 6);
  }

  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 40), *(a2 + 12) + *(this + 12));
  if (*(a2 + 12) >= 1)
  {
    v5 = 0;
    do
    {
      v6 = *(*(a2 + 5) + 8 * v5);
      v7 = *(this + 13);
      v8 = *(this + 12);
      if (v8 >= v7)
      {
        if (v7 == *(this + 14))
        {
          wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 40), v7 + 1);
          v7 = *(this + 13);
        }

        *(this + 13) = v7 + 1;
        operator new();
      }

      v9 = *(this + 5);
      *(this + 12) = v8 + 1;
      awd::profile::Metric::MergeFrom(*(v9 + 8 * v8), v6);
      ++v5;
    }

    while (v5 < *(a2 + 12));
  }

  v10 = wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 88), *(a2 + 24) + *(this + 24));
  if (*(a2 + 24) >= 1)
  {
    v11 = 0;
    do
    {
      v12 = *(*(a2 + 11) + 8 * v11);
      v13 = *(this + 25);
      v14 = *(this + 24);
      if (v14 >= v13)
      {
        if (v13 == *(this + 26))
        {
          v10 = wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 88), v13 + 1);
          v13 = *(this + 25);
        }

        *(this + 25) = v13 + 1;
        v16 = wireless_diagnostics::google::protobuf::internal::StringTypeHandlerBase::New(v10);
        v17 = *(this + 11);
        v18 = *(this + 24);
        *(this + 24) = v18 + 1;
        *(v17 + 8 * v18) = v16;
      }

      else
      {
        v15 = *(this + 11);
        *(this + 24) = v14 + 1;
        v16 = *(v15 + 8 * v14);
      }

      v10 = std::string::operator=(v16, v12);
      ++v11;
    }

    while (v11 < *(a2 + 24));
  }

  v19 = *(a2 + 33);
  if (v19)
  {
    if (v19)
    {
      v20 = *(a2 + 2);
      *(this + 33) |= 1u;
      *(this + 2) = v20;
      v19 = *(a2 + 33);
      if ((v19 & 2) == 0)
      {
LABEL_24:
        if ((v19 & 8) == 0)
        {
          goto LABEL_25;
        }

        goto LABEL_31;
      }
    }

    else if ((v19 & 2) == 0)
    {
      goto LABEL_24;
    }

    v21 = *(a2 + 3);
    *(this + 33) |= 2u;
    *(this + 3) = v21;
    v19 = *(a2 + 33);
    if ((v19 & 8) == 0)
    {
LABEL_25:
      if ((v19 & 0x10) == 0)
      {
        goto LABEL_26;
      }

      goto LABEL_32;
    }

LABEL_31:
    v22 = *(a2 + 8);
    *(this + 33) |= 8u;
    *(this + 8) = v22;
    v19 = *(a2 + 33);
    if ((v19 & 0x10) == 0)
    {
LABEL_26:
      if ((v19 & 0x20) == 0)
      {
        goto LABEL_27;
      }

      goto LABEL_33;
    }

LABEL_32:
    v23 = *(a2 + 9);
    *(this + 33) |= 0x10u;
    *(this + 9) = v23;
    v19 = *(a2 + 33);
    if ((v19 & 0x20) == 0)
    {
LABEL_27:
      if ((v19 & 0x80) == 0)
      {
        goto LABEL_39;
      }

      goto LABEL_34;
    }

LABEL_33:
    v24 = *(a2 + 16);
    *(this + 33) |= 0x20u;
    *(this + 16) = v24;
    v19 = *(a2 + 33);
    if ((v19 & 0x80) == 0)
    {
      goto LABEL_39;
    }

LABEL_34:
    *(this + 33) |= 0x80u;
    v25 = *(this + 9);
    if (!v25)
    {
      operator new();
    }

    v26 = *(a2 + 9);
    if (!v26)
    {
      awd::profile::protobuf_AddDesc_AwdProfile_2eproto(v10);
      v26 = *(awd::profile::Profile::default_instance_ + 72);
    }

    awd::profile::Log::MergeFrom(v25, v26);
    v19 = *(a2 + 33);
  }

LABEL_39:
  if ((v19 & 0xFF00) == 0)
  {
    return;
  }

  if ((v19 & 0x100) != 0)
  {
    v27 = *(a2 + 17);
    *(this + 33) |= 0x100u;
    *(this + 17) = v27;
    v19 = *(a2 + 33);
    if ((v19 & 0x200) == 0)
    {
LABEL_42:
      if ((v19 & 0x400) == 0)
      {
        goto LABEL_43;
      }

      goto LABEL_49;
    }
  }

  else if ((v19 & 0x200) == 0)
  {
    goto LABEL_42;
  }

  v28 = *(a2 + 20);
  *(this + 33) |= 0x200u;
  *(this + 20) = v28;
  v19 = *(a2 + 33);
  if ((v19 & 0x400) == 0)
  {
LABEL_43:
    if ((v19 & 0x800) == 0)
    {
      goto LABEL_44;
    }

    goto LABEL_50;
  }

LABEL_49:
  v29 = *(a2 + 21);
  *(this + 33) |= 0x400u;
  *(this + 21) = v29;
  v19 = *(a2 + 33);
  if ((v19 & 0x800) == 0)
  {
LABEL_44:
    if ((v19 & 0x2000) == 0)
    {
      goto LABEL_45;
    }

    goto LABEL_51;
  }

LABEL_50:
  v30 = *(a2 + 28);
  *(this + 33) |= 0x800u;
  *(this + 28) = v30;
  v19 = *(a2 + 33);
  if ((v19 & 0x2000) == 0)
  {
LABEL_45:
    if ((v19 & 0x4000) == 0)
    {
      return;
    }

    goto LABEL_52;
  }

LABEL_51:
  v31 = *(a2 + 116);
  *(this + 33) |= 0x2000u;
  *(this + 116) = v31;
  if ((*(a2 + 33) & 0x4000) == 0)
  {
    return;
  }

LABEL_52:
  v32 = *(a2 + 15);
  *(this + 33) |= 0x4000u;
  v33 = *(this + 15);
  if (v33 == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
  {
    operator new();
  }

  std::string::operator=(v33, v32);
}

void sub_1001ECC20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::profile::Profile::~Profile(awd::profile::Profile *this)
{
  *this = off_1002B8D68;
  awd::profile::Profile::SharedDtor(this);
  sub_1001F757C(this + 88);
  sub_1000C8650(this + 40);
  if (*(this + 2))
  {
    operator delete[]();
  }

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  awd::profile::Profile::~Profile(this);

  operator delete();
}

void awd::profile::Profile::SharedDtor(awd::profile::Profile *this)
{
  v2 = *(this + 15);
  if (v2 != &wireless_diagnostics::google::protobuf::internal::kEmptyString && v2 != 0)
  {
    if (*(v2 + 23) < 0)
    {
      operator delete(*v2);
    }

    operator delete();
  }

  awd::profile::protobuf_AddDesc_AwdProfile_2eproto(this);
  if (awd::profile::Profile::default_instance_ != this)
  {
    v4 = *(this + 9);
    if (v4)
    {
      v5 = *(*v4 + 8);

      v5();
    }
  }
}

uint64_t awd::profile::Profile::Clear(awd::profile::Profile *this)
{
  v2 = *(this + 33);
  if (v2)
  {
    *(this + 1) = 0;
    *(this + 4) = 0;
    *(this + 16) = 0;
    if ((v2 & 0x80) != 0)
    {
      v3 = *(this + 9);
      if (v3)
      {
        sub_1000C85E0(v3 + 8);
        *(v3 + 36) = 0;
        v2 = *(this + 33);
      }
    }
  }

  if ((v2 & 0xFF00) != 0)
  {
    *(this + 17) = 0;
    *(this + 10) = 0;
    *(this + 28) = 0;
    *(this + 116) = 0;
    if ((v2 & 0x4000) != 0)
    {
      v4 = *(this + 15);
      if (v4 != &wireless_diagnostics::google::protobuf::internal::kEmptyString)
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

  *(this + 6) = 0;
  sub_1000C85E0(this + 40);
  result = sub_100129BCC(this + 88);
  *(this + 33) = 0;
  return result;
}

uint64_t awd::profile::Log::Clear(awd::profile::Log *this)
{
  result = sub_1000C85E0(this + 8);
  *(this + 9) = 0;
  return result;
}

uint64_t awd::profile::Profile::MergePartialFromCodedStream(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
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
          goto LABEL_41;
        }

        v9 = *(a2 + 1);
        v8 = *(a2 + 2);
        if (v9 >= v8 || (v10 = *v9, v10 < 0))
        {
          this = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, (v4 + 8));
          if (!this)
          {
            return this;
          }

          v11 = *(a2 + 1);
          v8 = *(a2 + 2);
        }

        else
        {
          *(v4 + 8) = v10;
          v11 = v9 + 1;
          *(a2 + 1) = v11;
        }

        *(v4 + 132) |= 1u;
        if (v11 < v8 && *v11 == 24)
        {
          v18 = v11 + 1;
          *(a2 + 1) = v18;
          goto LABEL_51;
        }

        continue;
      case 3u:
        if ((v6 & 7) != 0)
        {
          goto LABEL_41;
        }

        v18 = *(a2 + 1);
        v8 = *(a2 + 2);
LABEL_51:
        if (v18 >= v8 || (v25 = *v18, v25 < 0))
        {
          this = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, (v4 + 12));
          if (!this)
          {
            return this;
          }

          v26 = *(a2 + 1);
          v8 = *(a2 + 2);
        }

        else
        {
          *(v4 + 12) = v25;
          v26 = (v18 + 1);
          *(a2 + 1) = v26;
        }

        *(v4 + 132) |= 2u;
        if (v26 < v8)
        {
          v27 = *v26;
          goto LABEL_58;
        }

        continue;
      case 4u:
        if ((v6 & 7) == 0)
        {
          v24 = *(a2 + 1);
          v8 = *(a2 + 2);
          while (1)
          {
            v81 = 0;
            if (v24 >= v8 || *v24 < 0)
            {
              this = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v81);
              if (!this)
              {
                return 0;
              }
            }

            else
            {
              v81 = *v24;
              *(a2 + 1) = v24 + 1;
            }

            v28 = *(v4 + 24);
            if (v28 == *(v4 + 28))
            {
              this = sub_10001C3A0((v4 + 16), v28 + 1);
              v28 = *(v4 + 24);
            }

            v29 = v81;
            v30 = *(v4 + 16);
            *(v4 + 24) = v28 + 1;
            *(v30 + 4 * v28) = v29;
            v31 = *(v4 + 28) - *(v4 + 24);
            if (v31 >= 1)
            {
              v32 = v31 + 1;
              do
              {
                v33 = *(a2 + 1);
                v34 = *(a2 + 2);
                if (v33 >= v34 || *v33 != 32)
                {
                  break;
                }

                *(a2 + 1) = v33 + 1;
                if ((v33 + 1) >= v34 || (v35 = v33[1], (v35 & 0x80000000) != 0))
                {
                  this = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v81);
                  if (!this)
                  {
                    return 0;
                  }

                  v35 = v81;
                  v30 = *(v4 + 16);
                }

                else
                {
                  v81 = v33[1];
                  *(a2 + 1) = v33 + 2;
                }

                v36 = *(v4 + 24);
                *(v4 + 24) = v36 + 1;
                *(v30 + 4 * v36) = v35;
                --v32;
              }

              while (v32 > 1);
            }

LABEL_76:
            v26 = *(a2 + 1);
            v8 = *(a2 + 2);
            if (v26 >= v8)
            {
              goto LABEL_2;
            }

            v27 = *v26;
            if (v27 == 40)
            {
              break;
            }

LABEL_58:
            if (v27 != 32)
            {
              goto LABEL_2;
            }

            v24 = (v26 + 1);
            *(a2 + 1) = v24;
          }

          v20 = (v26 + 1);
          *(a2 + 1) = v20;
LABEL_79:
          if (v20 >= v8 || (v37 = *v20, v37 < 0))
          {
            this = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, (v4 + 32));
            if (!this)
            {
              return this;
            }

            v38 = *(a2 + 1);
            v8 = *(a2 + 2);
          }

          else
          {
            *(v4 + 32) = v37;
            v38 = v20 + 1;
            *(a2 + 1) = v38;
          }

          *(v4 + 132) |= 8u;
          if (v38 < v8 && *v38 == 48)
          {
            v21 = v38 + 1;
            *(a2 + 1) = v21;
LABEL_87:
            v81 = 0;
            if (v21 >= v8 || (v39 = *v21, (v39 & 0x80000000) != 0))
            {
              this = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v81);
              if (!this)
              {
                return this;
              }

              v39 = v81;
              v40 = *(a2 + 1);
              v8 = *(a2 + 2);
            }

            else
            {
              v40 = v21 + 1;
              *(a2 + 1) = v40;
            }

            *(v4 + 36) = v39;
            *(v4 + 132) |= 0x10u;
            if (v40 < v8 && *v40 == 56)
            {
              v16 = v40 + 1;
              *(a2 + 1) = v16;
LABEL_95:
              v81 = 0;
              if (v16 >= v8 || (v41 = *v16, (v41 & 0x80000000) != 0))
              {
                this = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v81);
                if (!this)
                {
                  return this;
                }

                v41 = v81;
                v42 = *(a2 + 1);
                v8 = *(a2 + 2);
              }

              else
              {
                v42 = v16 + 1;
                *(a2 + 1) = v42;
              }

              *(v4 + 64) = v41;
              *(v4 + 132) |= 0x20u;
              if (v42 < v8 && *v42 == 66)
              {
                do
                {
                  *(a2 + 1) = v42 + 1;
LABEL_103:
                  v43 = *(v4 + 52);
                  v44 = *(v4 + 48);
                  if (v44 >= v43)
                  {
                    if (v43 == *(v4 + 56))
                    {
                      wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((v4 + 40), v43 + 1);
                      v43 = *(v4 + 52);
                    }

                    *(v4 + 52) = v43 + 1;
                    operator new();
                  }

                  v45 = *(v4 + 40);
                  *(v4 + 48) = v44 + 1;
                  v46 = *(v45 + 8 * v44);
                  v81 = 0;
                  v47 = *(a2 + 1);
                  if (v47 >= *(a2 + 2) || *v47 < 0)
                  {
                    if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v81))
                    {
                      return 0;
                    }
                  }

                  else
                  {
                    v81 = *v47;
                    *(a2 + 1) = v47 + 1;
                  }

                  v48 = *(a2 + 14);
                  v49 = *(a2 + 15);
                  *(a2 + 14) = v48 + 1;
                  if (v48 >= v49)
                  {
                    return 0;
                  }

                  v50 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2, v81);
                  if (!awd::profile::Metric::MergePartialFromCodedStream(v46, a2, v51) || *(a2 + 36) != 1)
                  {
                    return 0;
                  }

                  this = wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2, v50);
                  v52 = *(a2 + 14);
                  v53 = __OFSUB__(v52, 1);
                  v54 = v52 - 1;
                  if (v54 < 0 == v53)
                  {
                    *(a2 + 14) = v54;
                  }

                  v42 = *(a2 + 1);
                  if (v42 >= *(a2 + 2))
                  {
                    goto LABEL_2;
                  }

                  v55 = *v42;
                }

                while (v55 == 66);
                if (v55 == 74)
                {
                  *(a2 + 1) = v42 + 1;
LABEL_121:
                  *(v4 + 132) |= 0x80u;
                  v56 = *(v4 + 72);
                  if (!v56)
                  {
                    operator new();
                  }

                  v81 = 0;
                  v57 = *(a2 + 1);
                  if (v57 >= *(a2 + 2) || *v57 < 0)
                  {
                    if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v81))
                    {
                      return 0;
                    }
                  }

                  else
                  {
                    v81 = *v57;
                    *(a2 + 1) = v57 + 1;
                  }

                  v58 = *(a2 + 14);
                  v59 = *(a2 + 15);
                  *(a2 + 14) = v58 + 1;
                  if (v58 >= v59)
                  {
                    return 0;
                  }

                  v60 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2, v81);
                  if (!awd::profile::Log::MergePartialFromCodedStream(v56, a2, v61) || *(a2 + 36) != 1)
                  {
                    return 0;
                  }

                  this = wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2, v60);
                  v62 = *(a2 + 14);
                  v53 = __OFSUB__(v62, 1);
                  v63 = v62 - 1;
                  if (v63 < 0 == v53)
                  {
                    *(a2 + 14) = v63;
                  }

                  v64 = *(a2 + 1);
                  v14 = *(a2 + 2);
                  if (v64 < v14 && *v64 == 80)
                  {
                    v23 = v64 + 1;
                    *(a2 + 1) = v23;
LABEL_135:
                    if (v23 >= v14 || (v65 = *v23, v65 < 0))
                    {
                      this = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, (v4 + 68));
                      if (!this)
                      {
                        return this;
                      }

                      v66 = *(a2 + 1);
                      v14 = *(a2 + 2);
                    }

                    else
                    {
                      *(v4 + 68) = v65;
                      v66 = v23 + 1;
                      *(a2 + 1) = v66;
                    }

                    *(v4 + 132) |= 0x100u;
                    if (v66 < v14 && *v66 == 88)
                    {
                      v22 = v66 + 1;
                      *(a2 + 1) = v22;
LABEL_143:
                      if (v22 >= v14 || (v67 = *v22, v67 < 0))
                      {
                        this = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, (v4 + 80));
                        if (!this)
                        {
                          return this;
                        }

                        v68 = *(a2 + 1);
                        v14 = *(a2 + 2);
                      }

                      else
                      {
                        *(v4 + 80) = v67;
                        v68 = v22 + 1;
                        *(a2 + 1) = v68;
                      }

                      *(v4 + 132) |= 0x200u;
                      if (v68 < v14 && *v68 == 104)
                      {
                        v15 = v68 + 1;
                        *(a2 + 1) = v15;
LABEL_151:
                        if (v15 >= v14 || (v69 = *v15, v69 < 0))
                        {
                          this = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, (v4 + 84));
                          if (!this)
                          {
                            return this;
                          }

                          v70 = *(a2 + 1);
                          v14 = *(a2 + 2);
                        }

                        else
                        {
                          *(v4 + 84) = v69;
                          v70 = (v15 + 1);
                          *(a2 + 1) = v70;
                        }

                        *(v4 + 132) |= 0x400u;
                        if (v14 - v70 >= 2 && *v70 == 160 && v70[1] == 1)
                        {
                          v17 = (v70 + 2);
                          *(a2 + 1) = v17;
LABEL_160:
                          if (v17 >= v14 || (v71 = *v17, v71 < 0))
                          {
                            this = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, (v4 + 112));
                            if (!this)
                            {
                              return this;
                            }

                            v72 = *(a2 + 1);
                            v14 = *(a2 + 2);
                          }

                          else
                          {
                            *(v4 + 112) = v71;
                            v72 = (v17 + 1);
                            *(a2 + 1) = v72;
                          }

                          *(v4 + 132) |= 0x800u;
                          if (v14 - v72 >= 2 && *v72 == 130 && v72[1] == 2)
                          {
                            while (1)
                            {
                              *(a2 + 1) = v72 + 2;
LABEL_169:
                              v73 = *(v4 + 100);
                              v74 = *(v4 + 96);
                              if (v74 >= v73)
                              {
                                if (v73 == *(v4 + 104))
                                {
                                  this = wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((v4 + 88), v73 + 1);
                                  v73 = *(v4 + 100);
                                }

                                *(v4 + 100) = v73 + 1;
                                v75 = wireless_diagnostics::google::protobuf::internal::StringTypeHandlerBase::New(this);
                                v76 = *(v4 + 88);
                                v77 = *(v4 + 96);
                                *(v4 + 96) = v77 + 1;
                                *(v76 + 8 * v77) = v75;
                              }

                              else
                              {
                                *(v4 + 96) = v74 + 1;
                              }

                              this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
                              if (!this)
                              {
                                return this;
                              }

                              v72 = *(a2 + 1);
                              v12 = *(a2 + 2);
                              if (v12 - v72 < 2)
                              {
                                goto LABEL_2;
                              }

                              v78 = *v72;
                              if (v78 == 136)
                              {
                                break;
                              }

                              if (v78 != 130 || v72[1] != 2)
                              {
                                goto LABEL_2;
                              }
                            }

                            if (v72[1] == 2)
                            {
                              v13 = (v72 + 2);
                              *(a2 + 1) = v13;
LABEL_182:
                              v81 = 0;
                              if (v13 >= v12 || (v79 = *v13, (v79 & 0x80000000) != 0))
                              {
                                this = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v81);
                                if (!this)
                                {
                                  return this;
                                }

                                v79 = v81;
                                v80 = *(a2 + 1);
                                v12 = *(a2 + 2);
                              }

                              else
                              {
                                v80 = (v13 + 1);
                                *(a2 + 1) = v80;
                              }

                              *(v4 + 116) = v79 != 0;
                              v19 = *(v4 + 132) | 0x2000;
                              *(v4 + 132) = v19;
                              if (v12 - v80 >= 2 && *v80 == 146 && v80[1] == 2)
                              {
                                *(a2 + 1) = v80 + 2;
LABEL_191:
                                *(v4 + 132) = v19 | 0x4000;
                                if (*(v4 + 120) == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
                                {
                                  operator new();
                                }

                                this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
                                if (!this)
                                {
                                  return this;
                                }

                                if (*(a2 + 1) == *(a2 + 2) && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
                                {
                                  *(a2 + 8) = 0;
                                  this = 1;
                                  *(a2 + 36) = 1;
                                  return this;
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
        }

        if (v7 != 2)
        {
LABEL_41:
          if (v7 == 4)
          {
            return 1;
          }

          this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(a2, v6, a3);
          if ((this & 1) == 0)
          {
            return 0;
          }

          continue;
        }

        this = sub_1001E0570(a2, (v4 + 16));
        if (this)
        {
          goto LABEL_76;
        }

        return this;
      case 5u:
        if ((v6 & 7) != 0)
        {
          goto LABEL_41;
        }

        v20 = *(a2 + 1);
        v8 = *(a2 + 2);
        goto LABEL_79;
      case 6u:
        if ((v6 & 7) != 0)
        {
          goto LABEL_41;
        }

        v21 = *(a2 + 1);
        v8 = *(a2 + 2);
        goto LABEL_87;
      case 7u:
        if ((v6 & 7) != 0)
        {
          goto LABEL_41;
        }

        v16 = *(a2 + 1);
        v8 = *(a2 + 2);
        goto LABEL_95;
      case 8u:
        if (v7 == 2)
        {
          goto LABEL_103;
        }

        goto LABEL_41;
      case 9u:
        if (v7 == 2)
        {
          goto LABEL_121;
        }

        goto LABEL_41;
      case 0xAu:
        if ((v6 & 7) != 0)
        {
          goto LABEL_41;
        }

        v23 = *(a2 + 1);
        v14 = *(a2 + 2);
        goto LABEL_135;
      case 0xBu:
        if ((v6 & 7) != 0)
        {
          goto LABEL_41;
        }

        v22 = *(a2 + 1);
        v14 = *(a2 + 2);
        goto LABEL_143;
      case 0xDu:
        if ((v6 & 7) != 0)
        {
          goto LABEL_41;
        }

        v15 = *(a2 + 1);
        v14 = *(a2 + 2);
        goto LABEL_151;
      case 0x14u:
        if ((v6 & 7) != 0)
        {
          goto LABEL_41;
        }

        v17 = *(a2 + 1);
        v14 = *(a2 + 2);
        goto LABEL_160;
      case 0x20u:
        if (v7 == 2)
        {
          goto LABEL_169;
        }

        goto LABEL_41;
      case 0x21u:
        if ((v6 & 7) != 0)
        {
          goto LABEL_41;
        }

        v13 = *(a2 + 1);
        v12 = *(a2 + 2);
        goto LABEL_182;
      case 0x22u:
        if (v7 != 2)
        {
          goto LABEL_41;
        }

        v19 = *(v4 + 132);
        goto LABEL_191;
      default:
        goto LABEL_41;
    }
  }
}

awd::profile *awd::profile::Profile::SerializeWithCachedSizes(awd::profile *this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 33);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(1, *(this + 2), a2, a4);
    v6 = *(v5 + 33);
  }

  if ((v6 & 2) != 0)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(3, *(v5 + 3), a2, a4);
  }

  if (*(v5 + 6) >= 1)
  {
    v7 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(4, *(*(v5 + 2) + 4 * v7++), a2, a4);
    }

    while (v7 < *(v5 + 6));
  }

  v8 = *(v5 + 33);
  if ((v8 & 8) != 0)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(5, *(v5 + 8), a2, a4);
    v8 = *(v5 + 33);
    if ((v8 & 0x10) == 0)
    {
LABEL_10:
      if ((v8 & 0x20) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_11;
    }
  }

  else if ((v8 & 0x10) == 0)
  {
    goto LABEL_10;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(6, *(v5 + 9), a2, a4);
  if ((*(v5 + 33) & 0x20) != 0)
  {
LABEL_11:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(7, *(v5 + 16), a2, a4);
  }

LABEL_12:
  if (*(v5 + 12) >= 1)
  {
    v9 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(8, *(*(v5 + 5) + 8 * v9++), a2, a4);
    }

    while (v9 < *(v5 + 12));
  }

  v10 = *(v5 + 33);
  if ((v10 & 0x80) != 0)
  {
    v13 = *(v5 + 9);
    if (!v13)
    {
      awd::profile::protobuf_AddDesc_AwdProfile_2eproto(this);
      v13 = *(awd::profile::Profile::default_instance_ + 72);
    }

    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(9, v13, a2, a4);
    v10 = *(v5 + 33);
    if ((v10 & 0x100) == 0)
    {
LABEL_17:
      if ((v10 & 0x200) == 0)
      {
        goto LABEL_18;
      }

      goto LABEL_35;
    }
  }

  else if ((v10 & 0x100) == 0)
  {
    goto LABEL_17;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xA, *(v5 + 17), a2, a4);
  v10 = *(v5 + 33);
  if ((v10 & 0x200) == 0)
  {
LABEL_18:
    if ((v10 & 0x400) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_36;
  }

LABEL_35:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xB, *(v5 + 20), a2, a4);
  v10 = *(v5 + 33);
  if ((v10 & 0x400) == 0)
  {
LABEL_19:
    if ((v10 & 0x800) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_20;
  }

LABEL_36:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xD, *(v5 + 21), a2, a4);
  if ((*(v5 + 33) & 0x800) != 0)
  {
LABEL_20:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x14, *(v5 + 28), a2, a4);
  }

LABEL_21:
  if (*(v5 + 24) >= 1)
  {
    v11 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
      ++v11;
    }

    while (v11 < *(v5 + 24));
  }

  v12 = *(v5 + 33);
  if ((v12 & 0x2000) != 0)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(0x21, *(v5 + 116), a2, a4);
    v12 = *(v5 + 33);
  }

  if ((v12 & 0x4000) != 0)
  {

    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
  }

  return this;
}

uint64_t awd::profile::Profile::ByteSize(awd::profile::Profile *this, unint64_t a2)
{
  v3 = *(this + 33);
  if (!v3)
  {
    v4 = 0;
    goto LABEL_41;
  }

  if (v3)
  {
    v5 = *(this + 2);
    if (v5 >= 0x80)
    {
      v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5, a2) + 1;
      v3 = *(this + 33);
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

  v6 = *(this + 3);
  if (v6 >= 0x80)
  {
    v7 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v6, a2) + 1;
    v3 = *(this + 33);
  }

  else
  {
    v7 = 2;
  }

  v4 += v7;
LABEL_14:
  if ((v3 & 8) != 0)
  {
    v8 = *(this + 8);
    if (v8 >= 0x80)
    {
      v9 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v8, a2) + 1;
      v3 = *(this + 33);
    }

    else
    {
      v9 = 2;
    }

    v4 += v9;
    if ((v3 & 0x10) == 0)
    {
LABEL_16:
      if ((v3 & 0x20) == 0)
      {
        goto LABEL_17;
      }

LABEL_29:
      v12 = *(this + 16);
      if ((v12 & 0x80000000) != 0)
      {
        v13 = 11;
      }

      else if (v12 >= 0x80)
      {
        v13 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v12, a2) + 1;
        v3 = *(this + 33);
      }

      else
      {
        v13 = 2;
      }

      v4 += v13;
      if ((v3 & 0x80) == 0)
      {
        goto LABEL_41;
      }

      goto LABEL_35;
    }
  }

  else if ((v3 & 0x10) == 0)
  {
    goto LABEL_16;
  }

  v10 = *(this + 9);
  if ((v10 & 0x80000000) != 0)
  {
    v11 = 11;
  }

  else if (v10 >= 0x80)
  {
    v11 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v10, a2) + 1;
    v3 = *(this + 33);
  }

  else
  {
    v11 = 2;
  }

  v4 += v11;
  if ((v3 & 0x20) != 0)
  {
    goto LABEL_29;
  }

LABEL_17:
  if ((v3 & 0x80) == 0)
  {
    goto LABEL_41;
  }

LABEL_35:
  v14 = *(this + 9);
  if (!v14)
  {
    awd::profile::protobuf_AddDesc_AwdProfile_2eproto(0);
    v14 = *(awd::profile::Profile::default_instance_ + 72);
  }

  v15 = awd::profile::Log::ByteSize(v14, a2);
  v16 = v15;
  if (v15 >= 0x80)
  {
    v17 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v15, a2);
  }

  else
  {
    v17 = 1;
  }

  v4 += v16 + v17 + 1;
  v3 = *(this + 33);
LABEL_41:
  if ((v3 & 0xFF00) == 0)
  {
    goto LABEL_75;
  }

  if ((v3 & 0x100) != 0)
  {
    v18 = *(this + 17);
    if (v18 >= 0x80)
    {
      v19 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v18, a2) + 1;
      v3 = *(this + 33);
    }

    else
    {
      v19 = 2;
    }

    v4 += v19;
    if ((v3 & 0x200) == 0)
    {
LABEL_44:
      if ((v3 & 0x400) == 0)
      {
        goto LABEL_45;
      }

LABEL_55:
      v22 = *(this + 21);
      if (v22 >= 0x80)
      {
        v23 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v22, a2) + 1;
        v3 = *(this + 33);
      }

      else
      {
        v23 = 2;
      }

      v4 += v23;
      if ((v3 & 0x800) == 0)
      {
        goto LABEL_63;
      }

      goto LABEL_59;
    }
  }

  else if ((v3 & 0x200) == 0)
  {
    goto LABEL_44;
  }

  v20 = *(this + 20);
  if (v20 >= 0x80)
  {
    v21 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v20, a2) + 1;
    v3 = *(this + 33);
  }

  else
  {
    v21 = 2;
  }

  v4 += v21;
  if ((v3 & 0x400) != 0)
  {
    goto LABEL_55;
  }

LABEL_45:
  if ((v3 & 0x800) != 0)
  {
LABEL_59:
    v24 = *(this + 28);
    if (v24 >= 0x80)
    {
      v25 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v24, a2) + 2;
      v3 = *(this + 33);
    }

    else
    {
      v25 = 3;
    }

    v4 += v25;
  }

LABEL_63:
  if ((v3 & 0x2000) != 0)
  {
    v4 += 3;
  }

  if ((v3 & 0x4000) != 0)
  {
    v26 = *(this + 15);
    v27 = *(v26 + 23);
    v28 = v27;
    v29 = *(v26 + 8);
    if ((v27 & 0x80u) == 0)
    {
      v30 = *(v26 + 23);
    }

    else
    {
      v30 = v29;
    }

    if (v30 >= 0x80)
    {
      v31 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v30, a2);
      v27 = *(v26 + 23);
      v29 = *(v26 + 8);
      v28 = *(v26 + 23);
    }

    else
    {
      v31 = 1;
    }

    if (v28 < 0)
    {
      v27 = v29;
    }

    v4 += v31 + v27 + 2;
  }

LABEL_75:
  v32 = *(this + 6);
  if (v32 < 1)
  {
    v34 = 0;
  }

  else
  {
    v33 = 0;
    v34 = 0;
    do
    {
      v35 = *(*(this + 2) + 4 * v33);
      if (v35 >= 0x80)
      {
        v36 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v35, a2);
        v32 = *(this + 6);
      }

      else
      {
        v36 = 1;
      }

      v34 += v36;
      ++v33;
    }

    while (v33 < v32);
  }

  v37 = *(this + 12);
  v38 = v34 + v4 + v32 + v37;
  if (v37 >= 1)
  {
    v39 = 0;
    do
    {
      v40 = awd::profile::Metric::ByteSize(*(*(this + 5) + 8 * v39), a2);
      v41 = v40;
      if (v40 >= 0x80)
      {
        v42 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v40, a2);
      }

      else
      {
        v42 = 1;
      }

      v38 += v41 + v42;
      ++v39;
    }

    while (v39 < *(this + 12));
  }

  v43 = *(this + 24);
  v44 = (v38 + 2 * v43);
  if (v43 >= 1)
  {
    for (i = 0; i < v43; ++i)
    {
      v46 = *(*(this + 11) + 8 * i);
      v47 = *(v46 + 23);
      v48 = v47;
      v49 = *(v46 + 8);
      if ((v47 & 0x80u) == 0)
      {
        v50 = *(v46 + 23);
      }

      else
      {
        v50 = v49;
      }

      if (v50 >= 0x80)
      {
        v51 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v50, a2);
        v47 = *(v46 + 23);
        v49 = *(v46 + 8);
        v43 = *(this + 24);
        v48 = *(v46 + 23);
      }

      else
      {
        v51 = 1;
      }

      if (v48 < 0)
      {
        v47 = v49;
      }

      v44 = (v51 + v44 + v47);
    }
  }

  *(this + 32) = v44;
  return v44;
}

void awd::profile::Log::MergeFrom(awd::profile::Log *this, const awd::profile::Log *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v9);
  }

  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 8), *(a2 + 4) + *(this + 4));
  if (*(a2 + 4) >= 1)
  {
    v4 = 0;
    do
    {
      v5 = *(*(a2 + 1) + 8 * v4);
      v6 = *(this + 5);
      v7 = *(this + 4);
      if (v7 >= v6)
      {
        if (v6 == *(this + 6))
        {
          wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 8), v6 + 1);
          v6 = *(this + 5);
        }

        *(this + 5) = v6 + 1;
        operator new();
      }

      v8 = *(this + 1);
      *(this + 4) = v7 + 1;
      awd::profile::LogParameter::MergeFrom(*(v8 + 8 * v7), v5);
      ++v4;
    }

    while (v4 < *(a2 + 4));
  }
}

void sub_1001EE0F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::profile::LogParameter::MergeFrom(awd::profile::LogParameter *this, const awd::profile::LogParameter *a2)
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
      v5 = *(a2 + 1);
      *(this + 7) |= 1u;
      v6 = *(this + 1);
      if (v6 == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
      {
        operator new();
      }

      std::string::operator=(v6, v5);
      v4 = *(a2 + 7);
    }

    if ((v4 & 2) != 0)
    {
      v7 = *(a2 + 2);
      *(this + 7) |= 2u;
      v8 = *(this + 2);
      if (v8 == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
      {
        operator new();
      }

      std::string::operator=(v8, v7);
    }
  }
}

void sub_1001EE248(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::profile::LogParameter::~LogParameter(awd::profile::LogParameter *this)
{
  *this = off_1002B8DE0;
  awd::profile::LogParameter::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  awd::profile::LogParameter::~LogParameter(this);

  operator delete();
}

void awd::profile::LogParameter::SharedDtor(awd::profile::LogParameter *this)
{
  v1 = *(this + 1);
  if (v1 != &wireless_diagnostics::google::protobuf::internal::kEmptyString && v1 != 0)
  {
    if (*(v1 + 23) < 0)
    {
      operator delete(*v1);
    }

    operator delete();
  }

  v3 = *(this + 2);
  if (v3 != &wireless_diagnostics::google::protobuf::internal::kEmptyString && v3 != 0)
  {
    if (*(v3 + 23) < 0)
    {
      operator delete(*v3);
    }

    operator delete();
  }

  awd::profile::protobuf_AddDesc_AwdProfile_2eproto(this);
}

uint64_t awd::profile::LogParameter::Clear(uint64_t this)
{
  if (*(this + 28))
  {
    if (*(this + 28))
    {
      v1 = *(this + 8);
      if (v1 != &wireless_diagnostics::google::protobuf::internal::kEmptyString)
      {
        if (*(v1 + 23) < 0)
        {
          **v1 = 0;
          *(v1 + 8) = 0;
        }

        else
        {
          *v1 = 0;
          *(v1 + 23) = 0;
        }
      }
    }

    if ((*(this + 28) & 2) != 0)
    {
      v2 = *(this + 16);
      if (v2 != &wireless_diagnostics::google::protobuf::internal::kEmptyString)
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

uint64_t awd::profile::LogParameter::MergePartialFromCodedStream(awd::profile::LogParameter *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
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
        goto LABEL_16;
      }

      *(this + 7) |= 1u;
      if (*(this + 1) == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
      {
        operator new();
      }

      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
      if (!result)
      {
        return result;
      }

      v9 = *(a2 + 1);
      if (v9 < *(a2 + 2) && *v9 == 18)
      {
        *(a2 + 1) = v9 + 1;
LABEL_19:
        *(this + 7) |= 2u;
        if (*(this + 2) == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
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

    if (v7 == 2)
    {
      goto LABEL_19;
    }

LABEL_16:
    if (v7 == 4)
    {
      return 1;
    }

    if ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(a2, TagFallback, a3) & 1) == 0)
    {
      return 0;
    }
  }
}

uint64_t awd::profile::LogParameter::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2)
{
  v2 = this;
  v3 = *(this + 28);
  if (v3)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
    v3 = *(v2 + 28);
  }

  if ((v3 & 2) != 0)
  {

    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
  }

  return this;
}

uint64_t awd::profile::LogParameter::ByteSize(awd::profile::LogParameter *this, unsigned int a2)
{
  LOBYTE(v3) = *(this + 28);
  if (!v3)
  {
    v4 = 0;
    goto LABEL_24;
  }

  if ((*(this + 28) & 1) == 0)
  {
    v4 = 0;
    if ((*(this + 28) & 2) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_15;
  }

  v5 = *(this + 1);
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
    v11 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v9, a2);
    v6 = *(v5 + 23);
    v8 = *(v5 + 8);
    v10 = v11 + 1;
    v3 = *(this + 7);
    v7 = *(v5 + 23);
  }

  else
  {
    v10 = 2;
  }

  if (v7 < 0)
  {
    v6 = v8;
  }

  v4 = (v10 + v6);
  if ((v3 & 2) != 0)
  {
LABEL_15:
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
      v17 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v16, a2);
      v13 = *(v12 + 23);
      v15 = *(v12 + 8);
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
  }

LABEL_24:
  *(this + 6) = v4;
  return v4;
}

void awd::profile::Log::~Log(awd::profile::Log *this)
{
  *this = off_1002B8E58;
  awd::profile::protobuf_AddDesc_AwdProfile_2eproto(this);
  sub_1000C8650(this + 8);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  awd::profile::Log::~Log(this);

  operator delete();
}

uint64_t awd::profile::Log::MergePartialFromCodedStream(awd::profile::Log *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
{
  while (1)
  {
LABEL_1:
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

    if (TagFallback == 10)
    {
      while (1)
      {
        v7 = *(this + 5);
        v8 = *(this + 4);
        if (v8 >= v7)
        {
          if (v7 == *(this + 6))
          {
            wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 8), v7 + 1);
            v7 = *(this + 5);
          }

          *(this + 5) = v7 + 1;
          operator new();
        }

        v9 = *(this + 1);
        *(this + 4) = v8 + 1;
        v10 = *(v9 + 8 * v8);
        v22 = 0;
        v11 = *(a2 + 1);
        if (v11 >= *(a2 + 2) || *v11 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v22))
          {
            return 0;
          }
        }

        else
        {
          v22 = *v11;
          *(a2 + 1) = v11 + 1;
        }

        v12 = *(a2 + 14);
        v13 = *(a2 + 15);
        *(a2 + 14) = v12 + 1;
        if (v12 >= v13)
        {
          return 0;
        }

        v14 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2, v22);
        if (!awd::profile::LogParameter::MergePartialFromCodedStream(v10, a2, v15) || *(a2 + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2, v14);
        v16 = *(a2 + 14);
        v17 = __OFSUB__(v16, 1);
        v18 = v16 - 1;
        if (v18 < 0 == v17)
        {
          *(a2 + 14) = v18;
        }

        v19 = *(a2 + 1);
        v20 = *(a2 + 2);
        if (v19 >= v20 || *v19 != 10)
        {
          if (v19 == v20 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
          {
            *(a2 + 8) = 0;
            result = 1;
            *(a2 + 36) = 1;
            return result;
          }

          goto LABEL_1;
        }

        *(a2 + 1) = v19 + 1;
      }
    }

    if (!TagFallback || (TagFallback & 7) == 4)
    {
      return 1;
    }

    if ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(a2, TagFallback, a3) & 1) == 0)
    {
      return 0;
    }
  }
}

uint64_t awd::profile::Log::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  if (*(this + 16) >= 1)
  {
    v5 = this;
    v6 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(1, *(*(v5 + 8) + 8 * v6++), a2, a4);
    }

    while (v6 < *(v5 + 16));
  }

  return this;
}

uint64_t awd::profile::Log::ByteSize(awd::profile::Log *this, unsigned int a2)
{
  v3 = *(this + 4);
  if (v3 >= 1)
  {
    v4 = 0;
    do
    {
      v5 = awd::profile::LogParameter::ByteSize(*(*(this + 1) + 8 * v4), a2);
      v6 = v5;
      if (v5 >= 0x80)
      {
        v7 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5, a2);
      }

      else
      {
        v7 = 1;
      }

      v3 = (v6 + v3 + v7);
      ++v4;
    }

    while (v4 < *(this + 4));
  }

  *(this + 8) = v3;
  return v3;
}

void awd::profile::ConfigurationParameter::MergeFrom(std::string *this, std::string *a2)
{
  v3 = this;
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v9);
  }

  LOBYTE(v4) = a2[1].__r_.__value_.__s.__data_[4];
  if (v4)
  {
    if (a2[1].__r_.__value_.__s.__data_[4])
    {
      size = a2->__r_.__value_.__l.__size_;
      HIDWORD(v3[1].__r_.__value_.__r.__words[0]) |= 1u;
      v6 = v3->__r_.__value_.__l.__size_;
      if (v6 == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
      {
        operator new();
      }

      this = std::string::operator=(v6, size);
      v4 = HIDWORD(a2[1].__r_.__value_.__r.__words[0]);
    }

    if ((v4 & 2) != 0)
    {
      HIDWORD(v3[1].__r_.__value_.__r.__words[0]) |= 2u;
      v7 = v3->__r_.__value_.__r.__words[2];
      if (!v7)
      {
        operator new();
      }

      v8 = a2->__r_.__value_.__r.__words[2];
      if (!v8)
      {
        awd::profile::protobuf_AddDesc_AwdProfile_2eproto(this);
        v8 = *(awd::profile::ConfigurationParameter::default_instance_ + 16);
      }

      awd::profile::TypeVariant::MergeFrom(v7, v8);
    }
  }
}

void sub_1001EED20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::profile::ConfigurationParameter::~ConfigurationParameter(awd::profile::ConfigurationParameter *this)
{
  *this = off_1002B8ED0;
  awd::profile::ConfigurationParameter::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  awd::profile::ConfigurationParameter::~ConfigurationParameter(this);

  operator delete();
}

void awd::profile::ConfigurationParameter::SharedDtor(awd::profile::ConfigurationParameter *this)
{
  v2 = *(this + 1);
  if (v2 != &wireless_diagnostics::google::protobuf::internal::kEmptyString && v2 != 0)
  {
    if (*(v2 + 23) < 0)
    {
      operator delete(*v2);
    }

    operator delete();
  }

  awd::profile::protobuf_AddDesc_AwdProfile_2eproto(this);
  if (awd::profile::ConfigurationParameter::default_instance_ != this)
  {
    v4 = *(this + 2);
    if (v4)
    {
      v5 = *(*v4 + 8);

      v5();
    }
  }
}

uint64_t awd::profile::ConfigurationParameter::Clear(uint64_t this)
{
  v1 = this;
  if (*(this + 28))
  {
    if (*(this + 28))
    {
      v2 = *(this + 8);
      if (v2 != &wireless_diagnostics::google::protobuf::internal::kEmptyString)
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

    if ((*(this + 28) & 2) != 0)
    {
      this = *(this + 16);
      if (this)
      {
        this = awd::profile::TypeVariant::Clear(this);
      }
    }
  }

  *(v1 + 28) = 0;
  return this;
}

uint64_t awd::profile::TypeVariant::Clear(uint64_t this)
{
  v1 = *(this + 72);
  if (v1)
  {
    *(this + 40) = 0;
    *(this + 24) = 0u;
    *(this + 8) = 0u;
    if ((v1 & 0x40) != 0)
    {
      v2 = *(this + 48);
      if (v2 != &wireless_diagnostics::google::protobuf::internal::kEmptyString)
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

    *(this + 44) = 0;
    v1 = *(this + 72);
  }

  if ((v1 & 0xFF00) != 0)
  {
    if ((v1 & 0x100) != 0)
    {
      v3 = *(this + 56);
      if (v3 != &wireless_diagnostics::google::protobuf::internal::kEmptyString)
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
  }

  *(this + 72) = 0;
  return this;
}