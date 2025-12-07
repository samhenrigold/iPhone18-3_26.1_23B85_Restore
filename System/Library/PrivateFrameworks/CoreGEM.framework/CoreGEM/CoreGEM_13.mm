uint64_t sub_245424E98(uint64_t result, const wireless_diagnostics::google::protobuf::MessageLite *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = result;
  v6 = *(result + 64);
  if (v6)
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(1, *(result + 8), a2, a4);
    v6 = *(v5 + 64);
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

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(2, *(v5 + 12), a2, a4);
  v6 = *(v5 + 64);
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
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(3, *(v5 + 16), a2, a4);
  v6 = *(v5 + 64);
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
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(4, *(v5 + 20), a2, a4);
  v6 = *(v5 + 64);
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
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(5, *(v5 + 24), a2, a4);
  v6 = *(v5 + 64);
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
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(6, *(v5 + 28), a2, a4);
  v6 = *(v5 + 64);
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
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(7, *(v5 + 56), a2, a4);
  v6 = *(v5 + 64);
  if ((v6 & 0x80) == 0)
  {
LABEL_9:
    if ((v6 & 0x100) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_24;
  }

LABEL_21:
  v7 = *(v5 + 32);
  if (!v7)
  {
    sub_2453EB7EC();
    v7 = *(qword_2813CEBD0 + 32);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(8, v7, a2, a4);
  v6 = *(v5 + 64);
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
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(9, *(v5 + 57), a2, a4);
  v6 = *(v5 + 64);
  if ((v6 & 0x200) == 0)
  {
LABEL_11:
    if ((v6 & 0x400) == 0)
    {
      goto LABEL_12;
    }

LABEL_28:
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(0xB, *(v5 + 58), a2, a4);
    if ((*(v5 + 64) & 0x800) == 0)
    {
      return result;
    }

    goto LABEL_29;
  }

LABEL_25:
  v8 = *(v5 + 40);
  if (!v8)
  {
    sub_2453EB7EC();
    v8 = *(qword_2813CEBD0 + 40);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0xA, v8, a2, a4);
  v6 = *(v5 + 64);
  if ((v6 & 0x400) != 0)
  {
    goto LABEL_28;
  }

LABEL_12:
  if ((v6 & 0x800) == 0)
  {
    return result;
  }

LABEL_29:
  v9 = *(v5 + 48);
  if (!v9)
  {
    sub_2453EB7EC();
    v9 = *(qword_2813CEBD0 + 48);
  }

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0xC, v9, a2, a4);
}

uint64_t sub_24542505C(uint64_t a1, unsigned int a2)
{
  v3 = *(a1 + 64);
  if (!v3)
  {
    v5 = 0;
    goto LABEL_44;
  }

  if (v3)
  {
    v6 = *(a1 + 8);
    if (v6 >= 0x80)
    {
      v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v6) + 1;
      v3 = *(a1 + 64);
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

  v7 = *(a1 + 12);
  if (v7 >= 0x80)
  {
    v8 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v7) + 1;
    v3 = *(a1 + 64);
  }

  else
  {
    v8 = 2;
  }

  v4 += v8;
LABEL_14:
  if ((v3 & 4) != 0)
  {
    v9 = *(a1 + 16);
    if (v9 >= 0x80)
    {
      v10 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v9) + 1;
      v3 = *(a1 + 64);
    }

    else
    {
      v10 = 2;
    }

    v4 += v10;
    if ((v3 & 8) == 0)
    {
LABEL_16:
      if ((v3 & 0x10) == 0)
      {
        goto LABEL_17;
      }

      goto LABEL_27;
    }
  }

  else if ((v3 & 8) == 0)
  {
    goto LABEL_16;
  }

  v11 = *(a1 + 20);
  if (v11 >= 0x80)
  {
    v12 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v11) + 1;
    v3 = *(a1 + 64);
  }

  else
  {
    v12 = 2;
  }

  v4 += v12;
  if ((v3 & 0x10) == 0)
  {
LABEL_17:
    if ((v3 & 0x20) == 0)
    {
      goto LABEL_37;
    }

    goto LABEL_31;
  }

LABEL_27:
  v13 = *(a1 + 24);
  if (v13 >= 0x80)
  {
    v14 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v13) + 1;
    v3 = *(a1 + 64);
  }

  else
  {
    v14 = 2;
  }

  v4 += v14;
  if ((v3 & 0x20) != 0)
  {
LABEL_31:
    v15 = *(a1 + 28);
    if ((v15 & 0x80000000) != 0)
    {
      v16 = 11;
    }

    else if (v15 >= 0x80)
    {
      v16 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v15) + 1;
      v3 = *(a1 + 64);
    }

    else
    {
      v16 = 2;
    }

    v4 += v16;
  }

LABEL_37:
  v5 = ((v3 >> 5) & 2) + v4;
  if ((v3 & 0x80) != 0)
  {
    v17 = *(a1 + 32);
    if (!v17)
    {
      sub_2453EB7EC();
      v17 = *(qword_2813CEBD0 + 32);
    }

    v18 = sub_24542357C(v17, a2);
    v19 = v18;
    if (v18 >= 0x80)
    {
      v20 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v18);
    }

    else
    {
      v20 = 1;
    }

    v5 = (v5 + v19 + v20 + 1);
    v3 = *(a1 + 64);
  }

LABEL_44:
  if ((v3 & 0xFF00) != 0)
  {
    v21 = ((v3 >> 7) & 2) + v5;
    if ((v3 & 0x200) != 0)
    {
      v22 = *(a1 + 40);
      if (!v22)
      {
        sub_2453EB7EC();
        v22 = *(qword_2813CEBD0 + 40);
      }

      v23 = sub_245423A90(v22, a2);
      v24 = v23;
      if (v23 >= 0x80)
      {
        v25 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v23);
      }

      else
      {
        v25 = 1;
      }

      v21 += v24 + v25 + 1;
      v3 = *(a1 + 64);
    }

    v5 = ((v3 >> 9) & 2) + v21;
    if ((v3 & 0x800) != 0)
    {
      v26 = *(a1 + 48);
      if (!v26)
      {
        sub_2453EB7EC();
        v26 = *(qword_2813CEBD0 + 48);
      }

      v27 = sub_245423F7C(v26, a2);
      v28 = v27;
      if (v27 >= 0x80)
      {
        v29 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v27);
      }

      else
      {
        v29 = 1;
      }

      v5 = (v5 + v28 + v29 + 1);
    }
  }

  *(a1 + 60) = v5;
  return v5;
}

void sub_2454252C4(uint64_t a1, void *lpsrc)
{
  if (!__dynamic_cast(lpsrc, MEMORY[0x277D82C38], &unk_285858C10, 0))
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  sub_2454240C8(a1, lpsrc);
}

void sub_245425380(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
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

  if (*(a2 + 52))
  {
    v5 = *(a2 + 8);
    if (v5 >= 9)
    {
      __assert_rtn("set_result", "GnssEmergencyTypes.pb.h", 26232, "::CoreGem::proto::gnss::Emergency::ErrorCodes_IsValid(value)");
    }

    *(a1 + 52) |= 1u;
    *(a1 + 8) = v5;
    v4 = *(a2 + 52);
  }

  if ((v4 & 2) != 0)
  {
    v7 = *(a2 + 12);
    *(a1 + 52) |= 2u;
    *(a1 + 12) = v7;
    v4 = *(a2 + 52);
    if ((v4 & 4) == 0)
    {
LABEL_9:
      if ((v4 & 8) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_21;
    }
  }

  else if ((v4 & 4) == 0)
  {
    goto LABEL_9;
  }

  *(a1 + 52) |= 4u;
  v8 = *(a1 + 16);
  if (!v8)
  {
    operator new();
  }

  v9 = *(a2 + 16);
  if (!v9)
  {
    sub_2453EB7EC();
    v9 = *(qword_2813CEEE8 + 16);
  }

  sub_2453F8094(v8, v9);
  v4 = *(a2 + 52);
  if ((v4 & 8) == 0)
  {
LABEL_10:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_11;
    }

LABEL_26:
    *(a1 + 52) |= 0x10u;
    v12 = *(a1 + 32);
    if (!v12)
    {
      operator new();
    }

    v13 = *(a2 + 32);
    if (!v13)
    {
      sub_2453EB7EC();
      v13 = *(qword_2813CEEE8 + 32);
    }

    sub_2454240C8(v12, v13);
    v4 = *(a2 + 52);
    if ((v4 & 0x20) == 0)
    {
LABEL_12:
      if ((v4 & 0x40) == 0)
      {
        return;
      }

      goto LABEL_13;
    }

    goto LABEL_31;
  }

LABEL_21:
  *(a1 + 52) |= 8u;
  v10 = *(a1 + 24);
  if (!v10)
  {
    operator new();
  }

  v11 = *(a2 + 24);
  if (!v11)
  {
    sub_2453EB7EC();
    v11 = *(qword_2813CEEE8 + 24);
  }

  sub_24540DD64(v10, v11);
  v4 = *(a2 + 52);
  if ((v4 & 0x10) != 0)
  {
    goto LABEL_26;
  }

LABEL_11:
  if ((v4 & 0x20) == 0)
  {
    goto LABEL_12;
  }

LABEL_31:
  v14 = *(a2 + 40);
  if (v14 >= 4)
  {
    __assert_rtn("set_aflt_action", "GnssEmergencyTypes.pb.h", 26403, "::CoreGem::proto::gnss::Emergency::AfltAction_IsValid(value)");
  }

  *(a1 + 52) |= 0x20u;
  *(a1 + 40) = v14;
  if ((*(a2 + 52) & 0x40) != 0)
  {
LABEL_13:
    v6 = *(a2 + 44);
    *(a1 + 52) |= 0x40u;
    *(a1 + 44) = v6;
  }
}

void sub_245425670(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_245425688(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = &unk_285858290;
  sub_2453EB7EC();
  if (qword_2813CEEE8 != a1)
  {
    v2 = *(a1 + 2);
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }

    v3 = *(a1 + 3);
    if (v3)
    {
      (*(*v3 + 8))(v3);
    }

    v4 = *(a1 + 4);
    if (v4)
    {
      (*(*v4 + 8))(v4);
    }
  }

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);
}

void sub_245425778(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  sub_245425688(a1);

  JUMPOUT(0x245D6A0D0);
}

uint64_t sub_24542580C(uint64_t result)
{
  v1 = result;
  LOBYTE(v2) = *(result + 52);
  if (v2)
  {
    *(result + 8) = 0;
    if ((v2 & 4) != 0)
    {
      v3 = *(result + 16);
      if (v3)
      {
        if (*(v3 + 24))
        {
          *(v3 + 8) = 0;
          *(v3 + 16) = 0;
        }

        *(v3 + 24) = 0;
        v2 = *(result + 52);
      }
    }

    if ((v2 & 8) != 0)
    {
      result = *(result + 24);
      if (result)
      {
        result = sub_24540E2D0(result);
        v2 = *(v1 + 52);
      }
    }

    if ((v2 & 0x10) != 0)
    {
      result = *(v1 + 32);
      if (result)
      {
        result = sub_2454245B8(result);
      }
    }

    *(v1 + 40) = 0;
    *(v1 + 44) = 0;
  }

  *(v1 + 52) = 0;
  return result;
}

uint64_t sub_24542588C(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormatLite *this, unsigned int a3)
{
  while (1)
  {
    while (1)
    {
      while (1)
      {
        v5 = *(this + 1);
        if (v5 >= *(this + 2) || (TagFallback = *v5, (TagFallback & 0x80000000) != 0))
        {
          TagFallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadTagFallback(this);
          *(this + 8) = TagFallback;
          if (!TagFallback)
          {
            return 1;
          }
        }

        else
        {
          *(this + 8) = TagFallback;
          *(this + 1) = v5 + 1;
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
            goto LABEL_30;
          }

          v51 = 0;
          v12 = *(this + 1);
          if (v12 >= *(this + 2) || (v13 = *v12, (v13 & 0x80000000) != 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v51);
            if (!result)
            {
              return result;
            }

            v13 = v51;
          }

          else
          {
            *(this + 1) = v12 + 1;
          }

          if (v13 <= 8)
          {
            *(a1 + 52) |= 1u;
            *(a1 + 8) = v13;
          }

          v19 = *(this + 1);
          v16 = *(this + 2);
          if (v19 < v16 && *v19 == 16)
          {
            v17 = v19 + 1;
            *(this + 1) = v17;
            goto LABEL_41;
          }
        }

        else
        {
          if (v7 != 2)
          {
            if (v7 != 3 || v8 != 2)
            {
              goto LABEL_30;
            }

            v9 = *(a1 + 52);
            goto LABEL_49;
          }

          if ((TagFallback & 7) != 0)
          {
            goto LABEL_30;
          }

          v17 = *(this + 1);
          v16 = *(this + 2);
LABEL_41:
          if (v17 >= v16 || (v20 = *v17, v20 < 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 12));
            if (!result)
            {
              return result;
            }

            v21 = *(this + 1);
            v16 = *(this + 2);
          }

          else
          {
            *(a1 + 12) = v20;
            v21 = v17 + 1;
            *(this + 1) = v21;
          }

          v9 = *(a1 + 52) | 2;
          *(a1 + 52) = v9;
          if (v21 < v16 && *v21 == 26)
          {
            *(this + 1) = v21 + 1;
LABEL_49:
            *(a1 + 52) = v9 | 4;
            v22 = *(a1 + 16);
            if (!v22)
            {
              operator new();
            }

            v51 = 0;
            v23 = *(this + 1);
            if (v23 >= *(this + 2) || *v23 < 0)
            {
              if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v51))
              {
                return 0;
              }
            }

            else
            {
              v51 = *v23;
              *(this + 1) = v23 + 1;
            }

            v24 = *(this + 14);
            v25 = *(this + 15);
            *(this + 14) = v24 + 1;
            if (v24 >= v25)
            {
              return 0;
            }

            wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this);
            if (!sub_2453F82C0(v22, this, v26) || *(this + 36) != 1)
            {
              return 0;
            }

            wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this);
            v27 = *(this + 14);
            v28 = __OFSUB__(v27, 1);
            v29 = v27 - 1;
            if (v29 < 0 == v28)
            {
              *(this + 14) = v29;
            }

            v30 = *(this + 1);
            if (v30 < *(this + 2) && *v30 == 34)
            {
              *(this + 1) = v30 + 1;
              goto LABEL_63;
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
            v15 = *(this + 1);
            v14 = *(this + 2);
            goto LABEL_91;
          }
        }

        else if (v7 == 7 && (TagFallback & 7) == 0)
        {
          v11 = *(this + 1);
          v10 = *(this + 2);
          goto LABEL_101;
        }

        goto LABEL_30;
      }

      if (v7 != 4)
      {
        break;
      }

      if (v8 != 2)
      {
        goto LABEL_30;
      }

LABEL_63:
      *(a1 + 52) |= 8u;
      v31 = *(a1 + 24);
      if (!v31)
      {
        operator new();
      }

      v51 = 0;
      v32 = *(this + 1);
      if (v32 >= *(this + 2) || *v32 < 0)
      {
        if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v51))
        {
          return 0;
        }
      }

      else
      {
        v51 = *v32;
        *(this + 1) = v32 + 1;
      }

      v33 = *(this + 14);
      v34 = *(this + 15);
      *(this + 14) = v33 + 1;
      if (v33 >= v34)
      {
        return 0;
      }

      wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this);
      if (!sub_24540E344(v31, this, v35) || *(this + 36) != 1)
      {
        return 0;
      }

      wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this);
      v36 = *(this + 14);
      v28 = __OFSUB__(v36, 1);
      v37 = v36 - 1;
      if (v37 < 0 == v28)
      {
        *(this + 14) = v37;
      }

      v38 = *(this + 1);
      if (v38 < *(this + 2) && *v38 == 42)
      {
        *(this + 1) = v38 + 1;
LABEL_77:
        *(a1 + 52) |= 0x10u;
        v39 = *(a1 + 32);
        if (!v39)
        {
          operator new();
        }

        v51 = 0;
        v40 = *(this + 1);
        if (v40 >= *(this + 2) || *v40 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v51))
          {
            return 0;
          }
        }

        else
        {
          v51 = *v40;
          *(this + 1) = v40 + 1;
        }

        v41 = *(this + 14);
        v42 = *(this + 15);
        *(this + 14) = v41 + 1;
        if (v41 >= v42)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this);
        if (!sub_245424648(v39, this, v43) || *(this + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this);
        v44 = *(this + 14);
        v28 = __OFSUB__(v44, 1);
        v45 = v44 - 1;
        if (v45 < 0 == v28)
        {
          *(this + 14) = v45;
        }

        v46 = *(this + 1);
        v14 = *(this + 2);
        if (v46 < v14 && *v46 == 48)
        {
          v15 = v46 + 1;
          *(this + 1) = v15;
LABEL_91:
          v51 = 0;
          if (v15 >= v14 || (v47 = *v15, (v47 & 0x80000000) != 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v51);
            if (!result)
            {
              return result;
            }

            v47 = v51;
          }

          else
          {
            *(this + 1) = v15 + 1;
          }

          if (v47 <= 3)
          {
            *(a1 + 52) |= 0x20u;
            *(a1 + 40) = v47;
          }

          v48 = *(this + 1);
          v10 = *(this + 2);
          if (v48 < v10 && *v48 == 56)
          {
            v11 = v48 + 1;
            *(this + 1) = v11;
LABEL_101:
            v51 = 0;
            if (v11 >= v10 || (v49 = *v11, (v49 & 0x80000000) != 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v51);
              if (!result)
              {
                return result;
              }

              v49 = v51;
              v50 = *(this + 1);
              v10 = *(this + 2);
            }

            else
            {
              v50 = v11 + 1;
              *(this + 1) = v50;
            }

            *(a1 + 44) = v49 != 0;
            *(a1 + 52) |= 0x40u;
            if (v50 == v10 && (*(this + 11) || *(this + 6) == *(this + 10)))
            {
              *(this + 8) = 0;
              result = 1;
              *(this + 36) = 1;
              return result;
            }
          }
        }
      }
    }

    if (v7 == 5 && v8 == 2)
    {
      goto LABEL_77;
    }

LABEL_30:
    if (v8 == 4)
    {
      return 1;
    }

    if ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(this, TagFallback) & 1) == 0)
    {
      return 0;
    }
  }
}

uint64_t sub_245425ED0(uint64_t result, const wireless_diagnostics::google::protobuf::MessageLite *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = result;
  v6 = *(result + 52);
  if (v6)
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(1, *(result + 8), a2, a4);
    v6 = *(v5 + 52);
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

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(2, *(v5 + 12), a2, a4);
  v6 = *(v5 + 52);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_14;
  }

LABEL_11:
  v7 = *(v5 + 16);
  if (!v7)
  {
    sub_2453EB7EC();
    v7 = *(qword_2813CEEE8 + 16);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(3, v7, a2, a4);
  v6 = *(v5 + 52);
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_17;
  }

LABEL_14:
  v8 = *(v5 + 24);
  if (!v8)
  {
    sub_2453EB7EC();
    v8 = *(qword_2813CEEE8 + 24);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(4, v8, a2, a4);
  v6 = *(v5 + 52);
  if ((v6 & 0x10) == 0)
  {
LABEL_6:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_7;
    }

LABEL_20:
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(6, *(v5 + 40), a2, a4);
    if ((*(v5 + 52) & 0x40) == 0)
    {
      return result;
    }

    goto LABEL_21;
  }

LABEL_17:
  v9 = *(v5 + 32);
  if (!v9)
  {
    sub_2453EB7EC();
    v9 = *(qword_2813CEEE8 + 32);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(5, v9, a2, a4);
  v6 = *(v5 + 52);
  if ((v6 & 0x20) != 0)
  {
    goto LABEL_20;
  }

LABEL_7:
  if ((v6 & 0x40) == 0)
  {
    return result;
  }

LABEL_21:
  v10 = *(v5 + 44);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(7, v10, a2, a4);
}

uint64_t sub_245426008(uint64_t a1, unsigned int a2)
{
  v3 = *(a1 + 52);
  if (v3)
  {
    if (v3)
    {
      v6 = *(a1 + 8);
      if ((v6 & 0x80000000) != 0)
      {
        v4 = 11;
        if ((v3 & 2) == 0)
        {
          goto LABEL_17;
        }
      }

      else if (v6 >= 0x80)
      {
        v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v6) + 1;
        v3 = *(a1 + 52);
        if ((v3 & 2) == 0)
        {
          goto LABEL_17;
        }
      }

      else
      {
        v4 = 2;
        if ((v3 & 2) == 0)
        {
          goto LABEL_17;
        }
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

    v7 = *(a1 + 12);
    if (v7 >= 0x80)
    {
      v8 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v7) + 1;
      v3 = *(a1 + 52);
    }

    else
    {
      v8 = 2;
    }

    v4 += v8;
LABEL_17:
    if ((v3 & 4) != 0)
    {
      v9 = *(a1 + 16);
      if (!v9)
      {
        sub_2453EB7EC();
        v9 = *(qword_2813CEEE8 + 16);
      }

      v10 = sub_2453F8560(v9, a2);
      v11 = v10;
      if (v10 >= 0x80)
      {
        v12 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v10);
      }

      else
      {
        v12 = 1;
      }

      v4 += v11 + v12 + 1;
      v3 = *(a1 + 52);
      if ((v3 & 8) == 0)
      {
LABEL_19:
        if ((v3 & 0x10) == 0)
        {
          goto LABEL_20;
        }

        goto LABEL_34;
      }
    }

    else if ((v3 & 8) == 0)
    {
      goto LABEL_19;
    }

    v13 = *(a1 + 24);
    if (!v13)
    {
      sub_2453EB7EC();
      v13 = *(qword_2813CEEE8 + 24);
    }

    v14 = sub_24540EBF8(v13, a2);
    v15 = v14;
    if (v14 >= 0x80)
    {
      v16 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v14);
    }

    else
    {
      v16 = 1;
    }

    v4 += v15 + v16 + 1;
    v3 = *(a1 + 52);
    if ((v3 & 0x10) == 0)
    {
LABEL_20:
      if ((v3 & 0x20) == 0)
      {
LABEL_46:
        result = ((v3 >> 5) & 2) + v4;
        goto LABEL_47;
      }

LABEL_40:
      v21 = *(a1 + 40);
      if ((v21 & 0x80000000) != 0)
      {
        v22 = 11;
      }

      else if (v21 >= 0x80)
      {
        v22 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v21) + 1;
        v3 = *(a1 + 52);
      }

      else
      {
        v22 = 2;
      }

      v4 += v22;
      goto LABEL_46;
    }

LABEL_34:
    v17 = *(a1 + 32);
    if (!v17)
    {
      sub_2453EB7EC();
      v17 = *(qword_2813CEEE8 + 32);
    }

    v18 = sub_24542505C(v17, a2);
    v19 = v18;
    if (v18 >= 0x80)
    {
      v20 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v18);
    }

    else
    {
      v20 = 1;
    }

    v4 += v19 + v20 + 1;
    v3 = *(a1 + 52);
    if ((v3 & 0x20) == 0)
    {
      goto LABEL_46;
    }

    goto LABEL_40;
  }

  result = 0;
