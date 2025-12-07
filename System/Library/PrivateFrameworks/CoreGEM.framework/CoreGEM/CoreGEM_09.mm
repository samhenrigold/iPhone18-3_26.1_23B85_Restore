uint64_t sub_2453FF088(uint64_t result, wireless_diagnostics::google::protobuf::MessageLite *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = result;
  v6 = *(result + 60);
  if (v6)
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(1, *(result + 8), a2, a4);
    v6 = *(v5 + 60);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_15;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(2, *(v5 + 12), a2, a4);
  v6 = *(v5 + 60);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_16;
  }

LABEL_15:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(3, *(v5 + 16), a2, a4);
  v6 = *(v5 + 60);
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_17;
  }

LABEL_16:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(4, *(v5 + 20), a2, a4);
  v6 = *(v5 + 60);
  if ((v6 & 0x10) == 0)
  {
LABEL_6:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_20;
  }

LABEL_17:
  v7 = *(v5 + 24);
  if (!v7)
  {
    sub_2453EB7EC();
    v7 = *(qword_2813CEA98 + 24);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(5, v7, a2, a4);
  v6 = *(v5 + 60);
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
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(6, *(v5 + 32), a2, a4);
  v6 = *(v5 + 60);
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
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(7, *(v5 + 36), a2, a4);
  v6 = *(v5 + 60);
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
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(8, *(v5 + 40), a2, a4);
  v6 = *(v5 + 60);
  if ((v6 & 0x100) == 0)
  {
LABEL_10:
    if ((v6 & 0x200) == 0)
    {
      goto LABEL_11;
    }

LABEL_24:
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xA, *(v5 + 48), a2, a4);
    if ((*(v5 + 60) & 0x400) == 0)
    {
      return result;
    }

    goto LABEL_25;
  }

LABEL_23:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(9, *(v5 + 44), a2, a4);
  v6 = *(v5 + 60);
  if ((v6 & 0x200) != 0)
  {
    goto LABEL_24;
  }

LABEL_11:
  if ((v6 & 0x400) == 0)
  {
    return result;
  }

LABEL_25:
  v8 = *(v5 + 52);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xB, v8, a2, a4);
}

uint64_t sub_2453FF208(uint64_t a1, unsigned int a2)
{
  v3 = *(a1 + 60);
  if (!v3)
  {
    v4 = 0;
    goto LABEL_47;
  }

  if (v3)
  {
    v5 = *(a1 + 8);
    if (v5 >= 0x80)
    {
      v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5) + 1;
      v3 = *(a1 + 60);
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

  v6 = *(a1 + 12);
  if (v6 >= 0x80)
  {
    v7 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v6) + 1;
    v3 = *(a1 + 60);
  }

  else
  {
    v7 = 2;
  }

  v4 = (v7 + v4);
LABEL_14:
  if ((v3 & 4) != 0)
  {
    v8 = *(a1 + 16);
    if (v8 >= 0x80)
    {
      v9 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v8) + 1;
      v3 = *(a1 + 60);
    }

    else
    {
      v9 = 2;
    }

    v4 = (v9 + v4);
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

  v10 = *(a1 + 20);
  if (v10 >= 0x80)
  {
    v11 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v10) + 1;
    v3 = *(a1 + 60);
  }

  else
  {
    v11 = 2;
  }

  v4 = (v11 + v4);
  if ((v3 & 0x10) == 0)
  {
LABEL_17:
    if ((v3 & 0x20) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_35;
  }

LABEL_29:
  v12 = *(a1 + 24);
  if (!v12)
  {
    sub_2453EB7EC();
    v12 = *(qword_2813CEA98 + 24);
  }

  v13 = sub_2453F7F20(v12, a2);
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
  v3 = *(a1 + 60);
  if ((v3 & 0x20) == 0)
  {
LABEL_18:
    if ((v3 & 0x40) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_39;
  }

LABEL_35:
  v16 = *(a1 + 32);
  if (v16 >= 0x80)
  {
    v17 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v16) + 1;
    v3 = *(a1 + 60);
  }

  else
  {
    v17 = 2;
  }

  v4 = (v17 + v4);
  if ((v3 & 0x40) == 0)
  {
LABEL_19:
    if ((v3 & 0x80) == 0)
    {
      goto LABEL_47;
    }

    goto LABEL_43;
  }

LABEL_39:
  v18 = *(a1 + 36);
  if (v18 >= 0x80)
  {
    v19 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v18) + 1;
    v3 = *(a1 + 60);
  }

  else
  {
    v19 = 2;
  }

  v4 = (v19 + v4);
  if ((v3 & 0x80) != 0)
  {
LABEL_43:
    v20 = *(a1 + 40);
    if (v20 >= 0x80)
    {
      v21 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v20) + 1;
      v3 = *(a1 + 60);
    }

    else
    {
      v21 = 2;
    }

    v4 = (v21 + v4);
  }

LABEL_47:
  if ((v3 & 0xFF00) == 0)
  {
    goto LABEL_66;
  }

  if ((v3 & 0x100) != 0)
  {
    v22 = *(a1 + 44);
    if ((v22 & 0x80000000) != 0)
    {
      v23 = 11;
    }

    else if (v22 >= 0x80)
    {
      v23 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v22) + 1;
      v3 = *(a1 + 60);
    }

    else
    {
      v23 = 2;
    }

    v4 = (v23 + v4);
    if ((v3 & 0x200) == 0)
    {
LABEL_50:
      if ((v3 & 0x400) == 0)
      {
        goto LABEL_66;
      }

      goto LABEL_62;
    }
  }

  else if ((v3 & 0x200) == 0)
  {
    goto LABEL_50;
  }

  v24 = *(a1 + 48);
  if (v24 >= 0x80)
  {
    v25 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v24) + 1;
    v3 = *(a1 + 60);
  }

  else
  {
    v25 = 2;
  }

  v4 = (v25 + v4);
  if ((v3 & 0x400) != 0)
  {
LABEL_62:
    v26 = *(a1 + 52);
    if (v26 >= 0x80)
    {
      v27 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v26) + 1;
    }

    else
    {
      v27 = 2;
    }

    v4 = (v27 + v4);
  }

LABEL_66:
  *(a1 + 56) = v4;
  return v4;
}

void sub_2453FF468(uint64_t a1, void *lpsrc)
{
  if (!__dynamic_cast(lpsrc, MEMORY[0x277D82C38], &unk_285858670, 0))
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  sub_2453FE64C(a1, lpsrc);
}

void sub_2453FF524(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v11);
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
        sub_2453EB7EC();
        v6 = *(qword_2813CEAA0 + 8);
      }

      sub_2453FD61C(v5, v6);
      v4 = *(a2 + 36);
      if ((v4 & 2) == 0)
      {
LABEL_6:
        if ((v4 & 4) == 0)
        {
          return;
        }

        goto LABEL_18;
      }
    }

    else if ((*(a2 + 36) & 2) == 0)
    {
      goto LABEL_6;
    }

    *(a1 + 36) |= 2u;
    v7 = *(a1 + 16);
    if (!v7)
    {
      operator new();
    }

    v8 = *(a2 + 16);
    if (!v8)
    {
      sub_2453EB7EC();
      v8 = *(qword_2813CEAA0 + 16);
    }

    sub_2453FDEA0(v7, v8);
    if ((*(a2 + 36) & 4) != 0)
    {
LABEL_18:
      *(a1 + 36) |= 4u;
      v9 = *(a1 + 24);
      if (!v9)
      {
        operator new();
      }

      v10 = *(a2 + 24);
      if (!v10)
      {
        sub_2453EB7EC();
        v10 = *(qword_2813CEAA0 + 24);
      }

      sub_2453FE64C(v9, v10);
    }
  }
}

void sub_2453FF738(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_2453FF750(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = &unk_285856670;
  sub_2453EB7EC();
  if (qword_2813CEAA0 != a1)
  {
    v2 = *(a1 + 1);
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }

    v3 = *(a1 + 2);
    if (v3)
    {
      (*(*v3 + 8))(v3);
    }

    v4 = *(a1 + 3);
    if (v4)
    {
      (*(*v4 + 8))(v4);
    }
  }

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);
}

void sub_2453FF840(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  sub_2453FF750(a1);

  JUMPOUT(0x245D6A0D0);
}

uint64_t sub_2453FF8CC(uint64_t result)
{
  v1 = result;
  LOBYTE(v2) = *(result + 36);
  if (v2)
  {
    if (*(result + 36))
    {
      result = *(result + 8);
      if (result)
      {
        result = sub_2453FD8B8(result);
        v2 = *(v1 + 36);
      }
    }

    if ((v2 & 2) != 0)
    {
      result = *(v1 + 16);
      if (result)
      {
        result = sub_2453FE114(result);
        v2 = *(v1 + 36);
      }
    }

    if ((v2 & 4) != 0)
    {
      result = *(v1 + 24);
      if (result)
      {
        result = sub_2453FE9DC(result);
      }
    }
  }

  *(v1 + 36) = 0;
  return result;
}

uint64_t sub_2453FF930(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormatLite *this, unsigned int a3)
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
      if (TagFallback >> 3 == 3)
      {
        if (v8 == 2)
        {
          goto LABEL_44;
        }

        goto LABEL_18;
      }

      if (v7 == 2)
      {
        break;
      }

      if (v7 != 1 || v8 != 2)
      {
        goto LABEL_18;
      }

      *(a1 + 36) |= 1u;
      v9 = *(a1 + 8);
      if (!v9)
      {
        operator new();
      }

      v34 = 0;
      v10 = *(this + 1);
      if (v10 >= *(this + 2) || *v10 < 0)
      {
        if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v34))
        {
          return 0;
        }
      }

      else
      {
        v34 = *v10;
        *(this + 1) = v10 + 1;
      }

      v11 = *(this + 14);
      v12 = *(this + 15);
      *(this + 14) = v11 + 1;
      if (v11 >= v12)
      {
        return 0;
      }

      wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this);
      if (!sub_2453FD8F8(v9, this, v13) || *(this + 36) != 1)
      {
        return 0;
      }

      wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this);
      v14 = *(this + 14);
      v15 = __OFSUB__(v14, 1);
      v16 = v14 - 1;
      if (v16 < 0 == v15)
      {
        *(this + 14) = v16;
      }

      v17 = *(this + 1);
      if (v17 < *(this + 2) && *v17 == 18)
      {
        *(this + 1) = v17 + 1;
LABEL_30:
        *(a1 + 36) |= 2u;
        v18 = *(a1 + 16);
        if (!v18)
        {
          operator new();
        }

        v35 = 0;
        v19 = *(this + 1);
        if (v19 >= *(this + 2) || *v19 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v35))
          {
            return 0;
          }
        }

        else
        {
          v35 = *v19;
          *(this + 1) = v19 + 1;
        }

        v20 = *(this + 14);
        v21 = *(this + 15);
        *(this + 14) = v20 + 1;
        if (v20 >= v21)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this);
        if (!sub_2453FE154(v18, this, v22) || *(this + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this);
        v23 = *(this + 14);
        v15 = __OFSUB__(v23, 1);
        v24 = v23 - 1;
        if (v24 < 0 == v15)
        {
          *(this + 14) = v24;
        }

        v25 = *(this + 1);
        if (v25 < *(this + 2) && *v25 == 26)
        {
          *(this + 1) = v25 + 1;
LABEL_44:
          *(a1 + 36) |= 4u;
          v26 = *(a1 + 24);
          if (!v26)
          {
            operator new();
          }

          v36 = 0;
          v27 = *(this + 1);
          if (v27 >= *(this + 2) || *v27 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v36))
            {
              return 0;
            }
          }

          else
          {
            v36 = *v27;
            *(this + 1) = v27 + 1;
          }

          v28 = *(this + 14);
          v29 = *(this + 15);
          *(this + 14) = v28 + 1;
          if (v28 >= v29)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this);
          if (!sub_2453FEA30(v26, this, v30) || *(this + 36) != 1)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this);
          v31 = *(this + 14);
          v15 = __OFSUB__(v31, 1);
          v32 = v31 - 1;
          if (v32 < 0 == v15)
          {
            *(this + 14) = v32;
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

    if (v8 == 2)
    {
      goto LABEL_30;
    }

LABEL_18:
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

uint64_t sub_2453FFD60(uint64_t result, wireless_diagnostics::google::protobuf::MessageLite *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = result;
  v6 = *(result + 36);
  if (v6)
  {
    v7 = *(result + 8);
    if (!v7)
    {
      sub_2453EB7EC();
      v7 = *(qword_2813CEAA0 + 8);
    }

    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(1, v7, a2, a4);
    v6 = *(v5 + 36);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        return result;
      }

      goto LABEL_11;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  v8 = *(v5 + 16);
  if (!v8)
  {
    sub_2453EB7EC();
    v8 = *(qword_2813CEAA0 + 16);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(2, v8, a2, a4);
  if ((*(v5 + 36) & 4) != 0)
  {
LABEL_11:
    v9 = *(v5 + 24);
    if (!v9)
    {
      sub_2453EB7EC();
      v9 = *(qword_2813CEAA0 + 24);
    }

    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(3, v9, a2, a4);
  }

  return result;
}

uint64_t sub_2453FFE28(uint64_t a1, unint64_t a2)
{
  LOBYTE(v3) = *(a1 + 36);
  if (!v3)
  {
    v4 = 0;
    goto LABEL_25;
  }

  if (*(a1 + 36))
  {
    v5 = *(a1 + 8);
    if (!v5)
    {
      sub_2453EB7EC();
      v5 = *(qword_2813CEAA0 + 8);
    }

    v6 = sub_2453FDCE4(v5, a2);
    v7 = v6;
    if (v6 >= 0x80)
    {
      v8 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v6);
    }

    else
    {
      v8 = 1;
    }

    v4 = (v7 + v8 + 1);
    v3 = *(a1 + 36);
    if ((v3 & 2) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_12;
  }

  v4 = 0;
  if ((*(a1 + 36) & 2) != 0)
  {
LABEL_12:
    v9 = *(a1 + 16);
    if (!v9)
    {
      sub_2453EB7EC();
      v9 = *(qword_2813CEAA0 + 16);
    }

    v10 = sub_2453FE4AC(v9, a2);
    v11 = v10;
    if (v10 >= 0x80)
    {
      v12 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v10);
    }

    else
    {
      v12 = 1;
    }

    v4 = (v4 + v11 + v12 + 1);
    v3 = *(a1 + 36);
  }

LABEL_18:
  if ((v3 & 4) != 0)
  {
    v13 = *(a1 + 24);
    if (!v13)
    {
      sub_2453EB7EC();
      v13 = *(qword_2813CEAA0 + 24);
    }

    v14 = sub_2453FF208(v13, a2);
    v15 = v14;
    if (v14 >= 0x80)
    {
      v16 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v14);
    }

    else
    {
      v16 = 1;
    }

    v4 = (v4 + v15 + v16 + 1);
  }

LABEL_25:
  *(a1 + 32) = v4;
  return v4;
}

void sub_2453FFF50(uint64_t a1, void *lpsrc)
{
  if (!__dynamic_cast(lpsrc, MEMORY[0x277D82C38], &unk_285858688, 0))
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  sub_2453FF524(a1, lpsrc);
}

void sub_24540000C(uint64_t a1, uint64_t a2)
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
      v5 = *(a2 + 16);
      if (v5 >= 6)
      {
        __assert_rtn("set_ganss_time_measured_type", "GnssEmergencyTypes.pb.h", 17927, "::CoreGem::proto::gnss::Emergency::ClsNetworkType_IsValid(value)");
      }

      *(a1 + 24) |= 1u;
      *(a1 + 16) = v5;
      v4 = *(a2 + 24);
    }

    if ((v4 & 2) != 0)
    {
      *(a1 + 24) |= 2u;
      v6 = *(a1 + 8);
      if (!v6)
      {
        operator new();
      }

      v7 = *(a2 + 8);
      if (!v7)
      {
        sub_2453EB7EC();
        v7 = *(qword_2813CEAA8 + 8);
      }

      sub_2453FF524(v6, v7);
    }
  }
}

void sub_245400150(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_245400168(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = &unk_2858566E8;
  sub_2453EB7EC();
  if (qword_2813CEAA8 != a1)
  {
    v2 = *(a1 + 1);
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }
  }

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);
}

void sub_245400200(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  sub_245400168(a1);

  JUMPOUT(0x245D6A0D0);
}

uint64_t sub_245400288(uint64_t result)
{
  v1 = result;
  v2 = *(result + 24);
  if (v2)
  {
    *(result + 16) = 0;
    if ((v2 & 2) != 0)
    {
      result = *(result + 8);
      if (result)
      {
        result = sub_2453FF8CC(result);
      }
    }
  }

  *(v1 + 24) = 0;
  return result;
}

uint64_t sub_2454002C8(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormatLite *this, unsigned int a3)
{
  while (1)
  {
    do
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

        v7 = TagFallback & 7;
        if (TagFallback >> 3 != 2)
        {
          break;
        }

        if (v7 == 2)
        {
          goto LABEL_23;
        }

LABEL_13:
        if (v7 == 4)
        {
          return 1;
        }

        if ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(this, TagFallback) & 1) == 0)
        {
          return 0;
        }
      }

      if (TagFallback >> 3 != 1 || (TagFallback & 7) != 0)
      {
        goto LABEL_13;
      }

      v20 = 0;
      v8 = *(this + 1);
      if (v8 >= *(this + 2) || (v9 = *v8, (v9 & 0x80000000) != 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v20);
        if (!result)
        {
          return result;
        }

        v9 = v20;
      }

      else
      {
        *(this + 1) = v8 + 1;
      }

      if (v9 <= 5)
      {
        *(a1 + 24) |= 1u;
        *(a1 + 16) = v9;
      }

      v11 = *(this + 1);
    }

    while (v11 >= *(this + 2) || *v11 != 18);
    *(this + 1) = v11 + 1;
LABEL_23:
    *(a1 + 24) |= 2u;
    v12 = *(a1 + 8);
    if (!v12)
    {
      operator new();
    }

    v21 = 0;
    v13 = *(this + 1);
    if (v13 >= *(this + 2) || *v13 < 0)
    {
      if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v21))
      {
        return 0;
      }
    }

    else
    {
      v21 = *v13;
      *(this + 1) = v13 + 1;
    }

    v14 = *(this + 14);
    v15 = *(this + 15);
    *(this + 14) = v14 + 1;
    if (v14 >= v15)
    {
      return 0;
    }

    wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this);
    if (!sub_2453FF930(v12, this, v16) || *(this + 36) != 1)
    {
      return 0;
    }

    wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this);
    v17 = *(this + 14);
    v18 = __OFSUB__(v17, 1);
    v19 = v17 - 1;
    if (v19 < 0 == v18)
    {
      *(this + 14) = v19;
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

uint64_t sub_245400520(uint64_t result, const wireless_diagnostics::google::protobuf::MessageLite *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = result;
  v6 = *(result + 24);
  if (v6)
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(1, *(result + 16), a2, a4);
    v6 = *(v5 + 24);
  }

  if ((v6 & 2) != 0)
  {
    v7 = *(v5 + 8);
    if (!v7)
    {
      sub_2453EB7EC();
      v7 = *(qword_2813CEAA8 + 8);
    }

    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(2, v7, a2, a4);
  }

  return result;
}

