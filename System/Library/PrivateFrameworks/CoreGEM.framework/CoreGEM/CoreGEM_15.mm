uint64_t sub_24543B8BC(unsigned int *a1, unsigned int a2)
{
  v3 = a1[14];
  if (!v3)
  {
    v5 = 0;
    goto LABEL_55;
  }

  if (v3)
  {
    v6 = a1[2];
    if ((v6 & 0x80000000) != 0)
    {
      v4 = 11;
      if ((v3 & 2) == 0)
      {
        goto LABEL_19;
      }
    }

    else if (v6 >= 0x80)
    {
      v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v6) + 1;
      v3 = a1[14];
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

  v7 = a1[3];
  if ((v7 & 0x80000000) != 0)
  {
    v8 = 11;
  }

  else if (v7 >= 0x80)
  {
    v8 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v7) + 1;
    v3 = a1[14];
  }

  else
  {
    v8 = 2;
  }

  v4 += v8;
LABEL_19:
  if ((v3 & 4) != 0)
  {
    v9 = a1[4];
    if ((v9 & 0x80000000) != 0)
    {
      v10 = 11;
    }

    else if (v9 >= 0x80)
    {
      v10 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v9) + 1;
      v3 = a1[14];
    }

    else
    {
      v10 = 2;
    }

    v4 += v10;
    if ((v3 & 8) == 0)
    {
LABEL_21:
      if ((v3 & 0x10) == 0)
      {
        goto LABEL_22;
      }

      goto LABEL_36;
    }
  }

  else if ((v3 & 8) == 0)
  {
    goto LABEL_21;
  }

  v11 = a1[5];
  if ((v11 & 0x80000000) != 0)
  {
    v12 = 11;
  }

  else if (v11 >= 0x80)
  {
    v12 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v11) + 1;
    v3 = a1[14];
  }

  else
  {
    v12 = 2;
  }

  v4 += v12;
  if ((v3 & 0x10) == 0)
  {
LABEL_22:
    if ((v3 & 0x20) == 0)
    {
      goto LABEL_48;
    }

    goto LABEL_42;
  }

LABEL_36:
  v13 = a1[6];
  if ((v13 & 0x80000000) != 0)
  {
    v14 = 11;
  }

  else if (v13 >= 0x80)
  {
    v14 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v13) + 1;
    v3 = a1[14];
  }

  else
  {
    v14 = 2;
  }

  v4 += v14;
  if ((v3 & 0x20) != 0)
  {
LABEL_42:
    v15 = a1[7];
    if ((v15 & 0x80000000) != 0)
    {
      v16 = 11;
    }

    else if (v15 >= 0x80)
    {
      v16 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v15) + 1;
      v3 = a1[14];
    }

    else
    {
      v16 = 2;
    }

    v4 += v16;
  }

LABEL_48:
  v5 = ((v3 >> 5) & 2) + v4;
  if ((v3 & 0x80) != 0)
  {
    v17 = a1[9];
    if ((v17 & 0x80000000) != 0)
    {
      v18 = 11;
    }

    else if (v17 >= 0x80)
    {
      v18 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v17) + 1;
      v3 = a1[14];
    }

    else
    {
      v18 = 2;
    }

    v5 = (v18 + v5);
  }

LABEL_55:
  if ((v3 & 0xFF00) == 0)
  {
    goto LABEL_72;
  }

  if ((v3 & 0x100) != 0)
  {
    v19 = a1[10];
    if (v19 >= 0x80)
    {
      v20 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v19) + 1;
      v3 = a1[14];
    }

    else
    {
      v20 = 2;
    }

    v5 = (v20 + v5);
    if ((v3 & 0x200) == 0)
    {
LABEL_58:
      if ((v3 & 0x400) == 0)
      {
        goto LABEL_72;
      }

      goto LABEL_68;
    }
  }

  else if ((v3 & 0x200) == 0)
  {
    goto LABEL_58;
  }

  v21 = a1[11];
  if (v21 >= 0x80)
  {
    v22 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v21) + 1;
    v3 = a1[14];
  }

  else
  {
    v22 = 2;
  }

  v5 = (v22 + v5);
  if ((v3 & 0x400) != 0)
  {
LABEL_68:
    v23 = a1[12];
    if (v23 >= 0x80)
    {
      v24 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v23) + 1;
    }

    else
    {
      v24 = 2;
    }

    v5 = (v24 + v5);
  }

LABEL_72:
  a1[13] = v5;
  return v5;
}

void sub_24543BB18(uint64_t a1, void *lpsrc)
{
  if (!__dynamic_cast(lpsrc, MEMORY[0x277D82C38], &unk_28585A3F8, 0))
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  sub_24543AE60(a1, lpsrc);
}

void sub_24543BBD4(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = &unk_285859E38;
  sub_24539DA30();
  if (qword_2813CECD8 != a1)
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
  }

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);
}

void sub_24543BCF0(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  sub_24543BBD4(a1);

  JUMPOUT(0x245D6A0D0);
}

uint64_t sub_24543BD84(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormatLite *this, unsigned int a3)
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

            v52 = 0;
            v11 = *(this + 1);
            v9 = *(this + 2);
            if (v11 >= v9 || (v12 = *v11, (v12 & 0x80000000) != 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v52);
              if (!result)
              {
                return result;
              }

              v12 = v52;
              v13 = *(this + 1);
              v9 = *(this + 2);
            }

            else
            {
              v13 = v11 + 1;
              *(this + 1) = v13;
            }

            *(a1 + 8) = v12 != 0;
            *(a1 + 56) |= 1u;
            if (v13 < v9 && *v13 == 16)
            {
              v14 = v13 + 1;
              *(this + 1) = v14;
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

              v10 = *(this + 1);
              v9 = *(this + 2);
              goto LABEL_47;
            }

            if ((TagFallback & 7) != 0)
            {
              goto LABEL_30;
            }

            v14 = *(this + 1);
            v9 = *(this + 2);
LABEL_39:
            v52 = 0;
            if (v14 >= v9 || (v16 = *v14, (v16 & 0x80000000) != 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v52);
              if (!result)
              {
                return result;
              }

              v16 = v52;
              v17 = *(this + 1);
              v9 = *(this + 2);
            }

            else
            {
              v17 = v14 + 1;
              *(this + 1) = v17;
            }

            *(a1 + 12) = v16;
            *(a1 + 56) |= 2u;
            if (v17 < v9 && *v17 == 24)
            {
              v10 = v17 + 1;
              *(this + 1) = v10;
LABEL_47:
              v52 = 0;
              if (v10 >= v9 || (v18 = *v10, (v18 & 0x80000000) != 0))
              {
                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v52);
                if (!result)
                {
                  return result;
                }

                v18 = v52;
              }

              else
              {
                *(this + 1) = v10 + 1;
              }

              if (v18 <= 4)
              {
                *(a1 + 56) |= 4u;
                *(a1 + 48) = v18;
              }

              v19 = *(this + 1);
              if (v19 < *(this + 2) && *v19 == 34)
              {
                *(this + 1) = v19 + 1;
                goto LABEL_57;
              }
            }
          }
        }

        if (TagFallback >> 3 <= 5)
        {
          break;
        }

        if (v7 == 6)
        {
          if (v8 == 2)
          {
            goto LABEL_85;
          }

          goto LABEL_30;
        }

        if (v7 != 7 || v8 != 2)
        {
          goto LABEL_30;
        }

LABEL_99:
        *(a1 + 56) |= 0x40u;
        v45 = *(a1 + 40);
        if (!v45)
        {
          operator new();
        }

        v52 = 0;
        v46 = *(this + 1);
        if (v46 >= *(this + 2) || *v46 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v52))
          {
            return 0;
          }
        }

        else
        {
          v52 = *v46;
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
        if (!sub_24543AB0C(v45, this, v49) || *(this + 36) != 1)
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

        if (*(this + 1) == *(this + 2) && (*(this + 11) || *(this + 6) == *(this + 10)))
        {
          *(this + 8) = 0;
          result = 1;
          *(this + 36) = 1;
          return result;
        }
      }

      if (v7 != 4)
      {
        break;
      }

      if (v8 != 2)
      {
        goto LABEL_30;
      }

LABEL_57:
      *(a1 + 56) |= 8u;
      v20 = *(a1 + 16);
      if (!v20)
      {
        operator new();
      }

      v52 = 0;
      v21 = *(this + 1);
      if (v21 >= *(this + 2) || *v21 < 0)
      {
        if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v52))
        {
          return 0;
        }
      }

      else
      {
        v52 = *v21;
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
      if (!sub_24543B17C(v20, this, v24) || *(this + 36) != 1)
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
      if (v28 < *(this + 2) && *v28 == 42)
      {
        *(this + 1) = v28 + 1;
LABEL_71:
        *(a1 + 56) |= 0x10u;
        v29 = *(a1 + 24);
        if (!v29)
        {
          operator new();
        }

        v52 = 0;
        v30 = *(this + 1);
        if (v30 >= *(this + 2) || *v30 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v52))
          {
            return 0;
          }
        }

        else
        {
          v52 = *v30;
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
        if (!sub_2454398CC(v29, this, v33) || *(this + 36) != 1)
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
        if (v36 < *(this + 2) && *v36 == 50)
        {
          *(this + 1) = v36 + 1;
LABEL_85:
          *(a1 + 56) |= 0x20u;
          v37 = *(a1 + 32);
          if (!v37)
          {
            operator new();
          }

          v52 = 0;
          v38 = *(this + 1);
          if (v38 >= *(this + 2) || *v38 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v52))
            {
              return 0;
            }
          }

          else
          {
            v52 = *v38;
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
          if (!sub_24543A3AC(v37, this, v41) || *(this + 36) != 1)
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
          if (v44 < *(this + 2) && *v44 == 58)
          {
            *(this + 1) = v44 + 1;
            goto LABEL_99;
          }
        }
      }
    }

    if (v7 == 5 && v8 == 2)
    {
      goto LABEL_71;
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

uint64_t sub_24543C46C(uint64_t result, const wireless_diagnostics::google::protobuf::MessageLite *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = result;
  v6 = *(result + 56);
  if (v6)
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(1, *(result + 8), a2, a4);
    v6 = *(v5 + 56);
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

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(2, *(v5 + 12), a2, a4);
  v6 = *(v5 + 56);
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
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(3, *(v5 + 48), a2, a4);
  v6 = *(v5 + 56);
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_15;
  }

LABEL_12:
  v7 = *(v5 + 16);
  if (!v7)
  {
    sub_24539DA30();
    v7 = *(qword_2813CECD8 + 16);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(4, v7, a2, a4);
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

LABEL_15:
  v8 = *(v5 + 24);
  if (!v8)
  {
    sub_24539DA30();
    v8 = *(qword_2813CECD8 + 24);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(5, v8, a2, a4);
  v6 = *(v5 + 56);
  if ((v6 & 0x20) == 0)
  {
LABEL_7:
    if ((v6 & 0x40) == 0)
    {
      return result;
    }

    goto LABEL_21;
  }

LABEL_18:
  v9 = *(v5 + 32);
  if (!v9)
  {
    sub_24539DA30();
    v9 = *(qword_2813CECD8 + 32);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(6, v9, a2, a4);
  if ((*(v5 + 56) & 0x40) != 0)
  {
LABEL_21:
    v10 = *(v5 + 40);
    if (!v10)
    {
      sub_24539DA30();
      v10 = *(qword_2813CECD8 + 40);
    }

    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(7, v10, a2, a4);
  }

  return result;
}

uint64_t sub_24543C5B8(uint64_t a1, unsigned int a2)
{
  v3 = *(a1 + 56);
  if (!v3)
  {
    v4 = 0;
    goto LABEL_46;
  }

  v4 = 2 * (v3 & 1u);
  if ((v3 & 2) != 0)
  {
    v5 = *(a1 + 12);
    if ((v5 & 0x80000000) != 0)
    {
      v6 = 11;
    }

    else if (v5 >= 0x80)
    {
      v6 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5) + 1;
      v3 = *(a1 + 56);
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

      goto LABEL_22;
    }
  }

  else if ((v3 & 4) == 0)
  {
    goto LABEL_4;
  }

  v7 = *(a1 + 48);
  if ((v7 & 0x80000000) != 0)
  {
    v8 = 11;
  }

  else if (v7 >= 0x80)
  {
    v8 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v7) + 1;
    v3 = *(a1 + 56);
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

    goto LABEL_28;
  }

LABEL_22:
  v9 = *(a1 + 16);
  if (!v9)
  {
    sub_24539DA30();
    v9 = *(qword_2813CECD8 + 16);
  }

  v10 = sub_24543B8BC(v9, a2);
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
  v3 = *(a1 + 56);
  if ((v3 & 0x10) == 0)
  {
LABEL_6:
    if ((v3 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_34;
  }

LABEL_28:
  v13 = *(a1 + 24);
  if (!v13)
  {
    sub_24539DA30();
    v13 = *(qword_2813CECD8 + 24);
  }

  v14 = sub_245439F74(v13, a2);
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
  v3 = *(a1 + 56);
  if ((v3 & 0x20) == 0)
  {
LABEL_7:
    if ((v3 & 0x40) == 0)
    {
      goto LABEL_46;
    }

    goto LABEL_40;
  }

LABEL_34:
  v17 = *(a1 + 32);
  if (!v17)
  {
    sub_24539DA30();
    v17 = *(qword_2813CECD8 + 32);
  }

  v18 = sub_24543A7A0(v17, a2);
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
  if ((*(a1 + 56) & 0x40) != 0)
  {
LABEL_40:
    v21 = *(a1 + 40);
    if (!v21)
    {
      sub_24539DA30();
      v21 = *(qword_2813CECD8 + 40);
    }

    v22 = sub_24543AD04(v21, a2);
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
  }

LABEL_46:
  *(a1 + 52) = v4;
  return v4;
}

void sub_24543C7AC(uint64_t a1, void *lpsrc)
{
  if (!__dynamic_cast(lpsrc, MEMORY[0x277D82C38], &unk_28585A410, 0))
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  sub_24542D584(a1, lpsrc);
}

void sub_24543C868(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = &unk_285859EB0;
  sub_24539DA30();

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);
}

void sub_24543C8C4(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  sub_24543C868(a1);

  JUMPOUT(0x245D6A0D0);
}

uint64_t sub_24543C94C(_DWORD *a1, wireless_diagnostics::google::protobuf::internal::WireFormatLite *this, unsigned int a3)
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

      a1[2] = v10;
      a1[6] |= 1u;
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

        a1[3] = v14;
        a1[6] |= 2u;
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

          a1[4] = v16;
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

unsigned int *sub_24543CB58(unsigned int *result, uint64_t a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
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
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(2, v5[3], a2, a4);
    if ((v5[6] & 4) == 0)
    {
      return result;
    }

    goto LABEL_7;
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(1, result[2], a2, a4);
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

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(3, v7, a2, a4);
}

uint64_t sub_24543CBE4(uint64_t a1, unsigned int a2)
{
  LOBYTE(v3) = *(a1 + 24);
  if (!v3)
  {
    v4 = 0;
    goto LABEL_26;
  }

  if (*(a1 + 24))
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
      v3 = *(a1 + 24);
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
    if ((*(a1 + 24) & 2) == 0)
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
    v3 = *(a1 + 24);
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
    if ((v8 & 0x80000000) != 0)
    {
      v9 = 11;
    }

    else if (v8 >= 0x80)
    {
      v9 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v8) + 1;
    }

    else
    {
      v9 = 2;
    }

    v4 = (v9 + v4);
  }

LABEL_26:
  *(a1 + 20) = v4;
  return v4;
}

void sub_24543CCC4(_DWORD *a1, void *lpsrc)
{
  if (!__dynamic_cast(lpsrc, MEMORY[0x277D82C38], &unk_28585A428, 0))
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  sub_24543058C(a1, lpsrc);
}

void sub_24543CD80(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = &unk_285859F28;
  v2 = *(a1 + 3);
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

void sub_24543CE1C(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  sub_24543CD80(a1);

  JUMPOUT(0x245D6A0D0);
}

uint64_t sub_24543CEAC(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormatLite *this, unsigned int a3)
{
  v5 = MEMORY[0x277D82C30];
  do
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
            goto LABEL_21;
          }

          v15 = *(a1 + 36);
LABEL_30:
          *(a1 + 36) = v15 | 4;
          if (*(a1 + 24) == v5)
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
          goto LABEL_21;
        }

        v12 = *(this + 1);
        v10 = *(this + 2);
LABEL_17:
        v17 = 0;
        if (v12 >= v10 || (v13 = *v12, (v13 & 0x8000000000000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(this, &v17);
          if (!result)
          {
            return result;
          }

          v13 = v17;
          v14 = *(this + 1);
          v10 = *(this + 2);
        }

        else
        {
          v14 = v12 + 1;
          *(this + 1) = v14;
        }

        *(a1 + 16) = v13;
        v15 = *(a1 + 36) | 2;
        *(a1 + 36) = v15;
        if (v14 < v10 && *v14 == 26)
        {
          *(this + 1) = v14 + 1;
          goto LABEL_30;
        }
      }

      if (v8 != 1 || v9 != 1)
      {
        break;
      }

      v17 = 0;
      if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, &v17) & 1) == 0)
      {
        return 0;
      }

      *(a1 + 8) = v17;
      *(a1 + 36) |= 1u;
      v11 = *(this + 1);
      v10 = *(this + 2);
      if (v11 < v10 && *v11 == 16)
      {
        v12 = v11 + 1;
        *(this + 1) = v12;
        goto LABEL_17;
      }
    }

LABEL_21:
    if (v9 == 4)
    {
      return 1;
    }
  }

  while ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(this, TagFallback) & 1) != 0);
  return 0;
}

uint64_t sub_24543D0B8(uint64_t result, uint64_t a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
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
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt64(2, *(v5 + 16), a2, a4);
    if ((*(v5 + 36) & 4) == 0)
    {
      return result;
    }

    goto LABEL_7;
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(1, a2, *(result + 8), a3);
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

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
}

uint64_t sub_24543D144(uint64_t a1, unint64_t a2)
{
  v3 = *(a1 + 36);
  if (*(a1 + 36))
  {
    v4 = (v3 << 31 >> 31) & 9;
    if ((v3 & 2) != 0)
    {
      v4 = v4 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(a1 + 16)) + 1;
      v3 = *(a1 + 36);
    }

    if ((v3 & 4) != 0)
    {
      v5 = *(a1 + 24);
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
    }
  }

  else
  {
    v4 = 0;
  }

  *(a1 + 32) = v4;
  return v4;
}

void sub_24543D1FC(uint64_t a1, void *lpsrc)
{
  if (!__dynamic_cast(lpsrc, MEMORY[0x277D82C38], &unk_28585A440, 0))
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  sub_245430678(a1, lpsrc);
}

void sub_24543D2B8(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = &unk_285859FA0;
  v2 = *(a1 + 2);
  if (v2 != MEMORY[0x277D82C30] && v2 != 0)
  {
    if (*(v2 + 23) < 0)
    {
      operator delete(*v2);
    }

    MEMORY[0x245D6A0D0](v2, 0x1012C40EC159624);
  }

  sub_24539DA30();
  if (qword_2813CED10 != a1)
  {
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
  }

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);
}

void sub_24543D3E8(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  sub_24543D2B8(a1);

  JUMPOUT(0x245D6A0D0);
}

uint64_t sub_24543D47C(uint64_t result)
{
  v1 = result;
  v2 = *(result + 52);
  if (v2)
  {
    *(result + 8) = 0;
    if ((v2 & 2) != 0)
    {
      v3 = *(result + 16);
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

    v4 = *(result + 52);
    if ((v4 & 4) != 0)
    {
      result = *(result + 24);
      if (result)
      {
        result = sub_2453970B0(result);
        v4 = *(v1 + 52);
      }
    }

    if ((v4 & 8) != 0)
    {
      v5 = *(v1 + 32);
      if (v5)
      {
        if (*(v5 + 28))
        {
          *(v5 + 8) = 0;
          *(v5 + 16) = 0;
        }

        *(v5 + 28) = 0;
        v4 = *(v1 + 52);
      }
    }

    if ((v4 & 0x10) != 0)
    {
      result = *(v1 + 40);
      if (result)
      {
        result = sub_24539E010(result);
      }
    }
  }

  *(v1 + 52) = 0;
  return result;
}

uint64_t sub_24543D52C(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormatLite *this, unsigned int a3)
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
          if (TagFallback >> 3 <= 4)
          {
            break;
          }

          if (v8 == 5)
          {
            if (v9 != 2)
            {
              goto LABEL_22;
            }

            goto LABEL_39;
          }

          if (v8 == 6)
          {
            if (v9 != 2)
            {
              goto LABEL_22;
            }

LABEL_53:
            *(a1 + 52) |= 8u;
            v26 = *(a1 + 32);
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
            if (!sub_24542DE98(v26, this, v30) || *(this + 36) != 1)
            {
              return 0;
            }

            wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this);
            v31 = *(this + 14);
            v23 = __OFSUB__(v31, 1);
            v32 = v31 - 1;
            if (v32 < 0 == v23)
            {
              *(this + 14) = v32;
            }

            v33 = *(this + 1);
            if (v33 < *(this + 2) && *v33 == 58)
            {
              *(this + 1) = v33 + 1;
              goto LABEL_67;
            }
          }

          else
          {
            if (v8 != 7 || v9 != 2)
            {
              goto LABEL_22;
            }

LABEL_67:
            *(a1 + 52) |= 0x10u;
            v34 = *(a1 + 40);
            if (!v34)
            {
              operator new();
            }

            v43 = 0;
            v35 = *(this + 1);
            if (v35 >= *(this + 2) || *v35 < 0)
            {
              if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v43))
              {
                return 0;
              }
            }

            else
            {
              v43 = *v35;
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
            if (!sub_24539E2FC(v34, this, v38) || *(this + 36) != 1)
            {
              return 0;
            }

            wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this);
            v39 = *(this + 14);
            v23 = __OFSUB__(v39, 1);
            v40 = v39 - 1;
            if (v40 < 0 == v23)
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

        if (v8 != 1)
        {
          break;
        }

        if ((TagFallback & 7) != 0)
        {
          goto LABEL_22;
        }

        v12 = *(this + 1);
        v11 = *(this + 2);
        if (v12 >= v11 || (v13 = *v12, v13 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(this, (a1 + 8));
          if (!result)
          {
            return result;
          }

          v14 = *(this + 1);
          v11 = *(this + 2);
        }

        else
        {
          *(a1 + 8) = v13;
          v14 = v12 + 1;
          *(this + 1) = v14;
        }

        v10 = *(a1 + 52) | 1;
        *(a1 + 52) = v10;
        if (v14 < v11 && *v14 == 18)
        {
          *(this + 1) = v14 + 1;
          goto LABEL_33;
        }
      }

      if (v8 != 2 || v9 != 2)
      {
        break;
      }

      v10 = *(a1 + 52);
LABEL_33:
      *(a1 + 52) = v10 | 2;
      if (*(a1 + 16) == v5)
      {
        operator new();
      }

      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
      if (!result)
      {
        return result;
      }

      v16 = *(this + 1);
      if (v16 < *(this + 2) && *v16 == 42)
      {
        *(this + 1) = v16 + 1;
LABEL_39:
        *(a1 + 52) |= 4u;
        v17 = *(a1 + 24);
        if (!v17)
        {
          operator new();
        }

        v41 = 0;
        v18 = *(this + 1);
        if (v18 >= *(this + 2) || *v18 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v41))
          {
            return 0;
          }
        }

        else
        {
          v41 = *v18;
          *(this + 1) = v18 + 1;
        }

        v19 = *(this + 14);
        v20 = *(this + 15);
        *(this + 14) = v19 + 1;
        if (v19 >= v20)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this);
        if (!sub_245398C58(v17, this, v21) || *(this + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this);
        v22 = *(this + 14);
        v23 = __OFSUB__(v22, 1);
        v24 = v22 - 1;
        if (v24 < 0 == v23)
        {
          *(this + 14) = v24;
        }

        v25 = *(this + 1);
        if (v25 < *(this + 2) && *v25 == 50)
        {
          *(this + 1) = v25 + 1;
          goto LABEL_53;
        }
      }
    }

LABEL_22:
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

uint64_t sub_24543DB08(uint64_t result, wireless_diagnostics::google::protobuf::MessageLite *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = result;
  v6 = *(result + 52);
  if (v6)
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(1, *(result + 8), a2, a4);
    v6 = *(v5 + 52);
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

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
  v6 = *(v5 + 52);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_12;
  }

LABEL_9:
  v7 = *(v5 + 24);
  if (!v7)
  {
    sub_24539DA30();
    v7 = *(qword_2813CED10 + 24);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(5, v7, a2, a4);
  v6 = *(v5 + 52);
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      return result;
    }

    goto LABEL_15;
  }

LABEL_12:
  v8 = *(v5 + 32);
  if (!v8)
  {
    sub_24539DA30();
    v8 = *(qword_2813CED10 + 32);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(6, v8, a2, a4);
  if ((*(v5 + 52) & 0x10) != 0)
  {
LABEL_15:
    v9 = *(v5 + 40);
    if (!v9)
    {
      sub_24539DA30();
      v9 = *(qword_2813CED10 + 40);
    }

    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(7, v9, a2, a4);
  }

  return result;
}

