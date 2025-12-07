uint64_t sub_245409264(uint64_t result, const wireless_diagnostics::google::protobuf::MessageLite *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
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
      v7 = *(qword_2813CEF38 + 8);
    }

    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(2, v7, a2, a4);
  }

  return result;
}

uint64_t sub_2454092E4(uint64_t a1, unsigned int a2)
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
      v6 = *(qword_2813CEF38 + 8);
    }

    v7 = sub_245408B10(v6, a2);
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

void sub_2454093B0(uint64_t a1, void *lpsrc)
{
  if (!__dynamic_cast(lpsrc, MEMORY[0x277D82C38], &unk_285858820, 0))
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  sub_245408D48(a1, lpsrc);
}

void sub_24540946C(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v18);
  }

  LOBYTE(v4) = *(a2 + 64);
  if (!v4)
  {
    return;
  }

  if (*(a2 + 64))
  {
    v5 = *(a2 + 8);
    if (v5 >= 9)
    {
      __assert_rtn("set_result", "GnssEmergencyTypes.pb.h", 19813, "::CoreGem::proto::gnss::Emergency::ErrorCodes_IsValid(value)");
    }

    *(a1 + 64) |= 1u;
    *(a1 + 8) = v5;
    v4 = *(a2 + 64);
  }

  if ((v4 & 2) != 0)
  {
    v7 = *(a2 + 12);
    *(a1 + 64) |= 2u;
    *(a1 + 12) = v7;
    v4 = *(a2 + 64);
    if ((v4 & 4) == 0)
    {
LABEL_9:
      if ((v4 & 8) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_22;
    }
  }

  else if ((v4 & 4) == 0)
  {
    goto LABEL_9;
  }

  *(a1 + 64) |= 4u;
  v8 = *(a1 + 16);
  if (!v8)
  {
    operator new();
  }

  v9 = *(a2 + 16);
  if (!v9)
  {
    sub_2453EB7EC();
    v9 = *(qword_2813CEF60 + 16);
  }

  sub_2453F8094(v8, v9);
  v4 = *(a2 + 64);
  if ((v4 & 8) == 0)
  {
LABEL_10:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_27;
  }

LABEL_22:
  *(a1 + 64) |= 8u;
  v10 = *(a1 + 24);
  if (!v10)
  {
    operator new();
  }

  v11 = *(a2 + 24);
  if (!v11)
  {
    sub_2453EB7EC();
    v11 = *(qword_2813CEF60 + 24);
  }

  sub_2453FC30C(v10, v11);
  v4 = *(a2 + 64);
  if ((v4 & 0x10) == 0)
  {
LABEL_11:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_12;
    }

LABEL_32:
    *(a1 + 64) |= 0x20u;
    v14 = *(a1 + 40);
    if (!v14)
    {
      operator new();
    }

    v15 = *(a2 + 40);
    if (!v15)
    {
      sub_2453EB7EC();
      v15 = *(qword_2813CEF60 + 40);
    }

    sub_245405EDC(v14, v15);
    v4 = *(a2 + 64);
    if ((v4 & 0x40) == 0)
    {
LABEL_13:
      if ((v4 & 0x80) == 0)
      {
        return;
      }

      goto LABEL_14;
    }

    goto LABEL_37;
  }

LABEL_27:
  *(a1 + 64) |= 0x10u;
  v12 = *(a1 + 32);
  if (!v12)
  {
    operator new();
  }

  v13 = *(a2 + 32);
  if (!v13)
  {
    sub_2453EB7EC();
    v13 = *(qword_2813CEF60 + 32);
  }

  sub_245400728(v12, v13);
  v4 = *(a2 + 64);
  if ((v4 & 0x20) != 0)
  {
    goto LABEL_32;
  }

LABEL_12:
  if ((v4 & 0x40) == 0)
  {
    goto LABEL_13;
  }

LABEL_37:
  *(a1 + 64) |= 0x40u;
  v16 = *(a1 + 48);
  if (!v16)
  {
    operator new();
  }

  v17 = *(a2 + 48);
  if (!v17)
  {
    sub_2453EB7EC();
    v17 = *(qword_2813CEF60 + 48);
  }

  sub_245408D48(v16, v17);
  if ((*(a2 + 64) & 0x80) != 0)
  {
LABEL_14:
    v6 = *(a2 + 56);
    *(a1 + 64) |= 0x80u;
    *(a1 + 56) = v6;
  }
}

void sub_24540980C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_245409824(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = &unk_285856EE0;
  sub_2453EB7EC();
  if (qword_2813CEF60 != a1)
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

    v5 = *(a1 + 5);
    if (v5)
    {
      (*(*v5 + 8))(v5);
    }

    v6 = *(a1 + 6);
    if (v6)
    {
      (*(*v6 + 8))(v6);
    }
  }

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);
}

void sub_24540996C(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  sub_245409824(a1);

  JUMPOUT(0x245D6A0D0);
}

uint64_t sub_245409A00(uint64_t result)
{
  v1 = result;
  LOBYTE(v2) = *(result + 64);
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
        v2 = *(result + 64);
      }
    }

    if ((v2 & 8) != 0)
    {
      result = *(result + 24);
      if (result)
      {
        result = sub_2453FC610(result);
        v2 = *(v1 + 64);
      }
    }

    if ((v2 & 0x10) != 0)
    {
      v4 = *(v1 + 32);
      if (v4)
      {
        if (*(v4 + 36))
        {
          *(v4 + 8) = 0;
          *(v4 + 16) = 0;
          *(v4 + 24) = 0;
        }

        *(v4 + 36) = 0;
        v2 = *(v1 + 64);
      }
    }

    if ((v2 & 0x20) != 0)
    {
      result = *(v1 + 40);
      if (result)
      {
        result = sub_245406164(result);
        v2 = *(v1 + 64);
      }
    }

    if ((v2 & 0x40) != 0)
    {
      result = *(v1 + 48);
      if (result)
      {
        result = sub_245408FC8(result);
      }
    }

    *(v1 + 56) = 0;
  }

  *(v1 + 64) = 0;
  return result;
}

uint64_t sub_245409AB4(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormatLite *this, unsigned int a3)
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
                goto LABEL_80;
              }
            }

            else if (v7 == 6 && v8 == 2)
            {
              goto LABEL_94;
            }

            goto LABEL_34;
          }

          if (v7 != 7)
          {
            if (v7 == 8 && (TagFallback & 7) == 0)
            {
              v12 = *(this + 1);
              v11 = *(this + 2);
              goto LABEL_122;
            }

            goto LABEL_34;
          }

          if (v8 != 2)
          {
            goto LABEL_34;
          }

LABEL_108:
          *(a1 + 64) |= 0x40u;
          v53 = *(a1 + 48);
          if (!v53)
          {
            operator new();
          }

          v63 = 0;
          v54 = *(this + 1);
          if (v54 >= *(this + 2) || *v54 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v63))
            {
              return 0;
            }
          }

          else
          {
            v63 = *v54;
            *(this + 1) = v54 + 1;
          }

          v55 = *(this + 14);
          v56 = *(this + 15);
          *(this + 14) = v55 + 1;
          if (v55 >= v56)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this);
          if (!sub_245409008(v53, this, v57) || *(this + 36) != 1)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this);
          v58 = *(this + 14);
          v26 = __OFSUB__(v58, 1);
          v59 = v58 - 1;
          if (v59 < 0 == v26)
          {
            *(this + 14) = v59;
          }

          v60 = *(this + 1);
          v11 = *(this + 2);
          if (v60 < v11 && *v60 == 64)
          {
            v12 = v60 + 1;
            *(this + 1) = v12;
LABEL_122:
            v63 = 0;
            if (v12 >= v11 || (v61 = *v12, (v61 & 0x80000000) != 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v63);
              if (!result)
              {
                return result;
              }

              v61 = v63;
              v62 = *(this + 1);
              v11 = *(this + 2);
            }

            else
            {
              v62 = v12 + 1;
              *(this + 1) = v62;
            }

            *(a1 + 56) = v61;
            *(a1 + 64) |= 0x80u;
            if (v62 == v11 && (*(this + 11) || *(this + 6) == *(this + 10)))
            {
              *(this + 8) = 0;
              result = 1;
              *(this + 36) = 1;
              return result;
            }
          }
        }

        if (TagFallback >> 3 <= 2)
        {
          break;
        }

        if (v7 != 3)
        {
          if (v7 == 4 && v8 == 2)
          {
            goto LABEL_66;
          }

          goto LABEL_34;
        }

        if (v8 != 2)
        {
          goto LABEL_34;
        }

        v15 = *(a1 + 64);
LABEL_52:
        *(a1 + 64) = v15 | 4;
        v20 = *(a1 + 16);
        if (!v20)
        {
          operator new();
        }

        v63 = 0;
        v21 = *(this + 1);
        if (v21 >= *(this + 2) || *v21 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v63))
          {
            return 0;
          }
        }

        else
        {
          v63 = *v21;
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
        if (!sub_2453F82C0(v20, this, v24) || *(this + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this);
        v25 = *(this + 14);
        v26 = __OFSUB__(v25, 1);
        v27 = v25 - 1;
        if (v27 < 0 == v26)
        {
          *(this + 14) = v27;
        }

        v28 = *(this + 1);
        if (v28 < *(this + 2) && *v28 == 34)
        {
          *(this + 1) = v28 + 1;
LABEL_66:
          *(a1 + 64) |= 8u;
          v29 = *(a1 + 24);
          if (!v29)
          {
            operator new();
          }

          v63 = 0;
          v30 = *(this + 1);
          if (v30 >= *(this + 2) || *v30 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v63))
            {
              return 0;
            }
          }

          else
          {
            v63 = *v30;
            *(this + 1) = v30 + 1;
          }

          v31 = *(this + 14);
          v32 = *(this + 15);
          *(this + 14) = v31 + 1;
          if (v31 >= v32)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this);
          if (!sub_2453FC648(v29, this, v33) || *(this + 36) != 1)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this);
          v34 = *(this + 14);
          v26 = __OFSUB__(v34, 1);
          v35 = v34 - 1;
          if (v35 < 0 == v26)
          {
            *(this + 14) = v35;
          }

          v36 = *(this + 1);
          if (v36 < *(this + 2) && *v36 == 42)
          {
            *(this + 1) = v36 + 1;
LABEL_80:
            *(a1 + 64) |= 0x10u;
            v37 = *(a1 + 32);
            if (!v37)
            {
              operator new();
            }

            v63 = 0;
            v38 = *(this + 1);
            if (v38 >= *(this + 2) || *v38 < 0)
            {
              if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v63))
              {
                return 0;
              }
            }

            else
            {
              v63 = *v38;
              *(this + 1) = v38 + 1;
            }

            v39 = *(this + 14);
            v40 = *(this + 15);
            *(this + 14) = v39 + 1;
            if (v39 >= v40)
            {
              return 0;
            }

            wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this);
            if (!sub_2454009C0(v37, this, v41) || *(this + 36) != 1)
            {
              return 0;
            }

            wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this);
            v42 = *(this + 14);
            v26 = __OFSUB__(v42, 1);
            v43 = v42 - 1;
            if (v43 < 0 == v26)
            {
              *(this + 14) = v43;
            }

            v44 = *(this + 1);
            if (v44 < *(this + 2) && *v44 == 50)
            {
              *(this + 1) = v44 + 1;
LABEL_94:
              *(a1 + 64) |= 0x20u;
              v45 = *(a1 + 40);
              if (!v45)
              {
                operator new();
              }

              v63 = 0;
              v46 = *(this + 1);
              if (v46 >= *(this + 2) || *v46 < 0)
              {
                if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v63))
                {
                  return 0;
                }
              }

              else
              {
                v63 = *v46;
                *(this + 1) = v46 + 1;
              }

              v47 = *(this + 14);
              v48 = *(this + 15);
              *(this + 14) = v47 + 1;
              if (v47 >= v48)
              {
                return 0;
              }

              wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this);
              if (!sub_2454061A4(v45, this, v49) || *(this + 36) != 1)
              {
                return 0;
              }

              wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this);
              v50 = *(this + 14);
              v26 = __OFSUB__(v50, 1);
              v51 = v50 - 1;
              if (v51 < 0 == v26)
              {
                *(this + 14) = v51;
              }

              v52 = *(this + 1);
              if (v52 < *(this + 2) && *v52 == 58)
              {
                *(this + 1) = v52 + 1;
                goto LABEL_108;
              }
            }
          }
        }
      }

      if (v7 != 1)
      {
        break;
      }

      if ((TagFallback & 7) != 0)
      {
        goto LABEL_34;
      }

      v63 = 0;
      v13 = *(this + 1);
      if (v13 >= *(this + 2) || (v14 = *v13, (v14 & 0x80000000) != 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v63);
        if (!result)
        {
          return result;
        }

        v14 = v63;
      }

      else
      {
        *(this + 1) = v13 + 1;
      }

      if (v14 <= 8)
      {
        *(a1 + 64) |= 1u;
        *(a1 + 8) = v14;
      }

      v17 = *(this + 1);
      v9 = *(this + 2);
      if (v17 < v9 && *v17 == 16)
      {
        v10 = v17 + 1;
        *(this + 1) = v10;
LABEL_44:
        v63 = 0;
        if (v10 >= v9 || (v18 = *v10, (v18 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v63);
          if (!result)
          {
            return result;
          }

          v18 = v63;
          v19 = *(this + 1);
          v9 = *(this + 2);
        }

        else
        {
          v19 = v10 + 1;
          *(this + 1) = v19;
        }

        *(a1 + 12) = v18;
        v15 = *(a1 + 64) | 2;
        *(a1 + 64) = v15;
        if (v19 < v9 && *v19 == 26)
        {
          *(this + 1) = v19 + 1;
          goto LABEL_52;
        }
      }
    }

    if (v7 == 2 && (TagFallback & 7) == 0)
    {
      v10 = *(this + 1);
      v9 = *(this + 2);
      goto LABEL_44;
    }

LABEL_34:
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

uint64_t sub_24540A2A4(uint64_t result, const wireless_diagnostics::google::protobuf::MessageLite *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = result;
  v6 = *(result + 64);
  if (v6)
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(1, *(result + 8), a2, a4);
    v6 = *(v5 + 64);
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

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(2, *(v5 + 12), a2, a4);
  v6 = *(v5 + 64);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_15;
  }

