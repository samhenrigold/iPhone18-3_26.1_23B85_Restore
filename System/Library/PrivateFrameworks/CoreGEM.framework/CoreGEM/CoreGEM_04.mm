void sub_2453C9EEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_2453C9F04(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = &unk_285853B08;
  sub_2453BD76C();
  if (qword_2813CE8C8 != a1)
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

    v4 = *(a1 + 6);
    if (v4)
    {
      (*(*v4 + 8))(v4);
    }

    v5 = *(a1 + 7);
    if (v5)
    {
      (*(*v5 + 8))(v5);
    }

    v6 = *(a1 + 8);
    if (v6)
    {
      (*(*v6 + 8))(v6);
    }

    v7 = *(a1 + 9);
    if (v7)
    {
      (*(*v7 + 8))(v7);
    }

    v8 = *(a1 + 11);
    if (v8)
    {
      (*(*v8 + 8))(v8);
    }

    v9 = *(a1 + 12);
    if (v9)
    {
      (*(*v9 + 8))(v9);
    }
  }

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);
}

void sub_2453CA0D0(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  sub_2453C9F04(a1);

  JUMPOUT(0x245D6A0D0);
}

uint64_t sub_2453CA174(uint64_t result)
{
  v1 = result;
  v2 = *(result + 112);
  if (v2)
  {
    if (v2)
    {
      result = *(result + 8);
      if (result)
      {
        result = sub_2453BF19C(result);
        v2 = *(v1 + 112);
      }
    }

    if ((v2 & 2) != 0)
    {
      result = *(v1 + 16);
      if (result)
      {
        result = sub_2453C3D50(result);
        v2 = *(v1 + 112);
      }
    }

    *(v1 + 24) = 0;
    *(v1 + 32) = 0;
    *(v1 + 40) = 0;
    if ((v2 & 0x20) != 0)
    {
      v3 = *(v1 + 48);
      if (v3)
      {
        if (*(v3 + 32))
        {
          *(v3 + 8) = 0;
          *(v3 + 16) = 0;
          *(v3 + 24) = 0;
        }

        *(v3 + 32) = 0;
        v2 = *(v1 + 112);
      }
    }

    if ((v2 & 0x40) != 0)
    {
      v4 = *(v1 + 56);
      if (v4)
      {
        if (*(v4 + 32))
        {
          *(v4 + 8) = 0;
          *(v4 + 16) = 0;
          *(v4 + 24) = 0;
        }

        *(v4 + 32) = 0;
        v2 = *(v1 + 112);
      }
    }

    if ((v2 & 0x80) != 0)
    {
      v5 = *(v1 + 64);
      if (v5)
      {
        if (*(v5 + 48))
        {
          *(v5 + 40) = 0;
          *(v5 + 24) = 0u;
          *(v5 + 8) = 0u;
        }

        *(v5 + 48) = 0;
        v2 = *(v1 + 112);
      }
    }
  }

  if ((v2 & 0xFF00) != 0)
  {
    if ((v2 & 0x100) != 0)
    {
      result = *(v1 + 72);
      if (result)
      {
        result = sub_2453C85B4(result);
        v2 = *(v1 + 112);
      }
    }

    *(v1 + 80) = 0;
    if ((v2 & 0x800) != 0)
    {
      v6 = *(v1 + 88);
      if (v6)
      {
        if (*(v6 + 32))
        {
          *(v6 + 8) = 0;
          *(v6 + 16) = 0;
          *(v6 + 24) = 0;
        }

        *(v6 + 32) = 0;
        v2 = *(v1 + 112);
      }
    }

    *(v1 + 104) = 0;
    if ((v2 & 0x2000) != 0)
    {
      v7 = *(v1 + 96);
      if (v7)
      {
        if (*(v7 + 32))
        {
          *(v7 + 8) = 0;
          *(v7 + 16) = 0;
          *(v7 + 24) = 0;
        }

        *(v7 + 32) = 0;
      }
    }
  }

  *(v1 + 112) = 0;
  return result;
}

uint64_t sub_2453CA2B0(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormatLite *this, unsigned int a3)
{
  while (1)
  {
    v5 = *(this + 1);
    if (v5 < *(this + 2))
    {
      TagFallback = *v5;
      if ((TagFallback & 0x80000000) == 0)
      {
        *(this + 8) = TagFallback;
        *(this + 1) = v5 + 1;
        if (!TagFallback)
        {
          return 1;
        }

        goto LABEL_6;
      }
    }

    TagFallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadTagFallback(this);
    *(this + 8) = TagFallback;
    if (!TagFallback)
    {
      return 1;
    }

LABEL_6:
    v7 = TagFallback & 7;
    switch(TagFallback >> 3)
    {
      case 1u:
        if (v7 != 2)
        {
          goto LABEL_38;
        }

        *(a1 + 112) |= 1u;
        v8 = *(a1 + 8);
        if (!v8)
        {
          operator new();
        }

        v94 = 0;
        v9 = *(this + 1);
        if (v9 >= *(this + 2) || *v9 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v94))
          {
            return 0;
          }
        }

        else
        {
          v94 = *v9;
          *(this + 1) = v9 + 1;
        }

        v20 = *(this + 14);
        v21 = *(this + 15);
        *(this + 14) = v20 + 1;
        if (v20 >= v21)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this);
        if (!sub_2453BF1DC(v8, this, v22) || *(this + 36) != 1)
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

        v26 = *(this + 1);
        if (v26 >= *(this + 2) || *v26 != 18)
        {
          continue;
        }

        *(this + 1) = v26 + 1;
        goto LABEL_50;
      case 2u:
        if (v7 != 2)
        {
          goto LABEL_38;
        }

LABEL_50:
        *(a1 + 112) |= 2u;
        v27 = *(a1 + 16);
        if (!v27)
        {
          operator new();
        }

        v94 = 0;
        v28 = *(this + 1);
        if (v28 >= *(this + 2) || *v28 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v94))
          {
            return 0;
          }
        }

        else
        {
          v94 = *v28;
          *(this + 1) = v28 + 1;
        }

        v29 = *(this + 14);
        v30 = *(this + 15);
        *(this + 14) = v29 + 1;
        if (v29 >= v30)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this);
        if (!sub_2453C3EC8(v27, this, v31) || *(this + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this);
        v32 = *(this + 14);
        v24 = __OFSUB__(v32, 1);
        v33 = v32 - 1;
        if (v33 < 0 == v24)
        {
          *(this + 14) = v33;
        }

        v34 = *(this + 1);
        v10 = *(this + 2);
        if (v34 >= v10 || *v34 != 24)
        {
          continue;
        }

        v14 = v34 + 1;
        *(this + 1) = v14;
LABEL_64:
        if (v14 >= v10 || (v35 = *v14, v35 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(this, (a1 + 24));
          if (!result)
          {
            return result;
          }

          v36 = *(this + 1);
          v10 = *(this + 2);
        }

        else
        {
          *(a1 + 24) = v35;
          v36 = v14 + 1;
          *(this + 1) = v36;
        }

        *(a1 + 112) |= 4u;
        if (v36 >= v10 || *v36 != 32)
        {
          continue;
        }

        v15 = v36 + 1;
        *(this + 1) = v15;
LABEL_72:
        if (v15 >= v10 || (v38 = *v15, v38 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(this, (a1 + 32));
          if (!result)
          {
            return result;
          }

          v39 = *(this + 1);
          v10 = *(this + 2);
        }

        else
        {
          *(a1 + 32) = v38;
          v39 = v15 + 1;
          *(this + 1) = v39;
        }

        *(a1 + 112) |= 8u;
        if (v39 >= v10 || *v39 != 40)
        {
          continue;
        }

        v11 = v39 + 1;
        *(this + 1) = v11;
LABEL_80:
        if (v11 >= v10 || (v40 = *v11, v40 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(this, (a1 + 40));
          if (!result)
          {
            return result;
          }

          v41 = *(this + 1);
          v10 = *(this + 2);
        }

        else
        {
          *(a1 + 40) = v40;
          v41 = v11 + 1;
          *(this + 1) = v41;
        }

        v16 = *(a1 + 112) | 0x10;
        *(a1 + 112) = v16;
        if (v41 >= v10 || *v41 != 50)
        {
          continue;
        }

        *(this + 1) = v41 + 1;
LABEL_88:
        *(a1 + 112) = v16 | 0x20;
        v42 = *(a1 + 48);
        if (!v42)
        {
          operator new();
        }

        v94 = 0;
        v43 = *(this + 1);
        if (v43 >= *(this + 2) || *v43 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v94))
          {
            return 0;
          }
        }

        else
        {
          v94 = *v43;
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
        if (!sub_2453C5394(v42, this, v46) || *(this + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this);
        v47 = *(this + 14);
        v24 = __OFSUB__(v47, 1);
        v48 = v47 - 1;
        if (v48 < 0 == v24)
        {
          *(this + 14) = v48;
        }

        v49 = *(this + 1);
        if (v49 >= *(this + 2) || *v49 != 58)
        {
          continue;
        }

        *(this + 1) = v49 + 1;
LABEL_102:
        *(a1 + 112) |= 0x40u;
        v50 = *(a1 + 56);
        if (!v50)
        {
          operator new();
        }

        v94 = 0;
        v51 = *(this + 1);
        if (v51 >= *(this + 2) || *v51 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v94))
          {
            return 0;
          }
        }

        else
        {
          v94 = *v51;
          *(this + 1) = v51 + 1;
        }

        v52 = *(this + 14);
        v53 = *(this + 15);
        *(this + 14) = v52 + 1;
        if (v52 >= v53)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this);
        if (!sub_2453C58E0(v50, this, v54) || *(this + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this);
        v55 = *(this + 14);
        v24 = __OFSUB__(v55, 1);
        v56 = v55 - 1;
        if (v56 < 0 == v24)
        {
          *(this + 14) = v56;
        }

        v57 = *(this + 1);
        if (v57 >= *(this + 2) || *v57 != 66)
        {
          continue;
        }

        *(this + 1) = v57 + 1;
LABEL_116:
        *(a1 + 112) |= 0x80u;
        v58 = *(a1 + 64);
        if (!v58)
        {
          operator new();
        }

        v94 = 0;
        v59 = *(this + 1);
        if (v59 >= *(this + 2) || *v59 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v94))
          {
            return 0;
          }
        }

        else
        {
          v94 = *v59;
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
        if (!sub_2453C6498(v58, this, v62) || *(this + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this);
        v63 = *(this + 14);
        v24 = __OFSUB__(v63, 1);
        v64 = v63 - 1;
        if (v64 < 0 == v24)
        {
          *(this + 14) = v64;
        }

        v65 = *(this + 1);
        if (v65 >= *(this + 2) || *v65 != 74)
        {
          continue;
        }

        *(this + 1) = v65 + 1;
LABEL_130:
        *(a1 + 112) |= 0x100u;
        v66 = *(a1 + 72);
        if (!v66)
        {
          operator new();
        }

        v94 = 0;
        v67 = *(this + 1);
        if (v67 >= *(this + 2) || *v67 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v94))
          {
            return 0;
          }
        }

        else
        {
          v94 = *v67;
          *(this + 1) = v67 + 1;
        }

        v68 = *(this + 14);
        v69 = *(this + 15);
        *(this + 14) = v68 + 1;
        if (v68 >= v69)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this);
        if (!sub_2453C8718(v66, this, v70) || *(this + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this);
        v71 = *(this + 14);
        v24 = __OFSUB__(v71, 1);
        v72 = v71 - 1;
        if (v72 < 0 == v24)
        {
          *(this + 14) = v72;
        }

        v73 = *(this + 1);
        if (v73 >= *(this + 2) || *v73 != 85)
        {
          continue;
        }

        *(this + 1) = v73 + 1;
LABEL_144:
        v94 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(this, &v94) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 80) = v94;
        *(a1 + 112) |= 0x200u;
        v74 = *(this + 1);
        v18 = *(this + 2);
        if (v74 >= v18 || *v74 != 88)
        {
          continue;
        }

        v19 = v74 + 1;
        *(this + 1) = v19;
LABEL_148:
        v94 = 0;
        if (v19 >= v18 || (v75 = *v19, (v75 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v94);
          if (!result)
          {
            return result;
          }

          v75 = v94;
        }

        else
        {
          *(this + 1) = v19 + 1;
        }

        if (v75 <= 4)
        {
          *(a1 + 112) |= 0x400u;
          *(a1 + 84) = v75;
        }

        v76 = *(this + 1);
        if (v76 >= *(this + 2) || *v76 != 98)
        {
          continue;
        }

        *(this + 1) = v76 + 1;
LABEL_158:
        *(a1 + 112) |= 0x800u;
        v77 = *(a1 + 88);
        if (!v77)
        {
          operator new();
        }

        v94 = 0;
        v78 = *(this + 1);
        if (v78 >= *(this + 2) || *v78 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v94))
          {
            return 0;
          }
        }

        else
        {
          v94 = *v78;
          *(this + 1) = v78 + 1;
        }

        v79 = *(this + 14);
        v80 = *(this + 15);
        *(this + 14) = v79 + 1;
        if (v79 >= v80)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this);
        if (!sub_2453C58E0(v77, this, v81) || *(this + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this);
        v82 = *(this + 14);
        v24 = __OFSUB__(v82, 1);
        v83 = v82 - 1;
        if (v83 < 0 == v24)
        {
          *(this + 14) = v83;
        }

        v84 = *(this + 1);
        v12 = *(this + 2);
        if (v84 >= v12 || *v84 != 104)
        {
          continue;
        }

        v13 = v84 + 1;
        *(this + 1) = v13;
LABEL_172:
        v94 = 0;
        if (v13 >= v12 || (v85 = *v13, (v85 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v94);
          if (!result)
          {
            return result;
          }

          v85 = v94;
          v86 = *(this + 1);
          v12 = *(this + 2);
        }

        else
        {
          v86 = v13 + 1;
          *(this + 1) = v86;
        }

        *(a1 + 104) = v85 != 0;
        v17 = *(a1 + 112) | 0x1000;
        *(a1 + 112) = v17;
        if (v86 >= v12 || *v86 != 114)
        {
          continue;
        }

        *(this + 1) = v86 + 1;
LABEL_180:
        *(a1 + 112) = v17 | 0x2000;
        v87 = *(a1 + 96);
        if (!v87)
        {
          operator new();
        }

        v94 = 0;
        v88 = *(this + 1);
        if (v88 >= *(this + 2) || *v88 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v94))
          {
            return 0;
          }
        }

        else
        {
          v94 = *v88;
          *(this + 1) = v88 + 1;
        }

        v89 = *(this + 14);
        v90 = *(this + 15);
        *(this + 14) = v89 + 1;
        if (v89 >= v90)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this);
        if (!sub_2453C5E4C(v87, this, v91) || *(this + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this);
        v92 = *(this + 14);
        v24 = __OFSUB__(v92, 1);
        v93 = v92 - 1;
        if (v93 < 0 == v24)
        {
          *(this + 14) = v93;
        }

        if (*(this + 1) == *(this + 2) && (*(this + 11) || *(this + 6) == *(this + 10)))
        {
          *(this + 8) = 0;
          result = 1;
          *(this + 36) = 1;
          return result;
        }

        break;
      case 3u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_38;
        }

        v14 = *(this + 1);
        v10 = *(this + 2);
        goto LABEL_64;
      case 4u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_38;
        }

        v15 = *(this + 1);
        v10 = *(this + 2);
        goto LABEL_72;
      case 5u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_38;
        }

        v11 = *(this + 1);
        v10 = *(this + 2);
        goto LABEL_80;
      case 6u:
        if (v7 != 2)
        {
          goto LABEL_38;
        }

        v16 = *(a1 + 112);
        goto LABEL_88;
      case 7u:
        if (v7 == 2)
        {
          goto LABEL_102;
        }

        goto LABEL_38;
      case 8u:
        if (v7 == 2)
        {
          goto LABEL_116;
        }

        goto LABEL_38;
      case 9u:
        if (v7 != 2)
        {
          goto LABEL_38;
        }

        goto LABEL_130;
      case 0xAu:
        if (v7 == 5)
        {
          goto LABEL_144;
        }

        goto LABEL_38;
      case 0xBu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_38;
        }

        v19 = *(this + 1);
        v18 = *(this + 2);
        goto LABEL_148;
      case 0xCu:
        if (v7 == 2)
        {
          goto LABEL_158;
        }

        goto LABEL_38;
      case 0xDu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_38;
        }

        v13 = *(this + 1);
        v12 = *(this + 2);
        goto LABEL_172;
      case 0xEu:
        if (v7 != 2)
        {
          goto LABEL_38;
        }

        v17 = *(a1 + 112);
        goto LABEL_180;
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

