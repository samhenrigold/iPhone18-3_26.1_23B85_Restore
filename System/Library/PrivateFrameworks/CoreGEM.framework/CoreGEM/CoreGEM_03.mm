void sub_2453BFD84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_2453BFD9C(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = &unk_285853310;
  sub_2453BD76C();

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);
}

void sub_2453BFDF8(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  sub_2453BFD9C(a1);

  JUMPOUT(0x245D6A0D0);
}

uint64_t sub_2453BFE84(uint64_t result)
{
  if (*(result + 20))
  {
    *(result + 12) = 0;
    *(result + 8) = 0;
  }

  *(result + 20) = 0;
  return result;
}

uint64_t sub_2453BFE9C(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormatLite *this, unsigned int a3)
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

        v25 = 0;
        v13 = *(this + 1);
        v8 = *(this + 2);
        if (v13 >= v8 || (v14 = *v13, (v14 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v25);
          if (!result)
          {
            return result;
          }

          v14 = v25;
          v15 = *(this + 1);
          v8 = *(this + 2);
        }

        else
        {
          v15 = v13 + 1;
          *(this + 1) = v15;
        }

        *(a1 + 8) = v14 != 0;
        *(a1 + 20) |= 1u;
        if (v15 < v8 && *v15 == 16)
        {
          v10 = v15 + 1;
          *(this + 1) = v10;
LABEL_32:
          v25 = 0;
          if (v10 >= v8 || (v16 = *v10, (v16 & 0x80000000) != 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v25);
            if (!result)
            {
              return result;
            }

            v16 = v25;
            v17 = *(this + 1);
            v8 = *(this + 2);
          }

          else
          {
            v17 = v10 + 1;
            *(this + 1) = v17;
          }

          *(a1 + 9) = v16 != 0;
          *(a1 + 20) |= 2u;
          if (v17 < v8 && *v17 == 24)
          {
            v11 = v17 + 1;
            *(this + 1) = v11;
LABEL_40:
            v25 = 0;
            if (v11 >= v8 || (v18 = *v11, (v18 & 0x80000000) != 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v25);
              if (!result)
              {
                return result;
              }

              v18 = v25;
              v19 = *(this + 1);
              v8 = *(this + 2);
            }

            else
            {
              v19 = v11 + 1;
              *(this + 1) = v19;
            }

            *(a1 + 10) = v18 != 0;
            *(a1 + 20) |= 4u;
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
      v25 = 0;
      if (v12 >= v8 || (v20 = *v12, (v20 & 0x80000000) != 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v25);
        if (!result)
        {
          return result;
        }

        v20 = v25;
        v21 = *(this + 1);
        v8 = *(this + 2);
      }

      else
      {
        v21 = v12 + 1;
        *(this + 1) = v21;
      }

      *(a1 + 11) = v20 != 0;
      *(a1 + 20) |= 8u;
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

        *(a1 + 12) = v22 != 0;
        *(a1 + 20) |= 0x10u;
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

uint64_t sub_2453C01C8(uint64_t result, uint64_t a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
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

      goto LABEL_9;
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

LABEL_10:
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(4, *(v5 + 11), a2, a4);
    if ((*(v5 + 20) & 0x10) == 0)
    {
      return result;
    }

    goto LABEL_11;
  }

LABEL_9:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(3, *(v5 + 10), a2, a4);
  v6 = *(v5 + 20);
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
  v7 = *(v5 + 12);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(5, v7, a2, a4);
}

uint64_t sub_2453C028C(uint64_t a1)
{
  LODWORD(v1) = 2 * (*(a1 + 20) & 1) + (*(a1 + 20) & 2) + ((*(a1 + 20) >> 1) & 2) + ((*(a1 + 20) >> 2) & 2) + ((*(a1 + 20) >> 3) & 2);
  if (*(a1 + 20))
  {
    v1 = v1;
  }

  else
  {
    v1 = 0;
  }

  *(a1 + 16) = v1;
  return v1;
}

void sub_2453C02D4(uint64_t a1, _BYTE *lpsrc)
{
  if (!__dynamic_cast(lpsrc, MEMORY[0x277D82C38], &unk_285854890, 0))
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  sub_2453BFC70(a1, lpsrc);
}

void sub_2453C0390(uint64_t a1, _BYTE *a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v9);
  }

  LOBYTE(v4) = a2[16];
  if (v4)
  {
    if (a2[16])
    {
      v6 = a2[8];
      *(a1 + 16) |= 1u;
      *(a1 + 8) = v6;
      v4 = *(a2 + 4);
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

    else if ((a2[16] & 2) == 0)
    {
      goto LABEL_6;
    }

    v7 = a2[9];
    *(a1 + 16) |= 2u;
    *(a1 + 9) = v7;
    v4 = *(a2 + 4);
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
    v8 = a2[10];
    *(a1 + 16) |= 4u;
    *(a1 + 10) = v8;
    if ((*(a2 + 4) & 8) == 0)
    {
      return;
    }

LABEL_8:
    v5 = a2[11];
    *(a1 + 16) |= 8u;
    *(a1 + 11) = v5;
  }
}

void sub_2453C0484(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_2453C049C(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = &unk_285853388;
  sub_2453BD76C();

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);
}

void sub_2453C04F8(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  sub_2453C049C(a1);

  JUMPOUT(0x245D6A0D0);
}

uint64_t sub_2453C057C(uint64_t result)
{
  if (*(result + 16))
  {
    *(result + 8) = 0;
  }

  *(result + 16) = 0;
  return result;
}

uint64_t sub_2453C0590(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormatLite *this, unsigned int a3)
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

uint64_t sub_2453C083C(uint64_t result, uint64_t a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
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

uint64_t sub_2453C08E4(uint64_t a1)
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

void sub_2453C0920(uint64_t a1, _BYTE *lpsrc)
{
  if (!__dynamic_cast(lpsrc, MEMORY[0x277D82C38], &unk_2858548A8, 0))
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  sub_2453C0390(a1, lpsrc);
}

void sub_2453C09DC(uint64_t a1, _BYTE *a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v10);
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

        goto LABEL_13;
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

      goto LABEL_14;
    }

LABEL_13:
    v8 = a2[10];
    *(a1 + 20) |= 4u;
    *(a1 + 10) = v8;
    v4 = *(a2 + 5);
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
    v9 = a2[11];
    *(a1 + 20) |= 8u;
    *(a1 + 11) = v9;
    if ((*(a2 + 5) & 0x10) == 0)
    {
      return;
    }

LABEL_9:
    v5 = a2[12];
    *(a1 + 20) |= 0x10u;
    *(a1 + 12) = v5;
  }
}

void sub_2453C0AF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_2453C0B08(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = &unk_285853400;
  sub_2453BD76C();

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);
}

void sub_2453C0B64(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  sub_2453C0B08(a1);

  JUMPOUT(0x245D6A0D0);
}

uint64_t sub_2453C0BF0(uint64_t result)
{
  if (*(result + 20))
  {
    *(result + 12) = 0;
    *(result + 8) = 0;
  }

  *(result + 20) = 0;
  return result;
}

uint64_t sub_2453C0C08(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormatLite *this, unsigned int a3)
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

        v25 = 0;
        v13 = *(this + 1);
        v8 = *(this + 2);
        if (v13 >= v8 || (v14 = *v13, (v14 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v25);
          if (!result)
          {
            return result;
          }

          v14 = v25;
          v15 = *(this + 1);
          v8 = *(this + 2);
        }

        else
        {
          v15 = v13 + 1;
          *(this + 1) = v15;
        }

        *(a1 + 8) = v14 != 0;
        *(a1 + 20) |= 1u;
        if (v15 < v8 && *v15 == 16)
        {
          v10 = v15 + 1;
          *(this + 1) = v10;
LABEL_32:
          v25 = 0;
          if (v10 >= v8 || (v16 = *v10, (v16 & 0x80000000) != 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v25);
            if (!result)
            {
              return result;
            }

            v16 = v25;
            v17 = *(this + 1);
            v8 = *(this + 2);
          }

          else
          {
            v17 = v10 + 1;
            *(this + 1) = v17;
          }

          *(a1 + 9) = v16 != 0;
          *(a1 + 20) |= 2u;
          if (v17 < v8 && *v17 == 24)
          {
            v11 = v17 + 1;
            *(this + 1) = v11;
LABEL_40:
            v25 = 0;
            if (v11 >= v8 || (v18 = *v11, (v18 & 0x80000000) != 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v25);
              if (!result)
              {
                return result;
              }

              v18 = v25;
              v19 = *(this + 1);
              v8 = *(this + 2);
            }

            else
            {
              v19 = v11 + 1;
              *(this + 1) = v19;
            }

            *(a1 + 10) = v18 != 0;
            *(a1 + 20) |= 4u;
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
      v25 = 0;
      if (v12 >= v8 || (v20 = *v12, (v20 & 0x80000000) != 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v25);
        if (!result)
        {
          return result;
        }

        v20 = v25;
        v21 = *(this + 1);
        v8 = *(this + 2);
      }

      else
      {
        v21 = v12 + 1;
        *(this + 1) = v21;
      }

      *(a1 + 11) = v20 != 0;
      *(a1 + 20) |= 8u;
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

        *(a1 + 12) = v22 != 0;
        *(a1 + 20) |= 0x10u;
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

uint64_t sub_2453C0F34(uint64_t result, uint64_t a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
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

      goto LABEL_9;
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

LABEL_10:
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(4, *(v5 + 11), a2, a4);
    if ((*(v5 + 20) & 0x10) == 0)
    {
      return result;
    }

    goto LABEL_11;
  }

LABEL_9:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(3, *(v5 + 10), a2, a4);
  v6 = *(v5 + 20);
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
  v7 = *(v5 + 12);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(5, v7, a2, a4);
}

uint64_t sub_2453C0FF8(uint64_t a1)
{
  LODWORD(v1) = 2 * (*(a1 + 20) & 1) + (*(a1 + 20) & 2) + ((*(a1 + 20) >> 1) & 2) + ((*(a1 + 20) >> 2) & 2) + ((*(a1 + 20) >> 3) & 2);
  if (*(a1 + 20))
  {
    v1 = v1;
  }

  else
  {
    v1 = 0;
  }

  *(a1 + 16) = v1;
  return v1;
}

void sub_2453C1040(uint64_t a1, _BYTE *lpsrc)
{
  if (!__dynamic_cast(lpsrc, MEMORY[0x277D82C38], &unk_2858548C0, 0))
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  sub_2453C09DC(a1, lpsrc);
}

void sub_2453C10FC(uint64_t a1, _BYTE *a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v9);
  }

  LOBYTE(v4) = a2[16];
  if (v4)
  {
    if (a2[16])
    {
      v6 = a2[8];
      *(a1 + 16) |= 1u;
      *(a1 + 8) = v6;
      v4 = *(a2 + 4);
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

    else if ((a2[16] & 2) == 0)
    {
      goto LABEL_6;
    }

    v7 = a2[9];
    *(a1 + 16) |= 2u;
    *(a1 + 9) = v7;
    v4 = *(a2 + 4);
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
    v8 = a2[10];
    *(a1 + 16) |= 4u;
    *(a1 + 10) = v8;
    if ((*(a2 + 4) & 8) == 0)
    {
      return;
    }

LABEL_8:
    v5 = a2[11];
    *(a1 + 16) |= 8u;
    *(a1 + 11) = v5;
  }
}

void sub_2453C11F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_2453C1208(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = &unk_285853478;
  sub_2453BD76C();

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);
}

void sub_2453C1264(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  sub_2453C1208(a1);

  JUMPOUT(0x245D6A0D0);
}

uint64_t sub_2453C12E8(uint64_t result)
{
  if (*(result + 16))
  {
    *(result + 8) = 0;
  }

  *(result + 16) = 0;
  return result;
}

uint64_t sub_2453C12FC(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormatLite *this, unsigned int a3)
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

uint64_t sub_2453C15A8(uint64_t result, uint64_t a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
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

uint64_t sub_2453C1650(uint64_t a1)
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

void sub_2453C168C(uint64_t a1, _BYTE *lpsrc)
{
  if (!__dynamic_cast(lpsrc, MEMORY[0x277D82C38], &unk_2858548D8, 0))
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  sub_2453C10FC(a1, lpsrc);
}

void sub_2453C1748(uint64_t a1, _BYTE *a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v9);
  }

  LOBYTE(v4) = a2[16];
  if (v4)
  {
    if (a2[16])
    {
      v6 = a2[8];
      *(a1 + 16) |= 1u;
      *(a1 + 8) = v6;
      v4 = *(a2 + 4);
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

    else if ((a2[16] & 2) == 0)
    {
      goto LABEL_6;
    }

    v7 = a2[9];
    *(a1 + 16) |= 2u;
    *(a1 + 9) = v7;
    v4 = *(a2 + 4);
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
    v8 = a2[10];
    *(a1 + 16) |= 4u;
    *(a1 + 10) = v8;
    if ((*(a2 + 4) & 8) == 0)
    {
      return;
    }

LABEL_8:
    v5 = a2[11];
    *(a1 + 16) |= 8u;
    *(a1 + 11) = v5;
  }
}

void sub_2453C183C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_2453C1854(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = &unk_2858534F0;
  sub_2453BD76C();

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);
}

void sub_2453C18B0(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  sub_2453C1854(a1);

  JUMPOUT(0x245D6A0D0);
}

uint64_t sub_2453C1934(uint64_t result)
{
  if (*(result + 16))
  {
    *(result + 8) = 0;
  }

  *(result + 16) = 0;
  return result;
}

uint64_t sub_2453C1948(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormatLite *this, unsigned int a3)
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

uint64_t sub_2453C1BF4(uint64_t result, uint64_t a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
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

uint64_t sub_2453C1C9C(uint64_t a1)
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

void sub_2453C1CD8(uint64_t a1, _BYTE *lpsrc)
{
  if (!__dynamic_cast(lpsrc, MEMORY[0x277D82C38], &unk_2858548F0, 0))
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  sub_2453C1748(a1, lpsrc);
}

void sub_2453C1D94(uint64_t a1, _BYTE *a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v9);
  }

  LOBYTE(v4) = a2[16];
  if (v4)
  {
    if (a2[16])
    {
      v6 = a2[8];
      *(a1 + 16) |= 1u;
      *(a1 + 8) = v6;
      v4 = *(a2 + 4);
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

    else if ((a2[16] & 2) == 0)
    {
      goto LABEL_6;
    }

    v7 = a2[9];
    *(a1 + 16) |= 2u;
    *(a1 + 9) = v7;
    v4 = *(a2 + 4);
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
    v8 = a2[10];
    *(a1 + 16) |= 4u;
    *(a1 + 10) = v8;
    if ((*(a2 + 4) & 8) == 0)
    {
      return;
    }

LABEL_8:
    v5 = a2[11];
    *(a1 + 16) |= 8u;
    *(a1 + 11) = v5;
  }
}

void sub_2453C1E88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_2453C1EA0(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = &unk_285853568;
  sub_2453BD76C();

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);
}

void sub_2453C1EFC(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  sub_2453C1EA0(a1);

  JUMPOUT(0x245D6A0D0);
}

uint64_t sub_2453C1F80(uint64_t result)
{
  if (*(result + 16))
  {
    *(result + 8) = 0;
  }

  *(result + 16) = 0;
  return result;
}

uint64_t sub_2453C1F94(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormatLite *this, unsigned int a3)
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

uint64_t sub_2453C2240(uint64_t result, uint64_t a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
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

uint64_t sub_2453C22E8(uint64_t a1)
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

void sub_2453C2324(uint64_t a1, _BYTE *lpsrc)
{
  if (!__dynamic_cast(lpsrc, MEMORY[0x277D82C38], &unk_285854908, 0))
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  sub_2453C1D94(a1, lpsrc);
}

void sub_2453C23E0(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v15);
  }

  v4 = *(a2 + 24);
  if (!v4)
  {
    goto LABEL_13;
  }

  if (v4)
  {
    v8 = *(a2 + 8);
    *(a1 + 24) |= 1u;
    *(a1 + 8) = v8;
    v4 = *(a2 + 24);
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

  v9 = *(a2 + 9);
  *(a1 + 24) |= 2u;
  *(a1 + 9) = v9;
  v4 = *(a2 + 24);
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
  v10 = *(a2 + 10);
  *(a1 + 24) |= 4u;
  *(a1 + 10) = v10;
  v4 = *(a2 + 24);
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
  v11 = *(a2 + 11);
  *(a1 + 24) |= 8u;
  *(a1 + 11) = v11;
  v4 = *(a2 + 24);
  if ((v4 & 0x10) == 0)
  {
LABEL_9:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_10;
    }

LABEL_24:
    v13 = *(a2 + 13);
    *(a1 + 24) |= 0x20u;
    *(a1 + 13) = v13;
    v4 = *(a2 + 24);
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
  v12 = *(a2 + 12);
  *(a1 + 24) |= 0x10u;
  *(a1 + 12) = v12;
  v4 = *(a2 + 24);
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
  v14 = *(a2 + 14);
  *(a1 + 24) |= 0x40u;
  *(a1 + 14) = v14;
  v4 = *(a2 + 24);
  if ((v4 & 0x80) != 0)
  {
LABEL_12:
    v5 = *(a2 + 15);
    *(a1 + 24) |= 0x80u;
    *(a1 + 15) = v5;
    v4 = *(a2 + 24);
  }

LABEL_13:
  if ((v4 & 0xFF00) != 0)
  {
    if ((v4 & 0x100) != 0)
    {
      v6 = *(a2 + 16);
      *(a1 + 24) |= 0x100u;
      *(a1 + 16) = v6;
      v4 = *(a2 + 24);
    }

    if ((v4 & 0x200) != 0)
    {
      v7 = *(a2 + 17);
      *(a1 + 24) |= 0x200u;
      *(a1 + 17) = v7;
    }
  }
}