LABEL_12:
  v7 = *(v5 + 16);
  if (!v7)
  {
    sub_2453EB7EC();
    v7 = *(qword_2813CEF60 + 16);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(3, v7, a2, a4);
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

LABEL_15:
  v8 = *(v5 + 24);
  if (!v8)
  {
    sub_2453EB7EC();
    v8 = *(qword_2813CEF60 + 24);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(4, v8, a2, a4);
  v6 = *(v5 + 64);
  if ((v6 & 0x10) == 0)
  {
LABEL_6:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_21;
  }

LABEL_18:
  v9 = *(v5 + 32);
  if (!v9)
  {
    sub_2453EB7EC();
    v9 = *(qword_2813CEF60 + 32);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(5, v9, a2, a4);
  v6 = *(v5 + 64);
  if ((v6 & 0x20) == 0)
  {
LABEL_7:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_24;
  }

LABEL_21:
  v10 = *(v5 + 40);
  if (!v10)
  {
    sub_2453EB7EC();
    v10 = *(qword_2813CEF60 + 40);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(6, v10, a2, a4);
  v6 = *(v5 + 64);
  if ((v6 & 0x40) == 0)
  {
LABEL_8:
    if ((v6 & 0x80) == 0)
    {
      return result;
    }

    goto LABEL_27;
  }

LABEL_24:
  v11 = *(v5 + 48);
  if (!v11)
  {
    sub_2453EB7EC();
    v11 = *(qword_2813CEF60 + 48);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(7, v11, a2, a4);
  if ((*(v5 + 64) & 0x80) != 0)
  {
LABEL_27:
    v12 = *(v5 + 56);

    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(8, v12, a2, a4);
  }

  return result;
}

uint64_t sub_24540A420(uint64_t a1, unsigned int a2)
{
  LOBYTE(v3) = *(a1 + 64);
  if (!v3)
  {
    v4 = 0;
    goto LABEL_62;
  }

  if (*(a1 + 64))
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
      v3 = *(a1 + 64);
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
    if ((*(a1 + 64) & 2) == 0)
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
    v3 = *(a1 + 64);
  }

  else
  {
    v7 = 2;
  }

  v4 = (v7 + v4);
LABEL_19:
  if ((v3 & 4) != 0)
  {
    v8 = *(a1 + 16);
    if (!v8)
    {
      sub_2453EB7EC();
      v8 = *(qword_2813CEF60 + 16);
    }

    v9 = sub_2453F8560(v8, a2);
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
    v3 = *(a1 + 64);
    if ((v3 & 8) == 0)
    {
LABEL_21:
      if ((v3 & 0x10) == 0)
      {
        goto LABEL_22;
      }

      goto LABEL_38;
    }
  }

  else if ((v3 & 8) == 0)
  {
    goto LABEL_21;
  }

  v12 = *(a1 + 24);
  if (!v12)
  {
    sub_2453EB7EC();
    v12 = *(qword_2813CEF60 + 24);
  }

  v13 = sub_2453FCB5C(v12, a2);
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
  v3 = *(a1 + 64);
  if ((v3 & 0x10) == 0)
  {
LABEL_22:
    if ((v3 & 0x20) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_44;
  }

LABEL_38:
  v16 = *(a1 + 32);
  if (!v16)
  {
    sub_2453EB7EC();
    v16 = *(qword_2813CEF60 + 32);
  }

  v17 = sub_245400E0C(v16, a2);
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
  v3 = *(a1 + 64);
  if ((v3 & 0x20) == 0)
  {
LABEL_23:
    if ((v3 & 0x40) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_50;
  }

LABEL_44:
  v20 = *(a1 + 40);
  if (!v20)
  {
    sub_2453EB7EC();
    v20 = *(qword_2813CEF60 + 40);
  }

  v21 = sub_245406488(v20, a2);
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
  v3 = *(a1 + 64);
  if ((v3 & 0x40) == 0)
  {
LABEL_24:
    if ((v3 & 0x80) == 0)
    {
      goto LABEL_62;
    }

    goto LABEL_56;
  }

LABEL_50:
  v24 = *(a1 + 48);
  if (!v24)
  {
    sub_2453EB7EC();
    v24 = *(qword_2813CEF60 + 48);
  }

  v25 = sub_2454092E4(v24, a2);
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
  if ((*(a1 + 64) & 0x80) != 0)
  {
LABEL_56:
    v28 = *(a1 + 56);
    if ((v28 & 0x80000000) != 0)
    {
      v29 = 11;
    }

    else if (v28 >= 0x80)
    {
      v29 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v28) + 1;
    }

    else
    {
      v29 = 2;
    }

    v4 = (v29 + v4);
  }

LABEL_62:
  *(a1 + 60) = v4;
  return v4;
}

void sub_24540A69C(uint64_t a1, void *lpsrc)
{
  if (!__dynamic_cast(lpsrc, MEMORY[0x277D82C38], &unk_285858838, 0))
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  sub_24540946C(a1, lpsrc);
}

void sub_24540A758(_DWORD *a1, _DWORD *a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v14);
  }

  v4 = a2[12];
  if (!v4)
  {
    goto LABEL_13;
  }

  if (v4)
  {
    v7 = a2[2];
    a1[12] |= 1u;
    a1[2] = v7;
    v4 = a2[12];
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

  else if ((v4 & 2) == 0)
  {
    goto LABEL_6;
  }

  v8 = a2[3];
  a1[12] |= 2u;
  a1[3] = v8;
  v4 = a2[12];
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
  v9 = a2[4];
  a1[12] |= 4u;
  a1[4] = v9;
  v4 = a2[12];
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
  v10 = a2[5];
  a1[12] |= 8u;
  a1[5] = v10;
  v4 = a2[12];
  if ((v4 & 0x10) == 0)
  {
LABEL_9:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_10;
    }

LABEL_22:
    v12 = a2[7];
    a1[12] |= 0x20u;
    a1[7] = v12;
    v4 = a2[12];
    if ((v4 & 0x40) == 0)
    {
LABEL_11:
      if ((v4 & 0x80) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_12;
    }

    goto LABEL_23;
  }

LABEL_20:
  v11 = a2[6];
  if (v11 >= 6)
  {
    __assert_rtn("set_multi_path", "GnssEmergencyTypes.pb.h", 20182, "::CoreGem::proto::gnss::Emergency::MultipathIndicator_IsValid(value)");
  }

  a1[12] |= 0x10u;
  a1[6] = v11;
  v4 = a2[12];
  if ((v4 & 0x20) != 0)
  {
    goto LABEL_22;
  }

LABEL_10:
  if ((v4 & 0x40) == 0)
  {
    goto LABEL_11;
  }

LABEL_23:
  v13 = a2[8];
  a1[12] |= 0x40u;
  a1[8] = v13;
  v4 = a2[12];
  if ((v4 & 0x80) != 0)
  {
LABEL_12:
    v5 = a2[9];
    a1[12] |= 0x80u;
    a1[9] = v5;
    v4 = a2[12];
  }

LABEL_13:
  if ((v4 & 0x100) != 0)
  {
    v6 = a2[10];
    a1[12] |= 0x100u;
    a1[10] = v6;
  }
}

void sub_24540A914(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_24540A92C(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = &unk_285856F58;
  sub_2453EB7EC();

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);
}

void sub_24540A988(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  sub_24540A92C(a1);

  JUMPOUT(0x245D6A0D0);
}

uint64_t sub_24540AA18(uint64_t result)
{
  v1 = *(result + 48);
  if (v1)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
  }

  if ((v1 & 0xFF00) != 0)
  {
    *(result + 40) = 0;
  }

  *(result + 48) = 0;
  return result;
}

uint64_t sub_24540AA44(unsigned int *a1, wireless_diagnostics::google::protobuf::internal::WireFormatLite *this, unsigned int a3)
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
          if (TagFallback >> 3 > 4)
          {
            break;
          }

          if (TagFallback >> 3 > 2)
          {
            if (v7 != 3)
            {
              if (v7 != 4 || (TagFallback & 7) != 0)
              {
                goto LABEL_37;
              }

              v12 = *(this + 1);
              v10 = *(this + 2);
              goto LABEL_62;
            }

            if ((TagFallback & 7) != 0)
            {
              goto LABEL_37;
            }

            v17 = *(this + 1);
            v10 = *(this + 2);
LABEL_54:
            if (v17 >= v10 || (v23 = *v17, (v23 & 0x80000000) != 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, a1 + 4);
              if (!result)
              {
                return result;
              }

              v24 = *(this + 1);
              v10 = *(this + 2);
            }

            else
            {
              a1[4] = v23;
              v24 = v17 + 1;
              *(this + 1) = v24;
            }

            a1[12] |= 4u;
            if (v24 < v10 && *v24 == 32)
            {
              v12 = v24 + 1;
              *(this + 1) = v12;
LABEL_62:
              if (v12 >= v10 || (v25 = *v12, (v25 & 0x80000000) != 0))
              {
                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, a1 + 5);
                if (!result)
                {
                  return result;
                }

                v26 = *(this + 1);
                v10 = *(this + 2);
              }

              else
              {
                a1[5] = v25;
                v26 = v12 + 1;
                *(this + 1) = v26;
              }

              a1[12] |= 8u;
              if (v26 < v10 && *v26 == 40)
              {
                v19 = v26 + 1;
                *(this + 1) = v19;
                goto LABEL_70;
              }
            }
          }

          else
          {
            if (v7 != 1)
            {
              if (v7 != 2 || (TagFallback & 7) != 0)
              {
                goto LABEL_37;
              }

              v11 = *(this + 1);
              v10 = *(this + 2);
              goto LABEL_46;
            }

            if ((TagFallback & 7) != 0)
            {
              goto LABEL_37;
            }

            v38 = 0;
            v14 = *(this + 1);
            v10 = *(this + 2);
            if (v14 >= v10 || (v15 = *v14, (v15 & 0x80000000) != 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v38);
              if (!result)
              {
                return result;
              }

              v15 = v38;
              v16 = *(this + 1);
              v10 = *(this + 2);
            }

            else
            {
              v16 = v14 + 1;
              *(this + 1) = v16;
            }

            a1[2] = v15;
            a1[12] |= 1u;
            if (v16 < v10 && *v16 == 16)
            {
              v11 = v16 + 1;
              *(this + 1) = v11;
LABEL_46:
              if (v11 >= v10 || (v21 = *v11, (v21 & 0x80000000) != 0))
              {
                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, a1 + 3);
                if (!result)
                {
                  return result;
                }

                v22 = *(this + 1);
                v10 = *(this + 2);
              }

              else
              {
                a1[3] = v21;
                v22 = v11 + 1;
                *(this + 1) = v22;
              }

              a1[12] |= 2u;
              if (v22 < v10 && *v22 == 24)
              {
                v17 = v22 + 1;
                *(this + 1) = v17;
                goto LABEL_54;
              }
            }
          }
        }

        if (TagFallback >> 3 > 6)
        {
          break;
        }

        if (v7 != 5)
        {
          if (v7 != 6 || (TagFallback & 7) != 0)
          {
            goto LABEL_37;
          }

          v13 = *(this + 1);
          v8 = *(this + 2);
          goto LABEL_80;
        }

        if ((TagFallback & 7) != 0)
        {
          goto LABEL_37;
        }

        v19 = *(this + 1);
        v10 = *(this + 2);
LABEL_70:
        v39 = 0;
        if (v19 >= v10 || (v27 = *v19, (v27 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v39);
          if (!result)
          {
            return result;
          }

          v27 = v39;
        }

        else
        {
          *(this + 1) = v19 + 1;
        }

        if (v27 <= 5)
        {
          a1[12] |= 0x10u;
          a1[6] = v27;
        }

        v28 = *(this + 1);
        v8 = *(this + 2);
        if (v28 < v8 && *v28 == 48)
        {
          v13 = v28 + 1;
          *(this + 1) = v13;
LABEL_80:
          if (v13 >= v8 || (v29 = *v13, (v29 & 0x80000000) != 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, a1 + 7);
            if (!result)
            {
              return result;
            }

            v30 = *(this + 1);
            v8 = *(this + 2);
          }

          else
          {
            a1[7] = v29;
            v30 = v13 + 1;
            *(this + 1) = v30;
          }

          a1[12] |= 0x20u;
          if (v30 < v8 && *v30 == 56)
          {
            v18 = v30 + 1;
            *(this + 1) = v18;
LABEL_88:
            if (v18 >= v8 || (v31 = *v18, (v31 & 0x80000000) != 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, a1 + 8);
              if (!result)
              {
                return result;
              }

              v32 = *(this + 1);
              v8 = *(this + 2);
            }

            else
            {
              a1[8] = v31;
              v32 = v18 + 1;
              *(this + 1) = v32;
            }

            a1[12] |= 0x40u;
            if (v32 < v8 && *v32 == 64)
            {
              v20 = v32 + 1;
              *(this + 1) = v20;
              goto LABEL_96;
            }
          }
        }
      }

      if (v7 == 7)
      {
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_37;
        }

        v18 = *(this + 1);
        v8 = *(this + 2);
        goto LABEL_88;
      }

      if (v7 != 8)
      {
        break;
      }

      if ((TagFallback & 7) != 0)
      {
        goto LABEL_37;
      }

      v20 = *(this + 1);
      v8 = *(this + 2);
LABEL_96:
      if (v20 >= v8 || (v33 = *v20, (v33 & 0x80000000) != 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, a1 + 9);
        if (!result)
        {
          return result;
        }

        v34 = *(this + 1);
        v8 = *(this + 2);
      }

      else
      {
        a1[9] = v33;
        v34 = v20 + 1;
        *(this + 1) = v34;
      }

      a1[12] |= 0x80u;
      if (v34 < v8 && *v34 == 72)
      {
        v9 = v34 + 1;
        *(this + 1) = v9;
LABEL_104:
        if (v9 >= v8 || (v35 = *v9, (v35 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, a1 + 10);
          if (!result)
          {
            return result;
          }

          v36 = *(this + 1);
          v8 = *(this + 2);
        }

        else
        {
          a1[10] = v35;
          v36 = v9 + 1;
          *(this + 1) = v36;
        }

        a1[12] |= 0x100u;
        if (v36 == v8 && (*(this + 11) || *(this + 6) == *(this + 10)))
        {
          *(this + 8) = 0;
          result = 1;
          *(this + 36) = 1;
          return result;
        }
      }
    }

    if (v7 == 9 && (TagFallback & 7) == 0)
    {
      v9 = *(this + 1);
      v8 = *(this + 2);
      goto LABEL_104;
    }

LABEL_37:
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

unsigned int *sub_24540AF08(unsigned int *result, uint64_t a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = result;
  v6 = result[12];
  if (v6)
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(1, result[2], a2, a4);
    v6 = v5[12];
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

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(2, v5[3], a2, a4);
  v6 = v5[12];
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
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(3, v5[4], a2, a4);
  v6 = v5[12];
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
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(4, v5[5], a2, a4);
  v6 = v5[12];
  if ((v6 & 0x10) == 0)
  {
LABEL_6:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_16;
  }

LABEL_15:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(5, v5[6], a2, a4);
  v6 = v5[12];
  if ((v6 & 0x20) == 0)
  {
LABEL_7:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_17;
  }

LABEL_16:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(6, v5[7], a2, a4);
  v6 = v5[12];
  if ((v6 & 0x40) == 0)
  {
LABEL_8:
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_9;
    }

LABEL_18:
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(8, v5[9], a2, a4);
    if ((v5[12] & 0x100) == 0)
    {
      return result;
    }

    goto LABEL_19;
  }

LABEL_17:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(7, v5[8], a2, a4);
  v6 = v5[12];
  if ((v6 & 0x80) != 0)
  {
    goto LABEL_18;
  }

LABEL_9:
  if ((v6 & 0x100) == 0)
  {
    return result;
  }

LABEL_19:
  v7 = v5[10];

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(9, v7, a2, a4);
}

uint64_t sub_24540B03C(unsigned int *a1, unsigned int a2)
{
  v3 = a1[12];
  if (!v3)
  {
    v4 = 0;
    if ((v3 & 0x100) == 0)
    {
      goto LABEL_56;
    }

    goto LABEL_52;
  }

  if (v3)
  {
    v5 = a1[2];
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
      v3 = a1[12];
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

  v6 = a1[3];
  if (v6 >= 0x80)
  {
    v7 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v6) + 1;
    v3 = a1[12];
  }

  else
  {
    v7 = 2;
  }

  v4 = (v7 + v4);
LABEL_18:
  if ((v3 & 4) != 0)
  {
    v8 = a1[4];
    if (v8 >= 0x80)
    {
      v9 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v8) + 1;
      v3 = a1[12];
    }

    else
    {
      v9 = 2;
    }

    v4 = (v9 + v4);
    if ((v3 & 8) == 0)
    {
LABEL_20:
      if ((v3 & 0x10) == 0)
      {
        goto LABEL_21;
      }

      goto LABEL_34;
    }
  }

  else if ((v3 & 8) == 0)
  {
    goto LABEL_20;
  }

  v10 = a1[5];
  if (v10 >= 0x80)
  {
    v11 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v10) + 1;
    v3 = a1[12];
  }

  else
  {
    v11 = 2;
  }

  v4 = (v11 + v4);
  if ((v3 & 0x10) == 0)
  {
LABEL_21:
    if ((v3 & 0x20) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_40;
  }

LABEL_34:
  v12 = a1[6];
  if ((v12 & 0x80000000) != 0)
  {
    v13 = 11;
  }

  else if (v12 >= 0x80)
  {
    v13 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v12) + 1;
    v3 = a1[12];
  }

  else
  {
    v13 = 2;
  }

  v4 = (v13 + v4);
  if ((v3 & 0x20) == 0)
  {
LABEL_22:
    if ((v3 & 0x40) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_44;
  }

LABEL_40:
  v14 = a1[7];
  if (v14 >= 0x80)
  {
    v15 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v14) + 1;
    v3 = a1[12];
  }

  else
  {
    v15 = 2;
  }

  v4 = (v15 + v4);
  if ((v3 & 0x40) == 0)
  {
LABEL_23:
    if ((v3 & 0x80) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_48;
  }

LABEL_44:
  v16 = a1[8];
  if (v16 >= 0x80)
  {
    v17 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v16) + 1;
    v3 = a1[12];
  }

  else
  {
    v17 = 2;
  }

  v4 = (v17 + v4);
  if ((v3 & 0x80) == 0)
  {
LABEL_24:
    if ((v3 & 0x100) == 0)
    {
      goto LABEL_56;
    }

    goto LABEL_52;
  }

LABEL_48:
  v18 = a1[9];
  if (v18 >= 0x80)
  {
    v19 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v18) + 1;
    v3 = a1[12];
  }

  else
  {
    v19 = 2;
  }

  v4 = (v19 + v4);
  if ((v3 & 0x100) != 0)
  {
LABEL_52:
    v20 = a1[10];
    if (v20 >= 0x80)
    {
      v21 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v20) + 1;
    }

    else
    {
      v21 = 2;
    }

    v4 = (v21 + v4);
  }

LABEL_56:
  a1[11] = v4;
  return v4;
}

void sub_24540B224(_DWORD *a1, _DWORD *lpsrc)
{
  if (!__dynamic_cast(lpsrc, MEMORY[0x277D82C38], &unk_285858850, 0))
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  sub_24540A758(a1, lpsrc);
}