uint64_t sub_2453CAF28(uint64_t result, const wireless_diagnostics::google::protobuf::MessageLite *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = result;
  v6 = *(result + 112);
  if (v6)
  {
    v7 = *(result + 8);
    if (!v7)
    {
      sub_2453BD76C();
      v7 = *(qword_2813CE8C8 + 8);
    }

    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(1, v7, a2, a4);
    v6 = *(v5 + 112);
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

  v8 = *(v5 + 16);
  if (!v8)
  {
    sub_2453BD76C();
    v8 = *(qword_2813CE8C8 + 16);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(2, v8, a2, a4);
  v6 = *(v5 + 112);
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
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(3, *(v5 + 24), a2, a4);
  v6 = *(v5 + 112);
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
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(4, *(v5 + 32), a2, a4);
  v6 = *(v5 + 112);
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
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(5, *(v5 + 40), a2, a4);
  v6 = *(v5 + 112);
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
  v9 = *(v5 + 48);
  if (!v9)
  {
    sub_2453BD76C();
    v9 = *(qword_2813CE8C8 + 48);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(6, v9, a2, a4);
  v6 = *(v5 + 112);
  if ((v6 & 0x40) == 0)
  {
LABEL_8:
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_31;
  }

LABEL_28:
  v10 = *(v5 + 56);
  if (!v10)
  {
    sub_2453BD76C();
    v10 = *(qword_2813CE8C8 + 56);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(7, v10, a2, a4);
  v6 = *(v5 + 112);
  if ((v6 & 0x80) == 0)
  {
LABEL_9:
    if ((v6 & 0x100) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_34;
  }

LABEL_31:
  v11 = *(v5 + 64);
  if (!v11)
  {
    sub_2453BD76C();
    v11 = *(qword_2813CE8C8 + 64);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(8, v11, a2, a4);
  v6 = *(v5 + 112);
  if ((v6 & 0x100) == 0)
  {
LABEL_10:
    if ((v6 & 0x200) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_37;
  }

LABEL_34:
  v12 = *(v5 + 72);
  if (!v12)
  {
    sub_2453BD76C();
    v12 = *(qword_2813CE8C8 + 72);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(9, v12, a2, a4);
  v6 = *(v5 + 112);
  if ((v6 & 0x200) == 0)
  {
LABEL_11:
    if ((v6 & 0x400) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_38;
  }

LABEL_37:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(0xA, a2, *(v5 + 80), a3);
  v6 = *(v5 + 112);
  if ((v6 & 0x400) == 0)
  {
LABEL_12:
    if ((v6 & 0x800) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_39;
  }

LABEL_38:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(0xB, *(v5 + 84), a2, a4);
  v6 = *(v5 + 112);
  if ((v6 & 0x800) == 0)
  {
LABEL_13:
    if ((v6 & 0x1000) == 0)
    {
      goto LABEL_14;
    }

LABEL_42:
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(0xD, *(v5 + 104), a2, a4);
    if ((*(v5 + 112) & 0x2000) == 0)
    {
      return result;
    }

    goto LABEL_43;
  }

LABEL_39:
  v13 = *(v5 + 88);
  if (!v13)
  {
    sub_2453BD76C();
    v13 = *(qword_2813CE8C8 + 88);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0xC, v13, a2, a4);
  v6 = *(v5 + 112);
  if ((v6 & 0x1000) != 0)
  {
    goto LABEL_42;
  }

LABEL_14:
  if ((v6 & 0x2000) == 0)
  {
    return result;
  }

LABEL_43:
  v14 = *(v5 + 96);
  if (!v14)
  {
    sub_2453BD76C();
    v14 = *(qword_2813CE8C8 + 96);
  }

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0xE, v14, a2, a4);
}

uint64_t sub_2453CB188(uint64_t a1, unint64_t a2)
{
  v3 = *(a1 + 112);
  if (!v3)
  {
    v4 = 0;
    goto LABEL_50;
  }

  if ((v3 & 1) == 0)
  {
    v4 = 0;
    if ((v3 & 2) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_12;
  }

  v5 = *(a1 + 8);
  if (!v5)
  {
    sub_2453BD76C();
    v5 = *(qword_2813CE8C8 + 8);
  }

  v6 = sub_2453BF4AC(v5, a2);
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
  v3 = *(a1 + 112);
  if ((v3 & 2) != 0)
  {
LABEL_12:
    v9 = *(a1 + 16);
    if (!v9)
    {
      sub_2453BD76C();
      v9 = *(qword_2813CE8C8 + 16);
    }

    v10 = sub_2453C4D48(v9, a2);
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
    v3 = *(a1 + 112);
  }

LABEL_18:
  if ((v3 & 4) != 0)
  {
    v4 = v4 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(a1 + 24)) + 1;
    v3 = *(a1 + 112);
    if ((v3 & 8) == 0)
    {
LABEL_20:
      if ((v3 & 0x10) == 0)
      {
        goto LABEL_21;
      }

      goto LABEL_27;
    }
  }

  else if ((v3 & 8) == 0)
  {
    goto LABEL_20;
  }

  v4 = v4 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(a1 + 32)) + 1;
  v3 = *(a1 + 112);
  if ((v3 & 0x10) == 0)
  {
LABEL_21:
    if ((v3 & 0x20) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_28;
  }

LABEL_27:
  v4 = v4 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(a1 + 40)) + 1;
  v3 = *(a1 + 112);
  if ((v3 & 0x20) == 0)
  {
LABEL_22:
    if ((v3 & 0x40) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_36;
  }

LABEL_28:
  v13 = *(a1 + 48);
  if (!v13)
  {
    sub_2453BD76C();
    v13 = *(qword_2813CE8C8 + 48);
  }

  v14 = *(v13 + 32);
  v15 = ((v14 << 31) >> 31) & 9;
  if ((v14 & 2) != 0)
  {
    v15 += 9;
  }

  v16 = v15 + ((v14 >> 1) & 2);
  if (*(v13 + 32))
  {
    v17 = v16;
  }

  else
  {
    v17 = 0;
  }

  *(v13 + 28) = v17;
  v4 = (v4 + v17 + 2);
  v3 = *(a1 + 112);
  if ((v3 & 0x40) == 0)
  {
LABEL_23:
    if ((v3 & 0x80) == 0)
    {
      goto LABEL_50;
    }

    goto LABEL_44;
  }

LABEL_36:
  v18 = *(a1 + 56);
  if (!v18)
  {
    sub_2453BD76C();
    v18 = *(qword_2813CE8C8 + 56);
  }

  v19 = *(v18 + 32);
  v20 = ((v19 << 31) >> 31) & 9;
  if ((v19 & 2) != 0)
  {
    v20 += 9;
  }

  v21 = v20 + ((v19 >> 1) & 2);
  if (*(v18 + 32))
  {
    v22 = v21;
  }

  else
  {
    v22 = 0;
  }

  *(v18 + 28) = v22;
  v4 = (v4 + v22 + 2);
  v3 = *(a1 + 112);
  if ((v3 & 0x80) != 0)
  {
LABEL_44:
    v23 = *(a1 + 64);
    if (!v23)
    {
      sub_2453BD76C();
      v23 = *(qword_2813CE8C8 + 64);
    }

    v24 = sub_2453C6820(v23, a2);
    v25 = v24;
    if (v24 >= 0x80)
    {
      v26 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v24);
    }

    else
    {
      v26 = 1;
    }

    v4 = (v4 + v25 + v26 + 1);
    v3 = *(a1 + 112);
  }

LABEL_50:
  if ((v3 & 0xFF00) != 0)
  {
    if ((v3 & 0x100) != 0)
    {
      v27 = *(a1 + 72);
      if (!v27)
      {
        sub_2453BD76C();
        v27 = *(qword_2813CE8C8 + 72);
      }

      v28 = sub_2453C94AC(v27, a2);
      v29 = v28;
      if (v28 >= 0x80)
      {
        v30 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v28);
      }

      else
      {
        v30 = 1;
      }

      LODWORD(v4) = v4 + v29 + v30 + 1;
      v3 = *(a1 + 112);
    }

    if ((v3 & 0x200) != 0)
    {
      LODWORD(v4) = v4 + 5;
    }

    if ((v3 & 0x400) != 0)
    {
      v31 = *(a1 + 84);
      if ((v31 & 0x80000000) != 0)
      {
        v32 = 11;
      }

      else if (v31 >= 0x80)
      {
        v32 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v31) + 1;
        v3 = *(a1 + 112);
      }

      else
      {
        v32 = 2;
      }

      LODWORD(v4) = v32 + v4;
    }

    if ((v3 & 0x800) != 0)
    {
      v33 = *(a1 + 88);
      if (!v33)
      {
        sub_2453BD76C();
        v33 = *(qword_2813CE8C8 + 88);
      }

      v34 = *(v33 + 32);
      v35 = ((v34 << 31) >> 31) & 9;
      if ((v34 & 2) != 0)
      {
        v35 += 9;
      }

      v36 = v35 + ((v34 >> 1) & 2);
      if (*(v33 + 32))
      {
        v37 = v36;
      }

      else
      {
        v37 = 0;
      }

      *(v33 + 28) = v37;
      LODWORD(v4) = v4 + v37 + 2;
      v3 = *(a1 + 112);
    }

    v4 = ((v3 >> 11) & 2) + v4;
    if ((v3 & 0x2000) != 0)
    {
      v38 = *(a1 + 96);
      if (!v38)
      {
        sub_2453BD76C();
        v38 = *(qword_2813CE8C8 + 96);
      }

      v4 = v4 + sub_2453C6158(v38) + 2;
    }
  }

  *(a1 + 108) = v4;
  return v4;
}

void sub_2453CB4F4(uint64_t a1, void *lpsrc)
{
  if (!__dynamic_cast(lpsrc, MEMORY[0x277D82C38], &unk_285854A28, 0))
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  sub_2453C9908(a1, lpsrc);
}

float sub_2453CB5B0(uint64_t a1, uint64_t a2)
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
          goto LABEL_7;
        }

        goto LABEL_13;
      }
    }

    else if ((*(a2 + 32) & 2) == 0)
    {
      goto LABEL_6;
    }

    result = *(a2 + 12);
    *(a1 + 32) |= 2u;
    *(a1 + 12) = result;
    v5 = *(a2 + 32);
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
    result = *(a2 + 16);
    *(a1 + 32) |= 4u;
    *(a1 + 16) = result;
    v5 = *(a2 + 32);
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
    result = *(a2 + 20);
    *(a1 + 32) |= 8u;
    *(a1 + 20) = result;
    if ((*(a2 + 32) & 0x10) == 0)
    {
      return result;
    }

LABEL_9:
    v6 = *(a2 + 24);
    *(a1 + 32) |= 0x10u;
    *(a1 + 24) = v6;
  }

  return result;
}

void sub_2453CB6C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_2453CB6DC(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = &unk_285853B80;
  sub_2453BD76C();

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);
}

void sub_2453CB738(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  sub_2453CB6DC(a1);

  JUMPOUT(0x245D6A0D0);
}

uint64_t sub_2453CB7C4(uint64_t result)
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

uint64_t sub_2453CB7DC(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormatLite *this, unsigned int a3)
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
          if (v7 != 2 || v8 != 5)
          {
            goto LABEL_21;
          }

          goto LABEL_28;
        }

        if (v8 != 5)
        {
          goto LABEL_21;
        }

        v18 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(this, &v18) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 8) = v18;
        *(a1 + 32) |= 1u;
        v11 = *(this + 1);
        if (v11 < *(this + 2) && *v11 == 21)
        {
          *(this + 1) = v11 + 1;
LABEL_28:
          v18 = 0;
          if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(this, &v18) & 1) == 0)
          {
            return 0;
          }

          *(a1 + 12) = v18;
          *(a1 + 32) |= 2u;
          v12 = *(this + 1);
          if (v12 < *(this + 2) && *v12 == 29)
          {
            *(this + 1) = v12 + 1;
LABEL_32:
            v18 = 0;
            if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(this, &v18) & 1) == 0)
            {
              return 0;
            }

            *(a1 + 16) = v18;
            *(a1 + 32) |= 4u;
            v13 = *(this + 1);
            if (v13 < *(this + 2) && *v13 == 37)
            {
              *(this + 1) = v13 + 1;
              goto LABEL_36;
            }
          }
        }
      }

      if (v7 == 3)
      {
        if (v8 != 5)
        {
          goto LABEL_21;
        }

        goto LABEL_32;
      }

      if (v7 != 4)
      {
        break;
      }

      if (v8 != 5)
      {
        goto LABEL_21;
      }

LABEL_36:
      v18 = 0;
      if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(this, &v18) & 1) == 0)
      {
        return 0;
      }

      *(a1 + 20) = v18;
      *(a1 + 32) |= 8u;
      v14 = *(this + 1);
      v9 = *(this + 2);
      if (v14 < v9 && *v14 == 40)
      {
        v10 = v14 + 1;
        *(this + 1) = v10;
LABEL_40:
        v18 = 0;
        if (v10 >= v9 || (v15 = *v10, (v15 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v18);
          if (!result)
          {
            return result;
          }

          v15 = v18;
          v16 = *(this + 1);
          v9 = *(this + 2);
        }

        else
        {
          v16 = v10 + 1;
          *(this + 1) = v16;
        }

        *(a1 + 24) = v15 != 0;
        *(a1 + 32) |= 0x10u;
        if (v16 == v9 && (*(this + 11) || *(this + 6) == *(this + 10)))
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
      goto LABEL_40;
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

uint64_t sub_2453CBA78(uint64_t result, uint64_t a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = result;
  v6 = *(result + 32);
  if (v6)
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(1, a2, *(result + 8), a3);
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

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(2, a2, *(v5 + 12), a3);
  v6 = *(v5 + 32);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

LABEL_10:
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(4, a2, *(v5 + 20), a3);
    if ((*(v5 + 32) & 0x10) == 0)
    {
      return result;
    }

    goto LABEL_11;
  }

LABEL_9:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(3, a2, *(v5 + 16), a3);
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
  v7 = *(v5 + 24);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(5, v7, a2, a4);
}

uint64_t sub_2453CBB3C(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    v2 = ((v1 << 31) >> 31) & 5;
    if ((v1 & 2) != 0)
    {
      v2 += 5;
    }

    if ((v1 & 4) != 0)
    {
      v2 += 5;
    }

    if ((v1 & 8) != 0)
    {
      v2 += 5;
    }

    v3 = v2 + ((v1 >> 3) & 2);
  }

  else
  {
    v3 = 0;
  }

  *(a1 + 28) = v3;
  return v3;
}

float sub_2453CBB98(uint64_t a1, void *lpsrc)
{
  if (!__dynamic_cast(lpsrc, MEMORY[0x277D82C38], &unk_285854A40, 0))
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  return sub_2453CB5B0(a1, lpsrc);
}

double sub_2453CBC54(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v6);
  }

  LOBYTE(v5) = *(a2 + 52);
  if (v5)
  {
    if (*(a2 + 52))
    {
      result = *(a2 + 8);
      *(a1 + 52) |= 1u;
      *(a1 + 8) = result;
      v5 = *(a2 + 52);
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

    else if ((*(a2 + 52) & 2) == 0)
    {
      goto LABEL_6;
    }

    result = *(a2 + 16);
    *(a1 + 52) |= 2u;
    *(a1 + 16) = result;
    v5 = *(a2 + 52);
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
    *(a1 + 52) |= 4u;
    *(a1 + 24) = result;
    v5 = *(a2 + 52);
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
    *(a1 + 52) |= 8u;
    *(a1 + 32) = result;
    if ((*(a2 + 52) & 0x10) == 0)
    {
      return result;
    }

LABEL_9:
    result = *(a2 + 40);
    *(a1 + 52) |= 0x10u;
    *(a1 + 40) = result;
  }

  return result;
}

void sub_2453CBD68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_2453CBD80(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = &unk_285853BF8;
  sub_2453BD76C();

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);
}

void sub_2453CBDDC(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  sub_2453CBD80(a1);

  JUMPOUT(0x245D6A0D0);
}

uint64_t sub_2453CBE6C(uint64_t result)
{
  if (*(result + 52))
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
  }

  *(result + 52) = 0;
  return result;
}

uint64_t sub_2453CBE8C(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormatLite *this, unsigned int a3)
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
            goto LABEL_21;
          }

          goto LABEL_32;
        }

        if (v7 == 4)
        {
          if (v8 != 1)
          {
            goto LABEL_21;
          }

LABEL_36:
          v14 = 0;
          if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, &v14) & 1) == 0)
          {
            return 0;
          }

          *(a1 + 32) = v14;
          *(a1 + 52) |= 8u;
          v12 = *(this + 1);
          if (v12 < *(this + 2) && *v12 == 41)
          {
            *(this + 1) = v12 + 1;
            goto LABEL_40;
          }
        }

        else
        {
          if (v7 != 5 || v8 != 1)
          {
            goto LABEL_21;
          }

LABEL_40:
          v14 = 0;
          if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, &v14) & 1) == 0)
          {
            return 0;
          }

          *(a1 + 40) = v14;
          *(a1 + 52) |= 0x10u;
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

      if (v8 != 1)
      {
        goto LABEL_21;
      }

      v14 = 0;
      if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, &v14) & 1) == 0)
      {
        return 0;
      }

      *(a1 + 8) = v14;
      *(a1 + 52) |= 1u;
      v9 = *(this + 1);
      if (v9 < *(this + 2) && *v9 == 17)
      {
        *(this + 1) = v9 + 1;
LABEL_28:
        v14 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, &v14) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 16) = v14;
        *(a1 + 52) |= 2u;
        v10 = *(this + 1);
        if (v10 < *(this + 2) && *v10 == 25)
        {
          *(this + 1) = v10 + 1;
LABEL_32:
          v14 = 0;
          if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, &v14) & 1) == 0)
          {
            return 0;
          }

          *(a1 + 24) = v14;
          *(a1 + 52) |= 4u;
          v11 = *(this + 1);
          if (v11 < *(this + 2) && *v11 == 33)
          {
            *(this + 1) = v11 + 1;
            goto LABEL_36;
          }
        }
      }
    }

    if (v7 == 2 && v8 == 1)
    {
      goto LABEL_28;
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

uint64_t sub_2453CC104(uint64_t result, uint64_t a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3)
{
  v4 = result;
  v5 = *(result + 52);
  if (v5)
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(1, a2, *(result + 8), a3);
    v5 = *(v4 + 52);
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

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(2, a2, *(v4 + 16), a3);
  v5 = *(v4 + 52);
  if ((v5 & 4) == 0)
  {
LABEL_4:
    if ((v5 & 8) == 0)
    {
      goto LABEL_5;
    }

LABEL_10:
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(4, a2, *(v4 + 32), a3);
    if ((*(v4 + 52) & 0x10) == 0)
    {
      return result;
    }

    goto LABEL_11;
  }

LABEL_9:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(3, a2, *(v4 + 24), a3);
  v5 = *(v4 + 52);
  if ((v5 & 8) != 0)
  {
    goto LABEL_10;
  }

LABEL_5:
  if ((v5 & 0x10) == 0)
  {
    return result;
  }

LABEL_11:
  v6 = *(v4 + 40);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(5, a2, v6, a3);
}

uint64_t sub_2453CC1C8(uint64_t a1)
{
  v1 = *(a1 + 52);
  if (*(a1 + 52))
  {
    v2 = ((v1 << 31) >> 31) & 9;
    if ((v1 & 2) != 0)
    {
      v2 += 9;
    }

    if ((v1 & 4) != 0)
    {
      v2 += 9;
    }

    if ((v1 & 8) != 0)
    {
      v2 += 9;
    }

    if ((v1 & 0x10) != 0)
    {
      v1 = v2 + 9;
    }

    else
    {
      v1 = v2;
    }
  }

  *(a1 + 48) = v1;
  return v1;
}

double sub_2453CC218(uint64_t a1, void *lpsrc)
{
  if (!__dynamic_cast(lpsrc, MEMORY[0x277D82C38], &unk_285854A58, 0))
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  return sub_2453CBC54(a1, lpsrc);
}

double sub_2453CC2D4(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v7);
  }

  LOBYTE(v5) = *(a2 + 40);
  if (v5)
  {
    if (*(a2 + 40))
    {
      v6 = *(a2 + 8);
      *(a1 + 40) |= 1u;
      *(a1 + 8) = v6;
      v5 = *(a2 + 40);
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

    else if ((*(a2 + 40) & 2) == 0)
    {
      goto LABEL_6;
    }

    LODWORD(result) = *(a2 + 16);
    *(a1 + 40) |= 2u;
    *(a1 + 16) = LODWORD(result);
    v5 = *(a2 + 40);
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
    LODWORD(result) = *(a2 + 20);
    *(a1 + 40) |= 4u;
    *(a1 + 20) = LODWORD(result);
    v5 = *(a2 + 40);
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
    result = *(a2 + 24);
    *(a1 + 40) |= 8u;
    *(a1 + 24) = result;
    if ((*(a2 + 40) & 0x10) == 0)
    {
      return result;
    }

LABEL_9:
    LODWORD(result) = *(a2 + 32);
    *(a1 + 40) |= 0x10u;
    *(a1 + 32) = LODWORD(result);
  }

  return result;
}

