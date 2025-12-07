void awd::metrics::CommCenterCellularPlanSimSetupUsage::CheckTypeAndMergeFrom(const std::string **this, const std::string **lpsrc)
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
  if (v4)
  {
    if (v4)
    {
      v5 = lpsrc[1];
      *(this + 25) |= 1u;
      this[1] = v5;
      v4 = *(lpsrc + 25);
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

    else if ((v4 & 2) == 0)
    {
      goto LABEL_7;
    }

    v6 = *(lpsrc + 16);
    *(this + 25) |= 2u;
    *(this + 16) = v6;
    v4 = *(lpsrc + 25);
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
    v7 = *(lpsrc + 5);
    *(this + 25) |= 4u;
    *(this + 5) = v7;
    v4 = *(lpsrc + 25);
    if ((v4 & 8) == 0)
    {
LABEL_9:
      if ((v4 & 0x10) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_18;
    }

LABEL_17:
    v8 = *(lpsrc + 6);
    *(this + 25) |= 8u;
    *(this + 6) = v8;
    v4 = *(lpsrc + 25);
    if ((v4 & 0x10) == 0)
    {
LABEL_10:
      if ((v4 & 0x20) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_19;
    }

LABEL_18:
    v9 = *(lpsrc + 7);
    *(this + 25) |= 0x10u;
    *(this + 7) = v9;
    v4 = *(lpsrc + 25);
    if ((v4 & 0x20) == 0)
    {
LABEL_11:
      if ((v4 & 0x40) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_20;
    }

LABEL_19:
    v10 = *(lpsrc + 8);
    *(this + 25) |= 0x20u;
    *(this + 8) = v10;
    v4 = *(lpsrc + 25);
    if ((v4 & 0x40) == 0)
    {
LABEL_12:
      if ((v4 & 0x80) == 0)
      {
        goto LABEL_24;
      }

      goto LABEL_21;
    }

LABEL_20:
    v11 = *(lpsrc + 9);
    *(this + 25) |= 0x40u;
    *(this + 9) = v11;
    v4 = *(lpsrc + 25);
    if ((v4 & 0x80) == 0)
    {
      goto LABEL_24;
    }

LABEL_21:
    v12 = lpsrc[5];
    *(this + 25) |= 0x80u;
    v13 = this[5];
    if (v13 == MEMORY[0x277D82C30])
    {
      operator new();
    }

    std::string::operator=(v13, v12);
    v4 = *(lpsrc + 25);
  }

LABEL_24:
  if ((v4 & 0xFF00) == 0)
  {
    return;
  }

  if ((v4 & 0x100) != 0)
  {
    v15 = lpsrc[6];
    *(this + 25) |= 0x100u;
    v16 = this[6];
    if (v16 == MEMORY[0x277D82C30])
    {
      operator new();
    }

    std::string::operator=(v16, v15);
    v4 = *(lpsrc + 25);
    if ((v4 & 0x200) == 0)
    {
LABEL_27:
      if ((v4 & 0x400) == 0)
      {
        goto LABEL_28;
      }

      goto LABEL_40;
    }
  }

  else if ((v4 & 0x200) == 0)
  {
    goto LABEL_27;
  }

  v17 = lpsrc[7];
  *(this + 25) |= 0x200u;
  v18 = this[7];
  if (v18 == MEMORY[0x277D82C30])
  {
    operator new();
  }

  std::string::operator=(v18, v17);
  v4 = *(lpsrc + 25);
  if ((v4 & 0x400) == 0)
  {
LABEL_28:
    if ((v4 & 0x800) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_43;
  }

LABEL_40:
  v19 = lpsrc[8];
  *(this + 25) |= 0x400u;
  v20 = this[8];
  if (v20 == MEMORY[0x277D82C30])
  {
    operator new();
  }

  std::string::operator=(v20, v19);
  v4 = *(lpsrc + 25);
  if ((v4 & 0x800) == 0)
  {
LABEL_29:
    if ((v4 & 0x1000) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_46;
  }

LABEL_43:
  v21 = lpsrc[9];
  *(this + 25) |= 0x800u;
  v22 = this[9];
  if (v22 == MEMORY[0x277D82C30])
  {
    operator new();
  }

  std::string::operator=(v22, v21);
  v4 = *(lpsrc + 25);
  if ((v4 & 0x1000) == 0)
  {
LABEL_30:
    if ((v4 & 0x2000) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_49;
  }

LABEL_46:
  v23 = lpsrc[10];
  *(this + 25) |= 0x1000u;
  v24 = this[10];
  if (v24 == MEMORY[0x277D82C30])
  {
    operator new();
  }

  std::string::operator=(v24, v23);
  v4 = *(lpsrc + 25);
  if ((v4 & 0x2000) == 0)
  {
LABEL_31:
    if ((v4 & 0x4000) == 0)
    {
      return;
    }

    goto LABEL_32;
  }

LABEL_49:
  v25 = *(lpsrc + 22);
  *(this + 25) |= 0x2000u;
  *(this + 22) = v25;
  if ((*(lpsrc + 25) & 0x4000) != 0)
  {
LABEL_32:
    v14 = *(lpsrc + 23);
    *(this + 25) |= 0x4000u;
    *(this + 23) = v14;
  }
}

void sub_2373BE9CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::metrics::CommCenterTransferPlanListingStatus_ListingInfo::MergeFrom(awd::metrics::CommCenterTransferPlanListingStatus_ListingInfo *this, const awd::metrics::CommCenterTransferPlanListingStatus_ListingInfo *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v17);
  }

  v4 = *(a2 + 14);
  if (!v4)
  {
    goto LABEL_13;
  }

  if (v4)
  {
    v9 = *(a2 + 1);
    *(this + 14) |= 1u;
    v10 = *(this + 1);
    if (v10 == MEMORY[0x277D82C30])
    {
      operator new();
    }

    std::string::operator=(v10, v9);
    v4 = *(a2 + 14);
    if ((v4 & 2) == 0)
    {
LABEL_6:
      if ((v4 & 4) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_25;
    }
  }

  else if ((v4 & 2) == 0)
  {
    goto LABEL_6;
  }

  v11 = *(a2 + 4);
  *(this + 14) |= 2u;
  *(this + 4) = v11;
  v4 = *(a2 + 14);
  if ((v4 & 4) == 0)
  {
LABEL_7:
    if ((v4 & 8) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_26;
  }

LABEL_25:
  v12 = *(a2 + 20);
  *(this + 14) |= 4u;
  *(this + 20) = v12;
  v4 = *(a2 + 14);
  if ((v4 & 8) == 0)
  {
LABEL_8:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_27;
  }

LABEL_26:
  v13 = *(a2 + 21);
  *(this + 14) |= 8u;
  *(this + 21) = v13;
  v4 = *(a2 + 14);
  if ((v4 & 0x10) == 0)
  {
LABEL_9:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_10;
    }

LABEL_28:
    v15 = *(a2 + 23);
    *(this + 14) |= 0x20u;
    *(this + 23) = v15;
    v4 = *(a2 + 14);
    if ((v4 & 0x40) == 0)
    {
LABEL_11:
      if ((v4 & 0x80) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_12;
    }

    goto LABEL_29;
  }

LABEL_27:
  v14 = *(a2 + 22);
  *(this + 14) |= 0x10u;
  *(this + 22) = v14;
  v4 = *(a2 + 14);
  if ((v4 & 0x20) != 0)
  {
    goto LABEL_28;
  }

LABEL_10:
  if ((v4 & 0x40) == 0)
  {
    goto LABEL_11;
  }

LABEL_29:
  v16 = *(a2 + 12);
  *(this + 14) |= 0x40u;
  *(this + 12) = v16;
  v4 = *(a2 + 14);
  if ((v4 & 0x80) != 0)
  {
LABEL_12:
    v5 = *(a2 + 3);
    *(this + 14) |= 0x80u;
    *(this + 3) = v5;
    v4 = *(a2 + 14);
  }

LABEL_13:
  if ((v4 & 0xFF00) != 0)
  {
    if ((v4 & 0x100) != 0)
    {
      v6 = *(a2 + 4);
      *(this + 14) |= 0x100u;
      *(this + 4) = v6;
      v4 = *(a2 + 14);
    }

    if ((v4 & 0x200) != 0)
    {
      v7 = *(a2 + 5);
      *(this + 14) |= 0x200u;
      v8 = *(this + 5);
      if (v8 == MEMORY[0x277D82C30])
      {
        operator new();
      }

      std::string::operator=(v8, v7);
    }
  }
}

void sub_2373BEC34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t awd::metrics::CommCenterTransferPlanListingStatus_ListingInfo::SharedDtor(uint64_t this)
{
  v1 = this;
  v2 = *(this + 8);
  v3 = MEMORY[0x277D82C30];
  if (v2 != MEMORY[0x277D82C30] && v2 != 0)
  {
    if (*(v2 + 23) < 0)
    {
      operator delete(*v2);
    }

    this = MEMORY[0x2383CAFA0](v2, 0x1012C40EC159624);
  }

  v5 = *(v1 + 40);
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

void awd::metrics::CommCenterTransferPlanListingStatus_ListingInfo::~CommCenterTransferPlanListingStatus_ListingInfo(awd::metrics::CommCenterTransferPlanListingStatus_ListingInfo *this)
{
  *this = &unk_284A5F340;
  awd::metrics::CommCenterTransferPlanListingStatus_ListingInfo::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_284A5F340;
  awd::metrics::CommCenterTransferPlanListingStatus_ListingInfo::SharedDtor(this);
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  JUMPOUT(0x2383CAFA0);
}

uint64_t awd::metrics::CommCenterTransferPlanListingStatus_ListingInfo::Clear(uint64_t this)
{
  v1 = *(this + 56);
  if (v1)
  {
    if (v1)
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

    *(this + 48) = 0;
    *(this + 16) = 0;
    *(this + 24) = 0;
    v1 = *(this + 56);
  }

  if ((v1 & 0xFF00) != 0)
  {
    *(this + 32) = 0;
    if ((v1 & 0x200) != 0)
    {
      v3 = *(this + 40);
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
  }

  *(this + 56) = 0;
  return this;
}

uint64_t awd::metrics::CommCenterTransferPlanListingStatus_ListingInfo::MergePartialFromCodedStream(awd::metrics::CommCenterTransferPlanListingStatus_ListingInfo *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
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
                v19 = *(a2 + 1);
                v10 = *(a2 + 2);
                goto LABEL_80;
              }
            }

            else if (v8 == 7 && (TagFallback & 7) == 0)
            {
              v14 = *(a2 + 1);
              v10 = *(a2 + 2);
              goto LABEL_88;
            }

            goto LABEL_47;
          }

          if (v8 == 8)
          {
            if ((TagFallback & 7) == 0)
            {
              v21 = *(a2 + 1);
              v10 = *(a2 + 2);
              goto LABEL_96;
            }

            goto LABEL_47;
          }

          if (v8 == 9)
          {
            if ((TagFallback & 7) == 0)
            {
              v23 = *(a2 + 1);
              v10 = *(a2 + 2);
              goto LABEL_104;
            }

            goto LABEL_47;
          }

          if (v8 != 10 || v9 != 2)
          {
            goto LABEL_47;
          }

          v12 = *(this + 14);
LABEL_112:
          *(this + 14) = v12 | 0x200;
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
          break;
        }

        if (v8 != 1)
        {
          if (v8 != 2 || (TagFallback & 7) != 0)
          {
            goto LABEL_47;
          }

          v13 = *(a2 + 1);
          v10 = *(a2 + 2);
          goto LABEL_35;
        }

        if (v9 != 2)
        {
          goto LABEL_47;
        }

        *(this + 14) |= 1u;
        if (*(this + 1) == v5)
        {
          operator new();
        }

        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
        if (!result)
        {
          return result;
        }

        v16 = *(a2 + 1);
        v10 = *(a2 + 2);
        if (v16 < v10 && *v16 == 16)
        {
          v13 = v16 + 1;
          *(a2 + 1) = v13;
LABEL_35:
          if (v13 >= v10 || (v17 = *v13, v17 < 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 4);
            if (!result)
            {
              return result;
            }

            v18 = *(a2 + 1);
            v10 = *(a2 + 2);
          }

          else
          {
            *(this + 4) = v17;
            v18 = v13 + 1;
            *(a2 + 1) = v18;
          }

          *(this + 14) |= 2u;
          if (v18 < v10 && *v18 == 24)
          {
            v20 = v18 + 1;
            *(a2 + 1) = v20;
LABEL_56:
            v38 = 0;
            if (v20 >= v10 || (v24 = *v20, (v24 & 0x80000000) != 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v38);
              if (!result)
              {
                return result;
              }

              v24 = v38;
              v25 = *(a2 + 1);
              v10 = *(a2 + 2);
            }

            else
            {
              v25 = v20 + 1;
              *(a2 + 1) = v25;
            }

            *(this + 20) = v24 != 0;
            *(this + 14) |= 4u;
            if (v25 < v10 && *v25 == 32)
            {
              v22 = v25 + 1;
              *(a2 + 1) = v22;
              goto LABEL_64;
            }
          }
        }
      }

      if (v8 == 3)
      {
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_47;
        }

        v20 = *(a2 + 1);
        v10 = *(a2 + 2);
        goto LABEL_56;
      }

      if (v8 != 4)
      {
        break;
      }

      if ((TagFallback & 7) != 0)
      {
        goto LABEL_47;
      }

      v22 = *(a2 + 1);
      v10 = *(a2 + 2);
LABEL_64:
      v38 = 0;
      if (v22 >= v10 || (v26 = *v22, (v26 & 0x80000000) != 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v38);
        if (!result)
        {
          return result;
        }

        v26 = v38;
        v27 = *(a2 + 1);
        v10 = *(a2 + 2);
      }

      else
      {
        v27 = v22 + 1;
        *(a2 + 1) = v27;
      }

      *(this + 21) = v26 != 0;
      *(this + 14) |= 8u;
      if (v27 < v10 && *v27 == 40)
      {
        v11 = v27 + 1;
        *(a2 + 1) = v11;
LABEL_72:
        v38 = 0;
        if (v11 >= v10 || (v28 = *v11, (v28 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v38);
          if (!result)
          {
            return result;
          }

          v28 = v38;
          v29 = *(a2 + 1);
          v10 = *(a2 + 2);
        }

        else
        {
          v29 = v11 + 1;
          *(a2 + 1) = v29;
        }

        *(this + 22) = v28 != 0;
        *(this + 14) |= 0x10u;
        if (v29 < v10 && *v29 == 48)
        {
          v19 = v29 + 1;
          *(a2 + 1) = v19;
LABEL_80:
          v38 = 0;
          if (v19 >= v10 || (v30 = *v19, (v30 & 0x80000000) != 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v38);
            if (!result)
            {
              return result;
            }

            v30 = v38;
            v31 = *(a2 + 1);
            v10 = *(a2 + 2);
          }

          else
          {
            v31 = v19 + 1;
            *(a2 + 1) = v31;
          }

          *(this + 23) = v30 != 0;
          *(this + 14) |= 0x20u;
          if (v31 < v10 && *v31 == 56)
          {
            v14 = v31 + 1;
            *(a2 + 1) = v14;
LABEL_88:
            if (v14 >= v10 || (v32 = *v14, v32 < 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 12);
              if (!result)
              {
                return result;
              }

              v33 = *(a2 + 1);
              v10 = *(a2 + 2);
            }

            else
            {
              *(this + 12) = v32;
              v33 = v14 + 1;
              *(a2 + 1) = v33;
            }

            *(this + 14) |= 0x40u;
            if (v33 < v10 && *v33 == 64)
            {
              v21 = v33 + 1;
              *(a2 + 1) = v21;
LABEL_96:
              if (v21 >= v10 || (v34 = *v21, v34 < 0))
              {
                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 3);
                if (!result)
                {
                  return result;
                }

                v35 = *(a2 + 1);
                v10 = *(a2 + 2);
              }

              else
              {
                *(this + 3) = v34;
                v35 = v21 + 1;
                *(a2 + 1) = v35;
              }

              *(this + 14) |= 0x80u;
              if (v35 < v10 && *v35 == 72)
              {
                v23 = v35 + 1;
                *(a2 + 1) = v23;
LABEL_104:
                if (v23 >= v10 || (v36 = *v23, v36 < 0))
                {
                  result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 4);
                  if (!result)
                  {
                    return result;
                  }

                  v37 = *(a2 + 1);
                  v10 = *(a2 + 2);
                }

                else
                {
                  *(this + 4) = v36;
                  v37 = v23 + 1;
                  *(a2 + 1) = v37;
                }

                v12 = *(this + 14) | 0x100;
                *(this + 14) = v12;
                if (v37 < v10 && *v37 == 82)
                {
                  *(a2 + 1) = v37 + 1;
                  goto LABEL_112;
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
      goto LABEL_72;
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

uint64_t awd::metrics::CommCenterTransferPlanListingStatus_ListingInfo::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 56);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
    v6 = *(v5 + 56);
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

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(2, *(v5 + 16), a2, a4);
  v6 = *(v5 + 56);
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
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(3, *(v5 + 20), a2, a4);
  v6 = *(v5 + 56);
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
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(4, *(v5 + 21), a2, a4);
  v6 = *(v5 + 56);
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
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(5, *(v5 + 22), a2, a4);
  v6 = *(v5 + 56);
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
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(6, *(v5 + 23), a2, a4);
  v6 = *(v5 + 56);
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
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(7, *(v5 + 48), a2, a4);
  v6 = *(v5 + 56);
  if ((v6 & 0x80) == 0)
  {
LABEL_9:
    if ((v6 & 0x100) == 0)
    {
      goto LABEL_10;
    }

LABEL_20:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(9, *(v5 + 32), a2, a4);
    if ((*(v5 + 56) & 0x200) == 0)
    {
      return this;
    }

    goto LABEL_21;
  }

LABEL_19:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(8, *(v5 + 24), a2, a4);
  v6 = *(v5 + 56);
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

uint64_t awd::metrics::CommCenterTransferPlanListingStatus_ListingInfo::ByteSize(awd::metrics::CommCenterTransferPlanListingStatus_ListingInfo *this, unint64_t a2)
{
  v3 = *(this + 14);
  if (!v3)
  {
    v5 = 0;
    goto LABEL_26;
  }

  if (v3)
  {
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
      v12 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v10);
      v7 = *(v6 + 23);
      v9 = *(v6 + 8);
      v11 = v12 + 1;
      v3 = *(this + 14);
      v8 = *(v6 + 23);
    }

    else
    {
      v11 = 2;
    }

    if (v8 < 0)
    {
      v7 = v9;
    }

    v4 = v11 + v7;
    if ((v3 & 2) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_15;
  }

  v4 = 0;
  if ((v3 & 2) != 0)
  {
LABEL_15:
    v13 = *(this + 4);
    if (v13 >= 0x80)
    {
      v14 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v13) + 1;
      v3 = *(this + 14);
    }

    else
    {
      v14 = 2;
    }

    v4 += v14;
  }

LABEL_19:
  v15.i64[0] = 0x200000002;
  v15.i64[1] = 0x200000002;
  v5 = (vaddvq_s32(vandq_s8(vshlq_u32(vdupq_n_s32(v3), xmmword_2373DF0D0), v15)) + v4);
  if ((v3 & 0x40) != 0)
  {
    v16 = *(this + 12);
    if (v16 >= 0x80)
    {
      v17 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v16) + 1;
      v3 = *(this + 14);
    }

    else
    {
      v17 = 2;
    }

    v5 = (v17 + v5);
  }

  if ((v3 & 0x80) != 0)
  {
    v5 = v5 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 3)) + 1;
    v3 = *(this + 14);
  }

LABEL_26:
  if ((v3 & 0xFF00) != 0)
  {
    if ((v3 & 0x100) != 0)
    {
      v5 = v5 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 4)) + 1;
      v3 = *(this + 14);
    }

    if ((v3 & 0x200) != 0)
    {
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

      v5 = (v5 + v23 + v19 + 1);
    }
  }

  *(this + 13) = v5;
  return v5;
}