void sub_2453C2598(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_2453C25B0(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = &unk_2858535E0;
  sub_2453BD76C();

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);
}

void sub_2453C260C(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  sub_2453C25B0(a1);

  JUMPOUT(0x245D6A0D0);
}

uint64_t sub_2453C2694(uint64_t result)
{
  v1 = *(result + 24);
  if (v1)
  {
    *(result + 8) = 0;
  }

  if ((v1 & 0xFF00) != 0)
  {
    *(result + 16) = 0;
  }

  *(result + 24) = 0;
  return result;
}

uint64_t sub_2453C26B8(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormatLite *this, unsigned int a3)
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
          if (TagFallback >> 3 <= 7)
          {
            if (v7 == 6)
            {
              if ((TagFallback & 7) == 0)
              {
                v16 = *(this + 1);
                v8 = *(this + 2);
                goto LABEL_81;
              }
            }

            else if (v7 == 7 && (TagFallback & 7) == 0)
            {
              v12 = *(this + 1);
              v8 = *(this + 2);
              goto LABEL_89;
            }
          }

          else if (v7 == 8)
          {
            if ((TagFallback & 7) == 0)
            {
              v18 = *(this + 1);
              v8 = *(this + 2);
              goto LABEL_97;
            }
          }

          else if (v7 == 9)
          {
            if ((TagFallback & 7) == 0)
            {
              v20 = *(this + 1);
              v8 = *(this + 2);
              goto LABEL_105;
            }
          }

          else if (v7 == 10 && (TagFallback & 7) == 0)
          {
            v10 = *(this + 1);
            v8 = *(this + 2);
            goto LABEL_113;
          }

          goto LABEL_40;
        }

        if (TagFallback >> 3 > 2)
        {
          break;
        }

        if (v7 != 1)
        {
          if (v7 != 2 || (TagFallback & 7) != 0)
          {
            goto LABEL_40;
          }

          v11 = *(this + 1);
          v8 = *(this + 2);
          goto LABEL_49;
        }

        if ((TagFallback & 7) != 0)
        {
          goto LABEL_40;
        }

        v40 = 0;
        v13 = *(this + 1);
        v8 = *(this + 2);
        if (v13 >= v8 || (v14 = *v13, (v14 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v40);
          if (!result)
          {
            return result;
          }

          v14 = v40;
          v15 = *(this + 1);
          v8 = *(this + 2);
        }

        else
        {
          v15 = v13 + 1;
          *(this + 1) = v15;
        }

        *(a1 + 8) = v14 != 0;
        *(a1 + 24) |= 1u;
        if (v15 < v8 && *v15 == 16)
        {
          v11 = v15 + 1;
          *(this + 1) = v11;
LABEL_49:
          v40 = 0;
          if (v11 >= v8 || (v21 = *v11, (v21 & 0x80000000) != 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v40);
            if (!result)
            {
              return result;
            }

            v21 = v40;
            v22 = *(this + 1);
            v8 = *(this + 2);
          }

          else
          {
            v22 = v11 + 1;
            *(this + 1) = v22;
          }

          *(a1 + 9) = v21 != 0;
          *(a1 + 24) |= 2u;
          if (v22 < v8 && *v22 == 24)
          {
            v17 = v22 + 1;
            *(this + 1) = v17;
LABEL_57:
            v40 = 0;
            if (v17 >= v8 || (v23 = *v17, (v23 & 0x80000000) != 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v40);
              if (!result)
              {
                return result;
              }

              v23 = v40;
              v24 = *(this + 1);
              v8 = *(this + 2);
            }

            else
            {
              v24 = v17 + 1;
              *(this + 1) = v24;
            }

            *(a1 + 10) = v23 != 0;
            *(a1 + 24) |= 4u;
            if (v24 < v8 && *v24 == 32)
            {
              v19 = v24 + 1;
              *(this + 1) = v19;
              goto LABEL_65;
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

        v17 = *(this + 1);
        v8 = *(this + 2);
        goto LABEL_57;
      }

      if (v7 != 4)
      {
        break;
      }

      if ((TagFallback & 7) != 0)
      {
        goto LABEL_40;
      }

      v19 = *(this + 1);
      v8 = *(this + 2);
LABEL_65:
      v40 = 0;
      if (v19 >= v8 || (v25 = *v19, (v25 & 0x80000000) != 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v40);
        if (!result)
        {
          return result;
        }

        v25 = v40;
        v26 = *(this + 1);
        v8 = *(this + 2);
      }

      else
      {
        v26 = v19 + 1;
        *(this + 1) = v26;
      }

      *(a1 + 11) = v25 != 0;
      *(a1 + 24) |= 8u;
      if (v26 < v8 && *v26 == 40)
      {
        v9 = v26 + 1;
        *(this + 1) = v9;
LABEL_73:
        v40 = 0;
        if (v9 >= v8 || (v27 = *v9, (v27 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v40);
          if (!result)
          {
            return result;
          }

          v27 = v40;
          v28 = *(this + 1);
          v8 = *(this + 2);
        }

        else
        {
          v28 = v9 + 1;
          *(this + 1) = v28;
        }

        *(a1 + 12) = v27 != 0;
        *(a1 + 24) |= 0x10u;
        if (v28 < v8 && *v28 == 48)
        {
          v16 = v28 + 1;
          *(this + 1) = v16;
LABEL_81:
          v40 = 0;
          if (v16 >= v8 || (v29 = *v16, (v29 & 0x80000000) != 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v40);
            if (!result)
            {
              return result;
            }

            v29 = v40;
            v30 = *(this + 1);
            v8 = *(this + 2);
          }

          else
          {
            v30 = v16 + 1;
            *(this + 1) = v30;
          }

          *(a1 + 13) = v29 != 0;
          *(a1 + 24) |= 0x20u;
          if (v30 < v8 && *v30 == 56)
          {
            v12 = v30 + 1;
            *(this + 1) = v12;
LABEL_89:
            v40 = 0;
            if (v12 >= v8 || (v31 = *v12, (v31 & 0x80000000) != 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v40);
              if (!result)
              {
                return result;
              }

              v31 = v40;
              v32 = *(this + 1);
              v8 = *(this + 2);
            }

            else
            {
              v32 = v12 + 1;
              *(this + 1) = v32;
            }

            *(a1 + 14) = v31 != 0;
            *(a1 + 24) |= 0x40u;
            if (v32 < v8 && *v32 == 64)
            {
              v18 = v32 + 1;
              *(this + 1) = v18;
LABEL_97:
              v40 = 0;
              if (v18 >= v8 || (v33 = *v18, (v33 & 0x80000000) != 0))
              {
                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v40);
                if (!result)
                {
                  return result;
                }

                v33 = v40;
                v34 = *(this + 1);
                v8 = *(this + 2);
              }

              else
              {
                v34 = v18 + 1;
                *(this + 1) = v34;
              }

              *(a1 + 15) = v33 != 0;
              *(a1 + 24) |= 0x80u;
              if (v34 < v8 && *v34 == 72)
              {
                v20 = v34 + 1;
                *(this + 1) = v20;
LABEL_105:
                v40 = 0;
                if (v20 >= v8 || (v35 = *v20, (v35 & 0x80000000) != 0))
                {
                  result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v40);
                  if (!result)
                  {
                    return result;
                  }

                  v35 = v40;
                  v36 = *(this + 1);
                  v8 = *(this + 2);
                }

                else
                {
                  v36 = v20 + 1;
                  *(this + 1) = v36;
                }

                *(a1 + 16) = v35 != 0;
                *(a1 + 24) |= 0x100u;
                if (v36 < v8 && *v36 == 80)
                {
                  v10 = v36 + 1;
                  *(this + 1) = v10;
LABEL_113:
                  v40 = 0;
                  if (v10 >= v8 || (v37 = *v10, (v37 & 0x80000000) != 0))
                  {
                    result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v40);
                    if (!result)
                    {
                      return result;
                    }

                    v37 = v40;
                    v38 = *(this + 1);
                    v8 = *(this + 2);
                  }

                  else
                  {
                    v38 = v10 + 1;
                    *(this + 1) = v38;
                  }

                  *(a1 + 17) = v37 != 0;
                  *(a1 + 24) |= 0x200u;
                  if (v38 == v8 && (*(this + 11) || *(this + 6) == *(this + 10)))
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
      }
    }

    if (v7 == 5 && (TagFallback & 7) == 0)
    {
      v9 = *(this + 1);
      v8 = *(this + 2);
      goto LABEL_73;
    }

LABEL_40:
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

uint64_t sub_2453C2C74(uint64_t result, uint64_t a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = result;
  v6 = *(result + 24);
  if (v6)
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(1, *(result + 8), a2, a4);
    v6 = *(v5 + 24);
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

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(2, *(v5 + 9), a2, a4);
  v6 = *(v5 + 24);
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
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(3, *(v5 + 10), a2, a4);
  v6 = *(v5 + 24);
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
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(4, *(v5 + 11), a2, a4);
  v6 = *(v5 + 24);
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
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(5, *(v5 + 12), a2, a4);
  v6 = *(v5 + 24);
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
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(6, *(v5 + 13), a2, a4);
  v6 = *(v5 + 24);
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
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(7, *(v5 + 14), a2, a4);
  v6 = *(v5 + 24);
  if ((v6 & 0x80) == 0)
  {
LABEL_9:
    if ((v6 & 0x100) == 0)
    {
      goto LABEL_10;
    }

LABEL_20:
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(9, *(v5 + 16), a2, a4);
    if ((*(v5 + 24) & 0x200) == 0)
    {
      return result;
    }

    goto LABEL_21;
  }

LABEL_19:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(8, *(v5 + 15), a2, a4);
  v6 = *(v5 + 24);
  if ((v6 & 0x100) != 0)
  {
    goto LABEL_20;
  }

LABEL_10:
  if ((v6 & 0x200) == 0)
  {
    return result;
  }

LABEL_21:
  v7 = *(v5 + 17);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(0xA, v7, a2, a4);
}

uint64_t sub_2453C2DC4(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    v2.i64[0] = 0x200000002;
    v2.i64[1] = 0x200000002;
    v3 = vaddvq_s32(vandq_s8(vshlq_u32(vdupq_n_s32(v1), xmmword_2454885E0), v2)) + 2 * (v1 & 1) + (v1 & 2) + ((v1 >> 5) & 2) + ((v1 >> 6) & 2);
  }

  else
  {
    v3 = 0;
  }

  v4 = (v1 & 0xFF00) == 0;
  LODWORD(v5) = ((v1 >> 8) & 2) + ((v1 >> 7) & 2) + v3;
  if (v4)
  {
    v5 = v3;
  }

  else
  {
    v5 = v5;
  }

  *(a1 + 20) = v5;
  return v5;
}

void sub_2453C2E4C(uint64_t a1, void *lpsrc)
{
  if (!__dynamic_cast(lpsrc, MEMORY[0x277D82C38], &unk_285854920, 0))
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  sub_2453C23E0(a1, lpsrc);
}

void sub_2453C2F08(uint64_t a1, _BYTE *a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v8);
  }

  LOBYTE(v4) = a2[16];
  if (v4)
  {
    if (a2[16])
    {
      v6 = a2[8];
      *(a1 + 16) |= 1u;
      *(a1 + 8) = v6;
      v4 = *(a2 + 4);
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

    else if ((a2[16] & 2) == 0)
    {
      goto LABEL_6;
    }

    v7 = a2[9];
    *(a1 + 16) |= 2u;
    *(a1 + 9) = v7;
    if ((*(a2 + 4) & 4) == 0)
    {
      return;
    }

LABEL_7:
    v5 = a2[10];
    *(a1 + 16) |= 4u;
    *(a1 + 10) = v5;
  }
}

void sub_2453C2FDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_2453C2FF4(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = &unk_285853658;
  sub_2453BD76C();

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);
}

void sub_2453C3050(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  sub_2453C2FF4(a1);

  JUMPOUT(0x245D6A0D0);
}

uint64_t sub_2453C30DC(uint64_t result)
{
  if (*(result + 16))
  {
    *(result + 8) = 0;
    *(result + 10) = 0;
  }

  *(result + 16) = 0;
  return result;
}

uint64_t sub_2453C30F4(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormatLite *this, unsigned int a3)
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

      v21 = 0;
      v9 = *(this + 1);
      v8 = *(this + 2);
      if (v9 >= v8 || (v10 = *v9, (v10 & 0x80000000) != 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v21);
        if (!result)
        {
          return result;
        }

        v10 = v21;
        v11 = *(this + 1);
        v8 = *(this + 2);
      }

      else
      {
        v11 = v9 + 1;
        *(this + 1) = v11;
      }

      *(a1 + 8) = v10 != 0;
      *(a1 + 16) |= 1u;
      if (v11 < v8 && *v11 == 16)
      {
        v12 = v11 + 1;
        *(this + 1) = v12;
LABEL_25:
        v20 = 0;
        if (v12 >= v8 || (v14 = *v12, (v14 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v20);
          if (!result)
          {
            return result;
          }

          v14 = v20;
          v15 = *(this + 1);
          v8 = *(this + 2);
        }

        else
        {
          v15 = v12 + 1;
          *(this + 1) = v15;
        }

        *(a1 + 9) = v14 != 0;
        *(a1 + 16) |= 2u;
        if (v15 < v8 && *v15 == 24)
        {
          v13 = v15 + 1;
          *(this + 1) = v13;
LABEL_33:
          v19 = 0;
          if (v13 >= v8 || (v16 = *v13, (v16 & 0x80000000) != 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v19);
            if (!result)
            {
              return result;
            }

            v16 = v19;
            v17 = *(this + 1);
            v8 = *(this + 2);
          }

          else
          {
            v17 = v13 + 1;
            *(this + 1) = v17;
          }

          *(a1 + 10) = v16 != 0;
          *(a1 + 16) |= 4u;
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

uint64_t sub_2453C3318(uint64_t result, uint64_t a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = result;
  v6 = *(result + 16);
  if ((v6 & 1) == 0)
  {
    if ((v6 & 2) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(2, *(v5 + 9), a2, a4);
    if ((*(v5 + 16) & 4) == 0)
    {
      return result;
    }

    goto LABEL_7;
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(1, *(result + 8), a2, a4);
  v6 = *(v5 + 16);
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
  v7 = *(v5 + 10);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(3, v7, a2, a4);
}

uint64_t sub_2453C33A4(uint64_t a1)
{
  LODWORD(v1) = 2 * (*(a1 + 16) & 1) + (*(a1 + 16) & 2) + ((*(a1 + 16) >> 1) & 2);
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

void sub_2453C33D4(uint64_t a1, _BYTE *lpsrc)
{
  if (!__dynamic_cast(lpsrc, MEMORY[0x277D82C38], &unk_285854938, 0))
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  sub_2453C2F08(a1, lpsrc);
}

void sub_2453C3490(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v26);
  }

  v4 = *(a2 + 96);
  if (!v4)
  {
    goto LABEL_50;
  }

  if (v4)
  {
    v5 = *(a2 + 88);
    if (v5 >= 0xD)
    {
      __assert_rtn("set_band", "CLPGnssMeasApi.pb.h", 7930, "::CoreGem::CLP::LogEntry::PrivateData::Band_IsValid(value)");
    }

    *(a1 + 96) |= 1u;
    *(a1 + 88) = v5;
    v4 = *(a2 + 96);
  }

  if ((v4 & 2) != 0)
  {
    *(a1 + 96) |= 2u;
    v6 = *(a1 + 8);
    if (!v6)
    {
      operator new();
    }

    v7 = *(a2 + 8);
    if (!v7)
    {
      sub_2453BD76C();
      v7 = *(qword_2813CE880 + 8);
    }

    sub_2453BF624(v6, v7);
    v4 = *(a2 + 96);
    if ((v4 & 4) == 0)
    {
LABEL_9:
      if ((v4 & 8) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_25;
    }
  }

  else if ((v4 & 4) == 0)
  {
    goto LABEL_9;
  }

  *(a1 + 96) |= 4u;
  v8 = *(a1 + 16);
  if (!v8)
  {
    operator new();
  }

  v9 = *(a2 + 16);
  if (!v9)
  {
    sub_2453BD76C();
    v9 = *(qword_2813CE880 + 16);
  }

  sub_2453BFC70(v8, v9);
  v4 = *(a2 + 96);
  if ((v4 & 8) == 0)
  {
LABEL_10:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_30;
  }

LABEL_25:
  *(a1 + 96) |= 8u;
  v10 = *(a1 + 24);
  if (!v10)
  {
    operator new();
  }

  v11 = *(a2 + 24);
  if (!v11)
  {
    sub_2453BD76C();
    v11 = *(qword_2813CE880 + 24);
  }

  sub_2453C0390(v10, v11);
  v4 = *(a2 + 96);
  if ((v4 & 0x10) == 0)
  {
LABEL_11:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_12;
    }

LABEL_35:
    *(a1 + 96) |= 0x20u;
    v14 = *(a1 + 40);
    if (!v14)
    {
      operator new();
    }

    v15 = *(a2 + 40);
    if (!v15)
    {
      sub_2453BD76C();
      v15 = *(qword_2813CE880 + 40);
    }

    sub_2453C10FC(v14, v15);
    v4 = *(a2 + 96);
    if ((v4 & 0x40) == 0)
    {
LABEL_13:
      if ((v4 & 0x80) == 0)
      {
        goto LABEL_50;
      }

      goto LABEL_45;
    }

    goto LABEL_40;
  }

LABEL_30:
  *(a1 + 96) |= 0x10u;
  v12 = *(a1 + 32);
  if (!v12)
  {
    operator new();
  }

  v13 = *(a2 + 32);
  if (!v13)
  {
    sub_2453BD76C();
    v13 = *(qword_2813CE880 + 32);
  }

  sub_2453C09DC(v12, v13);
  v4 = *(a2 + 96);
  if ((v4 & 0x20) != 0)
  {
    goto LABEL_35;
  }

LABEL_12:
  if ((v4 & 0x40) == 0)
  {
    goto LABEL_13;
  }

LABEL_40:
  *(a1 + 96) |= 0x40u;
  v16 = *(a1 + 48);
  if (!v16)
  {
    operator new();
  }

  v17 = *(a2 + 48);
  if (!v17)
  {
    sub_2453BD76C();
    v17 = *(qword_2813CE880 + 48);
  }

  sub_2453C1748(v16, v17);
  v4 = *(a2 + 96);
  if ((v4 & 0x80) != 0)
  {
LABEL_45:
    *(a1 + 96) |= 0x80u;
    v18 = *(a1 + 56);
    if (!v18)
    {
      operator new();
    }

    v19 = *(a2 + 56);
    if (!v19)
    {
      sub_2453BD76C();
      v19 = *(qword_2813CE880 + 56);
    }

    sub_2453C1D94(v18, v19);
    v4 = *(a2 + 96);
  }

LABEL_50:
  if ((v4 & 0xFF00) == 0)
  {
    return;
  }

  if ((v4 & 0x100) != 0)
  {
    *(a1 + 96) |= 0x100u;
    v20 = *(a1 + 64);
    if (!v20)
    {
      operator new();
    }

    v21 = *(a2 + 64);
    if (!v21)
    {
      sub_2453BD76C();
      v21 = *(qword_2813CE880 + 64);
    }

    sub_2453C23E0(v20, v21);
    v4 = *(a2 + 96);
    if ((v4 & 0x200) == 0)
    {
LABEL_53:
      if ((v4 & 0x400) == 0)
      {
        return;
      }

      goto LABEL_65;
    }
  }

  else if ((v4 & 0x200) == 0)
  {
    goto LABEL_53;
  }

  *(a1 + 96) |= 0x200u;
  v22 = *(a1 + 72);
  if (!v22)
  {
    operator new();
  }

  v23 = *(a2 + 72);
  if (!v23)
  {
    sub_2453BD76C();
    v23 = *(qword_2813CE880 + 72);
  }

  sub_2453C2F08(v22, v23);
  if ((*(a2 + 96) & 0x400) != 0)
  {
LABEL_65:
    *(a1 + 96) |= 0x400u;
    v24 = *(a1 + 80);
    if (!v24)
    {
      operator new();
    }

    v25 = *(a2 + 80);
    if (!v25)
    {
      sub_2453BD76C();
      v25 = *(qword_2813CE880 + 80);
    }

    sub_2453BF624(v24, v25);
  }
}

void sub_2453C3A78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_2453C3A90(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = &unk_2858536D0;
  sub_2453BD76C();
  if (qword_2813CE880 != a1)
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

    v9 = *(a1 + 8);
    if (v9)
    {
      (*(*v9 + 8))(v9);
    }

    v10 = *(a1 + 9);
    if (v10)
    {
      (*(*v10 + 8))(v10);
    }

    v11 = *(a1 + 10);
    if (v11)
    {
      (*(*v11 + 8))(v11);
    }
  }

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);
}

void sub_2453C3CB4(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  sub_2453C3A90(a1);

  JUMPOUT(0x245D6A0D0);
}

uint64_t sub_2453C3D50(uint64_t result)
{
  v1 = *(result + 96);
  if (v1)
  {
    *(result + 88) = 0;
    if ((v1 & 2) != 0)
    {
      v2 = *(result + 8);
      if (v2)
      {
        if (*(v2 + 16))
        {
          *(v2 + 8) = 0;
        }

        *(v2 + 16) = 0;
        v1 = *(result + 96);
      }
    }

    if ((v1 & 4) != 0)
    {
      v3 = *(result + 16);
      if (v3)
      {
        if (*(v3 + 20))
        {
          *(v3 + 12) = 0;
          *(v3 + 8) = 0;
        }

        *(v3 + 20) = 0;
        v1 = *(result + 96);
      }
    }

    if ((v1 & 8) != 0)
    {
      v4 = *(result + 24);
      if (v4)
      {
        if (*(v4 + 16))
        {
          *(v4 + 8) = 0;
        }

        *(v4 + 16) = 0;
        v1 = *(result + 96);
      }
    }

    if ((v1 & 0x10) != 0)
    {
      v5 = *(result + 32);
      if (v5)
      {
        if (*(v5 + 20))
        {
          *(v5 + 12) = 0;
          *(v5 + 8) = 0;
        }

        *(v5 + 20) = 0;
        v1 = *(result + 96);
      }
    }

    if ((v1 & 0x20) != 0)
    {
      v6 = *(result + 40);
      if (v6)
      {
        if (*(v6 + 16))
        {
          *(v6 + 8) = 0;
        }

        *(v6 + 16) = 0;
        v1 = *(result + 96);
      }
    }

    if ((v1 & 0x40) != 0)
    {
      v7 = *(result + 48);
      if (v7)
      {
        if (*(v7 + 16))
        {
          *(v7 + 8) = 0;
        }

        *(v7 + 16) = 0;
        v1 = *(result + 96);
      }
    }

    if ((v1 & 0x80) != 0)
    {
      v8 = *(result + 56);
      if (v8)
      {
        if (*(v8 + 16))
        {
          *(v8 + 8) = 0;
        }

        *(v8 + 16) = 0;
        v1 = *(result + 96);
      }
    }
  }

  if ((v1 & 0xFF00) != 0)
  {
    if ((v1 & 0x100) != 0)
    {
      v9 = *(result + 64);
      if (v9)
      {
        v10 = *(v9 + 24);
        if (v10)
        {
          *(v9 + 8) = 0;
        }

        if ((v10 & 0xFF00) != 0)
        {
          *(v9 + 16) = 0;
        }

        *(v9 + 24) = 0;
        v1 = *(result + 96);
      }
    }

    if ((v1 & 0x200) != 0)
    {
      v11 = *(result + 72);
      if (v11)
      {
        if (*(v11 + 16))
        {
          *(v11 + 8) = 0;
          *(v11 + 10) = 0;
        }

        *(v11 + 16) = 0;
        v1 = *(result + 96);
      }
    }

    if ((v1 & 0x400) != 0)
    {
      v12 = *(result + 80);
      if (v12)
      {
        if (*(v12 + 16))
        {
          *(v12 + 8) = 0;
        }

        *(v12 + 16) = 0;
      }
    }
  }

  *(result + 96) = 0;
  return result;
}

uint64_t sub_2453C3EC8(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormatLite *this, unsigned int a3)
{
  while (1)
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
          if (TagFallback >> 3 > 5)
          {
            break;
          }

          if (TagFallback >> 3 <= 2)
          {
            if (v7 != 1)
            {
              if (v7 != 2 || v8 != 2)
              {
                goto LABEL_43;
              }

              goto LABEL_53;
            }

            if ((TagFallback & 7) != 0)
            {
              goto LABEL_43;
            }

            v93 = 0;
            v9 = *(this + 1);
            if (v9 >= *(this + 2) || (v10 = *v9, (v10 & 0x80000000) != 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v93);
              if (!result)
              {
                return result;
              }

              v10 = v93;
            }

            else
            {
              *(this + 1) = v9 + 1;
            }

            if (v10 <= 0xC)
            {
              *(a1 + 96) |= 1u;
              *(a1 + 88) = v10;
            }

            v12 = *(this + 1);
            if (v12 < *(this + 2) && *v12 == 18)
            {
              *(this + 1) = v12 + 1;
LABEL_53:
              *(a1 + 96) |= 2u;
              v13 = *(a1 + 8);
              if (!v13)
              {
                operator new();
              }

              v93 = 0;
              v14 = *(this + 1);
              if (v14 >= *(this + 2) || *v14 < 0)
              {
                if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v93))
                {
                  return 0;
                }
              }

              else
              {
                v93 = *v14;
                *(this + 1) = v14 + 1;
              }

              v15 = *(this + 14);
              v16 = *(this + 15);
              *(this + 14) = v15 + 1;
              if (v15 >= v16)
              {
                return 0;
              }

              wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this);
              if (!sub_2453BF824(v13, this, v17) || *(this + 36) != 1)
              {
                return 0;
              }

              wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this);
              v18 = *(this + 14);
              v19 = __OFSUB__(v18, 1);
              v20 = v18 - 1;
              if (v20 < 0 == v19)
              {
                *(this + 14) = v20;
              }

              v21 = *(this + 1);
              if (v21 < *(this + 2) && *v21 == 26)
              {
                *(this + 1) = v21 + 1;
LABEL_67:
                *(a1 + 96) |= 4u;
                v22 = *(a1 + 16);
                if (!v22)
                {
                  operator new();
                }

                v93 = 0;
                v23 = *(this + 1);
                if (v23 >= *(this + 2) || *v23 < 0)
                {
                  if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v93))
                  {
                    return 0;
                  }
                }

                else
                {
                  v93 = *v23;
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
                if (!sub_2453BFE9C(v22, this, v26) || *(this + 36) != 1)
                {
                  return 0;
                }

                wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this);
                v27 = *(this + 14);
                v19 = __OFSUB__(v27, 1);
                v28 = v27 - 1;
                if (v28 < 0 == v19)
                {
                  *(this + 14) = v28;
                }

                v29 = *(this + 1);
                if (v29 < *(this + 2) && *v29 == 34)
                {
                  *(this + 1) = v29 + 1;
                  goto LABEL_81;
                }
              }
            }
          }

          else
          {
            if (v7 == 3)
            {
              if (v8 != 2)
              {
                goto LABEL_43;
              }

              goto LABEL_67;
            }

            if (v7 != 4)
            {
              if (v7 != 5 || v8 != 2)
              {
                goto LABEL_43;
              }

              goto LABEL_95;
            }

            if (v8 != 2)
            {
              goto LABEL_43;
            }

LABEL_81:
            *(a1 + 96) |= 8u;
            v30 = *(a1 + 24);
            if (!v30)
            {
              operator new();
            }

            v93 = 0;
            v31 = *(this + 1);
            if (v31 >= *(this + 2) || *v31 < 0)
            {
              if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v93))
              {
                return 0;
              }
            }

            else
            {
              v93 = *v31;
              *(this + 1) = v31 + 1;
            }

            v32 = *(this + 14);
            v33 = *(this + 15);
            *(this + 14) = v32 + 1;
            if (v32 >= v33)
            {
              return 0;
            }

            wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this);
            if (!sub_2453C0590(v30, this, v34) || *(this + 36) != 1)
            {
              return 0;
            }

            wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this);
            v35 = *(this + 14);
            v19 = __OFSUB__(v35, 1);
            v36 = v35 - 1;
            if (v36 < 0 == v19)
            {
              *(this + 14) = v36;
            }

            v37 = *(this + 1);
            if (v37 < *(this + 2) && *v37 == 42)
            {
              *(this + 1) = v37 + 1;
LABEL_95:
              *(a1 + 96) |= 0x10u;
              v38 = *(a1 + 32);
              if (!v38)
              {
                operator new();
              }

              v93 = 0;
              v39 = *(this + 1);
              if (v39 >= *(this + 2) || *v39 < 0)
              {
                if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v93))
                {
                  return 0;
                }
              }

              else
              {
                v93 = *v39;
                *(this + 1) = v39 + 1;
              }

              v40 = *(this + 14);
              v41 = *(this + 15);
              *(this + 14) = v40 + 1;
              if (v40 >= v41)
              {
                return 0;
              }

              wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this);
              if (!sub_2453C0C08(v38, this, v42) || *(this + 36) != 1)
              {
                return 0;
              }

              wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this);
              v43 = *(this + 14);
              v19 = __OFSUB__(v43, 1);
              v44 = v43 - 1;
              if (v44 < 0 == v19)
              {
                *(this + 14) = v44;
              }

              v45 = *(this + 1);
              if (v45 < *(this + 2) && *v45 == 50)
              {
                *(this + 1) = v45 + 1;
LABEL_109:
                *(a1 + 96) |= 0x20u;
                v46 = *(a1 + 40);
                if (!v46)
                {
                  operator new();
                }

                v93 = 0;
                v47 = *(this + 1);
                if (v47 >= *(this + 2) || *v47 < 0)
                {
                  if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v93))
                  {
                    return 0;
                  }
                }

                else
                {
                  v93 = *v47;
                  *(this + 1) = v47 + 1;
                }

                v48 = *(this + 14);
                v49 = *(this + 15);
                *(this + 14) = v48 + 1;
                if (v48 >= v49)
                {
                  return 0;
                }

                wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this);
                if (!sub_2453C12FC(v46, this, v50) || *(this + 36) != 1)
                {
                  return 0;
                }

                wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this);
                v51 = *(this + 14);
                v19 = __OFSUB__(v51, 1);
                v52 = v51 - 1;
                if (v52 < 0 == v19)
                {
                  *(this + 14) = v52;
                }

                v53 = *(this + 1);
                if (v53 < *(this + 2) && *v53 == 58)
                {
                  *(this + 1) = v53 + 1;
                  goto LABEL_123;
                }
              }
            }
          }
        }

        if (TagFallback >> 3 <= 8)
        {
          break;
        }

        if (v7 == 9)
        {
          if (v8 != 2)
          {
            goto LABEL_43;
          }

LABEL_151:
          *(a1 + 96) |= 0x100u;
          v70 = *(a1 + 64);
          if (!v70)
          {
            operator new();
          }

          v93 = 0;
          v71 = *(this + 1);
          if (v71 >= *(this + 2) || *v71 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v93))
            {
              return 0;
            }
          }

          else
          {
            v93 = *v71;
            *(this + 1) = v71 + 1;
          }

          v72 = *(this + 14);
          v73 = *(this + 15);
          *(this + 14) = v72 + 1;
          if (v72 >= v73)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this);
          if (!sub_2453C26B8(v70, this, v74) || *(this + 36) != 1)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this);
          v75 = *(this + 14);
          v19 = __OFSUB__(v75, 1);
          v76 = v75 - 1;
          if (v76 < 0 == v19)
          {
            *(this + 14) = v76;
          }

          v77 = *(this + 1);
          if (v77 < *(this + 2) && *v77 == 82)
          {
            *(this + 1) = v77 + 1;
LABEL_165:
            *(a1 + 96) |= 0x200u;
            v78 = *(a1 + 72);
            if (!v78)
            {
              operator new();
            }

            v93 = 0;
            v79 = *(this + 1);
            if (v79 >= *(this + 2) || *v79 < 0)
            {
              if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v93))
              {
                return 0;
              }
            }

            else
            {
              v93 = *v79;
              *(this + 1) = v79 + 1;
            }

            v80 = *(this + 14);
            v81 = *(this + 15);
            *(this + 14) = v80 + 1;
            if (v80 >= v81)
            {
              return 0;
            }

            wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this);
            if (!sub_2453C30F4(v78, this, v82) || *(this + 36) != 1)
            {
              return 0;
            }

            wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this);
            v83 = *(this + 14);
            v19 = __OFSUB__(v83, 1);
            v84 = v83 - 1;
            if (v84 < 0 == v19)
            {
              *(this + 14) = v84;
            }

            v85 = *(this + 1);
            if (v85 < *(this + 2) && *v85 == 90)
            {
              *(this + 1) = v85 + 1;
              goto LABEL_179;
            }
          }
        }

        else
        {
          if (v7 == 10)
          {
            if (v8 == 2)
            {
              goto LABEL_165;
            }

            goto LABEL_43;
          }

          if (v7 != 11 || v8 != 2)
          {
            goto LABEL_43;
          }

LABEL_179:
          *(a1 + 96) |= 0x400u;
          v86 = *(a1 + 80);
          if (!v86)
          {
            operator new();
          }

          v93 = 0;
          v87 = *(this + 1);
          if (v87 >= *(this + 2) || *v87 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v93))
            {
              return 0;
            }
          }

          else
          {
            v93 = *v87;
            *(this + 1) = v87 + 1;
          }

          v88 = *(this + 14);
          v89 = *(this + 15);
          *(this + 14) = v88 + 1;
          if (v88 >= v89)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this);
          if (!sub_2453BF824(v86, this, v90) || *(this + 36) != 1)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this);
          v91 = *(this + 14);
          v19 = __OFSUB__(v91, 1);
          v92 = v91 - 1;
          if (v92 < 0 == v19)
          {
            *(this + 14) = v92;
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

      if (v7 == 6)
      {
        if (v8 != 2)
        {
          goto LABEL_43;
        }

        goto LABEL_109;
      }

      if (v7 != 7)
      {
        break;
      }

      if (v8 != 2)
      {
        goto LABEL_43;
      }

LABEL_123:
      *(a1 + 96) |= 0x40u;
      v54 = *(a1 + 48);
      if (!v54)
      {
        operator new();
      }

      v93 = 0;
      v55 = *(this + 1);
      if (v55 >= *(this + 2) || *v55 < 0)
      {
        if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v93))
        {
          return 0;
        }
      }

      else
      {
        v93 = *v55;
        *(this + 1) = v55 + 1;
      }

      v56 = *(this + 14);
      v57 = *(this + 15);
      *(this + 14) = v56 + 1;
      if (v56 >= v57)
      {
        return 0;
      }

      wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this);
      if (!sub_2453C1948(v54, this, v58) || *(this + 36) != 1)
      {
        return 0;
      }

      wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this);
      v59 = *(this + 14);
      v19 = __OFSUB__(v59, 1);
      v60 = v59 - 1;
      if (v60 < 0 == v19)
      {
        *(this + 14) = v60;
      }

      v61 = *(this + 1);
      if (v61 < *(this + 2) && *v61 == 66)
      {
        *(this + 1) = v61 + 1;
LABEL_137:
        *(a1 + 96) |= 0x80u;
        v62 = *(a1 + 56);
        if (!v62)
        {
          operator new();
        }

        v93 = 0;
        v63 = *(this + 1);
        if (v63 >= *(this + 2) || *v63 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v93))
          {
            return 0;
          }
        }

        else
        {
          v93 = *v63;
          *(this + 1) = v63 + 1;
        }

        v64 = *(this + 14);
        v65 = *(this + 15);
        *(this + 14) = v64 + 1;
        if (v64 >= v65)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this);
        if (!sub_2453C1F94(v62, this, v66) || *(this + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this);
        v67 = *(this + 14);
        v19 = __OFSUB__(v67, 1);
        v68 = v67 - 1;
        if (v68 < 0 == v19)
        {
          *(this + 14) = v68;
        }

        v69 = *(this + 1);
        if (v69 < *(this + 2) && *v69 == 74)
        {
          *(this + 1) = v69 + 1;
          goto LABEL_151;
        }
      }
    }

    if (v7 == 8 && v8 == 2)
    {
      goto LABEL_137;
    }

