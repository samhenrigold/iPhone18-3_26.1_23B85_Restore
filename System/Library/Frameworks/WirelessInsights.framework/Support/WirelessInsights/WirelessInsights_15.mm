uint64_t sub_10014398C(uint64_t result, wireless_diagnostics::google::protobuf::MessageLite *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
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

uint64_t sub_100143A40(uint64_t a1, unsigned int a2)
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
      v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5, a2) + 1;
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
    v7 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v6, a2) + 1;
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
      v9 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v8, a2) + 1;
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
      v13 = sub_100143190(*(*(a1 + 16) + 8 * v12), a2);
      v14 = v13;
      if (v13 >= 0x80)
      {
        v15 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v13, a2);
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

void sub_100143C24(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  *v1 = 0;
  if (v3)
  {
    operator delete();
  }

  _Unwind_Resume(exception_object);
}

id **sub_100143C48(id **a1)
{
  if (*a1)
  {

    v2 = *a1;
    *a1 = 0;
    if (v2)
    {
      operator delete();
    }
  }

  return a1;
}

id sub_100143CA4(id **a1)
{
  if (*a1)
  {
    return [**a1 improveSafetyAllowed];
  }

  else
  {
    return 0;
  }
}

id sub_100143CBC(id **a1)
{
  if (*a1)
  {
    return [**a1 basebandLoggingProfileInstalled];
  }

  else
  {
    return 0;
  }
}

void sub_100144154(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, int a10, uint64_t a11)
{
  *v11 = off_1002ACE88;
  sub_1000690B8((v11 + 2));
  operator delete();
}

void *sub_10014423C(void *a1)
{
  *a1 = off_1002B3F20;
  v2 = a1[7];
  if (v2)
  {
    sub_100008350(v2);
  }

  *a1 = off_1002ACE88;
  sub_1000690B8((a1 + 2));
  return a1;
}

void sub_1001442AC(void *a1)
{
  *a1 = off_1002B3F20;
  v2 = a1[7];
  if (v2)
  {
    sub_100008350(v2);
  }

  *a1 = off_1002ACE88;
  sub_1000690B8((a1 + 2));

  operator delete();
}

BOOL sub_1001443C4(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = *a2;
  v6 = *(*a2 + 12);
  MetricFileMetadataHelper::MetricFileMetadataHelper();
  v52 = v5;
  v53 = v6;
  while (1)
  {
    v8 = wireless_diagnostics::google::protobuf::io::CodedInputStream::BytesUntilLimit(a4);
    if (v8 < 1)
    {
      break;
    }

    v9 = *(a4 + 8);
    if (v9 >= *(a4 + 16) || (TagFallback = *v9, (TagFallback & 0x80000000) != 0))
    {
      TagFallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadTagFallback(a4);
      *(a4 + 32) = TagFallback;
      if (!TagFallback)
      {
LABEL_13:
        sub_100144D40(a4, 0);
        continue;
      }
    }

    else
    {
      *(a4 + 32) = TagFallback;
      *(a4 + 8) = v9 + 1;
      if (!TagFallback)
      {
        goto LABEL_13;
      }
    }

    v11 = wis::reflect::decodeTag(TagFallback, v7);
    v12 = v11;
    v13 = HIDWORD(v11);
    memset(v62, 0, sizeof(v62));
    v63 = 0xFFFFFFFFLL;
    MetricFileMetadataHelper::getSubfieldType();
    *v62 = v60;
    v63 = v61;
    BuiltinType = MetadataHelper::getBuiltinType();
    DecodingType = wis::reflect::getDecodingType();
    v16 = DecodingType;
    if (DecodingType > 13)
    {
      if ((DecodingType - 15) >= 0xC)
      {
        if (DecodingType == 14)
        {
          LODWORD(__p) = 0;
          v30 = *(a4 + 8);
          if (v30 >= *(a4 + 16) || (v31 = *v30, (v31 & 0x80000000) != 0))
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a4, &__p))
            {
              goto LABEL_49;
            }

            v31 = __p;
          }

          else
          {
            LODWORD(__p) = *v30;
            *(a4 + 8) = v30 + 1;
          }

          sub_100045794(v62, v31);
          Raw = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadRaw(a4, *v62, __p);
          if (Raw)
          {
            if (v53 == v13)
            {
              LOBYTE(BuiltinType) = sub_10014C338(*v62, *&v62[2], v52 + 48, 0);
            }

            else
            {
              LOBYTE(BuiltinType) = 0;
            }
          }

          v42 = *v62;
          if (!*v62)
          {
            goto LABEL_133;
          }

          *&v62[2] = *v62;
          goto LABEL_132;
        }

        if (DecodingType != 27)
        {
          goto LABEL_49;
        }

        v62[0] = 0;
        v27 = *(a4 + 8);
        if (v27 >= *(a4 + 16) || (v28 = *v27, v28 < 0))
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a4, v62))
          {
            goto LABEL_49;
          }

          v28 = v62[0];
        }

        else
        {
          v62[0] = *v27;
          *(a4 + 8) = v27 + 1;
        }

        v37 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a4, v28);
        ++*(a4 + 56);
        v38 = wireless_diagnostics::google::protobuf::io::CodedInputStream::BytesUntilLimit(a4);
        wireless_diagnostics::google::protobuf::io::CodedInputStream::Skip(a4, v38);
        v39 = *(a4 + 56);
        v40 = __OFSUB__(v39, 1);
        v41 = v39 - 1;
        if (v41 < 0 == v40)
        {
          *(a4 + 56) = v41;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a4, v37);
      }

      else
      {
        v59 = 0;
        v18 = *(a4 + 8);
        if (v18 >= *(a4 + 16) || *v18 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a4, &v59))
          {
            goto LABEL_49;
          }
        }

        else
        {
          v59 = *v18;
          *(a4 + 8) = v18 + 1;
        }

        wis::reflect::getUnpackedType();
        WireTypeForType = wis::reflect::getWireTypeForType();
        v57 = a4;
        v20 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a4, v59);
        v58 = v20;
        __p = 0;
        v55 = 0;
        v56 = 0;
        while (wireless_diagnostics::google::protobuf::io::CodedInputStream::BytesUntilLimit(a4) >= 1)
        {
          *v62 = 0;
          sub_10004490C(&__p, v62);
          if (WireTypeForType > 1)
          {
            if (WireTypeForType == 5)
            {
              v62[0] = 0;
              LittleEndian32Fallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a4, v62);
              *(v55 - 1) = v62[0];
              if ((LittleEndian32Fallback & 1) == 0)
              {
                goto LABEL_46;
              }
            }

            else if (WireTypeForType == 2)
            {
LABEL_46:
              if (__p)
              {
                v55 = __p;
                operator delete(__p);
              }

              wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a4, v20);
              goto LABEL_49;
            }
          }

          else if (WireTypeForType)
          {
            if (WireTypeForType == 1)
            {
              LittleEndian64Fallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a4, v55 - 1);
LABEL_29:
              if ((LittleEndian64Fallback & 1) == 0)
              {
                goto LABEL_46;
              }
            }
          }

          else
          {
            v23 = v55 - 1;
            v24 = *(a4 + 8);
            if (v24 >= *(a4 + 16) || (v25 = *v24, (v25 & 0x8000000000000000) != 0))
            {
              LittleEndian64Fallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a4, v23);
              goto LABEL_29;
            }

            *v23 = v25;
            *(a4 + 8) = v24 + 1;
          }
        }

        if (v16 > 20)
        {
          if (v16 <= 23)
          {
            if (v16 == 22)
            {
              sub_100045278(&__p, v62);
              goto LABEL_101;
            }

            goto LABEL_52;
          }

          if (v16 == 26)
          {
            sub_100044F80(&__p, v62);
            v33 = *v62;
            if (*v62)
            {
              goto LABEL_103;
            }

            goto LABEL_104;
          }

          if (v16 == 25)
          {
            goto LABEL_100;
          }

          if (v16 != 24)
          {
LABEL_154:
            exception = __cxa_allocate_exception(0x10uLL);
            std::runtime_error::runtime_error(exception, "This should never happen, no matter what the input!");
          }

LABEL_72:
          sub_100044B50(&__p, v62);
          goto LABEL_101;
        }

        if (v16 > 17)
        {
          if (v16 != 18)
          {
            if (v16 == 19)
            {
              sub_10004513C(&__p, v62);
              goto LABEL_101;
            }

LABEL_52:
            sub_100044D0C(&__p, v62);
            goto LABEL_101;
          }

          goto LABEL_72;
        }

        if (v16 == 15)
        {
          sub_100044BD0(&__p, v62);
          goto LABEL_101;
        }

        if (v16 == 16)
        {
          sub_100044E44(&__p, v62);
          goto LABEL_101;
        }

        if (v16 != 17)
        {
          goto LABEL_154;
        }

LABEL_100:
        sub_100045004(&__p, v62);
LABEL_101:
        v33 = *v62;
        if (*v62)
        {
          *&v62[2] = *v62;
LABEL_103:
          operator delete(v33);
        }

LABEL_104:
        if (__p)
        {
          v55 = __p;
          operator delete(__p);
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a4, v20);
      }
    }

    else
    {
      if ((DecodingType - 1) < 0xC)
      {
        *v62 = 0;
        if (v12 > 1u)
        {
          if (v12 == 2)
          {
            goto LABEL_49;
          }

          if (v12 == 5)
          {
            LODWORD(__p) = 0;
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a4, &__p))
            {
              goto LABEL_49;
            }

            *v62 = __p;
          }
        }

        else if (v12)
        {
          if (v12 == 1)
          {
            Varint64Fallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a4, v62);
LABEL_83:
            if ((Varint64Fallback & 1) == 0)
            {
              goto LABEL_49;
            }
          }
        }

        else
        {
          v29 = *(a4 + 8);
          if (v29 >= *(a4 + 16) || (*v29 & 0x8000000000000000) != 0)
          {
            Varint64Fallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a4, v62);
            goto LABEL_83;
          }

          *v62 = *v29;
          *(a4 + 8) = v29 + 1;
        }

        switch(BuiltinType)
        {
          case 1:
          case 15:
            wis::protobuf::NumberConverter<(wis::reflect::Type)1>::decode();
            break;
          case 2:
          case 16:
            wis::protobuf::NumberConverter<(wis::reflect::Type)2>::decode();
            break;
          case 3:
          case 4:
          case 6:
          case 7:
          case 9:
          case 10:
          case 11:
          case 12:
          case 17:
          case 18:
          case 20:
          case 21:
          case 23:
          case 24:
          case 25:
          case 26:
            continue;
          case 5:
          case 19:
            wis::protobuf::NumberConverter<(wis::reflect::Type)5>::decode();
            break;
          case 8:
          case 22:
            wis::protobuf::NumberConverter<(wis::reflect::Type)8>::decode();
            break;
          default:
            v49 = __cxa_allocate_exception(0x10uLL);
            std::runtime_error::runtime_error(v49, "This should never happen, no matter what the input!");
        }

        continue;
      }

      if (DecodingType)
      {
        if (DecodingType != 13)
        {
          goto LABEL_49;
        }

        LODWORD(__p) = 0;
        v26 = *(a4 + 8);
        if (v26 >= *(a4 + 16) || *v26 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a4, &__p))
          {
            goto LABEL_49;
          }
        }

        else
        {
          LODWORD(__p) = *v26;
          *(a4 + 8) = v26 + 1;
        }

        memset(v62, 0, sizeof(v62));
        v63 = 0;
        Raw = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadString();
        if (Raw)
        {
          if (v53 == v13)
          {
            v35 = HIBYTE(v63);
            if (v63 >= 0)
            {
              v36 = v62;
            }

            else
            {
              v36 = *v62;
            }

            if (v63 < 0)
            {
              v35 = *&v62[2];
            }

            LOBYTE(BuiltinType) = sub_100144DB8(v36, v36 + v35, v52 + 48, 0);
          }

          else
          {
            LOBYTE(BuiltinType) = 0;
          }
        }

        if ((SHIBYTE(v63) & 0x80000000) == 0)
        {
          goto LABEL_133;
        }

        v42 = *v62;
LABEL_132:
        operator delete(v42);
LABEL_133:
        if ((Raw & 1) == 0)
        {
          goto LABEL_49;
        }

        if (BuiltinType)
        {
          break;
        }
      }

      else if (v12 > 1u)
      {
        if (v12 != 2)
        {
          if (v12 != 5)
          {
            goto LABEL_49;
          }

          v62[0] = 0;
          v32 = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a4, v62);
          goto LABEL_143;
        }

        LODWORD(__p) = 0;
        v44 = *(a4 + 8);
        if (v44 >= *(a4 + 16) || (v45 = *v44, (v45 & 0x80000000) != 0))
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a4, &__p))
          {
            goto LABEL_49;
          }

          v45 = __p;
        }

        else
        {
          LODWORD(__p) = *v44;
          *(a4 + 8) = v44 + 1;
        }

        sub_100045794(v62, v45);
        v46 = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadRaw(a4, *v62, __p);
        if (*v62)
        {
          *&v62[2] = *v62;
          operator delete(*v62);
        }

        if ((v46 & 1) == 0)
        {
LABEL_49:
          sub_100144D40(a4, v13);
        }
      }

      else if (v12)
      {
        if (v12 != 1)
        {
          goto LABEL_49;
        }

        *v62 = 0;
        if (wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a4, v62))
        {
          goto LABEL_49;
        }
      }

      else
      {
        *v62 = 0;
        v43 = *(a4 + 8);
        if (v43 < *(a4 + 16) && (*v43 & 0x80000000) == 0)
        {
          *(a4 + 8) = v43 + 1;
          continue;
        }

        v32 = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a4, v62);
LABEL_143:
        if ((v32 & 1) == 0)
        {
          goto LABEL_49;
        }
      }
    }
  }

  sub_1000447B8(&v51);
  if (v50)
  {
    sub_100008350(v50);
  }

  return v8 > 0;
}

uint64_t sub_100144CF4(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100144D40(uint64_t result, int a2)
{
  if (a2 || *(result + 36) != 1)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Parsing failed in metric");
  }

  return result;
}

uint64_t sub_100144DB8(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  if (*a3 && (*(*a3 + 42) & 8) != 0)
  {
    return 0;
  }

  v13 = 0;
  memset(v12, 0, sizeof(v12));
  v14 = 0;
  v15 = 0;
  v16 = 0;
  v17 = 1;
  sub_100144EC4(&v7, a1, a2, v12, a3, a4 | 0x400u, a1);
  v4 = sub_100145AF8(&v7);
  v18 = &v11;
  sub_100145A70(&v18);
  if (v10)
  {
    *v9 = v10;
  }

  v5 = v8;
  v8 = 0;
  if (v5)
  {
    sub_10014C2F8(v5);
    operator delete();
  }

  sub_10014C2F8(v12);
  return v4;
}

void sub_100144EA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_10014C2A0(&a9);
  sub_10014C2F8(v9 - 128);
  _Unwind_Resume(a1);
}

uint64_t sub_100144EC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *a1 = a4;
  *(a1 + 8) = 0;
  *(a1 + 24) = a2;
  *(a1 + 32) = a3;
  *(a1 + 40) = a2;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = a7;
  *(a1 + 72) = a5;
  *(a1 + 80) = *(*a5 + 24);
  *(a1 + 123) = 0;
  *(a1 + 128) = a1 + 136;
  *(a1 + 136) = a1 + 128;
  *(a1 + 144) = 0;
  *(a1 + 152) = -1;
  *(a1 + 160) = 0;
  *(a1 + 168) = 0;
  *(a1 + 184) = 0;
  *(a1 + 192) = 0;
  *(a1 + 200) = 0;
  *(a1 + 232) = 0;
  sub_100144F94(a1, a5, a6);
  return a1;
}

void sub_100144F5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v14 = v12;
  a10 = v14;
  sub_100145A70(&a10);
  v16 = *(v11 + 144);
  if (v16)
  {
    **v13 = v16;
  }

  sub_100145248(v10, 0);
  _Unwind_Resume(a1);
}

uint64_t sub_100144F94(uint64_t a1, uint64_t a2, int a3)
{
  if (!*a2 || *(*a2 + 44))
  {
    std::logic_error::logic_error(&v14, "Invalid regular expression object");
    sub_10014513C(&v14);
  }

  v3 = a3;
  *(a1 + 88) = 0;
  *(a1 + 96) = a3;
  result = sub_100145198(a1);
  v7 = **(a1 + 72);
  if (v7)
  {
    v8 = *(v7 + 40);
  }

  else
  {
    v8 = 0;
  }

  *(a1 + 120) = (v8 & 0x100000) != 0;
  v9 = *(a1 + 96);
  if ((v9 & 0x30000) == 0)
  {
    if ((v8 & 3) == 2 || (v8 & 0x1003) == 4097 || (v8 & 0x203) == 0)
    {
      v12 = 0x10000;
    }

    else
    {
      v12 = 0x20000;
    }

    v9 |= v12;
    *(a1 + 96) = v9;
  }

  if ((v9 & 0x20000) != 0)
  {
    operator new();
  }

  *(a1 + 16) = *a1;
  *(a1 + 208) = 0;
  *(a1 + 216) = 0;
  *(a1 + 176) = *(v7 + 368);
  if ((v3 & 0x40) != 0)
  {
    v13 = 2;
  }

  else
  {
    v13 = 3;
  }

  *(a1 + 180) = v13;
  if (*(*a2 + 401) == 1)
  {
    *(a1 + 96) &= 0x3FFFFBFFu;
  }

  return result;
}

void sub_10014513C(const std::logic_error *a1)
{
  exception = __cxa_allocate_exception(0x40uLL);
  sub_100145294(exception, a1);
}

uint64_t sub_100145198(uint64_t result)
{
  v1 = *(result + 32) - *(result + 24);
  if (v1 <= 1)
  {
    v1 = 1;
  }

  v2 = **(result + 72);
  if (v2)
  {
    v2 = *(v2 + 56);
  }

  if (v2 <= 1)
  {
    v2 = 1;
  }

  if (0x7FFFFFFFFFFFFFFFLL / v2 < v2 || (v3 = v2 * v2, 0x7FFFFFFFFFFFFFFFLL / v1 < v3) || (v4 = v3 * v1, v4 > 0x7FFFFFFFFFFE795FLL) || (*(result + 112) = v4 + 100000, 0x7FFFFFFFFFFFFFFFLL / v1 < v1) || (v5 = v1 * v1, v5 > 0x7FFFFFFFFFFE795FLL))
  {
    v6 = 100000000;
LABEL_13:
    *(result + 112) = v6;
    return result;
  }

  if (v5 >= 0x5F45A60)
  {
    v5 = 99900000;
  }

  if (v5 > v4)
  {
    v6 = v5 + 100000;
    goto LABEL_13;
  }

  return result;
}

uint64_t sub_100145248(uint64_t *a1, uint64_t a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    sub_10014C2F8(result);

    operator delete();
  }

  return result;
}

uint64_t sub_100145294(uint64_t a1, const std::logic_error *a2)
{
  *a1 = &off_1002B40B0;
  std::logic_error::logic_error((a1 + 8), a2);
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = -1;
  *a1 = &off_1002B4038;
  *(a1 + 8) = off_1002B4068;
  *(a1 + 24) = off_1002B4090;
  return a1;
}

uint64_t sub_100145340(uint64_t a1)
{
  *(a1 + 24) = &off_1002B40E0;
  sub_100145840((a1 + 32));
  std::invalid_argument::~invalid_argument((a1 + 8));
  return a1;
}

void sub_100145564(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_100145840(&a9);
  sub_100145840(va);
  (*(*v9 + 24))(v9);
  _Unwind_Resume(a1);
}

void sub_1001455D0(uint64_t a1)
{
  exception = __cxa_allocate_exception(0x40uLL);
  sub_10014589C(exception, a1);
}

void sub_10014562C(uint64_t a1)
{
  *(a1 + 24) = &off_1002B40E0;
  sub_100145840((a1 + 32));
  std::invalid_argument::~invalid_argument((a1 + 8));

  operator delete();
}

void sub_1001456A0(std::invalid_argument *a1)
{
  a1[1].__vftable = &off_1002B40E0;
  sub_100145840(&a1[1].__imp_);

  std::invalid_argument::~invalid_argument(a1);
}

void sub_1001456FC(std::invalid_argument *a1)
{
  a1[1].__vftable = &off_1002B40E0;
  sub_100145840(&a1[1].__imp_);
  std::invalid_argument::~invalid_argument(a1);

  operator delete();
}

void sub_100145774(void *a1)
{
  *a1 = &off_1002B40E0;
  v1 = (a1 - 2);
  sub_100145840(a1 + 1);

  std::invalid_argument::~invalid_argument(v1);
}

void sub_1001457CC(void *a1)
{
  *a1 = &off_1002B40E0;
  v1 = (a1 - 2);
  sub_100145840(a1 + 1);
  std::invalid_argument::~invalid_argument(v1);

  operator delete();
}

uint64_t *sub_100145840(uint64_t *a1)
{
  v2 = *a1;
  if (v2 && (*(*v2 + 32))(v2))
  {
    *a1 = 0;
  }

  return a1;
}

uint64_t sub_10014589C(uint64_t a1, uint64_t a2)
{
  *a1 = &off_1002B40B0;
  std::logic_error::logic_error((a1 + 8), (a2 + 8));
  v4 = *(a2 + 32);
  *(a1 + 24) = &off_1002B40E0;
  *(a1 + 32) = v4;
  if (v4)
  {
    (*(*v4 + 24))(v4);
  }

  v5 = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 40) = v5;
  *a1 = &off_1002B4038;
  *(a1 + 8) = off_1002B4068;
  *(a1 + 24) = off_1002B4090;
  return a1;
}

uint64_t sub_1001459D8(uint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (result)
  {
    result = (*(*result + 32))(result);
  }

  *a1 = a2;
  if (a2)
  {
    v5 = *(*a2 + 24);

    return v5(a2);
  }

  return result;
}

