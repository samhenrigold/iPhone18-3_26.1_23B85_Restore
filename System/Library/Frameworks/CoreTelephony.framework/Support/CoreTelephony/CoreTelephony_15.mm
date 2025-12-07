void awd::metrics::CommCenterCellularPlanProfileTransferDetails::CheckTypeAndMergeFrom(awd::metrics::CommCenterCellularPlanProfileTransferDetails *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  if (lpsrc == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v55);
  }

  v4 = *(lpsrc + 47);
  if (!v4)
  {
    goto LABEL_14;
  }

  if (v4)
  {
    v13 = *(lpsrc + 1);
    *(this + 47) |= 1u;
    *(this + 1) = v13;
    v4 = *(lpsrc + 47);
    if ((v4 & 2) == 0)
    {
LABEL_7:
      if ((v4 & 4) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_48;
    }
  }

  else if ((v4 & 2) == 0)
  {
    goto LABEL_7;
  }

  v14 = *(lpsrc + 2);
  *(this + 47) |= 2u;
  v15 = *(this + 2);
  if (v15 == MEMORY[0x277D82C30])
  {
    operator new();
  }

  std::string::operator=(v15, v14);
  v4 = *(lpsrc + 47);
  if ((v4 & 4) == 0)
  {
LABEL_8:
    if ((v4 & 8) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_49;
  }

LABEL_48:
  v16 = *(lpsrc + 6);
  *(this + 47) |= 4u;
  *(this + 6) = v16;
  v4 = *(lpsrc + 47);
  if ((v4 & 8) == 0)
  {
LABEL_9:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_50;
  }

LABEL_49:
  v17 = *(lpsrc + 7);
  *(this + 47) |= 8u;
  *(this + 7) = v17;
  v4 = *(lpsrc + 47);
  if ((v4 & 0x10) == 0)
  {
LABEL_10:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_11;
    }

LABEL_51:
    v19 = *(lpsrc + 33);
    *(this + 47) |= 0x20u;
    *(this + 33) = v19;
    v4 = *(lpsrc + 47);
    if ((v4 & 0x40) == 0)
    {
LABEL_12:
      if ((v4 & 0x80) == 0)
      {
        goto LABEL_14;
      }

      goto LABEL_13;
    }

    goto LABEL_52;
  }

LABEL_50:
  v18 = *(lpsrc + 32);
  *(this + 47) |= 0x10u;
  *(this + 32) = v18;
  v4 = *(lpsrc + 47);
  if ((v4 & 0x20) != 0)
  {
    goto LABEL_51;
  }

LABEL_11:
  if ((v4 & 0x40) == 0)
  {
    goto LABEL_12;
  }

LABEL_52:
  v20 = *(lpsrc + 34);
  *(this + 47) |= 0x40u;
  *(this + 34) = v20;
  v4 = *(lpsrc + 47);
  if ((v4 & 0x80) != 0)
  {
LABEL_13:
    v5 = *(lpsrc + 35);
    *(this + 47) |= 0x80u;
    *(this + 35) = v5;
    v4 = *(lpsrc + 47);
  }

LABEL_14:
  if ((v4 & 0xFF00) == 0)
  {
    goto LABEL_27;
  }

  if ((v4 & 0x100) != 0)
  {
    v6 = *(lpsrc + 56);
    *(this + 47) |= 0x100u;
    *(this + 56) = v6;
    v4 = *(lpsrc + 47);
  }

  if ((v4 & 0x200) != 0)
  {
    v7 = *(lpsrc + 9);
    if (v7 >= 4)
    {
      __assert_rtn("set_plan_type", "CCMetricsCP.pb.h", 8021, "::awd::metrics::CommCenterCellularPlanType_IsValid(value)");
    }

    *(this + 47) |= 0x200u;
    *(this + 9) = v7;
    v4 = *(lpsrc + 47);
  }

  if ((v4 & 0x400) != 0)
  {
    *(this + 47) |= 0x400u;
    v21 = *(this + 5);
    if (!v21)
    {
      operator new();
    }

    v22 = *(lpsrc + 5);
    if (!v22)
    {
      v22 = *(qword_2810D87E8 + 40);
    }

    awd::metrics::CommCenterCellularPlanProfileTransferDetails_RemotePlanTransferInfo::MergeFrom(v21, v22);
    v4 = *(lpsrc + 47);
    if ((v4 & 0x800) == 0)
    {
LABEL_22:
      if ((v4 & 0x1000) == 0)
      {
        goto LABEL_23;
      }

      goto LABEL_60;
    }
  }

  else if ((v4 & 0x800) == 0)
  {
    goto LABEL_22;
  }

  v23 = *(lpsrc + 57);
  *(this + 47) |= 0x800u;
  *(this + 57) = v23;
  v4 = *(lpsrc + 47);
  if ((v4 & 0x1000) == 0)
  {
LABEL_23:
    if ((v4 & 0x2000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_61;
  }

LABEL_60:
  v24 = *(lpsrc + 12);
  *(this + 47) |= 0x1000u;
  *(this + 12) = v24;
  v4 = *(lpsrc + 47);
  if ((v4 & 0x2000) == 0)
  {
LABEL_24:
    if ((v4 & 0x4000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_62;
  }

LABEL_61:
  v25 = *(lpsrc + 13);
  *(this + 47) |= 0x2000u;
  *(this + 13) = v25;
  v4 = *(lpsrc + 47);
  if ((v4 & 0x4000) == 0)
  {
LABEL_25:
    if ((v4 & 0x8000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_26;
  }

LABEL_62:
  v26 = *(lpsrc + 58);
  *(this + 47) |= 0x4000u;
  *(this + 58) = v26;
  v4 = *(lpsrc + 47);
  if ((v4 & 0x8000) != 0)
  {
LABEL_26:
    v8 = *(lpsrc + 15);
    *(this + 47) |= 0x8000u;
    *(this + 15) = v8;
    v4 = *(lpsrc + 47);
  }

LABEL_27:
  if ((v4 & 0xFF0000) == 0)
  {
    goto LABEL_73;
  }

  if ((v4 & 0x10000) != 0)
  {
    v9 = *(lpsrc + 18);
    if (v9 >= 6)
    {
      __assert_rtn("set_plan_source", "CCMetricsCP.pb.h", 8196, "::awd::metrics::CommCenterCellularPlanTransferPlanSource_IsValid(value)");
    }

    *(this + 47) |= 0x10000u;
    *(this + 18) = v9;
    v4 = *(lpsrc + 47);
  }

  if ((v4 & 0x20000) != 0)
  {
    v10 = *(lpsrc + 8);
    *(this + 47) |= 0x20000u;
    v11 = *(this + 8);
    if (v11 == MEMORY[0x277D82C30])
    {
      operator new();
    }

    std::string::operator=(v11, v10);
    v4 = *(lpsrc + 47);
  }

  if ((v4 & 0x40000) != 0)
  {
    v12 = *(lpsrc + 19);
    if (v12 >= 4)
    {
      __assert_rtn("set_internet_transport", "CCMetricsCP.pb.h", 8289, "::awd::metrics::CommCenterCellularPlanInternetTransport_IsValid(value)");
    }

    *(this + 47) |= 0x40000u;
    *(this + 19) = v12;
    v4 = *(lpsrc + 47);
  }

  if ((v4 & 0x80000) != 0)
  {
    v27 = *(lpsrc + 59);
    *(this + 47) |= 0x80000u;
    *(this + 59) = v27;
    v4 = *(lpsrc + 47);
    if ((v4 & 0x100000) == 0)
    {
LABEL_40:
      if ((v4 & 0x200000) == 0)
      {
        goto LABEL_41;
      }

      goto LABEL_66;
    }
  }

  else if ((v4 & 0x100000) == 0)
  {
    goto LABEL_40;
  }

  v28 = *(lpsrc + 128);
  *(this + 47) |= 0x100000u;
  *(this + 128) = v28;
  v4 = *(lpsrc + 47);
  if ((v4 & 0x200000) == 0)
  {
LABEL_41:
    if ((v4 & 0x400000) == 0)
    {
      goto LABEL_42;
    }

    goto LABEL_67;
  }

LABEL_66:
  v29 = *(lpsrc + 22);
  *(this + 47) |= 0x200000u;
  *(this + 22) = v29;
  v4 = *(lpsrc + 47);
  if ((v4 & 0x400000) == 0)
  {
LABEL_42:
    if ((v4 & 0x800000) == 0)
    {
      goto LABEL_73;
    }

    goto LABEL_70;
  }

LABEL_67:
  v30 = *(lpsrc + 10);
  *(this + 47) |= 0x400000u;
  v31 = *(this + 10);
  if (v31 == MEMORY[0x277D82C30])
  {
    operator new();
  }

  std::string::operator=(v31, v30);
  v4 = *(lpsrc + 47);
  if ((v4 & 0x800000) != 0)
  {
LABEL_70:
    v32 = *(lpsrc + 12);
    *(this + 47) |= 0x800000u;
    v33 = *(this + 12);
    if (v33 == MEMORY[0x277D82C30])
    {
      operator new();
    }

    std::string::operator=(v33, v32);
    v4 = *(lpsrc + 47);
  }

LABEL_73:
  if (!HIBYTE(v4))
  {
    goto LABEL_82;
  }

  if ((v4 & 0x1000000) != 0)
  {
    v45 = *(lpsrc + 23);
    *(this + 47) |= 0x1000000u;
    *(this + 23) = v45;
    v4 = *(lpsrc + 47);
    if ((v4 & 0x2000000) == 0)
    {
LABEL_76:
      if ((v4 & 0x4000000) == 0)
      {
        goto LABEL_77;
      }

      goto LABEL_107;
    }
  }

  else if ((v4 & 0x2000000) == 0)
  {
    goto LABEL_76;
  }

  v46 = *(lpsrc + 13);
  *(this + 47) |= 0x2000000u;
  *(this + 13) = v46;
  v4 = *(lpsrc + 47);
  if ((v4 & 0x4000000) == 0)
  {
LABEL_77:
    if ((v4 & 0x8000000) == 0)
    {
      goto LABEL_78;
    }

    goto LABEL_110;
  }

LABEL_107:
  v47 = *(lpsrc + 14);
  *(this + 47) |= 0x4000000u;
  v48 = *(this + 14);
  if (v48 == MEMORY[0x277D82C30])
  {
    operator new();
  }

  std::string::operator=(v48, v47);
  v4 = *(lpsrc + 47);
  if ((v4 & 0x8000000) == 0)
  {
LABEL_78:
    if ((v4 & 0x10000000) == 0)
    {
      goto LABEL_79;
    }

    goto LABEL_111;
  }

LABEL_110:
  v49 = *(lpsrc + 15);
  *(this + 47) |= 0x8000000u;
  *(this + 15) = v49;
  v4 = *(lpsrc + 47);
  if ((v4 & 0x10000000) == 0)
  {
LABEL_79:
    if ((v4 & 0x20000000) == 0)
    {
      goto LABEL_80;
    }

    goto LABEL_112;
  }

LABEL_111:
  v50 = *(lpsrc + 129);
  *(this + 47) |= 0x10000000u;
  *(this + 129) = v50;
  v4 = *(lpsrc + 47);
  if ((v4 & 0x20000000) == 0)
  {
LABEL_80:
    if ((v4 & 0x40000000) == 0)
    {
      goto LABEL_81;
    }

    goto LABEL_115;
  }

LABEL_112:
  v51 = *(lpsrc + 17);
  *(this + 47) |= 0x20000000u;
  v52 = *(this + 17);
  if (v52 == MEMORY[0x277D82C30])
  {
    operator new();
  }

  std::string::operator=(v52, v51);
  v4 = *(lpsrc + 47);
  if ((v4 & 0x40000000) == 0)
  {
LABEL_81:
    if ((v4 & 0x80000000) == 0)
    {
      goto LABEL_82;
    }

    goto LABEL_117;
  }

LABEL_115:
  v53 = *(lpsrc + 33);
  if (v53 >= 8)
  {
    __assert_rtn("set_transfer_flow_type", "CCMetricsCP.pb.h", 8746, "::awd::metrics::CommCenterCellularPlanTransferFlowType_IsValid(value)");
  }

  *(this + 47) |= 0x40000000u;
  *(this + 33) = v53;
  if ((*(lpsrc + 47) & 0x80000000) != 0)
  {
LABEL_117:
    v54 = *(lpsrc + 130);
    *(this + 47) |= 0x80000000;
    *(this + 130) = v54;
  }

LABEL_82:
  LOBYTE(v34) = *(lpsrc + 192);
  if (!v34)
  {
    return;
  }

  if (*(lpsrc + 192))
  {
    v35 = *(lpsrc + 18);
    *(this + 48) |= 1u;
    v36 = *(this + 18);
    if (v36 == MEMORY[0x277D82C30])
    {
      operator new();
    }

    std::string::operator=(v36, v35);
    v34 = *(lpsrc + 48);
    if ((v34 & 2) == 0)
    {
LABEL_85:
      if ((v34 & 4) == 0)
      {
        goto LABEL_86;
      }

      goto LABEL_95;
    }
  }

  else if ((*(lpsrc + 192) & 2) == 0)
  {
    goto LABEL_85;
  }

  v37 = *(lpsrc + 19);
  *(this + 48) |= 2u;
  v38 = *(this + 19);
  if (v38 == MEMORY[0x277D82C30])
  {
    operator new();
  }

  std::string::operator=(v38, v37);
  v34 = *(lpsrc + 48);
  if ((v34 & 4) == 0)
  {
LABEL_86:
    if ((v34 & 8) == 0)
    {
      goto LABEL_87;
    }

    goto LABEL_98;
  }

LABEL_95:
  v39 = *(lpsrc + 20);
  *(this + 48) |= 4u;
  v40 = *(this + 20);
  if (v40 == MEMORY[0x277D82C30])
  {
    operator new();
  }

  std::string::operator=(v40, v39);
  v34 = *(lpsrc + 48);
  if ((v34 & 8) == 0)
  {
LABEL_87:
    if ((v34 & 0x10) == 0)
    {
      return;
    }

    goto LABEL_101;
  }

LABEL_98:
  v41 = *(lpsrc + 21);
  *(this + 48) |= 8u;
  v42 = *(this + 21);
  if (v42 == MEMORY[0x277D82C30])
  {
    operator new();
  }

  std::string::operator=(v42, v41);
  if ((*(lpsrc + 48) & 0x10) != 0)
  {
LABEL_101:
    v43 = *(lpsrc + 22);
    *(this + 48) |= 0x10u;
    v44 = *(this + 22);
    if (v44 == MEMORY[0x277D82C30])
    {
      operator new();
    }

    std::string::operator=(v44, v43);
  }
}

void sub_2373B69C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::metrics::CommCenterCellularPlanTransferDurations::~CommCenterCellularPlanTransferDurations(awd::metrics::CommCenterCellularPlanTransferDurations *this)
{
  *this = &unk_284A5EE90;
  awd::configs::AggregationSpec::SharedDtor(*(this + 2));

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_284A5EE90;
  awd::configs::AggregationSpec::SharedDtor(*(this + 2));
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  JUMPOUT(0x2383CAFA0);
}

uint64_t awd::metrics::CommCenterCellularPlanTransferDurations::Clear(uint64_t this)
{
  v1 = *(this + 92);
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

    *(this + 24) = 0;
    *(this + 28) = 0;
    *(this + 44) = 0;
    *(this + 36) = 0;
    *(this + 52) = 0;
    v1 = *(this + 92);
  }

  if ((v1 & 0xFF00) != 0)
  {
    *(this + 72) = 0u;
    *(this + 56) = 0u;
  }

  *(this + 92) = 0;
  return this;
}

uint64_t awd::metrics::CommCenterCellularPlanTransferDurations::MergePartialFromCodedStream(awd::metrics::CommCenterCellularPlanTransferDurations *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
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
        if (TagFallback >> 3 > 6)
        {
          if (TagFallback >> 3 > 9)
          {
            if (v8 == 10)
            {
              if ((TagFallback & 7) == 0)
              {
                v21 = *(a2 + 1);
                v10 = *(a2 + 2);
                goto LABEL_118;
              }
            }

            else if (v8 == 11)
            {
              if ((TagFallback & 7) == 0)
              {
                v25 = *(a2 + 1);
                v10 = *(a2 + 2);
                goto LABEL_126;
              }
            }

            else if (v8 == 12 && (TagFallback & 7) == 0)
            {
              v14 = *(a2 + 1);
              v10 = *(a2 + 2);
              goto LABEL_134;
            }
          }

          else if (v8 == 7)
          {
            if ((TagFallback & 7) == 0)
            {
              v19 = *(a2 + 1);
              v10 = *(a2 + 2);
              goto LABEL_94;
            }
          }

          else if (v8 == 8)
          {
            if ((TagFallback & 7) == 0)
            {
              v23 = *(a2 + 1);
              v10 = *(a2 + 2);
              goto LABEL_102;
            }
          }

          else if (v8 == 9 && (TagFallback & 7) == 0)
          {
            v12 = *(a2 + 1);
            v10 = *(a2 + 2);
            goto LABEL_110;
          }

          goto LABEL_47;
        }

        if (TagFallback >> 3 > 3)
        {
          if (v8 == 4)
          {
            if ((TagFallback & 7) == 0)
            {
              v20 = *(a2 + 1);
              v10 = *(a2 + 2);
              goto LABEL_70;
            }
          }

          else if (v8 == 5)
          {
            if ((TagFallback & 7) == 0)
            {
              v24 = *(a2 + 1);
              v10 = *(a2 + 2);
              goto LABEL_78;
            }
          }

          else if (v8 == 6 && (TagFallback & 7) == 0)
          {
            v13 = *(a2 + 1);
            v10 = *(a2 + 2);
            goto LABEL_86;
          }

          goto LABEL_47;
        }

        if (v8 != 1)
        {
          break;
        }

        if ((TagFallback & 7) != 0)
        {
          goto LABEL_47;
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

        v22 = *(this + 23) | 1;
        *(this + 23) = v22;
        if (v18 < v15 && *v18 == 18)
        {
          *(a2 + 1) = v18 + 1;
          goto LABEL_56;
        }
      }

      if (v8 != 2)
      {
        break;
      }

      if (v9 != 2)
      {
        goto LABEL_47;
      }

      v22 = *(this + 23);
LABEL_56:
      *(this + 23) = v22 | 2;
      if (*(this + 2) == v5)
      {
        operator new();
      }

      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
      if (!result)
      {
        return result;
      }

      v26 = *(a2 + 1);
      v10 = *(a2 + 2);
      if (v26 < v10 && *v26 == 24)
      {
        v11 = v26 + 1;
        *(a2 + 1) = v11;
LABEL_62:
        v49 = 0;
        if (v11 >= v10 || (v27 = *v11, (v27 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v49);
          if (!result)
          {
            return result;
          }

          v27 = v49;
          v28 = *(a2 + 1);
          v10 = *(a2 + 2);
        }

        else
        {
          v28 = v11 + 1;
          *(a2 + 1) = v28;
        }

        *(this + 24) = v27 != 0;
        *(this + 23) |= 4u;
        if (v28 < v10 && *v28 == 32)
        {
          v20 = v28 + 1;
          *(a2 + 1) = v20;
LABEL_70:
          v48 = 0;
          if (v20 >= v10 || (v29 = *v20, (v29 & 0x80000000) != 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v48);
            if (!result)
            {
              return result;
            }

            v29 = v48;
            v30 = *(a2 + 1);
            v10 = *(a2 + 2);
          }

          else
          {
            v30 = v20 + 1;
            *(a2 + 1) = v30;
          }

          *(this + 25) = v29 != 0;
          *(this + 23) |= 8u;
          if (v30 < v10 && *v30 == 40)
          {
            v24 = v30 + 1;
            *(a2 + 1) = v24;
LABEL_78:
            if (v24 >= v10 || (v31 = *v24, v31 < 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 7);
              if (!result)
              {
                return result;
              }

              v32 = *(a2 + 1);
              v10 = *(a2 + 2);
            }

            else
            {
              *(this + 7) = v31;
              v32 = v24 + 1;
              *(a2 + 1) = v32;
            }

            *(this + 23) |= 0x10u;
            if (v32 < v10 && *v32 == 48)
            {
              v13 = v32 + 1;
              *(a2 + 1) = v13;
LABEL_86:
              if (v13 >= v10 || (v33 = *v13, v33 < 0))
              {
                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 4);
                if (!result)
                {
                  return result;
                }

                v34 = *(a2 + 1);
                v10 = *(a2 + 2);
              }

              else
              {
                *(this + 4) = v33;
                v34 = v13 + 1;
                *(a2 + 1) = v34;
              }

              *(this + 23) |= 0x20u;
              if (v34 < v10 && *v34 == 56)
              {
                v19 = v34 + 1;
                *(a2 + 1) = v19;
LABEL_94:
                if (v19 >= v10 || (v35 = *v19, v35 < 0))
                {
                  result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 5);
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
                  v36 = v19 + 1;
                  *(a2 + 1) = v36;
                }

                *(this + 23) |= 0x40u;
                if (v36 < v10 && *v36 == 64)
                {
                  v23 = v36 + 1;
                  *(a2 + 1) = v23;
LABEL_102:
                  if (v23 >= v10 || (v37 = *v23, v37 < 0))
                  {
                    result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 6);
                    if (!result)
                    {
                      return result;
                    }

                    v38 = *(a2 + 1);
                    v10 = *(a2 + 2);
                  }

                  else
                  {
                    *(this + 6) = v37;
                    v38 = v23 + 1;
                    *(a2 + 1) = v38;
                  }

                  *(this + 23) |= 0x80u;
                  if (v38 < v10 && *v38 == 72)
                  {
                    v12 = v38 + 1;
                    *(a2 + 1) = v12;
LABEL_110:
                    if (v12 >= v10 || (v39 = *v12, v39 < 0))
                    {
                      result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 7);
                      if (!result)
                      {
                        return result;
                      }

                      v40 = *(a2 + 1);
                      v10 = *(a2 + 2);
                    }

                    else
                    {
                      *(this + 7) = v39;
                      v40 = v12 + 1;
                      *(a2 + 1) = v40;
                    }

                    *(this + 23) |= 0x100u;
                    if (v40 < v10 && *v40 == 80)
                    {
                      v21 = v40 + 1;
                      *(a2 + 1) = v21;
LABEL_118:
                      if (v21 >= v10 || (v41 = *v21, v41 < 0))
                      {
                        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 8);
                        if (!result)
                        {
                          return result;
                        }

                        v42 = *(a2 + 1);
                        v10 = *(a2 + 2);
                      }

                      else
                      {
                        *(this + 8) = v41;
                        v42 = v21 + 1;
                        *(a2 + 1) = v42;
                      }

                      *(this + 23) |= 0x200u;
                      if (v42 < v10 && *v42 == 88)
                      {
                        v25 = v42 + 1;
                        *(a2 + 1) = v25;
LABEL_126:
                        if (v25 >= v10 || (v43 = *v25, v43 < 0))
                        {
                          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 9);
                          if (!result)
                          {
                            return result;
                          }

                          v44 = *(a2 + 1);
                          v10 = *(a2 + 2);
                        }

                        else
                        {
                          *(this + 9) = v43;
                          v44 = v25 + 1;
                          *(a2 + 1) = v44;
                        }

                        *(this + 23) |= 0x400u;
                        if (v44 < v10 && *v44 == 96)
                        {
                          v14 = v44 + 1;
                          *(a2 + 1) = v14;
LABEL_134:
                          if (v14 >= v10 || (v45 = *v14, v45 < 0))
                          {
                            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 10);
                            if (!result)
                            {
                              return result;
                            }

                            v46 = *(a2 + 1);
                            v10 = *(a2 + 2);
                          }

                          else
                          {
                            *(this + 10) = v45;
                            v46 = v14 + 1;
                            *(a2 + 1) = v46;
                          }

                          *(this + 23) |= 0x800u;
                          if (v46 == v10 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
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

    if (v8 == 3 && (TagFallback & 7) == 0)
    {
      v11 = *(a2 + 1);
      v10 = *(a2 + 2);
      goto LABEL_62;
    }

LABEL_47:
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

uint64_t awd::metrics::CommCenterCellularPlanTransferDurations::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
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

      goto LABEL_16;
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

    goto LABEL_17;
  }

LABEL_16:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(3, *(v5 + 24), a2, a4);
  v6 = *(v5 + 92);
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
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(4, *(v5 + 25), a2, a4);
  v6 = *(v5 + 92);
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
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(5, *(v5 + 28), a2, a4);
  v6 = *(v5 + 92);
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
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(6, *(v5 + 32), a2, a4);
  v6 = *(v5 + 92);
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
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(7, *(v5 + 40), a2, a4);
  v6 = *(v5 + 92);
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
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(8, *(v5 + 48), a2, a4);
  v6 = *(v5 + 92);
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
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(9, *(v5 + 56), a2, a4);
  v6 = *(v5 + 92);
  if ((v6 & 0x200) == 0)
  {
LABEL_11:
    if ((v6 & 0x400) == 0)
    {
      goto LABEL_12;
    }

LABEL_24:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(0xB, *(v5 + 72), a2, a4);
    if ((*(v5 + 92) & 0x800) == 0)
    {
      return this;
    }

    goto LABEL_25;
  }

LABEL_23:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(0xA, *(v5 + 64), a2, a4);
  v6 = *(v5 + 92);
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
  v7 = *(v5 + 80);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(0xC, v7, a2, a4);
}

uint64_t awd::metrics::CommCenterCellularPlanTransferDurations::ByteSize(awd::metrics::CommCenterCellularPlanTransferDurations *this, unint64_t a2)
{
  v3 = *(this + 23);
  if (!v3)
  {
    v5 = 0;
    goto LABEL_21;
  }

  if (v3)
  {
    v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 1)) + 1;
    v3 = *(this + 23);
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
    v3 = *(this + 23);
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
LABEL_16:
  v5 = ((v3 >> 1) & 2) + v4 + ((v3 >> 2) & 2);
  if ((v3 & 0x10) != 0)
  {
    v13 = *(this + 7);
    if (v13 >= 0x80)
    {
      v14 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v13) + 1;
      v3 = *(this + 23);
    }

    else
    {
      v14 = 2;
    }

    v5 = (v14 + v5);
    if ((v3 & 0x20) == 0)
    {
LABEL_18:
      if ((v3 & 0x40) == 0)
      {
        goto LABEL_19;
      }

      goto LABEL_37;
    }
  }

  else if ((v3 & 0x20) == 0)
  {
    goto LABEL_18;
  }

  v5 = v5 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 4)) + 1;
  v3 = *(this + 23);
  if ((v3 & 0x40) == 0)
  {
LABEL_19:
    if ((v3 & 0x80) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_20;
  }

LABEL_37:
  v5 = v5 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 5)) + 1;
  v3 = *(this + 23);
  if ((v3 & 0x80) != 0)
  {
LABEL_20:
    v5 = v5 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 6)) + 1;
    v3 = *(this + 23);
  }

LABEL_21:
  if ((v3 & 0xFF00) == 0)
  {
    goto LABEL_27;
  }

  if ((v3 & 0x100) != 0)
  {
    v5 = v5 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 7)) + 1;
    v3 = *(this + 23);
    if ((v3 & 0x200) == 0)
    {
LABEL_24:
      if ((v3 & 0x400) == 0)
      {
        goto LABEL_25;
      }

LABEL_32:
      v5 = v5 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 9)) + 1;
      if ((*(this + 23) & 0x800) == 0)
      {
        goto LABEL_27;
      }

      goto LABEL_26;
    }
  }

  else if ((v3 & 0x200) == 0)
  {
    goto LABEL_24;
  }

  v5 = v5 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 8)) + 1;
  v3 = *(this + 23);
  if ((v3 & 0x400) != 0)
  {
    goto LABEL_32;
  }