uint64_t sub_2454005A0(uint64_t a1, unint64_t a2)
{
  v3 = *(a1 + 24);
  if (v3)
  {
    if (*(a1 + 24))
    {
      v5 = *(a1 + 16);
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
        if ((*(a1 + 24) & 2) == 0)
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
      if ((*(a1 + 24) & 2) == 0)
      {
        goto LABEL_19;
      }
    }

    v6 = *(a1 + 8);
    if (!v6)
    {
      sub_2453EB7EC();
      v6 = *(qword_2813CEAA8 + 8);
    }

    v7 = sub_2453FFE28(v6, a2);
    v8 = v7;
    if (v7 >= 0x80)
    {
      v9 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v7);
    }

    else
    {
      v9 = 1;
    }

    v4 = (v4 + v8 + v9 + 1);
  }

  else
  {
    v4 = 0;
  }

LABEL_19:
  *(a1 + 20) = v4;
  return v4;
}

void sub_24540066C(uint64_t a1, void *lpsrc)
{
  if (!__dynamic_cast(lpsrc, MEMORY[0x277D82C38], &unk_2858586A0, 0))
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  sub_24540000C(a1, lpsrc);
}

void sub_245400728(_DWORD *a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v11);
  }

  LOBYTE(v4) = *(a2 + 36);
  if (!v4)
  {
    return;
  }

  if (*(a2 + 36))
  {
    v5 = *(a2 + 8);
    if (v5 >= 6)
    {
      __assert_rtn("set_time_id", "GnssEmergencyTypes.pb.h", 17996, "::CoreGem::proto::gnss::Emergency::GnssTimeId_IsValid(value)");
    }

    a1[9] |= 1u;
    a1[2] = v5;
    v4 = *(a2 + 36);
  }

  if ((v4 & 2) != 0)
  {
    v7 = *(a2 + 12);
    a1[9] |= 2u;
    a1[3] = v7;
    v4 = *(a2 + 36);
    if ((v4 & 4) == 0)
    {
LABEL_9:
      if ((v4 & 8) == 0)
      {
        goto LABEL_10;
      }

LABEL_16:
      v9 = *(a2 + 20);
      a1[9] |= 8u;
      a1[5] = v9;
      v4 = *(a2 + 36);
      if ((v4 & 0x10) == 0)
      {
LABEL_11:
        if ((v4 & 0x20) == 0)
        {
          return;
        }

        goto LABEL_12;
      }

      goto LABEL_17;
    }
  }

  else if ((v4 & 4) == 0)
  {
    goto LABEL_9;
  }

  v8 = *(a2 + 16);
  a1[9] |= 4u;
  a1[4] = v8;
  v4 = *(a2 + 36);
  if ((v4 & 8) != 0)
  {
    goto LABEL_16;
  }

LABEL_10:
  if ((v4 & 0x10) == 0)
  {
    goto LABEL_11;
  }

LABEL_17:
  v10 = *(a2 + 24);
  if (v10 >= 4)
  {
    __assert_rtn("set_fix_type", "GnssEmergencyTypes.pb.h", 18085, "::CoreGem::proto::gnss::Emergency::FixType_IsValid(value)");
  }

  a1[9] |= 0x10u;
  a1[6] = v10;
  if ((*(a2 + 36) & 0x20) != 0)
  {
LABEL_12:
    v6 = *(a2 + 28);
    a1[9] |= 0x20u;
    a1[7] = v6;
  }
}

void sub_2454008A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_2454008C0(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = &unk_285856760;
  sub_2453EB7EC();

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);
}

void sub_24540091C(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  sub_2454008C0(a1);

  JUMPOUT(0x245D6A0D0);
}

uint64_t sub_2454009A8(uint64_t result)
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

uint64_t sub_2454009C0(unsigned int *a1, wireless_diagnostics::google::protobuf::internal::WireFormatLite *this, unsigned int a3)
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
        if (TagFallback >> 3 > 3)
        {
          if (v7 == 4)
          {
            if ((TagFallback & 7) == 0)
            {
              v14 = *(this + 1);
              v8 = *(this + 2);
              goto LABEL_53;
            }
          }

          else if (v7 == 5)
          {
            if ((TagFallback & 7) == 0)
            {
              v16 = *(this + 1);
              v8 = *(this + 2);
              goto LABEL_61;
            }
          }

          else if (v7 == 6 && (TagFallback & 7) == 0)
          {
            v11 = *(this + 1);
            v10 = *(this + 2);
            goto LABEL_71;
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

        v30 = 0;
        v12 = *(this + 1);
        if (v12 >= *(this + 2) || (v13 = *v12, (v13 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v30);
          if (!result)
          {
            return result;
          }

          v13 = v30;
        }

        else
        {
          *(this + 1) = v12 + 1;
        }

        if (v13 <= 5)
        {
          a1[9] |= 1u;
          a1[2] = v13;
        }

        v17 = *(this + 1);
        v8 = *(this + 2);
        if (v17 < v8 && *v17 == 16)
        {
          v15 = v17 + 1;
          *(this + 1) = v15;
          goto LABEL_37;
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

      v15 = *(this + 1);
      v8 = *(this + 2);
LABEL_37:
      if (v15 >= v8 || (v18 = *v15, (v18 & 0x80000000) != 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, a1 + 3);
        if (!result)
        {
          return result;
        }

        v19 = *(this + 1);
        v8 = *(this + 2);
      }

      else
      {
        a1[3] = v18;
        v19 = v15 + 1;
        *(this + 1) = v19;
      }

      a1[9] |= 2u;
      if (v19 < v8 && *v19 == 24)
      {
        v9 = v19 + 1;
        *(this + 1) = v9;
LABEL_45:
        if (v9 >= v8 || (v20 = *v9, (v20 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, a1 + 4);
          if (!result)
          {
            return result;
          }

          v21 = *(this + 1);
          v8 = *(this + 2);
        }

        else
        {
          a1[4] = v20;
          v21 = v9 + 1;
          *(this + 1) = v21;
        }

        a1[9] |= 4u;
        if (v21 < v8 && *v21 == 32)
        {
          v14 = v21 + 1;
          *(this + 1) = v14;
LABEL_53:
          if (v14 >= v8 || (v22 = *v14, (v22 & 0x80000000) != 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, a1 + 5);
            if (!result)
            {
              return result;
            }

            v23 = *(this + 1);
            v8 = *(this + 2);
          }

          else
          {
            a1[5] = v22;
            v23 = v14 + 1;
            *(this + 1) = v23;
          }

          a1[9] |= 8u;
          if (v23 < v8 && *v23 == 40)
          {
            v16 = v23 + 1;
            *(this + 1) = v16;
LABEL_61:
            v29 = 0;
            if (v16 >= v8 || (v24 = *v16, (v24 & 0x80000000) != 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v29);
              if (!result)
              {
                return result;
              }

              v24 = v29;
            }

            else
            {
              *(this + 1) = v16 + 1;
            }

            if (v24 <= 3)
            {
              a1[9] |= 0x10u;
              a1[6] = v24;
            }

            v25 = *(this + 1);
            v10 = *(this + 2);
            if (v25 < v10 && *v25 == 48)
            {
              v11 = v25 + 1;
              *(this + 1) = v11;
LABEL_71:
              if (v11 >= v10 || (v26 = *v11, (v26 & 0x80000000) != 0))
              {
                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, a1 + 7);
                if (!result)
                {
                  return result;
                }

                v27 = *(this + 1);
                v10 = *(this + 2);
              }

              else
              {
                a1[7] = v26;
                v27 = v11 + 1;
                *(this + 1) = v27;
              }

              a1[9] |= 0x20u;
              if (v27 == v10 && (*(this + 11) || *(this + 6) == *(this + 10)))
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
    }

    if (v7 == 3 && (TagFallback & 7) == 0)
    {
      v9 = *(this + 1);
      v8 = *(this + 2);
      goto LABEL_45;
    }

LABEL_26:
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

unsigned int *sub_245400D2C(unsigned int *result, uint64_t a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = result;
  v6 = result[9];
  if (v6)
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(1, result[2], a2, a4);
    v6 = v5[9];
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

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(2, v5[3], a2, a4);
  v6 = v5[9];
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
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(3, v5[4], a2, a4);
  v6 = v5[9];
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_6;
    }

LABEL_12:
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(5, v5[6], a2, a4);
    if ((v5[9] & 0x20) == 0)
    {
      return result;
    }

    goto LABEL_13;
  }

LABEL_11:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(4, v5[5], a2, a4);
  v6 = v5[9];
  if ((v6 & 0x10) != 0)
  {
    goto LABEL_12;
  }

LABEL_6:
  if ((v6 & 0x20) == 0)
  {
    return result;
  }

LABEL_13:
  v7 = v5[7];

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(6, v7, a2, a4);
}

uint64_t sub_245400E0C(uint64_t a1, unsigned int a2)
{
  LOBYTE(v3) = *(a1 + 36);
  if (!v3)
  {
    v4 = 0;
    goto LABEL_40;
  }

  if (*(a1 + 36))
  {
    v5 = *(a1 + 8);
    if ((v5 & 0x80000000) != 0)
    {
      v4 = 11;
      if ((v3 & 2) == 0)
      {
        goto LABEL_17;
      }
    }

    else if (v5 >= 0x80)
    {
      v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5) + 1;
      v3 = *(a1 + 36);
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
    if ((*(a1 + 36) & 2) == 0)
    {
      goto LABEL_17;
    }
  }

  v6 = *(a1 + 12);
  if (v6 >= 0x80)
  {
    v7 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v6) + 1;
    v3 = *(a1 + 36);
  }

  else
  {
    v7 = 2;
  }

  v4 = (v7 + v4);
LABEL_17:
  if ((v3 & 4) != 0)
  {
    v8 = *(a1 + 16);
    if (v8 >= 0x80)
    {
      v9 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v8) + 1;
      v3 = *(a1 + 36);
    }

    else
    {
      v9 = 2;
    }

    v4 = (v9 + v4);
    if ((v3 & 8) == 0)
    {
LABEL_19:
      if ((v3 & 0x10) == 0)
      {
        goto LABEL_20;
      }

      goto LABEL_30;
    }
  }

  else if ((v3 & 8) == 0)
  {
    goto LABEL_19;
  }

  v10 = *(a1 + 20);
  if (v10 >= 0x80)
  {
    v11 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v10) + 1;
    v3 = *(a1 + 36);
  }

  else
  {
    v11 = 2;
  }

  v4 = (v11 + v4);
  if ((v3 & 0x10) == 0)
  {
LABEL_20:
    if ((v3 & 0x20) == 0)
    {
      goto LABEL_40;
    }

    goto LABEL_36;
  }

LABEL_30:
  v12 = *(a1 + 24);
  if ((v12 & 0x80000000) != 0)
  {
    v13 = 11;
  }

  else if (v12 >= 0x80)
  {
    v13 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v12) + 1;
    v3 = *(a1 + 36);
  }

  else
  {
    v13 = 2;
  }

  v4 = (v13 + v4);
  if ((v3 & 0x20) != 0)
  {
LABEL_36:
    v14 = *(a1 + 28);
    if (v14 >= 0x80)
    {
      v15 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v14) + 1;
    }

    else
    {
      v15 = 2;
    }

    v4 = (v15 + v4);
  }

LABEL_40:
  *(a1 + 32) = v4;
  return v4;
}

void sub_245400F68(_DWORD *a1, void *lpsrc)
{
  if (!__dynamic_cast(lpsrc, MEMORY[0x277D82C38], &unk_2858586B8, 0))
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  sub_245400728(a1, lpsrc);
}

void sub_245401024(_DWORD *a1, uint64_t a2)
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

void sub_2454010D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_2454010E8(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = &unk_2858567D8;
  sub_2453EB7EC();

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);
}

void sub_245401144(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  sub_2454010E8(a1);

  JUMPOUT(0x245D6A0D0);
}

uint64_t sub_2454011C8(uint64_t result)
{
  if (*(result + 20))
  {
    *(result + 8) = 0;
  }

  *(result + 20) = 0;
  return result;
}

uint64_t sub_2454011DC(_DWORD *a1, wireless_diagnostics::google::protobuf::internal::WireFormatLite *this, unsigned int a3)
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

      if (TagFallback >> 3 == 2)
      {
        break;
      }

      if (TagFallback >> 3 != 1 || (TagFallback & 7) != 0)
      {
        goto LABEL_13;
      }

      v16 = 0;
      v8 = *(this + 1);
      v7 = *(this + 2);
      if (v8 >= v7 || (v9 = *v8, (v9 & 0x80000000) != 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v16);
        if (!result)
        {
          return result;
        }

        v9 = v16;
        v10 = *(this + 1);
        v7 = *(this + 2);
      }

      else
      {
        v10 = v8 + 1;
        *(this + 1) = v10;
      }

      a1[2] = v9;
      a1[5] |= 1u;
      if (v10 < v7 && *v10 == 16)
      {
        v11 = v10 + 1;
        *(this + 1) = v11;
LABEL_22:
        v15 = 0;
        if (v11 >= v7 || (v12 = *v11, (v12 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v15);
          if (!result)
          {
            return result;
          }

          v12 = v15;
          v13 = *(this + 1);
          v7 = *(this + 2);
        }

        else
        {
          v13 = v11 + 1;
          *(this + 1) = v13;
        }

        a1[3] = v12;
        a1[5] |= 2u;
        if (v13 == v7 && (*(this + 11) || *(this + 6) == *(this + 10)))
        {
          *(this + 8) = 0;
          result = 1;
          *(this + 36) = 1;
          return result;
        }
      }
    }

    if ((TagFallback & 7) == 0)
    {
      v11 = *(this + 1);
      v7 = *(this + 2);
      goto LABEL_22;
    }

LABEL_13:
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

uint64_t sub_245401370(uint64_t result, uint64_t a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = result;
  v6 = *(result + 20);
  if (v6)
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(1, *(result + 8), a2, a4);
    v6 = *(v5 + 20);
  }

  if ((v6 & 2) != 0)
  {
    v7 = *(v5 + 12);

    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(2, v7, a2, a4);
  }

  return result;
}

uint64_t sub_2454013DC(uint64_t a1, unsigned int a2)
{
  v3 = *(a1 + 20);
  if (v3)
  {
    if (*(a1 + 20))
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
        if ((*(a1 + 20) & 2) == 0)
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
      if ((*(a1 + 20) & 2) == 0)
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
    }

    else
    {
      v7 = 2;
    }

    v4 = (v7 + v4);
  }

  else
  {
    v4 = 0;
  }

LABEL_19:
  *(a1 + 16) = v4;
  return v4;
}

void sub_245401488(_DWORD *a1, void *lpsrc)
{
  if (!__dynamic_cast(lpsrc, MEMORY[0x277D82C38], &unk_2858586D0, 0))
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  sub_245401024(a1, lpsrc);
}

void sub_245401544(uint64_t a1, uint64_t a2)
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
      *(a1 + 24) |= 1u;
      v5 = *(a1 + 8);
      if (!v5)
      {
        operator new();
      }

      v6 = *(a2 + 8);
      if (!v6)
      {
        sub_2453EB7EC();
        v6 = *(qword_2813CEF10 + 8);
      }

      sub_245401024(v5, v6);
      v4 = *(a2 + 24);
    }

    if ((v4 & 2) != 0)
    {
      v7 = *(a2 + 16);
      *(a1 + 24) |= 2u;
      *(a1 + 16) = v7;
    }
  }
}

void sub_245401658(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_245401670(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = &unk_285856850;
  sub_2453EB7EC();
  if (qword_2813CEF10 != a1)
  {
    v2 = *(a1 + 1);
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }
  }

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);
}

void sub_245401708(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  sub_245401670(a1);

  JUMPOUT(0x245D6A0D0);
}

uint64_t sub_245401790(uint64_t result)
{
  if (*(result + 24))
  {
    if (*(result + 24))
    {
      v1 = *(result + 8);
      if (v1)
      {
        if (*(v1 + 20))
        {
          *(v1 + 8) = 0;
        }

        *(v1 + 20) = 0;
      }
    }

    *(result + 16) = 0;
  }

  *(result + 24) = 0;
  return result;
}

uint64_t sub_2454017C0(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormatLite *this, unsigned int a3)
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

      v7 = TagFallback & 7;
      if (TagFallback >> 3 != 2)
      {
        break;
      }

      if ((TagFallback & 7) == 0)
      {
        v11 = *(this + 1);
        v10 = *(this + 2);
        goto LABEL_28;
      }

LABEL_15:
      if (v7 == 4)
      {
        return 1;
      }

      if ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(this, TagFallback) & 1) == 0)
      {
        return 0;
      }
    }

    if (TagFallback >> 3 != 1 || v7 != 2)
    {
      goto LABEL_15;
    }

    *(a1 + 24) |= 1u;
    v8 = *(a1 + 8);
    if (!v8)
    {
      operator new();
    }

    v22 = 0;
    v9 = *(this + 1);
    if (v9 >= *(this + 2) || *v9 < 0)
    {
      if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v22))
      {
        return 0;
      }
    }

    else
    {
      v22 = *v9;
      *(this + 1) = v9 + 1;
    }

    v12 = *(this + 14);
    v13 = *(this + 15);
    *(this + 14) = v12 + 1;
    if (v12 >= v13)
    {
      return 0;
    }

    wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this);
    if (!sub_2454011DC(v8, this, v14) || *(this + 36) != 1)
    {
      return 0;
    }

    wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this);
    v15 = *(this + 14);
    v16 = __OFSUB__(v15, 1);
    v17 = v15 - 1;
    if (v17 < 0 == v16)
    {
      *(this + 14) = v17;
    }

    v18 = *(this + 1);
    v10 = *(this + 2);
    if (v18 < v10 && *v18 == 16)
    {
      v11 = v18 + 1;
      *(this + 1) = v11;
LABEL_28:
      if (v11 >= v10 || (v19 = *v11, v19 < 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 16));
        if (!result)
        {
          return result;
        }

        v20 = *(this + 1);
        v10 = *(this + 2);
      }

      else
      {
        *(a1 + 16) = v19;
        v20 = v11 + 1;
        *(this + 1) = v20;
      }

      *(a1 + 24) |= 2u;
      if (v20 == v10 && (*(this + 11) || *(this + 6) == *(this + 10)))
      {
        *(this + 8) = 0;
        result = 1;
        *(this + 36) = 1;
        return result;
      }
    }
  }
}

