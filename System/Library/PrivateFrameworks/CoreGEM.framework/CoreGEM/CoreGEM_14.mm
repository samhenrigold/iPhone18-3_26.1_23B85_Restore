void sub_245430090(uint64_t a1, void *lpsrc)
{
  if (!__dynamic_cast(lpsrc, MEMORY[0x277D82C38], &unk_28585A0B0, 0))
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  sub_24542E360(a1, lpsrc);
}

void sub_245430134(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v10);
  }

  LOBYTE(v4) = *(a2 + 32);
  if (v4)
  {
    if (*(a2 + 32))
    {
      v6 = *(a2 + 8);
      *(a1 + 32) |= 1u;
      *(a1 + 8) = v6;
      v4 = *(a2 + 32);
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

    else if ((*(a2 + 32) & 2) == 0)
    {
      goto LABEL_6;
    }

    v7 = *(a2 + 16);
    *(a1 + 32) |= 2u;
    *(a1 + 16) = v7;
    v4 = *(a2 + 32);
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
    v8 = *(a2 + 24);
    *(a1 + 32) |= 4u;
    *(a1 + 24) = v8;
    v4 = *(a2 + 32);
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
    v9 = *(a2 + 25);
    *(a1 + 32) |= 8u;
    *(a1 + 25) = v9;
    if ((*(a2 + 32) & 0x10) == 0)
    {
      return;
    }

LABEL_9:
    v5 = *(a2 + 26);
    *(a1 + 32) |= 0x10u;
    *(a1 + 26) = v5;
  }
}

void sub_245430248(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_245430260(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v12);
  }

  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 8));
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
        wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v12);
      }

      v6 = *(*(a2 + 8) + 8 * v5);
      v7 = *(a1 + 20);
      v8 = *(a1 + 16);
      if (v8 >= v7)
      {
        if (v7 == *(a1 + 24))
        {
          wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 8));
          v7 = *(a1 + 20);
        }

        *(a1 + 20) = v7 + 1;
        operator new();
      }

      v9 = *(a1 + 8);
      *(a1 + 16) = v8 + 1;
      sub_245438410(*(v9 + 8 * v8), v6);
      ++v5;
      v4 = *(a2 + 16);
    }

    while (v5 < v4);
  }

  if ((*(a2 + 44) & 2) != 0)
  {
    *(a1 + 44) |= 2u;
    v10 = *(a1 + 32);
    if (!v10)
    {
      operator new();
    }

    v11 = *(a2 + 32);
    if (!v11)
    {
      sub_24539DA30();
      v11 = *(qword_2813CECB8 + 32);
    }

    sub_245437D74(v10, v11);
  }
}

void sub_2454304A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_2454304C0(uint64_t a1, uint64_t a2)
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
    if (v4 >= 5)
    {
      __assert_rtn("set_info_type", "GpsdProtocol.pb.h", 11066, "::CoreGem::proto::gpsd::LtlInfoType_IsValid(value)");
    }

    *(a1 + 16) |= 1u;
    *(a1 + 8) = v4;
  }
}

void sub_245430574(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_24543058C(_DWORD *a1, uint64_t a2)
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

void sub_245430660(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_245430678(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v9);
  }

  LOBYTE(v4) = *(a2 + 36);
  if (v4)
  {
    if (*(a2 + 36))
    {
      v5 = *(a2 + 8);
      *(a1 + 36) |= 1u;
      *(a1 + 8) = v5;
      v4 = *(a2 + 36);
      if ((v4 & 2) == 0)
      {
LABEL_6:
        if ((v4 & 4) == 0)
        {
          return;
        }

        goto LABEL_10;
      }
    }

    else if ((*(a2 + 36) & 2) == 0)
    {
      goto LABEL_6;
    }

    v6 = *(a2 + 16);
    *(a1 + 36) |= 2u;
    *(a1 + 16) = v6;
    if ((*(a2 + 36) & 4) == 0)
    {
      return;
    }

LABEL_10:
    v7 = *(a2 + 24);
    *(a1 + 36) |= 4u;
    v8 = *(a1 + 24);
    if (v8 == MEMORY[0x277D82C30])
    {
      operator new();
    }

    std::string::operator=(v8, v7);
  }
}

void sub_245430788(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_2454307B0(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = &unk_285858DD0;
  sub_24539DA30();

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);
}

void sub_24543080C(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  sub_2454307B0(a1);

  JUMPOUT(0x245D6A0D0);
}

uint64_t sub_245430898(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormatLite *this, unsigned int a3)
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
        if (TagFallback >> 3 > 2)
        {
          break;
        }

        if (v7 != 1)
        {
          if (v7 != 2 || (TagFallback & 7) != 0)
          {
            goto LABEL_21;
          }

          v10 = *(this + 1);
          v8 = *(this + 2);
          goto LABEL_32;
        }

        if ((TagFallback & 7) != 0)
        {
          goto LABEL_21;
        }

        v13 = *(this + 1);
        v8 = *(this + 2);
        if (v13 >= v8 || (v14 = *v13, v14 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(this, (a1 + 8));
          if (!result)
          {
            return result;
          }

          v15 = *(this + 1);
          v8 = *(this + 2);
        }

        else
        {
          *(a1 + 8) = v14;
          v15 = v13 + 1;
          *(this + 1) = v15;
        }

        *(a1 + 32) |= 1u;
        if (v15 < v8 && *v15 == 16)
        {
          v10 = v15 + 1;
          *(this + 1) = v10;
LABEL_32:
          if (v10 >= v8 || (v16 = *v10, v16 < 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(this, (a1 + 16));
            if (!result)
            {
              return result;
            }

            v17 = *(this + 1);
            v8 = *(this + 2);
          }

          else
          {
            *(a1 + 16) = v16;
            v17 = v10 + 1;
            *(this + 1) = v17;
          }

          *(a1 + 32) |= 2u;
          if (v17 < v8 && *v17 == 24)
          {
            v11 = v17 + 1;
            *(this + 1) = v11;
LABEL_40:
            v27 = 0;
            if (v11 >= v8 || (v18 = *v11, (v18 & 0x80000000) != 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v27);
              if (!result)
              {
                return result;
              }

              v18 = v27;
              v19 = *(this + 1);
              v8 = *(this + 2);
            }

            else
            {
              v19 = v11 + 1;
              *(this + 1) = v19;
            }

            *(a1 + 24) = v18 != 0;
            *(a1 + 32) |= 4u;
            if (v19 < v8 && *v19 == 32)
            {
              v12 = v19 + 1;
              *(this + 1) = v12;
              goto LABEL_48;
            }
          }
        }
      }

      if (v7 == 3)
      {
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_21;
        }

        v11 = *(this + 1);
        v8 = *(this + 2);
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

      v12 = *(this + 1);
      v8 = *(this + 2);
LABEL_48:
      v26 = 0;
      if (v12 >= v8 || (v20 = *v12, (v20 & 0x80000000) != 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v26);
        if (!result)
        {
          return result;
        }

        v20 = v26;
        v21 = *(this + 1);
        v8 = *(this + 2);
      }

      else
      {
        v21 = v12 + 1;
        *(this + 1) = v21;
      }

      *(a1 + 25) = v20 != 0;
      *(a1 + 32) |= 8u;
      if (v21 < v8 && *v21 == 40)
      {
        v9 = v21 + 1;
        *(this + 1) = v9;
LABEL_56:
        v25 = 0;
        if (v9 >= v8 || (v22 = *v9, (v22 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v25);
          if (!result)
          {
            return result;
          }

          v22 = v25;
          v23 = *(this + 1);
          v8 = *(this + 2);
        }

        else
        {
          v23 = v9 + 1;
          *(this + 1) = v23;
        }

        *(a1 + 26) = v22 != 0;
        *(a1 + 32) |= 0x10u;
        if (v23 == v8 && (*(this + 11) || *(this + 6) == *(this + 10)))
        {
          *(this + 8) = 0;
          result = 1;
          *(this + 36) = 1;
          return result;
        }
      }
    }

    if (v7 == 5 && (TagFallback & 7) == 0)
    {
      v9 = *(this + 1);
      v8 = *(this + 2);
      goto LABEL_56;
    }

LABEL_21:
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

uint64_t sub_245430BA4(uint64_t result, uint64_t a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = result;
  v6 = *(result + 32);
  if (v6)
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(1, *(result + 8), a2, a4);
    v6 = *(v5 + 32);
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

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(2, *(v5 + 16), a2, a4);
  v6 = *(v5 + 32);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

LABEL_10:
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(4, *(v5 + 25), a2, a4);
    if ((*(v5 + 32) & 0x10) == 0)
    {
      return result;
    }

    goto LABEL_11;
  }

LABEL_9:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(3, *(v5 + 24), a2, a4);
  v6 = *(v5 + 32);
  if ((v6 & 8) != 0)
  {
    goto LABEL_10;
  }

LABEL_5:
  if ((v6 & 0x10) == 0)
  {
    return result;
  }

LABEL_11:
  v7 = *(v5 + 26);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(5, v7, a2, a4);
}

uint64_t sub_245430C68(uint64_t a1, unint64_t a2)
{
  v3 = *(a1 + 32);
  if (v3)
  {
    if (v3)
    {
      v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(a1 + 8)) + 1;
      v3 = *(a1 + 32);
      if ((v3 & 2) == 0)
      {
LABEL_8:
        result = ((v3 >> 1) & 2) + v4 + ((v3 >> 2) & 2) + ((v3 >> 3) & 2);
        goto LABEL_9;
      }
    }

    else
    {
      v4 = 0;
      if ((v3 & 2) == 0)
      {
        goto LABEL_8;
      }
    }

    v4 += wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(a1 + 16)) + 1;
    v3 = *(a1 + 32);
    goto LABEL_8;
  }

  result = 0;
LABEL_9:
  *(a1 + 28) = result;
  return result;
}

void sub_245430CFC(uint64_t a1, void *lpsrc)
{
  if (!__dynamic_cast(lpsrc, MEMORY[0x277D82C38], &unk_28585A0C8, 0))
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  sub_245430134(a1, lpsrc);
}

void sub_245430DB8(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = &unk_285858E48;
  sub_24539DA30();

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);
}

void sub_245430E14(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  sub_245430DB8(a1);

  JUMPOUT(0x245D6A0D0);
}

uint64_t sub_245430EA8(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormatLite *this, unsigned int a3)
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

        v28 = 0;
        v11 = *(this + 1);
        v8 = *(this + 2);
        if (v11 >= v8 || (v12 = *v11, (v12 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v28);
          if (!result)
          {
            return result;
          }

          v12 = v28;
          v13 = *(this + 1);
          v8 = *(this + 2);
        }

        else
        {
          v13 = v11 + 1;
          *(this + 1) = v13;
        }

        *(a1 + 8) = v12 != 0;
        *(a1 + 20) |= 1u;
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
      v28 = 0;
      if (v15 >= v8 || (v17 = *v15, (v17 & 0x80000000) != 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v28);
        if (!result)
        {
          return result;
        }

        v17 = v28;
        v18 = *(this + 1);
        v8 = *(this + 2);
      }

      else
      {
        v18 = v15 + 1;
        *(this + 1) = v18;
      }

      *(a1 + 9) = v17 != 0;
      *(a1 + 20) |= 2u;
      if (v18 < v8 && *v18 == 24)
      {
        v9 = v18 + 1;
        *(this + 1) = v9;
LABEL_43:
        v28 = 0;
        if (v9 >= v8 || (v19 = *v9, (v19 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v28);
          if (!result)
          {
            return result;
          }

          v19 = v28;
          v20 = *(this + 1);
          v8 = *(this + 2);
        }

        else
        {
          v20 = v9 + 1;
          *(this + 1) = v20;
        }

        *(a1 + 10) = v19 != 0;
        *(a1 + 20) |= 4u;
        if (v20 < v8 && *v20 == 32)
        {
          v14 = v20 + 1;
          *(this + 1) = v14;
LABEL_51:
          v28 = 0;
          if (v14 >= v8 || (v21 = *v14, (v21 & 0x80000000) != 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v28);
            if (!result)
            {
              return result;
            }

            v21 = v28;
            v22 = *(this + 1);
            v8 = *(this + 2);
          }

          else
          {
            v22 = v14 + 1;
            *(this + 1) = v22;
          }

          *(a1 + 11) = v21 != 0;
          *(a1 + 20) |= 8u;
          if (v22 < v8 && *v22 == 40)
          {
            v16 = v22 + 1;
            *(this + 1) = v16;
LABEL_59:
            v28 = 0;
            if (v16 >= v8 || (v23 = *v16, (v23 & 0x80000000) != 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v28);
              if (!result)
              {
                return result;
              }

              v23 = v28;
              v24 = *(this + 1);
              v8 = *(this + 2);
            }

            else
            {
              v24 = v16 + 1;
              *(this + 1) = v24;
            }

            *(a1 + 12) = v23 != 0;
            *(a1 + 20) |= 0x10u;
            if (v24 < v8 && *v24 == 48)
            {
              v10 = v24 + 1;
              *(this + 1) = v10;
LABEL_67:
              v28 = 0;
              if (v10 >= v8 || (v25 = *v10, (v25 & 0x80000000) != 0))
              {
                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v28);
                if (!result)
                {
                  return result;
                }

                v25 = v28;
                v26 = *(this + 1);
                v8 = *(this + 2);
              }

              else
              {
                v26 = v10 + 1;
                *(this + 1) = v26;
              }

              *(a1 + 13) = v25 != 0;
              *(a1 + 20) |= 0x20u;
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

uint64_t sub_245431254(uint64_t result, uint64_t a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = result;
  v6 = *(result + 20);
  if (v6)
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(1, *(result + 8), a2, a4);
    v6 = *(v5 + 20);
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

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(2, *(v5 + 9), a2, a4);
  v6 = *(v5 + 20);
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
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(3, *(v5 + 10), a2, a4);
  v6 = *(v5 + 20);
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_6;
    }

LABEL_12:
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(5, *(v5 + 12), a2, a4);
    if ((*(v5 + 20) & 0x20) == 0)
    {
      return result;
    }

    goto LABEL_13;
  }

LABEL_11:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(4, *(v5 + 11), a2, a4);
  v6 = *(v5 + 20);
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
  v7 = *(v5 + 13);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(6, v7, a2, a4);
}

uint64_t sub_245431334(uint64_t a1)
{
  if (*(a1 + 20))
  {
    v1.i64[0] = 0x200000002;
    v1.i64[1] = 0x200000002;
    v2 = vaddvq_s32(vandq_s8(vshlq_u32(vdupq_n_s32(*(a1 + 20)), xmmword_2454885E0), v1)) + 2 * (*(a1 + 20) & 1) + (*(a1 + 20) & 2u);
  }

  else
  {
    v2 = 0;
  }

  *(a1 + 16) = v2;
  return v2;
}

void sub_245431384(uint64_t a1, _BYTE *lpsrc)
{
  if (!__dynamic_cast(lpsrc, MEMORY[0x277D82C38], &unk_28585A0E0, 0))
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  sub_24542CFA8(a1, lpsrc);
}

void sub_245431440(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = &unk_285858EC0;
  v2 = *(a1 + 1);
  if (v2 != MEMORY[0x277D82C30] && v2 != 0)
  {
    if (*(v2 + 23) < 0)
    {
      operator delete(*v2);
    }

    MEMORY[0x245D6A0D0](v2, 0x1012C40EC159624);
  }

  sub_24539DA30();

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);
}

void sub_2454314DC(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  sub_245431440(a1);

  JUMPOUT(0x245D6A0D0);
}

uint64_t sub_24543156C(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormatLite *this, unsigned int a3)
{
  v5 = MEMORY[0x277D82C30];
  while (1)
  {
    while (1)
    {
      while (1)
      {
        v6 = *(this + 1);
        if (v6 >= *(this + 2) || (TagFallback = *v6, (TagFallback & 0x80000000) != 0))
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
          *(this + 1) = v6 + 1;
          if (!TagFallback)
          {
            return 1;
          }
        }

        v8 = TagFallback & 7;
        if (TagFallback >> 3 != 2)
        {
          break;
        }

        if ((TagFallback & 7) != 0)
        {
          goto LABEL_17;
        }

        v12 = *(this + 1);
        v10 = *(this + 2);
LABEL_21:
        v14 = 0;
        if (v12 >= v10 || (v13 = *v12, (v13 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v14);
          if (!result)
          {
            return result;
          }

          v13 = v14;
        }

        else
        {
          *(this + 1) = v12 + 1;
        }

        if (v13 <= 2)
        {
          *(a1 + 24) |= 2u;
          *(a1 + 16) = v13;
        }

        if (*(this + 1) == *(this + 2) && (*(this + 11) || *(this + 6) == *(this + 10)))
        {
          *(this + 8) = 0;
          result = 1;
          *(this + 36) = 1;
          return result;
        }
      }

      if (TagFallback >> 3 != 1 || v8 != 2)
      {
        break;
      }

      *(a1 + 24) |= 1u;
      if (*(a1 + 8) == v5)
      {
        operator new();
      }

      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadBytes();
      if (!result)
      {
        return result;
      }

      v11 = *(this + 1);
      v10 = *(this + 2);
      if (v11 < v10 && *v11 == 16)
      {
        v12 = v11 + 1;
        *(this + 1) = v12;
        goto LABEL_21;
      }
    }

LABEL_17:
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

uint64_t sub_245431724(uint64_t result, uint64_t a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = result;
  v6 = *(result + 24);
  if (v6)
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBytes();
    v6 = *(v5 + 24);
  }

  if ((v6 & 2) != 0)
  {
    v7 = *(v5 + 16);

    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(2, v7, a2, a4);
  }

  return result;
}

uint64_t sub_245431790(uint64_t a1, unsigned int a2)
{
  LOBYTE(v3) = *(a1 + 24);
  if (!v3)
  {
    v4 = 0;
    goto LABEL_21;
  }

  if ((*(a1 + 24) & 1) == 0)
  {
    v4 = 0;
    if ((*(a1 + 24) & 2) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_15;
  }

  v5 = *(a1 + 8);
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
    v3 = *(a1 + 24);
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
    v12 = *(a1 + 16);
    if ((v12 & 0x80000000) != 0)
    {
      v13 = 11;
    }

    else if (v12 >= 0x80)
    {
      v13 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v12) + 1;
    }

    else
    {
      v13 = 2;
    }

    v4 = (v13 + v4);
  }

LABEL_21:
  *(a1 + 20) = v4;
  return v4;
}

void sub_245431858(uint64_t a1, void *lpsrc)
{
  if (!__dynamic_cast(lpsrc, MEMORY[0x277D82C38], &unk_28585A0F8, 0))
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  sub_24542CB20(a1, lpsrc);
}

void sub_245431914(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = &unk_285858F38;
  v2 = *(a1 + 1);
  if (v2 != MEMORY[0x277D82C30] && v2 != 0)
  {
    if (*(v2 + 23) < 0)
    {
      operator delete(*v2);
    }

    MEMORY[0x245D6A0D0](v2, 0x1012C40EC159624);
  }

  sub_24539DA30();

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);
}

void sub_2454319B0(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  sub_245431914(a1);

  JUMPOUT(0x245D6A0D0);
}

uint64_t sub_245431A3C(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormatLite *this, unsigned int a3)
{
  v5 = MEMORY[0x277D82C30];
  while (1)
  {
    while (1)
    {
      v6 = *(this + 1);
      if (v6 >= *(this + 2) || (TagFallback = *v6, (TagFallback & 0x80000000) != 0))
      {
        TagFallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadTagFallback(this);
        *(this + 8) = TagFallback;
      }

      else
      {
        *(this + 8) = TagFallback;
        *(this + 1) = v6 + 1;
      }

      if (TagFallback != 10)
      {
        break;
      }

      *(a1 + 20) |= 1u;
      if (*(a1 + 8) == v5)
      {
        operator new();
      }

      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadBytes();
      if (!result)
      {
        return result;
      }

      if (*(this + 1) == *(this + 2) && (*(this + 11) || *(this + 6) == *(this + 10)))
      {
        *(this + 8) = 0;
        result = 1;
        *(this + 36) = 1;
        return result;
      }
    }

    if (!TagFallback || (TagFallback & 7) == 4)
    {
      break;
    }

    if ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(this, TagFallback) & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_245431B5C(uint64_t result, uint64_t a2)
{
  if (*(result + 20))
  {
    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBytes();
  }

  return result;
}

uint64_t sub_245431B78(uint64_t a1, unsigned int a2)
{
  if (*(a1 + 20))
  {
    v4 = *(a1 + 8);
    v5 = *(v4 + 23);
    v6 = v5;
    v7 = *(v4 + 8);
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
      v10 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v8);
      v5 = *(v4 + 23);
      v7 = *(v4 + 8);
      v9 = v10 + 1;
      v6 = *(v4 + 23);
    }

    else
    {
      v9 = 2;
    }

    if (v6 < 0)
    {
      v5 = v7;
    }

    result = (v9 + v5);
  }

  else
  {
    result = 0;
  }

  *(a1 + 16) = result;
  return result;
}

void sub_245431BF8(uint64_t a1, void *lpsrc)
{
  if (!__dynamic_cast(lpsrc, MEMORY[0x277D82C38], &unk_28585A110, 0))
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  sub_24542CC50(a1, lpsrc);
}

void sub_245431CB4(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = &unk_285858FB0;
  v2 = *(a1 + 1);
  if (v2 != MEMORY[0x277D82C30] && v2 != 0)
  {
    if (*(v2 + 23) < 0)
    {
      operator delete(*v2);
    }

    MEMORY[0x245D6A0D0](v2, 0x1012C40EC159624);
  }

  sub_24539DA30();

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);
}