LABEL_25:
  if ((v3 & 0x800) != 0)
  {
LABEL_26:
    v5 = v5 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 10)) + 1;
  }

LABEL_27:
  *(this + 22) = v5;
  return v5;
}

void awd::metrics::CommCenterCellularPlanTransferDurations::CheckTypeAndMergeFrom(const std::string **this, const std::string **lpsrc)
{
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  if (lpsrc == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v18);
  }

  v4 = *(lpsrc + 23);
  if (!v4)
  {
    goto LABEL_14;
  }

  if (v4)
  {
    v7 = lpsrc[1];
    *(this + 23) |= 1u;
    this[1] = v7;
    v4 = *(lpsrc + 23);
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

  v8 = lpsrc[2];
  *(this + 23) |= 2u;
  v9 = this[2];
  if (v9 == MEMORY[0x277D82C30])
  {
    operator new();
  }

  std::string::operator=(v9, v8);
  v4 = *(lpsrc + 23);
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
  v10 = *(lpsrc + 24);
  *(this + 23) |= 4u;
  *(this + 24) = v10;
  v4 = *(lpsrc + 23);
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
  v11 = *(lpsrc + 25);
  *(this + 23) |= 8u;
  *(this + 25) = v11;
  v4 = *(lpsrc + 23);
  if ((v4 & 0x10) == 0)
  {
LABEL_10:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_11;
    }

LABEL_28:
    v13 = lpsrc[4];
    *(this + 23) |= 0x20u;
    this[4] = v13;
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

    goto LABEL_29;
  }

LABEL_27:
  v12 = *(lpsrc + 7);
  *(this + 23) |= 0x10u;
  *(this + 7) = v12;
  v4 = *(lpsrc + 23);
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
  v14 = lpsrc[5];
  *(this + 23) |= 0x40u;
  this[5] = v14;
  v4 = *(lpsrc + 23);
  if ((v4 & 0x80) != 0)
  {
LABEL_13:
    v5 = lpsrc[6];
    *(this + 23) |= 0x80u;
    this[6] = v5;
    v4 = *(lpsrc + 23);
  }

LABEL_14:
  if ((v4 & 0xFF00) == 0)
  {
    return;
  }

  if ((v4 & 0x100) != 0)
  {
    v15 = lpsrc[7];
    *(this + 23) |= 0x100u;
    this[7] = v15;
    v4 = *(lpsrc + 23);
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

  v16 = lpsrc[8];
  *(this + 23) |= 0x200u;
  this[8] = v16;
  v4 = *(lpsrc + 23);
  if ((v4 & 0x400) == 0)
  {
LABEL_18:
    if ((v4 & 0x800) == 0)
    {
      return;
    }

    goto LABEL_19;
  }

LABEL_33:
  v17 = lpsrc[9];
  *(this + 23) |= 0x400u;
  this[9] = v17;
  if ((*(lpsrc + 23) & 0x800) != 0)
  {
LABEL_19:
    v6 = lpsrc[10];
    *(this + 23) |= 0x800u;
    this[10] = v6;
  }
}

void sub_2373B77E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t awd::metrics::CommCenterCellularPlanSourceTransferDetail::SharedCtor(uint64_t this)
{
  v1 = MEMORY[0x277D82C30];
  *(this + 140) = 0;
  *(this + 8) = 0;
  *(this + 16) = v1;
  *(this + 24) = v1;
  *(this + 32) = 0;
  *(this + 40) = v1;
  *(this + 48) = v1;
  *(this + 56) = 0;
  *(this + 64) = 0;
  *(this + 72) = 0;
  *(this + 80) = v1;
  *(this + 136) = 0;
  *(this + 88) = 0;
  *(this + 96) = v1;
  *(this + 104) = v1;
  *(this + 112) = v1;
  *(this + 120) = v1;
  *(this + 128) = v1;
  return this;
}

void *awd::metrics::CommCenterCellularPlanSourceTransferDetail::SharedDtor(void *this)
{
  v1 = this;
  v2 = this[2];
  v3 = MEMORY[0x277D82C30];
  if (v2 != MEMORY[0x277D82C30] && v2 != 0)
  {
    if (*(v2 + 23) < 0)
    {
      operator delete(*v2);
    }

    this = MEMORY[0x2383CAFA0](v2, 0x1012C40EC159624);
  }

  v5 = v1[3];
  if (v5 != v3 && v5 != 0)
  {
    if (*(v5 + 23) < 0)
    {
      operator delete(*v5);
    }

    this = MEMORY[0x2383CAFA0](v5, 0x1012C40EC159624);
  }

  v7 = v1[5];
  if (v7 != v3 && v7 != 0)
  {
    if (*(v7 + 23) < 0)
    {
      operator delete(*v7);
    }

    this = MEMORY[0x2383CAFA0](v7, 0x1012C40EC159624);
  }

  v9 = v1[6];
  if (v9 != v3 && v9 != 0)
  {
    if (*(v9 + 23) < 0)
    {
      operator delete(*v9);
    }

    this = MEMORY[0x2383CAFA0](v9, 0x1012C40EC159624);
  }

  v11 = v1[10];
  if (v11 != v3 && v11)
  {
    if (*(v11 + 23) < 0)
    {
      operator delete(*v11);
    }

    this = MEMORY[0x2383CAFA0](v11, 0x1012C40EC159624);
  }

  v12 = v1[12];
  if (v12 != v3 && v12)
  {
    if (*(v12 + 23) < 0)
    {
      operator delete(*v12);
    }

    this = MEMORY[0x2383CAFA0](v12, 0x1012C40EC159624);
  }

  v13 = v1[13];
  if (v13 != v3 && v13)
  {
    if (*(v13 + 23) < 0)
    {
      operator delete(*v13);
    }

    this = MEMORY[0x2383CAFA0](v13, 0x1012C40EC159624);
  }

  v14 = v1[14];
  if (v14 != v3 && v14)
  {
    if (*(v14 + 23) < 0)
    {
      operator delete(*v14);
    }

    this = MEMORY[0x2383CAFA0](v14, 0x1012C40EC159624);
  }

  v15 = v1[15];
  if (v15 != v3 && v15)
  {
    if (*(v15 + 23) < 0)
    {
      operator delete(*v15);
    }

    this = MEMORY[0x2383CAFA0](v15, 0x1012C40EC159624);
  }

  v16 = v1[16];
  if (v16 != v3 && v16)
  {
    if (*(v16 + 23) < 0)
    {
      operator delete(*v16);
    }

    JUMPOUT(0x2383CAFA0);
  }

  return this;
}

void awd::metrics::CommCenterCellularPlanSourceTransferDetail::~CommCenterCellularPlanSourceTransferDetail(awd::metrics::CommCenterCellularPlanSourceTransferDetail *this)
{
  *this = &unk_284A5EF08;
  awd::metrics::CommCenterCellularPlanSourceTransferDetail::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_284A5EF08;
  awd::metrics::CommCenterCellularPlanSourceTransferDetail::SharedDtor(this);
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  JUMPOUT(0x2383CAFA0);
}

