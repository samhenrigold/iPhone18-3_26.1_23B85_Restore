void sub_2453DFAC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_2453DFAE0(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = &unk_285855020;
  sub_2453DCF08();

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);
}

void sub_2453DFB3C(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  sub_2453DFAE0(a1);

  JUMPOUT(0x245D6A0D0);
}

uint64_t sub_2453DFBD0(uint64_t result)
{
  v1 = *(result + 68);
  if (v1)
  {
    *(result + 40) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 8) = 0;
    *(result + 32) = 0;
  }

  if ((v1 & 0xFF00) != 0)
  {
    *(result + 36) = 0;
    *(result + 41) = 0;
    *(result + 52) = 0;
    *(result + 44) = 0;
    *(result + 60) = 0;
  }

  if ((v1 & 0xFF0000) != 0)
  {
    *(result + 43) = 0;
  }

  *(result + 68) = 0;
  return result;
}

uint64_t sub_2453DFC1C(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormatLite *this, unsigned int a3)
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

        v60 = 0;
        v8 = *(this + 1);
        v7 = *(this + 2);
        if (v8 < v7)
        {
          v9 = *v8;
          if ((v9 & 0x80000000) == 0)
          {
            v10 = v8 + 1;
            *(this + 1) = v10;
LABEL_48:
            *(a1 + 40) = v9 != 0;
            *(a1 + 68) |= 1u;
            if (v10 < v7 && *v10 == 16)
            {
              v21 = v10 + 1;
              *(this + 1) = v21;
              goto LABEL_51;
            }

            continue;
          }
        }

        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v60);
        if (result)
        {
          v9 = v60;
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

        v21 = *(this + 1);
        v7 = *(this + 2);
LABEL_51:
        if (v21 >= v7 || (v27 = *v21, v27 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 8));
          if (!result)
          {
            return result;
          }

          v28 = *(this + 1);
          v7 = *(this + 2);
        }

        else
        {
          *(a1 + 8) = v27;
          v28 = v21 + 1;
          *(this + 1) = v28;
        }

        *(a1 + 68) |= 2u;
        if (v28 >= v7 || *v28 != 24)
        {
          continue;
        }

        v17 = v28 + 1;
        *(this + 1) = v17;
LABEL_59:
        if (v17 >= v7 || (v29 = *v17, v29 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 12));
          if (!result)
          {
            return result;
          }

          v30 = *(this + 1);
          v7 = *(this + 2);
        }

        else
        {
          *(a1 + 12) = v29;
          v30 = v17 + 1;
          *(this + 1) = v30;
        }

        *(a1 + 68) |= 4u;
        if (v30 >= v7 || *v30 != 32)
        {
          continue;
        }

        v19 = v30 + 1;
        *(this + 1) = v19;
LABEL_67:
        if (v19 >= v7 || (v31 = *v19, v31 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 16));
          if (!result)
          {
            return result;
          }

          v32 = *(this + 1);
          v7 = *(this + 2);
        }

        else
        {
          *(a1 + 16) = v31;
          v32 = v19 + 1;
          *(this + 1) = v32;
        }

        *(a1 + 68) |= 8u;
        if (v32 >= v7 || *v32 != 40)
        {
          continue;
        }

        v14 = v32 + 1;
        *(this + 1) = v14;
LABEL_75:
        if (v14 >= v7 || (v33 = *v14, v33 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 20));
          if (!result)
          {
            return result;
          }

          v34 = *(this + 1);
          v7 = *(this + 2);
        }

        else
        {
          *(a1 + 20) = v33;
          v34 = v14 + 1;
          *(this + 1) = v34;
        }

        *(a1 + 68) |= 0x10u;
        if (v34 >= v7 || *v34 != 48)
        {
          continue;
        }

        v22 = v34 + 1;
        *(this + 1) = v22;
LABEL_83:
        if (v22 >= v7 || (v35 = *v22, v35 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 24));
          if (!result)
          {
            return result;
          }

          v36 = *(this + 1);
          v7 = *(this + 2);
        }

        else
        {
          *(a1 + 24) = v35;
          v36 = v22 + 1;
          *(this + 1) = v36;
        }

        *(a1 + 68) |= 0x20u;
        if (v36 >= v7 || *v36 != 56)
        {
          continue;
        }

        v24 = v36 + 1;
        *(this + 1) = v24;
LABEL_91:
        if (v24 >= v7 || (v37 = *v24, v37 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 28));
          if (!result)
          {
            return result;
          }

          v38 = *(this + 1);
          v7 = *(this + 2);
        }

        else
        {
          *(a1 + 28) = v37;
          v38 = v24 + 1;
          *(this + 1) = v38;
        }

        *(a1 + 68) |= 0x40u;
        if (v38 >= v7 || *v38 != 64)
        {
          continue;
        }

        v20 = v38 + 1;
        *(this + 1) = v20;
LABEL_99:
        if (v20 >= v7 || (v39 = *v20, v39 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 32));
          if (!result)
          {
            return result;
          }

          v40 = *(this + 1);
          v7 = *(this + 2);
        }

        else
        {
          *(a1 + 32) = v39;
          v40 = v20 + 1;
          *(this + 1) = v40;
        }

        *(a1 + 68) |= 0x80u;
        if (v40 >= v7 || *v40 != 72)
        {
          continue;
        }

        v26 = v40 + 1;
        *(this + 1) = v26;
LABEL_107:
        v60 = 0;
        if (v26 >= v7 || (v41 = *v26, (v41 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v60);
          if (!result)
          {
            return result;
          }

          v41 = v60;
          v42 = *(this + 1);
          v7 = *(this + 2);
        }

        else
        {
          v42 = v26 + 1;
          *(this + 1) = v42;
        }

        *(a1 + 36) = v41;
        *(a1 + 68) |= 0x100u;
        if (v42 >= v7 || *v42 != 80)
        {
          continue;
        }

        v16 = v42 + 1;
        *(this + 1) = v16;
LABEL_115:
        v60 = 0;
        if (v16 >= v7 || (v43 = *v16, (v43 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v60);
          if (!result)
          {
            return result;
          }

          v43 = v60;
          v44 = *(this + 1);
          v7 = *(this + 2);
        }

        else
        {
          v44 = v16 + 1;
          *(this + 1) = v44;
        }

        *(a1 + 41) = v43 != 0;
        *(a1 + 68) |= 0x200u;
        if (v44 >= v7 || *v44 != 88)
        {
          continue;
        }

        v25 = v44 + 1;
        *(this + 1) = v25;
LABEL_123:
        if (v25 >= v7 || (v45 = *v25, v45 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 44));
          if (!result)
          {
            return result;
          }

          v46 = *(this + 1);
          v7 = *(this + 2);
        }

        else
        {
          *(a1 + 44) = v45;
          v46 = v25 + 1;
          *(this + 1) = v46;
        }

        *(a1 + 68) |= 0x400u;
        if (v46 >= v7 || *v46 != 96)
        {
          continue;
        }

        v13 = v46 + 1;
        *(this + 1) = v13;
LABEL_131:
        v60 = 0;
        if (v13 >= v7 || (v47 = *v13, (v47 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v60);
          if (!result)
          {
            return result;
          }

          v47 = v60;
          v48 = *(this + 1);
          v7 = *(this + 2);
        }

        else
        {
          v48 = v13 + 1;
          *(this + 1) = v48;
        }

        *(a1 + 42) = v47 != 0;
        *(a1 + 68) |= 0x800u;
        if (v48 >= v7 || *v48 != 104)
        {
          continue;
        }

        v15 = v48 + 1;
        *(this + 1) = v15;
LABEL_139:
        if (v15 >= v7 || (v49 = *v15, v49 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 48));
          if (!result)
          {
            return result;
          }

          v50 = *(this + 1);
          v7 = *(this + 2);
        }

        else
        {
          *(a1 + 48) = v49;
          v50 = v15 + 1;
          *(this + 1) = v50;
        }

        *(a1 + 68) |= 0x1000u;
        if (v50 >= v7 || *v50 != 112)
        {
          continue;
        }

        v23 = v50 + 1;
        *(this + 1) = v23;
LABEL_147:
        if (v23 >= v7 || (v51 = *v23, v51 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 52));
          if (!result)
          {
            return result;
          }

          v52 = *(this + 1);
          v7 = *(this + 2);
        }

        else
        {
          *(a1 + 52) = v51;
          v52 = v23 + 1;
          *(this + 1) = v52;
        }

        *(a1 + 68) |= 0x2000u;
        if (v52 >= v7 || *v52 != 120)
        {
          continue;
        }

        v12 = v52 + 1;
        *(this + 1) = v12;
LABEL_155:
        if (v12 >= v7 || (v53 = *v12, v53 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 56));
          if (!result)
          {
            return result;
          }

          v54 = *(this + 1);
          v7 = *(this + 2);
        }

        else
        {
          *(a1 + 56) = v53;
          v54 = (v12 + 1);
          *(this + 1) = v54;
        }

        *(a1 + 68) |= 0x4000u;
        if (v7 - v54 < 2 || *v54 != 128 || v54[1] != 1)
        {
          continue;
        }

        v18 = (v54 + 2);
        *(this + 1) = v18;
LABEL_164:
        if (v18 >= v7 || (v55 = *v18, v55 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 60));
          if (!result)
          {
            return result;
          }

          v56 = *(this + 1);
          v7 = *(this + 2);
        }

        else
        {
          *(a1 + 60) = v55;
          v56 = (v18 + 1);
          *(this + 1) = v56;
        }

        *(a1 + 68) |= 0x8000u;
        if (v7 - v56 < 2 || *v56 != 136 || v56[1] != 1)
        {
          continue;
        }

        v11 = (v56 + 2);
        *(this + 1) = v11;
LABEL_173:
        v60 = 0;
        if (v11 >= v7 || (v57 = *v11, (v57 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v60);
          if (!result)
          {
            return result;
          }

          v57 = v60;
          v58 = *(this + 1);
          v7 = *(this + 2);
        }

        else
        {
          v58 = v11 + 1;
          *(this + 1) = v58;
        }

        *(a1 + 43) = v57 != 0;
        *(a1 + 68) |= 0x10000u;
        if (v58 != v7 || !*(this + 11) && *(this + 6) != *(this + 10))
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

        v17 = *(this + 1);
        v7 = *(this + 2);
        goto LABEL_59;
      case 4u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_42;
        }

        v19 = *(this + 1);
        v7 = *(this + 2);
        goto LABEL_67;
      case 5u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_42;
        }

        v14 = *(this + 1);
        v7 = *(this + 2);
        goto LABEL_75;
      case 6u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_42;
        }

        v22 = *(this + 1);
        v7 = *(this + 2);
        goto LABEL_83;
      case 7u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_42;
        }

        v24 = *(this + 1);
        v7 = *(this + 2);
        goto LABEL_91;
      case 8u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_42;
        }

        v20 = *(this + 1);
        v7 = *(this + 2);
        goto LABEL_99;
      case 9u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_42;
        }

        v26 = *(this + 1);
        v7 = *(this + 2);
        goto LABEL_107;
      case 0xAu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_42;
        }

        v16 = *(this + 1);
        v7 = *(this + 2);
        goto LABEL_115;
      case 0xBu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_42;
        }

        v25 = *(this + 1);
        v7 = *(this + 2);
        goto LABEL_123;
      case 0xCu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_42;
        }

        v13 = *(this + 1);
        v7 = *(this + 2);
        goto LABEL_131;
      case 0xDu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_42;
        }

        v15 = *(this + 1);
        v7 = *(this + 2);
        goto LABEL_139;
      case 0xEu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_42;
        }

        v23 = *(this + 1);
        v7 = *(this + 2);
        goto LABEL_147;
      case 0xFu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_42;
        }

        v12 = *(this + 1);
        v7 = *(this + 2);
        goto LABEL_155;
      case 0x10u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_42;
        }

        v18 = *(this + 1);
        v7 = *(this + 2);
        goto LABEL_164;
      case 0x11u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_42;
        }

        v11 = *(this + 1);
        v7 = *(this + 2);
        goto LABEL_173;
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

uint64_t sub_2453E043C(uint64_t result, uint64_t a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = result;
  v6 = *(result + 68);
  if (v6)
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(1, *(result + 40), a2, a4);
    v6 = *(v5 + 68);
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

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(2, *(v5 + 8), a2, a4);
  v6 = *(v5 + 68);
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
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(3, *(v5 + 12), a2, a4);
  v6 = *(v5 + 68);
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
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(4, *(v5 + 16), a2, a4);
  v6 = *(v5 + 68);
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
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(5, *(v5 + 20), a2, a4);
  v6 = *(v5 + 68);
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
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(6, *(v5 + 24), a2, a4);
  v6 = *(v5 + 68);
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
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(7, *(v5 + 28), a2, a4);
  v6 = *(v5 + 68);
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
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(8, *(v5 + 32), a2, a4);
  v6 = *(v5 + 68);
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
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(9, *(v5 + 36), a2, a4);
  v6 = *(v5 + 68);
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
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(0xA, *(v5 + 41), a2, a4);
  v6 = *(v5 + 68);
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
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xB, *(v5 + 44), a2, a4);
  v6 = *(v5 + 68);
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
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(0xC, *(v5 + 42), a2, a4);
  v6 = *(v5 + 68);
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
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xD, *(v5 + 48), a2, a4);
  v6 = *(v5 + 68);
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
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xE, *(v5 + 52), a2, a4);
  v6 = *(v5 + 68);
  if ((v6 & 0x4000) == 0)
  {
LABEL_16:
    if ((v6 & 0x8000) == 0)
    {
      goto LABEL_17;
    }

LABEL_34:
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x10, *(v5 + 60), a2, a4);
    if ((*(v5 + 68) & 0x10000) == 0)
    {
      return result;
    }

    goto LABEL_35;
  }

LABEL_33:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xF, *(v5 + 56), a2, a4);
  v6 = *(v5 + 68);
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
  v7 = *(v5 + 43);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(0x11, v7, a2, a4);
}

uint64_t sub_2453E0650(unsigned int *a1, unsigned int a2)
{
  v3 = a1[17];
  if (!v3)
  {
    v4 = 0;
    goto LABEL_39;
  }

  v4 = 2 * (v3 & 1);
  if ((v3 & 2) != 0)
  {
    v5 = a1[2];
    if (v5 >= 0x80)
    {
      v6 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5) + 1;
      v3 = a1[17];
    }

    else
    {
      v6 = 2;
    }

    v4 += v6;
    if ((v3 & 4) == 0)
    {
LABEL_4:
      if ((v3 & 8) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_19;
    }
  }

  else if ((v3 & 4) == 0)
  {
    goto LABEL_4;
  }

  v7 = a1[3];
  if (v7 >= 0x80)
  {
    v8 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v7) + 1;
    v3 = a1[17];
  }

  else
  {
    v8 = 2;
  }

  v4 += v8;
  if ((v3 & 8) == 0)
  {
LABEL_5:
    if ((v3 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_23;
  }

LABEL_19:
  v9 = a1[4];
  if (v9 >= 0x80)
  {
    v10 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v9) + 1;
    v3 = a1[17];
  }

  else
  {
    v10 = 2;
  }

  v4 += v10;
  if ((v3 & 0x10) == 0)
  {
LABEL_6:
    if ((v3 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_27;
  }

LABEL_23:
  v11 = a1[5];
  if (v11 >= 0x80)
  {
    v12 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v11) + 1;
    v3 = a1[17];
  }

  else
  {
    v12 = 2;
  }

  v4 += v12;
  if ((v3 & 0x20) == 0)
  {
LABEL_7:
    if ((v3 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_31;
  }

LABEL_27:
  v13 = a1[6];
  if (v13 >= 0x80)
  {
    v14 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v13) + 1;
    v3 = a1[17];
  }

  else
  {
    v14 = 2;
  }

  v4 += v14;
  if ((v3 & 0x40) == 0)
  {
LABEL_8:
    if ((v3 & 0x80) == 0)
    {
      goto LABEL_39;
    }

    goto LABEL_35;
  }

LABEL_31:
  v15 = a1[7];
  if (v15 >= 0x80)
  {
    v16 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v15) + 1;
    v3 = a1[17];
  }

  else
  {
    v16 = 2;
  }

  v4 += v16;
  if ((v3 & 0x80) != 0)
  {
LABEL_35:
    v17 = a1[8];
    if (v17 >= 0x80)
    {
      v18 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v17) + 1;
      v3 = a1[17];
    }

    else
    {
      v18 = 2;
    }

    v4 += v18;
  }

LABEL_39:
  if ((v3 & 0xFF00) == 0)
  {
    goto LABEL_73;
  }

  if ((v3 & 0x100) != 0)
  {
    v19 = a1[9];
    if ((v19 & 0x80000000) != 0)
    {
      v20 = 11;
    }

    else if (v19 >= 0x80)
    {
      v20 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v19) + 1;
      v3 = a1[17];
    }

    else
    {
      v20 = 2;
    }

    v4 += v20;
  }

  v21 = ((v3 >> 8) & 2) + v4;
  if ((v3 & 0x400) != 0)
  {
    v22 = a1[11];
    if (v22 >= 0x80)
    {
      v23 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v22) + 1;
      v3 = a1[17];
    }

    else
    {
      v23 = 2;
    }

    v21 += v23;
  }

  v4 = ((v3 >> 10) & 2) + v21;
  if ((v3 & 0x1000) != 0)
  {
    v24 = a1[12];
    if (v24 >= 0x80)
    {
      v25 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v24) + 1;
      v3 = a1[17];
    }

    else
    {
      v25 = 2;
    }

    v4 += v25;
    if ((v3 & 0x2000) == 0)
    {
LABEL_54:
      if ((v3 & 0x4000) == 0)
      {
        goto LABEL_55;
      }

      goto LABEL_65;
    }
  }

  else if ((v3 & 0x2000) == 0)
  {
    goto LABEL_54;
  }

  v26 = a1[13];
  if (v26 >= 0x80)
  {
    v27 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v26) + 1;
    v3 = a1[17];
  }

  else
  {
    v27 = 2;
  }

  v4 += v27;
  if ((v3 & 0x4000) == 0)
  {
LABEL_55:
    if ((v3 & 0x8000) == 0)
    {
      goto LABEL_73;
    }

    goto LABEL_69;
  }

