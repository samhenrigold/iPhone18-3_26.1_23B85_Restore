uint64_t awd::metrics::ATM_Registration_Result::ByteSize(awd::metrics::ATM_Registration_Result *this, unint64_t a2)
{
  v3 = *(this + 53);
  if (!v3)
  {
    v4 = 0;
    goto LABEL_61;
  }

  if (v3)
  {
    v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 1)) + 1;
    v3 = *(this + 53);
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

  v5 = *(this + 4);
  if ((v5 & 0x80000000) != 0)
  {
    v6 = 11;
  }

  else if (v5 >= 0x80)
  {
    v6 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5) + 1;
    v3 = *(this + 53);
  }

  else
  {
    v6 = 2;
  }

  v4 += v6;
LABEL_13:
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
      v3 = *(this + 53);
    }

    else
    {
      v8 = 2;
    }

    v4 += v8;
    if ((v3 & 8) == 0)
    {
LABEL_15:
      if ((v3 & 0x10) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_35;
    }
  }

  else if ((v3 & 8) == 0)
  {
    goto LABEL_15;
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
    v3 = *(this + 53);
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

  v4 += v14 + v10 + 1;
  if ((v3 & 0x10) == 0)
  {
LABEL_16:
    if ((v3 & 0x20) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_44;
  }

LABEL_35:
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
    v3 = *(this + 53);
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

  v4 += v20 + v16 + 1;
  if ((v3 & 0x20) == 0)
  {
LABEL_17:
    if ((v3 & 0x40) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_48;
  }

LABEL_44:
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
  if ((v3 & 0x40) == 0)
  {
LABEL_18:
    if ((v3 & 0x80) == 0)
    {
      goto LABEL_61;
    }

    goto LABEL_57;
  }

LABEL_48:
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
    v3 = *(this + 53);
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

  v4 += v28 + v24 + 1;
  if ((v3 & 0x80) != 0)
  {
LABEL_57:
    v29 = *(this + 13);
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
  }

LABEL_61:
  if ((v3 & 0x1FE00) == 0)
  {
    goto LABEL_110;
  }

  if ((v3 & 0x200) != 0)
  {
    v31 = *(this + 10);
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
      v3 = *(this + 53);
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

    v4 += v36 + v32 + 1;
    if ((v3 & 0x400) == 0)
    {
LABEL_64:
      if ((v3 & 0x800) == 0)
      {
        goto LABEL_65;
      }

      goto LABEL_85;
    }
  }

  else if ((v3 & 0x400) == 0)
  {
    goto LABEL_64;
  }

  v37 = *(this + 22);
  if ((v37 & 0x80000000) != 0)
  {
    v38 = 11;
  }

  else if (v37 >= 0x80)
  {
    v38 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v37) + 1;
    v3 = *(this + 53);
  }

  else
  {
    v38 = 2;
  }

  v4 += v38;
  if ((v3 & 0x800) == 0)
  {
LABEL_65:
    if ((v3 & 0x1000) == 0)
    {
      goto LABEL_66;
    }

    goto LABEL_89;
  }

LABEL_85:
  v39 = *(this + 23);
  if (v39 >= 0x80)
  {
    v40 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v39) + 1;
    v3 = *(this + 53);
  }

  else
  {
    v40 = 2;
  }

  v4 += v40;
  if ((v3 & 0x1000) == 0)
  {
LABEL_66:
    if ((v3 & 0x2000) == 0)
    {
      goto LABEL_67;
    }

    goto LABEL_98;
  }

LABEL_89:
  v41 = *(this + 12);
  v42 = *(v41 + 23);
  v43 = v42;
  v44 = *(v41 + 8);
  if ((v42 & 0x80u) == 0)
  {
    v45 = *(v41 + 23);
  }

  else
  {
    v45 = v44;
  }

  if (v45 >= 0x80)
  {
    v46 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v45);
    v42 = *(v41 + 23);
    v44 = *(v41 + 8);
    v3 = *(this + 53);
    v43 = *(v41 + 23);
  }

  else
  {
    v46 = 1;
  }

  if (v43 < 0)
  {
    v42 = v44;
  }

  v4 += v46 + v42 + 1;
  if ((v3 & 0x2000) == 0)
  {
LABEL_67:
    if ((v3 & 0x4000) == 0)
    {
      goto LABEL_68;
    }

    goto LABEL_102;
  }

LABEL_98:
  v47 = *(this + 26);
  if (v47 >= 0x80)
  {
    v48 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v47) + 1;
    v3 = *(this + 53);
  }

  else
  {
    v48 = 2;
  }

  v4 += v48;
  if ((v3 & 0x4000) == 0)
  {
LABEL_68:
    if ((v3 & 0x8000) == 0)
    {
      goto LABEL_110;
    }

    goto LABEL_106;
  }

LABEL_102:
  v49 = *(this + 27);
  if (v49 >= 0x80)
  {
    v50 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v49) + 1;
    v3 = *(this + 53);
  }

  else
  {
    v50 = 2;
  }

  v4 += v50;
  if ((v3 & 0x8000) != 0)
  {
LABEL_106:
    v51 = *(this + 28);
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
  }

LABEL_110:
  if ((v3 & 0xFF0000) == 0)
  {
    goto LABEL_121;
  }

  if ((v3 & 0x10000) != 0)
  {
    v4 += 3;
  }

  if ((v3 & 0x20000) != 0)
  {
    v53 = *(this + 29);
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
    if ((v3 & 0x40000) == 0)
    {
LABEL_115:
      if ((v3 & 0x80000) == 0)
      {
        goto LABEL_116;
      }

      goto LABEL_140;
    }
  }

  else if ((v3 & 0x40000) == 0)
  {
    goto LABEL_115;
  }

  v57 = *(this + 30);
  if (v57 >= 0x80)
  {
    v58 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v57) + 2;
    v3 = *(this + 53);
  }

  else
  {
    v58 = 3;
  }

  v4 += v58;
  if ((v3 & 0x80000) == 0)
  {
LABEL_116:
    if ((v3 & 0x100000) == 0)
    {
      goto LABEL_117;
    }

    goto LABEL_144;
  }

LABEL_140:
  v59 = *(this + 31);
  if (v59 >= 0x80)
  {
    v60 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v59) + 2;
    v3 = *(this + 53);
  }

  else
  {
    v60 = 3;
  }

  v4 += v60;
  if ((v3 & 0x100000) == 0)
  {
LABEL_117:
    if ((v3 & 0x200000) == 0)
    {
      goto LABEL_118;
    }

    goto LABEL_148;
  }

LABEL_144:
  v61 = *(this + 32);
  if (v61 >= 0x80)
  {
    v62 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v61) + 2;
    v3 = *(this + 53);
  }

  else
  {
    v62 = 3;
  }

  v4 += v62;
  if ((v3 & 0x200000) == 0)
  {
LABEL_118:
    if ((v3 & 0x400000) == 0)
    {
      goto LABEL_119;
    }

    goto LABEL_152;
  }

LABEL_148:
  v63 = *(this + 33);
  if (v63 >= 0x80)
  {
    v64 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v63) + 2;
    v3 = *(this + 53);
  }

  else
  {
    v64 = 3;
  }

  v4 += v64;
  if ((v3 & 0x400000) == 0)
  {
LABEL_119:
    if ((v3 & 0x800000) == 0)
    {
      goto LABEL_121;
    }

    goto LABEL_120;
  }

LABEL_152:
  v4 += wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 17)) + 2;
  v3 = *(this + 53);
  if ((v3 & 0x800000) != 0)
  {
LABEL_120:
    v4 += wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 18)) + 2;
    v3 = *(this + 53);
  }

LABEL_121:
  if (!HIBYTE(v3))
  {
    goto LABEL_184;
  }

  if ((v3 & 0x1000000) != 0)
  {
    v4 += wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 19)) + 2;
    v3 = *(this + 53);
    if ((v3 & 0x2000000) == 0)
    {
LABEL_124:
      if ((v3 & 0x4000000) == 0)
      {
        goto LABEL_125;
      }

      goto LABEL_131;
    }
  }

  else if ((v3 & 0x2000000) == 0)
  {
    goto LABEL_124;
  }

  v4 += wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 20)) + 2;
  v3 = *(this + 53);
  if ((v3 & 0x4000000) == 0)
  {
LABEL_125:
    if ((v3 & 0x8000000) == 0)
    {
      goto LABEL_156;
    }

    goto LABEL_132;
  }

LABEL_131:
  v4 += wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 21)) + 2;
  v3 = *(this + 53);
  if ((v3 & 0x8000000) == 0)
  {
    goto LABEL_156;
  }

LABEL_132:
  v55 = *(this + 45);
  if (v55 >= 0x80)
  {
    v56 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v55) + 2;
    v3 = *(this + 53);
  }

  else
  {
    v56 = 3;
  }

  v4 += v56;
LABEL_156:
  if ((v3 & 0x10000000) != 0)
  {
    v4 += 3;
  }

  if ((v3 & 0x20000000) != 0)
  {
    v65 = *(this + 48);
    if (v65 >= 0x80)
    {
      v66 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v65) + 2;
      v3 = *(this + 53);
    }

    else
    {
      v66 = 3;
    }

    v4 += v66;
    if ((v3 & 0x40000000) == 0)
    {
LABEL_160:
      if ((v3 & 0x80000000) == 0)
      {
        goto LABEL_184;
      }

      goto LABEL_175;
    }
  }

  else if ((v3 & 0x40000000) == 0)
  {
    goto LABEL_160;
  }

  v67 = *(this + 23);
  v68 = *(v67 + 23);
  v69 = v68;
  v70 = *(v67 + 8);
  if ((v68 & 0x80u) == 0)
  {
    v71 = *(v67 + 23);
  }

  else
  {
    v71 = v70;
  }

  if (v71 >= 0x80)
  {
    v72 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v71);
    v68 = *(v67 + 23);
    v70 = *(v67 + 8);
    v3 = *(this + 53);
    v69 = *(v67 + 23);
  }

  else
  {
    v72 = 1;
  }

  if (v69 < 0)
  {
    v68 = v70;
  }

  v4 += v72 + v68 + 2;
  if ((v3 & 0x80000000) != 0)
  {
LABEL_175:
    v73 = *(this + 25);
    v74 = *(v73 + 23);
    v75 = v74;
    v76 = *(v73 + 8);
    if ((v74 & 0x80u) == 0)
    {
      v77 = *(v73 + 23);
    }

    else
    {
      v77 = v76;
    }

    if (v77 >= 0x80)
    {
      v78 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v77);
      v74 = *(v73 + 23);
      v76 = *(v73 + 8);
      v75 = *(v73 + 23);
    }

    else
    {
      v78 = 1;
    }

    if (v75 < 0)
    {
      v74 = v76;
    }

    v4 += v78 + v74 + 2;
  }

LABEL_184:
  LOBYTE(v79) = *(this + 216);
  if (v79)
  {
    if (*(this + 216))
    {
      v80 = *(this + 49);
      if (v80 >= 0x80)
      {
        v81 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v80) + 2;
        v79 = *(this + 54);
      }

      else
      {
        v81 = 3;
      }

      v4 += v81;
    }

    if ((v79 & 2) != 0)
    {
      v4 += 3;
    }
  }

  v82 = *(this + 16);
  v83 = (v82 + v4);
  if (v82 >= 1)
  {
    for (i = 0; i < v82; ++i)
    {
      v85 = *(*(this + 7) + 8 * i);
      v86 = *(v85 + 23);
      v87 = v86;
      v88 = *(v85 + 8);
      if ((v86 & 0x80u) == 0)
      {
        v89 = *(v85 + 23);
      }

      else
      {
        v89 = v88;
      }

      if (v89 >= 0x80)
      {
        v90 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v89);
        v86 = *(v85 + 23);
        v88 = *(v85 + 8);
        v82 = *(this + 16);
        v87 = *(v85 + 23);
      }

      else
      {
        v90 = 1;
      }

      if (v87 < 0)
      {
        v86 = v88;
      }

      v83 = (v90 + v83 + v86);
    }
  }

  *(this + 52) = v83;
  return v83;
}

uint64_t awd::metrics::ATM_Registration_Result::CheckTypeAndMergeFrom(const std::string **this, const std::string **lpsrc)
{
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  if (lpsrc == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v48);
  }

  result = wireless_diagnostics::google::protobuf::RepeatedPtrField<std::string>::MergeFrom((this + 7), (lpsrc + 7));
  v5 = *(lpsrc + 53);
  if (!v5)
  {
    goto LABEL_19;
  }

  if (v5)
  {
    v6 = lpsrc[1];
    *(this + 53) |= 1u;
    this[1] = v6;
    v5 = *(lpsrc + 53);
  }

  if ((v5 & 2) != 0)
  {
    v7 = *(lpsrc + 4);
    if ((v7 - 1) >= 0xD)
    {
      __assert_rtn("set_type", "CATM.pb.h", 7735, "::awd::metrics::enum_ims_reg_type_IsValid(value)");
    }

    *(this + 53) |= 2u;
    *(this + 4) = v7;
    v5 = *(lpsrc + 53);
  }

  if ((v5 & 4) != 0)
  {
    v8 = *(lpsrc + 5);
    if ((v8 - 1) >= 4)
    {
      __assert_rtn("set_feature", "CATM.pb.h", 7758, "::awd::metrics::enum_ims_reg_feature_IsValid(value)");
    }

    *(this + 53) |= 4u;
    *(this + 5) = v8;
    v5 = *(lpsrc + 53);
  }

  v9 = MEMORY[0x1E69E5958];
  if ((v5 & 8) != 0)
  {
    v23 = lpsrc[3];
    *(this + 53) |= 8u;
    v24 = this[3];
    if (v24 == v9)
    {
      operator new();
    }

    result = std::string::operator=(v24, v23);
    v5 = *(lpsrc + 53);
    if ((v5 & 0x10) == 0)
    {
LABEL_15:
      if ((v5 & 0x20) == 0)
      {
        goto LABEL_16;
      }

LABEL_67:
      v27 = *(lpsrc + 12);
      *(this + 53) |= 0x20u;
      *(this + 12) = v27;
      v5 = *(lpsrc + 53);
      if ((v5 & 0x40) == 0)
      {
LABEL_17:
        if ((v5 & 0x80) == 0)
        {
          goto LABEL_19;
        }

        goto LABEL_18;
      }

      goto LABEL_68;
    }
  }

  else if ((v5 & 0x10) == 0)
  {
    goto LABEL_15;
  }

  v25 = lpsrc[4];
  *(this + 53) |= 0x10u;
  v26 = this[4];
  if (v26 == v9)
  {
    operator new();
  }

  result = std::string::operator=(v26, v25);
  v5 = *(lpsrc + 53);
  if ((v5 & 0x20) != 0)
  {
    goto LABEL_67;
  }

LABEL_16:
  if ((v5 & 0x40) == 0)
  {
    goto LABEL_17;
  }

LABEL_68:
  v28 = lpsrc[5];
  *(this + 53) |= 0x40u;
  v29 = this[5];
  if (v29 == v9)
  {
    operator new();
  }

  result = std::string::operator=(v29, v28);
  v5 = *(lpsrc + 53);
  if ((v5 & 0x80) != 0)
  {
LABEL_18:
    v10 = *(lpsrc + 13);
    *(this + 53) |= 0x80u;
    *(this + 13) = v10;
    v5 = *(lpsrc + 53);
  }

LABEL_19:
  if ((v5 & 0x1FE00) == 0)
  {
    goto LABEL_33;
  }

  if ((v5 & 0x200) != 0)
  {
    v11 = lpsrc[10];
    *(this + 53) |= 0x200u;
    v12 = this[10];
    if (v12 == MEMORY[0x1E69E5958])
    {
      operator new();
    }

    result = std::string::operator=(v12, v11);
    v5 = *(lpsrc + 53);
  }

  if ((v5 & 0x400) != 0)
  {
    v13 = *(lpsrc + 22);
    result = awd::metrics::RESPONSE_Code_IsValid(v13);
    if ((result & 1) == 0)
    {
      __assert_rtn("set_result", "CATM.pb.h", 8149, "::awd::metrics::RESPONSE_Code_IsValid(value)");
    }

    *(this + 53) |= 0x400u;
    *(this + 22) = v13;
    v5 = *(lpsrc + 53);
  }

  if ((v5 & 0x800) != 0)
  {
    v30 = *(lpsrc + 23);
    *(this + 53) |= 0x800u;
    *(this + 23) = v30;
    v5 = *(lpsrc + 53);
    if ((v5 & 0x1000) == 0)
    {
LABEL_29:
      if ((v5 & 0x2000) == 0)
      {
        goto LABEL_30;
      }

      goto LABEL_76;
    }
  }

  else if ((v5 & 0x1000) == 0)
  {
    goto LABEL_29;
  }

  v31 = lpsrc[12];
  *(this + 53) |= 0x1000u;
  v32 = this[12];
  if (v32 == MEMORY[0x1E69E5958])
  {
    operator new();
  }

  result = std::string::operator=(v32, v31);
  v5 = *(lpsrc + 53);
  if ((v5 & 0x2000) == 0)
  {
LABEL_30:
    if ((v5 & 0x4000) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_77;
  }

LABEL_76:
  v33 = *(lpsrc + 26);
  *(this + 53) |= 0x2000u;
  *(this + 26) = v33;
  v5 = *(lpsrc + 53);
  if ((v5 & 0x4000) == 0)
  {
LABEL_31:
    if ((v5 & 0x8000) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_32;
  }

LABEL_77:
  v34 = *(lpsrc + 27);
  *(this + 53) |= 0x4000u;
  *(this + 27) = v34;
  v5 = *(lpsrc + 53);
  if ((v5 & 0x8000) != 0)
  {
LABEL_32:
    v14 = *(lpsrc + 28);
    *(this + 53) |= 0x8000u;
    *(this + 28) = v14;
    v5 = *(lpsrc + 53);
  }

LABEL_33:
  if ((v5 & 0xFF0000) == 0)
  {
    goto LABEL_43;
  }

  if ((v5 & 0x10000) != 0)
  {
    v16 = *(lpsrc + 176);
    *(this + 53) |= 0x10000u;
    *(this + 176) = v16;
    v5 = *(lpsrc + 53);
    if ((v5 & 0x20000) == 0)
    {
LABEL_36:
      if ((v5 & 0x40000) == 0)
      {
        goto LABEL_37;
      }

      goto LABEL_55;
    }
  }

  else if ((v5 & 0x20000) == 0)
  {
    goto LABEL_36;
  }

  v17 = *(lpsrc + 29);
  *(this + 53) |= 0x20000u;
  *(this + 29) = v17;
  v5 = *(lpsrc + 53);
  if ((v5 & 0x40000) == 0)
  {
LABEL_37:
    if ((v5 & 0x80000) == 0)
    {
      goto LABEL_38;
    }

    goto LABEL_56;
  }

LABEL_55:
  v18 = *(lpsrc + 30);
  *(this + 53) |= 0x40000u;
  *(this + 30) = v18;
  v5 = *(lpsrc + 53);
  if ((v5 & 0x80000) == 0)
  {
LABEL_38:
    if ((v5 & 0x100000) == 0)
    {
      goto LABEL_39;
    }

    goto LABEL_57;
  }

LABEL_56:
  v19 = *(lpsrc + 31);
  *(this + 53) |= 0x80000u;
  *(this + 31) = v19;
  v5 = *(lpsrc + 53);
  if ((v5 & 0x100000) == 0)
  {
LABEL_39:
    if ((v5 & 0x200000) == 0)
    {
      goto LABEL_40;
    }

    goto LABEL_58;
  }

LABEL_57:
  v20 = *(lpsrc + 32);
  *(this + 53) |= 0x100000u;
  *(this + 32) = v20;
  v5 = *(lpsrc + 53);
  if ((v5 & 0x200000) == 0)
  {
LABEL_40:
    if ((v5 & 0x400000) == 0)
    {
      goto LABEL_41;
    }

    goto LABEL_59;
  }

LABEL_58:
  v21 = *(lpsrc + 33);
  *(this + 53) |= 0x200000u;
  *(this + 33) = v21;
  v5 = *(lpsrc + 53);
  if ((v5 & 0x400000) == 0)
  {
LABEL_41:
    if ((v5 & 0x800000) == 0)
    {
      goto LABEL_43;
    }

    goto LABEL_42;
  }

LABEL_59:
  v22 = lpsrc[17];
  *(this + 53) |= 0x400000u;
  this[17] = v22;
  v5 = *(lpsrc + 53);
  if ((v5 & 0x800000) != 0)
  {
LABEL_42:
    v15 = lpsrc[18];
    *(this + 53) |= 0x800000u;
    this[18] = v15;
    v5 = *(lpsrc + 53);
  }

LABEL_43:
  if (!HIBYTE(v5))
  {
    goto LABEL_91;
  }

  if ((v5 & 0x1000000) != 0)
  {
    v35 = lpsrc[19];
    *(this + 53) |= 0x1000000u;
    this[19] = v35;
    v5 = *(lpsrc + 53);
    if ((v5 & 0x2000000) == 0)
    {
LABEL_46:
      if ((v5 & 0x4000000) == 0)
      {
        goto LABEL_47;
      }

      goto LABEL_81;
    }
  }

  else if ((v5 & 0x2000000) == 0)
  {
    goto LABEL_46;
  }

  v36 = lpsrc[20];
  *(this + 53) |= 0x2000000u;
  this[20] = v36;
  v5 = *(lpsrc + 53);
  if ((v5 & 0x4000000) == 0)
  {
LABEL_47:
    if ((v5 & 0x8000000) == 0)
    {
      goto LABEL_48;
    }

    goto LABEL_82;
  }

LABEL_81:
  v37 = lpsrc[21];
  *(this + 53) |= 0x4000000u;
  this[21] = v37;
  v5 = *(lpsrc + 53);
  if ((v5 & 0x8000000) == 0)
  {
LABEL_48:
    if ((v5 & 0x10000000) == 0)
    {
      goto LABEL_49;
    }

    goto LABEL_83;
  }

LABEL_82:
  v38 = *(lpsrc + 45);
  *(this + 53) |= 0x8000000u;
  *(this + 45) = v38;
  v5 = *(lpsrc + 53);
  if ((v5 & 0x10000000) == 0)
  {
LABEL_49:
    if ((v5 & 0x20000000) == 0)
    {
      goto LABEL_50;
    }

    goto LABEL_84;
  }

LABEL_83:
  v39 = *(lpsrc + 177);
  *(this + 53) |= 0x10000000u;
  *(this + 177) = v39;
  v5 = *(lpsrc + 53);
  if ((v5 & 0x20000000) == 0)
  {
LABEL_50:
    if ((v5 & 0x40000000) == 0)
    {
      goto LABEL_51;
    }

    goto LABEL_85;
  }

LABEL_84:
  v40 = *(lpsrc + 48);
  *(this + 53) |= 0x20000000u;
  *(this + 48) = v40;
  v5 = *(lpsrc + 53);
  if ((v5 & 0x40000000) == 0)
  {
LABEL_51:
    if ((v5 & 0x80000000) == 0)
    {
      goto LABEL_91;
    }

    goto LABEL_88;
  }

LABEL_85:
  v41 = lpsrc[23];
  *(this + 53) |= 0x40000000u;
  v42 = this[23];
  if (v42 == MEMORY[0x1E69E5958])
  {
    operator new();
  }

  result = std::string::operator=(v42, v41);
  if ((*(lpsrc + 53) & 0x80000000) != 0)
  {
LABEL_88:
    v43 = lpsrc[25];
    *(this + 53) |= 0x80000000;
    v44 = this[25];
    if (v44 == MEMORY[0x1E69E5958])
    {
      operator new();
    }

    result = std::string::operator=(v44, v43);
  }

LABEL_91:
  LOBYTE(v45) = *(lpsrc + 216);
  if (v45)
  {
    if (lpsrc[27])
    {
      v46 = *(lpsrc + 49);
      *(this + 54) |= 1u;
      *(this + 49) = v46;
      v45 = *(lpsrc + 54);
    }

    if ((v45 & 2) != 0)
    {
      v47 = *(lpsrc + 178);
      *(this + 54) |= 2u;
      *(this + 178) = v47;
    }
  }

  return result;
}

void sub_1E4CEC020(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

std::string *wireless_diagnostics::google::protobuf::RepeatedPtrField<std::string>::MergeFrom(wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase *a1, uint64_t a2)
{
  result = wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve(a1);
  LODWORD(v5) = *(a2 + 8);
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
        wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v14);
      }

      v7 = *(*a2 + 8 * v6);
      v8 = *(a1 + 3);
      v9 = *(a1 + 2);
      if (v9 >= v8)
      {
        if (v8 == *(a1 + 4))
        {
          result = wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve(a1);
          v8 = *(a1 + 3);
        }

        *(a1 + 3) = v8 + 1;
        v11 = wireless_diagnostics::google::protobuf::internal::StringTypeHandlerBase::New(result);
        v12 = *a1;
        v13 = *(a1 + 2);
        *(a1 + 2) = v13 + 1;
        *(v12 + 8 * v13) = v11;
      }

      else
      {
        v10 = *a1;
        *(a1 + 2) = v9 + 1;
        v11 = *(v10 + 8 * v9);
      }

      result = std::string::operator=(v11, v7);
      ++v6;
      v5 = *(a2 + 8);
    }

    while (v6 < v5);
  }

  return result;
}