void sub_2453CC3E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_2453CC400(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = &unk_285853C70;
  sub_2453BD76C();

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);
}

void sub_2453CC45C(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  sub_2453CC400(a1);

  JUMPOUT(0x245D6A0D0);
}

uint64_t sub_2453CC4EC(uint64_t result)
{
  if (*(result + 40))
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 32) = 0;
    *(result + 24) = 0;
  }

  *(result + 40) = 0;
  return result;
}

uint64_t sub_2453CC508(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormatLite *this, unsigned int a3)
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
          if (v8 != 5)
          {
            goto LABEL_21;
          }

          goto LABEL_36;
        }

        if (v7 == 4)
        {
          if (v8 != 1)
          {
            goto LABEL_21;
          }

LABEL_40:
          *v17 = 0;
          if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v17) & 1) == 0)
          {
            return 0;
          }

          *(a1 + 24) = *v17;
          *(a1 + 40) |= 8u;
          v16 = *(this + 1);
          if (v16 < *(this + 2) && *v16 == 45)
          {
            *(this + 1) = v16 + 1;
            goto LABEL_44;
          }
        }

        else
        {
          if (v7 != 5 || v8 != 5)
          {
            goto LABEL_21;
          }

LABEL_44:
          v17[0] = 0;
          if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(this, v17) & 1) == 0)
          {
            return 0;
          }

          *(a1 + 32) = v17[0];
          *(a1 + 40) |= 0x10u;
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
        goto LABEL_21;
      }

      *v17 = 0;
      v10 = *(this + 1);
      v9 = *(this + 2);
      if (v10 >= v9 || (v11 = *v10, v11 < 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(this, v17);
        if (!result)
        {
          return result;
        }

        v11 = *v17;
        v12 = *(this + 1);
        v9 = *(this + 2);
      }

      else
      {
        v12 = v10 + 1;
        *(this + 1) = v12;
      }

      *(a1 + 8) = v11;
      *(a1 + 40) |= 1u;
      if (v12 < v9 && *v12 == 21)
      {
        *(this + 1) = v12 + 1;
LABEL_32:
        v17[0] = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(this, v17) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 16) = v17[0];
        *(a1 + 40) |= 2u;
        v14 = *(this + 1);
        if (v14 < *(this + 2) && *v14 == 29)
        {
          *(this + 1) = v14 + 1;
LABEL_36:
          v17[0] = 0;
          if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(this, v17) & 1) == 0)
          {
            return 0;
          }

          *(a1 + 20) = v17[0];
          *(a1 + 40) |= 4u;
          v15 = *(this + 1);
          if (v15 < *(this + 2) && *v15 == 33)
          {
            *(this + 1) = v15 + 1;
            goto LABEL_40;
          }
        }
      }
    }

    if (v7 == 2 && v8 == 5)
    {
      goto LABEL_32;
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

uint64_t sub_2453CC79C(uint64_t result, uint64_t a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = result;
  v6 = *(result + 40);
  if (v6)
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt64(1, *(result + 8), a2, a4);
    v6 = *(v5 + 40);
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

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(2, a2, *(v5 + 16), a3);
  v6 = *(v5 + 40);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

LABEL_10:
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(4, a2, *(v5 + 24), a3);
    if ((*(v5 + 40) & 0x10) == 0)
    {
      return result;
    }

    goto LABEL_11;
  }

LABEL_9:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(3, a2, *(v5 + 20), a3);
  v6 = *(v5 + 40);
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
  v7 = *(v5 + 32);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(5, a2, v7, a3);
}

uint64_t sub_2453CC860(uint64_t a1, unint64_t a2)
{
  LOBYTE(v3) = *(a1 + 40);
  if (v3)
  {
    if (*(a1 + 40))
    {
      v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(a1 + 8)) + 1;
      v3 = *(a1 + 40);
    }

    else
    {
      v4 = 0;
    }

    if ((v3 & 2) != 0)
    {
      v4 += 5;
    }

    if ((v3 & 4) != 0)
    {
      v4 += 5;
    }

    if ((v3 & 8) != 0)
    {
      v4 += 9;
    }

    if ((v3 & 0x10) != 0)
    {
      result = v4 + 5;
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

  *(a1 + 36) = result;
  return result;
}

double sub_2453CC8E0(uint64_t a1, void *lpsrc)
{
  if (!__dynamic_cast(lpsrc, MEMORY[0x277D82C38], &unk_285854A70, 0))
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  return sub_2453CC2D4(a1, lpsrc);
}

double sub_2453CC99C(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v13);
  }

  LOBYTE(v5) = *(a2 + 44);
  if (!v5)
  {
    return result;
  }

  if ((*(a2 + 44) & 1) == 0)
  {
    if ((*(a2 + 44) & 2) == 0)
    {
      goto LABEL_6;
    }

LABEL_10:
    *(a1 + 44) |= 2u;
    v7 = *(a1 + 16);
    if (!v7)
    {
      operator new();
    }

    v8 = *(a2 + 16);
    if (!v8)
    {
      sub_2453BD76C();
      v8 = *(qword_2813CE8E8 + 16);
    }

    *&result = sub_2453CB5B0(v7, v8);
    v5 = *(a2 + 44);
    if ((v5 & 4) == 0)
    {
LABEL_7:
      if ((v5 & 8) == 0)
      {
        return result;
      }

      goto LABEL_20;
    }

    goto LABEL_15;
  }

  v6 = *(a2 + 8);
  *(a1 + 44) |= 1u;
  *(a1 + 8) = v6;
  v5 = *(a2 + 44);
  if ((v5 & 2) != 0)
  {
    goto LABEL_10;
  }

LABEL_6:
  if ((v5 & 4) == 0)
  {
    goto LABEL_7;
  }

LABEL_15:
  *(a1 + 44) |= 4u;
  v9 = *(a1 + 24);
  if (!v9)
  {
    operator new();
  }

  v10 = *(a2 + 24);
  if (!v10)
  {
    sub_2453BD76C();
    v10 = *(qword_2813CE8E8 + 24);
  }

  result = sub_2453CBC54(v9, v10);
  if ((*(a2 + 44) & 8) != 0)
  {
LABEL_20:
    *(a1 + 44) |= 8u;
    v11 = *(a1 + 32);
    if (!v11)
    {
      operator new();
    }

    v12 = *(a2 + 32);
    if (!v12)
    {
      sub_2453BD76C();
      v12 = *(qword_2813CE8E8 + 32);
    }

    return sub_2453CC2D4(v11, v12);
  }

  return result;
}

void sub_2453CCBD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_2453CCBF0(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = &unk_285853CE8;
  sub_2453BD76C();
  if (qword_2813CE8E8 != a1)
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

void sub_2453CCCE0(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  sub_2453CCBF0(a1);

  JUMPOUT(0x245D6A0D0);
}

uint64_t sub_2453CCD70(uint64_t result)
{
  LOBYTE(v1) = *(result + 44);
  if (v1)
  {
    *(result + 8) = 0;
    if ((v1 & 2) != 0)
    {
      v2 = *(result + 16);
      if (v2)
      {
        if (*(v2 + 32))
        {
          *(v2 + 8) = 0;
          *(v2 + 16) = 0;
          *(v2 + 24) = 0;
        }

        *(v2 + 32) = 0;
        v1 = *(result + 44);
      }
    }

    if ((v1 & 4) != 0)
    {
      v3 = *(result + 24);
      if (v3)
      {
        if (*(v3 + 52))
        {
          *(v3 + 40) = 0;
          *(v3 + 24) = 0u;
          *(v3 + 8) = 0u;
        }

        *(v3 + 52) = 0;
        v1 = *(result + 44);
      }
    }

    if ((v1 & 8) != 0)
    {
      v4 = *(result + 32);
      if (v4)
      {
        if (*(v4 + 40))
        {
          *(v4 + 8) = 0;
          *(v4 + 16) = 0;
          *(v4 + 32) = 0;
          *(v4 + 24) = 0;
        }

        *(v4 + 40) = 0;
      }
    }
  }

  *(result + 44) = 0;
  return result;
}

uint64_t sub_2453CCDF8(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormatLite *this, unsigned int a3)
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

            v11 = *(this + 1);
            v10 = *(this + 2);
            if (v11 >= v10 || (v12 = *v11, v12 < 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(this, (a1 + 8));
              if (!result)
              {
                return result;
              }

              v13 = *(this + 1);
              v10 = *(this + 2);
            }

            else
            {
              *(a1 + 8) = v12;
              v13 = v11 + 1;
              *(this + 1) = v13;
            }

            v9 = *(a1 + 44) | 1;
            *(a1 + 44) = v9;
            if (v13 < v10 && *v13 == 18)
            {
              *(this + 1) = v13 + 1;
              goto LABEL_28;
            }
          }

          else
          {
            if (v7 != 2 || v8 != 2)
            {
              goto LABEL_20;
            }

            v9 = *(a1 + 44);
LABEL_28:
            *(a1 + 44) = v9 | 2;
            v15 = *(a1 + 16);
            if (!v15)
            {
              operator new();
            }

            v39 = 0;
            v16 = *(this + 1);
            if (v16 >= *(this + 2) || *v16 < 0)
            {
              if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v39))
              {
                return 0;
              }
            }

            else
            {
              v39 = *v16;
              *(this + 1) = v16 + 1;
            }

            v17 = *(this + 14);
            v18 = *(this + 15);
            *(this + 14) = v17 + 1;
            if (v17 >= v18)
            {
              return 0;
            }

            wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this);
            if (!sub_2453CB7DC(v15, this, v19) || *(this + 36) != 1)
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
            if (v23 < *(this + 2) && *v23 == 26)
            {
              *(this + 1) = v23 + 1;
              goto LABEL_42;
            }
          }
        }

        if (v7 != 3)
        {
          break;
        }

        if (v8 != 2)
        {
          goto LABEL_20;
        }

LABEL_42:
        *(a1 + 44) |= 4u;
        v24 = *(a1 + 24);
        if (!v24)
        {
          operator new();
        }

        v40 = 0;
        v25 = *(this + 1);
        if (v25 >= *(this + 2) || *v25 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v40))
          {
            return 0;
          }
        }

        else
        {
          v40 = *v25;
          *(this + 1) = v25 + 1;
        }

        v26 = *(this + 14);
        v27 = *(this + 15);
        *(this + 14) = v26 + 1;
        if (v26 >= v27)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this);
        if (!sub_2453CBE8C(v24, this, v28) || *(this + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this);
        v29 = *(this + 14);
        v21 = __OFSUB__(v29, 1);
        v30 = v29 - 1;
        if (v30 < 0 == v21)
        {
          *(this + 14) = v30;
        }

        v31 = *(this + 1);
        if (v31 < *(this + 2) && *v31 == 34)
        {
          *(this + 1) = v31 + 1;
          goto LABEL_56;
        }
      }

      if (v7 != 4 || v8 != 2)
      {
        break;
      }

LABEL_56:
      *(a1 + 44) |= 8u;
      v32 = *(a1 + 32);
      if (!v32)
      {
        operator new();
      }

      v41 = 0;
      v33 = *(this + 1);
      if (v33 >= *(this + 2) || *v33 < 0)
      {
        if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v41))
        {
          return 0;
        }
      }

      else
      {
        v41 = *v33;
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
      if (!sub_2453CC508(v32, this, v36) || *(this + 36) != 1)
      {
        return 0;
      }

      wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this);
      v37 = *(this + 14);
      v21 = __OFSUB__(v37, 1);
      v38 = v37 - 1;
      if (v38 < 0 == v21)
      {
        *(this + 14) = v38;
      }

      if (*(this + 1) == *(this + 2) && (*(this + 11) || *(this + 6) == *(this + 10)))
      {
        *(this + 8) = 0;
        result = 1;
        *(this + 36) = 1;
        return result;
      }
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

uint64_t sub_2453CD2A8(uint64_t result, wireless_diagnostics::google::protobuf::MessageLite *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
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

      goto LABEL_10;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  v7 = *(v5 + 16);
  if (!v7)
  {
    sub_2453BD76C();
    v7 = *(qword_2813CE8E8 + 16);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(2, v7, a2, a4);
  v6 = *(v5 + 44);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      return result;
    }

    goto LABEL_13;
  }

LABEL_10:
  v8 = *(v5 + 24);
  if (!v8)
  {
    sub_2453BD76C();
    v8 = *(qword_2813CE8E8 + 24);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(3, v8, a2, a4);
  if ((*(v5 + 44) & 8) != 0)
  {
LABEL_13:
    v9 = *(v5 + 32);
    if (!v9)
    {
      sub_2453BD76C();
      v9 = *(qword_2813CE8E8 + 32);
    }

    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(4, v9, a2, a4);
  }

  return result;
}

uint64_t sub_2453CD38C(uint64_t a1, unint64_t a2)
{
  LOBYTE(v3) = *(a1 + 44);
  if (!v3)
  {
    v4 = 0;
    goto LABEL_22;
  }

  if (*(a1 + 44))
  {
    v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(a1 + 8)) + 1;
    v3 = *(a1 + 44);
    if ((v3 & 2) == 0)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v4 = 0;
    if ((*(a1 + 44) & 2) == 0)
    {
      goto LABEL_10;
    }
  }

  v5 = *(a1 + 16);
  if (!v5)
  {
    sub_2453BD76C();
    v5 = *(qword_2813CE8E8 + 16);
  }

  v4 = v4 + sub_2453CBB3C(v5) + 2;
  v3 = *(a1 + 44);
LABEL_10:
  if ((v3 & 4) == 0)
  {
    if ((v3 & 8) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_16;
  }

  v6 = *(a1 + 24);
  if (!v6)
  {
    sub_2453BD76C();
    v6 = *(qword_2813CE8E8 + 24);
  }

  v4 = v4 + sub_2453CC1C8(v6) + 2;
  if ((*(a1 + 44) & 8) != 0)
  {
LABEL_16:
    v7 = *(a1 + 32);
    if (!v7)
    {
      sub_2453BD76C();
      v7 = *(qword_2813CE8E8 + 32);
    }

    v8 = sub_2453CC860(v7, a2);
    v9 = v8;
    if (v8 >= 0x80)
    {
      v10 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v8);
    }

    else
    {
      v10 = 1;
    }

    v4 = (v4 + v9 + v10 + 1);
  }

LABEL_22:
  *(a1 + 40) = v4;
  return v4;
}

double sub_2453CD494(uint64_t a1, void *lpsrc)
{
  if (!__dynamic_cast(lpsrc, MEMORY[0x277D82C38], &unk_285854A88, 0))
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  return sub_2453CC99C(a1, lpsrc);
}

double sub_2453CD550(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v13);
  }

  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 16));
  LODWORD(v5) = *(a2 + 24);
  if (v5 >= 1)
  {
    v6 = 0;
    do
    {
      if (v6 >= v5)
      {
        wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
        wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
        wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
        wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v13);
      }

      v7 = *(*(a2 + 16) + 8 * v6);
      v8 = *(a1 + 28);
      v9 = *(a1 + 24);
      if (v9 >= v8)
      {
        if (v8 == *(a1 + 32))
        {
          wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 16));
          v8 = *(a1 + 28);
        }

        *(a1 + 28) = v8 + 1;
        operator new();
      }

      v10 = *(a1 + 16);
      *(a1 + 24) = v9 + 1;
      sub_2453C9908(*(v10 + 8 * v9), v7);
      ++v6;
      v5 = *(a2 + 24);
    }

    while (v6 < v5);
  }

  if (*(a2 + 44))
  {
    *(a1 + 44) |= 1u;
    v11 = *(a1 + 8);
    if (!v11)
    {
      operator new();
    }

    v12 = *(a2 + 8);
    if (!v12)
    {
      sub_2453BD76C();
      v12 = *(qword_2813CE8F0 + 8);
    }

    return sub_2453CC99C(v11, v12);
  }

  return result;
}

void sub_2453CD7A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_2453CD7C8(uint64_t a1)
{
  *a1 = &unk_285853D60;
  sub_2453BD76C();
  if (qword_2813CE8F0 != a1)
  {
    v2 = *(a1 + 8);
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }
  }

  v3 = *(a1 + 28);
  if (v3 >= 1)
  {
    for (i = 0; i < v3; ++i)
    {
      v5 = *(*(a1 + 16) + 8 * i);
      if (v5)
      {
        (*(*v5 + 8))(v5);
        v3 = *(a1 + 28);
      }
    }
  }

  v6 = *(a1 + 16);
  if (v6)
  {
    MEMORY[0x245D6A0A0](v6, 0x80C80B8603338);
  }

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);
}

void sub_2453CD8CC(uint64_t a1)
{
  sub_2453CD7C8(a1);

  JUMPOUT(0x245D6A0D0);
}