uint64_t awd::metrics::CommCenterCellularPlanSourceTransferDetail::Clear(uint64_t this)
{
  v1 = *(this + 144);
  v2 = MEMORY[0x277D82C30];
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

    *(this + 32) = 0;
    if ((*(this + 144) & 8) != 0)
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

    *(this + 36) = 0;
    v1 = *(this + 144);
  }

  if ((v1 & 0xFF00) != 0)
  {
    *(this + 68) = 0;
    if ((v1 & 0x400) != 0)
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

    *(this + 64) = 0;
    if ((*(this + 145) & 0x10) != 0)
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

    *(this + 56) = 0;
    *(this + 72) = 0;
    if ((*(this + 145) & 0x80) != 0)
    {
      v7 = *(this + 80);
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
  }

  v8 = *(this + 144);
  if ((v8 & 0xFF0000) != 0)
  {
    *(this + 88) = 0;
    *(this + 136) = 0;
    *(this + 70) = 0;
    if ((v8 & 0x80000) != 0)
    {
      v9 = *(this + 96);
      if (v9 != v2)
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

    *(this + 71) = 0;
    if ((*(this + 146) & 0x20) != 0)
    {
      v10 = *(this + 104);
      if (v10 != v2)
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

    if ((*(this + 146) & 0x40) != 0)
    {
      v11 = *(this + 112);
      if (v11 != v2)
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

    v8 = *(this + 144);
    if ((v8 & 0x800000) != 0)
    {
      v12 = *(this + 120);
      if (v12 != v2)
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

      v8 = *(this + 144);
    }
  }

  if ((v8 & 0x1000000) != 0)
  {
    v13 = *(this + 128);
    if (v13 != v2)
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

  *(this + 144) = 0;
  return this;
}

uint64_t awd::metrics::CommCenterCellularPlanSourceTransferDetail::MergePartialFromCodedStream(awd::metrics::CommCenterCellularPlanSourceTransferDetail *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
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
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_58;
        }

        v9 = *(a2 + 1);
        v8 = *(a2 + 2);
        if (v9 < v8)
        {
          v10 = *v9;
          if ((v10 & 0x8000000000000000) == 0)
          {
            *(this + 1) = v10;
            v11 = v9 + 1;
            *(a2 + 1) = v11;
LABEL_63:
            v26 = *(this + 36) | 1;
            *(this + 36) = v26;
            if (v11 < v8 && *v11 == 18)
            {
              *(a2 + 1) = v11 + 1;
              goto LABEL_66;
            }

            continue;
          }
        }

        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 1);
        if (result)
        {
          v11 = *(a2 + 1);
          v8 = *(a2 + 2);
          goto LABEL_63;
        }

        break;
      case 2u:
        if (v7 != 2)
        {
          goto LABEL_58;
        }

        v26 = *(this + 36);
LABEL_66:
        *(this + 36) = v26 | 2;
        if (*(this + 2) == MEMORY[0x277D82C30])
        {
          operator new();
        }

        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
        if (!result)
        {
          return result;
        }

        v39 = *(a2 + 1);
        v21 = *(a2 + 2);
        if (v39 >= v21 || *v39 != 24)
        {
          continue;
        }

        v22 = v39 + 1;
        *(a2 + 1) = v22;
LABEL_72:
        if (v22 >= v21 || (v40 = *v22, v40 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 8);
          if (!result)
          {
            return result;
          }

          v41 = *(a2 + 1);
          v21 = *(a2 + 2);
        }

        else
        {
          *(this + 8) = v40;
          v41 = v22 + 1;
          *(a2 + 1) = v41;
        }

        v24 = *(this + 36) | 4;
        *(this + 36) = v24;
        if (v41 >= v21 || *v41 != 34)
        {
          continue;
        }

        *(a2 + 1) = v41 + 1;
LABEL_80:
        *(this + 36) = v24 | 8;
        if (*(this + 3) == MEMORY[0x277D82C30])
        {
          operator new();
        }

        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
        if (!result)
        {
          return result;
        }

        v42 = *(a2 + 1);
        v18 = *(a2 + 2);
        if (v42 >= v18 || *v42 != 40)
        {
          continue;
        }

        v19 = v42 + 1;
        *(a2 + 1) = v19;
LABEL_86:
        v77[0] = 0;
        if (v19 >= v18 || (v43 = *v19, (v43 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v77);
          if (!result)
          {
            return result;
          }

          v43 = v77[0];
          v44 = *(a2 + 1);
          v18 = *(a2 + 2);
        }

        else
        {
          v44 = v19 + 1;
          *(a2 + 1) = v44;
        }

        *(this + 36) = v43 != 0;
        *(this + 36) |= 0x10u;
        if (v44 >= v18 || *v44 != 48)
        {
          continue;
        }

        v30 = v44 + 1;
        *(a2 + 1) = v30;
LABEL_94:
        v77[0] = 0;
        if (v30 >= v18 || (v45 = *v30, (v45 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v77);
          if (!result)
          {
            return result;
          }

          v45 = v77[0];
          v46 = *(a2 + 1);
          v18 = *(a2 + 2);
        }

        else
        {
          v46 = v30 + 1;
          *(a2 + 1) = v46;
        }

        *(this + 37) = v45 != 0;
        *(this + 36) |= 0x20u;
        if (v46 >= v18 || *v46 != 56)
        {
          continue;
        }

        v33 = v46 + 1;
        *(a2 + 1) = v33;
LABEL_102:
        v77[0] = 0;
        if (v33 >= v18 || (v47 = *v33, (v47 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v77);
          if (!result)
          {
            return result;
          }

          v47 = v77[0];
          v48 = *(a2 + 1);
          v18 = *(a2 + 2);
        }

        else
        {
          v48 = v33 + 1;
          *(a2 + 1) = v48;
        }

        *(this + 38) = v47 != 0;
        *(this + 36) |= 0x40u;
        if (v48 >= v18 || *v48 != 64)
        {
          continue;
        }

        v25 = v48 + 1;
        *(a2 + 1) = v25;
LABEL_110:
        v77[0] = 0;
        if (v25 >= v18 || (v49 = *v25, (v49 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v77);
          if (!result)
          {
            return result;
          }

          v49 = v77[0];
          v50 = *(a2 + 1);
          v18 = *(a2 + 2);
        }

        else
        {
          v50 = v25 + 1;
          *(a2 + 1) = v50;
        }

        *(this + 39) = v49 != 0;
        *(this + 36) |= 0x80u;
        if (v50 >= v18 || *v50 != 72)
        {
          continue;
        }

        v37 = v50 + 1;
        *(a2 + 1) = v37;
LABEL_118:
        v77[0] = 0;
        if (v37 >= v18 || (v51 = *v37, (v51 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v77);
          if (!result)
          {
            return result;
          }

          v51 = v77[0];
          v52 = *(a2 + 1);
          v18 = *(a2 + 2);
        }

        else
        {
          v52 = v37 + 1;
          *(a2 + 1) = v52;
        }

        *(this + 68) = v51 != 0;
        *(this + 36) |= 0x100u;
        if (v52 >= v18 || *v52 != 80)
        {
          continue;
        }

        v20 = v52 + 1;
        *(a2 + 1) = v20;
LABEL_126:
        v77[0] = 0;
        if (v20 >= v18 || (v53 = *v20, (v53 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v77);
          if (!result)
          {
            return result;
          }

          v53 = v77[0];
          v54 = *(a2 + 1);
          v18 = *(a2 + 2);
        }

        else
        {
          v54 = v20 + 1;
          *(a2 + 1) = v54;
        }

        *(this + 69) = v53 != 0;
        v36 = *(this + 36) | 0x200;
        *(this + 36) = v36;
        if (v54 >= v18 || *v54 != 90)
        {
          continue;
        }

        *(a2 + 1) = v54 + 1;
LABEL_134:
        *(this + 36) = v36 | 0x400;
        if (*(this + 5) == MEMORY[0x277D82C30])
        {
          operator new();
        }

        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
        if (!result)
        {
          return result;
        }

        v55 = *(a2 + 1);
        v16 = *(a2 + 2);
        if (v55 >= v16 || *v55 != 96)
        {
          continue;
        }

        v17 = v55 + 1;
        *(a2 + 1) = v17;
LABEL_140:
        v77[0] = 0;
        if (v17 >= v16 || (v56 = *v17, (v56 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v77);
          if (!result)
          {
            return result;
          }

          v56 = v77[0];
        }

        else
        {
          *(a2 + 1) = v17 + 1;
        }

        if (v56 <= 3)
        {
          *(this + 36) |= 0x800u;
          *(this + 16) = v56;
        }

        v57 = *(a2 + 1);
        if (v57 >= *(a2 + 2) || *v57 != 106)
        {
          continue;
        }

        *(a2 + 1) = v57 + 1;
LABEL_150:
        *(this + 36) |= 0x1000u;
        if (*(this + 6) == MEMORY[0x277D82C30])
        {
          operator new();
        }

        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
        if (!result)
        {
          return result;
        }

        v58 = *(a2 + 1);
        v14 = *(a2 + 2);
        if (v58 >= v14 || *v58 != 112)
        {
          continue;
        }

        v32 = v58 + 1;
        *(a2 + 1) = v32;
LABEL_156:
        *v77 = 0;
        if (v32 >= v14 || (v59 = *v32, v59 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, v77);
          if (!result)
          {
            return result;
          }

          v59 = *v77;
          v60 = *(a2 + 1);
          v14 = *(a2 + 2);
        }

        else
        {
          v60 = v32 + 1;
          *(a2 + 1) = v60;
        }

        *(this + 7) = v59;
        *(this + 36) |= 0x2000u;
        if (v60 >= v14 || *v60 != 120)
        {
          continue;
        }

        v15 = v60 + 1;
        *(a2 + 1) = v15;
LABEL_164:
        *v77 = 0;
        if (v15 >= v14 || (v61 = *v15, v61 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, v77);
          if (!result)
          {
            return result;
          }

          v61 = *v77;
          v62 = *(a2 + 1);
          v14 = *(a2 + 2);
        }

        else
        {
          v62 = (v15 + 1);
          *(a2 + 1) = v62;
        }

        *(this + 9) = v61;
        v23 = *(this + 36) | 0x4000;
        *(this + 36) = v23;
        if (v14 - v62 < 2 || *v62 != 130 || v62[1] != 1)
        {
          continue;
        }

        *(a2 + 1) = v62 + 2;
LABEL_173:
        *(this + 36) = v23 | 0x8000;
        if (*(this + 10) == MEMORY[0x277D82C30])
        {
          operator new();
        }

        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
        if (!result)
        {
          return result;
        }

        v63 = *(a2 + 1);
        v12 = *(a2 + 2);
        if (v12 - v63 < 2 || *v63 != 136 || v63[1] != 1)
        {
          continue;
        }

        v13 = (v63 + 2);
        *(a2 + 1) = v13;
LABEL_180:
        *v77 = 0;
        if (v13 >= v12 || (v64 = *v13, v64 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, v77);
          if (!result)
          {
            return result;
          }

          v64 = *v77;
          v65 = *(a2 + 1);
          v12 = *(a2 + 2);
        }

        else
        {
          v65 = (v13 + 1);
          *(a2 + 1) = v65;
        }

        *(this + 11) = v64;
        *(this + 36) |= 0x10000u;
        if (v12 - v65 < 2 || *v65 != 144 || v65[1] != 1)
        {
          continue;
        }

        v27 = (v65 + 2);
        *(a2 + 1) = v27;
LABEL_189:
        v77[0] = 0;
        if (v27 >= v12 || (v66 = *v27, (v66 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v77);
          if (!result)
          {
            return result;
          }

          v66 = v77[0];
        }

        else
        {
          *(a2 + 1) = v27 + 1;
        }

        if (v66 <= 7)
        {
          *(this + 36) |= 0x20000u;
          *(this + 34) = v66;
        }

        v67 = *(a2 + 1);
        v34 = *(a2 + 2);
        if (v34 - v67 < 2 || *v67 != 152 || v67[1] != 1)
        {
          continue;
        }

        v35 = (v67 + 2);
        *(a2 + 1) = v35;
LABEL_200:
        v77[0] = 0;
        if (v35 >= v34 || (v68 = *v35, (v68 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v77);
          if (!result)
          {
            return result;
          }

          v68 = v77[0];
          v69 = *(a2 + 1);
          v34 = *(a2 + 2);
        }

        else
        {
          v69 = (v35 + 1);
          *(a2 + 1) = v69;
        }

        *(this + 70) = v68 != 0;
        v38 = *(this + 36) | 0x40000;
        *(this + 36) = v38;
        if (v34 - v69 < 2 || *v69 != 162 || v69[1] != 1)
        {
          continue;
        }

        *(a2 + 1) = v69 + 2;
LABEL_209:
        *(this + 36) = v38 | 0x80000;
        if (*(this + 12) == MEMORY[0x277D82C30])
        {
          operator new();
        }

        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
        if (!result)
        {
          return result;
        }

        v70 = *(a2 + 1);
        v28 = *(a2 + 2);
        if (v28 - v70 < 2 || *v70 != 168 || v70[1] != 1)
        {
          continue;
        }

        v29 = (v70 + 2);
        *(a2 + 1) = v29;
LABEL_216:
        v77[0] = 0;
        if (v29 >= v28 || (v71 = *v29, (v71 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v77);
          if (!result)
          {
            return result;
          }

          v71 = v77[0];
          v72 = *(a2 + 1);
          v28 = *(a2 + 2);
        }

        else
        {
          v72 = (v29 + 1);
          *(a2 + 1) = v72;
        }

        *(this + 71) = v71 != 0;
        v31 = *(this + 36) | 0x100000;
        *(this + 36) = v31;
        if (v28 - v72 < 2 || *v72 != 178 || v72[1] != 1)
        {
          continue;
        }

        *(a2 + 1) = v72 + 2;
LABEL_225:
        *(this + 36) = v31 | 0x200000;
        if (*(this + 13) == MEMORY[0x277D82C30])
        {
          operator new();
        }

        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
        if (!result)
        {
          return result;
        }

        v73 = *(a2 + 1);
        if (*(a2 + 4) - v73 < 2 || *v73 != 186 || v73[1] != 1)
        {
          continue;
        }

        *(a2 + 1) = v73 + 2;
LABEL_232:
        *(this + 36) |= 0x400000u;
        if (*(this + 14) == MEMORY[0x277D82C30])
        {
          operator new();
        }

        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
        if (!result)
        {
          return result;
        }

        v74 = *(a2 + 1);
        if (*(a2 + 4) - v74 < 2 || *v74 != 194 || v74[1] != 1)
        {
          continue;
        }

        *(a2 + 1) = v74 + 2;
LABEL_239:
        *(this + 36) |= 0x800000u;
        if (*(this + 15) == MEMORY[0x277D82C30])
        {
          operator new();
        }

        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
        if (!result)
        {
          return result;
        }

        v75 = *(a2 + 1);
        if (*(a2 + 4) - v75 < 2 || *v75 != 202 || v75[1] != 1)
        {
          continue;
        }

        *(a2 + 1) = v75 + 2;
LABEL_246:
        *(this + 36) |= 0x1000000u;
        if (*(this + 16) == MEMORY[0x277D82C30])
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
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_58;
        }

        v22 = *(a2 + 1);
        v21 = *(a2 + 2);
        goto LABEL_72;
      case 4u:
        if (v7 != 2)
        {
          goto LABEL_58;
        }

        v24 = *(this + 36);
        goto LABEL_80;
      case 5u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_58;
        }

        v19 = *(a2 + 1);
        v18 = *(a2 + 2);
        goto LABEL_86;
      case 6u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_58;
        }

        v30 = *(a2 + 1);
        v18 = *(a2 + 2);
        goto LABEL_94;
      case 7u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_58;
        }

        v33 = *(a2 + 1);
        v18 = *(a2 + 2);
        goto LABEL_102;
      case 8u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_58;
        }

        v25 = *(a2 + 1);
        v18 = *(a2 + 2);
        goto LABEL_110;
      case 9u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_58;
        }

        v37 = *(a2 + 1);
        v18 = *(a2 + 2);
        goto LABEL_118;
      case 0xAu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_58;
        }

        v20 = *(a2 + 1);
        v18 = *(a2 + 2);
        goto LABEL_126;
      case 0xBu:
        if (v7 != 2)
        {
          goto LABEL_58;
        }

        v36 = *(this + 36);
        goto LABEL_134;
      case 0xCu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_58;
        }

        v17 = *(a2 + 1);
        v16 = *(a2 + 2);
        goto LABEL_140;
      case 0xDu:
        if (v7 == 2)
        {
          goto LABEL_150;
        }

        goto LABEL_58;
      case 0xEu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_58;
        }

        v32 = *(a2 + 1);
        v14 = *(a2 + 2);
        goto LABEL_156;
      case 0xFu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_58;
        }

        v15 = *(a2 + 1);
        v14 = *(a2 + 2);
        goto LABEL_164;
      case 0x10u:
        if (v7 != 2)
        {
          goto LABEL_58;
        }

        v23 = *(this + 36);
        goto LABEL_173;
      case 0x11u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_58;
        }

        v13 = *(a2 + 1);
        v12 = *(a2 + 2);
        goto LABEL_180;
      case 0x12u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_58;
        }

        v27 = *(a2 + 1);
        v12 = *(a2 + 2);
        goto LABEL_189;
      case 0x13u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_58;
        }

        v35 = *(a2 + 1);
        v34 = *(a2 + 2);
        goto LABEL_200;
      case 0x14u:
        if (v7 != 2)
        {
          goto LABEL_58;
        }

        v38 = *(this + 36);
        goto LABEL_209;
      case 0x15u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_58;
        }

        v29 = *(a2 + 1);
        v28 = *(a2 + 2);
        goto LABEL_216;
      case 0x16u:
        if (v7 != 2)
        {
          goto LABEL_58;
        }

        v31 = *(this + 36);
        goto LABEL_225;
      case 0x17u:
        if (v7 == 2)
        {
          goto LABEL_232;
        }

        goto LABEL_58;
      case 0x18u:
        if (v7 != 2)
        {
          goto LABEL_58;
        }

        goto LABEL_239;
      case 0x19u:
        if (v7 == 2)
        {
          goto LABEL_246;
        }

        goto LABEL_58;
      default:
LABEL_58:
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

uint64_t awd::metrics::CommCenterCellularPlanSourceTransferDetail::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 144);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(1, *(this + 8), a2, a4);
    v6 = *(v5 + 144);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_29;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
  v6 = *(v5 + 144);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_30;
  }

LABEL_29:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(3, *(v5 + 32), a2, a4);
  v6 = *(v5 + 144);
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_31;
  }

LABEL_30:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
  v6 = *(v5 + 144);
  if ((v6 & 0x10) == 0)
  {
LABEL_6:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_32;
  }

LABEL_31:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(5, *(v5 + 36), a2, a4);
  v6 = *(v5 + 144);
  if ((v6 & 0x20) == 0)
  {
LABEL_7:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_33;
  }

LABEL_32:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(6, *(v5 + 37), a2, a4);
  v6 = *(v5 + 144);
  if ((v6 & 0x40) == 0)
  {
LABEL_8:
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_34;
  }

