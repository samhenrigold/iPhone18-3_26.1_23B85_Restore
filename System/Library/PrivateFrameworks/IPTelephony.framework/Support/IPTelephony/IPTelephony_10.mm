void awd::metrics::ATM_CallConnectEvent::CheckTypeAndMergeFrom(awd::metrics::ATM_CallConnectEvent *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  if (lpsrc == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v67);
  }

  v4 = *(lpsrc + 59);
  if (!v4)
  {
    goto LABEL_14;
  }

  if (v4)
  {
    v12 = *(lpsrc + 1);
    *(this + 59) |= 1u;
    *(this + 1) = v12;
    v4 = *(lpsrc + 59);
    if ((v4 & 2) == 0)
    {
LABEL_7:
      if ((v4 & 4) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_69;
    }
  }

  else if ((v4 & 2) == 0)
  {
    goto LABEL_7;
  }

  v13 = *(lpsrc + 2);
  *(this + 59) |= 2u;
  v14 = *(this + 2);
  if (v14 == MEMORY[0x1E69E5958])
  {
    operator new();
  }

  std::string::operator=(v14, v13);
  v4 = *(lpsrc + 59);
  if ((v4 & 4) == 0)
  {
LABEL_8:
    if ((v4 & 8) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_70;
  }

LABEL_69:
  v15 = *(lpsrc + 28);
  *(this + 59) |= 4u;
  *(this + 28) = v15;
  v4 = *(lpsrc + 59);
  if ((v4 & 8) == 0)
  {
LABEL_9:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_72;
  }

LABEL_70:
  v16 = *(lpsrc + 6);
  if ((v16 + 1) >= 8)
  {
    __assert_rtn("set_type", "CATM.pb.h", 10746, "::awd::metrics::enum_ATM_call_type_IsValid(value)");
  }

  *(this + 59) |= 8u;
  *(this + 6) = v16;
  v4 = *(lpsrc + 59);
  if ((v4 & 0x10) == 0)
  {
LABEL_10:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_11;
    }

LABEL_73:
    v18 = *(lpsrc + 30);
    *(this + 59) |= 0x20u;
    *(this + 30) = v18;
    v4 = *(lpsrc + 59);
    if ((v4 & 0x40) == 0)
    {
LABEL_12:
      if ((v4 & 0x80) == 0)
      {
        goto LABEL_14;
      }

      goto LABEL_13;
    }

    goto LABEL_74;
  }

LABEL_72:
  v17 = *(lpsrc + 29);
  *(this + 59) |= 0x10u;
  *(this + 29) = v17;
  v4 = *(lpsrc + 59);
  if ((v4 & 0x20) != 0)
  {
    goto LABEL_73;
  }

LABEL_11:
  if ((v4 & 0x40) == 0)
  {
    goto LABEL_12;
  }

LABEL_74:
  v19 = *(lpsrc + 31);
  *(this + 59) |= 0x40u;
  *(this + 31) = v19;
  v4 = *(lpsrc + 59);
  if ((v4 & 0x80) != 0)
  {
LABEL_13:
    v5 = *(lpsrc + 96);
    *(this + 59) |= 0x80u;
    *(this + 96) = v5;
    v4 = *(lpsrc + 59);
  }

LABEL_14:
  if ((v4 & 0xFF00) == 0)
  {
    goto LABEL_26;
  }

  if ((v4 & 0x100) != 0)
  {
    v6 = *(lpsrc + 8);
    if ((v6 - 1) >= 6 && v6 != -1)
    {
      __assert_rtn("set_invite_type", "CATM.pb.h", 10857, "::awd::metrics::enum_ATM_invite_call_type_IsValid(value)");
    }

    *(this + 59) |= 0x100u;
    *(this + 8) = v6;
    v4 = *(lpsrc + 59);
  }

  if ((v4 & 0x200) != 0)
  {
    v38 = *(lpsrc + 5);
    *(this + 59) |= 0x200u;
    v39 = *(this + 5);
    if (v39 == MEMORY[0x1E69E5958])
    {
      operator new();
    }

    std::string::operator=(v39, v38);
    v4 = *(lpsrc + 59);
    if ((v4 & 0x400) == 0)
    {
LABEL_20:
      if ((v4 & 0x800) == 0)
      {
        goto LABEL_21;
      }

      goto LABEL_107;
    }
  }

  else if ((v4 & 0x400) == 0)
  {
    goto LABEL_20;
  }

  v40 = *(lpsrc + 9);
  *(this + 59) |= 0x400u;
  *(this + 9) = v40;
  v4 = *(lpsrc + 59);
  if ((v4 & 0x800) == 0)
  {
LABEL_21:
    if ((v4 & 0x1000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_110;
  }

LABEL_107:
  v41 = *(lpsrc + 6);
  *(this + 59) |= 0x800u;
  v42 = *(this + 6);
  if (v42 == MEMORY[0x1E69E5958])
  {
    operator new();
  }

  std::string::operator=(v42, v41);
  v4 = *(lpsrc + 59);
  if ((v4 & 0x1000) == 0)
  {
LABEL_22:
    if ((v4 & 0x2000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_111;
  }

LABEL_110:
  v43 = *(lpsrc + 97);
  *(this + 59) |= 0x1000u;
  *(this + 97) = v43;
  v4 = *(lpsrc + 59);
  if ((v4 & 0x2000) == 0)
  {
LABEL_23:
    if ((v4 & 0x4000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_114;
  }

LABEL_111:
  v44 = *(lpsrc + 7);
  *(this + 59) |= 0x2000u;
  v45 = *(this + 7);
  if (v45 == MEMORY[0x1E69E5958])
  {
    operator new();
  }

  std::string::operator=(v45, v44);
  v4 = *(lpsrc + 59);
  if ((v4 & 0x4000) == 0)
  {
LABEL_24:
    if ((v4 & 0x8000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_25;
  }

LABEL_114:
  v46 = *(lpsrc + 8);
  *(this + 59) |= 0x4000u;
  v47 = *(this + 8);
  if (v47 == MEMORY[0x1E69E5958])
  {
    operator new();
  }

  std::string::operator=(v47, v46);
  v4 = *(lpsrc + 59);
  if ((v4 & 0x8000) != 0)
  {
LABEL_25:
    v7 = *(lpsrc + 18);
    *(this + 59) |= 0x8000u;
    *(this + 18) = v7;
    v4 = *(lpsrc + 59);
  }

LABEL_26:
  if ((v4 & 0xFF0000) == 0)
  {
    goto LABEL_36;
  }

  if ((v4 & 0x10000) != 0)
  {
    v20 = *(lpsrc + 19);
    *(this + 59) |= 0x10000u;
    *(this + 19) = v20;
    v4 = *(lpsrc + 59);
    if ((v4 & 0x20000) == 0)
    {
LABEL_29:
      if ((v4 & 0x40000) == 0)
      {
        goto LABEL_30;
      }

      goto LABEL_80;
    }
  }

  else if ((v4 & 0x20000) == 0)
  {
    goto LABEL_29;
  }

  v21 = *(lpsrc + 10);
  *(this + 59) |= 0x20000u;
  v22 = *(this + 10);
  if (v22 == MEMORY[0x1E69E5958])
  {
    operator new();
  }

  std::string::operator=(v22, v21);
  v4 = *(lpsrc + 59);
  if ((v4 & 0x40000) == 0)
  {
LABEL_30:
    if ((v4 & 0x80000) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_83;
  }

LABEL_80:
  v23 = *(lpsrc + 11);
  *(this + 59) |= 0x40000u;
  v24 = *(this + 11);
  if (v24 == MEMORY[0x1E69E5958])
  {
    operator new();
  }

  std::string::operator=(v24, v23);
  v4 = *(lpsrc + 59);
  if ((v4 & 0x80000) == 0)
  {
LABEL_31:
    if ((v4 & 0x100000) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_86;
  }

LABEL_83:
  v25 = *(lpsrc + 13);
  *(this + 59) |= 0x80000u;
  v26 = *(this + 13);
  if (v26 == MEMORY[0x1E69E5958])
  {
    operator new();
  }

  std::string::operator=(v26, v25);
  v4 = *(lpsrc + 59);
  if ((v4 & 0x100000) == 0)
  {
LABEL_32:
    if ((v4 & 0x200000) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_89;
  }

LABEL_86:
  v27 = *(lpsrc + 14);
  *(this + 59) |= 0x100000u;
  v28 = *(this + 14);
  if (v28 == MEMORY[0x1E69E5958])
  {
    operator new();
  }

  std::string::operator=(v28, v27);
  v4 = *(lpsrc + 59);
  if ((v4 & 0x200000) == 0)
  {
LABEL_33:
    if ((v4 & 0x400000) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_90;
  }

LABEL_89:
  v29 = *(lpsrc + 98);
  *(this + 59) |= 0x200000u;
  *(this + 98) = v29;
  v4 = *(lpsrc + 59);
  if ((v4 & 0x400000) == 0)
  {
LABEL_34:
    if ((v4 & 0x800000) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_35;
  }

LABEL_90:
  v30 = *(lpsrc + 25);
  *(this + 59) |= 0x400000u;
  *(this + 25) = v30;
  v4 = *(lpsrc + 59);
  if ((v4 & 0x800000) != 0)
  {
LABEL_35:
    v8 = *(lpsrc + 34);
    *(this + 59) |= 0x800000u;
    *(this + 34) = v8;
    v4 = *(lpsrc + 59);
  }

LABEL_36:
  if (!HIBYTE(v4))
  {
    goto LABEL_45;
  }

  if ((v4 & 0x1000000) != 0)
  {
    v56 = *(lpsrc + 15);
    *(this + 59) |= 0x1000000u;
    v57 = *(this + 15);
    if (v57 == MEMORY[0x1E69E5958])
    {
      operator new();
    }

    std::string::operator=(v57, v56);
    v4 = *(lpsrc + 59);
    if ((v4 & 0x2000000) == 0)
    {
LABEL_39:
      if ((v4 & 0x4000000) == 0)
      {
        goto LABEL_40;
      }

      goto LABEL_134;
    }
  }

  else if ((v4 & 0x2000000) == 0)
  {
    goto LABEL_39;
  }

  v58 = *(lpsrc + 16);
  *(this + 59) |= 0x2000000u;
  v59 = *(this + 16);
  if (v59 == MEMORY[0x1E69E5958])
  {
    operator new();
  }

  std::string::operator=(v59, v58);
  v4 = *(lpsrc + 59);
  if ((v4 & 0x4000000) == 0)
  {
LABEL_40:
    if ((v4 & 0x8000000) == 0)
    {
      goto LABEL_41;
    }

    goto LABEL_137;
  }

LABEL_134:
  v60 = *(lpsrc + 18);
  *(this + 59) |= 0x4000000u;
  v61 = *(this + 18);
  if (v61 == MEMORY[0x1E69E5958])
  {
    operator new();
  }

  std::string::operator=(v61, v60);
  v4 = *(lpsrc + 59);
  if ((v4 & 0x8000000) == 0)
  {
LABEL_41:
    if ((v4 & 0x10000000) == 0)
    {
      goto LABEL_42;
    }

    goto LABEL_138;
  }

LABEL_137:
  v62 = *(lpsrc + 35);
  *(this + 59) |= 0x8000000u;
  *(this + 35) = v62;
  v4 = *(lpsrc + 59);
  if ((v4 & 0x10000000) == 0)
  {
LABEL_42:
    if ((v4 & 0x20000000) == 0)
    {
      goto LABEL_43;
    }

    goto LABEL_139;
  }

LABEL_138:
  v63 = *(lpsrc + 38);
  *(this + 59) |= 0x10000000u;
  *(this + 38) = v63;
  v4 = *(lpsrc + 59);
  if ((v4 & 0x20000000) == 0)
  {
LABEL_43:
    if ((v4 & 0x40000000) == 0)
    {
      goto LABEL_44;
    }

LABEL_140:
    v65 = *(lpsrc + 39);
    *(this + 59) |= 0x40000000u;
    *(this + 39) = v65;
    if ((*(lpsrc + 59) & 0x80000000) == 0)
    {
      goto LABEL_45;
    }

    goto LABEL_141;
  }

LABEL_139:
  v64 = *(lpsrc + 99);
  *(this + 59) |= 0x20000000u;
  *(this + 99) = v64;
  v4 = *(lpsrc + 59);
  if ((v4 & 0x40000000) != 0)
  {
    goto LABEL_140;
  }

LABEL_44:
  if ((v4 & 0x80000000) == 0)
  {
    goto LABEL_45;
  }

LABEL_141:
  v66 = *(lpsrc + 42);
  *(this + 59) |= 0x80000000;
  *(this + 42) = v66;
LABEL_45:
  v9 = *(lpsrc + 60);
  if (!v9)
  {
    goto LABEL_56;
  }

  if (v9)
  {
    v31 = *(lpsrc + 20);
    *(this + 60) |= 1u;
    *(this + 20) = v31;
    v9 = *(lpsrc + 60);
    if ((v9 & 2) == 0)
    {
LABEL_48:
      if ((v9 & 4) == 0)
      {
        goto LABEL_49;
      }

      goto LABEL_94;
    }
  }

  else if ((v9 & 2) == 0)
  {
    goto LABEL_48;
  }

  v32 = *(lpsrc + 43);
  *(this + 60) |= 2u;
  *(this + 43) = v32;
  v9 = *(lpsrc + 60);
  if ((v9 & 4) == 0)
  {
LABEL_49:
    if ((v9 & 8) == 0)
    {
      goto LABEL_50;
    }

    goto LABEL_95;
  }

LABEL_94:
  v33 = *(lpsrc + 196);
  *(this + 60) |= 4u;
  *(this + 196) = v33;
  v9 = *(lpsrc + 60);
  if ((v9 & 8) == 0)
  {
LABEL_50:
    if ((v9 & 0x10) == 0)
    {
      goto LABEL_51;
    }

    goto LABEL_98;
  }

LABEL_95:
  v34 = *(lpsrc + 22);
  *(this + 60) |= 8u;
  v35 = *(this + 22);
  if (v35 == MEMORY[0x1E69E5958])
  {
    operator new();
  }

  std::string::operator=(v35, v34);
  v9 = *(lpsrc + 60);
  if ((v9 & 0x10) == 0)
  {
LABEL_51:
    if ((v9 & 0x20) == 0)
    {
      goto LABEL_52;
    }

    goto LABEL_100;
  }

LABEL_98:
  v36 = *(lpsrc + 46);
  if (v36 >= 3)
  {
    __assert_rtn("set_amr_format", "CATM.pb.h", 12050, "::awd::metrics::enum_codec_format_IsValid(value)");
  }

  *(this + 60) |= 0x10u;
  *(this + 46) = v36;
  v9 = *(lpsrc + 60);
  if ((v9 & 0x20) == 0)
  {
LABEL_52:
    if ((v9 & 0x40) == 0)
    {
      goto LABEL_54;
    }

    goto LABEL_53;
  }

LABEL_100:
  v37 = *(lpsrc + 47);
  if (v37 >= 6)
  {
    __assert_rtn("set_codec", "CATM.pb.h", 12073, "::awd::metrics::enum_codec_type_IsValid(value)");
  }

  *(this + 60) |= 0x20u;
  *(this + 47) = v37;
  v9 = *(lpsrc + 60);
  if ((v9 & 0x40) == 0)
  {
    goto LABEL_54;
  }

LABEL_53:
  v10 = *(lpsrc + 48);
  *(this + 60) |= 0x40u;
  *(this + 48) = v10;
  v9 = *(lpsrc + 60);
LABEL_54:
  if ((v9 & 0x80) != 0)
  {
    v11 = *(lpsrc + 50);
    *(this + 60) |= 0x80u;
    *(this + 50) = v11;
    v9 = *(lpsrc + 60);
  }

LABEL_56:
  if ((v9 & 0xFF00) == 0)
  {
    return;
  }

  if ((v9 & 0x100) != 0)
  {
    v48 = *(lpsrc + 51);
    *(this + 60) |= 0x100u;
    *(this + 51) = v48;
    v9 = *(lpsrc + 60);
    if ((v9 & 0x200) == 0)
    {
LABEL_59:
      if ((v9 & 0x400) == 0)
      {
        goto LABEL_60;
      }

      goto LABEL_120;
    }
  }

  else if ((v9 & 0x200) == 0)
  {
    goto LABEL_59;
  }

  v49 = *(lpsrc + 52);
  *(this + 60) |= 0x200u;
  *(this + 52) = v49;
  v9 = *(lpsrc + 60);
  if ((v9 & 0x400) == 0)
  {
LABEL_60:
    if ((v9 & 0x800) == 0)
    {
      goto LABEL_61;
    }

    goto LABEL_121;
  }

LABEL_120:
  v50 = *(lpsrc + 53);
  *(this + 60) |= 0x400u;
  *(this + 53) = v50;
  v9 = *(lpsrc + 60);
  if ((v9 & 0x800) == 0)
  {
LABEL_61:
    if ((v9 & 0x1000) == 0)
    {
      goto LABEL_62;
    }

    goto LABEL_122;
  }

LABEL_121:
  v51 = *(lpsrc + 54);
  *(this + 60) |= 0x800u;
  *(this + 54) = v51;
  v9 = *(lpsrc + 60);
  if ((v9 & 0x1000) == 0)
  {
LABEL_62:
    if ((v9 & 0x2000) == 0)
    {
      goto LABEL_63;
    }

LABEL_123:
    v53 = *(lpsrc + 55);
    *(this + 60) |= 0x2000u;
    *(this + 55) = v53;
    if ((*(lpsrc + 60) & 0x4000) == 0)
    {
      return;
    }

    goto LABEL_124;
  }

LABEL_122:
  v52 = *(lpsrc + 197);
  *(this + 60) |= 0x1000u;
  *(this + 197) = v52;
  v9 = *(lpsrc + 60);
  if ((v9 & 0x2000) != 0)
  {
    goto LABEL_123;
  }

LABEL_63:
  if ((v9 & 0x4000) == 0)
  {
    return;
  }

LABEL_124:
  v54 = *(lpsrc + 28);
  *(this + 60) |= 0x4000u;
  v55 = *(this + 28);
  if (v55 == MEMORY[0x1E69E5958])
  {
    operator new();
  }

  std::string::operator=(v55, v54);
}

void sub_1E4CF35D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::metrics::ATM_CallEndEvent_myreason::MergeFrom(awd::metrics::ATM_CallEndEvent_myreason *this, const awd::metrics::ATM_CallEndEvent_myreason *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v15);
  }

  LOBYTE(v4) = *(a2 + 48);
  if (!v4)
  {
    return;
  }

  v5 = MEMORY[0x1E69E5958];
  if (*(a2 + 48))
  {
    v6 = *(a2 + 1);
    *(this + 12) |= 1u;
    v7 = *(this + 1);
    if (v7 == v5)
    {
      operator new();
    }

    std::string::operator=(v7, v6);
    v4 = *(a2 + 12);
    if ((v4 & 2) == 0)
    {
LABEL_6:
      if ((v4 & 4) == 0)
      {
        goto LABEL_7;
      }

LABEL_14:
      v9 = *(a2 + 2);
      *(this + 12) |= 4u;
      v10 = *(this + 2);
      if (v10 == v5)
      {
        operator new();
      }

      std::string::operator=(v10, v9);
      v4 = *(a2 + 12);
      if ((v4 & 8) == 0)
      {
LABEL_8:
        if ((v4 & 0x10) == 0)
        {
          return;
        }

        goto LABEL_20;
      }

      goto LABEL_17;
    }
  }

  else if ((*(a2 + 48) & 2) == 0)
  {
    goto LABEL_6;
  }

  v8 = *(a2 + 10);
  *(this + 12) |= 2u;
  *(this + 10) = v8;
  v4 = *(a2 + 12);
  if ((v4 & 4) != 0)
  {
    goto LABEL_14;
  }

LABEL_7:
  if ((v4 & 8) == 0)
  {
    goto LABEL_8;
  }

LABEL_17:
  v11 = *(a2 + 3);
  *(this + 12) |= 8u;
  v12 = *(this + 3);
  if (v12 == v5)
  {
    operator new();
  }

  std::string::operator=(v12, v11);
  if ((*(a2 + 12) & 0x10) != 0)
  {
LABEL_20:
    v13 = *(a2 + 4);
    *(this + 12) |= 0x10u;
    v14 = *(this + 4);
    if (v14 == v5)
    {
      operator new();
    }

    std::string::operator=(v14, v13);
  }
}

void sub_1E4CF37F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void *awd::metrics::ATM_CallEndEvent_myreason::SharedDtor(void *this)
{
  v1 = this;
  v2 = this[1];
  v3 = MEMORY[0x1E69E5958];
  if (v2 != MEMORY[0x1E69E5958] && v2 != 0)
  {
    if (*(v2 + 23) < 0)
    {
      operator delete(*v2);
    }

    this = MEMORY[0x1E69235B0](v2, 0x1012C40EC159624);
  }

  v5 = v1[2];
  if (v5 != v3 && v5 != 0)
  {
    if (*(v5 + 23) < 0)
    {
      operator delete(*v5);
    }

    this = MEMORY[0x1E69235B0](v5, 0x1012C40EC159624);
  }

  v7 = v1[3];
  if (v7 != v3 && v7 != 0)
  {
    if (*(v7 + 23) < 0)
    {
      operator delete(*v7);
    }

    this = MEMORY[0x1E69235B0](v7, 0x1012C40EC159624);
  }

  v9 = v1[4];
  if (v9 != v3 && v9 != 0)
  {
    if (*(v9 + 23) < 0)
    {
      operator delete(*v9);
    }

    JUMPOUT(0x1E69235B0);
  }

  return this;
}

void awd::metrics::ATM_CallEndEvent_myreason::~ATM_CallEndEvent_myreason(awd::metrics::ATM_CallEndEvent_myreason *this)
{
  *this = &unk_1F5EC5E30;
  awd::metrics::ATM_CallEndEvent_myreason::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_1F5EC5E30;
  awd::metrics::ATM_CallEndEvent_myreason::SharedDtor(this);
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  JUMPOUT(0x1E69235B0);
}

uint64_t awd::metrics::ATM_CallEndEvent_myreason::Clear(uint64_t this)
{
  if (*(this + 48))
  {
    v1 = MEMORY[0x1E69E5958];
    if (*(this + 48))
    {
      v2 = *(this + 8);
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

    *(this + 40) = 0;
    if ((*(this + 48) & 4) != 0)
    {
      v3 = *(this + 16);
      if (v3 != v1)
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

    if ((*(this + 48) & 8) != 0)
    {
      v4 = *(this + 24);
      if (v4 != v1)
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

    if ((*(this + 48) & 0x10) != 0)
    {
      v5 = *(this + 32);
      if (v5 != v1)
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

  *(this + 48) = 0;
  return this;
}

uint64_t awd::metrics::ATM_CallEndEvent_myreason::MergePartialFromCodedStream(awd::metrics::ATM_CallEndEvent_myreason *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
{
  v5 = MEMORY[0x1E69E5958];
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

        if (v8 != 1)
        {
          if (v8 != 2 || (TagFallback & 7) != 0)
          {
            goto LABEL_22;
          }

          v11 = *(a2 + 1);
          v10 = *(a2 + 2);
          goto LABEL_31;
        }

        if (v9 != 2)
        {
          goto LABEL_22;
        }

        *(this + 12) |= 1u;
        if (*(this + 1) == v5)
        {
          operator new();
        }

        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
        if (!result)
        {
          return result;
        }

        v13 = *(a2 + 1);
        v10 = *(a2 + 2);
        if (v13 < v10 && *v13 == 16)
        {
          v11 = v13 + 1;
          *(a2 + 1) = v11;
LABEL_31:
          if (v11 >= v10 || (v14 = *v11, v14 < 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 10);
            if (!result)
            {
              return result;
            }

            v15 = *(a2 + 1);
            v10 = *(a2 + 2);
          }

          else
          {
            *(this + 10) = v14;
            v15 = v11 + 1;
            *(a2 + 1) = v15;
          }

          v12 = *(this + 12) | 2;
          *(this + 12) = v12;
          if (v15 < v10 && *v15 == 26)
          {
            *(a2 + 1) = v15 + 1;
LABEL_39:
            *(this + 12) = v12 | 4;
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
              goto LABEL_45;
            }
          }
        }
      }

      if (v8 == 3)
      {
        if (v9 != 2)
        {
          goto LABEL_22;
        }

        v12 = *(this + 12);
        goto LABEL_39;
      }

      if (v8 != 4)
      {
        break;
      }

      if (v9 != 2)
      {
        goto LABEL_22;
      }

LABEL_45:
      *(this + 12) |= 8u;
      if (*(this + 3) == v5)
      {
        operator new();
      }

      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
      if (!result)
      {
        return result;
      }

      v17 = *(a2 + 1);
      if (v17 < *(a2 + 2) && *v17 == 42)
      {
        *(a2 + 1) = v17 + 1;
LABEL_51:
        *(this + 12) |= 0x10u;
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

    if (v8 == 5 && v9 == 2)
    {
      goto LABEL_51;
    }

LABEL_22:
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

uint64_t awd::metrics::ATM_CallEndEvent_myreason::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 48);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
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

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(2, *(v5 + 40), a2, a4);
  v6 = *(v5 + 48);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

LABEL_10:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
    if ((*(v5 + 48) & 0x10) == 0)
    {
      return this;
    }

    goto LABEL_11;
  }

LABEL_9:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
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

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
}

uint64_t awd::metrics::ATM_CallEndEvent_myreason::ByteSize(awd::metrics::ATM_CallEndEvent_myreason *this, unsigned int a2)
{
  LOBYTE(v3) = *(this + 48);
  if (!v3)
  {
    v4 = 0;
    goto LABEL_50;
  }

  if ((*(this + 48) & 1) == 0)
  {
    v4 = 0;
    if ((*(this + 48) & 2) == 0)
    {
      goto LABEL_19;
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
    v11 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v9);
    v6 = *(v5 + 23);
    v8 = *(v5 + 8);
    v10 = v11 + 1;
    v3 = *(this + 12);
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
    v12 = *(this + 10);
    if (v12 >= 0x80)
    {
      v13 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v12) + 1;
      v3 = *(this + 12);
    }

    else
    {
      v13 = 2;
    }

    v4 = (v13 + v4);
  }

LABEL_19:
  if ((v3 & 4) != 0)
  {
    v14 = *(this + 2);
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
      v3 = *(this + 12);
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
    if ((v3 & 8) == 0)
    {
LABEL_21:
      if ((v3 & 0x10) == 0)
      {
        goto LABEL_50;
      }

      goto LABEL_41;
    }
  }

  else if ((v3 & 8) == 0)
  {
    goto LABEL_21;
  }

  v20 = *(this + 3);
  v21 = *(v20 + 23);
  v22 = v21;
  v23 = *(v20 + 8);
  if ((v21 & 0x80u) == 0)
  {
    v24 = *(v20 + 23);
  }

  else
  {
    v24 = v23;
  }

  if (v24 >= 0x80)
  {
    v25 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v24);
    v21 = *(v20 + 23);
    v23 = *(v20 + 8);
    v3 = *(this + 12);
    v22 = *(v20 + 23);
  }

  else
  {
    v25 = 1;
  }

  if (v22 < 0)
  {
    v21 = v23;
  }

  v4 = (v4 + v25 + v21 + 1);
  if ((v3 & 0x10) != 0)
  {
LABEL_41:
    v26 = *(this + 4);
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

    v4 = (v4 + v31 + v27 + 1);
  }

LABEL_50:
  *(this + 11) = v4;
  return v4;
}

void awd::metrics::ATM_CallEndEvent_myreason::CheckTypeAndMergeFrom(awd::metrics::ATM_CallEndEvent_myreason *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  awd::metrics::ATM_CallEndEvent_myreason::MergeFrom(this, lpsrc);
}

void awd::metrics::ATM_CallEndEvent_handover::MergeFrom(awd::metrics::ATM_CallEndEvent_handover *this, const awd::metrics::ATM_CallEndEvent_handover *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v7);
  }

  LOBYTE(v4) = *(a2 + 20);
  if (v4)
  {
    if (*(a2 + 20))
    {
      v5 = *(a2 + 2);
      *(this + 5) |= 1u;
      *(this + 2) = v5;
      v4 = *(a2 + 5);
    }

    if ((v4 & 2) != 0)
    {
      v6 = *(a2 + 12);
      *(this + 5) |= 2u;
      *(this + 12) = v6;
    }
  }
}

void sub_1E4CF4224(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::metrics::ATM_CallEndEvent_handover::~ATM_CallEndEvent_handover(awd::metrics::ATM_CallEndEvent_handover *this)
{
  *this = &unk_1F5EC5EA8;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_1F5EC5EA8;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  JUMPOUT(0x1E69235B0);
}

uint64_t awd::metrics::ATM_CallEndEvent_handover::Clear(uint64_t this)
{
  if (*(this + 20))
  {
    *(this + 8) = 0;
    *(this + 12) = 0;
  }

  *(this + 20) = 0;
  return this;
}

uint64_t awd::metrics::ATM_CallEndEvent_handover::MergePartialFromCodedStream(awd::metrics::ATM_CallEndEvent_handover *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
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

      v16 = 0;
      v8 = *(a2 + 1);
      v7 = *(a2 + 2);
      if (v8 >= v7 || (v9 = *v8, (v9 & 0x80000000) != 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v16);
        if (!result)
        {
          return result;
        }

        v9 = v16;
        v10 = *(a2 + 1);
        v7 = *(a2 + 2);
      }

      else
      {
        v10 = v8 + 1;
        *(a2 + 1) = v10;
      }

      *(this + 2) = v9;
      *(this + 5) |= 1u;
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

        *(this + 12) = v12 != 0;
        *(this + 5) |= 2u;
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

uint64_t awd::metrics::ATM_CallEndEvent_handover::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 20);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(1, *(this + 8), a2, a4);
    v6 = *(v5 + 20);
  }

  if ((v6 & 2) != 0)
  {
    v7 = *(v5 + 12);

    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(2, v7, a2, a4);
  }

  return this;
}

uint64_t awd::metrics::ATM_CallEndEvent_handover::ByteSize(awd::metrics::ATM_CallEndEvent_handover *this, unsigned int a2)
{
  LOBYTE(v3) = *(this + 20);
  if (v3)
  {
    if (*(this + 20))
    {
      v6 = *(this + 2);
      if ((v6 & 0x80000000) != 0)
      {
        v4 = 11;
      }

      else if (v6 >= 0x80)
      {
        v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v6) + 1;
        v3 = *(this + 5);
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

    result = (v3 & 2u) + v4;
  }

  else
  {
    result = 0;
  }

  *(this + 4) = result;
  return result;
}

void awd::metrics::ATM_CallEndEvent_handover::CheckTypeAndMergeFrom(awd::metrics::ATM_CallEndEvent_handover *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  awd::metrics::ATM_CallEndEvent_handover::MergeFrom(this, lpsrc);
}

double awd::metrics::ATM_CallEndEvent::SharedCtor(awd::metrics::ATM_CallEndEvent *this)
{
  *(this + 167) = 0;
  v1 = MEMORY[0x1E69E5958];
  *(this + 1) = 0;
  *(this + 2) = v1;
  *(this + 28) = 0;
  *(this + 6) = -1;
  *(this + 29) = 0;
  *(this + 31) = 0;
  *(this + 24) = 0;
  *(this + 25) = 0;
  *(this + 4) = v1;
  *(this + 5) = 0xFFFFFFFFLL;
  *(this + 6) = v1;
  *(this + 7) = v1;
  *(this + 8) = v1;
  *(this + 9) = v1;
  *(this + 10) = v1;
  *(this + 11) = v1;
  *(this + 13) = v1;
  *(this + 14) = v1;
  result = 0.0;
  *(this + 120) = 0u;
  *(this + 17) = v1;
  *(this + 19) = v1;
  *(this + 20) = v1;
  *(this + 18) = 0;
  *(this + 42) = 0;
  *(this + 172) = 0;
  *(this + 184) = 0u;
  *(this + 45) = -1;
  *(this + 25) = v1;
  *(this + 26) = 0x100000000;
  *(this + 72) = 0;
  *(this + 216) = 0u;
  *(this + 29) = 0;
  *(this + 15) = 0u;
  *(this + 32) = v1;
  *(this + 50) = 0;
  *(this + 382) = 0u;
  *(this + 356) = 0u;
  *(this + 372) = 0u;
  *(this + 324) = 0u;
  *(this + 340) = 0u;
  *(this + 292) = 0u;
  *(this + 308) = 0u;
  *(this + 51) = v1;
  *(this + 52) = 0;
  *(this + 199) = 0;
  *(this + 69) = 0;
  *(this + 644) = 0;
  *(this + 30) = 0u;
  *(this + 31) = 0u;
  *(this + 28) = 0u;
  *(this + 29) = 0u;
  *(this + 158) = 0;
  *(this + 600) = 0u;
  *(this + 616) = 0u;
  *(this + 584) = 0u;
  *(this + 636) = 1;
  *(this + 645) = 0;
  *(this + 82) = 0;
  *(this + 81) = v1;
  *(this + 647) = 0;
  *(this + 664) = 0;
  *(this + 172) = 0;
  *(this + 42) = 0u;
  return result;
}

void awd::metrics::ATM_CallEndEvent::~ATM_CallEndEvent(awd::metrics::ATM_CallEndEvent *this)
{
  *this = &unk_1F5EC5F20;
  awd::metrics::ATM_CallEndEvent::SharedDtor(this);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::ATM_CallEndEvent_myreason>::TypeHandler>(this + 70);
  v2 = *(this + 67);
  if (v2)
  {
    MEMORY[0x1E6923590](v2, 0x1000C8077774924);
  }

  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::ATM_CallEndEvent_myreason>::TypeHandler>(this + 64);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<std::string>::TypeHandler>(this + 106);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<std::string>::TypeHandler>(this + 66);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  awd::metrics::ATM_CallEndEvent::~ATM_CallEndEvent(this);

  JUMPOUT(0x1E69235B0);
}

void *awd::metrics::ATM_CallEndEvent::SharedDtor(void *this)
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

  v5 = v1[4];
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

  v12 = v1[9];
  if (v12 != v3 && v12)
  {
    if (*(v12 + 23) < 0)
    {
      operator delete(*v12);
    }

    this = MEMORY[0x1E69235B0](v12, 0x1012C40EC159624);
  }

  v13 = v1[10];
  if (v13 != v3 && v13)
  {
    if (*(v13 + 23) < 0)
    {
      operator delete(*v13);
    }

    this = MEMORY[0x1E69235B0](v13, 0x1012C40EC159624);
  }

  v14 = v1[11];
  if (v14 != v3 && v14)
  {
    if (*(v14 + 23) < 0)
    {
      operator delete(*v14);
    }

    this = MEMORY[0x1E69235B0](v14, 0x1012C40EC159624);
  }

  v15 = v1[13];
  if (v15 != v3 && v15)
  {
    if (*(v15 + 23) < 0)
    {
      operator delete(*v15);
    }

    this = MEMORY[0x1E69235B0](v15, 0x1012C40EC159624);
  }

  v16 = v1[14];
  if (v16 != v3 && v16)
  {
    if (*(v16 + 23) < 0)
    {
      operator delete(*v16);
    }

    this = MEMORY[0x1E69235B0](v16, 0x1012C40EC159624);
  }

  v17 = v1[17];
  if (v17 != v3 && v17)
  {
    if (*(v17 + 23) < 0)
    {
      operator delete(*v17);
    }

    this = MEMORY[0x1E69235B0](v17, 0x1012C40EC159624);
  }

  v18 = v1[19];
  if (v18 != v3 && v18)
  {
    if (*(v18 + 23) < 0)
    {
      operator delete(*v18);
    }

    this = MEMORY[0x1E69235B0](v18, 0x1012C40EC159624);
  }

  v19 = v1[20];
  if (v19 != v3 && v19)
  {
    if (*(v19 + 23) < 0)
    {
      operator delete(*v19);
    }

    this = MEMORY[0x1E69235B0](v19, 0x1012C40EC159624);
  }

  v20 = v1[25];
  if (v20 != v3 && v20)
  {
    if (*(v20 + 23) < 0)
    {
      operator delete(*v20);
    }

    this = MEMORY[0x1E69235B0](v20, 0x1012C40EC159624);
  }

  v21 = v1[32];
  if (v21 != v3 && v21)
  {
    if (*(v21 + 23) < 0)
    {
      operator delete(*v21);
    }

    this = MEMORY[0x1E69235B0](v21, 0x1012C40EC159624);
  }

  v22 = v1[51];
  if (v22 != v3 && v22)
  {
    if (*(v22 + 23) < 0)
    {
      operator delete(*v22);
    }

    this = MEMORY[0x1E69235B0](v22, 0x1012C40EC159624);
  }

  v23 = v1[81];
  if (v23 != v3 && v23)
  {
    if (*(v23 + 23) < 0)
    {
      operator delete(*v23);
    }

    JUMPOUT(0x1E69235B0);
  }

  return this;
}

uint64_t awd::metrics::ATM_CallEndEvent::Clear(awd::metrics::ATM_CallEndEvent *this)
{
  v2 = *(this + 168);
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
    *(this + 100) = 0;
    v2 = *(this + 168);
  }

  v4 = (this + 672);
  if ((v2 & 0xFF00) != 0)
  {
    *(this + 10) = -1;
    if ((v2 & 0x200) != 0)
    {
      v5 = *(this + 4);
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

    *(this + 11) = 0;
    if ((*(this + 673) & 8) != 0)
    {
      v6 = *(this + 6);
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

    *(this + 101) = 0;
    if ((*(this + 673) & 0x20) != 0)
    {
      v7 = *(this + 7);
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

    if ((*(this + 673) & 0x40) != 0)
    {
      v8 = *(this + 8);
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

    *(this + 24) = 0;
    v2 = *(this + 168);
  }

  if ((v2 & 0xFF0000) != 0)
  {
    if ((v2 & 0x10000) != 0)
    {
      v9 = *(this + 9);
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

    if ((*(this + 674) & 2) != 0)
    {
      v10 = *(this + 10);
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

    if ((*(this + 674) & 4) != 0)
    {
      v11 = *(this + 11);
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

    if ((*(this + 674) & 8) != 0)
    {
      v12 = *(this + 13);
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

    if ((*(this + 674) & 0x10) != 0)
    {
      v13 = *(this + 14);
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

    *(this + 15) = 0;
    *(this + 32) = 0;
    v2 = *(this + 168);
  }

  if (HIBYTE(v2))
  {
    *(this + 102) = 0;
    *(this + 33) = 0;
    *(this + 36) = 0;
    if ((v2 & 0x8000000) != 0)
    {
      v14 = *(this + 17);
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

    if ((*(this + 675) & 0x10) != 0)
    {
      v15 = *(this + 19);
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

    if ((*(this + 675) & 0x20) != 0)
    {
      v16 = *(this + 20);
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

    *(this + 37) = 0;
    *(this + 42) = 0;
  }

  v17 = *(this + 676);
  if (v17)
  {
    *(this + 103) = 0;
    *(this + 43) = 0;
    *(this + 44) = 0;
    *(this + 23) = 0;
    *(this + 45) = -1;
    *(this + 48) = 0;
    *(this + 236) = 0;
    if (v17 < 0)
    {
      v18 = *(this + 25);
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

  v19 = *(this + 169);
  if ((v19 & 0xFF00) != 0)
  {
    *(this + 237) = 0;
    *(this + 49) = 0;
    *(this + 26) = 0x100000000;
    *(this + 27) = 0;
    *(this + 28) = 0;
    *(this + 58) = 0;
  }

  if ((v19 & 0xFF0000) != 0)
  {
    *(this + 72) = 0;
    *(this + 30) = 0;
    *(this + 31) = 0;
    if ((v19 & 0x200000) != 0)
    {
      v20 = *(this + 32);
      if (v20 != MEMORY[0x1E69E5958])
      {
        if (*(v20 + 23) < 0)
        {
          **v20 = 0;
          *(v20 + 8) = 0;
        }

        else
        {
          *v20 = 0;
          *(v20 + 23) = 0;
        }
      }
    }

    *(this + 238) = 0;
    v19 = *(this + 169);
  }

  if (HIBYTE(v19))
  {
    *(this + 239) = 0;
    *(this + 396) = 0;
    *(this + 300) = 0;
    *(this + 308) = 0;
    *(this + 292) = 0;
  }

  v21 = *(this + 170);
  if (v21)
  {
    *(this + 316) = 0u;
    *(this + 332) = 0u;
  }

  if ((v21 & 0xFF00) != 0)
  {
    *(this + 348) = 0u;
    *(this + 364) = 0u;
  }

  if ((v21 & 0xFF0000) != 0)
  {
    *(this + 50) = 0;
    *(this + 397) = 0;
    *(this + 388) = 0;
    *(this + 380) = 0;
    if ((v21 & 0x800000) != 0)
    {
      v22 = *(this + 51);
      if (v22 != MEMORY[0x1E69E5958])
      {
        if (*(v22 + 23) < 0)
        {
          **v22 = 0;
          *(v22 + 8) = 0;
        }

        else
        {
          *v22 = 0;
          *(v22 + 23) = 0;
        }
      }
    }
  }

  if (*(this + 683))
  {
    *(this + 52) = 0;
    *(this + 398) = 0;
    *(this + 57) = 0;
    *(this + 58) = 0;
    *(this + 56) = 0;
  }

  v23 = *(this + 171);
  if (v23)
  {
    *(this + 399) = 0;
    *(this + 126) = 0;
    *(this + 472) = 0u;
    *(this + 488) = 0u;
  }

  if ((v23 & 0xFF00) != 0)
  {
    *(this + 127) = 0;
    *(this + 620) = 0;
    *(this + 69) = 0;
    *(this + 146) = 0;
  }

  if ((v23 & 0xFF0000) != 0)
  {
    *(this + 588) = 0u;
    *(this + 604) = 0u;
  }

  if (HIBYTE(v23))
  {
    *(this + 644) = 0;
    *(this + 621) = 0;
    *(this + 628) = 0;
    *(this + 159) = 1;
  }

  v24 = *(this + 688);
  if (v24)
  {
    *(this + 645) = 0;
    *(this + 160) = 0;
    *(this + 164) = 0;
    if ((v24 & 8) != 0)
    {
      v25 = *(this + 81);
      if (v25 != MEMORY[0x1E69E5958])
      {
        if (*(v25 + 23) < 0)
        {
          **v25 = 0;
          *(v25 + 8) = 0;
        }

        else
        {
          *v25 = 0;
          *(v25 + 23) = 0;
        }
      }
    }

    *(this + 323) = 0;
    *(this + 165) = 0;
    *(this + 664) = 0;
  }

  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Clear<wireless_diagnostics::google::protobuf::RepeatedPtrField<std::string>::TypeHandler>(this + 264);
  result = wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Clear<wireless_diagnostics::google::protobuf::RepeatedPtrField<std::string>::TypeHandler>(this + 424);
  if (*(this + 130) >= 1)
  {
    v27 = 0;
    do
    {
      v28 = *(*(this + 64) + 8 * v27);
      result = (*(*v28 + 32))(v28);
      ++v27;
    }

    while (v27 < *(this + 130));
  }

  *(this + 130) = 0;
  *(this + 136) = 0;
  if (*(this + 142) >= 1)
  {
    v29 = 0;
    do
    {
      v30 = *(*(this + 70) + 8 * v29);
      result = (*(*v30 + 32))(v30);
      ++v29;
    }

    while (v29 < *(this + 142));
  }

  *(this + 142) = 0;
  *v4 = 0;
  *(this + 85) = 0;
  *(this + 172) = 0;
  return result;
}

uint64_t awd::metrics::ATM_CallEndEvent::MergePartialFromCodedStream(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
{
  v4 = this;
  v5 = (this + 288);
  v6 = (this + 292);
  v7 = (this + 296);
  v8 = (this + 300);
  v9 = (this + 304);
  v10 = (this + 308);
  v11 = (this + 312);
  v536 = (this + 320);
  v537 = (this + 316);
  v534 = (this + 328);
  v535 = (this + 324);
  v532 = (this + 336);
  v533 = (this + 332);
  v530 = (this + 344);
  v531 = (this + 340);
  v528 = (this + 352);
  v529 = (this + 348);
  v526 = (this + 360);
  v527 = (this + 356);
  v524 = (this + 368);
  v525 = (this + 364);
  v522 = (this + 376);
  v523 = (this + 372);
  v520 = (this + 384);
  v521 = (this + 380);
  v518 = (this + 392);
  v519 = (this + 388);
  v516 = (this + 404);
  v517 = (this + 400);
  v501 = (this + 460);
  v503 = (this + 480);
  v508 = (this + 484);
  v514 = (this + 500);
  v515 = (this + 496);
  v512 = (this + 508);
  v513 = (this + 504);
  v492 = (this + 456);
  v493 = (this + 552);
  v491 = (this + 588);
  v494 = (this + 592);
  v495 = (this + 556);
  v497 = (this + 596);
  v498 = (this + 584);
  v502 = (this + 604);
  v505 = (this + 608);
  v506 = (this + 612);
  v507 = (this + 616);
  v510 = (this + 628);
  v511 = (this + 624);
  v509 = (this + 632);
  v496 = (this + 640);
  v504 = (this + 656);
  v499 = (this + 660);
  v500 = (this + 600);
  while (1)
  {
    while (1)
    {
LABEL_2:
      v12 = *(a2 + 1);
      if (v12 >= *(a2 + 2) || (v13 = *v12, (v13 & 0x80000000) != 0))
      {
        this = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadTagFallback(a2);
        v13 = this;
        *(a2 + 8) = this;
        if (!this)
        {
          return 1;
        }
      }

      else
      {
        *(a2 + 8) = v13;
        *(a2 + 1) = v12 + 1;
        if (!v13)
        {
          return 1;
        }
      }

      v14 = v13 >> 3;
      v15 = v13 & 7;
      if (v13 >> 3 <= 0x22D)
      {
        break;
      }

      if (v13 >> 3 > 0x258)
      {
        if (v14 == 601)
        {
          if ((v13 & 7) == 0)
          {
            v51 = *(a2 + 1);
            v20 = *(a2 + 2);
            goto LABEL_636;
          }
        }

        else if (v14 == 602)
        {
          if ((v13 & 7) == 0)
          {
            v48 = *(a2 + 1);
            v20 = *(a2 + 2);
            goto LABEL_645;
          }
        }

        else if (v14 == 603 && (v13 & 7) == 0)
        {
          v22 = *(a2 + 1);
          v20 = *(a2 + 2);
          goto LABEL_654;
        }

        goto LABEL_298;
      }

      if (v14 == 558)
      {
        if ((v13 & 7) != 0)
        {
          goto LABEL_298;
        }

        v50 = *(a2 + 1);
        v49 = *(a2 + 2);
LABEL_611:
        if (v50 >= v49 || (v248 = *v50, (v248 & 0x80000000) != 0))
        {
          this = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v504);
          if (!this)
          {
            return this;
          }

          v249 = *(a2 + 1);
          v49 = *(a2 + 2);
        }

        else
        {
          *v504 = v248;
          v249 = (v50 + 1);
          *(a2 + 1) = v249;
        }

        v47 = *(v4 + 688) | 4;
        *(v4 + 688) = v47;
        if (v49 - v249 >= 2 && *v249 == 250 && v249[1] == 34)
        {
          *(a2 + 1) = v249 + 2;
          goto LABEL_620;
        }
      }

      else if (v14 == 559)
      {
        if (v15 != 2)
        {
          goto LABEL_298;
        }

        v47 = *(v4 + 688);
LABEL_620:
        *(v4 + 688) = v47 | 8;
        if (*(v4 + 648) == MEMORY[0x1E69E5958])
        {
          operator new();
        }

        this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
        if (!this)
        {
          return this;
        }

        v250 = *(a2 + 1);
        v20 = *(a2 + 2);
        if (v20 - v250 >= 2 && *v250 == 128 && v250[1] == 35)
        {
          v21 = (v250 + 2);
          *(a2 + 1) = v21;
LABEL_627:
          v538[0] = 0;
          if (v21 >= v20 || (v251 = *v21, (v251 & 0x80000000) != 0))
          {
            this = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v538);
            if (!this)
            {
              return this;
            }

            v251 = v538[0];
            v252 = *(a2 + 1);
            v20 = *(a2 + 2);
          }

          else
          {
            v252 = (v21 + 1);
            *(a2 + 1) = v252;
          }

          *(v4 + 646) = v251 != 0;
          *(v4 + 688) |= 0x10u;
          if (v20 - v252 >= 2 && *v252 == 200 && v252[1] == 37)
          {
            v51 = (v252 + 2);
            *(a2 + 1) = v51;
LABEL_636:
            if (v51 >= v20 || (v253 = *v51, (v253 & 0x80000000) != 0))
            {
              this = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v499);
              if (!this)
              {
                return this;
              }

              v254 = *(a2 + 1);
              v20 = *(a2 + 2);
            }

            else
            {
              *v499 = v253;
              v254 = (v51 + 1);
              *(a2 + 1) = v254;
            }

            *(v4 + 688) |= 0x20u;
            if (v20 - v254 >= 2 && *v254 == 208 && v254[1] == 37)
            {
              v48 = (v254 + 2);
              *(a2 + 1) = v48;
LABEL_645:
              v538[0] = 0;
              if (v48 >= v20 || (v255 = *v48, (v255 & 0x80000000) != 0))
              {
                this = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v538);
                if (!this)
                {
                  return this;
                }

                v255 = v538[0];
                v256 = *(a2 + 1);
                v20 = *(a2 + 2);
              }

              else
              {
                v256 = (v48 + 1);
                *(a2 + 1) = v256;
              }

              *(v4 + 647) = v255 != 0;
              *(v4 + 688) |= 0x40u;
              if (v20 - v256 >= 2 && *v256 == 216 && v256[1] == 37)
              {
                v22 = (v256 + 2);
                *(a2 + 1) = v22;
LABEL_654:
                v538[0] = 0;
                if (v22 >= v20 || (v257 = *v22, (v257 & 0x80000000) != 0))
                {
                  this = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v538);
                  if (!this)
                  {
                    return this;
                  }

                  v257 = v538[0];
                  v258 = *(a2 + 1);
                  v20 = *(a2 + 2);
                }

                else
                {
                  v258 = v22 + 1;
                  *(a2 + 1) = v258;
                }

                *(v4 + 664) = v257 != 0;
                *(v4 + 688) |= 0x80u;
                if (v258 == v20 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
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

      else
      {
        if (v14 == 560 && (v13 & 7) == 0)
        {
          v21 = *(a2 + 1);
          v20 = *(a2 + 2);
          goto LABEL_627;
        }

LABEL_298:
        if (v15 == 4)
        {
          return 1;
        }

        this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(a2, v13);
        if ((this & 1) == 0)
        {
          return 0;
        }
      }
    }

    switch(v14)
    {
      case 1u:
        if ((v13 & 7) != 0)
        {
          goto LABEL_298;
        }

        v17 = *(a2 + 1);
        v16 = *(a2 + 2);
        if (v17 >= v16 || (v18 = *v17, v18 < 0))
        {
          this = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, (v4 + 8));
          if (!this)
          {
            return this;
          }

          v19 = *(a2 + 1);
          v16 = *(a2 + 2);
        }

        else
        {
          *(v4 + 8) = v18;
          v19 = v17 + 1;
          *(a2 + 1) = v19;
        }

        v141 = *(v4 + 672) | 1;
        *(v4 + 672) = v141;
        if (v19 >= v16 || *v19 != 18)
        {
          goto LABEL_2;
        }

        *(a2 + 1) = v19 + 1;
LABEL_668:
        *(v4 + 672) = v141 | 2;
        if (*(v4 + 16) == MEMORY[0x1E69E5958])
        {
          operator new();
        }

        this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
        if (!this)
        {
          return this;
        }

        v259 = *(a2 + 1);
        v99 = *(a2 + 2);
        if (v259 >= v99 || *v259 != 24)
        {
          goto LABEL_2;
        }

        v100 = v259 + 1;
        *(a2 + 1) = v100;
LABEL_674:
        v538[0] = 0;
        if (v100 >= v99 || (v260 = *v100, (v260 & 0x80000000) != 0))
        {
          this = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v538);
          if (!this)
          {
            return this;
          }

          v260 = v538[0];
          v261 = *(a2 + 1);
          v99 = *(a2 + 2);
        }

        else
        {
          v261 = v100 + 1;
          *(a2 + 1) = v261;
        }

        *(v4 + 28) = v260 != 0;
        *(v4 + 672) |= 4u;
        if (v261 >= v99 || *v261 != 32)
        {
          goto LABEL_2;
        }

        v140 = v261 + 1;
        *(a2 + 1) = v140;
LABEL_682:
        v538[0] = 0;
        if (v140 >= v99 || (v262 = *v140, (v262 & 0x80000000) != 0))
        {
          this = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v538);
          if (!this)
          {
            return this;
          }

          v262 = v538[0];
        }

        else
        {
          *(a2 + 1) = v140 + 1;
        }

        if (v262 + 1 <= 7)
        {
          *(v4 + 672) |= 8u;
          *(v4 + 24) = v262;
        }

        v263 = *(a2 + 1);
        v23 = *(a2 + 2);
        if (v263 >= v23 || *v263 != 40)
        {
          goto LABEL_2;
        }

        v114 = v263 + 1;
        *(a2 + 1) = v114;
LABEL_692:
        v538[0] = 0;
        if (v114 >= v23 || (v264 = *v114, (v264 & 0x80000000) != 0))
        {
          this = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v538);
          if (!this)
          {
            return this;
          }

          v264 = v538[0];
          v265 = *(a2 + 1);
          v23 = *(a2 + 2);
        }

        else
        {
          v265 = v114 + 1;
          *(a2 + 1) = v265;
        }

        *(v4 + 29) = v264 != 0;
        *(v4 + 672) |= 0x10u;
        if (v265 >= v23 || *v265 != 48)
        {
          goto LABEL_2;
        }

        v162 = v265 + 1;
        *(a2 + 1) = v162;
LABEL_700:
        v538[0] = 0;
        if (v162 >= v23 || (v266 = *v162, (v266 & 0x80000000) != 0))
        {
          this = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v538);
          if (!this)
          {
            return this;
          }

          v266 = v538[0];
          v267 = *(a2 + 1);
          v23 = *(a2 + 2);
        }

        else
        {
          v267 = v162 + 1;
          *(a2 + 1) = v267;
        }

        *(v4 + 30) = v266 != 0;
        *(v4 + 672) |= 0x20u;
        if (v267 >= v23 || *v267 != 56)
        {
          goto LABEL_2;
        }

        v24 = v267 + 1;
        *(a2 + 1) = v24;
LABEL_708:
        v538[0] = 0;
        if (v24 >= v23 || (v268 = *v24, (v268 & 0x80000000) != 0))
        {
          this = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v538);
          if (!this)
          {
            return this;
          }

          v268 = v538[0];
          v269 = *(a2 + 1);
          v23 = *(a2 + 2);
        }

        else
        {
          v269 = v24 + 1;
          *(a2 + 1) = v269;
        }

        *(v4 + 31) = v268 != 0;
        *(v4 + 672) |= 0x40u;
        if (v269 >= v23 || *v269 != 64)
        {
          goto LABEL_2;
        }

        v25 = v269 + 1;
        *(a2 + 1) = v25;
LABEL_716:
        v538[0] = 0;
        if (v25 >= v23 || (v270 = *v25, (v270 & 0x80000000) != 0))
        {
          this = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v538);
          if (!this)
          {
            return this;
          }

          v270 = v538[0];
          v271 = *(a2 + 1);
          v23 = *(a2 + 2);
        }

        else
        {
          v271 = v25 + 1;
          *(a2 + 1) = v271;
        }

        *(v4 + 100) = v270 != 0;
        *(v4 + 672) |= 0x80u;
        if (v271 >= v23 || *v271 != 72)
        {
          goto LABEL_2;
        }

        v91 = v271 + 1;
        *(a2 + 1) = v91;
LABEL_724:
        v538[0] = 0;
        if (v91 >= v23 || (v272 = *v91, (v272 & 0x80000000) != 0))
        {
          this = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v538);
          if (!this)
          {
            return this;
          }

          v272 = v538[0];
        }

        else
        {
          *(a2 + 1) = v91 + 1;
        }

        if (v272 - 1 < 6 || v272 == -1)
        {
          *(v4 + 672) |= 0x100u;
          *(v4 + 40) = v272;
        }

        v274 = *(a2 + 1);
        if (v274 >= *(a2 + 2) || *v274 != 82)
        {
          goto LABEL_2;
        }

        *(a2 + 1) = v274 + 1;
LABEL_738:
        *(v4 + 672) |= 0x200u;
        if (*(v4 + 32) == MEMORY[0x1E69E5958])
        {
          operator new();
        }

        this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
        if (!this)
        {
          return this;
        }

        v275 = *(a2 + 1);
        v145 = *(a2 + 2);
        if (v275 >= v145 || *v275 != 88)
        {
          goto LABEL_2;
        }

        v146 = v275 + 1;
        *(a2 + 1) = v146;
LABEL_744:
        if (v146 >= v145 || (v276 = *v146, v276 < 0))
        {
          this = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, (v4 + 44));
          if (!this)
          {
            return this;
          }

          v277 = *(a2 + 1);
          v145 = *(a2 + 2);
        }

        else
        {
          *(v4 + 44) = v276;
          v277 = v146 + 1;
          *(a2 + 1) = v277;
        }

        v147 = *(v4 + 672) | 0x400;
        *(v4 + 672) = v147;
        if (v277 >= v145 || *v277 != 98)
        {
          goto LABEL_2;
        }

        *(a2 + 1) = v277 + 1;
LABEL_752:
        *(v4 + 672) = v147 | 0x800;
        if (*(v4 + 48) == MEMORY[0x1E69E5958])
        {
          operator new();
        }

        this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
        if (!this)
        {
          return this;
        }

        v278 = *(a2 + 1);
        v83 = *(a2 + 2);
        if (v278 >= v83 || *v278 != 104)
        {
          goto LABEL_2;
        }

        v84 = v278 + 1;
        *(a2 + 1) = v84;
LABEL_758:
        v538[0] = 0;
        if (v84 >= v83 || (v279 = *v84, (v279 & 0x80000000) != 0))
        {
          this = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v538);
          if (!this)
          {
            return this;
          }

          v279 = v538[0];
          v280 = *(a2 + 1);
          v83 = *(a2 + 2);
        }

        else
        {
          v280 = v84 + 1;
          *(a2 + 1) = v280;
        }

        *(v4 + 101) = v279 != 0;
        v157 = *(v4 + 672) | 0x1000;
        *(v4 + 672) = v157;
        if (v280 >= v83 || *v280 != 114)
        {
          goto LABEL_2;
        }

        *(a2 + 1) = v280 + 1;
LABEL_766:
        *(v4 + 672) = v157 | 0x2000;
        if (*(v4 + 56) == MEMORY[0x1E69E5958])
        {
          operator new();
        }

        this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
        if (!this)
        {
          return this;
        }

        v281 = *(a2 + 1);
        if (v281 >= *(a2 + 2) || *v281 != 122)
        {
          goto LABEL_2;
        }

        *(a2 + 1) = v281 + 1;
LABEL_772:
        *(v4 + 672) |= 0x4000u;
        if (*(v4 + 64) == MEMORY[0x1E69E5958])
        {
          operator new();
        }

        this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
        if (!this)
        {
          return this;
        }

        v282 = *(a2 + 1);
        v56 = *(a2 + 2);
        if (v56 - v282 < 2 || *v282 != 128 || v282[1] != 1)
        {
          goto LABEL_2;
        }

        v57 = (v282 + 2);
        *(a2 + 1) = v57;
LABEL_779:
        if (v57 >= v56 || (v283 = *v57, v283 < 0))
        {
          this = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, (v4 + 96));
          if (!this)
          {
            return this;
          }

          v284 = *(a2 + 1);
          v56 = *(a2 + 2);
        }

        else
        {
          *(v4 + 96) = v283;
          v284 = (v57 + 1);
          *(a2 + 1) = v284;
        }

        v59 = *(v4 + 672) | 0x8000;
        *(v4 + 672) = v59;
        if (v56 - v284 < 2 || *v284 != 138 || v284[1] != 1)
        {
          goto LABEL_2;
        }

        *(a2 + 1) = v284 + 2;
LABEL_788:
        *(v4 + 672) = v59 | 0x10000;
        if (*(v4 + 72) == MEMORY[0x1E69E5958])
        {
          operator new();
        }

        this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
        if (!this)
        {
          return this;
        }

        v285 = *(a2 + 1);
        if (*(a2 + 4) - v285 < 2 || *v285 != 146 || v285[1] != 1)
        {
          goto LABEL_2;
        }

        *(a2 + 1) = v285 + 2;
LABEL_795:
        *(v4 + 672) |= 0x40000u;
        if (*(v4 + 88) == MEMORY[0x1E69E5958])
        {
          operator new();
        }

        this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
        if (!this)
        {
          return this;
        }

        v286 = *(a2 + 1);
        if (*(a2 + 4) - v286 < 2 || *v286 != 154 || v286[1] != 1)
        {
          goto LABEL_2;
        }

        *(a2 + 1) = v286 + 2;
LABEL_802:
        *(v4 + 672) |= 0x80000u;
        if (*(v4 + 104) == MEMORY[0x1E69E5958])
        {
          operator new();
        }

        this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
        if (!this)
        {
          return this;
        }

        v287 = *(a2 + 1);
        if (*(a2 + 4) - v287 < 2 || *v287 != 162 || v287[1] != 1)
        {
          goto LABEL_2;
        }

        *(a2 + 1) = v287 + 2;
LABEL_809:
        *(v4 + 672) |= 0x100000u;
        if (*(v4 + 112) == MEMORY[0x1E69E5958])
        {
          operator new();
        }

        this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
        if (!this)
        {
          return this;
        }

        v288 = *(a2 + 1);
        v28 = *(a2 + 2);
        if (v28 - v288 < 2 || *v288 != 168 || v288[1] != 1)
        {
          goto LABEL_2;
        }

        v29 = (v288 + 2);
        *(a2 + 1) = v29;
LABEL_816:
        v538[0] = 0;
        if (v29 >= v28 || (v289 = *v29, (v289 & 0x80000000) != 0))
        {
          this = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v538);
          if (!this)
          {
            return this;
          }

          v289 = v538[0];
          v290 = *(a2 + 1);
          v28 = *(a2 + 2);
        }

        else
        {
          v290 = (v29 + 1);
          *(a2 + 1) = v290;
        }

        *(v4 + 102) = v289 != 0;
        *(v4 + 672) |= 0x1000000u;
        if (v28 - v290 < 2 || *v290 != 176 || v290[1] != 1)
        {
          goto LABEL_2;
        }

        v58 = (v290 + 2);
        *(a2 + 1) = v58;
LABEL_825:
        if (v58 >= v28 || (v291 = *v58, v291 < 0))
        {
          this = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, (v4 + 132));
          if (!this)
          {
            return this;
          }

          v292 = *(a2 + 1);
          v28 = *(a2 + 2);
        }

        else
        {
          *(v4 + 132) = v291;
          v292 = (v58 + 1);
          *(a2 + 1) = v292;
        }

        *(v4 + 672) |= 0x2000000u;
        if (v28 - v292 < 2 || *v292 != 184 || v292[1] != 1)
        {
          goto LABEL_2;
        }

        v66 = (v292 + 2);
        *(a2 + 1) = v66;
LABEL_834:
        if (v66 >= v28 || (v293 = *v66, v293 < 0))
        {
          this = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, (v4 + 144));
          if (!this)
          {
            return this;
          }

          v294 = *(a2 + 1);
          v28 = *(a2 + 2);
        }

        else
        {
          *(v4 + 144) = v293;
          v294 = (v66 + 1);
          *(a2 + 1) = v294;
        }

        v34 = *(v4 + 672) | 0x4000000;
        *(v4 + 672) = v34;
        if (v28 - v294 < 2 || *v294 != 194 || v294[1] != 1)
        {
          goto LABEL_2;
        }

        *(a2 + 1) = v294 + 2;
LABEL_843:
        *(v4 + 672) = v34 | 0x8000000;
        if (*(v4 + 136) == MEMORY[0x1E69E5958])
        {
          operator new();
        }

        this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
        if (!this)
        {
          return this;
        }

        v295 = *(a2 + 1);
        if (*(a2 + 4) - v295 < 2 || *v295 != 202 || v295[1] != 1)
        {
          goto LABEL_2;
        }

        *(a2 + 1) = v295 + 2;
LABEL_850:
        *(v4 + 672) |= 0x10000000u;
        if (*(v4 + 152) == MEMORY[0x1E69E5958])
        {
          operator new();
        }

        this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
        if (!this)
        {
          return this;
        }

        v296 = *(a2 + 1);
        if (*(a2 + 4) - v296 < 2 || *v296 != 210 || v296[1] != 1)
        {
          goto LABEL_2;
        }

        *(a2 + 1) = v296 + 2;
LABEL_857:
        *(v4 + 672) |= 0x20000000u;
        if (*(v4 + 160) == MEMORY[0x1E69E5958])
        {
          operator new();
        }

        this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
        if (!this)
        {
          return this;
        }

        v297 = *(a2 + 1);
        v54 = *(a2 + 2);
        if (v54 - v297 < 2 || *v297 != 216 || v297[1] != 1)
        {
          goto LABEL_2;
        }

        v170 = (v297 + 2);
        *(a2 + 1) = v170;
LABEL_864:
        if (v170 >= v54 || (v298 = *v170, v298 < 0))
        {
          this = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, (v4 + 148));
          if (!this)
          {
            return this;
          }

          v299 = *(a2 + 1);
          v54 = *(a2 + 2);
        }

        else
        {
          *(v4 + 148) = v298;
          v299 = (v170 + 1);
          *(a2 + 1) = v299;
        }

        *(v4 + 672) |= 0x40000000u;
        if (v54 - v299 < 2 || *v299 != 224 || v299[1] != 1)
        {
          goto LABEL_2;
        }

        v55 = (v299 + 2);
        *(a2 + 1) = v55;
LABEL_873:
        if (v55 >= v54 || (v300 = *v55, v300 < 0))
        {
          this = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, (v4 + 168));
          if (!this)
          {
            return this;
          }

          v301 = *(a2 + 1);
          v54 = *(a2 + 2);
        }

        else
        {
          *(v4 + 168) = v300;
          v301 = (v55 + 1);
          *(a2 + 1) = v301;
        }

        *(v4 + 672) |= 0x80000000;
        if (v54 - v301 < 2 || *v301 != 232 || v301[1] != 1)
        {
          goto LABEL_2;
        }

        v172 = (v301 + 2);
        *(a2 + 1) = v172;
LABEL_882:
        v538[0] = 0;
        if (v172 >= v54 || (v302 = *v172, (v302 & 0x80000000) != 0))
        {
          this = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v538);
          if (!this)
          {
            return this;
          }

          v302 = v538[0];
          v303 = *(a2 + 1);
          v54 = *(a2 + 2);
        }

        else
        {
          v303 = (v172 + 1);
          *(a2 + 1) = v303;
        }

        *(v4 + 103) = v302 != 0;
        *(v4 + 676) |= 1u;
        if (v54 - v303 < 2 || *v303 != 240 || v303[1] != 1)
        {
          goto LABEL_2;
        }

        v175 = (v303 + 2);
        *(a2 + 1) = v175;
LABEL_891:
        if (v175 >= v54 || (v304 = *v175, v304 < 0))
        {
          this = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, (v4 + 172));
          if (!this)
          {
            return this;
          }

          v305 = *(a2 + 1);
          v54 = *(a2 + 2);
        }

        else
        {
          *(v4 + 172) = v304;
          v305 = (v175 + 1);
          *(a2 + 1) = v305;
        }

        *(v4 + 676) |= 2u;
        if (v54 - v305 < 2 || *v305 != 248 || v305[1] != 1)
        {
          goto LABEL_2;
        }

        v181 = (v305 + 2);
        *(a2 + 1) = v181;
LABEL_900:
        if (v181 >= v54 || (v306 = *v181, v306 < 0))
        {
          this = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, (v4 + 176));
          if (!this)
          {
            return this;
          }

          v307 = *(a2 + 1);
          v54 = *(a2 + 2);
        }

        else
        {
          *(v4 + 176) = v306;
          v307 = (v181 + 1);
          *(a2 + 1) = v307;
        }

        *(v4 + 676) |= 4u;
        if (v54 - v307 < 2 || *v307 != 128 || v307[1] != 2)
        {
          goto LABEL_2;
        }

        v120 = (v307 + 2);
        *(a2 + 1) = v120;
LABEL_909:
        if (v120 >= v54 || (v308 = *v120, v308 < 0))
        {
          this = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, (v4 + 184));
          if (!this)
          {
            return this;
          }

          v309 = *(a2 + 1);
          v54 = *(a2 + 2);
        }

        else
        {
          *(v4 + 184) = v308;
          v309 = (v120 + 1);
          *(a2 + 1) = v309;
        }

        *(v4 + 676) |= 8u;
        if (v54 - v309 < 2 || *v309 != 136 || v309[1] != 2)
        {
          goto LABEL_2;
        }

        v37 = v7;
        v178 = v6;
        v179 = v5;
        v180 = (v309 + 2);
        *(a2 + 1) = v180;
LABEL_918:
        v538[0] = 0;
        if (v180 >= v54 || (v310 = *v180, (v310 & 0x80000000) != 0))
        {
          this = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v538);
          if (!this)
          {
            return this;
          }

          v310 = v538[0];
        }

        else
        {
          *(a2 + 1) = v180 + 1;
        }

        this = awd::metrics::enum_ATM_CallEndReason_IsValid(v310);
        if (this)
        {
          *(v4 + 676) |= 0x10u;
          *(v4 + 180) = v310;
        }

        v311 = *(a2 + 1);
        v40 = *(a2 + 2);
        v5 = v179;
        v6 = v178;
        v7 = v37;
        if (v40 - v311 < 2 || *v311 != 144 || v311[1] != 2)
        {
          goto LABEL_2;
        }

        v38 = v6;
        v39 = v5;
        v41 = (v311 + 2);
        *(a2 + 1) = v41;
LABEL_929:
        v538[0] = 0;
        if (v41 >= v40 || (v312 = *v41, (v312 & 0x80000000) != 0))
        {
          this = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v538);
          if (!this)
          {
            return this;
          }

          v312 = v538[0];
        }

        else
        {
          *(a2 + 1) = v41 + 1;
        }

        this = awd::metrics::RESPONSE_Code_IsValid(v312);
        if (this)
        {
          *(v4 + 676) |= 0x20u;
          *(v4 + 192) = v312;
        }

        v313 = *(a2 + 1);
        v32 = *(a2 + 2);
        v5 = v39;
        v6 = v38;
        v7 = v37;
        if (v32 - v313 < 2 || *v313 != 152 || v313[1] != 2)
        {
          goto LABEL_2;
        }

        v174 = (v313 + 2);
        *(a2 + 1) = v174;
LABEL_940:
        v538[0] = 0;
        if (v174 >= v32 || (v314 = *v174, (v314 & 0x80000000) != 0))
        {
          this = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v538);
          if (!this)
          {
            return this;
          }

          v314 = v538[0];
          v315 = *(a2 + 1);
          v32 = *(a2 + 2);
        }

        else
        {
          v315 = (v174 + 1);
          *(a2 + 1) = v315;
        }

        *(v4 + 236) = v314 != 0;
        *(v4 + 676) |= 0x40u;
        if (v32 - v315 < 2 || *v315 != 160 || v315[1] != 2)
        {
          goto LABEL_2;
        }

        v123 = (v315 + 2);
        *(a2 + 1) = v123;
LABEL_949:
        if (v123 >= v32 || (v316 = *v123, v316 < 0))
        {
          this = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, (v4 + 216));
          if (!this)
          {
            return this;
          }

          v317 = *(a2 + 1);
          v32 = *(a2 + 2);
        }

        else
        {
          *(v4 + 216) = v316;
          v317 = (v123 + 1);
          *(a2 + 1) = v317;
        }

        *(v4 + 676) |= 0x1000u;
        if (v32 - v317 < 2 || *v317 != 168 || v317[1] != 2)
        {
          goto LABEL_2;
        }

        v44 = (v317 + 2);
        *(a2 + 1) = v44;
LABEL_958:
        if (v44 >= v32 || (v318 = *v44, v318 < 0))
        {
          this = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, (v4 + 224));
          if (!this)
          {
            return this;
          }

          v319 = *(a2 + 1);
          v32 = *(a2 + 2);
        }

        else
        {
          *(v4 + 224) = v318;
          v319 = (v44 + 1);
          *(a2 + 1) = v319;
        }

        *(v4 + 676) |= 0x2000u;
        if (v32 - v319 < 2 || *v319 != 176 || v319[1] != 2)
        {
          goto LABEL_2;
        }

        v119 = (v319 + 2);
        *(a2 + 1) = v119;
LABEL_967:
        if (v119 >= v32 || (v320 = *v119, v320 < 0))
        {
          this = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, (v4 + 240));
          if (!this)
          {
            return this;
          }

          v321 = *(a2 + 1);
          v32 = *(a2 + 2);
        }

        else
        {
          *(v4 + 240) = v320;
          v321 = (v119 + 1);
          *(a2 + 1) = v321;
        }

        *(v4 + 676) |= 0x10000u;
        if (v32 - v321 < 2 || *v321 != 184 || v321[1] != 2)
        {
          goto LABEL_2;
        }

        v33 = (v321 + 2);
        *(a2 + 1) = v33;
LABEL_976:
        if (v33 >= v32 || (v322 = *v33, v322 < 0))
        {
          this = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, (v4 + 244));
          if (!this)
          {
            return this;
          }

          v323 = *(a2 + 1);
          v32 = *(a2 + 2);
        }

        else
        {
          *(v4 + 244) = v322;
          v323 = (v33 + 1);
          *(a2 + 1) = v323;
        }

        *(v4 + 676) |= 0x20000u;
        if (v32 - v323 < 2 || *v323 != 192 || v323[1] != 2)
        {
          goto LABEL_2;
        }

        v176 = (v323 + 2);
        *(a2 + 1) = v176;