void sub_245431D50(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  sub_245431CB4(a1);

  JUMPOUT(0x245D6A0D0);
}

uint64_t sub_245431DDC(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormatLite *this, unsigned int a3)
{
  v5 = MEMORY[0x277D82C30];
  while (1)
  {
    while (1)
    {
      v6 = *(this + 1);
      if (v6 >= *(this + 2) || (TagFallback = *v6, (TagFallback & 0x80000000) != 0))
      {
        TagFallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadTagFallback(this);
        *(this + 8) = TagFallback;
      }

      else
      {
        *(this + 8) = TagFallback;
        *(this + 1) = v6 + 1;
      }

      if (TagFallback != 10)
      {
        break;
      }

      *(a1 + 20) |= 1u;
      if (*(a1 + 8) == v5)
      {
        operator new();
      }

      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadBytes();
      if (!result)
      {
        return result;
      }

      if (*(this + 1) == *(this + 2) && (*(this + 11) || *(this + 6) == *(this + 10)))
      {
        *(this + 8) = 0;
        result = 1;
        *(this + 36) = 1;
        return result;
      }
    }

    if (!TagFallback || (TagFallback & 7) == 4)
    {
      break;
    }

    if ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(this, TagFallback) & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_245431EFC(uint64_t result, uint64_t a2)
{
  if (*(result + 20))
  {
    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBytes();
  }

  return result;
}

uint64_t sub_245431F18(uint64_t a1, unsigned int a2)
{
  if (*(a1 + 20))
  {
    v4 = *(a1 + 8);
    v5 = *(v4 + 23);
    v6 = v5;
    v7 = *(v4 + 8);
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
      v10 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v8);
      v5 = *(v4 + 23);
      v7 = *(v4 + 8);
      v9 = v10 + 1;
      v6 = *(v4 + 23);
    }

    else
    {
      v9 = 2;
    }

    if (v6 < 0)
    {
      v5 = v7;
    }

    result = (v9 + v5);
  }

  else
  {
    result = 0;
  }

  *(a1 + 16) = result;
  return result;
}

void sub_245431F98(uint64_t a1, void *lpsrc)
{
  if (!__dynamic_cast(lpsrc, MEMORY[0x277D82C38], &unk_28585A128, 0))
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  sub_24542DB78(a1, lpsrc);
}

void sub_245432054(uint64_t a1)
{
  *a1 = &unk_285859028;
  sub_24539DA30();
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

void sub_24543211C(uint64_t a1)
{
  sub_245432054(a1);

  JUMPOUT(0x245D6A0D0);
}

uint64_t sub_2454321A8(int *a1, wireless_diagnostics::google::protobuf::internal::WireFormatLite *this, unsigned int a3)
{
  while (1)
  {
LABEL_1:
    v5 = *(this + 1);
    if (v5 >= *(this + 2) || (TagFallback = *v5, (TagFallback & 0x80000000) != 0))
    {
      TagFallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadTagFallback(this);
      *(this + 8) = TagFallback;
    }

    else
    {
      *(this + 8) = TagFallback;
      *(this + 1) = v5 + 1;
    }

    if (TagFallback == 10)
    {
      while (1)
      {
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
        v10 = *(v9 + 8 * v8);
        v21 = 0;
        v11 = *(this + 1);
        if (v11 >= *(this + 2) || *v11 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v21))
          {
            return 0;
          }
        }

        else
        {
          v21 = *v11;
          *(this + 1) = v11 + 1;
        }

        v12 = *(this + 14);
        v13 = *(this + 15);
        *(this + 14) = v12 + 1;
        if (v12 >= v13)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this);
        if (!sub_2453BA638(v10, this, v14) || *(this + 36) != 1)
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
        v19 = *(this + 2);
        if (v18 >= v19 || *v18 != 10)
        {
          if (v18 == v19 && (*(this + 11) || *(this + 6) == *(this + 10)))
          {
            *(this + 8) = 0;
            result = 1;
            *(this + 36) = 1;
            return result;
          }

          goto LABEL_1;
        }

        *(this + 1) = v18 + 1;
      }
    }

    if (!TagFallback || (TagFallback & 7) == 4)
    {
      return 1;
    }

    if ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(this, TagFallback) & 1) == 0)
    {
      return 0;
    }
  }
}

uint64_t sub_2454323D0(uint64_t result, wireless_diagnostics::google::protobuf::MessageLite *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  if (*(result + 16) >= 1)
  {
    v5 = result;
    v6 = 0;
    do
    {
      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(1, *(*(v5 + 8) + 8 * v6++), a2, a4);
    }

    while (v6 < *(v5 + 16));
  }

  return result;
}

uint64_t sub_245432434(uint64_t a1, unsigned int a2)
{
  v3 = *(a1 + 16);
  if (v3 >= 1)
  {
    v4 = 0;
    do
    {
      v5 = sub_2453BA9F4(*(*(a1 + 8) + 8 * v4), a2);
      v6 = v5;
      if (v5 >= 0x80)
      {
        v7 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5);
      }

      else
      {
        v7 = 1;
      }

      v3 = (v6 + v3 + v7);
      ++v4;
    }

    while (v4 < *(a1 + 16));
  }

  *(a1 + 32) = v3;
  return v3;
}

void sub_2454324B4(_DWORD *a1, void *lpsrc)
{
  if (!__dynamic_cast(lpsrc, MEMORY[0x277D82C38], &unk_28585A140, 0))
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  sub_24542CD30(a1, lpsrc);
}

uint64_t sub_2454325C8(uint64_t result, const wireless_diagnostics::google::protobuf::MessageLite *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = result;
  v6 = *(result + 36);
  if (v6)
  {
    v7 = *(result + 8);
    if (!v7)
    {
      sub_24539DA30();
      v7 = *(qword_2813CEEC0 + 8);
    }

    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(1, v7, a2, a4);
    v6 = *(v5 + 36);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

LABEL_10:
      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(3, *(v5 + 20), a2, a4);
      if ((*(v5 + 36) & 8) == 0)
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

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(2, *(v5 + 16), a2, a4);
  v6 = *(v5 + 36);
  if ((v6 & 4) != 0)
  {
    goto LABEL_10;
  }

LABEL_4:
  if ((v6 & 8) == 0)
  {
    return result;
  }

LABEL_11:
  v8 = *(v5 + 24);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(0xA, v8, a2, a4);
}

uint64_t sub_245432684(uint64_t a1, unint64_t a2)
{
  v3 = *(a1 + 36);
  if (!v3)
  {
    v5 = 0;
    goto LABEL_20;
  }

  if (v3)
  {
    v6 = *(a1 + 8);
    if (!v6)
    {
      sub_24539DA30();
      v6 = *(qword_2813CEEC0 + 8);
    }

    v7 = sub_2453B735C(v6, a2);
    v8 = v7;
    if (v7 >= 0x80)
    {
      v9 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v7);
    }

    else
    {
      v9 = 1;
    }

    v4 = v8 + v9 + 1;
    v3 = *(a1 + 36);
    if ((v3 & 2) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_12;
  }

  v4 = 0;
  if ((v3 & 2) != 0)
  {
LABEL_12:
    v10 = *(a1 + 16);
    if ((v10 & 0x80000000) != 0)
    {
      v11 = 11;
    }

    else if (v10 >= 0x80)
    {
      v11 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v10) + 1;
      v3 = *(a1 + 36);
    }

    else
    {
      v11 = 2;
    }

    v4 += v11;
  }

LABEL_18:
  v5 = ((v3 >> 1) & 2) + v4;
  if ((v3 & 8) != 0)
  {
    v5 = v5 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(a1 + 24)) + 1;
  }

LABEL_20:
  *(a1 + 32) = v5;
  return v5;
}

void sub_245432768(uint64_t a1, void *lpsrc)
{
  if (!__dynamic_cast(lpsrc, MEMORY[0x277D82C38], &unk_28585A158, 0))
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  sub_24542BD3C(a1, lpsrc);
}

uint64_t sub_24543287C(uint64_t result, uint64_t a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = result;
  v6 = *(result + 36);
  if ((v6 & 1) == 0)
  {
    if ((v6 & 2) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(2, *(v5 + 16), a2, a4);
    if ((*(v5 + 36) & 4) == 0)
    {
      return result;
    }

    goto LABEL_7;
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(1, *(result + 8), a2, a4);
  v6 = *(v5 + 36);
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
  v7 = *(v5 + 24);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(3, v7, a2, a4);
}

uint64_t sub_245432908(uint64_t a1, unint64_t a2)
{
  LOBYTE(v3) = *(a1 + 36);
  if (!v3)
  {
    v4 = 0;
    goto LABEL_10;
  }

  if (*(a1 + 36))
  {
    v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(a1 + 8)) + 1;
    v3 = *(a1 + 36);
    if ((v3 & 2) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v4 = 0;
  if ((*(a1 + 36) & 2) != 0)
  {
LABEL_7:
    v4 = v4 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(a1 + 16)) + 1;
    v3 = *(a1 + 36);
  }

LABEL_8:
  if ((v3 & 4) != 0)
  {
    v4 = v4 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(a1 + 24)) + 1;
  }

LABEL_10:
  *(a1 + 32) = v4;
  return v4;
}

void sub_24543298C(uint64_t a1, void *lpsrc)
{
  if (!__dynamic_cast(lpsrc, MEMORY[0x277D82C38], &unk_28585A170, 0))
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  sub_24542BEE0(a1, lpsrc);
}

void sub_245432A48(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = &unk_285859190;
  sub_24539DA30();

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);
}

void sub_245432AA4(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  sub_245432A48(a1);

  JUMPOUT(0x245D6A0D0);
}

uint64_t sub_245432B28(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormatLite *this, unsigned int a3)
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
      }

      else
      {
        *(this + 8) = TagFallback;
        *(this + 1) = v5 + 1;
      }

      if (TagFallback != 8)
      {
        break;
      }

      v8 = *(this + 1);
      v7 = *(this + 2);
      if (v8 >= v7 || (v9 = *v8, v9 < 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(this, (a1 + 8));
        if (!result)
        {
          return result;
        }

        v10 = *(this + 1);
        v7 = *(this + 2);
      }

      else
      {
        *(a1 + 8) = v9;
        v10 = v8 + 1;
        *(this + 1) = v10;
      }

      *(a1 + 20) |= 1u;
      if (v10 == v7 && (*(this + 11) || *(this + 6) == *(this + 10)))
      {
        *(this + 8) = 0;
        result = 1;
        *(this + 36) = 1;
        return result;
      }
    }

    if (!TagFallback || (TagFallback & 7) == 4)
    {
      break;
    }

    if ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(this, TagFallback) & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_245432C28(uint64_t result, uint64_t a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  if (*(result + 20))
  {
    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(1, *(result + 8), a2, a4);
  }

  return result;
}

uint64_t sub_245432C44(uint64_t a1, unint64_t a2)
{
  if (*(a1 + 20))
  {
    result = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(a1 + 8)) + 1;
  }

  else
  {
    result = 0;
  }

  *(a1 + 16) = result;
  return result;
}

void sub_245432C84(uint64_t a1, void *lpsrc)
{
  if (!__dynamic_cast(lpsrc, MEMORY[0x277D82C38], &unk_28585A188, 0))
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  sub_24542CF04(a1, lpsrc);
}

void sub_245432D40(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = &unk_285859208;
  sub_24539DA30();

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);
}

void sub_245432D9C(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  sub_245432D40(a1);

  JUMPOUT(0x245D6A0D0);
}

uint64_t sub_245432E20(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormatLite *this, unsigned int a3)
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
      }

      else
      {
        *(this + 8) = TagFallback;
        *(this + 1) = v5 + 1;
      }

      if (TagFallback != 8)
      {
        break;
      }

      v8 = *(this + 1);
      v7 = *(this + 2);
      if (v8 >= v7 || (v9 = *v8, v9 < 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(this, (a1 + 8));
        if (!result)
        {
          return result;
        }

        v10 = *(this + 1);
        v7 = *(this + 2);
      }

      else
      {
        *(a1 + 8) = v9;
        v10 = v8 + 1;
        *(this + 1) = v10;
      }

      *(a1 + 20) |= 1u;
      if (v10 == v7 && (*(this + 11) || *(this + 6) == *(this + 10)))
      {
        *(this + 8) = 0;
        result = 1;
        *(this + 36) = 1;
        return result;
      }
    }

    if (!TagFallback || (TagFallback & 7) == 4)
    {
      break;
    }

    if ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(this, TagFallback) & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_245432F20(uint64_t result, uint64_t a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  if (*(result + 20))
  {
    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(1, *(result + 8), a2, a4);
  }

  return result;
}

uint64_t sub_245432F3C(uint64_t a1, unint64_t a2)
{
  if (*(a1 + 20))
  {
    result = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(a1 + 8)) + 1;
  }

  else
  {
    result = 0;
  }

  *(a1 + 16) = result;
  return result;
}

void sub_245432F7C(uint64_t a1, void *lpsrc)
{
  if (!__dynamic_cast(lpsrc, MEMORY[0x277D82C38], &unk_28585A1A0, 0))
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  sub_24542D0F4(a1, lpsrc);
}