void awd::metrics::CommCenterTransferPlanListingStatus_ListingInfo::CheckTypeAndMergeFrom(awd::metrics::CommCenterTransferPlanListingStatus_ListingInfo *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  awd::metrics::CommCenterTransferPlanListingStatus_ListingInfo::MergeFrom(this, lpsrc);
}

void awd::metrics::CommCenterTransferPlanListingStatus::~CommCenterTransferPlanListingStatus(awd::metrics::CommCenterTransferPlanListingStatus *this)
{
  *this = &unk_284A5F3B8;
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
  awd::metrics::CommCenterTransferPlanListingStatus::~CommCenterTransferPlanListingStatus(this);

  JUMPOUT(0x2383CAFA0);
}

uint64_t awd::metrics::CommCenterTransferPlanListingStatus::Clear(uint64_t this)
{
  v1 = this;
  if (*(this + 56))
  {
    *(this + 8) = 0;
    *(this + 40) = 0;
    *(this + 48) = 0;
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
  *(v1 + 56) = 0;
  return this;
}

uint64_t awd::metrics::CommCenterTransferPlanListingStatus::MergePartialFromCodedStream(awd::metrics::CommCenterTransferPlanListingStatus *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
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

        if (v7 == 1)
        {
          if ((TagFallback & 7) != 0)
          {
            goto LABEL_21;
          }

          v14 = *(a2 + 1);
          v11 = *(a2 + 2);
          if (v14 >= v11 || (v15 = *v14, v15 < 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 1);
            if (!result)
            {
              return result;
            }

            v16 = *(a2 + 1);
            v11 = *(a2 + 2);
          }

          else
          {
            *(this + 1) = v15;
            v16 = v14 + 1;
            *(a2 + 1) = v16;
          }

          *(this + 14) |= 1u;
          if (v16 < v11 && *v16 == 16)
          {
            v12 = v16 + 1;
            *(a2 + 1) = v12;
            goto LABEL_32;
          }
        }

        else
        {
          if (v7 != 2 || (TagFallback & 7) != 0)
          {
            goto LABEL_21;
          }

          v12 = *(a2 + 1);
          v11 = *(a2 + 2);
LABEL_32:
          if (v12 >= v11 || (v18 = *v12, v18 < 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 10);
            if (!result)
            {
              return result;
            }

            v19 = *(a2 + 1);
            v11 = *(a2 + 2);
          }

          else
          {
            *(this + 10) = v18;
            v19 = v12 + 1;
            *(a2 + 1) = v19;
          }

          *(this + 14) |= 2u;
          if (v19 < v11 && *v19 == 26)
          {
            while (1)
            {
              *(a2 + 1) = v19 + 1;
LABEL_40:
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
              v36 = 0;
              v24 = *(a2 + 1);
              if (v24 >= *(a2 + 2) || *v24 < 0)
              {
                if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v36))
                {
                  return 0;
                }
              }

              else
              {
                v36 = *v24;
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
              if (!awd::metrics::CommCenterTransferPlanListingStatus_ListingInfo::MergePartialFromCodedStream(v23, a2, v27) || *(a2 + 36) != 1)
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

              v19 = *(a2 + 1);
              v9 = *(a2 + 2);
              if (v19 >= v9)
              {
                break;
              }

              v31 = *v19;
              if (v31 != 26)
              {
                if (v31 != 32)
                {
                  goto LABEL_1;
                }

                v13 = v19 + 1;
                *(a2 + 1) = v13;
                goto LABEL_58;
              }
            }
          }
        }
      }

      if (v7 == 3)
      {
        if (v8 != 2)
        {
          goto LABEL_21;
        }

        goto LABEL_40;
      }

      if (v7 != 4)
      {
        break;
      }

      if ((TagFallback & 7) != 0)
      {
        goto LABEL_21;
      }

      v13 = *(a2 + 1);
      v9 = *(a2 + 2);
LABEL_58:
      if (v13 >= v9 || (v32 = *v13, v32 < 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 11);
        if (!result)
        {
          return result;
        }

        v33 = *(a2 + 1);
        v9 = *(a2 + 2);
      }

      else
      {
        *(this + 11) = v32;
        v33 = v13 + 1;
        *(a2 + 1) = v33;
      }

      *(this + 14) |= 8u;
      if (v33 < v9 && *v33 == 40)
      {
        v10 = v33 + 1;
        *(a2 + 1) = v10;
LABEL_66:
        if (v10 >= v9 || (v34 = *v10, v34 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 12);
          if (!result)
          {
            return result;
          }

          v35 = *(a2 + 1);
          v9 = *(a2 + 2);
        }

        else
        {
          *(this + 12) = v34;
          v35 = v10 + 1;
          *(a2 + 1) = v35;
        }

        *(this + 14) |= 0x10u;
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

uint64_t awd::metrics::CommCenterTransferPlanListingStatus::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 56);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(1, *(this + 8), a2, a4);
    v6 = *(v5 + 56);
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

  v8 = *(v5 + 56);
  if ((v8 & 8) != 0)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(4, *(v5 + 44), a2, a4);
    v8 = *(v5 + 56);
  }

  if ((v8 & 0x10) != 0)
  {
    v9 = *(v5 + 48);

    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(5, v9, a2, a4);
  }

  return this;
}

uint64_t awd::metrics::CommCenterTransferPlanListingStatus::ByteSize(awd::metrics::CommCenterTransferPlanListingStatus *this, unint64_t a2)
{
  LOBYTE(v3) = *(this + 56);
  if (!v3)
  {
    v4 = 0;
    goto LABEL_22;
  }

  if (*(this + 56))
  {
    v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 1)) + 1;
    v3 = *(this + 14);
    if ((v3 & 2) == 0)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v4 = 0;
    if ((*(this + 56) & 2) == 0)
    {
      goto LABEL_11;
    }
  }

  v5 = *(this + 10);
  if (v5 >= 0x80)
  {
    v6 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5) + 1;
    v3 = *(this + 14);
  }

  else
  {
    v6 = 2;
  }

  v4 += v6;
LABEL_11:
  if ((v3 & 8) == 0)
  {
    if ((v3 & 0x10) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_18;
  }

  v7 = *(this + 11);
  if (v7 >= 0x80)
  {
    v8 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v7) + 1;
    v3 = *(this + 14);
  }

  else
  {
    v8 = 2;
  }

  v4 += v8;
  if ((v3 & 0x10) != 0)
  {
LABEL_18:
    v9 = *(this + 12);
    if (v9 >= 0x80)
    {
      v10 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v9) + 1;
    }

    else
    {
      v10 = 2;
    }

    v4 += v10;
  }

LABEL_22:
  v11 = *(this + 6);
  v12 = (v11 + v4);
  if (v11 >= 1)
  {
    v13 = 0;
    do
    {
      v14 = awd::metrics::CommCenterTransferPlanListingStatus_ListingInfo::ByteSize(*(*(this + 2) + 8 * v13), a2);
      v15 = v14;
      if (v14 >= 0x80)
      {
        v16 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v14);
      }

      else
      {
        v16 = 1;
      }

      v12 = (v15 + v12 + v16);
      ++v13;
    }

    while (v13 < *(this + 6));
  }

  *(this + 13) = v12;
  return v12;
}

void awd::metrics::CommCenterTransferPlanListingStatus::CheckTypeAndMergeFrom(awd::metrics::CommCenterTransferPlanListingStatus *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  if (lpsrc == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v15);
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
        wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v15);
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
      awd::metrics::CommCenterTransferPlanListingStatus_ListingInfo::MergeFrom(*(v9 + 8 * v8), v6);
      ++v5;
      v4 = *(lpsrc + 6);
    }

    while (v5 < v4);
  }

  LOBYTE(v10) = *(lpsrc + 56);
  if (!v10)
  {
    return;
  }

  if ((*(lpsrc + 56) & 1) == 0)
  {
    if ((*(lpsrc + 56) & 2) == 0)
    {
      goto LABEL_17;
    }

LABEL_22:
    v13 = *(lpsrc + 10);
    *(this + 14) |= 2u;
    *(this + 10) = v13;
    v10 = *(lpsrc + 14);
    if ((v10 & 8) == 0)
    {
LABEL_18:
      if ((v10 & 0x10) == 0)
      {
        return;
      }

      goto LABEL_19;
    }

    goto LABEL_23;
  }

  v12 = *(lpsrc + 1);
  *(this + 14) |= 1u;
  *(this + 1) = v12;
  v10 = *(lpsrc + 14);
  if ((v10 & 2) != 0)
  {
    goto LABEL_22;
  }

LABEL_17:
  if ((v10 & 8) == 0)
  {
    goto LABEL_18;
  }

LABEL_23:
  v14 = *(lpsrc + 11);
  *(this + 14) |= 8u;
  *(this + 11) = v14;
  if ((*(lpsrc + 14) & 0x10) != 0)
  {
LABEL_19:
    v11 = *(lpsrc + 12);
    *(this + 14) |= 0x10u;
    *(this + 12) = v11;
  }
}

void sub_2373C027C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t awd::metrics::protobuf_ShutdownFile_CCMetricsCounts_2eproto(awd::metrics *this)
{
  if (qword_2810D8860)
  {
    (*(*qword_2810D8860 + 8))(qword_2810D8860);
  }

  if (qword_2810D8868)
  {
    (*(*qword_2810D8868 + 8))(qword_2810D8868);
  }

  if (qword_2810D8870)
  {
    (*(*qword_2810D8870 + 8))(qword_2810D8870);
  }

  if (qword_2810D8878)
  {
    (*(*qword_2810D8878 + 8))(qword_2810D8878);
  }

  if (qword_2810D8880)
  {
    (*(*qword_2810D8880 + 8))(qword_2810D8880);
  }

  if (qword_2810D8888)
  {
    (*(*qword_2810D8888 + 8))(qword_2810D8888);
  }

  if (qword_2810D8890)
  {
    (*(*qword_2810D8890 + 8))(qword_2810D8890);
  }

  if (qword_2810D8898)
  {
    (*(*qword_2810D8898 + 8))(qword_2810D8898);
  }

  if (qword_2810D88A0)
  {
    (*(*qword_2810D88A0 + 8))(qword_2810D88A0);
  }

  if (qword_2810D88A8)
  {
    (*(*qword_2810D88A8 + 8))(qword_2810D88A8);
  }

  if (qword_2810D88B0)
  {
    (*(*qword_2810D88B0 + 8))(qword_2810D88B0);
  }

  if (qword_2810D88B8)
  {
    (*(*qword_2810D88B8 + 8))(qword_2810D88B8);
  }

  if (qword_2810D88C0)
  {
    (*(*qword_2810D88C0 + 8))(qword_2810D88C0);
  }

  if (qword_2810D88C8)
  {
    (*(*qword_2810D88C8 + 8))(qword_2810D88C8);
  }

  if (qword_2810D88D0)
  {
    (*(*qword_2810D88D0 + 8))(qword_2810D88D0);
  }

  if (qword_2810D88D8)
  {
    (*(*qword_2810D88D8 + 8))(qword_2810D88D8);
  }

  if (qword_2810D88E0)
  {
    (*(*qword_2810D88E0 + 8))(qword_2810D88E0);
  }

  if (qword_2810D88E8)
  {
    (*(*qword_2810D88E8 + 8))(qword_2810D88E8);
  }

  if (qword_2810D88F0)
  {
    (*(*qword_2810D88F0 + 8))(qword_2810D88F0);
  }

  if (qword_2810D88F8)
  {
    (*(*qword_2810D88F8 + 8))(qword_2810D88F8);
  }

  result = qword_2810D8900;
  if (qword_2810D8900)
  {
    v2 = *(*qword_2810D8900 + 8);

    return v2();
  }

  return result;
}

uint64_t awd::metrics::MOSMSSendSuccessfulCount::MOSMSSendSuccessfulCount(uint64_t this)
{
  *this = &unk_284A5FAC0;
  *(this + 8) = 0;
  *(this + 16) = 0;
  *(this + 24) = 0;
  *(this + 32) = 0;
  return this;
}

uint64_t awd::metrics::MOSMSSendFailedCount::MOSMSSendFailedCount(uint64_t this)
{
  *this = &unk_284A5FB38;
  *(this + 8) = 0;
  *(this + 16) = 0;
  *(this + 24) = 0;
  *(this + 32) = 0;
  return this;
}

uint64_t awd::metrics::MTSMSRecvSuccessfulCount::MTSMSRecvSuccessfulCount(uint64_t this)
{
  *this = &unk_284A5FBB0;
  *(this + 8) = 0;
  *(this + 16) = 0;
  *(this + 24) = 0;
  *(this + 32) = 0;
  return this;
}

uint64_t awd::metrics::MTSMSRecvFailedCount::MTSMSRecvFailedCount(uint64_t this)
{
  *this = &unk_284A5FC28;
  *(this + 8) = 0;
  *(this + 16) = 0;
  *(this + 24) = 0;
  *(this + 32) = 0;
  return this;
}