LABEL_985:
        if (v176 >= v32 || (v324 = *v176, (v324 & 0x80000000) != 0))
        {
          this = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v5);
          if (!this)
          {
            return this;
          }

          v325 = *(a2 + 1);
          v32 = *(a2 + 2);
        }

        else
        {
          *v5 = v324;
          v325 = (v176 + 1);
          *(a2 + 1) = v325;
        }

        v177 = *(v4 + 676) | 0x100000;
        *(v4 + 676) = v177;
        if (v32 - v325 < 2 || *v325 != 202 || v325[1] != 2)
        {
          goto LABEL_2;
        }

        *(a2 + 1) = v325 + 2;
LABEL_994:
        *(v4 + 676) = v177 | 0x200000;
        if (*(v4 + 256) == MEMORY[0x1E69E5958])
        {
          operator new();
        }

        this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
        if (!this)
        {
          return this;
        }

        v326 = *(a2 + 1);
        if (*(a2 + 4) - v326 < 2 || *v326 != 210)
        {
          goto LABEL_2;
        }

        break;
      case 2u:
        if (v15 != 2)
        {
          goto LABEL_298;
        }

        v141 = *(v4 + 672);
        goto LABEL_668;
      case 3u:
        if ((v13 & 7) != 0)
        {
          goto LABEL_298;
        }

        v100 = *(a2 + 1);
        v99 = *(a2 + 2);
        goto LABEL_674;
      case 4u:
        if ((v13 & 7) != 0)
        {
          goto LABEL_298;
        }

        v140 = *(a2 + 1);
        v99 = *(a2 + 2);
        goto LABEL_682;
      case 5u:
        if ((v13 & 7) != 0)
        {
          goto LABEL_298;
        }

        v114 = *(a2 + 1);
        v23 = *(a2 + 2);
        goto LABEL_692;
      case 6u:
        if ((v13 & 7) != 0)
        {
          goto LABEL_298;
        }

        v162 = *(a2 + 1);
        v23 = *(a2 + 2);
        goto LABEL_700;
      case 7u:
        if ((v13 & 7) != 0)
        {
          goto LABEL_298;
        }

        v24 = *(a2 + 1);
        v23 = *(a2 + 2);
        goto LABEL_708;
      case 8u:
        if ((v13 & 7) != 0)
        {
          goto LABEL_298;
        }

        v25 = *(a2 + 1);
        v23 = *(a2 + 2);
        goto LABEL_716;
      case 9u:
        if ((v13 & 7) != 0)
        {
          goto LABEL_298;
        }

        v91 = *(a2 + 1);
        v23 = *(a2 + 2);
        goto LABEL_724;
      case 0xAu:
        if (v15 != 2)
        {
          goto LABEL_298;
        }

        goto LABEL_738;
      case 0xBu:
        if ((v13 & 7) != 0)
        {
          goto LABEL_298;
        }

        v146 = *(a2 + 1);
        v145 = *(a2 + 2);
        goto LABEL_744;
      case 0xCu:
        if (v15 != 2)
        {
          goto LABEL_298;
        }

        v147 = *(v4 + 672);
        goto LABEL_752;
      case 0xDu:
        if ((v13 & 7) != 0)
        {
          goto LABEL_298;
        }

        v84 = *(a2 + 1);
        v83 = *(a2 + 2);
        goto LABEL_758;
      case 0xEu:
        if (v15 != 2)
        {
          goto LABEL_298;
        }

        v157 = *(v4 + 672);
        goto LABEL_766;
      case 0xFu:
        if (v15 != 2)
        {
          goto LABEL_298;
        }

        goto LABEL_772;
      case 0x10u:
        if ((v13 & 7) != 0)
        {
          goto LABEL_298;
        }

        v57 = *(a2 + 1);
        v56 = *(a2 + 2);
        goto LABEL_779;
      case 0x11u:
        if (v15 != 2)
        {
          goto LABEL_298;
        }

        v59 = *(v4 + 672);
        goto LABEL_788;
      case 0x12u:
        if (v15 != 2)
        {
          goto LABEL_298;
        }

        goto LABEL_795;
      case 0x13u:
        if (v15 != 2)
        {
          goto LABEL_298;
        }

        goto LABEL_802;
      case 0x14u:
        if (v15 != 2)
        {
          goto LABEL_298;
        }

        goto LABEL_809;
      case 0x15u:
        if ((v13 & 7) != 0)
        {
          goto LABEL_298;
        }

        v29 = *(a2 + 1);
        v28 = *(a2 + 2);
        goto LABEL_816;
      case 0x16u:
        if ((v13 & 7) != 0)
        {
          goto LABEL_298;
        }

        v58 = *(a2 + 1);
        v28 = *(a2 + 2);
        goto LABEL_825;
      case 0x17u:
        if ((v13 & 7) != 0)
        {
          goto LABEL_298;
        }

        v66 = *(a2 + 1);
        v28 = *(a2 + 2);
        goto LABEL_834;
      case 0x18u:
        if (v15 != 2)
        {
          goto LABEL_298;
        }

        v34 = *(v4 + 672);
        goto LABEL_843;
      case 0x19u:
        if (v15 != 2)
        {
          goto LABEL_298;
        }

        goto LABEL_850;
      case 0x1Au:
        if (v15 != 2)
        {
          goto LABEL_298;
        }

        goto LABEL_857;
      case 0x1Bu:
        if ((v13 & 7) != 0)
        {
          goto LABEL_298;
        }

        v170 = *(a2 + 1);
        v54 = *(a2 + 2);
        goto LABEL_864;
      case 0x1Cu:
        if ((v13 & 7) != 0)
        {
          goto LABEL_298;
        }

        v55 = *(a2 + 1);
        v54 = *(a2 + 2);
        goto LABEL_873;
      case 0x1Du:
        if ((v13 & 7) != 0)
        {
          goto LABEL_298;
        }

        v172 = *(a2 + 1);
        v54 = *(a2 + 2);
        goto LABEL_882;
      case 0x1Eu:
        if ((v13 & 7) != 0)
        {
          goto LABEL_298;
        }

        v175 = *(a2 + 1);
        v54 = *(a2 + 2);
        goto LABEL_891;
      case 0x1Fu:
        if ((v13 & 7) != 0)
        {
          goto LABEL_298;
        }

        v181 = *(a2 + 1);
        v54 = *(a2 + 2);
        goto LABEL_900;
      case 0x20u:
        if ((v13 & 7) != 0)
        {
          goto LABEL_298;
        }

        v120 = *(a2 + 1);
        v54 = *(a2 + 2);
        goto LABEL_909;
      case 0x21u:
        if ((v13 & 7) != 0)
        {
          goto LABEL_298;
        }

        v37 = v7;
        v178 = v6;
        v179 = v5;
        v180 = *(a2 + 1);
        v54 = *(a2 + 2);
        goto LABEL_918;
      case 0x22u:
        if ((v13 & 7) != 0)
        {
          goto LABEL_298;
        }

        v37 = v7;
        v38 = v6;
        v39 = v5;
        v41 = *(a2 + 1);
        v40 = *(a2 + 2);
        goto LABEL_929;
      case 0x23u:
        if ((v13 & 7) != 0)
        {
          goto LABEL_298;
        }

        v174 = *(a2 + 1);
        v32 = *(a2 + 2);
        goto LABEL_940;
      case 0x24u:
        if ((v13 & 7) != 0)
        {
          goto LABEL_298;
        }

        v123 = *(a2 + 1);
        v32 = *(a2 + 2);
        goto LABEL_949;
      case 0x25u:
        if ((v13 & 7) != 0)
        {
          goto LABEL_298;
        }

        v44 = *(a2 + 1);
        v32 = *(a2 + 2);
        goto LABEL_958;
      case 0x26u:
        if ((v13 & 7) != 0)
        {
          goto LABEL_298;
        }

        v119 = *(a2 + 1);
        v32 = *(a2 + 2);
        goto LABEL_967;
      case 0x27u:
        if ((v13 & 7) != 0)
        {
          goto LABEL_298;
        }

        v33 = *(a2 + 1);
        v32 = *(a2 + 2);
        goto LABEL_976;
      case 0x28u:
        if ((v13 & 7) != 0)
        {
          goto LABEL_298;
        }

        v176 = *(a2 + 1);
        v32 = *(a2 + 2);
        goto LABEL_985;
      case 0x29u:
        if (v15 != 2)
        {
          goto LABEL_298;
        }

        v177 = *(v4 + 676);
        goto LABEL_994;
      case 0x2Au:
        if (v15 != 2)
        {
          goto LABEL_298;
        }

        goto LABEL_1015;
      case 0x2Bu:
        if ((v13 & 7) != 0)
        {
          goto LABEL_298;
        }

        v167 = *(a2 + 1);
        v166 = *(a2 + 2);
        goto LABEL_1027;
      case 0x2Cu:
        if (v15 != 2)
        {
          goto LABEL_298;
        }

        v144 = *(v4 + 676);
        goto LABEL_1036;
      case 0x2Du:
        if ((v13 & 7) != 0)
        {
          goto LABEL_298;
        }

        v142 = *(a2 + 1);
        v26 = *(a2 + 2);
        goto LABEL_1043;
      case 0x2Eu:
        if ((v13 & 7) != 0)
        {
          goto LABEL_298;
        }

        v27 = *(a2 + 1);
        v26 = *(a2 + 2);
        goto LABEL_1052;
      case 0x2Fu:
        if ((v13 & 7) != 0)
        {
          goto LABEL_298;
        }

        v31 = *(a2 + 1);
        v30 = *(a2 + 2);
        goto LABEL_1063;
      case 0x30u:
        if ((v13 & 7) != 0)
        {
          goto LABEL_298;
        }

        v86 = v7;
        v87 = v6;
        v88 = v5;
        v89 = *(a2 + 1);
        v30 = *(a2 + 2);
        goto LABEL_1072;
      case 0x31u:
        if ((v13 & 7) != 0)
        {
          goto LABEL_298;
        }

        v92 = *(a2 + 1);
        v35 = *(a2 + 2);
        goto LABEL_1083;
      case 0x32u:
        if ((v13 & 7) != 0)
        {
          goto LABEL_298;
        }

        v61 = *(a2 + 1);
        v35 = *(a2 + 2);
        goto LABEL_1092;
      case 0x33u:
        if ((v13 & 7) != 0)
        {
          goto LABEL_298;
        }

        v36 = *(a2 + 1);
        v35 = *(a2 + 2);
        goto LABEL_1101;
      case 0x34u:
        if ((v13 & 7) != 0)
        {
          goto LABEL_298;
        }

        v171 = *(a2 + 1);
        v35 = *(a2 + 2);
        goto LABEL_1110;
      case 0x35u:
        if ((v13 & 7) != 0)
        {
          goto LABEL_298;
        }

        v43 = *(a2 + 1);
        v35 = *(a2 + 2);
        goto LABEL_1119;
      case 0x36u:
        if ((v13 & 7) != 0)
        {
          goto LABEL_298;
        }

        v124 = *(a2 + 1);
        v35 = *(a2 + 2);
        goto LABEL_1128;
      case 0x37u:
        if ((v13 & 7) != 0)
        {
          goto LABEL_298;
        }

        v69 = *(a2 + 1);
        v35 = *(a2 + 2);
        goto LABEL_1137;
      case 0x38u:
        if ((v13 & 7) != 0)
        {
          goto LABEL_298;
        }

        v168 = *(a2 + 1);
        v35 = *(a2 + 2);
        goto LABEL_1146;
      case 0x39u:
        if ((v13 & 7) != 0)
        {
          goto LABEL_298;
        }

        v165 = *(a2 + 1);
        v35 = *(a2 + 2);
        goto LABEL_1155;
      case 0x3Au:
        if ((v13 & 7) != 0)
        {
          goto LABEL_298;
        }

        v160 = *(a2 + 1);
        v35 = *(a2 + 2);
        goto LABEL_1164;
      case 0x3Bu:
        if ((v13 & 7) != 0)
        {
          goto LABEL_298;
        }

        v62 = *(a2 + 1);
        v35 = *(a2 + 2);
        goto LABEL_1173;
      case 0x3Cu:
        if ((v13 & 7) != 0)
        {
          goto LABEL_298;
        }

        v42 = *(a2 + 1);
        v35 = *(a2 + 2);
        goto LABEL_1182;
      case 0x3Du:
        if ((v13 & 7) != 0)
        {
          goto LABEL_298;
        }

        v72 = *(a2 + 1);
        v35 = *(a2 + 2);
        goto LABEL_1191;
      case 0x3Eu:
        if ((v13 & 7) != 0)
        {
          goto LABEL_298;
        }

        v173 = *(a2 + 1);
        v35 = *(a2 + 2);
        goto LABEL_1200;
      case 0x3Fu:
        if ((v13 & 7) != 0)
        {
          goto LABEL_298;
        }

        v77 = *(a2 + 1);
        v35 = *(a2 + 2);
        goto LABEL_1209;
      case 0x40u:
        if ((v13 & 7) != 0)
        {
          goto LABEL_298;
        }

        v60 = *(a2 + 1);
        v35 = *(a2 + 2);
        goto LABEL_1218;
      case 0x41u:
        if ((v13 & 7) != 0)
        {
          goto LABEL_298;
        }

        v130 = *(a2 + 1);
        v35 = *(a2 + 2);
        goto LABEL_1227;
      case 0x42u:
        if ((v13 & 7) != 0)
        {
          goto LABEL_298;
        }

        v102 = *(a2 + 1);
        v35 = *(a2 + 2);
        goto LABEL_1236;
      case 0x43u:
        if ((v13 & 7) != 0)
        {
          goto LABEL_298;
        }

        v115 = *(a2 + 1);
        v35 = *(a2 + 2);
        goto LABEL_1245;
      case 0x44u:
        if ((v13 & 7) != 0)
        {
          goto LABEL_298;
        }

        v131 = *(a2 + 1);
        v35 = *(a2 + 2);
        goto LABEL_1254;
      case 0x45u:
        if ((v13 & 7) != 0)
        {
          goto LABEL_298;
        }

        v128 = *(a2 + 1);
        v35 = *(a2 + 2);
        goto LABEL_1263;
      case 0x46u:
        if ((v13 & 7) != 0)
        {
          goto LABEL_298;
        }

        v101 = *(a2 + 1);
        v35 = *(a2 + 2);
        goto LABEL_1272;
      case 0x47u:
        if ((v13 & 7) != 0)
        {
          goto LABEL_298;
        }

        v153 = *(a2 + 1);
        goto LABEL_1281;
      case 0x48u:
        if ((v13 & 7) != 0)
        {
          goto LABEL_298;
        }

        v85 = *(a2 + 1);
        v45 = *(a2 + 2);
        goto LABEL_1290;
      case 0x49u:
        if ((v13 & 7) != 0)
        {
          goto LABEL_298;
        }

        v150 = *(a2 + 1);
        v45 = *(a2 + 2);
        goto LABEL_1299;
      case 0x4Au:
        if ((v13 & 7) != 0)
        {
          goto LABEL_298;
        }

        v68 = *(a2 + 1);
        v45 = *(a2 + 2);
        goto LABEL_1308;
      case 0x4Bu:
        if ((v13 & 7) != 0)
        {
          goto LABEL_298;
        }

        v161 = *(a2 + 1);
        v45 = *(a2 + 2);
        goto LABEL_1317;
      case 0x4Cu:
        if ((v13 & 7) != 0)
        {
          goto LABEL_298;
        }

        v159 = *(a2 + 1);
        v45 = *(a2 + 2);
        goto LABEL_1326;
      case 0x4Du:
        if ((v13 & 7) != 0)
        {
          goto LABEL_298;
        }

        v65 = *(a2 + 1);
        v45 = *(a2 + 2);
        goto LABEL_1335;
      case 0x4Eu:
        if ((v13 & 7) != 0)
        {
          goto LABEL_298;
        }

        v163 = *(a2 + 1);
        v45 = *(a2 + 2);
        goto LABEL_1344;
      case 0x4Fu:
        if ((v13 & 7) != 0)
        {
          goto LABEL_298;
        }

        v169 = *(a2 + 1);
        v45 = *(a2 + 2);
        goto LABEL_1353;
      case 0x50u:
        if ((v13 & 7) != 0)
        {
          goto LABEL_298;
        }

        v46 = *(a2 + 1);
        v45 = *(a2 + 2);
        goto LABEL_1362;
      case 0x51u:
        if ((v13 & 7) != 0)
        {
          goto LABEL_298;
        }

        v93 = *(a2 + 1);
        v45 = *(a2 + 2);
        goto LABEL_1371;
      case 0x52u:
        if ((v13 & 7) != 0)
        {
          goto LABEL_298;
        }

        v82 = *(a2 + 1);
        v45 = *(a2 + 2);
        goto LABEL_1380;
      case 0x53u:
        if ((v13 & 7) != 0)
        {
          goto LABEL_298;
        }

        v67 = *(a2 + 1);
        v45 = *(a2 + 2);
        goto LABEL_1389;
      case 0x54u:
        if ((v13 & 7) != 0)
        {
          goto LABEL_298;
        }

        v164 = *(a2 + 1);
        v45 = *(a2 + 2);
        goto LABEL_1398;
      case 0x55u:
        if (v15 != 2)
        {
          goto LABEL_298;
        }

        v139 = *(v4 + 680);
        goto LABEL_1407;
      case 0x56u:
        if ((v13 & 7) != 0)
        {
          goto LABEL_298;
        }

        v79 = *(a2 + 1);
        v78 = *(a2 + 2);
        goto LABEL_1414;
      case 0x57u:
        if ((v13 & 7) != 0)
        {
          goto LABEL_298;
        }

        v53 = *(a2 + 1);
        v52 = *(a2 + 2);
        goto LABEL_1425;
      case 0x58u:
        if ((v13 & 7) != 0)
        {
          goto LABEL_298;
        }

        v152 = *(a2 + 1);
        v151 = *(a2 + 2);
        goto LABEL_1436;
      case 0x59u:
        if (v15 != 2)
        {
          goto LABEL_298;
        }

        goto LABEL_1445;
      case 0x5Au:
        if ((v13 & 7) != 0)
        {
          goto LABEL_298;
        }

        v96 = *(a2 + 1);
        v63 = *(a2 + 2);
        goto LABEL_134;
      case 0x5Bu:
        if ((v13 & 7) != 0)
        {
          goto LABEL_298;
        }

        v148 = *(a2 + 1);
        v63 = *(a2 + 2);
        goto LABEL_309;
      case 0x5Cu:
        if ((v13 & 7) != 0)
        {
          goto LABEL_298;
        }

        v158 = *(a2 + 1);
        v63 = *(a2 + 2);
        goto LABEL_318;
      case 0x5Du:
        if ((v13 & 7) != 0)
        {
          goto LABEL_298;
        }

        v64 = *(a2 + 1);
        v63 = *(a2 + 2);
        goto LABEL_327;
      case 0x5Eu:
        if ((v13 & 7) != 0)
        {
          goto LABEL_298;
        }

        v71 = *(a2 + 1);
        v63 = *(a2 + 2);
        goto LABEL_336;
      case 0x5Fu:
        if ((v13 & 7) != 0)
        {
          goto LABEL_298;
        }

        v70 = *(a2 + 1);
        v63 = *(a2 + 2);
        goto LABEL_345;
      case 0x60u:
        if ((v13 & 7) != 0)
        {
          goto LABEL_298;
        }

        v74 = *(a2 + 1);
        v63 = *(a2 + 2);
        goto LABEL_354;
      case 0x61u:
        if ((v13 & 7) != 0)
        {
          goto LABEL_298;
        }

        v81 = *(a2 + 1);
        v63 = *(a2 + 2);
        goto LABEL_363;
      case 0x62u:
        if ((v13 & 7) != 0)
        {
          goto LABEL_298;
        }

        v138 = *(a2 + 1);
        v63 = *(a2 + 2);
        goto LABEL_372;
      case 0x63u:
        if ((v13 & 7) != 0)
        {
          goto LABEL_298;
        }

        v121 = *(a2 + 1);
        v63 = *(a2 + 2);
        goto LABEL_381;
      case 0x64u:
        if ((v13 & 7) != 0)
        {
          goto LABEL_298;
        }

        v137 = *(a2 + 1);
        v63 = *(a2 + 2);
        goto LABEL_390;
      case 0x65u:
        if ((v13 & 7) != 0)
        {
          goto LABEL_298;
        }

        v156 = *(a2 + 1);
        v63 = *(a2 + 2);
        goto LABEL_399;
      case 0x66u:
        if ((v13 & 7) != 0)
        {
          goto LABEL_298;
        }

        v155 = *(a2 + 1);
        v63 = *(a2 + 2);
        goto LABEL_408;
      case 0x67u:
        if ((v13 & 7) != 0)
        {
          goto LABEL_298;
        }

        v73 = *(a2 + 1);
        v63 = *(a2 + 2);
        goto LABEL_417;
      case 0x68u:
        if (v15 != 2)
        {
          goto LABEL_298;
        }

        goto LABEL_1459;
      case 0x69u:
        if ((v13 & 7) == 0)
        {
          v182 = *(a2 + 1);
          v110 = *(a2 + 2);
          goto LABEL_1479;
        }

        if (v15 != 2)
        {
          goto LABEL_298;
        }

        v539[0] = 0;
        v105 = *(a2 + 1);
        v488 = v11;
        if (v105 >= *(a2 + 2) || *v105 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v539))
          {
            return 0;
          }

          v106 = v10;
          v107 = v8;
          v108 = v6;
          v109 = v5;
        }

        else
        {
          v106 = v10;
          v107 = v8;
          v108 = v6;
          v109 = v5;
          v539[0] = *v105;
          *(a2 + 1) = v105 + 1;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
        while (wireless_diagnostics::google::protobuf::io::CodedInputStream::BytesUntilLimit(a2) >= 1)
        {
          v538[0] = 0;
          v327 = *(a2 + 1);
          if (v327 >= *(a2 + 2) || (v328 = *v327, (v328 & 0x80000000) != 0))
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v538))
            {
              return 0;
            }

            v328 = v538[0];
          }

          else
          {
            *(a2 + 1) = v327 + 1;
          }

          v329 = v328 != 0;
          v330 = *(v4 + 544);
          if (v330 == *(v4 + 548))
          {
            wireless_diagnostics::google::protobuf::RepeatedField<BOOL>::Reserve((v4 + 536), v330 + 1);
            v330 = *(v4 + 544);
          }

          v331 = *(v4 + 536);
          *(v4 + 544) = v330 + 1;
          *(v331 + v330) = v329;
        }

        this = wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
        goto LABEL_1499;
      case 0x6Au:
        if ((v13 & 7) != 0)
        {
          goto LABEL_298;
        }

        v111 = *(a2 + 1);
        v110 = *(a2 + 2);
        goto LABEL_1505;
      case 0x6Bu:
        if ((v13 & 7) != 0)
        {
          goto LABEL_298;
        }

        v154 = *(a2 + 1);
        v110 = *(a2 + 2);
        goto LABEL_1514;
      case 0x6Cu:
        if ((v13 & 7) != 0)
        {
          goto LABEL_298;
        }

        v143 = *(a2 + 1);
        v110 = *(a2 + 2);
        goto LABEL_1523;
      case 0x6Du:
        if (v15 != 2)
        {
          goto LABEL_298;
        }

        goto LABEL_1532;
      case 0x6Eu:
        if ((v13 & 7) != 0)
        {
          goto LABEL_298;
        }

        v125 = *(a2 + 1);
        v75 = *(a2 + 2);
        goto LABEL_186;
      case 0x6Fu:
        if ((v13 & 7) != 0)
        {
          goto LABEL_298;
        }

        v149 = *(a2 + 1);
        v75 = *(a2 + 2);
        goto LABEL_431;
      case 0x70u:
        if ((v13 & 7) != 0)
        {
          goto LABEL_298;
        }

        v134 = *(a2 + 1);
        v75 = *(a2 + 2);
        goto LABEL_440;
      case 0x71u:
        if ((v13 & 7) != 0)
        {
          goto LABEL_298;
        }

        v122 = *(a2 + 1);
        v75 = *(a2 + 2);
        goto LABEL_449;
      case 0x72u:
        if ((v13 & 7) != 0)
        {
          goto LABEL_298;
        }

        v76 = *(a2 + 1);
        v75 = *(a2 + 2);
        goto LABEL_458;
      case 0x73u:
        if ((v13 & 7) != 0)
        {
          goto LABEL_298;
        }

        v113 = *(a2 + 1);
        v75 = *(a2 + 2);
        goto LABEL_467;
      case 0x74u:
        if ((v13 & 7) != 0)
        {
          goto LABEL_298;
        }

        v80 = *(a2 + 1);
        v75 = *(a2 + 2);
        goto LABEL_476;
      case 0x75u:
        if ((v13 & 7) != 0)
        {
          goto LABEL_298;
        }

        v132 = *(a2 + 1);
        v75 = *(a2 + 2);
        goto LABEL_485;
      case 0x76u:
        if ((v13 & 7) != 0)
        {
          goto LABEL_298;
        }

        v103 = *(a2 + 1);
        v75 = *(a2 + 2);
        goto LABEL_494;
      case 0x77u:
        if ((v13 & 7) != 0)
        {
          goto LABEL_298;
        }

        v90 = *(a2 + 1);
        v75 = *(a2 + 2);
        goto LABEL_503;
      case 0x78u:
        if ((v13 & 7) != 0)
        {
          goto LABEL_298;
        }

        v135 = *(a2 + 1);
        v75 = *(a2 + 2);
        goto LABEL_512;
      case 0x79u:
        if ((v13 & 7) != 0)
        {
          goto LABEL_298;
        }

        v104 = *(a2 + 1);
        v75 = *(a2 + 2);
        goto LABEL_521;
      case 0x7Au:
        if ((v13 & 7) != 0)
        {
          goto LABEL_298;
        }

        v136 = *(a2 + 1);
        v75 = *(a2 + 2);
        goto LABEL_530;
      case 0x7Bu:
        if ((v13 & 7) != 0)
        {
          goto LABEL_298;
        }

        v116 = *(a2 + 1);
        v75 = *(a2 + 2);
        goto LABEL_539;
      case 0x7Cu:
        if ((v13 & 7) != 0)
        {
          goto LABEL_298;
        }

        v133 = *(a2 + 1);
        v75 = *(a2 + 2);
        goto LABEL_548;
      case 0x7Du:
        if ((v13 & 7) != 0)
        {
          goto LABEL_298;
        }

        v129 = *(a2 + 1);
        v75 = *(a2 + 2);
        goto LABEL_557;
      case 0x7Eu:
        if ((v13 & 7) != 0)
        {
          goto LABEL_298;
        }

        v95 = *(a2 + 1);
        v94 = *(a2 + 2);
        goto LABEL_568;
      case 0x7Fu:
        if (v15 != 2)
        {
          goto LABEL_298;
        }

        goto LABEL_577;
      case 0x80u:
        if ((v13 & 7) != 0)
        {
          goto LABEL_298;
        }

        v112 = *(a2 + 1);
        v49 = *(a2 + 2);
        goto LABEL_584;
      case 0x81u:
        if ((v13 & 7) != 0)
        {
          goto LABEL_298;
        }

        v117 = *(a2 + 1);
        v49 = *(a2 + 2);
        goto LABEL_593;
      case 0x82u:
        if ((v13 & 7) != 0)
        {
          goto LABEL_298;
        }

        v118 = *(a2 + 1);
        v49 = *(a2 + 2);
        goto LABEL_602;
      default:
        goto LABEL_298;
    }

    while (1)
    {
      if (v326[1] != 2)
      {
        goto LABEL_2;
      }

      *(a2 + 1) = v326 + 2;
LABEL_1015:
      v332 = *(v4 + 272);
      v333 = *(v4 + 276);
      if (v332 >= v333)
      {
        if (v333 == *(v4 + 280))
        {
          this = wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((v4 + 264));
          v333 = *(v4 + 276);
        }

        *(v4 + 276) = v333 + 1;
        v334 = wireless_diagnostics::google::protobuf::internal::StringTypeHandlerBase::New(this);
        v335 = *(v4 + 264);
        v336 = *(v4 + 272);
        *(v4 + 272) = v336 + 1;
        *(v335 + 8 * v336) = v334;
      }

      else
      {
        *(v4 + 272) = v332 + 1;
      }

      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
      if (!this)
      {
        return this;
      }

      v326 = *(a2 + 1);
      v166 = *(a2 + 2);
      if (v166 - v326 < 2)
      {
        goto LABEL_2;
      }

      v337 = *v326;
      if (v337 == 216)
      {
        break;
      }

      if (v337 != 210)
      {
        goto LABEL_2;
      }
    }

    if (v326[1] == 2)
    {
      v167 = (v326 + 2);
      *(a2 + 1) = v167;
LABEL_1027:
      if (v167 >= v166 || (v338 = *v167, v338 < 0))
      {
        this = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, (v4 + 228));
        if (!this)
        {
          return this;
        }

        v339 = *(a2 + 1);
        v166 = *(a2 + 2);
      }

      else
      {
        *(v4 + 228) = v338;
        v339 = (v167 + 1);
        *(a2 + 1) = v339;
      }

      v144 = *(v4 + 676) | 0x4000;
      *(v4 + 676) = v144;
      if (v166 - v339 >= 2 && *v339 == 226 && v339[1] == 2)
      {
        *(a2 + 1) = v339 + 2;
LABEL_1036:
        *(v4 + 676) = v144 | 0x80;
        if (*(v4 + 200) == MEMORY[0x1E69E5958])
        {
          operator new();
        }

        this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
        if (!this)
        {
          return this;
        }

        v340 = *(a2 + 1);
        v26 = *(a2 + 2);
        if (v26 - v340 >= 2 && *v340 == 232 && v340[1] == 2)
        {
          v142 = (v340 + 2);
          *(a2 + 1) = v142;
LABEL_1043:
          v538[0] = 0;
          if (v142 >= v26 || (v341 = *v142, (v341 & 0x80000000) != 0))
          {
            this = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v538);
            if (!this)
            {
              return this;
            }

            v341 = v538[0];
            v342 = *(a2 + 1);
            v26 = *(a2 + 2);
          }

          else
          {
            v342 = (v142 + 1);
            *(a2 + 1) = v342;
          }

          *(v4 + 237) = v341 != 0;
          *(v4 + 676) |= 0x100u;
          if (v26 - v342 >= 2 && *v342 == 240 && v342[1] == 2)
          {
            v27 = (v342 + 2);
            *(a2 + 1) = v27;
LABEL_1052:
            v538[0] = 0;
            if (v27 >= v26 || (v343 = *v27, (v343 & 0x80000000) != 0))
            {
              this = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v538);
              if (!this)
              {
                return this;
              }

              v343 = v538[0];
            }

            else
            {
              *(a2 + 1) = v27 + 1;
            }

            if (v343 <= 3)
            {
              *(v4 + 676) |= 0x200u;
              *(v4 + 196) = v343;
            }

            v344 = *(a2 + 1);
            v30 = *(a2 + 2);
            if (v30 - v344 >= 2 && *v344 == 248 && v344[1] == 2)
            {
              v31 = (v344 + 2);
              *(a2 + 1) = v31;
LABEL_1063:
              if (v31 >= v30 || (v345 = *v31, v345 < 0))
              {
                this = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, (v4 + 208));
                if (!this)
                {
                  return this;
                }

                v346 = *(a2 + 1);
                v30 = *(a2 + 2);
              }

              else
              {
                *(v4 + 208) = v345;
                v346 = (v31 + 1);
                *(a2 + 1) = v346;
              }

              *(v4 + 676) |= 0x400u;
              if (v30 - v346 >= 2 && *v346 == 128 && v346[1] == 3)
              {
                v86 = v7;
                v87 = v6;
                v88 = v5;
                v89 = (v346 + 2);
                *(a2 + 1) = v89;
LABEL_1072:
                v538[0] = 0;
                if (v89 >= v30 || (v347 = *v89, (v347 & 0x80000000) != 0))
                {
                  this = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v538);
                  if (!this)
                  {
                    return this;
                  }

                  v347 = v538[0];
                }

                else
                {
                  *(a2 + 1) = v89 + 1;
                }

                this = awd::metrics::session_termination_reason_IsValid(v347);
                if (this)
                {
                  *(v4 + 676) |= 0x800u;
                  *(v4 + 212) = v347;
                }

                v348 = *(a2 + 1);
                v35 = *(a2 + 2);
                v5 = v88;
                v6 = v87;
                v7 = v86;
                if (v35 - v348 >= 2 && *v348 == 136 && v348[1] == 3)
                {
                  v92 = (v348 + 2);
                  *(a2 + 1) = v92;
LABEL_1083:
                  v538[0] = 0;
                  if (v92 >= v35 || (v349 = *v92, (v349 & 0x80000000) != 0))
                  {
                    this = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v538);
                    if (!this)
                    {
                      return this;
                    }

                    v349 = v538[0];
                    v350 = *(a2 + 1);
                    v35 = *(a2 + 2);
                  }

                  else
                  {
                    v350 = (v92 + 1);
                    *(a2 + 1) = v350;
                  }

                  *(v4 + 232) = -(v349 & 1) ^ (v349 >> 1);
                  *(v4 + 676) |= 0x8000u;
                  if (v35 - v350 >= 2 && *v350 == 144 && v350[1] == 3)
                  {
                    v61 = (v350 + 2);
                    *(a2 + 1) = v61;
LABEL_1092:
                    if (v61 >= v35 || (v351 = *v61, v351 < 0))
                    {
                      this = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, (v4 + 248));
                      if (!this)
                      {
                        return this;
                      }

                      v352 = *(a2 + 1);
                      v35 = *(a2 + 2);
                    }

                    else
                    {
                      *(v4 + 248) = v351;
                      v352 = (v61 + 1);
                      *(a2 + 1) = v352;
                    }

                    *(v4 + 676) |= 0x40000u;
                    if (v35 - v352 >= 2 && *v352 == 152 && v352[1] == 3)
                    {
                      v36 = (v352 + 2);
                      *(a2 + 1) = v36;
LABEL_1101:
                      if (v36 >= v35 || (v353 = *v36, v353 < 0))
                      {
                        this = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, (v4 + 252));
                        if (!this)
                        {
                          return this;
                        }

                        v354 = *(a2 + 1);
                        v35 = *(a2 + 2);
                      }

                      else
                      {
                        *(v4 + 252) = v353;
                        v354 = (v36 + 1);
                        *(a2 + 1) = v354;
                      }

                      *(v4 + 676) |= 0x80000u;
                      if (v35 - v354 >= 2 && *v354 == 160 && v354[1] == 3)
                      {
                        v171 = (v354 + 2);
                        *(a2 + 1) = v171;
LABEL_1110:
                        if (v171 >= v35 || (v355 = *v171, v355 < 0))
                        {
                          this = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, (v4 + 120));
                          if (!this)
                          {
                            return this;
                          }

                          v356 = *(a2 + 1);
                          v35 = *(a2 + 2);
                        }

                        else
                        {
                          *(v4 + 120) = v355;
                          v356 = (v171 + 1);
                          *(a2 + 1) = v356;
                        }

                        *(v4 + 672) |= 0x200000u;
                        if (v35 - v356 >= 2 && *v356 == 168 && v356[1] == 3)
                        {
                          v43 = (v356 + 2);
                          *(a2 + 1) = v43;
LABEL_1119:
                          if (v43 >= v35 || (v357 = *v43, v357 < 0))
                          {
                            this = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, (v4 + 124));
                            if (!this)
                            {
                              return this;
                            }

                            v358 = *(a2 + 1);
                            v35 = *(a2 + 2);
                          }

                          else
                          {
                            *(v4 + 124) = v357;
                            v358 = (v43 + 1);
                            *(a2 + 1) = v358;
                          }

                          *(v4 + 672) |= 0x400000u;
                          if (v35 - v358 >= 2 && *v358 == 176 && v358[1] == 3)
                          {
                            v124 = (v358 + 2);
                            *(a2 + 1) = v124;
LABEL_1128:
                            if (v124 >= v35 || (v359 = *v124, v359 < 0))
                            {
                              this = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, (v4 + 128));
                              if (!this)
                              {
                                return this;
                              }

                              v360 = *(a2 + 1);
                              v35 = *(a2 + 2);
                            }

                            else
                            {
                              *(v4 + 128) = v359;
                              v360 = (v124 + 1);
                              *(a2 + 1) = v360;
                            }

                            *(v4 + 672) |= 0x800000u;
                            if (v35 - v360 >= 2 && *v360 == 184 && v360[1] == 3)
                            {
                              v69 = (v360 + 2);
                              *(a2 + 1) = v69;
LABEL_1137:
                              v538[0] = 0;
                              if (v69 >= v35 || (v361 = *v69, (v361 & 0x80000000) != 0))
                              {
                                this = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v538);
                                if (!this)
                                {
                                  return this;
                                }

                                v361 = v538[0];
                                v362 = *(a2 + 1);
                                v35 = *(a2 + 2);
                              }

                              else
                              {
                                v362 = (v69 + 1);
                                *(a2 + 1) = v362;
                              }

                              *(v4 + 396) = v361 != 0;
                              *(v4 + 676) |= 0x2000000u;
                              if (v35 - v362 >= 2 && *v362 == 192 && v362[1] == 3)
                              {
                                v168 = (v362 + 2);
                                *(a2 + 1) = v168;
LABEL_1146:
                                if (v168 >= v35 || (v363 = *v168, (v363 & 0x80000000) != 0))
                                {
                                  this = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v6);
                                  if (!this)
                                  {
                                    return this;
                                  }

                                  v364 = *(a2 + 1);
                                  v35 = *(a2 + 2);
                                }

                                else
                                {
                                  *v6 = v363;
                                  v364 = (v168 + 1);
                                  *(a2 + 1) = v364;
                                }

                                *(v4 + 676) |= 0x4000000u;
                                if (v35 - v364 >= 2 && *v364 == 200 && v364[1] == 3)
                                {
                                  v165 = (v364 + 2);
                                  *(a2 + 1) = v165;
LABEL_1155:
                                  if (v165 >= v35 || (v365 = *v165, (v365 & 0x80000000) != 0))
                                  {
                                    this = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v7);
                                    if (!this)
                                    {
                                      return this;
                                    }

                                    v366 = *(a2 + 1);
                                    v35 = *(a2 + 2);
                                  }

                                  else
                                  {
                                    *v7 = v365;
                                    v366 = (v165 + 1);
                                    *(a2 + 1) = v366;
                                  }

                                  *(v4 + 676) |= 0x8000000u;
                                  if (v35 - v366 >= 2 && *v366 == 208 && v366[1] == 3)
                                  {
                                    v160 = (v366 + 2);
                                    *(a2 + 1) = v160;
LABEL_1164:
                                    if (v160 >= v35 || (v367 = *v160, (v367 & 0x80000000) != 0))
                                    {
                                      this = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v8);
                                      if (!this)
                                      {
                                        return this;
                                      }

                                      v368 = *(a2 + 1);
                                      v35 = *(a2 + 2);
                                    }

                                    else
                                    {
                                      *v8 = v367;
                                      v368 = (v160 + 1);
                                      *(a2 + 1) = v368;
                                    }

                                    *(v4 + 676) |= 0x10000000u;
                                    if (v35 - v368 >= 2 && *v368 == 216 && v368[1] == 3)
                                    {
                                      v62 = (v368 + 2);
                                      *(a2 + 1) = v62;
LABEL_1173:
                                      if (v62 >= v35 || (v369 = *v62, (v369 & 0x80000000) != 0))
                                      {
                                        this = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v9);
                                        if (!this)
                                        {
                                          return this;
                                        }

                                        v370 = *(a2 + 1);
                                        v35 = *(a2 + 2);
                                      }

                                      else
                                      {
                                        *v9 = v369;
                                        v370 = (v62 + 1);
                                        *(a2 + 1) = v370;
                                      }

                                      *(v4 + 676) |= 0x20000000u;
                                      if (v35 - v370 >= 2 && *v370 == 224 && v370[1] == 3)
                                      {
                                        v42 = (v370 + 2);
                                        *(a2 + 1) = v42;
LABEL_1182:
                                        if (v42 >= v35 || (v371 = *v42, (v371 & 0x80000000) != 0))
                                        {
                                          this = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v10);
                                          if (!this)
                                          {
                                            return this;
                                          }

                                          v372 = *(a2 + 1);
                                          v35 = *(a2 + 2);
                                        }

                                        else
                                        {
                                          *v10 = v371;
                                          v372 = (v42 + 1);
                                          *(a2 + 1) = v372;
                                        }

                                        *(v4 + 676) |= 0x40000000u;
                                        if (v35 - v372 >= 2 && *v372 == 232 && v372[1] == 3)
                                        {
                                          v72 = (v372 + 2);
                                          *(a2 + 1) = v72;
LABEL_1191:
                                          if (v72 >= v35 || (v373 = *v72, (v373 & 0x80000000) != 0))
                                          {
                                            this = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v11);
                                            if (!this)
                                            {
                                              return this;
                                            }

                                            v374 = *(a2 + 1);
                                            v35 = *(a2 + 2);
                                          }

                                          else
                                          {
                                            *v11 = v373;
                                            v374 = (v72 + 1);
                                            *(a2 + 1) = v374;
                                          }

                                          *(v4 + 676) |= 0x80000000;
                                          if (v35 - v374 >= 2 && *v374 == 240 && v374[1] == 3)
                                          {
                                            v173 = (v374 + 2);
                                            *(a2 + 1) = v173;
LABEL_1200:
                                            if (v173 >= v35 || (v375 = *v173, (v375 & 0x80000000) != 0))
                                            {
                                              this = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v537);
                                              if (!this)
                                              {
                                                return this;
                                              }

                                              v376 = *(a2 + 1);
                                              v35 = *(a2 + 2);
                                            }

                                            else
                                            {
                                              *v537 = v375;
                                              v376 = (v173 + 1);
                                              *(a2 + 1) = v376;
                                            }

                                            *(v4 + 680) |= 1u;
                                            if (v35 - v376 >= 2 && *v376 == 248 && v376[1] == 3)
                                            {
                                              v77 = (v376 + 2);
                                              *(a2 + 1) = v77;
LABEL_1209:
                                              if (v77 >= v35 || (v377 = *v77, (v377 & 0x80000000) != 0))
                                              {
                                                this = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v536);
                                                if (!this)
                                                {
                                                  return this;
                                                }

                                                v378 = *(a2 + 1);
                                                v35 = *(a2 + 2);
                                              }

                                              else
                                              {
                                                *v536 = v377;
                                                v378 = (v77 + 1);
                                                *(a2 + 1) = v378;
                                              }

                                              *(v4 + 680) |= 2u;
                                              if (v35 - v378 >= 2 && *v378 == 128 && v378[1] == 4)
                                              {
                                                v60 = (v378 + 2);
                                                *(a2 + 1) = v60;
LABEL_1218:
                                                if (v60 >= v35 || (v379 = *v60, (v379 & 0x80000000) != 0))
                                                {
                                                  this = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v535);
                                                  if (!this)
                                                  {
                                                    return this;
                                                  }

                                                  v380 = *(a2 + 1);
                                                  v35 = *(a2 + 2);
                                                }

                                                else
                                                {
                                                  *v535 = v379;
                                                  v380 = (v60 + 1);
                                                  *(a2 + 1) = v380;
                                                }

                                                *(v4 + 680) |= 4u;
                                                if (v35 - v380 >= 2 && *v380 == 136 && v380[1] == 4)
                                                {
                                                  v130 = (v380 + 2);
                                                  *(a2 + 1) = v130;
LABEL_1227:
                                                  if (v130 >= v35 || (v381 = *v130, (v381 & 0x80000000) != 0))
                                                  {
                                                    this = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v534);
                                                    if (!this)
                                                    {
                                                      return this;
                                                    }

                                                    v382 = *(a2 + 1);
                                                    v35 = *(a2 + 2);
                                                  }

                                                  else
                                                  {
                                                    *v534 = v381;
                                                    v382 = (v130 + 1);
                                                    *(a2 + 1) = v382;
                                                  }

                                                  *(v4 + 680) |= 8u;
                                                  if (v35 - v382 >= 2 && *v382 == 144 && v382[1] == 4)
                                                  {
                                                    v102 = (v382 + 2);
                                                    *(a2 + 1) = v102;
LABEL_1236:
                                                    if (v102 >= v35 || (v383 = *v102, (v383 & 0x80000000) != 0))
                                                    {
                                                      this = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v533);
                                                      if (!this)
                                                      {
                                                        return this;
                                                      }

                                                      v384 = *(a2 + 1);
                                                      v35 = *(a2 + 2);
                                                    }

                                                    else
                                                    {
                                                      *v533 = v383;
                                                      v384 = (v102 + 1);
                                                      *(a2 + 1) = v384;
                                                    }

                                                    *(v4 + 680) |= 0x10u;
                                                    if (v35 - v384 >= 2 && *v384 == 152 && v384[1] == 4)
                                                    {
                                                      v115 = (v384 + 2);
                                                      *(a2 + 1) = v115;
LABEL_1245:
                                                      if (v115 >= v35 || (v385 = *v115, (v385 & 0x80000000) != 0))
                                                      {
                                                        this = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v532);
                                                        if (!this)
                                                        {
                                                          return this;
                                                        }

                                                        v386 = *(a2 + 1);
                                                        v35 = *(a2 + 2);
                                                      }

                                                      else
                                                      {
                                                        *v532 = v385;
                                                        v386 = (v115 + 1);
                                                        *(a2 + 1) = v386;
                                                      }

                                                      *(v4 + 680) |= 0x20u;
                                                      if (v35 - v386 >= 2 && *v386 == 160 && v386[1] == 4)
                                                      {
                                                        v131 = (v386 + 2);
                                                        *(a2 + 1) = v131;
LABEL_1254:
                                                        if (v131 >= v35 || (v387 = *v131, (v387 & 0x80000000) != 0))
                                                        {
                                                          this = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v531);
                                                          if (!this)
                                                          {
                                                            return this;
                                                          }

                                                          v388 = *(a2 + 1);
                                                          v35 = *(a2 + 2);
                                                        }

                                                        else
                                                        {
                                                          *v531 = v387;
                                                          v388 = (v131 + 1);
                                                          *(a2 + 1) = v388;
                                                        }

                                                        *(v4 + 680) |= 0x40u;
                                                        if (v35 - v388 >= 2 && *v388 == 168 && v388[1] == 4)
                                                        {
                                                          v128 = (v388 + 2);
                                                          *(a2 + 1) = v128;
LABEL_1263:
                                                          if (v128 >= v35 || (v389 = *v128, (v389 & 0x80000000) != 0))
                                                          {
                                                            this = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v530);
                                                            if (!this)
                                                            {
                                                              return this;
                                                            }

                                                            v390 = *(a2 + 1);
                                                            v35 = *(a2 + 2);
                                                          }

                                                          else
                                                          {
                                                            *v530 = v389;
                                                            v390 = (v128 + 1);
                                                            *(a2 + 1) = v390;
                                                          }

                                                          *(v4 + 680) |= 0x80u;
                                                          if (v35 - v390 >= 2 && *v390 == 176 && v390[1] == 4)
                                                          {
                                                            v101 = (v390 + 2);
                                                            *(a2 + 1) = v101;
LABEL_1272:
                                                            if (v101 >= v35 || (v391 = *v101, (v391 & 0x80000000) != 0))
                                                            {
                                                              this = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v529);
                                                              if (!this)
                                                              {
                                                                return this;
                                                              }

                                                              v392 = *(a2 + 1);
                                                              v35 = *(a2 + 2);
                                                            }

                                                            else
                                                            {
                                                              *v529 = v391;
                                                              v392 = (v101 + 1);
                                                              *(a2 + 1) = v392;
                                                            }

                                                            *(v4 + 680) |= 0x100u;
                                                            if (v35 - v392 >= 2 && *v392 == 184 && v392[1] == 4)
                                                            {
                                                              v153 = (v392 + 2);
                                                              *(a2 + 1) = v153;
LABEL_1281:
                                                              v45 = *(a2 + 2);
                                                              if (v153 >= v45 || (v393 = *v153, (v393 & 0x80000000) != 0))
                                                              {
                                                                this = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v528);
                                                                if (!this)
                                                                {
                                                                  return this;
                                                                }

                                                                v394 = *(a2 + 1);
                                                                v45 = *(a2 + 2);
                                                              }

                                                              else
                                                              {
                                                                *v528 = v393;
                                                                v394 = (v153 + 1);
                                                                *(a2 + 1) = v394;
                                                              }

                                                              *(v4 + 680) |= 0x200u;
                                                              if (v45 - v394 >= 2 && *v394 == 192 && v394[1] == 4)
                                                              {
                                                                v85 = (v394 + 2);
                                                                *(a2 + 1) = v85;
LABEL_1290:
                                                                if (v85 >= v45 || (v395 = *v85, (v395 & 0x80000000) != 0))
                                                                {
                                                                  this = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v527);
                                                                  if (!this)
                                                                  {
                                                                    return this;
                                                                  }

                                                                  v396 = *(a2 + 1);
                                                                  v45 = *(a2 + 2);
                                                                }

                                                                else
                                                                {
                                                                  *v527 = v395;
                                                                  v396 = (v85 + 1);
                                                                  *(a2 + 1) = v396;
                                                                }

                                                                *(v4 + 680) |= 0x400u;
                                                                if (v45 - v396 >= 2 && *v396 == 200 && v396[1] == 4)
                                                                {
                                                                  v150 = (v396 + 2);
                                                                  *(a2 + 1) = v150;
LABEL_1299:
                                                                  if (v150 >= v45 || (v397 = *v150, (v397 & 0x80000000) != 0))
                                                                  {
                                                                    this = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v526);
                                                                    if (!this)
                                                                    {
                                                                      return this;
                                                                    }

                                                                    v398 = *(a2 + 1);
                                                                    v45 = *(a2 + 2);
                                                                  }

                                                                  else
                                                                  {
                                                                    *v526 = v397;
                                                                    v398 = (v150 + 1);
                                                                    *(a2 + 1) = v398;
                                                                  }

                                                                  *(v4 + 680) |= 0x800u;
                                                                  if (v45 - v398 >= 2 && *v398 == 208 && v398[1] == 4)
                                                                  {
                                                                    v68 = (v398 + 2);
                                                                    *(a2 + 1) = v68;
LABEL_1308:
                                                                    if (v68 >= v45 || (v399 = *v68, (v399 & 0x80000000) != 0))
                                                                    {
                                                                      this = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v525);
                                                                      if (!this)
                                                                      {
                                                                        return this;
                                                                      }

                                                                      v400 = *(a2 + 1);
                                                                      v45 = *(a2 + 2);
                                                                    }

                                                                    else
                                                                    {
                                                                      *v525 = v399;
                                                                      v400 = (v68 + 1);
                                                                      *(a2 + 1) = v400;
                                                                    }

                                                                    *(v4 + 680) |= 0x1000u;
                                                                    if (v45 - v400 >= 2 && *v400 == 216 && v400[1] == 4)
                                                                    {
                                                                      v161 = (v400 + 2);
                                                                      *(a2 + 1) = v161;
LABEL_1317:
                                                                      if (v161 >= v45 || (v401 = *v161, (v401 & 0x80000000) != 0))
                                                                      {
                                                                        this = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v524);
                                                                        if (!this)
                                                                        {
                                                                          return this;
                                                                        }

                                                                        v402 = *(a2 + 1);
                                                                        v45 = *(a2 + 2);
                                                                      }

                                                                      else
                                                                      {
                                                                        *v524 = v401;
                                                                        v402 = (v161 + 1);
                                                                        *(a2 + 1) = v402;
                                                                      }

                                                                      *(v4 + 680) |= 0x2000u;
                                                                      if (v45 - v402 >= 2 && *v402 == 224 && v402[1] == 4)
                                                                      {
                                                                        v159 = (v402 + 2);
                                                                        *(a2 + 1) = v159;
LABEL_1326:
                                                                        if (v159 >= v45 || (v403 = *v159, (v403 & 0x80000000) != 0))
                                                                        {
                                                                          this = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v523);
                                                                          if (!this)
                                                                          {
                                                                            return this;
                                                                          }

                                                                          v404 = *(a2 + 1);
                                                                          v45 = *(a2 + 2);
                                                                        }

                                                                        else
                                                                        {
                                                                          *v523 = v403;
                                                                          v404 = (v159 + 1);
                                                                          *(a2 + 1) = v404;
                                                                        }

                                                                        *(v4 + 680) |= 0x4000u;
                                                                        if (v45 - v404 >= 2 && *v404 == 232 && v404[1] == 4)
                                                                        {
                                                                          v65 = (v404 + 2);
                                                                          *(a2 + 1) = v65;
LABEL_1335:
                                                                          if (v65 >= v45 || (v405 = *v65, (v405 & 0x80000000) != 0))
                                                                          {
                                                                            this = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v522);
                                                                            if (!this)
                                                                            {
                                                                              return this;
                                                                            }

                                                                            v406 = *(a2 + 1);
                                                                            v45 = *(a2 + 2);
                                                                          }

                                                                          else
                                                                          {
                                                                            *v522 = v405;
                                                                            v406 = (v65 + 1);
                                                                            *(a2 + 1) = v406;
                                                                          }

                                                                          *(v4 + 680) |= 0x8000u;
                                                                          if (v45 - v406 >= 2 && *v406 == 240 && v406[1] == 4)
                                                                          {
                                                                            v163 = (v406 + 2);
                                                                            *(a2 + 1) = v163;
LABEL_1344:
                                                                            if (v163 >= v45 || (v407 = *v163, (v407 & 0x80000000) != 0))
                                                                            {
                                                                              this = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v521);
                                                                              if (!this)
                                                                              {
                                                                                return this;
                                                                              }

                                                                              v408 = *(a2 + 1);
                                                                              v45 = *(a2 + 2);
                                                                            }

                                                                            else
                                                                            {
                                                                              *v521 = v407;
                                                                              v408 = (v163 + 1);
                                                                              *(a2 + 1) = v408;
                                                                            }

                                                                            *(v4 + 680) |= 0x10000u;
                                                                            if (v45 - v408 >= 2 && *v408 == 248 && v408[1] == 4)
                                                                            {
                                                                              v169 = (v408 + 2);
                                                                              *(a2 + 1) = v169;
LABEL_1353:
                                                                              if (v169 >= v45 || (v409 = *v169, (v409 & 0x80000000) != 0))
                                                                              {
                                                                                this = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v520);
                                                                                if (!this)
                                                                                {
                                                                                  return this;
                                                                                }

                                                                                v410 = *(a2 + 1);
                                                                                v45 = *(a2 + 2);
                                                                              }

                                                                              else
                                                                              {
                                                                                *v520 = v409;
                                                                                v410 = (v169 + 1);
                                                                                *(a2 + 1) = v410;
                                                                              }

                                                                              *(v4 + 680) |= 0x20000u;
                                                                              if (v45 - v410 >= 2 && *v410 == 128 && v410[1] == 5)
                                                                              {
                                                                                v46 = (v410 + 2);
                                                                                *(a2 + 1) = v46;
LABEL_1362:
                                                                                if (v46 >= v45 || (v411 = *v46, (v411 & 0x80000000) != 0))
                                                                                {
                                                                                  this = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v519);
                                                                                  if (!this)
                                                                                  {
                                                                                    return this;
                                                                                  }

                                                                                  v412 = *(a2 + 1);
                                                                                  v45 = *(a2 + 2);
                                                                                }

                                                                                else
                                                                                {
                                                                                  *v519 = v411;
                                                                                  v412 = (v46 + 1);
                                                                                  *(a2 + 1) = v412;
                                                                                }

                                                                                *(v4 + 680) |= 0x40000u;
                                                                                if (v45 - v412 >= 2 && *v412 == 136 && v412[1] == 5)
                                                                                {
                                                                                  v93 = (v412 + 2);
                                                                                  *(a2 + 1) = v93;
LABEL_1371:
                                                                                  if (v93 >= v45 || (v413 = *v93, (v413 & 0x80000000) != 0))
                                                                                  {
                                                                                    this = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v518);
                                                                                    if (!this)
                                                                                    {
                                                                                      return this;
                                                                                    }

                                                                                    v414 = *(a2 + 1);
                                                                                    v45 = *(a2 + 2);
                                                                                  }

                                                                                  else
                                                                                  {
                                                                                    *v518 = v413;
                                                                                    v414 = (v93 + 1);
                                                                                    *(a2 + 1) = v414;
                                                                                  }

                                                                                  *(v4 + 680) |= 0x80000u;
                                                                                  if (v45 - v414 >= 2 && *v414 == 144 && v414[1] == 5)
                                                                                  {
                                                                                    v82 = (v414 + 2);
                                                                                    *(a2 + 1) = v82;
LABEL_1380:
                                                                                    if (v82 >= v45 || (v415 = *v82, (v415 & 0x80000000) != 0))
                                                                                    {
                                                                                      this = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v517);
                                                                                      if (!this)
                                                                                      {
                                                                                        return this;
                                                                                      }

                                                                                      v416 = *(a2 + 1);
                                                                                      v45 = *(a2 + 2);
                                                                                    }

                                                                                    else
                                                                                    {
                                                                                      *v517 = v415;
                                                                                      v416 = (v82 + 1);
                                                                                      *(a2 + 1) = v416;
                                                                                    }

                                                                                    *(v4 + 680) |= 0x100000u;
                                                                                    if (v45 - v416 >= 2 && *v416 == 152 && v416[1] == 5)
                                                                                    {
                                                                                      v67 = (v416 + 2);
                                                                                      *(a2 + 1) = v67;
LABEL_1389:
                                                                                      v538[0] = 0;
                                                                                      if (v67 >= v45 || (v417 = *v67, (v417 & 0x80000000) != 0))
                                                                                      {
                                                                                        this = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v538);
                                                                                        if (!this)
                                                                                        {
                                                                                          return this;
                                                                                        }

                                                                                        v417 = v538[0];
                                                                                        v418 = *(a2 + 1);
                                                                                        v45 = *(a2 + 2);
                                                                                      }

                                                                                      else
                                                                                      {
                                                                                        v418 = (v67 + 1);
                                                                                        *(a2 + 1) = v418;
                                                                                      }

                                                                                      *(v4 + 397) = v417 != 0;
                                                                                      *(v4 + 680) |= 0x200000u;
                                                                                      if (v45 - v418 >= 2 && *v418 == 160 && v418[1] == 5)
                                                                                      {
                                                                                        v164 = (v418 + 2);
                                                                                        *(a2 + 1) = v164;
LABEL_1398:
                                                                                        if (v164 >= v45 || (v419 = *v164, (v419 & 0x80000000) != 0))
                                                                                        {
                                                                                          this = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v516);
                                                                                          if (!this)
                                                                                          {
                                                                                            return this;
                                                                                          }

                                                                                          v420 = *(a2 + 1);
                                                                                          v45 = *(a2 + 2);
                                                                                        }

                                                                                        else
                                                                                        {
                                                                                          *v516 = v419;
                                                                                          v420 = (v164 + 1);
                                                                                          *(a2 + 1) = v420;
                                                                                        }

                                                                                        v139 = *(v4 + 680) | 0x400000;
                                                                                        *(v4 + 680) = v139;
                                                                                        if (v45 - v420 >= 2 && *v420 == 170 && v420[1] == 5)
                                                                                        {
                                                                                          *(a2 + 1) = v420 + 2;
LABEL_1407:
                                                                                          *(v4 + 680) = v139 | 0x800000;
                                                                                          if (*(v4 + 408) == MEMORY[0x1E69E5958])
                                                                                          {
                                                                                            operator new();
                                                                                          }

                                                                                          this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
                                                                                          if (!this)
                                                                                          {
                                                                                            return this;
                                                                                          }

                                                                                          v421 = *(a2 + 1);
                                                                                          v78 = *(a2 + 2);
                                                                                          if (v78 - v421 >= 2 && *v421 == 176 && v421[1] == 5)
                                                                                          {
                                                                                            v79 = (v421 + 2);
                                                                                            *(a2 + 1) = v79;
LABEL_1414:
                                                                                            v538[0] = 0;
                                                                                            if (v79 >= v78 || (v422 = *v79, (v422 & 0x80000000) != 0))
                                                                                            {
                                                                                              this = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v538);
                                                                                              if (!this)
                                                                                              {
                                                                                                return this;
                                                                                              }

                                                                                              v422 = v538[0];
                                                                                            }

                                                                                            else
                                                                                            {
                                                                                              *(a2 + 1) = v79 + 1;
                                                                                            }

                                                                                            if (v422 <= 2)
                                                                                            {
                                                                                              *(v4 + 680) |= 0x1000000u;
                                                                                              *(v4 + 416) = v422;
                                                                                            }

                                                                                            v423 = *(a2 + 1);
                                                                                            v52 = *(a2 + 2);
                                                                                            if (v52 - v423 >= 2 && *v423 == 184 && v423[1] == 5)
                                                                                            {
                                                                                              v53 = (v423 + 2);
                                                                                              *(a2 + 1) = v53;
LABEL_1425:
                                                                                              v538[0] = 0;
                                                                                              if (v53 >= v52 || (v424 = *v53, (v424 & 0x80000000) != 0))
                                                                                              {
                                                                                                this = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v538);
                                                                                                if (!this)
                                                                                                {
                                                                                                  return this;
                                                                                                }

                                                                                                v424 = v538[0];
                                                                                              }

                                                                                              else
                                                                                              {
                                                                                                *(a2 + 1) = v53 + 1;
                                                                                              }

                                                                                              if (v424 <= 5)
                                                                                              {
                                                                                                *(v4 + 680) |= 0x2000000u;
                                                                                                *(v4 + 420) = v424;
                                                                                              }

                                                                                              v425 = *(a2 + 1);
                                                                                              v151 = *(a2 + 2);
                                                                                              if (v151 - v425 >= 2 && *v425 == 192 && v425[1] == 5)
                                                                                              {
                                                                                                v152 = (v425 + 2);
                                                                                                *(a2 + 1) = v152;
LABEL_1436:
                                                                                                v538[0] = 0;
                                                                                                if (v152 >= v151 || (v426 = *v152, (v426 & 0x80000000) != 0))
                                                                                                {
                                                                                                  this = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v538);
                                                                                                  if (!this)
                                                                                                  {
                                                                                                    return this;
                                                                                                  }

                                                                                                  v426 = v538[0];
                                                                                                  v427 = *(a2 + 1);
                                                                                                  v151 = *(a2 + 2);
                                                                                                }

                                                                                                else
                                                                                                {
                                                                                                  v427 = (v152 + 1);
                                                                                                  *(a2 + 1) = v427;
                                                                                                }

                                                                                                *(v4 + 398) = v426 != 0;
                                                                                                *(v4 + 680) |= 0x4000000u;
                                                                                                if (v151 - v427 >= 2 && *v427 == 202)
                                                                                                {
                                                                                                  while (1)
                                                                                                  {
                                                                                                    if (v427[1] != 5)
                                                                                                    {
                                                                                                      goto LABEL_2;
                                                                                                    }

                                                                                                    *(a2 + 1) = v427 + 2;
LABEL_1445:
                                                                                                    v428 = *(v4 + 432);
                                                                                                    v429 = *(v4 + 436);
                                                                                                    if (v428 >= v429)
                                                                                                    {
                                                                                                      if (v429 == *(v4 + 440))
                                                                                                      {
                                                                                                        this = wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((v4 + 424));
                                                                                                        v429 = *(v4 + 436);
                                                                                                      }

                                                                                                      *(v4 + 436) = v429 + 1;
                                                                                                      v430 = wireless_diagnostics::google::protobuf::internal::StringTypeHandlerBase::New(this);
                                                                                                      v431 = *(v4 + 424);
                                                                                                      v432 = *(v4 + 432);
                                                                                                      *(v4 + 432) = v432 + 1;
                                                                                                      *(v431 + 8 * v432) = v430;
                                                                                                    }

                                                                                                    else
                                                                                                    {
                                                                                                      *(v4 + 432) = v428 + 1;
                                                                                                    }

                                                                                                    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
                                                                                                    if (!this)
                                                                                                    {
                                                                                                      return this;
                                                                                                    }

                                                                                                    v427 = *(a2 + 1);
                                                                                                    v63 = *(a2 + 2);
                                                                                                    if (v63 - v427 < 2)
                                                                                                    {
                                                                                                      goto LABEL_2;
                                                                                                    }

                                                                                                    v433 = *v427;
                                                                                                    if (v433 == 208)
                                                                                                    {
                                                                                                      break;
                                                                                                    }

                                                                                                    if (v433 != 202)
                                                                                                    {
                                                                                                      goto LABEL_2;
                                                                                                    }
                                                                                                  }

                                                                                                  if (v427[1] == 5)
                                                                                                  {
                                                                                                    v96 = (v427 + 2);
                                                                                                    *(a2 + 1) = v96;
LABEL_134:
                                                                                                    if (v96 >= v63 || (v97 = *v96, (v97 & 0x80000000) != 0))
                                                                                                    {
                                                                                                      this = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v492);
                                                                                                      if (!this)
                                                                                                      {
                                                                                                        return this;
                                                                                                      }

                                                                                                      v98 = *(a2 + 1);
                                                                                                      v63 = *(a2 + 2);
                                                                                                    }

                                                                                                    else
                                                                                                    {
                                                                                                      *v492 = v97;
                                                                                                      v98 = (v96 + 1);
                                                                                                      *(a2 + 1) = v98;
                                                                                                    }

                                                                                                    *(v4 + 680) |= 0x10000000u;
                                                                                                    if (v63 - v98 >= 2 && *v98 == 216 && v98[1] == 5)
                                                                                                    {
                                                                                                      v148 = (v98 + 2);
                                                                                                      *(a2 + 1) = v148;
LABEL_309:
                                                                                                      if (v148 >= v63 || (v183 = *v148, v183 < 0))
                                                                                                      {
                                                                                                        this = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, (v4 + 448));
                                                                                                        if (!this)
                                                                                                        {
                                                                                                          return this;
                                                                                                        }

                                                                                                        v184 = *(a2 + 1);
                                                                                                        v63 = *(a2 + 2);
                                                                                                      }

                                                                                                      else
                                                                                                      {
                                                                                                        *(v4 + 448) = v183;
                                                                                                        v184 = (v148 + 1);
                                                                                                        *(a2 + 1) = v184;
                                                                                                      }

                                                                                                      *(v4 + 680) |= 0x20000000u;
                                                                                                      if (v63 - v184 >= 2 && *v184 == 224 && v184[1] == 5)
                                                                                                      {
                                                                                                        v158 = (v184 + 2);
                                                                                                        *(a2 + 1) = v158;
LABEL_318:
                                                                                                        if (v158 >= v63 || (v185 = *v158, v185 < 0))
                                                                                                        {
                                                                                                          this = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, (v4 + 464));
                                                                                                          if (!this)
                                                                                                          {
                                                                                                            return this;
                                                                                                          }

                                                                                                          v186 = *(a2 + 1);
                                                                                                          v63 = *(a2 + 2);
                                                                                                        }

                                                                                                        else
                                                                                                        {
                                                                                                          *(v4 + 464) = v185;
                                                                                                          v186 = (v158 + 1);
                                                                                                          *(a2 + 1) = v186;
                                                                                                        }

                                                                                                        *(v4 + 680) |= 0x40000000u;
                                                                                                        if (v63 - v186 >= 2 && *v186 == 232 && v186[1] == 5)
                                                                                                        {
                                                                                                          v64 = (v186 + 2);
                                                                                                          *(a2 + 1) = v64;
LABEL_327:
                                                                                                          if (v64 >= v63 || (v187 = *v64, (v187 & 0x80000000) != 0))
                                                                                                          {
                                                                                                            this = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v501);
                                                                                                            if (!this)
                                                                                                            {
                                                                                                              return this;
                                                                                                            }

                                                                                                            v188 = *(a2 + 1);
                                                                                                            v63 = *(a2 + 2);
                                                                                                          }

                                                                                                          else
                                                                                                          {
                                                                                                            *v501 = v187;
                                                                                                            v188 = (v64 + 1);
                                                                                                            *(a2 + 1) = v188;
                                                                                                          }

                                                                                                          *(v4 + 680) |= 0x80000000;
                                                                                                          if (v63 - v188 >= 2 && *v188 == 240 && v188[1] == 5)
                                                                                                          {
                                                                                                            v71 = (v188 + 2);
                                                                                                            *(a2 + 1) = v71;
LABEL_336:
                                                                                                            if (v71 >= v63 || (v189 = *v71, (v189 & 0x80000000) != 0))
                                                                                                            {
                                                                                                              this = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v503);
                                                                                                              if (!this)
                                                                                                              {
                                                                                                                return this;
                                                                                                              }

                                                                                                              v190 = *(a2 + 1);
                                                                                                              v63 = *(a2 + 2);
                                                                                                            }

                                                                                                            else
                                                                                                            {
                                                                                                              *v503 = v189;
                                                                                                              v190 = (v71 + 1);
                                                                                                              *(a2 + 1) = v190;
                                                                                                            }

                                                                                                            *(v4 + 684) |= 1u;
                                                                                                            if (v63 - v190 >= 2 && *v190 == 248 && v190[1] == 5)
                                                                                                            {
                                                                                                              v70 = (v190 + 2);
                                                                                                              *(a2 + 1) = v70;
LABEL_345:
                                                                                                              if (v70 >= v63 || (v191 = *v70, v191 < 0))
                                                                                                              {
                                                                                                                this = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, (v4 + 472));
                                                                                                                if (!this)
                                                                                                                {
                                                                                                                  return this;
                                                                                                                }

                                                                                                                v192 = *(a2 + 1);
                                                                                                                v63 = *(a2 + 2);
                                                                                                              }

                                                                                                              else
                                                                                                              {
                                                                                                                *(v4 + 472) = v191;
                                                                                                                v192 = (v70 + 1);
                                                                                                                *(a2 + 1) = v192;
                                                                                                              }

                                                                                                              *(v4 + 684) |= 2u;
                                                                                                              if (v63 - v192 >= 2 && *v192 == 128 && v192[1] == 6)
                                                                                                              {
                                                                                                                v74 = (v192 + 2);
                                                                                                                *(a2 + 1) = v74;
LABEL_354:
                                                                                                                if (v74 >= v63 || (v193 = *v74, v193 < 0))
                                                                                                                {
                                                                                                                  this = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, (v4 + 488));
                                                                                                                  if (!this)
                                                                                                                  {
                                                                                                                    return this;
                                                                                                                  }

                                                                                                                  v194 = *(a2 + 1);
                                                                                                                  v63 = *(a2 + 2);
                                                                                                                }

                                                                                                                else
                                                                                                                {
                                                                                                                  *(v4 + 488) = v193;
                                                                                                                  v194 = (v74 + 1);
                                                                                                                  *(a2 + 1) = v194;
                                                                                                                }

                                                                                                                *(v4 + 684) |= 4u;
                                                                                                                if (v63 - v194 >= 2 && *v194 == 136 && v194[1] == 6)
                                                                                                                {
                                                                                                                  v81 = (v194 + 2);
                                                                                                                  *(a2 + 1) = v81;
LABEL_363:
                                                                                                                  if (v81 >= v63 || (v195 = *v81, (v195 & 0x80000000) != 0))
                                                                                                                  {
                                                                                                                    this = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v508);
                                                                                                                    if (!this)
                                                                                                                    {
                                                                                                                      return this;
                                                                                                                    }

                                                                                                                    v196 = *(a2 + 1);
                                                                                                                    v63 = *(a2 + 2);
                                                                                                                  }

                                                                                                                  else
                                                                                                                  {
                                                                                                                    *v508 = v195;
                                                                                                                    v196 = (v81 + 1);
                                                                                                                    *(a2 + 1) = v196;
                                                                                                                  }

                                                                                                                  *(v4 + 684) |= 8u;
                                                                                                                  if (v63 - v196 >= 2 && *v196 == 144 && v196[1] == 6)
                                                                                                                  {
                                                                                                                    v138 = (v196 + 2);
                                                                                                                    *(a2 + 1) = v138;
LABEL_372:
                                                                                                                    if (v138 >= v63 || (v197 = *v138, (v197 & 0x80000000) != 0))
                                                                                                                    {
                                                                                                                      this = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v515);
                                                                                                                      if (!this)
                                                                                                                      {
                                                                                                                        return this;
                                                                                                                      }

                                                                                                                      v198 = *(a2 + 1);
                                                                                                                      v63 = *(a2 + 2);
                                                                                                                    }

                                                                                                                    else
                                                                                                                    {
                                                                                                                      *v515 = v197;
                                                                                                                      v198 = (v138 + 1);
                                                                                                                      *(a2 + 1) = v198;
                                                                                                                    }

                                                                                                                    *(v4 + 684) |= 0x10u;
                                                                                                                    if (v63 - v198 >= 2 && *v198 == 152 && v198[1] == 6)
                                                                                                                    {
                                                                                                                      v121 = (v198 + 2);
                                                                                                                      *(a2 + 1) = v121;
LABEL_381:
                                                                                                                      if (v121 >= v63 || (v199 = *v121, (v199 & 0x80000000) != 0))
                                                                                                                      {
                                                                                                                        this = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v514);
                                                                                                                        if (!this)
                                                                                                                        {
                                                                                                                          return this;
                                                                                                                        }

                                                                                                                        v200 = *(a2 + 1);
                                                                                                                        v63 = *(a2 + 2);
                                                                                                                      }

                                                                                                                      else
                                                                                                                      {
                                                                                                                        *v514 = v199;
                                                                                                                        v200 = (v121 + 1);
                                                                                                                        *(a2 + 1) = v200;
                                                                                                                      }

                                                                                                                      *(v4 + 684) |= 0x20u;
                                                                                                                      if (v63 - v200 >= 2 && *v200 == 160 && v200[1] == 6)
                                                                                                                      {
                                                                                                                        v137 = (v200 + 2);
                                                                                                                        *(a2 + 1) = v137;
LABEL_390:
                                                                                                                        v538[0] = 0;
                                                                                                                        if (v137 >= v63 || (v201 = *v137, (v201 & 0x80000000) != 0))
                                                                                                                        {
                                                                                                                          this = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v538);
                                                                                                                          if (!this)
                                                                                                                          {
                                                                                                                            return this;
                                                                                                                          }

                                                                                                                          v201 = v538[0];
                                                                                                                          v202 = *(a2 + 1);
                                                                                                                          v63 = *(a2 + 2);
                                                                                                                        }

                                                                                                                        else
                                                                                                                        {
                                                                                                                          v202 = (v137 + 1);
                                                                                                                          *(a2 + 1) = v202;
                                                                                                                        }

                                                                                                                        *(v4 + 399) = v201 != 0;
                                                                                                                        *(v4 + 684) |= 0x40u;
                                                                                                                        if (v63 - v202 >= 2 && *v202 == 168 && v202[1] == 6)
                                                                                                                        {
                                                                                                                          v156 = (v202 + 2);
                                                                                                                          *(a2 + 1) = v156;
LABEL_399:
                                                                                                                          if (v156 >= v63 || (v203 = *v156, (v203 & 0x80000000) != 0))
                                                                                                                          {
                                                                                                                            this = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v513);
                                                                                                                            if (!this)
                                                                                                                            {
                                                                                                                              return this;
                                                                                                                            }

                                                                                                                            v204 = *(a2 + 1);
                                                                                                                            v63 = *(a2 + 2);
                                                                                                                          }

                                                                                                                          else
                                                                                                                          {
                                                                                                                            *v513 = v203;
                                                                                                                            v204 = (v156 + 1);
                                                                                                                            *(a2 + 1) = v204;
                                                                                                                          }

                                                                                                                          *(v4 + 684) |= 0x80u;
                                                                                                                          if (v63 - v204 >= 2 && *v204 == 176 && v204[1] == 6)
                                                                                                                          {
                                                                                                                            v155 = (v204 + 2);
                                                                                                                            *(a2 + 1) = v155;
LABEL_408:
                                                                                                                            if (v155 >= v63 || (v205 = *v155, (v205 & 0x80000000) != 0))
                                                                                                                            {
                                                                                                                              this = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v512);
                                                                                                                              if (!this)
                                                                                                                              {
                                                                                                                                return this;
                                                                                                                              }

                                                                                                                              v206 = *(a2 + 1);
                                                                                                                              v63 = *(a2 + 2);
                                                                                                                            }

                                                                                                                            else
                                                                                                                            {
                                                                                                                              *v512 = v205;
                                                                                                                              v206 = (v155 + 1);
                                                                                                                              *(a2 + 1) = v206;
                                                                                                                            }

                                                                                                                            *(v4 + 684) |= 0x100u;
                                                                                                                            if (v63 - v206 >= 2 && *v206 == 184 && v206[1] == 6)
                                                                                                                            {
                                                                                                                              v73 = (v206 + 2);
                                                                                                                              *(a2 + 1) = v73;
LABEL_417:
                                                                                                                              v538[0] = 0;
                                                                                                                              if (v73 >= v63 || (v207 = *v73, (v207 & 0x80000000) != 0))
                                                                                                                              {
                                                                                                                                this = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v538);
                                                                                                                                if (!this)
                                                                                                                                {
                                                                                                                                  return this;
                                                                                                                                }

                                                                                                                                v207 = v538[0];
                                                                                                                                v208 = *(a2 + 1);
                                                                                                                                v63 = *(a2 + 2);
                                                                                                                              }

                                                                                                                              else
                                                                                                                              {
                                                                                                                                v208 = (v73 + 1);
                                                                                                                                *(a2 + 1) = v208;
                                                                                                                              }

                                                                                                                              *(v4 + 620) = v207 != 0;
                                                                                                                              *(v4 + 684) |= 0x200u;
                                                                                                                              if (v63 - v208 >= 2 && *v208 == 194)
                                                                                                                              {
                                                                                                                                break;
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
    }
  }

  while (1)
  {
    if (v208[1] != 6)
    {
      goto LABEL_2;
    }

    *(a2 + 1) = v208 + 2;
LABEL_1459:
    v434 = *(v4 + 520);
    v435 = *(v4 + 524);
    if (v434 >= v435)
    {
      if (v435 == *(v4 + 528))
      {
        wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((v4 + 512));
        v435 = *(v4 + 524);
      }

      *(v4 + 524) = v435 + 1;
      operator new();
    }

    v489 = v11;
    v436 = v10;
    v437 = v9;
    v438 = v8;
    v439 = v7;
    v440 = v6;
    v441 = v5;
    v442 = *(v4 + 512);
    *(v4 + 520) = v434 + 1;
    v443 = *(v442 + 8 * v434);
    v538[0] = 0;
    v444 = *(a2 + 1);
    if (v444 >= *(a2 + 2) || *v444 < 0)
    {
      if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v538))
      {
        return 0;
      }
    }

    else
    {
      v538[0] = *v444;
      *(a2 + 1) = v444 + 1;
    }

    v445 = *(a2 + 14);
    v446 = *(a2 + 15);
    *(a2 + 14) = v445 + 1;
    if (v445 >= v446)
    {
      return 0;
    }

    wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
    if (!awd::metrics::ATM_CallEndEvent_myreason::MergePartialFromCodedStream(v443, a2, v447) || *(a2 + 36) != 1)
    {
      return 0;
    }

    this = wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
    v448 = *(a2 + 14);
    v449 = __OFSUB__(v448, 1);
    v450 = v448 - 1;
    if (v450 < 0 == v449)
    {
      *(a2 + 14) = v450;
    }

    v208 = *(a2 + 1);
    v110 = *(a2 + 2);
    v5 = v441;
    v6 = v440;
    v7 = v439;
    v8 = v438;
    v9 = v437;
    v10 = v436;
    v11 = v489;
    if (v110 - v208 <= 1)
    {
      goto LABEL_2;
    }

    v451 = *v208;
    if (v451 == 200)
    {
      while (v208[1] == 6)
      {
        v182 = (v208 + 2);
        *(a2 + 1) = v182;
LABEL_1479:
        v538[0] = 0;
        v488 = v11;
        if (v182 >= v110 || (v452 = *v182, (v452 & 0x80000000) != 0))
        {
          this = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v538);
          if (!this)
          {
            return this;
          }

          v106 = v10;
          v107 = v8;
          v108 = v6;
          v109 = v5;
          v452 = v538[0];
        }

        else
        {
          v106 = v10;
          v107 = v8;
          v108 = v6;
          v109 = v5;
          *(a2 + 1) = v182 + 1;
        }

        v453 = v452 != 0;
        v454 = *(v4 + 544);
        v455 = *(v4 + 548);
        if (v454 == v455)
        {
          this = wireless_diagnostics::google::protobuf::RepeatedField<BOOL>::Reserve((v4 + 536), v454 + 1);
          v454 = *(v4 + 544);
          v455 = *(v4 + 548);
        }

        v456 = *(v4 + 536);
        v457 = v454 + 1;
        *(v4 + 544) = v454 + 1;
        *(v456 + v454) = v453;
        if (v455 - (v454 + 1) >= 1)
        {
          v458 = v455 - v454;
          do
          {
            v459 = *(a2 + 1);
            v460 = *(a2 + 2);
            if (v460 - v459 < 2 || *v459 != 200 || v459[1] != 6)
            {
              break;
            }

            *(a2 + 1) = v459 + 2;
            v538[0] = 0;
            if ((v459 + 2) >= v460 || (v461 = v459[2], (v461 & 0x80000000) != 0))
            {
              this = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v538);
              if (!this)
              {
                return this;
              }

              v461 = v538[0];
              v457 = *(v4 + 544);
            }

            else
            {
              *(a2 + 1) = v459 + 3;
            }

            v462 = v461 != 0;
            if (v457 >= *(v4 + 548))
            {
              wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
              wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
              wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
              wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v538);
              v457 = *(v4 + 544);
            }

            v463 = *(v4 + 536);
            *(v4 + 544) = v457 + 1;
            *(v463 + v457) = v462;
            --v458;
            ++v457;
          }

          while (v458 > 1);
        }

