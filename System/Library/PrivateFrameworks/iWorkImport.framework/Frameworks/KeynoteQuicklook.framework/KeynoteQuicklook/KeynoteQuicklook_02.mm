unsigned __int8 *sub_275DE98F4(uint64_t a1, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v4 = a2;
  v6 = *(a1 + 16);
  if ((v6 & 0x10) != 0)
  {
    if (*a3 <= a2)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v7 = *(a1 + 56);
    *v4 = 8;
    if (v7 > 0x7F)
    {
      v4[1] = v7 | 0x80;
      v8 = v7 >> 7;
      if (v7 >> 14)
      {
        v4 += 3;
        do
        {
          *(v4 - 1) = v8 | 0x80;
          v9 = v8 >> 7;
          ++v4;
          v10 = v8 >> 14;
          v8 >>= 7;
        }

        while (v10);
        *(v4 - 1) = v9;
        if ((v6 & 8) != 0)
        {
          goto LABEL_20;
        }
      }

      else
      {
        v4[2] = v8;
        v4 += 3;
        if ((v6 & 8) != 0)
        {
          goto LABEL_20;
        }
      }
    }

    else
    {
      v4[1] = v7;
      v4 += 2;
      if ((v6 & 8) != 0)
      {
        goto LABEL_20;
      }
    }

LABEL_3:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_4;
    }

    goto LABEL_23;
  }

  if ((v6 & 8) == 0)
  {
    goto LABEL_3;
  }