uint64_t sub_24543DC08(uint64_t a1, unint64_t a2)
{
  LOBYTE(v3) = *(a1 + 52);
  if (!v3)
  {
    v4 = 0;
    goto LABEL_38;
  }

  if (*(a1 + 52))
  {
    v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(a1 + 8)) + 1;
    v3 = *(a1 + 52);
    if ((v3 & 2) == 0)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v4 = 0;
    if ((*(a1 + 52) & 2) == 0)
    {
      goto LABEL_16;
    }
  }

  v5 = *(a1 + 16);
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
    v3 = *(a1 + 52);
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
    v11 = *(a1 + 24);
    if (!v11)
    {
      sub_24539DA30();
      v11 = *(qword_2813CED10 + 24);
    }

    v12 = sub_24542ADF4(v11, a2);
    v13 = v12;
    if (v12 >= 0x80)
    {
      v14 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v12);
    }

    else
    {
      v14 = 1;
    }

    v4 = (v4 + v13 + v14 + 1);
    v3 = *(a1 + 52);
    if ((v3 & 8) == 0)
    {
LABEL_18:
      if ((v3 & 0x10) == 0)
      {
        goto LABEL_38;
      }

      goto LABEL_32;
    }
  }

  else if ((v3 & 8) == 0)
  {
    goto LABEL_18;
  }

  v15 = *(a1 + 32);
  if (!v15)
  {
    sub_24539DA30();
    v15 = *(qword_2813CED10 + 32);
  }

  v16 = sub_24542E144(v15, a2);
  v17 = v16;
  if (v16 >= 0x80)
  {
    v18 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v16);
  }

  else
  {
    v18 = 1;
  }

  v4 = (v4 + v17 + v18 + 1);
  if ((*(a1 + 52) & 0x10) != 0)
  {
LABEL_32:
    v19 = *(a1 + 40);
    if (!v19)
    {
      sub_24539DA30();
      v19 = *(qword_2813CED10 + 40);
    }

    v20 = sub_24542F808(v19, a2);
    v21 = v20;
    if (v20 >= 0x80)
    {
      v22 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v20);
    }

    else
    {
      v22 = 1;
    }

    v4 = (v4 + v21 + v22 + 1);
  }

LABEL_38:
  *(a1 + 48) = v4;
  return v4;
}

void sub_24543DDAC(uint64_t a1, void *lpsrc)
{
  if (!__dynamic_cast(lpsrc, MEMORY[0x277D82C38], &unk_28585A458, 0))
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  if (lpsrc == a1)
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
    v5 = *(lpsrc + 1);
    *(a1 + 52) |= 1u;
    *(a1 + 8) = v5;
    v4 = *(lpsrc + 13);
    if ((v4 & 2) == 0)
    {
LABEL_7:
      if ((v4 & 4) == 0)
      {
        goto LABEL_8;
      }

LABEL_15:
      *(a1 + 52) |= 4u;
      v8 = *(a1 + 24);
      if (!v8)
      {
        operator new();
      }

      v9 = *(lpsrc + 3);
      if (!v9)
      {
        sub_24539DA30();
        v9 = *(qword_2813CED10 + 24);
      }

      sub_2454287A4(v8, v9);
      v4 = *(lpsrc + 13);
      if ((v4 & 8) == 0)
      {
LABEL_9:
        if ((v4 & 0x10) == 0)
        {
          return;
        }

        goto LABEL_25;
      }

      goto LABEL_20;
    }
  }

  else if ((*(lpsrc + 52) & 2) == 0)
  {
    goto LABEL_7;
  }

  v6 = *(lpsrc + 2);
  *(a1 + 52) |= 2u;
  v7 = *(a1 + 16);
  if (v7 == MEMORY[0x277D82C30])
  {
    operator new();
  }

  std::string::operator=(v7, v6);
  v4 = *(lpsrc + 13);
  if ((v4 & 4) != 0)
  {
    goto LABEL_15;
  }

LABEL_8:
  if ((v4 & 8) == 0)
  {
    goto LABEL_9;
  }

LABEL_20:
  *(a1 + 52) |= 8u;
  v10 = *(a1 + 32);
  if (!v10)
  {
    operator new();
  }

  v11 = *(lpsrc + 4);
  if (!v11)
  {
    sub_24539DA30();
    v11 = *(qword_2813CED10 + 32);
  }

  sub_24542DC68(v10, v11);
  if ((*(lpsrc + 13) & 0x10) != 0)
  {
LABEL_25:
    *(a1 + 52) |= 0x10u;
    v12 = *(a1 + 40);
    if (!v12)
    {
      operator new();
    }

    v13 = *(lpsrc + 5);
    if (!v13)
    {
      sub_24539DA30();
      v13 = *(qword_2813CED10 + 40);
    }

    sub_24542E360(v12, v13);
  }
}

void sub_24543E150(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_24543E180(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = &unk_28585A018;
  sub_24539DA30();

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);
}

void sub_24543E1DC(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  sub_24543E180(a1);

  JUMPOUT(0x245D6A0D0);
}

uint64_t sub_24543E264(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormatLite *this, unsigned int a3)
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

        *(a1 + 16) = v14 != 0;
        *(a1 + 24) |= 1u;
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

          *(a1 + 17) = v16 != 0;
          *(a1 + 24) |= 2u;
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

            *(a1 + 18) = v18 != 0;
            *(a1 + 24) |= 4u;
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
      if (v12 >= v8 || (v20 = *v12, v20 < 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(this, (a1 + 8));
        if (!result)
        {
          return result;
        }

        v21 = *(this + 1);
        v8 = *(this + 2);
      }

      else
      {
        *(a1 + 8) = v20;
        v21 = v12 + 1;
        *(this + 1) = v21;
      }

      *(a1 + 24) |= 8u;
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

        *(a1 + 19) = v22 != 0;
        *(a1 + 24) |= 0x10u;
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

uint64_t sub_24543E580(uint64_t result, uint64_t a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = result;
  v6 = *(result + 24);
  if (v6)
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(1, *(result + 16), a2, a4);
    v6 = *(v5 + 24);
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

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(2, *(v5 + 17), a2, a4);
  v6 = *(v5 + 24);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

LABEL_10:
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(4, *(v5 + 8), a2, a4);
    if ((*(v5 + 24) & 0x10) == 0)
    {
      return result;
    }

    goto LABEL_11;
  }

LABEL_9:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(3, *(v5 + 18), a2, a4);
  v6 = *(v5 + 24);
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
  v7 = *(v5 + 19);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(5, v7, a2, a4);
}

uint64_t sub_24543E644(uint64_t a1, unint64_t a2)
{
  v3 = *(a1 + 24);
  if (v3)
  {
    v4 = 2 * (v3 & 1) + (v3 & 2) + ((v3 >> 1) & 2);
    if ((v3 & 8) != 0)
    {
      v4 += wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(a1 + 8)) + 1;
      v3 = *(a1 + 24);
    }

    result = ((v3 >> 3) & 2) + v4;
  }

  else
  {
    result = 0;
  }

  *(a1 + 20) = result;
  return result;
}

void sub_24543E6B8(uint64_t a1, void *lpsrc)
{
  if (!__dynamic_cast(lpsrc, MEMORY[0x277D82C38], &unk_28585A470, 0))
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  sub_24542D8C4(a1, lpsrc);
}

void sub_24543E8CC()
{
  v15 = *MEMORY[0x277D85DE8];
  if (!qword_2813CEDC0)
  {
    mach_timebase_info(&info);
    if (info.denom)
    {
      denom = info.denom;
      numer = info.numer;
      do
      {
        v2 = denom;
        denom = numer % denom;
        numer = v2;
      }

      while (denom);
    }

    else
    {
      v2 = info.numer;
      if (!info.numer)
      {
        v7 = qword_2813CF018;
        if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_error_impl(&dword_245396000, v7, OS_LOG_TYPE_ERROR, "gcd result is zero", buf, 2u);
          v7 = qword_2813CF018;
        }

        if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
        {
          *buf = 136446722;
          v12 = "/Library/Caches/com.apple.xbs/Sources/CoreGEM/Sources/Util/GpsdUtil.mm";
          v13 = 1026;
          *v14 = 68;
          *&v14[4] = 2082;
          *&v14[6] = "getTickToNsInfo";
          _os_log_error_impl(&dword_245396000, v7, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: assertion failure in %{public}s", buf, 0x1Cu);
        }

        __assert_rtn("getTickToNsInfo", "GpsdUtil.mm", 68, "false && gcd result is zero");
      }
    }

    qword_2813CEDB8 = info.denom / v2;
    qword_2813CEDC0 = info.numer / v2;
    if (v2 > info.denom)
    {
      v8 = qword_2813CF018;
      if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_245396000, v8, OS_LOG_TYPE_ERROR, "info.denominator is zero", buf, 2u);
        v8 = qword_2813CF018;
      }

      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446722;
        v12 = "/Library/Caches/com.apple.xbs/Sources/CoreGEM/Sources/Util/GpsdUtil.mm";
        v13 = 1026;
        *v14 = 71;
        *&v14[4] = 2082;
        *&v14[6] = "getTickToNsInfo";
        _os_log_error_impl(&dword_245396000, v8, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: assertion failure in %{public}s", buf, 0x1Cu);
      }

      __assert_rtn("getTickToNsInfo", "GpsdUtil.mm", 71, "false && info.denominator is zero");
    }

    if (v2 > info.numer)
    {
      v9 = qword_2813CF018;
      if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_245396000, v9, OS_LOG_TYPE_ERROR, "info.numerator is zero", buf, 2u);
        v9 = qword_2813CF018;
      }

      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446722;
        v12 = "/Library/Caches/com.apple.xbs/Sources/CoreGEM/Sources/Util/GpsdUtil.mm";
        v13 = 1026;
        *v14 = 72;
        *&v14[4] = 2082;
        *&v14[6] = "getTickToNsInfo";
        _os_log_error_impl(&dword_245396000, v9, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: assertion failure in %{public}s", buf, 0x1Cu);
      }

      __assert_rtn("getTickToNsInfo", "GpsdUtil.mm", 72, "false && info.numerator is zero");
    }

    v3 = info.numer / v2 * (info.denom / v2);
    if (v3 >= 0x17D)
    {
      byte_27EE13510 = 1;
      v4 = qword_2813CF018;
      if (v3 >> 10 > 0x5E)
      {
        if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_error_impl(&dword_245396000, v4, OS_LOG_TYPE_ERROR, "#gpsdUtil,Cannot protect against overflow in tick to ns", buf, 2u);
        }
      }

      else if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_245396000, v4, OS_LOG_TYPE_INFO, "#gpsdUtil,Reducing tick to ns precision to avoid overflow risk", buf, 2u);
      }
    }

    v5 = qword_2813CF018;
    if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_DEBUG))
    {
      if (byte_27EE13510)
      {
        v6 = 8;
      }

      else
      {
        v6 = 0;
      }

      *buf = 134218496;
      v12 = qword_2813CEDC0;
      v13 = 2048;
      *v14 = qword_2813CEDB8;
      *&v14[8] = 1024;
      *&v14[10] = v6;
      _os_log_debug_impl(&dword_245396000, v5, OS_LOG_TYPE_DEBUG, "#gpsdUtil,Tick to ns info,Numerator,%llu,Denominator,%llu,PrecisionReductionBits,%d", buf, 0x1Cu);
    }
  }
}

double sub_24543ED28()
{
  if (!qword_2813CEDB0)
  {
    qword_2813CEDB0 = sub_24539D8D0();
  }

  return (sub_24539D8D0() - qword_2813CEDB0) * 0.000000001;
}

void sub_24543ED74(uint64_t *__return_ptr a1@<X8>, unsigned int __val@<W0>)
{
  v10[2] = *MEMORY[0x277D85DE8];
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (__val >= 0x1C || ((0xFDFFE3Fu >> __val) & 1) == 0)
  {
    goto LABEL_6;
  }

  MEMORY[0x245D69EE0](a1, off_278E36D18[__val]);
  v4 = *(a1 + 23);
  if (*(a1 + 23) < 0)
  {
    v4 = a1[1];
  }

  if (!v4)
  {
LABEL_6:
    std::to_string(&__p, __val);
    v5 = std::string::insert(&__p, 0, "unknown_");
    v6 = v5->__r_.__value_.__r.__words[0];
    v10[0] = v5->__r_.__value_.__l.__size_;
    *(v10 + 7) = *(&v5->__r_.__value_.__r.__words[1] + 7);
    v7 = HIBYTE(v5->__r_.__value_.__r.__words[2]);
    v5->__r_.__value_.__l.__size_ = 0;
    v5->__r_.__value_.__r.__words[2] = 0;
    v5->__r_.__value_.__r.__words[0] = 0;
    if (*(a1 + 23) < 0)
    {
      operator delete(*a1);
    }

    v8 = v10[0];
    *a1 = v6;
    a1[1] = v8;
    *(a1 + 15) = *(v10 + 7);
    *(a1 + 23) = v7;
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }
}

void sub_24543EE94(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (*(v14 + 23) < 0)
  {
    operator delete(*v14);
  }

  _Unwind_Resume(exception_object);
}

void sub_24543EECC(uint64_t *__return_ptr a1@<X8>, int __val@<W0>)
{
  v11[2] = *MEMORY[0x277D85DE8];
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  v4 = "START";
  switch(__val)
  {
    case 0:
      v4 = "PROTO_DEFAULT";
      goto LABEL_63;
    case 1:
      goto LABEL_63;
    case 2:
      v4 = "STOP";
      goto LABEL_63;
    case 3:
      v4 = "RESET";
      goto LABEL_63;
    case 4:
      v4 = "CLEAR";
      goto LABEL_63;
    case 5:
      v4 = "DELETE_GNSS_DATA";
      goto LABEL_63;
    case 6:
      v4 = "SET_PVTM_REPORT";
      goto LABEL_63;
    case 7:
      v4 = "SET_NMEA_HANDLER";
      goto LABEL_63;
    case 8:
      v4 = "INJECT_ASSISTANCE_POSITION";
      goto LABEL_63;
    case 9:
      v4 = "INJECT_ASSISTANCE_TIME";
      goto LABEL_63;
    case 10:
      v4 = "INJECT_ASSISTANCE_FILE";
      goto LABEL_63;
    case 11:
      v4 = "INJECT_RTI_FILE";
      goto LABEL_63;
    case 12:
      v4 = "INJECT_SVID_BLOCKLIST";
      goto LABEL_63;
    case 13:
      v4 = "SET_ASSISTANCE_PRESSURE";
      goto LABEL_63;
    case 14:
      v4 = "SET_ASSISTANCE_ACCEL";
      goto LABEL_63;
    case 15:
      v4 = "SET_ASSISTANCE_GYRO";
      goto LABEL_63;
    case 16:
      v4 = "SET_ASSISTANCE_DEM";
      goto LABEL_63;
    case 17:
      v4 = "SET_ASSISTANCE_MAP_VECTOR";
      goto LABEL_63;
    case 18:
      v4 = "SET_ASSISTANCE_MOTION_ACTIVITY_CONTEXT";
      goto LABEL_63;
    case 19:
      v4 = "SET_ASSISTANCE_MOUNT_STATE";
      goto LABEL_63;
    case 20:
      v4 = "SET_ASSISTANCE_SIGNAL_ENVIRONMENT";
      goto LABEL_63;
    case 21:
      v4 = "SET_ASSISTANCE_SPEED_CONSTRAINT";
      goto LABEL_63;
    case 22:
      v4 = "SET_ASSISTANCE_ALONG_TRACK_VELOCITY";
      goto LABEL_63;
    case 23:
      v4 = "SET_POWER_REPORT";
      goto LABEL_63;
    case 24:
      v4 = "SET_CONFIG_SIMULATOR_MODE";
      goto LABEL_63;
    case 25:
      v4 = "SET_CONFIG_ENABLE_GNSS_CONSTELLATIONS";
      goto LABEL_63;
    case 26:
      v4 = "SET_CONFIG_DUTY_CYCLING";
      goto LABEL_63;
    case 27:
      v4 = "SET_TIME_TRANSFER_PULSE";
      goto LABEL_63;
    case 28:
      v4 = "CLEAN_TIME_TRANSFER_PULSE";
      goto LABEL_63;
    case 29:
      v4 = "INJECT_LTL_INFO";
      goto LABEL_63;
    case 31:
      v4 = "SET_THERMAL_RISK_STATE";
      goto LABEL_63;
    case 32:
      v4 = "PING";
      goto LABEL_63;
    case 34:
      v4 = "BUILD_DEVICE";
      goto LABEL_63;
    case 35:
      v4 = "TERMINATION_IMMINENT";
      goto LABEL_63;
    case 36:
      v4 = "EXIT";
      goto LABEL_63;
    case 37:
      v4 = "FORCE_CLEAR_ALL_NV";
      goto LABEL_63;
    case 38:
      v4 = "SET_CONFIG_RF_BAND_ENABLE";
      goto LABEL_63;
    case 39:
      v4 = "INJECT_RAVEN_ORBIT_FILE";
      goto LABEL_63;
    case 51:
      v4 = "START_EMERGENCY_PREEMPTIVE_SESSION";
      goto LABEL_63;
    case 52:
      v4 = "STOP_EMERGENCY_PREEMPTIVE_SESSION";
      goto LABEL_63;
    case 53:
      v4 = "SET_EMERGENCY_CONFIG";
      goto LABEL_63;
    case 54:
      v4 = "SET_EMERGENCY_SESSION_SUMMARY_REPORT";
      goto LABEL_63;
    case 55:
      v4 = "ENTER_EMERGENCY_MODE";
      goto LABEL_63;
    case 56:
      v4 = "EXIT_EMERGENCY_MODE";
      goto LABEL_63;
    case 57:
      v4 = "GEM_PROTOCOL_REQUEST";
      goto LABEL_63;
    case 60:
      v4 = "START_EMERGENCY_POSITION";
      goto LABEL_63;
    case 61:
      v4 = "STOP_EMERGENCY_POSITION";
      goto LABEL_63;
    case 62:
      v4 = "SET_EMERGENCY_POSITION_REPORT";
      goto LABEL_63;
    case 63:
      v4 = "SET_EMERGENCY_MEASUREMENT_REPORT";
      goto LABEL_63;
    case 64:
      v4 = "SET_NW_ASSISTANCE_NEEDED_REPORT";
      goto LABEL_63;
    case 65:
      v4 = "SET_NW_ASSISTANCE_GPS_REF_TIME";
      goto LABEL_63;
    case 66:
      v4 = "SET_NW_ASSISTANCE_REF_POSITION";
      goto LABEL_63;
    case 67:
      v4 = "SET_NW_ASSISTANCE_GPS_EPHEMERIS";
      goto LABEL_63;
    case 68:
      v4 = "SET_NW_ASSISTANCE_GPS_ACQUISITION";
      goto LABEL_63;
    case 69:
      v4 = "INJECT_FT_ASSISTANCE";
      goto LABEL_63;
    case 70:
      v4 = "DECODE_SUPL_INIT";
      goto LABEL_63;
    case 71:
      v4 = "SET_SUPL_INIT";
      goto LABEL_63;
    case 72:
      v4 = "SET_SUPL_LOCATIONID_NEEDED_REPORT";
      goto LABEL_63;
    case 73:
      v4 = "SET_SUPL_LOCATIONID";
      goto LABEL_63;
    case 74:
      v4 = "ABORT_SUPL_SESSION";
      goto LABEL_63;
    case 75:
      v4 = "SET_SUPL_SESSION_STATUS_REPORT";
      goto LABEL_63;
    case 76:
      v4 = "SET_SUPL_WLAN_MEAS";
LABEL_63:
      MEMORY[0x245D69EE0](a1, v4);
      v5 = *(a1 + 23);
      if (*(a1 + 23) < 0)
      {
        v5 = a1[1];
      }

      if (!v5)
      {
        goto LABEL_66;
      }

      return;
    default:
LABEL_66:
      std::to_string(&__p, __val);
      v6 = std::string::insert(&__p, 0, "unknown_");
      v7 = v6->__r_.__value_.__r.__words[0];
      v11[0] = v6->__r_.__value_.__l.__size_;
      *(v11 + 7) = *(&v6->__r_.__value_.__r.__words[1] + 7);
      v8 = HIBYTE(v6->__r_.__value_.__r.__words[2]);
      v6->__r_.__value_.__l.__size_ = 0;
      v6->__r_.__value_.__r.__words[2] = 0;
      v6->__r_.__value_.__r.__words[0] = 0;
      if (*(a1 + 23) < 0)
      {
        operator delete(*a1);
      }

      v9 = v11[0];
      *a1 = v7;
      a1[1] = v9;
      *(a1 + 15) = *(v11 + 7);
      *(a1 + 23) = v8;
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      return;
  }
}

void sub_24543F2D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (*(v14 + 23) < 0)
  {
    operator delete(*v14);
  }

  _Unwind_Resume(exception_object);
}