LABEL_1499:
        v208 = *(a2 + 1);
        v110 = *(a2 + 2);
        v5 = v109;
        v6 = v108;
        v8 = v107;
        v10 = v106;
        v11 = v488;
        if (v110 - v208 <= 1)
        {
          break;
        }

        v464 = *v208;
        if (v464 == 208)
        {
          if (v208[1] == 6)
          {
            v111 = (v208 + 2);
            *(a2 + 1) = v111;
LABEL_1505:
            if (v111 >= v110 || (v465 = *v111, (v465 & 0x80000000) != 0))
            {
              this = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v493);
              if (!this)
              {
                return this;
              }

              v466 = *(a2 + 1);
              v110 = *(a2 + 2);
            }

            else
            {
              *v493 = v465;
              v466 = (v111 + 1);
              *(a2 + 1) = v466;
            }

            *(v4 + 684) |= 0x1000u;
            if (v110 - v466 >= 2 && *v466 == 216 && v466[1] == 6)
            {
              v154 = (v466 + 2);
              *(a2 + 1) = v154;
LABEL_1514:
              if (v154 >= v110 || (v467 = *v154, (v467 & 0x80000000) != 0))
              {
                this = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v495);
                if (!this)
                {
                  return this;
                }

                v468 = *(a2 + 1);
                v110 = *(a2 + 2);
              }

              else
              {
                *v495 = v467;
                v468 = (v154 + 1);
                *(a2 + 1) = v468;
              }

              *(v4 + 684) |= 0x2000u;
              if (v110 - v468 >= 2 && *v468 == 224 && v468[1] == 6)
              {
                v143 = (v468 + 2);
                *(a2 + 1) = v143;
LABEL_1523:
                if (v143 >= v110 || (v469 = *v143, (v469 & 0x80000000) != 0))
                {
                  this = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v498);
                  if (!this)
                  {
                    return this;
                  }

                  v470 = *(a2 + 1);
                  v110 = *(a2 + 2);
                }

                else
                {
                  *v498 = v469;
                  v470 = (v143 + 1);
                  *(a2 + 1) = v470;
                }

                *(v4 + 684) |= 0x4000u;
                if (v110 - v470 >= 2 && *v470 == 234)
                {
                  while (1)
                  {
                    if (v470[1] != 6)
                    {
                      goto LABEL_2;
                    }

                    *(a2 + 1) = v470 + 2;
LABEL_1532:
                    v471 = *(v4 + 568);
                    v472 = *(v4 + 572);
                    if (v471 >= v472)
                    {
                      if (v472 == *(v4 + 576))
                      {
                        wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((v4 + 560));
                        v472 = *(v4 + 572);
                      }

                      *(v4 + 572) = v472 + 1;
                      operator new();
                    }

                    v490 = v11;
                    v473 = v10;
                    v474 = v9;
                    v475 = v8;
                    v476 = v7;
                    v477 = v6;
                    v478 = v5;
                    v479 = *(v4 + 560);
                    *(v4 + 568) = v471 + 1;
                    v480 = *(v479 + 8 * v471);
                    v538[0] = 0;
                    v481 = *(a2 + 1);
                    if (v481 >= *(a2 + 2) || *v481 < 0)
                    {
                      if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v538))
                      {
                        return 0;
                      }
                    }

                    else
                    {
                      v538[0] = *v481;
                      *(a2 + 1) = v481 + 1;
                    }

                    v482 = *(a2 + 14);
                    v483 = *(a2 + 15);
                    *(a2 + 14) = v482 + 1;
                    if (v482 >= v483)
                    {
                      return 0;
                    }

                    wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
                    if (!awd::metrics::ATM_CallEndEvent_handover::MergePartialFromCodedStream(v480, a2, v484) || *(a2 + 36) != 1)
                    {
                      return 0;
                    }

                    this = wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
                    v485 = *(a2 + 14);
                    v449 = __OFSUB__(v485, 1);
                    v486 = v485 - 1;
                    if (v486 < 0 == v449)
                    {
                      *(a2 + 14) = v486;
                    }

                    v470 = *(a2 + 1);
                    v75 = *(a2 + 2);
                    v5 = v478;
                    v6 = v477;
                    v7 = v476;
                    v8 = v475;
                    v9 = v474;
                    v10 = v473;
                    v11 = v490;
                    if (v75 - v470 <= 1)
                    {
                      goto LABEL_2;
                    }

                    v487 = *v470;
                    if (v487 == 240)
                    {
                      break;
                    }

                    if (v487 != 234)
                    {
                      goto LABEL_2;
                    }
                  }

                  if (v470[1] == 6)
                  {
                    v125 = (v470 + 2);
                    *(a2 + 1) = v125;
LABEL_186:
                    if (v125 >= v75 || (v126 = *v125, (v126 & 0x80000000) != 0))
                    {
                      this = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v491);
                      if (!this)
                      {
                        return this;
                      }

                      v127 = *(a2 + 1);
                      v75 = *(a2 + 2);
                    }

                    else
                    {
                      *v491 = v126;
                      v127 = (v125 + 1);
                      *(a2 + 1) = v127;
                    }

                    *(v4 + 684) |= 0x10000u;
                    if (v75 - v127 >= 2 && *v127 == 248 && v127[1] == 6)
                    {
                      v149 = (v127 + 2);
                      *(a2 + 1) = v149;
LABEL_431:
                      if (v149 >= v75 || (v209 = *v149, (v209 & 0x80000000) != 0))
                      {
                        this = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v494);
                        if (!this)
                        {
                          return this;
                        }

                        v210 = *(a2 + 1);
                        v75 = *(a2 + 2);
                      }

                      else
                      {
                        *v494 = v209;
                        v210 = (v149 + 1);
                        *(a2 + 1) = v210;
                      }

                      *(v4 + 684) |= 0x20000u;
                      if (v75 - v210 >= 2 && *v210 == 128 && v210[1] == 7)
                      {
                        v134 = (v210 + 2);
                        *(a2 + 1) = v134;
LABEL_440:
                        if (v134 >= v75 || (v211 = *v134, (v211 & 0x80000000) != 0))
                        {
                          this = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v497);
                          if (!this)
                          {
                            return this;
                          }

                          v212 = *(a2 + 1);
                          v75 = *(a2 + 2);
                        }

                        else
                        {
                          *v497 = v211;
                          v212 = (v134 + 1);
                          *(a2 + 1) = v212;
                        }

                        *(v4 + 684) |= 0x40000u;
                        if (v75 - v212 >= 2 && *v212 == 136 && v212[1] == 7)
                        {
                          v122 = (v212 + 2);
                          *(a2 + 1) = v122;
LABEL_449:
                          if (v122 >= v75 || (v213 = *v122, (v213 & 0x80000000) != 0))
                          {
                            this = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v500);
                            if (!this)
                            {
                              return this;
                            }

                            v214 = *(a2 + 1);
                            v75 = *(a2 + 2);
                          }

                          else
                          {
                            *v500 = v213;
                            v214 = (v122 + 1);
                            *(a2 + 1) = v214;
                          }

                          *(v4 + 684) |= 0x80000u;
                          if (v75 - v214 >= 2 && *v214 == 144 && v214[1] == 7)
                          {
                            v76 = (v214 + 2);
                            *(a2 + 1) = v76;
LABEL_458:
                            if (v76 >= v75 || (v215 = *v76, (v215 & 0x80000000) != 0))
                            {
                              this = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v502);
                              if (!this)
                              {
                                return this;
                              }

                              v216 = *(a2 + 1);
                              v75 = *(a2 + 2);
                            }

                            else
                            {
                              *v502 = v215;
                              v216 = (v76 + 1);
                              *(a2 + 1) = v216;
                            }

                            *(v4 + 684) |= 0x100000u;
                            if (v75 - v216 >= 2 && *v216 == 152 && v216[1] == 7)
                            {
                              v113 = (v216 + 2);
                              *(a2 + 1) = v113;
LABEL_467:
                              if (v113 >= v75 || (v217 = *v113, (v217 & 0x80000000) != 0))
                              {
                                this = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v505);
                                if (!this)
                                {
                                  return this;
                                }

                                v218 = *(a2 + 1);
                                v75 = *(a2 + 2);
                              }

                              else
                              {
                                *v505 = v217;
                                v218 = (v113 + 1);
                                *(a2 + 1) = v218;
                              }

                              *(v4 + 684) |= 0x200000u;
                              if (v75 - v218 >= 2 && *v218 == 160 && v218[1] == 7)
                              {
                                v80 = (v218 + 2);
                                *(a2 + 1) = v80;
LABEL_476:
                                if (v80 >= v75 || (v219 = *v80, (v219 & 0x80000000) != 0))
                                {
                                  this = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v506);
                                  if (!this)
                                  {
                                    return this;
                                  }

                                  v220 = *(a2 + 1);
                                  v75 = *(a2 + 2);
                                }

                                else
                                {
                                  *v506 = v219;
                                  v220 = (v80 + 1);
                                  *(a2 + 1) = v220;
                                }

                                *(v4 + 684) |= 0x400000u;
                                if (v75 - v220 >= 2 && *v220 == 168 && v220[1] == 7)
                                {
                                  v132 = (v220 + 2);
                                  *(a2 + 1) = v132;
LABEL_485:
                                  if (v132 >= v75 || (v221 = *v132, (v221 & 0x80000000) != 0))
                                  {
                                    this = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v507);
                                    if (!this)
                                    {
                                      return this;
                                    }

                                    v222 = *(a2 + 1);
                                    v75 = *(a2 + 2);
                                  }

                                  else
                                  {
                                    *v507 = v221;
                                    v222 = (v132 + 1);
                                    *(a2 + 1) = v222;
                                  }

                                  *(v4 + 684) |= 0x800000u;
                                  if (v75 - v222 >= 2 && *v222 == 176 && v222[1] == 7)
                                  {
                                    v103 = (v222 + 2);
                                    *(a2 + 1) = v103;
LABEL_494:
                                    if (v103 >= v75 || (v223 = *v103, (v223 & 0x80000000) != 0))
                                    {
                                      this = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v511);
                                      if (!this)
                                      {
                                        return this;
                                      }

                                      v224 = *(a2 + 1);
                                      v75 = *(a2 + 2);
                                    }

                                    else
                                    {
                                      *v511 = v223;
                                      v224 = (v103 + 1);
                                      *(a2 + 1) = v224;
                                    }

                                    *(v4 + 684) |= 0x1000000u;
                                    if (v75 - v224 >= 2 && *v224 == 184 && v224[1] == 7)
                                    {
                                      v90 = (v224 + 2);
                                      *(a2 + 1) = v90;
LABEL_503:
                                      if (v90 >= v75 || (v225 = *v90, (v225 & 0x80000000) != 0))
                                      {
                                        this = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v510);
                                        if (!this)
                                        {
                                          return this;
                                        }

                                        v226 = *(a2 + 1);
                                        v75 = *(a2 + 2);
                                      }

                                      else
                                      {
                                        *v510 = v225;
                                        v226 = (v90 + 1);
                                        *(a2 + 1) = v226;
                                      }

                                      *(v4 + 684) |= 0x2000000u;
                                      if (v75 - v226 >= 2 && *v226 == 192 && v226[1] == 7)
                                      {
                                        v135 = (v226 + 2);
                                        *(a2 + 1) = v135;
LABEL_512:
                                        if (v135 >= v75 || (v227 = *v135, (v227 & 0x80000000) != 0))
                                        {
                                          this = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v509);
                                          if (!this)
                                          {
                                            return this;
                                          }

                                          v228 = *(a2 + 1);
                                          v75 = *(a2 + 2);
                                        }

                                        else
                                        {
                                          *v509 = v227;
                                          v228 = (v135 + 1);
                                          *(a2 + 1) = v228;
                                        }

                                        *(v4 + 684) |= 0x4000000u;
                                        if (v75 - v228 >= 2 && *v228 == 200 && v228[1] == 7)
                                        {
                                          v104 = (v228 + 2);
                                          *(a2 + 1) = v104;
LABEL_521:
                                          v538[0] = 0;
                                          if (v104 >= v75 || (v229 = *v104, (v229 & 0x80000000) != 0))
                                          {
                                            this = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v538);
                                            if (!this)
                                            {
                                              return this;
                                            }

                                            v229 = v538[0];
                                            v230 = *(a2 + 1);
                                            v75 = *(a2 + 2);
                                          }

                                          else
                                          {
                                            v230 = (v104 + 1);
                                            *(a2 + 1) = v230;
                                          }

                                          *(v4 + 621) = v229 != 0;
                                          *(v4 + 684) |= 0x8000000u;
                                          if (v75 - v230 >= 2 && *v230 == 208 && v230[1] == 7)
                                          {
                                            v136 = (v230 + 2);
                                            *(a2 + 1) = v136;
LABEL_530:
                                            v538[0] = 0;
                                            if (v136 >= v75 || (v231 = *v136, (v231 & 0x80000000) != 0))
                                            {
                                              this = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v538);
                                              if (!this)
                                              {
                                                return this;
                                              }

                                              v231 = v538[0];
                                              v232 = *(a2 + 1);
                                              v75 = *(a2 + 2);
                                            }

                                            else
                                            {
                                              v232 = (v136 + 1);
                                              *(a2 + 1) = v232;
                                            }

                                            *(v4 + 622) = v231 != 0;
                                            *(v4 + 684) |= 0x10000000u;
                                            if (v75 - v232 >= 2 && *v232 == 216 && v232[1] == 7)
                                            {
                                              v116 = (v232 + 2);
                                              *(a2 + 1) = v116;
LABEL_539:
                                              v538[0] = 0;
                                              if (v116 >= v75 || (v233 = *v116, (v233 & 0x80000000) != 0))
                                              {
                                                this = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v538);
                                                if (!this)
                                                {
                                                  return this;
                                                }

                                                v233 = v538[0];
                                                v234 = *(a2 + 1);
                                                v75 = *(a2 + 2);
                                              }

                                              else
                                              {
                                                v234 = (v116 + 1);
                                                *(a2 + 1) = v234;
                                              }

                                              *(v4 + 623) = v233 != 0;
                                              *(v4 + 684) |= 0x20000000u;
                                              if (v75 - v234 >= 2 && *v234 == 224 && v234[1] == 7)
                                              {
                                                v133 = (v234 + 2);
                                                *(a2 + 1) = v133;
LABEL_548:
                                                v538[0] = 0;
                                                if (v133 >= v75 || (v235 = *v133, (v235 & 0x80000000) != 0))
                                                {
                                                  this = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v538);
                                                  if (!this)
                                                  {
                                                    return this;
                                                  }

                                                  v235 = v538[0];
                                                  v236 = *(a2 + 1);
                                                  v75 = *(a2 + 2);
                                                }

                                                else
                                                {
                                                  v236 = (v133 + 1);
                                                  *(a2 + 1) = v236;
                                                }

                                                *(v4 + 644) = v235 != 0;
                                                *(v4 + 684) |= 0x40000000u;
                                                if (v75 - v236 >= 2 && *v236 == 232 && v236[1] == 7)
                                                {
                                                  v129 = (v236 + 2);
                                                  *(a2 + 1) = v129;
LABEL_557:
                                                  v538[0] = 0;
                                                  if (v129 >= v75 || (v237 = *v129, (v237 & 0x80000000) != 0))
                                                  {
                                                    this = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v538);
                                                    if (!this)
                                                    {
                                                      return this;
                                                    }

                                                    v237 = v538[0];
                                                  }

                                                  else
                                                  {
                                                    *(a2 + 1) = v129 + 1;
                                                  }

                                                  if (v237 - 1 <= 8)
                                                  {
                                                    *(v4 + 684) |= 0x80000000;
                                                    *(v4 + 636) = v237;
                                                  }

                                                  v238 = *(a2 + 1);
                                                  v94 = *(a2 + 2);
                                                  if (v94 - v238 >= 2 && *v238 == 240 && v238[1] == 7)
                                                  {
                                                    v95 = (v238 + 2);
                                                    *(a2 + 1) = v95;
LABEL_568:
                                                    v538[0] = 0;
                                                    if (v95 >= v94 || (v239 = *v95, (v239 & 0x80000000) != 0))
                                                    {
                                                      this = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v538);
                                                      if (!this)
                                                      {
                                                        return this;
                                                      }

                                                      v239 = v538[0];
                                                      v240 = *(a2 + 1);
                                                      v94 = *(a2 + 2);
                                                    }

                                                    else
                                                    {
                                                      v240 = (v95 + 1);
                                                      *(a2 + 1) = v240;
                                                    }

                                                    *(v4 + 645) = v239 != 0;
                                                    *(v4 + 688) |= 1u;
                                                    if (v94 - v240 >= 2 && *v240 == 250 && v240[1] == 7)
                                                    {
                                                      *(a2 + 1) = v240 + 2;
LABEL_577:
                                                      *(v4 + 672) |= 0x20000u;
                                                      if (*(v4 + 80) == MEMORY[0x1E69E5958])
                                                      {
                                                        operator new();
                                                      }

                                                      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
                                                      if (!this)
                                                      {
                                                        return this;
                                                      }

                                                      v241 = *(a2 + 1);
                                                      v49 = *(a2 + 2);
                                                      if (v49 - v241 >= 2 && *v241 == 128 && v241[1] == 8)
                                                      {
                                                        v112 = (v241 + 2);
                                                        *(a2 + 1) = v112;
LABEL_584:
                                                        if (v112 >= v49 || (v242 = *v112, (v242 & 0x80000000) != 0))
                                                        {
                                                          this = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v496);
                                                          if (!this)
                                                          {
                                                            return this;
                                                          }

                                                          v243 = *(a2 + 1);
                                                          v49 = *(a2 + 2);
                                                        }

                                                        else
                                                        {
                                                          *v496 = v242;
                                                          v243 = (v112 + 1);
                                                          *(a2 + 1) = v243;
                                                        }

                                                        *(v4 + 688) |= 2u;
                                                        if (v49 - v243 >= 2 && *v243 == 136 && v243[1] == 8)
                                                        {
                                                          v117 = (v243 + 2);
                                                          *(a2 + 1) = v117;
LABEL_593:
                                                          v538[0] = 0;
                                                          if (v117 >= v49 || (v244 = *v117, (v244 & 0x80000000) != 0))
                                                          {
                                                            this = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v538);
                                                            if (!this)
                                                            {
                                                              return this;
                                                            }

                                                            v244 = v538[0];
                                                            v245 = *(a2 + 1);
                                                            v49 = *(a2 + 2);
                                                          }

                                                          else
                                                          {
                                                            v245 = (v117 + 1);
                                                            *(a2 + 1) = v245;
                                                          }

                                                          *(v4 + 238) = v244 != 0;
                                                          *(v4 + 676) |= 0x800000u;
                                                          if (v49 - v245 >= 2 && *v245 == 144 && v245[1] == 8)
                                                          {
                                                            v118 = (v245 + 2);
                                                            *(a2 + 1) = v118;
LABEL_602:
                                                            v538[0] = 0;
                                                            if (v118 >= v49 || (v246 = *v118, (v246 & 0x80000000) != 0))
                                                            {
                                                              this = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v538);
                                                              if (!this)
                                                              {
                                                                return this;
                                                              }

                                                              v246 = v538[0];
                                                              v247 = *(a2 + 1);
                                                              v49 = *(a2 + 2);
                                                            }

                                                            else
                                                            {
                                                              v247 = (v118 + 1);
                                                              *(a2 + 1) = v247;
                                                            }

                                                            *(v4 + 239) = v246 != 0;
                                                            *(v4 + 676) |= 0x1000000u;
                                                            if (v49 - v247 >= 2 && *v247 == 240 && v247[1] == 34)
                                                            {
                                                              v50 = (v247 + 2);
                                                              *(a2 + 1) = v50;
                                                              goto LABEL_611;
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

          goto LABEL_2;
        }

        if (v464 != 200)
        {
          goto LABEL_2;
        }
      }

      goto LABEL_2;
    }

    if (v451 != 194)
    {
      goto LABEL_2;
    }
  }
}