void sub_24540B2E0(_DWORD *a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v14);
  }

  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 4));
  LODWORD(v4) = *(a2 + 24);
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
        wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v14);
      }

      v6 = *(*(a2 + 16) + 8 * v5);
      v7 = a1[7];
      v8 = a1[6];
      if (v8 >= v7)
      {
        if (v7 == a1[8])
        {
          wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 4));
          v7 = a1[7];
        }

        a1[7] = v7 + 1;
        operator new();
      }

      v9 = *(a1 + 2);
      a1[6] = v8 + 1;
      sub_24540A758(*(v9 + 8 * v8), v6);
      ++v5;
      v4 = *(a2 + 24);
    }

    while (v5 < v4);
  }

  LOBYTE(v10) = *(a2 + 48);
  if (v10)
  {
    if (*(a2 + 48))
    {
      v12 = *(a2 + 8);
      a1[12] |= 1u;
      a1[2] = v12;
      v10 = *(a2 + 48);
      if ((v10 & 2) == 0)
      {
LABEL_16:
        if ((v10 & 4) == 0)
        {
          return;
        }

        goto LABEL_17;
      }
    }

    else if ((*(a2 + 48) & 2) == 0)
    {
      goto LABEL_16;
    }

    v13 = *(a2 + 12);
    a1[12] |= 2u;
    a1[3] = v13;
    if ((*(a2 + 48) & 4) == 0)
    {
      return;
    }

LABEL_17:
    v11 = *(a2 + 40);
    a1[12] |= 4u;
    a1[10] = v11;
  }
}

void sub_24540B500(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_24540B520(uint64_t a1)
{
  *a1 = &unk_285856FD0;
  sub_2453EB7EC();
  v2 = *(a1 + 28);
  if (v2 >= 1)
  {
    for (i = 0; i < v2; ++i)
    {
      v4 = *(*(a1 + 16) + 8 * i);
      if (v4)
      {
        (*(*v4 + 8))(v4);
        v2 = *(a1 + 28);
      }
    }
  }

  v5 = *(a1 + 16);
  if (v5)
  {
    MEMORY[0x245D6A0A0](v5, 0x80C80B8603338);
  }

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);
}

void sub_24540B5E8(uint64_t a1)
{
  sub_24540B520(a1);

  JUMPOUT(0x245D6A0D0);
}

uint64_t sub_24540B678(uint64_t a1)
{
  if (*(a1 + 48))
  {
    *(a1 + 8) = 0;
    *(a1 + 40) = 0;
  }

  result = sub_2453DC6D0(a1 + 16);
  *(a1 + 48) = 0;
  return result;
}

uint64_t sub_24540B6B4(_DWORD *a1, wireless_diagnostics::google::protobuf::internal::WireFormatLite *this, unsigned int a3)
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
          if ((TagFallback & 7) == 0)
          {
            v14 = *(this + 1);
            v9 = *(this + 2);
            goto LABEL_37;
          }

          goto LABEL_20;
        }

        if (v7 != 4 || v8 != 2)
        {
          goto LABEL_20;
        }

        while (2)
        {
          v20 = a1[7];
          v21 = a1[6];
          if (v21 >= v20)
          {
            if (v20 == a1[8])
            {
              wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 4));
              v20 = a1[7];
            }

            a1[7] = v20 + 1;
            operator new();
          }

          v22 = *(a1 + 2);
          a1[6] = v21 + 1;
          v23 = *(v22 + 8 * v21);
          v32 = 0;
          v24 = *(this + 1);
          if (v24 >= *(this + 2) || *v24 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v32))
            {
              return 0;
            }
          }

          else
          {
            v32 = *v24;
            *(this + 1) = v24 + 1;
          }

          v25 = *(this + 14);
          v26 = *(this + 15);
          *(this + 14) = v25 + 1;
          if (v25 >= v26)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this);
          if (!sub_24540AA44(v23, this, v27) || *(this + 36) != 1)
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

          v19 = *(this + 1);
          v31 = *(this + 2);
          if (v19 < v31 && *v19 == 34)
          {
LABEL_44:
            *(this + 1) = v19 + 1;
            continue;
          }

          break;
        }

        if (v19 == v31 && (*(this + 11) || *(this + 6) == *(this + 10)))
        {
          *(this + 8) = 0;
          result = 1;
          *(this + 36) = 1;
          return result;
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

      v11 = *(this + 1);
      v9 = *(this + 2);
      if (v11 >= v9 || (v12 = *v11, v12 < 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, a1 + 2);
        if (!result)
        {
          return result;
        }

        v13 = *(this + 1);
        v9 = *(this + 2);
      }

      else
      {
        a1[2] = v12;
        v13 = v11 + 1;
        *(this + 1) = v13;
      }

      a1[12] |= 1u;
      if (v13 < v9 && *v13 == 16)
      {
        v10 = v13 + 1;
        *(this + 1) = v10;
LABEL_29:
        if (v10 >= v9 || (v16 = *v10, v16 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, a1 + 3);
          if (!result)
          {
            return result;
          }

          v17 = *(this + 1);
          v9 = *(this + 2);
        }

        else
        {
          a1[3] = v16;
          v17 = v10 + 1;
          *(this + 1) = v17;
        }

        a1[12] |= 2u;
        if (v17 < v9 && *v17 == 24)
        {
          v14 = v17 + 1;
          *(this + 1) = v14;
LABEL_37:
          if (v14 >= v9 || (v18 = *v14, v18 < 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, a1 + 10);
            if (!result)
            {
              return result;
            }

            v19 = *(this + 1);
            v9 = *(this + 2);
          }

          else
          {
            a1[10] = v18;
            v19 = v14 + 1;
            *(this + 1) = v19;
          }

          a1[12] |= 4u;
          if (v19 < v9 && *v19 == 34)
          {
            goto LABEL_44;
          }
        }
      }
    }

    if (v7 == 2 && (TagFallback & 7) == 0)
    {
      v10 = *(this + 1);
      v9 = *(this + 2);
      goto LABEL_29;
    }

LABEL_20:
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

uint64_t sub_24540BA44(uint64_t result, wireless_diagnostics::google::protobuf::MessageLite *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = result;
  v6 = *(result + 48);
  if (v6)
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(1, *(result + 8), a2, a4);
    v6 = *(v5 + 48);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(2, *(v5 + 12), a2, a4);
  if ((*(v5 + 48) & 4) != 0)
  {
LABEL_4:
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(3, *(v5 + 40), a2, a4);
  }

LABEL_5:
  if (*(v5 + 24) >= 1)
  {
    v7 = 0;
    do
    {
      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(4, *(*(v5 + 16) + 8 * v7++), a2, a4);
    }

    while (v7 < *(v5 + 24));
  }

  return result;
}

uint64_t sub_24540BAF8(uint64_t a1, unsigned int a2)
{
  LOBYTE(v3) = *(a1 + 48);
  if (!v3)
  {
    v4 = 0;
    goto LABEL_19;
  }

  if (*(a1 + 48))
  {
    v5 = *(a1 + 8);
    if (v5 >= 0x80)
    {
      v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5) + 1;
      v3 = *(a1 + 48);
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
    if ((*(a1 + 48) & 2) == 0)
    {
      goto LABEL_14;
    }
  }

  v6 = *(a1 + 12);
  if (v6 >= 0x80)
  {
    v7 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v6) + 1;
    v3 = *(a1 + 48);
  }

  else
  {
    v7 = 2;
  }

  v4 += v7;
LABEL_14:
  if ((v3 & 4) != 0)
  {
    v8 = *(a1 + 40);
    if (v8 >= 0x80)
    {
      v9 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v8) + 1;
    }

    else
    {
      v9 = 2;
    }

    v4 += v9;
  }

LABEL_19:
  v10 = *(a1 + 24);
  v11 = (v10 + v4);
  if (v10 >= 1)
  {
    v12 = 0;
    do
    {
      v13 = sub_24540B03C(*(*(a1 + 16) + 8 * v12), a2);
      v14 = v13;
      if (v13 >= 0x80)
      {
        v15 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v13);
      }

      else
      {
        v15 = 1;
      }

      v11 = (v14 + v11 + v15);
      ++v12;
    }

    while (v12 < *(a1 + 24));
  }

  *(a1 + 44) = v11;
  return v11;
}

void sub_24540BC0C(_DWORD *a1, void *lpsrc)
{
  if (!__dynamic_cast(lpsrc, MEMORY[0x277D82C38], &unk_285858868, 0))
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  sub_24540B2E0(a1, lpsrc);
}

void sub_24540BCC8(uint64_t a1, uint64_t a2)
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
      if (v5 >= 7)
      {
        __assert_rtn("set_ganss_id", "GnssEmergencyTypes.pb.h", 20392, "::CoreGem::proto::gnss::Emergency::GanssId_IsValid(value)");
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
        v7 = *(qword_2813CEAF8 + 8);
      }

      sub_24540B2E0(v6, v7);
    }
  }
}

void sub_24540BE10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_24540BE28(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = &unk_285857048;
  sub_2453EB7EC();
  if (qword_2813CEAF8 != a1)
  {
    v2 = *(a1 + 1);
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }
  }

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);
}

void sub_24540BEC0(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  sub_24540BE28(a1);

  JUMPOUT(0x245D6A0D0);
}

uint64_t sub_24540BF48(uint64_t result)
{
  v1 = result;
  v2 = *(result + 24);
  if (v2)
  {
    *(result + 16) = 0;
    if ((v2 & 2) != 0)
    {
      v3 = *(result + 8);
      if (v3)
      {
        if (*(v3 + 48))
        {
          *(v3 + 8) = 0;
          *(v3 + 40) = 0;
        }

        result = sub_2453DC6D0(v3 + 16);
        *(v3 + 48) = 0;
      }
    }
  }

  *(v1 + 24) = 0;
  return result;
}

uint64_t sub_24540BFA0(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormatLite *this, unsigned int a3)
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

      if (v9 <= 6)
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
    if (!sub_24540B6B4(v12, this, v16) || *(this + 36) != 1)
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

uint64_t sub_24540C1FC(uint64_t result, const wireless_diagnostics::google::protobuf::MessageLite *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
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
      v7 = *(qword_2813CEAF8 + 8);
    }

    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(2, v7, a2, a4);
  }

  return result;
}

uint64_t sub_24540C27C(uint64_t a1, unsigned int a2)
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
      v6 = *(qword_2813CEAF8 + 8);
    }

    v7 = sub_24540BAF8(v6, a2);
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

void sub_24540C348(uint64_t a1, void *lpsrc)
{
  if (!__dynamic_cast(lpsrc, MEMORY[0x277D82C38], &unk_285858880, 0))
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  sub_24540BCC8(a1, lpsrc);
}

void sub_24540C404(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v15);
  }

  LOBYTE(v4) = *(a2 + 52);
  if (v4)
  {
    if (*(a2 + 52))
    {
      v5 = *(a2 + 8);
      if (v5 >= 6)
      {
        __assert_rtn("set_time_id", "GnssEmergencyTypes.pb.h", 20461, "::CoreGem::proto::gnss::Emergency::GnssTimeId_IsValid(value)");
      }

      *(a1 + 52) |= 1u;
      *(a1 + 8) = v5;
      v4 = *(a2 + 52);
    }

    if ((v4 & 2) != 0)
    {
      v6 = *(a2 + 12);
      *(a1 + 52) |= 2u;
      *(a1 + 12) = v6;
      v4 = *(a2 + 52);
      if ((v4 & 4) == 0)
      {
LABEL_9:
        if ((v4 & 8) == 0)
        {
          goto LABEL_10;
        }

        goto LABEL_17;
      }
    }

    else if ((v4 & 4) == 0)
    {
      goto LABEL_9;
    }

    v7 = *(a2 + 16);
    *(a1 + 52) |= 4u;
    *(a1 + 16) = v7;
    v4 = *(a2 + 52);
    if ((v4 & 8) == 0)
    {
LABEL_10:
      if ((v4 & 0x10) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_18;
    }

LABEL_17:
    v8 = *(a2 + 20);
    *(a1 + 52) |= 8u;
    *(a1 + 20) = v8;
    v4 = *(a2 + 52);
    if ((v4 & 0x10) == 0)
    {
LABEL_11:
      if ((v4 & 0x20) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_19;
    }

LABEL_18:
    v9 = *(a2 + 32);
    *(a1 + 52) |= 0x10u;
    *(a1 + 32) = v9;
    v4 = *(a2 + 52);
    if ((v4 & 0x20) == 0)
    {
LABEL_12:
      if ((v4 & 0x40) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_24;
    }

LABEL_19:
    *(a1 + 52) |= 0x20u;
    v10 = *(a1 + 24);
    if (!v10)
    {
      operator new();
    }

    v11 = *(a2 + 24);
    if (!v11)
    {
      sub_2453EB7EC();
      v11 = *(qword_2813CEB00 + 24);
    }

    sub_24540000C(v10, v11);
    v4 = *(a2 + 52);
    if ((v4 & 0x40) == 0)
    {
LABEL_13:
      if ((v4 & 0x80) == 0)
      {
        return;
      }

LABEL_25:
      *(a1 + 52) |= 0x80u;
      v13 = *(a1 + 40);
      if (!v13)
      {
        operator new();
      }

      v14 = *(a2 + 40);
      if (!v14)
      {
        sub_2453EB7EC();
        v14 = *(qword_2813CEB00 + 40);
      }

      sub_24540BCC8(v13, v14);
      return;
    }

LABEL_24:
    v12 = *(a2 + 36);
    *(a1 + 52) |= 0x40u;
    *(a1 + 36) = v12;
    if ((*(a2 + 52) & 0x80) == 0)
    {
      return;
    }

    goto LABEL_25;
  }
}

void sub_24540C66C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_24540C684(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = &unk_2858570C0;
  sub_2453EB7EC();
  if (qword_2813CEB00 != a1)
  {
    v2 = *(a1 + 3);
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }

    v3 = *(a1 + 5);
    if (v3)
    {
      (*(*v3 + 8))(v3);
    }
  }

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);
}

void sub_24540C748(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  sub_24540C684(a1);

  JUMPOUT(0x245D6A0D0);
}

uint64_t sub_24540C7D8(uint64_t result)
{
  v1 = result;
  LOBYTE(v2) = *(result + 52);
  if (v2)
  {
    *(result + 32) = 0;
    *(result + 8) = 0;
    *(result + 16) = 0;
    if ((v2 & 0x20) != 0)
    {
      result = *(result + 24);
      if (result)
      {
        result = sub_245400288(result);
        v2 = *(v1 + 52);
      }
    }

    *(v1 + 36) = 0;
    if ((v2 & 0x80) != 0)
    {
      result = *(v1 + 40);
      if (result)
      {
        result = sub_24540BF48(result);
      }
    }
  }

  *(v1 + 52) = 0;
  return result;
}

