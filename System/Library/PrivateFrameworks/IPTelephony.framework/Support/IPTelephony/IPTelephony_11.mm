void awd::metrics::ATM_CallEndEvent::CheckTypeAndMergeFrom(const void **this, const void **lpsrc)
{
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  if (lpsrc == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v170);
  }

  wireless_diagnostics::google::protobuf::RepeatedPtrField<std::string>::MergeFrom((this + 33), (lpsrc + 33));
  wireless_diagnostics::google::protobuf::RepeatedPtrField<std::string>::MergeFrom((this + 53), (lpsrc + 53));
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 64));
  LODWORD(v4) = *(lpsrc + 130);
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
        wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v170);
      }

      v6 = *(lpsrc[64] + v5);
      v7 = *(this + 130);
      v8 = *(this + 131);
      if (v7 >= v8)
      {
        if (v8 == *(this + 132))
        {
          wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 64));
          v8 = *(this + 131);
        }

        *(this + 131) = v8 + 1;
        operator new();
      }

      v9 = this[64];
      *(this + 130) = v7 + 1;
      awd::metrics::ATM_CallEndEvent_myreason::MergeFrom(v9[v7], v6);
      ++v5;
      v4 = *(lpsrc + 130);
    }

    while (v5 < v4);
  }

  v10 = *(lpsrc + 136);
  if (v10)
  {
    wireless_diagnostics::google::protobuf::RepeatedField<BOOL>::Reserve(this + 134, *(this + 136) + v10);
    memcpy(this[67] + *(this + 136), lpsrc[67], *(lpsrc + 136));
    *(this + 136) += *(lpsrc + 136);
  }

  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 70));
  LODWORD(v11) = *(lpsrc + 142);
  if (v11 >= 1)
  {
    v12 = 0;
    do
    {
      if (v12 >= v11)
      {
        wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
        wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
        wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
        wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v170);
      }

      v13 = *(lpsrc[70] + v12);
      v14 = *(this + 142);
      v15 = *(this + 143);
      if (v14 >= v15)
      {
        if (v15 == *(this + 144))
        {
          wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 70));
          v15 = *(this + 143);
        }

        *(this + 143) = v15 + 1;
        operator new();
      }

      v16 = this[70];
      *(this + 142) = v14 + 1;
      awd::metrics::ATM_CallEndEvent_handover::MergeFrom(v16[v14], v13);
      ++v12;
      v11 = *(lpsrc + 142);
    }

    while (v12 < v11);
  }

  v17 = *(lpsrc + 168);
  if (!v17)
  {
    goto LABEL_36;
  }

  if (v17)
  {
    v35 = lpsrc[1];
    *(this + 168) |= 1u;
    this[1] = v35;
    v17 = *(lpsrc + 168);
    if ((v17 & 2) == 0)
    {
LABEL_29:
      if ((v17 & 4) == 0)
      {
        goto LABEL_30;
      }

      goto LABEL_148;
    }
  }

  else if ((v17 & 2) == 0)
  {
    goto LABEL_29;
  }

  v36 = lpsrc[2];
  *(this + 168) |= 2u;
  v37 = this[2];
  if (v37 == MEMORY[0x1E69E5958])
  {
    operator new();
  }

  std::string::operator=(v37, v36);
  v17 = *(lpsrc + 168);
  if ((v17 & 4) == 0)
  {
LABEL_30:
    if ((v17 & 8) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_149;
  }

LABEL_148:
  v38 = *(lpsrc + 28);
  *(this + 168) |= 4u;
  *(this + 28) = v38;
  v17 = *(lpsrc + 168);
  if ((v17 & 8) == 0)
  {
LABEL_31:
    if ((v17 & 0x10) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_151;
  }

LABEL_149:
  v39 = *(lpsrc + 6);
  if ((v39 + 1) >= 8)
  {
    __assert_rtn("set_type", "CATM.pb.h", 12814, "::awd::metrics::enum_ATM_call_type_IsValid(value)");
  }

  *(this + 168) |= 8u;
  *(this + 6) = v39;
  v17 = *(lpsrc + 168);
  if ((v17 & 0x10) == 0)
  {
LABEL_32:
    if ((v17 & 0x20) == 0)
    {
      goto LABEL_33;
    }

LABEL_152:
    v41 = *(lpsrc + 30);
    *(this + 168) |= 0x20u;
    *(this + 30) = v41;
    v17 = *(lpsrc + 168);
    if ((v17 & 0x40) == 0)
    {
LABEL_34:
      if ((v17 & 0x80) == 0)
      {
        goto LABEL_36;
      }

      goto LABEL_35;
    }

    goto LABEL_153;
  }

LABEL_151:
  v40 = *(lpsrc + 29);
  *(this + 168) |= 0x10u;
  *(this + 29) = v40;
  v17 = *(lpsrc + 168);
  if ((v17 & 0x20) != 0)
  {
    goto LABEL_152;
  }

LABEL_33:
  if ((v17 & 0x40) == 0)
  {
    goto LABEL_34;
  }

LABEL_153:
  v42 = *(lpsrc + 31);
  *(this + 168) |= 0x40u;
  *(this + 31) = v42;
  v17 = *(lpsrc + 168);
  if ((v17 & 0x80) != 0)
  {
LABEL_35:
    v18 = *(lpsrc + 100);
    *(this + 168) |= 0x80u;
    *(this + 100) = v18;
    v17 = *(lpsrc + 168);
  }

LABEL_36:
  if ((v17 & 0xFF00) == 0)
  {
    goto LABEL_48;
  }

  if ((v17 & 0x100) != 0)
  {
    v19 = *(lpsrc + 10);
    if ((v19 - 1) >= 6 && v19 != -1)
    {
      __assert_rtn("set_invite_type", "CATM.pb.h", 12925, "::awd::metrics::enum_ATM_invite_call_type_IsValid(value)");
    }

    *(this + 168) |= 0x100u;
    *(this + 10) = v19;
    v17 = *(lpsrc + 168);
  }

  if ((v17 & 0x200) != 0)
  {
    v61 = lpsrc[4];
    *(this + 168) |= 0x200u;
    v62 = this[4];
    if (v62 == MEMORY[0x1E69E5958])
    {
      operator new();
    }

    std::string::operator=(v62, v61);
    v17 = *(lpsrc + 168);
    if ((v17 & 0x400) == 0)
    {
LABEL_42:
      if ((v17 & 0x800) == 0)
      {
        goto LABEL_43;
      }

      goto LABEL_186;
    }
  }

  else if ((v17 & 0x400) == 0)
  {
    goto LABEL_42;
  }

  v63 = *(lpsrc + 11);
  *(this + 168) |= 0x400u;
  *(this + 11) = v63;
  v17 = *(lpsrc + 168);
  if ((v17 & 0x800) == 0)
  {
LABEL_43:
    if ((v17 & 0x1000) == 0)
    {
      goto LABEL_44;
    }

    goto LABEL_189;
  }

LABEL_186:
  v64 = lpsrc[6];
  *(this + 168) |= 0x800u;
  v65 = this[6];
  if (v65 == MEMORY[0x1E69E5958])
  {
    operator new();
  }

  std::string::operator=(v65, v64);
  v17 = *(lpsrc + 168);
  if ((v17 & 0x1000) == 0)
  {
LABEL_44:
    if ((v17 & 0x2000) == 0)
    {
      goto LABEL_45;
    }

    goto LABEL_190;
  }

LABEL_189:
  v66 = *(lpsrc + 101);
  *(this + 168) |= 0x1000u;
  *(this + 101) = v66;
  v17 = *(lpsrc + 168);
  if ((v17 & 0x2000) == 0)
  {
LABEL_45:
    if ((v17 & 0x4000) == 0)
    {
      goto LABEL_46;
    }

    goto LABEL_193;
  }

LABEL_190:
  v67 = lpsrc[7];
  *(this + 168) |= 0x2000u;
  v68 = this[7];
  if (v68 == MEMORY[0x1E69E5958])
  {
    operator new();
  }

  std::string::operator=(v68, v67);
  v17 = *(lpsrc + 168);
  if ((v17 & 0x4000) == 0)
  {
LABEL_46:
    if ((v17 & 0x8000) == 0)
    {
      goto LABEL_48;
    }

    goto LABEL_47;
  }

LABEL_193:
  v69 = lpsrc[8];
  *(this + 168) |= 0x4000u;
  v70 = this[8];
  if (v70 == MEMORY[0x1E69E5958])
  {
    operator new();
  }

  std::string::operator=(v70, v69);
  v17 = *(lpsrc + 168);
  if ((v17 & 0x8000) != 0)
  {
LABEL_47:
    v20 = *(lpsrc + 24);
    *(this + 168) |= 0x8000u;
    *(this + 24) = v20;
    v17 = *(lpsrc + 168);
  }

LABEL_48:
  if ((v17 & 0xFF0000) == 0)
  {
    goto LABEL_58;
  }

  if ((v17 & 0x10000) != 0)
  {
    v43 = lpsrc[9];
    *(this + 168) |= 0x10000u;
    v44 = this[9];
    if (v44 == MEMORY[0x1E69E5958])
    {
      operator new();
    }

    std::string::operator=(v44, v43);
    v17 = *(lpsrc + 168);
    if ((v17 & 0x20000) == 0)
    {
LABEL_51:
      if ((v17 & 0x40000) == 0)
      {
        goto LABEL_52;
      }

      goto LABEL_161;
    }
  }

  else if ((v17 & 0x20000) == 0)
  {
    goto LABEL_51;
  }

  v45 = lpsrc[10];
  *(this + 168) |= 0x20000u;
  v46 = this[10];
  if (v46 == MEMORY[0x1E69E5958])
  {
    operator new();
  }

  std::string::operator=(v46, v45);
  v17 = *(lpsrc + 168);
  if ((v17 & 0x40000) == 0)
  {
LABEL_52:
    if ((v17 & 0x80000) == 0)
    {
      goto LABEL_53;
    }

    goto LABEL_164;
  }

LABEL_161:
  v47 = lpsrc[11];
  *(this + 168) |= 0x40000u;
  v48 = this[11];
  if (v48 == MEMORY[0x1E69E5958])
  {
    operator new();
  }

  std::string::operator=(v48, v47);
  v17 = *(lpsrc + 168);
  if ((v17 & 0x80000) == 0)
  {
LABEL_53:
    if ((v17 & 0x100000) == 0)
    {
      goto LABEL_54;
    }

    goto LABEL_167;
  }

LABEL_164:
  v49 = lpsrc[13];
  *(this + 168) |= 0x80000u;
  v50 = this[13];
  if (v50 == MEMORY[0x1E69E5958])
  {
    operator new();
  }

  std::string::operator=(v50, v49);
  v17 = *(lpsrc + 168);
  if ((v17 & 0x100000) == 0)
  {
LABEL_54:
    if ((v17 & 0x200000) == 0)
    {
      goto LABEL_55;
    }

    goto LABEL_170;
  }

LABEL_167:
  v51 = lpsrc[14];
  *(this + 168) |= 0x100000u;
  v52 = this[14];
  if (v52 == MEMORY[0x1E69E5958])
  {
    operator new();
  }

  std::string::operator=(v52, v51);
  v17 = *(lpsrc + 168);
  if ((v17 & 0x200000) == 0)
  {
LABEL_55:
    if ((v17 & 0x400000) == 0)
    {
      goto LABEL_56;
    }

    goto LABEL_171;
  }

LABEL_170:
  v53 = *(lpsrc + 30);
  *(this + 168) |= 0x200000u;
  *(this + 30) = v53;
  v17 = *(lpsrc + 168);
  if ((v17 & 0x400000) == 0)
  {
LABEL_56:
    if ((v17 & 0x800000) == 0)
    {
      goto LABEL_58;
    }

    goto LABEL_57;
  }

LABEL_171:
  v54 = *(lpsrc + 31);
  *(this + 168) |= 0x400000u;
  *(this + 31) = v54;
  v17 = *(lpsrc + 168);
  if ((v17 & 0x800000) != 0)
  {
LABEL_57:
    v21 = *(lpsrc + 32);
    *(this + 168) |= 0x800000u;
    *(this + 32) = v21;
    v17 = *(lpsrc + 168);
  }

LABEL_58:
  if (!HIBYTE(v17))
  {
    goto LABEL_67;
  }

  if ((v17 & 0x1000000) != 0)
  {
    v128 = *(lpsrc + 102);
    *(this + 168) |= 0x1000000u;
    *(this + 102) = v128;
    v17 = *(lpsrc + 168);
    if ((v17 & 0x2000000) == 0)
    {
LABEL_61:
      if ((v17 & 0x4000000) == 0)
      {
        goto LABEL_62;
      }

      goto LABEL_308;
    }
  }

  else if ((v17 & 0x2000000) == 0)
  {
    goto LABEL_61;
  }

  v129 = *(lpsrc + 33);
  *(this + 168) |= 0x2000000u;
  *(this + 33) = v129;
  v17 = *(lpsrc + 168);
  if ((v17 & 0x4000000) == 0)
  {
LABEL_62:
    if ((v17 & 0x8000000) == 0)
    {
      goto LABEL_63;
    }

    goto LABEL_309;
  }

LABEL_308:
  v130 = *(lpsrc + 36);
  *(this + 168) |= 0x4000000u;
  *(this + 36) = v130;
  v17 = *(lpsrc + 168);
  if ((v17 & 0x8000000) == 0)
  {
LABEL_63:
    if ((v17 & 0x10000000) == 0)
    {
      goto LABEL_64;
    }

    goto LABEL_312;
  }

LABEL_309:
  v131 = lpsrc[17];
  *(this + 168) |= 0x8000000u;
  v132 = this[17];
  if (v132 == MEMORY[0x1E69E5958])
  {
    operator new();
  }

  std::string::operator=(v132, v131);
  v17 = *(lpsrc + 168);
  if ((v17 & 0x10000000) == 0)
  {
LABEL_64:
    if ((v17 & 0x20000000) == 0)
    {
      goto LABEL_65;
    }

    goto LABEL_315;
  }

LABEL_312:
  v133 = lpsrc[19];
  *(this + 168) |= 0x10000000u;
  v134 = this[19];
  if (v134 == MEMORY[0x1E69E5958])
  {
    operator new();
  }

  std::string::operator=(v134, v133);
  v17 = *(lpsrc + 168);
  if ((v17 & 0x20000000) == 0)
  {
LABEL_65:
    if ((v17 & 0x40000000) == 0)
    {
      goto LABEL_66;
    }

LABEL_318:
    v137 = *(lpsrc + 37);
    *(this + 168) |= 0x40000000u;
    *(this + 37) = v137;
    if ((lpsrc[84] & 0x80000000) == 0)
    {
      goto LABEL_67;
    }

    goto LABEL_319;
  }

LABEL_315:
  v135 = lpsrc[20];
  *(this + 168) |= 0x20000000u;
  v136 = this[20];
  if (v136 == MEMORY[0x1E69E5958])
  {
    operator new();
  }

  std::string::operator=(v136, v135);
  v17 = *(lpsrc + 168);
  if ((v17 & 0x40000000) != 0)
  {
    goto LABEL_318;
  }

LABEL_66:
  if ((v17 & 0x80000000) == 0)
  {
    goto LABEL_67;
  }

LABEL_319:
  v138 = *(lpsrc + 42);
  *(this + 168) |= 0x80000000;
  *(this + 42) = v138;
LABEL_67:
  v22 = *(lpsrc + 169);
  if (!v22)
  {
    goto LABEL_80;
  }

  if (v22)
  {
    v55 = *(lpsrc + 103);
    *(this + 169) |= 1u;
    *(this + 103) = v55;
    v22 = *(lpsrc + 169);
    if ((v22 & 2) == 0)
    {
LABEL_70:
      if ((v22 & 4) == 0)
      {
        goto LABEL_71;
      }

      goto LABEL_175;
    }
  }

  else if ((v22 & 2) == 0)
  {
    goto LABEL_70;
  }

  v56 = *(lpsrc + 43);
  *(this + 169) |= 2u;
  *(this + 43) = v56;
  v22 = *(lpsrc + 169);
  if ((v22 & 4) == 0)
  {
LABEL_71:
    if ((v22 & 8) == 0)
    {
      goto LABEL_72;
    }

    goto LABEL_176;
  }

LABEL_175:
  v57 = *(lpsrc + 44);
  *(this + 169) |= 4u;
  *(this + 44) = v57;
  v22 = *(lpsrc + 169);
  if ((v22 & 8) == 0)
  {
LABEL_72:
    if ((v22 & 0x10) == 0)
    {
      goto LABEL_73;
    }

    goto LABEL_177;
  }

LABEL_176:
  v58 = lpsrc[23];
  *(this + 169) |= 8u;
  this[23] = v58;
  v22 = *(lpsrc + 169);
  if ((v22 & 0x10) == 0)
  {
LABEL_73:
    if ((v22 & 0x20) == 0)
    {
      goto LABEL_74;
    }

    goto LABEL_179;
  }

LABEL_177:
  v59 = *(lpsrc + 45);
  if (!awd::metrics::enum_ATM_CallEndReason_IsValid(v59))
  {
    __assert_rtn("set_end_reason", "CATM.pb.h", 14118, "::awd::metrics::enum_ATM_CallEndReason_IsValid(value)");
  }

  *(this + 169) |= 0x10u;
  *(this + 45) = v59;
  v22 = *(lpsrc + 169);
  if ((v22 & 0x20) == 0)
  {
LABEL_74:
    if ((v22 & 0x40) == 0)
    {
      goto LABEL_76;
    }

    goto LABEL_75;
  }

LABEL_179:
  v60 = *(lpsrc + 48);
  if ((awd::metrics::RESPONSE_Code_IsValid(v60) & 1) == 0)
  {
    __assert_rtn("set_status_code", "CATM.pb.h", 14141, "::awd::metrics::RESPONSE_Code_IsValid(value)");
  }

  *(this + 169) |= 0x20u;
  *(this + 48) = v60;
  v22 = *(lpsrc + 169);
  if ((v22 & 0x40) == 0)
  {
    goto LABEL_76;
  }

LABEL_75:
  v23 = *(lpsrc + 236);
  *(this + 169) |= 0x40u;
  *(this + 236) = v23;
  v22 = *(lpsrc + 169);
LABEL_76:
  if ((v22 & 0x80) != 0)
  {
    v24 = lpsrc[25];
    *(this + 169) |= 0x80u;
    v25 = this[25];
    if (v25 == MEMORY[0x1E69E5958])
    {
      operator new();
    }

    std::string::operator=(v25, v24);
    v22 = *(lpsrc + 169);
  }

LABEL_80:
  if ((v22 & 0xFF00) == 0)
  {
    goto LABEL_96;
  }

  if ((v22 & 0x100) != 0)
  {
    v26 = *(lpsrc + 237);
    *(this + 169) |= 0x100u;
    *(this + 237) = v26;
    v22 = *(lpsrc + 169);
  }

  if ((v22 & 0x200) != 0)
  {
    v27 = *(lpsrc + 49);
    if (v27 >= 4)
    {
      __assert_rtn("set_callendstatus", "CATM.pb.h", 14278, "::awd::metrics::enum_ATM_call_end_status_IsValid(value)");
    }

    *(this + 169) |= 0x200u;
    *(this + 49) = v27;
    v22 = *(lpsrc + 169);
  }

  if ((v22 & 0x400) != 0)
  {
    v28 = *(lpsrc + 52);
    *(this + 169) |= 0x400u;
    *(this + 52) = v28;
    v22 = *(lpsrc + 169);
  }

  if ((v22 & 0x800) != 0)
  {
    v29 = *(lpsrc + 53);
    if ((awd::metrics::session_termination_reason_IsValid(v29) & 1) == 0)
    {
      __assert_rtn("set_bye_reason", "CATM.pb.h", 14323, "::awd::metrics::session_termination_reason_IsValid(value)");
    }

    *(this + 169) |= 0x800u;
    *(this + 53) = v29;
    v22 = *(lpsrc + 169);
  }

  if ((v22 & 0x1000) != 0)
  {
    v107 = lpsrc[27];
    *(this + 169) |= 0x1000u;
    this[27] = v107;
    v22 = *(lpsrc + 169);
    if ((v22 & 0x2000) == 0)
    {
LABEL_93:
      if ((v22 & 0x4000) == 0)
      {
        goto LABEL_94;
      }

      goto LABEL_283;
    }
  }

  else if ((v22 & 0x2000) == 0)
  {
    goto LABEL_93;
  }

  v108 = *(lpsrc + 56);
  *(this + 169) |= 0x2000u;
  *(this + 56) = v108;
  v22 = *(lpsrc + 169);
  if ((v22 & 0x4000) == 0)
  {
LABEL_94:
    if ((v22 & 0x8000) == 0)
    {
      goto LABEL_96;
    }

    goto LABEL_95;
  }

LABEL_283:
  v109 = *(lpsrc + 57);
  *(this + 169) |= 0x4000u;
  *(this + 57) = v109;
  v22 = *(lpsrc + 169);
  if ((v22 & 0x8000) != 0)
  {
LABEL_95:
    v30 = *(lpsrc + 58);
    *(this + 169) |= 0x8000u;
    *(this + 58) = v30;
    v22 = *(lpsrc + 169);
  }

LABEL_96:
  if ((v22 & 0xFF0000) == 0)
  {
    goto LABEL_105;
  }

  if ((v22 & 0x10000) != 0)
  {
    v71 = *(lpsrc + 60);
    *(this + 169) |= 0x10000u;
    *(this + 60) = v71;
    v22 = *(lpsrc + 169);
    if ((v22 & 0x20000) == 0)
    {
LABEL_99:
      if ((v22 & 0x40000) == 0)
      {
        goto LABEL_100;
      }

      goto LABEL_199;
    }
  }

  else if ((v22 & 0x20000) == 0)
  {
    goto LABEL_99;
  }

  v72 = *(lpsrc + 61);
  *(this + 169) |= 0x20000u;
  *(this + 61) = v72;
  v22 = *(lpsrc + 169);
  if ((v22 & 0x40000) == 0)
  {
LABEL_100:
    if ((v22 & 0x80000) == 0)
    {
      goto LABEL_101;
    }

    goto LABEL_200;
  }

LABEL_199:
  v73 = *(lpsrc + 62);
  *(this + 169) |= 0x40000u;
  *(this + 62) = v73;
  v22 = *(lpsrc + 169);
  if ((v22 & 0x80000) == 0)
  {
LABEL_101:
    if ((v22 & 0x100000) == 0)
    {
      goto LABEL_102;
    }

    goto LABEL_201;
  }

LABEL_200:
  v74 = *(lpsrc + 63);
  *(this + 169) |= 0x80000u;
  *(this + 63) = v74;
  v22 = *(lpsrc + 169);
  if ((v22 & 0x100000) == 0)
  {
LABEL_102:
    if ((v22 & 0x200000) == 0)
    {
      goto LABEL_103;
    }

    goto LABEL_202;
  }

LABEL_201:
  v75 = *(lpsrc + 72);
  *(this + 169) |= 0x100000u;
  *(this + 72) = v75;
  v22 = *(lpsrc + 169);
  if ((v22 & 0x200000) == 0)
  {
LABEL_103:
    if ((v22 & 0x800000) == 0)
    {
      goto LABEL_105;
    }

    goto LABEL_104;
  }

LABEL_202:
  v76 = lpsrc[32];
  *(this + 169) |= 0x200000u;
  v77 = this[32];
  if (v77 == MEMORY[0x1E69E5958])
  {
    operator new();
  }

  std::string::operator=(v77, v76);
  v22 = *(lpsrc + 169);
  if ((v22 & 0x800000) != 0)
  {
LABEL_104:
    v31 = *(lpsrc + 238);
    *(this + 169) |= 0x800000u;
    *(this + 238) = v31;
    v22 = *(lpsrc + 169);
  }

LABEL_105:
  if (!HIBYTE(v22))
  {
    goto LABEL_114;
  }

  if ((v22 & 0x1000000) != 0)
  {
    v139 = *(lpsrc + 239);
    *(this + 169) |= 0x1000000u;
    *(this + 239) = v139;
    v22 = *(lpsrc + 169);
    if ((v22 & 0x2000000) == 0)
    {
LABEL_108:
      if ((v22 & 0x4000000) == 0)
      {
        goto LABEL_109;
      }

      goto LABEL_322;
    }
  }

  else if ((v22 & 0x2000000) == 0)
  {
    goto LABEL_108;
  }

  v140 = *(lpsrc + 396);
  *(this + 169) |= 0x2000000u;
  *(this + 396) = v140;
  v22 = *(lpsrc + 169);
  if ((v22 & 0x4000000) == 0)
  {
LABEL_109:
    if ((v22 & 0x8000000) == 0)
    {
      goto LABEL_110;
    }

    goto LABEL_323;
  }

LABEL_322:
  v141 = *(lpsrc + 73);
  *(this + 169) |= 0x4000000u;
  *(this + 73) = v141;
  v22 = *(lpsrc + 169);
  if ((v22 & 0x8000000) == 0)
  {
LABEL_110:
    if ((v22 & 0x10000000) == 0)
    {
      goto LABEL_111;
    }

    goto LABEL_324;
  }

LABEL_323:
  v142 = *(lpsrc + 74);
  *(this + 169) |= 0x8000000u;
  *(this + 74) = v142;
  v22 = *(lpsrc + 169);
  if ((v22 & 0x10000000) == 0)
  {
LABEL_111:
    if ((v22 & 0x20000000) == 0)
    {
      goto LABEL_112;
    }

    goto LABEL_325;
  }

LABEL_324:
  v143 = *(lpsrc + 75);
  *(this + 169) |= 0x10000000u;
  *(this + 75) = v143;
  v22 = *(lpsrc + 169);
  if ((v22 & 0x20000000) == 0)
  {
LABEL_112:
    if ((v22 & 0x40000000) == 0)
    {
      goto LABEL_113;
    }

LABEL_326:
    v145 = *(lpsrc + 77);
    *(this + 169) |= 0x40000000u;
    *(this + 77) = v145;
    if ((*(lpsrc + 169) & 0x80000000) == 0)
    {
      goto LABEL_114;
    }

    goto LABEL_327;
  }

LABEL_325:
  v144 = *(lpsrc + 76);
  *(this + 169) |= 0x20000000u;
  *(this + 76) = v144;
  v22 = *(lpsrc + 169);
  if ((v22 & 0x40000000) != 0)
  {
    goto LABEL_326;
  }

LABEL_113:
  if ((v22 & 0x80000000) == 0)
  {
    goto LABEL_114;
  }

LABEL_327:
  v146 = *(lpsrc + 78);
  *(this + 169) |= 0x80000000;
  *(this + 78) = v146;
LABEL_114:
  v32 = *(lpsrc + 170);
  if (!v32)
  {
    goto LABEL_124;
  }

  if (v32)
  {
    v78 = *(lpsrc + 79);
    *(this + 170) |= 1u;
    *(this + 79) = v78;
    v32 = *(lpsrc + 170);
    if ((v32 & 2) == 0)
    {
LABEL_117:
      if ((v32 & 4) == 0)
      {
        goto LABEL_118;
      }

      goto LABEL_208;
    }
  }

  else if ((v32 & 2) == 0)
  {
    goto LABEL_117;
  }

  v79 = *(lpsrc + 80);
  *(this + 170) |= 2u;
  *(this + 80) = v79;
  v32 = *(lpsrc + 170);
  if ((v32 & 4) == 0)
  {
LABEL_118:
    if ((v32 & 8) == 0)
    {
      goto LABEL_119;
    }

    goto LABEL_209;
  }

LABEL_208:
  v80 = *(lpsrc + 81);
  *(this + 170) |= 4u;
  *(this + 81) = v80;
  v32 = *(lpsrc + 170);
  if ((v32 & 8) == 0)
  {
LABEL_119:
    if ((v32 & 0x10) == 0)
    {
      goto LABEL_120;
    }

    goto LABEL_210;
  }

LABEL_209:
  v81 = *(lpsrc + 82);
  *(this + 170) |= 8u;
  *(this + 82) = v81;
  v32 = *(lpsrc + 170);
  if ((v32 & 0x10) == 0)
  {
LABEL_120:
    if ((v32 & 0x20) == 0)
    {
      goto LABEL_121;
    }

    goto LABEL_211;
  }

LABEL_210:
  v82 = *(lpsrc + 83);
  *(this + 170) |= 0x10u;
  *(this + 83) = v82;
  v32 = *(lpsrc + 170);
  if ((v32 & 0x20) == 0)
  {
LABEL_121:
    if ((v32 & 0x40) == 0)
    {
      goto LABEL_122;
    }

    goto LABEL_212;
  }

LABEL_211:
  v83 = *(lpsrc + 84);
  *(this + 170) |= 0x20u;
  *(this + 84) = v83;
  v32 = *(lpsrc + 170);
  if ((v32 & 0x40) == 0)
  {
LABEL_122:
    if ((v32 & 0x80) == 0)
    {
      goto LABEL_124;
    }

    goto LABEL_123;
  }

LABEL_212:
  v84 = *(lpsrc + 85);
  *(this + 170) |= 0x40u;
  *(this + 85) = v84;
  v32 = *(lpsrc + 170);
  if ((v32 & 0x80) != 0)
  {
LABEL_123:
    v33 = *(lpsrc + 86);
    *(this + 170) |= 0x80u;
    *(this + 86) = v33;
    v32 = *(lpsrc + 170);
  }

LABEL_124:
  if ((v32 & 0xFF00) == 0)
  {
    goto LABEL_134;
  }

  if ((v32 & 0x100) != 0)
  {
    v85 = *(lpsrc + 87);
    *(this + 170) |= 0x100u;
    *(this + 87) = v85;
    v32 = *(lpsrc + 170);
    if ((v32 & 0x200) == 0)
    {
LABEL_127:
      if ((v32 & 0x400) == 0)
      {
        goto LABEL_128;
      }

      goto LABEL_216;
    }
  }

  else if ((v32 & 0x200) == 0)
  {
    goto LABEL_127;
  }

  v86 = *(lpsrc + 88);
  *(this + 170) |= 0x200u;
  *(this + 88) = v86;
  v32 = *(lpsrc + 170);
  if ((v32 & 0x400) == 0)
  {
LABEL_128:
    if ((v32 & 0x800) == 0)
    {
      goto LABEL_129;
    }

    goto LABEL_217;
  }

LABEL_216:
  v87 = *(lpsrc + 89);
  *(this + 170) |= 0x400u;
  *(this + 89) = v87;
  v32 = *(lpsrc + 170);
  if ((v32 & 0x800) == 0)
  {
LABEL_129:
    if ((v32 & 0x1000) == 0)
    {
      goto LABEL_130;
    }

    goto LABEL_218;
  }

LABEL_217:
  v88 = *(lpsrc + 90);
  *(this + 170) |= 0x800u;
  *(this + 90) = v88;
  v32 = *(lpsrc + 170);
  if ((v32 & 0x1000) == 0)
  {
LABEL_130:
    if ((v32 & 0x2000) == 0)
    {
      goto LABEL_131;
    }

    goto LABEL_219;
  }

LABEL_218:
  v89 = *(lpsrc + 91);
  *(this + 170) |= 0x1000u;
  *(this + 91) = v89;
  v32 = *(lpsrc + 170);
  if ((v32 & 0x2000) == 0)
  {
LABEL_131:
    if ((v32 & 0x4000) == 0)
    {
      goto LABEL_132;
    }

    goto LABEL_220;
  }

LABEL_219:
  v90 = *(lpsrc + 92);
  *(this + 170) |= 0x2000u;
  *(this + 92) = v90;
  v32 = *(lpsrc + 170);
  if ((v32 & 0x4000) == 0)
  {
LABEL_132:
    if ((v32 & 0x8000) == 0)
    {
      goto LABEL_134;
    }

    goto LABEL_133;
  }

LABEL_220:
  v91 = *(lpsrc + 93);
  *(this + 170) |= 0x4000u;
  *(this + 93) = v91;
  v32 = *(lpsrc + 170);
  if ((v32 & 0x8000) != 0)
  {
LABEL_133:
    v34 = *(lpsrc + 94);
    *(this + 170) |= 0x8000u;
    *(this + 94) = v34;
    v32 = *(lpsrc + 170);
  }

LABEL_134:
  if ((v32 & 0xFF0000) == 0)
  {
    goto LABEL_232;
  }

  if ((v32 & 0x10000) != 0)
  {
    v92 = *(lpsrc + 95);
    *(this + 170) |= 0x10000u;
    *(this + 95) = v92;
    v32 = *(lpsrc + 170);
    if ((v32 & 0x20000) == 0)
    {
LABEL_137:
      if ((v32 & 0x40000) == 0)
      {
        goto LABEL_138;
      }

      goto LABEL_224;
    }
  }

  else if ((v32 & 0x20000) == 0)
  {
    goto LABEL_137;
  }

  v93 = *(lpsrc + 96);
  *(this + 170) |= 0x20000u;
  *(this + 96) = v93;
  v32 = *(lpsrc + 170);
  if ((v32 & 0x40000) == 0)
  {
LABEL_138:
    if ((v32 & 0x80000) == 0)
    {
      goto LABEL_139;
    }

    goto LABEL_225;
  }

LABEL_224:
  v94 = *(lpsrc + 97);
  *(this + 170) |= 0x40000u;
  *(this + 97) = v94;
  v32 = *(lpsrc + 170);
  if ((v32 & 0x80000) == 0)
  {
LABEL_139:
    if ((v32 & 0x100000) == 0)
    {
      goto LABEL_140;
    }

    goto LABEL_226;
  }

LABEL_225:
  v95 = *(lpsrc + 98);
  *(this + 170) |= 0x80000u;
  *(this + 98) = v95;
  v32 = *(lpsrc + 170);
  if ((v32 & 0x100000) == 0)
  {
LABEL_140:
    if ((v32 & 0x200000) == 0)
    {
      goto LABEL_141;
    }

    goto LABEL_227;
  }

LABEL_226:
  v96 = *(lpsrc + 100);
  *(this + 170) |= 0x100000u;
  *(this + 100) = v96;
  v32 = *(lpsrc + 170);
  if ((v32 & 0x200000) == 0)
  {
LABEL_141:
    if ((v32 & 0x400000) == 0)
    {
      goto LABEL_142;
    }

    goto LABEL_228;
  }

LABEL_227:
  v97 = *(lpsrc + 397);
  *(this + 170) |= 0x200000u;
  *(this + 397) = v97;
  v32 = *(lpsrc + 170);
  if ((v32 & 0x400000) == 0)
  {
LABEL_142:
    if ((v32 & 0x800000) == 0)
    {
      goto LABEL_232;
    }

    goto LABEL_229;
  }

LABEL_228:
  v98 = *(lpsrc + 101);
  *(this + 170) |= 0x400000u;
  *(this + 101) = v98;
  v32 = *(lpsrc + 170);
  if ((v32 & 0x800000) == 0)
  {
    goto LABEL_232;
  }

LABEL_229:
  v99 = lpsrc[51];
  *(this + 170) |= 0x800000u;
  v100 = this[51];
  if (v100 == MEMORY[0x1E69E5958])
  {
    operator new();
  }

  std::string::operator=(v100, v99);
  v32 = *(lpsrc + 170);
LABEL_232:
  if (!HIBYTE(v32))
  {
    goto LABEL_244;
  }

  if ((v32 & 0x1000000) != 0)
  {
    v101 = *(lpsrc + 104);
    if (v101 >= 3)
    {
      __assert_rtn("set_amr_format", "CATM.pb.h", 15432, "::awd::metrics::enum_codec_format_IsValid(value)");
    }

    *(this + 170) |= 0x1000000u;
    *(this + 104) = v101;
    v32 = *(lpsrc + 170);
  }

  if ((v32 & 0x2000000) != 0)
  {
    v102 = *(lpsrc + 105);
    if (v102 >= 6)
    {
      __assert_rtn("set_codec", "CATM.pb.h", 15455, "::awd::metrics::enum_codec_type_IsValid(value)");
    }

    *(this + 170) |= 0x2000000u;
    *(this + 105) = v102;
    v32 = *(lpsrc + 170);
  }

  if ((v32 & 0x4000000) != 0)
  {
    v165 = *(lpsrc + 398);
    *(this + 170) |= 0x4000000u;
    *(this + 398) = v165;
    v32 = *(lpsrc + 170);
    if ((v32 & 0x10000000) == 0)
    {
LABEL_241:
      if ((v32 & 0x20000000) == 0)
      {
        goto LABEL_242;
      }

      goto LABEL_360;
    }
  }

  else if ((v32 & 0x10000000) == 0)
  {
    goto LABEL_241;
  }

  v166 = *(lpsrc + 114);
  *(this + 170) |= 0x10000000u;
  *(this + 114) = v166;
  v32 = *(lpsrc + 170);
  if ((v32 & 0x20000000) == 0)
  {
LABEL_242:
    if ((v32 & 0x40000000) == 0)
    {
      goto LABEL_243;
    }

LABEL_361:
    v168 = lpsrc[58];
    *(this + 170) |= 0x40000000u;
    this[58] = v168;
    if ((lpsrc[85] & 0x80000000) == 0)
    {
      goto LABEL_244;
    }

    goto LABEL_362;
  }

LABEL_360:
  v167 = lpsrc[56];
  *(this + 170) |= 0x20000000u;
  this[56] = v167;
  v32 = *(lpsrc + 170);
  if ((v32 & 0x40000000) != 0)
  {
    goto LABEL_361;
  }

LABEL_243:
  if ((v32 & 0x80000000) == 0)
  {
    goto LABEL_244;
  }

LABEL_362:
  v169 = *(lpsrc + 115);
  *(this + 170) |= 0x80000000;
  *(this + 115) = v169;
LABEL_244:
  v103 = *(lpsrc + 171);
  if (!v103)
  {
    goto LABEL_254;
  }

  if (v103)
  {
    v110 = *(lpsrc + 120);
    *(this + 171) |= 1u;
    *(this + 120) = v110;
    v103 = *(lpsrc + 171);
    if ((v103 & 2) == 0)
    {
LABEL_247:
      if ((v103 & 4) == 0)
      {
        goto LABEL_248;
      }

      goto LABEL_287;
    }
  }

  else if ((v103 & 2) == 0)
  {
    goto LABEL_247;
  }

  v111 = lpsrc[59];
  *(this + 171) |= 2u;
  this[59] = v111;
  v103 = *(lpsrc + 171);
  if ((v103 & 4) == 0)
  {
LABEL_248:
    if ((v103 & 8) == 0)
    {
      goto LABEL_249;
    }

    goto LABEL_288;
  }

LABEL_287:
  v112 = lpsrc[61];
  *(this + 171) |= 4u;
  this[61] = v112;
  v103 = *(lpsrc + 171);
  if ((v103 & 8) == 0)
  {
LABEL_249:
    if ((v103 & 0x10) == 0)
    {
      goto LABEL_250;
    }

    goto LABEL_289;
  }

LABEL_288:
  v113 = *(lpsrc + 121);
  *(this + 171) |= 8u;
  *(this + 121) = v113;
  v103 = *(lpsrc + 171);
  if ((v103 & 0x10) == 0)
  {
LABEL_250:
    if ((v103 & 0x20) == 0)
    {
      goto LABEL_251;
    }

    goto LABEL_290;
  }

LABEL_289:
  v114 = *(lpsrc + 124);
  *(this + 171) |= 0x10u;
  *(this + 124) = v114;
  v103 = *(lpsrc + 171);
  if ((v103 & 0x20) == 0)
  {
LABEL_251:
    if ((v103 & 0x40) == 0)
    {
      goto LABEL_252;
    }

    goto LABEL_291;
  }

LABEL_290:
  v115 = *(lpsrc + 125);
  *(this + 171) |= 0x20u;
  *(this + 125) = v115;
  v103 = *(lpsrc + 171);
  if ((v103 & 0x40) == 0)
  {
LABEL_252:
    if ((v103 & 0x80) == 0)
    {
      goto LABEL_254;
    }

    goto LABEL_253;
  }

LABEL_291:
  v116 = *(lpsrc + 399);
  *(this + 171) |= 0x40u;
  *(this + 399) = v116;
  v103 = *(lpsrc + 171);
  if ((v103 & 0x80) != 0)
  {
LABEL_253:
    v104 = *(lpsrc + 126);
    *(this + 171) |= 0x80u;
    *(this + 126) = v104;
    v103 = *(lpsrc + 171);
  }

LABEL_254:
  if ((v103 & 0xFF00) == 0)
  {
    goto LABEL_261;
  }

  if ((v103 & 0x100) != 0)
  {
    v117 = *(lpsrc + 127);
    *(this + 171) |= 0x100u;
    *(this + 127) = v117;
    v103 = *(lpsrc + 171);
    if ((v103 & 0x200) == 0)
    {
LABEL_257:
      if ((v103 & 0x1000) == 0)
      {
        goto LABEL_258;
      }

      goto LABEL_295;
    }
  }

  else if ((v103 & 0x200) == 0)
  {
    goto LABEL_257;
  }

  v118 = *(lpsrc + 620);
  *(this + 171) |= 0x200u;
  *(this + 620) = v118;
  v103 = *(lpsrc + 171);
  if ((v103 & 0x1000) == 0)
  {
LABEL_258:
    if ((v103 & 0x2000) == 0)
    {
      goto LABEL_259;
    }

    goto LABEL_296;
  }

LABEL_295:
  v119 = *(lpsrc + 138);
  *(this + 171) |= 0x1000u;
  *(this + 138) = v119;
  v103 = *(lpsrc + 171);
  if ((v103 & 0x2000) == 0)
  {
LABEL_259:
    if ((v103 & 0x4000) == 0)
    {
      goto LABEL_261;
    }

    goto LABEL_260;
  }

LABEL_296:
  v120 = *(lpsrc + 139);
  *(this + 171) |= 0x2000u;
  *(this + 139) = v120;
  v103 = *(lpsrc + 171);
  if ((v103 & 0x4000) != 0)
  {
LABEL_260:
    v105 = *(lpsrc + 146);
    *(this + 171) |= 0x4000u;
    *(this + 146) = v105;
    v103 = *(lpsrc + 171);
  }

LABEL_261:
  if ((v103 & 0xFF0000) == 0)
  {
    goto LABEL_271;
  }

  if ((v103 & 0x10000) != 0)
  {
    v121 = *(lpsrc + 147);
    *(this + 171) |= 0x10000u;
    *(this + 147) = v121;
    v103 = *(lpsrc + 171);
    if ((v103 & 0x20000) == 0)
    {
LABEL_264:
      if ((v103 & 0x40000) == 0)
      {
        goto LABEL_265;
      }

      goto LABEL_300;
    }
  }

  else if ((v103 & 0x20000) == 0)
  {
    goto LABEL_264;
  }

  v122 = *(lpsrc + 148);
  *(this + 171) |= 0x20000u;
  *(this + 148) = v122;
  v103 = *(lpsrc + 171);
  if ((v103 & 0x40000) == 0)
  {
LABEL_265:
    if ((v103 & 0x80000) == 0)
    {
      goto LABEL_266;
    }

    goto LABEL_301;
  }

LABEL_300:
  v123 = *(lpsrc + 149);
  *(this + 171) |= 0x40000u;
  *(this + 149) = v123;
  v103 = *(lpsrc + 171);
  if ((v103 & 0x80000) == 0)
  {
LABEL_266:
    if ((v103 & 0x100000) == 0)
    {
      goto LABEL_267;
    }

    goto LABEL_302;
  }

LABEL_301:
  v124 = *(lpsrc + 150);
  *(this + 171) |= 0x80000u;
  *(this + 150) = v124;
  v103 = *(lpsrc + 171);
  if ((v103 & 0x100000) == 0)
  {
LABEL_267:
    if ((v103 & 0x200000) == 0)
    {
      goto LABEL_268;
    }

    goto LABEL_303;
  }

LABEL_302:
  v125 = *(lpsrc + 151);
  *(this + 171) |= 0x100000u;
  *(this + 151) = v125;
  v103 = *(lpsrc + 171);
  if ((v103 & 0x200000) == 0)
  {
LABEL_268:
    if ((v103 & 0x400000) == 0)
    {
      goto LABEL_269;
    }

    goto LABEL_304;
  }

LABEL_303:
  v126 = *(lpsrc + 152);
  *(this + 171) |= 0x200000u;
  *(this + 152) = v126;
  v103 = *(lpsrc + 171);
  if ((v103 & 0x400000) == 0)
  {
LABEL_269:
    if ((v103 & 0x800000) == 0)
    {
      goto LABEL_271;
    }

    goto LABEL_270;
  }

LABEL_304:
  v127 = *(lpsrc + 153);
  *(this + 171) |= 0x400000u;
  *(this + 153) = v127;
  v103 = *(lpsrc + 171);
  if ((v103 & 0x800000) != 0)
  {
LABEL_270:
    v106 = *(lpsrc + 154);
    *(this + 171) |= 0x800000u;
    *(this + 154) = v106;
    v103 = *(lpsrc + 171);
  }

LABEL_271:
  if (!HIBYTE(v103))
  {
    goto LABEL_337;
  }

  if ((v103 & 0x1000000) != 0)
  {
    v147 = *(lpsrc + 156);
    *(this + 171) |= 0x1000000u;
    *(this + 156) = v147;
    v103 = *(lpsrc + 171);
    if ((v103 & 0x2000000) == 0)
    {
LABEL_274:
      if ((v103 & 0x4000000) == 0)
      {
        goto LABEL_275;
      }

      goto LABEL_330;
    }
  }

  else if ((v103 & 0x2000000) == 0)
  {
    goto LABEL_274;
  }

  v148 = *(lpsrc + 157);
  *(this + 171) |= 0x2000000u;
  *(this + 157) = v148;
  v103 = *(lpsrc + 171);
  if ((v103 & 0x4000000) == 0)
  {
LABEL_275:
    if ((v103 & 0x8000000) == 0)
    {
      goto LABEL_276;
    }

    goto LABEL_331;
  }

LABEL_330:
  v149 = *(lpsrc + 158);
  *(this + 171) |= 0x4000000u;
  *(this + 158) = v149;
  v103 = *(lpsrc + 171);
  if ((v103 & 0x8000000) == 0)
  {
LABEL_276:
    if ((v103 & 0x10000000) == 0)
    {
      goto LABEL_277;
    }

    goto LABEL_332;
  }

LABEL_331:
  v150 = *(lpsrc + 621);
  *(this + 171) |= 0x8000000u;
  *(this + 621) = v150;
  v103 = *(lpsrc + 171);
  if ((v103 & 0x10000000) == 0)
  {
LABEL_277:
    if ((v103 & 0x20000000) == 0)
    {
      goto LABEL_278;
    }

    goto LABEL_333;
  }

LABEL_332:
  v151 = *(lpsrc + 622);
  *(this + 171) |= 0x10000000u;
  *(this + 622) = v151;
  v103 = *(lpsrc + 171);
  if ((v103 & 0x20000000) == 0)
  {
LABEL_278:
    if ((v103 & 0x40000000) == 0)
    {
      goto LABEL_279;
    }

LABEL_334:
    v153 = *(lpsrc + 644);
    *(this + 171) |= 0x40000000u;
    *(this + 644) = v153;
    if ((*(lpsrc + 171) & 0x80000000) == 0)
    {
      goto LABEL_337;
    }

    goto LABEL_335;
  }

LABEL_333:
  v152 = *(lpsrc + 623);
  *(this + 171) |= 0x20000000u;
  *(this + 623) = v152;
  v103 = *(lpsrc + 171);
  if ((v103 & 0x40000000) != 0)
  {
    goto LABEL_334;
  }

LABEL_279:
  if ((v103 & 0x80000000) == 0)
  {
    goto LABEL_337;
  }

LABEL_335:
  v154 = *(lpsrc + 159);
  if ((v154 - 1) >= 9)
  {
    __assert_rtn("set_end_state", "CATM.pb.h", 16323, "::awd::metrics::enum_ATM_call_state_IsValid(value)");
  }

  *(this + 171) |= 0x80000000;
  *(this + 159) = v154;
LABEL_337:
  LOBYTE(v155) = *(lpsrc + 688);
  if (!v155)
  {
    return;
  }

  if (lpsrc[86])
  {
    v157 = *(lpsrc + 645);
    *(this + 172) |= 1u;
    *(this + 645) = v157;
    v155 = *(lpsrc + 172);
    if ((v155 & 2) == 0)
    {
LABEL_340:
      if ((v155 & 4) == 0)
      {
        goto LABEL_341;
      }

      goto LABEL_350;
    }
  }

  else if ((lpsrc[86] & 2) == 0)
  {
    goto LABEL_340;
  }

  v158 = *(lpsrc + 160);
  *(this + 172) |= 2u;
  *(this + 160) = v158;
  v155 = *(lpsrc + 172);
  if ((v155 & 4) == 0)
  {
LABEL_341:
    if ((v155 & 8) == 0)
    {
      goto LABEL_342;
    }

    goto LABEL_351;
  }

LABEL_350:
  v159 = *(lpsrc + 164);
  *(this + 172) |= 4u;
  *(this + 164) = v159;
  v155 = *(lpsrc + 172);
  if ((v155 & 8) == 0)
  {
LABEL_342:
    if ((v155 & 0x10) == 0)
    {
      goto LABEL_343;
    }

    goto LABEL_354;
  }

LABEL_351:
  v160 = lpsrc[81];
  *(this + 172) |= 8u;
  v161 = this[81];
  if (v161 == MEMORY[0x1E69E5958])
  {
    operator new();
  }

  std::string::operator=(v161, v160);
  v155 = *(lpsrc + 172);
  if ((v155 & 0x10) == 0)
  {
LABEL_343:
    if ((v155 & 0x20) == 0)
    {
      goto LABEL_344;
    }

    goto LABEL_355;
  }

LABEL_354:
  v162 = *(lpsrc + 646);
  *(this + 172) |= 0x10u;
  *(this + 646) = v162;
  v155 = *(lpsrc + 172);
  if ((v155 & 0x20) == 0)
  {
LABEL_344:
    if ((v155 & 0x40) == 0)
    {
      goto LABEL_345;
    }

    goto LABEL_356;
  }

LABEL_355:
  v163 = *(lpsrc + 165);
  *(this + 172) |= 0x20u;
  *(this + 165) = v163;
  v155 = *(lpsrc + 172);
  if ((v155 & 0x40) == 0)
  {
LABEL_345:
    if ((v155 & 0x80) == 0)
    {
      return;
    }

    goto LABEL_346;
  }

LABEL_356:
  v164 = *(lpsrc + 647);
  *(this + 172) |= 0x40u;
  *(this + 647) = v164;
  if ((lpsrc[86] & 0x80) != 0)
  {
LABEL_346:
    v156 = *(lpsrc + 664);
    *(this + 172) |= 0x80u;
    *(this + 664) = v156;
  }
}

void sub_1E4CFE0D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t awd::metrics::BchannelTransmitStatistics::SharedDtor(uint64_t this)
{
  if (this != MEMORY[0x1E69E5958] && this != 0)
  {
    if (*(this + 23) < 0)
    {
      operator delete(*this);
    }

    JUMPOUT(0x1E69235B0);
  }

  return this;
}

void awd::metrics::BchannelTransmitStatistics::~BchannelTransmitStatistics(awd::metrics::BchannelTransmitStatistics *this)
{
  *this = &unk_1F5EC5F98;
  awd::metrics::BchannelTransmitStatistics::SharedDtor(*(this + 6));

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_1F5EC5F98;
  awd::metrics::BchannelTransmitStatistics::SharedDtor(*(this + 6));
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  JUMPOUT(0x1E69235B0);
}

uint64_t awd::metrics::BchannelTransmitStatistics::Clear(uint64_t this)
{
  v1 = *(this + 96);
  if (v1)
  {
    *(this + 40) = 0;
    *(this + 36) = 0;
    *(this + 16) = 0;
    *(this + 24) = 0;
    *(this + 8) = 0;
    *(this + 32) = 0;
  }

  if ((v1 & 0xFF00) != 0)
  {
    if ((v1 & 0x100) != 0)
    {
      v2 = *(this + 48);
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

    *(this + 88) = 0;
    *(this + 64) = 0;
    *(this + 72) = 0;
    *(this + 56) = 0;
    v1 = *(this + 96);
  }

  if ((v1 & 0xFF0000) != 0)
  {
    *(this + 80) = 0;
  }

  *(this + 96) = 0;
  return this;
}

uint64_t awd::metrics::BchannelTransmitStatistics::MergePartialFromCodedStream(awd::metrics::BchannelTransmitStatistics *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
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

    v8 = TagFallback & 7;
    switch(TagFallback >> 3)
    {
      case 1u:
        if (v8 != 5)
        {
          goto LABEL_47;
        }

        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a2, this + 4);
        if (result)
        {
          *(this + 24) |= 1u;
          v11 = *(a2 + 1);
          v10 = *(a2 + 2);
          if (v11 < v10 && *v11 == 16)
          {
            v12 = v11 + 1;
            *(a2 + 1) = v12;
            goto LABEL_35;
          }

          continue;
        }

        return result;
      case 2u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_47;
        }

        v12 = *(a2 + 1);
        v10 = *(a2 + 2);
LABEL_35:
        if (v12 < v10)
        {
          v24 = *v12;
          if ((v24 & 0x8000000000000000) == 0)
          {
            *(this + 1) = v24;
            v25 = v12 + 1;
            *(a2 + 1) = v25;
LABEL_53:
            *(this + 24) |= 2u;
            if (v25 < v10 && *v25 == 24)
            {
              v20 = v25 + 1;
              *(a2 + 1) = v20;
              goto LABEL_56;
            }

            continue;
          }
        }

        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 1);
        if (result)
        {
          v25 = *(a2 + 1);
          v10 = *(a2 + 2);
          goto LABEL_53;
        }

        break;
      case 3u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_47;
        }

        v20 = *(a2 + 1);
        v10 = *(a2 + 2);