uint64_t awd::metrics::ATM_CallEndEvent::set_status_code(uint64_t a1, awd::metrics *this)
{
  v2 = this;
  result = awd::metrics::RESPONSE_Code_IsValid(this);
  if ((result & 1) == 0)
  {
    __assert_rtn("set_status_code", "CATM.pb.h", 14141, "::awd::metrics::RESPONSE_Code_IsValid(value)");
  }

  *(a1 + 676) |= 0x20u;
  *(a1 + 192) = v2;
  return result;
}

uint64_t awd::metrics::ATM_CallEndEvent::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 672);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(1, *(this + 8), a2, a4);
    v6 = *(v5 + 672);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_161;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
  v6 = *(v5 + 672);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_162;
  }

LABEL_161:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(3, *(v5 + 28), a2, a4);
  v6 = *(v5 + 672);
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_163;
  }

LABEL_162:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(4, *(v5 + 24), a2, a4);
  v6 = *(v5 + 672);
  if ((v6 & 0x10) == 0)
  {
LABEL_6:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_164;
  }

LABEL_163:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(5, *(v5 + 29), a2, a4);
  v6 = *(v5 + 672);
  if ((v6 & 0x20) == 0)
  {
LABEL_7:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_165;
  }

LABEL_164:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(6, *(v5 + 30), a2, a4);
  v6 = *(v5 + 672);
  if ((v6 & 0x40) == 0)
  {
LABEL_8:
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_166;
  }