uint64_t sub_2453CD958(uint64_t a1)
{
  if (*(a1 + 44))
  {
    v2 = *(a1 + 8);
    if (v2)
    {
      sub_2453CCD70(v2);
    }
  }

  result = sub_2453DC6D0(a1 + 16);
  *(a1 + 44) = 0;
  return result;
}

uint64_t sub_2453CD998(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormatLite *this, unsigned int a3)
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

      *(a1 + 44) |= 1u;
      v8 = *(a1 + 8);
      if (!v8)
      {
        operator new();
      }

      v29 = 0;
      v9 = *(this + 1);
      if (v9 >= *(this + 2) || *v9 < 0)
      {
        if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v29))
        {
          return 0;
        }
      }

      else
      {
        v29 = *v9;
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
      if (!sub_2453CCDF8(v8, this, v12) || *(this + 36) != 1)
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
        do
        {
          *(this + 1) = v16 + 1;
LABEL_27:
          v17 = *(a1 + 28);
          v18 = *(a1 + 24);
          if (v18 >= v17)
          {
            if (v17 == *(a1 + 32))
            {
              wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 16));
              v17 = *(a1 + 28);
            }

            *(a1 + 28) = v17 + 1;
            operator new();
          }

          v19 = *(a1 + 16);
          *(a1 + 24) = v18 + 1;
          v20 = *(v19 + 8 * v18);
          v30 = 0;
          v21 = *(this + 1);
          if (v21 >= *(this + 2) || *v21 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v30))
            {
              return 0;
            }
          }

          else
          {
            v30 = *v21;
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
          if (!sub_2453CA2B0(v20, this, v24) || *(this + 36) != 1)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this);
          v25 = *(this + 14);
          v14 = __OFSUB__(v25, 1);
          v26 = v25 - 1;
          if (v26 < 0 == v14)
          {
            *(this + 14) = v26;
          }

          v16 = *(this + 1);
          v27 = *(this + 2);
        }

        while (v16 < v27 && *v16 == 18);
        if (v16 == v27 && (*(this + 11) || *(this + 6) == *(this + 10)))
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

uint64_t sub_2453CDD14(uint64_t result, wireless_diagnostics::google::protobuf::MessageLite *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = result;
  if (*(result + 44))
  {
    v6 = *(result + 8);
    if (!v6)
    {
      sub_2453BD76C();
      v6 = *(qword_2813CE8F0 + 8);
    }

    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(1, v6, a2, a4);
  }

  if (*(v5 + 24) >= 1)
  {
    v7 = 0;
    do
    {
      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(2, *(*(v5 + 16) + 8 * v7++), a2, a4);
    }

    while (v7 < *(v5 + 24));
  }

  return result;
}

uint64_t sub_2453CDDA0(uint64_t a1, unint64_t a2)
{
  if (*(a1 + 44))
  {
    v4 = *(a1 + 8);
    if (!v4)
    {
      sub_2453BD76C();
      v4 = *(qword_2813CE8F0 + 8);
    }

    v5 = sub_2453CD38C(v4, a2);
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

  v8 = *(a1 + 24);
  v9 = (v8 + v3);
  if (v8 >= 1)
  {
    v10 = 0;
    do
    {
      v11 = sub_2453CB188(*(*(a1 + 16) + 8 * v10), a2);
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

    while (v10 < *(a1 + 24));
  }

  *(a1 + 40) = v9;
  return v9;
}

double sub_2453CDE74(uint64_t a1, void *lpsrc)
{
  if (!__dynamic_cast(lpsrc, MEMORY[0x277D82C38], &unk_285854AA0, 0))
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  return sub_2453CD550(a1, lpsrc);
}

double sub_2453CDF30(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v6);
  }

  LOBYTE(v5) = *(a2 + 36);
  if (v5)
  {
    if (*(a2 + 36))
    {
      result = *(a2 + 8);
      *(a1 + 36) |= 1u;
      *(a1 + 8) = result;
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

void sub_2453CE004(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_2453CE01C(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = &unk_285853DD8;
  sub_2453BD76C();

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);
}

void sub_2453CE078(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  sub_2453CE01C(a1);

  JUMPOUT(0x245D6A0D0);
}

uint64_t sub_2453CE104(uint64_t result)
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

uint64_t sub_2453CE11C(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormatLite *this, unsigned int a3)
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

        if (v8 != 1)
        {
          goto LABEL_20;
        }

LABEL_23:
        v12 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, &v12) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 24) = v12;
        *(a1 + 36) |= 4u;
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

      v12 = 0;
      if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, &v12) & 1) == 0)
      {
        return 0;
      }

      *(a1 + 8) = v12;
      *(a1 + 36) |= 1u;
      v9 = *(this + 1);
      if (v9 < *(this + 2) && *v9 == 17)
      {
        *(this + 1) = v9 + 1;
LABEL_15:
        v12 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, &v12) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 16) = v12;
        *(a1 + 36) |= 2u;
        v10 = *(this + 1);
        if (v10 < *(this + 2) && *v10 == 25)
        {
          *(this + 1) = v10 + 1;
          goto LABEL_23;
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

uint64_t sub_2453CE2D4(uint64_t result, uint64_t a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3)
{
  v4 = result;
  v5 = *(result + 36);
  if ((v5 & 1) == 0)
  {
    if ((v5 & 2) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(2, a2, *(v4 + 16), a3);
    if ((*(v4 + 36) & 4) == 0)
    {
      return result;
    }

    goto LABEL_7;
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(1, a2, *(result + 8), a3);
  v5 = *(v4 + 36);
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
  v6 = *(v4 + 24);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(3, a2, v6, a3);
}

uint64_t sub_2453CE360(uint64_t a1)
{
  v1 = *(a1 + 36);
  if (*(a1 + 36))
  {
    v2 = ((v1 << 31) >> 31) & 9;
    if ((v1 & 2) != 0)
    {
      v2 += 9;
    }

    if ((v1 & 4) != 0)
    {
      v1 = v2 + 9;
    }

    else
    {
      v1 = v2;
    }
  }

  *(a1 + 32) = v1;
  return v1;
}

double sub_2453CE398(uint64_t a1, void *lpsrc)
{
  if (!__dynamic_cast(lpsrc, MEMORY[0x277D82C38], &unk_285854AB8, 0))
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  return sub_2453CDF30(a1, lpsrc);
}

void sub_2453CE454(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v10);
  }

  LOBYTE(v4) = *(a2 + 44);
  if (v4)
  {
    if (*(a2 + 44))
    {
      v5 = *(a2 + 24);
      if (v5 >= 0xD)
      {
        __assert_rtn("set_band", "CLPGnssMeasApi.pb.h", 10571, "::CoreGem::CLP::LogEntry::PrivateData::Band_IsValid(value)");
      }

      *(a1 + 44) |= 1u;
      *(a1 + 24) = v5;
      v4 = *(a2 + 44);
    }

    if ((v4 & 2) != 0)
    {
      v6 = *(a2 + 8);
      *(a1 + 44) |= 2u;
      *(a1 + 8) = v6;
      v4 = *(a2 + 44);
      if ((v4 & 4) == 0)
      {
LABEL_9:
        if ((v4 & 8) == 0)
        {
          goto LABEL_10;
        }

        goto LABEL_14;
      }
    }

    else if ((v4 & 4) == 0)
    {
      goto LABEL_9;
    }

    v7 = *(a2 + 16);
    *(a1 + 44) |= 4u;
    *(a1 + 16) = v7;
    v4 = *(a2 + 44);
    if ((v4 & 8) == 0)
    {
LABEL_10:
      if ((v4 & 0x10) == 0)
      {
        return;
      }

LABEL_15:
      v9 = *(a2 + 28);
      if (v9 >= 3)
      {
        __assert_rtn("set_ionospheric_model", "CLPGnssMeasApi.pb.h", 10660, "::CoreGem::CLP::LogEntry::PrivateData::IonosphericCorrectionSource_IsValid(value)");
      }

      *(a1 + 44) |= 0x10u;
      *(a1 + 28) = v9;
      return;
    }

LABEL_14:
    v8 = *(a2 + 32);
    *(a1 + 44) |= 8u;
    *(a1 + 32) = v8;
    if ((*(a2 + 44) & 0x10) == 0)
    {
      return;
    }

    goto LABEL_15;
  }
}

void sub_2453CE5B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_2453CE5CC(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = &unk_285853E50;
  sub_2453BD76C();

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);
}

void sub_2453CE628(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  sub_2453CE5CC(a1);

  JUMPOUT(0x245D6A0D0);
}

uint64_t sub_2453CE6B8(uint64_t result)
{
  if (*(result + 44))
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
  }

  *(result + 44) = 0;
  return result;
}

uint64_t sub_2453CE6D4(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormatLite *this, unsigned int a3)
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
          if (v7 != 2 || v8 != 1)
          {
            goto LABEL_21;
          }

          goto LABEL_34;
        }

        if ((TagFallback & 7) != 0)
        {
          goto LABEL_21;
        }

        v19[0] = 0;
        v11 = *(this + 1);
        if (v11 >= *(this + 2) || (v12 = *v11, (v12 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v19);
          if (!result)
          {
            return result;
          }

          v12 = v19[0];
        }

        else
        {
          *(this + 1) = v11 + 1;
        }

        if (v12 <= 0xC)
        {
          *(a1 + 44) |= 1u;
          *(a1 + 24) = v12;
        }

        v14 = *(this + 1);
        if (v14 < *(this + 2) && *v14 == 17)
        {
          *(this + 1) = v14 + 1;
LABEL_34:
          *v19 = 0;
          if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v19) & 1) == 0)
          {
            return 0;
          }

          *(a1 + 8) = *v19;
          *(a1 + 44) |= 2u;
          v15 = *(this + 1);
          if (v15 < *(this + 2) && *v15 == 25)
          {
            *(this + 1) = v15 + 1;
LABEL_38:
            *v19 = 0;
            if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v19) & 1) == 0)
            {
              return 0;
            }

            *(a1 + 16) = *v19;
            *(a1 + 44) |= 4u;
            v16 = *(this + 1);
            if (v16 < *(this + 2) && *v16 == 33)
            {
              *(this + 1) = v16 + 1;
              goto LABEL_42;
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

        goto LABEL_38;
      }

      if (v7 != 4)
      {
        break;
      }

      if (v8 != 1)
      {
        goto LABEL_21;
      }

LABEL_42:
      *v19 = 0;
      if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v19) & 1) == 0)
      {
        return 0;
      }

      *(a1 + 32) = *v19;
      *(a1 + 44) |= 8u;
      v17 = *(this + 1);
      v9 = *(this + 2);
      if (v17 < v9 && *v17 == 40)
      {
        v10 = v17 + 1;
        *(this + 1) = v10;
LABEL_46:
        v19[0] = 0;
        if (v10 >= v9 || (v18 = *v10, (v18 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v19);
          if (!result)
          {
            return result;
          }

          v18 = v19[0];
        }

        else
        {
          *(this + 1) = v10 + 1;
        }

        if (v18 <= 2)
        {
          *(a1 + 44) |= 0x10u;
          *(a1 + 28) = v18;
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
      v10 = *(this + 1);
      v9 = *(this + 2);
      goto LABEL_46;
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

uint64_t sub_2453CE994(uint64_t result, uint64_t a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = result;
  v6 = *(result + 44);
  if (v6)
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(1, *(result + 24), a2, a4);
    v6 = *(v5 + 44);
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

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(2, a2, *(v5 + 8), a3);
  v6 = *(v5 + 44);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

LABEL_10:
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(4, a2, *(v5 + 32), a3);
    if ((*(v5 + 44) & 0x10) == 0)
    {
      return result;
    }

    goto LABEL_11;
  }

LABEL_9:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(3, a2, *(v5 + 16), a3);
  v6 = *(v5 + 44);
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
  v7 = *(v5 + 28);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(5, v7, a2, a4);
}

uint64_t sub_2453CEA58(uint64_t a1, unsigned int a2)
{
  LOBYTE(v3) = *(a1 + 44);
  if (v3)
  {
    if (*(a1 + 44))
    {
      v6 = *(a1 + 24);
      if ((v6 & 0x80000000) != 0)
      {
        v4 = 11;
      }

      else if (v6 >= 0x80)
      {
        v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v6) + 1;
        v3 = *(a1 + 44);
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
      v5 = v4 + 9;
    }

    else
    {
      v5 = v4;
    }

    if ((v3 & 0x10) != 0)
    {
      v7 = *(a1 + 28);
      if ((v7 & 0x80000000) != 0)
      {
        v8 = 11;
      }

      else if (v7 >= 0x80)
      {
        v8 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v7) + 1;
      }

      else
      {
        v8 = 2;
      }

      v5 = (v8 + v5);
    }
  }

  else
  {
    v5 = 0;
  }

  *(a1 + 40) = v5;
  return v5;
}

void sub_2453CEB1C(uint64_t a1, void *lpsrc)
{
  if (!__dynamic_cast(lpsrc, MEMORY[0x277D82C38], &unk_285854AD0, 0))
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  sub_2453CE454(a1, lpsrc);
}

double sub_2453CEBD8(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v8);
  }

  LOBYTE(v5) = *(a2 + 28);
  if (v5)
  {
    if (*(a2 + 28))
    {
      result = *(a2 + 8);
      *(a1 + 28) |= 1u;
      *(a1 + 8) = result;
      v5 = *(a2 + 28);
    }

    if ((v5 & 2) != 0)
    {
      *(a1 + 28) |= 2u;
      v6 = *(a1 + 16);
      if (!v6)
      {
        operator new();
      }

      v7 = *(a2 + 16);
      if (!v7)
      {
        sub_2453BD76C();
        v7 = *(qword_2813CE908 + 16);
      }

      return sub_2453CDF30(v6, v7);
    }
  }

  return result;
}

void sub_2453CECF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_2453CED0C(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = &unk_285853EC8;
  sub_2453BD76C();
  if (qword_2813CE908 != a1)
  {
    v2 = *(a1 + 2);
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }
  }

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);
}

void sub_2453CEDA4(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  sub_2453CED0C(a1);

  JUMPOUT(0x245D6A0D0);
}

uint64_t sub_2453CEE28(uint64_t result)
{
  v1 = *(result + 28);
  if (v1)
  {
    *(result + 8) = 0;
    if ((v1 & 2) != 0)
    {
      v2 = *(result + 16);
      if (v2)
      {
        if (*(v2 + 36))
        {
          *(v2 + 8) = 0;
          *(v2 + 16) = 0;
          *(v2 + 24) = 0;
        }

        *(v2 + 36) = 0;
      }
    }
  }

  *(result + 28) = 0;
  return result;
}

uint64_t sub_2453CEE5C(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormatLite *this, unsigned int a3)
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

        v7 = TagFallback & 7;
        if (TagFallback >> 3 == 2)
        {
          break;
        }

        if (TagFallback >> 3 != 1 || v7 != 1)
        {
          goto LABEL_14;
        }

        v19 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, &v19) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 8) = v19;
        v8 = *(a1 + 28) | 1;
        *(a1 + 28) = v8;
        v9 = *(this + 1);
        if (v9 < *(this + 2) && *v9 == 18)
        {
          *(this + 1) = v9 + 1;
          goto LABEL_18;
        }
      }

      if (v7 == 2)
      {
        break;
      }

LABEL_14:
      if (v7 == 4)
      {
        return 1;
      }

      if ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(this, TagFallback) & 1) == 0)
      {
        return 0;
      }
    }

    v8 = *(a1 + 28);
LABEL_18:
    *(a1 + 28) = v8 | 2;
    v10 = *(a1 + 16);
    if (!v10)
    {
      operator new();
    }

    v20 = 0;
    v11 = *(this + 1);
    if (v11 >= *(this + 2) || *v11 < 0)
    {
      if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v20))
      {
        return 0;
      }
    }

    else
    {
      v20 = *v11;
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
    if (!sub_2453CE11C(v10, this, v14) || *(this + 36) != 1)
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

    if (*(this + 1) == *(this + 2) && (*(this + 11) || *(this + 6) == *(this + 10)))
    {
      *(this + 8) = 0;
      result = 1;
      *(this + 36) = 1;
      return result;
    }
  }
}

uint64_t sub_2453CF094(uint64_t result, wireless_diagnostics::google::protobuf::MessageLite *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = result;
  v6 = *(result + 28);
  if (v6)
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(1, a2, *(result + 8), a3);
    v6 = *(v5 + 28);
  }

  if ((v6 & 2) != 0)
  {
    v7 = *(v5 + 16);
    if (!v7)
    {
      sub_2453BD76C();
      v7 = *(qword_2813CE908 + 16);
    }

    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(2, v7, a2, a4);
  }

  return result;
}

uint64_t sub_2453CF114(uint64_t a1)
{
  v2 = *(a1 + 28);
  if (*(a1 + 28))
  {
    v3 = (v2 << 31 >> 31) & 9;
    if ((v2 & 2) != 0)
    {
      v4 = *(a1 + 16);
      if (!v4)
      {
        sub_2453BD76C();
        v4 = *(qword_2813CE908 + 16);
      }

      v5 = *(v4 + 36);
      if (*(v4 + 36))
      {
        v6 = (v5 << 31 >> 31) & 9;
        if ((v5 & 2) != 0)
        {
          v6 += 9;
        }

        if ((v5 & 4) != 0)
        {
          v5 = v6 + 9;
        }

        else
        {
          v5 = v6;
        }
      }

      *(v4 + 32) = v5;
      v3 = (v5 + v3 + 2);
    }
  }

  else
  {
    v3 = 0;
  }

  *(a1 + 24) = v3;
  return v3;
}

double sub_2453CF1AC(uint64_t a1, void *lpsrc)
{
  if (!__dynamic_cast(lpsrc, MEMORY[0x277D82C38], &unk_285854AE8, 0))
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  return sub_2453CEBD8(a1, lpsrc);
}