LABEL_65:
  v28 = a1[14];
  if (v28 >= 0x80)
  {
    v29 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v28) + 1;
    v3 = a1[17];
  }

  else
  {
    v29 = 2;
  }

  v4 += v29;
  if ((v3 & 0x8000) != 0)
  {
LABEL_69:
    v30 = a1[15];
    if (v30 >= 0x80)
    {
      v31 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v30) + 2;
      v3 = a1[17];
    }

    else
    {
      v31 = 3;
    }

    v4 += v31;
  }

LABEL_73:
  if ((v3 & 0x10000) != 0)
  {
    result = v4 + 3;
  }

  else
  {
    result = v4;
  }

  a1[16] = result;
  return result;
}

void sub_2453E08F8(uint64_t a1, void *lpsrc)
{
  if (!__dynamic_cast(lpsrc, MEMORY[0x277D82C38], &unk_285855478, 0))
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  sub_2453DF82C(a1, lpsrc);
}

void *sub_2453E09B4(void *a1, uint64_t a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_285855098;
  sub_2453E0A10(a1, a2);
  return a1;
}

void sub_2453E0A10(_DWORD *a1, uint64_t a2)
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

void sub_2453E0ABC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_2453E0AD4(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = &unk_285855098;
  sub_2453DCF08();

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);
}

void sub_2453E0B30(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  sub_2453E0AD4(a1);

  JUMPOUT(0x245D6A0D0);
}

uint64_t sub_2453E0BB4(uint64_t result)
{
  if (*(result + 20))
  {
    *(result + 8) = 0;
  }

  *(result + 20) = 0;
  return result;
}

uint64_t sub_2453E0BC8(unsigned int *a1, wireless_diagnostics::google::protobuf::internal::WireFormatLite *this, unsigned int a3)
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

uint64_t sub_2453E0D44(uint64_t result, uint64_t a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
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

uint64_t sub_2453E0DB0(uint64_t a1, unsigned int a2)
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

void sub_2453E0E40(_DWORD *a1, void *lpsrc)
{
  if (!__dynamic_cast(lpsrc, MEMORY[0x277D82C38], &unk_285855490, 0))
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  sub_2453E0A10(a1, lpsrc);
}

void *sub_2453E0EFC(void *a1, uint64_t a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_285855110;
  sub_2453E0F58(a1, a2);
  return a1;
}

void sub_2453E0F58(_DWORD *a1, uint64_t a2)
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

void sub_2453E1004(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_2453E101C(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = &unk_285855110;
  sub_2453DCF08();

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);
}

void sub_2453E1078(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  sub_2453E101C(a1);

  JUMPOUT(0x245D6A0D0);
}

uint64_t sub_2453E10FC(uint64_t result)
{
  if (*(result + 20))
  {
    *(result + 8) = 0;
  }

  *(result + 20) = 0;
  return result;
}

uint64_t sub_2453E1110(unsigned int *a1, wireless_diagnostics::google::protobuf::internal::WireFormatLite *this, unsigned int a3)
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

uint64_t sub_2453E128C(uint64_t result, uint64_t a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
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

uint64_t sub_2453E12F8(uint64_t a1, unsigned int a2)
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

void sub_2453E1388(_DWORD *a1, void *lpsrc)
{
  if (!__dynamic_cast(lpsrc, MEMORY[0x277D82C38], &unk_2858554A8, 0))
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  sub_2453E0F58(a1, lpsrc);
}

uint64_t sub_2453E1444(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = &unk_285855188;
  *(a1 + 24) = 0;
  sub_2453E14A4(a1, a2);
  return a1;
}

void sub_2453E14A4(uint64_t a1, uint64_t a2)
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
        sub_2453DCF08();
        v7 = *(qword_27EE134E8 + 8);
      }

      sub_2453E0F58(v6, v7);
    }
  }
}

void sub_2453E15B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_2453E15D0(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = &unk_285855188;
  sub_2453E1628(a1);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);
}

void sub_2453E1628(uint64_t a1)
{
  sub_2453DCF08();
  if (qword_27EE134E8 != a1)
  {
    v2 = *(a1 + 8);
    if (v2)
    {
      v3 = *(*v2 + 8);

      v3();
    }
  }
}

void sub_2453E16A4(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  sub_2453E15D0(a1);

  JUMPOUT(0x245D6A0D0);
}

uint64_t sub_2453E172C(uint64_t result)
{
  v1 = *(result + 24);
  if (v1)
  {
    *(result + 16) = 0;
    if ((v1 & 2) != 0)
    {
      v2 = *(result + 8);
      if (v2)
      {
        if (*(v2 + 20))
        {
          *(v2 + 8) = 0;
        }

        *(v2 + 20) = 0;
      }
    }
  }

  *(result + 24) = 0;
  return result;
}

uint64_t sub_2453E175C(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormatLite *this, unsigned int a3)
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
          v12 = *(a1 + 24);
          goto LABEL_22;
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

      v9 = *(this + 1);
      v8 = *(this + 2);
      if (v9 >= v8 || (v10 = *v9, v10 < 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 16));
        if (!result)
        {
          return result;
        }

        v11 = *(this + 1);
        v8 = *(this + 2);
      }

      else
      {
        *(a1 + 16) = v10;
        v11 = v9 + 1;
        *(this + 1) = v11;
      }

      v12 = *(a1 + 24) | 1;
      *(a1 + 24) = v12;
    }

    while (v11 >= v8 || *v11 != 18);
    *(this + 1) = v11 + 1;
LABEL_22:
    *(a1 + 24) = v12 | 2;
    v14 = *(a1 + 8);
    if (!v14)
    {
      operator new();
    }

    v22 = 0;
    v15 = *(this + 1);
    if (v15 >= *(this + 2) || *v15 < 0)
    {
      if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v22))
      {
        return 0;
      }
    }

    else
    {
      v22 = *v15;
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
    if (!sub_2453E1110(v14, this, v18) || *(this + 36) != 1)
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

    if (*(this + 1) == *(this + 2) && (*(this + 11) || *(this + 6) == *(this + 10)))
    {
      *(this + 8) = 0;
      result = 1;
      *(this + 36) = 1;
      return result;
    }
  }
}

uint64_t sub_2453E19A0(uint64_t result, wireless_diagnostics::google::protobuf::MessageLite *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = result;
  v6 = *(result + 24);
  if (v6)
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(1, *(result + 16), a2, a4);
    v6 = *(v5 + 24);
  }

  if ((v6 & 2) != 0)
  {
    v7 = *(v5 + 8);
    if (!v7)
    {
      sub_2453DCF08();
      v7 = *(qword_27EE134E8 + 8);
    }

    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(2, v7, a2, a4);
  }

  return result;
}

uint64_t sub_2453E1A20(uint64_t a1, unsigned int a2)
{
  v3 = *(a1 + 24);
  if (v3)
  {
    if (*(a1 + 24))
    {
      v5 = *(a1 + 16);
      if (v5 >= 0x80)
      {
        v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5) + 1;
        if ((*(a1 + 24) & 2) == 0)
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
      if ((*(a1 + 24) & 2) == 0)
      {
        goto LABEL_16;
      }
    }

    v6 = *(a1 + 8);
    if (!v6)
    {
      sub_2453DCF08();
      v6 = *(qword_27EE134E8 + 8);
    }

    v7 = sub_2453E12F8(v6, a2);
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

LABEL_16:
  *(a1 + 20) = v4;
  return v4;
}

void sub_2453E1ADC(uint64_t a1, void *lpsrc)
{
  if (!__dynamic_cast(lpsrc, MEMORY[0x277D82C38], &unk_2858554C0, 0))
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  sub_2453E14A4(a1, lpsrc);
}

uint64_t sub_2453E1B98(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = &unk_285855200;
  *(a1 + 23) = 0;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0;
  sub_2453E1C18(a1, a2);
  return a1;
}

void sub_2453E1BF8(_Unwind_Exception *a1)
{
  sub_2453E53FC(v1 + 6);
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(v1);
  _Unwind_Resume(a1);
}

void sub_2453E1C18(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v26);
  }

  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 48));
  LODWORD(v4) = *(a2 + 56);
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
        wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v26);
      }

      v6 = *(*(a2 + 48) + 8 * v5);
      v7 = *(a1 + 60);
      v8 = *(a1 + 56);
      if (v8 >= v7)
      {
        if (v7 == *(a1 + 64))
        {
          wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 48));
          v7 = *(a1 + 60);
        }

        *(a1 + 60) = v7 + 1;
        operator new();
      }

      v9 = *(a1 + 48);
      *(a1 + 56) = v8 + 1;
      sub_2453E14A4(*(v9 + 8 * v8), v6);
      ++v5;
      v4 = *(a2 + 56);
    }

    while (v5 < v4);
  }

  v10 = *(a2 + 88);
  if (!v10)
  {
    goto LABEL_23;
  }

  if (v10)
  {
    v13 = *(a2 + 28);
    *(a1 + 88) |= 1u;
    *(a1 + 28) = v13;
    v10 = *(a2 + 88);
    if ((v10 & 2) == 0)
    {
LABEL_16:
      if ((v10 & 4) == 0)
      {
        goto LABEL_17;
      }

      goto LABEL_34;
    }
  }

  else if ((v10 & 2) == 0)
  {
    goto LABEL_16;
  }

  v14 = *(a2 + 8);
  *(a1 + 88) |= 2u;
  *(a1 + 8) = v14;
  v10 = *(a2 + 88);
  if ((v10 & 4) == 0)
  {
LABEL_17:
    if ((v10 & 8) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_35;
  }

LABEL_34:
  v15 = *(a2 + 12);
  *(a1 + 88) |= 4u;
  *(a1 + 12) = v15;
  v10 = *(a2 + 88);
  if ((v10 & 8) == 0)
  {
LABEL_18:
    if ((v10 & 0x10) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_36;
  }

LABEL_35:
  v16 = *(a2 + 16);
  *(a1 + 88) |= 8u;
  *(a1 + 16) = v16;
  v10 = *(a2 + 88);
  if ((v10 & 0x10) == 0)
  {
LABEL_19:
    if ((v10 & 0x20) == 0)
    {
      goto LABEL_20;
    }

LABEL_37:
    v18 = *(a2 + 24);
    *(a1 + 88) |= 0x20u;
    *(a1 + 24) = v18;
    v10 = *(a2 + 88);
    if ((v10 & 0x40) == 0)
    {
LABEL_21:
      if ((v10 & 0x80) == 0)
      {
        goto LABEL_23;
      }

      goto LABEL_22;
    }

    goto LABEL_38;
  }

LABEL_36:
  v17 = *(a2 + 20);
  *(a1 + 88) |= 0x10u;
  *(a1 + 20) = v17;
  v10 = *(a2 + 88);
  if ((v10 & 0x20) != 0)
  {
    goto LABEL_37;
  }

LABEL_20:
  if ((v10 & 0x40) == 0)
  {
    goto LABEL_21;
  }

LABEL_38:
  v19 = *(a2 + 29);
  *(a1 + 88) |= 0x40u;
  *(a1 + 29) = v19;
  v10 = *(a2 + 88);
  if ((v10 & 0x80) != 0)
  {
LABEL_22:
    v11 = *(a2 + 32);
    *(a1 + 88) |= 0x80u;
    *(a1 + 32) = v11;
    v10 = *(a2 + 88);
  }

LABEL_23:
  if ((v10 & 0xFF00) == 0)
  {
    return;
  }

  if ((v10 & 0x100) != 0)
  {
    v20 = *(a2 + 36);
    *(a1 + 88) |= 0x100u;
    *(a1 + 36) = v20;
    v10 = *(a2 + 88);
    if ((v10 & 0x200) == 0)
    {
LABEL_26:
      if ((v10 & 0x400) == 0)
      {
        goto LABEL_27;
      }

      goto LABEL_46;
    }
  }

  else if ((v10 & 0x200) == 0)
  {
    goto LABEL_26;
  }

  *(a1 + 88) |= 0x200u;
  v21 = *(a1 + 40);
  if (!v21)
  {
    operator new();
  }

  v22 = *(a2 + 40);
  if (!v22)
  {
    sub_2453DCF08();
    v22 = *(qword_27EE134F0 + 40);
  }

  sub_2453E0F58(v21, v22);
  v10 = *(a2 + 88);
  if ((v10 & 0x400) == 0)
  {
LABEL_27:
    if ((v10 & 0x1000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_47;
  }

LABEL_46:
  v23 = *(a2 + 72);
  *(a1 + 88) |= 0x400u;
  *(a1 + 72) = v23;
  v10 = *(a2 + 88);
  if ((v10 & 0x1000) == 0)
  {
LABEL_28:
    if ((v10 & 0x2000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_48;
  }

LABEL_47:
  v24 = *(a2 + 76);
  *(a1 + 88) |= 0x1000u;
  *(a1 + 76) = v24;
  v10 = *(a2 + 88);
  if ((v10 & 0x2000) == 0)
  {
LABEL_29:
    if ((v10 & 0x4000) == 0)
    {
      return;
    }

    goto LABEL_30;
  }

LABEL_48:
  v25 = *(a2 + 80);
  *(a1 + 88) |= 0x2000u;
  *(a1 + 80) = v25;
  if ((*(a2 + 88) & 0x4000) == 0)
  {
    return;
  }

LABEL_30:
  v12 = *(a2 + 30);
  *(a1 + 88) |= 0x4000u;
  *(a1 + 30) = v12;
}

void sub_2453E1FFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_2453E201C(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = &unk_285855200;
  sub_2453E2080(a1);
  sub_2453E53FC(a1 + 6);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);
}

void sub_2453E2080(uint64_t a1)
{
  sub_2453DCF08();
  if (qword_27EE134F0 != a1)
  {
    v2 = *(a1 + 40);
    if (v2)
    {
      v3 = *(*v2 + 8);

      v3();
    }
  }
}

void sub_2453E20FC(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  sub_2453E201C(a1);

  JUMPOUT(0x245D6A0D0);
}

uint64_t sub_2453E2198(uint64_t result)
{
  v1 = result;
  v2 = *(result + 88);
  if (v2)
  {
    *(result + 32) = 0;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 22) = 0;
  }

  if ((v2 & 0xFF00) != 0)
  {
    *(result + 36) = 0;
    if ((v2 & 0x200) != 0)
    {
      v3 = *(result + 40);
      if (v3)
      {
        if (*(v3 + 20))
        {
          *(v3 + 8) = 0;
        }

        *(v3 + 20) = 0;
      }
    }

    *(result + 72) = 0;
    *(result + 80) = 0;
    *(result + 30) = 0;
  }

  if (*(result + 56) >= 1)
  {
    v4 = 0;
    do
    {
      v5 = *(*(v1 + 48) + 8 * v4);
      result = (*(*v5 + 32))(v5);
      ++v4;
    }

    while (v4 < *(v1 + 56));
  }

  *(v1 + 56) = 0;
  *(v1 + 88) = 0;
  return result;
}

uint64_t sub_2453E2258(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormatLite *this, unsigned int a3)
{
LABEL_1:
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
          goto LABEL_38;
        }

        v72 = 0;
        v9 = *(this + 1);
        v8 = *(this + 2);
        if (v9 >= v8 || (v10 = *v9, (v10 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v72);
          if (!result)
          {
            return result;
          }

          v10 = v72;
          v11 = *(this + 1);
          v8 = *(this + 2);
        }

        else
        {
          v11 = v9 + 1;
          *(this + 1) = v11;
        }

        *(a1 + 28) = v10 != 0;
        *(a1 + 88) |= 1u;
        if (v11 < v8 && *v11 == 16)
        {
          v20 = v11 + 1;
          *(this + 1) = v20;
          goto LABEL_47;
        }

        continue;
      case 2u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_38;
        }

        v20 = *(this + 1);
        v8 = *(this + 2);
LABEL_47:
        if (v20 >= v8 || (v28 = *v20, v28 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 8));
          if (!result)
          {
            return result;
          }

          v29 = *(this + 1);
          v8 = *(this + 2);
        }

        else
        {
          *(a1 + 8) = v28;
          v29 = v20 + 1;
          *(this + 1) = v29;
        }

        *(a1 + 88) |= 2u;
        if (v29 >= v8 || *v29 != 24)
        {
          continue;
        }

        v17 = v29 + 1;
        *(this + 1) = v17;
LABEL_55:
        if (v17 >= v8 || (v30 = *v17, v30 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 12));
          if (!result)
          {
            return result;
          }

          v31 = *(this + 1);
          v8 = *(this + 2);
        }

        else
        {
          *(a1 + 12) = v30;
          v31 = v17 + 1;
          *(this + 1) = v31;
        }

        *(a1 + 88) |= 4u;
        if (v31 >= v8 || *v31 != 32)
        {
          continue;
        }

        v18 = v31 + 1;
        *(this + 1) = v18;
LABEL_63:
        if (v18 >= v8 || (v32 = *v18, v32 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 16));
          if (!result)
          {
            return result;
          }

          v33 = *(this + 1);
          v8 = *(this + 2);
        }

        else
        {
          *(a1 + 16) = v32;
          v33 = v18 + 1;
          *(this + 1) = v33;
        }

        *(a1 + 88) |= 8u;
        if (v33 >= v8 || *v33 != 40)
        {
          continue;
        }

        v14 = v33 + 1;
        *(this + 1) = v14;
LABEL_71:
        if (v14 >= v8 || (v34 = *v14, v34 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 20));
          if (!result)
          {
            return result;
          }

          v35 = *(this + 1);
          v8 = *(this + 2);
        }

        else
        {
          *(a1 + 20) = v34;
          v35 = v14 + 1;
          *(this + 1) = v35;
        }

        *(a1 + 88) |= 0x10u;
        if (v35 >= v8 || *v35 != 48)
        {
          continue;
        }

        v21 = v35 + 1;
        *(this + 1) = v21;
LABEL_79:
        if (v21 >= v8 || (v36 = *v21, v36 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 24));
          if (!result)
          {
            return result;
          }

          v37 = *(this + 1);
          v8 = *(this + 2);
        }

        else
        {
          *(a1 + 24) = v36;
          v37 = v21 + 1;
          *(this + 1) = v37;
        }

        *(a1 + 88) |= 0x20u;
        if (v37 >= v8 || *v37 != 56)
        {
          continue;
        }

        v23 = v37 + 1;
        *(this + 1) = v23;
