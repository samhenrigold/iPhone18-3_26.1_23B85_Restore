void sub_2453F59F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_2453F5A10(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = &unk_285855E78;
  sub_2453EB7EC();
  if (qword_2813CEF70 != a1)
  {
    v2 = *(a1 + 10);
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }

    v3 = *(a1 + 11);
    if (v3)
    {
      (*(*v3 + 8))(v3);
    }
  }

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);
}

void sub_2453F5AD4(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  sub_2453F5A10(a1);

  JUMPOUT(0x245D6A0D0);
}

uint64_t sub_2453F5B74(uint64_t result)
{
  v1 = *(result + 104);
  if (v1)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
  }

  if ((v1 & 0xFF00) != 0)
  {
    *(result + 96) = 0;
    *(result + 98) = 0;
    *(result + 64) = 0;
    *(result + 72) = 0;
    *(result + 56) = 0;
    if ((v1 & 0x4000) != 0)
    {
      v2 = *(result + 80);
      if (v2)
      {
        if (*(v2 + 60))
        {
          *(v2 + 40) = 0u;
          *(v2 + 24) = 0u;
          *(v2 + 8) = 0u;
        }

        *(v2 + 60) = 0;
        v1 = *(result + 104);
      }
    }

    if ((v1 & 0x8000) != 0)
    {
      v3 = *(result + 88);
      if (v3)
      {
        if (*(v3 + 28))
        {
          *(v3 + 8) = 0;
          *(v3 + 16) = 0;
        }

        *(v3 + 28) = 0;
      }
    }
  }

  *(result + 104) = 0;
  return result;
}

uint64_t sub_2453F5BF8(uint64_t result)
{
  if (*(result + 60))
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
  }

  *(result + 60) = 0;
  return result;
}

uint64_t sub_2453F5C18(uint64_t result)
{
  if (*(result + 28))
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
  }

  *(result + 28) = 0;
  return result;
}

uint64_t sub_2453F5C2C(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormatLite *this, unsigned int a3)
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
          goto LABEL_40;
        }

        v9 = *(this + 1);
        v8 = *(this + 2);
        if (v9 >= v8 || (v10 = *v9, v10 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 8));
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

        *(a1 + 104) |= 1u;
        if (v11 < v8 && *v11 == 16)
        {
          v20 = v11 + 1;
          *(this + 1) = v20;
          goto LABEL_48;
        }

        continue;
      case 2u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_40;
        }

        v20 = *(this + 1);
        v8 = *(this + 2);
LABEL_48:
        v58[0] = 0;
        if (v20 >= v8 || (v23 = *v20, (v23 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v58);
          if (!result)
          {
            return result;
          }

          v23 = v58[0];
        }

        else
        {
          *(this + 1) = v20 + 1;
        }

        if (v23 <= 0x11)
        {
          *(a1 + 104) |= 2u;
          *(a1 + 12) = v23;
        }

        v24 = *(this + 1);
        v16 = *(this + 2);
        if (v24 >= v16 || *v24 != 24)
        {
          continue;
        }

        v17 = v24 + 1;
        *(this + 1) = v17;
LABEL_58:
        v58[0] = 0;
        if (v17 >= v16 || (v25 = *v17, (v25 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v58);
          if (!result)
          {
            return result;
          }

          v25 = v58[0];
        }

        else
        {
          *(this + 1) = v17 + 1;
        }

        if (v25 <= 0x20)
        {
          *(a1 + 104) |= 4u;
          *(a1 + 16) = v25;
        }

        v26 = *(this + 1);
        v18 = *(this + 2);
        if (v26 >= v18 || *v26 != 32)
        {
          continue;
        }

        v19 = v26 + 1;
        *(this + 1) = v19;
LABEL_68:
        v58[0] = 0;
        if (v19 >= v18 || (v27 = *v19, (v27 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v58);
          if (!result)
          {
            return result;
          }

          v27 = v58[0];
        }

        else
        {
          *(this + 1) = v19 + 1;
        }

        if (v27 <= 0x17)
        {
          *(a1 + 104) |= 8u;
          *(a1 + 20) = v27;
        }

        v28 = *(this + 1);
        if (v28 >= *(this + 2) || *v28 != 41)
        {
          continue;
        }

        *(this + 1) = v28 + 1;
LABEL_78:
        *v58 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v58) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 24) = *v58;
        *(a1 + 104) |= 0x10u;
        v29 = *(this + 1);
        if (v29 >= *(this + 2) || *v29 != 49)
        {
          continue;
        }

        *(this + 1) = v29 + 1;
LABEL_82:
        *v58 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v58) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 32) = *v58;
        *(a1 + 104) |= 0x20u;
        v30 = *(this + 1);
        if (v30 >= *(this + 2) || *v30 != 57)
        {
          continue;
        }

        *(this + 1) = v30 + 1;
LABEL_86:
        *v58 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v58) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 40) = *v58;
        *(a1 + 104) |= 0x40u;
        v31 = *(this + 1);
        if (v31 >= *(this + 2) || *v31 != 65)
        {
          continue;
        }

        *(this + 1) = v31 + 1;
LABEL_90:
        *v58 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v58) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 48) = *v58;
        *(a1 + 104) |= 0x80u;
        v32 = *(this + 1);
        if (v32 >= *(this + 2) || *v32 != 73)
        {
          continue;
        }

        *(this + 1) = v32 + 1;
LABEL_94:
        *v58 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v58) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 56) = *v58;
        *(a1 + 104) |= 0x100u;
        v33 = *(this + 1);
        if (v33 >= *(this + 2) || *v33 != 81)
        {
          continue;
        }

        *(this + 1) = v33 + 1;
LABEL_98:
        *v58 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v58) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 64) = *v58;
        *(a1 + 104) |= 0x200u;
        v34 = *(this + 1);
        if (v34 >= *(this + 2) || *v34 != 89)
        {
          continue;
        }

        *(this + 1) = v34 + 1;
LABEL_102:
        *v58 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v58) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 72) = *v58;
        *(a1 + 104) |= 0x400u;
        v35 = *(this + 1);
        v13 = *(this + 2);
        if (v35 >= v13 || *v35 != 96)
        {
          continue;
        }

        v14 = v35 + 1;
        *(this + 1) = v14;
LABEL_106:
        v58[0] = 0;
        if (v14 >= v13 || (v36 = *v14, (v36 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v58);
          if (!result)
          {
            return result;
          }

          v36 = v58[0];
          v37 = *(this + 1);
          v13 = *(this + 2);
        }

        else
        {
          v37 = v14 + 1;
          *(this + 1) = v37;
        }

        *(a1 + 96) = v36 != 0;
        *(a1 + 104) |= 0x800u;
        if (v37 >= v13 || *v37 != 104)
        {
          continue;
        }

        v15 = v37 + 1;
        *(this + 1) = v15;
LABEL_114:
        v58[0] = 0;
        if (v15 >= v13 || (v38 = *v15, (v38 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v58);
          if (!result)
          {
            return result;
          }

          v38 = v58[0];
          v39 = *(this + 1);
          v13 = *(this + 2);
        }

        else
        {
          v39 = v15 + 1;
          *(this + 1) = v39;
        }

        *(a1 + 97) = v38 != 0;
        *(a1 + 104) |= 0x1000u;
        if (v39 >= v13 || *v39 != 112)
        {
          continue;
        }

        v21 = v39 + 1;
        *(this + 1) = v21;
LABEL_122:
        v58[0] = 0;
        if (v21 >= v13 || (v40 = *v21, (v40 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v58);
          if (!result)
          {
            return result;
          }

          v40 = v58[0];
          v41 = *(this + 1);
          v13 = *(this + 2);
        }

        else
        {
          v41 = v21 + 1;
          *(this + 1) = v41;
        }

        *(a1 + 98) = v40 != 0;
        v12 = *(a1 + 104) | 0x2000;
        *(a1 + 104) = v12;
        if (v41 >= v13 || *v41 != 122)
        {
          continue;
        }

        *(this + 1) = v41 + 1;
LABEL_130:
        *(a1 + 104) = v12 | 0x4000;
        v42 = *(a1 + 80);
        if (!v42)
        {
          operator new();
        }

        v58[0] = 0;
        v43 = *(this + 1);
        if (v43 >= *(this + 2) || *v43 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v58))
          {
            return 0;
          }
        }

        else
        {
          v58[0] = *v43;
          *(this + 1) = v43 + 1;
        }

        v44 = *(this + 14);
        v45 = *(this + 15);
        *(this + 14) = v44 + 1;
        if (v44 >= v45)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this);
        if (!sub_2454226A4(v42, this, v46) || *(this + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this);
        v47 = *(this + 14);
        v48 = __OFSUB__(v47, 1);
        v49 = v47 - 1;
        if (v49 < 0 == v48)
        {
          *(this + 14) = v49;
        }

        v50 = *(this + 1);
        if (*(this + 4) - v50 <= 1 || *v50 != 130 || v50[1] != 1)
        {
          continue;
        }

        *(this + 1) = v50 + 2;
LABEL_145:
        *(a1 + 104) |= 0x8000u;
        v51 = *(a1 + 88);
        if (!v51)
        {
          operator new();
        }

        v58[0] = 0;
        v52 = *(this + 1);
        if (v52 >= *(this + 2) || *v52 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v58))
          {
            return 0;
          }
        }

        else
        {
          v58[0] = *v52;
          *(this + 1) = v52 + 1;
        }

        v53 = *(this + 14);
        v54 = *(this + 15);
        *(this + 14) = v53 + 1;
        if (v53 < v54)
        {
          wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this);
          if (sub_245422D5C(v51, this, v55))
          {
            if (*(this + 36) == 1)
            {
              wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this);
              v56 = *(this + 14);
              v48 = __OFSUB__(v56, 1);
              v57 = v56 - 1;
              if (v57 < 0 == v48)
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

              continue;
            }
          }
        }

        return 0;
      case 3u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_40;
        }

        v17 = *(this + 1);
        v16 = *(this + 2);
        goto LABEL_58;
      case 4u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_40;
        }

        v19 = *(this + 1);
        v18 = *(this + 2);
        goto LABEL_68;
      case 5u:
        if (v7 == 1)
        {
          goto LABEL_78;
        }

        goto LABEL_40;
      case 6u:
        if (v7 == 1)
        {
          goto LABEL_82;
        }

        goto LABEL_40;
      case 7u:
        if (v7 == 1)
        {
          goto LABEL_86;
        }

        goto LABEL_40;
      case 8u:
        if (v7 == 1)
        {
          goto LABEL_90;
        }

        goto LABEL_40;
      case 9u:
        if (v7 != 1)
        {
          goto LABEL_40;
        }

        goto LABEL_94;
      case 0xAu:
        if (v7 == 1)
        {
          goto LABEL_98;
        }

        goto LABEL_40;
      case 0xBu:
        if (v7 == 1)
        {
          goto LABEL_102;
        }

        goto LABEL_40;
      case 0xCu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_40;
        }

        v14 = *(this + 1);
        v13 = *(this + 2);
        goto LABEL_106;
      case 0xDu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_40;
        }

        v15 = *(this + 1);
        v13 = *(this + 2);
        goto LABEL_114;
      case 0xEu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_40;
        }

        v21 = *(this + 1);
        v13 = *(this + 2);
        goto LABEL_122;
      case 0xFu:
        if (v7 != 2)
        {
          goto LABEL_40;
        }

        v12 = *(a1 + 104);
        goto LABEL_130;
      case 0x10u:
        if (v7 == 2)
        {
          goto LABEL_145;
        }

        goto LABEL_40;
      default:
LABEL_40:
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

uint64_t sub_2453F64E0(uint64_t result, const wireless_diagnostics::google::protobuf::MessageLite *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = result;
  v6 = *(result + 104);
  if (v6)
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(1, *(result + 8), a2, a4);
    v6 = *(v5 + 104);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_20;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(2, *(v5 + 12), a2, a4);
  v6 = *(v5 + 104);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_21;
  }

LABEL_20:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(3, *(v5 + 16), a2, a4);
  v6 = *(v5 + 104);
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_22;
  }

LABEL_21:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(4, *(v5 + 20), a2, a4);
  v6 = *(v5 + 104);
  if ((v6 & 0x10) == 0)
  {
LABEL_6:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_23;
  }

LABEL_22:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(5, a2, *(v5 + 24), a3);
  v6 = *(v5 + 104);
  if ((v6 & 0x20) == 0)
  {
LABEL_7:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_24;
  }

LABEL_23:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(6, a2, *(v5 + 32), a3);
  v6 = *(v5 + 104);
  if ((v6 & 0x40) == 0)
  {
LABEL_8:
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_25;
  }