double sub_2453CF268(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v9);
  }

  v5 = *(a2 + 32);
  if (v5)
  {
    sub_2453DC620((a1 + 24), *(a1 + 32) + v5);
    memcpy((*(a1 + 24) + 8 * *(a1 + 32)), *(a2 + 24), 8 * *(a2 + 32));
    *(a1 + 32) += *(a2 + 32);
  }

  v6 = *(a2 + 48);
  if (v6)
  {
    sub_2453DC620((a1 + 40), *(a1 + 48) + v6);
    memcpy((*(a1 + 40) + 8 * *(a1 + 48)), *(a2 + 40), 8 * *(a2 + 48));
    *(a1 + 48) += *(a2 + 48);
  }

  v7 = *(a2 + 64);
  if (v7)
  {
    sub_2453DC620((a1 + 56), *(a1 + 64) + v7);
    memcpy((*(a1 + 56) + 8 * *(a1 + 64)), *(a2 + 56), 8 * *(a2 + 64));
    *(a1 + 64) += *(a2 + 64);
  }

  LOBYTE(v8) = *(a2 + 76);
  if (v8)
  {
    if (*(a2 + 76))
    {
      result = *(a2 + 8);
      *(a1 + 76) |= 1u;
      *(a1 + 8) = result;
      v8 = *(a2 + 76);
    }

    if ((v8 & 2) != 0)
    {
      result = *(a2 + 16);
      *(a1 + 76) |= 2u;
      *(a1 + 16) = result;
    }
  }

  return result;
}

void sub_2453CF3E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_2453CF3F8(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = &unk_285853F40;
  sub_2453BD76C();
  v2 = *(a1 + 7);
  if (v2)
  {
    MEMORY[0x245D6A0A0](v2, 0x1000C8000313F17);
  }

  v3 = *(a1 + 5);
  if (v3)
  {
    MEMORY[0x245D6A0A0](v3, 0x1000C8000313F17);
  }

  v4 = *(a1 + 3);
  if (v4)
  {
    MEMORY[0x245D6A0A0](v4, 0x1000C8000313F17);
  }

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);
}

void sub_2453CF494(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  sub_2453CF3F8(a1);

  JUMPOUT(0x245D6A0D0);
}

uint64_t sub_2453CF52C(uint64_t result)
{
  if (*(result + 76))
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
  }

  *(result + 32) = 0;
  *(result + 48) = 0;
  *(result + 64) = 0;
  *(result + 76) = 0;
  return result;
}

uint64_t sub_2453CF54C(uint64_t a1, wireless_diagnostics::google::protobuf::io::CodedInputStream *this, unsigned int a3)
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

      if (v7 != 2)
      {
        if (v7 != 3 || v8 != 1)
        {
          goto LABEL_27;
        }

        goto LABEL_34;
      }

      if (v8 != 1)
      {
        goto LABEL_27;
      }

      v45[0] = 0;
      if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v45) & 1) == 0)
      {
        return 0;
      }

      *(a1 + 8) = v45[0];
      *(a1 + 76) |= 1u;
      v10 = *(this + 1);
      if (v10 < *(this + 2) && *v10 == 25)
      {
        *(this + 1) = v10 + 1;
LABEL_34:
        v45[0] = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v45) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 16) = v45[0];
        *(a1 + 76) |= 2u;
        v11 = *(this + 1);
        if (v11 < *(this + 2) && *v11 == 33)
        {
LABEL_37:
          *(this + 1) = v11 + 1;
          goto LABEL_38;
        }
      }
    }

    if (v7 != 4)
    {
      break;
    }

    if (v8 == 1)
    {
LABEL_38:
      v45[0] = 0;
      if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v45) & 1) == 0)
      {
        return 0;
      }

      v12 = v45[0];
      v13 = *(a1 + 32);
      if (v13 == *(a1 + 36))
      {
        sub_2453DC620((a1 + 24), v13 + 1);
        v13 = *(a1 + 32);
      }

      v14 = *(a1 + 24);
      v15 = v13 + 1;
      *(a1 + 32) = v13 + 1;
      *(v14 + 8 * v13) = v12;
      v16 = *(this + 1);
      v17 = *(this + 4) - v16;
      if (v17 >= 1)
      {
        v18 = v17 / 9u;
        v19 = v18 >= *(a1 + 36) - v15 ? *(a1 + 36) - v15 : v18;
        if (v19 >= 1)
        {
          v20 = 0;
          while (*v16 == 33)
          {
            v21 = *(v16 + 1);
            if (v15 >= *(a1 + 36))
            {
              wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
              wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
              wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
              wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v45);
              v15 = *(a1 + 32);
              v14 = *(a1 + 24);
            }

            *(a1 + 32) = v15 + 1;
            *(v14 + 8 * v15) = v21;
            ++v20;
            v16 += 9;
            ++v15;
            if (v19 == v20)
            {
              goto LABEL_53;
            }
          }

          if (!v20)
          {
            goto LABEL_54;
          }

LABEL_53:
          wireless_diagnostics::google::protobuf::io::CodedInputStream::Skip(this);
        }
      }

LABEL_54:
      v11 = *(this + 1);
      if (v11 < *(this + 2))
      {
        v22 = *v11;
        if (v22 == 33)
        {
          goto LABEL_37;
        }

        if (v22 == 41)
        {
          while (1)
          {
            *(this + 1) = v11 + 1;
LABEL_58:
            v45[0] = 0;
            if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v45) & 1) == 0)
            {
              return 0;
            }

            v23 = v45[0];
            v24 = *(a1 + 48);
            if (v24 == *(a1 + 52))
            {
              sub_2453DC620((a1 + 40), v24 + 1);
              v24 = *(a1 + 48);
            }

            v25 = *(a1 + 40);
            v26 = v24 + 1;
            *(a1 + 48) = v24 + 1;
            *(v25 + 8 * v24) = v23;
            v27 = *(this + 1);
            v28 = *(this + 4) - v27;
            if (v28 >= 1)
            {
              v29 = v28 / 9u;
              v30 = v29 >= *(a1 + 52) - v26 ? *(a1 + 52) - v26 : v29;
              if (v30 >= 1)
              {
                v31 = 0;
                while (*v27 == 41)
                {
                  v32 = *(v27 + 1);
                  if (v26 >= *(a1 + 52))
                  {
                    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v45);
                    v26 = *(a1 + 48);
                    v25 = *(a1 + 40);
                  }

                  *(a1 + 48) = v26 + 1;
                  *(v25 + 8 * v26) = v32;
                  ++v31;
                  v27 += 9;
                  ++v26;
                  if (v30 == v31)
                  {
                    goto LABEL_73;
                  }
                }

                if (!v31)
                {
                  goto LABEL_74;
                }

LABEL_73:
                wireless_diagnostics::google::protobuf::io::CodedInputStream::Skip(this);
              }
            }

LABEL_74:
            v11 = *(this + 1);
            if (v11 >= *(this + 2))
            {
              break;
            }

            v33 = *v11;
            if (v33 != 41)
            {
              if (v33 == 49)
              {
                do
                {
                  *(this + 1) = v11 + 1;
LABEL_78:
                  v45[0] = 0;
                  if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v45) & 1) == 0)
                  {
                    return 0;
                  }

                  v34 = v45[0];
                  v35 = *(a1 + 64);
                  if (v35 == *(a1 + 68))
                  {
                    sub_2453DC620((a1 + 56), v35 + 1);
                    v35 = *(a1 + 64);
                  }

                  v36 = *(a1 + 56);
                  v37 = v35 + 1;
                  *(a1 + 64) = v35 + 1;
                  *(v36 + 8 * v35) = v34;
                  v38 = *(this + 1);
                  v39 = *(this + 4) - v38;
                  if (v39 >= 1)
                  {
                    v40 = v39 / 9u;
                    v41 = v40 >= *(a1 + 68) - v37 ? *(a1 + 68) - v37 : v40;
                    if (v41 >= 1)
                    {
                      v42 = 0;
                      while (*v38 == 49)
                      {
                        v43 = *(v38 + 1);
                        if (v37 >= *(a1 + 68))
                        {
                          wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                          wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                          wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                          wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v45);
                          v37 = *(a1 + 64);
                          v36 = *(a1 + 56);
                        }

                        *(a1 + 64) = v37 + 1;
                        *(v36 + 8 * v37) = v43;
                        ++v42;
                        v38 += 9;
                        ++v37;
                        if (v41 == v42)
                        {
                          goto LABEL_93;
                        }
                      }

                      if (!v42)
                      {
                        goto LABEL_94;
                      }

LABEL_93:
                      wireless_diagnostics::google::protobuf::io::CodedInputStream::Skip(this);
                    }
                  }

LABEL_94:
                  v11 = *(this + 1);
                  v44 = *(this + 2);
                }

                while (v11 < v44 && *v11 == 49);
                if (v11 == v44 && (*(this + 11) || *(this + 6) == *(this + 10)))
                {
                  *(this + 8) = 0;
                  result = 1;
                  *(this + 36) = 1;
                  return result;
                }
              }

              goto LABEL_1;
            }
          }
        }
      }
    }

    else
    {
      if (v8 == 2)
      {
        result = sub_2453CFB44(this, (a1 + 24));
        if (!result)
        {
          return result;
        }

        goto LABEL_54;
      }

LABEL_27:
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

  if (v7 == 5)
  {
    if (v8 != 1)
    {
      if (v8 == 2)
      {
        result = sub_2453CFB44(this, (a1 + 40));
        if (!result)
        {
          return result;
        }

        goto LABEL_74;
      }

      goto LABEL_27;
    }

    goto LABEL_58;
  }

  if (v7 != 6)
  {
    goto LABEL_27;
  }

  if (v8 == 1)
  {
    goto LABEL_78;
  }

  if (v8 != 2)
  {
    goto LABEL_27;
  }

  result = sub_2453CFB44(this, (a1 + 56));
  if (result)
  {
    goto LABEL_94;
  }

  return result;
}

void sub_2453CFB1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_2453CFB44(wireless_diagnostics::google::protobuf::io::CodedInputStream *this, uint64_t *a2)
{
  v9 = 0;
  v4 = *(this + 1);
  if (v4 >= *(this + 2) || *v4 < 0)
  {
    result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v9);
    if (!result)
    {
      return result;
    }
  }

  else
  {
    v9 = *v4;
    *(this + 1) = v4 + 1;
  }

  wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this);
  if (wireless_diagnostics::google::protobuf::io::CodedInputStream::BytesUntilLimit(this) < 1)
  {
LABEL_10:
    wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this);
    return 1;
  }

  else
  {
    while (1)
    {
      v10 = 0;
      result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, &v10);
      if (!result)
      {
        break;
      }

      v6 = v10;
      v7 = *(a2 + 2);
      if (v7 == *(a2 + 3))
      {
        sub_2453DC620(a2, v7 + 1);
        v7 = *(a2 + 2);
      }

      v8 = *a2;
      *(a2 + 2) = v7 + 1;
      *(v8 + 8 * v7) = v6;
      if (wireless_diagnostics::google::protobuf::io::CodedInputStream::BytesUntilLimit(this) <= 0)
      {
        goto LABEL_10;
      }
    }
  }

  return result;
}

uint64_t sub_2453CFC3C(uint64_t result, uint64_t a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3)
{
  v4 = result;
  v5 = *(result + 76);
  if (v5)
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(2, a2, *(result + 8), a3);
    v5 = *(v4 + 76);
  }

  if ((v5 & 2) != 0)
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(3, a2, *(v4 + 16), a3);
  }

  if (*(v4 + 32) >= 1)
  {
    v6 = 0;
    do
    {
      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(4, a2, *(*(v4 + 24) + 8 * v6++), a3);
    }

    while (v6 < *(v4 + 32));
  }

  if (*(v4 + 48) >= 1)
  {
    v7 = 0;
    do
    {
      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(5, a2, *(*(v4 + 40) + 8 * v7++), a3);
    }

    while (v7 < *(v4 + 48));
  }

  if (*(v4 + 64) >= 1)
  {
    v8 = 0;
    do
    {
      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(6, a2, *(*(v4 + 56) + 8 * v8++), a3);
    }

    while (v8 < *(v4 + 64));
  }

  return result;
}

uint64_t sub_2453CFD34(uint64_t a1)
{
  v1 = *(a1 + 76);
  v2 = (v1 << 31 >> 31) & 9;
  if ((v1 & 2) != 0)
  {
    v2 += 9;
  }

  if (*(a1 + 76))
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  v4 = (9 * (*(a1 + 48) + *(a1 + 32) + *(a1 + 64)) + v3);
  *(a1 + 72) = v4;
  return v4;
}

double sub_2453CFD80(uint64_t a1, void *lpsrc)
{
  if (!__dynamic_cast(lpsrc, MEMORY[0x277D82C38], &unk_285854B00, 0))
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  return sub_2453CF268(a1, lpsrc);
}

void sub_2453CFE3C(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v40);
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
        wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v40);
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
      sub_2453CEBD8(*(v9 + 8 * v8), v6);
      ++v5;
      v4 = *(a2 + 32);
    }

    while (v5 < v4);
  }

  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 104));
  LODWORD(v10) = *(a2 + 112);
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
        wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v40);
      }

      v12 = *(*(a2 + 104) + 8 * v11);
      v13 = *(a1 + 116);
      v14 = *(a1 + 112);
      if (v14 >= v13)
      {
        if (v13 == *(a1 + 120))
        {
          wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 104));
          v13 = *(a1 + 116);
        }

        *(a1 + 116) = v13 + 1;
        operator new();
      }

      v15 = *(a1 + 104);
      *(a1 + 112) = v14 + 1;
      sub_2453CE454(*(v15 + 8 * v14), v12);
      ++v11;
      v10 = *(a2 + 112);
    }

    while (v11 < v10);
  }

  v16 = *(a2 + 172);
  if (!v16)
  {
    goto LABEL_32;
  }

  if (v16)
  {
    *(a1 + 172) |= 1u;
    v33 = *(a1 + 8);
    if (!v33)
    {
      operator new();
    }

    v34 = *(a2 + 8);
    if (!v34)
    {
      sub_2453BD76C();
      v34 = *(qword_2813CE918 + 8);
    }

    sub_2453BEF44(v33, v34);
    v16 = *(a2 + 172);
    if ((v16 & 2) == 0)
    {
LABEL_26:
      if ((v16 & 4) == 0)
      {
        goto LABEL_27;
      }

      goto LABEL_84;
    }
  }

  else if ((v16 & 2) == 0)
  {
    goto LABEL_26;
  }

  v35 = *(a2 + 16);
  *(a1 + 172) |= 2u;
  *(a1 + 16) = v35;
  v16 = *(a2 + 172);
  if ((v16 & 4) == 0)
  {
LABEL_27:
    if ((v16 & 0x10) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_86;
  }

LABEL_84:
  v36 = *(a2 + 56);
  if (v36 >= 7)
  {
    __assert_rtn("set_position_source", "CLPGnssMeasApi.pb.h", 10942, "::CoreGem::CLP::LogEntry::PrivateData::SvPositionSource_IsValid(value)");
  }

  *(a1 + 172) |= 4u;
  *(a1 + 56) = v36;
  v16 = *(a2 + 172);
  if ((v16 & 0x10) == 0)
  {
LABEL_28:
    if ((v16 & 0x20) == 0)
    {
      goto LABEL_29;
    }

LABEL_87:
    v38 = *(a2 + 64);
    *(a1 + 172) |= 0x20u;
    *(a1 + 64) = v38;
    v16 = *(a2 + 172);
    if ((v16 & 0x40) == 0)
    {
LABEL_30:
      if ((v16 & 0x80) == 0)
      {
        goto LABEL_32;
      }

      goto LABEL_31;
    }

    goto LABEL_88;
  }

LABEL_86:
  v37 = *(a2 + 48);
  *(a1 + 172) |= 0x10u;
  *(a1 + 48) = v37;
  v16 = *(a2 + 172);
  if ((v16 & 0x20) != 0)
  {
    goto LABEL_87;
  }

LABEL_29:
  if ((v16 & 0x40) == 0)
  {
    goto LABEL_30;
  }

LABEL_88:
  v39 = *(a2 + 72);
  *(a1 + 172) |= 0x40u;
  *(a1 + 72) = v39;
  v16 = *(a2 + 172);
  if ((v16 & 0x80) != 0)
  {
LABEL_31:
    v17 = *(a2 + 60);
    *(a1 + 172) |= 0x80u;
    *(a1 + 60) = v17;
    v16 = *(a2 + 172);
  }

LABEL_32:
  if ((v16 & 0xFF00) != 0)
  {
    if ((v16 & 0x100) != 0)
    {
      v18 = *(a2 + 80);
      *(a1 + 172) |= 0x100u;
      *(a1 + 80) = v18;
      v16 = *(a2 + 172);
    }

    if ((v16 & 0x200) != 0)
    {
      v19 = *(a2 + 84);
      if (v19 >= 5)
      {
        __assert_rtn("set_over_the_air_from_sv_health_l1", "CLPGnssMeasApi.pb.h", 11100, "::CoreGem::CLP::LogEntry::PrivateData::SvHealthIndication_IsValid(value)");
      }

      *(a1 + 172) |= 0x200u;
      *(a1 + 84) = v19;
      v16 = *(a2 + 172);
    }

    if ((v16 & 0x400) != 0)
    {
      v20 = *(a2 + 88);
      if (v20 >= 5)
      {
        __assert_rtn("set_over_the_air_from_other_sv_health_l1", "CLPGnssMeasApi.pb.h", 11123, "::CoreGem::CLP::LogEntry::PrivateData::SvHealthIndication_IsValid(value)");
      }

      *(a1 + 172) |= 0x400u;
      *(a1 + 88) = v20;
      v16 = *(a2 + 172);
    }

    if ((v16 & 0x800) != 0)
    {
      v21 = *(a2 + 92);
      if (v21 >= 5)
      {
        __assert_rtn("set_assistance_file_health_l1", "CLPGnssMeasApi.pb.h", 11146, "::CoreGem::CLP::LogEntry::PrivateData::SvHealthIndication_IsValid(value)");
      }

      *(a1 + 172) |= 0x800u;
      *(a1 + 92) = v21;
      v16 = *(a2 + 172);
    }

    if ((v16 & 0x1000) != 0)
    {
      v22 = *(a2 + 96);
      if (v22 >= 5)
      {
        __assert_rtn("set_ms_based_health_l1", "CLPGnssMeasApi.pb.h", 11169, "::CoreGem::CLP::LogEntry::PrivateData::SvHealthIndication_IsValid(value)");
      }

      *(a1 + 172) |= 0x1000u;
      *(a1 + 96) = v22;
      v16 = *(a2 + 172);
    }

    if ((v16 & 0x2000) != 0)
    {
      v23 = *(a2 + 100);
      if (v23 >= 5)
      {
        __assert_rtn("set_integrity_health_l1", "CLPGnssMeasApi.pb.h", 11192, "::CoreGem::CLP::LogEntry::PrivateData::SvHealthIndication_IsValid(value)");
      }

      *(a1 + 172) |= 0x2000u;
      *(a1 + 100) = v23;
      v16 = *(a2 + 172);
    }

    if ((v16 & 0x8000) != 0)
    {
      *(a1 + 172) |= 0x8000u;
      v24 = *(a1 + 128);
      if (!v24)
      {
        operator new();
      }

      v25 = *(a2 + 128);
      if (!v25)
      {
        sub_2453BD76C();
        v25 = *(qword_2813CE918 + 128);
      }

      sub_2453CF268(v24, v25);
      v16 = *(a2 + 172);
    }
  }

  if ((v16 & 0xFF0000) != 0)
  {
    if ((v16 & 0x10000) != 0)
    {
      v26 = *(a2 + 136);
      if (v26 >= 5)
      {
        __assert_rtn("set_over_the_air_from_sv_health_l5", "CLPGnssMeasApi.pb.h", 11282, "::CoreGem::CLP::LogEntry::PrivateData::SvHealthIndication_IsValid(value)");
      }

      *(a1 + 172) |= 0x10000u;
      *(a1 + 136) = v26;
      v16 = *(a2 + 172);
    }

    if ((v16 & 0x20000) != 0)
    {
      v27 = *(a2 + 140);
      if (v27 >= 5)
      {
        __assert_rtn("set_over_the_air_from_other_sv_health_l5", "CLPGnssMeasApi.pb.h", 11305, "::CoreGem::CLP::LogEntry::PrivateData::SvHealthIndication_IsValid(value)");
      }

      *(a1 + 172) |= 0x20000u;
      *(a1 + 140) = v27;
      v16 = *(a2 + 172);
    }

    if ((v16 & 0x40000) != 0)
    {
      v28 = *(a2 + 144);
      if (v28 >= 5)
      {
        __assert_rtn("set_assistance_file_health_l5", "CLPGnssMeasApi.pb.h", 11328, "::CoreGem::CLP::LogEntry::PrivateData::SvHealthIndication_IsValid(value)");
      }

      *(a1 + 172) |= 0x40000u;
      *(a1 + 144) = v28;
      v16 = *(a2 + 172);
    }

    if ((v16 & 0x80000) != 0)
    {
      v29 = *(a2 + 148);
      if (v29 >= 5)
      {
        __assert_rtn("set_ms_based_health_l5", "CLPGnssMeasApi.pb.h", 11351, "::CoreGem::CLP::LogEntry::PrivateData::SvHealthIndication_IsValid(value)");
      }

      *(a1 + 172) |= 0x80000u;
      *(a1 + 148) = v29;
      v16 = *(a2 + 172);
    }

    if ((v16 & 0x100000) != 0)
    {
      v30 = *(a2 + 160);
      if (v30 >= 5)
      {
        __assert_rtn("set_integrity_health_l5", "CLPGnssMeasApi.pb.h", 11374, "::CoreGem::CLP::LogEntry::PrivateData::SvHealthIndication_IsValid(value)");
      }

      *(a1 + 172) |= 0x100000u;
      *(a1 + 160) = v30;
      v16 = *(a2 + 172);
    }

    if ((v16 & 0x200000) != 0)
    {
      v31 = *(a2 + 152);
      *(a1 + 172) |= 0x200000u;
      *(a1 + 152) = v31;
      v16 = *(a2 + 172);
    }

    if ((v16 & 0x400000) != 0)
    {
      v32 = *(a2 + 164);
      if (v32 >= 4)
      {
        __assert_rtn("set_sv_reference_point", "CLPGnssMeasApi.pb.h", 11419, "::CoreGem::CLP::LogEntry::PrivateData::SvReferencePoint_IsValid(value)");
      }

      *(a1 + 172) |= 0x400000u;
      *(a1 + 164) = v32;
    }
  }
}