uint64_t awd::metrics::MOMMSSendSuccessfulCount::MOMMSSendSuccessfulCount(uint64_t this)
{
  *this = &unk_284A5FCA0;
  *(this + 8) = 0;
  *(this + 16) = 0;
  *(this + 24) = 0;
  *(this + 32) = 0;
  return this;
}

uint64_t awd::metrics::MOMMSSendFailedCount::MOMMSSendFailedCount(uint64_t this)
{
  *this = &unk_284A5FD18;
  *(this + 8) = 0;
  *(this + 16) = 0;
  *(this + 24) = 0;
  *(this + 32) = 0;
  return this;
}

uint64_t awd::metrics::MTMMSRecvSuccessfulCount::MTMMSRecvSuccessfulCount(uint64_t this)
{
  *this = &unk_284A5FD90;
  *(this + 8) = 0;
  *(this + 16) = 0;
  *(this + 24) = 0;
  *(this + 32) = 0;
  return this;
}

uint64_t awd::metrics::MTMMSRecvFailedCount::MTMMSRecvFailedCount(uint64_t this)
{
  *this = &unk_284A5FE08;
  *(this + 8) = 0;
  *(this + 16) = 0;
  *(this + 24) = 0;
  *(this + 32) = 0;
  return this;
}

double awd::metrics::DataSentOnInternetCtxCount::DataSentOnInternetCtxCount(awd::metrics::DataSentOnInternetCtxCount *this)
{
  *this = &unk_284A5FE80;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  return result;
}

double awd::metrics::DataRecvedOnInternetCtxCount::DataRecvedOnInternetCtxCount(awd::metrics::DataRecvedOnInternetCtxCount *this)
{
  *this = &unk_284A5FEF8;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  return result;
}

uint64_t awd::metrics::VVMNotificationsRecvedCount::VVMNotificationsRecvedCount(uint64_t this)
{
  *this = &unk_284A5FF70;
  *(this + 8) = 0;
  *(this + 16) = 0;
  *(this + 24) = 0;
  *(this + 32) = 0;
  return this;
}

uint64_t awd::metrics::SRUMB_Attempt_Count::SRUMB_Attempt_Count(uint64_t this)
{
  *this = &unk_284A5FFE8;
  *(this + 8) = 0;
  *(this + 16) = 0;
  *(this + 24) = 0;
  *(this + 32) = 0;
  return this;
}

double awd::metrics::SoundUMB_ATM_REG_Duration::SoundUMB_ATM_REG_Duration(awd::metrics::SoundUMB_ATM_REG_Duration *this)
{
  *this = &unk_284A60060;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 88) = 0u;
  *(this + 104) = 0u;
  *(this + 120) = 0u;
  *(this + 34) = 0;
  return result;
}

void awd::metrics::MOCallsSuccessfulCount::~MOCallsSuccessfulCount(awd::metrics::MOCallsSuccessfulCount *this)
{
  *this = &unk_284A5F700;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_284A5F700;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  JUMPOUT(0x2383CAFA0);
}

uint64_t awd::metrics::MOCallsSuccessfulCount::Clear(uint64_t this)
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

uint64_t awd::metrics::MOCallsSuccessfulCount::MergePartialFromCodedStream(awd::metrics::MOCallsSuccessfulCount *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
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
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 6);
        if (!result)
        {
          return result;
        }

        v11 = *(a2 + 1);
        v8 = *(a2 + 2);
      }

      else
      {
        *(this + 6) = v10;
        v11 = v9 + 1;
        *(a2 + 1) = v11;
      }

      *(this + 8) |= 1u;
      if (v11 < v8 && *v11 == 16)
      {
        v12 = v11 + 1;
        *(a2 + 1) = v12;
LABEL_25:
        if (v12 >= v8 || (v14 = *v12, v14 < 0))
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
          v15 = v12 + 1;
          *(a2 + 1) = v15;
        }

        *(this + 8) |= 2u;
        if (v15 < v8 && *v15 == 24)
        {
          v13 = v15 + 1;
          *(a2 + 1) = v13;
LABEL_33:
          if (v13 >= v8 || (v16 = *v13, v16 < 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 2);
            if (!result)
            {
              return result;
            }

            v17 = *(a2 + 1);
            v8 = *(a2 + 2);
          }

          else
          {
            *(this + 2) = v16;
            v17 = v13 + 1;
            *(a2 + 1) = v17;
          }

          *(this + 8) |= 4u;
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

uint64_t awd::metrics::MOCallsSuccessfulCount::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
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
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(2, *(v5 + 8), a2, a4);
    if ((*(v5 + 32) & 4) == 0)
    {
      return this;
    }

    goto LABEL_7;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(1, *(this + 24), a2, a4);
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
  v7 = *(v5 + 16);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(3, v7, a2, a4);
}

uint64_t awd::metrics::MOCallsSuccessfulCount::ByteSize(awd::metrics::MOCallsSuccessfulCount *this, unint64_t a2)
{
  LOBYTE(v3) = *(this + 32);
  if (!v3)
  {
    v4 = 0;
    goto LABEL_13;
  }

  if ((*(this + 32) & 1) == 0)
  {
    v4 = 0;
    if ((*(this + 32) & 2) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  v5 = *(this + 6);
  if (v5 >= 0x80)
  {
    v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5) + 1;
    v3 = *(this + 8);
    if ((v3 & 2) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  v4 = 2;
  if ((v3 & 2) != 0)
  {
LABEL_10:
    v4 = v4 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 1)) + 1;
    v3 = *(this + 8);
  }

LABEL_11:
  if ((v3 & 4) != 0)
  {
    v4 = v4 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 2)) + 1;
  }

LABEL_13:
  *(this + 7) = v4;
  return v4;
}

void awd::metrics::MOCallsSuccessfulCount::CheckTypeAndMergeFrom(awd::metrics::MOCallsSuccessfulCount *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
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

  LOBYTE(v4) = *(lpsrc + 32);
  if (v4)
  {
    if (*(lpsrc + 32))
    {
      v6 = *(lpsrc + 6);
      *(this + 8) |= 1u;
      *(this + 6) = v6;
      v4 = *(lpsrc + 8);
      if ((v4 & 2) == 0)
      {
LABEL_7:
        if ((v4 & 4) == 0)
        {
          return;
        }

        goto LABEL_8;
      }
    }

    else if ((*(lpsrc + 32) & 2) == 0)
    {
      goto LABEL_7;
    }

    v7 = *(lpsrc + 1);
    *(this + 8) |= 2u;
    *(this + 1) = v7;
    if ((*(lpsrc + 8) & 4) != 0)
    {
LABEL_8:
      v5 = *(lpsrc + 2);
      *(this + 8) |= 4u;
      *(this + 2) = v5;
    }
  }
}

void sub_2373C0F18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::metrics::MOCallsFailedCount::~MOCallsFailedCount(awd::metrics::MOCallsFailedCount *this)
{
  *this = &unk_284A5F778;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_284A5F778;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  JUMPOUT(0x2383CAFA0);
}

uint64_t awd::metrics::MOCallsFailedCount::Clear(uint64_t this)
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

uint64_t awd::metrics::MOCallsFailedCount::MergePartialFromCodedStream(awd::metrics::MOCallsFailedCount *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
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
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 6);
        if (!result)
        {
          return result;
        }

        v11 = *(a2 + 1);
        v8 = *(a2 + 2);
      }

      else
      {
        *(this + 6) = v10;
        v11 = v9 + 1;
        *(a2 + 1) = v11;
      }

      *(this + 8) |= 1u;
      if (v11 < v8 && *v11 == 16)
      {
        v12 = v11 + 1;
        *(a2 + 1) = v12;
LABEL_25:
        if (v12 >= v8 || (v14 = *v12, v14 < 0))
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
          v15 = v12 + 1;
          *(a2 + 1) = v15;
        }

        *(this + 8) |= 2u;
        if (v15 < v8 && *v15 == 24)
        {
          v13 = v15 + 1;
          *(a2 + 1) = v13;
LABEL_33:
          if (v13 >= v8 || (v16 = *v13, v16 < 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 2);
            if (!result)
            {
              return result;
            }

            v17 = *(a2 + 1);
            v8 = *(a2 + 2);
          }

          else
          {
            *(this + 2) = v16;
            v17 = v13 + 1;
            *(a2 + 1) = v17;
          }

          *(this + 8) |= 4u;
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

uint64_t awd::metrics::MOCallsFailedCount::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
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
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(2, *(v5 + 8), a2, a4);
    if ((*(v5 + 32) & 4) == 0)
    {
      return this;
    }

    goto LABEL_7;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(1, *(this + 24), a2, a4);
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
  v7 = *(v5 + 16);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(3, v7, a2, a4);
}

uint64_t awd::metrics::MOCallsFailedCount::ByteSize(awd::metrics::MOCallsFailedCount *this, unint64_t a2)
{
  LOBYTE(v3) = *(this + 32);
  if (!v3)
  {
    v4 = 0;
    goto LABEL_13;
  }

  if ((*(this + 32) & 1) == 0)
  {
    v4 = 0;
    if ((*(this + 32) & 2) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  v5 = *(this + 6);
  if (v5 >= 0x80)
  {
    v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5) + 1;
    v3 = *(this + 8);
    if ((v3 & 2) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  v4 = 2;
  if ((v3 & 2) != 0)
  {
LABEL_10:
    v4 = v4 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 1)) + 1;
    v3 = *(this + 8);
  }

LABEL_11:
  if ((v3 & 4) != 0)
  {
    v4 = v4 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 2)) + 1;
  }

LABEL_13:
  *(this + 7) = v4;
  return v4;
}

void awd::metrics::MOCallsFailedCount::CheckTypeAndMergeFrom(awd::metrics::MOCallsFailedCount *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
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

  LOBYTE(v4) = *(lpsrc + 32);
  if (v4)
  {
    if (*(lpsrc + 32))
    {
      v6 = *(lpsrc + 6);
      *(this + 8) |= 1u;
      *(this + 6) = v6;
      v4 = *(lpsrc + 8);
      if ((v4 & 2) == 0)
      {
LABEL_7:
        if ((v4 & 4) == 0)
        {
          return;
        }

        goto LABEL_8;
      }
    }

    else if ((*(lpsrc + 32) & 2) == 0)
    {
      goto LABEL_7;
    }

    v7 = *(lpsrc + 1);
    *(this + 8) |= 2u;
    *(this + 1) = v7;
    if ((*(lpsrc + 8) & 4) != 0)
    {
LABEL_8:
      v5 = *(lpsrc + 2);
      *(this + 8) |= 4u;
      *(this + 2) = v5;
    }
  }
}

void sub_2373C1470(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::metrics::MOCallsEndedNormallyCount::~MOCallsEndedNormallyCount(awd::metrics::MOCallsEndedNormallyCount *this)
{
  *this = &unk_284A5F7F0;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_284A5F7F0;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  JUMPOUT(0x2383CAFA0);
}

uint64_t awd::metrics::MOCallsEndedNormallyCount::Clear(uint64_t this)
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

uint64_t awd::metrics::MOCallsEndedNormallyCount::MergePartialFromCodedStream(awd::metrics::MOCallsEndedNormallyCount *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
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
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 6);
        if (!result)
        {
          return result;
        }

        v11 = *(a2 + 1);
        v8 = *(a2 + 2);
      }

      else
      {
        *(this + 6) = v10;
        v11 = v9 + 1;
        *(a2 + 1) = v11;
      }

      *(this + 8) |= 1u;
      if (v11 < v8 && *v11 == 16)
      {
        v12 = v11 + 1;
        *(a2 + 1) = v12;
LABEL_25:
        if (v12 >= v8 || (v14 = *v12, v14 < 0))
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
          v15 = v12 + 1;
          *(a2 + 1) = v15;
        }

        *(this + 8) |= 2u;
        if (v15 < v8 && *v15 == 24)
        {
          v13 = v15 + 1;
          *(a2 + 1) = v13;
LABEL_33:
          if (v13 >= v8 || (v16 = *v13, v16 < 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 2);
            if (!result)
            {
              return result;
            }

            v17 = *(a2 + 1);
            v8 = *(a2 + 2);
          }

          else
          {
            *(this + 2) = v16;
            v17 = v13 + 1;
            *(a2 + 1) = v17;
          }

          *(this + 8) |= 4u;
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

uint64_t awd::metrics::MOCallsEndedNormallyCount::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
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
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(2, *(v5 + 8), a2, a4);
    if ((*(v5 + 32) & 4) == 0)
    {
      return this;
    }

    goto LABEL_7;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(1, *(this + 24), a2, a4);
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
  v7 = *(v5 + 16);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(3, v7, a2, a4);
}

uint64_t awd::metrics::MOCallsEndedNormallyCount::ByteSize(awd::metrics::MOCallsEndedNormallyCount *this, unint64_t a2)
{
  LOBYTE(v3) = *(this + 32);
  if (!v3)
  {
    v4 = 0;
    goto LABEL_13;
  }

  if ((*(this + 32) & 1) == 0)
  {
    v4 = 0;
    if ((*(this + 32) & 2) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  v5 = *(this + 6);
  if (v5 >= 0x80)
  {
    v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5) + 1;
    v3 = *(this + 8);
    if ((v3 & 2) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  v4 = 2;
  if ((v3 & 2) != 0)
  {
LABEL_10:
    v4 = v4 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 1)) + 1;
    v3 = *(this + 8);
  }

LABEL_11:
  if ((v3 & 4) != 0)
  {
    v4 = v4 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 2)) + 1;
  }

LABEL_13:
  *(this + 7) = v4;
  return v4;
}

void awd::metrics::MOCallsEndedNormallyCount::CheckTypeAndMergeFrom(awd::metrics::MOCallsEndedNormallyCount *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
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

  LOBYTE(v4) = *(lpsrc + 32);
  if (v4)
  {
    if (*(lpsrc + 32))
    {
      v6 = *(lpsrc + 6);
      *(this + 8) |= 1u;
      *(this + 6) = v6;
      v4 = *(lpsrc + 8);
      if ((v4 & 2) == 0)
      {
LABEL_7:
        if ((v4 & 4) == 0)
        {
          return;
        }

        goto LABEL_8;
      }
    }

    else if ((*(lpsrc + 32) & 2) == 0)
    {
      goto LABEL_7;
    }

    v7 = *(lpsrc + 1);
    *(this + 8) |= 2u;
    *(this + 1) = v7;
    if ((*(lpsrc + 8) & 4) != 0)
    {
LABEL_8:
      v5 = *(lpsrc + 2);
      *(this + 8) |= 4u;
      *(this + 2) = v5;
    }
  }
}

void sub_2373C19C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::metrics::MOCallEndedDropCount::~MOCallEndedDropCount(awd::metrics::MOCallEndedDropCount *this)
{
  *this = &unk_284A5F868;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_284A5F868;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  JUMPOUT(0x2383CAFA0);
}

uint64_t awd::metrics::MOCallEndedDropCount::Clear(uint64_t this)
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

uint64_t awd::metrics::MOCallEndedDropCount::MergePartialFromCodedStream(awd::metrics::MOCallEndedDropCount *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
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
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 6);
        if (!result)
        {
          return result;
        }

        v11 = *(a2 + 1);
        v8 = *(a2 + 2);
      }

      else
      {
        *(this + 6) = v10;
        v11 = v9 + 1;
        *(a2 + 1) = v11;
      }

      *(this + 8) |= 1u;
      if (v11 < v8 && *v11 == 16)
      {
        v12 = v11 + 1;
        *(a2 + 1) = v12;
LABEL_25:
        if (v12 >= v8 || (v14 = *v12, v14 < 0))
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
          v15 = v12 + 1;
          *(a2 + 1) = v15;
        }

        *(this + 8) |= 2u;
        if (v15 < v8 && *v15 == 24)
        {
          v13 = v15 + 1;
          *(a2 + 1) = v13;
LABEL_33:
          if (v13 >= v8 || (v16 = *v13, v16 < 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 2);
            if (!result)
            {
              return result;
            }

            v17 = *(a2 + 1);
            v8 = *(a2 + 2);
          }

          else
          {
            *(this + 2) = v16;
            v17 = v13 + 1;
            *(a2 + 1) = v17;
          }

          *(this + 8) |= 4u;
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

uint64_t awd::metrics::MOCallEndedDropCount::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
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
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(2, *(v5 + 8), a2, a4);
    if ((*(v5 + 32) & 4) == 0)
    {
      return this;
    }

    goto LABEL_7;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(1, *(this + 24), a2, a4);
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
  v7 = *(v5 + 16);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(3, v7, a2, a4);
}

