uint64_t sub_27647E558(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 8);
  if (v4)
  {
    result = sub_2763D4F88((result + 8), (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  v5 = *(a2 + 24);
  if (v5)
  {
    v6 = *(v3 + 24);
    sub_2762E9624((v3 + 24), v6 + v5);
    v7 = *(v3 + 32);
    *(v3 + 24) += *(a2 + 24);
    result = memcpy((v7 + 4 * v6), *(a2 + 32), 4 * *(a2 + 24));
  }

  v8 = *(a2 + 16);
  if ((v8 & 0x1F) != 0)
  {
    v9 = MEMORY[0x277D80A18];
    if (v8)
    {
      *(v3 + 16) |= 1u;
      v10 = *(v3 + 40);
      if (!v10)
      {
        v11 = *(v3 + 8);
        if (v11)
        {
          v11 = *(v11 & 0xFFFFFFFFFFFFFFFELL);
        }

        v10 = MEMORY[0x277C97B90](v11);
        *(v3 + 40) = v10;
      }

      if (*(a2 + 40))
      {
        v12 = *(a2 + 40);
      }

      else
      {
        v12 = v9;
      }

      result = TSP::Reference::MergeFrom(v10, v12);
      if ((v8 & 2) == 0)
      {
LABEL_8:
        if ((v8 & 4) == 0)
        {
          goto LABEL_9;
        }

        goto LABEL_30;
      }
    }

    else if ((v8 & 2) == 0)
    {
      goto LABEL_8;
    }

    *(v3 + 16) |= 2u;
    v13 = *(v3 + 48);
    if (!v13)
    {
      v14 = *(v3 + 8);
      if (v14)
      {
        v14 = *(v14 & 0xFFFFFFFFFFFFFFFELL);
      }

      v13 = MEMORY[0x277C97B90](v14);
      *(v3 + 48) = v13;
    }

    if (*(a2 + 48))
    {
      v15 = *(a2 + 48);
    }

    else
    {
      v15 = v9;
    }

    result = TSP::Reference::MergeFrom(v13, v15);
    if ((v8 & 4) == 0)
    {
LABEL_9:
      if ((v8 & 8) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_38;
    }

LABEL_30:
    *(v3 + 16) |= 4u;
    v16 = *(v3 + 56);
    if (!v16)
    {
      v17 = *(v3 + 8);
      if (v17)
      {
        v17 = *(v17 & 0xFFFFFFFFFFFFFFFELL);
      }

      v16 = sub_27649DBD8(v17);
      *(v3 + 56) = v16;
    }

    if (*(a2 + 56))
    {
      v18 = *(a2 + 56);
    }

    else
    {
      v18 = &unk_2812F26C0;
    }

    result = sub_2764801BC(v16, v18);
    if ((v8 & 8) == 0)
    {
LABEL_10:
      if ((v8 & 0x10) == 0)
      {
LABEL_12:
        *(v3 + 16) |= v8;
        return result;
      }

LABEL_11:
      *(v3 + 68) = *(a2 + 68);
      goto LABEL_12;
    }

LABEL_38:
    *(v3 + 64) = *(a2 + 64);
    if ((v8 & 0x10) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  return result;
}

uint64_t sub_27647E700(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 8);
  if (v4)
  {
    result = sub_2763D4F88((result + 8), (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  v5 = *(a2 + 16);
  if ((v5 & 0xF) == 0)
  {
    return result;
  }

  v6 = MEMORY[0x277D80A18];
  if ((v5 & 1) == 0)
  {
    if ((v5 & 2) == 0)
    {
      goto LABEL_6;
    }

LABEL_17:
    *(v3 + 16) |= 2u;
    v10 = *(v3 + 32);
    if (!v10)
    {
      v11 = *(v3 + 8);
      if (v11)
      {
        v11 = *(v11 & 0xFFFFFFFFFFFFFFFELL);
      }

      v10 = sub_276406958(v11, a2);
      *(v3 + 32) = v10;
    }

    if (*(a2 + 32))
    {
      v12 = *(a2 + 32);
    }

    else
    {
      v12 = &qword_2812F0190;
    }

    result = sub_27640038C(v10, v12);
    if ((v5 & 4) == 0)
    {
LABEL_7:
      if ((v5 & 8) == 0)
      {
        return result;
      }

      goto LABEL_33;
    }

    goto LABEL_25;
  }

  *(v3 + 16) |= 1u;
  v7 = *(v3 + 24);
  if (!v7)
  {
    v8 = *(v3 + 8);
    if (v8)
    {
      v8 = *(v8 & 0xFFFFFFFFFFFFFFFELL);
    }

    v7 = MEMORY[0x277C97B90](v8);
    *(v3 + 24) = v7;
  }

  if (*(a2 + 24))
  {
    v9 = *(a2 + 24);
  }

  else
  {
    v9 = v6;
  }

  result = TSP::Reference::MergeFrom(v7, v9);
  if ((v5 & 2) != 0)
  {
    goto LABEL_17;
  }

LABEL_6:
  if ((v5 & 4) == 0)
  {
    goto LABEL_7;
  }

LABEL_25:
  *(v3 + 16) |= 4u;
  v13 = *(v3 + 40);
  if (!v13)
  {
    v14 = *(v3 + 8);
    if (v14)
    {
      v14 = *(v14 & 0xFFFFFFFFFFFFFFFELL);
    }

    v13 = MEMORY[0x277C97B90](v14);
    *(v3 + 40) = v13;
  }

  if (*(a2 + 40))
  {
    v15 = *(a2 + 40);
  }

  else
  {
    v15 = v6;
  }

  result = TSP::Reference::MergeFrom(v13, v15);
  if ((v5 & 8) != 0)
  {
LABEL_33:
    *(v3 + 16) |= 8u;
    v16 = *(v3 + 48);
    if (!v16)
    {
      v17 = *(v3 + 8);
      if (v17)
      {
        v17 = *(v17 & 0xFFFFFFFFFFFFFFFELL);
      }

      v16 = MEMORY[0x277C97B90](v17);
      *(v3 + 48) = v16;
    }

    if (*(a2 + 48))
    {
      v18 = *(a2 + 48);
    }

    else
    {
      v18 = v6;
    }

    return TSP::Reference::MergeFrom(v16, v18);
  }

  return result;
}

google::protobuf::UnknownFieldSet *sub_27647E898(google::protobuf::UnknownFieldSet *result, google::protobuf::UnknownFieldSet *a2)
{
  if (a2 != result)
  {
    v4 = result;
    sub_27647BB5C(result);

    return sub_27647DE74(v4, a2);
  }

  return result;
}

uint64_t sub_27647E8E4(uint64_t a1)
{
  if ((~*(a1 + 16) & 0x813) != 0)
  {
    return 0;
  }

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

  v6 = *(a1 + 56);
  while (v6 >= 1)
  {
    v7 = v6 - 1;
    v8 = TSP::Reference::IsInitialized(*(*(a1 + 64) + 8 * v6));
    v6 = v7;
    if ((v8 & 1) == 0)
    {
      return 0;
    }
  }

  v9 = *(a1 + 80);
  while (v9 >= 1)
  {
    v10 = v9 - 1;
    v11 = TSP::Reference::IsInitialized(*(*(a1 + 88) + 8 * v9));
    v9 = v10;
    if ((v11 & 1) == 0)
    {
      return 0;
    }
  }

  v12 = *(a1 + 104);
  while (v12 >= 1)
  {
    v13 = v12 - 1;
    v14 = TSP::Reference::IsInitialized(*(*(a1 + 112) + 8 * v12));
    v12 = v13;
    if ((v14 & 1) == 0)
    {
      return 0;
    }
  }

  v15 = *(a1 + 128);
  while (v15 >= 1)
  {
    v16 = v15 - 1;
    v17 = TSP::Reference::IsInitialized(*(*(a1 + 136) + 8 * v15));
    result = 0;
    v15 = v16;
    if ((v17 & 1) == 0)
    {
      return result;
    }
  }

  v18 = *(a1 + 152);
  while (v18 >= 1)
  {
    v19 = v18 - 1;
    v20 = TSP::Reference::IsInitialized(*(*(a1 + 160) + 8 * v18));
    result = 0;
    v18 = v19;
    if ((v20 & 1) == 0)
    {
      return result;
    }
  }

  v21 = *(a1 + 16);
  if (v21)
  {
    result = TSD::DrawableArchive::IsInitialized(*(a1 + 168));
    if (!result)
    {
      return result;
    }

    v21 = *(a1 + 16);
  }

  if ((v21 & 2) != 0)
  {
    result = sub_27647EB04(*(a1 + 176));
    if (!result)
    {
      return result;
    }

    v21 = *(a1 + 16);
  }

  if ((v21 & 4) != 0)
  {
    result = TSP::Reference::IsInitialized(*(a1 + 184));
    if (!result)
    {
      return result;
    }

    v21 = *(a1 + 16);
  }

  if ((v21 & 8) != 0)
  {
    result = sub_27647EB88(*(a1 + 192));
    if (!result)
    {
      return result;
    }

    v21 = *(a1 + 16);
  }

  if ((v21 & 0x10) != 0)
  {
    result = sub_2764004DC(*(a1 + 200));
    if (!result)
    {
      return result;
    }

    v21 = *(a1 + 16);
  }

  if ((v21 & 0x20) != 0)
  {
    result = TSP::SparseReferenceArray::IsInitialized(*(a1 + 208));
    if (!result)
    {
      return result;
    }

    v21 = *(a1 + 16);
  }

  if ((v21 & 0x40) != 0)
  {
    result = TSP::SparseReferenceArray::IsInitialized(*(a1 + 216));
    if (!result)
    {
      return result;
    }

    v21 = *(a1 + 16);
  }

  if ((v21 & 0x80) != 0)
  {
    result = TSP::Reference::IsInitialized(*(a1 + 224));
    if (!result)
    {
      return result;
    }

    v21 = *(a1 + 16);
  }

  if ((v21 & 0x100) != 0)
  {
    result = TSP::Reference::IsInitialized(*(a1 + 232));
    if (!result)
    {
      return result;
    }

    v21 = *(a1 + 16);
  }

  if ((v21 & 0x200) != 0)
  {
    result = TSP::Point::IsInitialized(*(a1 + 240));
    if (!result)
    {
      return result;
    }

    v21 = *(a1 + 16);
  }

  if ((v21 & 0x400) == 0)
  {
    return 1;
  }

  result = TSP::Reference::IsInitialized(*(a1 + 248));
  if (result)
  {
    return 1;
  }

  return result;
}

uint64_t sub_27647EB04(uint64_t a1)
{
  v1 = *(a1 + 16);
  if ((v1 & 2) == 0)
  {
    return 0;
  }

  if ((v1 & 1) == 0)
  {
    goto LABEL_4;
  }

  result = TSP::Reference::IsInitialized(*(a1 + 40));
  if (!result)
  {
    return result;
  }

  v4 = *(a1 + 16);
  if ((v4 & 2) != 0)
  {
LABEL_4:
    result = TSP::Reference::IsInitialized(*(a1 + 48));
    if (!result)
    {
      return result;
    }

    v4 = *(a1 + 16);
  }

  return (v4 & 4) == 0 || (~*(*(a1 + 56) + 16) & 3) == 0;
}

uint64_t sub_27647EB88(uint64_t a1)
{
  v1 = *(a1 + 16);
  if ((~v1 & 0xE) != 0)
  {
    return 0;
  }

  if (v1)
  {
    result = TSP::Reference::IsInitialized(*(a1 + 24));
    if (!result)
    {
      return result;
    }

    v1 = *(a1 + 16);
  }

  if ((v1 & 2) != 0)
  {
    result = sub_2764004DC(*(a1 + 32));
    if (!result)
    {
      return result;
    }

    v1 = *(a1 + 16);
  }

  if ((v1 & 4) != 0)
  {
    result = TSP::Reference::IsInitialized(*(a1 + 40));
    if (!result)
    {
      return result;
    }

    v1 = *(a1 + 16);
  }

  if ((v1 & 8) == 0)
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

uint64_t *sub_27647EC4C(uint64_t *a1)
{
  sub_27647EC80(a1);
  sub_2763941F4(a1 + 1);
  return a1;
}

uint64_t *sub_27647EC80(uint64_t *result)
{
  if (result != &qword_2812F2618)
  {
    v1 = result;
    v2 = result[3];
    if (v2)
    {
      TSP::Reference::~Reference(v2);
      MEMORY[0x277C98580]();
    }

    v3 = v1[4];
    if (v3)
    {
      v4 = sub_2763FFD8C(v3);
      MEMORY[0x277C98580](v4, 0x10A1C40DFBAE579);
    }

    v5 = v1[5];
    if (v5)
    {
      TSP::Reference::~Reference(v5);
      MEMORY[0x277C98580]();
    }

    result = v1[6];
    if (result)
    {
      TSP::Reference::~Reference(result);

      JUMPOUT(0x277C98580);
    }
  }

  return result;
}

void sub_27647ED38(uint64_t *a1)
{
  sub_27647EC4C(a1);

  JUMPOUT(0x277C98580);
}

google::protobuf::internal *sub_27647ED78(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v22 = a2;
  for (i = *(a3 + 92); (sub_2763D4D98(a3, &v22, i) & 1) == 0; i = *(a3 + 92))
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
          v14 = *(a1 + 40);
          if (!v14)
          {
            v17 = *(a1 + 8);
            if (v17)
            {
              v17 = *(v17 & 0xFFFFFFFFFFFFFFFELL);
            }

            v14 = MEMORY[0x277C97B90](v17);
            *(a1 + 40) = v14;
LABEL_36:
            v6 = v22;
          }

LABEL_37:
          v13 = sub_2764ADCBC(a3, v14, v6);
          goto LABEL_45;
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

          v14 = MEMORY[0x277C97B90](v15);
          *(a1 + 48) = v14;
          goto LABEL_36;
        }

        goto LABEL_37;
      }
    }

    else if (v9 == 1)
    {
      if (v7 == 10)
      {
        *(a1 + 16) |= 1u;
        v14 = *(a1 + 24);
        if (!v14)
        {
          v16 = *(a1 + 8);
          if (v16)
          {
            v16 = *(v16 & 0xFFFFFFFFFFFFFFFELL);
          }

          v14 = MEMORY[0x277C97B90](v16);
          *(a1 + 24) = v14;
          goto LABEL_36;
        }

        goto LABEL_37;
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

        v11 = sub_276406958(v12, 0);
        *(a1 + 32) = v11;
        v6 = v22;
      }

      v13 = sub_2764AF400(a3, v11, v6);
      goto LABEL_45;
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
      sub_2763D4E10((a1 + 8));
    }

    v13 = google::protobuf::internal::UnknownFieldParse();
LABEL_45:
    v22 = v13;
    if (!v13)
    {
      return 0;
    }
  }

  return v22;
}

unsigned __int8 *sub_27647EFC4(uint64_t a1, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
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

    a2 = TSP::Reference::_InternalSerialize(v6, v8, a3);
    if ((v5 & 2) == 0)
    {
LABEL_3:
      if ((v5 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_26;
    }
  }

  else if ((v5 & 2) == 0)
  {
    goto LABEL_3;
  }

  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v12 = *(a1 + 32);
  *a2 = 18;
  v13 = *(v12 + 20);
  if (v13 > 0x7F)
  {
    a2[1] = v13 | 0x80;
    v15 = v13 >> 7;
    if (v13 >> 14)
    {
      v14 = a2 + 3;
      do
      {
        *(v14 - 1) = v15 | 0x80;
        v16 = v15 >> 7;
        ++v14;
        v17 = v15 >> 14;
        v15 >>= 7;
      }

      while (v17);
      *(v14 - 1) = v16;
    }

    else
    {
      a2[2] = v15;
      v14 = a2 + 3;
    }
  }

  else
  {
    a2[1] = v13;
    v14 = a2 + 2;
  }

  a2 = sub_2763FFFEC(v12, v14, a3);
  if ((v5 & 4) == 0)
  {
LABEL_4:
    if ((v5 & 8) == 0)
    {
      goto LABEL_46;
    }

    goto LABEL_36;
  }

LABEL_26:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v18 = *(a1 + 40);
  *a2 = 26;
  v19 = *(v18 + 5);
  if (v19 > 0x7F)
  {
    a2[1] = v19 | 0x80;
    v21 = v19 >> 7;
    if (v19 >> 14)
    {
      v20 = a2 + 3;
      do
      {
        *(v20 - 1) = v21 | 0x80;
        v22 = v21 >> 7;
        ++v20;
        v23 = v21 >> 14;
        v21 >>= 7;
      }

      while (v23);
      *(v20 - 1) = v22;
    }

    else
    {
      a2[2] = v21;
      v20 = a2 + 3;
    }
  }

  else
  {
    a2[1] = v19;
    v20 = a2 + 2;
  }

  a2 = TSP::Reference::_InternalSerialize(v18, v20, a3);
  if ((v5 & 8) != 0)
  {
LABEL_36:
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v24 = *(a1 + 48);
    *a2 = 34;
    v25 = *(v24 + 5);
    if (v25 > 0x7F)
    {
      a2[1] = v25 | 0x80;
      v27 = v25 >> 7;
      if (v25 >> 14)
      {
        v26 = a2 + 3;
        do
        {
          *(v26 - 1) = v27 | 0x80;
          v28 = v27 >> 7;
          ++v26;
          v29 = v27 >> 14;
          v27 >>= 7;
        }

        while (v29);
        *(v26 - 1) = v28;
      }

      else
      {
        a2[2] = v27;
        v26 = a2 + 3;
      }
    }

    else
    {
      a2[1] = v25;
      v26 = a2 + 2;
    }

    a2 = TSP::Reference::_InternalSerialize(v24, v26, a3);
  }

LABEL_46:
  v30 = *(a1 + 8);
  if ((v30 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v30 & 0xFFFFFFFFFFFFFFFELL) + 8, a2, a3);
}

uint64_t sub_27647F28C(uint64_t a1)
{
  v2 = *(a1 + 16);
  if ((v2 & 2) != 0)
  {
    v4 = sub_276400210(*(a1 + 32));
    v3 = v4 + ((9 * (__clz(v4 | 1) ^ 0x1F) + 73) >> 6) + 1;
    v2 = *(a1 + 16);
    if ((v2 & 4) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v3 = 0;
  if ((v2 & 4) != 0)
  {
LABEL_5:
    v5 = TSP::Reference::ByteSizeLong(*(a1 + 40));
    v3 += v5 + ((9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6) + 1;
    v2 = *(a1 + 16);
  }

LABEL_6:
  if ((v2 & 8) != 0)
  {
    v6 = TSP::Reference::ByteSizeLong(*(a1 + 48));
    v3 += v6 + ((9 * (__clz(v6 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  return v3;
}

uint64_t sub_27647F354(uint64_t a1)
{
  if ((~*(a1 + 16) & 0xE) != 0)
  {
    v5 = sub_27647F28C(a1);
  }

  else
  {
    v2 = sub_276400210(*(a1 + 32));
    v3 = TSP::Reference::ByteSizeLong(*(a1 + 40));
    v4 = TSP::Reference::ByteSizeLong(*(a1 + 48));
    v5 = v2 + v3 + v4 + ((9 * (__clz(v2 | 1) ^ 0x1F) + 73) >> 6) + ((9 * (__clz(v3 | 1) ^ 0x1F) + 73) >> 6) + ((9 * (__clz(v4 | 1) ^ 0x1F) + 73) >> 6) + 3;
  }

  if (*(a1 + 16))
  {
    v6 = TSP::Reference::ByteSizeLong(*(a1 + 24));
    v5 += v6 + ((9 * (__clz(v6 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  if (*(a1 + 8))
  {

    return google::protobuf::internal::ComputeUnknownFieldsSize();
  }

  else
  {
    *(a1 + 20) = v5;
    return v5;
  }
}

uint64_t sub_27647F498(uint64_t a1, void *lpsrc)
{
  v4 = __dynamic_cast(lpsrc, MEMORY[0x277D80A98], &unk_288527EA0, 0);
  if (v4)
  {

    return sub_27647E700(a1, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, a1);
  }
}

google::protobuf::UnknownFieldSet *sub_27647F540(google::protobuf::UnknownFieldSet *result, google::protobuf::UnknownFieldSet *a2)
{
  if (a2 != result)
  {
    v4 = result;
    sub_27647BE10(result);

    return sub_27647F498(v4, a2);
  }

  return result;
}

uint64_t sub_27647F5C4(uint64_t a1, uint64_t a2)
{
  *(a1 + 32) = a2;
  *a1 = &unk_288527658;
  *(a1 + 8) = a2;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  if (atomic_load_explicit(dword_2812EE3C0, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(a1 + 56) = 0u;
  *(a1 + 40) = 0u;
  return a1;
}

void sub_27647F644(_Unwind_Exception *exception_object)
{
  if (*(v1 + 28) >= 1)
  {
    sub_2764AB658(v2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_27647F664(uint64_t a1)
{
  if (a1 != &unk_2812F2650)
  {
    v2 = *(a1 + 40);
    if (v2)
    {
      TSP::Reference::~Reference(v2);
      MEMORY[0x277C98580]();
    }

    v3 = *(a1 + 48);
    if (v3)
    {
      TSP::Reference::~Reference(v3);
      MEMORY[0x277C98580]();
    }

    v4 = *(a1 + 56);
    if (v4)
    {
      v5 = sub_276480938(v4);
      MEMORY[0x277C98580](v5, 0x10A1C40AF6B1A42);
    }
  }

  sub_2763941F4((a1 + 8));
  if (*(a1 + 28) >= 1)
  {
    v6 = *(a1 + 32);
    v8 = *(v6 - 8);
    v7 = (v6 - 8);
    if (!v8)
    {
      operator delete(v7);
    }
  }

  return a1;
}

void sub_27647F71C(uint64_t a1)
{
  sub_27647F664(a1);

  JUMPOUT(0x277C98580);
}

google::protobuf::UnknownFieldSet *sub_27647F75C(uint64_t a1)
{
  sub_2764778D0(a1 + 24);
  sub_2764778D0(a1 + 48);
  result = sub_27649E458((a1 + 72));
  if ((*(a1 + 16) & 3) != 0)
  {
    *(a1 + 100) = 0;
    *(a1 + 96) = 0;
  }

  v4 = *(a1 + 8);
  v3 = a1 + 8;
  *(v3 + 8) = 0;
  if (v4)
  {

    return sub_2763D4FD4(v3);
  }

  return result;
}

google::protobuf::internal *sub_27647F7D4(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v36 = a2;
  v5 = 0;
  if (sub_2763D4D98(a3, &v36, *(a3 + 92)))
  {
    goto LABEL_2;
  }

  while (1)
  {
    v7 = (v36 + 1);
    v8 = *v36;
    if ((*v36 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    v9 = v8 + (*v7 << 7);
    v8 = v9 - 128;
    if ((*v7 & 0x80000000) == 0)
    {
      v7 = (v36 + 2);
LABEL_6:
      v36 = v7;
      goto LABEL_7;
    }

    TagFallback = google::protobuf::internal::ReadTagFallback(v36, (v9 - 128));
    v36 = TagFallback;
    if (!TagFallback)
    {
      goto LABEL_75;
    }

    v7 = TagFallback;
    v8 = v30;
LABEL_7:
    v10 = v8 >> 3;
    if (v8 >> 3 <= 3)
    {
      break;
    }

    if (v10 == 4)
    {
      if (v8 != 32)
      {
        goto LABEL_64;
      }

      v5 |= 8u;
      v22 = (v7 + 1);
      LODWORD(v23) = *v7;
      if ((*v7 & 0x80000000) == 0)
      {
        goto LABEL_42;
      }

      v24 = *v22;
      v23 = (v23 + (v24 << 7) - 128);
      if ((v24 & 0x80000000) == 0)
      {
        v22 = (v7 + 2);
LABEL_42:
        v36 = v22;
        *(a1 + 64) = v23;
        goto LABEL_72;
      }

      v31 = google::protobuf::internal::VarintParseSlow32(v7, v23);
      v36 = v31;
      *(a1 + 64) = v32;
      if (!v31)
      {
        goto LABEL_75;
      }
    }

    else
    {
      if (v10 == 5)
      {
        if (v8 == 42)
        {
          *(a1 + 16) |= 4u;
          v27 = *(a1 + 56);
          if (!v27)
          {
            v28 = *(a1 + 8);
            if (v28)
            {
              v28 = *(v28 & 0xFFFFFFFFFFFFFFFELL);
            }

            v27 = sub_27649DBD8(v28);
            *(a1 + 56) = v27;
            v7 = v36;
          }

          v26 = sub_2764B0AB4(a3, v27, v7);
          goto LABEL_71;
        }

LABEL_64:
        if (v8)
        {
          v35 = (v8 & 7) == 4;
        }

        else
        {
          v35 = 1;
        }

        if (v35)
        {
          *(a3 + 80) = v8 - 1;
          goto LABEL_2;
        }

        if ((*(a1 + 8) & 1) == 0)
        {
          sub_2763D4E10((a1 + 8));
        }

        v26 = google::protobuf::internal::UnknownFieldParse();
LABEL_71:
        v36 = v26;
        if (!v26)
        {
          goto LABEL_75;
        }

        goto LABEL_72;
      }

      if (v10 != 6 || v8 != 48)
      {
        goto LABEL_64;
      }

      v5 |= 0x10u;
      v17 = (v7 + 1);
      LODWORD(v18) = *v7;
      if ((*v7 & 0x80000000) == 0)
      {
        goto LABEL_32;
      }

      v19 = *v17;
      v18 = (v18 + (v19 << 7) - 128);
      if ((v19 & 0x80000000) == 0)
      {
        v17 = (v7 + 2);
LABEL_32:
        v36 = v17;
        *(a1 + 68) = v18;
        goto LABEL_72;
      }

      v33 = google::protobuf::internal::VarintParseSlow32(v7, v18);
      v36 = v33;
      *(a1 + 68) = v34;
      if (!v33)
      {
        goto LABEL_75;
      }
    }

LABEL_72:
    if (sub_2763D4D98(a3, &v36, *(a3 + 92)))
    {
      goto LABEL_2;
    }
  }

  if (v10 == 1)
  {
    if (v8 != 10)
    {
      goto LABEL_64;
    }

    *(a1 + 16) |= 1u;
    v20 = *(a1 + 40);
    if (!v20)
    {
      v21 = *(a1 + 8);
      if (v21)
      {
        v21 = *(v21 & 0xFFFFFFFFFFFFFFFELL);
      }

      v20 = MEMORY[0x277C97B90](v21);
      *(a1 + 40) = v20;
      goto LABEL_48;
    }

LABEL_49:
    v26 = sub_2764ADCBC(a3, v20, v7);
    goto LABEL_71;
  }

  if (v10 == 2)
  {
    if (v8 != 18)
    {
      goto LABEL_64;
    }

    *(a1 + 16) |= 2u;
    v20 = *(a1 + 48);
    if (!v20)
    {
      v25 = *(a1 + 8);
      if (v25)
      {
        v25 = *(v25 & 0xFFFFFFFFFFFFFFFELL);
      }

      v20 = MEMORY[0x277C97B90](v25);
      *(a1 + 48) = v20;
LABEL_48:
      v7 = v36;
      goto LABEL_49;
    }

    goto LABEL_49;
  }

  if (v10 != 3)
  {
    goto LABEL_64;
  }

  if (v8 != 24)
  {
    if (v8 == 26)
    {
      v26 = google::protobuf::internal::PackedUInt32Parser();
      goto LABEL_71;
    }

    goto LABEL_64;
  }

  v11 = v7 - 1;
  while (1)
  {
    v36 = (v11 + 1);
    v12 = v11[1];
    if (v11[1] < 0)
    {
      v13 = v12 + (v11[2] << 7);
      v12 = v13 - 128;
      if (v11[2] < 0)
      {
        v11 = google::protobuf::internal::VarintParseSlow32((v11 + 1), (v13 - 128));
        v12 = v14;
      }

      else
      {
        v11 += 3;
      }
    }

    else
    {
      v11 += 2;
    }

    v36 = v11;
    v15 = *(a1 + 24);
    if (v15 == *(a1 + 28))
    {
      v16 = v15 + 1;
      sub_2762E9624((a1 + 24), v15 + 1);
      *(*(a1 + 32) + 4 * v15) = v12;
      v11 = v36;
    }

    else
    {
      *(*(a1 + 32) + 4 * v15) = v12;
      v16 = v15 + 1;
    }

    *(a1 + 24) = v16;
    if (!v11)
    {
      break;
    }

    if (*a3 <= v11 || *v11 != 24)
    {
      goto LABEL_72;
    }
  }

LABEL_75:
  v36 = 0;
LABEL_2:
  *(a1 + 16) |= v5;
  return v36;
}

unsigned __int8 *sub_27647FBAC(uint64_t a1, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *this)
{
  v5 = *(a1 + 16);
  if (v5)
  {
    if (*this <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
    }

    v6 = *(a1 + 40);
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

    a2 = TSP::Reference::_InternalSerialize(v6, v8, this);
  }

  if ((v5 & 2) != 0)
  {
    if (*this <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
    }

    v12 = *(a1 + 48);
    *a2 = 18;
    v13 = *(v12 + 5);
    if (v13 > 0x7F)
    {
      a2[1] = v13 | 0x80;
      v15 = v13 >> 7;
      if (v13 >> 14)
      {
        v14 = a2 + 3;
        do
        {
          *(v14 - 1) = v15 | 0x80;
          v16 = v15 >> 7;
          ++v14;
          v17 = v15 >> 14;
          v15 >>= 7;
        }

        while (v17);
        *(v14 - 1) = v16;
      }

      else
      {
        a2[2] = v15;
        v14 = a2 + 3;
      }
    }

    else
    {
      a2[1] = v13;
      v14 = a2 + 2;
    }

    a2 = TSP::Reference::_InternalSerialize(v12, v14, this);
  }

  v18 = *(a1 + 24);
  if (v18 >= 1)
  {
    for (i = 0; i != v18; ++i)
    {
      if (*this <= a2)
      {
        a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
      }

      v20 = *(*(a1 + 32) + 4 * i);
      *a2 = 24;
      if (v20 > 0x7F)
      {
        a2[1] = v20 | 0x80;
        v21 = v20 >> 7;
        if (v20 >> 14)
        {
          a2 += 3;
          do
          {
            *(a2 - 1) = v21 | 0x80;
            v22 = v21 >> 7;
            ++a2;
            v23 = v21 >> 14;
            v21 >>= 7;
          }

          while (v23);
          *(a2 - 1) = v22;
        }

        else
        {
          a2[2] = v21;
          a2 += 3;
        }
      }

      else
      {
        a2[1] = v20;
        a2 += 2;
      }
    }
  }

  if ((v5 & 8) != 0)
  {
    if (*this <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
    }

    v24 = *(a1 + 64);
    *a2 = 32;
    if (v24 > 0x7F)
    {
      a2[1] = v24 | 0x80;
      v25 = v24 >> 7;
      if (v24 >> 14)
      {
        a2 += 3;
        do
        {
          *(a2 - 1) = v25 | 0x80;
          v26 = v25 >> 7;
          ++a2;
          v27 = v25 >> 14;
          v25 >>= 7;
        }

        while (v27);
        *(a2 - 1) = v26;
        if ((v5 & 4) != 0)
        {
          goto LABEL_50;
        }
      }

      else
      {
        a2[2] = v25;
        a2 += 3;
        if ((v5 & 4) != 0)
        {
          goto LABEL_50;
        }
      }
    }

    else
    {
      a2[1] = v24;
      a2 += 2;
      if ((v5 & 4) != 0)
      {
        goto LABEL_50;
      }
    }

LABEL_37:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_69;
    }

    goto LABEL_60;
  }

  if ((v5 & 4) == 0)
  {
    goto LABEL_37;
  }

LABEL_50:
  if (*this <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
  }

  v28 = *(a1 + 56);
  *a2 = 42;
  v29 = *(v28 + 20);
  if (v29 > 0x7F)
  {
    a2[1] = v29 | 0x80;
    v31 = v29 >> 7;
    if (v29 >> 14)
    {
      v30 = a2 + 3;
      do
      {
        *(v30 - 1) = v31 | 0x80;
        v32 = v31 >> 7;
        ++v30;
        v33 = v31 >> 14;
        v31 >>= 7;
      }

      while (v33);
      *(v30 - 1) = v32;
    }

    else
    {
      a2[2] = v31;
      v30 = a2 + 3;
    }
  }

  else
  {
    a2[1] = v29;
    v30 = a2 + 2;
  }

  a2 = sub_276480E74(v28, v30, this);
  if ((v5 & 0x10) != 0)
  {
LABEL_60:
    if (*this <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
    }

    v34 = *(a1 + 68);
    *a2 = 48;
    if (v34 > 0x7F)
    {
      a2[1] = v34 | 0x80;
      v35 = v34 >> 7;
      if (v34 >> 14)
      {
        a2 += 3;
        do
        {
          *(a2 - 1) = v35 | 0x80;
          v36 = v35 >> 7;
          ++a2;
          v37 = v35 >> 14;
          v35 >>= 7;
        }

        while (v37);
        *(a2 - 1) = v36;
      }

      else
      {
        a2[2] = v35;
        a2 += 3;
      }
    }

    else
    {
      a2[1] = v34;
      a2 += 2;
    }
  }

LABEL_69:
  v38 = *(a1 + 8);
  if ((v38 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v38 & 0xFFFFFFFFFFFFFFFELL) + 8, a2, this);
}

uint64_t sub_27647FF9C(uint64_t a1)
{
  if ((*(a1 + 16) & 2) != 0)
  {
    v3 = TSP::Reference::ByteSizeLong(*(a1 + 48));
    v2 = v3 + ((9 * (__clz(v3 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  else
  {
    v2 = 0;
  }

  v4 = google::protobuf::internal::WireFormatLite::UInt32Size() + v2 + *(a1 + 24);
  v5 = *(a1 + 16);
  if (v5)
  {
    v6 = TSP::Reference::ByteSizeLong(*(a1 + 40));
    v4 += v6 + ((9 * (__clz(v6 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  if ((v5 & 0x1C) != 0)
  {
    if ((v5 & 4) != 0)
    {
      v8 = sub_2764810D0(*(a1 + 56));
      v4 += v8 + ((9 * (__clz(v8 | 1) ^ 0x1F) + 73) >> 6) + 1;
      if ((v5 & 8) == 0)
      {
LABEL_9:
        if ((v5 & 0x10) == 0)
        {
          goto LABEL_11;
        }

        goto LABEL_10;
      }
    }

    else if ((v5 & 8) == 0)
    {
      goto LABEL_9;
    }

    v4 += ((9 * (__clz(*(a1 + 64) | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v5 & 0x10) != 0)
    {
LABEL_10:
      v4 += ((9 * (__clz(*(a1 + 68) | 1) ^ 0x1F) + 73) >> 6) + 1;
    }
  }

LABEL_11:
  if (*(a1 + 8))
  {

    return google::protobuf::internal::ComputeUnknownFieldsSize();
  }

  else
  {
    *(a1 + 20) = v4;
    return v4;
  }
}

uint64_t sub_276480114(uint64_t a1, void *lpsrc)
{
  v4 = __dynamic_cast(lpsrc, MEMORY[0x277D80A98], &unk_288527EB8, 0);
  if (v4)
  {

    return sub_27647E558(a1, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, a1);
  }
}

uint64_t sub_2764801BC(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 8);
  if (v4)
  {
    result = sub_2763D4F88((result + 8), (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  v5 = *(a2 + 32);
  if (v5)
  {
    v6 = *(a2 + 40);
    v7 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((v3 + 24));
    result = sub_2763F8F34((v3 + 24), v7, (v6 + 8), v5, **(v3 + 40) - *(v3 + 32));
    v8 = *(v3 + 32) + v5;
    *(v3 + 32) = v8;
    v9 = *(v3 + 40);
    if (*v9 < v8)
    {
      *v9 = v8;
    }
  }

  v10 = *(a2 + 56);
  if (v10)
  {
    v11 = *(a2 + 64);
    v12 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((v3 + 48));
    result = sub_2763F8F34((v3 + 48), v12, (v11 + 8), v10, **(v3 + 64) - *(v3 + 56));
    v13 = *(v3 + 56) + v10;
    *(v3 + 56) = v13;
    v14 = *(v3 + 64);
    if (*v14 < v13)
    {
      *v14 = v13;
    }
  }

  v15 = *(a2 + 80);
  if (v15)
  {
    v16 = *(a2 + 88);
    v17 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((v3 + 72));
    result = sub_27649E53C((v3 + 72), v17, (v16 + 8), v15, **(v3 + 88) - *(v3 + 80));
    v18 = *(v3 + 80) + v15;
    *(v3 + 80) = v18;
    v19 = *(v3 + 88);
    if (*v19 < v18)
    {
      *v19 = v18;
    }
  }

  v20 = *(a2 + 16);
  if ((v20 & 3) != 0)
  {
    if (v20)
    {
      *(v3 + 96) = *(a2 + 96);
    }

    if ((v20 & 2) != 0)
    {
      *(v3 + 100) = *(a2 + 100);
    }

    *(v3 + 16) |= v20;
  }

  return result;
}

google::protobuf::UnknownFieldSet *sub_276480344(google::protobuf::UnknownFieldSet *result, google::protobuf::UnknownFieldSet *a2)
{
  if (a2 != result)
  {
    v4 = result;
    sub_27647BD78(result);

    return sub_276480114(v4, a2);
  }

  return result;
}

uint64_t sub_2764803DC(uint64_t a1)
{
  sub_2763941F4((a1 + 8));
  if (*(a1 + 20) >= 1)
  {
    v2 = *(a1 + 24);
    v4 = *(v2 - 8);
    v3 = (v2 - 8);
    if (!v4)
    {
      operator delete(v3);
    }
  }

  return a1;
}

void sub_27648042C(uint64_t a1)
{
  sub_2764803DC(a1);

  JUMPOUT(0x277C98580);
}

google::protobuf::UnknownFieldSet *sub_27648046C(uint64_t a1)
{
  v2 = *(a1 + 8);
  result = (a1 + 8);
  *(result + 2) = 0;
  if (v2)
  {
    return sub_2763D4FD4(result);
  }

  return result;
}

google::protobuf::internal *sub_276480480(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v17 = a2;
  if ((sub_2763D4D98(a3, &v17, *(a3 + 92)) & 1) == 0)
  {
    do
    {
      v5 = (v17 + 1);
      v6 = *v17;
      if (*v17 < 0)
      {
        v7 = v6 + (*v5 << 7);
        v6 = v7 - 128;
        if (*v5 < 0)
        {
          TagFallback = google::protobuf::internal::ReadTagFallback(v17, (v7 - 128));
          v17 = TagFallback;
          if (!TagFallback)
          {
            return 0;
          }

          v5 = TagFallback;
          v6 = v13;
          goto LABEL_6;
        }

        v5 = (v17 + 2);
      }

      v17 = v5;
      if ((v6 & 0xFFFFFFF8) != 8)
      {
        goto LABEL_19;
      }

LABEL_6:
      if (v6 == 9)
      {
        v8 = v5 - 1;
        v9 = *(a1 + 16);
        do
        {
          v10 = (v8 + 1);
          v17 = (v8 + 1);
          v11 = *(v8 + 1);
          if (v9 == *(a1 + 20))
          {
            sub_2762A9574((a1 + 16), v9 + 1);
            *(*(a1 + 24) + 8 * v9) = v11;
            v10 = v17;
          }

          else
          {
            *(*(a1 + 24) + 8 * v9) = v11;
          }

          *(a1 + 16) = ++v9;
          v8 = v10 + 8;
          v17 = (v10 + 8);
        }

        while (*a3 > v10 + 8 && *v8 == 9);
        continue;
      }

      if (v6 == 10)
      {
        v14 = MEMORY[0x277C97E50](a1 + 16, v5, a3);
      }

      else
      {
LABEL_19:
        if (v6)
        {
          v15 = (v6 & 7) == 4;
        }

        else
        {
          v15 = 1;
        }

        if (v15)
        {
          *(a3 + 80) = v6 - 1;
          return v17;
        }

        if ((*(a1 + 8) & 1) == 0)
        {
          sub_2763D4E10((a1 + 8));
        }

        v14 = google::protobuf::internal::UnknownFieldParse();
      }

      v17 = v14;
      if (!v14)
      {
        return 0;
      }
    }

    while (!sub_2763D4D98(a3, &v17, *(a3 + 92)));
  }

  return v17;
}

uint64_t sub_27648063C(uint64_t a1, unint64_t a2, google::protobuf::io::EpsCopyOutputStream *this)
{
  v5 = *(a1 + 16);
  if (v5 >= 1)
  {
    v6 = 0;
    v7 = 8 * v5;
    do
    {
      if (*this <= a2)
      {
        a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
      }

      v8 = *(*(a1 + 24) + v6);
      *a2 = 9;
      *(a2 + 1) = v8;
      a2 += 9;
      v6 += 8;
    }

    while (v7 != v6);
  }

  v9 = *(a1 + 8);
  if ((v9 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v9 & 0xFFFFFFFFFFFFFFFELL) + 8, a2, this);
}

uint64_t sub_276480704(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (*(a1 + 8))
  {
    return google::protobuf::internal::ComputeUnknownFieldsSize();
  }

  *(a1 + 32) = 9 * v1;
  return 9 * v1;
}

uint64_t *sub_276480730(uint64_t *a1, void *lpsrc)
{
  v4 = __dynamic_cast(lpsrc, MEMORY[0x277D80A98], &unk_288527ED0, 0);
  if (v4)
  {

    return sub_276400DA8(a1, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, a1);
  }
}

uint64_t *sub_2764807D8(uint64_t *result, uint64_t *lpsrc)
{
  if (lpsrc != result)
  {
    v4 = result;
    v6 = *(result + 8);
    v5 = result + 1;
    *(v5 + 2) = 0;
    if (v6)
    {
      sub_2763D4FD4(v5);
    }

    return sub_276480730(v4, lpsrc);
  }

  return result;
}

uint64_t sub_276480870(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_2885277B8;
  *(a1 + 8) = a2;
  *(a1 + 16) = 0;
  *(a1 + 24) = a2;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = a2;
  *(a1 + 72) = a2;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  if (atomic_load_explicit(dword_2812EE338, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(a1 + 100) = 0;
  *(a1 + 96) = 0;
  return a1;
}

void sub_276480908(_Unwind_Exception *a1)
{
  sub_27649E4B8(v3);
  sub_276477F70(v2);
  sub_276477F70(v1);
  _Unwind_Resume(a1);
}

uint64_t *sub_276480938(uint64_t *a1)
{
  sub_2763941F4(a1 + 1);
  sub_27649E4B8(a1 + 9);
  sub_276477F70(a1 + 6);
  sub_276477F70(a1 + 3);
  return a1;
}

void sub_276480990(uint64_t *a1)
{
  sub_276480938(a1);

  JUMPOUT(0x277C98580);
}

void *sub_2764809D0()
{
  if (atomic_load_explicit(dword_2812EE338, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &unk_2812F26C0;
}

google::protobuf::internal *sub_276480A10(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v47 = a2;
  v5 = 0;
  if ((sub_2763D4D98(a3, &v47, *(a3 + 92)) & 1) == 0)
  {
    while (1)
    {
      v7 = (v47 + 1);
      v8 = *v47;
      if ((*v47 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if ((*v7 & 0x80000000) == 0)
      {
        break;
      }

      TagFallback = google::protobuf::internal::ReadTagFallback(v47, (v9 - 128));
      v47 = TagFallback;
      if (!TagFallback)
      {
        goto LABEL_81;
      }

      v7 = TagFallback;
      v8 = v42;
LABEL_7:
      v10 = v8 >> 3;
      if (v8 >> 3 > 2)
      {
        if (v10 != 3)
        {
          if (v10 != 4)
          {
            if (v10 != 6 || v8 != 48)
            {
              goto LABEL_65;
            }

            v5 |= 2u;
            v12 = (v7 + 1);
            v11 = *v7;
            if ((v11 & 0x8000000000000000) == 0)
            {
              goto LABEL_15;
            }

            v13 = *v12;
            v11 = (v13 << 7) + v11 - 128;
            if ((v13 & 0x80000000) == 0)
            {
              v12 = (v7 + 2);
LABEL_15:
              v47 = v12;
              *(a1 + 100) = v11 != 0;
              goto LABEL_72;
            }

            v45 = google::protobuf::internal::VarintParseSlow64(v7, v11);
            v47 = v45;
            *(a1 + 100) = v46 != 0;
            if (!v45)
            {
              goto LABEL_81;
            }

            goto LABEL_72;
          }

          if (v8 == 34)
          {
            v29 = (v7 - 1);
            while (1)
            {
              v30 = (v29 + 1);
              v47 = (v29 + 1);
              v31 = *(a1 + 88);
              if (!v31)
              {
                goto LABEL_50;
              }

              v36 = *(a1 + 80);
              v32 = *v31;
              if (v36 < *v31)
              {
                *(a1 + 80) = v36 + 1;
                v33 = *&v31[2 * v36 + 2];
                goto LABEL_54;
              }

              if (v32 == *(a1 + 84))
              {
LABEL_50:
                google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 72));
                v31 = *(a1 + 88);
                v32 = *v31;
              }

              *v31 = v32 + 1;
              v33 = sub_27649DB48(*(a1 + 72));
              v34 = *(a1 + 80);
              v35 = *(a1 + 88) + 8 * v34;
              *(a1 + 80) = v34 + 1;
              *(v35 + 8) = v33;
              v30 = v47;
LABEL_54:
              v29 = sub_2764B0B84(a3, v33, v30);
              v47 = v29;
              if (!v29)
              {
                goto LABEL_81;
              }

              if (*a3 <= v29 || *v29 != 34)
              {
                goto LABEL_72;
              }
            }
          }

LABEL_65:
          if (v8)
          {
            v40 = (v8 & 7) == 4;
          }

          else
          {
            v40 = 1;
          }

          if (v40)
          {
            *(a3 + 80) = v8 - 1;
            goto LABEL_2;
          }

          if ((*(a1 + 8) & 1) == 0)
          {
            sub_2763D4E10((a1 + 8));
          }

          v47 = google::protobuf::internal::UnknownFieldParse();
          if (!v47)
          {
LABEL_81:
            v47 = 0;
            goto LABEL_2;
          }

          goto LABEL_72;
        }

        if (v8 != 26)
        {
          goto LABEL_65;
        }

        v22 = v7 - 1;
        while (2)
        {
          v47 = (v22 + 1);
          v23 = *(a1 + 64);
          if (!v23)
          {
            goto LABEL_41;
          }

          v24 = *(a1 + 56);
          v25 = *v23;
          if (v24 < *v23)
          {
            *(a1 + 56) = v24 + 1;
            goto LABEL_43;
          }

          if (v25 == *(a1 + 60))
          {
LABEL_41:
            google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 48));
            v23 = *(a1 + 64);
            v25 = *v23;
          }

          *v23 = v25 + 1;
          v26 = sub_276380DF4(*(a1 + 48));
          v27 = *(a1 + 56);
          v28 = *(a1 + 64) + 8 * v27;
          *(a1 + 56) = v27 + 1;
          *(v28 + 8) = v26;
LABEL_43:
          v22 = google::protobuf::internal::InlineGreedyStringParser();
          v47 = v22;
          if (!v22)
          {
            goto LABEL_81;
          }

          if (*a3 <= v22 || *v22 != 26)
          {
            goto LABEL_72;
          }

          continue;
        }
      }

      if (v10 != 1)
      {
        if (v10 != 2 || v8 != 18)
        {
          goto LABEL_65;
        }

        v15 = v7 - 1;
        while (2)
        {
          v47 = (v15 + 1);
          v16 = *(a1 + 40);
          if (!v16)
          {
            goto LABEL_28;
          }

          v17 = *(a1 + 32);
          v18 = *v16;
          if (v17 < *v16)
          {
            *(a1 + 32) = v17 + 1;
            goto LABEL_30;
          }

          if (v18 == *(a1 + 36))
          {
LABEL_28:
            google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 24));
            v16 = *(a1 + 40);
            v18 = *v16;
          }

          *v16 = v18 + 1;
          v19 = sub_276380DF4(*(a1 + 24));
          v20 = *(a1 + 32);
          v21 = *(a1 + 40) + 8 * v20;
          *(a1 + 32) = v20 + 1;
          *(v21 + 8) = v19;
LABEL_30:
          v15 = google::protobuf::internal::InlineGreedyStringParser();
          v47 = v15;
          if (!v15)
          {
            goto LABEL_81;
          }

          if (*a3 <= v15 || *v15 != 18)
          {
            goto LABEL_72;
          }

          continue;
        }
      }

      if (v8 != 8)
      {
        goto LABEL_65;
      }

      v5 |= 1u;
      v38 = (v7 + 1);
      LODWORD(v37) = *v7;
      if ((v37 & 0x80) == 0)
      {
        goto LABEL_64;
      }

      v39 = *v38;
      v37 = (v37 + (v39 << 7) - 128);
      if ((v39 & 0x80000000) == 0)
      {
        v38 = (v7 + 2);
LABEL_64:
        v47 = v38;
        *(a1 + 96) = v37;
        goto LABEL_72;
      }

      v43 = google::protobuf::internal::VarintParseSlow64(v7, v37);
      v47 = v43;
      *(a1 + 96) = v44;
      if (!v43)
      {
        goto LABEL_81;
      }

LABEL_72:
      if (sub_2763D4D98(a3, &v47, *(a3 + 92)))
      {
        goto LABEL_2;
      }
    }

    v7 = (v47 + 2);
LABEL_6:
    v47 = v7;
    goto LABEL_7;
  }

LABEL_2:
  *(a1 + 16) |= v5;
  return v47;
}

unsigned __int8 *sub_276480E74(uint64_t a1, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *this)
{
  v4 = a2;
  v6 = *(a1 + 16);
  if (v6)
  {
    if (*this <= a2)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
    }

    v7 = *(a1 + 96);
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
      }

      else
      {
        v4[2] = v8;
        v4 += 3;
      }
    }

    else
    {
      v4[1] = v7;
      v4 += 2;
    }
  }

  v11 = *(a1 + 32);
  if (v11 >= 1)
  {
    v12 = 8;
    do
    {
      v4 = sub_2763E1648(this, 2, *(*(a1 + 40) + v12), v4);
      v12 += 8;
      --v11;
    }

    while (v11);
  }

  v13 = *(a1 + 56);
  if (v13 >= 1)
  {
    v14 = 8;
    do
    {
      v4 = sub_2763E1648(this, 3, *(*(a1 + 64) + v14), v4);
      v14 += 8;
      --v13;
    }

    while (v13);
  }

  v15 = *(a1 + 80);
  if (v15)
  {
    for (i = 0; i != v15; ++i)
    {
      if (*this <= v4)
      {
        v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, v4);
      }

      v17 = *(*(a1 + 88) + 8 * i + 8);
      *v4 = 34;
      v18 = *(v17 + 32);
      if (v18 > 0x7F)
      {
        v4[1] = v18 | 0x80;
        v20 = v18 >> 7;
        if (v18 >> 14)
        {
          v19 = (v4 + 3);
          do
          {
            *(v19 - 1) = v20 | 0x80;
            v21 = v20 >> 7;
            ++v19;
            v22 = v20 >> 14;
            v20 >>= 7;
          }

          while (v22);
          *(v19 - 1) = v21;
        }

        else
        {
          v4[2] = v20;
          v19 = (v4 + 3);
        }
      }

      else
      {
        v4[1] = v18;
        v19 = (v4 + 2);
      }

      v4 = sub_27648063C(v17, v19, this);
    }
  }

  if ((v6 & 2) != 0)
  {
    if (*this <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, v4);
    }

    v23 = *(a1 + 100);
    *v4 = 48;
    v4[1] = v23;
    v4 += 2;
  }

  v24 = *(a1 + 8);
  if ((v24 & 1) == 0)
  {
    return v4;
  }

  return MEMORY[0x2821EAC40]((v24 & 0xFFFFFFFFFFFFFFFELL) + 8, v4, this);
}

uint64_t sub_2764810D0(uint64_t a1)
{
  v2 = *(a1 + 16);
  if ((~v2 & 3) != 0)
  {
    if (v2)
    {
      v6 = *(a1 + 96);
      if (v6 < 0)
      {
        v5 = 11;
      }

      else
      {
        v5 = ((9 * (__clz(v6 | 1) ^ 0x1F) + 73) >> 6) + 1;
      }
    }

    else
    {
      v5 = 0;
    }

    v4 = v5 + (v2 & 2);
  }

  else
  {
    v3 = *(a1 + 96);
    if (v3 < 0)
    {
      v4 = 13;
    }

    else
    {
      v4 = ((9 * (__clz(v3 | 1) ^ 0x1F) + 73) >> 6) + 3;
    }
  }

  v7 = *(a1 + 32);
  v8 = v4 + v7;
  if (v7 >= 1)
  {
    v9 = (*(a1 + 40) + 8);
    do
    {
      v10 = *v9++;
      v11 = *(v10 + 23);
      v12 = *(v10 + 8);
      if ((v11 & 0x80u) == 0)
      {
        v12 = v11;
      }

      v8 += v12 + ((9 * (__clz(v12 | 1) ^ 0x1F) + 73) >> 6);
      --v7;
    }

    while (v7);
  }

  v13 = *(a1 + 56);
  v14 = v8 + v13;
  if (v13 >= 1)
  {
    v15 = (*(a1 + 64) + 8);
    do
    {
      v16 = *v15++;
      v17 = *(v16 + 23);
      v18 = *(v16 + 8);
      if ((v17 & 0x80u) == 0)
      {
        v18 = v17;
      }

      v14 += v18 + ((9 * (__clz(v18 | 1) ^ 0x1F) + 73) >> 6);
      --v13;
    }

    while (v13);
  }

  v19 = *(a1 + 80);
  v20 = v14 + v19;
  v21 = *(a1 + 88);
  if (v21)
  {
    v22 = v21 + 8;
  }

  else
  {
    v22 = 0;
  }

  if (v19)
  {
    v23 = 8 * v19;
    do
    {
      v24 = 9 * *(*v22 + 16);
      if (*(*v22 + 8))
      {
        v24 = google::protobuf::internal::ComputeUnknownFieldsSize();
      }

      else
      {
        *(*v22 + 32) = v24;
      }

      v20 += v24 + ((9 * (__clz(v24 | 1) ^ 0x1F) + 73) >> 6);
      v22 += 8;
      v23 -= 8;
    }

    while (v23);
  }

  if (*(a1 + 8))
  {

    return google::protobuf::internal::ComputeUnknownFieldsSize();
  }

  else
  {
    *(a1 + 20) = v20;
    return v20;
  }
}

uint64_t sub_2764812E0(uint64_t a1, void *lpsrc)
{
  v4 = __dynamic_cast(lpsrc, MEMORY[0x277D80A98], &unk_288527EE8, 0);
  if (v4)
  {

    return sub_2764801BC(a1, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, a1);
  }
}

void *sub_276481388(void *result, void *a2)
{
  if (a2 != result)
  {
    v4 = result;
    sub_27647F75C(result);

    return sub_2764812E0(v4, a2);
  }

  return result;
}

uint64_t sub_27648140C(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_288527868;
  *(a1 + 8) = a2;
  *(a1 + 24) = a2;
  *(a1 + 16) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  if (atomic_load_explicit(dword_2812EE4D8, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  v3 = MEMORY[0x277D80A90];
  *(a1 + 48) = MEMORY[0x277D80A90];
  *(a1 + 56) = v3;
  *(a1 + 64) = v3;
  *(a1 + 72) = v3;
  *(a1 + 80) = v3;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0;
  return a1;
}

uint64_t sub_2764814C0(uint64_t a1)
{
  sub_276481500(a1);
  sub_2763941F4((a1 + 8));
  sub_276477F70((a1 + 24));
  return a1;
}

uint64_t sub_276481500(uint64_t result)
{
  v1 = result;
  v2 = *(result + 48);
  v3 = MEMORY[0x277D80A90];
  if (v2 != MEMORY[0x277D80A90])
  {
    if (*(v2 + 23) < 0)
    {
      operator delete(*v2);
    }

    result = MEMORY[0x277C98580](v2, 0x1012C40EC159624);
  }

  v4 = *(v1 + 56);
  if (v4 != v3)
  {
    if (*(v4 + 23) < 0)
    {
      operator delete(*v4);
    }

    result = MEMORY[0x277C98580](v4, 0x1012C40EC159624);
  }

  v5 = *(v1 + 64);
  if (v5 != v3)
  {
    if (*(v5 + 23) < 0)
    {
      operator delete(*v5);
    }

    result = MEMORY[0x277C98580](v5, 0x1012C40EC159624);
  }

  v6 = *(v1 + 72);
  if (v6 != v3)
  {
    if (*(v6 + 23) < 0)
    {
      operator delete(*v6);
    }

    result = MEMORY[0x277C98580](v6, 0x1012C40EC159624);
  }

  v7 = *(v1 + 80);
  if (v7 != v3)
  {
    if (*(v7 + 23) < 0)
    {
      operator delete(*v7);
    }

    result = MEMORY[0x277C98580](v7, 0x1012C40EC159624);
  }

  if (v1 != &unk_2812F2728)
  {
    result = *(v1 + 88);
    if (result)
    {
      MEMORY[0x277C97600]();

      JUMPOUT(0x277C98580);
    }
  }

  return result;
}

void sub_276481658(uint64_t a1)
{
  sub_2764814C0(a1);

  JUMPOUT(0x277C98580);
}

google::protobuf::UnknownFieldSet *sub_276481698(uint64_t a1)
{
  result = sub_2764778D0(a1 + 24);
  v3 = *(a1 + 16);
  if ((v3 & 0x3F) == 0)
  {
    goto LABEL_9;
  }

  if (v3)
  {
    v6 = *(a1 + 48) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v6 + 23) < 0)
    {
      **v6 = 0;
      *(v6 + 8) = 0;
      if ((v3 & 2) != 0)
      {
        goto LABEL_23;
      }
    }

    else
    {
      *v6 = 0;
      *(v6 + 23) = 0;
      if ((v3 & 2) != 0)
      {
        goto LABEL_23;
      }
    }

LABEL_4:
    if ((v3 & 4) == 0)
    {
      goto LABEL_5;
    }

LABEL_27:
    v8 = *(a1 + 64) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v8 + 23) < 0)
    {
      **v8 = 0;
      *(v8 + 8) = 0;
      if ((v3 & 8) != 0)
      {
        goto LABEL_31;
      }
    }

    else
    {
      *v8 = 0;
      *(v8 + 23) = 0;
      if ((v3 & 8) != 0)
      {
        goto LABEL_31;
      }
    }

LABEL_6:
    if ((v3 & 0x10) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_35;
  }

  if ((v3 & 2) == 0)
  {
    goto LABEL_4;
  }

LABEL_23:
  v7 = *(a1 + 56) & 0xFFFFFFFFFFFFFFFELL;
  if (*(v7 + 23) < 0)
  {
    **v7 = 0;
    *(v7 + 8) = 0;
    if ((v3 & 4) != 0)
    {
      goto LABEL_27;
    }
  }

  else
  {
    *v7 = 0;
    *(v7 + 23) = 0;
    if ((v3 & 4) != 0)
    {
      goto LABEL_27;
    }
  }

LABEL_5:
  if ((v3 & 8) == 0)
  {
    goto LABEL_6;
  }

LABEL_31:
  v9 = *(a1 + 72) & 0xFFFFFFFFFFFFFFFELL;
  if ((*(v9 + 23) & 0x80000000) == 0)
  {
    *v9 = 0;
    *(v9 + 23) = 0;
    if ((v3 & 0x10) != 0)
    {
      goto LABEL_35;
    }

LABEL_7:
    if ((v3 & 0x20) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  **v9 = 0;
  *(v9 + 8) = 0;
  if ((v3 & 0x10) == 0)
  {
    goto LABEL_7;
  }

LABEL_35:
  v10 = *(a1 + 80) & 0xFFFFFFFFFFFFFFFELL;
  if ((*(v10 + 23) & 0x80000000) == 0)
  {
    *v10 = 0;
    *(v10 + 23) = 0;
    if ((v3 & 0x20) == 0)
    {
      goto LABEL_9;
    }

LABEL_8:
    result = TSP::IndexSet::Clear(*(a1 + 88));
    goto LABEL_9;
  }

  **v10 = 0;
  *(v10 + 8) = 0;
  if ((v3 & 0x20) != 0)
  {
    goto LABEL_8;
  }

LABEL_9:
  if ((v3 & 0xC0) != 0)
  {
    *(a1 + 96) = 0;
  }

  if ((v3 & 0xFF00) != 0)
  {
    *(a1 + 104) = 0;
    *(a1 + 112) = 0;
    *(a1 + 120) = 0;
  }

  if ((v3 & 0x7F0000) != 0)
  {
    *(a1 + 140) = 0u;
    *(a1 + 124) = 0u;
  }

  v5 = *(a1 + 8);
  v4 = a1 + 8;
  *(v4 + 8) = 0;
  if (v5)
  {

    return sub_2763D4FD4(v4);
  }

  return result;
}

google::protobuf::internal *sub_27648183C(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v103 = a2;
  v5 = 0;
  if ((sub_2763D4D98(a3, &v103, *(a3 + 92)) & 1) == 0)
  {
    while (2)
    {
      v7 = (v103 + 1);
      v8 = *v103;
      if (*v103 < 0)
      {
        v9 = v8 + (*v7 << 7);
        v8 = v9 - 128;
        if (*v7 < 0)
        {
          TagFallback = google::protobuf::internal::ReadTagFallback(v103, (v9 - 128));
          v103 = TagFallback;
          if (!TagFallback)
          {
            goto LABEL_173;
          }

          v7 = TagFallback;
          v8 = v15;
LABEL_7:
          switch(v8 >> 3)
          {
            case 1u:
              if (v8 != 8)
              {
                goto LABEL_131;
              }

              v10 = (v7 + 1);
              v11 = *v7;
              if ((v11 & 0x8000000000000000) == 0)
              {
                goto LABEL_12;
              }

              v12 = *v10;
              v13 = (v12 << 7) + v11;
              LODWORD(v11) = v13 - 128;
              if (v12 < 0)
              {
                v103 = google::protobuf::internal::VarintParseSlow64(v7, (v13 - 128));
                if (!v103)
                {
                  goto LABEL_173;
                }

                LODWORD(v11) = v85;
              }

              else
              {
                v10 = (v7 + 2);
LABEL_12:
                v103 = v10;
              }

              if (sub_2763FFBC4(v11))
              {
                *(a1 + 16) |= 0x40u;
                *(a1 + 96) = v11;
              }

              else
              {
                sub_2764AB61C();
              }

              goto LABEL_129;
            case 2u:
              if (v8 != 18)
              {
                goto LABEL_131;
              }

              *(a1 + 16) |= 1u;
              goto LABEL_127;
            case 3u:
              if (v8 != 24)
              {
                goto LABEL_131;
              }

              v5 |= 0x80u;
              v39 = (v7 + 1);
              LODWORD(v40) = *v7;
              if ((*v7 & 0x80000000) == 0)
              {
                goto LABEL_61;
              }

              v41 = *v39;
              v40 = (v40 + (v41 << 7) - 128);
              if (v41 < 0)
              {
                v83 = google::protobuf::internal::VarintParseSlow32(v7, v40);
                v103 = v83;
                *(a1 + 100) = v84;
                if (!v83)
                {
                  goto LABEL_173;
                }
              }

              else
              {
                v39 = (v7 + 2);
LABEL_61:
                v103 = v39;
                *(a1 + 100) = v40;
              }

              goto LABEL_129;
            case 4u:
              if (v8 != 34)
              {
                goto LABEL_131;
              }

              *(a1 + 16) |= 2u;
              goto LABEL_127;
            case 5u:
              if (v8 != 40)
              {
                goto LABEL_131;
              }

              v29 = (v7 + 1);
              v30 = *v7;
              if ((v30 & 0x8000000000000000) == 0)
              {
                goto LABEL_44;
              }

              v31 = *v29;
              v32 = (v31 << 7) + v30;
              LODWORD(v30) = v32 - 128;
              if (v31 < 0)
              {
                v103 = google::protobuf::internal::VarintParseSlow64(v7, (v32 - 128));
                if (!v103)
                {
                  goto LABEL_173;
                }

                LODWORD(v30) = v78;
              }

              else
              {
                v29 = (v7 + 2);
LABEL_44:
                v103 = v29;
              }

              if (sub_2763FFBDC(v30))
              {
                *(a1 + 16) |= 0x100u;
                *(a1 + 104) = v30;
              }

              else
              {
                sub_2764AB5A4();
              }

              goto LABEL_129;
            case 6u:
              if (v8 != 48)
              {
                goto LABEL_131;
              }

              v5 |= 0x1000u;
              v52 = (v7 + 1);
              v51 = *v7;
              if ((v51 & 0x8000000000000000) == 0)
              {
                goto LABEL_88;
              }

              v53 = *v52;
              v51 = (v53 << 7) + v51 - 128;
              if (v53 < 0)
              {
                v90 = google::protobuf::internal::VarintParseSlow64(v7, v51);
                v103 = v90;
                *(a1 + 120) = v91 != 0;
                if (!v90)
                {
                  goto LABEL_173;
                }
              }

              else
              {
                v52 = (v7 + 2);
LABEL_88:
                v103 = v52;
                *(a1 + 120) = v51 != 0;
              }

              goto LABEL_129;
            case 7u:
              if (v8 != 56)
              {
                goto LABEL_131;
              }

              v57 = (v7 + 1);
              v58 = *v7;
              if ((v58 & 0x8000000000000000) == 0)
              {
                goto LABEL_100;
              }

              v59 = *v57;
              v60 = (v59 << 7) + v58;
              LODWORD(v58) = v60 - 128;
              if (v59 < 0)
              {
                v103 = google::protobuf::internal::VarintParseSlow64(v7, (v60 - 128));
                if (!v103)
                {
                  goto LABEL_173;
                }

                LODWORD(v58) = v94;
              }

              else
              {
                v57 = (v7 + 2);
LABEL_100:
                v103 = v57;
              }

              if (sub_2763FFBE8(v58))
              {
                *(a1 + 16) |= 0x200u;
                *(a1 + 108) = v58;
              }

              else
              {
                sub_2764ADED4();
              }

              goto LABEL_129;
            case 8u:
              if (v8 != 66)
              {
                goto LABEL_131;
              }

              *(a1 + 16) |= 4u;
              goto LABEL_127;
            case 9u:
              if (v8 != 72)
              {
                goto LABEL_131;
              }

              v5 |= 0x400u;
              v67 = (v7 + 1);
              LODWORD(v68) = *v7;
              if ((*v7 & 0x80000000) == 0)
              {
                goto LABEL_117;
              }

              v69 = *v67;
              v68 = (v68 + (v69 << 7) - 128);
              if (v69 < 0)
              {
                v99 = google::protobuf::internal::VarintParseSlow32(v7, v68);
                v103 = v99;
                *(a1 + 112) = v100;
                if (!v99)
                {
                  goto LABEL_173;
                }
              }

              else
              {
                v67 = (v7 + 2);
LABEL_117:
                v103 = v67;
                *(a1 + 112) = v68;
              }

              goto LABEL_129;
            case 0xAu:
              if (v8 != 80)
              {
                goto LABEL_131;
              }

              v5 |= 0x800u;
              v36 = (v7 + 1);
              LODWORD(v37) = *v7;
              if ((*v7 & 0x80000000) == 0)
              {
                goto LABEL_56;
              }

              v38 = *v36;
              v37 = (v37 + (v38 << 7) - 128);
              if (v38 < 0)
              {
                v81 = google::protobuf::internal::VarintParseSlow32(v7, v37);
                v103 = v81;
                *(a1 + 116) = v82;
                if (!v81)
                {
                  goto LABEL_173;
                }
              }

              else
              {
                v36 = (v7 + 2);
LABEL_56:
                v103 = v36;
                *(a1 + 116) = v37;
              }

              goto LABEL_129;
            case 0xBu:
              if (v8 != 88)
              {
                goto LABEL_131;
              }

              v5 |= 0x2000u;
              v65 = (v7 + 1);
              v64 = *v7;
              if ((v64 & 0x8000000000000000) == 0)
              {
                goto LABEL_112;
              }

              v66 = *v65;
              v64 = (v66 << 7) + v64 - 128;
              if (v66 < 0)
              {
                v97 = google::protobuf::internal::VarintParseSlow64(v7, v64);
                v103 = v97;
                *(a1 + 121) = v98 != 0;
                if (!v97)
                {
                  goto LABEL_173;
                }
              }

              else
              {
                v65 = (v7 + 2);
LABEL_112:
                v103 = v65;
                *(a1 + 121) = v64 != 0;
              }

              goto LABEL_129;
            case 0xCu:
              if (v8 != 96)
              {
                goto LABEL_131;
              }

              v5 |= 0x4000u;
              v27 = (v7 + 1);
              v26 = *v7;
              if ((v26 & 0x8000000000000000) == 0)
              {
                goto LABEL_39;
              }

              v28 = *v27;
              v26 = (v28 << 7) + v26 - 128;
              if (v28 < 0)
              {
                v76 = google::protobuf::internal::VarintParseSlow64(v7, v26);
                v103 = v76;
                *(a1 + 122) = v77 != 0;
                if (!v76)
                {
                  goto LABEL_173;
                }
              }

              else
              {
                v27 = (v7 + 2);
LABEL_39:
                v103 = v27;
                *(a1 + 122) = v26 != 0;
              }

              goto LABEL_129;
            case 0xDu:
              if (v8 != 104)
              {
                goto LABEL_131;
              }

              v5 |= 0x8000u;
              v34 = (v7 + 1);
              v33 = *v7;
              if ((v33 & 0x8000000000000000) == 0)
              {
                goto LABEL_51;
              }

              v35 = *v34;
              v33 = (v35 << 7) + v33 - 128;
              if (v35 < 0)
              {
                v79 = google::protobuf::internal::VarintParseSlow64(v7, v33);
                v103 = v79;
                *(a1 + 123) = v80 != 0;
                if (!v79)
                {
                  goto LABEL_173;
                }
              }

              else
              {
                v34 = (v7 + 2);
LABEL_51:
                v103 = v34;
                *(a1 + 123) = v33 != 0;
              }

              goto LABEL_129;
            case 0xEu:
              if (v8 != 113)
              {
                goto LABEL_131;
              }

              v5 |= 0x20000u;
              *(a1 + 128) = *v7;
              v103 = (v7 + 8);
              goto LABEL_129;
            case 0xFu:
              if (v8 != 122)
              {
                goto LABEL_131;
              }

              v19 = v7 - 1;
              break;
            case 0x10u:
              if (v8 != 130)
              {
                goto LABEL_131;
              }

              *(a1 + 16) |= 0x20u;
              v42 = *(a1 + 88);
              if (!v42)
              {
                v43 = *(a1 + 8);
                if (v43)
                {
                  v43 = *(v43 & 0xFFFFFFFFFFFFFFFELL);
                }

                v42 = MEMORY[0x277C97B70](v43);
                *(a1 + 88) = v42;
                v7 = v103;
              }

              v44 = sub_2764B0C54(a3, v42, v7);
              goto LABEL_128;
            case 0x11u:
              if (v8 != 136)
              {
                goto LABEL_131;
              }

              v5 |= 0x10000u;
              v16 = (v7 + 1);
              LODWORD(v17) = *v7;
              if ((*v7 & 0x80000000) == 0)
              {
                goto LABEL_21;
              }

              v18 = *v16;
              v17 = (v17 + (v18 << 7) - 128);
              if (v18 < 0)
              {
                v74 = google::protobuf::internal::VarintParseSlow32(v7, v17);
                v103 = v74;
                *(a1 + 124) = v75;
                if (!v74)
                {
                  goto LABEL_173;
                }
              }

              else
              {
                v16 = (v7 + 2);
LABEL_21:
                v103 = v16;
                *(a1 + 124) = v17;
              }

              goto LABEL_129;
            case 0x12u:
              if (v8 != 144)
              {
                goto LABEL_131;
              }

              v5 |= 0x40000u;
              v46 = (v7 + 1);
              v45 = *v7;
              if ((v45 & 0x8000000000000000) == 0)
              {
                goto LABEL_78;
              }

              v47 = *v46;
              v45 = (v47 << 7) + v45 - 128;
              if (v47 < 0)
              {
                v86 = google::protobuf::internal::VarintParseSlow64(v7, v45);
                v103 = v86;
                *(a1 + 136) = v87 != 0;
                if (!v86)
                {
                  goto LABEL_173;
                }
              }

              else
              {
                v46 = (v7 + 2);
LABEL_78:
                v103 = v46;
                *(a1 + 136) = v45 != 0;
              }

              goto LABEL_129;
            case 0x13u:
              if (v8 != 152)
              {
                goto LABEL_131;
              }

              v5 |= 0x80000u;
              v61 = (v7 + 1);
              LODWORD(v62) = *v7;
              if ((*v7 & 0x80000000) == 0)
              {
                goto LABEL_107;
              }

              v63 = *v61;
              v62 = (v62 + (v63 << 7) - 128);
              if (v63 < 0)
              {
                v95 = google::protobuf::internal::VarintParseSlow32(v7, v62);
                v103 = v95;
                *(a1 + 140) = v96;
                if (!v95)
                {
                  goto LABEL_173;
                }
              }

              else
              {
                v61 = (v7 + 2);
LABEL_107:
                v103 = v61;
                *(a1 + 140) = v62;
              }

              goto LABEL_129;
            case 0x14u:
              if (v8 != 160)
              {
                goto LABEL_131;
              }

              v5 |= 0x100000u;
              v70 = (v7 + 1);
              LODWORD(v71) = *v7;
              if ((*v7 & 0x80000000) == 0)
              {
                goto LABEL_124;
              }

              v72 = *v70;
              v71 = (v71 + (v72 << 7) - 128);
              if (v72 < 0)
              {
                v101 = google::protobuf::internal::VarintParseSlow32(v7, v71);
                v103 = v101;
                *(a1 + 144) = v102;
                if (!v101)
                {
                  goto LABEL_173;
                }
              }

              else
              {
                v70 = (v7 + 2);
LABEL_124:
                v103 = v70;
                *(a1 + 144) = v71;
              }

              goto LABEL_129;
            case 0x15u:
              if (v8 != 168)
              {
                goto LABEL_131;
              }

              v5 |= 0x200000u;
              v48 = (v7 + 1);
              LODWORD(v49) = *v7;
              if ((*v7 & 0x80000000) == 0)
              {
                goto LABEL_83;
              }

              v50 = *v48;
              v49 = (v49 + (v50 << 7) - 128);
              if (v50 < 0)
              {
                v88 = google::protobuf::internal::VarintParseSlow32(v7, v49);
                v103 = v88;
                *(a1 + 148) = v89;
                if (!v88)
                {
                  goto LABEL_173;
                }
              }

              else
              {
                v48 = (v7 + 2);
LABEL_83:
                v103 = v48;
                *(a1 + 148) = v49;
              }

              goto LABEL_129;
            case 0x16u:
              if (v8 != 176)
              {
                goto LABEL_131;
              }

              v5 |= 0x400000u;
              v54 = (v7 + 1);
              LODWORD(v55) = *v7;
              if ((*v7 & 0x80000000) == 0)
              {
                goto LABEL_93;
              }

              v56 = *v54;
              v55 = (v55 + (v56 << 7) - 128);
              if (v56 < 0)
              {
                v92 = google::protobuf::internal::VarintParseSlow32(v7, v55);
                v103 = v92;
                *(a1 + 152) = v93;
                if (!v92)
                {
                  goto LABEL_173;
                }
              }

              else
              {
                v54 = (v7 + 2);
LABEL_93:
                v103 = v54;
                *(a1 + 152) = v55;
              }

              goto LABEL_129;
            case 0x17u:
              if (v8 != 186)
              {
                goto LABEL_131;
              }

              *(a1 + 16) |= 8u;
              goto LABEL_127;
            case 0x18u:
              if (v8 != 194)
              {
                goto LABEL_131;
              }

              *(a1 + 16) |= 0x10u;
LABEL_127:
              google::protobuf::internal::ArenaStringPtr::Mutable();
              v44 = google::protobuf::internal::InlineGreedyStringParser();
              goto LABEL_128;
            default:
LABEL_131:
              if (v8)
              {
                v73 = (v8 & 7) == 4;
              }

              else
              {
                v73 = 1;
              }

              if (v73)
              {
                *(a3 + 80) = v8 - 1;
                goto LABEL_2;
              }

              if ((*(a1 + 8) & 1) == 0)
              {
                sub_2763D4E10((a1 + 8));
              }

              v44 = google::protobuf::internal::UnknownFieldParse();
LABEL_128:
              v103 = v44;
              if (!v44)
              {
LABEL_173:
                v103 = 0;
                goto LABEL_2;
              }

LABEL_129:
              if (sub_2763D4D98(a3, &v103, *(a3 + 92)))
              {
                goto LABEL_2;
              }

              continue;
          }

          while (1)
          {
            v103 = (v19 + 1);
            v20 = *(a1 + 40);
            if (!v20)
            {
              goto LABEL_29;
            }

            v21 = *(a1 + 32);
            v22 = *v20;
            if (v21 >= *v20)
            {
              break;
            }

            *(a1 + 32) = v21 + 1;
LABEL_31:
            v19 = google::protobuf::internal::InlineGreedyStringParser();
            v103 = v19;
            if (!v19)
            {
              goto LABEL_173;
            }

            if (*a3 <= v19 || *v19 != 122)
            {
              goto LABEL_129;
            }
          }

          if (v22 == *(a1 + 36))
          {
LABEL_29:
            google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 24));
            v20 = *(a1 + 40);
            v22 = *v20;
          }

          *v20 = v22 + 1;
          v23 = sub_276380DF4(*(a1 + 24));
          v24 = *(a1 + 32);
          v25 = *(a1 + 40) + 8 * v24;
          *(a1 + 32) = v24 + 1;
          *(v25 + 8) = v23;
          goto LABEL_31;
        }

        v7 = (v103 + 2);
      }

      break;
    }

    v103 = v7;
    goto LABEL_7;
  }

LABEL_2:
  *(a1 + 16) |= v5;
  return v103;
}

unsigned __int8 *sub_2764822BC(uint64_t a1, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v4 = a2;
  v6 = *(a1 + 16);
  if ((v6 & 0x40) != 0)
  {
    if (*a3 <= a2)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v7 = *(a1 + 96);
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
        if (v6)
        {
          goto LABEL_27;
        }
      }

      else
      {
        v4[2] = v8;
        v4 += 3;
        if (v6)
        {
          goto LABEL_27;
        }
      }
    }

    else
    {
      v4[1] = v7;
      v4 += 2;
      if (v6)
      {
        goto LABEL_27;
      }
    }

LABEL_3:
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_4;
    }

LABEL_28:
    if (*a3 <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
    }

    v11 = *(a1 + 100);
    *v4 = 24;
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
        if ((v6 & 2) != 0)
        {
          goto LABEL_39;
        }
      }

      else
      {
        v4[2] = v12;
        v4 += 3;
        if ((v6 & 2) != 0)
        {
          goto LABEL_39;
        }
      }
    }

    else
    {
      v4[1] = v11;
      v4 += 2;
      if ((v6 & 2) != 0)
      {
        goto LABEL_39;
      }
    }

LABEL_5:
    if ((v6 & 0x100) == 0)
    {
      goto LABEL_6;
    }

LABEL_40:
    if (*a3 <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
    }

    v15 = *(a1 + 104);
    *v4 = 40;
    if (v15 > 0x7F)
    {
      v4[1] = v15 | 0x80;
      v16 = v15 >> 7;
      if (v15 >> 14)
      {
        v4 += 3;
        do
        {
          *(v4 - 1) = v16 | 0x80;
          v17 = v16 >> 7;
          ++v4;
          v18 = v16 >> 14;
          v16 >>= 7;
        }

        while (v18);
        *(v4 - 1) = v17;
        if ((v6 & 0x1000) != 0)
        {
          goto LABEL_51;
        }
      }

      else
      {
        v4[2] = v16;
        v4 += 3;
        if ((v6 & 0x1000) != 0)
        {
          goto LABEL_51;
        }
      }
    }

    else
    {
      v4[1] = v15;
      v4 += 2;
      if ((v6 & 0x1000) != 0)
      {
        goto LABEL_51;
      }
    }

LABEL_7:
    if ((v6 & 0x200) == 0)
    {
      goto LABEL_8;
    }

LABEL_54:
    if (*a3 <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
    }

    v20 = *(a1 + 108);
    *v4 = 56;
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
        if ((v6 & 4) != 0)
        {
          goto LABEL_65;
        }
      }

      else
      {
        v4[2] = v21;
        v4 += 3;
        if ((v6 & 4) != 0)
        {
          goto LABEL_65;
        }
      }
    }

    else
    {
      v4[1] = v20;
      v4 += 2;
      if ((v6 & 4) != 0)
      {
        goto LABEL_65;
      }
    }

LABEL_9:
    if ((v6 & 0x400) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_66;
  }

  if ((v6 & 1) == 0)
  {
    goto LABEL_3;
  }

LABEL_27:
  v4 = sub_2763DD938(a3, 2, (*(a1 + 48) & 0xFFFFFFFFFFFFFFFELL), v4);
  if ((v6 & 0x80) != 0)
  {
    goto LABEL_28;
  }

LABEL_4:
  if ((v6 & 2) == 0)
  {
    goto LABEL_5;
  }

LABEL_39:
  v4 = sub_2763DD938(a3, 4, (*(a1 + 56) & 0xFFFFFFFFFFFFFFFELL), v4);
  if ((v6 & 0x100) != 0)
  {
    goto LABEL_40;
  }

LABEL_6:
  if ((v6 & 0x1000) == 0)
  {
    goto LABEL_7;
  }

LABEL_51:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v19 = *(a1 + 120);
  *v4 = 48;
  v4[1] = v19;
  v4 += 2;
  if ((v6 & 0x200) != 0)
  {
    goto LABEL_54;
  }

LABEL_8:
  if ((v6 & 4) == 0)
  {
    goto LABEL_9;
  }

LABEL_65:
  v4 = sub_2763DD938(a3, 8, (*(a1 + 64) & 0xFFFFFFFFFFFFFFFELL), v4);
  if ((v6 & 0x400) == 0)
  {
LABEL_10:
    if ((v6 & 0x800) == 0)
    {
      goto LABEL_11;
    }

LABEL_77:
    if (*a3 <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
    }

    v28 = *(a1 + 116);
    *v4 = 80;
    if (v28 > 0x7F)
    {
      v4[1] = v28 | 0x80;
      v29 = v28 >> 7;
      if (v28 >> 14)
      {
        v4 += 3;
        do
        {
          *(v4 - 1) = v29 | 0x80;
          v30 = v29 >> 7;
          ++v4;
          v31 = v29 >> 14;
          v29 >>= 7;
        }

        while (v31);
        *(v4 - 1) = v30;
        if ((v6 & 0x2000) != 0)
        {
          goto LABEL_88;
        }
      }

      else
      {
        v4[2] = v29;
        v4 += 3;
        if ((v6 & 0x2000) != 0)
        {
          goto LABEL_88;
        }
      }
    }

    else
    {
      v4[1] = v28;
      v4 += 2;
      if ((v6 & 0x2000) != 0)
      {
        goto LABEL_88;
      }
    }

LABEL_12:
    if ((v6 & 0x4000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_91;
  }

LABEL_66:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v24 = *(a1 + 112);
  *v4 = 72;
  if (v24 > 0x7F)
  {
    v4[1] = v24 | 0x80;
    v25 = v24 >> 7;
    if (v24 >> 14)
    {
      v4 += 3;
      do
      {
        *(v4 - 1) = v25 | 0x80;
        v26 = v25 >> 7;
        ++v4;
        v27 = v25 >> 14;
        v25 >>= 7;
      }

      while (v27);
      *(v4 - 1) = v26;
      if ((v6 & 0x800) != 0)
      {
        goto LABEL_77;
      }
    }

    else
    {
      v4[2] = v25;
      v4 += 3;
      if ((v6 & 0x800) != 0)
      {
        goto LABEL_77;
      }
    }
  }

  else
  {
    v4[1] = v24;
    v4 += 2;
    if ((v6 & 0x800) != 0)
    {
      goto LABEL_77;
    }
  }

LABEL_11:
  if ((v6 & 0x2000) == 0)
  {
    goto LABEL_12;
  }

LABEL_88:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v32 = *(a1 + 121);
  *v4 = 88;
  v4[1] = v32;
  v4 += 2;
  if ((v6 & 0x4000) == 0)
  {
LABEL_13:
    if ((v6 & 0x8000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_94;
  }

LABEL_91:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v33 = *(a1 + 122);
  *v4 = 96;
  v4[1] = v33;
  v4 += 2;
  if ((v6 & 0x8000) == 0)
  {
LABEL_14:
    if ((v6 & 0x20000) == 0)
    {
      goto LABEL_100;
    }

    goto LABEL_97;
  }

LABEL_94:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v34 = *(a1 + 123);
  *v4 = 104;
  v4[1] = v34;
  v4 += 2;
  if ((v6 & 0x20000) != 0)
  {
LABEL_97:
    if (*a3 <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
    }

    v35 = *(a1 + 128);
    *v4 = 113;
    *(v4 + 1) = v35;
    v4 += 9;
  }

LABEL_100:
  v36 = *(a1 + 32);
  if (v36 >= 1)
  {
    v37 = 8;
    do
    {
      v4 = sub_2763E1648(a3, 15, *(*(a1 + 40) + v37), v4);
      v37 += 8;
      --v36;
    }

    while (v36);
  }

  if ((v6 & 0x20) == 0)
  {
    if ((v6 & 0x10000) == 0)
    {
      goto LABEL_105;
    }

LABEL_125:
    if (*a3 <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
    }

    v46 = *(a1 + 124);
    *v4 = 392;
    if (v46 > 0x7F)
    {
      v4[2] = v46 | 0x80;
      v47 = v46 >> 7;
      if (v46 >> 14)
      {
        v4 += 4;
        do
        {
          *(v4 - 1) = v47 | 0x80;
          v48 = v47 >> 7;
          ++v4;
          v49 = v47 >> 14;
          v47 >>= 7;
        }

        while (v49);
        *(v4 - 1) = v48;
        if ((v6 & 0x40000) != 0)
        {
          goto LABEL_136;
        }
      }

      else
      {
        v4[3] = v47;
        v4 += 4;
        if ((v6 & 0x40000) != 0)
        {
          goto LABEL_136;
        }
      }
    }

    else
    {
      v4[2] = v46;
      v4 += 3;
      if ((v6 & 0x40000) != 0)
      {
        goto LABEL_136;
      }
    }

LABEL_106:
    if ((v6 & 0x80000) == 0)
    {
      goto LABEL_107;
    }

    goto LABEL_139;
  }

  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v40 = *(a1 + 88);
  *v4 = 386;
  v41 = *(v40 + 10);
  if (v41 > 0x7F)
  {
    v4[2] = v41 | 0x80;
    v43 = v41 >> 7;
    if (v41 >> 14)
    {
      v42 = v4 + 4;
      do
      {
        *(v42 - 1) = v43 | 0x80;
        v44 = v43 >> 7;
        ++v42;
        v45 = v43 >> 14;
        v43 >>= 7;
      }

      while (v45);
      *(v42 - 1) = v44;
    }

    else
    {
      v4[3] = v43;
      v42 = v4 + 4;
    }
  }

  else
  {
    v4[2] = v41;
    v42 = v4 + 3;
  }

  v4 = TSP::IndexSet::_InternalSerialize(v40, v42, a3);
  if ((v6 & 0x10000) != 0)
  {
    goto LABEL_125;
  }

LABEL_105:
  if ((v6 & 0x40000) == 0)
  {
    goto LABEL_106;
  }

LABEL_136:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v50 = *(a1 + 136);
  *v4 = 400;
  v4[2] = v50;
  v4 += 3;
  if ((v6 & 0x80000) == 0)
  {
LABEL_107:
    if ((v6 & 0x100000) == 0)
    {
      goto LABEL_108;
    }

LABEL_150:
    if (*a3 <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
    }

    v55 = *(a1 + 144);
    *v4 = 416;
    if (v55 > 0x7F)
    {
      v4[2] = v55 | 0x80;
      v56 = v55 >> 7;
      if (v55 >> 14)
      {
        v4 += 4;
        do
        {
          *(v4 - 1) = v56 | 0x80;
          v57 = v56 >> 7;
          ++v4;
          v58 = v56 >> 14;
          v56 >>= 7;
        }

        while (v58);
        *(v4 - 1) = v57;
        if ((v6 & 0x200000) != 0)
        {
          goto LABEL_161;
        }
      }

      else
      {
        v4[3] = v56;
        v4 += 4;
        if ((v6 & 0x200000) != 0)
        {
          goto LABEL_161;
        }
      }
    }

    else
    {
      v4[2] = v55;
      v4 += 3;
      if ((v6 & 0x200000) != 0)
      {
        goto LABEL_161;
      }
    }

LABEL_109:
    if ((v6 & 0x400000) == 0)
    {
      goto LABEL_110;
    }

LABEL_172:
    if (*a3 <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
    }

    v63 = *(a1 + 152);
    *v4 = 432;
    if (v63 > 0x7F)
    {
      v4[2] = v63 | 0x80;
      v64 = v63 >> 7;
      if (v63 >> 14)
      {
        v4 += 4;
        do
        {
          *(v4 - 1) = v64 | 0x80;
          v65 = v64 >> 7;
          ++v4;
          v66 = v64 >> 14;
          v64 >>= 7;
        }

        while (v66);
        *(v4 - 1) = v65;
        if ((v6 & 8) != 0)
        {
          goto LABEL_183;
        }
      }

      else
      {
        v4[3] = v64;
        v4 += 4;
        if ((v6 & 8) != 0)
        {
          goto LABEL_183;
        }
      }
    }

    else
    {
      v4[2] = v63;
      v4 += 3;
      if ((v6 & 8) != 0)
      {
        goto LABEL_183;
      }
    }

LABEL_111:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_113;
    }

    goto LABEL_112;
  }

LABEL_139:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v51 = *(a1 + 140);
  *v4 = 408;
  if (v51 > 0x7F)
  {
    v4[2] = v51 | 0x80;
    v52 = v51 >> 7;
    if (v51 >> 14)
    {
      v4 += 4;
      do
      {
        *(v4 - 1) = v52 | 0x80;
        v53 = v52 >> 7;
        ++v4;
        v54 = v52 >> 14;
        v52 >>= 7;
      }

      while (v54);
      *(v4 - 1) = v53;
      if ((v6 & 0x100000) != 0)
      {
        goto LABEL_150;
      }
    }

    else
    {
      v4[3] = v52;
      v4 += 4;
      if ((v6 & 0x100000) != 0)
      {
        goto LABEL_150;
      }
    }
  }

  else
  {
    v4[2] = v51;
    v4 += 3;
    if ((v6 & 0x100000) != 0)
    {
      goto LABEL_150;
    }
  }

LABEL_108:
  if ((v6 & 0x200000) == 0)
  {
    goto LABEL_109;
  }

LABEL_161:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v59 = *(a1 + 148);
  *v4 = 424;
  if (v59 > 0x7F)
  {
    v4[2] = v59 | 0x80;
    v60 = v59 >> 7;
    if (v59 >> 14)
    {
      v4 += 4;
      do
      {
        *(v4 - 1) = v60 | 0x80;
        v61 = v60 >> 7;
        ++v4;
        v62 = v60 >> 14;
        v60 >>= 7;
      }

      while (v62);
      *(v4 - 1) = v61;
      if ((v6 & 0x400000) != 0)
      {
        goto LABEL_172;
      }
    }

    else
    {
      v4[3] = v60;
      v4 += 4;
      if ((v6 & 0x400000) != 0)
      {
        goto LABEL_172;
      }
    }
  }

  else
  {
    v4[2] = v59;
    v4 += 3;
    if ((v6 & 0x400000) != 0)
    {
      goto LABEL_172;
    }
  }

LABEL_110:
  if ((v6 & 8) == 0)
  {
    goto LABEL_111;
  }

LABEL_183:
  v4 = sub_2763DD938(a3, 23, (*(a1 + 72) & 0xFFFFFFFFFFFFFFFELL), v4);
  if ((v6 & 0x10) != 0)
  {
LABEL_112:
    v4 = sub_2763DD938(a3, 24, (*(a1 + 80) & 0xFFFFFFFFFFFFFFFELL), v4);
  }

LABEL_113:
  v38 = *(a1 + 8);
  if ((v38 & 1) == 0)
  {
    return v4;
  }

  return MEMORY[0x2821EAC40]((v38 & 0xFFFFFFFFFFFFFFFELL) + 8, v4, a3);
}

uint64_t sub_276482C6C(uint64_t a1)
{
  v2 = *(a1 + 16);
  if ((v2 & 0x20) != 0)
  {
    v4 = TSP::IndexSet::ByteSizeLong(*(a1 + 88));
    v3 = v4 + ((9 * (__clz(v4 | 1) ^ 0x1F) + 73) >> 6) + 2;
    v2 = *(a1 + 16);
    if ((v2 & 0x40) == 0)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v3 = 0;
    if ((v2 & 0x40) == 0)
    {
      goto LABEL_9;
    }
  }

  v5 = *(a1 + 96);
  if (v5 < 0)
  {
    v6 = 11;
  }

  else
  {
    v6 = ((9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  v3 += v6;
LABEL_9:
  if ((v2 & 0x80) != 0)
  {
    v3 += ((9 * (__clz(*(a1 + 100) | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v2 & 0x100) == 0)
    {
LABEL_11:
      if ((v2 & 0x200) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_37;
    }
  }

  else if ((v2 & 0x100) == 0)
  {
    goto LABEL_11;
  }

  v10 = *(a1 + 104);
  if (v10 < 0)
  {
    v11 = 11;
  }

  else
  {
    v11 = ((9 * (__clz(v10 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  v3 += v11;
  if ((v2 & 0x200) == 0)
  {
LABEL_12:
    if ((v2 & 0x400) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_41;
  }

LABEL_37:
  v12 = *(a1 + 108);
  v13 = ((9 * (__clz(v12 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if (v12 >= 0)
  {
    v14 = v13;
  }

  else
  {
    v14 = 11;
  }

  v3 += v14;
  if ((v2 & 0x400) == 0)
  {
LABEL_13:
    if ((v2 & 0x800) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

LABEL_41:
  v3 += ((9 * (__clz(*(a1 + 112) | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 0x800) != 0)
  {
LABEL_14:
    v3 += ((9 * (__clz(*(a1 + 116) | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_15:
  v7.i64[0] = 0x200000002;
  v7.i64[1] = 0x200000002;
  v8 = v3 + vaddvq_s32(vandq_s8(vshlq_u32(vdupq_n_s32(v2), xmmword_2764F6920), v7));
  if ((v2 & 0x10000) != 0)
  {
    v8 += ((9 * (__clz(*(a1 + 124) | 1) ^ 0x1F) + 73) >> 6) + 2;
  }

  if ((v2 & 0x20000) != 0)
  {
    v8 += 9;
  }

  if ((v2 & 0x40000) != 0)
  {
    result = v8 + 3;
  }

  else
  {
    result = v8;
  }

  if ((v2 & 0x80000) != 0)
  {
    result += ((9 * (__clz(*(a1 + 140) | 1) ^ 0x1F) + 73) >> 6) + 2;
    if ((v2 & 0x100000) == 0)
    {
LABEL_24:
      if ((v2 & 0x200000) == 0)
      {
        goto LABEL_25;
      }

      goto LABEL_33;
    }
  }

  else if ((v2 & 0x100000) == 0)
  {
    goto LABEL_24;
  }

  result += ((9 * (__clz(*(a1 + 144) | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v2 & 0x200000) == 0)
  {
LABEL_25:
    if ((v2 & 0x400000) == 0)
    {
      return result;
    }

    goto LABEL_26;
  }

LABEL_33:
  result += ((9 * (__clz(*(a1 + 148) | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v2 & 0x400000) != 0)
  {
LABEL_26:
    result += ((9 * (__clz(*(a1 + 152) | 1) ^ 0x1F) + 73) >> 6) + 2;
  }

  return result;
}

uint64_t sub_276482F08(uint64_t a1)
{
  if ((~*(a1 + 16) & 0x7FFFE0) != 0)
  {
    v18 = sub_276482C6C(a1);
  }

  else
  {
    v2 = TSP::IndexSet::ByteSizeLong(*(a1 + 88));
    v3 = (9 * (__clz(v2 | 1) ^ 0x1F) + 73) >> 6;
    v4 = 10;
    v5 = *(a1 + 96);
    v6 = (9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6;
    if (v5 >= 0)
    {
      v4 = v6;
    }

    v7 = (9 * (__clz(*(a1 + 100) | 1) ^ 0x1F) + 73) >> 6;
    v8 = 10;
    v9 = *(a1 + 104);
    v10 = *(a1 + 108);
    v11 = (9 * (__clz(v9 | 1) ^ 0x1F) + 73) >> 6;
    if (v9 >= 0)
    {
      v8 = v11;
    }

    v12 = 48;
    v13 = ((9 * (__clz(v10 | 1) ^ 0x1F) + 73) >> 6) + 38;
    if (v10 >= 0)
    {
      v12 = v13;
    }

    v14.i64[0] = *(a1 + 112) | 0x100000001;
    v14.i32[2] = *(a1 + 124) | 1;
    v14.i32[3] = *(a1 + 140) | 1;
    v15.i64[0] = 0x1F0000001FLL;
    v15.i64[1] = 0x1F0000001FLL;
    v16.i64[0] = 0x4900000049;
    v16.i64[1] = 0x4900000049;
    v17 = vshrq_n_u32(vmlal_u16(v16, vmovn_s32(veorq_s8(vclzq_s32(v14), v15)), 0x9000900090009), 6uLL);
    *v15.i8 = vshr_n_u32(vmla_s32(0x4900000049, veor_s8(vclz_s32((*(a1 + 148) | 0x100000001)), 0x1F0000001FLL), 0x900000009), 6uLL);
    v18 = vaddlvq_u32(v17) + ((9 * (__clz(*(a1 + 144) | 1) ^ 0x1F) + 73) >> 6) + v15.u32[0] + v15.u32[1] + v12 + v8 + v7 + v4 + v3 + v2;
  }

  v19 = *(a1 + 32);
  v20 = v18 + v19;
  if (v19 >= 1)
  {
    v21 = (*(a1 + 40) + 8);
    do
    {
      v22 = *v21++;
      v23 = *(v22 + 23);
      v24 = *(v22 + 8);
      if ((v23 & 0x80u) == 0)
      {
        v24 = v23;
      }

      v20 += v24 + ((9 * (__clz(v24 | 1) ^ 0x1F) + 73) >> 6);
      --v19;
    }

    while (v19);
  }

  v25 = *(a1 + 16);
  if ((v25 & 0x1F) == 0)
  {
    goto LABEL_24;
  }

  if (v25)
  {
    v30 = *(a1 + 48) & 0xFFFFFFFFFFFFFFFELL;
    v31 = *(v30 + 23);
    v32 = *(v30 + 8);
    if ((v31 & 0x80u) == 0)
    {
      v32 = v31;
    }

    v20 += v32 + ((9 * (__clz(v32 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v25 & 2) == 0)
    {
LABEL_18:
      if ((v25 & 4) == 0)
      {
        goto LABEL_19;
      }

LABEL_32:
      v36 = *(a1 + 64) & 0xFFFFFFFFFFFFFFFELL;
      v37 = *(v36 + 23);
      v38 = *(v36 + 8);
      if ((v37 & 0x80u) == 0)
      {
        v38 = v37;
      }

      v20 += v38 + ((9 * (__clz(v38 | 1) ^ 0x1F) + 73) >> 6) + 1;
      if ((v25 & 8) == 0)
      {
LABEL_20:
        if ((v25 & 0x10) == 0)
        {
          goto LABEL_24;
        }

        goto LABEL_21;
      }

      goto LABEL_35;
    }
  }

  else if ((v25 & 2) == 0)
  {
    goto LABEL_18;
  }

  v33 = *(a1 + 56) & 0xFFFFFFFFFFFFFFFELL;
  v34 = *(v33 + 23);
  v35 = *(v33 + 8);
  if ((v34 & 0x80u) == 0)
  {
    v35 = v34;
  }

  v20 += v35 + ((9 * (__clz(v35 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v25 & 4) != 0)
  {
    goto LABEL_32;
  }

LABEL_19:
  if ((v25 & 8) == 0)
  {
    goto LABEL_20;
  }

LABEL_35:
  v39 = *(a1 + 72) & 0xFFFFFFFFFFFFFFFELL;
  v40 = *(v39 + 23);
  v41 = *(v39 + 8);
  if ((v40 & 0x80u) == 0)
  {
    v41 = v40;
  }

  v20 += v41 + ((9 * (__clz(v41 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v25 & 0x10) != 0)
  {
LABEL_21:
    v26 = *(a1 + 80) & 0xFFFFFFFFFFFFFFFELL;
    v27 = *(v26 + 23);
    v28 = *(v26 + 8);
    if ((v27 & 0x80u) == 0)
    {
      v28 = v27;
    }

    v20 += v28 + ((9 * (__clz(v28 | 1) ^ 0x1F) + 73) >> 6) + 2;
  }

LABEL_24:
  if (*(a1 + 8))
  {

    return google::protobuf::internal::ComputeUnknownFieldsSize();
  }

  else
  {
    *(a1 + 20) = v20;
    return v20;
  }
}

uint64_t sub_2764832A0(uint64_t a1, void *lpsrc)
{
  v4 = __dynamic_cast(lpsrc, MEMORY[0x277D80A98], &unk_288527F00, 0);
  if (v4)
  {

    return sub_276483348(a1, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, a1);
  }
}

uint64_t sub_276483348(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 8);
  if (v4)
  {
    result = sub_2763D4F88((result + 8), (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  v5 = *(a2 + 32);
  if (v5)
  {
    v6 = *(a2 + 40);
    v7 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((v3 + 24));
    result = sub_2763F8F34((v3 + 24), v7, (v6 + 8), v5, **(v3 + 40) - *(v3 + 32));
    v8 = *(v3 + 32) + v5;
    *(v3 + 32) = v8;
    v9 = *(v3 + 40);
    if (*v9 < v8)
    {
      *v9 = v8;
    }
  }

  v10 = *(a2 + 16);
  if (v10)
  {
    if (v10)
    {
      *(v3 + 16) |= 1u;
      result = google::protobuf::internal::ArenaStringPtr::Set();
      if ((v10 & 2) == 0)
      {
LABEL_9:
        if ((v10 & 4) == 0)
        {
          goto LABEL_10;
        }

        goto LABEL_41;
      }
    }

    else if ((v10 & 2) == 0)
    {
      goto LABEL_9;
    }

    *(v3 + 16) |= 2u;
    result = google::protobuf::internal::ArenaStringPtr::Set();
    if ((v10 & 4) == 0)
    {
LABEL_10:
      if ((v10 & 8) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_42;
    }

LABEL_41:
    *(v3 + 16) |= 4u;
    result = google::protobuf::internal::ArenaStringPtr::Set();
    if ((v10 & 8) == 0)
    {
LABEL_11:
      if ((v10 & 0x10) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_43;
    }

LABEL_42:
    *(v3 + 16) |= 8u;
    result = google::protobuf::internal::ArenaStringPtr::Set();
    if ((v10 & 0x10) == 0)
    {
LABEL_12:
      if ((v10 & 0x20) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_44;
    }

LABEL_43:
    *(v3 + 16) |= 0x10u;
    result = google::protobuf::internal::ArenaStringPtr::Set();
    if ((v10 & 0x20) == 0)
    {
LABEL_13:
      if ((v10 & 0x40) == 0)
      {
        goto LABEL_14;
      }

      goto LABEL_52;
    }

LABEL_44:
    *(v3 + 16) |= 0x20u;
    v11 = *(v3 + 88);
    if (!v11)
    {
      v12 = *(v3 + 8);
      if (v12)
      {
        v12 = *(v12 & 0xFFFFFFFFFFFFFFFELL);
      }

      v11 = MEMORY[0x277C97B70](v12);
      *(v3 + 88) = v11;
    }

    if (*(a2 + 88))
    {
      v13 = *(a2 + 88);
    }

    else
    {
      v13 = MEMORY[0x277D80A08];
    }

    result = TSP::IndexSet::MergeFrom(v11, v13);
    if ((v10 & 0x40) == 0)
    {
LABEL_14:
      if ((v10 & 0x80) == 0)
      {
LABEL_16:
        *(v3 + 16) |= v10;
        goto LABEL_17;
      }

LABEL_15:
      *(v3 + 100) = *(a2 + 100);
      goto LABEL_16;
    }

LABEL_52:
    *(v3 + 96) = *(a2 + 96);
    if ((v10 & 0x80) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

LABEL_17:
  if ((v10 & 0xFF00) == 0)
  {
    goto LABEL_28;
  }

  if ((v10 & 0x100) != 0)
  {
    *(v3 + 104) = *(a2 + 104);
    if ((v10 & 0x200) == 0)
    {
LABEL_20:
      if ((v10 & 0x400) == 0)
      {
        goto LABEL_21;
      }

      goto LABEL_56;
    }
  }

  else if ((v10 & 0x200) == 0)
  {
    goto LABEL_20;
  }

  *(v3 + 108) = *(a2 + 108);
  if ((v10 & 0x400) == 0)
  {
LABEL_21:
    if ((v10 & 0x800) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_57;
  }

LABEL_56:
  *(v3 + 112) = *(a2 + 112);
  if ((v10 & 0x800) == 0)
  {
LABEL_22:
    if ((v10 & 0x1000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_58;
  }

LABEL_57:
  *(v3 + 116) = *(a2 + 116);
  if ((v10 & 0x1000) == 0)
  {
LABEL_23:
    if ((v10 & 0x2000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_59;
  }

LABEL_58:
  *(v3 + 120) = *(a2 + 120);
  if ((v10 & 0x2000) == 0)
  {
LABEL_24:
    if ((v10 & 0x4000) == 0)
    {
      goto LABEL_25;
    }

LABEL_60:
    *(v3 + 122) = *(a2 + 122);
    if ((v10 & 0x8000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_26;
  }

LABEL_59:
  *(v3 + 121) = *(a2 + 121);
  if ((v10 & 0x4000) != 0)
  {
    goto LABEL_60;
  }

LABEL_25:
  if ((v10 & 0x8000) != 0)
  {
LABEL_26:
    *(v3 + 123) = *(a2 + 123);
  }

LABEL_27:
  *(v3 + 16) |= v10;
LABEL_28:
  if ((v10 & 0x7F0000) == 0)
  {
    return result;
  }

  if ((v10 & 0x10000) != 0)
  {
    *(v3 + 124) = *(a2 + 124);
    if ((v10 & 0x20000) == 0)
    {
LABEL_31:
      if ((v10 & 0x40000) == 0)
      {
        goto LABEL_32;
      }

      goto LABEL_64;
    }
  }

  else if ((v10 & 0x20000) == 0)
  {
    goto LABEL_31;
  }

  *(v3 + 128) = *(a2 + 128);
  if ((v10 & 0x40000) == 0)
  {
LABEL_32:
    if ((v10 & 0x80000) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_65;
  }

LABEL_64:
  *(v3 + 136) = *(a2 + 136);
  if ((v10 & 0x80000) == 0)
  {
LABEL_33:
    if ((v10 & 0x100000) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_66;
  }

LABEL_65:
  *(v3 + 140) = *(a2 + 140);
  if ((v10 & 0x100000) == 0)
  {
LABEL_34:
    if ((v10 & 0x200000) == 0)
    {
      goto LABEL_35;
    }

LABEL_67:
    *(v3 + 148) = *(a2 + 148);
    if ((v10 & 0x400000) == 0)
    {
      goto LABEL_37;
    }

    goto LABEL_36;
  }

LABEL_66:
  *(v3 + 144) = *(a2 + 144);
  if ((v10 & 0x200000) != 0)
  {
    goto LABEL_67;
  }

LABEL_35:
  if ((v10 & 0x400000) != 0)
  {
LABEL_36:
    *(v3 + 152) = *(a2 + 152);
  }

LABEL_37:
  *(v3 + 16) |= v10;
  return result;
}

void *sub_2764836A0(void *result, void *a2)
{
  if (a2 != result)
  {
    v4 = result;
    sub_276481698(result);

    return sub_2764832A0(v4, a2);
  }

  return result;
}

uint64_t sub_2764836EC(uint64_t a1)
{
  if ((~*(a1 + 16) & 0x7FFFE0) != 0)
  {
    return 0;
  }

  else
  {
    return TSP::IndexSet::IsInitialized(*(a1 + 88));
  }
}

uint64_t sub_276483744(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_288527918;
  *(a1 + 8) = a2;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  if (atomic_load_explicit(dword_2812EE490, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(a1 + 32) = MEMORY[0x277D80A90];
  *(a1 + 40) = 0u;
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
  *(a1 + 216) = 0u;
  *(a1 + 232) = 0u;
  *(a1 + 248) = 0;
  return a1;
}

uint64_t sub_2764837F4(uint64_t a1)
{
  sub_276483828(a1);
  sub_2763941F4((a1 + 8));
  return a1;
}

uint64_t sub_276483828(uint64_t result)
{
  v1 = result;
  v2 = *(result + 32);
  if (v2 != MEMORY[0x277D80A90])
  {
    if (*(v2 + 23) < 0)
    {
      operator delete(*v2);
    }

    result = MEMORY[0x277C98580](v2, 0x1012C40EC159624);
  }

  if (v1 != &unk_2812F27C8)
  {
    if (*(v1 + 40))
    {
      v3 = MEMORY[0x277C976F0]();
      MEMORY[0x277C98580](v3, 0x10A1C40AC828A93);
    }

    if (*(v1 + 48))
    {
      v4 = MEMORY[0x277C971C0]();
      MEMORY[0x277C98580](v4, 0x10A1C4042C41316);
    }

    if (*(v1 + 56))
    {
      v5 = MEMORY[0x277C97240]();
      MEMORY[0x277C98580](v5, 0x10A1C4078DB9C03);
    }

    if (*(v1 + 64))
    {
      v6 = MEMORY[0x277C971C0]();
      MEMORY[0x277C98580](v6, 0x10A1C4042C41316);
    }

    if (*(v1 + 72))
    {
      v7 = MEMORY[0x277C97240]();
      MEMORY[0x277C98580](v7, 0x10A1C4078DB9C03);
    }

    v8 = *(v1 + 80);
    if (v8)
    {
      TSP::Color::~Color(v8);
      MEMORY[0x277C98580]();
    }

    if (*(v1 + 88))
    {
      v9 = MEMORY[0x277C97200]();
      MEMORY[0x277C98580](v9, 0x10A1C40C8B7F858);
    }

    if (*(v1 + 96))
    {
      v10 = MEMORY[0x277C97200]();
      MEMORY[0x277C98580](v10, 0x10A1C40C8B7F858);
    }

    if (*(v1 + 104))
    {
      v11 = MEMORY[0x277C97200]();
      MEMORY[0x277C98580](v11, 0x10A1C40C8B7F858);
    }

    if (*(v1 + 112))
    {
      v12 = MEMORY[0x277C97200]();
      MEMORY[0x277C98580](v12, 0x10A1C40C8B7F858);
    }

    if (*(v1 + 120))
    {
      v13 = MEMORY[0x277C97200]();
      MEMORY[0x277C98580](v13, 0x10A1C40C8B7F858);
    }

    if (*(v1 + 128))
    {
      v14 = MEMORY[0x277C97200]();
      MEMORY[0x277C98580](v14, 0x10A1C40C8B7F858);
    }

    if (*(v1 + 136))
    {
      v15 = MEMORY[0x277C97200]();
      MEMORY[0x277C98580](v15, 0x10A1C40C8B7F858);
    }

    if (*(v1 + 144))
    {
      v16 = MEMORY[0x277C97200]();
      MEMORY[0x277C98580](v16, 0x10A1C40C8B7F858);
    }

    v17 = *(v1 + 152);
    if (v17)
    {
      v18 = sub_27643EBB8(v17);
      MEMORY[0x277C98580](v18, 0x10A1C4000E43543);
    }

    v19 = *(v1 + 160);
    if (v19)
    {
      v20 = sub_27643EBB8(v19);
      MEMORY[0x277C98580](v20, 0x10A1C4000E43543);
    }

    v21 = *(v1 + 168);
    if (v21)
    {
      v22 = sub_27643EBB8(v21);
      MEMORY[0x277C98580](v22, 0x10A1C4000E43543);
    }

    v23 = *(v1 + 176);
    if (v23)
    {
      v24 = sub_27643EBB8(v23);
      MEMORY[0x277C98580](v24, 0x10A1C4000E43543);
    }

    v25 = *(v1 + 184);
    if (v25)
    {
      v26 = sub_27643EBB8(v25);
      MEMORY[0x277C98580](v26, 0x10A1C4000E43543);
    }

    result = *(v1 + 192);
    if (result)
    {
      sub_27643EBB8(result);

      JUMPOUT(0x277C98580);
    }
  }

  return result;
}

void sub_276483AA4(uint64_t a1)
{
  sub_2764837F4(a1);

  JUMPOUT(0x277C98580);
}

void *sub_276483AE4()
{
  if (atomic_load_explicit(dword_2812EE490, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &unk_2812F27C8;
}

google::protobuf::UnknownFieldSet *sub_276483B24(google::protobuf::UnknownFieldSet *result)
{
  v1 = result;
  v2 = *(result + 4);
  if (!v2)
  {
    goto LABEL_11;
  }

  if (v2)
  {
    v5 = *(result + 4) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v5 + 23) < 0)
    {
      **v5 = 0;
      *(v5 + 8) = 0;
      if ((v2 & 2) != 0)
      {
        goto LABEL_55;
      }
    }

    else
    {
      *v5 = 0;
      *(v5 + 23) = 0;
      if ((v2 & 2) != 0)
      {
        goto LABEL_55;
      }
    }

LABEL_4:
    if ((v2 & 4) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_56;
  }

  if ((v2 & 2) == 0)
  {
    goto LABEL_4;
  }

LABEL_55:
  result = TSS::StyleArchive::Clear(*(result + 5));
  if ((v2 & 4) == 0)
  {
LABEL_5:
    if ((v2 & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_57;
  }

LABEL_56:
  result = TSD::FillArchive::Clear(*(v1 + 6));
  if ((v2 & 8) == 0)
  {
LABEL_6:
    if ((v2 & 0x10) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_58;
  }

LABEL_57:
  result = TSD::StrokeArchive::Clear(*(v1 + 7));
  if ((v2 & 0x10) == 0)
  {
LABEL_7:
    if ((v2 & 0x20) == 0)
    {
      goto LABEL_8;
    }

LABEL_59:
    result = TSD::StrokeArchive::Clear(*(v1 + 9));
    if ((v2 & 0x40) == 0)
    {
LABEL_9:
      if ((v2 & 0x80) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_10;
    }

    goto LABEL_60;
  }

LABEL_58:
  result = TSD::FillArchive::Clear(*(v1 + 8));
  if ((v2 & 0x20) != 0)
  {
    goto LABEL_59;
  }

LABEL_8:
  if ((v2 & 0x40) == 0)
  {
    goto LABEL_9;
  }

LABEL_60:
  result = TSP::Color::Clear(*(v1 + 10));
  if ((v2 & 0x80) != 0)
  {
LABEL_10:
    result = TSD::ShadowArchive::Clear(*(v1 + 11));
  }

LABEL_11:
  if ((v2 & 0xFF00) == 0)
  {
    goto LABEL_21;
  }

  if ((v2 & 0x100) != 0)
  {
    result = TSD::ShadowArchive::Clear(*(v1 + 12));
    if ((v2 & 0x200) == 0)
    {
LABEL_14:
      if ((v2 & 0x400) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_43;
    }
  }

  else if ((v2 & 0x200) == 0)
  {
    goto LABEL_14;
  }

  result = TSD::ShadowArchive::Clear(*(v1 + 13));
  if ((v2 & 0x400) == 0)
  {
LABEL_15:
    if ((v2 & 0x800) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_44;
  }

LABEL_43:
  result = TSD::ShadowArchive::Clear(*(v1 + 14));
  if ((v2 & 0x800) == 0)
  {
LABEL_16:
    if ((v2 & 0x1000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_45;
  }

LABEL_44:
  result = TSD::ShadowArchive::Clear(*(v1 + 15));
  if ((v2 & 0x1000) == 0)
  {
LABEL_17:
    if ((v2 & 0x2000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_46;
  }

LABEL_45:
  result = TSD::ShadowArchive::Clear(*(v1 + 16));
  if ((v2 & 0x2000) == 0)
  {
LABEL_18:
    if ((v2 & 0x4000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_47;
  }

LABEL_46:
  result = TSD::ShadowArchive::Clear(*(v1 + 17));
  if ((v2 & 0x4000) == 0)
  {
LABEL_19:
    if ((v2 & 0x8000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_20;
  }

LABEL_47:
  result = TSD::ShadowArchive::Clear(*(v1 + 18));
  if ((v2 & 0x8000) != 0)
  {
LABEL_20:
    result = sub_27643EBFC(*(v1 + 19));
  }

LABEL_21:
  if ((v2 & 0x1F0000) == 0)
  {
    goto LABEL_28;
  }

  if ((v2 & 0x10000) != 0)
  {
    result = sub_27643EBFC(*(v1 + 20));
    if ((v2 & 0x20000) == 0)
    {
LABEL_24:
      if ((v2 & 0x40000) == 0)
      {
        goto LABEL_25;
      }

      goto LABEL_51;
    }
  }

  else if ((v2 & 0x20000) == 0)
  {
    goto LABEL_24;
  }

  result = sub_27643EBFC(*(v1 + 21));
  if ((v2 & 0x40000) == 0)
  {
LABEL_25:
    if ((v2 & 0x80000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_52;
  }

LABEL_51:
  result = sub_27643EBFC(*(v1 + 22));
  if ((v2 & 0x80000) == 0)
  {
LABEL_26:
    if ((v2 & 0x100000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_27;
  }

LABEL_52:
  result = sub_27643EBFC(*(v1 + 23));
  if ((v2 & 0x100000) != 0)
  {
LABEL_27:
    result = sub_27643EBFC(*(v1 + 24));
  }

LABEL_28:
  if ((v2 & 0xE00000) != 0)
  {
    *(v1 + 52) = 0;
    *(v1 + 25) = 0;
  }

  if (HIBYTE(v2))
  {
    *(v1 + 220) = 0;
    *(v1 + 212) = 0;
    *(v1 + 233) = 0;
    *(v1 + 228) = 0;
  }

  if ((*(v1 + 20) & 0x7F) != 0)
  {
    *(v1 + 31) = 0;
    *(v1 + 241) = 0;
  }

  v4 = *(v1 + 8);
  v3 = (v1 + 8);
  v3[1] = 0;
  if (v4)
  {

    return sub_2763D4FD4(v3);
  }

  return result;
}

google::protobuf::internal *sub_276483D3C(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v102 = a2;
  if ((sub_2763D4D98(a3, &v102, *(a3 + 92)) & 1) == 0)
  {
    while (1)
    {
      v6 = (v102 + 1);
      v7 = *v102;
      if (*v102 < 0)
      {
        v8 = v7 + (*v6 << 7);
        v7 = v8 - 128;
        if (*v6 < 0)
        {
          TagFallback = google::protobuf::internal::ReadTagFallback(v102, (v8 - 128));
          v102 = TagFallback;
          if (!TagFallback)
          {
            return 0;
          }

          v6 = TagFallback;
          v7 = v15;
          goto LABEL_7;
        }

        v6 = (v102 + 2);
      }

      v102 = v6;
LABEL_7:
      switch(v7 >> 3)
      {
        case 1u:
          if (v7 != 10)
          {
            goto LABEL_197;
          }

          *(a1 + 16) |= 2u;
          v9 = *(a1 + 40);
          if (!v9)
          {
            v10 = *(a1 + 8);
            if (v10)
            {
              v10 = *(v10 & 0xFFFFFFFFFFFFFFFELL);
            }

            v9 = MEMORY[0x277C97BA0](v10);
            *(a1 + 40) = v9;
            v6 = v102;
          }

          v11 = sub_2764AC1AC(a3, v9, v6);
          goto LABEL_190;
        case 2u:
        case 3u:
        case 4u:
        case 5u:
        case 6u:
        case 7u:
        case 8u:
        case 9u:
        case 0x11u:
        case 0x1Au:
        case 0x1Bu:
        case 0x1Cu:
        case 0x1Du:
          goto LABEL_197;
        case 0xAu:
          if (v7 != 82)
          {
            goto LABEL_197;
          }

          *(a1 + 16) |= 4u;
          v23 = *(a1 + 48);
          if (v23)
          {
            goto LABEL_49;
          }

          v25 = *(a1 + 8);
          if (v25)
          {
            v25 = *(v25 & 0xFFFFFFFFFFFFFFFELL);
          }

          v23 = MEMORY[0x277C97A80](v25);
          *(a1 + 48) = v23;
          goto LABEL_48;
        case 0xBu:
          if (v7 != 90)
          {
            goto LABEL_197;
          }

          *(a1 + 16) |= 8u;
          v20 = *(a1 + 56);
          if (v20)
          {
            goto LABEL_66;
          }

          v32 = *(a1 + 8);
          if (v32)
          {
            v32 = *(v32 & 0xFFFFFFFFFFFFFFFELL);
          }

          v20 = MEMORY[0x277C97AA0](v32);
          *(a1 + 56) = v20;
          goto LABEL_65;
        case 0xCu:
          if (v7 != 98)
          {
            goto LABEL_197;
          }

          *(a1 + 16) |= 0x10u;
          v23 = *(a1 + 64);
          if (v23)
          {
            goto LABEL_49;
          }

          v24 = *(a1 + 8);
          if (v24)
          {
            v24 = *(v24 & 0xFFFFFFFFFFFFFFFELL);
          }

          v23 = MEMORY[0x277C97A80](v24);
          *(a1 + 64) = v23;
LABEL_48:
          v6 = v102;
LABEL_49:
          v11 = sub_2764AC00C(a3, v23, v6);
          goto LABEL_190;
        case 0xDu:
          if (v7 != 109)
          {
            goto LABEL_197;
          }

          *(a1 + 16) |= 0x200000u;
          v36 = *v6;
          v16 = (v6 + 4);
          *(a1 + 200) = v36;
          goto LABEL_194;
        case 0xEu:
          if (v7 != 117)
          {
            goto LABEL_197;
          }

          *(a1 + 16) |= 0x400000u;
          v19 = *v6;
          v16 = (v6 + 4);
          *(a1 + 204) = v19;
          goto LABEL_194;
        case 0xFu:
          if (v7 != 120)
          {
            goto LABEL_197;
          }

          *(a1 + 16) |= 0x80000000;
          v39 = (v6 + 1);
          v38 = *v6;
          if ((v38 & 0x8000000000000000) == 0)
          {
            goto LABEL_91;
          }

          v40 = *v39;
          v38 = (v40 << 7) + v38 - 128;
          if (v40 < 0)
          {
            v84 = google::protobuf::internal::VarintParseSlow64(v6, v38);
            v102 = v84;
            *(a1 + 240) = v85 != 0;
            if (!v84)
            {
              return 0;
            }
          }

          else
          {
            v39 = (v6 + 2);
LABEL_91:
            v102 = v39;
            *(a1 + 240) = v38 != 0;
          }

          goto LABEL_195;
        case 0x10u:
          if (v7 != 130)
          {
            goto LABEL_197;
          }

          *(a1 + 16) |= 0x20u;
          v20 = *(a1 + 72);
          if (v20)
          {
            goto LABEL_66;
          }

          v21 = *(a1 + 8);
          if (v21)
          {
            v21 = *(v21 & 0xFFFFFFFFFFFFFFFELL);
          }

          v20 = MEMORY[0x277C97AA0](v21);
          *(a1 + 72) = v20;
LABEL_65:
          v6 = v102;
LABEL_66:
          v11 = sub_2764AC69C(a3, v20, v6);
          goto LABEL_190;
        case 0x12u:
          if (v7 != 146)
          {
            goto LABEL_197;
          }

          *(a1 + 16) |= 0x40u;
          v33 = *(a1 + 80);
          if (!v33)
          {
            v34 = *(a1 + 8);
            if (v34)
            {
              v34 = *(v34 & 0xFFFFFFFFFFFFFFFELL);
            }

            v33 = MEMORY[0x277C97B50](v34);
            *(a1 + 80) = v33;
            v6 = v102;
          }

          v11 = sub_2764AC83C(a3, v33, v6);
          goto LABEL_190;
        case 0x13u:
          if (v7 != 157)
          {
            goto LABEL_197;
          }

          *(a1 + 16) |= 0x800000u;
          v22 = *v6;
          v16 = (v6 + 4);
          *(a1 + 208) = v22;
          goto LABEL_194;
        case 0x14u:
          if (v7 != 160)
          {
            goto LABEL_197;
          }

          *(a1 + 20) |= 1u;
          v27 = (v6 + 1);
          v26 = *v6;
          if ((v26 & 0x8000000000000000) == 0)
          {
            goto LABEL_54;
          }

          v28 = *v27;
          v26 = (v28 << 7) + v26 - 128;
          if (v28 < 0)
          {
            v80 = google::protobuf::internal::VarintParseSlow64(v6, v26);
            v102 = v80;
            *(a1 + 241) = v81 != 0;
            if (!v80)
            {
              return 0;
            }
          }

          else
          {
            v27 = (v6 + 2);
LABEL_54:
            v102 = v27;
            *(a1 + 241) = v26 != 0;
          }

          goto LABEL_195;
        case 0x15u:
          if (v7 != 170)
          {
            goto LABEL_197;
          }

          *(a1 + 16) |= 0x80u;
          v12 = *(a1 + 88);
          if (v12)
          {
            goto LABEL_157;
          }

          v37 = *(a1 + 8);
          if (v37)
          {
            v37 = *(v37 & 0xFFFFFFFFFFFFFFFELL);
          }

          v12 = MEMORY[0x277C97A90](v37);
          *(a1 + 88) = v12;
          goto LABEL_156;
        case 0x16u:
          if (v7 != 181)
          {
            goto LABEL_197;
          }

          *(a1 + 16) |= 0x1000000u;
          v17 = *v6;
          v16 = (v6 + 4);
          *(a1 + 212) = v17;
          goto LABEL_194;
        case 0x17u:
          if (v7 != 184)
          {
            goto LABEL_197;
          }

          *(a1 + 16) |= 0x2000000u;
          v43 = (v6 + 1);
          LODWORD(v42) = *v6;
          if ((v42 & 0x80) == 0)
          {
            goto LABEL_98;
          }

          v44 = *v43;
          v42 = (v42 + (v44 << 7) - 128);
          if (v44 < 0)
          {
            v86 = google::protobuf::internal::VarintParseSlow64(v6, v42);
            v102 = v86;
            *(a1 + 216) = v87;
            if (!v86)
            {
              return 0;
            }
          }

          else
          {
            v43 = (v6 + 2);
LABEL_98:
            v102 = v43;
            *(a1 + 216) = v42;
          }

          goto LABEL_195;
        case 0x18u:
          if (v7 != 194)
          {
            goto LABEL_197;
          }

          *(a1 + 16) |= 1u;
          google::protobuf::internal::ArenaStringPtr::Mutable();
          v11 = google::protobuf::internal::InlineGreedyStringParser();
          goto LABEL_190;
        case 0x19u:
          if (v7 != 200)
          {
            goto LABEL_197;
          }

          *(a1 + 16) |= 0x4000000u;
          v30 = (v6 + 1);
          LODWORD(v29) = *v6;
          if ((v29 & 0x80) == 0)
          {
            goto LABEL_59;
          }

          v31 = *v30;
          v29 = (v29 + (v31 << 7) - 128);
          if (v31 < 0)
          {
            v82 = google::protobuf::internal::VarintParseSlow64(v6, v29);
            v102 = v82;
            *(a1 + 220) = v83;
            if (!v82)
            {
              return 0;
            }
          }

          else
          {
            v30 = (v6 + 2);
LABEL_59:
            v102 = v30;
            *(a1 + 220) = v29;
          }

          goto LABEL_195;
        case 0x1Eu:
          if (v7 != 240)
          {
            goto LABEL_197;
          }

          *(a1 + 16) |= 0x8000000u;
          v49 = (v6 + 1);
          LODWORD(v48) = *v6;
          if ((v48 & 0x80) == 0)
          {
            goto LABEL_108;
          }

          v50 = *v49;
          v48 = (v48 + (v50 << 7) - 128);
          if (v50 < 0)
          {
            v90 = google::protobuf::internal::VarintParseSlow64(v6, v48);
            v102 = v90;
            *(a1 + 224) = v91;
            if (!v90)
            {
              return 0;
            }
          }

          else
          {
            v49 = (v6 + 2);
LABEL_108:
            v102 = v49;
            *(a1 + 224) = v48;
          }

          goto LABEL_195;
        case 0x1Fu:
          if (v7 != 248)
          {
            goto LABEL_197;
          }

          *(a1 + 16) |= 0x10000000u;
          v46 = (v6 + 1);
          LODWORD(v45) = *v6;
          if ((v45 & 0x80) == 0)
          {
            goto LABEL_103;
          }

          v47 = *v46;
          v45 = (v45 + (v47 << 7) - 128);
          if (v47 < 0)
          {
            v88 = google::protobuf::internal::VarintParseSlow64(v6, v45);
            v102 = v88;
            *(a1 + 228) = v89;
            if (!v88)
            {
              return 0;
            }
          }

          else
          {
            v46 = (v6 + 2);
LABEL_103:
            v102 = v46;
            *(a1 + 228) = v45;
          }

          goto LABEL_195;
        case 0x20u:
          if (v7 != 2)
          {
            goto LABEL_197;
          }

          *(a1 + 16) |= 0x100u;
          v12 = *(a1 + 96);
          if (v12)
          {
            goto LABEL_157;
          }

          v18 = *(a1 + 8);
          if (v18)
          {
            v18 = *(v18 & 0xFFFFFFFFFFFFFFFELL);
          }

          v12 = MEMORY[0x277C97A90](v18);
          *(a1 + 96) = v12;
          goto LABEL_156;
        case 0x21u:
          if (v7 != 10)
          {
            goto LABEL_197;
          }

          *(a1 + 16) |= 0x200u;
          v12 = *(a1 + 104);
          if (v12)
          {
            goto LABEL_157;
          }

          v35 = *(a1 + 8);
          if (v35)
          {
            v35 = *(v35 & 0xFFFFFFFFFFFFFFFELL);
          }

          v12 = MEMORY[0x277C97A90](v35);
          *(a1 + 104) = v12;
LABEL_156:
          v6 = v102;
LABEL_157:
          v11 = sub_2764AC76C(a3, v12, v6);
          goto LABEL_190;
        case 0x22u:
          if (v7 != 21)
          {
            goto LABEL_197;
          }

          *(a1 + 16) |= 0x20000000u;
          v51 = *v6;
          v16 = (v6 + 4);
          *(a1 + 232) = v51;
          goto LABEL_194;
        case 0x23u:
          if (v7 == 29)
          {
            *(a1 + 16) |= 0x40000000u;
            v41 = *v6;
            v16 = (v6 + 4);
            *(a1 + 236) = v41;
LABEL_194:
            v102 = v16;
          }

          else
          {
LABEL_197:
            if (v7)
            {
              v79 = (v7 & 7) == 4;
            }

            else
            {
              v79 = 1;
            }

            if (v79)
            {
              *(a3 + 80) = v7 - 1;
              return v102;
            }

            if ((*(a1 + 8) & 1) == 0)
            {
              sub_2763D4E10((a1 + 8));
            }

            v11 = google::protobuf::internal::UnknownFieldParse();
LABEL_190:
            v102 = v11;
            if (!v11)
            {
              return 0;
            }
          }

LABEL_195:
          if (sub_2763D4D98(a3, &v102, *(a3 + 92)))
          {
            return v102;
          }

          break;
        default:
          switch(v7 >> 3)
          {
            case 0x134u:
              if (v7 != 162)
              {
                goto LABEL_197;
              }

              *(a1 + 16) |= 0x400u;
              v12 = *(a1 + 112);
              if (v12)
              {
                goto LABEL_157;
              }

              v13 = *(a1 + 8);
              if (v13)
              {
                v13 = *(v13 & 0xFFFFFFFFFFFFFFFELL);
              }

              v12 = MEMORY[0x277C97A90](v13);
              *(a1 + 112) = v12;
              goto LABEL_156;
            case 0x135u:
              if (v7 != 170)
              {
                goto LABEL_197;
              }

              *(a1 + 16) |= 0x800u;
              v12 = *(a1 + 120);
              if (v12)
              {
                goto LABEL_157;
              }

              v62 = *(a1 + 8);
              if (v62)
              {
                v62 = *(v62 & 0xFFFFFFFFFFFFFFFELL);
              }

              v12 = MEMORY[0x277C97A90](v62);
              *(a1 + 120) = v12;
              goto LABEL_156;
            case 0x136u:
              if (v7 != 178)
              {
                goto LABEL_197;
              }

              *(a1 + 16) |= 0x1000u;
              v12 = *(a1 + 128);
              if (v12)
              {
                goto LABEL_157;
              }

              v61 = *(a1 + 8);
              if (v61)
              {
                v61 = *(v61 & 0xFFFFFFFFFFFFFFFELL);
              }

              v12 = MEMORY[0x277C97A90](v61);
              *(a1 + 128) = v12;
              goto LABEL_156;
            case 0x137u:
              if (v7 != 186)
              {
                goto LABEL_197;
              }

              *(a1 + 16) |= 0x2000u;
              v12 = *(a1 + 136);
              if (v12)
              {
                goto LABEL_157;
              }

              v58 = *(a1 + 8);
              if (v58)
              {
                v58 = *(v58 & 0xFFFFFFFFFFFFFFFELL);
              }

              v12 = MEMORY[0x277C97A90](v58);
              *(a1 + 136) = v12;
              goto LABEL_156;
            case 0x138u:
              if (v7 != 194)
              {
                goto LABEL_197;
              }

              *(a1 + 16) |= 0x4000u;
              v12 = *(a1 + 144);
              if (v12)
              {
                goto LABEL_157;
              }

              v63 = *(a1 + 8);
              if (v63)
              {
                v63 = *(v63 & 0xFFFFFFFFFFFFFFFELL);
              }

              v12 = MEMORY[0x277C97A90](v63);
              *(a1 + 144) = v12;
              goto LABEL_156;
            case 0x139u:
              if (v7 != 202)
              {
                goto LABEL_197;
              }

              *(a1 + 16) |= 0x8000u;
              v55 = *(a1 + 152);
              if (v55)
              {
                goto LABEL_189;
              }

              v60 = *(a1 + 8);
              if (v60)
              {
                v60 = *(v60 & 0xFFFFFFFFFFFFFFFELL);
              }

              v55 = sub_276447688(v60);
              *(a1 + 152) = v55;
              goto LABEL_188;
            case 0x13Au:
              if (v7 != 210)
              {
                goto LABEL_197;
              }

              *(a1 + 16) |= 0x10000u;
              v55 = *(a1 + 160);
              if (v55)
              {
                goto LABEL_189;
              }

              v57 = *(a1 + 8);
              if (v57)
              {
                v57 = *(v57 & 0xFFFFFFFFFFFFFFFELL);
              }

              v55 = sub_276447688(v57);
              *(a1 + 160) = v55;
              goto LABEL_188;
            case 0x13Bu:
              if (v7 != 218)
              {
                goto LABEL_197;
              }

              *(a1 + 16) |= 0x20000u;
              v55 = *(a1 + 168);
              if (v55)
              {
                goto LABEL_189;
              }

              v59 = *(a1 + 8);
              if (v59)
              {
                v59 = *(v59 & 0xFFFFFFFFFFFFFFFELL);
              }

              v55 = sub_276447688(v59);
              *(a1 + 168) = v55;
              goto LABEL_188;
            case 0x13Cu:
              if (v7 != 226)
              {
                goto LABEL_197;
              }

              *(a1 + 16) |= 0x40000u;
              v55 = *(a1 + 176);
              if (v55)
              {
                goto LABEL_189;
              }

              v73 = *(a1 + 8);
              if (v73)
              {
                v73 = *(v73 & 0xFFFFFFFFFFFFFFFELL);
              }

              v55 = sub_276447688(v73);
              *(a1 + 176) = v55;
              goto LABEL_188;
            case 0x13Du:
              if (v7 != 234)
              {
                goto LABEL_197;
              }

              *(a1 + 16) |= 0x80000u;
              v55 = *(a1 + 184);
              if (v55)
              {
                goto LABEL_189;
              }

              v56 = *(a1 + 8);
              if (v56)
              {
                v56 = *(v56 & 0xFFFFFFFFFFFFFFFELL);
              }

              v55 = sub_276447688(v56);
              *(a1 + 184) = v55;
              goto LABEL_188;
            case 0x13Eu:
              if (v7 != 242)
              {
                goto LABEL_197;
              }

              *(a1 + 16) |= 0x100000u;
              v55 = *(a1 + 192);
              if (v55)
              {
                goto LABEL_189;
              }

              v77 = *(a1 + 8);
              if (v77)
              {
                v77 = *(v77 & 0xFFFFFFFFFFFFFFFELL);
              }

              v55 = sub_276447688(v77);
              *(a1 + 192) = v55;
LABEL_188:
              v6 = v102;
LABEL_189:
              v11 = sub_2764A89C8(a3, v55, v6);
              goto LABEL_190;
            case 0x146u:
              if (v7 != 48)
              {
                goto LABEL_197;
              }

              *(a1 + 20) |= 2u;
              v65 = (v6 + 1);
              v64 = *v6;
              if ((v64 & 0x8000000000000000) == 0)
              {
                goto LABEL_162;
              }

              v66 = *v65;
              v64 = (v66 << 7) + v64 - 128;
              if (v66 < 0)
              {
                v94 = google::protobuf::internal::VarintParseSlow64(v6, v64);
                v102 = v94;
                *(a1 + 242) = v95 != 0;
                if (!v94)
                {
                  return 0;
                }
              }

              else
              {
                v65 = (v6 + 2);
LABEL_162:
                v102 = v65;
                *(a1 + 242) = v64 != 0;
              }

              goto LABEL_195;
            case 0x147u:
              if (v7 != 56)
              {
                goto LABEL_197;
              }

              *(a1 + 20) |= 4u;
              v71 = (v6 + 1);
              v70 = *v6;
              if ((v70 & 0x8000000000000000) == 0)
              {
                goto LABEL_172;
              }

              v72 = *v71;
              v70 = (v72 << 7) + v70 - 128;
              if (v72 < 0)
              {
                v98 = google::protobuf::internal::VarintParseSlow64(v6, v70);
                v102 = v98;
                *(a1 + 243) = v99 != 0;
                if (!v98)
                {
                  return 0;
                }
              }

              else
              {
                v71 = (v6 + 2);
LABEL_172:
                v102 = v71;
                *(a1 + 243) = v70 != 0;
              }

              goto LABEL_195;
            case 0x148u:
              if (v7 != 64)
              {
                goto LABEL_197;
              }

              *(a1 + 20) |= 8u;
              v53 = (v6 + 1);
              v52 = *v6;
              if ((v52 & 0x8000000000000000) == 0)
              {
                goto LABEL_115;
              }

              v54 = *v53;
              v52 = (v54 << 7) + v52 - 128;
              if (v54 < 0)
              {
                v92 = google::protobuf::internal::VarintParseSlow64(v6, v52);
                v102 = v92;
                *(a1 + 244) = v93 != 0;
                if (!v92)
                {
                  return 0;
                }
              }

              else
              {
                v53 = (v6 + 2);
LABEL_115:
                v102 = v53;
                *(a1 + 244) = v52 != 0;
              }

              goto LABEL_195;
            case 0x149u:
              if (v7 != 72)
              {
                goto LABEL_197;
              }

              *(a1 + 20) |= 0x10u;
              v68 = (v6 + 1);
              v67 = *v6;
              if ((v67 & 0x8000000000000000) == 0)
              {
                goto LABEL_167;
              }

              v69 = *v68;
              v67 = (v69 << 7) + v67 - 128;
              if (v69 < 0)
              {
                v96 = google::protobuf::internal::VarintParseSlow64(v6, v67);
                v102 = v96;
                *(a1 + 245) = v97 != 0;
                if (!v96)
                {
                  return 0;
                }
              }

              else
              {
                v68 = (v6 + 2);
LABEL_167:
                v102 = v68;
                *(a1 + 245) = v67 != 0;
              }

              goto LABEL_195;
            case 0x14Au:
              if (v7 != 80)
              {
                goto LABEL_197;
              }

              *(a1 + 20) |= 0x20u;
              v75 = (v6 + 1);
              LODWORD(v74) = *v6;
              if ((v74 & 0x80) == 0)
              {
                goto LABEL_182;
              }

              v76 = *v75;
              v74 = (v74 + (v76 << 7) - 128);
              if (v76 < 0)
              {
                v100 = google::protobuf::internal::VarintParseSlow64(v6, v74);
                v102 = v100;
                *(a1 + 248) = v101;
                if (!v100)
                {
                  return 0;
                }
              }

              else
              {
                v75 = (v6 + 2);
LABEL_182:
                v102 = v75;
                *(a1 + 248) = v74;
              }

              break;
            case 0x14Fu:
              if (v7 != 125)
              {
                goto LABEL_197;
              }

              *(a1 + 20) |= 0x40u;
              v78 = *v6;
              v16 = (v6 + 4);
              *(a1 + 252) = v78;
              goto LABEL_194;
            default:
              goto LABEL_197;
          }

          goto LABEL_195;
      }
    }
  }

  return v102;
}

unsigned __int8 *sub_276484B18(uint64_t a1, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *this)
{
  v4 = a2;
  v6 = *(a1 + 16);
  if ((v6 & 2) != 0)
  {
    if (*this <= a2)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
    }

    v7 = *(a1 + 40);
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

    v4 = TSS::StyleArchive::_InternalSerialize(v7, v9, this);
    if ((v6 & 4) == 0)
    {
LABEL_3:
      if ((v6 & 8) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_32;
    }
  }

  else if ((v6 & 4) == 0)
  {
    goto LABEL_3;
  }

  if (*this <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, v4);
  }

  v13 = *(a1 + 48);
  *v4 = 82;
  v14 = *(v13 + 11);
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

  v4 = TSD::FillArchive::_InternalSerialize(v13, v15, this);
  if ((v6 & 8) == 0)
  {
LABEL_4:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_42;
  }

LABEL_32:
  if (*this <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, v4);
  }

  v19 = *(a1 + 56);
  *v4 = 90;
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

  v4 = TSD::StrokeArchive::_InternalSerialize(v19, v21, this);
  if ((v6 & 0x10) == 0)
  {
LABEL_5:
    if ((v6 & 0x200000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_52;
  }

LABEL_42:
  if (*this <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, v4);
  }

  v25 = *(a1 + 64);
  *v4 = 98;
  v26 = *(v25 + 11);
  if (v26 > 0x7F)
  {
    v4[1] = v26 | 0x80;
    v28 = v26 >> 7;
    if (v26 >> 14)
    {
      v27 = v4 + 3;
      do
      {
        *(v27 - 1) = v28 | 0x80;
        v29 = v28 >> 7;
        ++v27;
        v30 = v28 >> 14;
        v28 >>= 7;
      }

      while (v30);
      *(v27 - 1) = v29;
    }

    else
    {
      v4[2] = v28;
      v27 = v4 + 3;
    }
  }

  else
  {
    v4[1] = v26;
    v27 = v4 + 2;
  }

  v4 = TSD::FillArchive::_InternalSerialize(v25, v27, this);
  if ((v6 & 0x200000) == 0)
  {
LABEL_6:
    if ((v6 & 0x400000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_55;
  }

LABEL_52:
  if (*this <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, v4);
  }

  v31 = *(a1 + 200);
  *v4 = 109;
  *(v4 + 1) = v31;
  v4 += 5;
  if ((v6 & 0x400000) == 0)
  {
LABEL_7:
    if ((v6 & 0x80000000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_58;
  }

LABEL_55:
  if (*this <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, v4);
  }

  v32 = *(a1 + 204);
  *v4 = 117;
  *(v4 + 1) = v32;
  v4 += 5;
  if ((v6 & 0x80000000) == 0)
  {
LABEL_8:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_61;
  }

LABEL_58:
  if (*this <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, v4);
  }

  v33 = *(a1 + 240);
  *v4 = 120;
  v4[1] = v33;
  v4 += 2;
  if ((v6 & 0x20) == 0)
  {
LABEL_9:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_71;
  }

LABEL_61:
  if (*this <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, v4);
  }

  v34 = *(a1 + 72);
  *v4 = 386;
  v35 = *(v34 + 5);
  if (v35 > 0x7F)
  {
    v4[2] = v35 | 0x80;
    v37 = v35 >> 7;
    if (v35 >> 14)
    {
      v36 = v4 + 4;
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
      v4[3] = v37;
      v36 = v4 + 4;
    }
  }

  else
  {
    v4[2] = v35;
    v36 = v4 + 3;
  }

  v4 = TSD::StrokeArchive::_InternalSerialize(v34, v36, this);
  if ((v6 & 0x40) == 0)
  {
LABEL_10:
    if ((v6 & 0x800000) == 0)
    {
      goto LABEL_84;
    }

    goto LABEL_81;
  }

LABEL_71:
  if (*this <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, v4);
  }

  v40 = *(a1 + 80);
  *v4 = 402;
  v41 = *(v40 + 5);
  if (v41 > 0x7F)
  {
    v4[2] = v41 | 0x80;
    v43 = v41 >> 7;
    if (v41 >> 14)
    {
      v42 = v4 + 4;
      do
      {
        *(v42 - 1) = v43 | 0x80;
        v44 = v43 >> 7;
        ++v42;
        v45 = v43 >> 14;
        v43 >>= 7;
      }

      while (v45);
      *(v42 - 1) = v44;
    }

    else
    {
      v4[3] = v43;
      v42 = v4 + 4;
    }
  }

  else
  {
    v4[2] = v41;
    v42 = v4 + 3;
  }

  v4 = TSP::Color::_InternalSerialize(v40, v42, this);
  if ((v6 & 0x800000) != 0)
  {
LABEL_81:
    if (*this <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, v4);
    }

    v46 = *(a1 + 208);
    *v4 = 413;
    *(v4 + 2) = v46;
    v4 += 6;
  }

LABEL_84:
  if (*(a1 + 20))
  {
    if (*this <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, v4);
    }

    v47 = *(a1 + 241);
    *v4 = 416;
    v4[2] = v47;
    v4 += 3;
  }

  v48 = *(a1 + 16);
  if ((v48 & 0x80) != 0)
  {
    if (*this <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, v4);
    }

    v49 = *(a1 + 88);
    *v4 = 426;
    v50 = *(v49 + 5);
    if (v50 > 0x7F)
    {
      v4[2] = v50 | 0x80;
      v52 = v50 >> 7;
      if (v50 >> 14)
      {
        v51 = v4 + 4;
        do
        {
          *(v51 - 1) = v52 | 0x80;
          v53 = v52 >> 7;
          ++v51;
          v54 = v52 >> 14;
          v52 >>= 7;
        }

        while (v54);
        *(v51 - 1) = v53;
      }

      else
      {
        v4[3] = v52;
        v51 = v4 + 4;
      }
    }

    else
    {
      v4[2] = v50;
      v51 = v4 + 3;
    }

    v4 = TSD::ShadowArchive::_InternalSerialize(v49, v51, this);
    if ((v48 & 0x1000000) == 0)
    {
LABEL_90:
      if ((v48 & 0x2000000) == 0)
      {
        goto LABEL_91;
      }

LABEL_124:
      if (*this <= v4)
      {
        v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, v4);
      }

      v56 = *(a1 + 216);
      *v4 = 440;
      if (v56 > 0x7F)
      {
        v4[2] = v56 | 0x80;
        v57 = v56 >> 7;
        if (v56 >> 14)
        {
          v4 += 4;
          do
          {
            *(v4 - 1) = v57 | 0x80;
            v58 = v57 >> 7;
            ++v4;
            v59 = v57 >> 14;
            v57 >>= 7;
          }

          while (v59);
          *(v4 - 1) = v58;
          if (v48)
          {
            goto LABEL_135;
          }
        }

        else
        {
          v4[3] = v57;
          v4 += 4;
          if (v48)
          {
            goto LABEL_135;
          }
        }
      }

      else
      {
        v4[2] = v56;
        v4 += 3;
        if (v48)
        {
          goto LABEL_135;
        }
      }

LABEL_92:
      if ((v48 & 0x4000000) == 0)
      {
        goto LABEL_93;
      }

LABEL_136:
      if (*this <= v4)
      {
        v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, v4);
      }

      v60 = *(a1 + 220);
      *v4 = 456;
      if (v60 > 0x7F)
      {
        v4[2] = v60 | 0x80;
        v61 = v60 >> 7;
        if (v60 >> 14)
        {
          v4 += 4;
          do
          {
            *(v4 - 1) = v61 | 0x80;
            v62 = v61 >> 7;
            ++v4;
            v63 = v61 >> 14;
            v61 >>= 7;
          }

          while (v63);
          *(v4 - 1) = v62;
          if ((v48 & 0x8000000) != 0)
          {
            goto LABEL_147;
          }
        }

        else
        {
          v4[3] = v61;
          v4 += 4;
          if ((v48 & 0x8000000) != 0)
          {
            goto LABEL_147;
          }
        }
      }

      else
      {
        v4[2] = v60;
        v4 += 3;
        if ((v48 & 0x8000000) != 0)
        {
          goto LABEL_147;
        }
      }

LABEL_94:
      if ((v48 & 0x10000000) == 0)
      {
        goto LABEL_95;
      }

LABEL_158:
      if (*this <= v4)
      {
        v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, v4);
      }

      v68 = *(a1 + 228);
      *v4 = 504;
      if (v68 > 0x7F)
      {
        v4[2] = v68 | 0x80;
        v69 = v68 >> 7;
        if (v68 >> 14)
        {
          v4 += 4;
          do
          {
            *(v4 - 1) = v69 | 0x80;
            v70 = v69 >> 7;
            ++v4;
            v71 = v69 >> 14;
            v69 >>= 7;
          }

          while (v71);
          *(v4 - 1) = v70;
          if ((v48 & 0x100) != 0)
          {
            goto LABEL_169;
          }
        }

        else
        {
          v4[3] = v69;
          v4 += 4;
          if ((v48 & 0x100) != 0)
          {
            goto LABEL_169;
          }
        }
      }

      else
      {
        v4[2] = v68;
        v4 += 3;
        if ((v48 & 0x100) != 0)
        {
          goto LABEL_169;
        }
      }

LABEL_96:
      if ((v48 & 0x200) == 0)
      {
        goto LABEL_97;
      }

      goto LABEL_179;
    }
  }

  else if ((v48 & 0x1000000) == 0)
  {
    goto LABEL_90;
  }

  if (*this <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, v4);
  }

  v55 = *(a1 + 212);
  *v4 = 437;
  *(v4 + 2) = v55;
  v4 += 6;
  if ((v48 & 0x2000000) != 0)
  {
    goto LABEL_124;
  }

LABEL_91:
  if ((v48 & 1) == 0)
  {
    goto LABEL_92;
  }

LABEL_135:
  v4 = sub_2763DD938(this, 24, (*(a1 + 32) & 0xFFFFFFFFFFFFFFFELL), v4);
  if ((v48 & 0x4000000) != 0)
  {
    goto LABEL_136;
  }

LABEL_93:
  if ((v48 & 0x8000000) == 0)
  {
    goto LABEL_94;
  }

LABEL_147:
  if (*this <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, v4);
  }

  v64 = *(a1 + 224);
  *v4 = 496;
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
      if ((v48 & 0x10000000) != 0)
      {
        goto LABEL_158;
      }
    }

    else
    {
      v4[3] = v65;
      v4 += 4;
      if ((v48 & 0x10000000) != 0)
      {
        goto LABEL_158;
      }
    }
  }

  else
  {
    v4[2] = v64;
    v4 += 3;
    if ((v48 & 0x10000000) != 0)
    {
      goto LABEL_158;
    }
  }

LABEL_95:
  if ((v48 & 0x100) == 0)
  {
    goto LABEL_96;
  }

LABEL_169:
  if (*this <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, v4);
  }

  v72 = *(a1 + 96);
  *v4 = 642;
  v73 = *(v72 + 5);
  if (v73 > 0x7F)
  {
    v4[2] = v73 | 0x80;
    v75 = v73 >> 7;
    if (v73 >> 14)
    {
      v74 = v4 + 4;
      do
      {
        *(v74 - 1) = v75 | 0x80;
        v76 = v75 >> 7;
        ++v74;
        v77 = v75 >> 14;
        v75 >>= 7;
      }

      while (v77);
      *(v74 - 1) = v76;
    }

    else
    {
      v4[3] = v75;
      v74 = v4 + 4;
    }
  }

  else
  {
    v4[2] = v73;
    v74 = v4 + 3;
  }

  v4 = TSD::ShadowArchive::_InternalSerialize(v72, v74, this);
  if ((v48 & 0x200) == 0)
  {
LABEL_97:
    if ((v48 & 0x20000000) == 0)
    {
      goto LABEL_98;
    }

    goto LABEL_189;
  }

LABEL_179:
  if (*this <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, v4);
  }

  v78 = *(a1 + 104);
  *v4 = 650;
  v79 = *(v78 + 5);
  if (v79 > 0x7F)
  {
    v4[2] = v79 | 0x80;
    v81 = v79 >> 7;
    if (v79 >> 14)
    {
      v80 = v4 + 4;
      do
      {
        *(v80 - 1) = v81 | 0x80;
        v82 = v81 >> 7;
        ++v80;
        v83 = v81 >> 14;
        v81 >>= 7;
      }

      while (v83);
      *(v80 - 1) = v82;
    }

    else
    {
      v4[3] = v81;
      v80 = v4 + 4;
    }
  }

  else
  {
    v4[2] = v79;
    v80 = v4 + 3;
  }

  v4 = TSD::ShadowArchive::_InternalSerialize(v78, v80, this);
  if ((v48 & 0x20000000) == 0)
  {
LABEL_98:
    if ((v48 & 0x40000000) == 0)
    {
      goto LABEL_99;
    }

    goto LABEL_192;
  }

LABEL_189:
  if (*this <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, v4);
  }

  v84 = *(a1 + 232);
  *v4 = 661;
  *(v4 + 2) = v84;
  v4 += 6;
  if ((v48 & 0x40000000) == 0)
  {
LABEL_99:
    if ((v48 & 0x400) == 0)
    {
      goto LABEL_100;
    }

    goto LABEL_195;
  }

LABEL_192:
  if (*this <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, v4);
  }

  v85 = *(a1 + 236);
  *v4 = 669;
  *(v4 + 2) = v85;
  v4 += 6;
  if ((v48 & 0x400) == 0)
  {
LABEL_100:
    if ((v48 & 0x800) == 0)
    {
      goto LABEL_101;
    }

    goto LABEL_205;
  }

LABEL_195:
  if (*this <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, v4);
  }

  v86 = *(a1 + 112);
  *v4 = 5026;
  v87 = *(v86 + 5);
  if (v87 > 0x7F)
  {
    v4[2] = v87 | 0x80;
    v89 = v87 >> 7;
    if (v87 >> 14)
    {
      v88 = v4 + 4;
      do
      {
        *(v88 - 1) = v89 | 0x80;
        v90 = v89 >> 7;
        ++v88;
        v91 = v89 >> 14;
        v89 >>= 7;
      }

      while (v91);
      *(v88 - 1) = v90;
    }

    else
    {
      v4[3] = v89;
      v88 = v4 + 4;
    }
  }

  else
  {
    v4[2] = v87;
    v88 = v4 + 3;
  }

  v4 = TSD::ShadowArchive::_InternalSerialize(v86, v88, this);
  if ((v48 & 0x800) == 0)
  {
LABEL_101:
    if ((v48 & 0x1000) == 0)
    {
      goto LABEL_102;
    }

    goto LABEL_215;
  }

LABEL_205:
  if (*this <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, v4);
  }

  v92 = *(a1 + 120);
  *v4 = 5034;
  v93 = *(v92 + 5);
  if (v93 > 0x7F)
  {
    v4[2] = v93 | 0x80;
    v95 = v93 >> 7;
    if (v93 >> 14)
    {
      v94 = v4 + 4;
      do
      {
        *(v94 - 1) = v95 | 0x80;
        v96 = v95 >> 7;
        ++v94;
        v97 = v95 >> 14;
        v95 >>= 7;
      }

      while (v97);
      *(v94 - 1) = v96;
    }

    else
    {
      v4[3] = v95;
      v94 = v4 + 4;
    }
  }

  else
  {
    v4[2] = v93;
    v94 = v4 + 3;
  }

  v4 = TSD::ShadowArchive::_InternalSerialize(v92, v94, this);
  if ((v48 & 0x1000) == 0)
  {
LABEL_102:
    if ((v48 & 0x2000) == 0)
    {
      goto LABEL_103;
    }

    goto LABEL_225;
  }

LABEL_215:
  if (*this <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, v4);
  }

  v98 = *(a1 + 128);
  *v4 = 5042;
  v99 = *(v98 + 5);
  if (v99 > 0x7F)
  {
    v4[2] = v99 | 0x80;
    v101 = v99 >> 7;
    if (v99 >> 14)
    {
      v100 = v4 + 4;
      do
      {
        *(v100 - 1) = v101 | 0x80;
        v102 = v101 >> 7;
        ++v100;
        v103 = v101 >> 14;
        v101 >>= 7;
      }

      while (v103);
      *(v100 - 1) = v102;
    }

    else
    {
      v4[3] = v101;
      v100 = v4 + 4;
    }
  }

  else
  {
    v4[2] = v99;
    v100 = v4 + 3;
  }

  v4 = TSD::ShadowArchive::_InternalSerialize(v98, v100, this);
  if ((v48 & 0x2000) == 0)
  {
LABEL_103:
    if ((v48 & 0x4000) == 0)
    {
      goto LABEL_104;
    }

    goto LABEL_235;
  }

LABEL_225:
  if (*this <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, v4);
  }

  v104 = *(a1 + 136);
  *v4 = 5050;
  v105 = *(v104 + 5);
  if (v105 > 0x7F)
  {
    v4[2] = v105 | 0x80;
    v107 = v105 >> 7;
    if (v105 >> 14)
    {
      v106 = v4 + 4;
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
      v4[3] = v107;
      v106 = v4 + 4;
    }
  }

  else
  {
    v4[2] = v105;
    v106 = v4 + 3;
  }

  v4 = TSD::ShadowArchive::_InternalSerialize(v104, v106, this);
  if ((v48 & 0x4000) == 0)
  {
LABEL_104:
    if ((v48 & 0x8000) == 0)
    {
      goto LABEL_105;
    }

    goto LABEL_245;
  }

LABEL_235:
  if (*this <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, v4);
  }

  v110 = *(a1 + 144);
  *v4 = 5058;
  v111 = *(v110 + 5);
  if (v111 > 0x7F)
  {
    v4[2] = v111 | 0x80;
    v113 = v111 >> 7;
    if (v111 >> 14)
    {
      v112 = v4 + 4;
      do
      {
        *(v112 - 1) = v113 | 0x80;
        v114 = v113 >> 7;
        ++v112;
        v115 = v113 >> 14;
        v113 >>= 7;
      }

      while (v115);
      *(v112 - 1) = v114;
    }

    else
    {
      v4[3] = v113;
      v112 = v4 + 4;
    }
  }

  else
  {
    v4[2] = v111;
    v112 = v4 + 3;
  }

  v4 = TSD::ShadowArchive::_InternalSerialize(v110, v112, this);
  if ((v48 & 0x8000) == 0)
  {
LABEL_105:
    if ((v48 & 0x10000) == 0)
    {
      goto LABEL_106;
    }

    goto LABEL_255;
  }

LABEL_245:
  if (*this <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, v4);
  }

  v116 = *(a1 + 152);
  *v4 = 5066;
  v117 = *(v116 + 20);
  if (v117 > 0x7F)
  {
    v4[2] = v117 | 0x80;
    v119 = v117 >> 7;
    if (v117 >> 14)
    {
      v118 = v4 + 4;
      do
      {
        *(v118 - 1) = v119 | 0x80;
        v120 = v119 >> 7;
        ++v118;
        v121 = v119 >> 14;
        v119 >>= 7;
      }

      while (v121);
      *(v118 - 1) = v120;
    }

    else
    {
      v4[3] = v119;
      v118 = v4 + 4;
    }
  }

  else
  {
    v4[2] = v117;
    v118 = v4 + 3;
  }

  v4 = sub_27643EEC4(v116, v118, this);
  if ((v48 & 0x10000) == 0)
  {
LABEL_106:
    if ((v48 & 0x20000) == 0)
    {
      goto LABEL_107;
    }

    goto LABEL_265;
  }

LABEL_255:
  if (*this <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, v4);
  }

  v122 = *(a1 + 160);
  *v4 = 5074;
  v123 = *(v122 + 20);
  if (v123 > 0x7F)
  {
    v4[2] = v123 | 0x80;
    v125 = v123 >> 7;
    if (v123 >> 14)
    {
      v124 = v4 + 4;
      do
      {
        *(v124 - 1) = v125 | 0x80;
        v126 = v125 >> 7;
        ++v124;
        v127 = v125 >> 14;
        v125 >>= 7;
      }

      while (v127);
      *(v124 - 1) = v126;
    }

    else
    {
      v4[3] = v125;
      v124 = v4 + 4;
    }
  }

  else
  {
    v4[2] = v123;
    v124 = v4 + 3;
  }

  v4 = sub_27643EEC4(v122, v124, this);
  if ((v48 & 0x20000) == 0)
  {
LABEL_107:
    if ((v48 & 0x40000) == 0)
    {
      goto LABEL_108;
    }

    goto LABEL_275;
  }

LABEL_265:
  if (*this <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, v4);
  }

  v128 = *(a1 + 168);
  *v4 = 5082;
  v129 = *(v128 + 20);
  if (v129 > 0x7F)
  {
    v4[2] = v129 | 0x80;
    v131 = v129 >> 7;
    if (v129 >> 14)
    {
      v130 = v4 + 4;
      do
      {
        *(v130 - 1) = v131 | 0x80;
        v132 = v131 >> 7;
        ++v130;
        v133 = v131 >> 14;
        v131 >>= 7;
      }

      while (v133);
      *(v130 - 1) = v132;
    }

    else
    {
      v4[3] = v131;
      v130 = v4 + 4;
    }
  }

  else
  {
    v4[2] = v129;
    v130 = v4 + 3;
  }

  v4 = sub_27643EEC4(v128, v130, this);
  if ((v48 & 0x40000) == 0)
  {
LABEL_108:
    if ((v48 & 0x80000) == 0)
    {
      goto LABEL_109;
    }

    goto LABEL_285;
  }

LABEL_275:
  if (*this <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, v4);
  }

  v134 = *(a1 + 176);
  *v4 = 5090;
  v135 = *(v134 + 20);
  if (v135 > 0x7F)
  {
    v4[2] = v135 | 0x80;
    v137 = v135 >> 7;
    if (v135 >> 14)
    {
      v136 = v4 + 4;
      do
      {
        *(v136 - 1) = v137 | 0x80;
        v138 = v137 >> 7;
        ++v136;
        v139 = v137 >> 14;
        v137 >>= 7;
      }

      while (v139);
      *(v136 - 1) = v138;
    }

    else
    {
      v4[3] = v137;
      v136 = v4 + 4;
    }
  }

  else
  {
    v4[2] = v135;
    v136 = v4 + 3;
  }

  v4 = sub_27643EEC4(v134, v136, this);
  if ((v48 & 0x80000) == 0)
  {
LABEL_109:
    if ((v48 & 0x100000) == 0)
    {
      goto LABEL_305;
    }

    goto LABEL_295;
  }

LABEL_285:
  if (*this <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, v4);
  }

  v140 = *(a1 + 184);
  *v4 = 5098;
  v141 = *(v140 + 20);
  if (v141 > 0x7F)
  {
    v4[2] = v141 | 0x80;
    v143 = v141 >> 7;
    if (v141 >> 14)
    {
      v142 = v4 + 4;
      do
      {
        *(v142 - 1) = v143 | 0x80;
        v144 = v143 >> 7;
        ++v142;
        v145 = v143 >> 14;
        v143 >>= 7;
      }

      while (v145);
      *(v142 - 1) = v144;
    }

    else
    {
      v4[3] = v143;
      v142 = v4 + 4;
    }
  }

  else
  {
    v4[2] = v141;
    v142 = v4 + 3;
  }

  v4 = sub_27643EEC4(v140, v142, this);
  if ((v48 & 0x100000) != 0)
  {
LABEL_295:
    if (*this <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, v4);
    }

    v146 = *(a1 + 192);
    *v4 = 5106;
    v147 = *(v146 + 20);
    if (v147 > 0x7F)
    {
      v4[2] = v147 | 0x80;
      v149 = v147 >> 7;
      if (v147 >> 14)
      {
        v148 = v4 + 4;
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
        v4[3] = v149;
        v148 = v4 + 4;
      }
    }

    else
    {
      v4[2] = v147;
      v148 = v4 + 3;
    }

    v4 = sub_27643EEC4(v146, v148, this);
  }

LABEL_305:
  v152 = *(a1 + 20);
  if ((v152 & 2) != 0)
  {
    if (*this <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, v4);
    }

    v156 = *(a1 + 242);
    *v4 = 5296;
    v4[2] = v156;
    v4 += 3;
    if ((v152 & 4) == 0)
    {
LABEL_307:
      if ((v152 & 8) == 0)
      {
        goto LABEL_308;
      }

      goto LABEL_322;
    }
  }

  else if ((v152 & 4) == 0)
  {
    goto LABEL_307;
  }

  if (*this <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, v4);
  }

  v157 = *(a1 + 243);
  *v4 = 5304;
  v4[2] = v157;
  v4 += 3;
  if ((v152 & 8) == 0)
  {
LABEL_308:
    if ((v152 & 0x10) == 0)
    {
      goto LABEL_309;
    }

    goto LABEL_325;
  }

LABEL_322:
  if (*this <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, v4);
  }

  v158 = *(a1 + 244);
  *v4 = 5312;
  v4[2] = v158;
  v4 += 3;
  if ((v152 & 0x10) == 0)
  {
LABEL_309:
    if ((v152 & 0x20) == 0)
    {
      goto LABEL_310;
    }

    goto LABEL_328;
  }

LABEL_325:
  if (*this <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, v4);
  }

  v159 = *(a1 + 245);
  *v4 = 5320;
  v4[2] = v159;
  v4 += 3;
  if ((v152 & 0x20) == 0)
  {
LABEL_310:
    if ((v152 & 0x40) == 0)
    {
      goto LABEL_314;
    }

    goto LABEL_311;
  }

LABEL_328:
  if (*this <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, v4);
  }

  v160 = *(a1 + 248);
  *v4 = 5328;
  if (v160 > 0x7F)
  {
    v4[2] = v160 | 0x80;
    v161 = v160 >> 7;
    if (v160 >> 14)
    {
      v4 += 4;
      do
      {
        *(v4 - 1) = v161 | 0x80;
        v162 = v161 >> 7;
        ++v4;
        v163 = v161 >> 14;
        v161 >>= 7;
      }

      while (v163);
      *(v4 - 1) = v162;
      if ((v152 & 0x40) == 0)
      {
        goto LABEL_314;
      }
    }

    else
    {
      v4[3] = v161;
      v4 += 4;
      if ((v152 & 0x40) == 0)
      {
        goto LABEL_314;
      }
    }
  }

  else
  {
    v4[2] = v160;
    v4 += 3;
    if ((v152 & 0x40) == 0)
    {
      goto LABEL_314;
    }
  }

LABEL_311:
  if (*this <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, v4);
  }

  v153 = *(a1 + 252);
  *v4 = 5373;
  *(v4 + 2) = v153;
  v4 += 6;
LABEL_314:
  v154 = *(a1 + 8);
  if ((v154 & 1) == 0)
  {
    return v4;
  }

  return MEMORY[0x2821EAC40]((v154 & 0xFFFFFFFFFFFFFFFELL) + 8, v4, this);
}

uint64_t sub_276485DD0(uint64_t a1)
{
  v2 = *(a1 + 16);
  if ((v2 & 2) != 0)
  {
    v4 = TSS::StyleArchive::ByteSizeLong(*(a1 + 40));
    v3 = v4 + ((9 * (__clz(v4 | 1) ^ 0x1F) + 73) >> 6) + 1;
    v2 = *(a1 + 16);
    if ((v2 & 1) == 0)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v3 = 0;
    if ((v2 & 1) == 0)
    {
      goto LABEL_8;
    }
  }

  v5 = *(a1 + 32) & 0xFFFFFFFFFFFFFFFELL;
  v6 = *(v5 + 23);
  v7 = *(v5 + 8);
  if ((v6 & 0x80u) == 0)
  {
    v7 = v6;
  }

  v3 += v7 + ((9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6) + 2;
LABEL_8:
  if ((v2 & 0xFC) == 0)
  {
    goto LABEL_16;
  }

  if ((v2 & 4) != 0)
  {
    v13 = TSD::FillArchive::ByteSizeLong(*(a1 + 48));
    v3 += v13 + ((9 * (__clz(v13 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v2 & 8) == 0)
    {
LABEL_11:
      if ((v2 & 0x10) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_50;
    }
  }

  else if ((v2 & 8) == 0)
  {
    goto LABEL_11;
  }

  v14 = TSD::StrokeArchive::ByteSizeLong(*(a1 + 56));
  v3 += v14 + ((9 * (__clz(v14 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 0x10) == 0)
  {
LABEL_12:
    if ((v2 & 0x20) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_51;
  }

LABEL_50:
  v15 = TSD::FillArchive::ByteSizeLong(*(a1 + 64));
  v3 += v15 + ((9 * (__clz(v15 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 0x20) == 0)
  {
LABEL_13:
    if ((v2 & 0x40) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_52;
  }

LABEL_51:
  v16 = TSD::StrokeArchive::ByteSizeLong(*(a1 + 72));
  v3 += v16 + ((9 * (__clz(v16 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v2 & 0x40) == 0)
  {
LABEL_14:
    if ((v2 & 0x80) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

LABEL_52:
  v17 = TSP::Color::ByteSizeLong(*(a1 + 80));
  v3 += v17 + ((9 * (__clz(v17 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v2 & 0x80) != 0)
  {
LABEL_15:
    v8 = TSD::ShadowArchive::ByteSizeLong(*(a1 + 88));
    v3 += v8 + ((9 * (__clz(v8 | 1) ^ 0x1F) + 73) >> 6) + 2;
  }

LABEL_16:
  if ((v2 & 0xFF00) == 0)
  {
    goto LABEL_26;
  }

  if ((v2 & 0x100) != 0)
  {
    v18 = TSD::ShadowArchive::ByteSizeLong(*(a1 + 96));
    v3 += v18 + ((9 * (__clz(v18 | 1) ^ 0x1F) + 73) >> 6) + 2;
    if ((v2 & 0x200) == 0)
    {
LABEL_19:
      if ((v2 & 0x400) == 0)
      {
        goto LABEL_20;
      }

      goto LABEL_56;
    }
  }

  else if ((v2 & 0x200) == 0)
  {
    goto LABEL_19;
  }

  v19 = TSD::ShadowArchive::ByteSizeLong(*(a1 + 104));
  v3 += v19 + ((9 * (__clz(v19 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v2 & 0x400) == 0)
  {
LABEL_20:
    if ((v2 & 0x800) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_57;
  }

LABEL_56:
  v20 = TSD::ShadowArchive::ByteSizeLong(*(a1 + 112));
  v3 += v20 + ((9 * (__clz(v20 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v2 & 0x800) == 0)
  {
LABEL_21:
    if ((v2 & 0x1000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_58;
  }

LABEL_57:
  v21 = TSD::ShadowArchive::ByteSizeLong(*(a1 + 120));
  v3 += v21 + ((9 * (__clz(v21 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v2 & 0x1000) == 0)
  {
LABEL_22:
    if ((v2 & 0x2000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_59;
  }

LABEL_58:
  v22 = TSD::ShadowArchive::ByteSizeLong(*(a1 + 128));
  v3 += v22 + ((9 * (__clz(v22 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v2 & 0x2000) == 0)
  {
LABEL_23:
    if ((v2 & 0x4000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_60;
  }

LABEL_59:
  v23 = TSD::ShadowArchive::ByteSizeLong(*(a1 + 136));
  v3 += v23 + ((9 * (__clz(v23 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v2 & 0x4000) == 0)
  {
LABEL_24:
    if ((v2 & 0x8000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_25;
  }

LABEL_60:
  v24 = TSD::ShadowArchive::ByteSizeLong(*(a1 + 144));
  v3 += v24 + ((9 * (__clz(v24 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v2 & 0x8000) != 0)
  {
LABEL_25:
    v9 = sub_27643F014(*(a1 + 152));
    v3 += v9 + ((9 * (__clz(v9 | 1) ^ 0x1F) + 73) >> 6) + 2;
  }

LABEL_26:
  if ((v2 & 0xFF0000) == 0)
  {
    goto LABEL_40;
  }

  if ((v2 & 0x10000) != 0)
  {
    v25 = sub_27643F014(*(a1 + 160));
    v3 += v25 + ((9 * (__clz(v25 | 1) ^ 0x1F) + 73) >> 6) + 2;
    if ((v2 & 0x20000) == 0)
    {
LABEL_29:
      if ((v2 & 0x40000) == 0)
      {
        goto LABEL_30;
      }

      goto LABEL_64;
    }
  }

  else if ((v2 & 0x20000) == 0)
  {
    goto LABEL_29;
  }

  v26 = sub_27643F014(*(a1 + 168));
  v3 += v26 + ((9 * (__clz(v26 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v2 & 0x40000) == 0)
  {
LABEL_30:
    if ((v2 & 0x80000) == 0)
    {
      goto LABEL_31;
    }

LABEL_65:
    v28 = sub_27643F014(*(a1 + 184));
    v3 += v28 + ((9 * (__clz(v28 | 1) ^ 0x1F) + 73) >> 6) + 2;
    if ((v2 & 0x100000) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_32;
  }

LABEL_64:
  v27 = sub_27643F014(*(a1 + 176));
  v3 += v27 + ((9 * (__clz(v27 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v2 & 0x80000) != 0)
  {
    goto LABEL_65;
  }

LABEL_31:
  if ((v2 & 0x100000) != 0)
  {
LABEL_32:
    v10 = sub_27643F014(*(a1 + 192));
    v3 += v10 + ((9 * (__clz(v10 | 1) ^ 0x1F) + 73) >> 6) + 2;
  }

LABEL_33:
  v11 = v3 + 5;
  if ((v2 & 0x200000) == 0)
  {
    v11 = v3;
  }

  if ((v2 & 0x400000) != 0)
  {
    v11 += 5;
  }

  if ((v2 & 0x800000) != 0)
  {
    v3 = v11 + 6;
  }

  else
  {
    v3 = v11;
  }

LABEL_40:
  if (!HIBYTE(v2))
  {
    goto LABEL_90;
  }

  v12 = v3 + 6;
  if ((v2 & 0x1000000) == 0)
  {
    v12 = v3;
  }

  if ((v2 & 0x2000000) != 0)
  {
    v29 = *(a1 + 216);
    if (v29 < 0)
    {
      v30 = 12;
    }

    else
    {
      v30 = ((9 * (__clz(v29 | 1) ^ 0x1F) + 73) >> 6) + 2;
    }

    v12 += v30;
    if ((v2 & 0x4000000) == 0)
    {
LABEL_45:
      if ((v2 & 0x8000000) == 0)
      {
        goto LABEL_46;
      }

LABEL_75:
      v33 = *(a1 + 224);
      if (v33 < 0)
      {
        v34 = 12;
      }

      else
      {
        v34 = ((9 * (__clz(v33 | 1) ^ 0x1F) + 73) >> 6) + 2;
      }

      v12 += v34;
      if ((v2 & 0x10000000) == 0)
      {
        goto LABEL_83;
      }

      goto LABEL_79;
    }
  }

  else if ((v2 & 0x4000000) == 0)
  {
    goto LABEL_45;
  }

  v31 = *(a1 + 220);
  if (v31 < 0)
  {
    v32 = 12;
  }

  else
  {
    v32 = ((9 * (__clz(v31 | 1) ^ 0x1F) + 73) >> 6) + 2;
  }

  v12 += v32;
  if ((v2 & 0x8000000) != 0)
  {
    goto LABEL_75;
  }

LABEL_46:
  if ((v2 & 0x10000000) != 0)
  {
LABEL_79:
    v35 = *(a1 + 228);
    if (v35 < 0)
    {
      v36 = 12;
    }

    else
    {
      v36 = ((9 * (__clz(v35 | 1) ^ 0x1F) + 73) >> 6) + 2;
    }

    v12 += v36;
  }

LABEL_83:
  if ((v2 & 0x20000000) != 0)
  {
    v12 += 6;
  }

  if ((v2 & 0x40000000) != 0)
  {
    v12 += 6;
  }

  if (v2 >= 0)
  {
    v3 = v12;
  }

  else
  {
    v3 = v12 + 2;
  }

LABEL_90:
  v37 = *(a1 + 20);
  if ((v37 & 0x7F) != 0)
  {
    v38 = v3 + 3;
    if ((v37 & 1) == 0)
    {
      v38 = v3;
    }

    if ((v37 & 2) != 0)
    {
      v38 += 3;
    }

    if ((v37 & 4) != 0)
    {
      v38 += 3;
    }

    if ((v37 & 8) != 0)
    {
      v38 += 3;
    }

    if ((v37 & 0x10) != 0)
    {
      v38 += 3;
    }

    if ((v37 & 0x20) != 0)
    {
      v39 = *(a1 + 248);
      v40 = ((9 * (__clz(v39 | 1) ^ 0x1F) + 73) >> 6) + 2;
      if (v39 >= 0)
      {
        v41 = v40;
      }

      else
      {
        v41 = 12;
      }

      v38 += v41;
    }

    if ((v37 & 0x40) != 0)
    {
      v3 = v38 + 6;
    }

    else
    {
      v3 = v38;
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

uint64_t sub_276486470(uint64_t a1, void *lpsrc)
{
  v4 = __dynamic_cast(lpsrc, MEMORY[0x277D80A98], &unk_288527F18, 0);
  if (v4)
  {

    return sub_276486518(a1, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, a1);
  }
}

uint64_t sub_276486518(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 8);
  if (v4)
  {
    result = sub_2763D4F88((result + 8), (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  v5 = *(a2 + 16);
  if (!v5)
  {
    goto LABEL_70;
  }

  if (v5)
  {
    *(v3 + 16) |= 1u;
    result = google::protobuf::internal::ArenaStringPtr::Set();
  }

  if ((v5 & 2) != 0)
  {
    *(v3 + 16) |= 2u;
    v6 = *(v3 + 40);
    if (!v6)
    {
      v7 = *(v3 + 8);
      if (v7)
      {
        v7 = *(v7 & 0xFFFFFFFFFFFFFFFELL);
      }

      v6 = MEMORY[0x277C97BA0](v7);
      *(v3 + 40) = v6;
    }

    if (*(a2 + 40))
    {
      v8 = *(a2 + 40);
    }

    else
    {
      v8 = MEMORY[0x277D80BD0];
    }

    result = TSS::StyleArchive::MergeFrom(v6, v8);
  }

  v9 = MEMORY[0x277D80488];
  if ((v5 & 4) != 0)
  {
    *(v3 + 16) |= 4u;
    v10 = *(v3 + 48);
    if (!v10)
    {
      v11 = *(v3 + 8);
      if (v11)
      {
        v11 = *(v11 & 0xFFFFFFFFFFFFFFFELL);
      }

      v10 = MEMORY[0x277C97A80](v11);
      *(v3 + 48) = v10;
    }

    if (*(a2 + 48))
    {
      v12 = *(a2 + 48);
    }

    else
    {
      v12 = v9;
    }

    result = TSD::FillArchive::MergeFrom(v10, v12);
  }

  v13 = MEMORY[0x277D804A0];
  if ((v5 & 8) != 0)
  {
    *(v3 + 16) |= 8u;
    v14 = *(v3 + 56);
    if (!v14)
    {
      v15 = *(v3 + 8);
      if (v15)
      {
        v15 = *(v15 & 0xFFFFFFFFFFFFFFFELL);
      }

      v14 = MEMORY[0x277C97AA0](v15);
      *(v3 + 56) = v14;
    }

    if (*(a2 + 56))
    {
      v16 = *(a2 + 56);
    }

    else
    {
      v16 = v13;
    }

    result = TSD::StrokeArchive::MergeFrom(v14, v16);
    if ((v5 & 0x10) == 0)
    {
LABEL_26:
      if ((v5 & 0x20) == 0)
      {
        goto LABEL_27;
      }

LABEL_46:
      *(v3 + 16) |= 0x20u;
      v20 = *(v3 + 72);
      if (!v20)
      {
        v21 = *(v3 + 8);
        if (v21)
        {
          v21 = *(v21 & 0xFFFFFFFFFFFFFFFELL);
        }

        v20 = MEMORY[0x277C97AA0](v21);
        *(v3 + 72) = v20;
      }

      if (*(a2 + 72))
      {
        v22 = *(a2 + 72);
      }

      else
      {
        v22 = v13;
      }

      result = TSD::StrokeArchive::MergeFrom(v20, v22);
      if ((v5 & 0x40) == 0)
      {
LABEL_28:
        if ((v5 & 0x80) == 0)
        {
          goto LABEL_70;
        }

        goto LABEL_62;
      }

      goto LABEL_54;
    }
  }

  else if ((v5 & 0x10) == 0)
  {
    goto LABEL_26;
  }

  *(v3 + 16) |= 0x10u;
  v17 = *(v3 + 64);
  if (!v17)
  {
    v18 = *(v3 + 8);
    if (v18)
    {
      v18 = *(v18 & 0xFFFFFFFFFFFFFFFELL);
    }

    v17 = MEMORY[0x277C97A80](v18);
    *(v3 + 64) = v17;
  }

  if (*(a2 + 64))
  {
    v19 = *(a2 + 64);
  }

  else
  {
    v19 = v9;
  }

  result = TSD::FillArchive::MergeFrom(v17, v19);
  if ((v5 & 0x20) != 0)
  {
    goto LABEL_46;
  }

LABEL_27:
  if ((v5 & 0x40) == 0)
  {
    goto LABEL_28;
  }

LABEL_54:
  *(v3 + 16) |= 0x40u;
  v23 = *(v3 + 80);
  if (!v23)
  {
    v24 = *(v3 + 8);
    if (v24)
    {
      v24 = *(v24 & 0xFFFFFFFFFFFFFFFELL);
    }

    v23 = MEMORY[0x277C97B50](v24);
    *(v3 + 80) = v23;
  }

  if (*(a2 + 80))
  {
    v25 = *(a2 + 80);
  }

  else
  {
    v25 = MEMORY[0x277D809E8];
  }

  result = TSP::Color::MergeFrom(v23, v25);
  if ((v5 & 0x80) != 0)
  {
LABEL_62:
    *(v3 + 16) |= 0x80u;
    v26 = *(v3 + 88);
    if (!v26)
    {
      v27 = *(v3 + 8);
      if (v27)
      {
        v27 = *(v27 & 0xFFFFFFFFFFFFFFFELL);
      }

      v26 = MEMORY[0x277C97A90](v27);
      *(v3 + 88) = v26;
    }

    if (*(a2 + 88))
    {
      v28 = *(a2 + 88);
    }

    else
    {
      v28 = MEMORY[0x277D80498];
    }

    result = TSD::ShadowArchive::MergeFrom(v26, v28);
  }

LABEL_70:
  if ((v5 & 0xFF00) == 0)
  {
    goto LABEL_144;
  }

  if ((v5 & 0x100) != 0)
  {
    *(v3 + 16) |= 0x100u;
    v29 = *(v3 + 96);
    if (!v29)
    {
      v30 = *(v3 + 8);
      if (v30)
      {
        v30 = *(v30 & 0xFFFFFFFFFFFFFFFELL);
      }

      v29 = MEMORY[0x277C97A90](v30);
      *(v3 + 96) = v29;
    }

    if (*(a2 + 96))
    {
      v31 = *(a2 + 96);
    }

    else
    {
      v31 = MEMORY[0x277D80498];
    }

    result = TSD::ShadowArchive::MergeFrom(v29, v31);
    if ((v5 & 0x200) == 0)
    {
LABEL_73:
      if ((v5 & 0x400) == 0)
      {
        goto LABEL_74;
      }

      goto LABEL_96;
    }
  }

  else if ((v5 & 0x200) == 0)
  {
    goto LABEL_73;
  }

  *(v3 + 16) |= 0x200u;
  v32 = *(v3 + 104);
  if (!v32)
  {
    v33 = *(v3 + 8);
    if (v33)
    {
      v33 = *(v33 & 0xFFFFFFFFFFFFFFFELL);
    }

    v32 = MEMORY[0x277C97A90](v33);
    *(v3 + 104) = v32;
  }

  if (*(a2 + 104))
  {
    v34 = *(a2 + 104);
  }

  else
  {
    v34 = MEMORY[0x277D80498];
  }

  result = TSD::ShadowArchive::MergeFrom(v32, v34);
  if ((v5 & 0x400) == 0)
  {
LABEL_74:
    if ((v5 & 0x800) == 0)
    {
      goto LABEL_75;
    }

    goto LABEL_104;
  }

LABEL_96:
  *(v3 + 16) |= 0x400u;
  v35 = *(v3 + 112);
  if (!v35)
  {
    v36 = *(v3 + 8);
    if (v36)
    {
      v36 = *(v36 & 0xFFFFFFFFFFFFFFFELL);
    }

    v35 = MEMORY[0x277C97A90](v36);
    *(v3 + 112) = v35;
  }

  if (*(a2 + 112))
  {
    v37 = *(a2 + 112);
  }

  else
  {
    v37 = MEMORY[0x277D80498];
  }

  result = TSD::ShadowArchive::MergeFrom(v35, v37);
  if ((v5 & 0x800) == 0)
  {
LABEL_75:
    if ((v5 & 0x1000) == 0)
    {
      goto LABEL_76;
    }

    goto LABEL_112;
  }

LABEL_104:
  *(v3 + 16) |= 0x800u;
  v38 = *(v3 + 120);
  if (!v38)
  {
    v39 = *(v3 + 8);
    if (v39)
    {
      v39 = *(v39 & 0xFFFFFFFFFFFFFFFELL);
    }

    v38 = MEMORY[0x277C97A90](v39);
    *(v3 + 120) = v38;
  }

  if (*(a2 + 120))
  {
    v40 = *(a2 + 120);
  }

  else
  {
    v40 = MEMORY[0x277D80498];
  }

  result = TSD::ShadowArchive::MergeFrom(v38, v40);
  if ((v5 & 0x1000) == 0)
  {
LABEL_76:
    if ((v5 & 0x2000) == 0)
    {
      goto LABEL_77;
    }

    goto LABEL_120;
  }

LABEL_112:
  *(v3 + 16) |= 0x1000u;
  v41 = *(v3 + 128);
  if (!v41)
  {
    v42 = *(v3 + 8);
    if (v42)
    {
      v42 = *(v42 & 0xFFFFFFFFFFFFFFFELL);
    }

    v41 = MEMORY[0x277C97A90](v42);
    *(v3 + 128) = v41;
  }

  if (*(a2 + 128))
  {
    v43 = *(a2 + 128);
  }

  else
  {
    v43 = MEMORY[0x277D80498];
  }

  result = TSD::ShadowArchive::MergeFrom(v41, v43);
  if ((v5 & 0x2000) == 0)
  {
LABEL_77:
    if ((v5 & 0x4000) == 0)
    {
      goto LABEL_78;
    }

    goto LABEL_128;
  }

LABEL_120:
  *(v3 + 16) |= 0x2000u;
  v44 = *(v3 + 136);
  if (!v44)
  {
    v45 = *(v3 + 8);
    if (v45)
    {
      v45 = *(v45 & 0xFFFFFFFFFFFFFFFELL);
    }

    v44 = MEMORY[0x277C97A90](v45);
    *(v3 + 136) = v44;
  }

  if (*(a2 + 136))
  {
    v46 = *(a2 + 136);
  }

  else
  {
    v46 = MEMORY[0x277D80498];
  }

  result = TSD::ShadowArchive::MergeFrom(v44, v46);
  if ((v5 & 0x4000) == 0)
  {
LABEL_78:
    if ((v5 & 0x8000) == 0)
    {
      goto LABEL_144;
    }

    goto LABEL_136;
  }

LABEL_128:
  *(v3 + 16) |= 0x4000u;
  v47 = *(v3 + 144);
  if (!v47)
  {
    v48 = *(v3 + 8);
    if (v48)
    {
      v48 = *(v48 & 0xFFFFFFFFFFFFFFFELL);
    }

    v47 = MEMORY[0x277C97A90](v48);
    *(v3 + 144) = v47;
  }

  if (*(a2 + 144))
  {
    v49 = *(a2 + 144);
  }

  else
  {
    v49 = MEMORY[0x277D80498];
  }

  result = TSD::ShadowArchive::MergeFrom(v47, v49);
  if ((v5 & 0x8000) != 0)
  {
LABEL_136:
    *(v3 + 16) |= 0x8000u;
    v50 = *(v3 + 152);
    if (!v50)
    {
      v51 = *(v3 + 8);
      if (v51)
      {
        v51 = *(v51 & 0xFFFFFFFFFFFFFFFELL);
      }

      v50 = sub_276447688(v51);
      *(v3 + 152) = v50;
    }

    if (*(a2 + 152))
    {
      v52 = *(a2 + 152);
    }

    else
    {
      v52 = qword_2812F12A8;
    }

    result = sub_27643F1BC(v50, v52);
  }

LABEL_144:
  if ((v5 & 0xFF0000) == 0)
  {
    goto LABEL_155;
  }

  if ((v5 & 0x10000) != 0)
  {
    *(v3 + 16) |= 0x10000u;
    v54 = *(v3 + 160);
    if (!v54)
    {
      v55 = *(v3 + 8);
      if (v55)
      {
        v55 = *(v55 & 0xFFFFFFFFFFFFFFFELL);
      }

      v54 = sub_276447688(v55);
      *(v3 + 160) = v54;
    }

    if (*(a2 + 160))
    {
      v56 = *(a2 + 160);
    }

    else
    {
      v56 = qword_2812F12A8;
    }

    result = sub_27643F1BC(v54, v56);
    if ((v5 & 0x20000) == 0)
    {
LABEL_147:
      if ((v5 & 0x40000) == 0)
      {
        goto LABEL_148;
      }

      goto LABEL_192;
    }
  }

  else if ((v5 & 0x20000) == 0)
  {
    goto LABEL_147;
  }

  *(v3 + 16) |= 0x20000u;
  v57 = *(v3 + 168);
  if (!v57)
  {
    v58 = *(v3 + 8);
    if (v58)
    {
      v58 = *(v58 & 0xFFFFFFFFFFFFFFFELL);
    }

    v57 = sub_276447688(v58);
    *(v3 + 168) = v57;
  }

  if (*(a2 + 168))
  {
    v59 = *(a2 + 168);
  }

  else
  {
    v59 = qword_2812F12A8;
  }

  result = sub_27643F1BC(v57, v59);
  if ((v5 & 0x40000) == 0)
  {
LABEL_148:
    if ((v5 & 0x80000) == 0)
    {
      goto LABEL_149;
    }

    goto LABEL_200;
  }

LABEL_192:
  *(v3 + 16) |= 0x40000u;
  v60 = *(v3 + 176);
  if (!v60)
  {
    v61 = *(v3 + 8);
    if (v61)
    {
      v61 = *(v61 & 0xFFFFFFFFFFFFFFFELL);
    }

    v60 = sub_276447688(v61);
    *(v3 + 176) = v60;
  }

  if (*(a2 + 176))
  {
    v62 = *(a2 + 176);
  }

  else
  {
    v62 = qword_2812F12A8;
  }

  result = sub_27643F1BC(v60, v62);
  if ((v5 & 0x80000) == 0)
  {
LABEL_149:
    if ((v5 & 0x100000) == 0)
    {
      goto LABEL_150;
    }

    goto LABEL_208;
  }

LABEL_200:
  *(v3 + 16) |= 0x80000u;
  v63 = *(v3 + 184);
  if (!v63)
  {
    v64 = *(v3 + 8);
    if (v64)
    {
      v64 = *(v64 & 0xFFFFFFFFFFFFFFFELL);
    }

    v63 = sub_276447688(v64);
    *(v3 + 184) = v63;
  }

  if (*(a2 + 184))
  {
    v65 = *(a2 + 184);
  }

  else
  {
    v65 = qword_2812F12A8;
  }

  result = sub_27643F1BC(v63, v65);
  if ((v5 & 0x100000) == 0)
  {
LABEL_150:
    if ((v5 & 0x200000) == 0)
    {
      goto LABEL_151;
    }

    goto LABEL_216;
  }

LABEL_208:
  *(v3 + 16) |= 0x100000u;
  v66 = *(v3 + 192);
  if (!v66)
  {
    v67 = *(v3 + 8);
    if (v67)
    {
      v67 = *(v67 & 0xFFFFFFFFFFFFFFFELL);
    }

    v66 = sub_276447688(v67);
    *(v3 + 192) = v66;
  }

  if (*(a2 + 192))
  {
    v68 = *(a2 + 192);
  }

  else
  {
    v68 = qword_2812F12A8;
  }

  result = sub_27643F1BC(v66, v68);
  if ((v5 & 0x200000) == 0)
  {
LABEL_151:
    if ((v5 & 0x400000) == 0)
    {
      goto LABEL_152;
    }

LABEL_217:
    *(v3 + 204) = *(a2 + 204);
    if ((v5 & 0x800000) == 0)
    {
      goto LABEL_154;
    }

    goto LABEL_153;
  }

LABEL_216:
  *(v3 + 200) = *(a2 + 200);
  if ((v5 & 0x400000) != 0)
  {
    goto LABEL_217;
  }

LABEL_152:
  if ((v5 & 0x800000) != 0)
  {
LABEL_153:
    *(v3 + 208) = *(a2 + 208);
  }

LABEL_154:
  *(v3 + 16) |= v5;
LABEL_155:
  if (!HIBYTE(v5))
  {
    goto LABEL_165;
  }

  if ((v5 & 0x1000000) != 0)
  {
    *(v3 + 212) = *(a2 + 212);
    if ((v5 & 0x2000000) == 0)
    {
LABEL_158:
      if ((v5 & 0x4000000) == 0)
      {
        goto LABEL_159;
      }

      goto LABEL_228;
    }
  }

  else if ((v5 & 0x2000000) == 0)
  {
    goto LABEL_158;
  }

  *(v3 + 216) = *(a2 + 216);
  if ((v5 & 0x4000000) == 0)
  {
LABEL_159:
    if ((v5 & 0x8000000) == 0)
    {
      goto LABEL_160;
    }

    goto LABEL_229;
  }

LABEL_228:
  *(v3 + 220) = *(a2 + 220);
  if ((v5 & 0x8000000) == 0)
  {
LABEL_160:
    if ((v5 & 0x10000000) == 0)
    {
      goto LABEL_161;
    }

    goto LABEL_230;
  }

LABEL_229:
  *(v3 + 224) = *(a2 + 224);
  if ((v5 & 0x10000000) == 0)
  {
LABEL_161:
    if ((v5 & 0x20000000) == 0)
    {
      goto LABEL_162;
    }

    goto LABEL_231;
  }

LABEL_230:
  *(v3 + 228) = *(a2 + 228);
  if ((v5 & 0x20000000) == 0)
  {
LABEL_162:
    if ((v5 & 0x40000000) == 0)
    {
      goto LABEL_163;
    }

LABEL_232:
    *(v3 + 236) = *(a2 + 236);
    if ((v5 & 0x80000000) == 0)
    {
      goto LABEL_164;
    }

LABEL_233:
    *(v3 + 240) = *(a2 + 240);
    goto LABEL_164;
  }

LABEL_231:
  *(v3 + 232) = *(a2 + 232);
  if ((v5 & 0x40000000) != 0)
  {
    goto LABEL_232;
  }

LABEL_163:
  if ((v5 & 0x80000000) != 0)
  {
    goto LABEL_233;
  }

LABEL_164:
  *(v3 + 16) |= v5;
LABEL_165:
  v53 = *(a2 + 20);
  if ((v53 & 0x7F) == 0)
  {
    return result;
  }

  if (v53)
  {
    *(v3 + 241) = *(a2 + 241);
    if ((v53 & 2) == 0)
    {
LABEL_168:
      if ((v53 & 4) == 0)
      {
        goto LABEL_169;
      }

      goto LABEL_221;
    }
  }

  else if ((v53 & 2) == 0)
  {
    goto LABEL_168;
  }

  *(v3 + 242) = *(a2 + 242);
  if ((v53 & 4) == 0)
  {
LABEL_169:
    if ((v53 & 8) == 0)
    {
      goto LABEL_170;
    }

    goto LABEL_222;
  }

LABEL_221:
  *(v3 + 243) = *(a2 + 243);
  if ((v53 & 8) == 0)
  {
LABEL_170:
    if ((v53 & 0x10) == 0)
    {
      goto LABEL_171;
    }

    goto LABEL_223;
  }

LABEL_222:
  *(v3 + 244) = *(a2 + 244);
  if ((v53 & 0x10) == 0)
  {
LABEL_171:
    if ((v53 & 0x20) == 0)
    {
      goto LABEL_172;
    }

LABEL_224:
    *(v3 + 248) = *(a2 + 248);
    if ((v53 & 0x40) == 0)
    {
      goto LABEL_174;
    }

    goto LABEL_173;
  }

LABEL_223:
  *(v3 + 245) = *(a2 + 245);
  if ((v53 & 0x20) != 0)
  {
    goto LABEL_224;
  }

LABEL_172:
  if ((v53 & 0x40) != 0)
  {
LABEL_173:
    *(v3 + 252) = *(a2 + 252);
  }

LABEL_174:
  *(v3 + 20) |= v53;
  return result;
}