void sub_100145A70(void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      do
      {
        v6 = v4 - 112;
        sub_10014C2F8((v4 - 96));
        v4 = v6;
      }

      while (v6 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t sub_100145AF8(void *a1)
{
  sub_100146134(&v23, a1 + 26, a1 + 27);
  *(a1 + 56) = 1024;
  a1[13] = 0;
  v2 = *(a1 + 24);
  if ((v2 & 0x200) == 0)
  {
    v3 = a1[2];
    v4 = a1[3];
    a1[5] = v4;
    a1[7] = v4;
    v5 = *a1[9];
    a1[11] = *(v5 + 72);
    if ((v2 & 0x40000) != 0)
    {
      v6 = 1;
    }

    else
    {
      v6 = *(v5 + 64);
    }

    sub_1001461B8(v3, v6, v4, a1[4]);
    *(a1[2] + 24) = a1[3];
    v13 = a1[2];
    v14 = a1[9];
    v15 = *v14;
    v16 = v14[1];
    if (v16)
    {
      atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
      atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v17 = *(v13 + 64);
    *(v13 + 56) = v15;
    *(v13 + 64) = v16;
    if (v17)
    {
      sub_100008350(v17);
    }

    if (v16)
    {
      sub_100008350(v16);
    }

    v12 = *(a1 + 24) | 0x200;
    *(a1 + 24) = v12;
    if ((v12 & 0x20000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_22;
  }

  v7 = sub_100146300(*a1, 0)[1];
  a1[5] = v7;
  a1[7] = v7;
  if ((*(a1 + 97) & 8) == 0 && !sub_10014637C(*a1, 0))
  {
    v9 = a1[5];
    if (v9 == a1[4])
    {
      v21 = 0;
      goto LABEL_31;
    }

    a1[5] = v9 + 1;
  }

  if ((*(a1 + 98) & 4) != 0 || (v10 = *a1[9]) == 0)
  {
    v11 = 1;
  }

  else
  {
    v11 = *(v10 + 64);
  }

  sub_1001461B8(a1[2], v11, a1[7], a1[4]);
  v12 = *(a1 + 24);
  if ((v12 & 0x20000) != 0)
  {
LABEL_22:
    v18 = *a1[9];
    if (v18)
    {
      v19 = *(v18 + 64);
    }

    else
    {
      v19 = 1;
    }

    sub_1001461B8(*a1, v19, a1[3], a1[4]);
    *(*a1 + 24) = a1[3];
    v12 = *(a1 + 24);
  }

LABEL_26:
  if ((~v12 & 0xA0000) == 0)
  {
    std::logic_error::logic_error(&v24, "Usage Error: Can't mix regular expression captures with POSIX matching rules");
    sub_10014AAA0(&v24);
  }

  if ((v12 & 0x1000) != 0)
  {
    v20 = 4;
  }

  else
  {
    v20 = *(*a1[9] + 80);
  }

  v21 = (*(&off_1002B40F0 + 2 * v20))(a1);
LABEL_31:
  sub_10014C238(&v23, v8);
  return v21;
}

void sub_100145D64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  __cxa_end_catch();
  sub_10014C238(va, v4);
  _Unwind_Resume(a1);
}

uint64_t sub_100145D84(uint64_t a1)
{
  v2 = **(a1 + 72) + 84;
  v3 = *(a1 + 32);
  for (i = *(a1 + 40); ; *(a1 + 40) = i)
  {
    if (i != v3)
    {
      while ((*(v2 + *i) & 3) == 0)
      {
        *(a1 + 40) = ++i;
        if (i == v3)
        {
          goto LABEL_10;
        }
      }
    }

    if (i == v3)
    {
      break;
    }

    result = sub_100146044(a1);
    if (result)
    {
      return result;
    }

    v3 = *(a1 + 32);
    v6 = *(a1 + 40);
    if (v6 == v3)
    {
      return result;
    }

    i = v6 + 1;
  }

LABEL_10:
  if (!*(**(a1 + 72) + 340))
  {
    return 0;
  }

  return sub_100146044(a1);
}

uint64_t sub_100145E40(uint64_t a1)
{
  v2 = **(a1 + 72);
  if (*(a1 + 97))
  {
    v3 = *(a1 + 40);
    goto LABEL_6;
  }

  v3 = *(a1 + 40);
  if (v3 != *(a1 + 24))
  {
LABEL_6:
    v5 = (v3 - 1);
    *(a1 + 40) = v5;
    goto LABEL_7;
  }

  if (sub_100146044(a1))
  {
    return 1;
  }

  v5 = *(a1 + 40);
LABEL_7:
  v6 = v2 + 84;
  v7 = *(a1 + 32);
  do
  {
    while (v5 != v7)
    {
      v8 = sub_100146404(*(a1 + 80), *v5, *(a1 + 176));
      v7 = *(a1 + 32);
      v5 = *(a1 + 40);
      if (!v8)
      {
        break;
      }

      *(a1 + 40) = ++v5;
    }

    while (v5 != v7)
    {
      v9 = sub_100146404(*(a1 + 80), *v5, *(a1 + 176));
      v7 = *(a1 + 32);
      v5 = *(a1 + 40);
      if (v9)
      {
        break;
      }

      *(a1 + 40) = ++v5;
    }

    if (v5 == v7)
    {
      break;
    }

    if ((*(v6 + *v5) & 3) != 0)
    {
      if (sub_100146044(a1))
      {
        return 1;
      }

      v7 = *(a1 + 32);
      v5 = *(a1 + 40);
    }
  }

  while (v5 != v7);
  return 0;
}

BOOL sub_100145F38(uint64_t a1)
{
  v2 = **(a1 + 72);
  v3 = 1;
  if ((sub_100146044(a1) & 1) == 0)
  {
    v4 = v2 + 84;
    v6 = *(a1 + 32);
    v5 = *(a1 + 40);
    do
    {
      if (v5 == v6)
      {
        break;
      }

      do
      {
        v7 = *v5;
        v8 = v7 > 0xD;
        v9 = (1 << v7) & 0x3400;
        if (!v8 && v9 != 0)
        {
          break;
        }

        *(a1 + 40) = ++v5;
      }

      while (v5 != v6);
      if (v5 == v6)
      {
        break;
      }

      *(a1 + 40) = ++v5;
      if (v5 == v6)
      {
        return *(**(a1 + 72) + 340) && (sub_100146044(a1) & 1) != 0;
      }

      if ((*(v4 + *v5) & 3) != 0)
      {
        if (sub_100146044(a1))
        {
          return 1;
        }

        v6 = *(a1 + 32);
        v5 = *(a1 + 40);
      }
    }

    while (v5 != v6);
    return 0;
  }

  return v3;
}

uint64_t sub_100146020(uint64_t a1)
{
  if (*(a1 + 40) != *(a1 + 24) || (*(a1 + 96) & 4) != 0)
  {
    return 0;
  }

  else
  {
    return sub_100146044(a1);
  }
}

uint64_t sub_100146044(uint64_t a1)
{
  *(a1 + 121) = 0;
  *(a1 + 88) = *(**(a1 + 72) + 72);
  sub_1001464CC(*(a1 + 16), *(a1 + 40));
  *(a1 + 48) = *(a1 + 40);
  sub_100146558(a1, v2, v3);
  if (*(a1 + 122))
  {
    return 1;
  }

  if (*(a1 + 121) != 1)
  {
    goto LABEL_5;
  }

  v5 = *(a1 + 96);
  if ((v5 & 0x2000) == 0)
  {
    goto LABEL_5;
  }

  result = 1;
  *(a1 + 122) = 1;
  v6 = *(a1 + 16);
  v7 = *(a1 + 32);
  *(*v6 + 56) = v7;
  v8 = *v6;
  *(v8 + 64) = 0;
  *v8 = v7;
  *(*v6 + 16) = **v6 != *(*v6 + 8);
  v6[4] = v7;
  v6[5] = v7;
  *(v6 + 48) = 0;
  *(v6 + 76) = 0;
  *(a1 + 40) = *(a1 + 32);
  if ((v5 & 0x20000) != 0)
  {
    sub_10014676C(*a1, *(a1 + 16));
    if (*(a1 + 122))
    {
      return 1;
    }

LABEL_5:
    result = 0;
    *(a1 + 40) = *(a1 + 48);
  }

  return result;
}

void *sub_100146134(void *a1, void *a2, void *a3)
{
  *a1 = a2;
  v6 = sub_100148954(a1, a2);
  v7 = 0;
  while (1)
  {
    v8 = atomic_load(&v6[v7]);
    if (v8)
    {
      v9 = v8;
      atomic_compare_exchange_strong(&v6[v7], &v9, 0);
      if (v9 == v8)
      {
        break;
      }
    }

    v7 += 8;
    if (v7 == 128)
    {
      v8 = operator new(0x1000uLL);
      break;
    }
  }

  *a2 = v8;
  *a3 = v8 + 1022;
  v8[1022] = 0;
  return a1;
}

uint64_t *sub_1001461B8(uint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v14[0] = a4;
  v14[1] = a4;
  v15 = 0;
  v6 = *result;
  v7 = result[1];
  v8 = v7 - *result;
  v9 = 0xAAAAAAAAAAAAAAABLL * (v8 >> 3);
  v10 = a2 + 2;
  if (a2 + 2 >= v9)
  {
    if (v8 >= 1)
    {
      v13 = v8 / 0x18uLL + 1;
      do
      {
        *v6 = a4;
        *(v6 + 8) = a4;
        *(v6 + 16) = 0;
        v6 += 24;
        --v13;
      }

      while (v13 > 1);
    }

    if (v10 != v9)
    {
      result = sub_10014B1AC(result, result[1], v10 - v9, v14);
    }
  }

  else
  {
    v11 = 24 * a2 + 48;
    if (v11 + v6 != v7)
    {
      result[1] = v6 + v11;
      v8 = 24 * a2 + 48;
    }

    if (v8 >= 1)
    {
      v12 = v8 / 0x18uLL + 1;
      do
      {
        *v6 = a4;
        *(v6 + 8) = a4;
        *(v6 + 16) = 0;
        v6 += 24;
        --v12;
      }

      while (v12 > 1);
    }
  }

  *(*v5 + 24) = a3;
  *(v5 + 18) = 0;
  return result;
}

uint64_t *sub_100146300(uint64_t *a1, int a2)
{
  v2 = *a1;
  if (*(a1 + 76) == 1 && v2 == a1[1])
  {
    sub_10014AA5C();
  }

  v3 = a2 + 2 >= (-1431655765 * ((a1[1] - v2) >> 3)) || a2 <= -3;
  v4 = v2 + 24 * (a2 + 2);
  if (v3)
  {
    return a1 + 4;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_10014637C(uint64_t a1, int a2)
{
  if (*(a1 + 76) == 1)
  {
    sub_10014AA5C();
  }

  result = 0;
  if (a2 >= -1 && a2 + 2 < (-1431655765 * ((*(a1 + 8) - *a1) >> 3)))
  {
    v4 = *a1 + 24 * (a2 + 2);
    if (*(v4 + 16) == 1)
    {
      return *(v4 + 8) - *v4;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

BOOL sub_100146404(uint64_t a1, int a2, int a3)
{
  if ((a2 & 0x80000000) == 0 && (a3 & 0x5F700) != 0 && (*(*(*(*a1 + 8) + 16) + 4 * a2) & a3 & 0x5F700) != 0 || a2 == 95 && (a3 & 0x2000000) != 0)
  {
    return 1;
  }

  if ((a2 & 0x80) != 0 || (a3 & 0x1000000) == 0 || (*(*(*(*a1 + 8) + 16) + 4 * a2) & 0x4000) == 0 || (v3 = 1, a2 <= 0xDu) && ((1 << a2) & 0x3400) != 0)
  {
    if (a2 - 10 <= 3 && (a3 & 0x10000000) != 0)
    {
      return 1;
    }

    v3 = 0;
    if ((a2 & 0x80) == 0 && (a3 & 0x8000000) != 0)
    {
      return (*(*(*(*a1 + 8) + 16) + 4 * a2) & 0x4000) != 0 && a2 - 14 < 0xFFFFFFFC;
    }
  }

  return v3;
}

void *sub_1001464CC(void *result, uint64_t a2)
{
  *(*result + 32) = a2;
  v2 = *result;
  *(v2 + 40) = *(*result + 24) != a2;
  *(v2 + 48) = a2;
  v3 = *result;
  if (0xAAAAAAAAAAAAAAABLL * ((result[1] - *result) >> 3) >= 4)
  {
    v4 = 0;
    v5 = 3;
    do
    {
      v6 = v3 + v4;
      v7 = *(v3 + 8);
      *(v6 + 80) = v7;
      *(*result + v4 + 72) = v7;
      v3 = *result;
      v8 = result[1];
      *(*result + v4 + 88) = 0;
      ++v5;
      v4 += 24;
    }

    while (v5 < 0xAAAAAAAAAAAAAAABLL * ((v8 - v3) >> 3));
  }

  return result;
}

uint64_t sub_100146558(uint64_t a1, uint64_t a2, __n128 a3)
{
  v4 = *(a1 + 232) + 1;
  *(a1 + 232) = v4;
  if (v4 >= 0x51)
  {
    sub_1001487CC(*(a1 + 80), 18);
  }

  v5 = (*(a1 + 216) - 8);
  if (v5 < *(a1 + 208))
  {
    a3 = sub_1001488AC(a1, a2);
    v5 = (*(a1 + 216) - 8);
  }

  *v5 = 2;
  *(a1 + 216) = v5;
  v6 = *(a1 + 88);
  do
  {
    while (v6)
    {
      v7 = *(&off_1002B4160 + 2 * *v6);
      ++*(a1 + 104);
      if (v7(a1, a3))
      {
        v6 = *(a1 + 88);
      }

      else
      {
        if (*(a1 + 104) > *(a1 + 112))
        {
          sub_1001487CC(*(a1 + 80), 18);
        }

        if ((*(a1 + 97) & 0x20) != 0)
        {
          v8 = *(a1 + 40);
          if (v8 == *(a1 + 32) && v8 != *(a1 + 56))
          {
            *(a1 + 121) = 1;
          }
        }

        *(a1 + 228) = 0;
        *(a1 + 230) = 0;
          ;
        }

        if ((*(a1 + 97) & 0x20) != 0)
        {
          v9 = *(a1 + 40);
          if (v9 == *(a1 + 32) && v9 != *(a1 + 56))
          {
            *(a1 + 121) = 1;
          }
        }

        v6 = *(a1 + 88);
        if (!v6)
        {
          goto LABEL_26;
        }
      }
    }

    *(a1 + 228) = 1;
    *(a1 + 230) = 0;
      ;
    }

    v6 = *(a1 + 88);
  }

  while (v6);
LABEL_26:
  result = *(a1 + 228);
  --*(a1 + 232);
  return result;
}

_DWORD *sub_100146710(_DWORD *result, uint64_t a2, uint64_t a3, char a4, char a5)
{
  if (a3)
  {
    result[18] = a3;
  }

  v5 = 24 * a3 + 48;
  *(*result + v5 + 8) = a2;
  v6 = *result;
  *(*result + v5 + 16) = a4;
  if (!a3 && (a5 & 1) == 0)
  {
    *v6 = a2;
    *(*result + 16) = **result != *(*result + 8);
    *(result + 4) = a2;
    *(result + 5) = a2;
    *(result + 48) = 0;
    *(result + 76) = 0;
  }

  return result;
}

uint64_t sub_10014676C(uint64_t a1, void *a2)
{
  if (*(a1 + 76))
  {
    goto LABEL_2;
  }

  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 3) >= 3)
  {
    v5 = (*a1 + 48);
  }

  else
  {
    v5 = *(a1 + 8);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 3) >= 3)
  {
    v6 = *a2 + 48;
  }

  else
  {
    v6 = a2[1];
  }

  v7 = sub_100146300(a1, -2)[1];
  if (*v5 == v7)
  {
    if (*(a1 + 76) == 1)
    {
      sub_10014AA5C();
    }

    v8 = -1;
  }

  else
  {
    v8 = 0;
  }

  result = sub_100146300(a1, v8);
  v9 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 3);
  if (v9 >= 2)
  {
    v10 = v9 - 2;
  }

  else
  {
    v10 = 0;
  }

  if (v9 >= 3)
  {
    v11 = 0;
    v12 = 0;
    v13 = 0;
    v14 = 0;
    v15 = 0;
    v16 = *result;
    v17 = v5 + 2;
    v18 = (v6 + 16);
    do
    {
      result = *(v17 - 2);
      v19 = *(v18 - 2);
      if (result == v7)
      {
        if (v19 != v7)
        {
          goto LABEL_2;
        }

        result = *v17;
        v20 = *v18;
        if (result)
        {
          goto LABEL_31;
        }
      }

      else
      {
        if (v19 == v7)
        {
          return result;
        }

        v13 = (result - v16);
        v14 = v19 - v16;
        if (result - v16 < v19 - v16)
        {
          return result;
        }

        if (v14 < v13 || (v11 = *(v17 - 1) - result, v12 = *(v18 - 1) - v19, v11 != v12))
        {
LABEL_37:
          if (v10 == v15 || v14 >= v13 && v12 <= v11 && ((*v17 & 1) != 0 || *v18 != 1))
          {
            return result;
          }

LABEL_2:

          return sub_1001489D4(a1, a2);
        }

        v20 = *v18;
        if (*v17)
        {
          v12 = *(v17 - 1) - result;
LABEL_31:
          if (!v20)
          {
            return result;
          }

          goto LABEL_35;
        }

        v12 = *(v17 - 1) - result;
      }

      if (v20)
      {
        goto LABEL_37;
      }

LABEL_35:
      ++v15;
      v17 += 24;
      v18 += 24;
    }

    while (v15 < v10);
  }

  return result;
}

uint64_t sub_10014695C(uint64_t a1, uint64_t a2, __n128 a3)
{
  v4 = *(a1 + 88);
  v5 = *(v4 + 16);
  *(a1 + 120) = *(v4 + 20);
  if (v5 > -3)
  {
    if (v5 >= 0xFFFFFFFE)
    {
      v9 = *(*(*(v4 + 8) + 16) + 8);
      *(a1 + 88) = *(*(v4 + 8) + 8);
      v10 = *(a1 + 216) - 32;
      if (v10 < *(a1 + 208))
      {
        sub_1001488AC(a1, a2);
        v10 = *(a1 + 216) - 32;
      }

      v11 = *(a1 + 40);
      *v10 = 3;
      *(v10 + 8) = v9;
      *(v10 + 16) = v11;
      *(v10 + 24) = v5 == -1;
      *(a1 + 216) = v10;
      return 1;
    }

    if (!v5)
    {
      goto LABEL_18;
    }

    goto LABEL_13;
  }

  if (v5 != -5)
  {
    if (v5 == -4)
    {
      v21 = *(v4 + 8);
      v22 = *(v21 + 8);
      *(a1 + 88) = v22;
      if (*v22 != 27)
      {
        v23 = *(v22 + 16);
        v24 = *(a1 + 40);
        v25 = *(*(*(v22 + 8) + 16) + 8);
        *(a1 + 88) = *(*(v22 + 8) + 8);
        v26 = sub_100146558(a1, a2, a3);
        *(a1 + 40) = v24;
        if ((((v23 == -2) ^ v26) & 1) == 0)
        {
          v25 = *(v21 + 16);
        }

        *(a1 + 88) = v25;
        return 1;
      }

      if (sub_100148334(a1))
      {
        return 1;
      }

      v15 = *(v21 + 16);
LABEL_19:
      *(a1 + 88) = v15;
      return 1;
    }

    if (v5 == -3)
    {
      v6 = *(a1 + 123);
      *(a1 + 123) = 1;
      v7 = *(*(*(v4 + 8) + 16) + 8);
      *(a1 + 88) = *(*(v4 + 8) + 8);
      result = sub_100146558(a1, a2, a3);
      if (result & 1) != 0 || (*(a1 + 123))
      {
        *(a1 + 88) = v7;
        *(a1 + 123) = v6;
      }

      else if (**(a1 + 216))
      {
        do
        {
          *(a1 + 228) = 0;
          *(a1 + 230) = 0;
            ;
          }

          result = 0;
        }

        while (**(a1 + 216));
      }

      else
      {
        return 0;
      }

      return result;
    }

LABEL_13:
    if ((*(a1 + 98) & 4) == 0)
    {
      v13 = sub_100146300(*(a1 + 16), v5);
      v14 = *(a1 + 216) - 40;
      if (v14 < *(a1 + 208))
      {
        sub_1001488AC(a1, v12);
        v14 = *(a1 + 216) - 40;
      }

      *v14 = 1;
      *(v14 + 8) = v5;
      *(v14 + 16) = *v13;
      *(v14 + 32) = *(v13 + 16);
      *(a1 + 216) = v14;
      *(**(a1 + 16) + 24 * v5 + 48) = *(a1 + 40);
    }

    v4 = *(a1 + 88);
LABEL_18:
    v15 = *(v4 + 8);
    goto LABEL_19;
  }

  v17 = sub_100146300(*(a1 + 16), 0);
  v18 = *(a1 + 216) - 40;
  if (v18 < *(a1 + 208))
  {
    sub_1001488AC(a1, v16);
    v18 = *(a1 + 216) - 40;
  }

  result = 1;
  *v18 = 1;
  *(v18 + 8) = 0;
  *(v18 + 16) = *v17;
  *(v18 + 32) = *(v17 + 16);
  *(a1 + 216) = v18;
  v19 = *(a1 + 16);
  v20 = *(a1 + 40);
  *(*v19 + 48) = v20;
  *(*v19 + 32) = v20;
  *(*v19 + 40) = *(*v19 + 24) != *(*v19 + 32);
  *(a1 + 88) = *(*(a1 + 88) + 8);
  return result;
}

void sub_100146C30(void *a1)
{
  __cxa_begin_catch(a1);
  *(v1 + 88) = v2;
  while (1)
  {
    *(v1 + 228) = 1;
    *(v1 + 230) = 0;
      ;
    }

    if (!*(v1 + 88))
    {
      __cxa_rethrow();
    }
  }
}

uint64_t sub_100146CFC(__n128 *a1)
{
  v2 = a1[5].n128_u64[1];
  v3 = *(v2 + 16);
  a1[7].n128_u8[8] = *(v2 + 20);
  if (v3 >= 1)
  {
    if ((a1[6].n128_u8[2] & 4) == 0)
    {
      sub_100146710(a1[1].n128_u64[0], a1[2].n128_i64[1], v3, 1, 0);
    }

    v4 = a1[12].n128_u64[0];
    if (a1[11].n128_u64[1] != v4 && v3 == *(v4 - 112))
    {
      a1[5].n128_u64[1] = *(v4 - 104);
      sub_1001489D4(a1[1].n128_i64[0], v4 - 96);
      v6 = a1[12].n128_u64[0];
      v7 = *(v6 - 112);
      v8 = *(v6 - 104);
      v9 = a1[1].n128_i64[0];
      v10 = v6 - 96;
      v11 = a1[13].n128_u64[1] - 184;
      if (v11 < a1[13].n128_u64[0])
      {
        sub_1001488AC(a1, v5);
        v11 = a1[13].n128_u64[1] - 184;
      }

      a1[13].n128_u64[1] = sub_100148CC8(v11, v7, v8, v9, v10);
      v12 = a1[12].n128_u64[0];
      sub_10014C2F8(v12 - 96);
      v14 = v12 - 112;
      a1[12].n128_u64[0] = v12 - 112;
      v15 = -2 - v3;
      v16 = (a1[13].n128_u64[1] - 48);
      if (v16 < a1[13].n128_u64[0])
      {
        sub_1001488AC(a1, v13);
        v16 = (a1[13].n128_u64[1] - 48);
        v14 = a1[12].n128_u64[0];
      }

      v17 = a1[2].n128_i64[1];
      if (a1[11].n128_u64[1] == v14)
      {
        v18 = -2147483645;
      }

      else
      {
        v18 = *(v14 - 112);
      }

      *v16 = 5;
      sub_100148E58((v16 + 2), v15, a1[8].n128_u64, v17, v18);
      a1[13].n128_u64[1] = v16;
    }

    goto LABEL_19;
  }

  if (v3)
  {
    v19 = v3 == -4;
  }

  else
  {
    v19 = 1;
  }

  if (v19)
  {
LABEL_19:
    v20 = *(a1[5].n128_u64[1] + 8);
    goto LABEL_20;
  }

  v20 = 0;
LABEL_20:
  a1[5].n128_u64[1] = v20;
  return 1;
}

BOOL sub_100146E78(uint64_t a1)
{
  v2 = *(a1 + 88);
  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = *(a1 + 40);
    if (v4 == *(a1 + 32))
    {
      return 0;
    }

    else
    {
      v5 = 0;
      v6 = (v2 + 24);
      v7 = 1;
      do
      {
        v8 = *v4;
        if (*(a1 + 120) == 1)
        {
          v9 = *(**(a1 + 80) + 8);
          LOBYTE(v8) = (*(*v9 + 40))(v9, v8);
        }

        if (*v6 != v8)
        {
          break;
        }

        v4 = (*(a1 + 40) + 1);
        *(a1 + 40) = v4;
        if (v3 == v7)
        {
          v2 = *(a1 + 88);
          goto LABEL_12;
        }

        v5 = v7++ >= v3;
        ++v6;
      }

      while (v4 != *(a1 + 32));
    }
  }

  else
  {
LABEL_12:
    *(a1 + 88) = *(v2 + 8);
    return 1;
  }

  return v5;
}

uint64_t sub_100146F6C(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(a1 + 96);
  if (v1 != *(a1 + 64))
  {
    if ((v2 & 0x100000) != 0)
    {
      return 0;
    }

    goto LABEL_7;
  }

  if ((v2 & 0x100) != 0)
  {
LABEL_7:
    v3 = *(v1 - 1);
    if (*(a1 + 32) == v1)
    {
      if (v3 > 0xD || ((1 << v3) & 0x3400) == 0)
      {
        return 0;
      }
    }

    else
    {
      v4 = v3 == 10 || v3 == 12;
      if (!v4 && (v3 != 13 || *v1 == 10))
      {
        return 0;
      }
    }

    goto LABEL_19;
  }

  if (v2)
  {
    return 0;
  }

LABEL_19:
  *(a1 + 88) = *(*(a1 + 88) + 8);
  return 1;
}

uint64_t sub_100146FFC(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(a1 + 96);
  if (v1 != *(a1 + 32))
  {
    if ((v2 & 0x100000) == 0)
    {
      v3 = *v1;
      if (v3 <= 0xD && ((1 << v3) & 0x3400) != 0)
      {
        if ((v2 & 0x100) == 0 && v1 == *(a1 + 64))
        {
          goto LABEL_16;
        }

        if (*(v1 - 1) != 13 || v3 != 10)
        {
          goto LABEL_16;
        }
      }
    }

    return 0;
  }

  if ((v2 & 2) != 0)
  {
    return 0;
  }

LABEL_16:
  *(a1 + 88) = *(*(a1 + 88) + 8);
  return 1;
}

uint64_t sub_100147070(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1 == *(a1 + 32))
  {
    return 0;
  }

  v2 = *v1;
  if ((v2 - 12) >= 2)
  {
    if (!*v1)
    {
      if ((*(a1 + 96) & 0x80) == 0)
      {
        goto LABEL_6;
      }

      return 0;
    }

    if (v2 != 10)
    {
LABEL_6:
      *(a1 + 88) = *(*(a1 + 88) + 8);
      *(a1 + 40) = v1 + 1;
      return 1;
    }
  }

  if ((*(*(a1 + 88) + 16) & *(a1 + 180)) != 0)
  {
    goto LABEL_6;
  }

  return 0;
}

BOOL sub_1001470D8(__n128 *a1, uint64_t a2)
{
  v3 = a1[12].n128_u64[0];
  if (a1[11].n128_u64[1] != v3)
  {
    v4 = *(v3 - 104);
    a1[5].n128_u64[1] = v4;
    v5 = *(v3 - 112);
    v6 = a1[1].n128_i64[0];
    v7 = v3 - 96;
    v8 = a1[13].n128_u64[0];
    v9 = a1[13].n128_u64[1] - 184;
    if (v9 < v8)
    {
      sub_1001488AC(a1, a2);
      v9 = a1[13].n128_u64[1] - 184;
    }

    a1[13].n128_u64[1] = sub_100148CC8(v9, v5, v4, v6, v7);
    sub_1001489D4(a1[1].n128_i64[0], a1[12].n128_u64[0] - 96);
    v10 = a1[12].n128_u64[0];
    sub_10014C2F8(v10 - 96);
    a1[12].n128_u64[0] = v10 - 112;
    return 1;
  }

  v12 = a1[6].n128_u32[0];
  if ((v12 & 0x800) != 0)
  {
    if (a1[2].n128_u64[1] == *sub_100146300(a1[1].n128_u64[0], 0))
    {
      return 0;
    }

    v12 = a1[6].n128_u32[0];
  }

  if ((v12 & 0x8000) != 0 && a1[2].n128_u64[1] != a1[2].n128_u64[0])
  {
    return 0;
  }

  if ((v12 & 0x4000) != 0)
  {
    v13 = a1[2].n128_u64[1];
    if (v13 == a1[3].n128_u64[1])
    {
      return 0;
    }
  }

  else
  {
    v13 = a1[2].n128_u64[1];
  }

  v14 = a1[1].n128_u64[0];
  *(*v14 + 56) = v13;
  v15 = *v14;
  *(v15 + 64) = 1;
  *v15 = v13;
  *(*v14 + 16) = **v14 != *(*v14 + 8);
  *(v14 + 32) = v13;
  *(v14 + 40) = v13;
  *(v14 + 48) = 0;
  *(v14 + 76) = 0;
  a1[5].n128_u64[1] = 0;
  a1[7].n128_u8[10] = 1;
  if ((v12 & 0x20000) == 0)
  {
    return 1;
  }

  sub_10014676C(a1->n128_u64[0], a1[1].n128_u64[0]);
  return (a1[6].n128_u8[1] & 4) != 0;
}