LABEL_56:
        if (v20 >= v10 || (v31 = *v20, v31 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 3);
          if (!result)
          {
            return result;
          }

          v32 = *(a2 + 1);
          v10 = *(a2 + 2);
        }

        else
        {
          *(this + 3) = v31;
          v32 = v20 + 1;
          *(a2 + 1) = v32;
        }

        *(this + 24) |= 4u;
        if (v32 >= v10 || *v32 != 32)
        {
          continue;
        }

        v22 = v32 + 1;
        *(a2 + 1) = v22;
LABEL_64:
        if (v22 >= v10 || (v33 = *v22, v33 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 5);
          if (!result)
          {
            return result;
          }

          v34 = *(a2 + 1);
          v10 = *(a2 + 2);
        }

        else
        {
          *(this + 5) = v33;
          v34 = v22 + 1;
          *(a2 + 1) = v34;
        }

        *(this + 24) |= 8u;
        if (v34 >= v10 || *v34 != 40)
        {
          continue;
        }

        v17 = v34 + 1;
        *(a2 + 1) = v17;
LABEL_72:
        v60 = 0;
        if (v17 >= v10 || (v35 = *v17, (v35 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v60);
          if (!result)
          {
            return result;
          }

          v35 = v60;
          v36 = *(a2 + 1);
          v10 = *(a2 + 2);
        }

        else
        {
          v36 = v17 + 1;
          *(a2 + 1) = v36;
        }

        *(this + 32) = v35 != 0;
        *(this + 24) |= 0x10u;
        if (v36 >= v10 || *v36 != 48)
        {
          continue;
        }

        v26 = v36 + 1;
        *(a2 + 1) = v26;
LABEL_80:
        if (v26 >= v10 || (v37 = *v26, v37 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 9);
          if (!result)
          {
            return result;
          }

          v38 = *(a2 + 1);
          v10 = *(a2 + 2);
        }

        else
        {
          *(this + 9) = v37;
          v38 = v26 + 1;
          *(a2 + 1) = v38;
        }

        *(this + 24) |= 0x20u;
        if (v38 >= v10 || *v38 != 56)
        {
          continue;
        }

        v28 = v38 + 1;
        *(a2 + 1) = v28;
LABEL_88:
        if (v28 >= v10 || (v39 = *v28, v39 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 10);
          if (!result)
          {
            return result;
          }

          v40 = *(a2 + 1);
          v10 = *(a2 + 2);
        }

        else
        {
          *(this + 10) = v39;
          v40 = v28 + 1;
          *(a2 + 1) = v40;
        }

        *(this + 24) |= 0x40u;
        if (v40 >= v10 || *v40 != 64)
        {
          continue;
        }

        v23 = v40 + 1;
        *(a2 + 1) = v23;
LABEL_96:
        if (v23 >= v10 || (v41 = *v23, v41 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 11);
          if (!result)
          {
            return result;
          }

          v42 = *(a2 + 1);
          v10 = *(a2 + 2);
        }

        else
        {
          *(this + 11) = v41;
          v42 = v23 + 1;
          *(a2 + 1) = v42;
        }

        v30 = *(this + 24) | 0x80;
        *(this + 24) = v30;
        if (v42 >= v10 || *v42 != 74)
        {
          continue;
        }

        *(a2 + 1) = v42 + 1;
LABEL_104:
        *(this + 24) = v30 | 0x100;
        if (*(this + 6) == v5)
        {
          operator new();
        }

        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
        if (!result)
        {
          return result;
        }

        v43 = *(a2 + 1);
        v13 = *(a2 + 2);
        if (v43 >= v13 || *v43 != 80)
        {
          continue;
        }

        v19 = v43 + 1;
        *(a2 + 1) = v19;
LABEL_110:
        if (v19 >= v13 || (v44 = *v19, v44 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 14);
          if (!result)
          {
            return result;
          }

          v45 = *(a2 + 1);
          v13 = *(a2 + 2);
        }

        else
        {
          *(this + 14) = v44;
          v45 = v19 + 1;
          *(a2 + 1) = v45;
        }

        *(this + 24) |= 0x200u;
        if (v45 >= v13 || *v45 != 88)
        {
          continue;
        }

        v29 = v45 + 1;
        *(a2 + 1) = v29;
LABEL_118:
        if (v29 >= v13 || (v46 = *v29, v46 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 15);
          if (!result)
          {
            return result;
          }

          v47 = *(a2 + 1);
          v13 = *(a2 + 2);
        }

        else
        {
          *(this + 15) = v46;
          v47 = v29 + 1;
          *(a2 + 1) = v47;
        }

        *(this + 24) |= 0x400u;
        if (v47 >= v13 || *v47 != 96)
        {
          continue;
        }

        v16 = v47 + 1;
        *(a2 + 1) = v16;
LABEL_126:
        if (v16 >= v13 || (v48 = *v16, v48 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 16);
          if (!result)
          {
            return result;
          }

          v49 = *(a2 + 1);
          v13 = *(a2 + 2);
        }

        else
        {
          *(this + 16) = v48;
          v49 = v16 + 1;
          *(a2 + 1) = v49;
        }

        *(this + 24) |= 0x800u;
        if (v49 >= v13 || *v49 != 104)
        {
          continue;
        }

        v18 = v49 + 1;
        *(a2 + 1) = v18;
LABEL_134:
        if (v18 >= v13 || (v50 = *v18, v50 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 17);
          if (!result)
          {
            return result;
          }

          v51 = *(a2 + 1);
          v13 = *(a2 + 2);
        }

        else
        {
          *(this + 17) = v50;
          v51 = v18 + 1;
          *(a2 + 1) = v51;
        }

        *(this + 24) |= 0x1000u;
        if (v51 >= v13 || *v51 != 112)
        {
          continue;
        }

        v27 = v51 + 1;
        *(a2 + 1) = v27;
LABEL_142:
        if (v27 >= v13 || (v52 = *v27, v52 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 18);
          if (!result)
          {
            return result;
          }

          v53 = *(a2 + 1);
          v13 = *(a2 + 2);
        }

        else
        {
          *(this + 18) = v52;
          v53 = v27 + 1;
          *(a2 + 1) = v53;
        }

        *(this + 24) |= 0x2000u;
        if (v53 >= v13 || *v53 != 120)
        {
          continue;
        }

        v15 = v53 + 1;
        *(a2 + 1) = v15;
LABEL_150:
        if (v15 >= v13 || (v54 = *v15, v54 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 19);
          if (!result)
          {
            return result;
          }

          v55 = *(a2 + 1);
          v13 = *(a2 + 2);
        }

        else
        {
          *(this + 19) = v54;
          v55 = (v15 + 1);
          *(a2 + 1) = v55;
        }

        *(this + 24) |= 0x4000u;
        if (v13 - v55 < 2 || *v55 != 128 || v55[1] != 1)
        {
          continue;
        }

        v21 = (v55 + 2);
        *(a2 + 1) = v21;
LABEL_159:
        if (v21 >= v13 || (v56 = *v21, v56 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 22);
          if (!result)
          {
            return result;
          }

          v57 = *(a2 + 1);
          v13 = *(a2 + 2);
        }

        else
        {
          *(this + 22) = v56;
          v57 = (v21 + 1);
          *(a2 + 1) = v57;
        }

        *(this + 24) |= 0x8000u;
        if (v13 - v57 < 2 || *v57 != 136 || v57[1] != 1)
        {
          continue;
        }

        v14 = (v57 + 2);
        *(a2 + 1) = v14;
LABEL_168:
        if (v14 >= v13 || (v58 = *v14, v58 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 10);
          if (!result)
          {
            return result;
          }

          v59 = *(a2 + 1);
          v13 = *(a2 + 2);
        }

        else
        {
          *(this + 10) = v58;
          v59 = v14 + 1;
          *(a2 + 1) = v59;
        }

        *(this + 24) |= 0x10000u;
        if (v59 != v13 || !*(a2 + 11) && *(a2 + 6) != *(a2 + 10))
        {
          continue;
        }

        *(a2 + 8) = 0;
        result = 1;
        *(a2 + 36) = 1;
        return result;
      case 4u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_47;
        }

        v22 = *(a2 + 1);
        v10 = *(a2 + 2);
        goto LABEL_64;
      case 5u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_47;
        }

        v17 = *(a2 + 1);
        v10 = *(a2 + 2);
        goto LABEL_72;
      case 6u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_47;
        }

        v26 = *(a2 + 1);
        v10 = *(a2 + 2);
        goto LABEL_80;
      case 7u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_47;
        }

        v28 = *(a2 + 1);
        v10 = *(a2 + 2);
        goto LABEL_88;
      case 8u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_47;
        }

        v23 = *(a2 + 1);
        v10 = *(a2 + 2);
        goto LABEL_96;
      case 9u:
        if (v8 != 2)
        {
          goto LABEL_47;
        }

        v30 = *(this + 24);
        goto LABEL_104;
      case 0xAu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_47;
        }

        v19 = *(a2 + 1);
        v13 = *(a2 + 2);
        goto LABEL_110;
      case 0xBu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_47;
        }

        v29 = *(a2 + 1);
        v13 = *(a2 + 2);
        goto LABEL_118;
      case 0xCu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_47;
        }

        v16 = *(a2 + 1);
        v13 = *(a2 + 2);
        goto LABEL_126;
      case 0xDu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_47;
        }

        v18 = *(a2 + 1);
        v13 = *(a2 + 2);
        goto LABEL_134;
      case 0xEu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_47;
        }

        v27 = *(a2 + 1);
        v13 = *(a2 + 2);
        goto LABEL_142;
      case 0xFu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_47;
        }

        v15 = *(a2 + 1);
        v13 = *(a2 + 2);
        goto LABEL_150;
      case 0x10u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_47;
        }

        v21 = *(a2 + 1);
        v13 = *(a2 + 2);
        goto LABEL_159;
      case 0x11u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_47;
        }

        v14 = *(a2 + 1);
        v13 = *(a2 + 2);
        goto LABEL_168;
      default:
LABEL_47:
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

uint64_t awd::metrics::BchannelTransmitStatistics::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 96);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFixed32(1, *(this + 16), a2, a4);
    v6 = *(v5 + 96);
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

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(2, *(v5 + 8), a2, a4);
  v6 = *(v5 + 96);
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
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(3, *(v5 + 24), a2, a4);
  v6 = *(v5 + 96);
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
  v6 = *(v5 + 96);
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
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(5, *(v5 + 32), a2, a4);
  v6 = *(v5 + 96);
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
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(6, *(v5 + 36), a2, a4);
  v6 = *(v5 + 96);
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
  v6 = *(v5 + 96);
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
  v6 = *(v5 + 96);
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
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
  v6 = *(v5 + 96);
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
  v6 = *(v5 + 96);
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
  v6 = *(v5 + 96);
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
  v6 = *(v5 + 96);
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
  v6 = *(v5 + 96);
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
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xE, *(v5 + 72), a2, a4);
  v6 = *(v5 + 96);
  if ((v6 & 0x4000) == 0)
  {
LABEL_16:
    if ((v6 & 0x8000) == 0)
    {
      goto LABEL_17;
    }

LABEL_34:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x10, *(v5 + 88), a2, a4);
    if ((*(v5 + 96) & 0x10000) == 0)
    {
      return this;
    }

    goto LABEL_35;
  }

LABEL_33:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xF, *(v5 + 76), a2, a4);
  v6 = *(v5 + 96);
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
  v7 = *(v5 + 80);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(0x11, v7, a2, a4);
}

uint64_t awd::metrics::BchannelTransmitStatistics::ByteSize(awd::metrics::BchannelTransmitStatistics *this, unint64_t a2)
{
  v3 = *(this + 24);
  if (!v3)
  {
    v5 = 0;
    goto LABEL_29;
  }

  v4 = ((v3 << 31) >> 31) & 5;
  if ((v3 & 2) != 0)
  {
    v4 += wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 1)) + 1;
    v3 = *(this + 24);
    if ((v3 & 4) == 0)
    {
LABEL_4:
      if ((v3 & 8) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_9;
    }
  }

  else if ((v3 & 4) == 0)
  {
    goto LABEL_4;
  }

  v4 += wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 3)) + 1;
  v3 = *(this + 24);
  if ((v3 & 8) == 0)
  {
    goto LABEL_13;
  }

LABEL_9:
  v6 = *(this + 5);
  if (v6 >= 0x80)
  {
    v7 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v6) + 1;
    v3 = *(this + 24);
  }

  else
  {
    v7 = 2;
  }

  v4 += v7;
LABEL_13:
  v5 = ((v3 >> 3) & 2) + v4;
  if ((v3 & 0x20) != 0)
  {
    v8 = *(this + 9);
    if (v8 >= 0x80)
    {
      v9 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v8) + 1;
      v3 = *(this + 24);
    }

    else
    {
      v9 = 2;
    }

    v5 = (v9 + v5);
    if ((v3 & 0x40) == 0)
    {
LABEL_15:
      if ((v3 & 0x80) == 0)
      {
        goto LABEL_29;
      }

      goto LABEL_25;
    }
  }

  else if ((v3 & 0x40) == 0)
  {
    goto LABEL_15;
  }

  v10 = *(this + 10);
  if (v10 >= 0x80)
  {
    v11 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v10) + 1;
    v3 = *(this + 24);
  }

  else
  {
    v11 = 2;
  }

  v5 = (v11 + v5);
  if ((v3 & 0x80) != 0)
  {
LABEL_25:
    v12 = *(this + 11);
    if (v12 >= 0x80)
    {
      v13 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v12) + 1;
      v3 = *(this + 24);
    }

    else
    {
      v13 = 2;
    }

    v5 = (v13 + v5);
  }

LABEL_29:
  if ((v3 & 0xFF00) == 0)
  {
    goto LABEL_38;
  }

  if ((v3 & 0x100) != 0)
  {
    v15 = *(this + 6);
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
      v3 = *(this + 24);
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

    v5 = (v5 + v20 + v16 + 1);
    if ((v3 & 0x200) == 0)
    {
LABEL_32:
      if ((v3 & 0x400) == 0)
      {
        goto LABEL_33;
      }

      goto LABEL_54;
    }
  }

  else if ((v3 & 0x200) == 0)
  {
    goto LABEL_32;
  }

  v21 = *(this + 14);
  if (v21 >= 0x80)
  {
    v22 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v21) + 1;
    v3 = *(this + 24);
  }

  else
  {
    v22 = 2;
  }

  v5 = (v22 + v5);
  if ((v3 & 0x400) == 0)
  {
LABEL_33:
    if ((v3 & 0x800) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_58;
  }

LABEL_54:
  v23 = *(this + 15);
  if (v23 >= 0x80)
  {
    v24 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v23) + 1;
    v3 = *(this + 24);
  }

  else
  {
    v24 = 2;
  }

  v5 = (v24 + v5);
  if ((v3 & 0x800) == 0)
  {
LABEL_34:
    if ((v3 & 0x1000) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_62;
  }

LABEL_58:
  v25 = *(this + 16);
  if (v25 >= 0x80)
  {
    v26 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v25) + 1;
    v3 = *(this + 24);
  }

  else
  {
    v26 = 2;
  }

  v5 = (v26 + v5);
  if ((v3 & 0x1000) == 0)
  {
LABEL_35:
    if ((v3 & 0x2000) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_66;
  }

LABEL_62:
  v27 = *(this + 17);
  if (v27 >= 0x80)
  {
    v28 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v27) + 1;
    v3 = *(this + 24);
  }

  else
  {
    v28 = 2;
  }

  v5 = (v28 + v5);
  if ((v3 & 0x2000) == 0)
  {
LABEL_36:
    if ((v3 & 0x4000) == 0)
    {
      goto LABEL_37;
    }

    goto LABEL_70;
  }

LABEL_66:
  v29 = *(this + 18);
  if (v29 >= 0x80)
  {
    v30 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v29) + 1;
    v3 = *(this + 24);
  }

  else
  {
    v30 = 2;
  }

  v5 = (v30 + v5);
  if ((v3 & 0x4000) == 0)
  {
LABEL_37:
    if ((v3 & 0x8000) == 0)
    {
      goto LABEL_38;
    }

LABEL_74:
    v33 = *(this + 22);
    if (v33 >= 0x80)
    {
      v34 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v33) + 2;
      v3 = *(this + 24);
    }

    else
    {
      v34 = 3;
    }

    v5 = (v34 + v5);
    if ((v3 & 0x10000) != 0)
    {
      goto LABEL_39;
    }

    goto LABEL_40;
  }

LABEL_70:
  v31 = *(this + 19);
  if (v31 >= 0x80)
  {
    v32 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v31) + 1;
    v3 = *(this + 24);
  }

  else
  {
    v32 = 2;
  }

  v5 = (v32 + v5);
  if ((v3 & 0x8000) != 0)
  {
    goto LABEL_74;
  }

LABEL_38:
  if ((v3 & 0x10000) != 0)
  {
LABEL_39:
    v5 = v5 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 10)) + 2;
  }

LABEL_40:
  *(this + 23) = v5;
  return v5;
}