LABEL_43:
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

uint64_t sub_2453C4B14(uint64_t result, const wireless_diagnostics::google::protobuf::MessageLite *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = result;
  v6 = *(result + 96);
  if (v6)
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(1, *(result + 88), a2, a4);
    v6 = *(v5 + 96);
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

  v7 = *(v5 + 8);
  if (!v7)
  {
    sub_2453BD76C();
    v7 = *(qword_2813CE880 + 8);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(2, v7, a2, a4);
  v6 = *(v5 + 96);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_20;
  }

LABEL_17:
  v8 = *(v5 + 16);
  if (!v8)
  {
    sub_2453BD76C();
    v8 = *(qword_2813CE880 + 16);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(3, v8, a2, a4);
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

LABEL_20:
  v9 = *(v5 + 24);
  if (!v9)
  {
    sub_2453BD76C();
    v9 = *(qword_2813CE880 + 24);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(4, v9, a2, a4);
  v6 = *(v5 + 96);
  if ((v6 & 0x10) == 0)
  {
LABEL_6:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_26;
  }

LABEL_23:
  v10 = *(v5 + 32);
  if (!v10)
  {
    sub_2453BD76C();
    v10 = *(qword_2813CE880 + 32);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(5, v10, a2, a4);
  v6 = *(v5 + 96);
  if ((v6 & 0x20) == 0)
  {
LABEL_7:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_29;
  }

LABEL_26:
  v11 = *(v5 + 40);
  if (!v11)
  {
    sub_2453BD76C();
    v11 = *(qword_2813CE880 + 40);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(6, v11, a2, a4);
  v6 = *(v5 + 96);
  if ((v6 & 0x40) == 0)
  {
LABEL_8:
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_32;
  }

LABEL_29:
  v12 = *(v5 + 48);
  if (!v12)
  {
    sub_2453BD76C();
    v12 = *(qword_2813CE880 + 48);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(7, v12, a2, a4);
  v6 = *(v5 + 96);
  if ((v6 & 0x80) == 0)
  {
LABEL_9:
    if ((v6 & 0x100) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_35;
  }

LABEL_32:
  v13 = *(v5 + 56);
  if (!v13)
  {
    sub_2453BD76C();
    v13 = *(qword_2813CE880 + 56);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(8, v13, a2, a4);
  v6 = *(v5 + 96);
  if ((v6 & 0x100) == 0)
  {
LABEL_10:
    if ((v6 & 0x200) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_38;
  }

LABEL_35:
  v14 = *(v5 + 64);
  if (!v14)
  {
    sub_2453BD76C();
    v14 = *(qword_2813CE880 + 64);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(9, v14, a2, a4);
  v6 = *(v5 + 96);
  if ((v6 & 0x200) == 0)
  {
LABEL_11:
    if ((v6 & 0x400) == 0)
    {
      return result;
    }

    goto LABEL_41;
  }

LABEL_38:
  v15 = *(v5 + 72);
  if (!v15)
  {
    sub_2453BD76C();
    v15 = *(qword_2813CE880 + 72);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0xA, v15, a2, a4);
  if ((*(v5 + 96) & 0x400) != 0)
  {
LABEL_41:
    v16 = *(v5 + 80);
    if (!v16)
    {
      sub_2453BD76C();
      v16 = *(qword_2813CE880 + 80);
    }

    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0xB, v16, a2, a4);
  }

  return result;
}

uint64_t sub_2453C4D48(uint64_t a1, unsigned int a2)
{
  v3 = *(a1 + 96);
  if (!v3)
  {
    v4 = 0;
    goto LABEL_51;
  }

  if (v3)
  {
    v5 = *(a1 + 88);
    if ((v5 & 0x80000000) != 0)
    {
      v4 = 11;
      if ((v3 & 2) == 0)
      {
        goto LABEL_18;
      }
    }

    else if (v5 >= 0x80)
    {
      v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5) + 1;
      v3 = *(a1 + 96);
      if ((v3 & 2) == 0)
      {
        goto LABEL_18;
      }
    }

    else
    {
      v4 = 2;
      if ((v3 & 2) == 0)
      {
        goto LABEL_18;
      }
    }
  }

  else
  {
    v4 = 0;
    if ((v3 & 2) == 0)
    {
      goto LABEL_18;
    }
  }

  v6 = *(a1 + 8);
  if (!v6)
  {
    sub_2453BD76C();
    v6 = *(qword_2813CE880 + 8);
  }

  v7 = 2 * (*(v6 + 16) & 1) + (*(v6 + 16) & 2) + ((*(v6 + 16) >> 1) & 2) + ((*(v6 + 16) >> 2) & 2);
  if (!*(v6 + 16))
  {
    v7 = 0;
  }

  *(v6 + 12) = v7;
  v4 = (v4 + v7 + 2);
  v3 = *(a1 + 96);
LABEL_18:
  if ((v3 & 4) != 0)
  {
    v8 = *(a1 + 16);
    if (!v8)
    {
      sub_2453BD76C();
      v8 = *(qword_2813CE880 + 16);
    }

    v4 = v4 + sub_2453C028C(v8) + 2;
    v3 = *(a1 + 96);
    if ((v3 & 8) == 0)
    {
LABEL_20:
      if ((v3 & 0x10) == 0)
      {
        goto LABEL_21;
      }

      goto LABEL_33;
    }
  }

  else if ((v3 & 8) == 0)
  {
    goto LABEL_20;
  }

  v9 = *(a1 + 24);
  if (!v9)
  {
    sub_2453BD76C();
    v9 = *(qword_2813CE880 + 24);
  }

  v10 = 2 * (*(v9 + 16) & 1) + (*(v9 + 16) & 2) + ((*(v9 + 16) >> 1) & 2) + ((*(v9 + 16) >> 2) & 2);
  if (!*(v9 + 16))
  {
    v10 = 0;
  }

  *(v9 + 12) = v10;
  v4 = (v4 + v10 + 2);
  v3 = *(a1 + 96);
  if ((v3 & 0x10) == 0)
  {
LABEL_21:
    if ((v3 & 0x20) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_36;
  }

LABEL_33:
  v11 = *(a1 + 32);
  if (!v11)
  {
    sub_2453BD76C();
    v11 = *(qword_2813CE880 + 32);
  }

  v4 = v4 + sub_2453C0FF8(v11) + 2;
  v3 = *(a1 + 96);
  if ((v3 & 0x20) == 0)
  {
LABEL_22:
    if ((v3 & 0x40) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_41;
  }

LABEL_36:
  v12 = *(a1 + 40);
  if (!v12)
  {
    sub_2453BD76C();
    v12 = *(qword_2813CE880 + 40);
  }

  v13 = 2 * (*(v12 + 16) & 1) + (*(v12 + 16) & 2) + ((*(v12 + 16) >> 1) & 2) + ((*(v12 + 16) >> 2) & 2);
  if (!*(v12 + 16))
  {
    v13 = 0;
  }

  *(v12 + 12) = v13;
  v4 = (v4 + v13 + 2);
  v3 = *(a1 + 96);
  if ((v3 & 0x40) == 0)
  {
LABEL_23:
    if ((v3 & 0x80) == 0)
    {
      goto LABEL_51;
    }

    goto LABEL_46;
  }

LABEL_41:
  v14 = *(a1 + 48);
  if (!v14)
  {
    sub_2453BD76C();
    v14 = *(qword_2813CE880 + 48);
  }

  v15 = 2 * (*(v14 + 16) & 1) + (*(v14 + 16) & 2) + ((*(v14 + 16) >> 1) & 2) + ((*(v14 + 16) >> 2) & 2);
  if (!*(v14 + 16))
  {
    v15 = 0;
  }

  *(v14 + 12) = v15;
  v4 = (v4 + v15 + 2);
  v3 = *(a1 + 96);
  if ((v3 & 0x80) != 0)
  {
LABEL_46:
    v16 = *(a1 + 56);
    if (!v16)
    {
      sub_2453BD76C();
      v16 = *(qword_2813CE880 + 56);
    }

    v17 = 2 * (*(v16 + 16) & 1) + (*(v16 + 16) & 2) + ((*(v16 + 16) >> 1) & 2) + ((*(v16 + 16) >> 2) & 2);
    if (!*(v16 + 16))
    {
      v17 = 0;
    }

    *(v16 + 12) = v17;
    v4 = (v4 + v17 + 2);
    v3 = *(a1 + 96);
  }

LABEL_51:
  if ((v3 & 0xFF00) == 0)
  {
    goto LABEL_69;
  }

  if ((v3 & 0x100) != 0)
  {
    v18 = *(a1 + 64);
    if (!v18)
    {
      sub_2453BD76C();
      v18 = *(qword_2813CE880 + 64);
    }

    v4 = v4 + sub_2453C2DC4(v18) + 2;
    v3 = *(a1 + 96);
    if ((v3 & 0x200) == 0)
    {
LABEL_54:
      if ((v3 & 0x400) == 0)
      {
        goto LABEL_69;
      }

      goto LABEL_64;
    }
  }

  else if ((v3 & 0x200) == 0)
  {
    goto LABEL_54;
  }

  v19 = *(a1 + 72);
  if (!v19)
  {
    sub_2453BD76C();
    v19 = *(qword_2813CE880 + 72);
  }

  v20 = 2 * (*(v19 + 16) & 1) + (*(v19 + 16) & 2) + ((*(v19 + 16) >> 1) & 2);
  if (!*(v19 + 16))
  {
    v20 = 0;
  }

  *(v19 + 12) = v20;
  v4 = (v4 + v20 + 2);
  if ((*(a1 + 96) & 0x400) != 0)
  {
LABEL_64:
    v21 = *(a1 + 80);
    if (!v21)
    {
      sub_2453BD76C();
      v21 = *(qword_2813CE880 + 80);
    }

    v22 = 2 * (*(v21 + 16) & 1) + (*(v21 + 16) & 2) + ((*(v21 + 16) >> 1) & 2) + ((*(v21 + 16) >> 2) & 2);
    if (!*(v21 + 16))
    {
      v22 = 0;
    }

    *(v21 + 12) = v22;
    v4 = (v4 + v22 + 2);
  }

LABEL_69:
  *(a1 + 92) = v4;
  return v4;
}

void sub_2453C50EC(uint64_t a1, void *lpsrc)
{
  if (!__dynamic_cast(lpsrc, MEMORY[0x277D82C38], &unk_285854950, 0))
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  sub_2453C3490(a1, lpsrc);
}

double sub_2453C51A8(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v7);
  }

  LOBYTE(v5) = *(a2 + 32);
  if (v5)
  {
    if (*(a2 + 32))
    {
      result = *(a2 + 8);
      *(a1 + 32) |= 1u;
      *(a1 + 8) = result;
      v5 = *(a2 + 32);
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

    else if ((*(a2 + 32) & 2) == 0)
    {
      goto LABEL_6;
    }

    result = *(a2 + 16);
    *(a1 + 32) |= 2u;
    *(a1 + 16) = result;
    if ((*(a2 + 32) & 4) == 0)
    {
      return result;
    }

LABEL_7:
    v6 = *(a2 + 24);
    *(a1 + 32) |= 4u;
    *(a1 + 24) = v6;
  }

  return result;
}

void sub_2453C527C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_2453C5294(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = &unk_285853748;
  sub_2453BD76C();

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);
}

void sub_2453C52F0(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  sub_2453C5294(a1);

  JUMPOUT(0x245D6A0D0);
}

uint64_t sub_2453C537C(uint64_t result)
{
  if (*(result + 32))
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
  }

  *(result + 32) = 0;
  return result;
}

uint64_t sub_2453C5394(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormatLite *this, unsigned int a3)
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
        if (TagFallback >> 3 != 3)
        {
          break;
        }

        if ((TagFallback & 7) != 0)
        {
          goto LABEL_20;
        }

        v12 = *(this + 1);
        v10 = *(this + 2);
LABEL_24:
        v16[0] = 0;
        if (v12 >= v10 || (v13 = *v12, (v13 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v16);
          if (!result)
          {
            return result;
          }

          v13 = v16[0];
          v14 = *(this + 1);
          v10 = *(this + 2);
        }

        else
        {
          v14 = v12 + 1;
          *(this + 1) = v14;
        }

        *(a1 + 24) = v13 != 0;
        *(a1 + 32) |= 4u;
        if (v14 == v10 && (*(this + 11) || *(this + 6) == *(this + 10)))
        {
          *(this + 8) = 0;
          result = 1;
          *(this + 36) = 1;
          return result;
        }
      }

      if (v7 == 2)
      {
        break;
      }

      if (v7 != 1 || v8 != 1)
      {
        goto LABEL_20;
      }

      *v16 = 0;
      if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v16) & 1) == 0)
      {
        return 0;
      }

      *(a1 + 8) = *v16;
      *(a1 + 32) |= 1u;
      v9 = *(this + 1);
      if (v9 < *(this + 2) && *v9 == 17)
      {
        *(this + 1) = v9 + 1;
LABEL_15:
        *v16 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v16) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 16) = *v16;
        *(a1 + 32) |= 2u;
        v11 = *(this + 1);
        v10 = *(this + 2);
        if (v11 < v10 && *v11 == 24)
        {
          v12 = v11 + 1;
          *(this + 1) = v12;
          goto LABEL_24;
        }
      }
    }

    if (v8 == 1)
    {
      goto LABEL_15;
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

uint64_t sub_2453C5570(uint64_t result, uint64_t a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
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
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(2, a2, *(v5 + 16), a3);
    if ((*(v5 + 32) & 4) == 0)
    {
      return result;
    }

    goto LABEL_7;
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(1, a2, *(result + 8), a3);
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
  v7 = *(v5 + 24);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(3, v7, a2, a4);
}

uint64_t sub_2453C55FC(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = ((v1 << 31) >> 31) & 9;
  if ((v1 & 2) != 0)
  {
    v2 += 9;
  }

  v3 = v2 + ((v1 >> 1) & 2);
  if (*(a1 + 32))
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  *(a1 + 28) = v4;
  return v4;
}

double sub_2453C5638(uint64_t a1, void *lpsrc)
{
  if (!__dynamic_cast(lpsrc, MEMORY[0x277D82C38], &unk_285854968, 0))
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  return sub_2453C51A8(a1, lpsrc);
}

double sub_2453C56F4(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v7);
  }

  LOBYTE(v5) = *(a2 + 32);
  if (v5)
  {
    if (*(a2 + 32))
    {
      result = *(a2 + 8);
      *(a1 + 32) |= 1u;
      *(a1 + 8) = result;
      v5 = *(a2 + 32);
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

    else if ((*(a2 + 32) & 2) == 0)
    {
      goto LABEL_6;
    }

    result = *(a2 + 16);
    *(a1 + 32) |= 2u;
    *(a1 + 16) = result;
    if ((*(a2 + 32) & 4) == 0)
    {
      return result;
    }

LABEL_7:
    v6 = *(a2 + 24);
    *(a1 + 32) |= 4u;
    *(a1 + 24) = v6;
  }

  return result;
}