LABEL_24:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(7, a2, *(v5 + 40), a3);
  v6 = *(v5 + 104);
  if ((v6 & 0x80) == 0)
  {
LABEL_9:
    if ((v6 & 0x100) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_26;
  }

LABEL_25:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(8, a2, *(v5 + 48), a3);
  v6 = *(v5 + 104);
  if ((v6 & 0x100) == 0)
  {
LABEL_10:
    if ((v6 & 0x200) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_27;
  }

LABEL_26:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(9, a2, *(v5 + 56), a3);
  v6 = *(v5 + 104);
  if ((v6 & 0x200) == 0)
  {
LABEL_11:
    if ((v6 & 0x400) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_28;
  }

LABEL_27:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(0xA, a2, *(v5 + 64), a3);
  v6 = *(v5 + 104);
  if ((v6 & 0x400) == 0)
  {
LABEL_12:
    if ((v6 & 0x800) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_29;
  }

LABEL_28:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(0xB, a2, *(v5 + 72), a3);
  v6 = *(v5 + 104);
  if ((v6 & 0x800) == 0)
  {
LABEL_13:
    if ((v6 & 0x1000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_30;
  }

LABEL_29:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(0xC, *(v5 + 96), a2, a4);
  v6 = *(v5 + 104);
  if ((v6 & 0x1000) == 0)
  {
LABEL_14:
    if ((v6 & 0x2000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_31;
  }

LABEL_30:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(0xD, *(v5 + 97), a2, a4);
  v6 = *(v5 + 104);
  if ((v6 & 0x2000) == 0)
  {
LABEL_15:
    if ((v6 & 0x4000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_32;
  }

LABEL_31:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(0xE, *(v5 + 98), a2, a4);
  v6 = *(v5 + 104);
  if ((v6 & 0x4000) == 0)
  {
LABEL_16:
    if ((v6 & 0x8000) == 0)
    {
      return result;
    }

    goto LABEL_35;
  }

LABEL_32:
  v7 = *(v5 + 80);
  if (!v7)
  {
    sub_2453EB7EC();
    v7 = *(qword_2813CEF70 + 80);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0xF, v7, a2, a4);
  if ((*(v5 + 104) & 0x8000) != 0)
  {
LABEL_35:
    v8 = *(v5 + 88);
    if (!v8)
    {
      sub_2453EB7EC();
      v8 = *(qword_2813CEF70 + 88);
    }

    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x10, v8, a2, a4);
  }

  return result;
}

uint64_t sub_2453F6700(uint64_t a1, unsigned int a2)
{
  v3 = *(a1 + 104);
  if (!v3)
  {
    v5 = 0;
    goto LABEL_40;
  }

  if (v3)
  {
    v6 = *(a1 + 8);
    if (v6 >= 0x80)
    {
      v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v6) + 1;
      v3 = *(a1 + 104);
      if ((v3 & 2) == 0)
      {
        goto LABEL_16;
      }
    }

    else
    {
      v4 = 2;
      if ((v3 & 2) == 0)
      {
        goto LABEL_16;
      }
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

  v7 = *(a1 + 12);
  if ((v7 & 0x80000000) != 0)
  {
    v8 = 11;
  }

  else if (v7 >= 0x80)
  {
    v8 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v7) + 1;
    v3 = *(a1 + 104);
  }

  else
  {
    v8 = 2;
  }

  v4 += v8;
LABEL_16:
  if ((v3 & 4) != 0)
  {
    v9 = *(a1 + 16);
    if ((v9 & 0x80000000) != 0)
    {
      v10 = 11;
    }

    else if (v9 >= 0x80)
    {
      v10 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v9) + 1;
      v3 = *(a1 + 104);
    }

    else
    {
      v10 = 2;
    }

    v4 += v10;
    if ((v3 & 8) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_25;
  }

  if ((v3 & 8) != 0)
  {
LABEL_25:
    v11 = *(a1 + 20);
    if ((v11 & 0x80000000) != 0)
    {
      v12 = 11;
    }

    else if (v11 >= 0x80)
    {
      v12 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v11) + 1;
      v3 = *(a1 + 104);
    }

    else
    {
      v12 = 2;
    }

    v4 += v12;
  }

LABEL_31:
  v13 = v4 + 9;
  if ((v3 & 0x10) == 0)
  {
    v13 = v4;
  }

  if ((v3 & 0x20) != 0)
  {
    v13 += 9;
  }

  if ((v3 & 0x40) != 0)
  {
    v13 += 9;
  }

  if ((v3 & 0x80) != 0)
  {
    v5 = v13 + 9;
  }

  else
  {
    v5 = v13;
  }

LABEL_40:
  if ((v3 & 0xFF00) != 0)
  {
    v14 = v5 + 9;
    if ((v3 & 0x100) == 0)
    {
      v14 = v5;
    }

    if ((v3 & 0x200) != 0)
    {
      v14 += 9;
    }

    if ((v3 & 0x400) != 0)
    {
      v14 += 9;
    }

    v5 = ((v3 >> 11) & 2) + ((v3 >> 10) & 2) + ((v3 >> 12) & 2) + v14;
    if ((v3 & 0x4000) != 0)
    {
      v15 = *(a1 + 80);
      if (!v15)
      {
        sub_2453EB7EC();
        v15 = *(qword_2813CEF70 + 80);
      }

      v16 = sub_245422B00(v15, a2);
      v17 = v16;
      if (v16 >= 0x80)
      {
        v18 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v16);
      }

      else
      {
        v18 = 1;
      }

      v5 = (v5 + v17 + v18 + 1);
      v3 = *(a1 + 104);
    }

    if ((v3 & 0x8000) != 0)
    {
      v19 = *(a1 + 88);
      if (!v19)
      {
        sub_2453EB7EC();
        v19 = *(qword_2813CEF70 + 88);
      }

      v20 = sub_245422FC4(v19, a2);
      v21 = v20;
      if (v20 >= 0x80)
      {
        v22 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v20);
      }

      else
      {
        v22 = 1;
      }

      v5 = (v5 + v21 + v22 + 2);
    }
  }

  *(a1 + 100) = v5;
  return v5;
}

void sub_2453F6930(uint64_t a1, void *lpsrc)
{
  if (!__dynamic_cast(lpsrc, MEMORY[0x277D82C38], &unk_2858584F0, 0))
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  sub_2453F5638(a1, lpsrc);
}

void sub_2453F69D4(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v12);
  }

  LOBYTE(v4) = *(a2 + 60);
  if (v4)
  {
    if (*(a2 + 60))
    {
      v6 = *(a2 + 8);
      *(a1 + 60) |= 1u;
      *(a1 + 8) = v6;
      v4 = *(a2 + 60);
      if ((v4 & 2) == 0)
      {
LABEL_6:
        if ((v4 & 4) == 0)
        {
          goto LABEL_7;
        }

        goto LABEL_15;
      }
    }

    else if ((*(a2 + 60) & 2) == 0)
    {
      goto LABEL_6;
    }

    v7 = *(a2 + 16);
    *(a1 + 60) |= 2u;
    *(a1 + 16) = v7;
    v4 = *(a2 + 60);
    if ((v4 & 4) == 0)
    {
LABEL_7:
      if ((v4 & 8) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_16;
    }

LABEL_15:
    v8 = *(a2 + 24);
    *(a1 + 60) |= 4u;
    *(a1 + 24) = v8;
    v4 = *(a2 + 60);
    if ((v4 & 8) == 0)
    {
LABEL_8:
      if ((v4 & 0x10) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_17;
    }

LABEL_16:
    v9 = *(a2 + 32);
    *(a1 + 60) |= 8u;
    *(a1 + 32) = v9;
    v4 = *(a2 + 60);
    if ((v4 & 0x10) == 0)
    {
LABEL_9:
      if ((v4 & 0x20) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_18;
    }

LABEL_17:
    v10 = *(a2 + 40);
    *(a1 + 60) |= 0x10u;
    *(a1 + 40) = v10;
    v4 = *(a2 + 60);
    if ((v4 & 0x20) == 0)
    {
LABEL_10:
      if ((v4 & 0x40) == 0)
      {
        return;
      }

      goto LABEL_11;
    }

LABEL_18:
    v11 = *(a2 + 48);
    *(a1 + 60) |= 0x20u;
    *(a1 + 48) = v11;
    if ((*(a2 + 60) & 0x40) == 0)
    {
      return;
    }

LABEL_11:
    v5 = *(a2 + 52);
    *(a1 + 60) |= 0x40u;
    *(a1 + 52) = v5;
  }
}

void sub_2453F6B28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_2453F6B40(uint64_t a1, uint64_t a2)
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
      v6 = *(a2 + 8);
      *(a1 + 28) |= 1u;
      *(a1 + 8) = v6;
      v4 = *(a2 + 28);
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

    else if ((*(a2 + 28) & 2) == 0)
    {
      goto LABEL_6;
    }

    v7 = *(a2 + 12);
    *(a1 + 28) |= 2u;
    *(a1 + 12) = v7;
    if ((*(a2 + 28) & 4) == 0)
    {
      return;
    }

LABEL_7:
    v5 = *(a2 + 16);
    *(a1 + 28) |= 4u;
    *(a1 + 16) = v5;
  }
}

void sub_2453F6C14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_2453F6C44(_DWORD *a1, uint64_t a2)
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

void sub_2453F6CF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_2453F6D08(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = &unk_285855EF0;
  sub_2453EB7EC();

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);
}

void sub_2453F6D64(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  sub_2453F6D08(a1);

  JUMPOUT(0x245D6A0D0);
}

uint64_t sub_2453F6DE8(uint64_t result)
{
  if (*(result + 20))
  {
    *(result + 8) = 0;
  }

  *(result + 20) = 0;
  return result;
}

uint64_t sub_2453F6DFC(unsigned int *a1, wireless_diagnostics::google::protobuf::internal::WireFormatLite *this, unsigned int a3)
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

uint64_t sub_2453F6F78(uint64_t result, uint64_t a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
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

uint64_t sub_2453F6FE4(uint64_t a1, unsigned int a2)
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

void sub_2453F7074(_DWORD *a1, void *lpsrc)
{
  if (!__dynamic_cast(lpsrc, MEMORY[0x277D82C38], &unk_285858508, 0))
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  sub_2453F6C44(a1, lpsrc);
}

void sub_2453F7130(uint64_t a1, uint64_t a2)
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
        v6 = *(qword_2813CEA38 + 8);
      }

      sub_2453F6C44(v5, v6);
      v4 = *(a2 + 36);
      if ((v4 & 2) == 0)
      {
LABEL_6:
        if ((v4 & 4) == 0)
        {
          goto LABEL_7;
        }

        goto LABEL_16;
      }
    }

    else if ((*(a2 + 36) & 2) == 0)
    {
      goto LABEL_6;
    }

    v7 = *(a2 + 16);
    *(a1 + 36) |= 2u;
    *(a1 + 16) = v7;
    v4 = *(a2 + 36);
    if ((v4 & 4) == 0)
    {
LABEL_7:
      if ((v4 & 8) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_17;
    }

LABEL_16:
    v8 = *(a2 + 20);
    *(a1 + 36) |= 4u;
    *(a1 + 20) = v8;
    v4 = *(a2 + 36);
    if ((v4 & 8) == 0)
    {
LABEL_8:
      if ((v4 & 0x10) == 0)
      {
        return;
      }

LABEL_18:
      v10 = *(a2 + 28);
      if (v10 >= 5)
      {
        __assert_rtn("set_modem_state", "GnssEmergencyTypes.pb.h", 16058, "::CoreGem::proto::gnss::Emergency::ClsModemState_IsValid(value)");
      }

      *(a1 + 36) |= 0x10u;
      *(a1 + 28) = v10;
      return;
    }

LABEL_17:
    v9 = *(a2 + 24);
    *(a1 + 36) |= 8u;
    *(a1 + 24) = v9;
    if ((*(a2 + 36) & 0x10) == 0)
    {
      return;
    }

    goto LABEL_18;
  }
}

void sub_2453F72D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_2453F72EC(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = &unk_285855F68;
  sub_2453EB7EC();
  if (qword_2813CEA38 != a1)
  {
    v2 = *(a1 + 1);
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }
  }

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);
}

void sub_2453F7384(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  sub_2453F72EC(a1);

  JUMPOUT(0x245D6A0D0);
}

uint64_t sub_2453F7410(uint64_t result)
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

uint64_t sub_2453F7440(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormatLite *this, unsigned int a3)
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
          v31 = 0;
          if (v10 >= v9 || (v30 = *v10, (v30 & 0x80000000) != 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v31);
            if (!result)
            {
              return result;
            }

            v30 = v31;
          }

          else
          {
            *(this + 1) = v10 + 1;
          }

          if (v30 <= 4)
          {
            *(a1 + 36) |= 0x10u;
            *(a1 + 28) = v30;
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
    if (!sub_2453F6DFC(v14, this, v18) || *(this + 36) != 1)
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

uint64_t sub_2453F77EC(uint64_t result, const wireless_diagnostics::google::protobuf::MessageLite *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = result;
  v6 = *(result + 36);
  if (v6)
  {
    v7 = *(result + 8);
    if (!v7)
    {
      sub_2453EB7EC();
      v7 = *(qword_2813CEA38 + 8);
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

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(5, v8, a2, a4);
}

uint64_t sub_2453F78C4(uint64_t a1, unsigned int a2)
{
  LOBYTE(v3) = *(a1 + 36);
  if (!v3)
  {
    v4 = 0;
    goto LABEL_34;
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
    v5 = *(qword_2813CEA38 + 8);
  }

  v6 = sub_2453F6FE4(v5, a2);
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
        goto LABEL_34;
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
    if ((v15 & 0x80000000) != 0)
    {
      v16 = 11;
    }

    else if (v15 >= 0x80)
    {
      v16 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v15) + 1;
    }

    else
    {
      v16 = 2;
    }

    v4 = (v16 + v4);
  }

LABEL_34:
  *(a1 + 32) = v4;
  return v4;
}

void sub_2453F7A04(uint64_t a1, void *lpsrc)
{
  if (!__dynamic_cast(lpsrc, MEMORY[0x277D82C38], &unk_285858520, 0))
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  sub_2453F7130(a1, lpsrc);
}

void sub_2453F7AC0(_DWORD *a1, uint64_t a2)
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

void sub_2453F7B94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_2453F7BAC(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = &unk_285855FE0;
  sub_2453EB7EC();

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);
}

void sub_2453F7C08(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  sub_2453F7BAC(a1);

  JUMPOUT(0x245D6A0D0);
}

uint64_t sub_2453F7C90(uint64_t result)
{
  if (*(result + 24))
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
  }

  *(result + 24) = 0;
  return result;
}

uint64_t sub_2453F7CA8(unsigned int *a1, wireless_diagnostics::google::protobuf::internal::WireFormatLite *this, unsigned int a3)
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

unsigned int *sub_2453F7E94(unsigned int *result, uint64_t a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
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

uint64_t sub_2453F7F20(uint64_t a1, unsigned int a2)
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

void sub_2453F7FD8(_DWORD *a1, void *lpsrc)
{
  if (!__dynamic_cast(lpsrc, MEMORY[0x277D82C38], &unk_285858538, 0))
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  sub_2453F7AC0(a1, lpsrc);
}

void sub_2453F8094(_DWORD *a1, uint64_t a2)
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
      if (v5 >= 6)
      {
        __assert_rtn("set_session_protocol", "GnssEmergencyTypes.pb.h", 16155, "::CoreGem::proto::gnss::Emergency::SessionProtocol_IsValid(value)");
      }

      a1[6] |= 1u;
      a1[2] = v5;
      v4 = *(a2 + 24);
    }

    if ((v4 & 2) != 0)
    {
      v6 = *(a2 + 12);
      if (v6 >= 7)
      {
        __assert_rtn("set_pos_protocol", "GnssEmergencyTypes.pb.h", 16178, "::CoreGem::proto::gnss::Emergency::PosProtocol_IsValid(value)");
      }

      a1[6] |= 2u;
      a1[3] = v6;
      v4 = *(a2 + 24);
    }

    if ((v4 & 4) != 0)
    {
      v7 = *(a2 + 16);
      a1[6] |= 4u;
      a1[4] = v7;
    }
  }
}