void awd::metrics::BchannelTransmitStatistics::CheckTypeAndMergeFrom(const std::string **this, const std::string **lpsrc)
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

  v4 = *(lpsrc + 24);
  if (!v4)
  {
    goto LABEL_14;
  }

  if (v4)
  {
    v8 = *(lpsrc + 4);
    *(this + 24) |= 1u;
    *(this + 4) = v8;
    v4 = *(lpsrc + 24);
    if ((v4 & 2) == 0)
    {
LABEL_7:
      if ((v4 & 4) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_29;
    }
  }

  else if ((v4 & 2) == 0)
  {
    goto LABEL_7;
  }

  v9 = lpsrc[1];
  *(this + 24) |= 2u;
  this[1] = v9;
  v4 = *(lpsrc + 24);
  if ((v4 & 4) == 0)
  {
LABEL_8:
    if ((v4 & 8) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_30;
  }

LABEL_29:
  v10 = lpsrc[3];
  *(this + 24) |= 4u;
  this[3] = v10;
  v4 = *(lpsrc + 24);
  if ((v4 & 8) == 0)
  {
LABEL_9:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_31;
  }

LABEL_30:
  v11 = *(lpsrc + 5);
  *(this + 24) |= 8u;
  *(this + 5) = v11;
  v4 = *(lpsrc + 24);
  if ((v4 & 0x10) == 0)
  {
LABEL_10:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_11;
    }

LABEL_32:
    v13 = *(lpsrc + 9);
    *(this + 24) |= 0x20u;
    *(this + 9) = v13;
    v4 = *(lpsrc + 24);
    if ((v4 & 0x40) == 0)
    {
LABEL_12:
      if ((v4 & 0x80) == 0)
      {
        goto LABEL_14;
      }

      goto LABEL_13;
    }

    goto LABEL_33;
  }

LABEL_31:
  v12 = *(lpsrc + 32);
  *(this + 24) |= 0x10u;
  *(this + 32) = v12;
  v4 = *(lpsrc + 24);
  if ((v4 & 0x20) != 0)
  {
    goto LABEL_32;
  }

LABEL_11:
  if ((v4 & 0x40) == 0)
  {
    goto LABEL_12;
  }

LABEL_33:
  v14 = *(lpsrc + 10);
  *(this + 24) |= 0x40u;
  *(this + 10) = v14;
  v4 = *(lpsrc + 24);
  if ((v4 & 0x80) != 0)
  {
LABEL_13:
    v5 = *(lpsrc + 11);
    *(this + 24) |= 0x80u;
    *(this + 11) = v5;
    v4 = *(lpsrc + 24);
  }

LABEL_14:
  if ((v4 & 0xFF00) == 0)
  {
    goto LABEL_24;
  }

  if ((v4 & 0x100) != 0)
  {
    v15 = lpsrc[6];
    *(this + 24) |= 0x100u;
    v16 = this[6];
    if (v16 == MEMORY[0x1E69E5958])
    {
      operator new();
    }

    std::string::operator=(v16, v15);
    v4 = *(lpsrc + 24);
    if ((v4 & 0x200) == 0)
    {
LABEL_17:
      if ((v4 & 0x400) == 0)
      {
        goto LABEL_18;
      }

      goto LABEL_39;
    }
  }

  else if ((v4 & 0x200) == 0)
  {
    goto LABEL_17;
  }

  v17 = *(lpsrc + 14);
  *(this + 24) |= 0x200u;
  *(this + 14) = v17;
  v4 = *(lpsrc + 24);
  if ((v4 & 0x400) == 0)
  {
LABEL_18:
    if ((v4 & 0x800) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_40;
  }

LABEL_39:
  v18 = *(lpsrc + 15);
  *(this + 24) |= 0x400u;
  *(this + 15) = v18;
  v4 = *(lpsrc + 24);
  if ((v4 & 0x800) == 0)
  {
LABEL_19:
    if ((v4 & 0x1000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_41;
  }

LABEL_40:
  v19 = *(lpsrc + 16);
  *(this + 24) |= 0x800u;
  *(this + 16) = v19;
  v4 = *(lpsrc + 24);
  if ((v4 & 0x1000) == 0)
  {
LABEL_20:
    if ((v4 & 0x2000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_42;
  }

LABEL_41:
  v20 = *(lpsrc + 17);
  *(this + 24) |= 0x1000u;
  *(this + 17) = v20;
  v4 = *(lpsrc + 24);
  if ((v4 & 0x2000) == 0)
  {
LABEL_21:
    if ((v4 & 0x4000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_43;
  }

LABEL_42:
  v21 = *(lpsrc + 18);
  *(this + 24) |= 0x2000u;
  *(this + 18) = v21;
  v4 = *(lpsrc + 24);
  if ((v4 & 0x4000) == 0)
  {
LABEL_22:
    if ((v4 & 0x8000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_23;
  }

LABEL_43:
  v22 = *(lpsrc + 19);
  *(this + 24) |= 0x4000u;
  *(this + 19) = v22;
  v4 = *(lpsrc + 24);
  if ((v4 & 0x8000) != 0)
  {
LABEL_23:
    v6 = *(lpsrc + 22);
    *(this + 24) |= 0x8000u;
    *(this + 22) = v6;
    v4 = *(lpsrc + 24);
  }

LABEL_24:
  if ((v4 & 0x10000) != 0)
  {
    v7 = lpsrc[10];
    *(this + 24) |= 0x10000u;
    this[10] = v7;
  }
}

void sub_1E4CFF384(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::metrics::BchannelReceiveStatistics::~BchannelReceiveStatistics(awd::metrics::BchannelReceiveStatistics *this)
{
  *this = &unk_1F5EC6010;
  awd::metrics::BchannelTransmitStatistics::SharedDtor(*(this + 6));

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_1F5EC6010;
  awd::metrics::BchannelTransmitStatistics::SharedDtor(*(this + 6));
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  JUMPOUT(0x1E69235B0);
}

uint64_t awd::metrics::BchannelReceiveStatistics::Clear(uint64_t this)
{
  v1 = *(this + 96);
  if (v1)
  {
    *(this + 40) = 0;
    *(this + 36) = 0;
    *(this + 16) = 0;
    *(this + 24) = 0;
    *(this + 8) = 0;
    *(this + 32) = 0;
  }

  if ((v1 & 0xFF00) != 0)
  {
    if ((v1 & 0x100) != 0)
    {
      v2 = *(this + 48);
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

    *(this + 88) = 0;
    *(this + 64) = 0;
    *(this + 72) = 0;
    *(this + 56) = 0;
    v1 = *(this + 96);
  }

  if ((v1 & 0xFF0000) != 0)
  {
    *(this + 80) = 0;
  }

  *(this + 96) = 0;
  return this;
}

uint64_t awd::metrics::BchannelReceiveStatistics::MergePartialFromCodedStream(awd::metrics::BchannelReceiveStatistics *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
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

    v8 = TagFallback & 7;
    switch(TagFallback >> 3)
    {
      case 1u:
        if (v8 != 5)
        {
          goto LABEL_47;
        }

        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a2, this + 4);
        if (result)
        {
          *(this + 24) |= 1u;
          v11 = *(a2 + 1);
          v10 = *(a2 + 2);
          if (v11 < v10 && *v11 == 16)
          {
            v12 = v11 + 1;
            *(a2 + 1) = v12;
            goto LABEL_35;
          }

          continue;
        }

        return result;
      case 2u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_47;
        }

        v12 = *(a2 + 1);
        v10 = *(a2 + 2);
LABEL_35:
        if (v12 < v10)
        {
          v24 = *v12;
          if ((v24 & 0x8000000000000000) == 0)
          {
            *(this + 1) = v24;
            v25 = v12 + 1;
            *(a2 + 1) = v25;
LABEL_53:
            *(this + 24) |= 2u;
            if (v25 < v10 && *v25 == 24)
            {
              v20 = v25 + 1;
              *(a2 + 1) = v20;
              goto LABEL_56;
            }

            continue;
          }
        }

        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 1);
        if (result)
        {
          v25 = *(a2 + 1);
          v10 = *(a2 + 2);
          goto LABEL_53;
        }

        break;
      case 3u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_47;
        }

        v20 = *(a2 + 1);
        v10 = *(a2 + 2);
LABEL_56:
        if (v20 >= v10 || (v31 = *v20, v31 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 3);
          if (!result)
          {
            return result;
          }

          v32 = *(a2 + 1);
          v10 = *(a2 + 2);
        }

        else
        {
          *(this + 3) = v31;
          v32 = v20 + 1;
          *(a2 + 1) = v32;
        }

        *(this + 24) |= 4u;
        if (v32 >= v10 || *v32 != 32)
        {
          continue;
        }

        v22 = v32 + 1;
        *(a2 + 1) = v22;
LABEL_64:
        if (v22 >= v10 || (v33 = *v22, v33 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 5);
          if (!result)
          {
            return result;
          }

          v34 = *(a2 + 1);
          v10 = *(a2 + 2);
        }

        else
        {
          *(this + 5) = v33;
          v34 = v22 + 1;
          *(a2 + 1) = v34;
        }

        *(this + 24) |= 8u;
        if (v34 >= v10 || *v34 != 40)
        {
          continue;
        }

        v17 = v34 + 1;
        *(a2 + 1) = v17;
LABEL_72:
        v60 = 0;
        if (v17 >= v10 || (v35 = *v17, (v35 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v60);
          if (!result)
          {
            return result;
          }

          v35 = v60;
          v36 = *(a2 + 1);
          v10 = *(a2 + 2);
        }

        else
        {
          v36 = v17 + 1;
          *(a2 + 1) = v36;
        }

        *(this + 32) = v35 != 0;
        *(this + 24) |= 0x10u;
        if (v36 >= v10 || *v36 != 48)
        {
          continue;
        }

        v26 = v36 + 1;
        *(a2 + 1) = v26;
LABEL_80:
        if (v26 >= v10 || (v37 = *v26, v37 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 9);
          if (!result)
          {
            return result;
          }

          v38 = *(a2 + 1);
          v10 = *(a2 + 2);
        }

        else
        {
          *(this + 9) = v37;
          v38 = v26 + 1;
          *(a2 + 1) = v38;
        }

        *(this + 24) |= 0x20u;
        if (v38 >= v10 || *v38 != 56)
        {
          continue;
        }

        v28 = v38 + 1;
        *(a2 + 1) = v28;
LABEL_88:
        if (v28 >= v10 || (v39 = *v28, v39 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 10);
          if (!result)
          {
            return result;
          }

          v40 = *(a2 + 1);
          v10 = *(a2 + 2);
        }

        else
        {
          *(this + 10) = v39;
          v40 = v28 + 1;
          *(a2 + 1) = v40;
        }

        *(this + 24) |= 0x40u;
        if (v40 >= v10 || *v40 != 64)
        {
          continue;
        }

        v23 = v40 + 1;
        *(a2 + 1) = v23;
LABEL_96:
        if (v23 >= v10 || (v41 = *v23, v41 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 11);
          if (!result)
          {
            return result;
          }

          v42 = *(a2 + 1);
          v10 = *(a2 + 2);
        }

        else
        {
          *(this + 11) = v41;
          v42 = v23 + 1;
          *(a2 + 1) = v42;
        }

        v30 = *(this + 24) | 0x80;
        *(this + 24) = v30;
        if (v42 >= v10 || *v42 != 74)
        {
          continue;
        }

        *(a2 + 1) = v42 + 1;
LABEL_104:
        *(this + 24) = v30 | 0x100;
        if (*(this + 6) == v5)
        {
          operator new();
        }

        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
        if (!result)
        {
          return result;
        }

        v43 = *(a2 + 1);
        v13 = *(a2 + 2);
        if (v43 >= v13 || *v43 != 80)
        {
          continue;
        }

        v19 = v43 + 1;
        *(a2 + 1) = v19;
LABEL_110:
        if (v19 >= v13 || (v44 = *v19, v44 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 14);
          if (!result)
          {
            return result;
          }

          v45 = *(a2 + 1);
          v13 = *(a2 + 2);
        }

        else
        {
          *(this + 14) = v44;
          v45 = v19 + 1;
          *(a2 + 1) = v45;
        }

        *(this + 24) |= 0x200u;
        if (v45 >= v13 || *v45 != 88)
        {
          continue;
        }

        v29 = v45 + 1;
        *(a2 + 1) = v29;
LABEL_118:
        if (v29 >= v13 || (v46 = *v29, v46 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 15);
          if (!result)
          {
            return result;
          }

          v47 = *(a2 + 1);
          v13 = *(a2 + 2);
        }

        else
        {
          *(this + 15) = v46;
          v47 = v29 + 1;
          *(a2 + 1) = v47;
        }

        *(this + 24) |= 0x400u;
        if (v47 >= v13 || *v47 != 96)
        {
          continue;
        }

        v16 = v47 + 1;
        *(a2 + 1) = v16;
LABEL_126:
        if (v16 >= v13 || (v48 = *v16, v48 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 16);
          if (!result)
          {
            return result;
          }

          v49 = *(a2 + 1);
          v13 = *(a2 + 2);
        }

        else
        {
          *(this + 16) = v48;
          v49 = v16 + 1;
          *(a2 + 1) = v49;
        }

        *(this + 24) |= 0x800u;
        if (v49 >= v13 || *v49 != 104)
        {
          continue;
        }

        v18 = v49 + 1;
        *(a2 + 1) = v18;
LABEL_134:
        if (v18 >= v13 || (v50 = *v18, v50 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 17);
          if (!result)
          {
            return result;
          }

          v51 = *(a2 + 1);
          v13 = *(a2 + 2);
        }

        else
        {
          *(this + 17) = v50;
          v51 = v18 + 1;
          *(a2 + 1) = v51;
        }

        *(this + 24) |= 0x1000u;
        if (v51 >= v13 || *v51 != 112)
        {
          continue;
        }

        v27 = v51 + 1;
        *(a2 + 1) = v27;
LABEL_142:
        if (v27 >= v13 || (v52 = *v27, v52 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 18);
          if (!result)
          {
            return result;
          }

          v53 = *(a2 + 1);
          v13 = *(a2 + 2);
        }

        else
        {
          *(this + 18) = v52;
          v53 = v27 + 1;
          *(a2 + 1) = v53;
        }

        *(this + 24) |= 0x2000u;
        if (v53 >= v13 || *v53 != 120)
        {
          continue;
        }

        v15 = v53 + 1;
        *(a2 + 1) = v15;
LABEL_150:
        if (v15 >= v13 || (v54 = *v15, v54 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 19);
          if (!result)
          {
            return result;
          }

          v55 = *(a2 + 1);
          v13 = *(a2 + 2);
        }

        else
        {
          *(this + 19) = v54;
          v55 = (v15 + 1);
          *(a2 + 1) = v55;
        }

        *(this + 24) |= 0x4000u;
        if (v13 - v55 < 2 || *v55 != 128 || v55[1] != 1)
        {
          continue;
        }

        v21 = (v55 + 2);
        *(a2 + 1) = v21;
LABEL_159:
        if (v21 >= v13 || (v56 = *v21, v56 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 22);
          if (!result)
          {
            return result;
          }

          v57 = *(a2 + 1);
          v13 = *(a2 + 2);
        }

        else
        {
          *(this + 22) = v56;
          v57 = (v21 + 1);
          *(a2 + 1) = v57;
        }

        *(this + 24) |= 0x8000u;
        if (v13 - v57 < 2 || *v57 != 136 || v57[1] != 1)
        {
          continue;
        }

        v14 = (v57 + 2);
        *(a2 + 1) = v14;
LABEL_168:
        if (v14 >= v13 || (v58 = *v14, v58 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 10);
          if (!result)
          {
            return result;
          }

          v59 = *(a2 + 1);
          v13 = *(a2 + 2);
        }

        else
        {
          *(this + 10) = v58;
          v59 = v14 + 1;
          *(a2 + 1) = v59;
        }

        *(this + 24) |= 0x10000u;
        if (v59 != v13 || !*(a2 + 11) && *(a2 + 6) != *(a2 + 10))
        {
          continue;
        }

        *(a2 + 8) = 0;
        result = 1;
        *(a2 + 36) = 1;
        return result;
      case 4u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_47;
        }

        v22 = *(a2 + 1);
        v10 = *(a2 + 2);
        goto LABEL_64;
      case 5u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_47;
        }

        v17 = *(a2 + 1);
        v10 = *(a2 + 2);
        goto LABEL_72;
      case 6u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_47;
        }

        v26 = *(a2 + 1);
        v10 = *(a2 + 2);
        goto LABEL_80;
      case 7u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_47;
        }

        v28 = *(a2 + 1);
        v10 = *(a2 + 2);
        goto LABEL_88;
      case 8u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_47;
        }

        v23 = *(a2 + 1);
        v10 = *(a2 + 2);
        goto LABEL_96;
      case 9u:
        if (v8 != 2)
        {
          goto LABEL_47;
        }

        v30 = *(this + 24);
        goto LABEL_104;
      case 0xAu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_47;
        }

        v19 = *(a2 + 1);
        v13 = *(a2 + 2);
        goto LABEL_110;
      case 0xBu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_47;
        }

        v29 = *(a2 + 1);
        v13 = *(a2 + 2);
        goto LABEL_118;
      case 0xCu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_47;
        }

        v16 = *(a2 + 1);
        v13 = *(a2 + 2);
        goto LABEL_126;
      case 0xDu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_47;
        }

        v18 = *(a2 + 1);
        v13 = *(a2 + 2);
        goto LABEL_134;
      case 0xEu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_47;
        }

        v27 = *(a2 + 1);
        v13 = *(a2 + 2);
        goto LABEL_142;
      case 0xFu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_47;
        }

        v15 = *(a2 + 1);
        v13 = *(a2 + 2);
        goto LABEL_150;
      case 0x10u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_47;
        }

        v21 = *(a2 + 1);
        v13 = *(a2 + 2);
        goto LABEL_159;
      case 0x11u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_47;
        }

        v14 = *(a2 + 1);
        v13 = *(a2 + 2);
        goto LABEL_168;
      default:
LABEL_47:
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

uint64_t awd::metrics::BchannelReceiveStatistics::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 96);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFixed32(1, *(this + 16), a2, a4);
    v6 = *(v5 + 96);
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

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(2, *(v5 + 8), a2, a4);
  v6 = *(v5 + 96);
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
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(3, *(v5 + 24), a2, a4);
  v6 = *(v5 + 96);
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
  v6 = *(v5 + 96);
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
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(5, *(v5 + 32), a2, a4);
  v6 = *(v5 + 96);
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
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(6, *(v5 + 36), a2, a4);
  v6 = *(v5 + 96);
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
  v6 = *(v5 + 96);
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
  v6 = *(v5 + 96);
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
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
  v6 = *(v5 + 96);
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
  v6 = *(v5 + 96);
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
  v6 = *(v5 + 96);
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
  v6 = *(v5 + 96);
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
  v6 = *(v5 + 96);
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
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xE, *(v5 + 72), a2, a4);
  v6 = *(v5 + 96);
  if ((v6 & 0x4000) == 0)
  {
LABEL_16:
    if ((v6 & 0x8000) == 0)
    {
      goto LABEL_17;
    }

LABEL_34:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x10, *(v5 + 88), a2, a4);
    if ((*(v5 + 96) & 0x10000) == 0)
    {
      return this;
    }

    goto LABEL_35;
  }

LABEL_33:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xF, *(v5 + 76), a2, a4);
  v6 = *(v5 + 96);
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
  v7 = *(v5 + 80);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(0x11, v7, a2, a4);
}

uint64_t awd::metrics::BchannelReceiveStatistics::ByteSize(awd::metrics::BchannelReceiveStatistics *this, unint64_t a2)
{
  v3 = *(this + 24);
  if (!v3)
  {
    v5 = 0;
    goto LABEL_29;
  }

  v4 = ((v3 << 31) >> 31) & 5;
  if ((v3 & 2) != 0)
  {
    v4 += wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 1)) + 1;
    v3 = *(this + 24);
    if ((v3 & 4) == 0)
    {
LABEL_4:
      if ((v3 & 8) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_9;
    }
  }

  else if ((v3 & 4) == 0)
  {
    goto LABEL_4;
  }

  v4 += wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 3)) + 1;
  v3 = *(this + 24);
  if ((v3 & 8) == 0)
  {
    goto LABEL_13;
  }

LABEL_9:
  v6 = *(this + 5);
  if (v6 >= 0x80)
  {
    v7 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v6) + 1;
    v3 = *(this + 24);
  }

  else
  {
    v7 = 2;
  }

  v4 += v7;
LABEL_13:
  v5 = ((v3 >> 3) & 2) + v4;
  if ((v3 & 0x20) != 0)
  {
    v8 = *(this + 9);
    if (v8 >= 0x80)
    {
      v9 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v8) + 1;
      v3 = *(this + 24);
    }

    else
    {
      v9 = 2;
    }

    v5 = (v9 + v5);
    if ((v3 & 0x40) == 0)
    {
LABEL_15:
      if ((v3 & 0x80) == 0)
      {
        goto LABEL_29;
      }

      goto LABEL_25;
    }
  }

  else if ((v3 & 0x40) == 0)
  {
    goto LABEL_15;
  }

  v10 = *(this + 10);
  if (v10 >= 0x80)
  {
    v11 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v10) + 1;
    v3 = *(this + 24);
  }

  else
  {
    v11 = 2;
  }

  v5 = (v11 + v5);
  if ((v3 & 0x80) != 0)
  {
LABEL_25:
    v12 = *(this + 11);
    if (v12 >= 0x80)
    {
      v13 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v12) + 1;
      v3 = *(this + 24);
    }

    else
    {
      v13 = 2;
    }

    v5 = (v13 + v5);
  }

LABEL_29:
  if ((v3 & 0xFF00) == 0)
  {
    goto LABEL_38;
  }

  if ((v3 & 0x100) != 0)
  {
    v15 = *(this + 6);
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
      v3 = *(this + 24);
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

    v5 = (v5 + v20 + v16 + 1);
    if ((v3 & 0x200) == 0)
    {
LABEL_32:
      if ((v3 & 0x400) == 0)
      {
        goto LABEL_33;
      }

      goto LABEL_54;
    }
  }

  else if ((v3 & 0x200) == 0)
  {
    goto LABEL_32;
  }

  v21 = *(this + 14);
  if (v21 >= 0x80)
  {
    v22 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v21) + 1;
    v3 = *(this + 24);
  }

  else
  {
    v22 = 2;
  }

  v5 = (v22 + v5);
  if ((v3 & 0x400) == 0)
  {
LABEL_33:
    if ((v3 & 0x800) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_58;
  }

LABEL_54:
  v23 = *(this + 15);
  if (v23 >= 0x80)
  {
    v24 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v23) + 1;
    v3 = *(this + 24);
  }

  else
  {
    v24 = 2;
  }

  v5 = (v24 + v5);
  if ((v3 & 0x800) == 0)
  {
LABEL_34:
    if ((v3 & 0x1000) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_62;
  }

LABEL_58:
  v25 = *(this + 16);
  if (v25 >= 0x80)
  {
    v26 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v25) + 1;
    v3 = *(this + 24);
  }

  else
  {
    v26 = 2;
  }

  v5 = (v26 + v5);
  if ((v3 & 0x1000) == 0)
  {
LABEL_35:
    if ((v3 & 0x2000) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_66;
  }

LABEL_62:
  v27 = *(this + 17);
  if (v27 >= 0x80)
  {
    v28 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v27) + 1;
    v3 = *(this + 24);
  }

  else
  {
    v28 = 2;
  }

  v5 = (v28 + v5);
  if ((v3 & 0x2000) == 0)
  {
LABEL_36:
    if ((v3 & 0x4000) == 0)
    {
      goto LABEL_37;
    }

    goto LABEL_70;
  }

LABEL_66:
  v29 = *(this + 18);
  if (v29 >= 0x80)
  {
    v30 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v29) + 1;
    v3 = *(this + 24);
  }

  else
  {
    v30 = 2;
  }

  v5 = (v30 + v5);
  if ((v3 & 0x4000) == 0)
  {
LABEL_37:
    if ((v3 & 0x8000) == 0)
    {
      goto LABEL_38;
    }

LABEL_74:
    v33 = *(this + 22);
    if (v33 >= 0x80)
    {
      v34 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v33) + 2;
      v3 = *(this + 24);
    }

    else
    {
      v34 = 3;
    }

    v5 = (v34 + v5);
    if ((v3 & 0x10000) != 0)
    {
      goto LABEL_39;
    }

    goto LABEL_40;
  }

LABEL_70:
  v31 = *(this + 19);
  if (v31 >= 0x80)
  {
    v32 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v31) + 1;
    v3 = *(this + 24);
  }

  else
  {
    v32 = 2;
  }

  v5 = (v32 + v5);
  if ((v3 & 0x8000) != 0)
  {
    goto LABEL_74;
  }

LABEL_38:
  if ((v3 & 0x10000) != 0)
  {
LABEL_39:
    v5 = v5 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 10)) + 2;
  }