LABEL_20:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v11 = *(a1 + 48);
  *v4 = 17;
  *(v4 + 1) = v11;
  v4 += 9;
  if ((v6 & 0x20) == 0)
  {
LABEL_4:
    if ((v6 & 1) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_26;
  }

LABEL_23:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v12 = *(a1 + 60);
  *v4 = 24;
  v4[1] = v12;
  v4 += 2;
  if ((v6 & 1) == 0)
  {
LABEL_5:
    if ((v6 & 2) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_27;
  }

LABEL_26:
  v4 = sub_275DE5774(a3, 4, (*(a1 + 24) & 0xFFFFFFFFFFFFFFFELL), v4);
  if ((v6 & 2) == 0)
  {
LABEL_6:
    if ((v6 & 4) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_37;
  }

LABEL_27:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v13 = *(a1 + 32);
  *v4 = 42;
  v14 = *(v13 + 5);
  if (v14 > 0x7F)
  {
    v4[1] = v14 | 0x80;
    v16 = v14 >> 7;
    if (v14 >> 14)
    {
      v15 = v4 + 3;
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
      v4[2] = v16;
      v15 = v4 + 3;
    }
  }

  else
  {
    v4[1] = v14;
    v15 = v4 + 2;
  }

  v4 = TSD::PathSourceArchive::_InternalSerialize(v13, v15, a3);
  if ((v6 & 4) == 0)
  {
LABEL_7:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_56;
    }

    goto LABEL_47;
  }

LABEL_37:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v19 = *(a1 + 40);
  *v4 = 50;
  v20 = *(v19 + 5);
  if (v20 > 0x7F)
  {
    v4[1] = v20 | 0x80;
    v22 = v20 >> 7;
    if (v20 >> 14)
    {
      v21 = v4 + 3;
      do
      {
        *(v21 - 1) = v22 | 0x80;
        v23 = v22 >> 7;
        ++v21;
        v24 = v22 >> 14;
        v22 >>= 7;
      }

      while (v24);
      *(v21 - 1) = v23;
    }

    else
    {
      v4[2] = v22;
      v21 = v4 + 3;
    }
  }

  else
  {
    v4[1] = v20;
    v21 = v4 + 2;
  }

  v4 = TSP::Color::_InternalSerialize(v19, v21, a3);
  if ((v6 & 0x40) != 0)
  {
LABEL_47:
    if (*a3 <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
    }

    v25 = *(a1 + 64);
    *v4 = 56;
    if (v25 > 0x7F)
    {
      v4[1] = v25 | 0x80;
      v26 = v25 >> 7;
      if (v25 >> 14)
      {
        v4 += 3;
        do
        {
          *(v4 - 1) = v26 | 0x80;
          v27 = v26 >> 7;
          ++v4;
          v28 = v26 >> 14;
          v26 >>= 7;
        }

        while (v28);
        *(v4 - 1) = v27;
      }

      else
      {
        v4[2] = v26;
        v4 += 3;
      }
    }

    else
    {
      v4[1] = v25;
      v4 += 2;
    }
  }

LABEL_56:
  v29 = *(a1 + 8);
  if ((v29 & 1) == 0)
  {
    return v4;
  }

  return MEMORY[0x2821EAC40]((v29 & 0xFFFFFFFFFFFFFFFELL) + 8, v4, a3);
}

uint64_t sub_275DE9C54(uint64_t a1)
{
  v2 = *(a1 + 16);
  if ((v2 & 0x7F) == 0)
  {
    v4 = 0;
    goto LABEL_21;
  }

  if (v2)
  {
    v5 = *(a1 + 24) & 0xFFFFFFFFFFFFFFFELL;
    v6 = *(v5 + 23);
    v7 = *(v5 + 8);
    if ((v6 & 0x80u) == 0)
    {
      v7 = v6;
    }

    v3 = v7 + ((9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v2 & 2) == 0)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v3 = 0;
    if ((v2 & 2) == 0)
    {
      goto LABEL_10;
    }
  }

  v8 = TSD::PathSourceArchive::ByteSizeLong(*(a1 + 32));
  v3 += v8 + ((9 * (__clz(v8 | 1) ^ 0x1F) + 73) >> 6) + 1;
LABEL_10:
  if ((v2 & 4) != 0)
  {
    v9 = TSP::Color::ByteSizeLong(*(a1 + 40));
    v3 += v9 + ((9 * (__clz(v9 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  v10 = v3 + 9;
  if ((v2 & 8) == 0)
  {
    v10 = v3;
  }

  if ((v2 & 0x10) != 0)
  {
    v10 += ((9 * (__clz(*(a1 + 56) | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  v4 = v10 + ((v2 >> 4) & 2);
  if ((v2 & 0x40) != 0)
  {
    v11 = *(a1 + 64);
    v12 = ((9 * (__clz(v11 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if (v11 >= 0)
    {
      v13 = v12;
    }

    else
    {
      v13 = 11;
    }

    v4 += v13;
  }

LABEL_21:
  if (*(a1 + 8))
  {

    return MEMORY[0x2821EADD8](a1 + 8, v4, a1 + 20);
  }

  else
  {
    *(a1 + 20) = v4;
    return v4;
  }
}

uint64_t sub_275DE9DE8(uint64_t a1, void *lpsrc)
{
  v4 = __dynamic_cast(lpsrc, MEMORY[0x277D80A98], &unk_2884D7D90, 0);
  if (v4)
  {

    return sub_275DE9E90(a1, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, a1);
  }
}

uint64_t sub_275DE9E90(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 8);
  if (v4)
  {
    result = sub_275E22484((result + 8), (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  v5 = *(a2 + 16);
  if ((v5 & 0x7F) != 0)
  {
    if (v5)
    {
      *(v3 + 16) |= 1u;
      result = google::protobuf::internal::ArenaStringPtr::Set();
      if ((v5 & 2) == 0)
      {
LABEL_6:
        if ((v5 & 4) == 0)
        {
          goto LABEL_7;
        }

        goto LABEL_23;
      }
    }

    else if ((v5 & 2) == 0)
    {
      goto LABEL_6;
    }

    *(v3 + 16) |= 2u;
    v6 = *(v3 + 32);
    if (!v6)
    {
      v7 = *(v3 + 8);
      if (v7)
      {
        v7 = *(v7 & 0xFFFFFFFFFFFFFFFELL);
      }

      v6 = MEMORY[0x277C8EFB0](v7);
      *(v3 + 32) = v6;
    }

    if (*(a2 + 32))
    {
      v8 = *(a2 + 32);
    }

    else
    {
      v8 = MEMORY[0x277D804C8];
    }

    result = TSD::PathSourceArchive::MergeFrom(v6, v8);
    if ((v5 & 4) == 0)
    {
LABEL_7:
      if ((v5 & 8) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_31;
    }

LABEL_23:
    *(v3 + 16) |= 4u;
    v9 = *(v3 + 40);
    if (!v9)
    {
      v10 = *(v3 + 8);
      if (v10)
      {
        v10 = *(v10 & 0xFFFFFFFFFFFFFFFELL);
      }

      v9 = MEMORY[0x277C8F010](v10);
      *(v3 + 40) = v9;
    }

    if (*(a2 + 40))
    {
      v11 = *(a2 + 40);
    }

    else
    {
      v11 = MEMORY[0x277D809E8];
    }

    result = TSP::Color::MergeFrom(v9, v11);
    if ((v5 & 8) == 0)
    {
LABEL_8:
      if ((v5 & 0x10) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_32;
    }

LABEL_31:
    *(v3 + 48) = *(a2 + 48);
    if ((v5 & 0x10) == 0)
    {
LABEL_9:
      if ((v5 & 0x20) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_33;
    }

LABEL_32:
    *(v3 + 56) = *(a2 + 56);
    if ((v5 & 0x20) == 0)
    {
LABEL_10:
      if ((v5 & 0x40) == 0)
      {
LABEL_12:
        *(v3 + 16) |= v5;
        return result;
      }

LABEL_11:
      *(v3 + 64) = *(a2 + 64);
      goto LABEL_12;
    }

LABEL_33:
    *(v3 + 60) = *(a2 + 60);
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  return result;
}

google::protobuf::UnknownFieldSet *sub_275DEA004(google::protobuf::UnknownFieldSet *result, google::protobuf::UnknownFieldSet *a2)
{
  if (a2 != result)
  {
    v4 = result;
    sub_275DE9460(result);

    return sub_275DE9DE8(v4, a2);
  }

  return result;
}

uint64_t sub_275DEA050(uint64_t a1)
{
  v2 = *(a1 + 16);
  if ((v2 & 2) != 0)
  {
    result = TSD::PathSourceArchive::IsInitialized(*(a1 + 32));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 4) == 0)
  {
    return 1;
  }

  result = TSP::Color::IsInitialized(*(a1 + 40));
  if (result)
  {
    return 1;
  }

  return result;
}

void *sub_275DEA0D4(void *a1, uint64_t a2)
{
  *a1 = &unk_2884D5758;
  a1[1] = a2;
  a1[2] = 0;
  if (atomic_load_explicit(dword_2812E9FB8, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  a1[3] = MEMORY[0x277D80A90];
  a1[4] = 0;
  a1[5] = 0;
  a1[6] = 0;
  return a1;
}

uint64_t *sub_275DEA148(uint64_t *a1)
{
  sub_275DEA17C(a1);
  sub_275DE4968(a1 + 1);
  return a1;
}

uint64_t *sub_275DEA17C(uint64_t *result)
{
  v1 = result;
  v2 = result[3];
  if (v2 != MEMORY[0x277D80A90])
  {
    if (*(v2 + 23) < 0)
    {
      operator delete(*v2);
    }

    result = MEMORY[0x277C8F960](v2, 0x1012C40EC159624);
  }

  if (v1 != qword_2812EAC18)
  {
    v3 = v1[4];
    if (v3)
    {
      v4 = sub_275DE9360(v3);
      MEMORY[0x277C8F960](v4, 0x10A1C40B9FC5216);
    }

    v5 = v1[5];
    if (v5)
    {
      TSP::UUID::~UUID(v5);
      MEMORY[0x277C8F960]();
    }

    result = v1[6];
    if (result)
    {
      sub_275DE8CE8(result);

      JUMPOUT(0x277C8F960);
    }
  }

  return result;
}

void sub_275DEA264(uint64_t *a1)
{
  sub_275DEA148(a1);

  JUMPOUT(0x277C8F960);
}

void *sub_275DEA2A4()
{
  if (atomic_load_explicit(dword_2812E9FB8, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &unk_2812EAC18;
}

google::protobuf::UnknownFieldSet *sub_275DEA2E4(google::protobuf::UnknownFieldSet *result)
{
  v1 = result;
  v2 = *(result + 4);
  if ((v2 & 0xF) == 0)
  {
    goto LABEL_7;
  }

  if ((v2 & 1) == 0)
  {
    if ((v2 & 2) == 0)
    {
      goto LABEL_4;
    }

LABEL_15:
    result = sub_275DE9460(*(result + 4));
    if ((v2 & 4) == 0)
    {
LABEL_5:
      if ((v2 & 8) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }

    goto LABEL_16;
  }

  v5 = *(result + 3) & 0xFFFFFFFFFFFFFFFELL;
  if (*(v5 + 23) < 0)
  {
    **v5 = 0;
    *(v5 + 8) = 0;
    if ((v2 & 2) != 0)
    {
      goto LABEL_15;
    }
  }

  else
  {
    *v5 = 0;
    *(v5 + 23) = 0;
    if ((v2 & 2) != 0)
    {
      goto LABEL_15;
    }
  }

LABEL_4:
  if ((v2 & 4) == 0)
  {
    goto LABEL_5;
  }

LABEL_16:
  result = TSP::UUID::Clear(*(v1 + 40));
  if ((v2 & 8) != 0)
  {
LABEL_6:
    result = sub_275DE7F94(*(v1 + 48));
  }

LABEL_7:
  v4 = *(v1 + 8);
  v3 = v1 + 8;
  *(v3 + 8) = 0;
  if (v4)
  {

    return sub_275E224D0(v3);
  }

  return result;
}

google::protobuf::internal *sub_275DEA3A0(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v22 = a2;
  for (i = *(a3 + 92); (sub_275E221E8(a3, &v22, i) & 1) == 0; i = *(a3 + 92))
  {
    v6 = (v22 + 1);
    v7 = *v22;
    if ((*v22 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    v8 = v7 + (*v6 << 7);
    v7 = v8 - 128;
    if ((*v6 & 0x80000000) == 0)
    {
      v6 = (v22 + 2);
LABEL_6:
      v22 = v6;
      goto LABEL_7;
    }

    TagFallback = google::protobuf::internal::ReadTagFallback(v22, (v8 - 128));
    v22 = TagFallback;
    if (!TagFallback)
    {
      return 0;
    }

    v6 = TagFallback;
    v7 = v20;
LABEL_7:
    v9 = v7 >> 3;
    if (v7 >> 3 > 2)
    {
      if (v9 == 3)
      {
        if (v7 == 26)
        {
          *(a1 + 16) |= 4u;
          v16 = *(a1 + 40);
          if (!v16)
          {
            v17 = *(a1 + 8);
            if (v17)
            {
              v17 = *(v17 & 0xFFFFFFFFFFFFFFFELL);
            }

            v16 = MEMORY[0x277C8F000](v17);
            *(a1 + 40) = v16;
            v6 = v22;
          }

          v13 = sub_275E5BB7C(a3, v16, v6);
          goto LABEL_42;
        }
      }

      else if (v9 == 4 && v7 == 34)
      {
        *(a1 + 16) |= 8u;
        v14 = *(a1 + 48);
        if (!v14)
        {
          v15 = *(a1 + 8);
          if (v15)
          {
            v15 = *(v15 & 0xFFFFFFFFFFFFFFFELL);
          }

          v14 = sub_275E1F89C(v15);
          *(a1 + 48) = v14;
          v6 = v22;
        }

        v13 = sub_275E5BAAC(a3, v14, v6);
        goto LABEL_42;
      }
    }

    else if (v9 == 1)
    {
      if (v7 == 10)
      {
        *(a1 + 16) |= 1u;
        google::protobuf::internal::ArenaStringPtr::Mutable();
        v13 = google::protobuf::internal::InlineGreedyStringParser();
        goto LABEL_42;
      }
    }

    else if (v9 == 2 && v7 == 18)
    {
      *(a1 + 16) |= 2u;
      v11 = *(a1 + 32);
      if (!v11)
      {
        v12 = *(a1 + 8);
        if (v12)
        {
          v12 = *(v12 & 0xFFFFFFFFFFFFFFFELL);
        }

        v11 = sub_275E1F96C(v12);
        *(a1 + 32) = v11;
        v6 = v22;
      }

      v13 = sub_275E5BC4C(a3, v11, v6);
      goto LABEL_42;
    }

    if (v7)
    {
      v18 = (v7 & 7) == 4;
    }

    else
    {
      v18 = 1;
    }

    if (v18)
    {
      *(a3 + 80) = v7 - 1;
      return v22;
    }

    if ((*(a1 + 8) & 1) == 0)
    {
      sub_275E22260((a1 + 8));
    }

    v13 = google::protobuf::internal::UnknownFieldParse();
LABEL_42:
    v22 = v13;
    if (!v13)
    {
      return 0;
    }
  }

  return v22;
}

unsigned __int8 *sub_275DEA5F8(uint64_t a1, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v4 = a2;
  v6 = *(a1 + 16);
  if (v6)
  {
    v4 = sub_275DE5774(a3, 1, (*(a1 + 24) & 0xFFFFFFFFFFFFFFFELL), a2);
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

  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v7 = *(a1 + 32);
  *v4 = 18;
  v8 = *(v7 + 20);
  if (v8 > 0x7F)
  {
    v4[1] = v8 | 0x80;
    v10 = v8 >> 7;
    if (v8 >> 14)
    {
      v9 = v4 + 3;
      do
      {
        *(v9 - 1) = v10 | 0x80;
        v11 = v10 >> 7;
        ++v9;
        v12 = v10 >> 14;
        v10 >>= 7;
      }

      while (v12);
      *(v9 - 1) = v11;
    }

    else
    {
      v4[2] = v10;
      v9 = v4 + 3;
    }
  }

  else
  {
    v4[1] = v8;
    v9 = v4 + 2;
  }

  v4 = sub_275DE98F4(v7, v9, a3);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_37;
    }

    goto LABEL_27;
  }

LABEL_17:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v13 = *(a1 + 40);
  *v4 = 26;
  v14 = *(v13 + 5);
  if (v14 > 0x7F)
  {
    v4[1] = v14 | 0x80;
    v16 = v14 >> 7;
    if (v14 >> 14)
    {
      v15 = v4 + 3;
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
      v4[2] = v16;
      v15 = v4 + 3;
    }
  }

  else
  {
    v4[1] = v14;
    v15 = v4 + 2;
  }

  v4 = TSP::UUID::_InternalSerialize(v13, v15, a3);
  if ((v6 & 8) != 0)
  {
LABEL_27:
    if (*a3 <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
    }

    v19 = *(a1 + 48);
    *v4 = 34;
    v20 = *(v19 + 20);
    if (v20 > 0x7F)
    {
      v4[1] = v20 | 0x80;
      v22 = v20 >> 7;
      if (v20 >> 14)
      {
        v21 = v4 + 3;
        do
        {
          *(v21 - 1) = v22 | 0x80;
          v23 = v22 >> 7;
          ++v21;
          v24 = v22 >> 14;
          v22 >>= 7;
        }

        while (v24);
        *(v21 - 1) = v23;
      }

      else
      {
        v4[2] = v22;
        v21 = v4 + 3;
      }
    }

    else
    {
      v4[1] = v20;
      v21 = v4 + 2;
    }

    v4 = sub_275DE8F64(v19, v21, a3);
  }

LABEL_37:
  v25 = *(a1 + 8);
  if ((v25 & 1) == 0)
  {
    return v4;
  }

  return MEMORY[0x2821EAC40]((v25 & 0xFFFFFFFFFFFFFFFELL) + 8, v4, a3);
}

uint64_t sub_275DEA85C(uint64_t a1)
{
  v2 = *(a1 + 16);
  if ((v2 & 0xF) == 0)
  {
    v3 = 0;
    goto LABEL_13;
  }

  if ((v2 & 1) == 0)
  {
    v3 = 0;
    if ((v2 & 2) == 0)
    {
      goto LABEL_10;
    }

LABEL_9:
    v7 = sub_275DE9C54(*(a1 + 32));
    v3 += v7 + ((9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6) + 1;
    goto LABEL_10;
  }

  v4 = *(a1 + 24) & 0xFFFFFFFFFFFFFFFELL;
  v5 = *(v4 + 23);
  v6 = *(v4 + 8);
  if ((v5 & 0x80u) == 0)
  {
    v6 = v5;
  }

  v3 = v6 + ((9 * (__clz(v6 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 2) != 0)
  {
    goto LABEL_9;
  }

LABEL_10:
  if ((v2 & 4) == 0)
  {
    if ((v2 & 8) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  v10 = TSP::UUID::ByteSizeLong(*(a1 + 40));
  v3 += v10 + ((9 * (__clz(v10 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 8) != 0)
  {
LABEL_12:
    v8 = sub_275DE90E4(*(a1 + 48));
    v3 += v8 + ((9 * (__clz(v8 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_13:
  if (*(a1 + 8))
  {

    return MEMORY[0x2821EADD8](a1 + 8, v3, a1 + 20);
  }

  else
  {
    *(a1 + 20) = v3;
    return v3;
  }
}

uint64_t sub_275DEA9B8(uint64_t a1, void *lpsrc)
{
  v4 = __dynamic_cast(lpsrc, MEMORY[0x277D80A98], &unk_2884D7DA8, 0);
  if (v4)
  {

    return sub_275DEAA60(a1, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, a1);
  }
}

uint64_t sub_275DEAA60(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 8);
  if (v4)
  {
    result = sub_275E22484((result + 8), (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  v5 = *(a2 + 16);
  if ((v5 & 0xF) == 0)
  {
    return result;
  }

  if ((v5 & 1) == 0)
  {
    if ((v5 & 2) == 0)
    {
      goto LABEL_6;
    }

LABEL_10:
    *(v3 + 16) |= 2u;
    v6 = *(v3 + 32);
    if (!v6)
    {
      v7 = *(v3 + 8);
      if (v7)
      {
        v7 = *(v7 & 0xFFFFFFFFFFFFFFFELL);
      }

      v6 = sub_275E1F96C(v7);
      *(v3 + 32) = v6;
    }

    if (*(a2 + 32))
    {
      v8 = *(a2 + 32);
    }

    else
    {
      v8 = &unk_2812EABD0;
    }

    result = sub_275DE9E90(v6, v8);
    if ((v5 & 4) == 0)
    {
LABEL_7:
      if ((v5 & 8) == 0)
      {
        return result;
      }

      goto LABEL_26;
    }

    goto LABEL_18;
  }

  *(v3 + 16) |= 1u;
  result = google::protobuf::internal::ArenaStringPtr::Set();
  if ((v5 & 2) != 0)
  {
    goto LABEL_10;
  }

LABEL_6:
  if ((v5 & 4) == 0)
  {
    goto LABEL_7;
  }

LABEL_18:
  *(v3 + 16) |= 4u;
  v9 = *(v3 + 40);
  if (!v9)
  {
    v10 = *(v3 + 8);
    if (v10)
    {
      v10 = *(v10 & 0xFFFFFFFFFFFFFFFELL);
    }

    v9 = MEMORY[0x277C8F000](v10);
    *(v3 + 40) = v9;
  }

  if (*(a2 + 40))
  {
    v11 = *(a2 + 40);
  }

  else
  {
    v11 = MEMORY[0x277D809E0];
  }

  result = TSP::UUID::MergeFrom(v9, v11);
  if ((v5 & 8) != 0)
  {
LABEL_26:
    *(v3 + 16) |= 8u;
    v12 = *(v3 + 48);
    if (!v12)
    {
      v13 = *(v3 + 8);
      if (v13)
      {
        v13 = *(v13 & 0xFFFFFFFFFFFFFFFELL);
      }

      v12 = sub_275E1F89C(v13);
      *(v3 + 48) = v12;
    }

    if (*(a2 + 48))
    {
      v14 = *(a2 + 48);
    }

    else
    {
      v14 = &qword_2812EABA8;
    }

    return sub_275DE8B14(v12, v14);
  }

  return result;
}

google::protobuf::UnknownFieldSet *sub_275DEABF0(google::protobuf::UnknownFieldSet *result, google::protobuf::UnknownFieldSet *a2)
{
  if (a2 != result)
  {
    v4 = result;
    sub_275DEA2E4(result);

    return sub_275DEA9B8(v4, a2);
  }

  return result;
}

uint64_t sub_275DEAC3C(uint64_t a1)
{
  v2 = *(a1 + 16);
  if ((v2 & 2) != 0)
  {
    result = sub_275DEA050(*(a1 + 32));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 4) != 0)
  {
    result = TSP::UUID::IsInitialized(*(a1 + 40));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 8) == 0)
  {
    return 1;
  }

  v4 = *(a1 + 48);
  if ((*(v4 + 16) & 1) == 0)
  {
    return 1;
  }

  result = TSP::UUID::IsInitialized(*(v4 + 24));
  if (result)
  {
    return 1;
  }

  return result;
}

uint64_t sub_275DEACE0(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_2884D5808;
  *(a1 + 8) = a2;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  if (atomic_load_explicit(dword_2812EA010, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  v3 = MEMORY[0x277D80A90];
  *(a1 + 32) = MEMORY[0x277D80A90];
  *(a1 + 40) = v3;
  *(a1 + 48) = v3;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 168) = 0u;
  *(a1 + 184) = 0u;
  *(a1 + 200) = 0u;
  *(a1 + 216) = 31;
  return a1;
}

uint64_t sub_275DEAD8C(uint64_t a1)
{
  sub_275DEADC0(a1);
  sub_275DE4968((a1 + 8));
  return a1;
}

uint64_t sub_275DEADC0(uint64_t result)
{
  v1 = result;
  v2 = *(result + 32);
  v3 = MEMORY[0x277D80A90];
  if (v2 != MEMORY[0x277D80A90])
  {
    if (*(v2 + 23) < 0)
    {
      operator delete(*v2);
    }

    result = MEMORY[0x277C8F960](v2, 0x1012C40EC159624);
  }

  v4 = *(v1 + 40);
  if (v4 != v3)
  {
    if (*(v4 + 23) < 0)
    {
      operator delete(*v4);
    }

    result = MEMORY[0x277C8F960](v4, 0x1012C40EC159624);
  }

  v5 = *(v1 + 48);
  if (v5 != v3)
  {
    if (*(v5 + 23) < 0)
    {
      operator delete(*v5);
    }

    result = MEMORY[0x277C8F960](v5, 0x1012C40EC159624);
  }

  if (v1 != &unk_2812EAC50)
  {
    v6 = *(v1 + 56);
    if (v6)
    {
      TSP::Color::~Color(v6);
      MEMORY[0x277C8F960]();
    }

    v7 = *(v1 + 64);
    if (v7)
    {
      v8 = sub_275DE4794(v7);
      MEMORY[0x277C8F960](v8, 0x10A1C40DC51A97DLL);
    }

    result = *(v1 + 72);
    if (result)
    {
      MEMORY[0x277C8E820]();

      JUMPOUT(0x277C8F960);
    }
  }

  return result;
}

void sub_275DEAF08(uint64_t a1)
{
  sub_275DEAD8C(a1);

  JUMPOUT(0x277C8F960);
}

google::protobuf::UnknownFieldSet *sub_275DEAF48(google::protobuf::UnknownFieldSet *result)
{
  v1 = result;
  v2 = *(result + 4);
  if ((v2 & 0x3F) == 0)
  {
    goto LABEL_9;
  }

  if ((v2 & 1) == 0)
  {
    if ((v2 & 2) == 0)
    {
      goto LABEL_4;
    }

LABEL_27:
    v6 = *(result + 5) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v6 + 23) < 0)
    {
      **v6 = 0;
      *(v6 + 8) = 0;
      if ((v2 & 4) != 0)
      {
        goto LABEL_31;
      }
    }

    else
    {
      *v6 = 0;
      *(v6 + 23) = 0;
      if ((v2 & 4) != 0)
      {
        goto LABEL_31;
      }
    }

LABEL_5:
    if ((v2 & 8) == 0)
    {
      goto LABEL_6;
    }

LABEL_35:
    result = TSP::Color::Clear(*(result + 7));
    if ((v2 & 0x10) == 0)
    {
LABEL_7:
      if ((v2 & 0x20) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_8;
    }

    goto LABEL_36;
  }

  v5 = *(result + 4) & 0xFFFFFFFFFFFFFFFELL;
  if (*(v5 + 23) < 0)
  {
    **v5 = 0;
    *(v5 + 8) = 0;
    if ((v2 & 2) != 0)
    {
      goto LABEL_27;
    }
  }

  else
  {
    *v5 = 0;
    *(v5 + 23) = 0;
    if ((v2 & 2) != 0)
    {
      goto LABEL_27;
    }
  }

LABEL_4:
  if ((v2 & 4) == 0)
  {
    goto LABEL_5;
  }

LABEL_31:
  v7 = *(result + 6) & 0xFFFFFFFFFFFFFFFELL;
  if (*(v7 + 23) < 0)
  {
    **v7 = 0;
    *(v7 + 8) = 0;
    if ((v2 & 8) != 0)
    {
      goto LABEL_35;
    }
  }

  else
  {
    *v7 = 0;
    *(v7 + 23) = 0;
    if ((v2 & 8) != 0)
    {
      goto LABEL_35;
    }
  }

LABEL_6:
  if ((v2 & 0x10) == 0)
  {
    goto LABEL_7;
  }

LABEL_36:
  result = sub_275DE4A40(*(v1 + 64));
  if ((v2 & 0x20) != 0)
  {
LABEL_8:
    result = TSD::PathSourceArchive::Clear(*(v1 + 72));
  }

LABEL_9:
  if ((v2 & 0xC0) != 0)
  {
    *(v1 + 80) = 0;
  }

  if ((v2 & 0xFF00) != 0)
  {
    *(v1 + 132) = 0u;
    *(v1 + 120) = 0u;
    *(v1 + 104) = 0u;
    *(v1 + 88) = 0u;
  }

  if ((v2 & 0xFF0000) != 0)
  {
    *(v1 + 180) = 0;
    *(v1 + 164) = 0u;
    *(v1 + 148) = 0u;
  }

  if (HIBYTE(v2))
  {
    *(v1 + 190) = 0;
    *(v1 + 182) = 0;
    *(v1 + 198) = 0;
  }

  if ((*(v1 + 20) & 7) != 0)
  {
    *(v1 + 200) = 0;
    *(v1 + 208) = 0;
    *(v1 + 216) = 31;
  }

  v4 = *(v1 + 8);
  v3 = (v1 + 8);
  v3[1] = 0;
  if (v4)
  {

    return sub_275E224D0(v3);
  }

  return result;
}

google::protobuf::internal *sub_275DEB0D8(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v109 = a2;
  if ((sub_275E221E8(a3, &v109, *(a3 + 92)) & 1) == 0)
  {
    while (1)
    {
      v6 = (v109 + 1);
      v7 = *v109;
      if (*v109 < 0)
      {
        v8 = v7 + (*v6 << 7);
        v7 = v8 - 128;
        if (*v6 < 0)
        {
          TagFallback = google::protobuf::internal::ReadTagFallback(v109, (v8 - 128));
          v109 = TagFallback;
          if (!TagFallback)
          {
            return 0;
          }

          v6 = TagFallback;
          v7 = v10;
          goto LABEL_7;
        }

        v6 = (v109 + 2);
      }

      v109 = v6;
LABEL_7:
      switch(v7 >> 3)
      {
        case 1u:
          if (v7 != 10)
          {
            goto LABEL_160;
          }

          *(a1 + 16) |= 1u;
          goto LABEL_110;
        case 2u:
          if (v7 != 18)
          {
            goto LABEL_160;
          }

          *(a1 + 16) |= 2u;
          goto LABEL_110;
        case 3u:
          if (v7 != 24)
          {
            goto LABEL_160;
          }

          *(a1 + 16) |= 0x40u;
          v55 = (v6 + 1);
          LODWORD(v56) = *v6;
          if ((*v6 & 0x80000000) == 0)
          {
            goto LABEL_101;
          }

          v57 = *v55;
          v56 = (v56 + (v57 << 7) - 128);
          if (v57 < 0)
          {
            v99 = google::protobuf::internal::VarintParseSlow32(v6, v56);
            v109 = v99;
            *(a1 + 80) = v100;
            if (!v99)
            {
              return 0;
            }
          }

          else
          {
            v55 = (v6 + 2);
LABEL_101:
            v109 = v55;
            *(a1 + 80) = v56;
          }

          goto LABEL_168;
        case 4u:
          if (v7 != 32)
          {
            goto LABEL_160;
          }

          *(a1 + 16) |= 0x80u;
          v46 = (v6 + 1);
          LODWORD(v47) = *v6;
          if ((*v6 & 0x80000000) == 0)
          {
            goto LABEL_81;
          }

          v48 = *v46;
          v47 = (v47 + (v48 << 7) - 128);
          if (v48 < 0)
          {
            v97 = google::protobuf::internal::VarintParseSlow32(v6, v47);
            v109 = v97;
            *(a1 + 84) = v98;
            if (!v97)
            {
              return 0;
            }
          }

          else
          {
            v46 = (v6 + 2);
LABEL_81:
            v109 = v46;
            *(a1 + 84) = v47;
          }

          goto LABEL_168;
        case 5u:
          if (v7 != 41)
          {
            goto LABEL_160;
          }

          *(a1 + 16) |= 0x100u;
          v49 = *v6;
          v32 = (v6 + 8);
          *(a1 + 88) = v49;
          goto LABEL_159;
        case 6u:
          if (v7 != 49)
          {
            goto LABEL_160;
          }

          *(a1 + 16) |= 0x200u;
          v63 = *v6;
          v32 = (v6 + 8);
          *(a1 + 96) = v63;
          goto LABEL_159;
        case 7u:
          if (v7 != 57)
          {
            goto LABEL_160;
          }

          *(a1 + 16) |= 0x400u;
          v44 = *v6;
          v32 = (v6 + 8);
          *(a1 + 104) = v44;
          goto LABEL_159;
        case 8u:
          if (v7 != 65)
          {
            goto LABEL_160;
          }

          *(a1 + 16) |= 0x800u;
          v45 = *v6;
          v32 = (v6 + 8);
          *(a1 + 112) = v45;
          goto LABEL_159;
        case 9u:
          if (v7 != 73)
          {
            goto LABEL_160;
          }

          *(a1 + 16) |= 0x1000u;
          v54 = *v6;
          v32 = (v6 + 8);
          *(a1 + 120) = v54;
          goto LABEL_159;
        case 0xAu:
          if (v7 != 80)
          {
            goto LABEL_160;
          }

          v52 = (v6 + 1);
          v51 = *v6;
          if ((v51 & 0x8000000000000000) == 0)
          {
            goto LABEL_90;
          }

          v53 = *v52;
          v51 = (v53 << 7) + v51 - 128;
          if (v53 < 0)
          {
            v109 = google::protobuf::internal::VarintParseSlow64(v6, v51);
            if (!v109)
            {
              return 0;
            }
          }

          else
          {
            v52 = (v6 + 2);
LABEL_90:
            v109 = v52;
          }

          if ((v51 - 31) > 1)
          {
            sub_275E5F6C0();
          }

          else
          {
            *(a1 + 20) |= 4u;
            *(a1 + 216) = v51;
          }

          goto LABEL_168;
        case 0xBu:
          if (v7 != 89)
          {
            goto LABEL_160;
          }

          *(a1 + 16) |= 0x2000u;
          v69 = *v6;
          v32 = (v6 + 8);
          *(a1 + 128) = v69;
          goto LABEL_159;
        case 0xCu:
          if (v7 != 97)
          {
            goto LABEL_160;
          }

          *(a1 + 16) |= 0x4000u;
          v33 = *v6;
          v32 = (v6 + 8);
          *(a1 + 136) = v33;
          goto LABEL_159;
        case 0xDu:
          if (v7 != 104)
          {
            goto LABEL_160;
          }

          v30 = (v6 + 1);
          v29 = *v6;
          if ((v29 & 0x8000000000000000) == 0)
          {
            goto LABEL_49;
          }

          v31 = *v30;
          v29 = (v31 << 7) + v29 - 128;
          if (v31 < 0)
          {
            v109 = google::protobuf::internal::VarintParseSlow64(v6, v29);
            if (!v109)
            {
              return 0;
            }
          }

          else
          {
            v30 = (v6 + 2);
LABEL_49:
            v109 = v30;
          }

          if (v29 > 4)
          {
            sub_275E5F684();
          }

          else
          {
            *(a1 + 16) |= 0x8000u;
            *(a1 + 144) = v29;
          }

          goto LABEL_168;
        case 0xEu:
          if (v7 != 112)
          {
            goto LABEL_160;
          }

          v72 = (v6 + 1);
          v71 = *v6;
          if ((v71 & 0x8000000000000000) == 0)
          {
            goto LABEL_137;
          }

          v73 = *v72;
          v71 = (v73 << 7) + v71 - 128;
          if (v73 < 0)
          {
            v109 = google::protobuf::internal::VarintParseSlow64(v6, v71);
            if (!v109)
            {
              return 0;
            }
          }

          else
          {
            v72 = (v6 + 2);
LABEL_137:
            v109 = v72;
          }

          if (v71 > 1)
          {
            sub_275E5F648();
          }

          else
          {
            *(a1 + 16) |= 0x10000u;
            *(a1 + 148) = v71;
          }

          goto LABEL_168;
        case 0xFu:
          if (v7 != 122)
          {
            goto LABEL_160;
          }

          *(a1 + 16) |= 4u;
LABEL_110:
          google::protobuf::internal::ArenaStringPtr::Mutable();
          v16 = google::protobuf::internal::InlineGreedyStringParser();
          goto LABEL_167;
        case 0x10u:
          if (v7 != 130)
          {
            goto LABEL_160;
          }

          *(a1 + 16) |= 8u;
          v58 = *(a1 + 56);
          if (!v58)
          {
            v59 = *(a1 + 8);
            if (v59)
            {
              v59 = *(v59 & 0xFFFFFFFFFFFFFFFELL);
            }

            v58 = MEMORY[0x277C8F010](v59);
            *(a1 + 56) = v58;
            v6 = v109;
          }

          v16 = sub_275E5B69C(a3, v58, v6);
          goto LABEL_167;
        case 0x11u:
          if (v7 != 137)
          {
            goto LABEL_160;
          }

          *(a1 + 16) |= 0x20000u;
          v70 = *v6;
          v32 = (v6 + 8);
          *(a1 + 152) = v70;
          goto LABEL_159;
        case 0x12u:
          if (v7 != 146)
          {
            goto LABEL_160;
          }

          *(a1 + 16) |= 0x10u;
          v64 = *(a1 + 64);
          if (!v64)
          {
            v65 = *(a1 + 8);
            if (v65)
            {
              v65 = *(v65 & 0xFFFFFFFFFFFFFFFELL);
            }

            v64 = sub_275E1F5E0(v65);
            *(a1 + 64) = v64;
            v6 = v109;
          }

          v16 = sub_275E5B83C(a3, v64, v6);
          goto LABEL_167;
        case 0x13u:
          if (v7 != 152)
          {
            goto LABEL_160;
          }

          *(a1 + 16) |= 0x400000u;
          v12 = (v6 + 1);
          v11 = *v6;
          if ((v11 & 0x8000000000000000) == 0)
          {
            goto LABEL_16;
          }

          v13 = *v12;
          v11 = (v13 << 7) + v11 - 128;
          if (v13 < 0)
          {
            v85 = google::protobuf::internal::VarintParseSlow64(v6, v11);
            v109 = v85;
            *(a1 + 180) = v86 != 0;
            if (!v85)
            {
              return 0;
            }
          }

          else
          {
            v12 = (v6 + 2);
LABEL_16:
            v109 = v12;
            *(a1 + 180) = v11 != 0;
          }

          goto LABEL_168;
        case 0x14u:
          if (v7 != 160)
          {
            goto LABEL_160;
          }

          v38 = (v6 + 1);
          v37 = *v6;
          if ((v37 & 0x8000000000000000) == 0)
          {
            goto LABEL_63;
          }

          v39 = *v38;
          v37 = (v39 << 7) + v37 - 128;
          if (v39 < 0)
          {
            v109 = google::protobuf::internal::VarintParseSlow64(v6, v37);
            if (!v109)
            {
              return 0;
            }
          }

          else
          {
            v38 = (v6 + 2);
LABEL_63:
            v109 = v38;
          }

          if (v37 > 4)
          {
            sub_275E5F60C();
          }

          else
          {
            *(a1 + 16) |= 0x40000u;
            *(a1 + 160) = v37;
          }

          goto LABEL_168;
        case 0x15u:
          if (v7 != 168)
          {
            goto LABEL_160;
          }

          v75 = (v6 + 1);
          v74 = *v6;
          if ((v74 & 0x8000000000000000) == 0)
          {
            goto LABEL_144;
          }

          v76 = *v75;
          v74 = (v76 << 7) + v74 - 128;
          if (v76 < 0)
          {
            v109 = google::protobuf::internal::VarintParseSlow64(v6, v74);
            if (!v109)
            {
              return 0;
            }
          }

          else
          {
            v75 = (v6 + 2);
LABEL_144:
            v109 = v75;
          }

          if (v74 > 5)
          {
            sub_275E5F5D0();
          }

          else
          {
            *(a1 + 16) |= 0x80000u;
            *(a1 + 164) = v74;
          }

          goto LABEL_168;
        case 0x16u:
          if (v7 != 178)
          {
            goto LABEL_160;
          }

          *(a1 + 16) |= 0x20u;
          v14 = *(a1 + 72);
          if (!v14)
          {
            v15 = *(a1 + 8);
            if (v15)
            {
              v15 = *(v15 & 0xFFFFFFFFFFFFFFFELL);
            }

            v14 = MEMORY[0x277C8EFB0](v15);
            *(a1 + 72) = v14;
            v6 = v109;
          }

          v16 = sub_275E5B76C(a3, v14, v6);
          goto LABEL_167;
        case 0x17u:
          if (v7 != 184)
          {
            goto LABEL_160;
          }

          *(a1 + 16) |= 0x800000u;
          v35 = (v6 + 1);
          v34 = *v6;
          if ((v34 & 0x8000000000000000) == 0)
          {
            goto LABEL_58;
          }

          v36 = *v35;
          v34 = (v36 << 7) + v34 - 128;
          if (v36 < 0)
          {
            v93 = google::protobuf::internal::VarintParseSlow64(v6, v34);
            v109 = v93;
            *(a1 + 181) = v94 != 0;
            if (!v93)
            {
              return 0;
            }
          }

          else
          {
            v35 = (v6 + 2);
LABEL_58:
            v109 = v35;
            *(a1 + 181) = v34 != 0;
          }

          goto LABEL_168;
        case 0x18u:
          if (v7 != 192)
          {
            goto LABEL_160;
          }

          *(a1 + 16) |= 0x200000u;
          v20 = (v6 + 1);
          LODWORD(v21) = *v6;
          if ((*v6 & 0x80000000) == 0)
          {
            goto LABEL_34;
          }

          v22 = *v20;
          v21 = (v21 + (v22 << 7) - 128);
          if (v22 < 0)
          {
            v87 = google::protobuf::internal::VarintParseSlow32(v6, v21);
            v109 = v87;
            *(a1 + 176) = v88;
            if (!v87)
            {
              return 0;
            }
          }

          else
          {
            v20 = (v6 + 2);
LABEL_34:
            v109 = v20;
            *(a1 + 176) = v21;
          }

          goto LABEL_168;
        case 0x19u:
          if (v7 != 201)
          {
            goto LABEL_160;
          }

          *(a1 + 16) |= 0x100000u;
          v50 = *v6;
          v32 = (v6 + 8);
          *(a1 + 168) = v50;
          goto LABEL_159;
        case 0x1Au:
          if (v7 != 208)
          {
            goto LABEL_160;
          }

          v18 = (v6 + 1);
          v17 = *v6;
          if ((v17 & 0x8000000000000000) == 0)
          {
            goto LABEL_27;
          }

          v19 = *v18;
          v17 = (v19 << 7) + v17 - 128;
          if (v19 < 0)
          {
            v109 = google::protobuf::internal::VarintParseSlow64(v6, v17);
            if (!v109)
            {
              return 0;
            }
          }

          else
          {
            v18 = (v6 + 2);
LABEL_27:
            v109 = v18;
          }

          if (v17 > 2)
          {
            sub_275E5F594();
          }

          else
          {
            *(a1 + 16) |= 0x4000000u;
            *(a1 + 184) = v17;
          }

          goto LABEL_168;
        case 0x1Bu:
          if (v7 != 216)
          {
            goto LABEL_160;
          }

          *(a1 + 16) |= 0x8000000u;
          v80 = (v6 + 1);
          LODWORD(v81) = *v6;
          if ((*v6 & 0x80000000) == 0)
          {
            goto LABEL_156;
          }

          v82 = *v80;
          v81 = (v81 + (v82 << 7) - 128);
          if (v82 < 0)
          {
            v107 = google::protobuf::internal::VarintParseSlow32(v6, v81);
            v109 = v107;
            *(a1 + 188) = v108;
            if (!v107)
            {
              return 0;
            }
          }

          else
          {
            v80 = (v6 + 2);
LABEL_156:
            v109 = v80;
            *(a1 + 188) = v81;
          }

          goto LABEL_168;
        case 0x1Cu:
          if (v7 != 224)
          {
            goto LABEL_160;
          }

          *(a1 + 16) |= 0x10000000u;
          v77 = (v6 + 1);
          LODWORD(v78) = *v6;
          if ((*v6 & 0x80000000) == 0)
          {
            goto LABEL_151;
          }

          v79 = *v77;
          v78 = (v78 + (v79 << 7) - 128);
          if (v79 < 0)
          {
            v105 = google::protobuf::internal::VarintParseSlow32(v6, v78);
            v109 = v105;
            *(a1 + 192) = v106;
            if (!v105)
            {
              return 0;
            }
          }

          else
          {
            v77 = (v6 + 2);
LABEL_151:
            v109 = v77;
            *(a1 + 192) = v78;
          }

          goto LABEL_168;
        case 0x1Du:
          if (v7 != 232)
          {
            goto LABEL_160;
          }

          *(a1 + 16) |= 0x1000000u;
          v27 = (v6 + 1);
          v26 = *v6;
          if ((v26 & 0x8000000000000000) == 0)
          {
            goto LABEL_44;
          }

          v28 = *v27;
          v26 = (v28 << 7) + v26 - 128;
          if (v28 < 0)
          {
            v91 = google::protobuf::internal::VarintParseSlow64(v6, v26);
            v109 = v91;
            *(a1 + 182) = v92 != 0;
            if (!v91)
            {
              return 0;
            }
          }

          else
          {
            v27 = (v6 + 2);
LABEL_44:
            v109 = v27;
            *(a1 + 182) = v26 != 0;
          }

          goto LABEL_168;
        case 0x1Eu:
          if (v7 != 240)
          {
            goto LABEL_160;
          }

          *(a1 + 16) |= 0x2000000u;
          v41 = (v6 + 1);
          v40 = *v6;
          if ((v40 & 0x8000000000000000) == 0)
          {
            goto LABEL_70;
          }

          v42 = *v41;
          v40 = (v42 << 7) + v40 - 128;
          if (v42 < 0)
          {
            v95 = google::protobuf::internal::VarintParseSlow64(v6, v40);
            v109 = v95;
            *(a1 + 183) = v96 != 0;
            if (!v95)
            {
              return 0;
            }
          }

          else
          {
            v41 = (v6 + 2);
LABEL_70:
            v109 = v41;
            *(a1 + 183) = v40 != 0;
          }

          goto LABEL_168;
        case 0x21u:
          if (v7 != 8)
          {
            goto LABEL_160;
          }

          *(a1 + 16) |= 0x20000000u;
          v61 = (v6 + 1);
          v60 = *v6;
          if ((v60 & 0x8000000000000000) == 0)
          {
            goto LABEL_115;
          }

          v62 = *v61;
          v60 = (v62 << 7) + v60 - 128;
          if (v62 < 0)
          {
            v101 = google::protobuf::internal::VarintParseSlow64(v6, v60);
            v109 = v101;
            *(a1 + 196) = v102 != 0;
            if (!v101)
            {
              return 0;
            }
          }

          else
          {
            v61 = (v6 + 2);
LABEL_115:
            v109 = v61;
            *(a1 + 196) = v60 != 0;
          }

          goto LABEL_168;
        case 0x22u:
          if (v7 != 17)
          {
            goto LABEL_160;
          }

          *(a1 + 20) |= 1u;
          v43 = *v6;
          v32 = (v6 + 8);
          *(a1 + 200) = v43;
          goto LABEL_159;
        case 0x23u:
          if (v7 != 25)
          {
            goto LABEL_160;
          }

          *(a1 + 20) |= 2u;
          v83 = *v6;
          v32 = (v6 + 8);
          *(a1 + 208) = v83;
LABEL_159:
          v109 = v32;
          goto LABEL_168;
        case 0x24u:
          if (v7 != 32)
          {
            goto LABEL_160;
          }

          *(a1 + 16) |= 0x40000000u;
          v24 = (v6 + 1);
          v23 = *v6;
          if ((v23 & 0x8000000000000000) == 0)
          {
            goto LABEL_39;
          }

          v25 = *v24;
          v23 = (v25 << 7) + v23 - 128;
          if (v25 < 0)
          {
            v89 = google::protobuf::internal::VarintParseSlow64(v6, v23);
            v109 = v89;
            *(a1 + 197) = v90 != 0;
            if (!v89)
            {
              return 0;
            }
          }

          else
          {
            v24 = (v6 + 2);
LABEL_39:
            v109 = v24;
            *(a1 + 197) = v23 != 0;
          }

          goto LABEL_168;
        case 0x25u:
          if (v7 != 40)
          {
            goto LABEL_160;
          }

          *(a1 + 16) |= 0x80000000;
          v67 = (v6 + 1);
          v66 = *v6;
          if ((v66 & 0x8000000000000000) == 0)
          {
            goto LABEL_128;
          }

          v68 = *v67;
          v66 = (v68 << 7) + v66 - 128;
          if (v68 < 0)
          {
            v103 = google::protobuf::internal::VarintParseSlow64(v6, v66);
            v109 = v103;
            *(a1 + 198) = v104 != 0;
            if (!v103)
            {
              return 0;
            }
          }

          else
          {
            v67 = (v6 + 2);
LABEL_128:
            v109 = v67;
            *(a1 + 198) = v66 != 0;
          }

          goto LABEL_168;
        default:
LABEL_160:
          if (v7)
          {
            v84 = (v7 & 7) == 4;
          }

          else
          {
            v84 = 1;
          }

          if (v84)
          {
            *(a3 + 80) = v7 - 1;
            return v109;
          }

          if ((*(a1 + 8) & 1) == 0)
          {
            sub_275E22260((a1 + 8));
          }

          v16 = google::protobuf::internal::UnknownFieldParse();
LABEL_167:
          v109 = v16;
          if (!v16)
          {
            return 0;
          }

LABEL_168:
          if (sub_275E221E8(a3, &v109, *(a3 + 92)))
          {
            return v109;
          }

          break;
      }
    }
  }

  return v109;
}

unsigned __int8 *sub_275DEBDB4(uint64_t a1, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v4 = a2;
  v6 = *(a1 + 16);
  if (v6)
  {
    v4 = sub_275DE5774(a3, 1, (*(a1 + 32) & 0xFFFFFFFFFFFFFFFELL), a2);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 0x40) == 0)
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

  v4 = sub_275DE5774(a3, 2, (*(a1 + 40) & 0xFFFFFFFFFFFFFFFELL), v4);
  if ((v6 & 0x40) == 0)
  {
LABEL_4:
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_5;
    }

LABEL_24:
    if (*a3 <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
    }

    v11 = *(a1 + 84);
    *v4 = 32;
    if (v11 > 0x7F)
    {
      v4[1] = v11 | 0x80;
      v12 = v11 >> 7;
      if (v11 >> 14)
      {
        v4 += 3;
        do
        {
          *(v4 - 1) = v12 | 0x80;
          v13 = v12 >> 7;
          ++v4;
          v14 = v12 >> 14;
          v12 >>= 7;
        }

        while (v14);
        *(v4 - 1) = v13;
        if ((v6 & 0x100) != 0)
        {
          goto LABEL_35;
        }
      }

      else
      {
        v4[2] = v12;
        v4 += 3;
        if ((v6 & 0x100) != 0)
        {
          goto LABEL_35;
        }
      }
    }

    else
    {
      v4[1] = v11;
      v4 += 2;
      if ((v6 & 0x100) != 0)
      {
        goto LABEL_35;
      }
    }

LABEL_6:
    if ((v6 & 0x200) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_38;
  }

LABEL_13:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v7 = *(a1 + 80);
  *v4 = 24;
  if (v7 > 0x7F)
  {
    v4[1] = v7 | 0x80;
    v8 = v7 >> 7;
    if (v7 >> 14)
    {
      v4 += 3;
      do
      {
        *(v4 - 1) = v8 | 0x80;
        v9 = v8 >> 7;
        ++v4;
        v10 = v8 >> 14;
        v8 >>= 7;
      }

      while (v10);
      *(v4 - 1) = v9;
      if ((v6 & 0x80) != 0)
      {
        goto LABEL_24;
      }
    }

    else
    {
      v4[2] = v8;
      v4 += 3;
      if ((v6 & 0x80) != 0)
      {
        goto LABEL_24;
      }
    }
  }

  else
  {
    v4[1] = v7;
    v4 += 2;
    if ((v6 & 0x80) != 0)
    {
      goto LABEL_24;
    }
  }

LABEL_5:
  if ((v6 & 0x100) == 0)
  {
    goto LABEL_6;
  }

LABEL_35:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v15 = *(a1 + 88);
  *v4 = 41;
  *(v4 + 1) = v15;
  v4 += 9;
  if ((v6 & 0x200) == 0)
  {
LABEL_7:
    if ((v6 & 0x400) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_41;
  }

LABEL_38:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v16 = *(a1 + 96);
  *v4 = 49;
  *(v4 + 1) = v16;
  v4 += 9;
  if ((v6 & 0x400) == 0)
  {
LABEL_8:
    if ((v6 & 0x800) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_44;
  }

LABEL_41:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v17 = *(a1 + 104);
  *v4 = 57;
  *(v4 + 1) = v17;
  v4 += 9;
  if ((v6 & 0x800) == 0)
  {
LABEL_9:
    if ((v6 & 0x1000) == 0)
    {
      goto LABEL_50;
    }

    goto LABEL_47;
  }

LABEL_44:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v18 = *(a1 + 112);
  *v4 = 65;
  *(v4 + 1) = v18;
  v4 += 9;
  if ((v6 & 0x1000) != 0)
  {
LABEL_47:
    if (*a3 <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
    }

    v19 = *(a1 + 120);
    *v4 = 73;
    *(v4 + 1) = v19;
    v4 += 9;
  }

LABEL_50:
  if ((*(a1 + 20) & 4) != 0)
  {
    if (*a3 <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
    }

    v20 = *(a1 + 216);
    *v4 = 80;
    if (v20 > 0x7F)
    {
      v4[1] = v20 | 0x80;
      v21 = v20 >> 7;
      if (v20 >> 14)
      {
        v4 += 3;
        do
        {
          *(v4 - 1) = v21 | 0x80;
          v22 = v21 >> 7;
          ++v4;
          v23 = v21 >> 14;
          v21 >>= 7;
        }

        while (v23);
        *(v4 - 1) = v22;
      }

      else
      {
        v4[2] = v21;
        v4 += 3;
      }
    }

    else
    {
      v4[1] = v20;
      v4 += 2;
    }
  }

  v24 = *(a1 + 16);
  if ((v24 & 0x2000) != 0)
  {
    if (*a3 <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
    }

    v25 = *(a1 + 128);
    *v4 = 89;
    *(v4 + 1) = v25;
    v4 += 9;
    if ((v24 & 0x4000) == 0)
    {
LABEL_62:
      if ((v24 & 0x8000) == 0)
      {
        goto LABEL_63;
      }

      goto LABEL_88;
    }
  }

  else if ((v24 & 0x4000) == 0)
  {
    goto LABEL_62;
  }

  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v26 = *(a1 + 136);
  *v4 = 97;
  *(v4 + 1) = v26;
  v4 += 9;
  if ((v24 & 0x8000) == 0)
  {
LABEL_63:
    if ((v24 & 0x10000) == 0)
    {
      goto LABEL_64;
    }

LABEL_99:
    if (*a3 <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
    }

    v31 = *(a1 + 148);
    *v4 = 112;
    if (v31 > 0x7F)
    {
      v4[1] = v31 | 0x80;
      v32 = v31 >> 7;
      if (v31 >> 14)
      {
        v4 += 3;
        do
        {
          *(v4 - 1) = v32 | 0x80;
          v33 = v32 >> 7;
          ++v4;
          v34 = v32 >> 14;
          v32 >>= 7;
        }

        while (v34);
        *(v4 - 1) = v33;
        if ((v24 & 4) != 0)
        {
          goto LABEL_110;
        }
      }

      else
      {
        v4[2] = v32;
        v4 += 3;
        if ((v24 & 4) != 0)
        {
          goto LABEL_110;
        }
      }
    }

    else
    {
      v4[1] = v31;
      v4 += 2;
      if ((v24 & 4) != 0)
      {
        goto LABEL_110;
      }
    }

LABEL_65:
    if ((v24 & 8) == 0)
    {
      goto LABEL_66;
    }

    goto LABEL_111;
  }

LABEL_88:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v27 = *(a1 + 144);
  *v4 = 104;
  if (v27 > 0x7F)
  {
    v4[1] = v27 | 0x80;
    v28 = v27 >> 7;
    if (v27 >> 14)
    {
      v4 += 3;
      do
      {
        *(v4 - 1) = v28 | 0x80;
        v29 = v28 >> 7;
        ++v4;
        v30 = v28 >> 14;
        v28 >>= 7;
      }

      while (v30);
      *(v4 - 1) = v29;
      if ((v24 & 0x10000) != 0)
      {
        goto LABEL_99;
      }
    }

    else
    {
      v4[2] = v28;
      v4 += 3;
      if ((v24 & 0x10000) != 0)
      {
        goto LABEL_99;
      }
    }
  }

  else
  {
    v4[1] = v27;
    v4 += 2;
    if ((v24 & 0x10000) != 0)
    {
      goto LABEL_99;
    }
  }

LABEL_64:
  if ((v24 & 4) == 0)
  {
    goto LABEL_65;
  }

LABEL_110:
  v4 = sub_275DE5774(a3, 15, (*(a1 + 48) & 0xFFFFFFFFFFFFFFFELL), v4);
  if ((v24 & 8) == 0)
  {
LABEL_66:
    if ((v24 & 0x20000) == 0)
    {
      goto LABEL_67;
    }

    goto LABEL_121;
  }

LABEL_111:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v35 = *(a1 + 56);
  *v4 = 386;
  v36 = *(v35 + 5);
  if (v36 > 0x7F)
  {
    v4[2] = v36 | 0x80;
    v38 = v36 >> 7;
    if (v36 >> 14)
    {
      v37 = v4 + 4;
      do
      {
        *(v37 - 1) = v38 | 0x80;
        v39 = v38 >> 7;
        ++v37;
        v40 = v38 >> 14;
        v38 >>= 7;
      }

      while (v40);
      *(v37 - 1) = v39;
    }

    else
    {
      v4[3] = v38;
      v37 = v4 + 4;
    }
  }

  else
  {
    v4[2] = v36;
    v37 = v4 + 3;
  }

  v4 = TSP::Color::_InternalSerialize(v35, v37, a3);
  if ((v24 & 0x20000) == 0)
  {
LABEL_67:
    if ((v24 & 0x10) == 0)
    {
      goto LABEL_68;
    }

    goto LABEL_124;
  }

LABEL_121:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v41 = *(a1 + 152);
  *v4 = 393;
  *(v4 + 2) = v41;
  v4 += 10;
  if ((v24 & 0x10) == 0)
  {
LABEL_68:
    if ((v24 & 0x400000) == 0)
    {
      goto LABEL_69;
    }

    goto LABEL_134;
  }

LABEL_124:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v42 = *(a1 + 64);
  *v4 = 402;
  v43 = *(v42 + 20);
  if (v43 > 0x7F)
  {
    v4[2] = v43 | 0x80;
    v45 = v43 >> 7;
    if (v43 >> 14)
    {
      v44 = v4 + 4;
      do
      {
        *(v44 - 1) = v45 | 0x80;
        v46 = v45 >> 7;
        ++v44;
        v47 = v45 >> 14;
        v45 >>= 7;
      }

      while (v47);
      *(v44 - 1) = v46;
    }

    else
    {
      v4[3] = v45;
      v44 = v4 + 4;
    }
  }

  else
  {
    v4[2] = v43;
    v44 = v4 + 3;
  }

  v4 = sub_275DE51A0(v42, v44, a3);
  if ((v24 & 0x400000) == 0)
  {
LABEL_69:
    if ((v24 & 0x40000) == 0)
    {
      goto LABEL_70;
    }

    goto LABEL_137;
  }

LABEL_134:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v48 = *(a1 + 180);
  *v4 = 408;
  v4[2] = v48;
  v4 += 3;
  if ((v24 & 0x40000) == 0)
  {
LABEL_70:
    if ((v24 & 0x80000) == 0)
    {
      goto LABEL_71;
    }

LABEL_148:
    if (*a3 <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
    }

    v53 = *(a1 + 164);
    *v4 = 424;
    if (v53 > 0x7F)
    {
      v4[2] = v53 | 0x80;
      v54 = v53 >> 7;
      if (v53 >> 14)
      {
        v4 += 4;
        do
        {
          *(v4 - 1) = v54 | 0x80;
          v55 = v54 >> 7;
          ++v4;
          v56 = v54 >> 14;
          v54 >>= 7;
        }

        while (v56);
        *(v4 - 1) = v55;
        if ((v24 & 0x20) != 0)
        {
          goto LABEL_159;
        }
      }

      else
      {
        v4[3] = v54;
        v4 += 4;
        if ((v24 & 0x20) != 0)
        {
          goto LABEL_159;
        }
      }
    }

    else
    {
      v4[2] = v53;
      v4 += 3;
      if ((v24 & 0x20) != 0)
      {
        goto LABEL_159;
      }
    }

LABEL_72:
    if ((v24 & 0x800000) == 0)
    {
      goto LABEL_73;
    }

    goto LABEL_169;
  }

LABEL_137:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v49 = *(a1 + 160);
  *v4 = 416;
  if (v49 > 0x7F)
  {
    v4[2] = v49 | 0x80;
    v50 = v49 >> 7;
    if (v49 >> 14)
    {
      v4 += 4;
      do
      {
        *(v4 - 1) = v50 | 0x80;
        v51 = v50 >> 7;
        ++v4;
        v52 = v50 >> 14;
        v50 >>= 7;
      }

      while (v52);
      *(v4 - 1) = v51;
      if ((v24 & 0x80000) != 0)
      {
        goto LABEL_148;
      }
    }

    else
    {
      v4[3] = v50;
      v4 += 4;
      if ((v24 & 0x80000) != 0)
      {
        goto LABEL_148;
      }
    }
  }

  else
  {
    v4[2] = v49;
    v4 += 3;
    if ((v24 & 0x80000) != 0)
    {
      goto LABEL_148;
    }
  }

LABEL_71:
  if ((v24 & 0x20) == 0)
  {
    goto LABEL_72;
  }

LABEL_159:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v57 = *(a1 + 72);
  *v4 = 434;
  v58 = *(v57 + 5);
  if (v58 > 0x7F)
  {
    v4[2] = v58 | 0x80;
    v60 = v58 >> 7;
    if (v58 >> 14)
    {
      v59 = v4 + 4;
      do
      {
        *(v59 - 1) = v60 | 0x80;
        v61 = v60 >> 7;
        ++v59;
        v62 = v60 >> 14;
        v60 >>= 7;
      }

      while (v62);
      *(v59 - 1) = v61;
    }

    else
    {
      v4[3] = v60;
      v59 = v4 + 4;
    }
  }

  else
  {
    v4[2] = v58;
    v59 = v4 + 3;
  }

  v4 = TSD::PathSourceArchive::_InternalSerialize(v57, v59, a3);
  if ((v24 & 0x800000) == 0)
  {
LABEL_73:
    if ((v24 & 0x200000) == 0)
    {
      goto LABEL_74;
    }

LABEL_172:
    if (*a3 <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
    }

    v64 = *(a1 + 176);
    *v4 = 448;
    if (v64 > 0x7F)
    {
      v4[2] = v64 | 0x80;
      v65 = v64 >> 7;
      if (v64 >> 14)
      {
        v4 += 4;
        do
        {
          *(v4 - 1) = v65 | 0x80;
          v66 = v65 >> 7;
          ++v4;
          v67 = v65 >> 14;
          v65 >>= 7;
        }

        while (v67);
        *(v4 - 1) = v66;
        if ((v24 & 0x100000) != 0)
        {
          goto LABEL_183;
        }
      }

      else
      {
        v4[3] = v65;
        v4 += 4;
        if ((v24 & 0x100000) != 0)
        {
          goto LABEL_183;
        }
      }
    }

    else
    {
      v4[2] = v64;
      v4 += 3;
      if ((v24 & 0x100000) != 0)
      {
        goto LABEL_183;
      }
    }

LABEL_75:
    if ((v24 & 0x4000000) == 0)
    {
      goto LABEL_76;
    }

LABEL_186:
    if (*a3 <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
    }

    v69 = *(a1 + 184);
    *v4 = 464;
    if (v69 > 0x7F)
    {
      v4[2] = v69 | 0x80;
      v70 = v69 >> 7;
      if (v69 >> 14)
      {
        v4 += 4;
        do
        {
          *(v4 - 1) = v70 | 0x80;
          v71 = v70 >> 7;
          ++v4;
          v72 = v70 >> 14;
          v70 >>= 7;
        }

        while (v72);
        *(v4 - 1) = v71;
        if ((v24 & 0x8000000) != 0)
        {
          goto LABEL_197;
        }
      }

      else
      {
        v4[3] = v70;
        v4 += 4;
        if ((v24 & 0x8000000) != 0)
        {
          goto LABEL_197;
        }
      }
    }

    else
    {
      v4[2] = v69;
      v4 += 3;
      if ((v24 & 0x8000000) != 0)
      {
        goto LABEL_197;
      }
    }

LABEL_77:
    if ((v24 & 0x10000000) == 0)
    {
      goto LABEL_78;
    }

LABEL_208:
    if (*a3 <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
    }

    v77 = *(a1 + 192);
    *v4 = 480;
    if (v77 > 0x7F)
    {
      v4[2] = v77 | 0x80;
      v78 = v77 >> 7;
      if (v77 >> 14)
      {
        v4 += 4;
        do
        {
          *(v4 - 1) = v78 | 0x80;
          v79 = v78 >> 7;
          ++v4;
          v80 = v78 >> 14;
          v78 >>= 7;
        }

        while (v80);
        *(v4 - 1) = v79;
        if ((v24 & 0x1000000) != 0)
        {
          goto LABEL_219;
        }
      }

      else
      {
        v4[3] = v78;
        v4 += 4;
        if ((v24 & 0x1000000) != 0)
        {
          goto LABEL_219;
        }
      }
    }

    else
    {
      v4[2] = v77;
      v4 += 3;
      if ((v24 & 0x1000000) != 0)
      {
        goto LABEL_219;
      }
    }

LABEL_79:
    if ((v24 & 0x2000000) == 0)
    {
      goto LABEL_80;
    }

    goto LABEL_222;
  }

LABEL_169:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v63 = *(a1 + 181);
  *v4 = 440;
  v4[2] = v63;
  v4 += 3;
  if ((v24 & 0x200000) != 0)
  {
    goto LABEL_172;
  }

LABEL_74:
  if ((v24 & 0x100000) == 0)
  {
    goto LABEL_75;
  }

LABEL_183:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v68 = *(a1 + 168);
  *v4 = 457;
  *(v4 + 2) = v68;
  v4 += 10;
  if ((v24 & 0x4000000) != 0)
  {
    goto LABEL_186;
  }

LABEL_76:
  if ((v24 & 0x8000000) == 0)
  {
    goto LABEL_77;
  }

LABEL_197:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v73 = *(a1 + 188);
  *v4 = 472;
  if (v73 > 0x7F)
  {
    v4[2] = v73 | 0x80;
    v74 = v73 >> 7;
    if (v73 >> 14)
    {
      v4 += 4;
      do
      {
        *(v4 - 1) = v74 | 0x80;
        v75 = v74 >> 7;
        ++v4;
        v76 = v74 >> 14;
        v74 >>= 7;
      }

      while (v76);
      *(v4 - 1) = v75;
      if ((v24 & 0x10000000) != 0)
      {
        goto LABEL_208;
      }
    }

    else
    {
      v4[3] = v74;
      v4 += 4;
      if ((v24 & 0x10000000) != 0)
      {
        goto LABEL_208;
      }
    }
  }

  else
  {
    v4[2] = v73;
    v4 += 3;
    if ((v24 & 0x10000000) != 0)
    {
      goto LABEL_208;
    }
  }

LABEL_78:
  if ((v24 & 0x1000000) == 0)
  {
    goto LABEL_79;
  }

LABEL_219:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v81 = *(a1 + 182);
  *v4 = 488;
  v4[2] = v81;
  v4 += 3;
  if ((v24 & 0x2000000) == 0)
  {
LABEL_80:
    if ((v24 & 0x20000000) == 0)
    {
      goto LABEL_228;
    }

    goto LABEL_225;
  }

LABEL_222:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v82 = *(a1 + 183);
  *v4 = 496;
  v4[2] = v82;
  v4 += 3;
  if ((v24 & 0x20000000) != 0)
  {
LABEL_225:
    if (*a3 <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
    }

    v83 = *(a1 + 196);
    *v4 = 648;
    v4[2] = v83;
    v4 += 3;
  }

LABEL_228:
  v84 = *(a1 + 20);
  if (v84)
  {
    if (*a3 <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
    }

    v85 = *(a1 + 200);
    *v4 = 657;
    *(v4 + 2) = v85;
    v4 += 10;
  }

  if ((v84 & 2) != 0)
  {
    if (*a3 <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
    }

    v86 = *(a1 + 208);
    *v4 = 665;
    *(v4 + 2) = v86;
    v4 += 10;
  }

  v87 = *(a1 + 16);
  if ((v87 & 0x40000000) != 0)
  {
    if (*a3 <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
    }

    v88 = *(a1 + 197);
    *v4 = 672;
    v4[2] = v88;
    v4 += 3;
  }

  if (v87 < 0)
  {
    if (*a3 <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
    }

    v89 = *(a1 + 198);
    *v4 = 680;
    v4[2] = v89;
    v4 += 3;
  }

  v90 = *(a1 + 8);
  if ((v90 & 1) == 0)
  {
    return v4;
  }

  return MEMORY[0x2821EAC40]((v90 & 0xFFFFFFFFFFFFFFFELL) + 8, v4, a3);
}

uint64_t sub_275DECAE0(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    v3 = 0;
    goto LABEL_19;
  }

  if ((v2 & 1) == 0)
  {
    v3 = 0;
    if ((v2 & 2) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_9;
  }

  v4 = *(a1 + 32) & 0xFFFFFFFFFFFFFFFELL;
  v5 = *(v4 + 23);
  v6 = *(v4 + 8);
  if ((v5 & 0x80u) == 0)
  {
    v6 = v5;
  }

  v3 = v6 + ((9 * (__clz(v6 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 2) != 0)
  {
LABEL_9:
    v7 = *(a1 + 40) & 0xFFFFFFFFFFFFFFFELL;
    v8 = *(v7 + 23);
    v9 = *(v7 + 8);
    if ((v8 & 0x80u) == 0)
    {
      v9 = v8;
    }

    v3 += v9 + ((9 * (__clz(v9 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_12:
  if ((v2 & 4) != 0)
  {
    v16 = *(a1 + 48) & 0xFFFFFFFFFFFFFFFELL;
    v17 = *(v16 + 23);
    v18 = *(v16 + 8);
    if ((v17 & 0x80u) == 0)
    {
      v18 = v17;
    }

    v3 += v18 + ((9 * (__clz(v18 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v2 & 8) == 0)
    {
LABEL_14:
      if ((v2 & 0x10) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_48;
    }
  }

  else if ((v2 & 8) == 0)
  {
    goto LABEL_14;
  }

  v19 = TSP::Color::ByteSizeLong(*(a1 + 56));
  v3 += v19 + ((9 * (__clz(v19 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v2 & 0x10) == 0)
  {
LABEL_15:
    if ((v2 & 0x20) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_49;
  }

LABEL_48:
  v20 = sub_275DE58A0(*(a1 + 64));
  v3 += v20 + ((9 * (__clz(v20 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v2 & 0x20) == 0)
  {
LABEL_16:
    if ((v2 & 0x40) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_50;
  }

LABEL_49:
  v21 = TSD::PathSourceArchive::ByteSizeLong(*(a1 + 72));
  v3 += v21 + ((9 * (__clz(v21 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v2 & 0x40) == 0)
  {
LABEL_17:
    if ((v2 & 0x80) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

LABEL_50:
  v3 += ((9 * (__clz(*(a1 + 80) | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 0x80) != 0)
  {
LABEL_18:
    v3 += ((9 * (__clz(*(a1 + 84) | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_19:
  if ((v2 & 0xFF00) != 0)
  {
    v10 = v3 + 9;
    if ((v2 & 0x100) == 0)
    {
      v10 = v3;
    }

    if ((v2 & 0x200) != 0)
    {
      v10 += 9;
    }

    if ((v2 & 0x400) != 0)
    {
      v10 += 9;
    }

    if ((v2 & 0x800) != 0)
    {
      v10 += 9;
    }

    if ((v2 & 0x1000) != 0)
    {
      v10 += 9;
    }

    if ((v2 & 0x2000) != 0)
    {
      v10 += 9;
    }

    if ((v2 & 0x4000) != 0)
    {
      v3 = v10 + 9;
    }

    else
    {
      v3 = v10;
    }

    if ((v2 & 0x8000) != 0)
    {
      v11 = *(a1 + 144);
      v12 = ((9 * (__clz(v11 | 1) ^ 0x1F) + 73) >> 6) + 1;
      if (v11 >= 0)
      {
        v13 = v12;
      }

      else
      {
        v13 = 11;
      }

      v3 += v13;
    }
  }

  if ((v2 & 0xFF0000) != 0)
  {
    if ((v2 & 0x10000) != 0)
    {
      v14 = *(a1 + 148);
      if (v14 < 0)
      {
        v15 = 11;
      }

      else
      {
        v15 = ((9 * (__clz(v14 | 1) ^ 0x1F) + 73) >> 6) + 1;
      }

      v3 += v15;
    }

    v22 = v3 + 10;
    if ((v2 & 0x20000) == 0)
    {
      v22 = v3;
    }

    if ((v2 & 0x40000) != 0)
    {
      v23 = *(a1 + 160);
      v24 = ((9 * (__clz(v23 | 1) ^ 0x1F) + 73) >> 6) + 2;
      if (v23 >= 0)
      {
        v25 = v24;
      }

      else
      {
        v25 = 12;
      }

      v22 += v25;
    }

    if ((v2 & 0x80000) != 0)
    {
      v26 = *(a1 + 164);
      v27 = ((9 * (__clz(v26 | 1) ^ 0x1F) + 73) >> 6) + 2;
      if (v26 >= 0)
      {
        v28 = v27;
      }

      else
      {
        v28 = 12;
      }

      v22 += v28;
    }

    if ((v2 & 0x100000) != 0)
    {
      v22 += 10;
    }

    if ((v2 & 0x200000) != 0)
    {
      v22 += ((9 * (__clz(*(a1 + 176) | 1) ^ 0x1F) + 73) >> 6) + 2;
    }

    if ((v2 & 0x400000) != 0)
    {
      v22 += 3;
    }

    if ((v2 & 0x800000) != 0)
    {
      v3 = v22 + 3;
    }

    else
    {
      v3 = v22;
    }
  }

  if (HIBYTE(v2))
  {
    v29 = v3 + 3;
    if ((v2 & 0x1000000) == 0)
    {
      v29 = v3;
    }

    if ((v2 & 0x2000000) != 0)
    {
      v29 += 3;
    }

    if ((v2 & 0x4000000) != 0)
    {
      v36 = *(a1 + 184);
      v37 = ((9 * (__clz(v36 | 1) ^ 0x1F) + 73) >> 6) + 2;
      if (v36 >= 0)
      {
        v38 = v37;
      }

      else
      {
        v38 = 12;
      }

      v29 += v38;
      if ((v2 & 0x8000000) == 0)
      {
LABEL_82:
        if ((v2 & 0x10000000) == 0)
        {
LABEL_84:
          if ((v2 & 0x20000000) != 0)
          {
            v29 += 3;
          }

          if ((v2 & 0x40000000) != 0)
          {
            v29 += 3;
          }

          if (v2 >= 0)
          {
            v3 = v29;
          }

          else
          {
            v3 = v29 + 3;
          }

          goto LABEL_91;
        }

LABEL_83:
        v29 += ((9 * (__clz(*(a1 + 192) | 1) ^ 0x1F) + 73) >> 6) + 2;
        goto LABEL_84;
      }
    }

    else if ((v2 & 0x8000000) == 0)
    {
      goto LABEL_82;
    }

    v29 += ((9 * (__clz(*(a1 + 188) | 1) ^ 0x1F) + 73) >> 6) + 2;
    if ((v2 & 0x10000000) == 0)
    {
      goto LABEL_84;
    }

    goto LABEL_83;
  }

LABEL_91:
  v30 = *(a1 + 20);
  if ((v30 & 7) != 0)
  {
    v31 = v3 + 10;
    if ((v30 & 1) == 0)
    {
      v31 = v3;
    }

    if ((v30 & 2) != 0)
    {
      v3 = v31 + 10;
    }

    else
    {
      v3 = v31;
    }

    if ((v30 & 4) != 0)
    {
      v32 = *(a1 + 216);
      v33 = ((9 * (__clz(v32 | 1) ^ 0x1F) + 73) >> 6) + 1;
      if (v32 >= 0)
      {
        v34 = v33;
      }

      else
      {
        v34 = 11;
      }

      v3 += v34;
    }
  }

  if (*(a1 + 8))
  {

    return MEMORY[0x2821EADD8](a1 + 8, v3, a1 + 24);
  }

  else
  {
    *(a1 + 24) = v3;
    return v3;
  }
}

uint64_t sub_275DECFDC(uint64_t a1, void *lpsrc)
{
  v4 = __dynamic_cast(lpsrc, MEMORY[0x277D80A98], &unk_2884D7DC0, 0);
  if (v4)
  {

    return sub_275DED084(a1, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, a1);
  }
}

uint64_t sub_275DED084(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 8);
  if (v4)
  {
    result = sub_275E22484((result + 8), (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  v5 = *(a2 + 16);
  if (v5)
  {
    if (v5)
    {
      *(v3 + 16) |= 1u;
      result = google::protobuf::internal::ArenaStringPtr::Set();
      if ((v5 & 2) == 0)
      {
LABEL_6:
        if ((v5 & 4) == 0)
        {
          goto LABEL_7;
        }

        goto LABEL_55;
      }
    }

    else if ((v5 & 2) == 0)
    {
      goto LABEL_6;
    }

    *(v3 + 16) |= 2u;
    result = google::protobuf::internal::ArenaStringPtr::Set();
    if ((v5 & 4) == 0)
    {
LABEL_7:
      if ((v5 & 8) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_56;
    }

LABEL_55:
    *(v3 + 16) |= 4u;
    result = google::protobuf::internal::ArenaStringPtr::Set();
    if ((v5 & 8) == 0)
    {
LABEL_8:
      if ((v5 & 0x10) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_64;
    }

LABEL_56:
    *(v3 + 16) |= 8u;
    v7 = *(v3 + 56);
    if (!v7)
    {
      v8 = *(v3 + 8);
      if (v8)
      {
        v8 = *(v8 & 0xFFFFFFFFFFFFFFFELL);
      }

      v7 = MEMORY[0x277C8F010](v8);
      *(v3 + 56) = v7;
    }

    if (*(a2 + 56))
    {
      v9 = *(a2 + 56);
    }

    else
    {
      v9 = MEMORY[0x277D809E8];
    }

    result = TSP::Color::MergeFrom(v7, v9);
    if ((v5 & 0x10) == 0)
    {
LABEL_9:
      if ((v5 & 0x20) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_72;
    }

LABEL_64:
    *(v3 + 16) |= 0x10u;
    v10 = *(v3 + 64);
    if (!v10)
    {
      v11 = *(v3 + 8);
      if (v11)
      {
        v11 = *(v11 & 0xFFFFFFFFFFFFFFFELL);
      }

      v10 = sub_275E1F5E0(v11);
      *(v3 + 64) = v10;
    }

    if (*(a2 + 64))
    {
      v12 = *(a2 + 64);
    }

    else
    {
      v12 = &unk_2812EAA50;
    }

    result = sub_275DE5C88(v10, v12);
    if ((v5 & 0x20) == 0)
    {
LABEL_10:
      if ((v5 & 0x40) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_80;
    }

LABEL_72:
    *(v3 + 16) |= 0x20u;
    v13 = *(v3 + 72);
    if (!v13)
    {
      v14 = *(v3 + 8);
      if (v14)
      {
        v14 = *(v14 & 0xFFFFFFFFFFFFFFFELL);
      }

      v13 = MEMORY[0x277C8EFB0](v14);
      *(v3 + 72) = v13;
    }

    if (*(a2 + 72))
    {
      v15 = *(a2 + 72);
    }

    else
    {
      v15 = MEMORY[0x277D804C8];
    }

    result = TSD::PathSourceArchive::MergeFrom(v13, v15);
    if ((v5 & 0x40) == 0)
    {
LABEL_11:
      if ((v5 & 0x80) == 0)
      {
LABEL_13:
        *(v3 + 16) |= v5;
        goto LABEL_14;
      }

LABEL_12:
      *(v3 + 84) = *(a2 + 84);
      goto LABEL_13;
    }

LABEL_80:
    *(v3 + 80) = *(a2 + 80);
    if ((v5 & 0x80) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

LABEL_14:
  if ((v5 & 0xFF00) == 0)
  {
    goto LABEL_25;
  }

  if ((v5 & 0x100) != 0)
  {
    *(v3 + 88) = *(a2 + 88);
    if ((v5 & 0x200) == 0)
    {
LABEL_17:
      if ((v5 & 0x400) == 0)
      {
        goto LABEL_18;
      }

      goto LABEL_84;
    }
  }

  else if ((v5 & 0x200) == 0)
  {
    goto LABEL_17;
  }

  *(v3 + 96) = *(a2 + 96);
  if ((v5 & 0x400) == 0)
  {
LABEL_18:
    if ((v5 & 0x800) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_85;
  }

LABEL_84:
  *(v3 + 104) = *(a2 + 104);
  if ((v5 & 0x800) == 0)
  {
LABEL_19:
    if ((v5 & 0x1000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_86;
  }

LABEL_85:
  *(v3 + 112) = *(a2 + 112);
  if ((v5 & 0x1000) == 0)
  {
LABEL_20:
    if ((v5 & 0x2000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_87;
  }

LABEL_86:
  *(v3 + 120) = *(a2 + 120);
  if ((v5 & 0x2000) == 0)
  {
LABEL_21:
    if ((v5 & 0x4000) == 0)
    {
      goto LABEL_22;
    }

LABEL_88:
    *(v3 + 136) = *(a2 + 136);
    if ((v5 & 0x8000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_23;
  }

LABEL_87:
  *(v3 + 128) = *(a2 + 128);
  if ((v5 & 0x4000) != 0)
  {
    goto LABEL_88;
  }

LABEL_22:
  if ((v5 & 0x8000) != 0)
  {
LABEL_23:
    *(v3 + 144) = *(a2 + 144);
  }

LABEL_24:
  *(v3 + 16) |= v5;
LABEL_25:
  if ((v5 & 0xFF0000) == 0)
  {
    goto LABEL_36;
  }

  if ((v5 & 0x10000) != 0)
  {
    *(v3 + 148) = *(a2 + 148);
    if ((v5 & 0x20000) == 0)
    {
LABEL_28:
      if ((v5 & 0x40000) == 0)
      {
        goto LABEL_29;
      }

      goto LABEL_92;
    }
  }

  else if ((v5 & 0x20000) == 0)
  {
    goto LABEL_28;
  }

  *(v3 + 152) = *(a2 + 152);
  if ((v5 & 0x40000) == 0)
  {
LABEL_29:
    if ((v5 & 0x80000) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_93;
  }

LABEL_92:
  *(v3 + 160) = *(a2 + 160);
  if ((v5 & 0x80000) == 0)
  {
LABEL_30:
    if ((v5 & 0x100000) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_94;
  }

LABEL_93:
  *(v3 + 164) = *(a2 + 164);
  if ((v5 & 0x100000) == 0)
  {
LABEL_31:
    if ((v5 & 0x200000) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_95;
  }

LABEL_94:
  *(v3 + 168) = *(a2 + 168);
  if ((v5 & 0x200000) == 0)
  {
LABEL_32:
    if ((v5 & 0x400000) == 0)
    {
      goto LABEL_33;
    }

LABEL_96:
    *(v3 + 180) = *(a2 + 180);
    if ((v5 & 0x800000) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_34;
  }

LABEL_95:
  *(v3 + 176) = *(a2 + 176);
  if ((v5 & 0x400000) != 0)
  {
    goto LABEL_96;
  }

LABEL_33:
  if ((v5 & 0x800000) != 0)
  {
LABEL_34:
    *(v3 + 181) = *(a2 + 181);
  }

LABEL_35:
  *(v3 + 16) |= v5;
LABEL_36:
  if (!HIBYTE(v5))
  {
    goto LABEL_46;
  }

  if ((v5 & 0x1000000) != 0)
  {
    *(v3 + 182) = *(a2 + 182);
    if ((v5 & 0x2000000) == 0)
    {
LABEL_39:
      if ((v5 & 0x4000000) == 0)
      {
        goto LABEL_40;
      }

      goto LABEL_103;
    }
  }

  else if ((v5 & 0x2000000) == 0)
  {
    goto LABEL_39;
  }

  *(v3 + 183) = *(a2 + 183);
  if ((v5 & 0x4000000) == 0)
  {
LABEL_40:
    if ((v5 & 0x8000000) == 0)
    {
      goto LABEL_41;
    }

    goto LABEL_104;
  }

LABEL_103:
  *(v3 + 184) = *(a2 + 184);
  if ((v5 & 0x8000000) == 0)
  {
LABEL_41:
    if ((v5 & 0x10000000) == 0)
    {
      goto LABEL_42;
    }

    goto LABEL_105;
  }

LABEL_104:
  *(v3 + 188) = *(a2 + 188);
  if ((v5 & 0x10000000) == 0)
  {
LABEL_42:
    if ((v5 & 0x20000000) == 0)
    {
      goto LABEL_43;
    }

    goto LABEL_106;
  }

LABEL_105:
  *(v3 + 192) = *(a2 + 192);
  if ((v5 & 0x20000000) == 0)
  {
LABEL_43:
    if ((v5 & 0x40000000) == 0)
    {
      goto LABEL_44;
    }

LABEL_107:
    *(v3 + 197) = *(a2 + 197);
    if ((v5 & 0x80000000) == 0)
    {
      goto LABEL_45;
    }

LABEL_108:
    *(v3 + 198) = *(a2 + 198);
    goto LABEL_45;
  }

LABEL_106:
  *(v3 + 196) = *(a2 + 196);
  if ((v5 & 0x40000000) != 0)
  {
    goto LABEL_107;
  }

LABEL_44:
  if ((v5 & 0x80000000) != 0)
  {
    goto LABEL_108;
  }

LABEL_45:
  *(v3 + 16) |= v5;
LABEL_46:
  v6 = *(a2 + 20);
  if ((v6 & 7) == 0)
  {
    return result;
  }

  if ((v6 & 1) == 0)
  {
    if ((v6 & 2) == 0)
    {
      goto LABEL_49;
    }

LABEL_99:
    *(v3 + 208) = *(a2 + 208);
    if ((v6 & 4) == 0)
    {
      goto LABEL_51;
    }

    goto LABEL_50;
  }

  *(v3 + 200) = *(a2 + 200);
  if ((v6 & 2) != 0)
  {
    goto LABEL_99;
  }

LABEL_49:
  if ((v6 & 4) != 0)
  {
LABEL_50:
    *(v3 + 216) = *(a2 + 216);
  }

LABEL_51:
  *(v3 + 20) |= v6;
  return result;
}

google::protobuf::UnknownFieldSet *sub_275DED49C(google::protobuf::UnknownFieldSet *result, google::protobuf::UnknownFieldSet *a2)
{
  if (a2 != result)
  {
    v4 = result;
    sub_275DEAF48(result);

    return sub_275DECFDC(v4, a2);
  }

  return result;
}

uint64_t sub_275DED4E8(uint64_t a1)
{
  v2 = *(a1 + 16);
  if ((v2 & 8) != 0)
  {
    result = TSP::Color::IsInitialized(*(a1 + 56));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 0x10) != 0)
  {
    result = sub_275DE5FF0(*(a1 + 64));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 0x20) == 0)
  {
    return 1;
  }

  result = TSD::PathSourceArchive::IsInitialized(*(a1 + 72));
  if (result)
  {
    return 1;
  }

  return result;
}

uint64_t sub_275DED580(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_2884D58B8;
  *(a1 + 8) = a2;
  *(a1 + 16) = 0;
  if (atomic_load_explicit(dword_2812E9F90, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(a1 + 24) = MEMORY[0x277D80A90];
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  return a1;
}

uint64_t sub_275DED5FC(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 != MEMORY[0x277D80A90])
  {
    if (*(v2 + 23) < 0)
    {
      operator delete(*v2);
    }

    MEMORY[0x277C8F960](v2, 0x1012C40EC159624);
  }

  if (a1 != &unk_2812EAD30)
  {
    v3 = *(a1 + 32);
    if (v3)
    {
      TSP::Reference::~Reference(v3);
      MEMORY[0x277C8F960]();
    }

    v4 = *(a1 + 40);
    if (v4)
    {
      v5 = sub_275DEAD8C(v4);
      MEMORY[0x277C8F960](v5, 0x10A1C408691C948);
    }
  }

  sub_275DE4968((a1 + 8));
  return a1;
}

void sub_275DED6BC(uint64_t a1)
{
  sub_275DED5FC(a1);

  JUMPOUT(0x277C8F960);
}

void *sub_275DED6FC()
{
  if (atomic_load_explicit(dword_2812E9F90, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &unk_2812EAD30;
}

google::protobuf::UnknownFieldSet *sub_275DED73C(google::protobuf::UnknownFieldSet *result)
{
  v1 = result;
  v2 = *(result + 4);
  if ((v2 & 7) == 0)
  {
    goto LABEL_6;
  }

  if ((v2 & 1) == 0)
  {
    if ((v2 & 2) == 0)
    {
      goto LABEL_4;
    }

    goto LABEL_16;
  }

  v5 = *(result + 3) & 0xFFFFFFFFFFFFFFFELL;
  if (*(v5 + 23) < 0)
  {
    **v5 = 0;
    *(v5 + 8) = 0;
    if ((v2 & 2) != 0)
    {
      goto LABEL_16;
    }

LABEL_4:
    if ((v2 & 4) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  *v5 = 0;
  *(v5 + 23) = 0;
  if ((v2 & 2) == 0)
  {
    goto LABEL_4;
  }

LABEL_16:
  result = TSP::Reference::Clear(*(result + 4));
  if ((v2 & 4) != 0)
  {
LABEL_5:
    result = sub_275DEAF48(*(v1 + 40));
  }

LABEL_6:
  if ((v2 & 0x18) != 0)
  {
    *(v1 + 56) = 0;
    *(v1 + 48) = 0;
  }

  v4 = *(v1 + 8);
  v3 = v1 + 8;
  *(v3 + 8) = 0;
  if (v4)
  {

    return sub_275E224D0(v3);
  }

  return result;
}

google::protobuf::internal *sub_275DED7F8(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v25 = a2;
  v5 = 0;
  if ((sub_275E221E8(a3, &v25, *(a3 + 92)) & 1) == 0)
  {
    while (1)
    {
      v7 = (v25 + 1);
      v8 = *v25;
      if ((*v25 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if ((*v7 & 0x80000000) == 0)
      {
        break;
      }

      TagFallback = google::protobuf::internal::ReadTagFallback(v25, (v9 - 128));
      v25 = TagFallback;
      if (!TagFallback)
      {
        goto LABEL_52;
      }

      v7 = TagFallback;
      v8 = v22;
LABEL_7:
      v10 = v8 >> 3;
      if (v8 >> 3 <= 2)
      {
        if (v10 != 1)
        {
          if (v10 == 2 && v8 == 18)
          {
            *(a1 + 16) |= 1u;
            google::protobuf::internal::ArenaStringPtr::Mutable();
            v15 = google::protobuf::internal::InlineGreedyStringParser();
            goto LABEL_44;
          }

          goto LABEL_37;
        }

        if (v8 != 10)
        {
          goto LABEL_37;
        }

        *(a1 + 16) |= 2u;
        v18 = *(a1 + 32);
        if (!v18)
        {
          v19 = *(a1 + 8);
          if (v19)
          {
            v19 = *(v19 & 0xFFFFFFFFFFFFFFFELL);
          }

          v18 = MEMORY[0x277C8F050](v19);
          *(a1 + 32) = v18;
          v7 = v25;
        }

        v15 = sub_275E5B9DC(a3, v18, v7);
LABEL_44:
        v25 = v15;
        if (!v15)
        {
          goto LABEL_52;
        }

        goto LABEL_45;
      }

      if (v10 == 3)
      {
        if (v8 == 25)
        {
          v5 |= 8u;
          *(a1 + 48) = *v7;
          v25 = (v7 + 8);
          goto LABEL_45;
        }

        goto LABEL_37;
      }

      if (v10 == 4)
      {
        if (v8 == 34)
        {
          *(a1 + 16) |= 4u;
          v16 = *(a1 + 40);
          if (!v16)
          {
            v17 = *(a1 + 8);
            if (v17)
            {
              v17 = *(v17 & 0xFFFFFFFFFFFFFFFELL);
            }

            v16 = sub_275E1FA84(v17);
            *(a1 + 40) = v16;
            v7 = v25;
          }

          v15 = sub_275E5BD1C(a3, v16, v7);
          goto LABEL_44;
        }

LABEL_37:
        if (v8)
        {
          v20 = (v8 & 7) == 4;
        }

        else
        {
          v20 = 1;
        }

        if (v20)
        {
          *(a3 + 80) = v8 - 1;
          goto LABEL_2;
        }

        if ((*(a1 + 8) & 1) == 0)
        {
          sub_275E22260((a1 + 8));
        }

        v15 = google::protobuf::internal::UnknownFieldParse();
        goto LABEL_44;
      }

      if (v10 != 5 || v8 != 40)
      {
        goto LABEL_37;
      }

      v5 |= 0x10u;
      v12 = (v7 + 1);
      LODWORD(v11) = *v7;
      if ((v11 & 0x80) == 0)
      {
        goto LABEL_15;
      }

      v13 = *v12;
      v11 = (v11 + (v13 << 7) - 128);
      if ((v13 & 0x80000000) == 0)
      {
        v12 = (v7 + 2);
LABEL_15:
        v25 = v12;
        *(a1 + 56) = v11;
        goto LABEL_45;
      }

      v23 = google::protobuf::internal::VarintParseSlow64(v7, v11);
      v25 = v23;
      *(a1 + 56) = v24;
      if (!v23)
      {
LABEL_52:
        v25 = 0;
        goto LABEL_2;
      }

LABEL_45:
      if (sub_275E221E8(a3, &v25, *(a3 + 92)))
      {
        goto LABEL_2;
      }
    }

    v7 = (v25 + 2);
LABEL_6:
    v25 = v7;
    goto LABEL_7;
  }

LABEL_2:
  *(a1 + 16) |= v5;
  return v25;
}

unsigned __int8 *sub_275DEDAA4(uint64_t a1, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v4 = a2;
  v6 = *(a1 + 16);
  if ((v6 & 2) != 0)
  {
    if (*a3 <= a2)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v7 = *(a1 + 32);
    *v4 = 10;
    v8 = *(v7 + 5);
    if (v8 > 0x7F)
    {
      v4[1] = v8 | 0x80;
      v10 = v8 >> 7;
      if (v8 >> 14)
      {
        v9 = v4 + 3;
        do
        {
          *(v9 - 1) = v10 | 0x80;
          v11 = v10 >> 7;
          ++v9;
          v12 = v10 >> 14;
          v10 >>= 7;
        }

        while (v12);
        *(v9 - 1) = v11;
      }

      else
      {
        v4[2] = v10;
        v9 = v4 + 3;
      }
    }

    else
    {
      v4[1] = v8;
      v9 = v4 + 2;
    }

    v4 = TSP::Reference::_InternalSerialize(v7, v9, a3);
    if ((v6 & 1) == 0)
    {
LABEL_3:
      if ((v6 & 8) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_18;
    }
  }

  else if ((v6 & 1) == 0)
  {
    goto LABEL_3;
  }

  v4 = sub_275DE5774(a3, 2, (*(a1 + 24) & 0xFFFFFFFFFFFFFFFELL), v4);
  if ((v6 & 8) == 0)
  {
LABEL_4:
    if ((v6 & 4) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_21;
  }

LABEL_18:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v13 = *(a1 + 48);
  *v4 = 25;
  *(v4 + 1) = v13;
  v4 += 9;
  if ((v6 & 4) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_40;
    }

    goto LABEL_31;
  }

LABEL_21:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v14 = *(a1 + 40);
  *v4 = 34;
  v15 = *(v14 + 24);
  if (v15 > 0x7F)
  {
    v4[1] = v15 | 0x80;
    v17 = v15 >> 7;
    if (v15 >> 14)
    {
      v16 = v4 + 3;
      do
      {
        *(v16 - 1) = v17 | 0x80;
        v18 = v17 >> 7;
        ++v16;
        v19 = v17 >> 14;
        v17 >>= 7;
      }

      while (v19);
      *(v16 - 1) = v18;
    }

    else
    {
      v4[2] = v17;
      v16 = v4 + 3;
    }
  }

  else
  {
    v4[1] = v15;
    v16 = v4 + 2;
  }

  v4 = sub_275DEBDB4(v14, v16, a3);
  if ((v6 & 0x10) != 0)
  {
LABEL_31:
    if (*a3 <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
    }

    v20 = *(a1 + 56);
    *v4 = 40;
    if (v20 > 0x7F)
    {
      v4[1] = v20 | 0x80;
      v21 = v20 >> 7;
      if (v20 >> 14)
      {
        v4 += 3;
        do
        {
          *(v4 - 1) = v21 | 0x80;
          v22 = v21 >> 7;
          ++v4;
          v23 = v21 >> 14;
          v21 >>= 7;
        }

        while (v23);
        *(v4 - 1) = v22;
      }

      else
      {
        v4[2] = v21;
        v4 += 3;
      }
    }

    else
    {
      v4[1] = v20;
      v4 += 2;
    }
  }

LABEL_40:
  v24 = *(a1 + 8);
  if ((v24 & 1) == 0)
  {
    return v4;
  }

  return MEMORY[0x2821EAC40]((v24 & 0xFFFFFFFFFFFFFFFELL) + 8, v4, a3);
}

uint64_t sub_275DEDD34(uint64_t a1)
{
  v1 = *(a1 + 16);
  if ((v1 & 1) == 0)
  {
    v2 = 0;
    if ((v1 & 4) == 0)
    {
      return v2;
    }

    goto LABEL_7;
  }

  v3 = *(a1 + 24) & 0xFFFFFFFFFFFFFFFELL;
  v4 = *(v3 + 23);
  v5 = *(v3 + 8);
  if ((v4 & 0x80u) == 0)
  {
    v5 = v4;
  }

  v2 = v5 + ((9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v1 & 4) != 0)
  {
LABEL_7:
    v6 = sub_275DECAE0(*(a1 + 40));
    v2 += v6 + ((9 * (__clz(v6 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  return v2;
}

uint64_t sub_275DEDDD4(uint64_t a1)
{
  if ((~*(a1 + 16) & 5) != 0)
  {
    v7 = sub_275DEDD34(a1);
  }

  else
  {
    v2 = *(a1 + 24) & 0xFFFFFFFFFFFFFFFELL;
    v3 = *(v2 + 23);
    v4 = *(v2 + 8);
    if ((v3 & 0x80u) == 0)
    {
      v5 = v3;
    }

    else
    {
      v5 = v4;
    }

    v6 = sub_275DECAE0(*(a1 + 40));
    v7 = v5 + v6 + ((9 * (__clz(v6 | 1) ^ 0x1F) + 73) >> 6) + ((9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6) + 2;
  }

  v8 = *(a1 + 16);
  if ((v8 & 2) != 0)
  {
    v9 = TSP::Reference::ByteSizeLong(*(a1 + 32));
    v7 += v9 + ((9 * (__clz(v9 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  if ((v8 & 0x18) != 0)
  {
    if ((v8 & 8) != 0)
    {
      v7 += 9;
    }

    if ((v8 & 0x10) != 0)
    {
      v10 = *(a1 + 56);
      if (v10 < 0)
      {
        v11 = 11;
      }

      else
      {
        v11 = ((9 * (__clz(v10 | 1) ^ 0x1F) + 73) >> 6) + 1;
      }

      v7 += v11;
    }
  }

  if (*(a1 + 8))
  {

    return MEMORY[0x2821EADD8](a1 + 8, v7, a1 + 20);
  }

  else
  {
    *(a1 + 20) = v7;
    return v7;
  }
}

uint64_t sub_275DEDF38(uint64_t a1, void *lpsrc)
{
  v4 = __dynamic_cast(lpsrc, MEMORY[0x277D80A98], &unk_2884D7DD8, 0);
  if (v4)
  {

    return sub_275DEDFE0(a1, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, a1);
  }
}

uint64_t sub_275DEDFE0(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 8);
  if (v4)
  {
    result = sub_275E22484((result + 8), (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  v5 = *(a2 + 16);
  if ((v5 & 0x1F) != 0)
  {
    if (v5)
    {
      *(v3 + 16) |= 1u;
      result = google::protobuf::internal::ArenaStringPtr::Set();
      if ((v5 & 2) == 0)
      {
LABEL_6:
        if ((v5 & 4) == 0)
        {
          goto LABEL_7;
        }

        goto LABEL_21;
      }
    }

    else if ((v5 & 2) == 0)
    {
      goto LABEL_6;
    }

    *(v3 + 16) |= 2u;
    v6 = *(v3 + 32);
    if (!v6)
    {
      v7 = *(v3 + 8);
      if (v7)
      {
        v7 = *(v7 & 0xFFFFFFFFFFFFFFFELL);
      }

      v6 = MEMORY[0x277C8F050](v7);
      *(v3 + 32) = v6;
    }

    if (*(a2 + 32))
    {
      v8 = *(a2 + 32);
    }

    else
    {
      v8 = MEMORY[0x277D80A18];
    }

    result = TSP::Reference::MergeFrom(v6, v8);
    if ((v5 & 4) == 0)
    {
LABEL_7:
      if ((v5 & 8) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_29;
    }

LABEL_21:
    *(v3 + 16) |= 4u;
    v9 = *(v3 + 40);
    if (!v9)
    {
      v10 = *(v3 + 8);
      if (v10)
      {
        v10 = *(v10 & 0xFFFFFFFFFFFFFFFELL);
      }

      v9 = sub_275E1FA84(v10);
      *(v3 + 40) = v9;
    }

    if (*(a2 + 40))
    {
      v11 = *(a2 + 40);
    }

    else
    {
      v11 = &unk_2812EAC50;
    }

    result = sub_275DED084(v9, v11);
    if ((v5 & 8) == 0)
    {
LABEL_8:
      if ((v5 & 0x10) == 0)
      {
LABEL_10:
        *(v3 + 16) |= v5;
        return result;
      }

LABEL_9:
      *(v3 + 56) = *(a2 + 56);
      goto LABEL_10;
    }

LABEL_29:
    *(v3 + 48) = *(a2 + 48);
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  return result;
}

google::protobuf::UnknownFieldSet *sub_275DEE134(google::protobuf::UnknownFieldSet *result, google::protobuf::UnknownFieldSet *a2)
{
  if (a2 != result)
  {
    v4 = result;
    sub_275DED73C(result);

    return sub_275DEDF38(v4, a2);
  }

  return result;
}

uint64_t sub_275DEE180(uint64_t a1)
{
  v1 = *(a1 + 16);
  if ((~v1 & 5) != 0)
  {
    return 0;
  }

  if ((v1 & 2) != 0)
  {
    result = TSP::Reference::IsInitialized(*(a1 + 32));
    if (!result)
    {
      return result;
    }

    v1 = *(a1 + 16);
  }

  if ((v1 & 4) == 0)
  {
    return 1;
  }

  result = sub_275DED4E8(*(a1 + 40));
  if (result)
  {
    return 1;
  }

  return result;
}

uint64_t sub_275DEE21C(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_2884D5968;
  *(a1 + 8) = a2;
  *(a1 + 16) = 0;
  if (atomic_load_explicit(dword_2812EA3B0, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(a1 + 32) = 0;
  *(a1 + 24) = 0;
  return a1;
}

uint64_t *sub_275DEE288(uint64_t *a1)
{
  if (a1 != &qword_2812EAD70 && a1[3])
  {
    v2 = MEMORY[0x277C8ECD0]();
    MEMORY[0x277C8F960](v2, 0x10A1C4014782234);
  }

  sub_275DE4968(a1 + 1);
  return a1;
}

void sub_275DEE2EC(uint64_t *a1)
{
  sub_275DEE288(a1);

  JUMPOUT(0x277C8F960);
}

uint64_t *sub_275DEE32C()
{
  if (atomic_load_explicit(dword_2812EA3B0, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &qword_2812EAD70;
}

google::protobuf::UnknownFieldSet *sub_275DEE36C(google::protobuf::UnknownFieldSet *result)
{
  v1 = result;
  if (*(result + 16))
  {
    result = TSWP::ShapeInfoArchive::Clear(*(result + 3));
  }

  v3 = *(v1 + 8);
  v2 = v1 + 8;
  *(v2 + 24) = 0;
  *(v2 + 8) = 0;
  if (v3)
  {

    return sub_275E224D0(v2);
  }

  return result;
}

google::protobuf::internal *sub_275DEE3CC(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v20 = a2;
  for (i = *(a3 + 92); (sub_275E221E8(a3, &v20, i) & 1) == 0; i = *(a3 + 92))
  {
    v6 = (v20 + 1);
    v7 = *v20;
    if ((*v20 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    v8 = v7 + (*v6 << 7);
    v7 = v8 - 128;
    if ((*v6 & 0x80000000) == 0)
    {
      v6 = (v20 + 2);
LABEL_6:
      v20 = v6;
      goto LABEL_7;
    }

    TagFallback = google::protobuf::internal::ReadTagFallback(v20, (v8 - 128));
    v20 = TagFallback;
    if (!TagFallback)
    {
      return 0;
    }

    v6 = TagFallback;
    v7 = v18;
LABEL_7:
    if (v7 >> 3 == 2)
    {
      if (v7 == 16)
      {
        v13 = (v6 + 1);
        v12 = *v6;
        if ((v12 & 0x8000000000000000) == 0)
        {
          goto LABEL_23;
        }

        v14 = *v13;
        v12 = (v14 << 7) + v12 - 128;
        if (v14 < 0)
        {
          v20 = google::protobuf::internal::VarintParseSlow64(v6, v12);
          if (!v20)
          {
            return 0;
          }
        }

        else
        {
          v13 = (v6 + 2);
LABEL_23:
          v20 = v13;
        }

        if (v12 > 4)
        {
          sub_275E5F6FC();
        }

        else
        {
          *(a1 + 16) |= 2u;
          *(a1 + 32) = v12;
        }

        continue;
      }
    }

    else if (v7 >> 3 == 1 && v7 == 10)
    {
      *(a1 + 16) |= 1u;
      v15 = *(a1 + 24);
      if (!v15)
      {
        v16 = *(a1 + 8);
        if (v16)
        {
          v16 = *(v16 & 0xFFFFFFFFFFFFFFFELL);
        }

        v15 = MEMORY[0x277C8F0D0](v16);
        *(a1 + 24) = v15;
        v6 = v20;
      }

      v11 = sub_275E5BDEC(a3, v15, v6);
      goto LABEL_31;
    }

    if (v7)
    {
      v10 = (v7 & 7) == 4;
    }

    else
    {
      v10 = 1;
    }

    if (v10)
    {
      *(a3 + 80) = v7 - 1;
      return v20;
    }

    if ((*(a1 + 8) & 1) == 0)
    {
      sub_275E22260((a1 + 8));
    }

    v11 = google::protobuf::internal::UnknownFieldParse();
LABEL_31:
    v20 = v11;
    if (!v11)
    {
      return 0;
    }
  }

  return v20;
}

unsigned __int8 *sub_275DEE59C(uint64_t a1, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
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
    v7 = *(v6 + 5);
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

    a2 = TSWP::ShapeInfoArchive::_InternalSerialize(v6, v8, a3);
  }

  if ((v5 & 2) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v12 = *(a1 + 32);
    *a2 = 16;
    if (v12 > 0x7F)
    {
      a2[1] = v12 | 0x80;
      v13 = v12 >> 7;
      if (v12 >> 14)
      {
        a2 += 3;
        do
        {
          *(a2 - 1) = v13 | 0x80;
          v14 = v13 >> 7;
          ++a2;
          v15 = v13 >> 14;
          v13 >>= 7;
        }

        while (v15);
        *(a2 - 1) = v14;
      }

      else
      {
        a2[2] = v13;
        a2 += 3;
      }
    }

    else
    {
      a2[1] = v12;
      a2 += 2;
    }
  }

  v16 = *(a1 + 8);
  if ((v16 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v16 & 0xFFFFFFFFFFFFFFFELL) + 8, a2, a3);
}

uint64_t sub_275DEE71C(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v4 = TSWP::ShapeInfoArchive::ByteSizeLong(*(a1 + 24));
    v3 = v4 + ((9 * (__clz(v4 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((*(a1 + 16) & 2) == 0)
    {
      goto LABEL_9;
    }

LABEL_5:
    v5 = *(a1 + 32);
    if (v5 < 0)
    {
      v6 = 11;
    }

    else
    {
      v6 = ((9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    v3 += v6;
    goto LABEL_9;
  }

  v3 = 0;
  if ((v2 & 2) != 0)
  {
    goto LABEL_5;
  }

LABEL_9:
  if (*(a1 + 8))
  {

    return MEMORY[0x2821EADD8](a1 + 8, v3, a1 + 20);
  }

  else
  {
    *(a1 + 20) = v3;
    return v3;
  }
}

uint64_t sub_275DEE7E4(uint64_t a1, void *lpsrc)
{
  v4 = __dynamic_cast(lpsrc, MEMORY[0x277D80A98], &unk_2884D7DF0, 0);
  if (v4)
  {

    return sub_275DEE88C(a1, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, a1);
  }
}

uint64_t sub_275DEE88C(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 8);
  if (v4)
  {
    result = sub_275E22484((result + 8), (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
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

        v6 = MEMORY[0x277C8F0D0](v7);
        *(v3 + 24) = v6;
      }

      if (*(a2 + 24))
      {
        v8 = *(a2 + 24);
      }

      else
      {
        v8 = MEMORY[0x277D81070];
      }

      result = TSWP::ShapeInfoArchive::MergeFrom(v6, v8);
    }

    if ((v5 & 2) != 0)
    {
      *(v3 + 32) = *(a2 + 32);
    }

    *(v3 + 16) |= v5;
  }

  return result;
}

google::protobuf::UnknownFieldSet *sub_275DEE940(google::protobuf::UnknownFieldSet *result, google::protobuf::UnknownFieldSet *a2)
{
  if (a2 != result)
  {
    v4 = result;
    sub_275DEE36C(result);

    return sub_275DEE7E4(v4, a2);
  }

  return result;
}

uint64_t sub_275DEE98C(uint64_t a1)
{
  if (*(a1 + 16))
  {
    return MEMORY[0x2821EBC48](*(a1 + 24));
  }

  else
  {
    return 0;
  }
}

void *sub_275DEE9DC(void *a1, uint64_t a2)
{
  *a1 = &unk_2884D5A18;
  a1[1] = a2;
  a1[2] = 0;
  if (atomic_load_explicit(dword_2812EA320, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  a1[3] = 0;
  return a1;
}

uint64_t *sub_275DEEA44(uint64_t *a1)
{
  if (a1 != &qword_2812EAD98)
  {
    v2 = a1[3];
    if (v2)
    {
      TSP::Reference::~Reference(v2);
      MEMORY[0x277C8F960]();
    }
  }

  sub_275DE4968(a1 + 1);
  return a1;
}

void sub_275DEEAA8(uint64_t *a1)
{
  sub_275DEEA44(a1);

  JUMPOUT(0x277C8F960);
}

uint64_t *sub_275DEEAE8()
{
  if (atomic_load_explicit(dword_2812EA320, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &qword_2812EAD98;
}

google::protobuf::UnknownFieldSet *sub_275DEEB28(google::protobuf::UnknownFieldSet *result)
{
  v1 = result;
  if (*(result + 16))
  {
    result = TSP::Reference::Clear(*(result + 3));
  }

  v3 = *(v1 + 8);
  v2 = v1 + 8;
  *(v2 + 8) = 0;
  if (v3)
  {

    return sub_275E224D0(v2);
  }

  return result;
}

google::protobuf::internal *sub_275DEEB84(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v16 = a2;
  for (i = *(a3 + 92); (sub_275E221E8(a3, &v16, i) & 1) == 0; i = *(a3 + 92))
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

        v11 = MEMORY[0x277C8F050](v12);
        *(a1 + 24) = v11;
        v6 = v16;
      }

      v10 = sub_275E5B9DC(a3, v11, v6);
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
        sub_275E22260((a1 + 8));
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

unsigned __int8 *sub_275DEECCC(uint64_t a1, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  if (*(a1 + 16))
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v5 = *(a1 + 24);
    *a2 = 10;
    v6 = *(v5 + 5);
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

    a2 = TSP::Reference::_InternalSerialize(v5, v7, a3);
  }

  v11 = *(a1 + 8);
  if ((v11 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v11 & 0xFFFFFFFFFFFFFFFELL) + 8, a2, a3);
}

uint64_t sub_275DEEDBC(uint64_t a1)
{
  if (*(a1 + 16))
  {
    v3 = TSP::Reference::ByteSizeLong(*(a1 + 24));
    v2 = v3 + ((9 * (__clz(v3 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  else
  {
    v2 = 0;
  }

  if (*(a1 + 8))
  {

    return MEMORY[0x2821EADD8](a1 + 8, v2, a1 + 20);
  }

  else
  {
    *(a1 + 20) = v2;
    return v2;
  }
}

uint64_t sub_275DEEE48(uint64_t a1, void *lpsrc)
{
  v4 = __dynamic_cast(lpsrc, MEMORY[0x277D80A98], &unk_2884D7E08, 0);
  if (v4)
  {

    return sub_275DEEEF0(a1, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, a1);
  }
}

uint64_t sub_275DEEEF0(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 8);
  if (v4)
  {
    result = sub_275E22484((result + 8), (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
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

      v6 = MEMORY[0x277C8F050](v7);
      *(v3 + 24) = v6;
      v5 = *(a2 + 24);
    }

    if (v5)
    {
      v8 = v5;
    }

    else
    {
      v8 = MEMORY[0x277D80A18];
    }

    return TSP::Reference::MergeFrom(v6, v8);
  }

  return result;
}

google::protobuf::UnknownFieldSet *sub_275DEEF98(google::protobuf::UnknownFieldSet *result, google::protobuf::UnknownFieldSet *a2)
{
  if (a2 != result)
  {
    v4 = result;
    sub_275DEEB28(result);

    return sub_275DEEE48(v4, a2);
  }

  return result;
}

uint64_t sub_275DEEFE4(uint64_t a1)
{
  if (*(a1 + 16))
  {
    return TSP::Reference::IsInitialized(*(a1 + 24));
  }

  else
  {
    return 0;
  }
}

void *sub_275DEF034(void *a1, uint64_t a2)
{
  *a1 = &unk_2884D5AC8;
  a1[1] = a2;
  a1[3] = a2;
  a1[2] = 0;
  a1[4] = 0;
  a1[5] = 0;
  if (atomic_load_explicit(dword_2812EA0B8, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  a1[6] = 0;
  return a1;
}

void *sub_275DEF0C4(void *a1)
{
  if (a1 != qword_2812EADB8)
  {
    v2 = a1[6];
    if (v2)
    {
      TSP::Reference::~Reference(v2);
      MEMORY[0x277C8F960]();
    }
  }

  sub_275DE4968(a1 + 1);
  sub_275E22520(a1 + 3);
  return a1;
}

void sub_275DEF134(void *a1)
{
  sub_275DEF0C4(a1);

  JUMPOUT(0x277C8F960);
}

void *sub_275DEF174()
{
  if (atomic_load_explicit(dword_2812EA0B8, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &unk_2812EADB8;
}

google::protobuf::UnknownFieldSet *sub_275DEF1B4(google::protobuf::UnknownFieldSet *result)
{
  v1 = result;
  v2 = *(result + 8);
  if (v2 >= 1)
  {
    v3 = (*(result + 5) + 8);
    do
    {
      v4 = *v3++;
      result = TSS::StylesheetArchive_IdentifiedStyleEntry::Clear(v4);
      --v2;
    }

    while (v2);
    *(v1 + 32) = 0;
  }

  if (*(v1 + 16))
  {
    result = TSP::Reference::Clear(*(v1 + 48));
  }

  v6 = *(v1 + 8);
  v5 = v1 + 8;
  *(v5 + 8) = 0;
  if (v6)
  {

    return sub_275E224D0(v5);
  }

  return result;
}

google::protobuf::internal *sub_275DEF244(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v25 = a2;
  for (i = *(a3 + 92); ; i = *(a3 + 92))
  {
    if (sub_275E221E8(a3, &v25, i))
    {
      return v25;
    }

    v6 = (v25 + 1);
    v7 = *v25;
    if ((*v25 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    v8 = v7 + (*v6 << 7);
    v7 = v8 - 128;
    if ((*v6 & 0x80000000) == 0)
    {
      v6 = (v25 + 2);
LABEL_6:
      v25 = v6;
      goto LABEL_7;
    }

    TagFallback = google::protobuf::internal::ReadTagFallback(v25, (v8 - 128));
    v25 = TagFallback;
    if (!TagFallback)
    {
      return 0;
    }

    v6 = TagFallback;
    v7 = v23;
LABEL_7:
    if (v7 >> 3 != 2)
    {
      break;
    }

    if (v7 != 18)
    {
      goto LABEL_12;
    }

    *(a1 + 16) |= 1u;
    v12 = *(a1 + 48);
    if (!v12)
    {
      v13 = *(a1 + 8);
      if (v13)
      {
        v13 = *(v13 & 0xFFFFFFFFFFFFFFFELL);
      }

      v12 = MEMORY[0x277C8F050](v13);
      *(a1 + 48) = v12;
      v6 = v25;
    }

    v11 = sub_275E5B9DC(a3, v12, v6);
LABEL_25:
    v25 = v11;
    if (!v11)
    {
      return 0;
    }

LABEL_26:
    ;
  }

  if (v7 >> 3 == 1 && v7 == 10)
  {
    v14 = v6 - 1;
    while (1)
    {
      v15 = (v14 + 1);
      v25 = (v14 + 1);
      v16 = *(a1 + 40);
      if (!v16)
      {
        goto LABEL_29;
      }

      v21 = *(a1 + 32);
      v17 = *v16;
      if (v21 < *v16)
      {
        *(a1 + 32) = v21 + 1;
        v18 = *&v16[2 * v21 + 2];
        goto LABEL_33;
      }

      if (v17 == *(a1 + 36))
      {
LABEL_29:
        google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 24));
        v16 = *(a1 + 40);
        v17 = *v16;
      }

      *v16 = v17 + 1;
      v18 = MEMORY[0x277C8F080](*(a1 + 24));
      v19 = *(a1 + 32);
      v20 = *(a1 + 40) + 8 * v19;
      *(a1 + 32) = v19 + 1;
      *(v20 + 8) = v18;
      v15 = v25;
LABEL_33:
      v14 = sub_275E5BEBC(a3, v18, v15);
      v25 = v14;
      if (!v14)
      {
        return 0;
      }

      if (*a3 <= v14 || *v14 != 10)
      {
        goto LABEL_26;
      }
    }
  }

LABEL_12:
  if (v7)
  {
    v10 = (v7 & 7) == 4;
  }

  else
  {
    v10 = 1;
  }

  if (!v10)
  {
    if ((*(a1 + 8) & 1) == 0)
    {
      sub_275E22260((a1 + 8));
    }

    v11 = google::protobuf::internal::UnknownFieldParse();
    goto LABEL_25;
  }

  *(a3 + 80) = v7 - 1;
  return v25;
}

unsigned __int8 *sub_275DEF468(uint64_t a1, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v5 = *(a1 + 32);
  if (v5)
  {
    for (i = 0; i != v5; ++i)
    {
      if (*a3 <= a2)
      {
        a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      }

      v7 = *(*(a1 + 40) + 8 * i + 8);
      *a2 = 10;
      v8 = *(v7 + 5);
      if (v8 > 0x7F)
      {
        a2[1] = v8 | 0x80;
        v10 = v8 >> 7;
        if (v8 >> 14)
        {
          v9 = a2 + 3;
          do
          {
            *(v9 - 1) = v10 | 0x80;
            v11 = v10 >> 7;
            ++v9;
            v12 = v10 >> 14;
            v10 >>= 7;
          }

          while (v12);
          *(v9 - 1) = v11;
        }

        else
        {
          a2[2] = v10;
          v9 = a2 + 3;
        }
      }

      else
      {
        a2[1] = v8;
        v9 = a2 + 2;
      }

      a2 = TSS::StylesheetArchive_IdentifiedStyleEntry::_InternalSerialize(v7, v9, a3);
    }
  }

  if (*(a1 + 16))
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v13 = *(a1 + 48);
    *a2 = 18;
    v14 = *(v13 + 5);
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

    a2 = TSP::Reference::_InternalSerialize(v13, v15, a3);
  }

  v19 = *(a1 + 8);
  if ((v19 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v19 & 0xFFFFFFFFFFFFFFFELL) + 8, a2, a3);
}

uint64_t sub_275DEF624(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  if (v3)
  {
    v4 = (v3 + 8);
  }

  else
  {
    v4 = 0;
  }

  if (v2)
  {
    v5 = 8 * v2;
    do
    {
      v6 = *v4++;
      v7 = TSS::StylesheetArchive_IdentifiedStyleEntry::ByteSizeLong(v6);
      v2 += v7 + ((9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6);
      v5 -= 8;
    }

    while (v5);
  }

  else
  {
    v2 = 0;
  }

  if (*(a1 + 16))
  {
    v8 = TSP::Reference::ByteSizeLong(*(a1 + 48));
    v2 += v8 + ((9 * (__clz(v8 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  if (*(a1 + 8))
  {

    return MEMORY[0x2821EADD8](a1 + 8, v2, a1 + 20);
  }

  else
  {
    *(a1 + 20) = v2;
    return v2;
  }
}

uint64_t sub_275DEF710(uint64_t a1, void *lpsrc)
{
  v4 = __dynamic_cast(lpsrc, MEMORY[0x277D80A98], &unk_2884D7E20, 0);
  if (v4)
  {

    return sub_275DEF7B8(a1, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, a1);
  }
}

uint64_t sub_275DEF7B8(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 8);
  if (v4)
  {
    result = sub_275E22484((result + 8), (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  v5 = *(a2 + 32);
  if (v5)
  {
    v6 = *(a2 + 40);
    v7 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((v3 + 24));
    result = sub_275E225A4((v3 + 24), v7, (v6 + 8), v5, **(v3 + 40) - *(v3 + 32));
    v8 = *(v3 + 32) + v5;
    *(v3 + 32) = v8;
    v9 = *(v3 + 40);
    if (*v9 < v8)
    {
      *v9 = v8;
    }
  }

  if (*(a2 + 16))
  {
    v10 = *(a2 + 48);
    *(v3 + 16) |= 1u;
    v11 = *(v3 + 48);
    if (!v11)
    {
      v12 = *(v3 + 8);
      if (v12)
      {
        v12 = *(v12 & 0xFFFFFFFFFFFFFFFELL);
      }

      v11 = MEMORY[0x277C8F050](v12);
      *(v3 + 48) = v11;
      v10 = *(a2 + 48);
    }

    if (v10)
    {
      v13 = v10;
    }

    else
    {
      v13 = MEMORY[0x277D80A18];
    }

    return TSP::Reference::MergeFrom(v11, v13);
  }

  return result;
}

google::protobuf::UnknownFieldSet *sub_275DEF8C8(google::protobuf::UnknownFieldSet *result, google::protobuf::UnknownFieldSet *a2)
{
  if (a2 != result)
  {
    v4 = result;
    sub_275DEF1B4(result);

    return sub_275DEF710(v4, a2);
  }

  return result;
}

uint64_t sub_275DEF914(uint64_t a1)
{
  v2 = *(a1 + 32);
  while (v2 >= 1)
  {
    v3 = v2 - 1;
    IsInitialized = TSS::StylesheetArchive_IdentifiedStyleEntry::IsInitialized(*(*(a1 + 40) + 8 * v2));
    v2 = v3;
    if ((IsInitialized & 1) == 0)
    {
      return 0;
    }
  }

  if ((*(a1 + 16) & 1) == 0)
  {
    return 1;
  }

  result = TSP::Reference::IsInitialized(*(a1 + 48));
  if (result)
  {
    return 1;
  }

  return result;
}

void *sub_275DEF9B0(void *a1, uint64_t a2)
{
  *a1 = &unk_2884D5B78;
  a1[1] = a2;
  a1[3] = a2;
  a1[2] = 0;
  a1[4] = 0;
  a1[5] = 0;
  if (atomic_load_explicit(dword_2812EA0E0, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  a1[6] = MEMORY[0x277D80A90];
  a1[7] = 0;
  return a1;
}

void *sub_275DEFA48(void *a1)
{
  v2 = a1[6];
  if (v2 != MEMORY[0x277D80A90])
  {
    if (*(v2 + 23) < 0)
    {
      operator delete(*v2);
    }

    MEMORY[0x277C8F960](v2, 0x1012C40EC159624);
  }

  if (a1 != qword_2812EADF0)
  {
    v3 = a1[7];
    if (v3)
    {
      TSP::Reference::~Reference(v3);
      MEMORY[0x277C8F960]();
    }
  }

  sub_275DE4968(a1 + 1);
  sub_275E22664(a1 + 3);
  return a1;
}

void sub_275DEFAF4(void *a1)
{
  sub_275DEFA48(a1);

  JUMPOUT(0x277C8F960);
}

void *sub_275DEFB34()
{
  if (atomic_load_explicit(dword_2812EA0E0, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &unk_2812EADF0;
}

google::protobuf::UnknownFieldSet *sub_275DEFB74(google::protobuf::UnknownFieldSet *result)
{
  v1 = result;
  v2 = *(result + 8);
  if (v2 >= 1)
  {
    v3 = (*(result + 5) + 8);
    do
    {
      v4 = *v3++;
      result = TSP::Reference::Clear(v4);
      --v2;
    }

    while (v2);
    *(v1 + 32) = 0;
  }

  v5 = *(v1 + 16);
  if ((v5 & 3) != 0)
  {
    if ((v5 & 1) == 0)
    {
      goto LABEL_9;
    }

    v6 = *(v1 + 48) & 0xFFFFFFFFFFFFFFFELL;
    if ((*(v6 + 23) & 0x80000000) == 0)
    {
      *v6 = 0;
      *(v6 + 23) = 0;
LABEL_9:
      if ((v5 & 2) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_10;
    }

    **v6 = 0;
    *(v6 + 8) = 0;
    if ((v5 & 2) != 0)
    {
LABEL_10:
      result = TSP::Reference::Clear(*(v1 + 56));
    }
  }

LABEL_11:
  v8 = *(v1 + 8);
  v7 = v1 + 8;
  *(v7 + 8) = 0;
  if (v8)
  {

    return sub_275E224D0(v7);
  }

  return result;
}

google::protobuf::internal *sub_275DEFC3C(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v26 = a2;
  for (i = *(a3 + 92); ; i = *(a3 + 92))
  {
    if (sub_275E221E8(a3, &v26, i))
    {
      return v26;
    }

    v6 = (v26 + 1);
    v7 = *v26;
    if ((*v26 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    v8 = v7 + (*v6 << 7);
    v7 = v8 - 128;
    if ((*v6 & 0x80000000) == 0)
    {
      v6 = (v26 + 2);
LABEL_6:
      v26 = v6;
      goto LABEL_7;
    }

    TagFallback = google::protobuf::internal::ReadTagFallback(v26, (v8 - 128));
    v26 = TagFallback;
    if (!TagFallback)
    {
      return 0;
    }

    v6 = TagFallback;
    v7 = v24;
LABEL_7:
    v9 = v7 >> 3;
    if (v7 >> 3 == 3)
    {
      if (v7 != 26)
      {
        goto LABEL_13;
      }

      v15 = v6 - 1;
      while (1)
      {
        v16 = (v15 + 1);
        v26 = (v15 + 1);
        v17 = *(a1 + 40);
        if (!v17)
        {
          goto LABEL_29;
        }

        v22 = *(a1 + 32);
        v18 = *v17;
        if (v22 < *v17)
        {
          *(a1 + 32) = v22 + 1;
          v19 = *&v17[2 * v22 + 2];
          goto LABEL_33;
        }

        if (v18 == *(a1 + 36))
        {
LABEL_29:
          google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 24));
          v17 = *(a1 + 40);
          v18 = *v17;
        }

        *v17 = v18 + 1;
        v19 = MEMORY[0x277C8F050](*(a1 + 24));
        v20 = *(a1 + 32);
        v21 = *(a1 + 40) + 8 * v20;
        *(a1 + 32) = v20 + 1;
        *(v21 + 8) = v19;
        v16 = v26;
LABEL_33:
        v15 = sub_275E5B9DC(a3, v19, v16);
        v26 = v15;
        if (!v15)
        {
          return 0;
        }

        if (*a3 <= v15 || *v15 != 26)
        {
          goto LABEL_41;
        }
      }
    }

    if (v9 != 2)
    {
      break;
    }

    if (v7 != 18)
    {
      goto LABEL_13;
    }

    *(a1 + 16) |= 2u;
    v13 = *(a1 + 56);
    if (!v13)
    {
      v14 = *(a1 + 8);
      if (v14)
      {
        v14 = *(v14 & 0xFFFFFFFFFFFFFFFELL);
      }

      v13 = MEMORY[0x277C8F050](v14);
      *(a1 + 56) = v13;
      v6 = v26;
    }

    v12 = sub_275E5B9DC(a3, v13, v6);
LABEL_40:
    v26 = v12;
    if (!v12)
    {
      return 0;
    }

LABEL_41:
    ;
  }

  if (v9 == 1 && v7 == 10)
  {
    *(a1 + 16) |= 1u;
    google::protobuf::internal::ArenaStringPtr::Mutable();
    v12 = google::protobuf::internal::InlineGreedyStringParser();
    goto LABEL_40;
  }

LABEL_13:
  if (v7)
  {
    v11 = (v7 & 7) == 4;
  }

  else
  {
    v11 = 1;
  }

  if (!v11)
  {
    if ((*(a1 + 8) & 1) == 0)
    {
      sub_275E22260((a1 + 8));
    }

    v12 = google::protobuf::internal::UnknownFieldParse();
    goto LABEL_40;
  }

  *(a3 + 80) = v7 - 1;
  return v26;
}

unsigned __int8 *sub_275DEFEAC(uint64_t a1, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v4 = a2;
  v6 = *(a1 + 16);
  if (v6)
  {
    v4 = sub_275DE5774(a3, 1, (*(a1 + 48) & 0xFFFFFFFFFFFFFFFELL), a2);
  }

  if ((v6 & 2) != 0)
  {
    if (*a3 <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
    }

    v7 = *(a1 + 56);
    *v4 = 18;
    v8 = *(v7 + 5);
    if (v8 > 0x7F)
    {
      v4[1] = v8 | 0x80;
      v10 = v8 >> 7;
      if (v8 >> 14)
      {
        v9 = v4 + 3;
        do
        {
          *(v9 - 1) = v10 | 0x80;
          v11 = v10 >> 7;
          ++v9;
          v12 = v10 >> 14;
          v10 >>= 7;
        }

        while (v12);
        *(v9 - 1) = v11;
      }

      else
      {
        v4[2] = v10;
        v9 = v4 + 3;
      }
    }

    else
    {
      v4[1] = v8;
      v9 = v4 + 2;
    }

    v4 = TSP::Reference::_InternalSerialize(v7, v9, a3);
  }

  v13 = *(a1 + 32);
  if (v13)
  {
    for (i = 0; i != v13; ++i)
    {
      if (*a3 <= v4)
      {
        v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
      }

      v15 = *(*(a1 + 40) + 8 * i + 8);
      *v4 = 26;
      v16 = *(v15 + 5);
      if (v16 > 0x7F)
      {
        v4[1] = v16 | 0x80;
        v18 = v16 >> 7;
        if (v16 >> 14)
        {
          v17 = v4 + 3;
          do
          {
            *(v17 - 1) = v18 | 0x80;
            v19 = v18 >> 7;
            ++v17;
            v20 = v18 >> 14;
            v18 >>= 7;
          }

          while (v20);
          *(v17 - 1) = v19;
        }

        else
        {
          v4[2] = v18;
          v17 = v4 + 3;
        }
      }

      else
      {
        v4[1] = v16;
        v17 = v4 + 2;
      }

      v4 = TSP::Reference::_InternalSerialize(v15, v17, a3);
    }
  }

  v21 = *(a1 + 8);
  if ((v21 & 1) == 0)
  {
    return v4;
  }

  return MEMORY[0x2821EAC40]((v21 & 0xFFFFFFFFFFFFFFFELL) + 8, v4, a3);
}

uint64_t sub_275DF0094(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  if (v3)
  {
    v4 = (v3 + 8);
  }

  else
  {
    v4 = 0;
  }

  if (v2)
  {
    v5 = 8 * v2;
    do
    {
      v6 = *v4++;
      v7 = TSP::Reference::ByteSizeLong(v6);
      v2 += v7 + ((9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6);
      v5 -= 8;
    }

    while (v5);
  }

  else
  {
    v2 = 0;
  }

  v8 = *(a1 + 16);
  if ((v8 & 3) != 0)
  {
    if (v8)
    {
      v9 = *(a1 + 48) & 0xFFFFFFFFFFFFFFFELL;
      v10 = *(v9 + 23);
      v11 = *(v9 + 8);
      if ((v10 & 0x80u) == 0)
      {
        v11 = v10;
      }

      v2 += v11 + ((9 * (__clz(v11 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    if ((v8 & 2) != 0)
    {
      v12 = TSP::Reference::ByteSizeLong(*(a1 + 56));
      v2 += v12 + ((9 * (__clz(v12 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }
  }

  if (*(a1 + 8))
  {

    return MEMORY[0x2821EADD8](a1 + 8, v2, a1 + 20);
  }

  else
  {
    *(a1 + 20) = v2;
    return v2;
  }
}

uint64_t sub_275DF01CC(uint64_t a1, void *lpsrc)
{
  v4 = __dynamic_cast(lpsrc, MEMORY[0x277D80A98], &unk_2884D7E38, 0);
  if (v4)
  {

    return sub_275DF0274(a1, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, a1);
  }
}

uint64_t sub_275DF0274(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 8);
  if (v4)
  {
    result = sub_275E22484((result + 8), (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  v5 = *(a2 + 32);
  if (v5)
  {
    v6 = *(a2 + 40);
    v7 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((v3 + 24));
    result = sub_275E226E8((v3 + 24), v7, (v6 + 8), v5, **(v3 + 40) - *(v3 + 32));
    v8 = *(v3 + 32) + v5;
    *(v3 + 32) = v8;
    v9 = *(v3 + 40);
    if (*v9 < v8)
    {
      *v9 = v8;
    }
  }

  v10 = *(a2 + 16);
  if ((v10 & 3) != 0)
  {
    if (v10)
    {
      *(v3 + 16) |= 1u;
      result = google::protobuf::internal::ArenaStringPtr::Set();
    }

    if ((v10 & 2) != 0)
    {
      *(v3 + 16) |= 2u;
      v11 = *(v3 + 56);
      if (!v11)
      {
        v12 = *(v3 + 8);
        if (v12)
        {
          v12 = *(v12 & 0xFFFFFFFFFFFFFFFELL);
        }

        v11 = MEMORY[0x277C8F050](v12);
        *(v3 + 56) = v11;
      }

      if (*(a2 + 56))
      {
        v13 = *(a2 + 56);
      }

      else
      {
        v13 = MEMORY[0x277D80A18];
      }

      return TSP::Reference::MergeFrom(v11, v13);
    }
  }

  return result;
}

google::protobuf::UnknownFieldSet *sub_275DF03BC(google::protobuf::UnknownFieldSet *result, google::protobuf::UnknownFieldSet *a2)
{
  if (a2 != result)
  {
    v4 = result;
    sub_275DEFB74(result);

    return sub_275DF01CC(v4, a2);
  }

  return result;
}

uint64_t sub_275DF0408(uint64_t a1)
{
  v2 = *(a1 + 32);
  while (v2 >= 1)
  {
    v3 = v2 - 1;
    IsInitialized = TSP::Reference::IsInitialized(*(*(a1 + 40) + 8 * v2));
    v2 = v3;
    if ((IsInitialized & 1) == 0)
    {
      return 0;
    }
  }

  if ((*(a1 + 16) & 2) == 0)
  {
    return 1;
  }

  result = TSP::Reference::IsInitialized(*(a1 + 56));
  if (result)
  {
    return 1;
  }

  return result;
}

void *sub_275DF04A4(void *a1, uint64_t a2)
{
  *a1 = &unk_2884D5C28;
  a1[1] = a2;
  a1[2] = 0;
  if (atomic_load_explicit(dword_2812EA650, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  a1[3] = MEMORY[0x277D80A90];
  a1[4] = 0;
  return a1;
}

void *sub_275DF0514(void *a1)
{
  v2 = a1[3];
  if (v2 != MEMORY[0x277D80A90])
  {
    if (*(v2 + 23) < 0)
    {
      operator delete(*v2);
    }

    MEMORY[0x277C8F960](v2, 0x1012C40EC159624);
  }

  if (a1 != qword_2812EAE30)
  {
    v3 = a1[4];
    if (v3)
    {
      TSP::Reference::~Reference(v3);
      MEMORY[0x277C8F960]();
    }
  }

  sub_275DE4968(a1 + 1);
  return a1;
}

void sub_275DF05B4(void *a1)
{
  sub_275DF0514(a1);

  JUMPOUT(0x277C8F960);
}

google::protobuf::UnknownFieldSet *sub_275DF05F4(google::protobuf::UnknownFieldSet *result)
{
  v1 = result;
  v2 = *(result + 4);
  if ((v2 & 3) != 0)
  {
    if ((v2 & 1) == 0)
    {
      goto LABEL_5;
    }

    v3 = *(result + 3) & 0xFFFFFFFFFFFFFFFELL;
    if ((*(v3 + 23) & 0x80000000) == 0)
    {
      *v3 = 0;
      *(v3 + 23) = 0;
LABEL_5:
      if ((v2 & 2) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }

    **v3 = 0;
    *(v3 + 8) = 0;
    if ((v2 & 2) != 0)
    {
LABEL_6:
      result = TSP::Reference::Clear(*(result + 4));
    }
  }

LABEL_7:
  v5 = *(v1 + 8);
  v4 = v1 + 8;
  *(v4 + 8) = 0;
  if (v5)
  {

    return sub_275E224D0(v4);
  }

  return result;
}

google::protobuf::internal *sub_275DF0688(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v17 = a2;
  for (i = *(a3 + 92); (sub_275E221E8(a3, &v17, i) & 1) == 0; i = *(a3 + 92))
  {
    v6 = (v17 + 1);
    v7 = *v17;
    if ((*v17 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    v8 = v7 + (*v6 << 7);
    v7 = v8 - 128;
    if ((*v6 & 0x80000000) == 0)
    {
      v6 = (v17 + 2);
LABEL_6:
      v17 = v6;
      goto LABEL_7;
    }

    TagFallback = google::protobuf::internal::ReadTagFallback(v17, (v8 - 128));
    v17 = TagFallback;
    if (!TagFallback)
    {
      return 0;
    }

    v6 = TagFallback;
    v7 = v15;
LABEL_7:
    if (v7 >> 3 == 2)
    {
      if (v7 == 18)
      {
        *(a1 + 16) |= 2u;
        v12 = *(a1 + 32);
        if (!v12)
        {
          v13 = *(a1 + 8);
          if (v13)
          {
            v13 = *(v13 & 0xFFFFFFFFFFFFFFFELL);
          }

          v12 = MEMORY[0x277C8F050](v13);
          *(a1 + 32) = v12;
          v6 = v17;
        }

        v11 = sub_275E5B9DC(a3, v12, v6);
        goto LABEL_26;
      }
    }

    else if (v7 >> 3 == 1 && v7 == 10)
    {
      *(a1 + 16) |= 1u;
      google::protobuf::internal::ArenaStringPtr::Mutable();
      v11 = google::protobuf::internal::InlineGreedyStringParser();
      goto LABEL_26;
    }

    if (v7)
    {
      v10 = (v7 & 7) == 4;
    }

    else
    {
      v10 = 1;
    }

    if (v10)
    {
      *(a3 + 80) = v7 - 1;
      return v17;
    }

    if ((*(a1 + 8) & 1) == 0)
    {
      sub_275E22260((a1 + 8));
    }

    v11 = google::protobuf::internal::UnknownFieldParse();
LABEL_26:
    v17 = v11;
    if (!v11)
    {
      return 0;
    }
  }

  return v17;
}

unsigned __int8 *sub_275DF0828(uint64_t a1, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v4 = a2;
  v6 = *(a1 + 16);
  if (v6)
  {
    v4 = sub_275DE5774(a3, 1, (*(a1 + 24) & 0xFFFFFFFFFFFFFFFELL), a2);
  }

  if ((v6 & 2) != 0)
  {
    if (*a3 <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
    }

    v7 = *(a1 + 32);
    *v4 = 18;
    v8 = *(v7 + 5);
    if (v8 > 0x7F)
    {
      v4[1] = v8 | 0x80;
      v10 = v8 >> 7;
      if (v8 >> 14)
      {
        v9 = v4 + 3;
        do
        {
          *(v9 - 1) = v10 | 0x80;
          v11 = v10 >> 7;
          ++v9;
          v12 = v10 >> 14;
          v10 >>= 7;
        }

        while (v12);
        *(v9 - 1) = v11;
      }

      else
      {
        v4[2] = v10;
        v9 = v4 + 3;
      }
    }

    else
    {
      v4[1] = v8;
      v9 = v4 + 2;
    }

    v4 = TSP::Reference::_InternalSerialize(v7, v9, a3);
  }

  v13 = *(a1 + 8);
  if ((v13 & 1) == 0)
  {
    return v4;
  }

  return MEMORY[0x2821EAC40]((v13 & 0xFFFFFFFFFFFFFFFELL) + 8, v4, a3);
}

uint64_t sub_275DF094C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if ((v1 & 1) == 0)
  {
    v2 = 0;
    if ((v1 & 2) == 0)
    {
      return v2;
    }

    goto LABEL_7;
  }

  v3 = *(a1 + 24) & 0xFFFFFFFFFFFFFFFELL;
  v4 = *(v3 + 23);
  v5 = *(v3 + 8);
  if ((v4 & 0x80u) == 0)
  {
    v5 = v4;
  }

  v2 = v5 + ((9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v1 & 2) != 0)
  {
LABEL_7:
    v6 = TSP::Reference::ByteSizeLong(*(a1 + 32));
    v2 += v6 + ((9 * (__clz(v6 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  return v2;
}

uint64_t sub_275DF09EC(uint64_t a1)
{
  if ((~*(a1 + 16) & 3) != 0)
  {
    v8 = sub_275DF094C(a1);
  }

  else
  {
    v2 = *(a1 + 32);
    v3 = *(a1 + 24) & 0xFFFFFFFFFFFFFFFELL;
    v4 = *(v3 + 23);
    v5 = *(v3 + 8);
    if ((v4 & 0x80u) == 0)
    {
      v6 = v4;
    }

    else
    {
      v6 = v5;
    }

    v7 = TSP::Reference::ByteSizeLong(v2);
    v8 = v6 + v7 + ((9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6) + ((9 * (__clz(v6 | 1) ^ 0x1F) + 73) >> 6) + 2;
  }

  if (*(a1 + 8))
  {

    return MEMORY[0x2821EADD8](a1 + 8, v8, a1 + 20);
  }

  else
  {
    *(a1 + 20) = v8;
    return v8;
  }
}

uint64_t sub_275DF0ACC(uint64_t a1, void *lpsrc)
{
  v4 = __dynamic_cast(lpsrc, MEMORY[0x277D80A98], &unk_2884D7E50, 0);
  if (v4)
  {

    return sub_275DF0B74(a1, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, a1);
  }
}

uint64_t sub_275DF0B74(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 8);
  if (v4)
  {
    result = sub_275E22484((result + 8), (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  v5 = *(a2 + 16);
  if ((v5 & 3) != 0)
  {
    if (v5)
    {
      *(v3 + 16) |= 1u;
      result = google::protobuf::internal::ArenaStringPtr::Set();
    }

    if ((v5 & 2) != 0)
    {
      *(v3 + 16) |= 2u;
      v6 = *(v3 + 32);
      if (!v6)
      {
        v7 = *(v3 + 8);
        if (v7)
        {
          v7 = *(v7 & 0xFFFFFFFFFFFFFFFELL);
        }

        v6 = MEMORY[0x277C8F050](v7);
        *(v3 + 32) = v6;
      }

      if (*(a2 + 32))
      {
        v8 = *(a2 + 32);
      }

      else
      {
        v8 = MEMORY[0x277D80A18];
      }

      return TSP::Reference::MergeFrom(v6, v8);
    }
  }

  return result;
}

google::protobuf::UnknownFieldSet *sub_275DF0C60(google::protobuf::UnknownFieldSet *result, google::protobuf::UnknownFieldSet *a2)
{
  if (a2 != result)
  {
    v4 = result;
    sub_275DF05F4(result);

    return sub_275DF0ACC(v4, a2);
  }

  return result;
}

uint64_t sub_275DF0CAC(uint64_t a1)
{
  if ((~*(a1 + 16) & 3) != 0)
  {
    return 0;
  }

  else
  {
    return TSP::Reference::IsInitialized(*(a1 + 32));
  }
}

void *sub_275DF0D04(void *a1, uint64_t a2)
{
  *a1 = &unk_2884D5CD8;
  a1[1] = a2;
  a1[2] = 0;
  if (atomic_load_explicit(dword_2812EA630, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  a1[3] = MEMORY[0x277D80A90];
  a1[4] = 0;
  return a1;
}

void *sub_275DF0D74(void *a1)
{
  v2 = a1[3];
  if (v2 != MEMORY[0x277D80A90])
  {
    if (*(v2 + 23) < 0)
    {
      operator delete(*v2);
    }

    MEMORY[0x277C8F960](v2, 0x1012C40EC159624);
  }

  if (a1 != qword_2812EAE58)
  {
    v3 = a1[4];
    if (v3)
    {
      TSP::Reference::~Reference(v3);
      MEMORY[0x277C8F960]();
    }
  }

  sub_275DE4968(a1 + 1);
  return a1;
}

void sub_275DF0E14(void *a1)
{
  sub_275DF0D74(a1);

  JUMPOUT(0x277C8F960);
}

google::protobuf::UnknownFieldSet *sub_275DF0E54(google::protobuf::UnknownFieldSet *result)
{
  v1 = result;
  v2 = *(result + 4);
  if ((v2 & 3) != 0)
  {
    if ((v2 & 1) == 0)
    {
      goto LABEL_5;
    }

    v3 = *(result + 3) & 0xFFFFFFFFFFFFFFFELL;
    if ((*(v3 + 23) & 0x80000000) == 0)
    {
      *v3 = 0;
      *(v3 + 23) = 0;
LABEL_5:
      if ((v2 & 2) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }

    **v3 = 0;
    *(v3 + 8) = 0;
    if ((v2 & 2) != 0)
    {
LABEL_6:
      result = TSP::Reference::Clear(*(result + 4));
    }
  }

LABEL_7:
  v5 = *(v1 + 8);
  v4 = v1 + 8;
  *(v4 + 8) = 0;
  if (v5)
  {

    return sub_275E224D0(v4);
  }

  return result;
}

google::protobuf::internal *sub_275DF0EE8(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v17 = a2;
  for (i = *(a3 + 92); (sub_275E221E8(a3, &v17, i) & 1) == 0; i = *(a3 + 92))
  {
    v6 = (v17 + 1);
    v7 = *v17;
    if ((*v17 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    v8 = v7 + (*v6 << 7);
    v7 = v8 - 128;
    if ((*v6 & 0x80000000) == 0)
    {
      v6 = (v17 + 2);
LABEL_6:
      v17 = v6;
      goto LABEL_7;
    }

    TagFallback = google::protobuf::internal::ReadTagFallback(v17, (v8 - 128));
    v17 = TagFallback;
    if (!TagFallback)
    {
      return 0;
    }

    v6 = TagFallback;
    v7 = v15;
LABEL_7:
    if (v7 >> 3 == 2)
    {
      if (v7 == 18)
      {
        *(a1 + 16) |= 1u;
        google::protobuf::internal::ArenaStringPtr::Mutable();
        v11 = google::protobuf::internal::InlineGreedyStringParser();
        goto LABEL_26;
      }
    }

    else if (v7 >> 3 == 1 && v7 == 10)
    {
      *(a1 + 16) |= 2u;
      v12 = *(a1 + 32);
      if (!v12)
      {
        v13 = *(a1 + 8);
        if (v13)
        {
          v13 = *(v13 & 0xFFFFFFFFFFFFFFFELL);
        }

        v12 = MEMORY[0x277C8F050](v13);
        *(a1 + 32) = v12;
        v6 = v17;
      }

      v11 = sub_275E5B9DC(a3, v12, v6);
      goto LABEL_26;
    }

    if (v7)
    {
      v10 = (v7 & 7) == 4;
    }

    else
    {
      v10 = 1;
    }

    if (v10)
    {
      *(a3 + 80) = v7 - 1;
      return v17;
    }

    if ((*(a1 + 8) & 1) == 0)
    {
      sub_275E22260((a1 + 8));
    }

    v11 = google::protobuf::internal::UnknownFieldParse();
LABEL_26:
    v17 = v11;
    if (!v11)
    {
      return 0;
    }
  }

  return v17;
}

unsigned __int8 *sub_275DF1088(uint64_t a1, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v4 = a2;
  v6 = *(a1 + 16);
  if ((v6 & 2) != 0)
  {
    if (*a3 <= a2)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v7 = *(a1 + 32);
    *v4 = 10;
    v8 = *(v7 + 5);
    if (v8 > 0x7F)
    {
      v4[1] = v8 | 0x80;
      v10 = v8 >> 7;
      if (v8 >> 14)
      {
        v9 = v4 + 3;
        do
        {
          *(v9 - 1) = v10 | 0x80;
          v11 = v10 >> 7;
          ++v9;
          v12 = v10 >> 14;
          v10 >>= 7;
        }

        while (v12);
        *(v9 - 1) = v11;
      }

      else
      {
        v4[2] = v10;
        v9 = v4 + 3;
      }
    }

    else
    {
      v4[1] = v8;
      v9 = v4 + 2;
    }

    v4 = TSP::Reference::_InternalSerialize(v7, v9, a3);
  }

  if (v6)
  {
    v4 = sub_275DE5774(a3, 2, (*(a1 + 24) & 0xFFFFFFFFFFFFFFFELL), v4);
  }

  v13 = *(a1 + 8);
  if ((v13 & 1) == 0)
  {
    return v4;
  }

  return MEMORY[0x2821EAC40]((v13 & 0xFFFFFFFFFFFFFFFELL) + 8, v4, a3);
}

uint64_t sub_275DF11AC(uint64_t a1)
{
  v2 = *(a1 + 16);
  if ((v2 & 1) == 0)
  {
    v3 = 0;
    if ((v2 & 2) == 0)
    {
      goto LABEL_8;
    }

LABEL_7:
    v7 = TSP::Reference::ByteSizeLong(*(a1 + 32));
    v3 += v7 + ((9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6) + 1;
    goto LABEL_8;
  }

  v4 = *(a1 + 24) & 0xFFFFFFFFFFFFFFFELL;
  v5 = *(v4 + 23);
  v6 = *(v4 + 8);
  if ((v5 & 0x80u) == 0)
  {
    v6 = v5;
  }

  v3 = v6 + ((9 * (__clz(v6 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 2) != 0)
  {
    goto LABEL_7;
  }

LABEL_8:
  if (*(a1 + 8))
  {

    return MEMORY[0x2821EADD8](a1 + 8, v3, a1 + 20);
  }

  else
  {
    *(a1 + 20) = v3;
    return v3;
  }
}

uint64_t sub_275DF1284(uint64_t a1, void *lpsrc)
{
  v4 = __dynamic_cast(lpsrc, MEMORY[0x277D80A98], &unk_2884D7E68, 0);
  if (v4)
  {

    return sub_275DF0B74(a1, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, a1);
  }
}

google::protobuf::UnknownFieldSet *sub_275DF132C(google::protobuf::UnknownFieldSet *result, google::protobuf::UnknownFieldSet *a2)
{
  if (a2 != result)
  {
    v4 = result;
    sub_275DF0E54(result);

    return sub_275DF1284(v4, a2);
  }

  return result;
}

uint64_t sub_275DF1378(uint64_t a1)
{
  v1 = *(a1 + 16);
  if ((v1 & 1) == 0)
  {
    return 0;
  }

  if ((v1 & 2) == 0)
  {
    return 1;
  }

  result = TSP::Reference::IsInitialized(*(a1 + 32));
  if (result)
  {
    return 1;
  }

  return result;
}

uint64_t sub_275DF13EC(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_2884D5D88;
  *(a1 + 8) = a2;
  *(a1 + 16) = a2;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  if (atomic_load_explicit(dword_2812EA610, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return a1;
}

uint64_t sub_275DF1474(uint64_t a1)
{
  sub_275DE4968((a1 + 8));
  sub_275E227A8((a1 + 16));
  return a1;
}

void sub_275DF14B4(uint64_t a1)
{
  sub_275DF1474(a1);

  JUMPOUT(0x277C8F960);
}

google::protobuf::UnknownFieldSet *sub_275DF14F4(google::protobuf::UnknownFieldSet *result)
{
  v1 = result;
  v2 = *(result + 6);
  if (v2 >= 1)
  {
    v3 = (*(result + 4) + 8);
    do
    {
      v4 = *v3++;
      result = sub_275DF0E54(v4);
      --v2;
    }

    while (v2);
    *(v1 + 24) = 0;
  }

  v6 = *(v1 + 8);
  v5 = (v1 + 8);
  if (v6)
  {

    return sub_275E224D0(v5);
  }

  return result;
}

google::protobuf::internal *sub_275DF1570(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v20 = a2;
  if ((sub_275E221E8(a3, &v20, *(a3 + 92)) & 1) == 0)
  {
    while (1)
    {
      v5 = (v20 + 1);
      v6 = *v20;
      if ((*v20 & 0x80000000) == 0)
      {
        goto LABEL_5;
      }

      v7 = v6 + (*v5 << 7);
      v6 = v7 - 128;
      if ((*v5 & 0x80000000) == 0)
      {
        break;
      }

      TagFallback = google::protobuf::internal::ReadTagFallback(v20, (v7 - 128));
      v20 = TagFallback;
      if (!TagFallback)
      {
        return 0;
      }

      v5 = TagFallback;
      v6 = v18;
LABEL_6:
      if (v6 == 10)
      {
        v9 = (v5 - 1);
        while (1)
        {
          v10 = (v9 + 1);
          v20 = (v9 + 1);
          v11 = *(a1 + 32);
          if (!v11)
          {
            goto LABEL_18;
          }

          v16 = *(a1 + 24);
          v12 = *v11;
          if (v16 < *v11)
          {
            *(a1 + 24) = v16 + 1;
            v13 = *&v11[2 * v16 + 2];
            goto LABEL_22;
          }

          if (v12 == *(a1 + 28))
          {
LABEL_18:
            google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 16));
            v11 = *(a1 + 32);
            v12 = *v11;
          }

          *v11 = v12 + 1;
          v13 = sub_275E1FEDC(*(a1 + 16));
          v14 = *(a1 + 24);
          v15 = *(a1 + 32) + 8 * v14;
          *(a1 + 24) = v14 + 1;
          *(v15 + 8) = v13;
          v10 = v20;
LABEL_22:
          v9 = sub_275E5BF8C(a3, v13, v10);
          v20 = v9;
          if (!v9)
          {
            return 0;
          }

          if (*a3 <= v9 || *v9 != 10)
          {
            goto LABEL_14;
          }
        }
      }

      if (v6)
      {
        v8 = (v6 & 7) == 4;
      }

      else
      {
        v8 = 1;
      }

      if (v8)
      {
        *(a3 + 80) = v6 - 1;
        return v20;
      }

      if ((*(a1 + 8) & 1) == 0)
      {
        sub_275E22260((a1 + 8));
      }

      v20 = google::protobuf::internal::UnknownFieldParse();
      if (!v20)
      {
        return 0;
      }

LABEL_14:
      if (sub_275E221E8(a3, &v20, *(a3 + 92)))
      {
        return v20;
      }
    }

    v5 = (v20 + 2);
LABEL_5:
    v20 = v5;
    goto LABEL_6;
  }

  return v20;
}

unsigned __int8 *sub_275DF1740(uint64_t a1, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v5 = *(a1 + 24);
  if (v5)
  {
    for (i = 0; i != v5; ++i)
    {
      if (*a3 <= a2)
      {
        a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      }

      v7 = *(*(a1 + 32) + 8 * i + 8);
      *a2 = 10;
      v8 = *(v7 + 20);
      if (v8 > 0x7F)
      {
        a2[1] = v8 | 0x80;
        v10 = v8 >> 7;
        if (v8 >> 14)
        {
          v9 = a2 + 3;
          do
          {
            *(v9 - 1) = v10 | 0x80;
            v11 = v10 >> 7;
            ++v9;
            v12 = v10 >> 14;
            v10 >>= 7;
          }

          while (v12);
          *(v9 - 1) = v11;
        }

        else
        {
          a2[2] = v10;
          v9 = a2 + 3;
        }
      }

      else
      {
        a2[1] = v8;
        v9 = a2 + 2;
      }

      a2 = sub_275DF1088(v7, v9, a3);
    }
  }

  v13 = *(a1 + 8);
  if ((v13 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v13 & 0xFFFFFFFFFFFFFFFELL) + 8, a2, a3);
}

uint64_t sub_275DF1864(uint64_t a1)
{
  v2 = *(a1 + 24);
  v3 = *(a1 + 32);
  if (v3)
  {
    v4 = (v3 + 8);
  }

  else
  {
    v4 = 0;
  }

  if (v2)
  {
    v5 = 8 * v2;
    do
    {
      v6 = *v4++;
      v7 = sub_275DF11AC(v6);
      v2 += v7 + ((9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6);
      v5 -= 8;
    }

    while (v5);
  }

  else
  {
    v2 = 0;
  }

  if (*(a1 + 8))
  {

    return MEMORY[0x2821EADD8](a1 + 8, v2, a1 + 40);
  }

  else
  {
    *(a1 + 40) = v2;
    return v2;
  }
}

uint64_t sub_275DF191C(uint64_t a1, void *lpsrc)
{
  v4 = __dynamic_cast(lpsrc, MEMORY[0x277D80A98], &unk_2884D7E80, 0);
  if (v4)
  {

    return sub_275DF19C4(a1, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, a1);
  }
}

uint64_t sub_275DF19C4(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 8);
  if (v4)
  {
    result = sub_275E22484((result + 8), (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  v5 = *(a2 + 24);
  if (v5)
  {
    v6 = *(a2 + 32);
    v7 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((v3 + 16));
    result = sub_275E2282C((v3 + 16), v7, (v6 + 8), v5, **(v3 + 32) - *(v3 + 24));
    v8 = *(v3 + 24) + v5;
    *(v3 + 24) = v8;
    v9 = *(v3 + 32);
    if (*v9 < v8)
    {
      *v9 = v8;
    }
  }

  return result;
}

google::protobuf::UnknownFieldSet *sub_275DF1A64(google::protobuf::UnknownFieldSet *result, google::protobuf::UnknownFieldSet *a2)
{
  if (a2 != result)
  {
    v4 = result;
    sub_275DF14F4(result);

    return sub_275DF191C(v4, a2);
  }

  return result;
}

uint64_t sub_275DF1AB8(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 < 1)
  {
    return 1;
  }

  while (1)
  {
    v3 = *(*(a1 + 16) + 8 * v1);
    v4 = *(v3 + 16);
    if ((v4 & 1) == 0)
    {
      break;
    }

    if ((v4 & 2) != 0)
    {
      result = TSP::Reference::IsInitialized(*(v3 + 32));
      if (!result)
      {
        return result;
      }
    }

    if (v1-- <= 1)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t sub_275DF1B58(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_2884D5E38;
  *(a1 + 8) = a2;
  *(a1 + 16) = 0;
  *(a1 + 24) = a2;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = a2;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = a2;
  *(a1 + 96) = a2;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  *(a1 + 120) = a2;
  *(a1 + 128) = 0;
  *(a1 + 136) = 0;
  *(a1 + 240) = a2;
  *(a1 + 144) = a2;
  *(a1 + 168) = a2;
  *(a1 + 152) = 0;
  *(a1 + 160) = 0;
  *(a1 + 176) = 0;
  *(a1 + 184) = 0;
  *(a1 + 192) = a2;
  *(a1 + 200) = 0;
  *(a1 + 208) = 0;
  *(a1 + 216) = a2;
  *(a1 + 224) = 0;
  *(a1 + 232) = 0;
  *(a1 + 248) = 0;
  *(a1 + 256) = 0;
  if (atomic_load_explicit(dword_2812EA5B8, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  v3 = MEMORY[0x277D80A90];
  *(a1 + 264) = MEMORY[0x277D80A90];
  *(a1 + 272) = v3;
  *(a1 + 280) = v3;
  *(a1 + 288) = 0u;
  *(a1 + 304) = 0u;
  *(a1 + 320) = 0u;
  *(a1 + 336) = 0u;
  *(a1 + 352) = 0u;
  *(a1 + 368) = 0u;
  *(a1 + 384) = 0u;
  *(a1 + 400) = 0u;
  *(a1 + 416) = 0u;
  *(a1 + 432) = 0u;
  *(a1 + 444) = 0u;
  return a1;
}

void sub_275DF1C90(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, _Unwind_Exception *exception_object, void *a10)
{
  sub_275E22664(v18);
  sub_275E22664(v10);
  sub_275E22664(v17);
  sub_275E22664(v16);
  sub_275E22664(v11);
  sub_275E229F4(v15);
  sub_275E22970(v14);
  sub_275E22664(v13);
  sub_275E228EC(v12);
  sub_275E22664(a10);
  _Unwind_Resume(a1);
}

uint64_t *sub_275DF1D20(uint64_t *a1)
{
  sub_275DF1DCC(a1);
  sub_275DE4968(a1 + 1);
  sub_275E22664(a1 + 30);
  sub_275E22664(a1 + 27);
  sub_275E22664(a1 + 24);
  sub_275E22664(a1 + 21);
  sub_275E22664(a1 + 18);
  sub_275E229F4(a1 + 15);
  sub_275E22970(a1 + 12);
  sub_275E22664(a1 + 9);
  sub_275E228EC(a1 + 6);
  sub_275E22664(a1 + 3);
  return a1;
}

uint64_t sub_275DF1DCC(uint64_t result)
{
  v1 = result;
  v2 = *(result + 264);
  v3 = MEMORY[0x277D80A90];
  if (v2 != MEMORY[0x277D80A90])
  {
    if (*(v2 + 23) < 0)
    {
      operator delete(*v2);
    }

    result = MEMORY[0x277C8F960](v2, 0x1012C40EC159624);
  }

  v4 = *(v1 + 272);
  if (v4 != v3)
  {
    if (*(v4 + 23) < 0)
    {
      operator delete(*v4);
    }

    result = MEMORY[0x277C8F960](v4, 0x1012C40EC159624);
  }

  v5 = *(v1 + 280);
  if (v5 != v3)
  {
    if (*(v5 + 23) < 0)
    {
      operator delete(*v5);
    }

    result = MEMORY[0x277C8F960](v5, 0x1012C40EC159624);
  }

  if (v1 != &unk_2812EAEB0)
  {
    v6 = *(v1 + 288);
    if (v6)
    {
      TSP::Reference::~Reference(v6);
      MEMORY[0x277C8F960]();
    }

    v7 = *(v1 + 296);
    if (v7)
    {
      v8 = sub_275DE77B4(v7);
      MEMORY[0x277C8F960](v8, 0x10A1C40D4912B22);
    }

    v9 = *(v1 + 304);
    if (v9)
    {
      TSP::Reference::~Reference(v9);
      MEMORY[0x277C8F960]();
    }

    v10 = *(v1 + 312);
    if (v10)
    {
      TSP::Reference::~Reference(v10);
      MEMORY[0x277C8F960]();
    }

    if (*(v1 + 320))
    {
      v11 = MEMORY[0x277C8E7D0]();
      MEMORY[0x277C8F960](v11, 0x10A1C4042CF1500);
    }

    if (*(v1 + 328))
    {
      v12 = MEMORY[0x277C8E7D0]();
      MEMORY[0x277C8F960](v12, 0x10A1C4042CF1500);
    }

    v13 = *(v1 + 336);
    if (v13)
    {
      TSP::Reference::~Reference(v13);
      MEMORY[0x277C8F960]();
    }

    v14 = *(v1 + 344);
    if (v14)
    {
      TSP::Reference::~Reference(v14);
      MEMORY[0x277C8F960]();
    }

    if (*(v1 + 352))
    {
      v15 = MEMORY[0x277C8E7D0]();
      MEMORY[0x277C8F960](v15, 0x10A1C4042CF1500);
    }

    if (*(v1 + 360))
    {
      v16 = MEMORY[0x277C8ED70]();
      MEMORY[0x277C8F960](v16, 0x10A1C4051C080FALL);
    }

    if (*(v1 + 368))
    {
      v17 = MEMORY[0x277C8ED70]();
      MEMORY[0x277C8F960](v17, 0x10A1C4051C080FALL);
    }

    if (*(v1 + 376))
    {
      v18 = MEMORY[0x277C8ED70]();
      MEMORY[0x277C8F960](v18, 0x10A1C4051C080FALL);
    }

    v19 = *(v1 + 384);
    if (v19)
    {
      TSP::Reference::~Reference(v19);
      MEMORY[0x277C8F960]();
    }

    v20 = *(v1 + 392);
    if (v20)
    {
      TSP::Reference::~Reference(v20);
      MEMORY[0x277C8F960]();
    }

    v21 = *(v1 + 400);
    if (v21)
    {
      TSP::Reference::~Reference(v21);
      MEMORY[0x277C8F960]();
    }

    v22 = *(v1 + 408);
    if (v22)
    {
      TSP::Reference::~Reference(v22);
      MEMORY[0x277C8F960]();
    }

    v23 = *(v1 + 416);
    if (v23)
    {
      TSP::Reference::~Reference(v23);
      MEMORY[0x277C8F960]();
    }

    result = *(v1 + 424);
    if (result)
    {
      sub_275DF1474(result);

      JUMPOUT(0x277C8F960);
    }
  }

  return result;
}

void sub_275DF2064(uint64_t *a1)
{
  sub_275DF1D20(a1);

  JUMPOUT(0x277C8F960);
}

void *sub_275DF20A4()
{
  if (atomic_load_explicit(dword_2812EA5B8, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &unk_2812EAEB0;
}

google::protobuf::UnknownFieldSet *sub_275DF20E4(google::protobuf::UnknownFieldSet *result)
{
  v1 = result;
  v2 = *(result + 8);
  if (v2 >= 1)
  {
    v3 = (*(result + 5) + 8);
    do
    {
      v4 = *v3++;
      result = TSP::Reference::Clear(v4);
      --v2;
    }

    while (v2);
    *(v1 + 32) = 0;
  }

  v5 = *(v1 + 56);
  if (v5 >= 1)
  {
    v6 = (*(v1 + 64) + 8);
    do
    {
      v7 = *v6++;
      result = sub_275DE7EFC(v7);
      --v5;
    }

    while (v5);
    *(v1 + 56) = 0;
  }

  v8 = *(v1 + 80);
  if (v8 >= 1)
  {
    v9 = (*(v1 + 88) + 8);
    do
    {
      v10 = *v9++;
      result = TSP::Reference::Clear(v10);
      --v8;
    }

    while (v8);
    *(v1 + 80) = 0;
  }

  v11 = *(v1 + 104);
  if (v11 >= 1)
  {
    v12 = (*(v1 + 112) + 8);
    do
    {
      v13 = *v12++;
      result = TSD::GuideArchive::Clear(v13);
      --v11;
    }

    while (v11);
    *(v1 + 104) = 0;
  }

  v14 = *(v1 + 128);
  if (v14 >= 1)
  {
    v15 = (*(v1 + 136) + 8);
    do
    {
      v16 = *v15++;
      result = sub_275DF05F4(v16);
      --v14;
    }

    while (v14);
    *(v1 + 128) = 0;
  }

  v17 = *(v1 + 152);
  if (v17 >= 1)
  {
    v18 = (*(v1 + 160) + 8);
    do
    {
      v19 = *v18++;
      result = TSP::Reference::Clear(v19);
      --v17;
    }

    while (v17);
    *(v1 + 152) = 0;
  }

  v20 = *(v1 + 176);
  if (v20 >= 1)
  {
    v21 = (*(v1 + 184) + 8);
    do
    {
      v22 = *v21++;
      result = TSP::Reference::Clear(v22);
      --v20;
    }

    while (v20);
    *(v1 + 176) = 0;
  }

  v23 = *(v1 + 200);
  if (v23 >= 1)
  {
    v24 = (*(v1 + 208) + 8);
    do
    {
      v25 = *v24++;
      result = TSP::Reference::Clear(v25);
      --v23;
    }

    while (v23);
    *(v1 + 200) = 0;
  }

  v26 = *(v1 + 224);
  if (v26 >= 1)
  {
    v27 = (*(v1 + 232) + 8);
    do
    {
      v28 = *v27++;
      result = TSP::Reference::Clear(v28);
      --v26;
    }

    while (v26);
    *(v1 + 224) = 0;
  }

  v29 = *(v1 + 248);
  if (v29 >= 1)
  {
    v30 = (*(v1 + 256) + 8);
    do
    {
      v31 = *v30++;
      result = TSP::Reference::Clear(v31);
      --v29;
    }

    while (v29);
    *(v1 + 248) = 0;
  }

  v32 = *(v1 + 16);
  if (!v32)
  {
    goto LABEL_51;
  }

  if (v32)
  {
    v35 = *(v1 + 264) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v35 + 23) < 0)
    {
      **v35 = 0;
      *(v35 + 8) = 0;
      if ((v32 & 2) != 0)
      {
        goto LABEL_93;
      }
    }

    else
    {
      *v35 = 0;
      *(v35 + 23) = 0;
      if ((v32 & 2) != 0)
      {
        goto LABEL_93;
      }
    }

LABEL_44:
    if ((v32 & 4) == 0)
    {
      goto LABEL_45;
    }

LABEL_97:
    v37 = *(v1 + 280) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v37 + 23) < 0)
    {
      **v37 = 0;
      *(v37 + 8) = 0;
      if ((v32 & 8) != 0)
      {
        goto LABEL_101;
      }
    }

    else
    {
      *v37 = 0;
      *(v37 + 23) = 0;
      if ((v32 & 8) != 0)
      {
        goto LABEL_101;
      }
    }

LABEL_46:
    if ((v32 & 0x10) == 0)
    {
      goto LABEL_47;
    }

    goto LABEL_102;
  }

  if ((v32 & 2) == 0)
  {
    goto LABEL_44;
  }

LABEL_93:
  v36 = *(v1 + 272) & 0xFFFFFFFFFFFFFFFELL;
  if (*(v36 + 23) < 0)
  {
    **v36 = 0;
    *(v36 + 8) = 0;
    if ((v32 & 4) != 0)
    {
      goto LABEL_97;
    }
  }

  else
  {
    *v36 = 0;
    *(v36 + 23) = 0;
    if ((v32 & 4) != 0)
    {
      goto LABEL_97;
    }
  }

LABEL_45:
  if ((v32 & 8) == 0)
  {
    goto LABEL_46;
  }

LABEL_101:
  result = TSP::Reference::Clear(*(v1 + 288));
  if ((v32 & 0x10) == 0)
  {
LABEL_47:
    if ((v32 & 0x20) == 0)
    {
      goto LABEL_48;
    }

LABEL_103:
    result = TSP::Reference::Clear(*(v1 + 304));
    if ((v32 & 0x40) == 0)
    {
LABEL_49:
      if ((v32 & 0x80) == 0)
      {
        goto LABEL_51;
      }

      goto LABEL_50;
    }

    goto LABEL_104;
  }

LABEL_102:
  result = sub_275DE7858(*(v1 + 296));
  if ((v32 & 0x20) != 0)
  {
    goto LABEL_103;
  }

LABEL_48:
  if ((v32 & 0x40) == 0)
  {
    goto LABEL_49;
  }

LABEL_104:
  result = TSP::Reference::Clear(*(v1 + 312));
  if ((v32 & 0x80) != 0)
  {
LABEL_50:
    result = TSD::GeometryArchive::Clear(*(v1 + 320));
  }

LABEL_51:
  if ((v32 & 0xFF00) == 0)
  {
    goto LABEL_61;
  }

  if ((v32 & 0x100) != 0)
  {
    result = TSD::GeometryArchive::Clear(*(v1 + 328));
    if ((v32 & 0x200) == 0)
    {
LABEL_54:
      if ((v32 & 0x400) == 0)
      {
        goto LABEL_55;
      }

      goto LABEL_81;
    }
  }

  else if ((v32 & 0x200) == 0)
  {
    goto LABEL_54;
  }

  result = TSP::Reference::Clear(*(v1 + 336));
  if ((v32 & 0x400) == 0)
  {
LABEL_55:
    if ((v32 & 0x800) == 0)
    {
      goto LABEL_56;
    }

    goto LABEL_82;
  }

LABEL_81:
  result = TSP::Reference::Clear(*(v1 + 344));
  if ((v32 & 0x800) == 0)
  {
LABEL_56:
    if ((v32 & 0x1000) == 0)
    {
      goto LABEL_57;
    }

    goto LABEL_83;
  }

LABEL_82:
  result = TSD::GeometryArchive::Clear(*(v1 + 352));
  if ((v32 & 0x1000) == 0)
  {
LABEL_57:
    if ((v32 & 0x2000) == 0)
    {
      goto LABEL_58;
    }

    goto LABEL_84;
  }

LABEL_83:
  result = TSWP::ShapeStylePropertiesArchive::Clear(*(v1 + 360));
  if ((v32 & 0x2000) == 0)
  {
LABEL_58:
    if ((v32 & 0x4000) == 0)
    {
      goto LABEL_59;
    }

    goto LABEL_85;
  }

LABEL_84:
  result = TSWP::ShapeStylePropertiesArchive::Clear(*(v1 + 368));
  if ((v32 & 0x4000) == 0)
  {
LABEL_59:
    if ((v32 & 0x8000) == 0)
    {
      goto LABEL_61;
    }

    goto LABEL_60;
  }

LABEL_85:
  result = TSWP::ShapeStylePropertiesArchive::Clear(*(v1 + 376));
  if ((v32 & 0x8000) != 0)
  {
LABEL_60:
    result = TSP::Reference::Clear(*(v1 + 384));
  }

LABEL_61:
  if ((v32 & 0x1F0000) == 0)
  {
    goto LABEL_68;
  }

  if ((v32 & 0x10000) != 0)
  {
    result = TSP::Reference::Clear(*(v1 + 392));
    if ((v32 & 0x20000) == 0)
    {
LABEL_64:
      if ((v32 & 0x40000) == 0)
      {
        goto LABEL_65;
      }

      goto LABEL_89;
    }
  }

  else if ((v32 & 0x20000) == 0)
  {
    goto LABEL_64;
  }

  result = TSP::Reference::Clear(*(v1 + 400));
  if ((v32 & 0x40000) == 0)
  {
LABEL_65:
    if ((v32 & 0x80000) == 0)
    {
      goto LABEL_66;
    }

    goto LABEL_90;
  }

LABEL_89:
  result = TSP::Reference::Clear(*(v1 + 408));
  if ((v32 & 0x80000) == 0)
  {
LABEL_66:
    if ((v32 & 0x100000) == 0)
    {
      goto LABEL_68;
    }

    goto LABEL_67;
  }

LABEL_90:
  result = TSP::Reference::Clear(*(v1 + 416));
  if ((v32 & 0x100000) != 0)
  {
LABEL_67:
    result = sub_275DF14F4(*(v1 + 424));
  }

LABEL_68:
  if ((v32 & 0xE00000) != 0)
  {
    *(v1 + 440) = 0;
    *(v1 + 432) = 0;
  }

  if ((v32 & 0x7F000000) != 0)
  {
    *(v1 + 452) = 0;
    *(v1 + 444) = 0;
  }

  v34 = *(v1 + 8);
  v33 = v1 + 8;
  *(v33 + 8) = 0;
  if (v34)
  {

    return sub_275E224D0(v33);
  }

  return result;
}

google::protobuf::internal *sub_275DF24CC(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v167 = a2;
  v5 = 0;
  if ((sub_275E221E8(a3, &v167, *(a3 + 92)) & 1) == 0)
  {
    while (2)
    {
      v7 = (v167 + 1);
      v8 = *v167;
      if (*v167 < 0)
      {
        v9 = v8 + (*v7 << 7);
        v8 = v9 - 128;
        if (*v7 < 0)
        {
          TagFallback = google::protobuf::internal::ReadTagFallback(v167, (v9 - 128));
          v167 = TagFallback;
          if (!TagFallback)
          {
            goto LABEL_324;
          }

          v7 = TagFallback;
          v8 = v13;
LABEL_7:
          switch(v8 >> 3)
          {
            case 1u:
              if (v8 != 10)
              {
                goto LABEL_298;
              }

              *(a1 + 16) |= 8u;
              v10 = *(a1 + 288);
              if (v10)
              {
                goto LABEL_289;
              }

              v11 = *(a1 + 8);
              if (v11)
              {
                v11 = *(v11 & 0xFFFFFFFFFFFFFFFELL);
              }

              v10 = MEMORY[0x277C8F050](v11);
              *(a1 + 288) = v10;
              goto LABEL_288;
            case 2u:
              if (v8 != 18)
              {
                goto LABEL_298;
              }

              v89 = v7 - 1;
              while (1)
              {
                v90 = (v89 + 1);
                v167 = (v89 + 1);
                v91 = *(a1 + 40);
                if (!v91)
                {
                  goto LABEL_178;
                }

                v96 = *(a1 + 32);
                v92 = *v91;
                if (v96 < *v91)
                {
                  *(a1 + 32) = v96 + 1;
                  v93 = *&v91[2 * v96 + 2];
                  goto LABEL_182;
                }

                if (v92 == *(a1 + 36))
                {
LABEL_178:
                  google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 24));
                  v91 = *(a1 + 40);
                  v92 = *v91;
                }

                *v91 = v92 + 1;
                v93 = MEMORY[0x277C8F050](*(a1 + 24));
                v94 = *(a1 + 32);
                v95 = *(a1 + 40) + 8 * v94;
                *(a1 + 32) = v94 + 1;
                *(v95 + 8) = v93;
                v90 = v167;
LABEL_182:
                v89 = sub_275E5B9DC(a3, v93, v90);
                v167 = v89;
                if (!v89)
                {
                  goto LABEL_324;
                }

                if (*a3 <= v89 || *v89 != 18)
                {
                  goto LABEL_291;
                }
              }

            case 3u:
              if (v8 != 26)
              {
                goto LABEL_298;
              }

              v98 = (v7 - 1);
              while (1)
              {
                v99 = (v98 + 1);
                v167 = (v98 + 1);
                v100 = *(a1 + 64);
                if (!v100)
                {
                  goto LABEL_198;
                }

                v105 = *(a1 + 56);
                v101 = *v100;
                if (v105 < *v100)
                {
                  *(a1 + 56) = v105 + 1;
                  v102 = *&v100[2 * v105 + 2];
                  goto LABEL_202;
                }

                if (v101 == *(a1 + 60))
                {
LABEL_198:
                  google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 48));
                  v100 = *(a1 + 64);
                  v101 = *v100;
                }

                *v100 = v101 + 1;
                v102 = sub_275E1F7C4(*(a1 + 48));
                v103 = *(a1 + 56);
                v104 = *(a1 + 64) + 8 * v103;
                *(a1 + 56) = v103 + 1;
                *(v104 + 8) = v102;
                v99 = v167;
LABEL_202:
                v98 = sub_275E5C05C(a3, v102, v99);
                v167 = v98;
                if (!v98)
                {
                  goto LABEL_324;
                }

                if (*a3 <= v98 || *v98 != 26)
                {
                  goto LABEL_291;
                }
              }

            case 4u:
              if (v8 != 34)
              {
                goto LABEL_298;
              }

              *(a1 + 16) |= 0x10u;
              v123 = *(a1 + 296);
              if (!v123)
              {
                v124 = *(a1 + 8);
                if (v124)
                {
                  v124 = *(v124 & 0xFFFFFFFFFFFFFFFELL);
                }

                v123 = sub_275E1F6F8(v124);
                *(a1 + 296) = v123;
                v7 = v167;
              }

              v53 = sub_275E5C12C(a3, v123, v7);
              goto LABEL_290;
            case 5u:
              if (v8 != 42)
              {
                goto LABEL_298;
              }

              *(a1 + 16) |= 0x20u;
              v10 = *(a1 + 304);
              if (v10)
              {
                goto LABEL_289;
              }

              v82 = *(a1 + 8);
              if (v82)
              {
                v82 = *(v82 & 0xFFFFFFFFFFFFFFFELL);
              }

              v10 = MEMORY[0x277C8F050](v82);
              *(a1 + 304) = v10;
              goto LABEL_288;
            case 6u:
              if (v8 != 50)
              {
                goto LABEL_298;
              }

              *(a1 + 16) |= 0x40u;
              v10 = *(a1 + 312);
              if (v10)
              {
                goto LABEL_289;
              }

              v68 = *(a1 + 8);
              if (v68)
              {
                v68 = *(v68 & 0xFFFFFFFFFFFFFFFELL);
              }

              v10 = MEMORY[0x277C8F050](v68);
              *(a1 + 312) = v10;
              goto LABEL_288;
            case 7u:
              if (v8 != 58)
              {
                goto LABEL_298;
              }

              v69 = v7 - 1;
              while (1)
              {
                v70 = (v69 + 1);
                v167 = (v69 + 1);
                v71 = *(a1 + 88);
                if (!v71)
                {
                  goto LABEL_133;
                }

                v76 = *(a1 + 80);
                v72 = *v71;
                if (v76 < *v71)
                {
                  *(a1 + 80) = v76 + 1;
                  v73 = *&v71[2 * v76 + 2];
                  goto LABEL_137;
                }

                if (v72 == *(a1 + 84))
                {
LABEL_133:
                  google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 72));
                  v71 = *(a1 + 88);
                  v72 = *v71;
                }

                *v71 = v72 + 1;
                v73 = MEMORY[0x277C8F050](*(a1 + 72));
                v74 = *(a1 + 80);
                v75 = *(a1 + 88) + 8 * v74;
                *(a1 + 80) = v74 + 1;
                *(v75 + 8) = v73;
                v70 = v167;
LABEL_137:
                v69 = sub_275E5B9DC(a3, v73, v70);
                v167 = v69;
                if (!v69)
                {
                  goto LABEL_324;
                }

                if (*a3 <= v69 || *v69 != 58)
                {
                  goto LABEL_291;
                }
              }

            case 0xAu:
              if (v8 != 82)
              {
                goto LABEL_298;
              }

              *(a1 + 16) |= 1u;
              goto LABEL_95;
            case 0xBu:
              if (v8 != 90)
              {
                goto LABEL_298;
              }

              *(a1 + 16) |= 0x80u;
              v34 = *(a1 + 320);
              if (v34)
              {
                goto LABEL_194;
              }

              v67 = *(a1 + 8);
              if (v67)
              {
                v67 = *(v67 & 0xFFFFFFFFFFFFFFFELL);
              }

              v34 = MEMORY[0x277C8EFA0](v67);
              *(a1 + 320) = v34;
              goto LABEL_193;
            case 0xCu:
              if (v8 != 96)
              {
                goto LABEL_298;
              }

              v5 |= 0x200000u;
              v36 = (v7 + 1);
              LODWORD(v37) = *v7;
              if ((*v7 & 0x80000000) == 0)
              {
                goto LABEL_62;
              }

              v38 = *v36;
              v37 = (v37 + (v38 << 7) - 128);
              if (v38 < 0)
              {
                v149 = google::protobuf::internal::VarintParseSlow32(v7, v37);
                v167 = v149;
                *(a1 + 432) = v150;
                if (!v149)
                {
                  goto LABEL_324;
                }
              }

              else
              {
                v36 = (v7 + 2);
LABEL_62:
                v167 = v36;
                *(a1 + 432) = v37;
              }

              goto LABEL_291;
            case 0xDu:
              if (v8 != 104)
              {
                goto LABEL_298;
              }

              v5 |= 0x400000u;
              v56 = (v7 + 1);
              LODWORD(v57) = *v7;
              if ((*v7 & 0x80000000) == 0)
              {
                goto LABEL_106;
              }

              v58 = *v56;
              v57 = (v57 + (v58 << 7) - 128);
              if (v58 < 0)
              {
                v153 = google::protobuf::internal::VarintParseSlow32(v7, v57);
                v167 = v153;
                *(a1 + 436) = v154;
                if (!v153)
                {
                  goto LABEL_324;
                }
              }

              else
              {
                v56 = (v7 + 2);
LABEL_106:
                v167 = v56;
                *(a1 + 436) = v57;
              }

              goto LABEL_291;
            case 0xEu:
              if (v8 != 114)
              {
                goto LABEL_298;
              }

              *(a1 + 16) |= 0x100u;
              v34 = *(a1 + 328);
              if (v34)
              {
                goto LABEL_194;
              }

              v97 = *(a1 + 8);
              if (v97)
              {
                v97 = *(v97 & 0xFFFFFFFFFFFFFFFELL);
              }

              v34 = MEMORY[0x277C8EFA0](v97);
              *(a1 + 328) = v34;
              goto LABEL_193;
            case 0xFu:
              if (v8 != 120)
              {
                goto LABEL_298;
              }

              v5 |= 0x800000u;
              v83 = (v7 + 1);
              LODWORD(v84) = *v7;
              if ((*v7 & 0x80000000) == 0)
              {
                goto LABEL_169;
              }

              v85 = *v83;
              v84 = (v84 + (v85 << 7) - 128);
              if (v85 < 0)
              {
                v157 = google::protobuf::internal::VarintParseSlow32(v7, v84);
                v167 = v157;
                *(a1 + 440) = v158;
                if (!v157)
                {
                  goto LABEL_324;
                }
              }

              else
              {
                v83 = (v7 + 2);
LABEL_169:
                v167 = v83;
                *(a1 + 440) = v84;
              }

              goto LABEL_291;
            case 0x10u:
              if (v8 != 128)
              {
                goto LABEL_298;
              }

              v5 |= 0x1000000u;
              v41 = (v7 + 1);
              LODWORD(v42) = *v7;
              if ((*v7 & 0x80000000) == 0)
              {
                goto LABEL_74;
              }

              v43 = *v41;
              v42 = (v42 + (v43 << 7) - 128);
              if (v43 < 0)
              {
                v151 = google::protobuf::internal::VarintParseSlow32(v7, v42);
                v167 = v151;
                *(a1 + 444) = v152;
                if (!v151)
                {
                  goto LABEL_324;
                }
              }

              else
              {
                v41 = (v7 + 2);
LABEL_74:
                v167 = v41;
                *(a1 + 444) = v42;
              }

              goto LABEL_291;
            case 0x11u:
              if (v8 != 138)
              {
                goto LABEL_298;
              }

              *(a1 + 16) |= 0x200u;
              v10 = *(a1 + 336);
              if (v10)
              {
                goto LABEL_289;
              }

              v125 = *(a1 + 8);
              if (v125)
              {
                v125 = *(v125 & 0xFFFFFFFFFFFFFFFELL);
              }

              v10 = MEMORY[0x277C8F050](v125);
              *(a1 + 336) = v10;
              goto LABEL_288;
            case 0x12u:
              if (v8 != 146)
              {
                goto LABEL_298;
              }

              v126 = v7 - 2;
              while (1)
              {
                v127 = (v126 + 2);
                v167 = (v126 + 2);
                v128 = *(a1 + 112);
                if (!v128)
                {
                  goto LABEL_253;
                }

                v133 = *(a1 + 104);
                v129 = *v128;
                if (v133 < *v128)
                {
                  *(a1 + 104) = v133 + 1;
                  v130 = *&v128[2 * v133 + 2];
                  goto LABEL_257;
                }

                if (v129 == *(a1 + 108))
                {
LABEL_253:
                  google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 96));
                  v128 = *(a1 + 112);
                  v129 = *v128;
                }

                *v128 = v129 + 1;
                v130 = MEMORY[0x277C8EF80](*(a1 + 96));
                v131 = *(a1 + 104);
                v132 = *(a1 + 112) + 8 * v131;
                *(a1 + 104) = v131 + 1;
                *(v132 + 8) = v130;
                v127 = v167;
LABEL_257:
                v126 = sub_275E5C2CC(a3, v130, v127);
                v167 = v126;
                if (!v126)
                {
                  goto LABEL_324;
                }

                if (*a3 <= v126 || *v126 != 402)
                {
                  goto LABEL_291;
                }
              }

            case 0x13u:
              if (v8 != 152)
              {
                goto LABEL_298;
              }

              v5 |= 0x10000000u;
              v137 = (v7 + 1);
              v136 = *v7;
              if ((v136 & 0x8000000000000000) == 0)
              {
                goto LABEL_277;
              }

              v138 = *v137;
              v136 = (v138 << 7) + v136 - 128;
              if (v138 < 0)
              {
                v161 = google::protobuf::internal::VarintParseSlow64(v7, v136);
                v167 = v161;
                *(a1 + 457) = v162 != 0;
                if (!v161)
                {
                  goto LABEL_324;
                }
              }

              else
              {
                v137 = (v7 + 2);
LABEL_277:
                v167 = v137;
                *(a1 + 457) = v136 != 0;
              }

              goto LABEL_291;
            case 0x14u:
              if (v8 != 162)
              {
                goto LABEL_298;
              }

              *(a1 + 16) |= 0x400u;
              v10 = *(a1 + 344);
              if (v10)
              {
                goto LABEL_289;
              }

              v135 = *(a1 + 8);
              if (v135)
              {
                v135 = *(v135 & 0xFFFFFFFFFFFFFFFELL);
              }

              v10 = MEMORY[0x277C8F050](v135);
              *(a1 + 344) = v10;
              goto LABEL_288;
            case 0x15u:
              if (v8 != 170)
              {
                goto LABEL_298;
              }

              *(a1 + 16) |= 0x800u;
              v34 = *(a1 + 352);
              if (v34)
              {
                goto LABEL_194;
              }

              v35 = *(a1 + 8);
              if (v35)
              {
                v35 = *(v35 & 0xFFFFFFFFFFFFFFFELL);
              }

              v34 = MEMORY[0x277C8EFA0](v35);
              *(a1 + 352) = v34;
LABEL_193:
              v7 = v167;
LABEL_194:
              v53 = sub_275E5C1FC(a3, v34, v7);
              goto LABEL_290;
            case 0x16u:
              if (v8 != 176)
              {
                goto LABEL_298;
              }

              v5 |= 0x2000000u;
              v86 = (v7 + 1);
              LODWORD(v87) = *v7;
              if ((*v7 & 0x80000000) == 0)
              {
                goto LABEL_174;
              }

              v88 = *v86;
              v87 = (v87 + (v88 << 7) - 128);
              if (v88 < 0)
              {
                v159 = google::protobuf::internal::VarintParseSlow32(v7, v87);
                v167 = v159;
                *(a1 + 448) = v160;
                if (!v159)
                {
                  goto LABEL_324;
                }
              }

              else
              {
                v86 = (v7 + 2);
LABEL_174:
                v167 = v86;
                *(a1 + 448) = v87;
              }

              goto LABEL_291;
            case 0x17u:
              if (v8 != 184)
              {
                goto LABEL_298;
              }

              v5 |= 0x4000000u;
              v139 = (v7 + 1);
              LODWORD(v140) = *v7;
              if ((*v7 & 0x80000000) == 0)
              {
                goto LABEL_282;
              }

              v141 = *v139;
              v140 = (v140 + (v141 << 7) - 128);
              if (v141 < 0)
              {
                v163 = google::protobuf::internal::VarintParseSlow32(v7, v140);
                v167 = v163;
                *(a1 + 452) = v164;
                if (!v163)
                {
                  goto LABEL_324;
                }
              }

              else
              {
                v139 = (v7 + 2);
LABEL_282:
                v167 = v139;
                *(a1 + 452) = v140;
              }

              goto LABEL_291;
            case 0x18u:
              if (v8 != 194)
              {
                goto LABEL_298;
              }

              *(a1 + 16) |= 0x1000u;
              v39 = *(a1 + 360);
              if (v39)
              {
                goto LABEL_159;
              }

              v40 = *(a1 + 8);
              if (v40)
              {
                v40 = *(v40 & 0xFFFFFFFFFFFFFFFELL);
              }

              v39 = MEMORY[0x277C8F0F0](v40);
              *(a1 + 360) = v39;
              goto LABEL_158;
            case 0x19u:
              if (v8 != 202)
              {
                goto LABEL_298;
              }

              *(a1 + 16) |= 0x2000u;
              v39 = *(a1 + 368);
              if (v39)
              {
                goto LABEL_159;
              }

              v81 = *(a1 + 8);
              if (v81)
              {
                v81 = *(v81 & 0xFFFFFFFFFFFFFFFELL);
              }

              v39 = MEMORY[0x277C8F0F0](v81);
              *(a1 + 368) = v39;
              goto LABEL_158;
            case 0x1Au:
              if (v8 != 210)
              {
                goto LABEL_298;
              }

              *(a1 + 16) |= 0x4000u;
              v39 = *(a1 + 376);
              if (v39)
              {
                goto LABEL_159;
              }

              v52 = *(a1 + 8);
              if (v52)
              {
                v52 = *(v52 & 0xFFFFFFFFFFFFFFFELL);
              }

              v39 = MEMORY[0x277C8F0F0](v52);
              *(a1 + 376) = v39;
LABEL_158:
              v7 = v167;
LABEL_159:
              v53 = sub_275E5C39C(a3, v39, v7);
              goto LABEL_290;
            case 0x1Bu:
              if (v8 != 218)
              {
                goto LABEL_298;
              }

              *(a1 + 16) |= 0x8000u;
              v10 = *(a1 + 384);
              if (v10)
              {
                goto LABEL_289;
              }

              v106 = *(a1 + 8);
              if (v106)
              {
                v106 = *(v106 & 0xFFFFFFFFFFFFFFFELL);
              }

              v10 = MEMORY[0x277C8F050](v106);
              *(a1 + 384) = v10;
              goto LABEL_288;
            case 0x1Cu:
              if (v8 != 226)
              {
                goto LABEL_298;
              }

              v44 = (v7 - 2);
              while (1)
              {
                v45 = (v44 + 2);
                v167 = (v44 + 2);
                v46 = *(a1 + 136);
                if (!v46)
                {
                  goto LABEL_78;
                }

                v51 = *(a1 + 128);
                v47 = *v46;
                if (v51 < *v46)
                {
                  *(a1 + 128) = v51 + 1;
                  v48 = *&v46[2 * v51 + 2];
                  goto LABEL_82;
                }

                if (v47 == *(a1 + 132))
                {
LABEL_78:
                  google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 120));
                  v46 = *(a1 + 136);
                  v47 = *v46;
                }

                *v46 = v47 + 1;
                v48 = sub_275E1FE50(*(a1 + 120));
                v49 = *(a1 + 128);
                v50 = *(a1 + 136) + 8 * v49;
                *(a1 + 128) = v49 + 1;
                *(v50 + 8) = v48;
                v45 = v167;
LABEL_82:
                v44 = sub_275E5C46C(a3, v48, v45);
                v167 = v44;
                if (!v44)
                {
                  goto LABEL_324;
                }

                if (*a3 <= v44 || *v44 != 482)
                {
                  goto LABEL_291;
                }
              }

            case 0x1Du:
              if (v8 != 234)
              {
                goto LABEL_298;
              }

              *(a1 + 16) |= 0x10000u;
              v10 = *(a1 + 392);
              if (v10)
              {
                goto LABEL_289;
              }

              v33 = *(a1 + 8);
              if (v33)
              {
                v33 = *(v33 & 0xFFFFFFFFFFFFFFFELL);
              }

              v10 = MEMORY[0x277C8F050](v33);
              *(a1 + 392) = v10;
              goto LABEL_288;
            case 0x1Eu:
              if (v8 != 242)
              {
                goto LABEL_298;
              }

              *(a1 + 16) |= 0x20000u;
              v10 = *(a1 + 400);
              if (v10)
              {
                goto LABEL_289;
              }

              v142 = *(a1 + 8);
              if (v142)
              {
                v142 = *(v142 & 0xFFFFFFFFFFFFFFFELL);
              }

              v10 = MEMORY[0x277C8F050](v142);
              *(a1 + 400) = v10;
              goto LABEL_288;
            case 0x1Fu:
              if (v8 != 250)
              {
                goto LABEL_298;
              }

              v59 = v7 - 2;
              while (1)
              {
                v60 = (v59 + 2);
                v167 = (v59 + 2);
                v61 = *(a1 + 160);
                if (!v61)
                {
                  goto LABEL_110;
                }

                v66 = *(a1 + 152);
                v62 = *v61;
                if (v66 < *v61)
                {
                  *(a1 + 152) = v66 + 1;
                  v63 = *&v61[2 * v66 + 2];
                  goto LABEL_114;
                }

                if (v62 == *(a1 + 156))
                {
LABEL_110:
                  google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 144));
                  v61 = *(a1 + 160);
                  v62 = *v61;
                }

                *v61 = v62 + 1;
                v63 = MEMORY[0x277C8F050](*(a1 + 144));
                v64 = *(a1 + 152);
                v65 = *(a1 + 160) + 8 * v64;
                *(a1 + 152) = v64 + 1;
                *(v65 + 8) = v63;
                v60 = v167;
LABEL_114:
                v59 = sub_275E5B9DC(a3, v63, v60);
                v167 = v59;
                if (!v59)
                {
                  goto LABEL_324;
                }

                if (*a3 <= v59 || *v59 != 506)
                {
                  goto LABEL_291;
                }
              }

            case 0x22u:
              if (v8 != 16)
              {
                goto LABEL_298;
              }

              v5 |= 0x20000000u;
              v78 = (v7 + 1);
              v77 = *v7;
              if ((v77 & 0x8000000000000000) == 0)
              {
                goto LABEL_147;
              }

              v79 = *v78;
              v77 = (v79 << 7) + v77 - 128;
              if (v79 < 0)
              {
                v155 = google::protobuf::internal::VarintParseSlow64(v7, v77);
                v167 = v155;
                *(a1 + 458) = v156 != 0;
                if (!v155)
                {
                  goto LABEL_324;
                }
              }

              else
              {
                v78 = (v7 + 2);
LABEL_147:
                v167 = v78;
                *(a1 + 458) = v77 != 0;
              }

              goto LABEL_291;
            case 0x23u:
              if (v8 != 26)
              {
                goto LABEL_298;
              }

              v115 = v7 - 2;
              while (1)
              {
                v116 = (v115 + 2);
                v167 = (v115 + 2);
                v117 = *(a1 + 184);
                if (!v117)
                {
                  goto LABEL_229;
                }

                v122 = *(a1 + 176);
                v118 = *v117;
                if (v122 < *v117)
                {
                  *(a1 + 176) = v122 + 1;
                  v119 = *&v117[2 * v122 + 2];
                  goto LABEL_233;
                }

                if (v118 == *(a1 + 180))
                {
LABEL_229:
                  google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 168));
                  v117 = *(a1 + 184);
                  v118 = *v117;
                }

                *v117 = v118 + 1;
                v119 = MEMORY[0x277C8F050](*(a1 + 168));
                v120 = *(a1 + 176);
                v121 = *(a1 + 184) + 8 * v120;
                *(a1 + 176) = v120 + 1;
                *(v121 + 8) = v119;
                v116 = v167;
LABEL_233:
                v115 = sub_275E5B9DC(a3, v119, v116);
                v167 = v115;
                if (!v115)
                {
                  goto LABEL_324;
                }

                if (*a3 <= v115 || *v115 != 666)
                {
                  goto LABEL_291;
                }
              }

            case 0x24u:
              if (v8 != 34)
              {
                goto LABEL_298;
              }

              *(a1 + 16) |= 0x40000u;
              v10 = *(a1 + 408);
              if (v10)
              {
                goto LABEL_289;
              }

              v80 = *(a1 + 8);
              if (v80)
              {
                v80 = *(v80 & 0xFFFFFFFFFFFFFFFELL);
              }

              v10 = MEMORY[0x277C8F050](v80);
              *(a1 + 408) = v10;
              goto LABEL_288;
            case 0x25u:
              if (v8 != 42)
              {
                goto LABEL_298;
              }

              *(a1 + 16) |= 2u;
              goto LABEL_95;
            case 0x26u:
              if (v8 != 50)
              {
                goto LABEL_298;
              }

              *(a1 + 16) |= 4u;
LABEL_95:
              google::protobuf::internal::ArenaStringPtr::Mutable();
              v53 = google::protobuf::internal::InlineGreedyStringParser();
              goto LABEL_290;
            case 0x27u:
              if (v8 != 58)
              {
                goto LABEL_298;
              }

              *(a1 + 16) |= 0x80000u;
              v10 = *(a1 + 416);
              if (v10)
              {
                goto LABEL_289;
              }

              v134 = *(a1 + 8);
              if (v134)
              {
                v134 = *(v134 & 0xFFFFFFFFFFFFFFFELL);
              }

              v10 = MEMORY[0x277C8F050](v134);
              *(a1 + 416) = v10;
LABEL_288:
              v7 = v167;
LABEL_289:
              v53 = sub_275E5B9DC(a3, v10, v7);
              goto LABEL_290;
            case 0x28u:
              if (v8 != 64)
              {
                goto LABEL_298;
              }

              v5 |= 0x40000000u;
              v144 = (v7 + 1);
              v143 = *v7;
              if ((v143 & 0x8000000000000000) == 0)
              {
                goto LABEL_297;
              }

              v145 = *v144;
              v143 = (v145 << 7) + v143 - 128;
              if (v145 < 0)
              {
                v165 = google::protobuf::internal::VarintParseSlow64(v7, v143);
                v167 = v165;
                *(a1 + 459) = v166 != 0;
                if (!v165)
                {
                  goto LABEL_324;
                }
              }

              else
              {
                v144 = (v7 + 2);
LABEL_297:
                v167 = v144;
                *(a1 + 459) = v143 != 0;
              }

              goto LABEL_291;
            case 0x29u:
              if (v8 != 72)
              {
                goto LABEL_298;
              }

              v5 |= 0x8000000u;
              v31 = (v7 + 1);
              v30 = *v7;
              if ((v30 & 0x8000000000000000) == 0)
              {
                goto LABEL_47;
              }

              v32 = *v31;
              v30 = (v32 << 7) + v30 - 128;
              if (v32 < 0)
              {
                v147 = google::protobuf::internal::VarintParseSlow64(v7, v30);
                v167 = v147;
                *(a1 + 456) = v148 != 0;
                if (!v147)
                {
                  goto LABEL_324;
                }
              }

              else
              {
                v31 = (v7 + 2);
LABEL_47:
                v167 = v31;
                *(a1 + 456) = v30 != 0;
              }

              goto LABEL_291;
            case 0x2Au:
              if (v8 != 82)
              {
                goto LABEL_298;
              }

              v107 = v7 - 2;
              while (1)
              {
                v108 = (v107 + 2);
                v167 = (v107 + 2);
                v109 = *(a1 + 208);
                if (!v109)
                {
                  goto LABEL_216;
                }

                v114 = *(a1 + 200);
                v110 = *v109;
                if (v114 < *v109)
                {
                  *(a1 + 200) = v114 + 1;
                  v111 = *&v109[2 * v114 + 2];
                  goto LABEL_220;
                }

                if (v110 == *(a1 + 204))
                {
LABEL_216:
                  google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 192));
                  v109 = *(a1 + 208);
                  v110 = *v109;
                }

                *v109 = v110 + 1;
                v111 = MEMORY[0x277C8F050](*(a1 + 192));
                v112 = *(a1 + 200);
                v113 = *(a1 + 208) + 8 * v112;
                *(a1 + 200) = v112 + 1;
                *(v113 + 8) = v111;
                v108 = v167;
LABEL_220:
                v107 = sub_275E5B9DC(a3, v111, v108);
                v167 = v107;
                if (!v107)
                {
                  goto LABEL_324;
                }

                if (*a3 <= v107 || *v107 != 722)
                {
                  goto LABEL_291;
                }
              }

            case 0x2Bu:
              if (v8 != 90)
              {
                goto LABEL_298;
              }

              v22 = v7 - 2;
              while (1)
              {
                v23 = (v22 + 2);
                v167 = (v22 + 2);
                v24 = *(a1 + 232);
                if (!v24)
                {
                  goto LABEL_33;
                }

                v29 = *(a1 + 224);
                v25 = *v24;
                if (v29 < *v24)
                {
                  *(a1 + 224) = v29 + 1;
                  v26 = *&v24[2 * v29 + 2];
                  goto LABEL_37;
                }

                if (v25 == *(a1 + 228))
                {
LABEL_33:
                  google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 216));
                  v24 = *(a1 + 232);
                  v25 = *v24;
                }

                *v24 = v25 + 1;
                v26 = MEMORY[0x277C8F050](*(a1 + 216));
                v27 = *(a1 + 224);
                v28 = *(a1 + 232) + 8 * v27;
                *(a1 + 224) = v27 + 1;
                *(v28 + 8) = v26;
                v23 = v167;
LABEL_37:
                v22 = sub_275E5B9DC(a3, v26, v23);
                v167 = v22;
                if (!v22)
                {
                  goto LABEL_324;
                }

                if (*a3 <= v22 || *v22 != 730)
                {
                  goto LABEL_291;
                }
              }

            case 0x2Cu:
              if (v8 != 98)
              {
                goto LABEL_298;
              }

              v14 = v7 - 2;
              break;
            case 0x2Du:
              if (v8 != 106)
              {
                goto LABEL_298;
              }

              *(a1 + 16) |= 0x100000u;
              v54 = *(a1 + 424);
              if (!v54)
              {
                v55 = *(a1 + 8);
                if (v55)
                {
                  v55 = *(v55 & 0xFFFFFFFFFFFFFFFELL);
                }

                v54 = sub_275E1FF68(v55);
                *(a1 + 424) = v54;
                v7 = v167;
              }

              v53 = sub_275E5C53C(a3, v54, v7);
              goto LABEL_290;
            default:
LABEL_298:
              if (v8)
              {
                v146 = (v8 & 7) == 4;
              }

              else
              {
                v146 = 1;
              }

              if (v146)
              {
                *(a3 + 80) = v8 - 1;
                goto LABEL_2;
              }

              if ((*(a1 + 8) & 1) == 0)
              {
                sub_275E22260((a1 + 8));
              }

              v53 = google::protobuf::internal::UnknownFieldParse();
LABEL_290:
              v167 = v53;
              if (!v53)
              {
LABEL_324:
                v167 = 0;
                goto LABEL_2;
              }

LABEL_291:
              if (sub_275E221E8(a3, &v167, *(a3 + 92)))
              {
                goto LABEL_2;
              }

              continue;
          }

          while (1)
          {
            v15 = (v14 + 2);
            v167 = (v14 + 2);
            v16 = *(a1 + 256);
            if (!v16)
            {
              goto LABEL_20;
            }

            v21 = *(a1 + 248);
            v17 = *v16;
            if (v21 < *v16)
            {
              *(a1 + 248) = v21 + 1;
              v18 = *&v16[2 * v21 + 2];
              goto LABEL_24;
            }

            if (v17 == *(a1 + 252))
            {
LABEL_20:
              google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 240));
              v16 = *(a1 + 256);
              v17 = *v16;
            }

            *v16 = v17 + 1;
            v18 = MEMORY[0x277C8F050](*(a1 + 240));
            v19 = *(a1 + 248);
            v20 = *(a1 + 256) + 8 * v19;
            *(a1 + 248) = v19 + 1;
            *(v20 + 8) = v18;
            v15 = v167;
LABEL_24:
            v14 = sub_275E5B9DC(a3, v18, v15);
            v167 = v14;
            if (!v14)
            {
              goto LABEL_324;
            }

            if (*a3 <= v14 || *v14 != 738)
            {
              goto LABEL_291;
            }
          }
        }

        v7 = (v167 + 2);
      }

      break;
    }

    v167 = v7;
    goto LABEL_7;
  }

LABEL_2:
  *(a1 + 16) |= v5;
  return v167;
}