uint64_t sub_100147240(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2 == *(a1 + 32))
  {
    v3 = 0;
    result = 0;
    if ((*(a1 + 96) & 0x20) != 0)
    {
      return result;
    }
  }

  else
  {
    v3 = sub_100146404(*(a1 + 80), *v2, *(a1 + 176));
    v2 = *(a1 + 40);
  }

  if (v2 != *(a1 + 64) || (*(a1 + 96) & 0x100) != 0)
  {
    *(a1 + 40) = v2 - 1;
    v5 = sub_100146404(*(a1 + 80), *(v2 - 1), *(a1 + 176));
    ++*(a1 + 40);
    if (v3 == v5)
    {
      return 0;
    }
  }

  else if ((((*(a1 + 96) & 0x10) == 0) & v3) == 0)
  {
    return 0;
  }

  *(a1 + 88) = *(*(a1 + 88) + 8);
  return 1;
}

uint64_t sub_100147300(uint64_t a1)
{
  v2 = sub_100147240(a1);
  if ((v2 & 1) == 0)
  {
    *(a1 + 88) = *(*(a1 + 88) + 8);
  }

  return v2 ^ 1u;
}

BOOL sub_100147338(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1 == *(a1 + 32))
  {
    return 0;
  }

  result = sub_100146404(*(a1 + 80), *v1, *(a1 + 176));
  if (!result)
  {
    return result;
  }

  v4 = *(a1 + 40);
  if (v4 != *(a1 + 64) || (v5 = *(a1 + 96), (v5 & 0x100) != 0))
  {
    if (sub_100146404(*(a1 + 80), *(v4 - 1), *(a1 + 176)))
    {
      return 0;
    }
  }

  else if ((v5 & 0x10) != 0)
  {
    return 0;
  }

  *(a1 + 88) = *(*(a1 + 88) + 8);
  return 1;
}

BOOL sub_1001473CC(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2 == *(a1 + 64) && (*(a1 + 97) & 1) == 0)
  {
    return 0;
  }

  result = sub_100146404(*(a1 + 80), *(v2 - 1), *(a1 + 176));
  if (!result)
  {
    return result;
  }

  v4 = *(a1 + 40);
  if (v4 == *(a1 + 32))
  {
    if ((*(a1 + 96) & 0x20) != 0)
    {
      return 0;
    }
  }

  else if (sub_100146404(*(a1 + 80), *v4, *(a1 + 176)))
  {
    return 0;
  }

  *(a1 + 88) = *(*(a1 + 88) + 8);
  return 1;
}

uint64_t sub_100147458(uint64_t a1)
{
  if (*(a1 + 40) != *(a1 + 64) || (*(a1 + 96) & 4) != 0)
  {
    return 0;
  }

  *(a1 + 88) = *(*(a1 + 88) + 8);
  return 1;
}

uint64_t sub_10014748C(uint64_t a1)
{
  if (*(a1 + 40) != *(a1 + 32) || (*(a1 + 96) & 8) != 0)
  {
    return 0;
  }

  *(a1 + 88) = *(*(a1 + 88) + 8);
  return 1;
}

uint64_t sub_1001474BC(uint64_t a1)
{
  v2 = *(*(a1 + 88) + 16);
  if (v2 >= 0x40000000)
  {
    v3 = **(a1 + 72);
    v17[0] = 0;
    v17[1] = v2;
    v4 = sub_100148F58(*v3, *(v3 + 8), v17);
    v6 = v5;
    v7 = v4 + 8;
    do
    {
      v2 = *(v7 - 8);
      if (v7 == v6)
      {
        break;
      }

      v8 = sub_100146300(*(a1 + 16), *(v7 - 8));
      v7 += 8;
    }

    while (!*(v8 + 16));
  }

  if ((*(a1 + 98) & 1) == 0 || *(sub_100146300(*(a1 + 16), v2) + 16) == 1)
  {
    v9 = *sub_100146300(*(a1 + 16), v2);
    v10 = sub_100146300(*(a1 + 16), v2)[1];
    if (v9 == v10)
    {
LABEL_16:
      *(a1 + 88) = *(*(a1 + 88) + 8);
      return 1;
    }

    v11 = *(a1 + 40);
    while (v11 != *(a1 + 32))
    {
      v12 = *v11;
      if (*(a1 + 120) == 1)
      {
        v13 = *(**(a1 + 80) + 8);
        LOBYTE(v12) = (*(*v13 + 40))(v13, v12);
        v14 = *v9;
        if (*(a1 + 120))
        {
          v15 = *(**(a1 + 80) + 8);
          LOBYTE(v14) = (*(*v15 + 40))(v15, v14);
        }
      }

      else
      {
        LOBYTE(v14) = *v9;
      }

      if (v12 != v14)
      {
        break;
      }

      ++v9;
      v11 = (*(a1 + 40) + 1);
      *(a1 + 40) = v11;
      if (v9 == v10)
      {
        goto LABEL_16;
      }
    }
  }

  return 0;
}

uint64_t sub_100147670(void *a1)
{
  v2 = a1[5];
  v3 = a1[4];
  if (v2 == v3)
  {
    return 0;
  }

  v4 = sub_100149034(v2, v3, a1[11], *a1[9], *(a1 + 120));
  if (a1[5] == v4)
  {
    return 0;
  }

  a1[11] = *(a1[11] + 8);
  a1[5] = v4;
  return 1;
}

uint64_t sub_1001476DC(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1 == *(a1 + 32))
  {
    return 0;
  }

  v3 = *(a1 + 88) + 16;
  v4 = *v1;
  if (*(a1 + 120) == 1)
  {
    v5 = *(**(a1 + 80) + 8);
    LOBYTE(v4) = (*(*v5 + 40))(v5, v4);
  }

  if (!*(v3 + v4))
  {
    return 0;
  }

  *(a1 + 88) = *(*(a1 + 88) + 8);
  ++*(a1 + 40);
  return 1;
}

uint64_t sub_1001477A4(__n128 *a1, uint64_t a2)
{
  v3 = a1[5].n128_u64[1];
  v4 = a1[2].n128_u64[1];
  if (v4 == a1[2].n128_u64[0])
  {
    v5 = *(v3 + 280);
  }

  else
  {
    v5 = *(v3 + *v4 + 24);
  }

  v6 = (v5 >> 1) & 1;
  if (v5)
  {
    if (v6)
    {
      v8 = *(v3 + 16);
      v9 = a1[13].n128_u64[1] - 24;
      if (v9 < a1[13].n128_u64[0])
      {
        sub_1001488AC(a1, a2);
        v9 = a1[13].n128_u64[1] - 24;
        v4 = a1[2].n128_u64[1];
      }

      *v9 = 4;
      *(v9 + 8) = v8;
      *(v9 + 16) = v4;
      a1[13].n128_u64[1] = v9;
      v3 = a1[5].n128_u64[1];
    }

    v7 = (v3 + 8);
    goto LABEL_12;
  }

  if (v6)
  {
    v7 = (v3 + 16);
LABEL_12:
    a1[5].n128_u64[1] = *v7;
    return 1;
  }

  return 0;
}

uint64_t sub_100147854(__n128 *a1, uint64_t a2)
{
  v3 = a1[5].n128_u64[1];
  v4 = a1[2].n128_u64[1];
  if (v4 == a1[2].n128_u64[0])
  {
    v6 = *(v3 + 280);
    v7 = (v6 >> 1) & 1;
  }

  else
  {
    v5 = *(v3 + *v4 + 24);
    LOBYTE(v6) = v5 & 1;
    v7 = (v5 >> 1) & 1;
  }

  v8 = a1[13].n128_u64[1];
  if (*v8 == 5)
  {
    v9 = v8[6];
    v10 = *(v3 + 304);
    if (v9 == v10)
    {
      v11 = a1[8].n128_u64[0];
      v10 = v8[6];
      if (*(v11 + 16) == v9)
      {
        goto LABEL_15;
      }
    }
  }

  else
  {
    v10 = *(v3 + 304);
  }

  v12 = v8 - 12;
  if ((v8 - 12) < a1[13].n128_u64[0])
  {
    sub_1001488AC(a1, a2);
    v12 = (a1[13].n128_u64[1] - 48);
    v4 = a1[2].n128_u64[1];
  }

  v13 = a1[12].n128_u64[0];
  if (a1[11].n128_u64[1] == v13)
  {
    v14 = -2147483645;
  }

  else
  {
    v14 = *(v13 - 112);
  }

  *v12 = 5;
  sub_100148E58((v12 + 2), v10, a1[8].n128_u64, v4, v14);
  a1[13].n128_u64[1] = v12;
  v11 = a1[8].n128_u64[0];
LABEL_15:
  v15 = *(v3 + 296);
  if (*(v11 + 24))
  {
    v16 = a1[2].n128_u64[1];
    if (v16 == *(v11 + 32))
    {
      *(v11 + 24) = v15;
      v17 = v15;
      goto LABEL_20;
    }
  }

  else
  {
    v16 = a1[2].n128_u64[1];
  }

  *(v11 + 32) = v16;
  v11 = a1[8].n128_u64[0];
  v17 = *(v11 + 24);
LABEL_20:
  if (v17 < *(v3 + 288))
  {
    if ((v6 & 1) == 0)
    {
      return 0;
    }

    goto LABEL_37;
  }

  if (*(v3 + 309) == 1 && ((a1[6].n128_u8[1] & 4) == 0 || a1[7].n128_u8[11] == 1))
  {
    if (((v17 < v15) & v6) == 1)
    {
      if (v7)
      {
        v18 = *(v3 + 16);
        v19 = a1[13].n128_u64[1] - 24;
        if (v19 < a1[13].n128_u64[0])
        {
          sub_1001488AC(a1, a2);
          v19 = a1[13].n128_u64[1] - 24;
        }

        v20 = a1[2].n128_u64[1];
        *v19 = 4;
        *(v19 + 8) = v18;
        *(v19 + 16) = v20;
        a1[13].n128_u64[1] = v19;
        v11 = a1[8].n128_u64[0];
        v17 = *(v11 + 24);
      }

      goto LABEL_37;
    }

    if (v7)
    {
LABEL_39:
      v25 = 16;
      goto LABEL_40;
    }
  }

  else
  {
    v21 = (v17 < v15) & v6;
    if (v7)
    {
      if (v21)
      {
        v22 = *(v3 + 8);
        v23 = a1[13].n128_u64[1] - 24;
        if (v23 < a1[13].n128_u64[0])
        {
          sub_1001488AC(a1, a2);
          v23 = a1[13].n128_u64[1] - 24;
        }

        v24 = a1[2].n128_u64[1];
        *v23 = 13;
        *(v23 + 8) = v22;
        *(v23 + 16) = v24;
        a1[13].n128_u64[1] = v23;
      }

      goto LABEL_39;
    }

    if (v21)
    {
LABEL_37:
      *(v11 + 24) = v17 + 1;
      v25 = 8;
LABEL_40:
      a1[5].n128_u64[1] = *(v3 + v25);
      return 1;
    }
  }

  return 0;
}

BOOL sub_100147A94(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  if (v1 != v2)
  {
    if (*(a1 + 120) == 1)
    {
      v4 = *(**(a1 + 80) + 8);
      (*(*v4 + 40))(v4, *v1);
      v6 = *(a1 + 32);
      v5 = *(a1 + 40);
    }

    else
    {
      v6 = *(a1 + 32);
      v5 = *(a1 + 40);
    }

    v7 = (v5 + 1);
    *(a1 + 40) = v7;
    if (v7 != v6 && *(a1 + 120) == 1)
    {
      v8 = *(**(a1 + 80) + 8);
      (*(*v8 + 40))(v8, *v7);
    }

    *(a1 + 88) = *(*(a1 + 88) + 8);
  }

  return v1 != v2;
}

uint64_t sub_100147B7C(uint64_t a1)
{
  if ((*(a1 + 96) & 8) != 0)
  {
    return 0;
  }

  v2 = *(a1 + 40);
  if (*(a1 + 32) != v2)
  {
    while (1)
    {
      v3 = *v2;
      if (*(a1 + 120) == 1)
      {
        v4 = *(**(a1 + 80) + 8);
        LODWORD(v3) = (*(*v4 + 40))(v4, v3);
      }

      if (v3 > 0xD || ((1 << v3) & 0x3400) == 0)
      {
        break;
      }

      if (++v2 == *(a1 + 32))
      {
        goto LABEL_10;
      }
    }

    if (v2 != *(a1 + 32))
    {
      return 0;
    }
  }

LABEL_10:
  *(a1 + 88) = *(*(a1 + 88) + 8);
  return 1;
}

BOOL sub_100147C5C(void *a1)
{
  v1 = a1[5];
  v2 = a1[7];
  if (v1 == v2)
  {
    a1[11] = *(a1[11] + 8);
  }

  return v1 == v2;
}

uint64_t sub_100147C88(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 88);
  if ((*(v3 + 309) & 1) == 0)
  {
    v6 = 0;
    v4 = (v3 + 296);
    v5 = (v3 + 288);
    goto LABEL_5;
  }

  if ((*(a1 + 97) & 4) != 0)
  {
    v4 = (v3 + 296);
    v5 = (v3 + 288);
    if (*(a1 + 123) == 1)
    {
      goto LABEL_7;
    }

    v6 = 0;
LABEL_5:
    v7 = v5;
    goto LABEL_8;
  }

  v4 = (v3 + 296);
  v5 = (v3 + 288);
LABEL_7:
  v6 = 1;
  v7 = v4;
LABEL_8:
  v8 = *v7;
  v9 = *(a1 + 40);
  if (v8 == -1)
  {
    v10 = *(a1 + 32);
  }

  else if (v8 >= *(a1 + 32) - v9)
  {
    v10 = *(a1 + 32);
  }

  else
  {
    v10 = &v9[v8];
  }

  if (v10 == v9)
  {
    v12 = *(a1 + 40);
  }

  else
  {
    v11 = *(*(v3 + 8) + 24);
    v12 = *(a1 + 40);
    do
    {
      a2 = *v12;
      if (*(a1 + 120) == 1)
      {
        v13 = *(**(a1 + 80) + 8);
        a2 = (*(*v13 + 40))(v13, a2);
        v12 = *(a1 + 40);
      }

      if (v11 != a2)
      {
        break;
      }

      *(a1 + 40) = ++v12;
    }

    while (v12 != v10);
  }

  v14 = (v12 - v9);
  v15 = *v5;
  if (v14 < *v5)
  {
    return 0;
  }

  if (v6)
  {
    if (*(v3 + 308) == 1 && v14 < *v4)
    {
      *(a1 + 48) = v12;
    }

    if (v14 != v15)
    {
      v17 = *(a1 + 216) - 32;
      if (v17 < *(a1 + 208))
      {
        sub_1001488AC(a1, a2);
        v17 = *(a1 + 216) - 32;
      }

      *v17 = 7;
      *(v17 + 8) = v14;
      *(v17 + 16) = v3;
      *(v17 + 24) = v12;
      *(a1 + 216) = v17;
    }

    *(a1 + 88) = *(v3 + 16);
    return 1;
  }

  else
  {
    if (v14 < *v4)
    {
      v18 = *(a1 + 216) - 32;
      if (v18 < *(a1 + 208))
      {
        sub_1001488AC(a1, a2);
        v18 = *(a1 + 216) - 32;
      }

      *v18 = 10;
      *(v18 + 8) = v14;
      *(v18 + 16) = v3;
      *(v18 + 24) = v12;
      *(a1 + 216) = v18;
      v12 = *(a1 + 40);
    }

    *(a1 + 88) = *(v3 + 16);
    if (v12 == *(a1 + 32))
    {
      v19 = *(v3 + 280);
    }

    else
    {
      v19 = *(v3 + *v12 + 24);
    }

    return (v19 >> 1) & 1;
  }
}

uint64_t sub_100147EBC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 88);
  if ((*(v3 + 309) & 1) == 0)
  {
    v6 = 0;
    v4 = (v3 + 296);
    v5 = (v3 + 288);
    goto LABEL_5;
  }

  if ((*(a1 + 97) & 4) != 0)
  {
    v4 = (v3 + 296);
    v5 = (v3 + 288);
    if (*(a1 + 123) == 1)
    {
      goto LABEL_7;
    }

    v6 = 0;
LABEL_5:
    v7 = v5;
    goto LABEL_8;
  }

  v4 = (v3 + 296);
  v5 = (v3 + 288);
LABEL_7:
  v6 = 1;
  v7 = v4;
LABEL_8:
  v8 = *v7;
  v9 = *(a1 + 40);
  if (v8 == -1)
  {
    v10 = *(a1 + 32);
  }

  else if (v8 >= *(a1 + 32) - v9)
  {
    v10 = *(a1 + 32);
  }

  else
  {
    v10 = &v9[v8];
  }

  if (v10 == v9)
  {
    v12 = *(a1 + 40);
  }

  else
  {
    v11 = *(v3 + 8) + 16;
    v12 = *(a1 + 40);
    do
    {
      a2 = *v12;
      if (*(a1 + 120) == 1)
      {
        v13 = *(**(a1 + 80) + 8);
        a2 = (*(*v13 + 40))(v13, a2);
        v12 = *(a1 + 40);
      }

      if (!*(v11 + a2))
      {
        break;
      }

      *(a1 + 40) = ++v12;
    }

    while (v12 != v10);
  }

  v14 = (v12 - v9);
  v15 = *v5;
  if (v14 < *v5)
  {
    return 0;
  }

  if (v6)
  {
    if (*(v3 + 308) == 1 && v14 < *v4)
    {
      *(a1 + 48) = v12;
    }

    if (v14 != v15)
    {
      v17 = *(a1 + 216) - 32;
      if (v17 < *(a1 + 208))
      {
        sub_1001488AC(a1, a2);
        v17 = *(a1 + 216) - 32;
      }

      *v17 = 7;
      *(v17 + 8) = v14;
      *(v17 + 16) = v3;
      *(v17 + 24) = v12;
      *(a1 + 216) = v17;
    }

    *(a1 + 88) = *(v3 + 16);
    return 1;
  }

  else
  {
    if (v14 < *v4)
    {
      v18 = *(a1 + 216) - 32;
      if (v18 < *(a1 + 208))
      {
        sub_1001488AC(a1, a2);
        v18 = *(a1 + 216) - 32;
      }

      *v18 = 11;
      *(v18 + 8) = v14;
      *(v18 + 16) = v3;
      *(v18 + 24) = v12;
      *(a1 + 216) = v18;
      v12 = *(a1 + 40);
    }

    *(a1 + 88) = *(v3 + 16);
    if (v12 == *(a1 + 32))
    {
      v19 = *(v3 + 280);
    }

    else
    {
      v19 = *(v3 + *v12 + 24);
    }

    return (v19 >> 1) & 1;
  }
}

uint64_t sub_1001480F4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 88);
  if ((*(v3 + 309) & 1) == 0)
  {
    v6 = 0;
    v4 = (v3 + 296);
    v5 = (v3 + 288);
    goto LABEL_5;
  }

  if ((*(a1 + 97) & 4) != 0)
  {
    v4 = (v3 + 296);
    v5 = (v3 + 288);
    if (*(a1 + 123) == 1)
    {
      goto LABEL_7;
    }

    v6 = 0;
LABEL_5:
    v7 = v5;
    goto LABEL_8;
  }

  v4 = (v3 + 296);
  v5 = (v3 + 288);
LABEL_7:
  v6 = 1;
  v7 = v4;
LABEL_8:
  v8 = *v7;
  v9 = *(a1 + 40);
  if (v8 == -1)
  {
    v10 = *(a1 + 32);
  }

  else if (v8 >= *(a1 + 32) - v9)
  {
    v10 = *(a1 + 32);
  }

  else
  {
    v10 = &v9[v8];
  }

  if (v10 == v9)
  {
    v12 = *(a1 + 40);
  }

  else
  {
    v11 = *(v3 + 8);
    v12 = *(a1 + 40);
    do
    {
      v13 = sub_100149034(v12, *(a1 + 32), v11, **(a1 + 72), *(a1 + 120));
      v12 = *(a1 + 40);
      if (v12 == v13)
      {
        break;
      }

      *(a1 + 40) = ++v12;
    }

    while (v12 != v10);
  }

  v14 = (v12 - v9);
  v15 = *v5;
  if (v14 < *v5)
  {
    return 0;
  }

  if (v6)
  {
    if (*(v3 + 308) == 1 && v14 < *v4)
    {
      *(a1 + 48) = v12;
    }

    if (v14 != v15)
    {
      v17 = *(a1 + 216) - 32;
      if (v17 < *(a1 + 208))
      {
        sub_1001488AC(a1, a2);
        v17 = *(a1 + 216) - 32;
      }

      *v17 = 7;
      *(v17 + 8) = v14;
      *(v17 + 16) = v3;
      *(v17 + 24) = v12;
      *(a1 + 216) = v17;
    }

    *(a1 + 88) = *(v3 + 16);
    return 1;
  }

  else
  {
    if (v14 < *v4)
    {
      v18 = *(a1 + 216) - 32;
      if (v18 < *(a1 + 208))
      {
        sub_1001488AC(a1, a2);
        v18 = *(a1 + 216) - 32;
      }

      *v18 = 12;
      *(v18 + 8) = v14;
      *(v18 + 16) = v3;
      *(v18 + 24) = v12;
      *(a1 + 216) = v18;
      v12 = *(a1 + 40);
    }

    *(a1 + 88) = *(v3 + 16);
    if (v12 == *(a1 + 32))
    {
      v19 = *(v3 + 280);
    }

    else
    {
      v19 = *(v3 + *v12 + 24);
    }

    return (v19 >> 1) & 1;
  }
}

BOOL sub_1001482FC(void *a1)
{
  v1 = a1[5];
  v2 = v1 - a1[8];
  v3 = a1[11];
  v4 = *(v3 + 16);
  if (v2 >= v4)
  {
    a1[5] = v1 - v4;
    a1[11] = *(v3 + 8);
  }

  return v2 >= v4;
}

uint64_t sub_100148334(uint64_t a1)
{
  v3 = *(*(a1 + 88) + 16);
  if (v3 != 9999)
  {
    v24 = v1;
    v25 = v2;
    if (v3 < 1)
    {
      if (v3 > -1073741825)
      {
        v16 = *(a1 + 192);
        if (*(a1 + 184) != v16)
        {
          v17 = *(v16 - 112);
          if (v3)
          {
            v18 = v17 == ~v3;
          }

          else
          {
            v18 = 1;
          }

          v4 = v18;
          goto LABEL_31;
        }
      }

      else
      {
        v11 = **(a1 + 72);
        v22 = 0;
        v23 = ~v3;
        v12 = sub_100148F58(*v11, *(v11 + 8), &v22);
        v14 = *(a1 + 192);
        if (*(a1 + 184) == v14)
        {
          v15 = -1;
        }

        else
        {
          v15 = *(v14 - 112);
        }

        if (v12 != v13)
        {
          v19 = v12 + 8;
          do
          {
            v4 = v15 == *(v19 - 8);
            v20 = v15 == *(v19 - 8) || v19 == v13;
            v19 += 8;
          }

          while (!v20);
          goto LABEL_31;
        }
      }
    }

    else
    {
      if (!(v3 >> 30))
      {
        v4 = *(sub_100146300(*(a1 + 16), v3) + 16);
LABEL_31:
        *(a1 + 88) = *(*(a1 + 88) + 8);
        return v4 & 1;
      }

      v6 = **(a1 + 72);
      v22 = 0;
      v23 = v3;
      v7 = sub_100148F58(*v6, *(v6 + 8), &v22);
      if (v7 != v8)
      {
        v9 = v8;
        v10 = v7 + 8;
        do
        {
          v4 = *(sub_100146300(*(a1 + 16), *(v10 - 8)) + 16);
          if (v4)
          {
            break;
          }

          v18 = v10 == v9;
          v10 += 8;
        }

        while (!v18);
        goto LABEL_31;
      }
    }

    v4 = 0;
    goto LABEL_31;
  }

  v4 = 0;
  return v4 & 1;
}

uint64_t sub_1001484A0(__n128 *a1, uint64_t a2)
{
  v3 = a1[7].n128_u8[8];
  v4 = a1[13].n128_u64[1] - 16;
  if (v4 < a1[13].n128_u64[0])
  {
    sub_1001488AC(a1, a2);
    v4 = a1[13].n128_u64[1] - 16;
  }

  *v4 = 18;
  *(v4 + 8) = v3;
  a1[13].n128_u64[1] = v4;
  v5 = a1[5].n128_u64[1];
  a1[7].n128_u8[8] = *(v5 + 16);
  a1[5].n128_u64[1] = *(v5 + 8);
  return 1;
}

uint64_t sub_10014850C(__n128 *a1, uint64_t a2)
{
  v3 = a1[12].n128_u64[0];
  v4 = &a1[11].n128_i64[1];
  while (v3 != a1[11].n128_u64[1])
  {
    v5 = *(v3 - 112);
    v3 -= 112;
    if (v5 == *(*(a1[5].n128_u64[1] + 16) + 16))
    {
      if (*(v3 + 104) == a1[2].n128_u64[1])
      {
        return 0;
      }

      break;
    }
  }

  v6 = (a1[13].n128_u64[1] - 8);
  if (v6 < a1[13].n128_u64[0])
  {
    sub_1001488AC(a1, a2);
    v6 = (a1[13].n128_u64[1] - 8);
  }

  *v6 = 15;
  a1[13].n128_u64[1] = v6;
  if (a1[12].n128_u64[1] == a1[11].n128_u64[1])
  {
    sub_100149CCC(v4, 0x32uLL);
  }

  v20 = 0;
  v21 = 0;
  v19 = 0u;
  v17 = 0u;
  memset(v18, 0, sizeof(v18));
  BYTE12(v19) = 1;
  sub_100149DB4(v4, &v17);
  sub_10014C2F8(v18);
  v7 = a1[12].n128_u64[0];
  *(v7 - 104) = *(a1[5].n128_u64[1] + 8);
  sub_1001489D4(v7 - 96, a1[1].n128_i64[0]);
  v9 = *(a1[5].n128_u64[1] + 16);
  a1[5].n128_u64[1] = v9;
  v10 = a1[12].n128_u64[0];
  *(v10 - 112) = *(v9 + 16);
  v11 = a1[2].n128_i64[1];
  *(v10 - 8) = v11;
  v12 = -2 - *(a1[5].n128_u64[1] + 16);
  v13 = (a1[13].n128_u64[1] - 48);
  if (v13 < a1[13].n128_u64[0])
  {
    sub_1001488AC(a1, v8);
    v13 = (a1[13].n128_u64[1] - 48);
    v11 = a1[2].n128_i64[1];
  }

  v14 = a1[12].n128_u64[0];
  if (a1[11].n128_u64[1] == v14)
  {
    v15 = -2147483645;
  }

  else
  {
    v15 = *(v14 - 112);
  }

  *v13 = 5;
  sub_100148E58((v13 + 2), v12, a1[8].n128_u64, v11, v15);
  a1[13].n128_u64[1] = v13;
  return 1;
}