void sub_2453F81AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_2453F81C4(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = &unk_285856058;
  sub_2453EB7EC();

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);
}

void sub_2453F8220(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  sub_2453F81C4(a1);

  JUMPOUT(0x245D6A0D0);
}

uint64_t sub_2453F82A8(uint64_t result)
{
  if (*(result + 24))
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
  }

  *(result + 24) = 0;
  return result;
}

uint64_t sub_2453F82C0(_DWORD *a1, wireless_diagnostics::google::protobuf::internal::WireFormatLite *this, unsigned int a3)
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
          v12 = *(this + 2);
          goto LABEL_37;
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
      v8 = *(this + 1);
      if (v8 >= *(this + 2) || (v9 = *v8, (v9 & 0x80000000) != 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v21);
        if (!result)
        {
          return result;
        }

        v9 = v21;
      }

      else
      {
        *(this + 1) = v8 + 1;
      }

      if (v9 <= 5)
      {
        a1[6] |= 1u;
        a1[2] = v9;
      }

      v14 = *(this + 1);
      v10 = *(this + 2);
      if (v14 < v10 && *v14 == 16)
      {
        v11 = v14 + 1;
        *(this + 1) = v11;
LABEL_27:
        v20 = 0;
        if (v11 >= v10 || (v15 = *v11, (v15 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v20);
          if (!result)
          {
            return result;
          }

          v15 = v20;
        }

        else
        {
          *(this + 1) = v11 + 1;
        }

        if (v15 <= 6)
        {
          a1[6] |= 2u;
          a1[3] = v15;
        }

        v16 = *(this + 1);
        v12 = *(this + 2);
        if (v16 < v12 && *v16 == 24)
        {
          v13 = v16 + 1;
          *(this + 1) = v13;
LABEL_37:
          if (v13 >= v12 || (v17 = *v13, v17 < 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, a1 + 4);
            if (!result)
            {
              return result;
            }

            v18 = *(this + 1);
            v12 = *(this + 2);
          }

          else
          {
            a1[4] = v17;
            v18 = v13 + 1;
            *(this + 1) = v18;
          }

          a1[6] |= 4u;
          if (v18 == v12 && (*(this + 11) || *(this + 6) == *(this + 10)))
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

unsigned int *sub_2453F84D4(unsigned int *result, uint64_t a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
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
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(2, v5[3], a2, a4);
    if ((v5[6] & 4) == 0)
    {
      return result;
    }

    goto LABEL_7;
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(1, result[2], a2, a4);
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

uint64_t sub_2453F8560(uint64_t a1, unsigned int a2)
{
  LOBYTE(v3) = *(a1 + 24);
  if (!v3)
  {
    v4 = 0;
    goto LABEL_24;
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

LABEL_24:
  *(a1 + 20) = v4;
  return v4;
}

void sub_2453F8634(_DWORD *a1, void *lpsrc)
{
  if (!__dynamic_cast(lpsrc, MEMORY[0x277D82C38], &unk_285858550, 0))
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  sub_2453F8094(a1, lpsrc);
}

void sub_2453F86F0(_DWORD *a1, _DWORD *a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v22);
  }

  v4 = a2[20];
  if (!v4)
  {
    goto LABEL_16;
  }

  if (v4)
  {
    v5 = a2[2];
    a1[20] |= 1u;
    a1[2] = v5;
    v4 = a2[20];
  }

  if ((v4 & 2) != 0)
  {
    v6 = a2[3];
    if (v6 >= 5)
    {
      __assert_rtn("set_method", "GnssEmergencyTypes.pb.h", 16249, "::CoreGem::proto::gnss::Emergency::MethodType_IsValid(value)");
    }

    a1[20] |= 2u;
    a1[3] = v6;
    v4 = a2[20];
  }

  if ((v4 & 4) != 0)
  {
    v17 = a2[4];
    a1[20] |= 4u;
    a1[4] = v17;
    v4 = a2[20];
    if ((v4 & 8) == 0)
    {
LABEL_11:
      if ((v4 & 0x10) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_40;
    }
  }

  else if ((v4 & 8) == 0)
  {
    goto LABEL_11;
  }

  v18 = a2[5];
  a1[20] |= 8u;
  a1[5] = v18;
  v4 = a2[20];
  if ((v4 & 0x10) == 0)
  {
LABEL_12:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_13;
    }

LABEL_41:
    v20 = a2[7];
    a1[20] |= 0x20u;
    a1[7] = v20;
    v4 = a2[20];
    if ((v4 & 0x40) == 0)
    {
LABEL_14:
      if ((v4 & 0x80) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_15;
    }

    goto LABEL_42;
  }

LABEL_40:
  v19 = a2[6];
  a1[20] |= 0x10u;
  a1[6] = v19;
  v4 = a2[20];
  if ((v4 & 0x20) != 0)
  {
    goto LABEL_41;
  }

LABEL_13:
  if ((v4 & 0x40) == 0)
  {
    goto LABEL_14;
  }

LABEL_42:
  v21 = a2[8];
  a1[20] |= 0x40u;
  a1[8] = v21;
  v4 = a2[20];
  if ((v4 & 0x80) != 0)
  {
LABEL_15:
    v7 = a2[9];
    a1[20] |= 0x80u;
    a1[9] = v7;
    v4 = a2[20];
  }

LABEL_16:
  if ((v4 & 0xFF00) == 0)
  {
    goto LABEL_26;
  }

  if ((v4 & 0x100) != 0)
  {
    v10 = a2[10];
    a1[20] |= 0x100u;
    a1[10] = v10;
    v4 = a2[20];
    if ((v4 & 0x200) == 0)
    {
LABEL_19:
      if ((v4 & 0x400) == 0)
      {
        goto LABEL_20;
      }

      goto LABEL_31;
    }
  }

  else if ((v4 & 0x200) == 0)
  {
    goto LABEL_19;
  }

  v11 = a2[11];
  a1[20] |= 0x200u;
  a1[11] = v11;
  v4 = a2[20];
  if ((v4 & 0x400) == 0)
  {
LABEL_20:
    if ((v4 & 0x800) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_32;
  }

LABEL_31:
  v12 = a2[12];
  a1[20] |= 0x400u;
  a1[12] = v12;
  v4 = a2[20];
  if ((v4 & 0x800) == 0)
  {
LABEL_21:
    if ((v4 & 0x1000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_33;
  }

LABEL_32:
  v13 = a2[13];
  a1[20] |= 0x800u;
  a1[13] = v13;
  v4 = a2[20];
  if ((v4 & 0x1000) == 0)
  {
LABEL_22:
    if ((v4 & 0x2000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_34;
  }

LABEL_33:
  v14 = a2[14];
  a1[20] |= 0x1000u;
  a1[14] = v14;
  v4 = a2[20];
  if ((v4 & 0x2000) == 0)
  {
LABEL_23:
    if ((v4 & 0x4000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_35;
  }

LABEL_34:
  v15 = a2[15];
  a1[20] |= 0x2000u;
  a1[15] = v15;
  v4 = a2[20];
  if ((v4 & 0x4000) == 0)
  {
LABEL_24:
    if ((v4 & 0x8000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_25;
  }

LABEL_35:
  v16 = a2[16];
  if (v16 >= 7)
  {
    __assert_rtn("set_pos_protocol", "GnssEmergencyTypes.pb.h", 16536, "::CoreGem::proto::gnss::Emergency::PosProtocol_IsValid(value)");
  }

  a1[20] |= 0x4000u;
  a1[16] = v16;
  v4 = a2[20];
  if ((v4 & 0x8000) != 0)
  {
LABEL_25:
    v8 = a2[17];
    a1[20] |= 0x8000u;
    a1[17] = v8;
    v4 = a2[20];
  }

LABEL_26:
  if ((v4 & 0x10000) != 0)
  {
    v9 = a2[18];
    a1[20] |= 0x10000u;
    a1[18] = v9;
  }
}

void sub_2453F89D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_2453F89EC(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = &unk_2858560D0;
  sub_2453EB7EC();

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);
}

void sub_2453F8A48(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  sub_2453F89EC(a1);

  JUMPOUT(0x245D6A0D0);
}

uint64_t sub_2453F8AE0(uint64_t result)
{
  v1 = *(result + 80);
  if (v1)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
  }

  if ((v1 & 0xFF00) != 0)
  {
    *(result + 56) = 0u;
    *(result + 40) = 0u;
  }

  if ((v1 & 0xFF0000) != 0)
  {
    *(result + 72) = 0;
  }

  *(result + 80) = 0;
  return result;
}

uint64_t sub_2453F8B20(unsigned int *a1, wireless_diagnostics::google::protobuf::internal::WireFormatLite *this, unsigned int a3)
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

    switch(TagFallback >> 3)
    {
      case 1u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_42;
        }

        v8 = *(this + 1);
        v7 = *(this + 2);
        if (v8 < v7)
        {
          v9 = *v8;
          if ((v9 & 0x80000000) == 0)
          {
            a1[2] = v9;
            v10 = v8 + 1;
            *(this + 1) = v10;
LABEL_48:
            a1[20] |= 1u;
            if (v10 < v7 && *v10 == 16)
            {
              v23 = v10 + 1;
              *(this + 1) = v23;
              goto LABEL_51;
            }

            continue;
          }
        }

        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, a1 + 2);
        if (result)
        {
          v10 = *(this + 1);
          v7 = *(this + 2);
          goto LABEL_48;
        }

        break;
      case 2u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_42;
        }

        v23 = *(this + 1);
        v7 = *(this + 2);
LABEL_51:
        v63 = 0;
        if (v23 >= v7 || (v29 = *v23, (v29 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v63);
          if (!result)
          {
            return result;
          }

          v29 = v63;
        }

        else
        {
          *(this + 1) = v23 + 1;
        }

        if (v29 <= 4)
        {
          a1[20] |= 2u;
          a1[3] = v29;
        }

        v30 = *(this + 1);
        v13 = *(this + 2);
        if (v30 >= v13 || *v30 != 24)
        {
          continue;
        }

        v19 = v30 + 1;
        *(this + 1) = v19;
LABEL_61:
        if (v19 >= v13 || (v31 = *v19, (v31 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, a1 + 4);
          if (!result)
          {
            return result;
          }

          v32 = *(this + 1);
          v13 = *(this + 2);
        }

        else
        {
          a1[4] = v31;
          v32 = v19 + 1;
          *(this + 1) = v32;
        }

        a1[20] |= 4u;
        if (v32 >= v13 || *v32 != 32)
        {
          continue;
        }

        v21 = v32 + 1;
        *(this + 1) = v21;
LABEL_69:
        if (v21 >= v13 || (v33 = *v21, (v33 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, a1 + 5);
          if (!result)
          {
            return result;
          }

          v34 = *(this + 1);
          v13 = *(this + 2);
        }

        else
        {
          a1[5] = v33;
          v34 = v21 + 1;
          *(this + 1) = v34;
        }

        a1[20] |= 8u;
        if (v34 >= v13 || *v34 != 40)
        {
          continue;
        }

        v16 = v34 + 1;
        *(this + 1) = v16;
LABEL_77:
        if (v16 >= v13 || (v35 = *v16, (v35 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, a1 + 6);
          if (!result)
          {
            return result;
          }

          v36 = *(this + 1);
          v13 = *(this + 2);
        }

        else
        {
          a1[6] = v35;
          v36 = v16 + 1;
          *(this + 1) = v36;
        }

        a1[20] |= 0x10u;
        if (v36 >= v13 || *v36 != 48)
        {
          continue;
        }

        v24 = v36 + 1;
        *(this + 1) = v24;
LABEL_85:
        if (v24 >= v13 || (v37 = *v24, (v37 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, a1 + 7);
          if (!result)
          {
            return result;
          }

          v38 = *(this + 1);
          v13 = *(this + 2);
        }

        else
        {
          a1[7] = v37;
          v38 = v24 + 1;
          *(this + 1) = v38;
        }

        a1[20] |= 0x20u;
        if (v38 >= v13 || *v38 != 56)
        {
          continue;
        }

        v26 = v38 + 1;
        *(this + 1) = v26;
LABEL_93:
        if (v26 >= v13 || (v39 = *v26, (v39 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, a1 + 8);
          if (!result)
          {
            return result;
          }

          v40 = *(this + 1);
          v13 = *(this + 2);
        }

        else
        {
          a1[8] = v39;
          v40 = v26 + 1;
          *(this + 1) = v40;
        }

        a1[20] |= 0x40u;
        if (v40 >= v13 || *v40 != 64)
        {
          continue;
        }

        v22 = v40 + 1;
        *(this + 1) = v22;
LABEL_101:
        if (v22 >= v13 || (v41 = *v22, (v41 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, a1 + 9);
          if (!result)
          {
            return result;
          }

          v42 = *(this + 1);
          v13 = *(this + 2);
        }

        else
        {
          a1[9] = v41;
          v42 = v22 + 1;
          *(this + 1) = v42;
        }

        a1[20] |= 0x80u;
        if (v42 >= v13 || *v42 != 72)
        {
          continue;
        }

        v28 = v42 + 1;
        *(this + 1) = v28;
LABEL_109:
        if (v28 >= v13 || (v43 = *v28, (v43 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, a1 + 10);
          if (!result)
          {
            return result;
          }

          v44 = *(this + 1);
          v13 = *(this + 2);
        }

        else
        {
          a1[10] = v43;
          v44 = v28 + 1;
          *(this + 1) = v44;
        }

        a1[20] |= 0x100u;
        if (v44 >= v13 || *v44 != 80)
        {
          continue;
        }

        v18 = v44 + 1;
        *(this + 1) = v18;
LABEL_117:
        if (v18 >= v13 || (v45 = *v18, (v45 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, a1 + 11);
          if (!result)
          {
            return result;
          }

          v46 = *(this + 1);
          v13 = *(this + 2);
        }

        else
        {
          a1[11] = v45;
          v46 = v18 + 1;
          *(this + 1) = v46;
        }

        a1[20] |= 0x200u;
        if (v46 >= v13 || *v46 != 88)
        {
          continue;
        }

        v27 = v46 + 1;
        *(this + 1) = v27;
LABEL_125:
        if (v27 >= v13 || (v47 = *v27, (v47 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, a1 + 12);
          if (!result)
          {
            return result;
          }

          v48 = *(this + 1);
          v13 = *(this + 2);
        }

        else
        {
          a1[12] = v47;
          v48 = v27 + 1;
          *(this + 1) = v48;
        }

        a1[20] |= 0x400u;
        if (v48 >= v13 || *v48 != 96)
        {
          continue;
        }

        v15 = v48 + 1;
        *(this + 1) = v15;
LABEL_133:
        if (v15 >= v13 || (v49 = *v15, (v49 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, a1 + 13);
          if (!result)
          {
            return result;
          }

          v50 = *(this + 1);
          v13 = *(this + 2);
        }

        else
        {
          a1[13] = v49;
          v50 = v15 + 1;
          *(this + 1) = v50;
        }

        a1[20] |= 0x800u;
        if (v50 >= v13 || *v50 != 104)
        {
          continue;
        }

        v17 = v50 + 1;
        *(this + 1) = v17;
LABEL_141:
        if (v17 >= v13 || (v51 = *v17, (v51 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, a1 + 14);
          if (!result)
          {
            return result;
          }

          v52 = *(this + 1);
          v13 = *(this + 2);
        }

        else
        {
          a1[14] = v51;
          v52 = v17 + 1;
          *(this + 1) = v52;
        }

        a1[20] |= 0x1000u;
        if (v52 >= v13 || *v52 != 112)
        {
          continue;
        }

        v25 = v52 + 1;
        *(this + 1) = v25;
LABEL_149:
        if (v25 >= v13 || (v53 = *v25, (v53 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, a1 + 15);
          if (!result)
          {
            return result;
          }

          v54 = *(this + 1);
          v13 = *(this + 2);
        }

        else
        {
          a1[15] = v53;
          v54 = v25 + 1;
          *(this + 1) = v54;
        }

        a1[20] |= 0x2000u;
        if (v54 >= v13 || *v54 != 120)
        {
          continue;
        }

        v14 = v54 + 1;
        *(this + 1) = v14;
LABEL_157:
        v62 = 0;
        if (v14 >= v13 || (v55 = *v14, (v55 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v62);
          if (!result)
          {
            return result;
          }

          v55 = v62;
        }

        else
        {
          *(this + 1) = v14 + 1;
        }

        if (v55 <= 6)
        {
          a1[20] |= 0x4000u;
          a1[16] = v55;
        }

        v56 = *(this + 1);
        v11 = *(this + 2);
        if (v11 - v56 < 2 || *v56 != 128 || v56[1] != 1)
        {
          continue;
        }

        v20 = (v56 + 2);
        *(this + 1) = v20;
LABEL_168:
        if (v20 >= v11 || (v57 = *v20, (v57 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, a1 + 17);
          if (!result)
          {
            return result;
          }

          v58 = *(this + 1);
          v11 = *(this + 2);
        }

        else
        {
          a1[17] = v57;
          v58 = (v20 + 1);
          *(this + 1) = v58;
        }

        a1[20] |= 0x8000u;
        if (v11 - v58 < 2 || *v58 != 136 || v58[1] != 1)
        {
          continue;
        }

        v12 = (v58 + 2);
        *(this + 1) = v12;
LABEL_177:
        if (v12 >= v11 || (v59 = *v12, (v59 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, a1 + 18);
          if (!result)
          {
            return result;
          }

          v60 = *(this + 1);
          v11 = *(this + 2);
        }

        else
        {
          a1[18] = v59;
          v60 = v12 + 1;
          *(this + 1) = v60;
        }

        a1[20] |= 0x10000u;
        if (v60 != v11 || !*(this + 11) && *(this + 6) != *(this + 10))
        {
          continue;
        }

        *(this + 8) = 0;
        result = 1;
        *(this + 36) = 1;
        return result;
      case 3u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_42;
        }

        v19 = *(this + 1);
        v13 = *(this + 2);
        goto LABEL_61;
      case 4u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_42;
        }

        v21 = *(this + 1);
        v13 = *(this + 2);
        goto LABEL_69;
      case 5u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_42;
        }

        v16 = *(this + 1);
        v13 = *(this + 2);
        goto LABEL_77;
      case 6u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_42;
        }

        v24 = *(this + 1);
        v13 = *(this + 2);
        goto LABEL_85;
      case 7u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_42;
        }

        v26 = *(this + 1);
        v13 = *(this + 2);
        goto LABEL_93;
      case 8u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_42;
        }

        v22 = *(this + 1);
        v13 = *(this + 2);
        goto LABEL_101;
      case 9u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_42;
        }

        v28 = *(this + 1);
        v13 = *(this + 2);
        goto LABEL_109;
      case 0xAu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_42;
        }

        v18 = *(this + 1);
        v13 = *(this + 2);
        goto LABEL_117;
      case 0xBu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_42;
        }

        v27 = *(this + 1);
        v13 = *(this + 2);
        goto LABEL_125;
      case 0xCu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_42;
        }

        v15 = *(this + 1);
        v13 = *(this + 2);
        goto LABEL_133;
      case 0xDu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_42;
        }

        v17 = *(this + 1);
        v13 = *(this + 2);
        goto LABEL_141;
      case 0xEu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_42;
        }

        v25 = *(this + 1);
        v13 = *(this + 2);
        goto LABEL_149;
      case 0xFu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_42;
        }

        v14 = *(this + 1);
        v13 = *(this + 2);
        goto LABEL_157;
      case 0x10u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_42;
        }

        v20 = *(this + 1);
        v11 = *(this + 2);
        goto LABEL_168;
      case 0x11u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_42;
        }

        v12 = *(this + 1);
        v11 = *(this + 2);
        goto LABEL_177;
      default:
LABEL_42:
        if ((TagFallback & 7) == 4)
        {
          return 1;
        }

        if (wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(this, TagFallback))
        {
          continue;
        }

        return 0;
    }

    return result;
  }
}

unsigned int *sub_2453F9318(unsigned int *result, uint64_t a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = result;
  v6 = result[20];
  if (v6)
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(1, result[2], a2, a4);
    v6 = v5[20];
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_21;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(2, v5[3], a2, a4);
  v6 = v5[20];
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_22;
  }

LABEL_21:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(3, v5[4], a2, a4);
  v6 = v5[20];
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_23;
  }

LABEL_22:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(4, v5[5], a2, a4);
  v6 = v5[20];
  if ((v6 & 0x10) == 0)
  {
LABEL_6:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_24;
  }

LABEL_23:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(5, v5[6], a2, a4);
  v6 = v5[20];
  if ((v6 & 0x20) == 0)
  {
LABEL_7:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_25;
  }

LABEL_24:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(6, v5[7], a2, a4);
  v6 = v5[20];
  if ((v6 & 0x40) == 0)
  {
LABEL_8:
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_26;
  }

LABEL_25:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(7, v5[8], a2, a4);
  v6 = v5[20];
  if ((v6 & 0x80) == 0)
  {
LABEL_9:
    if ((v6 & 0x100) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_27;
  }

LABEL_26:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(8, v5[9], a2, a4);
  v6 = v5[20];
  if ((v6 & 0x100) == 0)
  {
LABEL_10:
    if ((v6 & 0x200) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_28;
  }

LABEL_27:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(9, v5[10], a2, a4);
  v6 = v5[20];
  if ((v6 & 0x200) == 0)
  {
LABEL_11:
    if ((v6 & 0x400) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_29;
  }

LABEL_28:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xA, v5[11], a2, a4);
  v6 = v5[20];
  if ((v6 & 0x400) == 0)
  {
LABEL_12:
    if ((v6 & 0x800) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_30;
  }

LABEL_29:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xB, v5[12], a2, a4);
  v6 = v5[20];
  if ((v6 & 0x800) == 0)
  {
LABEL_13:
    if ((v6 & 0x1000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_31;
  }

LABEL_30:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xC, v5[13], a2, a4);
  v6 = v5[20];
  if ((v6 & 0x1000) == 0)
  {
LABEL_14:
    if ((v6 & 0x2000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_32;
  }

LABEL_31:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xD, v5[14], a2, a4);
  v6 = v5[20];
  if ((v6 & 0x2000) == 0)
  {
LABEL_15:
    if ((v6 & 0x4000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_33;
  }

LABEL_32:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xE, v5[15], a2, a4);
  v6 = v5[20];
  if ((v6 & 0x4000) == 0)
  {
LABEL_16:
    if ((v6 & 0x8000) == 0)
    {
      goto LABEL_17;
    }

LABEL_34:
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x10, v5[17], a2, a4);
    if ((v5[20] & 0x10000) == 0)
    {
      return result;
    }

    goto LABEL_35;
  }

LABEL_33:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(0xF, v5[16], a2, a4);
  v6 = v5[20];
  if ((v6 & 0x8000) != 0)
  {
    goto LABEL_34;
  }

LABEL_17:
  if ((v6 & 0x10000) == 0)
  {
    return result;
  }

LABEL_35:
  v7 = v5[18];

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x11, v7, a2, a4);
}

uint64_t sub_2453F952C(unsigned int *a1, unsigned int a2)
{
  v3 = a1[20];
  if (!v3)
  {
    v4 = 0;
    goto LABEL_47;
  }

  if (v3)
  {
    v5 = a1[2];
    if (v5 >= 0x80)
    {
      v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5) + 1;
      v3 = a1[20];
      if ((v3 & 2) == 0)
      {
        goto LABEL_16;
      }
    }

    else
    {
      v4 = 2;
      if ((v3 & 2) == 0)
      {
        goto LABEL_16;
      }
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

  v6 = a1[3];
  if ((v6 & 0x80000000) != 0)
  {
    v7 = 11;
  }

  else if (v6 >= 0x80)
  {
    v7 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v6) + 1;
    v3 = a1[20];
  }

  else
  {
    v7 = 2;
  }

  v4 = (v7 + v4);
LABEL_16:
  if ((v3 & 4) != 0)
  {
    v8 = a1[4];
    if (v8 >= 0x80)
    {
      v9 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v8) + 1;
      v3 = a1[20];
    }

    else
    {
      v9 = 2;
    }

    v4 = (v9 + v4);
    if ((v3 & 8) == 0)
    {
LABEL_18:
      if ((v3 & 0x10) == 0)
      {
        goto LABEL_19;
      }

      goto LABEL_31;
    }
  }

  else if ((v3 & 8) == 0)
  {
    goto LABEL_18;
  }

  v10 = a1[5];
  if (v10 >= 0x80)
  {
    v11 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v10) + 1;
    v3 = a1[20];
  }

  else
  {
    v11 = 2;
  }

  v4 = (v11 + v4);
  if ((v3 & 0x10) == 0)
  {
LABEL_19:
    if ((v3 & 0x20) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_35;
  }

LABEL_31:
  v12 = a1[6];
  if (v12 >= 0x80)
  {
    v13 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v12) + 1;
    v3 = a1[20];
  }

  else
  {
    v13 = 2;
  }

  v4 = (v13 + v4);
  if ((v3 & 0x20) == 0)
  {
LABEL_20:
    if ((v3 & 0x40) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_39;
  }

LABEL_35:
  v14 = a1[7];
  if (v14 >= 0x80)
  {
    v15 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v14) + 1;
    v3 = a1[20];
  }

  else
  {
    v15 = 2;
  }

  v4 = (v15 + v4);
  if ((v3 & 0x40) == 0)
  {
LABEL_21:
    if ((v3 & 0x80) == 0)
    {
      goto LABEL_47;
    }

    goto LABEL_43;
  }

LABEL_39:
  v16 = a1[8];
  if (v16 >= 0x80)
  {
    v17 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v16) + 1;
    v3 = a1[20];
  }

  else
  {
    v17 = 2;
  }

  v4 = (v17 + v4);
  if ((v3 & 0x80) != 0)
  {
LABEL_43:
    v18 = a1[9];
    if (v18 >= 0x80)
    {
      v19 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v18) + 1;
      v3 = a1[20];
    }

    else
    {
      v19 = 2;
    }

    v4 = (v19 + v4);
  }

LABEL_47:
  if ((v3 & 0xFF00) == 0)
  {
    goto LABEL_56;
  }

  if ((v3 & 0x100) != 0)
  {
    v20 = a1[10];
    if (v20 >= 0x80)
    {
      v21 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v20) + 1;
      v3 = a1[20];
    }

    else
    {
      v21 = 2;
    }

    v4 = (v21 + v4);
    if ((v3 & 0x200) == 0)
    {
LABEL_50:
      if ((v3 & 0x400) == 0)
      {
        goto LABEL_51;
      }

      goto LABEL_66;
    }
  }

  else if ((v3 & 0x200) == 0)
  {
    goto LABEL_50;
  }

  v22 = a1[11];
  if (v22 >= 0x80)
  {
    v23 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v22) + 1;
    v3 = a1[20];
  }

  else
  {
    v23 = 2;
  }

  v4 = (v23 + v4);
  if ((v3 & 0x400) == 0)
  {
LABEL_51:
    if ((v3 & 0x800) == 0)
    {
      goto LABEL_52;
    }

    goto LABEL_70;
  }

LABEL_66:
  v24 = a1[12];
  if (v24 >= 0x80)
  {
    v25 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v24) + 1;
    v3 = a1[20];
  }

  else
  {
    v25 = 2;
  }

  v4 = (v25 + v4);
  if ((v3 & 0x800) == 0)
  {
LABEL_52:
    if ((v3 & 0x1000) == 0)
    {
      goto LABEL_53;
    }

    goto LABEL_74;
  }

LABEL_70:
  v26 = a1[13];
  if (v26 >= 0x80)
  {
    v27 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v26) + 1;
    v3 = a1[20];
  }

  else
  {
    v27 = 2;
  }

  v4 = (v27 + v4);
  if ((v3 & 0x1000) == 0)
  {
LABEL_53:
    if ((v3 & 0x2000) == 0)
    {
      goto LABEL_54;
    }

    goto LABEL_78;
  }

LABEL_74:
  v28 = a1[14];
  if (v28 >= 0x80)
  {
    v29 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v28) + 1;
    v3 = a1[20];
  }

  else
  {
    v29 = 2;
  }

  v4 = (v29 + v4);
  if ((v3 & 0x2000) == 0)
  {
LABEL_54:
    if ((v3 & 0x4000) == 0)
    {
      goto LABEL_55;
    }

    goto LABEL_82;
  }