LABEL_47:
  *(a1 + 48) = result;
  return result;
}

void sub_2454261E8(uint64_t a1, void *lpsrc)
{
  if (!__dynamic_cast(lpsrc, MEMORY[0x277D82C38], &unk_285858C28, 0))
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  sub_245425380(a1, lpsrc);
}

void sub_2454262A4(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = &unk_285858308;
  sub_2453EB7EC();

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);
}

void sub_245426300(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  sub_2454262A4(a1);

  JUMPOUT(0x245D6A0D0);
}

uint64_t sub_245426384(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormatLite *this, unsigned int a3)
{
  while (1)
  {
    while (1)
    {
      v5 = *(this + 1);
      if (v5 >= *(this + 2) || (TagFallback = *v5, (TagFallback & 0x80000000) != 0))
      {
        TagFallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadTagFallback(this);
        *(this + 8) = TagFallback;
        if (!TagFallback)
        {
          return 1;
        }
      }

      else
      {
        *(this + 8) = TagFallback;
        *(this + 1) = v5 + 1;
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
            v14 = *(this + 1);
            v8 = *(this + 2);
            goto LABEL_37;
          }
        }

        else if (v7 == 4 && (TagFallback & 7) == 0)
        {
          v10 = *(this + 1);
          v8 = *(this + 2);
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

      v22 = 0;
      v11 = *(this + 1);
      v8 = *(this + 2);
      if (v11 >= v8 || (v12 = *v11, (v12 & 0x80000000) != 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v22);
        if (!result)
        {
          return result;
        }

        v12 = v22;
        v13 = *(this + 1);
        v8 = *(this + 2);
      }

      else
      {
        v13 = v11 + 1;
        *(this + 1) = v13;
      }

      *(a1 + 8) = v12 != 0;
      *(a1 + 16) |= 1u;
      if (v13 < v8 && *v13 == 16)
      {
        v9 = v13 + 1;
        *(this + 1) = v9;
LABEL_29:
        v22 = 0;
        if (v9 >= v8 || (v15 = *v9, (v15 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v22);
          if (!result)
          {
            return result;
          }

          v15 = v22;
          v16 = *(this + 1);
          v8 = *(this + 2);
        }

        else
        {
          v16 = v9 + 1;
          *(this + 1) = v16;
        }

        *(a1 + 9) = v15 != 0;
        *(a1 + 16) |= 2u;
        if (v16 < v8 && *v16 == 24)
        {
          v14 = v16 + 1;
          *(this + 1) = v14;
LABEL_37:
          v22 = 0;
          if (v14 >= v8 || (v17 = *v14, (v17 & 0x80000000) != 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v22);
            if (!result)
            {
              return result;
            }

            v17 = v22;
            v18 = *(this + 1);
            v8 = *(this + 2);
          }

          else
          {
            v18 = v14 + 1;
            *(this + 1) = v18;
          }

          *(a1 + 10) = v17 != 0;
          *(a1 + 16) |= 4u;
          if (v18 < v8 && *v18 == 32)
          {
            v10 = v18 + 1;
            *(this + 1) = v10;
LABEL_45:
            v22 = 0;
            if (v10 >= v8 || (v19 = *v10, (v19 & 0x80000000) != 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v22);
              if (!result)
              {
                return result;
              }

              v19 = v22;
              v20 = *(this + 1);
              v8 = *(this + 2);
            }

            else
            {
              v20 = v10 + 1;
              *(this + 1) = v20;
            }

            *(a1 + 11) = v19 != 0;
            *(a1 + 16) |= 8u;
            if (v20 == v8 && (*(this + 11) || *(this + 6) == *(this + 10)))
            {
              *(this + 8) = 0;
              result = 1;
              *(this + 36) = 1;
              return result;
            }
          }
        }
      }
    }

    if (v7 == 2 && (TagFallback & 7) == 0)
    {
      v9 = *(this + 1);
      v8 = *(this + 2);
      goto LABEL_29;
    }

LABEL_20:
    if ((TagFallback & 7) == 4)
    {
      return 1;
    }

    if ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(this, TagFallback) & 1) == 0)
    {
      return 0;
    }
  }
}

uint64_t sub_245426630(uint64_t result, uint64_t a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = result;
  v6 = *(result + 16);
  if (v6)
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(1, *(result + 8), a2, a4);
    v6 = *(v5 + 16);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

LABEL_8:
      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(3, *(v5 + 10), a2, a4);
      if ((*(v5 + 16) & 8) == 0)
      {
        return result;
      }

      goto LABEL_9;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(2, *(v5 + 9), a2, a4);
  v6 = *(v5 + 16);
  if ((v6 & 4) != 0)
  {
    goto LABEL_8;
  }

LABEL_4:
  if ((v6 & 8) == 0)
  {
    return result;
  }

LABEL_9:
  v7 = *(v5 + 11);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(4, v7, a2, a4);
}

uint64_t sub_2454266D8(uint64_t a1)
{
  LODWORD(v1) = 2 * (*(a1 + 16) & 1) + (*(a1 + 16) & 2) + ((*(a1 + 16) >> 1) & 2) + ((*(a1 + 16) >> 2) & 2);
  if (*(a1 + 16))
  {
    v1 = v1;
  }

  else
  {
    v1 = 0;
  }

  *(a1 + 12) = v1;
  return v1;
}

void sub_245426714(uint64_t a1, _BYTE *lpsrc)
{
  if (!__dynamic_cast(lpsrc, MEMORY[0x277D82C38], &unk_285858C40, 0))
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  sub_24541EF18(a1, lpsrc);
}

void sub_245426AC8(wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase *a1, uint64_t a2)
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
      sub_2453EDA24(*(v9 + 8 * v8), v6);
      ++v5;
      v4 = *(a2 + 8);
    }

    while (v5 < v4);
  }
}

void sub_245426C40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_245426C58(wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase *a1, uint64_t a2)
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
      sub_2453EE62C(*(v9 + 8 * v8), v6);
      ++v5;
      v4 = *(a2 + 8);
    }

    while (v5 < v4);
  }
}

void sub_245426DCC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_245426DE4(wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase *a1, uint64_t a2)
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
      sub_2453EEDB8(*(v9 + 8 * v8), v6);
      ++v5;
      v4 = *(a2 + 8);
    }

    while (v5 < v4);
  }
}

void sub_245426F5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_245426F74(wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase *a1, uint64_t a2)
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
      sub_24541B620(*(v9 + 8 * v8), v6);
      ++v5;
      v4 = *(a2 + 8);
    }

    while (v5 < v4);
  }
}

void sub_245427104(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_24542711C()
{
  if (qword_2813CEEB8)
  {
    (*(*qword_2813CEEB8 + 8))(qword_2813CEEB8);
  }

  if (qword_2813CEBE0)
  {
    (*(*qword_2813CEBE0 + 8))(qword_2813CEBE0);
  }

  if (qword_2813CEEC8)
  {
    (*(*qword_2813CEEC8 + 8))(qword_2813CEEC8);
  }

  if (qword_2813CEBE8)
  {
    (*(*qword_2813CEBE8 + 8))(qword_2813CEBE8);
  }

  if (qword_2813CEBF0)
  {
    (*(*qword_2813CEBF0 + 8))(qword_2813CEBF0);
  }

  if (qword_2813CEBF8)
  {
    (*(*qword_2813CEBF8 + 8))(qword_2813CEBF8);
  }

  if (qword_2813CEC00)
  {
    (*(*qword_2813CEC00 + 8))(qword_2813CEC00);
  }

  if (qword_2813CEC08)
  {
    (*(*qword_2813CEC08 + 8))(qword_2813CEC08);
  }

  if (qword_2813CEC10)
  {
    (*(*qword_2813CEC10 + 8))(qword_2813CEC10);
  }

  if (qword_2813CEEC0)
  {
    (*(*qword_2813CEEC0 + 8))(qword_2813CEEC0);
  }

  if (qword_2813CEC18)
  {
    (*(*qword_2813CEC18 + 8))(qword_2813CEC18);
  }

  if (qword_2813CEC20)
  {
    (*(*qword_2813CEC20 + 8))(qword_2813CEC20);
  }

  if (qword_2813CEC28)
  {
    (*(*qword_2813CEC28 + 8))(qword_2813CEC28);
  }

  if (qword_2813CEC30)
  {
    (*(*qword_2813CEC30 + 8))(qword_2813CEC30);
  }

  if (qword_2813CEC38)
  {
    (*(*qword_2813CEC38 + 8))(qword_2813CEC38);
  }

  if (qword_2813CEC40)
  {
    (*(*qword_2813CEC40 + 8))(qword_2813CEC40);
  }

  if (qword_2813CEC48)
  {
    (*(*qword_2813CEC48 + 8))(qword_2813CEC48);
  }

  if (qword_2813CEC50)
  {
    (*(*qword_2813CEC50 + 8))(qword_2813CEC50);
  }

  if (qword_2813CEC58)
  {
    (*(*qword_2813CEC58 + 8))(qword_2813CEC58);
  }

  if (qword_2813CEC60)
  {
    (*(*qword_2813CEC60 + 8))(qword_2813CEC60);
  }

  if (qword_2813CEC68)
  {
    (*(*qword_2813CEC68 + 8))(qword_2813CEC68);
  }

  if (qword_2813CEC70)
  {
    (*(*qword_2813CEC70 + 8))(qword_2813CEC70);
  }

  if (qword_2813CEC78)
  {
    (*(*qword_2813CEC78 + 8))(qword_2813CEC78);
  }

  if (qword_2813CEC80)
  {
    (*(*qword_2813CEC80 + 8))(qword_2813CEC80);
  }

  if (qword_2813CEC88)
  {
    (*(*qword_2813CEC88 + 8))(qword_2813CEC88);
  }

  if (qword_2813CEC90)
  {
    (*(*qword_2813CEC90 + 8))(qword_2813CEC90);
  }

  if (qword_2813CEC98)
  {
    (*(*qword_2813CEC98 + 8))(qword_2813CEC98);
  }

  if (qword_2813CECA0)
  {
    (*(*qword_2813CECA0 + 8))(qword_2813CECA0);
  }

  if (qword_2813CECA8)
  {
    (*(*qword_2813CECA8 + 8))(qword_2813CECA8);
  }

  if (qword_2813CECB0)
  {
    (*(*qword_2813CECB0 + 8))(qword_2813CECB0);
  }

  if (qword_2813CECB8)
  {
    (*(*qword_2813CECB8 + 8))(qword_2813CECB8);
  }

  if (qword_2813CECC0)
  {
    (*(*qword_2813CECC0 + 8))(qword_2813CECC0);
  }

  if (qword_2813CECC8)
  {
    (*(*qword_2813CECC8 + 8))(qword_2813CECC8);
  }

  if (qword_2813CECD0)
  {
    (*(*qword_2813CECD0 + 8))(qword_2813CECD0);
  }

  if (qword_2813CECD8)
  {
    (*(*qword_2813CECD8 + 8))(qword_2813CECD8);
  }

  if (qword_2813CECE0)
  {
    (*(*qword_2813CECE0 + 8))(qword_2813CECE0);
  }

  if (qword_2813CECE8)
  {
    (*(*qword_2813CECE8 + 8))(qword_2813CECE8);
  }

  if (qword_2813CECF0)
  {
    (*(*qword_2813CECF0 + 8))(qword_2813CECF0);
  }

  if (qword_2813CECF8)
  {
    (*(*qword_2813CECF8 + 8))(qword_2813CECF8);
  }

  if (qword_2813CED00)
  {
    (*(*qword_2813CED00 + 8))(qword_2813CED00);
  }

  if (qword_2813CED08)
  {
    (*(*qword_2813CED08 + 8))(qword_2813CED08);
  }

  if (qword_2813CED10)
  {
    (*(*qword_2813CED10 + 8))(qword_2813CED10);
  }

  result = qword_2813CED18;
  if (qword_2813CED18)
  {
    v1 = *(*qword_2813CED18 + 8);

    return v1();
  }

  return result;
}

void sub_245427954(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  wireless_diagnostics::google::protobuf::internal::VerifyVersion(0x1E9808, 2005000, "/Library/Caches/com.apple.xbs/Sources/CoreGEM/Sources/Protobuf/Generated/GpsdProtocol.pb.cc", a4);
  sub_24539DF20();
  sub_2453EB7EC();
  sub_2453BD76C();
  operator new();
}

void sub_2454287A4(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v95);
  }

  v4 = *(a2 + 336);
  if (v4)
  {
    sub_2453B0370((a1 + 328), *(a1 + 336) + v4);
    memcpy((*(a1 + 328) + 4 * *(a1 + 336)), *(a2 + 328), 4 * *(a2 + 336));
    *(a1 + 336) += *(a2 + 336);
  }

  v5 = *(a2 + 360);
  if (v5)
  {
    sub_2453B0370((a1 + 352), *(a1 + 360) + v5);
    memcpy((*(a1 + 352) + 4 * *(a1 + 360)), *(a2 + 352), 4 * *(a2 + 360));
    *(a1 + 360) += *(a2 + 360);
  }

  v6 = *(a2 + 396);
  if (!v6)
  {
    goto LABEL_46;
  }

  if (v6)
  {
    v7 = *(a2 + 8);
    *(a1 + 396) |= 1u;
    *(a1 + 8) = v7;
    v6 = *(a2 + 396);
    if ((v6 & 2) == 0)
    {
LABEL_10:
      if ((v6 & 4) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_19;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_10;
  }

  v8 = *(a2 + 16);
  *(a1 + 396) |= 2u;
  *(a1 + 16) = v8;
  v6 = *(a2 + 396);
  if ((v6 & 4) == 0)
  {
LABEL_11:
    if ((v6 & 8) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_21;
  }

LABEL_19:
  v9 = *(a2 + 20);
  if (!sub_24539CC90(v9))
  {
    __assert_rtn("set_type", "GpsdProtocol.pb.h", 5792, "::CoreGem::proto::gpsd::Request_Type_IsValid(value)");
  }

  *(a1 + 396) |= 4u;
  *(a1 + 20) = v9;
  v6 = *(a2 + 396);
  if ((v6 & 8) == 0)
  {
LABEL_12:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_26;
  }

LABEL_21:
  *(a1 + 396) |= 8u;
  v10 = *(a1 + 24);
  if (!v10)
  {
    operator new();
  }

  v11 = *(a2 + 24);
  if (!v11)
  {
    sub_24539DA30();
    v11 = *(qword_2813CEEB8 + 24);
  }

  sub_24542BD3C(v10, v11);
  v6 = *(a2 + 396);
  if ((v6 & 0x10) == 0)
  {
LABEL_13:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_14;
    }

LABEL_31:
    *(a1 + 396) |= 0x20u;
    v14 = *(a1 + 40);
    if (!v14)
    {
      operator new();
    }

    v15 = *(a2 + 40);
    if (!v15)
    {
      sub_24539DA30();
      v15 = *(qword_2813CEEB8 + 40);
    }

    sub_24542BFCC(v14, v15);
    v6 = *(a2 + 396);
    if ((v6 & 0x40) == 0)
    {
LABEL_15:
      if ((v6 & 0x80) == 0)
      {
        goto LABEL_46;
      }

      goto LABEL_41;
    }

    goto LABEL_36;
  }

LABEL_26:
  *(a1 + 396) |= 0x10u;
  v12 = *(a1 + 32);
  if (!v12)
  {
    operator new();
  }

  v13 = *(a2 + 32);
  if (!v13)
  {
    sub_24539DA30();
    v13 = *(qword_2813CEEB8 + 32);
  }

  sub_24542BEE0(v12, v13);
  v6 = *(a2 + 396);
  if ((v6 & 0x20) != 0)
  {
    goto LABEL_31;
  }

LABEL_14:
  if ((v6 & 0x40) == 0)
  {
    goto LABEL_15;
  }

LABEL_36:
  *(a1 + 396) |= 0x40u;
  v16 = *(a1 + 48);
  if (!v16)
  {
    operator new();
  }

  v17 = *(a2 + 48);
  if (!v17)
  {
    sub_24539DA30();
    v17 = *(qword_2813CEEB8 + 48);
  }

  sub_24542C1A0(v16, v17);
  v6 = *(a2 + 396);
  if ((v6 & 0x80) != 0)
  {
LABEL_41:
    *(a1 + 396) |= 0x80u;
    v18 = *(a1 + 56);
    if (!v18)
    {
      operator new();
    }

    v19 = *(a2 + 56);
    if (!v19)
    {
      sub_24539DA30();
      v19 = *(qword_2813CEEB8 + 56);
    }

    sub_24542C234(v18, v19);
    v6 = *(a2 + 396);
  }

LABEL_46:
  if ((v6 & 0xFF00) == 0)
  {
    goto LABEL_96;
  }

  if ((v6 & 0x100) != 0)
  {
    *(a1 + 396) |= 0x100u;
    v20 = *(a1 + 64);
    if (!v20)
    {
      operator new();
    }

    v21 = *(a2 + 64);
    if (!v21)
    {
      sub_24539DA30();
      v21 = *(qword_2813CEEB8 + 64);
    }

    sub_24542C2C8(v20, v21);
    v6 = *(a2 + 396);
    if ((v6 & 0x200) == 0)
    {
LABEL_49:
      if ((v6 & 0x400) == 0)
      {
        goto LABEL_50;
      }

      goto LABEL_66;
    }
  }

  else if ((v6 & 0x200) == 0)
  {
    goto LABEL_49;
  }

  *(a1 + 396) |= 0x200u;
  v22 = *(a1 + 72);
  if (!v22)
  {
    operator new();
  }

  v23 = *(a2 + 72);
  if (!v23)
  {
    sub_24539DA30();
    v23 = *(qword_2813CEEB8 + 72);
  }

  sub_24542C3B4(v22, v23);
  v6 = *(a2 + 396);
  if ((v6 & 0x400) == 0)
  {
LABEL_50:
    if ((v6 & 0x800) == 0)
    {
      goto LABEL_51;
    }

    goto LABEL_71;
  }

LABEL_66:
  *(a1 + 396) |= 0x400u;
  v24 = *(a1 + 80);
  if (!v24)
  {
    operator new();
  }

  v25 = *(a2 + 80);
  if (!v25)
  {
    sub_24539DA30();
    v25 = *(qword_2813CEEB8 + 80);
  }

  sub_24542C5EC(v24, v25);
  v6 = *(a2 + 396);
  if ((v6 & 0x800) == 0)
  {
LABEL_51:
    if ((v6 & 0x1000) == 0)
    {
      goto LABEL_52;
    }

    goto LABEL_76;
  }

LABEL_71:
  *(a1 + 396) |= 0x800u;
  v26 = *(a1 + 88);
  if (!v26)
  {
    operator new();
  }

  v27 = *(a2 + 88);
  if (!v27)
  {
    sub_24539DA30();
    v27 = *(qword_2813CEEB8 + 88);
  }

  sub_24542C764(v26, v27);
  v6 = *(a2 + 396);
  if ((v6 & 0x1000) == 0)
  {
LABEL_52:
    if ((v6 & 0x2000) == 0)
    {
      goto LABEL_53;
    }

    goto LABEL_81;
  }

LABEL_76:
  *(a1 + 396) |= 0x1000u;
  v28 = *(a1 + 96);
  if (!v28)
  {
    operator new();
  }

  v29 = *(a2 + 96);
  if (!v29)
  {
    sub_24539DA30();
    v29 = *(qword_2813CEEB8 + 96);
  }

  sub_24542C854(v28, v29);
  v6 = *(a2 + 396);
  if ((v6 & 0x2000) == 0)
  {
LABEL_53:
    if ((v6 & 0x4000) == 0)
    {
      goto LABEL_54;
    }

    goto LABEL_86;
  }

LABEL_81:
  *(a1 + 396) |= 0x2000u;
  v30 = *(a1 + 104);
  if (!v30)
  {
    operator new();
  }

  v31 = *(a2 + 104);
  if (!v31)
  {
    sub_24539DA30();
    v31 = *(qword_2813CEEB8 + 104);
  }

  sub_24542C928(v30, v31);
  v6 = *(a2 + 396);
  if ((v6 & 0x4000) == 0)
  {
LABEL_54:
    if ((v6 & 0x8000) == 0)
    {
      goto LABEL_96;
    }

    goto LABEL_91;
  }

LABEL_86:
  *(a1 + 396) |= 0x4000u;
  v32 = *(a1 + 112);
  if (!v32)
  {
    operator new();
  }

  v33 = *(a2 + 112);
  if (!v33)
  {
    sub_24539DA30();
    v33 = *(qword_2813CEEB8 + 112);
  }

  sub_24542CA34(v32, v33);
  v6 = *(a2 + 396);
  if ((v6 & 0x8000) != 0)
  {
LABEL_91:
    *(a1 + 396) |= 0x8000u;
    v34 = *(a1 + 120);
    if (!v34)
    {
      operator new();
    }

    v35 = *(a2 + 120);
    if (!v35)
    {
      sub_24539DA30();
      v35 = *(qword_2813CEEB8 + 120);
    }

    sub_24542CB20(v34, v35);
    v6 = *(a2 + 396);
  }

LABEL_96:
  if ((v6 & 0xFF0000) == 0)
  {
    goto LABEL_146;
  }

  if ((v6 & 0x10000) != 0)
  {
    *(a1 + 396) |= 0x10000u;
    v36 = *(a1 + 128);
    if (!v36)
    {
      operator new();
    }

    v37 = *(a2 + 128);
    if (!v37)
    {
      sub_24539DA30();
      v37 = *(qword_2813CEEB8 + 128);
    }

    sub_24542CC50(v36, v37);
    v6 = *(a2 + 396);
    if ((v6 & 0x20000) == 0)
    {
LABEL_99:
      if ((v6 & 0x40000) == 0)
      {
        goto LABEL_100;
      }

      goto LABEL_116;
    }
  }

  else if ((v6 & 0x20000) == 0)
  {
    goto LABEL_99;
  }

  *(a1 + 396) |= 0x20000u;
  v38 = *(a1 + 136);
  if (!v38)
  {
    operator new();
  }

  v39 = *(a2 + 136);
  if (!v39)
  {
    sub_24539DA30();
    v39 = *(qword_2813CEEB8 + 136);
  }

  sub_24542CD30(v38, v39);
  v6 = *(a2 + 396);
  if ((v6 & 0x40000) == 0)
  {
LABEL_100:
    if ((v6 & 0x80000) == 0)
    {
      goto LABEL_101;
    }

    goto LABEL_121;
  }

LABEL_116:
  *(a1 + 396) |= 0x40000u;
  v40 = *(a1 + 144);
  if (!v40)
  {
    operator new();
  }

  v41 = *(a2 + 144);
  if (!v41)
  {
    sub_24539DA30();
    v41 = *(qword_2813CEEB8 + 144);
  }

  sub_24542CF04(v40, v41);
  v6 = *(a2 + 396);
  if ((v6 & 0x80000) == 0)
  {
LABEL_101:
    if ((v6 & 0x100000) == 0)
    {
      goto LABEL_102;
    }

    goto LABEL_126;
  }

LABEL_121:
  *(a1 + 396) |= 0x80000u;
  v42 = *(a1 + 152);
  if (!v42)
  {
    operator new();
  }

  v43 = *(a2 + 152);
  if (!v43)
  {
    sub_24539DA30();
    v43 = *(qword_2813CEEB8 + 152);
  }

  sub_24542CFA8(v42, v43);
  v6 = *(a2 + 396);
  if ((v6 & 0x100000) == 0)
  {
LABEL_102:
    if ((v6 & 0x200000) == 0)
    {
      goto LABEL_103;
    }

    goto LABEL_131;
  }

LABEL_126:
  *(a1 + 396) |= 0x100000u;
  v44 = *(a1 + 160);
  if (!v44)
  {
    operator new();
  }

  v45 = *(a2 + 160);
  if (!v45)
  {
    sub_24539DA30();
    v45 = *(qword_2813CEEB8 + 160);
  }

  sub_24542D0F4(v44, v45);
  v6 = *(a2 + 396);
  if ((v6 & 0x200000) == 0)
  {
LABEL_103:
    if ((v6 & 0x400000) == 0)
    {
      goto LABEL_104;
    }

    goto LABEL_136;
  }

LABEL_131:
  *(a1 + 396) |= 0x200000u;
  v46 = *(a1 + 168);
  if (!v46)
  {
    operator new();
  }

  v47 = *(a2 + 168);
  if (!v47)
  {
    sub_24539DA30();
    v47 = *(qword_2813CEEB8 + 168);
  }

  sub_24542D198(v46, v47);
  v6 = *(a2 + 396);
  if ((v6 & 0x400000) == 0)
  {
LABEL_104:
    if ((v6 & 0x800000) == 0)
    {
      goto LABEL_146;
    }

    goto LABEL_141;
  }

LABEL_136:
  *(a1 + 396) |= 0x400000u;
  v48 = *(a1 + 176);
  if (!v48)
  {
    operator new();
  }

  v49 = *(a2 + 176);
  if (!v49)
  {
    sub_24539DA30();
    v49 = *(qword_2813CEEB8 + 176);
  }

  sub_24542D25C(v48, v49);
  v6 = *(a2 + 396);
  if ((v6 & 0x800000) != 0)
  {
LABEL_141:
    *(a1 + 396) |= 0x800000u;
    v50 = *(a1 + 184);
    if (!v50)
    {
      operator new();
    }

    v51 = *(a2 + 184);
    if (!v51)
    {
      sub_24539DA30();
      v51 = *(qword_2813CEEB8 + 184);
    }

    sub_24542D320(v50, v51);
    v6 = *(a2 + 396);
  }

LABEL_146:
  if (!HIBYTE(v6))
  {
    goto LABEL_196;
  }

  if ((v6 & 0x1000000) != 0)
  {
    *(a1 + 396) |= 0x1000000u;
    v52 = *(a1 + 192);
    if (!v52)
    {
      operator new();
    }

    v53 = *(a2 + 192);
    if (!v53)
    {
      sub_24539DA30();
      v53 = *(qword_2813CEEB8 + 192);
    }

    sub_24542D3C4(v52, v53);
    v6 = *(a2 + 396);
    if ((v6 & 0x2000000) == 0)
    {
LABEL_149:
      if ((v6 & 0x4000000) == 0)
      {
        goto LABEL_150;
      }

      goto LABEL_166;
    }
  }

  else if ((v6 & 0x2000000) == 0)
  {
    goto LABEL_149;
  }

  *(a1 + 396) |= 0x2000000u;
  v54 = *(a1 + 200);
  if (!v54)
  {
    operator new();
  }

  v55 = *(a2 + 200);
  if (!v55)
  {
    sub_24539DA30();
    v55 = *(qword_2813CEEB8 + 200);
  }

  sub_24542D4A4(v54, v55);
  v6 = *(a2 + 396);
  if ((v6 & 0x4000000) == 0)
  {
LABEL_150:
    if ((v6 & 0x8000000) == 0)
    {
      goto LABEL_151;
    }

    goto LABEL_171;
  }

LABEL_166:
  *(a1 + 396) |= 0x4000000u;
  v56 = *(a1 + 208);
  if (!v56)
  {
    operator new();
  }

  v57 = *(a2 + 208);
  if (!v57)
  {
    sub_24539DA30();
    v57 = *(qword_2813CEEB8 + 208);
  }

  sub_24542D584(v56, v57);
  v6 = *(a2 + 396);
  if ((v6 & 0x8000000) == 0)
  {
LABEL_151:
    if ((v6 & 0x10000000) == 0)
    {
      goto LABEL_152;
    }

    goto LABEL_176;
  }

LABEL_171:
  *(a1 + 396) |= 0x8000000u;
  v58 = *(a1 + 216);
  if (!v58)
  {
    operator new();
  }

  v59 = *(a2 + 216);
  if (!v59)
  {
    sub_24539DA30();
    v59 = *(qword_2813CEEB8 + 216);
  }

  sub_24542D8C4(v58, v59);
  v6 = *(a2 + 396);
  if ((v6 & 0x10000000) == 0)
  {
LABEL_152:
    if ((v6 & 0x20000000) == 0)
    {
      goto LABEL_153;
    }

    goto LABEL_181;
  }

LABEL_176:
  *(a1 + 396) |= 0x10000000u;
  v60 = *(a1 + 224);
  if (!v60)
  {
    operator new();
  }

  v61 = *(a2 + 224);
  if (!v61)
  {
    sub_24539DA30();
    v61 = *(qword_2813CEEB8 + 224);
  }

  sub_24542D9F0(v60, v61);
  v6 = *(a2 + 396);
  if ((v6 & 0x20000000) == 0)
  {
LABEL_153:
    if ((v6 & 0x40000000) == 0)
    {
      goto LABEL_154;
    }

    goto LABEL_186;
  }

LABEL_181:
  *(a1 + 396) |= 0x20000000u;
  v62 = *(a1 + 232);
  if (!v62)
  {
    operator new();
  }

  v63 = *(a2 + 232);
  if (!v63)
  {
    sub_24539DA30();
    v63 = *(qword_2813CEEB8 + 232);
  }

  sub_24542DAB4(v62, v63);
  v6 = *(a2 + 396);
  if ((v6 & 0x40000000) == 0)
  {
LABEL_154:
    if ((v6 & 0x80000000) == 0)
    {
      goto LABEL_196;
    }

    goto LABEL_191;
  }

LABEL_186:
  *(a1 + 396) |= 0x40000000u;
  v64 = *(a1 + 240);
  if (!v64)
  {
    operator new();
  }

  v65 = *(a2 + 240);
  if (!v65)
  {
    sub_24539DA30();
    v65 = *(qword_2813CEEB8 + 240);
  }

  sub_24542DB78(v64, v65);
  if ((*(a2 + 396) & 0x80000000) != 0)
  {
LABEL_191:
    *(a1 + 396) |= 0x80000000;
    v66 = *(a1 + 248);
    if (!v66)
    {
      operator new();
    }

    v67 = *(a2 + 248);
    if (!v67)
    {
      sub_24539DA30();
      v67 = *(qword_2813CEEB8 + 248);
    }

    sub_24541F03C(v66, v67);
  }

LABEL_196:
  v68 = *(a2 + 400);
  if (!v68)
  {
    goto LABEL_240;
  }

  if (v68)
  {
    v69 = *(a2 + 256);
    *(a1 + 400) |= 1u;
    v70 = *(a1 + 256);
    if (v70 == MEMORY[0x277D82C30])
    {
      operator new();
    }

    std::string::operator=(v70, v69);
    v68 = *(a2 + 400);
    if ((v68 & 2) == 0)
    {
LABEL_199:
      if ((v68 & 4) == 0)
      {
        goto LABEL_200;
      }

      goto LABEL_214;
    }
  }

  else if ((v68 & 2) == 0)
  {
    goto LABEL_199;
  }

  *(a1 + 400) |= 2u;
  v71 = *(a1 + 264);
  if (!v71)
  {
    operator new();
  }

  v72 = *(a2 + 264);
  if (!v72)
  {
    sub_24539DA30();
    v72 = *(qword_2813CEEB8 + 264);
  }

  sub_2453F86F0(v71, v72);
  v68 = *(a2 + 400);
  if ((v68 & 4) == 0)
  {
LABEL_200:
    if ((v68 & 8) == 0)
    {
      goto LABEL_201;
    }

    goto LABEL_215;
  }

LABEL_214:
  v73 = *(a2 + 304);
  *(a1 + 400) |= 4u;
  *(a1 + 304) = v73;
  v68 = *(a2 + 400);
  if ((v68 & 8) == 0)
  {
LABEL_201:
    if ((v68 & 0x10) == 0)
    {
      goto LABEL_202;
    }

    goto LABEL_220;
  }

LABEL_215:
  *(a1 + 400) |= 8u;
  v74 = *(a1 + 272);
  if (!v74)
  {
    operator new();
  }

  v75 = *(a2 + 272);
  if (!v75)
  {
    sub_24539DA30();
    v75 = *(qword_2813CEEB8 + 272);
  }

  sub_245419784(v74, v75);
  v68 = *(a2 + 400);
  if ((v68 & 0x10) == 0)
  {
LABEL_202:
    if ((v68 & 0x20) == 0)
    {
      goto LABEL_203;
    }

    goto LABEL_225;
  }

LABEL_220:
  *(a1 + 400) |= 0x10u;
  v76 = *(a1 + 280);
  if (!v76)
  {
    operator new();
  }

  v77 = *(a2 + 280);
  if (!v77)
  {
    sub_24539DA30();
    v77 = *(qword_2813CEEB8 + 280);
  }

  sub_24541A664(v76, v77);
  v68 = *(a2 + 400);
  if ((v68 & 0x20) == 0)
  {
LABEL_203:
    if ((v68 & 0x40) == 0)
    {
      goto LABEL_204;
    }

    goto LABEL_230;
  }

LABEL_225:
  *(a1 + 400) |= 0x20u;
  v78 = *(a1 + 288);
  if (!v78)
  {
    operator new();
  }

  v79 = *(a2 + 288);
  if (!v79)
  {
    sub_24539DA30();
    v79 = *(qword_2813CEEB8 + 288);
  }

  sub_24541D870(v78, v79);
  v68 = *(a2 + 400);
  if ((v68 & 0x40) == 0)
  {
LABEL_204:
    if ((v68 & 0x80) == 0)
    {
      goto LABEL_240;
    }

    goto LABEL_235;
  }

LABEL_230:
  *(a1 + 400) |= 0x40u;
  v80 = *(a1 + 296);
  if (!v80)
  {
    operator new();
  }

  v81 = *(a2 + 296);
  if (!v81)
  {
    sub_24539DA30();
    v81 = *(qword_2813CEEB8 + 296);
  }

  sub_2454209EC(v80, v81);
  v68 = *(a2 + 400);
  if ((v68 & 0x80) != 0)
  {
LABEL_235:
    *(a1 + 400) |= 0x80u;
    v82 = *(a1 + 312);
    if (!v82)
    {
      operator new();
    }

    v83 = *(a2 + 312);
    if (!v83)
    {
      sub_24539DA30();
      v83 = *(qword_2813CEEB8 + 312);
    }

    sub_245421D94(v82, v83);
    v68 = *(a2 + 400);
  }

LABEL_240:
  if ((v68 & 0xFF00) == 0)
  {
    goto LABEL_247;
  }

  if ((v68 & 0x100) != 0)
  {
    *(a1 + 400) |= 0x100u;
    v84 = *(a1 + 320);
    if (!v84)
    {
      operator new();
    }

    v85 = *(a2 + 320);
    if (!v85)
    {
      sub_24539DA30();
      v85 = *(qword_2813CEEB8 + 320);
    }

    sub_24541E688(v84, v85);
    v68 = *(a2 + 400);
    if ((v68 & 0x400) == 0)
    {
LABEL_243:
      if ((v68 & 0x800) == 0)
      {
        goto LABEL_244;
      }

      goto LABEL_259;
    }
  }

  else if ((v68 & 0x400) == 0)
  {
    goto LABEL_243;
  }

  *(a1 + 400) |= 0x400u;
  v86 = *(a1 + 344);
  if (!v86)
  {
    operator new();
  }

  v87 = *(a2 + 344);
  if (!v87)
  {
    sub_24539DA30();
    v87 = *(qword_2813CEEB8 + 344);
  }

  sub_2453EF82C(v86, v87);
  v68 = *(a2 + 400);
  if ((v68 & 0x800) == 0)
  {
LABEL_244:
    if ((v68 & 0x2000) == 0)
    {
      goto LABEL_245;
    }

    goto LABEL_260;
  }

LABEL_259:
  v88 = *(a2 + 308);
  *(a1 + 400) |= 0x800u;
  *(a1 + 308) = v88;
  v68 = *(a2 + 400);
  if ((v68 & 0x2000) == 0)
  {
LABEL_245:
    if ((v68 & 0x4000) == 0)
    {
      goto LABEL_246;
    }

    goto LABEL_261;
  }

LABEL_260:
  v89 = *(a2 + 368);
  *(a1 + 400) |= 0x2000u;
  *(a1 + 368) = v89;
  v68 = *(a2 + 400);
  if ((v68 & 0x4000) == 0)
  {
LABEL_246:
    if ((v68 & 0x8000) == 0)
    {
      goto LABEL_247;
    }

    goto LABEL_262;
  }

LABEL_261:
  v90 = *(a2 + 372);
  *(a1 + 400) |= 0x4000u;
  *(a1 + 372) = v90;
  v68 = *(a2 + 400);
  if ((v68 & 0x8000) == 0)
  {
LABEL_247:
    if ((v68 & 0x10000) == 0)
    {
      return;
    }

    goto LABEL_267;
  }

LABEL_262:
  *(a1 + 400) |= 0x8000u;
  v91 = *(a1 + 376);
  if (!v91)
  {
    operator new();
  }

  v92 = *(a2 + 376);
  if (!v92)
  {
    sub_24539DA30();
    v92 = *(qword_2813CEEB8 + 376);
  }

  sub_2453F4688(v91, v92);
  if ((*(a2 + 400) & 0x10000) != 0)
  {
LABEL_267:
    *(a1 + 400) |= 0x10000u;
    v93 = *(a1 + 384);
    if (!v93)
    {
      operator new();
    }

    v94 = *(a2 + 384);
    if (!v94)
    {
      sub_24539DA30();
      v94 = *(qword_2813CEEB8 + 384);
    }

    sub_2453F11D8(v93, v94);
  }
}

void sub_245429F44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_24542A030(uint64_t result)
{
  if (*(result + 36))
  {
    if (*(result + 36))
    {
      v1 = *(result + 8);
      if (v1)
      {
        v2 = *(v1 + 96);
        if (v2)
        {
          *(v1 + 56) = 0u;
          *(v1 + 40) = 0u;
          *(v1 + 24) = 0u;
          *(v1 + 8) = 0u;
        }

        if ((v2 & 0xFF00) != 0)
        {
          *(v1 + 72) = 0;
          *(v1 + 80) = 0;
          *(v1 + 88) = 0;
        }

        *(v1 + 96) = 0;
      }
    }

    *(result + 16) = 0;
    *(result + 20) = 0;
    *(result + 24) = 0;
  }

  *(result + 36) = 0;
  return result;
}

uint64_t sub_24542A08C(uint64_t result)
{
  if (*(result + 36))
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
  }

  *(result + 36) = 0;
  return result;
}