void sub_1E4CEC160(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

double awd::metrics::ATM_CallAttemptEvent::SharedCtor(awd::metrics::ATM_CallAttemptEvent *this)
{
  v1 = MEMORY[0x1E69E5958];
  *(this + 65) = 0;
  *(this + 1) = 0;
  *(this + 2) = v1;
  *(this + 28) = 0;
  *(this + 6) = -1;
  *(this + 29) = 0;
  *(this + 31) = 0;
  *(this + 72) = 0;
  *&result = 0xFFFFFFFFLL;
  *(this + 4) = 0xFFFFFFFFLL;
  *(this + 5) = v1;
  *(this + 6) = v1;
  *(this + 73) = 0;
  *(this + 7) = v1;
  *(this + 8) = v1;
  *(this + 19) = 0;
  *(this + 10) = v1;
  *(this + 11) = v1;
  *(this + 13) = v1;
  *(this + 14) = v1;
  *(this + 75) = 0;
  *(this + 12) = 0;
  *(this + 15) = 0;
  *(this + 16) = v1;
  *(this + 17) = v1;
  *(this + 18) = v1;
  *(this + 94) = 0;
  *(this + 46) = 0;
  *(this + 19) = 0;
  *(this + 20) = 0;
  *(this + 21) = 0;
  *(this + 22) = v1;
  *(this + 64) = 0;
  *(this + 27) = v1;
  *(this + 28) = 0;
  *(this + 29) = 0;
  *(this + 30) = 0;
  *(this + 31) = v1;
  *(this + 33) = 0;
  return result;
}

void awd::metrics::ATM_CallAttemptEvent::~ATM_CallAttemptEvent(awd::metrics::ATM_CallAttemptEvent *this)
{
  *this = &unk_1F5EC5D40;
  v2 = *(this + 2);
  v3 = MEMORY[0x1E69E5958];
  if (v2 != MEMORY[0x1E69E5958] && v2 != 0)
  {
    if (*(v2 + 23) < 0)
    {
      operator delete(*v2);
    }

    MEMORY[0x1E69235B0](v2, 0x1012C40EC159624);
  }

  v5 = *(this + 5);
  if (v5 != v3 && v5 != 0)
  {
    if (*(v5 + 23) < 0)
    {
      operator delete(*v5);
    }

    MEMORY[0x1E69235B0](v5, 0x1012C40EC159624);
  }

  v7 = *(this + 6);
  if (v7 != v3 && v7 != 0)
  {
    if (*(v7 + 23) < 0)
    {
      operator delete(*v7);
    }

    MEMORY[0x1E69235B0](v7, 0x1012C40EC159624);
  }

  v9 = *(this + 7);
  if (v9 != v3 && v9 != 0)
  {
    if (*(v9 + 23) < 0)
    {
      operator delete(*v9);
    }

    MEMORY[0x1E69235B0](v9, 0x1012C40EC159624);
  }

  v11 = *(this + 8);
  if (v11 != v3 && v11)
  {
    if (*(v11 + 23) < 0)
    {
      operator delete(*v11);
    }

    MEMORY[0x1E69235B0](v11, 0x1012C40EC159624);
  }

  v12 = *(this + 10);
  if (v12 != v3 && v12)
  {
    if (*(v12 + 23) < 0)
    {
      operator delete(*v12);
    }

    MEMORY[0x1E69235B0](v12, 0x1012C40EC159624);
  }

  v13 = *(this + 11);
  if (v13 != v3 && v13)
  {
    if (*(v13 + 23) < 0)
    {
      operator delete(*v13);
    }

    MEMORY[0x1E69235B0](v13, 0x1012C40EC159624);
  }

  v14 = *(this + 13);
  if (v14 != v3 && v14)
  {
    if (*(v14 + 23) < 0)
    {
      operator delete(*v14);
    }

    MEMORY[0x1E69235B0](v14, 0x1012C40EC159624);
  }

  v15 = *(this + 14);
  if (v15 != v3 && v15)
  {
    if (*(v15 + 23) < 0)
    {
      operator delete(*v15);
    }

    MEMORY[0x1E69235B0](v15, 0x1012C40EC159624);
  }

  v16 = *(this + 16);
  if (v16 != v3 && v16)
  {
    if (*(v16 + 23) < 0)
    {
      operator delete(*v16);
    }

    MEMORY[0x1E69235B0](v16, 0x1012C40EC159624);
  }

  v17 = *(this + 17);
  if (v17 != v3 && v17)
  {
    if (*(v17 + 23) < 0)
    {
      operator delete(*v17);
    }

    MEMORY[0x1E69235B0](v17, 0x1012C40EC159624);
  }

  v18 = *(this + 18);
  if (v18 != v3 && v18)
  {
    if (*(v18 + 23) < 0)
    {
      operator delete(*v18);
    }

    MEMORY[0x1E69235B0](v18, 0x1012C40EC159624);
  }

  v19 = *(this + 22);
  if (v19 != v3 && v19)
  {
    if (*(v19 + 23) < 0)
    {
      operator delete(*v19);
    }

    MEMORY[0x1E69235B0](v19, 0x1012C40EC159624);
  }

  v20 = *(this + 27);
  if (v20 != v3 && v20)
  {
    if (*(v20 + 23) < 0)
    {
      operator delete(*v20);
    }

    MEMORY[0x1E69235B0](v20, 0x1012C40EC159624);
  }

  v21 = *(this + 31);
  if (v21 != v3 && v21)
  {
    if (*(v21 + 23) < 0)
    {
      operator delete(*v21);
    }

    MEMORY[0x1E69235B0](v21, 0x1012C40EC159624);
  }

  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<std::string>::TypeHandler>(this + 48);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  awd::metrics::ATM_CallAttemptEvent::~ATM_CallAttemptEvent(this);

  JUMPOUT(0x1E69235B0);
}

uint64_t awd::metrics::ATM_CallAttemptEvent::Clear(awd::metrics::ATM_CallAttemptEvent *this)
{
  v2 = *(this + 66);
  if (v2)
  {
    *(this + 1) = 0;
    if ((v2 & 2) != 0)
    {
      v3 = *(this + 2);
      if (v3 != MEMORY[0x1E69E5958])
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

    *(this + 3) = 0xFFFFFFFFLL;
    *(this + 72) = 0;
    v2 = *(this + 66);
  }

  if ((v2 & 0xFF00) != 0)
  {
    *(this + 8) = -1;
    if ((v2 & 0x200) != 0)
    {
      v4 = *(this + 5);
      if (v4 != MEMORY[0x1E69E5958])
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

    *(this + 9) = 0;
    if ((*(this + 265) & 8) != 0)
    {
      v5 = *(this + 6);
      if (v5 != MEMORY[0x1E69E5958])
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

    *(this + 73) = 0;
    if ((*(this + 265) & 0x20) != 0)
    {
      v6 = *(this + 7);
      if (v6 != MEMORY[0x1E69E5958])
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

    if ((*(this + 265) & 0x40) != 0)
    {
      v7 = *(this + 8);
      if (v7 != MEMORY[0x1E69E5958])
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

    *(this + 19) = 0;
    v2 = *(this + 66);
  }

  if ((v2 & 0xFF0000) != 0)
  {
    *(this + 24) = 0;
    *(this + 74) = 0;
    if ((v2 & 0x40000) != 0)
    {
      v8 = *(this + 10);
      if (v8 != MEMORY[0x1E69E5958])
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

    if ((*(this + 266) & 8) != 0)
    {
      v9 = *(this + 11);
      if (v9 != MEMORY[0x1E69E5958])
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

    if ((*(this + 266) & 0x10) != 0)
    {
      v10 = *(this + 13);
      if (v10 != MEMORY[0x1E69E5958])
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

    if ((*(this + 266) & 0x20) != 0)
    {
      v11 = *(this + 14);
      if (v11 != MEMORY[0x1E69E5958])
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

    *(this + 75) = 0;
    *(this + 25) = 0;
    v2 = *(this + 66);
  }

  if (HIBYTE(v2))
  {
    *(this + 15) = 0;
    if ((v2 & 0x4000000) != 0)
    {
      v12 = *(this + 16);
      if (v12 != MEMORY[0x1E69E5958])
      {
        if (*(v12 + 23) < 0)
        {
          **v12 = 0;
          *(v12 + 8) = 0;
        }

        else
        {
          *v12 = 0;
          *(v12 + 23) = 0;
        }
      }
    }

    if ((*(this + 267) & 8) != 0)
    {
      v13 = *(this + 17);
      if (v13 != MEMORY[0x1E69E5958])
      {
        if (*(v13 + 23) < 0)
        {
          **v13 = 0;
          *(v13 + 8) = 0;
        }

        else
        {
          *v13 = 0;
          *(v13 + 23) = 0;
        }
      }
    }

    if ((*(this + 267) & 0x10) != 0)
    {
      v14 = *(this + 18);
      if (v14 != MEMORY[0x1E69E5958])
      {
        if (*(v14 + 23) < 0)
        {
          **v14 = 0;
          *(v14 + 8) = 0;
        }

        else
        {
          *v14 = 0;
          *(v14 + 23) = 0;
        }
      }
    }

    *(this + 19) = 0;
    *(this + 188) = 0;
  }

  v15 = *(this + 67);
  if (v15)
  {
    *(this + 46) = 0;
    *(this + 20) = 0;
    *(this + 21) = 0;
    if ((v15 & 0x10) != 0)
    {
      v16 = *(this + 22);
      if (v16 != MEMORY[0x1E69E5958])
      {
        if (*(v16 + 23) < 0)
        {
          **v16 = 0;
          *(v16 + 8) = 0;
        }

        else
        {
          *v16 = 0;
          *(v16 + 23) = 0;
        }
      }
    }

    if ((*(this + 268) & 0x40) != 0)
    {
      v17 = *(this + 27);
      if (v17 != MEMORY[0x1E69E5958])
      {
        if (*(v17 + 23) < 0)
        {
          **v17 = 0;
          *(v17 + 8) = 0;
        }

        else
        {
          *v17 = 0;
          *(v17 + 23) = 0;
        }
      }
    }

    *(this + 56) = 0;
    v15 = *(this + 67);
  }

  if ((v15 & 0xFF00) != 0)
  {
    *(this + 189) = 0;
    *(this + 64) = 0;
    *(this + 236) = 0;
    *(this + 228) = 0;
    *(this + 61) = 0;
    if ((v15 & 0x8000) != 0)
    {
      v18 = *(this + 31);
      if (v18 != MEMORY[0x1E69E5958])
      {
        if (*(v18 + 23) < 0)
        {
          **v18 = 0;
          *(v18 + 8) = 0;
        }

        else
        {
          *v18 = 0;
          *(v18 + 23) = 0;
        }
      }
    }
  }

  result = wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Clear<wireless_diagnostics::google::protobuf::RepeatedPtrField<std::string>::TypeHandler>(this + 192);
  *(this + 33) = 0;
  return result;
}

uint64_t awd::metrics::ATM_CallAttemptEvent::MergePartialFromCodedStream(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
{
  v4 = this;
  v5 = (this + 256);
  v6 = MEMORY[0x1E69E5958];
LABEL_2:
  while (2)
  {
    v7 = *(a2 + 1);
    if (v7 >= *(a2 + 2) || (v8 = *v7, (v8 & 0x80000000) != 0))
    {
      this = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadTagFallback(a2);
      v8 = this;
      *(a2 + 8) = this;
      if (!this)
      {
        return 1;
      }
    }

    else
    {
      *(a2 + 8) = v8;
      *(a2 + 1) = v7 + 1;
      if (!v8)
      {
        return 1;
      }
    }

    v9 = v8 >> 3;
    v10 = v8 & 7;
    switch(v8 >> 3)
    {
      case 1u:
        if ((v8 & 7) != 0)
        {
          goto LABEL_110;
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

        v42 = *(v4 + 264) | 1;
        *(v4 + 264) = v42;
        if (v14 < v11 && *v14 == 18)
        {
          *(a2 + 1) = v14 + 1;
          goto LABEL_242;
        }

        continue;
      case 2u:
        if (v10 != 2)
        {
          goto LABEL_110;
        }

        v42 = *(v4 + 264);
LABEL_242:
        *(v4 + 264) = v42 | 2;
        if (*(v4 + 16) == v6)
        {
          operator new();
        }

        this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
        if (!this)
        {
          return this;
        }

        v89 = *(a2 + 1);
        v35 = *(a2 + 2);
        if (v89 >= v35 || *v89 != 24)
        {
          continue;
        }

        v36 = v89 + 1;
        *(a2 + 1) = v36;
LABEL_248:
        v147 = 0;
        if (v36 >= v35 || (v90 = *v36, (v90 & 0x80000000) != 0))
        {
          this = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v147);
          if (!this)
          {
            return this;
          }

          v90 = v147;
          v91 = *(a2 + 1);
          v35 = *(a2 + 2);
        }

        else
        {
          v91 = v36 + 1;
          *(a2 + 1) = v91;
        }

        *(v4 + 28) = v90 != 0;
        *(v4 + 264) |= 4u;
        if (v91 >= v35 || *v91 != 32)
        {
          continue;
        }

        v40 = v91 + 1;
        *(a2 + 1) = v40;
LABEL_256:
        v147 = 0;
        if (v40 >= v35 || (v92 = *v40, (v92 & 0x80000000) != 0))
        {
          this = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v147);
          if (!this)
          {
            return this;
          }

          v92 = v147;
        }

        else
        {
          *(a2 + 1) = v40 + 1;
        }

        if (v92 + 1 <= 7)
        {
          *(v4 + 264) |= 8u;
          *(v4 + 24) = v92;
        }

        v93 = *(a2 + 1);
        v30 = *(a2 + 2);
        if (v93 >= v30 || *v93 != 40)
        {
          continue;
        }

        v31 = v93 + 1;
        *(a2 + 1) = v31;
LABEL_266:
        v147 = 0;
        if (v31 >= v30 || (v94 = *v31, (v94 & 0x80000000) != 0))
        {
          this = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v147);
          if (!this)
          {
            return this;
          }

          v94 = v147;
          v95 = *(a2 + 1);
          v30 = *(a2 + 2);
        }

        else
        {
          v95 = v31 + 1;
          *(a2 + 1) = v95;
        }

        *(v4 + 29) = v94 != 0;
        *(v4 + 264) |= 0x10u;
        if (v95 >= v30 || *v95 != 48)
        {
          continue;
        }

        v47 = v95 + 1;
        *(a2 + 1) = v47;
LABEL_274:
        v147 = 0;
        if (v47 >= v30 || (v96 = *v47, (v96 & 0x80000000) != 0))
        {
          this = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v147);
          if (!this)
          {
            return this;
          }

          v96 = v147;
          v97 = *(a2 + 1);
          v30 = *(a2 + 2);
        }

        else
        {
          v97 = v47 + 1;
          *(a2 + 1) = v97;
        }

        *(v4 + 30) = v96 != 0;
        *(v4 + 264) |= 0x20u;
        if (v97 >= v30 || *v97 != 56)
        {
          continue;
        }

        v50 = v97 + 1;
        *(a2 + 1) = v50;
LABEL_282:
        v147 = 0;
        if (v50 >= v30 || (v98 = *v50, (v98 & 0x80000000) != 0))
        {
          this = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v147);
          if (!this)
          {
            return this;
          }

          v98 = v147;
          v99 = *(a2 + 1);
          v30 = *(a2 + 2);
        }

        else
        {
          v99 = v50 + 1;
          *(a2 + 1) = v99;
        }

        *(v4 + 31) = v98 != 0;
        *(v4 + 264) |= 0x40u;
        if (v99 >= v30 || *v99 != 64)
        {
          continue;
        }

        v41 = v99 + 1;
        *(a2 + 1) = v41;
LABEL_290:
        v147 = 0;
        if (v41 >= v30 || (v100 = *v41, (v100 & 0x80000000) != 0))
        {
          this = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v147);
          if (!this)
          {
            return this;
          }

          v100 = v147;
          v101 = *(a2 + 1);
          v30 = *(a2 + 2);
        }

        else
        {
          v101 = v41 + 1;
          *(a2 + 1) = v101;
        }

        *(v4 + 72) = v100 != 0;
        *(v4 + 264) |= 0x80u;
        if (v101 >= v30 || *v101 != 72)
        {
          continue;
        }

        v53 = v101 + 1;
        *(a2 + 1) = v53;
LABEL_298:
        v147 = 0;
        if (v53 >= v30 || (v102 = *v53, (v102 & 0x80000000) != 0))
        {
          this = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v147);
          if (!this)
          {
            return this;
          }

          v102 = v147;
        }

        else
        {
          *(a2 + 1) = v53 + 1;
        }

        if (v102 - 1 < 6 || v102 == -1)
        {
          *(v4 + 264) |= 0x100u;
          *(v4 + 32) = v102;
        }

        v104 = *(a2 + 1);
        if (v104 >= *(a2 + 2) || *v104 != 82)
        {
          continue;
        }

        *(a2 + 1) = v104 + 1;
LABEL_312:
        *(v4 + 264) |= 0x200u;
        if (*(v4 + 40) == v6)
        {
          operator new();
        }

        this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
        if (!this)
        {
          return this;
        }

        v105 = *(a2 + 1);
        v51 = *(a2 + 2);
        if (v105 >= v51 || *v105 != 88)
        {
          continue;
        }

        v52 = v105 + 1;
        *(a2 + 1) = v52;
LABEL_318:
        if (v52 >= v51 || (v106 = *v52, v106 < 0))
        {
          this = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, (v4 + 36));
          if (!this)
          {
            return this;
          }

          v107 = *(a2 + 1);
          v51 = *(a2 + 2);
        }

        else
        {
          *(v4 + 36) = v106;
          v107 = v52 + 1;
          *(a2 + 1) = v107;
        }

        v29 = *(v4 + 264) | 0x400;
        *(v4 + 264) = v29;
        if (v107 >= v51 || *v107 != 98)
        {
          continue;
        }

        *(a2 + 1) = v107 + 1;
LABEL_326:
        *(v4 + 264) = v29 | 0x800;
        if (*(v4 + 48) == v6)
        {
          operator new();
        }

        this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
        if (!this)
        {
          return this;
        }

        v108 = *(a2 + 1);
        v33 = *(a2 + 2);
        if (v108 >= v33 || *v108 != 104)
        {
          continue;
        }

        v34 = v108 + 1;
        *(a2 + 1) = v34;
LABEL_332:
        v147 = 0;
        if (v34 >= v33 || (v109 = *v34, (v109 & 0x80000000) != 0))
        {
          this = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v147);
          if (!this)
          {
            return this;
          }

          v109 = v147;
          v110 = *(a2 + 1);
          v33 = *(a2 + 2);
        }

        else
        {
          v110 = v34 + 1;
          *(a2 + 1) = v110;
        }

        *(v4 + 73) = v109 != 0;
        v49 = *(v4 + 264) | 0x1000;
        *(v4 + 264) = v49;
        if (v110 >= v33 || *v110 != 114)
        {
          continue;
        }

        *(a2 + 1) = v110 + 1;
LABEL_340:
        *(v4 + 264) = v49 | 0x2000;
        if (*(v4 + 56) == v6)
        {
          operator new();
        }

        this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
        if (!this)
        {
          return this;
        }

        v111 = *(a2 + 1);
        if (v111 >= *(a2 + 2) || *v111 != 122)
        {
          continue;
        }

        *(a2 + 1) = v111 + 1;
LABEL_346:
        *(v4 + 264) |= 0x4000u;
        if (*(v4 + 64) == v6)
        {
          operator new();
        }

        this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
        if (!this)
        {
          return this;
        }

        v112 = *(a2 + 1);
        v38 = *(a2 + 2);
        if (v38 - v112 < 2 || *v112 != 128 || v112[1] != 1)
        {
          continue;
        }

        v39 = (v112 + 2);
        *(a2 + 1) = v39;
LABEL_353:
        if (v39 >= v38 || (v113 = *v39, v113 < 0))
        {
          this = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, (v4 + 76));
          if (!this)
          {
            return this;
          }

          v114 = *(a2 + 1);
          v38 = *(a2 + 2);
        }

        else
        {
          *(v4 + 76) = v113;
          v114 = (v39 + 1);
          *(a2 + 1) = v114;
        }

        v27 = *(v4 + 264) | 0x8000;
        *(v4 + 264) = v27;
        if (v38 - v114 < 2 || *v114 != 138 || v114[1] != 1)
        {
          continue;
        }

        *(a2 + 1) = v114 + 2;
LABEL_362:
        *(v4 + 264) = v27 | 0x40000;
        if (*(v4 + 80) == v6)
        {
          operator new();
        }

        this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
        if (!this)
        {
          return this;
        }

        v115 = *(a2 + 1);
        if (*(a2 + 4) - v115 < 2 || *v115 != 146 || v115[1] != 1)
        {
          continue;
        }

        *(a2 + 1) = v115 + 2;
LABEL_369:
        *(v4 + 264) |= 0x80000u;
        if (*(v4 + 88) == v6)
        {
          operator new();
        }

        this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
        if (!this)
        {
          return this;
        }

        v116 = *(a2 + 1);
        if (*(a2 + 4) - v116 < 2 || *v116 != 154 || v116[1] != 1)
        {
          continue;
        }

        *(a2 + 1) = v116 + 2;
LABEL_376:
        *(v4 + 264) |= 0x100000u;
        if (*(v4 + 104) == v6)
        {
          operator new();
        }

        this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
        if (!this)
        {
          return this;
        }

        v117 = *(a2 + 1);
        if (*(a2 + 4) - v117 < 2 || *v117 != 162 || v117[1] != 1)
        {
          continue;
        }

        *(a2 + 1) = v117 + 2;
LABEL_383:
        *(v4 + 264) |= 0x200000u;
        if (*(v4 + 112) == v6)
        {
          operator new();
        }

        this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
        if (!this)
        {
          return this;
        }

        v118 = *(a2 + 1);
        v45 = *(a2 + 2);
        if (v45 - v118 < 2 || *v118 != 168 || v118[1] != 1)
        {
          continue;
        }

        v46 = (v118 + 2);
        *(a2 + 1) = v46;
LABEL_390:
        v147 = 0;
        if (v46 >= v45 || (v119 = *v46, (v119 & 0x80000000) != 0))
        {
          this = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v147);
          if (!this)
          {
            return this;
          }

          v119 = v147;
          v120 = *(a2 + 1);
          v45 = *(a2 + 2);
        }

        else
        {
          v120 = (v46 + 1);
          *(a2 + 1) = v120;
        }

        *(v4 + 75) = v119 != 0;
        *(v4 + 264) |= 0x400000u;
        if (v45 - v120 < 2 || *v120 != 176 || v120[1] != 1)
        {
          continue;
        }

        v48 = (v120 + 2);
        *(a2 + 1) = v48;
LABEL_399:
        if (v48 >= v45 || (v121 = *v48, v121 < 0))
        {
          this = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, (v4 + 100));
          if (!this)
          {
            return this;
          }

          v122 = *(a2 + 1);
          v45 = *(a2 + 2);
        }

        else
        {
          *(v4 + 100) = v121;
          v122 = (v48 + 1);
          *(a2 + 1) = v122;
        }

        *(v4 + 264) |= 0x800000u;
        if (v45 - v122 < 2 || *v122 != 184 || v122[1] != 1)
        {
          continue;
        }

        v57 = (v122 + 2);
        *(a2 + 1) = v57;
LABEL_408:
        if (v57 >= v45 || (v123 = *v57, v123 < 0))
        {
          this = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, (v4 + 124));
          if (!this)
          {
            return this;
          }

          v124 = *(a2 + 1);
          v45 = *(a2 + 2);
        }

        else
        {
          *(v4 + 124) = v123;
          v124 = (v57 + 1);
          *(a2 + 1) = v124;
        }

        v60 = *(v4 + 264) | 0x2000000;
        *(v4 + 264) = v60;
        if (v45 - v124 < 2 || *v124 != 194 || v124[1] != 1)
        {
          continue;
        }

        *(a2 + 1) = v124 + 2;
LABEL_417:
        *(v4 + 264) = v60 | 0x4000000;
        if (*(v4 + 128) == v6)
        {
          operator new();
        }

        this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
        if (!this)
        {
          return this;
        }

        v125 = *(a2 + 1);
        if (*(a2 + 4) - v125 < 2 || *v125 != 202 || v125[1] != 1)
        {
          continue;
        }

        *(a2 + 1) = v125 + 2;
LABEL_424:
        *(v4 + 264) |= 0x8000000u;
        if (*(v4 + 136) == v6)
        {
          operator new();
        }

        this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
        if (!this)
        {
          return this;
        }

        v126 = *(a2 + 1);
        if (*(a2 + 4) - v126 < 2 || *v126 != 210 || v126[1] != 1)
        {
          continue;
        }

        *(a2 + 1) = v126 + 2;
LABEL_431:
        *(v4 + 264) |= 0x10000000u;
        if (*(v4 + 144) == v6)
        {
          operator new();
        }

        this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
        if (!this)
        {
          return this;
        }

        v127 = *(a2 + 1);
        v22 = *(a2 + 2);
        if (v22 - v127 < 2 || *v127 != 216 || v127[1] != 1)
        {
          continue;
        }

        v65 = (v127 + 2);
        *(a2 + 1) = v65;
LABEL_438:
        if (v65 >= v22 || (v128 = *v65, v128 < 0))
        {
          this = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, (v4 + 152));
          if (!this)
          {
            return this;
          }

          v129 = *(a2 + 1);
          v22 = *(a2 + 2);
        }

        else
        {
          *(v4 + 152) = v128;
          v129 = (v65 + 1);
          *(a2 + 1) = v129;
        }

        *(v4 + 264) |= 0x20000000u;
        if (v22 - v129 < 2 || *v129 != 224 || v129[1] != 1)
        {
          continue;
        }

        v23 = (v129 + 2);
        *(a2 + 1) = v23;
LABEL_447:
        if (v23 >= v22 || (v130 = *v23, v130 < 0))
        {
          this = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, (v4 + 156));
          if (!this)
          {
            return this;
          }

          v131 = *(a2 + 1);
          v22 = *(a2 + 2);
        }

        else
        {
          *(v4 + 156) = v130;
          v131 = (v23 + 1);
          *(a2 + 1) = v131;
        }

        *(v4 + 264) |= 0x40000000u;
        if (v22 - v131 < 2 || *v131 != 232 || v131[1] != 1)
        {
          continue;
        }

        v61 = (v131 + 2);
        *(a2 + 1) = v61;