LABEL_33:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(7, *(v5 + 38), a2, a4);
  v6 = *(v5 + 144);
  if ((v6 & 0x80) == 0)
  {
LABEL_9:
    if ((v6 & 0x100) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_35;
  }

LABEL_34:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(8, *(v5 + 39), a2, a4);
  v6 = *(v5 + 144);
  if ((v6 & 0x100) == 0)
  {
LABEL_10:
    if ((v6 & 0x200) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_36;
  }

LABEL_35:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(9, *(v5 + 68), a2, a4);
  v6 = *(v5 + 144);
  if ((v6 & 0x200) == 0)
  {
LABEL_11:
    if ((v6 & 0x400) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_37;
  }

LABEL_36:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(0xA, *(v5 + 69), a2, a4);
  v6 = *(v5 + 144);
  if ((v6 & 0x400) == 0)
  {
LABEL_12:
    if ((v6 & 0x800) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_38;
  }

LABEL_37:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
  v6 = *(v5 + 144);
  if ((v6 & 0x800) == 0)
  {
LABEL_13:
    if ((v6 & 0x1000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_39;
  }

LABEL_38:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(0xC, *(v5 + 64), a2, a4);
  v6 = *(v5 + 144);
  if ((v6 & 0x1000) == 0)
  {
LABEL_14:
    if ((v6 & 0x2000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_40;
  }

LABEL_39:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
  v6 = *(v5 + 144);
  if ((v6 & 0x2000) == 0)
  {
LABEL_15:
    if ((v6 & 0x4000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_41;
  }

LABEL_40:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt64(0xE, *(v5 + 56), a2, a4);
  v6 = *(v5 + 144);
  if ((v6 & 0x4000) == 0)
  {
LABEL_16:
    if ((v6 & 0x8000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_42;
  }

LABEL_41:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt64(0xF, *(v5 + 72), a2, a4);
  v6 = *(v5 + 144);
  if ((v6 & 0x8000) == 0)
  {
LABEL_17:
    if ((v6 & 0x10000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_43;
  }

LABEL_42:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
  v6 = *(v5 + 144);
  if ((v6 & 0x10000) == 0)
  {
LABEL_18:
    if ((v6 & 0x20000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_44;
  }

LABEL_43:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt64(0x11, *(v5 + 88), a2, a4);
  v6 = *(v5 + 144);
  if ((v6 & 0x20000) == 0)
  {
LABEL_19:
    if ((v6 & 0x40000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_45;
  }

LABEL_44:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(0x12, *(v5 + 136), a2, a4);
  v6 = *(v5 + 144);
  if ((v6 & 0x40000) == 0)
  {
LABEL_20:
    if ((v6 & 0x80000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_46;
  }

LABEL_45:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(0x13, *(v5 + 70), a2, a4);
  v6 = *(v5 + 144);
  if ((v6 & 0x80000) == 0)
  {
LABEL_21:
    if ((v6 & 0x100000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_47;
  }

LABEL_46:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
  v6 = *(v5 + 144);
  if ((v6 & 0x100000) == 0)
  {
LABEL_22:
    if ((v6 & 0x200000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_48;
  }

LABEL_47:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(0x15, *(v5 + 71), a2, a4);
  v6 = *(v5 + 144);
  if ((v6 & 0x200000) == 0)
  {
LABEL_23:
    if ((v6 & 0x400000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_49;
  }

LABEL_48:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
  v6 = *(v5 + 144);
  if ((v6 & 0x400000) == 0)
  {
LABEL_24:
    if ((v6 & 0x800000) == 0)
    {
      goto LABEL_25;
    }

LABEL_50:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
    if ((*(v5 + 144) & 0x1000000) == 0)
    {
      return this;
    }

    goto LABEL_51;
  }

LABEL_49:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
  v6 = *(v5 + 144);
  if ((v6 & 0x800000) != 0)
  {
    goto LABEL_50;
  }

LABEL_25:
  if ((v6 & 0x1000000) == 0)
  {
    return this;
  }

LABEL_51:

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
}

uint64_t awd::metrics::CommCenterCellularPlanSourceTransferDetail::ByteSize(awd::metrics::CommCenterCellularPlanSourceTransferDetail *this, unint64_t a2)
{
  v3 = *(this + 36);
  if (!v3)
  {
    v5 = 0;
    goto LABEL_33;
  }

  if (v3)
  {
    v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 1)) + 1;
    v3 = *(this + 36);
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
    v3 = *(this + 36);
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
LABEL_16:
  if ((v3 & 4) != 0)
  {
    v12 = *(this + 8);
    if (v12 >= 0x80)
    {
      v13 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v12) + 1;
      v3 = *(this + 36);
    }

    else
    {
      v13 = 2;
    }

    v4 += v13;
    if ((v3 & 8) == 0)
    {
      goto LABEL_32;
    }

LABEL_23:
    v14 = *(this + 3);
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
      v3 = *(this + 36);
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

    v4 += v19 + v15 + 1;
    goto LABEL_32;
  }

  if ((v3 & 8) != 0)
  {
    goto LABEL_23;
  }

LABEL_32:
  v20.i64[0] = 0x200000002;
  v20.i64[1] = 0x200000002;
  v5 = (vaddvq_s32(vandq_s8(vshlq_u32(vdupq_n_s32(v3), xmmword_2373DF0E0), v20)) + v4);
LABEL_33:
  if ((v3 & 0xFF00) == 0)
  {
    goto LABEL_76;
  }

  v5 = ((v3 >> 7) & 2) + v5 + ((v3 >> 8) & 2);
  if ((v3 & 0x400) != 0)
  {
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
      v3 = *(this + 36);
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

    v5 = (v5 + v26 + v22 + 1);
    if ((v3 & 0x800) == 0)
    {
LABEL_36:
      if ((v3 & 0x1000) == 0)
      {
        goto LABEL_37;
      }

      goto LABEL_56;
    }
  }

  else if ((v3 & 0x800) == 0)
  {
    goto LABEL_36;
  }

  v27 = *(this + 16);
  if ((v27 & 0x80000000) != 0)
  {
    v28 = 11;
  }

  else if (v27 >= 0x80)
  {
    v28 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v27) + 1;
    v3 = *(this + 36);
  }

  else
  {
    v28 = 2;
  }

  v5 = (v28 + v5);
  if ((v3 & 0x1000) == 0)
  {
LABEL_37:
    if ((v3 & 0x2000) == 0)
    {
      goto LABEL_38;
    }

    goto LABEL_65;
  }

LABEL_56:
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
    v3 = *(this + 36);
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

  v5 = (v5 + v34 + v30 + 1);
  if ((v3 & 0x2000) == 0)
  {
LABEL_38:
    if ((v3 & 0x4000) == 0)
    {
      goto LABEL_39;
    }

    goto LABEL_66;
  }

LABEL_65:
  v5 = v5 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 7)) + 1;
  v3 = *(this + 36);
  if ((v3 & 0x4000) == 0)
  {
LABEL_39:
    if ((v3 & 0x8000) == 0)
    {
      goto LABEL_76;
    }

    goto LABEL_67;
  }

LABEL_66:
  v5 = v5 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 9)) + 1;
  v3 = *(this + 36);
  if ((v3 & 0x8000) == 0)
  {
    goto LABEL_76;
  }

LABEL_67:
  v35 = *(this + 10);
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
    v3 = *(this + 36);
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

  v5 = (v5 + v40 + v36 + 2);
LABEL_76:
  if ((v3 & 0xFF0000) == 0)
  {
    goto LABEL_104;
  }

  if ((v3 & 0x10000) != 0)
  {
    LODWORD(v5) = v5 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 11)) + 2;
    v3 = *(this + 36);
  }

  if ((v3 & 0x20000) != 0)
  {
    v41 = *(this + 34);
    if ((v41 & 0x80000000) != 0)
    {
      v42 = 12;
    }

    else if (v41 >= 0x80)
    {
      v42 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v41) + 2;
      v3 = *(this + 36);
    }

    else
    {
      v42 = 3;
    }

    LODWORD(v5) = v42 + v5;
  }

  if ((v3 & 0x40000) != 0)
  {
    LODWORD(v5) = v5 + 3;
  }

  if ((v3 & 0x80000) != 0)
  {
    v43 = *(this + 12);
    v44 = *(v43 + 23);
    v45 = v44;
    v46 = *(v43 + 8);
    if ((v44 & 0x80u) == 0)
    {
      v47 = *(v43 + 23);
    }

    else
    {
      v47 = v46;
    }

    if (v47 >= 0x80)
    {
      v48 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v47);
      v44 = *(v43 + 23);
      v46 = *(v43 + 8);
      v3 = *(this + 36);
      v45 = *(v43 + 23);
    }

    else
    {
      v48 = 1;
    }

    if (v45 < 0)
    {
      v44 = v46;
    }

    LODWORD(v5) = v5 + v48 + v44 + 2;
  }

  if ((v3 & 0x100000) != 0)
  {
    v5 = (v5 + 3);
  }

  else
  {
    v5 = v5;
  }

  if ((v3 & 0x200000) != 0)
  {
    v49 = *(this + 13);
    v50 = *(v49 + 23);
    v51 = v50;
    v52 = *(v49 + 8);
    if ((v50 & 0x80u) == 0)
    {
      v53 = *(v49 + 23);
    }

    else
    {
      v53 = v52;
    }

    if (v53 >= 0x80)
    {
      v54 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v53);
      v50 = *(v49 + 23);
      v52 = *(v49 + 8);
      v3 = *(this + 36);
      v51 = *(v49 + 23);
    }

    else
    {
      v54 = 1;
    }

    if (v51 < 0)
    {
      v50 = v52;
    }

    v5 = (v5 + v54 + v50 + 2);
    if ((v3 & 0x400000) == 0)
    {
LABEL_103:
      if ((v3 & 0x800000) == 0)
      {
        goto LABEL_104;
      }

      goto LABEL_124;
    }
  }

  else if ((v3 & 0x400000) == 0)
  {
    goto LABEL_103;
  }

  v55 = *(this + 14);
  v56 = *(v55 + 23);
  v57 = v56;
  v58 = *(v55 + 8);
  if ((v56 & 0x80u) == 0)
  {
    v59 = *(v55 + 23);
  }

  else
  {
    v59 = v58;
  }

  if (v59 >= 0x80)
  {
    v60 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v59);
    v56 = *(v55 + 23);
    v58 = *(v55 + 8);
    v3 = *(this + 36);
    v57 = *(v55 + 23);
  }

  else
  {
    v60 = 1;
  }

  if (v57 < 0)
  {
    v56 = v58;
  }

  v5 = (v5 + v60 + v56 + 2);
  if ((v3 & 0x800000) == 0)
  {
LABEL_104:
    if ((v3 & 0x1000000) == 0)
    {
      goto LABEL_142;
    }

    goto LABEL_133;
  }

LABEL_124:
  v61 = *(this + 15);
  v62 = *(v61 + 23);
  v63 = v62;
  v64 = *(v61 + 8);
  if ((v62 & 0x80u) == 0)
  {
    v65 = *(v61 + 23);
  }

  else
  {
    v65 = v64;
  }

  if (v65 >= 0x80)
  {
    v66 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v65);
    v62 = *(v61 + 23);
    v64 = *(v61 + 8);
    v3 = *(this + 36);
    v63 = *(v61 + 23);
  }

  else
  {
    v66 = 1;
  }

  if (v63 < 0)
  {
    v62 = v64;
  }

  v5 = (v5 + v66 + v62 + 2);
  if ((v3 & 0x1000000) != 0)
  {
LABEL_133:
    v67 = *(this + 16);
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

    v5 = (v5 + v72 + v68 + 2);
  }

LABEL_142:
  *(this + 35) = v5;
  return v5;
}

void awd::metrics::CommCenterCellularPlanSourceTransferDetail::CheckTypeAndMergeFrom(awd::metrics::CommCenterCellularPlanSourceTransferDetail *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  if (lpsrc == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v41);
  }

  v4 = *(lpsrc + 36);
  v5 = MEMORY[0x277D82C30];
  if (!v4)
  {
    goto LABEL_14;
  }

  if (v4)
  {
    v7 = *(lpsrc + 1);
    *(this + 36) |= 1u;
    *(this + 1) = v7;
    v4 = *(lpsrc + 36);
    if ((v4 & 2) == 0)
    {
LABEL_7:
      if ((v4 & 4) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_28;
    }
  }

  else if ((v4 & 2) == 0)
  {
    goto LABEL_7;
  }

  v8 = *(lpsrc + 2);
  *(this + 36) |= 2u;
  v9 = *(this + 2);
  if (v9 == v5)
  {
    operator new();
  }

  std::string::operator=(v9, v8);
  v4 = *(lpsrc + 36);
  if ((v4 & 4) == 0)
  {
LABEL_8:
    if ((v4 & 8) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_29;
  }

LABEL_28:
  v10 = *(lpsrc + 8);
  *(this + 36) |= 4u;
  *(this + 8) = v10;
  v4 = *(lpsrc + 36);
  if ((v4 & 8) == 0)
  {
LABEL_9:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_32;
  }

LABEL_29:
  v11 = *(lpsrc + 3);
  *(this + 36) |= 8u;
  v12 = *(this + 3);
  if (v12 == v5)
  {
    operator new();
  }

  std::string::operator=(v12, v11);
  v4 = *(lpsrc + 36);
  if ((v4 & 0x10) == 0)
  {
LABEL_10:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_11;
    }

LABEL_33:
    v14 = *(lpsrc + 37);
    *(this + 36) |= 0x20u;
    *(this + 37) = v14;
    v4 = *(lpsrc + 36);
    if ((v4 & 0x40) == 0)
    {
LABEL_12:
      if ((v4 & 0x80) == 0)
      {
        goto LABEL_14;
      }

      goto LABEL_13;
    }

    goto LABEL_34;
  }

LABEL_32:
  v13 = *(lpsrc + 36);
  *(this + 36) |= 0x10u;
  *(this + 36) = v13;
  v4 = *(lpsrc + 36);
  if ((v4 & 0x20) != 0)
  {
    goto LABEL_33;
  }

LABEL_11:
  if ((v4 & 0x40) == 0)
  {
    goto LABEL_12;
  }

LABEL_34:
  v15 = *(lpsrc + 38);
  *(this + 36) |= 0x40u;
  *(this + 38) = v15;
  v4 = *(lpsrc + 36);
  if ((v4 & 0x80) != 0)
  {
LABEL_13:
    v6 = *(lpsrc + 39);
    *(this + 36) |= 0x80u;
    *(this + 39) = v6;
    v4 = *(lpsrc + 36);
  }

LABEL_14:
  if ((v4 & 0xFF00) == 0)
  {
    goto LABEL_51;
  }

  if ((v4 & 0x100) != 0)
  {
    v16 = *(lpsrc + 68);
    *(this + 36) |= 0x100u;
    *(this + 68) = v16;
    v4 = *(lpsrc + 36);
    if ((v4 & 0x200) == 0)
    {
LABEL_17:
      if ((v4 & 0x400) == 0)
      {
        goto LABEL_18;
      }

      goto LABEL_38;
    }
  }

  else if ((v4 & 0x200) == 0)
  {
    goto LABEL_17;
  }

  v17 = *(lpsrc + 69);
  *(this + 36) |= 0x200u;
  *(this + 69) = v17;
  v4 = *(lpsrc + 36);
  if ((v4 & 0x400) == 0)
  {
LABEL_18:
    if ((v4 & 0x800) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_41;
  }

LABEL_38:
  v18 = *(lpsrc + 5);
  *(this + 36) |= 0x400u;
  v19 = *(this + 5);
  if (v19 == v5)
  {
    operator new();
  }

  std::string::operator=(v19, v18);
  v4 = *(lpsrc + 36);
  if ((v4 & 0x800) == 0)
  {
LABEL_19:
    if ((v4 & 0x1000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_43;
  }

LABEL_41:
  v20 = *(lpsrc + 16);
  if (v20 >= 4)
  {
    __assert_rtn("set_internet_transport", "CCMetricsCP.pb.h", 9847, "::awd::metrics::CommCenterCellularPlanInternetTransport_IsValid(value)");
  }

  *(this + 36) |= 0x800u;
  *(this + 16) = v20;
  v4 = *(lpsrc + 36);
  if ((v4 & 0x1000) == 0)
  {
LABEL_20:
    if ((v4 & 0x2000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_46;
  }

LABEL_43:
  v21 = *(lpsrc + 6);
  *(this + 36) |= 0x1000u;
  v22 = *(this + 6);
  if (v22 == v5)
  {
    operator new();
  }

  std::string::operator=(v22, v21);
  v4 = *(lpsrc + 36);
  if ((v4 & 0x2000) == 0)
  {
LABEL_21:
    if ((v4 & 0x4000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_47;
  }

LABEL_46:
  v23 = *(lpsrc + 7);
  *(this + 36) |= 0x2000u;
  *(this + 7) = v23;
  v4 = *(lpsrc + 36);
  if ((v4 & 0x4000) == 0)
  {
LABEL_22:
    if ((v4 & 0x8000) == 0)
    {
      goto LABEL_51;
    }

    goto LABEL_48;
  }

LABEL_47:
  v24 = *(lpsrc + 9);
  *(this + 36) |= 0x4000u;
  *(this + 9) = v24;
  v4 = *(lpsrc + 36);
  if ((v4 & 0x8000) == 0)
  {
    goto LABEL_51;
  }

LABEL_48:
  v25 = *(lpsrc + 10);
  *(this + 36) |= 0x8000u;
  v26 = *(this + 10);
  if (v26 == v5)
  {
    operator new();
  }

  std::string::operator=(v26, v25);
  v4 = *(lpsrc + 36);
LABEL_51:
  if ((v4 & 0xFF0000) == 0)
  {
    goto LABEL_63;
  }

  if ((v4 & 0x10000) != 0)
  {
    v27 = *(lpsrc + 11);
    *(this + 36) |= 0x10000u;
    *(this + 11) = v27;
    v4 = *(lpsrc + 36);
  }

  if ((v4 & 0x20000) != 0)
  {
    v28 = *(lpsrc + 34);
    if (v28 >= 8)
    {
      __assert_rtn("set_transfer_flow_type", "CCMetricsCP.pb.h", 10076, "::awd::metrics::CommCenterCellularPlanTransferFlowType_IsValid(value)");
    }

    *(this + 36) |= 0x20000u;
    *(this + 34) = v28;
    v4 = *(lpsrc + 36);
  }

  if ((v4 & 0x40000) != 0)
  {
    v29 = *(lpsrc + 70);
    *(this + 36) |= 0x40000u;
    *(this + 70) = v29;
    v4 = *(lpsrc + 36);
    if ((v4 & 0x80000) == 0)
    {
LABEL_59:
      if ((v4 & 0x100000) == 0)
      {
        goto LABEL_60;
      }

      goto LABEL_69;
    }
  }

  else if ((v4 & 0x80000) == 0)
  {
    goto LABEL_59;
  }

  v30 = *(lpsrc + 12);
  *(this + 36) |= 0x80000u;
  v31 = *(this + 12);
  if (v31 == v5)
  {
    operator new();
  }

  std::string::operator=(v31, v30);
  v4 = *(lpsrc + 36);
  if ((v4 & 0x100000) == 0)
  {
LABEL_60:
    if ((v4 & 0x200000) == 0)
    {
      goto LABEL_61;
    }

    goto LABEL_70;
  }

LABEL_69:
  v32 = *(lpsrc + 71);
  *(this + 36) |= 0x100000u;
  *(this + 71) = v32;
  v4 = *(lpsrc + 36);
  if ((v4 & 0x200000) == 0)
  {
LABEL_61:
    if ((v4 & 0x400000) == 0)
    {
      goto LABEL_62;
    }

    goto LABEL_73;
  }

LABEL_70:
  v33 = *(lpsrc + 13);
  *(this + 36) |= 0x200000u;
  v34 = *(this + 13);
  if (v34 == v5)
  {
    operator new();
  }

  std::string::operator=(v34, v33);
  v4 = *(lpsrc + 36);
  if ((v4 & 0x400000) == 0)
  {
LABEL_62:
    if ((v4 & 0x800000) == 0)
    {
      goto LABEL_63;
    }

    goto LABEL_76;
  }

LABEL_73:
  v35 = *(lpsrc + 14);
  *(this + 36) |= 0x400000u;
  v36 = *(this + 14);
  if (v36 == v5)
  {
    operator new();
  }

  std::string::operator=(v36, v35);
  v4 = *(lpsrc + 36);
  if ((v4 & 0x800000) == 0)
  {
LABEL_63:
    if ((v4 & 0x1000000) == 0)
    {
      return;
    }

    goto LABEL_79;
  }

LABEL_76:
  v37 = *(lpsrc + 15);
  *(this + 36) |= 0x800000u;
  v38 = *(this + 15);
  if (v38 == v5)
  {
    operator new();
  }

  std::string::operator=(v38, v37);
  if ((*(lpsrc + 36) & 0x1000000) != 0)
  {
LABEL_79:
    v39 = *(lpsrc + 16);
    *(this + 36) |= 0x1000000u;
    v40 = *(this + 16);
    if (v40 == v5)
    {
      operator new();
    }

    std::string::operator=(v40, v39);
  }
}

void sub_2373B98F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::metrics::CommCenterCellularPlanIDSError::~CommCenterCellularPlanIDSError(awd::metrics::CommCenterCellularPlanIDSError *this)
{
  *this = &unk_284A5EF80;
  awd::configs::AggregationSpec::SharedDtor(*(this + 2));

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_284A5EF80;
  awd::configs::AggregationSpec::SharedDtor(*(this + 2));
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  JUMPOUT(0x2383CAFA0);
}

uint64_t awd::metrics::CommCenterCellularPlanIDSError::Clear(uint64_t this)
{
  v1 = *(this + 32);
  if (v1)
  {
    *(this + 8) = 0;
    *(this + 24) = 0;
    if ((v1 & 4) != 0)
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

  *(this + 32) = 0;
  return this;
}

uint64_t awd::metrics::CommCenterCellularPlanIDSError::MergePartialFromCodedStream(awd::metrics::CommCenterCellularPlanIDSError *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
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
        if (TagFallback >> 3 != 3)
        {
          break;
        }

        if (v9 != 2)
        {
          goto LABEL_17;
        }

        v15 = *(this + 8);
LABEL_34:
        *(this + 8) = v15 | 4;
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

      if (v8 == 2)
      {
        break;
      }

      if (v8 != 1 || (TagFallback & 7) != 0)
      {
        goto LABEL_17;
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

      *(this + 8) |= 1u;
      if (v13 < v10 && *v13 == 16)
      {
        v14 = v13 + 1;
        *(a2 + 1) = v14;
LABEL_26:
        if (v14 >= v10 || (v16 = *v14, v16 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 6);
          if (!result)
          {
            return result;
          }

          v17 = *(a2 + 1);
          v10 = *(a2 + 2);
        }

        else
        {
          *(this + 6) = v16;
          v17 = v14 + 1;
          *(a2 + 1) = v17;
        }

        v15 = *(this + 8) | 2;
        *(this + 8) = v15;
        if (v17 < v10 && *v17 == 26)
        {
          *(a2 + 1) = v17 + 1;
          goto LABEL_34;
        }
      }
    }

    if ((TagFallback & 7) == 0)
    {
      v14 = *(a2 + 1);
      v10 = *(a2 + 2);
      goto LABEL_26;
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

uint64_t awd::metrics::CommCenterCellularPlanIDSError::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 32);
  if ((v6 & 1) == 0)
  {
    if ((v6 & 2) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(2, *(v5 + 24), a2, a4);
    if ((*(v5 + 32) & 4) == 0)
    {
      return this;
    }

    goto LABEL_7;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(1, *(this + 8), a2, a4);
  v6 = *(v5 + 32);
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

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
}

uint64_t awd::metrics::CommCenterCellularPlanIDSError::ByteSize(awd::metrics::CommCenterCellularPlanIDSError *this, unint64_t a2)
{
  LOBYTE(v3) = *(this + 32);
  if (!v3)
  {
    v4 = 0;
    goto LABEL_21;
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

  v5 = *(this + 6);
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
  if ((v3 & 4) != 0)
  {
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

    v4 = (v4 + v12 + v8 + 1);
  }

LABEL_21:
  *(this + 7) = v4;
  return v4;
}

void awd::metrics::CommCenterCellularPlanIDSError::CheckTypeAndMergeFrom(const std::string **this, const std::string **lpsrc)
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

  LOBYTE(v4) = *(lpsrc + 32);
  if (v4)
  {
    if (lpsrc[4])
    {
      v5 = lpsrc[1];
      *(this + 8) |= 1u;
      this[1] = v5;
      v4 = *(lpsrc + 8);
      if ((v4 & 2) == 0)
      {
LABEL_7:
        if ((v4 & 4) == 0)
        {
          return;
        }

LABEL_11:
        v7 = lpsrc[2];
        *(this + 8) |= 4u;
        v8 = this[2];
        if (v8 == MEMORY[0x277D82C30])
        {
          operator new();
        }

        std::string::operator=(v8, v7);
        return;
      }
    }

    else if ((lpsrc[4] & 2) == 0)
    {
      goto LABEL_7;
    }

    v6 = *(lpsrc + 6);
    *(this + 8) |= 2u;
    *(this + 6) = v6;
    if ((lpsrc[4] & 4) == 0)
    {
      return;
    }

    goto LABEL_11;
  }
}

void sub_2373B9F84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::metrics::CommCenterCellularPlanPendingProfileReleased::~CommCenterCellularPlanPendingProfileReleased(awd::metrics::CommCenterCellularPlanPendingProfileReleased *this)
{
  *this = &unk_284A5EFF8;
  awd::configs::AggregationSpec::SharedDtor(*(this + 2));

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_284A5EFF8;
  awd::configs::AggregationSpec::SharedDtor(*(this + 2));
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  JUMPOUT(0x2383CAFA0);
}

uint64_t awd::metrics::CommCenterCellularPlanPendingProfileReleased::Clear(uint64_t this)
{
  v1 = *(this + 40);
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

    *(this + 32) = 0;
    *(this + 24) = 0;
  }

  *(this + 40) = 0;
  return this;
}

uint64_t awd::metrics::CommCenterCellularPlanPendingProfileReleased::MergePartialFromCodedStream(awd::metrics::CommCenterCellularPlanPendingProfileReleased *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
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

        if (v8 != 1)
        {
          if (v8 != 2 || v9 != 2)
          {
            goto LABEL_22;
          }

          v12 = *(this + 10);
          goto LABEL_33;
        }

        if ((TagFallback & 7) != 0)
        {
          goto LABEL_22;
        }

        v18 = *(a2 + 1);
        v17 = *(a2 + 2);
        if (v18 >= v17 || (v19 = *v18, v19 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 1);
          if (!result)
          {
            return result;
          }

          v20 = *(a2 + 1);
          v17 = *(a2 + 2);
        }

        else
        {
          *(this + 1) = v19;
          v20 = v18 + 1;
          *(a2 + 1) = v20;
        }

        v12 = *(this + 10) | 1;
        *(this + 10) = v12;
        if (v20 < v17 && *v20 == 18)
        {
          *(a2 + 1) = v20 + 1;
LABEL_33:
          *(this + 10) = v12 | 2;
          if (*(this + 2) == v5)
          {
            operator new();
          }

          result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
          if (!result)
          {
            return result;
          }

          v21 = *(a2 + 1);
          v13 = *(a2 + 2);
          if (v21 < v13 && *v21 == 24)
          {
            v14 = v21 + 1;
            *(a2 + 1) = v14;
LABEL_39:
            v31 = 0;
            if (v14 >= v13 || (v22 = *v14, (v22 & 0x80000000) != 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v31);
              if (!result)
              {
                return result;
              }

              v22 = v31;
            }

            else
            {
              *(a2 + 1) = v14 + 1;
            }

            if (v22 <= 3)
            {
              *(this + 10) |= 4u;
              *(this + 6) = v22;
            }

            v23 = *(a2 + 1);
            v15 = *(a2 + 2);
            if (v23 < v15 && *v23 == 32)
            {
              v16 = v23 + 1;
              *(a2 + 1) = v16;
              goto LABEL_49;
            }
          }
        }
      }

      if (v8 == 3)
      {
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_22;
        }

        v14 = *(a2 + 1);
        v13 = *(a2 + 2);
        goto LABEL_39;
      }

      if (v8 != 4)
      {
        break;
      }

      if ((TagFallback & 7) != 0)
      {
        goto LABEL_22;
      }

      v16 = *(a2 + 1);
      v15 = *(a2 + 2);
LABEL_49:
      v30 = 0;
      if (v16 >= v15 || (v24 = *v16, (v24 & 0x80000000) != 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v30);
        if (!result)
        {
          return result;
        }

        v24 = v30;
      }

      else
      {
        *(a2 + 1) = v16 + 1;
      }

      if (v24 <= 2)
      {
        *(this + 10) |= 8u;
        *(this + 7) = v24;
      }

      v25 = *(a2 + 1);
      v10 = *(a2 + 2);
      if (v25 < v10 && *v25 == 40)
      {
        v11 = v25 + 1;
        *(a2 + 1) = v11;
LABEL_59:
        v29 = 0;
        if (v11 >= v10 || (v26 = *v11, (v26 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v29);
          if (!result)
          {
            return result;
          }

          v26 = v29;
          v27 = *(a2 + 1);
          v10 = *(a2 + 2);
        }

        else
        {
          v27 = v11 + 1;
          *(a2 + 1) = v27;
        }

        *(this + 32) = v26 != 0;
        *(this + 10) |= 0x10u;
        if (v27 == v10 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
        {
          *(a2 + 8) = 0;
          result = 1;
          *(a2 + 36) = 1;
          return result;
        }
      }
    }

    if (v8 == 5 && (TagFallback & 7) == 0)
    {
      v11 = *(a2 + 1);
      v10 = *(a2 + 2);
      goto LABEL_59;
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

uint64_t awd::metrics::CommCenterCellularPlanPendingProfileReleased::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
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

      goto LABEL_9;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
  v6 = *(v5 + 40);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

LABEL_10:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(4, *(v5 + 28), a2, a4);
    if ((*(v5 + 40) & 0x10) == 0)
    {
      return this;
    }

    goto LABEL_11;
  }

LABEL_9:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(3, *(v5 + 24), a2, a4);
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

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(5, v7, a2, a4);
}

uint64_t awd::metrics::CommCenterCellularPlanPendingProfileReleased::ByteSize(awd::metrics::CommCenterCellularPlanPendingProfileReleased *this, unint64_t a2)
{
  v3 = *(this + 10);
  if (v3)
  {
    if (v3)
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
      if ((v3 & 2) == 0)
      {
        goto LABEL_16;
      }
    }

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

    v4 += v11 + v7 + 1;
LABEL_16:
    if ((v3 & 4) != 0)
    {
      v12 = *(this + 6);
      if ((v12 & 0x80000000) != 0)
      {
        v13 = 11;
      }

      else if (v12 >= 0x80)
      {
        v13 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v12) + 1;
        v3 = *(this + 10);
      }

      else
      {
        v13 = 2;
      }

      v4 += v13;
      if ((v3 & 8) == 0)
      {
        goto LABEL_31;
      }
    }

    else if ((v3 & 8) == 0)
    {
LABEL_31:
      result = ((v3 >> 3) & 2) + v4;
      goto LABEL_32;
    }

    v14 = *(this + 7);
    if ((v14 & 0x80000000) != 0)
    {
      v15 = 11;
    }

    else if (v14 >= 0x80)
    {
      v15 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v14) + 1;
      v3 = *(this + 10);
    }

    else
    {
      v15 = 2;
    }

    v4 += v15;
    goto LABEL_31;
  }

  result = 0;
LABEL_32:
  *(this + 9) = result;
  return result;
}

void awd::metrics::CommCenterCellularPlanPendingProfileReleased::CheckTypeAndMergeFrom(awd::metrics::CommCenterCellularPlanPendingProfileReleased *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
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

  LOBYTE(v4) = *(lpsrc + 40);
  if (!v4)
  {
    return;
  }

  if (*(lpsrc + 40))
  {
    v6 = *(lpsrc + 1);
    *(this + 10) |= 1u;
    *(this + 1) = v6;
    v4 = *(lpsrc + 10);
    if ((v4 & 2) == 0)
    {
LABEL_7:
      if ((v4 & 4) == 0)
      {
        goto LABEL_8;
      }

LABEL_16:
      v9 = *(lpsrc + 6);
      if (v9 >= 4)
      {
        __assert_rtn("set_plan_type", "CCMetricsCP.pb.h", 10707, "::awd::metrics::CommCenterCellularPlanType_IsValid(value)");
      }

      *(this + 10) |= 4u;
      *(this + 6) = v9;
      v4 = *(lpsrc + 10);
      if ((v4 & 8) == 0)
      {
LABEL_9:
        if ((v4 & 0x10) == 0)
        {
          return;
        }

        goto LABEL_10;
      }

      goto LABEL_18;
    }
  }

  else if ((*(lpsrc + 40) & 2) == 0)
  {
    goto LABEL_7;
  }

  v7 = *(lpsrc + 2);
  *(this + 10) |= 2u;
  v8 = *(this + 2);
  if (v8 == MEMORY[0x277D82C30])
  {
    operator new();
  }

  std::string::operator=(v8, v7);
  v4 = *(lpsrc + 10);
  if ((v4 & 4) != 0)
  {
    goto LABEL_16;
  }

LABEL_8:
  if ((v4 & 8) == 0)
  {
    goto LABEL_9;
  }

LABEL_18:
  v10 = *(lpsrc + 7);
  if (v10 >= 3)
  {
    __assert_rtn("set_prev_status", "CCMetricsCP.pb.h", 10730, "::awd::metrics::CellularPlanPendingProfileStatus_IsValid(value)");
  }

  *(this + 10) |= 8u;
  *(this + 7) = v10;
  if ((*(lpsrc + 10) & 0x10) != 0)
  {
LABEL_10:
    v5 = *(lpsrc + 32);
    *(this + 10) |= 0x10u;
    *(this + 32) = v5;
  }
}

void sub_2373BA860(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::metrics::CommCenterCellularPlanMonitorModeCompleted::~CommCenterCellularPlanMonitorModeCompleted(awd::metrics::CommCenterCellularPlanMonitorModeCompleted *this)
{
  *this = &unk_284A5F070;
  awd::configs::AggregationSpec::SharedDtor(*(this + 2));

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_284A5F070;
  awd::configs::AggregationSpec::SharedDtor(*(this + 2));
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  JUMPOUT(0x2383CAFA0);
}

uint64_t awd::metrics::CommCenterCellularPlanMonitorModeCompleted::Clear(uint64_t this)
{
  v1 = *(this + 52);
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

    *(this + 44) = 0;
    *(this + 24) = 0;
    *(this + 32) = 0;
    *(this + 40) = 0;
  }

  *(this + 52) = 0;
  return this;
}

uint64_t awd::metrics::CommCenterCellularPlanMonitorModeCompleted::MergePartialFromCodedStream(awd::metrics::CommCenterCellularPlanMonitorModeCompleted *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
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
      if (TagFallback >> 3 > 4)
      {
        if (TagFallback >> 3 > 6)
        {
          if (v8 == 7)
          {
            if ((TagFallback & 7) == 0)
            {
              v24 = *(a2 + 1);
              v23 = *(a2 + 2);
              goto LABEL_86;
            }
          }

          else if (v8 == 8 && (TagFallback & 7) == 0)
          {
            v15 = *(a2 + 1);
            v14 = *(a2 + 2);
            goto LABEL_96;
          }
        }

        else if (v8 == 5)
        {
          if ((TagFallback & 7) == 0)
          {
            v20 = *(a2 + 1);
            v11 = *(a2 + 2);
            goto LABEL_68;
          }
        }

        else if (v8 == 6 && (TagFallback & 7) == 0)
        {
          v12 = *(a2 + 1);
          v11 = *(a2 + 2);
          goto LABEL_76;
        }

        goto LABEL_35;
      }

      if (TagFallback >> 3 > 2)
      {
        break;
      }

      if (v8 == 1)
      {
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_35;
        }

        v17 = *(a2 + 1);
        v16 = *(a2 + 2);
        if (v17 >= v16 || (v18 = *v17, v18 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 1);
          if (!result)
          {
            return result;
          }

          v19 = *(a2 + 1);
          v16 = *(a2 + 2);
        }

        else
        {
          *(this + 1) = v18;
          v19 = v17 + 1;
          *(a2 + 1) = v19;
        }

        v10 = *(this + 13) | 1;
        *(this + 13) = v10;
        if (v19 < v16 && *v19 == 18)
        {
          *(a2 + 1) = v19 + 1;
          goto LABEL_44;
        }
      }

      else
      {
        if (v8 != 2 || v9 != 2)
        {
          goto LABEL_35;
        }

        v10 = *(this + 13);
LABEL_44:
        *(this + 13) = v10 | 2;
        if (*(this + 2) == v5)
        {
          operator new();
        }

        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
        if (!result)
        {
          return result;
        }

        v25 = *(a2 + 1);
        v21 = *(a2 + 2);
        if (v25 < v21 && *v25 == 24)
        {
          v22 = v25 + 1;
          *(a2 + 1) = v22;
LABEL_50:
          v39 = 0;
          if (v22 >= v21 || (v26 = *v22, (v26 & 0x80000000) != 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v39);
            if (!result)
            {
              return result;
            }

            v26 = v39;
          }

          else
          {
            *(a2 + 1) = v22 + 1;
          }

          if (v26 <= 3)
          {
            *(this + 13) |= 4u;
            *(this + 6) = v26;
          }

          v27 = *(a2 + 1);
          v11 = *(a2 + 2);
          if (v27 < v11 && *v27 == 32)
          {
            v13 = v27 + 1;
            *(a2 + 1) = v13;
LABEL_60:
            v39 = 0;
            if (v13 >= v11 || (v28 = *v13, (v28 & 0x80000000) != 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v39);
              if (!result)
              {
                return result;
              }

              v28 = v39;
              v29 = *(a2 + 1);
              v11 = *(a2 + 2);
            }

            else
            {
              v29 = v13 + 1;
              *(a2 + 1) = v29;
            }

            *(this + 40) = v28 != 0;
            *(this + 13) |= 8u;
            if (v29 < v11 && *v29 == 40)
            {
              v20 = v29 + 1;
              *(a2 + 1) = v20;
LABEL_68:
              if (v20 >= v11 || (v30 = *v20, v30 < 0))
              {
                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 4);
                if (!result)
                {
                  return result;
                }

                v31 = *(a2 + 1);
                v11 = *(a2 + 2);
              }

              else
              {
                *(this + 4) = v30;
                v31 = v20 + 1;
                *(a2 + 1) = v31;
              }

              *(this + 13) |= 0x10u;
              if (v31 < v11 && *v31 == 48)
              {
                v12 = v31 + 1;
                *(a2 + 1) = v12;
LABEL_76:
                v39 = 0;
                if (v12 >= v11 || (v32 = *v12, (v32 & 0x80000000) != 0))
                {
                  result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v39);
                  if (!result)
                  {
                    return result;
                  }

                  v32 = v39;
                }

                else
                {
                  *(a2 + 1) = v12 + 1;
                }

                if (v32 <= 0x13)
                {
                  *(this + 13) |= 0x20u;
                  *(this + 7) = v32;
                }

                v33 = *(a2 + 1);
                v23 = *(a2 + 2);
                if (v33 < v23 && *v33 == 56)
                {
                  v24 = v33 + 1;
                  *(a2 + 1) = v24;
LABEL_86:
                  v39 = 0;
                  if (v24 >= v23 || (v34 = *v24, (v34 & 0x80000000) != 0))
                  {
                    result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v39);
                    if (!result)
                    {
                      return result;
                    }

                    v34 = v39;
                  }

                  else
                  {
                    *(a2 + 1) = v24 + 1;
                  }

                  if (v34 <= 5)
                  {
                    *(this + 13) |= 0x40u;
                    *(this + 11) = v34;
                  }

                  v35 = *(a2 + 1);
                  v14 = *(a2 + 2);
                  if (v35 < v14 && *v35 == 64)
                  {
                    v15 = v35 + 1;
                    *(a2 + 1) = v15;
LABEL_96:
                    v39 = 0;
                    if (v15 >= v14 || (v36 = *v15, (v36 & 0x80000000) != 0))
                    {
                      result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v39);
                      if (!result)
                      {
                        return result;
                      }

                      v36 = v39;
                      v37 = *(a2 + 1);
                      v14 = *(a2 + 2);
                    }

                    else
                    {
                      v37 = v15 + 1;
                      *(a2 + 1) = v37;
                    }

                    *(this + 41) = v36 != 0;
                    *(this + 13) |= 0x80u;
                    if (v37 == v14 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
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

    if (v8 == 3)
    {
      if ((TagFallback & 7) == 0)
      {
        v22 = *(a2 + 1);
        v21 = *(a2 + 2);
        goto LABEL_50;
      }
    }

    else if (v8 == 4 && (TagFallback & 7) == 0)
    {
      v13 = *(a2 + 1);
      v11 = *(a2 + 2);
      goto LABEL_60;
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

uint64_t awd::metrics::CommCenterCellularPlanMonitorModeCompleted::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 52);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(1, *(this + 8), a2, a4);
    v6 = *(v5 + 52);
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

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
  v6 = *(v5 + 52);
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
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(3, *(v5 + 24), a2, a4);
  v6 = *(v5 + 52);
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
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(4, *(v5 + 40), a2, a4);
  v6 = *(v5 + 52);
  if ((v6 & 0x10) == 0)
  {
LABEL_6:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_15;
  }

LABEL_14:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(5, *(v5 + 32), a2, a4);
  v6 = *(v5 + 52);
  if ((v6 & 0x20) == 0)
  {
LABEL_7:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_8;
    }

LABEL_16:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(7, *(v5 + 44), a2, a4);
    if ((*(v5 + 52) & 0x80) == 0)
    {
      return this;
    }

    goto LABEL_17;
  }

LABEL_15:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(6, *(v5 + 28), a2, a4);
  v6 = *(v5 + 52);
  if ((v6 & 0x40) != 0)
  {
    goto LABEL_16;
  }

LABEL_8:
  if ((v6 & 0x80) == 0)
  {
    return this;
  }

LABEL_17:
  v7 = *(v5 + 41);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(8, v7, a2, a4);
}

uint64_t awd::metrics::CommCenterCellularPlanMonitorModeCompleted::ByteSize(awd::metrics::CommCenterCellularPlanMonitorModeCompleted *this, unint64_t a2)
{
  v3 = *(this + 13);
  if (v3)
  {
    if (v3)
    {
      v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 1)) + 1;
      v3 = *(this + 13);
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
      v3 = *(this + 13);
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
LABEL_16:
    if ((v3 & 4) != 0)
    {
      v12 = *(this + 6);
      if ((v12 & 0x80000000) != 0)
      {
        v13 = 11;
      }

      else if (v12 >= 0x80)
      {
        v13 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v12) + 1;
        v3 = *(this + 13);
      }

      else
      {
        v13 = 2;
      }

      v4 += v13;
    }

    v14 = ((v3 >> 2) & 2) + v4;
    if ((v3 & 0x10) != 0)
    {
      v14 += wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 4)) + 1;
      v3 = *(this + 13);
      if ((v3 & 0x20) == 0)
      {
LABEL_25:
        if ((v3 & 0x40) == 0)
        {
LABEL_40:
          result = ((v3 >> 6) & 2) + v14;
          goto LABEL_41;
        }

LABEL_34:
        v17 = *(this + 11);
        if ((v17 & 0x80000000) != 0)
        {
          v18 = 11;
        }

        else if (v17 >= 0x80)
        {
          v18 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v17) + 1;
          v3 = *(this + 13);
        }

        else
        {
          v18 = 2;
        }

        v14 += v18;
        goto LABEL_40;
      }
    }

    else if ((v3 & 0x20) == 0)
    {
      goto LABEL_25;
    }

    v15 = *(this + 7);
    if ((v15 & 0x80000000) != 0)
    {
      v16 = 11;
    }

    else if (v15 >= 0x80)
    {
      v16 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v15) + 1;
      v3 = *(this + 13);
    }

    else
    {
      v16 = 2;
    }

    v14 += v16;
    if ((v3 & 0x40) == 0)
    {
      goto LABEL_40;
    }

    goto LABEL_34;
  }

  result = 0;
LABEL_41:
  *(this + 12) = result;
  return result;
}

void awd::metrics::CommCenterCellularPlanMonitorModeCompleted::CheckTypeAndMergeFrom(awd::metrics::CommCenterCellularPlanMonitorModeCompleted *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  if (lpsrc == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v14);
  }

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
    if ((v4 & 2) == 0)
    {
LABEL_7:
      if ((v4 & 4) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_19;
    }
  }

  else if ((*(lpsrc + 52) & 2) == 0)
  {
    goto LABEL_7;
  }

  v7 = *(lpsrc + 2);
  *(this + 13) |= 2u;
  v8 = *(this + 2);
  if (v8 == MEMORY[0x277D82C30])
  {
    operator new();
  }

  std::string::operator=(v8, v7);
  v4 = *(lpsrc + 13);
  if ((v4 & 4) == 0)
  {
LABEL_8:
    if ((v4 & 8) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_21;
  }

LABEL_19:
  v9 = *(lpsrc + 6);
  if (v9 >= 4)
  {
    __assert_rtn("set_plan_type", "CCMetricsCP.pb.h", 10871, "::awd::metrics::CommCenterCellularPlanType_IsValid(value)");
  }

  *(this + 13) |= 4u;
  *(this + 6) = v9;
  v4 = *(lpsrc + 13);
  if ((v4 & 8) == 0)
  {
LABEL_9:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_22;
  }

LABEL_21:
  v10 = *(lpsrc + 40);
  *(this + 13) |= 8u;
  *(this + 40) = v10;
  v4 = *(lpsrc + 13);
  if ((v4 & 0x10) == 0)
  {
LABEL_10:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_11;
    }

LABEL_23:
    v12 = *(lpsrc + 7);
    if (v12 >= 0x14)
    {
      __assert_rtn("set_install_type", "CCMetricsCP.pb.h", 10938, "::awd::metrics::CommCenterCellularPlanInstallType_IsValid(value)");
    }

    *(this + 13) |= 0x20u;
    *(this + 7) = v12;
    v4 = *(lpsrc + 13);
    if ((v4 & 0x40) == 0)
    {
LABEL_12:
      if ((v4 & 0x80) == 0)
      {
        return;
      }

      goto LABEL_13;
    }

    goto LABEL_25;
  }

LABEL_22:
  v11 = *(lpsrc + 4);
  *(this + 13) |= 0x10u;
  *(this + 4) = v11;
  v4 = *(lpsrc + 13);
  if ((v4 & 0x20) != 0)
  {
    goto LABEL_23;
  }

LABEL_11:
  if ((v4 & 0x40) == 0)
  {
    goto LABEL_12;
  }

LABEL_25:
  v13 = *(lpsrc + 11);
  if (v13 >= 6)
  {
    __assert_rtn("set_monitor_mode_type", "CCMetricsCP.pb.h", 10961, "::awd::metrics::CommCenterCellularPlanMonitorModeType_IsValid(value)");
  }

  *(this + 13) |= 0x40u;
  *(this + 11) = v13;
  if ((*(lpsrc + 13) & 0x80) != 0)
  {
LABEL_13:
    v5 = *(lpsrc + 41);
    *(this + 13) |= 0x80u;
    *(this + 41) = v5;
  }
}

void sub_2373BB400(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::metrics::CommCenterCellularPlanEntitlementPushNotification::~CommCenterCellularPlanEntitlementPushNotification(awd::metrics::CommCenterCellularPlanEntitlementPushNotification *this)
{
  *this = &unk_284A5F0E8;
  awd::configs::AggregationSpec::SharedDtor(*(this + 2));

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_284A5F0E8;
  awd::configs::AggregationSpec::SharedDtor(*(this + 2));
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  JUMPOUT(0x2383CAFA0);
}

uint64_t awd::metrics::CommCenterCellularPlanEntitlementPushNotification::Clear(uint64_t this)
{
  v1 = *(this + 36);
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

    *(this + 24) = 0;
  }

  *(this + 36) = 0;
  return this;
}

uint64_t awd::metrics::CommCenterCellularPlanEntitlementPushNotification::MergePartialFromCodedStream(awd::metrics::CommCenterCellularPlanEntitlementPushNotification *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
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

        v10 = *(this + 9) | 1;
        *(this + 9) = v10;
        if (v16 < v13 && *v16 == 18)
        {
          *(a2 + 1) = v16 + 1;
          goto LABEL_30;
        }
      }

      else
      {
        if (v8 != 2 || v9 != 2)
        {
          goto LABEL_21;
        }

        v10 = *(this + 9);
LABEL_30:
        *(this + 9) = v10 | 2;
        if (*(this + 2) == v5)
        {
          operator new();
        }

        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
        if (!result)
        {
          return result;
        }

        v19 = *(a2 + 1);
        v17 = *(a2 + 2);
        if (v19 < v17 && *v19 == 24)
        {
          v18 = v19 + 1;
          *(a2 + 1) = v18;
LABEL_36:
          v25 = 0;
          if (v18 >= v17 || (v20 = *v18, (v20 & 0x80000000) != 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v25);
            if (!result)
            {
              return result;
            }

            v20 = v25;
          }

          else
          {
            *(a2 + 1) = v18 + 1;
          }

          if (v20 <= 3)
          {
            *(this + 9) |= 4u;
            *(this + 6) = v20;
          }

          v21 = *(a2 + 1);
          v11 = *(a2 + 2);
          if (v21 < v11 && *v21 == 32)
          {
            v12 = v21 + 1;
            *(a2 + 1) = v12;
LABEL_46:
            v24 = 0;
            if (v12 >= v11 || (v22 = *v12, (v22 & 0x80000000) != 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v24);
              if (!result)
              {
                return result;
              }

              v22 = v24;
            }

            else
            {
              *(a2 + 1) = v12 + 1;
            }

            if (v22 <= 3)
            {
              *(this + 9) |= 8u;
              *(this + 7) = v22;
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
      }
    }

    if (v8 == 3)
    {
      if ((TagFallback & 7) == 0)
      {
        v18 = *(a2 + 1);
        v17 = *(a2 + 2);
        goto LABEL_36;
      }
    }

    else if (v8 == 4 && (TagFallback & 7) == 0)
    {
      v12 = *(a2 + 1);
      v11 = *(a2 + 2);
      goto LABEL_46;
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

uint64_t awd::metrics::CommCenterCellularPlanEntitlementPushNotification::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 36);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(1, *(this + 8), a2, a4);
    v6 = v5[9];
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

LABEL_8:
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(3, v5[6], a2, a4);
      if ((v5[9] & 8) == 0)
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
  v6 = v5[9];
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
  v7 = v5[7];

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(4, v7, a2, a4);
}

uint64_t awd::metrics::CommCenterCellularPlanEntitlementPushNotification::ByteSize(awd::metrics::CommCenterCellularPlanEntitlementPushNotification *this, unint64_t a2)
{
  LOBYTE(v3) = *(this + 36);
  if (!v3)
  {
    v4 = 0;
    goto LABEL_31;
  }

  if (*(this + 36))
  {
    v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 1)) + 1;
    v3 = *(this + 9);
    if ((v3 & 2) == 0)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v4 = 0;
    if ((*(this + 36) & 2) == 0)
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
    v3 = *(this + 9);
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
      goto LABEL_31;
    }

    goto LABEL_25;
  }

  v11 = *(this + 6);
  if ((v11 & 0x80000000) != 0)
  {
    v12 = 11;
  }

  else if (v11 >= 0x80)
  {
    v12 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v11) + 1;
    v3 = *(this + 9);
  }

  else
  {
    v12 = 2;
  }

  v4 = (v12 + v4);
  if ((v3 & 8) != 0)
  {
LABEL_25:
    v13 = *(this + 7);
    if ((v13 & 0x80000000) != 0)
    {
      v14 = 11;
    }

    else if (v13 >= 0x80)
    {
      v14 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v13) + 1;
    }

    else
    {
      v14 = 2;
    }

    v4 = (v14 + v4);
  }

LABEL_31:
  *(this + 8) = v4;
  return v4;
}

void awd::metrics::CommCenterCellularPlanEntitlementPushNotification::CheckTypeAndMergeFrom(awd::metrics::CommCenterCellularPlanEntitlementPushNotification *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
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

  LOBYTE(v4) = *(lpsrc + 36);
  if (!v4)
  {
    return;
  }

  if ((*(lpsrc + 36) & 1) == 0)
  {
    if ((*(lpsrc + 36) & 2) == 0)
    {
      goto LABEL_7;
    }

LABEL_11:
    v6 = *(lpsrc + 2);
    *(this + 9) |= 2u;
    v7 = *(this + 2);
    if (v7 == MEMORY[0x277D82C30])
    {
      operator new();
    }

    std::string::operator=(v7, v6);
    v4 = *(lpsrc + 9);
    if ((v4 & 4) == 0)
    {
LABEL_8:
      if ((v4 & 8) == 0)
      {
        return;
      }

      goto LABEL_16;
    }

    goto LABEL_14;
  }

  v5 = *(lpsrc + 1);
  *(this + 9) |= 1u;
  *(this + 1) = v5;
  v4 = *(lpsrc + 9);
  if ((v4 & 2) != 0)
  {
    goto LABEL_11;
  }

LABEL_7:
  if ((v4 & 4) == 0)
  {
    goto LABEL_8;
  }

LABEL_14:
  v8 = *(lpsrc + 6);
  if (v8 >= 4)
  {
    __assert_rtn("set_plan_type", "CCMetricsCP.pb.h", 11102, "::awd::metrics::CommCenterCellularPlanType_IsValid(value)");
  }

  *(this + 9) |= 4u;
  *(this + 6) = v8;
  if ((*(lpsrc + 9) & 8) != 0)
  {
LABEL_16:
    v9 = *(lpsrc + 7);
    if (v9 >= 4)
    {
      __assert_rtn("set_notification_type", "CCMetricsCP.pb.h", 11125, "::awd::metrics::CellularPlanEntitlementPushNotificationType_IsValid(value)");
    }

    *(this + 9) |= 8u;
    *(this + 7) = v9;
  }
}

void sub_2373BBC08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::metrics::CommCenterCellularPlanSimProvisioningPushNotification::~CommCenterCellularPlanSimProvisioningPushNotification(awd::metrics::CommCenterCellularPlanSimProvisioningPushNotification *this)
{
  *this = &unk_284A5F160;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_284A5F160;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  JUMPOUT(0x2383CAFA0);
}

uint64_t awd::metrics::CommCenterCellularPlanSimProvisioningPushNotification::Clear(uint64_t this)
{
  if (*(this + 20))
  {
    *(this + 8) = 0;
  }

  *(this + 20) = 0;
  return this;
}

uint64_t awd::metrics::CommCenterCellularPlanSimProvisioningPushNotification::MergePartialFromCodedStream(awd::metrics::CommCenterCellularPlanSimProvisioningPushNotification *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
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

uint64_t awd::metrics::CommCenterCellularPlanSimProvisioningPushNotification::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  if (*(this + 20))
  {
    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(1, *(this + 8), a2, a4);
  }

  return this;
}

uint64_t awd::metrics::CommCenterCellularPlanSimProvisioningPushNotification::ByteSize(wireless_diagnostics::google::protobuf::io::CodedOutputStream **this, unint64_t a2)
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

void awd::metrics::CommCenterCellularPlanSimProvisioningPushNotification::CheckTypeAndMergeFrom(awd::metrics::CommCenterCellularPlanSimProvisioningPushNotification *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
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

void sub_2373BBF5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::metrics::CommCenterCellularPlanCloudUploadDetails::~CommCenterCellularPlanCloudUploadDetails(awd::metrics::CommCenterCellularPlanCloudUploadDetails *this)
{
  *this = &unk_284A5F1D8;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_284A5F1D8;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  JUMPOUT(0x2383CAFA0);
}

uint64_t awd::metrics::CommCenterCellularPlanCloudUploadDetails::Clear(uint64_t this)
{
  if (*(this + 40))
  {
    *(this + 28) = 0;
    *(this + 32) = 0;
    *(this + 8) = 0;
    *(this + 16) = 0;
    *(this + 24) = 0;
  }

  *(this + 40) = 0;
  return this;
}

uint64_t awd::metrics::CommCenterCellularPlanCloudUploadDetails::MergePartialFromCodedStream(awd::metrics::CommCenterCellularPlanCloudUploadDetails *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
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
          break;
        }

        if (v7 == 1)
        {
          if ((TagFallback & 7) != 0)
          {
            goto LABEL_30;
          }

          v12 = *(a2 + 1);
          v8 = *(a2 + 2);
          if (v12 >= v8 || (v13 = *v12, v13 < 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 1);
            if (!result)
            {
              return result;
            }

            v14 = *(a2 + 1);
            v8 = *(a2 + 2);
          }

          else
          {
            *(this + 1) = v13;
            v14 = v12 + 1;
            *(a2 + 1) = v14;
          }

          *(this + 10) |= 1u;
          if (v14 < v8 && *v14 == 16)
          {
            v17 = v14 + 1;
            *(a2 + 1) = v17;
            goto LABEL_39;
          }
        }

        else
        {
          if (v7 != 2)
          {
            if (v7 != 3 || (TagFallback & 7) != 0)
            {
              goto LABEL_30;
            }

            v10 = *(a2 + 1);
            v8 = *(a2 + 2);
            goto LABEL_47;
          }

          if ((TagFallback & 7) != 0)
          {
            goto LABEL_30;
          }

          v17 = *(a2 + 1);
          v8 = *(a2 + 2);
LABEL_39:
          if (v17 >= v8 || (v18 = *v17, v18 < 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 4);
            if (!result)
            {
              return result;
            }

            v19 = *(a2 + 1);
            v8 = *(a2 + 2);
          }

          else
          {
            *(this + 4) = v18;
            v19 = v17 + 1;
            *(a2 + 1) = v19;
          }

          *(this + 10) |= 2u;
          if (v19 < v8 && *v19 == 24)
          {
            v10 = v19 + 1;
            *(a2 + 1) = v10;
LABEL_47:
            if (v10 >= v8 || (v20 = *v10, v20 < 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 5);
              if (!result)
              {
                return result;
              }

              v21 = *(a2 + 1);
              v8 = *(a2 + 2);
            }

            else
            {
              *(this + 5) = v20;
              v21 = v10 + 1;
              *(a2 + 1) = v21;
            }

            *(this + 10) |= 4u;
            if (v21 < v8 && *v21 == 32)
            {
              v15 = v21 + 1;
              *(a2 + 1) = v15;
              goto LABEL_55;
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
            v16 = *(a2 + 1);
            v8 = *(a2 + 2);
            goto LABEL_71;
          }
        }

        else if (v7 == 7 && (TagFallback & 7) == 0)
        {
          v11 = *(a2 + 1);
          v8 = *(a2 + 2);
          goto LABEL_79;
        }

        goto LABEL_30;
      }

      if (v7 != 4)
      {
        break;
      }

      if ((TagFallback & 7) != 0)
      {
        goto LABEL_30;
      }

      v15 = *(a2 + 1);
      v8 = *(a2 + 2);
LABEL_55:
      v32 = 0;
      if (v15 >= v8 || (v22 = *v15, (v22 & 0x80000000) != 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v32);
        if (!result)
        {
          return result;
        }

        v22 = v32;
        v23 = *(a2 + 1);
        v8 = *(a2 + 2);
      }

      else
      {
        v23 = v15 + 1;
        *(a2 + 1) = v23;
      }

      *(this + 24) = v22 != 0;
      *(this + 10) |= 8u;
      if (v23 < v8 && *v23 == 40)
      {
        v9 = v23 + 1;
        *(a2 + 1) = v9;
LABEL_63:
        v31 = 0;
        if (v9 >= v8 || (v24 = *v9, (v24 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v31);
          if (!result)
          {
            return result;
          }

          v24 = v31;
          v25 = *(a2 + 1);
          v8 = *(a2 + 2);
        }

        else
        {
          v25 = v9 + 1;
          *(a2 + 1) = v25;
        }

        *(this + 25) = v24 != 0;
        *(this + 10) |= 0x10u;
        if (v25 < v8 && *v25 == 48)
        {
          v16 = v25 + 1;
          *(a2 + 1) = v16;
LABEL_71:
          if (v16 >= v8 || (v26 = *v16, v26 < 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 7);
            if (!result)
            {
              return result;
            }

            v27 = *(a2 + 1);
            v8 = *(a2 + 2);
          }

          else
          {
            *(this + 7) = v26;
            v27 = v16 + 1;
            *(a2 + 1) = v27;
          }

          *(this + 10) |= 0x20u;
          if (v27 < v8 && *v27 == 56)
          {
            v11 = v27 + 1;
            *(a2 + 1) = v11;
LABEL_79:
            if (v11 >= v8 || (v28 = *v11, v28 < 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 8);
              if (!result)
              {
                return result;
              }

              v29 = *(a2 + 1);
              v8 = *(a2 + 2);
            }

            else
            {
              *(this + 8) = v28;
              v29 = v11 + 1;
              *(a2 + 1) = v29;
            }

            *(this + 10) |= 0x40u;
            if (v29 == v8 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
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

    if (v7 == 5 && (TagFallback & 7) == 0)
    {
      v9 = *(a2 + 1);
      v8 = *(a2 + 2);
      goto LABEL_63;
    }

LABEL_30:
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

uint64_t awd::metrics::CommCenterCellularPlanCloudUploadDetails::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
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

      goto LABEL_11;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(2, *(v5 + 16), a2, a4);
  v6 = *(v5 + 40);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_12;
  }

LABEL_11:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(3, *(v5 + 20), a2, a4);
  v6 = *(v5 + 40);
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_13;
  }

LABEL_12:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(4, *(v5 + 24), a2, a4);
  v6 = *(v5 + 40);
  if ((v6 & 0x10) == 0)
  {
LABEL_6:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_7;
    }

LABEL_14:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(6, *(v5 + 28), a2, a4);
    if ((*(v5 + 40) & 0x40) == 0)
    {
      return this;
    }

    goto LABEL_15;
  }

LABEL_13:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(5, *(v5 + 25), a2, a4);
  v6 = *(v5 + 40);
  if ((v6 & 0x20) != 0)
  {
    goto LABEL_14;
  }

LABEL_7:
  if ((v6 & 0x40) == 0)
  {
    return this;
  }

LABEL_15:
  v7 = *(v5 + 32);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(7, v7, a2, a4);
}

uint64_t awd::metrics::CommCenterCellularPlanCloudUploadDetails::ByteSize(awd::metrics::CommCenterCellularPlanCloudUploadDetails *this, unint64_t a2)
{
  v3 = *(this + 10);
  if (!v3)
  {
    v5 = 0;
    goto LABEL_26;
  }

  if ((v3 & 1) == 0)
  {
    v4 = 0;
    if ((v3 & 2) == 0)
    {
      goto LABEL_11;
    }

LABEL_7:
    v6 = *(this + 4);
    if (v6 >= 0x80)
    {
      v7 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v6) + 1;
      v3 = *(this + 10);
    }

    else
    {
      v7 = 2;
    }

    v4 += v7;
    goto LABEL_11;
  }

  v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 1)) + 1;
  v3 = *(this + 10);
  if ((v3 & 2) != 0)
  {
    goto LABEL_7;
  }

LABEL_11:
  if ((v3 & 4) != 0)
  {
    v8 = *(this + 5);
    if (v8 >= 0x80)
    {
      v9 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v8) + 1;
      v3 = *(this + 10);
    }

    else
    {
      v9 = 2;
    }

    v4 += v9;
  }

  v5 = ((v3 >> 2) & 2) + v4 + ((v3 >> 3) & 2);
  if ((v3 & 0x20) != 0)
  {
    v10 = *(this + 7);
    if (v10 >= 0x80)
    {
      v11 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v10) + 1;
      v3 = *(this + 10);
    }

    else
    {
      v11 = 2;
    }

    v5 = (v11 + v5);
  }

  if ((v3 & 0x40) != 0)
  {
    v12 = *(this + 8);
    if (v12 >= 0x80)
    {
      v13 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v12) + 1;
    }

    else
    {
      v13 = 2;
    }

    v5 = (v13 + v5);
  }

LABEL_26:
  *(this + 9) = v5;
  return v5;
}

void awd::metrics::CommCenterCellularPlanCloudUploadDetails::CheckTypeAndMergeFrom(awd::metrics::CommCenterCellularPlanCloudUploadDetails *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
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
  if (!v4)
  {
    return;
  }

  if (*(lpsrc + 40))
  {
    v6 = *(lpsrc + 1);
    *(this + 10) |= 1u;
    *(this + 1) = v6;
    v4 = *(lpsrc + 10);
    if ((v4 & 2) == 0)
    {
LABEL_7:
      if ((v4 & 4) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_16;
    }
  }

  else if ((*(lpsrc + 40) & 2) == 0)
  {
    goto LABEL_7;
  }

  v7 = *(lpsrc + 4);
  *(this + 10) |= 2u;
  *(this + 4) = v7;
  v4 = *(lpsrc + 10);
  if ((v4 & 4) == 0)
  {
LABEL_8:
    if ((v4 & 8) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_17;
  }

LABEL_16:
  v8 = *(lpsrc + 5);
  *(this + 10) |= 4u;
  *(this + 5) = v8;
  v4 = *(lpsrc + 10);
  if ((v4 & 8) == 0)
  {
LABEL_9:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_10;
    }

LABEL_18:
    v10 = *(lpsrc + 25);
    *(this + 10) |= 0x10u;
    *(this + 25) = v10;
    v4 = *(lpsrc + 10);
    if ((v4 & 0x20) == 0)
    {
LABEL_11:
      if ((v4 & 0x40) == 0)
      {
        return;
      }

      goto LABEL_12;
    }

    goto LABEL_19;
  }

LABEL_17:
  v9 = *(lpsrc + 24);
  *(this + 10) |= 8u;
  *(this + 24) = v9;
  v4 = *(lpsrc + 10);
  if ((v4 & 0x10) != 0)
  {
    goto LABEL_18;
  }

LABEL_10:
  if ((v4 & 0x20) == 0)
  {
    goto LABEL_11;
  }

LABEL_19:
  v11 = *(lpsrc + 7);
  *(this + 10) |= 0x20u;
  *(this + 7) = v11;
  if ((*(lpsrc + 10) & 0x40) != 0)
  {
LABEL_12:
    v5 = *(lpsrc + 8);
    *(this + 10) |= 0x40u;
    *(this + 8) = v5;
  }
}

void sub_2373BC820(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void *awd::metrics::CommCenterSubscriptionImeiChange::SharedDtor(void *this)
{
  v1 = this;
  v2 = this[2];
  v3 = MEMORY[0x277D82C30];
  if (v2 != MEMORY[0x277D82C30] && v2 != 0)
  {
    if (*(v2 + 23) < 0)
    {
      operator delete(*v2);
    }

    this = MEMORY[0x2383CAFA0](v2, 0x1012C40EC159624);
  }

  v5 = v1[3];
  if (v5 != v3 && v5 != 0)
  {
    if (*(v5 + 23) < 0)
    {
      operator delete(*v5);
    }

    this = MEMORY[0x2383CAFA0](v5, 0x1012C40EC159624);
  }

  v7 = v1[4];
  if (v7 != v3 && v7 != 0)
  {
    if (*(v7 + 23) < 0)
    {
      operator delete(*v7);
    }

    this = MEMORY[0x2383CAFA0](v7, 0x1012C40EC159624);
  }

  v9 = v1[5];
  if (v9 != v3 && v9 != 0)
  {
    if (*(v9 + 23) < 0)
    {
      operator delete(*v9);
    }

    JUMPOUT(0x2383CAFA0);
  }

  return this;
}

void awd::metrics::CommCenterSubscriptionImeiChange::~CommCenterSubscriptionImeiChange(awd::metrics::CommCenterSubscriptionImeiChange *this)
{
  *this = &unk_284A5F250;
  awd::metrics::CommCenterSubscriptionImeiChange::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_284A5F250;
  awd::metrics::CommCenterSubscriptionImeiChange::SharedDtor(this);
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  JUMPOUT(0x2383CAFA0);
}

uint64_t awd::metrics::CommCenterSubscriptionImeiChange::Clear(uint64_t this)
{
  v1 = *(this + 56);
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

    if ((*(this + 56) & 4) != 0)
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

    if ((*(this + 56) & 8) != 0)
    {
      v5 = *(this + 32);
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

    if ((*(this + 56) & 0x10) != 0)
    {
      v6 = *(this + 40);
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

    *(this + 48) = 0;
  }

  *(this + 56) = 0;
  return this;
}

uint64_t awd::metrics::CommCenterSubscriptionImeiChange::MergePartialFromCodedStream(awd::metrics::CommCenterSubscriptionImeiChange *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
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
            if (v9 == 2)
            {
              goto LABEL_47;
            }

            goto LABEL_27;
          }

          if (v8 != 5)
          {
            if (v8 == 6 && (TagFallback & 7) == 0)
            {
              v11 = *(a2 + 1);
              v10 = *(a2 + 2);
              goto LABEL_59;
            }

            goto LABEL_27;
          }

          if (v9 != 2)
          {
            goto LABEL_27;
          }

LABEL_53:
          *(this + 14) |= 0x10u;
          if (*(this + 5) == v5)
          {
            operator new();
          }

          result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
          if (!result)
          {
            return result;
          }

          v20 = *(a2 + 1);
          v10 = *(a2 + 2);
          if (v20 < v10 && *v20 == 48)
          {
            v11 = v20 + 1;
            *(a2 + 1) = v11;
LABEL_59:
            v23 = 0;
            if (v11 >= v10 || (v21 = *v11, (v21 & 0x80000000) != 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v23);
              if (!result)
              {
                return result;
              }

              v21 = v23;
            }

            else
            {
              *(a2 + 1) = v11 + 1;
            }

            if (v21 <= 2)
            {
              *(this + 14) |= 0x20u;
              *(this + 12) = v21;
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

        v16 = *(this + 14) | 1;
        *(this + 14) = v16;
        if (v15 < v12 && *v15 == 18)
        {
          *(a2 + 1) = v15 + 1;
          goto LABEL_35;
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

      v16 = *(this + 14);
LABEL_35:
      *(this + 14) = v16 | 2;
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
LABEL_41:
        *(this + 14) |= 4u;
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
        if (v18 < *(a2 + 2) && *v18 == 34)
        {
          *(a2 + 1) = v18 + 1;
LABEL_47:
          *(this + 14) |= 8u;
          if (*(this + 4) == v5)
          {
            operator new();
          }

          result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
          if (!result)
          {
            return result;
          }

          v19 = *(a2 + 1);
          if (v19 < *(a2 + 2) && *v19 == 42)
          {
            *(a2 + 1) = v19 + 1;
            goto LABEL_53;
          }
        }
      }
    }

    if (v8 == 3 && v9 == 2)
    {
      goto LABEL_41;
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

uint64_t awd::metrics::CommCenterSubscriptionImeiChange::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 56);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(1, *(this + 8), a2, a4);
    v6 = *(v5 + 56);
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

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
  v6 = *(v5 + 56);
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
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
  v6 = *(v5 + 56);
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_6;
    }

LABEL_12:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
    if ((*(v5 + 56) & 0x20) == 0)
    {
      return this;
    }

    goto LABEL_13;
  }

LABEL_11:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
  v6 = *(v5 + 56);
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
  v7 = *(v5 + 48);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(6, v7, a2, a4);
}

uint64_t awd::metrics::CommCenterSubscriptionImeiChange::ByteSize(awd::metrics::CommCenterSubscriptionImeiChange *this, unint64_t a2)
{
  LOBYTE(v3) = *(this + 56);
  if (!v3)
  {
    v4 = 0;
    goto LABEL_54;
  }

  if (*(this + 56))
  {
    v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 1)) + 1;
    v3 = *(this + 14);
    if ((v3 & 2) == 0)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v4 = 0;
    if ((*(this + 56) & 2) == 0)
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
    v3 = *(this + 14);
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
      v3 = *(this + 14);
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
LABEL_18:
      if ((v3 & 0x10) == 0)
      {
        goto LABEL_19;
      }

      goto LABEL_39;
    }
  }

  else if ((v3 & 8) == 0)
  {
    goto LABEL_18;
  }

  v17 = *(this + 4);
  v18 = *(v17 + 23);
  v19 = v18;
  v20 = *(v17 + 8);
  if ((v18 & 0x80u) == 0)
  {
    v21 = *(v17 + 23);
  }

  else
  {
    v21 = v20;
  }

  if (v21 >= 0x80)
  {
    v22 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v21);
    v18 = *(v17 + 23);
    v20 = *(v17 + 8);
    v3 = *(this + 14);
    v19 = *(v17 + 23);
  }

  else
  {
    v22 = 1;
  }

  if (v19 < 0)
  {
    v18 = v20;
  }

  v4 = (v4 + v22 + v18 + 1);
  if ((v3 & 0x10) == 0)
  {
LABEL_19:
    if ((v3 & 0x20) == 0)
    {
      goto LABEL_54;
    }

    goto LABEL_48;
  }

LABEL_39:
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
    v3 = *(this + 14);
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
  if ((v3 & 0x20) != 0)
  {
LABEL_48:
    v29 = *(this + 12);
    if ((v29 & 0x80000000) != 0)
    {
      v30 = 11;
    }

    else if (v29 >= 0x80)
    {
      v30 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v29) + 1;
    }

    else
    {
      v30 = 2;
    }

    v4 = (v30 + v4);
  }