LABEL_78:
  v30 = a1[15];
  if (v30 >= 0x80)
  {
    v31 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v30) + 1;
    v3 = a1[20];
  }

  else
  {
    v31 = 2;
  }

  v4 = (v31 + v4);
  if ((v3 & 0x4000) == 0)
  {
LABEL_55:
    if ((v3 & 0x8000) == 0)
    {
      goto LABEL_56;
    }

    goto LABEL_88;
  }

LABEL_82:
  v32 = a1[16];
  if ((v32 & 0x80000000) != 0)
  {
    v33 = 11;
  }

  else if (v32 >= 0x80)
  {
    v33 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v32) + 1;
    v3 = a1[20];
  }

  else
  {
    v33 = 2;
  }

  v4 = (v33 + v4);
  if ((v3 & 0x8000) == 0)
  {
LABEL_56:
    if ((v3 & 0x10000) == 0)
    {
      goto LABEL_96;
    }

    goto LABEL_92;
  }

LABEL_88:
  v34 = a1[17];
  if (v34 >= 0x80)
  {
    v35 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v34) + 2;
    v3 = a1[20];
  }

  else
  {
    v35 = 3;
  }

  v4 = (v35 + v4);
  if ((v3 & 0x10000) != 0)
  {
LABEL_92:
    v36 = a1[18];
    if (v36 >= 0x80)
    {
      v37 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v36) + 2;
    }

    else
    {
      v37 = 3;
    }

    v4 = (v37 + v4);
  }

