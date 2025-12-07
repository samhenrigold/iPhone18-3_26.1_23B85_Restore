uint64_t sub_276396214(uint64_t a1, void *lpsrc)
{
  v4 = __dynamic_cast(lpsrc, MEMORY[0x277D80A98], &unk_28851FF70, 0);
  if (v4)
  {

    return sub_2763962BC(a1, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, a1);
  }
}

uint64_t sub_2763962BC(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 8);
  if (v4)
  {
    result = sub_2763D4F88((result + 8), (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  v5 = *(a2 + 16);
  if ((v5 & 3) != 0)
  {
    if (v5)
    {
      *(v3 + 16) |= 1u;
      v6 = *(v3 + 24);
      if (!v6)
      {
        v7 = *(v3 + 8);
        if (v7)
        {
          v7 = *(v7 & 0xFFFFFFFFFFFFFFFELL);
        }

        v6 = MEMORY[0x277C97B00](v7);
        *(v3 + 24) = v6;
      }

      if (*(a2 + 24))
      {
        v8 = *(a2 + 24);
      }

      else
      {
        v8 = MEMORY[0x277D80740];
      }

      result = TSK::FormatStructArchive::MergeFrom(v6, v8);
    }

    if ((v5 & 2) != 0)
    {
      *(v3 + 32) = *(a2 + 32);
    }

    *(v3 + 16) |= v5;
  }

  return result;
}

google::protobuf::UnknownFieldSet *sub_276396370(google::protobuf::UnknownFieldSet *result, google::protobuf::UnknownFieldSet *a2)
{
  if (a2 != result)
  {
    v4 = result;
    sub_276395E08(result);

    return sub_276396214(v4, a2);
  }

  return result;
}

uint64_t sub_2763963BC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if ((v1 & 2) == 0)
  {
    return 0;
  }

  if ((v1 & 1) == 0)
  {
    return 1;
  }

  result = TSK::FormatStructArchive::IsInitialized(*(a1 + 24));
  if (result)
  {
    return 1;
  }

  return result;
}

uint64_t *sub_276396430(uint64_t *a1)
{
  if (a1 != &qword_2812EE738 && a1[3])
  {
    v2 = MEMORY[0x277C97400]();
    MEMORY[0x277C98580](v2, 0x10A1C4029F168B5);
  }

  sub_2763941F4(a1 + 1);
  return a1;
}

void sub_276396494(uint64_t *a1)
{
  sub_276396430(a1);

  JUMPOUT(0x277C98580);
}

google::protobuf::UnknownFieldSet *sub_2763964D4(google::protobuf::UnknownFieldSet *result)
{
  v1 = result;
  if (*(result + 16))
  {
    result = TSK::FormatStructArchive::Clear(*(result + 3));
  }

  v3 = *(v1 + 8);
  v2 = v1 + 8;
  *(v2 + 24) = 0;
  *(v2 + 8) = 0;
  if (v3)
  {

    return sub_2763D4FD4(v2);
  }

  return result;
}

google::protobuf::internal *sub_276396534(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v22 = a2;
  v5 = 0;
  if ((sub_2763D4D98(a3, &v22, *(a3 + 92)) & 1) == 0)
  {
    while (1)
    {
      v7 = (v22 + 1);
      v8 = *v22;
      if ((*v22 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if ((*v7 & 0x80000000) == 0)
      {
        break;
      }

      TagFallback = google::protobuf::internal::ReadTagFallback(v22, (v9 - 128));
      v22 = TagFallback;
      if (!TagFallback)
      {
        goto LABEL_37;
      }

      v7 = TagFallback;
      v8 = v19;
LABEL_7:
      if (v8 >> 3 != 2)
      {
        if (v8 >> 3 == 1 && v8 == 10)
        {
          *(a1 + 16) |= 1u;
          v16 = *(a1 + 24);
          if (!v16)
          {
            v17 = *(a1 + 8);
            if (v17)
            {
              v17 = *(v17 & 0xFFFFFFFFFFFFFFFELL);
            }

            v16 = MEMORY[0x277C97B00](v17);
            *(a1 + 24) = v16;
            v7 = v22;
          }

          v12 = sub_2764A8D08(a3, v16, v7);
        }

        else
        {
LABEL_12:
          if (v8)
          {
            v11 = (v8 & 7) == 4;
          }

          else
          {
            v11 = 1;
          }

          if (v11)
          {
            *(a3 + 80) = v8 - 1;
            goto LABEL_2;
          }

          if ((*(a1 + 8) & 1) == 0)
          {
            sub_2763D4E10((a1 + 8));
          }

          v12 = google::protobuf::internal::UnknownFieldParse();
        }

        v22 = v12;
        if (!v12)
        {
          goto LABEL_37;
        }

        goto LABEL_30;
      }

      if (v8 != 16)
      {
        goto LABEL_12;
      }

      v5 |= 2u;
      v14 = (v7 + 1);
      v13 = *v7;
      if ((v13 & 0x8000000000000000) == 0)
      {
        goto LABEL_23;
      }

      v15 = *v14;
      v13 = (v15 << 7) + v13 - 128;
      if ((v15 & 0x80000000) == 0)
      {
        v14 = (v7 + 2);
LABEL_23:
        v22 = v14;
        *(a1 + 32) = v13 != 0;
        goto LABEL_30;
      }

      v20 = google::protobuf::internal::VarintParseSlow64(v7, v13);
      v22 = v20;
      *(a1 + 32) = v21 != 0;
      if (!v20)
      {
LABEL_37:
        v22 = 0;
        goto LABEL_2;
      }

LABEL_30:
      if (sub_2763D4D98(a3, &v22, *(a3 + 92)))
      {
        goto LABEL_2;
      }
    }

    v7 = (v22 + 2);
LABEL_6:
    v22 = v7;
    goto LABEL_7;
  }

LABEL_2:
  *(a1 + 16) |= v5;
  return v22;
}

unsigned __int8 *sub_276396720(uint64_t a1, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v5 = *(a1 + 16);
  if (v5)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v6 = *(a1 + 24);
    *a2 = 10;
    v7 = *(v6 + 12);
    if (v7 > 0x7F)
    {
      a2[1] = v7 | 0x80;
      v9 = v7 >> 7;
      if (v7 >> 14)
      {
        v8 = a2 + 3;
        do
        {
          *(v8 - 1) = v9 | 0x80;
          v10 = v9 >> 7;
          ++v8;
          v11 = v9 >> 14;
          v9 >>= 7;
        }

        while (v11);
        *(v8 - 1) = v10;
      }

      else
      {
        a2[2] = v9;
        v8 = a2 + 3;
      }
    }

    else
    {
      a2[1] = v7;
      v8 = a2 + 2;
    }

    a2 = TSK::FormatStructArchive::_InternalSerialize(v6, v8, a3);
  }

  if ((v5 & 2) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v12 = *(a1 + 32);
    *a2 = 16;
    a2[1] = v12;
    a2 += 2;
  }

  v13 = *(a1 + 8);
  if ((v13 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v13 & 0xFFFFFFFFFFFFFFFELL) + 8, a2, a3);
}

uint64_t sub_276396850(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = v2 & 2;
  if (v2)
  {
    v4 = TSK::FormatStructArchive::ByteSizeLong(*(a1 + 24));
    v3 += v4 + ((9 * (__clz(v4 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  if (*(a1 + 8))
  {

    return google::protobuf::internal::ComputeUnknownFieldsSize();
  }

  else
  {
    *(a1 + 20) = v3;
    return v3;
  }
}

uint64_t sub_2763968E0(uint64_t a1, void *lpsrc)
{
  v4 = __dynamic_cast(lpsrc, MEMORY[0x277D80A98], &unk_28851FF88, 0);
  if (v4)
  {

    return sub_2763962BC(a1, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, a1);
  }
}

google::protobuf::UnknownFieldSet *sub_276396988(google::protobuf::UnknownFieldSet *result, google::protobuf::UnknownFieldSet *a2)
{
  if (a2 != result)
  {
    v4 = result;
    sub_2763964D4(result);

    return sub_2763968E0(v4, a2);
  }

  return result;
}

uint64_t sub_2763969D4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if ((v1 & 2) == 0)
  {
    return 0;
  }

  if ((v1 & 1) == 0)
  {
    return 1;
  }

  result = TSK::FormatStructArchive::IsInitialized(*(a1 + 24));
  if (result)
  {
    return 1;
  }

  return result;
}

uint64_t *sub_276396A48(uint64_t *a1)
{
  if (a1 != &qword_2812EE760)
  {
    v2 = a1[3];
    if (v2)
    {
      v3 = sub_276394194(v2);
      MEMORY[0x277C98580](v3, 0x10A1C404E984866);
    }
  }

  sub_2763941F4(a1 + 1);
  return a1;
}

void sub_276396AAC(uint64_t *a1)
{
  sub_276396A48(a1);

  JUMPOUT(0x277C98580);
}

google::protobuf::UnknownFieldSet *sub_276396AEC(google::protobuf::UnknownFieldSet *result)
{
  v1 = result;
  if (*(result + 16))
  {
    result = sub_2763942CC(*(result + 3));
  }

  v3 = *(v1 + 8);
  v2 = v1 + 8;
  *(v2 + 8) = 0;
  if (v3)
  {

    return sub_2763D4FD4(v2);
  }

  return result;
}

google::protobuf::internal *sub_276396B48(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v16 = a2;
  for (i = *(a3 + 92); (sub_2763D4D98(a3, &v16, i) & 1) == 0; i = *(a3 + 92))
  {
    v6 = (v16 + 1);
    v7 = *v16;
    if (*v16 < 0)
    {
      v8 = v7 + (*v6 << 7);
      v7 = v8 - 128;
      if (*v6 < 0)
      {
        TagFallback = google::protobuf::internal::ReadTagFallback(v16, (v8 - 128));
        v16 = TagFallback;
        if (!TagFallback)
        {
          return 0;
        }

        v6 = TagFallback;
        v7 = v14;
        goto LABEL_7;
      }

      v6 = (v16 + 2);
    }

    v16 = v6;
LABEL_7:
    if (v7 == 10)
    {
      *(a1 + 16) |= 1u;
      v11 = *(a1 + 24);
      if (!v11)
      {
        v12 = *(a1 + 8);
        if (v12)
        {
          v12 = *(v12 & 0xFFFFFFFFFFFFFFFELL);
        }

        v11 = sub_2763D393C(v12);
        *(a1 + 24) = v11;
        v6 = v16;
      }

      v10 = sub_2764A8DD8(a3, v11, v6);
    }

    else
    {
      if (v7)
      {
        v9 = (v7 & 7) == 4;
      }

      else
      {
        v9 = 1;
      }

      if (v9)
      {
        *(a3 + 80) = v7 - 1;
        return v16;
      }

      if ((*(a1 + 8) & 1) == 0)
      {
        sub_2763D4E10((a1 + 8));
      }

      v10 = google::protobuf::internal::UnknownFieldParse();
    }

    v16 = v10;
    if (!v10)
    {
      return 0;
    }
  }

  return v16;
}

unsigned __int8 *sub_276396C90(uint64_t a1, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *this)
{
  if (*(a1 + 16))
  {
    if (*this <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
    }

    v5 = *(a1 + 24);
    *a2 = 10;
    v6 = *(v5 + 20);
    if (v6 > 0x7F)
    {
      a2[1] = v6 | 0x80;
      v8 = v6 >> 7;
      if (v6 >> 14)
      {
        v7 = a2 + 3;
        do
        {
          *(v7 - 1) = v8 | 0x80;
          v9 = v8 >> 7;
          ++v7;
          v10 = v8 >> 14;
          v8 >>= 7;
        }

        while (v10);
        *(v7 - 1) = v9;
      }

      else
      {
        a2[2] = v8;
        v7 = a2 + 3;
      }
    }

    else
    {
      a2[1] = v6;
      v7 = a2 + 2;
    }

    a2 = sub_276394518(v5, v7, this);
  }

  v11 = *(a1 + 8);
  if ((v11 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v11 & 0xFFFFFFFFFFFFFFFELL) + 8, a2, this);
}

uint64_t sub_276396D80(uint64_t a1)
{
  if (*(a1 + 16))
  {
    v3 = sub_276394648(*(a1 + 24));
    v2 = v3 + ((9 * (__clz(v3 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  else
  {
    v2 = 0;
  }

  if (*(a1 + 8))
  {

    return google::protobuf::internal::ComputeUnknownFieldsSize();
  }

  else
  {
    *(a1 + 20) = v2;
    return v2;
  }
}

uint64_t sub_276396E0C(uint64_t a1, void *lpsrc)
{
  v4 = __dynamic_cast(lpsrc, MEMORY[0x277D80A98], &unk_28851FFA0, 0);
  if (v4)
  {

    return sub_276396EB4(a1, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, a1);
  }
}

uint64_t sub_276396EB4(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 8);
  if (v4)
  {
    result = sub_2763D4F88((result + 8), (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  if (*(a2 + 16))
  {
    v5 = *(a2 + 24);
    *(v3 + 16) |= 1u;
    v6 = *(v3 + 24);
    if (!v6)
    {
      v7 = *(v3 + 8);
      if (v7)
      {
        v7 = *(v7 & 0xFFFFFFFFFFFFFFFELL);
      }

      v6 = sub_2763D393C(v7);
      *(v3 + 24) = v6;
      v5 = *(a2 + 24);
    }

    if (v5)
    {
      v8 = v5;
    }

    else
    {
      v8 = &qword_2812EE670;
    }

    return sub_276394780(v6, v8);
  }

  return result;
}

google::protobuf::UnknownFieldSet *sub_276396F5C(google::protobuf::UnknownFieldSet *result, google::protobuf::UnknownFieldSet *a2)
{
  if (a2 != result)
  {
    v4 = result;
    sub_276396AEC(result);

    return sub_276396E0C(v4, a2);
  }

  return result;
}

BOOL sub_276396FA8(uint64_t a1)
{
  result = 1;
  if (*(a1 + 16))
  {
    v2 = *(a1 + 24);
    v3 = *(v2 + 16);
    if ((v3 & 2) == 0 || (v3 & 1) != 0 && !sub_27643F2FC(*(v2 + 24)))
    {
      return 0;
    }
  }

  return result;
}

uint64_t *sub_27639702C(uint64_t *a1)
{
  if (a1 != &qword_2812EE780)
  {
    v2 = a1[3];
    if (v2)
    {
      v3 = sub_276394960(v2);
      MEMORY[0x277C98580](v3, 0x10A1C404E984866);
    }
  }

  sub_2763941F4(a1 + 1);
  return a1;
}

void sub_276397090(uint64_t *a1)
{
  sub_27639702C(a1);

  JUMPOUT(0x277C98580);
}

google::protobuf::UnknownFieldSet *sub_2763970D0(google::protobuf::UnknownFieldSet *result)
{
  v1 = result;
  if (*(result + 16))
  {
    result = sub_276394A04(*(result + 3));
  }

  v3 = *(v1 + 8);
  v2 = v1 + 8;
  *(v2 + 8) = 0;
  if (v3)
  {

    return sub_2763D4FD4(v2);
  }

  return result;
}

google::protobuf::internal *sub_27639712C(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v16 = a2;
  for (i = *(a3 + 92); (sub_2763D4D98(a3, &v16, i) & 1) == 0; i = *(a3 + 92))
  {
    v6 = (v16 + 1);
    v7 = *v16;
    if (*v16 < 0)
    {
      v8 = v7 + (*v6 << 7);
      v7 = v8 - 128;
      if (*v6 < 0)
      {
        TagFallback = google::protobuf::internal::ReadTagFallback(v16, (v8 - 128));
        v16 = TagFallback;
        if (!TagFallback)
        {
          return 0;
        }

        v6 = TagFallback;
        v7 = v14;
        goto LABEL_7;
      }

      v6 = (v16 + 2);
    }

    v16 = v6;
LABEL_7:
    if (v7 == 10)
    {
      *(a1 + 16) |= 1u;
      v11 = *(a1 + 24);
      if (!v11)
      {
        v12 = *(a1 + 8);
        if (v12)
        {
          v12 = *(v12 & 0xFFFFFFFFFFFFFFFELL);
        }

        v11 = sub_2763D3A0C(v12);
        *(a1 + 24) = v11;
        v6 = v16;
      }

      v10 = sub_2764A8EA8(a3, v11, v6);
    }

    else
    {
      if (v7)
      {
        v9 = (v7 & 7) == 4;
      }

      else
      {
        v9 = 1;
      }

      if (v9)
      {
        *(a3 + 80) = v7 - 1;
        return v16;
      }

      if ((*(a1 + 8) & 1) == 0)
      {
        sub_2763D4E10((a1 + 8));
      }

      v10 = google::protobuf::internal::UnknownFieldParse();
    }

    v16 = v10;
    if (!v10)
    {
      return 0;
    }
  }

  return v16;
}

unsigned __int8 *sub_276397274(uint64_t a1, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *this)
{
  if (*(a1 + 16))
  {
    if (*this <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
    }

    v5 = *(a1 + 24);
    *a2 = 10;
    v6 = *(v5 + 20);
    if (v6 > 0x7F)
    {
      a2[1] = v6 | 0x80;
      v8 = v6 >> 7;
      if (v6 >> 14)
      {
        v7 = a2 + 3;
        do
        {
          *(v7 - 1) = v8 | 0x80;
          v9 = v8 >> 7;
          ++v7;
          v10 = v8 >> 14;
          v8 >>= 7;
        }

        while (v10);
        *(v7 - 1) = v9;
      }

      else
      {
        a2[2] = v8;
        v7 = a2 + 3;
      }
    }

    else
    {
      a2[1] = v6;
      v7 = a2 + 2;
    }

    a2 = sub_276394C50(v5, v7, this);
  }

  v11 = *(a1 + 8);
  if ((v11 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v11 & 0xFFFFFFFFFFFFFFFELL) + 8, a2, this);
}

uint64_t sub_276397364(uint64_t a1)
{
  if (*(a1 + 16))
  {
    v3 = sub_276394D80(*(a1 + 24));
    v2 = v3 + ((9 * (__clz(v3 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  else
  {
    v2 = 0;
  }

  if (*(a1 + 8))
  {

    return google::protobuf::internal::ComputeUnknownFieldsSize();
  }

  else
  {
    *(a1 + 20) = v2;
    return v2;
  }
}

uint64_t sub_2763973F0(uint64_t a1, void *lpsrc)
{
  v4 = __dynamic_cast(lpsrc, MEMORY[0x277D80A98], &unk_28851FFB8, 0);
  if (v4)
  {

    return sub_276397498(a1, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, a1);
  }
}

uint64_t sub_276397498(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 8);
  if (v4)
  {
    result = sub_2763D4F88((result + 8), (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  if (*(a2 + 16))
  {
    v5 = *(a2 + 24);
    *(v3 + 16) |= 1u;
    v6 = *(v3 + 24);
    if (!v6)
    {
      v7 = *(v3 + 8);
      if (v7)
      {
        v7 = *(v7 & 0xFFFFFFFFFFFFFFFELL);
      }

      v6 = sub_2763D3A0C(v7);
      *(v3 + 24) = v6;
      v5 = *(a2 + 24);
    }

    if (v5)
    {
      v8 = v5;
    }

    else
    {
      v8 = &qword_2812EE698;
    }

    return sub_276394EB8(v6, v8);
  }

  return result;
}

google::protobuf::UnknownFieldSet *sub_276397540(google::protobuf::UnknownFieldSet *result, google::protobuf::UnknownFieldSet *a2)
{
  if (a2 != result)
  {
    v4 = result;
    sub_2763970D0(result);

    return sub_2763973F0(v4, a2);
  }

  return result;
}

BOOL sub_27639758C(uint64_t a1)
{
  result = 1;
  if (*(a1 + 16))
  {
    v2 = *(a1 + 24);
    v3 = *(v2 + 16);
    if ((v3 & 2) == 0 || (v3 & 1) != 0 && !sub_27643BC1C(*(v2 + 24)))
    {
      return 0;
    }
  }

  return result;
}

uint64_t *sub_276397610(uint64_t *a1)
{
  if (a1 != &qword_2812EE7A0)
  {
    v2 = a1[3];
    if (v2)
    {
      v3 = sub_27639502C(v2);
      MEMORY[0x277C98580](v3, 0x10A1C404E984866);
    }
  }

  sub_2763941F4(a1 + 1);
  return a1;
}

void sub_276397674(uint64_t *a1)
{
  sub_276397610(a1);

  JUMPOUT(0x277C98580);
}

google::protobuf::UnknownFieldSet *sub_2763976B4(google::protobuf::UnknownFieldSet *result)
{
  v1 = result;
  if (*(result + 16))
  {
    result = sub_2763950D0(*(result + 3));
  }

  v3 = *(v1 + 8);
  v2 = v1 + 8;
  *(v2 + 8) = 0;
  if (v3)
  {

    return sub_2763D4FD4(v2);
  }

  return result;
}

google::protobuf::internal *sub_276397710(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v16 = a2;
  for (i = *(a3 + 92); (sub_2763D4D98(a3, &v16, i) & 1) == 0; i = *(a3 + 92))
  {
    v6 = (v16 + 1);
    v7 = *v16;
    if (*v16 < 0)
    {
      v8 = v7 + (*v6 << 7);
      v7 = v8 - 128;
      if (*v6 < 0)
      {
        TagFallback = google::protobuf::internal::ReadTagFallback(v16, (v8 - 128));
        v16 = TagFallback;
        if (!TagFallback)
        {
          return 0;
        }

        v6 = TagFallback;
        v7 = v14;
        goto LABEL_7;
      }

      v6 = (v16 + 2);
    }

    v16 = v6;
LABEL_7:
    if (v7 == 10)
    {
      *(a1 + 16) |= 1u;
      v11 = *(a1 + 24);
      if (!v11)
      {
        v12 = *(a1 + 8);
        if (v12)
        {
          v12 = *(v12 & 0xFFFFFFFFFFFFFFFELL);
        }

        v11 = sub_2763D3ADC(v12);
        *(a1 + 24) = v11;
        v6 = v16;
      }

      v10 = sub_2764A8F78(a3, v11, v6);
    }

    else
    {
      if (v7)
      {
        v9 = (v7 & 7) == 4;
      }

      else
      {
        v9 = 1;
      }

      if (v9)
      {
        *(a3 + 80) = v7 - 1;
        return v16;
      }

      if ((*(a1 + 8) & 1) == 0)
      {
        sub_2763D4E10((a1 + 8));
      }

      v10 = google::protobuf::internal::UnknownFieldParse();
    }

    v16 = v10;
    if (!v10)
    {
      return 0;
    }
  }

  return v16;
}

unsigned __int8 *sub_276397858(uint64_t a1, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *this)
{
  if (*(a1 + 16))
  {
    if (*this <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
    }

    v5 = *(a1 + 24);
    *a2 = 10;
    v6 = *(v5 + 20);
    if (v6 > 0x7F)
    {
      a2[1] = v6 | 0x80;
      v8 = v6 >> 7;
      if (v6 >> 14)
      {
        v7 = a2 + 3;
        do
        {
          *(v7 - 1) = v8 | 0x80;
          v9 = v8 >> 7;
          ++v7;
          v10 = v8 >> 14;
          v8 >>= 7;
        }

        while (v10);
        *(v7 - 1) = v9;
      }

      else
      {
        a2[2] = v8;
        v7 = a2 + 3;
      }
    }

    else
    {
      a2[1] = v6;
      v7 = a2 + 2;
    }

    a2 = sub_27639531C(v5, v7, this);
  }

  v11 = *(a1 + 8);
  if ((v11 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v11 & 0xFFFFFFFFFFFFFFFELL) + 8, a2, this);
}

uint64_t sub_276397948(uint64_t a1)
{
  if (*(a1 + 16))
  {
    v3 = sub_27639544C(*(a1 + 24));
    v2 = v3 + ((9 * (__clz(v3 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  else
  {
    v2 = 0;
  }

  if (*(a1 + 8))
  {

    return google::protobuf::internal::ComputeUnknownFieldsSize();
  }

  else
  {
    *(a1 + 20) = v2;
    return v2;
  }
}

uint64_t sub_2763979D4(uint64_t a1, void *lpsrc)
{
  v4 = __dynamic_cast(lpsrc, MEMORY[0x277D80A98], &unk_28851FFD0, 0);
  if (v4)
  {

    return sub_276397A7C(a1, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, a1);
  }
}

uint64_t sub_276397A7C(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 8);
  if (v4)
  {
    result = sub_2763D4F88((result + 8), (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  if (*(a2 + 16))
  {
    v5 = *(a2 + 24);
    *(v3 + 16) |= 1u;
    v6 = *(v3 + 24);
    if (!v6)
    {
      v7 = *(v3 + 8);
      if (v7)
      {
        v7 = *(v7 & 0xFFFFFFFFFFFFFFFELL);
      }

      v6 = sub_2763D3ADC(v7);
      *(v3 + 24) = v6;
      v5 = *(a2 + 24);
    }

    if (v5)
    {
      v8 = v5;
    }

    else
    {
      v8 = &qword_2812EE6C0;
    }

    return sub_276395584(v6, v8);
  }

  return result;
}

google::protobuf::UnknownFieldSet *sub_276397B24(google::protobuf::UnknownFieldSet *result, google::protobuf::UnknownFieldSet *a2)
{
  if (a2 != result)
  {
    v4 = result;
    sub_2763976B4(result);

    return sub_2763979D4(v4, a2);
  }

  return result;
}

uint64_t *sub_276397BCC(uint64_t *a1)
{
  if (a1 != &qword_2812EE7C0)
  {
    v2 = a1[3];
    if (v2)
    {
      v3 = sub_2763956C8(v2);
      MEMORY[0x277C98580](v3, 0x10A1C404E984866);
    }
  }

  sub_2763941F4(a1 + 1);
  return a1;
}

void sub_276397C30(uint64_t *a1)
{
  sub_276397BCC(a1);

  JUMPOUT(0x277C98580);
}

google::protobuf::UnknownFieldSet *sub_276397C70(google::protobuf::UnknownFieldSet *result)
{
  v1 = result;
  if (*(result + 16))
  {
    result = sub_27639576C(*(result + 3));
  }

  v3 = *(v1 + 8);
  v2 = v1 + 8;
  *(v2 + 8) = 0;
  if (v3)
  {

    return sub_2763D4FD4(v2);
  }

  return result;
}

google::protobuf::internal *sub_276397CCC(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v16 = a2;
  for (i = *(a3 + 92); (sub_2763D4D98(a3, &v16, i) & 1) == 0; i = *(a3 + 92))
  {
    v6 = (v16 + 1);
    v7 = *v16;
    if (*v16 < 0)
    {
      v8 = v7 + (*v6 << 7);
      v7 = v8 - 128;
      if (*v6 < 0)
      {
        TagFallback = google::protobuf::internal::ReadTagFallback(v16, (v8 - 128));
        v16 = TagFallback;
        if (!TagFallback)
        {
          return 0;
        }

        v6 = TagFallback;
        v7 = v14;
        goto LABEL_7;
      }

      v6 = (v16 + 2);
    }

    v16 = v6;
LABEL_7:
    if (v7 == 10)
    {
      *(a1 + 16) |= 1u;
      v11 = *(a1 + 24);
      if (!v11)
      {
        v12 = *(a1 + 8);
        if (v12)
        {
          v12 = *(v12 & 0xFFFFFFFFFFFFFFFELL);
        }

        v11 = sub_2763D3BAC(v12);
        *(a1 + 24) = v11;
        v6 = v16;
      }

      v10 = sub_2764A9048(a3, v11, v6);
    }

    else
    {
      if (v7)
      {
        v9 = (v7 & 7) == 4;
      }

      else
      {
        v9 = 1;
      }

      if (v9)
      {
        *(a3 + 80) = v7 - 1;
        return v16;
      }

      if ((*(a1 + 8) & 1) == 0)
      {
        sub_2763D4E10((a1 + 8));
      }

      v10 = google::protobuf::internal::UnknownFieldParse();
    }

    v16 = v10;
    if (!v10)
    {
      return 0;
    }
  }

  return v16;
}

unsigned __int8 *sub_276397E14(uint64_t a1, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *this)
{
  if (*(a1 + 16))
  {
    if (*this <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
    }

    v5 = *(a1 + 24);
    *a2 = 10;
    v6 = *(v5 + 20);
    if (v6 > 0x7F)
    {
      a2[1] = v6 | 0x80;
      v8 = v6 >> 7;
      if (v6 >> 14)
      {
        v7 = a2 + 3;
        do
        {
          *(v7 - 1) = v8 | 0x80;
          v9 = v8 >> 7;
          ++v7;
          v10 = v8 >> 14;
          v8 >>= 7;
        }

        while (v10);
        *(v7 - 1) = v9;
      }

      else
      {
        a2[2] = v8;
        v7 = a2 + 3;
      }
    }

    else
    {
      a2[1] = v6;
      v7 = a2 + 2;
    }

    a2 = sub_2763959B8(v5, v7, this);
  }

  v11 = *(a1 + 8);
  if ((v11 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v11 & 0xFFFFFFFFFFFFFFFELL) + 8, a2, this);
}

uint64_t sub_276397F04(uint64_t a1)
{
  if (*(a1 + 16))
  {
    v3 = sub_276395AE8(*(a1 + 24));
    v2 = v3 + ((9 * (__clz(v3 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  else
  {
    v2 = 0;
  }

  if (*(a1 + 8))
  {

    return google::protobuf::internal::ComputeUnknownFieldsSize();
  }

  else
  {
    *(a1 + 20) = v2;
    return v2;
  }
}

void sub_276397F90(uint64_t a1, void *lpsrc)
{
  v4 = __dynamic_cast(lpsrc, MEMORY[0x277D80A98], &unk_28851FFE8, 0);
  if (v4)
  {

    sub_276398038(a1, v4);
  }

  else
  {

    MEMORY[0x2821EACE0](lpsrc, a1);
  }
}

void sub_276398038(uint64_t result, uint64_t a2)
{
  v4 = *(a2 + 8);
  if (v4)
  {
    sub_2763D4F88((result + 8), (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  if (*(a2 + 16))
  {
    v5 = *(a2 + 24);
    *(result + 16) |= 1u;
    v6 = *(result + 24);
    if (!v6)
    {
      v7 = *(result + 8);
      if (v7)
      {
        v7 = *(v7 & 0xFFFFFFFFFFFFFFFELL);
      }

      v6 = sub_2763D3BAC(v7);
      *(result + 24) = v6;
      v5 = *(a2 + 24);
    }

    if (v5)
    {
      v8 = v5;
    }

    else
    {
      v8 = &qword_2812EE6E8;
    }

    sub_276395C20(v6, v8);
  }
}

void sub_2763980E0(google::protobuf::UnknownFieldSet *result, google::protobuf::UnknownFieldSet *a2)
{
  if (a2 != result)
  {
    sub_276397C70(result);

    sub_276397F90(result, a2);
  }
}

uint64_t *sub_276398188(uint64_t *a1)
{
  if (a1 != &qword_2812EE7E0)
  {
    v2 = a1[3];
    if (v2)
    {
      v3 = sub_276395D64(v2);
      MEMORY[0x277C98580](v3, 0x10A1C404E984866);
    }
  }

  sub_2763941F4(a1 + 1);
  return a1;
}

void sub_2763981EC(uint64_t *a1)
{
  sub_276398188(a1);

  JUMPOUT(0x277C98580);
}

google::protobuf::UnknownFieldSet *sub_27639822C(google::protobuf::UnknownFieldSet *result)
{
  v1 = result;
  if (*(result + 16))
  {
    result = sub_276395E08(*(result + 3));
  }

  v3 = *(v1 + 8);
  v2 = v1 + 8;
  *(v2 + 8) = 0;
  if (v3)
  {

    return sub_2763D4FD4(v2);
  }

  return result;
}

google::protobuf::internal *sub_276398288(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v16 = a2;
  for (i = *(a3 + 92); (sub_2763D4D98(a3, &v16, i) & 1) == 0; i = *(a3 + 92))
  {
    v6 = (v16 + 1);
    v7 = *v16;
    if (*v16 < 0)
    {
      v8 = v7 + (*v6 << 7);
      v7 = v8 - 128;
      if (*v6 < 0)
      {
        TagFallback = google::protobuf::internal::ReadTagFallback(v16, (v8 - 128));
        v16 = TagFallback;
        if (!TagFallback)
        {
          return 0;
        }

        v6 = TagFallback;
        v7 = v14;
        goto LABEL_7;
      }

      v6 = (v16 + 2);
    }

    v16 = v6;
LABEL_7:
    if (v7 == 10)
    {
      *(a1 + 16) |= 1u;
      v11 = *(a1 + 24);
      if (!v11)
      {
        v12 = *(a1 + 8);
        if (v12)
        {
          v12 = *(v12 & 0xFFFFFFFFFFFFFFFELL);
        }

        v11 = sub_2763D3C7C(v12);
        *(a1 + 24) = v11;
        v6 = v16;
      }

      v10 = sub_2764A9118(a3, v11, v6);
    }

    else
    {
      if (v7)
      {
        v9 = (v7 & 7) == 4;
      }

      else
      {
        v9 = 1;
      }

      if (v9)
      {
        *(a3 + 80) = v7 - 1;
        return v16;
      }

      if ((*(a1 + 8) & 1) == 0)
      {
        sub_2763D4E10((a1 + 8));
      }

      v10 = google::protobuf::internal::UnknownFieldParse();
    }

    v16 = v10;
    if (!v10)
    {
      return 0;
    }
  }

  return v16;
}

unsigned __int8 *sub_2763983D0(uint64_t a1, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  if (*(a1 + 16))
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v5 = *(a1 + 24);
    *a2 = 10;
    v6 = *(v5 + 20);
    if (v6 > 0x7F)
    {
      a2[1] = v6 | 0x80;
      v8 = v6 >> 7;
      if (v6 >> 14)
      {
        v7 = a2 + 3;
        do
        {
          *(v7 - 1) = v8 | 0x80;
          v9 = v8 >> 7;
          ++v7;
          v10 = v8 >> 14;
          v8 >>= 7;
        }

        while (v10);
        *(v7 - 1) = v9;
      }

      else
      {
        a2[2] = v8;
        v7 = a2 + 3;
      }
    }

    else
    {
      a2[1] = v6;
      v7 = a2 + 2;
    }

    a2 = sub_276396054(v5, v7, a3);
  }

  v11 = *(a1 + 8);
  if ((v11 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v11 & 0xFFFFFFFFFFFFFFFELL) + 8, a2, a3);
}

uint64_t sub_2763984C0(uint64_t a1)
{
  if (*(a1 + 16))
  {
    v3 = sub_276396184(*(a1 + 24));
    v2 = v3 + ((9 * (__clz(v3 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  else
  {
    v2 = 0;
  }

  if (*(a1 + 8))
  {

    return google::protobuf::internal::ComputeUnknownFieldsSize();
  }

  else
  {
    *(a1 + 20) = v2;
    return v2;
  }
}

uint64_t sub_27639854C(uint64_t a1, void *lpsrc)
{
  v4 = __dynamic_cast(lpsrc, MEMORY[0x277D80A98], &unk_288520000, 0);
  if (v4)
  {

    return sub_2763985F4(a1, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, a1);
  }
}

uint64_t sub_2763985F4(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 8);
  if (v4)
  {
    result = sub_2763D4F88((result + 8), (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  if (*(a2 + 16))
  {
    v5 = *(a2 + 24);
    *(v3 + 16) |= 1u;
    v6 = *(v3 + 24);
    if (!v6)
    {
      v7 = *(v3 + 8);
      if (v7)
      {
        v7 = *(v7 & 0xFFFFFFFFFFFFFFFELL);
      }

      v6 = sub_2763D3C7C(v7);
      *(v3 + 24) = v6;
      v5 = *(a2 + 24);
    }

    if (v5)
    {
      v8 = v5;
    }

    else
    {
      v8 = &qword_2812EE710;
    }

    return sub_2763962BC(v6, v8);
  }

  return result;
}

google::protobuf::UnknownFieldSet *sub_27639869C(google::protobuf::UnknownFieldSet *result, google::protobuf::UnknownFieldSet *a2)
{
  if (a2 != result)
  {
    v4 = result;
    sub_27639822C(result);

    return sub_27639854C(v4, a2);
  }

  return result;
}

BOOL sub_2763986E8(uint64_t a1)
{
  result = 1;
  if (*(a1 + 16))
  {
    v2 = *(a1 + 24);
    v3 = *(v2 + 16);
    if ((v3 & 2) == 0 || (v3 & 1) != 0 && (TSK::FormatStructArchive::IsInitialized(*(v2 + 24)) & 1) == 0)
    {
      return 0;
    }
  }

  return result;
}

uint64_t *sub_27639876C(uint64_t *a1)
{
  if (a1 != &qword_2812EE800)
  {
    v2 = a1[3];
    if (v2)
    {
      v3 = sub_276396430(v2);
      MEMORY[0x277C98580](v3, 0x10A1C404E984866);
    }
  }

  sub_2763941F4(a1 + 1);
  return a1;
}

void sub_2763987D0(uint64_t *a1)
{
  sub_27639876C(a1);

  JUMPOUT(0x277C98580);
}

google::protobuf::UnknownFieldSet *sub_276398810(google::protobuf::UnknownFieldSet *result)
{
  v1 = result;
  if (*(result + 16))
  {
    result = sub_2763964D4(*(result + 3));
  }

  v3 = *(v1 + 8);
  v2 = v1 + 8;
  *(v2 + 8) = 0;
  if (v3)
  {

    return sub_2763D4FD4(v2);
  }

  return result;
}

google::protobuf::internal *sub_27639886C(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v16 = a2;
  for (i = *(a3 + 92); (sub_2763D4D98(a3, &v16, i) & 1) == 0; i = *(a3 + 92))
  {
    v6 = (v16 + 1);
    v7 = *v16;
    if (*v16 < 0)
    {
      v8 = v7 + (*v6 << 7);
      v7 = v8 - 128;
      if (*v6 < 0)
      {
        TagFallback = google::protobuf::internal::ReadTagFallback(v16, (v8 - 128));
        v16 = TagFallback;
        if (!TagFallback)
        {
          return 0;
        }

        v6 = TagFallback;
        v7 = v14;
        goto LABEL_7;
      }

      v6 = (v16 + 2);
    }

    v16 = v6;
LABEL_7:
    if (v7 == 10)
    {
      *(a1 + 16) |= 1u;
      v11 = *(a1 + 24);
      if (!v11)
      {
        v12 = *(a1 + 8);
        if (v12)
        {
          v12 = *(v12 & 0xFFFFFFFFFFFFFFFELL);
        }

        v11 = sub_2763D3D4C(v12);
        *(a1 + 24) = v11;
        v6 = v16;
      }

      v10 = sub_2764A91E8(a3, v11, v6);
    }

    else
    {
      if (v7)
      {
        v9 = (v7 & 7) == 4;
      }

      else
      {
        v9 = 1;
      }

      if (v9)
      {
        *(a3 + 80) = v7 - 1;
        return v16;
      }

      if ((*(a1 + 8) & 1) == 0)
      {
        sub_2763D4E10((a1 + 8));
      }

      v10 = google::protobuf::internal::UnknownFieldParse();
    }

    v16 = v10;
    if (!v10)
    {
      return 0;
    }
  }

  return v16;
}

unsigned __int8 *sub_2763989B4(uint64_t a1, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  if (*(a1 + 16))
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v5 = *(a1 + 24);
    *a2 = 10;
    v6 = *(v5 + 20);
    if (v6 > 0x7F)
    {
      a2[1] = v6 | 0x80;
      v8 = v6 >> 7;
      if (v6 >> 14)
      {
        v7 = a2 + 3;
        do
        {
          *(v7 - 1) = v8 | 0x80;
          v9 = v8 >> 7;
          ++v7;
          v10 = v8 >> 14;
          v8 >>= 7;
        }

        while (v10);
        *(v7 - 1) = v9;
      }

      else
      {
        a2[2] = v8;
        v7 = a2 + 3;
      }
    }

    else
    {
      a2[1] = v6;
      v7 = a2 + 2;
    }

    a2 = sub_276396720(v5, v7, a3);
  }

  v11 = *(a1 + 8);
  if ((v11 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v11 & 0xFFFFFFFFFFFFFFFELL) + 8, a2, a3);
}

uint64_t sub_276398AA4(uint64_t a1)
{
  if (*(a1 + 16))
  {
    v3 = sub_276396850(*(a1 + 24));
    v2 = v3 + ((9 * (__clz(v3 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  else
  {
    v2 = 0;
  }

  if (*(a1 + 8))
  {

    return google::protobuf::internal::ComputeUnknownFieldsSize();
  }

  else
  {
    *(a1 + 20) = v2;
    return v2;
  }
}

uint64_t sub_276398B30(uint64_t a1, void *lpsrc)
{
  v4 = __dynamic_cast(lpsrc, MEMORY[0x277D80A98], &unk_288520018, 0);
  if (v4)
  {

    return sub_276398BD8(a1, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, a1);
  }
}

uint64_t sub_276398BD8(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 8);
  if (v4)
  {
    result = sub_2763D4F88((result + 8), (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  if (*(a2 + 16))
  {
    v5 = *(a2 + 24);
    *(v3 + 16) |= 1u;
    v6 = *(v3 + 24);
    if (!v6)
    {
      v7 = *(v3 + 8);
      if (v7)
      {
        v7 = *(v7 & 0xFFFFFFFFFFFFFFFELL);
      }

      v6 = sub_2763D3D4C(v7);
      *(v3 + 24) = v6;
      v5 = *(a2 + 24);
    }

    if (v5)
    {
      v8 = v5;
    }

    else
    {
      v8 = &qword_2812EE738;
    }

    return sub_2763962BC(v6, v8);
  }

  return result;
}

google::protobuf::UnknownFieldSet *sub_276398C80(google::protobuf::UnknownFieldSet *result, google::protobuf::UnknownFieldSet *a2)
{
  if (a2 != result)
  {
    v4 = result;
    sub_276398810(result);

    return sub_276398B30(v4, a2);
  }

  return result;
}

BOOL sub_276398CCC(uint64_t a1)
{
  result = 1;
  if (*(a1 + 16))
  {
    v2 = *(a1 + 24);
    v3 = *(v2 + 16);
    if ((v3 & 2) == 0 || (v3 & 1) != 0 && (TSK::FormatStructArchive::IsInitialized(*(v2 + 24)) & 1) == 0)
    {
      return 0;
    }
  }

  return result;
}

uint64_t *sub_276398D50(uint64_t *a1)
{
  sub_276398D84(a1);
  sub_2763941F4(a1 + 1);
  return a1;
}

uint64_t *sub_276398D84(uint64_t *result)
{
  if (result != &qword_2812EE820)
  {
    v1 = result;
    v2 = result[4];
    if (v2)
    {
      v3 = sub_276398188(v2);
      MEMORY[0x277C98580](v3, 0x10A1C40D4912B22);
    }

    v4 = v1[5];
    if (v4)
    {
      v5 = sub_27639876C(v4);
      MEMORY[0x277C98580](v5, 0x10A1C40D4912B22);
    }

    if (v1[6])
    {
      v6 = MEMORY[0x277C97A10]();
      MEMORY[0x277C98580](v6, 0x10A1C40D4912B22);
    }

    v7 = v1[7];
    if (v7)
    {
      v8 = sub_276398188(v7);
      MEMORY[0x277C98580](v8, 0x10A1C40D4912B22);
    }

    v9 = v1[8];
    if (v9)
    {
      v10 = sub_276398188(v9);
      MEMORY[0x277C98580](v10, 0x10A1C40D4912B22);
    }

    if (v1[9])
    {
      v11 = MEMORY[0x277C97990]();
      MEMORY[0x277C98580](v11, 0x10A1C40D4912B22);
    }

    v12 = v1[10];
    if (v12)
    {
      v13 = sub_27639876C(v12);
      MEMORY[0x277C98580](v13, 0x10A1C40D4912B22);
    }

    if (v1[11])
    {
      v14 = MEMORY[0x277C97A10]();
      MEMORY[0x277C98580](v14, 0x10A1C40D4912B22);
    }

    if (v1[12])
    {
      v15 = MEMORY[0x277C97A10]();
      MEMORY[0x277C98580](v15, 0x10A1C40D4912B22);
    }

    if (v1[13])
    {
      v16 = MEMORY[0x277C97A10]();
      MEMORY[0x277C98580](v16, 0x10A1C40D4912B22);
    }

    if (v1[14])
    {
      v17 = MEMORY[0x277C97A10]();
      MEMORY[0x277C98580](v17, 0x10A1C40D4912B22);
    }

    if (v1[15])
    {
      v18 = MEMORY[0x277C97910]();
      MEMORY[0x277C98580](v18, 0x10A1C40D4912B22);
    }

    if (v1[16])
    {
      v19 = MEMORY[0x277C97A10]();
      MEMORY[0x277C98580](v19, 0x10A1C40D4912B22);
    }

    if (v1[17])
    {
      v20 = MEMORY[0x277C97910]();
      MEMORY[0x277C98580](v20, 0x10A1C40D4912B22);
    }

    if (v1[18])
    {
      v21 = MEMORY[0x277C97910]();
      MEMORY[0x277C98580](v21, 0x10A1C40D4912B22);
    }

    if (v1[19])
    {
      v22 = MEMORY[0x277C97910]();
      MEMORY[0x277C98580](v22, 0x10A1C40D4912B22);
    }

    if (v1[20])
    {
      v23 = MEMORY[0x277C97910]();
      MEMORY[0x277C98580](v23, 0x10A1C40D4912B22);
    }

    if (v1[21])
    {
      v24 = MEMORY[0x277C97910]();
      MEMORY[0x277C98580](v24, 0x10A1C40D4912B22);
    }

    if (v1[22])
    {
      v25 = MEMORY[0x277C97910]();
      MEMORY[0x277C98580](v25, 0x10A1C40D4912B22);
    }

    if (v1[23])
    {
      v26 = MEMORY[0x277C97910]();
      MEMORY[0x277C98580](v26, 0x10A1C40D4912B22);
    }

    if (v1[24])
    {
      v27 = MEMORY[0x277C979D0]();
      MEMORY[0x277C98580](v27, 0x10A1C40D4912B22);
    }

    if (v1[25])
    {
      v28 = MEMORY[0x277C979D0]();
      MEMORY[0x277C98580](v28, 0x10A1C40D4912B22);
    }

    v29 = v1[26];
    if (v29)
    {
      v30 = sub_276397BCC(v29);
      MEMORY[0x277C98580](v30, 0x10A1C40D4912B22);
    }

    result = v1[27];
    if (result)
    {
      sub_276397BCC(result);

      JUMPOUT(0x277C98580);
    }
  }

  return result;
}

void sub_276398FC0(uint64_t *a1)
{
  sub_276398D50(a1);

  JUMPOUT(0x277C98580);
}

google::protobuf::UnknownFieldSet *sub_276399000(google::protobuf::UnknownFieldSet *result)
{
  v1 = result;
  v2 = *(result + 4);
  if (!v2)
  {
    goto LABEL_11;
  }

  if (v2)
  {
    result = sub_27639822C(*(result + 4));
    if ((v2 & 2) == 0)
    {
LABEL_4:
      if ((v2 & 4) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_43;
    }
  }

  else if ((v2 & 2) == 0)
  {
    goto LABEL_4;
  }

  result = sub_276398810(*(v1 + 40));
  if ((v2 & 4) == 0)
  {
LABEL_5:
    if ((v2 & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_44;
  }

LABEL_43:
  result = TSSSOS::SpecIntegerArchive::Clear(*(v1 + 48));
  if ((v2 & 8) == 0)
  {
LABEL_6:
    if ((v2 & 0x10) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_45;
  }

LABEL_44:
  result = sub_27639822C(*(v1 + 56));
  if ((v2 & 0x10) == 0)
  {
LABEL_7:
    if ((v2 & 0x20) == 0)
    {
      goto LABEL_8;
    }

LABEL_46:
    result = TSSSOS::SpecDoubleArchive::Clear(*(v1 + 72));
    if ((v2 & 0x40) == 0)
    {
LABEL_9:
      if ((v2 & 0x80) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_10;
    }

    goto LABEL_47;
  }

LABEL_45:
  result = sub_27639822C(*(v1 + 64));
  if ((v2 & 0x20) != 0)
  {
    goto LABEL_46;
  }

LABEL_8:
  if ((v2 & 0x40) == 0)
  {
    goto LABEL_9;
  }

LABEL_47:
  result = sub_276398810(*(v1 + 80));
  if ((v2 & 0x80) != 0)
  {
LABEL_10:
    result = TSSSOS::SpecIntegerArchive::Clear(*(v1 + 88));
  }

LABEL_11:
  if ((v2 & 0xFF00) == 0)
  {
    goto LABEL_21;
  }

  if ((v2 & 0x100) != 0)
  {
    result = TSSSOS::SpecIntegerArchive::Clear(*(v1 + 96));
    if ((v2 & 0x200) == 0)
    {
LABEL_14:
      if ((v2 & 0x400) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_51;
    }
  }

  else if ((v2 & 0x200) == 0)
  {
    goto LABEL_14;
  }

  result = TSSSOS::SpecIntegerArchive::Clear(*(v1 + 104));
  if ((v2 & 0x400) == 0)
  {
LABEL_15:
    if ((v2 & 0x800) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_52;
  }

LABEL_51:
  result = TSSSOS::SpecIntegerArchive::Clear(*(v1 + 112));
  if ((v2 & 0x800) == 0)
  {
LABEL_16:
    if ((v2 & 0x1000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_53;
  }

LABEL_52:
  result = TSSSOS::SpecBoolArchive::Clear(*(v1 + 120));
  if ((v2 & 0x1000) == 0)
  {
LABEL_17:
    if ((v2 & 0x2000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_54;
  }

LABEL_53:
  result = TSSSOS::SpecIntegerArchive::Clear(*(v1 + 128));
  if ((v2 & 0x2000) == 0)
  {
LABEL_18:
    if ((v2 & 0x4000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_55;
  }

LABEL_54:
  result = TSSSOS::SpecBoolArchive::Clear(*(v1 + 136));
  if ((v2 & 0x4000) == 0)
  {
LABEL_19:
    if ((v2 & 0x8000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_20;
  }

LABEL_55:
  result = TSSSOS::SpecBoolArchive::Clear(*(v1 + 144));
  if ((v2 & 0x8000) != 0)
  {
LABEL_20:
    result = TSSSOS::SpecBoolArchive::Clear(*(v1 + 152));
  }

LABEL_21:
  if ((v2 & 0xFF0000) == 0)
  {
    goto LABEL_31;
  }

  if ((v2 & 0x10000) != 0)
  {
    result = TSSSOS::SpecBoolArchive::Clear(*(v1 + 160));
    if ((v2 & 0x20000) == 0)
    {
LABEL_24:
      if ((v2 & 0x40000) == 0)
      {
        goto LABEL_25;
      }

      goto LABEL_59;
    }
  }

  else if ((v2 & 0x20000) == 0)
  {
    goto LABEL_24;
  }

  result = TSSSOS::SpecBoolArchive::Clear(*(v1 + 168));
  if ((v2 & 0x40000) == 0)
  {
LABEL_25:
    if ((v2 & 0x80000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_60;
  }

LABEL_59:
  result = TSSSOS::SpecBoolArchive::Clear(*(v1 + 176));
  if ((v2 & 0x80000) == 0)
  {
LABEL_26:
    if ((v2 & 0x100000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_61;
  }

LABEL_60:
  result = TSSSOS::SpecBoolArchive::Clear(*(v1 + 184));
  if ((v2 & 0x100000) == 0)
  {
LABEL_27:
    if ((v2 & 0x200000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_62;
  }

LABEL_61:
  result = TSSSOS::SpecStringArchive::Clear(*(v1 + 192));
  if ((v2 & 0x200000) == 0)
  {
LABEL_28:
    if ((v2 & 0x400000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_63;
  }

LABEL_62:
  result = TSSSOS::SpecStringArchive::Clear(*(v1 + 200));
  if ((v2 & 0x400000) == 0)
  {
LABEL_29:
    if ((v2 & 0x800000) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_30;
  }

LABEL_63:
  result = sub_276397C70(*(v1 + 208));
  if ((v2 & 0x800000) != 0)
  {
LABEL_30:
    result = sub_276397C70(*(v1 + 216));
  }

LABEL_31:
  if (HIBYTE(v2))
  {
    *(v1 + 224) = 0;
  }

  v3 = *(v1 + 20);
  if (v3)
  {
    *(v1 + 232) = 0;
  }

  if ((v3 & 0xFF00) != 0)
  {
    *(v1 + 240) = 0;
  }

  v5 = *(v1 + 8);
  v4 = (v1 + 8);
  v4[1] = 0;
  if (v5)
  {

    return sub_2763D4FD4(v4);
  }

  return result;
}

google::protobuf::internal *sub_276399210(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v164 = a2;
  if ((sub_2763D4D98(a3, &v164, *(a3 + 92)) & 1) == 0)
  {
    while (1)
    {
      v6 = (v164 + 1);
      v7 = *v164;
      if (*v164 < 0)
      {
        v8 = v7 + (*v6 << 7);
        v7 = v8 - 128;
        if (*v6 < 0)
        {
          TagFallback = google::protobuf::internal::ReadTagFallback(v164, (v8 - 128));
          v164 = TagFallback;
          if (!TagFallback)
          {
            return 0;
          }

          v6 = TagFallback;
          v7 = v12;
          goto LABEL_7;
        }

        v6 = (v164 + 2);
      }

      v164 = v6;
LABEL_7:
      switch(v7 >> 3)
      {
        case 1u:
          if (v7 != 10)
          {
            goto LABEL_266;
          }

          *(a1 + 16) |= 1u;
          v9 = *(a1 + 32);
          if (v9)
          {
            goto LABEL_191;
          }

          v10 = *(a1 + 8);
          if (v10)
          {
            v10 = *(v10 & 0xFFFFFFFFFFFFFFFELL);
          }

          v9 = sub_2763D414C(v10);
          *(a1 + 32) = v9;
          goto LABEL_190;
        case 2u:
          if (v7 != 16)
          {
            goto LABEL_266;
          }

          *(a1 + 16) |= 0x1000000u;
          v66 = (v6 + 1);
          v65 = *v6;
          if ((v65 & 0x8000000000000000) == 0)
          {
            goto LABEL_131;
          }

          v67 = *v66;
          v65 = (v67 << 7) + v65 - 128;
          if (v67 < 0)
          {
            v140 = google::protobuf::internal::VarintParseSlow64(v6, v65);
            v164 = v140;
            *(a1 + 224) = v141 != 0;
            if (!v140)
            {
              return 0;
            }
          }

          else
          {
            v66 = (v6 + 2);
LABEL_131:
            v164 = v66;
            *(a1 + 224) = v65 != 0;
          }

          goto LABEL_257;
        case 3u:
          if (v7 != 26)
          {
            goto LABEL_266;
          }

          *(a1 + 16) |= 2u;
          v45 = *(a1 + 40);
          if (v45)
          {
            goto LABEL_111;
          }

          v54 = *(a1 + 8);
          if (v54)
          {
            v54 = *(v54 & 0xFFFFFFFFFFFFFFFELL);
          }

          v45 = sub_2763D4218(v54);
          *(a1 + 40) = v45;
          goto LABEL_110;
        case 4u:
          if (v7 != 32)
          {
            goto LABEL_266;
          }

          *(a1 + 16) |= 0x2000000u;
          v60 = (v6 + 1);
          v59 = *v6;
          if ((v59 & 0x8000000000000000) == 0)
          {
            goto LABEL_121;
          }

          v61 = *v60;
          v59 = (v61 << 7) + v59 - 128;
          if (v61 < 0)
          {
            v136 = google::protobuf::internal::VarintParseSlow64(v6, v59);
            v164 = v136;
            *(a1 + 225) = v137 != 0;
            if (!v136)
            {
              return 0;
            }
          }

          else
          {
            v60 = (v6 + 2);
LABEL_121:
            v164 = v60;
            *(a1 + 225) = v59 != 0;
          }

          goto LABEL_257;
        case 5u:
          if (v7 != 42)
          {
            goto LABEL_266;
          }

          *(a1 + 16) |= 4u;
          v31 = *(a1 + 48);
          if (v31)
          {
            goto LABEL_178;
          }

          v42 = *(a1 + 8);
          if (v42)
          {
            v42 = *(v42 & 0xFFFFFFFFFFFFFFFELL);
          }

          v31 = MEMORY[0x277C97C60](v42);
          *(a1 + 48) = v31;
          goto LABEL_177;
        case 6u:
          if (v7 != 48)
          {
            goto LABEL_266;
          }

          *(a1 + 16) |= 0x4000000u;
          v79 = (v6 + 1);
          v78 = *v6;
          if ((v78 & 0x8000000000000000) == 0)
          {
            goto LABEL_156;
          }

          v80 = *v79;
          v78 = (v80 << 7) + v78 - 128;
          if (v80 < 0)
          {
            v148 = google::protobuf::internal::VarintParseSlow64(v6, v78);
            v164 = v148;
            *(a1 + 226) = v149 != 0;
            if (!v148)
            {
              return 0;
            }
          }

          else
          {
            v79 = (v6 + 2);
LABEL_156:
            v164 = v79;
            *(a1 + 226) = v78 != 0;
          }

          goto LABEL_257;
        case 7u:
          if (v7 != 58)
          {
            goto LABEL_266;
          }

          *(a1 + 16) |= 8u;
          v9 = *(a1 + 56);
          if (v9)
          {
            goto LABEL_191;
          }

          v87 = *(a1 + 8);
          if (v87)
          {
            v87 = *(v87 & 0xFFFFFFFFFFFFFFFELL);
          }

          v9 = sub_2763D414C(v87);
          *(a1 + 56) = v9;
          goto LABEL_190;
        case 8u:
          if (v7 != 64)
          {
            goto LABEL_266;
          }

          *(a1 + 16) |= 0x8000000u;
          v63 = (v6 + 1);
          v62 = *v6;
          if ((v62 & 0x8000000000000000) == 0)
          {
            goto LABEL_126;
          }

          v64 = *v63;
          v62 = (v64 << 7) + v62 - 128;
          if (v64 < 0)
          {
            v138 = google::protobuf::internal::VarintParseSlow64(v6, v62);
            v164 = v138;
            *(a1 + 227) = v139 != 0;
            if (!v138)
            {
              return 0;
            }
          }

          else
          {
            v63 = (v6 + 2);
LABEL_126:
            v164 = v63;
            *(a1 + 227) = v62 != 0;
          }

          goto LABEL_257;
        case 9u:
          if (v7 != 74)
          {
            goto LABEL_266;
          }

          *(a1 + 16) |= 0x10u;
          v9 = *(a1 + 64);
          if (v9)
          {
            goto LABEL_191;
          }

          v91 = *(a1 + 8);
          if (v91)
          {
            v91 = *(v91 & 0xFFFFFFFFFFFFFFFELL);
          }

          v9 = sub_2763D414C(v91);
          *(a1 + 64) = v9;
LABEL_190:
          v6 = v164;
LABEL_191:
          v55 = sub_2764A92B8(a3, v9, v6);
          goto LABEL_256;
        case 0xAu:
          if (v7 != 80)
          {
            goto LABEL_266;
          }

          *(a1 + 16) |= 0x10000000u;
          v48 = (v6 + 1);
          v47 = *v6;
          if ((v47 & 0x8000000000000000) == 0)
          {
            goto LABEL_94;
          }

          v49 = *v48;
          v47 = (v49 << 7) + v47 - 128;
          if (v49 < 0)
          {
            v130 = google::protobuf::internal::VarintParseSlow64(v6, v47);
            v164 = v130;
            *(a1 + 228) = v131 != 0;
            if (!v130)
            {
              return 0;
            }
          }

          else
          {
            v48 = (v6 + 2);
LABEL_94:
            v164 = v48;
            *(a1 + 228) = v47 != 0;
          }

          goto LABEL_257;
        case 0xBu:
          if (v7 != 90)
          {
            goto LABEL_266;
          }

          *(a1 + 16) |= 0x20u;
          v89 = *(a1 + 72);
          if (!v89)
          {
            v90 = *(a1 + 8);
            if (v90)
            {
              v90 = *(v90 & 0xFFFFFFFFFFFFFFFELL);
            }

            v89 = MEMORY[0x277C97C40](v90);
            *(a1 + 72) = v89;
            v6 = v164;
          }

          v55 = sub_2764A9528(a3, v89, v6);
          goto LABEL_256;
        case 0xCu:
          if (v7 != 96)
          {
            goto LABEL_266;
          }

          *(a1 + 16) |= 0x20000000u;
          v40 = (v6 + 1);
          v39 = *v6;
          if ((v39 & 0x8000000000000000) == 0)
          {
            goto LABEL_74;
          }

          v41 = *v40;
          v39 = (v41 << 7) + v39 - 128;
          if (v41 < 0)
          {
            v128 = google::protobuf::internal::VarintParseSlow64(v6, v39);
            v164 = v128;
            *(a1 + 229) = v129 != 0;
            if (!v128)
            {
              return 0;
            }
          }

          else
          {
            v40 = (v6 + 2);
LABEL_74:
            v164 = v40;
            *(a1 + 229) = v39 != 0;
          }

          goto LABEL_257;
        case 0xDu:
          if (v7 != 106)
          {
            goto LABEL_266;
          }

          *(a1 + 16) |= 0x40u;
          v45 = *(a1 + 80);
          if (v45)
          {
            goto LABEL_111;
          }

          v46 = *(a1 + 8);
          if (v46)
          {
            v46 = *(v46 & 0xFFFFFFFFFFFFFFFELL);
          }

          v45 = sub_2763D4218(v46);
          *(a1 + 80) = v45;
LABEL_110:
          v6 = v164;
LABEL_111:
          v55 = sub_2764A9388(a3, v45, v6);
          goto LABEL_256;
        case 0xEu:
          if (v7 != 112)
          {
            goto LABEL_266;
          }

          *(a1 + 16) |= 0x40000000u;
          v85 = (v6 + 1);
          v84 = *v6;
          if ((v84 & 0x8000000000000000) == 0)
          {
            goto LABEL_166;
          }

          v86 = *v85;
          v84 = (v86 << 7) + v84 - 128;
          if (v86 < 0)
          {
            v152 = google::protobuf::internal::VarintParseSlow64(v6, v84);
            v164 = v152;
            *(a1 + 230) = v153 != 0;
            if (!v152)
            {
              return 0;
            }
          }

          else
          {
            v85 = (v6 + 2);
LABEL_166:
            v164 = v85;
            *(a1 + 230) = v84 != 0;
          }

          goto LABEL_257;
        case 0xFu:
          if (v7 != 122)
          {
            goto LABEL_266;
          }

          *(a1 + 16) |= 0x80u;
          v31 = *(a1 + 88);
          if (v31)
          {
            goto LABEL_178;
          }

          v35 = *(a1 + 8);
          if (v35)
          {
            v35 = *(v35 & 0xFFFFFFFFFFFFFFFELL);
          }

          v31 = MEMORY[0x277C97C60](v35);
          *(a1 + 88) = v31;
          goto LABEL_177;
        case 0x10u:
          if (v7 != 128)
          {
            goto LABEL_266;
          }

          *(a1 + 16) |= 0x80000000;
          v57 = (v6 + 1);
          v56 = *v6;
          if ((v56 & 0x8000000000000000) == 0)
          {
            goto LABEL_116;
          }

          v58 = *v57;
          v56 = (v58 << 7) + v56 - 128;
          if (v58 < 0)
          {
            v134 = google::protobuf::internal::VarintParseSlow64(v6, v56);
            v164 = v134;
            *(a1 + 231) = v135 != 0;
            if (!v134)
            {
              return 0;
            }
          }

          else
          {
            v57 = (v6 + 2);
LABEL_116:
            v164 = v57;
            *(a1 + 231) = v56 != 0;
          }

          goto LABEL_257;
        case 0x11u:
          if (v7 != 138)
          {
            goto LABEL_266;
          }

          *(a1 + 16) |= 0x100u;
          v31 = *(a1 + 96);
          if (v31)
          {
            goto LABEL_178;
          }

          v32 = *(a1 + 8);
          if (v32)
          {
            v32 = *(v32 & 0xFFFFFFFFFFFFFFFELL);
          }

          v31 = MEMORY[0x277C97C60](v32);
          *(a1 + 96) = v31;
          goto LABEL_177;
        case 0x12u:
          if (v7 != 144)
          {
            goto LABEL_266;
          }

          *(a1 + 20) |= 1u;
          v72 = (v6 + 1);
          v71 = *v6;
          if ((v71 & 0x8000000000000000) == 0)
          {
            goto LABEL_141;
          }

          v73 = *v72;
          v71 = (v73 << 7) + v71 - 128;
          if (v73 < 0)
          {
            v144 = google::protobuf::internal::VarintParseSlow64(v6, v71);
            v164 = v144;
            *(a1 + 232) = v145 != 0;
            if (!v144)
            {
              return 0;
            }
          }

          else
          {
            v72 = (v6 + 2);
LABEL_141:
            v164 = v72;
            *(a1 + 232) = v71 != 0;
          }

          goto LABEL_257;
        case 0x13u:
          if (v7 != 154)
          {
            goto LABEL_266;
          }

          *(a1 + 16) |= 0x200u;
          v31 = *(a1 + 104);
          if (v31)
          {
            goto LABEL_178;
          }

          v88 = *(a1 + 8);
          if (v88)
          {
            v88 = *(v88 & 0xFFFFFFFFFFFFFFFELL);
          }

          v31 = MEMORY[0x277C97C60](v88);
          *(a1 + 104) = v31;
          goto LABEL_177;
        case 0x14u:
          if (v7 != 160)
          {
            goto LABEL_266;
          }

          *(a1 + 20) |= 2u;
          v102 = (v6 + 1);
          v101 = *v6;
          if ((v101 & 0x8000000000000000) == 0)
          {
            goto LABEL_221;
          }

          v103 = *v102;
          v101 = (v103 << 7) + v101 - 128;
          if (v103 < 0)
          {
            v158 = google::protobuf::internal::VarintParseSlow64(v6, v101);
            v164 = v158;
            *(a1 + 233) = v159 != 0;
            if (!v158)
            {
              return 0;
            }
          }

          else
          {
            v102 = (v6 + 2);
LABEL_221:
            v164 = v102;
            *(a1 + 233) = v101 != 0;
          }

          goto LABEL_257;
        case 0x15u:
          if (v7 != 170)
          {
            goto LABEL_266;
          }

          *(a1 + 16) |= 0x400u;
          v31 = *(a1 + 112);
          if (v31)
          {
            goto LABEL_178;
          }

          v77 = *(a1 + 8);
          if (v77)
          {
            v77 = *(v77 & 0xFFFFFFFFFFFFFFFELL);
          }

          v31 = MEMORY[0x277C97C60](v77);
          *(a1 + 112) = v31;
          goto LABEL_177;
        case 0x16u:
          if (v7 != 176)
          {
            goto LABEL_266;
          }

          *(a1 + 20) |= 4u;
          v82 = (v6 + 1);
          v81 = *v6;
          if ((v81 & 0x8000000000000000) == 0)
          {
            goto LABEL_161;
          }

          v83 = *v82;
          v81 = (v83 << 7) + v81 - 128;
          if (v83 < 0)
          {
            v150 = google::protobuf::internal::VarintParseSlow64(v6, v81);
            v164 = v150;
            *(a1 + 234) = v151 != 0;
            if (!v150)
            {
              return 0;
            }
          }

          else
          {
            v82 = (v6 + 2);
LABEL_161:
            v164 = v82;
            *(a1 + 234) = v81 != 0;
          }

          goto LABEL_257;
        case 0x17u:
          if (v7 != 186)
          {
            goto LABEL_266;
          }

          *(a1 + 16) |= 0x800u;
          v25 = *(a1 + 120);
          if (v25)
          {
            goto LABEL_255;
          }

          v97 = *(a1 + 8);
          if (v97)
          {
            v97 = *(v97 & 0xFFFFFFFFFFFFFFFELL);
          }

          v25 = MEMORY[0x277C97C20](v97);
          *(a1 + 120) = v25;
          goto LABEL_254;
        case 0x18u:
          if (v7 != 192)
          {
            goto LABEL_266;
          }

          *(a1 + 20) |= 8u;
          v106 = (v6 + 1);
          v105 = *v6;
          if ((v105 & 0x8000000000000000) == 0)
          {
            goto LABEL_233;
          }

          v107 = *v106;
          v105 = (v107 << 7) + v105 - 128;
          if (v107 < 0)
          {
            v160 = google::protobuf::internal::VarintParseSlow64(v6, v105);
            v164 = v160;
            *(a1 + 235) = v161 != 0;
            if (!v160)
            {
              return 0;
            }
          }

          else
          {
            v106 = (v6 + 2);
LABEL_233:
            v164 = v106;
            *(a1 + 235) = v105 != 0;
          }

          goto LABEL_257;
        case 0x19u:
          if (v7 != 202)
          {
            goto LABEL_266;
          }

          *(a1 + 16) |= 0x1000u;
          v31 = *(a1 + 128);
          if (v31)
          {
            goto LABEL_178;
          }

          v53 = *(a1 + 8);
          if (v53)
          {
            v53 = *(v53 & 0xFFFFFFFFFFFFFFFELL);
          }

          v31 = MEMORY[0x277C97C60](v53);
          *(a1 + 128) = v31;
LABEL_177:
          v6 = v164;
LABEL_178:
          v55 = sub_2764A9458(a3, v31, v6);
          goto LABEL_256;
        case 0x1Au:
          if (v7 != 208)
          {
            goto LABEL_266;
          }

          *(a1 + 20) |= 0x10u;
          v51 = (v6 + 1);
          v50 = *v6;
          if ((v50 & 0x8000000000000000) == 0)
          {
            goto LABEL_99;
          }

          v52 = *v51;
          v50 = (v52 << 7) + v50 - 128;
          if (v52 < 0)
          {
            v132 = google::protobuf::internal::VarintParseSlow64(v6, v50);
            v164 = v132;
            *(a1 + 236) = v133 != 0;
            if (!v132)
            {
              return 0;
            }
          }

          else
          {
            v51 = (v6 + 2);
LABEL_99:
            v164 = v51;
            *(a1 + 236) = v50 != 0;
          }

          goto LABEL_257;
        case 0x1Bu:
          if (v7 != 218)
          {
            goto LABEL_266;
          }

          *(a1 + 16) |= 0x2000u;
          v25 = *(a1 + 136);
          if (v25)
          {
            goto LABEL_255;
          }

          v113 = *(a1 + 8);
          if (v113)
          {
            v113 = *(v113 & 0xFFFFFFFFFFFFFFFELL);
          }

          v25 = MEMORY[0x277C97C20](v113);
          *(a1 + 136) = v25;
          goto LABEL_254;
        case 0x1Cu:
          if (v7 != 224)
          {
            goto LABEL_266;
          }

          *(a1 + 20) |= 0x20u;
          v28 = (v6 + 1);
          v27 = *v6;
          if ((v27 & 0x8000000000000000) == 0)
          {
            goto LABEL_44;
          }

          v29 = *v28;
          v27 = (v29 << 7) + v27 - 128;
          if (v29 < 0)
          {
            v124 = google::protobuf::internal::VarintParseSlow64(v6, v27);
            v164 = v124;
            *(a1 + 237) = v125 != 0;
            if (!v124)
            {
              return 0;
            }
          }

          else
          {
            v28 = (v6 + 2);
LABEL_44:
            v164 = v28;
            *(a1 + 237) = v27 != 0;
          }

          goto LABEL_257;
        case 0x1Du:
          if (v7 != 234)
          {
            goto LABEL_266;
          }

          *(a1 + 16) |= 0x4000u;
          v25 = *(a1 + 144);
          if (v25)
          {
            goto LABEL_255;
          }

          v108 = *(a1 + 8);
          if (v108)
          {
            v108 = *(v108 & 0xFFFFFFFFFFFFFFFELL);
          }

          v25 = MEMORY[0x277C97C20](v108);
          *(a1 + 144) = v25;
          goto LABEL_254;
        case 0x1Eu:
          if (v7 != 240)
          {
            goto LABEL_266;
          }

          *(a1 + 20) |= 0x40u;
          v110 = (v6 + 1);
          v109 = *v6;
          if ((v109 & 0x8000000000000000) == 0)
          {
            goto LABEL_243;
          }

          v111 = *v110;
          v109 = (v111 << 7) + v109 - 128;
          if (v111 < 0)
          {
            v162 = google::protobuf::internal::VarintParseSlow64(v6, v109);
            v164 = v162;
            *(a1 + 238) = v163 != 0;
            if (!v162)
            {
              return 0;
            }
          }

          else
          {
            v110 = (v6 + 2);
LABEL_243:
            v164 = v110;
            *(a1 + 238) = v109 != 0;
          }

          goto LABEL_257;
        case 0x1Fu:
          if (v7 != 250)
          {
            goto LABEL_266;
          }

          *(a1 + 16) |= 0x8000u;
          v25 = *(a1 + 152);
          if (v25)
          {
            goto LABEL_255;
          }

          v92 = *(a1 + 8);
          if (v92)
          {
            v92 = *(v92 & 0xFFFFFFFFFFFFFFFELL);
          }

          v25 = MEMORY[0x277C97C20](v92);
          *(a1 + 152) = v25;
          goto LABEL_254;
        case 0x20u:
          if (v7)
          {
            goto LABEL_266;
          }

          *(a1 + 20) |= 0x80u;
          v69 = (v6 + 1);
          v68 = *v6;
          if ((v68 & 0x8000000000000000) == 0)
          {
            goto LABEL_136;
          }

          v70 = *v69;
          v68 = (v70 << 7) + v68 - 128;
          if (v70 < 0)
          {
            v142 = google::protobuf::internal::VarintParseSlow64(v6, v68);
            v164 = v142;
            *(a1 + 239) = v143 != 0;
            if (!v142)
            {
              return 0;
            }
          }

          else
          {
            v69 = (v6 + 2);
LABEL_136:
            v164 = v69;
            *(a1 + 239) = v68 != 0;
          }

          goto LABEL_257;
        case 0x21u:
          if (v7 != 10)
          {
            goto LABEL_266;
          }

          *(a1 + 16) |= 0x10000u;
          v25 = *(a1 + 160);
          if (v25)
          {
            goto LABEL_255;
          }

          v93 = *(a1 + 8);
          if (v93)
          {
            v93 = *(v93 & 0xFFFFFFFFFFFFFFFELL);
          }

          v25 = MEMORY[0x277C97C20](v93);
          *(a1 + 160) = v25;
          goto LABEL_254;
        case 0x22u:
          if (v7 != 16)
          {
            goto LABEL_266;
          }

          *(a1 + 20) |= 0x100u;
          v37 = (v6 + 1);
          v36 = *v6;
          if ((v36 & 0x8000000000000000) == 0)
          {
            goto LABEL_69;
          }

          v38 = *v37;
          v36 = (v38 << 7) + v36 - 128;
          if (v38 < 0)
          {
            v126 = google::protobuf::internal::VarintParseSlow64(v6, v36);
            v164 = v126;
            *(a1 + 240) = v127 != 0;
            if (!v126)
            {
              return 0;
            }
          }

          else
          {
            v37 = (v6 + 2);
LABEL_69:
            v164 = v37;
            *(a1 + 240) = v36 != 0;
          }

          goto LABEL_257;
        case 0x23u:
          if (v7 != 26)
          {
            goto LABEL_266;
          }

          *(a1 + 16) |= 0x20000u;
          v25 = *(a1 + 168);
          if (v25)
          {
            goto LABEL_255;
          }

          v30 = *(a1 + 8);
          if (v30)
          {
            v30 = *(v30 & 0xFFFFFFFFFFFFFFFELL);
          }

          v25 = MEMORY[0x277C97C20](v30);
          *(a1 + 168) = v25;
          goto LABEL_254;
        case 0x24u:
          if (v7 != 32)
          {
            goto LABEL_266;
          }

          *(a1 + 20) |= 0x200u;
          v23 = (v6 + 1);
          v22 = *v6;
          if ((v22 & 0x8000000000000000) == 0)
          {
            goto LABEL_34;
          }

          v24 = *v23;
          v22 = (v24 << 7) + v22 - 128;
          if (v24 < 0)
          {
            v122 = google::protobuf::internal::VarintParseSlow64(v6, v22);
            v164 = v122;
            *(a1 + 241) = v123 != 0;
            if (!v122)
            {
              return 0;
            }
          }

          else
          {
            v23 = (v6 + 2);
LABEL_34:
            v164 = v23;
            *(a1 + 241) = v22 != 0;
          }

          goto LABEL_257;
        case 0x25u:
          if (v7 != 42)
          {
            goto LABEL_266;
          }

          *(a1 + 16) |= 0x40000u;
          v25 = *(a1 + 176);
          if (v25)
          {
            goto LABEL_255;
          }

          v26 = *(a1 + 8);
          if (v26)
          {
            v26 = *(v26 & 0xFFFFFFFFFFFFFFFELL);
          }

          v25 = MEMORY[0x277C97C20](v26);
          *(a1 + 176) = v25;
          goto LABEL_254;
        case 0x26u:
          if (v7 != 48)
          {
            goto LABEL_266;
          }

          *(a1 + 20) |= 0x400u;
          v17 = (v6 + 1);
          v16 = *v6;
          if ((v16 & 0x8000000000000000) == 0)
          {
            goto LABEL_24;
          }

          v18 = *v17;
          v16 = (v18 << 7) + v16 - 128;
          if (v18 < 0)
          {
            v118 = google::protobuf::internal::VarintParseSlow64(v6, v16);
            v164 = v118;
            *(a1 + 242) = v119 != 0;
            if (!v118)
            {
              return 0;
            }
          }

          else
          {
            v17 = (v6 + 2);
LABEL_24:
            v164 = v17;
            *(a1 + 242) = v16 != 0;
          }

          goto LABEL_257;
        case 0x27u:
          if (v7 != 58)
          {
            goto LABEL_266;
          }

          *(a1 + 16) |= 0x80000u;
          v25 = *(a1 + 184);
          if (v25)
          {
            goto LABEL_255;
          }

          v112 = *(a1 + 8);
          if (v112)
          {
            v112 = *(v112 & 0xFFFFFFFFFFFFFFFELL);
          }

          v25 = MEMORY[0x277C97C20](v112);
          *(a1 + 184) = v25;
LABEL_254:
          v6 = v164;
LABEL_255:
          v55 = sub_2764A95F8(a3, v25, v6);
          goto LABEL_256;
        case 0x28u:
          if (v7 != 64)
          {
            goto LABEL_266;
          }

          *(a1 + 20) |= 0x800u;
          v99 = (v6 + 1);
          v98 = *v6;
          if ((v98 & 0x8000000000000000) == 0)
          {
            goto LABEL_216;
          }

          v100 = *v99;
          v98 = (v100 << 7) + v98 - 128;
          if (v100 < 0)
          {
            v156 = google::protobuf::internal::VarintParseSlow64(v6, v98);
            v164 = v156;
            *(a1 + 243) = v157 != 0;
            if (!v156)
            {
              return 0;
            }
          }

          else
          {
            v99 = (v6 + 2);
LABEL_216:
            v164 = v99;
            *(a1 + 243) = v98 != 0;
          }

          goto LABEL_257;
        case 0x29u:
          if (v7 != 74)
          {
            goto LABEL_266;
          }

          *(a1 + 16) |= 0x100000u;
          v43 = *(a1 + 192);
          if (v43)
          {
            goto LABEL_228;
          }

          v44 = *(a1 + 8);
          if (v44)
          {
            v44 = *(v44 & 0xFFFFFFFFFFFFFFFELL);
          }

          v43 = MEMORY[0x277C97C50](v44);
          *(a1 + 192) = v43;
          goto LABEL_227;
        case 0x2Au:
          if (v7 != 80)
          {
            goto LABEL_266;
          }

          *(a1 + 20) |= 0x1000u;
          v75 = (v6 + 1);
          v74 = *v6;
          if ((v74 & 0x8000000000000000) == 0)
          {
            goto LABEL_146;
          }

          v76 = *v75;
          v74 = (v76 << 7) + v74 - 128;
          if (v76 < 0)
          {
            v146 = google::protobuf::internal::VarintParseSlow64(v6, v74);
            v164 = v146;
            *(a1 + 244) = v147 != 0;
            if (!v146)
            {
              return 0;
            }
          }

          else
          {
            v75 = (v6 + 2);
LABEL_146:
            v164 = v75;
            *(a1 + 244) = v74 != 0;
          }

          goto LABEL_257;
        case 0x2Bu:
          if (v7 != 90)
          {
            goto LABEL_266;
          }

          *(a1 + 16) |= 0x200000u;
          v43 = *(a1 + 200);
          if (v43)
          {
            goto LABEL_228;
          }

          v104 = *(a1 + 8);
          if (v104)
          {
            v104 = *(v104 & 0xFFFFFFFFFFFFFFFELL);
          }

          v43 = MEMORY[0x277C97C50](v104);
          *(a1 + 200) = v43;
LABEL_227:
          v6 = v164;
LABEL_228:
          v55 = sub_2764A96C8(a3, v43, v6);
          goto LABEL_256;
        case 0x2Cu:
          if (v7 != 96)
          {
            goto LABEL_266;
          }

          *(a1 + 20) |= 0x2000u;
          v14 = (v6 + 1);
          v13 = *v6;
          if ((v13 & 0x8000000000000000) == 0)
          {
            goto LABEL_19;
          }

          v15 = *v14;
          v13 = (v15 << 7) + v13 - 128;
          if (v15 < 0)
          {
            v116 = google::protobuf::internal::VarintParseSlow64(v6, v13);
            v164 = v116;
            *(a1 + 245) = v117 != 0;
            if (!v116)
            {
              return 0;
            }
          }

          else
          {
            v14 = (v6 + 2);
LABEL_19:
            v164 = v14;
            *(a1 + 245) = v13 != 0;
          }

          goto LABEL_257;
        case 0x2Du:
          if (v7 != 106)
          {
            goto LABEL_266;
          }

          *(a1 + 16) |= 0x400000u;
          v33 = *(a1 + 208);
          if (v33)
          {
            goto LABEL_265;
          }

          v34 = *(a1 + 8);
          if (v34)
          {
            v34 = *(v34 & 0xFFFFFFFFFFFFFFFELL);
          }

          v33 = sub_2763D4080(v34);
          *(a1 + 208) = v33;
          goto LABEL_264;
        case 0x2Eu:
          if (v7 != 112)
          {
            goto LABEL_266;
          }

          *(a1 + 20) |= 0x4000u;
          v95 = (v6 + 1);
          v94 = *v6;
          if ((v94 & 0x8000000000000000) == 0)
          {
            goto LABEL_206;
          }

          v96 = *v95;
          v94 = (v96 << 7) + v94 - 128;
          if (v96 < 0)
          {
            v154 = google::protobuf::internal::VarintParseSlow64(v6, v94);
            v164 = v154;
            *(a1 + 246) = v155 != 0;
            if (!v154)
            {
              return 0;
            }
          }

          else
          {
            v95 = (v6 + 2);
LABEL_206:
            v164 = v95;
            *(a1 + 246) = v94 != 0;
          }

          goto LABEL_257;
        case 0x2Fu:
          if (v7 != 122)
          {
            goto LABEL_266;
          }

          *(a1 + 16) |= 0x800000u;
          v33 = *(a1 + 216);
          if (v33)
          {
            goto LABEL_265;
          }

          v114 = *(a1 + 8);
          if (v114)
          {
            v114 = *(v114 & 0xFFFFFFFFFFFFFFFELL);
          }

          v33 = sub_2763D4080(v114);
          *(a1 + 216) = v33;
LABEL_264:
          v6 = v164;
LABEL_265:
          v55 = sub_2764A9798(a3, v33, v6);
          goto LABEL_256;
        case 0x30u:
          if (v7 != 128)
          {
            goto LABEL_266;
          }

          *(a1 + 20) |= 0x8000u;
          v20 = (v6 + 1);
          v19 = *v6;
          if ((v19 & 0x8000000000000000) == 0)
          {
            goto LABEL_29;
          }

          v21 = *v20;
          v19 = (v21 << 7) + v19 - 128;
          if (v21 < 0)
          {
            v120 = google::protobuf::internal::VarintParseSlow64(v6, v19);
            v164 = v120;
            *(a1 + 247) = v121 != 0;
            if (!v120)
            {
              return 0;
            }
          }

          else
          {
            v20 = (v6 + 2);
LABEL_29:
            v164 = v20;
            *(a1 + 247) = v19 != 0;
          }

          goto LABEL_257;
        default:
LABEL_266:
          if (v7)
          {
            v115 = (v7 & 7) == 4;
          }

          else
          {
            v115 = 1;
          }

          if (v115)
          {
            *(a3 + 80) = v7 - 1;
            return v164;
          }

          if ((*(a1 + 8) & 1) == 0)
          {
            sub_2763D4E10((a1 + 8));
          }

          v55 = google::protobuf::internal::UnknownFieldParse();
LABEL_256:
          v164 = v55;
          if (!v55)
          {
            return 0;
          }

LABEL_257:
          if (sub_2763D4D98(a3, &v164, *(a3 + 92)))
          {
            return v164;
          }

          break;
      }
    }
  }

  return v164;
}

unsigned __int8 *sub_27639A5A0(uint64_t a1, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *this)
{
  v5 = *(a1 + 16);
  if (v5)
  {
    if (*this <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
    }

    v6 = *(a1 + 32);
    *a2 = 10;
    v7 = *(v6 + 20);
    if (v7 > 0x7F)
    {
      a2[1] = v7 | 0x80;
      v9 = v7 >> 7;
      if (v7 >> 14)
      {
        v8 = a2 + 3;
        do
        {
          *(v8 - 1) = v9 | 0x80;
          v10 = v9 >> 7;
          ++v8;
          v11 = v9 >> 14;
          v9 >>= 7;
        }

        while (v11);
        *(v8 - 1) = v10;
      }

      else
      {
        a2[2] = v9;
        v8 = a2 + 3;
      }
    }

    else
    {
      a2[1] = v7;
      v8 = a2 + 2;
    }

    a2 = sub_2763983D0(v6, v8, this);
    if ((v5 & 0x1000000) == 0)
    {
LABEL_3:
      if ((v5 & 2) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_32;
    }
  }

  else if ((v5 & 0x1000000) == 0)
  {
    goto LABEL_3;
  }

  if (*this <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
  }

  v12 = *(a1 + 224);
  *a2 = 16;
  a2[1] = v12;
  a2 += 2;
  if ((v5 & 2) == 0)
  {
LABEL_4:
    if ((v5 & 0x2000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_42;
  }

LABEL_32:
  if (*this <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
  }

  v13 = *(a1 + 40);
  *a2 = 26;
  v14 = *(v13 + 20);
  if (v14 > 0x7F)
  {
    a2[1] = v14 | 0x80;
    v16 = v14 >> 7;
    if (v14 >> 14)
    {
      v15 = a2 + 3;
      do
      {
        *(v15 - 1) = v16 | 0x80;
        v17 = v16 >> 7;
        ++v15;
        v18 = v16 >> 14;
        v16 >>= 7;
      }

      while (v18);
      *(v15 - 1) = v17;
    }

    else
    {
      a2[2] = v16;
      v15 = a2 + 3;
    }
  }

  else
  {
    a2[1] = v14;
    v15 = a2 + 2;
  }

  a2 = sub_2763989B4(v13, v15, this);
  if ((v5 & 0x2000000) == 0)
  {
LABEL_5:
    if ((v5 & 4) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_45;
  }

LABEL_42:
  if (*this <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
  }

  v19 = *(a1 + 225);
  *a2 = 32;
  a2[1] = v19;
  a2 += 2;
  if ((v5 & 4) == 0)
  {
LABEL_6:
    if ((v5 & 0x4000000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_55;
  }

LABEL_45:
  if (*this <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
  }

  v20 = *(a1 + 48);
  *a2 = 42;
  v21 = *(v20 + 5);
  if (v21 > 0x7F)
  {
    a2[1] = v21 | 0x80;
    v23 = v21 >> 7;
    if (v21 >> 14)
    {
      v22 = a2 + 3;
      do
      {
        *(v22 - 1) = v23 | 0x80;
        v24 = v23 >> 7;
        ++v22;
        v25 = v23 >> 14;
        v23 >>= 7;
      }

      while (v25);
      *(v22 - 1) = v24;
    }

    else
    {
      a2[2] = v23;
      v22 = a2 + 3;
    }
  }

  else
  {
    a2[1] = v21;
    v22 = a2 + 2;
  }

  a2 = TSSSOS::SpecIntegerArchive::_InternalSerialize(v20, v22, this);
  if ((v5 & 0x4000000) == 0)
  {
LABEL_7:
    if ((v5 & 8) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_58;
  }

LABEL_55:
  if (*this <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
  }

  v26 = *(a1 + 226);
  *a2 = 48;
  a2[1] = v26;
  a2 += 2;
  if ((v5 & 8) == 0)
  {
LABEL_8:
    if ((v5 & 0x8000000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_68;
  }

LABEL_58:
  if (*this <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
  }

  v27 = *(a1 + 56);
  *a2 = 58;
  v28 = *(v27 + 20);
  if (v28 > 0x7F)
  {
    a2[1] = v28 | 0x80;
    v30 = v28 >> 7;
    if (v28 >> 14)
    {
      v29 = a2 + 3;
      do
      {
        *(v29 - 1) = v30 | 0x80;
        v31 = v30 >> 7;
        ++v29;
        v32 = v30 >> 14;
        v30 >>= 7;
      }

      while (v32);
      *(v29 - 1) = v31;
    }

    else
    {
      a2[2] = v30;
      v29 = a2 + 3;
    }
  }

  else
  {
    a2[1] = v28;
    v29 = a2 + 2;
  }

  a2 = sub_2763983D0(v27, v29, this);
  if ((v5 & 0x8000000) == 0)
  {
LABEL_9:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_71;
  }

LABEL_68:
  if (*this <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
  }

  v33 = *(a1 + 227);
  *a2 = 64;
  a2[1] = v33;
  a2 += 2;
  if ((v5 & 0x10) == 0)
  {
LABEL_10:
    if ((v5 & 0x10000000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_81;
  }

LABEL_71:
  if (*this <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
  }

  v34 = *(a1 + 64);
  *a2 = 74;
  v35 = *(v34 + 20);
  if (v35 > 0x7F)
  {
    a2[1] = v35 | 0x80;
    v37 = v35 >> 7;
    if (v35 >> 14)
    {
      v36 = a2 + 3;
      do
      {
        *(v36 - 1) = v37 | 0x80;
        v38 = v37 >> 7;
        ++v36;
        v39 = v37 >> 14;
        v37 >>= 7;
      }

      while (v39);
      *(v36 - 1) = v38;
    }

    else
    {
      a2[2] = v37;
      v36 = a2 + 3;
    }
  }

  else
  {
    a2[1] = v35;
    v36 = a2 + 2;
  }

  a2 = sub_2763983D0(v34, v36, this);
  if ((v5 & 0x10000000) == 0)
  {
LABEL_11:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_84;
  }

LABEL_81:
  if (*this <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
  }

  v40 = *(a1 + 228);
  *a2 = 80;
  a2[1] = v40;
  a2 += 2;
  if ((v5 & 0x20) == 0)
  {
LABEL_12:
    if ((v5 & 0x20000000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_94;
  }

LABEL_84:
  if (*this <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
  }

  v41 = *(a1 + 72);
  *a2 = 90;
  v42 = *(v41 + 5);
  if (v42 > 0x7F)
  {
    a2[1] = v42 | 0x80;
    v44 = v42 >> 7;
    if (v42 >> 14)
    {
      v43 = a2 + 3;
      do
      {
        *(v43 - 1) = v44 | 0x80;
        v45 = v44 >> 7;
        ++v43;
        v46 = v44 >> 14;
        v44 >>= 7;
      }

      while (v46);
      *(v43 - 1) = v45;
    }

    else
    {
      a2[2] = v44;
      v43 = a2 + 3;
    }
  }

  else
  {
    a2[1] = v42;
    v43 = a2 + 2;
  }

  a2 = TSSSOS::SpecDoubleArchive::_InternalSerialize(v41, v43, this);
  if ((v5 & 0x20000000) == 0)
  {
LABEL_13:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_97;
  }

LABEL_94:
  if (*this <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
  }

  v47 = *(a1 + 229);
  *a2 = 96;
  a2[1] = v47;
  a2 += 2;
  if ((v5 & 0x40) == 0)
  {
LABEL_14:
    if ((v5 & 0x40000000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_107;
  }

LABEL_97:
  if (*this <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
  }

  v48 = *(a1 + 80);
  *a2 = 106;
  v49 = *(v48 + 20);
  if (v49 > 0x7F)
  {
    a2[1] = v49 | 0x80;
    v51 = v49 >> 7;
    if (v49 >> 14)
    {
      v50 = a2 + 3;
      do
      {
        *(v50 - 1) = v51 | 0x80;
        v52 = v51 >> 7;
        ++v50;
        v53 = v51 >> 14;
        v51 >>= 7;
      }

      while (v53);
      *(v50 - 1) = v52;
    }

    else
    {
      a2[2] = v51;
      v50 = a2 + 3;
    }
  }

  else
  {
    a2[1] = v49;
    v50 = a2 + 2;
  }

  a2 = sub_2763989B4(v48, v50, this);
  if ((v5 & 0x40000000) == 0)
  {
LABEL_15:
    if ((v5 & 0x80) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_110;
  }

LABEL_107:
  if (*this <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
  }

  v54 = *(a1 + 230);
  *a2 = 112;
  a2[1] = v54;
  a2 += 2;
  if ((v5 & 0x80) == 0)
  {
LABEL_16:
    if ((v5 & 0x80000000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_120;
  }

LABEL_110:
  if (*this <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
  }

  v55 = *(a1 + 88);
  *a2 = 122;
  v56 = *(v55 + 5);
  if (v56 > 0x7F)
  {
    a2[1] = v56 | 0x80;
    v58 = v56 >> 7;
    if (v56 >> 14)
    {
      v57 = a2 + 3;
      do
      {
        *(v57 - 1) = v58 | 0x80;
        v59 = v58 >> 7;
        ++v57;
        v60 = v58 >> 14;
        v58 >>= 7;
      }

      while (v60);
      *(v57 - 1) = v59;
    }

    else
    {
      a2[2] = v58;
      v57 = a2 + 3;
    }
  }

  else
  {
    a2[1] = v56;
    v57 = a2 + 2;
  }

  a2 = TSSSOS::SpecIntegerArchive::_InternalSerialize(v55, v57, this);
  if ((v5 & 0x80000000) == 0)
  {
LABEL_17:
    if ((v5 & 0x100) == 0)
    {
      goto LABEL_133;
    }

    goto LABEL_123;
  }

LABEL_120:
  if (*this <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
  }

  v61 = *(a1 + 231);
  *a2 = 384;
  a2[2] = v61;
  a2 += 3;
  if ((v5 & 0x100) != 0)
  {
LABEL_123:
    if (*this <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
    }

    v62 = *(a1 + 96);
    *a2 = 394;
    v63 = *(v62 + 5);
    if (v63 > 0x7F)
    {
      a2[2] = v63 | 0x80;
      v65 = v63 >> 7;
      if (v63 >> 14)
      {
        v64 = a2 + 4;
        do
        {
          *(v64 - 1) = v65 | 0x80;
          v66 = v65 >> 7;
          ++v64;
          v67 = v65 >> 14;
          v65 >>= 7;
        }

        while (v67);
        *(v64 - 1) = v66;
      }

      else
      {
        a2[3] = v65;
        v64 = a2 + 4;
      }
    }

    else
    {
      a2[2] = v63;
      v64 = a2 + 3;
    }

    a2 = TSSSOS::SpecIntegerArchive::_InternalSerialize(v62, v64, this);
  }

LABEL_133:
  if (*(a1 + 20))
  {
    if (*this <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
    }

    v68 = *(a1 + 232);
    *a2 = 400;
    a2[2] = v68;
    a2 += 3;
  }

  if ((*(a1 + 17) & 2) != 0)
  {
    if (*this <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
    }

    v69 = *(a1 + 104);
    *a2 = 410;
    v70 = *(v69 + 5);
    if (v70 > 0x7F)
    {
      a2[2] = v70 | 0x80;
      v72 = v70 >> 7;
      if (v70 >> 14)
      {
        v71 = a2 + 4;
        do
        {
          *(v71 - 1) = v72 | 0x80;
          v73 = v72 >> 7;
          ++v71;
          v74 = v72 >> 14;
          v72 >>= 7;
        }

        while (v74);
        *(v71 - 1) = v73;
      }

      else
      {
        a2[3] = v72;
        v71 = a2 + 4;
      }
    }

    else
    {
      a2[2] = v70;
      v71 = a2 + 3;
    }

    a2 = TSSSOS::SpecIntegerArchive::_InternalSerialize(v69, v71, this);
  }

  if ((*(a1 + 20) & 2) != 0)
  {
    if (*this <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
    }

    v75 = *(a1 + 233);
    *a2 = 416;
    a2[2] = v75;
    a2 += 3;
  }

  if ((*(a1 + 17) & 4) != 0)
  {
    if (*this <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
    }

    v76 = *(a1 + 112);
    *a2 = 426;
    v77 = *(v76 + 5);
    if (v77 > 0x7F)
    {
      a2[2] = v77 | 0x80;
      v79 = v77 >> 7;
      if (v77 >> 14)
      {
        v78 = a2 + 4;
        do
        {
          *(v78 - 1) = v79 | 0x80;
          v80 = v79 >> 7;
          ++v78;
          v81 = v79 >> 14;
          v79 >>= 7;
        }

        while (v81);
        *(v78 - 1) = v80;
      }

      else
      {
        a2[3] = v79;
        v78 = a2 + 4;
      }
    }

    else
    {
      a2[2] = v77;
      v78 = a2 + 3;
    }

    a2 = TSSSOS::SpecIntegerArchive::_InternalSerialize(v76, v78, this);
  }

  if ((*(a1 + 20) & 4) != 0)
  {
    if (*this <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
    }

    v82 = *(a1 + 234);
    *a2 = 432;
    a2[2] = v82;
    a2 += 3;
  }

  if ((*(a1 + 17) & 8) != 0)
  {
    if (*this <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
    }

    v83 = *(a1 + 120);
    *a2 = 442;
    v84 = *(v83 + 5);
    if (v84 > 0x7F)
    {
      a2[2] = v84 | 0x80;
      v86 = v84 >> 7;
      if (v84 >> 14)
      {
        v85 = a2 + 4;
        do
        {
          *(v85 - 1) = v86 | 0x80;
          v87 = v86 >> 7;
          ++v85;
          v88 = v86 >> 14;
          v86 >>= 7;
        }

        while (v88);
        *(v85 - 1) = v87;
      }

      else
      {
        a2[3] = v86;
        v85 = a2 + 4;
      }
    }

    else
    {
      a2[2] = v84;
      v85 = a2 + 3;
    }

    a2 = TSSSOS::SpecBoolArchive::_InternalSerialize(v83, v85, this);
  }

  if ((*(a1 + 20) & 8) != 0)
  {
    if (*this <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
    }

    v89 = *(a1 + 235);
    *a2 = 448;
    a2[2] = v89;
    a2 += 3;
  }

  if ((*(a1 + 17) & 0x10) != 0)
  {
    if (*this <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
    }

    v90 = *(a1 + 128);
    *a2 = 458;
    v91 = *(v90 + 5);
    if (v91 > 0x7F)
    {
      a2[2] = v91 | 0x80;
      v93 = v91 >> 7;
      if (v91 >> 14)
      {
        v92 = a2 + 4;
        do
        {
          *(v92 - 1) = v93 | 0x80;
          v94 = v93 >> 7;
          ++v92;
          v95 = v93 >> 14;
          v93 >>= 7;
        }

        while (v95);
        *(v92 - 1) = v94;
      }

      else
      {
        a2[3] = v93;
        v92 = a2 + 4;
      }
    }

    else
    {
      a2[2] = v91;
      v92 = a2 + 3;
    }

    a2 = TSSSOS::SpecIntegerArchive::_InternalSerialize(v90, v92, this);
  }

  if ((*(a1 + 20) & 0x10) != 0)
  {
    if (*this <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
    }

    v96 = *(a1 + 236);
    *a2 = 464;
    a2[2] = v96;
    a2 += 3;
  }

  if ((*(a1 + 17) & 0x20) != 0)
  {
    if (*this <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
    }

    v97 = *(a1 + 136);
    *a2 = 474;
    v98 = *(v97 + 5);
    if (v98 > 0x7F)
    {
      a2[2] = v98 | 0x80;
      v100 = v98 >> 7;
      if (v98 >> 14)
      {
        v99 = a2 + 4;
        do
        {
          *(v99 - 1) = v100 | 0x80;
          v101 = v100 >> 7;
          ++v99;
          v102 = v100 >> 14;
          v100 >>= 7;
        }

        while (v102);
        *(v99 - 1) = v101;
      }

      else
      {
        a2[3] = v100;
        v99 = a2 + 4;
      }
    }

    else
    {
      a2[2] = v98;
      v99 = a2 + 3;
    }

    a2 = TSSSOS::SpecBoolArchive::_InternalSerialize(v97, v99, this);
  }

  if ((*(a1 + 20) & 0x20) != 0)
  {
    if (*this <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
    }

    v103 = *(a1 + 237);
    *a2 = 480;
    a2[2] = v103;
    a2 += 3;
  }

  if ((*(a1 + 17) & 0x40) != 0)
  {
    if (*this <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
    }

    v104 = *(a1 + 144);
    *a2 = 490;
    v105 = *(v104 + 5);
    if (v105 > 0x7F)
    {
      a2[2] = v105 | 0x80;
      v107 = v105 >> 7;
      if (v105 >> 14)
      {
        v106 = a2 + 4;
        do
        {
          *(v106 - 1) = v107 | 0x80;
          v108 = v107 >> 7;
          ++v106;
          v109 = v107 >> 14;
          v107 >>= 7;
        }

        while (v109);
        *(v106 - 1) = v108;
      }

      else
      {
        a2[3] = v107;
        v106 = a2 + 4;
      }
    }

    else
    {
      a2[2] = v105;
      v106 = a2 + 3;
    }

    a2 = TSSSOS::SpecBoolArchive::_InternalSerialize(v104, v106, this);
  }

  if ((*(a1 + 20) & 0x40) != 0)
  {
    if (*this <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
    }

    v110 = *(a1 + 238);
    *a2 = 496;
    a2[2] = v110;
    a2 += 3;
  }

  if ((*(a1 + 17) & 0x80) != 0)
  {
    if (*this <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
    }

    v111 = *(a1 + 152);
    *a2 = 506;
    v112 = *(v111 + 5);
    if (v112 > 0x7F)
    {
      a2[2] = v112 | 0x80;
      v114 = v112 >> 7;
      if (v112 >> 14)
      {
        v113 = a2 + 4;
        do
        {
          *(v113 - 1) = v114 | 0x80;
          v115 = v114 >> 7;
          ++v113;
          v116 = v114 >> 14;
          v114 >>= 7;
        }

        while (v116);
        *(v113 - 1) = v115;
      }

      else
      {
        a2[3] = v114;
        v113 = a2 + 4;
      }
    }

    else
    {
      a2[2] = v112;
      v113 = a2 + 3;
    }

    a2 = TSSSOS::SpecBoolArchive::_InternalSerialize(v111, v113, this);
  }

  if ((*(a1 + 20) & 0x80) != 0)
  {
    if (*this <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
    }

    v117 = *(a1 + 239);
    *a2 = 640;
    a2[2] = v117;
    a2 += 3;
  }

  if (*(a1 + 18))
  {
    if (*this <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
    }

    v118 = *(a1 + 160);
    *a2 = 650;
    v119 = *(v118 + 5);
    if (v119 > 0x7F)
    {
      a2[2] = v119 | 0x80;
      v121 = v119 >> 7;
      if (v119 >> 14)
      {
        v120 = a2 + 4;
        do
        {
          *(v120 - 1) = v121 | 0x80;
          v122 = v121 >> 7;
          ++v120;
          v123 = v121 >> 14;
          v121 >>= 7;
        }

        while (v123);
        *(v120 - 1) = v122;
      }

      else
      {
        a2[3] = v121;
        v120 = a2 + 4;
      }
    }

    else
    {
      a2[2] = v119;
      v120 = a2 + 3;
    }

    a2 = TSSSOS::SpecBoolArchive::_InternalSerialize(v118, v120, this);
  }

  if (*(a1 + 21))
  {
    if (*this <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
    }

    v124 = *(a1 + 240);
    *a2 = 656;
    a2[2] = v124;
    a2 += 3;
  }

  if ((*(a1 + 18) & 2) != 0)
  {
    if (*this <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
    }

    v125 = *(a1 + 168);
    *a2 = 666;
    v126 = *(v125 + 5);
    if (v126 > 0x7F)
    {
      a2[2] = v126 | 0x80;
      v128 = v126 >> 7;
      if (v126 >> 14)
      {
        v127 = a2 + 4;
        do
        {
          *(v127 - 1) = v128 | 0x80;
          v129 = v128 >> 7;
          ++v127;
          v130 = v128 >> 14;
          v128 >>= 7;
        }

        while (v130);
        *(v127 - 1) = v129;
      }

      else
      {
        a2[3] = v128;
        v127 = a2 + 4;
      }
    }

    else
    {
      a2[2] = v126;
      v127 = a2 + 3;
    }

    a2 = TSSSOS::SpecBoolArchive::_InternalSerialize(v125, v127, this);
  }

  if ((*(a1 + 21) & 2) != 0)
  {
    if (*this <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
    }

    v131 = *(a1 + 241);
    *a2 = 672;
    a2[2] = v131;
    a2 += 3;
  }

  if ((*(a1 + 18) & 4) != 0)
  {
    if (*this <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
    }

    v132 = *(a1 + 176);
    *a2 = 682;
    v133 = *(v132 + 5);
    if (v133 > 0x7F)
    {
      a2[2] = v133 | 0x80;
      v135 = v133 >> 7;
      if (v133 >> 14)
      {
        v134 = a2 + 4;
        do
        {
          *(v134 - 1) = v135 | 0x80;
          v136 = v135 >> 7;
          ++v134;
          v137 = v135 >> 14;
          v135 >>= 7;
        }

        while (v137);
        *(v134 - 1) = v136;
      }

      else
      {
        a2[3] = v135;
        v134 = a2 + 4;
      }
    }

    else
    {
      a2[2] = v133;
      v134 = a2 + 3;
    }

    a2 = TSSSOS::SpecBoolArchive::_InternalSerialize(v132, v134, this);
  }

  if ((*(a1 + 21) & 4) != 0)
  {
    if (*this <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
    }

    v138 = *(a1 + 242);
    *a2 = 688;
    a2[2] = v138;
    a2 += 3;
  }

  if ((*(a1 + 18) & 8) != 0)
  {
    if (*this <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
    }

    v139 = *(a1 + 184);
    *a2 = 698;
    v140 = *(v139 + 5);
    if (v140 > 0x7F)
    {
      a2[2] = v140 | 0x80;
      v142 = v140 >> 7;
      if (v140 >> 14)
      {
        v141 = a2 + 4;
        do
        {
          *(v141 - 1) = v142 | 0x80;
          v143 = v142 >> 7;
          ++v141;
          v144 = v142 >> 14;
          v142 >>= 7;
        }

        while (v144);
        *(v141 - 1) = v143;
      }

      else
      {
        a2[3] = v142;
        v141 = a2 + 4;
      }
    }

    else
    {
      a2[2] = v140;
      v141 = a2 + 3;
    }

    a2 = TSSSOS::SpecBoolArchive::_InternalSerialize(v139, v141, this);
  }

  if ((*(a1 + 21) & 8) != 0)
  {
    if (*this <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
    }

    v145 = *(a1 + 243);
    *a2 = 704;
    a2[2] = v145;
    a2 += 3;
  }

  if ((*(a1 + 18) & 0x10) != 0)
  {
    if (*this <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
    }

    v146 = *(a1 + 192);
    *a2 = 714;
    v147 = *(v146 + 5);
    if (v147 > 0x7F)
    {
      a2[2] = v147 | 0x80;
      v149 = v147 >> 7;
      if (v147 >> 14)
      {
        v148 = a2 + 4;
        do
        {
          *(v148 - 1) = v149 | 0x80;
          v150 = v149 >> 7;
          ++v148;
          v151 = v149 >> 14;
          v149 >>= 7;
        }

        while (v151);
        *(v148 - 1) = v150;
      }

      else
      {
        a2[3] = v149;
        v148 = a2 + 4;
      }
    }

    else
    {
      a2[2] = v147;
      v148 = a2 + 3;
    }

    a2 = TSSSOS::SpecStringArchive::_InternalSerialize(v146, v148, this);
  }

  if ((*(a1 + 21) & 0x10) != 0)
  {
    if (*this <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
    }

    v152 = *(a1 + 244);
    *a2 = 720;
    a2[2] = v152;
    a2 += 3;
  }

  if ((*(a1 + 18) & 0x20) != 0)
  {
    if (*this <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
    }

    v153 = *(a1 + 200);
    *a2 = 730;
    v154 = *(v153 + 5);
    if (v154 > 0x7F)
    {
      a2[2] = v154 | 0x80;
      v156 = v154 >> 7;
      if (v154 >> 14)
      {
        v155 = a2 + 4;
        do
        {
          *(v155 - 1) = v156 | 0x80;
          v157 = v156 >> 7;
          ++v155;
          v158 = v156 >> 14;
          v156 >>= 7;
        }

        while (v158);
        *(v155 - 1) = v157;
      }

      else
      {
        a2[3] = v156;
        v155 = a2 + 4;
      }
    }

    else
    {
      a2[2] = v154;
      v155 = a2 + 3;
    }

    a2 = TSSSOS::SpecStringArchive::_InternalSerialize(v153, v155, this);
  }

  if ((*(a1 + 21) & 0x20) != 0)
  {
    if (*this <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
    }

    v159 = *(a1 + 245);
    *a2 = 736;
    a2[2] = v159;
    a2 += 3;
  }

  if ((*(a1 + 18) & 0x40) != 0)
  {
    if (*this <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
    }

    v160 = *(a1 + 208);
    *a2 = 746;
    v161 = *(v160 + 20);
    if (v161 > 0x7F)
    {
      a2[2] = v161 | 0x80;
      v163 = v161 >> 7;
      if (v161 >> 14)
      {
        v162 = a2 + 4;
        do
        {
          *(v162 - 1) = v163 | 0x80;
          v164 = v163 >> 7;
          ++v162;
          v165 = v163 >> 14;
          v163 >>= 7;
        }

        while (v165);
        *(v162 - 1) = v164;
      }

      else
      {
        a2[3] = v163;
        v162 = a2 + 4;
      }
    }

    else
    {
      a2[2] = v161;
      v162 = a2 + 3;
    }

    a2 = sub_276397E14(v160, v162, this);
  }

  if ((*(a1 + 21) & 0x40) != 0)
  {
    if (*this <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
    }

    v166 = *(a1 + 246);
    *a2 = 752;
    a2[2] = v166;
    a2 += 3;
  }

  if ((*(a1 + 18) & 0x80) != 0)
  {
    if (*this <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
    }

    v167 = *(a1 + 216);
    *a2 = 762;
    v168 = *(v167 + 20);
    if (v168 > 0x7F)
    {
      a2[2] = v168 | 0x80;
      v170 = v168 >> 7;
      if (v168 >> 14)
      {
        v169 = a2 + 4;
        do
        {
          *(v169 - 1) = v170 | 0x80;
          v171 = v170 >> 7;
          ++v169;
          v172 = v170 >> 14;
          v170 >>= 7;
        }

        while (v172);
        *(v169 - 1) = v171;
      }

      else
      {
        a2[3] = v170;
        v169 = a2 + 4;
      }
    }

    else
    {
      a2[2] = v168;
      v169 = a2 + 3;
    }

    a2 = sub_276397E14(v167, v169, this);
  }

  if ((*(a1 + 21) & 0x80) != 0)
  {
    if (*this <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
    }

    v173 = *(a1 + 247);
    *a2 = 896;
    a2[2] = v173;
    a2 += 3;
  }

  v174 = *(a1 + 8);
  if ((v174 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v174 & 0xFFFFFFFFFFFFFFFELL) + 8, a2, this);
}

uint64_t sub_27639B988(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    v3 = 0;
    goto LABEL_15;
  }

  if (v2)
  {
    v4 = sub_2763984C0(*(a1 + 32));
    v3 = v4 + ((9 * (__clz(v4 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v2 & 2) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v3 = 0;
  if ((v2 & 2) != 0)
  {
LABEL_7:
    v5 = sub_276398AA4(*(a1 + 40));
    v3 += v5 + ((9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_8:
  if ((v2 & 4) != 0)
  {
    v15 = TSSSOS::SpecIntegerArchive::ByteSizeLong(*(a1 + 48));
    v3 += v15 + ((9 * (__clz(v15 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v2 & 8) == 0)
    {
LABEL_10:
      if ((v2 & 0x10) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_79;
    }
  }

  else if ((v2 & 8) == 0)
  {
    goto LABEL_10;
  }

  v16 = sub_2763984C0(*(a1 + 56));
  v3 += v16 + ((9 * (__clz(v16 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 0x10) == 0)
  {
LABEL_11:
    if ((v2 & 0x20) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_80;
  }

LABEL_79:
  v17 = sub_2763984C0(*(a1 + 64));
  v3 += v17 + ((9 * (__clz(v17 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 0x20) == 0)
  {
LABEL_12:
    if ((v2 & 0x40) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_81;
  }

LABEL_80:
  v18 = TSSSOS::SpecDoubleArchive::ByteSizeLong(*(a1 + 72));
  v3 += v18 + ((9 * (__clz(v18 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 0x40) == 0)
  {
LABEL_13:
    if ((v2 & 0x80) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

LABEL_81:
  v19 = sub_276398AA4(*(a1 + 80));
  v3 += v19 + ((9 * (__clz(v19 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 0x80) != 0)
  {
LABEL_14:
    v6 = TSSSOS::SpecIntegerArchive::ByteSizeLong(*(a1 + 88));
    v3 += v6 + ((9 * (__clz(v6 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_15:
  if ((v2 & 0xFF00) == 0)
  {
    goto LABEL_25;
  }

  if ((v2 & 0x100) != 0)
  {
    v20 = TSSSOS::SpecIntegerArchive::ByteSizeLong(*(a1 + 96));
    v3 += v20 + ((9 * (__clz(v20 | 1) ^ 0x1F) + 73) >> 6) + 2;
    if ((v2 & 0x200) == 0)
    {
LABEL_18:
      if ((v2 & 0x400) == 0)
      {
        goto LABEL_19;
      }

      goto LABEL_85;
    }
  }

  else if ((v2 & 0x200) == 0)
  {
    goto LABEL_18;
  }

  v21 = TSSSOS::SpecIntegerArchive::ByteSizeLong(*(a1 + 104));
  v3 += v21 + ((9 * (__clz(v21 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v2 & 0x400) == 0)
  {
LABEL_19:
    if ((v2 & 0x800) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_86;
  }

LABEL_85:
  v22 = TSSSOS::SpecIntegerArchive::ByteSizeLong(*(a1 + 112));
  v3 += v22 + ((9 * (__clz(v22 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v2 & 0x800) == 0)
  {
LABEL_20:
    if ((v2 & 0x1000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_87;
  }

LABEL_86:
  v23 = TSSSOS::SpecBoolArchive::ByteSizeLong(*(a1 + 120));
  v3 += v23 + ((9 * (__clz(v23 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v2 & 0x1000) == 0)
  {
LABEL_21:
    if ((v2 & 0x2000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_88;
  }

LABEL_87:
  v24 = TSSSOS::SpecIntegerArchive::ByteSizeLong(*(a1 + 128));
  v3 += v24 + ((9 * (__clz(v24 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v2 & 0x2000) == 0)
  {
LABEL_22:
    if ((v2 & 0x4000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_89;
  }

LABEL_88:
  v25 = TSSSOS::SpecBoolArchive::ByteSizeLong(*(a1 + 136));
  v3 += v25 + ((9 * (__clz(v25 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v2 & 0x4000) == 0)
  {
LABEL_23:
    if ((v2 & 0x8000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_24;
  }

LABEL_89:
  v26 = TSSSOS::SpecBoolArchive::ByteSizeLong(*(a1 + 144));
  v3 += v26 + ((9 * (__clz(v26 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v2 & 0x8000) != 0)
  {
LABEL_24:
    v7 = TSSSOS::SpecBoolArchive::ByteSizeLong(*(a1 + 152));
    v3 += v7 + ((9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6) + 2;
  }

LABEL_25:
  if ((v2 & 0xFF0000) == 0)
  {
    goto LABEL_35;
  }

  if ((v2 & 0x10000) != 0)
  {
    v27 = TSSSOS::SpecBoolArchive::ByteSizeLong(*(a1 + 160));
    v3 += v27 + ((9 * (__clz(v27 | 1) ^ 0x1F) + 73) >> 6) + 2;
    if ((v2 & 0x20000) == 0)
    {
LABEL_28:
      if ((v2 & 0x40000) == 0)
      {
        goto LABEL_29;
      }

      goto LABEL_93;
    }
  }

  else if ((v2 & 0x20000) == 0)
  {
    goto LABEL_28;
  }

  v28 = TSSSOS::SpecBoolArchive::ByteSizeLong(*(a1 + 168));
  v3 += v28 + ((9 * (__clz(v28 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v2 & 0x40000) == 0)
  {
LABEL_29:
    if ((v2 & 0x80000) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_94;
  }

LABEL_93:
  v29 = TSSSOS::SpecBoolArchive::ByteSizeLong(*(a1 + 176));
  v3 += v29 + ((9 * (__clz(v29 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v2 & 0x80000) == 0)
  {
LABEL_30:
    if ((v2 & 0x100000) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_95;
  }

LABEL_94:
  v30 = TSSSOS::SpecBoolArchive::ByteSizeLong(*(a1 + 184));
  v3 += v30 + ((9 * (__clz(v30 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v2 & 0x100000) == 0)
  {
LABEL_31:
    if ((v2 & 0x200000) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_96;
  }

LABEL_95:
  v31 = TSSSOS::SpecStringArchive::ByteSizeLong(*(a1 + 192));
  v3 += v31 + ((9 * (__clz(v31 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v2 & 0x200000) == 0)
  {
LABEL_32:
    if ((v2 & 0x400000) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_97;
  }

LABEL_96:
  v32 = TSSSOS::SpecStringArchive::ByteSizeLong(*(a1 + 200));
  v3 += v32 + ((9 * (__clz(v32 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v2 & 0x400000) == 0)
  {
LABEL_33:
    if ((v2 & 0x800000) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_34;
  }

LABEL_97:
  v33 = sub_276397F04(*(a1 + 208));
  v3 += v33 + ((9 * (__clz(v33 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v2 & 0x800000) != 0)
  {
LABEL_34:
    v8 = sub_276397F04(*(a1 + 216));
    v3 += v8 + ((9 * (__clz(v8 | 1) ^ 0x1F) + 73) >> 6) + 2;
  }

LABEL_35:
  if (HIBYTE(v2))
  {
    v9.i64[0] = 0x200000002;
    v9.i64[1] = 0x200000002;
    v10 = vaddvq_s32(vandq_s8(vshlq_u32(vdupq_n_s32(v2), xmmword_2764D7160), v9));
    if ((v2 & 0x80000000) == 0)
    {
      v3 += v10 + ((v2 >> 27) & 2) + ((v2 >> 28) & 2) + ((v2 >> 29) & 2);
    }

    else
    {
      v3 += v10 + ((v2 >> 27) & 2) + ((v2 >> 28) & 2) + ((v2 >> 29) & 2) + 3;
    }
  }

  v11 = *(a1 + 20);
  if (v11)
  {
    v12 = v3 + 3;
    if ((v11 & 1) == 0)
    {
      v12 = v3;
    }

    if ((v11 & 2) != 0)
    {
      v12 += 3;
    }

    if ((v11 & 4) != 0)
    {
      v12 += 3;
    }

    if ((v11 & 8) != 0)
    {
      v12 += 3;
    }

    if ((v11 & 0x10) != 0)
    {
      v12 += 3;
    }

    if ((v11 & 0x20) != 0)
    {
      v12 += 3;
    }

    if ((v11 & 0x40) != 0)
    {
      v12 += 3;
    }

    if ((v11 & 0x80) != 0)
    {
      v3 = v12 + 3;
    }

    else
    {
      v3 = v12;
    }
  }

  if ((v11 & 0xFF00) != 0)
  {
    v13 = v3 + 3;
    if ((v11 & 0x100) == 0)
    {
      v13 = v3;
    }

    if ((v11 & 0x200) != 0)
    {
      v13 += 3;
    }

    if ((v11 & 0x400) != 0)
    {
      v13 += 3;
    }

    if ((v11 & 0x800) != 0)
    {
      v13 += 3;
    }

    if ((v11 & 0x1000) != 0)
    {
      v13 += 3;
    }

    if ((v11 & 0x2000) != 0)
    {
      v13 += 3;
    }

    if ((v11 & 0x4000) != 0)
    {
      v13 += 3;
    }

    if ((v11 & 0x8000) != 0)
    {
      v3 = v13 + 3;
    }

    else
    {
      v3 = v13;
    }
  }

  if (*(a1 + 8))
  {

    return google::protobuf::internal::ComputeUnknownFieldsSize();
  }

  else
  {
    *(a1 + 24) = v3;
    return v3;
  }
}

void sub_27639C020(uint64_t a1, void *lpsrc)
{
  v4 = __dynamic_cast(lpsrc, MEMORY[0x277D80A98], &unk_288520030, 0);
  if (v4)
  {

    sub_27639C0C8(a1, v4);
  }

  else
  {

    MEMORY[0x2821EACE0](lpsrc, a1);
  }
}

void sub_27639C0C8(uint64_t result, uint64_t a2)
{
  v4 = *(a2 + 8);
  if (v4)
  {
    sub_2763D4F88((result + 8), (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  v5 = *(a2 + 16);
  if (!v5)
  {
    goto LABEL_77;
  }

  if (v5)
  {
    *(result + 16) |= 1u;
    v6 = *(result + 32);
    if (!v6)
    {
      v7 = *(result + 8);
      if (v7)
      {
        v7 = *(v7 & 0xFFFFFFFFFFFFFFFELL);
      }

      v6 = sub_2763D414C(v7);
      *(result + 32) = v6;
    }

    if (*(a2 + 32))
    {
      v8 = *(a2 + 32);
    }

    else
    {
      v8 = &qword_2812EE7E0;
    }

    sub_2763985F4(v6, v8);
  }

  if ((v5 & 2) != 0)
  {
    *(result + 16) |= 2u;
    v9 = *(result + 40);
    if (!v9)
    {
      v10 = *(result + 8);
      if (v10)
      {
        v10 = *(v10 & 0xFFFFFFFFFFFFFFFELL);
      }

      v9 = sub_2763D4218(v10);
      *(result + 40) = v9;
    }

    if (*(a2 + 40))
    {
      v11 = *(a2 + 40);
    }

    else
    {
      v11 = &qword_2812EE800;
    }

    sub_276398BD8(v9, v11);
  }

  v12 = MEMORY[0x277D80C18];
  if ((v5 & 4) != 0)
  {
    *(result + 16) |= 4u;
    v13 = *(result + 48);
    if (!v13)
    {
      v14 = *(result + 8);
      if (v14)
      {
        v14 = *(v14 & 0xFFFFFFFFFFFFFFFELL);
      }

      v13 = MEMORY[0x277C97C60](v14);
      *(result + 48) = v13;
    }

    if (*(a2 + 48))
    {
      v15 = *(a2 + 48);
    }

    else
    {
      v15 = v12;
    }

    TSSSOS::SpecIntegerArchive::MergeFrom(v13, v15);
    if ((v5 & 8) == 0)
    {
LABEL_24:
      if ((v5 & 0x10) == 0)
      {
        goto LABEL_25;
      }

      goto LABEL_45;
    }
  }

  else if ((v5 & 8) == 0)
  {
    goto LABEL_24;
  }

  *(result + 16) |= 8u;
  v16 = *(result + 56);
  if (!v16)
  {
    v17 = *(result + 8);
    if (v17)
    {
      v17 = *(v17 & 0xFFFFFFFFFFFFFFFELL);
    }

    v16 = sub_2763D414C(v17);
    *(result + 56) = v16;
  }

  if (*(a2 + 56))
  {
    v18 = *(a2 + 56);
  }

  else
  {
    v18 = &qword_2812EE7E0;
  }

  sub_2763985F4(v16, v18);
  if ((v5 & 0x10) == 0)
  {
LABEL_25:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_26;
    }

LABEL_53:
    *(result + 16) |= 0x20u;
    v22 = *(result + 72);
    if (!v22)
    {
      v23 = *(result + 8);
      if (v23)
      {
        v23 = *(v23 & 0xFFFFFFFFFFFFFFFELL);
      }

      v22 = MEMORY[0x277C97C40](v23);
      *(result + 72) = v22;
    }

    if (*(a2 + 72))
    {
      v24 = *(a2 + 72);
    }

    else
    {
      v24 = MEMORY[0x277D80C08];
    }

    TSSSOS::SpecDoubleArchive::MergeFrom(v22, v24);
    if ((v5 & 0x40) == 0)
    {
LABEL_27:
      if ((v5 & 0x80) == 0)
      {
        goto LABEL_77;
      }

      goto LABEL_69;
    }

    goto LABEL_61;
  }

LABEL_45:
  *(result + 16) |= 0x10u;
  v19 = *(result + 64);
  if (!v19)
  {
    v20 = *(result + 8);
    if (v20)
    {
      v20 = *(v20 & 0xFFFFFFFFFFFFFFFELL);
    }

    v19 = sub_2763D414C(v20);
    *(result + 64) = v19;
  }

  if (*(a2 + 64))
  {
    v21 = *(a2 + 64);
  }

  else
  {
    v21 = &qword_2812EE7E0;
  }

  sub_2763985F4(v19, v21);
  if ((v5 & 0x20) != 0)
  {
    goto LABEL_53;
  }

LABEL_26:
  if ((v5 & 0x40) == 0)
  {
    goto LABEL_27;
  }

LABEL_61:
  *(result + 16) |= 0x40u;
  v25 = *(result + 80);
  if (!v25)
  {
    v26 = *(result + 8);
    if (v26)
    {
      v26 = *(v26 & 0xFFFFFFFFFFFFFFFELL);
    }

    v25 = sub_2763D4218(v26);
    *(result + 80) = v25;
  }

  if (*(a2 + 80))
  {
    v27 = *(a2 + 80);
  }

  else
  {
    v27 = &qword_2812EE800;
  }

  sub_276398BD8(v25, v27);
  if ((v5 & 0x80) != 0)
  {
LABEL_69:
    *(result + 16) |= 0x80u;
    v28 = *(result + 88);
    if (!v28)
    {
      v29 = *(result + 8);
      if (v29)
      {
        v29 = *(v29 & 0xFFFFFFFFFFFFFFFELL);
      }

      v28 = MEMORY[0x277C97C60](v29);
      *(result + 88) = v28;
    }

    if (*(a2 + 88))
    {
      v30 = *(a2 + 88);
    }

    else
    {
      v30 = v12;
    }

    TSSSOS::SpecIntegerArchive::MergeFrom(v28, v30);
  }

LABEL_77:
  if ((v5 & 0xFF00) == 0)
  {
    goto LABEL_152;
  }

  if ((v5 & 0x100) != 0)
  {
    *(result + 16) |= 0x100u;
    v31 = *(result + 96);
    if (!v31)
    {
      v32 = *(result + 8);
      if (v32)
      {
        v32 = *(v32 & 0xFFFFFFFFFFFFFFFELL);
      }

      v31 = MEMORY[0x277C97C60](v32);
      *(result + 96) = v31;
    }

    if (*(a2 + 96))
    {
      v33 = *(a2 + 96);
    }

    else
    {
      v33 = MEMORY[0x277D80C18];
    }

    TSSSOS::SpecIntegerArchive::MergeFrom(v31, v33);
    if ((v5 & 0x200) == 0)
    {
LABEL_80:
      if ((v5 & 0x400) == 0)
      {
        goto LABEL_106;
      }

      goto LABEL_98;
    }
  }

  else if ((v5 & 0x200) == 0)
  {
    goto LABEL_80;
  }

  *(result + 16) |= 0x200u;
  v34 = *(result + 104);
  if (!v34)
  {
    v35 = *(result + 8);
    if (v35)
    {
      v35 = *(v35 & 0xFFFFFFFFFFFFFFFELL);
    }

    v34 = MEMORY[0x277C97C60](v35);
    *(result + 104) = v34;
  }

  if (*(a2 + 104))
  {
    v36 = *(a2 + 104);
  }

  else
  {
    v36 = MEMORY[0x277D80C18];
  }

  TSSSOS::SpecIntegerArchive::MergeFrom(v34, v36);
  if ((v5 & 0x400) != 0)
  {
LABEL_98:
    *(result + 16) |= 0x400u;
    v37 = *(result + 112);
    if (!v37)
    {
      v38 = *(result + 8);
      if (v38)
      {
        v38 = *(v38 & 0xFFFFFFFFFFFFFFFELL);
      }

      v37 = MEMORY[0x277C97C60](v38);
      *(result + 112) = v37;
    }

    if (*(a2 + 112))
    {
      v39 = *(a2 + 112);
    }

    else
    {
      v39 = MEMORY[0x277D80C18];
    }

    TSSSOS::SpecIntegerArchive::MergeFrom(v37, v39);
  }

LABEL_106:
  v40 = MEMORY[0x277D80BF8];
  if ((v5 & 0x800) != 0)
  {
    *(result + 16) |= 0x800u;
    v41 = *(result + 120);
    if (!v41)
    {
      v42 = *(result + 8);
      if (v42)
      {
        v42 = *(v42 & 0xFFFFFFFFFFFFFFFELL);
      }

      v41 = MEMORY[0x277C97C20](v42);
      *(result + 120) = v41;
    }

    if (*(a2 + 120))
    {
      v43 = *(a2 + 120);
    }

    else
    {
      v43 = v40;
    }

    TSSSOS::SpecBoolArchive::MergeFrom(v41, v43);
    if ((v5 & 0x1000) == 0)
    {
LABEL_108:
      if ((v5 & 0x2000) == 0)
      {
        goto LABEL_109;
      }

      goto LABEL_128;
    }
  }

  else if ((v5 & 0x1000) == 0)
  {
    goto LABEL_108;
  }

  *(result + 16) |= 0x1000u;
  v44 = *(result + 128);
  if (!v44)
  {
    v45 = *(result + 8);
    if (v45)
    {
      v45 = *(v45 & 0xFFFFFFFFFFFFFFFELL);
    }

    v44 = MEMORY[0x277C97C60](v45);
    *(result + 128) = v44;
  }

  if (*(a2 + 128))
  {
    v46 = *(a2 + 128);
  }

  else
  {
    v46 = MEMORY[0x277D80C18];
  }

  TSSSOS::SpecIntegerArchive::MergeFrom(v44, v46);
  if ((v5 & 0x2000) == 0)
  {
LABEL_109:
    if ((v5 & 0x4000) == 0)
    {
      goto LABEL_110;
    }

    goto LABEL_136;
  }

LABEL_128:
  *(result + 16) |= 0x2000u;
  v47 = *(result + 136);
  if (!v47)
  {
    v48 = *(result + 8);
    if (v48)
    {
      v48 = *(v48 & 0xFFFFFFFFFFFFFFFELL);
    }

    v47 = MEMORY[0x277C97C20](v48);
    *(result + 136) = v47;
  }

  if (*(a2 + 136))
  {
    v49 = *(a2 + 136);
  }

  else
  {
    v49 = v40;
  }

  TSSSOS::SpecBoolArchive::MergeFrom(v47, v49);
  if ((v5 & 0x4000) == 0)
  {
LABEL_110:
    if ((v5 & 0x8000) == 0)
    {
      goto LABEL_152;
    }

    goto LABEL_144;
  }

LABEL_136:
  *(result + 16) |= 0x4000u;
  v50 = *(result + 144);
  if (!v50)
  {
    v51 = *(result + 8);
    if (v51)
    {
      v51 = *(v51 & 0xFFFFFFFFFFFFFFFELL);
    }

    v50 = MEMORY[0x277C97C20](v51);
    *(result + 144) = v50;
  }

  if (*(a2 + 144))
  {
    v52 = *(a2 + 144);
  }

  else
  {
    v52 = v40;
  }

  TSSSOS::SpecBoolArchive::MergeFrom(v50, v52);
  if ((v5 & 0x8000) != 0)
  {
LABEL_144:
    *(result + 16) |= 0x8000u;
    v53 = *(result + 152);
    if (!v53)
    {
      v54 = *(result + 8);
      if (v54)
      {
        v54 = *(v54 & 0xFFFFFFFFFFFFFFFELL);
      }

      v53 = MEMORY[0x277C97C20](v54);
      *(result + 152) = v53;
    }

    if (*(a2 + 152))
    {
      v55 = *(a2 + 152);
    }

    else
    {
      v55 = v40;
    }

    TSSSOS::SpecBoolArchive::MergeFrom(v53, v55);
  }

LABEL_152:
  if ((v5 & 0xFF0000) == 0)
  {
    goto LABEL_226;
  }

  if ((v5 & 0x10000) != 0)
  {
    *(result + 16) |= 0x10000u;
    v56 = *(result + 160);
    if (!v56)
    {
      v57 = *(result + 8);
      if (v57)
      {
        v57 = *(v57 & 0xFFFFFFFFFFFFFFFELL);
      }

      v56 = MEMORY[0x277C97C20](v57);
      *(result + 160) = v56;
    }

    if (*(a2 + 160))
    {
      v58 = *(a2 + 160);
    }

    else
    {
      v58 = MEMORY[0x277D80BF8];
    }

    TSSSOS::SpecBoolArchive::MergeFrom(v56, v58);
    if ((v5 & 0x20000) == 0)
    {
LABEL_155:
      if ((v5 & 0x40000) == 0)
      {
        goto LABEL_156;
      }

LABEL_174:
      *(result + 16) |= 0x40000u;
      v62 = *(result + 176);
      if (!v62)
      {
        v63 = *(result + 8);
        if (v63)
        {
          v63 = *(v63 & 0xFFFFFFFFFFFFFFFELL);
        }

        v62 = MEMORY[0x277C97C20](v63);
        *(result + 176) = v62;
      }

      if (*(a2 + 176))
      {
        v64 = *(a2 + 176);
      }

      else
      {
        v64 = MEMORY[0x277D80BF8];
      }

      TSSSOS::SpecBoolArchive::MergeFrom(v62, v64);
      if ((v5 & 0x80000) == 0)
      {
        goto LABEL_190;
      }

      goto LABEL_182;
    }
  }

  else if ((v5 & 0x20000) == 0)
  {
    goto LABEL_155;
  }

  *(result + 16) |= 0x20000u;
  v59 = *(result + 168);
  if (!v59)
  {
    v60 = *(result + 8);
    if (v60)
    {
      v60 = *(v60 & 0xFFFFFFFFFFFFFFFELL);
    }

    v59 = MEMORY[0x277C97C20](v60);
    *(result + 168) = v59;
  }

  if (*(a2 + 168))
  {
    v61 = *(a2 + 168);
  }

  else
  {
    v61 = MEMORY[0x277D80BF8];
  }

  TSSSOS::SpecBoolArchive::MergeFrom(v59, v61);
  if ((v5 & 0x40000) != 0)
  {
    goto LABEL_174;
  }

LABEL_156:
  if ((v5 & 0x80000) != 0)
  {
LABEL_182:
    *(result + 16) |= 0x80000u;
    v65 = *(result + 184);
    if (!v65)
    {
      v66 = *(result + 8);
      if (v66)
      {
        v66 = *(v66 & 0xFFFFFFFFFFFFFFFELL);
      }

      v65 = MEMORY[0x277C97C20](v66);
      *(result + 184) = v65;
    }

    if (*(a2 + 184))
    {
      v67 = *(a2 + 184);
    }

    else
    {
      v67 = MEMORY[0x277D80BF8];
    }

    TSSSOS::SpecBoolArchive::MergeFrom(v65, v67);
  }

LABEL_190:
  v68 = MEMORY[0x277D80C10];
  if ((v5 & 0x100000) != 0)
  {
    *(result + 16) |= 0x100000u;
    v69 = *(result + 192);
    if (!v69)
    {
      v70 = *(result + 8);
      if (v70)
      {
        v70 = *(v70 & 0xFFFFFFFFFFFFFFFELL);
      }

      v69 = MEMORY[0x277C97C50](v70);
      *(result + 192) = v69;
    }

    if (*(a2 + 192))
    {
      v71 = *(a2 + 192);
    }

    else
    {
      v71 = v68;
    }

    TSSSOS::SpecStringArchive::MergeFrom(v69, v71);
  }

  if ((v5 & 0x200000) != 0)
  {
    *(result + 16) |= 0x200000u;
    v72 = *(result + 200);
    if (!v72)
    {
      v73 = *(result + 8);
      if (v73)
      {
        v73 = *(v73 & 0xFFFFFFFFFFFFFFFELL);
      }

      v72 = MEMORY[0x277C97C50](v73);
      *(result + 200) = v72;
    }

    if (*(a2 + 200))
    {
      v74 = *(a2 + 200);
    }

    else
    {
      v74 = v68;
    }

    TSSSOS::SpecStringArchive::MergeFrom(v72, v74);
  }

  if ((v5 & 0x400000) != 0)
  {
    *(result + 16) |= 0x400000u;
    v75 = *(result + 208);
    if (!v75)
    {
      v76 = *(result + 8);
      if (v76)
      {
        v76 = *(v76 & 0xFFFFFFFFFFFFFFFELL);
      }

      v75 = sub_2763D4080(v76);
      *(result + 208) = v75;
    }

    if (*(a2 + 208))
    {
      v77 = *(a2 + 208);
    }

    else
    {
      v77 = &qword_2812EE7C0;
    }

    sub_276398038(v75, v77);
  }

  if ((v5 & 0x800000) != 0)
  {
    *(result + 16) |= 0x800000u;
    v78 = *(result + 216);
    if (!v78)
    {
      v79 = *(result + 8);
      if (v79)
      {
        v79 = *(v79 & 0xFFFFFFFFFFFFFFFELL);
      }

      v78 = sub_2763D4080(v79);
      *(result + 216) = v78;
    }

    if (*(a2 + 216))
    {
      v80 = *(a2 + 216);
    }

    else
    {
      v80 = &qword_2812EE7C0;
    }

    sub_276398038(v78, v80);
  }

LABEL_226:
  if (!HIBYTE(v5))
  {
    goto LABEL_236;
  }

  if ((v5 & 0x1000000) != 0)
  {
    *(result + 224) = *(a2 + 224);
    if ((v5 & 0x2000000) == 0)
    {
LABEL_229:
      if ((v5 & 0x4000000) == 0)
      {
        goto LABEL_230;
      }

      goto LABEL_277;
    }
  }

  else if ((v5 & 0x2000000) == 0)
  {
    goto LABEL_229;
  }

  *(result + 225) = *(a2 + 225);
  if ((v5 & 0x4000000) == 0)
  {
LABEL_230:
    if ((v5 & 0x8000000) == 0)
    {
      goto LABEL_231;
    }

    goto LABEL_278;
  }

LABEL_277:
  *(result + 226) = *(a2 + 226);
  if ((v5 & 0x8000000) == 0)
  {
LABEL_231:
    if ((v5 & 0x10000000) == 0)
    {
      goto LABEL_232;
    }

    goto LABEL_279;
  }

LABEL_278:
  *(result + 227) = *(a2 + 227);
  if ((v5 & 0x10000000) == 0)
  {
LABEL_232:
    if ((v5 & 0x20000000) == 0)
    {
      goto LABEL_233;
    }

    goto LABEL_280;
  }

LABEL_279:
  *(result + 228) = *(a2 + 228);
  if ((v5 & 0x20000000) == 0)
  {
LABEL_233:
    if ((v5 & 0x40000000) == 0)
    {
      goto LABEL_234;
    }

LABEL_281:
    *(result + 230) = *(a2 + 230);
    if ((v5 & 0x80000000) == 0)
    {
      goto LABEL_235;
    }

LABEL_282:
    *(result + 231) = *(a2 + 231);
    goto LABEL_235;
  }

LABEL_280:
  *(result + 229) = *(a2 + 229);
  if ((v5 & 0x40000000) != 0)
  {
    goto LABEL_281;
  }

LABEL_234:
  if ((v5 & 0x80000000) != 0)
  {
    goto LABEL_282;
  }

LABEL_235:
  *(result + 16) |= v5;
LABEL_236:
  v81 = *(a2 + 20);
  if (!v81)
  {
    goto LABEL_247;
  }

  if (v81)
  {
    *(result + 232) = *(a2 + 232);
    if ((v81 & 2) == 0)
    {
LABEL_239:
      if ((v81 & 4) == 0)
      {
        goto LABEL_240;
      }

      goto LABEL_261;
    }
  }

  else if ((v81 & 2) == 0)
  {
    goto LABEL_239;
  }

  *(result + 233) = *(a2 + 233);
  if ((v81 & 4) == 0)
  {
LABEL_240:
    if ((v81 & 8) == 0)
    {
      goto LABEL_241;
    }

    goto LABEL_262;
  }

LABEL_261:
  *(result + 234) = *(a2 + 234);
  if ((v81 & 8) == 0)
  {
LABEL_241:
    if ((v81 & 0x10) == 0)
    {
      goto LABEL_242;
    }

    goto LABEL_263;
  }

LABEL_262:
  *(result + 235) = *(a2 + 235);
  if ((v81 & 0x10) == 0)
  {
LABEL_242:
    if ((v81 & 0x20) == 0)
    {
      goto LABEL_243;
    }

    goto LABEL_264;
  }

LABEL_263:
  *(result + 236) = *(a2 + 236);
  if ((v81 & 0x20) == 0)
  {
LABEL_243:
    if ((v81 & 0x40) == 0)
    {
      goto LABEL_244;
    }

LABEL_265:
    *(result + 238) = *(a2 + 238);
    if ((v81 & 0x80) == 0)
    {
      goto LABEL_246;
    }

    goto LABEL_245;
  }

LABEL_264:
  *(result + 237) = *(a2 + 237);
  if ((v81 & 0x40) != 0)
  {
    goto LABEL_265;
  }

LABEL_244:
  if ((v81 & 0x80) != 0)
  {
LABEL_245:
    *(result + 239) = *(a2 + 239);
  }

LABEL_246:
  *(result + 20) |= v81;
LABEL_247:
  if ((v81 & 0xFF00) == 0)
  {
    return;
  }

  if ((v81 & 0x100) != 0)
  {
    *(result + 240) = *(a2 + 240);
    if ((v81 & 0x200) == 0)
    {
LABEL_250:
      if ((v81 & 0x400) == 0)
      {
        goto LABEL_251;
      }

      goto LABEL_269;
    }
  }

  else if ((v81 & 0x200) == 0)
  {
    goto LABEL_250;
  }

  *(result + 241) = *(a2 + 241);
  if ((v81 & 0x400) == 0)
  {
LABEL_251:
    if ((v81 & 0x800) == 0)
    {
      goto LABEL_252;
    }

    goto LABEL_270;
  }

LABEL_269:
  *(result + 242) = *(a2 + 242);
  if ((v81 & 0x800) == 0)
  {
LABEL_252:
    if ((v81 & 0x1000) == 0)
    {
      goto LABEL_253;
    }

    goto LABEL_271;
  }

LABEL_270:
  *(result + 243) = *(a2 + 243);
  if ((v81 & 0x1000) == 0)
  {
LABEL_253:
    if ((v81 & 0x2000) == 0)
    {
      goto LABEL_254;
    }

    goto LABEL_272;
  }

LABEL_271:
  *(result + 244) = *(a2 + 244);
  if ((v81 & 0x2000) == 0)
  {
LABEL_254:
    if ((v81 & 0x4000) == 0)
    {
      goto LABEL_255;
    }

LABEL_273:
    *(result + 246) = *(a2 + 246);
    if ((v81 & 0x8000) == 0)
    {
      goto LABEL_257;
    }

    goto LABEL_256;
  }

LABEL_272:
  *(result + 245) = *(a2 + 245);
  if ((v81 & 0x4000) != 0)
  {
    goto LABEL_273;
  }

LABEL_255:
  if ((v81 & 0x8000) != 0)
  {
LABEL_256:
    *(result + 247) = *(a2 + 247);
  }

LABEL_257:
  *(result + 20) |= v81;
}

void sub_27639CA10(google::protobuf::UnknownFieldSet *result, google::protobuf::UnknownFieldSet *a2)
{
  if (a2 != result)
  {
    sub_276399000(result);

    sub_27639C020(result, a2);
  }
}

uint64_t sub_27639CA5C(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    result = sub_2763986E8(*(a1 + 32));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 2) != 0)
  {
    result = sub_276398CCC(*(a1 + 40));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 4) != 0)
  {
    result = TSSSOS::SpecIntegerArchive::IsInitialized(*(a1 + 48));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 8) != 0)
  {
    result = sub_2763986E8(*(a1 + 56));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 0x10) != 0)
  {
    result = sub_2763986E8(*(a1 + 64));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 0x20) != 0)
  {
    result = TSSSOS::SpecDoubleArchive::IsInitialized(*(a1 + 72));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 0x40) != 0)
  {
    result = sub_276398CCC(*(a1 + 80));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 0x80) != 0)
  {
    result = TSSSOS::SpecIntegerArchive::IsInitialized(*(a1 + 88));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 0x100) != 0)
  {
    result = TSSSOS::SpecIntegerArchive::IsInitialized(*(a1 + 96));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 0x200) != 0)
  {
    result = TSSSOS::SpecIntegerArchive::IsInitialized(*(a1 + 104));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 0x400) != 0)
  {
    result = TSSSOS::SpecIntegerArchive::IsInitialized(*(a1 + 112));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 0x800) != 0)
  {
    result = TSSSOS::SpecBoolArchive::IsInitialized(*(a1 + 120));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 0x1000) != 0)
  {
    result = TSSSOS::SpecIntegerArchive::IsInitialized(*(a1 + 128));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 0x2000) != 0)
  {
    result = TSSSOS::SpecBoolArchive::IsInitialized(*(a1 + 136));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 0x4000) != 0)
  {
    result = TSSSOS::SpecBoolArchive::IsInitialized(*(a1 + 144));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 0x8000) != 0)
  {
    result = TSSSOS::SpecBoolArchive::IsInitialized(*(a1 + 152));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 0x10000) != 0)
  {
    result = TSSSOS::SpecBoolArchive::IsInitialized(*(a1 + 160));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 0x20000) != 0)
  {
    result = TSSSOS::SpecBoolArchive::IsInitialized(*(a1 + 168));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 0x40000) != 0)
  {
    result = TSSSOS::SpecBoolArchive::IsInitialized(*(a1 + 176));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 0x80000) != 0)
  {
    result = TSSSOS::SpecBoolArchive::IsInitialized(*(a1 + 184));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 0x100000) != 0)
  {
    result = TSSSOS::SpecStringArchive::IsInitialized(*(a1 + 192));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 0x200000) != 0)
  {
    result = TSSSOS::SpecStringArchive::IsInitialized(*(a1 + 200));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  result = 0;
  if ((v2 & 0x400000) == 0 || (v4 = *(a1 + 208), (*(v4 + 16) & 1) == 0) || (*(*(v4 + 24) + 16) & 2) != 0)
  {
    if ((v2 & 0x800000) == 0)
    {
      return 1;
    }

    v5 = *(a1 + 216);
    if ((*(v5 + 16) & 1) == 0 || (*(*(v5 + 24) + 16) & 2) != 0)
    {
      return 1;
    }
  }

  return result;
}

uint64_t *sub_27639CCB4(uint64_t *a1)
{
  sub_27639CCE8(a1);
  sub_2763941F4(a1 + 1);
  return a1;
}

uint64_t *sub_27639CCE8(uint64_t *result)
{
  if (result != &qword_2812EE918)
  {
    v1 = result;
    if (result[4])
    {
      v2 = MEMORY[0x277C97990]();
      MEMORY[0x277C98580](v2, 0x10A1C40D4912B22);
    }

    if (v1[5])
    {
      v3 = MEMORY[0x277C97990]();
      MEMORY[0x277C98580](v3, 0x10A1C40D4912B22);
    }

    if (v1[6])
    {
      v4 = MEMORY[0x277C97890]();
      MEMORY[0x277C98580](v4, 0x10A1C4030AC051BLL);
    }

    if (v1[7])
    {
      v5 = MEMORY[0x277C97890]();
      MEMORY[0x277C98580](v5, 0x10A1C4030AC051BLL);
    }

    if (v1[8])
    {
      v6 = MEMORY[0x277C97A10]();
      MEMORY[0x277C98580](v6, 0x10A1C40D4912B22);
    }

    if (v1[9])
    {
      v7 = MEMORY[0x277C97A10]();
      MEMORY[0x277C98580](v7, 0x10A1C40D4912B22);
    }

    if (v1[10])
    {
      v8 = MEMORY[0x277C97A10]();
      MEMORY[0x277C98580](v8, 0x10A1C40D4912B22);
    }

    if (v1[11])
    {
      v9 = MEMORY[0x277C97A10]();
      MEMORY[0x277C98580](v9, 0x10A1C40D4912B22);
    }

    if (v1[12])
    {
      v10 = MEMORY[0x277C97A10]();
      MEMORY[0x277C98580](v10, 0x10A1C40D4912B22);
    }

    if (v1[13])
    {
      v11 = MEMORY[0x277C97990]();
      MEMORY[0x277C98580](v11, 0x10A1C40D4912B22);
    }

    if (v1[14])
    {
      v12 = MEMORY[0x277C97990]();
      MEMORY[0x277C98580](v12, 0x10A1C40D4912B22);
    }

    if (v1[15])
    {
      v13 = MEMORY[0x277C97990]();
      MEMORY[0x277C98580](v13, 0x10A1C40D4912B22);
    }

    if (v1[16])
    {
      v14 = MEMORY[0x277C97990]();
      MEMORY[0x277C98580](v14, 0x10A1C40D4912B22);
    }

    if (v1[17])
    {
      v15 = MEMORY[0x277C97990]();
      MEMORY[0x277C98580](v15, 0x10A1C40D4912B22);
    }

    if (v1[18])
    {
      v16 = MEMORY[0x277C97850]();
      MEMORY[0x277C98580](v16, 0x10A1C4034CD354FLL);
    }

    if (v1[19])
    {
      v17 = MEMORY[0x277C97850]();
      MEMORY[0x277C98580](v17, 0x10A1C4034CD354FLL);
    }

    if (v1[20])
    {
      v18 = MEMORY[0x277C97890]();
      MEMORY[0x277C98580](v18, 0x10A1C4030AC051BLL);
    }

    if (v1[21])
    {
      v19 = MEMORY[0x277C97890]();
      MEMORY[0x277C98580](v19, 0x10A1C4030AC051BLL);
    }

    if (v1[22])
    {
      v20 = MEMORY[0x277C97990]();
      MEMORY[0x277C98580](v20, 0x10A1C40D4912B22);
    }

    if (v1[23])
    {
      v21 = MEMORY[0x277C97990]();
      MEMORY[0x277C98580](v21, 0x10A1C40D4912B22);
    }

    if (v1[24])
    {
      v22 = MEMORY[0x277C97850]();
      MEMORY[0x277C98580](v22, 0x10A1C4034CD354FLL);
    }

    if (v1[25])
    {
      v23 = MEMORY[0x277C97850]();
      MEMORY[0x277C98580](v23, 0x10A1C4034CD354FLL);
    }

    if (v1[26])
    {
      v24 = MEMORY[0x277C97890]();
      MEMORY[0x277C98580](v24, 0x10A1C4030AC051BLL);
    }

    if (v1[27])
    {
      v25 = MEMORY[0x277C97890]();
      MEMORY[0x277C98580](v25, 0x10A1C4030AC051BLL);
    }

    if (v1[28])
    {
      v26 = MEMORY[0x277C97910]();
      MEMORY[0x277C98580](v26, 0x10A1C40D4912B22);
    }

    if (v1[29])
    {
      v27 = MEMORY[0x277C97910]();
      MEMORY[0x277C98580](v27, 0x10A1C40D4912B22);
    }

    if (v1[30])
    {
      v28 = MEMORY[0x277C97910]();
      MEMORY[0x277C98580](v28, 0x10A1C40D4912B22);
    }

    if (v1[31])
    {
      v29 = MEMORY[0x277C97910]();
      MEMORY[0x277C98580](v29, 0x10A1C40D4912B22);
    }

    if (v1[32])
    {
      v30 = MEMORY[0x277C97910]();
      MEMORY[0x277C98580](v30, 0x10A1C40D4912B22);
    }

    if (v1[33])
    {
      v31 = MEMORY[0x277C97910]();
      MEMORY[0x277C98580](v31, 0x10A1C40D4912B22);
    }

    if (v1[34])
    {
      v32 = MEMORY[0x277C97910]();
      MEMORY[0x277C98580](v32, 0x10A1C40D4912B22);
    }

    if (v1[35])
    {
      v33 = MEMORY[0x277C97910]();
      MEMORY[0x277C98580](v33, 0x10A1C40D4912B22);
    }

    if (v1[36])
    {
      v34 = MEMORY[0x277C97910]();
      MEMORY[0x277C98580](v34, 0x10A1C40D4912B22);
    }

    if (v1[37])
    {
      v35 = MEMORY[0x277C97910]();
      MEMORY[0x277C98580](v35, 0x10A1C40D4912B22);
    }

    if (v1[38])
    {
      v36 = MEMORY[0x277C97910]();
      MEMORY[0x277C98580](v36, 0x10A1C40D4912B22);
    }

    if (v1[39])
    {
      v37 = MEMORY[0x277C97910]();
      MEMORY[0x277C98580](v37, 0x10A1C40D4912B22);
    }

    if (v1[40])
    {
      v38 = MEMORY[0x277C97910]();
      MEMORY[0x277C98580](v38, 0x10A1C40D4912B22);
    }

    if (v1[41])
    {
      v39 = MEMORY[0x277C97910]();
      MEMORY[0x277C98580](v39, 0x10A1C40D4912B22);
    }

    if (v1[42])
    {
      v40 = MEMORY[0x277C97910]();
      MEMORY[0x277C98580](v40, 0x10A1C40D4912B22);
    }

    if (v1[43])
    {
      v41 = MEMORY[0x277C97910]();
      MEMORY[0x277C98580](v41, 0x10A1C40D4912B22);
    }

    if (v1[44])
    {
      v42 = MEMORY[0x277C97A10]();
      MEMORY[0x277C98580](v42, 0x10A1C40D4912B22);
    }

    if (v1[45])
    {
      v43 = MEMORY[0x277C97A10]();
      MEMORY[0x277C98580](v43, 0x10A1C40D4912B22);
    }

    if (v1[46])
    {
      v44 = MEMORY[0x277C97A10]();
      MEMORY[0x277C98580](v44, 0x10A1C40D4912B22);
    }

    if (v1[47])
    {
      v45 = MEMORY[0x277C97A10]();
      MEMORY[0x277C98580](v45, 0x10A1C40D4912B22);
    }

    if (v1[48])
    {
      v46 = MEMORY[0x277C97A10]();
      MEMORY[0x277C98580](v46, 0x10A1C40D4912B22);
    }

    result = v1[49];
    if (result)
    {
      MEMORY[0x277C97A10]();

      JUMPOUT(0x277C98580);
    }
  }

  return result;
}

void sub_27639D108(uint64_t *a1)
{
  sub_27639CCB4(a1);

  JUMPOUT(0x277C98580);
}

google::protobuf::UnknownFieldSet *sub_27639D148(google::protobuf::UnknownFieldSet *result)
{
  v1 = result;
  v2 = result + 16;
  v3 = *(result + 4);
  if (!v3)
  {
    goto LABEL_11;
  }

  if (v3)
  {
    result = TSSSOS::SpecDoubleArchive::Clear(*(result + 4));
    if ((v3 & 2) == 0)
    {
LABEL_4:
      if ((v3 & 4) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_78;
    }
  }

  else if ((v3 & 2) == 0)
  {
    goto LABEL_4;
  }

  result = TSSSOS::SpecDoubleArchive::Clear(*(v1 + 40));
  if ((v3 & 4) == 0)
  {
LABEL_5:
    if ((v3 & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_79;
  }

LABEL_78:
  result = TSDSOS::SpecStrokeArchive::Clear(*(v1 + 48));
  if ((v3 & 8) == 0)
  {
LABEL_6:
    if ((v3 & 0x10) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_80;
  }

LABEL_79:
  result = TSDSOS::SpecStrokeArchive::Clear(*(v1 + 56));
  if ((v3 & 0x10) == 0)
  {
LABEL_7:
    if ((v3 & 0x20) == 0)
    {
      goto LABEL_8;
    }

LABEL_81:
    result = TSSSOS::SpecIntegerArchive::Clear(*(v1 + 72));
    if ((v3 & 0x40) == 0)
    {
LABEL_9:
      if ((v3 & 0x80) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_10;
    }

    goto LABEL_82;
  }

LABEL_80:
  result = TSSSOS::SpecIntegerArchive::Clear(*(v1 + 64));
  if ((v3 & 0x20) != 0)
  {
    goto LABEL_81;
  }

LABEL_8:
  if ((v3 & 0x40) == 0)
  {
    goto LABEL_9;
  }

LABEL_82:
  result = TSSSOS::SpecIntegerArchive::Clear(*(v1 + 80));
  if ((v3 & 0x80) != 0)
  {
LABEL_10:
    result = TSSSOS::SpecIntegerArchive::Clear(*(v1 + 88));
  }

LABEL_11:
  if ((v3 & 0xFF00) == 0)
  {
    goto LABEL_21;
  }

  if ((v3 & 0x100) != 0)
  {
    result = TSSSOS::SpecIntegerArchive::Clear(*(v1 + 96));
    if ((v3 & 0x200) == 0)
    {
LABEL_14:
      if ((v3 & 0x400) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_86;
    }
  }

  else if ((v3 & 0x200) == 0)
  {
    goto LABEL_14;
  }

  result = TSSSOS::SpecDoubleArchive::Clear(*(v1 + 104));
  if ((v3 & 0x400) == 0)
  {
LABEL_15:
    if ((v3 & 0x800) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_87;
  }

LABEL_86:
  result = TSSSOS::SpecDoubleArchive::Clear(*(v1 + 112));
  if ((v3 & 0x800) == 0)
  {
LABEL_16:
    if ((v3 & 0x1000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_88;
  }

LABEL_87:
  result = TSSSOS::SpecDoubleArchive::Clear(*(v1 + 120));
  if ((v3 & 0x1000) == 0)
  {
LABEL_17:
    if ((v3 & 0x2000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_89;
  }

LABEL_88:
  result = TSSSOS::SpecDoubleArchive::Clear(*(v1 + 128));
  if ((v3 & 0x2000) == 0)
  {
LABEL_18:
    if ((v3 & 0x4000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_90;
  }

LABEL_89:
  result = TSSSOS::SpecDoubleArchive::Clear(*(v1 + 136));
  if ((v3 & 0x4000) == 0)
  {
LABEL_19:
    if ((v3 & 0x8000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_20;
  }

LABEL_90:
  result = TSDSOS::SpecShadowArchive::Clear(*(v1 + 144));
  if ((v3 & 0x8000) != 0)
  {
LABEL_20:
    result = TSDSOS::SpecShadowArchive::Clear(*(v1 + 152));
  }

LABEL_21:
  if ((v3 & 0xFF0000) == 0)
  {
    goto LABEL_31;
  }

  if ((v3 & 0x10000) != 0)
  {
    result = TSDSOS::SpecStrokeArchive::Clear(*(v1 + 160));
    if ((v3 & 0x20000) == 0)
    {
LABEL_24:
      if ((v3 & 0x40000) == 0)
      {
        goto LABEL_25;
      }

      goto LABEL_94;
    }
  }

  else if ((v3 & 0x20000) == 0)
  {
    goto LABEL_24;
  }

  result = TSDSOS::SpecStrokeArchive::Clear(*(v1 + 168));
  if ((v3 & 0x40000) == 0)
  {
LABEL_25:
    if ((v3 & 0x80000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_95;
  }

LABEL_94:
  result = TSSSOS::SpecDoubleArchive::Clear(*(v1 + 176));
  if ((v3 & 0x80000) == 0)
  {
LABEL_26:
    if ((v3 & 0x100000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_96;
  }

LABEL_95:
  result = TSSSOS::SpecDoubleArchive::Clear(*(v1 + 184));
  if ((v3 & 0x100000) == 0)
  {
LABEL_27:
    if ((v3 & 0x200000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_97;
  }

LABEL_96:
  result = TSDSOS::SpecShadowArchive::Clear(*(v1 + 192));
  if ((v3 & 0x200000) == 0)
  {
LABEL_28:
    if ((v3 & 0x400000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_98;
  }

LABEL_97:
  result = TSDSOS::SpecShadowArchive::Clear(*(v1 + 200));
  if ((v3 & 0x400000) == 0)
  {
LABEL_29:
    if ((v3 & 0x800000) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_30;
  }

LABEL_98:
  result = TSDSOS::SpecStrokeArchive::Clear(*(v1 + 208));
  if ((v3 & 0x800000) != 0)
  {
LABEL_30:
    result = TSDSOS::SpecStrokeArchive::Clear(*(v1 + 216));
  }

LABEL_31:
  if (!HIBYTE(v3))
  {
    goto LABEL_40;
  }

  if ((v3 & 0x1000000) != 0)
  {
    result = TSSSOS::SpecBoolArchive::Clear(*(v1 + 224));
    if ((v3 & 0x2000000) == 0)
    {
LABEL_34:
      if ((v3 & 0x4000000) == 0)
      {
        goto LABEL_35;
      }

      goto LABEL_116;
    }
  }

  else if ((v3 & 0x2000000) == 0)
  {
    goto LABEL_34;
  }

  result = TSSSOS::SpecBoolArchive::Clear(*(v1 + 232));
  if ((v3 & 0x4000000) == 0)
  {
LABEL_35:
    if ((v3 & 0x8000000) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_117;
  }

LABEL_116:
  result = TSSSOS::SpecBoolArchive::Clear(*(v1 + 240));
  if ((v3 & 0x8000000) == 0)
  {
LABEL_36:
    if ((v3 & 0x10000000) == 0)
    {
      goto LABEL_37;
    }

    goto LABEL_118;
  }

LABEL_117:
  result = TSSSOS::SpecBoolArchive::Clear(*(v1 + 248));
  if ((v3 & 0x10000000) == 0)
  {
LABEL_37:
    if ((v3 & 0x20000000) == 0)
    {
      goto LABEL_38;
    }

    goto LABEL_119;
  }

LABEL_118:
  result = TSSSOS::SpecBoolArchive::Clear(*(v1 + 256));
  if ((v3 & 0x20000000) == 0)
  {
LABEL_38:
    if ((v3 & 0x40000000) == 0)
    {
      goto LABEL_39;
    }

LABEL_120:
    result = TSSSOS::SpecBoolArchive::Clear(*(v1 + 272));
    if ((v3 & 0x80000000) == 0)
    {
      goto LABEL_40;
    }

    goto LABEL_121;
  }

LABEL_119:
  result = TSSSOS::SpecBoolArchive::Clear(*(v1 + 264));
  if ((v3 & 0x40000000) != 0)
  {
    goto LABEL_120;
  }

LABEL_39:
  if ((v3 & 0x80000000) == 0)
  {
    goto LABEL_40;
  }

LABEL_121:
  result = TSSSOS::SpecBoolArchive::Clear(*(v1 + 280));
LABEL_40:
  v4 = *(v1 + 20);
  if (!v4)
  {
    goto LABEL_50;
  }

  if (v4)
  {
    result = TSSSOS::SpecBoolArchive::Clear(*(v1 + 288));
    if ((v4 & 2) == 0)
    {
LABEL_43:
      if ((v4 & 4) == 0)
      {
        goto LABEL_44;
      }

      goto LABEL_102;
    }
  }

  else if ((v4 & 2) == 0)
  {
    goto LABEL_43;
  }

  result = TSSSOS::SpecBoolArchive::Clear(*(v1 + 296));
  if ((v4 & 4) == 0)
  {
LABEL_44:
    if ((v4 & 8) == 0)
    {
      goto LABEL_45;
    }

    goto LABEL_103;
  }

LABEL_102:
  result = TSSSOS::SpecBoolArchive::Clear(*(v1 + 304));
  if ((v4 & 8) == 0)
  {
LABEL_45:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_46;
    }

    goto LABEL_104;
  }

LABEL_103:
  result = TSSSOS::SpecBoolArchive::Clear(*(v1 + 312));
  if ((v4 & 0x10) == 0)
  {
LABEL_46:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_47;
    }

    goto LABEL_105;
  }

LABEL_104:
  result = TSSSOS::SpecBoolArchive::Clear(*(v1 + 320));
  if ((v4 & 0x20) == 0)
  {
LABEL_47:
    if ((v4 & 0x40) == 0)
    {
      goto LABEL_48;
    }

    goto LABEL_106;
  }

LABEL_105:
  result = TSSSOS::SpecBoolArchive::Clear(*(v1 + 328));
  if ((v4 & 0x40) == 0)
  {
LABEL_48:
    if ((v4 & 0x80) == 0)
    {
      goto LABEL_50;
    }

    goto LABEL_49;
  }

LABEL_106:
  result = TSSSOS::SpecBoolArchive::Clear(*(v1 + 336));
  if ((v4 & 0x80) != 0)
  {
LABEL_49:
    result = TSSSOS::SpecBoolArchive::Clear(*(v1 + 344));
  }

LABEL_50:
  if ((v4 & 0x3F00) == 0)
  {
    goto LABEL_58;
  }

  if ((v4 & 0x100) != 0)
  {
    result = TSSSOS::SpecIntegerArchive::Clear(*(v1 + 352));
    if ((v4 & 0x200) == 0)
    {
LABEL_53:
      if ((v4 & 0x400) == 0)
      {
        goto LABEL_54;
      }

      goto LABEL_110;
    }
  }

  else if ((v4 & 0x200) == 0)
  {
    goto LABEL_53;
  }

  result = TSSSOS::SpecIntegerArchive::Clear(*(v1 + 360));
  if ((v4 & 0x400) == 0)
  {
LABEL_54:
    if ((v4 & 0x800) == 0)
    {
      goto LABEL_55;
    }

    goto LABEL_111;
  }

LABEL_110:
  result = TSSSOS::SpecIntegerArchive::Clear(*(v1 + 368));
  if ((v4 & 0x800) == 0)
  {
LABEL_55:
    if ((v4 & 0x1000) == 0)
    {
      goto LABEL_56;
    }

    goto LABEL_112;
  }

LABEL_111:
  result = TSSSOS::SpecIntegerArchive::Clear(*(v1 + 376));
  if ((v4 & 0x1000) == 0)
  {
LABEL_56:
    if ((v4 & 0x2000) == 0)
    {
      goto LABEL_58;
    }

    goto LABEL_57;
  }

LABEL_112:
  result = TSSSOS::SpecIntegerArchive::Clear(*(v1 + 384));
  if ((v4 & 0x2000) != 0)
  {
LABEL_57:
    result = TSSSOS::SpecIntegerArchive::Clear(*(v1 + 392));
  }

LABEL_58:
  if ((v4 & 0xC000) != 0)
  {
    *(v1 + 400) = 0;
  }

  if ((v4 & 0xFF0000) != 0)
  {
    *(v2 + 386) = 0;
  }

  if (HIBYTE(v4))
  {
    *(v2 + 394) = 0;
  }

  v5 = *(v1 + 24);
  if (v5)
  {
    *(v2 + 402) = 0;
  }

  if ((v5 & 0xFF00) != 0)
  {
    *(v2 + 410) = 0;
  }

  if ((v5 & 0xFF0000) != 0)
  {
    *(v2 + 418) = 0;
  }

  if ((v5 & 0xF000000) != 0)
  {
    *(v2 + 426) = 0;
  }

  *(v2 + 2) = 0;
  *v2 = 0;
  v7 = *(v1 + 8);
  v6 = (v1 + 8);
  if (v7)
  {

    return sub_2763D4FD4(v6);
  }

  return result;
}

google::protobuf::internal *sub_27639D51C(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v292 = a2;
  if ((sub_2763D4D98(a3, &v292, *(a3 + 92)) & 1) == 0)
  {
    while (1)
    {
      v6 = (v292 + 1);
      LODWORD(v7) = *v292;
      if (*v292 < 0)
      {
        v7 = (v7 + (*v6 << 7) - 128);
        if (*v6 < 0)
        {
          TagFallback = google::protobuf::internal::ReadTagFallback(v292, v7);
          v292 = TagFallback;
          if (!TagFallback)
          {
            return 0;
          }

          v6 = TagFallback;
          goto LABEL_7;
        }

        v6 = (v292 + 2);
      }

      v292 = v6;
LABEL_7:
      switch(v7 >> 3)
      {
        case 1u:
          if (v7 != 10)
          {
            goto LABEL_483;
          }

          *(a1 + 16) |= 1u;
          v8 = *(a1 + 32);
          if (v8)
          {
            goto LABEL_408;
          }

          v9 = *(a1 + 8);
          if (v9)
          {
            v9 = *(v9 & 0xFFFFFFFFFFFFFFFELL);
          }

          v8 = MEMORY[0x277C97C40](v9);
          *(a1 + 32) = v8;
          goto LABEL_407;
        case 2u:
          if (v7 != 16)
          {
            goto LABEL_483;
          }

          *(a1 + 20) |= 0x4000u;
          v110 = (v6 + 1);
          v109 = *v6;
          if ((v109 & 0x8000000000000000) == 0)
          {
            goto LABEL_249;
          }

          v111 = *v110;
          v109 = (v111 << 7) + v109 - 128;
          if (v111 < 0)
          {
            v248 = google::protobuf::internal::VarintParseSlow64(v6, v109);
            v292 = v248;
            *(a1 + 400) = v249 != 0;
            if (!v248)
            {
              return 0;
            }
          }

          else
          {
            v110 = (v6 + 2);
LABEL_249:
            v292 = v110;
            *(a1 + 400) = v109 != 0;
          }

          goto LABEL_476;
        case 3u:
          if (v7 != 26)
          {
            goto LABEL_483;
          }

          *(a1 + 16) |= 2u;
          v8 = *(a1 + 40);
          if (v8)
          {
            goto LABEL_408;
          }

          v96 = *(a1 + 8);
          if (v96)
          {
            v96 = *(v96 & 0xFFFFFFFFFFFFFFFELL);
          }

          v8 = MEMORY[0x277C97C40](v96);
          *(a1 + 40) = v8;
          goto LABEL_407;
        case 4u:
          if (v7 != 32)
          {
            goto LABEL_483;
          }

          *(a1 + 20) |= 0x8000u;
          v104 = (v6 + 1);
          v103 = *v6;
          if ((v103 & 0x8000000000000000) == 0)
          {
            goto LABEL_239;
          }

          v105 = *v104;
          v103 = (v105 << 7) + v103 - 128;
          if (v105 < 0)
          {
            v244 = google::protobuf::internal::VarintParseSlow64(v6, v103);
            v292 = v244;
            *(a1 + 401) = v245 != 0;
            if (!v244)
            {
              return 0;
            }
          }

          else
          {
            v104 = (v6 + 2);
LABEL_239:
            v292 = v104;
            *(a1 + 401) = v103 != 0;
          }

          goto LABEL_476;
        case 5u:
          if (v7 != 42)
          {
            goto LABEL_483;
          }

          *(a1 + 16) |= 4u;
          v60 = *(a1 + 48);
          if (v60)
          {
            goto LABEL_435;
          }

          v83 = *(a1 + 8);
          if (v83)
          {
            v83 = *(v83 & 0xFFFFFFFFFFFFFFFELL);
          }

          v60 = MEMORY[0x277C97C00](v83);
          *(a1 + 48) = v60;
          goto LABEL_434;
        case 6u:
          if (v7 != 48)
          {
            goto LABEL_483;
          }

          *(a1 + 20) |= 0x10000u;
          v127 = (v6 + 1);
          v126 = *v6;
          if ((v126 & 0x8000000000000000) == 0)
          {
            goto LABEL_284;
          }

          v128 = *v127;
          v126 = (v128 << 7) + v126 - 128;
          if (v128 < 0)
          {
            v258 = google::protobuf::internal::VarintParseSlow64(v6, v126);
            v292 = v258;
            *(a1 + 402) = v259 != 0;
            if (!v258)
            {
              return 0;
            }
          }

          else
          {
            v127 = (v6 + 2);
LABEL_284:
            v292 = v127;
            *(a1 + 402) = v126 != 0;
          }

          goto LABEL_476;
        case 7u:
          if (v7 != 58)
          {
            goto LABEL_483;
          }

          *(a1 + 16) |= 8u;
          v60 = *(a1 + 56);
          if (v60)
          {
            goto LABEL_435;
          }

          v139 = *(a1 + 8);
          if (v139)
          {
            v139 = *(v139 & 0xFFFFFFFFFFFFFFFELL);
          }

          v60 = MEMORY[0x277C97C00](v139);
          *(a1 + 56) = v60;
          goto LABEL_434;
        case 8u:
          if (v7 != 64)
          {
            goto LABEL_483;
          }

          *(a1 + 20) |= 0x20000u;
          v107 = (v6 + 1);
          v106 = *v6;
          if ((v106 & 0x8000000000000000) == 0)
          {
            goto LABEL_244;
          }

          v108 = *v107;
          v106 = (v108 << 7) + v106 - 128;
          if (v108 < 0)
          {
            v246 = google::protobuf::internal::VarintParseSlow64(v6, v106);
            v292 = v246;
            *(a1 + 403) = v247 != 0;
            if (!v246)
            {
              return 0;
            }
          }

          else
          {
            v107 = (v6 + 2);
LABEL_244:
            v292 = v107;
            *(a1 + 403) = v106 != 0;
          }

          goto LABEL_476;
        case 9u:
          if (v7 != 74)
          {
            goto LABEL_483;
          }

          *(a1 + 16) |= 0x10u;
          v11 = *(a1 + 64);
          if (v11)
          {
            goto LABEL_474;
          }

          v142 = *(a1 + 8);
          if (v142)
          {
            v142 = *(v142 & 0xFFFFFFFFFFFFFFFELL);
          }

          v11 = MEMORY[0x277C97C60](v142);
          *(a1 + 64) = v11;
          goto LABEL_473;
        case 0xAu:
          if (v7 != 80)
          {
            goto LABEL_483;
          }

          *(a1 + 20) |= 0x40000u;
          v90 = (v6 + 1);
          v89 = *v6;
          if ((v89 & 0x8000000000000000) == 0)
          {
            goto LABEL_209;
          }

          v91 = *v90;
          v89 = (v91 << 7) + v89 - 128;
          if (v91 < 0)
          {
            v236 = google::protobuf::internal::VarintParseSlow64(v6, v89);
            v292 = v236;
            *(a1 + 404) = v237 != 0;
            if (!v236)
            {
              return 0;
            }
          }

          else
          {
            v90 = (v6 + 2);
LABEL_209:
            v292 = v90;
            *(a1 + 404) = v89 != 0;
          }

          goto LABEL_476;
        case 0xBu:
          if (v7 != 90)
          {
            goto LABEL_483;
          }

          *(a1 + 16) |= 0x20u;
          v11 = *(a1 + 72);
          if (v11)
          {
            goto LABEL_474;
          }

          v141 = *(a1 + 8);
          if (v141)
          {
            v141 = *(v141 & 0xFFFFFFFFFFFFFFFELL);
          }

          v11 = MEMORY[0x277C97C60](v141);
          *(a1 + 72) = v11;
          goto LABEL_473;
        case 0xCu:
          if (v7 != 96)
          {
            goto LABEL_483;
          }

          *(a1 + 20) |= 0x80000u;
          v75 = (v6 + 1);
          v74 = *v6;
          if ((v74 & 0x8000000000000000) == 0)
          {
            goto LABEL_169;
          }

          v76 = *v75;
          v74 = (v76 << 7) + v74 - 128;
          if (v76 < 0)
          {
            v230 = google::protobuf::internal::VarintParseSlow64(v6, v74);
            v292 = v230;
            *(a1 + 405) = v231 != 0;
            if (!v230)
            {
              return 0;
            }
          }

          else
          {
            v75 = (v6 + 2);
LABEL_169:
            v292 = v75;
            *(a1 + 405) = v74 != 0;
          }

          goto LABEL_476;
        case 0xDu:
          if (v7 != 106)
          {
            goto LABEL_483;
          }

          *(a1 + 16) |= 0x40u;
          v11 = *(a1 + 80);
          if (v11)
          {
            goto LABEL_474;
          }

          v88 = *(a1 + 8);
          if (v88)
          {
            v88 = *(v88 & 0xFFFFFFFFFFFFFFFELL);
          }

          v11 = MEMORY[0x277C97C60](v88);
          *(a1 + 80) = v11;
          goto LABEL_473;
        case 0xEu:
          if (v7 != 112)
          {
            goto LABEL_483;
          }

          *(a1 + 20) |= 0x100000u;
          v137 = (v6 + 1);
          v136 = *v6;
          if ((v136 & 0x8000000000000000) == 0)
          {
            goto LABEL_304;
          }

          v138 = *v137;
          v136 = (v138 << 7) + v136 - 128;
          if (v138 < 0)
          {
            v264 = google::protobuf::internal::VarintParseSlow64(v6, v136);
            v292 = v264;
            *(a1 + 406) = v265 != 0;
            if (!v264)
            {
              return 0;
            }
          }

          else
          {
            v137 = (v6 + 2);
LABEL_304:
            v292 = v137;
            *(a1 + 406) = v136 != 0;
          }

          goto LABEL_476;
        case 0xFu:
          if (v7 != 122)
          {
            goto LABEL_483;
          }

          *(a1 + 16) |= 0x80u;
          v11 = *(a1 + 88);
          if (v11)
          {
            goto LABEL_474;
          }

          v67 = *(a1 + 8);
          if (v67)
          {
            v67 = *(v67 & 0xFFFFFFFFFFFFFFFELL);
          }

          v11 = MEMORY[0x277C97C60](v67);
          *(a1 + 88) = v11;
          goto LABEL_473;
        case 0x10u:
          if (v7 != 128)
          {
            goto LABEL_483;
          }

          *(a1 + 20) |= 0x200000u;
          v98 = (v6 + 1);
          v97 = *v6;
          if ((v97 & 0x8000000000000000) == 0)
          {
            goto LABEL_229;
          }

          v99 = *v98;
          v97 = (v99 << 7) + v97 - 128;
          if (v99 < 0)
          {
            v240 = google::protobuf::internal::VarintParseSlow64(v6, v97);
            v292 = v240;
            *(a1 + 407) = v241 != 0;
            if (!v240)
            {
              return 0;
            }
          }

          else
          {
            v98 = (v6 + 2);
LABEL_229:
            v292 = v98;
            *(a1 + 407) = v97 != 0;
          }

          goto LABEL_476;
        case 0x11u:
          if (v7 != 138)
          {
            goto LABEL_483;
          }

          *(a1 + 16) |= 0x100u;
          v11 = *(a1 + 96);
          if (v11)
          {
            goto LABEL_474;
          }

          v62 = *(a1 + 8);
          if (v62)
          {
            v62 = *(v62 & 0xFFFFFFFFFFFFFFFELL);
          }

          v11 = MEMORY[0x277C97C60](v62);
          *(a1 + 96) = v11;
          goto LABEL_473;
        case 0x12u:
          if (v7 != 144)
          {
            goto LABEL_483;
          }

          *(a1 + 20) |= 0x400000u;
          v116 = (v6 + 1);
          v115 = *v6;
          if ((v115 & 0x8000000000000000) == 0)
          {
            goto LABEL_259;
          }

          v117 = *v116;
          v115 = (v117 << 7) + v115 - 128;
          if (v117 < 0)
          {
            v252 = google::protobuf::internal::VarintParseSlow64(v6, v115);
            v292 = v252;
            *(a1 + 408) = v253 != 0;
            if (!v252)
            {
              return 0;
            }
          }

          else
          {
            v116 = (v6 + 2);
LABEL_259:
            v292 = v116;
            *(a1 + 408) = v115 != 0;
          }

          goto LABEL_476;
        case 0x13u:
          if (v7 != 154)
          {
            goto LABEL_483;
          }

          *(a1 + 16) |= 0x200u;
          v8 = *(a1 + 104);
          if (v8)
          {
            goto LABEL_408;
          }

          v140 = *(a1 + 8);
          if (v140)
          {
            v140 = *(v140 & 0xFFFFFFFFFFFFFFFELL);
          }

          v8 = MEMORY[0x277C97C40](v140);
          *(a1 + 104) = v8;
          goto LABEL_407;
        case 0x14u:
          if (v7 != 160)
          {
            goto LABEL_483;
          }

          *(a1 + 20) |= 0x800000u;
          v157 = (v6 + 1);
          v156 = *v6;
          if ((v156 & 0x8000000000000000) == 0)
          {
            goto LABEL_364;
          }

          v158 = *v157;
          v156 = (v158 << 7) + v156 - 128;
          if (v158 < 0)
          {
            v272 = google::protobuf::internal::VarintParseSlow64(v6, v156);
            v292 = v272;
            *(a1 + 409) = v273 != 0;
            if (!v272)
            {
              return 0;
            }
          }

          else
          {
            v157 = (v6 + 2);
LABEL_364:
            v292 = v157;
            *(a1 + 409) = v156 != 0;
          }

          goto LABEL_476;
        case 0x15u:
          if (v7 != 170)
          {
            goto LABEL_483;
          }

          *(a1 + 16) |= 0x400u;
          v8 = *(a1 + 112);
          if (v8)
          {
            goto LABEL_408;
          }

          v122 = *(a1 + 8);
          if (v122)
          {
            v122 = *(v122 & 0xFFFFFFFFFFFFFFFELL);
          }

          v8 = MEMORY[0x277C97C40](v122);
          *(a1 + 112) = v8;
          goto LABEL_407;
        case 0x16u:
          if (v7 != 176)
          {
            goto LABEL_483;
          }

          *(a1 + 20) |= 0x1000000u;
          v134 = (v6 + 1);
          v133 = *v6;
          if ((v133 & 0x8000000000000000) == 0)
          {
            goto LABEL_299;
          }

          v135 = *v134;
          v133 = (v135 << 7) + v133 - 128;
          if (v135 < 0)
          {
            v262 = google::protobuf::internal::VarintParseSlow64(v6, v133);
            v292 = v262;
            *(a1 + 410) = v263 != 0;
            if (!v262)
            {
              return 0;
            }
          }

          else
          {
            v134 = (v6 + 2);
LABEL_299:
            v292 = v134;
            *(a1 + 410) = v133 != 0;
          }

          goto LABEL_476;
        case 0x17u:
          if (v7 != 186)
          {
            goto LABEL_483;
          }

          *(a1 + 16) |= 0x800u;
          v8 = *(a1 + 120);
          if (v8)
          {
            goto LABEL_408;
          }

          v151 = *(a1 + 8);
          if (v151)
          {
            v151 = *(v151 & 0xFFFFFFFFFFFFFFFELL);
          }

          v8 = MEMORY[0x277C97C40](v151);
          *(a1 + 120) = v8;
          goto LABEL_407;
        case 0x18u:
          if (v7 != 192)
          {
            goto LABEL_483;
          }

          *(a1 + 20) |= 0x2000000u;
          v167 = (v6 + 1);
          v166 = *v6;
          if ((v166 & 0x8000000000000000) == 0)
          {
            goto LABEL_384;
          }

          v168 = *v167;
          v166 = (v168 << 7) + v166 - 128;
          if (v168 < 0)
          {
            v278 = google::protobuf::internal::VarintParseSlow64(v6, v166);
            v292 = v278;
            *(a1 + 411) = v279 != 0;
            if (!v278)
            {
              return 0;
            }
          }

          else
          {
            v167 = (v6 + 2);
LABEL_384:
            v292 = v167;
            *(a1 + 411) = v166 != 0;
          }

          goto LABEL_476;
        case 0x19u:
          if (v7 != 202)
          {
            goto LABEL_483;
          }

          *(a1 + 16) |= 0x1000u;
          v8 = *(a1 + 128);
          if (v8)
          {
            goto LABEL_408;
          }

          v95 = *(a1 + 8);
          if (v95)
          {
            v95 = *(v95 & 0xFFFFFFFFFFFFFFFELL);
          }

          v8 = MEMORY[0x277C97C40](v95);
          *(a1 + 128) = v8;
          goto LABEL_407;
        case 0x1Au:
          if (v7 != 208)
          {
            goto LABEL_483;
          }

          *(a1 + 20) |= 0x4000000u;
          v93 = (v6 + 1);
          v92 = *v6;
          if ((v92 & 0x8000000000000000) == 0)
          {
            goto LABEL_214;
          }

          v94 = *v93;
          v92 = (v94 << 7) + v92 - 128;
          if (v94 < 0)
          {
            v238 = google::protobuf::internal::VarintParseSlow64(v6, v92);
            v292 = v238;
            *(a1 + 412) = v239 != 0;
            if (!v238)
            {
              return 0;
            }
          }

          else
          {
            v93 = (v6 + 2);
LABEL_214:
            v292 = v93;
            *(a1 + 412) = v92 != 0;
          }

          goto LABEL_476;
        case 0x1Bu:
          if (v7 != 218)
          {
            goto LABEL_483;
          }

          *(a1 + 16) |= 0x2000u;
          v8 = *(a1 + 136);
          if (v8)
          {
            goto LABEL_408;
          }

          v175 = *(a1 + 8);
          if (v175)
          {
            v175 = *(v175 & 0xFFFFFFFFFFFFFFFELL);
          }

          v8 = MEMORY[0x277C97C40](v175);
          *(a1 + 136) = v8;
          goto LABEL_407;
        case 0x1Cu:
          if (v7 != 224)
          {
            goto LABEL_483;
          }

          *(a1 + 20) |= 0x8000000u;
          v58 = (v6 + 1);
          v57 = *v6;
          if ((v57 & 0x8000000000000000) == 0)
          {
            goto LABEL_119;
          }

          v59 = *v58;
          v57 = (v59 << 7) + v57 - 128;
          if (v59 < 0)
          {
            v224 = google::protobuf::internal::VarintParseSlow64(v6, v57);
            v292 = v224;
            *(a1 + 413) = v225 != 0;
            if (!v224)
            {
              return 0;
            }
          }

          else
          {
            v58 = (v6 + 2);
LABEL_119:
            v292 = v58;
            *(a1 + 413) = v57 != 0;
          }

          goto LABEL_476;
        case 0x1Du:
          if (v7 != 234)
          {
            goto LABEL_483;
          }

          *(a1 + 16) |= 0x4000u;
          v84 = *(a1 + 144);
          if (v84)
          {
            goto LABEL_391;
          }

          v169 = *(a1 + 8);
          if (v169)
          {
            v169 = *(v169 & 0xFFFFFFFFFFFFFFFELL);
          }

          v84 = MEMORY[0x277C97BF0](v169);
          *(a1 + 144) = v84;
          goto LABEL_390;
        case 0x1Eu:
          if (v7 != 240)
          {
            goto LABEL_483;
          }

          *(a1 + 20) |= 0x10000000u;
          v172 = (v6 + 1);
          v171 = *v6;
          if ((v171 & 0x8000000000000000) == 0)
          {
            goto LABEL_396;
          }

          v173 = *v172;
          v171 = (v173 << 7) + v171 - 128;
          if (v173 < 0)
          {
            v280 = google::protobuf::internal::VarintParseSlow64(v6, v171);
            v292 = v280;
            *(a1 + 414) = v281 != 0;
            if (!v280)
            {
              return 0;
            }
          }

          else
          {
            v172 = (v6 + 2);
LABEL_396:
            v292 = v172;
            *(a1 + 414) = v171 != 0;
          }

          goto LABEL_476;
        case 0x1Fu:
          if (v7 != 250)
          {
            goto LABEL_483;
          }

          *(a1 + 16) |= 0x8000u;
          v84 = *(a1 + 152);
          if (v84)
          {
            goto LABEL_391;
          }

          v143 = *(a1 + 8);
          if (v143)
          {
            v143 = *(v143 & 0xFFFFFFFFFFFFFFFELL);
          }

          v84 = MEMORY[0x277C97BF0](v143);
          *(a1 + 152) = v84;
          goto LABEL_390;
        case 0x20u:
          if (v7)
          {
            goto LABEL_483;
          }

          *(a1 + 20) |= 0x20000000u;
          v113 = (v6 + 1);
          v112 = *v6;
          if ((v112 & 0x8000000000000000) == 0)
          {
            goto LABEL_254;
          }

          v114 = *v113;
          v112 = (v114 << 7) + v112 - 128;
          if (v114 < 0)
          {
            v250 = google::protobuf::internal::VarintParseSlow64(v6, v112);
            v292 = v250;
            *(a1 + 415) = v251 != 0;
            if (!v250)
            {
              return 0;
            }
          }

          else
          {
            v113 = (v6 + 2);
LABEL_254:
            v292 = v113;
            *(a1 + 415) = v112 != 0;
          }

          goto LABEL_476;
        case 0x21u:
          if (v7 != 10)
          {
            goto LABEL_483;
          }

          *(a1 + 16) |= 0x10000u;
          v60 = *(a1 + 160);
          if (v60)
          {
            goto LABEL_435;
          }

          v144 = *(a1 + 8);
          if (v144)
          {
            v144 = *(v144 & 0xFFFFFFFFFFFFFFFELL);
          }

          v60 = MEMORY[0x277C97C00](v144);
          *(a1 + 160) = v60;
          goto LABEL_434;
        case 0x22u:
          if (v7 != 16)
          {
            goto LABEL_483;
          }

          *(a1 + 20) |= 0x40000000u;
          v69 = (v6 + 1);
          v68 = *v6;
          if ((v68 & 0x8000000000000000) == 0)
          {
            goto LABEL_149;
          }

          v70 = *v69;
          v68 = (v70 << 7) + v68 - 128;
          if (v70 < 0)
          {
            v228 = google::protobuf::internal::VarintParseSlow64(v6, v68);
            v292 = v228;
            *(a1 + 416) = v229 != 0;
            if (!v228)
            {
              return 0;
            }
          }

          else
          {
            v69 = (v6 + 2);
LABEL_149:
            v292 = v69;
            *(a1 + 416) = v68 != 0;
          }

          goto LABEL_476;
        case 0x23u:
          if (v7 != 26)
          {
            goto LABEL_483;
          }

          *(a1 + 16) |= 0x20000u;
          v60 = *(a1 + 168);
          if (v60)
          {
            goto LABEL_435;
          }

          v61 = *(a1 + 8);
          if (v61)
          {
            v61 = *(v61 & 0xFFFFFFFFFFFFFFFELL);
          }

          v60 = MEMORY[0x277C97C00](v61);
          *(a1 + 168) = v60;
          goto LABEL_434;
        case 0x24u:
          if (v7 != 32)
          {
            goto LABEL_483;
          }

          *(a1 + 20) |= 0x80000000;
          v51 = (v6 + 1);
          v50 = *v6;
          if ((v50 & 0x8000000000000000) == 0)
          {
            goto LABEL_104;
          }

          v52 = *v51;
          v50 = (v52 << 7) + v50 - 128;
          if (v52 < 0)
          {
            v220 = google::protobuf::internal::VarintParseSlow64(v6, v50);
            v292 = v220;
            *(a1 + 417) = v221 != 0;
            if (!v220)
            {
              return 0;
            }
          }

          else
          {
            v51 = (v6 + 2);
LABEL_104:
            v292 = v51;
            *(a1 + 417) = v50 != 0;
          }

          goto LABEL_476;
        case 0x25u:
          if (v7 != 42)
          {
            goto LABEL_483;
          }

          *(a1 + 16) |= 0x40000u;
          v8 = *(a1 + 176);
          if (v8)
          {
            goto LABEL_408;
          }

          v53 = *(a1 + 8);
          if (v53)
          {
            v53 = *(v53 & 0xFFFFFFFFFFFFFFFELL);
          }

          v8 = MEMORY[0x277C97C40](v53);
          *(a1 + 176) = v8;
          goto LABEL_407;
        case 0x26u:
          if (v7 != 48)
          {
            goto LABEL_483;
          }

          *(a1 + 24) |= 1u;
          v38 = (v6 + 1);
          v37 = *v6;
          if ((v37 & 0x8000000000000000) == 0)
          {
            goto LABEL_79;
          }

          v39 = *v38;
          v37 = (v39 << 7) + v37 - 128;
          if (v39 < 0)
          {
            v212 = google::protobuf::internal::VarintParseSlow64(v6, v37);
            v292 = v212;
            *(a1 + 418) = v213 != 0;
            if (!v212)
            {
              return 0;
            }
          }

          else
          {
            v38 = (v6 + 2);
LABEL_79:
            v292 = v38;
            *(a1 + 418) = v37 != 0;
          }

          goto LABEL_476;
        case 0x27u:
          if (v7 != 58)
          {
            goto LABEL_483;
          }

          *(a1 + 16) |= 0x80000u;
          v8 = *(a1 + 184);
          if (v8)
          {
            goto LABEL_408;
          }

          v174 = *(a1 + 8);
          if (v174)
          {
            v174 = *(v174 & 0xFFFFFFFFFFFFFFFELL);
          }

          v8 = MEMORY[0x277C97C40](v174);
          *(a1 + 184) = v8;
LABEL_407:
          v6 = v292;
LABEL_408:
          v170 = sub_2764A9528(a3, v8, v6);
          goto LABEL_475;
        case 0x28u:
          if (v7 != 64)
          {
            goto LABEL_483;
          }

          *(a1 + 24) |= 2u;
          v154 = (v6 + 1);
          v153 = *v6;
          if ((v153 & 0x8000000000000000) == 0)
          {
            goto LABEL_359;
          }

          v155 = *v154;
          v153 = (v155 << 7) + v153 - 128;
          if (v155 < 0)
          {
            v270 = google::protobuf::internal::VarintParseSlow64(v6, v153);
            v292 = v270;
            *(a1 + 419) = v271 != 0;
            if (!v270)
            {
              return 0;
            }
          }

          else
          {
            v154 = (v6 + 2);
LABEL_359:
            v292 = v154;
            *(a1 + 419) = v153 != 0;
          }

          goto LABEL_476;
        case 0x29u:
          if (v7 != 74)
          {
            goto LABEL_483;
          }

          *(a1 + 16) |= 0x100000u;
          v84 = *(a1 + 192);
          if (v84)
          {
            goto LABEL_391;
          }

          v85 = *(a1 + 8);
          if (v85)
          {
            v85 = *(v85 & 0xFFFFFFFFFFFFFFFELL);
          }

          v84 = MEMORY[0x277C97BF0](v85);
          *(a1 + 192) = v84;
          goto LABEL_390;
        case 0x2Au:
          if (v7 != 80)
          {
            goto LABEL_483;
          }

          *(a1 + 24) |= 4u;
          v119 = (v6 + 1);
          v118 = *v6;
          if ((v118 & 0x8000000000000000) == 0)
          {
            goto LABEL_264;
          }

          v120 = *v119;
          v118 = (v120 << 7) + v118 - 128;
          if (v120 < 0)
          {
            v254 = google::protobuf::internal::VarintParseSlow64(v6, v118);
            v292 = v254;
            *(a1 + 420) = v255 != 0;
            if (!v254)
            {
              return 0;
            }
          }

          else
          {
            v119 = (v6 + 2);
LABEL_264:
            v292 = v119;
            *(a1 + 420) = v118 != 0;
          }

          goto LABEL_476;
        case 0x2Bu:
          if (v7 != 90)
          {
            goto LABEL_483;
          }

          *(a1 + 16) |= 0x200000u;
          v84 = *(a1 + 200);
          if (v84)
          {
            goto LABEL_391;
          }

          v162 = *(a1 + 8);
          if (v162)
          {
            v162 = *(v162 & 0xFFFFFFFFFFFFFFFELL);
          }

          v84 = MEMORY[0x277C97BF0](v162);
          *(a1 + 200) = v84;
LABEL_390:
          v6 = v292;
LABEL_391:
          v170 = sub_2764A9938(a3, v84, v6);
          goto LABEL_475;
        case 0x2Cu:
          if (v7 != 96)
          {
            goto LABEL_483;
          }

          *(a1 + 24) |= 8u;
          v30 = (v6 + 1);
          v29 = *v6;
          if ((v29 & 0x8000000000000000) == 0)
          {
            goto LABEL_59;
          }

          v31 = *v30;
          v29 = (v31 << 7) + v29 - 128;
          if (v31 < 0)
          {
            v208 = google::protobuf::internal::VarintParseSlow64(v6, v29);
            v292 = v208;
            *(a1 + 421) = v209 != 0;
            if (!v208)
            {
              return 0;
            }
          }

          else
          {
            v30 = (v6 + 2);
LABEL_59:
            v292 = v30;
            *(a1 + 421) = v29 != 0;
          }

          goto LABEL_476;
        case 0x2Du:
          if (v7 != 106)
          {
            goto LABEL_483;
          }

          *(a1 + 16) |= 0x400000u;
          v60 = *(a1 + 208);
          if (v60)
          {
            goto LABEL_435;
          }

          v66 = *(a1 + 8);
          if (v66)
          {
            v66 = *(v66 & 0xFFFFFFFFFFFFFFFELL);
          }

          v60 = MEMORY[0x277C97C00](v66);
          *(a1 + 208) = v60;
          goto LABEL_434;
        case 0x2Eu:
          if (v7 != 112)
          {
            goto LABEL_483;
          }

          *(a1 + 24) |= 0x10u;
          v146 = (v6 + 1);
          v145 = *v6;
          if ((v145 & 0x8000000000000000) == 0)
          {
            goto LABEL_339;
          }

          v147 = *v146;
          v145 = (v147 << 7) + v145 - 128;
          if (v147 < 0)
          {
            v266 = google::protobuf::internal::VarintParseSlow64(v6, v145);
            v292 = v266;
            *(a1 + 422) = v267 != 0;
            if (!v266)
            {
              return 0;
            }
          }

          else
          {
            v146 = (v6 + 2);
LABEL_339:
            v292 = v146;
            *(a1 + 422) = v145 != 0;
          }

          goto LABEL_476;
        case 0x2Fu:
          if (v7 != 122)
          {
            goto LABEL_483;
          }

          *(a1 + 16) |= 0x800000u;
          v60 = *(a1 + 216);
          if (v60)
          {
            goto LABEL_435;
          }

          v182 = *(a1 + 8);
          if (v182)
          {
            v182 = *(v182 & 0xFFFFFFFFFFFFFFFELL);
          }

          v60 = MEMORY[0x277C97C00](v182);
          *(a1 + 216) = v60;
LABEL_434:
          v6 = v292;
LABEL_435:
          v170 = sub_2764A9868(a3, v60, v6);
          goto LABEL_475;
        case 0x30u:
          if (v7 != 128)
          {
            goto LABEL_483;
          }

          *(a1 + 24) |= 0x20u;
          v44 = (v6 + 1);
          v43 = *v6;
          if ((v43 & 0x8000000000000000) == 0)
          {
            goto LABEL_89;
          }

          v45 = *v44;
          v43 = (v45 << 7) + v43 - 128;
          if (v45 < 0)
          {
            v216 = google::protobuf::internal::VarintParseSlow64(v6, v43);
            v292 = v216;
            *(a1 + 423) = v217 != 0;
            if (!v216)
            {
              return 0;
            }
          }

          else
          {
            v44 = (v6 + 2);
LABEL_89:
            v292 = v44;
            *(a1 + 423) = v43 != 0;
          }

          goto LABEL_476;
        case 0x31u:
          if (v7 != 138)
          {
            goto LABEL_483;
          }

          *(a1 + 16) |= 0x1000000u;
          v22 = *(a1 + 224);
          if (v22)
          {
            goto LABEL_467;
          }

          v71 = *(a1 + 8);
          if (v71)
          {
            v71 = *(v71 & 0xFFFFFFFFFFFFFFFELL);
          }

          v22 = MEMORY[0x277C97C20](v71);
          *(a1 + 224) = v22;
          goto LABEL_466;
        case 0x32u:
          if (v7 != 144)
          {
            goto LABEL_483;
          }

          *(a1 + 24) |= 0x40u;
          v81 = (v6 + 1);
          v80 = *v6;
          if ((v80 & 0x8000000000000000) == 0)
          {
            goto LABEL_179;
          }

          v82 = *v81;
          v80 = (v82 << 7) + v80 - 128;
          if (v82 < 0)
          {
            v234 = google::protobuf::internal::VarintParseSlow64(v6, v80);
            v292 = v234;
            *(a1 + 424) = v235 != 0;
            if (!v234)
            {
              return 0;
            }
          }

          else
          {
            v81 = (v6 + 2);
LABEL_179:
            v292 = v81;
            *(a1 + 424) = v80 != 0;
          }

          goto LABEL_476;
        case 0x33u:
          if (v7 != 154)
          {
            goto LABEL_483;
          }

          *(a1 + 16) |= 0x2000000u;
          v22 = *(a1 + 232);
          if (v22)
          {
            goto LABEL_467;
          }

          v27 = *(a1 + 8);
          if (v27)
          {
            v27 = *(v27 & 0xFFFFFFFFFFFFFFFELL);
          }

          v22 = MEMORY[0x277C97C20](v27);
          *(a1 + 232) = v22;
          goto LABEL_466;
        case 0x34u:
          if (v7 != 160)
          {
            goto LABEL_483;
          }

          *(a1 + 24) |= 0x80u;
          v191 = (v6 + 1);
          v190 = *v6;
          if ((v190 & 0x8000000000000000) == 0)
          {
            goto LABEL_455;
          }

          v192 = *v191;
          v190 = (v192 << 7) + v190 - 128;
          if (v192 < 0)
          {
            v288 = google::protobuf::internal::VarintParseSlow64(v6, v190);
            v292 = v288;
            *(a1 + 425) = v289 != 0;
            if (!v288)
            {
              return 0;
            }
          }

          else
          {
            v191 = (v6 + 2);
LABEL_455:
            v292 = v191;
            *(a1 + 425) = v190 != 0;
          }

          goto LABEL_476;
        case 0x35u:
          if (v7 != 170)
          {
            goto LABEL_483;
          }

          *(a1 + 16) |= 0x4000000u;
          v22 = *(a1 + 240);
          if (v22)
          {
            goto LABEL_467;
          }

          v181 = *(a1 + 8);
          if (v181)
          {
            v181 = *(v181 & 0xFFFFFFFFFFFFFFFELL);
          }

          v22 = MEMORY[0x277C97C20](v181);
          *(a1 + 240) = v22;
          goto LABEL_466;
        case 0x36u:
          if (v7 != 176)
          {
            goto LABEL_483;
          }

          *(a1 + 24) |= 0x100u;
          v41 = (v6 + 1);
          v40 = *v6;
          if ((v40 & 0x8000000000000000) == 0)
          {
            goto LABEL_84;
          }

          v42 = *v41;
          v40 = (v42 << 7) + v40 - 128;
          if (v42 < 0)
          {
            v214 = google::protobuf::internal::VarintParseSlow64(v6, v40);
            v292 = v214;
            *(a1 + 426) = v215 != 0;
            if (!v214)
            {
              return 0;
            }
          }

          else
          {
            v41 = (v6 + 2);
LABEL_84:
            v292 = v41;
            *(a1 + 426) = v40 != 0;
          }

          goto LABEL_476;
        case 0x37u:
          if (v7 != 186)
          {
            goto LABEL_483;
          }

          *(a1 + 16) |= 0x8000000u;
          v22 = *(a1 + 248);
          if (v22)
          {
            goto LABEL_467;
          }

          v176 = *(a1 + 8);
          if (v176)
          {
            v176 = *(v176 & 0xFFFFFFFFFFFFFFFELL);
          }

          v22 = MEMORY[0x277C97C20](v176);
          *(a1 + 248) = v22;
          goto LABEL_466;
        case 0x38u:
          if (v7 != 192)
          {
            goto LABEL_483;
          }

          *(a1 + 24) |= 0x200u;
          v179 = (v6 + 1);
          v178 = *v6;
          if ((v178 & 0x8000000000000000) == 0)
          {
            goto LABEL_423;
          }

          v180 = *v179;
          v178 = (v180 << 7) + v178 - 128;
          if (v180 < 0)
          {
            v282 = google::protobuf::internal::VarintParseSlow64(v6, v178);
            v292 = v282;
            *(a1 + 427) = v283 != 0;
            if (!v282)
            {
              return 0;
            }
          }

          else
          {
            v179 = (v6 + 2);
LABEL_423:
            v292 = v179;
            *(a1 + 427) = v178 != 0;
          }

          goto LABEL_476;
        case 0x39u:
          if (v7 != 202)
          {
            goto LABEL_483;
          }

          *(a1 + 16) |= 0x10000000u;
          v22 = *(a1 + 256);
          if (v22)
          {
            goto LABEL_467;
          }

          v46 = *(a1 + 8);
          if (v46)
          {
            v46 = *(v46 & 0xFFFFFFFFFFFFFFFELL);
          }

          v22 = MEMORY[0x277C97C20](v46);
          *(a1 + 256) = v22;
          goto LABEL_466;
        case 0x3Au:
          if (v7 != 208)
          {
            goto LABEL_483;
          }

          *(a1 + 24) |= 0x400u;
          v160 = (v6 + 1);
          v159 = *v6;
          if ((v159 & 0x8000000000000000) == 0)
          {
            goto LABEL_369;
          }

          v161 = *v160;
          v159 = (v161 << 7) + v159 - 128;
          if (v161 < 0)
          {
            v274 = google::protobuf::internal::VarintParseSlow64(v6, v159);
            v292 = v274;
            *(a1 + 428) = v275 != 0;
            if (!v274)
            {
              return 0;
            }
          }

          else
          {
            v160 = (v6 + 2);
LABEL_369:
            v292 = v160;
            *(a1 + 428) = v159 != 0;
          }

          goto LABEL_476;
        case 0x3Bu:
          if (v7 != 218)
          {
            goto LABEL_483;
          }

          *(a1 + 16) |= 0x20000000u;
          v22 = *(a1 + 264);
          if (v22)
          {
            goto LABEL_467;
          }

          v72 = *(a1 + 8);
          if (v72)
          {
            v72 = *(v72 & 0xFFFFFFFFFFFFFFFELL);
          }

          v22 = MEMORY[0x277C97C20](v72);
          *(a1 + 264) = v22;
          goto LABEL_466;
        case 0x3Cu:
          if (v7 != 224)
          {
            goto LABEL_483;
          }

          *(a1 + 24) |= 0x800u;
          v164 = (v6 + 1);
          v163 = *v6;
          if ((v163 & 0x8000000000000000) == 0)
          {
            goto LABEL_379;
          }

          v165 = *v164;
          v163 = (v165 << 7) + v163 - 128;
          if (v165 < 0)
          {
            v276 = google::protobuf::internal::VarintParseSlow64(v6, v163);
            v292 = v276;
            *(a1 + 429) = v277 != 0;
            if (!v276)
            {
              return 0;
            }
          }

          else
          {
            v164 = (v6 + 2);
LABEL_379:
            v292 = v164;
            *(a1 + 429) = v163 != 0;
          }

          goto LABEL_476;
        case 0x3Du:
          if (v7 != 234)
          {
            goto LABEL_483;
          }

          *(a1 + 16) |= 0x40000000u;
          v22 = *(a1 + 272);
          if (v22)
          {
            goto LABEL_467;
          }

          v86 = *(a1 + 8);
          if (v86)
          {
            v86 = *(v86 & 0xFFFFFFFFFFFFFFFELL);
          }

          v22 = MEMORY[0x277C97C20](v86);
          *(a1 + 272) = v22;
          goto LABEL_466;
        case 0x3Eu:
          if (v7 != 240)
          {
            goto LABEL_483;
          }

          *(a1 + 24) |= 0x1000u;
          v124 = (v6 + 1);
          v123 = *v6;
          if ((v123 & 0x8000000000000000) == 0)
          {
            goto LABEL_279;
          }

          v125 = *v124;
          v123 = (v125 << 7) + v123 - 128;
          if (v125 < 0)
          {
            v256 = google::protobuf::internal::VarintParseSlow64(v6, v123);
            v292 = v256;
            *(a1 + 430) = v257 != 0;
            if (!v256)
            {
              return 0;
            }
          }

          else
          {
            v124 = (v6 + 2);
LABEL_279:
            v292 = v124;
            *(a1 + 430) = v123 != 0;
          }

          goto LABEL_476;
        case 0x3Fu:
          if (v7 != 250)
          {
            goto LABEL_483;
          }

          *(a1 + 16) |= 0x80000000;
          v22 = *(a1 + 280);
          if (v22)
          {
            goto LABEL_467;
          }

          v132 = *(a1 + 8);
          if (v132)
          {
            v132 = *(v132 & 0xFFFFFFFFFFFFFFFELL);
          }

          v22 = MEMORY[0x277C97C20](v132);
          *(a1 + 280) = v22;
          goto LABEL_466;
        case 0x40u:
          if (v7)
          {
            goto LABEL_483;
          }

          *(a1 + 24) |= 0x2000u;
          v101 = (v6 + 1);
          v100 = *v6;
          if ((v100 & 0x8000000000000000) == 0)
          {
            goto LABEL_234;
          }

          v102 = *v101;
          v100 = (v102 << 7) + v100 - 128;
          if (v102 < 0)
          {
            v242 = google::protobuf::internal::VarintParseSlow64(v6, v100);
            v292 = v242;
            *(a1 + 431) = v243 != 0;
            if (!v242)
            {
              return 0;
            }
          }

          else
          {
            v101 = (v6 + 2);
LABEL_234:
            v292 = v101;
            *(a1 + 431) = v100 != 0;
          }

          goto LABEL_476;
        case 0x41u:
          if (v7 != 10)
          {
            goto LABEL_483;
          }

          *(a1 + 20) |= 1u;
          v22 = *(a1 + 288);
          if (v22)
          {
            goto LABEL_467;
          }

          v87 = *(a1 + 8);
          if (v87)
          {
            v87 = *(v87 & 0xFFFFFFFFFFFFFFFELL);
          }

          v22 = MEMORY[0x277C97C20](v87);
          *(a1 + 288) = v22;
          goto LABEL_466;
        case 0x42u:
          if (v7 != 16)
          {
            goto LABEL_483;
          }

          *(a1 + 24) |= 0x4000u;
          v130 = (v6 + 1);
          v129 = *v6;
          if ((v129 & 0x8000000000000000) == 0)
          {
            goto LABEL_289;
          }

          v131 = *v130;
          v129 = (v131 << 7) + v129 - 128;
          if (v131 < 0)
          {
            v260 = google::protobuf::internal::VarintParseSlow64(v6, v129);
            v292 = v260;
            *(a1 + 432) = v261 != 0;
            if (!v260)
            {
              return 0;
            }
          }

          else
          {
            v130 = (v6 + 2);
LABEL_289:
            v292 = v130;
            *(a1 + 432) = v129 != 0;
          }

          goto LABEL_476;
        case 0x43u:
          if (v7 != 26)
          {
            goto LABEL_483;
          }

          *(a1 + 20) |= 2u;
          v22 = *(a1 + 296);
          if (v22)
          {
            goto LABEL_467;
          }

          v32 = *(a1 + 8);
          if (v32)
          {
            v32 = *(v32 & 0xFFFFFFFFFFFFFFFELL);
          }

          v22 = MEMORY[0x277C97C20](v32);
          *(a1 + 296) = v22;
          goto LABEL_466;
        case 0x44u:
          if (v7 != 32)
          {
            goto LABEL_483;
          }

          *(a1 + 24) |= 0x8000u;
          v64 = (v6 + 1);
          v63 = *v6;
          if ((v63 & 0x8000000000000000) == 0)
          {
            goto LABEL_134;
          }

          v65 = *v64;
          v63 = (v65 << 7) + v63 - 128;
          if (v65 < 0)
          {
            v226 = google::protobuf::internal::VarintParseSlow64(v6, v63);
            v292 = v226;
            *(a1 + 433) = v227 != 0;
            if (!v226)
            {
              return 0;
            }
          }

          else
          {
            v64 = (v6 + 2);
LABEL_134:
            v292 = v64;
            *(a1 + 433) = v63 != 0;
          }

          goto LABEL_476;
        case 0x45u:
          if (v7 != 42)
          {
            goto LABEL_483;
          }

          *(a1 + 20) |= 4u;
          v22 = *(a1 + 304);
          if (v22)
          {
            goto LABEL_467;
          }

          v194 = *(a1 + 8);
          if (v194)
          {
            v194 = *(v194 & 0xFFFFFFFFFFFFFFFELL);
          }

          v22 = MEMORY[0x277C97C20](v194);
          *(a1 + 304) = v22;
          goto LABEL_466;
        case 0x46u:
          if (v7 != 48)
          {
            goto LABEL_483;
          }

          *(a1 + 24) |= 0x10000u;
          v55 = (v6 + 1);
          v54 = *v6;
          if ((v54 & 0x8000000000000000) == 0)
          {
            goto LABEL_114;
          }

          v56 = *v55;
          v54 = (v56 << 7) + v54 - 128;
          if (v56 < 0)
          {
            v222 = google::protobuf::internal::VarintParseSlow64(v6, v54);
            v292 = v222;
            *(a1 + 434) = v223 != 0;
            if (!v222)
            {
              return 0;
            }
          }

          else
          {
            v55 = (v6 + 2);
LABEL_114:
            v292 = v55;
            *(a1 + 434) = v54 != 0;
          }

          goto LABEL_476;
        case 0x47u:
          if (v7 != 58)
          {
            goto LABEL_483;
          }

          *(a1 + 20) |= 8u;
          v22 = *(a1 + 312);
          if (v22)
          {
            goto LABEL_467;
          }

          v23 = *(a1 + 8);
          if (v23)
          {
            v23 = *(v23 & 0xFFFFFFFFFFFFFFFELL);
          }

          v22 = MEMORY[0x277C97C20](v23);
          *(a1 + 312) = v22;
          goto LABEL_466;
        case 0x48u:
          if (v7 != 64)
          {
            goto LABEL_483;
          }

          *(a1 + 24) |= 0x20000u;
          v35 = (v6 + 1);
          v34 = *v6;
          if ((v34 & 0x8000000000000000) == 0)
          {
            goto LABEL_74;
          }

          v36 = *v35;
          v34 = (v36 << 7) + v34 - 128;
          if (v36 < 0)
          {
            v210 = google::protobuf::internal::VarintParseSlow64(v6, v34);
            v292 = v210;
            *(a1 + 435) = v211 != 0;
            if (!v210)
            {
              return 0;
            }
          }

          else
          {
            v35 = (v6 + 2);
LABEL_74:
            v292 = v35;
            *(a1 + 435) = v34 != 0;
          }

          goto LABEL_476;
        case 0x49u:
          if (v7 != 74)
          {
            goto LABEL_483;
          }

          *(a1 + 20) |= 0x10u;
          v22 = *(a1 + 320);
          if (v22)
          {
            goto LABEL_467;
          }

          v177 = *(a1 + 8);
          if (v177)
          {
            v177 = *(v177 & 0xFFFFFFFFFFFFFFFELL);
          }

          v22 = MEMORY[0x277C97C20](v177);
          *(a1 + 320) = v22;
          goto LABEL_466;
        case 0x4Au:
          if (v7 != 80)
          {
            goto LABEL_483;
          }

          *(a1 + 24) |= 0x40000u;
          v184 = (v6 + 1);
          v183 = *v6;
          if ((v183 & 0x8000000000000000) == 0)
          {
            goto LABEL_440;
          }

          v185 = *v184;
          v183 = (v185 << 7) + v183 - 128;
          if (v185 < 0)
          {
            v284 = google::protobuf::internal::VarintParseSlow64(v6, v183);
            v292 = v284;
            *(a1 + 436) = v285 != 0;
            if (!v284)
            {
              return 0;
            }
          }

          else
          {
            v184 = (v6 + 2);
LABEL_440:
            v292 = v184;
            *(a1 + 436) = v183 != 0;
          }

          goto LABEL_476;
        case 0x4Bu:
          if (v7 != 90)
          {
            goto LABEL_483;
          }

          *(a1 + 20) |= 0x20u;
          v22 = *(a1 + 328);
          if (v22)
          {
            goto LABEL_467;
          }

          v189 = *(a1 + 8);
          if (v189)
          {
            v189 = *(v189 & 0xFFFFFFFFFFFFFFFELL);
          }

          v22 = MEMORY[0x277C97C20](v189);
          *(a1 + 328) = v22;
          goto LABEL_466;
        case 0x4Cu:
          if (v7 != 96)
          {
            goto LABEL_483;
          }

          *(a1 + 24) |= 0x80000u;
          v48 = (v6 + 1);
          v47 = *v6;
          if ((v47 & 0x8000000000000000) == 0)
          {
            goto LABEL_99;
          }

          v49 = *v48;
          v47 = (v49 << 7) + v47 - 128;
          if (v49 < 0)
          {
            v218 = google::protobuf::internal::VarintParseSlow64(v6, v47);
            v292 = v218;
            *(a1 + 437) = v219 != 0;
            if (!v218)
            {
              return 0;
            }
          }

          else
          {
            v48 = (v6 + 2);
LABEL_99:
            v292 = v48;
            *(a1 + 437) = v47 != 0;
          }

          goto LABEL_476;
        case 0x4Du:
          if (v7 != 106)
          {
            goto LABEL_483;
          }

          *(a1 + 20) |= 0x40u;
          v22 = *(a1 + 336);
          if (v22)
          {
            goto LABEL_467;
          }

          v121 = *(a1 + 8);
          if (v121)
          {
            v121 = *(v121 & 0xFFFFFFFFFFFFFFFELL);
          }

          v22 = MEMORY[0x277C97C20](v121);
          *(a1 + 336) = v22;
          goto LABEL_466;
        case 0x4Eu:
          if (v7 != 112)
          {
            goto LABEL_483;
          }

          *(a1 + 24) |= 0x100000u;
          v25 = (v6 + 1);
          v24 = *v6;
          if ((v24 & 0x8000000000000000) == 0)
          {
            goto LABEL_44;
          }

          v26 = *v25;
          v24 = (v26 << 7) + v24 - 128;
          if (v26 < 0)
          {
            v206 = google::protobuf::internal::VarintParseSlow64(v6, v24);
            v292 = v206;
            *(a1 + 438) = v207 != 0;
            if (!v206)
            {
              return 0;
            }
          }

          else
          {
            v25 = (v6 + 2);
LABEL_44:
            v292 = v25;
            *(a1 + 438) = v24 != 0;
          }

          goto LABEL_476;
        case 0x4Fu:
          if (v7 != 122)
          {
            goto LABEL_483;
          }

          *(a1 + 20) |= 0x80u;
          v22 = *(a1 + 344);
          if (v22)
          {
            goto LABEL_467;
          }

          v193 = *(a1 + 8);
          if (v193)
          {
            v193 = *(v193 & 0xFFFFFFFFFFFFFFFELL);
          }

          v22 = MEMORY[0x277C97C20](v193);
          *(a1 + 344) = v22;
LABEL_466:
          v6 = v292;
LABEL_467:
          v170 = sub_2764A95F8(a3, v22, v6);
          goto LABEL_475;
        case 0x50u:
          if (v7 != 128)
          {
            goto LABEL_483;
          }

          *(a1 + 24) |= 0x200000u;
          v20 = (v6 + 1);
          v19 = *v6;
          if ((v19 & 0x8000000000000000) == 0)
          {
            goto LABEL_34;
          }

          v21 = *v20;
          v19 = (v21 << 7) + v19 - 128;
          if (v21 < 0)
          {
            v204 = google::protobuf::internal::VarintParseSlow64(v6, v19);
            v292 = v204;
            *(a1 + 439) = v205 != 0;
            if (!v204)
            {
              return 0;
            }
          }

          else
          {
            v20 = (v6 + 2);
LABEL_34:
            v292 = v20;
            *(a1 + 439) = v19 != 0;
          }

          goto LABEL_476;
        case 0x51u:
          if (v7 != 138)
          {
            goto LABEL_483;
          }

          *(a1 + 20) |= 0x100u;
          v11 = *(a1 + 352);
          if (v11)
          {
            goto LABEL_474;
          }

          v33 = *(a1 + 8);
          if (v33)
          {
            v33 = *(v33 & 0xFFFFFFFFFFFFFFFELL);
          }

          v11 = MEMORY[0x277C97C60](v33);
          *(a1 + 352) = v11;
          goto LABEL_473;
        case 0x52u:
          if (v7 != 144)
          {
            goto LABEL_483;
          }

          *(a1 + 24) |= 0x400000u;
          v78 = (v6 + 1);
          v77 = *v6;
          if ((v77 & 0x8000000000000000) == 0)
          {
            goto LABEL_174;
          }

          v79 = *v78;
          v77 = (v79 << 7) + v77 - 128;
          if (v79 < 0)
          {
            v232 = google::protobuf::internal::VarintParseSlow64(v6, v77);
            v292 = v232;
            *(a1 + 440) = v233 != 0;
            if (!v232)
            {
              return 0;
            }
          }

          else
          {
            v78 = (v6 + 2);
LABEL_174:
            v292 = v78;
            *(a1 + 440) = v77 != 0;
          }

          goto LABEL_476;
        case 0x53u:
          if (v7 != 154)
          {
            goto LABEL_483;
          }

          *(a1 + 20) |= 0x200u;
          v11 = *(a1 + 360);
          if (v11)
          {
            goto LABEL_474;
          }

          v73 = *(a1 + 8);
          if (v73)
          {
            v73 = *(v73 & 0xFFFFFFFFFFFFFFFELL);
          }

          v11 = MEMORY[0x277C97C60](v73);
          *(a1 + 360) = v11;
          goto LABEL_473;
        case 0x54u:
          if (v7 != 160)
          {
            goto LABEL_483;
          }

          *(a1 + 24) |= 0x800000u;
          v14 = (v6 + 1);
          v13 = *v6;
          if ((v13 & 0x8000000000000000) == 0)
          {
            goto LABEL_24;
          }

          v15 = *v14;
          v13 = (v15 << 7) + v13 - 128;
          if (v15 < 0)
          {
            v200 = google::protobuf::internal::VarintParseSlow64(v6, v13);
            v292 = v200;
            *(a1 + 441) = v201 != 0;
            if (!v200)
            {
              return 0;
            }
          }

          else
          {
            v14 = (v6 + 2);
LABEL_24:
            v292 = v14;
            *(a1 + 441) = v13 != 0;
          }

          goto LABEL_476;
        case 0x55u:
          if (v7 != 170)
          {
            goto LABEL_483;
          }

          *(a1 + 20) |= 0x400u;
          v11 = *(a1 + 368);
          if (v11)
          {
            goto LABEL_474;
          }

          v12 = *(a1 + 8);
          if (v12)
          {
            v12 = *(v12 & 0xFFFFFFFFFFFFFFFELL);
          }

          v11 = MEMORY[0x277C97C60](v12);
          *(a1 + 368) = v11;
          goto LABEL_473;
        case 0x56u:
          if (v7 != 176)
          {
            goto LABEL_483;
          }

          *(a1 + 24) |= 0x1000000u;
          v149 = (v6 + 1);
          v148 = *v6;
          if ((v148 & 0x8000000000000000) == 0)
          {
            goto LABEL_344;
          }

          v150 = *v149;
          v148 = (v150 << 7) + v148 - 128;
          if (v150 < 0)
          {
            v268 = google::protobuf::internal::VarintParseSlow64(v6, v148);
            v292 = v268;
            *(a1 + 442) = v269 != 0;
            if (!v268)
            {
              return 0;
            }
          }

          else
          {
            v149 = (v6 + 2);
LABEL_344:
            v292 = v149;
            *(a1 + 442) = v148 != 0;
          }

          goto LABEL_476;
        case 0x57u:
          if (v7 != 186)
          {
            goto LABEL_483;
          }

          *(a1 + 20) |= 0x800u;
          v11 = *(a1 + 376);
          if (v11)
          {
            goto LABEL_474;
          }

          v152 = *(a1 + 8);
          if (v152)
          {
            v152 = *(v152 & 0xFFFFFFFFFFFFFFFELL);
          }

          v11 = MEMORY[0x277C97C60](v152);
          *(a1 + 376) = v11;
          goto LABEL_473;
        case 0x58u:
          if (v7 != 192)
          {
            goto LABEL_483;
          }

          *(a1 + 24) |= 0x2000000u;
          v187 = (v6 + 1);
          v186 = *v6;
          if ((v186 & 0x8000000000000000) == 0)
          {
            goto LABEL_445;
          }

          v188 = *v187;
          v186 = (v188 << 7) + v186 - 128;
          if (v188 < 0)
          {
            v286 = google::protobuf::internal::VarintParseSlow64(v6, v186);
            v292 = v286;
            *(a1 + 443) = v287 != 0;
            if (!v286)
            {
              return 0;
            }
          }

          else
          {
            v187 = (v6 + 2);
LABEL_445:
            v292 = v187;
            *(a1 + 443) = v186 != 0;
          }

          goto LABEL_476;
        case 0x59u:
          if (v7 != 202)
          {
            goto LABEL_483;
          }

          *(a1 + 20) |= 0x1000u;
          v11 = *(a1 + 384);
          if (v11)
          {
            goto LABEL_474;
          }

          v28 = *(a1 + 8);
          if (v28)
          {
            v28 = *(v28 & 0xFFFFFFFFFFFFFFFELL);
          }

          v11 = MEMORY[0x277C97C60](v28);
          *(a1 + 384) = v11;
          goto LABEL_473;
        case 0x5Au:
          if (v7 != 208)
          {
            goto LABEL_483;
          }

          *(a1 + 24) |= 0x4000000u;
          v197 = (v6 + 1);
          v196 = *v6;
          if ((v196 & 0x8000000000000000) == 0)
          {
            goto LABEL_482;
          }

          v198 = *v197;
          v196 = (v198 << 7) + v196 - 128;
          if (v198 < 0)
          {
            v290 = google::protobuf::internal::VarintParseSlow64(v6, v196);
            v292 = v290;
            *(a1 + 444) = v291 != 0;
            if (!v290)
            {
              return 0;
            }
          }

          else
          {
            v197 = (v6 + 2);
LABEL_482:
            v292 = v197;
            *(a1 + 444) = v196 != 0;
          }

          goto LABEL_476;
        case 0x5Bu:
          if (v7 != 218)
          {
            goto LABEL_483;
          }

          *(a1 + 20) |= 0x2000u;
          v11 = *(a1 + 392);
          if (v11)
          {
            goto LABEL_474;
          }

          v195 = *(a1 + 8);
          if (v195)
          {
            v195 = *(v195 & 0xFFFFFFFFFFFFFFFELL);
          }

          v11 = MEMORY[0x277C97C60](v195);
          *(a1 + 392) = v11;
LABEL_473:
          v6 = v292;
LABEL_474:
          v170 = sub_2764A9458(a3, v11, v6);
          goto LABEL_475;
        case 0x5Cu:
          if (v7 != 224)
          {
            goto LABEL_483;
          }

          *(a1 + 24) |= 0x8000000u;
          v17 = (v6 + 1);
          v16 = *v6;
          if ((v16 & 0x8000000000000000) == 0)
          {
            goto LABEL_29;
          }

          v18 = *v17;
          v16 = (v18 << 7) + v16 - 128;
          if (v18 < 0)
          {
            v202 = google::protobuf::internal::VarintParseSlow64(v6, v16);
            v292 = v202;
            *(a1 + 445) = v203 != 0;
            if (!v202)
            {
              return 0;
            }
          }

          else
          {
            v17 = (v6 + 2);
LABEL_29:
            v292 = v17;
            *(a1 + 445) = v16 != 0;
          }

          goto LABEL_476;
        default:
LABEL_483:
          if (v7)
          {
            v199 = (v7 & 7) == 4;
          }

          else
          {
            v199 = 1;
          }

          if (v199)
          {
            *(a3 + 80) = v7 - 1;
            return v292;
          }

          if ((*(a1 + 8) & 1) == 0)
          {
            sub_2763D4E10((a1 + 8));
          }

          v170 = google::protobuf::internal::UnknownFieldParse();
LABEL_475:
          v292 = v170;
          if (!v170)
          {
            return 0;
          }

LABEL_476:
          if (sub_2763D4D98(a3, &v292, *(a3 + 92)))
          {
            return v292;
          }

          break;
      }
    }
  }

  return v292;
}