uint64_t sub_1001486BC(uint64_t a1)
{
  v1 = *(a1 + 192);
  if (*(a1 + 184) == v1)
  {
    v2 = 0x7FFFFFFF;
  }

  else
  {
    v2 = *(v1 - 112);
  }

  return sub_10014A0EC(a1, v2, 1);
}

uint64_t sub_1001486DC(__n128 *a1, uint64_t a2)
{
  v3 = *(a1[5].n128_u64[1] + 16);
  if (v3 == 1)
  {
    v5 = a1[2].n128_u64[1];
    if (a1[1].n128_u64[1] == v5)
    {
      goto LABEL_7;
    }

    v4 = v5 - 1;
  }

  else
  {
    if (v3 != 2)
    {
      goto LABEL_7;
    }

    v4 = a1[2].n128_u64[0];
  }

  a1[3].n128_u64[0] = v4;
LABEL_7:
  v6 = (a1[13].n128_u64[1] - 8);
  if (v6 < a1[13].n128_u64[0])
  {
    sub_1001488AC(a1, a2);
    v6 = (a1[13].n128_u64[1] - 8);
  }

  *v6 = 16;
  a1[13].n128_u64[1] = v6;
  a1[5].n128_u64[1] = *(a1[5].n128_u64[1] + 8);
  return 1;
}

uint64_t sub_100148770(__n128 *a1, uint64_t a2)
{
  v3 = (a1[13].n128_u64[1] - 8);
  if (v3 < a1[13].n128_u64[0])
  {
    sub_1001488AC(a1, a2);
    v3 = (a1[13].n128_u64[1] - 8);
  }

  *v3 = 17;
  a1[13].n128_u64[1] = v3;
  a1[5].n128_u64[1] = *(a1[5].n128_u64[1] + 8);
  return 1;
}

void sub_1001487CC(void *a1, int a2)
{
  sub_10014A214(*a1, a2, &v3);
  std::runtime_error::runtime_error(&v4, &v3);
  v4.__vftable = &off_1002B4440;
  v5 = a2;
  v6 = 0;
  if (SHIBYTE(v3.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v3.__r_.__value_.__l.__data_);
  }

  sub_10014A2E0(&v4);
}

void *sub_10014886C(void *result, uint64_t a2, uint64_t a3, int a4)
{
  if (!a3 && !a4)
  {
    return sub_1001464CC(result, a2);
  }

  *(*result + 24 * a3 + 48) = a2;
  if (a4)
  {
    *(*result + 32) = a2;
    *(*result + 40) = *(*result + 24) != *(*result + 32);
  }

  return result;
}

__n128 sub_1001488AC(__n128 *a1, uint64_t a2)
{
  v3 = a1[14].n128_u32[0];
  if (!v3)
  {
    v9 = a1[5].n128_u64[0];

    sub_1001487CC(v9, 19);
  }

  a1[14].n128_u32[0] = v3 - 1;
  v4 = sub_100148954(a1, a2);
  v5 = 0;
  while (1)
  {
    v6 = atomic_load(&v4[v5]);
    if (v6)
    {
      v7 = v6;
      atomic_compare_exchange_strong(&v4[v5], &v7, 0);
      if (v7 == v6)
      {
        break;
      }
    }

    v5 += 8;
    if (v5 == 128)
    {
      v6 = operator new(0x1000uLL);
      break;
    }
  }

  result = a1[13];
  v6[254].n128_u32[2] = 6;
  v6[255] = result;
  a1[13].n128_u64[0] = v6;
  a1[13].n128_u64[1] = &v6[254].n128_u64[1];
  return result;
}

void *sub_100148954(uint64_t a1, uint64_t a2)
{
  if ((atomic_load_explicit(byte_1002D55C0, memory_order_acquire) & 1) == 0)
  {
    sub_10020BF78();
  }

  return &unk_1002D5540;
}

uint64_t sub_10014898C(uint64_t a1)
{
  for (i = 0; i != 128; i += 8)
  {
    if (atomic_load((a1 + i)))
    {
      v4 = atomic_load((a1 + i));
      operator delete(v4);
    }
  }

  return a1;
}

uint64_t sub_1001489D4(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    sub_100148A7C(a1, *a2, *(a2 + 8), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 8) - *a2) >> 3));
  }

  v5 = *(a2 + 56);
  v4 = *(a2 + 64);
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  v6 = *(a1 + 64);
  *(a1 + 56) = v5;
  *(a1 + 64) = v4;
  if (v6)
  {
    sub_100008350(v6);
  }

  *(a1 + 72) = *(a2 + 72);
  v7 = *(a2 + 76);
  *(a1 + 76) = v7;
  if ((v7 & 1) == 0)
  {
    *(a1 + 24) = *(a2 + 24);
    *(a1 + 32) = *(a2 + 32);
    *(a1 + 40) = *(a2 + 40);
    *(a1 + 48) = *(a2 + 48);
  }

  return a1;
}

char *sub_100148A7C(uint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = a2;
  v7 = a1[2];
  result = *a1;
  if (0xAAAAAAAAAAAAAAABLL * ((v7 - result) >> 3) < a4)
  {
    if (result)
    {
      a1[1] = result;
      operator delete(result);
      v7 = 0;
      *a1 = 0;
      a1[1] = 0;
      a1[2] = 0;
    }

    if (a4 <= 0xAAAAAAAAAAAAAAALL)
    {
      v9 = 0xAAAAAAAAAAAAAAABLL * (v7 >> 3);
      v10 = 2 * v9;
      if (2 * v9 <= a4)
      {
        v10 = a4;
      }

      if (v9 >= 0x555555555555555)
      {
        v11 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v11 = v10;
      }

      sub_100148C24(a1, v11);
    }

    sub_100033FD0();
  }

  v12 = a1[1];
  if (0xAAAAAAAAAAAAAAABLL * ((v12 - result) >> 3) >= a4)
  {
    while (v5 != a3)
    {
      *result = *v5;
      *(result + 1) = *(v5 + 8);
      result[16] = *(v5 + 16);
      v5 += 24;
      result += 24;
    }

    a1[1] = result;
  }

  else
  {
    v13 = a2 + v12 - result;
    if (v12 != result)
    {
      do
      {
        *result = *v5;
        *(result + 1) = *(v5 + 8);
        result[16] = *(v5 + 16);
        v5 += 24;
        result += 24;
      }

      while (v5 != v13);
      v12 = a1[1];
    }

    v14 = v12;
    if (v13 != a3)
    {
      v14 = v12;
      v15 = v12;
      do
      {
        *v15 = *v13;
        v15[16] = *(v13 + 16);
        v13 += 24;
        v15 += 24;
        v14 += 24;
      }

      while (v13 != a3);
    }

    a1[1] = v14;
  }

  return result;
}

void sub_100148C24(uint64_t *a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    sub_100148C70(a1, a2);
  }

  sub_100033FD0();
}

void sub_100148C70(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  sub_100033BCC();
}

uint64_t sub_100148CC8(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *a1 = 14;
  *(a1 + 8) = a2;
  *(a1 + 16) = a3;
  sub_100148D2C(a1 + 24, a4);
  sub_100148D2C(a1 + 104, a5);
  return a1;
}

uint64_t sub_100148D2C(uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  sub_100148DD4(a1, *a2, *(a2 + 8), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 8) - *a2) >> 3));
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 48) = 0;
  *(a1 + 40) = 0;
  v4 = *(a2 + 64);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 72) = *(a2 + 72);
  v5 = *(a2 + 76);
  *(a1 + 76) = v5;
  if ((v5 & 1) == 0)
  {
    *(a1 + 24) = *(a2 + 24);
    *(a1 + 32) = *(a2 + 32);
    *(a1 + 40) = *(a2 + 40);
    *(a1 + 48) = *(a2 + 48);
  }

  return a1;
}

uint64_t *sub_100148DD4(uint64_t *result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_100148C24(result, a4);
  }

  return result;
}

void sub_100148E3C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100148E58(uint64_t a1, int a2, void *a3, uint64_t a4, int a5)
{
  *(a1 + 32) = a4;
  *(a1 + 16) = a2;
  *a1 = a3;
  *(a1 + 8) = *a3;
  *a3 = a1;
  v6 = *(a1 + 8);
  v7 = *(v6 + 16);
  if ((v7 >= a2 || v7 < 0) && (v8 = sub_100148EC8(a1, a2, v6, a5)) != 0)
  {
    *(a1 + 24) = *(v8 + 24);
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

uint64_t sub_100148EC8(uint64_t a1, int a2, uint64_t a3, int a4)
{
  if (a3)
  {
    v7 = -2 - a4;
    while (1)
    {
      v8 = *(a3 + 16);
      if (v8 == a2)
      {
        break;
      }

      if (v7 == v8)
      {
        return 0;
      }

      a3 = *(a3 + 8);
      if (!a3)
      {
        return a3;
      }

      v9 = *(a3 + 16);
      if (v9 < 0)
      {
        v10 = sub_100148EC8(a1, v9, a3, a4);
        if (!v10)
        {
          return 0;
        }

        a3 = *(v10 + 8);
        if (!a3)
        {
          return a3;
        }
      }
    }
  }

  return a3;
}

unint64_t sub_100148F58(unint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2 == result)
  {
    return result;
  }

  v3 = a2;
  v4 = (a2 - result) >> 3;
  v5 = *(a3 + 4);
  v6 = result;
  while (1)
  {
    v7 = v4 >> 1;
    v8 = v6 + 8 * (v4 >> 1);
    v9 = *(v8 + 4);
    if (v9 >= v5)
    {
      break;
    }

    v6 = v8 + 8;
    v7 = v4 + ~v7;
LABEL_8:
    v4 = v7;
    if (!v7)
    {
      return v6;
    }
  }

  if (v5 < v9)
  {
    v3 = v6 + 8 * (v4 >> 1);
    goto LABEL_8;
  }

  result = v6 + 8 * (v4 >> 1);
  if (v4 != 1)
  {
    do
    {
      v10 = v7 >> 1;
      v11 = v6 + 8 * (v7 >> 1);
      v12 = *(v11 + 4);
      v13 = v11 + 8;
      v7 += ~(v7 >> 1);
      if (v12 < v5)
      {
        v6 = v13;
      }

      else
      {
        v7 = v10;
      }
    }

    while (v7);
    result = v6;
  }

  v14 = v8 + 8;
  v15 = v3 - (v8 + 8);
  if (v15)
  {
    v16 = v15 >> 3;
    do
    {
      v17 = v16 >> 1;
      v18 = v14 + 8 * (v16 >> 1);
      v19 = *(v18 + 4);
      v20 = v18 + 8;
      v16 += ~(v16 >> 1);
      if (v5 < v19)
      {
        v16 = v17;
      }

      else
      {
        v14 = v20;
      }
    }

    while (v16);
  }

  return result;
}

char *sub_100149034(char *a1, char *a2, uint64_t a3, uint64_t a4, int a5)
{
  v5 = a1;
  if (a1 == a2)
  {
    return v5;
  }

  v9 = (a3 + 40);
  v10 = *(a4 + 24);
  if (*(a3 + 16))
  {
    v12 = 0;
    do
    {
      v13 = *v9;
      if (*v9)
      {
        v14 = v5;
        do
        {
          v15 = *v14;
          if (a5)
          {
            LOBYTE(v15) = (*(**(*v10 + 8) + 40))(*(*v10 + 8), v15);
            v13 = *v9;
          }

          if (v15 != v13)
          {
            break;
          }

          v16 = *++v9;
          v13 = v16;
          ++v14;
        }

        while (v16 && v14 != a2);
        if (!v13)
        {
          if (v14 == v5)
          {
            v36 = v5 + 1;
          }

          else
          {
            v36 = v14;
          }

          if ((*(a3 + 36) & 1) == 0)
          {
            return v36;
          }

          return v5;
        }

          ;
        }
      }

      else
      {
        v19 = *v5;
        if (a5)
        {
          LODWORD(v19) = (*(**(*v10 + 8) + 40))(*(*v10 + 8), v19);
        }

        if (!v19)
        {
          goto LABEL_92;
        }

        ++v9;
      }

      ++v12;
    }

    while (v12 < *(a3 + 16));
  }

  v20 = *v5;
  if (a5)
  {
    v20 = (*(**(*v10 + 8) + 40))(*(*v10 + 8), *v5);
  }

  if (!*(a3 + 20))
  {
    if (!*(a3 + 24))
    {
      goto LABEL_88;
    }

    memset(&v41, 0, sizeof(v41));
    goto LABEL_64;
  }

  memset(&v41, 0, sizeof(v41));
  if ((*(a4 + 42) & 0x20) != 0)
  {
    v39 = v20;
    v40 = 0;
    sub_100149494(*v10, &v38);
    if (SHIBYTE(v41.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v41.__r_.__value_.__l.__data_);
    }

    v41 = v38;
  }

  else
  {
    std::string::assign(&v41, 1uLL, v20);
  }

  if (!*(a3 + 20))
  {
LABEL_64:
    if (!*(a3 + 24))
    {
      goto LABEL_83;
    }

    v39 = v20;
    v40 = 0;
    sub_100149660(*v10, &v39, &v40, &v38);
    if (SHIBYTE(v41.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v41.__r_.__value_.__l.__data_);
    }

    v41 = v38;
    if (!*(a3 + 24))
    {
LABEL_83:
      v33 = 1;
      goto LABEL_85;
    }

    v29 = 0;
    while (1)
    {
      if (!*v9)
      {
        if ((SHIBYTE(v41.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          v30 = HIBYTE(v41.__r_.__value_.__r.__words[2]);
          if (HIBYTE(v41.__r_.__value_.__r.__words[2]) == 1)
          {
            v31 = &v41;
            goto LABEL_77;
          }

          goto LABEL_78;
        }

        if (v41.__r_.__value_.__l.__size_ == 1)
        {
          v31 = v41.__r_.__value_.__r.__words[0];
LABEL_77:
          v30 = v31->__r_.__value_.__s.__data_[0];
LABEL_78:
          if (!v30)
          {
            goto LABEL_84;
          }

          goto LABEL_79;
        }

        if (!v41.__r_.__value_.__l.__size_)
        {
          goto LABEL_84;
        }
      }

LABEL_79:
      if (!std::string::compare(&v41, v9))
      {
        goto LABEL_84;
      }

      ++v9;
        ;
      }

      if (++v29 >= *(a3 + 24))
      {
        goto LABEL_83;
      }
    }
  }

  v21 = 0;
  while (1)
  {
    if (!*v9)
    {
      if (SHIBYTE(v41.__r_.__value_.__r.__words[2]) < 0)
      {
        if (!v41.__r_.__value_.__l.__size_)
        {
          goto LABEL_36;
        }

        if (v41.__r_.__value_.__l.__size_ != 1)
        {
          goto LABEL_35;
        }

        v26 = v41.__r_.__value_.__r.__words[0];
        goto LABEL_52;
      }

      if (!*(&v41.__r_.__value_.__s + 23))
      {
        goto LABEL_36;
      }

      if (HIBYTE(v41.__r_.__value_.__r.__words[2]) == 1)
      {
        v26 = &v41;
LABEL_52:
        if (!v26->__r_.__value_.__s.__data_[0])
        {
          goto LABEL_36;
        }
      }
    }

LABEL_35:
    if (std::string::compare(&v41, v9) < 0)
    {
      v22 = v9 + 1;
        ;
      }

      goto LABEL_61;
    }

LABEL_36:
    v22 = v9 + 1;
      ;
    }

    if (*v22)
    {
      goto LABEL_60;
    }

    if (SHIBYTE(v41.__r_.__value_.__r.__words[2]) < 0)
    {
      if (v41.__r_.__value_.__l.__size_ != 1)
      {
        if (!v41.__r_.__value_.__l.__size_)
        {
          break;
        }

        goto LABEL_60;
      }

      v25 = v41.__r_.__value_.__r.__words[0];
    }

    else
    {
      v24 = HIBYTE(v41.__r_.__value_.__r.__words[2]);
      if (HIBYTE(v41.__r_.__value_.__r.__words[2]) != 1)
      {
        goto LABEL_59;
      }

      v25 = &v41;
    }

    v24 = v25->__r_.__value_.__s.__data_[0];
LABEL_59:
    if (!v24)
    {
      break;
    }

LABEL_60:
    if (std::string::compare(&v41, v22) <= 0)
    {
      break;
    }

LABEL_61:
    v9 = v22 + 1;
      ;
    }

    if (++v21 >= *(a3 + 20))
    {
      goto LABEL_64;
    }
  }

LABEL_84:
  v33 = 0;
  v5 += *(a3 + 36) ^ 1;
LABEL_85:
  if (SHIBYTE(v41.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v41.__r_.__value_.__l.__data_);
  }

  if (v33)
  {
LABEL_88:
    if (!sub_100146404(v10, v20, *(a3 + 28)))
    {
      v34 = *(a3 + 32);
      if (!v34 || sub_100146404(v10, v20, v34))
      {
        v35 = *(a3 + 36);
        goto LABEL_93;
      }
    }

LABEL_92:
    v35 = *(a3 + 36) ^ 1;
LABEL_93:
    v5 += v35;
  }

  return v5;
}

void sub_100149470(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_100149494(uint64_t a1@<X0>, std::string *a2@<X8>)
{
  memset(&i, 0, sizeof(i));
  *&a2->__r_.__value_.__r.__words[1] = 0uLL;
  a2->__r_.__value_.__r.__words[0] = 0;
  (*(**(a1 + 24) + 32))(&v15);
  for (i = v15; ; std::string::erase(&i, size - 1, 0xFFFFFFFFFFFFFFFFLL))
  {
    size = SHIBYTE(i.__r_.__value_.__r.__words[2]);
    if ((SHIBYTE(i.__r_.__value_.__r.__words[2]) & 0x8000000000000000) == 0)
    {
      break;
    }

    size = i.__r_.__value_.__l.__size_;
    if (!i.__r_.__value_.__l.__size_ || *(i.__r_.__value_.__r.__words[0] + i.__r_.__value_.__l.__size_ - 1))
    {
      goto LABEL_10;
    }

LABEL_8:
    ;
  }

  if (*(&i.__r_.__value_.__s + 23))
  {
    if (*(&v15.__r_.__value_.__r.__words[2] + SHIBYTE(i.__r_.__value_.__r.__words[2]) + 7))
    {
      goto LABEL_10;
    }

    goto LABEL_8;
  }

  size = 0;
LABEL_10:
  std::string::reserve(a2, 2 * size + 2);
  v4 = i.__r_.__value_.__l.__size_;
  if ((i.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v4 = SHIBYTE(i.__r_.__value_.__r.__words[2]);
  }

  v5 = HIBYTE(i.__r_.__value_.__r.__words[2]);
  if (v4)
  {
    v6 = 0;
    v7 = SHIBYTE(i.__r_.__value_.__r.__words[2]) >> 63;
    v8 = 1;
    do
    {
      p_i = i.__r_.__value_.__r.__words[0];
      if ((v7 & 1) == 0)
      {
        p_i = &i;
      }

      v10 = p_i->__r_.__value_.__s.__data_[v6];
      if (v10 == 255)
      {
        v11 = std::string::append(a2, 1uLL, -1);
        v12 = 98;
      }

      else
      {
        v11 = std::string::append(a2, 1uLL, v10 + 1);
        v12 = 97;
      }

      std::string::append(v11, 1uLL, v12);
      v6 = v8;
      v5 = HIBYTE(i.__r_.__value_.__r.__words[2]);
      v7 = SHIBYTE(i.__r_.__value_.__r.__words[2]) >> 63;
      v13 = i.__r_.__value_.__l.__size_;
      if ((i.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v13 = SHIBYTE(i.__r_.__value_.__r.__words[2]);
      }
    }

    while (v13 > v8++);
  }

  if (v5 < 0)
  {
    operator delete(i.__r_.__value_.__l.__data_);
  }
}

void sub_10014961C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  if (a18 < 0)
  {
    JUMPOUT(0x100149600);
  }

  JUMPOUT(0x100149608);
}

void sub_10014963C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  if (*(v9 + 23) < 0)
  {
    operator delete(*v9);
  }

  sub_1001FCE7C(va);
  _Unwind_Resume(a1);
}

void sub_100149660(uint64_t a1@<X0>, std::string::value_type *a2@<X1>, std::string::value_type *a3@<X2>, unsigned __int8 *a4@<X8>)
{
  *a4 = 0;
  *(a4 + 1) = 0;
  *(a4 + 2) = 0;
  v6 = *(a1 + 360);
  if (v6 > 1)
  {
    if (v6 == 2)
    {
      (*(**(a1 + 24) + 32))(&v16);
      if (a4[23] < 0)
      {
        operator delete(*a4);
      }

      *a4 = v16;
      v9 = v17;
      *(a4 + 2) = v17;
      v10 = HIBYTE(v9);
      v11 = v10;
      v12 = 0;
      if ((v10 & 0x80u) != 0)
      {
        v10 = *(a4 + 1);
      }

      if (v10)
      {
        if (v11 >= 0)
        {
          v13 = a4;
        }

        else
        {
          v13 = *a4;
        }

        do
        {
          if (v13[v12] == *(a1 + 364))
          {
            goto LABEL_28;
          }

          ++v12;
        }

        while (v10 != v12);
        v12 = v10;
      }

LABEL_28:
      std::string::erase(a4, v12, 0xFFFFFFFFFFFFFFFFLL);
      goto LABEL_29;
    }

    if (v6 != 3)
    {
      goto LABEL_29;
    }
  }

  else if (v6)
  {
    if (v6 == 1)
    {
      (*(**(a1 + 24) + 32))(&v16);
      if (a4[23] < 0)
      {
        operator delete(*a4);
      }

      *a4 = v16;
      *(a4 + 2) = v17;
      std::string::erase(a4, *(a1 + 364), 0xFFFFFFFFFFFFFFFFLL);
    }

    goto LABEL_29;
  }

  sub_10012BE10(a4, a2, a3, a3 - a2);
  v7 = a4[23];
  if ((v7 & 0x80u) == 0)
  {
    v8 = a4;
  }

  else
  {
    v8 = *a4;
  }

  if ((v7 & 0x80u) != 0)
  {
    v7 = *(a4 + 1);
  }

  (*(**(a1 + 8) + 48))(*(a1 + 8), v8, &v8[v7]);
  (*(**(a1 + 24) + 32))(&v16);
  if (a4[23] < 0)
  {
    operator delete(*a4);
  }

  *a4 = v16;
  *(a4 + 2) = v17;
LABEL_29:
  while (1)
  {
    v14 = a4[23];
    if (v14 < 0)
    {
      break;
    }

    if (!a4[23])
    {
      goto LABEL_37;
    }

    if (a4[v14 - 1])
    {
      return;
    }

LABEL_35:
    std::string::erase(a4, v14 - 1, 0xFFFFFFFFFFFFFFFFLL);
  }

  v14 = *(a4 + 1);
  if (v14)
  {
    if (*(*a4 + v14 - 1))
    {
      return;
    }

    goto LABEL_35;
  }

  operator delete(*a4);
LABEL_37:
  v15 = v16;
  *a4 = 0;
  *(a4 + 1) = v15;
  *(a4 + 15) = *(&v16 + 7);
  a4[23] = 1;
}

void sub_10014990C(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    __cxa_begin_catch(exception_object);
    __cxa_end_catch();
    JUMPOUT(0x100149878);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100149958(__n128 *a1, uint64_t a2)
{
  v3 = a1[6].n128_u32[0];
  if ((v3 & 0x80) != 0 || (v4 = a1[5].n128_u64[1], (a1[11].n128_u8[4] & *(*(v4 + 8) + 16)) == 0))
  {

    return sub_100149B44(a1, a2);
  }

  else
  {
    if (*(v4 + 309) == 1)
    {
      if ((v3 & 0x400) == 0)
      {
        v5 = &a1[2].n128_u64[1];
        v6 = a1[2].n128_u64[1];
        v7 = a1[2].n128_u64[0];
        v8 = v7 - v6;
        v9 = (v4 + 296);
        v10 = (v4 + 288);
        goto LABEL_18;
      }

      v5 = &a1[2].n128_u64[1];
      v6 = a1[2].n128_u64[1];
      v7 = a1[2].n128_u64[0];
      v8 = v7 - v6;
      v9 = (v4 + 296);
      v10 = (v4 + 288);
      if (a1[7].n128_u8[11] == 1)
      {
LABEL_18:
        if (*v9 >= v8)
        {
          v16 = v8;
        }

        else
        {
          v16 = *v9;
        }

        v17 = *v10;
        if (*v10 <= v16)
        {
          v18 = v6 + v16;
          *v5 = v6 + v16;
          if (*(v4 + 308) == 1 && v16 < *v9)
          {
            a1[3].n128_u64[0] = v18;
          }

          if (v16 != v17)
          {
            v19 = a1[13].n128_u64[1] - 32;
            if (v19 < a1[13].n128_u64[0])
            {
              sub_1001488AC(a1, a2);
              v19 = a1[13].n128_u64[1] - 32;
            }

            *v19 = 7;
            *(v19 + 8) = v16;
            *(v19 + 16) = v4;
            *(v19 + 24) = v18;
            a1[13].n128_u64[1] = v19;
          }

          a1[5].n128_u64[1] = *(v4 + 16);
          return 1;
        }

LABEL_31:
        result = 0;
        *v5 = v7;
        return result;
      }

      v12 = *v10;
      if (v8 < *v10)
      {
        goto LABEL_31;
      }
    }

    else
    {
      v5 = &a1[2].n128_u64[1];
      v6 = a1[2].n128_u64[1];
      v7 = a1[2].n128_u64[0];
      v12 = *(v4 + 288);
      if (v7 - v6 < v12)
      {
        goto LABEL_31;
      }

      v9 = (v4 + 296);
    }

    v13 = (v6 + v12);
    *v5 = v6 + v12;
    if (v12 < *v9)
    {
      v14 = a1[13].n128_u64[1] - 32;
      if (v14 < a1[13].n128_u64[0])
      {
        sub_1001488AC(a1, a2);
        v14 = a1[13].n128_u64[1] - 32;
      }

      *v14 = 9;
      *(v14 + 8) = v12;
      *(v14 + 16) = v4;
      *(v14 + 24) = v13;
      a1[13].n128_u64[1] = v14;
      v7 = a1[2].n128_u64[0];
      v13 = a1[2].n128_u64[1];
    }

    a1[5].n128_u64[1] = *(v4 + 16);
    if (v13 == v7)
    {
      v15 = *(v4 + 280);
    }

    else
    {
      v15 = *(v4 + *v13 + 24);
    }

    return (v15 >> 1) & 1;
  }
}

uint64_t sub_100149B44(__n128 *a1, uint64_t a2)
{
  v3 = a1[5].n128_u64[1];
  v4 = *(v3 + 8);
  if (*(v3 + 288))
  {
    v5 = 0;
    while (1)
    {
      a1[5].n128_u64[1] = v4;
      result = sub_100147070(a1);
      if (!result)
      {
        break;
      }

      if (++v5 >= *(v3 + 288))
      {
        goto LABEL_7;
      }
    }
  }

  else
  {
    v5 = 0;
LABEL_7:
    if (*(v3 + 309) == 1 && ((a1[6].n128_u8[1] & 4) == 0 || a1[7].n128_u8[11] == 1))
    {
      while (v5 < *(v3 + 296))
      {
        a1[5].n128_u64[1] = v4;
        if (!sub_100147070(a1))
        {
          break;
        }

        ++v5;
      }

      if (*(v3 + 308) == 1 && v5 < *(v3 + 296))
      {
        a1[3].n128_u64[0] = a1[2].n128_u64[1];
      }

      if (v5 != *(v3 + 288))
      {
        v11 = a1[2].n128_u64[1];
        v12 = a1[13].n128_u64[1] - 32;
        if (v12 < a1[13].n128_u64[0])
        {
          sub_1001488AC(a1, a2);
          v12 = a1[13].n128_u64[1] - 32;
        }

        *v12 = 7;
        *(v12 + 8) = v5;
        *(v12 + 16) = v3;
        *(v12 + 24) = v11;
        a1[13].n128_u64[1] = v12;
      }

      a1[5].n128_u64[1] = *(v3 + 16);
      return 1;
    }

    else
    {
      if (v5 < *(v3 + 296))
      {
        v7 = a1[2].n128_u64[1];
        v8 = a1[13].n128_u64[1] - 32;
        if (v8 < a1[13].n128_u64[0])
        {
          sub_1001488AC(a1, a2);
          v8 = a1[13].n128_u64[1] - 32;
        }

        *v8 = 8;
        *(v8 + 8) = v5;
        *(v8 + 16) = v3;
        *(v8 + 24) = v7;
        a1[13].n128_u64[1] = v8;
      }

      a1[5].n128_u64[1] = *(v3 + 16);
      v9 = a1[2].n128_u64[1];
      if (v9 == a1[2].n128_u64[0])
      {
        v10 = *(v3 + 280);
      }

      else
      {
        v10 = *(v3 + *v9 + 24);
      }

      return (v10 >> 1) & 1;
    }
  }

  return result;
}

uint64_t *sub_100149CCC(uint64_t *result, unint64_t a2)
{
  if (0x6DB6DB6DB6DB6DB7 * ((result[2] - *result) >> 4) < a2)
  {
    if (a2 < 0x24924924924924ALL)
    {
      sub_100149E2C(result, a2);
    }

    sub_100033FD0();
  }

  return result;
}

void sub_100149DA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_100149F40(va);
  _Unwind_Resume(a1);
}

_OWORD *sub_100149DB4(uint64_t *a1, _OWORD *a2)
{
  v4 = a1[1];
  if (v4 >= a1[2])
  {
    result = sub_100149F94(a1, a2);
  }

  else
  {
    *v4 = *a2;
    sub_100148D2C((v4 + 1), (a2 + 1));
    v4[6] = a2[6];
    result = v4 + 7;
    a1[1] = (v4 + 7);
  }

  a1[1] = result;
  return result;
}

void sub_100149E2C(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x24924924924924ALL)
  {
    operator new();
  }

  sub_100033BCC();
}