LABEL_96:
  a1[19] = v4;
  return v4;
}

void sub_2453F9874(_DWORD *a1, _DWORD *lpsrc)
{
  if (!__dynamic_cast(lpsrc, MEMORY[0x277D82C38], &unk_285858568, 0))
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  sub_2453F86F0(a1, lpsrc);
}

void sub_2453F9930(uint64_t a1, uint64_t a2)
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
      *(a1 + 28) |= 1u;
      v5 = *(a1 + 8);
      if (!v5)
      {
        operator new();
      }

      v6 = *(a2 + 8);
      if (!v6)
      {
        sub_2453EB7EC();
        v6 = *(qword_2813CEA50 + 8);
      }

      sub_2453F7130(v5, v6);
      v4 = *(a2 + 28);
    }

    if ((v4 & 2) != 0)
    {
      *(a1 + 28) |= 2u;
      v7 = *(a1 + 16);
      if (!v7)
      {
        operator new();
      }

      v8 = *(a2 + 16);
      if (!v8)
      {
        sub_2453EB7EC();
        v8 = *(qword_2813CEA50 + 16);
      }

      sub_2453F6C44(v7, v8);
    }
  }
}

void sub_2453F9AAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_2453F9AC4(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = &unk_285856148;
  sub_2453EB7EC();
  if (qword_2813CEA50 != a1)
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

void sub_2453F9B88(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  sub_2453F9AC4(a1);

  JUMPOUT(0x245D6A0D0);
}

uint64_t sub_2453F9C0C(uint64_t result)
{
  v1 = result;
  LOBYTE(v2) = *(result + 28);
  if (v2)
  {
    if (*(result + 28))
    {
      result = *(result + 8);
      if (result)
      {
        result = sub_2453F7410(result);
        v2 = *(v1 + 28);
      }
    }

    if ((v2 & 2) != 0)
    {
      v3 = *(v1 + 16);
      if (v3)
      {
        if (*(v3 + 20))
        {
          *(v3 + 8) = 0;
        }

        *(v3 + 20) = 0;
      }
    }
  }

  *(v1 + 28) = 0;
  return result;
}

uint64_t sub_2453F9C68(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormatLite *this, unsigned int a3)
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

      if (TagFallback >> 3 != 1 || v7 != 2)
      {
        goto LABEL_15;
      }

      *(a1 + 28) |= 1u;
      v8 = *(a1 + 8);
      if (!v8)
      {
        operator new();
      }

      v25 = 0;
      v9 = *(this + 1);
      if (v9 >= *(this + 2) || *v9 < 0)
      {
        if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v25))
        {
          return 0;
        }
      }

      else
      {
        v25 = *v9;
        *(this + 1) = v9 + 1;
      }

      v10 = *(this + 14);
      v11 = *(this + 15);
      *(this + 14) = v10 + 1;
      if (v10 >= v11)
      {
        return 0;
      }

      wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this);
      if (!sub_2453F7440(v8, this, v12) || *(this + 36) != 1)
      {
        return 0;
      }

      wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this);
      v13 = *(this + 14);
      v14 = __OFSUB__(v13, 1);
      v15 = v13 - 1;
      if (v15 < 0 == v14)
      {
        *(this + 14) = v15;
      }

      v16 = *(this + 1);
      if (v16 < *(this + 2) && *v16 == 18)
      {
        *(this + 1) = v16 + 1;
LABEL_27:
        *(a1 + 28) |= 2u;
        v17 = *(a1 + 16);
        if (!v17)
        {
          operator new();
        }

        v26 = 0;
        v18 = *(this + 1);
        if (v18 >= *(this + 2) || *v18 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v26))
          {
            return 0;
          }
        }

        else
        {
          v26 = *v18;
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
        if (!sub_2453F6DFC(v17, this, v21) || *(this + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this);
        v22 = *(this + 14);
        v14 = __OFSUB__(v22, 1);
        v23 = v22 - 1;
        if (v23 < 0 == v14)
        {
          *(this + 14) = v23;
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

    if (v7 == 2)
    {
      goto LABEL_27;
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
}

uint64_t sub_2453F9F60(uint64_t result, wireless_diagnostics::google::protobuf::MessageLite *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = result;
  v6 = *(result + 28);
  if (v6)
  {
    v7 = *(result + 8);
    if (!v7)
    {
      sub_2453EB7EC();
      v7 = *(qword_2813CEA50 + 8);
    }

    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(1, v7, a2, a4);
    v6 = *(v5 + 28);
  }

  if ((v6 & 2) != 0)
  {
    v8 = *(v5 + 16);
    if (!v8)
    {
      sub_2453EB7EC();
      v8 = *(qword_2813CEA50 + 16);
    }

    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(2, v8, a2, a4);
  }

  return result;
}

uint64_t sub_2453F9FF4(uint64_t a1, unsigned int a2)
{
  if (!*(a1 + 28))
  {
    v3 = 0;
    goto LABEL_18;
  }

  if ((*(a1 + 28) & 1) == 0)
  {
    v3 = 0;
    if ((*(a1 + 28) & 2) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_12;
  }

  v4 = *(a1 + 8);
  if (!v4)
  {
    sub_2453EB7EC();
    v4 = *(qword_2813CEA50 + 8);
  }

  v5 = sub_2453F78C4(v4, a2);
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
  if ((*(a1 + 28) & 2) != 0)
  {
LABEL_12:
    v8 = *(a1 + 16);
    if (!v8)
    {
      sub_2453EB7EC();
      v8 = *(qword_2813CEA50 + 16);
    }

    v9 = sub_2453F6FE4(v8, a2);
    v10 = v9;
    if (v9 >= 0x80)
    {
      v11 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v9);
    }

    else
    {
      v11 = 1;
    }

    v3 = (v3 + v10 + v11 + 1);
  }

LABEL_18:
  *(a1 + 24) = v3;
  return v3;
}

void sub_2453FA0D0(uint64_t a1, void *lpsrc)
{
  if (!__dynamic_cast(lpsrc, MEMORY[0x277D82C38], &unk_285858580, 0))
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  sub_2453F9930(a1, lpsrc);
}

void sub_2453FA18C(_DWORD *a1, uint64_t a2)
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

void sub_2453FA238(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_2453FA250(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = &unk_2858561C0;
  sub_2453EB7EC();

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);
}

void sub_2453FA2AC(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  sub_2453FA250(a1);

  JUMPOUT(0x245D6A0D0);
}

uint64_t sub_2453FA330(uint64_t result)
{
  if (*(result + 20))
  {
    *(result + 8) = 0;
  }

  *(result + 20) = 0;
  return result;
}

uint64_t sub_2453FA344(unsigned int *a1, wireless_diagnostics::google::protobuf::internal::WireFormatLite *this, unsigned int a3)
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

uint64_t sub_2453FA4C0(uint64_t result, uint64_t a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
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

uint64_t sub_2453FA52C(uint64_t a1, unsigned int a2)
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

void sub_2453FA5BC(_DWORD *a1, void *lpsrc)
{
  if (!__dynamic_cast(lpsrc, MEMORY[0x277D82C38], &unk_285858598, 0))
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  sub_2453FA18C(a1, lpsrc);
}

void sub_2453FA678(_DWORD *a1, uint64_t a2)
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

void sub_2453FA724(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_2453FA73C(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = &unk_285856238;
  sub_2453EB7EC();

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);
}

void sub_2453FA798(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  sub_2453FA73C(a1);

  JUMPOUT(0x245D6A0D0);
}

uint64_t sub_2453FA81C(uint64_t result)
{
  if (*(result + 20))
  {
    *(result + 8) = 0;
  }

  *(result + 20) = 0;
  return result;
}

uint64_t sub_2453FA830(unsigned int *a1, wireless_diagnostics::google::protobuf::internal::WireFormatLite *this, unsigned int a3)
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

uint64_t sub_2453FA9AC(uint64_t result, uint64_t a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
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

uint64_t sub_2453FAA18(uint64_t a1, unsigned int a2)
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

void sub_2453FAAA8(_DWORD *a1, void *lpsrc)
{
  if (!__dynamic_cast(lpsrc, MEMORY[0x277D82C38], &unk_2858585B0, 0))
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  sub_2453FA678(a1, lpsrc);
}

void sub_2453FAB64(uint64_t a1, uint64_t a2)
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
        v6 = *(qword_2813CEA68 + 8);
      }

      sub_2453F9930(v5, v6);
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
      v8 = *(qword_2813CEA68 + 16);
    }

    sub_2453FA18C(v7, v8);
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
        v10 = *(qword_2813CEA68 + 24);
      }

      sub_2453FA678(v9, v10);
    }
  }
}

void sub_2453FAD60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_2453FAD78(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = &unk_2858562B0;
  sub_2453EB7EC();
  if (qword_2813CEA68 != a1)
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

void sub_2453FAE68(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  sub_2453FAD78(a1);

  JUMPOUT(0x245D6A0D0);
}

uint64_t sub_2453FAEF4(uint64_t result)
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
        result = sub_2453F9C0C(result);
        v2 = *(v1 + 36);
      }
    }

    if ((v2 & 2) != 0)
    {
      v3 = *(v1 + 16);
      if (v3)
      {
        if (*(v3 + 20))
        {
          *(v3 + 8) = 0;
        }

        *(v3 + 20) = 0;
        v2 = *(v1 + 36);
      }
    }

    if ((v2 & 4) != 0)
    {
      v4 = *(v1 + 24);
      if (v4)
      {
        if (*(v4 + 20))
        {
          *(v4 + 8) = 0;
        }

        *(v4 + 20) = 0;
      }
    }
  }

  *(v1 + 36) = 0;
  return result;
}

uint64_t sub_2453FAF70(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormatLite *this, unsigned int a3)
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
      if (!sub_2453F9C68(v9, this, v13) || *(this + 36) != 1)
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
        if (!sub_2453FA344(v18, this, v22) || *(this + 36) != 1)
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
          if (!sub_2453FA830(v26, this, v30) || *(this + 36) != 1)
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

uint64_t sub_2453FB370(uint64_t result, wireless_diagnostics::google::protobuf::MessageLite *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = result;
  v6 = *(result + 36);
  if (v6)
  {
    v7 = *(result + 8);
    if (!v7)
    {
      sub_2453EB7EC();
      v7 = *(qword_2813CEA68 + 8);
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
    v8 = *(qword_2813CEA68 + 16);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(2, v8, a2, a4);
  if ((*(v5 + 36) & 4) != 0)
  {
LABEL_11:
    v9 = *(v5 + 24);
    if (!v9)
    {
      sub_2453EB7EC();
      v9 = *(qword_2813CEA68 + 24);
    }

    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(3, v9, a2, a4);
  }

  return result;
}

uint64_t sub_2453FB438(uint64_t a1, unsigned int a2)
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
      v5 = *(qword_2813CEA68 + 8);
    }

    v6 = sub_2453F9FF4(v5, a2);
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
      v9 = *(qword_2813CEA68 + 16);
    }

    v10 = sub_2453FA52C(v9, a2);
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
      v13 = *(qword_2813CEA68 + 24);
    }

    v14 = sub_2453FAA18(v13, a2);
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

void sub_2453FB560(uint64_t a1, void *lpsrc)
{
  if (!__dynamic_cast(lpsrc, MEMORY[0x277D82C38], &unk_2858585C8, 0))
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  sub_2453FAB64(a1, lpsrc);
}

void sub_2453FB61C(uint64_t a1, uint64_t a2)
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
        __assert_rtn("set_gps_time_measured_type", "GnssEmergencyTypes.pb.h", 16921, "::CoreGem::proto::gnss::Emergency::ClsNetworkType_IsValid(value)");
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
        v7 = *(qword_2813CEA70 + 8);
      }

      sub_2453FAB64(v6, v7);
    }
  }
}

void sub_2453FB760(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_2453FB778(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = &unk_285856328;
  sub_2453EB7EC();
  if (qword_2813CEA70 != a1)
  {
    v2 = *(a1 + 1);
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }
  }

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);
}

void sub_2453FB810(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  sub_2453FB778(a1);

  JUMPOUT(0x245D6A0D0);
}

uint64_t sub_2453FB898(uint64_t result)
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
        result = sub_2453FAEF4(result);
      }
    }
  }

  *(v1 + 24) = 0;
  return result;
}

uint64_t sub_2453FB8D8(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormatLite *this, unsigned int a3)
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
    if (!sub_2453FAF70(v12, this, v16) || *(this + 36) != 1)
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

uint64_t sub_2453FBB30(uint64_t result, const wireless_diagnostics::google::protobuf::MessageLite *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
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
      v7 = *(qword_2813CEA70 + 8);
    }

    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(2, v7, a2, a4);
  }

  return result;
}