uint64_t awd::metrics::MOCallEndedDropCount::ByteSize(awd::metrics::MOCallEndedDropCount *this, unint64_t a2)
{
  LOBYTE(v3) = *(this + 32);
  if (!v3)
  {
    v4 = 0;
    goto LABEL_13;
  }

  if ((*(this + 32) & 1) == 0)
  {
    v4 = 0;
    if ((*(this + 32) & 2) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  v5 = *(this + 6);
  if (v5 >= 0x80)
  {
    v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5) + 1;
    v3 = *(this + 8);
    if ((v3 & 2) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  v4 = 2;
  if ((v3 & 2) != 0)
  {
LABEL_10:
    v4 = v4 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 1)) + 1;
    v3 = *(this + 8);
  }

LABEL_11:
  if ((v3 & 4) != 0)
  {
    v4 = v4 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 2)) + 1;
  }

LABEL_13:
  *(this + 7) = v4;
  return v4;
}

void awd::metrics::MOCallEndedDropCount::CheckTypeAndMergeFrom(awd::metrics::MOCallEndedDropCount *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
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

  LOBYTE(v4) = *(lpsrc + 32);
  if (v4)
  {
    if (*(lpsrc + 32))
    {
      v6 = *(lpsrc + 6);
      *(this + 8) |= 1u;
      *(this + 6) = v6;
      v4 = *(lpsrc + 8);
      if ((v4 & 2) == 0)
      {
LABEL_7:
        if ((v4 & 4) == 0)
        {
          return;
        }

        goto LABEL_8;
      }
    }

    else if ((*(lpsrc + 32) & 2) == 0)
    {
      goto LABEL_7;
    }

    v7 = *(lpsrc + 1);
    *(this + 8) |= 2u;
    *(this + 1) = v7;
    if ((*(lpsrc + 8) & 4) != 0)
    {
LABEL_8:
      v5 = *(lpsrc + 2);
      *(this + 8) |= 4u;
      *(this + 2) = v5;
    }
  }
}

void sub_2373C1F20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::metrics::MTCallPickedUpCount::~MTCallPickedUpCount(awd::metrics::MTCallPickedUpCount *this)
{
  *this = &unk_284A5F8E0;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_284A5F8E0;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  JUMPOUT(0x2383CAFA0);
}

uint64_t awd::metrics::MTCallPickedUpCount::Clear(uint64_t this)
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

uint64_t awd::metrics::MTCallPickedUpCount::MergePartialFromCodedStream(awd::metrics::MTCallPickedUpCount *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
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
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 6);
        if (!result)
        {
          return result;
        }

        v11 = *(a2 + 1);
        v8 = *(a2 + 2);
      }

      else
      {
        *(this + 6) = v10;
        v11 = v9 + 1;
        *(a2 + 1) = v11;
      }

      *(this + 8) |= 1u;
      if (v11 < v8 && *v11 == 16)
      {
        v12 = v11 + 1;
        *(a2 + 1) = v12;
LABEL_25:
        if (v12 >= v8 || (v14 = *v12, v14 < 0))
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
          v15 = v12 + 1;
          *(a2 + 1) = v15;
        }

        *(this + 8) |= 2u;
        if (v15 < v8 && *v15 == 24)
        {
          v13 = v15 + 1;
          *(a2 + 1) = v13;
LABEL_33:
          if (v13 >= v8 || (v16 = *v13, v16 < 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 2);
            if (!result)
            {
              return result;
            }

            v17 = *(a2 + 1);
            v8 = *(a2 + 2);
          }

          else
          {
            *(this + 2) = v16;
            v17 = v13 + 1;
            *(a2 + 1) = v17;
          }

          *(this + 8) |= 4u;
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

uint64_t awd::metrics::MTCallPickedUpCount::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
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
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(2, *(v5 + 8), a2, a4);
    if ((*(v5 + 32) & 4) == 0)
    {
      return this;
    }

    goto LABEL_7;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(1, *(this + 24), a2, a4);
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
  v7 = *(v5 + 16);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(3, v7, a2, a4);
}

uint64_t awd::metrics::MTCallPickedUpCount::ByteSize(awd::metrics::MTCallPickedUpCount *this, unint64_t a2)
{
  LOBYTE(v3) = *(this + 32);
  if (!v3)
  {
    v4 = 0;
    goto LABEL_13;
  }

  if ((*(this + 32) & 1) == 0)
  {
    v4 = 0;
    if ((*(this + 32) & 2) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  v5 = *(this + 6);
  if (v5 >= 0x80)
  {
    v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5) + 1;
    v3 = *(this + 8);
    if ((v3 & 2) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  v4 = 2;
  if ((v3 & 2) != 0)
  {
LABEL_10:
    v4 = v4 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 1)) + 1;
    v3 = *(this + 8);
  }

LABEL_11:
  if ((v3 & 4) != 0)
  {
    v4 = v4 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 2)) + 1;
  }

LABEL_13:
  *(this + 7) = v4;
  return v4;
}

void awd::metrics::MTCallPickedUpCount::CheckTypeAndMergeFrom(awd::metrics::MTCallPickedUpCount *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
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

  LOBYTE(v4) = *(lpsrc + 32);
  if (v4)
  {
    if (*(lpsrc + 32))
    {
      v6 = *(lpsrc + 6);
      *(this + 8) |= 1u;
      *(this + 6) = v6;
      v4 = *(lpsrc + 8);
      if ((v4 & 2) == 0)
      {
LABEL_7:
        if ((v4 & 4) == 0)
        {
          return;
        }

        goto LABEL_8;
      }
    }

    else if ((*(lpsrc + 32) & 2) == 0)
    {
      goto LABEL_7;
    }

    v7 = *(lpsrc + 1);
    *(this + 8) |= 2u;
    *(this + 1) = v7;
    if ((*(lpsrc + 8) & 4) != 0)
    {
LABEL_8:
      v5 = *(lpsrc + 2);
      *(this + 8) |= 4u;
      *(this + 2) = v5;
    }
  }
}

void sub_2373C2478(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::metrics::MTCallsRejectedCount::~MTCallsRejectedCount(awd::metrics::MTCallsRejectedCount *this)
{
  *this = &unk_284A5F958;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_284A5F958;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  JUMPOUT(0x2383CAFA0);
}

uint64_t awd::metrics::MTCallsRejectedCount::Clear(uint64_t this)
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

uint64_t awd::metrics::MTCallsRejectedCount::MergePartialFromCodedStream(awd::metrics::MTCallsRejectedCount *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
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
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 6);
        if (!result)
        {
          return result;
        }

        v11 = *(a2 + 1);
        v8 = *(a2 + 2);
      }

      else
      {
        *(this + 6) = v10;
        v11 = v9 + 1;
        *(a2 + 1) = v11;
      }

      *(this + 8) |= 1u;
      if (v11 < v8 && *v11 == 16)
      {
        v12 = v11 + 1;
        *(a2 + 1) = v12;
LABEL_25:
        if (v12 >= v8 || (v14 = *v12, v14 < 0))
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
          v15 = v12 + 1;
          *(a2 + 1) = v15;
        }

        *(this + 8) |= 2u;
        if (v15 < v8 && *v15 == 24)
        {
          v13 = v15 + 1;
          *(a2 + 1) = v13;
LABEL_33:
          if (v13 >= v8 || (v16 = *v13, v16 < 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 2);
            if (!result)
            {
              return result;
            }

            v17 = *(a2 + 1);
            v8 = *(a2 + 2);
          }

          else
          {
            *(this + 2) = v16;
            v17 = v13 + 1;
            *(a2 + 1) = v17;
          }

          *(this + 8) |= 4u;
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

uint64_t awd::metrics::MTCallsRejectedCount::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
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
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(2, *(v5 + 8), a2, a4);
    if ((*(v5 + 32) & 4) == 0)
    {
      return this;
    }

    goto LABEL_7;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(1, *(this + 24), a2, a4);
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
  v7 = *(v5 + 16);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(3, v7, a2, a4);
}

uint64_t awd::metrics::MTCallsRejectedCount::ByteSize(awd::metrics::MTCallsRejectedCount *this, unint64_t a2)
{
  LOBYTE(v3) = *(this + 32);
  if (!v3)
  {
    v4 = 0;
    goto LABEL_13;
  }

  if ((*(this + 32) & 1) == 0)
  {
    v4 = 0;
    if ((*(this + 32) & 2) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  v5 = *(this + 6);
  if (v5 >= 0x80)
  {
    v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5) + 1;
    v3 = *(this + 8);
    if ((v3 & 2) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  v4 = 2;
  if ((v3 & 2) != 0)
  {
LABEL_10:
    v4 = v4 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 1)) + 1;
    v3 = *(this + 8);
  }

LABEL_11:
  if ((v3 & 4) != 0)
  {
    v4 = v4 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 2)) + 1;
  }

LABEL_13:
  *(this + 7) = v4;
  return v4;
}

void awd::metrics::MTCallsRejectedCount::CheckTypeAndMergeFrom(awd::metrics::MTCallsRejectedCount *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
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

  LOBYTE(v4) = *(lpsrc + 32);
  if (v4)
  {
    if (*(lpsrc + 32))
    {
      v6 = *(lpsrc + 6);
      *(this + 8) |= 1u;
      *(this + 6) = v6;
      v4 = *(lpsrc + 8);
      if ((v4 & 2) == 0)
      {
LABEL_7:
        if ((v4 & 4) == 0)
        {
          return;
        }

        goto LABEL_8;
      }
    }

    else if ((*(lpsrc + 32) & 2) == 0)
    {
      goto LABEL_7;
    }

    v7 = *(lpsrc + 1);
    *(this + 8) |= 2u;
    *(this + 1) = v7;
    if ((*(lpsrc + 8) & 4) != 0)
    {
LABEL_8:
      v5 = *(lpsrc + 2);
      *(this + 8) |= 4u;
      *(this + 2) = v5;
    }
  }
}

void sub_2373C29D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::metrics::MTCallsEndedNormallyCount::~MTCallsEndedNormallyCount(awd::metrics::MTCallsEndedNormallyCount *this)
{
  *this = &unk_284A5F9D0;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_284A5F9D0;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  JUMPOUT(0x2383CAFA0);
}

uint64_t awd::metrics::MTCallsEndedNormallyCount::Clear(uint64_t this)
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

uint64_t awd::metrics::MTCallsEndedNormallyCount::MergePartialFromCodedStream(awd::metrics::MTCallsEndedNormallyCount *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
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
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 6);
        if (!result)
        {
          return result;
        }

        v11 = *(a2 + 1);
        v8 = *(a2 + 2);
      }

      else
      {
        *(this + 6) = v10;
        v11 = v9 + 1;
        *(a2 + 1) = v11;
      }

      *(this + 8) |= 1u;
      if (v11 < v8 && *v11 == 16)
      {
        v12 = v11 + 1;
        *(a2 + 1) = v12;
LABEL_25:
        if (v12 >= v8 || (v14 = *v12, v14 < 0))
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
          v15 = v12 + 1;
          *(a2 + 1) = v15;
        }

        *(this + 8) |= 2u;
        if (v15 < v8 && *v15 == 24)
        {
          v13 = v15 + 1;
          *(a2 + 1) = v13;
LABEL_33:
          if (v13 >= v8 || (v16 = *v13, v16 < 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 2);
            if (!result)
            {
              return result;
            }

            v17 = *(a2 + 1);
            v8 = *(a2 + 2);
          }

          else
          {
            *(this + 2) = v16;
            v17 = v13 + 1;
            *(a2 + 1) = v17;
          }

          *(this + 8) |= 4u;
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

uint64_t awd::metrics::MTCallsEndedNormallyCount::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
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
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(2, *(v5 + 8), a2, a4);
    if ((*(v5 + 32) & 4) == 0)
    {
      return this;
    }

    goto LABEL_7;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(1, *(this + 24), a2, a4);
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
  v7 = *(v5 + 16);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(3, v7, a2, a4);
}

uint64_t awd::metrics::MTCallsEndedNormallyCount::ByteSize(awd::metrics::MTCallsEndedNormallyCount *this, unint64_t a2)
{
  LOBYTE(v3) = *(this + 32);
  if (!v3)
  {
    v4 = 0;
    goto LABEL_13;
  }

  if ((*(this + 32) & 1) == 0)
  {
    v4 = 0;
    if ((*(this + 32) & 2) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  v5 = *(this + 6);
  if (v5 >= 0x80)
  {
    v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5) + 1;
    v3 = *(this + 8);
    if ((v3 & 2) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  v4 = 2;
  if ((v3 & 2) != 0)
  {
LABEL_10:
    v4 = v4 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 1)) + 1;
    v3 = *(this + 8);
  }

LABEL_11:
  if ((v3 & 4) != 0)
  {
    v4 = v4 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 2)) + 1;
  }

LABEL_13:
  *(this + 7) = v4;
  return v4;
}

void awd::metrics::MTCallsEndedNormallyCount::CheckTypeAndMergeFrom(awd::metrics::MTCallsEndedNormallyCount *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
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

  LOBYTE(v4) = *(lpsrc + 32);
  if (v4)
  {
    if (*(lpsrc + 32))
    {
      v6 = *(lpsrc + 6);
      *(this + 8) |= 1u;
      *(this + 6) = v6;
      v4 = *(lpsrc + 8);
      if ((v4 & 2) == 0)
      {
LABEL_7:
        if ((v4 & 4) == 0)
        {
          return;
        }

        goto LABEL_8;
      }
    }

    else if ((*(lpsrc + 32) & 2) == 0)
    {
      goto LABEL_7;
    }

    v7 = *(lpsrc + 1);
    *(this + 8) |= 2u;
    *(this + 1) = v7;
    if ((*(lpsrc + 8) & 4) != 0)
    {
LABEL_8:
      v5 = *(lpsrc + 2);
      *(this + 8) |= 4u;
      *(this + 2) = v5;
    }
  }
}

void sub_2373C2F28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::metrics::MTCallsEndedDropCount::~MTCallsEndedDropCount(awd::metrics::MTCallsEndedDropCount *this)
{
  *this = &unk_284A5FA48;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_284A5FA48;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  JUMPOUT(0x2383CAFA0);
}

uint64_t awd::metrics::MTCallsEndedDropCount::Clear(uint64_t this)
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

uint64_t awd::metrics::MTCallsEndedDropCount::MergePartialFromCodedStream(awd::metrics::MTCallsEndedDropCount *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
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
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 6);
        if (!result)
        {
          return result;
        }

        v11 = *(a2 + 1);
        v8 = *(a2 + 2);
      }

      else
      {
        *(this + 6) = v10;
        v11 = v9 + 1;
        *(a2 + 1) = v11;
      }

      *(this + 8) |= 1u;
      if (v11 < v8 && *v11 == 16)
      {
        v12 = v11 + 1;
        *(a2 + 1) = v12;
LABEL_25:
        if (v12 >= v8 || (v14 = *v12, v14 < 0))
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
          v15 = v12 + 1;
          *(a2 + 1) = v15;
        }

        *(this + 8) |= 2u;
        if (v15 < v8 && *v15 == 24)
        {
          v13 = v15 + 1;
          *(a2 + 1) = v13;
LABEL_33:
          if (v13 >= v8 || (v16 = *v13, v16 < 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 2);
            if (!result)
            {
              return result;
            }

            v17 = *(a2 + 1);
            v8 = *(a2 + 2);
          }

          else
          {
            *(this + 2) = v16;
            v17 = v13 + 1;
            *(a2 + 1) = v17;
          }

          *(this + 8) |= 4u;
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

uint64_t awd::metrics::MTCallsEndedDropCount::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
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
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(2, *(v5 + 8), a2, a4);
    if ((*(v5 + 32) & 4) == 0)
    {
      return this;
    }

    goto LABEL_7;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(1, *(this + 24), a2, a4);
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
  v7 = *(v5 + 16);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(3, v7, a2, a4);
}

uint64_t awd::metrics::MTCallsEndedDropCount::ByteSize(awd::metrics::MTCallsEndedDropCount *this, unint64_t a2)
{
  LOBYTE(v3) = *(this + 32);
  if (!v3)
  {
    v4 = 0;
    goto LABEL_13;
  }

  if ((*(this + 32) & 1) == 0)
  {
    v4 = 0;
    if ((*(this + 32) & 2) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  v5 = *(this + 6);
  if (v5 >= 0x80)
  {
    v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5) + 1;
    v3 = *(this + 8);
    if ((v3 & 2) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  v4 = 2;
  if ((v3 & 2) != 0)
  {
LABEL_10:
    v4 = v4 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 1)) + 1;
    v3 = *(this + 8);
  }

LABEL_11:
  if ((v3 & 4) != 0)
  {
    v4 = v4 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 2)) + 1;
  }