uint64_t sub_245401A04(uint64_t result, wireless_diagnostics::google::protobuf::MessageLite *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = result;
  v6 = *(result + 24);
  if (v6)
  {
    v7 = *(result + 8);
    if (!v7)
    {
      sub_2453EB7EC();
      v7 = *(qword_2813CEF10 + 8);
    }

    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(1, v7, a2, a4);
    v6 = *(v5 + 24);
  }

  if ((v6 & 2) != 0)
  {
    v8 = *(v5 + 16);

    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(2, v8, a2, a4);
  }

  return result;
}

uint64_t sub_245401A84(uint64_t a1, unsigned int a2)
{
  if (!*(a1 + 24))
  {
    v3 = 0;
    goto LABEL_16;
  }

  if ((*(a1 + 24) & 1) == 0)
  {
    v3 = 0;
    if ((*(a1 + 24) & 2) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_12;
  }

  v4 = *(a1 + 8);
  if (!v4)
  {
    sub_2453EB7EC();
    v4 = *(qword_2813CEF10 + 8);
  }

  v5 = sub_2454013DC(v4, a2);
  v6 = v5;
  if (v5 >= 0x80)
  {
    v7 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5);
  }

  else
  {
    v7 = 1;
  }

  v3 = (v6 + v7 + 1);
  if ((*(a1 + 24) & 2) != 0)
  {
LABEL_12:
    v8 = *(a1 + 16);
    if (v8 >= 0x80)
    {
      v9 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v8) + 1;
    }

    else
    {
      v9 = 2;
    }

    v3 = (v9 + v3);
  }

LABEL_16:
  *(a1 + 20) = v3;
  return v3;
}

void sub_245401B34(uint64_t a1, void *lpsrc)
{
  if (!__dynamic_cast(lpsrc, MEMORY[0x277D82C38], &unk_2858586E8, 0))
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  sub_245401544(a1, lpsrc);
}

void sub_245401BF0(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v11);
  }

  LOBYTE(v4) = *(a2 + 36);
  if (v4)
  {
    if (*(a2 + 36))
    {
      *(a1 + 36) |= 1u;
      v6 = *(a1 + 8);
      if (!v6)
      {
        operator new();
      }

      v7 = *(a2 + 8);
      if (!v7)
      {
        sub_2453EB7EC();
        v7 = *(qword_2813CEF08 + 8);
      }

      sub_245401024(v6, v7);
      v4 = *(a2 + 36);
      if ((v4 & 2) == 0)
      {
LABEL_6:
        if ((v4 & 4) == 0)
        {
          goto LABEL_7;
        }

        goto LABEL_17;
      }
    }

    else if ((*(a2 + 36) & 2) == 0)
    {
      goto LABEL_6;
    }

    v8 = *(a2 + 16);
    *(a1 + 36) |= 2u;
    *(a1 + 16) = v8;
    v4 = *(a2 + 36);
    if ((v4 & 4) == 0)
    {
LABEL_7:
      if ((v4 & 8) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_18;
    }

LABEL_17:
    v9 = *(a2 + 20);
    *(a1 + 36) |= 4u;
    *(a1 + 20) = v9;
    v4 = *(a2 + 36);
    if ((v4 & 8) == 0)
    {
LABEL_8:
      if ((v4 & 0x10) == 0)
      {
        return;
      }

      goto LABEL_9;
    }

LABEL_18:
    v10 = *(a2 + 24);
    *(a1 + 36) |= 8u;
    *(a1 + 24) = v10;
    if ((*(a2 + 36) & 0x10) == 0)
    {
      return;
    }

LABEL_9:
    v5 = *(a2 + 28);
    *(a1 + 36) |= 0x10u;
    *(a1 + 28) = v5;
  }
}

void sub_245401D6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_245401D84(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = &unk_2858568C8;
  sub_2453EB7EC();
  if (qword_2813CEF08 != a1)
  {
    v2 = *(a1 + 1);
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }
  }

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);
}

void sub_245401E1C(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  sub_245401D84(a1);

  JUMPOUT(0x245D6A0D0);
}

uint64_t sub_245401EA8(uint64_t result)
{
  if (*(result + 36))
  {
    if (*(result + 36))
    {
      v1 = *(result + 8);
      if (v1)
      {
        if (*(v1 + 20))
        {
          *(v1 + 8) = 0;
        }

        *(v1 + 20) = 0;
      }
    }

    *(result + 16) = 0;
    *(result + 24) = 0;
  }

  *(result + 36) = 0;
  return result;
}

uint64_t sub_245401ED8(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormatLite *this, unsigned int a3)
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
      if (TagFallback >> 3 <= 2)
      {
        break;
      }

      if (v7 == 3)
      {
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_21;
        }

        v12 = *(this + 1);
        v9 = *(this + 2);
        goto LABEL_46;
      }

      if (v7 == 4)
      {
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_21;
        }

        v13 = *(this + 1);
        v9 = *(this + 2);
LABEL_54:
        if (v13 >= v9 || (v28 = *v13, v28 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 24));
          if (!result)
          {
            return result;
          }

          v29 = *(this + 1);
          v9 = *(this + 2);
        }

        else
        {
          *(a1 + 24) = v28;
          v29 = v13 + 1;
          *(this + 1) = v29;
        }

        *(a1 + 36) |= 8u;
        if (v29 < v9 && *v29 == 40)
        {
          v10 = v29 + 1;
          *(this + 1) = v10;
LABEL_62:
          if (v10 >= v9 || (v30 = *v10, v30 < 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 28));
            if (!result)
            {
              return result;
            }

            v31 = *(this + 1);
            v9 = *(this + 2);
          }

          else
          {
            *(a1 + 28) = v30;
            v31 = v10 + 1;
            *(this + 1) = v31;
          }

          *(a1 + 36) |= 0x10u;
          if (v31 == v9 && (*(this + 11) || *(this + 6) == *(this + 10)))
          {
            *(this + 8) = 0;
            result = 1;
            *(this + 36) = 1;
            return result;
          }
        }
      }

      else
      {
        if (v7 == 5 && (TagFallback & 7) == 0)
        {
          v10 = *(this + 1);
          v9 = *(this + 2);
          goto LABEL_62;
        }

LABEL_21:
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

    if (v7 != 1)
    {
      if (v7 != 2 || (TagFallback & 7) != 0)
      {
        goto LABEL_21;
      }

      v11 = *(this + 1);
      v9 = *(this + 2);
      goto LABEL_38;
    }

    if (v8 != 2)
    {
      goto LABEL_21;
    }

    *(a1 + 36) |= 1u;
    v14 = *(a1 + 8);
    if (!v14)
    {
      operator new();
    }

    v32 = 0;
    v15 = *(this + 1);
    if (v15 >= *(this + 2) || *v15 < 0)
    {
      if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v32))
      {
        return 0;
      }
    }

    else
    {
      v32 = *v15;
      *(this + 1) = v15 + 1;
    }

    v16 = *(this + 14);
    v17 = *(this + 15);
    *(this + 14) = v16 + 1;
    if (v16 >= v17)
    {
      return 0;
    }

    wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this);
    if (!sub_2454011DC(v14, this, v18) || *(this + 36) != 1)
    {
      return 0;
    }

    wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this);
    v19 = *(this + 14);
    v20 = __OFSUB__(v19, 1);
    v21 = v19 - 1;
    if (v21 < 0 == v20)
    {
      *(this + 14) = v21;
    }

    v22 = *(this + 1);
    v9 = *(this + 2);
    if (v22 < v9 && *v22 == 16)
    {
      v11 = v22 + 1;
      *(this + 1) = v11;
LABEL_38:
      if (v11 >= v9 || (v23 = *v11, v23 < 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 16));
        if (!result)
        {
          return result;
        }

        v24 = *(this + 1);
        v9 = *(this + 2);
      }

      else
      {
        *(a1 + 16) = v23;
        v24 = v11 + 1;
        *(this + 1) = v24;
      }

      *(a1 + 36) |= 2u;
      if (v24 < v9 && *v24 == 24)
      {
        v12 = v24 + 1;
        *(this + 1) = v12;
LABEL_46:
        if (v12 >= v9 || (v26 = *v12, v26 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 20));
          if (!result)
          {
            return result;
          }

          v27 = *(this + 1);
          v9 = *(this + 2);
        }

        else
        {
          *(a1 + 20) = v26;
          v27 = v12 + 1;
          *(this + 1) = v27;
        }

        *(a1 + 36) |= 4u;
        if (v27 < v9 && *v27 == 32)
        {
          v13 = v27 + 1;
          *(this + 1) = v13;
          goto LABEL_54;
        }
      }
    }
  }
}

uint64_t sub_245402274(uint64_t result, wireless_diagnostics::google::protobuf::MessageLite *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = result;
  v6 = *(result + 36);
  if (v6)
  {
    v7 = *(result + 8);
    if (!v7)
    {
      sub_2453EB7EC();
      v7 = *(qword_2813CEF08 + 8);
    }

    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(1, v7, a2, a4);
    v6 = v5[9];
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

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(2, v5[4], a2, a4);
  v6 = v5[9];
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

LABEL_12:
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(4, v5[6], a2, a4);
    if ((v5[9] & 0x10) == 0)
    {
      return result;
    }

    goto LABEL_13;
  }

LABEL_11:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(3, v5[5], a2, a4);
  v6 = v5[9];
  if ((v6 & 8) != 0)
  {
    goto LABEL_12;
  }

LABEL_5:
  if ((v6 & 0x10) == 0)
  {
    return result;
  }

LABEL_13:
  v8 = v5[7];

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(5, v8, a2, a4);
}

uint64_t sub_24540234C(uint64_t a1, unsigned int a2)
{
  LOBYTE(v3) = *(a1 + 36);
  if (!v3)
  {
    v4 = 0;
    goto LABEL_32;
  }

  if ((*(a1 + 36) & 1) == 0)
  {
    v4 = 0;
    if ((*(a1 + 36) & 2) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_12;
  }

  v5 = *(a1 + 8);
  if (!v5)
  {
    sub_2453EB7EC();
    v5 = *(qword_2813CEF08 + 8);
  }

  v6 = sub_2454013DC(v5, a2);
  v7 = v6;
  if (v6 >= 0x80)
  {
    v8 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v6);
  }

  else
  {
    v8 = 1;
  }

  v4 = (v7 + v8 + 1);
  v3 = *(a1 + 36);
  if ((v3 & 2) != 0)
  {
LABEL_12:
    v9 = *(a1 + 16);
    if (v9 >= 0x80)
    {
      v10 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v9) + 1;
      v3 = *(a1 + 36);
    }

    else
    {
      v10 = 2;
    }

    v4 = (v10 + v4);
  }

LABEL_16:
  if ((v3 & 4) != 0)
  {
    v11 = *(a1 + 20);
    if (v11 >= 0x80)
    {
      v12 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v11) + 1;
      v3 = *(a1 + 36);
    }

    else
    {
      v12 = 2;
    }

    v4 = (v12 + v4);
    if ((v3 & 8) == 0)
    {
LABEL_18:
      if ((v3 & 0x10) == 0)
      {
        goto LABEL_32;
      }

      goto LABEL_28;
    }
  }

  else if ((v3 & 8) == 0)
  {
    goto LABEL_18;
  }

  v13 = *(a1 + 24);
  if (v13 >= 0x80)
  {
    v14 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v13) + 1;
    v3 = *(a1 + 36);
  }

  else
  {
    v14 = 2;
  }

  v4 = (v14 + v4);
  if ((v3 & 0x10) != 0)
  {
LABEL_28:
    v15 = *(a1 + 28);
    if (v15 >= 0x80)
    {
      v16 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v15) + 1;
    }

    else
    {
      v16 = 2;
    }

    v4 = (v16 + v4);
  }

LABEL_32:
  *(a1 + 32) = v4;
  return v4;
}

void sub_245402480(uint64_t a1, void *lpsrc)
{
  if (!__dynamic_cast(lpsrc, MEMORY[0x277D82C38], &unk_285858700, 0))
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  sub_245401BF0(a1, lpsrc);
}

void sub_24540253C(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v13);
  }

  LOBYTE(v4) = *(a2 + 44);
  if (v4)
  {
    if (*(a2 + 44))
    {
      *(a1 + 44) |= 1u;
      v6 = *(a1 + 8);
      if (!v6)
      {
        operator new();
      }

      v7 = *(a2 + 8);
      if (!v7)
      {
        sub_2453EB7EC();
        v7 = *(qword_2813CEEE0 + 8);
      }

      sub_245401024(v6, v7);
      v4 = *(a2 + 44);
      if ((v4 & 2) == 0)
      {
LABEL_6:
        if ((v4 & 4) == 0)
        {
          goto LABEL_7;
        }

        goto LABEL_19;
      }
    }

    else if ((*(a2 + 44) & 2) == 0)
    {
      goto LABEL_6;
    }

    v8 = *(a2 + 16);
    *(a1 + 44) |= 2u;
    *(a1 + 16) = v8;
    v4 = *(a2 + 44);
    if ((v4 & 4) == 0)
    {
LABEL_7:
      if ((v4 & 8) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_20;
    }

LABEL_19:
    v9 = *(a2 + 20);
    *(a1 + 44) |= 4u;
    *(a1 + 20) = v9;
    v4 = *(a2 + 44);
    if ((v4 & 8) == 0)
    {
LABEL_8:
      if ((v4 & 0x10) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_21;
    }

LABEL_20:
    v10 = *(a2 + 24);
    *(a1 + 44) |= 8u;
    *(a1 + 24) = v10;
    v4 = *(a2 + 44);
    if ((v4 & 0x10) == 0)
    {
LABEL_9:
      if ((v4 & 0x20) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_22;
    }

LABEL_21:
    v11 = *(a2 + 28);
    *(a1 + 44) |= 0x10u;
    *(a1 + 28) = v11;
    v4 = *(a2 + 44);
    if ((v4 & 0x20) == 0)
    {
LABEL_10:
      if ((v4 & 0x40) == 0)
      {
        return;
      }

      goto LABEL_11;
    }

LABEL_22:
    v12 = *(a2 + 32);
    *(a1 + 44) |= 0x20u;
    *(a1 + 32) = v12;
    if ((*(a2 + 44) & 0x40) == 0)
    {
      return;
    }

LABEL_11:
    v5 = *(a2 + 36);
    *(a1 + 44) |= 0x40u;
    *(a1 + 36) = v5;
  }
}

void sub_2454026F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_245402710(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = &unk_285856940;
  sub_2453EB7EC();
  if (qword_2813CEEE0 != a1)
  {
    v2 = *(a1 + 1);
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }
  }

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);
}

void sub_2454027A8(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  sub_245402710(a1);

  JUMPOUT(0x245D6A0D0);
}

uint64_t sub_245402838(uint64_t result)
{
  if (*(result + 44))
  {
    if (*(result + 44))
    {
      v1 = *(result + 8);
      if (v1)
      {
        if (*(v1 + 20))
        {
          *(v1 + 8) = 0;
        }

        *(v1 + 20) = 0;
      }
    }

    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
  }

  *(result + 44) = 0;
  return result;
}

uint64_t sub_24540286C(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormatLite *this, unsigned int a3)
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
              v16 = *(this + 1);
              v9 = *(this + 2);
              goto LABEL_77;
            }
          }

          else if (v7 == 7 && (TagFallback & 7) == 0)
          {
            v12 = *(this + 1);
            v9 = *(this + 2);
            goto LABEL_85;
          }

          goto LABEL_32;
        }

        if (v7 == 4)
        {
          if ((TagFallback & 7) != 0)
          {
            goto LABEL_32;
          }

          v15 = *(this + 1);
          v9 = *(this + 2);
LABEL_61:
          if (v15 >= v9 || (v30 = *v15, v30 < 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 24));
            if (!result)
            {
              return result;
            }

            v31 = *(this + 1);
            v9 = *(this + 2);
          }

          else
          {
            *(a1 + 24) = v30;
            v31 = v15 + 1;
            *(this + 1) = v31;
          }

          *(a1 + 44) |= 8u;
          if (v31 < v9 && *v31 == 40)
          {
            v10 = v31 + 1;
            *(this + 1) = v10;
LABEL_69:
            if (v10 >= v9 || (v32 = *v10, v32 < 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 28));
              if (!result)
              {
                return result;
              }

              v33 = *(this + 1);
              v9 = *(this + 2);
            }

            else
            {
              *(a1 + 28) = v32;
              v33 = v10 + 1;
              *(this + 1) = v33;
            }

            *(a1 + 44) |= 0x10u;
            if (v33 < v9 && *v33 == 48)
            {
              v16 = v33 + 1;
              *(this + 1) = v16;
LABEL_77:
              if (v16 >= v9 || (v34 = *v16, v34 < 0))
              {
                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 32));
                if (!result)
                {
                  return result;
                }

                v35 = *(this + 1);
                v9 = *(this + 2);
              }

              else
              {
                *(a1 + 32) = v34;
                v35 = v16 + 1;
                *(this + 1) = v35;
              }

              *(a1 + 44) |= 0x20u;
              if (v35 < v9 && *v35 == 56)
              {
                v12 = v35 + 1;
                *(this + 1) = v12;
LABEL_85:
                if (v12 >= v9 || (v36 = *v12, v36 < 0))
                {
                  result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 36));
                  if (!result)
                  {
                    return result;
                  }

                  v37 = *(this + 1);
                  v9 = *(this + 2);
                }

                else
                {
                  *(a1 + 36) = v36;
                  v37 = v12 + 1;
                  *(this + 1) = v37;
                }

                *(a1 + 44) |= 0x40u;
                if (v37 == v9 && (*(this + 11) || *(this + 6) == *(this + 10)))
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

        else
        {
          if (v7 == 5 && (TagFallback & 7) == 0)
          {
            v10 = *(this + 1);
            v9 = *(this + 2);
            goto LABEL_69;
          }

LABEL_32:
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

      if (v7 == 1)
      {
        break;
      }

      if (v7 != 2)
      {
        if (v7 != 3 || (TagFallback & 7) != 0)
        {
          goto LABEL_32;
        }

        v11 = *(this + 1);
        v9 = *(this + 2);
        goto LABEL_53;
      }

      if ((TagFallback & 7) != 0)
      {
        goto LABEL_32;
      }

      v17 = *(this + 1);
      v9 = *(this + 2);
LABEL_45:
      if (v17 >= v9 || (v25 = *v17, v25 < 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 16));
        if (!result)
        {
          return result;
        }

        v26 = *(this + 1);
        v9 = *(this + 2);
      }

      else
      {
        *(a1 + 16) = v25;
        v26 = v17 + 1;
        *(this + 1) = v26;
      }

      *(a1 + 44) |= 2u;
      if (v26 < v9 && *v26 == 24)
      {
        v11 = v26 + 1;
        *(this + 1) = v11;
LABEL_53:
        if (v11 >= v9 || (v28 = *v11, v28 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 20));
          if (!result)
          {
            return result;
          }

          v29 = *(this + 1);
          v9 = *(this + 2);
        }

        else
        {
          *(a1 + 20) = v28;
          v29 = v11 + 1;
          *(this + 1) = v29;
        }

        *(a1 + 44) |= 4u;
        if (v29 < v9 && *v29 == 32)
        {
          v15 = v29 + 1;
          *(this + 1) = v15;
          goto LABEL_61;
        }
      }
    }

    if (v8 != 2)
    {
      goto LABEL_32;
    }

    *(a1 + 44) |= 1u;
    v13 = *(a1 + 8);
    if (!v13)
    {
      operator new();
    }

    v38 = 0;
    v14 = *(this + 1);
    if (v14 >= *(this + 2) || *v14 < 0)
    {
      if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v38))
      {
        return 0;
      }
    }

    else
    {
      v38 = *v14;
      *(this + 1) = v14 + 1;
    }

    v18 = *(this + 14);
    v19 = *(this + 15);
    *(this + 14) = v18 + 1;
    if (v18 >= v19)
    {
      return 0;
    }

    wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this);
    if (!sub_2454011DC(v13, this, v20) || *(this + 36) != 1)
    {
      return 0;
    }

    wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this);
    v21 = *(this + 14);
    v22 = __OFSUB__(v21, 1);
    v23 = v21 - 1;
    if (v23 < 0 == v22)
    {
      *(this + 14) = v23;
    }

    v24 = *(this + 1);
    v9 = *(this + 2);
    if (v24 < v9 && *v24 == 16)
    {
      v17 = v24 + 1;
      *(this + 1) = v17;
      goto LABEL_45;
    }
  }
}