void sub_24543F30C(dispatch_queue_t *a1, dispatch_qos_class_t a2, const std::string::value_type *a3)
{
  v18 = *MEMORY[0x277D85DE8];
  sub_2453B414C(v17, "com.apple.gpsd.");
  v6 = std::string::append(v17, a3);
  v7 = *&v6->__r_.__value_.__l.__data_;
  v16 = v6->__r_.__value_.__r.__words[2];
  *__p = v7;
  v6->__r_.__value_.__l.__size_ = 0;
  v6->__r_.__value_.__r.__words[2] = 0;
  v6->__r_.__value_.__r.__words[0] = 0;
  if ((v17[23] & 0x80000000) != 0)
  {
    operator delete(*v17);
  }

  v8 = dispatch_queue_attr_make_with_qos_class(0, a2, 0);
  if (!v8)
  {
    v9 = qword_2813CF008;
    if (os_log_type_enabled(qword_2813CF008, OS_LOG_TYPE_DEFAULT))
    {
      v10 = __p;
      if (v16 < 0)
      {
        v10 = __p[0];
      }

      *v17 = 136446210;
      *&v17[4] = v10;
      _os_log_impl(&dword_245396000, v9, OS_LOG_TYPE_DEFAULT, "dispatchQueueInit,nullattr,%{public}s", v17, 0xCu);
    }
  }

  if (v16 >= 0)
  {
    v11 = __p;
  }

  else
  {
    v11 = __p[0];
  }

  v12 = dispatch_queue_create(v11, v8);
  *a1 = v12;
  if (!v12)
  {
    v13 = qword_2813CF018;
    if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_ERROR))
    {
      v14 = __p;
      if (v16 < 0)
      {
        v14 = __p[0];
      }

      *v17 = 136446210;
      *&v17[4] = v14;
      _os_log_error_impl(&dword_245396000, v13, OS_LOG_TYPE_ERROR, "dispatchQueueInit,queue,null,%{public}s", v17, 0xCu);
      v13 = qword_2813CF018;
    }

    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *v17 = 136446722;
      *&v17[4] = "/Library/Caches/com.apple.xbs/Sources/CoreGEM/Sources/Util/GpsdUtil.mm";
      *&v17[12] = 1026;
      *&v17[14] = 540;
      *&v17[18] = 2082;
      *&v17[20] = "dispatchQueueInit";
      _os_log_error_impl(&dword_245396000, v13, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: assertion failure in %{public}s", v17, 0x1Cu);
    }

    __assert_rtn("dispatchQueueInit", "GpsdUtil.mm", 540, "false && dispatchQueueInit,queue,null,%{public}s");
  }

  if (SHIBYTE(v16) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_24543F558(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

__n128 sub_24543F590(uint64_t a1)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  __asm { FMOV            V0.2D, #-1.0 }

  *(a1 + 24) = result;
  *(a1 + 40) = result;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0xBFF0000000000000;
  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  *(a1 + 136) = 0;
  *(a1 + 144) = 0;
  *(a1 + 152) = 0;
  *(a1 + 160) = result;
  *(a1 + 176) = result;
  *(a1 + 192) = 0;
  *(a1 + 200) = 0;
  *(a1 + 208) = 0;
  *(a1 + 216) = 0;
  *(a1 + 224) = 0;
  *(a1 + 232) = 0xBFF0000000000000;
  *(a1 + 240) = 0;
  *(a1 + 248) = 0;
  *(a1 + 256) = 0;
  *(a1 + 264) = 0;
  *(a1 + 272) = 0;
  *(a1 + 280) = 0;
  *(a1 + 288) = 0;
  *(a1 + 296) = 0xBFF0000000000000;
  *(a1 + 304) = result;
  *(a1 + 320) = 0xBFF0000000000000;
  *(a1 + 328) = 0;
  *(a1 + 336) = 0;
  *(a1 + 344) = 0;
  *(a1 + 352) = 0;
  *(a1 + 360) = 0;
  *(a1 + 368) = 0xBFF0000000000000;
  *(a1 + 376) = 0;
  *(a1 + 384) = 0;
  *(a1 + 392) = 0;
  *(a1 + 400) = 0;
  *(a1 + 408) = 0;
  *(a1 + 448) = 0;
  *(a1 + 416) = 0u;
  *(a1 + 432) = 0u;
  return result;
}

double sub_24543F63C(uint64_t a1, uint64_t a2, unint64_t a3, double a4, double a5, double a6)
{
  v15 = *MEMORY[0x277D85DE8];
  v10 = a2 - a1;
  v11 = qword_2813CF020;
  if (os_log_type_enabled(qword_2813CF020, OS_LOG_TYPE_DEBUG))
  {
    v13 = 134217984;
    v14 = *&v10;
    _os_log_debug_impl(&dword_245396000, v11, OS_LOG_TYPE_DEBUG, "HeloEstimator,getScaledUncertainty,age,%llu", &v13, 0xCu);
    v11 = qword_2813CF020;
  }

  if (v10 < a3)
  {
    a6 = a5;
  }

  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    v13 = 134217984;
    v14 = a6;
    _os_log_debug_impl(&dword_245396000, v11, OS_LOG_TYPE_DEBUG, "HeloEstimator,getScaledUncertainty,scaleFactor,%f", &v13, 0xCu);
  }

  return a4 + v10 * a6;
}

double sub_24543F764@<D0>(int *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = 0;
  *(a3 + 120) = 0;
  *(a3 + 128) = 0;
  sub_24543F7F8(a1, a2, &v11);
  v6 = v11;
  *(a3 + 24) = v12;
  v7 = v14;
  *(a3 + 40) = v13;
  *(a3 + 56) = v7;
  v8 = v16;
  *(a3 + 72) = v15;
  *(a3 + 8) = v6;
  *(a3 + 136) = v8;
  sub_245440064(a1, a2, &v11);
  v9 = v12;
  *(a3 + 88) = v11;
  *(a3 + 104) = v9;
  result = *&v13;
  *(a3 + 152) = v13;
  return result;
}

void sub_24543F7F8(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v67 = *MEMORY[0x277D85DE8];
  v6 = *a1;
  v65 = *(a1 + 4);
  v66 = *(a1 + 20);
  v7 = *(a1 + 24);
  v8 = *(a1 + 68);
  v49 = *(a1 + 64);
  v10 = *(a1 + 72);
  v9 = *(a1 + 80);
  v50 = v10;
  v11 = *(a1 + 96);
  v46 = *(a1 + 136);
  v63 = *(a1 + 140);
  v64 = *(a1 + 156);
  v12 = *(a1 + 160);
  v55 = *(a1 + 176);
  v56 = *(a1 + 168);
  v51 = *(a1 + 184);
  v13 = *(a1 + 204);
  v52 = *(a1 + 200);
  v14 = *(a1 + 216);
  v53 = *(a1 + 208);
  v15 = *(a1 + 232);
  v43 = *(a1 + 272);
  v44 = v8;
  v61 = *(a1 + 276);
  v62 = *(a1 + 292);
  v16 = *(a1 + 296);
  v17 = *(a1 + 304);
  v18 = *(a1 + 312);
  v42 = *(a1 + 320);
  v47 = *(a1 + 48);
  v48 = *(a1 + 56);
  v57 = *(a1 + 192);
  v45 = *(a1 + 328);
  v19 = *(a1 + 336);
  v41 = *(a1 + 340);
  v54 = *(a1 + 368);
  v20 = &qword_2813CF000;
  v22 = *(a1 + 344);
  v21 = *(a1 + 352);
  if (v7 != -1.0 && v11 != -1.0)
  {
    v23 = a2 - v9;
    if ((a2 - v9) < 0x12Du)
    {
      v7 = sub_24543F63C(v9, a2, 0x78uLL, v7, 3.0, 15.0);
    }

    else
    {
      v24 = qword_2813CF020;
      if (os_log_type_enabled(qword_2813CF020, OS_LOG_TYPE_DEBUG))
      {
        *v60 = 67109120;
        *&v60[4] = v23;
        _os_log_debug_impl(&dword_245396000, v24, OS_LOG_TYPE_DEBUG, "HeloEstimator,GemHeloEstimator::getBestHorizontal, GNSS fix age exceeds max fix age, %d", v60, 8u);
      }

      v50 = 0;
      v6 = 0;
      v49 = 0;
      *&v60[12] = 0;
      *&v60[4] = 0;
      v65 = *v60;
      v66 = 0;
      v48 = 0;
      v47 = -1.0;
      v11 = -1.0;
      v7 = -1.0;
    }

    v20 = &qword_2813CF000;
  }

  if (v12 != -1.0 && v15 != -1.0)
  {
    v25 = v20;
    v26 = a2 - v14;
    if ((a2 - v14) < 0x12Du)
    {
      v28 = sub_24543F63C(v14, a2, 0x78uLL, v12, 3.0, 15.0);
      v12 = v28;
    }

    else
    {
      v27 = v25[4];
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
      {
        *v60 = 67109120;
        *&v60[4] = v26;
        _os_log_debug_impl(&dword_245396000, v27, OS_LOG_TYPE_DEBUG, "HeloEstimator,GemHeloEstimator::getBestHorizontal, WiF fix age exceeds max fix age, %d", v60, 8u);
      }

      v53 = 0;
      v46 = 0;
      v52 = 0;
      *&v60[12] = 0;
      v64 = 0;
      *&v60[4] = 0;
      v63 = *v60;
      v57 = 0;
      v28 = -1.0;
      v51 = -1.0;
      v15 = -1.0;
      v12 = -1.0;
    }

    v55 = v28;
    v56 = v28;
    v20 = v25;
  }

  if (v16 != -1.0 && v54 != -1.0)
  {
    v29 = a2 - v21;
    if ((a2 - v21) < 0x12Du)
    {
      v16 = sub_24543F63C(v21, a2, 0x78uLL, v16, 3.0, 15.0);
      v17 = v16;
      v18 = v16;
    }

    else
    {
      v30 = v20[4];
      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
      {
        *v60 = 67109120;
        *&v60[4] = v29;
        _os_log_debug_impl(&dword_245396000, v30, OS_LOG_TYPE_DEBUG, "HeloEstimator,GemHeloEstimator::getBestHorizontal, Cell fix age exceeds max fix age, %d", v60, 8u);
      }

      v22 = 0;
      v43 = 0;
      v19 = 0;
      *&v60[12] = 0;
      *&v60[4] = 0;
      v61 = *v60;
      v62 = 0;
      v45 = 0;
      v42 = -1.0;
      v16 = -1.0;
      v17 = -1.0;
      v18 = -1.0;
    }
  }

  v31 = v20[4];
  if (v7 != -1.0 && v11 != -1.0)
  {
    goto LABEL_26;
  }

  if (os_log_type_enabled(v20[4], OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_debug_impl(&dword_245396000, v31, OS_LOG_TYPE_DEBUG, "HeloEstimator,GemHeloEstimator::getBestHorizontal, GNSS fix not available", buf, 2u);
  }

  if (v12 != -1.0 && v15 != -1.0 && v57 >= 0x1A)
  {
    v31 = v20[4];
    goto LABEL_45;
  }

  if (v16 == -1.0 || v45 < 0x1A)
  {
    v31 = v20[4];
    if (v12 == -1.0 || v57 < 0x1A)
    {
LABEL_26:
      v32 = &v60[4];
      v33 = os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG);
      if (v12 == -1.0 || v15 == -1.0 || v57 < 0x1A)
      {
        if (v33)
        {
          *buf = 134217984;
          v59 = v7;
          _os_log_debug_impl(&dword_245396000, v31, OS_LOG_TYPE_DEBUG, "HeloEstimator,GemHeloEstimator::getBestHorizontal, GNSS HUNC before scaling,%f", buf, 0xCu);
          v31 = v20[4];
        }

        v16 = fmax(v7, 25.0);
        if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
        {
          *buf = 134217984;
          v59 = v16;
          _os_log_debug_impl(&dword_245396000, v31, OS_LOG_TYPE_DEBUG, "HeloEstimator,GemHeloEstimator::getBestHorizontal, GNSS HUNC after scaling,%f", buf, 0xCu);
          v31 = v20[4];
        }

        *v60 = v65;
        *&v60[16] = v66;
        if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
        {
          *buf = 0;
          _os_log_debug_impl(&dword_245396000, v31, OS_LOG_TYPE_DEBUG, "HeloEstimator,GemHeloEstimator::getBestHorizontal, returing GNSS xy fix", buf, 2u);
        }

        goto LABEL_54;
      }

      if (v33)
      {
        *buf = 0;
        _os_log_debug_impl(&dword_245396000, v31, OS_LOG_TYPE_DEBUG, "HeloEstimator,GemHeloEstimator::getBestHorizontal, both GNSS and WiFi xy available", buf, 2u);
      }

      if (v7 < v12)
      {
        v34 = v20[4];
        if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
        {
          *buf = 134217984;
          v59 = v7;
          _os_log_debug_impl(&dword_245396000, v34, OS_LOG_TYPE_DEBUG, "HeloEstimator,GemHeloEstimator::getBestHorizontal, GNSS HUNC before scaling,%f", buf, 0xCu);
          v34 = v20[4];
        }

        v16 = fmax(v7, 25.0);
        if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
        {
          *buf = 134217984;
          v59 = v16;
          _os_log_debug_impl(&dword_245396000, v34, OS_LOG_TYPE_DEBUG, "HeloEstimator,GemHeloEstimator::getBestHorizontal, GNSS HUNC after scaling,%f", buf, 0xCu);
          v34 = v20[4];
        }

        *v60 = v65;
        *&v60[16] = v66;
        if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
        {
          *buf = 0;
          _os_log_debug_impl(&dword_245396000, v34, OS_LOG_TYPE_DEBUG, "HeloEstimator,GemHeloEstimator::getBestHorizontal, returing GNSS xy fix, gnss unc < WiFi unc", buf, 2u);
        }

        v6 = 1;
LABEL_54:
        v17 = v16;
        v18 = v16;
        v35 = v47;
        v19 = v49;
        v13 = v44;
        v22 = v50;
        v36 = v48;
LABEL_64:
        v38 = v36;
        goto LABEL_65;
      }

      *v60 = v63;
      *&v60[16] = v64;
      v39 = v20[4];
      v6 = 2;
      if (os_log_type_enabled(v39, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_debug_impl(&dword_245396000, v39, OS_LOG_TYPE_DEBUG, "HeloEstimator,GemHeloEstimator::getBestHorizontal, returing WiFi xy fix, WiFi unc < gnss unc", buf, 2u);
      }

      v16 = v12;
      v18 = v55;
      v17 = v56;
      v35 = v51;
      v19 = v52;
      v22 = v53;
LABEL_63:
      v36 = v57;
      goto LABEL_64;
    }

LABEL_45:
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_debug_impl(&dword_245396000, v31, OS_LOG_TYPE_DEBUG, "HeloEstimator,GemHeloEstimator::getBestHorizontal, returning med/high reliability WiFi xy", buf, 2u);
    }

    v32 = &v63 + 4;
    v16 = v12;
    v18 = v55;
    v17 = v56;
    v35 = v51;
    v19 = v52;
    v22 = v53;
    v6 = v46;
    goto LABEL_63;
  }

  v37 = v20[4];
  if (os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_debug_impl(&dword_245396000, v37, OS_LOG_TYPE_DEBUG, "HeloEstimator,GemHeloEstimator::getBestHorizontal, returning high reliability Cell xy", buf, 2u);
  }

  v32 = &v61 + 4;
  v13 = v41;
  v6 = v43;
  v35 = v42;
  v38 = v45;
LABEL_65:
  *a3 = *v32;
  v40 = a2;
  *(a3 + 16) = v16;
  *(a3 + 24) = v17;
  *(a3 + 32) = v18;
  *(a3 + 40) = v35;
  *(a3 + 48) = v38;
  *(a3 + 56) = v19;
  *(a3 + 60) = v13;
  *(a3 + 64) = v22;
  *(a3 + 72) = v40;
  *(a3 + 80) = v6;
  *(a3 + 88) = v40;
}

void sub_245440064(int *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = a2;
  v53 = *MEMORY[0x277D85DE8];
  v6 = *(a1 + 3);
  v8 = *(a1 + 11);
  v7 = *(a1 + 12);
  v9 = a1[26];
  v10 = a1[27];
  v48 = *a1;
  v49 = a1[34];
  v11 = *(a1 + 20);
  v12 = *(a1 + 27);
  v14 = *(a1 + 28);
  v13 = *(a1 + 29);
  v15 = a1[60];
  v16 = a1[61];
  v17 = *(a1 + 31);
  v46 = a1[68];
  v18 = *(a1 + 37);
  v19 = *(a1 + 44);
  v20 = *(a1 + 46);
  v47 = *(a1 + 45);
  v50 = a1[94];
  v21 = a1[95];
  v45 = *(a1 + 48);
  if (v6 != -1.0 && v7 != -1.0)
  {
    v43 = v17;
    v44 = v15;
    v22 = *(a1 + 44);
    v23 = v16;
    v24 = a1[95];
    v25 = v10;
    v26 = a2 - *(a1 + 10);
    if ((a2 - *(a1 + 40)) < 0x12Du)
    {
      v7 = sub_24543F63C(*(a1 + 14), a2, 0x12CuLL, v7, 0.5, 0.5);
      v10 = v25;
      v21 = v24;
      v16 = v23;
    }

    else
    {
      v27 = qword_2813CF020;
      v7 = -1.0;
      v8 = 0;
      if (os_log_type_enabled(qword_2813CF020, OS_LOG_TYPE_DEBUG))
      {
        *buf = 67109120;
        v52 = v26;
        _os_log_debug_impl(&dword_245396000, v27, OS_LOG_TYPE_DEBUG, "HeloEstimator,GemHeloEstimator::getBestVertical, GNSS fix age exceeds max fix age, %d", buf, 8u);
      }

      v48 = 0;
      v9 = 0;
      v10 = v25;
      v21 = v24;
      v16 = v23;
      v3 = a2;
    }

    LOWORD(v19) = v22;
    v15 = v44;
    v17 = v43;
  }

  if (v11 != -1.0 && v13 != -1.0)
  {
    v28 = v3 - v12;
    if (v28 < 0x12Du)
    {
      v13 = sub_24543F63C(v17, v3, 0x12CuLL, v13, 0.5, 0.5);
    }

    else
    {
      v29 = v19;
      v30 = qword_2813CF020;
      v13 = -1.0;
      v14 = 0;
      if (os_log_type_enabled(qword_2813CF020, OS_LOG_TYPE_DEBUG))
      {
        *buf = 67109120;
        v52 = v28;
        _os_log_debug_impl(&dword_245396000, v30, OS_LOG_TYPE_DEBUG, "HeloEstimator,GemHeloEstimator::getBestVertical, WiFi fix age exceeds max fix age, %d", buf, 8u);
      }

      v49 = 0;
      LOWORD(v19) = v29;
      v15 = 0;
    }
  }

  if (v18 != -1.0 && v20 != -1.0)
  {
    v31 = v3 - v19;
    if (v31 < 0x12Du)
    {
      v20 = sub_24543F63C(v45, v3, 0x12CuLL, v20, 0.5, 0.5);
    }

    else
    {
      v32 = qword_2813CF020;
      v20 = -1.0;
      v47 = 0;
      if (os_log_type_enabled(qword_2813CF020, OS_LOG_TYPE_DEBUG))
      {
        *buf = 67109120;
        v52 = v31;
        _os_log_debug_impl(&dword_245396000, v32, OS_LOG_TYPE_DEBUG, "HeloEstimator,GemHeloEstimator::getBestVertical, Cell fix age exceeds max fix age, %d", buf, 8u);
      }

      v50 = 0;
      v46 = 0;
    }
  }

  if (v13 != -1.0 && v15 >= 0x1A)
  {
    v33 = qword_2813CF020;
    if (os_log_type_enabled(qword_2813CF020, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_debug_impl(&dword_245396000, v33, OS_LOG_TYPE_DEBUG, "HeloEstimator,GemHeloEstimator::getBestVertical,WiFi fix available", buf, 2u);
    }

    if (v13 < 20.0 || v7 == -1.0)
    {
      v34 = qword_2813CF020;
      if (os_log_type_enabled(qword_2813CF020, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        v35 = "HeloEstimator, getBestVertical returning wifi Z,wifi z unc <20 meters,no gnss cross check";
        goto LABEL_52;
      }

LABEL_46:
      v39 = v3;
      v41 = v49;
      goto LABEL_50;
    }

    if (v13 < v7)
    {
      v34 = qword_2813CF020;
      if (os_log_type_enabled(qword_2813CF020, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        v35 = "HeloEstimator, getBestVertical returning wifi Z,wifi Z unc >20 meters";
LABEL_52:
        _os_log_debug_impl(&dword_245396000, v34, OS_LOG_TYPE_DEBUG, v35, buf, 2u);
        goto LABEL_46;
      }

      goto LABEL_46;
    }
  }

  v13 = -1.0;
  v15 = v50;
  if (v20 != -1.0 && v50 >= 0x1A)
  {
    v36 = qword_2813CF020;
    if (os_log_type_enabled(qword_2813CF020, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_debug_impl(&dword_245396000, v36, OS_LOG_TYPE_DEBUG, "HeloEstimator,GemHeloEstimator::getBestVertical,Cell fix available", buf, 2u);
    }

    if (v20 < 20.0 || v7 == -1.0)
    {
      v37 = qword_2813CF020;
      if (os_log_type_enabled(qword_2813CF020, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        v38 = "HeloEstimator, getBestVertical returning cell Z,z unc < altitude threshold and no gnss";
        goto LABEL_54;
      }

LABEL_48:
      v14 = v47;
      v39 = v3;
      v13 = v20;
      v16 = v21;
      v41 = v46;
      goto LABEL_50;
    }

    if (v20 < v7)
    {
      v37 = qword_2813CF020;
      if (os_log_type_enabled(qword_2813CF020, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        v38 = "HeloEstimator, getBestVertical returning cell Z,z unc < gnss unc";
LABEL_54:
        _os_log_debug_impl(&dword_245396000, v37, OS_LOG_TYPE_DEBUG, v38, buf, 2u);
        goto LABEL_48;
      }

      goto LABEL_48;
    }
  }

  if (*(a1 + 12) == -1.0)
  {
    v15 = 0;
    v39 = 0;
    v41 = 0;
    v14 = 0;
    v16 = v10;
  }

  else
  {
    v39 = v3;
    v40 = qword_2813CF020;
    if (os_log_type_enabled(qword_2813CF020, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_debug_impl(&dword_245396000, v40, OS_LOG_TYPE_DEBUG, "HeloEstimator, getBestVertical returning gnss Z", buf, 2u);
    }

    v14 = v8;
    v13 = v7;
    v15 = v9;
    v16 = v10;
    v41 = v48;
  }

LABEL_50:
  *a3 = v14;
  *(a3 + 8) = v13;
  *(a3 + 16) = v15;
  *(a3 + 20) = v16;
  *(a3 + 24) = v39;
  *(a3 + 32) = v41;
  *(a3 + 40) = v39;
}

BOOL sub_245440634(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v36 = *MEMORY[0x277D85DE8];
  if (*a2)
  {
    v3 = *(a1 + 24);
    v4 = *(a1 + 96);
    if (v3 == -1.0 || v4 == -1.0)
    {
      v6 = qword_2813CF020;
      result = os_log_type_enabled(qword_2813CF020, OS_LOG_TYPE_DEBUG);
      if (result)
      {
        LOWORD(v31) = 0;
        v8 = "HeloEstimator, isGnssFixReadyForEarlyReturn no GNSS fix available, returning";
LABEL_27:
        v16 = v6;
        v17 = 2;
        goto LABEL_28;
      }
    }

    else
    {
      v11 = *(a1 + 112);
      v12 = sub_24543F63C(*(a1 + 80), a3, 0x78uLL, v3, 3.0, 15.0);
      v13 = sub_24543F63C(v11, a3, 0x12CuLL, v4, 0.5, 0.5);
      if ((a3 - *(a2 + 32)) > 6)
      {
        v14 = *(a2 + 40);
        if (v14 > 3)
        {
          v18 = v13;
          v19 = fmax(v12, 5.0);
          if (3 * v19 >= v19)
          {
            v21 = *(a2 + 8);
            if (v21 <= 0.0)
            {
              v23 = 33.0;
            }

            else
            {
              v22 = (v21 + 0.5) * 0.671591672;
              v23 = 33.0;
              if (v22 <= 33.0)
              {
                v23 = (v21 + 0.5) * 0.671591672;
                if (v22 < 4.0)
                {
                  v23 = 4.0;
                }
              }

              v24 = qword_2813CF020;
              if (os_log_type_enabled(qword_2813CF020, OS_LOG_TYPE_DEBUG))
              {
                v31 = 134218240;
                *v32 = v21;
                *&v32[8] = 2048;
                v33 = v23;
                _os_log_debug_impl(&dword_245396000, v24, OS_LOG_TYPE_DEBUG, "HeloEstimator, isGnssFixReadyForEarlyReturn,requested,%f,hUnc1Sigma,%f", &v31, 0x16u);
              }
            }

            v25 = *(a2 + 16);
            if (v25 == 0.0)
            {
              v27 = 100.0;
            }

            else
            {
              v26 = (v25 + 0.5) * 1.02669405;
              v27 = 100.0;
              if (v26 <= 100.0)
              {
                v27 = (v25 + 0.5) * 1.02669405;
                if (v26 < *(a2 + 24))
                {
                  v27 = *(a2 + 24);
                }
              }

              v28 = qword_2813CF020;
              if (os_log_type_enabled(qword_2813CF020, OS_LOG_TYPE_DEBUG))
              {
                v31 = 134218240;
                *v32 = v25;
                *&v32[8] = 2048;
                v33 = v27;
                _os_log_debug_impl(&dword_245396000, v28, OS_LOG_TYPE_DEBUG, "HeloEstimator, isGnssFixReadyForEarlyReturn,requested,%f,vUnc1Sigma,%f", &v31, 0x16u);
              }
            }

            v29 = v23 * 3.0;
            if (v27 <= v23 * 3.0)
            {
              v29 = v27;
            }

            if (v18 >= v29)
            {
              v30 = sqrt(v19 * v19 + v19 * v19) / 1.41421356;
              v6 = qword_2813CF020;
              if (os_log_type_enabled(qword_2813CF020, OS_LOG_TYPE_DEBUG))
              {
                v31 = 134284033;
                *v32 = v30;
                *&v32[8] = 2049;
                v33 = v19;
                v34 = 2049;
                v35 = v19;
                _os_log_debug_impl(&dword_245396000, v6, OS_LOG_TYPE_DEBUG, "HeloEstimator, isGnssFixReadyForEarlyReturn,drms,%{private}f,smj,%{private}f,smn,%{private}f", &v31, 0x20u);
                v6 = qword_2813CF020;
              }

              result = os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG);
              if (v30 > v23)
              {
                if (result)
                {
                  LOWORD(v31) = 0;
                  v8 = "HeloEstimator, isGnssFixReadyForEarlyReturn, horizontal criteria not met";
                  goto LABEL_27;
                }
              }

              else
              {
                if (result)
                {
                  LOWORD(v31) = 0;
                  _os_log_debug_impl(&dword_245396000, v6, OS_LOG_TYPE_DEBUG, "HeloEstimator, isGnssFixReadyForEarlyReturn, returning true", &v31, 2u);
                }

                return 1;
              }
            }

            else
            {
              v6 = qword_2813CF020;
              result = os_log_type_enabled(qword_2813CF020, OS_LOG_TYPE_DEBUG);
              if (result)
              {
                LOWORD(v31) = 0;
                v8 = "HeloEstimator, isGnssFixReadyForEarlyReturn, vertical criteria not met";
                goto LABEL_27;
              }
            }

            return result;
          }

          v20 = qword_2813CF020;
          result = os_log_type_enabled(qword_2813CF020, OS_LOG_TYPE_DEBUG);
          if (!result)
          {
            return result;
          }

          v31 = 67109376;
          *v32 = v19;
          *&v32[4] = 1024;
          *&v32[6] = v19;
          v8 = "HeloEstimator, isGnssFixReadyForEarlyReturn,semiMajor,%hhu,semiMinor,%hhu,POS Error ellipse is too elongated";
          v16 = v20;
          v17 = 14;
        }

        else
        {
          v15 = qword_2813CF018;
          result = os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_DEBUG);
          if (!result)
          {
            return result;
          }

          v31 = 67109120;
          *v32 = v14;
          v8 = "HeloEstimator, isGnssFixReadyForEarlyReturn number of GNSS fixes received < 2, returning %d";
          v16 = v15;
          v17 = 8;
        }

LABEL_28:
        _os_log_debug_impl(&dword_245396000, v16, OS_LOG_TYPE_DEBUG, v8, &v31, v17);
        return 0;
      }

      v6 = qword_2813CF018;
      result = os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_DEBUG);
      if (result)
      {
        LOWORD(v31) = 0;
        v8 = "HeloEstimator, isGnssFixReadyForEarlyReturn too early to return in session, returning";
        goto LABEL_27;
      }
    }
  }

  else
  {
    v6 = qword_2813CF020;
    result = os_log_type_enabled(qword_2813CF020, OS_LOG_TYPE_DEBUG);
    if (result)
    {
      LOWORD(v31) = 0;
      v8 = "HeloEstimator, isGnssFixReadyForEarlyReturn early return not enabled, returning";
      goto LABEL_27;
    }
  }

  return result;
}

void sub_245440B0C(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v28 = *MEMORY[0x277D85DE8];
  *a3 = 0;
  *(a3 + 8) = 0;
  v4 = (a3 + 8);
  *(a3 + 16) = 0;
  __asm { FMOV            V0.2D, #-1.0 }

  *(a3 + 24) = _Q0;
  *(a3 + 40) = _Q0;
  *(a3 + 56) = 0;
  *(a3 + 64) = 0;
  *(a3 + 72) = 0;
  *(a3 + 80) = 0;
  *(a3 + 88) = 0;
  *(a3 + 96) = 0xBFF0000000000000;
  *(a3 + 104) = 0;
  *(a3 + 112) = 0;
  *(a3 + 120) = 0;
  *(a3 + 128) = 0;
  *(a3 + 136) = 0;
  *(a3 + 144) = 0;
  *(a3 + 152) = 0;
  *(a3 + 160) = 0;
  v10 = *(a1 + 20);
  *v27 = *(a1 + 4);
  v11 = *(a1 + 24);
  *&v27[16] = v10;
  if (v11 == -1.0 || (v12 = *(a1 + 96), v12 == -1.0))
  {
    v24 = qword_2813CF020;
    if (os_log_type_enabled(qword_2813CF020, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_debug_impl(&dword_245396000, v24, OS_LOG_TYPE_DEBUG, "HeloEstimator, isGnssFixReadyForEarlyReturn no GNSS fix available, returning", buf, 2u);
    }
  }

  else
  {
    v14 = *(a1 + 48);
    v15 = *(a1 + 128);
    v16 = *(a1 + 124);
    v17 = *(a1 + 112);
    v18 = *(a1 + 88);
    v20 = *(a1 + 72);
    v19 = *(a1 + 80);
    v21 = *(a1 + 104);
    v25 = *(a1 + 56);
    v22 = fmax(sub_24543F63C(v19, a2, 0x78uLL, v11, 3.0, 15.0), 25.0);
    v23 = sub_24543F63C(v17, a2, 0x12CuLL, v12, 0.5, 0.5);
    *v4 = *&v27[4];
    *(a3 + 24) = v22;
    *(a3 + 32) = v22;
    *(a3 + 40) = v22;
    *(a3 + 48) = v14;
    *(a3 + 56) = v25;
    *(a3 + 72) = v20;
    *(a3 + 80) = v19;
    *(a3 + 144) = v15;
    *(a3 + 88) = v18;
    *(a3 + 96) = v23;
    *(a3 + 104) = v21;
    *(a3 + 112) = v17;
    *(a3 + 160) = v15;
    *(a3 + 136) = 1;
    *(a3 + 140) = v16;
    *(a3 + 152) = 1;
    *(a3 + 156) = v16;
  }
}

uint64_t sub_245440CF0(uint64_t a1, _DWORD *a2)
{
  v4 = sub_245446038(a1);
  v5 = *(a1 + 16);
  if (*(a1 + 16))
  {
    v6 = *(a1 + 8);
    v7 = *(a1 + 12);
    LODWORD(v8) = *(a1 + 16);
LABEL_5:
    sub_245445D98(v8, v6, v7, "asn1PD_SupportedWcdmaInfo");
    return v5;
  }

  v9 = v4;
  *a2 = sub_245446038(a1);
  v5 = *(a1 + 16);
  if (*(a1 + 16))
  {
    v6 = *(a1 + 8);
    v7 = *(a1 + 12);
    LODWORD(v8) = *(a1 + 16);
    goto LABEL_5;
  }

  if (!v9)
  {
    return 0;
  }

  v8 = sub_245446F9C(a1);
  v5 = v8;
  if (v8)
  {
    v6 = *(a1 + 8);
    v7 = *(a1 + 12);
    goto LABEL_5;
  }

  return v5;
}

uint64_t sub_245440DA8(uint64_t a1, _DWORD *a2)
{
  *a2 = sub_245446038(a1);
  v4 = *(a1 + 16);
  if (*(a1 + 16))
  {
    v5 = *(a1 + 8);
    v6 = *(a1 + 12);
    v7 = *(a1 + 16);
LABEL_33:
    sub_245445D98(v7, v5, v6, "asn1PD_SupportedWLANApsChannel11a");
    return v4;
  }

  a2[1] = sub_245446038(a1);
  v4 = *(a1 + 16);
  if (*(a1 + 16))
  {
    v5 = *(a1 + 8);
    v6 = *(a1 + 12);
    v7 = *(a1 + 16);
    goto LABEL_33;
  }

  a2[2] = sub_245446038(a1);
  v4 = *(a1 + 16);
  if (*(a1 + 16))
  {
    v5 = *(a1 + 8);
    v6 = *(a1 + 12);
    v7 = *(a1 + 16);
    goto LABEL_33;
  }

  a2[3] = sub_245446038(a1);
  v4 = *(a1 + 16);
  if (*(a1 + 16))
  {
    v5 = *(a1 + 8);
    v6 = *(a1 + 12);
    v7 = *(a1 + 16);
    goto LABEL_33;
  }

  a2[4] = sub_245446038(a1);
  v4 = *(a1 + 16);
  if (*(a1 + 16))
  {
    v5 = *(a1 + 8);
    v6 = *(a1 + 12);
    v7 = *(a1 + 16);
    goto LABEL_33;
  }

  a2[5] = sub_245446038(a1);
  v4 = *(a1 + 16);
  if (*(a1 + 16))
  {
    v5 = *(a1 + 8);
    v6 = *(a1 + 12);
    v7 = *(a1 + 16);
    goto LABEL_33;
  }

  a2[6] = sub_245446038(a1);
  v4 = *(a1 + 16);
  if (*(a1 + 16))
  {
    v5 = *(a1 + 8);
    v6 = *(a1 + 12);
    v7 = *(a1 + 16);
    goto LABEL_33;
  }

  a2[7] = sub_245446038(a1);
  v4 = *(a1 + 16);
  if (*(a1 + 16))
  {
    v5 = *(a1 + 8);
    v6 = *(a1 + 12);
    v7 = *(a1 + 16);
    goto LABEL_33;
  }

  a2[8] = sub_245446038(a1);
  v4 = *(a1 + 16);
  if (*(a1 + 16))
  {
    v5 = *(a1 + 8);
    v6 = *(a1 + 12);
    v7 = *(a1 + 16);
    goto LABEL_33;
  }

  a2[9] = sub_245446038(a1);
  v4 = *(a1 + 16);
  if (*(a1 + 16))
  {
    v5 = *(a1 + 8);
    v6 = *(a1 + 12);
    v7 = *(a1 + 16);
    goto LABEL_33;
  }

  a2[10] = sub_245446038(a1);
  v4 = *(a1 + 16);
  if (*(a1 + 16))
  {
    v5 = *(a1 + 8);
    v6 = *(a1 + 12);
    v7 = *(a1 + 16);
    goto LABEL_33;
  }

  a2[11] = sub_245446038(a1);
  v4 = *(a1 + 16);
  if (*(a1 + 16))
  {
    v5 = *(a1 + 8);
    v6 = *(a1 + 12);
    v7 = *(a1 + 16);
    goto LABEL_33;
  }

  a2[12] = sub_245446038(a1);
  v4 = *(a1 + 16);
  if (*(a1 + 16))
  {
    v5 = *(a1 + 8);
    v6 = *(a1 + 12);
    v7 = *(a1 + 16);
    goto LABEL_33;
  }

  a2[13] = sub_245446038(a1);
  v4 = *(a1 + 16);
  if (*(a1 + 16))
  {
    v5 = *(a1 + 8);
    v6 = *(a1 + 12);
    v7 = *(a1 + 16);
    goto LABEL_33;
  }

  a2[14] = sub_245446038(a1);
  v4 = *(a1 + 16);
  if (*(a1 + 16))
  {
    v5 = *(a1 + 8);
    v6 = *(a1 + 12);
    v7 = *(a1 + 16);
    goto LABEL_33;
  }

  a2[15] = sub_245446038(a1);
  v4 = *(a1 + 16);
  if (*(a1 + 16))
  {
    v5 = *(a1 + 8);
    v6 = *(a1 + 12);
    v7 = *(a1 + 16);
    goto LABEL_33;
  }

  return v4;
}

uint64_t sub_245441094(uint64_t a1, _DWORD *a2)
{
  *a2 = sub_245446038(a1);
  v4 = *(a1 + 16);
  if (*(a1 + 16))
  {
    v5 = *(a1 + 8);
    v6 = *(a1 + 12);
    v7 = *(a1 + 16);
LABEL_29:
    sub_245445D98(v7, v5, v6, "asn1PD_SupportedWLANApsChannel11bg");
    return v4;
  }

  a2[1] = sub_245446038(a1);
  v4 = *(a1 + 16);
  if (*(a1 + 16))
  {
    v5 = *(a1 + 8);
    v6 = *(a1 + 12);
    v7 = *(a1 + 16);
    goto LABEL_29;
  }

  a2[2] = sub_245446038(a1);
  v4 = *(a1 + 16);
  if (*(a1 + 16))
  {
    v5 = *(a1 + 8);
    v6 = *(a1 + 12);
    v7 = *(a1 + 16);
    goto LABEL_29;
  }

  a2[3] = sub_245446038(a1);
  v4 = *(a1 + 16);
  if (*(a1 + 16))
  {
    v5 = *(a1 + 8);
    v6 = *(a1 + 12);
    v7 = *(a1 + 16);
    goto LABEL_29;
  }

  a2[4] = sub_245446038(a1);
  v4 = *(a1 + 16);
  if (*(a1 + 16))
  {
    v5 = *(a1 + 8);
    v6 = *(a1 + 12);
    v7 = *(a1 + 16);
    goto LABEL_29;
  }

  a2[5] = sub_245446038(a1);
  v4 = *(a1 + 16);
  if (*(a1 + 16))
  {
    v5 = *(a1 + 8);
    v6 = *(a1 + 12);
    v7 = *(a1 + 16);
    goto LABEL_29;
  }

  a2[6] = sub_245446038(a1);
  v4 = *(a1 + 16);
  if (*(a1 + 16))
  {
    v5 = *(a1 + 8);
    v6 = *(a1 + 12);
    v7 = *(a1 + 16);
    goto LABEL_29;
  }

  a2[7] = sub_245446038(a1);
  v4 = *(a1 + 16);
  if (*(a1 + 16))
  {
    v5 = *(a1 + 8);
    v6 = *(a1 + 12);
    v7 = *(a1 + 16);
    goto LABEL_29;
  }

  a2[8] = sub_245446038(a1);
  v4 = *(a1 + 16);
  if (*(a1 + 16))
  {
    v5 = *(a1 + 8);
    v6 = *(a1 + 12);
    v7 = *(a1 + 16);
    goto LABEL_29;
  }

  a2[9] = sub_245446038(a1);
  v4 = *(a1 + 16);
  if (*(a1 + 16))
  {
    v5 = *(a1 + 8);
    v6 = *(a1 + 12);
    v7 = *(a1 + 16);
    goto LABEL_29;
  }

  a2[10] = sub_245446038(a1);
  v4 = *(a1 + 16);
  if (*(a1 + 16))
  {
    v5 = *(a1 + 8);
    v6 = *(a1 + 12);
    v7 = *(a1 + 16);
    goto LABEL_29;
  }

  a2[11] = sub_245446038(a1);
  v4 = *(a1 + 16);
  if (*(a1 + 16))
  {
    v5 = *(a1 + 8);
    v6 = *(a1 + 12);
    v7 = *(a1 + 16);
    goto LABEL_29;
  }

  a2[12] = sub_245446038(a1);
  v4 = *(a1 + 16);
  if (*(a1 + 16))
  {
    v5 = *(a1 + 8);
    v6 = *(a1 + 12);
    v7 = *(a1 + 16);
    goto LABEL_29;
  }

  a2[13] = sub_245446038(a1);
  v4 = *(a1 + 16);
  if (*(a1 + 16))
  {
    v5 = *(a1 + 8);
    v6 = *(a1 + 12);
    v7 = *(a1 + 16);
    goto LABEL_29;
  }

  return v4;
}

uint64_t sub_245441328(uint64_t a1, uint64_t a2)
{
  v4 = sub_245446038(a1);
  v5 = *(a1 + 16);
  v40 = 0;
  if (v5)
  {
    v6 = *(a1 + 8);
    v7 = *(a1 + 12);
    v8 = v5;
LABEL_7:
    sub_245445D98(v8, v6, v7, "asn1PD_SupportedWLANApsList");
    return v5;
  }

  v9 = v4;
  *a2 = sub_245446038(a1);
  v5 = *(a1 + 16);
  if (*(a1 + 16))
  {
    v6 = *(a1 + 8);
    v7 = *(a1 + 12);
    v8 = *(a1 + 16);
    goto LABEL_7;
  }

  *(a2 + 4) = sub_245446038(a1);
  LOBYTE(v5) = *(a1 + 16);
  if (v5)
  {
    v6 = *(a1 + 8);
    v7 = *(a1 + 12);
    v8 = *(a1 + 16);
    goto LABEL_7;
  }

  v34 = v9;
  v5 = sub_245446150(a1, 1, 0x80u, &v40);
  v11 = (a2 + 8);
  sub_2454418BC((a2 + 8));
  if (!v5 && v40)
  {
    v12 = 0;
    while (1)
    {
      v35 = 0;
      v37 = 0;
      v38 = 0;
      __p = 0;
      v39 = -1;
      v13 = sub_245446038(a1);
      v14 = *(a1 + 16);
      if (*(a1 + 16) || (v15 = v13, v35 = 48, sub_245446614(a1, 0x30u, &__p, 0), v14 = *(a1 + 16), *(a1 + 16)))
      {
        sub_245445D98(*(a1 + 16), *(a1 + 8), *(a1 + 12), "asn1PD_SupportedWLANApData");
        goto LABEL_28;
      }

      LOBYTE(v41) = 0;
      v16 = sub_245446038(a1);
      v14 = *(a1 + 16);
      if (*(a1 + 16))
      {
        break;
      }

      if (v16)
      {
        v17 = sub_24544742C(a1, &v41);
      }

      else
      {
        v17 = sub_245446150(a1, 0, 2u, &v41);
      }

      v14 = v17;
      if (v17)
      {
        sub_245445D98(v17, *(a1 + 8), *(a1 + 12), "asn1PD_apDevType");
        goto LABEL_27;
      }

      if (v41 >= 3u)
      {
        v14 = 4;
        *(a1 + 16) = 4;
        sub_245445D98(4u, *(a1 + 8), *(a1 + 12), "asn1PD_apDevType");
        goto LABEL_27;
      }

      v39 = v41;
      if (v15)
      {
        v18 = sub_245446F9C(a1);
        v14 = v18;
        if (v18)
        {
          sub_245445D98(v18, *(a1 + 8), *(a1 + 12), "asn1PD_SupportedWLANApData");
        }
      }

      else
      {
        v14 = 0;
      }

LABEL_28:
      v20 = *(a2 + 16);
      v19 = *(a2 + 24);
      if (v20 >= v19)
      {
        v22 = 0xCCCCCCCCCCCCCCCDLL * ((v20 - *v11) >> 3);
        v23 = v22 + 1;
        if (v22 + 1 > 0x666666666666666)
        {
          sub_2453A631C();
        }

        v24 = 0xCCCCCCCCCCCCCCCDLL * ((v19 - *v11) >> 3);
        if (2 * v24 > v23)
        {
          v23 = 2 * v24;
        }

        if (v24 >= 0x333333333333333)
        {
          v25 = 0x666666666666666;
        }

        else
        {
          v25 = v23;
        }

        v45 = a2 + 8;
        if (v25)
        {
          if (v25 <= 0x666666666666666)
          {
            operator new();
          }

          sub_2453AABB4();
        }

        v26 = 40 * v22;
        v41 = 0;
        v42 = v26;
        v43 = v26;
        v44 = 0;
        *v26 = v35;
        *(v26 + 16) = 0;
        *(v26 + 24) = 0;
        *(v26 + 8) = 0;
        sub_2453AE4E0((v26 + 8), __p, v37, v37 - __p);
        *(v26 + 32) = v39;
        v21 = v43 + 40;
        v43 += 40;
        v28 = *(a2 + 8);
        v27 = *(a2 + 16);
        v29 = v42 + v28 - v27;
        if (v28 != v27)
        {
          v30 = *(a2 + 8);
          v31 = v42 + v28 - v27;
          do
          {
            *v31 = *v30;
            *(v31 + 16) = 0;
            *(v31 + 24) = 0;
            *(v31 + 8) = 0;
            *(v31 + 8) = *(v30 + 8);
            *(v31 + 24) = *(v30 + 24);
            *(v30 + 8) = 0;
            *(v30 + 16) = 0;
            *(v30 + 24) = 0;
            *(v31 + 32) = *(v30 + 32);
            v30 += 40;
            v31 += 40;
          }

          while (v30 != v27);
          do
          {
            v32 = *(v28 + 8);
            if (v32)
            {
              *(v28 + 16) = v32;
              operator delete(v32);
            }

            v28 += 40;
          }

          while (v28 != v27);
          v28 = *v11;
          v21 = v43;
        }

        *(a2 + 8) = v29;
        *(a2 + 16) = v21;
        v33 = *(a2 + 24);
        *(a2 + 24) = v44;
        v43 = v28;
        v44 = v33;
        v41 = v28;
        v42 = v28;
        sub_245442BB8(&v41);
      }

      else
      {
        *v20 = v35;
        *(v20 + 16) = 0;
        *(v20 + 24) = 0;
        *(v20 + 8) = 0;
        sub_2453AE4E0((v20 + 8), __p, v37, v37 - __p);
        *(v20 + 32) = v39;
        v21 = v20 + 40;
        *(a2 + 16) = v20 + 40;
      }

      *(a2 + 16) = v21;
      if (v14)
      {
        sub_245445D98(v14, *(a1 + 8), *(a1 + 12), "asn1PD_SupportedWLANApsList");
        LOBYTE(v5) = v14;
      }

      if (__p)
      {
        v37 = __p;
        operator delete(__p);
      }

      if (v14)
      {
        return v5;
      }

      if (++v12 >= v40)
      {
        goto LABEL_57;
      }
    }

    sub_245445D98(*(a1 + 16), *(a1 + 8), *(a1 + 12), "asn1PD_apDevType");
LABEL_27:
    sub_245445D98(v14, *(a1 + 8), *(a1 + 12), "asn1PD_SupportedWLANApData");
    goto LABEL_28;
  }

  if (v5)
  {
    v6 = *(a1 + 8);
    v7 = *(a1 + 12);
    v8 = v5;
    goto LABEL_7;
  }

LABEL_57:
  if (*a2)
  {
    v8 = sub_245440DA8(a1, (a2 + 32));
    if (v8)
    {
      LOBYTE(v5) = v8;
      v6 = *(a1 + 8);
      v7 = *(a1 + 12);
      goto LABEL_7;
    }
  }

  if (*(a2 + 4))
  {
    v8 = sub_245441094(a1, (a2 + 96));
    if (v8)
    {
      LOBYTE(v5) = v8;
      v6 = *(a1 + 8);
      v7 = *(a1 + 12);
      goto LABEL_7;
    }
  }

  if (!v34)
  {
    LOBYTE(v5) = 0;
    return v5;
  }

  v8 = sub_245446F9C(a1);
  LOBYTE(v5) = v8;
  if (v8)
  {
    v6 = *(a1 + 8);
    v7 = *(a1 + 12);
    goto LABEL_7;
  }

  return v5;
}

void sub_245441880(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16)
{
  *(v16 + 16) = v17;
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2454418BC(uint64_t *a1)
{
  v2 = *a1;
  for (i = a1[1]; i != v2; i -= 40)
  {
    v4 = *(i - 32);
    if (v4)
    {
      *(i - 24) = v4;
      operator delete(v4);
    }
  }

  a1[1] = v2;
}

uint64_t sub_24544190C(uint64_t a1, _DWORD *a2)
{
  v4 = sub_245446038(a1);
  v5 = *(a1 + 16);
  if (*(a1 + 16))
  {
    v6 = *(a1 + 8);
    v7 = *(a1 + 12);
    LODWORD(v8) = *(a1 + 16);
LABEL_27:
    sub_245445D98(v8, v6, v7, "asn1PD_SupportedWLANInfo");
    return v5;
  }

  v9 = v4;
  *a2 = sub_245446038(a1);
  v5 = *(a1 + 16);
  if (*(a1 + 16))
  {
    v6 = *(a1 + 8);
    v7 = *(a1 + 12);
    LODWORD(v8) = *(a1 + 16);
    goto LABEL_27;
  }

  a2[1] = sub_245446038(a1);
  v5 = *(a1 + 16);
  if (*(a1 + 16))
  {
    v6 = *(a1 + 8);
    v7 = *(a1 + 12);
    LODWORD(v8) = *(a1 + 16);
    goto LABEL_27;
  }

  a2[2] = sub_245446038(a1);
  v5 = *(a1 + 16);
  if (*(a1 + 16))
  {
    v6 = *(a1 + 8);
    v7 = *(a1 + 12);
    LODWORD(v8) = *(a1 + 16);
    goto LABEL_27;
  }

  a2[3] = sub_245446038(a1);
  v5 = *(a1 + 16);
  if (*(a1 + 16))
  {
    v6 = *(a1 + 8);
    v7 = *(a1 + 12);
    LODWORD(v8) = *(a1 + 16);
    goto LABEL_27;
  }

  a2[4] = sub_245446038(a1);
  v5 = *(a1 + 16);
  if (*(a1 + 16))
  {
    v6 = *(a1 + 8);
    v7 = *(a1 + 12);
    LODWORD(v8) = *(a1 + 16);
    goto LABEL_27;
  }

  a2[5] = sub_245446038(a1);
  v5 = *(a1 + 16);
  if (*(a1 + 16))
  {
    v6 = *(a1 + 8);
    v7 = *(a1 + 12);
    LODWORD(v8) = *(a1 + 16);
    goto LABEL_27;
  }

  a2[6] = sub_245446038(a1);
  v5 = *(a1 + 16);
  if (*(a1 + 16))
  {
    v6 = *(a1 + 8);
    v7 = *(a1 + 12);
    LODWORD(v8) = *(a1 + 16);
    goto LABEL_27;
  }

  a2[7] = sub_245446038(a1);
  v5 = *(a1 + 16);
  if (*(a1 + 16))
  {
    v6 = *(a1 + 8);
    v7 = *(a1 + 12);
    LODWORD(v8) = *(a1 + 16);
    goto LABEL_27;
  }

  a2[8] = sub_245446038(a1);
  v5 = *(a1 + 16);
  if (*(a1 + 16))
  {
    v6 = *(a1 + 8);
    v7 = *(a1 + 12);
    LODWORD(v8) = *(a1 + 16);
    goto LABEL_27;
  }

  a2[9] = sub_245446038(a1);
  v5 = *(a1 + 16);
  if (*(a1 + 16))
  {
    v6 = *(a1 + 8);
    v7 = *(a1 + 12);
    LODWORD(v8) = *(a1 + 16);
    goto LABEL_27;
  }

  a2[10] = sub_245446038(a1);
  v5 = *(a1 + 16);
  if (*(a1 + 16))
  {
    v6 = *(a1 + 8);
    v7 = *(a1 + 12);
    LODWORD(v8) = *(a1 + 16);
    goto LABEL_27;
  }

  a2[11] = sub_245446038(a1);
  v5 = *(a1 + 16);
  if (*(a1 + 16))
  {
    v6 = *(a1 + 8);
    v7 = *(a1 + 12);
    LODWORD(v8) = *(a1 + 16);
    goto LABEL_27;
  }

  if (!v9)
  {
    return 0;
  }

  v8 = sub_245446F9C(a1);
  v5 = v8;
  if (!v8)
  {
    v6 = *(a1 + 8);
    v7 = *(a1 + 12);
    goto LABEL_27;
  }

  return v5;
}

uint64_t sub_245441BA4(uint64_t a1, _DWORD *a2)
{
  v4 = sub_245446038(a1);
  v5 = *(a1 + 16);
  if (*(a1 + 16))
  {
    v6 = *(a1 + 8);
    v7 = *(a1 + 12);
    LODWORD(v8) = *(a1 + 16);
LABEL_11:
    sub_245445D98(v8, v6, v7, "asn1PD_SupportedNetworkInformation");
    return v5;
  }

  v9 = v4;
  *a2 = sub_245446038(a1);
  v5 = *(a1 + 16);
  if (*(a1 + 16))
  {
    v6 = *(a1 + 8);
    v7 = *(a1 + 12);
    LODWORD(v8) = *(a1 + 16);
    goto LABEL_11;
  }

  a2[1] = sub_245446038(a1);
  v5 = *(a1 + 16);
  if (*(a1 + 16))
  {
    v6 = *(a1 + 8);
    v7 = *(a1 + 12);
    LODWORD(v8) = *(a1 + 16);
    goto LABEL_11;
  }

  a2[2] = sub_245446038(a1);
  v5 = *(a1 + 16);
  if (*(a1 + 16))
  {
    v6 = *(a1 + 8);
    v7 = *(a1 + 12);
    LODWORD(v8) = *(a1 + 16);
    goto LABEL_11;
  }

  a2[3] = sub_245446038(a1);
  v5 = *(a1 + 16);
  if (*(a1 + 16))
  {
    v6 = *(a1 + 8);
    v7 = *(a1 + 12);
    LODWORD(v8) = *(a1 + 16);
    goto LABEL_11;
  }

  if (*a2)
  {
    v8 = sub_24544190C(a1, a2 + 4);
    if (v8)
    {
      v5 = v8;
      v6 = *(a1 + 8);
      v7 = *(a1 + 12);
      goto LABEL_11;
    }
  }

  if (a2[1])
  {
    v8 = sub_245441328(a1, (a2 + 16));
    if (v8)
    {
      v5 = v8;
      v6 = *(a1 + 8);
      v7 = *(a1 + 12);
      goto LABEL_11;
    }
  }

  a2[54] = sub_245446038(a1);
  v5 = *(a1 + 16);
  if (*(a1 + 16))
  {
    v6 = *(a1 + 8);
    v7 = *(a1 + 12);
    LODWORD(v8) = *(a1 + 16);
    goto LABEL_11;
  }

  a2[55] = sub_245446038(a1);
  v5 = *(a1 + 16);
  if (*(a1 + 16))
  {
    v6 = *(a1 + 8);
    v7 = *(a1 + 12);
    LODWORD(v8) = *(a1 + 16);
    goto LABEL_11;
  }

  if (a2[2])
  {
    v8 = sub_245440CF0(a1, a2 + 56);
    if (v8)
    {
      v5 = v8;
      v6 = *(a1 + 8);
      v7 = *(a1 + 12);
      goto LABEL_11;
    }
  }

  a2[57] = sub_245446038(a1);
  v5 = *(a1 + 16);
  if (*(a1 + 16))
  {
    v6 = *(a1 + 8);
    v7 = *(a1 + 12);
    LODWORD(v8) = *(a1 + 16);
    goto LABEL_11;
  }

  a2[58] = sub_245446038(a1);
  v5 = *(a1 + 16);
  if (*(a1 + 16))
  {
    v6 = *(a1 + 8);
    v7 = *(a1 + 12);
    LODWORD(v8) = *(a1 + 16);
    goto LABEL_11;
  }

  a2[59] = sub_245446038(a1);
  v5 = *(a1 + 16);
  if (*(a1 + 16))
  {
    v6 = *(a1 + 8);
    v7 = *(a1 + 12);
    LODWORD(v8) = *(a1 + 16);
    goto LABEL_11;
  }

  a2[60] = sub_245446038(a1);
  v5 = *(a1 + 16);
  if (*(a1 + 16))
  {
    v6 = *(a1 + 8);
    v7 = *(a1 + 12);
    LODWORD(v8) = *(a1 + 16);
    goto LABEL_11;
  }

  a2[61] = sub_245446038(a1);
  v5 = *(a1 + 16);
  if (*(a1 + 16))
  {
    v6 = *(a1 + 8);
    v7 = *(a1 + 12);
    LODWORD(v8) = *(a1 + 16);
    goto LABEL_11;
  }

  a2[62] = sub_245446038(a1);
  v5 = *(a1 + 16);
  if (*(a1 + 16))
  {
    v6 = *(a1 + 8);
    v7 = *(a1 + 12);
    LODWORD(v8) = *(a1 + 16);
    goto LABEL_11;
  }

  a2[63] = sub_245446038(a1);
  v5 = *(a1 + 16);
  if (*(a1 + 16))
  {
    v6 = *(a1 + 8);
    v7 = *(a1 + 12);
    LODWORD(v8) = *(a1 + 16);
    goto LABEL_11;
  }

  a2[64] = sub_245446038(a1);
  v5 = *(a1 + 16);
  if (*(a1 + 16))
  {
    v6 = *(a1 + 8);
    v7 = *(a1 + 12);
    LODWORD(v8) = *(a1 + 16);
    goto LABEL_11;
  }

  a2[65] = sub_245446038(a1);
  v5 = *(a1 + 16);
  if (*(a1 + 16))
  {
    v6 = *(a1 + 8);
    v7 = *(a1 + 12);
    LODWORD(v8) = *(a1 + 16);
    goto LABEL_11;
  }

  if (v9)
  {
    sub_245446F9C(a1);
  }

  return 0;
}

uint64_t sub_245441F34(uint64_t a1, _DWORD *a2)
{
  v4 = sub_245446038(a1);
  v5 = *(a1 + 16);
  if (*(a1 + 16))
  {
    v6 = *(a1 + 8);
    v7 = *(a1 + 12);
    LODWORD(v8) = *(a1 + 16);
LABEL_15:
    sub_245445D98(v8, v6, v7, "asn1PD_GNSSPosTechnology");
    return v5;
  }

  v9 = v4;
  *a2 = sub_245446038(a1);
  v5 = *(a1 + 16);
  if (*(a1 + 16))
  {
    v6 = *(a1 + 8);
    v7 = *(a1 + 12);
    LODWORD(v8) = *(a1 + 16);
    goto LABEL_15;
  }

  a2[1] = sub_245446038(a1);
  v5 = *(a1 + 16);
  if (*(a1 + 16))
  {
    v6 = *(a1 + 8);
    v7 = *(a1 + 12);
    LODWORD(v8) = *(a1 + 16);
    goto LABEL_15;
  }

  a2[2] = sub_245446038(a1);
  v5 = *(a1 + 16);
  if (*(a1 + 16))
  {
    v6 = *(a1 + 8);
    v7 = *(a1 + 12);
    LODWORD(v8) = *(a1 + 16);
    goto LABEL_15;
  }

  a2[3] = sub_245446038(a1);
  v5 = *(a1 + 16);
  if (*(a1 + 16))
  {
    v6 = *(a1 + 8);
    v7 = *(a1 + 12);
    LODWORD(v8) = *(a1 + 16);
    goto LABEL_15;
  }

  a2[4] = sub_245446038(a1);
  v5 = *(a1 + 16);
  if (*(a1 + 16))
  {
    sub_245445D98(*(a1 + 16), *(a1 + 8), *(a1 + 12), "asn1PD_GNSSPosTechnology");
LABEL_14:
    v6 = *(a1 + 8);
    v7 = *(a1 + 12);
    LODWORD(v8) = v5;
    goto LABEL_15;
  }

  a2[5] = sub_245446038(a1);
  v5 = *(a1 + 16);
  if (*(a1 + 16))
  {
    goto LABEL_14;
  }

  if (!v9)
  {
    return 0;
  }

  v8 = sub_245446F9C(a1);
  v5 = v8;
  if (v8)
  {
    v6 = *(a1 + 8);
    v7 = *(a1 + 12);
    goto LABEL_15;
  }

  return v5;
}

uint64_t sub_2454420CC(uint64_t a1, unsigned __int8 a2)
{
  v3 = sub_2454460B8(a1, 0, 9, a2);
  v4 = v3;
  if (v3)
  {
    sub_245445D98(v3, *(a1 + 8), *(a1 + 12), "asn1PE_MCC_MNC_Digit");
  }

  return v4;
}

uint64_t sub_245442120(uint64_t a1, unsigned int *a2)
{
  sub_245445FB0(a1, 0);
  v4 = *(a1 + 16);
  if (*(a1 + 16))
  {
    v5 = *(a1 + 8);
    v6 = *(a1 + 12);
    v7 = *(a1 + 16);
LABEL_25:
    sub_245445D98(v7, v5, v6, "asn1PE_CellGlobalIdEUTRA");
    return v4;
  }

  sub_245445FB0(a1, *a2);
  v4 = *(a1 + 16);
  if (*(a1 + 16))
  {
    v8 = *(a1 + 8);
    v9 = *(a1 + 12);
    v10 = *(a1 + 16);
LABEL_24:
    sub_245445D98(v10, v8, v9, "asn1PE_PLMN_Identity");
    v5 = *(a1 + 8);
    v6 = *(a1 + 12);
    v7 = v4;
    goto LABEL_25;
  }

  if (*a2)
  {
    v11 = *(a2 + 1);
    v12 = *(a2 + 2);
    if (v12 - v11 != 3)
    {
      *(a1 + 16) = 4;
      sub_245445D98(4u, *(a1 + 8), *(a1 + 12), "EncodeInteger");
      v4 = *(a1 + 16);
      if (*(a1 + 16))
      {
        v13 = *(a1 + 8);
        v14 = *(a1 + 12);
        v15 = "asn1PE_MCC";
        LODWORD(v16) = *(a1 + 16);
LABEL_23:
        sub_245445D98(v16, v13, v14, v15);
        v8 = *(a1 + 8);
        v9 = *(a1 + 12);
        v10 = v4;
        goto LABEL_24;
      }

      v11 = *(a2 + 1);
      v12 = *(a2 + 2);
    }

    if (v12 != v11)
    {
      v17 = 0;
      while (1)
      {
        v16 = sub_2454420CC(a1, *(v11 + v17));
        if (v16)
        {
          break;
        }

        ++v17;
        v11 = *(a2 + 1);
        if (v17 >= *(a2 + 2) - v11)
        {
          goto LABEL_14;
        }
      }

      v4 = v16;
      v13 = *(a1 + 8);
      v14 = *(a1 + 12);
      v15 = "asn1PE_MCC";
      goto LABEL_23;
    }
  }

LABEL_14:
  v16 = sub_2454460B8(a1, 2, 3, a2[10] - a2[8]);
  if (v16)
  {
    v4 = v16;
    v13 = *(a1 + 8);
    v14 = *(a1 + 12);
    v15 = "asn1PE_MNC";
    goto LABEL_23;
  }

  v18 = *(a2 + 4);
  if (*(a2 + 5) != v18)
  {
    v19 = 0;
    while (1)
    {
      v16 = sub_2454420CC(a1, *(v18 + v19));
      if (v16)
      {
        break;
      }

      ++v19;
      v18 = *(a2 + 4);
      if (v19 >= *(a2 + 5) - v18)
      {
        goto LABEL_20;
      }
    }

    v4 = v16;
    v13 = *(a1 + 8);
    v14 = *(a1 + 12);
    v15 = "asn1PE_MNC";
    goto LABEL_23;
  }

LABEL_20:
  v20 = sub_245446474(a1, 0, 0, 28, a2 + 7, 1);
  v4 = v20;
  if (v20)
  {
    sub_245445D98(v20, *(a1 + 8), *(a1 + 12), "asn1PE_CellIdentity");
    v5 = *(a1 + 8);
    v6 = *(a1 + 12);
    v7 = v4;
    goto LABEL_25;
  }

  return v4;
}

uint64_t sub_245442364(uint64_t a1, void *a2)
{
  v3 = sub_245446474(a1, 0, 0, 16, a2, 1);
  v4 = v3;
  if (v3)
  {
    sub_245445D98(v3, *(a1 + 8), *(a1 + 12), "asn1PE_TrackingAreaCode");
  }

  return v4;
}

uint64_t sub_2454423C0(uint64_t a1, unsigned __int16 a2)
{
  v3 = sub_2454460B8(a1, 0, 503, a2);
  v4 = v3;
  if (v3)
  {
    sub_245445D98(v3, *(a1 + 8), *(a1 + 12), "asn1PE_PhysCellId");
  }

  return v4;
}

uint64_t sub_245442414(uint64_t a1, unsigned __int8 a2)
{
  v3 = sub_2454460B8(a1, 0, 97, a2);
  v4 = v3;
  if (v3)
  {
    sub_245445D98(v3, *(a1 + 8), *(a1 + 12), "asn1PE_RSRP_Range");
  }

  return v4;
}

uint64_t sub_245442468(uint64_t a1, unsigned __int8 a2)
{
  v3 = sub_2454460B8(a1, 0, 34, a2);
  v4 = v3;
  if (v3)
  {
    sub_245445D98(v3, *(a1 + 8), *(a1 + 12), "asn1PE_RSRQ_Range");
  }

  return v4;
}

uint64_t sub_2454424BC(uint64_t a1, uint64_t *a2)
{
  v4 = sub_2454460B8(a1, 1, 8, (a2[1] - *a2) >> 7);
  if (v4)
  {
    v5 = v4;
    v6 = *(a1 + 8);
    v7 = *(a1 + 12);
    goto LABEL_31;
  }

  v8 = *a2;
  if (a2[1] == *a2)
  {
    return 0;
  }

  v9 = 0;
  v10 = 0;
  while (1)
  {
    sub_245445FB0(a1, *(v8 + v9));
    v5 = *(a1 + 16);
    if (*(a1 + 16))
    {
      v18 = *(a1 + 8);
      v19 = *(a1 + 12);
      LODWORD(v11) = *(a1 + 16);
      goto LABEL_30;
    }

    v11 = sub_2454423C0(a1, *(v8 + v9 + 4));
    if (v11)
    {
      v5 = v11;
      v18 = *(a1 + 8);
      v19 = *(a1 + 12);
      goto LABEL_30;
    }

    if (*(v8 + v9))
    {
      v12 = sub_245442120(a1, (v8 + v9 + 8));
      if (v12)
      {
        v5 = v12;
        v22 = *(a1 + 8);
        v23 = *(a1 + 12);
      }

      else
      {
        v12 = sub_245442364(a1, (v8 + v9 + 88));
        if (!v12)
        {
          goto LABEL_10;
        }

        v5 = v12;
        v22 = *(a1 + 8);
        v23 = *(a1 + 12);
      }

      sub_245445D98(v12, v22, v23, "asn1PE_cgi_Info");
      v18 = *(a1 + 8);
      v19 = *(a1 + 12);
      LODWORD(v11) = v5;
      goto LABEL_30;
    }

LABEL_10:
    sub_245445FB0(a1, 0);
    v5 = *(a1 + 16);
    if (*(a1 + 16))
    {
      v20 = *(a1 + 8);
      v21 = *(a1 + 12);
      LODWORD(v15) = *(a1 + 16);
      goto LABEL_28;
    }

    v13 = v8 + v9;
    sub_245445FB0(a1, *(v13 + 120) < 0x62u);
    v5 = *(a1 + 16);
    if (*(a1 + 16))
    {
      v20 = *(a1 + 8);
      v21 = *(a1 + 12);
      LODWORD(v15) = *(a1 + 16);
      goto LABEL_28;
    }

    sub_245445FB0(a1, *(v13 + 121) < 0x23u);
    v5 = *(a1 + 16);
    if (*(a1 + 16))
    {
      v20 = *(a1 + 8);
      v21 = *(a1 + 12);
      LODWORD(v15) = *(a1 + 16);
      goto LABEL_28;
    }

    v14 = *(v13 + 120);
    if (v14 <= 0x61)
    {
      v15 = sub_245442414(a1, v14);
      if (v15)
      {
        break;
      }
    }

    v16 = *(v13 + 121);
    if (v16 < 0x23)
    {
      v17 = sub_245442468(a1, v16);
      if (v17)
      {
        v5 = v17;
        goto LABEL_29;
      }
    }

    ++v10;
    v8 = *a2;
    v9 += 128;
    if (v10 >= (a2[1] - *a2) >> 7)
    {
      return 0;
    }
  }

  v5 = v15;
  v20 = *(a1 + 8);
  v21 = *(a1 + 12);
LABEL_28:
  sub_245445D98(v15, v20, v21, "asn1PE_measResult");
LABEL_29:
  v18 = *(a1 + 8);
  v19 = *(a1 + 12);
  LODWORD(v11) = v5;
LABEL_30:
  sub_245445D98(v11, v18, v19, "asn1PE_MeasResultEUTRA");
  v6 = *(a1 + 8);
  v7 = *(a1 + 12);
  LODWORD(v4) = v5;
LABEL_31:
  sub_245445D98(v4, v6, v7, "asn1PE_MeasResultListEUTRA");
  return v5;
}

uint64_t sub_245442748(uint64_t a1, unsigned int *a2)
{
  sub_245445FB0(a1, 0);
  v4 = *(a1 + 16);
  if (*(a1 + 16))
  {
    v5 = *(a1 + 8);
    v6 = *(a1 + 12);
    LODWORD(v7) = *(a1 + 16);
LABEL_17:
    sub_245445D98(v7, v5, v6, "asn1PE_LteCellInformation");
    return v4;
  }

  sub_245445FB0(a1, *a2);
  v4 = *(a1 + 16);
  if (*(a1 + 16))
  {
    v5 = *(a1 + 8);
    v6 = *(a1 + 12);
    LODWORD(v7) = *(a1 + 16);
    goto LABEL_17;
  }

  sub_245445FB0(a1, a2[1]);
  v4 = *(a1 + 16);
  if (*(a1 + 16))
  {
    v5 = *(a1 + 8);
    v6 = *(a1 + 12);
    LODWORD(v7) = *(a1 + 16);
    goto LABEL_17;
  }

  sub_245445FB0(a1, a2[2]);
  v4 = *(a1 + 16);
  if (*(a1 + 16))
  {
    v5 = *(a1 + 8);
    v6 = *(a1 + 12);
    LODWORD(v7) = *(a1 + 16);
    goto LABEL_17;
  }

  sub_245445FB0(a1, a2[3]);
  v4 = *(a1 + 16);
  if (*(a1 + 16))
  {
    v5 = *(a1 + 8);
    v6 = *(a1 + 12);
    LODWORD(v7) = *(a1 + 16);
    goto LABEL_17;
  }

  v7 = sub_245442120(a1, a2 + 4);
  if (v7)
  {
    v4 = v7;
    v5 = *(a1 + 8);
    v6 = *(a1 + 12);
    goto LABEL_17;
  }

  v7 = sub_2454423C0(a1, *(a2 + 48));
  if (v7)
  {
    v4 = v7;
    v5 = *(a1 + 8);
    v6 = *(a1 + 12);
    goto LABEL_17;
  }

  v7 = sub_245442364(a1, a2 + 13);
  if (v7)
  {
    v4 = v7;
    v5 = *(a1 + 8);
    v6 = *(a1 + 12);
    goto LABEL_17;
  }

  if (*a2)
  {
    v7 = sub_245442414(a1, *(a2 + 128));
    if (v7)
    {
      v4 = v7;
      v5 = *(a1 + 8);
      v6 = *(a1 + 12);
      goto LABEL_17;
    }
  }

  if (a2[1])
  {
    v7 = sub_245442468(a1, *(a2 + 129));
    if (v7)
    {
      v4 = v7;
      v5 = *(a1 + 8);
      v6 = *(a1 + 12);
      goto LABEL_17;
    }
  }

  if (a2[2])
  {
    v7 = sub_2454460B8(a1, 0, 1282, *(a2 + 65));
    if (v7)
    {
      v4 = v7;
      v5 = *(a1 + 8);
      v6 = *(a1 + 12);
      goto LABEL_17;
    }
  }

  if (!a2[3])
  {
    return 0;
  }

  v7 = sub_2454424BC(a1, a2 + 17);
  v4 = v7;
  if (v7)
  {
    v5 = *(a1 + 8);
    v6 = *(a1 + 12);
    goto LABEL_17;
  }

  return v4;
}

uint64_t sub_24544299C(uint64_t a1, uint64_t a2)
{
  v4 = sub_2454473CC(a1, 0);
  v14 = 0;
  if (v4)
  {
    v5 = v4;
    v6 = *(a1 + 8);
    v7 = *(a1 + 12);
LABEL_25:
    sub_245445D98(v4, v6, v7, "asn1PE_CellInfo_VER2");
    return v5;
  }

  v4 = sub_245447124(a1, &v14);
  if (v4)
  {
    v5 = v4;
    v6 = *(a1 + 8);
    v7 = *(a1 + 12);
    goto LABEL_25;
  }

  sub_245445FB0(a1, 0);
  v5 = *(a1 + 16);
  if (*(a1 + 16))
  {
    v6 = *(a1 + 8);
    v7 = *(a1 + 12);
    LODWORD(v4) = *(a1 + 16);
    goto LABEL_25;
  }

  v4 = sub_2454460B8(a1, 0, 5, **(a2 + 144) - 1);
  if (v4)
  {
    v5 = v4;
    v6 = *(a1 + 8);
    v7 = *(a1 + 12);
    goto LABEL_25;
  }

  v8 = *(a2 + 144);
  v9 = *v8;
  if (v9 <= 2)
  {
    if (v9 == 1)
    {
      v5 = 1;
      *(a1 + 16) = 1;
      v10 = *(a1 + 8);
      v11 = *(a1 + 12);
      v12 = 1;
      goto LABEL_23;
    }

    if (v9 == 2)
    {
      v5 = 1;
      *(a1 + 16) = 1;
      v10 = *(a1 + 8);
      v11 = *(a1 + 12);
      v12 = 1;
      goto LABEL_23;
    }

LABEL_22:
    v5 = 4;
    *(a1 + 16) = 4;
    v10 = *(a1 + 8);
    v11 = *(a1 + 12);
    v12 = 4;
    goto LABEL_23;
  }

  if (v9 != 3)
  {
    if (v9 == 4)
    {
      v5 = 1;
      *(a1 + 16) = 1;
      v10 = *(a1 + 8);
      v11 = *(a1 + 12);
      v12 = 1;
      goto LABEL_23;
    }

    if (v9 == 5)
    {
      v5 = 1;
      *(a1 + 16) = 1;
      v10 = *(a1 + 8);
      v11 = *(a1 + 12);
      v12 = 1;
LABEL_23:
      sub_245445D98(v12, v10, v11, "asn1PE_CellInfo_VER2");
      goto LABEL_24;
    }

    goto LABEL_22;
  }

  v5 = sub_245442748(a1, v8 + 2);
  if (v5)
  {
LABEL_24:
    v6 = *(a1 + 8);
    v7 = *(a1 + 12);
    LODWORD(v4) = v5;
    goto LABEL_25;
  }

  v4 = sub_245447184(a1, &v14);
  v5 = v4;
  if (v4)
  {
    v6 = *(a1 + 8);
    v7 = *(a1 + 12);
    goto LABEL_25;
  }

  return v5;
}

uint64_t sub_245442BB8(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  while (v2 != v3)
  {
    *(a1 + 16) = v2 - 40;
    v4 = *(v2 - 32);
    if (v4)
    {
      *(v2 - 24) = v4;
      operator delete(v4);
      v2 = *(a1 + 16);
    }

    else
    {
      v2 -= 40;
    }
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_245442C1C(uint64_t a1, unsigned __int8 *a2)
{
  v4 = sub_245446038(a1);
  v5 = *(a1 + 16);
  v11 = 0;
  if (v5)
  {
    v6 = *(a1 + 8);
    v7 = *(a1 + 12);
    LODWORD(v8) = v5;
  }

  else
  {
    if (v4)
    {
      v8 = sub_24544742C(a1, &v11);
      if (v8)
      {
        v5 = v8;
        v6 = *(a1 + 8);
        v7 = *(a1 + 12);
        goto LABEL_3;
      }

      v10 = v11;
    }

    else
    {
      v8 = sub_245446150(a1, 0, 1u, &v11);
      if (v8)
      {
        v5 = v8;
        v6 = *(a1 + 8);
        v7 = *(a1 + 12);
        goto LABEL_3;
      }

      v10 = v11 + 1;
    }

    if (v10 <= 1u)
    {
      v5 = 0;
      *a2 = v10;
      return v5;
    }

    v5 = 4;
    *(a1 + 16) = 4;
    v6 = *(a1 + 8);
    v7 = *(a1 + 12);
    LODWORD(v8) = 4;
  }

LABEL_3:
  sub_245445D98(v8, v6, v7, "asn1PD_NotificationMode");
  return v5;
}

uint64_t sub_245442D20(uint64_t a1, uint64_t a2)
{
  v4 = sub_245446038(a1);
  v5 = *(a1 + 16);
  if (*(a1 + 16))
  {
    v6 = *(a1 + 8);
    v7 = *(a1 + 12);
    LODWORD(v8) = *(a1 + 16);
LABEL_18:
    sub_245445D98(v8, v6, v7, "asn1PD_HistoricReporting");
    return v5;
  }

  v9 = v4;
  *(a2 + 32) = sub_245446038(a1);
  v5 = *(a1 + 16);
  if (*(a1 + 16))
  {
    v6 = *(a1 + 8);
    v7 = *(a1 + 12);
    LODWORD(v8) = *(a1 + 16);
    goto LABEL_18;
  }

  v10 = sub_245446038(a1);
  v5 = *(a1 + 16);
  v18 = 0;
  if (v5)
  {
LABEL_17:
    v6 = *(a1 + 8);
    v7 = *(a1 + 12);
    LODWORD(v8) = v5;
    goto LABEL_18;
  }

  if (v10)
  {
    v11 = sub_24544742C(a1, &v18);
    if (v11)
    {
      v5 = v11;
      v12 = *(a1 + 8);
      v13 = *(a1 + 12);
      v14 = "asn1PD_AllowedReportingType";
LABEL_16:
      sub_245445D98(v11, v12, v13, v14);
      goto LABEL_17;
    }
  }

  else
  {
    v11 = sub_245446150(a1, 0, 2u, &v18);
    if (v11)
    {
      v5 = v11;
      v12 = *(a1 + 8);
      v13 = *(a1 + 12);
      v14 = "asn1PD_AllowedReportingType";
      goto LABEL_16;
    }
  }

  if (v18 >= 3u)
  {
    v5 = 4;
    *(a1 + 16) = 4;
    v12 = *(a1 + 8);
    v13 = *(a1 + 12);
    v14 = "asn1PD_AllowedReportingType";
    LODWORD(v11) = 4;
    goto LABEL_16;
  }

  *a2 = v18;
  if (*(a2 + 32))
  {
    v15 = sub_245446038(a1);
    v5 = *(a1 + 16);
    if (*(a1 + 16))
    {
      v12 = *(a1 + 8);
      v13 = *(a1 + 12);
      v14 = "asn1PD_ReportingCriteria";
      LODWORD(v11) = *(a1 + 16);
      goto LABEL_16;
    }

    v17 = v15;
    *(a2 + 20) = sub_245446038(a1);
    v5 = *(a1 + 16);
    if (*(a1 + 16))
    {
      v12 = *(a1 + 8);
      v13 = *(a1 + 12);
      v14 = "asn1PD_ReportingCriteria";
      LODWORD(v11) = *(a1 + 16);
      goto LABEL_16;
    }

    *(a2 + 24) = sub_245446038(a1);
    v5 = *(a1 + 16);
    if (*(a1 + 16))
    {
      v12 = *(a1 + 8);
      v13 = *(a1 + 12);
      v14 = "asn1PD_ReportingCriteria";
      LODWORD(v11) = *(a1 + 16);
      goto LABEL_16;
    }

    *(a2 + 28) = sub_245446038(a1);
    v5 = *(a1 + 16);
    if (*(a1 + 16) || *(a2 + 20) && (v5 = sub_245443010(a1, (a2 + 4)), v5))
    {
      v12 = *(a1 + 8);
      v13 = *(a1 + 12);
      v14 = "asn1PD_ReportingCriteria";
      LODWORD(v11) = v5;
      goto LABEL_16;
    }

    if (*(a2 + 24))
    {
      v11 = sub_2454463A8(a1, 1, 0x10000u, (a2 + 12));
      if (v11)
      {
        v5 = v11;
        v12 = *(a1 + 8);
        v13 = *(a1 + 12);
        v14 = "asn1PD_ReportingCriteria";
        goto LABEL_16;
      }
    }

    if (*(a2 + 28))
    {
      v11 = sub_2454463A8(a1, 0, 0x15180u, (a2 + 16));
      if (v11)
      {
        v5 = v11;
        v12 = *(a1 + 8);
        v13 = *(a1 + 12);
        v14 = "asn1PD_ReportingCriteria";
        goto LABEL_16;
      }
    }

    if (v17)
    {
      v11 = sub_245446F9C(a1);
      if (v11)
      {
        v5 = v11;
        v12 = *(a1 + 8);
        v13 = *(a1 + 12);
        v14 = "asn1PD_ReportingCriteria";
        goto LABEL_16;
      }
    }
  }

  if (!v9)
  {
    return 0;
  }

  v8 = sub_245446F9C(a1);
  v5 = v8;
  if (v8)
  {
    v6 = *(a1 + 8);
    v7 = *(a1 + 12);
    goto LABEL_18;
  }

  return v5;
}

uint64_t sub_245443010(uint64_t a1, _DWORD *a2)
{
  v4 = sub_2454462E0(a1, -525600, -1, a2);
  if (v4)
  {
    v5 = v4;
    v6 = *(a1 + 8);
    v7 = *(a1 + 12);
LABEL_5:
    sub_245445D98(v4, v6, v7, "asn1PD_TimeWindow");
    return v5;
  }

  v4 = sub_2454462E0(a1, -525599, 0, a2 + 1);
  v5 = v4;
  if (v4)
  {
    v6 = *(a1 + 8);
    v7 = *(a1 + 12);
    goto LABEL_5;
  }

  return v5;
}

uint64_t sub_2454430AC(uint64_t a1, uint64_t a2)
{
  v4 = sub_245446038(a1);
  v5 = *(a1 + 16);
  if (*(a1 + 16))
  {
    v6 = *(a1 + 8);
    v7 = *(a1 + 12);
    LODWORD(v8) = *(a1 + 16);
LABEL_18:
    sub_245445D98(v8, v6, v7, "asn1PD_ProtectionLevel");
    return v5;
  }

  v9 = v4;
  *(a2 + 64) = sub_245446038(a1);
  v5 = *(a1 + 16);
  if (*(a1 + 16))
  {
    v6 = *(a1 + 8);
    v7 = *(a1 + 12);
    LODWORD(v8) = *(a1 + 16);
    goto LABEL_18;
  }

  v10 = sub_245446038(a1);
  v5 = *(a1 + 16);
  v18 = 0;
  if (v5)
  {
LABEL_17:
    v6 = *(a1 + 8);
    v7 = *(a1 + 12);
    LODWORD(v8) = v5;
    goto LABEL_18;
  }

  if (v10)
  {
    v11 = sub_24544742C(a1, &v18);
    if (v11)
    {
      v5 = v11;
      v12 = *(a1 + 8);
      v13 = *(a1 + 12);
      v14 = "asn1PD_ProtLevel";
LABEL_16:
      sub_245445D98(v11, v12, v13, v14);
      goto LABEL_17;
    }
  }

  else
  {
    v11 = sub_245446150(a1, 0, 1u, &v18);
    if (v11)
    {
      v5 = v11;
      v12 = *(a1 + 8);
      v13 = *(a1 + 12);
      v14 = "asn1PD_ProtLevel";
      goto LABEL_16;
    }
  }

  if (v18 >= 2u)
  {
    v5 = 4;
    *(a1 + 16) = 4;
    v12 = *(a1 + 8);
    v13 = *(a1 + 12);
    v14 = "asn1PD_ProtLevel";
    LODWORD(v11) = 4;
    goto LABEL_16;
  }

  *a2 = v18;
  if (*(a2 + 64))
  {
    v15 = sub_245446038(a1);
    v5 = *(a1 + 16);
    if (*(a1 + 16))
    {
      v12 = *(a1 + 8);
      v13 = *(a1 + 12);
      v14 = "asn1PD_BasicProtectionParams";
      LODWORD(v11) = *(a1 + 16);
      goto LABEL_16;
    }

    v17 = v15;
    sub_245446614(a1, 0x40u, (a2 + 8), 0);
    v5 = *(a1 + 16);
    if (*(a1 + 16))
    {
      sub_245445D98(*(a1 + 16), *(a1 + 8), *(a1 + 12), "asn1PD_BasicProtectionParams_KeyIdentifier");
      v12 = *(a1 + 8);
      v13 = *(a1 + 12);
      v14 = "asn1PD_BasicProtectionParams";
      LODWORD(v11) = v5;
      goto LABEL_16;
    }

    v11 = sub_2454463A8(a1, 0, 0xFFFFu, (a2 + 32));
    if (v11)
    {
      v5 = v11;
      v12 = *(a1 + 8);
      v13 = *(a1 + 12);
      v14 = "asn1PD_BasicProtectionParams";
      goto LABEL_16;
    }

    sub_245446614(a1, 0x20u, (a2 + 40), 0);
    v5 = *(a1 + 16);
    if (*(a1 + 16))
    {
      sub_245445D98(*(a1 + 16), *(a1 + 8), *(a1 + 12), "asn1PD_BasicProtectionParams_BasicMAC");
      v12 = *(a1 + 8);
      v13 = *(a1 + 12);
      v14 = "asn1PD_BasicProtectionParams";
      LODWORD(v11) = v5;
      goto LABEL_16;
    }

    if (v17)
    {
      v11 = sub_245446F9C(a1);
      if (v11)
      {
        v5 = v11;
        v12 = *(a1 + 8);
        v13 = *(a1 + 12);
        v14 = "asn1PD_BasicProtectionParams";
        goto LABEL_16;
      }
    }
  }

  if (!v9)
  {
    return 0;
  }

  v8 = sub_245446F9C(a1);
  v5 = v8;
  if (v8)
  {
    v6 = *(a1 + 8);
    v7 = *(a1 + 12);
    goto LABEL_18;
  }

  return v5;
}

uint64_t sub_245443350(uint64_t a1, uint64_t a2)
{
  v14[0] = 0;
  v15 = 0;
  v4 = sub_245446FE8(a1, v14);
  v12 = 0;
  v13 = 0;
  if (v4)
  {
    v5 = v4;
    v6 = *(a1 + 8);
    v7 = *(a1 + 12);
  }

  else
  {
    sub_245446E78(a1, &v12);
    if (v4)
    {
      v5 = v4;
      v6 = *(a1 + 8);
      v7 = *(a1 + 12);
    }

    else
    {
      v8 = sub_245446038(a1);
      v5 = *(a1 + 16);
      if (*(a1 + 16))
      {
        v6 = *(a1 + 8);
        v7 = *(a1 + 12);
        LODWORD(v4) = *(a1 + 16);
      }

      else
      {
        v9 = v8;
        *(a2 + 280) = sub_245446038(a1);
        v5 = *(a1 + 16);
        if (*(a1 + 16))
        {
          v6 = *(a1 + 8);
          v7 = *(a1 + 12);
          LODWORD(v4) = *(a1 + 16);
        }

        else
        {
          *(a2 + 284) = sub_245446038(a1);
          v5 = *(a1 + 16);
          if (*(a1 + 16))
          {
            v6 = *(a1 + 8);
            v7 = *(a1 + 12);
            LODWORD(v4) = *(a1 + 16);
          }

          else
          {
            *(a2 + 288) = sub_245446038(a1);
            v5 = *(a1 + 16);
            if (*(a1 + 16))
            {
              v6 = *(a1 + 8);
              v7 = *(a1 + 12);
              LODWORD(v4) = *(a1 + 16);
            }

            else
            {
              *(a2 + 292) = sub_245446038(a1);
              v5 = *(a1 + 16);
              if (*(a1 + 16))
              {
                v6 = *(a1 + 8);
                v7 = *(a1 + 12);
                LODWORD(v4) = *(a1 + 16);
              }

              else
              {
                *(a2 + 296) = sub_245446038(a1);
                v5 = *(a1 + 16);
                if (*(a1 + 16))
                {
                  v6 = *(a1 + 8);
                  v7 = *(a1 + 12);
                  LODWORD(v4) = *(a1 + 16);
                }

                else
                {
                  *(a2 + 300) = sub_245446038(a1);
                  v5 = *(a1 + 16);
                  if (*(a1 + 16))
                  {
                    v6 = *(a1 + 8);
                    v7 = *(a1 + 12);
                    LODWORD(v4) = *(a1 + 16);
                  }

                  else
                  {
                    *(a2 + 304) = sub_245446038(a1);
                    v5 = *(a1 + 16);
                    if (*(a1 + 16))
                    {
                      v6 = *(a1 + 8);
                      v7 = *(a1 + 12);
                      LODWORD(v4) = *(a1 + 16);
                    }

                    else
                    {
                      *(a2 + 308) = sub_245446038(a1);
                      v5 = *(a1 + 16);
                      if (*(a1 + 16) || *(a2 + 280) && (v5 = sub_245442C1C(a1, (a2 + 312)), v5))
                      {
                        v6 = *(a1 + 8);
                        v7 = *(a1 + 12);
                        LODWORD(v4) = v5;
                      }

                      else if (*(a2 + 284) && (v4 = sub_245441BA4(a1, (a2 + 320)), v4))
                      {
                        v5 = v4;
                        v6 = *(a1 + 8);
                        v7 = *(a1 + 12);
                      }

                      else if (*(a2 + 288) && (v4 = sub_2454459E0(a1, (a2 + 584)), v4))
                      {
                        v5 = v4;
                        v6 = *(a1 + 8);
                        v7 = *(a1 + 12);
                      }

                      else if (*(a2 + 292) && (v4 = sub_245472B88(a1, a2 + 592), v4))
                      {
                        v5 = v4;
                        v6 = *(a1 + 8);
                        v7 = *(a1 + 12);
                      }

                      else if (*(a2 + 296) && (v4 = sub_245442D20(a1, a2 + 680), v4))
                      {
                        v5 = v4;
                        v6 = *(a1 + 8);
                        v7 = *(a1 + 12);
                      }

                      else if (*(a2 + 300) && (v4 = sub_2454430AC(a1, a2 + 720), v4))
                      {
                        v5 = v4;
                        v6 = *(a1 + 8);
                        v7 = *(a1 + 12);
                      }

                      else if (*(a2 + 304) && (v4 = sub_245441F34(a1, (a2 + 792)), v4))
                      {
                        v5 = v4;
                        v6 = *(a1 + 8);
                        v7 = *(a1 + 12);
                      }

                      else if (*(a2 + 308) && (v4 = sub_2454462E0(a1, 0, 255, (a2 + 816)), v4))
                      {
                        v5 = v4;
                        v6 = *(a1 + 8);
                        v7 = *(a1 + 12);
                      }

                      else if (v9)
                      {
                        v5 = 1;
                        *(a1 + 16) = 1;
                        sub_245445D98(1u, *(a1 + 8), *(a1 + 12), "asn1PD_SUPLINIT_VER2");
                        v6 = *(a1 + 8);
                        v7 = *(a1 + 12);
                        LODWORD(v4) = 1;
                      }

                      else
                      {
                        v11 = v12.i32[0];
                        *(a1 + 8) = v13 + v12.i32[1];
                        *(a1 + 12) = v11;
                        v4 = sub_245446F04(a1, v14, 1u);
                        v5 = v4;
                        if (!v4)
                        {
                          return v5;
                        }

                        v6 = *(a1 + 8);
                        v7 = *(a1 + 12);
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

  sub_245445D98(v4, v6, v7, "asn1PD_SUPLINIT_VER2");
  return v5;
}

uint64_t sub_245443760()
{
  v4 = *MEMORY[0x277D85DE8];
  if (qword_2813CED28 != -1)
  {
    dispatch_once(&qword_2813CED28, &unk_28585A488);
  }

  result = qword_2813CED20;
  if (!qword_2813CED20)
  {
    v1 = qword_2813CF018;
    if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_ERROR))
    {
      v2 = 136315138;
      v3 = "GetInstance";
      _os_log_error_impl(&dword_245396000, v1, OS_LOG_TYPE_ERROR, "%s", &v2, 0xCu);
    }

    __assert_rtn("GetInstance", "SuplLppProvider.cpp", 43, "false && Memory allocation failure");
  }

  return result;
}

void *sub_245443858()
{
  result = operator new(0x18uLL, MEMORY[0x277D826F0]);
  if (result)
  {
    *result = 0;
    result[1] = 0;
    result[2] = 0;
  }

  qword_2813CED20 = result;
  return result;
}

void sub_245443890(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x277D85DE8];
  if (!a2)
  {
    v4 = qword_2813CF018;
    if (!os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_ERROR))
    {
      return;
    }

    v7 = 67109120;
    v8 = 513;
    goto LABEL_9;
  }

  v3 = *(sub_24546E30C() + 24);
  if (!v3)
  {
LABEL_5:
    v4 = qword_2813CF018;
    if (!os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_ERROR))
    {
      return;
    }

    v7 = 67109120;
    v8 = 513;
LABEL_9:
    _os_log_error_impl(&dword_245396000, v4, OS_LOG_TYPE_ERROR, "#gpsd #supl Error code %d", &v7, 8u);
    return;
  }

  while (*v3 != *a2)
  {
    v3 = *(v3 + 8);
    if (!v3)
    {
      goto LABEL_5;
    }
  }

  if (*(a2 + 32) || *(a2 + 8) == *(a2 + 16))
  {
    v5 = qword_2813CF018;
    if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_ERROR))
    {
      v7 = 67109120;
      v8 = 515;
      _os_log_error_impl(&dword_245396000, v5, OS_LOG_TYPE_ERROR, "#gpsd #supl Error code %d", &v7, 8u);
    }
  }

  sub_2454456DC(v3 + 16, a2);
  v6 = *(v3 + 584);
  if (v6)
  {
    sub_245471B50(v3 - 8, v6);
  }
}

void sub_245443A2C(uint64_t *a1, uint64_t a2)
{
  v8 = *MEMORY[0x277D85DE8];
  if (!a2)
  {
    v3 = qword_2813CF018;
    if (!os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_ERROR))
    {
      return;
    }

    v6 = 67109120;
    v7 = 515;
LABEL_14:
    _os_log_error_impl(&dword_245396000, v3, OS_LOG_TYPE_ERROR, "#gpsd #supl Error code %d", &v6, 8u);
    return;
  }

  if (*(a2 + 4) || (v5 = *(a2 + 8), v4 = *(a2 + 16), v5 == v4))
  {
    v3 = qword_2813CF018;
    if (!os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_ERROR))
    {
      return;
    }

    v6 = 67109120;
    v7 = 515;
    goto LABEL_14;
  }

  if ((a2 + 8) != a1)
  {
    sub_2453ADF3C(a1, *(a2 + 8), v4, v4 - v5);
    v5 = *(a2 + 8);
    v4 = *(a2 + 16);
  }

  sub_245444EFC(v5, v4 - v5);
}

uint64_t sub_245443B88(uint64_t a1, unsigned __int8 *a2)
{
  sub_245445FB0(a1, 0);
  v4 = *(a1 + 16);
  if (*(a1 + 16))
  {
    v5 = *(a1 + 8);
    v6 = *(a1 + 12);
    LODWORD(v7) = *(a1 + 16);
LABEL_9:
    sub_245445D98(v7, v5, v6, "asn1PE_PosProtocolVersion3GPP");
    return v4;
  }

  v7 = sub_2454460B8(a1, 0, 255, *a2);
  if (v7)
  {
    v4 = v7;
    v5 = *(a1 + 8);
    v6 = *(a1 + 12);
    goto LABEL_9;
  }

  v7 = sub_2454460B8(a1, 0, 255, a2[1]);
  if (v7)
  {
    v4 = v7;
    v5 = *(a1 + 8);
    v6 = *(a1 + 12);
    goto LABEL_9;
  }

  v7 = sub_2454460B8(a1, 0, 255, a2[2]);
  v4 = v7;
  if (v7)
  {
    v5 = *(a1 + 8);
    v6 = *(a1 + 12);
    goto LABEL_9;
  }

  return v4;
}

uint64_t sub_245443C74(uint64_t a1, uint64_t a2)
{
  v4 = sub_2454472F8(a1, 1, 1);
  if (*(a2 + 4))
  {
    v5 = *(a2 + 12) == 0;
  }

  else
  {
    v5 = 0;
  }

  if (v5 || (*(a2 + 8) ? (v6 = *(a2 + 16) == 0) : (v6 = 0), v6 || (v7 = v4, *a2) && !*(a2 + 20) || *(a2 + 28) && !*(a2 + 24)))
  {
    v8 = *(a1 + 8);
    v9 = *(a1 + 12);
    v7 = 1;
    LODWORD(v4) = 1;
  }

  else
  {
    v11 = 0;
    if (v4)
    {
      v8 = *(a1 + 8);
      v9 = *(a1 + 12);
    }

    else
    {
      v4 = sub_245447124(a1, &v11);
      if (v4)
      {
        v7 = v4;
        v8 = *(a1 + 8);
        v9 = *(a1 + 12);
      }

      else
      {
        sub_245445FB0(a1, 0);
        v7 = *(a1 + 16);
        if (*(a1 + 16))
        {
          v8 = *(a1 + 8);
          v9 = *(a1 + 12);
          LODWORD(v4) = *(a1 + 16);
        }

        else
        {
          sub_245445FB0(a1, *(a2 + 12));
          v7 = *(a1 + 16);
          if (*(a1 + 16))
          {
            v8 = *(a1 + 8);
            v9 = *(a1 + 12);
            LODWORD(v4) = *(a1 + 16);
          }

          else
          {
            sub_245445FB0(a1, *(a2 + 16));
            v7 = *(a1 + 16);
            if (*(a1 + 16))
            {
              v8 = *(a1 + 8);
              v9 = *(a1 + 12);
              LODWORD(v4) = *(a1 + 16);
            }

            else
            {
              sub_245445FB0(a1, *(a2 + 20));
              v7 = *(a1 + 16);
              if (*(a1 + 16))
              {
                v8 = *(a1 + 8);
                v9 = *(a1 + 12);
                LODWORD(v4) = *(a1 + 16);
              }

              else
              {
                sub_245445FB0(a1, *(a2 + 24));
                v7 = *(a1 + 16);
                if (*(a1 + 16))
                {
                  v8 = *(a1 + 8);
                  v9 = *(a1 + 12);
                  LODWORD(v4) = *(a1 + 16);
                }

                else
                {
                  sub_245445FB0(a1, *(a2 + 28));
                  v7 = *(a1 + 16);
                  if (*(a1 + 16))
                  {
                    v8 = *(a1 + 8);
                    v9 = *(a1 + 12);
                    LODWORD(v4) = *(a1 + 16);
                  }

                  else if (*(a2 + 12) && (v4 = sub_245443B88(a1, (a2 + 32)), v4))
                  {
                    v7 = v4;
                    v8 = *(a1 + 8);
                    v9 = *(a1 + 12);
                  }

                  else if (*(a2 + 16) || *(a2 + 20))
                  {
                    v7 = 1;
                    *(a1 + 16) = 1;
                    sub_245445D98(1u, *(a1 + 8), *(a1 + 12), "asn1PE_PosProtocol_VER2");
                    v8 = *(a1 + 8);
                    v9 = *(a1 + 12);
                    LODWORD(v4) = 1;
                  }

                  else if (*(a2 + 24) && (v4 = sub_245443B88(a1, (a2 + 35)), v4))
                  {
                    v7 = v4;
                    v8 = *(a1 + 8);
                    v9 = *(a1 + 12);
                  }

                  else
                  {
                    v4 = sub_245447184(a1, &v11);
                    v7 = v4;
                    if (!v4)
                    {
                      return v7;
                    }

                    v8 = *(a1 + 8);
                    v9 = *(a1 + 12);
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  sub_245445D98(v4, v8, v9, "asn1PE_PosProtocol_VER2");
  return v7;
}

uint64_t sub_245443F7C(uint64_t a1, uint64_t a2)
{
  v14[0] = 0;
  v15 = 0;
  v4 = sub_245446FE8(a1, v14);
  v12 = 0;
  v13 = 0;
  if (v4)
  {
    v5 = v4;
    v6 = *(a1 + 8);
    v7 = *(a1 + 12);
  }

  else
  {
    sub_245446E78(a1, &v12);
    if (v4)
    {
      v5 = v4;
      v6 = *(a1 + 8);
      v7 = *(a1 + 12);
    }

    else
    {
      v8 = sub_245446038(a1);
      v5 = *(a1 + 16);
      if (*(a1 + 16))
      {
        v6 = *(a1 + 8);
        v7 = *(a1 + 12);
        LODWORD(v4) = *(a1 + 16);
      }

      else
      {
        v9 = v8;
        *(a2 + 84) = sub_245446038(a1);
        v5 = *(a1 + 16);
        if (*(a1 + 16))
        {
          v6 = *(a1 + 8);
          v7 = *(a1 + 12);
          LODWORD(v4) = *(a1 + 16);
        }

        else if (v9 && (v4 = sub_245446F9C(a1), v4))
        {
          v5 = v4;
          v6 = *(a1 + 8);
          v7 = *(a1 + 12);
        }

        else
        {
          v11 = v12.i32[0];
          *(a1 + 8) = v13 + v12.i32[1];
          *(a1 + 12) = v11;
          v4 = sub_245446F04(a1, v14, 1u);
          v5 = v4;
          if (!v4)
          {
            return v5;
          }

          v6 = *(a1 + 8);
          v7 = *(a1 + 12);
        }
      }
    }
  }

  sub_245445D98(v4, v6, v7, "asn1PD_Notification_VER2");
  return v5;
}

uint64_t sub_2454440D0(uint64_t a1, uint64_t a2)
{
  v12 = 0;
  v4 = sub_2454470C8(a1, &v12);
  v10 = 0;
  v11 = 0;
  if (v4)
  {
    v5 = v4;
    v6 = *(a1 + 8);
    v7 = *(a1 + 12);
LABEL_7:
    sub_245445D98(v4, v6, v7, "asn1PD_PosPayLoadVer2");
    return v5;
  }

  *a2 = v12 + 4;
  sub_245446E78(a1, &v10);
  if (v4)
  {
    v5 = v4;
    v6 = *(a1 + 8);
    v7 = *(a1 + 12);
    goto LABEL_7;
  }

  v4 = sub_2454441CC(a1, (a2 + 80));
  if (v4)
  {
    v5 = v4;
    v6 = *(a1 + 8);
    v7 = *(a1 + 12);
    goto LABEL_7;
  }

  if (*(a2 + 80))
  {
    *a2 = 4;
  }

  if (*(a2 + 84))
  {
    *a2 = 5;
  }

  v5 = 0;
  v9 = v10.i32[0];
  *(a1 + 8) = v11 + v10.i32[1];
  *(a1 + 12) = v9;
  return v5;
}

uint64_t sub_2454441CC(uint64_t a1, uint64_t *a2)
{
  sub_245446038(a1);
  v4 = *(a1 + 16);
  if (*(a1 + 16))
  {
    v5 = *(a1 + 8);
    v6 = *(a1 + 12);
    v7 = *(a1 + 16);
    goto LABEL_7;
  }

  *a2 = sub_245446038(a1);
  v4 = *(a1 + 16);
  if (*(a1 + 16))
  {
    v5 = *(a1 + 8);
    v6 = *(a1 + 12);
    v7 = *(a1 + 16);
    goto LABEL_7;
  }

  v8 = sub_245446038(a1);
  *(a2 + 1) = v8;
  v4 = *(a1 + 16);
  if (*(a1 + 16))
  {
LABEL_6:
    v5 = *(a1 + 8);
    v6 = *(a1 + 12);
    v7 = v4;
    goto LABEL_7;
  }

  if (*a2)
  {
    v4 = sub_2454442DC(a1, a2 + 1);
    if (v4)
    {
      goto LABEL_6;
    }

    v8 = *(a2 + 1);
  }

  if (!v8)
  {
    return 0;
  }

  v4 = 1;
  *(a1 + 16) = 1;
  sub_245445D98(1u, *(a1 + 8), *(a1 + 12), "asn1PD_PosPayLoadVer2Extension");
  v5 = *(a1 + 8);
  v6 = *(a1 + 12);
  v7 = 1;
LABEL_7:
  sub_245445D98(v7, v5, v6, "asn1PD_PosPayLoadVer2Extension");
  return v4;
}

uint64_t sub_2454442DC(uint64_t a1, uint64_t *a2)
{
  v14 = 3;
  v4 = sub_2454462E0(a1, 1, 3, &v14);
  sub_245444754(a2);
  if (v4)
  {
    sub_245445D98(v4, *(a1 + 8), *(a1 + 12), "asn1PD_PosPayLoad_lppPayload");
  }

  else
  {
    v5 = v14;
    if (v14 < 1)
    {
LABEL_12:
      LOBYTE(v4) = 0;
    }

    else
    {
      while (1)
      {
        v13 = 0;
        v6 = sub_2454463A8(a1, 1, 0xEA60u, &v13);
        if (v6)
        {
          break;
        }

        __p = 0;
        v11 = 0;
        v12 = 0;
        sub_245446614(a1, 8 * v13, &__p, 0);
        v7 = *(a1 + 16);
        if (*(a1 + 16))
        {
          sub_245445D98(*(a1 + 16), *(a1 + 8), *(a1 + 12), "asn1PD_PosPayLoad_lppPayload");
          LOBYTE(v4) = v7;
        }

        else
        {
          sub_2454447AC(a2, &__p);
        }

        if (__p)
        {
          v11 = __p;
          operator delete(__p);
        }

        if (v7)
        {
          return v4;
        }

        if (!--v5)
        {
          goto LABEL_12;
        }
      }

      v8 = v6;
      sub_245445D98(v6, *(a1 + 8), *(a1 + 12), "asn1PD_PosPayLoad_lppPayload");
      LOBYTE(v4) = v8;
    }
  }

  return v4;
}

void sub_245444420(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_24544443C(uint64_t a1, unsigned int *a2)
{
  v10 = *a2 - 4;
  v4 = sub_24544736C(a1, &v10);
  v9 = 0;
  if (v4)
  {
    v5 = v4;
    v6 = *(a1 + 8);
    v7 = *(a1 + 12);
  }

  else
  {
    v4 = sub_245447124(a1, &v9);
    if (v4)
    {
      v5 = v4;
      v6 = *(a1 + 8);
      v7 = *(a1 + 12);
    }

    else
    {
      v4 = sub_24544450C(a1, a2 + 20);
      if (!v4)
      {
        return sub_245447184(a1, &v9);
      }

      v5 = v4;
      v6 = *(a1 + 8);
      v7 = *(a1 + 12);
    }
  }

  sub_245445D98(v4, v6, v7, "asn1PE_PosPayLoadVer2");
  return v5;
}

uint64_t sub_24544450C(uint64_t a1, unsigned int *a2)
{
  sub_245445FB0(a1, 0);
  v4 = *(a1 + 16);
  if (*(a1 + 16))
  {
    v5 = *(a1 + 8);
    v6 = *(a1 + 12);
    v7 = *(a1 + 16);
  }

  else
  {
    sub_245445FB0(a1, *a2);
    v4 = *(a1 + 16);
    if (*(a1 + 16))
    {
      v5 = *(a1 + 8);
      v6 = *(a1 + 12);
      v7 = *(a1 + 16);
    }

    else
    {
      sub_245445FB0(a1, a2[1]);
      v4 = *(a1 + 16);
      if (*(a1 + 16) || *a2 && (v4 = sub_245444620(a1, a2 + 1), v4))
      {
        v5 = *(a1 + 8);
        v6 = *(a1 + 12);
        v7 = v4;
      }

      else
      {
        if (!a2[1])
        {
          return 0;
        }

        v4 = 1;
        *(a1 + 16) = 1;
        sub_245445D98(1u, *(a1 + 8), *(a1 + 12), "asn1PE_PosPayLoadVer2Extension");
        v5 = *(a1 + 8);
        v6 = *(a1 + 12);
        v7 = 1;
      }
    }
  }

  sub_245445D98(v7, v5, v6, "asn1PE_PosPayLoadVer2Extension");
  return v4;
}

uint64_t sub_245444620(uint64_t a1, void *a2)
{
  v4 = 0;
  v5 = a2[1] - *a2;
  if (v5)
  {
    v6 = 0xAAAAAAAAAAAAAAABLL * (v5 >> 3);
    if (v6 <= 1)
    {
      v6 = 1;
    }

    v7 = (*a2 + 8);
    do
    {
      if (*(v7 - 1) != *v7)
      {
        ++v4;
      }

      v7 += 3;
      --v6;
    }

    while (v6);
  }

  v8 = sub_2454460B8(a1, 1, 3, v4);
  if (v8)
  {
    v9 = v8;
    v10 = *(a1 + 8);
    v11 = *(a1 + 12);
    goto LABEL_10;
  }

  v13 = *a2;
  v12 = a2[1];
  if (v12 == *a2)
  {
    return 0;
  }

  v14 = 0;
  v15 = 0;
  while (1)
  {
    v16 = *(v13 + v14);
    v17 = *(v13 + v14 + 8);
    if (v16 != v17)
    {
      break;
    }

LABEL_16:
    ++v15;
    v14 += 24;
    if (v15 >= 0xAAAAAAAAAAAAAAABLL * ((v12 - v13) >> 3))
    {
      return 0;
    }
  }

  v8 = sub_245446770(a1, 1, 60000, v17 - v16, (v13 + v14), 0, 0);
  if (!v8)
  {
    v13 = *a2;
    v12 = a2[1];
    goto LABEL_16;
  }

  v9 = v8;
  v10 = *(a1 + 8);
  v11 = *(a1 + 12);
LABEL_10:
  sub_245445D98(v8, v10, v11, "asn1PE_PosPayLoad_lppPayload");
  return v9;
}

void sub_245444754(uint64_t *a1)
{
  v3 = *a1;
  v2 = a1[1];
  if (v2 != *a1)
  {
    v4 = a1[1];
    do
    {
      v6 = *(v4 - 24);
      v4 -= 24;
      v5 = v6;
      if (v6)
      {
        *(v2 - 16) = v5;
        operator delete(v5);
      }

      v2 = v4;
    }

    while (v4 != v3);
  }

  a1[1] = v3;
}

uint64_t sub_2454447AC(void *a1, uint64_t a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = sub_24544483C(a1, a2);
  }

  else
  {
    sub_2454447EC(a1, a2);
    result = v3 + 24;
  }

  a1[1] = result;
  return result;
}

uint64_t *sub_2454447EC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  *v3 = 0;
  v3[1] = 0;
  v3[2] = 0;
  result = sub_2453AE4E0(v3, *a2, *(a2 + 8), *(a2 + 8) - *a2);
  *(a1 + 8) = v3 + 3;
  return result;
}

uint64_t sub_24544483C(void *a1, uint64_t a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
    sub_2453A631C();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0x5555555555555556 * ((a1[2] - *a1) >> 3);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 3) >= 0x555555555555555)
  {
    v6 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v6 = v3;
  }

  v17 = a1;
  if (v6)
  {
    sub_245444978(a1, v6);
  }

  v7 = 24 * v2;
  v14 = 0;
  v15 = v7;
  v16 = 24 * v2;
  *v7 = 0;
  *(v7 + 8) = 0;
  *(v7 + 16) = 0;
  sub_2453AE4E0((24 * v2), *a2, *(a2 + 8), *(a2 + 8) - *a2);
  *&v16 = v16 + 24;
  v8 = a1[1];
  v9 = (v15 + *a1 - v8);
  sub_2454449D0(a1, *a1, v8, v9);
  v10 = *a1;
  *a1 = v9;
  v11 = a1[2];
  v13 = v16;
  *(a1 + 1) = v16;
  *&v16 = v10;
  *(&v16 + 1) = v11;
  v14 = v10;
  v15 = v10;
  sub_245444B14(&v14);
  return v13;
}

void sub_245444964(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_245444B14(va);
  _Unwind_Resume(a1);
}

void sub_245444978(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  sub_2453AABB4();
}

uint64_t sub_2454449D0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v12 = a4;
  v11 = a4;
  v9[0] = a1;
  v9[1] = &v11;
  v9[2] = &v12;
  if (a2 == a3)
  {
    v10 = 1;
  }

  else
  {
    v5 = a2;
    v6 = a2;
    do
    {
      *a4 = 0;
      a4[1] = 0;
      a4[2] = 0;
      *a4 = *v6;
      a4[2] = *(v6 + 16);
      *v6 = 0;
      *(v6 + 8) = 0;
      *(v6 + 16) = 0;
      v6 += 24;
      a4 += 3;
    }

    while (v6 != a3);
    v12 = a4;
    v10 = 1;
    do
    {
      v7 = *v5;
      if (*v5)
      {
        *(v5 + 8) = v7;
        operator delete(v7);
      }

      v5 += 24;
    }

    while (v5 != a3);
  }

  return sub_245444A8C(v9);
}

uint64_t sub_245444A8C(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_245444AC4(a1);
  }

  return a1;
}

void sub_245444AC4(uint64_t a1)
{
  v1 = **(a1 + 16);
  v2 = **(a1 + 8);
  if (v1 != v2)
  {
    v3 = **(a1 + 16);
    do
    {
      v5 = *(v3 - 24);
      v3 -= 24;
      v4 = v5;
      if (v5)
      {
        *(v1 - 16) = v4;
        operator delete(v4);
      }

      v1 = v3;
    }

    while (v3 != v2);
  }
}

uint64_t sub_245444B14(uint64_t a1)
{
  sub_245444B4C(a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_245444B4C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  while (v2 != a2)
  {
    v5 = *(v2 - 24);
    *(a1 + 16) = v2 - 24;
    if (v5)
    {
      *(v2 - 16) = v5;
      operator delete(v5);
      v2 = *(a1 + 16);
    }

    else
    {
      v2 -= 24;
    }
  }
}

void sub_245444BAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v20 = *MEMORY[0x277D85DE8];
  sub_24547473C();
  v14 = 0;
  v15 = 0;
  v16 = 0;
  if (a3)
  {
    v7 = *(a3 + 32);
    v6 = a3 + 32;
    v5 = v7;
    if (v6 != &v14)
    {
      v8 = *(v6 + 8);
      if (v5 != v8)
      {
        sub_2453ADF3C(&v14, v5, v8, v8 - v5);
        v9 = v14;
        v10 = v15;
        if (v14 != v15)
        {
          v11 = *(a2 + 8);
          __p = 0;
          v18 = 0;
          v19 = 0;
          *(v11 + 776) = 4;
          sub_2453ADF3C(&__p, v9, v10, v10 - v9);
          sub_2454447AC((v11 + 864), &__p);
          *(v11 + 856) = 1;
          *(v11 + 8) = 1;
          if (__p)
          {
            v18 = __p;
            operator delete(__p);
          }

          goto LABEL_11;
        }
      }
    }
  }

  else
  {
    v12 = qword_2813CF018;
    if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_ERROR))
    {
      __p = 0x20104000100;
      _os_log_error_impl(&dword_245396000, v12, OS_LOG_TYPE_ERROR, "#gpsd #supl Error code %d", &__p, 8u);
    }
  }

  v13 = qword_2813CF018;
  if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_ERROR))
  {
    __p = 0x20104000100;
    _os_log_error_impl(&dword_245396000, v13, OS_LOG_TYPE_ERROR, "#gpsd #supl Error code %d", &__p, 8u);
  }

LABEL_11:
  if (v14)
  {
    v15 = v14;
    operator delete(v14);
  }
}

void sub_245444D50(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, void *a13, uint64_t a14)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_245444D84(uint64_t a1, uint64_t a2)
{
  v15 = *MEMORY[0x277D85DE8];
  sub_24547473C();
  v9 = 0;
  v10 = 0;
  v11 = 0;
  v3 = sub_245443760();
  if (&v9 == v3 || (v4 = *(v3 + 8), *v3 == v4) || (sub_2453ADF3C(&v9, *v3, v4, &v4[-*v3]), v5 = v9, v6 = v10, v9 == v10))
  {
    v8 = qword_2813CF018;
    if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_ERROR))
    {
      __p = 0x20104000100;
      _os_log_error_impl(&dword_245396000, v8, OS_LOG_TYPE_ERROR, "#gpsd #supl Error code %d", &__p, 8u);
    }
  }

  else
  {
    v7 = *(a2 + 8);
    __p = 0;
    v13 = 0;
    v14 = 0;
    *(v7 + 776) = 4;
    sub_2453ADF3C(&__p, v5, v6, v6 - v5);
    sub_2454447AC((v7 + 864), &__p);
    *(v7 + 856) = 1;
    *(v7 + 8) = 1;
    if (__p)
    {
      v13 = __p;
      operator delete(__p);
    }
  }

  if (v9)
  {
    v10 = v9;
    operator delete(v9);
  }
}

void sub_245444EC8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a10)
  {
    operator delete(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_245444EFC(unsigned __int8 *a1, uint64_t a2)
{
  v29[20] = *MEMORY[0x277D85DE8];
  if (a1 && (v2 = a2) != 0)
  {
    v3 = a1;
    memset(&__str, 0, sizeof(__str));
    v20 = *MEMORY[0x277D82818];
    v4 = *(MEMORY[0x277D82818] + 64);
    v5 = *(MEMORY[0x277D82818] + 72);
    do
    {
      sub_2453A2FDC(buf);
      v6 = *&v25[2];
      *(&v27[-1].__locale_ + *(*&v25[2] - 24)) = *(&v27[-1].__locale_ + *(*&v25[2] - 24)) & 0xFFFFFFB5 | 8;
      *(&v27[1].__locale_ + *(v6 - 24)) = 2;
      v7 = &v25[*(v6 - 24) + 2];
      if (*(v7 + 36) == -1)
      {
        std::ios_base::getloc(&v25[*(v6 - 24) + 2]);
        v8 = std::locale::use_facet(&v21, MEMORY[0x277D82680]);
        (v8->__vftable[2].~facet_0)(v8, 32);
        std::locale::~locale(&v21);
      }

      *(v7 + 36) = 48;
      MEMORY[0x245D69F60](&v25[2], *v3);
      std::stringbuf::str();
      if ((v21.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v9 = &v21;
      }

      else
      {
        v9 = v21.__r_.__value_.__r.__words[0];
      }

      if ((v21.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(v21.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = v21.__r_.__value_.__l.__size_;
      }

      std::string::append(&__str, v9, size);
      if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v21.__r_.__value_.__l.__data_);
      }

      *buf = v20;
      *&buf[*(v20 - 24)] = v4;
      *&v25[2] = v5;
      v26 = MEMORY[0x277D82878] + 16;
      if (v28 < 0)
      {
        operator delete(v27[7].__locale_);
      }

      v26 = MEMORY[0x277D82868] + 16;
      std::locale::~locale(v27);
      std::iostream::~basic_iostream();
      MEMORY[0x245D6A070](v29);
      ++v3;
      --v2;
    }

    while (v2);
    v11 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
    {
      v12 = __str.__r_.__value_.__l.__size_ / 0x1F4;
      v13 = __str.__r_.__value_.__l.__size_ % 0x1F4;
    }

    else
    {
      v12 = 0;
      v13 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
    }

    v15 = 0;
    if (v13)
    {
      v16 = v12 + 1;
    }

    else
    {
      v16 = v12;
    }

    v17 = 1;
    if ((*(&__str.__r_.__value_.__s + 23) & 0x80) != 0)
    {
      goto LABEL_28;
    }

    while (v15 < v11)
    {
      while (1)
      {
        std::string::basic_string(&v21, &__str, v15, 0x1F4uLL, buf);
        v18 = qword_2813CF018;
        if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_DEFAULT))
        {
          if ((v21.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v19 = &v21;
          }

          else
          {
            v19 = v21.__r_.__value_.__r.__words[0];
          }

          *buf = 134546179;
          *&buf[4] = v17;
          v24 = 2053;
          *v25 = v16;
          *&v25[8] = 2085;
          v26 = v19;
          _os_log_impl(&dword_245396000, v18, OS_LOG_TYPE_DEFAULT, "#gpsd,#supl,#posp,#pdu,%{sensitive}zu,of,%{sensitive}zu,%{sensitive}s", buf, 0x20u);
        }

        if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v21.__r_.__value_.__l.__data_);
        }

        v11 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
        v15 += 500;
        ++v17;
        if ((*(&__str.__r_.__value_.__s + 23) & 0x80) == 0)
        {
          break;
        }

LABEL_28:
        if (v15 >= __str.__r_.__value_.__l.__size_)
        {
          operator delete(__str.__r_.__value_.__l.__data_);
          return;
        }
      }
    }
  }

  else
  {
    v14 = qword_2813CF018;
    if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_245396000, v14, OS_LOG_TYPE_ERROR, "#gpsd,#supl,#posp,PDU is empty", buf, 2u);
    }
  }
}

void sub_245445378(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::locale a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, char a25)
{
  std::locale::~locale(&a13);
  sub_245445890(&a25, MEMORY[0x277D82818]);
  MEMORY[0x245D6A070](v25 + 128);
  if (a24 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_2454453E4(uint64_t *a1, _BYTE *a2, uint64_t a3, uint64_t a4)
{
  v16 = *MEMORY[0x277D85DE8];
  v7 = sub_24547473C();
  if (!v7)
  {
    v13 = qword_2813CF018;
    if (!os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_ERROR))
    {
      return;
    }

    v14 = 67109120;
    v15 = 513;
LABEL_19:
    _os_log_error_impl(&dword_245396000, v13, OS_LOG_TYPE_ERROR, "#gpsd #supl Error code %d", &v14, 8u);
    return;
  }

  if (!*a1)
  {
    v13 = qword_2813CF018;
    if (!os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_ERROR))
    {
      return;
    }

    v14 = 67109120;
    v15 = 513;
    goto LABEL_19;
  }

  if (*a2 != 2)
  {
    v13 = qword_2813CF018;
    if (!os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_ERROR))
    {
      return;
    }

    v14 = 67109120;
    v15 = 514;
    goto LABEL_19;
  }

  v8 = v7;
  v9 = sub_24547547C(v7, *(*a1 + 376));
  if (v9 && !*(v9 + 20))
  {
    sub_245475F5C(v8, a4, *(*(v9 + 48) + 20), *(*a1 + 596));
  }

  v10 = operator new(0x168uLL, MEMORY[0x277D826F0]);
  if (!v10)
  {
    v13 = qword_2813CF018;
    if (!os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_ERROR))
    {
      return;
    }

    v14 = 67109120;
    v15 = 513;
    goto LABEL_19;
  }

  v11 = v10;
  sub_245473C70(v10);
  *v11 = &unk_28585A560;
  sub_24547211C(*a1, v11);
  v12 = *a1;

  sub_245473DF8(v11, 0, v12);
}

uint64_t sub_245445650(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  result = sub_245445AC4();
  v6 = atomic_load((result + 1));
  v7 = v6 == 255;
  v8 = 1;
  if (v7)
  {
    v8 = 2;
  }

  v9 = atomic_load((result + v8));
  if (v9 == 2)
  {
    *(a2 + 44) = 0;
    sub_24547473C();
    v10 = sub_245479234();
    result = sub_245479750(v10, v3);
    *(a2 + 60) = result != 0;
    if (result)
    {
      *(a2 + 56) = 1;
      *(a2 + 67) = 2832;
      *(a2 + 69) = 0;
    }

    else
    {
      *(a2 + 56) = 0;
    }
  }

  return result;
}

void sub_2454456DC(uint64_t a1, uint64_t a2)
{
  if (a2 && !*(a2 + 32))
  {
    if (a1 != a2)
    {
      sub_2453ADF3C((a1 + 8), *(a2 + 8), *(a2 + 16), *(a2 + 16) - *(a2 + 8));
    }

    sub_245444EFC(*(a2 + 8), *(a2 + 16) - *(a2 + 8));
  }

  *(a1 + 32) = 0;
}

uint64_t sub_245445734(_DWORD *a1)
{
  sub_24547473C();
  result = sub_245445AC4();
  v3 = atomic_load((result + 1));
  v4 = v3 == 255;
  v5 = 1;
  if (v4)
  {
    v5 = 2;
  }

  v6 = atomic_load((result + v5));
  if (v6 >= 2)
  {
    v7 = sub_245479234();
    result = sub_245479750(v7, *(*a1 + 596));
    if (result)
    {
      v8 = *(*a1 + 380);
      v9 = sub_24547473C();
      sub_24547547C(v9, *(*a1 + 376));
      v10 = sub_24546A68C();
      result = sub_24546B308(v10, *(*a1 + 376), v8 == 2);
      a1[8] = result == 0;
    }
  }

  return result;
}

void sub_2454457F4(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  sub_24547473C();
  v4 = sub_245445AC4();
  v5 = atomic_load((v4 + 1));
  v6 = v5 == 255;
  v7 = 1;
  if (v6)
  {
    v7 = 2;
  }

  v8 = atomic_load((v4 + v7));
  if (v8 >= 2)
  {
    v9 = sub_245479234();
    if (sub_245479750(v9, v2))
    {
      v10 = *(*a1 + 380) == 2;
      sub_24546A68C();
      v11 = *(*a1 + 8);

      sub_24547A384(v11, v10);
    }
  }
}

uint64_t sub_245445890(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  *a1 = *a2;
  *(a1 + *(v3 - 24)) = a2[8];
  *(a1 + 16) = a2[9];
  *(a1 + 24) = MEMORY[0x277D82878] + 16;
  if (*(a1 + 111) < 0)
  {
    operator delete(*(a1 + 88));
  }

  *(a1 + 24) = MEMORY[0x277D82868] + 16;
  std::locale::~locale((a1 + 32));

  return std::iostream::~basic_iostream();
}

uint64_t sub_2454459E0(uint64_t a1, _BYTE *a2)
{
  v4 = sub_245446038(a1);
  v5 = *(a1 + 16);
  v12 = 0;
  if (v5)
  {
    v6 = 1;
  }

  else
  {
    v6 = v4 == 0;
  }

  if (v6)
  {
    v10 = sub_245446150(a1, 0, 1u, &v12);
    if (v10)
    {
      v7 = v10;
      v8 = *(a1 + 8);
      v9 = *(a1 + 12);
LABEL_13:
      sub_245445D98(v10, v8, v9, "asn1PD_TriggerType");
      return v7;
    }
  }

  else
  {
    v10 = sub_24544742C(a1, &v12);
    if (v10)
    {
      v7 = v10;
      v8 = *(a1 + 8);
      v9 = *(a1 + 12);
      goto LABEL_13;
    }
  }

  if (*a2 > 1u)
  {
    v7 = 4;
    *(a1 + 16) = 4;
    v8 = *(a1 + 8);
    v9 = *(a1 + 12);
    LODWORD(v10) = 4;
    goto LABEL_13;
  }

  v7 = 0;
  *a2 = v12;
  return v7;
}

uint64_t sub_245445AC4()
{
  v4 = *MEMORY[0x277D85DE8];
  if (qword_2813CED38 != -1)
  {
    dispatch_once(&qword_2813CED38, &unk_28585A4A8);
  }

  result = qword_2813CED30;
  if (!qword_2813CED30)
  {
    v1 = qword_2813CF018;
    if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_ERROR))
    {
      v2 = 136315138;
      v3 = "GetInstance";
      _os_log_error_impl(&dword_245396000, v1, OS_LOG_TYPE_ERROR, "%s", &v2, 0xCu);
    }

    __assert_rtn("GetInstance", "SuplVersionNegotiation.cpp", 44, "false && Memory allocation failure");
  }

  return result;
}

_DWORD *sub_245445BBC()
{
  result = operator new(4uLL, MEMORY[0x277D826F0]);
  if (result)
  {
    *result = 196352;
  }

  qword_2813CED30 = result;
  return result;
}

BOOL sub_245445BF8(unsigned int a1, unsigned int a2)
{
  v4 = sub_245445AC4();
  result = 0;
  v6 = atomic_load((v4 + 1));
  v7 = v6 == 255;
  v8 = 1;
  if (v7)
  {
    v8 = 2;
  }

  v9 = atomic_load((v4 + v8));
  if (a1 >= a2 && a2 <= 2 && v9 <= 2)
  {
    v10 = atomic_load((v4 + 3));
    if ((v10 & 1) == 0)
    {
      return v9 == a1;
    }

    if (a1 > 2)
    {
      if (v9 < a2)
      {
        return 0;
      }

      atomic_store(v9, (v4 + 1));
    }

    else
    {
      atomic_store(a1, (v4 + 1));
    }

    return 1;
  }

  return result;
}

void sub_245445CA4()
{
  v8 = *MEMORY[0x277D85DE8];
  v0 = sub_245445AC4();
  v1 = atomic_load(v0 + 1);
  v2 = v1 == 255;
  v3 = 1;
  if (v2)
  {
    v3 = 2;
  }

  v4 = atomic_load(&v0[v3]);
  if (v4 > 2)
  {
    v6 = qword_2813CF018;
    if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_ERROR))
    {
      v7[0] = 67109120;
      v7[1] = 770;
      _os_log_error_impl(&dword_245396000, v6, OS_LOG_TYPE_ERROR, "#gpsd #supl Error code %d", v7, 8u);
    }
  }

  else
  {
    v5 = atomic_load(v0 + 3);
    if (v5)
    {
      atomic_store(2u, v0 + 2);
    }

    atomic_store(0xFFu, v0 + 1);
  }
}

void sub_245445D98(unsigned int a1, int a2, int a3, char *__s)
{
  v26 = *MEMORY[0x277D85DE8];
  v16[0] = 0;
  v16[1] = 0;
  v17 = 0;
  v8 = strlen(__s);
  if (v8 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_2453A59DC();
  }

  v9 = v8;
  if (v8 >= 0x17)
  {
    operator new();
  }

  v15 = v8;
  if (v8)
  {
    memcpy(&__p, __s, v8);
  }

  *(&__p + v9) = 0;
  if (a1 >= 7)
  {
    v10 = "UNDEFINED_STATUS";
  }

  else
  {
    v10 = off_278E36E38[a1];
  }

  MEMORY[0x245D69EE0](v16, v10);
  v11 = qword_2813CF018;
  if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_ERROR))
  {
    p_p = &__p;
    if (v15 < 0)
    {
      p_p = __p;
    }

    v13 = v16;
    if (v17 < 0)
    {
      v13 = v16[0];
    }

    *buf = 136315906;
    v19 = p_p;
    v20 = 2080;
    v21 = v13;
    v22 = 1024;
    v23 = a2;
    v24 = 1024;
    v25 = a3;
    _os_log_error_impl(&dword_245396000, v11, OS_LOG_TYPE_ERROR, "Func,%s,Status,%s,CurByte,%u,NextBit,%u", buf, 0x22u);
  }

  if (v15 < 0)
  {
    operator delete(__p);
  }

  if (SHIBYTE(v17) < 0)
  {
    operator delete(v16[0]);
  }
}