LABEL_165:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(7, *(v5 + 31), a2, a4);
  v6 = *(v5 + 672);
  if ((v6 & 0x80) == 0)
  {
LABEL_9:
    if ((v6 & 0x100) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_167;
  }

LABEL_166:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(8, *(v5 + 100), a2, a4);
  v6 = *(v5 + 672);
  if ((v6 & 0x100) == 0)
  {
LABEL_10:
    if ((v6 & 0x200) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_168;
  }

LABEL_167:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(9, *(v5 + 40), a2, a4);
  v6 = *(v5 + 672);
  if ((v6 & 0x200) == 0)
  {
LABEL_11:
    if ((v6 & 0x400) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_169;
  }

LABEL_168:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
  v6 = *(v5 + 672);
  if ((v6 & 0x400) == 0)
  {
LABEL_12:
    if ((v6 & 0x800) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_170;
  }

LABEL_169:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xB, *(v5 + 44), a2, a4);
  v6 = *(v5 + 672);
  if ((v6 & 0x800) == 0)
  {
LABEL_13:
    if ((v6 & 0x1000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_171;
  }

LABEL_170:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
  v6 = *(v5 + 672);
  if ((v6 & 0x1000) == 0)
  {
LABEL_14:
    if ((v6 & 0x2000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_172;
  }

LABEL_171:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(0xD, *(v5 + 101), a2, a4);
  v6 = *(v5 + 672);
  if ((v6 & 0x2000) == 0)
  {
LABEL_15:
    if ((v6 & 0x4000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_173;
  }

LABEL_172:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
  v6 = *(v5 + 672);
  if ((v6 & 0x4000) == 0)
  {
LABEL_16:
    if ((v6 & 0x8000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_174;
  }

LABEL_173:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
  v6 = *(v5 + 672);
  if ((v6 & 0x8000) == 0)
  {
LABEL_17:
    if ((v6 & 0x10000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_175;
  }

LABEL_174:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x10, *(v5 + 96), a2, a4);
  v6 = *(v5 + 672);
  if ((v6 & 0x10000) == 0)
  {
LABEL_18:
    if ((v6 & 0x40000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_176;
  }

LABEL_175:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
  v6 = *(v5 + 672);
  if ((v6 & 0x40000) == 0)
  {
LABEL_19:
    if ((v6 & 0x80000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_177;
  }

LABEL_176:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
  v6 = *(v5 + 672);
  if ((v6 & 0x80000) == 0)
  {
LABEL_20:
    if ((v6 & 0x100000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_178;
  }

LABEL_177:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
  v6 = *(v5 + 672);
  if ((v6 & 0x100000) == 0)
  {
LABEL_21:
    if ((v6 & 0x1000000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_179;
  }

LABEL_178:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
  v6 = *(v5 + 672);
  if ((v6 & 0x1000000) == 0)
  {
LABEL_22:
    if ((v6 & 0x2000000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_180;
  }

LABEL_179:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(0x15, *(v5 + 102), a2, a4);
  v6 = *(v5 + 672);
  if ((v6 & 0x2000000) == 0)
  {
LABEL_23:
    if ((v6 & 0x4000000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_181;
  }

LABEL_180:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x16, *(v5 + 132), a2, a4);
  v6 = *(v5 + 672);
  if ((v6 & 0x4000000) == 0)
  {
LABEL_24:
    if ((v6 & 0x8000000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_182;
  }

LABEL_181:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x17, *(v5 + 144), a2, a4);
  v6 = *(v5 + 672);
  if ((v6 & 0x8000000) == 0)
  {
LABEL_25:
    if ((v6 & 0x10000000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_183;
  }

LABEL_182:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
  v6 = *(v5 + 672);
  if ((v6 & 0x10000000) == 0)
  {
LABEL_26:
    if ((v6 & 0x20000000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_184;
  }

LABEL_183:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
  v6 = *(v5 + 672);
  if ((v6 & 0x20000000) == 0)
  {
LABEL_27:
    if ((v6 & 0x40000000) == 0)
    {
      goto LABEL_28;
    }

LABEL_185:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x1B, *(v5 + 148), a2, a4);
    if ((*(v5 + 672) & 0x80000000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_186;
  }

LABEL_184:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
  v6 = *(v5 + 672);
  if ((v6 & 0x40000000) != 0)
  {
    goto LABEL_185;
  }

LABEL_28:
  if ((v6 & 0x80000000) == 0)
  {
    goto LABEL_29;
  }

LABEL_186:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x1C, *(v5 + 168), a2, a4);
LABEL_29:
  v7 = *(v5 + 676);
  if (v7)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(0x1D, *(v5 + 103), a2, a4);
    v7 = *(v5 + 676);
    if ((v7 & 2) == 0)
    {
LABEL_31:
      if ((v7 & 4) == 0)
      {
        goto LABEL_32;
      }

      goto LABEL_189;
    }
  }

  else if ((v7 & 2) == 0)
  {
    goto LABEL_31;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x1E, *(v5 + 172), a2, a4);
  v7 = *(v5 + 676);
  if ((v7 & 4) == 0)
  {
LABEL_32:
    if ((v7 & 8) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_190;
  }

LABEL_189:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x1F, *(v5 + 176), a2, a4);
  v7 = *(v5 + 676);
  if ((v7 & 8) == 0)
  {
LABEL_33:
    if ((v7 & 0x10) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_191;
  }

LABEL_190:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(0x20, *(v5 + 184), a2, a4);
  v7 = *(v5 + 676);
  if ((v7 & 0x10) == 0)
  {
LABEL_34:
    if ((v7 & 0x20) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_192;
  }

LABEL_191:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(0x21, *(v5 + 180), a2, a4);
  v7 = *(v5 + 676);
  if ((v7 & 0x20) == 0)
  {
LABEL_35:
    if ((v7 & 0x40) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_193;
  }

LABEL_192:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(0x22, *(v5 + 192), a2, a4);
  v7 = *(v5 + 676);
  if ((v7 & 0x40) == 0)
  {
LABEL_36:
    if ((v7 & 0x1000) == 0)
    {
      goto LABEL_37;
    }

    goto LABEL_194;
  }

LABEL_193:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(0x23, *(v5 + 236), a2, a4);
  v7 = *(v5 + 676);
  if ((v7 & 0x1000) == 0)
  {
LABEL_37:
    if ((v7 & 0x2000) == 0)
    {
      goto LABEL_38;
    }

    goto LABEL_195;
  }

LABEL_194:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(0x24, *(v5 + 216), a2, a4);
  v7 = *(v5 + 676);
  if ((v7 & 0x2000) == 0)
  {
LABEL_38:
    if ((v7 & 0x10000) == 0)
    {
      goto LABEL_39;
    }

    goto LABEL_196;
  }

LABEL_195:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x25, *(v5 + 224), a2, a4);
  v7 = *(v5 + 676);
  if ((v7 & 0x10000) == 0)
  {
LABEL_39:
    if ((v7 & 0x20000) == 0)
    {
      goto LABEL_40;
    }

    goto LABEL_197;
  }

LABEL_196:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x26, *(v5 + 240), a2, a4);
  v7 = *(v5 + 676);
  if ((v7 & 0x20000) == 0)
  {
LABEL_40:
    if ((v7 & 0x100000) == 0)
    {
      goto LABEL_41;
    }

    goto LABEL_198;
  }

LABEL_197:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x27, *(v5 + 244), a2, a4);
  v7 = *(v5 + 676);
  if ((v7 & 0x100000) == 0)
  {
LABEL_41:
    if ((v7 & 0x200000) == 0)
    {
      goto LABEL_43;
    }

    goto LABEL_42;
  }

LABEL_198:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x28, *(v5 + 288), a2, a4);
  if ((*(v5 + 676) & 0x200000) != 0)
  {
LABEL_42:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
  }

LABEL_43:
  if (*(v5 + 272) >= 1)
  {
    v8 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
      ++v8;
    }

    while (v8 < *(v5 + 272));
  }

  v9 = *(v5 + 676);
  if ((v9 & 0x4000) != 0)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x2B, *(v5 + 228), a2, a4);
    v9 = *(v5 + 676);
    if ((v9 & 0x80) == 0)
    {
LABEL_48:
      if ((v9 & 0x100) == 0)
      {
        goto LABEL_49;
      }

      goto LABEL_202;
    }
  }

  else if ((v9 & 0x80) == 0)
  {
    goto LABEL_48;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
  v9 = *(v5 + 676);
  if ((v9 & 0x100) == 0)
  {
LABEL_49:
    if ((v9 & 0x200) == 0)
    {
      goto LABEL_50;
    }

    goto LABEL_203;
  }

LABEL_202:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(0x2D, *(v5 + 237), a2, a4);
  v9 = *(v5 + 676);
  if ((v9 & 0x200) == 0)
  {
LABEL_50:
    if ((v9 & 0x400) == 0)
    {
      goto LABEL_51;
    }

    goto LABEL_204;
  }

LABEL_203:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(0x2E, *(v5 + 196), a2, a4);
  v9 = *(v5 + 676);
  if ((v9 & 0x400) == 0)
  {
LABEL_51:
    if ((v9 & 0x800) == 0)
    {
      goto LABEL_52;
    }

    goto LABEL_205;
  }

LABEL_204:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x2F, *(v5 + 208), a2, a4);
  v9 = *(v5 + 676);
  if ((v9 & 0x800) == 0)
  {
LABEL_52:
    if ((v9 & 0x8000) == 0)
    {
      goto LABEL_53;
    }

    goto LABEL_206;
  }

LABEL_205:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(0x30, *(v5 + 212), a2, a4);
  v9 = *(v5 + 676);
  if ((v9 & 0x8000) == 0)
  {
LABEL_53:
    if ((v9 & 0x40000) == 0)
    {
      goto LABEL_54;
    }

    goto LABEL_207;
  }

LABEL_206:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteSInt32(0x31, *(v5 + 232), a2, a4);
  v9 = *(v5 + 676);
  if ((v9 & 0x40000) == 0)
  {
LABEL_54:
    if ((v9 & 0x80000) == 0)
    {
      goto LABEL_56;
    }

    goto LABEL_55;
  }

LABEL_207:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x32, *(v5 + 248), a2, a4);
  if ((*(v5 + 676) & 0x80000) != 0)
  {
LABEL_55:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x33, *(v5 + 252), a2, a4);
  }

LABEL_56:
  v10 = *(v5 + 672);
  if ((v10 & 0x200000) != 0)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x34, *(v5 + 120), a2, a4);
    v10 = *(v5 + 672);
    if ((v10 & 0x400000) == 0)
    {
LABEL_58:
      if ((v10 & 0x800000) == 0)
      {
        goto LABEL_60;
      }

      goto LABEL_59;
    }
  }

  else if ((v10 & 0x400000) == 0)
  {
    goto LABEL_58;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x35, *(v5 + 124), a2, a4);
  if ((*(v5 + 672) & 0x800000) != 0)
  {
LABEL_59:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x36, *(v5 + 128), a2, a4);
  }

LABEL_60:
  v11 = *(v5 + 676);
  if ((v11 & 0x2000000) != 0)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(0x37, *(v5 + 396), a2, a4);
    v11 = *(v5 + 676);
    if ((v11 & 0x4000000) == 0)
    {
LABEL_62:
      if ((v11 & 0x8000000) == 0)
      {
        goto LABEL_63;
      }

      goto LABEL_214;
    }
  }

  else if ((v11 & 0x4000000) == 0)
  {
    goto LABEL_62;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x38, *(v5 + 292), a2, a4);
  v11 = *(v5 + 676);
  if ((v11 & 0x8000000) == 0)
  {
LABEL_63:
    if ((v11 & 0x10000000) == 0)
    {
      goto LABEL_64;
    }

    goto LABEL_215;
  }

LABEL_214:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x39, *(v5 + 296), a2, a4);
  v11 = *(v5 + 676);
  if ((v11 & 0x10000000) == 0)
  {
LABEL_64:
    if ((v11 & 0x20000000) == 0)
    {
      goto LABEL_65;
    }

    goto LABEL_216;
  }

LABEL_215:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x3A, *(v5 + 300), a2, a4);
  v11 = *(v5 + 676);
  if ((v11 & 0x20000000) == 0)
  {
LABEL_65:
    if ((v11 & 0x40000000) == 0)
    {
      goto LABEL_66;
    }

LABEL_217:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x3C, *(v5 + 308), a2, a4);
    if ((*(v5 + 676) & 0x80000000) == 0)
    {
      goto LABEL_67;
    }

    goto LABEL_218;
  }

LABEL_216:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x3B, *(v5 + 304), a2, a4);
  v11 = *(v5 + 676);
  if ((v11 & 0x40000000) != 0)
  {
    goto LABEL_217;
  }

LABEL_66:
  if ((v11 & 0x80000000) == 0)
  {
    goto LABEL_67;
  }

LABEL_218:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x3D, *(v5 + 312), a2, a4);
LABEL_67:
  v12 = *(v5 + 680);
  if (v12)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x3E, *(v5 + 316), a2, a4);
    v12 = *(v5 + 680);
    if ((v12 & 2) == 0)
    {
LABEL_69:
      if ((v12 & 4) == 0)
      {
        goto LABEL_70;
      }

      goto LABEL_221;
    }
  }

  else if ((v12 & 2) == 0)
  {
    goto LABEL_69;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x3F, *(v5 + 320), a2, a4);
  v12 = *(v5 + 680);
  if ((v12 & 4) == 0)
  {
LABEL_70:
    if ((v12 & 8) == 0)
    {
      goto LABEL_71;
    }

    goto LABEL_222;
  }

LABEL_221:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x40, *(v5 + 324), a2, a4);
  v12 = *(v5 + 680);
  if ((v12 & 8) == 0)
  {
LABEL_71:
    if ((v12 & 0x10) == 0)
    {
      goto LABEL_72;
    }

    goto LABEL_223;
  }

LABEL_222:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x41, *(v5 + 328), a2, a4);
  v12 = *(v5 + 680);
  if ((v12 & 0x10) == 0)
  {
LABEL_72:
    if ((v12 & 0x20) == 0)
    {
      goto LABEL_73;
    }

    goto LABEL_224;
  }

LABEL_223:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x42, *(v5 + 332), a2, a4);
  v12 = *(v5 + 680);
  if ((v12 & 0x20) == 0)
  {
LABEL_73:
    if ((v12 & 0x40) == 0)
    {
      goto LABEL_74;
    }

    goto LABEL_225;
  }

LABEL_224:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x43, *(v5 + 336), a2, a4);
  v12 = *(v5 + 680);
  if ((v12 & 0x40) == 0)
  {
LABEL_74:
    if ((v12 & 0x80) == 0)
    {
      goto LABEL_75;
    }

    goto LABEL_226;
  }

LABEL_225:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x44, *(v5 + 340), a2, a4);
  v12 = *(v5 + 680);
  if ((v12 & 0x80) == 0)
  {
LABEL_75:
    if ((v12 & 0x100) == 0)
    {
      goto LABEL_76;
    }

    goto LABEL_227;
  }

LABEL_226:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x45, *(v5 + 344), a2, a4);
  v12 = *(v5 + 680);
  if ((v12 & 0x100) == 0)
  {
LABEL_76:
    if ((v12 & 0x200) == 0)
    {
      goto LABEL_77;
    }

    goto LABEL_228;
  }

LABEL_227:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x46, *(v5 + 348), a2, a4);
  v12 = *(v5 + 680);
  if ((v12 & 0x200) == 0)
  {
LABEL_77:
    if ((v12 & 0x400) == 0)
    {
      goto LABEL_78;
    }

    goto LABEL_229;
  }

LABEL_228:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x47, *(v5 + 352), a2, a4);
  v12 = *(v5 + 680);
  if ((v12 & 0x400) == 0)
  {
LABEL_78:
    if ((v12 & 0x800) == 0)
    {
      goto LABEL_79;
    }

    goto LABEL_230;
  }

LABEL_229:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x48, *(v5 + 356), a2, a4);
  v12 = *(v5 + 680);
  if ((v12 & 0x800) == 0)
  {
LABEL_79:
    if ((v12 & 0x1000) == 0)
    {
      goto LABEL_80;
    }

    goto LABEL_231;
  }

LABEL_230:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x49, *(v5 + 360), a2, a4);
  v12 = *(v5 + 680);
  if ((v12 & 0x1000) == 0)
  {
LABEL_80:
    if ((v12 & 0x2000) == 0)
    {
      goto LABEL_81;
    }

    goto LABEL_232;
  }