LABEL_40:
  *(this + 23) = v5;
  return v5;
}

void awd::metrics::BchannelReceiveStatistics::CheckTypeAndMergeFrom(const std::string **this, const std::string **lpsrc)
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

  v4 = *(lpsrc + 24);
  if (!v4)
  {
    goto LABEL_14;
  }

  if (v4)
  {
    v8 = *(lpsrc + 4);
    *(this + 24) |= 1u;
    *(this + 4) = v8;
    v4 = *(lpsrc + 24);
    if ((v4 & 2) == 0)
    {
LABEL_7:
      if ((v4 & 4) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_29;
    }
  }

  else if ((v4 & 2) == 0)
  {
    goto LABEL_7;
  }

  v9 = lpsrc[1];
  *(this + 24) |= 2u;
  this[1] = v9;
  v4 = *(lpsrc + 24);
  if ((v4 & 4) == 0)
  {
LABEL_8:
    if ((v4 & 8) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_30;
  }

LABEL_29:
  v10 = lpsrc[3];
  *(this + 24) |= 4u;
  this[3] = v10;
  v4 = *(lpsrc + 24);
  if ((v4 & 8) == 0)
  {
LABEL_9:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_31;
  }

LABEL_30:
  v11 = *(lpsrc + 5);
  *(this + 24) |= 8u;
  *(this + 5) = v11;
  v4 = *(lpsrc + 24);
  if ((v4 & 0x10) == 0)
  {
LABEL_10:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_11;
    }

LABEL_32:
    v13 = *(lpsrc + 9);
    *(this + 24) |= 0x20u;
    *(this + 9) = v13;
    v4 = *(lpsrc + 24);
    if ((v4 & 0x40) == 0)
    {
LABEL_12:
      if ((v4 & 0x80) == 0)
      {
        goto LABEL_14;
      }

      goto LABEL_13;
    }

    goto LABEL_33;
  }

LABEL_31:
  v12 = *(lpsrc + 32);
  *(this + 24) |= 0x10u;
  *(this + 32) = v12;
  v4 = *(lpsrc + 24);
  if ((v4 & 0x20) != 0)
  {
    goto LABEL_32;
  }

LABEL_11:
  if ((v4 & 0x40) == 0)
  {
    goto LABEL_12;
  }

LABEL_33:
  v14 = *(lpsrc + 10);
  *(this + 24) |= 0x40u;
  *(this + 10) = v14;
  v4 = *(lpsrc + 24);
  if ((v4 & 0x80) != 0)
  {
LABEL_13:
    v5 = *(lpsrc + 11);
    *(this + 24) |= 0x80u;
    *(this + 11) = v5;
    v4 = *(lpsrc + 24);
  }

LABEL_14:
  if ((v4 & 0xFF00) == 0)
  {
    goto LABEL_24;
  }

  if ((v4 & 0x100) != 0)
  {
    v15 = lpsrc[6];
    *(this + 24) |= 0x100u;
    v16 = this[6];
    if (v16 == MEMORY[0x1E69E5958])
    {
      operator new();
    }

    std::string::operator=(v16, v15);
    v4 = *(lpsrc + 24);
    if ((v4 & 0x200) == 0)
    {
LABEL_17:
      if ((v4 & 0x400) == 0)
      {
        goto LABEL_18;
      }

      goto LABEL_39;
    }
  }

  else if ((v4 & 0x200) == 0)
  {
    goto LABEL_17;
  }

  v17 = *(lpsrc + 14);
  *(this + 24) |= 0x200u;
  *(this + 14) = v17;
  v4 = *(lpsrc + 24);
  if ((v4 & 0x400) == 0)
  {
LABEL_18:
    if ((v4 & 0x800) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_40;
  }

LABEL_39:
  v18 = *(lpsrc + 15);
  *(this + 24) |= 0x400u;
  *(this + 15) = v18;
  v4 = *(lpsrc + 24);
  if ((v4 & 0x800) == 0)
  {
LABEL_19:
    if ((v4 & 0x1000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_41;
  }

LABEL_40:
  v19 = *(lpsrc + 16);
  *(this + 24) |= 0x800u;
  *(this + 16) = v19;
  v4 = *(lpsrc + 24);
  if ((v4 & 0x1000) == 0)
  {
LABEL_20:
    if ((v4 & 0x2000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_42;
  }

LABEL_41:
  v20 = *(lpsrc + 17);
  *(this + 24) |= 0x1000u;
  *(this + 17) = v20;
  v4 = *(lpsrc + 24);
  if ((v4 & 0x2000) == 0)
  {
LABEL_21:
    if ((v4 & 0x4000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_43;
  }

LABEL_42:
  v21 = *(lpsrc + 18);
  *(this + 24) |= 0x2000u;
  *(this + 18) = v21;
  v4 = *(lpsrc + 24);
  if ((v4 & 0x4000) == 0)
  {
LABEL_22:
    if ((v4 & 0x8000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_23;
  }

LABEL_43:
  v22 = *(lpsrc + 19);
  *(this + 24) |= 0x4000u;
  *(this + 19) = v22;
  v4 = *(lpsrc + 24);
  if ((v4 & 0x8000) != 0)
  {
LABEL_23:
    v6 = *(lpsrc + 22);
    *(this + 24) |= 0x8000u;
    *(this + 22) = v6;
    v4 = *(lpsrc + 24);
  }

LABEL_24:
  if ((v4 & 0x10000) != 0)
  {
    v7 = lpsrc[10];
    *(this + 24) |= 0x10000u;
    this[10] = v7;
  }
}

void sub_1E4D005B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::metrics::Local_SoundUMB_Dchannel_XR_StatisticsSummaryReportBlock::~Local_SoundUMB_Dchannel_XR_StatisticsSummaryReportBlock(awd::metrics::Local_SoundUMB_Dchannel_XR_StatisticsSummaryReportBlock *this)
{
  *this = &unk_1F5EC6088;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_1F5EC6088;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  JUMPOUT(0x1E69235B0);
}

uint64_t awd::metrics::Local_SoundUMB_Dchannel_XR_StatisticsSummaryReportBlock::Clear(uint64_t this)
{
  v1 = *(this + 72);
  if (v1)
  {
    *(this + 24) = 0u;
    *(this + 8) = 0u;
  }

  if ((v1 & 0xFF00) != 0)
  {
    *(this + 40) = 0;
    *(this + 48) = 0;
    *(this + 64) = 0;
    *(this + 56) = 0;
  }

  *(this + 72) = 0;
  return this;
}

uint64_t awd::metrics::Local_SoundUMB_Dchannel_XR_StatisticsSummaryReportBlock::MergePartialFromCodedStream(awd::metrics::Local_SoundUMB_Dchannel_XR_StatisticsSummaryReportBlock *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
{
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
        if (v7 != 5)
        {
          goto LABEL_47;
        }

        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a2, this + 2);
        if (result)
        {
          *(this + 18) |= 1u;
          v9 = *(a2 + 1);
          if (v9 < *(a2 + 2) && *v9 == 21)
          {
            *(a2 + 1) = v9 + 1;
            goto LABEL_27;
          }

          continue;
        }

        return result;
      case 2u:
        if (v7 != 5)
        {
          goto LABEL_47;
        }

LABEL_27:
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a2, this + 3);
        if (result)
        {
          *(this + 18) |= 2u;
          v17 = *(a2 + 1);
          if (v17 < *(a2 + 2) && *v17 == 29)
          {
            *(a2 + 1) = v17 + 1;
            goto LABEL_31;
          }

          continue;
        }

        return result;
      case 3u:
        if (v7 != 5)
        {
          goto LABEL_47;
        }

LABEL_31:
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a2, this + 4);
        if (result)
        {
          *(this + 18) |= 4u;
          v18 = *(a2 + 1);
          v10 = *(a2 + 2);
          if (v18 < v10 && *v18 == 32)
          {
            v15 = v18 + 1;
            *(a2 + 1) = v15;
            goto LABEL_35;
          }

          continue;
        }

        return result;
      case 4u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_47;
        }

        v15 = *(a2 + 1);
        v10 = *(a2 + 2);
LABEL_35:
        if (v15 < v10)
        {
          v19 = *v15;
          if ((v19 & 0x80000000) == 0)
          {
            *(this + 5) = v19;
            v20 = v15 + 1;
            *(a2 + 1) = v20;
LABEL_53:
            *(this + 18) |= 8u;
            if (v20 < v10 && *v20 == 40)
            {
              v12 = v20 + 1;
              *(a2 + 1) = v12;
              goto LABEL_56;
            }

            continue;
          }
        }

        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 5);
        if (result)
        {
          v20 = *(a2 + 1);
          v10 = *(a2 + 2);
          goto LABEL_53;
        }

        break;
      case 5u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_47;
        }

        v12 = *(a2 + 1);
        v10 = *(a2 + 2);
LABEL_56:
        if (v12 >= v10 || (v26 = *v12, v26 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 6);
          if (!result)
          {
            return result;
          }

          v27 = *(a2 + 1);
          v10 = *(a2 + 2);
        }

        else
        {
          *(this + 6) = v26;
          v27 = v12 + 1;
          *(a2 + 1) = v27;
        }

        *(this + 18) |= 0x10u;
        if (v27 >= v10 || *v27 != 48)
        {
          continue;
        }

        v21 = v27 + 1;
        *(a2 + 1) = v21;
LABEL_64:
        if (v21 >= v10 || (v28 = *v21, v28 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 7);
          if (!result)
          {
            return result;
          }

          v29 = *(a2 + 1);
          v10 = *(a2 + 2);
        }

        else
        {
          *(this + 7) = v28;
          v29 = v21 + 1;
          *(a2 + 1) = v29;
        }

        *(this + 18) |= 0x20u;
        if (v29 >= v10 || *v29 != 56)
        {
          continue;
        }

        v23 = v29 + 1;
        *(a2 + 1) = v23;
LABEL_72:
        if (v23 >= v10 || (v30 = *v23, v30 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 8);
          if (!result)
          {
            return result;
          }

          v31 = *(a2 + 1);
          v10 = *(a2 + 2);
        }

        else
        {
          *(this + 8) = v30;
          v31 = v23 + 1;
          *(a2 + 1) = v31;
        }

        *(this + 18) |= 0x40u;
        if (v31 >= v10 || *v31 != 64)
        {
          continue;
        }

        v16 = v31 + 1;
        *(a2 + 1) = v16;
LABEL_80:
        if (v16 >= v10 || (v32 = *v16, v32 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 9);
          if (!result)
          {
            return result;
          }

          v33 = *(a2 + 1);
          v10 = *(a2 + 2);
        }

        else
        {
          *(this + 9) = v32;
          v33 = v16 + 1;
          *(a2 + 1) = v33;
        }

        *(this + 18) |= 0x80u;
        if (v33 >= v10 || *v33 != 72)
        {
          continue;
        }

        v25 = v33 + 1;
        *(a2 + 1) = v25;
LABEL_88:
        if (v25 >= v10 || (v34 = *v25, v34 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 10);
          if (!result)
          {
            return result;
          }

          v35 = *(a2 + 1);
          v10 = *(a2 + 2);
        }

        else
        {
          *(this + 10) = v34;
          v35 = v25 + 1;
          *(a2 + 1) = v35;
        }

        *(this + 18) |= 0x100u;
        if (v35 >= v10 || *v35 != 80)
        {
          continue;
        }

        v14 = v35 + 1;
        *(a2 + 1) = v14;
LABEL_96:
        if (v14 >= v10 || (v36 = *v14, v36 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 11);
          if (!result)
          {
            return result;
          }

          v37 = *(a2 + 1);
          v10 = *(a2 + 2);
        }

        else
        {
          *(this + 11) = v36;
          v37 = v14 + 1;
          *(a2 + 1) = v37;
        }

        *(this + 18) |= 0x200u;
        if (v37 >= v10 || *v37 != 88)
        {
          continue;
        }

        v24 = v37 + 1;
        *(a2 + 1) = v24;
LABEL_104:
        if (v24 >= v10 || (v38 = *v24, v38 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 12);
          if (!result)
          {
            return result;
          }

          v39 = *(a2 + 1);
          v10 = *(a2 + 2);
        }

        else
        {
          *(this + 12) = v38;
          v39 = v24 + 1;
          *(a2 + 1) = v39;
        }

        *(this + 18) |= 0x400u;
        if (v39 >= v10 || *v39 != 96)
        {
          continue;
        }

        v11 = v39 + 1;
        *(a2 + 1) = v11;
LABEL_112:
        if (v11 >= v10 || (v40 = *v11, v40 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 13);
          if (!result)
          {
            return result;
          }

          v41 = *(a2 + 1);
          v10 = *(a2 + 2);
        }

        else
        {
          *(this + 13) = v40;
          v41 = v11 + 1;
          *(a2 + 1) = v41;
        }

        *(this + 18) |= 0x800u;
        if (v41 >= v10 || *v41 != 104)
        {
          continue;
        }

        v13 = v41 + 1;
        *(a2 + 1) = v13;
LABEL_120:
        if (v13 >= v10 || (v42 = *v13, v42 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 16);
          if (!result)
          {
            return result;
          }

          v43 = *(a2 + 1);
          v10 = *(a2 + 2);
        }

        else
        {
          *(this + 16) = v42;
          v43 = v13 + 1;
          *(a2 + 1) = v43;
        }

        *(this + 18) |= 0x1000u;
        if (v43 >= v10 || *v43 != 112)
        {
          continue;
        }

        v22 = v43 + 1;
        *(a2 + 1) = v22;
LABEL_128:
        if (v22 >= v10 || (v44 = *v22, v44 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 7);
          if (!result)
          {
            return result;
          }

          v45 = *(a2 + 1);
          v10 = *(a2 + 2);
        }

        else
        {
          *(this + 7) = v44;
          v45 = v22 + 1;
          *(a2 + 1) = v45;
        }

        *(this + 18) |= 0x2000u;
        if (v45 != v10 || !*(a2 + 11) && *(a2 + 6) != *(a2 + 10))
        {
          continue;
        }

        *(a2 + 8) = 0;
        result = 1;
        *(a2 + 36) = 1;
        return result;
      case 6u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_47;
        }

        v21 = *(a2 + 1);
        v10 = *(a2 + 2);
        goto LABEL_64;
      case 7u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_47;
        }

        v23 = *(a2 + 1);
        v10 = *(a2 + 2);
        goto LABEL_72;
      case 8u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_47;
        }

        v16 = *(a2 + 1);
        v10 = *(a2 + 2);
        goto LABEL_80;
      case 9u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_47;
        }

        v25 = *(a2 + 1);
        v10 = *(a2 + 2);
        goto LABEL_88;
      case 0xAu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_47;
        }

        v14 = *(a2 + 1);
        v10 = *(a2 + 2);
        goto LABEL_96;
      case 0xBu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_47;
        }

        v24 = *(a2 + 1);
        v10 = *(a2 + 2);
        goto LABEL_104;
      case 0xCu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_47;
        }

        v11 = *(a2 + 1);
        v10 = *(a2 + 2);
        goto LABEL_112;
      case 0xDu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_47;
        }

        v13 = *(a2 + 1);
        v10 = *(a2 + 2);
        goto LABEL_120;
      case 0xEu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_47;
        }

        v22 = *(a2 + 1);
        v10 = *(a2 + 2);
        goto LABEL_128;
      default:
LABEL_47:
        if (v7 == 4)
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

uint64_t awd::metrics::Local_SoundUMB_Dchannel_XR_StatisticsSummaryReportBlock::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 72);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFixed32(1, *(this + 8), a2, a4);
    v6 = *(v5 + 72);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_18;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFixed32(2, *(v5 + 12), a2, a4);
  v6 = *(v5 + 72);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_19;
  }

LABEL_18:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFixed32(3, *(v5 + 16), a2, a4);
  v6 = *(v5 + 72);
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_20;
  }

LABEL_19:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(4, *(v5 + 20), a2, a4);
  v6 = *(v5 + 72);
  if ((v6 & 0x10) == 0)
  {
LABEL_6:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_21;
  }

LABEL_20:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(5, *(v5 + 24), a2, a4);
  v6 = *(v5 + 72);
  if ((v6 & 0x20) == 0)
  {
LABEL_7:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_22;
  }

LABEL_21:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(6, *(v5 + 28), a2, a4);
  v6 = *(v5 + 72);
  if ((v6 & 0x40) == 0)
  {
LABEL_8:
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_23;
  }

LABEL_22:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(7, *(v5 + 32), a2, a4);
  v6 = *(v5 + 72);
  if ((v6 & 0x80) == 0)
  {
LABEL_9:
    if ((v6 & 0x100) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_24;
  }

LABEL_23:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(8, *(v5 + 36), a2, a4);
  v6 = *(v5 + 72);
  if ((v6 & 0x100) == 0)
  {
LABEL_10:
    if ((v6 & 0x200) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_25;
  }

LABEL_24:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(9, *(v5 + 40), a2, a4);
  v6 = *(v5 + 72);
  if ((v6 & 0x200) == 0)
  {
LABEL_11:
    if ((v6 & 0x400) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_26;
  }

LABEL_25:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xA, *(v5 + 44), a2, a4);
  v6 = *(v5 + 72);
  if ((v6 & 0x400) == 0)
  {
LABEL_12:
    if ((v6 & 0x800) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_27;
  }

LABEL_26:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xB, *(v5 + 48), a2, a4);
  v6 = *(v5 + 72);
  if ((v6 & 0x800) == 0)
  {
LABEL_13:
    if ((v6 & 0x1000) == 0)
    {
      goto LABEL_14;
    }

LABEL_28:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xD, *(v5 + 64), a2, a4);
    if ((*(v5 + 72) & 0x2000) == 0)
    {
      return this;
    }

    goto LABEL_29;
  }

LABEL_27:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xC, *(v5 + 52), a2, a4);
  v6 = *(v5 + 72);
  if ((v6 & 0x1000) != 0)
  {
    goto LABEL_28;
  }

LABEL_14:
  if ((v6 & 0x2000) == 0)
  {
    return this;
  }

LABEL_29:
  v7 = *(v5 + 56);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(0xE, v7, a2, a4);
}

uint64_t awd::metrics::Local_SoundUMB_Dchannel_XR_StatisticsSummaryReportBlock::ByteSize(awd::metrics::Local_SoundUMB_Dchannel_XR_StatisticsSummaryReportBlock *this, unint64_t a2)
{
  v3 = *(this + 18);
  if (!v3)
  {
    v5 = 0;
    goto LABEL_34;
  }

  v4 = (v3 << 31 >> 31) & 5;
  if ((v3 & 2) != 0)
  {
    v4 += 5;
  }

  if ((v3 & 4) != 0)
  {
    v5 = v4 + 5;
  }

  else
  {
    v5 = v4;
  }

  if ((v3 & 8) != 0)
  {
    v6 = *(this + 5);
    if (v6 >= 0x80)
    {
      v7 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v6) + 1;
      v3 = *(this + 18);
    }

    else
    {
      v7 = 2;
    }

    v5 = (v7 + v5);
    if ((v3 & 0x10) == 0)
    {
LABEL_9:
      if ((v3 & 0x20) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_22;
    }
  }

  else if ((v3 & 0x10) == 0)
  {
    goto LABEL_9;
  }

  v8 = *(this + 6);
  if (v8 >= 0x80)
  {
    v9 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v8) + 1;
    v3 = *(this + 18);
  }

  else
  {
    v9 = 2;
  }

  v5 = (v9 + v5);
  if ((v3 & 0x20) == 0)
  {
LABEL_10:
    if ((v3 & 0x40) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_26;
  }

LABEL_22:
  v10 = *(this + 7);
  if (v10 >= 0x80)
  {
    v11 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v10) + 1;
    v3 = *(this + 18);
  }

  else
  {
    v11 = 2;
  }

  v5 = (v11 + v5);
  if ((v3 & 0x40) == 0)
  {
LABEL_11:
    if ((v3 & 0x80) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_30;
  }

LABEL_26:
  v12 = *(this + 8);
  if (v12 >= 0x80)
  {
    v13 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v12) + 1;
    v3 = *(this + 18);
  }

  else
  {
    v13 = 2;
  }

  v5 = (v13 + v5);
  if ((v3 & 0x80) != 0)
  {
LABEL_30:
    v14 = *(this + 9);
    if (v14 >= 0x80)
    {
      v15 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v14) + 1;
      v3 = *(this + 18);
    }

    else
    {
      v15 = 2;
    }

    v5 = (v15 + v5);
  }

LABEL_34:
  if ((v3 & 0xFF00) == 0)
  {
    goto LABEL_42;
  }

  if ((v3 & 0x100) != 0)
  {
    v17 = *(this + 10);
    if (v17 >= 0x80)
    {
      v18 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v17) + 1;
      v3 = *(this + 18);
    }

    else
    {
      v18 = 2;
    }

    v5 = (v18 + v5);
    if ((v3 & 0x200) == 0)
    {
LABEL_37:
      if ((v3 & 0x400) == 0)
      {
        goto LABEL_38;
      }

      goto LABEL_51;
    }
  }

  else if ((v3 & 0x200) == 0)
  {
    goto LABEL_37;
  }

  v19 = *(this + 11);
  if (v19 >= 0x80)
  {
    v20 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v19) + 1;
    v3 = *(this + 18);
  }

  else
  {
    v20 = 2;
  }

  v5 = (v20 + v5);
  if ((v3 & 0x400) == 0)
  {
LABEL_38:
    if ((v3 & 0x800) == 0)
    {
      goto LABEL_39;
    }

    goto LABEL_55;
  }

LABEL_51:
  v21 = *(this + 12);
  if (v21 >= 0x80)
  {
    v22 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v21) + 1;
    v3 = *(this + 18);
  }

  else
  {
    v22 = 2;
  }

  v5 = (v22 + v5);
  if ((v3 & 0x800) == 0)
  {
LABEL_39:
    if ((v3 & 0x1000) == 0)
    {
      goto LABEL_40;
    }

LABEL_59:
    v25 = *(this + 16);
    if (v25 >= 0x80)
    {
      v26 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v25) + 1;
      v3 = *(this + 18);
    }

    else
    {
      v26 = 2;
    }

    v5 = (v26 + v5);
    if ((v3 & 0x2000) != 0)
    {
      goto LABEL_41;
    }

    goto LABEL_42;
  }

LABEL_55:
  v23 = *(this + 13);
  if (v23 >= 0x80)
  {
    v24 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v23) + 1;
    v3 = *(this + 18);
  }

  else
  {
    v24 = 2;
  }

  v5 = (v24 + v5);
  if ((v3 & 0x1000) != 0)
  {
    goto LABEL_59;
  }

LABEL_40:
  if ((v3 & 0x2000) != 0)
  {
LABEL_41:
    v5 = v5 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 7)) + 1;
  }

LABEL_42:
  *(this + 17) = v5;
  return v5;
}