LABEL_13:
  *(this + 7) = v4;
  return v4;
}

void awd::metrics::MTCallsEndedDropCount::CheckTypeAndMergeFrom(awd::metrics::MTCallsEndedDropCount *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
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

  LOBYTE(v4) = *(lpsrc + 32);
  if (v4)
  {
    if (*(lpsrc + 32))
    {
      v6 = *(lpsrc + 6);
      *(this + 8) |= 1u;
      *(this + 6) = v6;
      v4 = *(lpsrc + 8);
      if ((v4 & 2) == 0)
      {
LABEL_7:
        if ((v4 & 4) == 0)
        {
          return;
        }

        goto LABEL_8;
      }
    }

    else if ((*(lpsrc + 32) & 2) == 0)
    {
      goto LABEL_7;
    }

    v7 = *(lpsrc + 1);
    *(this + 8) |= 2u;
    *(this + 1) = v7;
    if ((*(lpsrc + 8) & 4) != 0)
    {
LABEL_8:
      v5 = *(lpsrc + 2);
      *(this + 8) |= 4u;
      *(this + 2) = v5;
    }
  }
}

void sub_2373C3480(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::metrics::MOSMSSendSuccessfulCount::~MOSMSSendSuccessfulCount(awd::metrics::MOSMSSendSuccessfulCount *this)
{
  *this = &unk_284A5FAC0;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_284A5FAC0;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  JUMPOUT(0x2383CAFA0);
}

uint64_t awd::metrics::MOSMSSendSuccessfulCount::Clear(uint64_t this)
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

uint64_t awd::metrics::MOSMSSendSuccessfulCount::MergePartialFromCodedStream(awd::metrics::MOSMSSendSuccessfulCount *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
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
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 6);
        if (!result)
        {
          return result;
        }

        v11 = *(a2 + 1);
        v8 = *(a2 + 2);
      }

      else
      {
        *(this + 6) = v10;
        v11 = v9 + 1;
        *(a2 + 1) = v11;
      }

      *(this + 8) |= 1u;
      if (v11 < v8 && *v11 == 16)
      {
        v12 = v11 + 1;
        *(a2 + 1) = v12;
LABEL_25:
        if (v12 >= v8 || (v14 = *v12, v14 < 0))
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
          v15 = v12 + 1;
          *(a2 + 1) = v15;
        }

        *(this + 8) |= 2u;
        if (v15 < v8 && *v15 == 24)
        {
          v13 = v15 + 1;
          *(a2 + 1) = v13;
LABEL_33:
          if (v13 >= v8 || (v16 = *v13, v16 < 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 2);
            if (!result)
            {
              return result;
            }

            v17 = *(a2 + 1);
            v8 = *(a2 + 2);
          }

          else
          {
            *(this + 2) = v16;
            v17 = v13 + 1;
            *(a2 + 1) = v17;
          }

          *(this + 8) |= 4u;
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

uint64_t awd::metrics::MOSMSSendSuccessfulCount::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
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
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(2, *(v5 + 8), a2, a4);
    if ((*(v5 + 32) & 4) == 0)
    {
      return this;
    }

    goto LABEL_7;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(1, *(this + 24), a2, a4);
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
  v7 = *(v5 + 16);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(3, v7, a2, a4);
}

uint64_t awd::metrics::MOSMSSendSuccessfulCount::ByteSize(awd::metrics::MOSMSSendSuccessfulCount *this, unint64_t a2)
{
  LOBYTE(v3) = *(this + 32);
  if (!v3)
  {
    v4 = 0;
    goto LABEL_13;
  }

  if ((*(this + 32) & 1) == 0)
  {
    v4 = 0;
    if ((*(this + 32) & 2) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  v5 = *(this + 6);
  if (v5 >= 0x80)
  {
    v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5) + 1;
    v3 = *(this + 8);
    if ((v3 & 2) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  v4 = 2;
  if ((v3 & 2) != 0)
  {
LABEL_10:
    v4 = v4 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 1)) + 1;
    v3 = *(this + 8);
  }

LABEL_11:
  if ((v3 & 4) != 0)
  {
    v4 = v4 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 2)) + 1;
  }

LABEL_13:
  *(this + 7) = v4;
  return v4;
}

void awd::metrics::MOSMSSendSuccessfulCount::CheckTypeAndMergeFrom(awd::metrics::MOSMSSendSuccessfulCount *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
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

  LOBYTE(v4) = *(lpsrc + 32);
  if (v4)
  {
    if (*(lpsrc + 32))
    {
      v6 = *(lpsrc + 6);
      *(this + 8) |= 1u;
      *(this + 6) = v6;
      v4 = *(lpsrc + 8);
      if ((v4 & 2) == 0)
      {
LABEL_7:
        if ((v4 & 4) == 0)
        {
          return;
        }

        goto LABEL_8;
      }
    }

    else if ((*(lpsrc + 32) & 2) == 0)
    {
      goto LABEL_7;
    }

    v7 = *(lpsrc + 1);
    *(this + 8) |= 2u;
    *(this + 1) = v7;
    if ((*(lpsrc + 8) & 4) != 0)
    {
LABEL_8:
      v5 = *(lpsrc + 2);
      *(this + 8) |= 4u;
      *(this + 2) = v5;
    }
  }
}

void sub_2373C39D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::metrics::MOSMSSendFailedCount::~MOSMSSendFailedCount(awd::metrics::MOSMSSendFailedCount *this)
{
  *this = &unk_284A5FB38;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_284A5FB38;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  JUMPOUT(0x2383CAFA0);
}

uint64_t awd::metrics::MOSMSSendFailedCount::Clear(uint64_t this)
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

uint64_t awd::metrics::MOSMSSendFailedCount::MergePartialFromCodedStream(awd::metrics::MOSMSSendFailedCount *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
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
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 6);
        if (!result)
        {
          return result;
        }

        v11 = *(a2 + 1);
        v8 = *(a2 + 2);
      }

      else
      {
        *(this + 6) = v10;
        v11 = v9 + 1;
        *(a2 + 1) = v11;
      }

      *(this + 8) |= 1u;
      if (v11 < v8 && *v11 == 16)
      {
        v12 = v11 + 1;
        *(a2 + 1) = v12;
LABEL_25:
        if (v12 >= v8 || (v14 = *v12, v14 < 0))
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
          v15 = v12 + 1;
          *(a2 + 1) = v15;
        }

        *(this + 8) |= 2u;
        if (v15 < v8 && *v15 == 24)
        {
          v13 = v15 + 1;
          *(a2 + 1) = v13;
LABEL_33:
          if (v13 >= v8 || (v16 = *v13, v16 < 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 2);
            if (!result)
            {
              return result;
            }

            v17 = *(a2 + 1);
            v8 = *(a2 + 2);
          }

          else
          {
            *(this + 2) = v16;
            v17 = v13 + 1;
            *(a2 + 1) = v17;
          }

          *(this + 8) |= 4u;
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

uint64_t awd::metrics::MOSMSSendFailedCount::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
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
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(2, *(v5 + 8), a2, a4);
    if ((*(v5 + 32) & 4) == 0)
    {
      return this;
    }

    goto LABEL_7;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(1, *(this + 24), a2, a4);
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
  v7 = *(v5 + 16);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(3, v7, a2, a4);
}

uint64_t awd::metrics::MOSMSSendFailedCount::ByteSize(awd::metrics::MOSMSSendFailedCount *this, unint64_t a2)
{
  LOBYTE(v3) = *(this + 32);
  if (!v3)
  {
    v4 = 0;
    goto LABEL_13;
  }

  if ((*(this + 32) & 1) == 0)
  {
    v4 = 0;
    if ((*(this + 32) & 2) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  v5 = *(this + 6);
  if (v5 >= 0x80)
  {
    v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5) + 1;
    v3 = *(this + 8);
    if ((v3 & 2) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  v4 = 2;
  if ((v3 & 2) != 0)
  {
LABEL_10:
    v4 = v4 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 1)) + 1;
    v3 = *(this + 8);
  }

LABEL_11:
  if ((v3 & 4) != 0)
  {
    v4 = v4 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 2)) + 1;
  }

LABEL_13:
  *(this + 7) = v4;
  return v4;
}

void awd::metrics::MOSMSSendFailedCount::CheckTypeAndMergeFrom(awd::metrics::MOSMSSendFailedCount *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
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

  LOBYTE(v4) = *(lpsrc + 32);
  if (v4)
  {
    if (*(lpsrc + 32))
    {
      v6 = *(lpsrc + 6);
      *(this + 8) |= 1u;
      *(this + 6) = v6;
      v4 = *(lpsrc + 8);
      if ((v4 & 2) == 0)
      {
LABEL_7:
        if ((v4 & 4) == 0)
        {
          return;
        }

        goto LABEL_8;
      }
    }

    else if ((*(lpsrc + 32) & 2) == 0)
    {
      goto LABEL_7;
    }

    v7 = *(lpsrc + 1);
    *(this + 8) |= 2u;
    *(this + 1) = v7;
    if ((*(lpsrc + 8) & 4) != 0)
    {
LABEL_8:
      v5 = *(lpsrc + 2);
      *(this + 8) |= 4u;
      *(this + 2) = v5;
    }
  }
}

void sub_2373C3F30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::metrics::MTSMSRecvSuccessfulCount::~MTSMSRecvSuccessfulCount(awd::metrics::MTSMSRecvSuccessfulCount *this)
{
  *this = &unk_284A5FBB0;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_284A5FBB0;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  JUMPOUT(0x2383CAFA0);
}

uint64_t awd::metrics::MTSMSRecvSuccessfulCount::Clear(uint64_t this)
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

uint64_t awd::metrics::MTSMSRecvSuccessfulCount::MergePartialFromCodedStream(awd::metrics::MTSMSRecvSuccessfulCount *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
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
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 6);
        if (!result)
        {
          return result;
        }

        v11 = *(a2 + 1);
        v8 = *(a2 + 2);
      }

      else
      {
        *(this + 6) = v10;
        v11 = v9 + 1;
        *(a2 + 1) = v11;
      }

      *(this + 8) |= 1u;
      if (v11 < v8 && *v11 == 16)
      {
        v12 = v11 + 1;
        *(a2 + 1) = v12;
LABEL_25:
        if (v12 >= v8 || (v14 = *v12, v14 < 0))
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
          v15 = v12 + 1;
          *(a2 + 1) = v15;
        }

        *(this + 8) |= 2u;
        if (v15 < v8 && *v15 == 24)
        {
          v13 = v15 + 1;
          *(a2 + 1) = v13;
LABEL_33:
          if (v13 >= v8 || (v16 = *v13, v16 < 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 2);
            if (!result)
            {
              return result;
            }

            v17 = *(a2 + 1);
            v8 = *(a2 + 2);
          }

          else
          {
            *(this + 2) = v16;
            v17 = v13 + 1;
            *(a2 + 1) = v17;
          }

          *(this + 8) |= 4u;
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

uint64_t awd::metrics::MTSMSRecvSuccessfulCount::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
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
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(2, *(v5 + 8), a2, a4);
    if ((*(v5 + 32) & 4) == 0)
    {
      return this;
    }

    goto LABEL_7;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(1, *(this + 24), a2, a4);
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
  v7 = *(v5 + 16);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(3, v7, a2, a4);
}

uint64_t awd::metrics::MTSMSRecvSuccessfulCount::ByteSize(awd::metrics::MTSMSRecvSuccessfulCount *this, unint64_t a2)
{
  LOBYTE(v3) = *(this + 32);
  if (!v3)
  {
    v4 = 0;
    goto LABEL_13;
  }

  if ((*(this + 32) & 1) == 0)
  {
    v4 = 0;
    if ((*(this + 32) & 2) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  v5 = *(this + 6);
  if (v5 >= 0x80)
  {
    v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5) + 1;
    v3 = *(this + 8);
    if ((v3 & 2) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  v4 = 2;
  if ((v3 & 2) != 0)
  {
LABEL_10:
    v4 = v4 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 1)) + 1;
    v3 = *(this + 8);
  }

LABEL_11:
  if ((v3 & 4) != 0)
  {
    v4 = v4 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 2)) + 1;
  }

LABEL_13:
  *(this + 7) = v4;
  return v4;
}

void awd::metrics::MTSMSRecvSuccessfulCount::CheckTypeAndMergeFrom(awd::metrics::MTSMSRecvSuccessfulCount *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
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

  LOBYTE(v4) = *(lpsrc + 32);
  if (v4)
  {
    if (*(lpsrc + 32))
    {
      v6 = *(lpsrc + 6);
      *(this + 8) |= 1u;
      *(this + 6) = v6;
      v4 = *(lpsrc + 8);
      if ((v4 & 2) == 0)
      {
LABEL_7:
        if ((v4 & 4) == 0)
        {
          return;
        }

        goto LABEL_8;
      }
    }

    else if ((*(lpsrc + 32) & 2) == 0)
    {
      goto LABEL_7;
    }

    v7 = *(lpsrc + 1);
    *(this + 8) |= 2u;
    *(this + 1) = v7;
    if ((*(lpsrc + 8) & 4) != 0)
    {
LABEL_8:
      v5 = *(lpsrc + 2);
      *(this + 8) |= 4u;
      *(this + 2) = v5;
    }
  }
}

void sub_2373C4488(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::metrics::MTSMSRecvFailedCount::~MTSMSRecvFailedCount(awd::metrics::MTSMSRecvFailedCount *this)
{
  *this = &unk_284A5FC28;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_284A5FC28;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  JUMPOUT(0x2383CAFA0);
}

uint64_t awd::metrics::MTSMSRecvFailedCount::Clear(uint64_t this)
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

uint64_t awd::metrics::MTSMSRecvFailedCount::MergePartialFromCodedStream(awd::metrics::MTSMSRecvFailedCount *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
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
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 6);
        if (!result)
        {
          return result;
        }

        v11 = *(a2 + 1);
        v8 = *(a2 + 2);
      }

      else
      {
        *(this + 6) = v10;
        v11 = v9 + 1;
        *(a2 + 1) = v11;
      }

      *(this + 8) |= 1u;
      if (v11 < v8 && *v11 == 16)
      {
        v12 = v11 + 1;
        *(a2 + 1) = v12;
LABEL_25:
        if (v12 >= v8 || (v14 = *v12, v14 < 0))
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
          v15 = v12 + 1;
          *(a2 + 1) = v15;
        }

        *(this + 8) |= 2u;
        if (v15 < v8 && *v15 == 24)
        {
          v13 = v15 + 1;
          *(a2 + 1) = v13;
LABEL_33:
          if (v13 >= v8 || (v16 = *v13, v16 < 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 2);
            if (!result)
            {
              return result;
            }

            v17 = *(a2 + 1);
            v8 = *(a2 + 2);
          }

          else
          {
            *(this + 2) = v16;
            v17 = v13 + 1;
            *(a2 + 1) = v17;
          }

          *(this + 8) |= 4u;
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

uint64_t awd::metrics::MTSMSRecvFailedCount::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
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
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(2, *(v5 + 8), a2, a4);
    if ((*(v5 + 32) & 4) == 0)
    {
      return this;
    }

    goto LABEL_7;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(1, *(this + 24), a2, a4);
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
  v7 = *(v5 + 16);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(3, v7, a2, a4);
}

uint64_t awd::metrics::MTSMSRecvFailedCount::ByteSize(awd::metrics::MTSMSRecvFailedCount *this, unint64_t a2)
{
  LOBYTE(v3) = *(this + 32);
  if (!v3)
  {
    v4 = 0;
    goto LABEL_13;
  }

  if ((*(this + 32) & 1) == 0)
  {
    v4 = 0;
    if ((*(this + 32) & 2) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  v5 = *(this + 6);
  if (v5 >= 0x80)
  {
    v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5) + 1;
    v3 = *(this + 8);
    if ((v3 & 2) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  v4 = 2;
  if ((v3 & 2) != 0)
  {
LABEL_10:
    v4 = v4 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 1)) + 1;
    v3 = *(this + 8);
  }

LABEL_11:
  if ((v3 & 4) != 0)
  {
    v4 = v4 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 2)) + 1;
  }

LABEL_13:
  *(this + 7) = v4;
  return v4;
}