LABEL_231:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x4A, *(v5 + 364), a2, a4);
  v12 = *(v5 + 680);
  if ((v12 & 0x2000) == 0)
  {
LABEL_81:
    if ((v12 & 0x4000) == 0)
    {
      goto LABEL_82;
    }

    goto LABEL_233;
  }

LABEL_232:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x4B, *(v5 + 368), a2, a4);
  v12 = *(v5 + 680);
  if ((v12 & 0x4000) == 0)
  {
LABEL_82:
    if ((v12 & 0x8000) == 0)
    {
      goto LABEL_83;
    }

    goto LABEL_234;
  }

LABEL_233:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x4C, *(v5 + 372), a2, a4);
  v12 = *(v5 + 680);
  if ((v12 & 0x8000) == 0)
  {
LABEL_83:
    if ((v12 & 0x10000) == 0)
    {
      goto LABEL_84;
    }

    goto LABEL_235;
  }

LABEL_234:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x4D, *(v5 + 376), a2, a4);
  v12 = *(v5 + 680);
  if ((v12 & 0x10000) == 0)
  {
LABEL_84:
    if ((v12 & 0x20000) == 0)
    {
      goto LABEL_85;
    }

    goto LABEL_236;
  }

LABEL_235:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x4E, *(v5 + 380), a2, a4);
  v12 = *(v5 + 680);
  if ((v12 & 0x20000) == 0)
  {
LABEL_85:
    if ((v12 & 0x40000) == 0)
    {
      goto LABEL_86;
    }

    goto LABEL_237;
  }