LABEL_87:
        v72 = 0;
        if (v23 >= v8 || (v38 = *v23, (v38 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v72);
          if (!result)
          {
            return result;
          }

          v38 = v72;
          v39 = *(this + 1);
          v8 = *(this + 2);
        }

        else
        {
          v39 = v23 + 1;
          *(this + 1) = v39;
        }

        *(a1 + 29) = v38 != 0;
        *(a1 + 88) |= 0x40u;
        if (v39 >= v8 || *v39 != 64)
        {
          continue;
        }

        v19 = v39 + 1;
        *(this + 1) = v19;
LABEL_95:
        if (v19 >= v8 || (v40 = *v19, v40 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 32));
          if (!result)
          {
            return result;
          }

          v41 = *(this + 1);
          v8 = *(this + 2);
        }

        else
        {
          *(a1 + 32) = v40;
          v41 = v19 + 1;
          *(this + 1) = v41;
        }

        *(a1 + 88) |= 0x80u;
        if (v41 >= v8 || *v41 != 72)
        {
          continue;
        }

        v26 = v41 + 1;
        *(this + 1) = v26;
LABEL_103:
        if (v26 >= v8 || (v42 = *v26, v42 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 36));
          if (!result)
          {
            return result;
          }

          v43 = *(this + 1);
          v8 = *(this + 2);
        }

        else
        {
          *(a1 + 36) = v42;
          v43 = v26 + 1;
          *(this + 1) = v43;
        }

        v16 = *(a1 + 88) | 0x100;
        *(a1 + 88) = v16;
        if (v43 >= v8 || *v43 != 82)
        {
          continue;
        }

        *(this + 1) = v43 + 1;
LABEL_111:
        *(a1 + 88) = v16 | 0x200;
        v44 = *(a1 + 40);
        if (!v44)
        {
          operator new();
        }

        v72 = 0;
        v45 = *(this + 1);
        if (v45 >= *(this + 2) || *v45 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v72))
          {
            return 0;
          }
        }

        else
        {
          v72 = *v45;
          *(this + 1) = v45 + 1;
        }

        v46 = *(this + 14);
        v47 = *(this + 15);
        *(this + 14) = v46 + 1;
        if (v46 < v47)
        {
          wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this);
          if (sub_2453E1110(v44, this, v48))
          {
            if (*(this + 36) == 1)
            {
              wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this);
              v49 = *(this + 14);
              v50 = __OFSUB__(v49, 1);
              v51 = v49 - 1;
              if (v51 < 0 == v50)
              {
                *(this + 14) = v51;
              }

              v52 = *(this + 1);
              v24 = *(this + 2);
              if (v52 < v24 && *v52 == 88)
              {
                v25 = v52 + 1;
                *(this + 1) = v25;
LABEL_125:
                if (v25 >= v24 || (v53 = *v25, v53 < 0))
                {
                  result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 72));
                  if (!result)
                  {
                    return result;
                  }

                  v54 = *(this + 1);
                  v24 = *(this + 2);
                }

                else
                {
                  *(a1 + 72) = v53;
                  v54 = v25 + 1;
                  *(this + 1) = v54;
                }

                *(a1 + 88) |= 0x400u;
                if (v54 < v24 && *v54 == 98)
                {
                  do
                  {
                    *(this + 1) = v54 + 1;
LABEL_133:
                    v55 = *(a1 + 60);
                    v56 = *(a1 + 56);
                    if (v56 >= v55)
                    {
                      if (v55 == *(a1 + 64))
                      {
                        wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 48));
                        v55 = *(a1 + 60);
                      }

                      *(a1 + 60) = v55 + 1;
                      operator new();
                    }

                    v57 = *(a1 + 48);
                    *(a1 + 56) = v56 + 1;
                    v58 = *(v57 + 8 * v56);
                    v72 = 0;
                    v59 = *(this + 1);
                    if (v59 >= *(this + 2) || *v59 < 0)
                    {
                      if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v72))
                      {
                        return 0;
                      }
                    }

                    else
                    {
                      v72 = *v59;
                      *(this + 1) = v59 + 1;
                    }

                    v60 = *(this + 14);
                    v61 = *(this + 15);
                    *(this + 14) = v60 + 1;
                    if (v60 >= v61)
                    {
                      return 0;
                    }

                    wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this);
                    if (!sub_2453E175C(v58, this, v62) || *(this + 36) != 1)
                    {
                      return 0;
                    }

                    wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this);
                    v63 = *(this + 14);
                    v50 = __OFSUB__(v63, 1);
                    v64 = v63 - 1;
                    if (v64 < 0 == v50)
                    {
                      *(this + 14) = v64;
                    }

                    v54 = *(this + 1);
                    v12 = *(this + 2);
                    if (v54 >= v12)
                    {
                      goto LABEL_1;
                    }

                    v65 = *v54;
                  }

                  while (v65 == 98);
                  if (v65 == 104)
                  {
                    v15 = v54 + 1;
                    *(this + 1) = v15;
LABEL_151:
                    if (v15 >= v12 || (v66 = *v15, v66 < 0))
                    {
                      result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 76));
                      if (!result)
                      {
                        return result;
                      }

                      v67 = *(this + 1);
                      v12 = *(this + 2);
                    }

                    else
                    {
                      *(a1 + 76) = v66;
                      v67 = v15 + 1;
                      *(this + 1) = v67;
                    }

                    *(a1 + 88) |= 0x1000u;
                    if (v67 < v12 && *v67 == 112)
                    {
                      v22 = v67 + 1;
                      *(this + 1) = v22;
LABEL_159:
                      if (v22 >= v12 || (v68 = *v22, v68 < 0))
                      {
                        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 80));
                        if (!result)
                        {
                          return result;
                        }

                        v69 = *(this + 1);
                        v12 = *(this + 2);
                      }

                      else
                      {
                        *(a1 + 80) = v68;
                        v69 = v22 + 1;
                        *(this + 1) = v69;
                      }

                      *(a1 + 88) |= 0x2000u;
                      if (v69 < v12 && *v69 == 120)
                      {
                        v13 = v69 + 1;
                        *(this + 1) = v13;
LABEL_167:
                        v72 = 0;
                        if (v13 >= v12 || (v70 = *v13, (v70 & 0x80000000) != 0))
                        {
                          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v72);
                          if (!result)
                          {
                            return result;
                          }

                          v70 = v72;
                          v71 = *(this + 1);
                          v12 = *(this + 2);
                        }

                        else
                        {
                          v71 = v13 + 1;
                          *(this + 1) = v71;
                        }

                        *(a1 + 30) = v70 != 0;
                        *(a1 + 88) |= 0x4000u;
                        if (v71 == v12 && (*(this + 11) || *(this + 6) == *(this + 10)))
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
          }
        }

        return 0;
      case 3u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_38;
        }

        v17 = *(this + 1);
        v8 = *(this + 2);
        goto LABEL_55;
      case 4u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_38;
        }

        v18 = *(this + 1);
        v8 = *(this + 2);
        goto LABEL_63;
      case 5u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_38;
        }

        v14 = *(this + 1);
        v8 = *(this + 2);
        goto LABEL_71;
      case 6u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_38;
        }

        v21 = *(this + 1);
        v8 = *(this + 2);
        goto LABEL_79;
      case 7u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_38;
        }

        v23 = *(this + 1);
        v8 = *(this + 2);
        goto LABEL_87;
      case 8u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_38;
        }

        v19 = *(this + 1);
        v8 = *(this + 2);
        goto LABEL_95;
      case 9u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_38;
        }

        v26 = *(this + 1);
        v8 = *(this + 2);
        goto LABEL_103;
      case 0xAu:
        if (v7 != 2)
        {
          goto LABEL_38;
        }

        v16 = *(a1 + 88);
        goto LABEL_111;
      case 0xBu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_38;
        }

        v25 = *(this + 1);
        v24 = *(this + 2);
        goto LABEL_125;
      case 0xCu:
        if (v7 == 2)
        {
          goto LABEL_133;
        }

        goto LABEL_38;
      case 0xDu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_38;
        }

        v15 = *(this + 1);
        v12 = *(this + 2);
        goto LABEL_151;
      case 0xEu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_38;
        }

        v22 = *(this + 1);
        v12 = *(this + 2);
        goto LABEL_159;
      case 0xFu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_38;
        }

        v13 = *(this + 1);
        v12 = *(this + 2);
        goto LABEL_167;
      default:
LABEL_38:
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

uint64_t sub_2453E2B30(uint64_t result, const wireless_diagnostics::google::protobuf::MessageLite *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = result;
  v6 = *(result + 88);
  if (v6)
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(1, *(result + 28), a2, a4);
    v6 = *(v5 + 88);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_22;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(2, *(v5 + 8), a2, a4);
  v6 = *(v5 + 88);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_23;
  }

LABEL_22:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(3, *(v5 + 12), a2, a4);
  v6 = *(v5 + 88);
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_24;
  }

LABEL_23:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(4, *(v5 + 16), a2, a4);
  v6 = *(v5 + 88);
  if ((v6 & 0x10) == 0)
  {
LABEL_6:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_25;
  }

LABEL_24:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(5, *(v5 + 20), a2, a4);
  v6 = *(v5 + 88);
  if ((v6 & 0x20) == 0)
  {
LABEL_7:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_26;
  }

LABEL_25:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(6, *(v5 + 24), a2, a4);
  v6 = *(v5 + 88);
  if ((v6 & 0x40) == 0)
  {
LABEL_8:
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_27;
  }

LABEL_26:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(7, *(v5 + 29), a2, a4);
  v6 = *(v5 + 88);
  if ((v6 & 0x80) == 0)
  {
LABEL_9:
    if ((v6 & 0x100) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_28;
  }

LABEL_27:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(8, *(v5 + 32), a2, a4);
  v6 = *(v5 + 88);
  if ((v6 & 0x100) == 0)
  {
LABEL_10:
    if ((v6 & 0x200) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_29;
  }

LABEL_28:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(9, *(v5 + 36), a2, a4);
  v6 = *(v5 + 88);
  if ((v6 & 0x200) == 0)
  {
LABEL_11:
    if ((v6 & 0x400) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

LABEL_29:
  v9 = *(v5 + 40);
  if (!v9)
  {
    sub_2453DCF08();
    v9 = *(qword_27EE134F0 + 40);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0xA, v9, a2, a4);
  if ((*(v5 + 88) & 0x400) != 0)
  {
LABEL_12:
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xB, *(v5 + 72), a2, a4);
  }

LABEL_13:
  if (*(v5 + 56) >= 1)
  {
    v7 = 0;
    do
    {
      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0xC, *(*(v5 + 48) + 8 * v7++), a2, a4);
    }

    while (v7 < *(v5 + 56));
  }

  v8 = *(v5 + 88);
  if ((v8 & 0x1000) == 0)
  {
    if ((v8 & 0x2000) == 0)
    {
      goto LABEL_18;
    }

LABEL_34:
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xE, *(v5 + 80), a2, a4);
    if ((*(v5 + 88) & 0x4000) == 0)
    {
      return result;
    }

    goto LABEL_35;
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xD, *(v5 + 76), a2, a4);
  v8 = *(v5 + 88);
  if ((v8 & 0x2000) != 0)
  {
    goto LABEL_34;
  }

LABEL_18:
  if ((v8 & 0x4000) == 0)
  {
    return result;
  }

LABEL_35:
  v10 = *(v5 + 30);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(0xF, v10, a2, a4);
}

uint64_t sub_2453E2D44(uint64_t a1, unsigned int a2)
{
  v3 = *(a1 + 88);
  if (!v3)
  {
    v5 = 0;
    goto LABEL_34;
  }

  v4 = 2 * (v3 & 1);
  if ((v3 & 2) != 0)
  {
    v6 = *(a1 + 8);
    if (v6 >= 0x80)
    {
      v7 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v6) + 1;
      v3 = *(a1 + 88);
    }

    else
    {
      v7 = 2;
    }

    v4 += v7;
    if ((v3 & 4) == 0)
    {
LABEL_4:
      if ((v3 & 8) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_17;
    }
  }

  else if ((v3 & 4) == 0)
  {
    goto LABEL_4;
  }

  v8 = *(a1 + 12);
  if (v8 >= 0x80)
  {
    v9 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v8) + 1;
    v3 = *(a1 + 88);
  }

  else
  {
    v9 = 2;
  }

  v4 += v9;
  if ((v3 & 8) == 0)
  {
LABEL_5:
    if ((v3 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_21;
  }

LABEL_17:
  v10 = *(a1 + 16);
  if (v10 >= 0x80)
  {
    v11 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v10) + 1;
    v3 = *(a1 + 88);
  }

  else
  {
    v11 = 2;
  }

  v4 += v11;
  if ((v3 & 0x10) == 0)
  {
LABEL_6:
    if ((v3 & 0x20) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_25;
  }

LABEL_21:
  v12 = *(a1 + 20);
  if (v12 >= 0x80)
  {
    v13 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v12) + 1;
    v3 = *(a1 + 88);
  }

  else
  {
    v13 = 2;
  }

  v4 += v13;
  if ((v3 & 0x20) != 0)
  {
LABEL_25:
    v14 = *(a1 + 24);
    if (v14 >= 0x80)
    {
      v15 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v14) + 1;
      v3 = *(a1 + 88);
    }

    else
    {
      v15 = 2;
    }

    v4 += v15;
  }

LABEL_29:
  v5 = ((v3 >> 5) & 2) + v4;
  if ((v3 & 0x80) != 0)
  {
    v16 = *(a1 + 32);
    if (v16 >= 0x80)
    {
      v17 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v16) + 1;
      v3 = *(a1 + 88);
    }

    else
    {
      v17 = 2;
    }

    v5 += v17;
  }

LABEL_34:
  if ((v3 & 0xFF00) == 0)
  {
    goto LABEL_64;
  }

  if ((v3 & 0x100) != 0)
  {
    v18 = *(a1 + 36);
    if (v18 >= 0x80)
    {
      v19 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v18) + 1;
      v3 = *(a1 + 88);
    }

    else
    {
      v19 = 2;
    }

    v5 += v19;
    if ((v3 & 0x200) == 0)
    {
LABEL_37:
      if ((v3 & 0x400) == 0)
      {
        goto LABEL_38;
      }

      goto LABEL_51;
    }
  }

  else if ((v3 & 0x200) == 0)
  {
    goto LABEL_37;
  }

  v20 = *(a1 + 40);
  if (!v20)
  {
    sub_2453DCF08();
    v20 = *(qword_27EE134F0 + 40);
  }

  v21 = sub_2453E12F8(v20, a2);
  v22 = v21;
  if (v21 >= 0x80)
  {
    v23 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v21);
  }

  else
  {
    v23 = 1;
  }

  v5 += v22 + v23 + 1;
  v3 = *(a1 + 88);
  if ((v3 & 0x400) == 0)
  {
LABEL_38:
    if ((v3 & 0x1000) == 0)
    {
      goto LABEL_39;
    }

LABEL_55:
    v26 = *(a1 + 76);
    if (v26 >= 0x80)
    {
      v27 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v26) + 1;
      v3 = *(a1 + 88);
    }

    else
    {
      v27 = 2;
    }

    v5 += v27;
    if ((v3 & 0x2000) == 0)
    {
      goto LABEL_63;
    }

    goto LABEL_59;
  }

LABEL_51:
  v24 = *(a1 + 72);
  if (v24 >= 0x80)
  {
    v25 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v24) + 1;
    v3 = *(a1 + 88);
  }

  else
  {
    v25 = 2;
  }

  v5 += v25;
  if ((v3 & 0x1000) != 0)
  {
    goto LABEL_55;
  }

LABEL_39:
  if ((v3 & 0x2000) != 0)
  {
LABEL_59:
    v28 = *(a1 + 80);
    if (v28 >= 0x80)
    {
      v29 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v28) + 1;
      v3 = *(a1 + 88);
    }

    else
    {
      v29 = 2;
    }

    v5 += v29;
  }

LABEL_63:
  v5 += (v3 >> 13) & 2;
LABEL_64:
  v30 = *(a1 + 56);
  v31 = (v30 + v5);
  if (v30 >= 1)
  {
    v32 = 0;
    do
    {
      v33 = sub_2453E1A20(*(*(a1 + 48) + 8 * v32), a2);
      v34 = v33;
      if (v33 >= 0x80)
      {
        v35 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v33);
      }

      else
      {
        v35 = 1;
      }

      v31 = (v34 + v31 + v35);
      ++v32;
    }

    while (v32 < *(a1 + 56));
  }

  *(a1 + 84) = v31;
  return v31;
}

void sub_2453E3004(uint64_t a1, void *lpsrc)
{
  if (!__dynamic_cast(lpsrc, MEMORY[0x277D82C38], &unk_2858554D8, 0))
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  sub_2453E1C18(a1, lpsrc);
}

void *sub_2453E30C0(void *a1, uint64_t a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_285855278;
  sub_2453E311C(a1, a2);
  return a1;
}

void sub_2453E311C(_DWORD *a1, uint64_t a2)
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

void sub_2453E31C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_2453E31E0(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = &unk_285855278;
  sub_2453DCF08();

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);
}

void sub_2453E323C(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  sub_2453E31E0(a1);

  JUMPOUT(0x245D6A0D0);
}

uint64_t sub_2453E32C0(uint64_t result)
{
  if (*(result + 20))
  {
    *(result + 8) = 0;
  }

  *(result + 20) = 0;
  return result;
}

uint64_t sub_2453E32D4(unsigned int *a1, wireless_diagnostics::google::protobuf::internal::WireFormatLite *this, unsigned int a3)
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