uint64_t sub_24540C834(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormatLite *this, unsigned int a3)
{
  while (1)
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
          if (TagFallback >> 3 > 4)
          {
            break;
          }

          if (TagFallback >> 3 > 2)
          {
            if (v7 == 3)
            {
              if ((TagFallback & 7) == 0)
              {
                v17 = *(this + 1);
                v9 = *(this + 2);
                goto LABEL_53;
              }
            }

            else if (v7 == 4 && (TagFallback & 7) == 0)
            {
              v12 = *(this + 1);
              v9 = *(this + 2);
              goto LABEL_61;
            }

            goto LABEL_34;
          }

          if (v7 == 1)
          {
            if ((TagFallback & 7) != 0)
            {
              goto LABEL_34;
            }

            v48 = 0;
            v14 = *(this + 1);
            if (v14 >= *(this + 2) || (v15 = *v14, (v15 & 0x80000000) != 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v48);
              if (!result)
              {
                return result;
              }

              v15 = v48;
            }

            else
            {
              *(this + 1) = v14 + 1;
            }

            if (v15 <= 5)
            {
              *(a1 + 52) |= 1u;
              *(a1 + 8) = v15;
            }

            v21 = *(this + 1);
            v9 = *(this + 2);
            if (v21 < v9 && *v21 == 16)
            {
              v10 = v21 + 1;
              *(this + 1) = v10;
LABEL_45:
              if (v10 >= v9 || (v22 = *v10, v22 < 0))
              {
                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 12));
                if (!result)
                {
                  return result;
                }

                v23 = *(this + 1);
                v9 = *(this + 2);
              }

              else
              {
                *(a1 + 12) = v22;
                v23 = v10 + 1;
                *(this + 1) = v23;
              }

              *(a1 + 52) |= 2u;
              if (v23 < v9 && *v23 == 24)
              {
                v17 = v23 + 1;
                *(this + 1) = v17;
LABEL_53:
                if (v17 >= v9 || (v24 = *v17, v24 < 0))
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
                  v25 = v17 + 1;
                  *(this + 1) = v25;
                }

                *(a1 + 52) |= 4u;
                if (v25 < v9 && *v25 == 32)
                {
                  v12 = v25 + 1;
                  *(this + 1) = v12;
LABEL_61:
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

                  *(a1 + 52) |= 8u;
                  if (v27 < v9 && *v27 == 40)
                  {
                    v16 = v27 + 1;
                    *(this + 1) = v16;
LABEL_69:
                    if (v16 >= v9 || (v28 = *v16, v28 < 0))
                    {
                      result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 32));
                      if (!result)
                      {
                        return result;
                      }

                      v29 = *(this + 1);
                      v9 = *(this + 2);
                    }

                    else
                    {
                      *(a1 + 32) = v28;
                      v29 = v16 + 1;
                      *(this + 1) = v29;
                    }

                    v11 = *(a1 + 52) | 0x10;
                    *(a1 + 52) = v11;
                    if (v29 < v9 && *v29 == 50)
                    {
                      *(this + 1) = v29 + 1;
                      goto LABEL_77;
                    }
                  }
                }
              }
            }
          }

          else
          {
            if (v7 == 2 && (TagFallback & 7) == 0)
            {
              v10 = *(this + 1);
              v9 = *(this + 2);
              goto LABEL_45;
            }

LABEL_34:
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

        if (TagFallback >> 3 > 6)
        {
          break;
        }

        if (v7 == 5)
        {
          if ((TagFallback & 7) == 0)
          {
            v16 = *(this + 1);
            v9 = *(this + 2);
            goto LABEL_69;
          }

          goto LABEL_34;
        }

        if (v7 != 6 || v8 != 2)
        {
          goto LABEL_34;
        }

        v11 = *(a1 + 52);
LABEL_77:
        *(a1 + 52) = v11 | 0x20;
        v30 = *(a1 + 24);
        if (!v30)
        {
          operator new();
        }

        v49 = 0;
        v31 = *(this + 1);
        if (v31 >= *(this + 2) || *v31 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v49))
          {
            return 0;
          }
        }

        else
        {
          v49 = *v31;
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
        if (!sub_2454002C8(v30, this, v34) || *(this + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this);
        v35 = *(this + 14);
        v36 = __OFSUB__(v35, 1);
        v37 = v35 - 1;
        if (v37 < 0 == v36)
        {
          *(this + 14) = v37;
        }

        v38 = *(this + 1);
        v18 = *(this + 2);
        if (v38 < v18 && *v38 == 56)
        {
          v19 = v38 + 1;
          *(this + 1) = v19;
          goto LABEL_91;
        }
      }

      if (v7 != 7)
      {
        if (v7 == 8 && v8 == 2)
        {
          v13 = *(a1 + 52);
          goto LABEL_99;
        }

        goto LABEL_34;
      }

      if ((TagFallback & 7) != 0)
      {
        goto LABEL_34;
      }

      v19 = *(this + 1);
      v18 = *(this + 2);
LABEL_91:
      if (v19 >= v18 || (v39 = *v19, v39 < 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 36));
        if (!result)
        {
          return result;
        }

        v40 = *(this + 1);
        v18 = *(this + 2);
      }

      else
      {
        *(a1 + 36) = v39;
        v40 = v19 + 1;
        *(this + 1) = v40;
      }

      v13 = *(a1 + 52) | 0x40;
      *(a1 + 52) = v13;
    }

    while (v40 >= v18 || *v40 != 66);
    *(this + 1) = v40 + 1;
LABEL_99:
    *(a1 + 52) = v13 | 0x80;
    v41 = *(a1 + 40);
    if (!v41)
    {
      operator new();
    }

    v50 = 0;
    v42 = *(this + 1);
    if (v42 >= *(this + 2) || *v42 < 0)
    {
      if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v50))
      {
        return 0;
      }
    }

    else
    {
      v50 = *v42;
      *(this + 1) = v42 + 1;
    }

    v43 = *(this + 14);
    v44 = *(this + 15);
    *(this + 14) = v43 + 1;
    if (v43 >= v44)
    {
      return 0;
    }

    wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this);
    if (!sub_24540BFA0(v41, this, v45) || *(this + 36) != 1)
    {
      return 0;
    }

    wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this);
    v46 = *(this + 14);
    v36 = __OFSUB__(v46, 1);
    v47 = v46 - 1;
    if (v47 < 0 == v36)
    {
      *(this + 14) = v47;
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

uint64_t sub_24540CDE8(uint64_t result, const wireless_diagnostics::google::protobuf::MessageLite *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
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

      goto LABEL_12;
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

    goto LABEL_13;
  }

LABEL_12:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(3, *(v5 + 16), a2, a4);
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
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(4, *(v5 + 20), a2, a4);
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
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(5, *(v5 + 32), a2, a4);
  v6 = *(v5 + 52);
  if ((v6 & 0x20) == 0)
  {
LABEL_7:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_8;
    }

LABEL_18:
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(7, *(v5 + 36), a2, a4);
    if ((*(v5 + 52) & 0x80) == 0)
    {
      return result;
    }

    goto LABEL_19;
  }

LABEL_15:
  v7 = *(v5 + 24);
  if (!v7)
  {
    sub_2453EB7EC();
    v7 = *(qword_2813CEB00 + 24);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(6, v7, a2, a4);
  v6 = *(v5 + 52);
  if ((v6 & 0x40) != 0)
  {
    goto LABEL_18;
  }

LABEL_8:
  if ((v6 & 0x80) == 0)
  {
    return result;
  }

LABEL_19:
  v8 = *(v5 + 40);
  if (!v8)
  {
    sub_2453EB7EC();
    v8 = *(qword_2813CEB00 + 40);
  }

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(8, v8, a2, a4);
}

uint64_t sub_24540CF28(uint64_t a1, unint64_t a2)
{
  LOBYTE(v3) = *(a1 + 52);
  if (!v3)
  {
    v4 = 0;
    goto LABEL_52;
  }

  if (*(a1 + 52))
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
    if ((*(a1 + 52) & 2) == 0)
    {
      goto LABEL_17;
    }
  }

  v6 = *(a1 + 12);
  if (v6 >= 0x80)
  {
    v7 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v6) + 1;
    v3 = *(a1 + 52);
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
      v3 = *(a1 + 52);
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

      goto LABEL_32;
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
    v3 = *(a1 + 52);
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
      goto LABEL_21;
    }

    goto LABEL_36;
  }

LABEL_32:
  v12 = *(a1 + 32);
  if (v12 >= 0x80)
  {
    v13 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v12) + 1;
    v3 = *(a1 + 52);
  }

  else
  {
    v13 = 2;
  }

  v4 = (v13 + v4);
  if ((v3 & 0x20) == 0)
  {
LABEL_21:
    if ((v3 & 0x40) == 0)
    {
      goto LABEL_22;
    }

LABEL_42:
    v18 = *(a1 + 36);
    if (v18 >= 0x80)
    {
      v19 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v18) + 1;
      v3 = *(a1 + 52);
    }

    else
    {
      v19 = 2;
    }

    v4 = (v19 + v4);
    if ((v3 & 0x80) == 0)
    {
      goto LABEL_52;
    }

    goto LABEL_46;
  }

LABEL_36:
  v14 = *(a1 + 24);
  if (!v14)
  {
    sub_2453EB7EC();
    v14 = *(qword_2813CEB00 + 24);
  }

  v15 = sub_2454005A0(v14, a2);
  v16 = v15;
  if (v15 >= 0x80)
  {
    v17 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v15);
  }

  else
  {
    v17 = 1;
  }

  v4 = (v4 + v16 + v17 + 1);
  v3 = *(a1 + 52);
  if ((v3 & 0x40) != 0)
  {
    goto LABEL_42;
  }

LABEL_22:
  if ((v3 & 0x80) == 0)
  {
    goto LABEL_52;
  }

LABEL_46:
  v20 = *(a1 + 40);
  if (!v20)
  {
    sub_2453EB7EC();
    v20 = *(qword_2813CEB00 + 40);
  }

  v21 = sub_24540C27C(v20, a2);
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
LABEL_52:
  *(a1 + 48) = v4;
  return v4;
}

void sub_24540D120(uint64_t a1, void *lpsrc)
{
  if (!__dynamic_cast(lpsrc, MEMORY[0x277D82C38], &unk_285858898, 0))
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  sub_24540C404(a1, lpsrc);
}

void sub_24540D1DC(_DWORD *a1, _DWORD *a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v14);
  }

  v4 = a2[12];
  if (!v4)
  {
    goto LABEL_13;
  }

  if (v4)
  {
    v7 = a2[2];
    a1[12] |= 1u;
    a1[2] = v7;
    v4 = a2[12];
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

  else if ((v4 & 2) == 0)
  {
    goto LABEL_6;
  }

  v8 = a2[3];
  a1[12] |= 2u;
  a1[3] = v8;
  v4 = a2[12];
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
  v9 = a2[4];
  a1[12] |= 4u;
  a1[4] = v9;
  v4 = a2[12];
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
  v10 = a2[5];
  a1[12] |= 8u;
  a1[5] = v10;
  v4 = a2[12];
  if ((v4 & 0x10) == 0)
  {
LABEL_9:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_10;
    }

LABEL_21:
    v12 = a2[7];
    a1[12] |= 0x20u;
    a1[7] = v12;
    v4 = a2[12];
    if ((v4 & 0x40) == 0)
    {
LABEL_11:
      if ((v4 & 0x80) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_12;
    }

    goto LABEL_22;
  }

LABEL_20:
  v11 = a2[6];
  a1[12] |= 0x10u;
  a1[6] = v11;
  v4 = a2[12];
  if ((v4 & 0x20) != 0)
  {
    goto LABEL_21;
  }

LABEL_10:
  if ((v4 & 0x40) == 0)
  {
    goto LABEL_11;
  }

LABEL_22:
  v13 = a2[8];
  if (v13 >= 6)
  {
    __assert_rtn("set_multi_path", "GnssEmergencyTypes.pb.h", 20814, "::CoreGem::proto::gnss::Emergency::MultipathIndicator_IsValid(value)");
  }

  a1[12] |= 0x40u;
  a1[8] = v13;
  v4 = a2[12];
  if ((v4 & 0x80) != 0)
  {
LABEL_12:
    v5 = a2[9];
    a1[12] |= 0x80u;
    a1[9] = v5;
    v4 = a2[12];
  }

LABEL_13:
  if ((v4 & 0x100) != 0)
  {
    v6 = a2[10];
    a1[12] |= 0x100u;
    a1[10] = v6;
  }
}

void sub_24540D398(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_24540D3B0(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = &unk_285857138;
  sub_2453EB7EC();

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);
}

void sub_24540D40C(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  sub_24540D3B0(a1);

  JUMPOUT(0x245D6A0D0);
}

uint64_t sub_24540D49C(uint64_t result)
{
  v1 = *(result + 48);
  if (v1)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
  }

  if ((v1 & 0xFF00) != 0)
  {
    *(result + 40) = 0;
  }

  *(result + 48) = 0;
  return result;
}

uint64_t sub_24540D4C8(unsigned int *a1, wireless_diagnostics::google::protobuf::internal::WireFormatLite *this, unsigned int a3)
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
          if (TagFallback >> 3 > 4)
          {
            break;
          }

          if (TagFallback >> 3 > 2)
          {
            if (v7 != 3)
            {
              if (v7 != 4 || (TagFallback & 7) != 0)
              {
                goto LABEL_37;
              }

              v12 = *(this + 1);
              v10 = *(this + 2);
              goto LABEL_62;
            }

            if ((TagFallback & 7) != 0)
            {
              goto LABEL_37;
            }

            v17 = *(this + 1);
            v10 = *(this + 2);
LABEL_54:
            if (v17 >= v10 || (v23 = *v17, (v23 & 0x80000000) != 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, a1 + 4);
              if (!result)
              {
                return result;
              }

              v24 = *(this + 1);
              v10 = *(this + 2);
            }

            else
            {
              a1[4] = v23;
              v24 = v17 + 1;
              *(this + 1) = v24;
            }

            a1[12] |= 4u;
            if (v24 < v10 && *v24 == 32)
            {
              v12 = v24 + 1;
              *(this + 1) = v12;
LABEL_62:
              if (v12 >= v10 || (v25 = *v12, (v25 & 0x80000000) != 0))
              {
                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, a1 + 5);
                if (!result)
                {
                  return result;
                }

                v26 = *(this + 1);
                v10 = *(this + 2);
              }

              else
              {
                a1[5] = v25;
                v26 = v12 + 1;
                *(this + 1) = v26;
              }

              a1[12] |= 8u;
              if (v26 < v10 && *v26 == 40)
              {
                v19 = v26 + 1;
                *(this + 1) = v19;
                goto LABEL_70;
              }
            }
          }

          else
          {
            if (v7 != 1)
            {
              if (v7 != 2 || (TagFallback & 7) != 0)
              {
                goto LABEL_37;
              }

              v11 = *(this + 1);
              v10 = *(this + 2);
              goto LABEL_46;
            }

            if ((TagFallback & 7) != 0)
            {
              goto LABEL_37;
            }

            v38 = 0;
            v14 = *(this + 1);
            v10 = *(this + 2);
            if (v14 >= v10 || (v15 = *v14, (v15 & 0x80000000) != 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v38);
              if (!result)
              {
                return result;
              }

              v15 = v38;
              v16 = *(this + 1);
              v10 = *(this + 2);
            }

            else
            {
              v16 = v14 + 1;
              *(this + 1) = v16;
            }

            a1[2] = v15;
            a1[12] |= 1u;
            if (v16 < v10 && *v16 == 16)
            {
              v11 = v16 + 1;
              *(this + 1) = v11;
LABEL_46:
              if (v11 >= v10 || (v21 = *v11, (v21 & 0x80000000) != 0))
              {
                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, a1 + 3);
                if (!result)
                {
                  return result;
                }

                v22 = *(this + 1);
                v10 = *(this + 2);
              }

              else
              {
                a1[3] = v21;
                v22 = v11 + 1;
                *(this + 1) = v22;
              }

              a1[12] |= 2u;
              if (v22 < v10 && *v22 == 24)
              {
                v17 = v22 + 1;
                *(this + 1) = v17;
                goto LABEL_54;
              }
            }
          }
        }

        if (TagFallback >> 3 > 6)
        {
          break;
        }

        if (v7 != 5)
        {
          if (v7 != 6 || (TagFallback & 7) != 0)
          {
            goto LABEL_37;
          }

          v13 = *(this + 1);
          v10 = *(this + 2);
          goto LABEL_78;
        }

        if ((TagFallback & 7) != 0)
        {
          goto LABEL_37;
        }

        v19 = *(this + 1);
        v10 = *(this + 2);
LABEL_70:
        if (v19 >= v10 || (v27 = *v19, (v27 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, a1 + 6);
          if (!result)
          {
            return result;
          }

          v28 = *(this + 1);
          v10 = *(this + 2);
        }

        else
        {
          a1[6] = v27;
          v28 = v19 + 1;
          *(this + 1) = v28;
        }

        a1[12] |= 0x10u;
        if (v28 < v10 && *v28 == 48)
        {
          v13 = v28 + 1;
          *(this + 1) = v13;
LABEL_78:
          if (v13 >= v10 || (v29 = *v13, (v29 & 0x80000000) != 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, a1 + 7);
            if (!result)
            {
              return result;
            }

            v30 = *(this + 1);
            v10 = *(this + 2);
          }

          else
          {
            a1[7] = v29;
            v30 = v13 + 1;
            *(this + 1) = v30;
          }

          a1[12] |= 0x20u;
          if (v30 < v10 && *v30 == 56)
          {
            v18 = v30 + 1;
            *(this + 1) = v18;
LABEL_86:
            v39 = 0;
            if (v18 >= v10 || (v31 = *v18, (v31 & 0x80000000) != 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v39);
              if (!result)
              {
                return result;
              }

              v31 = v39;
            }

            else
            {
              *(this + 1) = v18 + 1;
            }

            if (v31 <= 5)
            {
              a1[12] |= 0x40u;
              a1[8] = v31;
            }

            v32 = *(this + 1);
            v8 = *(this + 2);
            if (v32 < v8 && *v32 == 64)
            {
              v20 = v32 + 1;
              *(this + 1) = v20;
              goto LABEL_96;
            }
          }
        }
      }

      if (v7 == 7)
      {
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_37;
        }

        v18 = *(this + 1);
        v10 = *(this + 2);
        goto LABEL_86;
      }

      if (v7 != 8)
      {
        break;
      }

      if ((TagFallback & 7) != 0)
      {
        goto LABEL_37;
      }

      v20 = *(this + 1);
      v8 = *(this + 2);