void sub_245433038(uint64_t a1)
{
  *a1 = &unk_285859280;
  sub_24539DA30();
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

void sub_245433100(uint64_t a1)
{
  sub_245433038(a1);

  JUMPOUT(0x245D6A0D0);
}

uint64_t sub_24543318C(int *a1, wireless_diagnostics::google::protobuf::internal::WireFormatLite *this, unsigned int a3)
{
  while (1)
  {
LABEL_1:
    v5 = *(this + 1);
    if (v5 >= *(this + 2) || (TagFallback = *v5, (TagFallback & 0x80000000) != 0))
    {
      TagFallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadTagFallback(this);
      *(this + 8) = TagFallback;
    }

    else
    {
      *(this + 8) = TagFallback;
      *(this + 1) = v5 + 1;
    }

    if (TagFallback == 10)
    {
      while (1)
      {
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
        v10 = *(v9 + 8 * v8);
        v21 = 0;
        v11 = *(this + 1);
        if (v11 >= *(this + 2) || *v11 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v21))
          {
            return 0;
          }
        }

        else
        {
          v21 = *v11;
          *(this + 1) = v11 + 1;
        }

        v12 = *(this + 14);
        v13 = *(this + 15);
        *(this + 14) = v12 + 1;
        if (v12 >= v13)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this);
        if (!sub_2453B9B14(v10, this, v14) || *(this + 36) != 1)
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
        v19 = *(this + 2);
        if (v18 >= v19 || *v18 != 10)
        {
          if (v18 == v19 && (*(this + 11) || *(this + 6) == *(this + 10)))
          {
            *(this + 8) = 0;
            result = 1;
            *(this + 36) = 1;
            return result;
          }

          goto LABEL_1;
        }

        *(this + 1) = v18 + 1;
      }
    }

    if (!TagFallback || (TagFallback & 7) == 4)
    {
      return 1;
    }

    if ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(this, TagFallback) & 1) == 0)
    {
      return 0;
    }
  }
}

uint64_t sub_2454333B4(uint64_t result, wireless_diagnostics::google::protobuf::MessageLite *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  if (*(result + 16) >= 1)
  {
    v5 = result;
    v6 = 0;
    do
    {
      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(1, *(*(v5 + 8) + 8 * v6++), a2, a4);
    }

    while (v6 < *(v5 + 16));
  }

  return result;
}

uint64_t sub_245433418(uint64_t a1, unint64_t a2)
{
  v3 = *(a1 + 16);
  if (v3 >= 1)
  {
    v4 = 0;
    do
    {
      v5 = sub_2453B9CEC(*(*(a1 + 8) + 8 * v4), a2);
      v6 = v5;
      if (v5 >= 0x80)
      {
        v7 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5);
      }

      else
      {
        v7 = 1;
      }

      v3 = (v6 + v3 + v7);
      ++v4;
    }

    while (v4 < *(a1 + 16));
  }

  *(a1 + 32) = v3;
  return v3;
}

void sub_245433498(_DWORD *a1, void *lpsrc)
{
  if (!__dynamic_cast(lpsrc, MEMORY[0x277D82C38], &unk_28585A1B8, 0))
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  sub_24542BFCC(a1, lpsrc);
}

void sub_245433554(uint64_t *a1)
{
  *a1 = &unk_2858592F8;
  sub_24539DA30();
  sub_2453E53FC(a1 + 1);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);
}

void sub_2454335BC(uint64_t *a1)
{
  sub_245433554(a1);

  JUMPOUT(0x245D6A0D0);
}

uint64_t sub_245433648(int *a1, wireless_diagnostics::google::protobuf::internal::WireFormatLite *this, unsigned int a3)
{
  while (1)
  {
LABEL_1:
    v5 = *(this + 1);
    if (v5 >= *(this + 2) || (TagFallback = *v5, (TagFallback & 0x80000000) != 0))
    {
      TagFallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadTagFallback(this);
      *(this + 8) = TagFallback;
    }

    else
    {
      *(this + 8) = TagFallback;
      *(this + 1) = v5 + 1;
    }

    if (TagFallback == 10)
    {
      while (1)
      {
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
        v10 = *(v9 + 8 * v8);
        v21 = 0;
        v11 = *(this + 1);
        if (v11 >= *(this + 2) || *v11 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v21))
          {
            return 0;
          }
        }

        else
        {
          v21 = *v11;
          *(this + 1) = v11 + 1;
        }

        v12 = *(this + 14);
        v13 = *(this + 15);
        *(this + 14) = v12 + 1;
        if (v12 >= v13)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this);
        if (!sub_2453BA00C(v10, this, v14) || *(this + 36) != 1)
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
        v19 = *(this + 2);
        if (v18 >= v19 || *v18 != 10)
        {
          if (v18 == v19 && (*(this + 11) || *(this + 6) == *(this + 10)))
          {
            *(this + 8) = 0;
            result = 1;
            *(this + 36) = 1;
            return result;
          }

          goto LABEL_1;
        }

        *(this + 1) = v18 + 1;
      }
    }

    if (!TagFallback || (TagFallback & 7) == 4)
    {
      return 1;
    }

    if ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(this, TagFallback) & 1) == 0)
    {
      return 0;
    }
  }
}

uint64_t sub_245433870(uint64_t result, wireless_diagnostics::google::protobuf::MessageLite *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  if (*(result + 16) >= 1)
  {
    v5 = result;
    v6 = 0;
    do
    {
      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(1, *(*(v5 + 8) + 8 * v6++), a2, a4);
    }

    while (v6 < *(v5 + 16));
  }

  return result;
}

uint64_t sub_2454338D4(uint64_t a1, unint64_t a2)
{
  v3 = *(a1 + 16);
  if (v3 >= 1)
  {
    v4 = 0;
    do
    {
      v5 = sub_2453BA2E0(*(*(a1 + 8) + 8 * v4), a2);
      v6 = v5;
      if (v5 >= 0x80)
      {
        v7 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5);
      }

      else
      {
        v7 = 1;
      }

      v3 = (v6 + v3 + v7);
      ++v4;
    }

    while (v4 < *(a1 + 16));
  }

  *(a1 + 32) = v3;
  return v3;
}

void sub_245433954(uint64_t a1, void *lpsrc)
{
  if (!__dynamic_cast(lpsrc, MEMORY[0x277D82C38], &unk_28585A1D0, 0))
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  sub_24542C1A0(a1, lpsrc);
}

void sub_2454339F8(wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase *a1, uint64_t a2)
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
      sub_2453B9E04(*(v9 + 8 * v8), v6);
      ++v5;
      v4 = *(a2 + 8);
    }

    while (v5 < v4);
  }
}

void sub_245433B64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_245433B94(uint64_t *a1)
{
  *a1 = &unk_285859370;
  sub_24539DA30();
  sub_2453E53FC(a1 + 1);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);
}

void sub_245433BFC(uint64_t *a1)
{
  sub_245433B94(a1);

  JUMPOUT(0x245D6A0D0);
}

uint64_t sub_245433C88(int *a1, wireless_diagnostics::google::protobuf::internal::WireFormatLite *this, unsigned int a3)
{
  while (1)
  {
LABEL_1:
    v5 = *(this + 1);
    if (v5 >= *(this + 2) || (TagFallback = *v5, (TagFallback & 0x80000000) != 0))
    {
      TagFallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadTagFallback(this);
      *(this + 8) = TagFallback;
    }

    else
    {
      *(this + 8) = TagFallback;
      *(this + 1) = v5 + 1;
    }

    if (TagFallback == 10)
    {
      while (1)
      {
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
        v10 = *(v9 + 8 * v8);
        v21 = 0;
        v11 = *(this + 1);
        if (v11 >= *(this + 2) || *v11 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v21))
          {
            return 0;
          }
        }

        else
        {
          v21 = *v11;
          *(this + 1) = v11 + 1;
        }

        v12 = *(this + 14);
        v13 = *(this + 15);
        *(this + 14) = v12 + 1;
        if (v12 >= v13)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this);
        if (!sub_2453BA00C(v10, this, v14) || *(this + 36) != 1)
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
        v19 = *(this + 2);
        if (v18 >= v19 || *v18 != 10)
        {
          if (v18 == v19 && (*(this + 11) || *(this + 6) == *(this + 10)))
          {
            *(this + 8) = 0;
            result = 1;
            *(this + 36) = 1;
            return result;
          }

          goto LABEL_1;
        }

        *(this + 1) = v18 + 1;
      }
    }

    if (!TagFallback || (TagFallback & 7) == 4)
    {
      return 1;
    }

    if ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(this, TagFallback) & 1) == 0)
    {
      return 0;
    }
  }
}

uint64_t sub_245433EB0(uint64_t result, wireless_diagnostics::google::protobuf::MessageLite *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  if (*(result + 16) >= 1)
  {
    v5 = result;
    v6 = 0;
    do
    {
      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(1, *(*(v5 + 8) + 8 * v6++), a2, a4);
    }

    while (v6 < *(v5 + 16));
  }

  return result;
}

uint64_t sub_245433F14(uint64_t a1, unint64_t a2)
{
  v3 = *(a1 + 16);
  if (v3 >= 1)
  {
    v4 = 0;
    do
    {
      v5 = sub_2453BA2E0(*(*(a1 + 8) + 8 * v4), a2);
      v6 = v5;
      if (v5 >= 0x80)
      {
        v7 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5);
      }

      else
      {
        v7 = 1;
      }

      v3 = (v6 + v3 + v7);
      ++v4;
    }

    while (v4 < *(a1 + 16));
  }

  *(a1 + 32) = v3;
  return v3;
}

void sub_245433F94(uint64_t a1, void *lpsrc)
{
  if (!__dynamic_cast(lpsrc, MEMORY[0x277D82C38], &unk_28585A1E8, 0))
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  sub_24542C234(a1, lpsrc);
}

uint64_t sub_2454340A8(uint64_t result, uint64_t a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = result;
  v6 = *(result + 36);
  if ((v6 & 1) == 0)
  {
    if ((v6 & 2) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(2, a2, *(v5 + 16), a3);
    if ((*(v5 + 36) & 4) == 0)
    {
      return result;
    }

    goto LABEL_7;
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(1, *(result + 8), a2, a4);
  v6 = *(v5 + 36);
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
  v7 = *(v5 + 24);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(3, a2, v7, a3);
}

uint64_t sub_245434134(uint64_t a1, unint64_t a2)
{
  LOBYTE(v3) = *(a1 + 36);
  if (v3)
  {
    if (*(a1 + 36))
    {
      v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(a1 + 8)) + 1;
      v3 = *(a1 + 36);
    }

    else
    {
      v4 = 0;
    }

    if ((v3 & 2) != 0)
    {
      v4 += 9;
    }

    if ((v3 & 4) != 0)
    {
      result = v4 + 9;
    }

    else
    {
      result = v4;
    }
  }

  else
  {
    result = 0;
  }

  *(a1 + 32) = result;
  return result;
}

double sub_24543419C(uint64_t a1, void *lpsrc)
{
  if (!__dynamic_cast(lpsrc, MEMORY[0x277D82C38], &unk_28585A200, 0))
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  return sub_24542C2C8(a1, lpsrc);
}

void sub_245434258(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = &unk_285859460;
  sub_24539DA30();

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);
}

void sub_2454342B4(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  sub_245434258(a1);

  JUMPOUT(0x245D6A0D0);
}

uint64_t sub_24543434C(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormatLite *this, unsigned int a3)
{
  while (2)
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
    switch(TagFallback >> 3)
    {
      case 1u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_34;
        }

        v9 = *(this + 1);
        v8 = *(this + 2);
        if (v9 >= v8 || (v10 = *v9, v10 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(this, (a1 + 8));
          if (!result)
          {
            return result;
          }

          v11 = *(this + 1);
          v8 = *(this + 2);
        }

        else
        {
          *(a1 + 8) = v10;
          v11 = v9 + 1;
          *(this + 1) = v11;
        }

        *(a1 + 76) |= 1u;
        if (v11 < v8 && *v11 == 17)
        {
          *(this + 1) = v11 + 1;
          goto LABEL_43;
        }

        continue;
      case 2u:
        if (v7 != 1)
        {
          goto LABEL_34;
        }

LABEL_43:
        *v39 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v39) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 16) = *v39;
        *(a1 + 76) |= 2u;
        v21 = *(this + 1);
        if (v21 >= *(this + 2) || *v21 != 25)
        {
          continue;
        }

        *(this + 1) = v21 + 1;
LABEL_47:
        *v39 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v39) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 24) = *v39;
        *(a1 + 76) |= 4u;
        v22 = *(this + 1);
        v16 = *(this + 2);
        if (v22 >= v16 || *v22 != 32)
        {
          continue;
        }

        v17 = v22 + 1;
        *(this + 1) = v17;
LABEL_51:
        v39[0] = 0;
        if (v17 >= v16 || (v23 = *v17, (v23 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v39);
          if (!result)
          {
            return result;
          }

          v23 = v39[0];
          v24 = *(this + 1);
          v16 = *(this + 2);
        }

        else
        {
          v24 = v17 + 1;
          *(this + 1) = v24;
        }

        *(a1 + 64) = v23 != 0;
        *(a1 + 76) |= 8u;
        if (v24 >= v16 || *v24 != 41)
        {
          continue;
        }

        *(this + 1) = v24 + 1;
LABEL_59:
        *v39 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v39) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 32) = *v39;
        *(a1 + 76) |= 0x10u;
        v25 = *(this + 1);
        if (v25 >= *(this + 2) || *v25 != 49)
        {
          continue;
        }

        *(this + 1) = v25 + 1;
LABEL_63:
        *v39 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v39) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 40) = *v39;
        *(a1 + 76) |= 0x20u;
        v26 = *(this + 1);
        if (v26 >= *(this + 2) || *v26 != 57)
        {
          continue;
        }

        *(this + 1) = v26 + 1;
LABEL_67:
        *v39 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v39) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 48) = *v39;
        *(a1 + 76) |= 0x40u;
        v27 = *(this + 1);
        if (v27 >= *(this + 2) || *v27 != 65)
        {
          continue;
        }

        *(this + 1) = v27 + 1;
LABEL_71:
        *v39 = 0;
        if (wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v39))
        {
          *(a1 + 56) = *v39;
          *(a1 + 76) |= 0x80u;
          v28 = *(this + 1);
          v12 = *(this + 2);
          if (v28 < v12 && *v28 == 72)
          {
            v19 = v28 + 1;
            *(this + 1) = v19;
LABEL_75:
            v39[0] = 0;
            if (v19 >= v12 || (v29 = *v19, (v29 & 0x80000000) != 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v39);
              if (!result)
              {
                return result;
              }

              v29 = v39[0];
              v30 = *(this + 1);
              v12 = *(this + 2);
            }

            else
            {
              v30 = v19 + 1;
              *(this + 1) = v30;
            }

            *(a1 + 65) = v29 != 0;
            *(a1 + 76) |= 0x100u;
            if (v30 < v12 && *v30 == 80)
            {
              v15 = v30 + 1;
              *(this + 1) = v15;
LABEL_83:
              v39[0] = 0;
              if (v15 >= v12 || (v31 = *v15, (v31 & 0x80000000) != 0))
              {
                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v39);
                if (!result)
                {
                  return result;
                }

                v31 = v39[0];
                v32 = *(this + 1);
                v12 = *(this + 2);
              }

              else
              {
                v32 = v15 + 1;
                *(this + 1) = v32;
              }

              *(a1 + 66) = v31 != 0;
              *(a1 + 76) |= 0x200u;
              if (v32 < v12 && *v32 == 88)
              {
                v18 = v32 + 1;
                *(this + 1) = v18;
LABEL_91:
                v39[0] = 0;
                if (v18 >= v12 || (v33 = *v18, (v33 & 0x80000000) != 0))
                {
                  result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v39);
                  if (!result)
                  {
                    return result;
                  }

                  v33 = v39[0];
                  v34 = *(this + 1);
                  v12 = *(this + 2);
                }

                else
                {
                  v34 = v18 + 1;
                  *(this + 1) = v34;
                }

                *(a1 + 67) = v33 != 0;
                *(a1 + 76) |= 0x400u;
                if (v34 < v12 && *v34 == 96)
                {
                  v13 = v34 + 1;
                  *(this + 1) = v13;
LABEL_99:
                  v39[0] = 0;
                  if (v13 >= v12 || (v35 = *v13, (v35 & 0x80000000) != 0))
                  {
                    result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v39);
                    if (!result)
                    {
                      return result;
                    }

                    v35 = v39[0];
                    v36 = *(this + 1);
                    v12 = *(this + 2);
                  }

                  else
                  {
                    v36 = v13 + 1;
                    *(this + 1) = v36;
                  }

                  *(a1 + 68) = v35 != 0;
                  *(a1 + 76) |= 0x800u;
                  if (v36 < v12 && *v36 == 104)
                  {
                    v14 = v36 + 1;
                    *(this + 1) = v14;
LABEL_107:
                    v39[0] = 0;
                    if (v14 >= v12 || (v37 = *v14, (v37 & 0x80000000) != 0))
                    {
                      result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v39);
                      if (!result)
                      {
                        return result;
                      }

                      v37 = v39[0];
                      v38 = *(this + 1);
                      v12 = *(this + 2);
                    }

                    else
                    {
                      v38 = v14 + 1;
                      *(this + 1) = v38;
                    }

                    *(a1 + 69) = v37 != 0;
                    *(a1 + 76) |= 0x1000u;
                    if (v38 == v12 && (*(this + 11) || *(this + 6) == *(this + 10)))
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

          continue;
        }

        return 0;
      case 3u:
        if (v7 == 1)
        {
          goto LABEL_47;
        }

        goto LABEL_34;
      case 4u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_34;
        }

        v17 = *(this + 1);
        v16 = *(this + 2);
        goto LABEL_51;
      case 5u:
        if (v7 == 1)
        {
          goto LABEL_59;
        }

        goto LABEL_34;
      case 6u:
        if (v7 == 1)
        {
          goto LABEL_63;
        }

        goto LABEL_34;
      case 7u:
        if (v7 == 1)
        {
          goto LABEL_67;
        }

        goto LABEL_34;
      case 8u:
        if (v7 == 1)
        {
          goto LABEL_71;
        }

        goto LABEL_34;
      case 9u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_34;
        }

        v19 = *(this + 1);
        v12 = *(this + 2);
        goto LABEL_75;
      case 0xAu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_34;
        }

        v15 = *(this + 1);
        v12 = *(this + 2);
        goto LABEL_83;
      case 0xBu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_34;
        }

        v18 = *(this + 1);
        v12 = *(this + 2);
        goto LABEL_91;
      case 0xCu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_34;
        }

        v13 = *(this + 1);
        v12 = *(this + 2);
        goto LABEL_99;
      case 0xDu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_34;
        }

        v14 = *(this + 1);
        v12 = *(this + 2);
        goto LABEL_107;
      default:
LABEL_34:
        if (v7 == 4)
        {
          return 1;
        }

        if ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(this, TagFallback) & 1) == 0)
        {
          return 0;
        }

        continue;
    }
  }
}

uint64_t sub_24543494C(uint64_t result, uint64_t a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = result;
  v6 = *(result + 76);
  if (v6)
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(1, *(result + 8), a2, a4);
    v6 = *(v5 + 76);
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

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(2, a2, *(v5 + 16), a3);
  v6 = *(v5 + 76);
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
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(3, a2, *(v5 + 24), a3);
  v6 = *(v5 + 76);
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
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(4, *(v5 + 64), a2, a4);
  v6 = *(v5 + 76);
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
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(5, a2, *(v5 + 32), a3);
  v6 = *(v5 + 76);
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
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(6, a2, *(v5 + 40), a3);
  v6 = *(v5 + 76);
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
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(7, a2, *(v5 + 48), a3);
  v6 = *(v5 + 76);
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
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(8, a2, *(v5 + 56), a3);
  v6 = *(v5 + 76);
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
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(9, *(v5 + 65), a2, a4);
  v6 = *(v5 + 76);
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
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(0xA, *(v5 + 66), a2, a4);
  v6 = *(v5 + 76);
  if ((v6 & 0x400) == 0)
  {
LABEL_12:
    if ((v6 & 0x800) == 0)
    {
      goto LABEL_13;
    }

LABEL_26:
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(0xC, *(v5 + 68), a2, a4);
    if ((*(v5 + 76) & 0x1000) == 0)
    {
      return result;
    }

    goto LABEL_27;
  }

LABEL_25:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(0xB, *(v5 + 67), a2, a4);
  v6 = *(v5 + 76);
  if ((v6 & 0x800) != 0)
  {
    goto LABEL_26;
  }

LABEL_13:
  if ((v6 & 0x1000) == 0)
  {
    return result;
  }

LABEL_27:
  v7 = *(v5 + 69);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(0xD, v7, a2, a4);
}

uint64_t sub_245434AF0(uint64_t a1, unint64_t a2)
{
  v3 = *(a1 + 76);
  if (v3)
  {
    if (v3)
    {
      v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(a1 + 8)) + 1;
      v3 = *(a1 + 76);
    }

    else
    {
      v4 = 0;
    }

    if ((v3 & 2) != 0)
    {
      v4 += 9;
    }

    if ((v3 & 4) != 0)
    {
      v4 += 9;
    }

    v6 = v4 + ((v3 >> 2) & 2);
    if ((v3 & 0x10) != 0)
    {
      v6 += 9;
    }

    if ((v3 & 0x20) != 0)
    {
      v6 += 9;
    }

    if ((v3 & 0x40) != 0)
    {
      v6 += 9;
    }

    if ((v3 & 0x80) != 0)
    {
      result = v6 + 9;
    }

    else
    {
      result = v6;
    }
  }

  else
  {
    result = 0;
  }

  if ((v3 & 0xFF00) != 0)
  {
    v7.i64[0] = 0x200000002;
    v7.i64[1] = 0x200000002;
    result = vaddvq_s32(vandq_s8(vshlq_u32(vdupq_n_s32(v3), xmmword_24548A6E0), v7)) + ((v3 >> 11) & 2) + result;
  }

  *(a1 + 72) = result;
  return result;
}

void sub_245434BD0(uint64_t a1, void *lpsrc)
{
  if (!__dynamic_cast(lpsrc, MEMORY[0x277D82C38], &unk_28585A218, 0))
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  sub_24542C3B4(a1, lpsrc);
}

void sub_245434C8C(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = &unk_2858594D8;
  sub_24539DA30();

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);
}

void sub_245434CE8(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  sub_245434C8C(a1);

  JUMPOUT(0x245D6A0D0);
}

uint64_t sub_245434D7C(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormatLite *this, unsigned int a3)
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
            v16 = *(this + 1);
            v15 = *(this + 2);
            goto LABEL_39;
          }
        }

        else if (v7 == 4 && (TagFallback & 7) == 0)
        {
          v11 = *(this + 1);
          v10 = *(this + 2);
          goto LABEL_49;
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

      v12 = *(this + 1);
      v8 = *(this + 2);
      if (v12 >= v8 || (v13 = *v12, v13 < 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(this, (a1 + 8));
        if (!result)
        {
          return result;
        }

        v14 = *(this + 1);
        v8 = *(this + 2);
      }

      else
      {
        *(a1 + 8) = v13;
        v14 = v12 + 1;
        *(this + 1) = v14;
      }

      *(a1 + 32) |= 1u;
      if (v14 < v8 && *v14 == 16)
      {
        v9 = v14 + 1;
        *(this + 1) = v9;
LABEL_29:
        v25 = 0;
        if (v9 >= v8 || (v17 = *v9, (v17 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v25);
          if (!result)
          {
            return result;
          }

          v17 = v25;
        }

        else
        {
          *(this + 1) = v9 + 1;
        }

        if (v17 <= 9)
        {
          *(a1 + 32) |= 2u;
          *(a1 + 16) = v17;
        }

        v18 = *(this + 1);
        v15 = *(this + 2);
        if (v18 < v15 && *v18 == 24)
        {
          v16 = v18 + 1;
          *(this + 1) = v16;
LABEL_39:
          v24 = 0;
          if (v16 >= v15 || (v19 = *v16, (v19 & 0x80000000) != 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v24);
            if (!result)
            {
              return result;
            }

            v19 = v24;
          }

          else
          {
            *(this + 1) = v16 + 1;
          }

          if (v19 <= 4)
          {
            *(a1 + 32) |= 4u;
            *(a1 + 20) = v19;
          }

          v20 = *(this + 1);
          v10 = *(this + 2);
          if (v20 < v10 && *v20 == 32)
          {
            v11 = v20 + 1;
            *(this + 1) = v11;
LABEL_49:
            v23 = 0;
            if (v11 >= v10 || (v21 = *v11, (v21 & 0x80000000) != 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v23);
              if (!result)
              {
                return result;
              }

              v21 = v23;
            }

            else
            {
              *(this + 1) = v11 + 1;
            }

            if (sub_24539CC50(v21))
            {
              *(a1 + 32) |= 8u;
              *(a1 + 24) = v21;
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

uint64_t sub_245435024(uint64_t result, uint64_t a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = result;
  v6 = *(result + 32);
  if (v6)
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(1, *(result + 8), a2, a4);
    v6 = v5[8];
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

LABEL_8:
      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(3, v5[5], a2, a4);
      if ((v5[8] & 8) == 0)
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

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(2, v5[4], a2, a4);
  v6 = v5[8];
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
  v7 = v5[6];

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(4, v7, a2, a4);
}

uint64_t sub_2454350CC(uint64_t a1, unint64_t a2)
{
  LOBYTE(v3) = *(a1 + 32);
  if (!v3)
  {
    v4 = 0;
    goto LABEL_28;
  }

  if (*(a1 + 32))
  {
    v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(a1 + 8)) + 1;
    v3 = *(a1 + 32);
    if ((v3 & 2) == 0)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v4 = 0;
    if ((*(a1 + 32) & 2) == 0)
    {
      goto LABEL_13;
    }
  }

  v5 = *(a1 + 16);
  if ((v5 & 0x80000000) != 0)
  {
    v6 = 11;
  }

  else if (v5 >= 0x80)
  {
    v6 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5) + 1;
    v3 = *(a1 + 32);
  }

  else
  {
    v6 = 2;
  }

  v4 = (v6 + v4);
LABEL_13:
  if ((v3 & 4) == 0)
  {
    if ((v3 & 8) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_22;
  }

  v7 = *(a1 + 20);
  if ((v7 & 0x80000000) != 0)
  {
    v8 = 11;
  }

  else if (v7 >= 0x80)
  {
    v8 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v7) + 1;
    v3 = *(a1 + 32);
  }

  else
  {
    v8 = 2;
  }

  v4 = (v8 + v4);
  if ((v3 & 8) != 0)
  {
LABEL_22:
    v9 = *(a1 + 24);
    if ((v9 & 0x80000000) != 0)
    {
      v10 = 11;
    }

    else if (v9 >= 0x80)
    {
      v10 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v9) + 1;
    }

    else
    {
      v10 = 2;
    }

    v4 = (v10 + v4);
  }

LABEL_28:
  *(a1 + 28) = v4;
  return v4;
}

void sub_2454351C4(uint64_t a1, void *lpsrc)
{
  if (!__dynamic_cast(lpsrc, MEMORY[0x277D82C38], &unk_28585A230, 0))
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  sub_24542C5EC(a1, lpsrc);
}

void sub_245435280(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = &unk_285859550;
  sub_24539DA30();

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);
}

void sub_2454352DC(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  sub_245435280(a1);

  JUMPOUT(0x245D6A0D0);
}

uint64_t sub_245435368(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormatLite *this, unsigned int a3)
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
      if (v8 >= v7 || (v9 = *v8, v9 < 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(this, (a1 + 8));
        if (!result)
        {
          return result;
        }

        v10 = *(this + 1);
        v7 = *(this + 2);
      }

      else
      {
        *(a1 + 8) = v9;
        v10 = v8 + 1;
        *(this + 1) = v10;
      }

      *(a1 + 24) |= 1u;
      if (v10 < v7 && *v10 == 16)
      {
        v11 = v10 + 1;
        *(this + 1) = v11;
LABEL_22:
        v14 = 0;
        if (v11 >= v7 || (v12 = *v11, (v12 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v14);
          if (!result)
          {
            return result;
          }

          v12 = v14;
        }

        else
        {
          *(this + 1) = v11 + 1;
        }

        if (v12 - 1 <= 3)
        {
          *(a1 + 24) |= 2u;
          *(a1 + 16) = v12;
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

uint64_t sub_245435500(uint64_t result, uint64_t a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = result;
  v6 = *(result + 24);
  if (v6)
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(1, *(result + 8), a2, a4);
    v6 = *(v5 + 24);
  }

  if ((v6 & 2) != 0)
  {
    v7 = *(v5 + 16);

    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(2, v7, a2, a4);
  }

  return result;
}

uint64_t sub_24543556C(uint64_t a1, unint64_t a2)
{
  if (*(a1 + 24))
  {
    if (*(a1 + 24))
    {
      v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(a1 + 8)) + 1;
      if ((*(a1 + 24) & 2) == 0)
      {
        goto LABEL_13;
      }
    }

    else
    {
      v3 = 0;
      if ((*(a1 + 24) & 2) == 0)
      {
        goto LABEL_13;
      }
    }

    v4 = *(a1 + 16);
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

    v3 = (v5 + v3);
  }

  else
  {
    v3 = 0;
  }

LABEL_13:
  *(a1 + 20) = v3;
  return v3;
}

void sub_2454355F4(uint64_t a1, void *lpsrc)
{
  if (!__dynamic_cast(lpsrc, MEMORY[0x277D82C38], &unk_28585A248, 0))
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  sub_24542C764(a1, lpsrc);
}

void sub_2454356B0(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = &unk_2858595C8;
  sub_24539DA30();

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);
}

void sub_24543570C(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  sub_2454356B0(a1);

  JUMPOUT(0x245D6A0D0);
}

uint64_t sub_24543579C(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormatLite *this, unsigned int a3)
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
      }

      else
      {
        *(this + 8) = TagFallback;
        *(this + 1) = v5 + 1;
      }

      if (TagFallback != 8)
      {
        break;
      }

      v11 = 0;
      v7 = *(this + 1);
      if (v7 >= *(this + 2) || (v8 = *v7, (v8 & 0x80000000) != 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v11);
        if (!result)
        {
          return result;
        }

        v8 = v11;
      }

      else
      {
        *(this + 1) = v7 + 1;
      }

      if (v8 < 7 || v8 == 15)
      {
        *(a1 + 16) |= 1u;
        *(a1 + 8) = v8;
      }

      if (*(this + 1) == *(this + 2) && (*(this + 11) || *(this + 6) == *(this + 10)))
      {
        *(this + 8) = 0;
        result = 1;
        *(this + 36) = 1;
        return result;
      }
    }

    if (!TagFallback || (TagFallback & 7) == 4)
    {
      break;
    }

    if ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(this, TagFallback) & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_2454358B8(uint64_t result, uint64_t a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  if (*(result + 16))
  {
    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(1, *(result + 8), a2, a4);
  }

  return result;
}

uint64_t sub_2454358D4(uint64_t a1, unsigned int a2)
{
  if (*(a1 + 16))
  {
    v4 = *(a1 + 8);
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

  *(a1 + 12) = result;
  return result;
}

void sub_245435930(uint64_t a1, void *lpsrc)
{
  if (!__dynamic_cast(lpsrc, MEMORY[0x277D82C38], &unk_28585A260, 0))
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  sub_24542C854(a1, lpsrc);
}

void sub_2454359EC(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = &unk_285859640;
  sub_24539DA30();

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);
}

void sub_245435A48(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  sub_2454359EC(a1);

  JUMPOUT(0x245D6A0D0);
}

uint64_t sub_245435AD8(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormatLite *this, unsigned int a3)
{
  do
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
          if (v8 != 1)
          {
            goto LABEL_20;
          }

LABEL_32:
          v16 = 0;
          if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, &v16) & 1) == 0)
          {
            return 0;
          }

          *(a1 + 24) = v16;
          *(a1 + 44) |= 4u;
          v15 = *(this + 1);
          if (v15 < *(this + 2) && *v15 == 33)
          {
            *(this + 1) = v15 + 1;
            goto LABEL_36;
          }
        }

        else
        {
          if (v7 != 4 || v8 != 1)
          {
            goto LABEL_20;
          }

LABEL_36:
          v16 = 0;
          if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, &v16) & 1) == 0)
          {
            return 0;
          }

          *(a1 + 32) = v16;
          *(a1 + 44) |= 8u;
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

      if ((TagFallback & 7) != 0)
      {
        goto LABEL_20;
      }

      v10 = *(this + 1);
      v9 = *(this + 2);
      if (v10 >= v9 || (v11 = *v10, v11 < 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(this, (a1 + 8));
        if (!result)
        {
          return result;
        }

        v12 = *(this + 1);
        v9 = *(this + 2);
      }

      else
      {
        *(a1 + 8) = v11;
        v12 = v10 + 1;
        *(this + 1) = v12;
      }

      *(a1 + 44) |= 1u;
      if (v12 < v9 && *v12 == 17)
      {
        *(this + 1) = v12 + 1;
LABEL_28:
        v16 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, &v16) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 16) = v16;
        *(a1 + 44) |= 2u;
        v14 = *(this + 1);
        if (v14 < *(this + 2) && *v14 == 25)
        {
          *(this + 1) = v14 + 1;
          goto LABEL_32;
        }
      }
    }

    if (v7 == 2 && v8 == 1)
    {
      goto LABEL_28;
    }

LABEL_20:
    if (v8 == 4)
    {
      return 1;
    }
  }

  while ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(this, TagFallback) & 1) != 0);
  return 0;
}

uint64_t sub_245435D04(uint64_t result, uint64_t a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = result;
  v6 = *(result + 44);
  if (v6)
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(1, *(result + 8), a2, a4);
    v6 = *(v5 + 44);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

LABEL_8:
      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(3, a2, *(v5 + 24), a3);
      if ((*(v5 + 44) & 8) == 0)
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

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(2, a2, *(v5 + 16), a3);
  v6 = *(v5 + 44);
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
  v7 = *(v5 + 32);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(4, a2, v7, a3);
}

uint64_t sub_245435DAC(uint64_t a1, unint64_t a2)
{
  LOBYTE(v3) = *(a1 + 44);
  if (v3)
  {
    if (*(a1 + 44))
    {
      v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(a1 + 8)) + 1;
      v3 = *(a1 + 44);
    }

    else
    {
      v4 = 0;
    }

    if ((v3 & 2) != 0)
    {
      v4 += 9;
    }

    if ((v3 & 4) != 0)
    {
      v4 += 9;
    }

    if ((v3 & 8) != 0)
    {
      result = v4 + 9;
    }

    else
    {
      result = v4;
    }
  }

  else
  {
    result = 0;
  }

  *(a1 + 40) = result;
  return result;
}

