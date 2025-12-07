google::protobuf::UnknownFieldSet *sub_275F9B9FC(google::protobuf::UnknownFieldSet *result, google::protobuf::UnknownFieldSet *a2)
{
  if (a2 != result)
  {
    v4 = result;
    sub_275F9A6D4(result);

    return sub_275F9B6A4(v4, a2);
  }

  return result;
}

uint64_t sub_275F9BA48(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    result = TSP::Point::IsInitialized(*(a1 + 24));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 2) != 0)
  {
    result = TSP::Size::IsInitialized(*(a1 + 32));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 4) != 0)
  {
    result = TSP::Range::IsInitialized(*(a1 + 40));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 8) != 0)
  {
    result = TSP::Range::IsInitialized(*(a1 + 48));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  return ((v2 & 0x10) == 0 || (~*(*(a1 + 56) + 16) & 3) == 0) && ((v2 & 0x20) == 0 || (~*(*(a1 + 64) + 16) & 3) == 0);
}

uint64_t sub_275F9BB30(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_2884FF640;
  *(a1 + 8) = a2;
  *(a1 + 24) = a2;
  *(a1 + 16) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = a2;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = a2;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  *(a1 + 96) = a2;
  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  *(a1 + 120) = a2;
  *(a1 + 128) = 0;
  *(a1 + 136) = 0;
  *(a1 + 168) = a2;
  *(a1 + 144) = a2;
  *(a1 + 152) = 0;
  *(a1 + 160) = 0;
  *(a1 + 176) = 0;
  *(a1 + 184) = 0;
  if (atomic_load_explicit(dword_2812F81A8, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(a1 + 224) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  return a1;
}

void sub_275F9BC0C(_Unwind_Exception *a1)
{
  sub_275FB5F64(v7);
  sub_275FB5DD8(v6);
  sub_275FB56E8(v5);
  sub_275FB5EE0(v4);
  sub_275FB56E8(v3);
  sub_275FB5E5C(v2);
  sub_275FB5DD8(v1);
  _Unwind_Resume(a1);
}

uint64_t *sub_275F9BC6C(uint64_t *a1)
{
  sub_275F9BCF4(a1);
  sub_275F8A514(a1 + 1);
  sub_275FB5F64(a1 + 21);
  sub_275FB5DD8(a1 + 18);
  sub_275FB56E8(a1 + 15);
  sub_275FB5EE0(a1 + 12);
  sub_275FB56E8(a1 + 9);
  sub_275FB5E5C(a1 + 6);
  sub_275FB5DD8(a1 + 3);
  return a1;
}

uint64_t sub_275F9BCF4(uint64_t result)
{
  if (result != &unk_2812F8BC8)
  {
    v1 = result;
    v2 = *(result + 192);
    if (v2)
    {
      TSP::Range::~Range(v2);
      MEMORY[0x277C93390]();
    }

    v3 = v1[25];
    if (v3)
    {
      TSP::Range::~Range(v3);
      MEMORY[0x277C93390]();
    }

    v4 = v1[26];
    if (v4)
    {
      TSP::Reference::~Reference(v4);
      MEMORY[0x277C93390]();
    }

    v5 = v1[27];
    if (v5)
    {
      TSP::Reference::~Reference(v5);
      MEMORY[0x277C93390]();
    }

    result = v1[28];
    if (result)
    {
      sub_275FA0B40(result);

      JUMPOUT(0x277C93390);
    }
  }

  return result;
}

void sub_275F9BDD0(uint64_t *a1)
{
  sub_275F9BC6C(a1);

  JUMPOUT(0x277C93390);
}

google::protobuf::UnknownFieldSet *sub_275F9BE10(google::protobuf::UnknownFieldSet *result)
{
  v1 = result;
  v2 = *(result + 8);
  if (v2 >= 1)
  {
    v3 = (*(result + 5) + 8);
    do
    {
      v4 = *v3++;
      result = sub_275F9A6D4(v4);
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
      result = sub_275F99AF4(v7);
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
      result = TSP::UUID::Clear(v13);
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
      result = TSP::Reference::Clear(v16);
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
      result = sub_275F9A6D4(v19);
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
      result = sub_275F9BFFC(v22);
      --v20;
    }

    while (v20);
    *(v1 + 176) = 0;
  }

  v23 = *(v1 + 16);
  if ((v23 & 0x1F) == 0)
  {
    goto LABEL_36;
  }

  if (v23)
  {
    result = TSP::Range::Clear(*(v1 + 192));
    if ((v23 & 2) == 0)
    {
LABEL_32:
      if ((v23 & 4) == 0)
      {
        goto LABEL_33;
      }

LABEL_46:
      result = TSP::Reference::Clear(*(v1 + 208));
      if ((v23 & 8) == 0)
      {
LABEL_34:
        if ((v23 & 0x10) == 0)
        {
          goto LABEL_36;
        }

        goto LABEL_35;
      }

      goto LABEL_47;
    }
  }

  else if ((v23 & 2) == 0)
  {
    goto LABEL_32;
  }

  result = TSP::Range::Clear(*(v1 + 200));
  if ((v23 & 4) != 0)
  {
    goto LABEL_46;
  }

LABEL_33:
  if ((v23 & 8) == 0)
  {
    goto LABEL_34;
  }

LABEL_47:
  result = TSP::Reference::Clear(*(v1 + 216));
  if ((v23 & 0x10) != 0)
  {
LABEL_35:
    result = sub_275F9BFFC(*(v1 + 224));
  }

LABEL_36:
  if ((v23 & 0xE0) != 0)
  {
    *(v1 + 240) = 0;
    *(v1 + 232) = 0;
  }

  if ((v23 & 0x700) != 0)
  {
    *(v1 + 252) = 0;
    *(v1 + 244) = 0;
  }

  v25 = *(v1 + 8);
  v24 = v1 + 8;
  *(v24 + 8) = 0;
  if (v25)
  {

    return sub_275FB57B8(v24);
  }

  return result;
}

google::protobuf::UnknownFieldSet *sub_275F9BFFC(google::protobuf::UnknownFieldSet *result)
{
  v1 = result;
  v2 = *(result + 6);
  if (v2 >= 1)
  {
    v3 = (*(result + 4) + 8);
    do
    {
      v4 = *v3++;
      result = sub_275FA02E0(v4);
      --v2;
    }

    while (v2);
    *(v1 + 24) = 0;
  }

  v6 = *(v1 + 8);
  v5 = (v1 + 8);
  if (v6)
  {

    return sub_275FB57B8(v5);
  }

  return result;
}

google::protobuf::internal *sub_275F9C078(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v104 = a2;
  v5 = 0;
  if ((sub_275FB1588(a3, &v104, *(a3 + 92)) & 1) == 0)
  {
    while (2)
    {
      v7 = (v104 + 1);
      v8 = *v104;
      if (*v104 < 0)
      {
        v9 = v8 + (*v7 << 7);
        v8 = v9 - 128;
        if (*v7 < 0)
        {
          TagFallback = google::protobuf::internal::ReadTagFallback(v104, (v9 - 128));
          v104 = TagFallback;
          if (!TagFallback)
          {
            goto LABEL_190;
          }

          v7 = TagFallback;
          v8 = v14;
LABEL_7:
          switch(v8 >> 3)
          {
            case 1u:
              if (v8 != 8)
              {
                goto LABEL_165;
              }

              v11 = (v7 + 1);
              v10 = *v7;
              if ((v10 & 0x8000000000000000) == 0)
              {
                goto LABEL_12;
              }

              v12 = *v11;
              v10 = (v12 << 7) + v10 - 128;
              if (v12 < 0)
              {
                v104 = google::protobuf::internal::VarintParseSlow64(v7, v10);
                if (!v104)
                {
                  goto LABEL_190;
                }
              }

              else
              {
                v11 = (v7 + 2);
LABEL_12:
                v104 = v11;
              }

              if (v10 > 6)
              {
                sub_276037768();
              }

              else
              {
                *(a1 + 16) |= 0x20u;
                *(a1 + 232) = v10;
              }

              goto LABEL_173;
            case 2u:
              if (v8 != 18)
              {
                goto LABEL_165;
              }

              v36 = (v7 - 1);
              while (1)
              {
                v37 = (v36 + 1);
                v104 = (v36 + 1);
                v38 = *(a1 + 40);
                if (!v38)
                {
                  goto LABEL_58;
                }

                v43 = *(a1 + 32);
                v39 = *v38;
                if (v43 < *v38)
                {
                  *(a1 + 32) = v43 + 1;
                  v40 = *&v38[2 * v43 + 2];
                  goto LABEL_62;
                }

                if (v39 == *(a1 + 36))
                {
LABEL_58:
                  google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 24));
                  v38 = *(a1 + 40);
                  v39 = *v38;
                }

                *v38 = v39 + 1;
                v40 = sub_275FAF71C(*(a1 + 24));
                v41 = *(a1 + 32);
                v42 = *(a1 + 40) + 8 * v41;
                *(a1 + 32) = v41 + 1;
                *(v42 + 8) = v40;
                v37 = v104;
LABEL_62:
                v36 = sub_2760353AC(a3, v40, v37);
                v104 = v36;
                if (!v36)
                {
                  goto LABEL_190;
                }

                if (*a3 <= v36 || *v36 != 18)
                {
                  goto LABEL_173;
                }
              }

            case 3u:
              if (v8 != 26)
              {
                goto LABEL_165;
              }

              *(a1 + 16) |= 1u;
              v54 = *(a1 + 192);
              if (v54)
              {
                goto LABEL_99;
              }

              v56 = *(a1 + 8);
              if (v56)
              {
                v56 = *(v56 & 0xFFFFFFFFFFFFFFFELL);
              }

              v54 = MEMORY[0x277C92D40](v56);
              *(a1 + 192) = v54;
              goto LABEL_98;
            case 4u:
              if (v8 != 34)
              {
                goto LABEL_165;
              }

              *(a1 + 16) |= 2u;
              v54 = *(a1 + 200);
              if (v54)
              {
                goto LABEL_99;
              }

              v55 = *(a1 + 8);
              if (v55)
              {
                v55 = *(v55 & 0xFFFFFFFFFFFFFFFELL);
              }

              v54 = MEMORY[0x277C92D40](v55);
              *(a1 + 200) = v54;
LABEL_98:
              v7 = v104;
LABEL_99:
              v45 = sub_27603520C(a3, v54, v7);
              goto LABEL_172;
            case 6u:
              if (v8 != 50)
              {
                goto LABEL_165;
              }

              *(a1 + 16) |= 4u;
              v26 = *(a1 + 208);
              if (v26)
              {
                goto LABEL_74;
              }

              v27 = *(a1 + 8);
              if (v27)
              {
                v27 = *(v27 & 0xFFFFFFFFFFFFFFFELL);
              }

              v26 = MEMORY[0x277C92D60](v27);
              *(a1 + 208) = v26;
              goto LABEL_73;
            case 7u:
              if (v8 != 58)
              {
                goto LABEL_165;
              }

              *(a1 + 16) |= 8u;
              v26 = *(a1 + 216);
              if (v26)
              {
                goto LABEL_74;
              }

              v44 = *(a1 + 8);
              if (v44)
              {
                v44 = *(v44 & 0xFFFFFFFFFFFFFFFELL);
              }

              v26 = MEMORY[0x277C92D60](v44);
              *(a1 + 216) = v26;
LABEL_73:
              v7 = v104;
LABEL_74:
              v45 = sub_27603450C(a3, v26, v7);
              goto LABEL_172;
            case 8u:
              if (v8 != 66)
              {
                goto LABEL_165;
              }

              v57 = (v7 - 1);
              while (1)
              {
                v58 = (v57 + 1);
                v104 = (v57 + 1);
                v59 = *(a1 + 64);
                if (!v59)
                {
                  goto LABEL_103;
                }

                v64 = *(a1 + 56);
                v60 = *v59;
                if (v64 < *v59)
                {
                  *(a1 + 56) = v64 + 1;
                  v61 = *&v59[2 * v64 + 2];
                  goto LABEL_107;
                }

                if (v60 == *(a1 + 60))
                {
LABEL_103:
                  google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 48));
                  v59 = *(a1 + 64);
                  v60 = *v59;
                }

                *v59 = v60 + 1;
                v61 = sub_275FAF648(*(a1 + 48));
                v62 = *(a1 + 56);
                v63 = *(a1 + 64) + 8 * v62;
                *(a1 + 56) = v62 + 1;
                *(v63 + 8) = v61;
                v58 = v104;
LABEL_107:
                v57 = sub_27603547C(a3, v61, v58);
                v104 = v57;
                if (!v57)
                {
                  goto LABEL_190;
                }

                if (*a3 <= v57 || *v57 != 66)
                {
                  goto LABEL_173;
                }
              }

            case 0xAu:
              if (v8 != 80)
              {
                goto LABEL_165;
              }

              v5 |= 0x40u;
              v65 = (v7 + 1);
              LODWORD(v66) = *v7;
              if ((*v7 & 0x80000000) == 0)
              {
                goto LABEL_117;
              }

              v67 = *v65;
              v66 = (v66 + (v67 << 7) - 128);
              if (v67 < 0)
              {
                v96 = google::protobuf::internal::VarintParseSlow32(v7, v66);
                v104 = v96;
                *(a1 + 236) = v97;
                if (!v96)
                {
                  goto LABEL_190;
                }
              }

              else
              {
                v65 = (v7 + 2);
LABEL_117:
                v104 = v65;
                *(a1 + 236) = v66;
              }

              goto LABEL_173;
            case 0xBu:
              if (v8 != 88)
              {
                goto LABEL_165;
              }

              v5 |= 0x80u;
              v82 = (v7 + 1);
              LODWORD(v83) = *v7;
              if ((*v7 & 0x80000000) == 0)
              {
                goto LABEL_145;
              }

              v84 = *v82;
              v83 = (v83 + (v84 << 7) - 128);
              if (v84 < 0)
              {
                v102 = google::protobuf::internal::VarintParseSlow32(v7, v83);
                v104 = v102;
                *(a1 + 240) = v103;
                if (!v102)
                {
                  goto LABEL_190;
                }
              }

              else
              {
                v82 = (v7 + 2);
LABEL_145:
                v104 = v82;
                *(a1 + 240) = v83;
              }

              goto LABEL_173;
            case 0xCu:
              if (v8 != 98)
              {
                goto LABEL_165;
              }

              v74 = v7 - 1;
              while (1)
              {
                v75 = (v74 + 1);
                v104 = (v74 + 1);
                v76 = *(a1 + 88);
                if (!v76)
                {
                  goto LABEL_131;
                }

                v81 = *(a1 + 80);
                v77 = *v76;
                if (v81 < *v76)
                {
                  *(a1 + 80) = v81 + 1;
                  v78 = *&v76[2 * v81 + 2];
                  goto LABEL_135;
                }

                if (v77 == *(a1 + 84))
                {
LABEL_131:
                  google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 72));
                  v76 = *(a1 + 88);
                  v77 = *v76;
                }

                *v76 = v77 + 1;
                v78 = MEMORY[0x277C92D60](*(a1 + 72));
                v79 = *(a1 + 80);
                v80 = *(a1 + 88) + 8 * v79;
                *(a1 + 80) = v79 + 1;
                *(v80 + 8) = v78;
                v75 = v104;
LABEL_135:
                v74 = sub_27603450C(a3, v78, v75);
                v104 = v74;
                if (!v74)
                {
                  goto LABEL_190;
                }

                if (*a3 <= v74 || *v74 != 98)
                {
                  goto LABEL_173;
                }
              }

            case 0xDu:
              if (v8 != 106)
              {
                goto LABEL_165;
              }

              v18 = v7 - 1;
              while (1)
              {
                v19 = (v18 + 1);
                v104 = (v18 + 1);
                v20 = *(a1 + 112);
                if (!v20)
                {
                  goto LABEL_27;
                }

                v25 = *(a1 + 104);
                v21 = *v20;
                if (v25 < *v20)
                {
                  *(a1 + 104) = v25 + 1;
                  v22 = *&v20[2 * v25 + 2];
                  goto LABEL_31;
                }

                if (v21 == *(a1 + 108))
                {
LABEL_27:
                  google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 96));
                  v20 = *(a1 + 112);
                  v21 = *v20;
                }

                *v20 = v21 + 1;
                v22 = MEMORY[0x277C92D20](*(a1 + 96));
                v23 = *(a1 + 104);
                v24 = *(a1 + 112) + 8 * v23;
                *(a1 + 104) = v23 + 1;
                *(v24 + 8) = v22;
                v19 = v104;
LABEL_31:
                v18 = sub_276034ECC(a3, v22, v19);
                v104 = v18;
                if (!v18)
                {
                  goto LABEL_190;
                }

                if (*a3 <= v18 || *v18 != 106)
                {
                  goto LABEL_173;
                }
              }

            case 0xEu:
              if (v8 != 114)
              {
                goto LABEL_165;
              }

              v46 = v7 - 1;
              while (1)
              {
                v47 = (v46 + 1);
                v104 = (v46 + 1);
                v48 = *(a1 + 136);
                if (!v48)
                {
                  goto LABEL_78;
                }

                v53 = *(a1 + 128);
                v49 = *v48;
                if (v53 < *v48)
                {
                  *(a1 + 128) = v53 + 1;
                  v50 = *&v48[2 * v53 + 2];
                  goto LABEL_82;
                }

                if (v49 == *(a1 + 132))
                {
LABEL_78:
                  google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 120));
                  v48 = *(a1 + 136);
                  v49 = *v48;
                }

                *v48 = v49 + 1;
                v50 = MEMORY[0x277C92D60](*(a1 + 120));
                v51 = *(a1 + 128);
                v52 = *(a1 + 136) + 8 * v51;
                *(a1 + 128) = v51 + 1;
                *(v52 + 8) = v50;
                v47 = v104;
LABEL_82:
                v46 = sub_27603450C(a3, v50, v47);
                v104 = v46;
                if (!v46)
                {
                  goto LABEL_190;
                }

                if (*a3 <= v46 || *v46 != 114)
                {
                  goto LABEL_173;
                }
              }

            case 0xFu:
              if (v8 != 122)
              {
                goto LABEL_165;
              }

              v28 = (v7 - 1);
              while (1)
              {
                v29 = (v28 + 1);
                v104 = (v28 + 1);
                v30 = *(a1 + 160);
                if (!v30)
                {
                  goto LABEL_45;
                }

                v35 = *(a1 + 152);
                v31 = *v30;
                if (v35 < *v30)
                {
                  *(a1 + 152) = v35 + 1;
                  v32 = *&v30[2 * v35 + 2];
                  goto LABEL_49;
                }

                if (v31 == *(a1 + 156))
                {
LABEL_45:
                  google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 144));
                  v30 = *(a1 + 160);
                  v31 = *v30;
                }

                *v30 = v31 + 1;
                v32 = sub_275FAF71C(*(a1 + 144));
                v33 = *(a1 + 152);
                v34 = *(a1 + 160) + 8 * v33;
                *(a1 + 152) = v33 + 1;
                *(v34 + 8) = v32;
                v29 = v104;
LABEL_49:
                v28 = sub_2760353AC(a3, v32, v29);
                v104 = v28;
                if (!v28)
                {
                  goto LABEL_190;
                }

                if (*a3 <= v28 || *v28 != 122)
                {
                  goto LABEL_173;
                }
              }

            case 0x11u:
              if (v8 != 136)
              {
                goto LABEL_165;
              }

              v16 = (v7 + 1);
              v15 = *v7;
              if ((v15 & 0x8000000000000000) == 0)
              {
                goto LABEL_21;
              }

              v17 = *v16;
              v15 = (v17 << 7) + v15 - 128;
              if (v17 < 0)
              {
                v104 = google::protobuf::internal::VarintParseSlow64(v7, v15);
                if (!v104)
                {
                  goto LABEL_190;
                }
              }

              else
              {
                v16 = (v7 + 2);
LABEL_21:
                v104 = v16;
              }

              if (v15 > 2)
              {
                sub_27603772C();
              }

              else
              {
                *(a1 + 16) |= 0x100u;
                *(a1 + 244) = v15;
              }

              goto LABEL_173;
            case 0x12u:
              if (v8 != 144)
              {
                goto LABEL_165;
              }

              v5 |= 0x200u;
              v68 = (v7 + 1);
              LODWORD(v69) = *v7;
              if ((*v7 & 0x80000000) == 0)
              {
                goto LABEL_122;
              }

              v70 = *v68;
              v69 = (v69 + (v70 << 7) - 128);
              if (v70 < 0)
              {
                v98 = google::protobuf::internal::VarintParseSlow32(v7, v69);
                v104 = v98;
                *(a1 + 248) = v99;
                if (!v98)
                {
                  goto LABEL_190;
                }
              }

              else
              {
                v68 = (v7 + 2);
LABEL_122:
                v104 = v68;
                *(a1 + 248) = v69;
              }

              goto LABEL_173;
            case 0x13u:
              if (v8 != 152)
              {
                goto LABEL_165;
              }

              v5 |= 0x400u;
              v71 = (v7 + 1);
              LODWORD(v72) = *v7;
              if ((*v7 & 0x80000000) == 0)
              {
                goto LABEL_127;
              }

              v73 = *v71;
              v72 = (v72 + (v73 << 7) - 128);
              if (v73 < 0)
              {
                v100 = google::protobuf::internal::VarintParseSlow32(v7, v72);
                v104 = v100;
                *(a1 + 252) = v101;
                if (!v100)
                {
                  goto LABEL_190;
                }
              }

              else
              {
                v71 = (v7 + 2);
LABEL_127:
                v104 = v71;
                *(a1 + 252) = v72;
              }

              goto LABEL_173;
            case 0x14u:
              if (v8 != 162)
              {
                goto LABEL_165;
              }

              *(a1 + 16) |= 0x10u;
              v93 = *(a1 + 224);
              if (!v93)
              {
                v94 = *(a1 + 8);
                if (v94)
                {
                  v94 = *(v94 & 0xFFFFFFFFFFFFFFFELL);
                }

                v93 = sub_275FAFB4C(v94);
                *(a1 + 224) = v93;
                v7 = v104;
              }

              v45 = sub_27603554C(a3, v93, v7);
              goto LABEL_172;
            case 0x15u:
              if (v8 != 170)
              {
                goto LABEL_165;
              }

              v85 = (v7 - 2);
              break;
            default:
LABEL_165:
              if (v8)
              {
                v95 = (v8 & 7) == 4;
              }

              else
              {
                v95 = 1;
              }

              if (v95)
              {
                *(a3 + 80) = v8 - 1;
                goto LABEL_2;
              }

              if ((*(a1 + 8) & 1) == 0)
              {
                sub_275FB5524((a1 + 8));
              }

              v45 = google::protobuf::internal::UnknownFieldParse();
LABEL_172:
              v104 = v45;
              if (!v45)
              {
LABEL_190:
                v104 = 0;
                goto LABEL_2;
              }

LABEL_173:
              if (sub_275FB1588(a3, &v104, *(a3 + 92)))
              {
                goto LABEL_2;
              }

              continue;
          }

          while (1)
          {
            v86 = (v85 + 2);
            v104 = (v85 + 2);
            v87 = *(a1 + 184);
            if (!v87)
            {
              goto LABEL_149;
            }

            v92 = *(a1 + 176);
            v88 = *v87;
            if (v92 < *v87)
            {
              *(a1 + 176) = v92 + 1;
              v89 = *&v87[2 * v92 + 2];
              goto LABEL_153;
            }

            if (v88 == *(a1 + 180))
            {
LABEL_149:
              google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 168));
              v87 = *(a1 + 184);
              v88 = *v87;
            }

            *v87 = v88 + 1;
            v89 = sub_275FAFB4C(*(a1 + 168));
            v90 = *(a1 + 176);
            v91 = *(a1 + 184) + 8 * v90;
            *(a1 + 176) = v90 + 1;
            *(v91 + 8) = v89;
            v86 = v104;
LABEL_153:
            v85 = sub_27603554C(a3, v89, v86);
            v104 = v85;
            if (!v85)
            {
              goto LABEL_190;
            }

            if (*a3 <= v85 || *v85 != 426)
            {
              goto LABEL_173;
            }
          }
        }

        v7 = (v104 + 2);
      }

      break;
    }

    v104 = v7;
    goto LABEL_7;
  }

LABEL_2:
  *(a1 + 16) |= v5;
  return v104;
}