LABEL_96:
      if (v20 >= v8 || (v33 = *v20, (v33 & 0x80000000) != 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, a1 + 9);
        if (!result)
        {
          return result;
        }

        v34 = *(this + 1);
        v8 = *(this + 2);
      }

      else
      {
        a1[9] = v33;
        v34 = v20 + 1;
        *(this + 1) = v34;
      }

      a1[12] |= 0x80u;
      if (v34 < v8 && *v34 == 72)
      {
        v9 = v34 + 1;
        *(this + 1) = v9;
LABEL_104:
        if (v9 >= v8 || (v35 = *v9, (v35 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, a1 + 10);
          if (!result)
          {
            return result;
          }

          v36 = *(this + 1);
          v8 = *(this + 2);
        }

        else
        {
          a1[10] = v35;
          v36 = v9 + 1;
          *(this + 1) = v36;
        }

        a1[12] |= 0x100u;
        if (v36 == v8 && (*(this + 11) || *(this + 6) == *(this + 10)))
        {
          *(this + 8) = 0;
          result = 1;
          *(this + 36) = 1;
          return result;
        }
      }
    }

    if (v7 == 9 && (TagFallback & 7) == 0)
    {
      v9 = *(this + 1);
      v8 = *(this + 2);
      goto LABEL_104;
    }

LABEL_37:
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

unsigned int *sub_24540D98C(unsigned int *result, uint64_t a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = result;
  v6 = result[12];
  if (v6)
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(1, result[2], a2, a4);
    v6 = v5[12];
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

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(2, v5[3], a2, a4);
  v6 = v5[12];
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
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(3, v5[4], a2, a4);
  v6 = v5[12];
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
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(4, v5[5], a2, a4);
  v6 = v5[12];
  if ((v6 & 0x10) == 0)
  {
LABEL_6:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_16;
  }

LABEL_15:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(5, v5[6], a2, a4);
  v6 = v5[12];
  if ((v6 & 0x20) == 0)
  {
LABEL_7:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_17;
  }

LABEL_16:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(6, v5[7], a2, a4);
  v6 = v5[12];
  if ((v6 & 0x40) == 0)
  {
LABEL_8:
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_9;
    }

LABEL_18:
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(8, v5[9], a2, a4);
    if ((v5[12] & 0x100) == 0)
    {
      return result;
    }

    goto LABEL_19;
  }

LABEL_17:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(7, v5[8], a2, a4);
  v6 = v5[12];
  if ((v6 & 0x80) != 0)
  {
    goto LABEL_18;
  }

LABEL_9:
  if ((v6 & 0x100) == 0)
  {
    return result;
  }

LABEL_19:
  v7 = v5[10];

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(9, v7, a2, a4);
}

uint64_t sub_24540DAC0(unsigned int *a1, unsigned int a2)
{
  v3 = a1[12];
  if (!v3)
  {
    v4 = 0;
    if ((v3 & 0x100) == 0)
    {
      goto LABEL_56;
    }

    goto LABEL_52;
  }

  if (v3)
  {
    v5 = a1[2];
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
      v3 = a1[12];
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

  v6 = a1[3];
  if (v6 >= 0x80)
  {
    v7 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v6) + 1;
    v3 = a1[12];
  }

  else
  {
    v7 = 2;
  }

  v4 = (v7 + v4);
LABEL_18:
  if ((v3 & 4) != 0)
  {
    v8 = a1[4];
    if (v8 >= 0x80)
    {
      v9 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v8) + 1;
      v3 = a1[12];
    }

    else
    {
      v9 = 2;
    }

    v4 = (v9 + v4);
    if ((v3 & 8) == 0)
    {
LABEL_20:
      if ((v3 & 0x10) == 0)
      {
        goto LABEL_21;
      }

      goto LABEL_34;
    }
  }

  else if ((v3 & 8) == 0)
  {
    goto LABEL_20;
  }

  v10 = a1[5];
  if (v10 >= 0x80)
  {
    v11 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v10) + 1;
    v3 = a1[12];
  }

  else
  {
    v11 = 2;
  }

  v4 = (v11 + v4);
  if ((v3 & 0x10) == 0)
  {
LABEL_21:
    if ((v3 & 0x20) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_38;
  }

LABEL_34:
  v12 = a1[6];
  if (v12 >= 0x80)
  {
    v13 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v12) + 1;
    v3 = a1[12];
  }

  else
  {
    v13 = 2;
  }

  v4 = (v13 + v4);
  if ((v3 & 0x20) == 0)
  {
LABEL_22:
    if ((v3 & 0x40) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_42;
  }

LABEL_38:
  v14 = a1[7];
  if (v14 >= 0x80)
  {
    v15 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v14) + 1;
    v3 = a1[12];
  }

  else
  {
    v15 = 2;
  }

  v4 = (v15 + v4);
  if ((v3 & 0x40) == 0)
  {
LABEL_23:
    if ((v3 & 0x80) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_48;
  }

LABEL_42:
  v16 = a1[8];
  if ((v16 & 0x80000000) != 0)
  {
    v17 = 11;
  }

  else if (v16 >= 0x80)
  {
    v17 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v16) + 1;
    v3 = a1[12];
  }

  else
  {
    v17 = 2;
  }

  v4 = (v17 + v4);
  if ((v3 & 0x80) == 0)
  {
LABEL_24:
    if ((v3 & 0x100) == 0)
    {
      goto LABEL_56;
    }

    goto LABEL_52;
  }

LABEL_48:
  v18 = a1[9];
  if (v18 >= 0x80)
  {
    v19 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v18) + 1;
    v3 = a1[12];
  }

  else
  {
    v19 = 2;
  }

  v4 = (v19 + v4);
  if ((v3 & 0x100) != 0)
  {
LABEL_52:
    v20 = a1[10];
    if (v20 >= 0x80)
    {
      v21 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v20) + 1;
    }

    else
    {
      v21 = 2;
    }

    v4 = (v21 + v4);
  }

LABEL_56:
  a1[11] = v4;
  return v4;
}

void sub_24540DCA8(_DWORD *a1, _DWORD *lpsrc)
{
  if (!__dynamic_cast(lpsrc, MEMORY[0x277D82C38], &unk_2858588B0, 0))
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  sub_24540D1DC(a1, lpsrc);
}

void sub_24540DD64(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v21);
  }

  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 24));
  LODWORD(v4) = *(a2 + 32);
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
        wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v21);
      }

      v6 = *(*(a2 + 24) + 8 * v5);
      v7 = *(a1 + 36);
      v8 = *(a1 + 32);
      if (v8 >= v7)
      {
        if (v7 == *(a1 + 40))
        {
          wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 24));
          v7 = *(a1 + 36);
        }

        *(a1 + 36) = v7 + 1;
        operator new();
      }

      v9 = *(a1 + 24);
      *(a1 + 32) = v8 + 1;
      sub_24540D1DC(*(v9 + 8 * v8), v6);
      ++v5;
      v4 = *(a2 + 32);
    }

    while (v5 < v4);
  }

  v10 = *(a2 + 76);
  if (!v10)
  {
    goto LABEL_22;
  }

  if (v10)
  {
    v14 = *(a2 + 8);
    *(a1 + 76) |= 1u;
    *(a1 + 8) = v14;
    v10 = *(a2 + 76);
    if ((v10 & 2) == 0)
    {
LABEL_16:
      if ((v10 & 4) == 0)
      {
        goto LABEL_17;
      }

      goto LABEL_31;
    }
  }

  else if ((v10 & 2) == 0)
  {
    goto LABEL_16;
  }

  v15 = *(a2 + 12);
  *(a1 + 76) |= 2u;
  *(a1 + 12) = v15;
  v10 = *(a2 + 76);
  if ((v10 & 4) == 0)
  {
LABEL_17:
    if ((v10 & 8) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_32;
  }

LABEL_31:
  v16 = *(a2 + 16);
  *(a1 + 76) |= 4u;
  *(a1 + 16) = v16;
  v10 = *(a2 + 76);
  if ((v10 & 8) == 0)
  {
LABEL_18:
    if ((v10 & 0x20) == 0)
    {
      goto LABEL_19;
    }

LABEL_33:
    *(a1 + 76) |= 0x20u;
    v18 = *(a1 + 48);
    if (!v18)
    {
      operator new();
    }

    v19 = *(a2 + 48);
    if (!v19)
    {
      sub_2453EB7EC();
      v19 = *(qword_2813CEB10 + 48);
    }

    sub_2453FB61C(v18, v19);
    v10 = *(a2 + 76);
    if ((v10 & 0x40) == 0)
    {
LABEL_20:
      if ((v10 & 0x80) == 0)
      {
        goto LABEL_22;
      }

      goto LABEL_21;
    }

    goto LABEL_38;
  }

LABEL_32:
  v17 = *(a2 + 20);
  *(a1 + 76) |= 8u;
  *(a1 + 20) = v17;
  v10 = *(a2 + 76);
  if ((v10 & 0x20) != 0)
  {
    goto LABEL_33;
  }

LABEL_19:
  if ((v10 & 0x40) == 0)
  {
    goto LABEL_20;
  }

LABEL_38:
  v20 = *(a2 + 56);
  *(a1 + 76) |= 0x40u;
  *(a1 + 56) = v20;
  v10 = *(a2 + 76);
  if ((v10 & 0x80) != 0)
  {
LABEL_21:
    v11 = *(a2 + 60);
    *(a1 + 76) |= 0x80u;
    *(a1 + 60) = v11;
    v10 = *(a2 + 76);
  }

LABEL_22:
  if ((v10 & 0x100) != 0)
  {
    *(a1 + 76) |= 0x100u;
    v12 = *(a1 + 64);
    if (!v12)
    {
      operator new();
    }

    v13 = *(a2 + 64);
    if (!v13)
    {
      sub_2453EB7EC();
      v13 = *(qword_2813CEB10 + 64);
    }

    sub_2453FBD38(v12, v13);
  }
}

void sub_24540E0EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_24540E10C(uint64_t a1)
{
  *a1 = &unk_2858571B0;
  sub_2453EB7EC();
  if (qword_2813CEB10 != a1)
  {
    v2 = *(a1 + 48);
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }

    v3 = *(a1 + 64);
    if (v3)
    {
      (*(*v3 + 8))(v3);
    }
  }

  v4 = *(a1 + 36);
  if (v4 >= 1)
  {
    for (i = 0; i < v4; ++i)
    {
      v6 = *(*(a1 + 24) + 8 * i);
      if (v6)
      {
        (*(*v6 + 8))(v6);
        v4 = *(a1 + 36);
      }
    }
  }

  v7 = *(a1 + 24);
  if (v7)
  {
    MEMORY[0x245D6A0A0](v7, 0x80C80B8603338);
  }

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);
}

void sub_24540E23C(uint64_t a1)
{
  sub_24540E10C(a1);

  JUMPOUT(0x245D6A0D0);
}

uint64_t sub_24540E2D0(uint64_t a1)
{
  v2 = *(a1 + 76);
  if (v2)
  {
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    if ((v2 & 0x20) != 0)
    {
      v3 = *(a1 + 48);
      if (v3)
      {
        sub_2453FB898(v3);
        v2 = *(a1 + 76);
      }
    }

    *(a1 + 56) = 0;
  }

  if ((v2 & 0x100) != 0)
  {
    v4 = *(a1 + 64);
    if (v4)
    {
      if (*(v4 + 24))
      {
        *(v4 + 8) = 0;
        *(v4 + 16) = 0;
      }

      *(v4 + 24) = 0;
    }
  }

  result = sub_2453DC6D0(a1 + 24);
  *(a1 + 76) = 0;
  return result;
}

uint64_t sub_24540E344(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormatLite *this, unsigned int a3)
{
  while (1)
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
          if (TagFallback >> 3 > 4)
          {
            break;
          }

          if (TagFallback >> 3 > 2)
          {
            if (v7 == 3)
            {
              if ((TagFallback & 7) != 0)
              {
                goto LABEL_37;
              }

              v16 = *(this + 1);
              v10 = *(this + 2);
              goto LABEL_54;
            }

            if (v7 != 4 || (TagFallback & 7) != 0)
            {
              goto LABEL_37;
            }

            v12 = *(this + 1);
            v10 = *(this + 2);
LABEL_62:
            if (v12 >= v10 || (v25 = *v12, v25 < 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 20));
              if (!result)
              {
                return result;
              }

              v26 = *(this + 1);
              v10 = *(this + 2);
            }

            else
            {
              *(a1 + 20) = v25;
              v26 = v12 + 1;
              *(this + 1) = v26;
            }

            *(a1 + 76) |= 8u;
            if (v26 < v10 && *v26 == 42)
            {
              while (1)
              {
                *(this + 1) = v26 + 1;
LABEL_70:
                v27 = *(a1 + 36);
                v28 = *(a1 + 32);
                if (v28 >= v27)
                {
                  if (v27 == *(a1 + 40))
                  {
                    wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 24));
                    v27 = *(a1 + 36);
                  }

                  *(a1 + 36) = v27 + 1;
                  operator new();
                }

                v29 = *(a1 + 24);
                *(a1 + 32) = v28 + 1;
                v30 = *(v29 + 8 * v28);
                v58 = 0;
                v31 = *(this + 1);
                if (v31 >= *(this + 2) || *v31 < 0)
                {
                  if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v58))
                  {
                    return 0;
                  }
                }

                else
                {
                  v58 = *v31;
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
                if (!sub_24540D4C8(v30, this, v34) || *(this + 36) != 1)
                {
                  return 0;
                }

                wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this);
                v35 = *(this + 14);
                v36 = __OFSUB__(v35, 1);
                v37 = v35 - 1;
                if (v37 < 0 == v36)
                {
                  *(this + 14) = v37;
                }

                v26 = *(this + 1);
                if (v26 >= *(this + 2))
                {
                  break;
                }

                v38 = *v26;
                if (v38 != 42)
                {
                  if (v38 != 50)
                  {
                    goto LABEL_1;
                  }

                  *(this + 1) = v26 + 1;
                  goto LABEL_88;
                }
              }
            }
          }

          else
          {
            if (v7 != 1)
            {
              if (v7 != 2 || (TagFallback & 7) != 0)
              {
                goto LABEL_37;
              }

              v11 = *(this + 1);
              v10 = *(this + 2);
              goto LABEL_46;
            }

            if ((TagFallback & 7) != 0)
            {
              goto LABEL_37;
            }

            v13 = *(this + 1);
            v10 = *(this + 2);
            if (v13 >= v10 || (v14 = *v13, v14 < 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 8));
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
              v15 = v13 + 1;
              *(this + 1) = v15;
            }

            *(a1 + 76) |= 1u;
            if (v15 < v10 && *v15 == 16)
            {
              v11 = v15 + 1;
              *(this + 1) = v11;
LABEL_46:
              if (v11 >= v10 || (v21 = *v11, v21 < 0))
              {
                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 12));
                if (!result)
                {
                  return result;
                }

                v22 = *(this + 1);
                v10 = *(this + 2);
              }

              else
              {
                *(a1 + 12) = v21;
                v22 = v11 + 1;
                *(this + 1) = v22;
              }

              *(a1 + 76) |= 2u;
              if (v22 < v10 && *v22 == 24)
              {
                v16 = v22 + 1;
                *(this + 1) = v16;
LABEL_54:
                if (v16 >= v10 || (v23 = *v16, v23 < 0))
                {
                  result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 16));
                  if (!result)
                  {
                    return result;
                  }

                  v24 = *(this + 1);
                  v10 = *(this + 2);
                }

                else
                {
                  *(a1 + 16) = v23;
                  v24 = v16 + 1;
                  *(this + 1) = v24;
                }

                *(a1 + 76) |= 4u;
                if (v24 < v10 && *v24 == 32)
                {
                  v12 = v24 + 1;
                  *(this + 1) = v12;
                  goto LABEL_62;
                }
              }
            }
          }
        }

        if (TagFallback >> 3 <= 6)
        {
          break;
        }

        if (v7 == 7)
        {
          if ((TagFallback & 7) != 0)
          {
            goto LABEL_37;
          }

          v18 = *(this + 1);
          v17 = *(this + 2);
          goto LABEL_102;
        }

        if (v7 == 8)
        {
          if ((TagFallback & 7) != 0)
          {
            goto LABEL_37;
          }

          v19 = *(this + 1);
          v17 = *(this + 2);
LABEL_110:
          if (v19 >= v17 || (v49 = *v19, v49 < 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 60));
            if (!result)
            {
              return result;
            }

            v50 = *(this + 1);
            v17 = *(this + 2);
          }

          else
          {
            *(a1 + 60) = v49;
            v50 = v19 + 1;
            *(this + 1) = v50;
          }

          v9 = *(a1 + 76) | 0x80;
          *(a1 + 76) = v9;
          if (v50 < v17 && *v50 == 74)
          {
            *(this + 1) = v50 + 1;
            goto LABEL_118;
          }
        }

        else
        {
          if (v7 != 9 || v8 != 2)
          {
            goto LABEL_37;
          }

          v9 = *(a1 + 76);
LABEL_118:
          *(a1 + 76) = v9 | 0x100;
          v51 = *(a1 + 64);
          if (!v51)
          {
            operator new();
          }

          v60 = 0;
          v52 = *(this + 1);
          if (v52 >= *(this + 2) || *v52 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v60))
            {
              return 0;
            }
          }

          else
          {
            v60 = *v52;
            *(this + 1) = v52 + 1;
          }

          v53 = *(this + 14);
          v54 = *(this + 15);
          *(this + 14) = v53 + 1;
          if (v53 >= v54)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this);
          if (!sub_2453FBF20(v51, this, v55) || *(this + 36) != 1)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this);
          v56 = *(this + 14);
          v36 = __OFSUB__(v56, 1);
          v57 = v56 - 1;
          if (v57 < 0 == v36)
          {
            *(this + 14) = v57;
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

      if (v7 == 5)
      {
        if (v8 != 2)
        {
          break;
        }

        goto LABEL_70;
      }

      if (v7 != 6 || v8 != 2)
      {
        break;
      }

LABEL_88:
      *(a1 + 76) |= 0x20u;
      v39 = *(a1 + 48);
      if (!v39)
      {
        operator new();
      }

      v59 = 0;
      v40 = *(this + 1);
      if (v40 >= *(this + 2) || *v40 < 0)
      {
        if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v59))
        {
          return 0;
        }
      }

      else
      {
        v59 = *v40;
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
      if (!sub_2453FB8D8(v39, this, v43) || *(this + 36) != 1)
      {
        return 0;
      }

      wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this);
      v44 = *(this + 14);
      v36 = __OFSUB__(v44, 1);
      v45 = v44 - 1;
      if (v45 < 0 == v36)
      {
        *(this + 14) = v45;
      }

      v46 = *(this + 1);
      v17 = *(this + 2);
      if (v46 < v17 && *v46 == 56)
      {
        v18 = v46 + 1;
        *(this + 1) = v18;
LABEL_102:
        if (v18 >= v17 || (v47 = *v18, v47 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 56));
          if (!result)
          {
            return result;
          }

          v48 = *(this + 1);
          v17 = *(this + 2);
        }

        else
        {
          *(a1 + 56) = v47;
          v48 = v18 + 1;
          *(this + 1) = v48;
        }

        *(a1 + 76) |= 0x40u;
        if (v48 < v17 && *v48 == 64)
        {
          v19 = v48 + 1;
          *(this + 1) = v19;
          goto LABEL_110;
        }
      }
    }