uint64_t sub_24542A0A4(uint64_t a1)
{
  result = sub_2453DC6D0(a1 + 8);
  *(a1 + 36) = 0;
  return result;
}

uint64_t sub_24542A0D0(uint64_t a1)
{
  result = sub_2453DC6D0(a1 + 8);
  *(a1 + 36) = 0;
  return result;
}

uint64_t sub_24542A0FC(uint64_t a1)
{
  result = sub_2453DC6D0(a1 + 8);
  *(a1 + 36) = 0;
  return result;
}

uint64_t sub_24542A128(uint64_t result)
{
  if (*(result + 36))
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
  }

  *(result + 36) = 0;
  return result;
}

uint64_t sub_24542A140(uint64_t result)
{
  v1 = *(result + 76);
  if (v1)
  {
    *(result + 49) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
  }

  if ((v1 & 0xFF00) != 0)
  {
    *(result + 69) = 0;
    *(result + 65) = 0;
  }

  *(result + 76) = 0;
  return result;
}

uint64_t sub_24542A178(uint64_t result)
{
  if (*(result + 32))
  {
    *(result + 8) = 0;
    *(result + 16) = 0x400000000;
    *(result + 24) = 0;
  }

  *(result + 32) = 0;
  return result;
}

uint64_t sub_24542A19C(uint64_t result)
{
  if (*(result + 24))
  {
    *(result + 8) = 0;
    *(result + 16) = 4;
  }

  *(result + 24) = 0;
  return result;
}

uint64_t sub_24542A1B8(uint64_t result)
{
  if (*(result + 16))
  {
    *(result + 8) = 15;
  }

  *(result + 16) = 0;
  return result;
}

uint64_t sub_24542A1D0(uint64_t result)
{
  if (*(result + 44))
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
  }

  *(result + 44) = 0;
  return result;
}

uint64_t sub_24542A1EC(uint64_t result)
{
  if (*(result + 36))
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
  }

  *(result + 36) = 0;
  return result;
}

