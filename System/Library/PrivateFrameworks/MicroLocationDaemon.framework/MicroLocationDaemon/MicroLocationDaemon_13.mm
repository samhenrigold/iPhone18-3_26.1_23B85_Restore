uint64_t CLMicroLocationProto::HomeKitScene::Clear(uint64_t this)
{
  v1 = *(this + 84);
  if (v1)
  {
    *(this + 48) = 10;
    v2 = MEMORY[0x277D82C30];
    if ((v1 & 2) != 0)
    {
      v3 = *(this + 8);
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

    if ((*(this + 84) & 4) != 0)
    {
      v4 = *(this + 16);
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

    if ((*(this + 84) & 8) != 0)
    {
      v5 = *(this + 24);
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

    if ((*(this + 84) & 0x10) != 0)
    {
      v6 = *(this + 32);
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

    if ((*(this + 84) & 0x20) != 0)
    {
      v7 = *(this + 40);
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

    if ((*(this + 84) & 0x40) != 0)
    {
      v8 = *(this + 56);
      if (v8 != v2)
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

    if ((*(this + 84) & 0x80) != 0)
    {
      v9 = *(this + 64);
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
  }

  v10 = *(this + 84);
  if ((v10 & 0xFF00) != 0)
  {
    *(this + 52) = 0;
    if ((v10 & 0x400) != 0)
    {
      v11 = *(this + 72);
      if (v11 != MEMORY[0x277D82C30])
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
  }

  *(this + 84) = 0;
  return this;
}

uint64_t CLMicroLocationProto::HomeKitScene::MergePartialFromCodedStream(CLMicroLocationProto::HomeKitScene *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
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
          if (TagFallback >> 3 > 5)
          {
            break;
          }

          if (TagFallback >> 3 <= 2)
          {
            if (v8 != 1)
            {
              if (v8 != 2 || v9 != 2)
              {
                goto LABEL_44;
              }

              goto LABEL_60;
            }

            if ((TagFallback & 7) != 0)
            {
              goto LABEL_44;
            }

            v29 = 0;
            v11 = *(a2 + 1);
            if (v11 >= *(a2 + 2) || (v12 = *v11, (v12 & 0x80000000) != 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v29);
              if (!result)
              {
                return result;
              }

              v12 = v29;
            }

            else
            {
              *(a2 + 1) = v11 + 1;
            }

            if (v12 - 31 < 0x19 || v12 <= 0xE && ((1 << v12) & 0x76B6) != 0)
            {
              if (v12 - 31 >= 0x19 && (v12 > 0xE || ((1 << v12) & 0x76B6) == 0))
              {
                CLMicroLocationProto::HomeKitScene::MergeFrom();
              }

              *(this + 21) |= 1u;
              *(this + 12) = v12;
            }

            v16 = *(a2 + 1);
            if (v16 < *(a2 + 2) && *v16 == 18)
            {
              *(a2 + 1) = v16 + 1;
LABEL_60:
              *(this + 21) |= 2u;
              if (*(this + 1) == v5)
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
LABEL_66:
                *(this + 21) |= 4u;
                if (*(this + 2) == v5)
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
                  goto LABEL_72;
                }
              }
            }
          }

          else
          {
            if (v8 == 3)
            {
              if (v9 != 2)
              {
                goto LABEL_44;
              }

              goto LABEL_66;
            }

            if (v8 != 4)
            {
              if (v8 != 5 || v9 != 2)
              {
                goto LABEL_44;
              }

              goto LABEL_78;
            }

            if (v9 != 2)
            {
              goto LABEL_44;
            }

LABEL_72:
            *(this + 21) |= 8u;
            if (*(this + 3) == v5)
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
LABEL_78:
              *(this + 21) |= 0x10u;
              if (*(this + 4) == v5)
              {
                operator new();
              }

              result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
              if (!result)
              {
                return result;
              }

              v20 = *(a2 + 1);
              if (v20 < *(a2 + 2) && *v20 == 50)
              {
                *(a2 + 1) = v20 + 1;
LABEL_84:
                *(this + 21) |= 0x20u;
                if (*(this + 5) == v5)
                {
                  operator new();
                }

                result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
                if (!result)
                {
                  return result;
                }

                v21 = *(a2 + 1);
                if (v21 < *(a2 + 2) && *v21 == 58)
                {
                  *(a2 + 1) = v21 + 1;
                  goto LABEL_90;
                }
              }
            }
          }
        }

        if (TagFallback >> 3 <= 8)
        {
          break;
        }

        if (v8 == 9)
        {
          if ((TagFallback & 7) == 0)
          {
            v15 = *(a2 + 1);
            v13 = *(a2 + 2);
            goto LABEL_102;
          }

          goto LABEL_44;
        }

        if (v8 == 10)
        {
          if ((TagFallback & 7) == 0)
          {
            v14 = *(a2 + 1);
            v13 = *(a2 + 2);
            goto LABEL_110;
          }

          goto LABEL_44;
        }

        if (v8 != 11 || v9 != 2)
        {
          goto LABEL_44;
        }

        v10 = *(this + 21);
LABEL_118:
        *(this + 21) = v10 | 0x400;
        if (*(this + 9) == v5)
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

      if (v8 == 6)
      {
        if (v9 != 2)
        {
          goto LABEL_44;
        }

        goto LABEL_84;
      }

      if (v8 != 7)
      {
        break;
      }

      if (v9 != 2)
      {
        goto LABEL_44;
      }

LABEL_90:
      *(this + 21) |= 0x40u;
      if (*(this + 7) == v5)
      {
        operator new();
      }

      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
      if (!result)
      {
        return result;
      }

      v22 = *(a2 + 1);
      if (v22 < *(a2 + 2) && *v22 == 66)
      {
        *(a2 + 1) = v22 + 1;
LABEL_96:
        *(this + 21) |= 0x80u;
        if (*(this + 8) == v5)
        {
          operator new();
        }

        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
        if (!result)
        {
          return result;
        }

        v23 = *(a2 + 1);
        v13 = *(a2 + 2);
        if (v23 < v13 && *v23 == 72)
        {
          v15 = v23 + 1;
          *(a2 + 1) = v15;
LABEL_102:
          v31 = 0;
          if (v15 >= v13 || (v24 = *v15, (v24 & 0x80000000) != 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v31);
            if (!result)
            {
              return result;
            }

            v24 = v31;
            v25 = *(a2 + 1);
            v13 = *(a2 + 2);
          }

          else
          {
            v25 = v15 + 1;
            *(a2 + 1) = v25;
          }

          *(this + 52) = v24 != 0;
          *(this + 21) |= 0x100u;
          if (v25 < v13 && *v25 == 80)
          {
            v14 = v25 + 1;
            *(a2 + 1) = v14;
LABEL_110:
            v30 = 0;
            if (v14 >= v13 || (v26 = *v14, (v26 & 0x80000000) != 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v30);
              if (!result)
              {
                return result;
              }

              v26 = v30;
              v27 = *(a2 + 1);
              v13 = *(a2 + 2);
            }

            else
            {
              v27 = v14 + 1;
              *(a2 + 1) = v27;
            }

            *(this + 53) = v26 != 0;
            v10 = *(this + 21) | 0x200;
            *(this + 21) = v10;
            if (v27 < v13 && *v27 == 90)
            {
              *(a2 + 1) = v27 + 1;
              goto LABEL_118;
            }
          }
        }
      }
    }

    if (v8 == 8 && v9 == 2)
    {
      goto LABEL_96;
    }

LABEL_44:
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

uint64_t CLMicroLocationProto::HomeKitScene::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 84);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(1, *(this + 48), a2, a4);
    v6 = *(v5 + 84);
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

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
  v6 = *(v5 + 84);
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
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
  v6 = *(v5 + 84);
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
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
  v6 = *(v5 + 84);
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
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
  v6 = *(v5 + 84);
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
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
  v6 = *(v5 + 84);
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
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
  v6 = *(v5 + 84);
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
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
  v6 = *(v5 + 84);
  if ((v6 & 0x100) == 0)
  {
LABEL_10:
    if ((v6 & 0x200) == 0)
    {
      goto LABEL_11;
    }

LABEL_22:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(0xA, *(v5 + 53), a2, a4);
    if ((*(v5 + 84) & 0x400) == 0)
    {
      return this;
    }

    goto LABEL_23;
  }

LABEL_21:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(9, *(v5 + 52), a2, a4);
  v6 = *(v5 + 84);
  if ((v6 & 0x200) != 0)
  {
    goto LABEL_22;
  }

LABEL_11:
  if ((v6 & 0x400) == 0)
  {
    return this;
  }

LABEL_23:

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
}

uint64_t CLMicroLocationProto::HomeKitScene::ByteSize(CLMicroLocationProto::HomeKitScene *this, unsigned int a2)
{
  v3 = *(this + 21);
  if (!v3)
  {
    v4 = 0;
    goto LABEL_83;
  }

  if (v3)
  {
    v5 = *(this + 12);
    if ((v5 & 0x80000000) != 0)
    {
      v4 = 11;
      if ((v3 & 2) == 0)
      {
        goto LABEL_22;
      }
    }

    else if (v5 >= 0x80)
    {
      v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5) + 1;
      v3 = *(this + 21);
      if ((v3 & 2) == 0)
      {
        goto LABEL_22;
      }
    }

    else
    {
      v4 = 2;
      if ((v3 & 2) == 0)
      {
        goto LABEL_22;
      }
    }
  }

  else
  {
    v4 = 0;
    if ((v3 & 2) == 0)
    {
      goto LABEL_22;
    }
  }

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
    v11 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v10);
    v7 = *(v6 + 23);
    v9 = *(v6 + 8);
    v3 = *(this + 21);
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

  v4 = (v4 + v11 + v7 + 1);
LABEL_22:
  if ((v3 & 4) != 0)
  {
    v12 = *(this + 2);
    v13 = *(v12 + 23);
    v14 = v13;
    v15 = *(v12 + 8);
    if ((v13 & 0x80u) == 0)
    {
      v16 = *(v12 + 23);
    }

    else
    {
      v16 = v15;
    }

    if (v16 >= 0x80)
    {
      v17 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v16);
      v13 = *(v12 + 23);
      v15 = *(v12 + 8);
      v3 = *(this + 21);
      v14 = *(v12 + 23);
    }

    else
    {
      v17 = 1;
    }

    if (v14 < 0)
    {
      v13 = v15;
    }

    v4 = (v4 + v17 + v13 + 1);
    if ((v3 & 8) == 0)
    {
LABEL_24:
      if ((v3 & 0x10) == 0)
      {
        goto LABEL_25;
      }

      goto LABEL_47;
    }
  }

  else if ((v3 & 8) == 0)
  {
    goto LABEL_24;
  }

  v18 = *(this + 3);
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
    v3 = *(this + 21);
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

  v4 = (v4 + v23 + v19 + 1);
  if ((v3 & 0x10) == 0)
  {
LABEL_25:
    if ((v3 & 0x20) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_56;
  }

LABEL_47:
  v24 = *(this + 4);
  v25 = *(v24 + 23);
  v26 = v25;
  v27 = *(v24 + 8);
  if ((v25 & 0x80u) == 0)
  {
    v28 = *(v24 + 23);
  }

  else
  {
    v28 = v27;
  }

  if (v28 >= 0x80)
  {
    v29 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v28);
    v25 = *(v24 + 23);
    v27 = *(v24 + 8);
    v3 = *(this + 21);
    v26 = *(v24 + 23);
  }

  else
  {
    v29 = 1;
  }

  if (v26 < 0)
  {
    v25 = v27;
  }

  v4 = (v4 + v29 + v25 + 1);
  if ((v3 & 0x20) == 0)
  {
LABEL_26:
    if ((v3 & 0x40) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_65;
  }

LABEL_56:
  v30 = *(this + 5);
  v31 = *(v30 + 23);
  v32 = v31;
  v33 = *(v30 + 8);
  if ((v31 & 0x80u) == 0)
  {
    v34 = *(v30 + 23);
  }

  else
  {
    v34 = v33;
  }

  if (v34 >= 0x80)
  {
    v35 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v34);
    v31 = *(v30 + 23);
    v33 = *(v30 + 8);
    v3 = *(this + 21);
    v32 = *(v30 + 23);
  }

  else
  {
    v35 = 1;
  }

  if (v32 < 0)
  {
    v31 = v33;
  }

  v4 = (v4 + v35 + v31 + 1);
  if ((v3 & 0x40) == 0)
  {
LABEL_27:
    if ((v3 & 0x80) == 0)
    {
      goto LABEL_83;
    }

    goto LABEL_74;
  }

LABEL_65:
  v36 = *(this + 7);
  v37 = *(v36 + 23);
  v38 = v37;
  v39 = *(v36 + 8);
  if ((v37 & 0x80u) == 0)
  {
    v40 = *(v36 + 23);
  }

  else
  {
    v40 = v39;
  }

  if (v40 >= 0x80)
  {
    v41 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v40);
    v37 = *(v36 + 23);
    v39 = *(v36 + 8);
    v3 = *(this + 21);
    v38 = *(v36 + 23);
  }

  else
  {
    v41 = 1;
  }

  if (v38 < 0)
  {
    v37 = v39;
  }

  v4 = (v4 + v41 + v37 + 1);
  if ((v3 & 0x80) != 0)
  {
LABEL_74:
    v42 = *(this + 8);
    v43 = *(v42 + 23);
    v44 = v43;
    v45 = *(v42 + 8);
    if ((v43 & 0x80u) == 0)
    {
      v46 = *(v42 + 23);
    }

    else
    {
      v46 = v45;
    }

    if (v46 >= 0x80)
    {
      v47 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v46);
      v43 = *(v42 + 23);
      v45 = *(v42 + 8);
      v3 = *(this + 21);
      v44 = *(v42 + 23);
    }

    else
    {
      v47 = 1;
    }

    if (v44 < 0)
    {
      v43 = v45;
    }

    v4 = (v4 + v47 + v43 + 1);
  }

LABEL_83:
  if ((v3 & 0xFF00) != 0)
  {
    v4 = ((v3 >> 7) & 2) + v4 + ((v3 >> 8) & 2);
    if ((v3 & 0x400) != 0)
    {
      v48 = *(this + 9);
      v49 = *(v48 + 23);
      v50 = v49;
      v51 = *(v48 + 8);
      if ((v49 & 0x80u) == 0)
      {
        v52 = *(v48 + 23);
      }

      else
      {
        v52 = v51;
      }

      if (v52 >= 0x80)
      {
        v53 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v52);
        v49 = *(v48 + 23);
        v51 = *(v48 + 8);
        v50 = *(v48 + 23);
      }

      else
      {
        v53 = 1;
      }

      if (v50 < 0)
      {
        v49 = v51;
      }

      v4 = (v4 + v53 + v49 + 1);
    }
  }

  *(this + 20) = v4;
  return v4;
}

void CLMicroLocationProto::HomeKitScene::CheckTypeAndMergeFrom(CLMicroLocationProto::HomeKitScene *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  {
    CLMicroLocationProto::BleLeechedBeacons::CheckTypeAndMergeFrom();
  }

  CLMicroLocationProto::HomeKitScene::MergeFrom(this, lpsrc);
}

void CLMicroLocationProto::NowPlayingOutputDevice::MergeFrom(CLMicroLocationProto::NowPlayingOutputDevice *this, const CLMicroLocationProto::NowPlayingOutputDevice *a2)
{
  if (a2 == this)
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
      v5 = *(a2 + 2);
      *(this + 7) |= 1u;
      *(this + 2) = v5;
      v4 = *(a2 + 7);
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

    else if ((*(a2 + 28) & 2) == 0)
    {
      goto LABEL_6;
    }

    v6 = *(a2 + 3);
    *(this + 7) |= 2u;
    *(this + 3) = v6;
    if ((*(a2 + 7) & 4) == 0)
    {
      return;
    }

LABEL_10:
    v7 = *(a2 + 2);
    *(this + 7) |= 4u;
    v8 = *(this + 2);
    if (v8 == MEMORY[0x277D82C30])
    {
      operator new();
    }

    std::string::operator=(v8, v7);
  }
}

void sub_2590F7EF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void CLMicroLocationProto::NowPlayingOutputDevice::~NowPlayingOutputDevice(CLMicroLocationProto::NowPlayingOutputDevice *this)
{
  *this = &unk_286A58890;
  CLMicroLocationProto::DeviceId::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  CLMicroLocationProto::NowPlayingOutputDevice::~NowPlayingOutputDevice(this);

  JUMPOUT(0x259CA1F90);
}

uint64_t CLMicroLocationProto::NowPlayingOutputDevice::Clear(uint64_t this)
{
  v1 = *(this + 28);
  if (v1)
  {
    *(this + 8) = 0;
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

  *(this + 28) = 0;
  return this;
}

uint64_t CLMicroLocationProto::NowPlayingOutputDevice::MergePartialFromCodedStream(CLMicroLocationProto::NowPlayingOutputDevice *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
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

        v15 = *(this + 7);
LABEL_34:
        *(this + 7) = v15 | 4;
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
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 2);
        if (!result)
        {
          return result;
        }

        v13 = *(a2 + 1);
        v10 = *(a2 + 2);
      }

      else
      {
        *(this + 2) = v12;
        v13 = v11 + 1;
        *(a2 + 1) = v13;
      }

      *(this + 7) |= 1u;
      if (v13 < v10 && *v13 == 16)
      {
        v14 = v13 + 1;
        *(a2 + 1) = v14;
LABEL_26:
        if (v14 >= v10 || (v16 = *v14, v16 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 3);
          if (!result)
          {
            return result;
          }

          v17 = *(a2 + 1);
          v10 = *(a2 + 2);
        }

        else
        {
          *(this + 3) = v16;
          v17 = v14 + 1;
          *(a2 + 1) = v17;
        }

        v15 = *(this + 7) | 2;
        *(this + 7) = v15;
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

uint64_t CLMicroLocationProto::NowPlayingOutputDevice::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 28);
  if ((v6 & 1) == 0)
  {
    if ((v6 & 2) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(2, *(v5 + 12), a2, a4);
    if ((*(v5 + 28) & 4) == 0)
    {
      return this;
    }

    goto LABEL_7;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(1, *(this + 8), a2, a4);
  v6 = *(v5 + 28);
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

uint64_t CLMicroLocationProto::NowPlayingOutputDevice::ByteSize(CLMicroLocationProto::NowPlayingOutputDevice *this, unsigned int a2)
{
  LOBYTE(v3) = *(this + 28);
  if (!v3)
  {
    v4 = 0;
    goto LABEL_24;
  }

  if (*(this + 28))
  {
    v5 = *(this + 2);
    if (v5 >= 0x80)
    {
      v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5) + 1;
      v3 = *(this + 7);
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
    if ((*(this + 28) & 2) == 0)
    {
      goto LABEL_14;
    }
  }

  v6 = *(this + 3);
  if (v6 >= 0x80)
  {
    v7 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v6) + 1;
    v3 = *(this + 7);
  }

  else
  {
    v7 = 2;
  }

  v4 = (v7 + v4);
LABEL_14:
  if ((v3 & 4) != 0)
  {
    v8 = *(this + 2);
    v9 = *(v8 + 23);
    v10 = v9;
    v11 = *(v8 + 8);
    if ((v9 & 0x80u) == 0)
    {
      v12 = *(v8 + 23);
    }

    else
    {
      v12 = v11;
    }

    if (v12 >= 0x80)
    {
      v13 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v12);
      v9 = *(v8 + 23);
      v11 = *(v8 + 8);
      v10 = *(v8 + 23);
    }

    else
    {
      v13 = 1;
    }

    if (v10 < 0)
    {
      v9 = v11;
    }

    v4 = (v4 + v13 + v9 + 1);
  }

LABEL_24:
  *(this + 6) = v4;
  return v4;
}

void CLMicroLocationProto::NowPlayingOutputDevice::CheckTypeAndMergeFrom(CLMicroLocationProto::NowPlayingOutputDevice *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  {
    CLMicroLocationProto::BleLeechedBeacons::CheckTypeAndMergeFrom();
  }

  CLMicroLocationProto::NowPlayingOutputDevice::MergeFrom(this, lpsrc);
}