uint64_t sub_245402CF0(uint64_t result, wireless_diagnostics::google::protobuf::MessageLite *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = result;
  v6 = *(result + 44);
  if (v6)
  {
    v7 = *(result + 8);
    if (!v7)
    {
      sub_2453EB7EC();
      v7 = *(qword_2813CEEE0 + 8);
    }

    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(1, v7, a2, a4);
    v6 = v5[11];
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

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(2, v5[4], a2, a4);
  v6 = v5[11];
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
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(3, v5[5], a2, a4);
  v6 = v5[11];
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
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(4, v5[6], a2, a4);
  v6 = v5[11];
  if ((v6 & 0x10) == 0)
  {
LABEL_6:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_7;
    }

LABEL_16:
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(6, v5[8], a2, a4);
    if ((v5[11] & 0x40) == 0)
    {
      return result;
    }

    goto LABEL_17;
  }

LABEL_15:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(5, v5[7], a2, a4);
  v6 = v5[11];
  if ((v6 & 0x20) != 0)
  {
    goto LABEL_16;
  }

LABEL_7:
  if ((v6 & 0x40) == 0)
  {
    return result;
  }

LABEL_17:
  v8 = v5[9];

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(7, v8, a2, a4);
}

uint64_t sub_245402E00(uint64_t a1, unsigned int a2)
{
  LOBYTE(v3) = *(a1 + 44);
  if (!v3)
  {
    v4 = 0;
    goto LABEL_42;
  }

  if ((*(a1 + 44) & 1) == 0)
  {
    v4 = 0;
    if ((*(a1 + 44) & 2) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_12;
  }

  v5 = *(a1 + 8);
  if (!v5)
  {
    sub_2453EB7EC();
    v5 = *(qword_2813CEEE0 + 8);
  }

  v6 = sub_2454013DC(v5, a2);
  v7 = v6;
  if (v6 >= 0x80)
  {
    v8 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v6);
  }

  else
  {
    v8 = 1;
  }

  v4 = (v7 + v8 + 1);
  v3 = *(a1 + 44);
  if ((v3 & 2) != 0)
  {
LABEL_12:
    v9 = *(a1 + 16);
    if (v9 >= 0x80)
    {
      v10 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v9) + 1;
      v3 = *(a1 + 44);
    }

    else
    {
      v10 = 2;
    }

    v4 = (v10 + v4);
  }

LABEL_16:
  if ((v3 & 4) != 0)
  {
    v11 = *(a1 + 20);
    if (v11 >= 0x80)
    {
      v12 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v11) + 1;
      v3 = *(a1 + 44);
    }

    else
    {
      v12 = 2;
    }

    v4 = (v12 + v4);
    if ((v3 & 8) == 0)
    {
LABEL_18:
      if ((v3 & 0x10) == 0)
      {
        goto LABEL_19;
      }

      goto LABEL_30;
    }
  }

  else if ((v3 & 8) == 0)
  {
    goto LABEL_18;
  }

  v13 = *(a1 + 24);
  if (v13 >= 0x80)
  {
    v14 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v13) + 1;
    v3 = *(a1 + 44);
  }

  else
  {
    v14 = 2;
  }

  v4 = (v14 + v4);
  if ((v3 & 0x10) == 0)
  {
LABEL_19:
    if ((v3 & 0x20) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_34;
  }

LABEL_30:
  v15 = *(a1 + 28);
  if (v15 >= 0x80)
  {
    v16 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v15) + 1;
    v3 = *(a1 + 44);
  }

  else
  {
    v16 = 2;
  }

  v4 = (v16 + v4);
  if ((v3 & 0x20) == 0)
  {
LABEL_20:
    if ((v3 & 0x40) == 0)
    {
      goto LABEL_42;
    }

    goto LABEL_38;
  }

LABEL_34:
  v17 = *(a1 + 32);
  if (v17 >= 0x80)
  {
    v18 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v17) + 1;
    v3 = *(a1 + 44);
  }

  else
  {
    v18 = 2;
  }

  v4 = (v18 + v4);
  if ((v3 & 0x40) != 0)
  {
LABEL_38:
    v19 = *(a1 + 36);
    if (v19 >= 0x80)
    {
      v20 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v19) + 1;
    }

    else
    {
      v20 = 2;
    }

    v4 = (v20 + v4);
  }

LABEL_42:
  *(a1 + 40) = v4;
  return v4;
}

void sub_245402F8C(uint64_t a1, void *lpsrc)
{
  if (!__dynamic_cast(lpsrc, MEMORY[0x277D82C38], &unk_285858718, 0))
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  sub_24540253C(a1, lpsrc);
}

void sub_245403048(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v12);
  }

  LOBYTE(v4) = *(a2 + 40);
  if (v4)
  {
    if (*(a2 + 40))
    {
      *(a1 + 40) |= 1u;
      v6 = *(a1 + 8);
      if (!v6)
      {
        operator new();
      }

      v7 = *(a2 + 8);
      if (!v7)
      {
        sub_2453EB7EC();
        v7 = *(qword_2813CEF98 + 8);
      }

      sub_245401024(v6, v7);
      v4 = *(a2 + 40);
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

    else if ((*(a2 + 40) & 2) == 0)
    {
      goto LABEL_6;
    }

    v8 = *(a2 + 16);
    *(a1 + 40) |= 2u;
    *(a1 + 16) = v8;
    v4 = *(a2 + 40);
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
    v9 = *(a2 + 20);
    *(a1 + 40) |= 4u;
    *(a1 + 20) = v9;
    v4 = *(a2 + 40);
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
    v10 = *(a2 + 24);
    *(a1 + 40) |= 8u;
    *(a1 + 24) = v10;
    v4 = *(a2 + 40);
    if ((v4 & 0x10) == 0)
    {
LABEL_9:
      if ((v4 & 0x20) == 0)
      {
        return;
      }

      goto LABEL_10;
    }

LABEL_20:
    v11 = *(a2 + 28);
    *(a1 + 40) |= 0x10u;
    *(a1 + 28) = v11;
    if ((*(a2 + 40) & 0x20) == 0)
    {
      return;
    }

LABEL_10:
    v5 = *(a2 + 32);
    *(a1 + 40) |= 0x20u;
    *(a1 + 32) = v5;
  }
}

void sub_2454031E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_2454031FC(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = &unk_2858569B8;
  sub_2453EB7EC();
  if (qword_2813CEF98 != a1)
  {
    v2 = *(a1 + 1);
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }
  }

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);
}

void sub_245403294(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  sub_2454031FC(a1);

  JUMPOUT(0x245D6A0D0);
}

uint64_t sub_245403324(uint64_t result)
{
  if (*(result + 40))
  {
    if (*(result + 40))
    {
      v1 = *(result + 8);
      if (v1)
      {
        if (*(v1 + 20))
        {
          *(v1 + 8) = 0;
        }

        *(v1 + 20) = 0;
      }
    }

    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
  }

  *(result + 40) = 0;
  return result;
}

uint64_t sub_245403358(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormatLite *this, unsigned int a3)
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
        if (v7 == 4)
        {
          if ((TagFallback & 7) == 0)
          {
            v14 = *(this + 1);
            v9 = *(this + 2);
            goto LABEL_57;
          }
        }

        else if (v7 == 5)
        {
          if ((TagFallback & 7) == 0)
          {
            v16 = *(this + 1);
            v9 = *(this + 2);
            goto LABEL_65;
          }
        }

        else if (v7 == 6 && (TagFallback & 7) == 0)
        {
          v11 = *(this + 1);
          v9 = *(this + 2);
          goto LABEL_73;
        }

        goto LABEL_28;
      }

      if (v7 == 1)
      {
        break;
      }

      if (v7 == 2)
      {
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_28;
        }

        v15 = *(this + 1);
        v9 = *(this + 2);
LABEL_41:
        if (v15 >= v9 || (v24 = *v15, v24 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 16));
          if (!result)
          {
            return result;
          }

          v25 = *(this + 1);
          v9 = *(this + 2);
        }

        else
        {
          *(a1 + 16) = v24;
          v25 = v15 + 1;
          *(this + 1) = v25;
        }

        *(a1 + 40) |= 2u;
        if (v25 < v9 && *v25 == 24)
        {
          v10 = v25 + 1;
          *(this + 1) = v10;
LABEL_49:
          if (v10 >= v9 || (v27 = *v10, v27 < 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 20));
            if (!result)
            {
              return result;
            }

            v28 = *(this + 1);
            v9 = *(this + 2);
          }

          else
          {
            *(a1 + 20) = v27;
            v28 = v10 + 1;
            *(this + 1) = v28;
          }

          *(a1 + 40) |= 4u;
          if (v28 < v9 && *v28 == 32)
          {
            v14 = v28 + 1;
            *(this + 1) = v14;
LABEL_57:
            if (v14 >= v9 || (v29 = *v14, v29 < 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 24));
              if (!result)
              {
                return result;
              }

              v30 = *(this + 1);
              v9 = *(this + 2);
            }

            else
            {
              *(a1 + 24) = v29;
              v30 = v14 + 1;
              *(this + 1) = v30;
            }

            *(a1 + 40) |= 8u;
            if (v30 < v9 && *v30 == 40)
            {
              v16 = v30 + 1;
              *(this + 1) = v16;
LABEL_65:
              if (v16 >= v9 || (v31 = *v16, v31 < 0))
              {
                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 28));
                if (!result)
                {
                  return result;
                }

                v32 = *(this + 1);
                v9 = *(this + 2);
              }

              else
              {
                *(a1 + 28) = v31;
                v32 = v16 + 1;
                *(this + 1) = v32;
              }

              *(a1 + 40) |= 0x10u;
              if (v32 < v9 && *v32 == 48)
              {
                v11 = v32 + 1;
                *(this + 1) = v11;
LABEL_73:
                if (v11 >= v9 || (v33 = *v11, v33 < 0))
                {
                  result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 32));
                  if (!result)
                  {
                    return result;
                  }

                  v34 = *(this + 1);
                  v9 = *(this + 2);
                }

                else
                {
                  *(a1 + 32) = v33;
                  v34 = v11 + 1;
                  *(this + 1) = v34;
                }

                *(a1 + 40) |= 0x20u;
                if (v34 == v9 && (*(this + 11) || *(this + 6) == *(this + 10)))
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
      }

      else
      {
        if (v7 == 3 && (TagFallback & 7) == 0)
        {
          v10 = *(this + 1);
          v9 = *(this + 2);
          goto LABEL_49;
        }

LABEL_28:
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

    if (v8 != 2)
    {
      goto LABEL_28;
    }

    *(a1 + 40) |= 1u;
    v12 = *(a1 + 8);
    if (!v12)
    {
      operator new();
    }

    v35 = 0;
    v13 = *(this + 1);
    if (v13 >= *(this + 2) || *v13 < 0)
    {
      if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v35))
      {
        return 0;
      }
    }

    else
    {
      v35 = *v13;
      *(this + 1) = v13 + 1;
    }

    v17 = *(this + 14);
    v18 = *(this + 15);
    *(this + 14) = v17 + 1;
    if (v17 >= v18)
    {
      return 0;
    }

    wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this);
    if (!sub_2454011DC(v12, this, v19) || *(this + 36) != 1)
    {
      return 0;
    }

    wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this);
    v20 = *(this + 14);
    v21 = __OFSUB__(v20, 1);
    v22 = v20 - 1;
    if (v22 < 0 == v21)
    {
      *(this + 14) = v22;
    }

    v23 = *(this + 1);
    v9 = *(this + 2);
    if (v23 < v9 && *v23 == 16)
    {
      v15 = v23 + 1;
      *(this + 1) = v15;
      goto LABEL_41;
    }
  }
}

uint64_t sub_245403764(uint64_t result, wireless_diagnostics::google::protobuf::MessageLite *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = result;
  v6 = *(result + 40);
  if (v6)
  {
    v7 = *(result + 8);
    if (!v7)
    {
      sub_2453EB7EC();
      v7 = *(qword_2813CEF98 + 8);
    }

    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(1, v7, a2, a4);
    v6 = v5[10];
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

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(2, v5[4], a2, a4);
  v6 = v5[10];
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
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(3, v5[5], a2, a4);
  v6 = v5[10];
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_6;
    }

LABEL_14:
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(5, v5[7], a2, a4);
    if ((v5[10] & 0x20) == 0)
    {
      return result;
    }

    goto LABEL_15;
  }

LABEL_13:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(4, v5[6], a2, a4);
  v6 = v5[10];
  if ((v6 & 0x10) != 0)
  {
    goto LABEL_14;
  }

LABEL_6:
  if ((v6 & 0x20) == 0)
  {
    return result;
  }

LABEL_15:
  v8 = v5[8];

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(6, v8, a2, a4);
}

uint64_t sub_245403858(uint64_t a1, unsigned int a2)
{
  LOBYTE(v3) = *(a1 + 40);
  if (!v3)
  {
    v4 = 0;
    goto LABEL_37;
  }

  if ((*(a1 + 40) & 1) == 0)
  {
    v4 = 0;
    if ((*(a1 + 40) & 2) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_12;
  }

  v5 = *(a1 + 8);
  if (!v5)
  {
    sub_2453EB7EC();
    v5 = *(qword_2813CEF98 + 8);
  }

  v6 = sub_2454013DC(v5, a2);
  v7 = v6;
  if (v6 >= 0x80)
  {
    v8 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v6);
  }

  else
  {
    v8 = 1;
  }

  v4 = (v7 + v8 + 1);
  v3 = *(a1 + 40);
  if ((v3 & 2) != 0)
  {
LABEL_12:
    v9 = *(a1 + 16);
    if (v9 >= 0x80)
    {
      v10 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v9) + 1;
      v3 = *(a1 + 40);
    }

    else
    {
      v10 = 2;
    }

    v4 = (v10 + v4);
  }

LABEL_16:
  if ((v3 & 4) != 0)
  {
    v11 = *(a1 + 20);
    if (v11 >= 0x80)
    {
      v12 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v11) + 1;
      v3 = *(a1 + 40);
    }

    else
    {
      v12 = 2;
    }

    v4 = (v12 + v4);
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

  v13 = *(a1 + 24);
  if (v13 >= 0x80)
  {
    v14 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v13) + 1;
    v3 = *(a1 + 40);
  }

  else
  {
    v14 = 2;
  }

  v4 = (v14 + v4);
  if ((v3 & 0x10) == 0)
  {
LABEL_19:
    if ((v3 & 0x20) == 0)
    {
      goto LABEL_37;
    }

    goto LABEL_33;
  }

LABEL_29:
  v15 = *(a1 + 28);
  if (v15 >= 0x80)
  {
    v16 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v15) + 1;
    v3 = *(a1 + 40);
  }

  else
  {
    v16 = 2;
  }

  v4 = (v16 + v4);
  if ((v3 & 0x20) != 0)
  {
LABEL_33:
    v17 = *(a1 + 32);
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

LABEL_37:
  *(a1 + 36) = v4;
  return v4;
}

void sub_2454039B8(uint64_t a1, void *lpsrc)
{
  if (!__dynamic_cast(lpsrc, MEMORY[0x277D82C38], &unk_285858730, 0))
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  sub_245403048(a1, lpsrc);
}

void sub_245403A74(uint64_t a1, uint64_t a2)
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
      *(a1 + 24) |= 1u;
      v5 = *(a1 + 8);
      if (!v5)
      {
        operator new();
      }

      v6 = *(a2 + 8);
      if (!v6)
      {
        sub_2453EB7EC();
        v6 = *(qword_2813CEF78 + 8);
      }

      sub_245401024(v5, v6);
      v4 = *(a2 + 24);
    }

    if ((v4 & 2) != 0)
    {
      v7 = *(a2 + 16);
      *(a1 + 24) |= 2u;
      *(a1 + 16) = v7;
    }
  }
}

void sub_245403B88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_245403BA0(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = &unk_285856A30;
  sub_2453EB7EC();
  if (qword_2813CEF78 != a1)
  {
    v2 = *(a1 + 1);
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }
  }

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);
}

void sub_245403C38(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  sub_245403BA0(a1);

  JUMPOUT(0x245D6A0D0);
}

uint64_t sub_245403CC0(uint64_t result)
{
  if (*(result + 24))
  {
    if (*(result + 24))
    {
      v1 = *(result + 8);
      if (v1)
      {
        if (*(v1 + 20))
        {
          *(v1 + 8) = 0;
        }

        *(v1 + 20) = 0;
      }
    }

    *(result + 16) = 0;
  }

  *(result + 24) = 0;
  return result;
}