uint64_t sub_2453FBBB0(uint64_t a1, unsigned int a2)
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
      v6 = *(qword_2813CEA70 + 8);
    }

    v7 = sub_2453FB438(v6, a2);
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

void sub_2453FBC7C(uint64_t a1, void *lpsrc)
{
  if (!__dynamic_cast(lpsrc, MEMORY[0x277D82C38], &unk_2858585E0, 0))
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  sub_2453FB61C(a1, lpsrc);
}

void sub_2453FBD38(_DWORD *a1, uint64_t a2)
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

void sub_2453FBE0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_2453FBE24(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = &unk_2858563A0;
  sub_2453EB7EC();

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);
}

void sub_2453FBE80(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  sub_2453FBE24(a1);

  JUMPOUT(0x245D6A0D0);
}

uint64_t sub_2453FBF08(uint64_t result)
{
  if (*(result + 24))
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
  }

  *(result + 24) = 0;
  return result;
}

uint64_t sub_2453FBF20(unsigned int *a1, wireless_diagnostics::google::protobuf::internal::WireFormatLite *this, unsigned int a3)
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

unsigned int *sub_2453FC10C(unsigned int *result, uint64_t a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
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

uint64_t sub_2453FC198(uint64_t a1, unsigned int a2)
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

void sub_2453FC250(_DWORD *a1, void *lpsrc)
{
  if (!__dynamic_cast(lpsrc, MEMORY[0x277D82C38], &unk_2858585F8, 0))
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  sub_2453FBD38(a1, lpsrc);
}

void sub_2453FC30C(uint64_t a1, uint64_t a2)
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
      v8 = *(a2 + 8);
      *(a1 + 40) |= 1u;
      *(a1 + 8) = v8;
      v4 = *(a2 + 40);
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

    else if ((*(a2 + 40) & 2) == 0)
    {
      goto LABEL_6;
    }

    v9 = *(a2 + 12);
    *(a1 + 40) |= 2u;
    *(a1 + 12) = v9;
    v4 = *(a2 + 40);
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
    v10 = *(a2 + 16);
    *(a1 + 40) |= 4u;
    *(a1 + 16) = v10;
    v4 = *(a2 + 40);
    if ((v4 & 8) == 0)
    {
LABEL_8:
      if ((v4 & 0x10) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_9;
    }

LABEL_20:
    v11 = *(a2 + 20);
    if (v11 >= 4)
    {
      __assert_rtn("set_fix_type", "GnssEmergencyTypes.pb.h", 17126, "::CoreGem::proto::gnss::Emergency::FixType_IsValid(value)");
    }

    *(a1 + 40) |= 8u;
    *(a1 + 20) = v11;
    v4 = *(a2 + 40);
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_10;
    }

LABEL_9:
    v5 = *(a2 + 32);
    *(a1 + 40) |= 0x10u;
    *(a1 + 32) = v5;
    v4 = *(a2 + 40);
LABEL_10:
    if ((v4 & 0x20) != 0)
    {
      *(a1 + 40) |= 0x20u;
      v6 = *(a1 + 24);
      if (!v6)
      {
        operator new();
      }

      v7 = *(a2 + 24);
      if (!v7)
      {
        sub_2453EB7EC();
        v7 = *(qword_2813CEF90 + 24);
      }

      sub_2453FBD38(v6, v7);
    }
  }
}

void sub_2453FC4D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_2453FC4E8(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = &unk_285856418;
  sub_2453EB7EC();
  if (qword_2813CEF90 != a1)
  {
    v2 = *(a1 + 3);
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }
  }

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);
}

void sub_2453FC580(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  sub_2453FC4E8(a1);

  JUMPOUT(0x245D6A0D0);
}

uint64_t sub_2453FC610(uint64_t result)
{
  v1 = *(result + 40);
  if (v1)
  {
    *(result + 32) = 0;
    *(result + 8) = 0;
    *(result + 16) = 0;
    if ((v1 & 0x20) != 0)
    {
      v2 = *(result + 24);
      if (v2)
      {
        if (*(v2 + 24))
        {
          *(v2 + 8) = 0;
          *(v2 + 16) = 0;
        }

        *(v2 + 24) = 0;
      }
    }
  }

  *(result + 40) = 0;
  return result;
}

uint64_t sub_2453FC648(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormatLite *this, unsigned int a3)
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
            goto LABEL_26;
          }

          v12 = *(this + 1);
          v9 = *(this + 2);
          if (v12 >= v9 || (v13 = *v12, v13 < 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 8));
            if (!result)
            {
              return result;
            }

            v14 = *(this + 1);
            v9 = *(this + 2);
          }

          else
          {
            *(a1 + 8) = v13;
            v14 = v12 + 1;
            *(this + 1) = v14;
          }

          *(a1 + 40) |= 1u;
          if (v14 < v9 && *v14 == 16)
          {
            v16 = v14 + 1;
            *(this + 1) = v16;
            goto LABEL_35;
          }
        }

        else if (v7 == 2)
        {
          if ((TagFallback & 7) != 0)
          {
            goto LABEL_26;
          }

          v16 = *(this + 1);
          v9 = *(this + 2);
LABEL_35:
          if (v16 >= v9 || (v20 = *v16, v20 < 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 12));
            if (!result)
            {
              return result;
            }

            v21 = *(this + 1);
            v9 = *(this + 2);
          }

          else
          {
            *(a1 + 12) = v20;
            v21 = v16 + 1;
            *(this + 1) = v21;
          }

          *(a1 + 40) |= 2u;
          if (v21 < v9 && *v21 == 24)
          {
            v10 = v21 + 1;
            *(this + 1) = v10;
LABEL_43:
            if (v10 >= v9 || (v22 = *v10, v22 < 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 16));
              if (!result)
              {
                return result;
              }

              v23 = *(this + 1);
              v9 = *(this + 2);
            }

            else
            {
              *(a1 + 16) = v22;
              v23 = v10 + 1;
              *(this + 1) = v23;
            }

            *(a1 + 40) |= 4u;
            if (v23 < v9 && *v23 == 32)
            {
              v15 = v23 + 1;
              *(this + 1) = v15;
LABEL_51:
              v36 = 0;
              if (v15 >= v9 || (v24 = *v15, (v24 & 0x80000000) != 0))
              {
                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v36);
                if (!result)
                {
                  return result;
                }

                v24 = v36;
              }

              else
              {
                *(this + 1) = v15 + 1;
              }

              if (v24 <= 3)
              {
                *(a1 + 40) |= 8u;
                *(a1 + 20) = v24;
              }

              v25 = *(this + 1);
              v17 = *(this + 2);
              if (v25 < v17 && *v25 == 40)
              {
                v18 = v25 + 1;
                *(this + 1) = v18;
                goto LABEL_61;
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
            goto LABEL_43;
          }

LABEL_26:
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
          goto LABEL_51;
        }

        goto LABEL_26;
      }

      if (v7 != 5)
      {
        if (v7 == 6 && v8 == 2)
        {
          v11 = *(a1 + 40);
          goto LABEL_69;
        }

        goto LABEL_26;
      }

      if ((TagFallback & 7) != 0)
      {
        goto LABEL_26;
      }

      v18 = *(this + 1);
      v17 = *(this + 2);
LABEL_61:
      if (v18 >= v17 || (v26 = *v18, v26 < 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 32));
        if (!result)
        {
          return result;
        }

        v27 = *(this + 1);
        v17 = *(this + 2);
      }

      else
      {
        *(a1 + 32) = v26;
        v27 = v18 + 1;
        *(this + 1) = v27;
      }

      v11 = *(a1 + 40) | 0x10;
      *(a1 + 40) = v11;
    }

    while (v27 >= v17 || *v27 != 50);
    *(this + 1) = v27 + 1;
LABEL_69:
    *(a1 + 40) = v11 | 0x20;
    v28 = *(a1 + 24);
    if (!v28)
    {
      operator new();
    }

    v37 = 0;
    v29 = *(this + 1);
    if (v29 >= *(this + 2) || *v29 < 0)
    {
      if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v37))
      {
        return 0;
      }
    }

    else
    {
      v37 = *v29;
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
    if (!sub_2453FBF20(v28, this, v32) || *(this + 36) != 1)
    {
      return 0;
    }

    wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this);
    v33 = *(this + 14);
    v34 = __OFSUB__(v33, 1);
    v35 = v33 - 1;
    if (v35 < 0 == v34)
    {
      *(this + 14) = v35;
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

uint64_t sub_2453FCA68(uint64_t result, const wireless_diagnostics::google::protobuf::MessageLite *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = result;
  v6 = *(result + 40);
  if (v6)
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(1, *(result + 8), a2, a4);
    v6 = *(v5 + 40);
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

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(2, *(v5 + 12), a2, a4);
  v6 = *(v5 + 40);
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
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(3, *(v5 + 16), a2, a4);
  v6 = *(v5 + 40);
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_6;
    }

LABEL_12:
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(5, *(v5 + 32), a2, a4);
    if ((*(v5 + 40) & 0x20) == 0)
    {
      return result;
    }

    goto LABEL_13;
  }

LABEL_11:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(4, *(v5 + 20), a2, a4);
  v6 = *(v5 + 40);
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
  v7 = *(v5 + 24);
  if (!v7)
  {
    sub_2453EB7EC();
    v7 = *(qword_2813CEF90 + 24);
  }

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(6, v7, a2, a4);
}

uint64_t sub_2453FCB5C(uint64_t a1, unsigned int a2)
{
  LOBYTE(v3) = *(a1 + 40);
  if (!v3)
  {
    v4 = 0;
    goto LABEL_39;
  }

  if (*(a1 + 40))
  {
    v5 = *(a1 + 8);
    if (v5 >= 0x80)
    {
      v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5) + 1;
      v3 = *(a1 + 40);
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
    if ((*(a1 + 40) & 2) == 0)
    {
      goto LABEL_14;
    }
  }

  v6 = *(a1 + 12);
  if (v6 >= 0x80)
  {
    v7 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v6) + 1;
    v3 = *(a1 + 40);
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
      v3 = *(a1 + 40);
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

LABEL_29:
      v12 = *(a1 + 32);
      if (v12 >= 0x80)
      {
        v13 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v12) + 1;
        v3 = *(a1 + 40);
      }

      else
      {
        v13 = 2;
      }

      v4 = (v13 + v4);
      if ((v3 & 0x20) == 0)
      {
        goto LABEL_39;
      }

      goto LABEL_33;
    }
  }

  else if ((v3 & 8) == 0)
  {
    goto LABEL_16;
  }

  v10 = *(a1 + 20);
  if ((v10 & 0x80000000) != 0)
  {
    v11 = 11;
  }

  else if (v10 >= 0x80)
  {
    v11 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v10) + 1;
    v3 = *(a1 + 40);
  }

  else
  {
    v11 = 2;
  }

  v4 = (v11 + v4);
  if ((v3 & 0x10) != 0)
  {
    goto LABEL_29;
  }

LABEL_17:
  if ((v3 & 0x20) == 0)
  {
    goto LABEL_39;
  }

LABEL_33:
  v14 = *(a1 + 24);
  if (!v14)
  {
    sub_2453EB7EC();
    v14 = *(qword_2813CEF90 + 24);
  }

  v15 = sub_2453FC198(v14, a2);
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
LABEL_39:
  *(a1 + 36) = v4;
  return v4;
}

void sub_2453FCCD4(uint64_t a1, void *lpsrc)
{
  if (!__dynamic_cast(lpsrc, MEMORY[0x277D82C38], &unk_285858610, 0))
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  sub_2453FC30C(a1, lpsrc);
}

void sub_2453FCD90(uint64_t a1, uint64_t a2)
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
      v5 = *(a2 + 8);
      *(a1 + 32) |= 1u;
      *(a1 + 8) = v5;
      v4 = *(a2 + 32);
      if ((v4 & 2) == 0)
      {
LABEL_6:
        if ((v4 & 4) == 0)
        {
          goto LABEL_7;
        }

        goto LABEL_11;
      }
    }

    else if ((*(a2 + 32) & 2) == 0)
    {
      goto LABEL_6;
    }

    v6 = *(a2 + 12);
    *(a1 + 32) |= 2u;
    *(a1 + 12) = v6;
    v4 = *(a2 + 32);
    if ((v4 & 4) == 0)
    {
LABEL_7:
      if ((v4 & 8) == 0)
      {
        return;
      }

      goto LABEL_12;
    }

LABEL_11:
    v7 = *(a2 + 24);
    *(a1 + 32) |= 4u;
    *(a1 + 24) = v7;
    if ((*(a2 + 32) & 8) == 0)
    {
      return;
    }

LABEL_12:
    *(a1 + 32) |= 8u;
    v8 = *(a1 + 16);
    if (!v8)
    {
      operator new();
    }

    v9 = *(a2 + 16);
    if (!v9)
    {
      sub_2453EB7EC();
      v9 = *(qword_2813CEA80 + 16);
    }

    sub_2453F7AC0(v8, v9);
  }
}

void sub_2453FCEF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_2453FCF08(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = &unk_285856490;
  sub_2453EB7EC();
  if (qword_2813CEA80 != a1)
  {
    v2 = *(a1 + 2);
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }
  }

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);
}

void sub_2453FCFA0(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  sub_2453FCF08(a1);

  JUMPOUT(0x245D6A0D0);
}

uint64_t sub_2453FD028(uint64_t result)
{
  v1 = *(result + 32);
  if (v1)
  {
    *(result + 8) = 0;
    *(result + 24) = 0;
    if ((v1 & 8) != 0)
    {
      v2 = *(result + 16);
      if (v2)
      {
        if (*(v2 + 24))
        {
          *(v2 + 8) = 0;
          *(v2 + 16) = 0;
        }

        *(v2 + 24) = 0;
      }
    }
  }

  *(result + 32) = 0;
  return result;
}