uint64_t sub_24542A204(uint64_t result)
{
  if (*(result + 24))
  {
    if (*(result + 24))
    {
      v1 = *(result + 8);
      if (v1 != MEMORY[0x277D82C30])
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

    *(result + 16) = 0;
  }

  *(result + 24) = 0;
  return result;
}

uint64_t sub_24542A250(uint64_t result)
{
  if (*(result + 20))
  {
    v1 = *(result + 8);
    if (v1 != MEMORY[0x277D82C30])
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

  *(result + 20) = 0;
  return result;
}

uint64_t sub_24542A294(uint64_t a1)
{
  result = sub_2453DC6D0(a1 + 8);
  *(a1 + 36) = 0;
  return result;
}

uint64_t sub_24542A2C0(uint64_t result)
{
  if (*(result + 20))
  {
    *(result + 8) = 0;
  }

  *(result + 20) = 0;
  return result;
}

uint64_t sub_24542A2D4(uint64_t result)
{
  if (*(result + 20))
  {
    *(result + 8) = 1;
    *(result + 9) = 0;
    *(result + 13) = 0;
  }

  *(result + 20) = 0;
  return result;
}

uint64_t sub_24542A2F4(uint64_t result)
{
  if (*(result + 20))
  {
    *(result + 8) = 0;
  }

  *(result + 20) = 0;
  return result;
}

uint64_t sub_24542A308(uint64_t result)
{
  if (*(result + 20))
  {
    *(result + 8) = 0;
    *(result + 12) = 0;
  }

  *(result + 20) = 0;
  return result;
}

uint64_t sub_24542A320(uint64_t result)
{
  if (*(result + 20))
  {
    *(result + 8) = 0;
  }

  *(result + 20) = 0;
  return result;
}

uint64_t sub_24542A334(uint64_t result)
{
  if (*(result + 16))
  {
    *(result + 8) = 0;
  }

  *(result + 16) = 0;
  return result;
}

uint64_t sub_24542A348(uint64_t result)
{
  if (*(result + 20))
  {
    v1 = *(result + 8);
    if (v1 != MEMORY[0x277D82C30])
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

  *(result + 20) = 0;
  return result;
}

uint64_t sub_24542A38C(uint64_t result)
{
  if (*(result + 20))
  {
    v1 = *(result + 8);
    if (v1 != MEMORY[0x277D82C30])
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

  *(result + 20) = 0;
  return result;
}

uint64_t sub_24542A3D0(uint64_t result)
{
  LOBYTE(v1) = *(result + 56);
  if (v1)
  {
    *(result + 8) = 0;
    *(result + 12) = 0;
    *(result + 48) = 0;
    if ((v1 & 8) != 0)
    {
      v2 = *(result + 16);
      if (v2)
      {
        v3 = *(v2 + 56);
        if (v3)
        {
          *(v2 + 36) = 0;
          *(v2 + 16) = 0;
          *(v2 + 24) = 0;
          *(v2 + 8) = 0;
          *(v2 + 32) = 0;
        }

        if ((v3 & 0xFF00) != 0)
        {
          *(v2 + 40) = 0;
          *(v2 + 48) = 0;
        }

        *(v2 + 56) = 0;
        v1 = *(result + 56);
      }
    }

    if ((v1 & 0x10) != 0)
    {
      v4 = *(result + 24);
      if (v4)
      {
        if (*(v4 + 52))
        {
          *(v4 + 8) = 0;
        }

        *(v4 + 24) = 0;
        *(v4 + 40) = 0;
        *(v4 + 52) = 0;
        v1 = *(result + 56);
      }
    }

    if ((v1 & 0x20) != 0)
    {
      v5 = *(result + 32);
      if (v5)
      {
        if ((*(v5 + 36) & 0x1FE) != 0)
        {
          *(v5 + 24) = 0;
        }

        *(v5 + 16) = 0;
        *(v5 + 36) = 0;
        v1 = *(result + 56);
      }
    }

    if ((v1 & 0x40) != 0)
    {
      v6 = *(result + 40);
      if (v6)
      {
        if (*(v6 + 20))
        {
          *(v6 + 8) = 0;
        }

        *(v6 + 20) = 0;
      }
    }
  }

  *(result + 56) = 0;
  return result;
}

uint64_t sub_24542A498(uint64_t result)
{
  if (*(result + 24))
  {
    *(result + 16) = 0;
    *(result + 8) = 0;
  }

  *(result + 24) = 0;
  return result;
}

uint64_t sub_24542A4B0(uint64_t result)
{
  if (*(result + 24))
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
  }

  *(result + 24) = 0;
  return result;
}

uint64_t sub_24542A4C8(uint64_t result)
{
  if (*(result + 16))
  {
    *(result + 8) = 0;
  }

  *(result + 16) = 0;
  return result;
}

uint64_t sub_24542A4DC(uint64_t result)
{
  if (*(result + 20))
  {
    v1 = *(result + 8);
    if (v1 != MEMORY[0x277D82C30])
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

  *(result + 20) = 0;
  return result;
}

uint64_t sub_24542A520(uint64_t result, const wireless_diagnostics::google::protobuf::MessageLite *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = result;
  v6 = *(result + 396);
  if (v6)
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(1, *(result + 8), a2, a4);
    v6 = *(v5 + 396);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_36;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(2, *(v5 + 16), a2, a4);
  v6 = *(v5 + 396);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_37;
  }

LABEL_36:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(3, *(v5 + 20), a2, a4);
  v6 = *(v5 + 396);
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_40;
  }

LABEL_37:
  v7 = *(v5 + 24);
  if (!v7)
  {
    sub_24539DA30();
    v7 = *(qword_2813CEEB8 + 24);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(4, v7, a2, a4);
  v6 = *(v5 + 396);
  if ((v6 & 0x10) == 0)
  {
LABEL_6:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_43;
  }

LABEL_40:
  v8 = *(v5 + 32);
  if (!v8)
  {
    sub_24539DA30();
    v8 = *(qword_2813CEEB8 + 32);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(5, v8, a2, a4);
  v6 = *(v5 + 396);
  if ((v6 & 0x20) == 0)
  {
LABEL_7:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_46;
  }

LABEL_43:
  v9 = *(v5 + 40);
  if (!v9)
  {
    sub_24539DA30();
    v9 = *(qword_2813CEEB8 + 40);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(6, v9, a2, a4);
  v6 = *(v5 + 396);
  if ((v6 & 0x40) == 0)
  {
LABEL_8:
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_49;
  }

LABEL_46:
  v10 = *(v5 + 48);
  if (!v10)
  {
    sub_24539DA30();
    v10 = *(qword_2813CEEB8 + 48);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(7, v10, a2, a4);
  v6 = *(v5 + 396);
  if ((v6 & 0x80) == 0)
  {
LABEL_9:
    if ((v6 & 0x100) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_52;
  }

LABEL_49:
  v11 = *(v5 + 56);
  if (!v11)
  {
    sub_24539DA30();
    v11 = *(qword_2813CEEB8 + 56);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(8, v11, a2, a4);
  v6 = *(v5 + 396);
  if ((v6 & 0x100) == 0)
  {
LABEL_10:
    if ((v6 & 0x200) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_55;
  }

LABEL_52:
  v12 = *(v5 + 64);
  if (!v12)
  {
    sub_24539DA30();
    v12 = *(qword_2813CEEB8 + 64);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(9, v12, a2, a4);
  v6 = *(v5 + 396);
  if ((v6 & 0x200) == 0)
  {
LABEL_11:
    if ((v6 & 0x400) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_58;
  }

LABEL_55:
  v13 = *(v5 + 72);
  if (!v13)
  {
    sub_24539DA30();
    v13 = *(qword_2813CEEB8 + 72);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0xA, v13, a2, a4);
  v6 = *(v5 + 396);
  if ((v6 & 0x400) == 0)
  {
LABEL_12:
    if ((v6 & 0x800) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_61;
  }

LABEL_58:
  v14 = *(v5 + 80);
  if (!v14)
  {
    sub_24539DA30();
    v14 = *(qword_2813CEEB8 + 80);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0xB, v14, a2, a4);
  v6 = *(v5 + 396);
  if ((v6 & 0x800) == 0)
  {
LABEL_13:
    if ((v6 & 0x1000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_64;
  }

LABEL_61:
  v15 = *(v5 + 88);
  if (!v15)
  {
    sub_24539DA30();
    v15 = *(qword_2813CEEB8 + 88);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0xC, v15, a2, a4);
  v6 = *(v5 + 396);
  if ((v6 & 0x1000) == 0)
  {
LABEL_14:
    if ((v6 & 0x2000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_67;
  }

LABEL_64:
  v16 = *(v5 + 96);
  if (!v16)
  {
    sub_24539DA30();
    v16 = *(qword_2813CEEB8 + 96);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0xD, v16, a2, a4);
  v6 = *(v5 + 396);
  if ((v6 & 0x2000) == 0)
  {
LABEL_15:
    if ((v6 & 0x4000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_70;
  }

LABEL_67:
  v17 = *(v5 + 104);
  if (!v17)
  {
    sub_24539DA30();
    v17 = *(qword_2813CEEB8 + 104);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0xE, v17, a2, a4);
  v6 = *(v5 + 396);
  if ((v6 & 0x4000) == 0)
  {
LABEL_16:
    if ((v6 & 0x8000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_73;
  }

LABEL_70:
  v18 = *(v5 + 112);
  if (!v18)
  {
    sub_24539DA30();
    v18 = *(qword_2813CEEB8 + 112);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0xF, v18, a2, a4);
  v6 = *(v5 + 396);
  if ((v6 & 0x8000) == 0)
  {
LABEL_17:
    if ((v6 & 0x10000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_76;
  }

LABEL_73:
  v19 = *(v5 + 120);
  if (!v19)
  {
    sub_24539DA30();
    v19 = *(qword_2813CEEB8 + 120);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x10, v19, a2, a4);
  v6 = *(v5 + 396);
  if ((v6 & 0x10000) == 0)
  {
LABEL_18:
    if ((v6 & 0x20000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_79;
  }

LABEL_76:
  v20 = *(v5 + 128);
  if (!v20)
  {
    sub_24539DA30();
    v20 = *(qword_2813CEEB8 + 128);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x11, v20, a2, a4);
  v6 = *(v5 + 396);
  if ((v6 & 0x20000) == 0)
  {
LABEL_19:
    if ((v6 & 0x40000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_82;
  }

LABEL_79:
  v21 = *(v5 + 136);
  if (!v21)
  {
    sub_24539DA30();
    v21 = *(qword_2813CEEB8 + 136);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x12, v21, a2, a4);
  v6 = *(v5 + 396);
  if ((v6 & 0x40000) == 0)
  {
LABEL_20:
    if ((v6 & 0x80000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_85;
  }

LABEL_82:
  v22 = *(v5 + 144);
  if (!v22)
  {
    sub_24539DA30();
    v22 = *(qword_2813CEEB8 + 144);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x13, v22, a2, a4);
  v6 = *(v5 + 396);
  if ((v6 & 0x80000) == 0)
  {
LABEL_21:
    if ((v6 & 0x100000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_88;
  }

LABEL_85:
  v23 = *(v5 + 152);
  if (!v23)
  {
    sub_24539DA30();
    v23 = *(qword_2813CEEB8 + 152);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x14, v23, a2, a4);
  v6 = *(v5 + 396);
  if ((v6 & 0x100000) == 0)
  {
LABEL_22:
    if ((v6 & 0x200000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_91;
  }

LABEL_88:
  v24 = *(v5 + 160);
  if (!v24)
  {
    sub_24539DA30();
    v24 = *(qword_2813CEEB8 + 160);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x15, v24, a2, a4);
  v6 = *(v5 + 396);
  if ((v6 & 0x200000) == 0)
  {
LABEL_23:
    if ((v6 & 0x400000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_94;
  }

LABEL_91:
  v25 = *(v5 + 168);
  if (!v25)
  {
    sub_24539DA30();
    v25 = *(qword_2813CEEB8 + 168);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x16, v25, a2, a4);
  v6 = *(v5 + 396);
  if ((v6 & 0x400000) == 0)
  {
LABEL_24:
    if ((v6 & 0x800000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_97;
  }

LABEL_94:
  v26 = *(v5 + 176);
  if (!v26)
  {
    sub_24539DA30();
    v26 = *(qword_2813CEEB8 + 176);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x17, v26, a2, a4);
  v6 = *(v5 + 396);
  if ((v6 & 0x800000) == 0)
  {
LABEL_25:
    if ((v6 & 0x1000000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_100;
  }

LABEL_97:
  v27 = *(v5 + 184);
  if (!v27)
  {
    sub_24539DA30();
    v27 = *(qword_2813CEEB8 + 184);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x18, v27, a2, a4);
  v6 = *(v5 + 396);
  if ((v6 & 0x1000000) == 0)
  {
LABEL_26:
    if ((v6 & 0x2000000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_103;
  }

LABEL_100:
  v28 = *(v5 + 192);
  if (!v28)
  {
    sub_24539DA30();
    v28 = *(qword_2813CEEB8 + 192);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x19, v28, a2, a4);
  v6 = *(v5 + 396);
  if ((v6 & 0x2000000) == 0)
  {
LABEL_27:
    if ((v6 & 0x4000000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_106;
  }

LABEL_103:
  v29 = *(v5 + 200);
  if (!v29)
  {
    sub_24539DA30();
    v29 = *(qword_2813CEEB8 + 200);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x1A, v29, a2, a4);
  v6 = *(v5 + 396);
  if ((v6 & 0x4000000) == 0)
  {
LABEL_28:
    if ((v6 & 0x8000000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_109;
  }

LABEL_106:
  v30 = *(v5 + 208);
  if (!v30)
  {
    sub_24539DA30();
    v30 = *(qword_2813CEEB8 + 208);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x1B, v30, a2, a4);
  v6 = *(v5 + 396);
  if ((v6 & 0x8000000) == 0)
  {
LABEL_29:
    if ((v6 & 0x10000000) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_112;
  }

LABEL_109:
  v31 = *(v5 + 216);
  if (!v31)
  {
    sub_24539DA30();
    v31 = *(qword_2813CEEB8 + 216);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x1C, v31, a2, a4);
  v6 = *(v5 + 396);
  if ((v6 & 0x10000000) == 0)
  {
LABEL_30:
    if ((v6 & 0x20000000) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_115;
  }

LABEL_112:
  v32 = *(v5 + 224);
  if (!v32)
  {
    sub_24539DA30();
    v32 = *(qword_2813CEEB8 + 224);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x1E, v32, a2, a4);
  v6 = *(v5 + 396);
  if ((v6 & 0x20000000) == 0)
  {
LABEL_31:
    if ((v6 & 0x40000000) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_118;
  }

LABEL_115:
  v33 = *(v5 + 232);
  if (!v33)
  {
    sub_24539DA30();
    v33 = *(qword_2813CEEB8 + 232);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x1F, v33, a2, a4);
  v6 = *(v5 + 396);
  if ((v6 & 0x40000000) == 0)
  {
LABEL_32:
    if ((v6 & 0x80000000) == 0)
    {
      goto LABEL_124;
    }

    goto LABEL_121;
  }

LABEL_118:
  v34 = *(v5 + 240);
  if (!v34)
  {
    sub_24539DA30();
    v34 = *(qword_2813CEEB8 + 240);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x20, v34, a2, a4);
  if ((*(v5 + 396) & 0x80000000) != 0)
  {
LABEL_121:
    v35 = *(v5 + 248);
    if (!v35)
    {
      sub_24539DA30();
      v35 = *(qword_2813CEEB8 + 248);
    }

    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x32, v35, a2, a4);
  }

LABEL_124:
  v36 = *(v5 + 400);
  if (v36)
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBytes();
    v36 = *(v5 + 400);
    if ((v36 & 2) == 0)
    {
LABEL_126:
      if ((v36 & 4) == 0)
      {
        goto LABEL_127;
      }

      goto LABEL_138;
    }
  }

  else if ((v36 & 2) == 0)
  {
    goto LABEL_126;
  }

  v37 = *(v5 + 264);
  if (!v37)
  {
    sub_24539DA30();
    v37 = *(qword_2813CEEB8 + 264);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x3C, v37, a2, a4);
  v36 = *(v5 + 400);
  if ((v36 & 4) == 0)
  {
LABEL_127:
    if ((v36 & 8) == 0)
    {
      goto LABEL_128;
    }

    goto LABEL_139;
  }

LABEL_138:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x3D, *(v5 + 304), a2, a4);
  v36 = *(v5 + 400);
  if ((v36 & 8) == 0)
  {
LABEL_128:
    if ((v36 & 0x10) == 0)
    {
      goto LABEL_129;
    }

    goto LABEL_142;
  }

LABEL_139:
  v38 = *(v5 + 272);
  if (!v38)
  {
    sub_24539DA30();
    v38 = *(qword_2813CEEB8 + 272);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x3E, v38, a2, a4);
  v36 = *(v5 + 400);
  if ((v36 & 0x10) == 0)
  {
LABEL_129:
    if ((v36 & 0x20) == 0)
    {
      goto LABEL_130;
    }

    goto LABEL_145;
  }

LABEL_142:
  v39 = *(v5 + 280);
  if (!v39)
  {
    sub_24539DA30();
    v39 = *(qword_2813CEEB8 + 280);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x3F, v39, a2, a4);
  v36 = *(v5 + 400);
  if ((v36 & 0x20) == 0)
  {
LABEL_130:
    if ((v36 & 0x40) == 0)
    {
      goto LABEL_131;
    }

    goto LABEL_148;
  }

LABEL_145:
  v40 = *(v5 + 288);
  if (!v40)
  {
    sub_24539DA30();
    v40 = *(qword_2813CEEB8 + 288);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x40, v40, a2, a4);
  v36 = *(v5 + 400);
  if ((v36 & 0x40) == 0)
  {
LABEL_131:
    if ((v36 & 0x80) == 0)
    {
      goto LABEL_132;
    }

    goto LABEL_151;
  }

LABEL_148:
  v41 = *(v5 + 296);
  if (!v41)
  {
    sub_24539DA30();
    v41 = *(qword_2813CEEB8 + 296);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x41, v41, a2, a4);
  v36 = *(v5 + 400);
  if ((v36 & 0x80) == 0)
  {
LABEL_132:
    if ((v36 & 0x100) == 0)
    {
      goto LABEL_157;
    }

    goto LABEL_154;
  }

LABEL_151:
  v42 = *(v5 + 312);
  if (!v42)
  {
    sub_24539DA30();
    v42 = *(qword_2813CEEB8 + 312);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x42, v42, a2, a4);
  if ((*(v5 + 400) & 0x100) != 0)
  {
LABEL_154:
    v43 = *(v5 + 320);
    if (!v43)
    {
      sub_24539DA30();
      v43 = *(qword_2813CEEB8 + 320);
    }

    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x43, v43, a2, a4);
  }

LABEL_157:
  if (*(v5 + 336) >= 1)
  {
    v44 = 0;
    do
    {
      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x46, *(*(v5 + 328) + 4 * v44++), a2, a4);
    }

    while (v44 < *(v5 + 336));
  }

  v45 = *(v5 + 400);
  if ((v45 & 0x400) != 0)
  {
    v46 = *(v5 + 344);
    if (!v46)
    {
      sub_24539DA30();
      v46 = *(qword_2813CEEB8 + 344);
    }

    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x47, v46, a2, a4);
    v45 = *(v5 + 400);
  }

  if ((v45 & 0x800) != 0)
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x48, *(v5 + 308), a2, a4);
  }

  if (*(v5 + 360) >= 1)
  {
    v47 = 0;
    do
    {
      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x49, *(*(v5 + 352) + 4 * v47++), a2, a4);
    }

    while (v47 < *(v5 + 360));
  }

  v48 = *(v5 + 400);
  if ((v48 & 0x2000) != 0)
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(0x4A, *(v5 + 368), a2, a4);
    v48 = *(v5 + 400);
    if ((v48 & 0x4000) == 0)
    {
LABEL_171:
      if ((v48 & 0x8000) == 0)
      {
        goto LABEL_172;
      }

      goto LABEL_176;
    }
  }

  else if ((v48 & 0x4000) == 0)
  {
    goto LABEL_171;
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x4B, *(v5 + 372), a2, a4);
  v48 = *(v5 + 400);
  if ((v48 & 0x8000) == 0)
  {
LABEL_172:
    if ((v48 & 0x10000) == 0)
    {
      return result;
    }

    goto LABEL_179;
  }

LABEL_176:
  v49 = *(v5 + 376);
  if (!v49)
  {
    sub_24539DA30();
    v49 = *(qword_2813CEEB8 + 376);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x4C, v49, a2, a4);
  if ((*(v5 + 400) & 0x10000) != 0)
  {
LABEL_179:
    v50 = *(v5 + 384);
    if (!v50)
    {
      sub_24539DA30();
      v50 = *(qword_2813CEEB8 + 384);
    }

    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x4D, v50, a2, a4);
  }

  return result;
}

uint64_t sub_24542ADF4(uint64_t a1, unint64_t a2)
{
  v3 = *(a1 + 396);
  if (!v3)
  {
    v4 = 0;
    goto LABEL_54;
  }

  if (v3)
  {
    v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(a1 + 8)) + 1;
    v3 = *(a1 + 396);
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

  v5 = *(a1 + 16);
  if (v5 >= 0x80)
  {
    v6 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5) + 1;
    v3 = *(a1 + 396);
  }

  else
  {
    v6 = 2;
  }

  v4 += v6;
LABEL_11:
  if ((v3 & 4) != 0)
  {
    v7 = *(a1 + 20);
    if ((v7 & 0x80000000) != 0)
    {
      v8 = 11;
    }

    else if (v7 >= 0x80)
    {
      v8 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v7) + 1;
      v3 = *(a1 + 396);
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

      goto LABEL_30;
    }
  }

  else if ((v3 & 8) == 0)
  {
    goto LABEL_13;
  }

  v9 = *(a1 + 24);
  if (!v9)
  {
    sub_24539DA30();
    v9 = *(qword_2813CEEB8 + 24);
  }

  v10 = sub_245432684(v9, a2);
  v11 = v10;
  if (v10 >= 0x80)
  {
    v12 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v10);
  }

  else
  {
    v12 = 1;
  }

  v4 += v11 + v12 + 1;
  v3 = *(a1 + 396);
  if ((v3 & 0x10) == 0)
  {
LABEL_14:
    if ((v3 & 0x20) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_36;
  }

LABEL_30:
  v13 = *(a1 + 32);
  if (!v13)
  {
    sub_24539DA30();
    v13 = *(qword_2813CEEB8 + 32);
  }

  v14 = sub_245432908(v13, a2);
  v15 = v14;
  if (v14 >= 0x80)
  {
    v16 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v14);
  }

  else
  {
    v16 = 1;
  }

  v4 += v15 + v16 + 1;
  v3 = *(a1 + 396);
  if ((v3 & 0x20) == 0)
  {
LABEL_15:
    if ((v3 & 0x40) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_42;
  }

LABEL_36:
  v17 = *(a1 + 40);
  if (!v17)
  {
    sub_24539DA30();
    v17 = *(qword_2813CEEB8 + 40);
  }

  v18 = sub_245433418(v17, a2);
  v19 = v18;
  if (v18 >= 0x80)
  {
    v20 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v18);
  }

  else
  {
    v20 = 1;
  }

  v4 += v19 + v20 + 1;
  v3 = *(a1 + 396);
  if ((v3 & 0x40) == 0)
  {
LABEL_16:
    if ((v3 & 0x80) == 0)
    {
      goto LABEL_54;
    }

    goto LABEL_48;
  }

LABEL_42:
  v21 = *(a1 + 48);
  if (!v21)
  {
    sub_24539DA30();
    v21 = *(qword_2813CEEB8 + 48);
  }

  v22 = sub_2454338D4(v21, a2);
  v23 = v22;
  if (v22 >= 0x80)
  {
    v24 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v22);
  }

  else
  {
    v24 = 1;
  }

  v4 += v23 + v24 + 1;
  v3 = *(a1 + 396);
  if ((v3 & 0x80) != 0)
  {
LABEL_48:
    v25 = *(a1 + 56);
    if (!v25)
    {
      sub_24539DA30();
      v25 = *(qword_2813CEEB8 + 56);
    }

    v26 = sub_245433F14(v25, a2);
    v27 = v26;
    if (v26 >= 0x80)
    {
      v28 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v26);
    }

    else
    {
      v28 = 1;
    }

    v4 += v27 + v28 + 1;
    v3 = *(a1 + 396);
  }

LABEL_54:
  if ((v3 & 0xFF00) == 0)
  {
    goto LABEL_112;
  }

  if ((v3 & 0x100) != 0)
  {
    v29 = *(a1 + 64);
    if (!v29)
    {
      sub_24539DA30();
      v29 = *(qword_2813CEEB8 + 64);
    }

    v30 = sub_245434134(v29, a2);
    v31 = v30;
    if (v30 >= 0x80)
    {
      v32 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v30);
    }

    else
    {
      v32 = 1;
    }

    v4 += v31 + v32 + 1;
    v3 = *(a1 + 396);
    if ((v3 & 0x200) == 0)
    {
LABEL_57:
      if ((v3 & 0x400) == 0)
      {
        goto LABEL_58;
      }

      goto LABEL_76;
    }
  }

  else if ((v3 & 0x200) == 0)
  {
    goto LABEL_57;
  }

  v33 = *(a1 + 72);
  if (!v33)
  {
    sub_24539DA30();
    v33 = *(qword_2813CEEB8 + 72);
  }

  v34 = sub_245434AF0(v33, a2);
  v35 = v34;
  if (v34 >= 0x80)
  {
    v36 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v34);
  }

  else
  {
    v36 = 1;
  }

  v4 += v35 + v36 + 1;
  v3 = *(a1 + 396);
  if ((v3 & 0x400) == 0)
  {
LABEL_58:
    if ((v3 & 0x800) == 0)
    {
      goto LABEL_59;
    }

    goto LABEL_82;
  }

LABEL_76:
  v37 = *(a1 + 80);
  if (!v37)
  {
    sub_24539DA30();
    v37 = *(qword_2813CEEB8 + 80);
  }

  v38 = sub_2454350CC(v37, a2);
  v39 = v38;
  if (v38 >= 0x80)
  {
    v40 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v38);
  }

  else
  {
    v40 = 1;
  }

  v4 += v39 + v40 + 1;
  v3 = *(a1 + 396);
  if ((v3 & 0x800) == 0)
  {
LABEL_59:
    if ((v3 & 0x1000) == 0)
    {
      goto LABEL_60;
    }

    goto LABEL_88;
  }

LABEL_82:
  v41 = *(a1 + 88);
  if (!v41)
  {
    sub_24539DA30();
    v41 = *(qword_2813CEEB8 + 88);
  }

  v42 = sub_24543556C(v41, a2);
  v43 = v42;
  if (v42 >= 0x80)
  {
    v44 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v42);
  }

  else
  {
    v44 = 1;
  }

  v4 += v43 + v44 + 1;
  v3 = *(a1 + 396);
  if ((v3 & 0x1000) == 0)
  {
LABEL_60:
    if ((v3 & 0x2000) == 0)
    {
      goto LABEL_61;
    }

    goto LABEL_94;
  }

LABEL_88:
  v45 = *(a1 + 96);
  if (!v45)
  {
    sub_24539DA30();
    v45 = *(qword_2813CEEB8 + 96);
  }

  v46 = sub_2454358D4(v45, a2);
  v47 = v46;
  if (v46 >= 0x80)
  {
    v48 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v46);
  }

  else
  {
    v48 = 1;
  }

  v4 += v47 + v48 + 1;
  v3 = *(a1 + 396);
  if ((v3 & 0x2000) == 0)
  {
LABEL_61:
    if ((v3 & 0x4000) == 0)
    {
      goto LABEL_62;
    }

    goto LABEL_100;
  }

LABEL_94:
  v49 = *(a1 + 104);
  if (!v49)
  {
    sub_24539DA30();
    v49 = *(qword_2813CEEB8 + 104);
  }

  v50 = sub_245435DAC(v49, a2);
  v51 = v50;
  if (v50 >= 0x80)
  {
    v52 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v50);
  }

  else
  {
    v52 = 1;
  }

  v4 += v51 + v52 + 1;
  v3 = *(a1 + 396);
  if ((v3 & 0x4000) == 0)
  {
LABEL_62:
    if ((v3 & 0x8000) == 0)
    {
      goto LABEL_112;
    }

    goto LABEL_106;
  }

LABEL_100:
  v53 = *(a1 + 112);
  if (!v53)
  {
    sub_24539DA30();
    v53 = *(qword_2813CEEB8 + 112);
  }

  v54 = sub_245436218(v53, a2);
  v55 = v54;
  if (v54 >= 0x80)
  {
    v56 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v54);
  }

  else
  {
    v56 = 1;
  }

  v4 += v55 + v56 + 1;
  v3 = *(a1 + 396);
  if ((v3 & 0x8000) != 0)
  {
LABEL_106:
    v57 = *(a1 + 120);
    if (!v57)
    {
      sub_24539DA30();
      v57 = *(qword_2813CEEB8 + 120);
    }

    v58 = sub_245431790(v57, a2);
    v59 = v58;
    if (v58 >= 0x80)
    {
      v60 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v58);
    }

    else
    {
      v60 = 1;
    }

    v4 += v59 + v60 + 2;
    v3 = *(a1 + 396);
  }

LABEL_112:
  if ((v3 & 0xFF0000) == 0)
  {
    goto LABEL_171;
  }

  if ((v3 & 0x10000) != 0)
  {
    v61 = *(a1 + 128);
    if (!v61)
    {
      sub_24539DA30();
      v61 = *(qword_2813CEEB8 + 128);
    }

    v62 = sub_245431B78(v61, a2);
    v63 = v62;
    if (v62 >= 0x80)
    {
      v64 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v62);
    }

    else
    {
      v64 = 1;
    }

    v4 += v63 + v64 + 2;
    v3 = *(a1 + 396);
    if ((v3 & 0x20000) == 0)
    {
LABEL_115:
      if ((v3 & 0x40000) == 0)
      {
        goto LABEL_116;
      }

      goto LABEL_134;
    }
  }

  else if ((v3 & 0x20000) == 0)
  {
    goto LABEL_115;
  }

  v65 = *(a1 + 136);
  if (!v65)
  {
    sub_24539DA30();
    v65 = *(qword_2813CEEB8 + 136);
  }

  v66 = sub_245432434(v65, a2);
  v67 = v66;
  if (v66 >= 0x80)
  {
    v68 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v66);
  }

  else
  {
    v68 = 1;
  }

  v4 += v67 + v68 + 2;
  v3 = *(a1 + 396);
  if ((v3 & 0x40000) == 0)
  {
LABEL_116:
    if ((v3 & 0x80000) == 0)
    {
      goto LABEL_117;
    }

    goto LABEL_142;
  }

LABEL_134:
  v69 = *(a1 + 144);
  if (!v69)
  {
    sub_24539DA30();
    v69 = *(qword_2813CEEB8 + 144);
  }

  if ((*(v69 + 20) & 1) == 0)
  {
    v70 = 0;
    *(v69 + 16) = 0;
LABEL_139:
    v72 = 1;
    goto LABEL_141;
  }

  v71 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(v69 + 8));
  v70 = v71 + 1;
  *(v69 + 16) = v71 + 1;
  if ((v71 + 1) < 0x80)
  {
    goto LABEL_139;
  }

  v72 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback((v71 + 1));
LABEL_141:
  v4 += v72 + v70 + 2;
  v3 = *(a1 + 396);
  if ((v3 & 0x80000) == 0)
  {
LABEL_117:
    if ((v3 & 0x100000) == 0)
    {
      goto LABEL_118;
    }

    goto LABEL_145;
  }

LABEL_142:
  v73 = *(a1 + 152);
  if (!v73)
  {
    sub_24539DA30();
    v73 = *(qword_2813CEEB8 + 152);
  }

  v4 += sub_245431334(v73) + 3;
  v3 = *(a1 + 396);
  if ((v3 & 0x100000) == 0)
  {
LABEL_118:
    if ((v3 & 0x200000) == 0)
    {
      goto LABEL_119;
    }

    goto LABEL_153;
  }

LABEL_145:
  v74 = *(a1 + 160);
  if (!v74)
  {
    sub_24539DA30();
    v74 = *(qword_2813CEEB8 + 160);
  }

  if ((*(v74 + 20) & 1) == 0)
  {
    v75 = 0;
    *(v74 + 16) = 0;
LABEL_150:
    v77 = 1;
    goto LABEL_152;
  }

  v76 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(v74 + 8));
  v75 = v76 + 1;
  *(v74 + 16) = v76 + 1;
  if ((v76 + 1) < 0x80)
  {
    goto LABEL_150;
  }

  v77 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback((v76 + 1));
LABEL_152:
  v4 += v77 + v75 + 2;
  v3 = *(a1 + 396);
  if ((v3 & 0x200000) == 0)
  {
LABEL_119:
    if ((v3 & 0x400000) == 0)
    {
      goto LABEL_120;
    }

    goto LABEL_159;
  }

LABEL_153:
  v78 = *(a1 + 168);
  if (!v78)
  {
    sub_24539DA30();
    v78 = *(qword_2813CEEB8 + 168);
  }

  v79 = sub_245436A30(v78, a2);
  v80 = v79;
  if (v79 >= 0x80)
  {
    v81 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v79);
  }

  else
  {
    v81 = 1;
  }

  v4 += v80 + v81 + 2;
  v3 = *(a1 + 396);
  if ((v3 & 0x400000) == 0)
  {
LABEL_120:
    if ((v3 & 0x800000) == 0)
    {
      goto LABEL_171;
    }

    goto LABEL_165;
  }

LABEL_159:
  v82 = *(a1 + 176);
  if (!v82)
  {
    sub_24539DA30();
    v82 = *(qword_2813CEEB8 + 176);
  }

  v83 = sub_245436E24(v82, a2);
  v84 = v83;
  if (v83 >= 0x80)
  {
    v85 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v83);
  }

  else
  {
    v85 = 1;
  }

  v4 += v84 + v85 + 2;
  v3 = *(a1 + 396);
  if ((v3 & 0x800000) != 0)
  {
LABEL_165:
    v86 = *(a1 + 184);
    if (!v86)
    {
      sub_24539DA30();
      v86 = *(qword_2813CEEB8 + 184);
    }

    if (*(v86 + 16))
    {
      v87 = 2 * (*(v86 + 16) & 1);
    }

    else
    {
      v87 = 0;
    }

    *(v86 + 12) = v87;
    v4 += v87 + 3;
    v3 = *(a1 + 396);
  }

LABEL_171:
  if (!HIBYTE(v3))
  {
    goto LABEL_229;
  }

  if ((v3 & 0x1000000) != 0)
  {
    v88 = *(a1 + 192);
    if (!v88)
    {
      sub_24539DA30();
      v88 = *(qword_2813CEEB8 + 192);
    }

    v89 = sub_245437898(v88, a2);
    v90 = v89;
    if (v89 >= 0x80)
    {
      v91 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v89);
    }

    else
    {
      v91 = 1;
    }

    v4 += v90 + v91 + 2;
    v3 = *(a1 + 396);
    if ((v3 & 0x2000000) == 0)
    {
LABEL_174:
      if ((v3 & 0x4000000) == 0)
      {
        goto LABEL_175;
      }

      goto LABEL_193;
    }
  }

  else if ((v3 & 0x2000000) == 0)
  {
    goto LABEL_174;
  }

  v92 = *(a1 + 200);
  if (!v92)
  {
    sub_24539DA30();
    v92 = *(qword_2813CEEB8 + 200);
  }

  v93 = sub_245437C38(v92, a2);
  v94 = v93;
  if (v93 >= 0x80)
  {
    v95 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v93);
  }

  else
  {
    v95 = 1;
  }

  v4 += v94 + v95 + 2;
  v3 = *(a1 + 396);
  if ((v3 & 0x4000000) == 0)
  {
LABEL_175:
    if ((v3 & 0x8000000) == 0)
    {
      goto LABEL_176;
    }

    goto LABEL_199;
  }

LABEL_193:
  v96 = *(a1 + 208);
  if (!v96)
  {
    sub_24539DA30();
    v96 = *(qword_2813CEEB8 + 208);
  }

  v97 = sub_24543C5B8(v96, a2);
  v98 = v97;
  if (v97 >= 0x80)
  {
    v99 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v97);
  }

  else
  {
    v99 = 1;
  }

  v4 += v98 + v99 + 2;
  v3 = *(a1 + 396);
  if ((v3 & 0x8000000) == 0)
  {
LABEL_176:
    if ((v3 & 0x10000000) == 0)
    {
      goto LABEL_177;
    }

    goto LABEL_205;
  }

LABEL_199:
  v100 = *(a1 + 216);
  if (!v100)
  {
    sub_24539DA30();
    v100 = *(qword_2813CEEB8 + 216);
  }

  v101 = sub_24543E644(v100, a2);
  v102 = v101;
  if (v101 >= 0x80)
  {
    v103 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v101);
  }

  else
  {
    v103 = 1;
  }

  v4 += v102 + v103 + 2;
  v3 = *(a1 + 396);
  if ((v3 & 0x10000000) == 0)
  {
LABEL_177:
    if ((v3 & 0x20000000) == 0)
    {
      goto LABEL_178;
    }

    goto LABEL_211;
  }

LABEL_205:
  v104 = *(a1 + 224);
  if (!v104)
  {
    sub_24539DA30();
    v104 = *(qword_2813CEEB8 + 224);
  }

  v105 = sub_245436608(v104, a2);
  v106 = v105;
  if (v105 >= 0x80)
  {
    v107 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v105);
  }

  else
  {
    v107 = 1;
  }

  v4 += v106 + v107 + 2;
  v3 = *(a1 + 396);
  if ((v3 & 0x20000000) == 0)
  {
LABEL_178:
    if ((v3 & 0x40000000) == 0)
    {
      goto LABEL_179;
    }

    goto LABEL_217;
  }

LABEL_211:
  v108 = *(a1 + 232);
  if (!v108)
  {
    sub_24539DA30();
    v108 = *(qword_2813CEEB8 + 232);
  }

  if (*(v108 + 16))
  {
    v109 = 2 * (*(v108 + 16) & 1) + (*(v108 + 16) & 2);
  }

  else
  {
    v109 = 0;
  }

  *(v108 + 12) = v109;
  v4 += v109 + 3;
  v3 = *(a1 + 396);
  if ((v3 & 0x40000000) == 0)
  {
LABEL_179:
    if ((v3 & 0x80000000) == 0)
    {
      goto LABEL_229;
    }

    goto LABEL_223;
  }

LABEL_217:
  v110 = *(a1 + 240);
  if (!v110)
  {
    sub_24539DA30();
    v110 = *(qword_2813CEEB8 + 240);
  }

  v111 = sub_245431F18(v110, a2);
  v112 = v111;
  if (v111 >= 0x80)
  {
    v113 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v111);
  }

  else
  {
    v113 = 1;
  }

  v4 += v112 + v113 + 2;
  if ((*(a1 + 396) & 0x80000000) != 0)
  {
LABEL_223:
    v114 = *(a1 + 248);
    if (!v114)
    {
      sub_24539DA30();
      v114 = *(qword_2813CEEB8 + 248);
    }

    v115 = sub_24541F96C(v114, a2);
    v116 = v115;
    if (v115 >= 0x80)
    {
      v117 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v115);
    }

    else
    {
      v117 = 1;
    }

    v4 += v116 + v117 + 2;
  }

LABEL_229:
  v118 = *(a1 + 400);
  if (!v118)
  {
    goto LABEL_288;
  }

  if (v118)
  {
    v119 = *(a1 + 256);
    v120 = *(v119 + 23);
    v121 = v120;
    v122 = *(v119 + 8);
    if ((v120 & 0x80u) == 0)
    {
      v123 = *(v119 + 23);
    }

    else
    {
      v123 = v122;
    }

    if (v123 >= 0x80)
    {
      v124 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v123);
      v120 = *(v119 + 23);
      v122 = *(v119 + 8);
      v118 = *(a1 + 400);
      v121 = *(v119 + 23);
    }

    else
    {
      v124 = 1;
    }

    if (v121 < 0)
    {
      v120 = v122;
    }

    v4 += v124 + v120 + 2;
    if ((v118 & 2) == 0)
    {
LABEL_232:
      if ((v118 & 4) == 0)
      {
        goto LABEL_233;
      }

      goto LABEL_254;
    }
  }

  else if ((v118 & 2) == 0)
  {
    goto LABEL_232;
  }

  v125 = *(a1 + 264);
  if (!v125)
  {
    sub_24539DA30();
    v125 = *(qword_2813CEEB8 + 264);
  }

  v126 = sub_2453F952C(v125, a2);
  v127 = v126;
  if (v126 >= 0x80)
  {
    v128 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v126);
  }

  else
  {
    v128 = 1;
  }

  v4 += v127 + v128 + 2;
  v118 = *(a1 + 400);
  if ((v118 & 4) == 0)
  {
LABEL_233:
    if ((v118 & 8) == 0)
    {
      goto LABEL_234;
    }

    goto LABEL_258;
  }

LABEL_254:
  v129 = *(a1 + 304);
  if (v129 >= 0x80)
  {
    v130 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v129) + 2;
    v118 = *(a1 + 400);
  }

  else
  {
    v130 = 3;
  }

  v4 += v130;
  if ((v118 & 8) == 0)
  {
LABEL_234:
    if ((v118 & 0x10) == 0)
    {
      goto LABEL_235;
    }

    goto LABEL_264;
  }

LABEL_258:
  v131 = *(a1 + 272);
  if (!v131)
  {
    sub_24539DA30();
    v131 = *(qword_2813CEEB8 + 272);
  }

  v132 = sub_24541A394(v131, a2);
  v133 = v132;
  if (v132 >= 0x80)
  {
    v134 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v132);
  }

  else
  {
    v134 = 1;
  }

  v4 += v133 + v134 + 2;
  v118 = *(a1 + 400);
  if ((v118 & 0x10) == 0)
  {
LABEL_235:
    if ((v118 & 0x20) == 0)
    {
      goto LABEL_236;
    }

    goto LABEL_270;
  }

LABEL_264:
  v135 = *(a1 + 280);
  if (!v135)
  {
    sub_24539DA30();
    v135 = *(qword_2813CEEB8 + 280);
  }

  v136 = sub_24541B294(v135, a2);
  v137 = v136;
  if (v136 >= 0x80)
  {
    v138 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v136);
  }

  else
  {
    v138 = 1;
  }

  v4 += v137 + v138 + 2;
  v118 = *(a1 + 400);
  if ((v118 & 0x20) == 0)
  {
LABEL_236:
    if ((v118 & 0x40) == 0)
    {
      goto LABEL_237;
    }

    goto LABEL_276;
  }

LABEL_270:
  v139 = *(a1 + 288);
  if (!v139)
  {
    sub_24539DA30();
    v139 = *(qword_2813CEEB8 + 288);
  }

  v140 = sub_24541E06C(v139, a2);
  v141 = v140;
  if (v140 >= 0x80)
  {
    v142 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v140);
  }

  else
  {
    v142 = 1;
  }

  v4 += v141 + v142 + 2;
  v118 = *(a1 + 400);
  if ((v118 & 0x40) == 0)
  {
LABEL_237:
    if ((v118 & 0x80) == 0)
    {
      goto LABEL_288;
    }

    goto LABEL_282;
  }

LABEL_276:
  v143 = *(a1 + 296);
  if (!v143)
  {
    sub_24539DA30();
    v143 = *(qword_2813CEEB8 + 296);
  }

  v144 = sub_2454216C8(v143, a2);
  v145 = v144;
  if (v144 >= 0x80)
  {
    v146 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v144);
  }

  else
  {
    v146 = 1;
  }

  v4 += v145 + v146 + 2;
  v118 = *(a1 + 400);
  if ((v118 & 0x80) != 0)
  {
LABEL_282:
    v147 = *(a1 + 312);
    if (!v147)
    {
      sub_24539DA30();
      v147 = *(qword_2813CEEB8 + 312);
    }

    v148 = sub_2454223F8(v147, a2);
    v149 = v148;
    if (v148 >= 0x80)
    {
      v150 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v148);
    }

    else
    {
      v150 = 1;
    }

    v4 += v149 + v150 + 2;
    v118 = *(a1 + 400);
  }

LABEL_288:
  if ((v118 & 0xFF00) == 0)
  {
    goto LABEL_323;
  }

  if ((v118 & 0x100) == 0)
  {
    if ((v118 & 0x400) == 0)
    {
      goto LABEL_291;
    }

LABEL_299:
    v155 = *(a1 + 344);
    if (!v155)
    {
      sub_24539DA30();
      v155 = *(qword_2813CEEB8 + 344);
    }

    v156 = sub_2453F0234(v155, a2);
    v157 = v156;
    if (v156 >= 0x80)
    {
      v158 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v156);
    }

    else
    {
      v158 = 1;
    }

    v4 += v157 + v158 + 2;
    v118 = *(a1 + 400);
    if ((v118 & 0x800) == 0)
    {
      goto LABEL_309;
    }

    goto LABEL_305;
  }

  v151 = *(a1 + 320);
  if (!v151)
  {
    sub_24539DA30();
    v151 = *(qword_2813CEEB8 + 320);
  }

  v152 = sub_24541ED88(v151);
  v153 = v152;
  if (v152 >= 0x80)
  {
    v154 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v152);
  }

  else
  {
    v154 = 1;
  }

  v4 += v153 + v154 + 2;
  v118 = *(a1 + 400);
  if ((v118 & 0x400) != 0)
  {
    goto LABEL_299;
  }

LABEL_291:
  if ((v118 & 0x800) != 0)
  {
LABEL_305:
    v159 = *(a1 + 308);
    if (v159 >= 0x80)
    {
      v160 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v159) + 2;
      v118 = *(a1 + 400);
    }

    else
    {
      v160 = 3;
    }

    v4 += v160;
  }