void sub_2453D0658(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_2453D0680(uint64_t a1)
{
  *a1 = &unk_285853FB8;
  sub_2453BD76C();
  if (qword_2813CE918 != a1)
  {
    v2 = *(a1 + 8);
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }

    v3 = *(a1 + 128);
    if (v3)
    {
      (*(*v3 + 8))(v3);
    }
  }

  v4 = *(a1 + 116);
  if (v4 >= 1)
  {
    for (i = 0; i < v4; ++i)
    {
      v6 = *(*(a1 + 104) + 8 * i);
      if (v6)
      {
        (*(*v6 + 8))(v6);
        v4 = *(a1 + 116);
      }
    }
  }

  v7 = *(a1 + 104);
  if (v7)
  {
    MEMORY[0x245D6A0A0](v7, 0x80C80B8603338);
  }

  v8 = *(a1 + 36);
  if (v8 >= 1)
  {
    for (j = 0; j < v8; ++j)
    {
      v10 = *(*(a1 + 24) + 8 * j);
      if (v10)
      {
        (*(*v10 + 8))(v10);
        v8 = *(a1 + 36);
      }
    }
  }

  v11 = *(a1 + 24);
  if (v11)
  {
    MEMORY[0x245D6A0A0](v11, 0x80C80B8603338);
  }

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);
}

void sub_2453D081C(uint64_t a1)
{
  sub_2453D0680(a1);

  JUMPOUT(0x245D6A0D0);
}

uint64_t sub_2453D08C0(uint64_t result)
{
  v1 = result;
  v2 = *(result + 172);
  if (v2)
  {
    if (v2)
    {
      result = *(result + 8);
      if (result)
      {
        result = sub_2453BF19C(result);
        v2 = *(v1 + 172);
      }
    }

    *(v1 + 16) = 0;
    *(v1 + 48) = 0u;
    *(v1 + 64) = 0u;
  }

  if ((v2 & 0xFF00) != 0)
  {
    *(v1 + 80) = 0;
    *(v1 + 88) = 0;
    *(v1 + 96) = 0;
    if ((v2 & 0x8000) != 0)
    {
      v3 = *(v1 + 128);
      if (v3)
      {
        if (*(v3 + 76))
        {
          *(v3 + 8) = 0;
          *(v3 + 16) = 0;
        }

        *(v3 + 32) = 0;
        *(v3 + 48) = 0;
        *(v3 + 64) = 0;
        *(v3 + 76) = 0;
        v2 = *(v1 + 172);
      }
    }
  }

  if ((v2 & 0xFF0000) != 0)
  {
    *(v1 + 152) = 0u;
    *(v1 + 136) = 0u;
  }

  if (*(v1 + 32) >= 1)
  {
    v4 = 0;
    do
    {
      v5 = *(*(v1 + 24) + 8 * v4);
      result = (*(*v5 + 32))(v5);
      ++v4;
    }

    while (v4 < *(v1 + 32));
  }

  *(v1 + 32) = 0;
  if (*(v1 + 112) >= 1)
  {
    v6 = 0;
    do
    {
      v7 = *(*(v1 + 104) + 8 * v6);
      result = (*(*v7 + 32))(v7);
      ++v6;
    }

    while (v6 < *(v1 + 112));
  }

  *(v1 + 112) = 0;
  *(v1 + 172) = 0;
  return result;
}

uint64_t sub_2453D0A00(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormatLite *this, unsigned int a3)
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
        if (v7 != 2)
        {
          goto LABEL_56;
        }

        *(a1 + 172) |= 1u;
        v8 = *(a1 + 8);
        if (!v8)
        {
          operator new();
        }

        v102[0] = 0;
        v9 = *(this + 1);
        if (v9 >= *(this + 2) || *v9 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v102))
          {
            return 0;
          }
        }

        else
        {
          v102[0] = *v9;
          *(this + 1) = v9 + 1;
        }

        v34 = *(this + 14);
        v35 = *(this + 15);
        *(this + 14) = v34 + 1;
        if (v34 >= v35)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this);
        if (!sub_2453BF1DC(v8, this, v36) || *(this + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this);
        v37 = *(this + 14);
        v38 = __OFSUB__(v37, 1);
        v39 = v37 - 1;
        if (v39 < 0 == v38)
        {
          *(this + 14) = v39;
        }

        v40 = *(this + 1);
        if (v40 >= *(this + 2) || *v40 != 17)
        {
          continue;
        }

        *(this + 1) = v40 + 1;
        goto LABEL_69;
      case 2u:
        if (v7 != 1)
        {
          goto LABEL_56;
        }

LABEL_69:
        *v102 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v102) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 16) = *v102;
        *(a1 + 172) |= 2u;
        v41 = *(this + 1);
        v16 = *(this + 2);
        if (v41 >= v16 || *v41 != 24)
        {
          continue;
        }

        v17 = v41 + 1;
        *(this + 1) = v17;
LABEL_73:
        v102[0] = 0;
        if (v17 >= v16 || (v42 = *v17, (v42 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v102);
          if (!result)
          {
            return result;
          }

          v42 = v102[0];
        }

        else
        {
          *(this + 1) = v17 + 1;
        }

        if (v42 <= 6)
        {
          *(a1 + 172) |= 4u;
          *(a1 + 56) = v42;
        }

        v44 = *(this + 1);
        if (v44 >= *(this + 2) || *v44 != 34)
        {
          continue;
        }

        do
        {
          *(this + 1) = v44 + 1;
LABEL_83:
          v45 = *(a1 + 36);
          v46 = *(a1 + 32);
          if (v46 >= v45)
          {
            if (v45 == *(a1 + 40))
            {
              wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 24));
              v45 = *(a1 + 36);
            }

            *(a1 + 36) = v45 + 1;
            operator new();
          }

          v47 = *(a1 + 24);
          *(a1 + 32) = v46 + 1;
          v48 = *(v47 + 8 * v46);
          v102[0] = 0;
          v49 = *(this + 1);
          if (v49 >= *(this + 2) || *v49 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v102))
            {
              return 0;
            }
          }

          else
          {
            v102[0] = *v49;
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
          if (!sub_2453CEE5C(v48, this, v52) || *(this + 36) != 1)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this);
          v53 = *(this + 14);
          v38 = __OFSUB__(v53, 1);
          v54 = v53 - 1;
          if (v54 < 0 == v38)
          {
            *(this + 14) = v54;
          }

          v44 = *(this + 1);
          if (v44 >= *(this + 2))
          {
            goto LABEL_1;
          }

          v55 = *v44;
        }

        while (v55 == 34);
        if (v55 != 41)
        {
          continue;
        }

        *(this + 1) = v44 + 1;
LABEL_101:
        *v102 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v102) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 48) = *v102;
        *(a1 + 172) |= 0x10u;
        v56 = *(this + 1);
        if (v56 >= *(this + 2) || *v56 != 49)
        {
          continue;
        }

        *(this + 1) = v56 + 1;
LABEL_105:
        *v102 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v102) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 64) = *v102;
        *(a1 + 172) |= 0x20u;
        v57 = *(this + 1);
        if (v57 >= *(this + 2) || *v57 != 57)
        {
          continue;
        }

        *(this + 1) = v57 + 1;
LABEL_109:
        *v102 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v102) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 72) = *v102;
        *(a1 + 172) |= 0x40u;
        v58 = *(this + 1);
        if (v58 >= *(this + 2) || *v58 != 69)
        {
          continue;
        }

        *(this + 1) = v58 + 1;
LABEL_113:
        v102[0] = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(this, v102) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 60) = v102[0];
        *(a1 + 172) |= 0x80u;
        v59 = *(this + 1);
        if (v59 >= *(this + 2) || *v59 != 77)
        {
          continue;
        }

        *(this + 1) = v59 + 1;
LABEL_117:
        v102[0] = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(this, v102) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 80) = v102[0];
        *(a1 + 172) |= 0x100u;
        v60 = *(this + 1);
        v26 = *(this + 2);
        if (v60 >= v26 || *v60 != 80)
        {
          continue;
        }

        v27 = v60 + 1;
        *(this + 1) = v27;
LABEL_121:
        v102[0] = 0;
        if (v27 >= v26 || (v61 = *v27, (v61 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v102);
          if (!result)
          {
            return result;
          }

          v61 = v102[0];
        }

        else
        {
          *(this + 1) = v27 + 1;
        }

        if (v61 <= 4)
        {
          *(a1 + 172) |= 0x200u;
          *(a1 + 84) = v61;
        }

        v62 = *(this + 1);
        v14 = *(this + 2);
        if (v62 >= v14 || *v62 != 88)
        {
          continue;
        }

        v15 = v62 + 1;
        *(this + 1) = v15;
LABEL_131:
        v102[0] = 0;
        if (v15 >= v14 || (v63 = *v15, (v63 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v102);
          if (!result)
          {
            return result;
          }

          v63 = v102[0];
        }

        else
        {
          *(this + 1) = v15 + 1;
        }

        if (v63 <= 4)
        {
          *(a1 + 172) |= 0x400u;
          *(a1 + 88) = v63;
        }

        v64 = *(this + 1);
        v24 = *(this + 2);
        if (v64 >= v24 || *v64 != 96)
        {
          continue;
        }

        v25 = v64 + 1;
        *(this + 1) = v25;
LABEL_141:
        v102[0] = 0;
        if (v25 >= v24 || (v65 = *v25, (v65 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v102);
          if (!result)
          {
            return result;
          }

          v65 = v102[0];
        }

        else
        {
          *(this + 1) = v25 + 1;
        }

        if (v65 <= 4)
        {
          *(a1 + 172) |= 0x800u;
          *(a1 + 92) = v65;
        }

        v66 = *(this + 1);
        v20 = *(this + 2);
        if (v66 >= v20 || *v66 != 104)
        {
          continue;
        }

        v21 = v66 + 1;
        *(this + 1) = v21;
LABEL_151:
        v102[0] = 0;
        if (v21 >= v20 || (v67 = *v21, (v67 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v102);
          if (!result)
          {
            return result;
          }

          v67 = v102[0];
        }

        else
        {
          *(this + 1) = v21 + 1;
        }

        if (v67 <= 4)
        {
          *(a1 + 172) |= 0x1000u;
          *(a1 + 96) = v67;
        }

        v68 = *(this + 1);
        v12 = *(this + 2);
        if (v68 >= v12 || *v68 != 112)
        {
          continue;
        }

        v13 = v68 + 1;
        *(this + 1) = v13;
LABEL_161:
        v102[0] = 0;
        if (v13 >= v12 || (v69 = *v13, (v69 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v102);
          if (!result)
          {
            return result;
          }

          v69 = v102[0];
        }

        else
        {
          *(this + 1) = v13 + 1;
        }

        if (v69 <= 4)
        {
          *(a1 + 172) |= 0x2000u;
          *(a1 + 100) = v69;
        }

        v70 = *(this + 1);
        if (v70 >= *(this + 2) || *v70 != 122)
        {
          continue;
        }

        do
        {
          *(this + 1) = v70 + 1;
LABEL_171:
          v71 = *(a1 + 116);
          v72 = *(a1 + 112);
          if (v72 >= v71)
          {
            if (v71 == *(a1 + 120))
            {
              wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 104));
              v71 = *(a1 + 116);
            }

            *(a1 + 116) = v71 + 1;
            operator new();
          }

          v73 = *(a1 + 104);
          *(a1 + 112) = v72 + 1;
          v74 = *(v73 + 8 * v72);
          v102[0] = 0;
          v75 = *(this + 1);
          if (v75 >= *(this + 2) || *v75 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v102))
            {
              return 0;
            }
          }

          else
          {
            v102[0] = *v75;
            *(this + 1) = v75 + 1;
          }

          v76 = *(this + 14);
          v77 = *(this + 15);
          *(this + 14) = v76 + 1;
          if (v76 >= v77)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this);
          if (!sub_2453CE6D4(v74, this, v78) || *(this + 36) != 1)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this);
          v79 = *(this + 14);
          v38 = __OFSUB__(v79, 1);
          v80 = v79 - 1;
          if (v80 < 0 == v38)
          {
            *(this + 14) = v80;
          }

          v70 = *(this + 1);
          v81 = *(this + 2);
        }

        while (v70 < v81 && *v70 == 122);
        if (v81 - v70 < 2 || *v70 != 130 || v70[1] != 1)
        {
          continue;
        }

        *(this + 1) = v70 + 2;