double sub_245435E20(uint64_t a1, void *lpsrc)
{
  if (!__dynamic_cast(lpsrc, MEMORY[0x277D82C38], &unk_28585A278, 0))
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  return sub_24542C928(a1, lpsrc);
}

void sub_245435EDC(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = &unk_2858596B8;
  sub_24539DA30();

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);
}

void sub_245435F38(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  sub_245435EDC(a1);

  JUMPOUT(0x245D6A0D0);
}

uint64_t sub_245435FC4(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormatLite *this, unsigned int a3)
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

      v7 = TagFallback >> 3;
      v8 = TagFallback & 7;
      if (TagFallback >> 3 == 3)
      {
        if (v8 == 1)
        {
          goto LABEL_28;
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

      v10 = *(this + 1);
      v9 = *(this + 2);
      if (v10 >= v9 || (v11 = *v10, v11 < 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(this, (a1 + 8));
        if (!result)
        {
          return result;
        }

        v12 = *(this + 1);
        v9 = *(this + 2);
      }

      else
      {
        *(a1 + 8) = v11;
        v12 = v10 + 1;
        *(this + 1) = v12;
      }

      *(a1 + 36) |= 1u;
      if (v12 < v9 && *v12 == 17)
      {
        *(this + 1) = v12 + 1;
LABEL_24:
        v15 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, &v15) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 16) = v15;
        *(a1 + 36) |= 2u;
        v14 = *(this + 1);
        if (v14 < *(this + 2) && *v14 == 25)
        {
          *(this + 1) = v14 + 1;
LABEL_28:
          v15 = 0;
          if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, &v15) & 1) == 0)
          {
            return 0;
          }

          *(a1 + 24) = v15;
          *(a1 + 36) |= 4u;
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

    if (v8 == 1)
    {
      goto LABEL_24;
    }

LABEL_16:
    if (v8 == 4)
    {
      return 1;
    }
  }

  while ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(this, TagFallback) & 1) != 0);
  return 0;
}

uint64_t sub_24543618C(uint64_t result, uint64_t a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = result;
  v6 = *(result + 36);
  if ((v6 & 1) == 0)
  {
    if ((v6 & 2) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(2, a2, *(v5 + 16), a3);
    if ((*(v5 + 36) & 4) == 0)
    {
      return result;
    }

    goto LABEL_7;
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(1, *(result + 8), a2, a4);
  v6 = *(v5 + 36);
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
  v7 = *(v5 + 24);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(3, a2, v7, a3);
}

uint64_t sub_245436218(uint64_t a1, unint64_t a2)
{
  LOBYTE(v3) = *(a1 + 36);
  if (v3)
  {
    if (*(a1 + 36))
    {
      v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(a1 + 8)) + 1;
      v3 = *(a1 + 36);
    }

    else
    {
      v4 = 0;
    }

    if ((v3 & 2) != 0)
    {
      v4 += 9;
    }

    if ((v3 & 4) != 0)
    {
      result = v4 + 9;
    }

    else
    {
      result = v4;
    }
  }

  else
  {
    result = 0;
  }

  *(a1 + 32) = result;
  return result;
}

double sub_245436280(uint64_t a1, void *lpsrc)
{
  if (!__dynamic_cast(lpsrc, MEMORY[0x277D82C38], &unk_28585A290, 0))
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  return sub_24542CA34(a1, lpsrc);
}

void sub_24543633C(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = &unk_285859730;
  sub_24539DA30();

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);
}

void sub_245436398(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  sub_24543633C(a1);

  JUMPOUT(0x245D6A0D0);
}

uint64_t sub_245436420(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormatLite *this, unsigned int a3)
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
      if (v8 >= v7 || (v9 = *v8, v9 < 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(this, (a1 + 8));
        if (!result)
        {
          return result;
        }

        v10 = *(this + 1);
        v7 = *(this + 2);
      }

      else
      {
        *(a1 + 8) = v9;
        v10 = v8 + 1;
        *(this + 1) = v10;
      }

      *(a1 + 24) |= 1u;
      if (v10 < v7 && *v10 == 16)
      {
        v11 = v10 + 1;
        *(this + 1) = v11;
LABEL_22:
        if (v11 >= v7 || (v12 = *v11, v12 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 16));
          if (!result)
          {
            return result;
          }

          v13 = *(this + 1);
          v7 = *(this + 2);
        }

        else
        {
          *(a1 + 16) = v12;
          v13 = v11 + 1;
          *(this + 1) = v13;
        }

        *(a1 + 24) |= 2u;
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

uint64_t sub_24543659C(uint64_t result, uint64_t a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = result;
  v6 = *(result + 24);
  if (v6)
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(1, *(result + 8), a2, a4);
    v6 = *(v5 + 24);
  }

  if ((v6 & 2) != 0)
  {
    v7 = *(v5 + 16);

    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(2, v7, a2, a4);
  }

  return result;
}

uint64_t sub_245436608(uint64_t a1, unint64_t a2)
{
  if (*(a1 + 24))
  {
    if (*(a1 + 24))
    {
      v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(a1 + 8)) + 1;
      if ((*(a1 + 24) & 2) == 0)
      {
        goto LABEL_11;
      }
    }

    else
    {
      v3 = 0;
      if ((*(a1 + 24) & 2) == 0)
      {
        goto LABEL_11;
      }
    }

    v4 = *(a1 + 16);
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
  *(a1 + 20) = v3;
  return v3;
}

void sub_245436684(uint64_t a1, void *lpsrc)
{
  if (!__dynamic_cast(lpsrc, MEMORY[0x277D82C38], &unk_28585A2A8, 0))
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  sub_24542D9F0(a1, lpsrc);
}

void sub_245436740(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = &unk_2858597A8;
  sub_24539DA30();

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);
}

void sub_24543679C(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  sub_245436740(a1);

  JUMPOUT(0x245D6A0D0);
}

uint64_t sub_245436828(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormatLite *this, unsigned int a3)
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

      v15 = 0;
      v8 = *(this + 1);
      v7 = *(this + 2);
      if (v8 >= v7 || (v9 = *v8, (v9 & 0x80000000) != 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v15);
        if (!result)
        {
          return result;
        }

        v9 = v15;
        v10 = *(this + 1);
        v7 = *(this + 2);
      }

      else
      {
        v10 = v8 + 1;
        *(this + 1) = v10;
      }

      *(a1 + 8) = v9 != 0;
      *(a1 + 20) |= 1u;
      if (v10 < v7 && *v10 == 16)
      {
        v11 = v10 + 1;
        *(this + 1) = v11;
LABEL_22:
        v16 = 0;
        if (v11 >= v7 || (v12 = *v11, (v12 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v16);
          if (!result)
          {
            return result;
          }

          v12 = v16;
          v13 = *(this + 1);
          v7 = *(this + 2);
        }

        else
        {
          v13 = v11 + 1;
          *(this + 1) = v13;
        }

        *(a1 + 12) = v12;
        *(a1 + 20) |= 2u;
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

uint64_t sub_2454369C4(uint64_t result, uint64_t a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = result;
  v6 = *(result + 20);
  if (v6)
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(1, *(result + 8), a2, a4);
    v6 = *(v5 + 20);
  }

  if ((v6 & 2) != 0)
  {
    v7 = *(v5 + 12);

    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(2, v7, a2, a4);
  }

  return result;
}

uint64_t sub_245436A30(unsigned int *a1, unsigned int a2)
{
  v3 = a1[5];
  if (v3)
  {
    v4 = 2 * (v3 & 1);
    if ((v3 & 2) != 0)
    {
      v5 = a1[3];
      if ((v5 & 0x80000000) != 0)
      {
        v6 = 11;
      }

      else if (v5 >= 0x80)
      {
        v6 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5) + 1;
      }

      else
      {
        v6 = 2;
      }

      v4 = (v6 + v4);
    }
  }

  else
  {
    v4 = 0;
  }

  a1[4] = v4;
  return v4;
}

void sub_245436AA0(uint64_t a1, void *lpsrc)
{
  if (!__dynamic_cast(lpsrc, MEMORY[0x277D82C38], &unk_28585A2C0, 0))
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  sub_24542D198(a1, lpsrc);
}

void sub_245436B5C(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = &unk_285859820;
  sub_24539DA30();

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);
}

void sub_245436BB8(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  sub_245436B5C(a1);

  JUMPOUT(0x245D6A0D0);
}

uint64_t sub_245436C3C(unsigned int *a1, wireless_diagnostics::google::protobuf::internal::WireFormatLite *this, unsigned int a3)
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

uint64_t sub_245436DB8(uint64_t result, uint64_t a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
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

uint64_t sub_245436E24(uint64_t a1, unsigned int a2)
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

void sub_245436EB4(_DWORD *a1, void *lpsrc)
{
  if (!__dynamic_cast(lpsrc, MEMORY[0x277D82C38], &unk_28585A2D8, 0))
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  sub_24542D25C(a1, lpsrc);
}

void sub_245436F70(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = &unk_285859898;
  sub_24539DA30();

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);
}

void sub_245436FCC(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  sub_245436F70(a1);

  JUMPOUT(0x245D6A0D0);
}

uint64_t sub_245437054(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormatLite *this, unsigned int a3)
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

      *(a1 + 8) = v9 != 0;
      *(a1 + 16) |= 1u;
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

        *(a1 + 9) = v12 != 0;
        *(a1 + 16) |= 2u;
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

uint64_t sub_2454371F8(uint64_t result, uint64_t a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = result;
  v6 = *(result + 16);
  if (v6)
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(1, *(result + 8), a2, a4);
    v6 = *(v5 + 16);
  }

  if ((v6 & 2) != 0)
  {
    v7 = *(v5 + 9);

    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(2, v7, a2, a4);
  }

  return result;
}

uint64_t sub_245437264(uint64_t a1)
{
  if (*(a1 + 16))
  {
    v1 = 2 * (*(a1 + 16) & 1) + (*(a1 + 16) & 2u);
  }

  else
  {
    v1 = 0;
  }

  *(a1 + 12) = v1;
  return v1;
}

void sub_245437288(uint64_t a1, _BYTE *lpsrc)
{
  if (!__dynamic_cast(lpsrc, MEMORY[0x277D82C38], &unk_28585A2F0, 0))
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  sub_24542DAB4(a1, lpsrc);
}

void sub_245437344(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = &unk_285859910;
  sub_24539DA30();

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);
}

void sub_2454373A0(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  sub_245437344(a1);

  JUMPOUT(0x245D6A0D0);
}

uint64_t sub_245437428(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormatLite *this, unsigned int a3)
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
      }

      else
      {
        *(this + 8) = TagFallback;
        *(this + 1) = v5 + 1;
      }

      if (TagFallback != 8)
      {
        break;
      }

      v12 = 0;
      v8 = *(this + 1);
      v7 = *(this + 2);
      if (v8 >= v7 || (v9 = *v8, (v9 & 0x80000000) != 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v12);
        if (!result)
        {
          return result;
        }

        v9 = v12;
        v10 = *(this + 1);
        v7 = *(this + 2);
      }

      else
      {
        v10 = v8 + 1;
        *(this + 1) = v10;
      }

      *(a1 + 8) = v9 != 0;
      *(a1 + 16) |= 1u;
      if (v10 == v7 && (*(this + 11) || *(this + 6) == *(this + 10)))
      {
        *(this + 8) = 0;
        result = 1;
        *(this + 36) = 1;
        return result;
      }
    }

    if (!TagFallback || (TagFallback & 7) == 4)
    {
      break;
    }

    if ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(this, TagFallback) & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_245437540(uint64_t result, uint64_t a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  if (*(result + 16))
  {
    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(1, *(result + 8), a2, a4);
  }

  return result;
}

uint64_t sub_24543755C(uint64_t a1)
{
  if (*(a1 + 16))
  {
    v1 = 2 * (*(a1 + 16) & 1u);
  }

  else
  {
    v1 = 0;
  }

  *(a1 + 12) = v1;
  return v1;
}

void sub_245437578(uint64_t a1, void *lpsrc)
{
  if (!__dynamic_cast(lpsrc, MEMORY[0x277D82C38], &unk_28585A308, 0))
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  sub_24542D320(a1, lpsrc);
}

void sub_245437634(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = &unk_285859988;
  v2 = *(a1 + 1);
  if (v2 != MEMORY[0x277D82C30] && v2 != 0)
  {
    if (*(v2 + 23) < 0)
    {
      operator delete(*v2);
    }

    MEMORY[0x245D6A0D0](v2, 0x1012C40EC159624);
  }

  sub_24539DA30();

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);
}

void sub_2454376D0(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  sub_245437634(a1);

  JUMPOUT(0x245D6A0D0);
}

uint64_t sub_24543775C(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormatLite *this, unsigned int a3)
{
  v5 = MEMORY[0x277D82C30];
  while (1)
  {
    while (1)
    {
      v6 = *(this + 1);
      if (v6 >= *(this + 2) || (TagFallback = *v6, (TagFallback & 0x80000000) != 0))
      {
        TagFallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadTagFallback(this);
        *(this + 8) = TagFallback;
      }

      else
      {
        *(this + 8) = TagFallback;
        *(this + 1) = v6 + 1;
      }

      if (TagFallback != 10)
      {
        break;
      }

      *(a1 + 20) |= 1u;
      if (*(a1 + 8) == v5)
      {
        operator new();
      }

      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
      if (!result)
      {
        return result;
      }

      if (*(this + 1) == *(this + 2) && (*(this + 11) || *(this + 6) == *(this + 10)))
      {
        *(this + 8) = 0;
        result = 1;
        *(this + 36) = 1;
        return result;
      }
    }

    if (!TagFallback || (TagFallback & 7) == 4)
    {
      break;
    }

    if ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(this, TagFallback) & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_24543787C(uint64_t result, uint64_t a2)
{
  if (*(result + 20))
  {
    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
  }

  return result;
}

uint64_t sub_245437898(uint64_t a1, unsigned int a2)
{
  if (*(a1 + 20))
  {
    v4 = *(a1 + 8);
    v5 = *(v4 + 23);
    v6 = v5;
    v7 = *(v4 + 8);
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
      v10 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v8);
      v5 = *(v4 + 23);
      v7 = *(v4 + 8);
      v9 = v10 + 1;
      v6 = *(v4 + 23);
    }

    else
    {
      v9 = 2;
    }

    if (v6 < 0)
    {
      v5 = v7;
    }

    result = (v9 + v5);
  }

  else
  {
    result = 0;
  }

  *(a1 + 16) = result;
  return result;
}

void sub_245437918(uint64_t a1, void *lpsrc)
{
  if (!__dynamic_cast(lpsrc, MEMORY[0x277D82C38], &unk_28585A320, 0))
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  sub_24542D3C4(a1, lpsrc);
}

void sub_2454379D4(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = &unk_285859A00;
  v2 = *(a1 + 1);
  if (v2 != MEMORY[0x277D82C30] && v2 != 0)
  {
    if (*(v2 + 23) < 0)
    {
      operator delete(*v2);
    }

    MEMORY[0x245D6A0D0](v2, 0x1012C40EC159624);
  }

  sub_24539DA30();

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);
}

void sub_245437A70(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  sub_2454379D4(a1);

  JUMPOUT(0x245D6A0D0);
}

uint64_t sub_245437AFC(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormatLite *this, unsigned int a3)
{
  v5 = MEMORY[0x277D82C30];
  while (1)
  {
    while (1)
    {
      v6 = *(this + 1);
      if (v6 >= *(this + 2) || (TagFallback = *v6, (TagFallback & 0x80000000) != 0))
      {
        TagFallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadTagFallback(this);
        *(this + 8) = TagFallback;
      }

      else
      {
        *(this + 8) = TagFallback;
        *(this + 1) = v6 + 1;
      }

      if (TagFallback != 10)
      {
        break;
      }

      *(a1 + 20) |= 1u;
      if (*(a1 + 8) == v5)
      {
        operator new();
      }

      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
      if (!result)
      {
        return result;
      }

      if (*(this + 1) == *(this + 2) && (*(this + 11) || *(this + 6) == *(this + 10)))
      {
        *(this + 8) = 0;
        result = 1;
        *(this + 36) = 1;
        return result;
      }
    }

    if (!TagFallback || (TagFallback & 7) == 4)
    {
      break;
    }

    if ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(this, TagFallback) & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_245437C1C(uint64_t result, uint64_t a2)
{
  if (*(result + 20))
  {
    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
  }

  return result;
}

uint64_t sub_245437C38(uint64_t a1, unsigned int a2)
{
  if (*(a1 + 20))
  {
    v4 = *(a1 + 8);
    v5 = *(v4 + 23);
    v6 = v5;
    v7 = *(v4 + 8);
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
      v10 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v8);
      v5 = *(v4 + 23);
      v7 = *(v4 + 8);
      v9 = v10 + 1;
      v6 = *(v4 + 23);
    }

    else
    {
      v9 = 2;
    }

    if (v6 < 0)
    {
      v5 = v7;
    }

    result = (v9 + v5);
  }

  else
  {
    result = 0;
  }

  *(a1 + 16) = result;
  return result;
}

void sub_245437CB8(uint64_t a1, void *lpsrc)
{
  if (!__dynamic_cast(lpsrc, MEMORY[0x277D82C38], &unk_28585A338, 0))
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  sub_24542D4A4(a1, lpsrc);
}