uint64_t sub_2453E3450(uint64_t result, uint64_t a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
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

uint64_t sub_2453E34BC(uint64_t a1, unsigned int a2)
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

void sub_2453E354C(_DWORD *a1, void *lpsrc)
{
  if (!__dynamic_cast(lpsrc, MEMORY[0x277D82C38], &unk_2858554F0, 0))
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  sub_2453E311C(a1, lpsrc);
}

uint64_t sub_2453E3608(uint64_t a1, uint64_t a2)
{
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  *a1 = &unk_2858552F0;
  *(a1 + 8) = 0;
  *(a1 + 48) = 0u;
  *(a1 + 80) = 0;
  *(a1 + 16) = 1;
  sub_2453E36B4(a1, a2);
  return a1;
}

void sub_2453E3688(_Unwind_Exception *a1)
{
  sub_2453E53FC(v1 + 7);
  sub_2453E53FC(v2);
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(v1);
  _Unwind_Resume(a1);
}

void sub_2453E36B4(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v26);
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
        wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v26);
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
      sub_2453DF82C(*(v9 + 8 * v8), v6);
      ++v5;
      v4 = *(a2 + 32);
    }

    while (v5 < v4);
  }

  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 56));
  LODWORD(v10) = *(a2 + 64);
  if (v10 >= 1)
  {
    v11 = 0;
    do
    {
      if (v11 >= v10)
      {
        wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
        wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
        wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
        wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v26);
      }

      v12 = *(*(a2 + 56) + 8 * v11);
      v13 = *(a1 + 68);
      v14 = *(a1 + 64);
      if (v14 >= v13)
      {
        if (v13 == *(a1 + 72))
        {
          wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 56));
          v13 = *(a1 + 68);
        }

        *(a1 + 68) = v13 + 1;
        operator new();
      }

      v15 = *(a1 + 56);
      *(a1 + 64) = v14 + 1;
      sub_2453E1C18(*(v15 + 8 * v14), v12);
      ++v11;
      v10 = *(a2 + 64);
    }

    while (v11 < v10);
  }

  LOBYTE(v16) = *(a2 + 84);
  if (!v16)
  {
    return;
  }

  if (*(a2 + 84))
  {
    v17 = *(a2 + 16);
    if ((v17 - 1) >= 2)
    {
      __assert_rtn("set_meas_result", "CLPGnssEmergencyLppTypes.pb.h", 3237, "::CoreGem::proto::gnss::Emergency::MeasResult_IsValid(value)");
    }

    *(a1 + 84) |= 1u;
    *(a1 + 16) = v17;
    v16 = *(a2 + 84);
  }

  if ((v16 & 2) != 0)
  {
    v19 = *(a2 + 20);
    *(a1 + 84) |= 2u;
    *(a1 + 20) = v19;
    v16 = *(a2 + 84);
    if ((v16 & 4) == 0)
    {
LABEL_29:
      if ((v16 & 8) == 0)
      {
        goto LABEL_30;
      }

      goto LABEL_41;
    }
  }

  else if ((v16 & 4) == 0)
  {
    goto LABEL_29;
  }

  *(a1 + 84) |= 4u;
  v20 = *(a1 + 8);
  if (!v20)
  {
    operator new();
  }

  v21 = *(a2 + 8);
  if (!v21)
  {
    sub_2453DCF08();
    v21 = *(qword_27EE134F8 + 8);
  }

  sub_2453E0A10(v20, v21);
  v16 = *(a2 + 84);
  if ((v16 & 8) == 0)
  {
LABEL_30:
    if ((v16 & 0x20) == 0)
    {
      goto LABEL_31;
    }

LABEL_42:
    v23 = *(a2 + 22);
    *(a1 + 84) |= 0x20u;
    *(a1 + 22) = v23;
    v16 = *(a2 + 84);
    if ((v16 & 0x40) == 0)
    {
LABEL_32:
      if ((v16 & 0x80) == 0)
      {
        return;
      }

      goto LABEL_33;
    }

    goto LABEL_43;
  }

LABEL_41:
  v22 = *(a2 + 21);
  *(a1 + 84) |= 8u;
  *(a1 + 21) = v22;
  v16 = *(a2 + 84);
  if ((v16 & 0x20) != 0)
  {
    goto LABEL_42;
  }

LABEL_31:
  if ((v16 & 0x40) == 0)
  {
    goto LABEL_32;
  }

LABEL_43:
  *(a1 + 84) |= 0x40u;
  v24 = *(a1 + 48);
  if (!v24)
  {
    operator new();
  }

  v25 = *(a2 + 48);
  if (!v25)
  {
    sub_2453DCF08();
    v25 = *(qword_27EE134F8 + 48);
  }

  sub_2453E311C(v24, v25);
  if ((*(a2 + 84) & 0x80) != 0)
  {
LABEL_33:
    v18 = *(a2 + 23);
    *(a1 + 84) |= 0x80u;
    *(a1 + 23) = v18;
  }
}

void sub_2453E3B80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_2453E3BA8(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = &unk_2858552F0;
  sub_2453E3C18(a1);
  sub_2453E53FC(a1 + 7);
  sub_2453E53FC(a1 + 3);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);
}

void sub_2453E3C18(uint64_t a1)
{
  sub_2453DCF08();
  if (qword_27EE134F8 != a1)
  {
    v2 = *(a1 + 8);
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }

    v3 = *(a1 + 48);
    if (v3)
    {
      v4 = *(*v3 + 8);

      v4();
    }
  }
}

void sub_2453E3CC0(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  sub_2453E3BA8(a1);

  JUMPOUT(0x245D6A0D0);
}

uint64_t sub_2453E3D6C(uint64_t a1)
{
  LOBYTE(v2) = *(a1 + 84);
  if (v2)
  {
    *(a1 + 16) = 1;
    *(a1 + 20) = 0;
    if ((v2 & 4) != 0)
    {
      v3 = *(a1 + 8);
      if (v3)
      {
        if (*(v3 + 20))
        {
          *(v3 + 8) = 0;
        }

        *(v3 + 20) = 0;
        v2 = *(a1 + 84);
      }
    }

    *(a1 + 21) = 0;
    if ((v2 & 0x40) != 0)
    {
      v4 = *(a1 + 48);
      if (v4)
      {
        if (*(v4 + 20))
        {
          *(v4 + 8) = 0;
        }

        *(v4 + 20) = 0;
      }
    }

    *(a1 + 23) = 0;
  }

  sub_2453DC6D0(a1 + 24);
  result = sub_2453DC6D0(a1 + 56);
  *(a1 + 84) = 0;
  return result;
}

uint64_t sub_2453E3DF8(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormatLite *this, unsigned int a3)
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
              if (v8 != 2)
              {
                goto LABEL_37;
              }

              v17 = *(a1 + 84);
              goto LABEL_56;
            }

            if (v7 != 4 || (TagFallback & 7) != 0)
            {
              goto LABEL_37;
            }

            v12 = *(this + 1);
            v11 = *(this + 2);
LABEL_70:
            v70 = 0;
            if (v12 >= v11 || (v34 = *v12, (v34 & 0x80000000) != 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v70);
              if (!result)
              {
                return result;
              }

              v34 = v70;
              v35 = *(this + 1);
              v11 = *(this + 2);
            }

            else
            {
              v35 = v12 + 1;
              *(this + 1) = v35;
            }

            *(a1 + 21) = v34 != 0;
            *(a1 + 84) |= 8u;
            if (v35 < v11 && *v35 == 42)
            {
              while (1)
              {
                *(this + 1) = v35 + 1;
LABEL_78:
                v36 = *(a1 + 36);
                v37 = *(a1 + 32);
                if (v37 >= v36)
                {
                  if (v36 == *(a1 + 40))
                  {
                    wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 24));
                    v36 = *(a1 + 36);
                  }

                  *(a1 + 36) = v36 + 1;
                  operator new();
                }

                v38 = *(a1 + 24);
                *(a1 + 32) = v37 + 1;
                v39 = *(v38 + 8 * v37);
                v70 = 0;
                v40 = *(this + 1);
                if (v40 >= *(this + 2) || *v40 < 0)
                {
                  if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v70))
                  {
                    return 0;
                  }
                }

                else
                {
                  v70 = *v40;
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
                if (!sub_2453DFC1C(v39, this, v43) || *(this + 36) != 1)
                {
                  return 0;
                }

                wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this);
                v44 = *(this + 14);
                v31 = __OFSUB__(v44, 1);
                v45 = v44 - 1;
                if (v45 < 0 == v31)
                {
                  *(this + 14) = v45;
                }

                v35 = *(this + 1);
                v13 = *(this + 2);
                if (v35 >= v13)
                {
                  break;
                }

                v46 = *v35;
                if (v46 != 42)
                {
                  if (v46 != 48)
                  {
                    goto LABEL_1;
                  }

                  v14 = v35 + 1;
                  *(this + 1) = v14;
                  goto LABEL_96;
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

              v10 = *(this + 1);
              v9 = *(this + 2);
              goto LABEL_48;
            }

            if ((TagFallback & 7) != 0)
            {
              goto LABEL_37;
            }

            v70 = 0;
            v15 = *(this + 1);
            if (v15 >= *(this + 2) || (v16 = *v15, (v16 & 0x80000000) != 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v70);
              if (!result)
              {
                return result;
              }

              v16 = v70;
            }

            else
            {
              *(this + 1) = v15 + 1;
            }

            if (v16 - 1 <= 1)
            {
              *(a1 + 84) |= 1u;
              *(a1 + 16) = v16;
            }

            v22 = *(this + 1);
            v9 = *(this + 2);
            if (v22 < v9 && *v22 == 16)
            {
              v10 = v22 + 1;
              *(this + 1) = v10;
LABEL_48:
              v70 = 0;
              if (v10 >= v9 || (v23 = *v10, (v23 & 0x80000000) != 0))
              {
                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v70);
                if (!result)
                {
                  return result;
                }

                v23 = v70;
                v24 = *(this + 1);
                v9 = *(this + 2);
              }

              else
              {
                v24 = v10 + 1;
                *(this + 1) = v24;
              }

              *(a1 + 20) = v23 != 0;
              v17 = *(a1 + 84) | 2;
              *(a1 + 84) = v17;
              if (v24 < v9 && *v24 == 26)
              {
                *(this + 1) = v24 + 1;
LABEL_56:
                *(a1 + 84) = v17 | 4;
                v25 = *(a1 + 8);
                if (!v25)
                {
                  operator new();
                }

                v70 = 0;
                v26 = *(this + 1);
                if (v26 >= *(this + 2) || *v26 < 0)
                {
                  if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v70))
                  {
                    return 0;
                  }
                }

                else
                {
                  v70 = *v26;
                  *(this + 1) = v26 + 1;
                }

                v27 = *(this + 14);
                v28 = *(this + 15);
                *(this + 14) = v27 + 1;
                if (v27 >= v28)
                {
                  return 0;
                }

                wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this);
                if (!sub_2453E0BC8(v25, this, v29) || *(this + 36) != 1)
                {
                  return 0;
                }

                wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this);
                v30 = *(this + 14);
                v31 = __OFSUB__(v30, 1);
                v32 = v30 - 1;
                if (v32 < 0 == v31)
                {
                  *(this + 14) = v32;
                }

                v33 = *(this + 1);
                v11 = *(this + 2);
                if (v33 < v11 && *v33 == 32)
                {
                  v12 = v33 + 1;
                  *(this + 1) = v12;
                  goto LABEL_70;
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
          if (v8 != 2)
          {
            goto LABEL_37;
          }

          v18 = *(a1 + 84);
          goto LABEL_104;
        }

        if (v7 == 8)
        {
          if ((TagFallback & 7) != 0)
          {
            goto LABEL_37;
          }

          v20 = *(this + 1);
          v19 = *(this + 2);
LABEL_118:
          v70 = 0;
          if (v20 >= v19 || (v57 = *v20, (v57 & 0x80000000) != 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v70);
            if (!result)
            {
              return result;
            }

            v57 = v70;
            v58 = *(this + 1);
            v19 = *(this + 2);
          }

          else
          {
            v58 = v20 + 1;
            *(this + 1) = v58;
          }

          *(a1 + 23) = v57 != 0;
          *(a1 + 84) |= 0x80u;
          if (v58 < v19 && *v58 == 74)
          {
            goto LABEL_125;
          }
        }

        else
        {
          if (v7 != 9 || v8 != 2)
          {
            goto LABEL_37;
          }

          while (1)
          {
            v59 = *(a1 + 68);
            v60 = *(a1 + 64);
            if (v60 >= v59)
            {
              if (v59 == *(a1 + 72))
              {
                wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 56));
                v59 = *(a1 + 68);
              }

              *(a1 + 68) = v59 + 1;
              operator new();
            }

            v61 = *(a1 + 56);
            *(a1 + 64) = v60 + 1;
            v62 = *(v61 + 8 * v60);
            v70 = 0;
            v63 = *(this + 1);
            if (v63 >= *(this + 2) || *v63 < 0)
            {
              if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v70))
              {
                return 0;
              }
            }

            else
            {
              v70 = *v63;
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
            if (!sub_2453E2258(v62, this, v66) || *(this + 36) != 1)
            {
              return 0;
            }

            wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this);
            v67 = *(this + 14);
            v31 = __OFSUB__(v67, 1);
            v68 = v67 - 1;
            if (v68 < 0 == v31)
            {
              *(this + 14) = v68;
            }

            v58 = *(this + 1);
            v69 = *(this + 2);
            if (v58 >= v69 || *v58 != 74)
            {
              break;
            }

LABEL_125:
            *(this + 1) = v58 + 1;
          }

          if (v58 == v69 && (*(this + 11) || *(this + 6) == *(this + 10)))
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

        goto LABEL_78;
      }

      if (v7 != 6 || (TagFallback & 7) != 0)
      {
        break;
      }

      v14 = *(this + 1);
      v13 = *(this + 2);
LABEL_96:
      v70 = 0;
      if (v14 >= v13 || (v47 = *v14, (v47 & 0x80000000) != 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v70);
        if (!result)
        {
          return result;
        }

        v47 = v70;
        v48 = *(this + 1);
        v13 = *(this + 2);
      }

      else
      {
        v48 = v14 + 1;
        *(this + 1) = v48;
      }

      *(a1 + 22) = v47 != 0;
      v18 = *(a1 + 84) | 0x20;
      *(a1 + 84) = v18;
      if (v48 < v13 && *v48 == 58)
      {
        *(this + 1) = v48 + 1;
LABEL_104:
        *(a1 + 84) = v18 | 0x40;
        v49 = *(a1 + 48);
        if (!v49)
        {
          operator new();
        }

        v70 = 0;
        v50 = *(this + 1);
        if (v50 >= *(this + 2) || *v50 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v70))
          {
            return 0;
          }
        }

        else
        {
          v70 = *v50;
          *(this + 1) = v50 + 1;
        }

        v51 = *(this + 14);
        v52 = *(this + 15);
        *(this + 14) = v51 + 1;
        if (v51 >= v52)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this);
        if (!sub_2453E32D4(v49, this, v53) || *(this + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this);
        v54 = *(this + 14);
        v31 = __OFSUB__(v54, 1);
        v55 = v54 - 1;
        if (v55 < 0 == v31)
        {
          *(this + 14) = v55;
        }

        v56 = *(this + 1);
        v19 = *(this + 2);
        if (v56 < v19 && *v56 == 64)
        {
          v20 = v56 + 1;
          *(this + 1) = v20;
          goto LABEL_118;
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

uint64_t sub_2453E468C(uint64_t result, const wireless_diagnostics::google::protobuf::MessageLite *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = result;
  v6 = *(result + 84);
  if (v6)
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(1, *(result + 16), a2, a4);
    v6 = *(v5 + 84);
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

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(2, *(v5 + 20), a2, a4);
  v6 = *(v5 + 84);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_19:
  v10 = *(v5 + 8);
  if (!v10)
  {
    sub_2453DCF08();
    v10 = *(qword_27EE134F8 + 8);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(3, v10, a2, a4);
  if ((*(v5 + 84) & 8) != 0)
  {
LABEL_5:
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(4, *(v5 + 21), a2, a4);
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

  v8 = *(v5 + 84);
  if ((v8 & 0x20) != 0)
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(6, *(v5 + 22), a2, a4);
    v8 = *(v5 + 84);
    if ((v8 & 0x40) == 0)
    {
LABEL_11:
      if ((v8 & 0x80) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_12;
    }
  }

  else if ((v8 & 0x40) == 0)
  {
    goto LABEL_11;
  }

  v11 = *(v5 + 48);
  if (!v11)
  {
    sub_2453DCF08();
    v11 = *(qword_27EE134F8 + 48);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(7, v11, a2, a4);
  if ((*(v5 + 84) & 0x80) != 0)
  {
LABEL_12:
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(8, *(v5 + 23), a2, a4);
  }

LABEL_13:
  if (*(v5 + 64) >= 1)
  {
    v9 = 0;
    do
    {
      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(9, *(*(v5 + 56) + 8 * v9++), a2, a4);
    }

    while (v9 < *(v5 + 64));
  }

  return result;
}

uint64_t sub_2453E480C(uint64_t a1, unsigned int a2)
{
  v3 = *(a1 + 84);
  if (v3)
  {
    if (v3)
    {
      v6 = *(a1 + 16);
      if ((v6 & 0x80000000) != 0)
      {
        v4 = 11;
      }

      else if (v6 >= 0x80)
      {
        v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v6) + 1;
        v3 = *(a1 + 84);
      }

      else
      {
        v4 = 2;
      }
    }

    else
    {
      v4 = 0;
    }

    v7 = (v3 & 2) + v4;
    if ((v3 & 4) != 0)
    {
      v8 = *(a1 + 8);
      if (!v8)
      {
        sub_2453DCF08();
        v8 = *(qword_27EE134F8 + 8);
      }

      v9 = sub_2453E0DB0(v8, a2);
      v10 = v9;
      if (v9 >= 0x80)
      {
        v11 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v9);
      }

      else
      {
        v11 = 1;
      }

      v7 += v10 + v11 + 1;
      v3 = *(a1 + 84);
    }

    v12 = ((v3 >> 2) & 2) + v7 + ((v3 >> 4) & 2);
    if ((v3 & 0x40) != 0)
    {
      v13 = *(a1 + 48);
      if (!v13)
      {
        sub_2453DCF08();
        v13 = *(qword_27EE134F8 + 48);
      }

      v14 = sub_2453E34BC(v13, a2);
      v15 = v14;
      if (v14 >= 0x80)
      {
        v16 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v14);
      }

      else
      {
        v16 = 1;
      }

      v12 += v15 + v16 + 1;
      v3 = *(a1 + 84);
    }

    v5 = ((v3 >> 6) & 2) + v12;
  }

  else
  {
    v5 = 0;
  }

  v17 = *(a1 + 32);
  v18 = v17 + v5;
  if (v17 >= 1)
  {
    v19 = 0;
    do
    {
      v20 = sub_2453E0650(*(*(a1 + 24) + 8 * v19), a2);
      v21 = v20;
      if (v20 >= 0x80)
      {
        v22 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v20);
      }

      else
      {
        v22 = 1;
      }

      v18 += v21 + v22;
      ++v19;
    }

    while (v19 < *(a1 + 32));
  }

  v23 = *(a1 + 64);
  v24 = (v23 + v18);
  if (v23 >= 1)
  {
    v25 = 0;
    do
    {
      v26 = sub_2453E2D44(*(*(a1 + 56) + 8 * v25), a2);
      v27 = v26;
      if (v26 >= 0x80)
      {
        v28 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v26);
      }

      else
      {
        v28 = 1;
      }

      v24 = (v27 + v24 + v28);
      ++v25;
    }

    while (v25 < *(a1 + 64));
  }

  *(a1 + 80) = v24;
  return v24;
}