LABEL_456:
        v147 = 0;
        if (v61 >= v22 || (v132 = *v61, (v132 & 0x80000000) != 0))
        {
          this = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v147);
          if (!this)
          {
            return this;
          }

          v132 = v147;
          v133 = *(a2 + 1);
          v22 = *(a2 + 2);
        }

        else
        {
          v133 = (v61 + 1);
          *(a2 + 1) = v133;
        }

        *(v4 + 188) = v132 != 0;
        *(v4 + 264) |= 0x80000000;
        if (v22 - v133 < 2 || *v133 != 240 || v133[1] != 1)
        {
          continue;
        }

        v62 = (v133 + 2);
        *(a2 + 1) = v62;
LABEL_465:
        if (v62 >= v22 || (v134 = *v62, v134 < 0))
        {
          this = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, (v4 + 164));
          if (!this)
          {
            return this;
          }

          v135 = *(a2 + 1);
          v22 = *(a2 + 2);
        }

        else
        {
          *(v4 + 164) = v134;
          v135 = (v62 + 1);
          *(a2 + 1) = v135;
        }

        *(v4 + 268) |= 2u;
        if (v22 - v135 < 2 || *v135 != 248 || v135[1] != 1)
        {
          continue;
        }

        v54 = (v135 + 2);
        *(a2 + 1) = v54;
LABEL_474:
        if (v54 >= v22 || (v136 = *v54, v136 < 0))
        {
          this = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, (v4 + 184));
          if (!this)
          {
            return this;
          }

          v137 = *(a2 + 1);
          v22 = *(a2 + 2);
        }

        else
        {
          *(v4 + 184) = v136;
          v137 = (v54 + 1);
          *(a2 + 1) = v137;
        }

        *(v4 + 268) |= 4u;
        if (v22 - v137 < 2 || *v137 != 128 || v137[1] != 2)
        {
          continue;
        }

        v43 = (v137 + 2);
        *(a2 + 1) = v43;
LABEL_483:
        if (v43 >= v22 || (v138 = *v43, v138 < 0))
        {
          this = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, (v4 + 168));
          if (!this)
          {
            return this;
          }

          v139 = *(a2 + 1);
          v22 = *(a2 + 2);
        }

        else
        {
          *(v4 + 168) = v138;
          v139 = (v43 + 1);
          *(a2 + 1) = v139;
        }

        v55 = *(v4 + 268) | 8;
        *(v4 + 268) = v55;
        if (v22 - v139 < 2 || *v139 != 138 || v139[1] != 2)
        {
          continue;
        }

        *(a2 + 1) = v139 + 2;
LABEL_492:
        *(v4 + 268) = v55 | 0x10;
        if (*(v4 + 176) == v6)
        {
          operator new();
        }

        this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
        if (!this)
        {
          return this;
        }

        v140 = *(a2 + 1);
        if (*(a2 + 4) - v140 < 2 || *v140 != 146)
        {
          continue;
        }

        while (1)
        {
          if (v140[1] != 2)
          {
            goto LABEL_2;
          }

          *(a2 + 1) = v140 + 2;
LABEL_499:
          v141 = *(v4 + 204);
          v142 = *(v4 + 200);
          if (v142 >= v141)
          {
            if (v141 == *(v4 + 208))
            {
              this = wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((v4 + 192));
              v141 = *(v4 + 204);
            }

            *(v4 + 204) = v141 + 1;
            v143 = wireless_diagnostics::google::protobuf::internal::StringTypeHandlerBase::New(this);
            v144 = *(v4 + 192);
            v145 = *(v4 + 200);
            *(v4 + 200) = v145 + 1;
            *(v144 + 8 * v145) = v143;
          }

          else
          {
            *(v4 + 200) = v142 + 1;
          }

          this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
          if (!this)
          {
            return this;
          }

          v140 = *(a2 + 1);
          v20 = *(a2 + 2);
          if (v20 - v140 < 2)
          {
            goto LABEL_2;
          }

          v146 = *v140;
          if (v146 == 152)
          {
            break;
          }

          if (v146 != 146)
          {
            goto LABEL_2;
          }
        }

        if (v140[1] != 2)
        {
          continue;
        }

        v24 = (v140 + 2);
        *(a2 + 1) = v24;
LABEL_28:
        if (v24 >= v20 || (v25 = *v24, v25 < 0))
        {
          this = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, (v4 + 96));
          if (!this)
          {
            return this;
          }

          v26 = *(a2 + 1);
          v20 = *(a2 + 2);
        }

        else
        {
          *(v4 + 96) = v25;
          v26 = (v24 + 1);
          *(a2 + 1) = v26;
        }

        *(v4 + 264) |= 0x10000u;
        if (v20 - v26 < 2 || *v26 != 160 || v26[1] != 2)
        {
          continue;
        }

        v21 = (v26 + 2);
        *(a2 + 1) = v21;
LABEL_120:
        v147 = 0;
        if (v21 >= v20 || (v66 = *v21, (v66 & 0x80000000) != 0))
        {
          this = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v147);
          if (!this)
          {
            return this;
          }

          v66 = v147;
          v67 = *(a2 + 1);
          v20 = *(a2 + 2);
        }

        else
        {
          v67 = (v21 + 1);
          *(a2 + 1) = v67;
        }

        *(v4 + 74) = v66 != 0;
        *(v4 + 264) |= 0x20000u;
        if (v20 - v67 < 2 || *v67 != 170 || v67[1] != 2)
        {
          continue;
        }

        *(a2 + 1) = v67 + 2;
LABEL_129:
        *(v4 + 268) |= 0x40u;
        if (*(v4 + 216) == v6)
        {
          operator new();
        }

        this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
        if (!this)
        {
          return this;
        }

        v68 = *(a2 + 1);
        v18 = *(a2 + 2);
        if (v18 - v68 < 2 || *v68 != 176 || v68[1] != 2)
        {
          continue;
        }

        v19 = (v68 + 2);
        *(a2 + 1) = v19;
LABEL_136:
        v147 = 0;
        if (v19 >= v18 || (v69 = *v19, (v69 & 0x80000000) != 0))
        {
          this = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v147);
          if (!this)
          {
            return this;
          }

          v69 = v147;
        }

        else
        {
          *(a2 + 1) = v19 + 1;
        }

        if (v69 <= 5)
        {
          *(v4 + 264) |= 0x1000000u;
          *(v4 + 120) = v69;
        }

        v70 = *(a2 + 1);
        v63 = *(a2 + 2);
        if (v63 - v70 < 2 || *v70 != 184 || v70[1] != 2)
        {
          continue;
        }

        v64 = (v70 + 2);
        *(a2 + 1) = v64;
LABEL_147:
        v147 = 0;
        if (v64 >= v63 || (v71 = *v64, (v71 & 0x80000000) != 0))
        {
          this = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v147);
          if (!this)
          {
            return this;
          }

          v71 = v147;
        }

        else
        {
          *(a2 + 1) = v64 + 1;
        }

        if (v71 <= 2)
        {
          *(v4 + 268) |= 1u;
          *(v4 + 160) = v71;
        }

        v72 = *(a2 + 1);
        v16 = *(a2 + 2);
        if (v16 - v72 < 2 || *v72 != 192 || v72[1] != 2)
        {
          continue;
        }

        v58 = (v72 + 2);
        *(a2 + 1) = v58;
LABEL_158:
        if (v58 >= v16 || (v73 = *v58, v73 < 0))
        {
          this = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, (v4 + 224));
          if (!this)
          {
            return this;
          }

          v74 = *(a2 + 1);
          v16 = *(a2 + 2);
        }

        else
        {
          *(v4 + 224) = v73;
          v74 = (v58 + 1);
          *(a2 + 1) = v74;
        }

        *(v4 + 268) |= 0x80u;
        if (v16 - v74 < 2 || *v74 != 200 || v74[1] != 2)
        {
          continue;
        }

        v32 = (v74 + 2);
        *(a2 + 1) = v32;
LABEL_167:
        if (v32 >= v16 || (v75 = *v32, v75 < 0))
        {
          this = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, (v4 + 228));
          if (!this)
          {
            return this;
          }

          v76 = *(a2 + 1);
          v16 = *(a2 + 2);
        }

        else
        {
          *(v4 + 228) = v75;
          v76 = (v32 + 1);
          *(a2 + 1) = v76;
        }

        *(v4 + 268) |= 0x100u;
        if (v16 - v76 < 2 || *v76 != 208 || v76[1] != 2)
        {
          continue;
        }

        v44 = (v76 + 2);
        *(a2 + 1) = v44;
LABEL_176:
        if (v44 >= v16 || (v77 = *v44, v77 < 0))
        {
          this = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, (v4 + 232));
          if (!this)
          {
            return this;
          }

          v78 = *(a2 + 1);
          v16 = *(a2 + 2);
        }

        else
        {
          *(v4 + 232) = v77;
          v78 = (v44 + 1);
          *(a2 + 1) = v78;
        }

        *(v4 + 268) |= 0x200u;
        if (v16 - v78 < 2 || *v78 != 216 || v78[1] != 2)
        {
          continue;
        }

        v59 = (v78 + 2);
        *(a2 + 1) = v59;
LABEL_185:
        if (v59 >= v16 || (v79 = *v59, v79 < 0))
        {
          this = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, (v4 + 236));
          if (!this)
          {
            return this;
          }

          v80 = *(a2 + 1);
          v16 = *(a2 + 2);
        }

        else
        {
          *(v4 + 236) = v79;
          v80 = (v59 + 1);
          *(a2 + 1) = v80;
        }

        *(v4 + 268) |= 0x400u;
        if (v16 - v80 < 2 || *v80 != 224 || v80[1] != 2)
        {
          continue;
        }

        v17 = (v80 + 2);
        *(a2 + 1) = v17;
LABEL_194:
        if (v17 >= v16 || (v81 = *v17, v81 < 0))
        {
          this = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, (v4 + 240));
          if (!this)
          {
            return this;
          }

          v82 = *(a2 + 1);
          v16 = *(a2 + 2);
        }

        else
        {
          *(v4 + 240) = v81;
          v82 = (v17 + 1);
          *(a2 + 1) = v82;
        }

        *(v4 + 268) |= 0x800u;
        if (v16 - v82 < 2 || *v82 != 232 || v82[1] != 2)
        {
          continue;
        }

        v28 = (v82 + 2);
        *(a2 + 1) = v28;
LABEL_203:
        if (v28 >= v16 || (v83 = *v28, v83 < 0))
        {
          this = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, (v4 + 244));
          if (!this)
          {
            return this;
          }

          v84 = *(a2 + 1);
          v16 = *(a2 + 2);
        }

        else
        {
          *(v4 + 244) = v83;
          v84 = (v28 + 1);
          *(a2 + 1) = v84;
        }

        *(v4 + 268) |= 0x1000u;
        if (v16 - v84 < 2 || *v84 != 240 || v84[1] != 2)
        {
          continue;
        }

        v56 = (v84 + 2);
        *(a2 + 1) = v56;
LABEL_212:
        v147 = 0;
        if (v56 >= v16 || (v85 = *v56, (v85 & 0x80000000) != 0))
        {
          this = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v147);
          if (!this)
          {
            return this;
          }

          v85 = v147;
          v86 = *(a2 + 1);
          v16 = *(a2 + 2);
        }

        else
        {
          v86 = (v56 + 1);
          *(a2 + 1) = v86;
        }

        *(v4 + 189) = v85 != 0;
        *(v4 + 268) |= 0x2000u;
        if (v16 - v86 < 2 || *v86 != 240 || v86[1] != 34)
        {
          continue;
        }

        v37 = (v86 + 2);
        *(a2 + 1) = v37;
        goto LABEL_221;
      case 3u:
        if ((v8 & 7) != 0)
        {
          goto LABEL_110;
        }

        v36 = *(a2 + 1);
        v35 = *(a2 + 2);
        goto LABEL_248;
      case 4u:
        if ((v8 & 7) != 0)
        {
          goto LABEL_110;
        }

        v40 = *(a2 + 1);
        v35 = *(a2 + 2);
        goto LABEL_256;
      case 5u:
        if ((v8 & 7) != 0)
        {
          goto LABEL_110;
        }

        v31 = *(a2 + 1);
        v30 = *(a2 + 2);
        goto LABEL_266;
      case 6u:
        if ((v8 & 7) != 0)
        {
          goto LABEL_110;
        }

        v47 = *(a2 + 1);
        v30 = *(a2 + 2);
        goto LABEL_274;
      case 7u:
        if ((v8 & 7) != 0)
        {
          goto LABEL_110;
        }

        v50 = *(a2 + 1);
        v30 = *(a2 + 2);
        goto LABEL_282;
      case 8u:
        if ((v8 & 7) != 0)
        {
          goto LABEL_110;
        }

        v41 = *(a2 + 1);
        v30 = *(a2 + 2);
        goto LABEL_290;
      case 9u:
        if ((v8 & 7) != 0)
        {
          goto LABEL_110;
        }

        v53 = *(a2 + 1);
        v30 = *(a2 + 2);
        goto LABEL_298;
      case 0xAu:
        if (v10 == 2)
        {
          goto LABEL_312;
        }

        goto LABEL_110;
      case 0xBu:
        if ((v8 & 7) != 0)
        {
          goto LABEL_110;
        }

        v52 = *(a2 + 1);
        v51 = *(a2 + 2);
        goto LABEL_318;
      case 0xCu:
        if (v10 != 2)
        {
          goto LABEL_110;
        }

        v29 = *(v4 + 264);
        goto LABEL_326;
      case 0xDu:
        if ((v8 & 7) != 0)
        {
          goto LABEL_110;
        }

        v34 = *(a2 + 1);
        v33 = *(a2 + 2);
        goto LABEL_332;
      case 0xEu:
        if (v10 != 2)
        {
          goto LABEL_110;
        }

        v49 = *(v4 + 264);
        goto LABEL_340;
      case 0xFu:
        if (v10 == 2)
        {
          goto LABEL_346;
        }

        goto LABEL_110;
      case 0x10u:
        if ((v8 & 7) != 0)
        {
          goto LABEL_110;
        }

        v39 = *(a2 + 1);
        v38 = *(a2 + 2);
        goto LABEL_353;
      case 0x11u:
        if (v10 != 2)
        {
          goto LABEL_110;
        }

        v27 = *(v4 + 264);
        goto LABEL_362;
      case 0x12u:
        if (v10 == 2)
        {
          goto LABEL_369;
        }

        goto LABEL_110;
      case 0x13u:
        if (v10 == 2)
        {
          goto LABEL_376;
        }

        goto LABEL_110;
      case 0x14u:
        if (v10 == 2)
        {
          goto LABEL_383;
        }

        goto LABEL_110;
      case 0x15u:
        if ((v8 & 7) != 0)
        {
          goto LABEL_110;
        }

        v46 = *(a2 + 1);
        v45 = *(a2 + 2);
        goto LABEL_390;
      case 0x16u:
        if ((v8 & 7) != 0)
        {
          goto LABEL_110;
        }

        v48 = *(a2 + 1);
        v45 = *(a2 + 2);
        goto LABEL_399;
      case 0x17u:
        if ((v8 & 7) != 0)
        {
          goto LABEL_110;
        }

        v57 = *(a2 + 1);
        v45 = *(a2 + 2);
        goto LABEL_408;
      case 0x18u:
        if (v10 != 2)
        {
          goto LABEL_110;
        }

        v60 = *(v4 + 264);
        goto LABEL_417;
      case 0x19u:
        if (v10 == 2)
        {
          goto LABEL_424;
        }

        goto LABEL_110;
      case 0x1Au:
        if (v10 == 2)
        {
          goto LABEL_431;
        }

        goto LABEL_110;
      case 0x1Bu:
        if ((v8 & 7) != 0)
        {
          goto LABEL_110;
        }

        v65 = *(a2 + 1);
        v22 = *(a2 + 2);
        goto LABEL_438;
      case 0x1Cu:
        if ((v8 & 7) != 0)
        {
          goto LABEL_110;
        }

        v23 = *(a2 + 1);
        v22 = *(a2 + 2);
        goto LABEL_447;
      case 0x1Du:
        if ((v8 & 7) != 0)
        {
          goto LABEL_110;
        }

        v61 = *(a2 + 1);
        v22 = *(a2 + 2);
        goto LABEL_456;
      case 0x1Eu:
        if ((v8 & 7) != 0)
        {
          goto LABEL_110;
        }

        v62 = *(a2 + 1);
        v22 = *(a2 + 2);
        goto LABEL_465;
      case 0x1Fu:
        if ((v8 & 7) != 0)
        {
          goto LABEL_110;
        }

        v54 = *(a2 + 1);
        v22 = *(a2 + 2);
        goto LABEL_474;
      case 0x20u:
        if ((v8 & 7) != 0)
        {
          goto LABEL_110;
        }

        v43 = *(a2 + 1);
        v22 = *(a2 + 2);
        goto LABEL_483;
      case 0x21u:
        if (v10 != 2)
        {
          goto LABEL_110;
        }

        v55 = *(v4 + 268);
        goto LABEL_492;
      case 0x22u:
        if (v10 == 2)
        {
          goto LABEL_499;
        }

        goto LABEL_110;
      case 0x23u:
        if ((v8 & 7) != 0)
        {
          goto LABEL_110;
        }

        v24 = *(a2 + 1);
        v20 = *(a2 + 2);
        goto LABEL_28;
      case 0x24u:
        if ((v8 & 7) != 0)
        {
          goto LABEL_110;
        }

        v21 = *(a2 + 1);
        v20 = *(a2 + 2);
        goto LABEL_120;
      case 0x25u:
        if (v10 == 2)
        {
          goto LABEL_129;
        }

        goto LABEL_110;
      case 0x26u:
        if ((v8 & 7) != 0)
        {
          goto LABEL_110;
        }

        v19 = *(a2 + 1);
        v18 = *(a2 + 2);
        goto LABEL_136;
      case 0x27u:
        if ((v8 & 7) != 0)
        {
          goto LABEL_110;
        }

        v64 = *(a2 + 1);
        v63 = *(a2 + 2);
        goto LABEL_147;
      case 0x28u:
        if ((v8 & 7) != 0)
        {
          goto LABEL_110;
        }

        v58 = *(a2 + 1);
        v16 = *(a2 + 2);
        goto LABEL_158;
      case 0x29u:
        if ((v8 & 7) != 0)
        {
          goto LABEL_110;
        }

        v32 = *(a2 + 1);
        v16 = *(a2 + 2);
        goto LABEL_167;
      case 0x2Au:
        if ((v8 & 7) != 0)
        {
          goto LABEL_110;
        }

        v44 = *(a2 + 1);
        v16 = *(a2 + 2);
        goto LABEL_176;
      case 0x2Bu:
        if ((v8 & 7) != 0)
        {
          goto LABEL_110;
        }

        v59 = *(a2 + 1);
        v16 = *(a2 + 2);
        goto LABEL_185;
      case 0x2Cu:
        if ((v8 & 7) != 0)
        {
          goto LABEL_110;
        }

        v17 = *(a2 + 1);
        v16 = *(a2 + 2);
        goto LABEL_194;
      case 0x2Du:
        if ((v8 & 7) != 0)
        {
          goto LABEL_110;
        }

        v28 = *(a2 + 1);
        v16 = *(a2 + 2);
        goto LABEL_203;
      case 0x2Eu:
        if ((v8 & 7) != 0)
        {
          goto LABEL_110;
        }

        v56 = *(a2 + 1);
        v16 = *(a2 + 2);
        goto LABEL_212;
      default:
        if (v9 == 558)
        {
          if ((v8 & 7) != 0)
          {
            goto LABEL_110;
          }

          v37 = *(a2 + 1);
          v16 = *(a2 + 2);
LABEL_221:
          if (v37 >= v16 || (v87 = *v37, (v87 & 0x80000000) != 0))
          {
            this = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v5);
            if (!this)
            {
              return this;
            }

            v88 = *(a2 + 1);
            v16 = *(a2 + 2);
          }

          else
          {
            *v5 = v87;
            v88 = (v37 + 1);
            *(a2 + 1) = v88;
          }

          v15 = *(v4 + 268) | 0x4000;
          *(v4 + 268) = v15;
          if (v16 - v88 >= 2 && *v88 == 250 && v88[1] == 34)
          {
            *(a2 + 1) = v88 + 2;
            goto LABEL_230;
          }

          continue;
        }

        if (v9 == 559 && v10 == 2)
        {
          v15 = *(v4 + 268);
LABEL_230:
          *(v4 + 268) = v15 | 0x8000;
          if (*(v4 + 248) == v6)
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

          continue;
        }