void sub_2453C57C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_2453C57E0(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = &unk_2858537C0;
  sub_2453BD76C();

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);
}

void sub_2453C583C(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  sub_2453C57E0(a1);

  JUMPOUT(0x245D6A0D0);
}

uint64_t sub_2453C58C8(uint64_t result)
{
  if (*(result + 32))
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
  }

  *(result + 32) = 0;
  return result;
}

uint64_t sub_2453C58E0(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormatLite *this, unsigned int a3)
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
        if (TagFallback >> 3 != 3)
        {
          break;
        }

        if ((TagFallback & 7) != 0)
        {
          goto LABEL_20;
        }

        v12 = *(this + 1);
        v10 = *(this + 2);
LABEL_24:
        v16[0] = 0;
        if (v12 >= v10 || (v13 = *v12, (v13 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v16);
          if (!result)
          {
            return result;
          }

          v13 = v16[0];
          v14 = *(this + 1);
          v10 = *(this + 2);
        }

        else
        {
          v14 = v12 + 1;
          *(this + 1) = v14;
        }

        *(a1 + 24) = v13 != 0;
        *(a1 + 32) |= 4u;
        if (v14 == v10 && (*(this + 11) || *(this + 6) == *(this + 10)))
        {
          *(this + 8) = 0;
          result = 1;
          *(this + 36) = 1;
          return result;
        }
      }

      if (v7 == 2)
      {
        break;
      }

      if (v7 != 1 || v8 != 1)
      {
        goto LABEL_20;
      }

      *v16 = 0;
      if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v16) & 1) == 0)
      {
        return 0;
      }

      *(a1 + 8) = *v16;
      *(a1 + 32) |= 1u;
      v9 = *(this + 1);
      if (v9 < *(this + 2) && *v9 == 17)
      {
        *(this + 1) = v9 + 1;
LABEL_15:
        *v16 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v16) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 16) = *v16;
        *(a1 + 32) |= 2u;
        v11 = *(this + 1);
        v10 = *(this + 2);
        if (v11 < v10 && *v11 == 24)
        {
          v12 = v11 + 1;
          *(this + 1) = v12;
          goto LABEL_24;
        }
      }
    }

    if (v8 == 1)
    {
      goto LABEL_15;
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

uint64_t sub_2453C5ABC(uint64_t result, uint64_t a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
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
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(2, a2, *(v5 + 16), a3);
    if ((*(v5 + 32) & 4) == 0)
    {
      return result;
    }

    goto LABEL_7;
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(1, a2, *(result + 8), a3);
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
  v7 = *(v5 + 24);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(3, v7, a2, a4);
}

uint64_t sub_2453C5B48(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = ((v1 << 31) >> 31) & 9;
  if ((v1 & 2) != 0)
  {
    v2 += 9;
  }

  v3 = v2 + ((v1 >> 1) & 2);
  if (*(a1 + 32))
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  *(a1 + 28) = v4;
  return v4;
}

double sub_2453C5B84(uint64_t a1, void *lpsrc)
{
  if (!__dynamic_cast(lpsrc, MEMORY[0x277D82C38], &unk_285854980, 0))
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  return sub_2453C56F4(a1, lpsrc);
}

void sub_2453C5C40(uint64_t a1, uint64_t a2)
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

        goto LABEL_12;
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
        return;
      }

      goto LABEL_8;
    }