uint64_t sub_100149E88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v6 = a2;
    v7 = 0;
    do
    {
      v8 = v6 + v7;
      *(a4 + v7) = *(v6 + v7);
      result = sub_100148D2C(a4 + v7 + 16, v6 + v7 + 16);
      *(a4 + v7 + 96) = *(v6 + v7 + 96);
      v7 += 112;
    }

    while (v8 + 112 != a3);
    while (v6 != a3)
    {
      result = sub_10014C2F8(v6 + 16);
      v6 += 112;
    }
  }

  return result;
}

void sub_100149F18(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    v4 = -v1;
    v5 = v2 - 96;
    do
    {
      v5 = sub_10014C2F8(v5) - 112;
      v4 += 112;
    }

    while (v4);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100149F40(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 112;
    sub_10014C2F8(i - 96);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_100149F94(uint64_t *a1, _OWORD *a2)
{
  v2 = 0x6DB6DB6DB6DB6DB7 * ((a1[1] - *a1) >> 4);
  v3 = v2 + 1;
  if ((v2 + 1) > 0x249249249249249)
  {
    sub_100033FD0();
  }

  if (0xDB6DB6DB6DB6DB6ELL * ((a1[2] - *a1) >> 4) > v3)
  {
    v3 = 0xDB6DB6DB6DB6DB6ELL * ((a1[2] - *a1) >> 4);
  }

  if ((0x6DB6DB6DB6DB6DB7 * ((a1[2] - *a1) >> 4)) >= 0x124924924924924)
  {
    v6 = 0x249249249249249;
  }

  else
  {
    v6 = v3;
  }

  v17 = a1;
  if (v6)
  {
    sub_100149E2C(a1, v6);
  }

  v7 = 112 * v2;
  v14 = 0;
  v15 = v7;
  v16 = v7;
  *v7 = *a2;
  sub_100148D2C(v7 + 16, (a2 + 1));
  *(v7 + 96) = a2[6];
  *&v16 = v16 + 112;
  v8 = a1[1];
  v9 = v15 + *a1 - v8;
  sub_100149E88(a1, *a1, v8, v9);
  v10 = *a1;
  *a1 = v9;
  v11 = a1[2];
  v13 = v16;
  *(a1 + 1) = v16;
  *&v16 = v10;
  *(&v16 + 1) = v11;
  v14 = v10;
  v15 = v10;
  sub_100149F40(&v14);
  return v13;
}

void sub_10014A0D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_100149F40(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10014A0EC(uint64_t a1, int a2, int a3)
{
  v3 = *(a1 + 88);
  if (!v3)
  {
    return 1;
  }

  while (1)
  {
    v7 = *v3;
    if (!*v3)
    {
      v9 = v3[4];
      *(a1 + 88) = *(v3 + 1);
      sub_10014A0EC(a1, v9, 0);
      v8 = *(a1 + 88);
      goto LABEL_13;
    }

    if (v7 == 1)
    {
      break;
    }

    if (v7 == 6)
    {
      return 1;
    }

LABEL_5:
    v8 = *(v3 + 1);
    *(a1 + 88) = v8;
LABEL_13:
    v3 = v8;
    if (!v8)
    {
      return 1;
    }
  }

  if (v3[4] != a2)
  {
    sub_100146CFC(a1);
    v8 = *(a1 + 88);
    if (v8)
    {
      goto LABEL_13;
    }

    *(a1 + 228) = 1;
    *(a1 + 230) = 0;
      ;
    }

    v8 = *(a1 + 88);
    if (v8)
    {
      goto LABEL_13;
    }

    goto LABEL_5;
  }

  if (!a3)
  {
    *(a1 + 88) = *(v3 + 1);
    return 1;
  }

  return sub_100146CFC(a1);
}

void *sub_10014A214@<X0>(void *result@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  if (!result[38])
  {
    goto LABEL_9;
  }

  v3 = result[37];
  if (!v3)
  {
    goto LABEL_9;
  }

  v4 = result + 37;
  do
  {
    if (*(v3 + 32) >= a2)
    {
      v4 = v3;
    }

    v3 = *(v3 + 8 * (*(v3 + 32) < a2));
  }

  while (v3);
  if (v4 != result + 37 && *(v4 + 8) <= a2)
  {
    if (*(v4 + 63) < 0)
    {
      return sub_10000FFF8(a3, v4[5], v4[6]);
    }

    else
    {
      v6 = *(v4 + 5);
      *(a3 + 16) = v4[7];
      *a3 = v6;
    }
  }

  else
  {
LABEL_9:
    if (a2 <= 21)
    {
      v5 = off_1002B4380[a2];
    }

    else
    {
      v5 = "Unknown error.";
    }

    return sub_100007ECC(a3, v5);
  }

  return result;
}

void sub_10014A2A8(std::runtime_error *a1)
{
  std::runtime_error::~runtime_error(a1);

  operator delete();
}

void sub_10014A2E0(uint64_t a1)
{
  exception = __cxa_allocate_exception(0x50uLL);
  sub_10014A33C(exception, a1);
}

uint64_t sub_10014A340(uint64_t a1)
{
  *(a1 + 40) = &off_1002B40E0;
  sub_100145840((a1 + 48));
  std::runtime_error::~runtime_error((a1 + 8));
  return a1;
}

uint64_t sub_10014A394(uint64_t a1, uint64_t a2)
{
  *a1 = &off_1002B40B0;
  std::runtime_error::runtime_error((a1 + 8), a2);
  *(a1 + 8) = &off_1002B4440;
  *(a1 + 24) = *(a2 + 16);
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = -1;
  *a1 = &off_1002B44B0;
  *(a1 + 8) = off_1002B44E0;
  *(a1 + 40) = off_1002B4508;
  *(a1 + 48) = 0;
  return a1;
}

void sub_10014A63C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_100145840(&a9);
  sub_100145840(&a10);
  (*(*v10 + 24))(v10);
  _Unwind_Resume(a1);
}

void sub_10014A6A8(uint64_t a1)
{
  exception = __cxa_allocate_exception(0x50uLL);
  sub_10014A918(exception, a1);
}

void sub_10014A704(uint64_t a1)
{
  *(a1 + 40) = &off_1002B40E0;
  sub_100145840((a1 + 48));
  std::runtime_error::~runtime_error((a1 + 8));

  operator delete();
}

void sub_10014A778(uint64_t a1)
{
  *(a1 + 32) = &off_1002B40E0;
  sub_100145840((a1 + 40));

  std::runtime_error::~runtime_error(a1);
}

void sub_10014A7D4(uint64_t a1)
{
  *(a1 + 32) = &off_1002B40E0;
  sub_100145840((a1 + 40));
  std::runtime_error::~runtime_error(a1);

  operator delete();
}

void sub_10014A84C(void *a1)
{
  *a1 = &off_1002B40E0;
  v1 = (a1 - 4);
  sub_100145840(a1 + 1);

  std::runtime_error::~runtime_error(v1);
}

void sub_10014A8A4(void *a1)
{
  *a1 = &off_1002B40E0;
  v1 = (a1 - 4);
  sub_100145840(a1 + 1);
  std::runtime_error::~runtime_error(v1);

  operator delete();
}

uint64_t sub_10014A918(uint64_t a1, uint64_t a2)
{
  *a1 = &off_1002B40B0;
  std::runtime_error::runtime_error((a1 + 8), (a2 + 8));
  *(a1 + 8) = &off_1002B4440;
  *(a1 + 24) = *(a2 + 24);
  v4 = *(a2 + 48);
  *(a1 + 40) = &off_1002B40E0;
  *(a1 + 48) = v4;
  if (v4)
  {
    (*(*v4 + 24))(v4);
  }

  v5 = *(a2 + 56);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 56) = v5;
  *a1 = &off_1002B44B0;
  *(a1 + 8) = off_1002B44E0;
  *(a1 + 40) = off_1002B4508;
  return a1;
}

void sub_10014AAA0(const std::logic_error *a1)
{
  exception = __cxa_allocate_exception(0x40uLL);
  sub_10014AAFC(exception, a1);
}

uint64_t sub_10014AAFC(uint64_t a1, const std::logic_error *a2)
{
  *a1 = &off_1002B40B0;
  std::logic_error::logic_error((a1 + 8), a2);
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = -1;
  *a1 = &off_1002B4570;
  *(a1 + 8) = off_1002B45A0;
  *(a1 + 24) = off_1002B45C8;
  return a1;
}

uint64_t sub_10014ABA8(uint64_t a1)
{
  *(a1 + 24) = &off_1002B40E0;
  sub_100145840((a1 + 32));
  std::logic_error::~logic_error((a1 + 8));
  return a1;
}

void sub_10014ADB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_100145840(&a9);
  sub_100145840(&a10);
  (*(*v10 + 24))(v10);
  _Unwind_Resume(a1);
}

void sub_10014AE1C(uint64_t a1)
{
  exception = __cxa_allocate_exception(0x40uLL);
  sub_10014B08C(exception, a1);
}

void sub_10014AE78(uint64_t a1)
{
  *(a1 + 24) = &off_1002B40E0;
  sub_100145840((a1 + 32));
  std::logic_error::~logic_error((a1 + 8));

  operator delete();
}

void sub_10014AEEC(uint64_t a1)
{
  *(a1 + 16) = &off_1002B40E0;
  sub_100145840((a1 + 24));

  std::logic_error::~logic_error(a1);
}

void sub_10014AF48(uint64_t a1)
{
  *(a1 + 16) = &off_1002B40E0;
  sub_100145840((a1 + 24));
  std::logic_error::~logic_error(a1);

  operator delete();
}

void sub_10014AFC0(void *a1)
{
  *a1 = &off_1002B40E0;
  v1 = (a1 - 2);
  sub_100145840(a1 + 1);

  std::logic_error::~logic_error(v1);
}

void sub_10014B018(void *a1)
{
  *a1 = &off_1002B40E0;
  v1 = (a1 - 2);
  sub_100145840(a1 + 1);
  std::logic_error::~logic_error(v1);

  operator delete();
}

uint64_t sub_10014B08C(uint64_t a1, uint64_t a2)
{
  *a1 = &off_1002B40B0;
  std::logic_error::logic_error((a1 + 8), (a2 + 8));
  v4 = *(a2 + 32);
  *(a1 + 24) = &off_1002B40E0;
  *(a1 + 32) = v4;
  if (v4)
  {
    (*(*v4 + 24))(v4);
  }

  v5 = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 40) = v5;
  *a1 = &off_1002B4570;
  *(a1 + 8) = off_1002B45A0;
  *(a1 + 24) = off_1002B45C8;
  return a1;
}

unint64_t sub_10014B1AC(uint64_t *a1, uint64_t a2, unint64_t a3, unint64_t a4)
{
  v4 = a2;
  if (a3)
  {
    v5 = a4;
    v8 = a1[1];
    v9 = a1[2];
    if (0xAAAAAAAAAAAAAAABLL * ((v9 - v8) >> 3) >= a3)
    {
      v15 = 0xAAAAAAAAAAAAAAABLL * ((v8 - a2) >> 3);
      v16 = a3;
      if (a3 <= v15)
      {
        goto LABEL_15;
      }

      v16 = 0xAAAAAAAAAAAAAAABLL * ((v8 - a2) >> 3);
      v17 = v8 + 24 * (a3 - v15);
      v18 = a1[1];
      do
      {
        *v18 = *a4;
        *(v18 + 16) = *(a4 + 16);
        v18 += 24;
      }

      while (v18 != v17);
      a1[1] = v17;
      if (v8 != a2)
      {
LABEL_15:
        sub_10014B420(a1, a2, v8, a2 + 24 * a3);
        if (v4 <= v5)
        {
          if (a1[1] <= v5)
          {
            v19 = 0;
          }

          else
          {
            v19 = a3;
          }

          v5 += 24 * v19;
        }

        v20 = 0;
        v21 = *(v5 + 16);
        do
        {
          v22 = v20 + v4;
          *v22 = *v5;
          *(v22 + 8) = *(v5 + 8);
          *(v22 + 16) = v21;
          v20 += 24;
          --v16;
        }

        while (v16);
      }
    }

    else
    {
      v10 = *a1;
      v11 = a3 - 0x5555555555555555 * ((v8 - *a1) >> 3);
      if (v11 > 0xAAAAAAAAAAAAAAALL)
      {
        sub_100033FD0();
      }

      v12 = a2 - v10;
      v13 = 0xAAAAAAAAAAAAAAABLL * ((v9 - v10) >> 3);
      if (2 * v13 > v11)
      {
        v11 = 2 * v13;
      }

      if (v13 >= 0x555555555555555)
      {
        v14 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v14 = v11;
      }

      v29 = a1;
      if (v14)
      {
        sub_100148C70(a1, v14);
      }

      v23 = 8 * (v12 >> 3);
      __p = 0;
      v26 = v23;
      v28 = 0;
      do
      {
        *v23 = *a4;
        *(v23 + 16) = *(a4 + 16);
        v23 += 24;
      }

      while (v23 != 8 * (v12 >> 3) + 24 * a3);
      v27 = 8 * (v12 >> 3) + 24 * a3;
      v4 = sub_10014B4A8(a1, &__p, v4);
      if (v27 != v26)
      {
        v27 = (v27 - v26 - 24) % 0x18 + v26;
      }

      if (__p)
      {
        operator delete(__p);
      }
    }
  }

  return v4;
}

void sub_10014B3D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10014B420(uint64_t result, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v4 = *(result + 8);
  v5 = a2 + v4 - a4;
  if (v5 >= a3)
  {
    v7 = *(result + 8);
  }

  else
  {
    v6 = a2 + v4 - a4;
    v7 = *(result + 8);
    do
    {
      *v7 = *v6;
      *(v7 + 16) = *(v6 + 16);
      v6 += 24;
      v7 += 24;
    }

    while (v6 < a3);
  }

  *(result + 8) = v7;
  if (v4 != a4)
  {
    v8 = 0;
    do
    {
      v9 = v4 + v8;
      *(v9 - 24) = *(v5 + v8 - 24);
      *(v9 - 16) = *(v5 + v8 - 16);
      *(v9 - 8) = *(v5 + v8 - 8);
      v8 -= 24;
    }

    while (a4 - v4 != v8);
  }

  return result;
}

uint64_t sub_10014B4A8(uint64_t *a1, void *a2, uint64_t a3)
{
  v4 = a1[1];
  result = a2[1];
  v6 = a2[2];
  if (v4 == a3)
  {
    v9 = a2[1];
    v8 = a3;
  }

  else
  {
    v7 = a3;
    do
    {
      *v6 = *v7;
      *(v6 + 16) = *(v7 + 16);
      v7 += 24;
      v6 += 24;
    }

    while (v7 != v4);
    v8 = a1[1];
    v9 = a2[1];
    v6 = a2[2];
  }

  a2[2] = v6 + v8 - a3;
  a1[1] = a3;
  v10 = *a1;
  v11 = v9 + *a1 - a3;
  if (*a1 != a3)
  {
    v12 = v11;
    do
    {
      *v12 = *v10;
      *(v12 + 16) = *(v10 + 16);
      v10 += 24;
      v12 += 24;
    }

    while (v10 != a3);
    v10 = *a1;
  }

  a2[1] = v11;
  *a1 = v11;
  a1[1] = v10;
  a2[1] = v10;
  v13 = a1[1];
  a1[1] = a2[2];
  a2[2] = v13;
  v14 = a1[2];
  a1[2] = a2[3];
  a2[3] = v14;
  *a2 = a2[1];
  return result;
}

uint64_t sub_10014B580(uint64_t a1, char a2)
{
  v3 = *(a1 + 216);
  if ((a2 & 1) == 0)
  {
    sub_10014886C(*(a1 + 16), *(v3 + 16), *(v3 + 8), *(v3 + 8) == 0);
    sub_100146710(*(a1 + 16), *(v3 + 24), *(v3 + 8), *(v3 + 32), *(v3 + 8) == 0);
  }

  *(a1 + 216) = v3 + 40;
  return 1;
}

uint64_t sub_10014B5E8(uint64_t a1)
{
  *(a1 + 216) += 8;
  *(a1 + 88) = 0;
  return 0;
}

BOOL sub_10014B600(uint64_t a1, int a2)
{
  v2 = *(a1 + 216);
  *(a1 + 88) = *(v2 + 8);
  *(a1 + 40) = *(v2 + 16);
  v3 = *(v2 + 24);
  *(a1 + 228) = v3 ^ a2 ^ 1;
  *(a1 + 216) = v2 + 32;
  *(a1 + 229) = 1;
  return v3 != a2;
}

uint64_t sub_10014B644(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 216);
  if ((a2 & 1) == 0)
  {
    *(a1 + 88) = *(v2 + 8);
    *(a1 + 40) = *(v2 + 16);
  }

  *(a1 + 216) = v2 + 24;
  *(a1 + 230) = a2 ^ 1;
  return a2;
}

uint64_t sub_10014B674(uint64_t a1)
{
  v1 = *(a1 + 216);
  v2 = *(v1 + 16);
  if (v2)
  {
    **(v1 + 8) = v2;
  }

  *(a1 + 216) = v1 + 48;
  return 1;
}

uint64_t sub_10014B698(uint64_t a1, uint64_t a2)
{
  ++*(a1 + 224);
  v2 = *(a1 + 208);
  *(a1 + 208) = *(*(a1 + 216) + 8);
  v3 = sub_100148954(a1, a2);
  v4 = 0;
  while (1)
  {
    v5 = atomic_load(&v3[v4]);
    if (!v5)
    {
      atomic_compare_exchange_strong(&v3[v4], &v5, v2);
      if (!v5)
      {
        break;
      }
    }

    v4 += 8;
    if (v4 == 128)
    {
      operator delete(v2);
      return 1;
    }
  }

  return 1;
}

uint64_t sub_10014B704(uint64_t a1, int a2)
{
  v2 = *(a1 + 216);
  if (a2)
  {
    *(a1 + 216) = v2 + 4;
    return 1;
  }

  else
  {
    v4 = v2[1];
    v3 = v2[2];
    v5 = *(v3 + 288);
    if ((*(a1 + 97) & 0x20) != 0 && *(a1 + 40) == *(a1 + 32))
    {
      *(a1 + 121) = 1;
    }

    v6 = v2[3];
    v7 = v3 + 24;
    v8 = *(a1 + 104) + 1;
    v9 = (v6 - 1);
    v10 = v5 + 1;
    while (1)
    {
      *(a1 + 40) = v9;
      *(a1 + 104) = v8;
      if (v10 == v4)
      {
        break;
      }

      v11 = *v9--;
      ++v8;
      --v6;
      --v4;
      if ((*(v7 + v11) & 2) != 0)
      {
        v2[1] = v4;
        v2[3] = v6;
        goto LABEL_12;
      }
    }

    *(a1 + 216) = v2 + 4;
    if ((*(v7 + *v9) & 2) == 0)
    {
      return 1;
    }

LABEL_12:
    v12 = 0;
    *(a1 + 88) = *(v3 + 16);
  }

  return v12;
}

uint64_t sub_10014B7B8(uint64_t a1, int a2)
{
  v3 = *(a1 + 216);
  if (a2)
  {
    v4 = (v3 + 4);
LABEL_3:
    *(a1 + 216) = v4;
    return 1;
  }

  v6 = v3[1];
  v7 = v3[2];
  *(a1 + 88) = *(v7 + 8);
  v8 = v3[3];
  *(a1 + 40) = v8;
  if (*(a1 + 32) == v8)
  {
LABEL_17:
    *(a1 + 216) += 32;
    if ((*(a1 + 97) & 0x20) != 0 && v8 != *(a1 + 56))
    {
      *(a1 + 121) = 1;
    }

    if ((*(v7 + 280) & 2) == 0)
    {
      return 1;
    }
  }

  else
  {
    v9 = v7 + 24;
    v10 = v6 + 1;
    do
    {
      v11 = v10;
      if ((sub_100147070(a1) & 1) == 0)
      {
        v4 = *(a1 + 216) + 32;
        goto LABEL_3;
      }

      ++*(a1 + 104);
      *(a1 + 88) = *(v7 + 8);
      v8 = *(a1 + 32);
      v12 = *(a1 + 40);
      if (v11 >= *(v7 + 296) || v12 == v8)
      {
        break;
      }

      v10 = v11 + 1;
    }

    while ((*(v9 + *v12) & 2) == 0);
    if (v12 == v8)
    {
      goto LABEL_17;
    }

    if (*(v7 + 296) == v11)
    {
      *(a1 + 216) += 32;
      if ((*(v9 + *v12) & 2) == 0)
      {
        return 1;
      }
    }

    else
    {
      v3[1] = v11;
      v3[3] = v12;
    }
  }

  result = 0;
  *(a1 + 88) = *(v7 + 16);
  return result;
}

uint64_t sub_10014B8F4(uint64_t a1, int a2)
{
  v2 = *(a1 + 216);
  if (!a2)
  {
    v5 = v2[1];
    v4 = v2[2];
    v6 = v2[3];
    *(a1 + 40) = v6;
    v7 = *(a1 + 32);
    if (v7 == v6)
    {
      v13 = v6;
    }

    else
    {
      v8 = *(v4 + 296);
      v9 = *(a1 + 104) + 1;
      v10 = v6 + 1;
      v11 = v5 + 1;
      v12 = v6 + 1;
      do
      {
        v6 = v12;
        v13 = v10;
        v5 = v11;
        *(a1 + 40) = v10;
        *(a1 + 104) = v9;
        if (v11 >= v8)
        {
          break;
        }

        if (v10 == v7)
        {
          break;
        }

        ++v10;
        ++v9;
        ++v12;
        ++v11;
      }

      while ((*(v4 + 24 + *v13) & 2) == 0);
    }

    if (*(v4 + 308) == 1 && v5 < *(v4 + 296))
    {
      *(a1 + 48) = v6;
    }

    if (v13 == v7)
    {
      *(a1 + 216) = v2 + 4;
      if ((*(a1 + 97) & 0x20) != 0 && v7 != *(a1 + 56))
      {
        *(a1 + 121) = 1;
      }

      if ((*(v4 + 280) & 2) == 0)
      {
        return 1;
      }
    }

    else if (v5 == *(v4 + 296))
    {
      *(a1 + 216) = v2 + 4;
      if ((*(v4 + *v13 + 24) & 2) == 0)
      {
        return 1;
      }
    }

    else
    {
      v2[1] = v5;
      v2[3] = v6;
    }

    v3 = 0;
    *(a1 + 88) = *(v4 + 16);
    return v3;
  }

  *(a1 + 216) = v2 + 4;
  return 1;
}