LABEL_236:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x4F, *(v5 + 384), a2, a4);
  v12 = *(v5 + 680);
  if ((v12 & 0x40000) == 0)
  {
LABEL_86:
    if ((v12 & 0x80000) == 0)
    {
      goto LABEL_87;
    }

    goto LABEL_238;
  }

LABEL_237:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x50, *(v5 + 388), a2, a4);
  v12 = *(v5 + 680);
  if ((v12 & 0x80000) == 0)
  {
LABEL_87:
    if ((v12 & 0x100000) == 0)
    {
      goto LABEL_88;
    }

    goto LABEL_239;
  }

LABEL_238:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x51, *(v5 + 392), a2, a4);
  v12 = *(v5 + 680);
  if ((v12 & 0x100000) == 0)
  {
LABEL_88:
    if ((v12 & 0x200000) == 0)
    {
      goto LABEL_89;
    }

    goto LABEL_240;
  }

LABEL_239:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x52, *(v5 + 400), a2, a4);
  v12 = *(v5 + 680);
  if ((v12 & 0x200000) == 0)
  {
LABEL_89:
    if ((v12 & 0x400000) == 0)
    {
      goto LABEL_90;
    }

    goto LABEL_241;
  }

LABEL_240:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(0x53, *(v5 + 397), a2, a4);
  v12 = *(v5 + 680);
  if ((v12 & 0x400000) == 0)
  {
LABEL_90:
    if ((v12 & 0x800000) == 0)
    {
      goto LABEL_91;
    }

    goto LABEL_242;
  }

LABEL_241:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x54, *(v5 + 404), a2, a4);
  v12 = *(v5 + 680);
  if ((v12 & 0x800000) == 0)
  {
LABEL_91:
    if ((v12 & 0x1000000) == 0)
    {
      goto LABEL_92;
    }

    goto LABEL_243;
  }

LABEL_242:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
  v12 = *(v5 + 680);
  if ((v12 & 0x1000000) == 0)
  {
LABEL_92:
    if ((v12 & 0x2000000) == 0)
    {
      goto LABEL_93;
    }

    goto LABEL_244;
  }

LABEL_243:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(0x56, *(v5 + 416), a2, a4);
  v12 = *(v5 + 680);
  if ((v12 & 0x2000000) == 0)
  {
LABEL_93:
    if ((v12 & 0x4000000) == 0)
    {
      goto LABEL_95;
    }

    goto LABEL_94;
  }

LABEL_244:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(0x57, *(v5 + 420), a2, a4);
  if ((*(v5 + 680) & 0x4000000) != 0)
  {
LABEL_94:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(0x58, *(v5 + 398), a2, a4);
  }

LABEL_95:
  if (*(v5 + 432) >= 1)
  {
    v13 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
      ++v13;
    }

    while (v13 < *(v5 + 432));
  }

  v14 = *(v5 + 680);
  if ((v14 & 0x10000000) != 0)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x5A, *(v5 + 456), a2, a4);
    v14 = *(v5 + 680);
    if ((v14 & 0x20000000) == 0)
    {
LABEL_100:
      if ((v14 & 0x40000000) == 0)
      {
        goto LABEL_101;
      }

LABEL_248:
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(0x5C, *(v5 + 464), a2, a4);
      if ((*(v5 + 680) & 0x80000000) == 0)
      {
        goto LABEL_102;
      }

      goto LABEL_249;
    }
  }

  else if ((v14 & 0x20000000) == 0)
  {
    goto LABEL_100;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(0x5B, *(v5 + 448), a2, a4);
  v14 = *(v5 + 680);
  if ((v14 & 0x40000000) != 0)
  {
    goto LABEL_248;
  }

LABEL_101:
  if ((v14 & 0x80000000) == 0)
  {
    goto LABEL_102;
  }

LABEL_249:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x5D, *(v5 + 460), a2, a4);
LABEL_102:
  v15 = *(v5 + 684);
  if (v15)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x5E, *(v5 + 480), a2, a4);
    v15 = *(v5 + 684);
    if ((v15 & 2) == 0)
    {
LABEL_104:
      if ((v15 & 4) == 0)
      {
        goto LABEL_105;
      }

      goto LABEL_252;
    }
  }

  else if ((v15 & 2) == 0)
  {
    goto LABEL_104;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(0x5F, *(v5 + 472), a2, a4);
  v15 = *(v5 + 684);
  if ((v15 & 4) == 0)
  {
LABEL_105:
    if ((v15 & 8) == 0)
    {
      goto LABEL_106;
    }

    goto LABEL_253;
  }

LABEL_252:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(0x60, *(v5 + 488), a2, a4);
  v15 = *(v5 + 684);
  if ((v15 & 8) == 0)
  {
LABEL_106:
    if ((v15 & 0x10) == 0)
    {
      goto LABEL_107;
    }

    goto LABEL_254;
  }

LABEL_253:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x61, *(v5 + 484), a2, a4);
  v15 = *(v5 + 684);
  if ((v15 & 0x10) == 0)
  {
LABEL_107:
    if ((v15 & 0x20) == 0)
    {
      goto LABEL_108;
    }

    goto LABEL_255;
  }

LABEL_254:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x62, *(v5 + 496), a2, a4);
  v15 = *(v5 + 684);
  if ((v15 & 0x20) == 0)
  {
LABEL_108:
    if ((v15 & 0x40) == 0)
    {
      goto LABEL_109;
    }

    goto LABEL_256;
  }

LABEL_255:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x63, *(v5 + 500), a2, a4);
  v15 = *(v5 + 684);
  if ((v15 & 0x40) == 0)
  {
LABEL_109:
    if ((v15 & 0x80) == 0)
    {
      goto LABEL_110;
    }

    goto LABEL_257;
  }

LABEL_256:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(0x64, *(v5 + 399), a2, a4);
  v15 = *(v5 + 684);
  if ((v15 & 0x80) == 0)
  {
LABEL_110:
    if ((v15 & 0x100) == 0)
    {
      goto LABEL_111;
    }

    goto LABEL_258;
  }

LABEL_257:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x65, *(v5 + 504), a2, a4);
  v15 = *(v5 + 684);
  if ((v15 & 0x100) == 0)
  {
LABEL_111:
    if ((v15 & 0x200) == 0)
    {
      goto LABEL_113;
    }

    goto LABEL_112;
  }

LABEL_258:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x66, *(v5 + 508), a2, a4);
  if ((*(v5 + 684) & 0x200) != 0)
  {
LABEL_112:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(0x67, *(v5 + 620), a2, a4);
  }

LABEL_113:
  if (*(v5 + 520) >= 1)
  {
    v16 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x68, *(*(v5 + 512) + 8 * v16++), a2, a4);
    }

    while (v16 < *(v5 + 520));
  }

  if (*(v5 + 544) >= 1)
  {
    v17 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(0x69, *(*(v5 + 536) + v17++), a2, a4);
    }

    while (v17 < *(v5 + 544));
  }

  v18 = *(v5 + 684);
  if ((v18 & 0x1000) != 0)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x6A, *(v5 + 552), a2, a4);
    v18 = *(v5 + 684);
    if ((v18 & 0x2000) == 0)
    {
LABEL_121:
      if ((v18 & 0x4000) == 0)
      {
        goto LABEL_123;
      }

      goto LABEL_122;
    }
  }

  else if ((v18 & 0x2000) == 0)
  {
    goto LABEL_121;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x6B, *(v5 + 556), a2, a4);
  if ((*(v5 + 684) & 0x4000) != 0)
  {
LABEL_122:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x6C, *(v5 + 584), a2, a4);
  }

LABEL_123:
  if (*(v5 + 568) >= 1)
  {
    v19 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x6D, *(*(v5 + 560) + 8 * v19++), a2, a4);
    }

    while (v19 < *(v5 + 568));
  }

  v20 = *(v5 + 684);
  if ((v20 & 0x10000) != 0)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x6E, *(v5 + 588), a2, a4);
    v20 = *(v5 + 684);
    if ((v20 & 0x20000) == 0)
    {
LABEL_128:
      if ((v20 & 0x40000) == 0)
      {
        goto LABEL_129;
      }

      goto LABEL_265;
    }
  }

  else if ((v20 & 0x20000) == 0)
  {
    goto LABEL_128;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x6F, *(v5 + 592), a2, a4);
  v20 = *(v5 + 684);
  if ((v20 & 0x40000) == 0)
  {
LABEL_129:
    if ((v20 & 0x80000) == 0)
    {
      goto LABEL_130;
    }

    goto LABEL_266;
  }

LABEL_265:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x70, *(v5 + 596), a2, a4);
  v20 = *(v5 + 684);
  if ((v20 & 0x80000) == 0)
  {
LABEL_130:
    if ((v20 & 0x100000) == 0)
    {
      goto LABEL_131;
    }

    goto LABEL_267;
  }

LABEL_266:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x71, *(v5 + 600), a2, a4);
  v20 = *(v5 + 684);
  if ((v20 & 0x100000) == 0)
  {
LABEL_131:
    if ((v20 & 0x200000) == 0)
    {
      goto LABEL_132;
    }

    goto LABEL_268;
  }

LABEL_267:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x72, *(v5 + 604), a2, a4);
  v20 = *(v5 + 684);
  if ((v20 & 0x200000) == 0)
  {
LABEL_132:
    if ((v20 & 0x400000) == 0)
    {
      goto LABEL_133;
    }

    goto LABEL_269;
  }

LABEL_268:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x73, *(v5 + 608), a2, a4);
  v20 = *(v5 + 684);
  if ((v20 & 0x400000) == 0)
  {
LABEL_133:
    if ((v20 & 0x800000) == 0)
    {
      goto LABEL_134;
    }

    goto LABEL_270;
  }

LABEL_269:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x74, *(v5 + 612), a2, a4);
  v20 = *(v5 + 684);
  if ((v20 & 0x800000) == 0)
  {
LABEL_134:
    if ((v20 & 0x1000000) == 0)
    {
      goto LABEL_135;
    }

    goto LABEL_271;
  }

LABEL_270:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x75, *(v5 + 616), a2, a4);
  v20 = *(v5 + 684);
  if ((v20 & 0x1000000) == 0)
  {
LABEL_135:
    if ((v20 & 0x2000000) == 0)
    {
      goto LABEL_136;
    }

    goto LABEL_272;
  }

LABEL_271:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x76, *(v5 + 624), a2, a4);
  v20 = *(v5 + 684);
  if ((v20 & 0x2000000) == 0)
  {
LABEL_136:
    if ((v20 & 0x4000000) == 0)
    {
      goto LABEL_137;
    }

    goto LABEL_273;
  }

LABEL_272:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x77, *(v5 + 628), a2, a4);
  v20 = *(v5 + 684);
  if ((v20 & 0x4000000) == 0)
  {
LABEL_137:
    if ((v20 & 0x8000000) == 0)
    {
      goto LABEL_138;
    }

    goto LABEL_274;
  }

LABEL_273:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x78, *(v5 + 632), a2, a4);
  v20 = *(v5 + 684);
  if ((v20 & 0x8000000) == 0)
  {
LABEL_138:
    if ((v20 & 0x10000000) == 0)
    {
      goto LABEL_139;
    }

    goto LABEL_275;
  }

LABEL_274:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(0x79, *(v5 + 621), a2, a4);
  v20 = *(v5 + 684);
  if ((v20 & 0x10000000) == 0)
  {
LABEL_139:
    if ((v20 & 0x20000000) == 0)
    {
      goto LABEL_140;
    }

    goto LABEL_276;
  }

LABEL_275:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(0x7A, *(v5 + 622), a2, a4);
  v20 = *(v5 + 684);
  if ((v20 & 0x20000000) == 0)
  {
LABEL_140:
    if ((v20 & 0x40000000) == 0)
    {
      goto LABEL_141;
    }

LABEL_277:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(0x7C, *(v5 + 644), a2, a4);
    if ((*(v5 + 684) & 0x80000000) == 0)
    {
      goto LABEL_142;
    }

    goto LABEL_278;
  }

LABEL_276:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(0x7B, *(v5 + 623), a2, a4);
  v20 = *(v5 + 684);
  if ((v20 & 0x40000000) != 0)
  {
    goto LABEL_277;
  }

LABEL_141:
  if ((v20 & 0x80000000) == 0)
  {
    goto LABEL_142;
  }

LABEL_278:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(0x7D, *(v5 + 636), a2, a4);
LABEL_142:
  if (*(v5 + 688))
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(0x7E, *(v5 + 645), a2, a4);
  }

  if ((*(v5 + 674) & 2) != 0)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
  }

  if ((*(v5 + 688) & 2) != 0)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x80, *(v5 + 640), a2, a4);
  }

  v21 = *(v5 + 676);
  if ((v21 & 0x800000) != 0)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(0x81, *(v5 + 238), a2, a4);
    v21 = *(v5 + 676);
  }

  if ((v21 & 0x1000000) != 0)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(0x82, *(v5 + 239), a2, a4);
  }

  v22 = *(v5 + 688);
  if ((v22 & 4) != 0)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x22E, *(v5 + 656), a2, a4);
    v22 = *(v5 + 688);
    if ((v22 & 8) == 0)
    {
LABEL_154:
      if ((v22 & 0x10) == 0)
      {
        goto LABEL_155;
      }

      goto LABEL_281;
    }
  }

  else if ((v22 & 8) == 0)
  {
    goto LABEL_154;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
  v22 = *(v5 + 688);
  if ((v22 & 0x10) == 0)
  {
LABEL_155:
    if ((v22 & 0x20) == 0)
    {
      goto LABEL_156;
    }

    goto LABEL_282;
  }

LABEL_281:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(0x230, *(v5 + 646), a2, a4);
  v22 = *(v5 + 688);
  if ((v22 & 0x20) == 0)
  {
LABEL_156:
    if ((v22 & 0x40) == 0)
    {
      goto LABEL_157;
    }

LABEL_283:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(0x25A, *(v5 + 647), a2, a4);
    if ((*(v5 + 688) & 0x80) == 0)
    {
      return this;
    }

    goto LABEL_284;
  }

LABEL_282:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x259, *(v5 + 660), a2, a4);
  v22 = *(v5 + 688);
  if ((v22 & 0x40) != 0)
  {
    goto LABEL_283;
  }

LABEL_157:
  if ((v22 & 0x80) == 0)
  {
    return this;
  }

LABEL_284:
  v23 = *(v5 + 664);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(0x25B, v23, a2, a4);
}

uint64_t awd::metrics::ATM_CallEndEvent::ByteSize(awd::metrics::ATM_CallEndEvent *this, unint64_t a2)
{
  v3 = *(this + 168);
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
      v3 = *(this + 168);
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
  v3 = *(this + 168);
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
      v3 = *(this + 168);
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
    v16 = *(this + 10);
    if ((v16 & 0x80000000) != 0)
    {
      v17 = 11;
    }

    else if (v16 >= 0x80)
    {
      v17 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v16) + 1;
      v3 = *(this + 168);
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
      v24 = *(this + 11);
      if (v24 >= 0x80)
      {
        v25 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v24) + 1;
        v3 = *(this + 168);
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

  v18 = *(this + 4);
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
    v3 = *(this + 168);
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
    v3 = *(this + 168);
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
      v3 = *(this + 168);
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
    v3 = *(this + 168);
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
    v44 = *(this + 24);
    if (v44 >= 0x80)
    {
      v45 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v44) + 2;
      v3 = *(this + 168);
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
    goto LABEL_151;
  }

  if ((v3 & 0x10000) != 0)
  {
    v46 = *(this + 9);
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
      v51 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v50);
      v47 = *(v46 + 23);
      v49 = *(v46 + 8);
      v3 = *(this + 168);
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

    v5 += v51 + v47 + 2;
    if ((v3 & 0x20000) == 0)
    {
LABEL_87:
      if ((v3 & 0x40000) == 0)
      {
        goto LABEL_88;
      }

      goto LABEL_112;
    }
  }

  else if ((v3 & 0x20000) == 0)
  {
    goto LABEL_87;
  }

  v52 = *(this + 10);
  v53 = *(v52 + 23);
  v54 = v53;
  v55 = *(v52 + 8);
  if ((v53 & 0x80u) == 0)
  {
    v56 = *(v52 + 23);
  }

  else
  {
    v56 = v55;
  }

  if (v56 >= 0x80)
  {
    v57 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v56);
    v53 = *(v52 + 23);
    v55 = *(v52 + 8);
    v3 = *(this + 168);
    v54 = *(v52 + 23);
  }

  else
  {
    v57 = 1;
  }

  if (v54 < 0)
  {
    v53 = v55;
  }

  v5 += v57 + v53 + 2;
  if ((v3 & 0x40000) == 0)
  {
LABEL_88:
    if ((v3 & 0x80000) == 0)
    {
      goto LABEL_89;
    }

    goto LABEL_121;
  }

LABEL_112:
  v58 = *(this + 11);
  v59 = *(v58 + 23);
  v60 = v59;
  v61 = *(v58 + 8);
  if ((v59 & 0x80u) == 0)
  {
    v62 = *(v58 + 23);
  }

  else
  {
    v62 = v61;
  }

  if (v62 >= 0x80)
  {
    v63 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v62);
    v59 = *(v58 + 23);
    v61 = *(v58 + 8);
    v3 = *(this + 168);
    v60 = *(v58 + 23);
  }

  else
  {
    v63 = 1;
  }

  if (v60 < 0)
  {
    v59 = v61;
  }

  v5 += v63 + v59 + 2;
  if ((v3 & 0x80000) == 0)
  {
LABEL_89:
    if ((v3 & 0x100000) == 0)
    {
      goto LABEL_90;
    }

    goto LABEL_130;
  }

LABEL_121:
  v64 = *(this + 13);
  v65 = *(v64 + 23);
  v66 = v65;
  v67 = *(v64 + 8);
  if ((v65 & 0x80u) == 0)
  {
    v68 = *(v64 + 23);
  }

  else
  {
    v68 = v67;
  }

  if (v68 >= 0x80)
  {
    v69 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v68);
    v65 = *(v64 + 23);
    v67 = *(v64 + 8);
    v3 = *(this + 168);
    v66 = *(v64 + 23);
  }

  else
  {
    v69 = 1;
  }

  if (v66 < 0)
  {
    v65 = v67;
  }

  v5 += v69 + v65 + 2;
  if ((v3 & 0x100000) == 0)
  {
LABEL_90:
    if ((v3 & 0x200000) == 0)
    {
      goto LABEL_91;
    }

    goto LABEL_139;
  }

LABEL_130:
  v70 = *(this + 14);
  v71 = *(v70 + 23);
  v72 = v71;
  v73 = *(v70 + 8);
  if ((v71 & 0x80u) == 0)
  {
    v74 = *(v70 + 23);
  }

  else
  {
    v74 = v73;
  }

  if (v74 >= 0x80)
  {
    v75 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v74);
    v71 = *(v70 + 23);
    v73 = *(v70 + 8);
    v3 = *(this + 168);
    v72 = *(v70 + 23);
  }

  else
  {
    v75 = 1;
  }

  if (v72 < 0)
  {
    v71 = v73;
  }

  v5 += v75 + v71 + 2;
  if ((v3 & 0x200000) == 0)
  {
LABEL_91:
    if ((v3 & 0x400000) == 0)
    {
      goto LABEL_92;
    }

    goto LABEL_143;
  }

LABEL_139:
  v76 = *(this + 30);
  if (v76 >= 0x80)
  {
    v77 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v76) + 2;
    v3 = *(this + 168);
  }

  else
  {
    v77 = 3;
  }

  v5 += v77;
  if ((v3 & 0x400000) == 0)
  {
LABEL_92:
    if ((v3 & 0x800000) == 0)
    {
      goto LABEL_151;
    }

    goto LABEL_147;
  }

LABEL_143:
  v78 = *(this + 31);
  if (v78 >= 0x80)
  {
    v79 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v78) + 2;
    v3 = *(this + 168);
  }

  else
  {
    v79 = 3;
  }

  v5 += v79;
  if ((v3 & 0x800000) != 0)
  {
LABEL_147:
    v80 = *(this + 32);
    if (v80 >= 0x80)
    {
      v81 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v80) + 2;
      v3 = *(this + 168);
    }

    else
    {
      v81 = 3;
    }

    v5 += v81;
  }

LABEL_151:
  if (!HIBYTE(v3))
  {
    goto LABEL_205;
  }

  if ((v3 & 0x1000000) != 0)
  {
    v5 += 3;
  }

  if ((v3 & 0x2000000) != 0)
  {
    v82 = *(this + 33);
    if (v82 >= 0x80)
    {
      v83 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v82) + 2;
      v3 = *(this + 168);
    }

    else
    {
      v83 = 3;
    }

    v5 += v83;
    if ((v3 & 0x4000000) == 0)
    {
LABEL_156:
      if ((v3 & 0x8000000) == 0)
      {
        goto LABEL_157;
      }

      goto LABEL_170;
    }
  }

  else if ((v3 & 0x4000000) == 0)
  {
    goto LABEL_156;
  }

  v84 = *(this + 36);
  if (v84 >= 0x80)
  {
    v85 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v84) + 2;
    v3 = *(this + 168);
  }

  else
  {
    v85 = 3;
  }

  v5 += v85;
  if ((v3 & 0x8000000) == 0)
  {
LABEL_157:
    if ((v3 & 0x10000000) == 0)
    {
      goto LABEL_158;
    }

    goto LABEL_179;
  }

LABEL_170:
  v86 = *(this + 17);
  v87 = *(v86 + 23);
  v88 = v87;
  v89 = *(v86 + 8);
  if ((v87 & 0x80u) == 0)
  {
    v90 = *(v86 + 23);
  }

  else
  {
    v90 = v89;
  }

  if (v90 >= 0x80)
  {
    v91 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v90);
    v87 = *(v86 + 23);
    v89 = *(v86 + 8);
    v3 = *(this + 168);
    v88 = *(v86 + 23);
  }

  else
  {
    v91 = 1;
  }

  if (v88 < 0)
  {
    v87 = v89;
  }

  v5 += v91 + v87 + 2;
  if ((v3 & 0x10000000) == 0)
  {
LABEL_158:
    if ((v3 & 0x20000000) == 0)
    {
      goto LABEL_159;
    }

    goto LABEL_188;
  }

LABEL_179:
  v92 = *(this + 19);
  v93 = *(v92 + 23);
  v94 = v93;
  v95 = *(v92 + 8);
  if ((v93 & 0x80u) == 0)
  {
    v96 = *(v92 + 23);
  }

  else
  {
    v96 = v95;
  }

  if (v96 >= 0x80)
  {
    v97 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v96);
    v93 = *(v92 + 23);
    v95 = *(v92 + 8);
    v3 = *(this + 168);
    v94 = *(v92 + 23);
  }

  else
  {
    v97 = 1;
  }

  if (v94 < 0)
  {
    v93 = v95;
  }

  v5 += v97 + v93 + 2;
  if ((v3 & 0x20000000) == 0)
  {
LABEL_159:
    if ((v3 & 0x40000000) == 0)
    {
      goto LABEL_160;
    }

    goto LABEL_197;
  }

LABEL_188:
  v98 = *(this + 20);
  v99 = *(v98 + 23);
  v100 = v99;
  v101 = *(v98 + 8);
  if ((v99 & 0x80u) == 0)
  {
    v102 = *(v98 + 23);
  }

  else
  {
    v102 = v101;
  }

  if (v102 >= 0x80)
  {
    v103 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v102);
    v99 = *(v98 + 23);
    v101 = *(v98 + 8);
    v3 = *(this + 168);
    v100 = *(v98 + 23);
  }

  else
  {
    v103 = 1;
  }

  if (v100 < 0)
  {
    v99 = v101;
  }

  v5 += v103 + v99 + 2;
  if ((v3 & 0x40000000) == 0)
  {
LABEL_160:
    if ((v3 & 0x80000000) == 0)
    {
      goto LABEL_205;
    }

    goto LABEL_201;
  }

LABEL_197:
  v104 = *(this + 37);
  if (v104 >= 0x80)
  {
    v105 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v104) + 2;
    v3 = *(this + 168);
  }

  else
  {
    v105 = 3;
  }

  v5 += v105;
  if ((v3 & 0x80000000) != 0)
  {
LABEL_201:
    v106 = *(this + 42);
    if (v106 >= 0x80)
    {
      v107 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v106) + 2;
    }

    else
    {
      v107 = 3;
    }

    v5 += v107;
  }

LABEL_205:
  v108 = *(this + 169);
  if (!v108)
  {
    goto LABEL_247;
  }

  if (v108)
  {
    v5 += 3;
  }

  if ((v108 & 2) != 0)
  {
    v109 = *(this + 43);
    if (v109 >= 0x80)
    {
      v110 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v109) + 2;
      v108 = *(this + 169);
    }

    else
    {
      v110 = 3;
    }

    v5 += v110;
    if ((v108 & 4) == 0)
    {
LABEL_210:
      if ((v108 & 8) == 0)
      {
        goto LABEL_211;
      }

      goto LABEL_222;
    }
  }

  else if ((v108 & 4) == 0)
  {
    goto LABEL_210;
  }

  v111 = *(this + 44);
  if (v111 >= 0x80)
  {
    v112 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v111) + 2;
    v108 = *(this + 169);
  }

  else
  {
    v112 = 3;
  }

  v5 += v112;
  if ((v108 & 8) == 0)
  {
LABEL_211:
    if ((v108 & 0x10) == 0)
    {
      goto LABEL_212;
    }

LABEL_223:
    v113 = *(this + 45);
    if ((v113 & 0x80000000) != 0)
    {
      v114 = 12;
    }

    else if (v113 >= 0x80)
    {
      v114 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v113) + 2;
      v108 = *(this + 169);
    }

    else
    {
      v114 = 3;
    }

    v5 += v114;
    if ((v108 & 0x20) == 0)
    {
      goto LABEL_235;
    }

    goto LABEL_229;
  }

LABEL_222:
  v5 += wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 23)) + 2;
  v108 = *(this + 169);
  if ((v108 & 0x10) != 0)
  {
    goto LABEL_223;
  }

LABEL_212:
  if ((v108 & 0x20) != 0)
  {
LABEL_229:
    v115 = *(this + 48);
    if ((v115 & 0x80000000) != 0)
    {
      v116 = 12;
    }

    else if (v115 >= 0x80)
    {
      v116 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v115) + 2;
      v108 = *(this + 169);
    }

    else
    {
      v116 = 3;
    }

    v5 += v116;
  }

LABEL_235:
  if ((v108 & 0x40) != 0)
  {
    v5 += 3;
  }

  if ((v108 & 0x80) != 0)
  {
    v117 = *(this + 25);
    v118 = *(v117 + 23);
    v119 = v118;
    v120 = *(v117 + 8);
    if ((v118 & 0x80u) == 0)
    {
      v121 = *(v117 + 23);
    }

    else
    {
      v121 = v120;
    }

    if (v121 >= 0x80)
    {
      v122 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v121);
      v118 = *(v117 + 23);
      v120 = *(v117 + 8);
      v108 = *(this + 169);
      v119 = *(v117 + 23);
    }

    else
    {
      v122 = 1;
    }

    if (v119 < 0)
    {
      v118 = v120;
    }

    v5 += v122 + v118 + 2;
  }

LABEL_247:
  if ((v108 & 0xFF00) == 0)
  {
    goto LABEL_287;
  }

  if ((v108 & 0x100) != 0)
  {
    v5 += 3;
  }

  if ((v108 & 0x200) != 0)
  {
    v123 = *(this + 49);
    if ((v123 & 0x80000000) != 0)
    {
      v124 = 12;
    }

    else if (v123 >= 0x80)
    {
      v124 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v123) + 2;
      v108 = *(this + 169);
    }

    else
    {
      v124 = 3;
    }

    v5 += v124;
    if ((v108 & 0x400) == 0)
    {
LABEL_252:
      if ((v108 & 0x800) == 0)
      {
        goto LABEL_253;
      }

      goto LABEL_268;
    }
  }

  else if ((v108 & 0x400) == 0)
  {
    goto LABEL_252;
  }

  v125 = *(this + 52);
  if (v125 >= 0x80)
  {
    v126 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v125) + 2;
    v108 = *(this + 169);
  }

  else
  {
    v126 = 3;
  }

  v5 += v126;
  if ((v108 & 0x800) == 0)
  {
LABEL_253:
    if ((v108 & 0x1000) == 0)
    {
      goto LABEL_254;
    }

    goto LABEL_274;
  }

LABEL_268:
  v127 = *(this + 53);
  if ((v127 & 0x80000000) != 0)
  {
    v128 = 12;
  }

  else if (v127 >= 0x80)
  {
    v128 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v127) + 2;
    v108 = *(this + 169);
  }

  else
  {
    v128 = 3;
  }

  v5 += v128;
  if ((v108 & 0x1000) == 0)
  {
LABEL_254:
    if ((v108 & 0x2000) == 0)
    {
      goto LABEL_255;
    }

    goto LABEL_275;
  }

LABEL_274:
  v5 += wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 27)) + 2;
  v108 = *(this + 169);
  if ((v108 & 0x2000) == 0)
  {
LABEL_255:
    if ((v108 & 0x4000) == 0)
    {
      goto LABEL_256;
    }

    goto LABEL_279;
  }

LABEL_275:
  v129 = *(this + 56);
  if (v129 >= 0x80)
  {
    v130 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v129) + 2;
    v108 = *(this + 169);
  }

  else
  {
    v130 = 3;
  }

  v5 += v130;
  if ((v108 & 0x4000) == 0)
  {
LABEL_256:
    if ((v108 & 0x8000) == 0)
    {
      goto LABEL_287;
    }

    goto LABEL_283;
  }