unsigned __int8 *sub_275F9CB64(uint64_t a1, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3, google::protobuf::io::EpsCopyOutputStream *a4)
{
  v6 = *(a1 + 16);
  if ((v6 & 0x20) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v7 = *(a1 + 232);
    *a2 = 8;
    if (v7 > 0x7F)
    {
      a2[1] = v7 | 0x80;
      v8 = v7 >> 7;
      if (v7 >> 14)
      {
        a2 += 3;
        do
        {
          *(a2 - 1) = v8 | 0x80;
          v9 = v8 >> 7;
          ++a2;
          v10 = v8 >> 14;
          v8 >>= 7;
        }

        while (v10);
        *(a2 - 1) = v9;
      }

      else
      {
        a2[2] = v8;
        a2 += 3;
      }
    }

    else
    {
      a2[1] = v7;
      a2 += 2;
    }
  }

  v11 = *(a1 + 32);
  if (v11)
  {
    for (i = 0; i != v11; ++i)
    {
      if (*a3 <= a2)
      {
        a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      }

      v13 = *(*(a1 + 40) + 8 * i + 8);
      *a2 = 18;
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

      a2 = sub_275F9ADC0(v13, v15, a3, a4);
    }
  }

  if (v6)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v19 = *(a1 + 192);
    *a2 = 26;
    v20 = *(v19 + 5);
    if (v20 > 0x7F)
    {
      a2[1] = v20 | 0x80;
      v22 = v20 >> 7;
      if (v20 >> 14)
      {
        v21 = a2 + 3;
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
        a2[2] = v22;
        v21 = a2 + 3;
      }
    }

    else
    {
      a2[1] = v20;
      v21 = a2 + 2;
    }

    a2 = TSP::Range::_InternalSerialize(v19, v21, a3);
    if ((v6 & 2) == 0)
    {
LABEL_25:
      if ((v6 & 4) == 0)
      {
        goto LABEL_26;
      }

      goto LABEL_48;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_25;
  }

  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v25 = *(a1 + 200);
  *a2 = 34;
  v26 = *(v25 + 5);
  if (v26 > 0x7F)
  {
    a2[1] = v26 | 0x80;
    v28 = v26 >> 7;
    if (v26 >> 14)
    {
      v27 = a2 + 3;
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
      a2[2] = v28;
      v27 = a2 + 3;
    }
  }

  else
  {
    a2[1] = v26;
    v27 = a2 + 2;
  }

  a2 = TSP::Range::_InternalSerialize(v25, v27, a3);
  if ((v6 & 4) == 0)
  {
LABEL_26:
    if ((v6 & 8) == 0)
    {
      goto LABEL_68;
    }

    goto LABEL_58;
  }

LABEL_48:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v31 = *(a1 + 208);
  *a2 = 50;
  v32 = *(v31 + 5);
  if (v32 > 0x7F)
  {
    a2[1] = v32 | 0x80;
    v34 = v32 >> 7;
    if (v32 >> 14)
    {
      v33 = a2 + 3;
      do
      {
        *(v33 - 1) = v34 | 0x80;
        v35 = v34 >> 7;
        ++v33;
        v36 = v34 >> 14;
        v34 >>= 7;
      }

      while (v36);
      *(v33 - 1) = v35;
    }

    else
    {
      a2[2] = v34;
      v33 = a2 + 3;
    }
  }

  else
  {
    a2[1] = v32;
    v33 = a2 + 2;
  }

  a2 = TSP::Reference::_InternalSerialize(v31, v33, a3);
  if ((v6 & 8) != 0)
  {
LABEL_58:
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v37 = *(a1 + 216);
    *a2 = 58;
    v38 = *(v37 + 5);
    if (v38 > 0x7F)
    {
      a2[1] = v38 | 0x80;
      v40 = v38 >> 7;
      if (v38 >> 14)
      {
        v39 = a2 + 3;
        do
        {
          *(v39 - 1) = v40 | 0x80;
          v41 = v40 >> 7;
          ++v39;
          v42 = v40 >> 14;
          v40 >>= 7;
        }

        while (v42);
        *(v39 - 1) = v41;
      }

      else
      {
        a2[2] = v40;
        v39 = a2 + 3;
      }
    }

    else
    {
      a2[1] = v38;
      v39 = a2 + 2;
    }

    a2 = TSP::Reference::_InternalSerialize(v37, v39, a3);
  }

LABEL_68:
  v43 = *(a1 + 56);
  if (v43)
  {
    for (j = 0; j != v43; ++j)
    {
      if (*a3 <= a2)
      {
        a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      }

      v45 = *(*(a1 + 64) + 8 * j + 8);
      *a2 = 66;
      v46 = *(v45 + 20);
      if (v46 > 0x7F)
      {
        a2[1] = v46 | 0x80;
        v48 = v46 >> 7;
        if (v46 >> 14)
        {
          v47 = a2 + 3;
          do
          {
            *(v47 - 1) = v48 | 0x80;
            v49 = v48 >> 7;
            ++v47;
            v50 = v48 >> 14;
            v48 >>= 7;
          }

          while (v50);
          *(v47 - 1) = v49;
        }

        else
        {
          a2[2] = v48;
          v47 = a2 + 3;
        }
      }

      else
      {
        a2[1] = v46;
        v47 = a2 + 2;
      }

      a2 = sub_275F99DF0(v45, v47, a3, a4);
    }
  }

  if ((v6 & 0x40) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v51 = *(a1 + 236);
    *a2 = 80;
    if (v51 <= 0x7F)
    {
      a2[1] = v51;
      a2 += 2;
      if ((v6 & 0x80) == 0)
      {
        goto LABEL_102;
      }

      goto LABEL_89;
    }

    a2[1] = v51 | 0x80;
    v52 = v51 >> 7;
    if (v51 >> 14)
    {
      a2 += 3;
      do
      {
        *(a2 - 1) = v52 | 0x80;
        v55 = v52 >> 7;
        ++a2;
        v56 = v52 >> 14;
        v52 >>= 7;
      }

      while (v56);
      *(a2 - 1) = v55;
      if ((v6 & 0x80) == 0)
      {
        goto LABEL_102;
      }

      goto LABEL_89;
    }

    a2[2] = v52;
    a2 += 3;
  }

  if ((v6 & 0x80) == 0)
  {
    goto LABEL_102;
  }

LABEL_89:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v53 = *(a1 + 240);
  *a2 = 88;
  if (v53 > 0x7F)
  {
    a2[1] = v53 | 0x80;
    v54 = v53 >> 7;
    if (v53 >> 14)
    {
      a2 += 3;
      do
      {
        *(a2 - 1) = v54 | 0x80;
        v57 = v54 >> 7;
        ++a2;
        v58 = v54 >> 14;
        v54 >>= 7;
      }

      while (v58);
      *(a2 - 1) = v57;
    }

    else
    {
      a2[2] = v54;
      a2 += 3;
    }
  }

  else
  {
    a2[1] = v53;
    a2 += 2;
  }

LABEL_102:
  v59 = *(a1 + 80);
  if (v59)
  {
    for (k = 0; k != v59; ++k)
    {
      if (*a3 <= a2)
      {
        a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      }

      v61 = *(*(a1 + 88) + 8 * k + 8);
      *a2 = 98;
      v62 = *(v61 + 5);
      if (v62 > 0x7F)
      {
        a2[1] = v62 | 0x80;
        v64 = v62 >> 7;
        if (v62 >> 14)
        {
          v63 = a2 + 3;
          do
          {
            *(v63 - 1) = v64 | 0x80;
            v65 = v64 >> 7;
            ++v63;
            v66 = v64 >> 14;
            v64 >>= 7;
          }

          while (v66);
          *(v63 - 1) = v65;
        }

        else
        {
          a2[2] = v64;
          v63 = a2 + 3;
        }
      }

      else
      {
        a2[1] = v62;
        v63 = a2 + 2;
      }

      a2 = TSP::Reference::_InternalSerialize(v61, v63, a3);
    }
  }

  v67 = *(a1 + 104);
  if (v67)
  {
    for (m = 0; m != v67; ++m)
    {
      if (*a3 <= a2)
      {
        a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      }

      v69 = *(*(a1 + 112) + 8 * m + 8);
      *a2 = 106;
      v70 = *(v69 + 5);
      if (v70 > 0x7F)
      {
        a2[1] = v70 | 0x80;
        v72 = v70 >> 7;
        if (v70 >> 14)
        {
          v71 = a2 + 3;
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
          a2[2] = v72;
          v71 = a2 + 3;
        }
      }

      else
      {
        a2[1] = v70;
        v71 = a2 + 2;
      }

      a2 = TSP::UUID::_InternalSerialize(v69, v71, a3);
    }
  }

  v75 = *(a1 + 128);
  if (v75)
  {
    for (n = 0; n != v75; ++n)
    {
      if (*a3 <= a2)
      {
        a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      }

      v77 = *(*(a1 + 136) + 8 * n + 8);
      *a2 = 114;
      v78 = *(v77 + 5);
      if (v78 > 0x7F)
      {
        a2[1] = v78 | 0x80;
        v80 = v78 >> 7;
        if (v78 >> 14)
        {
          v79 = a2 + 3;
          do
          {
            *(v79 - 1) = v80 | 0x80;
            v81 = v80 >> 7;
            ++v79;
            v82 = v80 >> 14;
            v80 >>= 7;
          }

          while (v82);
          *(v79 - 1) = v81;
        }

        else
        {
          a2[2] = v80;
          v79 = a2 + 3;
        }
      }

      else
      {
        a2[1] = v78;
        v79 = a2 + 2;
      }

      a2 = TSP::Reference::_InternalSerialize(v77, v79, a3);
    }
  }

  v83 = *(a1 + 152);
  if (v83)
  {
    for (ii = 0; ii != v83; ++ii)
    {
      if (*a3 <= a2)
      {
        a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      }

      v85 = *(*(a1 + 160) + 8 * ii + 8);
      *a2 = 122;
      v86 = *(v85 + 20);
      if (v86 > 0x7F)
      {
        a2[1] = v86 | 0x80;
        v88 = v86 >> 7;
        if (v86 >> 14)
        {
          v87 = a2 + 3;
          do
          {
            *(v87 - 1) = v88 | 0x80;
            v89 = v88 >> 7;
            ++v87;
            v90 = v88 >> 14;
            v88 >>= 7;
          }

          while (v90);
          *(v87 - 1) = v89;
        }

        else
        {
          a2[2] = v88;
          v87 = a2 + 3;
        }
      }

      else
      {
        a2[1] = v86;
        v87 = a2 + 2;
      }

      a2 = sub_275F9ADC0(v85, v87, a3, a4);
    }
  }

  if ((v6 & 0x100) == 0)
  {
    if ((v6 & 0x200) == 0)
    {
      goto LABEL_152;
    }

LABEL_189:
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v111 = *(a1 + 248);
    *a2 = 400;
    if (v111 > 0x7F)
    {
      a2[2] = v111 | 0x80;
      v112 = v111 >> 7;
      if (v111 >> 14)
      {
        a2 += 4;
        do
        {
          *(a2 - 1) = v112 | 0x80;
          v113 = v112 >> 7;
          ++a2;
          v114 = v112 >> 14;
          v112 >>= 7;
        }

        while (v114);
        *(a2 - 1) = v113;
        if ((v6 & 0x400) != 0)
        {
          goto LABEL_200;
        }
      }

      else
      {
        a2[3] = v112;
        a2 += 4;
        if ((v6 & 0x400) != 0)
        {
          goto LABEL_200;
        }
      }
    }

    else
    {
      a2[2] = v111;
      a2 += 3;
      if ((v6 & 0x400) != 0)
      {
        goto LABEL_200;
      }
    }

LABEL_153:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_172;
    }

    goto LABEL_154;
  }

  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v94 = *(a1 + 244);
  *a2 = 392;
  if (v94 > 0x7F)
  {
    a2[2] = v94 | 0x80;
    v96 = v94 >> 7;
    if (v94 >> 14)
    {
      a2 += 4;
      do
      {
        *(a2 - 1) = v96 | 0x80;
        v109 = v96 >> 7;
        ++a2;
        v110 = v96 >> 14;
        v96 >>= 7;
      }

      while (v110);
      *(a2 - 1) = v109;
      if ((v6 & 0x200) != 0)
      {
        goto LABEL_189;
      }
    }

    else
    {
      a2[3] = v96;
      a2 += 4;
      if ((v6 & 0x200) != 0)
      {
        goto LABEL_189;
      }
    }
  }

  else
  {
    a2[2] = v94;
    a2 += 3;
    if ((v6 & 0x200) != 0)
    {
      goto LABEL_189;
    }
  }

LABEL_152:
  if ((v6 & 0x400) == 0)
  {
    goto LABEL_153;
  }

LABEL_200:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v115 = *(a1 + 252);
  *a2 = 408;
  if (v115 > 0x7F)
  {
    a2[2] = v115 | 0x80;
    v116 = v115 >> 7;
    if (v115 >> 14)
    {
      a2 += 4;
      do
      {
        *(a2 - 1) = v116 | 0x80;
        v117 = v116 >> 7;
        ++a2;
        v118 = v116 >> 14;
        v116 >>= 7;
      }

      while (v118);
      *(a2 - 1) = v117;
      if ((v6 & 0x10) == 0)
      {
        goto LABEL_172;
      }
    }

    else
    {
      a2[3] = v116;
      a2 += 4;
      if ((v6 & 0x10) == 0)
      {
        goto LABEL_172;
      }
    }
  }

  else
  {
    a2[2] = v115;
    a2 += 3;
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_172;
    }
  }

LABEL_154:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v91 = *(a1 + 224);
  *a2 = 418;
  v92 = *(v91 + 40);
  if (v92 > 0x7F)
  {
    a2[2] = v92 | 0x80;
    v95 = v92 >> 7;
    if (v92 >> 14)
    {
      v93 = a2 + 4;
      do
      {
        *(v93 - 1) = v95 | 0x80;
        v97 = v95 >> 7;
        ++v93;
        v98 = v95 >> 14;
        v95 >>= 7;
      }

      while (v98);
      *(v93 - 1) = v97;
    }

    else
    {
      a2[3] = v95;
      v93 = a2 + 4;
    }
  }

  else
  {
    a2[2] = v92;
    v93 = a2 + 3;
  }

  a2 = sub_275FA0D90(v91, v93, a3, a4);
LABEL_172:
  v99 = *(a1 + 176);
  if (v99)
  {
    for (jj = 0; jj != v99; ++jj)
    {
      if (*a3 <= a2)
      {
        a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      }

      v101 = *(*(a1 + 184) + 8 * jj + 8);
      *a2 = 426;
      v102 = *(v101 + 40);
      if (v102 > 0x7F)
      {
        a2[2] = v102 | 0x80;
        v104 = v102 >> 7;
        if (v102 >> 14)
        {
          v103 = a2 + 4;
          do
          {
            *(v103 - 1) = v104 | 0x80;
            v105 = v104 >> 7;
            ++v103;
            v106 = v104 >> 14;
            v104 >>= 7;
          }

          while (v106);
          *(v103 - 1) = v105;
        }

        else
        {
          a2[3] = v104;
          v103 = a2 + 4;
        }
      }

      else
      {
        a2[2] = v102;
        v103 = a2 + 3;
      }

      a2 = sub_275FA0D90(v101, v103, a3, a4);
    }
  }

  v107 = *(a1 + 8);
  if ((v107 & 1) == 0)
  {
    return a2;
  }

  return google::protobuf::internal::WireFormat::InternalSerializeUnknownFieldsToArray(((v107 & 0xFFFFFFFFFFFFFFFELL) + 8), a2, a3, a4);
}