void sub_245445F7C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  _Unwind_Resume(exception_object);
}

void sub_245445FB0(uint64_t **a1, int a2)
{
  v3 = *(a1 + 2);
  v4 = **a1;
  if ((*a1)[1] - v4 <= v3)
  {
    *(a1 + 16) = 2;
    sub_245445D98(2u, v3, *(a1 + 3), "AddBitToBuffer");
  }

  else
  {
    v5 = *(a1 + 3);
    v6 = *(v4 + v3);
    v7 = v6 & (-129 >> v5);
    v8 = v6 | (0x80u >> v5);
    if (a2)
    {
      v9 = v8;
    }

    else
    {
      v9 = v7;
    }

    *(v4 + v3) = v9;
    v10 = *(a1 + 3) + 1;
    *(a1 + 3) = v10;
    if (v10 >= 8)
    {
      a1[1] = (*(a1 + 2) + 1);
    }
  }
}

uint64_t sub_245446038(uint64_t **a1)
{
  v1 = *(a1 + 2);
  v2 = **a1;
  if ((*a1)[1] - v2 <= v1)
  {
    *(a1 + 16) = 2;
    sub_245445D98(2u, v1, *(a1 + 3), "GetBitFromBuffer");
    return 0;
  }

  else
  {
    v3 = *(a1 + 3);
    v4 = ((*(v2 + v1) << v3++) >> 7) & 1;
    *(a1 + 3) = v3;
    if (v3 >= 8)
    {
      a1[1] = (v1 + 1);
    }
  }

  return v4;
}