LABEL_110:
        if (v10 != 4)
        {
          this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(a2, v8);
          if ((this & 1) == 0)
          {
            return 0;
          }

          continue;
        }

        return 1;
    }
  }
}

uint64_t awd::metrics::ATM_CallAttemptEvent::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 264);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(1, *(this + 8), a2, a4);
    v6 = *(v5 + 264);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_59;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
  v6 = *(v5 + 264);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_60;
  }

LABEL_59:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(3, *(v5 + 28), a2, a4);
  v6 = *(v5 + 264);
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_61;
  }

LABEL_60:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(4, *(v5 + 24), a2, a4);
  v6 = *(v5 + 264);
  if ((v6 & 0x10) == 0)
  {
LABEL_6:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_62;
  }

LABEL_61:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(5, *(v5 + 29), a2, a4);
  v6 = *(v5 + 264);
  if ((v6 & 0x20) == 0)
  {
LABEL_7:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_63;
  }

LABEL_62:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(6, *(v5 + 30), a2, a4);
  v6 = *(v5 + 264);
  if ((v6 & 0x40) == 0)
  {
LABEL_8:
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_64;
  }

LABEL_63:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(7, *(v5 + 31), a2, a4);
  v6 = *(v5 + 264);
  if ((v6 & 0x80) == 0)
  {
LABEL_9:
    if ((v6 & 0x100) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_65;
  }

LABEL_64:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(8, *(v5 + 72), a2, a4);
  v6 = *(v5 + 264);
  if ((v6 & 0x100) == 0)
  {
LABEL_10:
    if ((v6 & 0x200) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_66;
  }

LABEL_65:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(9, *(v5 + 32), a2, a4);
  v6 = *(v5 + 264);
  if ((v6 & 0x200) == 0)
  {
LABEL_11:
    if ((v6 & 0x400) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_67;
  }

LABEL_66:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
  v6 = *(v5 + 264);
  if ((v6 & 0x400) == 0)
  {
LABEL_12:
    if ((v6 & 0x800) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_68;
  }

LABEL_67:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xB, *(v5 + 36), a2, a4);
  v6 = *(v5 + 264);
  if ((v6 & 0x800) == 0)
  {
LABEL_13:
    if ((v6 & 0x1000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_69;
  }

LABEL_68:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
  v6 = *(v5 + 264);
  if ((v6 & 0x1000) == 0)
  {
LABEL_14:
    if ((v6 & 0x2000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_70;
  }

LABEL_69:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(0xD, *(v5 + 73), a2, a4);
  v6 = *(v5 + 264);
  if ((v6 & 0x2000) == 0)
  {
LABEL_15:
    if ((v6 & 0x4000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_71;
  }

LABEL_70:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
  v6 = *(v5 + 264);
  if ((v6 & 0x4000) == 0)
  {
LABEL_16:
    if ((v6 & 0x8000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_72;
  }

LABEL_71:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
  v6 = *(v5 + 264);
  if ((v6 & 0x8000) == 0)
  {
LABEL_17:
    if ((v6 & 0x40000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_73;
  }

LABEL_72:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x10, *(v5 + 76), a2, a4);
  v6 = *(v5 + 264);
  if ((v6 & 0x40000) == 0)
  {
LABEL_18:
    if ((v6 & 0x80000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_74;
  }

LABEL_73:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
  v6 = *(v5 + 264);
  if ((v6 & 0x80000) == 0)
  {
LABEL_19:
    if ((v6 & 0x100000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_75;
  }

LABEL_74:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
  v6 = *(v5 + 264);
  if ((v6 & 0x100000) == 0)
  {
LABEL_20:
    if ((v6 & 0x200000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_76;
  }

LABEL_75:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
  v6 = *(v5 + 264);
  if ((v6 & 0x200000) == 0)
  {
LABEL_21:
    if ((v6 & 0x400000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_77;
  }

LABEL_76:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
  v6 = *(v5 + 264);
  if ((v6 & 0x400000) == 0)
  {
LABEL_22:
    if ((v6 & 0x800000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_78;
  }

LABEL_77:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(0x15, *(v5 + 75), a2, a4);
  v6 = *(v5 + 264);
  if ((v6 & 0x800000) == 0)
  {
LABEL_23:
    if ((v6 & 0x2000000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_79;
  }

LABEL_78:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x16, *(v5 + 100), a2, a4);
  v6 = *(v5 + 264);
  if ((v6 & 0x2000000) == 0)
  {
LABEL_24:
    if ((v6 & 0x4000000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_80;
  }

LABEL_79:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x17, *(v5 + 124), a2, a4);
  v6 = *(v5 + 264);
  if ((v6 & 0x4000000) == 0)
  {
LABEL_25:
    if ((v6 & 0x8000000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_81;
  }

LABEL_80:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
  v6 = *(v5 + 264);
  if ((v6 & 0x8000000) == 0)
  {
LABEL_26:
    if ((v6 & 0x10000000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_82;
  }

LABEL_81:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
  v6 = *(v5 + 264);
  if ((v6 & 0x10000000) == 0)
  {
LABEL_27:
    if ((v6 & 0x20000000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_83;
  }

LABEL_82:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
  v6 = *(v5 + 264);
  if ((v6 & 0x20000000) == 0)
  {
LABEL_28:
    if ((v6 & 0x40000000) == 0)
    {
      goto LABEL_29;
    }

LABEL_84:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x1C, *(v5 + 156), a2, a4);
    if ((*(v5 + 264) & 0x80000000) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_85;
  }

LABEL_83:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x1B, *(v5 + 152), a2, a4);
  v6 = *(v5 + 264);
  if ((v6 & 0x40000000) != 0)
  {
    goto LABEL_84;
  }

LABEL_29:
  if ((v6 & 0x80000000) == 0)
  {
    goto LABEL_30;
  }

LABEL_85:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(0x1D, *(v5 + 188), a2, a4);
LABEL_30:
  v7 = *(v5 + 268);
  if ((v7 & 2) != 0)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x1E, *(v5 + 164), a2, a4);
    v7 = *(v5 + 268);
    if ((v7 & 4) == 0)
    {
LABEL_32:
      if ((v7 & 8) == 0)
      {
        goto LABEL_33;
      }

      goto LABEL_88;
    }
  }

  else if ((v7 & 4) == 0)
  {
    goto LABEL_32;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x1F, *(v5 + 184), a2, a4);
  v7 = *(v5 + 268);
  if ((v7 & 8) == 0)
  {
LABEL_33:
    if ((v7 & 0x10) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_34;
  }

LABEL_88:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(0x20, *(v5 + 168), a2, a4);
  if ((*(v5 + 268) & 0x10) != 0)
  {
LABEL_34:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
  }

LABEL_35:
  if (*(v5 + 200) >= 1)
  {
    v8 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
      ++v8;
    }

    while (v8 < *(v5 + 200));
  }

  v9 = *(v5 + 264);
  if ((v9 & 0x10000) != 0)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x23, *(v5 + 96), a2, a4);
    v9 = *(v5 + 264);
  }

  if ((v9 & 0x20000) != 0)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(0x24, *(v5 + 74), a2, a4);
  }

  if ((*(v5 + 268) & 0x40) != 0)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
  }

  if (*(v5 + 267))
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(0x26, *(v5 + 120), a2, a4);
  }

  v10 = *(v5 + 268);
  if (v10)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(0x27, *(v5 + 160), a2, a4);
    v10 = *(v5 + 268);
    if ((v10 & 0x80) == 0)
    {
LABEL_48:
      if ((v10 & 0x100) == 0)
      {
        goto LABEL_49;
      }

      goto LABEL_92;
    }
  }

  else if ((v10 & 0x80) == 0)
  {
    goto LABEL_48;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x28, *(v5 + 224), a2, a4);
  v10 = *(v5 + 268);
  if ((v10 & 0x100) == 0)
  {
LABEL_49:
    if ((v10 & 0x200) == 0)
    {
      goto LABEL_50;
    }

    goto LABEL_93;
  }

LABEL_92:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x29, *(v5 + 228), a2, a4);
  v10 = *(v5 + 268);
  if ((v10 & 0x200) == 0)
  {
LABEL_50:
    if ((v10 & 0x400) == 0)
    {
      goto LABEL_51;
    }

    goto LABEL_94;
  }

LABEL_93:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x2A, *(v5 + 232), a2, a4);
  v10 = *(v5 + 268);
  if ((v10 & 0x400) == 0)
  {
LABEL_51:
    if ((v10 & 0x800) == 0)
    {
      goto LABEL_52;
    }

    goto LABEL_95;
  }

LABEL_94:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x2B, *(v5 + 236), a2, a4);
  v10 = *(v5 + 268);
  if ((v10 & 0x800) == 0)
  {
LABEL_52:
    if ((v10 & 0x1000) == 0)
    {
      goto LABEL_53;
    }

    goto LABEL_96;
  }

LABEL_95:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x2C, *(v5 + 240), a2, a4);
  v10 = *(v5 + 268);
  if ((v10 & 0x1000) == 0)
  {
LABEL_53:
    if ((v10 & 0x2000) == 0)
    {
      goto LABEL_54;
    }

    goto LABEL_97;
  }

LABEL_96:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x2D, *(v5 + 244), a2, a4);
  v10 = *(v5 + 268);
  if ((v10 & 0x2000) == 0)
  {
LABEL_54:
    if ((v10 & 0x4000) == 0)
    {
      goto LABEL_55;
    }

LABEL_98:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x22E, *(v5 + 256), a2, a4);
    if ((*(v5 + 268) & 0x8000) == 0)
    {
      return this;
    }

    goto LABEL_99;
  }

LABEL_97:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(0x2E, *(v5 + 189), a2, a4);
  v10 = *(v5 + 268);
  if ((v10 & 0x4000) != 0)
  {
    goto LABEL_98;
  }

LABEL_55:
  if ((v10 & 0x8000) == 0)
  {
    return this;
  }

LABEL_99:

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
}

uint64_t awd::metrics::ATM_CallAttemptEvent::ByteSize(awd::metrics::ATM_CallAttemptEvent *this, unint64_t a2)
{
  v3 = *(this + 66);
  if (!v3)
  {
    v5 = 0;
    goto LABEL_24;
  }

  if ((v3 & 1) == 0)
  {
    v4 = 0;
    if ((v3 & 2) == 0)
    {
      goto LABEL_16;
    }

LABEL_7:
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
      v3 = *(this + 66);
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
    goto LABEL_16;
  }

  v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 1)) + 1;
  v3 = *(this + 66);
  if ((v3 & 2) != 0)
  {
    goto LABEL_7;
  }

LABEL_16:
  v12 = ((v3 >> 1) & 2) + v4;
  if ((v3 & 8) != 0)
  {
    v13 = *(this + 6);
    if ((v13 & 0x80000000) != 0)
    {
      v14 = 11;
    }

    else if (v13 >= 0x80)
    {
      v14 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v13) + 1;
      v3 = *(this + 66);
    }

    else
    {
      v14 = 2;
    }

    v12 += v14;
  }

  v15.i64[0] = 0x200000002;
  v15.i64[1] = 0x200000002;
  v5 = vaddvq_s32(vandq_s8(vshlq_u32(vdupq_n_s32(v3), xmmword_1E51682E0), v15)) + v12;
LABEL_24:
  if ((v3 & 0xFF00) == 0)
  {
    goto LABEL_84;
  }

  if ((v3 & 0x100) != 0)
  {
    v16 = *(this + 8);
    if ((v16 & 0x80000000) != 0)
    {
      v17 = 11;
    }

    else if (v16 >= 0x80)
    {
      v17 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v16) + 1;
      v3 = *(this + 66);
    }

    else
    {
      v17 = 2;
    }

    v5 += v17;
    if ((v3 & 0x200) == 0)
    {
LABEL_27:
      if ((v3 & 0x400) == 0)
      {
        goto LABEL_28;
      }

LABEL_45:
      v24 = *(this + 9);
      if (v24 >= 0x80)
      {
        v25 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v24) + 1;
        v3 = *(this + 66);
      }

      else
      {
        v25 = 2;
      }

      v5 += v25;
      if ((v3 & 0x800) == 0)
      {
        goto LABEL_58;
      }

      goto LABEL_49;
    }
  }

  else if ((v3 & 0x200) == 0)
  {
    goto LABEL_27;
  }

  v18 = *(this + 5);
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
    v3 = *(this + 66);
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

  v5 += v23 + v19 + 1;
  if ((v3 & 0x400) != 0)
  {
    goto LABEL_45;
  }

LABEL_28:
  if ((v3 & 0x800) == 0)
  {
    goto LABEL_58;
  }

LABEL_49:
  v26 = *(this + 6);
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
    v31 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v30);
    v27 = *(v26 + 23);
    v29 = *(v26 + 8);
    v3 = *(this + 66);
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

  v5 += v31 + v27 + 1;
LABEL_58:
  v5 += (v3 >> 11) & 2;
  if ((v3 & 0x2000) != 0)
  {
    v32 = *(this + 7);
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
      v3 = *(this + 66);
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

    v5 += v37 + v33 + 1;
    if ((v3 & 0x4000) == 0)
    {
LABEL_60:
      if ((v3 & 0x8000) == 0)
      {
        goto LABEL_84;
      }

      goto LABEL_80;
    }
  }

  else if ((v3 & 0x4000) == 0)
  {
    goto LABEL_60;
  }

  v38 = *(this + 8);
  v39 = *(v38 + 23);
  v40 = v39;
  v41 = *(v38 + 8);
  if ((v39 & 0x80u) == 0)
  {
    v42 = *(v38 + 23);
  }

  else
  {
    v42 = v41;
  }

  if (v42 >= 0x80)
  {
    v43 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v42);
    v39 = *(v38 + 23);
    v41 = *(v38 + 8);
    v3 = *(this + 66);
    v40 = *(v38 + 23);
  }

  else
  {
    v43 = 1;
  }

  if (v40 < 0)
  {
    v39 = v41;
  }

  v5 += v43 + v39 + 1;
  if ((v3 & 0x8000) != 0)
  {
LABEL_80:
    v44 = *(this + 19);
    if (v44 >= 0x80)
    {
      v45 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v44) + 2;
      v3 = *(this + 66);
    }

    else
    {
      v45 = 3;
    }

    v5 += v45;
  }

LABEL_84:
  if ((v3 & 0xFF0000) == 0)
  {
    goto LABEL_140;
  }

  if ((v3 & 0x10000) != 0)
  {
    v46 = *(this + 24);
    if (v46 >= 0x80)
    {
      v47 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v46) + 2;
      v3 = *(this + 66);
    }

    else
    {
      v47 = 3;
    }

    v5 += v47;
  }

  if ((v3 & 0x20000) != 0)
  {
    v5 += 3;
  }

  if ((v3 & 0x40000) != 0)
  {
    v48 = *(this + 10);
    v49 = *(v48 + 23);
    v50 = v49;
    v51 = *(v48 + 8);
    if ((v49 & 0x80u) == 0)
    {
      v52 = *(v48 + 23);
    }

    else
    {
      v52 = v51;
    }

    if (v52 >= 0x80)
    {
      v53 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v52);
      v49 = *(v48 + 23);
      v51 = *(v48 + 8);
      v3 = *(this + 66);
      v50 = *(v48 + 23);
    }

    else
    {
      v53 = 1;
    }

    if (v50 < 0)
    {
      v49 = v51;
    }

    v5 += v53 + v49 + 2;
    if ((v3 & 0x80000) == 0)
    {
LABEL_94:
      if ((v3 & 0x100000) == 0)
      {
        goto LABEL_95;
      }

LABEL_115:
      v60 = *(this + 13);
      v61 = *(v60 + 23);
      v62 = v61;
      v63 = *(v60 + 8);
      if ((v61 & 0x80u) == 0)
      {
        v64 = *(v60 + 23);
      }

      else
      {
        v64 = v63;
      }

      if (v64 >= 0x80)
      {
        v65 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v64);
        v61 = *(v60 + 23);
        v63 = *(v60 + 8);
        v3 = *(this + 66);
        v62 = *(v60 + 23);
      }

      else
      {
        v65 = 1;
      }

      if (v62 < 0)
      {
        v61 = v63;
      }

      v5 += v65 + v61 + 2;
      if ((v3 & 0x200000) == 0)
      {
        goto LABEL_133;
      }

      goto LABEL_124;
    }
  }

  else if ((v3 & 0x80000) == 0)
  {
    goto LABEL_94;
  }

  v54 = *(this + 11);
  v55 = *(v54 + 23);
  v56 = v55;
  v57 = *(v54 + 8);
  if ((v55 & 0x80u) == 0)
  {
    v58 = *(v54 + 23);
  }

  else
  {
    v58 = v57;
  }

  if (v58 >= 0x80)
  {
    v59 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v58);
    v55 = *(v54 + 23);
    v57 = *(v54 + 8);
    v3 = *(this + 66);
    v56 = *(v54 + 23);
  }

  else
  {
    v59 = 1;
  }

  if (v56 < 0)
  {
    v55 = v57;
  }

  v5 += v59 + v55 + 2;
  if ((v3 & 0x100000) != 0)
  {
    goto LABEL_115;
  }

LABEL_95:
  if ((v3 & 0x200000) != 0)
  {
LABEL_124:
    v66 = *(this + 14);
    v67 = *(v66 + 23);
    v68 = v67;
    v69 = *(v66 + 8);
    if ((v67 & 0x80u) == 0)
    {
      v70 = *(v66 + 23);
    }

    else
    {
      v70 = v69;
    }

    if (v70 >= 0x80)
    {
      v71 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v70);
      v67 = *(v66 + 23);
      v69 = *(v66 + 8);
      v3 = *(this + 66);
      v68 = *(v66 + 23);
    }

    else
    {
      v71 = 1;
    }

    if (v68 < 0)
    {
      v67 = v69;
    }

    v5 += v71 + v67 + 2;
  }

LABEL_133:
  if ((v3 & 0x400000) != 0)
  {
    v5 += 3;
  }

  if ((v3 & 0x800000) != 0)
  {
    v72 = *(this + 25);
    if (v72 >= 0x80)
    {
      v73 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v72) + 2;
      v3 = *(this + 66);
    }

    else
    {
      v73 = 3;
    }

    v5 += v73;
  }

LABEL_140:
  if (!HIBYTE(v3))
  {
    goto LABEL_196;
  }

  if ((v3 & 0x1000000) != 0)
  {
    v74 = *(this + 30);
    if ((v74 & 0x80000000) != 0)
    {
      v75 = 12;
    }

    else if (v74 >= 0x80)
    {
      v75 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v74) + 2;
      v3 = *(this + 66);
    }

    else
    {
      v75 = 3;
    }

    v5 += v75;
    if ((v3 & 0x2000000) == 0)
    {
LABEL_143:
      if ((v3 & 0x4000000) == 0)
      {
        goto LABEL_144;
      }

      goto LABEL_159;
    }
  }

  else if ((v3 & 0x2000000) == 0)
  {
    goto LABEL_143;
  }

  v76 = *(this + 31);
  if (v76 >= 0x80)
  {
    v77 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v76) + 2;
    v3 = *(this + 66);
  }

  else
  {
    v77 = 3;
  }

  v5 += v77;
  if ((v3 & 0x4000000) == 0)
  {
LABEL_144:
    if ((v3 & 0x8000000) == 0)
    {
      goto LABEL_145;
    }

    goto LABEL_168;
  }

LABEL_159:
  v78 = *(this + 16);
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
    v3 = *(this + 66);
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

  v5 += v83 + v79 + 2;
  if ((v3 & 0x8000000) == 0)
  {
LABEL_145:
    if ((v3 & 0x10000000) == 0)
    {
      goto LABEL_146;
    }

    goto LABEL_177;
  }

LABEL_168:
  v84 = *(this + 17);
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
    v3 = *(this + 66);
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

  v5 += v89 + v85 + 2;
  if ((v3 & 0x10000000) == 0)
  {
LABEL_146:
    if ((v3 & 0x20000000) == 0)
    {
      goto LABEL_147;
    }

    goto LABEL_186;
  }

LABEL_177:
  v90 = *(this + 18);
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
    v3 = *(this + 66);
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

  v5 += v95 + v91 + 2;
  if ((v3 & 0x20000000) == 0)
  {
LABEL_147:
    if ((v3 & 0x40000000) == 0)
    {
      goto LABEL_194;
    }

    goto LABEL_190;
  }

LABEL_186:
  v96 = *(this + 38);
  if (v96 >= 0x80)
  {
    v97 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v96) + 2;
    v3 = *(this + 66);
  }

  else
  {
    v97 = 3;
  }

  v5 += v97;
  if ((v3 & 0x40000000) != 0)
  {
LABEL_190:
    v98 = *(this + 39);
    if (v98 >= 0x80)
    {
      v99 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v98) + 2;
      v3 = *(this + 66);
    }

    else
    {
      v99 = 3;
    }

    v5 += v99;
  }

LABEL_194:
  if ((v3 & 0x80000000) != 0)
  {
    v5 += 3;
  }

LABEL_196:
  v100 = *(this + 67);
  if (!v100)
  {
    goto LABEL_242;
  }

  if (v100)
  {
    v101 = *(this + 40);
    if ((v101 & 0x80000000) != 0)
    {
      v102 = 12;
    }

    else if (v101 >= 0x80)
    {
      v102 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v101) + 2;
      v100 = *(this + 67);
    }

    else
    {
      v102 = 3;
    }

    v5 += v102;
    if ((v100 & 2) == 0)
    {
LABEL_199:
      if ((v100 & 4) == 0)
      {
        goto LABEL_200;
      }

      goto LABEL_215;
    }
  }

  else if ((v100 & 2) == 0)
  {
    goto LABEL_199;
  }

  v103 = *(this + 41);
  if (v103 >= 0x80)
  {
    v104 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v103) + 2;
    v100 = *(this + 67);
  }

  else
  {
    v104 = 3;
  }

  v5 += v104;
  if ((v100 & 4) == 0)
  {
LABEL_200:
    if ((v100 & 8) == 0)
    {
      goto LABEL_201;
    }

    goto LABEL_219;
  }