void CLMicroLocationProto::NowPlaying::MergeFrom(CLMicroLocationProto::NowPlaying *this, const CLMicroLocationProto::NowPlaying *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v21);
  }

  v4 = wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 32));
  LODWORD(v5) = *(a2 + 10);
  v6 = MEMORY[0x277D82C30];
  if (v5 >= 1)
  {
    v7 = 0;
    do
    {
      if (v7 >= v5)
      {
        wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
        wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
        wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
        wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v21);
      }

      v8 = *(*(a2 + 4) + 8 * v7);
      v9 = *(this + 11);
      v10 = *(this + 10);
      if (v10 >= v9)
      {
        if (v9 == *(this + 12))
        {
          wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 32));
          v9 = *(this + 11);
        }

        *(this + 11) = v9 + 1;
        operator new();
      }

      v11 = *(this + 4);
      *(this + 10) = v10 + 1;
      CLMicroLocationProto::NowPlayingOutputDevice::MergeFrom(*(v11 + 8 * v10), v8);
      ++v7;
      v5 = *(a2 + 10);
    }

    while (v7 < v5);
  }

  LOBYTE(v12) = *(a2 + 68);
  if (!v12)
  {
    return;
  }

  if (*(a2 + 68))
  {
    v13 = *(a2 + 4);
    if (v13 - 31 >= 0x19 && (v13 > 0xE || ((1 << v13) & 0x76B6) == 0))
    {
      CLMicroLocationProto::NowPlaying::MergeFrom();
    }

    *(this + 17) |= 1u;
    *(this + 4) = v13;
    v12 = *(a2 + 17);
  }

  if ((v12 & 2) == 0)
  {
    if ((v12 & 4) == 0)
    {
      goto LABEL_21;
    }

LABEL_27:
    v16 = *(a2 + 5);
    *(this + 17) |= 4u;
    *(this + 5) = v16;
    v12 = *(a2 + 17);
    if ((v12 & 8) == 0)
    {
LABEL_22:
      if ((v12 & 0x20) == 0)
      {
        return;
      }

      goto LABEL_31;
    }

    goto LABEL_28;
  }

  v14 = *(a2 + 1);
  *(this + 17) |= 2u;
  v15 = *(this + 1);
  if (v15 == v6)
  {
    operator new();
  }

  v4 = std::string::operator=(v15, v14);
  v12 = *(a2 + 17);
  if ((v12 & 4) != 0)
  {
    goto LABEL_27;
  }

LABEL_21:
  if ((v12 & 8) == 0)
  {
    goto LABEL_22;
  }

LABEL_28:
  v17 = *(a2 + 3);
  *(this + 17) |= 8u;
  v18 = *(this + 3);
  if (v18 == v6)
  {
    operator new();
  }

  v4 = std::string::operator=(v18, v17);
  if ((*(a2 + 17) & 0x20) != 0)
  {
LABEL_31:
    *(this + 17) |= 0x20u;
    v19 = *(this + 7);
    if (!v19)
    {
      operator new();
    }

    v20 = *(a2 + 7);
    if (!v20)
    {
      CLMicroLocationProto::protobuf_AddDesc_microlocation_2eproto(v4);
      v20 = *(CLMicroLocationProto::NowPlaying::default_instance_ + 56);
    }

    CLMicroLocationProto::BundleIdFeatures::MergeFrom(v19, v20);
  }
}

void sub_2590F87D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void CLMicroLocationProto::NowPlaying::~NowPlaying(CLMicroLocationProto::NowPlaying *this)
{
  *this = &unk_286A58908;
  CLMicroLocationProto::NowPlaying::SharedDtor(this);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<CLMicroLocationProto::Measurement>::TypeHandler>(this + 4);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  CLMicroLocationProto::NowPlaying::~NowPlaying(this);

  JUMPOUT(0x259CA1F90);
}

void CLMicroLocationProto::NowPlaying::SharedDtor(CLMicroLocationProto::NowPlaying *this)
{
  v1 = this;
  v2 = *(this + 1);
  v3 = MEMORY[0x277D82C30];
  if (v2 != MEMORY[0x277D82C30] && v2 != 0)
  {
    if (*(v2 + 23) < 0)
    {
      operator delete(*v2);
    }

    this = MEMORY[0x259CA1F90](v2, 0x1012C40EC159624);
  }

  v5 = *(v1 + 3);
  if (v5 != v3 && v5 != 0)
  {
    if (*(v5 + 23) < 0)
    {
      operator delete(*v5);
    }

    this = MEMORY[0x259CA1F90](v5, 0x1012C40EC159624);
  }

  CLMicroLocationProto::protobuf_AddDesc_microlocation_2eproto(this);
  if (CLMicroLocationProto::NowPlaying::default_instance_ != v1)
  {
    v7 = *(v1 + 7);
    if (v7)
    {
      v8 = *(*v7 + 8);

      v8();
    }
  }
}

uint64_t CLMicroLocationProto::NowPlaying::Clear(CLMicroLocationProto::NowPlaying *this)
{
  v2 = *(this + 68);
  if (v2)
  {
    *(this + 4) = 12;
    v3 = MEMORY[0x277D82C30];
    if ((v2 & 2) != 0)
    {
      v4 = *(this + 1);
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

    *(this + 5) = 0;
    if ((*(this + 68) & 8) != 0)
    {
      v5 = *(this + 3);
      if (v5 != v3)
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

    if ((*(this + 68) & 0x20) != 0)
    {
      v6 = *(this + 7);
      if (v6)
      {
        if (*(v6 + 16))
        {
          *(v6 + 8) = 0;
        }

        *(v6 + 16) = 0;
      }
    }
  }

  result = wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Clear<wireless_diagnostics::google::protobuf::RepeatedPtrField<CLMicroLocationProto::Measurement>::TypeHandler>(this + 32);
  *(this + 17) = 0;
  return result;
}

uint64_t CLMicroLocationProto::NowPlaying::MergePartialFromCodedStream(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
{
  v5 = MEMORY[0x277D82C30];
  while (1)
  {
    while (1)
    {
      while (1)
      {
LABEL_2:
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
        if (TagFallback >> 3 > 3)
        {
          break;
        }

        if (v8 == 1)
        {
          if ((TagFallback & 7) != 0)
          {
            goto LABEL_27;
          }

          v40 = 0;
          v12 = *(a2 + 1);
          if (v12 >= *(a2 + 2) || (v13 = *v12, (v13 & 0x80000000) != 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v40);
            if (!result)
            {
              return result;
            }

            v13 = v40;
          }

          else
          {
            *(a2 + 1) = v12 + 1;
          }

          if (v13 - 31 < 0x19 || v13 <= 0xE && ((1 << v13) & 0x76B6) != 0)
          {
            if (v13 - 31 >= 0x19 && (v13 > 0xE || ((1 << v13) & 0x76B6) == 0))
            {
              CLMicroLocationProto::NowPlaying::MergeFrom();
            }

            *(this + 68) |= 1u;
            *(this + 16) = v13;
          }

          v16 = *(a2 + 1);
          if (v16 < *(a2 + 2) && *v16 == 18)
          {
            *(a2 + 1) = v16 + 1;
            goto LABEL_42;
          }
        }

        else if (v8 == 2)
        {
          if (v9 != 2)
          {
            goto LABEL_27;
          }

LABEL_42:
          *(this + 68) |= 2u;
          if (*(this + 8) == v5)
          {
            operator new();
          }

          result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
          if (!result)
          {
            return result;
          }

          v17 = *(a2 + 1);
          v10 = *(a2 + 2);
          if (v17 < v10 && *v17 == 24)
          {
            v11 = v17 + 1;
            *(a2 + 1) = v11;
LABEL_48:
            if (v11 >= v10 || (v18 = *v11, v18 < 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, (this + 20));
              if (!result)
              {
                return result;
              }

              v19 = *(a2 + 1);
              v10 = *(a2 + 2);
            }

            else
            {
              *(this + 20) = v18;
              v19 = v11 + 1;
              *(a2 + 1) = v19;
            }

            v14 = *(this + 68) | 4;
            *(this + 68) = v14;
            if (v19 < v10 && *v19 == 34)
            {
              *(a2 + 1) = v19 + 1;
              goto LABEL_56;
            }
          }
        }

        else
        {
          if (v8 == 3 && (TagFallback & 7) == 0)
          {
            v11 = *(a2 + 1);
            v10 = *(a2 + 2);
            goto LABEL_48;
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

      if (v8 != 4)
      {
        break;
      }

      if (v9 != 2)
      {
        goto LABEL_27;
      }

      v14 = *(this + 68);
LABEL_56:
      *(this + 68) = v14 | 8;
      if (*(this + 24) == v5)
      {
        operator new();
      }

      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
      if (!result)
      {
        return result;
      }

      v20 = *(a2 + 1);
      if (v20 < *(a2 + 2) && *v20 == 42)
      {
        while (1)
        {
          *(a2 + 1) = v20 + 1;
LABEL_62:
          v21 = *(this + 44);
          v22 = *(this + 40);
          if (v22 >= v21)
          {
            if (v21 == *(this + 48))
            {
              wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 32));
              v21 = *(this + 44);
            }

            *(this + 44) = v21 + 1;
            operator new();
          }

          v23 = *(this + 32);
          *(this + 40) = v22 + 1;
          v24 = *(v23 + 8 * v22);
          v41 = 0;
          v25 = *(a2 + 1);
          if (v25 >= *(a2 + 2) || *v25 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v41))
            {
              return 0;
            }
          }

          else
          {
            v41 = *v25;
            *(a2 + 1) = v25 + 1;
          }

          v26 = *(a2 + 14);
          v27 = *(a2 + 15);
          *(a2 + 14) = v26 + 1;
          if (v26 >= v27)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
          if (!CLMicroLocationProto::NowPlayingOutputDevice::MergePartialFromCodedStream(v24, a2, v28) || *(a2 + 36) != 1)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
          v29 = *(a2 + 14);
          v30 = __OFSUB__(v29, 1);
          v31 = v29 - 1;
          if (v31 < 0 == v30)
          {
            *(a2 + 14) = v31;
          }

          v20 = *(a2 + 1);
          if (v20 >= *(a2 + 2))
          {
            break;
          }

          v32 = *v20;
          if (v32 != 42)
          {
            if (v32 == 50)
            {
              *(a2 + 1) = v20 + 1;
              goto LABEL_80;
            }

            goto LABEL_2;
          }
        }
      }
    }

    if (v8 == 5)
    {
      if (v9 == 2)
      {
        goto LABEL_62;
      }

      goto LABEL_27;
    }

    if (v8 != 6 || v9 != 2)
    {
      goto LABEL_27;
    }

LABEL_80:
    *(this + 68) |= 0x20u;
    v33 = *(this + 56);
    if (!v33)
    {
      operator new();
    }

    v42 = 0;
    v34 = *(a2 + 1);
    if (v34 >= *(a2 + 2) || *v34 < 0)
    {
      if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v42))
      {
        return 0;
      }
    }

    else
    {
      v42 = *v34;
      *(a2 + 1) = v34 + 1;
    }

    v35 = *(a2 + 14);
    v36 = *(a2 + 15);
    *(a2 + 14) = v35 + 1;
    if (v35 >= v36)
    {
      return 0;
    }

    wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
    if (!CLMicroLocationProto::BundleIdFeatures::MergePartialFromCodedStream(v33, a2, v37) || *(a2 + 36) != 1)
    {
      return 0;
    }

    wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
    v38 = *(a2 + 14);
    v30 = __OFSUB__(v38, 1);
    v39 = v38 - 1;
    if (v39 < 0 == v30)
    {
      *(a2 + 14) = v39;
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

CLMicroLocationProto *CLMicroLocationProto::NowPlaying::SerializeWithCachedSizes(CLMicroLocationProto *this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 17);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(1, *(this + 4), a2, a4);
    v6 = *(v5 + 17);
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

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
  v6 = *(v5 + 17);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_13:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(3, *(v5 + 5), a2, a4);
  if ((*(v5 + 17) & 8) != 0)
  {
LABEL_5:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
  }

LABEL_6:
  if (*(v5 + 10) >= 1)
  {
    v7 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(5, *(*(v5 + 4) + 8 * v7++), a2, a4);
    }

    while (v7 < *(v5 + 10));
  }

  if ((*(v5 + 68) & 0x20) != 0)
  {
    v8 = *(v5 + 7);
    if (!v8)
    {
      CLMicroLocationProto::protobuf_AddDesc_microlocation_2eproto(this);
      v8 = *(CLMicroLocationProto::NowPlaying::default_instance_ + 56);
    }

    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(6, v8, a2, a4);
  }

  return this;
}

uint64_t CLMicroLocationProto::NowPlaying::ByteSize(uint64_t this, unsigned int a2)
{
  v2 = this;
  LOBYTE(v3) = *(this + 68);
  if (!v3)
  {
    v4 = 0;
    goto LABEL_45;
  }

  if (*(this + 68))
  {
    this = *(this + 16);
    if ((this & 0x80000000) != 0)
    {
      v4 = 11;
      if ((v3 & 2) == 0)
      {
        goto LABEL_22;
      }
    }

    else if (this >= 0x80)
    {
      this = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(this);
      v4 = this + 1;
      v3 = *(v2 + 68);
      if ((v3 & 2) == 0)
      {
        goto LABEL_22;
      }
    }

    else
    {
      v4 = 2;
      if ((v3 & 2) == 0)
      {
        goto LABEL_22;
      }
    }
  }

  else
  {
    v4 = 0;
    if ((*(this + 68) & 2) == 0)
    {
      goto LABEL_22;
    }
  }

  v5 = *(v2 + 8);
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
    this = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v9);
    v6 = *(v5 + 23);
    v8 = *(v5 + 8);
    v3 = *(v2 + 68);
    v7 = *(v5 + 23);
  }

  else
  {
    this = 1;
  }

  if (v7 < 0)
  {
    v6 = v8;
  }

  v4 += this + v6 + 1;
LABEL_22:
  if ((v3 & 4) != 0)
  {
    this = *(v2 + 20);
    if (this >= 0x80)
    {
      this = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(this);
      v10 = this + 1;
      v3 = *(v2 + 68);
    }

    else
    {
      v10 = 2;
    }

    v4 += v10;
    if ((v3 & 8) == 0)
    {
LABEL_24:
      if ((v3 & 0x20) == 0)
      {
        goto LABEL_45;
      }

      goto LABEL_39;
    }
  }

  else if ((v3 & 8) == 0)
  {
    goto LABEL_24;
  }

  v11 = *(v2 + 24);
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
    this = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v15);
    v12 = *(v11 + 23);
    v14 = *(v11 + 8);
    v3 = *(v2 + 68);
    v13 = *(v11 + 23);
  }

  else
  {
    this = 1;
  }

  if (v13 < 0)
  {
    v12 = v14;
  }

  v4 += this + v12 + 1;
  if ((v3 & 0x20) != 0)
  {
LABEL_39:
    v16 = *(v2 + 56);
    if (!v16)
    {
      CLMicroLocationProto::protobuf_AddDesc_microlocation_2eproto(this);
      v16 = *(CLMicroLocationProto::NowPlaying::default_instance_ + 56);
    }

    if (*(v16 + 16))
    {
      v17 = 2 * (*(v16 + 16) & 1) + (*(v16 + 16) & 2);
    }

    else
    {
      v17 = 0;
    }

    *(v16 + 12) = v17;
    v4 += v17 + 2;
  }

LABEL_45:
  v18 = *(v2 + 40);
  v19 = (v18 + v4);
  if (v18 >= 1)
  {
    v20 = 0;
    do
    {
      v21 = CLMicroLocationProto::NowPlayingOutputDevice::ByteSize(*(*(v2 + 32) + 8 * v20), a2);
      v22 = v21;
      if (v21 >= 0x80)
      {
        v23 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v21);
      }

      else
      {
        v23 = 1;
      }

      v19 = (v22 + v19 + v23);
      ++v20;
    }

    while (v20 < *(v2 + 40));
  }

  *(v2 + 64) = v19;
  return v19;
}

void CLMicroLocationProto::NowPlaying::CheckTypeAndMergeFrom(CLMicroLocationProto::NowPlaying *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  {
    CLMicroLocationProto::BleLeechedBeacons::CheckTypeAndMergeFrom();
  }

  CLMicroLocationProto::NowPlaying::MergeFrom(this, lpsrc);
}

void CLMicroLocationProto::LearnModel::MergeFrom(CLMicroLocationProto::LearnModel *this, const CLMicroLocationProto::LearnModel *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v6);
  }

  if (*(a2 + 16))
  {
    v4 = *(a2 + 2);
    if (v4 - 31 >= 0x19 && (v4 > 0xE || ((1 << v4) & 0x76B6) == 0))
    {
      CLMicroLocationProto::LearnModel::MergeFrom();
    }

    *(this + 4) |= 1u;
    *(this + 2) = v4;
  }
}