uint64_t sub_10014BA20(uint64_t a1, int a2)
{
  v3 = *(a1 + 216);
  if (a2)
  {
    v4 = (v3 + 4);
LABEL_3:
    *(a1 + 216) = v4;
    return 1;
  }

  v7 = v3[1];
  v6 = v3[2];
  v8 = *(v6 + 8);
  *(a1 + 88) = v8;
  v9 = *(v8 + 24);
  v10 = v3[3];
  *(a1 + 40) = v10;
  if (*(a1 + 32) != v10)
  {
    LOBYTE(v11) = *v10;
    v12 = v7 + 1;
    while (1)
    {
      v7 = v12;
      if (*(a1 + 120) == 1)
      {
        LOBYTE(v11) = (*(**(**(a1 + 80) + 8) + 40))(*(**(a1 + 80) + 8), v11);
      }

      if (v9 != v11)
      {
        break;
      }

      v10 = (*(a1 + 40) + 1);
      *(a1 + 40) = v10;
      ++*(a1 + 104);
      *(a1 + 88) = *(v6 + 8);
      if (v7 < *(v6 + 296) && v10 != *(a1 + 32))
      {
        v11 = *v10;
        v12 = v7 + 1;
        if ((*(v6 + 24 + v11) & 2) == 0)
        {
          continue;
        }
      }

      goto LABEL_13;
    }

    v4 = *(a1 + 216) + 32;
    goto LABEL_3;
  }

LABEL_13:
  if (*(v6 + 308) == 1 && v7 < *(v6 + 296))
  {
    *(a1 + 48) = v10;
  }

  if (v10 == *(a1 + 32))
  {
    *(a1 + 216) += 32;
    if ((*(a1 + 97) & 0x20) != 0 && v10 != *(a1 + 56))
    {
      *(a1 + 121) = 1;
    }

    if ((*(v6 + 280) & 2) == 0)
    {
      return 1;
    }
  }

  else if (v7 == *(v6 + 296))
  {
    *(a1 + 216) += 32;
    if ((*(v6 + *v10 + 24) & 2) == 0)
    {
      return 1;
    }
  }

  else
  {
    v3[1] = v7;
    v3[3] = v10;
  }

  result = 0;
  *(a1 + 88) = *(v6 + 16);
  return result;
}

uint64_t sub_10014BBD8(uint64_t a1, int a2)
{
  v3 = *(a1 + 216);
  if (a2)
  {
    v4 = (v3 + 4);
LABEL_3:
    *(a1 + 216) = v4;
    return 1;
  }

  v7 = v3[1];
  v6 = v3[2];
  v8 = *(v6 + 8);
  *(a1 + 88) = v8;
  v9 = v3[3];
  *(a1 + 40) = v9;
  if (*(a1 + 32) != v9)
  {
    v10 = v8 + 16;
    LOBYTE(v11) = *v9;
    v12 = v7 + 1;
    while (1)
    {
      v7 = v12;
      if (*(a1 + 120) == 1)
      {
        LOBYTE(v11) = (*(**(**(a1 + 80) + 8) + 40))(*(**(a1 + 80) + 8), v11);
      }

      if (!*(v10 + v11))
      {
        break;
      }

      v9 = (*(a1 + 40) + 1);
      *(a1 + 40) = v9;
      ++*(a1 + 104);
      *(a1 + 88) = *(v6 + 8);
      if (v7 < *(v6 + 296) && v9 != *(a1 + 32))
      {
        v11 = *v9;
        v12 = v7 + 1;
        if ((*(v6 + 24 + v11) & 2) == 0)
        {
          continue;
        }
      }

      goto LABEL_13;
    }

    v4 = *(a1 + 216) + 32;
    goto LABEL_3;
  }

LABEL_13:
  if (*(v6 + 308) == 1 && v7 < *(v6 + 296))
  {
    *(a1 + 48) = v9;
  }

  if (v9 == *(a1 + 32))
  {
    *(a1 + 216) += 32;
    if ((*(a1 + 97) & 0x20) != 0 && v9 != *(a1 + 56))
    {
      *(a1 + 121) = 1;
    }

    if ((*(v6 + 280) & 2) == 0)
    {
      return 1;
    }
  }

  else if (v7 == *(v6 + 296))
  {
    *(a1 + 216) += 32;
    if ((*(v6 + *v9 + 24) & 2) == 0)
    {
      return 1;
    }
  }

  else
  {
    v3[1] = v7;
    v3[3] = v9;
  }

  result = 0;
  *(a1 + 88) = *(v6 + 16);
  return result;
}

uint64_t sub_10014BD94(uint64_t a1, int a2)
{
  v3 = *(a1 + 216);
  if (a2)
  {
    v4 = (v3 + 4);
LABEL_3:
    *(a1 + 216) = v4;
    return 1;
  }

  v7 = v3[1];
  v6 = v3[2];
  v8 = *(v6 + 8);
  *(a1 + 88) = v8;
  v9 = v3[3];
  *(a1 + 40) = v9;
  v10 = *(a1 + 32);
  if (v10 != v9)
  {
    v11 = v7 + 1;
    while (1)
    {
      v7 = v11;
      v12 = sub_100149034(v9, v10, v8, **(a1 + 72), *(a1 + 120));
      v13 = *(a1 + 40);
      if (v13 == v12)
      {
        break;
      }

      v9 = v13 + 1;
      *(a1 + 40) = v13 + 1;
      ++*(a1 + 104);
      *(a1 + 88) = *(v6 + 8);
      if (v7 < *(v6 + 296))
      {
        v10 = *(a1 + 32);
        if (v9 != v10)
        {
          v11 = v7 + 1;
          if ((*(v6 + 24 + *v9) & 2) == 0)
          {
            continue;
          }
        }
      }

      goto LABEL_11;
    }

    v4 = *(a1 + 216) + 32;
    goto LABEL_3;
  }

LABEL_11:
  if (*(v6 + 308) == 1 && v7 < *(v6 + 296))
  {
    *(a1 + 48) = v9;
  }

  if (v9 == *(a1 + 32))
  {
    *(a1 + 216) += 32;
    if ((*(a1 + 97) & 0x20) != 0 && v9 != *(a1 + 56))
    {
      *(a1 + 121) = 1;
    }

    if ((*(v6 + 280) & 2) == 0)
    {
      return 1;
    }
  }

  else if (v7 == *(v6 + 296))
  {
    *(a1 + 216) += 32;
    if ((*(v6 + *v9 + 24) & 2) == 0)
    {
      return 1;
    }
  }

  else
  {
    v3[1] = v7;
    v3[3] = v9;
  }

  result = 0;
  *(a1 + 88) = *(v6 + 16);
  return result;
}

uint64_t sub_10014BF14(void *a1, uint64_t a2)
{
  v2 = a1[27];
  if ((a2 & 1) == 0)
  {
    a1[5] = *(v2 + 16);
    a1[11] = *(v2 + 8);
    ++*(a1[16] + 24);
  }

  a1[27] = v2 + 24;
  return a2;
}

uint64_t sub_10014BF4C(uint64_t *a1, char a2)
{
  v3 = a1[27];
  if ((a2 & 1) == 0)
  {
    v9 = 0;
    v10 = 0;
    v8 = 0u;
    v6 = 0u;
    memset(v7, 0, sizeof(v7));
    BYTE12(v8) = 1;
    sub_100149DB4(a1 + 23, &v6);
    sub_10014C2F8(v7);
    v4 = a1[24];
    *(v4 - 112) = *(v3 + 8);
    *(v4 - 104) = *(v3 + 16);
    sub_1001489D4(v4 - 96, v3 + 104);
    *(a1[24] - 8) = a1[5];
    sub_1001489D4(a1[2], v3 + 24);
  }

  sub_10014C2F8(v3 + 104);
  sub_10014C2F8(v3 + 24);
  a1[27] = v3 + 184;
  return 1;
}

uint64_t sub_10014C020(uint64_t *a1, char a2)
{
  v3 = a1[27];
  if ((a2 & 1) == 0)
  {
    v4 = a1[24];
    if (a1[23] != v4)
    {
      sub_1001489D4(a1[2], v4 - 96);
      v5 = a1[24];
      v6 = v5 - 112;
      a1[5] = *(v5 - 8);
      sub_10014C2F8(v5 - 96);
      a1[24] = v6;
    }
  }

  a1[27] = v3 + 8;
  return 1;
}

uint64_t sub_10014C090(uint64_t a1, char a2)
{
  *(a1 + 216) += 8;
  while (1)
  {
    *(a1 + 228) = a2;
    *(a1 + 229) = 0;
      ;
    }

    if (!*(a1 + 88))
    {
      break;
    }

    if (*(a1 + 229) == 1)
    {
      *(a1 + 229) = 0;
      v5 = (*(a1 + 216) - 8);
      if (v5 < *(a1 + 208))
      {
        sub_1001488AC(a1, v4);
        v5 = (*(a1 + 216) - 8);
      }

      *v5 = 16;
      *(a1 + 216) = v5;
      break;
    }
  }

  *(a1 + 123) = 0;
  return 0;
}

uint64_t sub_10014C148(uint64_t a1, char a2)
{
  *(a1 + 216) += 8;
  *(a1 + 228) = a2;
  *(a1 + 229) = 0;
    ;
  }

  while (*(a1 + 88))
  {
    v4 = *(a1 + 230);
    *(a1 + 228) = a2;
    *(a1 + 229) = 0;
    if (v4)
    {
        ;
      }

      return 0;
    }

      ;
    }
  }

  return 0;
}

uint64_t sub_10014C21C(uint64_t a1)
{
  v1 = *(a1 + 216);
  *(a1 + 120) = *(v1 + 8);
  *(a1 + 216) = v1 + 16;
  return 1;
}

void ***sub_10014C238(void ***a1, uint64_t a2)
{
  v3 = **a1;
  v4 = sub_100148954(a1, a2);
  v5 = 0;
  while (1)
  {
    v6 = atomic_load(&v4[v5]);
    if (!v6)
    {
      atomic_compare_exchange_strong(&v4[v5], &v6, v3);
      if (!v6)
      {
        break;
      }
    }

    v5 += 8;
    if (v5 == 128)
    {
      operator delete(v3);
      break;
    }
  }

  **a1 = 0;
  return a1;
}

uint64_t sub_10014C2A0(uint64_t a1)
{
  v4 = (a1 + 184);
  sub_100145A70(&v4);
  v2 = *(a1 + 144);
  if (v2)
  {
    **(a1 + 136) = v2;
  }

  sub_100145248((a1 + 8), 0);
  return a1;
}

uint64_t sub_10014C2F8(uint64_t a1)
{
  v2 = *(a1 + 64);
  if (v2)
  {
    sub_100008350(v2);
  }

  v3 = *a1;
  if (*a1)
  {
    *(a1 + 8) = v3;
    operator delete(v3);
  }

  return a1;
}

uint64_t sub_10014C338(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  if (*a3 && (*(*a3 + 42) & 8) != 0)
  {
    return 0;
  }

  v13 = 0;
  memset(v12, 0, sizeof(v12));
  v14 = 0;
  v15 = 0;
  v16 = 0;
  v17 = 1;
  sub_10014C444(&v7, a1, a2, v12, a3, a4 | 0x400u, a1);
  v4 = sub_10014C6BC(&v7);
  v18 = &v11;
  sub_100145A70(&v18);
  if (v10)
  {
    *v9 = v10;
  }

  v5 = v8;
  v8 = 0;
  if (v5)
  {
    sub_10014C2F8(v5);
    operator delete();
  }

  sub_10014C2F8(v12);
  return v4;
}

void sub_10014C420(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_10014C2A0(&a9);
  sub_10014C2F8(v9 - 128);
  _Unwind_Resume(a1);
}

uint64_t sub_10014C444(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *a1 = a4;
  *(a1 + 8) = 0;
  *(a1 + 24) = a2;
  *(a1 + 32) = a3;
  *(a1 + 40) = a2;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = a7;
  *(a1 + 72) = a5;
  *(a1 + 80) = *(*a5 + 24);
  *(a1 + 123) = 0;
  *(a1 + 128) = a1 + 136;
  *(a1 + 136) = a1 + 128;
  *(a1 + 144) = 0;
  *(a1 + 152) = -1;
  *(a1 + 160) = 0;
  *(a1 + 168) = 0;
  *(a1 + 184) = 0;
  *(a1 + 192) = 0;
  *(a1 + 200) = 0;
  *(a1 + 232) = 0;
  sub_10014C514(a1, a5, a6);
  return a1;
}

void sub_10014C4DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10)
{
  v14 = v12;
  a10 = v14;
  sub_100145A70(&a10);
  v16 = *(v11 + 144);
  if (v16)
  {
    **v13 = v16;
  }

  sub_100145248(v10, 0);
  _Unwind_Resume(a1);
}

uint64_t sub_10014C514(uint64_t a1, uint64_t a2, int a3)
{
  if (!*a2 || *(*a2 + 44))
  {
    std::logic_error::logic_error(&v14, "Invalid regular expression object");
    sub_10014513C(&v14);
  }

  v3 = a3;
  *(a1 + 88) = 0;
  *(a1 + 96) = a3;
  result = sub_100145198(a1);
  v7 = **(a1 + 72);
  if (v7)
  {
    v8 = *(v7 + 40);
  }

  else
  {
    v8 = 0;
  }

  *(a1 + 120) = (v8 & 0x100000) != 0;
  v9 = *(a1 + 96);
  if ((v9 & 0x30000) == 0)
  {
    if ((v8 & 3) == 2 || (v8 & 0x1003) == 4097 || (v8 & 0x203) == 0)
    {
      v12 = 0x10000;
    }

    else
    {
      v12 = 0x20000;
    }

    v9 |= v12;
    *(a1 + 96) = v9;
  }

  if ((v9 & 0x20000) != 0)
  {
    operator new();
  }

  *(a1 + 16) = *a1;
  *(a1 + 208) = 0;
  *(a1 + 216) = 0;
  *(a1 + 176) = *(v7 + 368);
  if ((v3 & 0x40) != 0)
  {
    v13 = 2;
  }

  else
  {
    v13 = 3;
  }

  *(a1 + 180) = v13;
  if (*(*a2 + 401) == 1)
  {
    *(a1 + 96) &= 0x3FFFFBFFu;
  }

  return result;
}

uint64_t sub_10014C6BC(void *a1)
{
  sub_100146134(&v23, a1 + 26, a1 + 27);
  *(a1 + 56) = 1024;
  a1[13] = 0;
  v2 = *(a1 + 24);
  if ((v2 & 0x200) == 0)
  {
    v3 = a1[2];
    v4 = a1[3];
    a1[5] = v4;
    a1[7] = v4;
    v5 = *a1[9];
    a1[11] = *(v5 + 72);
    if ((v2 & 0x40000) != 0)
    {
      v6 = 1;
    }

    else
    {
      v6 = *(v5 + 64);
    }

    sub_10014CD00(v3, v6, v4, a1[4]);
    *(a1[2] + 24) = a1[3];
    v13 = a1[2];
    v14 = a1[9];
    v15 = *v14;
    v16 = v14[1];
    if (v16)
    {
      atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
      atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v17 = *(v13 + 64);
    *(v13 + 56) = v15;
    *(v13 + 64) = v16;
    if (v17)
    {
      sub_100008350(v17);
    }

    if (v16)
    {
      sub_100008350(v16);
    }

    v12 = *(a1 + 24) | 0x200;
    *(a1 + 24) = v12;
    if ((v12 & 0x20000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_22;
  }

  v7 = sub_10014CE48(*a1, 0)[1];
  a1[5] = v7;
  a1[7] = v7;
  if ((*(a1 + 97) & 8) == 0 && !sub_10014CEC4(*a1, 0))
  {
    v9 = a1[5];
    if (v9 == a1[4])
    {
      v21 = 0;
      goto LABEL_31;
    }

    a1[5] = v9 + 1;
  }

  if ((*(a1 + 98) & 4) != 0 || (v10 = *a1[9]) == 0)
  {
    v11 = 1;
  }

  else
  {
    v11 = *(v10 + 64);
  }

  sub_10014CD00(a1[2], v11, a1[7], a1[4]);
  v12 = *(a1 + 24);
  if ((v12 & 0x20000) != 0)
  {
LABEL_22:
    v18 = *a1[9];
    if (v18)
    {
      v19 = *(v18 + 64);
    }

    else
    {
      v19 = 1;
    }

    sub_10014CD00(*a1, v19, a1[3], a1[4]);
    *(*a1 + 24) = a1[3];
    v12 = *(a1 + 24);
  }

LABEL_26:
  if ((~v12 & 0xA0000) == 0)
  {
    std::logic_error::logic_error(&v24, "Usage Error: Can't mix regular expression captures with POSIX matching rules");
    sub_10014AAA0(&v24);
  }

  if ((v12 & 0x1000) != 0)
  {
    v20 = 4;
  }

  else
  {
    v20 = *(*a1[9] + 80);
  }

  v21 = (off_1002B4708[2 * v20])(a1);
LABEL_31:
  sub_10014C238(&v23, v8);
  return v21;
}

void sub_10014C928(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  __cxa_end_catch();
  sub_10014C238(va, v4);
  _Unwind_Resume(a1);
}

uint64_t sub_10014C948(uint64_t a1)
{
  v2 = **(a1 + 72) + 84;
  v3 = *(a1 + 32);
  for (i = *(a1 + 40); ; *(a1 + 40) = i)
  {
    if (i != v3)
    {
      while ((*(v2 + *i) & 3) == 0)
      {
        *(a1 + 40) = ++i;
        if (i == v3)
        {
          goto LABEL_10;
        }
      }
    }

    if (i == v3)
    {
      break;
    }

    result = sub_10014CC10(a1);
    if (result)
    {
      return result;
    }

    v3 = *(a1 + 32);
    v6 = *(a1 + 40);
    if (v6 == v3)
    {
      return result;
    }

    i = v6 + 1;
  }

LABEL_10:
  if (!*(**(a1 + 72) + 340))
  {
    return 0;
  }

  return sub_10014CC10(a1);
}

uint64_t sub_10014CA04(uint64_t a1)
{
  v2 = **(a1 + 72);
  if (*(a1 + 97))
  {
    v3 = *(a1 + 40);
    goto LABEL_6;
  }

  v3 = *(a1 + 40);
  if (v3 != *(a1 + 24))
  {
LABEL_6:
    v5 = (v3 - 1);
    *(a1 + 40) = v5;
    goto LABEL_7;
  }

  if (sub_10014CC10(a1))
  {
    return 1;
  }

  v5 = *(a1 + 40);
LABEL_7:
  v6 = v2 + 84;
  v7 = *(a1 + 32);
  do
  {
    while (v5 != v7)
    {
      v8 = sub_100146404(*(a1 + 80), *v5, *(a1 + 176));
      v7 = *(a1 + 32);
      v5 = *(a1 + 40);
      if (!v8)
      {
        break;
      }

      *(a1 + 40) = ++v5;
    }

    while (v5 != v7)
    {
      v9 = sub_100146404(*(a1 + 80), *v5, *(a1 + 176));
      v7 = *(a1 + 32);
      v5 = *(a1 + 40);
      if (v9)
      {
        break;
      }

      *(a1 + 40) = ++v5;
    }

    if (v5 == v7)
    {
      break;
    }

    if ((*(v6 + *v5) & 3) != 0)
    {
      if (sub_10014CC10(a1))
      {
        return 1;
      }

      v7 = *(a1 + 32);
      v5 = *(a1 + 40);
    }
  }

  while (v5 != v7);
  return 0;
}

BOOL sub_10014CAFC(uint64_t a1)
{
  v2 = **(a1 + 72);
  v3 = 1;
  if ((sub_10014CC10(a1) & 1) == 0)
  {
    v4 = v2 + 84;
    v6 = *(a1 + 32);
    v5 = *(a1 + 40);
    do
    {
      if (v5 == v6)
      {
        break;
      }

      do
      {
        v7 = *v5;
        if (v7 <= 0xD && ((1 << v7) & 0x3400) != 0)
        {
          break;
        }

        if (v7 == 133)
        {
          break;
        }

        *(a1 + 40) = ++v5;
      }

      while (v5 != v6);
      if (v5 == v6)
      {
        break;
      }

      *(a1 + 40) = ++v5;
      if (v5 == v6)
      {
        return *(**(a1 + 72) + 340) && (sub_10014CC10(a1) & 1) != 0;
      }

      if ((*(v4 + *v5) & 3) != 0)
      {
        if (sub_10014CC10(a1))
        {
          return 1;
        }

        v6 = *(a1 + 32);
        v5 = *(a1 + 40);
      }
    }

    while (v5 != v6);
    return 0;
  }

  return v3;
}

uint64_t sub_10014CBEC(uint64_t a1)
{
  if (*(a1 + 40) != *(a1 + 24) || (*(a1 + 96) & 4) != 0)
  {
    return 0;
  }

  else
  {
    return sub_10014CC10(a1);
  }
}

uint64_t sub_10014CC10(uint64_t a1)
{
  *(a1 + 121) = 0;
  *(a1 + 88) = *(**(a1 + 72) + 72);
  sub_1001464CC(*(a1 + 16), *(a1 + 40));
  *(a1 + 48) = *(a1 + 40);
  sub_10014CF4C(a1, v3, v2);
  if (*(a1 + 122))
  {
    return 1;
  }

  if (*(a1 + 121) != 1)
  {
    goto LABEL_5;
  }

  v5 = *(a1 + 96);
  if ((v5 & 0x2000) == 0)
  {
    goto LABEL_5;
  }

  result = 1;
  *(a1 + 122) = 1;
  v6 = *(a1 + 16);
  v7 = *(a1 + 32);
  *(*v6 + 56) = v7;
  v8 = *v6;
  *(v8 + 64) = 0;
  *v8 = v7;
  *(*v6 + 16) = **v6 != *(*v6 + 8);
  v6[4] = v7;
  v6[5] = v7;
  *(v6 + 48) = 0;
  *(v6 + 76) = 0;
  *(a1 + 40) = *(a1 + 32);
  if ((v5 & 0x20000) != 0)
  {
    sub_10014D104(*a1, *(a1 + 16));
    if (*(a1 + 122))
    {
      return 1;
    }

LABEL_5:
    result = 0;
    *(a1 + 40) = *(a1 + 48);
  }

  return result;
}

uint64_t *sub_10014CD00(uint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v14[0] = a4;
  v14[1] = a4;
  v15 = 0;
  v6 = *result;
  v7 = result[1];
  v8 = v7 - *result;
  v9 = 0xAAAAAAAAAAAAAAABLL * (v8 >> 3);
  v10 = a2 + 2;
  if (a2 + 2 >= v9)
  {
    if (v8 >= 1)
    {
      v13 = v8 / 0x18uLL + 1;
      do
      {
        *v6 = a4;
        *(v6 + 8) = a4;
        *(v6 + 16) = 0;
        v6 += 24;
        --v13;
      }

      while (v13 > 1);
    }

    if (v10 != v9)
    {
      result = sub_10014FFE4(result, result[1], v10 - v9, v14);
    }
  }

  else
  {
    v11 = 24 * a2 + 48;
    if (v11 + v6 != v7)
    {
      result[1] = v6 + v11;
      v8 = 24 * a2 + 48;
    }

    if (v8 >= 1)
    {
      v12 = v8 / 0x18uLL + 1;
      do
      {
        *v6 = a4;
        *(v6 + 8) = a4;
        *(v6 + 16) = 0;
        v6 += 24;
        --v12;
      }

      while (v12 > 1);
    }
  }

  *(*v5 + 24) = a3;
  *(v5 + 18) = 0;
  return result;
}

uint64_t *sub_10014CE48(uint64_t *a1, int a2)
{
  v2 = *a1;
  if (*(a1 + 76) == 1 && v2 == a1[1])
  {
    sub_10014FFA0();
  }

  v3 = a2 + 2 >= (-1431655765 * ((a1[1] - v2) >> 3)) || a2 <= -3;
  v4 = v2 + 24 * (a2 + 2);
  if (v3)
  {
    return a1 + 4;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_10014CEC4(uint64_t a1, int a2)
{
  if (*(a1 + 76) == 1)
  {
    sub_10014FFA0();
  }

  result = 0;
  if (a2 >= -1 && a2 + 2 < (-1431655765 * ((*(a1 + 8) - *a1) >> 3)))
  {
    v4 = *a1 + 24 * (a2 + 2);
    if (*(v4 + 16) == 1)
    {
      return *(v4 + 8) - *v4;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_10014CF4C(uint64_t a1, __n128 a2, uint64_t a3)
{
  v4 = *(a1 + 232) + 1;
  *(a1 + 232) = v4;
  if (v4 >= 0x51)
  {
    sub_1001487CC(*(a1 + 80), 18);
  }

  v5 = (*(a1 + 216) - 8);
  if (v5 < *(a1 + 208))
  {
    a2 = sub_1001488AC(a1, a3);
    v5 = (*(a1 + 216) - 8);
  }

  *v5 = 2;
  *(a1 + 216) = v5;
  v6 = *(a1 + 88);
  do
  {
    while (v6)
    {
      v7 = off_1002B4778[2 * *v6];
      ++*(a1 + 104);
      if ((v7)(a1, a2))
      {
        v6 = *(a1 + 88);
      }

      else
      {
        if (*(a1 + 104) > *(a1 + 112))
        {
          sub_1001487CC(*(a1 + 80), 18);
        }

        if ((*(a1 + 97) & 0x20) != 0)
        {
          v8 = *(a1 + 40);
          if (v8 == *(a1 + 32) && v8 != *(a1 + 56))
          {
            *(a1 + 121) = 1;
          }
        }

        *(a1 + 228) = 0;
        *(a1 + 230) = 0;
          ;
        }

        if ((*(a1 + 97) & 0x20) != 0)
        {
          v9 = *(a1 + 40);
          if (v9 == *(a1 + 32) && v9 != *(a1 + 56))
          {
            *(a1 + 121) = 1;
          }
        }

        v6 = *(a1 + 88);
        if (!v6)
        {
          goto LABEL_26;
        }
      }
    }

    *(a1 + 228) = 1;
    *(a1 + 230) = 0;
      ;
    }

    v6 = *(a1 + 88);
  }

  while (v6);
LABEL_26:
  result = *(a1 + 228);
  --*(a1 + 232);
  return result;
}

uint64_t sub_10014D104(uint64_t a1, void *a2)
{
  if (*(a1 + 76))
  {
    goto LABEL_2;
  }

  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 3) >= 3)
  {
    v5 = (*a1 + 48);
  }

  else
  {
    v5 = *(a1 + 8);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 3) >= 3)
  {
    v6 = *a2 + 48;
  }

  else
  {
    v6 = a2[1];
  }

  v7 = sub_10014CE48(a1, -2)[1];
  if (*v5 == v7)
  {
    if (*(a1 + 76) == 1)
    {
      sub_10014FFA0();
    }

    v8 = -1;
  }

  else
  {
    v8 = 0;
  }

  result = sub_10014CE48(a1, v8);
  v9 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 3);
  if (v9 >= 2)
  {
    v10 = v9 - 2;
  }

  else
  {
    v10 = 0;
  }

  if (v9 >= 3)
  {
    v11 = 0;
    v12 = 0;
    v13 = 0;
    v14 = 0;
    v15 = 0;
    v16 = *result;
    v17 = v5 + 2;
    v18 = (v6 + 16);
    do
    {
      result = *(v17 - 2);
      v19 = *(v18 - 2);
      if (result == v7)
      {
        if (v19 != v7)
        {
          goto LABEL_2;
        }

        result = *v17;
        v20 = *v18;
        if (result)
        {
          goto LABEL_31;
        }
      }

      else
      {
        if (v19 == v7)
        {
          return result;
        }

        v13 = result - v16;
        v14 = v19 - v16;
        if (result - v16 < v19 - v16)
        {
          return result;
        }

        if (v14 < v13 || (v11 = *(v17 - 1) - result, v12 = *(v18 - 1) - v19, v11 != v12))
        {
LABEL_37:
          if (v10 == v15 || v14 >= v13 && v12 <= v11 && ((*v17 & 1) != 0 || *v18 != 1))
          {
            return result;
          }

LABEL_2:

          return sub_1001489D4(a1, a2);
        }

        v20 = *v18;
        if (*v17)
        {
          v12 = *(v17 - 1) - result;
LABEL_31:
          if (!v20)
          {
            return result;
          }

          goto LABEL_35;
        }

        v12 = *(v17 - 1) - result;
      }

      if (v20)
      {
        goto LABEL_37;
      }

LABEL_35:
      ++v15;
      v17 += 24;
      v18 += 24;
    }

    while (v15 < v10);
  }

  return result;
}

uint64_t sub_10014D2F4(uint64_t a1, __n128 a2, uint64_t a3)
{
  v4 = *(a1 + 88);
  v5 = *(v4 + 16);
  *(a1 + 120) = *(v4 + 20);
  if (v5 > -3)
  {
    if (v5 >= 0xFFFFFFFE)
    {
      v9 = *(*(*(v4 + 8) + 16) + 8);
      *(a1 + 88) = *(*(v4 + 8) + 8);
      v10 = *(a1 + 216) - 32;
      if (v10 < *(a1 + 208))
      {
        sub_1001488AC(a1, a3);
        v10 = *(a1 + 216) - 32;
      }

      v11 = *(a1 + 40);
      *v10 = 3;
      *(v10 + 8) = v9;
      *(v10 + 16) = v11;
      *(v10 + 24) = v5 == -1;
      *(a1 + 216) = v10;
      return 1;
    }

    if (!v5)
    {
      goto LABEL_18;
    }

    goto LABEL_13;
  }

  if (v5 != -5)
  {
    if (v5 == -4)
    {
      v21 = *(v4 + 8);
      v22 = *(v21 + 8);
      *(a1 + 88) = v22;
      if (*v22 != 27)
      {
        v23 = *(v22 + 16);
        v24 = *(a1 + 40);
        v25 = *(*(*(v22 + 8) + 16) + 8);
        *(a1 + 88) = *(*(v22 + 8) + 8);
        v26 = sub_10014CF4C(a1, a2, a3);
        *(a1 + 40) = v24;
        if ((((v23 == -2) ^ v26) & 1) == 0)
        {
          v25 = *(v21 + 16);
        }

        *(a1 + 88) = v25;
        return 1;
      }

      if (sub_10014ED10(a1))
      {
        return 1;
      }

      v15 = *(v21 + 16);
LABEL_19:
      *(a1 + 88) = v15;
      return 1;
    }

    if (v5 == -3)
    {
      v6 = *(a1 + 123);
      *(a1 + 123) = 1;
      v7 = *(*(*(v4 + 8) + 16) + 8);
      *(a1 + 88) = *(*(v4 + 8) + 8);
      result = sub_10014CF4C(a1, a2, a3);
      if (result & 1) != 0 || (*(a1 + 123))
      {
        *(a1 + 88) = v7;
        *(a1 + 123) = v6;
      }

      else if (**(a1 + 216))
      {
        do
        {
          *(a1 + 228) = 0;
          *(a1 + 230) = 0;
            ;
          }

          result = 0;
        }

        while (**(a1 + 216));
      }

      else
      {
        return 0;
      }

      return result;
    }

LABEL_13:
    if ((*(a1 + 98) & 4) == 0)
    {
      v13 = sub_10014CE48(*(a1 + 16), v5);
      v14 = *(a1 + 216) - 40;
      if (v14 < *(a1 + 208))
      {
        sub_1001488AC(a1, v12);
        v14 = *(a1 + 216) - 40;
      }

      *v14 = 1;
      *(v14 + 8) = v5;
      *(v14 + 16) = *v13;
      *(v14 + 32) = *(v13 + 16);
      *(a1 + 216) = v14;
      *(**(a1 + 16) + 24 * v5 + 48) = *(a1 + 40);
    }

    v4 = *(a1 + 88);
LABEL_18:
    v15 = *(v4 + 8);
    goto LABEL_19;
  }

  v17 = sub_10014CE48(*(a1 + 16), 0);
  v18 = *(a1 + 216) - 40;
  if (v18 < *(a1 + 208))
  {
    sub_1001488AC(a1, v16);
    v18 = *(a1 + 216) - 40;
  }

  result = 1;
  *v18 = 1;
  *(v18 + 8) = 0;
  *(v18 + 16) = *v17;
  *(v18 + 32) = *(v17 + 16);
  *(a1 + 216) = v18;
  v19 = *(a1 + 16);
  v20 = *(a1 + 40);
  *(*v19 + 48) = v20;
  *(*v19 + 32) = v20;
  *(*v19 + 40) = *(*v19 + 24) != *(*v19 + 32);
  *(a1 + 88) = *(*(a1 + 88) + 8);
  return result;
}

void sub_10014D5C8(void *a1)
{
  __cxa_begin_catch(a1);
  *(v1 + 88) = v2;
  while (1)
  {
    *(v1 + 228) = 1;
    *(v1 + 230) = 0;
      ;
    }

    if (!*(v1 + 88))
    {
      __cxa_rethrow();
    }
  }
}