void sub_245437D74(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v9);
  }

  LOBYTE(v4) = *(a2 + 20);
  if (v4)
  {
    if (*(a2 + 20))
    {
      v6 = *(a2 + 12);
      *(a1 + 20) |= 1u;
      *(a1 + 12) = v6;
      v4 = *(a2 + 20);
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

    else if ((*(a2 + 20) & 2) == 0)
    {
      goto LABEL_6;
    }

    v7 = *(a2 + 8);
    *(a1 + 20) |= 2u;
    *(a1 + 8) = v7;
    v4 = *(a2 + 20);
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
    v8 = *(a2 + 13);
    *(a1 + 20) |= 4u;
    *(a1 + 13) = v8;
    if ((*(a2 + 20) & 8) == 0)
    {
      return;
    }

LABEL_8:
    v5 = *(a2 + 14);
    *(a1 + 20) |= 8u;
    *(a1 + 14) = v5;
  }
}

void sub_245437E68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_245437E80(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = &unk_285859A78;
  sub_24539DA30();

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);
}

void sub_245437EDC(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  sub_245437E80(a1);

  JUMPOUT(0x245D6A0D0);
}

uint64_t sub_245437F68(uint64_t result)
{
  if (*(result + 20))
  {
    *(result + 11) = 0;
    *(result + 8) = 0;
  }

  *(result + 20) = 0;
  return result;
}

uint64_t sub_245437F80(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormatLite *this, unsigned int a3)
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

      *(a1 + 12) = v12 != 0;
      *(a1 + 20) |= 1u;
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

        *(a1 + 8) = v15;
        *(a1 + 20) |= 2u;
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

          *(a1 + 13) = v17 != 0;
          *(a1 + 20) |= 4u;
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

            *(a1 + 14) = v19 != 0;
            *(a1 + 20) |= 8u;
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

uint64_t sub_245438224(uint64_t result, uint64_t a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = result;
  v6 = *(result + 20);
  if (v6)
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(1, *(result + 12), a2, a4);
    v6 = *(v5 + 20);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

LABEL_8:
      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(3, *(v5 + 13), a2, a4);
      if ((*(v5 + 20) & 8) == 0)
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

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(2, *(v5 + 8), a2, a4);
  v6 = *(v5 + 20);
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
  v7 = *(v5 + 14);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(4, v7, a2, a4);
}

uint64_t sub_2454382CC(unsigned int *a1, unsigned int a2)
{
  v3 = a1[5];
  if (v3)
  {
    v4 = 2 * (v3 & 1);
    if ((v3 & 2) != 0)
    {
      v5 = a1[2];
      if ((v5 & 0x80000000) != 0)
      {
        v6 = 11;
      }

      else if (v5 >= 0x80)
      {
        v6 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5) + 1;
        v3 = a1[5];
      }

      else
      {
        v6 = 2;
      }

      v4 += v6;
    }

    result = ((v3 >> 1) & 2) + v4 + ((v3 >> 2) & 2);
  }

  else
  {
    result = 0;
  }

  a1[4] = result;
  return result;
}

void sub_245438354(uint64_t a1, void *lpsrc)
{
  if (!__dynamic_cast(lpsrc, MEMORY[0x277D82C38], &unk_28585A350, 0))
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  sub_245437D74(a1, lpsrc);
}

void sub_245438410(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v11);
  }

  LOBYTE(v4) = *(a2 + 32);
  if (v4)
  {
    v5 = MEMORY[0x277D82C30];
    if (*(a2 + 32))
    {
      v6 = *(a2 + 8);
      *(a1 + 32) |= 1u;
      v7 = *(a1 + 8);
      if (v7 == v5)
      {
        operator new();
      }

      std::string::operator=(v7, v6);
      v4 = *(a2 + 32);
      if ((v4 & 2) == 0)
      {
LABEL_6:
        if ((v4 & 4) == 0)
        {
          return;
        }

        goto LABEL_12;
      }
    }

    else if ((*(a2 + 32) & 2) == 0)
    {
      goto LABEL_6;
    }

    v8 = *(a2 + 24);
    *(a1 + 32) |= 2u;
    *(a1 + 24) = v8;
    if ((*(a2 + 32) & 4) == 0)
    {
      return;
    }

LABEL_12:
    v9 = *(a2 + 16);
    *(a1 + 32) |= 4u;
    v10 = *(a1 + 16);
    if (v10 == v5)
    {
      operator new();
    }

    std::string::operator=(v10, v9);
  }
}

void sub_24543855C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_245438574(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = &unk_285859AF0;
  v2 = *(a1 + 1);
  v3 = MEMORY[0x277D82C30];
  if (v2 != MEMORY[0x277D82C30] && v2 != 0)
  {
    if (*(v2 + 23) < 0)
    {
      operator delete(*v2);
    }

    MEMORY[0x245D6A0D0](v2, 0x1012C40EC159624);
  }

  v5 = *(a1 + 2);
  if (v5 != v3 && v5 != 0)
  {
    if (*(v5 + 23) < 0)
    {
      operator delete(*v5);
    }

    MEMORY[0x245D6A0D0](v5, 0x1012C40EC159624);
  }

  sub_24539DA30();

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);
}

void sub_245438648(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  sub_245438574(a1);

  JUMPOUT(0x245D6A0D0);
}

uint64_t sub_2454386D8(uint64_t result)
{
  if (*(result + 32))
  {
    v1 = MEMORY[0x277D82C30];
    if (*(result + 32))
    {
      v2 = *(result + 8);
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

    *(result + 24) = 0;
    if ((*(result + 32) & 4) != 0)
    {
      v3 = *(result + 16);
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
  }

  *(result + 32) = 0;
  return result;
}

uint64_t sub_245438758(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormatLite *this, unsigned int a3)
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
          v6 = *(this + 1);
          if (v6 >= *(this + 2) || (TagFallback = *v6, (TagFallback & 0x80000000) != 0))
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
            *(this + 1) = v6 + 1;
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
            goto LABEL_23;
          }

          v16 = *(a1 + 32);
LABEL_32:
          *(a1 + 32) = v16 | 4;
          if (*(a1 + 16) == v5)
          {
            operator new();
          }

          result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
          if (!result)
          {
            return result;
          }

          if (*(this + 1) == *(this + 2) && (*(this + 11) || *(this + 6) == *(this + 10)))
          {
            *(this + 8) = 0;
            result = 1;
            *(this + 36) = 1;
            return result;
          }
        }

        if (v8 != 2)
        {
          break;
        }

        if ((TagFallback & 7) != 0)
        {
          goto LABEL_23;
        }

        v13 = *(this + 1);
        v11 = *(this + 2);
LABEL_19:
        v17 = 0;
        if (v13 >= v11 || (v14 = *v13, (v14 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v17);
          if (!result)
          {
            return result;
          }

          v14 = v17;
          v15 = *(this + 1);
          v11 = *(this + 2);
        }

        else
        {
          v15 = v13 + 1;
          *(this + 1) = v15;
        }

        *(a1 + 24) = v14;
        v16 = *(a1 + 32) | 2;
        *(a1 + 32) = v16;
        if (v15 < v11 && *v15 == 26)
        {
          *(this + 1) = v15 + 1;
          goto LABEL_32;
        }
      }

      if (v8 != 1 || v9 != 2)
      {
        break;
      }

      *(a1 + 32) |= 1u;
      if (*(a1 + 8) == v5)
      {
        operator new();
      }

      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
      if (!result)
      {
        return result;
      }

      v12 = *(this + 1);
      v11 = *(this + 2);
      if (v12 < v11 && *v12 == 16)
      {
        v13 = v12 + 1;
        *(this + 1) = v13;
        goto LABEL_19;
      }
    }

LABEL_23:
    if (v9 == 4)
    {
      return 1;
    }

    if ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(this, TagFallback) & 1) == 0)
    {
      return 0;
    }
  }
}

uint64_t sub_24543897C(uint64_t result, uint64_t a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = result;
  v6 = *(result + 32);
  if ((v6 & 1) == 0)
  {
    if ((v6 & 2) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(2, *(v5 + 24), a2, a4);
    if ((*(v5 + 32) & 4) == 0)
    {
      return result;
    }

    goto LABEL_7;
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
  v6 = *(v5 + 32);
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

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
}

uint64_t sub_245438A08(uint64_t a1, unsigned int a2)
{
  LOBYTE(v3) = *(a1 + 32);
  if (!v3)
  {
    v4 = 0;
    goto LABEL_31;
  }

  if (*(a1 + 32))
  {
    v5 = *(a1 + 8);
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
      v3 = *(a1 + 32);
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
    if ((v3 & 2) == 0)
    {
      goto LABEL_21;
    }
  }

  else
  {
    v4 = 0;
    if ((*(a1 + 32) & 2) == 0)
    {
      goto LABEL_21;
    }
  }

  v12 = *(a1 + 24);
  if ((v12 & 0x80000000) != 0)
  {
    v13 = 11;
  }

  else if (v12 >= 0x80)
  {
    v13 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v12) + 1;
    v3 = *(a1 + 32);
  }

  else
  {
    v13 = 2;
  }

  v4 = (v13 + v4);
LABEL_21:
  if ((v3 & 4) != 0)
  {
    v14 = *(a1 + 16);
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
  }

LABEL_31:
  *(a1 + 28) = v4;
  return v4;
}

void sub_245438B30(uint64_t a1, void *lpsrc)
{
  if (!__dynamic_cast(lpsrc, MEMORY[0x277D82C38], &unk_28585A368, 0))
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  sub_245438410(a1, lpsrc);
}

void sub_245438BEC(uint64_t a1)
{
  *a1 = &unk_285859B68;
  sub_24539DA30();
  if (qword_2813CECB8 != a1)
  {
    v2 = *(a1 + 32);
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }
  }

  v3 = *(a1 + 20);
  if (v3 >= 1)
  {
    for (i = 0; i < v3; ++i)
    {
      v5 = *(*(a1 + 8) + 8 * i);
      if (v5)
      {
        (*(*v5 + 8))(v5);
        v3 = *(a1 + 20);
      }
    }
  }

  v6 = *(a1 + 8);
  if (v6)
  {
    MEMORY[0x245D6A0A0](v6, 0x80C80B8603338);
  }

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);
}

void sub_245438CF0(uint64_t a1)
{
  sub_245438BEC(a1);

  JUMPOUT(0x245D6A0D0);
}

uint64_t sub_245438D7C(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormatLite *this, unsigned int a3)
{
  while (1)
  {
    while (1)
    {
LABEL_1:
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

      if (v7 != 2)
      {
        goto LABEL_30;
      }

LABEL_33:
      *(a1 + 44) |= 2u;
      v21 = *(a1 + 32);
      if (!v21)
      {
        operator new();
      }

      v30 = 0;
      v22 = *(this + 1);
      if (v22 >= *(this + 2) || *v22 < 0)
      {
        if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v30))
        {
          return 0;
        }
      }

      else
      {
        v30 = *v22;
        *(this + 1) = v22 + 1;
      }

      v23 = *(this + 14);
      v24 = *(this + 15);
      *(this + 14) = v23 + 1;
      if (v23 >= v24)
      {
        return 0;
      }

      wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this);
      if (!sub_245437F80(v21, this, v25) || *(this + 36) != 1)
      {
        return 0;
      }

      wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this);
      v26 = *(this + 14);
      v17 = __OFSUB__(v26, 1);
      v27 = v26 - 1;
      if (v27 < 0 == v17)
      {
        *(this + 14) = v27;
      }

      if (*(this + 1) == *(this + 2) && (*(this + 11) || *(this + 6) == *(this + 10)))
      {
        *(this + 8) = 0;
        result = 1;
        *(this + 36) = 1;
        return result;
      }
    }

    if (TagFallback >> 3 == 1 && v7 == 2)
    {
      while (1)
      {
        v8 = *(a1 + 20);
        v9 = *(a1 + 16);
        if (v9 >= v8)
        {
          if (v8 == *(a1 + 24))
          {
            wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 8));
            v8 = *(a1 + 20);
          }

          *(a1 + 20) = v8 + 1;
          operator new();
        }

        v10 = *(a1 + 8);
        *(a1 + 16) = v9 + 1;
        v11 = *(v10 + 8 * v9);
        v29 = 0;
        v12 = *(this + 1);
        if (v12 >= *(this + 2) || *v12 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v29))
          {
            return 0;
          }
        }

        else
        {
          v29 = *v12;
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
        if (!sub_245438758(v11, this, v15) || *(this + 36) != 1)
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
        if (v19 >= *(this + 2))
        {
          goto LABEL_1;
        }

        v20 = *v19;
        if (v20 != 10)
        {
          if (v20 != 18)
          {
            goto LABEL_1;
          }

          *(this + 1) = v19 + 1;
          goto LABEL_33;
        }

        *(this + 1) = v19 + 1;
      }
    }

LABEL_30:
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

uint64_t sub_2454390E4(uint64_t result, wireless_diagnostics::google::protobuf::MessageLite *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = result;
  if (*(result + 16) >= 1)
  {
    v6 = 0;
    do
    {
      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(1, *(*(v5 + 8) + 8 * v6++), a2, a4);
    }

    while (v6 < *(v5 + 16));
  }

  if ((*(v5 + 44) & 2) != 0)
  {
    v7 = *(v5 + 32);
    if (!v7)
    {
      sub_24539DA30();
      v7 = *(qword_2813CECB8 + 32);
    }

    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(2, v7, a2, a4);
  }

  return result;
}

uint64_t sub_24543918C(uint64_t a1, unsigned int a2)
{
  if ((*(a1 + 44) & 2) != 0)
  {
    v4 = *(a1 + 32);
    if (!v4)
    {
      sub_24539DA30();
      v4 = *(qword_2813CECB8 + 32);
    }

    v5 = sub_2454382CC(v4, a2);
    v6 = v5;
    if (v5 >= 0x80)
    {
      v7 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5);
    }

    else
    {
      v7 = 1;
    }

    v3 = v6 + v7 + 1;
  }

  else
  {
    v3 = 0;
  }

  v8 = *(a1 + 16);
  v9 = (v8 + v3);
  if (v8 >= 1)
  {
    v10 = 0;
    do
    {
      v11 = sub_245438A08(*(*(a1 + 8) + 8 * v10), a2);
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

    while (v10 < *(a1 + 16));
  }

  *(a1 + 40) = v9;
  return v9;
}

void sub_245439260(uint64_t a1, void *lpsrc)
{
  if (!__dynamic_cast(lpsrc, MEMORY[0x277D82C38], &unk_28585A380, 0))
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  sub_245430260(a1, lpsrc);
}

void sub_24543931C(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = &unk_285859BE0;
  sub_24539DA30();

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);
}

void sub_245439378(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  sub_24543931C(a1);

  JUMPOUT(0x245D6A0D0);
}

uint64_t sub_2454393FC(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormatLite *this, unsigned int a3)
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
      }

      else
      {
        *(this + 8) = TagFallback;
        *(this + 1) = v5 + 1;
      }

      if (TagFallback != 8)
      {
        break;
      }

      v10 = 0;
      v7 = *(this + 1);
      if (v7 >= *(this + 2) || (v8 = *v7, (v8 & 0x80000000) != 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v10);
        if (!result)
        {
          return result;
        }

        v8 = v10;
      }

      else
      {
        *(this + 1) = v7 + 1;
      }

      if (v8 <= 4)
      {
        *(a1 + 16) |= 1u;
        *(a1 + 8) = v8;
      }

      if (*(this + 1) == *(this + 2) && (*(this + 11) || *(this + 6) == *(this + 10)))
      {
        *(this + 8) = 0;
        result = 1;
        *(this + 36) = 1;
        return result;
      }
    }

    if (!TagFallback || (TagFallback & 7) == 4)
    {
      break;
    }

    if ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(this, TagFallback) & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_245439514(uint64_t result, uint64_t a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  if (*(result + 16))
  {
    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(1, *(result + 8), a2, a4);
  }

  return result;
}

uint64_t sub_245439530(uint64_t a1, unsigned int a2)
{
  if (*(a1 + 16))
  {
    v4 = *(a1 + 8);
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

  *(a1 + 12) = result;
  return result;
}

void sub_24543958C(uint64_t a1, void *lpsrc)
{
  if (!__dynamic_cast(lpsrc, MEMORY[0x277D82C38], &unk_28585A398, 0))
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  sub_2454304C0(a1, lpsrc);
}

void sub_245439648(_DWORD *a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v9);
  }

  v4 = *(a2 + 24);
  if (v4)
  {
    sub_2453B0370(a1 + 4, a1[6] + v4);
    memcpy((*(a1 + 2) + 4 * a1[6]), *(a2 + 16), 4 * *(a2 + 24));
    a1[6] += *(a2 + 24);
  }

  v5 = *(a2 + 40);
  if (v5)
  {
    sub_2453B0370(a1 + 8, a1[10] + v5);
    memcpy((*(a1 + 4) + 4 * a1[10]), *(a2 + 32), 4 * *(a2 + 40));
    a1[10] += *(a2 + 40);
  }

  LOBYTE(v6) = *(a2 + 52);
  if (v6)
  {
    if (*(a2 + 52))
    {
      v7 = *(a2 + 8);
      a1[13] |= 1u;
      a1[2] = v7;
      v6 = *(a2 + 52);
    }

    if ((v6 & 2) != 0)
    {
      v8 = *(a2 + 12);
      a1[13] |= 2u;
      a1[3] = v8;
    }
  }
}