void sub_2453E49F4(uint64_t a1, void *lpsrc)
{
  if (!__dynamic_cast(lpsrc, MEMORY[0x277D82C38], &unk_285855508, 0))
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  sub_2453E36B4(a1, lpsrc);
}

void sub_2453E4AB0(_DWORD *a1, uint64_t a2)
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
      a1[8] |= 1u;
      a1[2] = v5;
      v4 = *(a2 + 32);
    }

    if ((v4 & 2) != 0)
    {
      v6 = *(a2 + 12);
      if ((v6 - 1) >= 4)
      {
        __assert_rtn("set_pos_mode", "CLPGnssEmergencyLppTypes.pb.h", 3508, "::CoreGem::proto::gnss::Emergency::PosMode_IsValid(value)");
      }

      a1[8] |= 2u;
      a1[3] = v6;
      v4 = *(a2 + 32);
    }

    if ((v4 & 4) != 0)
    {
      v7 = *(a2 + 16);
      if ((v7 - 1) >= 4)
      {
        __assert_rtn("set_pos_method", "CLPGnssEmergencyLppTypes.pb.h", 3531, "::CoreGem::proto::gnss::Emergency::PosMethod_IsValid(value)");
      }

      a1[8] |= 4u;
      a1[4] = v7;
      v4 = *(a2 + 32);
    }

    if ((v4 & 8) != 0)
    {
      v8 = *(a2 + 20);
      if ((v8 - 1) >= 4)
      {
        __assert_rtn("set_discarded_msg_type", "CLPGnssEmergencyLppTypes.pb.h", 3554, "::CoreGem::proto::gnss::Emergency::DiscardedMsgType_IsValid(value)");
      }

      a1[8] |= 8u;
      a1[5] = v8;
      v4 = *(a2 + 32);
    }

    if ((v4 & 0x10) != 0)
    {
      v9 = *(a2 + 24);
      if ((v9 - 1) >= 3)
      {
        __assert_rtn("set_discard_reason", "CLPGnssEmergencyLppTypes.pb.h", 3577, "::CoreGem::proto::gnss::Emergency::DiscardReason_IsValid(value)");
      }

      a1[8] |= 0x10u;
      a1[6] = v9;
    }
  }
}

void sub_2453E4C60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_2453E4C78(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = &unk_285855368;
  sub_2453DCF08();

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);
}

void sub_2453E4CD4(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  sub_2453E4C78(a1);

  JUMPOUT(0x245D6A0D0);
}

uint64_t sub_2453E4D70(uint64_t result)
{
  if (*(result + 32))
  {
    *(result + 8) = xmmword_245486E40;
    *(result + 24) = 1;
  }

  *(result + 32) = 0;
  return result;
}

uint64_t sub_2453E4D94(unsigned int *a1, wireless_diagnostics::google::protobuf::internal::WireFormatLite *this, unsigned int a3)
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

          v11 = *(this + 1);
          v10 = *(this + 2);
          goto LABEL_32;
        }

        if ((TagFallback & 7) != 0)
        {
          goto LABEL_21;
        }

        v16 = *(this + 1);
        v10 = *(this + 2);
        if (v16 >= v10 || (v17 = *v16, (v17 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, a1 + 2);
          if (!result)
          {
            return result;
          }

          v18 = *(this + 1);
          v10 = *(this + 2);
        }

        else
        {
          a1[2] = v17;
          v18 = v16 + 1;
          *(this + 1) = v18;
        }

        a1[8] |= 1u;
        if (v18 < v10 && *v18 == 16)
        {
          v11 = v18 + 1;
          *(this + 1) = v11;
LABEL_32:
          v27 = 0;
          if (v11 >= v10 || (v19 = *v11, (v19 & 0x80000000) != 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v27);
            if (!result)
            {
              return result;
            }

            v19 = v27;
          }

          else
          {
            *(this + 1) = v11 + 1;
          }

          if (v19 - 1 <= 3)
          {
            a1[8] |= 2u;
            a1[3] = v19;
          }

          v20 = *(this + 1);
          v12 = *(this + 2);
          if (v20 < v12 && *v20 == 24)
          {
            v13 = v20 + 1;
            *(this + 1) = v13;
LABEL_42:
            v27 = 0;
            if (v13 >= v12 || (v21 = *v13, (v21 & 0x80000000) != 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v27);
              if (!result)
              {
                return result;
              }

              v21 = v27;
            }

            else
            {
              *(this + 1) = v13 + 1;
            }

            if (v21 - 1 <= 3)
            {
              a1[8] |= 4u;
              a1[4] = v21;
            }

            v22 = *(this + 1);
            v14 = *(this + 2);
            if (v22 < v14 && *v22 == 32)
            {
              v15 = v22 + 1;
              *(this + 1) = v15;
              goto LABEL_52;
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

        v13 = *(this + 1);
        v12 = *(this + 2);
        goto LABEL_42;
      }

      if (v7 != 4)
      {
        break;
      }

      if ((TagFallback & 7) != 0)
      {
        goto LABEL_21;
      }

      v15 = *(this + 1);
      v14 = *(this + 2);
LABEL_52:
      v27 = 0;
      if (v15 >= v14 || (v23 = *v15, (v23 & 0x80000000) != 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v27);
        if (!result)
        {
          return result;
        }

        v23 = v27;
      }

      else
      {
        *(this + 1) = v15 + 1;
      }

      if (v23 - 1 <= 3)
      {
        a1[8] |= 8u;
        a1[5] = v23;
      }

      v24 = *(this + 1);
      v8 = *(this + 2);
      if (v24 < v8 && *v24 == 40)
      {
        v9 = v24 + 1;
        *(this + 1) = v9;
LABEL_62:
        v27 = 0;
        if (v9 >= v8 || (v25 = *v9, (v25 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v27);
          if (!result)
          {
            return result;
          }

          v25 = v27;
        }

        else
        {
          *(this + 1) = v9 + 1;
        }

        if (v25 - 1 <= 2)
        {
          a1[8] |= 0x10u;
          a1[6] = v25;
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

    if (v7 == 5 && (TagFallback & 7) == 0)
    {
      v9 = *(this + 1);
      v8 = *(this + 2);
      goto LABEL_62;
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

unsigned int *sub_2453E50C0(unsigned int *result, uint64_t a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = result;
  v6 = result[8];
  if (v6)
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(1, result[2], a2, a4);
    v6 = v5[8];
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

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(2, v5[3], a2, a4);
  v6 = v5[8];
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

LABEL_10:
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(4, v5[5], a2, a4);
    if ((v5[8] & 0x10) == 0)
    {
      return result;
    }

    goto LABEL_11;
  }

LABEL_9:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(3, v5[4], a2, a4);
  v6 = v5[8];
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
  v7 = v5[6];

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(5, v7, a2, a4);
}

uint64_t sub_2453E5184(uint64_t a1, unsigned int a2)
{
  LOBYTE(v3) = *(a1 + 32);
  if (!v3)
  {
    v4 = 0;
    goto LABEL_38;
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
    if ((*(a1 + 32) & 2) == 0)
    {
      goto LABEL_16;
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
    v3 = *(a1 + 32);
  }

  else
  {
    v7 = 2;
  }

  v4 = (v7 + v4);
LABEL_16:
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
      v3 = *(a1 + 32);
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
        goto LABEL_38;
      }

      goto LABEL_32;
    }
  }

  else if ((v3 & 8) == 0)
  {
    goto LABEL_18;
  }

  v10 = *(a1 + 20);
  if ((v10 & 0x80000000) != 0)
  {
    v11 = 11;
  }

  else if (v10 >= 0x80)
  {
    v11 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v10) + 1;
    v3 = *(a1 + 32);
  }

  else
  {
    v11 = 2;
  }

  v4 = (v11 + v4);
  if ((v3 & 0x10) != 0)
  {
LABEL_32:
    v12 = *(a1 + 24);
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

LABEL_38:
  *(a1 + 28) = v4;
  return v4;
}

void sub_2453E52C8(_DWORD *a1, void *lpsrc)
{
  if (!__dynamic_cast(lpsrc, MEMORY[0x277D82C38], &unk_285855520, 0))
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  sub_2453E4AB0(a1, lpsrc);
}

uint64_t sub_2453E53FC(uint64_t *a1)
{
  v2 = *(a1 + 3);
  if (v2 >= 1)
  {
    for (i = 0; i < v2; ++i)
    {
      v4 = *(*a1 + 8 * i);
      if (v4)
      {
        (*(*v4 + 8))(v4);
        v2 = *(a1 + 3);
      }
    }
  }

  result = *a1;
  if (*a1)
  {

    JUMPOUT(0x245D6A0A0);
  }

  return result;
}

uint64_t sub_2453E54A0()
{
  if (qword_27EE13508)
  {
    (*(*qword_27EE13508 + 8))(qword_27EE13508);
  }

  if (qword_2813CE9D0)
  {
    (*(*qword_2813CE9D0 + 8))(qword_2813CE9D0);
  }

  result = qword_2813CE9D8;
  if (qword_2813CE9D8)
  {
    v1 = *(*qword_2813CE9D8 + 8);

    return v1();
  }

  return result;
}

void sub_2453E5558(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  wireless_diagnostics::google::protobuf::internal::VerifyVersion(0x1E9808, 2005000, "/Library/Caches/com.apple.xbs/Sources/CoreGEM/Sources/Protobuf/Generated/CLPGemProtocolGpsd.pb.cc", a4);
  sub_24539DF20();
  sub_2453EB7EC();
  sub_2453DCF08();
  operator new();
}

void sub_2453E570C()
{
  v0 = qword_27EE14520;
  __dmb(0xBu);
  if (v0 != 2)
  {
    v1[0] = MEMORY[0x277D82C40] + 16;
    v1[1] = sub_2453E5558;
    v2 = 0;
    wireless_diagnostics::google::protobuf::GoogleOnceInitImpl();
    wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(v1);
  }
}

void sub_2453E5790(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

void sub_2453E57BC(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = &unk_285855548;
  sub_2453E5814(a1);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);
}

void sub_2453E5814(void *a1)
{
  sub_2453E570C();
  if (qword_27EE13508 != a1)
  {
    v2 = a1[3];
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }

    v3 = a1[4];
    if (v3)
    {
      (*(*v3 + 8))(v3);
    }

    v4 = a1[5];
    if (v4)
    {
      (*(*v4 + 8))(v4);
    }

    v5 = a1[6];
    if (v5)
    {
      (*(*v5 + 8))(v5);
    }

    v6 = a1[7];
    if (v6)
    {
      v7 = *(*v6 + 8);

      v7();
    }
  }
}

void sub_2453E5940(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  sub_2453E57BC(a1);

  JUMPOUT(0x245D6A0D0);
}

uint64_t sub_2453E59D4(uint64_t result)
{
  v1 = result;
  LOBYTE(v2) = *(result + 68);
  if (v2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    if ((v2 & 8) != 0)
    {
      v3 = *(result + 24);
      if (v3)
      {
        if (*(v3 + 32))
        {
          *(v3 + 24) = 0;
        }

        *(v3 + 16) = 0;
        *(v3 + 32) = 0;
        v2 = *(result + 68);
      }
    }

    if ((v2 & 0x10) != 0)
    {
      v4 = *(result + 32);
      if (v4)
      {
        if (*(v4 + 16))
        {
          *(v4 + 8) = 0;
        }

        *(v4 + 16) = 0;
        v2 = *(result + 68);
      }
    }

    if ((v2 & 0x20) != 0)
    {
      v5 = *(result + 40);
      if (v5)
      {
        if (*(v5 + 16))
        {
          *(v5 + 8) = 0;
        }

        *(v5 + 16) = 0;
        v2 = *(result + 68);
      }
    }

    if ((v2 & 0x40) != 0)
    {
      result = *(result + 48);
      if (result)
      {
        result = sub_2453E3D6C(result);
        v2 = *(v1 + 68);
      }
    }

    if ((v2 & 0x80) != 0)
    {
      result = *(v1 + 56);
      if (result)
      {
        result = sub_245409A00(result);
      }
    }
  }

  *(v1 + 68) = 0;
  return result;
}

uint64_t sub_2453E5A8C(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormatLite *this, unsigned int a3)
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
        if (TagFallback >> 3 <= 0x50)
        {
          break;
        }

        if (TagFallback >> 3 <= 0x52)
        {
          if (v7 == 81)
          {
            if (v8 == 2)
            {
              goto LABEL_76;
            }
          }

          else if (v7 == 82 && v8 == 2)
          {
            goto LABEL_91;
          }

          goto LABEL_34;
        }

        if (v7 == 83)
        {
          if (v8 != 2)
          {
            goto LABEL_34;
          }

LABEL_106:
          *(a1 + 68) |= 0x40u;
          v45 = *(a1 + 48);
          if (!v45)
          {
            operator new();
          }

          v60 = 0;
          v46 = *(this + 1);
          if (v46 >= *(this + 2) || *v46 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v60))
            {
              return 0;
            }
          }

          else
          {
            v60 = *v46;
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
          if (!sub_2453E3DF8(v45, this, v49) || *(this + 36) != 1)
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
          if (*(this + 4) - v52 > 1 && *v52 == 162 && v52[1] == 5)
          {
            *(this + 1) = v52 + 2;
            goto LABEL_121;
          }
        }

        else
        {
          if (v7 != 84 || v8 != 2)
          {
            goto LABEL_34;
          }

LABEL_121:
          *(a1 + 68) |= 0x80u;
          v53 = *(a1 + 56);
          if (!v53)
          {
            operator new();
          }

          v60 = 0;
          v54 = *(this + 1);
          if (v54 >= *(this + 2) || *v54 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v60))
            {
              return 0;
            }
          }

          else
          {
            v60 = *v54;
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
          if (!sub_245409AB4(v53, this, v57) || *(this + 36) != 1)
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

          if (*(this + 1) == *(this + 2) && (*(this + 11) || *(this + 6) == *(this + 10)))
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
          if ((TagFallback & 7) == 0)
          {
            v14 = *(this + 1);
            v9 = *(this + 2);
            goto LABEL_50;
          }
        }

        else if (v7 == 80 && v8 == 2)
        {
          goto LABEL_61;
        }

        goto LABEL_34;
      }

      if (v7 != 1)
      {
        break;
      }

      if ((TagFallback & 7) != 0)
      {
        goto LABEL_34;
      }

      v11 = *(this + 1);
      v9 = *(this + 2);
      if (v11 >= v9 || (v12 = *v11, v12 < 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(this, (a1 + 8));
        if (!result)
        {
          return result;
        }

        v13 = *(this + 1);
        v9 = *(this + 2);
      }

      else
      {
        *(a1 + 8) = v12;
        v13 = v11 + 1;
        *(this + 1) = v13;
      }

      *(a1 + 68) |= 1u;
      if (v13 < v9 && *v13 == 16)
      {
        v10 = v13 + 1;
        *(this + 1) = v10;
LABEL_42:
        if (v10 >= v9 || (v16 = *v10, v16 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 16));
          if (!result)
          {
            return result;
          }

          v17 = *(this + 1);
          v9 = *(this + 2);
        }

        else
        {
          *(a1 + 16) = v16;
          v17 = v10 + 1;
          *(this + 1) = v17;
        }

        *(a1 + 68) |= 2u;
        if (v17 < v9 && *v17 == 24)
        {
          v14 = v17 + 1;
          *(this + 1) = v14;
LABEL_50:
          v60 = 0;
          if (v14 >= v9 || (v18 = *v14, (v18 & 0x80000000) != 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v60);
            if (!result)
            {
              return result;
            }

            v18 = v60;
          }

          else
          {
            *(this + 1) = v14 + 1;
          }

          if (sub_2453E57A4(v18))
          {
            *(a1 + 68) |= 4u;
            *(a1 + 20) = v18;
          }

          v19 = *(this + 1);
          if (*(this + 4) - v19 >= 2 && *v19 == 130 && v19[1] == 5)
          {
            *(this + 1) = v19 + 2;
LABEL_61:
            *(a1 + 68) |= 8u;
            v20 = *(a1 + 24);
            if (!v20)
            {
              operator new();
            }

            v60 = 0;
            v21 = *(this + 1);
            if (v21 >= *(this + 2) || *v21 < 0)
            {
              if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v60))
              {
                return 0;
              }
            }

            else
            {
              v60 = *v21;
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
            if (!sub_2453DD228(v20, this, v24) || *(this + 36) != 1)
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
            if (*(this + 4) - v28 > 1 && *v28 == 138 && v28[1] == 5)
            {
              *(this + 1) = v28 + 2;
LABEL_76:
              *(a1 + 68) |= 0x10u;
              v29 = *(a1 + 32);
              if (!v29)
              {
                operator new();
              }

              v60 = 0;
              v30 = *(this + 1);
              if (v30 >= *(this + 2) || *v30 < 0)
              {
                if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v60))
                {
                  return 0;
                }
              }

              else
              {
                v60 = *v30;
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
              if (!sub_2453DD9FC(v29, this, v33) || *(this + 36) != 1)
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
              if (*(this + 4) - v36 > 1 && *v36 == 146 && v36[1] == 5)
              {
                *(this + 1) = v36 + 2;
LABEL_91:
                *(a1 + 68) |= 0x20u;
                v37 = *(a1 + 40);
                if (!v37)
                {
                  operator new();
                }

                v60 = 0;
                v38 = *(this + 1);
                if (v38 >= *(this + 2) || *v38 < 0)
                {
                  if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v60))
                  {
                    return 0;
                  }
                }

                else
                {
                  v60 = *v38;
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
                if (!sub_2453DE1CC(v37, this, v41) || *(this + 36) != 1)
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
                if (*(this + 4) - v44 > 1 && *v44 == 154 && v44[1] == 5)
                {
                  *(this + 1) = v44 + 2;
                  goto LABEL_106;
                }
              }
            }
          }
        }
      }
    }

    if (v7 == 2 && (TagFallback & 7) == 0)
    {
      v10 = *(this + 1);
      v9 = *(this + 2);
      goto LABEL_42;
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

uint64_t sub_2453E6314(uint64_t result, const wireless_diagnostics::google::protobuf::MessageLite *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = result;
  v6 = *(result + 68);
  if (v6)
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(1, *(result + 8), a2, a4);
    v6 = *(v5 + 68);
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

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(2, *(v5 + 16), a2, a4);
  v6 = *(v5 + 68);
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
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(3, *(v5 + 20), a2, a4);
  v6 = *(v5 + 68);
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_16;
  }

LABEL_13:
  v7 = *(v5 + 24);
  if (!v7)
  {
    sub_2453E570C();
    v7 = *(qword_27EE13508 + 24);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x50, v7, a2, a4);
  v6 = *(v5 + 68);
  if ((v6 & 0x10) == 0)
  {
LABEL_6:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_19;
  }

LABEL_16:
  v8 = *(v5 + 32);
  if (!v8)
  {
    sub_2453E570C();
    v8 = *(qword_27EE13508 + 32);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x51, v8, a2, a4);
  v6 = *(v5 + 68);
  if ((v6 & 0x20) == 0)
  {
LABEL_7:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_22;
  }

LABEL_19:
  v9 = *(v5 + 40);
  if (!v9)
  {
    sub_2453E570C();
    v9 = *(qword_27EE13508 + 40);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x52, v9, a2, a4);
  v6 = *(v5 + 68);
  if ((v6 & 0x40) == 0)
  {
LABEL_8:
    if ((v6 & 0x80) == 0)
    {
      return result;
    }

    goto LABEL_25;
  }

LABEL_22:
  v10 = *(v5 + 48);
  if (!v10)
  {
    sub_2453E570C();
    v10 = *(qword_27EE13508 + 48);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x53, v10, a2, a4);
  if ((*(v5 + 68) & 0x80) != 0)
  {
LABEL_25:
    v11 = *(v5 + 56);
    if (!v11)
    {
      sub_2453E570C();
      v11 = *(qword_27EE13508 + 56);
    }

    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x54, v11, a2, a4);
  }

  return result;
}