void awd::metrics::MTSMSRecvFailedCount::CheckTypeAndMergeFrom(awd::metrics::MTSMSRecvFailedCount *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
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

  LOBYTE(v4) = *(lpsrc + 32);
  if (v4)
  {
    if (*(lpsrc + 32))
    {
      v6 = *(lpsrc + 6);
      *(this + 8) |= 1u;
      *(this + 6) = v6;
      v4 = *(lpsrc + 8);
      if ((v4 & 2) == 0)
      {
LABEL_7:
        if ((v4 & 4) == 0)
        {
          return;
        }

        goto LABEL_8;
      }
    }

    else if ((*(lpsrc + 32) & 2) == 0)
    {
      goto LABEL_7;
    }

    v7 = *(lpsrc + 1);
    *(this + 8) |= 2u;
    *(this + 1) = v7;
    if ((*(lpsrc + 8) & 4) != 0)
    {
LABEL_8:
      v5 = *(lpsrc + 2);
      *(this + 8) |= 4u;
      *(this + 2) = v5;
    }
  }
}

void sub_2373C49E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::metrics::MOMMSSendSuccessfulCount::~MOMMSSendSuccessfulCount(awd::metrics::MOMMSSendSuccessfulCount *this)
{
  *this = &unk_284A5FCA0;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_284A5FCA0;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  JUMPOUT(0x2383CAFA0);
}

uint64_t awd::metrics::MOMMSSendSuccessfulCount::Clear(uint64_t this)
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

uint64_t awd::metrics::MOMMSSendSuccessfulCount::MergePartialFromCodedStream(awd::metrics::MOMMSSendSuccessfulCount *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
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
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 6);
        if (!result)
        {
          return result;
        }

        v11 = *(a2 + 1);
        v8 = *(a2 + 2);
      }

      else
      {
        *(this + 6) = v10;
        v11 = v9 + 1;
        *(a2 + 1) = v11;
      }

      *(this + 8) |= 1u;
      if (v11 < v8 && *v11 == 16)
      {
        v12 = v11 + 1;
        *(a2 + 1) = v12;
LABEL_25:
        if (v12 >= v8 || (v14 = *v12, v14 < 0))
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
          v15 = v12 + 1;
          *(a2 + 1) = v15;
        }

        *(this + 8) |= 2u;
        if (v15 < v8 && *v15 == 24)
        {
          v13 = v15 + 1;
          *(a2 + 1) = v13;
LABEL_33:
          if (v13 >= v8 || (v16 = *v13, v16 < 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 2);
            if (!result)
            {
              return result;
            }

            v17 = *(a2 + 1);
            v8 = *(a2 + 2);
          }

          else
          {
            *(this + 2) = v16;
            v17 = v13 + 1;
            *(a2 + 1) = v17;
          }

          *(this + 8) |= 4u;
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

uint64_t awd::metrics::MOMMSSendSuccessfulCount::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
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
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(2, *(v5 + 8), a2, a4);
    if ((*(v5 + 32) & 4) == 0)
    {
      return this;
    }

    goto LABEL_7;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(1, *(this + 24), a2, a4);
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
  v7 = *(v5 + 16);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(3, v7, a2, a4);
}

uint64_t awd::metrics::MOMMSSendSuccessfulCount::ByteSize(awd::metrics::MOMMSSendSuccessfulCount *this, unint64_t a2)
{
  LOBYTE(v3) = *(this + 32);
  if (!v3)
  {
    v4 = 0;
    goto LABEL_13;
  }

  if ((*(this + 32) & 1) == 0)
  {
    v4 = 0;
    if ((*(this + 32) & 2) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  v5 = *(this + 6);
  if (v5 >= 0x80)
  {
    v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5) + 1;
    v3 = *(this + 8);
    if ((v3 & 2) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  v4 = 2;
  if ((v3 & 2) != 0)
  {
LABEL_10:
    v4 = v4 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 1)) + 1;
    v3 = *(this + 8);
  }

LABEL_11:
  if ((v3 & 4) != 0)
  {
    v4 = v4 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 2)) + 1;
  }

LABEL_13:
  *(this + 7) = v4;
  return v4;
}

void awd::metrics::MOMMSSendSuccessfulCount::CheckTypeAndMergeFrom(awd::metrics::MOMMSSendSuccessfulCount *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
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

  LOBYTE(v4) = *(lpsrc + 32);
  if (v4)
  {
    if (*(lpsrc + 32))
    {
      v6 = *(lpsrc + 6);
      *(this + 8) |= 1u;
      *(this + 6) = v6;
      v4 = *(lpsrc + 8);
      if ((v4 & 2) == 0)
      {
LABEL_7:
        if ((v4 & 4) == 0)
        {
          return;
        }

        goto LABEL_8;
      }
    }

    else if ((*(lpsrc + 32) & 2) == 0)
    {
      goto LABEL_7;
    }

    v7 = *(lpsrc + 1);
    *(this + 8) |= 2u;
    *(this + 1) = v7;
    if ((*(lpsrc + 8) & 4) != 0)
    {
LABEL_8:
      v5 = *(lpsrc + 2);
      *(this + 8) |= 4u;
      *(this + 2) = v5;
    }
  }
}

void sub_2373C4F38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::metrics::MOMMSSendFailedCount::~MOMMSSendFailedCount(awd::metrics::MOMMSSendFailedCount *this)
{
  *this = &unk_284A5FD18;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_284A5FD18;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  JUMPOUT(0x2383CAFA0);
}

uint64_t awd::metrics::MOMMSSendFailedCount::Clear(uint64_t this)
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

uint64_t awd::metrics::MOMMSSendFailedCount::MergePartialFromCodedStream(awd::metrics::MOMMSSendFailedCount *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
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
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 6);
        if (!result)
        {
          return result;
        }

        v11 = *(a2 + 1);
        v8 = *(a2 + 2);
      }

      else
      {
        *(this + 6) = v10;
        v11 = v9 + 1;
        *(a2 + 1) = v11;
      }

      *(this + 8) |= 1u;
      if (v11 < v8 && *v11 == 16)
      {
        v12 = v11 + 1;
        *(a2 + 1) = v12;
LABEL_25:
        if (v12 >= v8 || (v14 = *v12, v14 < 0))
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
          v15 = v12 + 1;
          *(a2 + 1) = v15;
        }

        *(this + 8) |= 2u;
        if (v15 < v8 && *v15 == 24)
        {
          v13 = v15 + 1;
          *(a2 + 1) = v13;
LABEL_33:
          if (v13 >= v8 || (v16 = *v13, v16 < 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 2);
            if (!result)
            {
              return result;
            }

            v17 = *(a2 + 1);
            v8 = *(a2 + 2);
          }

          else
          {
            *(this + 2) = v16;
            v17 = v13 + 1;
            *(a2 + 1) = v17;
          }

          *(this + 8) |= 4u;
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

uint64_t awd::metrics::MOMMSSendFailedCount::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
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
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(2, *(v5 + 8), a2, a4);
    if ((*(v5 + 32) & 4) == 0)
    {
      return this;
    }

    goto LABEL_7;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(1, *(this + 24), a2, a4);
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
  v7 = *(v5 + 16);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(3, v7, a2, a4);
}

uint64_t awd::metrics::MOMMSSendFailedCount::ByteSize(awd::metrics::MOMMSSendFailedCount *this, unint64_t a2)
{
  LOBYTE(v3) = *(this + 32);
  if (!v3)
  {
    v4 = 0;
    goto LABEL_13;
  }

  if ((*(this + 32) & 1) == 0)
  {
    v4 = 0;
    if ((*(this + 32) & 2) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  v5 = *(this + 6);
  if (v5 >= 0x80)
  {
    v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5) + 1;
    v3 = *(this + 8);
    if ((v3 & 2) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  v4 = 2;
  if ((v3 & 2) != 0)
  {
LABEL_10:
    v4 = v4 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 1)) + 1;
    v3 = *(this + 8);
  }

LABEL_11:
  if ((v3 & 4) != 0)
  {
    v4 = v4 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 2)) + 1;
  }

LABEL_13:
  *(this + 7) = v4;
  return v4;
}

void awd::metrics::MOMMSSendFailedCount::CheckTypeAndMergeFrom(awd::metrics::MOMMSSendFailedCount *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
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

  LOBYTE(v4) = *(lpsrc + 32);
  if (v4)
  {
    if (*(lpsrc + 32))
    {
      v6 = *(lpsrc + 6);
      *(this + 8) |= 1u;
      *(this + 6) = v6;
      v4 = *(lpsrc + 8);
      if ((v4 & 2) == 0)
      {
LABEL_7:
        if ((v4 & 4) == 0)
        {
          return;
        }

        goto LABEL_8;
      }
    }

    else if ((*(lpsrc + 32) & 2) == 0)
    {
      goto LABEL_7;
    }

    v7 = *(lpsrc + 1);
    *(this + 8) |= 2u;
    *(this + 1) = v7;
    if ((*(lpsrc + 8) & 4) != 0)
    {
LABEL_8:
      v5 = *(lpsrc + 2);
      *(this + 8) |= 4u;
      *(this + 2) = v5;
    }
  }
}

void sub_2373C5490(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::metrics::MTMMSRecvSuccessfulCount::~MTMMSRecvSuccessfulCount(awd::metrics::MTMMSRecvSuccessfulCount *this)
{
  *this = &unk_284A5FD90;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_284A5FD90;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  JUMPOUT(0x2383CAFA0);
}

uint64_t awd::metrics::MTMMSRecvSuccessfulCount::Clear(uint64_t this)
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

uint64_t awd::metrics::MTMMSRecvSuccessfulCount::MergePartialFromCodedStream(awd::metrics::MTMMSRecvSuccessfulCount *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
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
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 6);
        if (!result)
        {
          return result;
        }

        v11 = *(a2 + 1);
        v8 = *(a2 + 2);
      }

      else
      {
        *(this + 6) = v10;
        v11 = v9 + 1;
        *(a2 + 1) = v11;
      }

      *(this + 8) |= 1u;
      if (v11 < v8 && *v11 == 16)
      {
        v12 = v11 + 1;
        *(a2 + 1) = v12;
LABEL_25:
        if (v12 >= v8 || (v14 = *v12, v14 < 0))
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
          v15 = v12 + 1;
          *(a2 + 1) = v15;
        }

        *(this + 8) |= 2u;
        if (v15 < v8 && *v15 == 24)
        {
          v13 = v15 + 1;
          *(a2 + 1) = v13;
LABEL_33:
          if (v13 >= v8 || (v16 = *v13, v16 < 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 2);
            if (!result)
            {
              return result;
            }

            v17 = *(a2 + 1);
            v8 = *(a2 + 2);
          }

          else
          {
            *(this + 2) = v16;
            v17 = v13 + 1;
            *(a2 + 1) = v17;
          }

          *(this + 8) |= 4u;
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

uint64_t awd::metrics::MTMMSRecvSuccessfulCount::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
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
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(2, *(v5 + 8), a2, a4);
    if ((*(v5 + 32) & 4) == 0)
    {
      return this;
    }

    goto LABEL_7;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(1, *(this + 24), a2, a4);
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
  v7 = *(v5 + 16);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(3, v7, a2, a4);
}

uint64_t awd::metrics::MTMMSRecvSuccessfulCount::ByteSize(awd::metrics::MTMMSRecvSuccessfulCount *this, unint64_t a2)
{
  LOBYTE(v3) = *(this + 32);
  if (!v3)
  {
    v4 = 0;
    goto LABEL_13;
  }

  if ((*(this + 32) & 1) == 0)
  {
    v4 = 0;
    if ((*(this + 32) & 2) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  v5 = *(this + 6);
  if (v5 >= 0x80)
  {
    v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5) + 1;
    v3 = *(this + 8);
    if ((v3 & 2) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  v4 = 2;
  if ((v3 & 2) != 0)
  {
LABEL_10:
    v4 = v4 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 1)) + 1;
    v3 = *(this + 8);
  }

LABEL_11:
  if ((v3 & 4) != 0)
  {
    v4 = v4 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 2)) + 1;
  }

LABEL_13:
  *(this + 7) = v4;
  return v4;
}

void awd::metrics::MTMMSRecvSuccessfulCount::CheckTypeAndMergeFrom(awd::metrics::MTMMSRecvSuccessfulCount *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
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

  LOBYTE(v4) = *(lpsrc + 32);
  if (v4)
  {
    if (*(lpsrc + 32))
    {
      v6 = *(lpsrc + 6);
      *(this + 8) |= 1u;
      *(this + 6) = v6;
      v4 = *(lpsrc + 8);
      if ((v4 & 2) == 0)
      {
LABEL_7:
        if ((v4 & 4) == 0)
        {
          return;
        }

        goto LABEL_8;
      }
    }

    else if ((*(lpsrc + 32) & 2) == 0)
    {
      goto LABEL_7;
    }

    v7 = *(lpsrc + 1);
    *(this + 8) |= 2u;
    *(this + 1) = v7;
    if ((*(lpsrc + 8) & 4) != 0)
    {
LABEL_8:
      v5 = *(lpsrc + 2);
      *(this + 8) |= 4u;
      *(this + 2) = v5;
    }
  }
}

void sub_2373C59E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::metrics::MTMMSRecvFailedCount::~MTMMSRecvFailedCount(awd::metrics::MTMMSRecvFailedCount *this)
{
  *this = &unk_284A5FE08;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_284A5FE08;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  JUMPOUT(0x2383CAFA0);
}

uint64_t awd::metrics::MTMMSRecvFailedCount::Clear(uint64_t this)
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

uint64_t awd::metrics::MTMMSRecvFailedCount::MergePartialFromCodedStream(awd::metrics::MTMMSRecvFailedCount *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
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
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 6);
        if (!result)
        {
          return result;
        }

        v11 = *(a2 + 1);
        v8 = *(a2 + 2);
      }

      else
      {
        *(this + 6) = v10;
        v11 = v9 + 1;
        *(a2 + 1) = v11;
      }

      *(this + 8) |= 1u;
      if (v11 < v8 && *v11 == 16)
      {
        v12 = v11 + 1;
        *(a2 + 1) = v12;
LABEL_25:
        if (v12 >= v8 || (v14 = *v12, v14 < 0))
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
          v15 = v12 + 1;
          *(a2 + 1) = v15;
        }

        *(this + 8) |= 2u;
        if (v15 < v8 && *v15 == 24)
        {
          v13 = v15 + 1;
          *(a2 + 1) = v13;
LABEL_33:
          if (v13 >= v8 || (v16 = *v13, v16 < 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 2);
            if (!result)
            {
              return result;
            }

            v17 = *(a2 + 1);
            v8 = *(a2 + 2);
          }

          else
          {
            *(this + 2) = v16;
            v17 = v13 + 1;
            *(a2 + 1) = v17;
          }

          *(this + 8) |= 4u;
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

uint64_t awd::metrics::MTMMSRecvFailedCount::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
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
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(2, *(v5 + 8), a2, a4);
    if ((*(v5 + 32) & 4) == 0)
    {
      return this;
    }

    goto LABEL_7;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(1, *(this + 24), a2, a4);
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
  v7 = *(v5 + 16);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(3, v7, a2, a4);
}

uint64_t awd::metrics::MTMMSRecvFailedCount::ByteSize(awd::metrics::MTMMSRecvFailedCount *this, unint64_t a2)
{
  LOBYTE(v3) = *(this + 32);
  if (!v3)
  {
    v4 = 0;
    goto LABEL_13;
  }

  if ((*(this + 32) & 1) == 0)
  {
    v4 = 0;
    if ((*(this + 32) & 2) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  v5 = *(this + 6);
  if (v5 >= 0x80)
  {
    v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5) + 1;
    v3 = *(this + 8);
    if ((v3 & 2) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  v4 = 2;
  if ((v3 & 2) != 0)
  {
LABEL_10:
    v4 = v4 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 1)) + 1;
    v3 = *(this + 8);
  }

LABEL_11:
  if ((v3 & 4) != 0)
  {
    v4 = v4 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 2)) + 1;
  }

LABEL_13:
  *(this + 7) = v4;
  return v4;
}

void awd::metrics::MTMMSRecvFailedCount::CheckTypeAndMergeFrom(awd::metrics::MTMMSRecvFailedCount *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
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

  LOBYTE(v4) = *(lpsrc + 32);
  if (v4)
  {
    if (*(lpsrc + 32))
    {
      v6 = *(lpsrc + 6);
      *(this + 8) |= 1u;
      *(this + 6) = v6;
      v4 = *(lpsrc + 8);
      if ((v4 & 2) == 0)
      {
LABEL_7:
        if ((v4 & 4) == 0)
        {
          return;
        }

        goto LABEL_8;
      }
    }

    else if ((*(lpsrc + 32) & 2) == 0)
    {
      goto LABEL_7;
    }

    v7 = *(lpsrc + 1);
    *(this + 8) |= 2u;
    *(this + 1) = v7;
    if ((*(lpsrc + 8) & 4) != 0)
    {
LABEL_8:
      v5 = *(lpsrc + 2);
      *(this + 8) |= 4u;
      *(this + 2) = v5;
    }
  }
}