void sub_24543977C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_245439794(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = &unk_285859C58;
  sub_24539DA30();
  v2 = *(a1 + 4);
  if (v2)
  {
    MEMORY[0x245D6A0A0](v2, 0x1000C8052888210);
  }

  v3 = *(a1 + 2);
  if (v3)
  {
    MEMORY[0x245D6A0A0](v3, 0x1000C8052888210);
  }

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);
}

void sub_245439820(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  sub_245439794(a1);

  JUMPOUT(0x245D6A0D0);
}

uint64_t sub_2454398B0(uint64_t result)
{
  if (*(result + 52))
  {
    *(result + 8) = 0;
  }

  *(result + 24) = 0;
  *(result + 40) = 0;
  *(result + 52) = 0;
  return result;
}

uint64_t sub_2454398CC(unsigned int *a1, wireless_diagnostics::google::protobuf::io::CodedInputStream *this, unsigned int a3)
{
  while (1)
  {
    while (1)
    {
      while (1)
      {
LABEL_1:
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

        if (v7 != 3)
        {
          if (v7 == 4)
          {
            if ((TagFallback & 7) == 0)
            {
              v15 = *(this + 1);
              v9 = *(this + 2);
              goto LABEL_66;
            }

            if (v8 == 2)
            {
              result = sub_2453DD50C(this, a1 + 8);
              if (!result)
              {
                return result;
              }

              goto LABEL_83;
            }
          }

          goto LABEL_23;
        }

        if ((TagFallback & 7) != 0)
        {
          if (v8 == 2)
          {
            result = sub_245439DA0(this, a1 + 4);
            if (!result)
            {
              return result;
            }

            goto LABEL_63;
          }

          goto LABEL_23;
        }

        v16 = *(this + 1);
        v9 = *(this + 2);
        while (1)
        {
          v41[0] = 0;
          if (v16 >= v9 || (v20 = *v16, (v20 & 0x80000000) != 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v41);
            if (!result)
            {
              return result;
            }

            v20 = v41[0];
          }

          else
          {
            *(this + 1) = v16 + 1;
          }

          v21 = a1[6];
          if (v21 == a1[7])
          {
            sub_2453B0370(a1 + 4, v21 + 1);
            v21 = a1[6];
          }

          v22 = *(a1 + 2);
          a1[6] = v21 + 1;
          *(v22 + 4 * v21) = v20;
          v23 = a1[7] - a1[6];
          if (v23 >= 1)
          {
            v24 = v23 + 1;
            do
            {
              v25 = *(this + 1);
              v26 = *(this + 2);
              if (v25 >= v26 || *v25 != 24)
              {
                break;
              }

              *(this + 1) = v25 + 1;
              v41[0] = 0;
              if ((v25 + 1) >= v26 || (v27 = v25[1], (v27 & 0x80000000) != 0))
              {
                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v41);
                if (!result)
                {
                  return result;
                }

                v27 = v41[0];
              }

              else
              {
                *(this + 1) = v25 + 2;
              }

              v28 = a1[6];
              if (v28 >= a1[7])
              {
                wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v41);
                v28 = a1[6];
              }

              v29 = *(a1 + 2);
              a1[6] = v28 + 1;
              *(v29 + 4 * v28) = v27;
              --v24;
            }

            while (v24 > 1);
          }

LABEL_63:
          v18 = *(this + 1);
          v9 = *(this + 2);
          if (v18 >= v9)
          {
            break;
          }

          v19 = *v18;
          if (v19 == 32)
          {
            do
            {
              v15 = v18 + 1;
              *(this + 1) = v15;
LABEL_66:
              v40 = 0;
              if (v15 >= v9 || *v15 < 0)
              {
                if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v40))
                {
                  return 0;
                }
              }

              else
              {
                v40 = *v15;
                *(this + 1) = v15 + 1;
              }

              v30 = a1[10];
              if (v30 == a1[11])
              {
                sub_2453B0370(a1 + 8, v30 + 1);
                v30 = a1[10];
              }

              v31 = v40;
              v32 = *(a1 + 4);
              a1[10] = v30 + 1;
              *(v32 + 4 * v30) = v31;
              v33 = a1[11] - a1[10];
              if (v33 >= 1)
              {
                v34 = v33 + 1;
                do
                {
                  v35 = *(this + 1);
                  v36 = *(this + 2);
                  if (v35 >= v36 || *v35 != 32)
                  {
                    break;
                  }

                  *(this + 1) = v35 + 1;
                  if ((v35 + 1) >= v36 || v35[1] < 0)
                  {
                    if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v40))
                    {
                      return 0;
                    }
                  }

                  else
                  {
                    v40 = v35[1];
                    *(this + 1) = v35 + 2;
                  }

                  v37 = a1[10];
                  if (v37 >= a1[11])
                  {
                    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v41);
                    v37 = a1[10];
                  }

                  v38 = v40;
                  v39 = *(a1 + 4);
                  a1[10] = v37 + 1;
                  *(v39 + 4 * v37) = v38;
                  --v34;
                }

                while (v34 > 1);
              }

LABEL_83:
              v18 = *(this + 1);
              v9 = *(this + 2);
            }

            while (v18 < v9 && *v18 == 32);
            if (v18 == v9 && (*(this + 11) || *(this + 6) == *(this + 10)))
            {
              *(this + 8) = 0;
              result = 1;
              *(this + 36) = 1;
              return result;
            }

            goto LABEL_1;
          }

LABEL_42:
          if (v19 != 24)
          {
            goto LABEL_1;
          }

          v16 = v18 + 1;
          *(this + 1) = v16;
        }
      }

      if (v7 != 1)
      {
        break;
      }

      if ((TagFallback & 7) != 0)
      {
        goto LABEL_23;
      }

      v12 = *(this + 1);
      v9 = *(this + 2);
      if (v12 >= v9 || (v13 = *v12, (v13 & 0x80000000) != 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, a1 + 2);
        if (!result)
        {
          return result;
        }

        v14 = *(this + 1);
        v9 = *(this + 2);
      }

      else
      {
        a1[2] = v13;
        v14 = v12 + 1;
        *(this + 1) = v14;
      }

      a1[13] |= 1u;
      if (v14 < v9 && *v14 == 16)
      {
        v10 = v14 + 1;
        *(this + 1) = v10;
LABEL_35:
        if (v10 >= v9 || (v17 = *v10, (v17 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, a1 + 3);
          if (!result)
          {
            return result;
          }

          v18 = *(this + 1);
          v9 = *(this + 2);
        }

        else
        {
          a1[3] = v17;
          v18 = v10 + 1;
          *(this + 1) = v18;
        }

        a1[13] |= 2u;
        if (v18 < v9)
        {
          v19 = *v18;
          goto LABEL_42;
        }
      }
    }

    if (v7 == 2 && (TagFallback & 7) == 0)
    {
      v10 = *(this + 1);
      v9 = *(this + 2);
      goto LABEL_35;
    }

LABEL_23:
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

void sub_245439D80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_245439DA0(wireless_diagnostics::google::protobuf::io::CodedInputStream *this, _DWORD *a2)
{
  v10 = 0;
  v4 = *(this + 1);
  if (v4 >= *(this + 2) || *v4 < 0)
  {
    result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v10);
    if (!result)
    {
      return result;
    }
  }

  else
  {
    v10 = *v4;
    *(this + 1) = v4 + 1;
  }

  wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this);
  if (wireless_diagnostics::google::protobuf::io::CodedInputStream::BytesUntilLimit(this) >= 1)
  {
    do
    {
      v11 = 0;
      v6 = *(this + 1);
      if (v6 >= *(this + 2) || (v7 = *v6, (v7 & 0x80000000) != 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v11);
        if (!result)
        {
          return result;
        }

        v7 = v11;
      }

      else
      {
        *(this + 1) = v6 + 1;
      }

      v8 = a2[2];
      if (v8 == a2[3])
      {
        sub_2453B0370(a2, v8 + 1);
        v8 = a2[2];
      }

      v9 = *a2;
      a2[2] = v8 + 1;
      *(v9 + 4 * v8) = v7;
    }

    while (wireless_diagnostics::google::protobuf::io::CodedInputStream::BytesUntilLimit(this) > 0);
  }

  wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this);
  return 1;
}

uint64_t sub_245439EB0(uint64_t result, uint64_t a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = result;
  v6 = *(result + 52);
  if (v6)
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(1, *(result + 8), a2, a4);
    v6 = *(v5 + 52);
  }

  if ((v6 & 2) != 0)
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(2, *(v5 + 12), a2, a4);
  }

  if (*(v5 + 24) >= 1)
  {
    v7 = 0;
    do
    {
      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(3, *(*(v5 + 16) + 4 * v7++), a2, a4);
    }

    while (v7 < *(v5 + 24));
  }

  if (*(v5 + 40) >= 1)
  {
    v8 = 0;
    do
    {
      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(4, *(*(v5 + 32) + 4 * v8++), a2, a4);
    }

    while (v8 < *(v5 + 40));
  }

  return result;
}

uint64_t sub_245439F74(uint64_t a1, unsigned int a2)
{
  v3 = *(a1 + 52);
  if (!v3)
  {
    v4 = 0;
    goto LABEL_14;
  }

  if (*(a1 + 52))
  {
    v5 = *(a1 + 8);
    if (v5 >= 0x80)
    {
      v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5) + 1;
      if ((*(a1 + 52) & 2) == 0)
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
    if ((*(a1 + 52) & 2) == 0)
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

  v4 += v7;
LABEL_14:
  v8 = *(a1 + 24);
  if (v8 < 1)
  {
    v10 = 0;
  }

  else
  {
    v9 = 0;
    v10 = 0;
    do
    {
      v11 = *(*(a1 + 16) + 4 * v9);
      if ((v11 & 0x80000000) != 0)
      {
        v12 = 10;
      }

      else if (v11 >= 0x80)
      {
        v12 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v11);
        v8 = *(a1 + 24);
      }

      else
      {
        v12 = 1;
      }

      v10 += v12;
      ++v9;
    }

    while (v9 < v8);
  }

  v13 = *(a1 + 40);
  if (v13 < 1)
  {
    v15 = 0;
  }

  else
  {
    v14 = 0;
    v15 = 0;
    do
    {
      v16 = *(*(a1 + 32) + 4 * v14);
      if (v16 >= 0x80)
      {
        v17 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v16);
        v13 = *(a1 + 40);
      }

      else
      {
        v17 = 1;
      }

      v15 += v17;
      ++v14;
    }

    while (v14 < v13);
  }

  result = (v10 + v4 + v8 + v15 + v13);
  *(a1 + 48) = result;
  return result;
}

void sub_24543A0C4(_DWORD *a1, void *lpsrc)
{
  if (!__dynamic_cast(lpsrc, MEMORY[0x277D82C38], &unk_28585A3B0, 0))
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  sub_245439648(a1, lpsrc);
}

void sub_24543A180(_DWORD *a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v8);
  }

  v4 = *(a2 + 16);
  if (v4)
  {
    sub_2453B0370(a1 + 2, a1[4] + v4);
    memcpy((*(a1 + 1) + 4 * a1[4]), *(a2 + 8), 4 * *(a2 + 16));
    a1[4] += *(a2 + 16);
  }

  v5 = *(a2 + 36);
  if ((v5 & 0x1FE) != 0)
  {
    if ((v5 & 2) != 0)
    {
      v6 = *(a2 + 24);
      a1[9] |= 2u;
      a1[6] = v6;
      v5 = *(a2 + 36);
    }

    if ((v5 & 4) != 0)
    {
      v7 = *(a2 + 28);
      a1[9] |= 4u;
      a1[7] = v7;
    }
  }
}

void sub_24543A274(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_24543A28C(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = &unk_285859CD0;
  sub_24539DA30();
  v2 = *(a1 + 1);
  if (v2)
  {
    MEMORY[0x245D6A0A0](v2, 0x1000C8052888210);
  }

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);
}

void sub_24543A304(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  sub_24543A28C(a1);

  JUMPOUT(0x245D6A0D0);
}

uint64_t sub_24543A390(uint64_t result)
{
  if ((*(result + 36) & 0x1FE) != 0)
  {
    *(result + 24) = 0;
  }

  *(result + 16) = 0;
  *(result + 36) = 0;
  return result;
}

uint64_t sub_24543A3AC(_DWORD *a1, wireless_diagnostics::google::protobuf::io::CodedInputStream *this, unsigned int a3)
{
  while (1)
  {
    while (1)
    {
      while (1)
      {
LABEL_1:
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
        if (TagFallback >> 3 != 3)
        {
          break;
        }

        if ((TagFallback & 7) == 0)
        {
          v12 = *(this + 1);
          v10 = *(this + 2);
          goto LABEL_53;
        }

LABEL_16:
        if (v8 == 4)
        {
          return 1;
        }

        if ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(this, TagFallback) & 1) == 0)
        {
          return 0;
        }
      }

      if (v7 != 2)
      {
        break;
      }

      if ((TagFallback & 7) != 0)
      {
        goto LABEL_16;
      }

      v11 = *(this + 1);
      v10 = *(this + 2);
LABEL_45:
      if (v11 >= v10 || (v26 = *v11, v26 < 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, a1 + 6);
        if (!result)
        {
          return result;
        }

        v27 = *(this + 1);
        v10 = *(this + 2);
      }

      else
      {
        a1[6] = v26;
        v27 = v11 + 1;
        *(this + 1) = v27;
      }

      a1[9] |= 2u;
      if (v27 < v10 && *v27 == 24)
      {
        v12 = v27 + 1;
        *(this + 1) = v12;
LABEL_53:
        if (v12 >= v10 || (v28 = *v12, v28 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, a1 + 7);
          if (!result)
          {
            return result;
          }

          v29 = *(this + 1);
          v10 = *(this + 2);
        }

        else
        {
          a1[7] = v28;
          v29 = v12 + 1;
          *(this + 1) = v29;
        }

        a1[9] |= 4u;
        if (v29 == v10 && (*(this + 11) || *(this + 6) == *(this + 10)))
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
      goto LABEL_16;
    }

    if ((TagFallback & 7) != 0)
    {
      break;
    }

    v13 = *(this + 1);
    v10 = *(this + 2);
    while (1)
    {
      v30[0] = 0;
      if (v13 >= v10 || (v14 = *v13, (v14 & 0x80000000) != 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v30);
        if (!result)
        {
          return result;
        }

        v14 = v30[0];
      }

      else
      {
        *(this + 1) = v13 + 1;
      }

      v15 = a1[4];
      if (v15 == a1[5])
      {
        sub_2453B0370(a1 + 2, v15 + 1);
        v15 = a1[4];
      }

      v16 = *(a1 + 1);
      a1[4] = v15 + 1;
      *(v16 + 4 * v15) = v14;
      v17 = a1[5] - a1[4];
      if (v17 >= 1)
      {
        v18 = v17 + 1;
        do
        {
          v19 = *(this + 1);
          v20 = *(this + 2);
          if (v19 >= v20 || *v19 != 8)
          {
            break;
          }

          *(this + 1) = v19 + 1;
          v30[0] = 0;
          if ((v19 + 1) >= v20 || (v21 = v19[1], (v21 & 0x80000000) != 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v30);
            if (!result)
            {
              return result;
            }

            v21 = v30[0];
          }

          else
          {
            *(this + 1) = v19 + 2;
          }

          v22 = a1[4];
          if (v22 >= a1[5])
          {
            wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
            wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
            wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
            wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v30);
            v22 = a1[4];
          }

          v23 = *(a1 + 1);
          a1[4] = v22 + 1;
          *(v23 + 4 * v22) = v21;
          --v18;
        }

        while (v18 > 1);
      }

LABEL_40:
      v24 = *(this + 1);
      v10 = *(this + 2);
      if (v24 >= v10)
      {
        break;
      }

      v25 = *v24;
      if (v25 == 16)
      {
        v11 = (v24 + 1);
        *(this + 1) = v11;
        goto LABEL_45;
      }

      if (v25 != 8)
      {
        goto LABEL_1;
      }

      v13 = (v24 + 1);
      *(this + 1) = v13;
    }
  }

  if (v8 != 2)
  {
    goto LABEL_16;
  }

  result = sub_245439DA0(this, a1 + 2);
  if (result)
  {
    goto LABEL_40;
  }

  return result;
}

void sub_24543A6DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_24543A6F4(uint64_t result, uint64_t a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = result;
  if (*(result + 16) >= 1)
  {
    v6 = 0;
    do
    {
      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(1, *(*(v5 + 8) + 4 * v6++), a2, a4);
    }

    while (v6 < *(v5 + 16));
  }

  v7 = *(v5 + 36);
  if ((v7 & 2) != 0)
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(2, *(v5 + 24), a2, a4);
    v7 = *(v5 + 36);
  }

  if ((v7 & 4) != 0)
  {
    v8 = *(v5 + 28);

    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(3, v8, a2, a4);
  }

  return result;
}

uint64_t sub_24543A7A0(uint64_t a1, unsigned int a2)
{
  v3 = *(a1 + 36);
  if ((v3 & 0x1FE) == 0)
  {
    v4 = 0;
    goto LABEL_14;
  }

  if ((v3 & 2) != 0)
  {
    v5 = *(a1 + 24);
    if (v5 >= 0x80)
    {
      v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5) + 1;
      if ((*(a1 + 36) & 4) == 0)
      {
        goto LABEL_14;
      }
    }

    else
    {
      v4 = 2;
      if ((v3 & 4) == 0)
      {
        goto LABEL_14;
      }
    }
  }

  else
  {
    v4 = 0;
    if ((v3 & 4) == 0)
    {
      goto LABEL_14;
    }
  }

  v6 = *(a1 + 28);
  if (v6 >= 0x80)
  {
    v7 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v6) + 1;
  }

  else
  {
    v7 = 2;
  }

  v4 += v7;