LABEL_37:
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

uint64_t sub_24540EA78(uint64_t result, wireless_diagnostics::google::protobuf::MessageLite *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = result;
  v6 = *(result + 76);
  if (v6)
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(1, *(result + 8), a2, a4);
    v6 = *(v5 + 76);
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
  v6 = *(v5 + 76);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_16:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(3, *(v5 + 16), a2, a4);
  if ((*(v5 + 76) & 8) != 0)
  {
LABEL_5:
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(4, *(v5 + 20), a2, a4);
  }

LABEL_6:
  if (*(v5 + 32) >= 1)
  {
    v7 = 0;
    do
    {
      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(5, *(*(v5 + 24) + 8 * v7++), a2, a4);
    }

    while (v7 < *(v5 + 32));
  }

  v8 = *(v5 + 76);
  if ((v8 & 0x20) != 0)
  {
    v9 = *(v5 + 48);
    if (!v9)
    {
      sub_2453EB7EC();
      v9 = *(qword_2813CEB10 + 48);
    }

    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(6, v9, a2, a4);
    v8 = *(v5 + 76);
    if ((v8 & 0x40) == 0)
    {
LABEL_11:
      if ((v8 & 0x80) == 0)
      {
        goto LABEL_12;
      }

LABEL_22:
      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(8, *(v5 + 60), a2, a4);
      if ((*(v5 + 76) & 0x100) == 0)
      {
        return result;
      }

      goto LABEL_23;
    }
  }

  else if ((v8 & 0x40) == 0)
  {
    goto LABEL_11;
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(7, *(v5 + 56), a2, a4);
  v8 = *(v5 + 76);
  if ((v8 & 0x80) != 0)
  {
    goto LABEL_22;
  }

LABEL_12:
  if ((v8 & 0x100) == 0)
  {
    return result;
  }

LABEL_23:
  v10 = *(v5 + 64);
  if (!v10)
  {
    sub_2453EB7EC();
    v10 = *(qword_2813CEB10 + 64);
  }

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(9, v10, a2, a4);
}

uint64_t sub_24540EBF8(uint64_t a1, unsigned int a2)
{
  v3 = *(a1 + 76);
  if (v3)
  {
    if (v3)
    {
      v5 = *(a1 + 8);
      if (v5 >= 0x80)
      {
        v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5) + 1;
        v3 = *(a1 + 76);
        if ((v3 & 2) == 0)
        {
          goto LABEL_15;
        }
      }

      else
      {
        v4 = 2;
        if ((v3 & 2) == 0)
        {
          goto LABEL_15;
        }
      }
    }

    else
    {
      v4 = 0;
      if ((v3 & 2) == 0)
      {
        goto LABEL_15;
      }
    }

    v6 = *(a1 + 12);
    if (v6 >= 0x80)
    {
      v7 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v6) + 1;
      v3 = *(a1 + 76);
    }

    else
    {
      v7 = 2;
    }

    v4 += v7;
LABEL_15:
    if ((v3 & 4) != 0)
    {
      v8 = *(a1 + 16);
      if (v8 >= 0x80)
      {
        v9 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v8) + 1;
        v3 = *(a1 + 76);
      }

      else
      {
        v9 = 2;
      }

      v4 += v9;
      if ((v3 & 8) == 0)
      {
LABEL_17:
        if ((v3 & 0x20) == 0)
        {
          goto LABEL_18;
        }

        goto LABEL_30;
      }
    }

    else if ((v3 & 8) == 0)
    {
      goto LABEL_17;
    }

    v10 = *(a1 + 20);
    if (v10 >= 0x80)
    {
      v11 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v10) + 1;
      v3 = *(a1 + 76);
    }

    else
    {
      v11 = 2;
    }

    v4 += v11;
    if ((v3 & 0x20) == 0)
    {
LABEL_18:
      if ((v3 & 0x40) == 0)
      {
        goto LABEL_19;
      }

      goto LABEL_36;
    }

LABEL_30:
    v12 = *(a1 + 48);
    if (!v12)
    {
      sub_2453EB7EC();
      v12 = *(qword_2813CEB10 + 48);
    }

    v13 = sub_2453FBBB0(v12, a2);
    v14 = v13;
    if (v13 >= 0x80)
    {
      v15 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v13);
    }

    else
    {
      v15 = 1;
    }

    v4 += v14 + v15 + 1;
    v3 = *(a1 + 76);
    if ((v3 & 0x40) == 0)
    {
LABEL_19:
      if ((v3 & 0x80) == 0)
      {
        goto LABEL_20;
      }

      goto LABEL_40;
    }

LABEL_36:
    v16 = *(a1 + 56);
    if (v16 >= 0x80)
    {
      v17 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v16) + 1;
      v3 = *(a1 + 76);
    }

    else
    {
      v17 = 2;
    }

    v4 += v17;
    if ((v3 & 0x80) == 0)
    {
LABEL_20:
      if ((v3 & 0x100) == 0)
      {
        goto LABEL_50;
      }

      goto LABEL_44;
    }

LABEL_40:
    v18 = *(a1 + 60);
    if (v18 >= 0x80)
    {
      v19 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v18) + 1;
      v3 = *(a1 + 76);
    }

    else
    {
      v19 = 2;
    }

    v4 += v19;
    if ((v3 & 0x100) == 0)
    {
      goto LABEL_50;
    }

    goto LABEL_44;
  }

  v4 = 0;
  if ((v3 & 0x100) == 0)
  {
    goto LABEL_50;
  }

LABEL_44:
  v20 = *(a1 + 64);
  if (!v20)
  {
    sub_2453EB7EC();
    v20 = *(qword_2813CEB10 + 64);
  }

  v21 = sub_2453FC198(v20, a2);
  v22 = v21;
  if (v21 >= 0x80)
  {
    v23 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v21);
  }

  else
  {
    v23 = 1;
  }

  v4 += v22 + v23 + 1;
LABEL_50:
  v24 = *(a1 + 32);
  v25 = (v24 + v4);
  if (v24 >= 1)
  {
    v26 = 0;
    do
    {
      v27 = sub_24540DAC0(*(*(a1 + 24) + 8 * v26), a2);
      v28 = v27;
      if (v27 >= 0x80)
      {
        v29 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v27);
      }

      else
      {
        v29 = 1;
      }

      v25 = (v28 + v25 + v29);
      ++v26;
    }

    while (v26 < *(a1 + 32));
  }

  *(a1 + 72) = v25;
  return v25;
}

void sub_24540EE3C(uint64_t a1, void *lpsrc)
{
  if (!__dynamic_cast(lpsrc, MEMORY[0x277D82C38], &unk_2858588C8, 0))
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  sub_24540DD64(a1, lpsrc);
}

void sub_24540EEF8(uint64_t a1, uint64_t a2)
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
      __assert_rtn("set_result", "GnssEmergencyTypes.pb.h", 21130, "::CoreGem::proto::gnss::Emergency::ErrorCodes_IsValid(value)");
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
    v9 = *(qword_2813CEF30 + 16);
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
      v13 = *(qword_2813CEF30 + 32);
    }

    sub_24540C404(v12, v13);
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
    v11 = *(qword_2813CEF30 + 24);
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

void sub_24540F1B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_24540F1D0(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = &unk_285857228;
  sub_2453EB7EC();
  if (qword_2813CEF30 != a1)
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

void sub_24540F2C0(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  sub_24540F1D0(a1);

  JUMPOUT(0x245D6A0D0);
}

uint64_t sub_24540F354(uint64_t result)
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
        result = sub_24540C7D8(result);
      }
    }

    *(v1 + 40) = 0;
    *(v1 + 44) = 0;
  }

  *(v1 + 52) = 0;
  return result;
}

uint64_t sub_24540F3D4(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormatLite *this, unsigned int a3)
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

          v50 = 0;
          v12 = *(this + 1);
          if (v12 >= *(this + 2) || (v13 = *v12, (v13 & 0x80000000) != 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v50);
            if (!result)
            {
              return result;
            }

            v13 = v50;
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

          v18 = *(this + 1);
          v15 = *(this + 2);
          if (v18 < v15 && *v18 == 16)
          {
            v16 = v18 + 1;
            *(this + 1) = v16;
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

          v16 = *(this + 1);
          v15 = *(this + 2);
LABEL_41:
          if (v16 >= v15 || (v19 = *v16, v19 < 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 12));
            if (!result)
            {
              return result;
            }

            v20 = *(this + 1);
            v15 = *(this + 2);
          }

          else
          {
            *(a1 + 12) = v19;
            v20 = v16 + 1;
            *(this + 1) = v20;
          }

          v9 = *(a1 + 52) | 2;
          *(a1 + 52) = v9;
          if (v20 < v15 && *v20 == 26)
          {
            *(this + 1) = v20 + 1;
LABEL_49:
            *(a1 + 52) = v9 | 4;
            v21 = *(a1 + 16);
            if (!v21)
            {
              operator new();
            }

            v50 = 0;
            v22 = *(this + 1);
            if (v22 >= *(this + 2) || *v22 < 0)
            {
              if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v50))
              {
                return 0;
              }
            }

            else
            {
              v50 = *v22;
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
            if (!sub_2453F82C0(v21, this, v25) || *(this + 36) != 1)
            {
              return 0;
            }

            wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this);
            v26 = *(this + 14);
            v27 = __OFSUB__(v26, 1);
            v28 = v26 - 1;
            if (v28 < 0 == v27)
            {
              *(this + 14) = v28;
            }

            v29 = *(this + 1);
            if (v29 < *(this + 2) && *v29 == 34)
            {
              *(this + 1) = v29 + 1;
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
            v14 = *(this + 1);
            v10 = *(this + 2);
            goto LABEL_91;
          }
        }

        else if (v7 == 7 && (TagFallback & 7) == 0)
        {
          v11 = *(this + 1);
          v10 = *(this + 2);
          goto LABEL_99;
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
      v30 = *(a1 + 24);
      if (!v30)
      {
        operator new();
      }

      v50 = 0;
      v31 = *(this + 1);
      if (v31 >= *(this + 2) || *v31 < 0)
      {
        if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v50))
        {
          return 0;
        }
      }

      else
      {
        v50 = *v31;
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
      if (!sub_24540E344(v30, this, v34) || *(this + 36) != 1)
      {
        return 0;
      }

      wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this);
      v35 = *(this + 14);
      v27 = __OFSUB__(v35, 1);
      v36 = v35 - 1;
      if (v36 < 0 == v27)
      {
        *(this + 14) = v36;
      }

      v37 = *(this + 1);
      if (v37 < *(this + 2) && *v37 == 42)
      {
        *(this + 1) = v37 + 1;
LABEL_77:
        *(a1 + 52) |= 0x10u;
        v38 = *(a1 + 32);
        if (!v38)
        {
          operator new();
        }

        v50 = 0;
        v39 = *(this + 1);
        if (v39 >= *(this + 2) || *v39 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v50))
          {
            return 0;
          }
        }

        else
        {
          v50 = *v39;
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
        if (!sub_24540C834(v38, this, v42) || *(this + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this);
        v43 = *(this + 14);
        v27 = __OFSUB__(v43, 1);
        v44 = v43 - 1;
        if (v44 < 0 == v27)
        {
          *(this + 14) = v44;
        }

        v45 = *(this + 1);
        v10 = *(this + 2);
        if (v45 < v10 && *v45 == 48)
        {
          v14 = v45 + 1;
          *(this + 1) = v14;
LABEL_91:
          if (v14 >= v10 || (v46 = *v14, v46 < 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 40));
            if (!result)
            {
              return result;
            }

            v47 = *(this + 1);
            v10 = *(this + 2);
          }

          else
          {
            *(a1 + 40) = v46;
            v47 = v14 + 1;
            *(this + 1) = v47;
          }

          *(a1 + 52) |= 0x20u;
          if (v47 < v10 && *v47 == 56)
          {
            v11 = v47 + 1;
            *(this + 1) = v11;
LABEL_99:
            v50 = 0;
            if (v11 >= v10 || (v48 = *v11, (v48 & 0x80000000) != 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v50);
              if (!result)
              {
                return result;
              }

              v48 = v50;
              v49 = *(this + 1);
              v10 = *(this + 2);
            }

            else
            {
              v49 = v11 + 1;
              *(this + 1) = v49;
            }

            *(a1 + 44) = v48 != 0;
            *(a1 + 52) |= 0x40u;
            if (v49 == v10 && (*(this + 11) || *(this + 6) == *(this + 10)))
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

uint64_t sub_24540FA00(uint64_t result, const wireless_diagnostics::google::protobuf::MessageLite *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
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
    v7 = *(qword_2813CEF30 + 16);
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
    v8 = *(qword_2813CEF30 + 24);
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
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(6, *(v5 + 40), a2, a4);
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
    v9 = *(qword_2813CEF30 + 32);
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

uint64_t sub_24540FB38(uint64_t a1, unint64_t a2)
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
        v9 = *(qword_2813CEF30 + 16);
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
      v13 = *(qword_2813CEF30 + 24);
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
LABEL_44:
        result = ((v3 >> 5) & 2) + v4;
        goto LABEL_45;
      }

LABEL_40:
      v21 = *(a1 + 40);
      if (v21 >= 0x80)
      {
        v22 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v21) + 1;
        v3 = *(a1 + 52);
      }

      else
      {
        v22 = 2;
      }

      v4 += v22;
      goto LABEL_44;
    }

LABEL_34:
    v17 = *(a1 + 32);
    if (!v17)
    {
      sub_2453EB7EC();
      v17 = *(qword_2813CEF30 + 32);
    }

    v18 = sub_24540CF28(v17, a2);
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
      goto LABEL_44;
    }

    goto LABEL_40;
  }

  result = 0;
LABEL_45:
  *(a1 + 48) = result;
  return result;
}

void sub_24540FD0C(uint64_t a1, void *lpsrc)
{
  if (!__dynamic_cast(lpsrc, MEMORY[0x277D82C38], &unk_2858588E0, 0))
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  sub_24540EEF8(a1, lpsrc);
}