void awd::metrics::Local_SoundUMB_Dchannel_XR_StatisticsSummaryReportBlock::CheckTypeAndMergeFrom(awd::metrics::Local_SoundUMB_Dchannel_XR_StatisticsSummaryReportBlock *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  if (lpsrc == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v19);
  }

  v4 = *(lpsrc + 18);
  if (!v4)
  {
    goto LABEL_14;
  }

  if (v4)
  {
    v7 = *(lpsrc + 2);
    *(this + 18) |= 1u;
    *(this + 2) = v7;
    v4 = *(lpsrc + 18);
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

  v8 = *(lpsrc + 3);
  *(this + 18) |= 2u;
  *(this + 3) = v8;
  v4 = *(lpsrc + 18);
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
  v9 = *(lpsrc + 4);
  *(this + 18) |= 4u;
  *(this + 4) = v9;
  v4 = *(lpsrc + 18);
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
  v10 = *(lpsrc + 5);
  *(this + 18) |= 8u;
  *(this + 5) = v10;
  v4 = *(lpsrc + 18);
  if ((v4 & 0x10) == 0)
  {
LABEL_10:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_11;
    }

LABEL_28:
    v12 = *(lpsrc + 7);
    *(this + 18) |= 0x20u;
    *(this + 7) = v12;
    v4 = *(lpsrc + 18);
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
  v11 = *(lpsrc + 6);
  *(this + 18) |= 0x10u;
  *(this + 6) = v11;
  v4 = *(lpsrc + 18);
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
  v13 = *(lpsrc + 8);
  *(this + 18) |= 0x40u;
  *(this + 8) = v13;
  v4 = *(lpsrc + 18);
  if ((v4 & 0x80) != 0)
  {
LABEL_13:
    v5 = *(lpsrc + 9);
    *(this + 18) |= 0x80u;
    *(this + 9) = v5;
    v4 = *(lpsrc + 18);
  }

LABEL_14:
  if ((v4 & 0xFF00) == 0)
  {
    return;
  }

  if ((v4 & 0x100) != 0)
  {
    v14 = *(lpsrc + 10);
    *(this + 18) |= 0x100u;
    *(this + 10) = v14;
    v4 = *(lpsrc + 18);
    if ((v4 & 0x200) == 0)
    {
LABEL_17:
      if ((v4 & 0x400) == 0)
      {
        goto LABEL_18;
      }

      goto LABEL_33;
    }
  }

  else if ((v4 & 0x200) == 0)
  {
    goto LABEL_17;
  }

  v15 = *(lpsrc + 11);
  *(this + 18) |= 0x200u;
  *(this + 11) = v15;
  v4 = *(lpsrc + 18);
  if ((v4 & 0x400) == 0)
  {
LABEL_18:
    if ((v4 & 0x800) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_34;
  }

LABEL_33:
  v16 = *(lpsrc + 12);
  *(this + 18) |= 0x400u;
  *(this + 12) = v16;
  v4 = *(lpsrc + 18);
  if ((v4 & 0x800) == 0)
  {
LABEL_19:
    if ((v4 & 0x1000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_35;
  }

LABEL_34:
  v17 = *(lpsrc + 13);
  *(this + 18) |= 0x800u;
  *(this + 13) = v17;
  v4 = *(lpsrc + 18);
  if ((v4 & 0x1000) == 0)
  {
LABEL_20:
    if ((v4 & 0x2000) == 0)
    {
      return;
    }

    goto LABEL_21;
  }

LABEL_35:
  v18 = *(lpsrc + 16);
  *(this + 18) |= 0x1000u;
  *(this + 16) = v18;
  if ((*(lpsrc + 18) & 0x2000) != 0)
  {
LABEL_21:
    v6 = *(lpsrc + 7);
    *(this + 18) |= 0x2000u;
    *(this + 7) = v6;
  }
}

void sub_1E4D013A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::metrics::Remote_SoundUMB_Dchannel_XR_StatisticsSummaryReportBlock::~Remote_SoundUMB_Dchannel_XR_StatisticsSummaryReportBlock(awd::metrics::Remote_SoundUMB_Dchannel_XR_StatisticsSummaryReportBlock *this)
{
  *this = &unk_1F5EC6100;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_1F5EC6100;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  JUMPOUT(0x1E69235B0);
}

uint64_t awd::metrics::Remote_SoundUMB_Dchannel_XR_StatisticsSummaryReportBlock::Clear(uint64_t this)
{
  v1 = *(this + 72);
  if (v1)
  {
    *(this + 24) = 0u;
    *(this + 8) = 0u;
  }

  if ((v1 & 0xFF00) != 0)
  {
    *(this + 40) = 0;
    *(this + 48) = 0;
    *(this + 64) = 0;
    *(this + 56) = 0;
  }

  *(this + 72) = 0;
  return this;
}

uint64_t awd::metrics::Remote_SoundUMB_Dchannel_XR_StatisticsSummaryReportBlock::MergePartialFromCodedStream(awd::metrics::Remote_SoundUMB_Dchannel_XR_StatisticsSummaryReportBlock *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
{
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
        if (v7 != 5)
        {
          goto LABEL_47;
        }

        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a2, this + 2);
        if (result)
        {
          *(this + 18) |= 1u;
          v9 = *(a2 + 1);
          if (v9 < *(a2 + 2) && *v9 == 21)
          {
            *(a2 + 1) = v9 + 1;
            goto LABEL_27;
          }

          continue;
        }

        return result;
      case 2u:
        if (v7 != 5)
        {
          goto LABEL_47;
        }

LABEL_27:
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a2, this + 3);
        if (result)
        {
          *(this + 18) |= 2u;
          v17 = *(a2 + 1);
          if (v17 < *(a2 + 2) && *v17 == 29)
          {
            *(a2 + 1) = v17 + 1;
            goto LABEL_31;
          }

          continue;
        }

        return result;
      case 3u:
        if (v7 != 5)
        {
          goto LABEL_47;
        }

LABEL_31:
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a2, this + 4);
        if (result)
        {
          *(this + 18) |= 4u;
          v18 = *(a2 + 1);
          v10 = *(a2 + 2);
          if (v18 < v10 && *v18 == 32)
          {
            v15 = v18 + 1;
            *(a2 + 1) = v15;
            goto LABEL_35;
          }

          continue;
        }

        return result;
      case 4u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_47;
        }

        v15 = *(a2 + 1);
        v10 = *(a2 + 2);
LABEL_35:
        if (v15 < v10)
        {
          v19 = *v15;
          if ((v19 & 0x80000000) == 0)
          {
            *(this + 5) = v19;
            v20 = v15 + 1;
            *(a2 + 1) = v20;
LABEL_53:
            *(this + 18) |= 8u;
            if (v20 < v10 && *v20 == 40)
            {
              v12 = v20 + 1;
              *(a2 + 1) = v12;
              goto LABEL_56;
            }

            continue;
          }
        }

        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 5);
        if (result)
        {
          v20 = *(a2 + 1);
          v10 = *(a2 + 2);
          goto LABEL_53;
        }

        break;
      case 5u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_47;
        }

        v12 = *(a2 + 1);
        v10 = *(a2 + 2);
LABEL_56:
        if (v12 >= v10 || (v26 = *v12, v26 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 6);
          if (!result)
          {
            return result;
          }

          v27 = *(a2 + 1);
          v10 = *(a2 + 2);
        }

        else
        {
          *(this + 6) = v26;
          v27 = v12 + 1;
          *(a2 + 1) = v27;
        }

        *(this + 18) |= 0x10u;
        if (v27 >= v10 || *v27 != 48)
        {
          continue;
        }

        v21 = v27 + 1;
        *(a2 + 1) = v21;
LABEL_64:
        if (v21 >= v10 || (v28 = *v21, v28 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 7);
          if (!result)
          {
            return result;
          }

          v29 = *(a2 + 1);
          v10 = *(a2 + 2);
        }

        else
        {
          *(this + 7) = v28;
          v29 = v21 + 1;
          *(a2 + 1) = v29;
        }

        *(this + 18) |= 0x20u;
        if (v29 >= v10 || *v29 != 56)
        {
          continue;
        }

        v23 = v29 + 1;
        *(a2 + 1) = v23;
LABEL_72:
        if (v23 >= v10 || (v30 = *v23, v30 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 8);
          if (!result)
          {
            return result;
          }

          v31 = *(a2 + 1);
          v10 = *(a2 + 2);
        }

        else
        {
          *(this + 8) = v30;
          v31 = v23 + 1;
          *(a2 + 1) = v31;
        }

        *(this + 18) |= 0x40u;
        if (v31 >= v10 || *v31 != 64)
        {
          continue;
        }

        v16 = v31 + 1;
        *(a2 + 1) = v16;
LABEL_80:
        if (v16 >= v10 || (v32 = *v16, v32 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 9);
          if (!result)
          {
            return result;
          }

          v33 = *(a2 + 1);
          v10 = *(a2 + 2);
        }

        else
        {
          *(this + 9) = v32;
          v33 = v16 + 1;
          *(a2 + 1) = v33;
        }

        *(this + 18) |= 0x80u;
        if (v33 >= v10 || *v33 != 72)
        {
          continue;
        }

        v25 = v33 + 1;
        *(a2 + 1) = v25;
LABEL_88:
        if (v25 >= v10 || (v34 = *v25, v34 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 10);
          if (!result)
          {
            return result;
          }

          v35 = *(a2 + 1);
          v10 = *(a2 + 2);
        }

        else
        {
          *(this + 10) = v34;
          v35 = v25 + 1;
          *(a2 + 1) = v35;
        }

        *(this + 18) |= 0x100u;
        if (v35 >= v10 || *v35 != 80)
        {
          continue;
        }

        v14 = v35 + 1;
        *(a2 + 1) = v14;
LABEL_96:
        if (v14 >= v10 || (v36 = *v14, v36 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 11);
          if (!result)
          {
            return result;
          }

          v37 = *(a2 + 1);
          v10 = *(a2 + 2);
        }

        else
        {
          *(this + 11) = v36;
          v37 = v14 + 1;
          *(a2 + 1) = v37;
        }

        *(this + 18) |= 0x200u;
        if (v37 >= v10 || *v37 != 88)
        {
          continue;
        }

        v24 = v37 + 1;
        *(a2 + 1) = v24;
LABEL_104:
        if (v24 >= v10 || (v38 = *v24, v38 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 12);
          if (!result)
          {
            return result;
          }

          v39 = *(a2 + 1);
          v10 = *(a2 + 2);
        }

        else
        {
          *(this + 12) = v38;
          v39 = v24 + 1;
          *(a2 + 1) = v39;
        }

        *(this + 18) |= 0x400u;
        if (v39 >= v10 || *v39 != 96)
        {
          continue;
        }

        v11 = v39 + 1;
        *(a2 + 1) = v11;
LABEL_112:
        if (v11 >= v10 || (v40 = *v11, v40 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 13);
          if (!result)
          {
            return result;
          }

          v41 = *(a2 + 1);
          v10 = *(a2 + 2);
        }

        else
        {
          *(this + 13) = v40;
          v41 = v11 + 1;
          *(a2 + 1) = v41;
        }

        *(this + 18) |= 0x800u;
        if (v41 >= v10 || *v41 != 104)
        {
          continue;
        }

        v13 = v41 + 1;
        *(a2 + 1) = v13;
LABEL_120:
        if (v13 >= v10 || (v42 = *v13, v42 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 16);
          if (!result)
          {
            return result;
          }

          v43 = *(a2 + 1);
          v10 = *(a2 + 2);
        }

        else
        {
          *(this + 16) = v42;
          v43 = v13 + 1;
          *(a2 + 1) = v43;
        }

        *(this + 18) |= 0x1000u;
        if (v43 >= v10 || *v43 != 112)
        {
          continue;
        }

        v22 = v43 + 1;
        *(a2 + 1) = v22;
LABEL_128:
        if (v22 >= v10 || (v44 = *v22, v44 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 7);
          if (!result)
          {
            return result;
          }

          v45 = *(a2 + 1);
          v10 = *(a2 + 2);
        }

        else
        {
          *(this + 7) = v44;
          v45 = v22 + 1;
          *(a2 + 1) = v45;
        }

        *(this + 18) |= 0x2000u;
        if (v45 != v10 || !*(a2 + 11) && *(a2 + 6) != *(a2 + 10))
        {
          continue;
        }

        *(a2 + 8) = 0;
        result = 1;
        *(a2 + 36) = 1;
        return result;
      case 6u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_47;
        }

        v21 = *(a2 + 1);
        v10 = *(a2 + 2);
        goto LABEL_64;
      case 7u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_47;
        }

        v23 = *(a2 + 1);
        v10 = *(a2 + 2);
        goto LABEL_72;
      case 8u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_47;
        }

        v16 = *(a2 + 1);
        v10 = *(a2 + 2);
        goto LABEL_80;
      case 9u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_47;
        }

        v25 = *(a2 + 1);
        v10 = *(a2 + 2);
        goto LABEL_88;
      case 0xAu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_47;
        }

        v14 = *(a2 + 1);
        v10 = *(a2 + 2);
        goto LABEL_96;
      case 0xBu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_47;
        }

        v24 = *(a2 + 1);
        v10 = *(a2 + 2);
        goto LABEL_104;
      case 0xCu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_47;
        }

        v11 = *(a2 + 1);
        v10 = *(a2 + 2);
        goto LABEL_112;
      case 0xDu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_47;
        }

        v13 = *(a2 + 1);
        v10 = *(a2 + 2);
        goto LABEL_120;
      case 0xEu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_47;
        }

        v22 = *(a2 + 1);
        v10 = *(a2 + 2);
        goto LABEL_128;
      default:
LABEL_47:
        if (v7 == 4)
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

uint64_t awd::metrics::Remote_SoundUMB_Dchannel_XR_StatisticsSummaryReportBlock::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 72);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFixed32(1, *(this + 8), a2, a4);
    v6 = *(v5 + 72);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_18;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFixed32(2, *(v5 + 12), a2, a4);
  v6 = *(v5 + 72);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_19;
  }

LABEL_18:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFixed32(3, *(v5 + 16), a2, a4);
  v6 = *(v5 + 72);
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_20;
  }

LABEL_19:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(4, *(v5 + 20), a2, a4);
  v6 = *(v5 + 72);
  if ((v6 & 0x10) == 0)
  {
LABEL_6:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_21;
  }

LABEL_20:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(5, *(v5 + 24), a2, a4);
  v6 = *(v5 + 72);
  if ((v6 & 0x20) == 0)
  {
LABEL_7:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_22;
  }

LABEL_21:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(6, *(v5 + 28), a2, a4);
  v6 = *(v5 + 72);
  if ((v6 & 0x40) == 0)
  {
LABEL_8:
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_23;
  }

LABEL_22:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(7, *(v5 + 32), a2, a4);
  v6 = *(v5 + 72);
  if ((v6 & 0x80) == 0)
  {
LABEL_9:
    if ((v6 & 0x100) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_24;
  }

LABEL_23:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(8, *(v5 + 36), a2, a4);
  v6 = *(v5 + 72);
  if ((v6 & 0x100) == 0)
  {
LABEL_10:
    if ((v6 & 0x200) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_25;
  }

LABEL_24:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(9, *(v5 + 40), a2, a4);
  v6 = *(v5 + 72);
  if ((v6 & 0x200) == 0)
  {
LABEL_11:
    if ((v6 & 0x400) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_26;
  }

LABEL_25:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xA, *(v5 + 44), a2, a4);
  v6 = *(v5 + 72);
  if ((v6 & 0x400) == 0)
  {
LABEL_12:
    if ((v6 & 0x800) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_27;
  }

LABEL_26:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xB, *(v5 + 48), a2, a4);
  v6 = *(v5 + 72);
  if ((v6 & 0x800) == 0)
  {
LABEL_13:
    if ((v6 & 0x1000) == 0)
    {
      goto LABEL_14;
    }

LABEL_28:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xD, *(v5 + 64), a2, a4);
    if ((*(v5 + 72) & 0x2000) == 0)
    {
      return this;
    }

    goto LABEL_29;
  }

LABEL_27:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xC, *(v5 + 52), a2, a4);
  v6 = *(v5 + 72);
  if ((v6 & 0x1000) != 0)
  {
    goto LABEL_28;
  }

LABEL_14:
  if ((v6 & 0x2000) == 0)
  {
    return this;
  }

LABEL_29:
  v7 = *(v5 + 56);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(0xE, v7, a2, a4);
}

uint64_t awd::metrics::Remote_SoundUMB_Dchannel_XR_StatisticsSummaryReportBlock::ByteSize(awd::metrics::Remote_SoundUMB_Dchannel_XR_StatisticsSummaryReportBlock *this, unint64_t a2)
{
  v3 = *(this + 18);
  if (!v3)
  {
    v5 = 0;
    goto LABEL_34;
  }

  v4 = (v3 << 31 >> 31) & 5;
  if ((v3 & 2) != 0)
  {
    v4 += 5;
  }

  if ((v3 & 4) != 0)
  {
    v5 = v4 + 5;
  }

  else
  {
    v5 = v4;
  }

  if ((v3 & 8) != 0)
  {
    v6 = *(this + 5);
    if (v6 >= 0x80)
    {
      v7 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v6) + 1;
      v3 = *(this + 18);
    }

    else
    {
      v7 = 2;
    }

    v5 = (v7 + v5);
    if ((v3 & 0x10) == 0)
    {
LABEL_9:
      if ((v3 & 0x20) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_22;
    }
  }

  else if ((v3 & 0x10) == 0)
  {
    goto LABEL_9;
  }

  v8 = *(this + 6);
  if (v8 >= 0x80)
  {
    v9 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v8) + 1;
    v3 = *(this + 18);
  }

  else
  {
    v9 = 2;
  }

  v5 = (v9 + v5);
  if ((v3 & 0x20) == 0)
  {
LABEL_10:
    if ((v3 & 0x40) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_26;
  }

LABEL_22:
  v10 = *(this + 7);
  if (v10 >= 0x80)
  {
    v11 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v10) + 1;
    v3 = *(this + 18);
  }

  else
  {
    v11 = 2;
  }

  v5 = (v11 + v5);
  if ((v3 & 0x40) == 0)
  {
LABEL_11:
    if ((v3 & 0x80) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_30;
  }

LABEL_26:
  v12 = *(this + 8);
  if (v12 >= 0x80)
  {
    v13 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v12) + 1;
    v3 = *(this + 18);
  }

  else
  {
    v13 = 2;
  }

  v5 = (v13 + v5);
  if ((v3 & 0x80) != 0)
  {
LABEL_30:
    v14 = *(this + 9);
    if (v14 >= 0x80)
    {
      v15 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v14) + 1;
      v3 = *(this + 18);
    }

    else
    {
      v15 = 2;
    }

    v5 = (v15 + v5);
  }

LABEL_34:
  if ((v3 & 0xFF00) == 0)
  {
    goto LABEL_42;
  }

  if ((v3 & 0x100) != 0)
  {
    v17 = *(this + 10);
    if (v17 >= 0x80)
    {
      v18 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v17) + 1;
      v3 = *(this + 18);
    }

    else
    {
      v18 = 2;
    }

    v5 = (v18 + v5);
    if ((v3 & 0x200) == 0)
    {
LABEL_37:
      if ((v3 & 0x400) == 0)
      {
        goto LABEL_38;
      }

      goto LABEL_51;
    }
  }

  else if ((v3 & 0x200) == 0)
  {
    goto LABEL_37;
  }

  v19 = *(this + 11);
  if (v19 >= 0x80)
  {
    v20 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v19) + 1;
    v3 = *(this + 18);
  }

  else
  {
    v20 = 2;
  }

  v5 = (v20 + v5);
  if ((v3 & 0x400) == 0)
  {
LABEL_38:
    if ((v3 & 0x800) == 0)
    {
      goto LABEL_39;
    }

    goto LABEL_55;
  }

LABEL_51:
  v21 = *(this + 12);
  if (v21 >= 0x80)
  {
    v22 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v21) + 1;
    v3 = *(this + 18);
  }

  else
  {
    v22 = 2;
  }

  v5 = (v22 + v5);
  if ((v3 & 0x800) == 0)
  {
LABEL_39:
    if ((v3 & 0x1000) == 0)
    {
      goto LABEL_40;
    }

LABEL_59:
    v25 = *(this + 16);
    if (v25 >= 0x80)
    {
      v26 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v25) + 1;
      v3 = *(this + 18);
    }

    else
    {
      v26 = 2;
    }

    v5 = (v26 + v5);
    if ((v3 & 0x2000) != 0)
    {
      goto LABEL_41;
    }

    goto LABEL_42;
  }

LABEL_55:
  v23 = *(this + 13);
  if (v23 >= 0x80)
  {
    v24 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v23) + 1;
    v3 = *(this + 18);
  }

  else
  {
    v24 = 2;
  }

  v5 = (v24 + v5);
  if ((v3 & 0x1000) != 0)
  {
    goto LABEL_59;
  }

LABEL_40:
  if ((v3 & 0x2000) != 0)
  {
LABEL_41:
    v5 = v5 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 7)) + 1;
  }

LABEL_42:
  *(this + 17) = v5;
  return v5;
}