uint64_t sub_2453E6490(uint64_t a1, unint64_t a2)
{
  LOBYTE(v3) = *(a1 + 68);
  if (!v3)
  {
    v4 = 0;
    goto LABEL_54;
  }

  if (*(a1 + 68))
  {
    v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(a1 + 8)) + 1;
    v3 = *(a1 + 68);
    if ((v3 & 2) == 0)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v4 = 0;
    if ((*(a1 + 68) & 2) == 0)
    {
      goto LABEL_11;
    }
  }

  v5 = *(a1 + 16);
  if (v5 >= 0x80)
  {
    v6 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5) + 1;
    v3 = *(a1 + 68);
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
    if ((v7 & 0x80000000) != 0)
    {
      v8 = 11;
    }

    else if (v7 >= 0x80)
    {
      v8 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v7) + 1;
      v3 = *(a1 + 68);
    }

    else
    {
      v8 = 2;
    }

    v4 = (v8 + v4);
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
    sub_2453E570C();
    v9 = *(qword_27EE13508 + 24);
  }

  v10 = sub_2453DD698(v9, a2);
  v11 = v10;
  if (v10 >= 0x80)
  {
    v12 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v10);
  }

  else
  {
    v12 = 1;
  }

  v4 = (v4 + v11 + v12 + 2);
  v3 = *(a1 + 68);
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
    sub_2453E570C();
    v13 = *(qword_27EE13508 + 32);
  }

  if (*(v13 + 16))
  {
    v14 = 2 * (*(v13 + 16) & 1);
  }

  else
  {
    v14 = 0;
  }

  *(v13 + 12) = v14;
  v4 = (v4 + v14 + 3);
  v3 = *(a1 + 68);
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
  v15 = *(a1 + 40);
  if (!v15)
  {
    sub_2453E570C();
    v15 = *(qword_27EE13508 + 40);
  }

  v16 = sub_2453DE300(v15, a2);
  v17 = v16;
  if (v16 >= 0x80)
  {
    v18 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v16);
  }

  else
  {
    v18 = 1;
  }

  v4 = (v4 + v17 + v18 + 2);
  v3 = *(a1 + 68);
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
  v19 = *(a1 + 48);
  if (!v19)
  {
    sub_2453E570C();
    v19 = *(qword_27EE13508 + 48);
  }

  v20 = sub_2453E480C(v19, a2);
  v21 = v20;
  if (v20 >= 0x80)
  {
    v22 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v20);
  }

  else
  {
    v22 = 1;
  }

  v4 = (v4 + v21 + v22 + 2);
  if ((*(a1 + 68) & 0x80) != 0)
  {
LABEL_48:
    v23 = *(a1 + 56);
    if (!v23)
    {
      sub_2453E570C();
      v23 = *(qword_27EE13508 + 56);
    }

    v24 = sub_24540A420(v23, a2);
    v25 = v24;
    if (v24 >= 0x80)
    {
      v26 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v24);
    }

    else
    {
      v26 = 1;
    }

    v4 = (v4 + v25 + v26 + 2);
  }

LABEL_54:
  *(a1 + 64) = v4;
  return v4;
}

void sub_2453E66CC(uint64_t a1, void *lpsrc)
{
  if (!__dynamic_cast(lpsrc, MEMORY[0x277D82C38], &unk_2858556A0, 0))
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  if (lpsrc == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v18);
  }

  LOBYTE(v4) = *(lpsrc + 68);
  if (!v4)
  {
    return;
  }

  if (*(lpsrc + 68))
  {
    v5 = *(lpsrc + 1);
    *(a1 + 68) |= 1u;
    *(a1 + 8) = v5;
    v4 = *(lpsrc + 17);
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

  else if ((*(lpsrc + 68) & 2) == 0)
  {
    goto LABEL_7;
  }

  v6 = *(lpsrc + 4);
  *(a1 + 68) |= 2u;
  *(a1 + 16) = v6;
  v4 = *(lpsrc + 17);
  if ((v4 & 4) == 0)
  {
LABEL_8:
    if ((v4 & 8) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_18;
  }

LABEL_16:
  v7 = *(lpsrc + 5);
  if (!sub_2453E57A4(v7))
  {
    __assert_rtn("set_type", "CLPGemProtocolGpsd.pb.h", 618, "::CoreGem::CLP::LogEntry::Gem::Gpsd::Request_Type_IsValid(value)");
  }

  *(a1 + 68) |= 4u;
  *(a1 + 20) = v7;
  v4 = *(lpsrc + 17);
  if ((v4 & 8) == 0)
  {
LABEL_9:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_23;
  }

LABEL_18:
  *(a1 + 68) |= 8u;
  v8 = *(a1 + 24);
  if (!v8)
  {
    operator new();
  }

  v9 = *(lpsrc + 3);
  if (!v9)
  {
    sub_2453E570C();
    v9 = *(qword_27EE13508 + 24);
  }

  sub_2453DD028(v8, v9);
  v4 = *(lpsrc + 17);
  if ((v4 & 0x10) == 0)
  {
LABEL_10:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_11;
    }

LABEL_28:
    *(a1 + 68) |= 0x20u;
    v12 = *(a1 + 40);
    if (!v12)
    {
      operator new();
    }

    v13 = *(lpsrc + 5);
    if (!v13)
    {
      sub_2453E570C();
      v13 = *(qword_27EE13508 + 40);
    }

    sub_2453DE00C(v12, v13);
    v4 = *(lpsrc + 17);
    if ((v4 & 0x40) == 0)
    {
LABEL_12:
      if ((v4 & 0x80) == 0)
      {
        return;
      }

      goto LABEL_38;
    }

    goto LABEL_33;
  }

LABEL_23:
  *(a1 + 68) |= 0x10u;
  v10 = *(a1 + 32);
  if (!v10)
  {
    operator new();
  }

  v11 = *(lpsrc + 4);
  if (!v11)
  {
    sub_2453E570C();
    v11 = *(qword_27EE13508 + 32);
  }

  sub_2453DD860(v10, v11);
  v4 = *(lpsrc + 17);
  if ((v4 & 0x20) != 0)
  {
    goto LABEL_28;
  }

LABEL_11:
  if ((v4 & 0x40) == 0)
  {
    goto LABEL_12;
  }

LABEL_33:
  *(a1 + 68) |= 0x40u;
  v14 = *(a1 + 48);
  if (!v14)
  {
    operator new();
  }

  v15 = *(lpsrc + 6);
  if (!v15)
  {
    sub_2453E570C();
    v15 = *(qword_27EE13508 + 48);
  }

  sub_2453E36B4(v14, v15);
  if ((*(lpsrc + 17) & 0x80) != 0)
  {
LABEL_38:
    *(a1 + 68) |= 0x80u;
    v16 = *(a1 + 56);
    if (!v16)
    {
      operator new();
    }

    v17 = *(lpsrc + 7);
    if (!v17)
    {
      sub_2453E570C();
      v17 = *(qword_27EE13508 + 56);
    }

    sub_24540946C(v16, v17);
  }
}

void sub_2453E6AFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_2453E6B2C(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = &unk_2858555C0;
  sub_2453E570C();

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);
}

void sub_2453E6B88(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  sub_2453E6B2C(a1);

  JUMPOUT(0x245D6A0D0);
}

uint64_t sub_2453E6C0C(uint64_t result)
{
  if (*(result + 28))
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
  }

  *(result + 28) = 0;
  return result;
}

uint64_t sub_2453E6C20(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormatLite *this, unsigned int a3)
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

      if (sub_2453E57A4(v9))
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

uint64_t sub_2453E6E40(uint64_t result, uint64_t a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
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

uint64_t sub_2453E6ECC(uint64_t a1, unint64_t a2)
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

void sub_2453E6F90(uint64_t a1, void *lpsrc)
{
  if (!__dynamic_cast(lpsrc, MEMORY[0x277D82C38], &unk_2858556B8, 0))
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  if (lpsrc == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v8);
  }

  LOBYTE(v4) = *(lpsrc + 28);
  if (v4)
  {
    if (*(lpsrc + 28))
    {
      v5 = *(lpsrc + 4);
      if (!sub_2453E57A4(v5))
      {
        __assert_rtn("set_request_type", "CLPGemProtocolGpsd.pb.h", 855, "::CoreGem::CLP::LogEntry::Gem::Gpsd::Request_Type_IsValid(value)");
      }

      *(a1 + 28) |= 1u;
      *(a1 + 16) = v5;
      v4 = *(lpsrc + 7);
    }

    if ((v4 & 2) != 0)
    {
      v6 = *(lpsrc + 1);
      *(a1 + 28) |= 2u;
      *(a1 + 8) = v6;
      v4 = *(lpsrc + 7);
    }

    if ((v4 & 4) != 0)
    {
      v7 = *(lpsrc + 5);
      if (v7 >= 0xA)
      {
        __assert_rtn("set_result_code", "CLPGemProtocolGpsd.pb.h", 900, "::CoreGem::proto::gnss::Result_IsValid(value)");
      }

      *(a1 + 28) |= 4u;
      *(a1 + 20) = v7;
    }
  }
}

void sub_2453E711C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_2453E714C(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = &unk_285855638;
  sub_2453E71A4(a1);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);
}

void sub_2453E71A4(void *a1)
{
  sub_2453E570C();
  if (qword_2813CE9D8 != a1)
  {
    v2 = a1[1];
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }

    v3 = a1[2];
    if (v3)
    {
      (*(*v3 + 8))(v3);
    }

    v4 = a1[3];
    if (v4)
    {
      (*(*v4 + 8))(v4);
    }

    v5 = a1[4];
    if (v5)
    {
      (*(*v5 + 8))(v5);
    }

    v6 = a1[5];
    if (v6)
    {
      (*(*v6 + 8))(v6);
    }

    v7 = a1[6];
    if (v7)
    {
      (*(*v7 + 8))(v7);
    }

    v8 = a1[7];
    if (v8)
    {
      (*(*v8 + 8))(v8);
    }

    v9 = a1[8];
    if (v9)
    {
      v10 = *(*v9 + 8);

      v10();
    }
  }
}

void sub_2453E7354(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  sub_2453E714C(a1);

  JUMPOUT(0x245D6A0D0);
}

uint64_t sub_2453E73EC(uint64_t result)
{
  v1 = result;
  LOBYTE(v2) = *(result + 76);
  if (v2)
  {
    if (*(result + 76))
    {
      v3 = *(result + 8);
      if (v3)
      {
        v4 = *(v3 + 80);
        if (v4)
        {
          *(v3 + 24) = 0u;
          *(v3 + 8) = 0u;
        }

        if ((v4 & 0xFF00) != 0)
        {
          *(v3 + 56) = 0u;
          *(v3 + 40) = 0u;
        }

        if ((v4 & 0xFF0000) != 0)
        {
          *(v3 + 72) = 0;
        }

        *(v3 + 80) = 0;
        v2 = *(result + 76);
      }
    }

    if ((v2 & 2) != 0)
    {
      result = *(result + 16);
      if (result)
      {
        result = sub_245419C10(result);
        v2 = *(v1 + 76);
      }
    }

    if ((v2 & 4) != 0)
    {
      v5 = *(v1 + 24);
      if (v5)
      {
        v6 = *(v5 + 68);
        if (v6)
        {
          *(v5 + 24) = 0u;
          *(v5 + 8) = 0u;
        }

        if ((v6 & 0xFF00) != 0)
        {
          *(v5 + 40) = 0;
          *(v5 + 48) = 0;
          *(v5 + 56) = 0;
        }

        *(v5 + 68) = 0;
        v2 = *(v1 + 76);
      }
    }

    if ((v2 & 8) != 0)
    {
      v7 = *(v1 + 32);
      if (v7)
      {
        if (*(v7 + 52))
        {
          *(v7 + 32) = 0;
          *(v7 + 40) = 0;
        }

        result = sub_2453DC6D0(v7 + 8);
        *(v7 + 52) = 0;
        v2 = *(v1 + 76);
      }
    }

    if ((v2 & 0x10) != 0)
    {
      v8 = *(v1 + 40);
      if (v8)
      {
        if (*(v8 + 32))
        {
          *(v8 + 24) = 0;
        }

        *(v8 + 16) = 0;
        *(v8 + 32) = 0;
        v2 = *(v1 + 76);
      }
    }

    if ((v2 & 0x20) != 0)
    {
      v9 = *(v1 + 48);
      if (v9)
      {
        if (*(v9 + 16))
        {
          *(v9 + 8) = 0;
        }

        *(v9 + 16) = 0;
        v2 = *(v1 + 76);
      }
    }

    if ((v2 & 0x40) != 0)
    {
      result = *(v1 + 56);
      if (result)
      {
        result = sub_2453DF174(result);
        v2 = *(v1 + 76);
      }
    }

    if ((v2 & 0x80) != 0)
    {
      v10 = *(v1 + 64);
      if (v10)
      {
        if (*(v10 + 32))
        {
          *(v10 + 8) = xmmword_245486E40;
          *(v10 + 24) = 1;
        }

        *(v10 + 32) = 0;
      }
    }
  }

  *(v1 + 76) = 0;
  return result;
}

uint64_t sub_2453E7560(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormatLite *this, unsigned int a3)
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
        if (TagFallback >> 3 > 0x40)
        {
          break;
        }

        if (TagFallback >> 3 > 0x3E)
        {
          if (v7 == 63)
          {
            if (v8 == 2)
            {
              goto LABEL_53;
            }
          }

          else if (v7 == 64 && v8 == 2)
          {
            goto LABEL_68;
          }

          goto LABEL_40;
        }

        if (v7 == 61)
        {
          if (v8 != 2)
          {
            goto LABEL_40;
          }

          *(a1 + 76) |= 1u;
          v11 = *(a1 + 8);
          if (!v11)
          {
            operator new();
          }

          v74 = 0;
          v12 = *(this + 1);
          if (v12 >= *(this + 2) || *v12 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v74))
            {
              return 0;
            }
          }

          else
          {
            v74 = *v12;
            *(this + 1) = v12 + 1;
          }

          v67 = *(this + 14);
          v68 = *(this + 15);
          *(this + 14) = v67 + 1;
          if (v67 >= v68)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this);
          if (!sub_2453F8B20(v11, this, v69) || *(this + 36) != 1)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this);
          v70 = *(this + 14);
          v17 = __OFSUB__(v70, 1);
          v71 = v70 - 1;
          if (v71 < 0 == v17)
          {
            *(this + 14) = v71;
          }

          v72 = *(this + 1);
          if (*(this + 4) - v72 > 1 && *v72 == 242 && v72[1] == 3)
          {
            *(this + 1) = v72 + 2;
LABEL_11:
            *(a1 + 76) |= 2u;
            v9 = *(a1 + 16);
            if (!v9)
            {
              operator new();
            }

            v74 = 0;
            v10 = *(this + 1);
            if (v10 >= *(this + 2) || *v10 < 0)
            {
              if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v74))
              {
                return 0;
              }
            }

            else
            {
              v74 = *v10;
              *(this + 1) = v10 + 1;
            }

            v13 = *(this + 14);
            v14 = *(this + 15);
            *(this + 14) = v13 + 1;
            if (v13 >= v14)
            {
              return 0;
            }

            wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this);
            if (!sub_245419C60(v9, this, v15) || *(this + 36) != 1)
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
            if (*(this + 4) - v19 > 1 && *v19 == 250 && v19[1] == 3)
            {
              *(this + 1) = v19 + 2;
LABEL_53:
              *(a1 + 76) |= 4u;
              v20 = *(a1 + 24);
              if (!v20)
              {
                operator new();
              }

              v74 = 0;
              v21 = *(this + 1);
              if (v21 >= *(this + 2) || *v21 < 0)
              {
                if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v74))
                {
                  return 0;
                }
              }

              else
              {
                v74 = *v21;
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
              if (!sub_24541AA2C(v20, this, v24) || *(this + 36) != 1)
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
              if (*(this + 4) - v27 > 1 && *v27 == 130 && v27[1] == 4)
              {
                *(this + 1) = v27 + 2;
LABEL_68:
                *(a1 + 76) |= 8u;
                v28 = *(a1 + 32);
                if (!v28)
                {
                  operator new();
                }

                v74 = 0;
                v29 = *(this + 1);
                if (v29 >= *(this + 2) || *v29 < 0)
                {
                  if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v74))
                  {
                    return 0;
                  }
                }

                else
                {
                  v74 = *v29;
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
                if (!sub_24541DB58(v28, this, v32) || *(this + 36) != 1)
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
                if (*(this + 4) - v35 > 1 && *v35 == 138 && v35[1] == 4)
                {
                  *(this + 1) = v35 + 2;
LABEL_83:
                  *(a1 + 76) |= 0x10u;
                  v36 = *(a1 + 40);
                  if (!v36)
                  {
                    operator new();
                  }

                  v74 = 0;
                  v37 = *(this + 1);
                  if (v37 >= *(this + 2) || *v37 < 0)
                  {
                    if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v74))
                    {
                      return 0;
                    }
                  }

                  else
                  {
                    v74 = *v37;
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
                  if (!sub_2453DD228(v36, this, v40) || *(this + 36) != 1)
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
                  if (*(this + 4) - v43 > 1 && *v43 == 146 && v43[1] == 4)
                  {
                    *(this + 1) = v43 + 2;
LABEL_98:
                    *(a1 + 76) |= 0x20u;
                    v44 = *(a1 + 48);
                    if (!v44)
                    {
                      operator new();
                    }

                    v74 = 0;
                    v45 = *(this + 1);
                    if (v45 >= *(this + 2) || *v45 < 0)
                    {
                      if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v74))
                      {
                        return 0;
                      }
                    }

                    else
                    {
                      v74 = *v45;
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
                    if (!sub_2453DDDA4(v44, this, v48) || *(this + 36) != 1)
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
                    if (*(this + 4) - v51 > 1 && *v51 == 154 && v51[1] == 4)
                    {
                      *(this + 1) = v51 + 2;
                      goto LABEL_113;
                    }
                  }
                }
              }
            }
          }
        }

        else
        {
          if (v7 == 62 && v8 == 2)
          {
            goto LABEL_11;
          }

LABEL_40:
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

      if (TagFallback >> 3 <= 0x42)
      {
        if (v7 == 65)
        {
          if (v8 == 2)
          {
            goto LABEL_83;
          }
        }

        else if (v7 == 66 && v8 == 2)
        {
          goto LABEL_98;
        }

        goto LABEL_40;
      }

      if (v7 != 67)
      {
        break;
      }

      if (v8 != 2)
      {
        goto LABEL_40;
      }

LABEL_113:
      *(a1 + 76) |= 0x40u;
      v52 = *(a1 + 56);
      if (!v52)
      {
        operator new();
      }

      v74 = 0;
      v53 = *(this + 1);
      if (v53 >= *(this + 2) || *v53 < 0)
      {
        if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v74))
        {
          return 0;
        }
      }

      else
      {
        v74 = *v53;
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
      if (!sub_2453DF1C8(v52, this, v56) || *(this + 36) != 1)
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
      if (*(this + 4) - v59 > 1 && *v59 == 162 && v59[1] == 4)
      {
        *(this + 1) = v59 + 2;
        goto LABEL_128;
      }
    }

    if (v7 != 68 || v8 != 2)
    {
      goto LABEL_40;
    }