uint64_t sub_2453FD060(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormatLite *this, unsigned int a3)
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
            goto LABEL_20;
          }

          v12 = *(this + 1);
          v9 = *(this + 2);
          if (v12 >= v9 || (v13 = *v12, v13 < 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 8));
            if (!result)
            {
              return result;
            }

            v14 = *(this + 1);
            v9 = *(this + 2);
          }

          else
          {
            *(a1 + 8) = v13;
            v14 = v12 + 1;
            *(this + 1) = v14;
          }

          *(a1 + 32) |= 1u;
          if (v14 < v9 && *v14 == 16)
          {
            v10 = v14 + 1;
            *(this + 1) = v10;
LABEL_29:
            if (v10 >= v9 || (v17 = *v10, v17 < 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 12));
              if (!result)
              {
                return result;
              }

              v18 = *(this + 1);
              v9 = *(this + 2);
            }

            else
            {
              *(a1 + 12) = v17;
              v18 = v10 + 1;
              *(this + 1) = v18;
            }

            *(a1 + 32) |= 2u;
            if (v18 < v9 && *v18 == 24)
            {
              v15 = v18 + 1;
              *(this + 1) = v15;
              goto LABEL_37;
            }
          }
        }

        else
        {
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

      if (v7 != 3)
      {
        if (v7 == 4 && v8 == 2)
        {
          v11 = *(a1 + 32);
          goto LABEL_45;
        }

        goto LABEL_20;
      }

      if ((TagFallback & 7) != 0)
      {
        goto LABEL_20;
      }

      v15 = *(this + 1);
      v9 = *(this + 2);
LABEL_37:
      if (v15 >= v9 || (v19 = *v15, v19 < 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 24));
        if (!result)
        {
          return result;
        }

        v20 = *(this + 1);
        v9 = *(this + 2);
      }

      else
      {
        *(a1 + 24) = v19;
        v20 = v15 + 1;
        *(this + 1) = v20;
      }

      v11 = *(a1 + 32) | 4;
      *(a1 + 32) = v11;
    }

    while (v20 >= v9 || *v20 != 34);
    *(this + 1) = v20 + 1;
LABEL_45:
    *(a1 + 32) = v11 | 8;
    v21 = *(a1 + 16);
    if (!v21)
    {
      operator new();
    }

    v29 = 0;
    v22 = *(this + 1);
    if (v22 >= *(this + 2) || *v22 < 0)
    {
      if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v29))
      {
        return 0;
      }
    }

    else
    {
      v29 = *v22;
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
    if (!sub_2453F7CA8(v21, this, v25) || *(this + 36) != 1)
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

    if (*(this + 1) == *(this + 2) && (*(this + 11) || *(this + 6) == *(this + 10)))
    {
      *(this + 8) = 0;
      result = 1;
      *(this + 36) = 1;
      return result;
    }
  }
}

uint64_t sub_2453FD390(uint64_t result, wireless_diagnostics::google::protobuf::MessageLite *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = result;
  v6 = *(result + 32);
  if (v6)
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(1, *(result + 8), a2, a4);
    v6 = *(v5 + 32);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

LABEL_8:
      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(3, *(v5 + 24), a2, a4);
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

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(2, *(v5 + 12), a2, a4);
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
  v7 = *(v5 + 16);
  if (!v7)
  {
    sub_2453EB7EC();
    v7 = *(qword_2813CEA80 + 16);
  }

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(4, v7, a2, a4);
}

uint64_t sub_2453FD44C(uint64_t a1, unsigned int a2)
{
  LOBYTE(v3) = *(a1 + 32);
  if (!v3)
  {
    v4 = 0;
    goto LABEL_27;
  }

  if (*(a1 + 32))
  {
    v5 = *(a1 + 8);
    if (v5 >= 0x80)
    {
      v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5) + 1;
      v3 = *(a1 + 32);
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
    if ((*(a1 + 32) & 2) == 0)
    {
      goto LABEL_14;
    }
  }

  v6 = *(a1 + 12);
  if (v6 >= 0x80)
  {
    v7 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v6) + 1;
    v3 = *(a1 + 32);
  }

  else
  {
    v7 = 2;
  }

  v4 = (v7 + v4);
LABEL_14:
  if ((v3 & 4) != 0)
  {
    v8 = *(a1 + 24);
    if (v8 >= 0x80)
    {
      v9 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v8) + 1;
      v3 = *(a1 + 32);
    }

    else
    {
      v9 = 2;
    }

    v4 = (v9 + v4);
    if ((v3 & 8) == 0)
    {
      goto LABEL_27;
    }
  }

  else if ((v3 & 8) == 0)
  {
    goto LABEL_27;
  }

  v10 = *(a1 + 16);
  if (!v10)
  {
    sub_2453EB7EC();
    v10 = *(qword_2813CEA80 + 16);
  }

  v11 = sub_2453F7F20(v10, a2);
  v12 = v11;
  if (v11 >= 0x80)
  {
    v13 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v11);
  }

  else
  {
    v13 = 1;
  }

  v4 = (v4 + v12 + v13 + 1);
LABEL_27:
  *(a1 + 28) = v4;
  return v4;
}

void sub_2453FD560(uint64_t a1, void *lpsrc)
{
  if (!__dynamic_cast(lpsrc, MEMORY[0x277D82C38], &unk_285858628, 0))
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  sub_2453FCD90(a1, lpsrc);
}

void sub_2453FD61C(uint64_t a1, uint64_t a2)
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
      v5 = *(a2 + 8);
      *(a1 + 36) |= 1u;
      *(a1 + 8) = v5;
      v4 = *(a2 + 36);
      if ((v4 & 2) == 0)
      {
LABEL_6:
        if ((v4 & 4) == 0)
        {
          goto LABEL_7;
        }

        goto LABEL_11;
      }
    }

    else if ((*(a2 + 36) & 2) == 0)
    {
      goto LABEL_6;
    }

    v6 = *(a2 + 16);
    *(a1 + 36) |= 2u;
    *(a1 + 16) = v6;
    v4 = *(a2 + 36);
    if ((v4 & 4) == 0)
    {
LABEL_7:
      if ((v4 & 8) == 0)
      {
        return;
      }

      goto LABEL_12;
    }

LABEL_11:
    v7 = *(a2 + 20);
    *(a1 + 36) |= 4u;
    *(a1 + 20) = v7;
    if ((*(a2 + 36) & 8) == 0)
    {
      return;
    }

LABEL_12:
    *(a1 + 36) |= 8u;
    v8 = *(a1 + 24);
    if (!v8)
    {
      operator new();
    }

    v9 = *(a2 + 24);
    if (!v9)
    {
      sub_2453EB7EC();
      v9 = *(qword_2813CEA88 + 24);
    }

    sub_2453FCD90(v8, v9);
  }
}

void sub_2453FD77C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_2453FD794(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = &unk_285856508;
  sub_2453EB7EC();
  if (qword_2813CEA88 != a1)
  {
    v2 = *(a1 + 3);
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }
  }

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);
}

void sub_2453FD82C(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  sub_2453FD794(a1);

  JUMPOUT(0x245D6A0D0);
}

uint64_t sub_2453FD8B8(uint64_t result)
{
  v1 = result;
  v2 = *(result + 36);
  if (v2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    if ((v2 & 8) != 0)
    {
      result = *(result + 24);
      if (result)
      {
        result = sub_2453FD028(result);
      }
    }
  }

  *(v1 + 36) = 0;
  return result;
}

uint64_t sub_2453FD8F8(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormatLite *this, unsigned int a3)
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
            goto LABEL_20;
          }

          v12 = *(this + 1);
          v9 = *(this + 2);
          if (v12 >= v9 || (v13 = *v12, v13 < 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(this, (a1 + 8));
            if (!result)
            {
              return result;
            }

            v14 = *(this + 1);
            v9 = *(this + 2);
          }

          else
          {
            *(a1 + 8) = v13;
            v14 = v12 + 1;
            *(this + 1) = v14;
          }

          *(a1 + 36) |= 1u;
          if (v14 < v9 && *v14 == 16)
          {
            v10 = v14 + 1;
            *(this + 1) = v10;
LABEL_29:
            if (v10 >= v9 || (v17 = *v10, v17 < 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 16));
              if (!result)
              {
                return result;
              }

              v18 = *(this + 1);
              v9 = *(this + 2);
            }

            else
            {
              *(a1 + 16) = v17;
              v18 = v10 + 1;
              *(this + 1) = v18;
            }

            *(a1 + 36) |= 2u;
            if (v18 < v9 && *v18 == 24)
            {
              v15 = v18 + 1;
              *(this + 1) = v15;
              goto LABEL_37;
            }
          }
        }

        else
        {
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

      if (v7 != 3)
      {
        if (v7 == 4 && v8 == 2)
        {
          v11 = *(a1 + 36);
          goto LABEL_45;
        }

        goto LABEL_20;
      }

      if ((TagFallback & 7) != 0)
      {
        goto LABEL_20;
      }

      v15 = *(this + 1);
      v9 = *(this + 2);
LABEL_37:
      if (v15 >= v9 || (v19 = *v15, v19 < 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 20));
        if (!result)
        {
          return result;
        }

        v20 = *(this + 1);
        v9 = *(this + 2);
      }

      else
      {
        *(a1 + 20) = v19;
        v20 = v15 + 1;
        *(this + 1) = v20;
      }

      v11 = *(a1 + 36) | 4;
      *(a1 + 36) = v11;
    }

    while (v20 >= v9 || *v20 != 34);
    *(this + 1) = v20 + 1;
LABEL_45:
    *(a1 + 36) = v11 | 8;
    v21 = *(a1 + 24);
    if (!v21)
    {
      operator new();
    }

    v29 = 0;
    v22 = *(this + 1);
    if (v22 >= *(this + 2) || *v22 < 0)
    {
      if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v29))
      {
        return 0;
      }
    }

    else
    {
      v29 = *v22;
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
    if (!sub_2453FD060(v21, this, v25) || *(this + 36) != 1)
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

    if (*(this + 1) == *(this + 2) && (*(this + 11) || *(this + 6) == *(this + 10)))
    {
      *(this + 8) = 0;
      result = 1;
      *(this + 36) = 1;
      return result;
    }
  }
}

uint64_t sub_2453FDC28(uint64_t result, wireless_diagnostics::google::protobuf::MessageLite *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = result;
  v6 = *(result + 36);
  if (v6)
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(1, *(result + 8), a2, a4);
    v6 = *(v5 + 36);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

LABEL_8:
      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(3, *(v5 + 20), a2, a4);
      if ((*(v5 + 36) & 8) == 0)
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

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(2, *(v5 + 16), a2, a4);
  v6 = *(v5 + 36);
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
  v7 = *(v5 + 24);
  if (!v7)
  {
    sub_2453EB7EC();
    v7 = *(qword_2813CEA88 + 24);
  }

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(4, v7, a2, a4);
}

uint64_t sub_2453FDCE4(uint64_t a1, unint64_t a2)
{
  LOBYTE(v3) = *(a1 + 36);
  if (!v3)
  {
    v4 = 0;
    goto LABEL_24;
  }

  if (*(a1 + 36))
  {
    v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(a1 + 8)) + 1;
    v3 = *(a1 + 36);
    if ((v3 & 2) == 0)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v4 = 0;
    if ((*(a1 + 36) & 2) == 0)
    {
      goto LABEL_11;
    }
  }

  v5 = *(a1 + 16);
  if (v5 >= 0x80)
  {
    v6 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5) + 1;
    v3 = *(a1 + 36);
  }

  else
  {
    v6 = 2;
  }

  v4 = (v6 + v4);
LABEL_11:
  if ((v3 & 4) != 0)
  {
    v7 = *(a1 + 20);
    if (v7 >= 0x80)
    {
      v8 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v7) + 1;
      v3 = *(a1 + 36);
    }

    else
    {
      v8 = 2;
    }

    v4 = (v8 + v4);
    if ((v3 & 8) == 0)
    {
      goto LABEL_24;
    }
  }

  else if ((v3 & 8) == 0)
  {
    goto LABEL_24;
  }

  v9 = *(a1 + 24);
  if (!v9)
  {
    sub_2453EB7EC();
    v9 = *(qword_2813CEA88 + 24);
  }

  v10 = sub_2453FD44C(v9, a2);
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
LABEL_24:
  *(a1 + 32) = v4;
  return v4;
}

void sub_2453FDDE4(uint64_t a1, void *lpsrc)
{
  if (!__dynamic_cast(lpsrc, MEMORY[0x277D82C38], &unk_285858640, 0))
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  sub_2453FD61C(a1, lpsrc);
}

void sub_2453FDEA0(uint64_t a1, uint64_t a2)
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
      v5 = *(a2 + 8);
      *(a1 + 28) |= 1u;
      *(a1 + 8) = v5;
      v4 = *(a2 + 28);
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

    v6 = *(a2 + 12);
    *(a1 + 28) |= 2u;
    *(a1 + 12) = v6;
    if ((*(a2 + 28) & 4) == 0)
    {
      return;
    }

LABEL_10:
    *(a1 + 28) |= 4u;
    v7 = *(a1 + 16);
    if (!v7)
    {
      operator new();
    }

    v8 = *(a2 + 16);
    if (!v8)
    {
      sub_2453EB7EC();
      v8 = *(qword_2813CEA90 + 16);
    }

    sub_2453FCD90(v7, v8);
  }
}

void sub_2453FDFE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_2453FDFF8(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = &unk_285856580;
  sub_2453EB7EC();
  if (qword_2813CEA90 != a1)
  {
    v2 = *(a1 + 2);
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }
  }

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);
}

void sub_2453FE090(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  sub_2453FDFF8(a1);

  JUMPOUT(0x245D6A0D0);
}

uint64_t sub_2453FE114(uint64_t result)
{
  v1 = result;
  v2 = *(result + 28);
  if (v2)
  {
    *(result + 8) = 0;
    if ((v2 & 4) != 0)
    {
      result = *(result + 16);
      if (result)
      {
        result = sub_2453FD028(result);
      }
    }
  }

  *(v1 + 28) = 0;
  return result;
}

uint64_t sub_2453FE154(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormatLite *this, unsigned int a3)
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
          if (TagFallback >> 3 != 3)
          {
            break;
          }

          if (v8 == 2)
          {
            v14 = *(a1 + 28);
            goto LABEL_33;
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
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 8));
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

        *(a1 + 28) |= 1u;
        if (v12 < v9 && *v12 == 16)
        {
          v13 = v12 + 1;
          *(this + 1) = v13;
          goto LABEL_25;
        }
      }

      if ((TagFallback & 7) != 0)
      {
        goto LABEL_16;
      }

      v13 = *(this + 1);
      v9 = *(this + 2);