uint64_t sub_2454460B8(uint64_t a1, int a2, int a3, int a4)
{
  if (a3 < a2)
  {
    v5 = 1;
LABEL_3:
    *(a1 + 16) = v5;
    sub_245445D98(v5, *(a1 + 8), *(a1 + 12), "EncodeInteger");
    return *(a1 + 16);
  }

  v5 = 4;
  v7 = a4 - a2;
  if (a4 < a2 || a4 > a3)
  {
    goto LABEL_3;
  }

  if (a3 != a2)
  {
    v8 = 1 << (__clz(a3 - a2) ^ 0x1F);
    do
    {
      sub_245445FB0(a1, v8 & v7);
      v9 = v8 >= 2;
      v8 >>= 1;
    }

    while (v9);
  }

  return *(a1 + 16);
}

uint64_t sub_245446150(uint64_t a1, int a2, unsigned int a3, _BYTE *a4)
{
  if ((a3 - a2) < 1)
  {
    v12 = 5;
LABEL_12:
    sub_245445D98(v12, *(a1 + 8), *(a1 + 12), "DecodeInteger");
    return v12;
  }

  v7 = a2;
  v8 = 0;
  v9 = 1 << -__clz((a3 - a2) >> 1);
  do
  {
    if (sub_245446038(a1))
    {
      v10 = v9;
    }

    else
    {
      v10 = 0;
    }

    v8 |= v10;
    v11 = v9 > 1;
    v9 >>= 1;
  }

  while (v11);
  v12 = *(a1 + 16);
  if (*(a1 + 16))
  {
    goto LABEL_12;
  }

  *a4 = v7 + v8;
  v12 = 4;
  if (((v7 + v8) & 0x100) != 0 || a3 < (v7 + v8))
  {
    goto LABEL_12;
  }

  return 0;
}