void sub_24540FDC8(_DWORD *a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v12);
  }

  v4 = *(a2 + 32);
  if (v4)
  {
    sub_2453B0370(a1 + 6, a1[8] + v4);
    memcpy((*(a1 + 3) + 4 * a1[8]), *(a2 + 24), 4 * *(a2 + 32));
    a1[8] += *(a2 + 32);
  }

  v5 = *(a2 + 48);
  if (v5)
  {
    sub_2453B0370(a1 + 10, a1[12] + v5);
    memcpy((*(a1 + 5) + 4 * a1[12]), *(a2 + 40), 4 * *(a2 + 48));
    a1[12] += *(a2 + 48);
  }

  LOBYTE(v6) = *(a2 + 64);
  if (v6)
  {
    if (*(a2 + 64))
    {
      v8 = *(a2 + 8);
      a1[16] |= 1u;
      a1[2] = v8;
      v6 = *(a2 + 64);
      if ((v6 & 2) == 0)
      {
LABEL_10:
        if ((v6 & 4) == 0)
        {
          goto LABEL_11;
        }

        goto LABEL_17;
      }
    }

    else if ((*(a2 + 64) & 2) == 0)
    {
      goto LABEL_10;
    }

    v9 = *(a2 + 12);
    a1[16] |= 2u;
    a1[3] = v9;
    v6 = *(a2 + 64);
    if ((v6 & 4) == 0)
    {
LABEL_11:
      if ((v6 & 8) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_18;
    }

LABEL_17:
    v10 = *(a2 + 16);
    a1[16] |= 4u;
    a1[4] = v10;
    v6 = *(a2 + 64);
    if ((v6 & 8) == 0)
    {
LABEL_12:
      if ((v6 & 0x40) == 0)
      {
        return;
      }

      goto LABEL_13;
    }

LABEL_18:
    v11 = *(a2 + 20);
    a1[16] |= 8u;
    a1[5] = v11;
    if ((*(a2 + 64) & 0x40) == 0)
    {
      return;
    }

LABEL_13:
    v7 = *(a2 + 56);
    a1[16] |= 0x40u;
    a1[14] = v7;
  }
}

void sub_24540FF64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_24540FF7C(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = &unk_2858572A0;
  sub_2453EB7EC();
  v2 = *(a1 + 5);
  if (v2)
  {
    MEMORY[0x245D6A0A0](v2, 0x1000C8052888210);
  }

  v3 = *(a1 + 3);
  if (v3)
  {
    MEMORY[0x245D6A0A0](v3, 0x1000C8052888210);
  }

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);
}

void sub_245410008(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  sub_24540FF7C(a1);

  JUMPOUT(0x245D6A0D0);
}

uint64_t sub_24541009C(uint64_t result)
{
  if (*(result + 64))
  {
    *(result + 56) = 0;
    *(result + 8) = 0;
    *(result + 16) = 0;
  }

  *(result + 32) = 0;
  *(result + 48) = 0;
  *(result + 64) = 0;
  return result;
}

uint64_t sub_2454100BC(unsigned int *a1, wireless_diagnostics::google::protobuf::io::CodedInputStream *this, unsigned int a3)
{
  while (1)
  {
    while (1)
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
            if (TagFallback >> 3 > 3)
            {
              break;
            }

            if (v7 == 1)
            {
              if ((TagFallback & 7) != 0)
              {
                goto LABEL_34;
              }

              v13 = *(this + 1);
              v10 = *(this + 2);
              if (v13 >= v10 || (v14 = *v13, (v14 & 0x80000000) != 0))
              {
                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, a1 + 2);
                if (!result)
                {
                  return result;
                }

                v15 = *(this + 1);
                v10 = *(this + 2);
              }

              else
              {
                a1[2] = v14;
                v15 = v13 + 1;
                *(this + 1) = v15;
              }

              a1[16] |= 1u;
              if (v15 < v10 && *v15 == 16)
              {
                v17 = v15 + 1;
                *(this + 1) = v17;
                goto LABEL_45;
              }
            }

            else
            {
              if (v7 != 2)
              {
                if (v7 != 3 || (TagFallback & 7) != 0)
                {
                  goto LABEL_34;
                }

                v11 = *(this + 1);
                v10 = *(this + 2);
                goto LABEL_53;
              }

              if ((TagFallback & 7) != 0)
              {
                goto LABEL_34;
              }

              v17 = *(this + 1);
              v10 = *(this + 2);
LABEL_45:
              if (v17 >= v10 || (v20 = *v17, (v20 & 0x80000000) != 0))
              {
                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, a1 + 3);
                if (!result)
                {
                  return result;
                }

                v21 = *(this + 1);
                v10 = *(this + 2);
              }

              else
              {
                a1[3] = v20;
                v21 = v17 + 1;
                *(this + 1) = v21;
              }

              a1[16] |= 2u;
              if (v21 < v10 && *v21 == 24)
              {
                v11 = v21 + 1;
                *(this + 1) = v11;
LABEL_53:
                if (v11 >= v10 || (v22 = *v11, (v22 & 0x80000000) != 0))
                {
                  result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, a1 + 4);
                  if (!result)
                  {
                    return result;
                  }

                  v23 = *(this + 1);
                  v10 = *(this + 2);
                }

                else
                {
                  a1[4] = v22;
                  v23 = v11 + 1;
                  *(this + 1) = v23;
                }

                a1[16] |= 4u;
                if (v23 < v10 && *v23 == 32)
                {
                  v16 = v23 + 1;
                  *(this + 1) = v16;
                  goto LABEL_61;
                }
              }
            }
          }

          if (TagFallback >> 3 > 5)
          {
            break;
          }

          if (v7 != 4)
          {
            if (v7 == 5)
            {
              if ((TagFallback & 7) == 0)
              {
                v19 = *(this + 1);
                v10 = *(this + 2);
                goto LABEL_70;
              }

              if (v8 == 2)
              {
                result = sub_2453DD50C(this, a1 + 6);
                if (!result)
                {
                  return result;
                }

                goto LABEL_87;
              }
            }

            goto LABEL_34;
          }

          if ((TagFallback & 7) != 0)
          {
            goto LABEL_34;
          }

          v16 = *(this + 1);
          v10 = *(this + 2);
LABEL_61:
          if (v16 >= v10 || (v24 = *v16, (v24 & 0x80000000) != 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, a1 + 5);
            if (!result)
            {
              return result;
            }

            v25 = *(this + 1);
            v10 = *(this + 2);
          }

          else
          {
            a1[5] = v24;
            v25 = (v16 + 1);
            *(this + 1) = v25;
          }

          a1[16] |= 8u;
          if (v25 < v10)
          {
            v26 = *v25;
            while (v26 == 40)
            {
              v19 = (v25 + 1);
              *(this + 1) = v19;
LABEL_70:
              v50 = 0;
              if (v19 >= v10 || *v19 < 0)
              {
                if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v50))
                {
                  return 0;
                }
              }

              else
              {
                v50 = *v19;
                *(this + 1) = v19 + 1;
              }

              v27 = a1[8];
              if (v27 == a1[9])
              {
                sub_2453B0370(a1 + 6, v27 + 1);
                v27 = a1[8];
              }

              v28 = v50;
              v29 = *(a1 + 3);
              a1[8] = v27 + 1;
              *(v29 + 4 * v27) = v28;
              v30 = a1[9] - a1[8];
              if (v30 >= 1)
              {
                v31 = v30 + 1;
                do
                {
                  v32 = *(this + 1);
                  v33 = *(this + 2);
                  if (v32 >= v33 || *v32 != 40)
                  {
                    break;
                  }

                  *(this + 1) = v32 + 1;
                  if ((v32 + 1) >= v33 || v32[1] < 0)
                  {
                    if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v50))
                    {
                      return 0;
                    }
                  }

                  else
                  {
                    v50 = v32[1];
                    *(this + 1) = v32 + 2;
                  }

                  v34 = a1[8];
                  if (v34 >= a1[9])
                  {
                    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v51);
                    v34 = a1[8];
                  }

                  v35 = v50;
                  v36 = *(a1 + 3);
                  a1[8] = v34 + 1;
                  *(v36 + 4 * v34) = v35;
                  --v31;
                }

                while (v31 > 1);
              }

LABEL_87:
              v25 = *(this + 1);
              v10 = *(this + 2);
              if (v25 >= v10)
              {
                break;
              }

              v26 = *v25;
              if (v26 == 48)
              {
                goto LABEL_89;
              }
            }
          }
        }

        if (v7 == 6)
        {
          break;
        }

        if (v7 != 7 || (TagFallback & 7) != 0)
        {
          goto LABEL_34;
        }

        v12 = *(this + 1);
        v10 = *(this + 2);
LABEL_112:
        if (v12 >= v10 || (v48 = *v12, (v48 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, a1 + 14);
          if (!result)
          {
            return result;
          }

          v49 = *(this + 1);
          v10 = *(this + 2);
        }

        else
        {
          a1[14] = v48;
          v49 = v12 + 1;
          *(this + 1) = v49;
        }

        a1[16] |= 0x40u;
        if (v49 == v10 && (*(this + 11) || *(this + 6) == *(this + 10)))
        {
          *(this + 8) = 0;
          result = 1;
          *(this + 36) = 1;
          return result;
        }
      }

      if ((TagFallback & 7) != 0)
      {
        break;
      }

      v18 = *(this + 1);
      v10 = *(this + 2);
      while (1)
      {
        v50 = 0;
        if (v18 >= v10 || *v18 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v50))
          {
            return 0;
          }
        }

        else
        {
          v50 = *v18;
          *(this + 1) = v18 + 1;
        }

        v37 = a1[12];
        if (v37 == a1[13])
        {
          sub_2453B0370(a1 + 10, v37 + 1);
          v37 = a1[12];
        }

        v38 = v50;
        v39 = *(a1 + 5);
        a1[12] = v37 + 1;
        *(v39 + 4 * v37) = v38;
        v40 = a1[13] - a1[12];
        if (v40 >= 1)
        {
          v41 = v40 + 1;
          do
          {
            v42 = *(this + 1);
            v43 = *(this + 2);
            if (v42 >= v43 || *v42 != 48)
            {
              break;
            }

            *(this + 1) = v42 + 1;
            if ((v42 + 1) >= v43 || v42[1] < 0)
            {
              if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v50))
              {
                return 0;
              }
            }

            else
            {
              v50 = v42[1];
              *(this + 1) = v42 + 2;
            }

            v44 = a1[12];
            if (v44 >= a1[13])
            {
              wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
              wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
              wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
              wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v51);
              v44 = a1[12];
            }

            v45 = v50;
            v46 = *(a1 + 5);
            a1[12] = v44 + 1;
            *(v46 + 4 * v44) = v45;
            --v41;
          }

          while (v41 > 1);
        }

LABEL_107:
        v25 = *(this + 1);
        v10 = *(this + 2);
        if (v25 >= v10)
        {
          break;
        }

        v47 = *v25;
        if (v47 == 56)
        {
          v12 = (v25 + 1);
          *(this + 1) = v12;
          goto LABEL_112;
        }

        if (v47 != 48)
        {
          goto LABEL_1;
        }

LABEL_89:
        v18 = (v25 + 1);
        *(this + 1) = v18;
      }
    }

    if (v8 == 2)
    {
      result = sub_2453DD50C(this, a1 + 10);
      if (!result)
      {
        return result;
      }

      goto LABEL_107;
    }

LABEL_34:
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

void sub_2454106C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_2454106E4(uint64_t result, uint64_t a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
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
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_16:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(3, *(v5 + 16), a2, a4);
  if ((*(v5 + 64) & 8) != 0)
  {
LABEL_5:
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(4, *(v5 + 20), a2, a4);
  }

LABEL_6:
  if (*(v5 + 32) >= 1)
  {
    v7 = 0;
    do
    {
      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(5, *(*(v5 + 24) + 4 * v7++), a2, a4);
    }

    while (v7 < *(v5 + 32));
  }

  if (*(v5 + 48) >= 1)
  {
    v8 = 0;
    do
    {
      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(6, *(*(v5 + 40) + 4 * v8++), a2, a4);
    }

    while (v8 < *(v5 + 48));
  }

  if ((*(v5 + 64) & 0x40) != 0)
  {
    v9 = *(v5 + 56);

    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(7, v9, a2, a4);
  }

  return result;
}

uint64_t sub_24541081C(uint64_t a1, unsigned int a2)
{
  LOBYTE(v3) = *(a1 + 64);
  if (!v3)
  {
    v4 = 0;
    goto LABEL_30;
  }

  if (*(a1 + 64))
  {
    v5 = *(a1 + 8);
    if (v5 >= 0x80)
    {
      v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5) + 1;
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
    if ((*(a1 + 64) & 2) == 0)
    {
      goto LABEL_14;
    }
  }

  v6 = *(a1 + 12);
  if (v6 >= 0x80)
  {
    v7 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v6) + 1;
    v3 = *(a1 + 64);
  }

  else
  {
    v7 = 2;
  }

  v4 += v7;
LABEL_14:
  if ((v3 & 4) != 0)
  {
    v8 = *(a1 + 16);
    if (v8 >= 0x80)
    {
      v9 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v8) + 1;
      v3 = *(a1 + 64);
    }

    else
    {
      v9 = 2;
    }

    v4 += v9;
    if ((v3 & 8) == 0)
    {
LABEL_16:
      if ((v3 & 0x40) == 0)
      {
        goto LABEL_30;
      }

      goto LABEL_26;
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
    v3 = *(a1 + 64);
  }

  else
  {
    v11 = 2;
  }

  v4 += v11;
  if ((v3 & 0x40) != 0)
  {
LABEL_26:
    v12 = *(a1 + 56);
    if (v12 >= 0x80)
    {
      v13 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v12) + 1;
    }

    else
    {
      v13 = 2;
    }

    v4 += v13;
  }

LABEL_30:
  v14 = *(a1 + 32);
  if (v14 < 1)
  {
    v16 = 0;
  }

  else
  {
    v15 = 0;
    v16 = 0;
    do
    {
      v17 = *(*(a1 + 24) + 4 * v15);
      if (v17 >= 0x80)
      {
        v18 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v17);
        v14 = *(a1 + 32);
      }

      else
      {
        v18 = 1;
      }

      v16 += v18;
      ++v15;
    }

    while (v15 < v14);
  }

  v19 = *(a1 + 48);
  if (v19 < 1)
  {
    v21 = 0;
  }

  else
  {
    v20 = 0;
    v21 = 0;
    do
    {
      v22 = *(*(a1 + 40) + 4 * v20);
      if (v22 >= 0x80)
      {
        v23 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v22);
        v19 = *(a1 + 48);
      }

      else
      {
        v23 = 1;
      }

      v21 += v23;
      ++v20;
    }

    while (v20 < v19);
  }

  result = (v16 + v4 + v14 + v21 + v19);
  *(a1 + 60) = result;
  return result;
}

void sub_2454109E4(_DWORD *a1, void *lpsrc)
{
  if (!__dynamic_cast(lpsrc, MEMORY[0x277D82C38], &unk_2858588F8, 0))
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  sub_24540FDC8(a1, lpsrc);
}

void sub_245410AA0(_DWORD *a1, uint64_t a2)
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

void sub_245410B4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_245410B64(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = &unk_285857318;
  sub_2453EB7EC();

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);
}

void sub_245410BC0(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  sub_245410B64(a1);

  JUMPOUT(0x245D6A0D0);
}

uint64_t sub_245410C44(uint64_t result)
{
  if (*(result + 20))
  {
    *(result + 8) = 0;
  }

  *(result + 20) = 0;
  return result;
}

uint64_t sub_245410C58(unsigned int *a1, wireless_diagnostics::google::protobuf::internal::WireFormatLite *this, unsigned int a3)
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

uint64_t sub_245410DD4(uint64_t result, uint64_t a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
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

uint64_t sub_245410E40(uint64_t a1, unsigned int a2)
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

void sub_245410ED0(_DWORD *a1, void *lpsrc)
{
  if (!__dynamic_cast(lpsrc, MEMORY[0x277D82C38], &unk_285858910, 0))
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  sub_245410AA0(a1, lpsrc);
}

void sub_245410F8C(_DWORD *a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v11);
  }

  v4 = *(a2 + 32);
  if (v4)
  {
    sub_2453B0370(a1 + 6, a1[8] + v4);
    memcpy((*(a1 + 3) + 4 * a1[8]), *(a2 + 24), 4 * *(a2 + 32));
    a1[8] += *(a2 + 32);
  }

  LOBYTE(v5) = *(a2 + 48);
  if (v5)
  {
    if (*(a2 + 48))
    {
      v7 = *(a2 + 8);
      a1[12] |= 1u;
      a1[2] = v7;
      v5 = *(a2 + 48);
      if ((v5 & 2) == 0)
      {
LABEL_8:
        if ((v5 & 4) == 0)
        {
          goto LABEL_9;
        }

        goto LABEL_15;
      }
    }

    else if ((*(a2 + 48) & 2) == 0)
    {
      goto LABEL_8;
    }

    v8 = *(a2 + 12);
    a1[12] |= 2u;
    a1[3] = v8;
    v5 = *(a2 + 48);
    if ((v5 & 4) == 0)
    {
LABEL_9:
      if ((v5 & 8) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_16;
    }

LABEL_15:
    v9 = *(a2 + 16);
    a1[12] |= 4u;
    a1[4] = v9;
    v5 = *(a2 + 48);
    if ((v5 & 8) == 0)
    {
LABEL_10:
      if ((v5 & 0x10) == 0)
      {
        return;
      }

      goto LABEL_11;
    }

LABEL_16:
    v10 = *(a2 + 20);
    a1[12] |= 8u;
    a1[5] = v10;
    if ((*(a2 + 48) & 0x10) == 0)
    {
      return;
    }

LABEL_11:
    v6 = *(a2 + 40);
    a1[12] |= 0x10u;
    a1[10] = v6;
  }
}