LABEL_54:
  *(this + 13) = v4;
  return v4;
}

void awd::metrics::CommCenterSubscriptionImeiChange::CheckTypeAndMergeFrom(awd::metrics::CommCenterSubscriptionImeiChange *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
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

  LOBYTE(v4) = *(lpsrc + 56);
  if (!v4)
  {
    return;
  }

  if (*(lpsrc + 56))
  {
    v5 = *(lpsrc + 1);
    *(this + 14) |= 1u;
    *(this + 1) = v5;
    v4 = *(lpsrc + 14);
  }

  v6 = MEMORY[0x277D82C30];
  if ((v4 & 2) != 0)
  {
    v7 = *(lpsrc + 2);
    *(this + 14) |= 2u;
    v8 = *(this + 2);
    if (v8 == v6)
    {
      operator new();
    }

    std::string::operator=(v8, v7);
    v4 = *(lpsrc + 14);
    if ((v4 & 4) == 0)
    {
LABEL_9:
      if ((v4 & 8) == 0)
      {
        goto LABEL_10;
      }

LABEL_19:
      v11 = *(lpsrc + 4);
      *(this + 14) |= 8u;
      v12 = *(this + 4);
      if (v12 == v6)
      {
        operator new();
      }

      std::string::operator=(v12, v11);
      v4 = *(lpsrc + 14);
      if ((v4 & 0x10) == 0)
      {
LABEL_11:
        if ((v4 & 0x20) == 0)
        {
          return;
        }

        goto LABEL_25;
      }

      goto LABEL_22;
    }
  }

  else if ((v4 & 4) == 0)
  {
    goto LABEL_9;
  }

  v9 = *(lpsrc + 3);
  *(this + 14) |= 4u;
  v10 = *(this + 3);
  if (v10 == v6)
  {
    operator new();
  }

  std::string::operator=(v10, v9);
  v4 = *(lpsrc + 14);
  if ((v4 & 8) != 0)
  {
    goto LABEL_19;
  }

LABEL_10:
  if ((v4 & 0x10) == 0)
  {
    goto LABEL_11;
  }

LABEL_22:
  v13 = *(lpsrc + 5);
  *(this + 14) |= 0x10u;
  v14 = *(this + 5);
  if (v14 == v6)
  {
    operator new();
  }

  std::string::operator=(v14, v13);
  if ((*(lpsrc + 14) & 0x20) != 0)
  {
LABEL_25:
    v15 = *(lpsrc + 12);
    if (v15 >= 3)
    {
      __assert_rtn("set_reason", "CCMetricsCP.pb.h", 11638, "::awd::metrics::CommCenterSubscriptionImeiChangeReason_IsValid(value)");
    }

    *(this + 14) |= 0x20u;
    *(this + 12) = v15;
  }
}