LABEL_215:
  v105 = *(this + 46);
  if (v105 >= 0x80)
  {
    v106 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v105) + 2;
    v100 = *(this + 67);
  }

  else
  {
    v106 = 3;
  }

  v5 += v106;
  if ((v100 & 8) == 0)
  {
LABEL_201:
    if ((v100 & 0x10) == 0)
    {
      goto LABEL_202;
    }

    goto LABEL_220;
  }

LABEL_219:
  v5 += wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 21)) + 2;
  v100 = *(this + 67);
  if ((v100 & 0x10) == 0)
  {
LABEL_202:
    if ((v100 & 0x40) == 0)
    {
      goto LABEL_203;
    }

    goto LABEL_229;
  }

LABEL_220:
  v107 = *(this + 22);
  v108 = *(v107 + 23);
  v109 = v108;
  v110 = *(v107 + 8);
  if ((v108 & 0x80u) == 0)
  {
    v111 = *(v107 + 23);
  }

  else
  {
    v111 = v110;
  }

  if (v111 >= 0x80)
  {
    v112 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v111);
    v108 = *(v107 + 23);
    v110 = *(v107 + 8);
    v100 = *(this + 67);
    v109 = *(v107 + 23);
  }

  else
  {
    v112 = 1;
  }

  if (v109 < 0)
  {
    v108 = v110;
  }

  v5 += v112 + v108 + 2;
  if ((v100 & 0x40) == 0)
  {
LABEL_203:
    if ((v100 & 0x80) == 0)
    {
      goto LABEL_242;
    }

    goto LABEL_238;
  }

LABEL_229:
  v113 = *(this + 27);
  v114 = *(v113 + 23);
  v115 = v114;
  v116 = *(v113 + 8);
  if ((v114 & 0x80u) == 0)
  {
    v117 = *(v113 + 23);
  }

  else
  {
    v117 = v116;
  }

  if (v117 >= 0x80)
  {
    v118 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v117);
    v114 = *(v113 + 23);
    v116 = *(v113 + 8);
    v100 = *(this + 67);
    v115 = *(v113 + 23);
  }

  else
  {
    v118 = 1;
  }

  if (v115 < 0)
  {
    v114 = v116;
  }

  v5 += v118 + v114 + 2;
  if ((v100 & 0x80) != 0)
  {
LABEL_238:
    v119 = *(this + 56);
    if (v119 >= 0x80)
    {
      v120 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v119) + 2;
      v100 = *(this + 67);
    }

    else
    {
      v120 = 3;
    }

    v5 += v120;
  }

LABEL_242:
  if ((v100 & 0xFF00) == 0)
  {
    goto LABEL_286;
  }

  if ((v100 & 0x100) != 0)
  {
    v121 = *(this + 57);
    if (v121 >= 0x80)
    {
      v122 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v121) + 2;
      v100 = *(this + 67);
    }

    else
    {
      v122 = 3;
    }

    v5 += v122;
    if ((v100 & 0x200) == 0)
    {
LABEL_245:
      if ((v100 & 0x400) == 0)
      {
        goto LABEL_246;
      }

      goto LABEL_257;
    }
  }

  else if ((v100 & 0x200) == 0)
  {
    goto LABEL_245;
  }

  v123 = *(this + 58);
  if (v123 >= 0x80)
  {
    v124 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v123) + 2;
    v100 = *(this + 67);
  }

  else
  {
    v124 = 3;
  }

  v5 += v124;
  if ((v100 & 0x400) == 0)
  {
LABEL_246:
    if ((v100 & 0x800) == 0)
    {
      goto LABEL_247;
    }

LABEL_261:
    v127 = *(this + 60);
    if (v127 >= 0x80)
    {
      v128 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v127) + 2;
      v100 = *(this + 67);
    }

    else
    {
      v128 = 3;
    }

    v5 += v128;
    if ((v100 & 0x1000) == 0)
    {
      goto LABEL_269;
    }

    goto LABEL_265;
  }

LABEL_257:
  v125 = *(this + 59);
  if (v125 >= 0x80)
  {
    v126 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v125) + 2;
    v100 = *(this + 67);
  }

  else
  {
    v126 = 3;
  }

  v5 += v126;
  if ((v100 & 0x800) != 0)
  {
    goto LABEL_261;
  }

LABEL_247:
  if ((v100 & 0x1000) != 0)
  {
LABEL_265:
    v129 = *(this + 61);
    if (v129 >= 0x80)
    {
      v130 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v129) + 2;
      v100 = *(this + 67);
    }

    else
    {
      v130 = 3;
    }

    v5 += v130;
  }

LABEL_269:
  if ((v100 & 0x2000) != 0)
  {
    v5 += 3;
  }

  if ((v100 & 0x4000) != 0)
  {
    v131 = *(this + 64);
    if (v131 >= 0x80)
    {
      v132 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v131) + 2;
      v100 = *(this + 67);
    }

    else
    {
      v132 = 3;
    }

    v5 += v132;
  }

  if ((v100 & 0x8000) != 0)
  {
    v133 = *(this + 31);
    v134 = *(v133 + 23);
    v135 = v134;
    v136 = *(v133 + 8);
    if ((v134 & 0x80u) == 0)
    {
      v137 = *(v133 + 23);
    }

    else
    {
      v137 = v136;
    }

    if (v137 >= 0x80)
    {
      v138 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v137);
      v134 = *(v133 + 23);
      v136 = *(v133 + 8);
      v135 = *(v133 + 23);
    }

    else
    {
      v138 = 1;
    }

    if (v135 < 0)
    {
      v134 = v136;
    }

    v5 += v138 + v134 + 2;
  }

LABEL_286:
  v139 = *(this + 50);
  v140 = (v5 + 2 * v139);
  if (v139 >= 1)
  {
    for (i = 0; i < v139; ++i)
    {
      v142 = *(*(this + 24) + 8 * i);
      v143 = *(v142 + 23);
      v144 = v143;
      v145 = *(v142 + 8);
      if ((v143 & 0x80u) == 0)
      {
        v146 = *(v142 + 23);
      }

      else
      {
        v146 = v145;
      }

      if (v146 >= 0x80)
      {
        v147 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v146);
        v143 = *(v142 + 23);
        v145 = *(v142 + 8);
        v139 = *(this + 50);
        v144 = *(v142 + 23);
      }

      else
      {
        v147 = 1;
      }

      if (v144 < 0)
      {
        v143 = v145;
      }

      v140 = (v147 + v140 + v143);
    }
  }

  *(this + 65) = v140;
  return v140;
}