LABEL_309:
  if ((v118 & 0x2000) != 0)
  {
    v4 += 3;
  }

  if ((v118 & 0x4000) != 0)
  {
    v161 = *(a1 + 372);
    if (v161 >= 0x80)
    {
      v162 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v161) + 2;
      v118 = *(a1 + 400);
    }

    else
    {
      v162 = 3;
    }

    v4 += v162;
  }

  if ((v118 & 0x8000) != 0)
  {
    v163 = *(a1 + 376);
    if (!v163)
    {
      sub_24539DA30();
      v163 = *(qword_2813CEEB8 + 376);
    }

    v164 = sub_2453F5368(v163, a2);
    v165 = v164;
    if (v164 >= 0x80)
    {
      v166 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v164);
    }

    else
    {
      v166 = 1;
    }

    v4 += v165 + v166 + 2;
    v118 = *(a1 + 400);
  }

LABEL_323:
  if ((v118 & 0x10000) != 0)
  {
    v167 = *(a1 + 384);
    if (!v167)
    {
      sub_24539DA30();
      v167 = *(qword_2813CEEB8 + 384);
    }

    v168 = sub_2453F18C4(v167, a2);
    v169 = v168;
    if (v168 >= 0x80)
    {
      v170 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v168);
    }

    else
    {
      v170 = 1;
    }

    v4 += v169 + v170 + 2;
  }

  v171 = *(a1 + 336);
  if (v171 < 1)
  {
    v173 = 0;
  }

  else
  {
    v172 = 0;
    v173 = 0;
    do
    {
      v174 = *(*(a1 + 328) + 4 * v172);
      if (v174 >= 0x80)
      {
        v175 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v174);
        v171 = *(a1 + 336);
      }

      else
      {
        v175 = 1;
      }

      v173 += v175;
      ++v172;
    }

    while (v172 < v171);
  }

  v176 = *(a1 + 360);
  if (v176 < 1)
  {
    v178 = 0;
  }

  else
  {
    v177 = 0;
    v178 = 0;
    do
    {
      v179 = *(*(a1 + 352) + 4 * v177);
      if (v179 >= 0x80)
      {
        v180 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v179);
        v176 = *(a1 + 360);
      }

      else
      {
        v180 = 1;
      }

      v178 += v180;
      ++v177;
    }

    while (v177 < v176);
  }

  result = (v173 + v4 + v178 + 2 * (v176 + v171));
  *(a1 + 392) = result;
  return result;
}

void sub_24542BC98(uint64_t a1, void *lpsrc)
{
  if (!__dynamic_cast(lpsrc, MEMORY[0x277D82C38], &unk_28585A080, 0))
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  sub_2454287A4(a1, lpsrc);
}

void sub_24542BD3C(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v10);
  }

  LOBYTE(v4) = *(a2 + 36);
  if (v4)
  {
    if (*(a2 + 36))
    {
      *(a1 + 36) |= 1u;
      v5 = *(a1 + 8);
      if (!v5)
      {
        operator new();
      }

      v6 = *(a2 + 8);
      if (!v6)
      {
        sub_24539DA30();
        v6 = *(qword_2813CEEC0 + 8);
      }

      sub_2453B6ED0(v5, v6);
      v4 = *(a2 + 36);
    }

    if ((v4 & 2) != 0)
    {
      v7 = *(a2 + 16);
      if (v7 >= 4)
      {
        __assert_rtn("set_position_assist_type", "GpsdProtocol.pb.h", 9398, "::CoreGem::proto::gnss::PositionAssistType_IsValid(value)");
      }

      *(a1 + 36) |= 2u;
      *(a1 + 16) = v7;
      v4 = *(a2 + 36);
    }

    if ((v4 & 4) != 0)
    {
      v8 = *(a2 + 20);
      *(a1 + 36) |= 4u;
      *(a1 + 20) = v8;
      v4 = *(a2 + 36);
    }

    if ((v4 & 8) != 0)
    {
      v9 = *(a2 + 24);
      *(a1 + 36) |= 8u;
      *(a1 + 24) = v9;
    }
  }
}

void sub_24542BEC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_24542BEE0(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
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
      v6 = *(a2 + 8);
      *(a1 + 36) |= 1u;
      *(a1 + 8) = v6;
      v4 = *(a2 + 36);
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

    v7 = *(a2 + 16);
    *(a1 + 36) |= 2u;
    *(a1 + 16) = v7;
    if ((*(a2 + 36) & 4) == 0)
    {
      return;
    }

LABEL_7:
    v5 = *(a2 + 24);
    *(a1 + 36) |= 4u;
    *(a1 + 24) = v5;
  }
}

void sub_24542BFB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_24542BFCC(_DWORD *a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v10);
  }

  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 2));
  LODWORD(v4) = *(a2 + 16);
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

      v6 = *(*(a2 + 8) + 8 * v5);
      v7 = a1[5];
      v8 = a1[4];
      if (v8 >= v7)
      {
        if (v7 == a1[6])
        {
          wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 2));
          v7 = a1[5];
        }

        a1[5] = v7 + 1;
        operator new();
      }

      v9 = *(a1 + 1);
      a1[4] = v8 + 1;
      sub_2453B9954(*(v9 + 8 * v8), v6);
      ++v5;
      v4 = *(a2 + 16);
    }

    while (v5 < v4);
  }
}