LABEL_25:
      if (v13 >= v9 || (v16 = *v13, v16 < 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 12));
        if (!result)
        {
          return result;
        }

        v17 = *(this + 1);
        v9 = *(this + 2);
      }

      else
      {
        *(a1 + 12) = v16;
        v17 = v13 + 1;
        *(this + 1) = v17;
      }

      v14 = *(a1 + 28) | 2;
      *(a1 + 28) = v14;
    }

    while (v17 >= v9 || *v17 != 26);
    *(this + 1) = v17 + 1;
LABEL_33:
    *(a1 + 28) = v14 | 4;
    v18 = *(a1 + 16);
    if (!v18)
    {
      operator new();
    }

    v26 = 0;
    v19 = *(this + 1);
    if (v19 >= *(this + 2) || *v19 < 0)
    {
      if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v26))
      {
        return 0;
      }
    }

    else
    {
      v26 = *v19;
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
    if (!sub_2453FD060(v18, this, v22) || *(this + 36) != 1)
    {
      return 0;
    }

    wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this);
    v23 = *(this + 14);
    v24 = __OFSUB__(v23, 1);
    v25 = v23 - 1;
    if (v25 < 0 == v24)
    {
      *(this + 14) = v25;
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

uint64_t sub_2453FE40C(uint64_t result, wireless_diagnostics::google::protobuf::MessageLite *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
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
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(2, *(v5 + 12), a2, a4);
    if ((*(v5 + 28) & 4) == 0)
    {
      return result;
    }

    goto LABEL_7;
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(1, *(result + 8), a2, a4);
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
  v7 = *(v5 + 16);
  if (!v7)
  {
    sub_2453EB7EC();
    v7 = *(qword_2813CEA90 + 16);
  }

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(3, v7, a2, a4);
}

uint64_t sub_2453FE4AC(uint64_t a1, unsigned int a2)
{
  LOBYTE(v3) = *(a1 + 28);
  if (!v3)
  {
    v4 = 0;
    goto LABEL_21;
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
  if ((v3 & 4) != 0)
  {
    v8 = *(a1 + 16);
    if (!v8)
    {
      sub_2453EB7EC();
      v8 = *(qword_2813CEA90 + 16);
    }

    v9 = sub_2453FD44C(v8, a2);
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
  }

LABEL_21:
  *(a1 + 24) = v4;
  return v4;
}

void sub_2453FE590(uint64_t a1, void *lpsrc)
{
  if (!__dynamic_cast(lpsrc, MEMORY[0x277D82C38], &unk_285858658, 0))
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  sub_2453FDEA0(a1, lpsrc);
}

void sub_2453FE64C(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v17);
  }

  v4 = *(a2 + 60);
  if (!v4)
  {
    goto LABEL_13;
  }

  if (v4)
  {
    v7 = *(a2 + 8);
    *(a1 + 60) |= 1u;
    *(a1 + 8) = v7;
    v4 = *(a2 + 60);
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
  *(a1 + 60) |= 2u;
  *(a1 + 12) = v8;
  v4 = *(a2 + 60);
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
  *(a1 + 60) |= 4u;
  *(a1 + 16) = v9;
  v4 = *(a2 + 60);
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
  *(a1 + 60) |= 8u;
  *(a1 + 20) = v10;
  v4 = *(a2 + 60);
  if ((v4 & 0x10) == 0)
  {
LABEL_9:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_10;
    }

LABEL_28:
    v13 = *(a2 + 32);
    *(a1 + 60) |= 0x20u;
    *(a1 + 32) = v13;
    v4 = *(a2 + 60);
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

LABEL_23:
  *(a1 + 60) |= 0x10u;
  v11 = *(a1 + 24);
  if (!v11)
  {
    operator new();
  }

  v12 = *(a2 + 24);
  if (!v12)
  {
    sub_2453EB7EC();
    v12 = *(qword_2813CEA98 + 24);
  }

  sub_2453F7AC0(v11, v12);
  v4 = *(a2 + 60);
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
  v14 = *(a2 + 36);
  *(a1 + 60) |= 0x40u;
  *(a1 + 36) = v14;
  v4 = *(a2 + 60);
  if ((v4 & 0x80) != 0)
  {
LABEL_12:
    v5 = *(a2 + 40);
    *(a1 + 60) |= 0x80u;
    *(a1 + 40) = v5;
    v4 = *(a2 + 60);
  }

LABEL_13:
  if ((v4 & 0xFF00) == 0)
  {
    return;
  }

  if ((v4 & 0x100) != 0)
  {
    v15 = *(a2 + 44);
    *(a1 + 60) |= 0x100u;
    *(a1 + 44) = v15;
    v4 = *(a2 + 60);
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

  v16 = *(a2 + 48);
  *(a1 + 60) |= 0x200u;
  *(a1 + 48) = v16;
  if ((*(a2 + 60) & 0x400) == 0)
  {
    return;
  }

LABEL_17:
  v6 = *(a2 + 52);
  *(a1 + 60) |= 0x400u;
  *(a1 + 52) = v6;
}

void sub_2453FE898(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_2453FE8B0(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = &unk_2858565F8;
  sub_2453EB7EC();
  if (qword_2813CEA98 != a1)
  {
    v2 = *(a1 + 3);
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }
  }

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);
}

void sub_2453FE948(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  sub_2453FE8B0(a1);

  JUMPOUT(0x245D6A0D0);
}

uint64_t sub_2453FE9DC(uint64_t result)
{
  v1 = *(result + 60);
  if (v1)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    if ((v1 & 0x10) != 0)
    {
      v2 = *(result + 24);
      if (v2)
      {
        if (*(v2 + 24))
        {
          *(v2 + 8) = 0;
          *(v2 + 16) = 0;
        }

        *(v2 + 24) = 0;
        v1 = *(result + 60);
      }
    }

    *(result + 32) = 0;
    *(result + 40) = 0;
  }

  if ((v1 & 0xFF00) != 0)
  {
    *(result + 48) = 0;
    *(result + 44) = 0;
  }

  *(result + 60) = 0;
  return result;
}

uint64_t sub_2453FEA30(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormatLite *this, unsigned int a3)
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
        if (TagFallback >> 3 <= 5)
        {
          break;
        }

        if (TagFallback >> 3 > 8)
        {
          if (v7 == 9)
          {
            if ((TagFallback & 7) == 0)
            {
              v23 = *(this + 1);
              v9 = *(this + 2);
              goto LABEL_114;
            }
          }

          else if (v7 == 10)
          {
            if ((TagFallback & 7) == 0)
            {
              v20 = *(this + 1);
              v9 = *(this + 2);
              goto LABEL_122;
            }
          }

          else if (v7 == 11 && (TagFallback & 7) == 0)
          {
            v12 = *(this + 1);
            v9 = *(this + 2);
            goto LABEL_130;
          }

          goto LABEL_43;
        }

        if (v7 == 6)
        {
          if ((TagFallback & 7) != 0)
          {
            goto LABEL_43;
          }

          v22 = *(this + 1);
          v9 = *(this + 2);
          goto LABEL_90;
        }

        if (v7 == 7)
        {
          if ((TagFallback & 7) != 0)
          {
            goto LABEL_43;
          }

          v19 = *(this + 1);
          v9 = *(this + 2);
LABEL_98:
          if (v19 >= v9 || (v42 = *v19, v42 < 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 36));
            if (!result)
            {
              return result;
            }

            v43 = *(this + 1);
            v9 = *(this + 2);
          }

          else
          {
            *(a1 + 36) = v42;
            v43 = v19 + 1;
            *(this + 1) = v43;
          }

          *(a1 + 60) |= 0x40u;
          if (v43 < v9 && *v43 == 64)
          {
            v10 = v43 + 1;
            *(this + 1) = v10;
LABEL_106:
            if (v10 >= v9 || (v44 = *v10, v44 < 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 40));
              if (!result)
              {
                return result;
              }

              v45 = *(this + 1);
              v9 = *(this + 2);
            }

            else
            {
              *(a1 + 40) = v44;
              v45 = v10 + 1;
              *(this + 1) = v45;
            }

            *(a1 + 60) |= 0x80u;
            if (v45 < v9 && *v45 == 72)
            {
              v23 = v45 + 1;
              *(this + 1) = v23;
LABEL_114:
              v52 = 0;
              if (v23 >= v9 || (v46 = *v23, (v46 & 0x80000000) != 0))
              {
                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v52);
                if (!result)
                {
                  return result;
                }

                v46 = v52;
                v47 = *(this + 1);
                v9 = *(this + 2);
              }

              else
              {
                v47 = v23 + 1;
                *(this + 1) = v47;
              }

              *(a1 + 44) = v46;
              *(a1 + 60) |= 0x100u;
              if (v47 < v9 && *v47 == 80)
              {
                v20 = v47 + 1;
                *(this + 1) = v20;
LABEL_122:
                if (v20 >= v9 || (v48 = *v20, v48 < 0))
                {
                  result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 48));
                  if (!result)
                  {
                    return result;
                  }

                  v49 = *(this + 1);
                  v9 = *(this + 2);
                }

                else
                {
                  *(a1 + 48) = v48;
                  v49 = v20 + 1;
                  *(this + 1) = v49;
                }

                *(a1 + 60) |= 0x200u;
                if (v49 < v9 && *v49 == 88)
                {
                  v12 = v49 + 1;
                  *(this + 1) = v12;
LABEL_130:
                  if (v12 >= v9 || (v50 = *v12, v50 < 0))
                  {
                    result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 52));
                    if (!result)
                    {
                      return result;
                    }

                    v51 = *(this + 1);
                    v9 = *(this + 2);
                  }

                  else
                  {
                    *(a1 + 52) = v50;
                    v51 = v12 + 1;
                    *(this + 1) = v51;
                  }

                  *(a1 + 60) |= 0x400u;
                  if (v51 == v9 && (*(this + 11) || *(this + 6) == *(this + 10)))
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
          if (v7 == 8 && (TagFallback & 7) == 0)
          {
            v10 = *(this + 1);
            v9 = *(this + 2);
            goto LABEL_106;
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

      if (TagFallback >> 3 > 2)
      {
        break;
      }

      if (v7 != 1)
      {
        if (v7 != 2 || (TagFallback & 7) != 0)
        {
          goto LABEL_43;
        }

        v14 = *(this + 1);
        v13 = *(this + 2);
        goto LABEL_52;
      }

      if ((TagFallback & 7) != 0)
      {
        goto LABEL_43;
      }

      v15 = *(this + 1);
      v13 = *(this + 2);
      if (v15 >= v13 || (v16 = *v15, v16 < 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 8));
        if (!result)
        {
          return result;
        }

        v17 = *(this + 1);
        v13 = *(this + 2);
      }

      else
      {
        *(a1 + 8) = v16;
        v17 = v15 + 1;
        *(this + 1) = v17;
      }

      *(a1 + 60) |= 1u;
      if (v17 < v13 && *v17 == 16)
      {
        v14 = v17 + 1;
        *(this + 1) = v14;
LABEL_52:
        if (v14 >= v13 || (v25 = *v14, v25 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 12));
          if (!result)
          {
            return result;
          }

          v26 = *(this + 1);
          v13 = *(this + 2);
        }

        else
        {
          *(a1 + 12) = v25;
          v26 = v14 + 1;
          *(this + 1) = v26;
        }

        *(a1 + 60) |= 2u;
        if (v26 < v13 && *v26 == 24)
        {
          v21 = v26 + 1;
          *(this + 1) = v21;
LABEL_60:
          if (v21 >= v13 || (v27 = *v21, v27 < 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 16));
            if (!result)
            {
              return result;
            }

            v28 = *(this + 1);
            v13 = *(this + 2);
          }

          else
          {
            *(a1 + 16) = v27;
            v28 = v21 + 1;
            *(this + 1) = v28;
          }

          *(a1 + 60) |= 4u;
          if (v28 < v13 && *v28 == 32)
          {
            v18 = v28 + 1;
            *(this + 1) = v18;
LABEL_68:
            if (v18 >= v13 || (v29 = *v18, v29 < 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 20));
              if (!result)
              {
                return result;
              }

              v30 = *(this + 1);
              v13 = *(this + 2);
            }

            else
            {
              *(a1 + 20) = v29;
              v30 = v18 + 1;
              *(this + 1) = v30;
            }

            v11 = *(a1 + 60) | 8;
            *(a1 + 60) = v11;
            if (v30 < v13 && *v30 == 42)
            {
              *(this + 1) = v30 + 1;
              goto LABEL_76;
            }
          }
        }
      }
    }

    if (v7 == 3)
    {
      if ((TagFallback & 7) != 0)
      {
        goto LABEL_43;
      }

      v21 = *(this + 1);
      v13 = *(this + 2);
      goto LABEL_60;
    }

    if (v7 == 4)
    {
      if ((TagFallback & 7) != 0)
      {
        goto LABEL_43;
      }

      v18 = *(this + 1);
      v13 = *(this + 2);
      goto LABEL_68;
    }

    if (v7 != 5 || v8 != 2)
    {
      goto LABEL_43;
    }

    v11 = *(a1 + 60);
LABEL_76:
    *(a1 + 60) = v11 | 0x10;
    v31 = *(a1 + 24);
    if (!v31)
    {
      operator new();
    }

    v53 = 0;
    v32 = *(this + 1);
    if (v32 >= *(this + 2) || *v32 < 0)
    {
      if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v53))
      {
        return 0;
      }
    }

    else
    {
      v53 = *v32;
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
    if (!sub_2453F7CA8(v31, this, v35) || *(this + 36) != 1)
    {
      return 0;
    }

    wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this);
    v36 = *(this + 14);
    v37 = __OFSUB__(v36, 1);
    v38 = v36 - 1;
    if (v38 < 0 == v37)
    {
      *(this + 14) = v38;
    }

    v39 = *(this + 1);
    v9 = *(this + 2);
    if (v39 < v9 && *v39 == 48)
    {
      v22 = v39 + 1;
      *(this + 1) = v22;
LABEL_90:
      if (v22 >= v9 || (v40 = *v22, v40 < 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 32));
        if (!result)
        {
          return result;
        }

        v41 = *(this + 1);
        v9 = *(this + 2);
      }

      else
      {
        *(a1 + 32) = v40;
        v41 = v22 + 1;
        *(this + 1) = v41;
      }

      *(a1 + 60) |= 0x20u;
      if (v41 < v9 && *v41 == 56)
      {
        v19 = v41 + 1;
        *(this + 1) = v19;
        goto LABEL_98;
      }
    }
  }
}