std::string *awd::metrics::ATM_CallAttemptEvent::CheckTypeAndMergeFrom(awd::metrics::ATM_CallAttemptEvent *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  if (lpsrc == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v69);
  }

  result = wireless_diagnostics::google::protobuf::RepeatedPtrField<std::string>::MergeFrom((this + 192), lpsrc + 192);
  v5 = *(lpsrc + 66);
  if (!v5)
  {
    goto LABEL_14;
  }

  if (v5)
  {
    v14 = *(lpsrc + 1);
    *(this + 66) |= 1u;
    *(this + 1) = v14;
    v5 = *(lpsrc + 66);
    if ((v5 & 2) == 0)
    {
LABEL_7:
      if ((v5 & 4) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_72;
    }
  }

  else if ((v5 & 2) == 0)
  {
    goto LABEL_7;
  }

  v15 = *(lpsrc + 2);
  *(this + 66) |= 2u;
  v16 = *(this + 2);
  if (v16 == MEMORY[0x1E69E5958])
  {
    operator new();
  }

  result = std::string::operator=(v16, v15);
  v5 = *(lpsrc + 66);
  if ((v5 & 4) == 0)
  {
LABEL_8:
    if ((v5 & 8) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_73;
  }

LABEL_72:
  v17 = *(lpsrc + 28);
  *(this + 66) |= 4u;
  *(this + 28) = v17;
  v5 = *(lpsrc + 66);
  if ((v5 & 8) == 0)
  {
LABEL_9:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_75;
  }

LABEL_73:
  v18 = *(lpsrc + 6);
  if ((v18 + 1) >= 8)
  {
    __assert_rtn("set_type", "CATM.pb.h", 8940, "::awd::metrics::enum_ATM_call_type_IsValid(value)");
  }

  *(this + 66) |= 8u;
  *(this + 6) = v18;
  v5 = *(lpsrc + 66);
  if ((v5 & 0x10) == 0)
  {
LABEL_10:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_11;
    }

LABEL_76:
    v20 = *(lpsrc + 30);
    *(this + 66) |= 0x20u;
    *(this + 30) = v20;
    v5 = *(lpsrc + 66);
    if ((v5 & 0x40) == 0)
    {
LABEL_12:
      if ((v5 & 0x80) == 0)
      {
        goto LABEL_14;
      }

      goto LABEL_13;
    }

    goto LABEL_77;
  }

LABEL_75:
  v19 = *(lpsrc + 29);
  *(this + 66) |= 0x10u;
  *(this + 29) = v19;
  v5 = *(lpsrc + 66);
  if ((v5 & 0x20) != 0)
  {
    goto LABEL_76;
  }

LABEL_11:
  if ((v5 & 0x40) == 0)
  {
    goto LABEL_12;
  }

LABEL_77:
  v21 = *(lpsrc + 31);
  *(this + 66) |= 0x40u;
  *(this + 31) = v21;
  v5 = *(lpsrc + 66);
  if ((v5 & 0x80) != 0)
  {
LABEL_13:
    v6 = *(lpsrc + 72);
    *(this + 66) |= 0x80u;
    *(this + 72) = v6;
    v5 = *(lpsrc + 66);
  }

LABEL_14:
  if ((v5 & 0xFF00) == 0)
  {
    goto LABEL_26;
  }

  if ((v5 & 0x100) != 0)
  {
    v7 = *(lpsrc + 8);
    if ((v7 - 1) >= 6 && v7 != -1)
    {
      __assert_rtn("set_invite_type", "CATM.pb.h", 9051, "::awd::metrics::enum_ATM_invite_call_type_IsValid(value)");
    }

    *(this + 66) |= 0x100u;
    *(this + 8) = v7;
    v5 = *(lpsrc + 66);
  }

  if ((v5 & 0x200) != 0)
  {
    v33 = *(lpsrc + 5);
    *(this + 66) |= 0x200u;
    v34 = *(this + 5);
    if (v34 == MEMORY[0x1E69E5958])
    {
      operator new();
    }

    result = std::string::operator=(v34, v33);
    v5 = *(lpsrc + 66);
    if ((v5 & 0x400) == 0)
    {
LABEL_20:
      if ((v5 & 0x800) == 0)
      {
        goto LABEL_21;
      }

      goto LABEL_99;
    }
  }

  else if ((v5 & 0x400) == 0)
  {
    goto LABEL_20;
  }

  v35 = *(lpsrc + 9);
  *(this + 66) |= 0x400u;
  *(this + 9) = v35;
  v5 = *(lpsrc + 66);
  if ((v5 & 0x800) == 0)
  {
LABEL_21:
    if ((v5 & 0x1000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_102;
  }

LABEL_99:
  v36 = *(lpsrc + 6);
  *(this + 66) |= 0x800u;
  v37 = *(this + 6);
  if (v37 == MEMORY[0x1E69E5958])
  {
    operator new();
  }

  result = std::string::operator=(v37, v36);
  v5 = *(lpsrc + 66);
  if ((v5 & 0x1000) == 0)
  {
LABEL_22:
    if ((v5 & 0x2000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_103;
  }

LABEL_102:
  v38 = *(lpsrc + 73);
  *(this + 66) |= 0x1000u;
  *(this + 73) = v38;
  v5 = *(lpsrc + 66);
  if ((v5 & 0x2000) == 0)
  {
LABEL_23:
    if ((v5 & 0x4000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_106;
  }

LABEL_103:
  v39 = *(lpsrc + 7);
  *(this + 66) |= 0x2000u;
  v40 = *(this + 7);
  if (v40 == MEMORY[0x1E69E5958])
  {
    operator new();
  }

  result = std::string::operator=(v40, v39);
  v5 = *(lpsrc + 66);
  if ((v5 & 0x4000) == 0)
  {
LABEL_24:
    if ((v5 & 0x8000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_25;
  }

LABEL_106:
  v41 = *(lpsrc + 8);
  *(this + 66) |= 0x4000u;
  v42 = *(this + 8);
  if (v42 == MEMORY[0x1E69E5958])
  {
    operator new();
  }

  result = std::string::operator=(v42, v41);
  v5 = *(lpsrc + 66);
  if ((v5 & 0x8000) != 0)
  {
LABEL_25:
    v8 = *(lpsrc + 19);
    *(this + 66) |= 0x8000u;
    *(this + 19) = v8;
    v5 = *(lpsrc + 66);
  }

LABEL_26:
  if ((v5 & 0xFF0000) == 0)
  {
    goto LABEL_36;
  }

  if ((v5 & 0x10000) != 0)
  {
    v22 = *(lpsrc + 24);
    *(this + 66) |= 0x10000u;
    *(this + 24) = v22;
    v5 = *(lpsrc + 66);
    if ((v5 & 0x20000) == 0)
    {
LABEL_29:
      if ((v5 & 0x40000) == 0)
      {
        goto LABEL_30;
      }

      goto LABEL_81;
    }
  }

  else if ((v5 & 0x20000) == 0)
  {
    goto LABEL_29;
  }

  v23 = *(lpsrc + 74);
  *(this + 66) |= 0x20000u;
  *(this + 74) = v23;
  v5 = *(lpsrc + 66);
  if ((v5 & 0x40000) == 0)
  {
LABEL_30:
    if ((v5 & 0x80000) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_84;
  }

LABEL_81:
  v24 = *(lpsrc + 10);
  *(this + 66) |= 0x40000u;
  v25 = *(this + 10);
  if (v25 == MEMORY[0x1E69E5958])
  {
    operator new();
  }

  result = std::string::operator=(v25, v24);
  v5 = *(lpsrc + 66);
  if ((v5 & 0x80000) == 0)
  {
LABEL_31:
    if ((v5 & 0x100000) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_87;
  }

LABEL_84:
  v26 = *(lpsrc + 11);
  *(this + 66) |= 0x80000u;
  v27 = *(this + 11);
  if (v27 == MEMORY[0x1E69E5958])
  {
    operator new();
  }

  result = std::string::operator=(v27, v26);
  v5 = *(lpsrc + 66);
  if ((v5 & 0x100000) == 0)
  {
LABEL_32:
    if ((v5 & 0x200000) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_90;
  }

LABEL_87:
  v28 = *(lpsrc + 13);
  *(this + 66) |= 0x100000u;
  v29 = *(this + 13);
  if (v29 == MEMORY[0x1E69E5958])
  {
    operator new();
  }

  result = std::string::operator=(v29, v28);
  v5 = *(lpsrc + 66);
  if ((v5 & 0x200000) == 0)
  {
LABEL_33:
    if ((v5 & 0x400000) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_93;
  }

LABEL_90:
  v30 = *(lpsrc + 14);
  *(this + 66) |= 0x200000u;
  v31 = *(this + 14);
  if (v31 == MEMORY[0x1E69E5958])
  {
    operator new();
  }

  result = std::string::operator=(v31, v30);
  v5 = *(lpsrc + 66);
  if ((v5 & 0x400000) == 0)
  {
LABEL_34:
    if ((v5 & 0x800000) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_35;
  }

LABEL_93:
  v32 = *(lpsrc + 75);
  *(this + 66) |= 0x400000u;
  *(this + 75) = v32;
  v5 = *(lpsrc + 66);
  if ((v5 & 0x800000) != 0)
  {
LABEL_35:
    v9 = *(lpsrc + 25);
    *(this + 66) |= 0x800000u;
    *(this + 25) = v9;
    v5 = *(lpsrc + 66);
  }

LABEL_36:
  if (!HIBYTE(v5))
  {
    goto LABEL_47;
  }

  if ((v5 & 0x1000000) != 0)
  {
    v10 = *(lpsrc + 30);
    if (v10 >= 6)
    {
      __assert_rtn("set_codec", "CATM.pb.h", 9788, "::awd::metrics::enum_codec_type_IsValid(value)");
    }

    *(this + 66) |= 0x1000000u;
    *(this + 30) = v10;
    v5 = *(lpsrc + 66);
  }

  if ((v5 & 0x2000000) != 0)
  {
    v59 = *(lpsrc + 31);
    *(this + 66) |= 0x2000000u;
    *(this + 31) = v59;
    v5 = *(lpsrc + 66);
    if ((v5 & 0x4000000) == 0)
    {
LABEL_42:
      if ((v5 & 0x8000000) == 0)
      {
        goto LABEL_43;
      }

      goto LABEL_135;
    }
  }

  else if ((v5 & 0x4000000) == 0)
  {
    goto LABEL_42;
  }

  v60 = *(lpsrc + 16);
  *(this + 66) |= 0x4000000u;
  v61 = *(this + 16);
  if (v61 == MEMORY[0x1E69E5958])
  {
    operator new();
  }

  result = std::string::operator=(v61, v60);
  v5 = *(lpsrc + 66);
  if ((v5 & 0x8000000) == 0)
  {
LABEL_43:
    if ((v5 & 0x10000000) == 0)
    {
      goto LABEL_44;
    }

    goto LABEL_138;
  }

LABEL_135:
  v62 = *(lpsrc + 17);
  *(this + 66) |= 0x8000000u;
  v63 = *(this + 17);
  if (v63 == MEMORY[0x1E69E5958])
  {
    operator new();
  }

  result = std::string::operator=(v63, v62);
  v5 = *(lpsrc + 66);
  if ((v5 & 0x10000000) == 0)
  {
LABEL_44:
    if ((v5 & 0x20000000) == 0)
    {
      goto LABEL_45;
    }

    goto LABEL_141;
  }

LABEL_138:
  v64 = *(lpsrc + 18);
  *(this + 66) |= 0x10000000u;
  v65 = *(this + 18);
  if (v65 == MEMORY[0x1E69E5958])
  {
    operator new();
  }

  result = std::string::operator=(v65, v64);
  v5 = *(lpsrc + 66);
  if ((v5 & 0x20000000) == 0)
  {
LABEL_45:
    if ((v5 & 0x40000000) == 0)
    {
      goto LABEL_46;
    }

LABEL_142:
    v67 = *(lpsrc + 39);
    *(this + 66) |= 0x40000000u;
    *(this + 39) = v67;
    if ((*(lpsrc + 66) & 0x80000000) == 0)
    {
      goto LABEL_47;
    }

    goto LABEL_143;
  }

LABEL_141:
  v66 = *(lpsrc + 38);
  *(this + 66) |= 0x20000000u;
  *(this + 38) = v66;
  v5 = *(lpsrc + 66);
  if ((v5 & 0x40000000) != 0)
  {
    goto LABEL_142;
  }

LABEL_46:
  if ((v5 & 0x80000000) == 0)
  {
    goto LABEL_47;
  }

LABEL_143:
  v68 = *(lpsrc + 188);
  *(this + 66) |= 0x80000000;
  *(this + 188) = v68;
LABEL_47:
  v11 = *(lpsrc + 67);
  if (!v11)
  {
    goto LABEL_58;
  }

  if (v11)
  {
    v12 = *(lpsrc + 40);
    if (v12 >= 3)
    {
      __assert_rtn("set_amr_format", "CATM.pb.h", 10109, "::awd::metrics::enum_codec_format_IsValid(value)");
    }

    *(this + 67) |= 1u;
    *(this + 40) = v12;
    v11 = *(lpsrc + 67);
  }

  if ((v11 & 2) != 0)
  {
    v52 = *(lpsrc + 41);
    *(this + 67) |= 2u;
    *(this + 41) = v52;
    v11 = *(lpsrc + 67);
    if ((v11 & 4) == 0)
    {
LABEL_53:
      if ((v11 & 8) == 0)
      {
        goto LABEL_54;
      }

      goto LABEL_123;
    }
  }

  else if ((v11 & 4) == 0)
  {
    goto LABEL_53;
  }

  v53 = *(lpsrc + 46);
  *(this + 67) |= 4u;
  *(this + 46) = v53;
  v11 = *(lpsrc + 67);
  if ((v11 & 8) == 0)
  {
LABEL_54:
    if ((v11 & 0x10) == 0)
    {
      goto LABEL_55;
    }

    goto LABEL_124;
  }

LABEL_123:
  v54 = *(lpsrc + 21);
  *(this + 67) |= 8u;
  *(this + 21) = v54;
  v11 = *(lpsrc + 67);
  if ((v11 & 0x10) == 0)
  {
LABEL_55:
    if ((v11 & 0x40) == 0)
    {
      goto LABEL_56;
    }

    goto LABEL_127;
  }

LABEL_124:
  v55 = *(lpsrc + 22);
  *(this + 67) |= 0x10u;
  v56 = *(this + 22);
  if (v56 == MEMORY[0x1E69E5958])
  {
    operator new();
  }

  result = std::string::operator=(v56, v55);
  v11 = *(lpsrc + 67);
  if ((v11 & 0x40) == 0)
  {
LABEL_56:
    if ((v11 & 0x80) == 0)
    {
      goto LABEL_58;
    }

    goto LABEL_57;
  }

LABEL_127:
  v57 = *(lpsrc + 27);
  *(this + 67) |= 0x40u;
  v58 = *(this + 27);
  if (v58 == MEMORY[0x1E69E5958])
  {
    operator new();
  }

  result = std::string::operator=(v58, v57);
  v11 = *(lpsrc + 67);
  if ((v11 & 0x80) != 0)
  {
LABEL_57:
    v13 = *(lpsrc + 56);
    *(this + 67) |= 0x80u;
    *(this + 56) = v13;
    v11 = *(lpsrc + 67);
  }

LABEL_58:
  if ((v11 & 0xFF00) == 0)
  {
    return result;
  }

  if ((v11 & 0x100) != 0)
  {
    v43 = *(lpsrc + 57);
    *(this + 67) |= 0x100u;
    *(this + 57) = v43;
    v11 = *(lpsrc + 67);
    if ((v11 & 0x200) == 0)
    {
LABEL_61:
      if ((v11 & 0x400) == 0)
      {
        goto LABEL_62;
      }

      goto LABEL_112;
    }
  }

  else if ((v11 & 0x200) == 0)
  {
    goto LABEL_61;
  }

  v44 = *(lpsrc + 58);
  *(this + 67) |= 0x200u;
  *(this + 58) = v44;
  v11 = *(lpsrc + 67);
  if ((v11 & 0x400) == 0)
  {
LABEL_62:
    if ((v11 & 0x800) == 0)
    {
      goto LABEL_63;
    }

    goto LABEL_113;
  }

LABEL_112:
  v45 = *(lpsrc + 59);
  *(this + 67) |= 0x400u;
  *(this + 59) = v45;
  v11 = *(lpsrc + 67);
  if ((v11 & 0x800) == 0)
  {
LABEL_63:
    if ((v11 & 0x1000) == 0)
    {
      goto LABEL_64;
    }

    goto LABEL_114;
  }

LABEL_113:
  v46 = *(lpsrc + 60);
  *(this + 67) |= 0x800u;
  *(this + 60) = v46;
  v11 = *(lpsrc + 67);
  if ((v11 & 0x1000) == 0)
  {
LABEL_64:
    if ((v11 & 0x2000) == 0)
    {
      goto LABEL_65;
    }

    goto LABEL_115;
  }

LABEL_114:
  v47 = *(lpsrc + 61);
  *(this + 67) |= 0x1000u;
  *(this + 61) = v47;
  v11 = *(lpsrc + 67);
  if ((v11 & 0x2000) == 0)
  {
LABEL_65:
    if ((v11 & 0x4000) == 0)
    {
      goto LABEL_66;
    }

LABEL_116:
    v49 = *(lpsrc + 64);
    *(this + 67) |= 0x4000u;
    *(this + 64) = v49;
    if ((*(lpsrc + 67) & 0x8000) == 0)
    {
      return result;
    }

    goto LABEL_117;
  }

LABEL_115:
  v48 = *(lpsrc + 189);
  *(this + 67) |= 0x2000u;
  *(this + 189) = v48;
  v11 = *(lpsrc + 67);
  if ((v11 & 0x4000) != 0)
  {
    goto LABEL_116;
  }

LABEL_66:
  if ((v11 & 0x8000) == 0)
  {
    return result;
  }

LABEL_117:
  v50 = *(lpsrc + 31);
  *(this + 67) |= 0x8000u;
  v51 = *(this + 31);
  if (v51 == MEMORY[0x1E69E5958])
  {
    operator new();
  }

  return std::string::operator=(v51, v50);
}

void sub_1E4CEFCA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

double awd::metrics::ATM_CallConnectEvent::SharedCtor(awd::metrics::ATM_CallConnectEvent *this)
{
  *(this + 58) = 0;
  v1 = MEMORY[0x1E69E5958];
  *(this + 1) = 0;
  *(this + 2) = v1;
  *(this + 28) = 0;
  *(this + 6) = -1;
  *(this + 29) = 0;
  *(this + 31) = 0;
  *(this + 4) = 0xFFFFFFFFLL;
  *(this + 5) = v1;
  *(this + 6) = v1;
  *(this + 7) = v1;
  *(this + 8) = v1;
  result = 0.0;
  *(this + 9) = 0;
  *(this + 10) = v1;
  *(this + 11) = v1;
  *(this + 13) = v1;
  *(this + 14) = v1;
  *(this + 15) = v1;
  *(this + 16) = v1;
  *(this + 17) = 0;
  *(this + 12) = 0;
  *(this + 98) = 0;
  *(this + 18) = v1;
  *(this + 19) = 0;
  *(this + 20) = 0;
  *(this + 21) = 0;
  *(this + 22) = v1;
  *(this + 23) = 0;
  *(this + 48) = 0;
  *(this + 25) = 0;
  *(this + 26) = 0;
  *(this + 27) = 0;
  *(this + 28) = v1;
  *(this + 236) = 0;
  return result;
}

void *awd::metrics::ATM_CallConnectEvent::SharedDtor(void *this)
{
  v1 = this;
  v2 = this[2];
  v3 = MEMORY[0x1E69E5958];
  if (v2 != MEMORY[0x1E69E5958] && v2 != 0)
  {
    if (*(v2 + 23) < 0)
    {
      operator delete(*v2);
    }

    this = MEMORY[0x1E69235B0](v2, 0x1012C40EC159624);
  }

  v5 = v1[5];
  if (v5 != v3 && v5 != 0)
  {
    if (*(v5 + 23) < 0)
    {
      operator delete(*v5);
    }

    this = MEMORY[0x1E69235B0](v5, 0x1012C40EC159624);
  }

  v7 = v1[6];
  if (v7 != v3 && v7 != 0)
  {
    if (*(v7 + 23) < 0)
    {
      operator delete(*v7);
    }

    this = MEMORY[0x1E69235B0](v7, 0x1012C40EC159624);
  }

  v9 = v1[7];
  if (v9 != v3 && v9 != 0)
  {
    if (*(v9 + 23) < 0)
    {
      operator delete(*v9);
    }

    this = MEMORY[0x1E69235B0](v9, 0x1012C40EC159624);
  }

  v11 = v1[8];
  if (v11 != v3 && v11)
  {
    if (*(v11 + 23) < 0)
    {
      operator delete(*v11);
    }

    this = MEMORY[0x1E69235B0](v11, 0x1012C40EC159624);
  }

  v12 = v1[10];
  if (v12 != v3 && v12)
  {
    if (*(v12 + 23) < 0)
    {
      operator delete(*v12);
    }

    this = MEMORY[0x1E69235B0](v12, 0x1012C40EC159624);
  }

  v13 = v1[11];
  if (v13 != v3 && v13)
  {
    if (*(v13 + 23) < 0)
    {
      operator delete(*v13);
    }

    this = MEMORY[0x1E69235B0](v13, 0x1012C40EC159624);
  }

  v14 = v1[13];
  if (v14 != v3 && v14)
  {
    if (*(v14 + 23) < 0)
    {
      operator delete(*v14);
    }

    this = MEMORY[0x1E69235B0](v14, 0x1012C40EC159624);
  }

  v15 = v1[14];
  if (v15 != v3 && v15)
  {
    if (*(v15 + 23) < 0)
    {
      operator delete(*v15);
    }

    this = MEMORY[0x1E69235B0](v15, 0x1012C40EC159624);
  }

  v16 = v1[15];
  if (v16 != v3 && v16)
  {
    if (*(v16 + 23) < 0)
    {
      operator delete(*v16);
    }

    this = MEMORY[0x1E69235B0](v16, 0x1012C40EC159624);
  }

  v17 = v1[16];
  if (v17 != v3 && v17)
  {
    if (*(v17 + 23) < 0)
    {
      operator delete(*v17);
    }

    this = MEMORY[0x1E69235B0](v17, 0x1012C40EC159624);
  }

  v18 = v1[18];
  if (v18 != v3 && v18)
  {
    if (*(v18 + 23) < 0)
    {
      operator delete(*v18);
    }

    this = MEMORY[0x1E69235B0](v18, 0x1012C40EC159624);
  }

  v19 = v1[22];
  if (v19 != v3 && v19)
  {
    if (*(v19 + 23) < 0)
    {
      operator delete(*v19);
    }

    this = MEMORY[0x1E69235B0](v19, 0x1012C40EC159624);
  }

  v20 = v1[28];
  if (v20 != v3 && v20)
  {
    if (*(v20 + 23) < 0)
    {
      operator delete(*v20);
    }

    JUMPOUT(0x1E69235B0);
  }

  return this;
}

void awd::metrics::ATM_CallConnectEvent::~ATM_CallConnectEvent(awd::metrics::ATM_CallConnectEvent *this)
{
  *this = &unk_1F5EC5DB8;
  awd::metrics::ATM_CallConnectEvent::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_1F5EC5DB8;
  awd::metrics::ATM_CallConnectEvent::SharedDtor(this);
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  JUMPOUT(0x1E69235B0);
}

uint64_t awd::metrics::ATM_CallConnectEvent::Clear(uint64_t this)
{
  v1 = *(this + 236);
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

    *(this + 24) = 0xFFFFFFFFLL;
    *(this + 96) = 0;
    v1 = *(this + 236);
  }

  if ((v1 & 0xFF00) != 0)
  {
    *(this + 32) = -1;
    if ((v1 & 0x200) != 0)
    {
      v3 = *(this + 40);
      if (v3 != MEMORY[0x1E69E5958])
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

    *(this + 36) = 0;
    if ((*(this + 237) & 8) != 0)
    {
      v4 = *(this + 48);
      if (v4 != MEMORY[0x1E69E5958])
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

    *(this + 97) = 0;
    if ((*(this + 237) & 0x20) != 0)
    {
      v5 = *(this + 56);
      if (v5 != MEMORY[0x1E69E5958])
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

    if ((*(this + 237) & 0x40) != 0)
    {
      v6 = *(this + 64);
      if (v6 != MEMORY[0x1E69E5958])
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

    *(this + 72) = 0;
    v1 = *(this + 236);
  }

  if ((v1 & 0xFF0000) != 0)
  {
    *(this + 76) = 0;
    if ((v1 & 0x20000) != 0)
    {
      v7 = *(this + 80);
      if (v7 != MEMORY[0x1E69E5958])
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

    if ((*(this + 238) & 4) != 0)
    {
      v8 = *(this + 88);
      if (v8 != MEMORY[0x1E69E5958])
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

    if ((*(this + 238) & 8) != 0)
    {
      v9 = *(this + 104);
      if (v9 != MEMORY[0x1E69E5958])
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

    if ((*(this + 238) & 0x10) != 0)
    {
      v10 = *(this + 112);
      if (v10 != MEMORY[0x1E69E5958])
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

    *(this + 98) = 0;
    *(this + 100) = 0;
    *(this + 136) = 0;
    v1 = *(this + 236);
  }

  if (HIBYTE(v1))
  {
    if ((v1 & 0x1000000) != 0)
    {
      v11 = *(this + 120);
      if (v11 != MEMORY[0x1E69E5958])
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

    if ((*(this + 239) & 2) != 0)
    {
      v12 = *(this + 128);
      if (v12 != MEMORY[0x1E69E5958])
      {
        if (*(v12 + 23) < 0)
        {
          **v12 = 0;
          *(v12 + 8) = 0;
        }

        else
        {
          *v12 = 0;
          *(v12 + 23) = 0;
        }
      }
    }

    if ((*(this + 239) & 4) != 0)
    {
      v13 = *(this + 144);
      if (v13 != MEMORY[0x1E69E5958])
      {
        if (*(v13 + 23) < 0)
        {
          **v13 = 0;
          *(v13 + 8) = 0;
        }

        else
        {
          *v13 = 0;
          *(v13 + 23) = 0;
        }
      }
    }

    *(this + 140) = 0;
    *(this + 152) = 0;
    *(this + 99) = 0;
    *(this + 168) = 0;
  }

  v14 = *(this + 240);
  if (v14)
  {
    *(this + 160) = 0;
    *(this + 172) = 0;
    *(this + 196) = 0;
    if ((v14 & 8) != 0)
    {
      v15 = *(this + 176);
      if (v15 != MEMORY[0x1E69E5958])
      {
        if (*(v15 + 23) < 0)
        {
          **v15 = 0;
          *(v15 + 8) = 0;
        }

        else
        {
          *v15 = 0;
          *(v15 + 23) = 0;
        }
      }
    }

    *(this + 184) = 0;
    *(this + 192) = 0;
    *(this + 200) = 0;
    v14 = *(this + 240);
  }

  if ((v14 & 0xFF00) != 0)
  {
    *(this + 197) = 0;
    *(this + 212) = 0;
    *(this + 204) = 0;
    *(this + 220) = 0;
    if ((v14 & 0x4000) != 0)
    {
      v16 = *(this + 224);
      if (v16 != MEMORY[0x1E69E5958])
      {
        if (*(v16 + 23) < 0)
        {
          **v16 = 0;
          *(v16 + 8) = 0;
        }

        else
        {
          *v16 = 0;
          *(v16 + 23) = 0;
        }
      }
    }
  }

  *(this + 236) = 0;
  return this;
}

uint64_t awd::metrics::ATM_CallConnectEvent::MergePartialFromCodedStream(awd::metrics::ATM_CallConnectEvent *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
{
  v5 = MEMORY[0x1E69E5958];
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
          goto LABEL_105;
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

        v41 = *(this + 59) | 1;
        *(this + 59) = v41;
        if (v13 < v10 && *v13 == 18)
        {
          *(a2 + 1) = v13 + 1;
          goto LABEL_114;
        }

        continue;
      case 2u:
        if (v9 != 2)
        {
          goto LABEL_105;
        }

        v41 = *(this + 59);
LABEL_114:
        *(this + 59) = v41 | 2;
        if (*(this + 2) == v5)
        {
          operator new();
        }

        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
        if (!result)
        {
          return result;
        }

        v63 = *(a2 + 1);
        v34 = *(a2 + 2);
        if (v63 >= v34 || *v63 != 24)
        {
          continue;
        }

        v35 = v63 + 1;
        *(a2 + 1) = v35;
LABEL_120:
        v142 = 0;
        if (v35 >= v34 || (v64 = *v35, (v64 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v142);
          if (!result)
          {
            return result;
          }

          v64 = v142;
          v65 = *(a2 + 1);
          v34 = *(a2 + 2);
        }

        else
        {
          v65 = v35 + 1;
          *(a2 + 1) = v65;
        }

        *(this + 28) = v64 != 0;
        *(this + 59) |= 4u;
        if (v65 >= v34 || *v65 != 32)
        {
          continue;
        }

        v39 = v65 + 1;
        *(a2 + 1) = v39;
LABEL_128:
        v142 = 0;
        if (v39 >= v34 || (v66 = *v39, (v66 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v142);
          if (!result)
          {
            return result;
          }

          v66 = v142;
        }

        else
        {
          *(a2 + 1) = v39 + 1;
        }

        if (v66 + 1 <= 7)
        {
          *(this + 59) |= 8u;
          *(this + 6) = v66;
        }

        v67 = *(a2 + 1);
        v29 = *(a2 + 2);
        if (v67 >= v29 || *v67 != 40)
        {
          continue;
        }

        v30 = v67 + 1;
        *(a2 + 1) = v30;
LABEL_138:
        v142 = 0;
        if (v30 >= v29 || (v68 = *v30, (v68 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v142);
          if (!result)
          {
            return result;
          }

          v68 = v142;
          v69 = *(a2 + 1);
          v29 = *(a2 + 2);
        }

        else
        {
          v69 = v30 + 1;
          *(a2 + 1) = v69;
        }

        *(this + 29) = v68 != 0;
        *(this + 59) |= 0x10u;
        if (v69 >= v29 || *v69 != 48)
        {
          continue;
        }

        v46 = v69 + 1;
        *(a2 + 1) = v46;
LABEL_146:
        v142 = 0;
        if (v46 >= v29 || (v70 = *v46, (v70 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v142);
          if (!result)
          {
            return result;
          }

          v70 = v142;
          v71 = *(a2 + 1);
          v29 = *(a2 + 2);
        }

        else
        {
          v71 = v46 + 1;
          *(a2 + 1) = v71;
        }

        *(this + 30) = v70 != 0;
        *(this + 59) |= 0x20u;
        if (v71 >= v29 || *v71 != 56)
        {
          continue;
        }

        v49 = v71 + 1;
        *(a2 + 1) = v49;
LABEL_154:
        v142 = 0;
        if (v49 >= v29 || (v72 = *v49, (v72 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v142);
          if (!result)
          {
            return result;
          }

          v72 = v142;
          v73 = *(a2 + 1);
          v29 = *(a2 + 2);
        }

        else
        {
          v73 = v49 + 1;
          *(a2 + 1) = v73;
        }

        *(this + 31) = v72 != 0;
        *(this + 59) |= 0x40u;
        if (v73 >= v29 || *v73 != 64)
        {
          continue;
        }

        v40 = v73 + 1;
        *(a2 + 1) = v40;
LABEL_162:
        v142 = 0;
        if (v40 >= v29 || (v74 = *v40, (v74 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v142);
          if (!result)
          {
            return result;
          }

          v74 = v142;
          v75 = *(a2 + 1);
          v29 = *(a2 + 2);
        }

        else
        {
          v75 = v40 + 1;
          *(a2 + 1) = v75;
        }

        *(this + 96) = v74 != 0;
        *(this + 59) |= 0x80u;
        if (v75 >= v29 || *v75 != 72)
        {
          continue;
        }

        v52 = v75 + 1;
        *(a2 + 1) = v52;
LABEL_170:
        v142 = 0;
        if (v52 >= v29 || (v76 = *v52, (v76 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v142);
          if (!result)
          {
            return result;
          }

          v76 = v142;
        }

        else
        {
          *(a2 + 1) = v52 + 1;
        }

        if (v76 - 1 < 6 || v76 == -1)
        {
          *(this + 59) |= 0x100u;
          *(this + 8) = v76;
        }

        v78 = *(a2 + 1);
        if (v78 >= *(a2 + 2) || *v78 != 82)
        {
          continue;
        }

        *(a2 + 1) = v78 + 1;
LABEL_184:
        *(this + 59) |= 0x200u;
        if (*(this + 5) == v5)
        {
          operator new();
        }

        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
        if (!result)
        {
          return result;
        }

        v79 = *(a2 + 1);
        v50 = *(a2 + 2);
        if (v79 >= v50 || *v79 != 88)
        {
          continue;
        }

        v51 = v79 + 1;
        *(a2 + 1) = v51;
LABEL_190:
        if (v51 >= v50 || (v80 = *v51, v80 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 9);
          if (!result)
          {
            return result;
          }

          v81 = *(a2 + 1);
          v50 = *(a2 + 2);
        }

        else
        {
          *(this + 9) = v80;
          v81 = v51 + 1;
          *(a2 + 1) = v81;
        }

        v28 = *(this + 59) | 0x400;
        *(this + 59) = v28;
        if (v81 >= v50 || *v81 != 98)
        {
          continue;
        }

        *(a2 + 1) = v81 + 1;
LABEL_198:
        *(this + 59) = v28 | 0x800;
        if (*(this + 6) == v5)
        {
          operator new();
        }

        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
        if (!result)
        {
          return result;
        }

        v82 = *(a2 + 1);
        v32 = *(a2 + 2);
        if (v82 >= v32 || *v82 != 104)
        {
          continue;
        }

        v33 = v82 + 1;
        *(a2 + 1) = v33;
LABEL_204:
        v142 = 0;
        if (v33 >= v32 || (v83 = *v33, (v83 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v142);
          if (!result)
          {
            return result;
          }

          v83 = v142;
          v84 = *(a2 + 1);
          v32 = *(a2 + 2);
        }

        else
        {
          v84 = v33 + 1;
          *(a2 + 1) = v84;
        }

        *(this + 97) = v83 != 0;
        v48 = *(this + 59) | 0x1000;
        *(this + 59) = v48;
        if (v84 >= v32 || *v84 != 114)
        {
          continue;
        }

        *(a2 + 1) = v84 + 1;
LABEL_212:
        *(this + 59) = v48 | 0x2000;
        if (*(this + 7) == v5)
        {
          operator new();
        }

        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
        if (!result)
        {
          return result;
        }

        v85 = *(a2 + 1);
        if (v85 >= *(a2 + 2) || *v85 != 122)
        {
          continue;
        }

        *(a2 + 1) = v85 + 1;
LABEL_218:
        *(this + 59) |= 0x4000u;
        if (*(this + 8) == v5)
        {
          operator new();
        }

        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
        if (!result)
        {
          return result;
        }

        v86 = *(a2 + 1);
        v37 = *(a2 + 2);
        if (v37 - v86 < 2 || *v86 != 128 || v86[1] != 1)
        {
          continue;
        }

        v38 = (v86 + 2);
        *(a2 + 1) = v38;
LABEL_225:
        if (v38 >= v37 || (v87 = *v38, v87 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 18);
          if (!result)
          {
            return result;
          }

          v88 = *(a2 + 1);
          v37 = *(a2 + 2);
        }

        else
        {
          *(this + 18) = v87;
          v88 = (v38 + 1);
          *(a2 + 1) = v88;
        }

        v25 = *(this + 59) | 0x8000;
        *(this + 59) = v25;
        if (v37 - v88 < 2 || *v88 != 138 || v88[1] != 1)
        {
          continue;
        }

        *(a2 + 1) = v88 + 2;
LABEL_234:
        *(this + 59) = v25 | 0x20000;
        if (*(this + 10) == v5)
        {
          operator new();
        }

        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
        if (!result)
        {
          return result;
        }

        v89 = *(a2 + 1);
        if (*(a2 + 4) - v89 < 2 || *v89 != 146 || v89[1] != 1)
        {
          continue;
        }

        *(a2 + 1) = v89 + 2;
LABEL_241:
        *(this + 59) |= 0x40000u;
        if (*(this + 11) == v5)
        {
          operator new();
        }

        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
        if (!result)
        {
          return result;
        }

        v90 = *(a2 + 1);
        if (*(a2 + 4) - v90 < 2 || *v90 != 154 || v90[1] != 1)
        {
          continue;
        }

        *(a2 + 1) = v90 + 2;
LABEL_248:
        *(this + 59) |= 0x80000u;
        if (*(this + 13) == v5)
        {
          operator new();
        }

        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
        if (!result)
        {
          return result;
        }

        v91 = *(a2 + 1);
        if (*(a2 + 4) - v91 < 2 || *v91 != 162 || v91[1] != 1)
        {
          continue;
        }

        *(a2 + 1) = v91 + 2;
LABEL_255:
        *(this + 59) |= 0x100000u;
        if (*(this + 14) == v5)
        {
          operator new();
        }

        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
        if (!result)
        {
          return result;
        }

        v92 = *(a2 + 1);
        v44 = *(a2 + 2);
        if (v44 - v92 < 2 || *v92 != 168 || v92[1] != 1)
        {
          continue;
        }

        v45 = (v92 + 2);
        *(a2 + 1) = v45;
LABEL_262:
        v142 = 0;
        if (v45 >= v44 || (v93 = *v45, (v93 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v142);
          if (!result)
          {
            return result;
          }

          v93 = v142;
          v94 = *(a2 + 1);
          v44 = *(a2 + 2);
        }

        else
        {
          v94 = (v45 + 1);
          *(a2 + 1) = v94;
        }

        *(this + 98) = v93 != 0;
        *(this + 59) |= 0x200000u;
        if (v44 - v94 < 2 || *v94 != 176 || v94[1] != 1)
        {
          continue;
        }

        v47 = (v94 + 2);
        *(a2 + 1) = v47;
LABEL_271:
        if (v47 >= v44 || (v95 = *v47, v95 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 25);
          if (!result)
          {
            return result;
          }

          v96 = *(a2 + 1);
          v44 = *(a2 + 2);
        }

        else
        {
          *(this + 25) = v95;
          v96 = (v47 + 1);
          *(a2 + 1) = v96;
        }

        *(this + 59) |= 0x400000u;
        if (v44 - v96 < 2 || *v96 != 184 || v96[1] != 1)
        {
          continue;
        }

        v55 = (v96 + 2);
        *(a2 + 1) = v55;
LABEL_280:
        if (v55 >= v44 || (v97 = *v55, v97 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 34);
          if (!result)
          {
            return result;
          }

          v98 = *(a2 + 1);
          v44 = *(a2 + 2);
        }

        else
        {
          *(this + 34) = v97;
          v98 = (v55 + 1);
          *(a2 + 1) = v98;
        }

        v58 = *(this + 59) | 0x800000;
        *(this + 59) = v58;
        if (v44 - v98 < 2 || *v98 != 194 || v98[1] != 1)
        {
          continue;
        }

        *(a2 + 1) = v98 + 2;
LABEL_289:
        *(this + 59) = v58 | 0x1000000;
        if (*(this + 15) == v5)
        {
          operator new();
        }

        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
        if (!result)
        {
          return result;
        }

        v99 = *(a2 + 1);
        if (*(a2 + 4) - v99 < 2 || *v99 != 202 || v99[1] != 1)
        {
          continue;
        }

        *(a2 + 1) = v99 + 2;
LABEL_296:
        *(this + 59) |= 0x2000000u;
        if (*(this + 16) == v5)
        {
          operator new();
        }

        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
        if (!result)
        {
          return result;
        }

        v100 = *(a2 + 1);
        if (*(a2 + 4) - v100 < 2 || *v100 != 210 || v100[1] != 1)
        {
          continue;
        }

        *(a2 + 1) = v100 + 2;
LABEL_303:
        *(this + 59) |= 0x4000000u;
        if (*(this + 18) == v5)
        {
          operator new();
        }

        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
        if (!result)
        {
          return result;
        }

        v101 = *(a2 + 1);
        v22 = *(a2 + 2);
        if (v22 - v101 < 2 || *v101 != 216 || v101[1] != 1)
        {
          continue;
        }

        v62 = (v101 + 2);
        *(a2 + 1) = v62;
LABEL_310:
        if (v62 >= v22 || (v102 = *v62, v102 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 35);
          if (!result)
          {
            return result;
          }

          v103 = *(a2 + 1);
          v22 = *(a2 + 2);
        }

        else
        {
          *(this + 35) = v102;
          v103 = (v62 + 1);
          *(a2 + 1) = v103;
        }

        *(this + 59) |= 0x8000000u;
        if (v22 - v103 < 2 || *v103 != 224 || v103[1] != 1)
        {
          continue;
        }

        v23 = (v103 + 2);
        *(a2 + 1) = v23;
LABEL_319:
        if (v23 >= v22 || (v104 = *v23, v104 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 38);
          if (!result)
          {
            return result;
          }

          v105 = *(a2 + 1);
          v22 = *(a2 + 2);
        }

        else
        {
          *(this + 38) = v104;
          v105 = (v23 + 1);
          *(a2 + 1) = v105;
        }

        *(this + 59) |= 0x10000000u;
        if (v22 - v105 < 2 || *v105 != 232 || v105[1] != 1)
        {
          continue;
        }

        v59 = (v105 + 2);
        *(a2 + 1) = v59;
LABEL_328:
        v142 = 0;
        if (v59 >= v22 || (v106 = *v59, (v106 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v142);
          if (!result)
          {
            return result;
          }

          v106 = v142;
          v107 = *(a2 + 1);
          v22 = *(a2 + 2);
        }

        else
        {
          v107 = (v59 + 1);
          *(a2 + 1) = v107;
        }

        *(this + 99) = v106 != 0;
        *(this + 59) |= 0x20000000u;
        if (v22 - v107 < 2 || *v107 != 240 || v107[1] != 1)
        {
          continue;
        }

        v60 = (v107 + 2);
        *(a2 + 1) = v60;
LABEL_337:
        if (v60 >= v22 || (v108 = *v60, v108 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 39);
          if (!result)
          {
            return result;
          }

          v109 = *(a2 + 1);
          v22 = *(a2 + 2);
        }

        else
        {
          *(this + 39) = v108;
          v109 = (v60 + 1);
          *(a2 + 1) = v109;
        }

        *(this + 59) |= 0x40000000u;
        if (v22 - v109 < 2 || *v109 != 248 || v109[1] != 1)
        {
          continue;
        }

        v53 = (v109 + 2);
        *(a2 + 1) = v53;
LABEL_346:
        if (v53 >= v22 || (v110 = *v53, v110 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 42);
          if (!result)
          {
            return result;
          }

          v111 = *(a2 + 1);
          v22 = *(a2 + 2);
        }

        else
        {
          *(this + 42) = v110;
          v111 = (v53 + 1);
          *(a2 + 1) = v111;
        }

        *(this + 59) |= 0x80000000;
        if (v22 - v111 < 2 || *v111 != 128 || v111[1] != 2)
        {
          continue;
        }

        v42 = (v111 + 2);
        *(a2 + 1) = v42;
LABEL_355:
        if (v42 >= v22 || (v112 = *v42, v112 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 20);
          if (!result)
          {
            return result;
          }

          v113 = *(a2 + 1);
          v22 = *(a2 + 2);
        }

        else
        {
          *(this + 20) = v112;
          v113 = (v42 + 1);
          *(a2 + 1) = v113;
        }

        *(this + 60) |= 1u;
        if (v22 - v113 < 2 || *v113 != 136 || v113[1] != 2)
        {
          continue;
        }

        v54 = (v113 + 2);
        *(a2 + 1) = v54;
LABEL_364:
        if (v54 >= v22 || (v114 = *v54, v114 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 19);
          if (!result)
          {
            return result;
          }

          v115 = *(a2 + 1);
          v22 = *(a2 + 2);
        }

        else
        {
          *(this + 19) = v114;
          v115 = (v54 + 1);
          *(a2 + 1) = v115;
        }

        *(this + 59) |= 0x10000u;
        if (v22 - v115 < 2 || *v115 != 144 || v115[1] != 2)
        {
          continue;
        }

        v27 = (v115 + 2);
        *(a2 + 1) = v27;
LABEL_373:
        v142 = 0;
        if (v27 >= v22 || (v116 = *v27, (v116 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v142);
          if (!result)
          {
            return result;
          }

          v116 = v142;
          v117 = *(a2 + 1);
          v22 = *(a2 + 2);
        }

        else
        {
          v117 = (v27 + 1);
          *(a2 + 1) = v117;
        }

        *(this + 43) = -(v116 & 1) ^ (v116 >> 1);
        *(this + 60) |= 2u;
        if (v22 - v117 < 2 || *v117 != 152 || v117[1] != 2)
        {
          continue;
        }

        v24 = (v117 + 2);
        *(a2 + 1) = v24;
LABEL_382:
        v142 = 0;
        if (v24 >= v22 || (v118 = *v24, (v118 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v142);
          if (!result)
          {
            return result;
          }

          v118 = v142;
          v119 = *(a2 + 1);
          v22 = *(a2 + 2);
        }

        else
        {
          v119 = (v24 + 1);
          *(a2 + 1) = v119;
        }

        *(this + 196) = v118 != 0;
        v19 = *(this + 60) | 4;
        *(this + 60) = v19;
        if (v22 - v119 < 2 || *v119 != 162 || v119[1] != 2)
        {
          continue;
        }

        *(a2 + 1) = v119 + 2;
LABEL_391:
        *(this + 60) = v19 | 8;
        if (*(this + 22) == v5)
        {
          operator new();
        }

        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
        if (!result)
        {
          return result;
        }

        v120 = *(a2 + 1);
        v20 = *(a2 + 2);
        if (v20 - v120 < 2 || *v120 != 168 || v120[1] != 2)
        {
          continue;
        }

        v21 = (v120 + 2);
        *(a2 + 1) = v21;
LABEL_398:
        v142 = 0;
        if (v21 >= v20 || (v121 = *v21, (v121 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v142);
          if (!result)
          {
            return result;
          }

          v121 = v142;
        }

        else
        {
          *(a2 + 1) = v21 + 1;
        }

        if (v121 <= 2)
        {
          *(this + 60) |= 0x10u;
          *(this + 46) = v121;
        }

        v122 = *(a2 + 1);
        v17 = *(a2 + 2);
        if (v17 - v122 < 2 || *v122 != 176 || v122[1] != 2)
        {
          continue;
        }

        v18 = (v122 + 2);
        *(a2 + 1) = v18;
LABEL_409:
        v142 = 0;
        if (v18 >= v17 || (v123 = *v18, (v123 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v142);
          if (!result)
          {
            return result;
          }

          v123 = v142;
        }

        else
        {
          *(a2 + 1) = v18 + 1;
        }

        if (v123 <= 5)
        {
          *(this + 60) |= 0x20u;
          *(this + 47) = v123;
        }

        v124 = *(a2 + 1);
        v15 = *(a2 + 2);
        if (v15 - v124 < 2 || *v124 != 184 || v124[1] != 2)
        {
          continue;
        }

        v61 = (v124 + 2);
        *(a2 + 1) = v61;
LABEL_420:
        if (v61 >= v15 || (v125 = *v61, v125 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 48);
          if (!result)
          {
            return result;
          }

          v126 = *(a2 + 1);
          v15 = *(a2 + 2);
        }

        else
        {
          *(this + 48) = v125;
          v126 = (v61 + 1);
          *(a2 + 1) = v126;
        }

        *(this + 60) |= 0x40u;
        if (v15 - v126 < 2 || *v126 != 192 || v126[1] != 2)
        {
          continue;
        }

        v56 = (v126 + 2);
        *(a2 + 1) = v56;
LABEL_429:
        if (v56 >= v15 || (v127 = *v56, v127 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 50);
          if (!result)
          {
            return result;
          }

          v128 = *(a2 + 1);
          v15 = *(a2 + 2);
        }

        else
        {
          *(this + 50) = v127;
          v128 = (v56 + 1);
          *(a2 + 1) = v128;
        }

        *(this + 60) |= 0x80u;
        if (v15 - v128 < 2 || *v128 != 200 || v128[1] != 2)
        {
          continue;
        }

        v31 = (v128 + 2);
        *(a2 + 1) = v31;
LABEL_438:
        if (v31 >= v15 || (v129 = *v31, v129 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 51);
          if (!result)
          {
            return result;
          }

          v130 = *(a2 + 1);
          v15 = *(a2 + 2);
        }

        else
        {
          *(this + 51) = v129;
          v130 = (v31 + 1);
          *(a2 + 1) = v130;
        }

        *(this + 60) |= 0x100u;
        if (v15 - v130 < 2 || *v130 != 208 || v130[1] != 2)
        {
          continue;
        }

        v43 = (v130 + 2);
        *(a2 + 1) = v43;
LABEL_447:
        if (v43 >= v15 || (v131 = *v43, v131 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 52);
          if (!result)
          {
            return result;
          }

          v132 = *(a2 + 1);
          v15 = *(a2 + 2);
        }

        else
        {
          *(this + 52) = v131;
          v132 = (v43 + 1);
          *(a2 + 1) = v132;
        }

        *(this + 60) |= 0x200u;
        if (v15 - v132 < 2 || *v132 != 216 || v132[1] != 2)
        {
          continue;
        }

        v57 = (v132 + 2);
        *(a2 + 1) = v57;
LABEL_456:
        if (v57 >= v15 || (v133 = *v57, v133 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 53);
          if (!result)
          {
            return result;
          }

          v134 = *(a2 + 1);
          v15 = *(a2 + 2);
        }

        else
        {
          *(this + 53) = v133;
          v134 = (v57 + 1);
          *(a2 + 1) = v134;
        }

        *(this + 60) |= 0x400u;
        if (v15 - v134 < 2 || *v134 != 224 || v134[1] != 2)
        {
          continue;
        }

        v16 = (v134 + 2);
        *(a2 + 1) = v16;
LABEL_465:
        if (v16 >= v15 || (v135 = *v16, v135 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 54);
          if (!result)
          {
            return result;
          }

          v136 = *(a2 + 1);
          v15 = *(a2 + 2);
        }

        else
        {
          *(this + 54) = v135;
          v136 = (v16 + 1);
          *(a2 + 1) = v136;
        }

        *(this + 60) |= 0x800u;
        if (v15 - v136 < 2 || *v136 != 232 || v136[1] != 2)
        {
          continue;
        }

        v26 = (v136 + 2);
        *(a2 + 1) = v26;
LABEL_474:
        v142 = 0;
        if (v26 >= v15 || (v137 = *v26, (v137 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v142);
          if (!result)
          {
            return result;
          }

          v137 = v142;
          v138 = *(a2 + 1);
          v15 = *(a2 + 2);
        }

        else
        {
          v138 = (v26 + 1);
          *(a2 + 1) = v138;
        }

        *(this + 197) = v137 != 0;
        *(this + 60) |= 0x1000u;
        if (v15 - v138 < 2 || *v138 != 240 || v138[1] != 34)
        {
          continue;
        }

        v36 = (v138 + 2);
        *(a2 + 1) = v36;
        goto LABEL_483;
      case 3u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_105;
        }

        v35 = *(a2 + 1);
        v34 = *(a2 + 2);
        goto LABEL_120;
      case 4u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_105;
        }

        v39 = *(a2 + 1);
        v34 = *(a2 + 2);
        goto LABEL_128;
      case 5u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_105;
        }

        v30 = *(a2 + 1);
        v29 = *(a2 + 2);
        goto LABEL_138;
      case 6u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_105;
        }

        v46 = *(a2 + 1);
        v29 = *(a2 + 2);
        goto LABEL_146;
      case 7u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_105;
        }

        v49 = *(a2 + 1);
        v29 = *(a2 + 2);
        goto LABEL_154;
      case 8u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_105;
        }

        v40 = *(a2 + 1);
        v29 = *(a2 + 2);
        goto LABEL_162;
      case 9u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_105;
        }

        v52 = *(a2 + 1);
        v29 = *(a2 + 2);
        goto LABEL_170;
      case 0xAu:
        if (v9 == 2)
        {
          goto LABEL_184;
        }

        goto LABEL_105;
      case 0xBu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_105;
        }

        v51 = *(a2 + 1);
        v50 = *(a2 + 2);
        goto LABEL_190;
      case 0xCu:
        if (v9 != 2)
        {
          goto LABEL_105;
        }

        v28 = *(this + 59);
        goto LABEL_198;
      case 0xDu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_105;
        }

        v33 = *(a2 + 1);
        v32 = *(a2 + 2);
        goto LABEL_204;
      case 0xEu:
        if (v9 != 2)
        {
          goto LABEL_105;
        }

        v48 = *(this + 59);
        goto LABEL_212;
      case 0xFu:
        if (v9 == 2)
        {
          goto LABEL_218;
        }

        goto LABEL_105;
      case 0x10u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_105;
        }

        v38 = *(a2 + 1);
        v37 = *(a2 + 2);
        goto LABEL_225;
      case 0x11u:
        if (v9 != 2)
        {
          goto LABEL_105;
        }

        v25 = *(this + 59);
        goto LABEL_234;
      case 0x12u:
        if (v9 == 2)
        {
          goto LABEL_241;
        }

        goto LABEL_105;
      case 0x13u:
        if (v9 == 2)
        {
          goto LABEL_248;
        }

        goto LABEL_105;
      case 0x14u:
        if (v9 == 2)
        {
          goto LABEL_255;
        }

        goto LABEL_105;
      case 0x15u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_105;
        }

        v45 = *(a2 + 1);
        v44 = *(a2 + 2);
        goto LABEL_262;
      case 0x16u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_105;
        }

        v47 = *(a2 + 1);
        v44 = *(a2 + 2);
        goto LABEL_271;
      case 0x17u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_105;
        }

        v55 = *(a2 + 1);
        v44 = *(a2 + 2);
        goto LABEL_280;
      case 0x18u:
        if (v9 != 2)
        {
          goto LABEL_105;
        }

        v58 = *(this + 59);
        goto LABEL_289;
      case 0x19u:
        if (v9 == 2)
        {
          goto LABEL_296;
        }

        goto LABEL_105;
      case 0x1Au:
        if (v9 == 2)
        {
          goto LABEL_303;
        }

        goto LABEL_105;
      case 0x1Bu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_105;
        }

        v62 = *(a2 + 1);
        v22 = *(a2 + 2);
        goto LABEL_310;
      case 0x1Cu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_105;
        }

        v23 = *(a2 + 1);
        v22 = *(a2 + 2);
        goto LABEL_319;
      case 0x1Du:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_105;
        }

        v59 = *(a2 + 1);
        v22 = *(a2 + 2);
        goto LABEL_328;
      case 0x1Eu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_105;
        }

        v60 = *(a2 + 1);
        v22 = *(a2 + 2);
        goto LABEL_337;
      case 0x1Fu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_105;
        }

        v53 = *(a2 + 1);
        v22 = *(a2 + 2);
        goto LABEL_346;
      case 0x20u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_105;
        }

        v42 = *(a2 + 1);
        v22 = *(a2 + 2);
        goto LABEL_355;
      case 0x21u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_105;
        }

        v54 = *(a2 + 1);
        v22 = *(a2 + 2);
        goto LABEL_364;
      case 0x22u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_105;
        }

        v27 = *(a2 + 1);
        v22 = *(a2 + 2);
        goto LABEL_373;
      case 0x23u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_105;
        }

        v24 = *(a2 + 1);
        v22 = *(a2 + 2);
        goto LABEL_382;
      case 0x24u:
        if (v9 != 2)
        {
          goto LABEL_105;
        }

        v19 = *(this + 60);
        goto LABEL_391;
      case 0x25u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_105;
        }

        v21 = *(a2 + 1);
        v20 = *(a2 + 2);
        goto LABEL_398;
      case 0x26u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_105;
        }

        v18 = *(a2 + 1);
        v17 = *(a2 + 2);
        goto LABEL_409;
      case 0x27u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_105;
        }

        v61 = *(a2 + 1);
        v15 = *(a2 + 2);
        goto LABEL_420;
      case 0x28u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_105;
        }

        v56 = *(a2 + 1);
        v15 = *(a2 + 2);
        goto LABEL_429;
      case 0x29u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_105;
        }

        v31 = *(a2 + 1);
        v15 = *(a2 + 2);
        goto LABEL_438;
      case 0x2Au:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_105;
        }

        v43 = *(a2 + 1);
        v15 = *(a2 + 2);
        goto LABEL_447;
      case 0x2Bu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_105;
        }

        v57 = *(a2 + 1);
        v15 = *(a2 + 2);
        goto LABEL_456;
      case 0x2Cu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_105;
        }

        v16 = *(a2 + 1);
        v15 = *(a2 + 2);
        goto LABEL_465;
      case 0x2Du:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_105;
        }

        v26 = *(a2 + 1);
        v15 = *(a2 + 2);
        goto LABEL_474;
      default:
        if (v8 == 558)
        {
          if ((TagFallback & 7) != 0)
          {
            goto LABEL_105;
          }

          v36 = *(a2 + 1);
          v15 = *(a2 + 2);
LABEL_483:
          if (v36 >= v15 || (v139 = *v36, v139 < 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 55);
            if (!result)
            {
              return result;
            }

            v140 = *(a2 + 1);
            v15 = *(a2 + 2);
          }

          else
          {
            *(this + 55) = v139;
            v140 = (v36 + 1);
            *(a2 + 1) = v140;
          }

          v14 = *(this + 60) | 0x2000;
          *(this + 60) = v14;
          if (v15 - v140 >= 2 && *v140 == 250 && v140[1] == 34)
          {
            *(a2 + 1) = v140 + 2;
            goto LABEL_492;
          }

          continue;
        }

        if (v8 == 559 && v9 == 2)
        {
          v14 = *(this + 60);
LABEL_492:
          *(this + 60) = v14 | 0x4000;
          if (*(this + 28) == v5)
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

LABEL_105:
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

uint64_t awd::metrics::ATM_CallConnectEvent::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 236);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(1, *(this + 8), a2, a4);
    v6 = *(v5 + 236);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_53;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
  v6 = *(v5 + 236);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_54;
  }

LABEL_53:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(3, *(v5 + 28), a2, a4);
  v6 = *(v5 + 236);
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_55;
  }

LABEL_54:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(4, *(v5 + 24), a2, a4);
  v6 = *(v5 + 236);
  if ((v6 & 0x10) == 0)
  {
LABEL_6:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_56;
  }

LABEL_55:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(5, *(v5 + 29), a2, a4);
  v6 = *(v5 + 236);
  if ((v6 & 0x20) == 0)
  {
LABEL_7:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_57;
  }

LABEL_56:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(6, *(v5 + 30), a2, a4);
  v6 = *(v5 + 236);
  if ((v6 & 0x40) == 0)
  {
LABEL_8:
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_58;
  }

LABEL_57:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(7, *(v5 + 31), a2, a4);
  v6 = *(v5 + 236);
  if ((v6 & 0x80) == 0)
  {
LABEL_9:
    if ((v6 & 0x100) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_59;
  }

LABEL_58:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(8, *(v5 + 96), a2, a4);
  v6 = *(v5 + 236);
  if ((v6 & 0x100) == 0)
  {
LABEL_10:
    if ((v6 & 0x200) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_60;
  }

LABEL_59:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(9, *(v5 + 32), a2, a4);
  v6 = *(v5 + 236);
  if ((v6 & 0x200) == 0)
  {
LABEL_11:
    if ((v6 & 0x400) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_61;
  }

LABEL_60:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
  v6 = *(v5 + 236);
  if ((v6 & 0x400) == 0)
  {
LABEL_12:
    if ((v6 & 0x800) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_62;
  }

LABEL_61:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xB, *(v5 + 36), a2, a4);
  v6 = *(v5 + 236);
  if ((v6 & 0x800) == 0)
  {
LABEL_13:
    if ((v6 & 0x1000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_63;
  }

LABEL_62:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
  v6 = *(v5 + 236);
  if ((v6 & 0x1000) == 0)
  {
LABEL_14:
    if ((v6 & 0x2000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_64;
  }

LABEL_63:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(0xD, *(v5 + 97), a2, a4);
  v6 = *(v5 + 236);
  if ((v6 & 0x2000) == 0)
  {
LABEL_15:
    if ((v6 & 0x4000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_65;
  }

LABEL_64:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
  v6 = *(v5 + 236);
  if ((v6 & 0x4000) == 0)
  {
LABEL_16:
    if ((v6 & 0x8000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_66;
  }

LABEL_65:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
  v6 = *(v5 + 236);
  if ((v6 & 0x8000) == 0)
  {
LABEL_17:
    if ((v6 & 0x20000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_67;
  }

LABEL_66:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x10, *(v5 + 72), a2, a4);
  v6 = *(v5 + 236);
  if ((v6 & 0x20000) == 0)
  {
LABEL_18:
    if ((v6 & 0x40000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_68;
  }

LABEL_67:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
  v6 = *(v5 + 236);
  if ((v6 & 0x40000) == 0)
  {
LABEL_19:
    if ((v6 & 0x80000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_69;
  }

LABEL_68:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
  v6 = *(v5 + 236);
  if ((v6 & 0x80000) == 0)
  {
LABEL_20:
    if ((v6 & 0x100000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_70;
  }

LABEL_69:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
  v6 = *(v5 + 236);
  if ((v6 & 0x100000) == 0)
  {
LABEL_21:
    if ((v6 & 0x200000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_71;
  }

LABEL_70:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
  v6 = *(v5 + 236);
  if ((v6 & 0x200000) == 0)
  {
LABEL_22:
    if ((v6 & 0x400000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_72;
  }

LABEL_71:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(0x15, *(v5 + 98), a2, a4);
  v6 = *(v5 + 236);
  if ((v6 & 0x400000) == 0)
  {
LABEL_23:
    if ((v6 & 0x800000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_73;
  }

LABEL_72:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x16, *(v5 + 100), a2, a4);
  v6 = *(v5 + 236);
  if ((v6 & 0x800000) == 0)
  {
LABEL_24:
    if ((v6 & 0x1000000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_74;
  }

LABEL_73:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x17, *(v5 + 136), a2, a4);
  v6 = *(v5 + 236);
  if ((v6 & 0x1000000) == 0)
  {
LABEL_25:
    if ((v6 & 0x2000000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_75;
  }

LABEL_74:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
  v6 = *(v5 + 236);
  if ((v6 & 0x2000000) == 0)
  {
LABEL_26:
    if ((v6 & 0x4000000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_76;
  }

LABEL_75:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
  v6 = *(v5 + 236);
  if ((v6 & 0x4000000) == 0)
  {
LABEL_27:
    if ((v6 & 0x8000000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_77;
  }

LABEL_76:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
  v6 = *(v5 + 236);
  if ((v6 & 0x8000000) == 0)
  {
LABEL_28:
    if ((v6 & 0x10000000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_78;
  }

LABEL_77:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x1B, *(v5 + 140), a2, a4);
  v6 = *(v5 + 236);
  if ((v6 & 0x10000000) == 0)
  {
LABEL_29:
    if ((v6 & 0x20000000) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_79;
  }

LABEL_78:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x1C, *(v5 + 152), a2, a4);
  v6 = *(v5 + 236);
  if ((v6 & 0x20000000) == 0)
  {
LABEL_30:
    if ((v6 & 0x40000000) == 0)
    {
      goto LABEL_31;
    }

LABEL_80:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x1E, *(v5 + 156), a2, a4);
    if ((*(v5 + 236) & 0x80000000) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_81;
  }

LABEL_79:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(0x1D, *(v5 + 99), a2, a4);
  v6 = *(v5 + 236);
  if ((v6 & 0x40000000) != 0)
  {
    goto LABEL_80;
  }

LABEL_31:
  if ((v6 & 0x80000000) == 0)
  {
    goto LABEL_32;
  }

LABEL_81:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x1F, *(v5 + 168), a2, a4);
LABEL_32:
  if (*(v5 + 240))
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(0x20, *(v5 + 160), a2, a4);
  }

  if (*(v5 + 238))
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x21, *(v5 + 76), a2, a4);
  }

  v7 = *(v5 + 240);
  if ((v7 & 2) != 0)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteSInt32(0x22, *(v5 + 172), a2, a4);
    v7 = *(v5 + 240);
    if ((v7 & 4) == 0)
    {
LABEL_38:
      if ((v7 & 8) == 0)
      {
        goto LABEL_39;
      }

      goto LABEL_84;
    }
  }

  else if ((v7 & 4) == 0)
  {
    goto LABEL_38;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(0x23, *(v5 + 196), a2, a4);
  v7 = *(v5 + 240);
  if ((v7 & 8) == 0)
  {
LABEL_39:
    if ((v7 & 0x10) == 0)
    {
      goto LABEL_40;
    }

    goto LABEL_85;
  }

LABEL_84:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
  v7 = *(v5 + 240);
  if ((v7 & 0x10) == 0)
  {
LABEL_40:
    if ((v7 & 0x20) == 0)
    {
      goto LABEL_41;
    }

    goto LABEL_86;
  }

LABEL_85:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(0x25, *(v5 + 184), a2, a4);
  v7 = *(v5 + 240);
  if ((v7 & 0x20) == 0)
  {
LABEL_41:
    if ((v7 & 0x40) == 0)
    {
      goto LABEL_42;
    }

    goto LABEL_87;
  }

LABEL_86:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(0x26, *(v5 + 188), a2, a4);
  v7 = *(v5 + 240);
  if ((v7 & 0x40) == 0)
  {
LABEL_42:
    if ((v7 & 0x80) == 0)
    {
      goto LABEL_43;
    }

    goto LABEL_88;
  }

LABEL_87:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x27, *(v5 + 192), a2, a4);
  v7 = *(v5 + 240);
  if ((v7 & 0x80) == 0)
  {
LABEL_43:
    if ((v7 & 0x100) == 0)
    {
      goto LABEL_44;
    }

    goto LABEL_89;
  }

LABEL_88:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x28, *(v5 + 200), a2, a4);
  v7 = *(v5 + 240);
  if ((v7 & 0x100) == 0)
  {
LABEL_44:
    if ((v7 & 0x200) == 0)
    {
      goto LABEL_45;
    }

    goto LABEL_90;
  }

LABEL_89:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x29, *(v5 + 204), a2, a4);
  v7 = *(v5 + 240);
  if ((v7 & 0x200) == 0)
  {
LABEL_45:
    if ((v7 & 0x400) == 0)
    {
      goto LABEL_46;
    }

    goto LABEL_91;
  }

LABEL_90:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x2A, *(v5 + 208), a2, a4);
  v7 = *(v5 + 240);
  if ((v7 & 0x400) == 0)
  {
LABEL_46:
    if ((v7 & 0x800) == 0)
    {
      goto LABEL_47;
    }

    goto LABEL_92;
  }

LABEL_91:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x2B, *(v5 + 212), a2, a4);
  v7 = *(v5 + 240);
  if ((v7 & 0x800) == 0)
  {
LABEL_47:
    if ((v7 & 0x1000) == 0)
    {
      goto LABEL_48;
    }

    goto LABEL_93;
  }

LABEL_92:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x2C, *(v5 + 216), a2, a4);
  v7 = *(v5 + 240);
  if ((v7 & 0x1000) == 0)
  {
LABEL_48:
    if ((v7 & 0x2000) == 0)
    {
      goto LABEL_49;
    }

LABEL_94:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x22E, *(v5 + 220), a2, a4);
    if ((*(v5 + 240) & 0x4000) == 0)
    {
      return this;
    }

    goto LABEL_95;
  }

LABEL_93:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(0x2D, *(v5 + 197), a2, a4);
  v7 = *(v5 + 240);
  if ((v7 & 0x2000) != 0)
  {
    goto LABEL_94;
  }

LABEL_49:
  if ((v7 & 0x4000) == 0)
  {
    return this;
  }

LABEL_95:

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
}

uint64_t awd::metrics::ATM_CallConnectEvent::ByteSize(awd::metrics::ATM_CallConnectEvent *this, unint64_t a2)
{
  v3 = *(this + 59);
  if (!v3)
  {
    v5 = 0;
    goto LABEL_24;
  }

  if ((v3 & 1) == 0)
  {
    v4 = 0;
    if ((v3 & 2) == 0)
    {
      goto LABEL_16;
    }

LABEL_7:
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
      v3 = *(this + 59);
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
    goto LABEL_16;
  }

  v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 1)) + 1;
  v3 = *(this + 59);
  if ((v3 & 2) != 0)
  {
    goto LABEL_7;
  }

LABEL_16:
  v12 = ((v3 >> 1) & 2) + v4;
  if ((v3 & 8) != 0)
  {
    v13 = *(this + 6);
    if ((v13 & 0x80000000) != 0)
    {
      v14 = 11;
    }

    else if (v13 >= 0x80)
    {
      v14 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v13) + 1;
      v3 = *(this + 59);
    }

    else
    {
      v14 = 2;
    }

    v12 += v14;
  }

  v15.i64[0] = 0x200000002;
  v15.i64[1] = 0x200000002;
  v5 = (vaddvq_s32(vandq_s8(vshlq_u32(vdupq_n_s32(v3), xmmword_1E51682E0), v15)) + v12);
LABEL_24:
  if ((v3 & 0xFF00) == 0)
  {
    goto LABEL_84;
  }

  if ((v3 & 0x100) != 0)
  {
    v16 = *(this + 8);
    if ((v16 & 0x80000000) != 0)
    {
      v17 = 11;
    }

    else if (v16 >= 0x80)
    {
      v17 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v16) + 1;
      v3 = *(this + 59);
    }

    else
    {
      v17 = 2;
    }

    LODWORD(v5) = v17 + v5;
    if ((v3 & 0x200) == 0)
    {
LABEL_27:
      if ((v3 & 0x400) == 0)
      {
        goto LABEL_28;
      }

LABEL_45:
      v24 = *(this + 9);
      if (v24 >= 0x80)
      {
        v25 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v24) + 1;
        v3 = *(this + 59);
      }

      else
      {
        v25 = 2;
      }

      LODWORD(v5) = v25 + v5;
      if ((v3 & 0x800) == 0)
      {
        goto LABEL_58;
      }

      goto LABEL_49;
    }
  }

  else if ((v3 & 0x200) == 0)
  {
    goto LABEL_27;
  }

  v18 = *(this + 5);
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
    v3 = *(this + 59);
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

  LODWORD(v5) = v5 + v23 + v19 + 1;
  if ((v3 & 0x400) != 0)
  {
    goto LABEL_45;
  }

LABEL_28:
  if ((v3 & 0x800) == 0)
  {
    goto LABEL_58;
  }

LABEL_49:
  v26 = *(this + 6);
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
    v31 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v30);
    v27 = *(v26 + 23);
    v29 = *(v26 + 8);
    v3 = *(this + 59);
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

  LODWORD(v5) = v5 + v31 + v27 + 1;
LABEL_58:
  v5 = ((v3 >> 11) & 2) + v5;
  if ((v3 & 0x2000) != 0)
  {
    v32 = *(this + 7);
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
      v3 = *(this + 59);
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

    v5 = (v5 + v37 + v33 + 1);
    if ((v3 & 0x4000) == 0)
    {
LABEL_60:
      if ((v3 & 0x8000) == 0)
      {
        goto LABEL_84;
      }

      goto LABEL_80;
    }
  }

  else if ((v3 & 0x4000) == 0)
  {
    goto LABEL_60;
  }

  v38 = *(this + 8);
  v39 = *(v38 + 23);
  v40 = v39;
  v41 = *(v38 + 8);
  if ((v39 & 0x80u) == 0)
  {
    v42 = *(v38 + 23);
  }

  else
  {
    v42 = v41;
  }

  if (v42 >= 0x80)
  {
    v43 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v42);
    v39 = *(v38 + 23);
    v41 = *(v38 + 8);
    v3 = *(this + 59);
    v40 = *(v38 + 23);
  }

  else
  {
    v43 = 1;
  }

  if (v40 < 0)
  {
    v39 = v41;
  }

  v5 = (v5 + v43 + v39 + 1);
  if ((v3 & 0x8000) != 0)
  {
LABEL_80:
    v44 = *(this + 18);
    if (v44 >= 0x80)
    {
      v45 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v44) + 2;
      v3 = *(this + 59);
    }

    else
    {
      v45 = 3;
    }

    v5 = (v45 + v5);
  }

LABEL_84:
  if ((v3 & 0xFF0000) == 0)
  {
    goto LABEL_144;
  }

  if ((v3 & 0x10000) != 0)
  {
    v46 = *(this + 19);
    if (v46 >= 0x80)
    {
      v47 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v46) + 2;
      v3 = *(this + 59);
    }

    else
    {
      v47 = 3;
    }

    LODWORD(v5) = v47 + v5;
    if ((v3 & 0x20000) == 0)
    {
LABEL_87:
      if ((v3 & 0x40000) == 0)
      {
        goto LABEL_88;
      }

      goto LABEL_104;
    }
  }

  else if ((v3 & 0x20000) == 0)
  {
    goto LABEL_87;
  }

  v48 = *(this + 10);
  v49 = *(v48 + 23);
  v50 = v49;
  v51 = *(v48 + 8);
  if ((v49 & 0x80u) == 0)
  {
    v52 = *(v48 + 23);
  }

  else
  {
    v52 = v51;
  }

  if (v52 >= 0x80)
  {
    v53 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v52);
    v49 = *(v48 + 23);
    v51 = *(v48 + 8);
    v3 = *(this + 59);
    v50 = *(v48 + 23);
  }

  else
  {
    v53 = 1;
  }

  if (v50 < 0)
  {
    v49 = v51;
  }

  LODWORD(v5) = v5 + v53 + v49 + 2;
  if ((v3 & 0x40000) == 0)
  {
LABEL_88:
    if ((v3 & 0x80000) == 0)
    {
      goto LABEL_89;
    }

LABEL_113:
    v60 = *(this + 13);
    v61 = *(v60 + 23);
    v62 = v61;
    v63 = *(v60 + 8);
    if ((v61 & 0x80u) == 0)
    {
      v64 = *(v60 + 23);
    }

    else
    {
      v64 = v63;
    }

    if (v64 >= 0x80)
    {
      v65 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v64);
      v61 = *(v60 + 23);
      v63 = *(v60 + 8);
      v3 = *(this + 59);
      v62 = *(v60 + 23);
    }

    else
    {
      v65 = 1;
    }

    if (v62 < 0)
    {
      v61 = v63;
    }

    LODWORD(v5) = v5 + v65 + v61 + 2;
    if ((v3 & 0x100000) == 0)
    {
      goto LABEL_131;
    }

    goto LABEL_122;
  }

LABEL_104:
  v54 = *(this + 11);
  v55 = *(v54 + 23);
  v56 = v55;
  v57 = *(v54 + 8);
  if ((v55 & 0x80u) == 0)
  {
    v58 = *(v54 + 23);
  }

  else
  {
    v58 = v57;
  }

  if (v58 >= 0x80)
  {
    v59 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v58);
    v55 = *(v54 + 23);
    v57 = *(v54 + 8);
    v3 = *(this + 59);
    v56 = *(v54 + 23);
  }

  else
  {
    v59 = 1;
  }

  if (v56 < 0)
  {
    v55 = v57;
  }

  LODWORD(v5) = v5 + v59 + v55 + 2;
  if ((v3 & 0x80000) != 0)
  {
    goto LABEL_113;
  }

LABEL_89:
  if ((v3 & 0x100000) != 0)
  {
LABEL_122:
    v66 = *(this + 14);
    v67 = *(v66 + 23);
    v68 = v67;
    v69 = *(v66 + 8);
    if ((v67 & 0x80u) == 0)
    {
      v70 = *(v66 + 23);
    }

    else
    {
      v70 = v69;
    }

    if (v70 >= 0x80)
    {
      v71 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v70);
      v67 = *(v66 + 23);
      v69 = *(v66 + 8);
      v3 = *(this + 59);
      v68 = *(v66 + 23);
    }

    else
    {
      v71 = 1;
    }

    if (v68 < 0)
    {
      v67 = v69;
    }

    LODWORD(v5) = v5 + v71 + v67 + 2;
  }

LABEL_131:
  if ((v3 & 0x200000) != 0)
  {
    v5 = (v5 + 3);
  }

  else
  {
    v5 = v5;
  }

  if ((v3 & 0x400000) != 0)
  {
    v72 = *(this + 25);
    if (v72 >= 0x80)
    {
      v73 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v72) + 2;
      v3 = *(this + 59);
    }

    else
    {
      v73 = 3;
    }

    v5 = (v73 + v5);
  }

  if ((v3 & 0x800000) != 0)
  {
    v74 = *(this + 34);
    if (v74 >= 0x80)
    {
      v75 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v74) + 2;
      v3 = *(this + 59);
    }

    else
    {
      v75 = 3;
    }

    v5 = (v75 + v5);
  }

LABEL_144:
  if (!HIBYTE(v3))
  {
    goto LABEL_199;
  }

  if ((v3 & 0x1000000) != 0)
  {
    v76 = *(this + 15);
    v77 = *(v76 + 23);
    v78 = v77;
    v79 = *(v76 + 8);
    if ((v77 & 0x80u) == 0)
    {
      v80 = *(v76 + 23);
    }

    else
    {
      v80 = v79;
    }

    if (v80 >= 0x80)
    {
      v81 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v80);
      v77 = *(v76 + 23);
      v79 = *(v76 + 8);
      v3 = *(this + 59);
      v78 = *(v76 + 23);
    }

    else
    {
      v81 = 1;
    }

    if (v78 < 0)
    {
      v77 = v79;
    }

    LODWORD(v5) = v5 + v81 + v77 + 2;
    if ((v3 & 0x2000000) == 0)
    {
LABEL_147:
      if ((v3 & 0x4000000) == 0)
      {
        goto LABEL_148;
      }

      goto LABEL_169;
    }
  }

  else if ((v3 & 0x2000000) == 0)
  {
    goto LABEL_147;
  }

  v82 = *(this + 16);
  v83 = *(v82 + 23);
  v84 = v83;
  v85 = *(v82 + 8);
  if ((v83 & 0x80u) == 0)
  {
    v86 = *(v82 + 23);
  }

  else
  {
    v86 = v85;
  }

  if (v86 >= 0x80)
  {
    v87 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v86);
    v83 = *(v82 + 23);
    v85 = *(v82 + 8);
    v3 = *(this + 59);
    v84 = *(v82 + 23);
  }

  else
  {
    v87 = 1;
  }

  if (v84 < 0)
  {
    v83 = v85;
  }

  LODWORD(v5) = v5 + v87 + v83 + 2;
  if ((v3 & 0x4000000) == 0)
  {
LABEL_148:
    if ((v3 & 0x8000000) == 0)
    {
      goto LABEL_149;
    }

LABEL_178:
    v94 = *(this + 35);
    if (v94 >= 0x80)
    {
      v95 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v94) + 2;
      v3 = *(this + 59);
    }

    else
    {
      v95 = 3;
    }

    LODWORD(v5) = v95 + v5;
    if ((v3 & 0x10000000) == 0)
    {
      goto LABEL_186;
    }

    goto LABEL_182;
  }

LABEL_169:
  v88 = *(this + 18);
  v89 = *(v88 + 23);
  v90 = v89;
  v91 = *(v88 + 8);
  if ((v89 & 0x80u) == 0)
  {
    v92 = *(v88 + 23);
  }

  else
  {
    v92 = v91;
  }

  if (v92 >= 0x80)
  {
    v93 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v92);
    v89 = *(v88 + 23);
    v91 = *(v88 + 8);
    v3 = *(this + 59);
    v90 = *(v88 + 23);
  }

  else
  {
    v93 = 1;
  }

  if (v90 < 0)
  {
    v89 = v91;
  }

  LODWORD(v5) = v5 + v93 + v89 + 2;
  if ((v3 & 0x8000000) != 0)
  {
    goto LABEL_178;
  }

LABEL_149:
  if ((v3 & 0x10000000) != 0)
  {
LABEL_182:
    v96 = *(this + 38);
    if (v96 >= 0x80)
    {
      v97 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v96) + 2;
      v3 = *(this + 59);
    }

    else
    {
      v97 = 3;
    }

    LODWORD(v5) = v97 + v5;
  }

LABEL_186:
  if ((v3 & 0x20000000) != 0)
  {
    v5 = (v5 + 3);
  }

  else
  {
    v5 = v5;
  }

  if ((v3 & 0x40000000) != 0)
  {
    v98 = *(this + 39);
    if (v98 >= 0x80)
    {
      v99 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v98) + 2;
      v3 = *(this + 59);
    }

    else
    {
      v99 = 3;
    }

    v5 = (v99 + v5);
  }

  if ((v3 & 0x80000000) != 0)
  {
    v100 = *(this + 42);
    if (v100 >= 0x80)
    {
      v101 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v100) + 2;
    }

    else
    {
      v101 = 3;
    }

    v5 = (v101 + v5);
  }

LABEL_199:
  v102 = *(this + 60);
  if (!v102)
  {
    goto LABEL_245;
  }

  if (v102)
  {
    LODWORD(v5) = v5 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 20)) + 2;
    v102 = *(this + 60);
  }

  if ((v102 & 2) != 0)
  {
    v103 = ((2 * *(this + 43)) ^ (*(this + 43) >> 31));
    if (v103 >= 0x80)
    {
      v104 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v103) + 2;
      v102 = *(this + 60);
    }

    else
    {
      v104 = 3;
    }

    LODWORD(v5) = v104 + v5;
  }

  if ((v102 & 4) != 0)
  {
    v5 = (v5 + 3);
  }

  else
  {
    v5 = v5;
  }

  if ((v102 & 8) != 0)
  {
    v105 = *(this + 22);
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
      v102 = *(this + 60);
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

    v5 = (v5 + v110 + v106 + 2);
    if ((v102 & 0x10) == 0)
    {
LABEL_212:
      if ((v102 & 0x20) == 0)
      {
        goto LABEL_213;
      }

      goto LABEL_231;
    }
  }

  else if ((v102 & 0x10) == 0)
  {
    goto LABEL_212;
  }

  v111 = *(this + 46);
  if ((v111 & 0x80000000) != 0)
  {
    v112 = 12;
  }

  else if (v111 >= 0x80)
  {
    v112 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v111) + 2;
    v102 = *(this + 60);
  }

  else
  {
    v112 = 3;
  }

  v5 = (v112 + v5);
  if ((v102 & 0x20) == 0)
  {
LABEL_213:
    if ((v102 & 0x40) == 0)
    {
      goto LABEL_214;
    }

    goto LABEL_237;
  }