LABEL_12:
    v8 = *(a2 + 24);
    *(a1 + 32) |= 4u;
    *(a1 + 24) = v8;
    if ((*(a2 + 32) & 8) == 0)
    {
      return;
    }

LABEL_8:
    v5 = *(a2 + 25);
    *(a1 + 32) |= 8u;
    *(a1 + 25) = v5;
  }
}

void sub_2453C5D34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_2453C5D4C(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = &unk_285853838;
  sub_2453BD76C();

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);
}

void sub_2453C5DA8(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  sub_2453C5D4C(a1);

  JUMPOUT(0x245D6A0D0);
}

uint64_t sub_2453C5E34(uint64_t result)
{
  if (*(result + 32))
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
  }

  *(result + 32) = 0;
  return result;
}

uint64_t sub_2453C5E4C(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormatLite *this, unsigned int a3)
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

        if (v7 != 3)
        {
          if (v7 == 4 && (TagFallback & 7) == 0)
          {
            v10 = *(this + 1);
            v9 = *(this + 2);
            goto LABEL_37;
          }

          goto LABEL_25;
        }

        if ((TagFallback & 7) != 0)
        {
          goto LABEL_25;
        }

        v13 = *(this + 1);
        v9 = *(this + 2);
LABEL_29:
        v19[0] = 0;
        if (v13 >= v9 || (v14 = *v13, (v14 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v19);
          if (!result)
          {
            return result;
          }

          v14 = v19[0];
          v15 = *(this + 1);
          v9 = *(this + 2);
        }

        else
        {
          v15 = v13 + 1;
          *(this + 1) = v15;
        }

        *(a1 + 24) = v14 != 0;
        *(a1 + 32) |= 4u;
        if (v15 < v9 && *v15 == 32)
        {
          v10 = v15 + 1;
          *(this + 1) = v10;
LABEL_37:
          v19[0] = 0;
          if (v10 >= v9 || (v17 = *v10, (v17 & 0x80000000) != 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v19);
            if (!result)
            {
              return result;
            }

            v17 = v19[0];
            v18 = *(this + 1);
            v9 = *(this + 2);
          }

          else
          {
            v18 = v10 + 1;
            *(this + 1) = v18;
          }

          *(a1 + 25) = v17 != 0;
          *(a1 + 32) |= 8u;
          if (v18 == v9 && (*(this + 11) || *(this + 6) == *(this + 10)))
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

      if (v8 != 1)
      {
        goto LABEL_25;
      }

      *v19 = 0;
      if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v19) & 1) == 0)
      {
        return 0;
      }

      *(a1 + 8) = *v19;
      *(a1 + 32) |= 1u;
      v11 = *(this + 1);
      if (v11 < *(this + 2) && *v11 == 17)
      {
        *(this + 1) = v11 + 1;
LABEL_20:
        *v19 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v19) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 16) = *v19;
        *(a1 + 32) |= 2u;
        v12 = *(this + 1);
        v9 = *(this + 2);
        if (v12 < v9 && *v12 == 24)
        {
          v13 = v12 + 1;
          *(this + 1) = v13;
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

  while ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(this, TagFallback) & 1) != 0);
  return 0;
}

uint64_t sub_2453C60B0(uint64_t result, uint64_t a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = result;
  v6 = *(result + 32);
  if (v6)
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(1, a2, *(result + 8), a3);
    v6 = *(v5 + 32);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

LABEL_8:
      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(3, *(v5 + 24), a2, a4);
      if ((*(v5 + 32) & 8) == 0)
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
  v6 = *(v5 + 32);
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
  v7 = *(v5 + 25);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(4, v7, a2, a4);
}

uint64_t sub_2453C6158(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = ((v1 << 31) >> 31) & 9;
  if ((v1 & 2) != 0)
  {
    v2 += 9;
  }

  v3 = ((v1 >> 2) & 2) + ((v1 >> 1) & 2) + v2;
  if (*(a1 + 32))
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  *(a1 + 28) = v4;
  return v4;
}

void sub_2453C61A0(uint64_t a1, void *lpsrc)
{
  if (!__dynamic_cast(lpsrc, MEMORY[0x277D82C38], &unk_285854998, 0))
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  sub_2453C5C40(a1, lpsrc);
}

double sub_2453C625C(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v9);
  }

  LOBYTE(v5) = *(a2 + 48);
  if (v5)
  {
    if (*(a2 + 48))
    {
      v7 = *(a2 + 8);
      *(a1 + 48) |= 1u;
      *(a1 + 8) = v7;
      v5 = *(a2 + 48);
      if ((v5 & 2) == 0)
      {
LABEL_6:
        if ((v5 & 4) == 0)
        {
          goto LABEL_7;
        }

        goto LABEL_13;
      }
    }

    else if ((*(a2 + 48) & 2) == 0)
    {
      goto LABEL_6;
    }

    v8 = *(a2 + 16);
    *(a1 + 48) |= 2u;
    *(a1 + 16) = v8;
    v5 = *(a2 + 48);
    if ((v5 & 4) == 0)
    {
LABEL_7:
      if ((v5 & 8) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_14;
    }

LABEL_13:
    result = *(a2 + 24);
    *(a1 + 48) |= 4u;
    *(a1 + 24) = result;
    v5 = *(a2 + 48);
    if ((v5 & 8) == 0)
    {
LABEL_8:
      if ((v5 & 0x10) == 0)
      {
        return result;
      }

      goto LABEL_9;
    }

LABEL_14:
    result = *(a2 + 32);
    *(a1 + 48) |= 8u;
    *(a1 + 32) = result;
    if ((*(a2 + 48) & 0x10) == 0)
    {
      return result;
    }

LABEL_9:
    v6 = *(a2 + 40);
    *(a1 + 48) |= 0x10u;
    *(a1 + 40) = v6;
  }

  return result;
}

void sub_2453C6370(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_2453C6388(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = &unk_2858538B0;
  sub_2453BD76C();

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);
}

void sub_2453C63E4(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  sub_2453C6388(a1);

  JUMPOUT(0x245D6A0D0);
}

uint64_t sub_2453C6478(uint64_t result)
{
  if (*(result + 48))
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
  }

  *(result + 48) = 0;
  return result;
}

uint64_t sub_2453C6498(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormatLite *this, unsigned int a3)
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

          v12 = *(this + 1);
          v11 = *(this + 2);
          goto LABEL_32;
        }

        if ((TagFallback & 7) != 0)
        {
          goto LABEL_21;
        }

        v13 = *(this + 1);
        v11 = *(this + 2);
        if (v13 >= v11 || (v14 = *v13, v14 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(this, (a1 + 8));
          if (!result)
          {
            return result;
          }

          v15 = *(this + 1);
          v11 = *(this + 2);
        }

        else
        {
          *(a1 + 8) = v14;
          v15 = v13 + 1;
          *(this + 1) = v15;
        }

        *(a1 + 48) |= 1u;
        if (v15 < v11 && *v15 == 16)
        {
          v12 = v15 + 1;
          *(this + 1) = v12;
LABEL_32:
          if (v12 >= v11 || (v17 = *v12, v17 < 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(this, (a1 + 16));
            if (!result)
            {
              return result;
            }

            v18 = *(this + 1);
            v11 = *(this + 2);
          }

          else
          {
            *(a1 + 16) = v17;
            v18 = v12 + 1;
            *(this + 1) = v18;
          }

          *(a1 + 48) |= 2u;
          if (v18 < v11 && *v18 == 25)
          {
            *(this + 1) = v18 + 1;
LABEL_40:
            *v23 = 0;
            if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v23) & 1) == 0)
            {
              return 0;
            }

            *(a1 + 24) = *v23;
            *(a1 + 48) |= 4u;
            v19 = *(this + 1);
            if (v19 < *(this + 2) && *v19 == 33)
            {
              *(this + 1) = v19 + 1;
              goto LABEL_44;
            }
          }
        }
      }

      if (v7 == 3)
      {
        if (v8 != 1)
        {
          goto LABEL_21;
        }

        goto LABEL_40;
      }

      if (v7 != 4)
      {
        break;
      }

      if (v8 != 1)
      {
        goto LABEL_21;
      }

LABEL_44:
      *v23 = 0;
      if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v23) & 1) == 0)
      {
        return 0;
      }

      *(a1 + 32) = *v23;
      *(a1 + 48) |= 8u;
      v20 = *(this + 1);
      v9 = *(this + 2);
      if (v20 < v9 && *v20 == 40)
      {
        v10 = v20 + 1;
        *(this + 1) = v10;
LABEL_48:
        v23[0] = 0;
        if (v10 >= v9 || (v21 = *v10, (v21 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v23);
          if (!result)
          {
            return result;
          }

          v21 = v23[0];
          v22 = *(this + 1);
          v9 = *(this + 2);
        }

        else
        {
          v22 = v10 + 1;
          *(this + 1) = v22;
        }

        *(a1 + 40) = v21 != 0;
        *(a1 + 48) |= 0x10u;
        if (v22 == v9 && (*(this + 11) || *(this + 6) == *(this + 10)))
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
      v10 = *(this + 1);
      v9 = *(this + 2);
      goto LABEL_48;
    }

LABEL_21:
    if (v8 == 4)
    {
      return 1;
    }
  }

  while ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(this, TagFallback) & 1) != 0);
  return 0;
}

uint64_t sub_2453C675C(uint64_t result, uint64_t a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = result;
  v6 = *(result + 48);
  if (v6)
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(1, *(result + 8), a2, a4);
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

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(2, *(v5 + 16), a2, a4);
  v6 = *(v5 + 48);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

LABEL_10:
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(4, a2, *(v5 + 32), a3);
    if ((*(v5 + 48) & 0x10) == 0)
    {
      return result;
    }

    goto LABEL_11;
  }

LABEL_9:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(3, a2, *(v5 + 24), a3);
  v6 = *(v5 + 48);
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
  v7 = *(v5 + 40);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(5, v7, a2, a4);
}

uint64_t sub_2453C6820(uint64_t a1, unint64_t a2)
{
  v3 = *(a1 + 48);
  if (!v3)
  {
    result = 0;
    goto LABEL_13;
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

  v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(a1 + 8)) + 1;
  v3 = *(a1 + 48);
  if ((v3 & 2) != 0)
  {
LABEL_7:
    v4 += wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(a1 + 16)) + 1;
    v3 = *(a1 + 48);
  }

LABEL_8:
  v6 = v4 + 9;
  if ((v3 & 4) == 0)
  {
    v6 = v4;
  }

  if ((v3 & 8) != 0)
  {
    v6 += 9;
  }

  result = v6 + ((v3 >> 3) & 2);
LABEL_13:
  *(a1 + 44) = result;
  return result;
}

double sub_2453C68B4(uint64_t a1, void *lpsrc)
{
  if (!__dynamic_cast(lpsrc, MEMORY[0x277D82C38], &unk_2858549B0, 0))
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  return sub_2453C625C(a1, lpsrc);
}

double sub_2453C6970(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v10);
  }

  LOBYTE(v5) = *(a2 + 32);
  if (v5)
  {
    if (*(a2 + 32))
    {
      *(a1 + 32) |= 1u;
      v6 = *(a1 + 8);
      if (!v6)
      {
        operator new();
      }

      v7 = *(a2 + 8);
      if (!v7)
      {
        sub_2453BD76C();
        v7 = *(qword_2813CE8A8 + 8);
      }

      result = sub_2453C51A8(v6, v7);
      v5 = *(a2 + 32);
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

    else if ((*(a2 + 32) & 2) == 0)
    {
      goto LABEL_6;
    }

    *(a1 + 32) |= 2u;
    v8 = *(a1 + 16);
    if (!v8)
    {
      operator new();
    }

    v9 = *(a2 + 16);
    if (!v9)
    {
      sub_2453BD76C();
      v9 = *(qword_2813CE8A8 + 16);
    }

    result = sub_2453C56F4(v8, v9);
    if ((*(a2 + 32) & 4) != 0)
    {
LABEL_7:
      LODWORD(result) = *(a2 + 24);
      *(a1 + 32) |= 4u;
      *(a1 + 24) = LODWORD(result);
    }
  }

  return result;
}

void sub_2453C6B1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_2453C6B34(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = &unk_285853928;
  sub_2453BD76C();
  if (qword_2813CE8A8 != a1)
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
  }

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);
}

void sub_2453C6BF8(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  sub_2453C6B34(a1);

  JUMPOUT(0x245D6A0D0);
}

uint64_t sub_2453C6C80(uint64_t result)
{
  LOBYTE(v1) = *(result + 32);
  if (v1)
  {
    if (*(result + 32))
    {
      v2 = *(result + 8);
      if (v2)
      {
        if (*(v2 + 32))
        {
          *(v2 + 8) = 0;
          *(v2 + 16) = 0;
          *(v2 + 24) = 0;
        }

        *(v2 + 32) = 0;
        v1 = *(result + 32);
      }
    }

    if ((v1 & 2) != 0)
    {
      v3 = *(result + 16);
      if (v3)
      {
        if (*(v3 + 32))
        {
          *(v3 + 8) = 0;
          *(v3 + 16) = 0;
          *(v3 + 24) = 0;
        }

        *(v3 + 32) = 0;
      }
    }

    *(result + 24) = 0;
  }

  *(result + 32) = 0;
  return result;
}