void sub_24542C180(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_24542C1A0(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v4);
  }

  sub_2454339F8((a1 + 8), a2 + 8);
}

void sub_24542C21C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_24542C234(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v4);
  }

  sub_2454339F8((a1 + 8), a2 + 8);
}

void sub_24542C2B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

double sub_24542C2C8(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v7);
  }

  LOBYTE(v5) = *(a2 + 36);
  if (v5)
  {
    if (*(a2 + 36))
    {
      v6 = *(a2 + 8);
      *(a1 + 36) |= 1u;
      *(a1 + 8) = v6;
      v5 = *(a2 + 36);
      if ((v5 & 2) == 0)
      {
LABEL_6:
        if ((v5 & 4) == 0)
        {
          return result;
        }

        goto LABEL_7;
      }
    }

    else if ((*(a2 + 36) & 2) == 0)
    {
      goto LABEL_6;
    }

    result = *(a2 + 16);
    *(a1 + 36) |= 2u;
    *(a1 + 16) = result;
    if ((*(a2 + 36) & 4) == 0)
    {
      return result;
    }

LABEL_7:
    result = *(a2 + 24);
    *(a1 + 36) |= 4u;
    *(a1 + 24) = result;
  }

  return result;
}

void sub_24542C39C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_24542C3B4(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v18);
  }

  v4 = *(a2 + 76);
  if (!v4)
  {
    goto LABEL_13;
  }

  if (v4)
  {
    v7 = *(a2 + 8);
    *(a1 + 76) |= 1u;
    *(a1 + 8) = v7;
    v4 = *(a2 + 76);
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

  v8 = *(a2 + 16);
  *(a1 + 76) |= 2u;
  *(a1 + 16) = v8;
  v4 = *(a2 + 76);
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
  v9 = *(a2 + 24);
  *(a1 + 76) |= 4u;
  *(a1 + 24) = v9;
  v4 = *(a2 + 76);
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
  v10 = *(a2 + 64);
  *(a1 + 76) |= 8u;
  *(a1 + 64) = v10;
  v4 = *(a2 + 76);
  if ((v4 & 0x10) == 0)
  {
LABEL_9:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_10;
    }

LABEL_26:
    v12 = *(a2 + 40);
    *(a1 + 76) |= 0x20u;
    *(a1 + 40) = v12;
    v4 = *(a2 + 76);
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
  v11 = *(a2 + 32);
  *(a1 + 76) |= 0x10u;
  *(a1 + 32) = v11;
  v4 = *(a2 + 76);
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
  v13 = *(a2 + 48);
  *(a1 + 76) |= 0x40u;
  *(a1 + 48) = v13;
  v4 = *(a2 + 76);
  if ((v4 & 0x80) != 0)
  {
LABEL_12:
    v5 = *(a2 + 56);
    *(a1 + 76) |= 0x80u;
    *(a1 + 56) = v5;
    v4 = *(a2 + 76);
  }

LABEL_13:
  if ((v4 & 0xFF00) == 0)
  {
    return;
  }

  if ((v4 & 0x100) != 0)
  {
    v14 = *(a2 + 65);
    *(a1 + 76) |= 0x100u;
    *(a1 + 65) = v14;
    v4 = *(a2 + 76);
    if ((v4 & 0x200) == 0)
    {
LABEL_16:
      if ((v4 & 0x400) == 0)
      {
        goto LABEL_17;
      }

      goto LABEL_31;
    }
  }

  else if ((v4 & 0x200) == 0)
  {
    goto LABEL_16;
  }

  v15 = *(a2 + 66);
  *(a1 + 76) |= 0x200u;
  *(a1 + 66) = v15;
  v4 = *(a2 + 76);
  if ((v4 & 0x400) == 0)
  {
LABEL_17:
    if ((v4 & 0x800) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_32;
  }

LABEL_31:
  v16 = *(a2 + 67);
  *(a1 + 76) |= 0x400u;
  *(a1 + 67) = v16;
  v4 = *(a2 + 76);
  if ((v4 & 0x800) == 0)
  {
LABEL_18:
    if ((v4 & 0x1000) == 0)
    {
      return;
    }

    goto LABEL_19;
  }

LABEL_32:
  v17 = *(a2 + 68);
  *(a1 + 76) |= 0x800u;
  *(a1 + 68) = v17;
  if ((*(a2 + 76) & 0x1000) == 0)
  {
    return;
  }

LABEL_19:
  v6 = *(a2 + 69);
  *(a1 + 76) |= 0x1000u;
  *(a1 + 69) = v6;
}

void sub_24542C5D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_24542C5EC(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
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
      v5 = *(a2 + 8);
      *(a1 + 32) |= 1u;
      *(a1 + 8) = v5;
      v4 = *(a2 + 32);
    }

    if ((v4 & 2) != 0)
    {
      v6 = *(a2 + 16);
      if (v6 >= 0xA)
      {
        __assert_rtn("set_context", "GpsdProtocol.pb.h", 10060, "::CoreGem::proto::gnss::MotionActivityContext_IsValid(value)");
      }

      *(a1 + 32) |= 2u;
      *(a1 + 16) = v6;
      v4 = *(a2 + 32);
    }

    if ((v4 & 4) != 0)
    {
      v7 = *(a2 + 20);
      if (v7 >= 5)
      {
        __assert_rtn("set_moving_state", "GpsdProtocol.pb.h", 10083, "::CoreGem::proto::gnss::MovingState_IsValid(value)");
      }

      *(a1 + 32) |= 4u;
      *(a1 + 20) = v7;
      v4 = *(a2 + 32);
    }

    if ((v4 & 8) != 0)
    {
      v8 = *(a2 + 24);
      if (!sub_24539CC50(v8))
      {
        __assert_rtn("set_motion_reliability", "GpsdProtocol.pb.h", 10106, "::CoreGem::proto::gnss::Reliability_IsValid(value)");
      }

      *(a1 + 32) |= 8u;
      *(a1 + 24) = v8;
    }
  }
}

void sub_24542C74C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_24542C764(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
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
      v5 = *(a2 + 8);
      *(a1 + 24) |= 1u;
      *(a1 + 8) = v5;
      v4 = *(a2 + 24);
    }

    if ((v4 & 2) != 0)
    {
      v6 = *(a2 + 16);
      if ((v6 - 1) >= 4)
      {
        __assert_rtn("set_mount_state", "GpsdProtocol.pb.h", 10155, "::CoreGem::proto::gnss::DeviceMountState_IsValid(value)");
      }

      *(a1 + 24) |= 2u;
      *(a1 + 16) = v6;
    }
  }
}

void sub_24542C83C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_24542C854(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v6);
  }

  if (*(a2 + 16))
  {
    v4 = *(a2 + 8);
    if (v4 >= 7 && v4 != 15)
    {
      __assert_rtn("set_signal_environment_type", "GpsdProtocol.pb.h", 10182, "::CoreGem::proto::gnss::SignalEnvironmentType_IsValid(value)");
    }

    *(a1 + 16) |= 1u;
    *(a1 + 8) = v4;
  }
}

void sub_24542C910(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

double sub_24542C928(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
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
      v6 = *(a2 + 8);
      *(a1 + 44) |= 1u;
      *(a1 + 8) = v6;
      v5 = *(a2 + 44);
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

    result = *(a2 + 16);
    *(a1 + 44) |= 2u;
    *(a1 + 16) = result;
    v5 = *(a2 + 44);
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
    result = *(a2 + 24);
    *(a1 + 44) |= 4u;
    *(a1 + 24) = result;
    if ((*(a2 + 44) & 8) == 0)
    {
      return result;
    }

LABEL_8:
    result = *(a2 + 32);
    *(a1 + 44) |= 8u;
    *(a1 + 32) = result;
  }

  return result;
}

void sub_24542CA1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

double sub_24542CA34(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v7);
  }

  LOBYTE(v5) = *(a2 + 36);
  if (v5)
  {
    if (*(a2 + 36))
    {
      v6 = *(a2 + 8);
      *(a1 + 36) |= 1u;
      *(a1 + 8) = v6;
      v5 = *(a2 + 36);
      if ((v5 & 2) == 0)
      {
LABEL_6:
        if ((v5 & 4) == 0)
        {
          return result;
        }

        goto LABEL_7;
      }
    }

    else if ((*(a2 + 36) & 2) == 0)
    {
      goto LABEL_6;
    }

    result = *(a2 + 16);
    *(a1 + 36) |= 2u;
    *(a1 + 16) = result;
    if ((*(a2 + 36) & 4) == 0)
    {
      return result;
    }

LABEL_7:
    result = *(a2 + 24);
    *(a1 + 36) |= 4u;
    *(a1 + 24) = result;
  }

  return result;
}

void sub_24542CB08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_24542CB20(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v8);
  }

  LOBYTE(v4) = *(a2 + 24);
  if (v4)
  {
    if (*(a2 + 24))
    {
      v5 = *(a2 + 8);
      *(a1 + 24) |= 1u;
      v6 = *(a1 + 8);
      if (v6 == MEMORY[0x277D82C30])
      {
        operator new();
      }

      std::string::operator=(v6, v5);
      v4 = *(a2 + 24);
    }

    if ((v4 & 2) != 0)
    {
      v7 = *(a2 + 16);
      if (v7 >= 3)
      {
        __assert_rtn("set_compression_type", "GpsdProtocol.pb.h", 9152, "::CoreGem::proto::gpsd::CompressionType_IsValid(value)");
      }

      *(a1 + 24) |= 2u;
      *(a1 + 16) = v7;
    }
  }
}

void sub_24542CC38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_24542CC50(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v6);
  }

  if (*(a2 + 20))
  {
    v4 = *(a2 + 8);
    *(a1 + 20) |= 1u;
    v5 = *(a1 + 8);
    if (v5 == MEMORY[0x277D82C30])
    {
      operator new();
    }

    std::string::operator=(v5, v4);
  }
}

void sub_24542CD18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_24542CD30(_DWORD *a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v10);
  }

  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 2));
  LODWORD(v4) = *(a2 + 16);
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

      v6 = *(*(a2 + 8) + 8 * v5);
      v7 = a1[5];
      v8 = a1[4];
      if (v8 >= v7)
      {
        if (v7 == a1[6])
        {
          wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 2));
          v7 = a1[5];
        }

        a1[5] = v7 + 1;
        operator new();
      }

      v9 = *(a1 + 1);
      a1[4] = v8 + 1;
      sub_2453BA410(*(v9 + 8 * v8), v6);
      ++v5;
      v4 = *(a2 + 16);
    }

    while (v5 < v4);
  }
}

void sub_24542CEE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_24542CF04(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v5);
  }

  if (*(a2 + 20))
  {
    v4 = *(a2 + 8);
    *(a1 + 20) |= 1u;
    *(a1 + 8) = v4;
  }
}

void sub_24542CF90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_24542CFA8(uint64_t a1, _BYTE *a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v11);
  }

  LOBYTE(v4) = a2[20];
  if (v4)
  {
    if (a2[20])
    {
      v6 = a2[8];
      *(a1 + 20) |= 1u;
      *(a1 + 8) = v6;
      v4 = *(a2 + 5);
      if ((v4 & 2) == 0)
      {
LABEL_6:
        if ((v4 & 4) == 0)
        {
          goto LABEL_7;
        }

        goto LABEL_14;
      }
    }

    else if ((a2[20] & 2) == 0)
    {
      goto LABEL_6;
    }

    v7 = a2[9];
    *(a1 + 20) |= 2u;
    *(a1 + 9) = v7;
    v4 = *(a2 + 5);
    if ((v4 & 4) == 0)
    {
LABEL_7:
      if ((v4 & 8) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_15;
    }

LABEL_14:
    v8 = a2[10];
    *(a1 + 20) |= 4u;
    *(a1 + 10) = v8;
    v4 = *(a2 + 5);
    if ((v4 & 8) == 0)
    {
LABEL_8:
      if ((v4 & 0x10) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_16;
    }

LABEL_15:
    v9 = a2[11];
    *(a1 + 20) |= 8u;
    *(a1 + 11) = v9;
    v4 = *(a2 + 5);
    if ((v4 & 0x10) == 0)
    {
LABEL_9:
      if ((v4 & 0x20) == 0)
      {
        return;
      }

      goto LABEL_10;
    }

LABEL_16:
    v10 = a2[12];
    *(a1 + 20) |= 0x10u;
    *(a1 + 12) = v10;
    if ((*(a2 + 5) & 0x20) == 0)
    {
      return;
    }

LABEL_10:
    v5 = a2[13];
    *(a1 + 20) |= 0x20u;
    *(a1 + 13) = v5;
  }
}

void sub_24542D0DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_24542D0F4(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v5);
  }

  if (*(a2 + 20))
  {
    v4 = *(a2 + 8);
    *(a1 + 20) |= 1u;
    *(a1 + 8) = v4;
  }
}

void sub_24542D180(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_24542D198(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
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
      v5 = *(a2 + 8);
      *(a1 + 20) |= 1u;
      *(a1 + 8) = v5;
      v4 = *(a2 + 20);
    }

    if ((v4 & 2) != 0)
    {
      v6 = *(a2 + 12);
      *(a1 + 20) |= 2u;
      *(a1 + 12) = v6;
    }
  }
}

void sub_24542D244(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_24542D25C(_DWORD *a1, uint64_t a2)
{
  if (a2 == a1)
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
      v5 = *(a2 + 8);
      a1[5] |= 1u;
      a1[2] = v5;
      v4 = *(a2 + 20);
    }

    if ((v4 & 2) != 0)
    {
      v6 = *(a2 + 12);
      a1[5] |= 2u;
      a1[3] = v6;
    }
  }
}

void sub_24542D308(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_24542D320(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v5);
  }

  if (*(a2 + 16))
  {
    v4 = *(a2 + 8);
    *(a1 + 16) |= 1u;
    *(a1 + 8) = v4;
  }
}

void sub_24542D3AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_24542D3C4(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v6);
  }

  if (*(a2 + 20))
  {
    v4 = *(a2 + 8);
    *(a1 + 20) |= 1u;
    v5 = *(a1 + 8);
    if (v5 == MEMORY[0x277D82C30])
    {
      operator new();
    }

    std::string::operator=(v5, v4);
  }
}

void sub_24542D48C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_24542D4A4(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v6);
  }

  if (*(a2 + 20))
  {
    v4 = *(a2 + 8);
    *(a1 + 20) |= 1u;
    v5 = *(a1 + 8);
    if (v5 == MEMORY[0x277D82C30])
    {
      operator new();
    }

    std::string::operator=(v5, v4);
  }
}

void sub_24542D56C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_24542D584(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v16);
  }

  LOBYTE(v4) = *(a2 + 56);
  if (!v4)
  {
    return;
  }

  if (*(a2 + 56))
  {
    v5 = *(a2 + 8);
    *(a1 + 56) |= 1u;
    *(a1 + 8) = v5;
    v4 = *(a2 + 56);
    if ((v4 & 2) == 0)
    {
LABEL_6:
      if ((v4 & 4) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_14;
    }
  }

  else if ((*(a2 + 56) & 2) == 0)
  {
    goto LABEL_6;
  }

  v6 = *(a2 + 12);
  *(a1 + 56) |= 2u;
  *(a1 + 12) = v6;
  v4 = *(a2 + 56);
  if ((v4 & 4) == 0)
  {
LABEL_7:
    if ((v4 & 8) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_16;
  }

LABEL_14:
  v7 = *(a2 + 48);
  if (v7 >= 5)
  {
    __assert_rtn("set_info_type", "GpsdProtocol.pb.h", 11602, "::CoreGem::proto::gpsd::LtlInfoType_IsValid(value)");
  }

  *(a1 + 56) |= 4u;
  *(a1 + 48) = v7;
  v4 = *(a2 + 56);
  if ((v4 & 8) == 0)
  {
LABEL_8:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_9;
    }

LABEL_21:
    *(a1 + 56) |= 0x10u;
    v10 = *(a1 + 24);
    if (!v10)
    {
      operator new();
    }

    v11 = *(a2 + 24);
    if (!v11)
    {
      sub_24539DA30();
      v11 = *(qword_2813CECD8 + 24);
    }

    sub_245439648(v10, v11);
    v4 = *(a2 + 56);
    if ((v4 & 0x20) == 0)
    {
LABEL_10:
      if ((v4 & 0x40) == 0)
      {
        return;
      }

      goto LABEL_31;
    }

    goto LABEL_26;
  }

LABEL_16:
  *(a1 + 56) |= 8u;
  v8 = *(a1 + 16);
  if (!v8)
  {
    operator new();
  }

  v9 = *(a2 + 16);
  if (!v9)
  {
    sub_24539DA30();
    v9 = *(qword_2813CECD8 + 16);
  }

  sub_24543AE60(v8, v9);
  v4 = *(a2 + 56);
  if ((v4 & 0x10) != 0)
  {
    goto LABEL_21;
  }

LABEL_9:
  if ((v4 & 0x20) == 0)
  {
    goto LABEL_10;
  }

LABEL_26:
  *(a1 + 56) |= 0x20u;
  v12 = *(a1 + 32);
  if (!v12)
  {
    operator new();
  }

  v13 = *(a2 + 32);
  if (!v13)
  {
    sub_24539DA30();
    v13 = *(qword_2813CECD8 + 32);
  }

  sub_24543A180(v12, v13);
  if ((*(a2 + 56) & 0x40) != 0)
  {
LABEL_31:
    *(a1 + 56) |= 0x40u;
    v14 = *(a1 + 40);
    if (!v14)
    {
      operator new();
    }

    v15 = *(a2 + 40);
    if (!v15)
    {
      sub_24539DA30();
      v15 = *(qword_2813CECD8 + 40);
    }

    sub_24543A954(v14, v15);
  }
}

void sub_24542D8AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_24542D8C4(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v10);
  }

  LOBYTE(v4) = *(a2 + 24);
  if (v4)
  {
    if (*(a2 + 24))
    {
      v6 = *(a2 + 16);
      *(a1 + 24) |= 1u;
      *(a1 + 16) = v6;
      v4 = *(a2 + 24);
      if ((v4 & 2) == 0)
      {
LABEL_6:
        if ((v4 & 4) == 0)
        {
          goto LABEL_7;
        }

        goto LABEL_13;
      }
    }

    else if ((*(a2 + 24) & 2) == 0)
    {
      goto LABEL_6;
    }

    v7 = *(a2 + 17);
    *(a1 + 24) |= 2u;
    *(a1 + 17) = v7;
    v4 = *(a2 + 24);
    if ((v4 & 4) == 0)
    {
LABEL_7:
      if ((v4 & 8) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_14;
    }

LABEL_13:
    v8 = *(a2 + 18);
    *(a1 + 24) |= 4u;
    *(a1 + 18) = v8;
    v4 = *(a2 + 24);
    if ((v4 & 8) == 0)
    {
LABEL_8:
      if ((v4 & 0x10) == 0)
      {
        return;
      }

      goto LABEL_9;
    }

LABEL_14:
    v9 = *(a2 + 8);
    *(a1 + 24) |= 8u;
    *(a1 + 8) = v9;
    if ((*(a2 + 24) & 0x10) == 0)
    {
      return;
    }

LABEL_9:
    v5 = *(a2 + 19);
    *(a1 + 24) |= 0x10u;
    *(a1 + 19) = v5;
  }
}

void sub_24542D9D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_24542D9F0(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
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
      v5 = *(a2 + 8);
      *(a1 + 24) |= 1u;
      *(a1 + 8) = v5;
      v4 = *(a2 + 24);
    }

    if ((v4 & 2) != 0)
    {
      v6 = *(a2 + 16);
      *(a1 + 24) |= 2u;
      *(a1 + 16) = v6;
    }
  }
}

void sub_24542DA9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_24542DAB4(uint64_t a1, _BYTE *a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v7);
  }

  LOBYTE(v4) = a2[16];
  if (v4)
  {
    if (a2[16])
    {
      v5 = a2[8];
      *(a1 + 16) |= 1u;
      *(a1 + 8) = v5;
      v4 = *(a2 + 4);
    }

    if ((v4 & 2) != 0)
    {
      v6 = a2[9];
      *(a1 + 16) |= 2u;
      *(a1 + 9) = v6;
    }
  }
}

void sub_24542DB60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_24542DB78(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v6);
  }

  if (*(a2 + 20))
  {
    v4 = *(a2 + 8);
    *(a1 + 20) |= 1u;
    v5 = *(a1 + 8);
    if (v5 == MEMORY[0x277D82C30])
    {
      operator new();
    }

    std::string::operator=(v5, v4);
  }
}

void sub_24542DC40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_24542DC68(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
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
      v5 = *(a2 + 16);
      if (!sub_24539CC90(v5))
      {
        __assert_rtn("set_request_type", "GpsdProtocol.pb.h", 7665, "::CoreGem::proto::gpsd::Request_Type_IsValid(value)");
      }

      *(a1 + 28) |= 1u;
      *(a1 + 16) = v5;
      v4 = *(a2 + 28);
    }

    if ((v4 & 2) != 0)
    {
      v6 = *(a2 + 8);
      *(a1 + 28) |= 2u;
      *(a1 + 8) = v6;
      v4 = *(a2 + 28);
    }

    if ((v4 & 4) != 0)
    {
      v7 = *(a2 + 20);
      if (v7 >= 0xA)
      {
        __assert_rtn("set_result_code", "GpsdProtocol.pb.h", 7710, "::CoreGem::proto::gnss::Result_IsValid(value)");
      }

      *(a1 + 28) |= 4u;
      *(a1 + 20) = v7;
    }
  }
}

void sub_24542DD8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_24542DDA4(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = &unk_285858CE0;
  sub_24539DA30();

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);
}

void sub_24542DE00(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  sub_24542DDA4(a1);

  JUMPOUT(0x245D6A0D0);
}

uint64_t sub_24542DE84(uint64_t result)
{
  if (*(result + 28))
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
  }

  *(result + 28) = 0;
  return result;
}