void sub_2373BD46C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void *awd::metrics::CommCenterCellularPlanSimSetupUsage::SharedDtor(void *this)
{
  v1 = this;
  v2 = this[5];
  v3 = MEMORY[0x277D82C30];
  if (v2 != MEMORY[0x277D82C30] && v2 != 0)
  {
    if (*(v2 + 23) < 0)
    {
      operator delete(*v2);
    }

    this = MEMORY[0x2383CAFA0](v2, 0x1012C40EC159624);
  }

  v5 = v1[6];
  if (v5 != v3 && v5 != 0)
  {
    if (*(v5 + 23) < 0)
    {
      operator delete(*v5);
    }

    this = MEMORY[0x2383CAFA0](v5, 0x1012C40EC159624);
  }

  v7 = v1[7];
  if (v7 != v3 && v7 != 0)
  {
    if (*(v7 + 23) < 0)
    {
      operator delete(*v7);
    }

    this = MEMORY[0x2383CAFA0](v7, 0x1012C40EC159624);
  }

  v9 = v1[8];
  if (v9 != v3 && v9 != 0)
  {
    if (*(v9 + 23) < 0)
    {
      operator delete(*v9);
    }

    this = MEMORY[0x2383CAFA0](v9, 0x1012C40EC159624);
  }

  v11 = v1[9];
  if (v11 != v3 && v11)
  {
    if (*(v11 + 23) < 0)
    {
      operator delete(*v11);
    }

    this = MEMORY[0x2383CAFA0](v11, 0x1012C40EC159624);
  }

  v12 = v1[10];
  if (v12 != v3 && v12)
  {
    if (*(v12 + 23) < 0)
    {
      operator delete(*v12);
    }

    JUMPOUT(0x2383CAFA0);
  }

  return this;
}