uint64_t sub_245446218(uint64_t a1, int a2, unsigned int a3, _WORD *a4)
{
  if ((a3 - a2) < 1)
  {
    LODWORD(result) = 5;
    v13 = 5;
LABEL_12:
    sub_245445D98(result, *(a1 + 8), *(a1 + 12), "DecodeInteger");
    return v13;
  }

  v8 = 0;
  v9 = 1 << -__clz((a3 - a2) >> 1);
  do
  {
    if (sub_245446038(a1))
    {
      v10 = v9;
    }

    else
    {
      v10 = 0;
    }

    v8 |= v10;
    v11 = v9 > 1;
    v9 >>= 1;
  }

  while (v11);
  result = *(a1 + 16);
  v13 = result;
  if (*(a1 + 16))
  {
    goto LABEL_12;
  }

  v14 = a2 + v8;
  *a4 = a2 + v8;
  v13 = 4;
  if ((v14 & 0x10000) != 0 || a3 < v14)
  {
    goto LABEL_12;
  }

  return result;
}

uint64_t sub_2454462E0(uint64_t a1, int a2, int a3, _DWORD *a4)
{
  if (a3 - a2 < 1)
  {
    v12 = 5;
  }

  else
  {
    v8 = 0;
    v9 = 1 << -__clz((a3 - a2) >> 1);
    do
    {
      if (sub_245446038(a1))
      {
        v10 = v9;
      }

      else
      {
        v10 = 0;
      }

      v8 |= v10;
      v11 = v9 > 1;
      v9 >>= 1;
    }

    while (v11);
    v12 = *(a1 + 16);
    if (!*(a1 + 16))
    {
      *a4 = v8 + a2;
      if (v8 + a2 <= a3)
      {
        return 0;
      }

      v12 = 4;
    }
  }

  sub_245445D98(v12, *(a1 + 8), *(a1 + 12), "DecodeInteger");
  return v12;
}