LABEL_191:
        *(a1 + 172) |= 0x8000u;
        v82 = *(a1 + 128);
        if (!v82)
        {
          operator new();
        }

        v102[0] = 0;
        v83 = *(this + 1);
        if (v83 >= *(this + 2) || *v83 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v102))
          {
            return 0;
          }
        }

        else
        {
          v102[0] = *v83;
          *(this + 1) = v83 + 1;
        }

        v84 = *(this + 14);
        v85 = *(this + 15);
        *(this + 14) = v84 + 1;
        if (v84 >= v85)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this);
        if (!sub_2453CF54C(v82, this, v86) || *(this + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this);
        v87 = *(this + 14);
        v38 = __OFSUB__(v87, 1);
        v88 = v87 - 1;
        if (v88 < 0 == v38)
        {
          *(this + 14) = v88;
        }

        v89 = *(this + 1);
        v30 = *(this + 2);
        if (v30 - v89 <= 1 || *v89 != 144 || v89[1] != 1)
        {
          continue;
        }

        v31 = (v89 + 2);
        *(this + 1) = v31;
LABEL_206:
        v102[0] = 0;
        if (v31 >= v30 || (v90 = *v31, (v90 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v102);
          if (!result)
          {
            return result;
          }

          v90 = v102[0];
        }

        else
        {
          *(this + 1) = v31 + 1;
        }

        if (v90 <= 4)
        {
          *(a1 + 172) |= 0x10000u;
          *(a1 + 136) = v90;
        }

        v91 = *(this + 1);
        v28 = *(this + 2);
        if (v28 - v91 < 2 || *v91 != 152 || v91[1] != 1)
        {
          continue;
        }

        v29 = (v91 + 2);
        *(this + 1) = v29;
LABEL_217:
        v102[0] = 0;
        if (v29 >= v28 || (v92 = *v29, (v92 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v102);
          if (!result)
          {
            return result;
          }

          v92 = v102[0];
        }

        else
        {
          *(this + 1) = v29 + 1;
        }

        if (v92 <= 4)
        {
          *(a1 + 172) |= 0x20000u;
          *(a1 + 140) = v92;
        }

        v93 = *(this + 1);
        v10 = *(this + 2);
        if (v10 - v93 < 2 || *v93 != 160 || v93[1] != 1)
        {
          continue;
        }

        v11 = (v93 + 2);
        *(this + 1) = v11;
LABEL_228:
        v102[0] = 0;
        if (v11 >= v10 || (v94 = *v11, (v94 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v102);
          if (!result)
          {
            return result;
          }

          v94 = v102[0];
        }

        else
        {
          *(this + 1) = v11 + 1;
        }

        if (v94 <= 4)
        {
          *(a1 + 172) |= 0x40000u;
          *(a1 + 144) = v94;
        }

        v95 = *(this + 1);
        v22 = *(this + 2);
        if (v22 - v95 < 2 || *v95 != 168 || v95[1] != 1)
        {
          continue;
        }

        v23 = (v95 + 2);
        *(this + 1) = v23;
LABEL_239:
        v102[0] = 0;
        if (v23 >= v22 || (v96 = *v23, (v96 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v102);
          if (!result)
          {
            return result;
          }

          v96 = v102[0];
        }

        else
        {
          *(this + 1) = v23 + 1;
        }

        if (v96 <= 4)
        {
          *(a1 + 172) |= 0x80000u;
          *(a1 + 148) = v96;
        }

        v97 = *(this + 1);
        v32 = *(this + 2);
        if (v32 - v97 < 2 || *v97 != 176 || v97[1] != 1)
        {
          continue;
        }

        v33 = (v97 + 2);
        *(this + 1) = v33;
LABEL_250:
        v102[0] = 0;
        if (v33 >= v32 || (v98 = *v33, (v98 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v102);
          if (!result)
          {
            return result;
          }

          v98 = v102[0];
        }

        else
        {
          *(this + 1) = v33 + 1;
        }

        if (v98 <= 4)
        {
          *(a1 + 172) |= 0x100000u;
          *(a1 + 160) = v98;
        }

        v99 = *(this + 1);
        if (*(this + 4) - v99 < 2 || *v99 != 185 || v99[1] != 1)
        {
          continue;
        }

        *(this + 1) = v99 + 2;
LABEL_261:
        *v102 = 0;
        if (wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v102))
        {
          *(a1 + 152) = *v102;
          *(a1 + 172) |= 0x200000u;
          v100 = *(this + 1);
          v18 = *(this + 2);
          if (v18 - v100 >= 2 && *v100 == 192 && v100[1] == 1)
          {
            v19 = (v100 + 2);
            *(this + 1) = v19;
LABEL_266:
            v102[0] = 0;
            if (v19 >= v18 || (v101 = *v19, (v101 & 0x80000000) != 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v102);
              if (!result)
              {
                return result;
              }

              v101 = v102[0];
            }

            else
            {
              *(this + 1) = v19 + 1;
            }

            if (v101 <= 3)
            {
              *(a1 + 172) |= 0x400000u;
              *(a1 + 164) = v101;
            }

            if (*(this + 1) == *(this + 2) && (*(this + 11) || *(this + 6) == *(this + 10)))
            {
              *(this + 8) = 0;
              result = 1;
              *(this + 36) = 1;
              return result;
            }
          }

          continue;
        }

        return 0;
      case 3u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_56;
        }

        v17 = *(this + 1);
        v16 = *(this + 2);
        goto LABEL_73;
      case 4u:
        if (v7 == 2)
        {
          goto LABEL_83;
        }

        goto LABEL_56;
      case 5u:
        if (v7 == 1)
        {
          goto LABEL_101;
        }

        goto LABEL_56;
      case 6u:
        if (v7 == 1)
        {
          goto LABEL_105;
        }

        goto LABEL_56;
      case 7u:
        if (v7 == 1)
        {
          goto LABEL_109;
        }

        goto LABEL_56;
      case 8u:
        if (v7 == 5)
        {
          goto LABEL_113;
        }

        goto LABEL_56;
      case 9u:
        if (v7 == 5)
        {
          goto LABEL_117;
        }

        goto LABEL_56;
      case 0xAu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_56;
        }

        v27 = *(this + 1);
        v26 = *(this + 2);
        goto LABEL_121;
      case 0xBu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_56;
        }

        v15 = *(this + 1);
        v14 = *(this + 2);
        goto LABEL_131;
      case 0xCu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_56;
        }

        v25 = *(this + 1);
        v24 = *(this + 2);
        goto LABEL_141;
      case 0xDu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_56;
        }

        v21 = *(this + 1);
        v20 = *(this + 2);
        goto LABEL_151;
      case 0xEu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_56;
        }

        v13 = *(this + 1);
        v12 = *(this + 2);
        goto LABEL_161;
      case 0xFu:
        if (v7 == 2)
        {
          goto LABEL_171;
        }

        goto LABEL_56;
      case 0x10u:
        if (v7 == 2)
        {
          goto LABEL_191;
        }

        goto LABEL_56;
      case 0x12u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_56;
        }

        v31 = *(this + 1);
        v30 = *(this + 2);
        goto LABEL_206;
      case 0x13u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_56;
        }

        v29 = *(this + 1);
        v28 = *(this + 2);
        goto LABEL_217;
      case 0x14u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_56;
        }

        v11 = *(this + 1);
        v10 = *(this + 2);
        goto LABEL_228;
      case 0x15u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_56;
        }

        v23 = *(this + 1);
        v22 = *(this + 2);
        goto LABEL_239;
      case 0x16u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_56;
        }

        v33 = *(this + 1);
        v32 = *(this + 2);
        goto LABEL_250;
      case 0x17u:
        if (v7 == 1)
        {
          goto LABEL_261;
        }

        goto LABEL_56;
      case 0x18u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_56;
        }

        v19 = *(this + 1);
        v18 = *(this + 2);
        goto LABEL_266;
      default:
LABEL_56:
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

uint64_t sub_2453D1880(uint64_t result, const wireless_diagnostics::google::protobuf::MessageLite *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = result;
  v6 = *(result + 172);
  if (v6)
  {
    v11 = *(result + 8);
    if (!v11)
    {
      sub_2453BD76C();
      v11 = *(qword_2813CE918 + 8);
    }

    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(1, v11, a2, a4);
    v6 = *(v5 + 172);
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

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(2, a2, *(v5 + 16), a3);
  if ((*(v5 + 172) & 4) != 0)
  {
LABEL_4:
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(3, *(v5 + 56), a2, a4);
  }

LABEL_5:
  if (*(v5 + 32) >= 1)
  {
    v7 = 0;
    do
    {
      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(4, *(*(v5 + 24) + 8 * v7++), a2, a4);
    }

    while (v7 < *(v5 + 32));
  }

  v8 = *(v5 + 172);
  if ((v8 & 0x10) != 0)
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(5, a2, *(v5 + 48), a3);
    v8 = *(v5 + 172);
    if ((v8 & 0x20) == 0)
    {
LABEL_10:
      if ((v8 & 0x40) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_38;
    }
  }

  else if ((v8 & 0x20) == 0)
  {
    goto LABEL_10;
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(6, a2, *(v5 + 64), a3);
  v8 = *(v5 + 172);
  if ((v8 & 0x40) == 0)
  {
LABEL_11:
    if ((v8 & 0x80) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_39;
  }

LABEL_38:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(7, a2, *(v5 + 72), a3);
  v8 = *(v5 + 172);
  if ((v8 & 0x80) == 0)
  {
LABEL_12:
    if ((v8 & 0x100) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_40;
  }

LABEL_39:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(8, a2, *(v5 + 60), a3);
  v8 = *(v5 + 172);
  if ((v8 & 0x100) == 0)
  {
LABEL_13:
    if ((v8 & 0x200) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_41;
  }

LABEL_40:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(9, a2, *(v5 + 80), a3);
  v8 = *(v5 + 172);
  if ((v8 & 0x200) == 0)
  {
LABEL_14:
    if ((v8 & 0x400) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_42;
  }

LABEL_41:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(0xA, *(v5 + 84), a2, a4);
  v8 = *(v5 + 172);
  if ((v8 & 0x400) == 0)
  {
LABEL_15:
    if ((v8 & 0x800) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_43;
  }

LABEL_42:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(0xB, *(v5 + 88), a2, a4);
  v8 = *(v5 + 172);
  if ((v8 & 0x800) == 0)
  {
LABEL_16:
    if ((v8 & 0x1000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_44;
  }

LABEL_43:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(0xC, *(v5 + 92), a2, a4);
  v8 = *(v5 + 172);
  if ((v8 & 0x1000) == 0)
  {
LABEL_17:
    if ((v8 & 0x2000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

LABEL_44:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(0xD, *(v5 + 96), a2, a4);
  if ((*(v5 + 172) & 0x2000) != 0)
  {
LABEL_18:
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(0xE, *(v5 + 100), a2, a4);
  }

LABEL_19:
  if (*(v5 + 112) >= 1)
  {
    v9 = 0;
    do
    {
      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0xF, *(*(v5 + 104) + 8 * v9++), a2, a4);
    }

    while (v9 < *(v5 + 112));
  }

  v10 = *(v5 + 172);
  if ((v10 & 0x8000) != 0)
  {
    v12 = *(v5 + 128);
    if (!v12)
    {
      sub_2453BD76C();
      v12 = *(qword_2813CE918 + 128);
    }

    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x10, v12, a2, a4);
    v10 = *(v5 + 172);
    if ((v10 & 0x10000) == 0)
    {
LABEL_24:
      if ((v10 & 0x20000) == 0)
      {
        goto LABEL_25;
      }

      goto LABEL_50;
    }
  }

  else if ((v10 & 0x10000) == 0)
  {
    goto LABEL_24;
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(0x12, *(v5 + 136), a2, a4);
  v10 = *(v5 + 172);
  if ((v10 & 0x20000) == 0)
  {
LABEL_25:
    if ((v10 & 0x40000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_51;
  }

LABEL_50:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(0x13, *(v5 + 140), a2, a4);
  v10 = *(v5 + 172);
  if ((v10 & 0x40000) == 0)
  {
LABEL_26:
    if ((v10 & 0x80000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_52;
  }

LABEL_51:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(0x14, *(v5 + 144), a2, a4);
  v10 = *(v5 + 172);
  if ((v10 & 0x80000) == 0)
  {
LABEL_27:
    if ((v10 & 0x100000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_53;
  }

LABEL_52:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(0x15, *(v5 + 148), a2, a4);
  v10 = *(v5 + 172);
  if ((v10 & 0x100000) == 0)
  {
LABEL_28:
    if ((v10 & 0x200000) == 0)
    {
      goto LABEL_29;
    }

LABEL_54:
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(0x17, a2, *(v5 + 152), a3);
    if ((*(v5 + 172) & 0x400000) == 0)
    {
      return result;
    }

    goto LABEL_55;
  }

LABEL_53:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(0x16, *(v5 + 160), a2, a4);
  v10 = *(v5 + 172);
  if ((v10 & 0x200000) != 0)
  {
    goto LABEL_54;
  }

LABEL_29:
  if ((v10 & 0x400000) == 0)
  {
    return result;
  }

LABEL_55:
  v13 = *(v5 + 164);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(0x18, v13, a2, a4);
}

uint64_t sub_2453D1BA0(uint64_t a1, unsigned int a2)
{
  v3 = *(a1 + 172);
  if (v3)
  {
    if (v3)
    {
      v6 = *(a1 + 8);
      if (!v6)
      {
        sub_2453BD76C();
        v6 = *(qword_2813CE918 + 8);
      }

      v7 = sub_2453BF4AC(v6, a2);
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
      v3 = *(a1 + 172);
    }

    else
    {
      v4 = 0;
    }

    if ((v3 & 2) != 0)
    {
      v10 = v4 + 9;
    }

    else
    {
      v10 = v4;
    }

    if ((v3 & 4) != 0)
    {
      v11 = *(a1 + 56);
      if ((v11 & 0x80000000) != 0)
      {
        v12 = 11;
      }

      else if (v11 >= 0x80)
      {
        v12 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v11) + 1;
        v3 = *(a1 + 172);
      }

      else
      {
        v12 = 2;
      }

      v10 += v12;
    }

    v13 = v10 + 9;
    if ((v3 & 0x10) == 0)
    {
      v13 = v10;
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
      v5 = v13 + 5;
    }

    else
    {
      v5 = v13;
    }
  }

  else
  {
    v5 = 0;
  }

  if ((v3 & 0xFF00) != 0)
  {
    if ((v3 & 0x100) != 0)
    {
      v5 += 5;
    }

    if ((v3 & 0x200) != 0)
    {
      v14 = *(a1 + 84);
      if ((v14 & 0x80000000) != 0)
      {
        v15 = 11;
      }

      else if (v14 >= 0x80)
      {
        v15 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v14) + 1;
        v3 = *(a1 + 172);
      }

      else
      {
        v15 = 2;
      }

      v5 += v15;
      if ((v3 & 0x400) == 0)
      {
LABEL_35:
        if ((v3 & 0x800) == 0)
        {
          goto LABEL_36;
        }

        goto LABEL_52;
      }
    }

    else if ((v3 & 0x400) == 0)
    {
      goto LABEL_35;
    }

    v16 = *(a1 + 88);
    if ((v16 & 0x80000000) != 0)
    {
      v17 = 11;
    }

    else if (v16 >= 0x80)
    {
      v17 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v16) + 1;
      v3 = *(a1 + 172);
    }

    else
    {
      v17 = 2;
    }

    v5 += v17;
    if ((v3 & 0x800) == 0)
    {
LABEL_36:
      if ((v3 & 0x1000) == 0)
      {
        goto LABEL_37;
      }

      goto LABEL_58;
    }

LABEL_52:
    v18 = *(a1 + 92);
    if ((v18 & 0x80000000) != 0)
    {
      v19 = 11;
    }

    else if (v18 >= 0x80)
    {
      v19 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v18) + 1;
      v3 = *(a1 + 172);
    }

    else
    {
      v19 = 2;
    }

    v5 += v19;
    if ((v3 & 0x1000) == 0)
    {
LABEL_37:
      if ((v3 & 0x2000) == 0)
      {
        goto LABEL_38;
      }

      goto LABEL_64;
    }

LABEL_58:
    v20 = *(a1 + 96);
    if ((v20 & 0x80000000) != 0)
    {
      v21 = 11;
    }

    else if (v20 >= 0x80)
    {
      v21 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v20) + 1;
      v3 = *(a1 + 172);
    }

    else
    {
      v21 = 2;
    }

    v5 += v21;
    if ((v3 & 0x2000) == 0)
    {
LABEL_38:
      if ((v3 & 0x8000) == 0)
      {
        goto LABEL_76;
      }

LABEL_70:
      v24 = *(a1 + 128);
      if (!v24)
      {
        sub_2453BD76C();
        v24 = *(qword_2813CE918 + 128);
      }

      v25 = sub_2453CFD34(v24);
      v26 = v25;
      if (v25 >= 0x80)
      {
        v27 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v25);
      }

      else
      {
        v27 = 1;
      }

      v5 += v26 + v27 + 2;
      v3 = *(a1 + 172);
      goto LABEL_76;
    }

LABEL_64:
    v22 = *(a1 + 100);
    if ((v22 & 0x80000000) != 0)
    {
      v23 = 11;
    }

    else if (v22 >= 0x80)
    {
      v23 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v22) + 1;
      v3 = *(a1 + 172);
    }

    else
    {
      v23 = 2;
    }

    v5 += v23;
    if ((v3 & 0x8000) == 0)
    {
      goto LABEL_76;
    }

    goto LABEL_70;
  }

LABEL_76:
  if ((v3 & 0xFF0000) == 0)
  {
    goto LABEL_122;
  }

  if ((v3 & 0x10000) != 0)
  {
    v28 = *(a1 + 136);
    if ((v28 & 0x80000000) != 0)
    {
      v29 = 12;
    }

    else if (v28 >= 0x80)
    {
      v29 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v28) + 2;
      v3 = *(a1 + 172);
    }

    else
    {
      v29 = 3;
    }

    v5 += v29;
    if ((v3 & 0x20000) == 0)
    {
LABEL_79:
      if ((v3 & 0x40000) == 0)
      {
        goto LABEL_80;
      }

      goto LABEL_95;
    }
  }

  else if ((v3 & 0x20000) == 0)
  {
    goto LABEL_79;
  }

  v30 = *(a1 + 140);
  if ((v30 & 0x80000000) != 0)
  {
    v31 = 12;
  }

  else if (v30 >= 0x80)
  {
    v31 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v30) + 2;
    v3 = *(a1 + 172);
  }

  else
  {
    v31 = 3;
  }

  v5 += v31;
  if ((v3 & 0x40000) == 0)
  {
LABEL_80:
    if ((v3 & 0x80000) == 0)
    {
      goto LABEL_81;
    }

LABEL_101:
    v34 = *(a1 + 148);
    if ((v34 & 0x80000000) != 0)
    {
      v35 = 12;
    }

    else if (v34 >= 0x80)
    {
      v35 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v34) + 2;
      v3 = *(a1 + 172);
    }

    else
    {
      v35 = 3;
    }

    v5 += v35;
    if ((v3 & 0x100000) == 0)
    {
      goto LABEL_113;
    }

    goto LABEL_107;
  }

LABEL_95:
  v32 = *(a1 + 144);
  if ((v32 & 0x80000000) != 0)
  {
    v33 = 12;
  }

  else if (v32 >= 0x80)
  {
    v33 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v32) + 2;
    v3 = *(a1 + 172);
  }

  else
  {
    v33 = 3;
  }

  v5 += v33;
  if ((v3 & 0x80000) != 0)
  {
    goto LABEL_101;
  }

LABEL_81:
  if ((v3 & 0x100000) != 0)
  {
LABEL_107:
    v36 = *(a1 + 160);
    if ((v36 & 0x80000000) != 0)
    {
      v37 = 12;
    }

    else if (v36 >= 0x80)
    {
      v37 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v36) + 2;
      v3 = *(a1 + 172);
    }

    else
    {
      v37 = 3;
    }

    v5 += v37;
  }

LABEL_113:
  if ((v3 & 0x200000) != 0)
  {
    v5 += 10;
  }

  if ((v3 & 0x400000) != 0)
  {
    v38 = *(a1 + 164);
    if ((v38 & 0x80000000) != 0)
    {
      v39 = 12;
    }

    else if (v38 >= 0x80)
    {
      v39 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v38) + 2;
    }

    else
    {
      v39 = 3;
    }

    v5 += v39;
  }

LABEL_122:
  v40 = *(a1 + 32);
  v41 = v40 + v5;
  if (v40 >= 1)
  {
    v42 = 0;
    do
    {
      v41 += sub_2453CF114(*(*(a1 + 24) + 8 * v42++)) + 1;
    }

    while (v42 < *(a1 + 32));
  }

  v43 = *(a1 + 112);
  v44 = (v43 + v41);
  if (v43 >= 1)
  {
    v45 = 0;
    do
    {
      v46 = sub_2453CEA58(*(*(a1 + 104) + 8 * v45), a2);
      v47 = v46;
      if (v46 >= 0x80)
      {
        v48 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v46);
      }

      else
      {
        v48 = 1;
      }

      v44 = (v47 + v44 + v48);
      ++v45;
    }

    while (v45 < *(a1 + 112));
  }

  *(a1 + 168) = v44;
  return v44;
}

void sub_2453D2008(uint64_t a1, void *lpsrc)
{
  if (!__dynamic_cast(lpsrc, MEMORY[0x277D82C38], &unk_285854B18, 0))
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  sub_2453CFE3C(a1, lpsrc);
}

float sub_2453D20C4(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v8);
  }

  LOBYTE(v5) = *(a2 + 32);
  if (!v5)
  {
    return *&v4;
  }

  if (*(a2 + 32))
  {
    v6 = *(a2 + 16);
    if (v6 >= 0xD)
    {
      __assert_rtn("set_band", "CLPGnssMeasApi.pb.h", 11446, "::CoreGem::CLP::LogEntry::PrivateData::Band_IsValid(value)");
    }

    *(a1 + 32) |= 1u;
    *(a1 + 16) = v6;
    v5 = *(a2 + 32);
  }

  if ((v5 & 2) == 0)
  {
    if ((v5 & 4) == 0)
    {
      goto LABEL_9;
    }

LABEL_13:
    LODWORD(v4) = *(a2 + 20);
    *(a1 + 32) |= 4u;
    *(a1 + 20) = v4;
    if ((*(a2 + 32) & 8) == 0)
    {
      return *&v4;
    }

    goto LABEL_10;
  }

  v4 = *(a2 + 8);
  *(a1 + 32) |= 2u;
  *(a1 + 8) = v4;
  v5 = *(a2 + 32);
  if ((v5 & 4) != 0)
  {
    goto LABEL_13;
  }

LABEL_9:
  if ((v5 & 8) != 0)
  {
LABEL_10:
    LODWORD(v4) = *(a2 + 24);
    *(a1 + 32) |= 8u;
    *(a1 + 24) = v4;
  }

  return *&v4;
}

void sub_2453D21DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_2453D21F4(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = &unk_285854030;
  sub_2453BD76C();

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);
}