uint64_t sub_24542DE98(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormatLite *this, unsigned int a3)
{
  while (1)
  {
    while (1)
    {
      v5 = *(this + 1);
      if (v5 >= *(this + 2) || (TagFallback = *v5, (TagFallback & 0x80000000) != 0))
      {
        TagFallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadTagFallback(this);
        *(this + 8) = TagFallback;
        if (!TagFallback)
        {
          return 1;
        }
      }

      else
      {
        *(this + 8) = TagFallback;
        *(this + 1) = v5 + 1;
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
          v12 = *(this + 1);
          v10 = *(this + 2);
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

      v19 = 0;
      v8 = *(this + 1);
      if (v8 >= *(this + 2) || (v9 = *v8, (v9 & 0x80000000) != 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v19);
        if (!result)
        {
          return result;
        }

        v9 = v19;
      }

      else
      {
        *(this + 1) = v8 + 1;
      }

      if (sub_24539CC90(v9))
      {
        *(a1 + 28) |= 1u;
        *(a1 + 16) = v9;
      }

      v13 = *(this + 1);
      v10 = *(this + 2);
      if (v13 < v10 && *v13 == 16)
      {
        v11 = v13 + 1;
        *(this + 1) = v11;
LABEL_27:
        if (v11 >= v10 || (v14 = *v11, v14 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(this, (a1 + 8));
          if (!result)
          {
            return result;
          }

          v15 = *(this + 1);
          v10 = *(this + 2);
        }

        else
        {
          *(a1 + 8) = v14;
          v15 = v11 + 1;
          *(this + 1) = v15;
        }

        *(a1 + 28) |= 2u;
        if (v15 < v10 && *v15 == 24)
        {
          v12 = v15 + 1;
          *(this + 1) = v12;
LABEL_35:
          v18 = 0;
          if (v12 >= v10 || (v16 = *v12, (v16 & 0x80000000) != 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v18);
            if (!result)
            {
              return result;
            }

            v16 = v18;
          }

          else
          {
            *(this + 1) = v12 + 1;
          }

          if (v16 <= 9)
          {
            *(a1 + 28) |= 4u;
            *(a1 + 20) = v16;
          }

          if (*(this + 1) == *(this + 2) && (*(this + 11) || *(this + 6) == *(this + 10)))
          {
            *(this + 8) = 0;
            result = 1;
            *(this + 36) = 1;
            return result;
          }
        }
      }
    }

    if ((TagFallback & 7) == 0)
    {
      v11 = *(this + 1);
      v10 = *(this + 2);
      goto LABEL_27;
    }

LABEL_16:
    if ((TagFallback & 7) == 4)
    {
      return 1;
    }

    if ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(this, TagFallback) & 1) == 0)
    {
      return 0;
    }
  }
}

uint64_t sub_24542E0B8(uint64_t result, uint64_t a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = result;
  v6 = *(result + 28);
  if ((v6 & 1) == 0)
  {
    if ((v6 & 2) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(2, *(v5 + 8), a2, a4);
    if ((*(v5 + 28) & 4) == 0)
    {
      return result;
    }

    goto LABEL_7;
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(1, *(result + 16), a2, a4);
  v6 = *(v5 + 28);
  if ((v6 & 2) != 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  if ((v6 & 4) == 0)
  {
    return result;
  }

LABEL_7:
  v7 = *(v5 + 20);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(3, v7, a2, a4);
}

uint64_t sub_24542E144(uint64_t a1, unint64_t a2)
{
  LOBYTE(v3) = *(a1 + 28);
  if (!v3)
  {
    v4 = 0;
    goto LABEL_21;
  }

  if ((*(a1 + 28) & 1) == 0)
  {
    v4 = 0;
    if ((*(a1 + 28) & 2) == 0)
    {
      goto LABEL_12;
    }

LABEL_11:
    v4 = v4 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(a1 + 8)) + 1;
    v3 = *(a1 + 28);
    goto LABEL_12;
  }

  v5 = *(a1 + 16);
  if ((v5 & 0x80000000) != 0)
  {
    v4 = 11;
    if ((v3 & 2) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  if (v5 >= 0x80)
  {
    v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5) + 1;
    v3 = *(a1 + 28);
    if ((v3 & 2) != 0)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v4 = 2;
    if ((v3 & 2) != 0)
    {
      goto LABEL_11;
    }
  }

LABEL_12:
  if ((v3 & 4) != 0)
  {
    v6 = *(a1 + 20);
    if ((v6 & 0x80000000) != 0)
    {
      v7 = 11;
    }

    else if (v6 >= 0x80)
    {
      v7 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v6) + 1;
    }

    else
    {
      v7 = 2;
    }

    v4 = (v7 + v4);
  }

LABEL_21:
  *(a1 + 24) = v4;
  return v4;
}

void sub_24542E208(uint64_t a1, void *lpsrc)
{
  if (!__dynamic_cast(lpsrc, MEMORY[0x277D82C38], &unk_28585A098, 0))
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  sub_24542DC68(a1, lpsrc);
}

uint64_t sub_24542E2C4(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_285858D58;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  v3 = MEMORY[0x277D82C30];
  *(a1 + 120) = 0;
  *(a1 + 128) = v3;
  *(a1 + 212) = 0;
  *(a1 + 216) = 0;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 168) = 0u;
  *(a1 + 184) = 0u;
  *(a1 + 196) = 0u;
  sub_24542E360(a1, a2);
  return a1;
}

void sub_24542E360(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v56);
  }

  v4 = *(a2 + 216);
  if (!v4)
  {
    goto LABEL_46;
  }

  if (v4)
  {
    v5 = *(a2 + 8);
    if (v5 > 0x1B || ((1 << v5) & 0xFDFFE3F) == 0)
    {
      __assert_rtn("set_type", "GpsdProtocol.pb.h", 7737, "::CoreGem::proto::gpsd::Indication_Type_IsValid(value)");
    }

    *(a1 + 216) |= 1u;
    *(a1 + 8) = v5;
    v4 = *(a2 + 216);
  }

  if ((v4 & 2) != 0)
  {
    v7 = *(a2 + 12);
    if (!sub_24539CC90(v7))
    {
      __assert_rtn("set_request_type", "GpsdProtocol.pb.h", 7760, "::CoreGem::proto::gpsd::Request_Type_IsValid(value)");
    }

    *(a1 + 216) |= 2u;
    *(a1 + 12) = v7;
    v4 = *(a2 + 216);
  }

  if ((v4 & 4) != 0)
  {
    v8 = *(a2 + 16);
    *(a1 + 216) |= 4u;
    *(a1 + 16) = v8;
    v4 = *(a2 + 216);
    if ((v4 & 8) == 0)
    {
LABEL_15:
      if ((v4 & 0x10) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_26;
    }
  }

  else if ((v4 & 8) == 0)
  {
    goto LABEL_15;
  }

  *(a1 + 216) |= 8u;
  v9 = *(a1 + 24);
  if (!v9)
  {
    operator new();
  }

  v10 = *(a2 + 24);
  if (!v10)
  {
    sub_24539DA30();
    v10 = *(qword_2813CEEC8 + 24);
  }

  sub_2453B7E74(v9, v10);
  v4 = *(a2 + 216);
  if ((v4 & 0x10) == 0)
  {
LABEL_16:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_17;
    }

LABEL_31:
    *(a1 + 216) |= 0x20u;
    v13 = *(a1 + 40);
    if (!v13)
    {
      operator new();
    }

    v14 = *(a2 + 40);
    if (!v14)
    {
      sub_24539DA30();
      v14 = *(qword_2813CEEC8 + 40);
    }

    sub_2453BABD8(v13, v14);
    v4 = *(a2 + 216);
    if ((v4 & 0x40) == 0)
    {
LABEL_18:
      if ((v4 & 0x80) == 0)
      {
        goto LABEL_46;
      }

      goto LABEL_41;
    }

    goto LABEL_36;
  }

LABEL_26:
  *(a1 + 216) |= 0x10u;
  v11 = *(a1 + 32);
  if (!v11)
  {
    operator new();
  }

  v12 = *(a2 + 32);
  if (!v12)
  {
    sub_24539DA30();
    v12 = *(qword_2813CEEC8 + 32);
  }

  sub_2453DAA40(v11, v12);
  v4 = *(a2 + 216);
  if ((v4 & 0x20) != 0)
  {
    goto LABEL_31;
  }

LABEL_17:
  if ((v4 & 0x40) == 0)
  {
    goto LABEL_18;
  }

LABEL_36:
  *(a1 + 216) |= 0x40u;
  v15 = *(a1 + 48);
  if (!v15)
  {
    operator new();
  }

  v16 = *(a2 + 48);
  if (!v16)
  {
    sub_24539DA30();
    v16 = *(qword_2813CEEC8 + 48);
  }

  sub_245430134(v15, v16);
  v4 = *(a2 + 216);
  if ((v4 & 0x80) != 0)
  {
LABEL_41:
    *(a1 + 216) |= 0x80u;
    v17 = *(a1 + 56);
    if (!v17)
    {
      operator new();
    }

    v18 = *(a2 + 56);
    if (!v18)
    {
      sub_24539DA30();
      v18 = *(qword_2813CEEC8 + 56);
    }

    sub_2453B9018(v17, v18);
    v4 = *(a2 + 216);
  }

LABEL_46:
  if ((v4 & 0xFF00) == 0)
  {
    goto LABEL_90;
  }

  if ((v4 & 0x100) != 0)
  {
    *(a1 + 216) |= 0x100u;
    v19 = *(a1 + 64);
    if (!v19)
    {
      operator new();
    }

    v20 = *(a2 + 64);
    if (!v20)
    {
      sub_24539DA30();
      v20 = *(qword_2813CEEC8 + 64);
    }

    sub_245430260(v19, v20);
    v4 = *(a2 + 216);
    if ((v4 & 0x200) == 0)
    {
LABEL_49:
      if ((v4 & 0x400) == 0)
      {
        goto LABEL_50;
      }

      goto LABEL_66;
    }
  }

  else if ((v4 & 0x200) == 0)
  {
    goto LABEL_49;
  }

  *(a1 + 216) |= 0x200u;
  v21 = *(a1 + 72);
  if (!v21)
  {
    operator new();
  }

  v22 = *(a2 + 72);
  if (!v22)
  {
    sub_24539DA30();
    v22 = *(qword_2813CEEC8 + 72);
  }

  sub_2454304C0(v21, v22);
  v4 = *(a2 + 216);
  if ((v4 & 0x400) == 0)
  {
LABEL_50:
    if ((v4 & 0x800) == 0)
    {
      goto LABEL_51;
    }

    goto LABEL_71;
  }

LABEL_66:
  *(a1 + 216) |= 0x400u;
  v23 = *(a1 + 80);
  if (!v23)
  {
    operator new();
  }

  v24 = *(a2 + 80);
  if (!v24)
  {
    sub_24539DA30();
    v24 = *(qword_2813CEEC8 + 80);
  }

  sub_2453BB7C0(v23, v24);
  v4 = *(a2 + 216);
  if ((v4 & 0x800) == 0)
  {
LABEL_51:
    if ((v4 & 0x1000) == 0)
    {
      goto LABEL_52;
    }

    goto LABEL_76;
  }

LABEL_71:
  *(a1 + 216) |= 0x800u;
  v25 = *(a1 + 88);
  if (!v25)
  {
    operator new();
  }

  v26 = *(a2 + 88);
  if (!v26)
  {
    sub_24539DA30();
    v26 = *(qword_2813CEEC8 + 88);
  }

  sub_2453BB2EC(v25, v26);
  v4 = *(a2 + 216);
  if ((v4 & 0x1000) == 0)
  {
LABEL_52:
    if ((v4 & 0x2000) == 0)
    {
      goto LABEL_53;
    }

    goto LABEL_78;
  }

LABEL_76:
  v27 = *(a2 + 96);
  if (v27 >= 0xA)
  {
    __assert_rtn("set_start_status", "GpsdProtocol.pb.h", 8183, "::CoreGem::proto::gnss::Result_IsValid(value)");
  }

  *(a1 + 216) |= 0x1000u;
  *(a1 + 96) = v27;
  v4 = *(a2 + 216);
  if ((v4 & 0x2000) == 0)
  {
LABEL_53:
    if ((v4 & 0x4000) == 0)
    {
      goto LABEL_54;
    }

    goto LABEL_80;
  }

LABEL_78:
  v28 = *(a2 + 100);
  if (v28 >= 0xA)
  {
    __assert_rtn("set_stop_status", "GpsdProtocol.pb.h", 8206, "::CoreGem::proto::gnss::Result_IsValid(value)");
  }

  *(a1 + 216) |= 0x2000u;
  *(a1 + 100) = v28;
  v4 = *(a2 + 216);
  if ((v4 & 0x4000) == 0)
  {
LABEL_54:
    if ((v4 & 0x8000) == 0)
    {
      goto LABEL_90;
    }

    goto LABEL_85;
  }

LABEL_80:
  *(a1 + 216) |= 0x4000u;
  v29 = *(a1 + 104);
  if (!v29)
  {
    operator new();
  }

  v30 = *(a2 + 104);
  if (!v30)
  {
    sub_24539DA30();
    v30 = *(qword_2813CEEC8 + 104);
  }

  sub_24543058C(v29, v30);
  v4 = *(a2 + 216);
  if ((v4 & 0x8000) != 0)
  {
LABEL_85:
    *(a1 + 216) |= 0x8000u;
    v31 = *(a1 + 112);
    if (!v31)
    {
      operator new();
    }

    v32 = *(a2 + 112);
    if (!v32)
    {
      sub_24539DA30();
      v32 = *(qword_2813CEEC8 + 112);
    }

    sub_245430678(v31, v32);
    v4 = *(a2 + 216);
  }

LABEL_90:
  if ((v4 & 0xFF0000) == 0)
  {
    goto LABEL_138;
  }

  if ((v4 & 0x10000) != 0)
  {
    *(a1 + 216) |= 0x10000u;
    v33 = *(a1 + 120);
    if (!v33)
    {
      operator new();
    }

    v34 = *(a2 + 120);
    if (!v34)
    {
      sub_24539DA30();
      v34 = *(qword_2813CEEC8 + 120);
    }

    sub_2453EBDF0(v33, v34);
    v4 = *(a2 + 216);
    if ((v4 & 0x20000) == 0)
    {
LABEL_93:
      if ((v4 & 0x40000) == 0)
      {
        goto LABEL_94;
      }

      goto LABEL_108;
    }
  }

  else if ((v4 & 0x20000) == 0)
  {
    goto LABEL_93;
  }

  v35 = *(a2 + 128);
  *(a1 + 216) |= 0x20000u;
  v36 = *(a1 + 128);
  if (v36 == MEMORY[0x277D82C30])
  {
    operator new();
  }

  std::string::operator=(v36, v35);
  v4 = *(a2 + 216);
  if ((v4 & 0x40000) == 0)
  {
LABEL_94:
    if ((v4 & 0x80000) == 0)
    {
      goto LABEL_95;
    }

    goto LABEL_113;
  }

LABEL_108:
  *(a1 + 216) |= 0x40000u;
  v37 = *(a1 + 136);
  if (!v37)
  {
    operator new();
  }

  v38 = *(a2 + 136);
  if (!v38)
  {
    sub_24539DA30();
    v38 = *(qword_2813CEEC8 + 136);
  }

  sub_24540946C(v37, v38);
  v4 = *(a2 + 216);
  if ((v4 & 0x80000) == 0)
  {
LABEL_95:
    if ((v4 & 0x100000) == 0)
    {
      goto LABEL_96;
    }

    goto LABEL_118;
  }

LABEL_113:
  *(a1 + 216) |= 0x80000u;
  v39 = *(a1 + 144);
  if (!v39)
  {
    operator new();
  }

  v40 = *(a2 + 144);
  if (!v40)
  {
    sub_24539DA30();
    v40 = *(qword_2813CEEC8 + 144);
  }

  sub_24540EEF8(v39, v40);
  v4 = *(a2 + 216);
  if ((v4 & 0x100000) == 0)
  {
LABEL_96:
    if ((v4 & 0x200000) == 0)
    {
      goto LABEL_97;
    }

    goto LABEL_123;
  }

LABEL_118:
  *(a1 + 216) |= 0x100000u;
  v41 = *(a1 + 152);
  if (!v41)
  {
    operator new();
  }

  v42 = *(a2 + 152);
  if (!v42)
  {
    sub_24539DA30();
    v42 = *(qword_2813CEEC8 + 152);
  }

  sub_245414FBC(v41, v42);
  v4 = *(a2 + 216);
  if ((v4 & 0x200000) == 0)
  {
LABEL_97:
    if ((v4 & 0x400000) == 0)
    {
      goto LABEL_98;
    }

    goto LABEL_128;
  }

LABEL_123:
  *(a1 + 216) |= 0x200000u;
  v43 = *(a1 + 160);
  if (!v43)
  {
    operator new();
  }

  v44 = *(a2 + 160);
  if (!v44)
  {
    sub_24539DA30();
    v44 = *(qword_2813CEEC8 + 160);
  }

  sub_245421988(v43, v44);
  v4 = *(a2 + 216);
  if ((v4 & 0x400000) == 0)
  {
LABEL_98:
    if ((v4 & 0x800000) == 0)
    {
      goto LABEL_138;
    }

    goto LABEL_133;
  }

LABEL_128:
  *(a1 + 216) |= 0x400000u;
  v45 = *(a1 + 168);
  if (!v45)
  {
    operator new();
  }

  v46 = *(a2 + 168);
  if (!v46)
  {
    sub_24539DA30();
    v46 = *(qword_2813CEEC8 + 168);
  }

  sub_245425380(v45, v46);
  v4 = *(a2 + 216);
  if ((v4 & 0x800000) != 0)
  {
LABEL_133:
    *(a1 + 216) |= 0x800000u;
    v47 = *(a1 + 176);
    if (!v47)
    {
      operator new();
    }

    v48 = *(a2 + 176);
    if (!v48)
    {
      sub_24539DA30();
      v48 = *(qword_2813CEEC8 + 176);
    }

    sub_2453F5638(v47, v48);
    v4 = *(a2 + 216);
  }

LABEL_138:
  if (!HIBYTE(v4))
  {
    return;
  }

  if ((v4 & 0x1000000) != 0)
  {
    *(a1 + 216) |= 0x1000000u;
    v52 = *(a1 + 184);
    if (!v52)
    {
      operator new();
    }

    v53 = *(a2 + 184);
    if (!v53)
    {
      sub_24539DA30();
      v53 = *(qword_2813CEEC8 + 184);
    }

    sub_2453F375C(v52, v53);
    v4 = *(a2 + 216);
    if ((v4 & 0x2000000) == 0)
    {
LABEL_141:
      if ((v4 & 0x4000000) == 0)
      {
        goto LABEL_142;
      }

      goto LABEL_157;
    }
  }

  else if ((v4 & 0x2000000) == 0)
  {
    goto LABEL_141;
  }

  v54 = *(a2 + 192);
  *(a1 + 216) |= 0x2000000u;
  *(a1 + 192) = v54;
  v4 = *(a2 + 216);
  if ((v4 & 0x4000000) == 0)
  {
LABEL_142:
    if ((v4 & 0x8000000) == 0)
    {
      goto LABEL_144;
    }

    goto LABEL_143;
  }

LABEL_157:
  v55 = *(a2 + 196);
  if (v55 >= 3 && v55 != 4)
  {
    __assert_rtn("set_supl_init_decode_result", "GpsdProtocol.pb.h", 8741, "::CoreGem::proto::gpsd::SuplInitDecodeResult_IsValid(value)");
  }

  *(a1 + 216) |= 0x4000000u;
  *(a1 + 196) = v55;
  v4 = *(a2 + 216);
  if ((v4 & 0x8000000) == 0)
  {
    goto LABEL_144;
  }

LABEL_143:
  v49 = *(a2 + 208);
  *(a1 + 216) |= 0x8000000u;
  *(a1 + 208) = v49;
  v4 = *(a2 + 216);
LABEL_144:
  if ((v4 & 0x10000000) != 0)
  {
    *(a1 + 216) |= 0x10000000u;
    v50 = *(a1 + 200);
    if (!v50)
    {
      operator new();
    }

    v51 = *(a2 + 200);
    if (!v51)
    {
      sub_24539DA30();
      v51 = *(qword_2813CEEC8 + 200);
    }

    sub_2453F0454(v50, v51);
  }
}

void sub_24542F144(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_24542F1EC(uint64_t result)
{
  if (*(result + 32))
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 23) = 0;
  }

  *(result + 32) = 0;
  return result;
}

uint64_t sub_24542F204(uint64_t result)
{
  v1 = result;
  if ((*(result + 44) & 2) != 0)
  {
    v2 = *(result + 32);
    if (v2)
    {
      if (*(v2 + 20))
      {
        *(v2 + 11) = 0;
        *(v2 + 8) = 0;
      }

      *(v2 + 20) = 0;
    }
  }

  if (*(result + 16) >= 1)
  {
    v3 = 0;
    do
    {
      v4 = *(*(v1 + 8) + 8 * v3);
      result = (*(*v4 + 32))(v4);
      ++v3;
    }

    while (v3 < *(v1 + 16));
  }

  *(v1 + 16) = 0;
  *(v1 + 44) = 0;
  return result;
}

uint64_t sub_24542F29C(uint64_t result)
{
  if (*(result + 16))
  {
    *(result + 8) = 0;
  }

  *(result + 16) = 0;
  return result;
}

uint64_t sub_24542F2B0(uint64_t result)
{
  if (*(result + 24))
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
  }

  *(result + 24) = 0;
  return result;
}