void awd::metrics::Remote_SoundUMB_Dchannel_XR_StatisticsSummaryReportBlock::CheckTypeAndMergeFrom(awd::metrics::Remote_SoundUMB_Dchannel_XR_StatisticsSummaryReportBlock *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  if (lpsrc == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v19);
  }

  v4 = *(lpsrc + 18);
  if (!v4)
  {
    goto LABEL_14;
  }

  if (v4)
  {
    v7 = *(lpsrc + 2);
    *(this + 18) |= 1u;
    *(this + 2) = v7;
    v4 = *(lpsrc + 18);
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

  v8 = *(lpsrc + 3);
  *(this + 18) |= 2u;
  *(this + 3) = v8;
  v4 = *(lpsrc + 18);
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
  v9 = *(lpsrc + 4);
  *(this + 18) |= 4u;
  *(this + 4) = v9;
  v4 = *(lpsrc + 18);
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
  v10 = *(lpsrc + 5);
  *(this + 18) |= 8u;
  *(this + 5) = v10;
  v4 = *(lpsrc + 18);
  if ((v4 & 0x10) == 0)
  {
LABEL_10:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_11;
    }

LABEL_28:
    v12 = *(lpsrc + 7);
    *(this + 18) |= 0x20u;
    *(this + 7) = v12;
    v4 = *(lpsrc + 18);
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
  v11 = *(lpsrc + 6);
  *(this + 18) |= 0x10u;
  *(this + 6) = v11;
  v4 = *(lpsrc + 18);
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
  v13 = *(lpsrc + 8);
  *(this + 18) |= 0x40u;
  *(this + 8) = v13;
  v4 = *(lpsrc + 18);
  if ((v4 & 0x80) != 0)
  {
LABEL_13:
    v5 = *(lpsrc + 9);
    *(this + 18) |= 0x80u;
    *(this + 9) = v5;
    v4 = *(lpsrc + 18);
  }

LABEL_14:
  if ((v4 & 0xFF00) == 0)
  {
    return;
  }

  if ((v4 & 0x100) != 0)
  {
    v14 = *(lpsrc + 10);
    *(this + 18) |= 0x100u;
    *(this + 10) = v14;
    v4 = *(lpsrc + 18);
    if ((v4 & 0x200) == 0)
    {
LABEL_17:
      if ((v4 & 0x400) == 0)
      {
        goto LABEL_18;
      }

      goto LABEL_33;
    }
  }

  else if ((v4 & 0x200) == 0)
  {
    goto LABEL_17;
  }

  v15 = *(lpsrc + 11);
  *(this + 18) |= 0x200u;
  *(this + 11) = v15;
  v4 = *(lpsrc + 18);
  if ((v4 & 0x400) == 0)
  {
LABEL_18:
    if ((v4 & 0x800) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_34;
  }

LABEL_33:
  v16 = *(lpsrc + 12);
  *(this + 18) |= 0x400u;
  *(this + 12) = v16;
  v4 = *(lpsrc + 18);
  if ((v4 & 0x800) == 0)
  {
LABEL_19:
    if ((v4 & 0x1000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_35;
  }

LABEL_34:
  v17 = *(lpsrc + 13);
  *(this + 18) |= 0x800u;
  *(this + 13) = v17;
  v4 = *(lpsrc + 18);
  if ((v4 & 0x1000) == 0)
  {
LABEL_20:
    if ((v4 & 0x2000) == 0)
    {
      return;
    }

    goto LABEL_21;
  }

LABEL_35:
  v18 = *(lpsrc + 16);
  *(this + 18) |= 0x1000u;
  *(this + 16) = v18;
  if ((*(lpsrc + 18) & 0x2000) != 0)
  {
LABEL_21:
    v6 = *(lpsrc + 7);
    *(this + 18) |= 0x2000u;
    *(this + 7) = v6;
  }
}

void sub_1E4D02198(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::metrics::Local_SoundUMB_Dchannel_XR_VoIPMetricsReportBlock::~Local_SoundUMB_Dchannel_XR_VoIPMetricsReportBlock(awd::metrics::Local_SoundUMB_Dchannel_XR_VoIPMetricsReportBlock *this)
{
  *this = &unk_1F5EC6178;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_1F5EC6178;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  JUMPOUT(0x1E69235B0);
}

uint64_t awd::metrics::Local_SoundUMB_Dchannel_XR_VoIPMetricsReportBlock::Clear(uint64_t this)
{
  v1 = *(this + 100);
  if (v1)
  {
    *(this + 24) = 0u;
    *(this + 8) = 0u;
  }

  if ((v1 & 0xFF00) != 0)
  {
    *(this + 56) = 0u;
    *(this + 40) = 0u;
  }

  if ((v1 & 0xFF0000) != 0)
  {
    *(this + 72) = 0;
    *(this + 80) = 0;
    *(this + 88) = 0;
  }

  *(this + 100) = 0;
  return this;
}

uint64_t awd::metrics::Local_SoundUMB_Dchannel_XR_VoIPMetricsReportBlock::MergePartialFromCodedStream(awd::metrics::Local_SoundUMB_Dchannel_XR_VoIPMetricsReportBlock *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
{
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
        if (v7 != 5)
        {
          goto LABEL_54;
        }

        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a2, this + 2);
        if (result)
        {
          *(this + 25) |= 1u;
          v10 = *(a2 + 1);
          v9 = *(a2 + 2);
          if (v10 < v9 && *v10 == 16)
          {
            v11 = v10 + 1;
            *(a2 + 1) = v11;
            goto LABEL_30;
          }

          continue;
        }

        return result;
      case 2u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_54;
        }

        v11 = *(a2 + 1);
        v9 = *(a2 + 2);
LABEL_30:
        if (v11 < v9)
        {
          v20 = *v11;
          if ((v20 & 0x80000000) == 0)
          {
            *(this + 3) = v20;
            v21 = v11 + 1;
            *(a2 + 1) = v21;
LABEL_60:
            *(this + 25) |= 2u;
            if (v21 < v9 && *v21 == 24)
            {
              v17 = v21 + 1;
              *(a2 + 1) = v17;
              goto LABEL_63;
            }

            continue;
          }
        }

        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 3);
        if (result)
        {
          v21 = *(a2 + 1);
          v9 = *(a2 + 2);
          goto LABEL_60;
        }

        break;
      case 3u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_54;
        }

        v17 = *(a2 + 1);
        v9 = *(a2 + 2);
LABEL_63:
        if (v17 >= v9 || (v33 = *v17, v33 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 4);
          if (!result)
          {
            return result;
          }

          v34 = *(a2 + 1);
          v9 = *(a2 + 2);
        }

        else
        {
          *(this + 4) = v33;
          v34 = v17 + 1;
          *(a2 + 1) = v34;
        }

        *(this + 25) |= 4u;
        if (v34 >= v9 || *v34 != 32)
        {
          continue;
        }

        v26 = v34 + 1;
        *(a2 + 1) = v26;
LABEL_71:
        if (v26 >= v9 || (v35 = *v26, v35 < 0))
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
          v36 = v26 + 1;
          *(a2 + 1) = v36;
        }

        *(this + 25) |= 8u;
        if (v36 >= v9 || *v36 != 40)
        {
          continue;
        }

        v27 = v36 + 1;
        *(a2 + 1) = v27;
LABEL_79:
        if (v27 >= v9 || (v37 = *v27, v37 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 6);
          if (!result)
          {
            return result;
          }

          v38 = *(a2 + 1);
          v9 = *(a2 + 2);
        }

        else
        {
          *(this + 6) = v37;
          v38 = v27 + 1;
          *(a2 + 1) = v38;
        }

        *(this + 25) |= 0x10u;
        if (v38 >= v9 || *v38 != 48)
        {
          continue;
        }

        v18 = v38 + 1;
        *(a2 + 1) = v18;
LABEL_87:
        if (v18 >= v9 || (v39 = *v18, v39 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 7);
          if (!result)
          {
            return result;
          }

          v40 = *(a2 + 1);
          v9 = *(a2 + 2);
        }

        else
        {
          *(this + 7) = v39;
          v40 = v18 + 1;
          *(a2 + 1) = v40;
        }

        *(this + 25) |= 0x20u;
        if (v40 >= v9 || *v40 != 56)
        {
          continue;
        }

        v22 = v40 + 1;
        *(a2 + 1) = v22;
LABEL_95:
        if (v22 >= v9 || (v41 = *v22, v41 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 8);
          if (!result)
          {
            return result;
          }

          v42 = *(a2 + 1);
          v9 = *(a2 + 2);
        }

        else
        {
          *(this + 8) = v41;
          v42 = v22 + 1;
          *(a2 + 1) = v42;
        }

        *(this + 25) |= 0x40u;
        if (v42 >= v9 || *v42 != 64)
        {
          continue;
        }

        v23 = v42 + 1;
        *(a2 + 1) = v23;
LABEL_103:
        if (v23 >= v9 || (v43 = *v23, v43 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 9);
          if (!result)
          {
            return result;
          }

          v44 = *(a2 + 1);
          v9 = *(a2 + 2);
        }

        else
        {
          *(this + 9) = v43;
          v44 = v23 + 1;
          *(a2 + 1) = v44;
        }

        *(this + 25) |= 0x80u;
        if (v44 >= v9 || *v44 != 72)
        {
          continue;
        }

        v29 = v44 + 1;
        *(a2 + 1) = v29;
LABEL_111:
        if (v29 >= v9 || (v45 = *v29, v45 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 10);
          if (!result)
          {
            return result;
          }

          v46 = *(a2 + 1);
          v9 = *(a2 + 2);
        }

        else
        {
          *(this + 10) = v45;
          v46 = v29 + 1;
          *(a2 + 1) = v46;
        }

        *(this + 25) |= 0x100u;
        if (v46 >= v9 || *v46 != 80)
        {
          continue;
        }

        v28 = v46 + 1;
        *(a2 + 1) = v28;
LABEL_119:
        if (v28 >= v9 || (v47 = *v28, v47 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 11);
          if (!result)
          {
            return result;
          }

          v48 = *(a2 + 1);
          v9 = *(a2 + 2);
        }

        else
        {
          *(this + 11) = v47;
          v48 = v28 + 1;
          *(a2 + 1) = v48;
        }

        *(this + 25) |= 0x200u;
        if (v48 >= v9 || *v48 != 88)
        {
          continue;
        }

        v14 = v48 + 1;
        *(a2 + 1) = v14;
LABEL_127:
        if (v14 >= v9 || (v49 = *v14, v49 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 12);
          if (!result)
          {
            return result;
          }

          v50 = *(a2 + 1);
          v9 = *(a2 + 2);
        }

        else
        {
          *(this + 12) = v49;
          v50 = v14 + 1;
          *(a2 + 1) = v50;
        }

        *(this + 25) |= 0x400u;
        if (v50 >= v9 || *v50 != 96)
        {
          continue;
        }

        v19 = v50 + 1;
        *(a2 + 1) = v19;
LABEL_135:
        if (v19 >= v9 || (v51 = *v19, v51 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 13);
          if (!result)
          {
            return result;
          }

          v52 = *(a2 + 1);
          v9 = *(a2 + 2);
        }

        else
        {
          *(this + 13) = v51;
          v52 = v19 + 1;
          *(a2 + 1) = v52;
        }

        *(this + 25) |= 0x800u;
        if (v52 >= v9 || *v52 != 112)
        {
          continue;
        }

        v15 = v52 + 1;
        *(a2 + 1) = v15;
LABEL_143:
        if (v15 >= v9 || (v53 = *v15, v53 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 14);
          if (!result)
          {
            return result;
          }

          v54 = *(a2 + 1);
          v9 = *(a2 + 2);
        }

        else
        {
          *(this + 14) = v53;
          v54 = v15 + 1;
          *(a2 + 1) = v54;
        }

        *(this + 25) |= 0x1000u;
        if (v54 >= v9 || *v54 != 120)
        {
          continue;
        }

        v13 = v54 + 1;
        *(a2 + 1) = v13;
LABEL_151:
        if (v13 >= v9 || (v55 = *v13, v55 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 15);
          if (!result)
          {
            return result;
          }

          v56 = *(a2 + 1);
          v9 = *(a2 + 2);
        }

        else
        {
          *(this + 15) = v55;
          v56 = (v13 + 1);
          *(a2 + 1) = v56;
        }

        *(this + 25) |= 0x2000u;
        if (v9 - v56 < 2 || *v56 != 128 || v56[1] != 1)
        {
          continue;
        }

        v24 = (v56 + 2);
        *(a2 + 1) = v24;
LABEL_160:
        if (v24 >= v9 || (v57 = *v24, v57 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 16);
          if (!result)
          {
            return result;
          }

          v58 = *(a2 + 1);
          v9 = *(a2 + 2);
        }

        else
        {
          *(this + 16) = v57;
          v58 = (v24 + 1);
          *(a2 + 1) = v58;
        }

        *(this + 25) |= 0x4000u;
        if (v9 - v58 < 2 || *v58 != 136 || v58[1] != 1)
        {
          continue;
        }

        v25 = (v58 + 2);
        *(a2 + 1) = v25;
LABEL_169:
        if (v25 >= v9 || (v59 = *v25, v59 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 17);
          if (!result)
          {
            return result;
          }

          v60 = *(a2 + 1);
          v9 = *(a2 + 2);
        }

        else
        {
          *(this + 17) = v59;
          v60 = (v25 + 1);
          *(a2 + 1) = v60;
        }

        *(this + 25) |= 0x8000u;
        if (v9 - v60 < 2 || *v60 != 144 || v60[1] != 1)
        {
          continue;
        }

        v31 = (v60 + 2);
        *(a2 + 1) = v31;
LABEL_178:
        if (v31 >= v9 || (v61 = *v31, v61 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 18);
          if (!result)
          {
            return result;
          }

          v62 = *(a2 + 1);
          v9 = *(a2 + 2);
        }

        else
        {
          *(this + 18) = v61;
          v62 = (v31 + 1);
          *(a2 + 1) = v62;
        }

        *(this + 25) |= 0x10000u;
        if (v9 - v62 < 2 || *v62 != 152 || v62[1] != 1)
        {
          continue;
        }

        v30 = (v62 + 2);
        *(a2 + 1) = v30;
LABEL_187:
        if (v30 >= v9 || (v63 = *v30, v63 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 19);
          if (!result)
          {
            return result;
          }

          v64 = *(a2 + 1);
          v9 = *(a2 + 2);
        }

        else
        {
          *(this + 19) = v63;
          v64 = (v30 + 1);
          *(a2 + 1) = v64;
        }

        *(this + 25) |= 0x20000u;
        if (v9 - v64 < 2 || *v64 != 160 || v64[1] != 1)
        {
          continue;
        }

        v12 = (v64 + 2);
        *(a2 + 1) = v12;
LABEL_196:
        if (v12 >= v9 || (v65 = *v12, v65 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 20);
          if (!result)
          {
            return result;
          }

          v66 = *(a2 + 1);
          v9 = *(a2 + 2);
        }

        else
        {
          *(this + 20) = v65;
          v66 = (v12 + 1);
          *(a2 + 1) = v66;
        }

        *(this + 25) |= 0x40000u;
        if (v9 - v66 < 2 || *v66 != 168 || v66[1] != 1)
        {
          continue;
        }

        v16 = (v66 + 2);
        *(a2 + 1) = v16;
LABEL_205:
        if (v16 >= v9 || (v67 = *v16, v67 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 21);
          if (!result)
          {
            return result;
          }

          v68 = *(a2 + 1);
          v9 = *(a2 + 2);
        }

        else
        {
          *(this + 21) = v67;
          v68 = (v16 + 1);
          *(a2 + 1) = v68;
        }

        *(this + 25) |= 0x80000u;
        if (v9 - v68 < 2 || *v68 != 176 || v68[1] != 1)
        {
          continue;
        }

        v32 = (v68 + 2);
        *(a2 + 1) = v32;
LABEL_214:
        if (v32 >= v9 || (v69 = *v32, v69 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 11);
          if (!result)
          {
            return result;
          }

          v70 = *(a2 + 1);
          v9 = *(a2 + 2);
        }

        else
        {
          *(this + 11) = v69;
          v70 = v32 + 1;
          *(a2 + 1) = v70;
        }

        *(this + 25) |= 0x100000u;
        if (v70 != v9 || !*(a2 + 11) && *(a2 + 6) != *(a2 + 10))
        {
          continue;
        }

        *(a2 + 8) = 0;
        result = 1;
        *(a2 + 36) = 1;
        return result;
      case 4u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_54;
        }

        v26 = *(a2 + 1);
        v9 = *(a2 + 2);
        goto LABEL_71;
      case 5u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_54;
        }

        v27 = *(a2 + 1);
        v9 = *(a2 + 2);
        goto LABEL_79;
      case 6u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_54;
        }

        v18 = *(a2 + 1);
        v9 = *(a2 + 2);
        goto LABEL_87;
      case 7u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_54;
        }

        v22 = *(a2 + 1);
        v9 = *(a2 + 2);
        goto LABEL_95;
      case 8u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_54;
        }

        v23 = *(a2 + 1);
        v9 = *(a2 + 2);
        goto LABEL_103;
      case 9u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_54;
        }

        v29 = *(a2 + 1);
        v9 = *(a2 + 2);
        goto LABEL_111;
      case 0xAu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_54;
        }

        v28 = *(a2 + 1);
        v9 = *(a2 + 2);
        goto LABEL_119;
      case 0xBu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_54;
        }

        v14 = *(a2 + 1);
        v9 = *(a2 + 2);
        goto LABEL_127;
      case 0xCu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_54;
        }

        v19 = *(a2 + 1);
        v9 = *(a2 + 2);
        goto LABEL_135;
      case 0xEu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_54;
        }

        v15 = *(a2 + 1);
        v9 = *(a2 + 2);
        goto LABEL_143;
      case 0xFu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_54;
        }

        v13 = *(a2 + 1);
        v9 = *(a2 + 2);
        goto LABEL_151;
      case 0x10u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_54;
        }

        v24 = *(a2 + 1);
        v9 = *(a2 + 2);
        goto LABEL_160;
      case 0x11u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_54;
        }

        v25 = *(a2 + 1);
        v9 = *(a2 + 2);
        goto LABEL_169;
      case 0x12u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_54;
        }

        v31 = *(a2 + 1);
        v9 = *(a2 + 2);
        goto LABEL_178;
      case 0x13u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_54;
        }

        v30 = *(a2 + 1);
        v9 = *(a2 + 2);
        goto LABEL_187;
      case 0x14u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_54;
        }

        v12 = *(a2 + 1);
        v9 = *(a2 + 2);
        goto LABEL_196;
      case 0x15u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_54;
        }

        v16 = *(a2 + 1);
        v9 = *(a2 + 2);
        goto LABEL_205;
      case 0x16u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_54;
        }

        v32 = *(a2 + 1);
        v9 = *(a2 + 2);
        goto LABEL_214;
      default:
LABEL_54:
        if (v7 == 4)
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

uint64_t awd::metrics::Local_SoundUMB_Dchannel_XR_VoIPMetricsReportBlock::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 100);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFixed32(1, *(this + 8), a2, a4);
    v6 = *(v5 + 100);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_25;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(2, *(v5 + 12), a2, a4);
  v6 = *(v5 + 100);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_26;
  }

LABEL_25:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(3, *(v5 + 16), a2, a4);
  v6 = *(v5 + 100);
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_27;
  }

LABEL_26:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(4, *(v5 + 20), a2, a4);
  v6 = *(v5 + 100);
  if ((v6 & 0x10) == 0)
  {
LABEL_6:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_28;
  }

LABEL_27:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(5, *(v5 + 24), a2, a4);
  v6 = *(v5 + 100);
  if ((v6 & 0x20) == 0)
  {
LABEL_7:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_29;
  }

LABEL_28:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(6, *(v5 + 28), a2, a4);
  v6 = *(v5 + 100);
  if ((v6 & 0x40) == 0)
  {
LABEL_8:
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_30;
  }

LABEL_29:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(7, *(v5 + 32), a2, a4);
  v6 = *(v5 + 100);
  if ((v6 & 0x80) == 0)
  {
LABEL_9:
    if ((v6 & 0x100) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_31;
  }

LABEL_30:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(8, *(v5 + 36), a2, a4);
  v6 = *(v5 + 100);
  if ((v6 & 0x100) == 0)
  {
LABEL_10:
    if ((v6 & 0x200) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_32;
  }

LABEL_31:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(9, *(v5 + 40), a2, a4);
  v6 = *(v5 + 100);
  if ((v6 & 0x200) == 0)
  {
LABEL_11:
    if ((v6 & 0x400) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_33;
  }

LABEL_32:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xA, *(v5 + 44), a2, a4);
  v6 = *(v5 + 100);
  if ((v6 & 0x400) == 0)
  {
LABEL_12:
    if ((v6 & 0x800) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_34;
  }

LABEL_33:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xB, *(v5 + 48), a2, a4);
  v6 = *(v5 + 100);
  if ((v6 & 0x800) == 0)
  {
LABEL_13:
    if ((v6 & 0x1000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_35;
  }

LABEL_34:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xC, *(v5 + 52), a2, a4);
  v6 = *(v5 + 100);
  if ((v6 & 0x1000) == 0)
  {
LABEL_14:
    if ((v6 & 0x2000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_36;
  }

LABEL_35:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xE, *(v5 + 56), a2, a4);
  v6 = *(v5 + 100);
  if ((v6 & 0x2000) == 0)
  {
LABEL_15:
    if ((v6 & 0x4000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_37;
  }

LABEL_36:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xF, *(v5 + 60), a2, a4);
  v6 = *(v5 + 100);
  if ((v6 & 0x4000) == 0)
  {
LABEL_16:
    if ((v6 & 0x8000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_38;
  }

LABEL_37:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x10, *(v5 + 64), a2, a4);
  v6 = *(v5 + 100);
  if ((v6 & 0x8000) == 0)
  {
LABEL_17:
    if ((v6 & 0x10000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_39;
  }

LABEL_38:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x11, *(v5 + 68), a2, a4);
  v6 = *(v5 + 100);
  if ((v6 & 0x10000) == 0)
  {
LABEL_18:
    if ((v6 & 0x20000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_40;
  }

LABEL_39:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x12, *(v5 + 72), a2, a4);
  v6 = *(v5 + 100);
  if ((v6 & 0x20000) == 0)
  {
LABEL_19:
    if ((v6 & 0x40000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_41;
  }

LABEL_40:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x13, *(v5 + 76), a2, a4);
  v6 = *(v5 + 100);
  if ((v6 & 0x40000) == 0)
  {
LABEL_20:
    if ((v6 & 0x80000) == 0)
    {
      goto LABEL_21;
    }

LABEL_42:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x15, *(v5 + 84), a2, a4);
    if ((*(v5 + 100) & 0x100000) == 0)
    {
      return this;
    }

    goto LABEL_43;
  }

LABEL_41:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x14, *(v5 + 80), a2, a4);
  v6 = *(v5 + 100);
  if ((v6 & 0x80000) != 0)
  {
    goto LABEL_42;
  }

LABEL_21:
  if ((v6 & 0x100000) == 0)
  {
    return this;
  }

LABEL_43:
  v7 = *(v5 + 88);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(0x16, v7, a2, a4);
}

uint64_t awd::metrics::Local_SoundUMB_Dchannel_XR_VoIPMetricsReportBlock::ByteSize(awd::metrics::Local_SoundUMB_Dchannel_XR_VoIPMetricsReportBlock *this, unint64_t a2)
{
  v3 = *(this + 25);
  if (!v3)
  {
    v4 = 0;
    goto LABEL_39;
  }

  v4 = (v3 << 31 >> 31) & 5;
  if ((v3 & 2) != 0)
  {
    v5 = *(this + 3);
    if (v5 >= 0x80)
    {
      v6 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5) + 1;
      v3 = *(this + 25);
    }

    else
    {
      v6 = 2;
    }

    v4 = (v6 + v4);
    if ((v3 & 4) == 0)
    {
LABEL_4:
      if ((v3 & 8) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_19;
    }
  }

  else if ((v3 & 4) == 0)
  {
    goto LABEL_4;
  }

  v7 = *(this + 4);
  if (v7 >= 0x80)
  {
    v8 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v7) + 1;
    v3 = *(this + 25);
  }

  else
  {
    v8 = 2;
  }

  v4 = (v8 + v4);
  if ((v3 & 8) == 0)
  {
LABEL_5:
    if ((v3 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_23;
  }

LABEL_19:
  v9 = *(this + 5);
  if (v9 >= 0x80)
  {
    v10 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v9) + 1;
    v3 = *(this + 25);
  }

  else
  {
    v10 = 2;
  }

  v4 = (v10 + v4);
  if ((v3 & 0x10) == 0)
  {
LABEL_6:
    if ((v3 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_27;
  }

LABEL_23:
  v11 = *(this + 6);
  if (v11 >= 0x80)
  {
    v12 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v11) + 1;
    v3 = *(this + 25);
  }

  else
  {
    v12 = 2;
  }

  v4 = (v12 + v4);
  if ((v3 & 0x20) == 0)
  {
LABEL_7:
    if ((v3 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_31;
  }

LABEL_27:
  v13 = *(this + 7);
  if (v13 >= 0x80)
  {
    v14 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v13) + 1;
    v3 = *(this + 25);
  }

  else
  {
    v14 = 2;
  }

  v4 = (v14 + v4);
  if ((v3 & 0x40) == 0)
  {
LABEL_8:
    if ((v3 & 0x80) == 0)
    {
      goto LABEL_39;
    }

    goto LABEL_35;
  }

LABEL_31:
  v15 = *(this + 8);
  if (v15 >= 0x80)
  {
    v16 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v15) + 1;
    v3 = *(this + 25);
  }

  else
  {
    v16 = 2;
  }

  v4 = (v16 + v4);
  if ((v3 & 0x80) != 0)
  {
LABEL_35:
    v17 = *(this + 9);
    if (v17 >= 0x80)
    {
      v18 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v17) + 1;
      v3 = *(this + 25);
    }

    else
    {
      v18 = 2;
    }

    v4 = (v18 + v4);
  }

LABEL_39:
  if ((v3 & 0xFF00) == 0)
  {
    goto LABEL_81;
  }

  if ((v3 & 0x100) != 0)
  {
    v19 = *(this + 10);
    if (v19 >= 0x80)
    {
      v20 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v19) + 1;
      v3 = *(this + 25);
    }

    else
    {
      v20 = 2;
    }

    v4 = (v20 + v4);
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

  v21 = *(this + 11);
  if (v21 >= 0x80)
  {
    v22 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v21) + 1;
    v3 = *(this + 25);
  }

  else
  {
    v22 = 2;
  }

  v4 = (v22 + v4);
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
  v23 = *(this + 12);
  if (v23 >= 0x80)
  {
    v24 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v23) + 1;
    v3 = *(this + 25);
  }

  else
  {
    v24 = 2;
  }

  v4 = (v24 + v4);
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
  v25 = *(this + 13);
  if (v25 >= 0x80)
  {
    v26 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v25) + 1;
    v3 = *(this + 25);
  }

  else
  {
    v26 = 2;
  }

  v4 = (v26 + v4);
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
  v27 = *(this + 14);
  if (v27 >= 0x80)
  {
    v28 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v27) + 1;
    v3 = *(this + 25);
  }

  else
  {
    v28 = 2;
  }

  v4 = (v28 + v4);
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
  v29 = *(this + 15);
  if (v29 >= 0x80)
  {
    v30 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v29) + 1;
    v3 = *(this + 25);
  }

  else
  {
    v30 = 2;
  }

  v4 = (v30 + v4);
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
  v31 = *(this + 16);
  if (v31 >= 0x80)
  {
    v32 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v31) + 2;
    v3 = *(this + 25);
  }

  else
  {
    v32 = 3;
  }

  v4 = (v32 + v4);
  if ((v3 & 0x8000) != 0)
  {
LABEL_77:
    v33 = *(this + 17);
    if (v33 >= 0x80)
    {
      v34 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v33) + 2;
      v3 = *(this + 25);
    }

    else
    {
      v34 = 3;
    }

    v4 = (v34 + v4);
  }