uint64_t sub_2453C6CD8(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormatLite *this, unsigned int a3)
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
        if (v8 == 5)
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

      *(a1 + 32) |= 1u;
      v9 = *(a1 + 8);
      if (!v9)
      {
        operator new();
      }

      v28 = 0;
      v10 = *(this + 1);
      if (v10 >= *(this + 2) || *v10 < 0)
      {
        if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v28))
        {
          return 0;
        }
      }

      else
      {
        v28 = *v10;
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
      if (!sub_2453C5394(v9, this, v13) || *(this + 36) != 1)
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
        *(a1 + 32) |= 2u;
        v18 = *(a1 + 16);
        if (!v18)
        {
          operator new();
        }

        v29 = 0;
        v19 = *(this + 1);
        if (v19 >= *(this + 2) || *v19 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v29))
          {
            return 0;
          }
        }

        else
        {
          v29 = *v19;
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
        if (!sub_2453C58E0(v18, this, v22) || *(this + 36) != 1)
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
        if (v25 < *(this + 2) && *v25 == 29)
        {
          *(this + 1) = v25 + 1;
LABEL_44:
          v27 = 0;
          if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(this, &v27) & 1) == 0)
          {
            return 0;
          }

          *(a1 + 24) = v27;
          *(a1 + 32) |= 4u;
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

uint64_t sub_2453C7024(uint64_t result, wireless_diagnostics::google::protobuf::MessageLite *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = result;
  v6 = *(result + 32);
  if (v6)
  {
    v7 = *(result + 8);
    if (!v7)
    {
      sub_2453BD76C();
      v7 = *(qword_2813CE8A8 + 8);
    }

    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(1, v7, a2, a4);
    v6 = *(v5 + 32);
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
    sub_2453BD76C();
    v8 = *(qword_2813CE8A8 + 16);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(2, v8, a2, a4);
  if ((*(v5 + 32) & 4) != 0)
  {
LABEL_11:
    v9 = *(v5 + 24);

    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(3, a2, v9, a3);
  }

  return result;
}

uint64_t sub_2453C70D8(uint64_t a1)
{
  LOBYTE(v2) = *(a1 + 32);
  if (!v2)
  {
    result = 0;
    goto LABEL_25;
  }

  if (*(a1 + 32))
  {
    v5 = *(a1 + 8);
    if (!v5)
    {
      sub_2453BD76C();
      v5 = *(qword_2813CE8A8 + 8);
    }

    v6 = *(v5 + 32);
    v7 = ((v6 << 31) >> 31) & 9;
    if ((v6 & 2) != 0)
    {
      v7 += 9;
    }

    v8 = v7 + ((v6 >> 1) & 2);
    if (*(v5 + 32))
    {
      v9 = v8;
    }

    else
    {
      v9 = 0;
    }

    *(v5 + 28) = v9;
    v3 = v9 + 2;
    v2 = *(a1 + 32);
    if ((v2 & 2) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_14;
  }

  v3 = 0;
  if ((*(a1 + 32) & 2) != 0)
  {
LABEL_14:
    v10 = *(a1 + 16);
    if (!v10)
    {
      sub_2453BD76C();
      v10 = *(qword_2813CE8A8 + 16);
    }

    v11 = *(v10 + 32);
    v12 = ((v11 << 31) >> 31) & 9;
    if ((v11 & 2) != 0)
    {
      v12 += 9;
    }

    v13 = v12 + ((v11 >> 1) & 2);
    if (*(v10 + 32))
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }

    *(v10 + 28) = v14;
    v3 += v14 + 2;
    v2 = *(a1 + 32);
  }

LABEL_22:
  if ((v2 & 4) != 0)
  {
    result = v3 + 5;
  }

  else
  {
    result = v3;
  }

LABEL_25:
  *(a1 + 28) = result;
  return result;
}

double sub_2453C71D8(uint64_t a1, void *lpsrc)
{
  if (!__dynamic_cast(lpsrc, MEMORY[0x277D82C38], &unk_2858549C8, 0))
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  return sub_2453C6970(a1, lpsrc);
}

void sub_2453C7294(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v8);
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
      if ((v4 & 2) == 0)
      {
LABEL_6:
        if ((v4 & 4) == 0)
        {
          return;
        }

LABEL_10:
        v7 = *(a2 + 24);
        if (v7 >= 6)
        {
          __assert_rtn("set_full_sv_time_source", "CLPGnssMeasApi.pb.h", 8877, "::CoreGem::CLP::LogEntry::PrivateData::FullSvTimeSource_IsValid(value)");
        }

        *(a1 + 32) |= 4u;
        *(a1 + 24) = v7;
        return;
      }
    }

    else if ((*(a2 + 32) & 2) == 0)
    {
      goto LABEL_6;
    }

    v6 = *(a2 + 16);
    *(a1 + 32) |= 2u;
    *(a1 + 16) = v6;
    if ((*(a2 + 32) & 4) == 0)
    {
      return;
    }

    goto LABEL_10;
  }
}

void sub_2453C7390(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_2453C73A8(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = &unk_2858539A0;
  sub_2453BD76C();

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);
}

void sub_2453C7404(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  sub_2453C73A8(a1);

  JUMPOUT(0x245D6A0D0);
}

uint64_t sub_2453C748C(uint64_t result)
{
  if (*(result + 32))
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
  }

  *(result + 32) = 0;
  return result;
}

uint64_t sub_2453C74A4(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormatLite *this, unsigned int a3)
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
        if (TagFallback >> 3 != 3)
        {
          break;
        }

        if ((TagFallback & 7) != 0)
        {
          goto LABEL_20;
        }

        v12 = *(this + 1);
        v10 = *(this + 2);
LABEL_24:
        v15[0] = 0;
        if (v12 >= v10 || (v13 = *v12, (v13 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v15);
          if (!result)
          {
            return result;
          }

          v13 = v15[0];
        }

        else
        {
          *(this + 1) = v12 + 1;
        }

        if (v13 <= 5)
        {
          *(a1 + 32) |= 4u;
          *(a1 + 24) = v13;
        }

        if (*(this + 1) == *(this + 2) && (*(this + 11) || *(this + 6) == *(this + 10)))
        {
          *(this + 8) = 0;
          result = 1;
          *(this + 36) = 1;
          return result;
        }
      }

      if (v7 == 2)
      {
        break;
      }

      if (v7 != 1 || v8 != 1)
      {
        goto LABEL_20;
      }

      *v15 = 0;
      if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v15) & 1) == 0)
      {
        return 0;
      }

      *(a1 + 8) = *v15;
      *(a1 + 32) |= 1u;
      v9 = *(this + 1);
      if (v9 < *(this + 2) && *v9 == 17)
      {
        *(this + 1) = v9 + 1;
LABEL_15:
        *v15 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v15) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 16) = *v15;
        *(a1 + 32) |= 2u;
        v11 = *(this + 1);
        v10 = *(this + 2);
        if (v11 < v10 && *v11 == 24)
        {
          v12 = v11 + 1;
          *(this + 1) = v12;
          goto LABEL_24;
        }
      }
    }

    if (v8 == 1)
    {
      goto LABEL_15;
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

uint64_t sub_2453C7680(uint64_t result, uint64_t a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
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
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(2, a2, *(v5 + 16), a3);
    if ((*(v5 + 32) & 4) == 0)
    {
      return result;
    }

    goto LABEL_7;
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(1, a2, *(result + 8), a3);
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
  v7 = *(v5 + 24);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(3, v7, a2, a4);
}

uint64_t sub_2453C770C(uint64_t a1, unsigned int a2)
{
  v3 = *(a1 + 32);
  if (*(a1 + 32))
  {
    v4 = (v3 << 31 >> 31) & 9;
    if ((v3 & 2) != 0)
    {
      v5 = v4 + 9;
    }

    else
    {
      v5 = v4;
    }

    if ((v3 & 4) != 0)
    {
      v6 = *(a1 + 24);
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

      v5 = (v7 + v5);
    }
  }

  else
  {
    v5 = 0;
  }

  *(a1 + 28) = v5;
  return v5;
}

void sub_2453C778C(uint64_t a1, void *lpsrc)
{
  if (!__dynamic_cast(lpsrc, MEMORY[0x277D82C38], &unk_2858549E0, 0))
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  sub_2453C7294(a1, lpsrc);
}

float sub_2453C7848(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v6);
  }

  LOBYTE(v5) = *(a2 + 24);
  if (v5)
  {
    if (*(a2 + 24))
    {
      result = *(a2 + 8);
      *(a1 + 24) |= 1u;
      *(a1 + 8) = result;
      v5 = *(a2 + 24);
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

    else if ((*(a2 + 24) & 2) == 0)
    {
      goto LABEL_6;
    }

    result = *(a2 + 12);
    *(a1 + 24) |= 2u;
    *(a1 + 12) = result;
    if ((*(a2 + 24) & 4) == 0)
    {
      return result;
    }

LABEL_7:
    result = *(a2 + 16);
    *(a1 + 24) |= 4u;
    *(a1 + 16) = result;
  }

  return result;
}

void sub_2453C791C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_2453C7934(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = &unk_285853A18;
  sub_2453BD76C();

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);
}

void sub_2453C7990(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  sub_2453C7934(a1);

  JUMPOUT(0x245D6A0D0);
}

uint64_t sub_2453C7A18(uint64_t result)
{
  if (*(result + 24))
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
  }

  *(result + 24) = 0;
  return result;
}

uint64_t sub_2453C7A30(_DWORD *a1, wireless_diagnostics::google::protobuf::internal::WireFormatLite *this, unsigned int a3)
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
        if (TagFallback >> 3 != 3)
        {
          break;
        }

        if (v8 != 5)
        {
          goto LABEL_20;
        }