LABEL_128:
    *(a1 + 76) |= 0x80u;
    v60 = *(a1 + 64);
    if (!v60)
    {
      operator new();
    }

    v74 = 0;
    v61 = *(this + 1);
    if (v61 >= *(this + 2) || *v61 < 0)
    {
      if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v74))
      {
        return 0;
      }
    }

    else
    {
      v74 = *v61;
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
    if (!sub_2453E4D94(v60, this, v64) || *(this + 36) != 1)
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
  }

  while (*(this + 1) != *(this + 2) || !*(this + 11) && *(this + 6) != *(this + 10));
  *(this + 8) = 0;
  result = 1;
  *(this + 36) = 1;
  return result;
}

uint64_t sub_2453E8038(uint64_t result, wireless_diagnostics::google::protobuf::MessageLite *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = result;
  v6 = *(result + 76);
  if (v6)
  {
    v7 = *(result + 8);
    if (!v7)
    {
      sub_2453E570C();
      v7 = *(qword_2813CE9D8 + 8);
    }

    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x3D, v7, a2, a4);
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

  v8 = *(v5 + 16);
  if (!v8)
  {
    sub_2453E570C();
    v8 = *(qword_2813CE9D8 + 16);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x3E, v8, a2, a4);
  v6 = *(v5 + 76);
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
    sub_2453E570C();
    v9 = *(qword_2813CE9D8 + 24);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x3F, v9, a2, a4);
  v6 = *(v5 + 76);
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
    sub_2453E570C();
    v10 = *(qword_2813CE9D8 + 32);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x40, v10, a2, a4);
  v6 = *(v5 + 76);
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
    sub_2453E570C();
    v11 = *(qword_2813CE9D8 + 40);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x41, v11, a2, a4);
  v6 = *(v5 + 76);
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
    sub_2453E570C();
    v12 = *(qword_2813CE9D8 + 48);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x42, v12, a2, a4);
  v6 = *(v5 + 76);
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
    sub_2453E570C();
    v13 = *(qword_2813CE9D8 + 56);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x43, v13, a2, a4);
  if ((*(v5 + 76) & 0x80) != 0)
  {
LABEL_31:
    v14 = *(v5 + 64);
    if (!v14)
    {
      sub_2453E570C();
      v14 = *(qword_2813CE9D8 + 64);
    }

    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x44, v14, a2, a4);
  }

  return result;
}

uint64_t sub_2453E81F0(uint64_t a1, unsigned int a2)
{
  LOBYTE(v3) = *(a1 + 76);
  if (!v3)
  {
    v4 = 0;
    goto LABEL_61;
  }

  if ((*(a1 + 76) & 1) == 0)
  {
    v4 = 0;
    if ((*(a1 + 76) & 2) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_12;
  }

  v5 = *(a1 + 8);
  if (!v5)
  {
    sub_2453E570C();
    v5 = *(qword_2813CE9D8 + 8);
  }

  v6 = sub_2453F952C(v5, a2);
  v7 = v6;
  if (v6 >= 0x80)
  {
    v8 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v6);
  }

  else
  {
    v8 = 1;
  }

  v4 = (v7 + v8 + 2);
  v3 = *(a1 + 76);
  if ((v3 & 2) != 0)
  {
LABEL_12:
    v9 = *(a1 + 16);
    if (!v9)
    {
      sub_2453E570C();
      v9 = *(qword_2813CE9D8 + 16);
    }

    v10 = sub_24541A394(v9, a2);
    v11 = v10;
    if (v10 >= 0x80)
    {
      v12 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v10);
    }

    else
    {
      v12 = 1;
    }

    v4 = (v4 + v11 + v12 + 2);
    v3 = *(a1 + 76);
  }

LABEL_18:
  if ((v3 & 4) != 0)
  {
    v13 = *(a1 + 24);
    if (!v13)
    {
      sub_2453E570C();
      v13 = *(qword_2813CE9D8 + 24);
    }

    v14 = sub_24541B294(v13, a2);
    v15 = v14;
    if (v14 >= 0x80)
    {
      v16 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v14);
    }

    else
    {
      v16 = 1;
    }

    v4 = (v4 + v15 + v16 + 2);
    v3 = *(a1 + 76);
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
    sub_2453E570C();
    v17 = *(qword_2813CE9D8 + 32);
  }

  v18 = sub_24541E06C(v17, a2);
  v19 = v18;
  if (v18 >= 0x80)
  {
    v20 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v18);
  }

  else
  {
    v20 = 1;
  }

  v4 = (v4 + v19 + v20 + 2);
  v3 = *(a1 + 76);
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
    sub_2453E570C();
    v21 = *(qword_2813CE9D8 + 40);
  }

  v22 = sub_2453DD698(v21, a2);
  v23 = v22;
  if (v22 >= 0x80)
  {
    v24 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v22);
  }

  else
  {
    v24 = 1;
  }

  v4 = (v4 + v23 + v24 + 2);
  v3 = *(a1 + 76);
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
    sub_2453E570C();
    v25 = *(qword_2813CE9D8 + 48);
  }

  if (*(v25 + 16))
  {
    v26 = 2 * (*(v25 + 16) & 1);
  }

  else
  {
    v26 = 0;
  }

  *(v25 + 12) = v26;
  v4 = (v4 + v26 + 3);
  v3 = *(a1 + 76);
  if ((v3 & 0x40) == 0)
  {
LABEL_23:
    if ((v3 & 0x80) == 0)
    {
      goto LABEL_61;
    }

    goto LABEL_55;
  }

LABEL_49:
  v27 = *(a1 + 56);
  if (!v27)
  {
    sub_2453E570C();
    v27 = *(qword_2813CE9D8 + 56);
  }

  v28 = sub_2453DF5F8(v27, a2);
  v29 = v28;
  if (v28 >= 0x80)
  {
    v30 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v28);
  }

  else
  {
    v30 = 1;
  }

  v4 = (v4 + v29 + v30 + 2);
  if ((*(a1 + 76) & 0x80) != 0)
  {
LABEL_55:
    v31 = *(a1 + 64);
    if (!v31)
    {
      sub_2453E570C();
      v31 = *(qword_2813CE9D8 + 64);
    }

    v32 = sub_2453E5184(v31, a2);
    v33 = v32;
    if (v32 >= 0x80)
    {
      v34 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v32);
    }

    else
    {
      v34 = 1;
    }

    v4 = (v4 + v33 + v34 + 2);
  }

LABEL_61:
  *(a1 + 72) = v4;
  return v4;
}

void sub_2453E849C(uint64_t a1, uint64_t *lpsrc)
{
  if (!__dynamic_cast(lpsrc, MEMORY[0x277D82C38], &unk_2858556D0, 0))
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  if (lpsrc == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v21);
  }

  LOBYTE(v4) = *(lpsrc + 76);
  if (!v4)
  {
    return;
  }

  if (*(lpsrc + 76))
  {
    *(a1 + 76) |= 1u;
    v5 = *(a1 + 8);
    if (!v5)
    {
      operator new();
    }

    v6 = lpsrc[1];
    if (!v6)
    {
      sub_2453E570C();
      v6 = *(qword_2813CE9D8 + 8);
    }

    sub_2453F86F0(v5, v6);
    v4 = *(lpsrc + 19);
    if ((v4 & 2) == 0)
    {
LABEL_7:
      if ((v4 & 4) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_24;
    }
  }

  else if ((*(lpsrc + 76) & 2) == 0)
  {
    goto LABEL_7;
  }

  *(a1 + 76) |= 2u;
  v7 = *(a1 + 16);
  if (!v7)
  {
    operator new();
  }

  v8 = lpsrc[2];
  if (!v8)
  {
    sub_2453E570C();
    v8 = *(qword_2813CE9D8 + 16);
  }

  sub_245419784(v7, v8);
  v4 = *(lpsrc + 19);
  if ((v4 & 4) == 0)
  {
LABEL_8:
    if ((v4 & 8) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_29;
  }

LABEL_24:
  *(a1 + 76) |= 4u;
  v9 = *(a1 + 24);
  if (!v9)
  {
    operator new();
  }

  v10 = lpsrc[3];
  if (!v10)
  {
    sub_2453E570C();
    v10 = *(qword_2813CE9D8 + 24);
  }

  sub_24541A664(v9, v10);
  v4 = *(lpsrc + 19);
  if ((v4 & 8) == 0)
  {
LABEL_9:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_34;
  }

LABEL_29:
  *(a1 + 76) |= 8u;
  v11 = *(a1 + 32);
  if (!v11)
  {
    operator new();
  }

  v12 = lpsrc[4];
  if (!v12)
  {
    sub_2453E570C();
    v12 = *(qword_2813CE9D8 + 32);
  }

  sub_24541D870(v11, v12);
  v4 = *(lpsrc + 19);
  if ((v4 & 0x10) == 0)
  {
LABEL_10:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_11;
    }

LABEL_39:
    *(a1 + 76) |= 0x20u;
    v15 = *(a1 + 48);
    if (!v15)
    {
      operator new();
    }

    v16 = lpsrc[6];
    if (!v16)
    {
      sub_2453E570C();
      v16 = *(qword_2813CE9D8 + 48);
    }

    sub_2453DDC08(v15, v16);
    v4 = *(lpsrc + 19);
    if ((v4 & 0x40) == 0)
    {
LABEL_12:
      if ((v4 & 0x80) == 0)
      {
        return;
      }

      goto LABEL_49;
    }

    goto LABEL_44;
  }

LABEL_34:
  *(a1 + 76) |= 0x10u;
  v13 = *(a1 + 40);
  if (!v13)
  {
    operator new();
  }

  v14 = lpsrc[5];
  if (!v14)
  {
    sub_2453E570C();
    v14 = *(qword_2813CE9D8 + 40);
  }

  sub_2453DD028(v13, v14);
  v4 = *(lpsrc + 19);
  if ((v4 & 0x20) != 0)
  {
    goto LABEL_39;
  }

LABEL_11:
  if ((v4 & 0x40) == 0)
  {
    goto LABEL_12;
  }

LABEL_44:
  *(a1 + 76) |= 0x40u;
  v17 = *(a1 + 56);
  if (!v17)
  {
    operator new();
  }

  v18 = lpsrc[7];
  if (!v18)
  {
    sub_2453E570C();
    v18 = *(qword_2813CE9D8 + 56);
  }

  sub_2453DEE4C(v17, v18);
  if ((*(lpsrc + 19) & 0x80) != 0)
  {
LABEL_49:
    *(a1 + 76) |= 0x80u;
    v19 = *(a1 + 64);
    if (!v19)
    {
      operator new();
    }

    v20 = lpsrc[8];
    if (!v20)
    {
      sub_2453E570C();
      v20 = *(qword_2813CE9D8 + 64);
    }

    sub_2453E4AB0(v19, v20);
  }
}