uint64_t sub_2454463A8(uint64_t a1, int a2, unsigned int a3, _DWORD *a4)
{
  if ((a3 - a2) < 1)
  {
    v8 = 0;
  }

  else
  {
    v8 = 0;
    v9 = 1 << -__clz((a3 - a2) >> 1);
    do
    {
      if (sub_245446038(a1))
      {
        v10 = v9;
      }

      else
      {
        v10 = 0;
      }

      v8 |= v10;
      v11 = v9 > 1;
      v9 >>= 1;
    }

    while (v11);
    v12 = *(a1 + 16);
    if (*(a1 + 16))
    {
      goto LABEL_13;
    }
  }

  v12 = 4;
  *a4 = v8 + a2;
  if (__CFADD__(v8, a2) || v8 + a2 > a3)
  {
LABEL_13:
    sub_245445D98(v12, *(a1 + 8), *(a1 + 12), "DecodeInteger");
    return v12;
  }

  return 0;
}

uint64_t sub_245446474(uint64_t a1, int a2, int a3, uint64_t a4, void *a5, int a6)
{
  if (*a5 == a5[1])
  {
    *(a1 + 16) = 1;
    v10 = (a1 + 16);
    sub_245445D98(1u, *(a1 + 8), *(a1 + 12), "EncodeBitString");
    v9 = v10;
  }

  else
  {
    v8 = a4;
    if (!a6)
    {
      sub_2454460B8(a1, a2, a3, a4);
    }

    v9 = (a1 + 16);
    if (!*(a1 + 16))
    {
      sub_245446508(a1, v8, a5, 0);
    }
  }

  return *v9;
}