uint64_t sub_24542F2C8(uint64_t result)
{
  v1 = *(result + 36);
  if (v1)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    if ((v1 & 4) != 0)
    {
      v2 = *(result + 24);
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

  *(result + 36) = 0;
  return result;
}

uint64_t sub_24542F314(uint64_t result, const wireless_diagnostics::google::protobuf::MessageLite *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = result;
  v6 = *(result + 216);
  if (v6)
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(1, *(result + 8), a2, a4);
    v6 = *(v5 + 216);
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

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(2, *(v5 + 12), a2, a4);
  v6 = *(v5 + 216);
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
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(3, *(v5 + 16), a2, a4);
  v6 = *(v5 + 216);
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_37;
  }

LABEL_34:
  v7 = *(v5 + 24);
  if (!v7)
  {
    sub_24539DA30();
    v7 = *(qword_2813CEEC8 + 24);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(4, v7, a2, a4);
  v6 = *(v5 + 216);
  if ((v6 & 0x10) == 0)
  {
LABEL_6:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_40;
  }

LABEL_37:
  v8 = *(v5 + 32);
  if (!v8)
  {
    sub_24539DA30();
    v8 = *(qword_2813CEEC8 + 32);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(5, v8, a2, a4);
  v6 = *(v5 + 216);
  if ((v6 & 0x20) == 0)
  {
LABEL_7:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_43;
  }

LABEL_40:
  v9 = *(v5 + 40);
  if (!v9)
  {
    sub_24539DA30();
    v9 = *(qword_2813CEEC8 + 40);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(6, v9, a2, a4);
  v6 = *(v5 + 216);
  if ((v6 & 0x40) == 0)
  {
LABEL_8:
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_46;
  }

LABEL_43:
  v10 = *(v5 + 48);
  if (!v10)
  {
    sub_24539DA30();
    v10 = *(qword_2813CEEC8 + 48);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(9, v10, a2, a4);
  v6 = *(v5 + 216);
  if ((v6 & 0x80) == 0)
  {
LABEL_9:
    if ((v6 & 0x100) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_49;
  }

LABEL_46:
  v11 = *(v5 + 56);
  if (!v11)
  {
    sub_24539DA30();
    v11 = *(qword_2813CEEC8 + 56);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0xA, v11, a2, a4);
  v6 = *(v5 + 216);
  if ((v6 & 0x100) == 0)
  {
LABEL_10:
    if ((v6 & 0x200) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_52;
  }

LABEL_49:
  v12 = *(v5 + 64);
  if (!v12)
  {
    sub_24539DA30();
    v12 = *(qword_2813CEEC8 + 64);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x10, v12, a2, a4);
  v6 = *(v5 + 216);
  if ((v6 & 0x200) == 0)
  {
LABEL_11:
    if ((v6 & 0x400) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_55;
  }

LABEL_52:
  v13 = *(v5 + 72);
  if (!v13)
  {
    sub_24539DA30();
    v13 = *(qword_2813CEEC8 + 72);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x11, v13, a2, a4);
  v6 = *(v5 + 216);
  if ((v6 & 0x400) == 0)
  {
LABEL_12:
    if ((v6 & 0x800) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_58;
  }

LABEL_55:
  v14 = *(v5 + 80);
  if (!v14)
  {
    sub_24539DA30();
    v14 = *(qword_2813CEEC8 + 80);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x12, v14, a2, a4);
  v6 = *(v5 + 216);
  if ((v6 & 0x800) == 0)
  {
LABEL_13:
    if ((v6 & 0x2000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_61;
  }

LABEL_58:
  v15 = *(v5 + 88);
  if (!v15)
  {
    sub_24539DA30();
    v15 = *(qword_2813CEEC8 + 88);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x13, v15, a2, a4);
  v6 = *(v5 + 216);
  if ((v6 & 0x2000) == 0)
  {
LABEL_14:
    if ((v6 & 0x1000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_62;
  }

LABEL_61:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(0x14, *(v5 + 100), a2, a4);
  v6 = *(v5 + 216);
  if ((v6 & 0x1000) == 0)
  {
LABEL_15:
    if ((v6 & 0x4000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_63;
  }

LABEL_62:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(0x16, *(v5 + 96), a2, a4);
  v6 = *(v5 + 216);
  if ((v6 & 0x4000) == 0)
  {
LABEL_16:
    if ((v6 & 0x8000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_66;
  }

LABEL_63:
  v16 = *(v5 + 104);
  if (!v16)
  {
    sub_24539DA30();
    v16 = *(qword_2813CEEC8 + 104);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x17, v16, a2, a4);
  v6 = *(v5 + 216);
  if ((v6 & 0x8000) == 0)
  {
LABEL_17:
    if ((v6 & 0x10000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_69;
  }

LABEL_66:
  v17 = *(v5 + 112);
  if (!v17)
  {
    sub_24539DA30();
    v17 = *(qword_2813CEEC8 + 112);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x19, v17, a2, a4);
  v6 = *(v5 + 216);
  if ((v6 & 0x10000) == 0)
  {
LABEL_18:
    if ((v6 & 0x20000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_72;
  }

LABEL_69:
  v18 = *(v5 + 120);
  if (!v18)
  {
    sub_24539DA30();
    v18 = *(qword_2813CEEC8 + 120);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x1E, v18, a2, a4);
  v6 = *(v5 + 216);
  if ((v6 & 0x20000) == 0)
  {
LABEL_19:
    if ((v6 & 0x40000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_73;
  }

LABEL_72:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBytes();
  v6 = *(v5 + 216);
  if ((v6 & 0x40000) == 0)
  {
LABEL_20:
    if ((v6 & 0x80000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_76;
  }

LABEL_73:
  v19 = *(v5 + 136);
  if (!v19)
  {
    sub_24539DA30();
    v19 = *(qword_2813CEEC8 + 136);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x28, v19, a2, a4);
  v6 = *(v5 + 216);
  if ((v6 & 0x80000) == 0)
  {
LABEL_21:
    if ((v6 & 0x100000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_79;
  }

LABEL_76:
  v20 = *(v5 + 144);
  if (!v20)
  {
    sub_24539DA30();
    v20 = *(qword_2813CEEC8 + 144);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x29, v20, a2, a4);
  v6 = *(v5 + 216);
  if ((v6 & 0x100000) == 0)
  {
LABEL_22:
    if ((v6 & 0x200000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_82;
  }

LABEL_79:
  v21 = *(v5 + 152);
  if (!v21)
  {
    sub_24539DA30();
    v21 = *(qword_2813CEEC8 + 152);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x2A, v21, a2, a4);
  v6 = *(v5 + 216);
  if ((v6 & 0x200000) == 0)
  {
LABEL_23:
    if ((v6 & 0x400000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_85;
  }

LABEL_82:
  v22 = *(v5 + 160);
  if (!v22)
  {
    sub_24539DA30();
    v22 = *(qword_2813CEEC8 + 160);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x2B, v22, a2, a4);
  v6 = *(v5 + 216);
  if ((v6 & 0x400000) == 0)
  {
LABEL_24:
    if ((v6 & 0x800000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_88;
  }

LABEL_85:
  v23 = *(v5 + 168);
  if (!v23)
  {
    sub_24539DA30();
    v23 = *(qword_2813CEEC8 + 168);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x2C, v23, a2, a4);
  v6 = *(v5 + 216);
  if ((v6 & 0x800000) == 0)
  {
LABEL_25:
    if ((v6 & 0x1000000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_91;
  }

LABEL_88:
  v24 = *(v5 + 176);
  if (!v24)
  {
    sub_24539DA30();
    v24 = *(qword_2813CEEC8 + 176);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x32, v24, a2, a4);
  v6 = *(v5 + 216);
  if ((v6 & 0x1000000) == 0)
  {
LABEL_26:
    if ((v6 & 0x2000000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_94;
  }

LABEL_91:
  v25 = *(v5 + 184);
  if (!v25)
  {
    sub_24539DA30();
    v25 = *(qword_2813CEEC8 + 184);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x33, v25, a2, a4);
  v6 = *(v5 + 216);
  if ((v6 & 0x2000000) == 0)
  {
LABEL_27:
    if ((v6 & 0x4000000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_95;
  }

LABEL_94:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x34, *(v5 + 192), a2, a4);
  v6 = *(v5 + 216);
  if ((v6 & 0x4000000) == 0)
  {
LABEL_28:
    if ((v6 & 0x8000000) == 0)
    {
      goto LABEL_29;
    }

LABEL_96:
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x36, *(v5 + 208), a2, a4);
    if ((*(v5 + 216) & 0x10000000) == 0)
    {
      return result;
    }

    goto LABEL_97;
  }

LABEL_95:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(0x35, *(v5 + 196), a2, a4);
  v6 = *(v5 + 216);
  if ((v6 & 0x8000000) != 0)
  {
    goto LABEL_96;
  }

LABEL_29:
  if ((v6 & 0x10000000) == 0)
  {
    return result;
  }

LABEL_97:
  v26 = *(v5 + 200);
  if (!v26)
  {
    sub_24539DA30();
    v26 = *(qword_2813CEEC8 + 200);
  }

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x37, v26, a2, a4);
}

uint64_t sub_24542F808(uint64_t a1, unint64_t a2)
{
  v3 = *(a1 + 216);
  if (!v3)
  {
    v4 = 0;
    goto LABEL_57;
  }

  if (v3)
  {
    v5 = *(a1 + 8);
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
      v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5) + 1;
      v3 = *(a1 + 216);
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

  v6 = *(a1 + 12);
  if ((v6 & 0x80000000) != 0)
  {
    v7 = 11;
  }

  else if (v6 >= 0x80)
  {
    v7 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v6) + 1;
    v3 = *(a1 + 216);
  }

  else
  {
    v7 = 2;
  }

  v4 = (v7 + v4);
LABEL_19:
  if ((v3 & 4) != 0)
  {
    v4 = v4 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(a1 + 16)) + 1;
    v3 = *(a1 + 216);
    if ((v3 & 8) == 0)
    {
LABEL_21:
      if ((v3 & 0x10) == 0)
      {
        goto LABEL_22;
      }

      goto LABEL_33;
    }
  }

  else if ((v3 & 8) == 0)
  {
    goto LABEL_21;
  }

  v8 = *(a1 + 24);
  if (!v8)
  {
    sub_24539DA30();
    v8 = *(qword_2813CEEC8 + 24);
  }

  v9 = sub_2453B8358(v8, a2);
  v10 = v9;
  if (v9 >= 0x80)
  {
    v11 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v9);
  }

  else
  {
    v11 = 1;
  }

  v4 = (v4 + v10 + v11 + 1);
  v3 = *(a1 + 216);
  if ((v3 & 0x10) == 0)
  {
LABEL_22:
    if ((v3 & 0x20) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_39;
  }

LABEL_33:
  v12 = *(a1 + 32);
  if (!v12)
  {
    sub_24539DA30();
    v12 = *(qword_2813CEEC8 + 32);
  }

  v13 = sub_2453DC140(v12, a2);
  v14 = v13;
  if (v13 >= 0x80)
  {
    v15 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v13);
  }

  else
  {
    v15 = 1;
  }

  v4 = (v4 + v14 + v15 + 1);
  v3 = *(a1 + 216);
  if ((v3 & 0x20) == 0)
  {
LABEL_23:
    if ((v3 & 0x40) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_45;
  }

LABEL_39:
  v16 = *(a1 + 40);
  if (!v16)
  {
    sub_24539DA30();
    v16 = *(qword_2813CEEC8 + 40);
  }

  v17 = sub_2453BB198(v16, a2);
  v18 = v17;
  if (v17 >= 0x80)
  {
    v19 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v17);
  }

  else
  {
    v19 = 1;
  }

  v4 = (v4 + v18 + v19 + 1);
  v3 = *(a1 + 216);
  if ((v3 & 0x40) == 0)
  {
LABEL_24:
    if ((v3 & 0x80) == 0)
    {
      goto LABEL_57;
    }

    goto LABEL_51;
  }

LABEL_45:
  v20 = *(a1 + 48);
  if (!v20)
  {
    sub_24539DA30();
    v20 = *(qword_2813CEEC8 + 48);
  }

  v21 = sub_245430C68(v20, a2);
  v22 = v21;
  if (v21 >= 0x80)
  {
    v23 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v21);
  }

  else
  {
    v23 = 1;
  }

  v4 = (v4 + v22 + v23 + 1);
  v3 = *(a1 + 216);
  if ((v3 & 0x80) != 0)
  {
LABEL_51:
    v24 = *(a1 + 56);
    if (!v24)
    {
      sub_24539DA30();
      v24 = *(qword_2813CEEC8 + 56);
    }

    v25 = sub_2453B97A4(v24, a2);
    v26 = v25;
    if (v25 >= 0x80)
    {
      v27 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v25);
    }

    else
    {
      v27 = 1;
    }

    v4 = (v4 + v26 + v27 + 1);
    v3 = *(a1 + 216);
  }

LABEL_57:
  if ((v3 & 0xFF00) == 0)
  {
    goto LABEL_115;
  }

  if ((v3 & 0x100) != 0)
  {
    v28 = *(a1 + 64);
    if (!v28)
    {
      sub_24539DA30();
      v28 = *(qword_2813CEEC8 + 64);
    }

    v29 = sub_24543918C(v28, a2);
    v30 = v29;
    if (v29 >= 0x80)
    {
      v31 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v29);
    }

    else
    {
      v31 = 1;
    }

    v4 = (v4 + v30 + v31 + 2);
    v3 = *(a1 + 216);
    if ((v3 & 0x200) == 0)
    {
LABEL_60:
      if ((v3 & 0x400) == 0)
      {
        goto LABEL_61;
      }

      goto LABEL_79;
    }
  }

  else if ((v3 & 0x200) == 0)
  {
    goto LABEL_60;
  }

  v32 = *(a1 + 72);
  if (!v32)
  {
    sub_24539DA30();
    v32 = *(qword_2813CEEC8 + 72);
  }

  v33 = sub_245439530(v32, a2);
  v34 = v33;
  if (v33 >= 0x80)
  {
    v35 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v33);
  }

  else
  {
    v35 = 1;
  }

  v4 = (v4 + v34 + v35 + 2);
  v3 = *(a1 + 216);
  if ((v3 & 0x400) == 0)
  {
LABEL_61:
    if ((v3 & 0x800) == 0)
    {
      goto LABEL_62;
    }

    goto LABEL_85;
  }

LABEL_79:
  v36 = *(a1 + 80);
  if (!v36)
  {
    sub_24539DA30();
    v36 = *(qword_2813CEEC8 + 80);
  }

  v37 = sub_2453BBD30(v36, a2);
  v38 = v37;
  if (v37 >= 0x80)
  {
    v39 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v37);
  }

  else
  {
    v39 = 1;
  }

  v4 = (v4 + v38 + v39 + 2);
  v3 = *(a1 + 216);
  if ((v3 & 0x800) == 0)
  {
LABEL_62:
    if ((v3 & 0x1000) == 0)
    {
      goto LABEL_63;
    }

    goto LABEL_91;
  }

LABEL_85:
  v40 = *(a1 + 88);
  if (!v40)
  {
    sub_24539DA30();
    v40 = *(qword_2813CEEC8 + 88);
  }

  v41 = sub_2453BB6AC(v40, a2);
  v42 = v41;
  if (v41 >= 0x80)
  {
    v43 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v41);
  }

  else
  {
    v43 = 1;
  }

  v4 = (v4 + v42 + v43 + 2);
  v3 = *(a1 + 216);
  if ((v3 & 0x1000) == 0)
  {
LABEL_63:
    if ((v3 & 0x2000) == 0)
    {
      goto LABEL_64;
    }

    goto LABEL_97;
  }

LABEL_91:
  v44 = *(a1 + 96);
  if ((v44 & 0x80000000) != 0)
  {
    v45 = 12;
  }

  else if (v44 >= 0x80)
  {
    v45 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v44) + 2;
    v3 = *(a1 + 216);
  }

  else
  {
    v45 = 3;
  }

  v4 = (v45 + v4);
  if ((v3 & 0x2000) == 0)
  {
LABEL_64:
    if ((v3 & 0x4000) == 0)
    {
      goto LABEL_65;
    }

    goto LABEL_103;
  }

LABEL_97:
  v46 = *(a1 + 100);
  if ((v46 & 0x80000000) != 0)
  {
    v47 = 12;
  }

  else if (v46 >= 0x80)
  {
    v47 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v46) + 2;
    v3 = *(a1 + 216);
  }

  else
  {
    v47 = 3;
  }

  v4 = (v47 + v4);
  if ((v3 & 0x4000) == 0)
  {
LABEL_65:
    if ((v3 & 0x8000) == 0)
    {
      goto LABEL_115;
    }

    goto LABEL_109;
  }

LABEL_103:
  v48 = *(a1 + 104);
  if (!v48)
  {
    sub_24539DA30();
    v48 = *(qword_2813CEEC8 + 104);
  }

  v49 = sub_24543CBE4(v48, a2);
  v50 = v49;
  if (v49 >= 0x80)
  {
    v51 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v49);
  }

  else
  {
    v51 = 1;
  }

  v4 = (v4 + v50 + v51 + 2);
  v3 = *(a1 + 216);
  if ((v3 & 0x8000) != 0)
  {
LABEL_109:
    v52 = *(a1 + 112);
    if (!v52)
    {
      sub_24539DA30();
      v52 = *(qword_2813CEEC8 + 112);
    }

    v53 = sub_24543D144(v52, a2);
    v54 = v53;
    if (v53 >= 0x80)
    {
      v55 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v53);
    }

    else
    {
      v55 = 1;
    }

    v4 = (v4 + v54 + v55 + 2);
    v3 = *(a1 + 216);
  }

LABEL_115:
  if ((v3 & 0xFF0000) == 0)
  {
    goto LABEL_176;
  }

  if ((v3 & 0x10000) != 0)
  {
    v56 = *(a1 + 120);
    if (!v56)
    {
      sub_24539DA30();
      v56 = *(qword_2813CEEC8 + 120);
    }

    v57 = sub_2453ECDE0(v56, a2);
    v58 = v57;
    if (v57 >= 0x80)
    {
      v59 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v57);
    }

    else
    {
      v59 = 1;
    }

    v4 = (v4 + v58 + v59 + 2);
    v3 = *(a1 + 216);
    if ((v3 & 0x20000) == 0)
    {
LABEL_118:
      if ((v3 & 0x40000) == 0)
      {
        goto LABEL_119;
      }

      goto LABEL_140;
    }
  }

  else if ((v3 & 0x20000) == 0)
  {
    goto LABEL_118;
  }

  v60 = *(a1 + 128);
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
    v3 = *(a1 + 216);
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

  v4 = (v4 + v65 + v61 + 2);
  if ((v3 & 0x40000) == 0)
  {
LABEL_119:
    if ((v3 & 0x80000) == 0)
    {
      goto LABEL_120;
    }

    goto LABEL_146;
  }

LABEL_140:
  v66 = *(a1 + 136);
  if (!v66)
  {
    sub_24539DA30();
    v66 = *(qword_2813CEEC8 + 136);
  }

  v67 = sub_24540A420(v66, a2);
  v68 = v67;
  if (v67 >= 0x80)
  {
    v69 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v67);
  }

  else
  {
    v69 = 1;
  }

  v4 = (v4 + v68 + v69 + 2);
  v3 = *(a1 + 216);
  if ((v3 & 0x80000) == 0)
  {
LABEL_120:
    if ((v3 & 0x100000) == 0)
    {
      goto LABEL_121;
    }

    goto LABEL_152;
  }

LABEL_146:
  v70 = *(a1 + 144);
  if (!v70)
  {
    sub_24539DA30();
    v70 = *(qword_2813CEEC8 + 144);
  }

  v71 = sub_24540FB38(v70, a2);
  v72 = v71;
  if (v71 >= 0x80)
  {
    v73 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v71);
  }

  else
  {
    v73 = 1;
  }

  v4 = (v4 + v72 + v73 + 2);
  v3 = *(a1 + 216);
  if ((v3 & 0x100000) == 0)
  {
LABEL_121:
    if ((v3 & 0x200000) == 0)
    {
      goto LABEL_122;
    }

    goto LABEL_158;
  }

LABEL_152:
  v74 = *(a1 + 152);
  if (!v74)
  {
    sub_24539DA30();
    v74 = *(qword_2813CEEC8 + 152);
  }

  v75 = sub_245415AB0(v74, a2);
  v76 = v75;
  if (v75 >= 0x80)
  {
    v77 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v75);
  }

  else
  {
    v77 = 1;
  }

  v4 = (v4 + v76 + v77 + 2);
  v3 = *(a1 + 216);
  if ((v3 & 0x200000) == 0)
  {
LABEL_122:
    if ((v3 & 0x400000) == 0)
    {
      goto LABEL_123;
    }

    goto LABEL_164;
  }

LABEL_158:
  v78 = *(a1 + 160);
  if (!v78)
  {
    sub_24539DA30();
    v78 = *(qword_2813CEEC8 + 160);
  }

  v79 = sub_245421C7C(v78, a2);
  v80 = v79;
  if (v79 >= 0x80)
  {
    v81 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v79);
  }

  else
  {
    v81 = 1;
  }

  v4 = (v4 + v80 + v81 + 2);
  v3 = *(a1 + 216);
  if ((v3 & 0x400000) == 0)
  {
LABEL_123:
    if ((v3 & 0x800000) == 0)
    {
      goto LABEL_176;
    }

    goto LABEL_170;
  }

LABEL_164:
  v82 = *(a1 + 168);
  if (!v82)
  {
    sub_24539DA30();
    v82 = *(qword_2813CEEC8 + 168);
  }

  v83 = sub_245426008(v82, a2);
  v84 = v83;
  if (v83 >= 0x80)
  {
    v85 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v83);
  }

  else
  {
    v85 = 1;
  }

  v4 = (v4 + v84 + v85 + 2);
  v3 = *(a1 + 216);
  if ((v3 & 0x800000) != 0)
  {
LABEL_170:
    v86 = *(a1 + 176);
    if (!v86)
    {
      sub_24539DA30();
      v86 = *(qword_2813CEEC8 + 176);
    }

    v87 = sub_2453F6700(v86, a2);
    v88 = v87;
    if (v87 >= 0x80)
    {
      v89 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v87);
    }

    else
    {
      v89 = 1;
    }

    v4 = (v4 + v88 + v89 + 2);
    v3 = *(a1 + 216);
  }

LABEL_176:
  if (!HIBYTE(v3))
  {
    goto LABEL_209;
  }

  if ((v3 & 0x1000000) != 0)
  {
    v90 = *(a1 + 184);
    if (!v90)
    {
      sub_24539DA30();
      v90 = *(qword_2813CEEC8 + 184);
    }

    v91 = sub_2453F43AC(v90, a2);
    v92 = v91;
    if (v91 >= 0x80)
    {
      v93 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v91);
    }

    else
    {
      v93 = 1;
    }

    v4 = (v4 + v92 + v93 + 2);
    v3 = *(a1 + 216);
    if ((v3 & 0x2000000) == 0)
    {
LABEL_179:
      if ((v3 & 0x4000000) == 0)
      {
        goto LABEL_180;
      }

      goto LABEL_193;
    }
  }

  else if ((v3 & 0x2000000) == 0)
  {
    goto LABEL_179;
  }

  v94 = *(a1 + 192);
  if (v94 >= 0x80)
  {
    v95 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v94) + 2;
    v3 = *(a1 + 216);
  }

  else
  {
    v95 = 3;
  }

  v4 = (v95 + v4);
  if ((v3 & 0x4000000) == 0)
  {
LABEL_180:
    if ((v3 & 0x8000000) == 0)
    {
      goto LABEL_181;
    }

LABEL_199:
    v98 = *(a1 + 208);
    if (v98 >= 0x80)
    {
      v99 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v98) + 2;
      v3 = *(a1 + 216);
    }

    else
    {
      v99 = 3;
    }

    v4 = (v99 + v4);
    if ((v3 & 0x10000000) == 0)
    {
      goto LABEL_209;
    }

    goto LABEL_203;
  }

LABEL_193:
  v96 = *(a1 + 196);
  if ((v96 & 0x80000000) != 0)
  {
    v97 = 12;
  }

  else if (v96 >= 0x80)
  {
    v97 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v96) + 2;
    v3 = *(a1 + 216);
  }

  else
  {
    v97 = 3;
  }

  v4 = (v97 + v4);
  if ((v3 & 0x8000000) != 0)
  {
    goto LABEL_199;
  }

LABEL_181:
  if ((v3 & 0x10000000) == 0)
  {
    goto LABEL_209;
  }

LABEL_203:
  v100 = *(a1 + 200);
  if (!v100)
  {
    sub_24539DA30();
    v100 = *(qword_2813CEEC8 + 200);
  }

  v101 = sub_2453F0818(v100, a2);
  v102 = v101;
  if (v101 >= 0x80)
  {
    v103 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v101);
  }

  else
  {
    v103 = 1;
  }

  v4 = (v4 + v102 + v103 + 2);
LABEL_209:
  *(a1 + 212) = v4;
  return v4;
}