uint64_t sub_275F9D700(uint64_t a1)
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
      v7 = sub_275F9B448(v6);
      v2 += v7 + ((9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6);
      v5 -= 8;
    }

    while (v5);
  }

  else
  {
    v2 = 0;
  }

  v8 = *(a1 + 56);
  v9 = v2 + v8;
  v10 = *(a1 + 64);
  if (v10)
  {
    v11 = (v10 + 8);
  }

  else
  {
    v11 = 0;
  }

  if (v8)
  {
    v12 = 8 * v8;
    do
    {
      v13 = *v11++;
      v14 = sub_275F9A0B8(v13);
      v9 += v14 + ((9 * (__clz(v14 | 1) ^ 0x1F) + 73) >> 6);
      v12 -= 8;
    }

    while (v12);
  }

  v15 = *(a1 + 80);
  v16 = v9 + v15;
  v17 = *(a1 + 88);
  if (v17)
  {
    v18 = (v17 + 8);
  }

  else
  {
    v18 = 0;
  }

  if (v15)
  {
    v19 = 8 * v15;
    do
    {
      v20 = *v18++;
      v21 = TSP::Reference::ByteSizeLong(v20);
      v16 += v21 + ((9 * (__clz(v21 | 1) ^ 0x1F) + 73) >> 6);
      v19 -= 8;
    }

    while (v19);
  }

  v22 = *(a1 + 104);
  v23 = v16 + v22;
  v24 = *(a1 + 112);
  if (v24)
  {
    v25 = (v24 + 8);
  }

  else
  {
    v25 = 0;
  }

  if (v22)
  {
    v26 = 8 * v22;
    do
    {
      v27 = *v25++;
      v28 = TSP::UUID::ByteSizeLong(v27);
      v23 += v28 + ((9 * (__clz(v28 | 1) ^ 0x1F) + 73) >> 6);
      v26 -= 8;
    }

    while (v26);
  }

  v29 = *(a1 + 128);
  v30 = v23 + v29;
  v31 = *(a1 + 136);
  if (v31)
  {
    v32 = (v31 + 8);
  }

  else
  {
    v32 = 0;
  }

  if (v29)
  {
    v33 = 8 * v29;
    do
    {
      v34 = *v32++;
      v35 = TSP::Reference::ByteSizeLong(v34);
      v30 += v35 + ((9 * (__clz(v35 | 1) ^ 0x1F) + 73) >> 6);
      v33 -= 8;
    }

    while (v33);
  }

  v36 = *(a1 + 152);
  v37 = v30 + v36;
  v38 = *(a1 + 160);
  if (v38)
  {
    v39 = (v38 + 8);
  }

  else
  {
    v39 = 0;
  }

  if (v36)
  {
    v40 = 8 * v36;
    do
    {
      v41 = *v39++;
      v42 = sub_275F9B448(v41);
      v37 += v42 + ((9 * (__clz(v42 | 1) ^ 0x1F) + 73) >> 6);
      v40 -= 8;
    }

    while (v40);
  }

  v43 = *(a1 + 176);
  v44 = v37 + 2 * v43;
  v45 = *(a1 + 184);
  if (v45)
  {
    v46 = (v45 + 8);
  }

  else
  {
    v46 = 0;
  }

  if (v43)
  {
    v47 = 8 * v43;
    do
    {
      v48 = *v46++;
      v49 = sub_275FA0EB4(v48);
      v44 += v49 + ((9 * (__clz(v49 | 1) ^ 0x1F) + 73) >> 6);
      v47 -= 8;
    }

    while (v47);
  }

  v50 = *(a1 + 16);
  if (!v50)
  {
    goto LABEL_55;
  }

  if (v50)
  {
    v52 = TSP::Range::ByteSizeLong(*(a1 + 192));
    v44 += v52 + ((9 * (__clz(v52 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v50 & 2) == 0)
    {
LABEL_48:
      if ((v50 & 4) == 0)
      {
        goto LABEL_49;
      }

      goto LABEL_64;
    }
  }

  else if ((v50 & 2) == 0)
  {
    goto LABEL_48;
  }

  v53 = TSP::Range::ByteSizeLong(*(a1 + 200));
  v44 += v53 + ((9 * (__clz(v53 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v50 & 4) == 0)
  {
LABEL_49:
    if ((v50 & 8) == 0)
    {
      goto LABEL_50;
    }

    goto LABEL_65;
  }

LABEL_64:
  v54 = TSP::Reference::ByteSizeLong(*(a1 + 208));
  v44 += v54 + ((9 * (__clz(v54 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v50 & 8) == 0)
  {
LABEL_50:
    if ((v50 & 0x10) == 0)
    {
      goto LABEL_51;
    }

    goto LABEL_66;
  }

LABEL_65:
  v55 = TSP::Reference::ByteSizeLong(*(a1 + 216));
  v44 += v55 + ((9 * (__clz(v55 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v50 & 0x10) == 0)
  {
LABEL_51:
    if ((v50 & 0x20) == 0)
    {
      goto LABEL_52;
    }

LABEL_67:
    v57 = *(a1 + 232);
    v58 = ((9 * (__clz(v57 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if (v57 >= 0)
    {
      v59 = v58;
    }

    else
    {
      v59 = 11;
    }

    v44 += v59;
    if ((v50 & 0x40) == 0)
    {
LABEL_53:
      if ((v50 & 0x80) == 0)
      {
        goto LABEL_55;
      }

      goto LABEL_54;
    }

    goto LABEL_71;
  }

LABEL_66:
  v56 = sub_275FA0EB4(*(a1 + 224));
  v44 += v56 + ((9 * (__clz(v56 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v50 & 0x20) != 0)
  {
    goto LABEL_67;
  }

LABEL_52:
  if ((v50 & 0x40) == 0)
  {
    goto LABEL_53;
  }

LABEL_71:
  v44 += ((9 * (__clz(*(a1 + 236) | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v50 & 0x80) != 0)
  {
LABEL_54:
    v44 += ((9 * (__clz(*(a1 + 240) | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_55:
  if ((v50 & 0x700) == 0)
  {
    goto LABEL_60;
  }

  if ((v50 & 0x100) != 0)
  {
    v60 = *(a1 + 244);
    v61 = ((9 * (__clz(v60 | 1) ^ 0x1F) + 73) >> 6) + 2;
    if (v60 >= 0)
    {
      v62 = v61;
    }

    else
    {
      v62 = 12;
    }

    v44 += v62;
    if ((v50 & 0x200) == 0)
    {
LABEL_58:
      if ((v50 & 0x400) == 0)
      {
        goto LABEL_60;
      }

      goto LABEL_59;
    }
  }

  else if ((v50 & 0x200) == 0)
  {
    goto LABEL_58;
  }

  v44 += ((9 * (__clz(*(a1 + 248) | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v50 & 0x400) != 0)
  {
LABEL_59:
    v44 += ((9 * (__clz(*(a1 + 252) | 1) ^ 0x1F) + 73) >> 6) + 2;
  }

LABEL_60:
  if (*(a1 + 8))
  {

    return google::protobuf::internal::ComputeUnknownFieldsSize();
  }

  else
  {
    *(a1 + 20) = v44;
    return v44;
  }
}

uint64_t sub_275F9DBD0(uint64_t a1, void *lpsrc)
{
  v4 = __dynamic_cast(lpsrc, MEMORY[0x277D80A98], &unk_288500880, 0);
  if (v4)
  {

    return sub_275F9DC78(a1, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, a1);
  }
}

uint64_t sub_275F9DC78(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 8);
  if (v4)
  {
    result = sub_275FB576C((result + 8), (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  v5 = *(a2 + 32);
  if (v5)
  {
    v6 = *(a2 + 40);
    v7 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((v3 + 24));
    result = sub_275FB5FE8((v3 + 24), v7, (v6 + 8), v5, **(v3 + 40) - *(v3 + 32));
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
    result = sub_275FB60A8((v3 + 48), v12, (v11 + 8), v10, **(v3 + 64) - *(v3 + 56));
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
    result = sub_275FB5808((v3 + 72), v17, (v16 + 8), v15, **(v3 + 88) - *(v3 + 80));
    v18 = *(v3 + 80) + v15;
    *(v3 + 80) = v18;
    v19 = *(v3 + 88);
    if (*v19 < v18)
    {
      *v19 = v18;
    }
  }

  v20 = *(a2 + 104);
  if (v20)
  {
    v21 = *(a2 + 112);
    v22 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((v3 + 96));
    result = sub_275FB6168((v3 + 96), v22, (v21 + 8), v20, **(v3 + 112) - *(v3 + 104));
    v23 = *(v3 + 104) + v20;
    *(v3 + 104) = v23;
    v24 = *(v3 + 112);
    if (*v24 < v23)
    {
      *v24 = v23;
    }
  }

  v25 = *(a2 + 128);
  if (v25)
  {
    v26 = *(a2 + 136);
    v27 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((v3 + 120));
    result = sub_275FB5808((v3 + 120), v27, (v26 + 8), v25, **(v3 + 136) - *(v3 + 128));
    v28 = *(v3 + 128) + v25;
    *(v3 + 128) = v28;
    v29 = *(v3 + 136);
    if (*v29 < v28)
    {
      *v29 = v28;
    }
  }

  v30 = *(a2 + 152);
  if (v30)
  {
    v31 = *(a2 + 160);
    v32 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((v3 + 144));
    result = sub_275FB5FE8((v3 + 144), v32, (v31 + 8), v30, **(v3 + 160) - *(v3 + 152));
    v33 = *(v3 + 152) + v30;
    *(v3 + 152) = v33;
    v34 = *(v3 + 160);
    if (*v34 < v33)
    {
      *v34 = v33;
    }
  }

  v35 = *(a2 + 176);
  if (v35)
  {
    v36 = *(a2 + 184);
    v37 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((v3 + 168));
    result = sub_275FB6228((v3 + 168), v37, (v36 + 8), v35, **(v3 + 184) - *(v3 + 176));
    v38 = *(v3 + 176) + v35;
    *(v3 + 176) = v38;
    v39 = *(v3 + 184);
    if (*v39 < v38)
    {
      *v39 = v38;
    }
  }

  v40 = *(a2 + 16);
  if (v40)
  {
    v41 = MEMORY[0x277D809F8];
    if (v40)
    {
      *(v3 + 16) |= 1u;
      v42 = *(v3 + 192);
      if (!v42)
      {
        v43 = *(v3 + 8);
        if (v43)
        {
          v43 = *(v43 & 0xFFFFFFFFFFFFFFFELL);
        }

        v42 = MEMORY[0x277C92D40](v43);
        *(v3 + 192) = v42;
      }

      if (*(a2 + 192))
      {
        v44 = *(a2 + 192);
      }

      else
      {
        v44 = v41;
      }

      result = TSP::Range::MergeFrom(v42, v44);
    }

    if ((v40 & 2) != 0)
    {
      *(v3 + 16) |= 2u;
      v45 = *(v3 + 200);
      if (!v45)
      {
        v46 = *(v3 + 8);
        if (v46)
        {
          v46 = *(v46 & 0xFFFFFFFFFFFFFFFELL);
        }

        v45 = MEMORY[0x277C92D40](v46);
        *(v3 + 200) = v45;
      }

      if (*(a2 + 200))
      {
        v47 = *(a2 + 200);
      }

      else
      {
        v47 = v41;
      }

      result = TSP::Range::MergeFrom(v45, v47);
    }

    v48 = MEMORY[0x277D80A18];
    if ((v40 & 4) != 0)
    {
      *(v3 + 16) |= 4u;
      v49 = *(v3 + 208);
      if (!v49)
      {
        v50 = *(v3 + 8);
        if (v50)
        {
          v50 = *(v50 & 0xFFFFFFFFFFFFFFFELL);
        }

        v49 = MEMORY[0x277C92D60](v50);
        *(v3 + 208) = v49;
      }

      if (*(a2 + 208))
      {
        v51 = *(a2 + 208);
      }

      else
      {
        v51 = v48;
      }

      result = TSP::Reference::MergeFrom(v49, v51);
      if ((v40 & 8) == 0)
      {
LABEL_45:
        if ((v40 & 0x10) == 0)
        {
          goto LABEL_46;
        }

        goto LABEL_74;
      }
    }

    else if ((v40 & 8) == 0)
    {
      goto LABEL_45;
    }

    *(v3 + 16) |= 8u;
    v52 = *(v3 + 216);
    if (!v52)
    {
      v53 = *(v3 + 8);
      if (v53)
      {
        v53 = *(v53 & 0xFFFFFFFFFFFFFFFELL);
      }

      v52 = MEMORY[0x277C92D60](v53);
      *(v3 + 216) = v52;
    }

    if (*(a2 + 216))
    {
      v54 = *(a2 + 216);
    }

    else
    {
      v54 = v48;
    }

    result = TSP::Reference::MergeFrom(v52, v54);
    if ((v40 & 0x10) == 0)
    {
LABEL_46:
      if ((v40 & 0x20) == 0)
      {
        goto LABEL_47;
      }

      goto LABEL_82;
    }

LABEL_74:
    *(v3 + 16) |= 0x10u;
    v55 = *(v3 + 224);
    if (!v55)
    {
      v56 = *(v3 + 8);
      if (v56)
      {
        v56 = *(v56 & 0xFFFFFFFFFFFFFFFELL);
      }

      v55 = sub_275FAFB4C(v56);
      *(v3 + 224) = v55;
    }

    if (*(a2 + 224))
    {
      v57 = *(a2 + 224);
    }

    else
    {
      v57 = &unk_2812F8DA0;
    }

    result = sub_275F9E144(v55, v57);
    if ((v40 & 0x20) == 0)
    {
LABEL_47:
      if ((v40 & 0x40) == 0)
      {
        goto LABEL_48;
      }

      goto LABEL_83;
    }

LABEL_82:
    *(v3 + 232) = *(a2 + 232);
    if ((v40 & 0x40) == 0)
    {
LABEL_48:
      if ((v40 & 0x80) == 0)
      {
LABEL_50:
        *(v3 + 16) |= v40;
        goto LABEL_51;
      }

LABEL_49:
      *(v3 + 240) = *(a2 + 240);
      goto LABEL_50;
    }

LABEL_83:
    *(v3 + 236) = *(a2 + 236);
    if ((v40 & 0x80) == 0)
    {
      goto LABEL_50;
    }

    goto LABEL_49;
  }

LABEL_51:
  if ((v40 & 0x700) == 0)
  {
    return result;
  }

  if ((v40 & 0x100) == 0)
  {
    if ((v40 & 0x200) == 0)
    {
      goto LABEL_54;
    }

LABEL_86:
    *(v3 + 248) = *(a2 + 248);
    if ((v40 & 0x400) == 0)
    {
      goto LABEL_56;
    }

    goto LABEL_55;
  }

  *(v3 + 244) = *(a2 + 244);
  if ((v40 & 0x200) != 0)
  {
    goto LABEL_86;
  }

LABEL_54:
  if ((v40 & 0x400) != 0)
  {
LABEL_55:
    *(v3 + 252) = *(a2 + 252);
  }

LABEL_56:
  *(v3 + 16) |= v40;
  return result;
}

uint64_t sub_275F9E144(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 8);
  if (v4)
  {
    result = sub_275FB576C((result + 8), (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  v5 = *(a2 + 24);
  if (v5)
  {
    v6 = *(a2 + 32);
    v7 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((v3 + 16));
    result = sub_275FB6608((v3 + 16), v7, (v6 + 8), v5, **(v3 + 32) - *(v3 + 24));
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

google::protobuf::UnknownFieldSet *sub_275F9E1E4(google::protobuf::UnknownFieldSet *result, google::protobuf::UnknownFieldSet *a2)
{
  if (a2 != result)
  {
    v4 = result;
    sub_275F9BE10(result);

    return sub_275F9DBD0(v4, a2);
  }

  return result;
}

BOOL sub_275F9E230(uint64_t a1)
{
  v2 = *(a1 + 32);
  while (v2 >= 1)
  {
    v3 = v2 - 1;
    v4 = sub_275F9BA48(*(*(a1 + 40) + 8 * v2));
    v2 = v3;
    if ((v4 & 1) == 0)
    {
      return 0;
    }
  }

  v5 = *(a1 + 56);
  while (v5 >= 1)
  {
    v6 = v5 - 1;
    v7 = sub_275F9A49C(*(*(a1 + 64) + 8 * v5));
    v5 = v6;
    if ((v7 & 1) == 0)
    {
      return 0;
    }
  }

  v8 = *(a1 + 80);
  while (v8 >= 1)
  {
    v9 = v8 - 1;
    IsInitialized = TSP::Reference::IsInitialized(*(*(a1 + 88) + 8 * v8));
    v8 = v9;
    if ((IsInitialized & 1) == 0)
    {
      return 0;
    }
  }

  v11 = *(a1 + 104);
  while (v11 >= 1)
  {
    v12 = v11 - 1;
    v13 = TSP::UUID::IsInitialized(*(*(a1 + 112) + 8 * v11));
    v11 = v12;
    if ((v13 & 1) == 0)
    {
      return 0;
    }
  }

  v14 = *(a1 + 128);
  while (v14 >= 1)
  {
    v15 = v14 - 1;
    v16 = TSP::Reference::IsInitialized(*(*(a1 + 136) + 8 * v14));
    v14 = v15;
    if ((v16 & 1) == 0)
    {
      return 0;
    }
  }

  v17 = *(a1 + 152);
  while (v17 >= 1)
  {
    v18 = v17 - 1;
    v19 = sub_275F9BA48(*(*(a1 + 160) + 8 * v17));
    v20 = 0;
    v17 = v18;
    if ((v19 & 1) == 0)
    {
      return v20;
    }
  }

  if (!sub_275F9E3F0(a1 + 168))
  {
    return 0;
  }

  v21 = *(a1 + 16);
  if (v21)
  {
    if (!TSP::Range::IsInitialized(*(a1 + 192)))
    {
      return 0;
    }

    v21 = *(a1 + 16);
  }

  if ((v21 & 2) != 0)
  {
    if (!TSP::Range::IsInitialized(*(a1 + 200)))
    {
      return 0;
    }

    v21 = *(a1 + 16);
  }

  if ((v21 & 4) != 0)
  {
    if (!TSP::Reference::IsInitialized(*(a1 + 208)))
    {
      return 0;
    }

    v21 = *(a1 + 16);
  }

  if ((v21 & 8) == 0)
  {
    goto LABEL_38;
  }

  if (!TSP::Reference::IsInitialized(*(a1 + 216)))
  {
    return 0;
  }

  v21 = *(a1 + 16);
LABEL_38:
  if ((v21 & 0x10) == 0)
  {
    return 1;
  }

  v23 = *(a1 + 224);
  v24 = *(v23 + 24);
  do
  {
    v20 = v24 < 1;
    if (v24 < 1)
    {
      break;
    }

    v25 = v24 - 1;
    v26 = sub_275FA0A40(*(*(v23 + 32) + 8 * v24));
    v24 = v25;
  }

  while ((v26 & 1) != 0);
  return v20;
}

uint64_t sub_275F9E3F0(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 1)
  {
    do
    {
      v3 = v1--;
      v4 = *(*(a1 + 16) + 8 * v1 + 8);
      v5 = *(v4 + 24);
      while (v5 >= 1)
      {
        v6 = v5 - 1;
        v7 = sub_275FA0A40(*(*(v4 + 32) + 8 * v5));
        v5 = v6;
        if ((v7 & 1) == 0)
        {
          return 0;
        }
      }
    }

    while (v3 >= 2);
  }

  return 1;
}

BOOL sub_275F9E47C(uint64_t a1)
{
  v2 = *(a1 + 24);
  do
  {
    v3 = v2;
    if (v2 < 1)
    {
      break;
    }

    v4 = v2 - 1;
    v5 = sub_275FA0A40(*(*(a1 + 32) + 8 * v2));
    v2 = v4;
  }

  while ((v5 & 1) != 0);
  return v3 < 1;
}

uint64_t sub_275F9E50C(uint64_t result, uint64_t a2)
{
  *result = &unk_2884FF6F0;
  *(result + 8) = a2;
  *(result + 16) = 0;
  return result;
}

void sub_275F9E560(uint64_t a1)
{
  sub_275F8A514((a1 + 8));

  JUMPOUT(0x277C93390);
}

uint64_t *sub_275F9E5B8()
{
  if (atomic_load_explicit(dword_2812F8190, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &qword_2812F8CC8;
}

uint64_t *sub_275F9E5F8(uint64_t a1)
{
  v2 = *(a1 + 8);
  result = (a1 + 8);
  if (v2)
  {
    return sub_275FB57B8(result);
  }

  return result;
}

const google::protobuf::UnknownFieldSet *sub_275F9E608(uint64_t a1, const google::protobuf::UnknownFieldSet *a2, unsigned __int8 *a3, google::protobuf::io::EpsCopyOutputStream *a4)
{
  v4 = *(a1 + 8);
  if (v4)
  {
    return google::protobuf::internal::WireFormat::InternalSerializeUnknownFieldsToArray(((v4 & 0xFFFFFFFFFFFFFFFELL) + 8), a2, a3, a4);
  }

  else
  {
    return a2;
  }
}

uint64_t sub_275F9E624(uint64_t a1)
{
  v2 = *(a1 + 8);
  v1 = a1 + 8;
  if (v2)
  {
    return google::protobuf::internal::ComputeUnknownFieldsSize();
  }

  *(v1 + 8) = 0;
  return 0;
}

void *sub_275F9E644(uint64_t a1, void *lpsrc)
{
  result = __dynamic_cast(lpsrc, MEMORY[0x277D80A98], &unk_288500898, 0);
  if (result)
  {
    v5 = result[1];
    if (v5)
    {

      return sub_275FB576C((a1 + 8), (v5 & 0xFFFFFFFFFFFFFFFELL) + 8);
    }
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, a1);
  }

  return result;
}

_BYTE *sub_275F9E704(_BYTE *result, _BYTE *lpsrc)
{
  if (lpsrc != result)
  {
    v4 = result;
    v6 = result[8];
    v5 = (result + 8);
    if (v6)
    {
      sub_275FB57B8(v5);
    }

    return sub_275F9E644(v4, lpsrc);
  }

  return result;
}

uint64_t sub_275F9E798(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_2884FF7A0;
  *(a1 + 8) = a2;
  *(a1 + 24) = a2;
  *(a1 + 16) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  if (atomic_load_explicit(dword_2812F8290, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(a1 + 48) = 0;
  return a1;
}

uint64_t sub_275F9E824(uint64_t a1)
{
  sub_275F8A514((a1 + 8));
  sub_275FB62E8((a1 + 24));
  return a1;
}

void sub_275F9E864(uint64_t a1)
{
  sub_275F9E824(a1);

  JUMPOUT(0x277C93390);
}

google::protobuf::UnknownFieldSet *sub_275F9E8A4(google::protobuf::UnknownFieldSet *result)
{
  v1 = result;
  v2 = *(result + 8);
  if (v2 >= 1)
  {
    v3 = (*(result + 5) + 8);
    do
    {
      v4 = *v3++;
      result = sub_275F9BE10(v4);
      --v2;
    }

    while (v2);
    *(v1 + 32) = 0;
  }

  v6 = *(v1 + 8);
  v5 = v1 + 8;
  *(v5 + 40) = 0;
  *(v5 + 8) = 0;
  if (v6)
  {

    return sub_275FB57B8(v5);
  }

  return result;
}

google::protobuf::internal *sub_275F9E928(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v27 = a2;
  v5 = 0;
  if ((sub_275FB1588(a3, &v27, *(a3 + 92)) & 1) == 0)
  {
    while (1)
    {
      v7 = (v27 + 1);
      v8 = *v27;
      if ((*v27 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if ((*v7 & 0x80000000) == 0)
      {
        break;
      }

      TagFallback = google::protobuf::internal::ReadTagFallback(v27, (v9 - 128));
      v27 = TagFallback;
      if (!TagFallback)
      {
        goto LABEL_44;
      }

      v7 = TagFallback;
      v8 = v24;
LABEL_7:
      if (v8 >> 3 != 2)
      {
        if (v8 >> 3 != 1 || v8 != 10)
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
            sub_275FB5524((a1 + 8));
          }

          v27 = google::protobuf::internal::UnknownFieldParse();
          if (!v27)
          {
LABEL_44:
            v27 = 0;
            goto LABEL_2;
          }

          goto LABEL_25;
        }

        v15 = (v7 - 1);
        while (2)
        {
          v16 = (v15 + 1);
          v27 = (v15 + 1);
          v17 = *(a1 + 40);
          if (!v17)
          {
LABEL_29:
            google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 24));
            v17 = *(a1 + 40);
            v18 = *v17;
            goto LABEL_30;
          }

          v22 = *(a1 + 32);
          v18 = *v17;
          if (v22 >= *v17)
          {
            if (v18 == *(a1 + 36))
            {
              goto LABEL_29;
            }

LABEL_30:
            *v17 = v18 + 1;
            v19 = sub_275FAF7F8(*(a1 + 24));
            v20 = *(a1 + 32);
            v21 = *(a1 + 40) + 8 * v20;
            *(a1 + 32) = v20 + 1;
            *(v21 + 8) = v19;
            v16 = v27;
          }

          else
          {
            *(a1 + 32) = v22 + 1;
            v19 = *&v17[2 * v22 + 2];
          }

          v15 = sub_2760356FC(a3, v19, v16);
          v27 = v15;
          if (!v15)
          {
            goto LABEL_44;
          }

          if (*a3 <= v15 || *v15 != 10)
          {
            goto LABEL_25;
          }

          continue;
        }
      }

      if (v8 != 16)
      {
        goto LABEL_12;
      }

      v12 = (v7 + 1);
      LODWORD(v13) = *v7;
      if ((*v7 & 0x80000000) == 0)
      {
        goto LABEL_24;
      }

      v14 = *v12;
      v13 = (v13 + (v14 << 7) - 128);
      if ((v14 & 0x80000000) == 0)
      {
        v12 = (v7 + 2);
LABEL_24:
        v27 = v12;
        *(a1 + 48) = v13;
        v5 = 1;
        goto LABEL_25;
      }

      v25 = google::protobuf::internal::VarintParseSlow32(v7, v13);
      v27 = v25;
      *(a1 + 48) = v26;
      v5 = 1;
      if (!v25)
      {
        goto LABEL_44;
      }

LABEL_25:
      if (sub_275FB1588(a3, &v27, *(a3 + 92)))
      {
        goto LABEL_2;
      }
    }

    v7 = (v27 + 2);
LABEL_6:
    v27 = v7;
    goto LABEL_7;
  }

LABEL_2:
  *(a1 + 16) |= v5;
  return v27;
}

unsigned __int8 *sub_275F9EB80(uint64_t a1, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3, google::protobuf::io::EpsCopyOutputStream *a4)
{
  v6 = *(a1 + 32);
  if (v6)
  {
    for (i = 0; i != v6; ++i)
    {
      if (*a3 <= a2)
      {
        a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      }

      v8 = *(*(a1 + 40) + 8 * i + 8);
      *a2 = 10;
      v9 = *(v8 + 20);
      if (v9 > 0x7F)
      {
        a2[1] = v9 | 0x80;
        v11 = v9 >> 7;
        if (v9 >> 14)
        {
          v10 = a2 + 3;
          do
          {
            *(v10 - 1) = v11 | 0x80;
            v12 = v11 >> 7;
            ++v10;
            v13 = v11 >> 14;
            v11 >>= 7;
          }

          while (v13);
          *(v10 - 1) = v12;
        }

        else
        {
          a2[2] = v11;
          v10 = a2 + 3;
        }
      }

      else
      {
        a2[1] = v9;
        v10 = a2 + 2;
      }

      a2 = sub_275F9CB64(v8, v10, a3, a4);
    }
  }

  if (*(a1 + 16))
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v14 = *(a1 + 48);
    *a2 = 16;
    if (v14 > 0x7F)
    {
      a2[1] = v14 | 0x80;
      v15 = v14 >> 7;
      if (v14 >> 14)
      {
        a2 += 3;
        do
        {
          *(a2 - 1) = v15 | 0x80;
          v16 = v15 >> 7;
          ++a2;
          v17 = v15 >> 14;
          v15 >>= 7;
        }

        while (v17);
        *(a2 - 1) = v16;
      }

      else
      {
        a2[2] = v15;
        a2 += 3;
      }
    }

    else
    {
      a2[1] = v14;
      a2 += 2;
    }
  }

  v18 = *(a1 + 8);
  if ((v18 & 1) == 0)
  {
    return a2;
  }

  return google::protobuf::internal::WireFormat::InternalSerializeUnknownFieldsToArray(((v18 & 0xFFFFFFFFFFFFFFFELL) + 8), a2, a3, a4);
}

uint64_t sub_275F9ED2C(uint64_t a1)
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
      v7 = sub_275F9D700(v6);
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
    v2 += ((9 * (__clz(*(a1 + 48) | 1) ^ 0x1F) + 73) >> 6) + 1;
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

uint64_t sub_275F9EE10(uint64_t a1, void *lpsrc)
{
  v4 = __dynamic_cast(lpsrc, MEMORY[0x277D80A98], &unk_2885008B0, 0);
  if (v4)
  {

    return sub_275F9EEB8(a1, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, a1);
  }
}

uint64_t sub_275F9EEB8(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 8);
  if (v4)
  {
    result = sub_275FB576C((result + 8), (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  v5 = *(a2 + 32);
  if (v5)
  {
    v6 = *(a2 + 40);
    v7 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((v3 + 24));
    result = sub_275FB636C((v3 + 24), v7, (v6 + 8), v5, **(v3 + 40) - *(v3 + 32));
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
    *(v3 + 48) = v10;
  }

  return result;
}

google::protobuf::UnknownFieldSet *sub_275F9EF74(google::protobuf::UnknownFieldSet *result, google::protobuf::UnknownFieldSet *a2)
{
  if (a2 != result)
  {
    v4 = result;
    sub_275F9E8A4(result);

    return sub_275F9EE10(v4, a2);
  }

  return result;
}

BOOL sub_275F9EFC0(uint64_t a1)
{
  v2 = *(a1 + 32);
  do
  {
    v3 = v2;
    if (v2 < 1)
    {
      break;
    }

    v4 = v2 - 1;
    v5 = sub_275F9E230(*(*(a1 + 40) + 8 * v2));
    v2 = v4;
  }

  while (v5);
  return v3 < 1;
}

uint64_t *sub_275F9F050(uint64_t *a1)
{
  if (a1 != &qword_2812F8D18)
  {
    v2 = a1[3];
    if (v2)
    {
      TSP::Range::~Range(v2);
      MEMORY[0x277C93390]();
    }

    v3 = a1[4];
    if (v3)
    {
      TSP::Size::~Size(v3);
      MEMORY[0x277C93390]();
    }
  }

  sub_275F8A514(a1 + 1);
  return a1;
}

void sub_275F9F0CC(uint64_t *a1)
{
  sub_275F9F050(a1);

  JUMPOUT(0x277C93390);
}

google::protobuf::UnknownFieldSet *sub_275F9F10C(google::protobuf::UnknownFieldSet *result)
{
  v1 = result;
  v2 = *(result + 4);
  if ((v2 & 3) != 0)
  {
    if (v2)
    {
      result = TSP::Range::Clear(*(result + 3));
    }

    if ((v2 & 2) != 0)
    {
      result = TSP::Size::Clear(*(v1 + 32));
    }
  }

  v4 = *(v1 + 8);
  v3 = v1 + 8;
  *(v3 + 8) = 0;
  if (v4)
  {

    return sub_275FB57B8(v3);
  }

  return result;
}

google::protobuf::internal *sub_275F9F17C(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v19 = a2;
  for (i = *(a3 + 92); (sub_275FB1588(a3, &v19, i) & 1) == 0; i = *(a3 + 92))
  {
    v6 = (v19 + 1);
    v7 = *v19;
    if ((*v19 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    v8 = v7 + (*v6 << 7);
    v7 = v8 - 128;
    if ((*v6 & 0x80000000) == 0)
    {
      v6 = (v19 + 2);
LABEL_6:
      v19 = v6;
      goto LABEL_7;
    }

    TagFallback = google::protobuf::internal::ReadTagFallback(v19, (v8 - 128));
    v19 = TagFallback;
    if (!TagFallback)
    {
      return 0;
    }

    v6 = TagFallback;
    v7 = v17;
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

          v12 = MEMORY[0x277C92D10](v13);
          *(a1 + 32) = v12;
          v6 = v19;
        }

        v11 = sub_27603513C(a3, v12, v6);
        goto LABEL_30;
      }
    }

    else if (v7 >> 3 == 1 && v7 == 10)
    {
      *(a1 + 16) |= 1u;
      v14 = *(a1 + 24);
      if (!v14)
      {
        v15 = *(a1 + 8);
        if (v15)
        {
          v15 = *(v15 & 0xFFFFFFFFFFFFFFFELL);
        }

        v14 = MEMORY[0x277C92D40](v15);
        *(a1 + 24) = v14;
        v6 = v19;
      }

      v11 = sub_27603520C(a3, v14, v6);
      goto LABEL_30;
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
      return v19;
    }

    if ((*(a1 + 8) & 1) == 0)
    {
      sub_275FB5524((a1 + 8));
    }

    v11 = google::protobuf::internal::UnknownFieldParse();
LABEL_30:
    v19 = v11;
    if (!v11)
    {
      return 0;
    }
  }

  return v19;
}

unsigned __int8 *sub_275F9F328(uint64_t a1, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3, google::protobuf::io::EpsCopyOutputStream *a4)
{
  v6 = *(a1 + 16);
  if (v6)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v7 = *(a1 + 24);
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

    a2 = TSP::Range::_InternalSerialize(v7, v9, a3);
  }

  if ((v6 & 2) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v13 = *(a1 + 32);
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

    a2 = TSP::Size::_InternalSerialize(v13, v15, a3);
  }

  v19 = *(a1 + 8);
  if ((v19 & 1) == 0)
  {
    return a2;
  }

  return google::protobuf::internal::WireFormat::InternalSerializeUnknownFieldsToArray(((v19 & 0xFFFFFFFFFFFFFFFELL) + 8), a2, a3, a4);
}

uint64_t sub_275F9F4B8(uint64_t a1)
{
  v2 = *(a1 + 16);
  if ((v2 & 1) == 0)
  {
    v3 = 0;
    if ((v2 & 2) == 0)
    {
      return v3;
    }

    goto LABEL_5;
  }

  v4 = TSP::Range::ByteSizeLong(*(a1 + 24));
  v3 = v4 + ((9 * (__clz(v4 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((*(a1 + 16) & 2) != 0)
  {
LABEL_5:
    v5 = TSP::Size::ByteSizeLong(*(a1 + 32));
    v3 += v5 + ((9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  return v3;
}

uint64_t sub_275F9F54C(uint64_t a1)
{
  if ((~*(a1 + 16) & 3) != 0)
  {
    v4 = sub_275F9F4B8(a1);
  }

  else
  {
    v2 = TSP::Range::ByteSizeLong(*(a1 + 24));
    v3 = TSP::Size::ByteSizeLong(*(a1 + 32));
    v4 = v2 + v3 + ((9 * (__clz(v2 | 1) ^ 0x1F) + 73) >> 6) + ((9 * (__clz(v3 | 1) ^ 0x1F) + 73) >> 6) + 2;
  }

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

uint64_t sub_275F9F620(uint64_t a1, void *lpsrc)
{
  v4 = __dynamic_cast(lpsrc, MEMORY[0x277D80A98], &unk_2885008C8, 0);
  if (v4)
  {

    return sub_275F9F6C8(a1, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, a1);
  }
}

uint64_t sub_275F9F6C8(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 8);
  if (v4)
  {
    result = sub_275FB576C((result + 8), (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
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

        v6 = MEMORY[0x277C92D40](v7);
        *(v3 + 24) = v6;
      }

      if (*(a2 + 24))
      {
        v8 = *(a2 + 24);
      }

      else
      {
        v8 = MEMORY[0x277D809F8];
      }

      result = TSP::Range::MergeFrom(v6, v8);
    }

    if ((v5 & 2) != 0)
    {
      *(v3 + 16) |= 2u;
      v9 = *(v3 + 32);
      if (!v9)
      {
        v10 = *(v3 + 8);
        if (v10)
        {
          v10 = *(v10 & 0xFFFFFFFFFFFFFFFELL);
        }

        v9 = MEMORY[0x277C92D10](v10);
        *(v3 + 32) = v9;
      }

      if (*(a2 + 32))
      {
        v11 = *(a2 + 32);
      }

      else
      {
        v11 = MEMORY[0x277D809D8];
      }

      return TSP::Size::MergeFrom(v9, v11);
    }
  }

  return result;
}

google::protobuf::UnknownFieldSet *sub_275F9F7CC(google::protobuf::UnknownFieldSet *result, google::protobuf::UnknownFieldSet *a2)
{
  if (a2 != result)
  {
    v4 = result;
    sub_275F9F10C(result);

    return sub_275F9F620(v4, a2);
  }

  return result;
}

uint64_t sub_275F9F818(uint64_t a1)
{
  if ((~*(a1 + 16) & 3) != 0)
  {
    return 0;
  }

  result = TSP::Range::IsInitialized(*(a1 + 24));
  if (result)
  {
    if ((*(a1 + 16) & 2) == 0)
    {
      return 1;
    }

    result = TSP::Size::IsInitialized(*(a1 + 32));
    if (result)
    {
      return 1;
    }
  }

  return result;
}

void sub_275F9F8E0(uint64_t a1)
{
  sub_275F8A514((a1 + 8));

  JUMPOUT(0x277C93390);
}

google::protobuf::UnknownFieldSet *sub_275F9F938(uint64_t a1)
{
  if ((*(a1 + 16) & 0xF) != 0)
  {
    *(a1 + 29) = 0;
    *(a1 + 24) = 0;
  }

  v2 = *(a1 + 8);
  result = (a1 + 8);
  *(result + 2) = 0;
  if (v2)
  {
    return sub_275FB57B8(result);
  }

  return result;
}

google::protobuf::internal *sub_275F9F960(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v35 = a2;
  v5 = 0;
  if ((sub_275FB1588(a3, &v35, *(a3 + 92)) & 1) == 0)
  {
    while (1)
    {
      v7 = (v35 + 1);
      v8 = *v35;
      if ((*v35 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if ((*v7 & 0x80000000) == 0)
      {
        break;
      }

      TagFallback = google::protobuf::internal::ReadTagFallback(v35, (v9 - 128));
      v35 = TagFallback;
      if (!TagFallback)
      {
        goto LABEL_55;
      }

      v7 = TagFallback;
      v8 = v26;
LABEL_7:
      v10 = v8 >> 3;
      if (v8 >> 3 > 2)
      {
        if (v10 == 3)
        {
          if (v8 != 24)
          {
            goto LABEL_35;
          }

          v5 |= 4u;
          v21 = (v7 + 1);
          LODWORD(v22) = *v7;
          if ((*v7 & 0x80000000) == 0)
          {
            goto LABEL_34;
          }

          v23 = *v21;
          v22 = (v22 + (v23 << 7) - 128);
          if ((v23 & 0x80000000) == 0)
          {
            v21 = (v7 + 2);
LABEL_34:
            v35 = v21;
            *(a1 + 32) = v22;
            goto LABEL_42;
          }

          v33 = google::protobuf::internal::VarintParseSlow32(v7, v22);
          v35 = v33;
          *(a1 + 32) = v34;
          if (!v33)
          {
            goto LABEL_55;
          }
        }

        else
        {
          if (v10 != 4 || v8 != 32)
          {
            goto LABEL_35;
          }

          v5 |= 8u;
          v16 = (v7 + 1);
          v15 = *v7;
          if ((v15 & 0x8000000000000000) == 0)
          {
            goto LABEL_24;
          }

          v17 = *v16;
          v15 = (v17 << 7) + v15 - 128;
          if ((v17 & 0x80000000) == 0)
          {
            v16 = (v7 + 2);
LABEL_24:
            v35 = v16;
            *(a1 + 36) = v15 != 0;
            goto LABEL_42;
          }

          v27 = google::protobuf::internal::VarintParseSlow64(v7, v15);
          v35 = v27;
          *(a1 + 36) = v28 != 0;
          if (!v27)
          {
            goto LABEL_55;
          }
        }
      }

      else if (v10 == 1)
      {
        if (v8 != 8)
        {
          goto LABEL_35;
        }

        v5 |= 1u;
        v18 = (v7 + 1);
        LODWORD(v19) = *v7;
        if ((*v7 & 0x80000000) == 0)
        {
          goto LABEL_29;
        }

        v20 = *v18;
        v19 = (v19 + (v20 << 7) - 128);
        if ((v20 & 0x80000000) == 0)
        {
          v18 = (v7 + 2);
LABEL_29:
          v35 = v18;
          *(a1 + 24) = v19;
          goto LABEL_42;
        }

        v31 = google::protobuf::internal::VarintParseSlow32(v7, v19);
        v35 = v31;
        *(a1 + 24) = v32;
        if (!v31)
        {
          goto LABEL_55;
        }
      }

      else
      {
        if (v10 != 2 || v8 != 16)
        {
LABEL_35:
          if (v8)
          {
            v24 = (v8 & 7) == 4;
          }

          else
          {
            v24 = 1;
          }

          if (v24)
          {
            *(a3 + 80) = v8 - 1;
            goto LABEL_2;
          }

          if ((*(a1 + 8) & 1) == 0)
          {
            sub_275FB5524((a1 + 8));
          }

          v35 = google::protobuf::internal::UnknownFieldParse();
          if (!v35)
          {
LABEL_55:
            v35 = 0;
            goto LABEL_2;
          }

          goto LABEL_42;
        }

        v5 |= 2u;
        v12 = (v7 + 1);
        LODWORD(v13) = *v7;
        if ((*v7 & 0x80000000) == 0)
        {
          goto LABEL_17;
        }

        v14 = *v12;
        v13 = (v13 + (v14 << 7) - 128);
        if ((v14 & 0x80000000) == 0)
        {
          v12 = (v7 + 2);
LABEL_17:
          v35 = v12;
          *(a1 + 28) = v13;
          goto LABEL_42;
        }

        v29 = google::protobuf::internal::VarintParseSlow32(v7, v13);
        v35 = v29;
        *(a1 + 28) = v30;
        if (!v29)
        {
          goto LABEL_55;
        }
      }

LABEL_42:
      if (sub_275FB1588(a3, &v35, *(a3 + 92)))
      {
        goto LABEL_2;
      }
    }

    v7 = (v35 + 2);
LABEL_6:
    v35 = v7;
    goto LABEL_7;
  }

LABEL_2:
  *(a1 + 16) |= v5;
  return v35;
}

unsigned __int8 *sub_275F9FC28(uint64_t a1, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3, google::protobuf::io::EpsCopyOutputStream *a4)
{
  v6 = *(a1 + 16);
  if ((v6 & 1) == 0)
  {
    if ((v6 & 2) == 0)
    {
      goto LABEL_3;
    }

LABEL_21:
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v14 = *(a1 + 28);
    *a2 = 16;
    if (v14 > 0x7F)
    {
      a2[1] = v14 | 0x80;
      v15 = v14 >> 7;
      if (v14 >> 14)
      {
        a2 += 3;
        do
        {
          *(a2 - 1) = v15 | 0x80;
          v16 = v15 >> 7;
          ++a2;
          v17 = v15 >> 14;
          v15 >>= 7;
        }

        while (v17);
        *(a2 - 1) = v16;
        if ((v6 & 4) != 0)
        {
          goto LABEL_32;
        }
      }

      else
      {
        a2[2] = v15;
        a2 += 3;
        if ((v6 & 4) != 0)
        {
          goto LABEL_32;
        }
      }
    }

    else
    {
      a2[1] = v14;
      a2 += 2;
      if ((v6 & 4) != 0)
      {
        goto LABEL_32;
      }
    }

LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_5;
  }

  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v10 = *(a1 + 24);
  *a2 = 8;
  if (v10 > 0x7F)
  {
    a2[1] = v10 | 0x80;
    v11 = v10 >> 7;
    if (v10 >> 14)
    {
      a2 += 3;
      do
      {
        *(a2 - 1) = v11 | 0x80;
        v12 = v11 >> 7;
        ++a2;
        v13 = v11 >> 14;
        v11 >>= 7;
      }

      while (v13);
      *(a2 - 1) = v12;
      if ((v6 & 2) != 0)
      {
        goto LABEL_21;
      }
    }

    else
    {
      a2[2] = v11;
      a2 += 3;
      if ((v6 & 2) != 0)
      {
        goto LABEL_21;
      }
    }
  }

  else
  {
    a2[1] = v10;
    a2 += 2;
    if ((v6 & 2) != 0)
    {
      goto LABEL_21;
    }
  }

LABEL_3:
  if ((v6 & 4) == 0)
  {
    goto LABEL_4;
  }

LABEL_32:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v18 = *(a1 + 32);
  *a2 = 24;
  if (v18 > 0x7F)
  {
    a2[1] = v18 | 0x80;
    v19 = v18 >> 7;
    if (v18 >> 14)
    {
      a2 += 3;
      do
      {
        *(a2 - 1) = v19 | 0x80;
        v20 = v19 >> 7;
        ++a2;
        v21 = v19 >> 14;
        v19 >>= 7;
      }

      while (v21);
      *(a2 - 1) = v20;
      if ((v6 & 8) == 0)
      {
        goto LABEL_8;
      }
    }

    else
    {
      a2[2] = v19;
      a2 += 3;
      if ((v6 & 8) == 0)
      {
        goto LABEL_8;
      }
    }
  }

  else
  {
    a2[1] = v18;
    a2 += 2;
    if ((v6 & 8) == 0)
    {
      goto LABEL_8;
    }
  }

LABEL_5:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v7 = *(a1 + 36);
  *a2 = 32;
  a2[1] = v7;
  a2 += 2;
LABEL_8:
  v8 = *(a1 + 8);
  if ((v8 & 1) == 0)
  {
    return a2;
  }

  return google::protobuf::internal::WireFormat::InternalSerializeUnknownFieldsToArray(((v8 & 0xFFFFFFFFFFFFFFFELL) + 8), a2, a3, a4);
}

uint64_t sub_275F9FE78(unsigned int *a1)
{
  v1 = a1[4];
  if (v1)
  {
    v2 = ((9 * (__clz(a1[6] | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v1 & 2) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v2 = 0;
  if ((v1 & 2) != 0)
  {
LABEL_5:
    v2 += ((9 * (__clz(a1[7] | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_6:
  if ((v1 & 4) != 0)
  {
    v2 += ((9 * (__clz(a1[8] | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  return v2 + ((v1 >> 2) & 2);
}

uint64_t sub_275F9FF0C(uint64_t a1)
{
  if ((~*(a1 + 16) & 0xF) != 0)
  {
    v3 = sub_275F9FE78(a1);
  }

  else
  {
    v2 = vshr_n_u32(vmla_s32(0x4900000049, veor_s8(vclz_s32((*(a1 + 28) | 0x100000001)), 0x1F0000001FLL), 0x900000009), 6uLL);
    v3 = v2.i32[0] + ((9 * (__clz(*(a1 + 24) | 1) ^ 0x1F) + 73) >> 6) + v2.i32[1] + 5;
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

uint64_t sub_275F9FFD0(uint64_t a1, void *lpsrc)
{
  v4 = __dynamic_cast(lpsrc, MEMORY[0x277D80A98], &unk_2885008E0, 0);
  if (v4)
  {

    return sub_275FA0078(a1, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, a1);
  }
}

uint64_t sub_275FA0078(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 8);
  if (v4)
  {
    result = sub_275FB576C((result + 8), (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  v5 = *(a2 + 16);
  if ((v5 & 0xF) != 0)
  {
    if (v5)
    {
      *(v3 + 24) = *(a2 + 24);
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

    else if ((v5 & 2) == 0)
    {
      goto LABEL_6;
    }

    *(v3 + 28) = *(a2 + 28);
    if ((v5 & 4) == 0)
    {
LABEL_7:
      if ((v5 & 8) == 0)
      {
LABEL_9:
        *(v3 + 16) |= v5;
        return result;
      }

LABEL_8:
      *(v3 + 36) = *(a2 + 36);
      goto LABEL_9;
    }

LABEL_13:
    *(v3 + 32) = *(a2 + 32);
    if ((v5 & 8) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  return result;
}

void *sub_275FA010C(void *result, void *a2)
{
  if (a2 != result)
  {
    v4 = result;
    sub_275F9F938(result);

    return sub_275F9FFD0(v4, a2);
  }

  return result;
}

void *sub_275FA01A4(void *a1, uint64_t a2)
{
  *a1 = &unk_2884FF9B0;
  a1[1] = a2;
  a1[3] = a2;
  a1[2] = 0;
  a1[4] = 0;
  a1[5] = 0;
  if (atomic_load_explicit(dword_2812F8458, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  a1[6] = 0;
  return a1;
}

void *sub_275FA0230(void *a1)
{
  if (a1 != qword_2812F8D68)
  {
    v2 = a1[6];
    if (v2)
    {
      TSP::Reference::~Reference(v2);
      MEMORY[0x277C93390]();
    }
  }

  sub_275F8A514(a1 + 1);
  sub_275FB642C(a1 + 3);
  return a1;
}

void sub_275FA02A0(void *a1)
{
  sub_275FA0230(a1);

  JUMPOUT(0x277C93390);
}

google::protobuf::UnknownFieldSet *sub_275FA02E0(google::protobuf::UnknownFieldSet *result)
{
  v1 = result;
  v2 = *(result + 8);
  if (v2 >= 1)
  {
    v3 = (*(result + 5) + 8);
    do
    {
      v4 = *v3++;
      result = sub_275F9F938(v4);
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

    return sub_275FB57B8(v5);
  }

  return result;
}

google::protobuf::internal *sub_275FA0370(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v25 = a2;
  for (i = *(a3 + 92); ; i = *(a3 + 92))
  {
    if (sub_275FB1588(a3, &v25, i))
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
    if (v7 >> 3 == 2)
    {
      break;
    }

    if (v7 >> 3 != 1 || v7 != 10)
    {
      goto LABEL_12;
    }

    *(a1 + 16) |= 1u;
    v20 = *(a1 + 48);
    if (!v20)
    {
      v21 = *(a1 + 8);
      if (v21)
      {
        v21 = *(v21 & 0xFFFFFFFFFFFFFFFELL);
      }

      v20 = MEMORY[0x277C92D60](v21);
      *(a1 + 48) = v20;
      v6 = v25;
    }

    v11 = sub_27603450C(a3, v20, v6);
LABEL_37:
    v25 = v11;
    if (!v11)
    {
      return 0;
    }

LABEL_38:
    ;
  }

  if (v7 == 18)
  {
    v12 = (v6 - 1);
    while (1)
    {
      v13 = (v12 + 1);
      v25 = (v12 + 1);
      v14 = *(a1 + 40);
      if (!v14)
      {
        goto LABEL_22;
      }

      v19 = *(a1 + 32);
      v15 = *v14;
      if (v19 < *v14)
      {
        *(a1 + 32) = v19 + 1;
        v16 = *&v14[2 * v19 + 2];
        goto LABEL_26;
      }

      if (v15 == *(a1 + 36))
      {
LABEL_22:
        google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 24));
        v14 = *(a1 + 40);
        v15 = *v14;
      }

      *v14 = v15 + 1;
      v16 = sub_275FAFA4C(*(a1 + 24));
      v17 = *(a1 + 32);
      v18 = *(a1 + 40) + 8 * v17;
      *(a1 + 32) = v17 + 1;
      *(v18 + 8) = v16;
      v13 = v25;
LABEL_26:
      v12 = sub_2760357CC(a3, v16, v13);
      v25 = v12;
      if (!v12)
      {
        return 0;
      }

      if (*a3 <= v12 || *v12 != 18)
      {
        goto LABEL_38;
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
      sub_275FB5524((a1 + 8));
    }

    v11 = google::protobuf::internal::UnknownFieldParse();
    goto LABEL_37;
  }

  *(a3 + 80) = v7 - 1;
  return v25;
}

unsigned __int8 *sub_275FA0594(uint64_t a1, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3, google::protobuf::io::EpsCopyOutputStream *a4)
{
  if (*(a1 + 16))
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v6 = *(a1 + 48);
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
  }

  v12 = *(a1 + 32);
  if (v12)
  {
    for (i = 0; i != v12; ++i)
    {
      if (*a3 <= a2)
      {
        a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      }

      v14 = *(*(a1 + 40) + 8 * i + 8);
      *a2 = 18;
      v15 = *(v14 + 20);
      if (v15 > 0x7F)
      {
        a2[1] = v15 | 0x80;
        v17 = v15 >> 7;
        if (v15 >> 14)
        {
          v16 = a2 + 3;
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
          a2[2] = v17;
          v16 = a2 + 3;
        }
      }

      else
      {
        a2[1] = v15;
        v16 = a2 + 2;
      }

      a2 = sub_275F9FC28(v14, v16, a3, a4);
    }
  }

  v20 = *(a1 + 8);
  if ((v20 & 1) == 0)
  {
    return a2;
  }

  return google::protobuf::internal::WireFormat::InternalSerializeUnknownFieldsToArray(((v20 & 0xFFFFFFFFFFFFFFFELL) + 8), a2, a3, a4);
}

uint64_t sub_275FA0750(uint64_t a1)
{
  if (*(a1 + 16))
  {
    v3 = TSP::Reference::ByteSizeLong(*(a1 + 48));
    v2 = v3 + ((9 * (__clz(v3 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  else
  {
    v2 = 0;
  }

  v4 = *(a1 + 32);
  v5 = v2 + v4;
  v6 = *(a1 + 40);
  if (v6)
  {
    v7 = (v6 + 8);
  }

  else
  {
    v7 = 0;
  }

  if (v4)
  {
    v8 = 8 * v4;
    do
    {
      v9 = *v7++;
      v10 = sub_275F9FF0C(v9);
      v5 += v10 + ((9 * (__clz(v10 | 1) ^ 0x1F) + 73) >> 6);
      v8 -= 8;
    }

    while (v8);
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

uint64_t sub_275FA083C(uint64_t a1, void *lpsrc)
{
  v4 = __dynamic_cast(lpsrc, MEMORY[0x277D80A98], &unk_2885008F8, 0);
  if (v4)
  {

    return sub_275FA08E4(a1, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, a1);
  }
}

uint64_t sub_275FA08E4(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 8);
  if (v4)
  {
    result = sub_275FB576C((result + 8), (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  v5 = *(a2 + 32);
  if (v5)
  {
    v6 = *(a2 + 40);
    v7 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((v3 + 24));
    result = sub_275FB64C4((v3 + 24), v7, (v6 + 8), v5, **(v3 + 40) - *(v3 + 32));
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

      v11 = MEMORY[0x277C92D60](v12);
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

google::protobuf::UnknownFieldSet *sub_275FA09F4(google::protobuf::UnknownFieldSet *result, google::protobuf::UnknownFieldSet *a2)
{
  if (a2 != result)
  {
    v4 = result;
    sub_275FA02E0(result);

    return sub_275FA083C(v4, a2);
  }

  return result;
}

uint64_t sub_275FA0A40(uint64_t a1)
{
  if ((*(a1 + 16) & 1) == 0)
  {
    return 0;
  }

  for (i = *(a1 + 32); i >= 1; --i)
  {
    v2 = *(*(a1 + 40) + 8 * i);
    if ((~*(v2 + 16) & 0xF) != 0)
    {
      return 0;
    }
  }

  return TSP::Reference::IsInitialized(*(a1 + 48));
}

uint64_t sub_275FA0AB8(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_2884FFA60;
  *(a1 + 8) = a2;
  *(a1 + 16) = a2;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  if (atomic_load_explicit(dword_2812F8498, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return a1;
}

uint64_t sub_275FA0B40(uint64_t a1)
{
  sub_275F8A514((a1 + 8));
  sub_275FB6584((a1 + 16));
  return a1;
}

void sub_275FA0B80(uint64_t a1)
{
  sub_275FA0B40(a1);

  JUMPOUT(0x277C93390);
}

google::protobuf::internal *sub_275FA0BC0(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v20 = a2;
  if ((sub_275FB1588(a3, &v20, *(a3 + 92)) & 1) == 0)
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
      if (v6 == 18)
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
          v13 = sub_275FAFAC0(*(a1 + 16));
          v14 = *(a1 + 24);
          v15 = *(a1 + 32) + 8 * v14;
          *(a1 + 24) = v14 + 1;
          *(v15 + 8) = v13;
          v10 = v20;
LABEL_22:
          v9 = sub_27603589C(a3, v13, v10);
          v20 = v9;
          if (!v9)
          {
            return 0;
          }

          if (*a3 <= v9 || *v9 != 18)
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
        sub_275FB5524((a1 + 8));
      }

      v20 = google::protobuf::internal::UnknownFieldParse();
      if (!v20)
      {
        return 0;
      }

LABEL_14:
      if (sub_275FB1588(a3, &v20, *(a3 + 92)))
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

unsigned __int8 *sub_275FA0D90(uint64_t a1, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3, google::protobuf::io::EpsCopyOutputStream *a4)
{
  v6 = *(a1 + 24);
  if (v6)
  {
    for (i = 0; i != v6; ++i)
    {
      if (*a3 <= a2)
      {
        a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      }

      v8 = *(*(a1 + 32) + 8 * i + 8);
      *a2 = 18;
      v9 = *(v8 + 20);
      if (v9 > 0x7F)
      {
        a2[1] = v9 | 0x80;
        v11 = v9 >> 7;
        if (v9 >> 14)
        {
          v10 = a2 + 3;
          do
          {
            *(v10 - 1) = v11 | 0x80;
            v12 = v11 >> 7;
            ++v10;
            v13 = v11 >> 14;
            v11 >>= 7;
          }

          while (v13);
          *(v10 - 1) = v12;
        }

        else
        {
          a2[2] = v11;
          v10 = a2 + 3;
        }
      }

      else
      {
        a2[1] = v9;
        v10 = a2 + 2;
      }

      a2 = sub_275FA0594(v8, v10, a3, a4);
    }
  }

  v14 = *(a1 + 8);
  if ((v14 & 1) == 0)
  {
    return a2;
  }

  return google::protobuf::internal::WireFormat::InternalSerializeUnknownFieldsToArray(((v14 & 0xFFFFFFFFFFFFFFFELL) + 8), a2, a3, a4);
}

uint64_t sub_275FA0EB4(uint64_t a1)
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
      v7 = sub_275FA0750(v6);
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

    return google::protobuf::internal::ComputeUnknownFieldsSize();
  }

  else
  {
    *(a1 + 40) = v2;
    return v2;
  }
}

uint64_t sub_275FA0F6C(uint64_t a1, void *lpsrc)
{
  v4 = __dynamic_cast(lpsrc, MEMORY[0x277D80A98], &unk_288500910, 0);
  if (v4)
  {

    return sub_275F9E144(a1, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, a1);
  }
}

google::protobuf::UnknownFieldSet *sub_275FA1014(google::protobuf::UnknownFieldSet *result, google::protobuf::UnknownFieldSet *a2)
{
  if (a2 != result)
  {
    v4 = result;
    sub_275F9BFFC(result);

    return sub_275FA0F6C(v4, a2);
  }

  return result;
}

void *sub_275FA1098(void *a1, uint64_t a2)
{
  *a1 = &unk_2884FFB10;
  a1[1] = a2;
  a1[2] = 0;
  a1[3] = a2;
  a1[6] = a2;
  a1[4] = 0;
  a1[5] = 0;
  a1[7] = 0;
  a1[8] = 0;
  if (atomic_load_explicit(dword_2812F80D0, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  a1[9] = 0;
  a1[10] = 0;
  a1[11] = 0;
  return a1;
}

void sub_275FA1124(_Unwind_Exception *a1)
{
  sub_275FB674C(v2);
  sub_275FB66C8(v1);
  _Unwind_Resume(a1);
}

uint64_t *sub_275FA114C(uint64_t *a1)
{
  sub_275F8A514(a1 + 1);
  sub_275FB674C(a1 + 6);
  sub_275FB66C8(a1 + 3);
  return a1;
}

void sub_275FA1198(uint64_t *a1)
{
  sub_275FA114C(a1);

  JUMPOUT(0x277C93390);
}

void *sub_275FA11D8()
{
  if (atomic_load_explicit(dword_2812F80D0, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &unk_2812F8DD0;
}

google::protobuf::UnknownFieldSet *sub_275FA1218(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2 >= 1)
  {
    v3 = (*(a1 + 40) + 8);
    do
    {
      v4 = *v3++;
      sub_275F9E8A4(v4);
      --v2;
    }

    while (v2);
    *(a1 + 32) = 0;
  }

  result = sub_275FB569C(a1 + 48);
  if ((*(a1 + 16) & 0x3F) != 0)
  {
    *(a1 + 72) = 0;
    *(a1 + 80) = 0;
    *(a1 + 88) = 0;
  }

  v7 = *(a1 + 8);
  v6 = a1 + 8;
  *(v6 + 8) = 0;
  if (v7)
  {

    return sub_275FB57B8(v6);
  }

  return result;
}

google::protobuf::internal *sub_275FA12B4(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v60 = a2;
  v5 = 0;
  if ((sub_275FB1588(a3, &v60, *(a3 + 92)) & 1) == 0)
  {
    while (1)
    {
      v7 = (v60 + 1);
      v8 = *v60;
      if ((*v60 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if ((*v7 & 0x80000000) == 0)
      {
        break;
      }

      TagFallback = google::protobuf::internal::ReadTagFallback(v60, (v9 - 128));
      v60 = TagFallback;
      if (!TagFallback)
      {
        goto LABEL_101;
      }

      v7 = TagFallback;
      v8 = v25;
LABEL_7:
      v10 = v8 >> 3;
      if (v8 >> 3 > 4)
      {
        if (v8 >> 3 <= 6)
        {
          if (v10 != 5)
          {
            if (v10 != 6 || v8 != 48)
            {
              goto LABEL_79;
            }

            v5 |= 0x10u;
            v15 = (v7 + 1);
            LODWORD(v16) = *v7;
            if ((*v7 & 0x80000000) == 0)
            {
              goto LABEL_26;
            }

            v17 = *v15;
            v16 = (v16 + (v17 << 7) - 128);
            if ((v17 & 0x80000000) == 0)
            {
              v15 = (v7 + 2);
LABEL_26:
              v60 = v15;
              *(a1 + 88) = v16;
              goto LABEL_86;
            }

            v54 = google::protobuf::internal::VarintParseSlow32(v7, v16);
            v60 = v54;
            *(a1 + 88) = v55;
            if (!v54)
            {
              goto LABEL_101;
            }

            goto LABEL_86;
          }

          if (v8 == 42)
          {
            v29 = (v7 - 1);
            while (1)
            {
              v30 = (v29 + 1);
              v60 = (v29 + 1);
              v31 = *(a1 + 40);
              if (!v31)
              {
                goto LABEL_51;
              }

              v36 = *(a1 + 32);
              v32 = *v31;
              if (v36 < *v31)
              {
                *(a1 + 32) = v36 + 1;
                v33 = *&v31[2 * v36 + 2];
                goto LABEL_55;
              }

              if (v32 == *(a1 + 36))
              {
LABEL_51:
                google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 24));
                v31 = *(a1 + 40);
                v32 = *v31;
              }

              *v31 = v32 + 1;
              v33 = sub_275FAF8F4(*(a1 + 24));
              v34 = *(a1 + 32);
              v35 = *(a1 + 40) + 8 * v34;
              *(a1 + 32) = v34 + 1;
              *(v35 + 8) = v33;
              v30 = v60;
LABEL_55:
              v29 = sub_27603596C(a3, v33, v30);
              v60 = v29;
              if (!v29)
              {
                goto LABEL_101;
              }

              if (*a3 <= v29 || *v29 != 42)
              {
                goto LABEL_86;
              }
            }
          }

LABEL_79:
          if (v8)
          {
            v47 = (v8 & 7) == 4;
          }

          else
          {
            v47 = 1;
          }

          if (v47)
          {
            *(a3 + 80) = v8 - 1;
            goto LABEL_2;
          }

          if ((*(a1 + 8) & 1) == 0)
          {
            sub_275FB5524((a1 + 8));
          }

          v60 = google::protobuf::internal::UnknownFieldParse();
          if (!v60)
          {
LABEL_101:
            v60 = 0;
            goto LABEL_2;
          }

          goto LABEL_86;
        }

        if (v10 != 7)
        {
          if (v10 != 8 || v8 != 64)
          {
            goto LABEL_79;
          }

          v5 |= 0x20u;
          v22 = (v7 + 1);
          LODWORD(v21) = *v7;
          if ((v21 & 0x80) == 0)
          {
            goto LABEL_40;
          }

          v23 = *v22;
          v21 = (v21 + (v23 << 7) - 128);
          if ((v23 & 0x80000000) == 0)
          {
            v22 = (v7 + 2);
LABEL_40:
            v60 = v22;
            *(a1 + 92) = v21;
            goto LABEL_86;
          }

          v58 = google::protobuf::internal::VarintParseSlow64(v7, v21);
          v60 = v58;
          *(a1 + 92) = v59;
          if (!v58)
          {
            goto LABEL_101;
          }

          goto LABEL_86;
        }

        if (v8 != 58)
        {
          goto LABEL_79;
        }

        v40 = v7 - 1;
        while (2)
        {
          v60 = (v40 + 1);
          v41 = *(a1 + 64);
          if (!v41)
          {
            goto LABEL_73;
          }

          v42 = *(a1 + 56);
          v43 = *v41;
          if (v42 < *v41)
          {
            *(a1 + 56) = v42 + 1;
            goto LABEL_75;
          }

          if (v43 == *(a1 + 60))
          {
LABEL_73:
            google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 48));
            v41 = *(a1 + 64);
            v43 = *v41;
          }

          *v41 = v43 + 1;
          v44 = sub_275FB1600(*(a1 + 48));
          v45 = *(a1 + 56);
          v46 = *(a1 + 64) + 8 * v45;
          *(a1 + 56) = v45 + 1;
          *(v46 + 8) = v44;
LABEL_75:
          v40 = google::protobuf::internal::InlineGreedyStringParser();
          v60 = v40;
          if (!v40)
          {
            goto LABEL_101;
          }

          if (*a3 <= v40 || *v40 != 58)
          {
            goto LABEL_86;
          }

          continue;
        }
      }

      if (v8 >> 3 > 2)
      {
        if (v10 == 3)
        {
          if (v8 != 24)
          {
            goto LABEL_79;
          }

          v5 |= 4u;
          v37 = (v7 + 1);
          LODWORD(v38) = *v7;
          if ((*v7 & 0x80000000) == 0)
          {
            goto LABEL_65;
          }

          v39 = *v37;
          v38 = (v38 + (v39 << 7) - 128);
          if ((v39 & 0x80000000) == 0)
          {
            v37 = (v7 + 2);
LABEL_65:
            v60 = v37;
            *(a1 + 80) = v38;
            goto LABEL_86;
          }

          v50 = google::protobuf::internal::VarintParseSlow32(v7, v38);
          v60 = v50;
          *(a1 + 80) = v51;
          if (!v50)
          {
            goto LABEL_101;
          }
        }

        else
        {
          if (v10 != 4 || v8 != 32)
          {
            goto LABEL_79;
          }

          v5 |= 8u;
          v18 = (v7 + 1);
          LODWORD(v19) = *v7;
          if ((*v7 & 0x80000000) == 0)
          {
            goto LABEL_33;
          }

          v20 = *v18;
          v19 = (v19 + (v20 << 7) - 128);
          if ((v20 & 0x80000000) == 0)
          {
            v18 = (v7 + 2);
LABEL_33:
            v60 = v18;
            *(a1 + 84) = v19;
            goto LABEL_86;
          }

          v56 = google::protobuf::internal::VarintParseSlow32(v7, v19);
          v60 = v56;
          *(a1 + 84) = v57;
          if (!v56)
          {
            goto LABEL_101;
          }
        }
      }

      else if (v10 == 1)
      {
        if (v8 != 8)
        {
          goto LABEL_79;
        }

        v5 |= 1u;
        v26 = (v7 + 1);
        LODWORD(v27) = *v7;
        if ((*v7 & 0x80000000) == 0)
        {
          goto LABEL_47;
        }

        v28 = *v26;
        v27 = (v27 + (v28 << 7) - 128);
        if ((v28 & 0x80000000) == 0)
        {
          v26 = (v7 + 2);
LABEL_47:
          v60 = v26;
          *(a1 + 72) = v27;
          goto LABEL_86;
        }

        v48 = google::protobuf::internal::VarintParseSlow32(v7, v27);
        v60 = v48;
        *(a1 + 72) = v49;
        if (!v48)
        {
          goto LABEL_101;
        }
      }

      else
      {
        if (v10 != 2 || v8 != 16)
        {
          goto LABEL_79;
        }

        v5 |= 2u;
        v12 = (v7 + 1);
        LODWORD(v13) = *v7;
        if ((*v7 & 0x80000000) == 0)
        {
          goto LABEL_18;
        }

        v14 = *v12;
        v13 = (v13 + (v14 << 7) - 128);
        if ((v14 & 0x80000000) == 0)
        {
          v12 = (v7 + 2);
LABEL_18:
          v60 = v12;
          *(a1 + 76) = v13;
          goto LABEL_86;
        }

        v52 = google::protobuf::internal::VarintParseSlow32(v7, v13);
        v60 = v52;
        *(a1 + 76) = v53;
        if (!v52)
        {
          goto LABEL_101;
        }
      }

LABEL_86:
      if (sub_275FB1588(a3, &v60, *(a3 + 92)))
      {
        goto LABEL_2;
      }
    }

    v7 = (v60 + 2);
LABEL_6:
    v60 = v7;
    goto LABEL_7;
  }

LABEL_2:
  *(a1 + 16) |= v5;
  return v60;
}

unsigned __int8 *sub_275FA17DC(uint64_t a1, google::protobuf::UnknownFieldSet *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v4 = a2;
  v6 = *(a1 + 16);
  if ((v6 & 1) == 0)
  {
    if ((v6 & 2) == 0)
    {
      goto LABEL_3;
    }

LABEL_25:
    if (*a3 <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
    }

    v15 = *(a1 + 76);
    *v4 = 16;
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
        if ((v6 & 4) != 0)
        {
          goto LABEL_36;
        }
      }

      else
      {
        v4[2] = v16;
        v4 += 3;
        if ((v6 & 4) != 0)
        {
          goto LABEL_36;
        }
      }
    }

    else
    {
      v4[1] = v15;
      v4 += 2;
      if ((v6 & 4) != 0)
      {
        goto LABEL_36;
      }
    }

LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_47;
    }

    goto LABEL_5;
  }

  if (*a3 <= a2)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v8 = *(a1 + 72);
  *v4 = 8;
  if (v8 > 0x7F)
  {
    v4[1] = v8 | 0x80;
    v10 = v8 >> 7;
    if (v8 >> 14)
    {
      v4 += 3;
      do
      {
        *(v4 - 1) = v10 | 0x80;
        v13 = v10 >> 7;
        ++v4;
        v14 = v10 >> 14;
        v10 >>= 7;
      }

      while (v14);
      *(v4 - 1) = v13;
      if ((v6 & 2) != 0)
      {
        goto LABEL_25;
      }
    }

    else
    {
      v4[2] = v10;
      v4 += 3;
      if ((v6 & 2) != 0)
      {
        goto LABEL_25;
      }
    }
  }

  else
  {
    v4[1] = v8;
    v4 += 2;
    if ((v6 & 2) != 0)
    {
      goto LABEL_25;
    }
  }

LABEL_3:
  if ((v6 & 4) == 0)
  {
    goto LABEL_4;
  }

LABEL_36:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v19 = *(a1 + 80);
  *v4 = 24;
  if (v19 > 0x7F)
  {
    v4[1] = v19 | 0x80;
    v20 = v19 >> 7;
    if (v19 >> 14)
    {
      v4 += 3;
      do
      {
        *(v4 - 1) = v20 | 0x80;
        v21 = v20 >> 7;
        ++v4;
        v22 = v20 >> 14;
        v20 >>= 7;
      }

      while (v22);
      *(v4 - 1) = v21;
      if ((v6 & 8) == 0)
      {
        goto LABEL_47;
      }
    }

    else
    {
      v4[2] = v20;
      v4 += 3;
      if ((v6 & 8) == 0)
      {
        goto LABEL_47;
      }
    }
  }

  else
  {
    v4[1] = v19;
    v4 += 2;
    if ((v6 & 8) == 0)
    {
      goto LABEL_47;
    }
  }

LABEL_5:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v7 = *(a1 + 84);
  *v4 = 32;
  if (v7 > 0x7F)
  {
    v4[1] = v7 | 0x80;
    v9 = v7 >> 7;
    if (v7 >> 14)
    {
      v4 += 3;
      do
      {
        *(v4 - 1) = v9 | 0x80;
        v11 = v9 >> 7;
        ++v4;
        v12 = v9 >> 14;
        v9 >>= 7;
      }

      while (v12);
      *(v4 - 1) = v11;
    }

    else
    {
      v4[2] = v9;
      v4 += 3;
    }
  }

  else
  {
    v4[1] = v7;
    v4 += 2;
  }

LABEL_47:
  v23 = *(a1 + 32);
  if (v23)
  {
    for (i = 0; i != v23; ++i)
    {
      if (*a3 <= v4)
      {
        v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
      }

      v25 = *(*(a1 + 40) + 8 * i + 8);
      *v4 = 42;
      v26 = *(v25 + 20);
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

      v4 = sub_275F9EB80(v25, v27, a3, v4);
    }
  }

  if ((v6 & 0x10) != 0)
  {
    if (*a3 <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
    }

    v31 = *(a1 + 88);
    *v4 = 48;
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
      }

      else
      {
        v4[2] = v32;
        v4 += 3;
      }
    }

    else
    {
      v4[1] = v31;
      v4 += 2;
    }
  }

  v35 = *(a1 + 56);
  if (v35 >= 1)
  {
    v36 = 8;
    do
    {
      v4 = sub_275FA1C9C(a3, 7, *(*(a1 + 64) + v36), v4);
      v36 += 8;
      --v35;
    }

    while (v35);
  }

  if ((v6 & 0x20) != 0)
  {
    if (*a3 <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
    }

    v37 = *(a1 + 92);
    *v4 = 64;
    if (v37 > 0x7F)
    {
      v4[1] = v37 | 0x80;
      v38 = v37 >> 7;
      if (v37 >> 14)
      {
        v4 += 3;
        do
        {
          *(v4 - 1) = v38 | 0x80;
          v39 = v38 >> 7;
          ++v4;
          v40 = v38 >> 14;
          v38 >>= 7;
        }

        while (v40);
        *(v4 - 1) = v39;
      }

      else
      {
        v4[2] = v38;
        v4 += 3;
      }
    }

    else
    {
      v4[1] = v37;
      v4 += 2;
    }
  }

  v41 = *(a1 + 8);
  if ((v41 & 1) == 0)
  {
    return v4;
  }

  return google::protobuf::internal::WireFormat::InternalSerializeUnknownFieldsToArray(((v41 & 0xFFFFFFFFFFFFFFFELL) + 8), v4, a3, v4);
}

uint64_t sub_275FA1C9C(uint64_t *a1, uint64_t a2, const void **a3, _BYTE *a4)
{
  v4 = *(a3 + 23);
  if ((v4 & 0x8000000000000000) == 0 || (v4 = a3[1], v4 <= 127))
  {
    v5 = *a1;
    v6 = 8 * a2;
    if ((8 * a2) >= 0x80)
    {
      v8 = 2;
      v9 = 3;
      v10 = 4;
      if (v6 >> 28)
      {
        v10 = 5;
      }

      if (v6 >= 0x200000)
      {
        v9 = v10;
      }

      if (v6 >= 0x4000)
      {
        v8 = v9;
      }

      if ((v5 + ~&a4[v8] + 16) >= v4)
      {
        *a4 = v6 | 0x82;
        v11 = v6 >> 7;
        if (v6 >> 14)
        {
          v7 = a4 + 2;
          do
          {
            *(v7 - 1) = v11 | 0x80;
            v12 = v11 >> 7;
            ++v7;
            v13 = v11 >> 14;
            v11 >>= 7;
          }

          while (v13);
          *(v7 - 1) = v12;
        }

        else
        {
          a4[1] = v11;
          v7 = a4 + 2;
        }

LABEL_18:
        *v7 = v4;
        v14 = v7 + 1;
        if (*(a3 + 23) >= 0)
        {
          v15 = a3;
        }

        else
        {
          v15 = *a3;
        }

        memcpy(v14, v15, v4);
        return v14 + v4;
      }
    }

    else if (v5 - a4 + 14 >= v4)
    {
      *a4 = v6 | 2;
      v7 = a4 + 1;
      goto LABEL_18;
    }
  }

  return MEMORY[0x2821EAB40](a1, a2);
}

uint64_t sub_275FA1DC8(uint64_t a1)
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
      v7 = sub_275F9ED2C(v6);
      v2 += v7 + ((9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6);
      v5 -= 8;
    }

    while (v5);
  }

  else
  {
    v2 = 0;
  }

  v8 = *(a1 + 56);
  v9 = v2 + v8;
  if (v8 >= 1)
  {
    v10 = (*(a1 + 64) + 8);
    do
    {
      v11 = *v10++;
      v12 = *(v11 + 23);
      v13 = *(v11 + 8);
      if ((v12 & 0x80u) == 0)
      {
        v13 = v12;
      }

      v9 += v13 + ((9 * (__clz(v13 | 1) ^ 0x1F) + 73) >> 6);
      --v8;
    }

    while (v8);
  }

  v14 = *(a1 + 16);
  if ((v14 & 0x3F) == 0)
  {
    goto LABEL_25;
  }

  if (v14)
  {
    v9 += ((9 * (__clz(*(a1 + 72) | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v14 & 2) == 0)
    {
LABEL_17:
      if ((v14 & 4) == 0)
      {
        goto LABEL_18;
      }

      goto LABEL_29;
    }
  }

  else if ((v14 & 2) == 0)
  {
    goto LABEL_17;
  }

  v9 += ((9 * (__clz(*(a1 + 76) | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v14 & 4) == 0)
  {
LABEL_18:
    if ((v14 & 8) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_30;
  }

LABEL_29:
  v9 += ((9 * (__clz(*(a1 + 80) | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v14 & 8) == 0)
  {
LABEL_19:
    if ((v14 & 0x10) == 0)
    {
      goto LABEL_20;
    }

LABEL_31:
    v9 += ((9 * (__clz(*(a1 + 88) | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v14 & 0x20) != 0)
    {
      goto LABEL_21;
    }

    goto LABEL_25;
  }

LABEL_30:
  v9 += ((9 * (__clz(*(a1 + 84) | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v14 & 0x10) != 0)
  {
    goto LABEL_31;
  }

LABEL_20:
  if ((v14 & 0x20) != 0)
  {
LABEL_21:
    v15 = *(a1 + 92);
    v16 = ((9 * (__clz(v15 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if (v15 >= 0)
    {
      v17 = v16;
    }

    else
    {
      v17 = 11;
    }

    v9 += v17;
  }

LABEL_25:
  if (*(a1 + 8))
  {

    return google::protobuf::internal::ComputeUnknownFieldsSize();
  }

  else
  {
    *(a1 + 20) = v9;
    return v9;
  }
}

uint64_t sub_275FA1FF4(uint64_t a1, void *lpsrc)
{
  v4 = __dynamic_cast(lpsrc, MEMORY[0x277D80A98], &unk_288500928, 0);
  if (v4)
  {

    return sub_275FA209C(a1, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, a1);
  }
}

uint64_t sub_275FA209C(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 8);
  if (v4)
  {
    result = sub_275FB576C((result + 8), (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  v5 = *(a2 + 32);
  if (v5)
  {
    v6 = *(a2 + 40);
    v7 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((v3 + 24));
    result = sub_275FB67E8((v3 + 24), v7, (v6 + 8), v5, **(v3 + 40) - *(v3 + 32));
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
    result = sub_275FB68A8((v3 + 48), v12, (v11 + 8), v10, **(v3 + 64) - *(v3 + 56));
    v13 = *(v3 + 56) + v10;
    *(v3 + 56) = v13;
    v14 = *(v3 + 64);
    if (*v14 < v13)
    {
      *v14 = v13;
    }
  }

  v15 = *(a2 + 16);
  if ((v15 & 0x3F) != 0)
  {
    if (v15)
    {
      *(v3 + 72) = *(a2 + 72);
      if ((v15 & 2) == 0)
      {
LABEL_12:
        if ((v15 & 4) == 0)
        {
          goto LABEL_13;
        }

        goto LABEL_21;
      }
    }

    else if ((v15 & 2) == 0)
    {
      goto LABEL_12;
    }

    *(v3 + 76) = *(a2 + 76);
    if ((v15 & 4) == 0)
    {
LABEL_13:
      if ((v15 & 8) == 0)
      {
        goto LABEL_14;
      }

      goto LABEL_22;
    }

LABEL_21:
    *(v3 + 80) = *(a2 + 80);
    if ((v15 & 8) == 0)
    {
LABEL_14:
      if ((v15 & 0x10) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_23;
    }

LABEL_22:
    *(v3 + 84) = *(a2 + 84);
    if ((v15 & 0x10) == 0)
    {
LABEL_15:
      if ((v15 & 0x20) == 0)
      {
LABEL_17:
        *(v3 + 16) |= v15;
        return result;
      }

LABEL_16:
      *(v3 + 92) = *(a2 + 92);
      goto LABEL_17;
    }

LABEL_23:
    *(v3 + 88) = *(a2 + 88);
    if ((v15 & 0x20) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

  return result;
}

void *sub_275FA2210(void *result, void *a2)
{
  if (a2 != result)
  {
    v4 = result;
    sub_275FA1218(result);

    return sub_275FA1FF4(v4, a2);
  }

  return result;
}

uint64_t sub_275FA2264(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 1)
  {
    do
    {
      v3 = v1--;
      v4 = *(*(a1 + 16) + 8 * v1 + 8);
      v5 = *(v4 + 32);
      while (v5 >= 1)
      {
        v6 = v5 - 1;
        v7 = sub_275F9E230(*(*(v4 + 40) + 8 * v5));
        v5 = v6;
        if (!v7)
        {
          return 0;
        }
      }
    }

    while (v3 >= 2);
  }

  return 1;
}

uint64_t sub_275FA2328(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_2884FFBC0;
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
  if (atomic_load_explicit(dword_2812F7F80, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(a1 + 152) = 0;
  *(a1 + 136) = 0u;
  *(a1 + 120) = 0u;
  return a1;
}

void sub_275FA23DC(_Unwind_Exception *a1)
{
  sub_275FB6954(v4);
  sub_275FB56E8(v3);
  sub_275FB56E8(v2);
  sub_275FB56E8(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_275FA241C(uint64_t a1)
{
  if (a1 != &unk_2812F8E30)
  {
    v2 = *(a1 + 120);
    if (v2)
    {
      TSP::Range::~Range(v2);
      MEMORY[0x277C93390]();
    }

    v3 = *(a1 + 128);
    if (v3)
    {
      TSP::Reference::~Reference(v3);
      MEMORY[0x277C93390]();
    }
  }

  sub_275F8A514((a1 + 8));
  sub_275FB6954((a1 + 96));
  sub_275FB56E8((a1 + 72));
  sub_275FB56E8((a1 + 48));
  sub_275FB56E8((a1 + 24));
  return a1;
}

void sub_275FA24D0(uint64_t a1)
{
  sub_275FA241C(a1);

  JUMPOUT(0x277C93390);
}

void *sub_275FA2510()
{
  if (atomic_load_explicit(dword_2812F7F80, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &unk_2812F8E30;
}

google::protobuf::UnknownFieldSet *sub_275FA2550(google::protobuf::UnknownFieldSet *result)
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
      result = TSP::Reference::Clear(v7);
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
      result = TSP::Range::Clear(v13);
      --v11;
    }

    while (v11);
    *(v1 + 104) = 0;
  }

  v14 = *(v1 + 16);
  if ((v14 & 3) != 0)
  {
    if (v14)
    {
      result = TSP::Range::Clear(*(v1 + 120));
    }

    if ((v14 & 2) != 0)
    {
      result = TSP::Reference::Clear(*(v1 + 128));
    }
  }

  if ((v14 & 0xFC) != 0)
  {
    *(v1 + 136) = 0;
    *(v1 + 144) = 0;
    *(v1 + 152) = 0;
  }

  v16 = *(v1 + 8);
  v15 = v1 + 8;
  *(v15 + 8) = 0;
  if (v16)
  {

    return sub_275FB57B8(v15);
  }

  return result;
}

google::protobuf::internal *sub_275FA267C(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v82 = a2;
  v5 = 0;
  if ((sub_275FB1588(a3, &v82, *(a3 + 92)) & 1) == 0)
  {
    while (1)
    {
      v7 = (v82 + 1);
      v8 = *v82;
      if ((*v82 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if ((*v7 & 0x80000000) == 0)
      {
        break;
      }

      TagFallback = google::protobuf::internal::ReadTagFallback(v82, (v9 - 128));
      v82 = TagFallback;
      if (!TagFallback)
      {
        goto LABEL_156;
      }

      v7 = TagFallback;
      v8 = v36;
LABEL_7:
      v10 = v8 >> 3;
      if (v8 >> 3 <= 6)
      {
        if (v8 >> 3 <= 3)
        {
          if (v10 != 1)
          {
            if (v10 != 2)
            {
              if (v10 != 3 || v8 != 24)
              {
                goto LABEL_129;
              }

              v12 = (v7 + 1);
              v13 = *v7;
              if ((v13 & 0x8000000000000000) != 0)
              {
                v14 = *v12;
                v15 = (v14 << 7) + v13;
                v13 = (v15 - 128);
                if (v14 < 0)
                {
                  v82 = google::protobuf::internal::VarintParseSlow64(v7, (v15 - 128));
                  if (!v82)
                  {
                    goto LABEL_156;
                  }

                  v13 = v74;
                  goto LABEL_20;
                }

                v12 = (v7 + 2);
              }

              v82 = v12;
LABEL_20:
              if (TSWP::StyleInsertionBehavior_IsValid(v13))
              {
                *(a1 + 16) |= 8u;
                *(a1 + 140) = v13;
              }

              else
              {
                sub_27603781C();
              }

              goto LABEL_137;
            }

            if (v8 == 18)
            {
              *(a1 + 16) |= 1u;
              v56 = *(a1 + 120);
              if (!v56)
              {
                v57 = *(a1 + 8);
                if (v57)
                {
                  v57 = *(v57 & 0xFFFFFFFFFFFFFFFELL);
                }

                v56 = MEMORY[0x277C92D40](v57);
                *(a1 + 120) = v56;
                v7 = v82;
              }

              v58 = sub_27603520C(a3, v56, v7);
              goto LABEL_136;
            }

            goto LABEL_129;
          }

          if (v8 != 8)
          {
            goto LABEL_129;
          }

          v37 = (v7 + 1);
          v38 = *v7;
          if ((v38 & 0x8000000000000000) != 0)
          {
            v39 = *v37;
            v40 = (v39 << 7) + v38;
            v38 = (v40 - 128);
            if ((v39 & 0x80000000) == 0)
            {
              v37 = (v7 + 2);
              goto LABEL_69;
            }

            v82 = google::protobuf::internal::VarintParseSlow64(v7, (v40 - 128));
            if (!v82)
            {
              goto LABEL_156;
            }

            v38 = v77;
          }

          else
          {
LABEL_69:
            v82 = v37;
          }

          if (TSWP::SelectionType_IsValid(v38))
          {
            *(a1 + 16) |= 4u;
            *(a1 + 136) = v38;
          }

          else
          {
            sub_276037768();
          }

          goto LABEL_137;
        }

        if (v10 != 4)
        {
          if (v10 != 5)
          {
            if (v10 != 6 || v8 != 50)
            {
              goto LABEL_129;
            }

            v19 = v7 - 1;
            while (2)
            {
              v20 = (v19 + 1);
              v82 = (v19 + 1);
              v21 = *(a1 + 64);
              if (!v21)
              {
LABEL_37:
                google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 48));
                v21 = *(a1 + 64);
                v22 = *v21;
                goto LABEL_38;
              }

              v26 = *(a1 + 56);
              v22 = *v21;
              if (v26 >= *v21)
              {
                if (v22 == *(a1 + 60))
                {
                  goto LABEL_37;
                }

LABEL_38:
                *v21 = v22 + 1;
                v23 = MEMORY[0x277C92D60](*(a1 + 48));
                v24 = *(a1 + 56);
                v25 = *(a1 + 64) + 8 * v24;
                *(a1 + 56) = v24 + 1;
                *(v25 + 8) = v23;
                v20 = v82;
              }

              else
              {
                *(a1 + 56) = v26 + 1;
                v23 = *&v21[2 * v26 + 2];
              }

              v19 = sub_27603450C(a3, v23, v20);
              v82 = v19;
              if (!v19)
              {
                goto LABEL_156;
              }

              if (*a3 <= v19 || *v19 != 50)
              {
                goto LABEL_137;
              }

              continue;
            }
          }

          if (v8 != 42)
          {
            goto LABEL_129;
          }

          v61 = v7 - 1;
          while (2)
          {
            v62 = (v61 + 1);
            v82 = (v61 + 1);
            v63 = *(a1 + 40);
            if (!v63)
            {
LABEL_112:
              google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 24));
              v63 = *(a1 + 40);
              v64 = *v63;
              goto LABEL_113;
            }

            v68 = *(a1 + 32);
            v64 = *v63;
            if (v68 >= *v63)
            {
              if (v64 == *(a1 + 36))
              {
                goto LABEL_112;
              }

LABEL_113:
              *v63 = v64 + 1;
              v65 = MEMORY[0x277C92D60](*(a1 + 24));
              v66 = *(a1 + 32);
              v67 = *(a1 + 40) + 8 * v66;
              *(a1 + 32) = v66 + 1;
              *(v67 + 8) = v65;
              v62 = v82;
            }

            else
            {
              *(a1 + 32) = v68 + 1;
              v65 = *&v63[2 * v68 + 2];
            }

            v61 = sub_27603450C(a3, v65, v62);
            v82 = v61;
            if (!v61)
            {
              goto LABEL_156;
            }

            if (*a3 <= v61 || *v61 != 42)
            {
              goto LABEL_137;
            }

            continue;
          }
        }

        if (v8 != 32)
        {
          goto LABEL_129;
        }

        v49 = (v7 + 1);
        v50 = *v7;
        if ((v50 & 0x8000000000000000) != 0)
        {
          v51 = *v49;
          v52 = (v51 << 7) + v50;
          v50 = (v52 - 128);
          if ((v51 & 0x80000000) == 0)
          {
            v49 = (v7 + 2);
            goto LABEL_89;
          }

          v82 = google::protobuf::internal::VarintParseSlow64(v7, (v52 - 128));
          if (!v82)
          {
            goto LABEL_156;
          }

          v50 = v78;
        }

        else
        {
LABEL_89:
          v82 = v49;
        }

        if (TSWP::CaretAffinity_IsValid(v50))
        {
          *(a1 + 16) |= 0x10u;
          *(a1 + 144) = v50;
        }

        else
        {
          sub_2760377E0();
        }

        goto LABEL_137;
      }

      if (v8 >> 3 > 9)
      {
        if (v10 != 10)
        {
          if (v10 != 11)
          {
            if (v10 != 12 || v8 != 98)
            {
              goto LABEL_129;
            }

            v27 = v7 - 1;
            while (2)
            {
              v28 = (v27 + 1);
              v82 = (v27 + 1);
              v29 = *(a1 + 112);
              if (!v29)
              {
LABEL_53:
                google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 96));
                v29 = *(a1 + 112);
                v30 = *v29;
                goto LABEL_54;
              }

              v34 = *(a1 + 104);
              v30 = *v29;
              if (v34 >= *v29)
              {
                if (v30 == *(a1 + 108))
                {
                  goto LABEL_53;
                }

LABEL_54:
                *v29 = v30 + 1;
                v31 = MEMORY[0x277C92D40](*(a1 + 96));
                v32 = *(a1 + 104);
                v33 = *(a1 + 112) + 8 * v32;
                *(a1 + 104) = v32 + 1;
                *(v33 + 8) = v31;
                v28 = v82;
              }

              else
              {
                *(a1 + 104) = v34 + 1;
                v31 = *&v29[2 * v34 + 2];
              }

              v27 = sub_27603520C(a3, v31, v28);
              v82 = v27;
              if (!v27)
              {
                goto LABEL_156;
              }

              if (*a3 <= v27 || *v27 != 98)
              {
                goto LABEL_137;
              }

              continue;
            }
          }

          if (v8 != 88)
          {
            goto LABEL_129;
          }

          v69 = (v7 + 1);
          v70 = *v7;
          if ((v70 & 0x8000000000000000) != 0)
          {
            v71 = *v69;
            v72 = (v71 << 7) + v70;
            v70 = (v72 - 128);
            if ((v71 & 0x80000000) == 0)
            {
              v69 = (v7 + 2);
              goto LABEL_126;
            }

            v82 = google::protobuf::internal::VarintParseSlow64(v7, (v72 - 128));
            if (!v82)
            {
LABEL_156:
              v82 = 0;
              goto LABEL_2;
            }

            v70 = v81;
          }

          else
          {
LABEL_126:
            v82 = v69;
          }

          if (TSWP::SelectionType_IsValid(v70))
          {
            *(a1 + 16) |= 0x80u;
            *(a1 + 156) = v70;
          }

          else
          {
            sub_2760377A4();
          }

          goto LABEL_137;
        }

        if (v8 != 80)
        {
          goto LABEL_129;
        }

        v5 |= 0x40u;
        v53 = (v7 + 1);
        LODWORD(v54) = *v7;
        if ((*v7 & 0x80000000) == 0)
        {
          goto LABEL_96;
        }

        v55 = *v53;
        v54 = (v54 + (v55 << 7) - 128);
        if ((v55 & 0x80000000) == 0)
        {
          v53 = (v7 + 2);
LABEL_96:
          v82 = v53;
          *(a1 + 152) = v54;
          goto LABEL_137;
        }

        v79 = google::protobuf::internal::VarintParseSlow32(v7, v54);
        v82 = v79;
        *(a1 + 152) = v80;
        if (!v79)
        {
          goto LABEL_156;
        }
      }

      else
      {
        if (v10 == 7)
        {
          if (v8 != 58)
          {
            goto LABEL_129;
          }

          v41 = v7 - 1;
          while (2)
          {
            v42 = (v41 + 1);
            v82 = (v41 + 1);
            v43 = *(a1 + 88);
            if (!v43)
            {
LABEL_75:
              google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 72));
              v43 = *(a1 + 88);
              v44 = *v43;
              goto LABEL_76;
            }

            v48 = *(a1 + 80);
            v44 = *v43;
            if (v48 >= *v43)
            {
              if (v44 == *(a1 + 84))
              {
                goto LABEL_75;
              }

LABEL_76:
              *v43 = v44 + 1;
              v45 = MEMORY[0x277C92D60](*(a1 + 72));
              v46 = *(a1 + 80);
              v47 = *(a1 + 88) + 8 * v46;
              *(a1 + 80) = v46 + 1;
              *(v47 + 8) = v45;
              v42 = v82;
            }

            else
            {
              *(a1 + 80) = v48 + 1;
              v45 = *&v43[2 * v48 + 2];
            }

            v41 = sub_27603450C(a3, v45, v42);
            v82 = v41;
            if (!v41)
            {
              goto LABEL_156;
            }

            if (*a3 <= v41 || *v41 != 58)
            {
              goto LABEL_137;
            }

            continue;
          }
        }

        if (v10 == 8)
        {
          if (v8 == 66)
          {
            *(a1 + 16) |= 2u;
            v59 = *(a1 + 128);
            if (!v59)
            {
              v60 = *(a1 + 8);
              if (v60)
              {
                v60 = *(v60 & 0xFFFFFFFFFFFFFFFELL);
              }

              v59 = MEMORY[0x277C92D60](v60);
              *(a1 + 128) = v59;
              v7 = v82;
            }

            v58 = sub_27603450C(a3, v59, v7);
LABEL_136:
            v82 = v58;
            if (!v58)
            {
              goto LABEL_156;
            }

            goto LABEL_137;
          }

LABEL_129:
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
            sub_275FB5524((a1 + 8));
          }

          v58 = google::protobuf::internal::UnknownFieldParse();
          goto LABEL_136;
        }

        if (v10 != 9 || v8 != 72)
        {
          goto LABEL_129;
        }

        v5 |= 0x20u;
        v17 = (v7 + 1);
        v16 = *v7;
        if ((v16 & 0x8000000000000000) == 0)
        {
          goto LABEL_30;
        }

        v18 = *v17;
        v16 = (v18 << 7) + v16 - 128;
        if ((v18 & 0x80000000) == 0)
        {
          v17 = (v7 + 2);
LABEL_30:
          v82 = v17;
          *(a1 + 148) = v16 != 0;
          goto LABEL_137;
        }

        v75 = google::protobuf::internal::VarintParseSlow64(v7, v16);
        v82 = v75;
        *(a1 + 148) = v76 != 0;
        if (!v75)
        {
          goto LABEL_156;
        }
      }

LABEL_137:
      if (sub_275FB1588(a3, &v82, *(a3 + 92)))
      {
        goto LABEL_2;
      }
    }

    v7 = (v82 + 2);
LABEL_6:
    v82 = v7;
    goto LABEL_7;
  }

LABEL_2:
  *(a1 + 16) |= v5;
  return v82;
}

unsigned __int8 *sub_275FA2EAC(uint64_t a1, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3, google::protobuf::io::EpsCopyOutputStream *a4)
{
  v6 = *(a1 + 16);
  if ((v6 & 4) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v8 = *(a1 + 136);
    *a2 = 8;
    if (v8 > 0x7F)
    {
      a2[1] = v8 | 0x80;
      v10 = v8 >> 7;
      if (v8 >> 14)
      {
        a2 += 3;
        do
        {
          *(a2 - 1) = v10 | 0x80;
          v13 = v10 >> 7;
          ++a2;
          v14 = v10 >> 14;
          v10 >>= 7;
        }

        while (v14);
        *(a2 - 1) = v13;
        if (v6)
        {
          goto LABEL_25;
        }
      }

      else
      {
        a2[2] = v10;
        a2 += 3;
        if (v6)
        {
          goto LABEL_25;
        }
      }
    }

    else
    {
      a2[1] = v8;
      a2 += 2;
      if (v6)
      {
        goto LABEL_25;
      }
    }

LABEL_3:
    if ((v6 & 8) == 0)
    {
      goto LABEL_4;
    }

    goto LABEL_35;
  }

  if ((v6 & 1) == 0)
  {
    goto LABEL_3;
  }

LABEL_25:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v15 = *(a1 + 120);
  *a2 = 18;
  v16 = *(v15 + 5);
  if (v16 > 0x7F)
  {
    a2[1] = v16 | 0x80;
    v18 = v16 >> 7;
    if (v16 >> 14)
    {
      v17 = a2 + 3;
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
      a2[2] = v18;
      v17 = a2 + 3;
    }
  }

  else
  {
    a2[1] = v16;
    v17 = a2 + 2;
  }

  a2 = TSP::Range::_InternalSerialize(v15, v17, a3);
  if ((v6 & 8) == 0)
  {
LABEL_4:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_46;
    }

    goto LABEL_5;
  }

LABEL_35:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v21 = *(a1 + 140);
  *a2 = 24;
  if (v21 > 0x7F)
  {
    a2[1] = v21 | 0x80;
    v22 = v21 >> 7;
    if (v21 >> 14)
    {
      a2 += 3;
      do
      {
        *(a2 - 1) = v22 | 0x80;
        v23 = v22 >> 7;
        ++a2;
        v24 = v22 >> 14;
        v22 >>= 7;
      }

      while (v24);
      *(a2 - 1) = v23;
      if ((v6 & 0x10) == 0)
      {
        goto LABEL_46;
      }
    }

    else
    {
      a2[2] = v22;
      a2 += 3;
      if ((v6 & 0x10) == 0)
      {
        goto LABEL_46;
      }
    }
  }

  else
  {
    a2[1] = v21;
    a2 += 2;
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_46;
    }
  }

LABEL_5:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v7 = *(a1 + 144);
  *a2 = 32;
  if (v7 > 0x7F)
  {
    a2[1] = v7 | 0x80;
    v9 = v7 >> 7;
    if (v7 >> 14)
    {
      a2 += 3;
      do
      {
        *(a2 - 1) = v9 | 0x80;
        v11 = v9 >> 7;
        ++a2;
        v12 = v9 >> 14;
        v9 >>= 7;
      }

      while (v12);
      *(a2 - 1) = v11;
    }

    else
    {
      a2[2] = v9;
      a2 += 3;
    }
  }

  else
  {
    a2[1] = v7;
    a2 += 2;
  }

LABEL_46:
  v25 = *(a1 + 32);
  if (v25)
  {
    for (i = 0; i != v25; ++i)
    {
      if (*a3 <= a2)
      {
        a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      }

      v27 = *(*(a1 + 40) + 8 * i + 8);
      *a2 = 42;
      v28 = *(v27 + 5);
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

      a2 = TSP::Reference::_InternalSerialize(v27, v29, a3);
    }
  }

  v33 = *(a1 + 56);
  if (v33)
  {
    for (j = 0; j != v33; ++j)
    {
      if (*a3 <= a2)
      {
        a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      }

      v35 = *(*(a1 + 64) + 8 * j + 8);
      *a2 = 50;
      v36 = *(v35 + 5);
      if (v36 > 0x7F)
      {
        a2[1] = v36 | 0x80;
        v38 = v36 >> 7;
        if (v36 >> 14)
        {
          v37 = a2 + 3;
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
          a2[2] = v38;
          v37 = a2 + 3;
        }
      }

      else
      {
        a2[1] = v36;
        v37 = a2 + 2;
      }

      a2 = TSP::Reference::_InternalSerialize(v35, v37, a3);
    }
  }

  v41 = *(a1 + 80);
  if (v41)
  {
    for (k = 0; k != v41; ++k)
    {
      if (*a3 <= a2)
      {
        a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      }

      v43 = *(*(a1 + 88) + 8 * k + 8);
      *a2 = 58;
      v44 = *(v43 + 5);
      if (v44 > 0x7F)
      {
        a2[1] = v44 | 0x80;
        v46 = v44 >> 7;
        if (v44 >> 14)
        {
          v45 = a2 + 3;
          do
          {
            *(v45 - 1) = v46 | 0x80;
            v47 = v46 >> 7;
            ++v45;
            v48 = v46 >> 14;
            v46 >>= 7;
          }

          while (v48);
          *(v45 - 1) = v47;
        }

        else
        {
          a2[2] = v46;
          v45 = a2 + 3;
        }
      }

      else
      {
        a2[1] = v44;
        v45 = a2 + 2;
      }

      a2 = TSP::Reference::_InternalSerialize(v43, v45, a3);
    }
  }

  if ((v6 & 2) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v50 = *(a1 + 128);
    *a2 = 66;
    v51 = *(v50 + 5);
    if (v51 > 0x7F)
    {
      a2[1] = v51 | 0x80;
      v54 = v51 >> 7;
      if (v51 >> 14)
      {
        v52 = a2 + 3;
        do
        {
          *(v52 - 1) = v54 | 0x80;
          v57 = v54 >> 7;
          ++v52;
          v58 = v54 >> 14;
          v54 >>= 7;
        }

        while (v58);
        *(v52 - 1) = v57;
      }

      else
      {
        a2[2] = v54;
        v52 = a2 + 3;
      }
    }

    else
    {
      a2[1] = v51;
      v52 = a2 + 2;
    }

    a2 = TSP::Reference::_InternalSerialize(v50, v52, a3);
    if ((v6 & 0x20) == 0)
    {
LABEL_84:
      if ((v6 & 0x40) == 0)
      {
        goto LABEL_85;
      }

      goto LABEL_108;
    }
  }

  else if ((v6 & 0x20) == 0)
  {
    goto LABEL_84;
  }

  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v59 = *(a1 + 148);
  *a2 = 72;
  a2[1] = v59;
  a2 += 2;
  if ((v6 & 0x40) == 0)
  {
LABEL_85:
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_119;
    }

    goto LABEL_86;
  }

LABEL_108:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v60 = *(a1 + 152);
  *a2 = 80;
  if (v60 > 0x7F)
  {
    a2[1] = v60 | 0x80;
    v61 = v60 >> 7;
    if (v60 >> 14)
    {
      a2 += 3;
      do
      {
        *(a2 - 1) = v61 | 0x80;
        v62 = v61 >> 7;
        ++a2;
        v63 = v61 >> 14;
        v61 >>= 7;
      }

      while (v63);
      *(a2 - 1) = v62;
      if ((v6 & 0x80) == 0)
      {
        goto LABEL_119;
      }
    }

    else
    {
      a2[2] = v61;
      a2 += 3;
      if ((v6 & 0x80) == 0)
      {
        goto LABEL_119;
      }
    }
  }

  else
  {
    a2[1] = v60;
    a2 += 2;
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_119;
    }
  }

LABEL_86:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v49 = *(a1 + 156);
  *a2 = 88;
  if (v49 > 0x7F)
  {
    a2[1] = v49 | 0x80;
    v53 = v49 >> 7;
    if (v49 >> 14)
    {
      a2 += 3;
      do
      {
        *(a2 - 1) = v53 | 0x80;
        v55 = v53 >> 7;
        ++a2;
        v56 = v53 >> 14;
        v53 >>= 7;
      }

      while (v56);
      *(a2 - 1) = v55;
    }

    else
    {
      a2[2] = v53;
      a2 += 3;
    }
  }

  else
  {
    a2[1] = v49;
    a2 += 2;
  }

LABEL_119:
  v64 = *(a1 + 104);
  if (v64)
  {
    for (m = 0; m != v64; ++m)
    {
      if (*a3 <= a2)
      {
        a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      }

      v66 = *(*(a1 + 112) + 8 * m + 8);
      *a2 = 98;
      v67 = *(v66 + 5);
      if (v67 > 0x7F)
      {
        a2[1] = v67 | 0x80;
        v69 = v67 >> 7;
        if (v67 >> 14)
        {
          v68 = a2 + 3;
          do
          {
            *(v68 - 1) = v69 | 0x80;
            v70 = v69 >> 7;
            ++v68;
            v71 = v69 >> 14;
            v69 >>= 7;
          }

          while (v71);
          *(v68 - 1) = v70;
        }

        else
        {
          a2[2] = v69;
          v68 = a2 + 3;
        }
      }

      else
      {
        a2[1] = v67;
        v68 = a2 + 2;
      }

      a2 = TSP::Range::_InternalSerialize(v66, v68, a3);
    }
  }

  v72 = *(a1 + 8);
  if ((v72 & 1) == 0)
  {
    return a2;
  }

  return google::protobuf::internal::WireFormat::InternalSerializeUnknownFieldsToArray(((v72 & 0xFFFFFFFFFFFFFFFELL) + 8), a2, a3, a4);
}

uint64_t sub_275FA3618(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v4 = TSP::Range::ByteSizeLong(*(a1 + 120));
    result = v4 + ((9 * (__clz(v4 | 1) ^ 0x1F) + 73) >> 6) + 1;
    v2 = *(a1 + 16);
    if ((v2 & 4) == 0)
    {
      goto LABEL_9;
    }
  }

  else
  {
    result = 0;
    if ((v2 & 4) == 0)
    {
      goto LABEL_9;
    }
  }

  v5 = *(a1 + 136);
  if (v5 < 0)
  {
    v6 = 11;
  }

  else
  {
    v6 = ((9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  result += v6;
LABEL_9:
  if ((v2 & 8) == 0)
  {
    if ((v2 & 0x10) == 0)
    {
      return result;
    }

    goto LABEL_16;
  }

  v7 = *(a1 + 140);
  if (v7 < 0)
  {
    v8 = 11;
  }

  else
  {
    v8 = ((9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  result += v8;
  if ((v2 & 0x10) != 0)
  {
LABEL_16:
    v9 = *(a1 + 144);
    if (v9 < 0)
    {
      v10 = 11;
    }

    else
    {
      v10 = ((9 * (__clz(v9 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    result += v10;
  }

  return result;
}

uint64_t sub_275FA371C(uint64_t a1)
{
  if ((~*(a1 + 16) & 0x1D) != 0)
  {
    v13 = sub_275FA3618(a1);
  }

  else
  {
    v2 = TSP::Range::ByteSizeLong(*(a1 + 120));
    v3 = (9 * (__clz(v2 | 1) ^ 0x1F) + 73) >> 6;
    v4 = 10;
    v5 = *(a1 + 136);
    v6 = *(a1 + 140);
    v7 = (9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6;
    if (v5 >= 0)
    {
      v4 = v7;
    }

    v8 = 10;
    v9 = (9 * (__clz(v6 | 1) ^ 0x1F) + 73) >> 6;
    if (v6 >= 0)
    {
      v8 = v9;
    }

    v10 = *(a1 + 144);
    v11 = (9 * (__clz(v10 | 1) ^ 0x1F) + 73) >> 6;
    if (v10 >= 0)
    {
      v12 = v11;
    }

    else
    {
      v12 = 10;
    }

    v13 = v2 + v3 + v4 + v8 + v12 + 4;
  }

  v14 = *(a1 + 32);
  v15 = v13 + v14;
  v16 = *(a1 + 40);
  if (v16)
  {
    v17 = (v16 + 8);
  }

  else
  {
    v17 = 0;
  }

  if (v14)
  {
    v18 = 8 * v14;
    do
    {
      v19 = *v17++;
      v20 = TSP::Reference::ByteSizeLong(v19);
      v15 += v20 + ((9 * (__clz(v20 | 1) ^ 0x1F) + 73) >> 6);
      v18 -= 8;
    }

    while (v18);
  }

  v21 = *(a1 + 56);
  v22 = v15 + v21;
  v23 = *(a1 + 64);
  if (v23)
  {
    v24 = (v23 + 8);
  }

  else
  {
    v24 = 0;
  }

  if (v21)
  {
    v25 = 8 * v21;
    do
    {
      v26 = *v24++;
      v27 = TSP::Reference::ByteSizeLong(v26);
      v22 += v27 + ((9 * (__clz(v27 | 1) ^ 0x1F) + 73) >> 6);
      v25 -= 8;
    }

    while (v25);
  }

  v28 = *(a1 + 80);
  v29 = v22 + v28;
  v30 = *(a1 + 88);
  if (v30)
  {
    v31 = (v30 + 8);
  }

  else
  {
    v31 = 0;
  }

  if (v28)
  {
    v32 = 8 * v28;
    do
    {
      v33 = *v31++;
      v34 = TSP::Reference::ByteSizeLong(v33);
      v29 += v34 + ((9 * (__clz(v34 | 1) ^ 0x1F) + 73) >> 6);
      v32 -= 8;
    }

    while (v32);
  }

  v35 = *(a1 + 104);
  v36 = v29 + v35;
  v37 = *(a1 + 112);
  if (v37)
  {
    v38 = (v37 + 8);
  }

  else
  {
    v38 = 0;
  }

  if (v35)
  {
    v39 = 8 * v35;
    do
    {
      v40 = *v38++;
      v41 = TSP::Range::ByteSizeLong(v40);
      v36 += v41 + ((9 * (__clz(v41 | 1) ^ 0x1F) + 73) >> 6);
      v39 -= 8;
    }

    while (v39);
  }

  v42 = *(a1 + 16);
  if ((v42 & 2) != 0)
  {
    v43 = TSP::Reference::ByteSizeLong(*(a1 + 128));
    v36 += v43 + ((9 * (__clz(v43 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  if ((v42 & 0xE0) != 0)
  {
    v36 += (v42 >> 4) & 2;
    if ((v42 & 0x40) != 0)
    {
      v36 += ((9 * (__clz(*(a1 + 152) | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    if ((v42 & 0x80) != 0)
    {
      v44 = *(a1 + 156);
      v45 = ((9 * (__clz(v44 | 1) ^ 0x1F) + 73) >> 6) + 1;
      if (v44 >= 0)
      {
        v46 = v45;
      }

      else
      {
        v46 = 11;
      }

      v36 += v46;
    }
  }

  if (*(a1 + 8))
  {

    return google::protobuf::internal::ComputeUnknownFieldsSize();
  }

  else
  {
    *(a1 + 20) = v36;
    return v36;
  }
}

uint64_t sub_275FA3A28(uint64_t a1, void *lpsrc)
{
  v4 = __dynamic_cast(lpsrc, MEMORY[0x277D80A98], &unk_288500940, 0);
  if (v4)
  {

    return sub_275FA3AD0(a1, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, a1);
  }
}

uint64_t sub_275FA3AD0(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 8);
  if (v4)
  {
    result = sub_275FB576C((result + 8), (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  v5 = *(a2 + 32);
  if (v5)
  {
    v6 = *(a2 + 40);
    v7 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((v3 + 24));
    result = sub_275FB5808((v3 + 24), v7, (v6 + 8), v5, **(v3 + 40) - *(v3 + 32));
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
    result = sub_275FB5808((v3 + 48), v12, (v11 + 8), v10, **(v3 + 64) - *(v3 + 56));
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
    result = sub_275FB5808((v3 + 72), v17, (v16 + 8), v15, **(v3 + 88) - *(v3 + 80));
    v18 = *(v3 + 80) + v15;
    *(v3 + 80) = v18;
    v19 = *(v3 + 88);
    if (*v19 < v18)
    {
      *v19 = v18;
    }
  }

  v20 = *(a2 + 104);
  if (v20)
  {
    v21 = *(a2 + 112);
    v22 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((v3 + 96));
    result = sub_275FB69D8((v3 + 96), v22, (v21 + 8), v20, **(v3 + 112) - *(v3 + 104));
    v23 = *(v3 + 104) + v20;
    *(v3 + 104) = v23;
    v24 = *(v3 + 112);
    if (*v24 < v23)
    {
      *v24 = v23;
    }
  }

  v25 = *(a2 + 16);
  if (v25)
  {
    if (v25)
    {
      *(v3 + 16) |= 1u;
      v26 = *(v3 + 120);
      if (!v26)
      {
        v27 = *(v3 + 8);
        if (v27)
        {
          v27 = *(v27 & 0xFFFFFFFFFFFFFFFELL);
        }

        v26 = MEMORY[0x277C92D40](v27);
        *(v3 + 120) = v26;
      }

      if (*(a2 + 120))
      {
        v28 = *(a2 + 120);
      }

      else
      {
        v28 = MEMORY[0x277D809F8];
      }

      result = TSP::Range::MergeFrom(v26, v28);
      if ((v25 & 2) == 0)
      {
LABEL_18:
        if ((v25 & 4) == 0)
        {
          goto LABEL_19;
        }

        goto LABEL_43;
      }
    }

    else if ((v25 & 2) == 0)
    {
      goto LABEL_18;
    }

    *(v3 + 16) |= 2u;
    v29 = *(v3 + 128);
    if (!v29)
    {
      v30 = *(v3 + 8);
      if (v30)
      {
        v30 = *(v30 & 0xFFFFFFFFFFFFFFFELL);
      }

      v29 = MEMORY[0x277C92D60](v30);
      *(v3 + 128) = v29;
    }

    if (*(a2 + 128))
    {
      v31 = *(a2 + 128);
    }

    else
    {
      v31 = MEMORY[0x277D80A18];
    }

    result = TSP::Reference::MergeFrom(v29, v31);
    if ((v25 & 4) == 0)
    {
LABEL_19:
      if ((v25 & 8) == 0)
      {
        goto LABEL_20;
      }

      goto LABEL_44;
    }

LABEL_43:
    *(v3 + 136) = *(a2 + 136);
    if ((v25 & 8) == 0)
    {
LABEL_20:
      if ((v25 & 0x10) == 0)
      {
        goto LABEL_21;
      }

      goto LABEL_45;
    }

LABEL_44:
    *(v3 + 140) = *(a2 + 140);
    if ((v25 & 0x10) == 0)
    {
LABEL_21:
      if ((v25 & 0x20) == 0)
      {
        goto LABEL_22;
      }

      goto LABEL_46;
    }

LABEL_45:
    *(v3 + 144) = *(a2 + 144);
    if ((v25 & 0x20) == 0)
    {
LABEL_22:
      if ((v25 & 0x40) == 0)
      {
        goto LABEL_23;
      }

      goto LABEL_47;
    }

LABEL_46:
    *(v3 + 148) = *(a2 + 148);
    if ((v25 & 0x40) == 0)
    {
LABEL_23:
      if ((v25 & 0x80) == 0)
      {
LABEL_25:
        *(v3 + 16) |= v25;
        return result;
      }

LABEL_24:
      *(v3 + 156) = *(a2 + 156);
      goto LABEL_25;
    }

LABEL_47:
    *(v3 + 152) = *(a2 + 152);
    if ((v25 & 0x80) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_24;
  }

  return result;
}

google::protobuf::UnknownFieldSet *sub_275FA3D9C(google::protobuf::UnknownFieldSet *result, google::protobuf::UnknownFieldSet *a2)
{
  if (a2 != result)
  {
    v4 = result;
    sub_275FA2550(result);

    return sub_275FA3A28(v4, a2);
  }

  return result;
}

uint64_t sub_275FA3DE8(uint64_t a1)
{
  if ((~*(a1 + 16) & 0x1D) != 0)
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
    v14 = TSP::Range::IsInitialized(*(*(a1 + 112) + 8 * v12));
    v12 = v13;
    if ((v14 & 1) == 0)
    {
      return 0;
    }
  }

  v15 = *(a1 + 16);
  if (v15)
  {
    result = TSP::Range::IsInitialized(*(a1 + 120));
    if (!result)
    {
      return result;
    }

    v15 = *(a1 + 16);
  }

  if ((v15 & 2) == 0)
  {
    return 1;
  }

  result = TSP::Reference::IsInitialized(*(a1 + 128));
  if (result)
  {
    return 1;
  }

  return result;
}

uint64_t sub_275FA3F2C(uint64_t result, uint64_t a2)
{
  *result = &unk_2884FFC70;
  *(result + 8) = a2;
  *(result + 16) = 0;
  return result;
}

void sub_275FA3F80(uint64_t a1)
{
  sub_275F8A514((a1 + 8));

  JUMPOUT(0x277C93390);
}

uint64_t *sub_275FA3FD8(uint64_t a1)
{
  v2 = *(a1 + 8);
  result = (a1 + 8);
  if (v2)
  {
    return sub_275FB57B8(result);
  }

  return result;
}

const google::protobuf::UnknownFieldSet *sub_275FA3FE8(uint64_t a1, const google::protobuf::UnknownFieldSet *a2, unsigned __int8 *a3, google::protobuf::io::EpsCopyOutputStream *a4)
{
  v4 = *(a1 + 8);
  if (v4)
  {
    return google::protobuf::internal::WireFormat::InternalSerializeUnknownFieldsToArray(((v4 & 0xFFFFFFFFFFFFFFFELL) + 8), a2, a3, a4);
  }

  else
  {
    return a2;
  }
}

uint64_t sub_275FA4004(uint64_t a1)
{
  v2 = *(a1 + 8);
  v1 = a1 + 8;
  if (v2)
  {
    return google::protobuf::internal::ComputeUnknownFieldsSize();
  }

  *(v1 + 8) = 0;
  return 0;
}

void *sub_275FA4024(uint64_t a1, void *lpsrc)
{
  result = __dynamic_cast(lpsrc, MEMORY[0x277D80A98], &unk_288500958, 0);
  if (result)
  {
    v5 = result[1];
    if (v5)
    {

      return sub_275FB576C((a1 + 8), (v5 & 0xFFFFFFFFFFFFFFFELL) + 8);
    }
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, a1);
  }

  return result;
}

_BYTE *sub_275FA40E4(_BYTE *result, _BYTE *lpsrc)
{
  if (lpsrc != result)
  {
    v4 = result;
    v6 = result[8];
    v5 = (result + 8);
    if (v6)
    {
      sub_275FB57B8(v5);
    }

    return sub_275FA4024(v4, lpsrc);
  }

  return result;
}

uint64_t sub_275FA4178(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_2884FFD20;
  *(a1 + 8) = a2;
  *(a1 + 16) = 0;
  *(a1 + 32) = a2;
  *(a1 + 24) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  if (atomic_load_explicit(dword_2812F84B8, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  v3 = MEMORY[0x277D80A90];
  *(a1 + 56) = MEMORY[0x277D80A90];
  *(a1 + 64) = v3;
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
  *(a1 + 232) = 0;
  *(a1 + 240) = 1067450368;
  *(a1 + 244) = 0x101010101;
  *(a1 + 252) = 257;
  return a1;
}

uint64_t sub_275FA4260(uint64_t a1)
{
  sub_275FA42A0(a1);
  sub_275F8A514((a1 + 8));
  sub_275FB6A98((a1 + 32));
  return a1;
}

uint64_t sub_275FA42A0(uint64_t result)
{
  v1 = result;
  v2 = *(result + 56);
  v3 = MEMORY[0x277D80A90];
  if (v2 != MEMORY[0x277D80A90])
  {
    if (*(v2 + 23) < 0)
    {
      operator delete(*v2);
    }

    result = MEMORY[0x277C93390](v2, 0x1012C40EC159624);
  }

  v4 = *(v1 + 64);
  if (v4 != v3)
  {
    if (*(v4 + 23) < 0)
    {
      operator delete(*v4);
    }

    result = MEMORY[0x277C93390](v4, 0x1012C40EC159624);
  }

  if (v1 != &unk_2812F8EE8)
  {
    v5 = *(v1 + 72);
    if (v5)
    {
      TSP::Point::~Point(v5);
      MEMORY[0x277C93390]();
    }

    v6 = *(v1 + 80);
    if (v6)
    {
      TSP::Reference::~Reference(v6);
      MEMORY[0x277C93390]();
    }

    v7 = *(v1 + 88);
    if (v7)
    {
      TSP::Reference::~Reference(v7);
      MEMORY[0x277C93390]();
    }

    v8 = *(v1 + 96);
    if (v8)
    {
      TSP::Size::~Size(v8);
      MEMORY[0x277C93390]();
    }

    v9 = *(v1 + 104);
    if (v9)
    {
      TSP::Point::~Point(v9);
      MEMORY[0x277C93390]();
    }

    v10 = *(v1 + 112);
    if (v10)
    {
      TSP::Size::~Size(v10);
      MEMORY[0x277C93390]();
    }

    if (*(v1 + 120))
    {
      v11 = MEMORY[0x277C92930]();
      MEMORY[0x277C93390](v11, 0x10A1C40290C9B23);
    }

    if (*(v1 + 128))
    {
      v12 = MEMORY[0x277C92930]();
      MEMORY[0x277C93390](v12, 0x10A1C40290C9B23);
    }

    v13 = *(v1 + 136);
    if (v13)
    {
      TSP::Reference::~Reference(v13);
      MEMORY[0x277C93390]();
    }

    v14 = *(v1 + 144);
    if (v14)
    {
      TSP::Reference::~Reference(v14);
      MEMORY[0x277C93390]();
    }

    v15 = *(v1 + 152);
    if (v15)
    {
      TSP::Reference::~Reference(v15);
      MEMORY[0x277C93390]();
    }

    v16 = *(v1 + 160);
    if (v16)
    {
      TSP::Reference::~Reference(v16);
      MEMORY[0x277C93390]();
    }

    v17 = *(v1 + 168);
    if (v17)
    {
      v18 = sub_275FAD5E8(v17);
      MEMORY[0x277C93390](v18, 0x10A1C404B7A07F7);
    }

    result = *(v1 + 176);
    if (result)
    {
      MEMORY[0x277C92930]();

      JUMPOUT(0x277C93390);
    }
  }

  return result;
}

void sub_275FA44B4(uint64_t a1)
{
  sub_275FA4260(a1);

  JUMPOUT(0x277C93390);
}

void *sub_275FA44F4()
{
  if (atomic_load_explicit(dword_2812F84B8, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &unk_2812F8EE8;
}

google::protobuf::UnknownFieldSet *sub_275FA4534(google::protobuf::UnknownFieldSet *result)
{
  v1 = result;
  v2 = *(result + 10);
  if (v2 >= 1)
  {
    v3 = (*(result + 6) + 8);
    do
    {
      v4 = *v3++;
      result = TSCH::ChartUIState::Clear(v4);
      --v2;
    }

    while (v2);
    *(v1 + 40) = 0;
  }

  v5 = *(v1 + 16);
  if (!v5)
  {
    goto LABEL_15;
  }

  if ((v5 & 1) == 0)
  {
    if ((v5 & 2) == 0)
    {
      goto LABEL_8;
    }

LABEL_49:
    v10 = *(v1 + 64) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v10 + 23) < 0)
    {
      **v10 = 0;
      *(v10 + 8) = 0;
      if ((v5 & 4) != 0)
      {
        goto LABEL_53;
      }
    }

    else
    {
      *v10 = 0;
      *(v10 + 23) = 0;
      if ((v5 & 4) != 0)
      {
        goto LABEL_53;
      }
    }

LABEL_9:
    if ((v5 & 8) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_54;
  }

  v9 = *(v1 + 56) & 0xFFFFFFFFFFFFFFFELL;
  if (*(v9 + 23) < 0)
  {
    **v9 = 0;
    *(v9 + 8) = 0;
    if ((v5 & 2) != 0)
    {
      goto LABEL_49;
    }
  }

  else
  {
    *v9 = 0;
    *(v9 + 23) = 0;
    if ((v5 & 2) != 0)
    {
      goto LABEL_49;
    }
  }

LABEL_8:
  if ((v5 & 4) == 0)
  {
    goto LABEL_9;
  }

LABEL_53:
  result = TSP::Point::Clear(*(v1 + 72));
  if ((v5 & 8) == 0)
  {
LABEL_10:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_55;
  }

LABEL_54:
  result = TSP::Reference::Clear(*(v1 + 80));
  if ((v5 & 0x10) == 0)
  {
LABEL_11:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_12;
    }

LABEL_56:
    result = TSP::Size::Clear(*(v1 + 96));
    if ((v5 & 0x40) == 0)
    {
LABEL_13:
      if ((v5 & 0x80) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_14;
    }

    goto LABEL_57;
  }

LABEL_55:
  result = TSP::Reference::Clear(*(v1 + 88));
  if ((v5 & 0x20) != 0)
  {
    goto LABEL_56;
  }

LABEL_12:
  if ((v5 & 0x40) == 0)
  {
    goto LABEL_13;
  }

LABEL_57:
  result = TSP::Point::Clear(*(v1 + 104));
  if ((v5 & 0x80) != 0)
  {
LABEL_14:
    result = TSP::Size::Clear(*(v1 + 112));
  }

LABEL_15:
  if ((v5 & 0xFF00) == 0)
  {
    goto LABEL_25;
  }

  if ((v5 & 0x100) != 0)
  {
    result = TSK::SelectionPathArchive::Clear(*(v1 + 120));
    if ((v5 & 0x200) == 0)
    {
LABEL_18:
      if ((v5 & 0x400) == 0)
      {
        goto LABEL_19;
      }

      goto LABEL_42;
    }
  }

  else if ((v5 & 0x200) == 0)
  {
    goto LABEL_18;
  }

  result = TSK::SelectionPathArchive::Clear(*(v1 + 128));
  if ((v5 & 0x400) == 0)
  {
LABEL_19:
    if ((v5 & 0x800) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_43;
  }

LABEL_42:
  result = TSP::Reference::Clear(*(v1 + 136));
  if ((v5 & 0x800) == 0)
  {
LABEL_20:
    if ((v5 & 0x1000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_44;
  }

LABEL_43:
  result = TSP::Reference::Clear(*(v1 + 144));
  if ((v5 & 0x1000) == 0)
  {
LABEL_21:
    if ((v5 & 0x2000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_45;
  }

LABEL_44:
  result = TSP::Reference::Clear(*(v1 + 152));
  if ((v5 & 0x2000) == 0)
  {
LABEL_22:
    if ((v5 & 0x4000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_46;
  }

LABEL_45:
  result = TSP::Reference::Clear(*(v1 + 160));
  if ((v5 & 0x4000) == 0)
  {
LABEL_23:
    if ((v5 & 0x8000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_24;
  }

LABEL_46:
  result = sub_275FA476C(*(v1 + 168));
  if ((v5 & 0x8000) != 0)
  {
LABEL_24:
    result = TSK::SelectionPathArchive::Clear(*(v1 + 176));
  }

LABEL_25:
  if ((v5 & 0xFF0000) != 0)
  {
    *(v1 + 184) = 0;
    *(v1 + 192) = 0;
    *(v1 + 200) = 0;
  }

  if (HIBYTE(v5))
  {
    *(v1 + 212) = 0;
    *(v1 + 204) = 0;
    *(v1 + 220) = 0;
  }

  v6 = *(v1 + 20);
  if (v6)
  {
    *(v1 + 229) = 0;
    *(v1 + 221) = 0;
    *(v1 + 236) = 0x3FA0000000000000;
  }

  if ((v6 & 0x7F00) != 0)
  {
    *(v1 + 244) = 0x101010101;
    *(v1 + 252) = 257;
  }

  v8 = *(v1 + 8);
  v7 = (v1 + 8);
  v7[1] = 0;
  if (v8)
  {

    return sub_275FB57B8(v7);
  }

  return result;
}

google::protobuf::UnknownFieldSet *sub_275FA476C(uint64_t a1)
{
  sub_275FAD230((a1 + 24));
  result = sub_275FAD2C4((a1 + 168));
  v3 = *(a1 + 16);
  if ((v3 & 0x3F) == 0)
  {
    goto LABEL_9;
  }

  if ((v3 & 1) == 0)
  {
    if ((v3 & 2) == 0)
    {
      goto LABEL_4;
    }

LABEL_19:
    v7 = *(a1 + 320) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v7 + 23) < 0)
    {
      **v7 = 0;
      *(v7 + 8) = 0;
      if ((v3 & 4) != 0)
      {
        goto LABEL_23;
      }
    }

    else
    {
      *v7 = 0;
      *(v7 + 23) = 0;
      if ((v3 & 4) != 0)
      {
        goto LABEL_23;
      }
    }

LABEL_5:
    if ((v3 & 8) == 0)
    {
      goto LABEL_6;
    }

LABEL_27:
    result = TSP::UUID::Clear(*(a1 + 336));
    if ((v3 & 0x10) == 0)
    {
LABEL_7:
      if ((v3 & 0x20) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_8;
    }

    goto LABEL_28;
  }

  v6 = *(a1 + 312) & 0xFFFFFFFFFFFFFFFELL;
  if (*(v6 + 23) < 0)
  {
    **v6 = 0;
    *(v6 + 8) = 0;
    if ((v3 & 2) != 0)
    {
      goto LABEL_19;
    }
  }

  else
  {
    *v6 = 0;
    *(v6 + 23) = 0;
    if ((v3 & 2) != 0)
    {
      goto LABEL_19;
    }
  }

LABEL_4:
  if ((v3 & 4) == 0)
  {
    goto LABEL_5;
  }

LABEL_23:
  v8 = *(a1 + 328) & 0xFFFFFFFFFFFFFFFELL;
  if (*(v8 + 23) < 0)
  {
    **v8 = 0;
    *(v8 + 8) = 0;
    if ((v3 & 8) != 0)
    {
      goto LABEL_27;
    }
  }

  else
  {
    *v8 = 0;
    *(v8 + 23) = 0;
    if ((v3 & 8) != 0)
    {
      goto LABEL_27;
    }
  }

LABEL_6:
  if ((v3 & 0x10) == 0)
  {
    goto LABEL_7;
  }

LABEL_28:
  result = sub_275FAC4E0(*(a1 + 344));
  if ((v3 & 0x20) != 0)
  {
LABEL_8:
    result = sub_275FAC4E0(*(a1 + 352));
  }

LABEL_9:
  if ((v3 & 0xC0) != 0)
  {
    *(a1 + 360) = 0;
    *(a1 + 364) = 1;
  }

  v5 = *(a1 + 8);
  v4 = a1 + 8;
  *(v4 + 357) = 1;
  *(v4 + 8) = 0;
  if (v5)
  {

    return sub_275FB57B8(v4);
  }

  return result;
}

google::protobuf::UnknownFieldSet *sub_275FA497C(uint64_t a1, google::protobuf::UnknownFieldSet *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v4 = a2;
  v6 = *(a1 + 16);
  if ((v6 & 0x10000) != 0)
  {
    if (*a3 <= a2)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v7 = *(a1 + 184);
    *v4 = 13;
    *(v4 + 1) = v7;
    v4 = (v4 + 5);
    if ((v6 & 4) == 0)
    {
LABEL_3:
      if ((v6 & 0x20000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_22;
    }
  }

  else if ((v6 & 4) == 0)
  {
    goto LABEL_3;
  }

  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v8 = *(a1 + 72);
  *v4 = 18;
  v9 = *(v8 + 5);
  if (v9 > 0x7F)
  {
    *(v4 + 1) = v9 | 0x80;
    v11 = v9 >> 7;
    if (v9 >> 14)
    {
      v10 = v4 + 3;
      do
      {
        *(v10 - 1) = v11 | 0x80;
        v12 = v11 >> 7;
        ++v10;
        v13 = v11 >> 14;
        v11 >>= 7;
      }

      while (v13);
      *(v10 - 1) = v12;
    }

    else
    {
      *(v4 + 2) = v11;
      v10 = v4 + 3;
    }
  }

  else
  {
    *(v4 + 1) = v9;
    v10 = v4 + 2;
  }

  v4 = TSP::Point::_InternalSerialize(v8, v10, a3);
  if ((v6 & 0x20000) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_25;
  }

LABEL_22:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v14 = *(a1 + 188);
  *v4 = 24;
  *(v4 + 1) = v14;
  v4 = (v4 + 2);
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_35;
  }

LABEL_25:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v15 = *(a1 + 80);
  *v4 = 34;
  v16 = *(v15 + 5);
  if (v16 > 0x7F)
  {
    *(v4 + 1) = v16 | 0x80;
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
      *(v4 + 2) = v18;
      v17 = v4 + 3;
    }
  }

  else
  {
    *(v4 + 1) = v16;
    v17 = v4 + 2;
  }

  v4 = TSP::Reference::_InternalSerialize(v15, v17, a3);
  if ((v6 & 0x10) == 0)
  {
LABEL_6:
    if ((v6 & 0x40000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_45;
  }

LABEL_35:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v21 = *(a1 + 88);
  *v4 = 42;
  v22 = *(v21 + 5);
  if (v22 > 0x7F)
  {
    *(v4 + 1) = v22 | 0x80;
    v24 = v22 >> 7;
    if (v22 >> 14)
    {
      v23 = v4 + 3;
      do
      {
        *(v23 - 1) = v24 | 0x80;
        v25 = v24 >> 7;
        ++v23;
        v26 = v24 >> 14;
        v24 >>= 7;
      }

      while (v26);
      *(v23 - 1) = v25;
    }

    else
    {
      *(v4 + 2) = v24;
      v23 = v4 + 3;
    }
  }

  else
  {
    *(v4 + 1) = v22;
    v23 = v4 + 2;
  }

  v4 = TSP::Reference::_InternalSerialize(v21, v23, a3);
  if ((v6 & 0x40000) == 0)
  {
LABEL_7:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_58;
    }

    goto LABEL_48;
  }

LABEL_45:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v27 = *(a1 + 189);
  *v4 = 48;
  *(v4 + 1) = v27;
  v4 = (v4 + 2);
  if ((v6 & 0x20) != 0)
  {
LABEL_48:
    if (*a3 <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
    }

    v28 = *(a1 + 96);
    *v4 = 58;
    v29 = *(v28 + 5);
    if (v29 > 0x7F)
    {
      *(v4 + 1) = v29 | 0x80;
      v31 = v29 >> 7;
      if (v29 >> 14)
      {
        v30 = v4 + 3;
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
        *(v4 + 2) = v31;
        v30 = v4 + 3;
      }
    }

    else
    {
      *(v4 + 1) = v29;
      v30 = v4 + 2;
    }

    v4 = TSP::Size::_InternalSerialize(v28, v30, a3);
  }

LABEL_58:
  v34 = *(a1 + 40);
  if (v34)
  {
    for (i = 0; i != v34; ++i)
    {
      if (*a3 <= v4)
      {
        v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
      }

      v36 = *(*(a1 + 48) + 8 * i + 8);
      *v4 = 66;
      v37 = *(v36 + 11);
      if (v37 > 0x7F)
      {
        *(v4 + 1) = v37 | 0x80;
        v39 = v37 >> 7;
        if (v37 >> 14)
        {
          v38 = v4 + 3;
          do
          {
            *(v38 - 1) = v39 | 0x80;
            v40 = v39 >> 7;
            ++v38;
            v41 = v39 >> 14;
            v39 >>= 7;
          }

          while (v41);
          *(v38 - 1) = v40;
        }

        else
        {
          *(v4 + 2) = v39;
          v38 = v4 + 3;
        }
      }

      else
      {
        *(v4 + 1) = v37;
        v38 = v4 + 2;
      }

      v4 = TSCH::ChartUIState::_InternalSerialize(v36, v38, a3);
    }
  }

  if (*(a1 + 21))
  {
    if (*a3 <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
    }

    v42 = *(a1 + 244);
    *v4 = 72;
    *(v4 + 1) = v42;
    v4 = (v4 + 2);
  }

  v43 = *(a1 + 16);
  if ((v43 & 0x80000) != 0)
  {
    if (*a3 <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
    }

    v44 = *(a1 + 190);
    *v4 = 80;
    *(v4 + 1) = v44;
    v4 = (v4 + 2);
  }

  if ((v43 & 0x100000) != 0)
  {
    if (*a3 <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
    }

    v45 = *(a1 + 191);
    *v4 = 88;
    *(v4 + 1) = v45;
    v4 = (v4 + 2);
  }

  if ((*(a1 + 21) & 2) != 0)
  {
    if (*a3 <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
    }

    v46 = *(a1 + 245);
    *v4 = 96;
    *(v4 + 1) = v46;
    v4 = (v4 + 2);
  }

  v47 = *(a1 + 16);
  if ((v47 & 0x1000000) != 0)
  {
    if (*a3 <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
    }

    v48 = *(a1 + 204);
    *v4 = 104;
    *(v4 + 1) = v48;
    v4 = (v4 + 2);
  }

  if ((v47 & 0x200000) != 0)
  {
    if (*a3 <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
    }

    v49 = *(a1 + 192);
    *v4 = 112;
    if (v49 > 0x7F)
    {
      *(v4 + 1) = v49 | 0x80;
      v50 = v49 >> 7;
      if (v49 >> 14)
      {
        v4 = (v4 + 3);
        do
        {
          *(v4 - 1) = v50 | 0x80;
          v51 = v50 >> 7;
          v4 = (v4 + 1);
          v52 = v50 >> 14;
          v50 >>= 7;
        }

        while (v52);
        *(v4 - 1) = v51;
      }

      else
      {
        *(v4 + 2) = v50;
        v4 = (v4 + 3);
      }
    }

    else
    {
      *(v4 + 1) = v49;
      v4 = (v4 + 2);
    }
  }

  if ((*(a1 + 20) & 0x80) != 0)
  {
    if (*a3 <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
    }

    v53 = *(a1 + 240);
    *v4 = 125;
    *(v4 + 1) = v53;
    v4 = (v4 + 5);
  }

  v54 = *(a1 + 16);
  if ((v54 & 0x40) != 0)
  {
    if (*a3 <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
    }

    v55 = *(a1 + 104);
    *v4 = 386;
    v56 = *(v55 + 5);
    if (v56 > 0x7F)
    {
      *(v4 + 2) = v56 | 0x80;
      v58 = v56 >> 7;
      if (v56 >> 14)
      {
        v57 = v4 + 4;
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
        *(v4 + 3) = v58;
        v57 = v4 + 4;
      }
    }

    else
    {
      *(v4 + 2) = v56;
      v57 = v4 + 3;
    }

    v4 = TSP::Point::_InternalSerialize(v55, v57, a3);
    if ((v54 & 0x80) == 0)
    {
LABEL_106:
      if ((v54 & 1) == 0)
      {
        goto LABEL_107;
      }

      goto LABEL_132;
    }
  }

  else if ((v54 & 0x80) == 0)
  {
    goto LABEL_106;
  }

  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v61 = *(a1 + 112);
  *v4 = 394;
  v62 = *(v61 + 5);
  if (v62 > 0x7F)
  {
    *(v4 + 2) = v62 | 0x80;
    v64 = v62 >> 7;
    if (v62 >> 14)
    {
      v63 = v4 + 4;
      do
      {
        *(v63 - 1) = v64 | 0x80;
        v65 = v64 >> 7;
        ++v63;
        v66 = v64 >> 14;
        v64 >>= 7;
      }

      while (v66);
      *(v63 - 1) = v65;
    }

    else
    {
      *(v4 + 3) = v64;
      v63 = v4 + 4;
    }
  }

  else
  {
    *(v4 + 2) = v62;
    v63 = v4 + 3;
  }

  v4 = TSP::Size::_InternalSerialize(v61, v63, a3);
  if ((v54 & 1) == 0)
  {
LABEL_107:
    if ((v54 & 0x2000000) == 0)
    {
      goto LABEL_108;
    }

    goto LABEL_133;
  }

LABEL_132:
  v4 = sub_275F8C698(a3, 18, (*(a1 + 56) & 0xFFFFFFFFFFFFFFFELL), v4);
  if ((v54 & 0x2000000) == 0)
  {
LABEL_108:
    if ((v54 & 0x400000) == 0)
    {
      goto LABEL_109;
    }

LABEL_136:
    if (*a3 <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
    }

    v68 = *(a1 + 196);
    *v4 = 416;
    if (v68 > 0x7F)
    {
      *(v4 + 2) = v68 | 0x80;
      v69 = v68 >> 7;
      if (v68 >> 14)
      {
        v4 = (v4 + 4);
        do
        {
          *(v4 - 1) = v69 | 0x80;
          v70 = v69 >> 7;
          v4 = (v4 + 1);
          v71 = v69 >> 14;
          v69 >>= 7;
        }

        while (v71);
        *(v4 - 1) = v70;
        if ((v54 & 0x800000) != 0)
        {
          goto LABEL_147;
        }
      }

      else
      {
        *(v4 + 3) = v69;
        v4 = (v4 + 4);
        if ((v54 & 0x800000) != 0)
        {
          goto LABEL_147;
        }
      }
    }

    else
    {
      *(v4 + 2) = v68;
      v4 = (v4 + 3);
      if ((v54 & 0x800000) != 0)
      {
        goto LABEL_147;
      }
    }

LABEL_110:
    if ((v54 & 0x10000000) == 0)
    {
      goto LABEL_153;
    }

    goto LABEL_150;
  }

LABEL_133:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v67 = *(a1 + 205);
  *v4 = 408;
  *(v4 + 2) = v67;
  v4 = (v4 + 3);
  if ((v54 & 0x400000) != 0)
  {
    goto LABEL_136;
  }

LABEL_109:
  if ((v54 & 0x800000) == 0)
  {
    goto LABEL_110;
  }

LABEL_147:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v72 = *(a1 + 200);
  *v4 = 429;
  *(v4 + 2) = v72;
  v4 = (v4 + 6);
  if ((v54 & 0x10000000) != 0)
  {
LABEL_150:
    if (*a3 <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
    }

    v73 = *(a1 + 208);
    *v4 = 437;
    *(v4 + 2) = v73;
    v4 = (v4 + 6);
  }

LABEL_153:
  if ((*(a1 + 21) & 4) != 0)
  {
    if (*a3 <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
    }

    v74 = *(a1 + 246);
    *v4 = 440;
    *(v4 + 2) = v74;
    v4 = (v4 + 3);
  }

  v75 = *(a1 + 16);
  if ((v75 & 0x4000000) != 0)
  {
    if (*a3 <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
    }

    v76 = *(a1 + 206);
    *v4 = 448;
    *(v4 + 2) = v76;
    v4 = (v4 + 3);
  }

  if ((v75 & 0x100) != 0)
  {
    if (*a3 <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
    }

    v77 = *(a1 + 120);
    *v4 = 458;
    v78 = *(v77 + 10);
    if (v78 > 0x7F)
    {
      *(v4 + 2) = v78 | 0x80;
      v80 = v78 >> 7;
      if (v78 >> 14)
      {
        v79 = v4 + 4;
        do
        {
          *(v79 - 1) = v80 | 0x80;
          v81 = v80 >> 7;
          ++v79;
          v82 = v80 >> 14;
          v80 >>= 7;
        }

        while (v82);
        *(v79 - 1) = v81;
      }

      else
      {
        *(v4 + 3) = v80;
        v79 = v4 + 4;
      }
    }

    else
    {
      *(v4 + 2) = v78;
      v79 = v4 + 3;
    }

    v4 = TSK::SelectionPathArchive::_InternalSerialize(v77, v79, a3);
  }

  v83 = *(a1 + 20);
  if ((v83 & 0x800) != 0)
  {
    if (*a3 <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
    }

    v84 = *(a1 + 247);
    *v4 = 464;
    *(v4 + 2) = v84;
    v4 = (v4 + 3);
  }

  if ((v83 & 0x2000) != 0)
  {
    if (*a3 <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
    }

    v85 = *(a1 + 252);
    *v4 = 472;
    *(v4 + 2) = v85;
    v4 = (v4 + 3);
  }

  v86 = *(a1 + 16);
  if ((v86 & 0x8000000) != 0)
  {
    if (*a3 <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
    }

    v88 = *(a1 + 207);
    *v4 = 480;
    *(v4 + 2) = v88;
    v4 = (v4 + 3);
    if ((v86 & 0x200) == 0)
    {
LABEL_182:
      if ((v86 & 2) == 0)
      {
        goto LABEL_184;
      }

      goto LABEL_183;
    }
  }

  else if ((v86 & 0x200) == 0)
  {
    goto LABEL_182;
  }

  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v89 = *(a1 + 128);
  *v4 = 490;
  v90 = *(v89 + 10);
  if (v90 > 0x7F)
  {
    *(v4 + 2) = v90 | 0x80;
    v93 = v90 >> 7;
    if (v90 >> 14)
    {
      v91 = v4 + 4;
      do
      {
        *(v91 - 1) = v93 | 0x80;
        v101 = v93 >> 7;
        ++v91;
        v102 = v93 >> 14;
        v93 >>= 7;
      }

      while (v102);
      *(v91 - 1) = v101;
    }

    else
    {
      *(v4 + 3) = v93;
      v91 = v4 + 4;
    }
  }

  else
  {
    *(v4 + 2) = v90;
    v91 = v4 + 3;
  }

  v4 = TSK::SelectionPathArchive::_InternalSerialize(v89, v91, a3);
  if ((v86 & 2) != 0)
  {
LABEL_183:
    v4 = sub_275F8C698(a3, 30, (*(a1 + 64) & 0xFFFFFFFFFFFFFFFELL), v4);
  }

LABEL_184:
  if ((*(a1 + 21) & 0x10) != 0)
  {
    if (*a3 <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
    }

    v87 = *(a1 + 248);
    *v4 = 504;
    if (v87 > 0x7F)
    {
      *(v4 + 2) = v87 | 0x80;
      v92 = v87 >> 7;
      if (v87 >> 14)
      {
        v4 = (v4 + 4);
        do
        {
          *(v4 - 1) = v92 | 0x80;
          v94 = v92 >> 7;
          v4 = (v4 + 1);
          v95 = v92 >> 14;
          v92 >>= 7;
        }

        while (v95);
        *(v4 - 1) = v94;
      }

      else
      {
        *(v4 + 3) = v92;
        v4 = (v4 + 4);
      }
    }

    else
    {
      *(v4 + 2) = v87;
      v4 = (v4 + 3);
    }
  }

  v96 = *(a1 + 16);
  if ((v96 & 0x400) == 0)
  {
    if ((v96 & 0x20000000) == 0)
    {
      goto LABEL_205;
    }

LABEL_225:
    if (*a3 <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
    }

    v105 = *(a1 + 212);
    *v4 = 648;
    if (v105 > 0x7F)
    {
      *(v4 + 2) = v105 | 0x80;
      v106 = v105 >> 7;
      if (v105 >> 14)
      {
        v4 = (v4 + 4);
        do
        {
          *(v4 - 1) = v106 | 0x80;
          v107 = v106 >> 7;
          v4 = (v4 + 1);
          v108 = v106 >> 14;
          v106 >>= 7;
        }

        while (v108);
        *(v4 - 1) = v107;
        if (v96 < 0)
        {
          goto LABEL_236;
        }
      }

      else
      {
        *(v4 + 3) = v106;
        v4 = (v4 + 4);
        if (v96 < 0)
        {
          goto LABEL_236;
        }
      }
    }

    else
    {
      *(v4 + 2) = v105;
      v4 = (v4 + 3);
      if (v96 < 0)
      {
        goto LABEL_236;
      }
    }

LABEL_206:
    if ((v96 & 0x800) == 0)
    {
      goto LABEL_207;
    }

    goto LABEL_239;
  }

  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v97 = *(a1 + 136);
  *v4 = 642;
  v98 = *(v97 + 5);
  if (v98 > 0x7F)
  {
    *(v4 + 2) = v98 | 0x80;
    v100 = v98 >> 7;
    if (v98 >> 14)
    {
      v99 = v4 + 4;
      do
      {
        *(v99 - 1) = v100 | 0x80;
        v103 = v100 >> 7;
        ++v99;
        v104 = v100 >> 14;
        v100 >>= 7;
      }

      while (v104);
      *(v99 - 1) = v103;
    }

    else
    {
      *(v4 + 3) = v100;
      v99 = v4 + 4;
    }
  }

  else
  {
    *(v4 + 2) = v98;
    v99 = v4 + 3;
  }

  v4 = TSP::Reference::_InternalSerialize(v97, v99, a3);
  if ((v96 & 0x20000000) != 0)
  {
    goto LABEL_225;
  }

LABEL_205:
  if ((v96 & 0x80000000) == 0)
  {
    goto LABEL_206;
  }

LABEL_236:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v109 = *(a1 + 220);
  *v4 = 656;
  *(v4 + 2) = v109;
  v4 = (v4 + 3);
  if ((v96 & 0x800) == 0)
  {
LABEL_207:
    if ((v96 & 0x40000000) == 0)
    {
      goto LABEL_208;
    }

    goto LABEL_249;
  }

LABEL_239:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v110 = *(a1 + 144);
  *v4 = 666;
  v111 = *(v110 + 5);
  if (v111 > 0x7F)
  {
    *(v4 + 2) = v111 | 0x80;
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
      *(v4 + 3) = v113;
      v112 = v4 + 4;
    }
  }

  else
  {
    *(v4 + 2) = v111;
    v112 = v4 + 3;
  }

  v4 = TSP::Reference::_InternalSerialize(v110, v112, a3);
  if ((v96 & 0x40000000) == 0)
  {
LABEL_208:
    if ((v96 & 0x1000) == 0)
    {
      goto LABEL_262;
    }

    goto LABEL_252;
  }

LABEL_249:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v116 = *(a1 + 216);
  *v4 = 677;
  *(v4 + 2) = v116;
  v4 = (v4 + 6);
  if ((v96 & 0x1000) != 0)
  {
LABEL_252:
    if (*a3 <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
    }

    v117 = *(a1 + 152);
    *v4 = 682;
    v118 = *(v117 + 5);
    if (v118 > 0x7F)
    {
      *(v4 + 2) = v118 | 0x80;
      v120 = v118 >> 7;
      if (v118 >> 14)
      {
        v119 = v4 + 4;
        do
        {
          *(v119 - 1) = v120 | 0x80;
          v121 = v120 >> 7;
          ++v119;
          v122 = v120 >> 14;
          v120 >>= 7;
        }

        while (v122);
        *(v119 - 1) = v121;
      }

      else
      {
        *(v4 + 3) = v120;
        v119 = v4 + 4;
      }
    }

    else
    {
      *(v4 + 2) = v118;
      v119 = v4 + 3;
    }

    v4 = TSP::Reference::_InternalSerialize(v117, v119, a3);
  }

LABEL_262:
  v123 = *(a1 + 20);
  if (v123)
  {
    if (*a3 <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
    }

    v124 = *(a1 + 221);
    *v4 = 688;
    *(v4 + 2) = v124;
    v4 = (v4 + 3);
    if ((v123 & 0x4000) == 0)
    {
LABEL_264:
      if ((v123 & 2) == 0)
      {
        goto LABEL_275;
      }

      goto LABEL_272;
    }
  }

  else if ((v123 & 0x4000) == 0)
  {
    goto LABEL_264;
  }

  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v125 = *(a1 + 253);
  *v4 = 696;
  *(v4 + 2) = v125;
  v4 = (v4 + 3);
  if ((v123 & 2) != 0)
  {
LABEL_272:
    if (*a3 <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
    }

    v126 = *(a1 + 222);
    *v4 = 704;
    *(v4 + 2) = v126;
    v4 = (v4 + 3);
  }

LABEL_275:
  if ((*(a1 + 17) & 0x20) != 0)
  {
    if (*a3 <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
    }

    v127 = *(a1 + 160);
    *v4 = 714;
    v128 = *(v127 + 5);
    if (v128 > 0x7F)
    {
      *(v4 + 2) = v128 | 0x80;
      v130 = v128 >> 7;
      if (v128 >> 14)
      {
        v129 = v4 + 4;
        do
        {
          *(v129 - 1) = v130 | 0x80;
          v131 = v130 >> 7;
          ++v129;
          v132 = v130 >> 14;
          v130 >>= 7;
        }

        while (v132);
        *(v129 - 1) = v131;
      }

      else
      {
        *(v4 + 3) = v130;
        v129 = v4 + 4;
      }
    }

    else
    {
      *(v4 + 2) = v128;
      v129 = v4 + 3;
    }

    v4 = TSP::Reference::_InternalSerialize(v127, v129, a3);
  }

  if ((*(a1 + 20) & 4) != 0)
  {
    if (*a3 <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
    }

    v133 = *(a1 + 223);
    *v4 = 720;
    *(v4 + 2) = v133;
    v4 = (v4 + 3);
  }

  if ((*(a1 + 17) & 0x40) != 0)
  {
    if (*a3 <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
    }

    v134 = *(a1 + 168);
    *v4 = 730;
    v135 = *(v134 + 20);
    if (v135 > 0x7F)
    {
      *(v4 + 2) = v135 | 0x80;
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
        *(v4 + 3) = v137;
        v136 = v4 + 4;
      }
    }

    else
    {
      *(v4 + 2) = v135;
      v136 = v4 + 3;
    }

    v4 = sub_275FADCF8(v134, v136, a3);
  }

  v140 = *(a1 + 20);
  if ((v140 & 8) != 0)
  {
    if (*a3 <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
    }

    v141 = *(a1 + 224);
    *v4 = 736;
    *(v4 + 2) = v141;
    v4 = (v4 + 3);
    if ((v140 & 0x10) == 0)
    {
LABEL_303:
      if ((v140 & 0x20) == 0)
      {
        goto LABEL_314;
      }

      goto LABEL_311;
    }
  }

  else if ((v140 & 0x10) == 0)
  {
    goto LABEL_303;
  }

  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v142 = *(a1 + 228);
  *v4 = 749;
  *(v4 + 2) = v142;
  v4 = (v4 + 6);
  if ((v140 & 0x20) != 0)
  {
LABEL_311:
    if (*a3 <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
    }

    v143 = *(a1 + 232);
    *v4 = 757;
    *(v4 + 2) = v143;
    v4 = (v4 + 6);
  }

LABEL_314:
  if ((*(a1 + 17) & 0x80) != 0)
  {
    if (*a3 <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
    }

    v144 = *(a1 + 176);
    *v4 = 762;
    v145 = *(v144 + 10);
    if (v145 > 0x7F)
    {
      *(v4 + 2) = v145 | 0x80;
      v147 = v145 >> 7;
      if (v145 >> 14)
      {
        v146 = v4 + 4;
        do
        {
          *(v146 - 1) = v147 | 0x80;
          v148 = v147 >> 7;
          ++v146;
          v149 = v147 >> 14;
          v147 >>= 7;
        }

        while (v149);
        *(v146 - 1) = v148;
      }

      else
      {
        *(v4 + 3) = v147;
        v146 = v4 + 4;
      }
    }

    else
    {
      *(v4 + 2) = v145;
      v146 = v4 + 3;
    }

    v4 = TSK::SelectionPathArchive::_InternalSerialize(v144, v146, a3);
  }

  if ((*(a1 + 20) & 0x40) != 0)
  {
    if (*a3 <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
    }

    v150 = *(a1 + 236);
    *v4 = 901;
    *(v4 + 2) = v150;
    v4 = (v4 + 6);
  }

  v151 = *(a1 + 8);
  if ((v151 & 1) == 0)
  {
    return v4;
  }

  return google::protobuf::internal::WireFormat::InternalSerializeUnknownFieldsToArray(((v151 & 0xFFFFFFFFFFFFFFFELL) + 8), v4, a3, v4);
}