void sub_2590F94CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void CLMicroLocationProto::LearnModel::~LearnModel(CLMicroLocationProto::LearnModel *this)
{
  *this = &unk_286A58980;
  CLMicroLocationProto::protobuf_AddDesc_microlocation_2eproto(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  CLMicroLocationProto::LearnModel::~LearnModel(this);

  JUMPOUT(0x259CA1F90);
}

uint64_t CLMicroLocationProto::LearnModel::Clear(uint64_t this)
{
  if (*(this + 16))
  {
    *(this + 8) = 31;
  }

  *(this + 16) = 0;
  return this;
}

uint64_t CLMicroLocationProto::LearnModel::MergePartialFromCodedStream(CLMicroLocationProto::LearnModel *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
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

      v12 = 0;
      v7 = *(a2 + 1);
      if (v7 >= *(a2 + 2) || (v8 = *v7, (v8 & 0x80000000) != 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v12);
        if (!result)
        {
          return result;
        }

        v8 = v12;
      }

      else
      {
        *(a2 + 1) = v7 + 1;
      }

      if (v8 - 31 < 0x19 || (v8 <= 0xE ? (v9 = ((1 << v8) & 0x76B6) == 0) : (v9 = 1), !v9))
      {
        if (v8 - 31 >= 0x19 && (v8 > 0xE || ((1 << v8) & 0x76B6) == 0))
        {
          CLMicroLocationProto::LearnModel::MergeFrom();
        }

        *(this + 4) |= 1u;
        *(this + 2) = v8;
      }

      if (*(a2 + 1) == *(a2 + 2) && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
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

uint64_t CLMicroLocationProto::LearnModel::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  if (*(this + 16))
  {
    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(1, *(this + 8), a2, a4);
  }

  return this;
}

uint64_t CLMicroLocationProto::LearnModel::ByteSize(CLMicroLocationProto::LearnModel *this, unsigned int a2)
{
  if (*(this + 16))
  {
    v4 = *(this + 2);
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

  *(this + 3) = result;
  return result;
}

void CLMicroLocationProto::LearnModel::CheckTypeAndMergeFrom(CLMicroLocationProto::LearnModel *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  {
    CLMicroLocationProto::BleLeechedBeacons::CheckTypeAndMergeFrom();
  }

  CLMicroLocationProto::LearnModel::MergeFrom(this, lpsrc);
}

void CLMicroLocationProto::LearnCompleted::MergeFrom(CLMicroLocationProto::LearnCompleted *this, const CLMicroLocationProto::LearnCompleted *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v6);
  }

  if (*(a2 + 16))
  {
    v4 = *(a2 + 2);
    if (v4 - 31 >= 0x19 && (v4 > 0xE || ((1 << v4) & 0x76B6) == 0))
    {
      CLMicroLocationProto::LearnCompleted::MergeFrom();
    }

    *(this + 4) |= 1u;
    *(this + 2) = v4;
  }
}

void sub_2590F9918(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void CLMicroLocationProto::LearnCompleted::~LearnCompleted(CLMicroLocationProto::LearnCompleted *this)
{
  *this = &unk_286A589F8;
  CLMicroLocationProto::protobuf_AddDesc_microlocation_2eproto(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  CLMicroLocationProto::LearnCompleted::~LearnCompleted(this);

  JUMPOUT(0x259CA1F90);
}

uint64_t CLMicroLocationProto::LearnCompleted::Clear(uint64_t this)
{
  if (*(this + 16))
  {
    *(this + 8) = 32;
  }

  *(this + 16) = 0;
  return this;
}

uint64_t CLMicroLocationProto::LearnCompleted::MergePartialFromCodedStream(CLMicroLocationProto::LearnCompleted *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
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

      v12 = 0;
      v7 = *(a2 + 1);
      if (v7 >= *(a2 + 2) || (v8 = *v7, (v8 & 0x80000000) != 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v12);
        if (!result)
        {
          return result;
        }

        v8 = v12;
      }

      else
      {
        *(a2 + 1) = v7 + 1;
      }

      if (v8 - 31 < 0x19 || (v8 <= 0xE ? (v9 = ((1 << v8) & 0x76B6) == 0) : (v9 = 1), !v9))
      {
        if (v8 - 31 >= 0x19 && (v8 > 0xE || ((1 << v8) & 0x76B6) == 0))
        {
          CLMicroLocationProto::LearnCompleted::MergeFrom();
        }

        *(this + 4) |= 1u;
        *(this + 2) = v8;
      }

      if (*(a2 + 1) == *(a2 + 2) && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
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

uint64_t CLMicroLocationProto::LearnCompleted::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  if (*(this + 16))
  {
    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(1, *(this + 8), a2, a4);
  }

  return this;
}

uint64_t CLMicroLocationProto::LearnCompleted::ByteSize(CLMicroLocationProto::LearnCompleted *this, unsigned int a2)
{
  if (*(this + 16))
  {
    v4 = *(this + 2);
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

  *(this + 3) = result;
  return result;
}

void CLMicroLocationProto::LearnCompleted::CheckTypeAndMergeFrom(CLMicroLocationProto::LearnCompleted *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  {
    CLMicroLocationProto::BleLeechedBeacons::CheckTypeAndMergeFrom();
  }

  CLMicroLocationProto::LearnCompleted::MergeFrom(this, lpsrc);
}

void CLMicroLocationProto::SensorsScanComplete::MergeFrom(CLMicroLocationProto::SensorsScanComplete *this, const CLMicroLocationProto::SensorsScanComplete *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v6);
  }

  if (*(a2 + 16))
  {
    v4 = *(a2 + 2);
    if (v4 - 31 >= 0x19 && (v4 > 0xE || ((1 << v4) & 0x76B6) == 0))
    {
      CLMicroLocationProto::SensorsScanComplete::MergeFrom();
    }

    *(this + 4) |= 1u;
    *(this + 2) = v4;
  }
}

void sub_2590F9D64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void CLMicroLocationProto::SensorsScanComplete::~SensorsScanComplete(CLMicroLocationProto::SensorsScanComplete *this)
{
  *this = &unk_286A58A70;
  CLMicroLocationProto::protobuf_AddDesc_microlocation_2eproto(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  CLMicroLocationProto::SensorsScanComplete::~SensorsScanComplete(this);

  JUMPOUT(0x259CA1F90);
}

uint64_t CLMicroLocationProto::SensorsScanComplete::Clear(uint64_t this)
{
  if (*(this + 16))
  {
    *(this + 8) = 33;
  }

  *(this + 16) = 0;
  return this;
}

uint64_t CLMicroLocationProto::SensorsScanComplete::MergePartialFromCodedStream(CLMicroLocationProto::SensorsScanComplete *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
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

      v12 = 0;
      v7 = *(a2 + 1);
      if (v7 >= *(a2 + 2) || (v8 = *v7, (v8 & 0x80000000) != 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v12);
        if (!result)
        {
          return result;
        }

        v8 = v12;
      }

      else
      {
        *(a2 + 1) = v7 + 1;
      }

      if (v8 - 31 < 0x19 || (v8 <= 0xE ? (v9 = ((1 << v8) & 0x76B6) == 0) : (v9 = 1), !v9))
      {
        if (v8 - 31 >= 0x19 && (v8 > 0xE || ((1 << v8) & 0x76B6) == 0))
        {
          CLMicroLocationProto::SensorsScanComplete::MergeFrom();
        }

        *(this + 4) |= 1u;
        *(this + 2) = v8;
      }

      if (*(a2 + 1) == *(a2 + 2) && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
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

uint64_t CLMicroLocationProto::SensorsScanComplete::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  if (*(this + 16))
  {
    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(1, *(this + 8), a2, a4);
  }

  return this;
}

uint64_t CLMicroLocationProto::SensorsScanComplete::ByteSize(CLMicroLocationProto::SensorsScanComplete *this, unsigned int a2)
{
  if (*(this + 16))
  {
    v4 = *(this + 2);
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

  *(this + 3) = result;
  return result;
}

void CLMicroLocationProto::SensorsScanComplete::CheckTypeAndMergeFrom(CLMicroLocationProto::SensorsScanComplete *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  {
    CLMicroLocationProto::BleLeechedBeacons::CheckTypeAndMergeFrom();
  }

  CLMicroLocationProto::SensorsScanComplete::MergeFrom(this, lpsrc);
}

void CLMicroLocationProto::StartSpectating::MergeFrom(CLMicroLocationProto::StartSpectating *this, const CLMicroLocationProto::StartSpectating *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v6);
  }

  if (*(a2 + 16))
  {
    v4 = *(a2 + 2);
    if (v4 - 31 >= 0x19 && (v4 > 0xE || ((1 << v4) & 0x76B6) == 0))
    {
      CLMicroLocationProto::StartSpectating::MergeFrom();
    }

    *(this + 4) |= 1u;
    *(this + 2) = v4;
  }
}

void sub_2590FA1B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void CLMicroLocationProto::StartSpectating::~StartSpectating(CLMicroLocationProto::StartSpectating *this)
{
  *this = &unk_286A58AE8;
  CLMicroLocationProto::protobuf_AddDesc_microlocation_2eproto(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  CLMicroLocationProto::StartSpectating::~StartSpectating(this);

  JUMPOUT(0x259CA1F90);
}

uint64_t CLMicroLocationProto::StartSpectating::Clear(uint64_t this)
{
  if (*(this + 16))
  {
    *(this + 8) = 34;
  }

  *(this + 16) = 0;
  return this;
}

uint64_t CLMicroLocationProto::StartSpectating::MergePartialFromCodedStream(CLMicroLocationProto::StartSpectating *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
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

      v12 = 0;
      v7 = *(a2 + 1);
      if (v7 >= *(a2 + 2) || (v8 = *v7, (v8 & 0x80000000) != 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v12);
        if (!result)
        {
          return result;
        }

        v8 = v12;
      }

      else
      {
        *(a2 + 1) = v7 + 1;
      }

      if (v8 - 31 < 0x19 || (v8 <= 0xE ? (v9 = ((1 << v8) & 0x76B6) == 0) : (v9 = 1), !v9))
      {
        if (v8 - 31 >= 0x19 && (v8 > 0xE || ((1 << v8) & 0x76B6) == 0))
        {
          CLMicroLocationProto::StartSpectating::MergeFrom();
        }

        *(this + 4) |= 1u;
        *(this + 2) = v8;
      }

      if (*(a2 + 1) == *(a2 + 2) && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
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

uint64_t CLMicroLocationProto::StartSpectating::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  if (*(this + 16))
  {
    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(1, *(this + 8), a2, a4);
  }

  return this;
}

uint64_t CLMicroLocationProto::StartSpectating::ByteSize(CLMicroLocationProto::StartSpectating *this, unsigned int a2)
{
  if (*(this + 16))
  {
    v4 = *(this + 2);
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

  *(this + 3) = result;
  return result;
}

void CLMicroLocationProto::StartSpectating::CheckTypeAndMergeFrom(CLMicroLocationProto::StartSpectating *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  {
    CLMicroLocationProto::BleLeechedBeacons::CheckTypeAndMergeFrom();
  }

  CLMicroLocationProto::StartSpectating::MergeFrom(this, lpsrc);
}

void CLMicroLocationProto::StopSpectating::MergeFrom(CLMicroLocationProto::StopSpectating *this, const CLMicroLocationProto::StopSpectating *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v6);
  }

  if (*(a2 + 16))
  {
    v4 = *(a2 + 2);
    if (v4 - 31 >= 0x19 && (v4 > 0xE || ((1 << v4) & 0x76B6) == 0))
    {
      CLMicroLocationProto::StopSpectating::MergeFrom();
    }

    *(this + 4) |= 1u;
    *(this + 2) = v4;
  }
}

void sub_2590FA5FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void CLMicroLocationProto::StopSpectating::~StopSpectating(CLMicroLocationProto::StopSpectating *this)
{
  *this = &unk_286A58B60;
  CLMicroLocationProto::protobuf_AddDesc_microlocation_2eproto(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  CLMicroLocationProto::StopSpectating::~StopSpectating(this);

  JUMPOUT(0x259CA1F90);
}

uint64_t CLMicroLocationProto::StopSpectating::Clear(uint64_t this)
{
  if (*(this + 16))
  {
    *(this + 8) = 35;
  }

  *(this + 16) = 0;
  return this;
}

uint64_t CLMicroLocationProto::StopSpectating::MergePartialFromCodedStream(CLMicroLocationProto::StopSpectating *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
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

      v12 = 0;
      v7 = *(a2 + 1);
      if (v7 >= *(a2 + 2) || (v8 = *v7, (v8 & 0x80000000) != 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v12);
        if (!result)
        {
          return result;
        }

        v8 = v12;
      }

      else
      {
        *(a2 + 1) = v7 + 1;
      }

      if (v8 - 31 < 0x19 || (v8 <= 0xE ? (v9 = ((1 << v8) & 0x76B6) == 0) : (v9 = 1), !v9))
      {
        if (v8 - 31 >= 0x19 && (v8 > 0xE || ((1 << v8) & 0x76B6) == 0))
        {
          CLMicroLocationProto::StopSpectating::MergeFrom();
        }

        *(this + 4) |= 1u;
        *(this + 2) = v8;
      }

      if (*(a2 + 1) == *(a2 + 2) && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
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

uint64_t CLMicroLocationProto::StopSpectating::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  if (*(this + 16))
  {
    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(1, *(this + 8), a2, a4);
  }

  return this;
}

uint64_t CLMicroLocationProto::StopSpectating::ByteSize(CLMicroLocationProto::StopSpectating *this, unsigned int a2)
{
  if (*(this + 16))
  {
    v4 = *(this + 2);
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

  *(this + 3) = result;
  return result;
}

void CLMicroLocationProto::StopSpectating::CheckTypeAndMergeFrom(CLMicroLocationProto::StopSpectating *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  {
    CLMicroLocationProto::BleLeechedBeacons::CheckTypeAndMergeFrom();
  }

  CLMicroLocationProto::StopSpectating::MergeFrom(this, lpsrc);
}

void CLMicroLocationProto::ServiceCreate::MergeFrom(CLMicroLocationProto::ServiceCreate *this, const CLMicroLocationProto::ServiceCreate *a2)
{
  if (a2 == this)
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
      v5 = *(a2 + 6);
      if (v5 - 31 >= 0x19 && (v5 > 0xE || ((1 << v5) & 0x76B6) == 0))
      {
        CLMicroLocationProto::ServiceCreate::MergeFrom();
      }

      *(this + 8) |= 1u;
      *(this + 6) = v5;
      v4 = *(a2 + 8);
    }

    if ((v4 & 2) != 0)
    {
      v6 = *(a2 + 1);
      *(this + 8) |= 2u;
      v7 = *(this + 1);
      if (v7 == MEMORY[0x277D82C30])
      {
        operator new();
      }

      std::string::operator=(v7, v6);
      v4 = *(a2 + 8);
    }

    if ((v4 & 4) != 0)
    {
      v8 = *(a2 + 2);
      *(this + 8) |= 4u;
      *(this + 2) = v8;
    }
  }
}

void sub_2590FAAC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void CLMicroLocationProto::ServiceCreate::~ServiceCreate(CLMicroLocationProto::ServiceCreate *this)
{
  *this = &unk_286A58BD8;
  CLMicroLocationProto::ClusterRecordings::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  CLMicroLocationProto::ServiceCreate::~ServiceCreate(this);

  JUMPOUT(0x259CA1F90);
}

uint64_t CLMicroLocationProto::ServiceCreate::Clear(uint64_t this)
{
  v1 = *(this + 32);
  if (v1)
  {
    *(this + 24) = 36;
    if ((v1 & 2) != 0)
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

    *(this + 16) = 0;
  }

  *(this + 32) = 0;
  return this;
}

uint64_t CLMicroLocationProto::ServiceCreate::MergePartialFromCodedStream(CLMicroLocationProto::ServiceCreate *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
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
      if (TagFallback >> 3 == 3)
      {
        if ((TagFallback & 7) == 0)
        {
          v13 = *(a2 + 1);
          v12 = *(a2 + 2);
          goto LABEL_39;
        }

        goto LABEL_17;
      }

      if (v8 == 2)
      {
        break;
      }

      if (v8 != 1 || (TagFallback & 7) != 0)
      {
        goto LABEL_17;
      }

      v19 = 0;
      v10 = *(a2 + 1);
      if (v10 >= *(a2 + 2) || (v11 = *v10, (v11 & 0x80000000) != 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v19);
        if (!result)
        {
          return result;
        }

        v11 = v19;
      }

      else
      {
        *(a2 + 1) = v10 + 1;
      }

      if (v11 - 31 < 0x19 || v11 <= 0xE && ((1 << v11) & 0x76B6) != 0)
      {
        if (v11 - 31 >= 0x19 && (v11 > 0xE || ((1 << v11) & 0x76B6) == 0))
        {
          CLMicroLocationProto::ServiceCreate::MergeFrom();
        }

        *(this + 8) |= 1u;
        *(this + 6) = v11;
      }

      v14 = *(a2 + 1);
      if (v14 < *(a2 + 2) && *v14 == 18)
      {
        *(a2 + 1) = v14 + 1;
LABEL_33:
        *(this + 8) |= 2u;
        if (*(this + 1) == v5)
        {
          operator new();
        }

        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
        if (!result)
        {
          return result;
        }

        v15 = *(a2 + 1);
        v12 = *(a2 + 2);
        if (v15 < v12 && *v15 == 24)
        {
          v13 = v15 + 1;
          *(a2 + 1) = v13;
LABEL_39:
          if (v13 >= v12 || (v16 = *v13, v16 < 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 2);
            if (!result)
            {
              return result;
            }

            v17 = *(a2 + 1);
            v12 = *(a2 + 2);
          }

          else
          {
            *(this + 2) = v16;
            v17 = v13 + 1;
            *(a2 + 1) = v17;
          }

          *(this + 8) |= 4u;
          if (v17 == v12 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
          {
            *(a2 + 8) = 0;
            result = 1;
            *(a2 + 36) = 1;
            return result;
          }
        }
      }
    }

    if (v9 == 2)
    {
      goto LABEL_33;
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

uint64_t CLMicroLocationProto::ServiceCreate::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
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
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
    if ((*(v5 + 32) & 4) == 0)
    {
      return this;
    }

    goto LABEL_7;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(1, *(this + 24), a2, a4);
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

uint64_t CLMicroLocationProto::ServiceCreate::ByteSize(CLMicroLocationProto::ServiceCreate *this, unint64_t a2)
{
  LOBYTE(v3) = *(this + 32);
  if (!v3)
  {
    v4 = 0;
    goto LABEL_24;
  }

  if ((*(this + 32) & 1) == 0)
  {
    v4 = 0;
    if ((*(this + 32) & 2) == 0)
    {
      goto LABEL_22;
    }

LABEL_13:
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
      v11 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v10);
      v7 = *(v6 + 23);
      v9 = *(v6 + 8);
      v3 = *(this + 8);
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

    v4 = (v4 + v11 + v7 + 1);
    goto LABEL_22;
  }

  v5 = *(this + 6);
  if ((v5 & 0x80000000) != 0)
  {
    v4 = 11;
    if ((v3 & 2) != 0)
    {
      goto LABEL_13;
    }
  }

  else
  {
    if (v5 >= 0x80)
    {
      v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5) + 1;
      v3 = *(this + 8);
      if ((v3 & 2) == 0)
      {
        goto LABEL_22;
      }

      goto LABEL_13;
    }

    v4 = 2;
    if ((v3 & 2) != 0)
    {
      goto LABEL_13;
    }
  }

LABEL_22:
  if ((v3 & 4) != 0)
  {
    v4 = v4 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 2)) + 1;
  }

LABEL_24:
  *(this + 7) = v4;
  return v4;
}

void CLMicroLocationProto::ServiceCreate::CheckTypeAndMergeFrom(CLMicroLocationProto::ServiceCreate *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  {
    CLMicroLocationProto::BleLeechedBeacons::CheckTypeAndMergeFrom();
  }

  CLMicroLocationProto::ServiceCreate::MergeFrom(this, lpsrc);
}

void CLMicroLocationProto::ServiceDelete::MergeFrom(CLMicroLocationProto::ServiceDelete *this, const CLMicroLocationProto::ServiceDelete *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v11);
  }

  LOBYTE(v4) = *(a2 + 32);
  if (v4)
  {
    if (*(a2 + 32))
    {
      v5 = *(a2 + 6);
      if (v5 - 31 >= 0x19 && (v5 > 0xE || ((1 << v5) & 0x76B6) == 0))
      {
        CLMicroLocationProto::ServiceDelete::MergeFrom();
      }

      *(this + 8) |= 1u;
      *(this + 6) = v5;
      v4 = *(a2 + 8);
    }

    v6 = MEMORY[0x277D82C30];
    if ((v4 & 2) != 0)
    {
      v7 = *(a2 + 1);
      *(this + 8) |= 2u;
      v8 = *(this + 1);
      if (v8 == v6)
      {
        operator new();
      }

      std::string::operator=(v8, v7);
      v4 = *(a2 + 8);
    }

    if ((v4 & 4) != 0)
    {
      v9 = *(a2 + 2);
      *(this + 8) |= 4u;
      v10 = *(this + 2);
      if (v10 == v6)
      {
        operator new();
      }

      std::string::operator=(v10, v9);
    }
  }
}

void sub_2590FB224(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void CLMicroLocationProto::ServiceDelete::~ServiceDelete(CLMicroLocationProto::ServiceDelete *this)
{
  *this = &unk_286A58C50;
  CLMicroLocationProto::ServiceDelete::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  CLMicroLocationProto::ServiceDelete::~ServiceDelete(this);

  JUMPOUT(0x259CA1F90);
}

void CLMicroLocationProto::ServiceDelete::SharedDtor(CLMicroLocationProto::ServiceDelete *this)
{
  v1 = this;
  v2 = *(this + 1);
  v3 = MEMORY[0x277D82C30];
  if (v2 != MEMORY[0x277D82C30] && v2 != 0)
  {
    if (*(v2 + 23) < 0)
    {
      operator delete(*v2);
    }

    this = MEMORY[0x259CA1F90](v2, 0x1012C40EC159624);
  }

  v5 = *(v1 + 2);
  if (v5 != v3 && v5 != 0)
  {
    if (*(v5 + 23) < 0)
    {
      operator delete(*v5);
    }

    this = MEMORY[0x259CA1F90](v5, 0x1012C40EC159624);
  }

  CLMicroLocationProto::protobuf_AddDesc_microlocation_2eproto(this);
}

uint64_t CLMicroLocationProto::ServiceDelete::Clear(uint64_t this)
{
  v1 = *(this + 32);
  if (v1)
  {
    *(this + 24) = 37;
    v2 = MEMORY[0x277D82C30];
    if ((v1 & 2) != 0)
    {
      v3 = *(this + 8);
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

    if ((*(this + 32) & 4) != 0)
    {
      v4 = *(this + 16);
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
  }

  *(this + 32) = 0;
  return this;
}

uint64_t CLMicroLocationProto::ServiceDelete::MergePartialFromCodedStream(CLMicroLocationProto::ServiceDelete *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
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

LABEL_38:
        *(this + 8) |= 4u;
        if (*(this + 2) == v5)
        {
          operator new();
        }

        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadBytes();
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

      v15 = 0;
      v10 = *(a2 + 1);
      if (v10 >= *(a2 + 2) || (v11 = *v10, (v11 & 0x80000000) != 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v15);
        if (!result)
        {
          return result;
        }

        v11 = v15;
      }

      else
      {
        *(a2 + 1) = v10 + 1;
      }

      if (v11 - 31 < 0x19 || v11 <= 0xE && ((1 << v11) & 0x76B6) != 0)
      {
        if (v11 - 31 >= 0x19 && (v11 > 0xE || ((1 << v11) & 0x76B6) == 0))
        {
          CLMicroLocationProto::ServiceDelete::MergeFrom();
        }

        *(this + 8) |= 1u;
        *(this + 6) = v11;
      }

      v12 = *(a2 + 1);
      if (v12 < *(a2 + 2) && *v12 == 18)
      {
        *(a2 + 1) = v12 + 1;
LABEL_32:
        *(this + 8) |= 2u;
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
        if (v13 < *(a2 + 2) && *v13 == 26)
        {
          *(a2 + 1) = v13 + 1;
          goto LABEL_38;
        }
      }
    }

    if (v9 == 2)
    {
      goto LABEL_32;
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

uint64_t CLMicroLocationProto::ServiceDelete::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v4 = this;
  v5 = *(this + 32);
  if ((v5 & 1) == 0)
  {
    if ((v5 & 2) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
    if ((*(v4 + 32) & 4) == 0)
    {
      return this;
    }

    goto LABEL_7;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(1, *(this + 24), a2, a4);
  v5 = *(v4 + 32);
  if ((v5 & 2) != 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  if ((v5 & 4) == 0)
  {
    return this;
  }

LABEL_7:

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBytes();
}

uint64_t CLMicroLocationProto::ServiceDelete::ByteSize(CLMicroLocationProto::ServiceDelete *this, unsigned int a2)
{
  LOBYTE(v3) = *(this + 32);
  if (!v3)
  {
    v4 = 0;
    goto LABEL_32;
  }

  if ((*(this + 32) & 1) == 0)
  {
    v4 = 0;
    if ((*(this + 32) & 2) == 0)
    {
      goto LABEL_22;
    }

LABEL_13:
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
      v11 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v10);
      v7 = *(v6 + 23);
      v9 = *(v6 + 8);
      v3 = *(this + 8);
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

    v4 = (v4 + v11 + v7 + 1);
    goto LABEL_22;
  }

  v5 = *(this + 6);
  if ((v5 & 0x80000000) != 0)
  {
    v4 = 11;
    if ((v3 & 2) != 0)
    {
      goto LABEL_13;
    }
  }

  else
  {
    if (v5 >= 0x80)
    {
      v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5) + 1;
      v3 = *(this + 8);
      if ((v3 & 2) == 0)
      {
        goto LABEL_22;
      }

      goto LABEL_13;
    }

    v4 = 2;
    if ((v3 & 2) != 0)
    {
      goto LABEL_13;
    }
  }

LABEL_22:
  if ((v3 & 4) != 0)
  {
    v12 = *(this + 2);
    v13 = *(v12 + 23);
    v14 = v13;
    v15 = *(v12 + 8);
    if ((v13 & 0x80u) == 0)
    {
      v16 = *(v12 + 23);
    }

    else
    {
      v16 = v15;
    }

    if (v16 >= 0x80)
    {
      v17 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v16);
      v13 = *(v12 + 23);
      v15 = *(v12 + 8);
      v14 = *(v12 + 23);
    }

    else
    {
      v17 = 1;
    }

    if (v14 < 0)
    {
      v13 = v15;
    }

    v4 = (v4 + v17 + v13 + 1);
  }

LABEL_32:
  *(this + 7) = v4;
  return v4;
}

void CLMicroLocationProto::ServiceDelete::CheckTypeAndMergeFrom(CLMicroLocationProto::ServiceDelete *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  {
    CLMicroLocationProto::BleLeechedBeacons::CheckTypeAndMergeFrom();
  }

  CLMicroLocationProto::ServiceDelete::MergeFrom(this, lpsrc);
}

void CLMicroLocationProto::ServiceConnect::MergeFrom(CLMicroLocationProto::ServiceConnect *this, const CLMicroLocationProto::ServiceConnect *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v11);
  }

  LOBYTE(v4) = *(a2 + 32);
  if (v4)
  {
    if (*(a2 + 32))
    {
      v5 = *(a2 + 6);
      if (v5 - 31 >= 0x19 && (v5 > 0xE || ((1 << v5) & 0x76B6) == 0))
      {
        CLMicroLocationProto::ServiceConnect::MergeFrom();
      }

      *(this + 8) |= 1u;
      *(this + 6) = v5;
      v4 = *(a2 + 8);
    }

    v6 = MEMORY[0x277D82C30];
    if ((v4 & 2) != 0)
    {
      v7 = *(a2 + 1);
      *(this + 8) |= 2u;
      v8 = *(this + 1);
      if (v8 == v6)
      {
        operator new();
      }

      std::string::operator=(v8, v7);
      v4 = *(a2 + 8);
    }

    if ((v4 & 4) != 0)
    {
      v9 = *(a2 + 2);
      *(this + 8) |= 4u;
      v10 = *(this + 2);
      if (v10 == v6)
      {
        operator new();
      }

      std::string::operator=(v10, v9);
    }
  }
}

void sub_2590FBA98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void CLMicroLocationProto::ServiceConnect::~ServiceConnect(CLMicroLocationProto::ServiceConnect *this)
{
  *this = &unk_286A58CC8;
  CLMicroLocationProto::ServiceDelete::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  CLMicroLocationProto::ServiceConnect::~ServiceConnect(this);

  JUMPOUT(0x259CA1F90);
}

uint64_t CLMicroLocationProto::ServiceConnect::Clear(uint64_t this)
{
  v1 = *(this + 32);
  if (v1)
  {
    *(this + 24) = 38;
    v2 = MEMORY[0x277D82C30];
    if ((v1 & 2) != 0)
    {
      v3 = *(this + 8);
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

    if ((*(this + 32) & 4) != 0)
    {
      v4 = *(this + 16);
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
  }

  *(this + 32) = 0;
  return this;
}

uint64_t CLMicroLocationProto::ServiceConnect::MergePartialFromCodedStream(CLMicroLocationProto::ServiceConnect *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
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

LABEL_38:
        *(this + 8) |= 4u;
        if (*(this + 2) == v5)
        {
          operator new();
        }

        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadBytes();
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

      v15 = 0;
      v10 = *(a2 + 1);
      if (v10 >= *(a2 + 2) || (v11 = *v10, (v11 & 0x80000000) != 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v15);
        if (!result)
        {
          return result;
        }

        v11 = v15;
      }

      else
      {
        *(a2 + 1) = v10 + 1;
      }

      if (v11 - 31 < 0x19 || v11 <= 0xE && ((1 << v11) & 0x76B6) != 0)
      {
        if (v11 - 31 >= 0x19 && (v11 > 0xE || ((1 << v11) & 0x76B6) == 0))
        {
          CLMicroLocationProto::ServiceConnect::MergeFrom();
        }

        *(this + 8) |= 1u;
        *(this + 6) = v11;
      }

      v12 = *(a2 + 1);
      if (v12 < *(a2 + 2) && *v12 == 18)
      {
        *(a2 + 1) = v12 + 1;
LABEL_32:
        *(this + 8) |= 2u;
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
        if (v13 < *(a2 + 2) && *v13 == 26)
        {
          *(a2 + 1) = v13 + 1;
          goto LABEL_38;
        }
      }
    }

    if (v9 == 2)
    {
      goto LABEL_32;
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

uint64_t CLMicroLocationProto::ServiceConnect::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v4 = this;
  v5 = *(this + 32);
  if ((v5 & 1) == 0)
  {
    if ((v5 & 2) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
    if ((*(v4 + 32) & 4) == 0)
    {
      return this;
    }

    goto LABEL_7;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(1, *(this + 24), a2, a4);
  v5 = *(v4 + 32);
  if ((v5 & 2) != 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  if ((v5 & 4) == 0)
  {
    return this;
  }

LABEL_7:

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBytes();
}

uint64_t CLMicroLocationProto::ServiceConnect::ByteSize(CLMicroLocationProto::ServiceConnect *this, unsigned int a2)
{
  LOBYTE(v3) = *(this + 32);
  if (!v3)
  {
    v4 = 0;
    goto LABEL_32;
  }

  if ((*(this + 32) & 1) == 0)
  {
    v4 = 0;
    if ((*(this + 32) & 2) == 0)
    {
      goto LABEL_22;
    }

LABEL_13:
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
      v11 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v10);
      v7 = *(v6 + 23);
      v9 = *(v6 + 8);
      v3 = *(this + 8);
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

    v4 = (v4 + v11 + v7 + 1);
    goto LABEL_22;
  }

  v5 = *(this + 6);
  if ((v5 & 0x80000000) != 0)
  {
    v4 = 11;
    if ((v3 & 2) != 0)
    {
      goto LABEL_13;
    }
  }

  else
  {
    if (v5 >= 0x80)
    {
      v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5) + 1;
      v3 = *(this + 8);
      if ((v3 & 2) == 0)
      {
        goto LABEL_22;
      }

      goto LABEL_13;
    }

    v4 = 2;
    if ((v3 & 2) != 0)
    {
      goto LABEL_13;
    }
  }

LABEL_22:
  if ((v3 & 4) != 0)
  {
    v12 = *(this + 2);
    v13 = *(v12 + 23);
    v14 = v13;
    v15 = *(v12 + 8);
    if ((v13 & 0x80u) == 0)
    {
      v16 = *(v12 + 23);
    }

    else
    {
      v16 = v15;
    }

    if (v16 >= 0x80)
    {
      v17 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v16);
      v13 = *(v12 + 23);
      v15 = *(v12 + 8);
      v14 = *(v12 + 23);
    }

    else
    {
      v17 = 1;
    }

    if (v14 < 0)
    {
      v13 = v15;
    }

    v4 = (v4 + v17 + v13 + 1);
  }

LABEL_32:
  *(this + 7) = v4;
  return v4;
}

void CLMicroLocationProto::ServiceConnect::CheckTypeAndMergeFrom(CLMicroLocationProto::ServiceConnect *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  {
    CLMicroLocationProto::BleLeechedBeacons::CheckTypeAndMergeFrom();
  }

  CLMicroLocationProto::ServiceConnect::MergeFrom(this, lpsrc);
}

void CLMicroLocationProto::ServiceDisconnect::MergeFrom(CLMicroLocationProto::ServiceDisconnect *this, const CLMicroLocationProto::ServiceDisconnect *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v11);
  }

  LOBYTE(v4) = *(a2 + 32);
  if (v4)
  {
    if (*(a2 + 32))
    {
      v5 = *(a2 + 6);
      if (v5 - 31 >= 0x19 && (v5 > 0xE || ((1 << v5) & 0x76B6) == 0))
      {
        CLMicroLocationProto::ServiceDisconnect::MergeFrom();
      }

      *(this + 8) |= 1u;
      *(this + 6) = v5;
      v4 = *(a2 + 8);
    }

    v6 = MEMORY[0x277D82C30];
    if ((v4 & 2) != 0)
    {
      v7 = *(a2 + 1);
      *(this + 8) |= 2u;
      v8 = *(this + 1);
      if (v8 == v6)
      {
        operator new();
      }

      std::string::operator=(v8, v7);
      v4 = *(a2 + 8);
    }

    if ((v4 & 4) != 0)
    {
      v9 = *(a2 + 2);
      *(this + 8) |= 4u;
      v10 = *(this + 2);
      if (v10 == v6)
      {
        operator new();
      }

      std::string::operator=(v10, v9);
    }
  }
}

void sub_2590FC264(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void CLMicroLocationProto::ServiceDisconnect::~ServiceDisconnect(CLMicroLocationProto::ServiceDisconnect *this)
{
  *this = &unk_286A58D40;
  CLMicroLocationProto::ServiceDelete::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  CLMicroLocationProto::ServiceDisconnect::~ServiceDisconnect(this);

  JUMPOUT(0x259CA1F90);
}

uint64_t CLMicroLocationProto::ServiceDisconnect::Clear(uint64_t this)
{
  v1 = *(this + 32);
  if (v1)
  {
    *(this + 24) = 39;
    v2 = MEMORY[0x277D82C30];
    if ((v1 & 2) != 0)
    {
      v3 = *(this + 8);
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

    if ((*(this + 32) & 4) != 0)
    {
      v4 = *(this + 16);
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
  }

  *(this + 32) = 0;
  return this;
}

uint64_t CLMicroLocationProto::ServiceDisconnect::MergePartialFromCodedStream(CLMicroLocationProto::ServiceDisconnect *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
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

LABEL_38:
        *(this + 8) |= 4u;
        if (*(this + 2) == v5)
        {
          operator new();
        }

        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadBytes();
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

      v15 = 0;
      v10 = *(a2 + 1);
      if (v10 >= *(a2 + 2) || (v11 = *v10, (v11 & 0x80000000) != 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v15);
        if (!result)
        {
          return result;
        }

        v11 = v15;
      }

      else
      {
        *(a2 + 1) = v10 + 1;
      }

      if (v11 - 31 < 0x19 || v11 <= 0xE && ((1 << v11) & 0x76B6) != 0)
      {
        if (v11 - 31 >= 0x19 && (v11 > 0xE || ((1 << v11) & 0x76B6) == 0))
        {
          CLMicroLocationProto::ServiceDisconnect::MergeFrom();
        }

        *(this + 8) |= 1u;
        *(this + 6) = v11;
      }

      v12 = *(a2 + 1);
      if (v12 < *(a2 + 2) && *v12 == 18)
      {
        *(a2 + 1) = v12 + 1;
LABEL_32:
        *(this + 8) |= 2u;
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
        if (v13 < *(a2 + 2) && *v13 == 26)
        {
          *(a2 + 1) = v13 + 1;
          goto LABEL_38;
        }
      }
    }

    if (v9 == 2)
    {
      goto LABEL_32;
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

uint64_t CLMicroLocationProto::ServiceDisconnect::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v4 = this;
  v5 = *(this + 32);
  if ((v5 & 1) == 0)
  {
    if ((v5 & 2) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
    if ((*(v4 + 32) & 4) == 0)
    {
      return this;
    }

    goto LABEL_7;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(1, *(this + 24), a2, a4);
  v5 = *(v4 + 32);
  if ((v5 & 2) != 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  if ((v5 & 4) == 0)
  {
    return this;
  }

LABEL_7:

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBytes();
}

uint64_t CLMicroLocationProto::ServiceDisconnect::ByteSize(CLMicroLocationProto::ServiceDisconnect *this, unsigned int a2)
{
  LOBYTE(v3) = *(this + 32);
  if (!v3)
  {
    v4 = 0;
    goto LABEL_32;
  }

  if ((*(this + 32) & 1) == 0)
  {
    v4 = 0;
    if ((*(this + 32) & 2) == 0)
    {
      goto LABEL_22;
    }

LABEL_13:
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
      v11 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v10);
      v7 = *(v6 + 23);
      v9 = *(v6 + 8);
      v3 = *(this + 8);
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

    v4 = (v4 + v11 + v7 + 1);
    goto LABEL_22;
  }

  v5 = *(this + 6);
  if ((v5 & 0x80000000) != 0)
  {
    v4 = 11;
    if ((v3 & 2) != 0)
    {
      goto LABEL_13;
    }
  }

  else
  {
    if (v5 >= 0x80)
    {
      v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5) + 1;
      v3 = *(this + 8);
      if ((v3 & 2) == 0)
      {
        goto LABEL_22;
      }

      goto LABEL_13;
    }

    v4 = 2;
    if ((v3 & 2) != 0)
    {
      goto LABEL_13;
    }
  }

LABEL_22:
  if ((v3 & 4) != 0)
  {
    v12 = *(this + 2);
    v13 = *(v12 + 23);
    v14 = v13;
    v15 = *(v12 + 8);
    if ((v13 & 0x80u) == 0)
    {
      v16 = *(v12 + 23);
    }

    else
    {
      v16 = v15;
    }

    if (v16 >= 0x80)
    {
      v17 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v16);
      v13 = *(v12 + 23);
      v15 = *(v12 + 8);
      v14 = *(v12 + 23);
    }

    else
    {
      v17 = 1;
    }

    if (v14 < 0)
    {
      v13 = v15;
    }

    v4 = (v4 + v17 + v13 + 1);
  }

LABEL_32:
  *(this + 7) = v4;
  return v4;
}

void CLMicroLocationProto::ServiceDisconnect::CheckTypeAndMergeFrom(CLMicroLocationProto::ServiceDisconnect *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  {
    CLMicroLocationProto::BleLeechedBeacons::CheckTypeAndMergeFrom();
  }

  CLMicroLocationProto::ServiceDisconnect::MergeFrom(this, lpsrc);
}

void CLMicroLocationProto::ServiceStartUpdating::MergeFrom(CLMicroLocationProto::ServiceStartUpdating *this, const CLMicroLocationProto::ServiceStartUpdating *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v12);
  }

  LOBYTE(v4) = *(a2 + 36);
  if (v4)
  {
    if (*(a2 + 36))
    {
      v5 = *(a2 + 4);
      if (v5 - 31 >= 0x19 && (v5 > 0xE || ((1 << v5) & 0x76B6) == 0))
      {
        CLMicroLocationProto::ServiceStartUpdating::MergeFrom();
      }

      *(this + 9) |= 1u;
      *(this + 4) = v5;
      v4 = *(a2 + 9);
    }

    v6 = MEMORY[0x277D82C30];
    if ((v4 & 2) != 0)
    {
      v8 = *(a2 + 1);
      *(this + 9) |= 2u;
      v9 = *(this + 1);
      if (v9 == v6)
      {
        operator new();
      }

      std::string::operator=(v9, v8);
      v4 = *(a2 + 9);
      if ((v4 & 4) == 0)
      {
LABEL_11:
        if ((v4 & 8) == 0)
        {
          return;
        }

        goto LABEL_12;
      }
    }

    else if ((v4 & 4) == 0)
    {
      goto LABEL_11;
    }

    v10 = *(a2 + 3);
    *(this + 9) |= 4u;
    v11 = *(this + 3);
    if (v11 == v6)
    {
      operator new();
    }

    std::string::operator=(v11, v10);
    if ((*(a2 + 9) & 8) != 0)
    {
LABEL_12:
      v7 = *(a2 + 20);
      *(this + 9) |= 8u;
      *(this + 20) = v7;
    }
  }
}

void sub_2590FCA58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void CLMicroLocationProto::ServiceStartUpdating::~ServiceStartUpdating(CLMicroLocationProto::ServiceStartUpdating *this)
{
  *this = &unk_286A58DB8;
  CLMicroLocationProto::ServiceStartUpdating::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  CLMicroLocationProto::ServiceStartUpdating::~ServiceStartUpdating(this);

  JUMPOUT(0x259CA1F90);
}

void CLMicroLocationProto::ServiceStartUpdating::SharedDtor(CLMicroLocationProto::ServiceStartUpdating *this)
{
  v1 = this;
  v2 = *(this + 1);
  v3 = MEMORY[0x277D82C30];
  if (v2 != MEMORY[0x277D82C30] && v2 != 0)
  {
    if (*(v2 + 23) < 0)
    {
      operator delete(*v2);
    }

    this = MEMORY[0x259CA1F90](v2, 0x1012C40EC159624);
  }

  v5 = *(v1 + 3);
  if (v5 != v3 && v5 != 0)
  {
    if (*(v5 + 23) < 0)
    {
      operator delete(*v5);
    }

    this = MEMORY[0x259CA1F90](v5, 0x1012C40EC159624);
  }

  CLMicroLocationProto::protobuf_AddDesc_microlocation_2eproto(this);
}

uint64_t CLMicroLocationProto::ServiceStartUpdating::Clear(uint64_t this)
{
  v1 = *(this + 36);
  if (v1)
  {
    *(this + 16) = 40;
    v2 = MEMORY[0x277D82C30];
    if ((v1 & 2) != 0)
    {
      v3 = *(this + 8);
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

    if ((*(this + 36) & 4) != 0)
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

    *(this + 20) = 0;
  }

  *(this + 36) = 0;
  return this;
}

uint64_t CLMicroLocationProto::ServiceStartUpdating::MergePartialFromCodedStream(CLMicroLocationProto::ServiceStartUpdating *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
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
        if (TagFallback >> 3 <= 2)
        {
          break;
        }

        if (v8 != 3)
        {
          if (v8 == 4 && (TagFallback & 7) == 0)
          {
            v11 = *(a2 + 1);
            v10 = *(a2 + 2);
            goto LABEL_48;
          }

          goto LABEL_21;
        }

        if (v9 != 2)
        {
          goto LABEL_21;
        }

LABEL_42:
        *(this + 9) |= 4u;
        if (*(this + 3) == v5)
        {
          operator new();
        }

        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadBytes();
        if (!result)
        {
          return result;
        }

        v16 = *(a2 + 1);
        v10 = *(a2 + 2);
        if (v16 < v10 && *v16 == 32)
        {
          v11 = v16 + 1;
          *(a2 + 1) = v11;
LABEL_48:
          v21 = 0;
          if (v11 >= v10 || (v17 = *v11, (v17 & 0x80000000) != 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v21);
            if (!result)
            {
              return result;
            }

            v17 = v21;
            v18 = *(a2 + 1);
            v10 = *(a2 + 2);
          }

          else
          {
            v18 = v11 + 1;
            *(a2 + 1) = v18;
          }

          *(this + 20) = v17 != 0;
          *(this + 9) |= 8u;
          if (v18 == v10 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
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
        goto LABEL_21;
      }

      v20 = 0;
      v12 = *(a2 + 1);
      if (v12 >= *(a2 + 2) || (v13 = *v12, (v13 & 0x80000000) != 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v20);
        if (!result)
        {
          return result;
        }

        v13 = v20;
      }

      else
      {
        *(a2 + 1) = v12 + 1;
      }

      if (v13 - 31 < 0x19 || v13 <= 0xE && ((1 << v13) & 0x76B6) != 0)
      {
        if (v13 - 31 >= 0x19 && (v13 > 0xE || ((1 << v13) & 0x76B6) == 0))
        {
          CLMicroLocationProto::ServiceStartUpdating::MergeFrom();
        }

        *(this + 9) |= 1u;
        *(this + 4) = v13;
      }

      v14 = *(a2 + 1);
      if (v14 < *(a2 + 2) && *v14 == 18)
      {
        *(a2 + 1) = v14 + 1;
LABEL_36:
        *(this + 9) |= 2u;
        if (*(this + 1) == v5)
        {
          operator new();
        }

        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
        if (!result)
        {
          return result;
        }

        v15 = *(a2 + 1);
        if (v15 < *(a2 + 2) && *v15 == 26)
        {
          *(a2 + 1) = v15 + 1;
          goto LABEL_42;
        }
      }
    }

    if (v8 == 2 && v9 == 2)
    {
      goto LABEL_36;
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

uint64_t CLMicroLocationProto::ServiceStartUpdating::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 36);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(1, *(this + 16), a2, a4);
    v6 = *(v5 + 36);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

LABEL_8:
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBytes();
      if ((*(v5 + 36) & 8) == 0)
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
  v6 = *(v5 + 36);
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
  v7 = *(v5 + 20);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(4, v7, a2, a4);
}

uint64_t CLMicroLocationProto::ServiceStartUpdating::ByteSize(CLMicroLocationProto::ServiceStartUpdating *this, unsigned int a2)
{
  v3 = *(this + 9);
  if (!v3)
  {
    result = 0;
    goto LABEL_33;
  }

  if ((v3 & 1) == 0)
  {
    v4 = 0;
    if ((v3 & 2) == 0)
    {
      goto LABEL_22;
    }

LABEL_13:
    v7 = *(this + 1);
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
      v3 = *(this + 9);
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

    v4 += v12 + v8 + 1;
    goto LABEL_22;
  }

  v6 = *(this + 4);
  if ((v6 & 0x80000000) != 0)
  {
    v4 = 11;
    if ((v3 & 2) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_13;
  }

  if (v6 < 0x80)
  {
    v4 = 2;
    if ((v3 & 2) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_13;
  }

  v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v6) + 1;
  v3 = *(this + 9);
  if ((v3 & 2) != 0)
  {
    goto LABEL_13;
  }

LABEL_22:
  if ((v3 & 4) != 0)
  {
    v13 = *(this + 3);
    v14 = *(v13 + 23);
    v15 = v14;
    v16 = *(v13 + 8);
    if ((v14 & 0x80u) == 0)
    {
      v17 = *(v13 + 23);
    }

    else
    {
      v17 = v16;
    }

    if (v17 >= 0x80)
    {
      v18 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v17);
      v14 = *(v13 + 23);
      v16 = *(v13 + 8);
      v3 = *(this + 9);
      v15 = *(v13 + 23);
    }

    else
    {
      v18 = 1;
    }

    if (v15 < 0)
    {
      v14 = v16;
    }

    v4 += v18 + v14 + 1;
  }

  result = ((v3 >> 2) & 2) + v4;
LABEL_33:
  *(this + 8) = result;
  return result;
}

void CLMicroLocationProto::ServiceStartUpdating::CheckTypeAndMergeFrom(CLMicroLocationProto::ServiceStartUpdating *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  {
    CLMicroLocationProto::BleLeechedBeacons::CheckTypeAndMergeFrom();
  }

  CLMicroLocationProto::ServiceStartUpdating::MergeFrom(this, lpsrc);
}

void CLMicroLocationProto::ServiceStopUpdating::MergeFrom(CLMicroLocationProto::ServiceStopUpdating *this, const CLMicroLocationProto::ServiceStopUpdating *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v11);
  }

  LOBYTE(v4) = *(a2 + 32);
  if (v4)
  {
    if (*(a2 + 32))
    {
      v5 = *(a2 + 6);
      if (v5 - 31 >= 0x19 && (v5 > 0xE || ((1 << v5) & 0x76B6) == 0))
      {
        CLMicroLocationProto::ServiceStopUpdating::MergeFrom();
      }

      *(this + 8) |= 1u;
      *(this + 6) = v5;
      v4 = *(a2 + 8);
    }

    v6 = MEMORY[0x277D82C30];
    if ((v4 & 2) != 0)
    {
      v7 = *(a2 + 1);
      *(this + 8) |= 2u;
      v8 = *(this + 1);
      if (v8 == v6)
      {
        operator new();
      }

      std::string::operator=(v8, v7);
      v4 = *(a2 + 8);
    }

    if ((v4 & 4) != 0)
    {
      v9 = *(a2 + 2);
      *(this + 8) |= 4u;
      v10 = *(this + 2);
      if (v10 == v6)
      {
        operator new();
      }

      std::string::operator=(v10, v9);
    }
  }
}

void sub_2590FD388(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void CLMicroLocationProto::ServiceStopUpdating::~ServiceStopUpdating(CLMicroLocationProto::ServiceStopUpdating *this)
{
  *this = &unk_286A58E30;
  CLMicroLocationProto::ServiceDelete::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  CLMicroLocationProto::ServiceStopUpdating::~ServiceStopUpdating(this);

  JUMPOUT(0x259CA1F90);
}

uint64_t CLMicroLocationProto::ServiceStopUpdating::Clear(uint64_t this)
{
  v1 = *(this + 32);
  if (v1)
  {
    *(this + 24) = 41;
    v2 = MEMORY[0x277D82C30];
    if ((v1 & 2) != 0)
    {
      v3 = *(this + 8);
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

    if ((*(this + 32) & 4) != 0)
    {
      v4 = *(this + 16);
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
  }

  *(this + 32) = 0;
  return this;
}

uint64_t CLMicroLocationProto::ServiceStopUpdating::MergePartialFromCodedStream(CLMicroLocationProto::ServiceStopUpdating *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
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

LABEL_38:
        *(this + 8) |= 4u;
        if (*(this + 2) == v5)
        {
          operator new();
        }

        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadBytes();
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

      v15 = 0;
      v10 = *(a2 + 1);
      if (v10 >= *(a2 + 2) || (v11 = *v10, (v11 & 0x80000000) != 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v15);
        if (!result)
        {
          return result;
        }

        v11 = v15;
      }

      else
      {
        *(a2 + 1) = v10 + 1;
      }

      if (v11 - 31 < 0x19 || v11 <= 0xE && ((1 << v11) & 0x76B6) != 0)
      {
        if (v11 - 31 >= 0x19 && (v11 > 0xE || ((1 << v11) & 0x76B6) == 0))
        {
          CLMicroLocationProto::ServiceStopUpdating::MergeFrom();
        }

        *(this + 8) |= 1u;
        *(this + 6) = v11;
      }

      v12 = *(a2 + 1);
      if (v12 < *(a2 + 2) && *v12 == 18)
      {
        *(a2 + 1) = v12 + 1;
LABEL_32:
        *(this + 8) |= 2u;
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
        if (v13 < *(a2 + 2) && *v13 == 26)
        {
          *(a2 + 1) = v13 + 1;
          goto LABEL_38;
        }
      }
    }

    if (v9 == 2)
    {
      goto LABEL_32;
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

uint64_t CLMicroLocationProto::ServiceStopUpdating::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v4 = this;
  v5 = *(this + 32);
  if ((v5 & 1) == 0)
  {
    if ((v5 & 2) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
    if ((*(v4 + 32) & 4) == 0)
    {
      return this;
    }

    goto LABEL_7;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(1, *(this + 24), a2, a4);
  v5 = *(v4 + 32);
  if ((v5 & 2) != 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  if ((v5 & 4) == 0)
  {
    return this;
  }

LABEL_7:

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBytes();
}

uint64_t CLMicroLocationProto::ServiceStopUpdating::ByteSize(CLMicroLocationProto::ServiceStopUpdating *this, unsigned int a2)
{
  LOBYTE(v3) = *(this + 32);
  if (!v3)
  {
    v4 = 0;
    goto LABEL_32;
  }

  if ((*(this + 32) & 1) == 0)
  {
    v4 = 0;
    if ((*(this + 32) & 2) == 0)
    {
      goto LABEL_22;
    }

LABEL_13:
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
      v11 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v10);
      v7 = *(v6 + 23);
      v9 = *(v6 + 8);
      v3 = *(this + 8);
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

    v4 = (v4 + v11 + v7 + 1);
    goto LABEL_22;
  }

  v5 = *(this + 6);
  if ((v5 & 0x80000000) != 0)
  {
    v4 = 11;
    if ((v3 & 2) != 0)
    {
      goto LABEL_13;
    }
  }

  else
  {
    if (v5 >= 0x80)
    {
      v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5) + 1;
      v3 = *(this + 8);
      if ((v3 & 2) == 0)
      {
        goto LABEL_22;
      }

      goto LABEL_13;
    }

    v4 = 2;
    if ((v3 & 2) != 0)
    {
      goto LABEL_13;
    }
  }

LABEL_22:
  if ((v3 & 4) != 0)
  {
    v12 = *(this + 2);
    v13 = *(v12 + 23);
    v14 = v13;
    v15 = *(v12 + 8);
    if ((v13 & 0x80u) == 0)
    {
      v16 = *(v12 + 23);
    }

    else
    {
      v16 = v15;
    }

    if (v16 >= 0x80)
    {
      v17 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v16);
      v13 = *(v12 + 23);
      v15 = *(v12 + 8);
      v14 = *(v12 + 23);
    }

    else
    {
      v17 = 1;
    }

    if (v14 < 0)
    {
      v13 = v15;
    }

    v4 = (v4 + v17 + v13 + 1);
  }

LABEL_32:
  *(this + 7) = v4;
  return v4;
}

void CLMicroLocationProto::ServiceStopUpdating::CheckTypeAndMergeFrom(CLMicroLocationProto::ServiceStopUpdating *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  {
    CLMicroLocationProto::BleLeechedBeacons::CheckTypeAndMergeFrom();
  }

  CLMicroLocationProto::ServiceStopUpdating::MergeFrom(this, lpsrc);
}

void CLMicroLocationProto::RequestObservation::MergeFrom(CLMicroLocationProto::RequestObservation *this, const CLMicroLocationProto::RequestObservation *a2)
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

  if (*(a2 + 48))
  {
    v5 = *(a2 + 10);
    if (v5 - 31 >= 0x19 && (v5 > 0xE || ((1 << v5) & 0x76B6) == 0))
    {
      CLMicroLocationProto::RequestObservation::MergeFrom();
    }

    *(this + 12) |= 1u;
    *(this + 10) = v5;
    v4 = *(a2 + 12);
  }

  v6 = MEMORY[0x277D82C30];
  if ((v4 & 2) == 0)
  {
    if ((v4 & 4) == 0)
    {
      goto LABEL_11;
    }

LABEL_17:
    v9 = *(a2 + 2);
    *(this + 12) |= 4u;
    v10 = *(this + 2);
    if (v10 == v6)
    {
      operator new();
    }

    std::string::operator=(v10, v9);
    v4 = *(a2 + 12);
    if ((v4 & 8) == 0)
    {
LABEL_12:
      if ((v4 & 0x10) == 0)
      {
        return;
      }

      goto LABEL_23;
    }

    goto LABEL_20;
  }

  v7 = *(a2 + 1);
  *(this + 12) |= 2u;
  v8 = *(this + 1);
  if (v8 == v6)
  {
    operator new();
  }

  std::string::operator=(v8, v7);
  v4 = *(a2 + 12);
  if ((v4 & 4) != 0)
  {
    goto LABEL_17;
  }

LABEL_11:
  if ((v4 & 8) == 0)
  {
    goto LABEL_12;
  }

LABEL_20:
  v11 = *(a2 + 3);
  *(this + 12) |= 8u;
  v12 = *(this + 3);
  if (v12 == v6)
  {
    operator new();
  }

  std::string::operator=(v12, v11);
  if ((*(a2 + 12) & 0x10) != 0)
  {
LABEL_23:
    v13 = *(a2 + 4);
    *(this + 12) |= 0x10u;
    v14 = *(this + 4);
    if (v14 == v6)
    {
      operator new();
    }

    std::string::operator=(v14, v13);
  }
}

void sub_2590FDC04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void CLMicroLocationProto::RequestObservation::~RequestObservation(CLMicroLocationProto::RequestObservation *this)
{
  *this = &unk_286A58EA8;
  CLMicroLocationProto::RequestObservation::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  CLMicroLocationProto::RequestObservation::~RequestObservation(this);

  JUMPOUT(0x259CA1F90);
}

void CLMicroLocationProto::RequestObservation::SharedDtor(CLMicroLocationProto::RequestObservation *this)
{
  v1 = this;
  v2 = *(this + 1);
  v3 = MEMORY[0x277D82C30];
  if (v2 != MEMORY[0x277D82C30] && v2 != 0)
  {
    if (*(v2 + 23) < 0)
    {
      operator delete(*v2);
    }

    this = MEMORY[0x259CA1F90](v2, 0x1012C40EC159624);
  }

  v5 = *(v1 + 2);
  if (v5 != v3 && v5 != 0)
  {
    if (*(v5 + 23) < 0)
    {
      operator delete(*v5);
    }

    this = MEMORY[0x259CA1F90](v5, 0x1012C40EC159624);
  }

  v7 = *(v1 + 3);
  if (v7 != v3 && v7 != 0)
  {
    if (*(v7 + 23) < 0)
    {
      operator delete(*v7);
    }

    this = MEMORY[0x259CA1F90](v7, 0x1012C40EC159624);
  }

  v9 = *(v1 + 4);
  if (v9 != v3 && v9 != 0)
  {
    if (*(v9 + 23) < 0)
    {
      operator delete(*v9);
    }

    this = MEMORY[0x259CA1F90](v9, 0x1012C40EC159624);
  }

  CLMicroLocationProto::protobuf_AddDesc_microlocation_2eproto(this);
}

uint64_t CLMicroLocationProto::RequestObservation::Clear(uint64_t this)
{
  v1 = *(this + 48);
  if (v1)
  {
    *(this + 40) = 42;
    v2 = MEMORY[0x277D82C30];
    if ((v1 & 2) != 0)
    {
      v3 = *(this + 8);
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

    if ((*(this + 48) & 4) != 0)
    {
      v4 = *(this + 16);
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

    if ((*(this + 48) & 8) != 0)
    {
      v5 = *(this + 24);
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

    if ((*(this + 48) & 0x10) != 0)
    {
      v6 = *(this + 32);
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
  }

  *(this + 48) = 0;
  return this;
}

uint64_t CLMicroLocationProto::RequestObservation::MergePartialFromCodedStream(CLMicroLocationProto::RequestObservation *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
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

          goto LABEL_40;
        }

        if ((TagFallback & 7) != 0)
        {
          goto LABEL_22;
        }

        v17 = 0;
        v10 = *(a2 + 1);
        if (v10 >= *(a2 + 2) || (v11 = *v10, (v11 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v17);
          if (!result)
          {
            return result;
          }

          v11 = v17;
        }

        else
        {
          *(a2 + 1) = v10 + 1;
        }

        if (v11 - 31 < 0x19 || v11 <= 0xE && ((1 << v11) & 0x76B6) != 0)
        {
          if (v11 - 31 >= 0x19 && (v11 > 0xE || ((1 << v11) & 0x76B6) == 0))
          {
            CLMicroLocationProto::RequestObservation::MergeFrom();
          }

          *(this + 12) |= 1u;
          *(this + 10) = v11;
        }

        v12 = *(a2 + 1);
        if (v12 < *(a2 + 2) && *v12 == 18)
        {
          *(a2 + 1) = v12 + 1;
LABEL_40:
          *(this + 12) |= 2u;
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
          if (v13 < *(a2 + 2) && *v13 == 26)
          {
            *(a2 + 1) = v13 + 1;
LABEL_46:
            *(this + 12) |= 4u;
            if (*(this + 2) == v5)
            {
              operator new();
            }

            result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadBytes();
            if (!result)
            {
              return result;
            }

            v14 = *(a2 + 1);
            if (v14 < *(a2 + 2) && *v14 == 34)
            {
              *(a2 + 1) = v14 + 1;
              goto LABEL_52;
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

        goto LABEL_46;
      }

      if (v8 != 4)
      {
        break;
      }

      if (v9 != 2)
      {
        goto LABEL_22;
      }

LABEL_52:
      *(this + 12) |= 8u;
      if (*(this + 3) == v5)
      {
        operator new();
      }

      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadBytes();
      if (!result)
      {
        return result;
      }

      v15 = *(a2 + 1);
      if (v15 < *(a2 + 2) && *v15 == 42)
      {
        *(a2 + 1) = v15 + 1;
LABEL_58:
        *(this + 12) |= 0x10u;
        if (*(this + 4) == v5)
        {
          operator new();
        }

        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadBytes();
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
      goto LABEL_58;
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

uint64_t CLMicroLocationProto::RequestObservation::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v4 = this;
  v5 = *(this + 48);
  if (v5)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(1, *(this + 40), a2, a4);
    v5 = *(v4 + 48);
    if ((v5 & 2) == 0)
    {
LABEL_3:
      if ((v5 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_9;
    }
  }

  else if ((v5 & 2) == 0)
  {
    goto LABEL_3;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
  v5 = *(v4 + 48);
  if ((v5 & 4) == 0)
  {
LABEL_4:
    if ((v5 & 8) == 0)
    {
      goto LABEL_5;
    }

LABEL_10:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBytes();
    if ((*(v4 + 48) & 0x10) == 0)
    {
      return this;
    }

    goto LABEL_11;
  }

LABEL_9:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBytes();
  v5 = *(v4 + 48);
  if ((v5 & 8) != 0)
  {
    goto LABEL_10;
  }

LABEL_5:
  if ((v5 & 0x10) == 0)
  {
    return this;
  }

LABEL_11:

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBytes();
}

uint64_t CLMicroLocationProto::RequestObservation::ByteSize(CLMicroLocationProto::RequestObservation *this, unsigned int a2)
{
  LOBYTE(v3) = *(this + 48);
  if (!v3)
  {
    v4 = 0;
    goto LABEL_53;
  }

  if (*(this + 48))
  {
    v5 = *(this + 10);
    if ((v5 & 0x80000000) != 0)
    {
      v4 = 11;
      if ((v3 & 2) == 0)
      {
        goto LABEL_22;
      }
    }

    else if (v5 >= 0x80)
    {
      v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5) + 1;
      v3 = *(this + 12);
      if ((v3 & 2) == 0)
      {
        goto LABEL_22;
      }
    }

    else
    {
      v4 = 2;
      if ((v3 & 2) == 0)
      {
        goto LABEL_22;
      }
    }
  }

  else
  {
    v4 = 0;
    if ((*(this + 48) & 2) == 0)
    {
      goto LABEL_22;
    }
  }

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
    v11 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v10);
    v7 = *(v6 + 23);
    v9 = *(v6 + 8);
    v3 = *(this + 12);
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

  v4 = (v4 + v11 + v7 + 1);
LABEL_22:
  if ((v3 & 4) != 0)
  {
    v12 = *(this + 2);
    v13 = *(v12 + 23);
    v14 = v13;
    v15 = *(v12 + 8);
    if ((v13 & 0x80u) == 0)
    {
      v16 = *(v12 + 23);
    }

    else
    {
      v16 = v15;
    }

    if (v16 >= 0x80)
    {
      v17 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v16);
      v13 = *(v12 + 23);
      v15 = *(v12 + 8);
      v3 = *(this + 12);
      v14 = *(v12 + 23);
    }

    else
    {
      v17 = 1;
    }

    if (v14 < 0)
    {
      v13 = v15;
    }

    v4 = (v4 + v17 + v13 + 1);
    if ((v3 & 8) == 0)
    {
LABEL_24:
      if ((v3 & 0x10) == 0)
      {
        goto LABEL_53;
      }

      goto LABEL_44;
    }
  }

  else if ((v3 & 8) == 0)
  {
    goto LABEL_24;
  }

  v18 = *(this + 3);
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
    v3 = *(this + 12);
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

  v4 = (v4 + v23 + v19 + 1);
  if ((v3 & 0x10) != 0)
  {
LABEL_44:
    v24 = *(this + 4);
    v25 = *(v24 + 23);
    v26 = v25;
    v27 = *(v24 + 8);
    if ((v25 & 0x80u) == 0)
    {
      v28 = *(v24 + 23);
    }

    else
    {
      v28 = v27;
    }

    if (v28 >= 0x80)
    {
      v29 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v28);
      v25 = *(v24 + 23);
      v27 = *(v24 + 8);
      v26 = *(v24 + 23);
    }

    else
    {
      v29 = 1;
    }

    if (v26 < 0)
    {
      v25 = v27;
    }

    v4 = (v4 + v29 + v25 + 1);
  }

LABEL_53:
  *(this + 11) = v4;
  return v4;
}

void CLMicroLocationProto::RequestObservation::CheckTypeAndMergeFrom(CLMicroLocationProto::RequestObservation *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  {
    CLMicroLocationProto::BleLeechedBeacons::CheckTypeAndMergeFrom();
  }

  CLMicroLocationProto::RequestObservation::MergeFrom(this, lpsrc);
}

void CLMicroLocationProto::RequestPrediction::MergeFrom(CLMicroLocationProto::RequestPrediction *this, const CLMicroLocationProto::RequestPrediction *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v13);
  }

  LOBYTE(v4) = *(a2 + 40);
  if (v4)
  {
    if (*(a2 + 40))
    {
      v5 = *(a2 + 8);
      if (v5 - 31 >= 0x19 && (v5 > 0xE || ((1 << v5) & 0x76B6) == 0))
      {
        CLMicroLocationProto::RequestPrediction::MergeFrom();
      }

      *(this + 10) |= 1u;
      *(this + 8) = v5;
      v4 = *(a2 + 10);
    }

    v6 = MEMORY[0x277D82C30];
    if ((v4 & 2) != 0)
    {
      v7 = *(a2 + 1);
      *(this + 10) |= 2u;
      v8 = *(this + 1);
      if (v8 == v6)
      {
        operator new();
      }

      std::string::operator=(v8, v7);
      v4 = *(a2 + 10);
      if ((v4 & 4) == 0)
      {
LABEL_11:
        if ((v4 & 8) == 0)
        {
          return;
        }

        goto LABEL_19;
      }
    }

    else if ((v4 & 4) == 0)
    {
      goto LABEL_11;
    }

    v9 = *(a2 + 2);
    *(this + 10) |= 4u;
    v10 = *(this + 2);
    if (v10 == v6)
    {
      operator new();
    }

    std::string::operator=(v10, v9);
    if ((*(a2 + 10) & 8) != 0)
    {
LABEL_19:
      v11 = *(a2 + 3);
      *(this + 10) |= 8u;
      v12 = *(this + 3);
      if (v12 == v6)
      {
        operator new();
      }

      std::string::operator=(v12, v11);
    }
  }
}

void sub_2590FE780(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void CLMicroLocationProto::RequestPrediction::~RequestPrediction(CLMicroLocationProto::RequestPrediction *this)
{
  *this = &unk_286A58F20;
  CLMicroLocationProto::TruthLabelDonation::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  CLMicroLocationProto::RequestPrediction::~RequestPrediction(this);

  JUMPOUT(0x259CA1F90);
}

uint64_t CLMicroLocationProto::RequestPrediction::Clear(uint64_t this)
{
  v1 = *(this + 40);
  if (v1)
  {
    *(this + 32) = 43;
    v2 = MEMORY[0x277D82C30];
    if ((v1 & 2) != 0)
    {
      v3 = *(this + 8);
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

    if ((*(this + 40) & 4) != 0)
    {
      v4 = *(this + 16);
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

    if ((*(this + 40) & 8) != 0)
    {
      v5 = *(this + 24);
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
  }

  *(this + 40) = 0;
  return this;
}

uint64_t CLMicroLocationProto::RequestPrediction::MergePartialFromCodedStream(CLMicroLocationProto::RequestPrediction *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
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
        if (TagFallback >> 3 <= 2)
        {
          break;
        }

        if (v8 != 3)
        {
          if (v8 == 4 && v9 == 2)
          {
            goto LABEL_48;
          }

          goto LABEL_21;
        }

        if (v9 != 2)
        {
          goto LABEL_21;
        }

LABEL_42:
        *(this + 10) |= 4u;
        if (*(this + 2) == v5)
        {
          operator new();
        }

        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadBytes();
        if (!result)
        {
          return result;
        }

        v14 = *(a2 + 1);
        if (v14 < *(a2 + 2) && *v14 == 34)
        {
          *(a2 + 1) = v14 + 1;
LABEL_48:
          *(this + 10) |= 8u;
          if (*(this + 3) == v5)
          {
            operator new();
          }

          result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadBytes();
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

      if (v8 != 1)
      {
        break;
      }

      if ((TagFallback & 7) != 0)
      {
        goto LABEL_21;
      }

      v16 = 0;
      v10 = *(a2 + 1);
      if (v10 >= *(a2 + 2) || (v11 = *v10, (v11 & 0x80000000) != 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v16);
        if (!result)
        {
          return result;
        }

        v11 = v16;
      }

      else
      {
        *(a2 + 1) = v10 + 1;
      }

      if (v11 - 31 < 0x19 || v11 <= 0xE && ((1 << v11) & 0x76B6) != 0)
      {
        if (v11 - 31 >= 0x19 && (v11 > 0xE || ((1 << v11) & 0x76B6) == 0))
        {
          CLMicroLocationProto::RequestPrediction::MergeFrom();
        }

        *(this + 10) |= 1u;
        *(this + 8) = v11;
      }

      v12 = *(a2 + 1);
      if (v12 < *(a2 + 2) && *v12 == 18)
      {
        *(a2 + 1) = v12 + 1;
LABEL_36:
        *(this + 10) |= 2u;
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
        if (v13 < *(a2 + 2) && *v13 == 26)
        {
          *(a2 + 1) = v13 + 1;
          goto LABEL_42;
        }
      }
    }

    if (v8 == 2 && v9 == 2)
    {
      goto LABEL_36;
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

uint64_t CLMicroLocationProto::RequestPrediction::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v4 = this;
  v5 = *(this + 40);
  if (v5)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(1, *(this + 32), a2, a4);
    v5 = *(v4 + 40);
    if ((v5 & 2) == 0)
    {
LABEL_3:
      if ((v5 & 4) == 0)
      {
        goto LABEL_4;
      }

LABEL_8:
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBytes();
      if ((*(v4 + 40) & 8) == 0)
      {
        return this;
      }

      goto LABEL_9;
    }
  }

  else if ((v5 & 2) == 0)
  {
    goto LABEL_3;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
  v5 = *(v4 + 40);
  if ((v5 & 4) != 0)
  {
    goto LABEL_8;
  }

LABEL_4:
  if ((v5 & 8) == 0)
  {
    return this;
  }

LABEL_9:

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBytes();
}

uint64_t CLMicroLocationProto::RequestPrediction::ByteSize(CLMicroLocationProto::RequestPrediction *this, unsigned int a2)
{
  LOBYTE(v3) = *(this + 40);
  if (!v3)
  {
    v4 = 0;
    goto LABEL_43;
  }

  if (*(this + 40))
  {
    v5 = *(this + 8);
    if ((v5 & 0x80000000) != 0)
    {
      v4 = 11;
      if ((v3 & 2) == 0)
      {
        goto LABEL_22;
      }
    }

    else if (v5 >= 0x80)
    {
      v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5) + 1;
      v3 = *(this + 10);
      if ((v3 & 2) == 0)
      {
        goto LABEL_22;
      }
    }

    else
    {
      v4 = 2;
      if ((v3 & 2) == 0)
      {
        goto LABEL_22;
      }
    }
  }

  else
  {
    v4 = 0;
    if ((*(this + 40) & 2) == 0)
    {
      goto LABEL_22;
    }
  }

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

  v4 = (v4 + v11 + v7 + 1);
LABEL_22:
  if ((v3 & 4) == 0)
  {
    if ((v3 & 8) == 0)
    {
      goto LABEL_43;
    }

    goto LABEL_34;
  }

  v12 = *(this + 2);
  v13 = *(v12 + 23);
  v14 = v13;
  v15 = *(v12 + 8);
  if ((v13 & 0x80u) == 0)
  {
    v16 = *(v12 + 23);
  }

  else
  {
    v16 = v15;
  }

  if (v16 >= 0x80)
  {
    v17 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v16);
    v13 = *(v12 + 23);
    v15 = *(v12 + 8);
    v3 = *(this + 10);
    v14 = *(v12 + 23);
  }

  else
  {
    v17 = 1;
  }

  if (v14 < 0)
  {
    v13 = v15;
  }

  v4 = (v4 + v17 + v13 + 1);
  if ((v3 & 8) != 0)
  {
LABEL_34:
    v18 = *(this + 3);
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

    v4 = (v4 + v23 + v19 + 1);
  }

LABEL_43:
  *(this + 9) = v4;
  return v4;
}

void CLMicroLocationProto::RequestPrediction::CheckTypeAndMergeFrom(CLMicroLocationProto::RequestPrediction *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  {
    CLMicroLocationProto::BleLeechedBeacons::CheckTypeAndMergeFrom();
  }

  CLMicroLocationProto::RequestPrediction::MergeFrom(this, lpsrc);
}

void CLMicroLocationProto::MiloInit::MergeFrom(CLMicroLocationProto::MiloInit *this, const CLMicroLocationProto::MiloInit *a2)
{
  if (a2 == this)
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
      v5 = *(a2 + 4);
      if (v5 - 31 >= 0x19 && (v5 > 0xE || ((1 << v5) & 0x76B6) == 0))
      {
        CLMicroLocationProto::MiloInit::MergeFrom();
      }

      *(this + 6) |= 1u;
      *(this + 4) = v5;
      v4 = *(a2 + 6);
    }

    if ((v4 & 2) != 0)
    {
      v6 = *(a2 + 1);
      *(this + 6) |= 2u;
      v7 = *(this + 1);
      if (v7 == MEMORY[0x277D82C30])
      {
        operator new();
      }

      std::string::operator=(v7, v6);
    }
  }
}

void sub_2590FF020(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void CLMicroLocationProto::MiloInit::~MiloInit(CLMicroLocationProto::MiloInit *this)
{
  *this = &unk_286A58F98;
  CLMicroLocationProto::ClusterRecordings::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  CLMicroLocationProto::MiloInit::~MiloInit(this);

  JUMPOUT(0x259CA1F90);
}

uint64_t CLMicroLocationProto::MiloInit::Clear(uint64_t this)
{
  v1 = *(this + 24);
  if (v1)
  {
    *(this + 16) = 44;
    if ((v1 & 2) != 0)
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
  }

  *(this + 24) = 0;
  return this;
}

uint64_t CLMicroLocationProto::MiloInit::MergePartialFromCodedStream(CLMicroLocationProto::MiloInit *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
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

        v8 = TagFallback & 7;
        if (TagFallback >> 3 != 2)
        {
          break;
        }

        if (v8 != 2)
        {
          goto LABEL_14;
        }

LABEL_29:
        *(this + 6) |= 2u;
        if (*(this + 1) == v5)
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

      if (TagFallback >> 3 != 1 || (TagFallback & 7) != 0)
      {
        break;
      }

      v13 = 0;
      v9 = *(a2 + 1);
      if (v9 >= *(a2 + 2) || (v10 = *v9, (v10 & 0x80000000) != 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v13);
        if (!result)
        {
          return result;
        }

        v10 = v13;
      }

      else
      {
        *(a2 + 1) = v9 + 1;
      }

      if (v10 - 31 < 0x19 || v10 <= 0xE && ((1 << v10) & 0x76B6) != 0)
      {
        if (v10 - 31 >= 0x19 && (v10 > 0xE || ((1 << v10) & 0x76B6) == 0))
        {
          CLMicroLocationProto::MiloInit::MergeFrom();
        }

        *(this + 6) |= 1u;
        *(this + 4) = v10;
      }

      v11 = *(a2 + 1);
      if (v11 < *(a2 + 2) && *v11 == 18)
      {
        *(a2 + 1) = v11 + 1;
        goto LABEL_29;
      }
    }

LABEL_14:
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

uint64_t CLMicroLocationProto::MiloInit::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v4 = this;
  v5 = *(this + 24);
  if (v5)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(1, *(this + 16), a2, a4);
    v5 = *(v4 + 24);
  }

  if ((v5 & 2) != 0)
  {

    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
  }

  return this;
}

uint64_t CLMicroLocationProto::MiloInit::ByteSize(CLMicroLocationProto::MiloInit *this, unsigned int a2)
{
  v3 = *(this + 24);
  if (v3)
  {
    if (*(this + 24))
    {
      v5 = *(this + 4);
      if ((v5 & 0x80000000) != 0)
      {
        v4 = 11;
        if ((v3 & 2) == 0)
        {
          goto LABEL_22;
        }
      }

      else if (v5 >= 0x80)
      {
        v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5) + 1;
        if ((*(this + 6) & 2) == 0)
        {
          goto LABEL_22;
        }
      }

      else
      {
        v4 = 2;
        if ((v3 & 2) == 0)
        {
          goto LABEL_22;
        }
      }
    }

    else
    {
      v4 = 0;
      if ((*(this + 24) & 2) == 0)
      {
        goto LABEL_22;
      }
    }

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
      v11 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v10);
      v7 = *(v6 + 23);
      v9 = *(v6 + 8);
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

    v4 = (v4 + v11 + v7 + 1);
  }

  else
  {
    v4 = 0;
  }

LABEL_22:
  *(this + 5) = v4;
  return v4;
}

void CLMicroLocationProto::MiloInit::CheckTypeAndMergeFrom(CLMicroLocationProto::MiloInit *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  {
    CLMicroLocationProto::BleLeechedBeacons::CheckTypeAndMergeFrom();
  }

  CLMicroLocationProto::MiloInit::MergeFrom(this, lpsrc);
}

void CLMicroLocationProto::MotionEvent::MergeFrom(CLMicroLocationProto::MotionEvent *this, const CLMicroLocationProto::MotionEvent *a2)
{
  if (a2 == this)
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
      v5 = *(a2 + 4);
      if (v5 - 31 >= 0x19 && (v5 > 0xE || ((1 << v5) & 0x76B6) == 0))
      {
        CLMicroLocationProto::MotionEvent::MergeFrom();
      }

      *(this + 11) |= 1u;
      *(this + 4) = v5;
      v4 = *(a2 + 11);
    }

    if ((v4 & 2) != 0)
    {
      v6 = *(a2 + 1);
      *(this + 11) |= 2u;
      v7 = *(this + 1);
      if (v7 == MEMORY[0x277D82C30])
      {
        operator new();
      }

      std::string::operator=(v7, v6);
      v4 = *(a2 + 11);
    }

    if ((v4 & 4) != 0)
    {
      v8 = *(a2 + 5);
      if (v8 >= 0xB)
      {
        CLMicroLocationProto::MotionEvent::MergeFrom();
      }

      *(this + 11) |= 4u;
      *(this + 5) = v8;
      v4 = *(a2 + 11);
    }

    if ((v4 & 8) != 0)
    {
      v9 = *(a2 + 3);
      *(this + 11) |= 8u;
      v10 = *(this + 3);
      if (v10 == MEMORY[0x277D82C30])
      {
        operator new();
      }

      std::string::operator=(v10, v9);
      v4 = *(a2 + 11);
    }

    if ((v4 & 0x10) != 0)
    {
      v11 = *(a2 + 8);
      if (v11 >= 3)
      {
        CLMicroLocationProto::MotionEvent::MergeFrom();
      }

      *(this + 11) |= 0x10u;
      *(this + 8) = v11;
      v4 = *(a2 + 11);
    }

    if ((v4 & 0x20) != 0)
    {
      v12 = *(a2 + 9);
      *(this + 11) |= 0x20u;
      *(this + 9) = v12;
    }
  }
}

void sub_2590FF73C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void CLMicroLocationProto::MotionEvent::~MotionEvent(CLMicroLocationProto::MotionEvent *this)
{
  *this = &unk_286A59010;
  CLMicroLocationProto::ServiceStartUpdating::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  CLMicroLocationProto::MotionEvent::~MotionEvent(this);

  JUMPOUT(0x259CA1F90);
}

uint64_t CLMicroLocationProto::MotionEvent::Clear(uint64_t this)
{
  v1 = *(this + 44);
  if (v1)
  {
    *(this + 16) = 45;
    v2 = MEMORY[0x277D82C30];
    if ((v1 & 2) != 0)
    {
      v3 = *(this + 8);
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

    *(this + 20) = 0;
    if ((*(this + 44) & 8) != 0)
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

    *(this + 32) = 0;
  }

  *(this + 44) = 0;
  return this;
}

uint64_t CLMicroLocationProto::MotionEvent::MergePartialFromCodedStream(CLMicroLocationProto::MotionEvent *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
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
        if (TagFallback >> 3 > 3)
        {
          if (v8 == 4)
          {
            if (v9 == 2)
            {
              goto LABEL_59;
            }
          }

          else if (v8 == 5)
          {
            if ((TagFallback & 7) == 0)
            {
              v17 = *(a2 + 1);
              v16 = *(a2 + 2);
              goto LABEL_65;
            }
          }

          else if (v8 == 6 && (TagFallback & 7) == 0)
          {
            v13 = *(a2 + 1);
            v12 = *(a2 + 2);
            goto LABEL_75;
          }

          goto LABEL_27;
        }

        if (v8 != 1)
        {
          break;
        }

        if ((TagFallback & 7) != 0)
        {
          goto LABEL_27;
        }

        v30 = 0;
        v14 = *(a2 + 1);
        if (v14 >= *(a2 + 2) || (v15 = *v14, (v15 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v30);
          if (!result)
          {
            return result;
          }

          v15 = v30;
        }

        else
        {
          *(a2 + 1) = v14 + 1;
        }

        if (v15 - 31 < 0x19 || v15 <= 0xE && ((1 << v15) & 0x76B6) != 0)
        {
          if (v15 - 31 >= 0x19 && (v15 > 0xE || ((1 << v15) & 0x76B6) == 0))
          {
            CLMicroLocationProto::MotionEvent::MergeFrom();
          }

          *(this + 11) |= 1u;
          *(this + 4) = v15;
        }

        v18 = *(a2 + 1);
        if (v18 < *(a2 + 2) && *v18 == 18)
        {
          *(a2 + 1) = v18 + 1;
          goto LABEL_43;
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

LABEL_43:
      *(this + 11) |= 2u;
      if (*(this + 1) == v5)
      {
        operator new();
      }

      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
      if (!result)
      {
        return result;
      }

      v19 = *(a2 + 1);
      v10 = *(a2 + 2);
      if (v19 < v10 && *v19 == 24)
      {
        v11 = v19 + 1;
        *(a2 + 1) = v11;
LABEL_49:
        v29 = 0;
        if (v11 >= v10 || (v20 = *v11, (v20 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v29);
          if (!result)
          {
            return result;
          }

          v20 = v29;
        }

        else
        {
          *(a2 + 1) = v11 + 1;
        }

        if (v20 <= 0xA)
        {
          *(this + 11) |= 4u;
          *(this + 5) = v20;
        }

        v21 = *(a2 + 1);
        if (v21 < *(a2 + 2) && *v21 == 34)
        {
          *(a2 + 1) = v21 + 1;
LABEL_59:
          *(this + 11) |= 8u;
          if (*(this + 3) == v5)
          {
            operator new();
          }

          result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
          if (!result)
          {
            return result;
          }

          v22 = *(a2 + 1);
          v16 = *(a2 + 2);
          if (v22 < v16 && *v22 == 40)
          {
            v17 = v22 + 1;
            *(a2 + 1) = v17;
LABEL_65:
            v28 = 0;
            if (v17 >= v16 || (v23 = *v17, (v23 & 0x80000000) != 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v28);
              if (!result)
              {
                return result;
              }

              v23 = v28;
            }

            else
            {
              *(a2 + 1) = v17 + 1;
            }

            if (v23 <= 2)
            {
              *(this + 11) |= 0x10u;
              *(this + 8) = v23;
            }

            v24 = *(a2 + 1);
            v12 = *(a2 + 2);
            if (v24 < v12 && *v24 == 48)
            {
              v13 = v24 + 1;
              *(a2 + 1) = v13;
LABEL_75:
              if (v13 >= v12 || (v25 = *v13, v25 < 0))
              {
                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 9);
                if (!result)
                {
                  return result;
                }

                v26 = *(a2 + 1);
                v12 = *(a2 + 2);
              }

              else
              {
                *(this + 9) = v25;
                v26 = v13 + 1;
                *(a2 + 1) = v26;
              }

              *(this + 11) |= 0x20u;
              if (v26 == v12 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
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

    if (v8 == 3 && (TagFallback & 7) == 0)
    {
      v11 = *(a2 + 1);
      v10 = *(a2 + 2);
      goto LABEL_49;
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

unsigned int *CLMicroLocationProto::MotionEvent::SerializeWithCachedSizes(unsigned int *this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = this[11];
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(1, this[4], a2, a4);
    v6 = v5[11];
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
  v6 = v5[11];
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
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(3, v5[5], a2, a4);
  v6 = v5[11];
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_6;
    }

LABEL_12:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(5, v5[8], a2, a4);
    if ((v5[11] & 0x20) == 0)
    {
      return this;
    }

    goto LABEL_13;
  }

LABEL_11:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
  v6 = v5[11];
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
  v7 = v5[9];

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(6, v7, a2, a4);
}

uint64_t CLMicroLocationProto::MotionEvent::ByteSize(CLMicroLocationProto::MotionEvent *this, unsigned int a2)
{
  LOBYTE(v3) = *(this + 44);
  if (!v3)
  {
    v4 = 0;
    goto LABEL_52;
  }

  if (*(this + 44))
  {
    v5 = *(this + 4);
    if ((v5 & 0x80000000) != 0)
    {
      v4 = 11;
      if ((v3 & 2) == 0)
      {
        goto LABEL_22;
      }
    }

    else if (v5 >= 0x80)
    {
      v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5) + 1;
      v3 = *(this + 11);
      if ((v3 & 2) == 0)
      {
        goto LABEL_22;
      }
    }

    else
    {
      v4 = 2;
      if ((v3 & 2) == 0)
      {
        goto LABEL_22;
      }
    }
  }

  else
  {
    v4 = 0;
    if ((*(this + 44) & 2) == 0)
    {
      goto LABEL_22;
    }
  }

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
    v11 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v10);
    v7 = *(v6 + 23);
    v9 = *(v6 + 8);
    v3 = *(this + 11);
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

  v4 = (v4 + v11 + v7 + 1);
LABEL_22:
  if ((v3 & 4) != 0)
  {
    v12 = *(this + 5);
    if ((v12 & 0x80000000) != 0)
    {
      v13 = 11;
    }

    else if (v12 >= 0x80)
    {
      v13 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v12) + 1;
      v3 = *(this + 11);
    }

    else
    {
      v13 = 2;
    }

    v4 = (v13 + v4);
    if ((v3 & 8) == 0)
    {
LABEL_24:
      if ((v3 & 0x10) == 0)
      {
        goto LABEL_25;
      }

      goto LABEL_42;
    }
  }

  else if ((v3 & 8) == 0)
  {
    goto LABEL_24;
  }

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
    v3 = *(this + 11);
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
  if ((v3 & 0x10) == 0)
  {
LABEL_25:
    if ((v3 & 0x20) == 0)
    {
      goto LABEL_52;
    }

    goto LABEL_48;
  }

LABEL_42:
  v20 = *(this + 8);
  if ((v20 & 0x80000000) != 0)
  {
    v21 = 11;
  }

  else if (v20 >= 0x80)
  {
    v21 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v20) + 1;
    v3 = *(this + 11);
  }

  else
  {
    v21 = 2;
  }

  v4 = (v21 + v4);
  if ((v3 & 0x20) != 0)
  {
LABEL_48:
    v22 = *(this + 9);
    if (v22 >= 0x80)
    {
      v23 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v22) + 1;
    }

    else
    {
      v23 = 2;
    }

    v4 = (v23 + v4);
  }

LABEL_52:
  *(this + 10) = v4;
  return v4;
}

void CLMicroLocationProto::MotionEvent::CheckTypeAndMergeFrom(CLMicroLocationProto::MotionEvent *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  {
    CLMicroLocationProto::BleLeechedBeacons::CheckTypeAndMergeFrom();
  }

  CLMicroLocationProto::MotionEvent::MergeFrom(this, lpsrc);
}

void CLMicroLocationProto::LegacyThrottle::MergeFrom(CLMicroLocationProto::LegacyThrottle *this, const CLMicroLocationProto::LegacyThrottle *a2)
{
  if (a2 == this)
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
      v5 = *(a2 + 4);
      if (v5 - 31 >= 0x19 && (v5 > 0xE || ((1 << v5) & 0x76B6) == 0))
      {
        CLMicroLocationProto::LegacyThrottle::MergeFrom();
      }

      *(this + 6) |= 1u;
      *(this + 4) = v5;
      v4 = *(a2 + 6);
    }

    if ((v4 & 2) != 0)
    {
      v6 = *(a2 + 1);
      *(this + 6) |= 2u;
      v7 = *(this + 1);
      if (v7 == MEMORY[0x277D82C30])
      {
        operator new();
      }

      std::string::operator=(v7, v6);
    }
  }
}

void sub_259100128(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void CLMicroLocationProto::LegacyThrottle::~LegacyThrottle(CLMicroLocationProto::LegacyThrottle *this)
{
  *this = &unk_286A59088;
  CLMicroLocationProto::ClusterRecordings::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  CLMicroLocationProto::LegacyThrottle::~LegacyThrottle(this);

  JUMPOUT(0x259CA1F90);
}

uint64_t CLMicroLocationProto::LegacyThrottle::Clear(uint64_t this)
{
  v1 = *(this + 24);
  if (v1)
  {
    *(this + 16) = 46;
    if ((v1 & 2) != 0)
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
  }

  *(this + 24) = 0;
  return this;
}

uint64_t CLMicroLocationProto::LegacyThrottle::MergePartialFromCodedStream(CLMicroLocationProto::LegacyThrottle *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
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

        v8 = TagFallback & 7;
        if (TagFallback >> 3 != 2)
        {
          break;
        }

        if (v8 != 2)
        {
          goto LABEL_14;
        }

LABEL_29:
        *(this + 6) |= 2u;
        if (*(this + 1) == v5)
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

      if (TagFallback >> 3 != 1 || (TagFallback & 7) != 0)
      {
        break;
      }

      v13 = 0;
      v9 = *(a2 + 1);
      if (v9 >= *(a2 + 2) || (v10 = *v9, (v10 & 0x80000000) != 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v13);
        if (!result)
        {
          return result;
        }

        v10 = v13;
      }

      else
      {
        *(a2 + 1) = v9 + 1;
      }

      if (v10 - 31 < 0x19 || v10 <= 0xE && ((1 << v10) & 0x76B6) != 0)
      {
        if (v10 - 31 >= 0x19 && (v10 > 0xE || ((1 << v10) & 0x76B6) == 0))
        {
          CLMicroLocationProto::LegacyThrottle::MergeFrom();
        }

        *(this + 6) |= 1u;
        *(this + 4) = v10;
      }

      v11 = *(a2 + 1);
      if (v11 < *(a2 + 2) && *v11 == 18)
      {
        *(a2 + 1) = v11 + 1;
        goto LABEL_29;
      }
    }

LABEL_14:
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

uint64_t CLMicroLocationProto::LegacyThrottle::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v4 = this;
  v5 = *(this + 24);
  if (v5)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(1, *(this + 16), a2, a4);
    v5 = *(v4 + 24);
  }

  if ((v5 & 2) != 0)
  {

    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
  }

  return this;
}

uint64_t CLMicroLocationProto::LegacyThrottle::ByteSize(CLMicroLocationProto::LegacyThrottle *this, unsigned int a2)
{
  v3 = *(this + 24);
  if (v3)
  {
    if (*(this + 24))
    {
      v5 = *(this + 4);
      if ((v5 & 0x80000000) != 0)
      {
        v4 = 11;
        if ((v3 & 2) == 0)
        {
          goto LABEL_22;
        }
      }

      else if (v5 >= 0x80)
      {
        v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5) + 1;
        if ((*(this + 6) & 2) == 0)
        {
          goto LABEL_22;
        }
      }

      else
      {
        v4 = 2;
        if ((v3 & 2) == 0)
        {
          goto LABEL_22;
        }
      }
    }

    else
    {
      v4 = 0;
      if ((*(this + 24) & 2) == 0)
      {
        goto LABEL_22;
      }
    }

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
      v11 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v10);
      v7 = *(v6 + 23);
      v9 = *(v6 + 8);
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

    v4 = (v4 + v11 + v7 + 1);
  }

  else
  {
    v4 = 0;
  }

LABEL_22:
  *(this + 5) = v4;
  return v4;
}

void CLMicroLocationProto::LegacyThrottle::CheckTypeAndMergeFrom(CLMicroLocationProto::LegacyThrottle *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  {
    CLMicroLocationProto::BleLeechedBeacons::CheckTypeAndMergeFrom();
  }

  CLMicroLocationProto::LegacyThrottle::MergeFrom(this, lpsrc);
}

void CLMicroLocationProto::RetrievedLoi::MergeFrom(CLMicroLocationProto::RetrievedLoi *this, const CLMicroLocationProto::RetrievedLoi *a2)
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

  if (*(a2 + 48))
  {
    v5 = *(a2 + 6);
    if (v5 - 31 >= 0x19 && (v5 > 0xE || ((1 << v5) & 0x76B6) == 0))
    {
      CLMicroLocationProto::RetrievedLoi::MergeFrom();
    }

    *(this + 12) |= 1u;
    *(this + 6) = v5;
    v4 = *(a2 + 12);
  }

  v6 = MEMORY[0x277D82C30];
  if ((v4 & 2) != 0)
  {
    v8 = *(a2 + 1);
    *(this + 12) |= 2u;
    v9 = *(this + 1);
    if (v9 == v6)
    {
      operator new();
    }

    std::string::operator=(v9, v8);
    v4 = *(a2 + 12);
    if ((v4 & 4) == 0)
    {
LABEL_11:
      if ((v4 & 8) == 0)
      {
        goto LABEL_12;
      }

LABEL_22:
      v12 = *(a2 + 4);
      *(this + 12) |= 8u;
      v13 = *(this + 4);
      if (v13 == v6)
      {
        operator new();
      }

      std::string::operator=(v13, v12);
      v4 = *(a2 + 12);
      if ((v4 & 0x10) == 0)
      {
LABEL_13:
        if ((v4 & 0x20) == 0)
        {
          return;
        }

        goto LABEL_14;
      }

      goto LABEL_25;
    }
  }

  else if ((v4 & 4) == 0)
  {
    goto LABEL_11;
  }

  v10 = *(a2 + 2);
  *(this + 12) |= 4u;
  v11 = *(this + 2);
  if (v11 == v6)
  {
    operator new();
  }

  std::string::operator=(v11, v10);
  v4 = *(a2 + 12);
  if ((v4 & 8) != 0)
  {
    goto LABEL_22;
  }

LABEL_12:
  if ((v4 & 0x10) == 0)
  {
    goto LABEL_13;
  }

LABEL_25:
  v14 = *(a2 + 7);
  if ((v14 - 1) >= 0xC)
  {
    CLMicroLocationProto::RetrievedLoi::MergeFrom();
  }

  *(this + 12) |= 0x10u;
  *(this + 7) = v14;
  if ((*(a2 + 12) & 0x20) != 0)
  {
LABEL_14:
    v7 = *(a2 + 40);
    *(this + 12) |= 0x20u;
    *(this + 40) = v7;
  }
}

void sub_25910087C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void CLMicroLocationProto::RetrievedLoi::~RetrievedLoi(CLMicroLocationProto::RetrievedLoi *this)
{
  *this = &unk_286A59100;
  CLMicroLocationProto::RetrievedLoi::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  CLMicroLocationProto::RetrievedLoi::~RetrievedLoi(this);

  JUMPOUT(0x259CA1F90);
}

void CLMicroLocationProto::RetrievedLoi::SharedDtor(CLMicroLocationProto::RetrievedLoi *this)
{
  v1 = this;
  v2 = *(this + 1);
  v3 = MEMORY[0x277D82C30];
  if (v2 != MEMORY[0x277D82C30] && v2 != 0)
  {
    if (*(v2 + 23) < 0)
    {
      operator delete(*v2);
    }

    this = MEMORY[0x259CA1F90](v2, 0x1012C40EC159624);
  }

  v5 = *(v1 + 2);
  if (v5 != v3 && v5 != 0)
  {
    if (*(v5 + 23) < 0)
    {
      operator delete(*v5);
    }

    this = MEMORY[0x259CA1F90](v5, 0x1012C40EC159624);
  }

  v7 = *(v1 + 4);
  if (v7 != v3 && v7 != 0)
  {
    if (*(v7 + 23) < 0)
    {
      operator delete(*v7);
    }

    this = MEMORY[0x259CA1F90](v7, 0x1012C40EC159624);
  }

  CLMicroLocationProto::protobuf_AddDesc_microlocation_2eproto(this);
}

uint64_t CLMicroLocationProto::RetrievedLoi::Clear(uint64_t this)
{
  v1 = *(this + 48);
  if (v1)
  {
    *(this + 24) = 47;
    v2 = MEMORY[0x277D82C30];
    if ((v1 & 2) != 0)
    {
      v3 = *(this + 8);
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

    if ((*(this + 48) & 4) != 0)
    {
      v4 = *(this + 16);
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

    if ((*(this + 48) & 8) != 0)
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

    *(this + 28) = 1;
    *(this + 40) = 0;
  }

  *(this + 48) = 0;
  return this;
}

uint64_t CLMicroLocationProto::RetrievedLoi::MergePartialFromCodedStream(CLMicroLocationProto::RetrievedLoi *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
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
        if (TagFallback >> 3 > 3)
        {
          if (v8 == 4)
          {
            if (v9 == 2)
            {
              goto LABEL_55;
            }
          }

          else if (v8 == 5)
          {
            if ((TagFallback & 7) == 0)
            {
              v15 = *(a2 + 1);
              v14 = *(a2 + 2);
              goto LABEL_61;
            }
          }

          else if (v8 == 6 && (TagFallback & 7) == 0)
          {
            v11 = *(a2 + 1);
            v10 = *(a2 + 2);
            goto LABEL_71;
          }

          goto LABEL_27;
        }

        if (v8 != 1)
        {
          break;
        }

        if ((TagFallback & 7) != 0)
        {
          goto LABEL_27;
        }

        v26 = 0;
        v12 = *(a2 + 1);
        if (v12 >= *(a2 + 2) || (v13 = *v12, (v13 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v26);
          if (!result)
          {
            return result;
          }

          v13 = v26;
        }

        else
        {
          *(a2 + 1) = v12 + 1;
        }

        if (v13 - 31 < 0x19 || v13 <= 0xE && ((1 << v13) & 0x76B6) != 0)
        {
          if (v13 - 31 >= 0x19 && (v13 > 0xE || ((1 << v13) & 0x76B6) == 0))
          {
            CLMicroLocationProto::RetrievedLoi::MergeFrom();
          }

          *(this + 12) |= 1u;
          *(this + 6) = v13;
        }

        v16 = *(a2 + 1);
        if (v16 < *(a2 + 2) && *v16 == 18)
        {
          *(a2 + 1) = v16 + 1;
          goto LABEL_43;
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

LABEL_43:
      *(this + 12) |= 2u;
      if (*(this + 1) == v5)
      {
        operator new();
      }

      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadBytes();
      if (!result)
      {
        return result;
      }

      v17 = *(a2 + 1);
      if (v17 < *(a2 + 2) && *v17 == 26)
      {
        *(a2 + 1) = v17 + 1;
LABEL_49:
        *(this + 12) |= 4u;
        if (*(this + 2) == v5)
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
LABEL_55:
          *(this + 12) |= 8u;
          if (*(this + 4) == v5)
          {
            operator new();
          }

          result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadBytes();
          if (!result)
          {
            return result;
          }

          v19 = *(a2 + 1);
          v14 = *(a2 + 2);
          if (v19 < v14 && *v19 == 40)
          {
            v15 = v19 + 1;
            *(a2 + 1) = v15;
LABEL_61:
            v25 = 0;
            if (v15 >= v14 || (v20 = *v15, (v20 & 0x80000000) != 0))
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
              *(a2 + 1) = v15 + 1;
            }

            if (v20 - 1 <= 0xB)
            {
              *(this + 12) |= 0x10u;
              *(this + 7) = v20;
            }

            v21 = *(a2 + 1);
            v10 = *(a2 + 2);
            if (v21 < v10 && *v21 == 48)
            {
              v11 = v21 + 1;
              *(a2 + 1) = v11;
LABEL_71:
              v27 = 0;
              if (v11 >= v10 || (v22 = *v11, (v22 & 0x80000000) != 0))
              {
                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v27);
                if (!result)
                {
                  return result;
                }

                v22 = v27;
                v23 = *(a2 + 1);
                v10 = *(a2 + 2);
              }

              else
              {
                v23 = v11 + 1;
                *(a2 + 1) = v23;
              }

              *(this + 40) = v22 != 0;
              *(this + 12) |= 0x20u;
              if (v23 == v10 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
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

    if (v8 == 3 && v9 == 2)
    {
      goto LABEL_49;
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

uint64_t CLMicroLocationProto::RetrievedLoi::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 48);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(1, *(this + 24), a2, a4);
    v6 = *(v5 + 48);
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

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBytes();
  v6 = *(v5 + 48);
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
  v6 = *(v5 + 48);
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_6;
    }

LABEL_12:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(5, *(v5 + 28), a2, a4);
    if ((*(v5 + 48) & 0x20) == 0)
    {
      return this;
    }

    goto LABEL_13;
  }

LABEL_11:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBytes();
  v6 = *(v5 + 48);
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
  v7 = *(v5 + 40);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(6, v7, a2, a4);
}

uint64_t CLMicroLocationProto::RetrievedLoi::ByteSize(CLMicroLocationProto::RetrievedLoi *this, unsigned int a2)
{
  v3 = *(this + 12);
  if (v3)
  {
    if (v3)
    {
      v6 = *(this + 6);
      if ((v6 & 0x80000000) != 0)
      {
        v4 = 11;
        if ((v3 & 2) == 0)
        {
          goto LABEL_22;
        }
      }

      else if (v6 >= 0x80)
      {
        v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v6) + 1;
        v3 = *(this + 12);
        if ((v3 & 2) == 0)
        {
          goto LABEL_22;
        }
      }

      else
      {
        v4 = 2;
        if ((v3 & 2) == 0)
        {
          goto LABEL_22;
        }
      }
    }

    else
    {
      v4 = 0;
      if ((v3 & 2) == 0)
      {
        goto LABEL_22;
      }
    }

    v7 = *(this + 1);
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
      v3 = *(this + 12);
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

    v4 += v12 + v8 + 1;
LABEL_22:
    if ((v3 & 4) != 0)
    {
      v13 = *(this + 2);
      v14 = *(v13 + 23);
      v15 = v14;
      v16 = *(v13 + 8);
      if ((v14 & 0x80u) == 0)
      {
        v17 = *(v13 + 23);
      }

      else
      {
        v17 = v16;
      }

      if (v17 >= 0x80)
      {
        v18 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v17);
        v14 = *(v13 + 23);
        v16 = *(v13 + 8);
        v3 = *(this + 12);
        v15 = *(v13 + 23);
      }

      else
      {
        v18 = 1;
      }

      if (v15 < 0)
      {
        v14 = v16;
      }

      v4 += v18 + v14 + 1;
      if ((v3 & 8) == 0)
      {
LABEL_24:
        if ((v3 & 0x10) == 0)
        {
LABEL_50:
          result = ((v3 >> 4) & 2) + v4;
          goto LABEL_51;
        }

LABEL_44:
        v25 = *(this + 7);
        if ((v25 & 0x80000000) != 0)
        {
          v26 = 11;
        }

        else if (v25 >= 0x80)
        {
          v26 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v25) + 1;
          v3 = *(this + 12);
        }

        else
        {
          v26 = 2;
        }

        v4 += v26;
        goto LABEL_50;
      }
    }

    else if ((v3 & 8) == 0)
    {
      goto LABEL_24;
    }

    v19 = *(this + 4);
    v20 = *(v19 + 23);
    v21 = v20;
    v22 = *(v19 + 8);
    if ((v20 & 0x80u) == 0)
    {
      v23 = *(v19 + 23);
    }

    else
    {
      v23 = v22;
    }

    if (v23 >= 0x80)
    {
      v24 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v23);
      v20 = *(v19 + 23);
      v22 = *(v19 + 8);
      v3 = *(this + 12);
      v21 = *(v19 + 23);
    }

    else
    {
      v24 = 1;
    }

    if (v21 < 0)
    {
      v20 = v22;
    }

    v4 += v24 + v20 + 1;
    if ((v3 & 0x10) == 0)
    {
      goto LABEL_50;
    }

    goto LABEL_44;
  }

  result = 0;
LABEL_51:
  *(this + 11) = result;
  return result;
}

void CLMicroLocationProto::RetrievedLoi::CheckTypeAndMergeFrom(CLMicroLocationProto::RetrievedLoi *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  {
    CLMicroLocationProto::BleLeechedBeacons::CheckTypeAndMergeFrom();
  }

  CLMicroLocationProto::RetrievedLoi::MergeFrom(this, lpsrc);
}

void CLMicroLocationProto::ReceivedEvent::MergeFrom(CLMicroLocationProto::ReceivedEvent *this, const CLMicroLocationProto::ReceivedEvent *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v76);
  }

  v4 = *(a2 + 73);
  if (!v4)
  {
    goto LABEL_53;
  }

  if (v4)
  {
    *(this + 73) |= 1u;
    v5 = *(this + 1);
    if (!v5)
    {
      operator new();
    }

    v6 = *(a2 + 1);
    if (!v6)
    {
      CLMicroLocationProto::protobuf_AddDesc_microlocation_2eproto(this);
      v6 = *(CLMicroLocationProto::ReceivedEvent::default_instance_ + 8);
    }

    CLMicroLocationProto::ReceivedEventAction::MergeFrom(v5, v6);
    v4 = *(a2 + 73);
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

  *(this + 73) |= 2u;
  v7 = *(this + 2);
  if (!v7)
  {
    operator new();
  }

  v8 = *(a2 + 2);
  if (!v8)
  {
    CLMicroLocationProto::protobuf_AddDesc_microlocation_2eproto(this);
    v8 = *(CLMicroLocationProto::ReceivedEvent::default_instance_ + 16);
  }

  CLMicroLocationProto::AppLaunch::MergeFrom(v7, v8);
  v4 = *(a2 + 73);
  if ((v4 & 4) == 0)
  {
LABEL_7:
    if ((v4 & 8) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_28;
  }

LABEL_23:
  *(this + 73) |= 4u;
  v9 = *(this + 3);
  if (!v9)
  {
    operator new();
  }

  v10 = *(a2 + 3);
  if (!v10)
  {
    CLMicroLocationProto::protobuf_AddDesc_microlocation_2eproto(this);
    v10 = *(CLMicroLocationProto::ReceivedEvent::default_instance_ + 24);
  }

  CLMicroLocationProto::BacklightOn::MergeFrom(v9, v10);
  v4 = *(a2 + 73);
  if ((v4 & 8) == 0)
  {
LABEL_8:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_33;
  }

LABEL_28:
  *(this + 73) |= 8u;
  v11 = *(this + 4);
  if (!v11)
  {
    operator new();
  }

  v12 = *(a2 + 4);
  if (!v12)
  {
    CLMicroLocationProto::protobuf_AddDesc_microlocation_2eproto(this);
    v12 = *(CLMicroLocationProto::ReceivedEvent::default_instance_ + 32);
  }

  CLMicroLocationProto::BatteryChargerConnected::MergeFrom(v11, v12);
  v4 = *(a2 + 73);
  if ((v4 & 0x10) == 0)
  {
LABEL_9:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_10;
    }

LABEL_38:
    *(this + 73) |= 0x20u;
    v15 = *(this + 6);
    if (!v15)
    {
      operator new();
    }

    v16 = *(a2 + 6);
    if (!v16)
    {
      CLMicroLocationProto::protobuf_AddDesc_microlocation_2eproto(this);
      v16 = *(CLMicroLocationProto::ReceivedEvent::default_instance_ + 48);
    }

    CLMicroLocationProto::HomeKitAccessory::MergeFrom(v15, v16);
    v4 = *(a2 + 73);
    if ((v4 & 0x40) == 0)
    {
LABEL_11:
      if ((v4 & 0x80) == 0)
      {
        goto LABEL_53;
      }

      goto LABEL_48;
    }

    goto LABEL_43;
  }

LABEL_33:
  *(this + 73) |= 0x10u;
  v13 = *(this + 5);
  if (!v13)
  {
    operator new();
  }

  v14 = *(a2 + 5);
  if (!v14)
  {
    CLMicroLocationProto::protobuf_AddDesc_microlocation_2eproto(this);
    v14 = *(CLMicroLocationProto::ReceivedEvent::default_instance_ + 40);
  }

  CLMicroLocationProto::ForcedRecording::MergeFrom(v13, v14);
  v4 = *(a2 + 73);
  if ((v4 & 0x20) != 0)
  {
    goto LABEL_38;
  }

LABEL_10:
  if ((v4 & 0x40) == 0)
  {
    goto LABEL_11;
  }

LABEL_43:
  *(this + 73) |= 0x40u;
  v17 = *(this + 7);
  if (!v17)
  {
    operator new();
  }

  v18 = *(a2 + 7);
  if (!v18)
  {
    CLMicroLocationProto::protobuf_AddDesc_microlocation_2eproto(this);
    v18 = *(CLMicroLocationProto::ReceivedEvent::default_instance_ + 56);
  }

  CLMicroLocationProto::HomeKitScene::MergeFrom(v17, v18);
  v4 = *(a2 + 73);
  if ((v4 & 0x80) != 0)
  {
LABEL_48:
    *(this + 73) |= 0x80u;
    v19 = *(this + 8);
    if (!v19)
    {
      operator new();
    }

    v20 = *(a2 + 8);
    if (!v20)
    {
      CLMicroLocationProto::protobuf_AddDesc_microlocation_2eproto(this);
      v20 = *(CLMicroLocationProto::ReceivedEvent::default_instance_ + 64);
    }

    CLMicroLocationProto::NowPlaying::MergeFrom(v19, v20);
    v4 = *(a2 + 73);
  }

LABEL_53:
  if ((v4 & 0xFF00) == 0)
  {
    goto LABEL_103;
  }

  if ((v4 & 0x100) != 0)
  {
    *(this + 73) |= 0x100u;
    v21 = *(this + 9);
    if (!v21)
    {
      operator new();
    }

    v22 = *(a2 + 9);
    if (!v22)
    {
      CLMicroLocationProto::protobuf_AddDesc_microlocation_2eproto(this);
      v22 = *(CLMicroLocationProto::ReceivedEvent::default_instance_ + 72);
    }

    CLMicroLocationProto::RecordingRequest::MergeFrom(v21, v22);
    v4 = *(a2 + 73);
    if ((v4 & 0x200) == 0)
    {
LABEL_56:
      if ((v4 & 0x400) == 0)
      {
        goto LABEL_57;
      }

      goto LABEL_73;
    }
  }

  else if ((v4 & 0x200) == 0)
  {
    goto LABEL_56;
  }

  *(this + 73) |= 0x200u;
  v23 = *(this + 10);
  if (!v23)
  {
    operator new();
  }

  v24 = *(a2 + 10);
  if (!v24)
  {
    CLMicroLocationProto::protobuf_AddDesc_microlocation_2eproto(this);
    v24 = *(CLMicroLocationProto::ReceivedEvent::default_instance_ + 80);
  }

  CLMicroLocationProto::TruthLabelDonation::MergeFrom(v23, v24);
  v4 = *(a2 + 73);
  if ((v4 & 0x400) == 0)
  {
LABEL_57:
    if ((v4 & 0x800) == 0)
    {
      goto LABEL_58;
    }

    goto LABEL_78;
  }

LABEL_73:
  *(this + 73) |= 0x400u;
  v25 = *(this + 11);
  if (!v25)
  {
    operator new();
  }

  v26 = *(a2 + 11);
  if (!v26)
  {
    CLMicroLocationProto::protobuf_AddDesc_microlocation_2eproto(this);
    v26 = *(CLMicroLocationProto::ReceivedEvent::default_instance_ + 88);
  }

  CLMicroLocationProto::LearnModel::MergeFrom(v25, v26);
  v4 = *(a2 + 73);
  if ((v4 & 0x800) == 0)
  {
LABEL_58:
    if ((v4 & 0x1000) == 0)
    {
      goto LABEL_59;
    }

    goto LABEL_83;
  }

LABEL_78:
  *(this + 73) |= 0x800u;
  v27 = *(this + 12);
  if (!v27)
  {
    operator new();
  }

  v28 = *(a2 + 12);
  if (!v28)
  {
    CLMicroLocationProto::protobuf_AddDesc_microlocation_2eproto(this);
    v28 = *(CLMicroLocationProto::ReceivedEvent::default_instance_ + 96);
  }

  CLMicroLocationProto::LearnCompleted::MergeFrom(v27, v28);
  v4 = *(a2 + 73);
  if ((v4 & 0x1000) == 0)
  {
LABEL_59:
    if ((v4 & 0x2000) == 0)
    {
      goto LABEL_60;
    }

    goto LABEL_88;
  }

LABEL_83:
  *(this + 73) |= 0x1000u;
  v29 = *(this + 13);
  if (!v29)
  {
    operator new();
  }

  v30 = *(a2 + 13);
  if (!v30)
  {
    CLMicroLocationProto::protobuf_AddDesc_microlocation_2eproto(this);
    v30 = *(CLMicroLocationProto::ReceivedEvent::default_instance_ + 104);
  }

  CLMicroLocationProto::SensorsScanComplete::MergeFrom(v29, v30);
  v4 = *(a2 + 73);
  if ((v4 & 0x2000) == 0)
  {
LABEL_60:
    if ((v4 & 0x4000) == 0)
    {
      goto LABEL_61;
    }

    goto LABEL_93;
  }

LABEL_88:
  *(this + 73) |= 0x2000u;
  v31 = *(this + 14);
  if (!v31)
  {
    operator new();
  }

  v32 = *(a2 + 14);
  if (!v32)
  {
    CLMicroLocationProto::protobuf_AddDesc_microlocation_2eproto(this);
    v32 = *(CLMicroLocationProto::ReceivedEvent::default_instance_ + 112);
  }

  CLMicroLocationProto::StartSpectating::MergeFrom(v31, v32);
  v4 = *(a2 + 73);
  if ((v4 & 0x4000) == 0)
  {
LABEL_61:
    if ((v4 & 0x8000) == 0)
    {
      goto LABEL_103;
    }

    goto LABEL_98;
  }

LABEL_93:
  *(this + 73) |= 0x4000u;
  v33 = *(this + 15);
  if (!v33)
  {
    operator new();
  }

  v34 = *(a2 + 15);
  if (!v34)
  {
    CLMicroLocationProto::protobuf_AddDesc_microlocation_2eproto(this);
    v34 = *(CLMicroLocationProto::ReceivedEvent::default_instance_ + 120);
  }

  CLMicroLocationProto::StopSpectating::MergeFrom(v33, v34);
  v4 = *(a2 + 73);
  if ((v4 & 0x8000) != 0)
  {
LABEL_98:
    *(this + 73) |= 0x8000u;
    v35 = *(this + 16);
    if (!v35)
    {
      operator new();
    }

    v36 = *(a2 + 16);
    if (!v36)
    {
      CLMicroLocationProto::protobuf_AddDesc_microlocation_2eproto(this);
      v36 = *(CLMicroLocationProto::ReceivedEvent::default_instance_ + 128);
    }

    CLMicroLocationProto::ServiceCreate::MergeFrom(v35, v36);
    v4 = *(a2 + 73);
  }

LABEL_103:
  if ((v4 & 0xFF0000) == 0)
  {
    goto LABEL_153;
  }

  if ((v4 & 0x10000) != 0)
  {
    *(this + 73) |= 0x10000u;
    v37 = *(this + 17);
    if (!v37)
    {
      operator new();
    }

    v38 = *(a2 + 17);
    if (!v38)
    {
      CLMicroLocationProto::protobuf_AddDesc_microlocation_2eproto(this);
      v38 = *(CLMicroLocationProto::ReceivedEvent::default_instance_ + 136);
    }

    CLMicroLocationProto::ServiceDelete::MergeFrom(v37, v38);
    v4 = *(a2 + 73);
    if ((v4 & 0x20000) == 0)
    {
LABEL_106:
      if ((v4 & 0x40000) == 0)
      {
        goto LABEL_107;
      }

      goto LABEL_123;
    }
  }

  else if ((v4 & 0x20000) == 0)
  {
    goto LABEL_106;
  }

  *(this + 73) |= 0x20000u;
  v39 = *(this + 18);
  if (!v39)
  {
    operator new();
  }

  v40 = *(a2 + 18);
  if (!v40)
  {
    CLMicroLocationProto::protobuf_AddDesc_microlocation_2eproto(this);
    v40 = *(CLMicroLocationProto::ReceivedEvent::default_instance_ + 144);
  }

  CLMicroLocationProto::ServiceConnect::MergeFrom(v39, v40);
  v4 = *(a2 + 73);
  if ((v4 & 0x40000) == 0)
  {
LABEL_107:
    if ((v4 & 0x80000) == 0)
    {
      goto LABEL_108;
    }

    goto LABEL_128;
  }

LABEL_123:
  *(this + 73) |= 0x40000u;
  v41 = *(this + 19);
  if (!v41)
  {
    operator new();
  }

  v42 = *(a2 + 19);
  if (!v42)
  {
    CLMicroLocationProto::protobuf_AddDesc_microlocation_2eproto(this);
    v42 = *(CLMicroLocationProto::ReceivedEvent::default_instance_ + 152);
  }

  CLMicroLocationProto::ServiceDisconnect::MergeFrom(v41, v42);
  v4 = *(a2 + 73);
  if ((v4 & 0x80000) == 0)
  {
LABEL_108:
    if ((v4 & 0x100000) == 0)
    {
      goto LABEL_109;
    }

    goto LABEL_133;
  }

LABEL_128:
  *(this + 73) |= 0x80000u;
  v43 = *(this + 20);
  if (!v43)
  {
    operator new();
  }

  v44 = *(a2 + 20);
  if (!v44)
  {
    CLMicroLocationProto::protobuf_AddDesc_microlocation_2eproto(this);
    v44 = *(CLMicroLocationProto::ReceivedEvent::default_instance_ + 160);
  }

  CLMicroLocationProto::ServiceStartUpdating::MergeFrom(v43, v44);
  v4 = *(a2 + 73);
  if ((v4 & 0x100000) == 0)
  {
LABEL_109:
    if ((v4 & 0x200000) == 0)
    {
      goto LABEL_110;
    }

    goto LABEL_138;
  }

LABEL_133:
  *(this + 73) |= 0x100000u;
  v45 = *(this + 21);
  if (!v45)
  {
    operator new();
  }

  v46 = *(a2 + 21);
  if (!v46)
  {
    CLMicroLocationProto::protobuf_AddDesc_microlocation_2eproto(this);
    v46 = *(CLMicroLocationProto::ReceivedEvent::default_instance_ + 168);
  }

  CLMicroLocationProto::ServiceStopUpdating::MergeFrom(v45, v46);
  v4 = *(a2 + 73);
  if ((v4 & 0x200000) == 0)
  {
LABEL_110:
    if ((v4 & 0x400000) == 0)
    {
      goto LABEL_111;
    }

    goto LABEL_143;
  }

LABEL_138:
  *(this + 73) |= 0x200000u;
  v47 = *(this + 22);
  if (!v47)
  {
    operator new();
  }

  v48 = *(a2 + 22);
  if (!v48)
  {
    CLMicroLocationProto::protobuf_AddDesc_microlocation_2eproto(this);
    v48 = *(CLMicroLocationProto::ReceivedEvent::default_instance_ + 176);
  }

  CLMicroLocationProto::RequestObservation::MergeFrom(v47, v48);
  v4 = *(a2 + 73);
  if ((v4 & 0x400000) == 0)
  {
LABEL_111:
    if ((v4 & 0x800000) == 0)
    {
      goto LABEL_153;
    }

    goto LABEL_148;
  }

LABEL_143:
  *(this + 73) |= 0x400000u;
  v49 = *(this + 23);
  if (!v49)
  {
    operator new();
  }

  v50 = *(a2 + 23);
  if (!v50)
  {
    CLMicroLocationProto::protobuf_AddDesc_microlocation_2eproto(this);
    v50 = *(CLMicroLocationProto::ReceivedEvent::default_instance_ + 184);
  }

  CLMicroLocationProto::RequestPrediction::MergeFrom(v49, v50);
  v4 = *(a2 + 73);
  if ((v4 & 0x800000) != 0)
  {
LABEL_148:
    *(this + 73) |= 0x800000u;
    v51 = *(this + 24);
    if (!v51)
    {
      operator new();
    }

    v52 = *(a2 + 24);
    if (!v52)
    {
      CLMicroLocationProto::protobuf_AddDesc_microlocation_2eproto(this);
      v52 = *(CLMicroLocationProto::ReceivedEvent::default_instance_ + 192);
    }

    CLMicroLocationProto::MiloInit::MergeFrom(v51, v52);
    v4 = *(a2 + 73);
  }

LABEL_153:
  if (!HIBYTE(v4))
  {
    goto LABEL_203;
  }

  if ((v4 & 0x1000000) != 0)
  {
    *(this + 73) |= 0x1000000u;
    v53 = *(this + 25);
    if (!v53)
    {
      operator new();
    }

    v54 = *(a2 + 25);
    if (!v54)
    {
      CLMicroLocationProto::protobuf_AddDesc_microlocation_2eproto(this);
      v54 = *(CLMicroLocationProto::ReceivedEvent::default_instance_ + 200);
    }

    CLMicroLocationProto::MotionEvent::MergeFrom(v53, v54);
    v4 = *(a2 + 73);
    if ((v4 & 0x2000000) == 0)
    {
LABEL_156:
      if ((v4 & 0x4000000) == 0)
      {
        goto LABEL_157;
      }

      goto LABEL_173;
    }
  }

  else if ((v4 & 0x2000000) == 0)
  {
    goto LABEL_156;
  }

  *(this + 73) |= 0x2000000u;
  v55 = *(this + 26);
  if (!v55)
  {
    operator new();
  }

  v56 = *(a2 + 26);
  if (!v56)
  {
    CLMicroLocationProto::protobuf_AddDesc_microlocation_2eproto(this);
    v56 = *(CLMicroLocationProto::ReceivedEvent::default_instance_ + 208);
  }

  CLMicroLocationProto::LegacyThrottle::MergeFrom(v55, v56);
  v4 = *(a2 + 73);
  if ((v4 & 0x4000000) == 0)
  {
LABEL_157:
    if ((v4 & 0x8000000) == 0)
    {
      goto LABEL_158;
    }

    goto LABEL_178;
  }

LABEL_173:
  *(this + 73) |= 0x4000000u;
  v57 = *(this + 27);
  if (!v57)
  {
    operator new();
  }

  v58 = *(a2 + 27);
  if (!v58)
  {
    CLMicroLocationProto::protobuf_AddDesc_microlocation_2eproto(this);
    v58 = *(CLMicroLocationProto::ReceivedEvent::default_instance_ + 216);
  }

  CLMicroLocationProto::RetrievedLoi::MergeFrom(v57, v58);
  v4 = *(a2 + 73);
  if ((v4 & 0x8000000) == 0)
  {
LABEL_158:
    if ((v4 & 0x10000000) == 0)
    {
      goto LABEL_159;
    }

    goto LABEL_183;
  }

LABEL_178:
  *(this + 73) |= 0x8000000u;
  v59 = *(this + 28);
  if (!v59)
  {
    operator new();
  }

  v60 = *(a2 + 28);
  if (!v60)
  {
    CLMicroLocationProto::protobuf_AddDesc_microlocation_2eproto(this);
    v60 = *(CLMicroLocationProto::ReceivedEvent::default_instance_ + 224);
  }

  CLMicroLocationProto::TriggerEvent::MergeFrom(v59, v60);
  v4 = *(a2 + 73);
  if ((v4 & 0x10000000) == 0)
  {
LABEL_159:
    if ((v4 & 0x20000000) == 0)
    {
      goto LABEL_160;
    }

    goto LABEL_188;
  }

LABEL_183:
  *(this + 73) |= 0x10000000u;
  v61 = *(this + 29);
  if (!v61)
  {
    operator new();
  }

  v62 = *(a2 + 29);
  if (!v62)
  {
    CLMicroLocationProto::protobuf_AddDesc_microlocation_2eproto(this);
    v62 = *(CLMicroLocationProto::ReceivedEvent::default_instance_ + 232);
  }

  CLMicroLocationProto::LegacyClientStatusUpdate::MergeFrom(v61, v62);
  v4 = *(a2 + 73);
  if ((v4 & 0x20000000) == 0)
  {
LABEL_160:
    if ((v4 & 0x40000000) == 0)
    {
      goto LABEL_161;
    }

    goto LABEL_193;
  }

LABEL_188:
  *(this + 73) |= 0x20000000u;
  v63 = *(this + 30);
  if (!v63)
  {
    operator new();
  }

  v64 = *(a2 + 30);
  if (!v64)
  {
    CLMicroLocationProto::protobuf_AddDesc_microlocation_2eproto(this);
    v64 = *(CLMicroLocationProto::ReceivedEvent::default_instance_ + 240);
  }

  CLMicroLocationProto::SpectatingMotionUpdate::MergeFrom(v63, v64);
  v4 = *(a2 + 73);
  if ((v4 & 0x40000000) == 0)
  {
LABEL_161:
    if ((v4 & 0x80000000) == 0)
    {
      goto LABEL_203;
    }

    goto LABEL_198;
  }

LABEL_193:
  *(this + 73) |= 0x40000000u;
  v65 = *(this + 31);
  if (!v65)
  {
    operator new();
  }

  v66 = *(a2 + 31);
  if (!v66)
  {
    CLMicroLocationProto::protobuf_AddDesc_microlocation_2eproto(this);
    v66 = *(CLMicroLocationProto::ReceivedEvent::default_instance_ + 248);
  }

  CLMicroLocationProto::EnabledStateUpdate::MergeFrom(v65, v66);
  if ((*(a2 + 73) & 0x80000000) != 0)
  {
LABEL_198:
    *(this + 73) |= 0x80000000;
    v67 = *(this + 32);
    if (!v67)
    {
      operator new();
    }

    v68 = *(a2 + 32);
    if (!v68)
    {
      CLMicroLocationProto::protobuf_AddDesc_microlocation_2eproto(this);
      v68 = *(CLMicroLocationProto::ReceivedEvent::default_instance_ + 256);
    }

    CLMicroLocationProto::ScreenStateUpdate::MergeFrom(v67, v68);
  }

LABEL_203:
  LOBYTE(v69) = *(a2 + 296);
  if (!v69)
  {
    return;
  }

  if (*(a2 + 296))
  {
    *(this + 74) |= 1u;
    v70 = *(this + 33);
    if (!v70)
    {
      operator new();
    }

    v71 = *(a2 + 33);
    if (!v71)
    {
      CLMicroLocationProto::protobuf_AddDesc_microlocation_2eproto(this);
      v71 = *(CLMicroLocationProto::ReceivedEvent::default_instance_ + 264);
    }

    CLMicroLocationProto::CloudBackupExport::MergeFrom(v70, v71);
    v69 = *(a2 + 74);
    if ((v69 & 2) == 0)
    {
LABEL_206:
      if ((v69 & 4) == 0)
      {
        return;
      }

      goto LABEL_218;
    }
  }

  else if ((*(a2 + 296) & 2) == 0)
  {
    goto LABEL_206;
  }

  *(this + 74) |= 2u;
  v72 = *(this + 34);
  if (!v72)
  {
    operator new();
  }

  v73 = *(a2 + 34);
  if (!v73)
  {
    CLMicroLocationProto::protobuf_AddDesc_microlocation_2eproto(this);
    v73 = *(CLMicroLocationProto::ReceivedEvent::default_instance_ + 272);
  }

  CLMicroLocationProto::CloudBackupImport::MergeFrom(v72, v73);
  if ((*(a2 + 74) & 4) != 0)
  {
LABEL_218:
    *(this + 74) |= 4u;
    v74 = *(this + 35);
    if (!v74)
    {
      operator new();
    }

    v75 = *(a2 + 35);
    if (!v75)
    {
      CLMicroLocationProto::protobuf_AddDesc_microlocation_2eproto(this);
      v75 = *(CLMicroLocationProto::ReceivedEvent::default_instance_ + 280);
    }

    CLMicroLocationProto::DataMigration::MergeFrom(v74, v75);
  }
}