LABEL_279:
  v131 = *(this + 57);
  if (v131 >= 0x80)
  {
    v132 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v131) + 2;
    v108 = *(this + 169);
  }

  else
  {
    v132 = 3;
  }

  v5 += v132;
  if ((v108 & 0x8000) != 0)
  {
LABEL_283:
    v133 = ((2 * *(this + 58)) ^ (*(this + 58) >> 31));
    if (v133 >= 0x80)
    {
      v134 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v133) + 2;
      v108 = *(this + 169);
    }

    else
    {
      v134 = 3;
    }

    v5 += v134;
  }

LABEL_287:
  if ((v108 & 0xFF0000) == 0)
  {
    goto LABEL_326;
  }

  if ((v108 & 0x10000) != 0)
  {
    v135 = *(this + 60);
    if (v135 >= 0x80)
    {
      v136 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v135) + 2;
      v108 = *(this + 169);
    }

    else
    {
      v136 = 3;
    }

    v5 += v136;
    if ((v108 & 0x20000) == 0)
    {
LABEL_290:
      if ((v108 & 0x40000) == 0)
      {
        goto LABEL_291;
      }

      goto LABEL_303;
    }
  }

  else if ((v108 & 0x20000) == 0)
  {
    goto LABEL_290;
  }

  v137 = *(this + 61);
  if (v137 >= 0x80)
  {
    v138 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v137) + 2;
    v108 = *(this + 169);
  }

  else
  {
    v138 = 3;
  }

  v5 += v138;
  if ((v108 & 0x40000) == 0)
  {
LABEL_291:
    if ((v108 & 0x80000) == 0)
    {
      goto LABEL_292;
    }

    goto LABEL_307;
  }

LABEL_303:
  v139 = *(this + 62);
  if (v139 >= 0x80)
  {
    v140 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v139) + 2;
    v108 = *(this + 169);
  }

  else
  {
    v140 = 3;
  }

  v5 += v140;
  if ((v108 & 0x80000) == 0)
  {
LABEL_292:
    if ((v108 & 0x100000) == 0)
    {
      goto LABEL_293;
    }

    goto LABEL_311;
  }

LABEL_307:
  v141 = *(this + 63);
  if (v141 >= 0x80)
  {
    v142 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v141) + 2;
    v108 = *(this + 169);
  }

  else
  {
    v142 = 3;
  }

  v5 += v142;
  if ((v108 & 0x100000) == 0)
  {
LABEL_293:
    if ((v108 & 0x200000) == 0)
    {
      goto LABEL_324;
    }

LABEL_315:
    v145 = *(this + 32);
    v146 = *(v145 + 23);
    v147 = v146;
    v148 = *(v145 + 8);
    if ((v146 & 0x80u) == 0)
    {
      v149 = *(v145 + 23);
    }

    else
    {
      v149 = v148;
    }

    if (v149 >= 0x80)
    {
      v150 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v149);
      v146 = *(v145 + 23);
      v148 = *(v145 + 8);
      v108 = *(this + 169);
      v147 = *(v145 + 23);
    }

    else
    {
      v150 = 1;
    }

    if (v147 < 0)
    {
      v146 = v148;
    }

    v5 += v150 + v146 + 2;
    goto LABEL_324;
  }

LABEL_311:
  v143 = *(this + 72);
  if (v143 >= 0x80)
  {
    v144 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v143) + 2;
    v108 = *(this + 169);
  }

  else
  {
    v144 = 3;
  }

  v5 += v144;
  if ((v108 & 0x200000) != 0)
  {
    goto LABEL_315;
  }

LABEL_324:
  if ((v108 & 0x800000) != 0)
  {
    v5 += 3;
  }

LABEL_326:
  if (!HIBYTE(v108))
  {
    goto LABEL_363;
  }

  v151 = v5 + 3;
  if ((v108 & 0x1000000) == 0)
  {
    v151 = v5;
  }

  if ((v108 & 0x2000000) != 0)
  {
    v5 = v151 + 3;
  }

  else
  {
    v5 = v151;
  }

  if ((v108 & 0x4000000) != 0)
  {
    v152 = *(this + 73);
    if (v152 >= 0x80)
    {
      v153 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v152) + 2;
      v108 = *(this + 169);
    }

    else
    {
      v153 = 3;
    }

    v5 += v153;
    if ((v108 & 0x8000000) == 0)
    {
LABEL_334:
      if ((v108 & 0x10000000) == 0)
      {
        goto LABEL_335;
      }

      goto LABEL_347;
    }
  }

  else if ((v108 & 0x8000000) == 0)
  {
    goto LABEL_334;
  }

  v154 = *(this + 74);
  if (v154 >= 0x80)
  {
    v155 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v154) + 2;
    v108 = *(this + 169);
  }

  else
  {
    v155 = 3;
  }

  v5 += v155;
  if ((v108 & 0x10000000) == 0)
  {
LABEL_335:
    if ((v108 & 0x20000000) == 0)
    {
      goto LABEL_336;
    }

    goto LABEL_351;
  }

LABEL_347:
  v156 = *(this + 75);
  if (v156 >= 0x80)
  {
    v157 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v156) + 2;
    v108 = *(this + 169);
  }

  else
  {
    v157 = 3;
  }

  v5 += v157;
  if ((v108 & 0x20000000) == 0)
  {
LABEL_336:
    if ((v108 & 0x40000000) == 0)
    {
      goto LABEL_337;
    }

    goto LABEL_355;
  }

LABEL_351:
  v158 = *(this + 76);
  if (v158 >= 0x80)
  {
    v159 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v158) + 2;
    v108 = *(this + 169);
  }

  else
  {
    v159 = 3;
  }

  v5 += v159;
  if ((v108 & 0x40000000) == 0)
  {
LABEL_337:
    if ((v108 & 0x80000000) == 0)
    {
      goto LABEL_363;
    }

    goto LABEL_359;
  }

LABEL_355:
  v160 = *(this + 77);
  if (v160 >= 0x80)
  {
    v161 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v160) + 2;
    v108 = *(this + 169);
  }

  else
  {
    v161 = 3;
  }

  v5 += v161;
  if ((v108 & 0x80000000) != 0)
  {
LABEL_359:
    v162 = *(this + 78);
    if (v162 >= 0x80)
    {
      v163 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v162) + 2;
    }

    else
    {
      v163 = 3;
    }

    v5 += v163;
  }

LABEL_363:
  v164 = *(this + 170);
  if (!v164)
  {
    goto LABEL_405;
  }

  if (v164)
  {
    v165 = *(this + 79);
    if (v165 >= 0x80)
    {
      v166 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v165) + 2;
      v164 = *(this + 170);
    }

    else
    {
      v166 = 3;
    }

    v5 += v166;
    if ((v164 & 2) == 0)
    {
LABEL_366:
      if ((v164 & 4) == 0)
      {
        goto LABEL_367;
      }

      goto LABEL_381;
    }
  }

  else if ((v164 & 2) == 0)
  {
    goto LABEL_366;
  }

  v167 = *(this + 80);
  if (v167 >= 0x80)
  {
    v168 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v167) + 2;
    v164 = *(this + 170);
  }

  else
  {
    v168 = 3;
  }

  v5 += v168;
  if ((v164 & 4) == 0)
  {
LABEL_367:
    if ((v164 & 8) == 0)
    {
      goto LABEL_368;
    }

    goto LABEL_385;
  }

LABEL_381:
  v169 = *(this + 81);
  if (v169 >= 0x80)
  {
    v170 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v169) + 2;
    v164 = *(this + 170);
  }

  else
  {
    v170 = 3;
  }

  v5 += v170;
  if ((v164 & 8) == 0)
  {
LABEL_368:
    if ((v164 & 0x10) == 0)
    {
      goto LABEL_369;
    }

    goto LABEL_389;
  }

LABEL_385:
  v171 = *(this + 82);
  if (v171 >= 0x80)
  {
    v172 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v171) + 2;
    v164 = *(this + 170);
  }

  else
  {
    v172 = 3;
  }

  v5 += v172;
  if ((v164 & 0x10) == 0)
  {
LABEL_369:
    if ((v164 & 0x20) == 0)
    {
      goto LABEL_370;
    }

    goto LABEL_393;
  }

LABEL_389:
  v173 = *(this + 83);
  if (v173 >= 0x80)
  {
    v174 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v173) + 2;
    v164 = *(this + 170);
  }

  else
  {
    v174 = 3;
  }

  v5 += v174;
  if ((v164 & 0x20) == 0)
  {
LABEL_370:
    if ((v164 & 0x40) == 0)
    {
      goto LABEL_371;
    }

    goto LABEL_397;
  }

LABEL_393:
  v175 = *(this + 84);
  if (v175 >= 0x80)
  {
    v176 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v175) + 2;
    v164 = *(this + 170);
  }

  else
  {
    v176 = 3;
  }

  v5 += v176;
  if ((v164 & 0x40) == 0)
  {
LABEL_371:
    if ((v164 & 0x80) == 0)
    {
      goto LABEL_405;
    }

    goto LABEL_401;
  }

LABEL_397:
  v177 = *(this + 85);
  if (v177 >= 0x80)
  {
    v178 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v177) + 2;
    v164 = *(this + 170);
  }

  else
  {
    v178 = 3;
  }

  v5 += v178;
  if ((v164 & 0x80) != 0)
  {
LABEL_401:
    v179 = *(this + 86);
    if (v179 >= 0x80)
    {
      v180 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v179) + 2;
      v164 = *(this + 170);
    }

    else
    {
      v180 = 3;
    }

    v5 += v180;
  }

LABEL_405:
  if ((v164 & 0xFF00) == 0)
  {
    goto LABEL_447;
  }

  if ((v164 & 0x100) != 0)
  {
    v181 = *(this + 87);
    if (v181 >= 0x80)
    {
      v182 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v181) + 2;
      v164 = *(this + 170);
    }

    else
    {
      v182 = 3;
    }

    v5 += v182;
    if ((v164 & 0x200) == 0)
    {
LABEL_408:
      if ((v164 & 0x400) == 0)
      {
        goto LABEL_409;
      }

      goto LABEL_423;
    }
  }

  else if ((v164 & 0x200) == 0)
  {
    goto LABEL_408;
  }

  v183 = *(this + 88);
  if (v183 >= 0x80)
  {
    v184 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v183) + 2;
    v164 = *(this + 170);
  }

  else
  {
    v184 = 3;
  }

  v5 += v184;
  if ((v164 & 0x400) == 0)
  {
LABEL_409:
    if ((v164 & 0x800) == 0)
    {
      goto LABEL_410;
    }

    goto LABEL_427;
  }

LABEL_423:
  v185 = *(this + 89);
  if (v185 >= 0x80)
  {
    v186 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v185) + 2;
    v164 = *(this + 170);
  }

  else
  {
    v186 = 3;
  }

  v5 += v186;
  if ((v164 & 0x800) == 0)
  {
LABEL_410:
    if ((v164 & 0x1000) == 0)
    {
      goto LABEL_411;
    }

    goto LABEL_431;
  }

LABEL_427:
  v187 = *(this + 90);
  if (v187 >= 0x80)
  {
    v188 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v187) + 2;
    v164 = *(this + 170);
  }

  else
  {
    v188 = 3;
  }

  v5 += v188;
  if ((v164 & 0x1000) == 0)
  {
LABEL_411:
    if ((v164 & 0x2000) == 0)
    {
      goto LABEL_412;
    }

    goto LABEL_435;
  }

LABEL_431:
  v189 = *(this + 91);
  if (v189 >= 0x80)
  {
    v190 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v189) + 2;
    v164 = *(this + 170);
  }

  else
  {
    v190 = 3;
  }

  v5 += v190;
  if ((v164 & 0x2000) == 0)
  {
LABEL_412:
    if ((v164 & 0x4000) == 0)
    {
      goto LABEL_413;
    }

    goto LABEL_439;
  }

LABEL_435:
  v191 = *(this + 92);
  if (v191 >= 0x80)
  {
    v192 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v191) + 2;
    v164 = *(this + 170);
  }

  else
  {
    v192 = 3;
  }

  v5 += v192;
  if ((v164 & 0x4000) == 0)
  {
LABEL_413:
    if ((v164 & 0x8000) == 0)
    {
      goto LABEL_447;
    }

    goto LABEL_443;
  }

LABEL_439:
  v193 = *(this + 93);
  if (v193 >= 0x80)
  {
    v194 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v193) + 2;
    v164 = *(this + 170);
  }

  else
  {
    v194 = 3;
  }

  v5 += v194;
  if ((v164 & 0x8000) != 0)
  {
LABEL_443:
    v195 = *(this + 94);
    if (v195 >= 0x80)
    {
      v196 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v195) + 2;
      v164 = *(this + 170);
    }

    else
    {
      v196 = 3;
    }

    v5 += v196;
  }

LABEL_447:
  if ((v164 & 0xFF0000) == 0)
  {
    goto LABEL_491;
  }

  if ((v164 & 0x10000) != 0)
  {
    v197 = *(this + 95);
    if (v197 >= 0x80)
    {
      v198 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v197) + 2;
      v164 = *(this + 170);
    }

    else
    {
      v198 = 3;
    }

    v5 += v198;
    if ((v164 & 0x20000) == 0)
    {
LABEL_450:
      if ((v164 & 0x40000) == 0)
      {
        goto LABEL_451;
      }

      goto LABEL_462;
    }
  }

  else if ((v164 & 0x20000) == 0)
  {
    goto LABEL_450;
  }

  v199 = *(this + 96);
  if (v199 >= 0x80)
  {
    v200 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v199) + 2;
    v164 = *(this + 170);
  }

  else
  {
    v200 = 3;
  }

  v5 += v200;
  if ((v164 & 0x40000) == 0)
  {
LABEL_451:
    if ((v164 & 0x80000) == 0)
    {
      goto LABEL_452;
    }

LABEL_466:
    v203 = *(this + 98);
    if (v203 >= 0x80)
    {
      v204 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v203) + 2;
      v164 = *(this + 170);
    }

    else
    {
      v204 = 3;
    }

    v5 += v204;
    if ((v164 & 0x100000) == 0)
    {
      goto LABEL_474;
    }

    goto LABEL_470;
  }

LABEL_462:
  v201 = *(this + 97);
  if (v201 >= 0x80)
  {
    v202 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v201) + 2;
    v164 = *(this + 170);
  }

  else
  {
    v202 = 3;
  }

  v5 += v202;
  if ((v164 & 0x80000) != 0)
  {
    goto LABEL_466;
  }

LABEL_452:
  if ((v164 & 0x100000) != 0)
  {
LABEL_470:
    v205 = *(this + 100);
    if (v205 >= 0x80)
    {
      v206 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v205) + 2;
      v164 = *(this + 170);
    }

    else
    {
      v206 = 3;
    }

    v5 += v206;
  }

LABEL_474:
  if ((v164 & 0x200000) != 0)
  {
    v5 += 3;
  }

  if ((v164 & 0x400000) != 0)
  {
    v207 = *(this + 101);
    if (v207 >= 0x80)
    {
      v208 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v207) + 2;
      v164 = *(this + 170);
    }

    else
    {
      v208 = 3;
    }

    v5 += v208;
  }

  if ((v164 & 0x800000) != 0)
  {
    v209 = *(this + 51);
    v210 = *(v209 + 23);
    v211 = v210;
    v212 = *(v209 + 8);
    if ((v210 & 0x80u) == 0)
    {
      v213 = *(v209 + 23);
    }

    else
    {
      v213 = v212;
    }

    if (v213 >= 0x80)
    {
      v214 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v213);
      v210 = *(v209 + 23);
      v212 = *(v209 + 8);
      v164 = *(this + 170);
      v211 = *(v209 + 23);
    }

    else
    {
      v214 = 1;
    }

    if (v211 < 0)
    {
      v210 = v212;
    }

    v5 += v214 + v210 + 2;
  }

LABEL_491:
  if (!HIBYTE(v164))
  {
    goto LABEL_523;
  }

  if ((v164 & 0x1000000) != 0)
  {
    v215 = *(this + 104);
    if ((v215 & 0x80000000) != 0)
    {
      v216 = 12;
    }

    else if (v215 >= 0x80)
    {
      v216 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v215) + 2;
      v164 = *(this + 170);
    }

    else
    {
      v216 = 3;
    }

    v5 += v216;
  }

  if ((v164 & 0x2000000) != 0)
  {
    v217 = *(this + 105);
    if ((v217 & 0x80000000) != 0)
    {
      v218 = 12;
    }

    else if (v217 >= 0x80)
    {
      v218 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v217) + 2;
      v164 = *(this + 170);
    }

    else
    {
      v218 = 3;
    }

    v5 += v218;
  }

  if ((v164 & 0x4000000) != 0)
  {
    v5 += 3;
  }

  if ((v164 & 0x10000000) != 0)
  {
    v219 = *(this + 114);
    if (v219 >= 0x80)
    {
      v220 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v219) + 2;
      v164 = *(this + 170);
    }

    else
    {
      v220 = 3;
    }

    v5 += v220;
    if ((v164 & 0x20000000) == 0)
    {
LABEL_510:
      if ((v164 & 0x40000000) == 0)
      {
        goto LABEL_511;
      }

LABEL_518:
      v5 += wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 58)) + 2;
      if ((*(this + 170) & 0x80000000) == 0)
      {
        goto LABEL_523;
      }

      goto LABEL_519;
    }
  }

  else if ((v164 & 0x20000000) == 0)
  {
    goto LABEL_510;
  }

  v5 += wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 56)) + 2;
  v164 = *(this + 170);
  if ((v164 & 0x40000000) != 0)
  {
    goto LABEL_518;
  }

LABEL_511:
  if ((v164 & 0x80000000) == 0)
  {
    goto LABEL_523;
  }

LABEL_519:
  v221 = *(this + 115);
  if (v221 >= 0x80)
  {
    v222 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v221) + 2;
  }

  else
  {
    v222 = 3;
  }

  v5 += v222;
LABEL_523:
  v223 = *(this + 171);
  if (!v223)
  {
    goto LABEL_556;
  }

  if (v223)
  {
    v224 = *(this + 120);
    if (v224 >= 0x80)
    {
      v225 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v224) + 2;
      v223 = *(this + 171);
    }

    else
    {
      v225 = 3;
    }

    v5 += v225;
    if ((v223 & 2) == 0)
    {
LABEL_526:
      if ((v223 & 4) == 0)
      {
        goto LABEL_527;
      }

      goto LABEL_536;
    }
  }

  else if ((v223 & 2) == 0)
  {
    goto LABEL_526;
  }

  v5 += wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 59)) + 2;
  v223 = *(this + 171);
  if ((v223 & 4) == 0)
  {
LABEL_527:
    if ((v223 & 8) == 0)
    {
      goto LABEL_528;
    }

    goto LABEL_537;
  }

LABEL_536:
  v5 += wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 61)) + 2;
  v223 = *(this + 171);
  if ((v223 & 8) == 0)
  {
LABEL_528:
    if ((v223 & 0x10) == 0)
    {
      goto LABEL_529;
    }

LABEL_541:
    v228 = *(this + 124);
    if (v228 >= 0x80)
    {
      v229 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v228) + 2;
      v223 = *(this + 171);
    }

    else
    {
      v229 = 3;
    }

    v5 += v229;
    if ((v223 & 0x20) == 0)
    {
      goto LABEL_549;
    }

    goto LABEL_545;
  }

LABEL_537:
  v226 = *(this + 121);
  if (v226 >= 0x80)
  {
    v227 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v226) + 2;
    v223 = *(this + 171);
  }

  else
  {
    v227 = 3;
  }

  v5 += v227;
  if ((v223 & 0x10) != 0)
  {
    goto LABEL_541;
  }

LABEL_529:
  if ((v223 & 0x20) != 0)
  {
LABEL_545:
    v230 = *(this + 125);
    if (v230 >= 0x80)
    {
      v231 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v230) + 2;
      v223 = *(this + 171);
    }

    else
    {
      v231 = 3;
    }

    v5 += v231;
  }

LABEL_549:
  if ((v223 & 0x40) != 0)
  {
    v5 += 3;
  }

  if ((v223 & 0x80) != 0)
  {
    v232 = *(this + 126);
    if (v232 >= 0x80)
    {
      v233 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v232) + 2;
      v223 = *(this + 171);
    }

    else
    {
      v233 = 3;
    }

    v5 += v233;
  }

LABEL_556:
  if ((v223 & 0xFF00) == 0)
  {
    goto LABEL_580;
  }

  if ((v223 & 0x100) != 0)
  {
    v234 = *(this + 127);
    if (v234 >= 0x80)
    {
      v235 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v234) + 2;
      v223 = *(this + 171);
    }

    else
    {
      v235 = 3;
    }

    v5 += v235;
  }

  if ((v223 & 0x200) != 0)
  {
    v5 += 3;
  }

  if ((v223 & 0x1000) != 0)
  {
    v236 = *(this + 138);
    if (v236 >= 0x80)
    {
      v237 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v236) + 2;
      v223 = *(this + 171);
    }

    else
    {
      v237 = 3;
    }

    v5 += v237;
    if ((v223 & 0x2000) == 0)
    {
LABEL_566:
      if ((v223 & 0x4000) == 0)
      {
        goto LABEL_580;
      }

      goto LABEL_576;
    }
  }

  else if ((v223 & 0x2000) == 0)
  {
    goto LABEL_566;
  }

  v238 = *(this + 139);
  if (v238 >= 0x80)
  {
    v239 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v238) + 2;
    v223 = *(this + 171);
  }

  else
  {
    v239 = 3;
  }

  v5 += v239;
  if ((v223 & 0x4000) != 0)
  {
LABEL_576:
    v240 = *(this + 146);
    if (v240 >= 0x80)
    {
      v241 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v240) + 2;
      v223 = *(this + 171);
    }

    else
    {
      v241 = 3;
    }

    v5 += v241;
  }

LABEL_580:
  if ((v223 & 0xFF0000) == 0)
  {
    goto LABEL_622;
  }

  if ((v223 & 0x10000) != 0)
  {
    v242 = *(this + 147);
    if (v242 >= 0x80)
    {
      v243 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v242) + 2;
      v223 = *(this + 171);
    }

    else
    {
      v243 = 3;
    }

    v5 += v243;
    if ((v223 & 0x20000) == 0)
    {
LABEL_583:
      if ((v223 & 0x40000) == 0)
      {
        goto LABEL_584;
      }

      goto LABEL_598;
    }
  }

  else if ((v223 & 0x20000) == 0)
  {
    goto LABEL_583;
  }

  v244 = *(this + 148);
  if (v244 >= 0x80)
  {
    v245 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v244) + 2;
    v223 = *(this + 171);
  }

  else
  {
    v245 = 3;
  }

  v5 += v245;
  if ((v223 & 0x40000) == 0)
  {
LABEL_584:
    if ((v223 & 0x80000) == 0)
    {
      goto LABEL_585;
    }

    goto LABEL_602;
  }

LABEL_598:
  v246 = *(this + 149);
  if (v246 >= 0x80)
  {
    v247 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v246) + 2;
    v223 = *(this + 171);
  }

  else
  {
    v247 = 3;
  }

  v5 += v247;
  if ((v223 & 0x80000) == 0)
  {
LABEL_585:
    if ((v223 & 0x100000) == 0)
    {
      goto LABEL_586;
    }

    goto LABEL_606;
  }

LABEL_602:
  v248 = *(this + 150);
  if (v248 >= 0x80)
  {
    v249 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v248) + 2;
    v223 = *(this + 171);
  }

  else
  {
    v249 = 3;
  }

  v5 += v249;
  if ((v223 & 0x100000) == 0)
  {
LABEL_586:
    if ((v223 & 0x200000) == 0)
    {
      goto LABEL_587;
    }

    goto LABEL_610;
  }

LABEL_606:
  v250 = *(this + 151);
  if (v250 >= 0x80)
  {
    v251 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v250) + 2;
    v223 = *(this + 171);
  }

  else
  {
    v251 = 3;
  }

  v5 += v251;
  if ((v223 & 0x200000) == 0)
  {
LABEL_587:
    if ((v223 & 0x400000) == 0)
    {
      goto LABEL_588;
    }

    goto LABEL_614;
  }

LABEL_610:
  v252 = *(this + 152);
  if (v252 >= 0x80)
  {
    v253 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v252) + 2;
    v223 = *(this + 171);
  }

  else
  {
    v253 = 3;
  }

  v5 += v253;
  if ((v223 & 0x400000) == 0)
  {
LABEL_588:
    if ((v223 & 0x800000) == 0)
    {
      goto LABEL_622;
    }

    goto LABEL_618;
  }

LABEL_614:
  v254 = *(this + 153);
  if (v254 >= 0x80)
  {
    v255 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v254) + 2;
    v223 = *(this + 171);
  }

  else
  {
    v255 = 3;
  }

  v5 += v255;
  if ((v223 & 0x800000) != 0)
  {
LABEL_618:
    v256 = *(this + 154);
    if (v256 >= 0x80)
    {
      v257 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v256) + 2;
      v223 = *(this + 171);
    }

    else
    {
      v257 = 3;
    }

    v5 += v257;
  }

LABEL_622:
  if (!HIBYTE(v223))
  {
    goto LABEL_655;
  }

  if ((v223 & 0x1000000) == 0)
  {
    if ((v223 & 0x2000000) == 0)
    {
      goto LABEL_625;
    }

LABEL_631:
    v260 = *(this + 157);
    if (v260 >= 0x80)
    {
      v261 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v260) + 2;
      v223 = *(this + 171);
    }

    else
    {
      v261 = 3;
    }

    v5 += v261;
    if ((v223 & 0x4000000) == 0)
    {
      goto LABEL_639;
    }

    goto LABEL_635;
  }

  v258 = *(this + 156);
  if (v258 >= 0x80)
  {
    v259 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v258) + 2;
    v223 = *(this + 171);
  }

  else
  {
    v259 = 3;
  }

  v5 += v259;
  if ((v223 & 0x2000000) != 0)
  {
    goto LABEL_631;
  }

LABEL_625:
  if ((v223 & 0x4000000) != 0)
  {
LABEL_635:
    v262 = *(this + 158);
    if (v262 >= 0x80)
    {
      v263 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v262) + 2;
      v223 = *(this + 171);
    }

    else
    {
      v263 = 3;
    }

    v5 += v263;
  }

LABEL_639:
  v264 = v5 + 3;
  if ((v223 & 0x8000000) == 0)
  {
    v264 = v5;
  }

  if ((v223 & 0x10000000) != 0)
  {
    v264 += 3;
  }

  if ((v223 & 0x20000000) != 0)
  {
    v264 += 3;
  }

  if ((v223 & 0x40000000) != 0)
  {
    v5 = v264 + 3;
  }

  else
  {
    v5 = v264;
  }

  if ((v223 & 0x80000000) != 0)
  {
    v265 = *(this + 159);
    if ((v265 & 0x80000000) != 0)
    {
      v266 = 12;
    }

    else if (v265 >= 0x80)
    {
      v266 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v265) + 2;
    }

    else
    {
      v266 = 3;
    }

    v5 += v266;
  }

LABEL_655:
  LOBYTE(v267) = *(this + 688);
  if (!v267)
  {
    goto LABEL_691;
  }

  if (*(this + 688))
  {
    v5 += 3;
  }

  if ((*(this + 688) & 2) == 0)
  {
    if ((*(this + 688) & 4) == 0)
    {
      goto LABEL_660;
    }

LABEL_666:
    v270 = *(this + 164);
    if (v270 >= 0x80)
    {
      v271 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v270) + 2;
      v267 = *(this + 172);
    }

    else
    {
      v271 = 3;
    }

    v5 += v271;
    if ((v267 & 8) == 0)
    {
      goto LABEL_679;
    }

LABEL_670:
    v272 = *(this + 81);
    v273 = *(v272 + 23);
    v274 = v273;
    v275 = *(v272 + 8);
    if ((v273 & 0x80u) == 0)
    {
      v276 = *(v272 + 23);
    }

    else
    {
      v276 = v275;
    }

    if (v276 >= 0x80)
    {
      v277 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v276);
      v273 = *(v272 + 23);
      v275 = *(v272 + 8);
      v267 = *(this + 172);
      v274 = *(v272 + 23);
    }

    else
    {
      v277 = 1;
    }

    if (v274 < 0)
    {
      v273 = v275;
    }

    v5 += v277 + v273 + 2;
    goto LABEL_679;
  }

  v268 = *(this + 160);
  if (v268 >= 0x80)
  {
    v269 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v268) + 2;
    v267 = *(this + 172);
  }

  else
  {
    v269 = 3;
  }

  v5 += v269;
  if ((v267 & 4) != 0)
  {
    goto LABEL_666;
  }

LABEL_660:
  if ((v267 & 8) != 0)
  {
    goto LABEL_670;
  }

LABEL_679:
  if ((v267 & 0x10) != 0)
  {
    v5 += 3;
  }

  if ((v267 & 0x20) != 0)
  {
    v278 = *(this + 165);
    if (v278 >= 0x80)
    {
      v279 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v278) + 2;
      v267 = *(this + 172);
    }

    else
    {
      v279 = 3;
    }

    v5 += v279;
  }

  v280 = v5 + 3;
  if ((v267 & 0x40) == 0)
  {
    v280 = v5;
  }

  if ((v267 & 0x80) != 0)
  {
    v5 = v280 + 3;
  }

  else
  {
    v5 = v280;
  }

LABEL_691:
  v281 = *(this + 68);
  v282 = v5 + 2 * v281;
  if (v281 >= 1)
  {
    for (i = 0; i < v281; ++i)
    {
      v284 = *(*(this + 33) + 8 * i);
      v285 = *(v284 + 23);
      v286 = v285;
      v287 = *(v284 + 8);
      if ((v285 & 0x80u) == 0)
      {
        v288 = *(v284 + 23);
      }

      else
      {
        v288 = v287;
      }

      if (v288 >= 0x80)
      {
        v289 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v288);
        v285 = *(v284 + 23);
        v287 = *(v284 + 8);
        v281 = *(this + 68);
        v286 = *(v284 + 23);
      }

      else
      {
        v289 = 1;
      }

      if (v286 < 0)
      {
        v285 = v287;
      }

      v282 += v289 + v285;
    }
  }

  v290 = *(this + 108);
  v291 = v282 + 2 * v290;
  if (v290 >= 1)
  {
    for (j = 0; j < v290; ++j)
    {
      v293 = *(*(this + 53) + 8 * j);
      v294 = *(v293 + 23);
      v295 = v294;
      v296 = *(v293 + 8);
      if ((v294 & 0x80u) == 0)
      {
        v297 = *(v293 + 23);
      }

      else
      {
        v297 = v296;
      }

      if (v297 >= 0x80)
      {
        v298 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v297);
        v294 = *(v293 + 23);
        v296 = *(v293 + 8);
        v290 = *(this + 108);
        v295 = *(v293 + 23);
      }

      else
      {
        v298 = 1;
      }

      if (v295 < 0)
      {
        v294 = v296;
      }

      v291 += v298 + v294;
    }
  }

  v299 = *(this + 130);
  v300 = v291 + 2 * v299;
  if (v299 >= 1)
  {
    v301 = 0;
    do
    {
      v302 = awd::metrics::ATM_CallEndEvent_myreason::ByteSize(*(*(this + 64) + 8 * v301), a2);
      v303 = v302;
      if (v302 >= 0x80)
      {
        v304 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v302);
      }

      else
      {
        v304 = 1;
      }

      v300 += v303 + v304;
      ++v301;
    }

    while (v301 < *(this + 130));
  }

  v305 = *(this + 142);
  v306 = (3 * *(this + 136) + v300 + 2 * v305);
  if (v305 >= 1)
  {
    v307 = 0;
    do
    {
      v308 = awd::metrics::ATM_CallEndEvent_handover::ByteSize(*(*(this + 70) + 8 * v307), a2);
      v309 = v308;
      if (v308 >= 0x80)
      {
        v310 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v308);
      }

      else
      {
        v310 = 1;
      }

      v306 = (v309 + v306 + v310);
      ++v307;
    }

    while (v307 < *(this + 142));
  }

  *(this + 167) = v306;
  return v306;
}