LABEL_23:
        v12 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(this, &v12) & 1) == 0)
        {
          return 0;
        }

        a1[4] = v12;
        a1[6] |= 4u;
        if (*(this + 1) == *(this + 2) && (*(this + 11) || *(this + 6) == *(this + 10)))
        {
          *(this + 8) = 0;
          result = 1;
          *(this + 36) = 1;
          return result;
        }
      }

      if (v7 == 2)
      {
        break;
      }

      if (v7 != 1 || v8 != 5)
      {
        goto LABEL_20;
      }

      v14 = 0;
      if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(this, &v14) & 1) == 0)
      {
        return 0;
      }

      a1[2] = v14;
      a1[6] |= 1u;
      v9 = *(this + 1);
      if (v9 < *(this + 2) && *v9 == 21)
      {
        *(this + 1) = v9 + 1;
LABEL_15:
        v13 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(this, &v13) & 1) == 0)
        {
          return 0;
        }

        a1[3] = v13;
        a1[6] |= 2u;
        v10 = *(this + 1);
        if (v10 < *(this + 2) && *v10 == 29)
        {
          *(this + 1) = v10 + 1;
          goto LABEL_23;
        }
      }
    }

    if (v8 == 5)
    {
      goto LABEL_15;
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

uint64_t sub_2453C7BE8(uint64_t result, uint64_t a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3)
{
  v4 = result;
  v5 = *(result + 24);
  if ((v5 & 1) == 0)
  {
    if ((v5 & 2) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(2, a2, *(v4 + 12), a3);
    if ((*(v4 + 24) & 4) == 0)
    {
      return result;
    }

    goto LABEL_7;
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(1, a2, *(result + 8), a3);
  v5 = *(v4 + 24);
  if ((v5 & 2) != 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  if ((v5 & 4) == 0)
  {
    return result;
  }

LABEL_7:
  v6 = *(v4 + 16);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(3, a2, v6, a3);
}

uint64_t sub_2453C7C74(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (*(a1 + 24))
  {
    v2 = ((v1 << 31) >> 31) & 5;
    if ((v1 & 2) != 0)
    {
      v2 += 5;
    }

    if ((v1 & 4) != 0)
    {
      v1 = v2 + 5;
    }

    else
    {
      v1 = v2;
    }
  }

  *(a1 + 20) = v1;
  return v1;
}

float sub_2453C7CAC(uint64_t a1, void *lpsrc)
{
  if (!__dynamic_cast(lpsrc, MEMORY[0x277D82C38], &unk_2858549F8, 0))
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  return sub_2453C7848(a1, lpsrc);
}

void sub_2453C7D68(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v31);
  }

  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 88));
  LODWORD(v4) = *(a2 + 96);
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
        wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v31);
      }

      v6 = *(*(a2 + 88) + 8 * v5);
      v7 = *(a1 + 100);
      v8 = *(a1 + 96);
      if (v8 >= v7)
      {
        if (v7 == *(a1 + 104))
        {
          wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 88));
          v7 = *(a1 + 100);
        }

        *(a1 + 100) = v7 + 1;
        operator new();
      }

      v9 = *(a1 + 88);
      *(a1 + 96) = v8 + 1;
      sub_2453C6970(*(v9 + 8 * v8), v6);
      ++v5;
      v4 = *(a2 + 96);
    }

    while (v5 < v4);
  }

  v10 = *(a2 + 116);
  if (!v10)
  {
    goto LABEL_23;
  }

  if (v10)
  {
    v15 = *(a2 + 8);
    *(a1 + 116) |= 1u;
    *(a1 + 8) = v15;
    v10 = *(a2 + 116);
    if ((v10 & 2) == 0)
    {
LABEL_16:
      if ((v10 & 4) == 0)
      {
        goto LABEL_17;
      }

      goto LABEL_39;
    }
  }

  else if ((v10 & 2) == 0)
  {
    goto LABEL_16;
  }

  v16 = *(a2 + 12);
  *(a1 + 116) |= 2u;
  *(a1 + 12) = v16;
  v10 = *(a2 + 116);
  if ((v10 & 4) == 0)
  {
LABEL_17:
    if ((v10 & 8) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_44;
  }

LABEL_39:
  *(a1 + 116) |= 4u;
  v17 = *(a1 + 16);
  if (!v17)
  {
    operator new();
  }

  v18 = *(a2 + 16);
  if (!v18)
  {
    sub_2453BD76C();
    v18 = *(qword_2813CE8C0 + 16);
  }

  sub_2453C7294(v17, v18);
  v10 = *(a2 + 116);
  if ((v10 & 8) == 0)
  {
LABEL_18:
    if ((v10 & 0x10) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_49;
  }

LABEL_44:
  *(a1 + 116) |= 8u;
  v19 = *(a1 + 24);
  if (!v19)
  {
    operator new();
  }

  v20 = *(a2 + 24);
  if (!v20)
  {
    sub_2453BD76C();
    v20 = *(qword_2813CE8C0 + 24);
  }

  sub_2453C7848(v19, v20);
  v10 = *(a2 + 116);
  if ((v10 & 0x10) == 0)
  {
LABEL_19:
    if ((v10 & 0x20) == 0)
    {
      goto LABEL_20;
    }

LABEL_54:
    *(a1 + 116) |= 0x20u;
    v23 = *(a1 + 40);
    if (!v23)
    {
      operator new();
    }

    v24 = *(a2 + 40);
    if (!v24)
    {
      sub_2453BD76C();
      v24 = *(qword_2813CE8C0 + 40);
    }

    sub_2453C7848(v23, v24);
    v10 = *(a2 + 116);
    if ((v10 & 0x40) == 0)
    {
LABEL_21:
      if ((v10 & 0x80) == 0)
      {
        goto LABEL_23;
      }

      goto LABEL_22;
    }

    goto LABEL_59;
  }

LABEL_49:
  *(a1 + 116) |= 0x10u;
  v21 = *(a1 + 32);
  if (!v21)
  {
    operator new();
  }

  v22 = *(a2 + 32);
  if (!v22)
  {
    sub_2453BD76C();
    v22 = *(qword_2813CE8C0 + 32);
  }

  sub_2453C7848(v21, v22);
  v10 = *(a2 + 116);
  if ((v10 & 0x20) != 0)
  {
    goto LABEL_54;
  }

LABEL_20:
  if ((v10 & 0x40) == 0)
  {
    goto LABEL_21;
  }

LABEL_59:
  v25 = *(a2 + 48);
  *(a1 + 116) |= 0x40u;
  *(a1 + 48) = v25;
  v10 = *(a2 + 116);
  if ((v10 & 0x80) != 0)
  {
LABEL_22:
    v11 = *(a2 + 52);
    *(a1 + 116) |= 0x80u;
    *(a1 + 52) = v11;
    v10 = *(a2 + 116);
  }

LABEL_23:
  if ((v10 & 0xFF00) == 0)
  {
    return;
  }

  if ((v10 & 0x100) != 0)
  {
    v12 = *(a2 + 56);
    if (v12 >= 7)
    {
      __assert_rtn("set_sv_time_detection_method", "CLPGnssMeasApi.pb.h", 9230, "::CoreGem::CLP::LogEntry::PrivateData::MeasurementDetectionMethod_IsValid(value)");
    }

    *(a1 + 116) |= 0x100u;
    *(a1 + 56) = v12;
    v10 = *(a2 + 116);
  }

  if ((v10 & 0x200) != 0)
  {
    v13 = *(a2 + 60);
    if (v13 >= 7)
    {
      __assert_rtn("set_frequency_detection_method", "CLPGnssMeasApi.pb.h", 9253, "::CoreGem::CLP::LogEntry::PrivateData::MeasurementDetectionMethod_IsValid(value)");
    }

    *(a1 + 116) |= 0x200u;
    *(a1 + 60) = v13;
    v10 = *(a2 + 116);
  }

  if ((v10 & 0x400) != 0)
  {
    v26 = *(a2 + 64);
    *(a1 + 116) |= 0x400u;
    *(a1 + 64) = v26;
    v10 = *(a2 + 116);
    if ((v10 & 0x800) == 0)
    {
LABEL_32:
      if ((v10 & 0x1000) == 0)
      {
        goto LABEL_33;
      }

      goto LABEL_63;
    }
  }

  else if ((v10 & 0x800) == 0)
  {
    goto LABEL_32;
  }

  v27 = *(a2 + 68);
  *(a1 + 116) |= 0x800u;
  *(a1 + 68) = v27;
  v10 = *(a2 + 116);
  if ((v10 & 0x1000) == 0)
  {
LABEL_33:
    if ((v10 & 0x2000) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_64;
  }

LABEL_63:
  v28 = *(a2 + 72);
  *(a1 + 116) |= 0x1000u;
  *(a1 + 72) = v28;
  v10 = *(a2 + 116);
  if ((v10 & 0x2000) == 0)
  {
LABEL_34:
    if ((v10 & 0x4000) == 0)
    {
      return;
    }

    goto LABEL_35;
  }

LABEL_64:
  v29 = *(a2 + 80);
  *(a1 + 116) |= 0x2000u;
  v30 = *(a1 + 80);
  if (v30 == MEMORY[0x277D82C30])
  {
    operator new();
  }

  std::string::operator=(v30, v29);
  if ((*(a2 + 116) & 0x4000) != 0)
  {
LABEL_35:
    v14 = *(a2 + 76);
    *(a1 + 116) |= 0x4000u;
    *(a1 + 76) = v14;
  }
}

void sub_2453C8320(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_2453C8340(uint64_t a1)
{
  *a1 = &unk_285853A90;
  v2 = *(a1 + 80);
  if (v2 != MEMORY[0x277D82C30] && v2 != 0)
  {
    if (*(v2 + 23) < 0)
    {
      operator delete(*v2);
    }

    MEMORY[0x245D6A0D0](v2, 0x1012C40EC159624);
  }

  sub_2453BD76C();
  if (qword_2813CE8C0 != a1)
  {
    v4 = *(a1 + 16);
    if (v4)
    {
      (*(*v4 + 8))(v4);
    }

    v5 = *(a1 + 24);
    if (v5)
    {
      (*(*v5 + 8))(v5);
    }

    v6 = *(a1 + 32);
    if (v6)
    {
      (*(*v6 + 8))(v6);
    }

    v7 = *(a1 + 40);
    if (v7)
    {
      (*(*v7 + 8))(v7);
    }
  }

  v8 = *(a1 + 100);
  if (v8 >= 1)
  {
    for (i = 0; i < v8; ++i)
    {
      v10 = *(*(a1 + 88) + 8 * i);
      if (v10)
      {
        (*(*v10 + 8))(v10);
        v8 = *(a1 + 100);
      }
    }
  }

  v11 = *(a1 + 88);
  if (v11)
  {
    MEMORY[0x245D6A0A0](v11, 0x80C80B8603338);
  }

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);
}

void sub_2453C8508(uint64_t a1)
{
  sub_2453C8340(a1);

  JUMPOUT(0x245D6A0D0);
}

uint64_t sub_2453C85B4(uint64_t result)
{
  v1 = result;
  v2 = *(result + 116);
  if (v2)
  {
    *(result + 8) = 0;
    if ((v2 & 4) != 0)
    {
      v3 = *(result + 16);
      if (v3)
      {
        if (*(v3 + 32))
        {
          *(v3 + 8) = 0;
          *(v3 + 16) = 0;
          *(v3 + 24) = 0;
        }

        *(v3 + 32) = 0;
        v2 = *(result + 116);
      }
    }

    if ((v2 & 8) != 0)
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
        v2 = *(result + 116);
      }
    }

    if ((v2 & 0x10) != 0)
    {
      v5 = *(result + 32);
      if (v5)
      {
        if (*(v5 + 24))
        {
          *(v5 + 8) = 0;
          *(v5 + 16) = 0;
        }

        *(v5 + 24) = 0;
        v2 = *(result + 116);
      }
    }

    if ((v2 & 0x20) != 0)
    {
      v6 = *(result + 40);
      if (v6)
      {
        if (*(v6 + 24))
        {
          *(v6 + 8) = 0;
          *(v6 + 16) = 0;
        }

        *(v6 + 24) = 0;
        v2 = *(result + 116);
      }
    }

    *(result + 48) = 0;
  }

  if ((v2 & 0xFF00) != 0)
  {
    *(result + 56) = 0;
    *(result + 64) = 0;
    *(result + 72) = 0;
    if ((v2 & 0x2000) != 0)
    {
      v7 = *(result + 80);
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

    *(result + 76) = 0;
  }

  if (*(result + 96) >= 1)
  {
    v8 = 0;
    do
    {
      v9 = *(*(v1 + 88) + 8 * v8);
      result = (*(*v9 + 32))(v9);
      ++v8;
    }

    while (v8 < *(v1 + 96));
  }

  *(v1 + 96) = 0;
  *(v1 + 116) = 0;
  return result;
}

uint64_t sub_2453C8718(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormatLite *this, unsigned int a3)
{
  v5 = MEMORY[0x277D82C30];
  while (2)
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
    switch(TagFallback >> 3)
    {
      case 1u:
        if (v8 != 5)
        {
          goto LABEL_50;
        }

        v83 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(this, &v83) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 8) = v83;
        *(a1 + 116) |= 1u;
        v9 = *(this + 1);
        if (v9 >= *(this + 2) || *v9 != 21)
        {
          continue;
        }

        *(this + 1) = v9 + 1;
        goto LABEL_32;
      case 2u:
        if (v8 != 5)
        {
          goto LABEL_50;
        }

LABEL_32:
        v83 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(this, &v83) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 12) = v83;
        v14 = *(a1 + 116) | 2;
        *(a1 + 116) = v14;
        v17 = *(this + 1);
        if (v17 >= *(this + 2) || *v17 != 26)
        {
          continue;
        }

        *(this + 1) = v17 + 1;
LABEL_36:
        *(a1 + 116) = v14 | 4;
        v18 = *(a1 + 16);
        if (!v18)
        {
          operator new();
        }

        v83 = 0;
        v19 = *(this + 1);
        if (v19 >= *(this + 2) || *v19 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v83))
          {
            return 0;
          }
        }

        else
        {
          v83 = *v19;
          *(this + 1) = v19 + 1;
        }

        v25 = *(this + 14);
        v26 = *(this + 15);
        *(this + 14) = v25 + 1;
        if (v25 >= v26)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this);
        if (!sub_2453C74A4(v18, this, v27) || *(this + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this);
        v28 = *(this + 14);
        v29 = __OFSUB__(v28, 1);
        v30 = v28 - 1;
        if (v30 < 0 == v29)
        {
          *(this + 14) = v30;
        }

        v31 = *(this + 1);
        if (v31 >= *(this + 2) || *v31 != 34)
        {
          continue;
        }

        *(this + 1) = v31 + 1;
LABEL_63:
        *(a1 + 116) |= 8u;
        v32 = *(a1 + 24);
        if (!v32)
        {
          operator new();
        }

        v83 = 0;
        v33 = *(this + 1);
        if (v33 >= *(this + 2) || *v33 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v83))
          {
            return 0;
          }
        }

        else
        {
          v83 = *v33;
          *(this + 1) = v33 + 1;
        }

        v34 = *(this + 14);
        v35 = *(this + 15);
        *(this + 14) = v34 + 1;
        if (v34 >= v35)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this);
        if (!sub_2453C7A30(v32, this, v36) || *(this + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this);
        v37 = *(this + 14);
        v29 = __OFSUB__(v37, 1);
        v38 = v37 - 1;
        if (v38 < 0 == v29)
        {
          *(this + 14) = v38;
        }

        v39 = *(this + 1);
        if (v39 >= *(this + 2) || *v39 != 42)
        {
          continue;
        }

        *(this + 1) = v39 + 1;
LABEL_77:
        *(a1 + 116) |= 0x10u;
        v40 = *(a1 + 32);
        if (!v40)
        {
          operator new();
        }

        v83 = 0;
        v41 = *(this + 1);
        if (v41 >= *(this + 2) || *v41 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v83))
          {
            return 0;
          }
        }

        else
        {
          v83 = *v41;
          *(this + 1) = v41 + 1;
        }

        v42 = *(this + 14);
        v43 = *(this + 15);
        *(this + 14) = v42 + 1;
        if (v42 >= v43)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this);
        if (!sub_2453C7A30(v40, this, v44) || *(this + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this);
        v45 = *(this + 14);
        v29 = __OFSUB__(v45, 1);
        v46 = v45 - 1;
        if (v46 < 0 == v29)
        {
          *(this + 14) = v46;
        }

        v47 = *(this + 1);
        if (v47 >= *(this + 2) || *v47 != 50)
        {
          continue;
        }

        *(this + 1) = v47 + 1;
LABEL_91:
        *(a1 + 116) |= 0x20u;
        v48 = *(a1 + 40);
        if (!v48)
        {
          operator new();
        }

        v83 = 0;
        v49 = *(this + 1);
        if (v49 >= *(this + 2) || *v49 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v83))
          {
            return 0;
          }
        }

        else
        {
          v83 = *v49;
          *(this + 1) = v49 + 1;
        }

        v50 = *(this + 14);
        v51 = *(this + 15);
        *(this + 14) = v50 + 1;
        if (v50 >= v51)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this);
        if (!sub_2453C7A30(v48, this, v52) || *(this + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this);
        v53 = *(this + 14);
        v29 = __OFSUB__(v53, 1);
        v54 = v53 - 1;
        if (v54 < 0 == v29)
        {
          *(this + 14) = v54;
        }

        v55 = *(this + 1);
        v15 = *(this + 2);
        if (v55 >= v15 || *v55 != 56)
        {
          continue;
        }

        v21 = v55 + 1;
        *(this + 1) = v21;
LABEL_105:
        if (v21 >= v15 || (v56 = *v21, v56 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 48));
          if (!result)
          {
            return result;
          }

          v57 = *(this + 1);
          v15 = *(this + 2);
        }

        else
        {
          *(a1 + 48) = v56;
          v57 = v21 + 1;
          *(this + 1) = v57;
        }

        *(a1 + 116) |= 0x40u;
        if (v57 >= v15 || *v57 != 64)
        {
          continue;
        }

        v16 = v57 + 1;
        *(this + 1) = v16;
LABEL_113:
        if (v16 >= v15 || (v59 = *v16, v59 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 52));
          if (!result)
          {
            return result;
          }

          v60 = *(this + 1);
          v15 = *(this + 2);
        }

        else
        {
          *(a1 + 52) = v59;
          v60 = v16 + 1;
          *(this + 1) = v60;
        }

        *(a1 + 116) |= 0x80u;
        if (v60 >= v15 || *v60 != 72)
        {
          continue;
        }

        v24 = v60 + 1;
        *(this + 1) = v24;
LABEL_121:
        v83 = 0;
        if (v24 >= v15 || (v61 = *v24, (v61 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v83);
          if (!result)
          {
            return result;
          }

          v61 = v83;
        }

        else
        {
          *(this + 1) = v24 + 1;
        }

        if (v61 <= 6)
        {
          *(a1 + 116) |= 0x100u;
          *(a1 + 56) = v61;
        }

        v62 = *(this + 1);
        v12 = *(this + 2);
        if (v62 >= v12 || *v62 != 80)
        {
          continue;
        }

        v13 = v62 + 1;
        *(this + 1) = v13;
LABEL_131:
        v83 = 0;
        if (v13 >= v12 || (v63 = *v13, (v63 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v83);
          if (!result)
          {
            return result;
          }

          v63 = v83;
        }

        else
        {
          *(this + 1) = v13 + 1;
        }

        if (v63 <= 6)
        {
          *(a1 + 116) |= 0x200u;
          *(a1 + 60) = v63;
        }

        v64 = *(this + 1);
        v22 = *(this + 2);
        if (v64 >= v22 || *v64 != 88)
        {
          continue;
        }

        v23 = v64 + 1;
        *(this + 1) = v23;
LABEL_141:
        v83 = 0;
        if (v23 >= v22 || (v65 = *v23, (v65 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v83);
          if (!result)
          {
            return result;
          }

          v65 = v83;
          v66 = *(this + 1);
          v22 = *(this + 2);
        }

        else
        {
          v66 = v23 + 1;
          *(this + 1) = v66;
        }

        *(a1 + 64) = v65;
        *(a1 + 116) |= 0x400u;
        if (v66 >= v22 || *v66 != 101)
        {
          continue;
        }

        *(this + 1) = v66 + 1;
LABEL_149:
        v83 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(this, &v83) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 68) = v83;
        *(a1 + 116) |= 0x800u;
        v67 = *(this + 1);
        if (v67 >= *(this + 2) || *v67 != 109)
        {
          continue;
        }

        *(this + 1) = v67 + 1;
LABEL_153:
        v83 = 0;
        if (wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(this, &v83))
        {
          *(a1 + 72) = v83;
          v20 = *(a1 + 116) | 0x1000;
          *(a1 + 116) = v20;
          v68 = *(this + 1);
          if (v68 < *(this + 2) && *v68 == 114)
          {
            *(this + 1) = v68 + 1;
LABEL_157:
            *(a1 + 116) = v20 | 0x2000;
            if (*(a1 + 80) == v5)
            {
              operator new();
            }

            result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadBytes();
            if (!result)
            {
              return result;
            }

            v69 = *(this + 1);
            v11 = *(this + 2);
            if (v69 < v11 && *v69 == 120)
            {
              v10 = v69 + 1;
              *(this + 1) = v10;
LABEL_163:
              if (v10 >= v11 || (v70 = *v10, v70 < 0))
              {
                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 76));
                if (!result)
                {
                  return result;
                }

                v71 = *(this + 1);
                v11 = *(this + 2);
              }

              else
              {
                *(a1 + 76) = v70;
                v71 = (v10 + 1);
                *(this + 1) = v71;
              }

              *(a1 + 116) |= 0x4000u;
              if (v11 - v71 >= 2 && *v71 == 130 && v71[1] == 1)
              {
                do
                {
                  *(this + 1) = v71 + 2;
LABEL_172:
                  v72 = *(a1 + 100);
                  v73 = *(a1 + 96);
                  if (v73 >= v72)
                  {
                    if (v72 == *(a1 + 104))
                    {
                      wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 88));
                      v72 = *(a1 + 100);
                    }

                    *(a1 + 100) = v72 + 1;
                    operator new();
                  }

                  v74 = *(a1 + 88);
                  *(a1 + 96) = v73 + 1;
                  v75 = *(v74 + 8 * v73);
                  v83 = 0;
                  v76 = *(this + 1);
                  if (v76 >= *(this + 2) || *v76 < 0)
                  {
                    if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v83))
                    {
                      return 0;
                    }
                  }

                  else
                  {
                    v83 = *v76;
                    *(this + 1) = v76 + 1;
                  }

                  v77 = *(this + 14);
                  v78 = *(this + 15);
                  *(this + 14) = v77 + 1;
                  if (v77 >= v78)
                  {
                    return 0;
                  }

                  wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this);
                  if (!sub_2453C6CD8(v75, this, v79) || *(this + 36) != 1)
                  {
                    return 0;
                  }

                  wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this);
                  v80 = *(this + 14);
                  v29 = __OFSUB__(v80, 1);
                  v81 = v80 - 1;
                  if (v81 < 0 == v29)
                  {
                    *(this + 14) = v81;
                  }

                  v71 = *(this + 1);
                  v82 = *(this + 2);
                }

                while (v82 - v71 > 1 && *v71 == 130 && v71[1] == 1);
                if (v71 == v82 && (*(this + 11) || *(this + 6) == *(this + 10)))
                {
                  *(this + 8) = 0;
                  result = 1;
                  *(this + 36) = 1;
                  return result;
                }
              }
            }
          }

          continue;
        }

        return 0;
      case 3u:
        if (v8 != 2)
        {
          goto LABEL_50;
        }

        v14 = *(a1 + 116);
        goto LABEL_36;
      case 4u:
        if (v8 == 2)
        {
          goto LABEL_63;
        }

        goto LABEL_50;
      case 5u:
        if (v8 == 2)
        {
          goto LABEL_77;
        }

        goto LABEL_50;
      case 6u:
        if (v8 == 2)
        {
          goto LABEL_91;
        }

        goto LABEL_50;
      case 7u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_50;
        }

        v21 = *(this + 1);
        v15 = *(this + 2);
        goto LABEL_105;
      case 8u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_50;
        }

        v16 = *(this + 1);
        v15 = *(this + 2);
        goto LABEL_113;
      case 9u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_50;
        }

        v24 = *(this + 1);
        v15 = *(this + 2);
        goto LABEL_121;
      case 0xAu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_50;
        }

        v13 = *(this + 1);
        v12 = *(this + 2);
        goto LABEL_131;
      case 0xBu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_50;
        }

        v23 = *(this + 1);
        v22 = *(this + 2);
        goto LABEL_141;
      case 0xCu:
        if (v8 == 5)
        {
          goto LABEL_149;
        }

        goto LABEL_50;
      case 0xDu:
        if (v8 == 5)
        {
          goto LABEL_153;
        }

        goto LABEL_50;
      case 0xEu:
        if (v8 != 2)
        {
          goto LABEL_50;
        }

        v20 = *(a1 + 116);
        goto LABEL_157;
      case 0xFu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_50;
        }

        v10 = *(this + 1);
        v11 = *(this + 2);
        goto LABEL_163;
      case 0x10u:
        if (v8 == 2)
        {
          goto LABEL_172;
        }

        goto LABEL_50;
      default:
LABEL_50:
        if (v8 == 4)
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

uint64_t sub_2453C9258(uint64_t result, const wireless_diagnostics::google::protobuf::MessageLite *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = result;
  v6 = *(result + 116);
  if (v6)
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(1, a2, *(result + 8), a3);
    v6 = *(v5 + 116);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_23;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(2, a2, *(v5 + 12), a3);
  v6 = *(v5 + 116);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_26;
  }

LABEL_23:
  v8 = *(v5 + 16);
  if (!v8)
  {
    sub_2453BD76C();
    v8 = *(qword_2813CE8C0 + 16);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(3, v8, a2, a4);
  v6 = *(v5 + 116);
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_29;
  }

LABEL_26:
  v9 = *(v5 + 24);
  if (!v9)
  {
    sub_2453BD76C();
    v9 = *(qword_2813CE8C0 + 24);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(4, v9, a2, a4);
  v6 = *(v5 + 116);
  if ((v6 & 0x10) == 0)
  {
LABEL_6:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_32;
  }

LABEL_29:
  v10 = *(v5 + 32);
  if (!v10)
  {
    sub_2453BD76C();
    v10 = *(qword_2813CE8C0 + 32);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(5, v10, a2, a4);
  v6 = *(v5 + 116);
  if ((v6 & 0x20) == 0)
  {
LABEL_7:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_35;
  }

LABEL_32:
  v11 = *(v5 + 40);
  if (!v11)
  {
    sub_2453BD76C();
    v11 = *(qword_2813CE8C0 + 40);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(6, v11, a2, a4);
  v6 = *(v5 + 116);
  if ((v6 & 0x40) == 0)
  {
LABEL_8:
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_36;
  }

LABEL_35:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(7, *(v5 + 48), a2, a4);
  v6 = *(v5 + 116);
  if ((v6 & 0x80) == 0)
  {
LABEL_9:
    if ((v6 & 0x100) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_37;
  }

LABEL_36:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(8, *(v5 + 52), a2, a4);
  v6 = *(v5 + 116);
  if ((v6 & 0x100) == 0)
  {
LABEL_10:
    if ((v6 & 0x200) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_38;
  }

LABEL_37:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(9, *(v5 + 56), a2, a4);
  v6 = *(v5 + 116);
  if ((v6 & 0x200) == 0)
  {
LABEL_11:
    if ((v6 & 0x400) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_39;
  }

LABEL_38:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(0xA, *(v5 + 60), a2, a4);
  v6 = *(v5 + 116);
  if ((v6 & 0x400) == 0)
  {
LABEL_12:
    if ((v6 & 0x800) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_40;
  }

LABEL_39:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(0xB, *(v5 + 64), a2, a4);
  v6 = *(v5 + 116);
  if ((v6 & 0x800) == 0)
  {
LABEL_13:
    if ((v6 & 0x1000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_41;
  }

LABEL_40:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(0xC, a2, *(v5 + 68), a3);
  v6 = *(v5 + 116);
  if ((v6 & 0x1000) == 0)
  {
LABEL_14:
    if ((v6 & 0x2000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_42;
  }

LABEL_41:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(0xD, a2, *(v5 + 72), a3);
  v6 = *(v5 + 116);
  if ((v6 & 0x2000) == 0)
  {
LABEL_15:
    if ((v6 & 0x4000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

LABEL_42:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBytes();
  if ((*(v5 + 116) & 0x4000) != 0)
  {
LABEL_16:
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xF, *(v5 + 76), a2, a4);
  }

LABEL_17:
  if (*(v5 + 96) >= 1)
  {
    v7 = 0;
    do
    {
      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x10, *(*(v5 + 88) + 8 * v7++), a2, a4);
    }

    while (v7 < *(v5 + 96));
  }

  return result;
}

uint64_t sub_2453C94AC(uint64_t a1, unsigned int a2)
{
  v3 = *(a1 + 116);
  if (!v3)
  {
    v4 = 0;
    goto LABEL_57;
  }

  if ((v3 & 2) != 0)
  {
    v4 = ((v3 << 31 >> 31) & 5) + 5;
  }

  else
  {
    v4 = (v3 << 31 >> 31) & 5;
  }

  if ((v3 & 4) != 0)
  {
    v5 = *(a1 + 16);
    if (!v5)
    {
      sub_2453BD76C();
      v5 = *(qword_2813CE8C0 + 16);
    }

    v6 = sub_2453C770C(v5, a2);
    v7 = v6;
    if (v6 >= 0x80)
    {
      v8 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v6);
    }

    else
    {
      v8 = 1;
    }

    v4 += v7 + v8 + 1;
    v3 = *(a1 + 116);
    if ((v3 & 8) == 0)
    {
LABEL_7:
      if ((v3 & 0x10) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_29;
    }
  }

  else if ((v3 & 8) == 0)
  {
    goto LABEL_7;
  }

  v9 = *(a1 + 24);
  if (!v9)
  {
    sub_2453BD76C();
    v9 = *(qword_2813CE8C0 + 24);
  }

  v10 = *(v9 + 24);
  v11 = (v10 << 31 >> 31) & 5;
  if ((v10 & 2) != 0)
  {
    v11 += 5;
  }

  if ((v10 & 4) != 0)
  {
    v11 += 5;
  }

  if (*(v9 + 24))
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  *(v9 + 20) = v12;
  v4 += v12 + 2;
  v3 = *(a1 + 116);
  if ((v3 & 0x10) == 0)
  {
LABEL_8:
    if ((v3 & 0x20) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_39;
  }

LABEL_29:
  v13 = *(a1 + 32);
  if (!v13)
  {
    sub_2453BD76C();
    v13 = *(qword_2813CE8C0 + 32);
  }

  v14 = *(v13 + 24);
  v15 = (v14 << 31 >> 31) & 5;
  if ((v14 & 2) != 0)
  {
    v15 += 5;
  }

  if ((v14 & 4) != 0)
  {
    v15 += 5;
  }

  if (*(v13 + 24))
  {
    v16 = v15;
  }

  else
  {
    v16 = 0;
  }

  *(v13 + 20) = v16;
  v4 += v16 + 2;
  v3 = *(a1 + 116);
  if ((v3 & 0x20) == 0)
  {
LABEL_9:
    if ((v3 & 0x40) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_49;
  }

LABEL_39:
  v17 = *(a1 + 40);
  if (!v17)
  {
    sub_2453BD76C();
    v17 = *(qword_2813CE8C0 + 40);
  }

  v18 = *(v17 + 24);
  v19 = (v18 << 31 >> 31) & 5;
  if ((v18 & 2) != 0)
  {
    v19 += 5;
  }

  if ((v18 & 4) != 0)
  {
    v19 += 5;
  }

  if (*(v17 + 24))
  {
    v20 = v19;
  }

  else
  {
    v20 = 0;
  }

  *(v17 + 20) = v20;
  v4 += v20 + 2;
  v3 = *(a1 + 116);
  if ((v3 & 0x40) == 0)
  {
LABEL_10:
    if ((v3 & 0x80) == 0)
    {
      goto LABEL_57;
    }

    goto LABEL_53;
  }

LABEL_49:
  v21 = *(a1 + 48);
  if (v21 >= 0x80)
  {
    v22 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v21) + 1;
    v3 = *(a1 + 116);
  }

  else
  {
    v22 = 2;
  }

  v4 += v22;
  if ((v3 & 0x80) != 0)
  {
LABEL_53:
    v23 = *(a1 + 52);
    if (v23 >= 0x80)
    {
      v24 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v23) + 1;
      v3 = *(a1 + 116);
    }

    else
    {
      v24 = 2;
    }

    v4 += v24;
  }

LABEL_57:
  if ((v3 & 0xFF00) == 0)
  {
    goto LABEL_100;
  }

  if ((v3 & 0x100) == 0)
  {
    if ((v3 & 0x200) == 0)
    {
      goto LABEL_60;
    }

LABEL_68:
    v27 = *(a1 + 60);
    if ((v27 & 0x80000000) != 0)
    {
      v28 = 11;
    }

    else if (v27 >= 0x80)
    {
      v28 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v27) + 1;
      v3 = *(a1 + 116);
    }

    else
    {
      v28 = 2;
    }

    v4 += v28;
    if ((v3 & 0x400) == 0)
    {
      goto LABEL_80;
    }

    goto LABEL_74;
  }

  v25 = *(a1 + 56);
  if ((v25 & 0x80000000) != 0)
  {
    v26 = 11;
  }

  else if (v25 >= 0x80)
  {
    v26 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v25) + 1;
    v3 = *(a1 + 116);
  }

  else
  {
    v26 = 2;
  }

  v4 += v26;
  if ((v3 & 0x200) != 0)
  {
    goto LABEL_68;
  }

LABEL_60:
  if ((v3 & 0x400) != 0)
  {
LABEL_74:
    v29 = *(a1 + 64);
    if ((v29 & 0x80000000) != 0)
    {
      v30 = 11;
    }

    else if (v29 >= 0x80)
    {
      v30 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v29) + 1;
      v3 = *(a1 + 116);
    }

    else
    {
      v30 = 2;
    }

    v4 += v30;
  }

LABEL_80:
  v31 = v4 + 5;
  if ((v3 & 0x800) == 0)
  {
    v31 = v4;
  }

  if ((v3 & 0x1000) != 0)
  {
    v4 = v31 + 5;
  }

  else
  {
    v4 = v31;
  }

  if ((v3 & 0x2000) != 0)
  {
    v32 = *(a1 + 80);
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
      v3 = *(a1 + 116);
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

    v4 += v37 + v33 + 1;
  }

  if ((v3 & 0x4000) != 0)
  {
    v38 = *(a1 + 76);
    if (v38 >= 0x80)
    {
      v39 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v38) + 1;
    }

    else
    {
      v39 = 2;
    }

    v4 += v39;
  }

LABEL_100:
  v40 = *(a1 + 96);
  v41 = (v4 + 2 * v40);
  if (v40 >= 1)
  {
    v42 = 0;
    do
    {
      v41 = v41 + sub_2453C70D8(*(*(a1 + 88) + 8 * v42++)) + 1;
    }

    while (v42 < *(a1 + 96));
  }

  *(a1 + 112) = v41;
  return v41;
}

void sub_2453C984C(uint64_t a1, void *lpsrc)
{
  if (!__dynamic_cast(lpsrc, MEMORY[0x277D82C38], &unk_285854A10, 0))
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  sub_2453C7D68(a1, lpsrc);
}

void sub_2453C9908(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v27);
  }

  v4 = *(a2 + 112);
  if (!v4)
  {
    goto LABEL_41;
  }

  if (v4)
  {
    *(a1 + 112) |= 1u;
    v5 = *(a1 + 8);
    if (!v5)
    {
      operator new();
    }

    v6 = *(a2 + 8);
    if (!v6)
    {
      sub_2453BD76C();
      v6 = *(qword_2813CE8C8 + 8);
    }

    sub_2453BEF44(v5, v6);
    v4 = *(a2 + 112);
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

  *(a1 + 112) |= 2u;
  v7 = *(a1 + 16);
  if (!v7)
  {
    operator new();
  }

  v8 = *(a2 + 16);
  if (!v8)
  {
    sub_2453BD76C();
    v8 = *(qword_2813CE8C8 + 16);
  }

  sub_2453C3490(v7, v8);
  v4 = *(a2 + 112);
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
  *(a1 + 112) |= 4u;
  *(a1 + 24) = v9;
  v4 = *(a2 + 112);
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
  v10 = *(a2 + 32);
  *(a1 + 112) |= 8u;
  *(a1 + 32) = v10;
  v4 = *(a2 + 112);
  if ((v4 & 0x10) == 0)
  {
LABEL_9:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_10;
    }

LABEL_26:
    *(a1 + 112) |= 0x20u;
    v12 = *(a1 + 48);
    if (!v12)
    {
      operator new();
    }

    v13 = *(a2 + 48);
    if (!v13)
    {
      sub_2453BD76C();
      v13 = *(qword_2813CE8C8 + 48);
    }

    sub_2453C51A8(v12, v13);
    v4 = *(a2 + 112);
    if ((v4 & 0x40) == 0)
    {
LABEL_11:
      if ((v4 & 0x80) == 0)
      {
        goto LABEL_41;
      }

      goto LABEL_36;
    }

    goto LABEL_31;
  }

LABEL_25:
  v11 = *(a2 + 40);
  *(a1 + 112) |= 0x10u;
  *(a1 + 40) = v11;
  v4 = *(a2 + 112);
  if ((v4 & 0x20) != 0)
  {
    goto LABEL_26;
  }

LABEL_10:
  if ((v4 & 0x40) == 0)
  {
    goto LABEL_11;
  }

LABEL_31:
  *(a1 + 112) |= 0x40u;
  v14 = *(a1 + 56);
  if (!v14)
  {
    operator new();
  }

  v15 = *(a2 + 56);
  if (!v15)
  {
    sub_2453BD76C();
    v15 = *(qword_2813CE8C8 + 56);
  }

  sub_2453C56F4(v14, v15);
  v4 = *(a2 + 112);
  if ((v4 & 0x80) != 0)
  {
LABEL_36:
    *(a1 + 112) |= 0x80u;
    v16 = *(a1 + 64);
    if (!v16)
    {
      operator new();
    }

    v17 = *(a2 + 64);
    if (!v17)
    {
      sub_2453BD76C();
      v17 = *(qword_2813CE8C8 + 64);
    }

    sub_2453C625C(v16, v17);
    v4 = *(a2 + 112);
  }

LABEL_41:
  if ((v4 & 0xFF00) == 0)
  {
    return;
  }

  if ((v4 & 0x100) != 0)
  {
    *(a1 + 112) |= 0x100u;
    v18 = *(a1 + 72);
    if (!v18)
    {
      operator new();
    }

    v19 = *(a2 + 72);
    if (!v19)
    {
      sub_2453BD76C();
      v19 = *(qword_2813CE8C8 + 72);
    }

    sub_2453C7D68(v18, v19);
    v4 = *(a2 + 112);
    if ((v4 & 0x200) == 0)
    {
LABEL_44:
      if ((v4 & 0x400) == 0)
      {
        goto LABEL_45;
      }

      goto LABEL_55;
    }
  }

  else if ((v4 & 0x200) == 0)
  {
    goto LABEL_44;
  }

  v20 = *(a2 + 80);
  *(a1 + 112) |= 0x200u;
  *(a1 + 80) = v20;
  v4 = *(a2 + 112);
  if ((v4 & 0x400) == 0)
  {
LABEL_45:
    if ((v4 & 0x800) == 0)
    {
      goto LABEL_46;
    }

    goto LABEL_57;
  }

LABEL_55:
  v21 = *(a2 + 84);
  if (v21 >= 5)
  {
    __assert_rtn("set_multipath_indicator", "CLPGnssMeasApi.pb.h", 9803, "::CoreGem::CLP::LogEntry::PrivateData::MultipathIndicator_IsValid(value)");
  }

  *(a1 + 112) |= 0x400u;
  *(a1 + 84) = v21;
  v4 = *(a2 + 112);
  if ((v4 & 0x800) == 0)
  {
LABEL_46:
    if ((v4 & 0x1000) == 0)
    {
      goto LABEL_47;
    }

LABEL_62:
    v24 = *(a2 + 104);
    *(a1 + 112) |= 0x1000u;
    *(a1 + 104) = v24;
    if ((*(a2 + 112) & 0x2000) == 0)
    {
      return;
    }

    goto LABEL_63;
  }

LABEL_57:
  *(a1 + 112) |= 0x800u;
  v22 = *(a1 + 88);
  if (!v22)
  {
    operator new();
  }

  v23 = *(a2 + 88);
  if (!v23)
  {
    sub_2453BD76C();
    v23 = *(qword_2813CE8C8 + 88);
  }

  sub_2453C56F4(v22, v23);
  v4 = *(a2 + 112);
  if ((v4 & 0x1000) != 0)
  {
    goto LABEL_62;
  }

LABEL_47:
  if ((v4 & 0x2000) == 0)
  {
    return;
  }

LABEL_63:
  *(a1 + 112) |= 0x2000u;
  v25 = *(a1 + 96);
  if (!v25)
  {
    operator new();
  }

  v26 = *(a2 + 96);
  if (!v26)
  {
    sub_2453BD76C();
    v26 = *(qword_2813CE8C8 + 96);
  }

  sub_2453C5C40(v25, v26);
}