uint64_t sub_10014D694(__n128 *a1)
{
  v2 = a1[5].n128_u64[1];
  v3 = *(v2 + 16);
  a1[7].n128_u8[8] = *(v2 + 20);
  if (v3 >= 1)
  {
    if ((a1[6].n128_u8[2] & 4) == 0)
    {
      sub_100146710(a1[1].n128_u64[0], a1[2].n128_i64[1], v3, 1, 0);
    }

    v4 = a1[12].n128_u64[0];
    if (a1[11].n128_u64[1] != v4 && v3 == *(v4 - 112))
    {
      a1[5].n128_u64[1] = *(v4 - 104);
      sub_1001489D4(a1[1].n128_i64[0], v4 - 96);
      v6 = a1[12].n128_u64[0];
      v7 = *(v6 - 112);
      v8 = *(v6 - 104);
      v9 = a1[1].n128_i64[0];
      v10 = v6 - 96;
      v11 = a1[13].n128_u64[1] - 184;
      if (v11 < a1[13].n128_u64[0])
      {
        sub_1001488AC(a1, v5);
        v11 = a1[13].n128_u64[1] - 184;
      }

      a1[13].n128_u64[1] = sub_10014F1A8(v11, v7, v8, v9, v10);
      v12 = a1[12].n128_u64[0];
      sub_10014C2F8(v12 - 96);
      v14 = v12 - 112;
      a1[12].n128_u64[0] = v12 - 112;
      v15 = -2 - v3;
      v16 = (a1[13].n128_u64[1] - 48);
      if (v16 < a1[13].n128_u64[0])
      {
        sub_1001488AC(a1, v13);
        v16 = (a1[13].n128_u64[1] - 48);
        v14 = a1[12].n128_u64[0];
      }

      v17 = a1[2].n128_i64[1];
      if (a1[11].n128_u64[1] == v14)
      {
        v18 = -2147483645;
      }

      else
      {
        v18 = *(v14 - 112);
      }

      *v16 = 5;
      sub_100148E58((v16 + 2), v15, a1[8].n128_u64, v17, v18);
      a1[13].n128_u64[1] = v16;
    }

    goto LABEL_19;
  }

  if (v3)
  {
    v19 = v3 == -4;
  }

  else
  {
    v19 = 1;
  }

  if (v19)
  {
LABEL_19:
    v20 = *(a1[5].n128_u64[1] + 8);
    goto LABEL_20;
  }

  v20 = 0;
LABEL_20:
  a1[5].n128_u64[1] = v20;
  return 1;
}

BOOL sub_10014D810(uint64_t a1)
{
  v2 = *(a1 + 88);
  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = *(a1 + 40);
    if (v4 == *(a1 + 32))
    {
      return 0;
    }

    else
    {
      v5 = 0;
      v6 = (v2 + 24);
      v7 = 1;
      do
      {
        v8 = *v4;
        if (*(a1 + 120) == 1)
        {
          v9 = *(**(a1 + 80) + 8);
          LOBYTE(v8) = (*(*v9 + 40))(v9, v8);
        }

        if (*v6 != v8)
        {
          break;
        }

        v4 = (*(a1 + 40) + 1);
        *(a1 + 40) = v4;
        if (v3 == v7)
        {
          v2 = *(a1 + 88);
          goto LABEL_12;
        }

        v5 = v7++ >= v3;
        ++v6;
      }

      while (v4 != *(a1 + 32));
    }
  }

  else
  {
LABEL_12:
    *(a1 + 88) = *(v2 + 8);
    return 1;
  }

  return v5;
}

uint64_t sub_10014D904(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(a1 + 96);
  if (v1 == *(a1 + 64))
  {
    if ((v2 & 0x100) == 0)
    {
      if (v2)
      {
        return 0;
      }

      goto LABEL_25;
    }
  }

  else if ((v2 & 0x100000) != 0)
  {
    return 0;
  }

  v3 = *(v1 - 1);
  if (*(a1 + 32) == v1)
  {
    v6 = v3 > 0xD || ((1 << v3) & 0x3400) == 0;
    if (v6 && v3 != 133)
    {
      return 0;
    }

    goto LABEL_25;
  }

  v4 = 0;
  if (*(v1 - 1) > 0xCu)
  {
    if (v3 != 133)
    {
      if (v3 != 13)
      {
        return v4;
      }

      if (*v1 == 10)
      {
        return 0;
      }
    }

LABEL_25:
    *(a1 + 88) = *(*(a1 + 88) + 8);
    return 1;
  }

  if (v3 == 10 || v3 == 12)
  {
    goto LABEL_25;
  }

  return v4;
}

uint64_t sub_10014D9BC(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(a1 + 96);
  if (v1 != *(a1 + 32))
  {
    if ((v2 & 0x100000) == 0)
    {
      v3 = *v1;
      v4 = v3 > 0xD || ((1 << v3) & 0x3400) == 0;
      if (!v4 || v3 == 133)
      {
        if ((v2 & 0x100) == 0 && v1 == *(a1 + 64))
        {
          goto LABEL_18;
        }

        if (*(v1 - 1) != 13 || v3 != 10)
        {
          goto LABEL_18;
        }
      }
    }

    return 0;
  }

  if ((v2 & 2) != 0)
  {
    return 0;
  }

LABEL_18:
  *(a1 + 88) = *(*(a1 + 88) + 8);
  return 1;
}

uint64_t sub_10014DA38(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1 == *(a1 + 32))
  {
    return 0;
  }

  v2 = *v1;
  if (v2 <= 0xB)
  {
    if (!*v1)
    {
      if ((*(a1 + 96) & 0x80) == 0)
      {
        goto LABEL_9;
      }

      return 0;
    }

    if (v2 != 10)
    {
LABEL_9:
      *(a1 + 88) = *(*(a1 + 88) + 8);
      *(a1 + 40) = v1 + 1;
      return 1;
    }
  }

  else if (v2 - 12 >= 2 && v2 != 133)
  {
    goto LABEL_9;
  }

  if ((*(*(a1 + 88) + 16) & *(a1 + 180)) != 0)
  {
    goto LABEL_9;
  }

  return 0;
}

BOOL sub_10014DAB4(__n128 *a1, __n128 a2, uint64_t a3)
{
  v4 = a1[12].n128_u64[0];
  if (a1[11].n128_u64[1] != v4)
  {
    v5 = *(v4 - 104);
    a1[5].n128_u64[1] = v5;
    v6 = *(v4 - 112);
    v7 = a1[1].n128_i64[0];
    v8 = v4 - 96;
    v9 = a1[13].n128_u64[0];
    v10 = a1[13].n128_u64[1] - 184;
    if (v10 < v9)
    {
      sub_1001488AC(a1, a3);
      v10 = a1[13].n128_u64[1] - 184;
    }

    a1[13].n128_u64[1] = sub_10014F1A8(v10, v6, v5, v7, v8);
    sub_1001489D4(a1[1].n128_i64[0], a1[12].n128_u64[0] - 96);
    v11 = a1[12].n128_u64[0];
    sub_10014C2F8(v11 - 96);
    a1[12].n128_u64[0] = v11 - 112;
    return 1;
  }

  v13 = a1[6].n128_u32[0];
  if ((v13 & 0x800) != 0)
  {
    if (a1[2].n128_u64[1] == *sub_10014CE48(a1[1].n128_u64[0], 0))
    {
      return 0;
    }

    v13 = a1[6].n128_u32[0];
  }

  if ((v13 & 0x8000) != 0 && a1[2].n128_u64[1] != a1[2].n128_u64[0])
  {
    return 0;
  }

  if ((v13 & 0x4000) != 0)
  {
    v14 = a1[2].n128_u64[1];
    if (v14 == a1[3].n128_u64[1])
    {
      return 0;
    }
  }

  else
  {
    v14 = a1[2].n128_u64[1];
  }

  v15 = a1[1].n128_u64[0];
  *(*v15 + 56) = v14;
  v16 = *v15;
  *(v16 + 64) = 1;
  *v16 = v14;
  *(*v15 + 16) = **v15 != *(*v15 + 8);
  *(v15 + 32) = v14;
  *(v15 + 40) = v14;
  *(v15 + 48) = 0;
  *(v15 + 76) = 0;
  a1[5].n128_u64[1] = 0;
  a1[7].n128_u8[10] = 1;
  if ((v13 & 0x20000) == 0)
  {
    return 1;
  }

  sub_10014D104(a1->n128_u64[0], a1[1].n128_u64[0]);
  return (a1[6].n128_u8[1] & 4) != 0;
}

uint64_t sub_10014DC1C(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2 == *(a1 + 32))
  {
    v3 = 0;
    result = 0;
    if ((*(a1 + 96) & 0x20) != 0)
    {
      return result;
    }
  }

  else
  {
    v3 = sub_100146404(*(a1 + 80), *v2, *(a1 + 176));
    v2 = *(a1 + 40);
  }

  if (v2 != *(a1 + 64) || (*(a1 + 96) & 0x100) != 0)
  {
    *(a1 + 40) = v2 - 1;
    v5 = sub_100146404(*(a1 + 80), *(v2 - 1), *(a1 + 176));
    ++*(a1 + 40);
    if (v3 == v5)
    {
      return 0;
    }
  }

  else if ((((*(a1 + 96) & 0x10) == 0) & v3) == 0)
  {
    return 0;
  }

  *(a1 + 88) = *(*(a1 + 88) + 8);
  return 1;
}

uint64_t sub_10014DCDC(uint64_t a1)
{
  v2 = sub_10014DC1C(a1);
  if ((v2 & 1) == 0)
  {
    *(a1 + 88) = *(*(a1 + 88) + 8);
  }

  return v2 ^ 1u;
}

BOOL sub_10014DD14(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1 == *(a1 + 32))
  {
    return 0;
  }

  result = sub_100146404(*(a1 + 80), *v1, *(a1 + 176));
  if (!result)
  {
    return result;
  }

  v4 = *(a1 + 40);
  if (v4 != *(a1 + 64) || (v5 = *(a1 + 96), (v5 & 0x100) != 0))
  {
    if (sub_100146404(*(a1 + 80), *(v4 - 1), *(a1 + 176)))
    {
      return 0;
    }
  }

  else if ((v5 & 0x10) != 0)
  {
    return 0;
  }

  *(a1 + 88) = *(*(a1 + 88) + 8);
  return 1;
}

BOOL sub_10014DDA8(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2 == *(a1 + 64) && (*(a1 + 97) & 1) == 0)
  {
    return 0;
  }

  result = sub_100146404(*(a1 + 80), *(v2 - 1), *(a1 + 176));
  if (!result)
  {
    return result;
  }

  v4 = *(a1 + 40);
  if (v4 == *(a1 + 32))
  {
    if ((*(a1 + 96) & 0x20) != 0)
    {
      return 0;
    }
  }

  else if (sub_100146404(*(a1 + 80), *v4, *(a1 + 176)))
  {
    return 0;
  }

  *(a1 + 88) = *(*(a1 + 88) + 8);
  return 1;
}

uint64_t sub_10014DE34(uint64_t a1)
{
  if (*(a1 + 40) != *(a1 + 64) || (*(a1 + 96) & 4) != 0)
  {
    return 0;
  }

  *(a1 + 88) = *(*(a1 + 88) + 8);
  return 1;
}

uint64_t sub_10014DE68(uint64_t a1)
{
  if (*(a1 + 40) != *(a1 + 32) || (*(a1 + 96) & 8) != 0)
  {
    return 0;
  }

  *(a1 + 88) = *(*(a1 + 88) + 8);
  return 1;
}

uint64_t sub_10014DE98(uint64_t a1)
{
  v2 = *(*(a1 + 88) + 16);
  if (v2 >= 0x40000000)
  {
    v3 = **(a1 + 72);
    v17[0] = 0;
    v17[1] = v2;
    v4 = sub_100148F58(*v3, *(v3 + 8), v17);
    v6 = v5;
    v7 = v4 + 8;
    do
    {
      v2 = *(v7 - 8);
      if (v7 == v6)
      {
        break;
      }

      v8 = sub_10014CE48(*(a1 + 16), *(v7 - 8));
      v7 += 8;
    }

    while (!*(v8 + 16));
  }

  if ((*(a1 + 98) & 1) == 0 || *(sub_10014CE48(*(a1 + 16), v2) + 16) == 1)
  {
    v9 = *sub_10014CE48(*(a1 + 16), v2);
    v10 = sub_10014CE48(*(a1 + 16), v2)[1];
    if (v9 == v10)
    {
LABEL_16:
      *(a1 + 88) = *(*(a1 + 88) + 8);
      return 1;
    }

    v11 = *(a1 + 40);
    while (v11 != *(a1 + 32))
    {
      v12 = *v11;
      if (*(a1 + 120) == 1)
      {
        v13 = *(**(a1 + 80) + 8);
        LOBYTE(v12) = (*(*v13 + 40))(v13, v12);
        v14 = *v9;
        if (*(a1 + 120))
        {
          v15 = *(**(a1 + 80) + 8);
          LOBYTE(v14) = (*(*v15 + 40))(v15, v14);
        }
      }

      else
      {
        LOBYTE(v14) = *v9;
      }

      if (v12 != v14)
      {
        break;
      }

      ++v9;
      v11 = (*(a1 + 40) + 1);
      *(a1 + 40) = v11;
      if (v9 == v10)
      {
        goto LABEL_16;
      }
    }
  }

  return 0;
}

uint64_t sub_10014E04C(void *a1)
{
  v2 = a1[5];
  v3 = a1[4];
  if (v2 == v3)
  {
    return 0;
  }

  v4 = sub_10014F338(v2, v3, a1[11], *a1[9], *(a1 + 120));
  if (a1[5] == v4)
  {
    return 0;
  }

  a1[11] = *(a1[11] + 8);
  a1[5] = v4;
  return 1;
}

uint64_t sub_10014E0B8(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1 == *(a1 + 32))
  {
    return 0;
  }

  v3 = *(a1 + 88) + 16;
  v4 = *v1;
  if (*(a1 + 120) == 1)
  {
    v5 = *(**(a1 + 80) + 8);
    LOBYTE(v4) = (*(*v5 + 40))(v5, v4);
  }

  if (!*(v3 + v4))
  {
    return 0;
  }

  *(a1 + 88) = *(*(a1 + 88) + 8);
  ++*(a1 + 40);
  return 1;
}

uint64_t sub_10014E180(__n128 *a1, uint64_t a2)
{
  v3 = a1[5].n128_u64[1];
  v4 = a1[2].n128_u64[1];
  if (v4 == a1[2].n128_u64[0])
  {
    v5 = *(v3 + 280);
  }

  else
  {
    v5 = *(v3 + *v4 + 24);
  }

  v6 = (v5 >> 1) & 1;
  if (v5)
  {
    if (v6)
    {
      v8 = *(v3 + 16);
      v9 = a1[13].n128_u64[1] - 24;
      if (v9 < a1[13].n128_u64[0])
      {
        sub_1001488AC(a1, a2);
        v9 = a1[13].n128_u64[1] - 24;
        v4 = a1[2].n128_u64[1];
      }

      *v9 = 4;
      *(v9 + 8) = v8;
      *(v9 + 16) = v4;
      a1[13].n128_u64[1] = v9;
      v3 = a1[5].n128_u64[1];
    }

    v7 = (v3 + 8);
    goto LABEL_12;
  }

  if (v6)
  {
    v7 = (v3 + 16);
LABEL_12:
    a1[5].n128_u64[1] = *v7;
    return 1;
  }

  return 0;
}

uint64_t sub_10014E230(__n128 *a1, uint64_t a2)
{
  v3 = a1[5].n128_u64[1];
  v4 = a1[2].n128_u64[1];
  if (v4 == a1[2].n128_u64[0])
  {
    v6 = *(v3 + 280);
    v7 = (v6 >> 1) & 1;
  }

  else
  {
    v5 = *(v3 + *v4 + 24);
    LOBYTE(v6) = v5 & 1;
    v7 = (v5 >> 1) & 1;
  }

  v8 = a1[13].n128_u64[1];
  if (*v8 == 5)
  {
    v9 = v8[6];
    v10 = *(v3 + 304);
    if (v9 == v10)
    {
      v11 = a1[8].n128_u64[0];
      v10 = v8[6];
      if (*(v11 + 16) == v9)
      {
        goto LABEL_15;
      }
    }
  }

  else
  {
    v10 = *(v3 + 304);
  }

  v12 = v8 - 12;
  if ((v8 - 12) < a1[13].n128_u64[0])
  {
    sub_1001488AC(a1, a2);
    v12 = (a1[13].n128_u64[1] - 48);
    v4 = a1[2].n128_u64[1];
  }

  v13 = a1[12].n128_u64[0];
  if (a1[11].n128_u64[1] == v13)
  {
    v14 = -2147483645;
  }

  else
  {
    v14 = *(v13 - 112);
  }

  *v12 = 5;
  sub_100148E58((v12 + 2), v10, a1[8].n128_u64, v4, v14);
  a1[13].n128_u64[1] = v12;
  v11 = a1[8].n128_u64[0];
LABEL_15:
  v15 = *(v3 + 296);
  if (*(v11 + 24))
  {
    v16 = a1[2].n128_u64[1];
    if (v16 == *(v11 + 32))
    {
      *(v11 + 24) = v15;
      v17 = v15;
      goto LABEL_20;
    }
  }

  else
  {
    v16 = a1[2].n128_u64[1];
  }

  *(v11 + 32) = v16;
  v11 = a1[8].n128_u64[0];
  v17 = *(v11 + 24);
LABEL_20:
  if (v17 < *(v3 + 288))
  {
    if ((v6 & 1) == 0)
    {
      return 0;
    }

    goto LABEL_37;
  }

  if (*(v3 + 309) == 1 && ((a1[6].n128_u8[1] & 4) == 0 || a1[7].n128_u8[11] == 1))
  {
    if (((v17 < v15) & v6) == 1)
    {
      if (v7)
      {
        v18 = *(v3 + 16);
        v19 = a1[13].n128_u64[1] - 24;
        if (v19 < a1[13].n128_u64[0])
        {
          sub_1001488AC(a1, a2);
          v19 = a1[13].n128_u64[1] - 24;
        }

        v20 = a1[2].n128_u64[1];
        *v19 = 4;
        *(v19 + 8) = v18;
        *(v19 + 16) = v20;
        a1[13].n128_u64[1] = v19;
        v11 = a1[8].n128_u64[0];
        v17 = *(v11 + 24);
      }

      goto LABEL_37;
    }

    if (v7)
    {
LABEL_39:
      v25 = 16;
      goto LABEL_40;
    }
  }

  else
  {
    v21 = (v17 < v15) & v6;
    if (v7)
    {
      if (v21)
      {
        v22 = *(v3 + 8);
        v23 = a1[13].n128_u64[1] - 24;
        if (v23 < a1[13].n128_u64[0])
        {
          sub_1001488AC(a1, a2);
          v23 = a1[13].n128_u64[1] - 24;
        }

        v24 = a1[2].n128_u64[1];
        *v23 = 13;
        *(v23 + 8) = v22;
        *(v23 + 16) = v24;
        a1[13].n128_u64[1] = v23;
      }

      goto LABEL_39;
    }

    if (v21)
    {
LABEL_37:
      *(v11 + 24) = v17 + 1;
      v25 = 8;
LABEL_40:
      a1[5].n128_u64[1] = *(v3 + v25);
      return 1;
    }
  }

  return 0;
}