void sub_2453E89E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_2453E8A30()
{
  if (qword_2813CE9E0)
  {
    (*(*qword_2813CE9E0 + 8))(qword_2813CE9E0);
  }

  if (qword_2813CEF68)
  {
    (*(*qword_2813CEF68 + 8))(qword_2813CEF68);
  }

  if (qword_2813CE9E8)
  {
    (*(*qword_2813CE9E8 + 8))(qword_2813CE9E8);
  }

  if (qword_2813CE9F0)
  {
    (*(*qword_2813CE9F0 + 8))(qword_2813CE9F0);
  }

  if (qword_2813CE9F8)
  {
    (*(*qword_2813CE9F8 + 8))(qword_2813CE9F8);
  }

  if (qword_2813CEA00)
  {
    (*(*qword_2813CEA00 + 8))(qword_2813CEA00);
  }

  if (qword_2813CEFC0)
  {
    (*(*qword_2813CEFC0 + 8))(qword_2813CEFC0);
  }

  if (qword_2813CEEF8)
  {
    (*(*qword_2813CEEF8 + 8))(qword_2813CEEF8);
  }

  if (qword_2813CEA08)
  {
    (*(*qword_2813CEA08 + 8))(qword_2813CEA08);
  }

  if (qword_2813CEF18)
  {
    (*(*qword_2813CEF18 + 8))(qword_2813CEF18);
  }

  if (qword_2813CEA10)
  {
    (*(*qword_2813CEA10 + 8))(qword_2813CEA10);
  }

  if (qword_2813CEA18)
  {
    (*(*qword_2813CEA18 + 8))(qword_2813CEA18);
  }

  if (qword_2813CEA20)
  {
    (*(*qword_2813CEA20 + 8))(qword_2813CEA20);
  }

  if (qword_2813CEA28)
  {
    (*(*qword_2813CEA28 + 8))(qword_2813CEA28);
  }

  if (qword_2813CEED8)
  {
    (*(*qword_2813CEED8 + 8))(qword_2813CEED8);
  }

  if (qword_2813CEFA8)
  {
    (*(*qword_2813CEFA8 + 8))(qword_2813CEFA8);
  }

  if (qword_2813CEF70)
  {
    (*(*qword_2813CEF70 + 8))(qword_2813CEF70);
  }

  if (qword_2813CEA30)
  {
    (*(*qword_2813CEA30 + 8))(qword_2813CEA30);
  }

  if (qword_2813CEA38)
  {
    (*(*qword_2813CEA38 + 8))(qword_2813CEA38);
  }

  if (qword_2813CEA40)
  {
    (*(*qword_2813CEA40 + 8))(qword_2813CEA40);
  }

  if (qword_2813CEA48)
  {
    (*(*qword_2813CEA48 + 8))(qword_2813CEA48);
  }

  if (qword_2813CEF58)
  {
    (*(*qword_2813CEF58 + 8))(qword_2813CEF58);
  }

  if (qword_2813CEA50)
  {
    (*(*qword_2813CEA50 + 8))(qword_2813CEA50);
  }

  if (qword_2813CEA58)
  {
    (*(*qword_2813CEA58 + 8))(qword_2813CEA58);
  }

  if (qword_2813CEA60)
  {
    (*(*qword_2813CEA60 + 8))(qword_2813CEA60);
  }

  if (qword_2813CEA68)
  {
    (*(*qword_2813CEA68 + 8))(qword_2813CEA68);
  }

  if (qword_2813CEA70)
  {
    (*(*qword_2813CEA70 + 8))(qword_2813CEA70);
  }

  if (qword_2813CEA78)
  {
    (*(*qword_2813CEA78 + 8))(qword_2813CEA78);
  }

  if (qword_2813CEF90)
  {
    (*(*qword_2813CEF90 + 8))(qword_2813CEF90);
  }

  if (qword_2813CEA80)
  {
    (*(*qword_2813CEA80 + 8))(qword_2813CEA80);
  }

  if (qword_2813CEA88)
  {
    (*(*qword_2813CEA88 + 8))(qword_2813CEA88);
  }

  if (qword_2813CEA90)
  {
    (*(*qword_2813CEA90 + 8))(qword_2813CEA90);
  }

  if (qword_2813CEA98)
  {
    (*(*qword_2813CEA98 + 8))(qword_2813CEA98);
  }

  if (qword_2813CEAA0)
  {
    (*(*qword_2813CEAA0 + 8))(qword_2813CEAA0);
  }

  if (qword_2813CEAA8)
  {
    (*(*qword_2813CEAA8 + 8))(qword_2813CEAA8);
  }

  if (qword_2813CEAB0)
  {
    (*(*qword_2813CEAB0 + 8))(qword_2813CEAB0);
  }

  if (qword_2813CEAB8)
  {
    (*(*qword_2813CEAB8 + 8))(qword_2813CEAB8);
  }

  if (qword_2813CEF10)
  {
    (*(*qword_2813CEF10 + 8))(qword_2813CEF10);
  }

  if (qword_2813CEF08)
  {
    (*(*qword_2813CEF08 + 8))(qword_2813CEF08);
  }

  if (qword_2813CEEE0)
  {
    (*(*qword_2813CEEE0 + 8))(qword_2813CEEE0);
  }

  if (qword_2813CEF98)
  {
    (*(*qword_2813CEF98 + 8))(qword_2813CEF98);
  }

  if (qword_2813CEF78)
  {
    (*(*qword_2813CEF78 + 8))(qword_2813CEF78);
  }

  if (qword_2813CEAC0)
  {
    (*(*qword_2813CEAC0 + 8))(qword_2813CEAC0);
  }

  if (qword_2813CEED0)
  {
    (*(*qword_2813CEED0 + 8))(qword_2813CEED0);
  }

  if (qword_2813CEFB0)
  {
    (*(*qword_2813CEFB0 + 8))(qword_2813CEFB0);
  }

  if (qword_2813CEAC8)
  {
    (*(*qword_2813CEAC8 + 8))(qword_2813CEAC8);
  }

  if (qword_2813CEAD0)
  {
    (*(*qword_2813CEAD0 + 8))(qword_2813CEAD0);
  }

  if (qword_2813CEAD8)
  {
    (*(*qword_2813CEAD8 + 8))(qword_2813CEAD8);
  }

  if (qword_2813CEAE0)
  {
    (*(*qword_2813CEAE0 + 8))(qword_2813CEAE0);
  }

  if (qword_2813CEF88)
  {
    (*(*qword_2813CEF88 + 8))(qword_2813CEF88);
  }

  if (qword_2813CEF38)
  {
    (*(*qword_2813CEF38 + 8))(qword_2813CEF38);
  }

  if (qword_2813CEF60)
  {
    (*(*qword_2813CEF60 + 8))(qword_2813CEF60);
  }

  if (qword_2813CEAE8)
  {
    (*(*qword_2813CEAE8 + 8))(qword_2813CEAE8);
  }

  if (qword_2813CEAF0)
  {
    (*(*qword_2813CEAF0 + 8))(qword_2813CEAF0);
  }

  if (qword_2813CEAF8)
  {
    (*(*qword_2813CEAF8 + 8))(qword_2813CEAF8);
  }

  if (qword_2813CEB00)
  {
    (*(*qword_2813CEB00 + 8))(qword_2813CEB00);
  }

  if (qword_2813CEB08)
  {
    (*(*qword_2813CEB08 + 8))(qword_2813CEB08);
  }

  if (qword_2813CEB10)
  {
    (*(*qword_2813CEB10 + 8))(qword_2813CEB10);
  }

  if (qword_2813CEF30)
  {
    (*(*qword_2813CEF30 + 8))(qword_2813CEF30);
  }

  if (qword_2813CEB18)
  {
    (*(*qword_2813CEB18 + 8))(qword_2813CEB18);
  }

  if (qword_2813CEB20)
  {
    (*(*qword_2813CEB20 + 8))(qword_2813CEB20);
  }

  if (qword_2813CEB28)
  {
    (*(*qword_2813CEB28 + 8))(qword_2813CEB28);
  }

  if (qword_2813CEB30)
  {
    (*(*qword_2813CEB30 + 8))(qword_2813CEB30);
  }

  if (qword_2813CEB38)
  {
    (*(*qword_2813CEB38 + 8))(qword_2813CEB38);
  }

  if (qword_2813CEB40)
  {
    (*(*qword_2813CEB40 + 8))(qword_2813CEB40);
  }

  if (qword_2813CEB48)
  {
    (*(*qword_2813CEB48 + 8))(qword_2813CEB48);
  }

  if (qword_2813CEB50)
  {
    (*(*qword_2813CEB50 + 8))(qword_2813CEB50);
  }

  if (qword_2813CEF00)
  {
    (*(*qword_2813CEF00 + 8))(qword_2813CEF00);
  }

  if (qword_2813CEB58)
  {
    (*(*qword_2813CEB58 + 8))(qword_2813CEB58);
  }

  if (qword_2813CEB60)
  {
    (*(*qword_2813CEB60 + 8))(qword_2813CEB60);
  }

  if (qword_2813CEB68)
  {
    (*(*qword_2813CEB68 + 8))(qword_2813CEB68);
  }

  if (qword_2813CEB70)
  {
    (*(*qword_2813CEB70 + 8))(qword_2813CEB70);
  }

  if (qword_2813CEB78)
  {
    (*(*qword_2813CEB78 + 8))(qword_2813CEB78);
  }

  if (qword_2813CEFA0)
  {
    (*(*qword_2813CEFA0 + 8))(qword_2813CEFA0);
  }

  if (qword_2813CEB80)
  {
    (*(*qword_2813CEB80 + 8))(qword_2813CEB80);
  }

  if (qword_2813CEB88)
  {
    (*(*qword_2813CEB88 + 8))(qword_2813CEB88);
  }

  if (qword_2813CEF40)
  {
    (*(*qword_2813CEF40 + 8))(qword_2813CEF40);
  }

  if (qword_2813CEF28)
  {
    (*(*qword_2813CEF28 + 8))(qword_2813CEF28);
  }

  if (qword_2813CEB90)
  {
    (*(*qword_2813CEB90 + 8))(qword_2813CEB90);
  }

  if (qword_2813CEF20)
  {
    (*(*qword_2813CEF20 + 8))(qword_2813CEF20);
  }

  if (qword_2813CEB98)
  {
    (*(*qword_2813CEB98 + 8))(qword_2813CEB98);
  }

  if (qword_2813CEF80)
  {
    (*(*qword_2813CEF80 + 8))(qword_2813CEF80);
  }

  if (qword_2813CEFB8)
  {
    (*(*qword_2813CEFB8 + 8))(qword_2813CEFB8);
  }

  if (qword_2813CEBA0)
  {
    (*(*qword_2813CEBA0 + 8))(qword_2813CEBA0);
  }

  if (qword_2813CEF48)
  {
    (*(*qword_2813CEF48 + 8))(qword_2813CEF48);
  }

  if (qword_2813CEEF0)
  {
    (*(*qword_2813CEEF0 + 8))(qword_2813CEEF0);
  }

  if (qword_2813CEF50)
  {
    (*(*qword_2813CEF50 + 8))(qword_2813CEF50);
  }

  if (qword_2813CEBA8)
  {
    (*(*qword_2813CEBA8 + 8))(qword_2813CEBA8);
  }

  if (qword_2813CEBB0)
  {
    (*(*qword_2813CEBB0 + 8))(qword_2813CEBB0);
  }

  if (qword_2813CEBB8)
  {
    (*(*qword_2813CEBB8 + 8))(qword_2813CEBB8);
  }

  if (qword_2813CEBC0)
  {
    (*(*qword_2813CEBC0 + 8))(qword_2813CEBC0);
  }

  if (qword_2813CEBC8)
  {
    (*(*qword_2813CEBC8 + 8))(qword_2813CEBC8);
  }

  if (qword_2813CEBD0)
  {
    (*(*qword_2813CEBD0 + 8))(qword_2813CEBD0);
  }

  if (qword_2813CEEE8)
  {
    (*(*qword_2813CEEE8 + 8))(qword_2813CEEE8);
  }

  result = qword_2813CEBD8;
  if (qword_2813CEBD8)
  {
    v1 = *(*qword_2813CEBD8 + 8);

    return v1();
  }

  return result;
}

void sub_2453E9C28(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  wireless_diagnostics::google::protobuf::internal::VerifyVersion(0x1E9808, 2005000, "/Library/Caches/com.apple.xbs/Sources/CoreGEM/Sources/Protobuf/Generated/GnssEmergencyTypes.pb.cc", a4);
  sub_24539DF20();
  operator new();
}

void sub_2453EB7EC()
{
  v0 = qword_2813CE6D0;
  __dmb(0xBu);
  if (v0 != 2)
  {
    v1[0] = MEMORY[0x277D82C40] + 16;
    v1[1] = sub_2453E9C28;
    v2 = 0;
    wireless_diagnostics::google::protobuf::GoogleOnceInitImpl();
    wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(v1);
  }
}

void sub_2453EB870(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

void sub_2453EB890(uint64_t a1, uint64_t a2)
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
      v6 = *(a2 + 16);
      *(a1 + 24) |= 1u;
      *(a1 + 16) = v6;
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

    v7 = *(a2 + 17);
    *(a1 + 24) |= 2u;
    *(a1 + 17) = v7;
    if ((*(a2 + 24) & 4) == 0)
    {
      return;
    }

LABEL_7:
    v5 = *(a2 + 8);
    *(a1 + 24) |= 4u;
    *(a1 + 8) = v5;
  }
}

void sub_2453EB964(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_2453EB97C(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = &unk_2858556F8;
  sub_2453EB7EC();

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);
}

void sub_2453EB9D8(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  sub_2453EB97C(a1);

  JUMPOUT(0x245D6A0D0);
}

uint64_t sub_2453EBA60(uint64_t result)
{
  if (*(result + 24))
  {
    *(result + 16) = 0;
    *(result + 8) = 0;
  }

  *(result + 24) = 0;
  return result;
}

uint64_t sub_2453EBA78(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormatLite *this, unsigned int a3)
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
          goto LABEL_32;
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

      v17[0] = 0;
      v10 = *(this + 1);
      v9 = *(this + 2);
      if (v10 >= v9 || (v11 = *v10, (v11 & 0x80000000) != 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v17);
        if (!result)
        {
          return result;
        }

        v11 = v17[0];
        v12 = *(this + 1);
        v9 = *(this + 2);
      }

      else
      {
        v12 = v10 + 1;
        *(this + 1) = v12;
      }

      *(a1 + 16) = v11 != 0;
      *(a1 + 24) |= 1u;
      if (v12 < v9 && *v12 == 16)
      {
        v13 = v12 + 1;
        *(this + 1) = v13;
LABEL_24:
        v17[0] = 0;
        if (v13 >= v9 || (v15 = *v13, (v15 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v17);
          if (!result)
          {
            return result;
          }

          v15 = v17[0];
          v16 = *(this + 1);
          v9 = *(this + 2);
        }

        else
        {
          v16 = v13 + 1;
          *(this + 1) = v16;
        }

        *(a1 + 17) = v15 != 0;
        *(a1 + 24) |= 2u;
        if (v16 < v9 && *v16 == 25)
        {
          *(this + 1) = v16 + 1;
LABEL_32:
          *v17 = 0;
          if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v17) & 1) == 0)
          {
            return 0;
          }

          *(a1 + 8) = *v17;
          *(a1 + 24) |= 4u;
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
      v13 = *(this + 1);
      v9 = *(this + 2);
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

uint64_t sub_2453EBC74(uint64_t result, uint64_t a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = result;
  v6 = *(result + 24);
  if ((v6 & 1) == 0)
  {
    if ((v6 & 2) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(2, *(v5 + 17), a2, a4);
    if ((*(v5 + 24) & 4) == 0)
    {
      return result;
    }

    goto LABEL_7;
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(1, *(result + 16), a2, a4);
  v6 = *(v5 + 24);
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
  v7 = *(v5 + 8);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(3, a2, v7, a3);
}

uint64_t sub_2453EBD00(uint64_t a1)
{
  v1 = 2 * (*(a1 + 24) & 1) + (*(a1 + 24) & 2);
  if ((*(a1 + 24) & 4) != 0)
  {
    v1 |= 9u;
  }

  if (*(a1 + 24))
  {
    v2 = v1;
  }

  else
  {
    v2 = 0;
  }

  *(a1 + 20) = v2;
  return v2;
}

void sub_2453EBD34(uint64_t a1, void *lpsrc)
{
  if (!__dynamic_cast(lpsrc, MEMORY[0x277D82C38], &unk_285858370, 0))
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  sub_2453EB890(a1, lpsrc);
}

void sub_2453EBDF0(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v24);
  }

  v4 = *(a2 + 124);
  if (v4)
  {
    if (v4)
    {
      v5 = *(a2 + 8);
      *(a1 + 124) |= 1u;
      *(a1 + 8) = v5;
      v4 = *(a2 + 124);
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

    else if ((v4 & 2) == 0)
    {
      goto LABEL_6;
    }

    v6 = *(a2 + 16);
    *(a1 + 124) |= 2u;
    *(a1 + 16) = v6;
    v4 = *(a2 + 124);
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
    v7 = *(a2 + 24);
    *(a1 + 124) |= 4u;
    *(a1 + 24) = v7;
    v4 = *(a2 + 124);
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
    v8 = *(a2 + 32);
    *(a1 + 124) |= 8u;
    *(a1 + 32) = v8;
    v4 = *(a2 + 124);
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
    v9 = *(a2 + 40);
    *(a1 + 124) |= 0x10u;
    *(a1 + 40) = v9;
    v4 = *(a2 + 124);
    if ((v4 & 0x20) == 0)
    {
LABEL_10:
      if ((v4 & 0x40) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_19;
    }

LABEL_18:
    v10 = *(a2 + 48);
    *(a1 + 124) |= 0x20u;
    *(a1 + 48) = v10;
    v4 = *(a2 + 124);
    if ((v4 & 0x40) == 0)
    {
LABEL_11:
      if ((v4 & 0x80) == 0)
      {
        goto LABEL_22;
      }

      goto LABEL_20;
    }

LABEL_19:
    v11 = *(a2 + 56);
    *(a1 + 124) |= 0x40u;
    *(a1 + 56) = v11;
    v4 = *(a2 + 124);
    if ((v4 & 0x80) == 0)
    {
      goto LABEL_22;
    }

LABEL_20:
    v12 = *(a2 + 60);
    if (v12 >= 0x12)
    {
      __assert_rtn("set_method_type", "GnssEmergencyTypes.pb.h", 13227, "::CoreGem::proto::gnss::Emergency::PositionMethod_IsValid(value)");
    }

    *(a1 + 124) |= 0x80u;
    *(a1 + 60) = v12;
    v4 = *(a2 + 124);
  }

LABEL_22:
  if ((v4 & 0xFF00) == 0)
  {
    goto LABEL_36;
  }

  if ((v4 & 0x100) != 0)
  {
    v13 = *(a2 + 64);
    if (v13 >= 4)
    {
      __assert_rtn("set_session_type", "GnssEmergencyTypes.pb.h", 13250, "::CoreGem::proto::gnss::Emergency::PositionSession_IsValid(value)");
    }

    *(a1 + 124) |= 0x100u;
    *(a1 + 64) = v13;
    v4 = *(a2 + 124);
  }

  if ((v4 & 0x200) != 0)
  {
    v14 = *(a2 + 68);
    if (v14 >= 7)
    {
      __assert_rtn("set_protocol_type", "GnssEmergencyTypes.pb.h", 13273, "::CoreGem::proto::gnss::Emergency::PositionProtocol_IsValid(value)");
    }

    *(a1 + 124) |= 0x200u;
    *(a1 + 68) = v14;
    v4 = *(a2 + 124);
  }

  if ((v4 & 0x400) != 0)
  {
    v17 = *(a2 + 72);
    *(a1 + 124) |= 0x400u;
    *(a1 + 72) = v17;
    v4 = *(a2 + 124);
    if ((v4 & 0x800) == 0)
    {
LABEL_31:
      if ((v4 & 0x1000) == 0)
      {
        goto LABEL_32;
      }

      goto LABEL_44;
    }
  }

  else if ((v4 & 0x800) == 0)
  {
    goto LABEL_31;
  }

  v18 = *(a2 + 80);
  *(a1 + 124) |= 0x800u;
  *(a1 + 80) = v18;
  v4 = *(a2 + 124);
  if ((v4 & 0x1000) == 0)
  {
LABEL_32:
    if ((v4 & 0x2000) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_45;
  }

LABEL_44:
  v19 = *(a2 + 88);
  *(a1 + 124) |= 0x1000u;
  *(a1 + 88) = v19;
  v4 = *(a2 + 124);
  if ((v4 & 0x2000) == 0)
  {
LABEL_33:
    if ((v4 & 0x4000) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_47;
  }

LABEL_45:
  v20 = *(a2 + 96);
  if (v20 >= 8)
  {
    __assert_rtn("set_pos_req_type", "GnssEmergencyTypes.pb.h", 13362, "::CoreGem::proto::gnss::Emergency::PositionReqType_IsValid(value)");
  }

  *(a1 + 124) |= 0x2000u;
  *(a1 + 96) = v20;
  v4 = *(a2 + 124);
  if ((v4 & 0x4000) == 0)
  {
LABEL_34:
    if ((v4 & 0x8000) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_35;
  }

LABEL_47:
  v21 = *(a2 + 100);
  if (v21 >= 0x11)
  {
    __assert_rtn("set_error_code", "GnssEmergencyTypes.pb.h", 13385, "::CoreGem::proto::gnss::Emergency::SessionErrorCode_IsValid(value)");
  }

  *(a1 + 124) |= 0x4000u;
  *(a1 + 100) = v21;
  v4 = *(a2 + 124);
  if ((v4 & 0x8000) != 0)
  {
LABEL_35:
    v15 = *(a2 + 104);
    *(a1 + 124) |= 0x8000u;
    *(a1 + 104) = v15;
    v4 = *(a2 + 124);
  }

LABEL_36:
  if ((v4 & 0xFF0000) == 0)
  {
    return;
  }

  if ((v4 & 0x10000) != 0)
  {
    v22 = *(a2 + 105);
    *(a1 + 124) |= 0x10000u;
    *(a1 + 105) = v22;
    v4 = *(a2 + 124);
    if ((v4 & 0x20000) == 0)
    {
LABEL_39:
      if ((v4 & 0x40000) == 0)
      {
        return;
      }

      goto LABEL_40;
    }
  }

  else if ((v4 & 0x20000) == 0)
  {
    goto LABEL_39;
  }

  v23 = *(a2 + 112);
  *(a1 + 124) |= 0x20000u;
  *(a1 + 112) = v23;
  if ((*(a2 + 124) & 0x40000) != 0)
  {
LABEL_40:
    v16 = *(a2 + 108);
    *(a1 + 124) |= 0x40000u;
    *(a1 + 108) = v16;
  }
}