void sub_2454110E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_2454110FC(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = &unk_285857390;
  sub_2453EB7EC();
  v2 = *(a1 + 3);
  if (v2)
  {
    MEMORY[0x245D6A0A0](v2, 0x1000C8052888210);
  }

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);
}

void sub_245411174(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  sub_2454110FC(a1);

  JUMPOUT(0x245D6A0D0);
}

uint64_t sub_245411204(uint64_t result)
{
  if (*(result + 48))
  {
    *(result + 40) = 0;
    *(result + 8) = 0;
    *(result + 16) = 0;
  }

  *(result + 32) = 0;
  *(result + 48) = 0;
  return result;
}

uint64_t sub_245411220(unsigned int *a1, wireless_diagnostics::google::protobuf::io::CodedInputStream *this, unsigned int a3)
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
          goto LABEL_28;
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

        a1[12] |= 1u;
        if (v14 < v9 && *v14 == 16)
        {
          v16 = v14 + 1;
          *(this + 1) = v16;
          goto LABEL_38;
        }
      }

      else if (v7 == 2)
      {
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_28;
        }

        v16 = *(this + 1);
        v9 = *(this + 2);
LABEL_38:
        if (v16 >= v9 || (v19 = *v16, (v19 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, a1 + 3);
          if (!result)
          {
            return result;
          }

          v20 = *(this + 1);
          v9 = *(this + 2);
        }

        else
        {
          a1[3] = v19;
          v20 = v16 + 1;
          *(this + 1) = v20;
        }

        a1[12] |= 2u;
        if (v20 < v9 && *v20 == 24)
        {
          v10 = v20 + 1;
          *(this + 1) = v10;
LABEL_46:
          if (v10 >= v9 || (v21 = *v10, (v21 & 0x80000000) != 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, a1 + 4);
            if (!result)
            {
              return result;
            }

            v22 = *(this + 1);
            v9 = *(this + 2);
          }

          else
          {
            a1[4] = v21;
            v22 = v10 + 1;
            *(this + 1) = v22;
          }

          a1[12] |= 4u;
          if (v22 < v9 && *v22 == 32)
          {
            v15 = v22 + 1;
            *(this + 1) = v15;
LABEL_54:
            if (v15 >= v9 || (v23 = *v15, (v23 & 0x80000000) != 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, a1 + 5);
              if (!result)
              {
                return result;
              }

              v24 = *(this + 1);
              v9 = *(this + 2);
            }

            else
            {
              a1[5] = v23;
              v24 = v15 + 1;
              *(this + 1) = v24;
            }

            a1[12] |= 8u;
            if (v24 < v9 && *v24 == 40)
            {
              v17 = v24 + 1;
              *(this + 1) = v17;
LABEL_62:
              if (v17 >= v9 || (v25 = *v17, (v25 & 0x80000000) != 0))
              {
                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, a1 + 10);
                if (!result)
                {
                  return result;
                }

                v26 = *(this + 1);
                v9 = *(this + 2);
              }

              else
              {
                a1[10] = v25;
                v26 = v17 + 1;
                *(this + 1) = v26;
              }

              a1[12] |= 0x10u;
              if (v26 < v9 && *v26 == 48)
              {
                goto LABEL_69;
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
          goto LABEL_46;
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

    if (v7 == 4)
    {
      if ((TagFallback & 7) == 0)
      {
        v15 = *(this + 1);
        v9 = *(this + 2);
        goto LABEL_54;
      }

      goto LABEL_28;
    }

    if (v7 == 5)
    {
      if ((TagFallback & 7) == 0)
      {
        v17 = *(this + 1);
        v9 = *(this + 2);
        goto LABEL_62;
      }

      goto LABEL_28;
    }

    if (v7 != 6)
    {
      goto LABEL_28;
    }

    if ((TagFallback & 7) == 0)
    {
      v18 = *(this + 1);
      v9 = *(this + 2);
      goto LABEL_70;
    }

    if (v8 != 2)
    {
      goto LABEL_28;
    }

    result = sub_2453DD50C(this, a1 + 6);
    if (!result)
    {
      return result;
    }

LABEL_87:
    v26 = *(this + 1);
    v9 = *(this + 2);
    if (v26 < v9 && *v26 == 48)
    {
      break;
    }

    if (v26 == v9 && (*(this + 11) || *(this + 6) == *(this + 10)))
    {
      *(this + 8) = 0;
      result = 1;
      *(this + 36) = 1;
      return result;
    }
  }

LABEL_69:
  v18 = v26 + 1;
  *(this + 1) = v18;
LABEL_70:
  v37 = 0;
  if (v18 < v9 && (*v18 & 0x80000000) == 0)
  {
    v37 = *v18;
    *(this + 1) = v18 + 1;
    goto LABEL_74;
  }

  if (wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v37))
  {
LABEL_74:
    v27 = a1[8];
    if (v27 == a1[9])
    {
      sub_2453B0370(a1 + 6, v27 + 1);
      v27 = a1[8];
    }

    v28 = v37;
    v29 = *(a1 + 3);
    a1[8] = v27 + 1;
    *(v29 + 4 * v27) = v28;
    v30 = a1[9] - a1[8];
    if (v30 >= 1)
    {
      v31 = v30 + 1;
      do
      {
        v32 = *(this + 1);
        v33 = *(this + 2);
        if (v32 >= v33 || *v32 != 48)
        {
          break;
        }

        *(this + 1) = v32 + 1;
        if ((v32 + 1) >= v33 || v32[1] < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v37))
          {
            return 0;
          }
        }

        else
        {
          v37 = v32[1];
          *(this + 1) = v32 + 2;
        }

        v34 = a1[8];
        if (v34 >= a1[9])
        {
          wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
          wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
          wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
          wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v38);
          v34 = a1[8];
        }

        v35 = v37;
        v36 = *(a1 + 3);
        a1[8] = v34 + 1;
        *(v36 + 4 * v34) = v35;
        --v31;
      }

      while (v31 > 1);
    }

    goto LABEL_87;
  }

  return 0;
}

void sub_2454116AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_2454116C4(uint64_t result, uint64_t a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = result;
  v6 = *(result + 48);
  if (v6)
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(1, *(result + 8), a2, a4);
    v6 = *(v5 + 48);
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

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(2, *(v5 + 12), a2, a4);
  v6 = *(v5 + 48);
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
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(3, *(v5 + 16), a2, a4);
  v6 = *(v5 + 48);
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

LABEL_14:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(4, *(v5 + 20), a2, a4);
  if ((*(v5 + 48) & 0x10) != 0)
  {
LABEL_6:
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(5, *(v5 + 40), a2, a4);
  }

LABEL_7:
  if (*(v5 + 32) >= 1)
  {
    v7 = 0;
    do
    {
      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(6, *(*(v5 + 24) + 4 * v7++), a2, a4);
    }

    while (v7 < *(v5 + 32));
  }

  return result;
}

uint64_t sub_2454117B0(uint64_t a1, unsigned int a2)
{
  LOBYTE(v3) = *(a1 + 48);
  if (!v3)
  {
    v4 = 0;
    goto LABEL_30;
  }

  if (*(a1 + 48))
  {
    v5 = *(a1 + 8);
    if (v5 >= 0x80)
    {
      v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5) + 1;
      v3 = *(a1 + 48);
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
    if ((*(a1 + 48) & 2) == 0)
    {
      goto LABEL_14;
    }
  }

  v6 = *(a1 + 12);
  if (v6 >= 0x80)
  {
    v7 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v6) + 1;
    v3 = *(a1 + 48);
  }

  else
  {
    v7 = 2;
  }

  v4 += v7;
LABEL_14:
  if ((v3 & 4) != 0)
  {
    v8 = *(a1 + 16);
    if (v8 >= 0x80)
    {
      v9 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v8) + 1;
      v3 = *(a1 + 48);
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
        goto LABEL_30;
      }

      goto LABEL_26;
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
    v3 = *(a1 + 48);
  }

  else
  {
    v11 = 2;
  }

  v4 += v11;
  if ((v3 & 0x10) != 0)
  {
LABEL_26:
    v12 = *(a1 + 40);
    if (v12 >= 0x80)
    {
      v13 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v12) + 1;
    }

    else
    {
      v13 = 2;
    }

    v4 += v13;
  }

LABEL_30:
  v14 = *(a1 + 32);
  if (v14 < 1)
  {
    v16 = 0;
  }

  else
  {
    v15 = 0;
    v16 = 0;
    do
    {
      v17 = *(*(a1 + 24) + 4 * v15);
      if (v17 >= 0x80)
      {
        v18 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v17);
        v14 = *(a1 + 32);
      }

      else
      {
        v18 = 1;
      }

      v16 += v18;
      ++v15;
    }

    while (v15 < v14);
  }

  result = (v16 + v4 + v14);
  *(a1 + 44) = result;
  return result;
}

void sub_24541191C(_DWORD *a1, void *lpsrc)
{
  if (!__dynamic_cast(lpsrc, MEMORY[0x277D82C38], &unk_285858928, 0))
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  sub_245410F8C(a1, lpsrc);
}

void sub_2454119D8(_DWORD *a1, uint64_t a2)
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

void sub_245411A84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_245411A9C(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = &unk_285857408;
  sub_2453EB7EC();

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);
}

void sub_245411AF8(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  sub_245411A9C(a1);

  JUMPOUT(0x245D6A0D0);
}

uint64_t sub_245411B7C(uint64_t result)
{
  if (*(result + 20))
  {
    *(result + 8) = 0;
  }

  *(result + 20) = 0;
  return result;
}

uint64_t sub_245411B90(unsigned int *a1, wireless_diagnostics::google::protobuf::internal::WireFormatLite *this, unsigned int a3)
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

uint64_t sub_245411D0C(uint64_t result, uint64_t a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
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

uint64_t sub_245411D78(uint64_t a1, unsigned int a2)
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

void sub_245411E08(_DWORD *a1, void *lpsrc)
{
  if (!__dynamic_cast(lpsrc, MEMORY[0x277D82C38], &unk_285858940, 0))
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  sub_2454119D8(a1, lpsrc);
}

void sub_245411EC4(_DWORD *a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v15);
  }

  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 6));
  LODWORD(v4) = *(a2 + 32);
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

      v6 = *(*(a2 + 24) + 8 * v5);
      v7 = a1[9];
      v8 = a1[8];
      if (v8 >= v7)
      {
        if (v7 == a1[10])
        {
          wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 6));
          v7 = a1[9];
        }

        a1[9] = v7 + 1;
        operator new();
      }

      v9 = *(a1 + 3);
      a1[8] = v8 + 1;
      sub_2454119D8(*(v9 + 8 * v8), v6);
      ++v5;
      v4 = *(a2 + 32);
    }

    while (v5 < v4);
  }

  LOBYTE(v10) = *(a2 + 52);
  if (v10)
  {
    if (*(a2 + 52))
    {
      v12 = *(a2 + 8);
      a1[13] |= 1u;
      a1[2] = v12;
      v10 = *(a2 + 52);
      if ((v10 & 2) == 0)
      {
LABEL_16:
        if ((v10 & 4) == 0)
        {
          goto LABEL_17;
        }

        goto LABEL_22;
      }
    }

    else if ((*(a2 + 52) & 2) == 0)
    {
      goto LABEL_16;
    }

    v13 = *(a2 + 12);
    a1[13] |= 2u;
    a1[3] = v13;
    v10 = *(a2 + 52);
    if ((v10 & 4) == 0)
    {
LABEL_17:
      if ((v10 & 8) == 0)
      {
        return;
      }

      goto LABEL_18;
    }

LABEL_22:
    v14 = *(a2 + 16);
    a1[13] |= 4u;
    a1[4] = v14;
    if ((*(a2 + 52) & 8) == 0)
    {
      return;
    }

LABEL_18:
    v11 = *(a2 + 20);
    a1[13] |= 8u;
    a1[5] = v11;
  }
}

void sub_2454120F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_245412118(uint64_t a1)
{
  *a1 = &unk_285857480;
  sub_2453EB7EC();
  v2 = *(a1 + 36);
  if (v2 >= 1)
  {
    for (i = 0; i < v2; ++i)
    {
      v4 = *(*(a1 + 24) + 8 * i);
      if (v4)
      {
        (*(*v4 + 8))(v4);
        v2 = *(a1 + 36);
      }
    }
  }

  v5 = *(a1 + 24);
  if (v5)
  {
    MEMORY[0x245D6A0A0](v5, 0x80C80B8603338);
  }

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);
}

void sub_2454121E0(uint64_t a1)
{
  sub_245412118(a1);

  JUMPOUT(0x245D6A0D0);
}

uint64_t sub_245412274(uint64_t a1)
{
  if (*(a1 + 52))
  {
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
  }

  result = sub_2453DC6D0(a1 + 24);
  *(a1 + 52) = 0;
  return result;
}

uint64_t sub_2454122AC(_DWORD *a1, wireless_diagnostics::google::protobuf::internal::WireFormatLite *this, unsigned int a3)
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
          if ((TagFallback & 7) != 0)
          {
            goto LABEL_21;
          }

          v11 = *(this + 1);
          v9 = *(this + 2);
          goto LABEL_40;
        }

        if (v7 == 4)
        {
          if ((TagFallback & 7) != 0)
          {
            goto LABEL_21;
          }

          v12 = *(this + 1);
          v9 = *(this + 2);
LABEL_48:
          if (v12 >= v9 || (v21 = *v12, v21 < 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, a1 + 5);
            if (!result)
            {
              return result;
            }

            v22 = *(this + 1);
            v9 = *(this + 2);
          }

          else
          {
            a1[5] = v21;
            v22 = v12 + 1;
            *(this + 1) = v22;
          }

          a1[13] |= 8u;
          if (v22 < v9 && *v22 == 42)
          {
            goto LABEL_55;
          }
        }

        else
        {
          if (v7 != 5 || v8 != 2)
          {
            goto LABEL_21;
          }

          while (1)
          {
            v23 = a1[9];
            v24 = a1[8];
            if (v24 >= v23)
            {
              if (v23 == a1[10])
              {
                wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 6));
                v23 = a1[9];
              }

              a1[9] = v23 + 1;
              operator new();
            }

            v25 = *(a1 + 3);
            a1[8] = v24 + 1;
            v26 = *(v25 + 8 * v24);
            v35 = 0;
            v27 = *(this + 1);
            if (v27 >= *(this + 2) || *v27 < 0)
            {
              if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v35))
              {
                return 0;
              }
            }

            else
            {
              v35 = *v27;
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
            if (!sub_245411B90(v26, this, v30) || *(this + 36) != 1)
            {
              return 0;
            }

            wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this);
            v31 = *(this + 14);
            v32 = __OFSUB__(v31, 1);
            v33 = v31 - 1;
            if (v33 < 0 == v32)
            {
              *(this + 14) = v33;
            }

            v22 = *(this + 1);
            v34 = *(this + 2);
            if (v22 >= v34 || *v22 != 42)
            {
              break;
            }

LABEL_55:
            *(this + 1) = v22 + 1;
          }

          if (v22 == v34 && (*(this + 11) || *(this + 6) == *(this + 10)))
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
        goto LABEL_21;
      }

      v13 = *(this + 1);
      v9 = *(this + 2);
      if (v13 >= v9 || (v14 = *v13, v14 < 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, a1 + 2);
        if (!result)
        {
          return result;
        }

        v15 = *(this + 1);
        v9 = *(this + 2);
      }

      else
      {
        a1[2] = v14;
        v15 = v13 + 1;
        *(this + 1) = v15;
      }

      a1[13] |= 1u;
      if (v15 < v9 && *v15 == 16)
      {
        v10 = v15 + 1;
        *(this + 1) = v10;
LABEL_32:
        if (v10 >= v9 || (v17 = *v10, v17 < 0))
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
        if (v18 < v9 && *v18 == 24)
        {
          v11 = v18 + 1;
          *(this + 1) = v11;
LABEL_40:
          if (v11 >= v9 || (v19 = *v11, v19 < 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, a1 + 4);
            if (!result)
            {
              return result;
            }

            v20 = *(this + 1);
            v9 = *(this + 2);
          }

          else
          {
            a1[4] = v19;
            v20 = v11 + 1;
            *(this + 1) = v20;
          }

          a1[13] |= 4u;
          if (v20 < v9 && *v20 == 32)
          {
            v12 = v20 + 1;
            *(this + 1) = v12;
            goto LABEL_48;
          }
        }
      }
    }

    if (v7 == 2 && (TagFallback & 7) == 0)
    {
      v10 = *(this + 1);
      v9 = *(this + 2);
      goto LABEL_32;
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