LABEL_81:
  if ((v3 & 0xFF0000) == 0)
  {
    goto LABEL_88;
  }

  if ((v3 & 0x10000) != 0)
  {
    v36 = *(this + 18);
    if (v36 >= 0x80)
    {
      v37 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v36) + 2;
      v3 = *(this + 25);
    }

    else
    {
      v37 = 3;
    }

    v4 = (v37 + v4);
    if ((v3 & 0x20000) == 0)
    {
LABEL_84:
      if ((v3 & 0x40000) == 0)
      {
        goto LABEL_85;
      }

      goto LABEL_97;
    }
  }

  else if ((v3 & 0x20000) == 0)
  {
    goto LABEL_84;
  }

  v38 = *(this + 19);
  if (v38 >= 0x80)
  {
    v39 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v38) + 2;
    v3 = *(this + 25);
  }

  else
  {
    v39 = 3;
  }

  v4 = (v39 + v4);
  if ((v3 & 0x40000) == 0)
  {
LABEL_85:
    if ((v3 & 0x80000) == 0)
    {
      goto LABEL_86;
    }

LABEL_101:
    v42 = *(this + 21);
    if (v42 >= 0x80)
    {
      v43 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v42) + 2;
      v3 = *(this + 25);
    }

    else
    {
      v43 = 3;
    }

    v4 = (v43 + v4);
    if ((v3 & 0x100000) != 0)
    {
      goto LABEL_87;
    }

    goto LABEL_88;
  }

LABEL_97:
  v40 = *(this + 20);
  if (v40 >= 0x80)
  {
    v41 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v40) + 2;
    v3 = *(this + 25);
  }

  else
  {
    v41 = 3;
  }

  v4 = (v41 + v4);
  if ((v3 & 0x80000) != 0)
  {
    goto LABEL_101;
  }

LABEL_86:
  if ((v3 & 0x100000) != 0)
  {
LABEL_87:
    v4 = v4 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 11)) + 2;
  }

LABEL_88:
  *(this + 24) = v4;
  return v4;
}

void awd::metrics::Local_SoundUMB_Dchannel_XR_VoIPMetricsReportBlock::CheckTypeAndMergeFrom(awd::metrics::Local_SoundUMB_Dchannel_XR_VoIPMetricsReportBlock *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
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

  v4 = *(lpsrc + 25);
  if (!v4)
  {
    goto LABEL_14;
  }

  if (v4)
  {
    v8 = *(lpsrc + 2);
    *(this + 25) |= 1u;
    *(this + 2) = v8;
    v4 = *(lpsrc + 25);
    if ((v4 & 2) == 0)
    {
LABEL_7:
      if ((v4 & 4) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_34;
    }
  }

  else if ((v4 & 2) == 0)
  {
    goto LABEL_7;
  }

  v9 = *(lpsrc + 3);
  *(this + 25) |= 2u;
  *(this + 3) = v9;
  v4 = *(lpsrc + 25);
  if ((v4 & 4) == 0)
  {
LABEL_8:
    if ((v4 & 8) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_35;
  }

LABEL_34:
  v10 = *(lpsrc + 4);
  *(this + 25) |= 4u;
  *(this + 4) = v10;
  v4 = *(lpsrc + 25);
  if ((v4 & 8) == 0)
  {
LABEL_9:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_36;
  }

LABEL_35:
  v11 = *(lpsrc + 5);
  *(this + 25) |= 8u;
  *(this + 5) = v11;
  v4 = *(lpsrc + 25);
  if ((v4 & 0x10) == 0)
  {
LABEL_10:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_11;
    }

LABEL_37:
    v13 = *(lpsrc + 7);
    *(this + 25) |= 0x20u;
    *(this + 7) = v13;
    v4 = *(lpsrc + 25);
    if ((v4 & 0x40) == 0)
    {
LABEL_12:
      if ((v4 & 0x80) == 0)
      {
        goto LABEL_14;
      }

      goto LABEL_13;
    }

    goto LABEL_38;
  }

LABEL_36:
  v12 = *(lpsrc + 6);
  *(this + 25) |= 0x10u;
  *(this + 6) = v12;
  v4 = *(lpsrc + 25);
  if ((v4 & 0x20) != 0)
  {
    goto LABEL_37;
  }

LABEL_11:
  if ((v4 & 0x40) == 0)
  {
    goto LABEL_12;
  }

LABEL_38:
  v14 = *(lpsrc + 8);
  *(this + 25) |= 0x40u;
  *(this + 8) = v14;
  v4 = *(lpsrc + 25);
  if ((v4 & 0x80) != 0)
  {
LABEL_13:
    v5 = *(lpsrc + 9);
    *(this + 25) |= 0x80u;
    *(this + 9) = v5;
    v4 = *(lpsrc + 25);
  }

LABEL_14:
  if ((v4 & 0xFF00) == 0)
  {
    goto LABEL_24;
  }

  if ((v4 & 0x100) != 0)
  {
    v15 = *(lpsrc + 10);
    *(this + 25) |= 0x100u;
    *(this + 10) = v15;
    v4 = *(lpsrc + 25);
    if ((v4 & 0x200) == 0)
    {
LABEL_17:
      if ((v4 & 0x400) == 0)
      {
        goto LABEL_18;
      }

      goto LABEL_42;
    }
  }

  else if ((v4 & 0x200) == 0)
  {
    goto LABEL_17;
  }

  v16 = *(lpsrc + 11);
  *(this + 25) |= 0x200u;
  *(this + 11) = v16;
  v4 = *(lpsrc + 25);
  if ((v4 & 0x400) == 0)
  {
LABEL_18:
    if ((v4 & 0x800) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_43;
  }

LABEL_42:
  v17 = *(lpsrc + 12);
  *(this + 25) |= 0x400u;
  *(this + 12) = v17;
  v4 = *(lpsrc + 25);
  if ((v4 & 0x800) == 0)
  {
LABEL_19:
    if ((v4 & 0x1000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_44;
  }

LABEL_43:
  v18 = *(lpsrc + 13);
  *(this + 25) |= 0x800u;
  *(this + 13) = v18;
  v4 = *(lpsrc + 25);
  if ((v4 & 0x1000) == 0)
  {
LABEL_20:
    if ((v4 & 0x2000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_45;
  }

LABEL_44:
  v19 = *(lpsrc + 14);
  *(this + 25) |= 0x1000u;
  *(this + 14) = v19;
  v4 = *(lpsrc + 25);
  if ((v4 & 0x2000) == 0)
  {
LABEL_21:
    if ((v4 & 0x4000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_46;
  }

LABEL_45:
  v20 = *(lpsrc + 15);
  *(this + 25) |= 0x2000u;
  *(this + 15) = v20;
  v4 = *(lpsrc + 25);
  if ((v4 & 0x4000) == 0)
  {
LABEL_22:
    if ((v4 & 0x8000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_23;
  }

LABEL_46:
  v21 = *(lpsrc + 16);
  *(this + 25) |= 0x4000u;
  *(this + 16) = v21;
  v4 = *(lpsrc + 25);
  if ((v4 & 0x8000) != 0)
  {
LABEL_23:
    v6 = *(lpsrc + 17);
    *(this + 25) |= 0x8000u;
    *(this + 17) = v6;
    v4 = *(lpsrc + 25);
  }

LABEL_24:
  if ((v4 & 0xFF0000) == 0)
  {
    return;
  }

  if ((v4 & 0x10000) != 0)
  {
    v22 = *(lpsrc + 18);
    *(this + 25) |= 0x10000u;
    *(this + 18) = v22;
    v4 = *(lpsrc + 25);
    if ((v4 & 0x20000) == 0)
    {
LABEL_27:
      if ((v4 & 0x40000) == 0)
      {
        goto LABEL_28;
      }

      goto LABEL_50;
    }
  }

  else if ((v4 & 0x20000) == 0)
  {
    goto LABEL_27;
  }

  v23 = *(lpsrc + 19);
  *(this + 25) |= 0x20000u;
  *(this + 19) = v23;
  v4 = *(lpsrc + 25);
  if ((v4 & 0x40000) == 0)
  {
LABEL_28:
    if ((v4 & 0x80000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_51;
  }

LABEL_50:
  v24 = *(lpsrc + 20);
  *(this + 25) |= 0x40000u;
  *(this + 20) = v24;
  v4 = *(lpsrc + 25);
  if ((v4 & 0x80000) == 0)
  {
LABEL_29:
    if ((v4 & 0x100000) == 0)
    {
      return;
    }

    goto LABEL_30;
  }

LABEL_51:
  v25 = *(lpsrc + 21);
  *(this + 25) |= 0x80000u;
  *(this + 21) = v25;
  if ((*(lpsrc + 25) & 0x100000) != 0)
  {
LABEL_30:
    v7 = *(lpsrc + 11);
    *(this + 25) |= 0x100000u;
    *(this + 11) = v7;
  }
}

void sub_1E4D0364C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::metrics::Remote_SoundUMB_Dchannel_XR_VoIPMetricsReportBlock::~Remote_SoundUMB_Dchannel_XR_VoIPMetricsReportBlock(awd::metrics::Remote_SoundUMB_Dchannel_XR_VoIPMetricsReportBlock *this)
{
  *this = &unk_1F5EC61F0;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_1F5EC61F0;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  JUMPOUT(0x1E69235B0);
}

uint64_t awd::metrics::Remote_SoundUMB_Dchannel_XR_VoIPMetricsReportBlock::Clear(uint64_t this)
{
  v1 = *(this + 100);
  if (v1)
  {
    *(this + 24) = 0u;
    *(this + 8) = 0u;
  }

  if ((v1 & 0xFF00) != 0)
  {
    *(this + 56) = 0u;
    *(this + 40) = 0u;
  }

  if ((v1 & 0xFF0000) != 0)
  {
    *(this + 72) = 0;
    *(this + 80) = 0;
    *(this + 88) = 0;
  }

  *(this + 100) = 0;
  return this;
}

uint64_t awd::metrics::Remote_SoundUMB_Dchannel_XR_VoIPMetricsReportBlock::MergePartialFromCodedStream(awd::metrics::Remote_SoundUMB_Dchannel_XR_VoIPMetricsReportBlock *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
{
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
        if (v7 != 5)
        {
          goto LABEL_54;
        }

        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a2, this + 2);
        if (result)
        {
          *(this + 25) |= 1u;
          v10 = *(a2 + 1);
          v9 = *(a2 + 2);
          if (v10 < v9 && *v10 == 16)
          {
            v11 = v10 + 1;
            *(a2 + 1) = v11;
            goto LABEL_30;
          }

          continue;
        }

        return result;
      case 2u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_54;
        }

        v11 = *(a2 + 1);
        v9 = *(a2 + 2);
LABEL_30:
        if (v11 < v9)
        {
          v20 = *v11;
          if ((v20 & 0x80000000) == 0)
          {
            *(this + 3) = v20;
            v21 = v11 + 1;
            *(a2 + 1) = v21;
LABEL_60:
            *(this + 25) |= 2u;
            if (v21 < v9 && *v21 == 24)
            {
              v17 = v21 + 1;
              *(a2 + 1) = v17;
              goto LABEL_63;
            }

            continue;
          }
        }

        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 3);
        if (result)
        {
          v21 = *(a2 + 1);
          v9 = *(a2 + 2);
          goto LABEL_60;
        }

        break;
      case 3u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_54;
        }

        v17 = *(a2 + 1);
        v9 = *(a2 + 2);
LABEL_63:
        if (v17 >= v9 || (v33 = *v17, v33 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 4);
          if (!result)
          {
            return result;
          }

          v34 = *(a2 + 1);
          v9 = *(a2 + 2);
        }

        else
        {
          *(this + 4) = v33;
          v34 = v17 + 1;
          *(a2 + 1) = v34;
        }

        *(this + 25) |= 4u;
        if (v34 >= v9 || *v34 != 32)
        {
          continue;
        }

        v26 = v34 + 1;
        *(a2 + 1) = v26;
LABEL_71:
        if (v26 >= v9 || (v35 = *v26, v35 < 0))
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
          v36 = v26 + 1;
          *(a2 + 1) = v36;
        }

        *(this + 25) |= 8u;
        if (v36 >= v9 || *v36 != 40)
        {
          continue;
        }

        v27 = v36 + 1;
        *(a2 + 1) = v27;
LABEL_79:
        if (v27 >= v9 || (v37 = *v27, v37 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 6);
          if (!result)
          {
            return result;
          }

          v38 = *(a2 + 1);
          v9 = *(a2 + 2);
        }

        else
        {
          *(this + 6) = v37;
          v38 = v27 + 1;
          *(a2 + 1) = v38;
        }

        *(this + 25) |= 0x10u;
        if (v38 >= v9 || *v38 != 48)
        {
          continue;
        }

        v18 = v38 + 1;
        *(a2 + 1) = v18;
LABEL_87:
        if (v18 >= v9 || (v39 = *v18, v39 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 7);
          if (!result)
          {
            return result;
          }

          v40 = *(a2 + 1);
          v9 = *(a2 + 2);
        }

        else
        {
          *(this + 7) = v39;
          v40 = v18 + 1;
          *(a2 + 1) = v40;
        }

        *(this + 25) |= 0x20u;
        if (v40 >= v9 || *v40 != 56)
        {
          continue;
        }

        v22 = v40 + 1;
        *(a2 + 1) = v22;
LABEL_95:
        if (v22 >= v9 || (v41 = *v22, v41 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 8);
          if (!result)
          {
            return result;
          }

          v42 = *(a2 + 1);
          v9 = *(a2 + 2);
        }

        else
        {
          *(this + 8) = v41;
          v42 = v22 + 1;
          *(a2 + 1) = v42;
        }

        *(this + 25) |= 0x40u;
        if (v42 >= v9 || *v42 != 64)
        {
          continue;
        }

        v23 = v42 + 1;
        *(a2 + 1) = v23;
LABEL_103:
        if (v23 >= v9 || (v43 = *v23, v43 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 9);
          if (!result)
          {
            return result;
          }

          v44 = *(a2 + 1);
          v9 = *(a2 + 2);
        }

        else
        {
          *(this + 9) = v43;
          v44 = v23 + 1;
          *(a2 + 1) = v44;
        }

        *(this + 25) |= 0x80u;
        if (v44 >= v9 || *v44 != 72)
        {
          continue;
        }

        v29 = v44 + 1;
        *(a2 + 1) = v29;
LABEL_111:
        if (v29 >= v9 || (v45 = *v29, v45 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 10);
          if (!result)
          {
            return result;
          }

          v46 = *(a2 + 1);
          v9 = *(a2 + 2);
        }

        else
        {
          *(this + 10) = v45;
          v46 = v29 + 1;
          *(a2 + 1) = v46;
        }

        *(this + 25) |= 0x100u;
        if (v46 >= v9 || *v46 != 80)
        {
          continue;
        }

        v28 = v46 + 1;
        *(a2 + 1) = v28;
LABEL_119:
        if (v28 >= v9 || (v47 = *v28, v47 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 11);
          if (!result)
          {
            return result;
          }

          v48 = *(a2 + 1);
          v9 = *(a2 + 2);
        }

        else
        {
          *(this + 11) = v47;
          v48 = v28 + 1;
          *(a2 + 1) = v48;
        }

        *(this + 25) |= 0x200u;
        if (v48 >= v9 || *v48 != 88)
        {
          continue;
        }

        v14 = v48 + 1;
        *(a2 + 1) = v14;
LABEL_127:
        if (v14 >= v9 || (v49 = *v14, v49 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 12);
          if (!result)
          {
            return result;
          }

          v50 = *(a2 + 1);
          v9 = *(a2 + 2);
        }

        else
        {
          *(this + 12) = v49;
          v50 = v14 + 1;
          *(a2 + 1) = v50;
        }

        *(this + 25) |= 0x400u;
        if (v50 >= v9 || *v50 != 96)
        {
          continue;
        }

        v19 = v50 + 1;
        *(a2 + 1) = v19;
LABEL_135:
        if (v19 >= v9 || (v51 = *v19, v51 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 13);
          if (!result)
          {
            return result;
          }

          v52 = *(a2 + 1);
          v9 = *(a2 + 2);
        }

        else
        {
          *(this + 13) = v51;
          v52 = v19 + 1;
          *(a2 + 1) = v52;
        }

        *(this + 25) |= 0x800u;
        if (v52 >= v9 || *v52 != 112)
        {
          continue;
        }

        v15 = v52 + 1;
        *(a2 + 1) = v15;
LABEL_143:
        if (v15 >= v9 || (v53 = *v15, v53 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 14);
          if (!result)
          {
            return result;
          }

          v54 = *(a2 + 1);
          v9 = *(a2 + 2);
        }

        else
        {
          *(this + 14) = v53;
          v54 = v15 + 1;
          *(a2 + 1) = v54;
        }

        *(this + 25) |= 0x1000u;
        if (v54 >= v9 || *v54 != 120)
        {
          continue;
        }

        v13 = v54 + 1;
        *(a2 + 1) = v13;
LABEL_151:
        if (v13 >= v9 || (v55 = *v13, v55 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 15);
          if (!result)
          {
            return result;
          }

          v56 = *(a2 + 1);
          v9 = *(a2 + 2);
        }

        else
        {
          *(this + 15) = v55;
          v56 = (v13 + 1);
          *(a2 + 1) = v56;
        }

        *(this + 25) |= 0x2000u;
        if (v9 - v56 < 2 || *v56 != 128 || v56[1] != 1)
        {
          continue;
        }

        v24 = (v56 + 2);
        *(a2 + 1) = v24;
LABEL_160:
        if (v24 >= v9 || (v57 = *v24, v57 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 16);
          if (!result)
          {
            return result;
          }

          v58 = *(a2 + 1);
          v9 = *(a2 + 2);
        }

        else
        {
          *(this + 16) = v57;
          v58 = (v24 + 1);
          *(a2 + 1) = v58;
        }

        *(this + 25) |= 0x4000u;
        if (v9 - v58 < 2 || *v58 != 136 || v58[1] != 1)
        {
          continue;
        }

        v25 = (v58 + 2);
        *(a2 + 1) = v25;
LABEL_169:
        if (v25 >= v9 || (v59 = *v25, v59 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 17);
          if (!result)
          {
            return result;
          }

          v60 = *(a2 + 1);
          v9 = *(a2 + 2);
        }

        else
        {
          *(this + 17) = v59;
          v60 = (v25 + 1);
          *(a2 + 1) = v60;
        }

        *(this + 25) |= 0x8000u;
        if (v9 - v60 < 2 || *v60 != 144 || v60[1] != 1)
        {
          continue;
        }

        v31 = (v60 + 2);
        *(a2 + 1) = v31;
LABEL_178:
        if (v31 >= v9 || (v61 = *v31, v61 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 18);
          if (!result)
          {
            return result;
          }

          v62 = *(a2 + 1);
          v9 = *(a2 + 2);
        }

        else
        {
          *(this + 18) = v61;
          v62 = (v31 + 1);
          *(a2 + 1) = v62;
        }

        *(this + 25) |= 0x10000u;
        if (v9 - v62 < 2 || *v62 != 152 || v62[1] != 1)
        {
          continue;
        }

        v30 = (v62 + 2);
        *(a2 + 1) = v30;
LABEL_187:
        if (v30 >= v9 || (v63 = *v30, v63 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 19);
          if (!result)
          {
            return result;
          }

          v64 = *(a2 + 1);
          v9 = *(a2 + 2);
        }

        else
        {
          *(this + 19) = v63;
          v64 = (v30 + 1);
          *(a2 + 1) = v64;
        }

        *(this + 25) |= 0x20000u;
        if (v9 - v64 < 2 || *v64 != 160 || v64[1] != 1)
        {
          continue;
        }

        v12 = (v64 + 2);
        *(a2 + 1) = v12;
LABEL_196:
        if (v12 >= v9 || (v65 = *v12, v65 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 20);
          if (!result)
          {
            return result;
          }

          v66 = *(a2 + 1);
          v9 = *(a2 + 2);
        }

        else
        {
          *(this + 20) = v65;
          v66 = (v12 + 1);
          *(a2 + 1) = v66;
        }

        *(this + 25) |= 0x40000u;
        if (v9 - v66 < 2 || *v66 != 168 || v66[1] != 1)
        {
          continue;
        }

        v16 = (v66 + 2);
        *(a2 + 1) = v16;
LABEL_205:
        if (v16 >= v9 || (v67 = *v16, v67 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 21);
          if (!result)
          {
            return result;
          }

          v68 = *(a2 + 1);
          v9 = *(a2 + 2);
        }

        else
        {
          *(this + 21) = v67;
          v68 = (v16 + 1);
          *(a2 + 1) = v68;
        }

        *(this + 25) |= 0x80000u;
        if (v9 - v68 < 2 || *v68 != 176 || v68[1] != 1)
        {
          continue;
        }

        v32 = (v68 + 2);
        *(a2 + 1) = v32;
LABEL_214:
        if (v32 >= v9 || (v69 = *v32, v69 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 11);
          if (!result)
          {
            return result;
          }

          v70 = *(a2 + 1);
          v9 = *(a2 + 2);
        }

        else
        {
          *(this + 11) = v69;
          v70 = v32 + 1;
          *(a2 + 1) = v70;
        }

        *(this + 25) |= 0x100000u;
        if (v70 != v9 || !*(a2 + 11) && *(a2 + 6) != *(a2 + 10))
        {
          continue;
        }

        *(a2 + 8) = 0;
        result = 1;
        *(a2 + 36) = 1;
        return result;
      case 4u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_54;
        }

        v26 = *(a2 + 1);
        v9 = *(a2 + 2);
        goto LABEL_71;
      case 5u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_54;
        }

        v27 = *(a2 + 1);
        v9 = *(a2 + 2);
        goto LABEL_79;
      case 6u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_54;
        }

        v18 = *(a2 + 1);
        v9 = *(a2 + 2);
        goto LABEL_87;
      case 7u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_54;
        }

        v22 = *(a2 + 1);
        v9 = *(a2 + 2);
        goto LABEL_95;
      case 8u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_54;
        }

        v23 = *(a2 + 1);
        v9 = *(a2 + 2);
        goto LABEL_103;
      case 9u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_54;
        }

        v29 = *(a2 + 1);
        v9 = *(a2 + 2);
        goto LABEL_111;
      case 0xAu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_54;
        }

        v28 = *(a2 + 1);
        v9 = *(a2 + 2);
        goto LABEL_119;
      case 0xBu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_54;
        }

        v14 = *(a2 + 1);
        v9 = *(a2 + 2);
        goto LABEL_127;
      case 0xCu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_54;
        }

        v19 = *(a2 + 1);
        v9 = *(a2 + 2);
        goto LABEL_135;
      case 0xEu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_54;
        }

        v15 = *(a2 + 1);
        v9 = *(a2 + 2);
        goto LABEL_143;
      case 0xFu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_54;
        }

        v13 = *(a2 + 1);
        v9 = *(a2 + 2);
        goto LABEL_151;
      case 0x10u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_54;
        }

        v24 = *(a2 + 1);
        v9 = *(a2 + 2);
        goto LABEL_160;
      case 0x11u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_54;
        }

        v25 = *(a2 + 1);
        v9 = *(a2 + 2);
        goto LABEL_169;
      case 0x12u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_54;
        }

        v31 = *(a2 + 1);
        v9 = *(a2 + 2);
        goto LABEL_178;
      case 0x13u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_54;
        }

        v30 = *(a2 + 1);
        v9 = *(a2 + 2);
        goto LABEL_187;
      case 0x14u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_54;
        }

        v12 = *(a2 + 1);
        v9 = *(a2 + 2);
        goto LABEL_196;
      case 0x15u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_54;
        }

        v16 = *(a2 + 1);
        v9 = *(a2 + 2);
        goto LABEL_205;
      case 0x16u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_54;
        }

        v32 = *(a2 + 1);
        v9 = *(a2 + 2);
        goto LABEL_214;
      default:
LABEL_54:
        if (v7 == 4)
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