uint64_t sub_245403CF0(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormatLite *this, unsigned int a3)
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

      v7 = TagFallback & 7;
      if (TagFallback >> 3 != 2)
      {
        break;
      }

      if ((TagFallback & 7) == 0)
      {
        v11 = *(this + 1);
        v10 = *(this + 2);
        goto LABEL_28;
      }

LABEL_15:
      if (v7 == 4)
      {
        return 1;
      }

      if ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(this, TagFallback) & 1) == 0)
      {
        return 0;
      }
    }

    if (TagFallback >> 3 != 1 || v7 != 2)
    {
      goto LABEL_15;
    }

    *(a1 + 24) |= 1u;
    v8 = *(a1 + 8);
    if (!v8)
    {
      operator new();
    }

    v22 = 0;
    v9 = *(this + 1);
    if (v9 >= *(this + 2) || *v9 < 0)
    {
      if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v22))
      {
        return 0;
      }
    }

    else
    {
      v22 = *v9;
      *(this + 1) = v9 + 1;
    }

    v12 = *(this + 14);
    v13 = *(this + 15);
    *(this + 14) = v12 + 1;
    if (v12 >= v13)
    {
      return 0;
    }

    wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this);
    if (!sub_2454011DC(v8, this, v14) || *(this + 36) != 1)
    {
      return 0;
    }

    wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this);
    v15 = *(this + 14);
    v16 = __OFSUB__(v15, 1);
    v17 = v15 - 1;
    if (v17 < 0 == v16)
    {
      *(this + 14) = v17;
    }

    v18 = *(this + 1);
    v10 = *(this + 2);
    if (v18 < v10 && *v18 == 16)
    {
      v11 = v18 + 1;
      *(this + 1) = v11;
LABEL_28:
      if (v11 >= v10 || (v19 = *v11, v19 < 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 16));
        if (!result)
        {
          return result;
        }

        v20 = *(this + 1);
        v10 = *(this + 2);
      }

      else
      {
        *(a1 + 16) = v19;
        v20 = v11 + 1;
        *(this + 1) = v20;
      }

      *(a1 + 24) |= 2u;
      if (v20 == v10 && (*(this + 11) || *(this + 6) == *(this + 10)))
      {
        *(this + 8) = 0;
        result = 1;
        *(this + 36) = 1;
        return result;
      }
    }
  }
}

uint64_t sub_245403F34(uint64_t result, wireless_diagnostics::google::protobuf::MessageLite *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = result;
  v6 = *(result + 24);
  if (v6)
  {
    v7 = *(result + 8);
    if (!v7)
    {
      sub_2453EB7EC();
      v7 = *(qword_2813CEF78 + 8);
    }

    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(1, v7, a2, a4);
    v6 = *(v5 + 24);
  }

  if ((v6 & 2) != 0)
  {
    v8 = *(v5 + 16);

    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(2, v8, a2, a4);
  }

  return result;
}

uint64_t sub_245403FB4(uint64_t a1, unsigned int a2)
{
  if (!*(a1 + 24))
  {
    v3 = 0;
    goto LABEL_16;
  }

  if ((*(a1 + 24) & 1) == 0)
  {
    v3 = 0;
    if ((*(a1 + 24) & 2) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_12;
  }

  v4 = *(a1 + 8);
  if (!v4)
  {
    sub_2453EB7EC();
    v4 = *(qword_2813CEF78 + 8);
  }

  v5 = sub_2454013DC(v4, a2);
  v6 = v5;
  if (v5 >= 0x80)
  {
    v7 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5);
  }

  else
  {
    v7 = 1;
  }

  v3 = (v6 + v7 + 1);
  if ((*(a1 + 24) & 2) != 0)
  {
LABEL_12:
    v8 = *(a1 + 16);
    if (v8 >= 0x80)
    {
      v9 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v8) + 1;
    }

    else
    {
      v9 = 2;
    }

    v3 = (v9 + v3);
  }

LABEL_16:
  *(a1 + 20) = v3;
  return v3;
}

void sub_245404064(uint64_t a1, void *lpsrc)
{
  if (!__dynamic_cast(lpsrc, MEMORY[0x277D82C38], &unk_285858748, 0))
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  sub_245403A74(a1, lpsrc);
}

void sub_245404120(_DWORD *a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v11);
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
        wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v11);
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
      sub_245401024(*(v9 + 8 * v8), v6);
      ++v5;
      v4 = *(a2 + 16);
    }

    while (v5 < v4);
  }

  if (*(a2 + 40))
  {
    v10 = *(a2 + 32);
    a1[10] |= 1u;
    a1[8] = v10;
  }
}

void sub_2454042EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_24540430C(uint64_t a1)
{
  *a1 = &unk_285856AA8;
  sub_2453EB7EC();
  v2 = *(a1 + 20);
  if (v2 >= 1)
  {
    for (i = 0; i < v2; ++i)
    {
      v4 = *(*(a1 + 8) + 8 * i);
      if (v4)
      {
        (*(*v4 + 8))(v4);
        v2 = *(a1 + 20);
      }
    }
  }

  v5 = *(a1 + 8);
  if (v5)
  {
    MEMORY[0x245D6A0A0](v5, 0x80C80B8603338);
  }

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);
}

void sub_2454043D4(uint64_t a1)
{
  sub_24540430C(a1);

  JUMPOUT(0x245D6A0D0);
}

uint64_t sub_245404464(uint64_t a1)
{
  if (*(a1 + 40))
  {
    *(a1 + 32) = 0;
  }

  result = sub_2453DC6D0(a1 + 8);
  *(a1 + 40) = 0;
  return result;
}

uint64_t sub_24540449C(_DWORD *a1, wireless_diagnostics::google::protobuf::internal::WireFormatLite *this, unsigned int a3)
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

      v7 = TagFallback & 7;
      if (TagFallback >> 3 == 2)
      {
        break;
      }

      if (TagFallback >> 3 != 1 || (TagFallback & 7) != 0)
      {
        goto LABEL_13;
      }

      v8 = *(this + 1);
      v9 = *(this + 2);
      if (v8 >= v9 || (v10 = *v8, v10 < 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, a1 + 8);
        if (!result)
        {
          return result;
        }

        v11 = *(this + 1);
        v9 = *(this + 2);
      }

      else
      {
        a1[8] = v10;
        v11 = v8 + 1;
        *(this + 1) = v11;
      }

      a1[10] |= 1u;
      if (v11 < v9 && *v11 == 18)
      {
        do
        {
          *(this + 1) = v11 + 1;
LABEL_21:
          v13 = a1[5];
          v14 = a1[4];
          if (v14 >= v13)
          {
            if (v13 == a1[6])
            {
              wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 2));
              v13 = a1[5];
            }

            a1[5] = v13 + 1;
            operator new();
          }

          v15 = *(a1 + 1);
          a1[4] = v14 + 1;
          v16 = *(v15 + 8 * v14);
          v25 = 0;
          v17 = *(this + 1);
          if (v17 >= *(this + 2) || *v17 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v25))
            {
              return 0;
            }
          }

          else
          {
            v25 = *v17;
            *(this + 1) = v17 + 1;
          }

          v18 = *(this + 14);
          v19 = *(this + 15);
          *(this + 14) = v18 + 1;
          if (v18 >= v19)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this);
          if (!sub_2454011DC(v16, this, v20) || *(this + 36) != 1)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this);
          v21 = *(this + 14);
          v22 = __OFSUB__(v21, 1);
          v23 = v21 - 1;
          if (v23 < 0 == v22)
          {
            *(this + 14) = v23;
          }

          v11 = *(this + 1);
          v24 = *(this + 2);
        }

        while (v11 < v24 && *v11 == 18);
        if (v11 == v24 && (*(this + 11) || *(this + 6) == *(this + 10)))
        {
          *(this + 8) = 0;
          result = 1;
          *(this + 36) = 1;
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

    if ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(this, TagFallback) & 1) == 0)
    {
      return 0;
    }
  }
}

uint64_t sub_24540473C(uint64_t result, wireless_diagnostics::google::protobuf::MessageLite *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = result;
  if (*(result + 40))
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(1, *(result + 32), a2, a4);
  }

  if (*(v5 + 16) >= 1)
  {
    v6 = 0;
    do
    {
      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(2, *(*(v5 + 8) + 8 * v6++), a2, a4);
    }

    while (v6 < *(v5 + 16));
  }

  return result;
}

uint64_t sub_2454047B4(uint64_t a1, unsigned int a2)
{
  if (*(a1 + 40))
  {
    v4 = *(a1 + 32);
    if (v4 >= 0x80)
    {
      v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v4) + 1;
    }

    else
    {
      v3 = 2;
    }
  }

  else
  {
    v3 = 0;
  }

  v5 = *(a1 + 16);
  v6 = (v5 + v3);
  if (v5 >= 1)
  {
    v7 = 0;
    do
    {
      v8 = sub_2454013DC(*(*(a1 + 8) + 8 * v7), a2);
      v9 = v8;
      if (v8 >= 0x80)
      {
        v10 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v8);
      }

      else
      {
        v10 = 1;
      }

      v6 = (v9 + v6 + v10);
      ++v7;
    }

    while (v7 < *(a1 + 16));
  }

  *(a1 + 36) = v6;
  return v6;
}

void sub_245404864(_DWORD *a1, void *lpsrc)
{
  if (!__dynamic_cast(lpsrc, MEMORY[0x277D82C38], &unk_285858760, 0))
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  sub_245404120(a1, lpsrc);
}

void sub_245404920(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v20);
  }

  LOBYTE(v4) = *(a2 + 72);
  if (!v4)
  {
    return;
  }

  if (*(a2 + 72))
  {
    *(a1 + 72) |= 1u;
    v6 = *(a1 + 8);
    if (!v6)
    {
      operator new();
    }

    v7 = *(a2 + 8);
    if (!v7)
    {
      sub_2453EB7EC();
      v7 = *(qword_2813CEED0 + 8);
    }

    sub_245401544(v6, v7);
    v4 = *(a2 + 72);
    if ((v4 & 2) == 0)
    {
LABEL_6:
      if ((v4 & 4) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_24;
    }
  }

  else if ((*(a2 + 72) & 2) == 0)
  {
    goto LABEL_6;
  }

  *(a1 + 72) |= 2u;
  v8 = *(a1 + 16);
  if (!v8)
  {
    operator new();
  }

  v9 = *(a2 + 16);
  if (!v9)
  {
    sub_2453EB7EC();
    v9 = *(qword_2813CEED0 + 16);
  }

  sub_245401BF0(v8, v9);
  v4 = *(a2 + 72);
  if ((v4 & 4) == 0)
  {
LABEL_7:
    if ((v4 & 8) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_29;
  }

LABEL_24:
  *(a1 + 72) |= 4u;
  v10 = *(a1 + 24);
  if (!v10)
  {
    operator new();
  }

  v11 = *(a2 + 24);
  if (!v11)
  {
    sub_2453EB7EC();
    v11 = *(qword_2813CEED0 + 24);
  }

  sub_24540253C(v10, v11);
  v4 = *(a2 + 72);
  if ((v4 & 8) == 0)
  {
LABEL_8:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_34;
  }

LABEL_29:
  *(a1 + 72) |= 8u;
  v12 = *(a1 + 32);
  if (!v12)
  {
    operator new();
  }

  v13 = *(a2 + 32);
  if (!v13)
  {
    sub_2453EB7EC();
    v13 = *(qword_2813CEED0 + 32);
  }

  sub_245403048(v12, v13);
  v4 = *(a2 + 72);
  if ((v4 & 0x10) == 0)
  {
LABEL_9:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_10;
    }

LABEL_39:
    *(a1 + 72) |= 0x20u;
    v16 = *(a1 + 48);
    if (!v16)
    {
      operator new();
    }

    v17 = *(a2 + 48);
    if (!v17)
    {
      sub_2453EB7EC();
      v17 = *(qword_2813CEED0 + 48);
    }

    sub_245403A74(v16, v17);
    v4 = *(a2 + 72);
    if ((v4 & 0x40) == 0)
    {
LABEL_11:
      if ((v4 & 0x80) == 0)
      {
        return;
      }

      goto LABEL_12;
    }

    goto LABEL_44;
  }

LABEL_34:
  *(a1 + 72) |= 0x10u;
  v14 = *(a1 + 40);
  if (!v14)
  {
    operator new();
  }

  v15 = *(a2 + 40);
  if (!v15)
  {
    sub_2453EB7EC();
    v15 = *(qword_2813CEED0 + 40);
  }

  sub_245401024(v14, v15);
  v4 = *(a2 + 72);
  if ((v4 & 0x20) != 0)
  {
    goto LABEL_39;
  }

LABEL_10:
  if ((v4 & 0x40) == 0)
  {
    goto LABEL_11;
  }

LABEL_44:
  *(a1 + 72) |= 0x40u;
  v18 = *(a1 + 56);
  if (!v18)
  {
    operator new();
  }

  v19 = *(a2 + 56);
  if (!v19)
  {
    sub_2453EB7EC();
    v19 = *(qword_2813CEED0 + 56);
  }

  sub_245404120(v18, v19);
  if ((*(a2 + 72) & 0x80) != 0)
  {
LABEL_12:
    v5 = *(a2 + 64);
    *(a1 + 72) |= 0x80u;
    *(a1 + 64) = v5;
  }
}

void sub_245404D70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_245404D88(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = &unk_285856B20;
  sub_2453EB7EC();
  if (qword_2813CEED0 != a1)
  {
    v2 = *(a1 + 1);
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }

    v3 = *(a1 + 2);
    if (v3)
    {
      (*(*v3 + 8))(v3);
    }

    v4 = *(a1 + 3);
    if (v4)
    {
      (*(*v4 + 8))(v4);
    }

    v5 = *(a1 + 4);
    if (v5)
    {
      (*(*v5 + 8))(v5);
    }

    v6 = *(a1 + 5);
    if (v6)
    {
      (*(*v6 + 8))(v6);
    }

    v7 = *(a1 + 6);
    if (v7)
    {
      (*(*v7 + 8))(v7);
    }

    v8 = *(a1 + 7);
    if (v8)
    {
      (*(*v8 + 8))(v8);
    }
  }

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);
}

void sub_245404F28(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  sub_245404D88(a1);

  JUMPOUT(0x245D6A0D0);
}

uint64_t sub_245404FC0(uint64_t result)
{
  v1 = result;
  LOBYTE(v2) = *(result + 72);
  if (v2)
  {
    if (*(result + 72))
    {
      result = *(result + 8);
      if (result)
      {
        result = sub_245401790(result);
        v2 = *(v1 + 72);
      }
    }

    if ((v2 & 2) != 0)
    {
      result = *(v1 + 16);
      if (result)
      {
        result = sub_245401EA8(result);
        v2 = *(v1 + 72);
      }
    }

    if ((v2 & 4) != 0)
    {
      result = *(v1 + 24);
      if (result)
      {
        result = sub_245402838(result);
        v2 = *(v1 + 72);
      }
    }

    if ((v2 & 8) != 0)
    {
      result = *(v1 + 32);
      if (result)
      {
        result = sub_245403324(result);
        v2 = *(v1 + 72);
      }
    }

    if ((v2 & 0x10) != 0)
    {
      v3 = *(v1 + 40);
      if (v3)
      {
        if (*(v3 + 20))
        {
          *(v3 + 8) = 0;
        }

        *(v3 + 20) = 0;
        v2 = *(v1 + 72);
      }
    }

    if ((v2 & 0x20) != 0)
    {
      result = *(v1 + 48);
      if (result)
      {
        result = sub_245403CC0(result);
        v2 = *(v1 + 72);
      }
    }

    if ((v2 & 0x40) != 0)
    {
      v4 = *(v1 + 56);
      if (v4)
      {
        if (*(v4 + 40))
        {
          *(v4 + 32) = 0;
        }

        result = sub_2453DC6D0(v4 + 8);
        *(v4 + 40) = 0;
      }
    }

    *(v1 + 64) = 0;
  }

  *(v1 + 72) = 0;
  return result;
}

uint64_t sub_245405098(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormatLite *this, unsigned int a3)
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
        if (TagFallback >> 3 <= 4)
        {
          break;
        }

        if (TagFallback >> 3 <= 6)
        {
          if (v7 == 5)
          {
            if (v8 == 2)
            {
              goto LABEL_90;
            }
          }

          else if (v7 == 6 && v8 == 2)
          {
            goto LABEL_104;
          }

          goto LABEL_36;
        }

        if (v7 != 7)
        {
          if (v7 == 8 && (TagFallback & 7) == 0)
          {
            v10 = *(this + 1);
            v9 = *(this + 2);
            goto LABEL_132;
          }

          goto LABEL_36;
        }

        if (v8 != 2)
        {
          goto LABEL_36;
        }