LABEL_14:
  v8 = *(a1 + 16);
  if (v8 < 1)
  {
    v10 = 0;
  }

  else
  {
    v9 = 0;
    v10 = 0;
    do
    {
      v11 = *(*(a1 + 8) + 4 * v9);
      if ((v11 & 0x80000000) != 0)
      {
        v12 = 10;
      }

      else if (v11 >= 0x80)
      {
        v12 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v11);
        v8 = *(a1 + 16);
      }

      else
      {
        v12 = 1;
      }

      v10 += v12;
      ++v9;
    }

    while (v9 < v8);
  }

  result = (v10 + v4 + v8);
  *(a1 + 32) = result;
  return result;
}

void sub_24543A898(_DWORD *a1, void *lpsrc)
{
  if (!__dynamic_cast(lpsrc, MEMORY[0x277D82C38], &unk_28585A3C8, 0))
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  sub_24543A180(a1, lpsrc);
}

void sub_24543A954(_DWORD *a1, uint64_t a2)
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

void sub_24543AA00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_24543AA18(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = &unk_285859D48;
  sub_24539DA30();

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);
}

void sub_24543AA74(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  sub_24543AA18(a1);

  JUMPOUT(0x245D6A0D0);
}

uint64_t sub_24543AAF8(uint64_t result)
{
  if (*(result + 20))
  {
    *(result + 8) = 0;
  }

  *(result + 20) = 0;
  return result;
}

uint64_t sub_24543AB0C(_DWORD *a1, wireless_diagnostics::google::protobuf::internal::WireFormatLite *this, unsigned int a3)
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

      v15 = 0;
      v8 = *(this + 1);
      v7 = *(this + 2);
      if (v8 >= v7 || (v9 = *v8, (v9 & 0x80000000) != 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v15);
        if (!result)
        {
          return result;
        }

        v9 = v15;
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
        if (v11 >= v7 || (v12 = *v11, v12 < 0))
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

uint64_t sub_24543AC98(uint64_t result, uint64_t a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
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

    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(2, v7, a2, a4);
  }

  return result;
}

uint64_t sub_24543AD04(uint64_t a1, unsigned int a2)
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
          goto LABEL_17;
        }
      }

      else if (v5 >= 0x80)
      {
        v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5) + 1;
        if ((*(a1 + 20) & 2) == 0)
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
      if ((*(a1 + 20) & 2) == 0)
      {
        goto LABEL_17;
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

LABEL_17:
  *(a1 + 16) = v4;
  return v4;
}

void sub_24543ADA4(_DWORD *a1, void *lpsrc)
{
  if (!__dynamic_cast(lpsrc, MEMORY[0x277D82C38], &unk_28585A3E0, 0))
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  sub_24543A954(a1, lpsrc);
}

void sub_24543AE60(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v16);
  }

  v4 = *(a2 + 56);
  if (!v4)
  {
    goto LABEL_13;
  }

  if (v4)
  {
    v7 = *(a2 + 8);
    *(a1 + 56) |= 1u;
    *(a1 + 8) = v7;
    v4 = *(a2 + 56);
    if ((v4 & 2) == 0)
    {
LABEL_6:
      if ((v4 & 4) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_21;
    }
  }

  else if ((v4 & 2) == 0)
  {
    goto LABEL_6;
  }

  v8 = *(a2 + 12);
  *(a1 + 56) |= 2u;
  *(a1 + 12) = v8;
  v4 = *(a2 + 56);
  if ((v4 & 4) == 0)
  {
LABEL_7:
    if ((v4 & 8) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_22;
  }

LABEL_21:
  v9 = *(a2 + 16);
  *(a1 + 56) |= 4u;
  *(a1 + 16) = v9;
  v4 = *(a2 + 56);
  if ((v4 & 8) == 0)
  {
LABEL_8:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_23;
  }

LABEL_22:
  v10 = *(a2 + 20);
  *(a1 + 56) |= 8u;
  *(a1 + 20) = v10;
  v4 = *(a2 + 56);
  if ((v4 & 0x10) == 0)
  {
LABEL_9:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_10;
    }

LABEL_24:
    v12 = *(a2 + 28);
    *(a1 + 56) |= 0x20u;
    *(a1 + 28) = v12;
    v4 = *(a2 + 56);
    if ((v4 & 0x40) == 0)
    {
LABEL_11:
      if ((v4 & 0x80) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_12;
    }

    goto LABEL_25;
  }

LABEL_23:
  v11 = *(a2 + 24);
  *(a1 + 56) |= 0x10u;
  *(a1 + 24) = v11;
  v4 = *(a2 + 56);
  if ((v4 & 0x20) != 0)
  {
    goto LABEL_24;
  }

LABEL_10:
  if ((v4 & 0x40) == 0)
  {
    goto LABEL_11;
  }

LABEL_25:
  v13 = *(a2 + 32);
  *(a1 + 56) |= 0x40u;
  *(a1 + 32) = v13;
  v4 = *(a2 + 56);
  if ((v4 & 0x80) != 0)
  {
LABEL_12:
    v5 = *(a2 + 36);
    *(a1 + 56) |= 0x80u;
    *(a1 + 36) = v5;
    v4 = *(a2 + 56);
  }

LABEL_13:
  if ((v4 & 0xFF00) == 0)
  {
    return;
  }

  if ((v4 & 0x100) != 0)
  {
    v14 = *(a2 + 40);
    *(a1 + 56) |= 0x100u;
    *(a1 + 40) = v14;
    v4 = *(a2 + 56);
    if ((v4 & 0x200) == 0)
    {
LABEL_16:
      if ((v4 & 0x400) == 0)
      {
        return;
      }

      goto LABEL_17;
    }
  }

  else if ((v4 & 0x200) == 0)
  {
    goto LABEL_16;
  }

  v15 = *(a2 + 44);
  *(a1 + 56) |= 0x200u;
  *(a1 + 44) = v15;
  if ((*(a2 + 56) & 0x400) == 0)
  {
    return;
  }

LABEL_17:
  v6 = *(a2 + 48);
  *(a1 + 56) |= 0x400u;
  *(a1 + 48) = v6;
}

void sub_24543B040(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_24543B058(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = &unk_285859DC0;
  sub_24539DA30();

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);
}

void sub_24543B0B4(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  sub_24543B058(a1);

  JUMPOUT(0x245D6A0D0);
}

uint64_t sub_24543B148(uint64_t result)
{
  v1 = *(result + 56);
  if (v1)
  {
    *(result + 36) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 8) = 0;
    *(result + 32) = 0;
  }

  if ((v1 & 0xFF00) != 0)
  {
    *(result + 40) = 0;
    *(result + 48) = 0;
  }

  *(result + 56) = 0;
  return result;
}

uint64_t sub_24543B17C(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormatLite *this, unsigned int a3)
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
        if (TagFallback >> 3 > 5)
        {
          break;
        }

        if (TagFallback >> 3 <= 2)
        {
          if (v7 != 1)
          {
            if (v7 != 2 || (TagFallback & 7) != 0)
            {
              goto LABEL_43;
            }

            v12 = *(this + 1);
            v8 = *(this + 2);
            goto LABEL_52;
          }

          if ((TagFallback & 7) != 0)
          {
            goto LABEL_43;
          }

          v43 = 0;
          v13 = *(this + 1);
          v8 = *(this + 2);
          if (v13 >= v8 || (v14 = *v13, (v14 & 0x80000000) != 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v43);
            if (!result)
            {
              return result;
            }

            v14 = v43;
            v15 = *(this + 1);
            v8 = *(this + 2);
          }

          else
          {
            v15 = v13 + 1;
            *(this + 1) = v15;
          }

          *(a1 + 8) = v14;
          *(a1 + 56) |= 1u;
          if (v15 < v8 && *v15 == 16)
          {
            v12 = v15 + 1;
            *(this + 1) = v12;
LABEL_52:
            v43 = 0;
            if (v12 >= v8 || (v22 = *v12, (v22 & 0x80000000) != 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v43);
              if (!result)
              {
                return result;
              }

              v22 = v43;
              v23 = *(this + 1);
              v8 = *(this + 2);
            }

            else
            {
              v23 = v12 + 1;
              *(this + 1) = v23;
            }

            *(a1 + 12) = v22;
            *(a1 + 56) |= 2u;
            if (v23 < v8 && *v23 == 24)
            {
              v19 = v23 + 1;
              *(this + 1) = v19;
LABEL_60:
              v43 = 0;
              if (v19 >= v8 || (v24 = *v19, (v24 & 0x80000000) != 0))
              {
                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v43);
                if (!result)
                {
                  return result;
                }

                v24 = v43;
                v25 = *(this + 1);
                v8 = *(this + 2);
              }

              else
              {
                v25 = v19 + 1;
                *(this + 1) = v25;
              }

              *(a1 + 16) = v24;
              *(a1 + 56) |= 4u;
              if (v25 < v8 && *v25 == 32)
              {
                v16 = v25 + 1;
                *(this + 1) = v16;
                goto LABEL_68;
              }
            }
          }
        }

        else
        {
          if (v7 == 3)
          {
            if ((TagFallback & 7) != 0)
            {
              goto LABEL_43;
            }

            v19 = *(this + 1);
            v8 = *(this + 2);
            goto LABEL_60;
          }

          if (v7 != 4)
          {
            if (v7 != 5 || (TagFallback & 7) != 0)
            {
              goto LABEL_43;
            }

            v10 = *(this + 1);
            v8 = *(this + 2);
            goto LABEL_76;
          }

          if ((TagFallback & 7) != 0)
          {
            goto LABEL_43;
          }

          v16 = *(this + 1);
          v8 = *(this + 2);
LABEL_68:
          v43 = 0;
          if (v16 >= v8 || (v26 = *v16, (v26 & 0x80000000) != 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v43);
            if (!result)
            {
              return result;
            }

            v26 = v43;
            v27 = *(this + 1);
            v8 = *(this + 2);
          }

          else
          {
            v27 = v16 + 1;
            *(this + 1) = v27;
          }

          *(a1 + 20) = v26;
          *(a1 + 56) |= 8u;
          if (v27 < v8 && *v27 == 40)
          {
            v10 = v27 + 1;
            *(this + 1) = v10;
LABEL_76:
            v43 = 0;
            if (v10 >= v8 || (v28 = *v10, (v28 & 0x80000000) != 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v43);
              if (!result)
              {
                return result;
              }

              v28 = v43;
              v29 = *(this + 1);
              v8 = *(this + 2);
            }

            else
            {
              v29 = v10 + 1;
              *(this + 1) = v29;
            }

            *(a1 + 24) = v28;
            *(a1 + 56) |= 0x10u;
            if (v29 < v8 && *v29 == 48)
            {
              v20 = v29 + 1;
              *(this + 1) = v20;
LABEL_84:
              v43 = 0;
              if (v20 >= v8 || (v30 = *v20, (v30 & 0x80000000) != 0))
              {
                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v43);
                if (!result)
                {
                  return result;
                }

                v30 = v43;
                v31 = *(this + 1);
                v8 = *(this + 2);
              }

              else
              {
                v31 = v20 + 1;
                *(this + 1) = v31;
              }

              *(a1 + 28) = v30;
              *(a1 + 56) |= 0x20u;
              if (v31 < v8 && *v31 == 56)
              {
                v17 = v31 + 1;
                *(this + 1) = v17;
                goto LABEL_92;
              }
            }
          }
        }
      }

      if (TagFallback >> 3 > 8)
      {
        if (v7 == 9)
        {
          if ((TagFallback & 7) == 0)
          {
            v21 = *(this + 1);
            v8 = *(this + 2);
            goto LABEL_108;
          }
        }

        else if (v7 == 10)
        {
          if ((TagFallback & 7) == 0)
          {
            v18 = *(this + 1);
            v8 = *(this + 2);
            goto LABEL_116;
          }
        }

        else if (v7 == 11 && (TagFallback & 7) == 0)
        {
          v11 = *(this + 1);
          v8 = *(this + 2);
          goto LABEL_124;
        }

        goto LABEL_43;
      }

      if (v7 == 6)
      {
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_43;
        }

        v20 = *(this + 1);
        v8 = *(this + 2);
        goto LABEL_84;
      }

      if (v7 != 7)
      {
        break;
      }

      if ((TagFallback & 7) != 0)
      {
        goto LABEL_43;
      }

      v17 = *(this + 1);
      v8 = *(this + 2);
LABEL_92:
      v43 = 0;
      if (v17 >= v8 || (v32 = *v17, (v32 & 0x80000000) != 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v43);
        if (!result)
        {
          return result;
        }

        v32 = v43;
        v33 = *(this + 1);
        v8 = *(this + 2);
      }

      else
      {
        v33 = v17 + 1;
        *(this + 1) = v33;
      }

      *(a1 + 32) = v32 != 0;
      *(a1 + 56) |= 0x40u;
      if (v33 < v8 && *v33 == 64)
      {
        v9 = v33 + 1;
        *(this + 1) = v9;
LABEL_100:
        v43 = 0;
        if (v9 >= v8 || (v34 = *v9, (v34 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v43);
          if (!result)
          {
            return result;
          }

          v34 = v43;
          v35 = *(this + 1);
          v8 = *(this + 2);
        }

        else
        {
          v35 = v9 + 1;
          *(this + 1) = v35;
        }

        *(a1 + 36) = v34;
        *(a1 + 56) |= 0x80u;
        if (v35 < v8 && *v35 == 72)
        {
          v21 = v35 + 1;
          *(this + 1) = v21;
LABEL_108:
          if (v21 >= v8 || (v36 = *v21, v36 < 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 40));
            if (!result)
            {
              return result;
            }

            v37 = *(this + 1);
            v8 = *(this + 2);
          }

          else
          {
            *(a1 + 40) = v36;
            v37 = v21 + 1;
            *(this + 1) = v37;
          }

          *(a1 + 56) |= 0x100u;
          if (v37 < v8 && *v37 == 80)
          {
            v18 = v37 + 1;
            *(this + 1) = v18;
LABEL_116:
            if (v18 >= v8 || (v38 = *v18, v38 < 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 44));
              if (!result)
              {
                return result;
              }

              v39 = *(this + 1);
              v8 = *(this + 2);
            }

            else
            {
              *(a1 + 44) = v38;
              v39 = v18 + 1;
              *(this + 1) = v39;
            }

            *(a1 + 56) |= 0x200u;
            if (v39 < v8 && *v39 == 88)
            {
              v11 = v39 + 1;
              *(this + 1) = v11;
LABEL_124:
              if (v11 >= v8 || (v40 = *v11, v40 < 0))
              {
                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 48));
                if (!result)
                {
                  return result;
                }

                v41 = *(this + 1);
                v8 = *(this + 2);
              }

              else
              {
                *(a1 + 48) = v40;
                v41 = v11 + 1;
                *(this + 1) = v41;
              }

              *(a1 + 56) |= 0x400u;
              if (v41 == v8 && (*(this + 11) || *(this + 6) == *(this + 10)))
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

    if (v7 == 8 && (TagFallback & 7) == 0)
    {
      v9 = *(this + 1);
      v8 = *(this + 2);
      goto LABEL_100;
    }

LABEL_43:
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

uint64_t sub_24543B750(uint64_t result, uint64_t a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = result;
  v6 = *(result + 56);
  if (v6)
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(1, *(result + 8), a2, a4);
    v6 = *(v5 + 56);
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

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(2, *(v5 + 12), a2, a4);
  v6 = *(v5 + 56);
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
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(3, *(v5 + 16), a2, a4);
  v6 = *(v5 + 56);
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
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(4, *(v5 + 20), a2, a4);
  v6 = *(v5 + 56);
  if ((v6 & 0x10) == 0)
  {
LABEL_6:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_18;
  }

LABEL_17:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(5, *(v5 + 24), a2, a4);
  v6 = *(v5 + 56);
  if ((v6 & 0x20) == 0)
  {
LABEL_7:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_19;
  }

LABEL_18:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(6, *(v5 + 28), a2, a4);
  v6 = *(v5 + 56);
  if ((v6 & 0x40) == 0)
  {
LABEL_8:
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_20;
  }

LABEL_19:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(7, *(v5 + 32), a2, a4);
  v6 = *(v5 + 56);
  if ((v6 & 0x80) == 0)
  {
LABEL_9:
    if ((v6 & 0x100) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_21;
  }

LABEL_20:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(8, *(v5 + 36), a2, a4);
  v6 = *(v5 + 56);
  if ((v6 & 0x100) == 0)
  {
LABEL_10:
    if ((v6 & 0x200) == 0)
    {
      goto LABEL_11;
    }

LABEL_22:
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xA, *(v5 + 44), a2, a4);
    if ((*(v5 + 56) & 0x400) == 0)
    {
      return result;
    }

    goto LABEL_23;
  }

LABEL_21:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(9, *(v5 + 40), a2, a4);
  v6 = *(v5 + 56);
  if ((v6 & 0x200) != 0)
  {
    goto LABEL_22;
  }

LABEL_11:
  if ((v6 & 0x400) == 0)
  {
    return result;
  }

LABEL_23:
  v7 = *(v5 + 48);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xB, v7, a2, a4);
}