LABEL_231:
  v113 = *(this + 47);
  if ((v113 & 0x80000000) != 0)
  {
    v114 = 12;
  }

  else if (v113 >= 0x80)
  {
    v114 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v113) + 2;
    v102 = *(this + 60);
  }

  else
  {
    v114 = 3;
  }

  v5 = (v114 + v5);
  if ((v102 & 0x40) == 0)
  {
LABEL_214:
    if ((v102 & 0x80) == 0)
    {
      goto LABEL_245;
    }

    goto LABEL_241;
  }

LABEL_237:
  v115 = *(this + 48);
  if (v115 >= 0x80)
  {
    v116 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v115) + 2;
    v102 = *(this + 60);
  }

  else
  {
    v116 = 3;
  }

  v5 = (v116 + v5);
  if ((v102 & 0x80) != 0)
  {
LABEL_241:
    v117 = *(this + 50);
    if (v117 >= 0x80)
    {
      v118 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v117) + 2;
      v102 = *(this + 60);
    }

    else
    {
      v118 = 3;
    }

    v5 = (v118 + v5);
  }

LABEL_245:
  if ((v102 & 0xFF00) == 0)
  {
    goto LABEL_285;
  }

  if ((v102 & 0x100) != 0)
  {
    v119 = *(this + 51);
    if (v119 >= 0x80)
    {
      v120 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v119) + 2;
      v102 = *(this + 60);
    }

    else
    {
      v120 = 3;
    }

    LODWORD(v5) = v120 + v5;
    if ((v102 & 0x200) == 0)
    {
LABEL_248:
      if ((v102 & 0x400) == 0)
      {
        goto LABEL_249;
      }

LABEL_259:
      v123 = *(this + 53);
      if (v123 >= 0x80)
      {
        v124 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v123) + 2;
        v102 = *(this + 60);
      }

      else
      {
        v124 = 3;
      }

      LODWORD(v5) = v124 + v5;
      if ((v102 & 0x800) == 0)
      {
        goto LABEL_267;
      }

      goto LABEL_263;
    }
  }

  else if ((v102 & 0x200) == 0)
  {
    goto LABEL_248;
  }

  v121 = *(this + 52);
  if (v121 >= 0x80)
  {
    v122 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v121) + 2;
    v102 = *(this + 60);
  }

  else
  {
    v122 = 3;
  }

  LODWORD(v5) = v122 + v5;
  if ((v102 & 0x400) != 0)
  {
    goto LABEL_259;
  }