LABEL_118:
        *(a1 + 72) |= 0x40u;
        v60 = *(a1 + 56);
        if (!v60)
        {
          operator new();
        }

        v71 = 0;
        v61 = *(this + 1);
        if (v61 >= *(this + 2) || *v61 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v71))
          {
            return 0;
          }
        }

        else
        {
          v71 = *v61;
          *(this + 1) = v61 + 1;
        }

        v62 = *(this + 14);
        v63 = *(this + 15);
        *(this + 14) = v62 + 1;
        if (v62 >= v63)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this);
        if (!sub_24540449C(v60, this, v64) || *(this + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this);
        v65 = *(this + 14);
        v17 = __OFSUB__(v65, 1);
        v66 = v65 - 1;
        if (v66 < 0 == v17)
        {
          *(this + 14) = v66;
        }

        v67 = *(this + 1);
        v9 = *(this + 2);
        if (v67 < v9 && *v67 == 64)
        {
          v10 = v67 + 1;
          *(this + 1) = v10;
LABEL_132:
          if (v10 >= v9 || (v68 = *v10, v68 < 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 64));
            if (!result)
            {
              return result;
            }

            v69 = *(this + 1);
            v9 = *(this + 2);
          }

          else
          {
            *(a1 + 64) = v68;
            v69 = v10 + 1;
            *(this + 1) = v69;
          }

          *(a1 + 72) |= 0x80u;
          if (v69 == v9 && (*(this + 11) || *(this + 6) == *(this + 10)))
          {
            *(this + 8) = 0;
            result = 1;
            *(this + 36) = 1;
            return result;
          }
        }
      }

      if (TagFallback >> 3 > 2)
      {
        if (v7 == 3)
        {
          if (v8 == 2)
          {
            goto LABEL_62;
          }
        }

        else if (v7 == 4 && v8 == 2)
        {
          goto LABEL_76;
        }

        goto LABEL_36;
      }

      if (v7 != 1)
      {
        break;
      }

      if (v8 != 2)
      {
        goto LABEL_36;
      }

      *(a1 + 72) |= 1u;
      v11 = *(a1 + 8);
      if (!v11)
      {
        operator new();
      }

      v71 = 0;
      v12 = *(this + 1);
      if (v12 >= *(this + 2) || *v12 < 0)
      {
        if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v71))
        {
          return 0;
        }
      }

      else
      {
        v71 = *v12;
        *(this + 1) = v12 + 1;
      }

      v13 = *(this + 14);
      v14 = *(this + 15);
      *(this + 14) = v13 + 1;
      if (v13 >= v14)
      {
        return 0;
      }

      wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this);
      if (!sub_2454017C0(v11, this, v15) || *(this + 36) != 1)
      {
        return 0;
      }

      wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this);
      v16 = *(this + 14);
      v17 = __OFSUB__(v16, 1);
      v18 = v16 - 1;
      if (v18 < 0 == v17)
      {
        *(this + 14) = v18;
      }

      v19 = *(this + 1);
      if (v19 < *(this + 2) && *v19 == 18)
      {
        *(this + 1) = v19 + 1;
LABEL_48:
        *(a1 + 72) |= 2u;
        v20 = *(a1 + 16);
        if (!v20)
        {
          operator new();
        }

        v71 = 0;
        v21 = *(this + 1);
        if (v21 >= *(this + 2) || *v21 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v71))
          {
            return 0;
          }
        }

        else
        {
          v71 = *v21;
          *(this + 1) = v21 + 1;
        }

        v22 = *(this + 14);
        v23 = *(this + 15);
        *(this + 14) = v22 + 1;
        if (v22 >= v23)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this);
        if (!sub_245401ED8(v20, this, v24) || *(this + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this);
        v25 = *(this + 14);
        v17 = __OFSUB__(v25, 1);
        v26 = v25 - 1;
        if (v26 < 0 == v17)
        {
          *(this + 14) = v26;
        }

        v27 = *(this + 1);
        if (v27 < *(this + 2) && *v27 == 26)
        {
          *(this + 1) = v27 + 1;
LABEL_62:
          *(a1 + 72) |= 4u;
          v28 = *(a1 + 24);
          if (!v28)
          {
            operator new();
          }

          v71 = 0;
          v29 = *(this + 1);
          if (v29 >= *(this + 2) || *v29 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v71))
            {
              return 0;
            }
          }

          else
          {
            v71 = *v29;
            *(this + 1) = v29 + 1;
          }

          v30 = *(this + 14);
          v31 = *(this + 15);
          *(this + 14) = v30 + 1;
          if (v30 >= v31)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this);
          if (!sub_24540286C(v28, this, v32) || *(this + 36) != 1)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this);
          v33 = *(this + 14);
          v17 = __OFSUB__(v33, 1);
          v34 = v33 - 1;
          if (v34 < 0 == v17)
          {
            *(this + 14) = v34;
          }

          v35 = *(this + 1);
          if (v35 < *(this + 2) && *v35 == 34)
          {
            *(this + 1) = v35 + 1;
LABEL_76:
            *(a1 + 72) |= 8u;
            v36 = *(a1 + 32);
            if (!v36)
            {
              operator new();
            }

            v71 = 0;
            v37 = *(this + 1);
            if (v37 >= *(this + 2) || *v37 < 0)
            {
              if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v71))
              {
                return 0;
              }
            }

            else
            {
              v71 = *v37;
              *(this + 1) = v37 + 1;
            }

            v38 = *(this + 14);
            v39 = *(this + 15);
            *(this + 14) = v38 + 1;
            if (v38 >= v39)
            {
              return 0;
            }

            wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this);
            if (!sub_245403358(v36, this, v40) || *(this + 36) != 1)
            {
              return 0;
            }

            wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this);
            v41 = *(this + 14);
            v17 = __OFSUB__(v41, 1);
            v42 = v41 - 1;
            if (v42 < 0 == v17)
            {
              *(this + 14) = v42;
            }

            v43 = *(this + 1);
            if (v43 < *(this + 2) && *v43 == 42)
            {
              *(this + 1) = v43 + 1;
LABEL_90:
              *(a1 + 72) |= 0x10u;
              v44 = *(a1 + 40);
              if (!v44)
              {
                operator new();
              }

              v71 = 0;
              v45 = *(this + 1);
              if (v45 >= *(this + 2) || *v45 < 0)
              {
                if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v71))
                {
                  return 0;
                }
              }

              else
              {
                v71 = *v45;
                *(this + 1) = v45 + 1;
              }

              v46 = *(this + 14);
              v47 = *(this + 15);
              *(this + 14) = v46 + 1;
              if (v46 >= v47)
              {
                return 0;
              }

              wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this);
              if (!sub_2454011DC(v44, this, v48) || *(this + 36) != 1)
              {
                return 0;
              }

              wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this);
              v49 = *(this + 14);
              v17 = __OFSUB__(v49, 1);
              v50 = v49 - 1;
              if (v50 < 0 == v17)
              {
                *(this + 14) = v50;
              }

              v51 = *(this + 1);
              if (v51 < *(this + 2) && *v51 == 50)
              {
                *(this + 1) = v51 + 1;
LABEL_104:
                *(a1 + 72) |= 0x20u;
                v52 = *(a1 + 48);
                if (!v52)
                {
                  operator new();
                }

                v71 = 0;
                v53 = *(this + 1);
                if (v53 >= *(this + 2) || *v53 < 0)
                {
                  if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v71))
                  {
                    return 0;
                  }
                }

                else
                {
                  v71 = *v53;
                  *(this + 1) = v53 + 1;
                }

                v54 = *(this + 14);
                v55 = *(this + 15);
                *(this + 14) = v54 + 1;
                if (v54 >= v55)
                {
                  return 0;
                }

                wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this);
                if (!sub_245403CF0(v52, this, v56) || *(this + 36) != 1)
                {
                  return 0;
                }

                wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this);
                v57 = *(this + 14);
                v17 = __OFSUB__(v57, 1);
                v58 = v57 - 1;
                if (v58 < 0 == v17)
                {
                  *(this + 14) = v58;
                }

                v59 = *(this + 1);
                if (v59 < *(this + 2) && *v59 == 58)
                {
                  *(this + 1) = v59 + 1;
                  goto LABEL_118;
                }
              }
            }
          }
        }
      }
    }

    if (v7 == 2 && v8 == 2)
    {
      goto LABEL_48;
    }

LABEL_36:
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

uint64_t sub_2454059E4(uint64_t result, wireless_diagnostics::google::protobuf::MessageLite *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = result;
  v6 = *(result + 72);
  if (v6)
  {
    v7 = *(result + 8);
    if (!v7)
    {
      sub_2453EB7EC();
      v7 = *(qword_2813CEED0 + 8);
    }

    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(1, v7, a2, a4);
    v6 = *(v5 + 72);
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

  v8 = *(v5 + 16);
  if (!v8)
  {
    sub_2453EB7EC();
    v8 = *(qword_2813CEED0 + 16);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(2, v8, a2, a4);
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

LABEL_16:
  v9 = *(v5 + 24);
  if (!v9)
  {
    sub_2453EB7EC();
    v9 = *(qword_2813CEED0 + 24);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(3, v9, a2, a4);
  v6 = *(v5 + 72);
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_22;
  }

LABEL_19:
  v10 = *(v5 + 32);
  if (!v10)
  {
    sub_2453EB7EC();
    v10 = *(qword_2813CEED0 + 32);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(4, v10, a2, a4);
  v6 = *(v5 + 72);
  if ((v6 & 0x10) == 0)
  {
LABEL_6:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_25;
  }

LABEL_22:
  v11 = *(v5 + 40);
  if (!v11)
  {
    sub_2453EB7EC();
    v11 = *(qword_2813CEED0 + 40);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(5, v11, a2, a4);
  v6 = *(v5 + 72);
  if ((v6 & 0x20) == 0)
  {
LABEL_7:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_28;
  }

LABEL_25:
  v12 = *(v5 + 48);
  if (!v12)
  {
    sub_2453EB7EC();
    v12 = *(qword_2813CEED0 + 48);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(6, v12, a2, a4);
  v6 = *(v5 + 72);
  if ((v6 & 0x40) == 0)
  {
LABEL_8:
    if ((v6 & 0x80) == 0)
    {
      return result;
    }

    goto LABEL_31;
  }

LABEL_28:
  v13 = *(v5 + 56);
  if (!v13)
  {
    sub_2453EB7EC();
    v13 = *(qword_2813CEED0 + 56);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(7, v13, a2, a4);
  if ((*(v5 + 72) & 0x80) != 0)
  {
LABEL_31:
    v14 = *(v5 + 64);

    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(8, v14, a2, a4);
  }

  return result;
}

uint64_t sub_245405B88(uint64_t a1, unsigned int a2)
{
  LOBYTE(v3) = *(a1 + 72);
  if (!v3)
  {
    v4 = 0;
    goto LABEL_59;
  }

  if ((*(a1 + 72) & 1) == 0)
  {
    v4 = 0;
    if ((*(a1 + 72) & 2) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_12;
  }

  v5 = *(a1 + 8);
  if (!v5)
  {
    sub_2453EB7EC();
    v5 = *(qword_2813CEED0 + 8);
  }

  v6 = sub_245401A84(v5, a2);
  v7 = v6;
  if (v6 >= 0x80)
  {
    v8 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v6);
  }

  else
  {
    v8 = 1;
  }

  v4 = (v7 + v8 + 1);
  v3 = *(a1 + 72);
  if ((v3 & 2) != 0)
  {
LABEL_12:
    v9 = *(a1 + 16);
    if (!v9)
    {
      sub_2453EB7EC();
      v9 = *(qword_2813CEED0 + 16);
    }

    v10 = sub_24540234C(v9, a2);
    v11 = v10;
    if (v10 >= 0x80)
    {
      v12 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v10);
    }

    else
    {
      v12 = 1;
    }

    v4 = (v4 + v11 + v12 + 1);
    v3 = *(a1 + 72);
  }

LABEL_18:
  if ((v3 & 4) != 0)
  {
    v13 = *(a1 + 24);
    if (!v13)
    {
      sub_2453EB7EC();
      v13 = *(qword_2813CEED0 + 24);
    }

    v14 = sub_245402E00(v13, a2);
    v15 = v14;
    if (v14 >= 0x80)
    {
      v16 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v14);
    }

    else
    {
      v16 = 1;
    }

    v4 = (v4 + v15 + v16 + 1);
    v3 = *(a1 + 72);
    if ((v3 & 8) == 0)
    {
LABEL_20:
      if ((v3 & 0x10) == 0)
      {
        goto LABEL_21;
      }

      goto LABEL_37;
    }
  }

  else if ((v3 & 8) == 0)
  {
    goto LABEL_20;
  }

  v17 = *(a1 + 32);
  if (!v17)
  {
    sub_2453EB7EC();
    v17 = *(qword_2813CEED0 + 32);
  }

  v18 = sub_245403858(v17, a2);
  v19 = v18;
  if (v18 >= 0x80)
  {
    v20 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v18);
  }

  else
  {
    v20 = 1;
  }

  v4 = (v4 + v19 + v20 + 1);
  v3 = *(a1 + 72);
  if ((v3 & 0x10) == 0)
  {
LABEL_21:
    if ((v3 & 0x20) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_43;
  }

LABEL_37:
  v21 = *(a1 + 40);
  if (!v21)
  {
    sub_2453EB7EC();
    v21 = *(qword_2813CEED0 + 40);
  }

  v22 = sub_2454013DC(v21, a2);
  v23 = v22;
  if (v22 >= 0x80)
  {
    v24 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v22);
  }

  else
  {
    v24 = 1;
  }

  v4 = (v4 + v23 + v24 + 1);
  v3 = *(a1 + 72);
  if ((v3 & 0x20) == 0)
  {
LABEL_22:
    if ((v3 & 0x40) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_49;
  }

LABEL_43:
  v25 = *(a1 + 48);
  if (!v25)
  {
    sub_2453EB7EC();
    v25 = *(qword_2813CEED0 + 48);
  }

  v26 = sub_245403FB4(v25, a2);
  v27 = v26;
  if (v26 >= 0x80)
  {
    v28 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v26);
  }

  else
  {
    v28 = 1;
  }

  v4 = (v4 + v27 + v28 + 1);
  v3 = *(a1 + 72);
  if ((v3 & 0x40) == 0)
  {
LABEL_23:
    if ((v3 & 0x80) == 0)
    {
      goto LABEL_59;
    }

    goto LABEL_55;
  }

LABEL_49:
  v29 = *(a1 + 56);
  if (!v29)
  {
    sub_2453EB7EC();
    v29 = *(qword_2813CEED0 + 56);
  }

  v30 = sub_2454047B4(v29, a2);
  v31 = v30;
  if (v30 >= 0x80)
  {
    v32 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v30);
  }

  else
  {
    v32 = 1;
  }

  v4 = (v4 + v31 + v32 + 1);
  if ((*(a1 + 72) & 0x80) != 0)
  {
LABEL_55:
    v33 = *(a1 + 64);
    if (v33 >= 0x80)
    {
      v34 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v33) + 1;
    }

    else
    {
      v34 = 2;
    }

    v4 = (v34 + v4);
  }

LABEL_59:
  *(a1 + 68) = v4;
  return v4;
}

void sub_245405E20(uint64_t a1, void *lpsrc)
{
  if (!__dynamic_cast(lpsrc, MEMORY[0x277D82C38], &unk_285858778, 0))
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  sub_245404920(a1, lpsrc);
}

void sub_245405EDC(uint64_t a1, uint64_t a2)
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
      v5 = *(a2 + 16);
      if (v5 >= 9)
      {
        __assert_rtn("set_shape_type", "GnssEmergencyTypes.pb.h", 19157, "::CoreGem::proto::gnss::Emergency::ShapeType_IsValid(value)");
      }

      *(a1 + 24) |= 1u;
      *(a1 + 16) = v5;
      v4 = *(a2 + 24);
    }

    if ((v4 & 2) != 0)
    {
      *(a1 + 24) |= 2u;
      v6 = *(a1 + 8);
      if (!v6)
      {
        operator new();
      }

      v7 = *(a2 + 8);
      if (!v7)
      {
        sub_2453EB7EC();
        v7 = *(qword_2813CEFB0 + 8);
      }

      sub_245404920(v6, v7);
    }
  }
}

void sub_24540602C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_245406044(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = &unk_285856B98;
  sub_2453EB7EC();
  if (qword_2813CEFB0 != a1)
  {
    v2 = *(a1 + 1);
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }
  }

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);
}

void sub_2454060DC(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  sub_245406044(a1);

  JUMPOUT(0x245D6A0D0);
}

uint64_t sub_245406164(uint64_t result)
{
  v1 = result;
  v2 = *(result + 24);
  if (v2)
  {
    *(result + 16) = 0;
    if ((v2 & 2) != 0)
    {
      result = *(result + 8);
      if (result)
      {
        result = sub_245404FC0(result);
      }
    }
  }

  *(v1 + 24) = 0;
  return result;
}

uint64_t sub_2454061A4(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormatLite *this, unsigned int a3)
{
  while (1)
  {
    do
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

        v7 = TagFallback & 7;
        if (TagFallback >> 3 != 2)
        {
          break;
        }

        if (v7 == 2)
        {
          goto LABEL_23;
        }

LABEL_13:
        if (v7 == 4)
        {
          return 1;
        }

        if ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(this, TagFallback) & 1) == 0)
        {
          return 0;
        }
      }

      if (TagFallback >> 3 != 1 || (TagFallback & 7) != 0)
      {
        goto LABEL_13;
      }

      v20 = 0;
      v8 = *(this + 1);
      if (v8 >= *(this + 2) || (v9 = *v8, (v9 & 0x80000000) != 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v20);
        if (!result)
        {
          return result;
        }

        v9 = v20;
      }

      else
      {
        *(this + 1) = v8 + 1;
      }

      if (v9 <= 8)
      {
        *(a1 + 24) |= 1u;
        *(a1 + 16) = v9;
      }

      v11 = *(this + 1);
    }

    while (v11 >= *(this + 2) || *v11 != 18);
    *(this + 1) = v11 + 1;
LABEL_23:
    *(a1 + 24) |= 2u;
    v12 = *(a1 + 8);
    if (!v12)
    {
      operator new();
    }

    v21 = 0;
    v13 = *(this + 1);
    if (v13 >= *(this + 2) || *v13 < 0)
    {
      if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v21))
      {
        return 0;
      }
    }

    else
    {
      v21 = *v13;
      *(this + 1) = v13 + 1;
    }

    v14 = *(this + 14);
    v15 = *(this + 15);
    *(this + 14) = v14 + 1;
    if (v14 >= v15)
    {
      return 0;
    }

    wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this);
    if (!sub_245405098(v12, this, v16) || *(this + 36) != 1)
    {
      return 0;
    }

    wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this);
    v17 = *(this + 14);
    v18 = __OFSUB__(v17, 1);
    v19 = v17 - 1;
    if (v19 < 0 == v18)
    {
      *(this + 14) = v19;
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

uint64_t sub_245406408(uint64_t result, const wireless_diagnostics::google::protobuf::MessageLite *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = result;
  v6 = *(result + 24);
  if (v6)
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(1, *(result + 16), a2, a4);
    v6 = *(v5 + 24);
  }

  if ((v6 & 2) != 0)
  {
    v7 = *(v5 + 8);
    if (!v7)
    {
      sub_2453EB7EC();
      v7 = *(qword_2813CEFB0 + 8);
    }

    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(2, v7, a2, a4);
  }

  return result;
}

uint64_t sub_245406488(uint64_t a1, unsigned int a2)
{
  v3 = *(a1 + 24);
  if (v3)
  {
    if (*(a1 + 24))
    {
      v5 = *(a1 + 16);
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
        if ((*(a1 + 24) & 2) == 0)
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
      if ((*(a1 + 24) & 2) == 0)
      {
        goto LABEL_19;
      }
    }

    v6 = *(a1 + 8);
    if (!v6)
    {
      sub_2453EB7EC();
      v6 = *(qword_2813CEFB0 + 8);
    }

    v7 = sub_245405B88(v6, a2);
    v8 = v7;
    if (v7 >= 0x80)
    {
      v9 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v7);
    }

    else
    {
      v9 = 1;
    }

    v4 = (v4 + v8 + v9 + 1);
  }

  else
  {
    v4 = 0;
  }

LABEL_19:
  *(a1 + 20) = v4;
  return v4;
}

void sub_245406554(uint64_t a1, void *lpsrc)
{
  if (!__dynamic_cast(lpsrc, MEMORY[0x277D82C38], &unk_285858790, 0))
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  sub_245405EDC(a1, lpsrc);
}

void sub_245406610(_DWORD *a1, uint64_t a2)
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