void awd::metrics::CommCenterCellularPlanSimSetupUsage::~CommCenterCellularPlanSimSetupUsage(awd::metrics::CommCenterCellularPlanSimSetupUsage *this)
{
  *this = &unk_284A5F2C8;
  awd::metrics::CommCenterCellularPlanSimSetupUsage::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_284A5F2C8;
  awd::metrics::CommCenterCellularPlanSimSetupUsage::SharedDtor(this);
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  JUMPOUT(0x2383CAFA0);
}

uint64_t awd::metrics::CommCenterCellularPlanSimSetupUsage::Clear(uint64_t this)
{
  v1 = *(this + 100);
  if (v1)
  {
    *(this + 8) = 0;
    *(this + 16) = 0;
    *(this + 28) = 0;
    *(this + 20) = 0;
    *(this + 36) = 0;
    if (v1 < 0)
    {
      v2 = *(this + 40);
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

  v3 = *(this + 100);
  if ((v3 & 0xFF00) != 0)
  {
    if ((v3 & 0x100) != 0)
    {
      v4 = *(this + 48);
      if (v4 != MEMORY[0x277D82C30])
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

    if ((*(this + 101) & 2) != 0)
    {
      v5 = *(this + 56);
      if (v5 != MEMORY[0x277D82C30])
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

    if ((*(this + 101) & 4) != 0)
    {
      v6 = *(this + 64);
      if (v6 != MEMORY[0x277D82C30])
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

    if ((*(this + 101) & 8) != 0)
    {
      v7 = *(this + 72);
      if (v7 != MEMORY[0x277D82C30])
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

    if ((*(this + 101) & 0x10) != 0)
    {
      v8 = *(this + 80);
      if (v8 != MEMORY[0x277D82C30])
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

    *(this + 88) = 0;
  }

  *(this + 100) = 0;
  return this;
}

uint64_t awd::metrics::CommCenterCellularPlanSimSetupUsage::MergePartialFromCodedStream(awd::metrics::CommCenterCellularPlanSimSetupUsage *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
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
          goto LABEL_39;
        }

        v10 = *(a2 + 1);
        v9 = *(a2 + 2);
        if (v10 < v9)
        {
          v11 = *v10;
          if ((v11 & 0x8000000000000000) == 0)
          {
            *(this + 1) = v11;
            v12 = v10 + 1;
            *(a2 + 1) = v12;
LABEL_44:
            *(this + 25) |= 1u;
            if (v12 < v9 && *v12 == 16)
            {
              v19 = v12 + 1;
              *(a2 + 1) = v19;
              goto LABEL_47;
            }

            continue;
          }
        }

        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 1);
        if (result)
        {
          v12 = *(a2 + 1);
          v9 = *(a2 + 2);
          goto LABEL_44;
        }

        break;
      case 2u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_39;
        }

        v19 = *(a2 + 1);
        v9 = *(a2 + 2);
LABEL_47:
        v46 = 0;
        if (v19 >= v9 || (v23 = *v19, (v23 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v46);
          if (!result)
          {
            return result;
          }

          v23 = v46;
          v24 = *(a2 + 1);
          v9 = *(a2 + 2);
        }

        else
        {
          v24 = v19 + 1;
          *(a2 + 1) = v24;
        }

        *(this + 16) = v23 != 0;
        *(this + 25) |= 2u;
        if (v24 >= v9 || *v24 != 24)
        {
          continue;
        }

        v16 = v24 + 1;
        *(a2 + 1) = v16;
LABEL_55:
        if (v16 >= v9 || (v25 = *v16, v25 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 5);
          if (!result)
          {
            return result;
          }

          v26 = *(a2 + 1);
          v9 = *(a2 + 2);
        }

        else
        {
          *(this + 5) = v25;
          v26 = v16 + 1;
          *(a2 + 1) = v26;
        }

        *(this + 25) |= 4u;
        if (v26 >= v9 || *v26 != 32)
        {
          continue;
        }

        v17 = v26 + 1;
        *(a2 + 1) = v17;
LABEL_63:
        if (v17 >= v9 || (v27 = *v17, v27 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 6);
          if (!result)
          {
            return result;
          }

          v28 = *(a2 + 1);
          v9 = *(a2 + 2);
        }

        else
        {
          *(this + 6) = v27;
          v28 = v17 + 1;
          *(a2 + 1) = v28;
        }

        *(this + 25) |= 8u;
        if (v28 >= v9 || *v28 != 40)
        {
          continue;
        }

        v15 = v28 + 1;
        *(a2 + 1) = v15;
LABEL_71:
        if (v15 >= v9 || (v29 = *v15, v29 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 7);
          if (!result)
          {
            return result;
          }

          v30 = *(a2 + 1);
          v9 = *(a2 + 2);
        }

        else
        {
          *(this + 7) = v29;
          v30 = v15 + 1;
          *(a2 + 1) = v30;
        }

        *(this + 25) |= 0x10u;
        if (v30 >= v9 || *v30 != 48)
        {
          continue;
        }

        v20 = v30 + 1;
        *(a2 + 1) = v20;
LABEL_79:
        if (v20 >= v9 || (v31 = *v20, v31 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 8);
          if (!result)
          {
            return result;
          }

          v32 = *(a2 + 1);
          v9 = *(a2 + 2);
        }

        else
        {
          *(this + 8) = v31;
          v32 = v20 + 1;
          *(a2 + 1) = v32;
        }

        *(this + 25) |= 0x20u;
        if (v32 >= v9 || *v32 != 56)
        {
          continue;
        }

        v22 = v32 + 1;
        *(a2 + 1) = v22;
LABEL_87:
        if (v22 >= v9 || (v33 = *v22, v33 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 9);
          if (!result)
          {
            return result;
          }

          v34 = *(a2 + 1);
          v9 = *(a2 + 2);
        }

        else
        {
          *(this + 9) = v33;
          v34 = v22 + 1;
          *(a2 + 1) = v34;
        }

        v18 = *(this + 25) | 0x40;
        *(this + 25) = v18;
        if (v34 >= v9 || *v34 != 66)
        {
          continue;
        }

        *(a2 + 1) = v34 + 1;
LABEL_95:
        *(this + 25) = v18 | 0x80;
        if (*(this + 5) == v5)
        {
          operator new();
        }

        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
        if (!result)
        {
          return result;
        }

        v35 = *(a2 + 1);
        if (v35 >= *(a2 + 2) || *v35 != 74)
        {
          continue;
        }

        *(a2 + 1) = v35 + 1;
LABEL_101:
        *(this + 25) |= 0x100u;
        if (*(this + 6) == v5)
        {
          operator new();
        }

        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
        if (!result)
        {
          return result;
        }

        v36 = *(a2 + 1);
        if (v36 >= *(a2 + 2) || *v36 != 82)
        {
          continue;
        }

        *(a2 + 1) = v36 + 1;
LABEL_107:
        *(this + 25) |= 0x200u;
        if (*(this + 7) == v5)
        {
          operator new();
        }

        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
        if (!result)
        {
          return result;
        }

        v37 = *(a2 + 1);
        if (v37 >= *(a2 + 2) || *v37 != 90)
        {
          continue;
        }

        *(a2 + 1) = v37 + 1;
LABEL_113:
        *(this + 25) |= 0x400u;
        if (*(this + 8) == v5)
        {
          operator new();
        }

        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
        if (!result)
        {
          return result;
        }

        v38 = *(a2 + 1);
        if (v38 >= *(a2 + 2) || *v38 != 98)
        {
          continue;
        }

        *(a2 + 1) = v38 + 1;
LABEL_119:
        *(this + 25) |= 0x800u;
        if (*(this + 9) == v5)
        {
          operator new();
        }

        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
        if (!result)
        {
          return result;
        }

        v39 = *(a2 + 1);
        if (v39 >= *(a2 + 2) || *v39 != 106)
        {
          continue;
        }

        *(a2 + 1) = v39 + 1;
LABEL_125:
        *(this + 25) |= 0x1000u;
        if (*(this + 10) == v5)
        {
          operator new();
        }

        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
        if (!result)
        {
          return result;
        }

        v40 = *(a2 + 1);
        v13 = *(a2 + 2);
        if (v40 >= v13 || *v40 != 112)
        {
          continue;
        }

        v21 = v40 + 1;
        *(a2 + 1) = v21;
LABEL_131:
        if (v21 >= v13 || (v41 = *v21, v41 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 22);
          if (!result)
          {
            return result;
          }

          v42 = *(a2 + 1);
          v13 = *(a2 + 2);
        }

        else
        {
          *(this + 22) = v41;
          v42 = v21 + 1;
          *(a2 + 1) = v42;
        }

        *(this + 25) |= 0x2000u;
        if (v42 >= v13 || *v42 != 120)
        {
          continue;
        }

        v14 = v42 + 1;
        *(a2 + 1) = v14;
LABEL_139:
        if (v14 >= v13 || (v43 = *v14, v43 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 23);
          if (!result)
          {
            return result;
          }

          v44 = *(a2 + 1);
          v13 = *(a2 + 2);
        }

        else
        {
          *(this + 23) = v43;
          v44 = v14 + 1;
          *(a2 + 1) = v44;
        }

        *(this + 25) |= 0x4000u;
        if (v44 != v13 || !*(a2 + 11) && *(a2 + 6) != *(a2 + 10))
        {
          continue;
        }

        *(a2 + 8) = 0;
        result = 1;
        *(a2 + 36) = 1;
        return result;
      case 3u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_39;
        }

        v16 = *(a2 + 1);
        v9 = *(a2 + 2);
        goto LABEL_55;
      case 4u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_39;
        }

        v17 = *(a2 + 1);
        v9 = *(a2 + 2);
        goto LABEL_63;
      case 5u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_39;
        }

        v15 = *(a2 + 1);
        v9 = *(a2 + 2);
        goto LABEL_71;
      case 6u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_39;
        }

        v20 = *(a2 + 1);
        v9 = *(a2 + 2);
        goto LABEL_79;
      case 7u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_39;
        }

        v22 = *(a2 + 1);
        v9 = *(a2 + 2);
        goto LABEL_87;
      case 8u:
        if (v8 != 2)
        {
          goto LABEL_39;
        }

        v18 = *(this + 25);
        goto LABEL_95;
      case 9u:
        if (v8 != 2)
        {
          goto LABEL_39;
        }

        goto LABEL_101;
      case 0xAu:
        if (v8 == 2)
        {
          goto LABEL_107;
        }

        goto LABEL_39;
      case 0xBu:
        if (v8 == 2)
        {
          goto LABEL_113;
        }

        goto LABEL_39;
      case 0xCu:
        if (v8 == 2)
        {
          goto LABEL_119;
        }

        goto LABEL_39;
      case 0xDu:
        if (v8 == 2)
        {
          goto LABEL_125;
        }

        goto LABEL_39;
      case 0xEu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_39;
        }

        v21 = *(a2 + 1);
        v13 = *(a2 + 2);
        goto LABEL_131;
      case 0xFu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_39;
        }

        v14 = *(a2 + 1);
        v13 = *(a2 + 2);
        goto LABEL_139;
      default:
LABEL_39:
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

uint64_t awd::metrics::CommCenterCellularPlanSimSetupUsage::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 100);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(1, *(this + 8), a2, a4);
    v6 = *(v5 + 100);
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

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(2, *(v5 + 16), a2, a4);
  v6 = *(v5 + 100);
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
  v6 = *(v5 + 100);
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
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(4, *(v5 + 24), a2, a4);
  v6 = *(v5 + 100);
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
  v6 = *(v5 + 100);
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
  v6 = *(v5 + 100);
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
  v6 = *(v5 + 100);
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
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
  v6 = *(v5 + 100);
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
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
  v6 = *(v5 + 100);
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
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
  v6 = *(v5 + 100);
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
  v6 = *(v5 + 100);
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
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
  v6 = *(v5 + 100);
  if ((v6 & 0x1000) == 0)
  {
LABEL_14:
    if ((v6 & 0x2000) == 0)
    {
      goto LABEL_15;
    }

LABEL_30:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xE, *(v5 + 88), a2, a4);
    if ((*(v5 + 100) & 0x4000) == 0)
    {
      return this;
    }

    goto LABEL_31;
  }

LABEL_29:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
  v6 = *(v5 + 100);
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
  v7 = *(v5 + 92);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xF, v7, a2, a4);
}

uint64_t awd::metrics::CommCenterCellularPlanSimSetupUsage::ByteSize(awd::metrics::CommCenterCellularPlanSimSetupUsage *this, unint64_t a2)
{
  v3 = *(this + 25);
  if (!v3)
  {
    v5 = 0;
    goto LABEL_42;
  }

  if (v3)
  {
    v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 1)) + 1;
    v3 = *(this + 25);
  }

  else
  {
    v4 = 0;
  }

  v5 = (v3 & 2u) + v4;
  if ((v3 & 4) != 0)
  {
    v6 = *(this + 5);
    if (v6 >= 0x80)
    {
      v7 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v6) + 1;
      v3 = *(this + 25);
    }

    else
    {
      v7 = 2;
    }

    v5 = (v7 + v5);
    if ((v3 & 8) == 0)
    {
LABEL_8:
      if ((v3 & 0x10) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_21;
    }
  }

  else if ((v3 & 8) == 0)
  {
    goto LABEL_8;
  }

  v8 = *(this + 6);
  if (v8 >= 0x80)
  {
    v9 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v8) + 1;
    v3 = *(this + 25);
  }

  else
  {
    v9 = 2;
  }

  v5 = (v9 + v5);
  if ((v3 & 0x10) == 0)
  {
LABEL_9:
    if ((v3 & 0x20) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_25;
  }

LABEL_21:
  v10 = *(this + 7);
  if (v10 >= 0x80)
  {
    v11 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v10) + 1;
    v3 = *(this + 25);
  }

  else
  {
    v11 = 2;
  }

  v5 = (v11 + v5);
  if ((v3 & 0x20) == 0)
  {
LABEL_10:
    if ((v3 & 0x40) == 0)
    {
      goto LABEL_11;
    }

LABEL_29:
    v14 = *(this + 9);
    if (v14 >= 0x80)
    {
      v15 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v14) + 1;
      v3 = *(this + 25);
    }

    else
    {
      v15 = 2;
    }

    v5 = (v15 + v5);
    if ((v3 & 0x80) == 0)
    {
      goto LABEL_42;
    }

    goto LABEL_33;
  }

LABEL_25:
  v12 = *(this + 8);
  if (v12 >= 0x80)
  {
    v13 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v12) + 1;
    v3 = *(this + 25);
  }

  else
  {
    v13 = 2;
  }

  v5 = (v13 + v5);
  if ((v3 & 0x40) != 0)
  {
    goto LABEL_29;
  }

LABEL_11:
  if ((v3 & 0x80) == 0)
  {
    goto LABEL_42;
  }

LABEL_33:
  v16 = *(this + 5);
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
    v3 = *(this + 25);
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
LABEL_42:
  if ((v3 & 0xFF00) == 0)
  {
    goto LABEL_104;
  }

  if ((v3 & 0x100) != 0)
  {
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
      v3 = *(this + 25);
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
    if ((v3 & 0x200) == 0)
    {
LABEL_45:
      if ((v3 & 0x400) == 0)
      {
        goto LABEL_46;
      }

      goto LABEL_69;
    }
  }

  else if ((v3 & 0x200) == 0)
  {
    goto LABEL_45;
  }

  v28 = *(this + 7);
  v29 = *(v28 + 23);
  v30 = v29;
  v31 = *(v28 + 8);
  if ((v29 & 0x80u) == 0)
  {
    v32 = *(v28 + 23);
  }

  else
  {
    v32 = v31;
  }

  if (v32 >= 0x80)
  {
    v33 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v32);
    v29 = *(v28 + 23);
    v31 = *(v28 + 8);
    v3 = *(this + 25);
    v30 = *(v28 + 23);
  }

  else
  {
    v33 = 1;
  }

  if (v30 < 0)
  {
    v29 = v31;
  }

  v5 = (v5 + v33 + v29 + 1);
  if ((v3 & 0x400) == 0)
  {
LABEL_46:
    if ((v3 & 0x800) == 0)
    {
      goto LABEL_47;
    }

    goto LABEL_78;
  }

LABEL_69:
  v34 = *(this + 8);
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
    v3 = *(this + 25);
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

  v5 = (v5 + v39 + v35 + 1);
  if ((v3 & 0x800) == 0)
  {
LABEL_47:
    if ((v3 & 0x1000) == 0)
    {
      goto LABEL_48;
    }

    goto LABEL_87;
  }

LABEL_78:
  v40 = *(this + 9);
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
    v3 = *(this + 25);
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

  v5 = (v5 + v45 + v41 + 1);
  if ((v3 & 0x1000) == 0)
  {
LABEL_48:
    if ((v3 & 0x2000) == 0)
    {
      goto LABEL_49;
    }

    goto LABEL_96;
  }

LABEL_87:
  v46 = *(this + 10);
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
    v3 = *(this + 25);
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

  v5 = (v5 + v51 + v47 + 1);
  if ((v3 & 0x2000) == 0)
  {
LABEL_49:
    if ((v3 & 0x4000) == 0)
    {
      goto LABEL_104;
    }

    goto LABEL_100;
  }

LABEL_96:
  v52 = *(this + 22);
  if (v52 >= 0x80)
  {
    v53 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v52) + 1;
    v3 = *(this + 25);
  }

  else
  {
    v53 = 2;
  }

  v5 = (v53 + v5);
  if ((v3 & 0x4000) != 0)
  {
LABEL_100:
    v54 = *(this + 23);
    if (v54 >= 0x80)
    {
      v55 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v54) + 1;
    }

    else
    {
      v55 = 2;
    }

    v5 = (v55 + v5);
  }

LABEL_104:
  *(this + 24) = v5;
  return v5;
}