void sub_245446508(uint64_t **a1, unsigned int a2, void *a3, int a4)
{
  v7 = a2 >> 3;
  v8 = a2 & 7;
  if (a2 >= 8)
  {
    v9 = 0;
    do
    {
      if (v9 >= a3[1] - *a3)
      {
        break;
      }

      v10 = 0;
      v11 = *(*a3 + v9);
      if (a4)
      {
        v11 = (*(*a3 + v9) >> 4) | (16 * *(*a3 + v9));
      }

      v12 = v11;
      do
      {
        sub_245445FB0(a1, (0x80u >> v10++) & v12);
      }

      while (v10 != 8);
      ++v9;
    }

    while (v9 != v7);
  }

  if (v8 && a3[1] - *a3 > v7)
  {
    v13 = *(*a3 + v7);
    if (a4)
    {
      v13 = (*(*a3 + v7) >> 4) | (16 * *(*a3 + v7));
    }

    v14 = v13;
    v15 = 8 - v8;
    do
    {
      sub_245445FB0(a1, (0x80u >> v15++) & v14);
      --v8;
    }

    while (v8);
  }
}

uint64_t **sub_245446614(uint64_t **result, unsigned int a2, void *a3, int a4)
{
  v6 = result;
  v7 = a2 >> 3;
  v8 = a2 & 7;
  a3[1] = *a3;
  if (a2 >= 8)
  {
    v9 = 0;
    do
    {
      v19 = 0;
      sub_2453A9954(a3, &v19);
      for (i = 0; i != 8; ++i)
      {
        result = sub_245446038(v6);
        v11 = *(*a3 + v9);
        v12 = v11 | (0x80u >> i);
        v13 = v11 & (-129 >> i);
        if (result)
        {
          LOBYTE(v13) = v12;
        }

        *(*a3 + v9) = v13;
      }

      if (a4)
      {
        *(*a3 + v9) = (*(*a3 + v9) >> 4) | (16 * *(*a3 + v9));
      }

      ++v9;
    }

    while (v9 != v7);
  }

  if (v8)
  {
    v18 = 0;
    sub_2453A9954(a3, &v18);
    v14 = 8 - v8;
    do
    {
      result = sub_245446038(v6);
      v15 = *(*a3 + v7);
      v16 = v15 | (0x80u >> v14);
      v17 = v15 & (-129 >> v14);
      if (result)
      {
        LOBYTE(v17) = v16;
      }

      *(*a3 + v7) = v17;
      ++v14;
      --v8;
    }

    while (v8);
    if (a4)
    {
      *(*a3 + v7) = (*(*a3 + v7) >> 4) | (16 * *(*a3 + v7));
    }
  }

  return result;
}

uint64_t sub_245446770(uint64_t a1, int a2, int a3, int a4, void *a5, int a6, int a7)
{
  if (*a5 == a5[1])
  {
    *(a1 + 16) = 1;
    v11 = (a1 + 16);
    sub_245445D98(1u, *(a1 + 8), *(a1 + 12), "EncodeOctetString");
  }

  else
  {
    if (!a6)
    {
      sub_2454460B8(a1, a2, a3, a4);
    }

    sub_245446508(a1, 8 * a4, a5, a7);
    v11 = (a1 + 16);
  }

  return *v11;
}

uint64_t sub_2454467FC(uint64_t a1, int a2, unsigned int a3, int a4, void *a5, int a6, uint64_t a7, int a8)
{
  if (a3 > 0xFF || !a7 || !a6 || *a5 == a5[1])
  {
    v12 = 1;
    *(a1 + 16) = 1;
    sub_245445D98(1u, *(a1 + 8), *(a1 + 12), "EncodeVisibleStringSubType");
    return v12;
  }

  if (a8)
  {
    return 5;
  }

  v15 = sub_2454460B8(a1, a2, a3, a4);
  v12 = v15;
  __p = 0;
  v21 = 0;
  v22 = 0;
  if (a4 && !v15)
  {
    v16 = 0;
    do
    {
      if (v16 >= a5[1] - *a5)
      {
        break;
      }

      v17 = 0;
      while (*(*a5 + v16) != *(a7 + v17))
      {
        if (a6 == ++v17)
        {
          v12 = 4;
          sub_245445D98(4u, *(a1 + 8), *(a1 + 12), "EncodeVisibleStringSubType");
          goto LABEL_23;
        }
      }

      v19 = v17;
      sub_2453A9954(&__p, &v19);
      ++v16;
    }

    while (v16 != a4);
    goto LABEL_20;
  }

  if (!v15)
  {
LABEL_20:
    v18 = 32 - __clz(a6 - 1);
    if (a6 == 1)
    {
      LOBYTE(v18) = 0;
    }

    sub_245446994(a1, v18 * a4, v18, &__p);
    v12 = *(a1 + 16);
  }

LABEL_23:
  if (__p)
  {
    v21 = __p;
    operator delete(__p);
  }

  return v12;
}

void sub_245446970(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_245446994(uint64_t **a1, unsigned int a2, char a3, void *a4)
{
  if (a2)
  {
    v6 = 0;
    v7 = 1 << (a3 - 1);
    v8 = a2;
    v9 = v7;
    do
    {
      if (a4[1] - *a4 <= v6)
      {
        break;
      }

      v10 = v6;
      sub_245445FB0(a1, v9 & *(*a4 + v6));
      v11 = v9 >> 1 == 0;
      if (v9 >> 1)
      {
        v9 >>= 1;
      }

      else
      {
        v9 = v7;
      }

      v6 = v11 ? v10 + 1 : v10;
      --v8;
    }

    while (v8);
  }
}

uint64_t sub_245446A2C(uint64_t a1, int a2, unsigned int a3, _DWORD *a4, void *a5, unsigned int a6, uint64_t a7, int a8)
{
  v8 = a1;
  if (a3 <= 0xFF && a6 && a7)
  {
    if (!a8)
    {
      sub_2454463A8(a1, a2, a3, a4);
    }

    if (a6 != 1)
    {
      v13 = (32 - __clz(a6 - 1));
      __p = 0;
      v28 = 0;
      v29 = 0;
      v26 = v8;
      sub_245446C58(v8, *a4 * v13, v13, &__p);
      v14 = *a5;
      a5[1] = *a5;
      if (*a4)
      {
        v15 = 0;
        while (1)
        {
          v16 = __p;
          if (v15 >= v28 - __p)
          {
            break;
          }

          if (*(__p + v15) > a6)
          {
            *(v26 + 16) = 4;
            sub_245445D98(4u, *(v26 + 8), *(v26 + 12), "DecodeVisibleStringSubType");
            goto LABEL_27;
          }

          v17 = *(a7 + *(__p + v15));
          v18 = a5[2];
          if (v14 >= v18)
          {
            v19 = *a5;
            v20 = &v14[-*a5];
            v21 = (v20 + 1);
            if ((v20 + 1) < 0)
            {
              sub_2453A631C();
            }

            v22 = v18 - v19;
            if (2 * v22 > v21)
            {
              v21 = 2 * v22;
            }

            if (v22 >= 0x3FFFFFFFFFFFFFFFLL)
            {
              v23 = 0x7FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v23 = v21;
            }

            if (v23)
            {
              operator new();
            }

            v24 = &v14[-*a5];
            *v20 = v17;
            v14 = v20 + 1;
            memcpy(0, v19, v24);
            *a5 = 0;
            a5[1] = v20 + 1;
            a5[2] = 0;
            if (v19)
            {
              operator delete(v19);
            }
          }

          else
          {
            *v14++ = v17;
          }

          a5[1] = v14;
          if (++v15 >= *a4)
          {
            goto LABEL_27;
          }
        }
      }

      else
      {
LABEL_27:
        v16 = __p;
      }

      if (v16)
      {
        v28 = v16;
        operator delete(v16);
      }

      v8 = v26;
    }
  }

  else
  {
    *(a1 + 16) = 1;
    sub_245445D98(1u, *(a1 + 8), *(a1 + 12), "DecodeVisibleStringSubType");
  }

  return *(v8 + 16);
}

void sub_245446C34(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t **sub_245446C58(uint64_t **result, unsigned int a2, int a3, void *a4)
{
  if (a3)
  {
    a4[1] = *a4;
    if (a2)
    {
      v5 = result;
      v6 = 0;
      v7 = (1 << (a3 - 1));
      v8 = a2;
      v9 = v7;
      do
      {
        v12 = 0;
        sub_2453A9954(a4, &v12);
        result = sub_245446038(v5);
        if (result)
        {
          v10 = *(*a4 + v6) | v9;
        }

        else
        {
          v10 = *(*a4 + v6) & ~v9;
        }

        *(*a4 + v6) = v10;
        v11 = v9 >= 2;
        if (v9 >= 2)
        {
          v9 >>= 1;
        }

        else
        {
          v9 = v7;
        }

        if (!v11)
        {
          ++v6;
        }

        --v8;
      }

      while (v8);
    }
  }

  return result;
}

uint64_t sub_245446D18(uint64_t a1, int a2, int a3, int a4, void *a5, int a6)
{
  if (*a5 == a5[1])
  {
    *(a1 + 16) = 1;
    v9 = (a1 + 16);
    sub_245445D98(1u, *(a1 + 8), *(a1 + 12), "EncodeVisibleString7");
  }

  else
  {
    if (!a6)
    {
      sub_2454460B8(a1, a2, a3, a4);
    }

    sub_245446994(a1, 7 * a4, 7, a5);
    v9 = (a1 + 16);
  }

  return *v9;
}

uint64_t sub_245446DA4(uint64_t a1, int a2, unsigned int a3, _DWORD *a4, void *a5, int a6)
{
  if (!a6)
  {
    sub_2454463A8(a1, a2, a3, a4);
  }

  sub_245446C58(a1, 7 * *a4, 7, a5);
  return *(a1 + 16);
}

void sub_245446E04(uint64_t a1)
{
  v8 = 0;
  sub_245446E78(a1, &v7);
  if (!v2)
  {
    v3 = v8;
    if (v8)
    {
      v4 = 1;
      do
      {
        if (sub_245446150(a1, 0, 0xFFu, &v6))
        {
          break;
        }
      }

      while (v4++ < v3);
    }
  }
}

int32x2_t sub_245446E78(uint64_t a1, int32x2_t *a2)
{
  v4 = sub_245446038(a1);
  v6 = *(a1 + 16);
  v8 = 0;
  if (!v6)
  {
    if (v4)
    {
      sub_245446038(a1);
      if (*(a1 + 16))
      {
        return result;
      }

      v7 = 0x3FFF;
    }

    else
    {
      v7 = 127;
    }

    if (!sub_2454463A8(a1, 0, v7, &v8))
    {
      a2[1].i32[0] = v8;
      result = vrev64_s32(*(a1 + 8));
      *a2 = result;
    }
  }

  return result;
}

uint64_t sub_245446F04(uint64_t a1, unsigned __int8 *a2, unsigned int a3)
{
  v3 = a3;
  v4 = *a2;
  if (a3 < v4)
  {
    v7 = ~a3;
    do
    {
      if ((*(a2 + 1) >> (v7 + v4)))
      {
        sub_245446E04(a1);
        if (v8)
        {
          v9 = v8;
          sub_245445D98(v8, *(a1 + 8), *(a1 + 12), "SkipSequenceExtensionAddition");
          return v9;
        }

        v4 = *a2;
      }

      ++v3;
      --v7;
    }

    while (v3 < v4);
  }

  return 0;
}

uint64_t sub_245446F9C(uint64_t a1)
{
  v3[0] = 0;
  v4 = 0;
  result = sub_245446FE8(a1, v3);
  if (!result)
  {
    return sub_245446F04(a1, v3, 0);
  }

  return result;
}

uint64_t sub_245446FE8(uint64_t a1, uint64_t a2)
{
  sub_245446038(a1);
  result = *(a1 + 16);
  v7 = 0;
  if (!result)
  {
    result = sub_245446150(a1, 1, 0x40u, &v7);
    v6 = 0;
    if (!result)
    {
      v5 = v7;
      *a2 = v7;
      result = sub_2454463A8(a1, 0, ~(-1 << v5), &v6);
      if (!result)
      {
        *(a2 + 4) = v6;
      }
    }
  }

  return result;
}

void sub_245447070(uint64_t a1)
{
  if (!sub_2454470C8(a1, &v2))
  {

    sub_245446E04(a1);
  }
}

uint64_t sub_2454470C8(uint64_t a1, _BYTE *a2)
{
  sub_245446038(a1);
  result = *(a1 + 16);
  v5 = 0;
  if (!result)
  {
    result = sub_245446150(a1, 0, 0x3Fu, &v5);
    if (!result)
    {
      *a2 = v5;
    }
  }

  return result;
}

uint64_t sub_245447124(uint64_t a1, int32x2_t *a2)
{
  *a2 = vrev64_s32(*(a1 + 8));
  sub_245445FB0(a1, 0);
  result = *(a1 + 16);
  if (!*(a1 + 16))
  {
    v4 = 64;
    do
    {
      sub_245445FB0(a1, 0);
      v5 = v4 > 1;
      v4 >>= 1;
    }

    while (v5);
    return *(a1 + 16);
  }

  return result;
}

uint64_t sub_245447184(uint64_t a1, int32x2_t *a2)
{
  v4 = *(a1 + 12);
  v5 = a2->i32[0] - v4;
  if (a2->i32[0] <= v4)
  {
    v6 = 7;
  }

  else
  {
    v6 = 255;
  }

  v7 = v6 & v5;
  if (!v7 || (result = sub_2454460B8(a1, 0, ~(-1 << v7), 0), !result))
  {
    v9 = *(a1 + 8) - a2->i32[1];
    if ((v9 - 1) >= 0x80)
    {
      v10 = *(a1 + 12);
      v11 = 128;
      do
      {
        sub_245445FB0(a1, 0);
        v12 = v11 > 1;
        v11 >>= 1;
      }

      while (v12);
      result = *(a1 + 16);
      if (*(a1 + 16))
      {
        return result;
      }

      if (v10)
      {
        v13 = v9 - 1;
      }

      else
      {
        v13 = v9;
      }

      v14 = (v13 + 1);
      if (v13 != -1)
      {
        v15 = 0;
        v16 = -v14;
        do
        {
          v17 = (**a1 + *(a1 + 8) + v15);
          *v17 = *(v17 - 1);
          --v15;
        }

        while (v16 != v15);
      }
    }

    v18 = *(a1 + 8);
    *(a1 + 8) = vrev64_s32(*a2);
    if ((v9 - 1) <= 0x7F)
    {
      sub_245445FB0(a1, 0);
      result = *(a1 + 16);
      if (*(a1 + 16))
      {
        return result;
      }

      v19 = 127;
      goto LABEL_22;
    }

    sub_245445FB0(a1, 1);
    result = *(a1 + 16);
    if (!*(a1 + 16))
    {
      sub_245445FB0(a1, 0);
      result = *(a1 + 16);
      if (!*(a1 + 16))
      {
        v19 = 0x3FFF;
LABEL_22:
        sub_2454460B8(a1, 0, v19, v9 - 1);
        result = 0;
        *(a1 + 8) = v18;
      }
    }
  }

  return result;
}

uint64_t sub_2454472F8(uint64_t a1, int a2, int a3)
{
  sub_245445FB0(a1, 0);
  result = *(a1 + 16);
  if (!*(a1 + 16))
  {
    result = sub_2454460B8(a1, 1, 64, a2);
    if (!result)
    {
      return sub_2454460B8(a1, 0, ~(-1 << a2), a3);
    }
  }

  return result;
}

uint64_t sub_24544736C(uint64_t a1, unsigned __int8 *a2)
{
  sub_245445FB0(a1, 0);
  result = *(a1 + 16);
  if (!*(a1 + 16))
  {
    v5 = *a2;

    return sub_2454460B8(a1, 0, 63, v5);
  }

  return result;
}

uint64_t sub_2454473CC(uint64_t a1, int a2)
{
  sub_245445FB0(a1, 0);
  result = *(a1 + 16);
  if (!*(a1 + 16))
  {

    return sub_2454460B8(a1, 0, 63, a2);
  }

  return result;
}

uint64_t sub_24544742C(uint64_t a1, _BYTE *a2)
{
  sub_245446038(a1);
  result = *(a1 + 16);
  if (!*(a1 + 16))
  {

    return sub_245446150(a1, 0, 0x3Fu, a2);
  }

  return result;
}

uint64_t sub_245447488(uint64_t a1, void *a2)
{
  v3 = sub_245446474(a1, 0, 0, 64, a2, 1);
  v4 = v3;
  if (v3)
  {
    sub_245445D98(v3, *(a1 + 8), *(a1 + 12), "asn1PE_Ver");
  }

  return v4;
}

uint64_t sub_2454474E4(uint64_t a1, void *a2)
{
  sub_245446614(a1, 0x40u, a2, 0);
  v3 = *(a1 + 16);
  if (*(a1 + 16))
  {
    sub_245445D98(*(a1 + 16), *(a1 + 8), *(a1 + 12), "asn1PD_Ver");
  }

  return v3;
}

uint64_t sub_245447538(uint64_t a1, unsigned __int8 *a2)
{
  v4 = *a2 - 20;
  sub_245445FB0(a1, v4 < 5);
  v5 = *(a1 + 16);
  if (*(a1 + 16))
  {
    v6 = *(a1 + 8);
    v7 = *(a1 + 12);
    LODWORD(v8) = *(a1 + 16);
LABEL_8:
    sub_245445D98(v8, v6, v7, "asn1PE_StatusCode");
    return v5;
  }

  v9 = *a2;
  if (v4 > 4)
  {
    v8 = sub_2454460B8(a1, 0, 19, v9);
  }

  else
  {
    v8 = sub_2454473CC(a1, (v9 - 20));
  }

  v5 = v8;
  if (v8)
  {
    v6 = *(a1 + 8);
    v7 = *(a1 + 12);
    goto LABEL_8;
  }

  return v5;
}

uint64_t sub_2454475EC(uint64_t a1, _BYTE *a2)
{
  v4 = sub_245446038(a1);
  v5 = *(a1 + 16);
  if (*(a1 + 16))
  {
    v6 = *(a1 + 8);
    v7 = *(a1 + 12);
    v8 = *(a1 + 16);
LABEL_8:
    sub_245445D98(v8, v6, v7, "asn1PD_StatusCode");
    return v5;
  }

  v11 = 0;
  if (v4)
  {
    v5 = sub_24544742C(a1, &v11);
    v9 = v11 + 20;
  }

  else
  {
    v5 = sub_245446150(a1, 0, 0x13u, &v11);
    v9 = v11;
  }

  *a2 = v9;
  if (v5)
  {
    v6 = *(a1 + 8);
    v7 = *(a1 + 12);
    v8 = v5;
    goto LABEL_8;
  }

  return v5;
}

uint64_t sub_2454476A8(uint64_t a1, uint64_t a2)
{
  sub_245445FB0(a1, 0);
  v4 = *(a1 + 16);
  if (*(a1 + 16))
  {
    v5 = *(a1 + 8);
    v6 = *(a1 + 12);
    LODWORD(v7) = *(a1 + 16);
LABEL_9:
    sub_245445D98(v7, v5, v6, "asn1PE_SUPLEND");
    return v4;
  }

  sub_245445FB0(a1, *a2);
  v4 = *(a1 + 16);
  if (*(a1 + 16))
  {
    v5 = *(a1 + 8);
    v6 = *(a1 + 12);
    LODWORD(v7) = *(a1 + 16);
    goto LABEL_9;
  }

  sub_245445FB0(a1, *(a2 + 4));
  v4 = *(a1 + 16);
  if (*(a1 + 16))
  {
    v5 = *(a1 + 8);
    v6 = *(a1 + 12);
    LODWORD(v7) = *(a1 + 16);
    goto LABEL_9;
  }

  sub_245445FB0(a1, *(a2 + 8));
  v4 = *(a1 + 16);
  if (*(a1 + 16))
  {
    v5 = *(a1 + 8);
    v6 = *(a1 + 12);
    LODWORD(v7) = *(a1 + 16);
    goto LABEL_9;
  }

  if (*a2)
  {
    v7 = sub_245469E18(a1, (a2 + 16));
    if (v7)
    {
      v4 = v7;
      v5 = *(a1 + 8);
      v6 = *(a1 + 12);
      goto LABEL_9;
    }
  }

  if (*(a2 + 4))
  {
    v7 = sub_245447538(a1, (a2 + 456));
    if (v7)
    {
      v4 = v7;
      v5 = *(a1 + 8);
      v6 = *(a1 + 12);
      goto LABEL_9;
    }
  }

  if (!*(a2 + 8))
  {
    return 0;
  }

  v7 = sub_245447488(a1, (a2 + 464));
  v4 = v7;
  if (v7)
  {
    v5 = *(a1 + 8);
    v6 = *(a1 + 12);
    goto LABEL_9;
  }

  return v4;
}