void sub_2454066BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_2454066D4(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = &unk_285856C10;
  sub_2453EB7EC();

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);
}

void sub_245406730(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  sub_2454066D4(a1);

  JUMPOUT(0x245D6A0D0);
}

uint64_t sub_2454067B4(uint64_t result)
{
  if (*(result + 20))
  {
    *(result + 8) = 0;
  }

  *(result + 20) = 0;
  return result;
}

uint64_t sub_2454067C8(unsigned int *a1, wireless_diagnostics::google::protobuf::internal::WireFormatLite *this, unsigned int a3)
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

      if (TagFallback >> 3 == 2)
      {
        break;
      }

      if (TagFallback >> 3 != 1 || (TagFallback & 7) != 0)
      {
        goto LABEL_13;
      }

      v8 = *(this + 1);
      v7 = *(this + 2);
      if (v8 >= v7 || (v9 = *v8, (v9 & 0x80000000) != 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, a1 + 2);
        if (!result)
        {
          return result;
        }

        v10 = *(this + 1);
        v7 = *(this + 2);
      }

      else
      {
        a1[2] = v9;
        v10 = v8 + 1;
        *(this + 1) = v10;
      }

      a1[5] |= 1u;
      if (v10 < v7 && *v10 == 16)
      {
        v11 = v10 + 1;
        *(this + 1) = v11;
LABEL_22:
        if (v11 >= v7 || (v12 = *v11, (v12 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, a1 + 3);
          if (!result)
          {
            return result;
          }

          v13 = *(this + 1);
          v7 = *(this + 2);
        }

        else
        {
          a1[3] = v12;
          v13 = v11 + 1;
          *(this + 1) = v13;
        }

        a1[5] |= 2u;
        if (v13 == v7 && (*(this + 11) || *(this + 6) == *(this + 10)))
        {
          *(this + 8) = 0;
          result = 1;
          *(this + 36) = 1;
          return result;
        }
      }
    }

    if ((TagFallback & 7) == 0)
    {
      v11 = *(this + 1);
      v7 = *(this + 2);
      goto LABEL_22;
    }

LABEL_13:
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

uint64_t sub_245406944(uint64_t result, uint64_t a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = result;
  v6 = *(result + 20);
  if (v6)
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(1, *(result + 8), a2, a4);
    v6 = *(v5 + 20);
  }

  if ((v6 & 2) != 0)
  {
    v7 = *(v5 + 12);

    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(2, v7, a2, a4);
  }

  return result;
}

uint64_t sub_2454069B0(uint64_t a1, unsigned int a2)
{
  v3 = *(a1 + 20);
  if (v3)
  {
    if (*(a1 + 20))
    {
      v5 = *(a1 + 8);
      if (v5 >= 0x80)
      {
        v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5) + 1;
        if ((*(a1 + 20) & 2) == 0)
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
      if ((*(a1 + 20) & 2) == 0)
      {
        goto LABEL_14;
      }
    }

    v6 = *(a1 + 12);
    if (v6 >= 0x80)
    {
      v7 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v6) + 1;
    }

    else
    {
      v7 = 2;
    }

    v4 = (v7 + v4);
  }

  else
  {
    v4 = 0;
  }

LABEL_14:
  *(a1 + 16) = v4;
  return v4;
}

void sub_245406A40(_DWORD *a1, void *lpsrc)
{
  if (!__dynamic_cast(lpsrc, MEMORY[0x277D82C38], &unk_2858587A8, 0))
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  sub_245406610(a1, lpsrc);
}

void sub_245406AFC(_DWORD *a1, uint64_t a2)
{
  if (a2 == a1)
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
      v6 = *(a2 + 8);
      a1[7] |= 1u;
      a1[2] = v6;
      v4 = *(a2 + 28);
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

    v7 = *(a2 + 12);
    a1[7] |= 2u;
    a1[3] = v7;
    v4 = *(a2 + 28);
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
    v8 = *(a2 + 16);
    a1[7] |= 4u;
    a1[4] = v8;
    if ((*(a2 + 28) & 8) == 0)
    {
      return;
    }

LABEL_8:
    v5 = *(a2 + 20);
    a1[7] |= 8u;
    a1[5] = v5;
  }
}

void sub_245406BF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_245406C08(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = &unk_285856C88;
  sub_2453EB7EC();

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);
}

void sub_245406C64(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  sub_245406C08(a1);

  JUMPOUT(0x245D6A0D0);
}

uint64_t sub_245406CE8(uint64_t result)
{
  if (*(result + 28))
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
  }

  *(result + 28) = 0;
  return result;
}

uint64_t sub_245406CFC(unsigned int *a1, wireless_diagnostics::google::protobuf::internal::WireFormatLite *this, unsigned int a3)
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

      v11 = *(this + 1);
      v8 = *(this + 2);
      if (v11 >= v8 || (v12 = *v11, (v12 & 0x80000000) != 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, a1 + 2);
        if (!result)
        {
          return result;
        }

        v13 = *(this + 1);
        v8 = *(this + 2);
      }

      else
      {
        a1[2] = v12;
        v13 = v11 + 1;
        *(this + 1) = v13;
      }

      a1[7] |= 1u;
      if (v13 < v8 && *v13 == 16)
      {
        v9 = v13 + 1;
        *(this + 1) = v9;
LABEL_29:
        if (v9 >= v8 || (v15 = *v9, (v15 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, a1 + 3);
          if (!result)
          {
            return result;
          }

          v16 = *(this + 1);
          v8 = *(this + 2);
        }

        else
        {
          a1[3] = v15;
          v16 = v9 + 1;
          *(this + 1) = v16;
        }

        a1[7] |= 2u;
        if (v16 < v8 && *v16 == 24)
        {
          v14 = v16 + 1;
          *(this + 1) = v14;
LABEL_37:
          if (v14 >= v8 || (v17 = *v14, (v17 & 0x80000000) != 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, a1 + 4);
            if (!result)
            {
              return result;
            }

            v18 = *(this + 1);
            v8 = *(this + 2);
          }

          else
          {
            a1[4] = v17;
            v18 = v14 + 1;
            *(this + 1) = v18;
          }

          a1[7] |= 4u;
          if (v18 < v8 && *v18 == 32)
          {
            v10 = v18 + 1;
            *(this + 1) = v10;
LABEL_45:
            if (v10 >= v8 || (v19 = *v10, (v19 & 0x80000000) != 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, a1 + 5);
              if (!result)
              {
                return result;
              }

              v20 = *(this + 1);
              v8 = *(this + 2);
            }

            else
            {
              a1[5] = v19;
              v20 = v10 + 1;
              *(this + 1) = v20;
            }

            a1[7] |= 8u;
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

unsigned int *sub_245406F60(unsigned int *result, uint64_t a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = result;
  v6 = result[7];
  if (v6)
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(1, result[2], a2, a4);
    v6 = v5[7];
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

LABEL_8:
      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(3, v5[4], a2, a4);
      if ((v5[7] & 8) == 0)
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

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(2, v5[3], a2, a4);
  v6 = v5[7];
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
  v7 = v5[5];

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(4, v7, a2, a4);
}

uint64_t sub_245407008(uint64_t a1, unsigned int a2)
{
  LOBYTE(v3) = *(a1 + 28);
  if (!v3)
  {
    v4 = 0;
    goto LABEL_25;
  }

  if (*(a1 + 28))
  {
    v5 = *(a1 + 8);
    if (v5 >= 0x80)
    {
      v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5) + 1;
      v3 = *(a1 + 28);
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
    if ((*(a1 + 28) & 2) == 0)
    {
      goto LABEL_14;
    }
  }

  v6 = *(a1 + 12);
  if (v6 >= 0x80)
  {
    v7 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v6) + 1;
    v3 = *(a1 + 28);
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

  v8 = *(a1 + 16);
  if (v8 >= 0x80)
  {
    v9 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v8) + 1;
    v3 = *(a1 + 28);
  }

  else
  {
    v9 = 2;
  }

  v4 = (v9 + v4);
  if ((v3 & 8) != 0)
  {
LABEL_21:
    v10 = *(a1 + 20);
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
  *(a1 + 24) = v4;
  return v4;
}

void sub_2454070F0(_DWORD *a1, void *lpsrc)
{
  if (!__dynamic_cast(lpsrc, MEMORY[0x277D82C38], &unk_2858587C0, 0))
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  sub_245406AFC(a1, lpsrc);
}

void sub_2454071AC(_DWORD *a1, uint64_t a2)
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
      v6 = *(a2 + 8);
      a1[6] |= 1u;
      a1[2] = v6;
      v4 = *(a2 + 24);
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

    else if ((*(a2 + 24) & 2) == 0)
    {
      goto LABEL_6;
    }

    v7 = *(a2 + 12);
    a1[6] |= 2u;
    a1[3] = v7;
    if ((*(a2 + 24) & 4) == 0)
    {
      return;
    }

LABEL_7:
    v5 = *(a2 + 16);
    a1[6] |= 4u;
    a1[4] = v5;
  }
}

void sub_245407280(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_245407298(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = &unk_285856D00;
  sub_2453EB7EC();

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);
}

void sub_2454072F4(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  sub_245407298(a1);

  JUMPOUT(0x245D6A0D0);
}

uint64_t sub_24540737C(uint64_t result)
{
  if (*(result + 24))
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
  }

  *(result + 24) = 0;
  return result;
}

uint64_t sub_245407394(unsigned int *a1, wireless_diagnostics::google::protobuf::internal::WireFormatLite *this, unsigned int a3)
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
          v13 = *(this + 1);
          v8 = *(this + 2);
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

      v9 = *(this + 1);
      v8 = *(this + 2);
      if (v9 >= v8 || (v10 = *v9, (v10 & 0x80000000) != 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, a1 + 2);
        if (!result)
        {
          return result;
        }

        v11 = *(this + 1);
        v8 = *(this + 2);
      }

      else
      {
        a1[2] = v10;
        v11 = v9 + 1;
        *(this + 1) = v11;
      }

      a1[6] |= 1u;
      if (v11 < v8 && *v11 == 16)
      {
        v12 = v11 + 1;
        *(this + 1) = v12;
LABEL_25:
        if (v12 >= v8 || (v14 = *v12, (v14 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, a1 + 3);
          if (!result)
          {
            return result;
          }

          v15 = *(this + 1);
          v8 = *(this + 2);
        }

        else
        {
          a1[3] = v14;
          v15 = v12 + 1;
          *(this + 1) = v15;
        }

        a1[6] |= 2u;
        if (v15 < v8 && *v15 == 24)
        {
          v13 = v15 + 1;
          *(this + 1) = v13;
LABEL_33:
          if (v13 >= v8 || (v16 = *v13, (v16 & 0x80000000) != 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, a1 + 4);
            if (!result)
            {
              return result;
            }

            v17 = *(this + 1);
            v8 = *(this + 2);
          }

          else
          {
            a1[4] = v16;
            v17 = v13 + 1;
            *(this + 1) = v17;
          }

          a1[6] |= 4u;
          if (v17 == v8 && (*(this + 11) || *(this + 6) == *(this + 10)))
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
      v12 = *(this + 1);
      v8 = *(this + 2);
      goto LABEL_25;
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

unsigned int *sub_245407580(unsigned int *result, uint64_t a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = result;
  v6 = result[6];
  if ((v6 & 1) == 0)
  {
    if ((v6 & 2) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(2, v5[3], a2, a4);
    if ((v5[6] & 4) == 0)
    {
      return result;
    }

    goto LABEL_7;
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(1, result[2], a2, a4);
  v6 = v5[6];
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
  v7 = v5[4];

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(3, v7, a2, a4);
}

uint64_t sub_24540760C(uint64_t a1, unsigned int a2)
{
  LOBYTE(v3) = *(a1 + 24);
  if (!v3)
  {
    v4 = 0;
    goto LABEL_19;
  }

  if (*(a1 + 24))
  {
    v5 = *(a1 + 8);
    if (v5 >= 0x80)
    {
      v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5) + 1;
      v3 = *(a1 + 24);
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
    if ((*(a1 + 24) & 2) == 0)
    {
      goto LABEL_14;
    }
  }

  v6 = *(a1 + 12);
  if (v6 >= 0x80)
  {
    v7 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v6) + 1;
    v3 = *(a1 + 24);
  }

  else
  {
    v7 = 2;
  }

  v4 = (v7 + v4);
LABEL_14:
  if ((v3 & 4) != 0)
  {
    v8 = *(a1 + 16);
    if (v8 >= 0x80)
    {
      v9 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v8) + 1;
    }

    else
    {
      v9 = 2;
    }

    v4 = (v9 + v4);
  }

LABEL_19:
  *(a1 + 20) = v4;
  return v4;
}

void sub_2454076C4(_DWORD *a1, void *lpsrc)
{
  if (!__dynamic_cast(lpsrc, MEMORY[0x277D82C38], &unk_2858587D8, 0))
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  sub_2454071AC(a1, lpsrc);
}

void sub_245407780(_DWORD *a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v11);
  }

  LOBYTE(v4) = *(a2 + 36);
  if (v4)
  {
    if (*(a2 + 36))
    {
      v6 = *(a2 + 8);
      a1[9] |= 1u;
      a1[2] = v6;
      v4 = *(a2 + 36);
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

    else if ((*(a2 + 36) & 2) == 0)
    {
      goto LABEL_6;
    }

    v7 = *(a2 + 12);
    a1[9] |= 2u;
    a1[3] = v7;
    v4 = *(a2 + 36);
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
    v8 = *(a2 + 16);
    a1[9] |= 4u;
    a1[4] = v8;
    v4 = *(a2 + 36);
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
    v9 = *(a2 + 20);
    a1[9] |= 8u;
    a1[5] = v9;
    v4 = *(a2 + 36);
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
    v10 = *(a2 + 24);
    a1[9] |= 0x10u;
    a1[6] = v10;
    if ((*(a2 + 36) & 0x20) == 0)
    {
      return;
    }

LABEL_10:
    v5 = *(a2 + 28);
    a1[9] |= 0x20u;
    a1[7] = v5;
  }
}

void sub_2454078B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_2454078CC(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = &unk_285856D78;
  sub_2453EB7EC();

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);
}

void sub_245407928(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  sub_2454078CC(a1);

  JUMPOUT(0x245D6A0D0);
}

uint64_t sub_2454079B4(uint64_t result)
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

uint64_t sub_2454079CC(unsigned int *a1, wireless_diagnostics::google::protobuf::internal::WireFormatLite *this, unsigned int a3)
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
        if (TagFallback >> 3 > 3)
        {
          if (v7 == 4)
          {
            if ((TagFallback & 7) == 0)
            {
              v14 = *(this + 1);
              v8 = *(this + 2);
              goto LABEL_51;
            }
          }

          else if (v7 == 5)
          {
            if ((TagFallback & 7) == 0)
            {
              v16 = *(this + 1);
              v8 = *(this + 2);
              goto LABEL_59;
            }
          }

          else if (v7 == 6 && (TagFallback & 7) == 0)
          {
            v10 = *(this + 1);
            v8 = *(this + 2);
            goto LABEL_67;
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

        v11 = *(this + 1);
        v8 = *(this + 2);
        if (v11 >= v8 || (v12 = *v11, (v12 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, a1 + 2);
          if (!result)
          {
            return result;
          }

          v13 = *(this + 1);
          v8 = *(this + 2);
        }

        else
        {
          a1[2] = v12;
          v13 = v11 + 1;
          *(this + 1) = v13;
        }

        a1[9] |= 1u;
        if (v13 < v8 && *v13 == 16)
        {
          v15 = v13 + 1;
          *(this + 1) = v15;
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

      v15 = *(this + 1);
      v8 = *(this + 2);
LABEL_35:
      if (v15 >= v8 || (v17 = *v15, (v17 & 0x80000000) != 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, a1 + 3);
        if (!result)
        {
          return result;
        }

        v18 = *(this + 1);
        v8 = *(this + 2);
      }

      else
      {
        a1[3] = v17;
        v18 = v15 + 1;
        *(this + 1) = v18;
      }

      a1[9] |= 2u;
      if (v18 < v8 && *v18 == 24)
      {
        v9 = v18 + 1;
        *(this + 1) = v9;
LABEL_43:
        if (v9 >= v8 || (v19 = *v9, (v19 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, a1 + 4);
          if (!result)
          {
            return result;
          }

          v20 = *(this + 1);
          v8 = *(this + 2);
        }

        else
        {
          a1[4] = v19;
          v20 = v9 + 1;
          *(this + 1) = v20;
        }

        a1[9] |= 4u;
        if (v20 < v8 && *v20 == 32)
        {
          v14 = v20 + 1;
          *(this + 1) = v14;
LABEL_51:
          if (v14 >= v8 || (v21 = *v14, (v21 & 0x80000000) != 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, a1 + 5);
            if (!result)
            {
              return result;
            }

            v22 = *(this + 1);
            v8 = *(this + 2);
          }

          else
          {
            a1[5] = v21;
            v22 = v14 + 1;
            *(this + 1) = v22;
          }

          a1[9] |= 8u;
          if (v22 < v8 && *v22 == 40)
          {
            v16 = v22 + 1;
            *(this + 1) = v16;
LABEL_59:
            if (v16 >= v8 || (v23 = *v16, (v23 & 0x80000000) != 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, a1 + 6);
              if (!result)
              {
                return result;
              }

              v24 = *(this + 1);
              v8 = *(this + 2);
            }

            else
            {
              a1[6] = v23;
              v24 = v16 + 1;
              *(this + 1) = v24;
            }

            a1[9] |= 0x10u;
            if (v24 < v8 && *v24 == 48)
            {
              v10 = v24 + 1;
              *(this + 1) = v10;
LABEL_67:
              if (v10 >= v8 || (v25 = *v10, (v25 & 0x80000000) != 0))
              {
                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, a1 + 7);
                if (!result)
                {
                  return result;
                }

                v26 = *(this + 1);
                v8 = *(this + 2);
              }

              else
              {
                a1[7] = v25;
                v26 = v10 + 1;
                *(this + 1) = v26;
              }

              a1[9] |= 0x20u;
              if (v26 == v8 && (*(this + 11) || *(this + 6) == *(this + 10)))
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
    }

    if (v7 == 3 && (TagFallback & 7) == 0)
    {
      v9 = *(this + 1);
      v8 = *(this + 2);
      goto LABEL_43;
    }

LABEL_26:
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

unsigned int *sub_245407D10(unsigned int *result, uint64_t a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = result;
  v6 = result[9];
  if (v6)
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(1, result[2], a2, a4);
    v6 = v5[9];
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

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(2, v5[3], a2, a4);
  v6 = v5[9];
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
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(3, v5[4], a2, a4);
  v6 = v5[9];
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_6;
    }

LABEL_12:
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(5, v5[6], a2, a4);
    if ((v5[9] & 0x20) == 0)
    {
      return result;
    }

    goto LABEL_13;
  }

LABEL_11:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(4, v5[5], a2, a4);
  v6 = v5[9];
  if ((v6 & 0x10) != 0)
  {
    goto LABEL_12;
  }

LABEL_6:
  if ((v6 & 0x20) == 0)
  {
    return result;
  }

LABEL_13:
  v7 = v5[7];

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(6, v7, a2, a4);
}

uint64_t sub_245407DF0(uint64_t a1, unsigned int a2)
{
  LOBYTE(v3) = *(a1 + 36);
  if (!v3)
  {
    v4 = 0;
    goto LABEL_35;
  }

  if (*(a1 + 36))
  {
    v5 = *(a1 + 8);
    if (v5 >= 0x80)
    {
      v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5) + 1;
      v3 = *(a1 + 36);
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
    if ((*(a1 + 36) & 2) == 0)
    {
      goto LABEL_14;
    }
  }

  v6 = *(a1 + 12);
  if (v6 >= 0x80)
  {
    v7 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v6) + 1;
    v3 = *(a1 + 36);
  }

  else
  {
    v7 = 2;
  }

  v4 = (v7 + v4);
LABEL_14:
  if ((v3 & 4) != 0)
  {
    v8 = *(a1 + 16);
    if (v8 >= 0x80)
    {
      v9 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v8) + 1;
      v3 = *(a1 + 36);
    }

    else
    {
      v9 = 2;
    }

    v4 = (v9 + v4);
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

  v10 = *(a1 + 20);
  if (v10 >= 0x80)
  {
    v11 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v10) + 1;
    v3 = *(a1 + 36);
  }

  else
  {
    v11 = 2;
  }

  v4 = (v11 + v4);
  if ((v3 & 0x10) == 0)
  {
LABEL_17:
    if ((v3 & 0x20) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_31;
  }

LABEL_27:
  v12 = *(a1 + 24);
  if (v12 >= 0x80)
  {
    v13 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v12) + 1;
    v3 = *(a1 + 36);
  }

  else
  {
    v13 = 2;
  }

  v4 = (v13 + v4);
  if ((v3 & 0x20) != 0)
  {
LABEL_31:
    v14 = *(a1 + 28);
    if (v14 >= 0x80)
    {
      v15 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v14) + 1;
    }

    else
    {
      v15 = 2;
    }

    v4 = (v15 + v4);
  }

LABEL_35:
  *(a1 + 32) = v4;
  return v4;
}

void sub_245407F30(_DWORD *a1, void *lpsrc)
{
  if (!__dynamic_cast(lpsrc, MEMORY[0x277D82C38], &unk_2858587F0, 0))
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  sub_245407780(a1, lpsrc);
}

void sub_245407FEC(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v13);
  }

  LOBYTE(v4) = *(a2 + 44);
  if (!v4)
  {
    return;
  }

  if ((*(a2 + 44) & 1) == 0)
  {
    if ((*(a2 + 44) & 2) == 0)
    {
      goto LABEL_6;
    }

LABEL_14:
    *(a1 + 44) |= 2u;
    v7 = *(a1 + 16);
    if (!v7)
    {
      operator new();
    }

    v8 = *(a2 + 16);
    if (!v8)
    {
      sub_2453EB7EC();
      v8 = *(qword_2813CEF88 + 16);
    }

    sub_245406AFC(v7, v8);
    v4 = *(a2 + 44);
    if ((v4 & 4) == 0)
    {
LABEL_7:
      if ((v4 & 8) == 0)
      {
        return;
      }

      goto LABEL_24;
    }

    goto LABEL_19;
  }

  *(a1 + 44) |= 1u;
  v5 = *(a1 + 8);
  if (!v5)
  {
    operator new();
  }

  v6 = *(a2 + 8);
  if (!v6)
  {
    sub_2453EB7EC();
    v6 = *(qword_2813CEF88 + 8);
  }

  sub_245406610(v5, v6);
  v4 = *(a2 + 44);
  if ((v4 & 2) != 0)
  {
    goto LABEL_14;
  }

LABEL_6:
  if ((v4 & 4) == 0)
  {
    goto LABEL_7;
  }

LABEL_19:
  *(a1 + 44) |= 4u;
  v9 = *(a1 + 24);
  if (!v9)
  {
    operator new();
  }

  v10 = *(a2 + 24);
  if (!v10)
  {
    sub_2453EB7EC();
    v10 = *(qword_2813CEF88 + 24);
  }

  sub_2454071AC(v9, v10);
  if ((*(a2 + 44) & 8) != 0)
  {
LABEL_24:
    *(a1 + 44) |= 8u;
    v11 = *(a1 + 32);
    if (!v11)
    {
      operator new();
    }

    v12 = *(a2 + 32);
    if (!v12)
    {
      sub_2453EB7EC();
      v12 = *(qword_2813CEF88 + 32);
    }

    sub_245407780(v11, v12);
  }
}

void sub_245408274(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_24540828C(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = &unk_285856DF0;
  sub_2453EB7EC();
  if (qword_2813CEF88 != a1)
  {
    v2 = *(a1 + 1);
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }

    v3 = *(a1 + 2);
    if (v3)
    {
      (*(*v3 + 8))(v3);
    }

    v4 = *(a1 + 3);
    if (v4)
    {
      (*(*v4 + 8))(v4);
    }

    v5 = *(a1 + 4);
    if (v5)
    {
      (*(*v5 + 8))(v5);
    }
  }

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);
}

void sub_2454083A8(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  sub_24540828C(a1);

  JUMPOUT(0x245D6A0D0);
}

uint64_t sub_245408438(uint64_t result)
{
  LOBYTE(v1) = *(result + 44);
  if (v1)
  {
    if (*(result + 44))
    {
      v2 = *(result + 8);
      if (v2)
      {
        if (*(v2 + 20))
        {
          *(v2 + 8) = 0;
        }

        *(v2 + 20) = 0;
        v1 = *(result + 44);
      }
    }

    if ((v1 & 2) != 0)
    {
      v3 = *(result + 16);
      if (v3)
      {
        if (*(v3 + 28))
        {
          *(v3 + 8) = 0;
          *(v3 + 16) = 0;
        }

        *(v3 + 28) = 0;
        v1 = *(result + 44);
      }
    }

    if ((v1 & 4) != 0)
    {
      v4 = *(result + 24);
      if (v4)
      {
        if (*(v4 + 24))
        {
          *(v4 + 8) = 0;
          *(v4 + 16) = 0;
        }

        *(v4 + 24) = 0;
        v1 = *(result + 44);
      }
    }

    if ((v1 & 8) != 0)
    {
      v5 = *(result + 32);
      if (v5)
      {
        if (*(v5 + 36))
        {
          *(v5 + 8) = 0;
          *(v5 + 16) = 0;
          *(v5 + 24) = 0;
        }

        *(v5 + 36) = 0;
      }
    }
  }

  *(result + 44) = 0;
  return result;
}

uint64_t sub_2454084CC(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormatLite *this, unsigned int a3)
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
        if (TagFallback >> 3 <= 2)
        {
          break;
        }

        if (v7 == 3)
        {
          if (v8 != 2)
          {
            goto LABEL_22;
          }

LABEL_48:
          *(a1 + 44) |= 4u;
          v26 = *(a1 + 24);
          if (!v26)
          {
            operator new();
          }

          v42 = 0;
          v27 = *(this + 1);
          if (v27 >= *(this + 2) || *v27 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v42))
            {
              return 0;
            }
          }

          else
          {
            v42 = *v27;
            *(this + 1) = v27 + 1;
          }

          v28 = *(this + 14);
          v29 = *(this + 15);
          *(this + 14) = v28 + 1;
          if (v28 >= v29)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this);
          if (!sub_245407394(v26, this, v30) || *(this + 36) != 1)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this);
          v31 = *(this + 14);
          v15 = __OFSUB__(v31, 1);
          v32 = v31 - 1;
          if (v32 < 0 == v15)
          {
            *(this + 14) = v32;
          }

          v33 = *(this + 1);
          if (v33 < *(this + 2) && *v33 == 34)
          {
            *(this + 1) = v33 + 1;
            goto LABEL_62;
          }
        }

        else
        {
          if (v7 != 4 || v8 != 2)
          {
            goto LABEL_22;
          }

LABEL_62:
          *(a1 + 44) |= 8u;
          v34 = *(a1 + 32);
          if (!v34)
          {
            operator new();
          }

          v42 = 0;
          v35 = *(this + 1);
          if (v35 >= *(this + 2) || *v35 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v42))
            {
              return 0;
            }
          }

          else
          {
            v42 = *v35;
            *(this + 1) = v35 + 1;
          }

          v36 = *(this + 14);
          v37 = *(this + 15);
          *(this + 14) = v36 + 1;
          if (v36 >= v37)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this);
          if (!sub_2454079CC(v34, this, v38) || *(this + 36) != 1)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this);
          v39 = *(this + 14);
          v15 = __OFSUB__(v39, 1);
          v40 = v39 - 1;
          if (v40 < 0 == v15)
          {
            *(this + 14) = v40;
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

      if (v7 != 1)
      {
        break;
      }

      if (v8 != 2)
      {
        goto LABEL_22;
      }

      *(a1 + 44) |= 1u;
      v9 = *(a1 + 8);
      if (!v9)
      {
        operator new();
      }

      v42 = 0;
      v10 = *(this + 1);
      if (v10 >= *(this + 2) || *v10 < 0)
      {
        if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v42))
        {
          return 0;
        }
      }

      else
      {
        v42 = *v10;
        *(this + 1) = v10 + 1;
      }

      v11 = *(this + 14);
      v12 = *(this + 15);
      *(this + 14) = v11 + 1;
      if (v11 >= v12)
      {
        return 0;
      }

      wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this);
      if (!sub_2454067C8(v9, this, v13) || *(this + 36) != 1)
      {
        return 0;
      }

      wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this);
      v14 = *(this + 14);
      v15 = __OFSUB__(v14, 1);
      v16 = v14 - 1;
      if (v16 < 0 == v15)
      {
        *(this + 14) = v16;
      }

      v17 = *(this + 1);
      if (v17 < *(this + 2) && *v17 == 18)
      {
        *(this + 1) = v17 + 1;
LABEL_34:
        *(a1 + 44) |= 2u;
        v18 = *(a1 + 16);
        if (!v18)
        {
          operator new();
        }

        v42 = 0;
        v19 = *(this + 1);
        if (v19 >= *(this + 2) || *v19 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v42))
          {
            return 0;
          }
        }

        else
        {
          v42 = *v19;
          *(this + 1) = v19 + 1;
        }

        v20 = *(this + 14);
        v21 = *(this + 15);
        *(this + 14) = v20 + 1;
        if (v20 >= v21)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this);
        if (!sub_245406CFC(v18, this, v22) || *(this + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this);
        v23 = *(this + 14);
        v15 = __OFSUB__(v23, 1);
        v24 = v23 - 1;
        if (v24 < 0 == v15)
        {
          *(this + 14) = v24;
        }

        v25 = *(this + 1);
        if (v25 < *(this + 2) && *v25 == 26)
        {
          *(this + 1) = v25 + 1;
          goto LABEL_48;
        }
      }
    }

    if (v7 == 2 && v8 == 2)
    {
      goto LABEL_34;
    }