LABEL_249:
  if ((v102 & 0x800) != 0)
  {
LABEL_263:
    v125 = *(this + 54);
    if (v125 >= 0x80)
    {
      v126 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v125) + 2;
      v102 = *(this + 60);
    }

    else
    {
      v126 = 3;
    }

    LODWORD(v5) = v126 + v5;
  }

LABEL_267:
  if ((v102 & 0x1000) != 0)
  {
    v5 = (v5 + 3);
  }

  else
  {
    v5 = v5;
  }

  if ((v102 & 0x2000) != 0)
  {
    v127 = *(this + 55);
    if (v127 >= 0x80)
    {
      v128 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v127) + 2;
      v102 = *(this + 60);
    }

    else
    {
      v128 = 3;
    }

    v5 = (v128 + v5);
  }

  if ((v102 & 0x4000) != 0)
  {
    v129 = *(this + 28);
    v130 = *(v129 + 23);
    v131 = v130;
    v132 = *(v129 + 8);
    if ((v130 & 0x80u) == 0)
    {
      v133 = *(v129 + 23);
    }

    else
    {
      v133 = v132;
    }

    if (v133 >= 0x80)
    {
      v134 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v133);
      v130 = *(v129 + 23);
      v132 = *(v129 + 8);
      v131 = *(v129 + 23);
    }

    else
    {
      v134 = 1;
    }

    if (v131 < 0)
    {
      v130 = v132;
    }

    v5 = (v5 + v134 + v130 + 2);
  }

LABEL_285:
  *(this + 58) = v5;
  return v5;
}