BOOL sub_10014E470(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  if (v1 != v2)
  {
    if (*(a1 + 120) == 1)
    {
      v4 = *(**(a1 + 80) + 8);
      (*(*v4 + 40))(v4, *v1);
      v6 = *(a1 + 32);
      v5 = *(a1 + 40);
    }

    else
    {
      v6 = *(a1 + 32);
      v5 = *(a1 + 40);
    }

    v7 = (v5 + 1);
    *(a1 + 40) = v7;
    if (v7 != v6 && *(a1 + 120) == 1)
    {
      v8 = *(**(a1 + 80) + 8);
      (*(*v8 + 40))(v8, *v7);
    }

    *(a1 + 88) = *(*(a1 + 88) + 8);
  }

  return v1 != v2;
}

uint64_t sub_10014E558(uint64_t a1)
{
  if ((*(a1 + 96) & 8) != 0)
  {
    return 0;
  }

  v2 = *(a1 + 40);
  if (*(a1 + 32) != v2)
  {
    while (1)
    {
      v3 = *v2;
      if (*(a1 + 120) == 1)
      {
        v4 = *(**(a1 + 80) + 8);
        LODWORD(v3) = (*(*v4 + 40))(v4, v3);
      }

      if (v3 > 0xD || ((1 << v3) & 0x3400) == 0)
      {
        break;
      }

      if (++v2 == *(a1 + 32))
      {
        goto LABEL_10;
      }
    }

    if (v2 != *(a1 + 32))
    {
      return 0;
    }
  }

LABEL_10:
  *(a1 + 88) = *(*(a1 + 88) + 8);
  return 1;
}

BOOL sub_10014E638(void *a1)
{
  v1 = a1[5];
  v2 = a1[7];
  if (v1 == v2)
  {
    a1[11] = *(a1[11] + 8);
  }

  return v1 == v2;
}

uint64_t sub_10014E664(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 88);
  if ((*(v3 + 309) & 1) == 0)
  {
    v6 = 0;
    v4 = (v3 + 296);
    v5 = (v3 + 288);
    goto LABEL_5;
  }

  if ((*(a1 + 97) & 4) != 0)
  {
    v4 = (v3 + 296);
    v5 = (v3 + 288);
    if (*(a1 + 123) == 1)
    {
      goto LABEL_7;
    }

    v6 = 0;
LABEL_5:
    v7 = v5;
    goto LABEL_8;
  }

  v4 = (v3 + 296);
  v5 = (v3 + 288);
LABEL_7:
  v6 = 1;
  v7 = v4;
LABEL_8:
  v8 = *v7;
  v9 = *(a1 + 40);
  if (v8 == -1)
  {
    v10 = *(a1 + 32);
  }

  else if (v8 >= *(a1 + 32) - v9)
  {
    v10 = *(a1 + 32);
  }

  else
  {
    v10 = &v9[v8];
  }

  if (v10 == v9)
  {
    v12 = *(a1 + 40);
  }

  else
  {
    v11 = *(*(v3 + 8) + 24);
    v12 = *(a1 + 40);
    do
    {
      a2 = *v12;
      if (*(a1 + 120) == 1)
      {
        v13 = *(**(a1 + 80) + 8);
        a2 = (*(*v13 + 40))(v13, a2);
        v12 = *(a1 + 40);
      }

      if (v11 != a2)
      {
        break;
      }

      *(a1 + 40) = ++v12;
    }

    while (v12 != v10);
  }

  v14 = (v12 - v9);
  v15 = *v5;
  if (v14 < *v5)
  {
    return 0;
  }

  if (v6)
  {
    if (*(v3 + 308) == 1 && v14 < *v4)
    {
      *(a1 + 48) = v12;
    }

    if (v14 != v15)
    {
      v17 = *(a1 + 216) - 32;
      if (v17 < *(a1 + 208))
      {
        sub_1001488AC(a1, a2);
        v17 = *(a1 + 216) - 32;
      }

      *v17 = 7;
      *(v17 + 8) = v14;
      *(v17 + 16) = v3;
      *(v17 + 24) = v12;
      *(a1 + 216) = v17;
    }

    *(a1 + 88) = *(v3 + 16);
    return 1;
  }

  else
  {
    if (v14 < *v4)
    {
      v18 = *(a1 + 216) - 32;
      if (v18 < *(a1 + 208))
      {
        sub_1001488AC(a1, a2);
        v18 = *(a1 + 216) - 32;
      }

      *v18 = 10;
      *(v18 + 8) = v14;
      *(v18 + 16) = v3;
      *(v18 + 24) = v12;
      *(a1 + 216) = v18;
      v12 = *(a1 + 40);
    }

    *(a1 + 88) = *(v3 + 16);
    if (v12 == *(a1 + 32))
    {
      v19 = *(v3 + 280);
    }

    else
    {
      v19 = *(v3 + *v12 + 24);
    }

    return (v19 >> 1) & 1;
  }
}

uint64_t sub_10014E898(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 88);
  if ((*(v3 + 309) & 1) == 0)
  {
    v6 = 0;
    v4 = (v3 + 296);
    v5 = (v3 + 288);
    goto LABEL_5;
  }

  if ((*(a1 + 97) & 4) != 0)
  {
    v4 = (v3 + 296);
    v5 = (v3 + 288);
    if (*(a1 + 123) == 1)
    {
      goto LABEL_7;
    }

    v6 = 0;
LABEL_5:
    v7 = v5;
    goto LABEL_8;
  }

  v4 = (v3 + 296);
  v5 = (v3 + 288);
LABEL_7:
  v6 = 1;
  v7 = v4;
LABEL_8:
  v8 = *v7;
  v9 = *(a1 + 40);
  if (v8 == -1)
  {
    v10 = *(a1 + 32);
  }

  else if (v8 >= *(a1 + 32) - v9)
  {
    v10 = *(a1 + 32);
  }

  else
  {
    v10 = &v9[v8];
  }

  if (v10 == v9)
  {
    v12 = *(a1 + 40);
  }

  else
  {
    v11 = *(v3 + 8) + 16;
    v12 = *(a1 + 40);
    do
    {
      a2 = *v12;
      if (*(a1 + 120) == 1)
      {
        v13 = *(**(a1 + 80) + 8);
        a2 = (*(*v13 + 40))(v13, a2);
        v12 = *(a1 + 40);
      }

      if (!*(v11 + a2))
      {
        break;
      }

      *(a1 + 40) = ++v12;
    }

    while (v12 != v10);
  }

  v14 = (v12 - v9);
  v15 = *v5;
  if (v14 < *v5)
  {
    return 0;
  }

  if (v6)
  {
    if (*(v3 + 308) == 1 && v14 < *v4)
    {
      *(a1 + 48) = v12;
    }

    if (v14 != v15)
    {
      v17 = *(a1 + 216) - 32;
      if (v17 < *(a1 + 208))
      {
        sub_1001488AC(a1, a2);
        v17 = *(a1 + 216) - 32;
      }

      *v17 = 7;
      *(v17 + 8) = v14;
      *(v17 + 16) = v3;
      *(v17 + 24) = v12;
      *(a1 + 216) = v17;
    }

    *(a1 + 88) = *(v3 + 16);
    return 1;
  }

  else
  {
    if (v14 < *v4)
    {
      v18 = *(a1 + 216) - 32;
      if (v18 < *(a1 + 208))
      {
        sub_1001488AC(a1, a2);
        v18 = *(a1 + 216) - 32;
      }

      *v18 = 11;
      *(v18 + 8) = v14;
      *(v18 + 16) = v3;
      *(v18 + 24) = v12;
      *(a1 + 216) = v18;
      v12 = *(a1 + 40);
    }

    *(a1 + 88) = *(v3 + 16);
    if (v12 == *(a1 + 32))
    {
      v19 = *(v3 + 280);
    }

    else
    {
      v19 = *(v3 + *v12 + 24);
    }

    return (v19 >> 1) & 1;
  }
}

uint64_t sub_10014EAD0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 88);
  if ((*(v3 + 309) & 1) == 0)
  {
    v6 = 0;
    v4 = (v3 + 296);
    v5 = (v3 + 288);
    goto LABEL_5;
  }

  if ((*(a1 + 97) & 4) != 0)
  {
    v4 = (v3 + 296);
    v5 = (v3 + 288);
    if (*(a1 + 123) == 1)
    {
      goto LABEL_7;
    }

    v6 = 0;
LABEL_5:
    v7 = v5;
    goto LABEL_8;
  }

  v4 = (v3 + 296);
  v5 = (v3 + 288);
LABEL_7:
  v6 = 1;
  v7 = v4;
LABEL_8:
  v8 = *v7;
  v9 = *(a1 + 40);
  if (v8 == -1)
  {
    v10 = *(a1 + 32);
  }

  else if (v8 >= *(a1 + 32) - v9)
  {
    v10 = *(a1 + 32);
  }

  else
  {
    v10 = &v9[v8];
  }

  if (v10 == v9)
  {
    v12 = *(a1 + 40);
  }

  else
  {
    v11 = *(v3 + 8);
    v12 = *(a1 + 40);
    do
    {
      v13 = sub_10014F338(v12, *(a1 + 32), v11, **(a1 + 72), *(a1 + 120));
      v12 = *(a1 + 40);
      if (v12 == v13)
      {
        break;
      }

      *(a1 + 40) = ++v12;
    }

    while (v12 != v10);
  }

  v14 = (v12 - v9);
  v15 = *v5;
  if (v14 < *v5)
  {
    return 0;
  }

  if (v6)
  {
    if (*(v3 + 308) == 1 && v14 < *v4)
    {
      *(a1 + 48) = v12;
    }

    if (v14 != v15)
    {
      v17 = *(a1 + 216) - 32;
      if (v17 < *(a1 + 208))
      {
        sub_1001488AC(a1, a2);
        v17 = *(a1 + 216) - 32;
      }

      *v17 = 7;
      *(v17 + 8) = v14;
      *(v17 + 16) = v3;
      *(v17 + 24) = v12;
      *(a1 + 216) = v17;
    }

    *(a1 + 88) = *(v3 + 16);
    return 1;
  }

  else
  {
    if (v14 < *v4)
    {
      v18 = *(a1 + 216) - 32;
      if (v18 < *(a1 + 208))
      {
        sub_1001488AC(a1, a2);
        v18 = *(a1 + 216) - 32;
      }

      *v18 = 12;
      *(v18 + 8) = v14;
      *(v18 + 16) = v3;
      *(v18 + 24) = v12;
      *(a1 + 216) = v18;
      v12 = *(a1 + 40);
    }

    *(a1 + 88) = *(v3 + 16);
    if (v12 == *(a1 + 32))
    {
      v19 = *(v3 + 280);
    }

    else
    {
      v19 = *(v3 + *v12 + 24);
    }

    return (v19 >> 1) & 1;
  }
}

BOOL sub_10014ECD8(void *a1)
{
  v1 = a1[5];
  v2 = v1 - a1[8];
  v3 = a1[11];
  v4 = *(v3 + 16);
  if (v2 >= v4)
  {
    a1[5] = v1 - v4;
    a1[11] = *(v3 + 8);
  }

  return v2 >= v4;
}

uint64_t sub_10014ED10(uint64_t a1)
{
  v3 = *(*(a1 + 88) + 16);
  if (v3 != 9999)
  {
    v24 = v1;
    v25 = v2;
    if (v3 < 1)
    {
      if (v3 > -1073741825)
      {
        v16 = *(a1 + 192);
        if (*(a1 + 184) != v16)
        {
          v17 = *(v16 - 112);
          if (v3)
          {
            v18 = v17 == ~v3;
          }

          else
          {
            v18 = 1;
          }

          v4 = v18;
          goto LABEL_31;
        }
      }

      else
      {
        v11 = **(a1 + 72);
        v22 = 0;
        v23 = ~v3;
        v12 = sub_100148F58(*v11, *(v11 + 8), &v22);
        v14 = *(a1 + 192);
        if (*(a1 + 184) == v14)
        {
          v15 = -1;
        }

        else
        {
          v15 = *(v14 - 112);
        }

        if (v12 != v13)
        {
          v19 = v12 + 8;
          do
          {
            v4 = v15 == *(v19 - 8);
            v20 = v15 == *(v19 - 8) || v19 == v13;
            v19 += 8;
          }

          while (!v20);
          goto LABEL_31;
        }
      }
    }

    else
    {
      if (!(v3 >> 30))
      {
        v4 = *(sub_10014CE48(*(a1 + 16), v3) + 16);
LABEL_31:
        *(a1 + 88) = *(*(a1 + 88) + 8);
        return v4 & 1;
      }

      v6 = **(a1 + 72);
      v22 = 0;
      v23 = v3;
      v7 = sub_100148F58(*v6, *(v6 + 8), &v22);
      if (v7 != v8)
      {
        v9 = v8;
        v10 = v7 + 8;
        do
        {
          v4 = *(sub_10014CE48(*(a1 + 16), *(v10 - 8)) + 16);
          if (v4)
          {
            break;
          }

          v18 = v10 == v9;
          v10 += 8;
        }

        while (!v18);
        goto LABEL_31;
      }
    }

    v4 = 0;
    goto LABEL_31;
  }

  v4 = 0;
  return v4 & 1;
}

uint64_t sub_10014EE7C(__n128 *a1, uint64_t a2)
{
  v3 = a1[7].n128_u8[8];
  v4 = a1[13].n128_u64[1] - 16;
  if (v4 < a1[13].n128_u64[0])
  {
    sub_1001488AC(a1, a2);
    v4 = a1[13].n128_u64[1] - 16;
  }

  *v4 = 18;
  *(v4 + 8) = v3;
  a1[13].n128_u64[1] = v4;
  v5 = a1[5].n128_u64[1];
  a1[7].n128_u8[8] = *(v5 + 16);
  a1[5].n128_u64[1] = *(v5 + 8);
  return 1;
}

uint64_t sub_10014EEE8(__n128 *a1, __n128 a2, uint64_t a3)
{
  v4 = a1[12].n128_u64[0];
  v5 = &a1[11].n128_i64[1];
  while (v4 != a1[11].n128_u64[1])
  {
    v6 = *(v4 - 112);
    v4 -= 112;
    if (v6 == *(*(a1[5].n128_u64[1] + 16) + 16))
    {
      if (*(v4 + 104) == a1[2].n128_u64[1])
      {
        return 0;
      }

      break;
    }
  }

  v7 = (a1[13].n128_u64[1] - 8);
  if (v7 < a1[13].n128_u64[0])
  {
    sub_1001488AC(a1, a3);
    v7 = (a1[13].n128_u64[1] - 8);
  }

  *v7 = 15;
  a1[13].n128_u64[1] = v7;
  if (a1[12].n128_u64[1] == a1[11].n128_u64[1])
  {
    sub_10014FB0C(v5, 0x32uLL);
  }

  v21 = 0;
  v22 = 0;
  v20 = 0u;
  v18 = 0u;
  memset(v19, 0, sizeof(v19));
  BYTE12(v20) = 1;
  sub_10014FBF4(v5, &v18);
  sub_10014C2F8(v19);
  v8 = a1[12].n128_u64[0];
  *(v8 - 104) = *(a1[5].n128_u64[1] + 8);
  sub_1001489D4(v8 - 96, a1[1].n128_i64[0]);
  v10 = *(a1[5].n128_u64[1] + 16);
  a1[5].n128_u64[1] = v10;
  v11 = a1[12].n128_u64[0];
  *(v11 - 112) = *(v10 + 16);
  v12 = a1[2].n128_i64[1];
  *(v11 - 8) = v12;
  v13 = -2 - *(a1[5].n128_u64[1] + 16);
  v14 = (a1[13].n128_u64[1] - 48);
  if (v14 < a1[13].n128_u64[0])
  {
    sub_1001488AC(a1, v9);
    v14 = (a1[13].n128_u64[1] - 48);
    v12 = a1[2].n128_i64[1];
  }

  v15 = a1[12].n128_u64[0];
  if (a1[11].n128_u64[1] == v15)
  {
    v16 = -2147483645;
  }

  else
  {
    v16 = *(v15 - 112);
  }

  *v14 = 5;
  sub_100148E58((v14 + 2), v13, a1[8].n128_u64, v12, v16);
  a1[13].n128_u64[1] = v14;
  return 1;
}

uint64_t sub_10014F098(uint64_t a1)
{
  v1 = *(a1 + 192);
  if (*(a1 + 184) == v1)
  {
    v2 = 0x7FFFFFFF;
  }

  else
  {
    v2 = *(v1 - 112);
  }

  return sub_10014FE7C(a1, v2, 1);
}

uint64_t sub_10014F0B8(__n128 *a1, uint64_t a2)
{
  v3 = *(a1[5].n128_u64[1] + 16);
  if (v3 == 1)
  {
    v5 = a1[2].n128_u64[1];
    if (a1[1].n128_u64[1] == v5)
    {
      goto LABEL_7;
    }

    v4 = v5 - 1;
  }

  else
  {
    if (v3 != 2)
    {
      goto LABEL_7;
    }

    v4 = a1[2].n128_u64[0];
  }

  a1[3].n128_u64[0] = v4;
LABEL_7:
  v6 = (a1[13].n128_u64[1] - 8);
  if (v6 < a1[13].n128_u64[0])
  {
    sub_1001488AC(a1, a2);
    v6 = (a1[13].n128_u64[1] - 8);
  }

  *v6 = 16;
  a1[13].n128_u64[1] = v6;
  a1[5].n128_u64[1] = *(a1[5].n128_u64[1] + 8);
  return 1;
}

uint64_t sub_10014F14C(__n128 *a1, uint64_t a2)
{
  v3 = (a1[13].n128_u64[1] - 8);
  if (v3 < a1[13].n128_u64[0])
  {
    sub_1001488AC(a1, a2);
    v3 = (a1[13].n128_u64[1] - 8);
  }

  *v3 = 17;
  a1[13].n128_u64[1] = v3;
  a1[5].n128_u64[1] = *(a1[5].n128_u64[1] + 8);
  return 1;
}

uint64_t sub_10014F1A8(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *a1 = 14;
  *(a1 + 8) = a2;
  *(a1 + 16) = a3;
  sub_10014F20C(a1 + 24, a4);
  sub_10014F20C(a1 + 104, a5);
  return a1;
}

uint64_t sub_10014F20C(uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  sub_10014F2B4(a1, *a2, *(a2 + 8), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 8) - *a2) >> 3));
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 48) = 0;
  *(a1 + 40) = 0;
  v4 = *(a2 + 64);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 72) = *(a2 + 72);
  v5 = *(a2 + 76);
  *(a1 + 76) = v5;
  if ((v5 & 1) == 0)
  {
    *(a1 + 24) = *(a2 + 24);
    *(a1 + 32) = *(a2 + 32);
    *(a1 + 40) = *(a2 + 40);
    *(a1 + 48) = *(a2 + 48);
  }

  return a1;
}

uint64_t *sub_10014F2B4(uint64_t *result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_100148C24(result, a4);
  }

  return result;
}

void sub_10014F31C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

char *sub_10014F338(char *a1, char *a2, uint64_t a3, uint64_t a4, int a5)
{
  v5 = a1;
  if (a1 == a2)
  {
    return v5;
  }

  v9 = (a3 + 40);
  v10 = *(a4 + 24);
  if (*(a3 + 16))
  {
    v12 = 0;
    do
    {
      v13 = *v9;
      if (*v9)
      {
        v14 = v5;
        do
        {
          v15 = *v14;
          if (a5)
          {
            LOBYTE(v15) = (*(**(*v10 + 8) + 40))(*(*v10 + 8), v15);
            v13 = *v9;
          }

          if (v15 != v13)
          {
            break;
          }

          v16 = *++v9;
          v13 = v16;
          ++v14;
        }

        while (v16 && v14 != a2);
        if (!v13)
        {
          if (v14 == v5)
          {
            v36 = v5 + 1;
          }

          else
          {
            v36 = v14;
          }

          if ((*(a3 + 36) & 1) == 0)
          {
            return v36;
          }

          return v5;
        }

          ;
        }
      }

      else
      {
        v19 = *v5;
        if (a5)
        {
          LODWORD(v19) = (*(**(*v10 + 8) + 40))(*(*v10 + 8), v19);
        }

        if (!v19)
        {
          goto LABEL_92;
        }

        ++v9;
      }

      ++v12;
    }

    while (v12 < *(a3 + 16));
  }

  v20 = *v5;
  if (a5)
  {
    v20 = (*(**(*v10 + 8) + 40))(*(*v10 + 8), *v5);
  }

  if (!*(a3 + 20))
  {
    if (!*(a3 + 24))
    {
      goto LABEL_88;
    }

    memset(&v41, 0, sizeof(v41));
    goto LABEL_64;
  }

  memset(&v41, 0, sizeof(v41));
  if ((*(a4 + 42) & 0x20) != 0)
  {
    v39 = v20;
    v40 = 0;
    sub_100149494(*v10, &v38);
    if (SHIBYTE(v41.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v41.__r_.__value_.__l.__data_);
    }

    v41 = v38;
  }

  else
  {
    std::string::assign(&v41, 1uLL, v20);
  }

  if (!*(a3 + 20))
  {
LABEL_64:
    if (!*(a3 + 24))
    {
      goto LABEL_83;
    }

    v39 = v20;
    v40 = 0;
    sub_100149660(*v10, &v39, &v40, &v38);
    if (SHIBYTE(v41.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v41.__r_.__value_.__l.__data_);
    }

    v41 = v38;
    if (!*(a3 + 24))
    {
LABEL_83:
      v33 = 1;
      goto LABEL_85;
    }

    v29 = 0;
    while (1)
    {
      if (!*v9)
      {
        if ((SHIBYTE(v41.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          v30 = HIBYTE(v41.__r_.__value_.__r.__words[2]);
          if (HIBYTE(v41.__r_.__value_.__r.__words[2]) == 1)
          {
            v31 = &v41;
            goto LABEL_77;
          }

          goto LABEL_78;
        }

        if (v41.__r_.__value_.__l.__size_ == 1)
        {
          v31 = v41.__r_.__value_.__r.__words[0];
LABEL_77:
          v30 = v31->__r_.__value_.__s.__data_[0];
LABEL_78:
          if (!v30)
          {
            goto LABEL_84;
          }

          goto LABEL_79;
        }

        if (!v41.__r_.__value_.__l.__size_)
        {
          goto LABEL_84;
        }
      }

LABEL_79:
      if (!std::string::compare(&v41, v9))
      {
        goto LABEL_84;
      }

      ++v9;
        ;
      }

      if (++v29 >= *(a3 + 24))
      {
        goto LABEL_83;
      }
    }
  }

  v21 = 0;
  while (1)
  {
    if (!*v9)
    {
      if (SHIBYTE(v41.__r_.__value_.__r.__words[2]) < 0)
      {
        if (!v41.__r_.__value_.__l.__size_)
        {
          goto LABEL_36;
        }

        if (v41.__r_.__value_.__l.__size_ != 1)
        {
          goto LABEL_35;
        }

        v26 = v41.__r_.__value_.__r.__words[0];
        goto LABEL_52;
      }

      if (!*(&v41.__r_.__value_.__s + 23))
      {
        goto LABEL_36;
      }

      if (HIBYTE(v41.__r_.__value_.__r.__words[2]) == 1)
      {
        v26 = &v41;
LABEL_52:
        if (!v26->__r_.__value_.__s.__data_[0])
        {
          goto LABEL_36;
        }
      }
    }

LABEL_35:
    if (std::string::compare(&v41, v9) < 0)
    {
      v22 = v9 + 1;
        ;
      }

      goto LABEL_61;
    }

LABEL_36:
    v22 = v9 + 1;
      ;
    }

    if (*v22)
    {
      goto LABEL_60;
    }

    if (SHIBYTE(v41.__r_.__value_.__r.__words[2]) < 0)
    {
      if (v41.__r_.__value_.__l.__size_ != 1)
      {
        if (!v41.__r_.__value_.__l.__size_)
        {
          break;
        }

        goto LABEL_60;
      }

      v25 = v41.__r_.__value_.__r.__words[0];
    }

    else
    {
      v24 = HIBYTE(v41.__r_.__value_.__r.__words[2]);
      if (HIBYTE(v41.__r_.__value_.__r.__words[2]) != 1)
      {
        goto LABEL_59;
      }

      v25 = &v41;
    }

    v24 = v25->__r_.__value_.__s.__data_[0];
LABEL_59:
    if (!v24)
    {
      break;
    }

LABEL_60:
    if (std::string::compare(&v41, v22) <= 0)
    {
      break;
    }

LABEL_61:
    v9 = v22 + 1;
      ;
    }

    if (++v21 >= *(a3 + 20))
    {
      goto LABEL_64;
    }
  }

LABEL_84:
  v33 = 0;
  v5 += *(a3 + 36) ^ 1;
LABEL_85:
  if (SHIBYTE(v41.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v41.__r_.__value_.__l.__data_);
  }

  if (v33)
  {
LABEL_88:
    if (!sub_100146404(v10, v20, *(a3 + 28)))
    {
      v34 = *(a3 + 32);
      if (!v34 || sub_100146404(v10, v20, v34))
      {
        v35 = *(a3 + 36);
        goto LABEL_93;
      }
    }

LABEL_92:
    v35 = *(a3 + 36) ^ 1;
LABEL_93:
    v5 += v35;
  }

  return v5;
}