void sub_2373C5F40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::metrics::DataSentOnInternetCtxCount::~DataSentOnInternetCtxCount(awd::metrics::DataSentOnInternetCtxCount *this)
{
  *this = &unk_284A5FE80;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_284A5FE80;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  JUMPOUT(0x2383CAFA0);
}

uint64_t awd::metrics::DataSentOnInternetCtxCount::Clear(uint64_t this)
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

uint64_t awd::metrics::DataSentOnInternetCtxCount::MergePartialFromCodedStream(awd::metrics::DataSentOnInternetCtxCount *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
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

uint64_t awd::metrics::DataSentOnInternetCtxCount::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
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

uint64_t awd::metrics::DataSentOnInternetCtxCount::ByteSize(awd::metrics::DataSentOnInternetCtxCount *this, unint64_t a2)
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

void awd::metrics::DataSentOnInternetCtxCount::CheckTypeAndMergeFrom(awd::metrics::DataSentOnInternetCtxCount *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
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

  LOBYTE(v4) = *(lpsrc + 36);
  if (v4)
  {
    if (*(lpsrc + 36))
    {
      v6 = *(lpsrc + 1);
      *(this + 9) |= 1u;
      *(this + 1) = v6;
      v4 = *(lpsrc + 9);
      if ((v4 & 2) == 0)
      {
LABEL_7:
        if ((v4 & 4) == 0)
        {
          return;
        }

        goto LABEL_8;
      }
    }

    else if ((*(lpsrc + 36) & 2) == 0)
    {
      goto LABEL_7;
    }

    v7 = *(lpsrc + 2);
    *(this + 9) |= 2u;
    *(this + 2) = v7;
    if ((*(lpsrc + 9) & 4) != 0)
    {
LABEL_8:
      v5 = *(lpsrc + 3);
      *(this + 9) |= 4u;
      *(this + 3) = v5;
    }
  }
}

void sub_2373C6488(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::metrics::DataRecvedOnInternetCtxCount::~DataRecvedOnInternetCtxCount(awd::metrics::DataRecvedOnInternetCtxCount *this)
{
  *this = &unk_284A5FEF8;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_284A5FEF8;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  JUMPOUT(0x2383CAFA0);
}

uint64_t awd::metrics::DataRecvedOnInternetCtxCount::Clear(uint64_t this)
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

uint64_t awd::metrics::DataRecvedOnInternetCtxCount::MergePartialFromCodedStream(awd::metrics::DataRecvedOnInternetCtxCount *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
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

uint64_t awd::metrics::DataRecvedOnInternetCtxCount::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
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

uint64_t awd::metrics::DataRecvedOnInternetCtxCount::ByteSize(awd::metrics::DataRecvedOnInternetCtxCount *this, unint64_t a2)
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

void awd::metrics::DataRecvedOnInternetCtxCount::CheckTypeAndMergeFrom(awd::metrics::DataRecvedOnInternetCtxCount *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
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

  LOBYTE(v4) = *(lpsrc + 36);
  if (v4)
  {
    if (*(lpsrc + 36))
    {
      v6 = *(lpsrc + 1);
      *(this + 9) |= 1u;
      *(this + 1) = v6;
      v4 = *(lpsrc + 9);
      if ((v4 & 2) == 0)
      {
LABEL_7:
        if ((v4 & 4) == 0)
        {
          return;
        }

        goto LABEL_8;
      }
    }

    else if ((*(lpsrc + 36) & 2) == 0)
    {
      goto LABEL_7;
    }

    v7 = *(lpsrc + 2);
    *(this + 9) |= 2u;
    *(this + 2) = v7;
    if ((*(lpsrc + 9) & 4) != 0)
    {
LABEL_8:
      v5 = *(lpsrc + 3);
      *(this + 9) |= 4u;
      *(this + 3) = v5;
    }
  }
}

void sub_2373C69D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::metrics::VVMNotificationsRecvedCount::~VVMNotificationsRecvedCount(awd::metrics::VVMNotificationsRecvedCount *this)
{
  *this = &unk_284A5FF70;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_284A5FF70;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  JUMPOUT(0x2383CAFA0);
}

uint64_t awd::metrics::VVMNotificationsRecvedCount::Clear(uint64_t this)
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

uint64_t awd::metrics::VVMNotificationsRecvedCount::MergePartialFromCodedStream(awd::metrics::VVMNotificationsRecvedCount *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
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
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 6);
        if (!result)
        {
          return result;
        }

        v11 = *(a2 + 1);
        v8 = *(a2 + 2);
      }

      else
      {
        *(this + 6) = v10;
        v11 = v9 + 1;
        *(a2 + 1) = v11;
      }

      *(this + 8) |= 1u;
      if (v11 < v8 && *v11 == 16)
      {
        v12 = v11 + 1;
        *(a2 + 1) = v12;
LABEL_25:
        if (v12 >= v8 || (v14 = *v12, v14 < 0))
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
          v15 = v12 + 1;
          *(a2 + 1) = v15;
        }

        *(this + 8) |= 2u;
        if (v15 < v8 && *v15 == 24)
        {
          v13 = v15 + 1;
          *(a2 + 1) = v13;
LABEL_33:
          if (v13 >= v8 || (v16 = *v13, v16 < 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 2);
            if (!result)
            {
              return result;
            }

            v17 = *(a2 + 1);
            v8 = *(a2 + 2);
          }

          else
          {
            *(this + 2) = v16;
            v17 = v13 + 1;
            *(a2 + 1) = v17;
          }

          *(this + 8) |= 4u;
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

uint64_t awd::metrics::VVMNotificationsRecvedCount::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
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
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(2, *(v5 + 8), a2, a4);
    if ((*(v5 + 32) & 4) == 0)
    {
      return this;
    }

    goto LABEL_7;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(1, *(this + 24), a2, a4);
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
  v7 = *(v5 + 16);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(3, v7, a2, a4);
}

uint64_t awd::metrics::VVMNotificationsRecvedCount::ByteSize(awd::metrics::VVMNotificationsRecvedCount *this, unint64_t a2)
{
  LOBYTE(v3) = *(this + 32);
  if (!v3)
  {
    v4 = 0;
    goto LABEL_13;
  }

  if ((*(this + 32) & 1) == 0)
  {
    v4 = 0;
    if ((*(this + 32) & 2) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  v5 = *(this + 6);
  if (v5 >= 0x80)
  {
    v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5) + 1;
    v3 = *(this + 8);
    if ((v3 & 2) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  v4 = 2;
  if ((v3 & 2) != 0)
  {
LABEL_10:
    v4 = v4 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 1)) + 1;
    v3 = *(this + 8);
  }

LABEL_11:
  if ((v3 & 4) != 0)
  {
    v4 = v4 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 2)) + 1;
  }

LABEL_13:
  *(this + 7) = v4;
  return v4;
}

void awd::metrics::VVMNotificationsRecvedCount::CheckTypeAndMergeFrom(awd::metrics::VVMNotificationsRecvedCount *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
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

  LOBYTE(v4) = *(lpsrc + 32);
  if (v4)
  {
    if (*(lpsrc + 32))
    {
      v6 = *(lpsrc + 6);
      *(this + 8) |= 1u;
      *(this + 6) = v6;
      v4 = *(lpsrc + 8);
      if ((v4 & 2) == 0)
      {
LABEL_7:
        if ((v4 & 4) == 0)
        {
          return;
        }

        goto LABEL_8;
      }
    }

    else if ((*(lpsrc + 32) & 2) == 0)
    {
      goto LABEL_7;
    }

    v7 = *(lpsrc + 1);
    *(this + 8) |= 2u;
    *(this + 1) = v7;
    if ((*(lpsrc + 8) & 4) != 0)
    {
LABEL_8:
      v5 = *(lpsrc + 2);
      *(this + 8) |= 4u;
      *(this + 2) = v5;
    }
  }
}

void sub_2373C6F28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::metrics::SRUMB_Attempt_Count::~SRUMB_Attempt_Count(awd::metrics::SRUMB_Attempt_Count *this)
{
  *this = &unk_284A5FFE8;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_284A5FFE8;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  JUMPOUT(0x2383CAFA0);
}

uint64_t awd::metrics::SRUMB_Attempt_Count::Clear(uint64_t this)
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

uint64_t awd::metrics::SRUMB_Attempt_Count::MergePartialFromCodedStream(awd::metrics::SRUMB_Attempt_Count *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
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
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 6);
        if (!result)
        {
          return result;
        }

        v11 = *(a2 + 1);
        v8 = *(a2 + 2);
      }

      else
      {
        *(this + 6) = v10;
        v11 = v9 + 1;
        *(a2 + 1) = v11;
      }

      *(this + 8) |= 1u;
      if (v11 < v8 && *v11 == 16)
      {
        v12 = v11 + 1;
        *(a2 + 1) = v12;
LABEL_25:
        if (v12 >= v8 || (v14 = *v12, v14 < 0))
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
          v15 = v12 + 1;
          *(a2 + 1) = v15;
        }

        *(this + 8) |= 2u;
        if (v15 < v8 && *v15 == 24)
        {
          v13 = v15 + 1;
          *(a2 + 1) = v13;
LABEL_33:
          if (v13 >= v8 || (v16 = *v13, v16 < 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 2);
            if (!result)
            {
              return result;
            }

            v17 = *(a2 + 1);
            v8 = *(a2 + 2);
          }

          else
          {
            *(this + 2) = v16;
            v17 = v13 + 1;
            *(a2 + 1) = v17;
          }

          *(this + 8) |= 4u;
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

uint64_t awd::metrics::SRUMB_Attempt_Count::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
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
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(2, *(v5 + 8), a2, a4);
    if ((*(v5 + 32) & 4) == 0)
    {
      return this;
    }

    goto LABEL_7;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(1, *(this + 24), a2, a4);
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
  v7 = *(v5 + 16);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(3, v7, a2, a4);
}

uint64_t awd::metrics::SRUMB_Attempt_Count::ByteSize(awd::metrics::SRUMB_Attempt_Count *this, unint64_t a2)
{
  LOBYTE(v3) = *(this + 32);
  if (!v3)
  {
    v4 = 0;
    goto LABEL_13;
  }

  if ((*(this + 32) & 1) == 0)
  {
    v4 = 0;
    if ((*(this + 32) & 2) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  v5 = *(this + 6);
  if (v5 >= 0x80)
  {
    v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5) + 1;
    v3 = *(this + 8);
    if ((v3 & 2) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  v4 = 2;
  if ((v3 & 2) != 0)
  {
LABEL_10:
    v4 = v4 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 1)) + 1;
    v3 = *(this + 8);
  }

LABEL_11:
  if ((v3 & 4) != 0)
  {
    v4 = v4 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 2)) + 1;
  }

LABEL_13:
  *(this + 7) = v4;
  return v4;
}

void awd::metrics::SRUMB_Attempt_Count::CheckTypeAndMergeFrom(awd::metrics::SRUMB_Attempt_Count *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
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

  LOBYTE(v4) = *(lpsrc + 32);
  if (v4)
  {
    if (*(lpsrc + 32))
    {
      v6 = *(lpsrc + 6);
      *(this + 8) |= 1u;
      *(this + 6) = v6;
      v4 = *(lpsrc + 8);
      if ((v4 & 2) == 0)
      {
LABEL_7:
        if ((v4 & 4) == 0)
        {
          return;
        }

        goto LABEL_8;
      }
    }

    else if ((*(lpsrc + 32) & 2) == 0)
    {
      goto LABEL_7;
    }

    v7 = *(lpsrc + 1);
    *(this + 8) |= 2u;
    *(this + 1) = v7;
    if ((*(lpsrc + 8) & 4) != 0)
    {
LABEL_8:
      v5 = *(lpsrc + 2);
      *(this + 8) |= 4u;
      *(this + 2) = v5;
    }
  }
}

void sub_2373C7480(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::metrics::SoundUMB_ATM_REG_Duration::~SoundUMB_ATM_REG_Duration(awd::metrics::SoundUMB_ATM_REG_Duration *this)
{
  *this = &unk_284A60060;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_284A60060;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  JUMPOUT(0x2383CAFA0);
}

uint64_t awd::metrics::SoundUMB_ATM_REG_Duration::Clear(uint64_t this)
{
  v1 = *(this + 136);
  if (v1)
  {
    *(this + 40) = 0;
    *(this + 24) = 0u;
    *(this + 8) = 0u;
  }

  if ((v1 & 0xFF00) != 0)
  {
    *(this + 48) = 0u;
    *(this + 64) = 0u;
  }

  if ((v1 & 0xFF0000) != 0)
  {
    *(this + 80) = 0u;
    *(this + 96) = 0u;
  }

  if (HIBYTE(v1))
  {
    *(this + 112) = 0;
    *(this + 120) = 0;
    *(this + 128) = 0;
  }

  *(this + 136) = 0;
  return this;
}

uint64_t awd::metrics::SoundUMB_ATM_REG_Duration::MergePartialFromCodedStream(awd::metrics::SoundUMB_ATM_REG_Duration *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
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

    switch(TagFallback >> 3)
    {
      case 1u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_66;
        }

        v8 = *(a2 + 1);
        v7 = *(a2 + 2);
        if (v8 < v7)
        {
          v9 = *v8;
          if ((v9 & 0x8000000000000000) == 0)
          {
            *(this + 1) = v9;
            v10 = v8 + 1;
            *(a2 + 1) = v10;
LABEL_72:
            *(this + 34) |= 1u;
            if (v10 < v7 && *v10 == 16)
            {
              v25 = v10 + 1;
              *(a2 + 1) = v25;
              goto LABEL_75;
            }

            continue;
          }
        }

        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 1);
        if (result)
        {
          v10 = *(a2 + 1);
          v7 = *(a2 + 2);
          goto LABEL_72;
        }

        break;
      case 2u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_66;
        }

        v25 = *(a2 + 1);
        v7 = *(a2 + 2);
LABEL_75:
        if (v25 >= v7 || (v40 = *v25, v40 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 2);
          if (!result)
          {
            return result;
          }

          v41 = *(a2 + 1);
          v7 = *(a2 + 2);
        }

        else
        {
          *(this + 2) = v40;
          v41 = v25 + 1;
          *(a2 + 1) = v41;
        }

        *(this + 34) |= 2u;
        if (v41 >= v7 || *v41 != 24)
        {
          continue;
        }

        v21 = v41 + 1;
        *(a2 + 1) = v21;
LABEL_83:
        if (v21 >= v7 || (v42 = *v21, v42 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 6);
          if (!result)
          {
            return result;
          }

          v43 = *(a2 + 1);
          v7 = *(a2 + 2);
        }

        else
        {
          *(this + 6) = v42;
          v43 = v21 + 1;
          *(a2 + 1) = v43;
        }

        *(this + 34) |= 4u;
        if (v43 >= v7 || *v43 != 32)
        {
          continue;
        }

        v23 = v43 + 1;
        *(a2 + 1) = v23;
LABEL_91:
        if (v23 >= v7 || (v44 = *v23, v44 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 7);
          if (!result)
          {
            return result;
          }

          v45 = *(a2 + 1);
          v7 = *(a2 + 2);
        }

        else
        {
          *(this + 7) = v44;
          v45 = v23 + 1;
          *(a2 + 1) = v45;
        }

        *(this + 34) |= 8u;
        if (v45 >= v7 || *v45 != 40)
        {
          continue;
        }

        v16 = v45 + 1;
        *(a2 + 1) = v16;
LABEL_99:
        if (v16 >= v7 || (v46 = *v16, v46 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 8);
          if (!result)
          {
            return result;
          }

          v47 = *(a2 + 1);
          v7 = *(a2 + 2);
        }

        else
        {
          *(this + 8) = v46;
          v47 = v16 + 1;
          *(a2 + 1) = v47;
        }

        *(this + 34) |= 0x10u;
        if (v47 >= v7 || *v47 != 48)
        {
          continue;
        }

        v28 = v47 + 1;
        *(a2 + 1) = v28;
LABEL_107:
        if (v28 >= v7 || (v48 = *v28, v48 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 9);
          if (!result)
          {
            return result;
          }

          v49 = *(a2 + 1);
          v7 = *(a2 + 2);
        }

        else
        {
          *(this + 9) = v48;
          v49 = v28 + 1;
          *(a2 + 1) = v49;
        }

        *(this + 34) |= 0x20u;
        if (v49 >= v7 || *v49 != 56)
        {
          continue;
        }

        v31 = v49 + 1;
        *(a2 + 1) = v31;