LABEL_22:
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

uint64_t sub_245408A18(uint64_t result, wireless_diagnostics::google::protobuf::MessageLite *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = result;
  v6 = *(result + 44);
  if (v6)
  {
    v7 = *(result + 8);
    if (!v7)
    {
      sub_2453EB7EC();
      v7 = *(qword_2813CEF88 + 8);
    }

    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(1, v7, a2, a4);
    v6 = *(v5 + 44);
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

  v8 = *(v5 + 16);
  if (!v8)
  {
    sub_2453EB7EC();
    v8 = *(qword_2813CEF88 + 16);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(2, v8, a2, a4);
  v6 = *(v5 + 44);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      return result;
    }

    goto LABEL_15;
  }

LABEL_12:
  v9 = *(v5 + 24);
  if (!v9)
  {
    sub_2453EB7EC();
    v9 = *(qword_2813CEF88 + 24);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(3, v9, a2, a4);
  if ((*(v5 + 44) & 8) != 0)
  {
LABEL_15:
    v10 = *(v5 + 32);
    if (!v10)
    {
      sub_2453EB7EC();
      v10 = *(qword_2813CEF88 + 32);
    }

    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(4, v10, a2, a4);
  }

  return result;
}

uint64_t sub_245408B10(uint64_t a1, unsigned int a2)
{
  LOBYTE(v3) = *(a1 + 44);
  if (!v3)
  {
    v4 = 0;
    goto LABEL_33;
  }

  if ((*(a1 + 44) & 1) == 0)
  {
    v4 = 0;
    if ((*(a1 + 44) & 2) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_12;
  }

  v5 = *(a1 + 8);
  if (!v5)
  {
    sub_2453EB7EC();
    v5 = *(qword_2813CEF88 + 8);
  }

  v6 = sub_2454069B0(v5, a2);
  v7 = v6;
  if (v6 >= 0x80)
  {
    v8 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v6);
  }

  else
  {
    v8 = 1;
  }

  v4 = (v7 + v8 + 1);
  v3 = *(a1 + 44);
  if ((v3 & 2) != 0)
  {
LABEL_12:
    v9 = *(a1 + 16);
    if (!v9)
    {
      sub_2453EB7EC();
      v9 = *(qword_2813CEF88 + 16);
    }

    v10 = sub_245407008(v9, a2);
    v11 = v10;
    if (v10 >= 0x80)
    {
      v12 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v10);
    }

    else
    {
      v12 = 1;
    }

    v4 = (v4 + v11 + v12 + 1);
    v3 = *(a1 + 44);
  }

LABEL_18:
  if ((v3 & 4) == 0)
  {
    if ((v3 & 8) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_27;
  }

  v13 = *(a1 + 24);
  if (!v13)
  {
    sub_2453EB7EC();
    v13 = *(qword_2813CEF88 + 24);
  }

  v14 = sub_24540760C(v13, a2);
  v15 = v14;
  if (v14 >= 0x80)
  {
    v16 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v14);
  }

  else
  {
    v16 = 1;
  }

  v4 = (v4 + v15 + v16 + 1);
  if ((*(a1 + 44) & 8) != 0)
  {
LABEL_27:
    v17 = *(a1 + 32);
    if (!v17)
    {
      sub_2453EB7EC();
      v17 = *(qword_2813CEF88 + 32);
    }

    v18 = sub_245407DF0(v17, a2);
    v19 = v18;
    if (v18 >= 0x80)
    {
      v20 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v18);
    }

    else
    {
      v20 = 1;
    }

    v4 = (v4 + v19 + v20 + 1);
  }

LABEL_33:
  *(a1 + 40) = v4;
  return v4;
}

void sub_245408C8C(uint64_t a1, void *lpsrc)
{
  if (!__dynamic_cast(lpsrc, MEMORY[0x277D82C38], &unk_285858808, 0))
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  sub_245407FEC(a1, lpsrc);
}

void sub_245408D48(uint64_t a1, uint64_t a2)
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
      v5 = *(a2 + 16);
      if (v5 >= 6)
      {
        __assert_rtn("set_velocity_type", "GnssEmergencyTypes.pb.h", 19744, "::CoreGem::proto::gnss::Emergency::VelocityType_IsValid(value)");
      }

      *(a1 + 24) |= 1u;
      *(a1 + 16) = v5;
      v4 = *(a2 + 24);
    }

    if ((v4 & 2) != 0)
    {
      *(a1 + 24) |= 2u;
      v6 = *(a1 + 8);
      if (!v6)
      {
        operator new();
      }

      v7 = *(a2 + 8);
      if (!v7)
      {
        sub_2453EB7EC();
        v7 = *(qword_2813CEF38 + 8);
      }

      sub_245407FEC(v6, v7);
    }
  }
}

void sub_245408E90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_245408EA8(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = &unk_285856E68;
  sub_2453EB7EC();
  if (qword_2813CEF38 != a1)
  {
    v2 = *(a1 + 1);
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }
  }

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);
}

void sub_245408F40(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  sub_245408EA8(a1);

  JUMPOUT(0x245D6A0D0);
}

uint64_t sub_245408FC8(uint64_t result)
{
  v1 = result;
  v2 = *(result + 24);
  if (v2)
  {
    *(result + 16) = 0;
    if ((v2 & 2) != 0)
    {
      result = *(result + 8);
      if (result)
      {
        result = sub_245408438(result);
      }
    }
  }

  *(v1 + 24) = 0;
  return result;
}

uint64_t sub_245409008(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormatLite *this, unsigned int a3)
{
  while (1)
  {
    do
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

        v7 = TagFallback & 7;
        if (TagFallback >> 3 != 2)
        {
          break;
        }

        if (v7 == 2)
        {
          goto LABEL_23;
        }

LABEL_13:
        if (v7 == 4)
        {
          return 1;
        }

        if ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(this, TagFallback) & 1) == 0)
        {
          return 0;
        }
      }

      if (TagFallback >> 3 != 1 || (TagFallback & 7) != 0)
      {
        goto LABEL_13;
      }

      v20 = 0;
      v8 = *(this + 1);
      if (v8 >= *(this + 2) || (v9 = *v8, (v9 & 0x80000000) != 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v20);
        if (!result)
        {
          return result;
        }

        v9 = v20;
      }

      else
      {
        *(this + 1) = v8 + 1;
      }

      if (v9 <= 5)
      {
        *(a1 + 24) |= 1u;
        *(a1 + 16) = v9;
      }

      v11 = *(this + 1);
    }

    while (v11 >= *(this + 2) || *v11 != 18);
    *(this + 1) = v11 + 1;
LABEL_23:
    *(a1 + 24) |= 2u;
    v12 = *(a1 + 8);
    if (!v12)
    {
      operator new();
    }

    v21 = 0;
    v13 = *(this + 1);
    if (v13 >= *(this + 2) || *v13 < 0)
    {
      if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v21))
      {
        return 0;
      }
    }

    else
    {
      v21 = *v13;
      *(this + 1) = v13 + 1;
    }

    v14 = *(this + 14);
    v15 = *(this + 15);
    *(this + 14) = v14 + 1;
    if (v14 >= v15)
    {
      return 0;
    }

    wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this);
    if (!sub_2454084CC(v12, this, v16) || *(this + 36) != 1)
    {
      return 0;
    }

    wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this);
    v17 = *(this + 14);
    v18 = __OFSUB__(v17, 1);
    v19 = v17 - 1;
    if (v19 < 0 == v18)
    {
      *(this + 14) = v19;
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