void sub_2453D2250(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  sub_2453D21F4(a1);

  JUMPOUT(0x245D6A0D0);
}

uint64_t sub_2453D22D8(uint64_t result)
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

uint64_t sub_2453D22F0(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormatLite *this, unsigned int a3)
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
          if (v8 != 5)
          {
            goto LABEL_20;
          }

LABEL_34:
          v15[0] = 0;
          if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(this, v15) & 1) == 0)
          {
            return 0;
          }

          *(a1 + 20) = v15[0];
          *(a1 + 32) |= 4u;
          v14 = *(this + 1);
          if (v14 < *(this + 2) && *v14 == 37)
          {
            *(this + 1) = v14 + 1;
            goto LABEL_38;
          }
        }

        else
        {
          if (v7 != 4 || v8 != 5)
          {
            goto LABEL_20;
          }

LABEL_38:
          v15[0] = 0;
          if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(this, v15) & 1) == 0)
          {
            return 0;
          }

          *(a1 + 24) = v15[0];
          *(a1 + 32) |= 8u;
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

      v15[0] = 0;
      v9 = *(this + 1);
      if (v9 >= *(this + 2) || (v10 = *v9, (v10 & 0x80000000) != 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v15);
        if (!result)
        {
          return result;
        }

        v10 = v15[0];
      }

      else
      {
        *(this + 1) = v9 + 1;
      }

      if (v10 <= 0xC)
      {
        *(a1 + 32) |= 1u;
        *(a1 + 16) = v10;
      }

      v12 = *(this + 1);
      if (v12 < *(this + 2) && *v12 == 17)
      {
        *(this + 1) = v12 + 1;
LABEL_30:
        *v15 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v15) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 8) = *v15;
        *(a1 + 32) |= 2u;
        v13 = *(this + 1);
        if (v13 < *(this + 2) && *v13 == 29)
        {
          *(this + 1) = v13 + 1;
          goto LABEL_34;
        }
      }
    }

    if (v7 == 2 && v8 == 1)
    {
      goto LABEL_30;
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

uint64_t sub_2453D252C(uint64_t result, uint64_t a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = result;
  v6 = *(result + 32);
  if (v6)
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(1, *(result + 16), a2, a4);
    v6 = *(v5 + 32);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

LABEL_8:
      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(3, a2, *(v5 + 20), a3);
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

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(2, a2, *(v5 + 8), a3);
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
  v7 = *(v5 + 24);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(4, a2, v7, a3);
}

uint64_t sub_2453D25D4(uint64_t a1, unsigned int a2)
{
  LOBYTE(v3) = *(a1 + 32);
  if (v3)
  {
    if (*(a1 + 32))
    {
      v6 = *(a1 + 16);
      if ((v6 & 0x80000000) != 0)
      {
        v4 = 11;
      }

      else if (v6 >= 0x80)
      {
        v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v6) + 1;
        v3 = *(a1 + 32);
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

    if ((v3 & 2) != 0)
    {
      v4 += 9;
    }

    if ((v3 & 4) != 0)
    {
      v4 += 5;
    }

    if ((v3 & 8) != 0)
    {
      result = v4 + 5;
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

  *(a1 + 28) = result;
  return result;
}

float sub_2453D2664(uint64_t a1, void *lpsrc)
{
  if (!__dynamic_cast(lpsrc, MEMORY[0x277D82C38], &unk_285854B30, 0))
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  return sub_2453D20C4(a1, lpsrc);
}

void sub_2453D2720(uint64_t a1, uint64_t a2)
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

void sub_2453D27CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_2453D27E4(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = &unk_2858540A8;
  sub_2453BD76C();

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);
}

void sub_2453D2840(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  sub_2453D27E4(a1);

  JUMPOUT(0x245D6A0D0);
}

uint64_t sub_2453D28C8(uint64_t result)
{
  if (*(result + 24))
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
  }

  *(result + 24) = 0;
  return result;
}

uint64_t sub_2453D28E0(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormatLite *this, unsigned int a3)
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

        *(a1 + 16) = v12;
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

uint64_t sub_2453D2A6C(uint64_t result, uint64_t a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
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

    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(2, v7, a2, a4);
  }

  return result;
}

uint64_t sub_2453D2AD8(uint64_t a1, unint64_t a2)
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

void sub_2453D2B60(uint64_t a1, void *lpsrc)
{
  if (!__dynamic_cast(lpsrc, MEMORY[0x277D82C38], &unk_285854B48, 0))
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  sub_2453D2720(a1, lpsrc);
}

void sub_2453D2C1C(uint64_t a1, uint64_t a2)
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
    }

    if ((v4 & 2) != 0)
    {
      v6 = *(a2 + 12);
      if (v6 >= 5)
      {
        __assert_rtn("set_change_knowledge", "CLPGnssMeasApi.pb.h", 11609, "::CoreGem::CLP::LogEntry::PrivateData::LeapSecondChangeKnowledge_IsValid(value)");
      }

      *(a1 + 28) |= 2u;
      *(a1 + 12) = v6;
      v4 = *(a2 + 28);
    }

    if ((v4 & 4) != 0)
    {
      *(a1 + 28) |= 4u;
      v7 = *(a1 + 16);
      if (!v7)
      {
        operator new();
      }

      v8 = *(a2 + 16);
      if (!v8)
      {
        sub_2453BD76C();
        v8 = *(qword_2813CE930 + 16);
      }

      sub_2453D2720(v7, v8);
    }
  }
}

void sub_2453D2D78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_2453D2D90(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = &unk_285854120;
  sub_2453BD76C();
  if (qword_2813CE930 != a1)
  {
    v2 = *(a1 + 2);
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }
  }

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);
}

void sub_2453D2E28(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  sub_2453D2D90(a1);

  JUMPOUT(0x245D6A0D0);
}

uint64_t sub_2453D2EAC(uint64_t result)
{
  v1 = *(result + 28);
  if (v1)
  {
    *(result + 8) = 0;
    if ((v1 & 4) != 0)
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

  *(result + 28) = 0;
  return result;
}

uint64_t sub_2453D2EE0(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormatLite *this, unsigned int a3)
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
            goto LABEL_34;
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
          goto LABEL_24;
        }
      }

      if ((TagFallback & 7) != 0)
      {
        goto LABEL_16;
      }

      v13 = *(this + 1);
      v9 = *(this + 2);
LABEL_24:
      v25 = 0;
      if (v13 >= v9 || (v15 = *v13, (v15 & 0x80000000) != 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v25);
        if (!result)
        {
          return result;
        }

        v15 = v25;
      }

      else
      {
        *(this + 1) = v13 + 1;
      }

      if (v15 <= 4)
      {
        *(a1 + 28) |= 2u;
        *(a1 + 12) = v15;
      }

      v16 = *(this + 1);
    }

    while (v16 >= *(this + 2) || *v16 != 26);
    *(this + 1) = v16 + 1;
LABEL_34:
    *(a1 + 28) |= 4u;
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
    if (!sub_2453D28E0(v17, this, v21) || *(this + 36) != 1)
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

    if (*(this + 1) == *(this + 2) && (*(this + 11) || *(this + 6) == *(this + 10)))
    {
      *(this + 8) = 0;
      result = 1;
      *(this + 36) = 1;
      return result;
    }
  }
}

uint64_t sub_2453D31A4(uint64_t result, const wireless_diagnostics::google::protobuf::MessageLite *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
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
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(2, *(v5 + 12), a2, a4);
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
    sub_2453BD76C();
    v7 = *(qword_2813CE930 + 16);
  }

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(3, v7, a2, a4);
}

uint64_t sub_2453D3244(uint64_t a1, unint64_t a2)
{
  LOBYTE(v3) = *(a1 + 28);
  if (!v3)
  {
    v4 = 0;
    goto LABEL_23;
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
    if ((*(a1 + 28) & 2) == 0)
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
    v3 = *(a1 + 28);
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
    if (!v8)
    {
      sub_2453BD76C();
      v8 = *(qword_2813CE930 + 16);
    }

    v9 = sub_2453D2AD8(v8, a2);
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

LABEL_23:
  *(a1 + 24) = v4;
  return v4;
}

void sub_2453D3334(uint64_t a1, void *lpsrc)
{
  if (!__dynamic_cast(lpsrc, MEMORY[0x277D82C38], &unk_285854B60, 0))
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  sub_2453D2C1C(a1, lpsrc);
}

double sub_2453D33F0(uint64_t a1, uint64_t a2)
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

void sub_2453D34E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_2453D34FC(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = &unk_285854198;
  sub_2453BD76C();

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);
}

void sub_2453D3558(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  sub_2453D34FC(a1);

  JUMPOUT(0x245D6A0D0);
}

uint64_t sub_2453D35E8(uint64_t result)
{
  if (*(result + 44))
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
  }

  *(result + 44) = 0;
  return result;
}

uint64_t sub_2453D3604(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormatLite *this, unsigned int a3)
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

uint64_t sub_2453D3830(uint64_t result, uint64_t a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
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

uint64_t sub_2453D38D8(uint64_t a1, unint64_t a2)
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

double sub_2453D394C(uint64_t a1, void *lpsrc)
{
  if (!__dynamic_cast(lpsrc, MEMORY[0x277D82C38], &unk_285854B78, 0))
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  return sub_2453D33F0(a1, lpsrc);
}

double sub_2453D3A08(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v11);
  }

  LOBYTE(v5) = *(a2 + 32);
  if (v5)
  {
    if (*(a2 + 32))
    {
      v6 = *(a2 + 24);
      *(a1 + 32) |= 1u;
      *(a1 + 24) = v6;
      v5 = *(a2 + 32);
      if ((v5 & 2) == 0)
      {
LABEL_6:
        if ((v5 & 4) == 0)
        {
          return result;
        }

        goto LABEL_14;
      }
    }

    else if ((*(a2 + 32) & 2) == 0)
    {
      goto LABEL_6;
    }

    *(a1 + 32) |= 2u;
    v7 = *(a1 + 8);
    if (!v7)
    {
      operator new();
    }

    v8 = *(a2 + 8);
    if (!v8)
    {
      sub_2453BD76C();
      v8 = *(qword_2813CE940 + 8);
    }

    sub_2453D2C1C(v7, v8);
    if ((*(a2 + 32) & 4) != 0)
    {
LABEL_14:
      *(a1 + 32) |= 4u;
      v9 = *(a1 + 16);
      if (!v9)
      {
        operator new();
      }

      v10 = *(a2 + 16);
      if (!v10)
      {
        sub_2453BD76C();
        v10 = *(qword_2813CE940 + 16);
      }

      return sub_2453D33F0(v9, v10);
    }
  }

  return result;
}

void sub_2453D3BB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_2453D3BC8(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = &unk_285854210;
  sub_2453BD76C();
  if (qword_2813CE940 != a1)
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

void sub_2453D3C8C(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  sub_2453D3BC8(a1);

  JUMPOUT(0x245D6A0D0);
}

uint64_t sub_2453D3D14(uint64_t result)
{
  v1 = result;
  LOBYTE(v2) = *(result + 32);
  if (v2)
  {
    *(result + 24) = 0;
    if ((v2 & 2) != 0)
    {
      result = *(result + 8);
      if (result)
      {
        result = sub_2453D2EAC(result);
        v2 = *(v1 + 32);
      }
    }

    if ((v2 & 4) != 0)
    {
      v3 = *(v1 + 16);
      if (v3)
      {
        if (*(v3 + 44))
        {
          *(v3 + 24) = 0u;
          *(v3 + 8) = 0u;
        }

        *(v3 + 44) = 0;
      }
    }
  }

  *(v1 + 32) = 0;
  return result;
}

uint64_t sub_2453D3D7C(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormatLite *this, unsigned int a3)
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
        break;
      }

      if (v7 == 2)
      {
        if (v8 != 2)
        {
          goto LABEL_16;
        }

        v13 = *(a1 + 32);
LABEL_24:
        *(a1 + 32) = v13 | 2;
        v15 = *(a1 + 8);
        if (!v15)
        {
          operator new();
        }

        v31 = 0;
        v16 = *(this + 1);
        if (v16 >= *(this + 2) || *v16 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v31))
          {
            return 0;
          }
        }

        else
        {
          v31 = *v16;
          *(this + 1) = v16 + 1;
        }

        v17 = *(this + 14);
        v18 = *(this + 15);
        *(this + 14) = v17 + 1;
        if (v17 >= v18)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this);
        if (!sub_2453D2EE0(v15, this, v19) || *(this + 36) != 1)
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
        if (v23 < *(this + 2) && *v23 == 26)
        {
          *(this + 1) = v23 + 1;
LABEL_38:
          *(a1 + 32) |= 4u;
          v24 = *(a1 + 16);
          if (!v24)
          {
            operator new();
          }

          v32 = 0;
          v25 = *(this + 1);
          if (v25 >= *(this + 2) || *v25 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v32))
            {
              return 0;
            }
          }

          else
          {
            v32 = *v25;
            *(this + 1) = v25 + 1;
          }

          v26 = *(this + 14);
          v27 = *(this + 15);
          *(this + 14) = v26 + 1;
          if (v26 >= v27)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this);
          if (!sub_2453D3604(v24, this, v28) || *(this + 36) != 1)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this);
          v29 = *(this + 14);
          v21 = __OFSUB__(v29, 1);
          v30 = v29 - 1;
          if (v30 < 0 == v21)
          {
            *(this + 14) = v30;
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
        if (v7 != 1 || (TagFallback & 7) != 0)
        {
          goto LABEL_16;
        }

        v10 = *(this + 1);
        v9 = *(this + 2);
        if (v10 >= v9 || (v11 = *v10, v11 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 24));
          if (!result)
          {
            return result;
          }

          v12 = *(this + 1);
          v9 = *(this + 2);
        }

        else
        {
          *(a1 + 24) = v11;
          v12 = v10 + 1;
          *(this + 1) = v12;
        }

        v13 = *(a1 + 32) | 1;
        *(a1 + 32) = v13;
        if (v12 < v9 && *v12 == 18)
        {
          *(this + 1) = v12 + 1;
          goto LABEL_24;
        }
      }
    }

    if (v8 == 2)
    {
      goto LABEL_38;
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
}

uint64_t sub_2453D40E8(uint64_t result, wireless_diagnostics::google::protobuf::MessageLite *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = result;
  v6 = *(result + 32);
  if (v6)
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(1, *(result + 24), a2, a4);
    v6 = *(v5 + 32);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
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

  v7 = *(v5 + 8);
  if (!v7)
  {
    sub_2453BD76C();
    v7 = *(qword_2813CE940 + 8);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(2, v7, a2, a4);
  if ((*(v5 + 32) & 4) != 0)
  {
LABEL_9:
    v8 = *(v5 + 16);
    if (!v8)
    {
      sub_2453BD76C();
      v8 = *(qword_2813CE940 + 16);
    }

    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(3, v8, a2, a4);
  }

  return result;
}