LABEL_115:
        if (v31 >= v7 || (v50 = *v31, v50 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 10);
          if (!result)
          {
            return result;
          }

          v51 = *(a2 + 1);
          v7 = *(a2 + 2);
        }

        else
        {
          *(this + 10) = v50;
          v51 = v31 + 1;
          *(a2 + 1) = v51;
        }

        *(this + 34) |= 0x40u;
        if (v51 >= v7 || *v51 != 64)
        {
          continue;
        }

        v24 = v51 + 1;
        *(a2 + 1) = v24;
LABEL_123:
        if (v24 >= v7 || (v52 = *v24, v52 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 11);
          if (!result)
          {
            return result;
          }

          v53 = *(a2 + 1);
          v7 = *(a2 + 2);
        }

        else
        {
          *(this + 11) = v52;
          v53 = v24 + 1;
          *(a2 + 1) = v53;
        }

        *(this + 34) |= 0x80u;
        if (v53 >= v7 || *v53 != 72)
        {
          continue;
        }

        v34 = v53 + 1;
        *(a2 + 1) = v34;
LABEL_131:
        if (v34 >= v7 || (v54 = *v34, v54 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 12);
          if (!result)
          {
            return result;
          }

          v55 = *(a2 + 1);
          v7 = *(a2 + 2);
        }

        else
        {
          *(this + 12) = v54;
          v55 = v34 + 1;
          *(a2 + 1) = v55;
        }

        *(this + 34) |= 0x100u;
        if (v55 >= v7 || *v55 != 80)
        {
          continue;
        }

        v18 = v55 + 1;
        *(a2 + 1) = v18;
LABEL_139:
        if (v18 >= v7 || (v56 = *v18, v56 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 13);
          if (!result)
          {
            return result;
          }

          v57 = *(a2 + 1);
          v7 = *(a2 + 2);
        }

        else
        {
          *(this + 13) = v56;
          v57 = v18 + 1;
          *(a2 + 1) = v57;
        }

        *(this + 34) |= 0x200u;
        if (v57 >= v7 || *v57 != 88)
        {
          continue;
        }

        v33 = v57 + 1;
        *(a2 + 1) = v33;
LABEL_147:
        if (v33 >= v7 || (v58 = *v33, v58 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 14);
          if (!result)
          {
            return result;
          }

          v59 = *(a2 + 1);
          v7 = *(a2 + 2);
        }

        else
        {
          *(this + 14) = v58;
          v59 = v33 + 1;
          *(a2 + 1) = v59;
        }

        *(this + 34) |= 0x400u;
        if (v59 >= v7 || *v59 != 96)
        {
          continue;
        }

        v15 = v59 + 1;
        *(a2 + 1) = v15;
LABEL_155:
        if (v15 >= v7 || (v60 = *v15, v60 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 15);
          if (!result)
          {
            return result;
          }

          v61 = *(a2 + 1);
          v7 = *(a2 + 2);
        }

        else
        {
          *(this + 15) = v60;
          v61 = v15 + 1;
          *(a2 + 1) = v61;
        }

        *(this + 34) |= 0x800u;
        if (v61 >= v7 || *v61 != 104)
        {
          continue;
        }

        v17 = v61 + 1;
        *(a2 + 1) = v17;
LABEL_163:
        if (v17 >= v7 || (v62 = *v17, v62 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 16);
          if (!result)
          {
            return result;
          }

          v63 = *(a2 + 1);
          v7 = *(a2 + 2);
        }

        else
        {
          *(this + 16) = v62;
          v63 = v17 + 1;
          *(a2 + 1) = v63;
        }

        *(this + 34) |= 0x1000u;
        if (v63 >= v7 || *v63 != 112)
        {
          continue;
        }

        v30 = v63 + 1;
        *(a2 + 1) = v30;
LABEL_171:
        if (v30 >= v7 || (v64 = *v30, v64 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 17);
          if (!result)
          {
            return result;
          }

          v65 = *(a2 + 1);
          v7 = *(a2 + 2);
        }

        else
        {
          *(this + 17) = v64;
          v65 = v30 + 1;
          *(a2 + 1) = v65;
        }

        *(this + 34) |= 0x2000u;
        if (v65 >= v7 || *v65 != 120)
        {
          continue;
        }

        v14 = v65 + 1;
        *(a2 + 1) = v14;
LABEL_179:
        if (v14 >= v7 || (v66 = *v14, v66 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 18);
          if (!result)
          {
            return result;
          }

          v67 = *(a2 + 1);
          v7 = *(a2 + 2);
        }

        else
        {
          *(this + 18) = v66;
          v67 = (v14 + 1);
          *(a2 + 1) = v67;
        }

        *(this + 34) |= 0x4000u;
        if (v7 - v67 < 2 || *v67 != 128 || v67[1] != 1)
        {
          continue;
        }

        v22 = (v67 + 2);
        *(a2 + 1) = v22;
LABEL_188:
        if (v22 >= v7 || (v68 = *v22, v68 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 19);
          if (!result)
          {
            return result;
          }

          v69 = *(a2 + 1);
          v7 = *(a2 + 2);
        }

        else
        {
          *(this + 19) = v68;
          v69 = (v22 + 1);
          *(a2 + 1) = v69;
        }

        *(this + 34) |= 0x8000u;
        if (v7 - v69 < 2 || *v69 != 136 || v69[1] != 1)
        {
          continue;
        }

        v13 = (v69 + 2);
        *(a2 + 1) = v13;
LABEL_197:
        if (v13 >= v7 || (v70 = *v13, v70 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 20);
          if (!result)
          {
            return result;
          }

          v71 = *(a2 + 1);
          v7 = *(a2 + 2);
        }

        else
        {
          *(this + 20) = v70;
          v71 = (v13 + 1);
          *(a2 + 1) = v71;
        }

        *(this + 34) |= 0x10000u;
        if (v7 - v71 < 2 || *v71 != 144 || v71[1] != 1)
        {
          continue;
        }

        v26 = (v71 + 2);
        *(a2 + 1) = v26;
LABEL_206:
        if (v26 >= v7 || (v72 = *v26, v72 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 21);
          if (!result)
          {
            return result;
          }

          v73 = *(a2 + 1);
          v7 = *(a2 + 2);
        }

        else
        {
          *(this + 21) = v72;
          v73 = (v26 + 1);
          *(a2 + 1) = v73;
        }

        *(this + 34) |= 0x20000u;
        if (v7 - v73 < 2 || *v73 != 152 || v73[1] != 1)
        {
          continue;
        }

        v32 = (v73 + 2);
        *(a2 + 1) = v32;
LABEL_215:
        if (v32 >= v7 || (v74 = *v32, v74 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 22);
          if (!result)
          {
            return result;
          }

          v75 = *(a2 + 1);
          v7 = *(a2 + 2);
        }

        else
        {
          *(this + 22) = v74;
          v75 = (v32 + 1);
          *(a2 + 1) = v75;
        }

        *(this + 34) |= 0x40000u;
        if (v7 - v75 < 2 || *v75 != 160 || v75[1] != 1)
        {
          continue;
        }

        v36 = (v75 + 2);
        *(a2 + 1) = v36;
LABEL_224:
        if (v36 >= v7 || (v76 = *v36, v76 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 23);
          if (!result)
          {
            return result;
          }

          v77 = *(a2 + 1);
          v7 = *(a2 + 2);
        }

        else
        {
          *(this + 23) = v76;
          v77 = (v36 + 1);
          *(a2 + 1) = v77;
        }

        *(this + 34) |= 0x80000u;
        if (v7 - v77 < 2 || *v77 != 168 || v77[1] != 1)
        {
          continue;
        }

        v27 = (v77 + 2);
        *(a2 + 1) = v27;
LABEL_233:
        if (v27 >= v7 || (v78 = *v27, v78 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 24);
          if (!result)
          {
            return result;
          }

          v79 = *(a2 + 1);
          v7 = *(a2 + 2);
        }

        else
        {
          *(this + 24) = v78;
          v79 = (v27 + 1);
          *(a2 + 1) = v79;
        }

        *(this + 34) |= 0x100000u;
        if (v7 - v79 < 2 || *v79 != 176 || v79[1] != 1)
        {
          continue;
        }

        v29 = (v79 + 2);
        *(a2 + 1) = v29;
LABEL_242:
        if (v29 >= v7 || (v80 = *v29, v80 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 25);
          if (!result)
          {
            return result;
          }

          v81 = *(a2 + 1);
          v7 = *(a2 + 2);
        }

        else
        {
          *(this + 25) = v80;
          v81 = (v29 + 1);
          *(a2 + 1) = v81;
        }

        *(this + 34) |= 0x200000u;
        if (v7 - v81 < 2 || *v81 != 184 || v81[1] != 1)
        {
          continue;
        }

        v35 = (v81 + 2);
        *(a2 + 1) = v35;
LABEL_251:
        if (v35 >= v7 || (v82 = *v35, v82 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 26);
          if (!result)
          {
            return result;
          }

          v83 = *(a2 + 1);
          v7 = *(a2 + 2);
        }

        else
        {
          *(this + 26) = v82;
          v83 = (v35 + 1);
          *(a2 + 1) = v83;
        }

        *(this + 34) |= 0x400000u;
        if (v7 - v83 < 2 || *v83 != 192 || v83[1] != 1)
        {
          continue;
        }

        v37 = (v83 + 2);
        *(a2 + 1) = v37;
LABEL_260:
        if (v37 >= v7 || (v84 = *v37, v84 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 27);
          if (!result)
          {
            return result;
          }

          v85 = *(a2 + 1);
          v7 = *(a2 + 2);
        }

        else
        {
          *(this + 27) = v84;
          v85 = (v37 + 1);
          *(a2 + 1) = v85;
        }

        *(this + 34) |= 0x800000u;
        if (v7 - v85 < 2 || *v85 != 200 || v85[1] != 1)
        {
          continue;
        }

        v20 = (v85 + 2);
        *(a2 + 1) = v20;
LABEL_269:
        v11 = *(a2 + 2);
        if (v20 >= v11 || (v86 = *v20, v86 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 28);
          if (!result)
          {
            return result;
          }

          v87 = *(a2 + 1);
          v11 = *(a2 + 2);
        }

        else
        {
          *(this + 28) = v86;
          v87 = (v20 + 1);
          *(a2 + 1) = v87;
        }

        *(this + 34) |= 0x1000000u;
        if (v11 - v87 < 2 || *v87 != 208 || v87[1] != 1)
        {
          continue;
        }

        v19 = (v87 + 2);
        *(a2 + 1) = v19;
LABEL_278:
        if (v19 >= v11 || (v88 = *v19, v88 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 29);
          if (!result)
          {
            return result;
          }

          v89 = *(a2 + 1);
          v11 = *(a2 + 2);
        }

        else
        {
          *(this + 29) = v88;
          v89 = (v19 + 1);
          *(a2 + 1) = v89;
        }

        *(this + 34) |= 0x2000000u;
        if (v11 - v89 < 2 || *v89 != 216 || v89[1] != 1)
        {
          continue;
        }

        v39 = (v89 + 2);
        *(a2 + 1) = v39;
LABEL_287:
        if (v39 >= v11 || (v90 = *v39, v90 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 30);
          if (!result)
          {
            return result;
          }

          v91 = *(a2 + 1);
          v11 = *(a2 + 2);
        }

        else
        {
          *(this + 30) = v90;
          v91 = (v39 + 1);
          *(a2 + 1) = v91;
        }

        *(this + 34) |= 0x4000000u;
        if (v11 - v91 < 2 || *v91 != 224 || v91[1] != 1)
        {
          continue;
        }

        v12 = (v91 + 2);
        *(a2 + 1) = v12;
LABEL_296:
        if (v12 >= v11 || (v92 = *v12, v92 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 31);
          if (!result)
          {
            return result;
          }

          v93 = *(a2 + 1);
          v11 = *(a2 + 2);
        }

        else
        {
          *(this + 31) = v92;
          v93 = (v12 + 1);
          *(a2 + 1) = v93;
        }

        *(this + 34) |= 0x8000000u;
        if (v11 - v93 < 2 || *v93 != 232 || v93[1] != 1)
        {
          continue;
        }

        v38 = (v93 + 2);
        *(a2 + 1) = v38;
LABEL_305:
        if (v38 >= v11 || (v94 = *v38, v94 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 32);
          if (!result)
          {
            return result;
          }

          v95 = *(a2 + 1);
          v11 = *(a2 + 2);
        }

        else
        {
          *(this + 32) = v94;
          v95 = v38 + 1;
          *(a2 + 1) = v95;
        }

        *(this + 34) |= 0x10000000u;
        if (v95 != v11 || !*(a2 + 11) && *(a2 + 6) != *(a2 + 10))
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
          goto LABEL_66;
        }

        v21 = *(a2 + 1);
        v7 = *(a2 + 2);
        goto LABEL_83;
      case 4u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_66;
        }

        v23 = *(a2 + 1);
        v7 = *(a2 + 2);
        goto LABEL_91;
      case 5u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_66;
        }

        v16 = *(a2 + 1);
        v7 = *(a2 + 2);
        goto LABEL_99;
      case 6u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_66;
        }

        v28 = *(a2 + 1);
        v7 = *(a2 + 2);
        goto LABEL_107;
      case 7u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_66;
        }

        v31 = *(a2 + 1);
        v7 = *(a2 + 2);
        goto LABEL_115;
      case 8u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_66;
        }

        v24 = *(a2 + 1);
        v7 = *(a2 + 2);
        goto LABEL_123;
      case 9u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_66;
        }

        v34 = *(a2 + 1);
        v7 = *(a2 + 2);
        goto LABEL_131;
      case 0xAu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_66;
        }

        v18 = *(a2 + 1);
        v7 = *(a2 + 2);
        goto LABEL_139;
      case 0xBu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_66;
        }

        v33 = *(a2 + 1);
        v7 = *(a2 + 2);
        goto LABEL_147;
      case 0xCu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_66;
        }

        v15 = *(a2 + 1);
        v7 = *(a2 + 2);
        goto LABEL_155;
      case 0xDu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_66;
        }

        v17 = *(a2 + 1);
        v7 = *(a2 + 2);
        goto LABEL_163;
      case 0xEu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_66;
        }

        v30 = *(a2 + 1);
        v7 = *(a2 + 2);
        goto LABEL_171;
      case 0xFu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_66;
        }

        v14 = *(a2 + 1);
        v7 = *(a2 + 2);
        goto LABEL_179;
      case 0x10u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_66;
        }

        v22 = *(a2 + 1);
        v7 = *(a2 + 2);
        goto LABEL_188;
      case 0x11u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_66;
        }

        v13 = *(a2 + 1);
        v7 = *(a2 + 2);
        goto LABEL_197;
      case 0x12u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_66;
        }

        v26 = *(a2 + 1);
        v7 = *(a2 + 2);
        goto LABEL_206;
      case 0x13u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_66;
        }

        v32 = *(a2 + 1);
        v7 = *(a2 + 2);
        goto LABEL_215;
      case 0x14u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_66;
        }

        v36 = *(a2 + 1);
        v7 = *(a2 + 2);
        goto LABEL_224;
      case 0x15u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_66;
        }

        v27 = *(a2 + 1);
        v7 = *(a2 + 2);
        goto LABEL_233;
      case 0x16u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_66;
        }

        v29 = *(a2 + 1);
        v7 = *(a2 + 2);
        goto LABEL_242;
      case 0x17u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_66;
        }

        v35 = *(a2 + 1);
        v7 = *(a2 + 2);
        goto LABEL_251;
      case 0x18u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_66;
        }

        v37 = *(a2 + 1);
        v7 = *(a2 + 2);
        goto LABEL_260;
      case 0x19u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_66;
        }

        v20 = *(a2 + 1);
        goto LABEL_269;
      case 0x1Au:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_66;
        }

        v19 = *(a2 + 1);
        v11 = *(a2 + 2);
        goto LABEL_278;
      case 0x1Bu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_66;
        }

        v39 = *(a2 + 1);
        v11 = *(a2 + 2);
        goto LABEL_287;
      case 0x1Cu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_66;
        }

        v12 = *(a2 + 1);
        v11 = *(a2 + 2);
        goto LABEL_296;
      case 0x1Du:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_66;
        }

        v38 = *(a2 + 1);
        v11 = *(a2 + 2);
        goto LABEL_305;
      default:
LABEL_66:
        if ((TagFallback & 7) == 4)
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