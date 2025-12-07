uint64_t sub_275FA5C10(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
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
      v7 = TSCH::ChartUIState::ByteSizeLong(v6);
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
  if (!*(a1 + 16))
  {
    goto LABEL_19;
  }

  if (v8)
  {
    v28 = *(a1 + 56) & 0xFFFFFFFFFFFFFFFELL;
    v29 = *(v28 + 23);
    v30 = *(v28 + 8);
    if ((v29 & 0x80u) == 0)
    {
      v30 = v29;
    }

    v2 += v30 + ((9 * (__clz(v30 | 1) ^ 0x1F) + 73) >> 6) + 2;
    if ((v8 & 2) == 0)
    {
LABEL_12:
      if ((v8 & 4) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_102;
    }
  }

  else if ((v8 & 2) == 0)
  {
    goto LABEL_12;
  }

  v31 = *(a1 + 64) & 0xFFFFFFFFFFFFFFFELL;
  v32 = *(v31 + 23);
  v33 = *(v31 + 8);
  if ((v32 & 0x80u) == 0)
  {
    v33 = v32;
  }

  v2 += v33 + ((9 * (__clz(v33 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v8 & 4) == 0)
  {
LABEL_13:
    if ((v8 & 8) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_103;
  }

LABEL_102:
  v34 = TSP::Point::ByteSizeLong(*(a1 + 72));
  v2 += v34 + ((9 * (__clz(v34 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v8 & 8) == 0)
  {
LABEL_14:
    if ((v8 & 0x10) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_104;
  }

LABEL_103:
  v35 = TSP::Reference::ByteSizeLong(*(a1 + 80));
  v2 += v35 + ((9 * (__clz(v35 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v8 & 0x10) == 0)
  {
LABEL_15:
    if ((v8 & 0x20) == 0)
    {
      goto LABEL_16;
    }

LABEL_105:
    v37 = TSP::Size::ByteSizeLong(*(a1 + 96));
    v2 += v37 + ((9 * (__clz(v37 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v8 & 0x40) == 0)
    {
LABEL_17:
      if ((v8 & 0x80) == 0)
      {
        goto LABEL_19;
      }

      goto LABEL_18;
    }

    goto LABEL_106;
  }

LABEL_104:
  v36 = TSP::Reference::ByteSizeLong(*(a1 + 88));
  v2 += v36 + ((9 * (__clz(v36 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v8 & 0x20) != 0)
  {
    goto LABEL_105;
  }

LABEL_16:
  if ((v8 & 0x40) == 0)
  {
    goto LABEL_17;
  }

LABEL_106:
  v38 = TSP::Point::ByteSizeLong(*(a1 + 104));
  v2 += v38 + ((9 * (__clz(v38 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v8 & 0x80) != 0)
  {
LABEL_18:
    v9 = TSP::Size::ByteSizeLong(*(a1 + 112));
    v2 += v9 + ((9 * (__clz(v9 | 1) ^ 0x1F) + 73) >> 6) + 2;
  }

LABEL_19:
  if ((v8 & 0xFF00) == 0)
  {
    goto LABEL_29;
  }

  if ((v8 & 0x100) != 0)
  {
    v39 = TSK::SelectionPathArchive::ByteSizeLong(*(a1 + 120));
    v2 += v39 + ((9 * (__clz(v39 | 1) ^ 0x1F) + 73) >> 6) + 2;
    if ((v8 & 0x200) == 0)
    {
LABEL_22:
      if ((v8 & 0x400) == 0)
      {
        goto LABEL_23;
      }

      goto LABEL_110;
    }
  }

  else if ((v8 & 0x200) == 0)
  {
    goto LABEL_22;
  }

  v40 = TSK::SelectionPathArchive::ByteSizeLong(*(a1 + 128));
  v2 += v40 + ((9 * (__clz(v40 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v8 & 0x400) == 0)
  {
LABEL_23:
    if ((v8 & 0x800) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_111;
  }

LABEL_110:
  v41 = TSP::Reference::ByteSizeLong(*(a1 + 136));
  v2 += v41 + ((9 * (__clz(v41 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v8 & 0x800) == 0)
  {
LABEL_24:
    if ((v8 & 0x1000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_112;
  }

LABEL_111:
  v42 = TSP::Reference::ByteSizeLong(*(a1 + 144));
  v2 += v42 + ((9 * (__clz(v42 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v8 & 0x1000) == 0)
  {
LABEL_25:
    if ((v8 & 0x2000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_113;
  }

LABEL_112:
  v43 = TSP::Reference::ByteSizeLong(*(a1 + 152));
  v2 += v43 + ((9 * (__clz(v43 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v8 & 0x2000) == 0)
  {
LABEL_26:
    if ((v8 & 0x4000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_114;
  }

LABEL_113:
  v44 = TSP::Reference::ByteSizeLong(*(a1 + 160));
  v2 += v44 + ((9 * (__clz(v44 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v8 & 0x4000) == 0)
  {
LABEL_27:
    if ((v8 & 0x8000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_28;
  }

LABEL_114:
  v45 = sub_275FAE72C(*(a1 + 168));
  v2 += v45 + ((9 * (__clz(v45 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v8 & 0x8000) != 0)
  {
LABEL_28:
    v10 = TSK::SelectionPathArchive::ByteSizeLong(*(a1 + 176));
    v2 += v10 + ((9 * (__clz(v10 | 1) ^ 0x1F) + 73) >> 6) + 2;
  }

LABEL_29:
  if ((v8 & 0xFF0000) != 0)
  {
    v11 = v2 + 5;
    if ((v8 & 0x10000) == 0)
    {
      v11 = v2;
    }

    v12.i64[0] = 0x200000002;
    v12.i64[1] = 0x200000002;
    v13 = v11 + vaddvq_s32(vandq_s8(vshlq_u32(vdupq_n_s32(v8), xmmword_27605AD50), v12));
    if ((v8 & 0x200000) != 0)
    {
      v14 = *(a1 + 192);
      v15 = ((9 * (__clz(v14 | 1) ^ 0x1F) + 73) >> 6) + 1;
      if (v14 >= 0)
      {
        v16 = v15;
      }

      else
      {
        v16 = 11;
      }

      v13 += v16;
    }

    if ((v8 & 0x400000) != 0)
    {
      v13 += ((9 * (__clz(*(a1 + 196) | 1) ^ 0x1F) + 73) >> 6) + 2;
    }

    if ((v8 & 0x800000) != 0)
    {
      v2 = v13 + 6;
    }

    else
    {
      v2 = v13;
    }
  }

  if (BYTE3(v8))
  {
    v17 = v2 + ((v8 >> 23) & 2);
    if ((v8 & 0x2000000) != 0)
    {
      v17 += 3;
    }

    if ((v8 & 0x4000000) != 0)
    {
      v17 += 3;
    }

    if ((v8 & 0x8000000) != 0)
    {
      v17 += 3;
    }

    if ((v8 & 0x10000000) != 0)
    {
      v17 += 6;
    }

    if ((v8 & 0x20000000) != 0)
    {
      v18 = *(a1 + 212);
      v19 = ((9 * (__clz(v18 | 1) ^ 0x1F) + 73) >> 6) + 2;
      if (v18 >= 0)
      {
        v20 = v19;
      }

      else
      {
        v20 = 12;
      }

      v17 += v20;
    }

    if ((v8 & 0x40000000) != 0)
    {
      v17 += 6;
    }

    if ((v8 & 0x80000000) == 0)
    {
      v2 = v17;
    }

    else
    {
      v2 = v17 + 3;
    }
  }

  v21 = *(a1 + 20);
  if (v21)
  {
    v22 = v2 + 3;
    if ((v21 & 1) == 0)
    {
      v22 = v2;
    }

    if ((v21 & 2) != 0)
    {
      v22 += 3;
    }

    if ((v21 & 4) != 0)
    {
      v22 += 3;
    }

    if ((v21 & 8) != 0)
    {
      v22 += 3;
    }

    if ((v21 & 0x10) != 0)
    {
      v22 += 6;
    }

    if ((v21 & 0x20) != 0)
    {
      v22 += 6;
    }

    if ((v21 & 0x40) != 0)
    {
      v22 += 6;
    }

    if ((v21 & 0x80) != 0)
    {
      v2 = v22 + 5;
    }

    else
    {
      v2 = v22;
    }
  }

  if ((v21 & 0x7F00) != 0)
  {
    v23 = v2 + ((v21 >> 8) & 2) + ((v21 >> 7) & 2);
    if ((v21 & 0x400) != 0)
    {
      v23 += 3;
    }

    if ((v21 & 0x800) != 0)
    {
      v23 += 3;
    }

    if ((v21 & 0x1000) != 0)
    {
      v24 = *(a1 + 248);
      v25 = ((9 * (__clz(v24 | 1) ^ 0x1F) + 73) >> 6) + 2;
      if (v24 >= 0)
      {
        v26 = v25;
      }

      else
      {
        v26 = 12;
      }

      v23 += v26;
    }

    if ((v21 & 0x2000) != 0)
    {
      v23 += 3;
    }

    if ((v21 & 0x4000) != 0)
    {
      v2 = v23 + 3;
    }

    else
    {
      v2 = v23;
    }
  }

  if (*(a1 + 8))
  {

    return google::protobuf::internal::ComputeUnknownFieldsSize();
  }

  else
  {
    *(a1 + 24) = v2;
    return v2;
  }
}

uint64_t sub_275FA6264(uint64_t a1, void *lpsrc)
{
  v4 = __dynamic_cast(lpsrc, MEMORY[0x277D80A98], &unk_288500970, 0);
  if (v4)
  {

    return sub_275FA630C(a1, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, a1);
  }
}

uint64_t sub_275FA630C(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 8);
  if (v4)
  {
    result = sub_275FB576C((result + 8), (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  v5 = *(a2 + 40);
  if (v5)
  {
    v6 = *(a2 + 48);
    v7 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((v3 + 32));
    result = sub_275FB6B1C((v3 + 32), v7, (v6 + 8), v5, **(v3 + 48) - *(v3 + 40));
    v8 = *(v3 + 40) + v5;
    *(v3 + 40) = v8;
    v9 = *(v3 + 48);
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
    }

    if ((v10 & 2) != 0)
    {
      *(v3 + 16) |= 2u;
      result = google::protobuf::internal::ArenaStringPtr::Set();
    }

    v11 = MEMORY[0x277D809F0];
    if ((v10 & 4) != 0)
    {
      *(v3 + 16) |= 4u;
      v12 = *(v3 + 72);
      if (!v12)
      {
        v13 = *(v3 + 8);
        if (v13)
        {
          v13 = *(v13 & 0xFFFFFFFFFFFFFFFELL);
        }

        v12 = MEMORY[0x277C92D30](v13);
        *(v3 + 72) = v12;
      }

      if (*(a2 + 72))
      {
        v14 = *(a2 + 72);
      }

      else
      {
        v14 = v11;
      }

      result = TSP::Point::MergeFrom(v12, v14);
    }

    v15 = MEMORY[0x277D80A18];
    if ((v10 & 8) != 0)
    {
      *(v3 + 16) |= 8u;
      v16 = *(v3 + 80);
      if (!v16)
      {
        v17 = *(v3 + 8);
        if (v17)
        {
          v17 = *(v17 & 0xFFFFFFFFFFFFFFFELL);
        }

        v16 = MEMORY[0x277C92D60](v17);
        *(v3 + 80) = v16;
      }

      if (*(a2 + 80))
      {
        v18 = *(a2 + 80);
      }

      else
      {
        v18 = v15;
      }

      result = TSP::Reference::MergeFrom(v16, v18);
    }

    if ((v10 & 0x10) != 0)
    {
      *(v3 + 16) |= 0x10u;
      v19 = *(v3 + 88);
      if (!v19)
      {
        v20 = *(v3 + 8);
        if (v20)
        {
          v20 = *(v20 & 0xFFFFFFFFFFFFFFFELL);
        }

        v19 = MEMORY[0x277C92D60](v20);
        *(v3 + 88) = v19;
      }

      if (*(a2 + 88))
      {
        v21 = *(a2 + 88);
      }

      else
      {
        v21 = v15;
      }

      result = TSP::Reference::MergeFrom(v19, v21);
    }

    v22 = MEMORY[0x277D809D8];
    if ((v10 & 0x20) != 0)
    {
      *(v3 + 16) |= 0x20u;
      v23 = *(v3 + 96);
      if (!v23)
      {
        v24 = *(v3 + 8);
        if (v24)
        {
          v24 = *(v24 & 0xFFFFFFFFFFFFFFFELL);
        }

        v23 = MEMORY[0x277C92D10](v24);
        *(v3 + 96) = v23;
      }

      if (*(a2 + 96))
      {
        v25 = *(a2 + 96);
      }

      else
      {
        v25 = v22;
      }

      result = TSP::Size::MergeFrom(v23, v25);
      if ((v10 & 0x40) == 0)
      {
LABEL_40:
        if ((v10 & 0x80) == 0)
        {
          goto LABEL_66;
        }

        goto LABEL_58;
      }
    }

    else if ((v10 & 0x40) == 0)
    {
      goto LABEL_40;
    }

    *(v3 + 16) |= 0x40u;
    v26 = *(v3 + 104);
    if (!v26)
    {
      v27 = *(v3 + 8);
      if (v27)
      {
        v27 = *(v27 & 0xFFFFFFFFFFFFFFFELL);
      }

      v26 = MEMORY[0x277C92D30](v27);
      *(v3 + 104) = v26;
    }

    if (*(a2 + 104))
    {
      v28 = *(a2 + 104);
    }

    else
    {
      v28 = v11;
    }

    result = TSP::Point::MergeFrom(v26, v28);
    if ((v10 & 0x80) != 0)
    {
LABEL_58:
      *(v3 + 16) |= 0x80u;
      v29 = *(v3 + 112);
      if (!v29)
      {
        v30 = *(v3 + 8);
        if (v30)
        {
          v30 = *(v30 & 0xFFFFFFFFFFFFFFFELL);
        }

        v29 = MEMORY[0x277C92D10](v30);
        *(v3 + 112) = v29;
      }

      if (*(a2 + 112))
      {
        v31 = *(a2 + 112);
      }

      else
      {
        v31 = v22;
      }

      result = TSP::Size::MergeFrom(v29, v31);
    }
  }

LABEL_66:
  if ((v10 & 0xFF00) == 0)
  {
    goto LABEL_140;
  }

  v32 = MEMORY[0x277D80750];
  if ((v10 & 0x100) != 0)
  {
    *(v3 + 16) |= 0x100u;
    v33 = *(v3 + 120);
    if (!v33)
    {
      v34 = *(v3 + 8);
      if (v34)
      {
        v34 = *(v34 & 0xFFFFFFFFFFFFFFFELL);
      }

      v33 = MEMORY[0x277C92CF0](v34);
      *(v3 + 120) = v33;
    }

    if (*(a2 + 120))
    {
      v35 = *(a2 + 120);
    }

    else
    {
      v35 = v32;
    }

    result = TSK::SelectionPathArchive::MergeFrom(v33, v35);
    if ((v10 & 0x200) == 0)
    {
LABEL_69:
      if ((v10 & 0x400) == 0)
      {
        goto LABEL_70;
      }

      goto LABEL_92;
    }
  }

  else if ((v10 & 0x200) == 0)
  {
    goto LABEL_69;
  }

  *(v3 + 16) |= 0x200u;
  v36 = *(v3 + 128);
  if (!v36)
  {
    v37 = *(v3 + 8);
    if (v37)
    {
      v37 = *(v37 & 0xFFFFFFFFFFFFFFFELL);
    }

    v36 = MEMORY[0x277C92CF0](v37);
    *(v3 + 128) = v36;
  }

  if (*(a2 + 128))
  {
    v38 = *(a2 + 128);
  }

  else
  {
    v38 = v32;
  }

  result = TSK::SelectionPathArchive::MergeFrom(v36, v38);
  if ((v10 & 0x400) == 0)
  {
LABEL_70:
    if ((v10 & 0x800) == 0)
    {
      goto LABEL_71;
    }

    goto LABEL_100;
  }

LABEL_92:
  *(v3 + 16) |= 0x400u;
  v39 = *(v3 + 136);
  if (!v39)
  {
    v40 = *(v3 + 8);
    if (v40)
    {
      v40 = *(v40 & 0xFFFFFFFFFFFFFFFELL);
    }

    v39 = MEMORY[0x277C92D60](v40);
    *(v3 + 136) = v39;
  }

  if (*(a2 + 136))
  {
    v41 = *(a2 + 136);
  }

  else
  {
    v41 = MEMORY[0x277D80A18];
  }

  result = TSP::Reference::MergeFrom(v39, v41);
  if ((v10 & 0x800) == 0)
  {
LABEL_71:
    if ((v10 & 0x1000) == 0)
    {
      goto LABEL_72;
    }

    goto LABEL_108;
  }

LABEL_100:
  *(v3 + 16) |= 0x800u;
  v42 = *(v3 + 144);
  if (!v42)
  {
    v43 = *(v3 + 8);
    if (v43)
    {
      v43 = *(v43 & 0xFFFFFFFFFFFFFFFELL);
    }

    v42 = MEMORY[0x277C92D60](v43);
    *(v3 + 144) = v42;
  }

  if (*(a2 + 144))
  {
    v44 = *(a2 + 144);
  }

  else
  {
    v44 = MEMORY[0x277D80A18];
  }

  result = TSP::Reference::MergeFrom(v42, v44);
  if ((v10 & 0x1000) == 0)
  {
LABEL_72:
    if ((v10 & 0x2000) == 0)
    {
      goto LABEL_73;
    }

    goto LABEL_116;
  }

LABEL_108:
  *(v3 + 16) |= 0x1000u;
  v45 = *(v3 + 152);
  if (!v45)
  {
    v46 = *(v3 + 8);
    if (v46)
    {
      v46 = *(v46 & 0xFFFFFFFFFFFFFFFELL);
    }

    v45 = MEMORY[0x277C92D60](v46);
    *(v3 + 152) = v45;
  }

  if (*(a2 + 152))
  {
    v47 = *(a2 + 152);
  }

  else
  {
    v47 = MEMORY[0x277D80A18];
  }

  result = TSP::Reference::MergeFrom(v45, v47);
  if ((v10 & 0x2000) == 0)
  {
LABEL_73:
    if ((v10 & 0x4000) == 0)
    {
      goto LABEL_74;
    }

    goto LABEL_124;
  }

LABEL_116:
  *(v3 + 16) |= 0x2000u;
  v48 = *(v3 + 160);
  if (!v48)
  {
    v49 = *(v3 + 8);
    if (v49)
    {
      v49 = *(v49 & 0xFFFFFFFFFFFFFFFELL);
    }

    v48 = MEMORY[0x277C92D60](v49);
    *(v3 + 160) = v48;
  }

  if (*(a2 + 160))
  {
    v50 = *(a2 + 160);
  }

  else
  {
    v50 = MEMORY[0x277D80A18];
  }

  result = TSP::Reference::MergeFrom(v48, v50);
  if ((v10 & 0x4000) == 0)
  {
LABEL_74:
    if ((v10 & 0x8000) == 0)
    {
      goto LABEL_140;
    }

    goto LABEL_132;
  }

LABEL_124:
  *(v3 + 16) |= 0x4000u;
  v51 = *(v3 + 168);
  if (!v51)
  {
    v52 = *(v3 + 8);
    if (v52)
    {
      v52 = *(v52 & 0xFFFFFFFFFFFFFFFELL);
    }

    v51 = sub_275FB0574(v52);
    *(v3 + 168) = v51;
  }

  if (*(a2 + 168))
  {
    v53 = *(a2 + 168);
  }

  else
  {
    v53 = &unk_2812F9288;
  }

  result = sub_275FA6AA0(v51, v53);
  if ((v10 & 0x8000) != 0)
  {
LABEL_132:
    *(v3 + 16) |= 0x8000u;
    v54 = *(v3 + 176);
    if (!v54)
    {
      v55 = *(v3 + 8);
      if (v55)
      {
        v55 = *(v55 & 0xFFFFFFFFFFFFFFFELL);
      }

      v54 = MEMORY[0x277C92CF0](v55);
      *(v3 + 176) = v54;
    }

    if (*(a2 + 176))
    {
      v56 = *(a2 + 176);
    }

    else
    {
      v56 = v32;
    }

    result = TSK::SelectionPathArchive::MergeFrom(v54, v56);
  }

LABEL_140:
  if ((v10 & 0xFF0000) == 0)
  {
    goto LABEL_151;
  }

  if ((v10 & 0x10000) != 0)
  {
    *(v3 + 184) = *(a2 + 184);
    if ((v10 & 0x20000) == 0)
    {
LABEL_143:
      if ((v10 & 0x40000) == 0)
      {
        goto LABEL_144;
      }

      goto LABEL_185;
    }
  }

  else if ((v10 & 0x20000) == 0)
  {
    goto LABEL_143;
  }

  *(v3 + 188) = *(a2 + 188);
  if ((v10 & 0x40000) == 0)
  {
LABEL_144:
    if ((v10 & 0x80000) == 0)
    {
      goto LABEL_145;
    }

    goto LABEL_186;
  }

LABEL_185:
  *(v3 + 189) = *(a2 + 189);
  if ((v10 & 0x80000) == 0)
  {
LABEL_145:
    if ((v10 & 0x100000) == 0)
    {
      goto LABEL_146;
    }

    goto LABEL_187;
  }

LABEL_186:
  *(v3 + 190) = *(a2 + 190);
  if ((v10 & 0x100000) == 0)
  {
LABEL_146:
    if ((v10 & 0x200000) == 0)
    {
      goto LABEL_147;
    }

    goto LABEL_188;
  }

LABEL_187:
  *(v3 + 191) = *(a2 + 191);
  if ((v10 & 0x200000) == 0)
  {
LABEL_147:
    if ((v10 & 0x400000) == 0)
    {
      goto LABEL_148;
    }

LABEL_189:
    *(v3 + 196) = *(a2 + 196);
    if ((v10 & 0x800000) == 0)
    {
      goto LABEL_150;
    }

    goto LABEL_149;
  }

LABEL_188:
  *(v3 + 192) = *(a2 + 192);
  if ((v10 & 0x400000) != 0)
  {
    goto LABEL_189;
  }

LABEL_148:
  if ((v10 & 0x800000) != 0)
  {
LABEL_149:
    *(v3 + 200) = *(a2 + 200);
  }

LABEL_150:
  *(v3 + 16) |= v10;
LABEL_151:
  if (!HIBYTE(v10))
  {
    goto LABEL_161;
  }

  if ((v10 & 0x1000000) != 0)
  {
    *(v3 + 204) = *(a2 + 204);
    if ((v10 & 0x2000000) == 0)
    {
LABEL_154:
      if ((v10 & 0x4000000) == 0)
      {
        goto LABEL_155;
      }

      goto LABEL_208;
    }
  }

  else if ((v10 & 0x2000000) == 0)
  {
    goto LABEL_154;
  }

  *(v3 + 205) = *(a2 + 205);
  if ((v10 & 0x4000000) == 0)
  {
LABEL_155:
    if ((v10 & 0x8000000) == 0)
    {
      goto LABEL_156;
    }

    goto LABEL_209;
  }

LABEL_208:
  *(v3 + 206) = *(a2 + 206);
  if ((v10 & 0x8000000) == 0)
  {
LABEL_156:
    if ((v10 & 0x10000000) == 0)
    {
      goto LABEL_157;
    }

    goto LABEL_210;
  }

LABEL_209:
  *(v3 + 207) = *(a2 + 207);
  if ((v10 & 0x10000000) == 0)
  {
LABEL_157:
    if ((v10 & 0x20000000) == 0)
    {
      goto LABEL_158;
    }

    goto LABEL_211;
  }

LABEL_210:
  *(v3 + 208) = *(a2 + 208);
  if ((v10 & 0x20000000) == 0)
  {
LABEL_158:
    if ((v10 & 0x40000000) == 0)
    {
      goto LABEL_159;
    }

LABEL_212:
    *(v3 + 216) = *(a2 + 216);
    if ((v10 & 0x80000000) == 0)
    {
      goto LABEL_160;
    }

LABEL_213:
    *(v3 + 220) = *(a2 + 220);
    goto LABEL_160;
  }

LABEL_211:
  *(v3 + 212) = *(a2 + 212);
  if ((v10 & 0x40000000) != 0)
  {
    goto LABEL_212;
  }

LABEL_159:
  if ((v10 & 0x80000000) != 0)
  {
    goto LABEL_213;
  }

LABEL_160:
  *(v3 + 16) |= v10;
LABEL_161:
  v57 = *(a2 + 20);
  if (!v57)
  {
    goto LABEL_172;
  }

  if (v57)
  {
    *(v3 + 221) = *(a2 + 221);
    if ((v57 & 2) == 0)
    {
LABEL_164:
      if ((v57 & 4) == 0)
      {
        goto LABEL_165;
      }

      goto LABEL_193;
    }
  }

  else if ((v57 & 2) == 0)
  {
    goto LABEL_164;
  }

  *(v3 + 222) = *(a2 + 222);
  if ((v57 & 4) == 0)
  {
LABEL_165:
    if ((v57 & 8) == 0)
    {
      goto LABEL_166;
    }

    goto LABEL_194;
  }

LABEL_193:
  *(v3 + 223) = *(a2 + 223);
  if ((v57 & 8) == 0)
  {
LABEL_166:
    if ((v57 & 0x10) == 0)
    {
      goto LABEL_167;
    }

    goto LABEL_195;
  }

LABEL_194:
  *(v3 + 224) = *(a2 + 224);
  if ((v57 & 0x10) == 0)
  {
LABEL_167:
    if ((v57 & 0x20) == 0)
    {
      goto LABEL_168;
    }

    goto LABEL_196;
  }

LABEL_195:
  *(v3 + 228) = *(a2 + 228);
  if ((v57 & 0x20) == 0)
  {
LABEL_168:
    if ((v57 & 0x40) == 0)
    {
      goto LABEL_169;
    }

LABEL_197:
    *(v3 + 236) = *(a2 + 236);
    if ((v57 & 0x80) == 0)
    {
      goto LABEL_171;
    }

    goto LABEL_170;
  }

LABEL_196:
  *(v3 + 232) = *(a2 + 232);
  if ((v57 & 0x40) != 0)
  {
    goto LABEL_197;
  }

LABEL_169:
  if ((v57 & 0x80) != 0)
  {
LABEL_170:
    *(v3 + 240) = *(a2 + 240);
  }

LABEL_171:
  *(v3 + 20) |= v57;
LABEL_172:
  if ((v57 & 0x7F00) == 0)
  {
    return result;
  }

  if ((v57 & 0x100) != 0)
  {
    *(v3 + 244) = *(a2 + 244);
    if ((v57 & 0x200) == 0)
    {
LABEL_175:
      if ((v57 & 0x400) == 0)
      {
        goto LABEL_176;
      }

      goto LABEL_201;
    }
  }

  else if ((v57 & 0x200) == 0)
  {
    goto LABEL_175;
  }

  *(v3 + 245) = *(a2 + 245);
  if ((v57 & 0x400) == 0)
  {
LABEL_176:
    if ((v57 & 0x800) == 0)
    {
      goto LABEL_177;
    }

    goto LABEL_202;
  }

LABEL_201:
  *(v3 + 246) = *(a2 + 246);
  if ((v57 & 0x800) == 0)
  {
LABEL_177:
    if ((v57 & 0x1000) == 0)
    {
      goto LABEL_178;
    }

    goto LABEL_203;
  }

LABEL_202:
  *(v3 + 247) = *(a2 + 247);
  if ((v57 & 0x1000) == 0)
  {
LABEL_178:
    if ((v57 & 0x2000) == 0)
    {
      goto LABEL_179;
    }

LABEL_204:
    *(v3 + 252) = *(a2 + 252);
    if ((v57 & 0x4000) == 0)
    {
      goto LABEL_181;
    }

    goto LABEL_180;
  }

LABEL_203:
  *(v3 + 248) = *(a2 + 248);
  if ((v57 & 0x2000) != 0)
  {
    goto LABEL_204;
  }

LABEL_179:
  if ((v57 & 0x4000) != 0)
  {
LABEL_180:
    *(v3 + 253) = *(a2 + 253);
  }

LABEL_181:
  *(v3 + 20) |= v57;
  return result;
}

uint64_t sub_275FA6AA0(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  if (v4)
  {
    sub_275FB576C((a1 + 8), (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  sub_275FAD548((a1 + 24), (a2 + 24));
  result = sub_275FAD598((a1 + 168), (a2 + 168));
  v6 = *(a2 + 16);
  if (v6)
  {
    if (v6)
    {
      *(a1 + 16) |= 1u;
      result = google::protobuf::internal::ArenaStringPtr::Set();
      if ((v6 & 2) == 0)
      {
LABEL_6:
        if ((v6 & 4) == 0)
        {
          goto LABEL_7;
        }

        goto LABEL_11;
      }
    }

    else if ((v6 & 2) == 0)
    {
      goto LABEL_6;
    }

    *(a1 + 16) |= 2u;
    result = google::protobuf::internal::ArenaStringPtr::Set();
    if ((v6 & 4) == 0)
    {
LABEL_7:
      if ((v6 & 8) == 0)
      {
        goto LABEL_20;
      }

      goto LABEL_12;
    }

LABEL_11:
    *(a1 + 16) |= 4u;
    result = google::protobuf::internal::ArenaStringPtr::Set();
    if ((v6 & 8) == 0)
    {
      goto LABEL_20;
    }

LABEL_12:
    *(a1 + 16) |= 8u;
    v7 = *(a1 + 336);
    if (!v7)
    {
      v8 = *(a1 + 8);
      if (v8)
      {
        v8 = *(v8 & 0xFFFFFFFFFFFFFFFELL);
      }

      v7 = MEMORY[0x277C92D20](v8);
      *(a1 + 336) = v7;
    }

    if (*(a2 + 336))
    {
      v9 = *(a2 + 336);
    }

    else
    {
      v9 = MEMORY[0x277D809E0];
    }

    result = TSP::UUID::MergeFrom(v7, v9);
LABEL_20:
    if ((v6 & 0x10) != 0)
    {
      *(a1 + 16) |= 0x10u;
      v11 = *(a1 + 344);
      if (!v11)
      {
        v12 = *(a1 + 8);
        if (v12)
        {
          v12 = *(v12 & 0xFFFFFFFFFFFFFFFELL);
        }

        v11 = sub_275FB03E0(v12);
        *(a1 + 344) = v11;
      }

      if (*(a2 + 344))
      {
        v13 = *(a2 + 344);
      }

      else
      {
        v13 = qword_2812F91E0;
      }

      result = sub_275FACD20(v11, v13);
      if ((v6 & 0x20) == 0)
      {
LABEL_22:
        if ((v6 & 0x40) == 0)
        {
          goto LABEL_23;
        }

        goto LABEL_45;
      }
    }

    else if ((v6 & 0x20) == 0)
    {
      goto LABEL_22;
    }

    *(a1 + 16) |= 0x20u;
    v14 = *(a1 + 352);
    if (!v14)
    {
      v15 = *(a1 + 8);
      if (v15)
      {
        v15 = *(v15 & 0xFFFFFFFFFFFFFFFELL);
      }

      v14 = sub_275FB03E0(v15);
      *(a1 + 352) = v14;
    }

    if (*(a2 + 352))
    {
      v16 = *(a2 + 352);
    }

    else
    {
      v16 = qword_2812F91E0;
    }

    result = sub_275FACD20(v14, v16);
    if ((v6 & 0x40) == 0)
    {
LABEL_23:
      if ((v6 & 0x80) == 0)
      {
LABEL_25:
        *(a1 + 16) |= v6;
        goto LABEL_26;
      }

LABEL_24:
      *(a1 + 364) = *(a2 + 364);
      goto LABEL_25;
    }

LABEL_45:
    *(a1 + 360) = *(a2 + 360);
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_24;
  }

LABEL_26:
  if ((v6 & 0x100) != 0)
  {
    v10 = *(a2 + 365);
    *(a1 + 16) |= 0x100u;
    *(a1 + 365) = v10;
  }

  return result;
}

google::protobuf::UnknownFieldSet *sub_275FA6CDC(google::protobuf::UnknownFieldSet *result, google::protobuf::UnknownFieldSet *a2)
{
  if (a2 != result)
  {
    v4 = result;
    sub_275FA4534(result);

    return sub_275FA6264(v4, a2);
  }

  return result;
}

uint64_t sub_275FA6D28(uint64_t a1)
{
  v2 = *(a1 + 40);
  while (v2 >= 1)
  {
    v3 = v2 - 1;
    IsInitialized = TSCH::ChartUIState::IsInitialized(*(*(a1 + 48) + 8 * v2));
    v2 = v3;
    if ((IsInitialized & 1) == 0)
    {
      return 0;
    }
  }

  v6 = *(a1 + 16);
  if ((v6 & 4) != 0)
  {
    result = TSP::Point::IsInitialized(*(a1 + 72));
    if (!result)
    {
      return result;
    }

    v6 = *(a1 + 16);
  }

  if ((v6 & 8) != 0)
  {
    result = TSP::Reference::IsInitialized(*(a1 + 80));
    if (!result)
    {
      return result;
    }

    v6 = *(a1 + 16);
  }

  if ((v6 & 0x10) != 0)
  {
    result = TSP::Reference::IsInitialized(*(a1 + 88));
    if (!result)
    {
      return result;
    }

    v6 = *(a1 + 16);
  }

  if ((v6 & 0x20) != 0)
  {
    result = TSP::Size::IsInitialized(*(a1 + 96));
    if (!result)
    {
      return result;
    }

    v6 = *(a1 + 16);
  }

  if ((v6 & 0x40) != 0)
  {
    result = TSP::Point::IsInitialized(*(a1 + 104));
    if (!result)
    {
      return result;
    }

    v6 = *(a1 + 16);
  }

  if ((v6 & 0x80) != 0)
  {
    result = TSP::Size::IsInitialized(*(a1 + 112));
    if (!result)
    {
      return result;
    }

    v6 = *(a1 + 16);
  }

  if ((v6 & 0x100) != 0)
  {
    result = TSK::SelectionPathArchive::IsInitialized(*(a1 + 120));
    if (!result)
    {
      return result;
    }

    v6 = *(a1 + 16);
  }

  if ((v6 & 0x200) != 0)
  {
    result = TSK::SelectionPathArchive::IsInitialized(*(a1 + 128));
    if (!result)
    {
      return result;
    }

    v6 = *(a1 + 16);
  }

  if ((v6 & 0x400) != 0)
  {
    result = TSP::Reference::IsInitialized(*(a1 + 136));
    if (!result)
    {
      return result;
    }

    v6 = *(a1 + 16);
  }

  if ((v6 & 0x800) != 0)
  {
    result = TSP::Reference::IsInitialized(*(a1 + 144));
    if (!result)
    {
      return result;
    }

    v6 = *(a1 + 16);
  }

  if ((v6 & 0x1000) != 0)
  {
    result = TSP::Reference::IsInitialized(*(a1 + 152));
    if (!result)
    {
      return result;
    }

    v6 = *(a1 + 16);
  }

  if ((v6 & 0x2000) != 0)
  {
    result = TSP::Reference::IsInitialized(*(a1 + 160));
    if (!result)
    {
      return result;
    }

    v6 = *(a1 + 16);
  }

  if ((v6 & 0x4000) != 0)
  {
    result = sub_275FA6E90(*(a1 + 168));
    if (!result)
    {
      return result;
    }

    v6 = *(a1 + 16);
  }

  if ((v6 & 0x8000) == 0)
  {
    return 1;
  }

  result = TSK::SelectionPathArchive::IsInitialized(*(a1 + 176));
  if (result)
  {
    return 1;
  }

  return result;
}

uint64_t sub_275FA6E90(uint64_t a1)
{
  v2 = *(a1 + 16);
  if ((v2 & 8) != 0)
  {
    result = TSP::UUID::IsInitialized(*(a1 + 336));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 0x10) != 0)
  {
    result = sub_275FACEF8(*(a1 + 344));
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

  result = sub_275FACEF8(*(a1 + 352));
  if (result)
  {
    return 1;
  }

  return result;
}

void *sub_275FA6F28(void *a1, uint64_t a2)
{
  *a1 = &unk_2884FFDD0;
  a1[1] = a2;
  a1[2] = 0;
  if (atomic_load_explicit(dword_2812F8540, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  a1[3] = 0;
  a1[4] = 0;
  return a1;
}

uint64_t *sub_275FA6F90(uint64_t *a1)
{
  if (a1 != &qword_2812F8FE8)
  {
    v2 = a1[3];
    if (v2)
    {
      TSP::Reference::~Reference(v2);
      MEMORY[0x277C93390]();
    }

    v3 = a1[4];
    if (v3)
    {
      TSP::Reference::~Reference(v3);
      MEMORY[0x277C93390]();
    }
  }

  sub_275F8A514(a1 + 1);
  return a1;
}

void sub_275FA700C(uint64_t *a1)
{
  sub_275FA6F90(a1);

  JUMPOUT(0x277C93390);
}

uint64_t *sub_275FA704C()
{
  if (atomic_load_explicit(dword_2812F8540, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &qword_2812F8FE8;
}

google::protobuf::UnknownFieldSet *sub_275FA708C(google::protobuf::UnknownFieldSet *result)
{
  v1 = result;
  v2 = *(result + 4);
  if ((v2 & 3) != 0)
  {
    if (v2)
    {
      result = TSP::Reference::Clear(*(result + 3));
    }

    if ((v2 & 2) != 0)
    {
      result = TSP::Reference::Clear(*(v1 + 32));
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

google::protobuf::internal *sub_275FA70FC(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v18 = a2;
  for (i = *(a3 + 92); (sub_275FB1588(a3, &v18, i) & 1) == 0; i = *(a3 + 92))
  {
    v6 = (v18 + 1);
    v7 = *v18;
    if ((*v18 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    v8 = v7 + (*v6 << 7);
    v7 = v8 - 128;
    if ((*v6 & 0x80000000) == 0)
    {
      v6 = (v18 + 2);
LABEL_6:
      v18 = v6;
      goto LABEL_7;
    }

    TagFallback = google::protobuf::internal::ReadTagFallback(v18, (v8 - 128));
    v18 = TagFallback;
    if (!TagFallback)
    {
      return 0;
    }

    v6 = TagFallback;
    v7 = v16;
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

          v12 = MEMORY[0x277C92D60](v13);
          *(a1 + 32) = v12;
LABEL_28:
          v6 = v18;
        }

LABEL_29:
        v11 = sub_27603450C(a3, v12, v6);
        goto LABEL_30;
      }
    }

    else if (v7 >> 3 == 1 && v7 == 10)
    {
      *(a1 + 16) |= 1u;
      v12 = *(a1 + 24);
      if (!v12)
      {
        v14 = *(a1 + 8);
        if (v14)
        {
          v14 = *(v14 & 0xFFFFFFFFFFFFFFFELL);
        }

        v12 = MEMORY[0x277C92D60](v14);
        *(a1 + 24) = v12;
        goto LABEL_28;
      }

      goto LABEL_29;
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
      return v18;
    }

    if ((*(a1 + 8) & 1) == 0)
    {
      sub_275FB5524((a1 + 8));
    }

    v11 = google::protobuf::internal::UnknownFieldParse();
LABEL_30:
    v18 = v11;
    if (!v11)
    {
      return 0;
    }
  }

  return v18;
}

unsigned __int8 *sub_275FA729C(uint64_t a1, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3, google::protobuf::io::EpsCopyOutputStream *a4)
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

    a2 = TSP::Reference::_InternalSerialize(v7, v9, a3);
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

    a2 = TSP::Reference::_InternalSerialize(v13, v15, a3);
  }

  v19 = *(a1 + 8);
  if ((v19 & 1) == 0)
  {
    return a2;
  }

  return google::protobuf::internal::WireFormat::InternalSerializeUnknownFieldsToArray(((v19 & 0xFFFFFFFFFFFFFFFELL) + 8), a2, a3, a4);
}

uint64_t sub_275FA742C(uint64_t a1)
{
  v2 = *(a1 + 16);
  if ((v2 & 3) == 0)
  {
    v3 = 0;
    goto LABEL_8;
  }

  if (v2)
  {
    v4 = TSP::Reference::ByteSizeLong(*(a1 + 24));
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
    v5 = TSP::Reference::ByteSizeLong(*(a1 + 32));
    v3 += v5 + ((9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_8:
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

uint64_t sub_275FA750C(uint64_t a1, void *lpsrc)
{
  v4 = __dynamic_cast(lpsrc, MEMORY[0x277D80A98], &unk_288500988, 0);
  if (v4)
  {

    return sub_275FA75B4(a1, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, a1);
  }
}

uint64_t sub_275FA75B4(uint64_t result, uint64_t a2)
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
    v6 = MEMORY[0x277D80A18];
    if (v5)
    {
      *(v3 + 16) |= 1u;
      v7 = *(v3 + 24);
      if (!v7)
      {
        v8 = *(v3 + 8);
        if (v8)
        {
          v8 = *(v8 & 0xFFFFFFFFFFFFFFFELL);
        }

        v7 = MEMORY[0x277C92D60](v8);
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
    }

    if ((v5 & 2) != 0)
    {
      *(v3 + 16) |= 2u;
      v10 = *(v3 + 32);
      if (!v10)
      {
        v11 = *(v3 + 8);
        if (v11)
        {
          v11 = *(v11 & 0xFFFFFFFFFFFFFFFELL);
        }

        v10 = MEMORY[0x277C92D60](v11);
        *(v3 + 32) = v10;
      }

      if (*(a2 + 32))
      {
        v12 = *(a2 + 32);
      }

      else
      {
        v12 = v6;
      }

      return TSP::Reference::MergeFrom(v10, v12);
    }
  }

  return result;
}

google::protobuf::UnknownFieldSet *sub_275FA76B0(google::protobuf::UnknownFieldSet *result, google::protobuf::UnknownFieldSet *a2)
{
  if (a2 != result)
  {
    v4 = result;
    sub_275FA708C(result);

    return sub_275FA750C(v4, a2);
  }

  return result;
}

uint64_t sub_275FA76FC(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    result = TSP::Reference::IsInitialized(*(a1 + 24));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 2) == 0)
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

uint64_t *sub_275FA7780(uint64_t *a1)
{
  if (a1 != &qword_2812F9010)
  {
    v2 = a1[3];
    if (v2)
    {
      TSP::Reference::~Reference(v2);
      MEMORY[0x277C93390]();
    }
  }

  sub_275F8A514(a1 + 1);
  return a1;
}

void sub_275FA77E4(uint64_t *a1)
{
  sub_275FA7780(a1);

  JUMPOUT(0x277C93390);
}

google::protobuf::UnknownFieldSet *sub_275FA7824(google::protobuf::UnknownFieldSet *result)
{
  v1 = result;
  if (*(result + 16))
  {
    result = TSP::Reference::Clear(*(result + 3));
  }

  v3 = *(v1 + 8);
  v2 = v1 + 8;
  *(v2 + 24) = 0;
  *(v2 + 8) = 0;
  if (v3)
  {

    return sub_275FB57B8(v2);
  }

  return result;
}

google::protobuf::internal *sub_275FA7884(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v22 = a2;
  v5 = 0;
  if ((sub_275FB1588(a3, &v22, *(a3 + 92)) & 1) == 0)
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
        goto LABEL_38;
      }

      v7 = TagFallback;
      v8 = v19;
LABEL_7:
      if (v8 >> 3 == 2)
      {
        if (v8 == 18)
        {
          *(a1 + 16) |= 1u;
          v13 = *(a1 + 24);
          if (!v13)
          {
            v14 = *(a1 + 8);
            if (v14)
            {
              v14 = *(v14 & 0xFFFFFFFFFFFFFFFELL);
            }

            v13 = MEMORY[0x277C92D60](v14);
            *(a1 + 24) = v13;
            v7 = v22;
          }

          v12 = sub_27603450C(a3, v13, v7);
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
            sub_275FB5524((a1 + 8));
          }

          v12 = google::protobuf::internal::UnknownFieldParse();
        }

        v22 = v12;
        if (!v12)
        {
          goto LABEL_38;
        }

        goto LABEL_31;
      }

      if (v8 >> 3 != 1 || v8 != 8)
      {
        goto LABEL_12;
      }

      v5 |= 2u;
      v15 = (v7 + 1);
      LODWORD(v16) = *v7;
      if ((*v7 & 0x80000000) == 0)
      {
        goto LABEL_30;
      }

      v17 = *v15;
      v16 = (v16 + (v17 << 7) - 128);
      if ((v17 & 0x80000000) == 0)
      {
        v15 = (v7 + 2);
LABEL_30:
        v22 = v15;
        *(a1 + 32) = v16;
        goto LABEL_31;
      }

      v20 = google::protobuf::internal::VarintParseSlow32(v7, v16);
      v22 = v20;
      *(a1 + 32) = v21;
      if (!v20)
      {
LABEL_38:
        v22 = 0;
        goto LABEL_2;
      }

LABEL_31:
      if (sub_275FB1588(a3, &v22, *(a3 + 92)))
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

unsigned __int8 *sub_275FA7A60(uint64_t a1, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3, google::protobuf::io::EpsCopyOutputStream *a4)
{
  v6 = *(a1 + 16);
  if ((v6 & 2) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v7 = *(a1 + 32);
    *a2 = 8;
    if (v7 <= 0x7F)
    {
      a2[1] = v7;
      a2 += 2;
      if ((v6 & 1) == 0)
      {
        goto LABEL_24;
      }

      goto LABEL_10;
    }

    a2[1] = v7 | 0x80;
    v8 = v7 >> 7;
    if (v7 >> 14)
    {
      a2 += 3;
      do
      {
        *(a2 - 1) = v8 | 0x80;
        v13 = v8 >> 7;
        ++a2;
        v14 = v8 >> 14;
        v8 >>= 7;
      }

      while (v14);
      *(a2 - 1) = v13;
      if ((v6 & 1) == 0)
      {
        goto LABEL_24;
      }

      goto LABEL_10;
    }

    a2[2] = v8;
    a2 += 3;
  }

  if ((v6 & 1) == 0)
  {
    goto LABEL_24;
  }

LABEL_10:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v9 = *(a1 + 24);
  *a2 = 18;
  v10 = *(v9 + 5);
  if (v10 > 0x7F)
  {
    a2[1] = v10 | 0x80;
    v12 = v10 >> 7;
    if (v10 >> 14)
    {
      v11 = a2 + 3;
      do
      {
        *(v11 - 1) = v12 | 0x80;
        v15 = v12 >> 7;
        ++v11;
        v16 = v12 >> 14;
        v12 >>= 7;
      }

      while (v16);
      *(v11 - 1) = v15;
    }

    else
    {
      a2[2] = v12;
      v11 = a2 + 3;
    }
  }

  else
  {
    a2[1] = v10;
    v11 = a2 + 2;
  }

  a2 = TSP::Reference::_InternalSerialize(v9, v11, a3);
LABEL_24:
  v17 = *(a1 + 8);
  if ((v17 & 1) == 0)
  {
    return a2;
  }

  return google::protobuf::internal::WireFormat::InternalSerializeUnknownFieldsToArray(((v17 & 0xFFFFFFFFFFFFFFFELL) + 8), a2, a3, a4);
}

uint64_t sub_275FA7BE8(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v4 = TSP::Reference::ByteSizeLong(*(a1 + 24));
    result = v4 + ((9 * (__clz(v4 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((*(a1 + 16) & 2) == 0)
    {
      return result;
    }

    goto LABEL_5;
  }

  result = 0;
  if ((v2 & 2) != 0)
  {
LABEL_5:
    result += ((9 * (__clz(*(a1 + 32) | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  return result;
}

uint64_t sub_275FA7C70(uint64_t a1)
{
  if ((~*(a1 + 16) & 3) != 0)
  {
    v3 = sub_275FA7BE8(a1);
  }

  else
  {
    v2 = TSP::Reference::ByteSizeLong(*(a1 + 24));
    v3 = v2 + ((9 * (__clz(*(a1 + 32) | 1) ^ 0x1F) + 73) >> 6) + ((9 * (__clz(v2 | 1) ^ 0x1F) + 73) >> 6) + 2;
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

uint64_t sub_275FA7D2C(uint64_t a1, void *lpsrc)
{
  v4 = __dynamic_cast(lpsrc, MEMORY[0x277D80A98], &unk_2885009A0, 0);
  if (v4)
  {

    return sub_275FA7DD4(a1, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, a1);
  }
}

uint64_t sub_275FA7DD4(uint64_t result, uint64_t a2)
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

        v6 = MEMORY[0x277C92D60](v7);
        *(v3 + 24) = v6;
      }

      if (*(a2 + 24))
      {
        v8 = *(a2 + 24);
      }

      else
      {
        v8 = MEMORY[0x277D80A18];
      }

      result = TSP::Reference::MergeFrom(v6, v8);
    }

    if ((v5 & 2) != 0)
    {
      *(v3 + 32) = *(a2 + 32);
    }

    *(v3 + 16) |= v5;
  }

  return result;
}

google::protobuf::UnknownFieldSet *sub_275FA7E88(google::protobuf::UnknownFieldSet *result, google::protobuf::UnknownFieldSet *a2)
{
  if (a2 != result)
  {
    v4 = result;
    sub_275FA7824(result);

    return sub_275FA7D2C(v4, a2);
  }

  return result;
}

uint64_t sub_275FA7ED4(uint64_t a1)
{
  if ((~*(a1 + 16) & 3) != 0)
  {
    return 0;
  }

  else
  {
    return TSP::Reference::IsInitialized(*(a1 + 24));
  }
}

uint64_t sub_275FA7F2C(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_2884FFF30;
  *(a1 + 8) = a2;
  *(a1 + 16) = a2;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  if (atomic_load_explicit(dword_2812F8500, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return a1;
}

uint64_t sub_275FA7FB4(uint64_t a1)
{
  sub_275F8A514((a1 + 8));
  sub_275FB6BDC((a1 + 16));
  return a1;
}

void sub_275FA7FF4(uint64_t a1)
{
  sub_275FA7FB4(a1);

  JUMPOUT(0x277C93390);
}

google::protobuf::UnknownFieldSet *sub_275FA8034(google::protobuf::UnknownFieldSet *result)
{
  v1 = result;
  v2 = *(result + 6);
  if (v2 >= 1)
  {
    v3 = (*(result + 4) + 8);
    do
    {
      v4 = *v3++;
      result = sub_275FA7824(v4);
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

google::protobuf::internal *sub_275FA80B0(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
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
          v13 = sub_275FAFEB8(*(a1 + 16));
          v14 = *(a1 + 24);
          v15 = *(a1 + 32) + 8 * v14;
          *(a1 + 24) = v14 + 1;
          *(v15 + 8) = v13;
          v10 = v20;
LABEL_22:
          v9 = sub_276036C60(a3, v13, v10);
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

unsigned __int8 *sub_275FA8280(uint64_t a1, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3, google::protobuf::io::EpsCopyOutputStream *a4)
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

      a2 = sub_275FA7A60(v8, v10, a3, a4);
    }
  }

  v14 = *(a1 + 8);
  if ((v14 & 1) == 0)
  {
    return a2;
  }

  return google::protobuf::internal::WireFormat::InternalSerializeUnknownFieldsToArray(((v14 & 0xFFFFFFFFFFFFFFFELL) + 8), a2, a3, a4);
}

uint64_t sub_275FA83A4(uint64_t a1)
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
      v7 = sub_275FA7C70(v6);
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

uint64_t sub_275FA845C(uint64_t a1, void *lpsrc)
{
  v4 = __dynamic_cast(lpsrc, MEMORY[0x277D80A98], &unk_2885009B8, 0);
  if (v4)
  {

    return sub_275FA8504(a1, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, a1);
  }
}

uint64_t sub_275FA8504(uint64_t result, uint64_t a2)
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
    result = sub_275FB6C60((v3 + 16), v7, (v6 + 8), v5, **(v3 + 32) - *(v3 + 24));
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

google::protobuf::UnknownFieldSet *sub_275FA85A4(google::protobuf::UnknownFieldSet *result, google::protobuf::UnknownFieldSet *a2)
{
  if (a2 != result)
  {
    v4 = result;
    sub_275FA8034(result);

    return sub_275FA845C(v4, a2);
  }

  return result;
}

BOOL sub_275FA85F8(uint64_t a1)
{
  v2 = *(a1 + 8);
  do
  {
    v3 = v2;
    if (v2 < 1)
    {
      break;
    }

    v4 = *(*(a1 + 16) + 8 * v2);
    if ((~*(v4 + 16) & 3) != 0)
    {
      break;
    }

    --v2;
  }

  while ((TSP::Reference::IsInitialized(*(v4 + 24)) & 1) != 0);
  return v3 < 1;
}

uint64_t sub_275FA8698(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_2884FFFE0;
  *(a1 + 8) = a2;
  *(a1 + 16) = a2;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  if (atomic_load_explicit(dword_2812F82F8, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return a1;
}

uint64_t sub_275FA8720(uint64_t a1)
{
  sub_275F8A514((a1 + 8));
  sub_275FB56E8((a1 + 16));
  return a1;
}

void sub_275FA8760(uint64_t a1)
{
  sub_275FA8720(a1);

  JUMPOUT(0x277C93390);
}

google::protobuf::UnknownFieldSet *sub_275FA87A0(google::protobuf::UnknownFieldSet *result)
{
  v1 = result;
  v2 = *(result + 6);
  if (v2 >= 1)
  {
    v3 = (*(result + 4) + 8);
    do
    {
      v4 = *v3++;
      result = TSP::Reference::Clear(v4);
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

google::protobuf::internal *sub_275FA881C(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
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
      if (v6 == 10)
      {
        v9 = v5 - 1;
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
          v13 = MEMORY[0x277C92D60](*(a1 + 16));
          v14 = *(a1 + 24);
          v15 = *(a1 + 32) + 8 * v14;
          *(a1 + 24) = v14 + 1;
          *(v15 + 8) = v13;
          v10 = v20;
LABEL_22:
          v9 = sub_27603450C(a3, v13, v10);
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

unsigned __int8 *sub_275FA89EC(uint64_t a1, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3, google::protobuf::io::EpsCopyOutputStream *a4)
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
      *a2 = 10;
      v9 = *(v8 + 5);
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

      a2 = TSP::Reference::_InternalSerialize(v8, v10, a3);
    }
  }

  v14 = *(a1 + 8);
  if ((v14 & 1) == 0)
  {
    return a2;
  }

  return google::protobuf::internal::WireFormat::InternalSerializeUnknownFieldsToArray(((v14 & 0xFFFFFFFFFFFFFFFELL) + 8), a2, a3, a4);
}

uint64_t sub_275FA8B10(uint64_t a1)
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

uint64_t sub_275FA8BC8(uint64_t a1, void *lpsrc)
{
  v4 = __dynamic_cast(lpsrc, MEMORY[0x277D80A98], &unk_2885009D0, 0);
  if (v4)
  {

    return sub_275F93D18(a1, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, a1);
  }
}

google::protobuf::UnknownFieldSet *sub_275FA8C70(google::protobuf::UnknownFieldSet *result, google::protobuf::UnknownFieldSet *a2)
{
  if (a2 != result)
  {
    v4 = result;
    sub_275FA87A0(result);

    return sub_275FA8BC8(v4, a2);
  }

  return result;
}

BOOL sub_275FA8CBC(uint64_t a1)
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
    IsInitialized = TSP::Reference::IsInitialized(*(*(a1 + 32) + 8 * v2));
    v2 = v4;
  }

  while ((IsInitialized & 1) != 0);
  return v3 < 1;
}

void *sub_275FA8D50(void *a1, uint64_t a2)
{
  *a1 = &unk_288500090;
  a1[1] = a2;
  a1[3] = a2;
  a1[2] = 0;
  a1[4] = 0;
  a1[5] = 0;
  if (atomic_load_explicit(dword_2812F8318, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  a1[6] = 0;
  a1[7] = 0;
  return a1;
}

void *sub_275FA8DDC(void *a1)
{
  if (a1 != qword_2812F9098)
  {
    v2 = a1[6];
    if (v2)
    {
      TSP::Reference::~Reference(v2);
      MEMORY[0x277C93390]();
    }

    if (a1[7])
    {
      v3 = MEMORY[0x277C92AB0]();
      MEMORY[0x277C93390](v3, 0x10A1C40290C9B23);
    }
  }

  sub_275F8A514(a1 + 1);
  sub_275FB6D20(a1 + 3);
  return a1;
}

void sub_275FA8E6C(void *a1)
{
  sub_275FA8DDC(a1);

  JUMPOUT(0x277C93390);
}

google::protobuf::UnknownFieldSet *sub_275FA8EAC(google::protobuf::UnknownFieldSet *result)
{
  v1 = result;
  v2 = *(result + 8);
  if (v2 >= 1)
  {
    v3 = (*(result + 5) + 8);
    do
    {
      v4 = *v3++;
      result = TSP::UUIDPath::Clear(v4);
      --v2;
    }

    while (v2);
    *(v1 + 32) = 0;
  }

  v5 = *(v1 + 16);
  if ((v5 & 3) != 0)
  {
    if (v5)
    {
      result = TSP::Reference::Clear(*(v1 + 48));
    }

    if ((v5 & 2) != 0)
    {
      result = TSP::UUIDPath::Clear(*(v1 + 56));
    }
  }

  v7 = *(v1 + 8);
  v6 = v1 + 8;
  *(v6 + 8) = 0;
  if (v7)
  {

    return sub_275FB57B8(v6);
  }

  return result;
}

google::protobuf::internal *sub_275FA8F50(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v28 = a2;
  for (i = *(a3 + 92); ; i = *(a3 + 92))
  {
    if (sub_275FB1588(a3, &v28, i))
    {
      return v28;
    }

    v6 = (v28 + 1);
    v7 = *v28;
    if ((*v28 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    v8 = v7 + (*v6 << 7);
    v7 = v8 - 128;
    if ((*v6 & 0x80000000) == 0)
    {
      v6 = (v28 + 2);
LABEL_6:
      v28 = v6;
      goto LABEL_7;
    }

    TagFallback = google::protobuf::internal::ReadTagFallback(v28, (v8 - 128));
    v28 = TagFallback;
    if (!TagFallback)
    {
      return 0;
    }

    v6 = TagFallback;
    v7 = v26;
LABEL_7:
    v9 = v7 >> 3;
    if (v7 >> 3 == 3)
    {
      break;
    }

    if (v9 == 2)
    {
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

        v13 = MEMORY[0x277C92D50](v14);
        *(a1 + 56) = v13;
        v6 = v28;
      }

      v12 = sub_276034C5C(a3, v13, v6);
    }

    else
    {
      if (v9 != 1 || v7 != 10)
      {
        goto LABEL_13;
      }

      *(a1 + 16) |= 1u;
      v23 = *(a1 + 48);
      if (!v23)
      {
        v24 = *(a1 + 8);
        if (v24)
        {
          v24 = *(v24 & 0xFFFFFFFFFFFFFFFELL);
        }

        v23 = MEMORY[0x277C92D60](v24);
        *(a1 + 48) = v23;
        v6 = v28;
      }

      v12 = sub_27603450C(a3, v23, v6);
    }

LABEL_44:
    v28 = v12;
    if (!v12)
    {
      return 0;
    }

LABEL_45:
    ;
  }

  if (v7 == 26)
  {
    v15 = v6 - 1;
    while (1)
    {
      v16 = (v15 + 1);
      v28 = (v15 + 1);
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
      v19 = MEMORY[0x277C92D50](*(a1 + 24));
      v20 = *(a1 + 32);
      v21 = *(a1 + 40) + 8 * v20;
      *(a1 + 32) = v20 + 1;
      *(v21 + 8) = v19;
      v16 = v28;
LABEL_33:
      v15 = sub_276034C5C(a3, v19, v16);
      v28 = v15;
      if (!v15)
      {
        return 0;
      }

      if (*a3 <= v15 || *v15 != 26)
      {
        goto LABEL_45;
      }
    }
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
      sub_275FB5524((a1 + 8));
    }

    v12 = google::protobuf::internal::UnknownFieldParse();
    goto LABEL_44;
  }

  *(a3 + 80) = v7 - 1;
  return v28;
}

unsigned __int8 *sub_275FA91CC(uint64_t a1, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3, google::protobuf::io::EpsCopyOutputStream *a4)
{
  v6 = *(a1 + 16);
  if (v6)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v7 = *(a1 + 48);
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

    a2 = TSP::Reference::_InternalSerialize(v7, v9, a3);
  }

  if ((v6 & 2) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v13 = *(a1 + 56);
    *a2 = 18;
    v14 = *(v13 + 10);
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

    a2 = TSP::UUIDPath::_InternalSerialize(v13, v15, a3);
  }

  v19 = *(a1 + 32);
  if (v19)
  {
    for (i = 0; i != v19; ++i)
    {
      if (*a3 <= a2)
      {
        a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      }

      v21 = *(*(a1 + 40) + 8 * i + 8);
      *a2 = 26;
      v22 = *(v21 + 10);
      if (v22 > 0x7F)
      {
        a2[1] = v22 | 0x80;
        v24 = v22 >> 7;
        if (v22 >> 14)
        {
          v23 = a2 + 3;
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
          a2[2] = v24;
          v23 = a2 + 3;
        }
      }

      else
      {
        a2[1] = v22;
        v23 = a2 + 2;
      }

      a2 = TSP::UUIDPath::_InternalSerialize(v21, v23, a3);
    }
  }

  v27 = *(a1 + 8);
  if ((v27 & 1) == 0)
  {
    return a2;
  }

  return google::protobuf::internal::WireFormat::InternalSerializeUnknownFieldsToArray(((v27 & 0xFFFFFFFFFFFFFFFELL) + 8), a2, a3, a4);
}

uint64_t sub_275FA941C(uint64_t a1)
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
      v7 = TSP::UUIDPath::ByteSizeLong(v6);
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
      v9 = TSP::Reference::ByteSizeLong(*(a1 + 48));
      v2 += v9 + ((9 * (__clz(v9 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    if ((v8 & 2) != 0)
    {
      v10 = TSP::UUIDPath::ByteSizeLong(*(a1 + 56));
      v2 += v10 + ((9 * (__clz(v10 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }
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

uint64_t sub_275FA9540(uint64_t a1, void *lpsrc)
{
  v4 = __dynamic_cast(lpsrc, MEMORY[0x277D80A98], &unk_2885009E8, 0);
  if (v4)
  {

    return sub_275FA95E8(a1, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, a1);
  }
}

uint64_t sub_275FA95E8(uint64_t result, uint64_t a2)
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
    result = sub_275FB6DA4((v3 + 24), v7, (v6 + 8), v5, **(v3 + 40) - *(v3 + 32));
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
      }

      if (*(a2 + 48))
      {
        v13 = *(a2 + 48);
      }

      else
      {
        v13 = MEMORY[0x277D80A18];
      }

      result = TSP::Reference::MergeFrom(v11, v13);
    }

    if ((v10 & 2) != 0)
    {
      *(v3 + 16) |= 2u;
      v14 = *(v3 + 56);
      if (!v14)
      {
        v15 = *(v3 + 8);
        if (v15)
        {
          v15 = *(v15 & 0xFFFFFFFFFFFFFFFELL);
        }

        v14 = MEMORY[0x277C92D50](v15);
        *(v3 + 56) = v14;
      }

      if (*(a2 + 56))
      {
        v16 = *(a2 + 56);
      }

      else
      {
        v16 = MEMORY[0x277D80A10];
      }

      return TSP::UUIDPath::MergeFrom(v14, v16);
    }
  }

  return result;
}

google::protobuf::UnknownFieldSet *sub_275FA9748(google::protobuf::UnknownFieldSet *result, google::protobuf::UnknownFieldSet *a2)
{
  if (a2 != result)
  {
    v4 = result;
    sub_275FA8EAC(result);

    return sub_275FA9540(v4, a2);
  }

  return result;
}

uint64_t sub_275FA9794(uint64_t a1)
{
  v2 = *(a1 + 32);
  while (v2 >= 1)
  {
    v3 = v2 - 1;
    IsInitialized = TSP::UUIDPath::IsInitialized(*(*(a1 + 40) + 8 * v2));
    v2 = v3;
    if ((IsInitialized & 1) == 0)
    {
      return 0;
    }
  }

  v6 = *(a1 + 16);
  if (v6)
  {
    result = TSP::Reference::IsInitialized(*(a1 + 48));
    if (!result)
    {
      return result;
    }

    v6 = *(a1 + 16);
  }

  if ((v6 & 2) == 0)
  {
    return 1;
  }

  result = TSP::UUIDPath::IsInitialized(*(a1 + 56));
  if (result)
  {
    return 1;
  }

  return result;
}

uint64_t *sub_275FA9848(uint64_t *a1)
{
  if (a1 != &qword_2812F90D8)
  {
    v2 = a1[3];
    if (v2)
    {
      v3 = sub_275F912A8(v2);
      MEMORY[0x277C93390](v3, 0x10A1C40290C9B23);
    }
  }

  sub_275F8A514(a1 + 1);
  return a1;
}

void sub_275FA98AC(uint64_t *a1)
{
  sub_275FA9848(a1);

  JUMPOUT(0x277C93390);
}

google::protobuf::UnknownFieldSet *sub_275FA98EC(google::protobuf::UnknownFieldSet *result)
{
  v1 = result;
  if (*(result + 16))
  {
    result = sub_275F91328(*(result + 3));
  }

  v3 = *(v1 + 8);
  v2 = v1 + 8;
  *(v2 + 24) = 0;
  *(v2 + 8) = 0;
  if (v3)
  {

    return sub_275FB57B8(v2);
  }

  return result;
}

google::protobuf::internal *sub_275FA994C(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v22 = a2;
  v5 = 0;
  if ((sub_275FB1588(a3, &v22, *(a3 + 92)) & 1) == 0)
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
        goto LABEL_38;
      }

      v7 = TagFallback;
      v8 = v19;
LABEL_7:
      if (v8 >> 3 == 2)
      {
        if (v8 == 18)
        {
          *(a1 + 16) |= 1u;
          v13 = *(a1 + 24);
          if (!v13)
          {
            v14 = *(a1 + 8);
            if (v14)
            {
              v14 = *(v14 & 0xFFFFFFFFFFFFFFFELL);
            }

            v13 = sub_275FAF034(v14);
            *(a1 + 24) = v13;
            v7 = v22;
          }

          v12 = sub_276034B8C(a3, v13, v7);
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
            sub_275FB5524((a1 + 8));
          }

          v12 = google::protobuf::internal::UnknownFieldParse();
        }

        v22 = v12;
        if (!v12)
        {
          goto LABEL_38;
        }

        goto LABEL_31;
      }

      if (v8 >> 3 != 1 || v8 != 8)
      {
        goto LABEL_12;
      }

      v5 |= 2u;
      v15 = (v7 + 1);
      LODWORD(v16) = *v7;
      if ((*v7 & 0x80000000) == 0)
      {
        goto LABEL_30;
      }

      v17 = *v15;
      v16 = (v16 + (v17 << 7) - 128);
      if ((v17 & 0x80000000) == 0)
      {
        v15 = (v7 + 2);
LABEL_30:
        v22 = v15;
        *(a1 + 32) = v16;
        goto LABEL_31;
      }

      v20 = google::protobuf::internal::VarintParseSlow32(v7, v16);
      v22 = v20;
      *(a1 + 32) = v21;
      if (!v20)
      {
LABEL_38:
        v22 = 0;
        goto LABEL_2;
      }

LABEL_31:
      if (sub_275FB1588(a3, &v22, *(a3 + 92)))
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

unsigned __int8 *sub_275FA9B28(uint64_t a1, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3, google::protobuf::io::EpsCopyOutputStream *a4)
{
  v6 = *(a1 + 16);
  if ((v6 & 2) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v7 = *(a1 + 32);
    *a2 = 8;
    if (v7 <= 0x7F)
    {
      a2[1] = v7;
      a2 += 2;
      if ((v6 & 1) == 0)
      {
        goto LABEL_24;
      }

      goto LABEL_10;
    }

    a2[1] = v7 | 0x80;
    v8 = v7 >> 7;
    if (v7 >> 14)
    {
      a2 += 3;
      do
      {
        *(a2 - 1) = v8 | 0x80;
        v13 = v8 >> 7;
        ++a2;
        v14 = v8 >> 14;
        v8 >>= 7;
      }

      while (v14);
      *(a2 - 1) = v13;
      if ((v6 & 1) == 0)
      {
        goto LABEL_24;
      }

      goto LABEL_10;
    }

    a2[2] = v8;
    a2 += 3;
  }

  if ((v6 & 1) == 0)
  {
    goto LABEL_24;
  }

LABEL_10:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v9 = *(a1 + 24);
  *a2 = 18;
  v10 = *(v9 + 40);
  if (v10 > 0x7F)
  {
    a2[1] = v10 | 0x80;
    v12 = v10 >> 7;
    if (v10 >> 14)
    {
      v11 = a2 + 3;
      do
      {
        *(v11 - 1) = v12 | 0x80;
        v15 = v12 >> 7;
        ++v11;
        v16 = v12 >> 14;
        v12 >>= 7;
      }

      while (v16);
      *(v11 - 1) = v15;
    }

    else
    {
      a2[2] = v12;
      v11 = a2 + 3;
    }
  }

  else
  {
    a2[1] = v10;
    v11 = a2 + 2;
  }

  a2 = sub_275F91574(v9, v11, a3, a4);
LABEL_24:
  v17 = *(a1 + 8);
  if ((v17 & 1) == 0)
  {
    return a2;
  }

  return google::protobuf::internal::WireFormat::InternalSerializeUnknownFieldsToArray(((v17 & 0xFFFFFFFFFFFFFFFELL) + 8), a2, a3, a4);
}

uint64_t sub_275FA9CB0(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v4 = sub_275F91698(*(a1 + 24));
    result = v4 + ((9 * (__clz(v4 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((*(a1 + 16) & 2) == 0)
    {
      return result;
    }

    goto LABEL_5;
  }

  result = 0;
  if ((v2 & 2) != 0)
  {
LABEL_5:
    result += ((9 * (__clz(*(a1 + 32) | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  return result;
}

uint64_t sub_275FA9D38(uint64_t a1)
{
  if ((~*(a1 + 16) & 3) != 0)
  {
    v3 = sub_275FA9CB0(a1);
  }

  else
  {
    v2 = sub_275F91698(*(a1 + 24));
    v3 = v2 + ((9 * (__clz(*(a1 + 32) | 1) ^ 0x1F) + 73) >> 6) + ((9 * (__clz(v2 | 1) ^ 0x1F) + 73) >> 6) + 2;
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

uint64_t sub_275FA9DF4(uint64_t a1, void *lpsrc)
{
  v4 = __dynamic_cast(lpsrc, MEMORY[0x277D80A98], &unk_288500A00, 0);
  if (v4)
  {

    return sub_275FA9E9C(a1, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, a1);
  }
}

uint64_t sub_275FA9E9C(uint64_t result, uint64_t a2)
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

        v6 = sub_275FAF034(v7);
        *(v3 + 24) = v6;
      }

      if (*(a2 + 24))
      {
        v8 = *(a2 + 24);
      }

      else
      {
        v8 = &unk_2812F87F0;
      }

      result = sub_275F917F8(v6, v8);
    }

    if ((v5 & 2) != 0)
    {
      *(v3 + 32) = *(a2 + 32);
    }

    *(v3 + 16) |= v5;
  }

  return result;
}

google::protobuf::UnknownFieldSet *sub_275FA9F50(google::protobuf::UnknownFieldSet *result, google::protobuf::UnknownFieldSet *a2)
{
  if (a2 != result)
  {
    v4 = result;
    sub_275FA98EC(result);

    return sub_275FA9DF4(v4, a2);
  }

  return result;
}

uint64_t sub_275FA9FFC(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_2885001F0;
  *(a1 + 8) = a2;
  *(a1 + 16) = 0;
  *(a1 + 24) = a2;
  *(a1 + 48) = a2;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  if (atomic_load_explicit(dword_2812F82B0, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(a1 + 80) = 0;
  *(a1 + 72) = 0;
  return a1;
}

void sub_275FAA088(_Unwind_Exception *a1)
{
  sub_275FB56E8(v2);
  sub_275FB6E64(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_275FAA0AC(uint64_t a1)
{
  if (a1 != &unk_2812F9100)
  {
    v2 = *(a1 + 72);
    if (v2)
    {
      TSP::Reference::~Reference(v2);
      MEMORY[0x277C93390]();
    }
  }

  sub_275F8A514((a1 + 8));
  sub_275FB56E8((a1 + 48));
  sub_275FB6E64((a1 + 24));
  return a1;
}

void sub_275FAA128(uint64_t a1)
{
  sub_275FAA0AC(a1);

  JUMPOUT(0x277C93390);
}

google::protobuf::UnknownFieldSet *sub_275FAA168(google::protobuf::UnknownFieldSet *result)
{
  v1 = result;
  v2 = *(result + 8);
  if (v2 >= 1)
  {
    v3 = (*(result + 5) + 8);
    do
    {
      v4 = *v3++;
      result = sub_275FA98EC(v4);
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

  if (*(v1 + 16))
  {
    result = TSP::Reference::Clear(*(v1 + 72));
  }

  v9 = *(v1 + 8);
  v8 = v1 + 8;
  *(v8 + 72) = 0;
  *(v8 + 8) = 0;
  if (v9)
  {

    return sub_275FB57B8(v8);
  }

  return result;
}

google::protobuf::internal *sub_275FAA224(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v39 = a2;
  v5 = 0;
  if ((sub_275FB1588(a3, &v39, *(a3 + 92)) & 1) == 0)
  {
    while (1)
    {
      v7 = (v39 + 1);
      v8 = *v39;
      if ((*v39 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if ((*v7 & 0x80000000) == 0)
      {
        break;
      }

      TagFallback = google::protobuf::internal::ReadTagFallback(v39, (v9 - 128));
      v39 = TagFallback;
      if (!TagFallback)
      {
        goto LABEL_67;
      }

      v7 = TagFallback;
      v8 = v36;
LABEL_7:
      v10 = v8 >> 3;
      if (v8 >> 3 > 2)
      {
        if (v10 != 3)
        {
          if (v10 != 4 || v8 != 34)
          {
            goto LABEL_52;
          }

          v15 = v7 - 1;
          while (2)
          {
            v16 = (v15 + 1);
            v39 = (v15 + 1);
            v17 = *(a1 + 64);
            if (!v17)
            {
LABEL_23:
              google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 48));
              v17 = *(a1 + 64);
              v18 = *v17;
              goto LABEL_24;
            }

            v22 = *(a1 + 56);
            v18 = *v17;
            if (v22 >= *v17)
            {
              if (v18 == *(a1 + 60))
              {
                goto LABEL_23;
              }

LABEL_24:
              *v17 = v18 + 1;
              v19 = MEMORY[0x277C92D60](*(a1 + 48));
              v20 = *(a1 + 56);
              v21 = *(a1 + 64) + 8 * v20;
              *(a1 + 56) = v20 + 1;
              *(v21 + 8) = v19;
              v16 = v39;
            }

            else
            {
              *(a1 + 56) = v22 + 1;
              v19 = *&v17[2 * v22 + 2];
            }

            v15 = sub_27603450C(a3, v19, v16);
            v39 = v15;
            if (!v15)
            {
              goto LABEL_67;
            }

            if (*a3 <= v15 || *v15 != 34)
            {
              goto LABEL_60;
            }

            continue;
          }
        }

        if (v8 != 26)
        {
          goto LABEL_52;
        }

        v26 = (v7 - 1);
        while (2)
        {
          v27 = (v26 + 1);
          v39 = (v26 + 1);
          v28 = *(a1 + 40);
          if (!v28)
          {
LABEL_42:
            google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 24));
            v28 = *(a1 + 40);
            v29 = *v28;
            goto LABEL_43;
          }

          v33 = *(a1 + 32);
          v29 = *v28;
          if (v33 >= *v28)
          {
            if (v29 == *(a1 + 36))
            {
              goto LABEL_42;
            }

LABEL_43:
            *v28 = v29 + 1;
            v30 = sub_275FB012C(*(a1 + 24));
            v31 = *(a1 + 32);
            v32 = *(a1 + 40) + 8 * v31;
            *(a1 + 32) = v31 + 1;
            *(v32 + 8) = v30;
            v27 = v39;
          }

          else
          {
            *(a1 + 32) = v33 + 1;
            v30 = *&v28[2 * v33 + 2];
          }

          v26 = sub_276036D30(a3, v30, v27);
          v39 = v26;
          if (!v26)
          {
            goto LABEL_67;
          }

          if (*a3 <= v26 || *v26 != 26)
          {
            goto LABEL_60;
          }

          continue;
        }
      }

      if (v10 == 1)
      {
        if (v8 == 10)
        {
          *(a1 + 16) |= 1u;
          v23 = *(a1 + 72);
          if (!v23)
          {
            v24 = *(a1 + 8);
            if (v24)
            {
              v24 = *(v24 & 0xFFFFFFFFFFFFFFFELL);
            }

            v23 = MEMORY[0x277C92D60](v24);
            *(a1 + 72) = v23;
            v7 = v39;
          }

          v25 = sub_27603450C(a3, v23, v7);
LABEL_59:
          v39 = v25;
          if (!v25)
          {
            goto LABEL_67;
          }

          goto LABEL_60;
        }

LABEL_52:
        if (v8)
        {
          v34 = (v8 & 7) == 4;
        }

        else
        {
          v34 = 1;
        }

        if (v34)
        {
          *(a3 + 80) = v8 - 1;
          goto LABEL_2;
        }

        if ((*(a1 + 8) & 1) == 0)
        {
          sub_275FB5524((a1 + 8));
        }

        v25 = google::protobuf::internal::UnknownFieldParse();
        goto LABEL_59;
      }

      if (v10 != 2 || v8 != 16)
      {
        goto LABEL_52;
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
        v39 = v12;
        *(a1 + 80) = v13;
        goto LABEL_60;
      }

      v37 = google::protobuf::internal::VarintParseSlow32(v7, v13);
      v39 = v37;
      *(a1 + 80) = v38;
      if (!v37)
      {
LABEL_67:
        v39 = 0;
        goto LABEL_2;
      }

LABEL_60:
      if (sub_275FB1588(a3, &v39, *(a3 + 92)))
      {
        goto LABEL_2;
      }
    }

    v7 = (v39 + 2);
LABEL_6:
    v39 = v7;
    goto LABEL_7;
  }

LABEL_2:
  *(a1 + 16) |= v5;
  return v39;
}

unsigned __int8 *sub_275FAA5A8(uint64_t a1, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3, google::protobuf::io::EpsCopyOutputStream *a4)
{
  v6 = *(a1 + 16);
  if (v6)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v7 = *(a1 + 72);
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

    a2 = TSP::Reference::_InternalSerialize(v7, v9, a3);
  }

  if ((v6 & 2) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v13 = *(a1 + 80);
    *a2 = 16;
    if (v13 > 0x7F)
    {
      a2[1] = v13 | 0x80;
      v14 = v13 >> 7;
      if (v13 >> 14)
      {
        a2 += 3;
        do
        {
          *(a2 - 1) = v14 | 0x80;
          v15 = v14 >> 7;
          ++a2;
          v16 = v14 >> 14;
          v14 >>= 7;
        }

        while (v16);
        *(a2 - 1) = v15;
      }

      else
      {
        a2[2] = v14;
        a2 += 3;
      }
    }

    else
    {
      a2[1] = v13;
      a2 += 2;
    }
  }

  v17 = *(a1 + 32);
  if (v17)
  {
    for (i = 0; i != v17; ++i)
    {
      if (*a3 <= a2)
      {
        a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      }

      v19 = *(*(a1 + 40) + 8 * i + 8);
      *a2 = 26;
      v20 = *(v19 + 20);
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

      a2 = sub_275FA9B28(v19, v21, a3, a4);
    }
  }

  v25 = *(a1 + 56);
  if (v25)
  {
    for (j = 0; j != v25; ++j)
    {
      if (*a3 <= a2)
      {
        a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      }

      v27 = *(*(a1 + 64) + 8 * j + 8);
      *a2 = 34;
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

  v33 = *(a1 + 8);
  if ((v33 & 1) == 0)
  {
    return a2;
  }

  return google::protobuf::internal::WireFormat::InternalSerializeUnknownFieldsToArray(((v33 & 0xFFFFFFFFFFFFFFFELL) + 8), a2, a3, a4);
}

uint64_t sub_275FAA89C(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v4 = TSP::Reference::ByteSizeLong(*(a1 + 72));
    result = v4 + ((9 * (__clz(v4 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((*(a1 + 16) & 2) == 0)
    {
      return result;
    }

    goto LABEL_5;
  }

  result = 0;
  if ((v2 & 2) != 0)
  {
LABEL_5:
    result += ((9 * (__clz(*(a1 + 80) | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  return result;
}

uint64_t sub_275FAA924(uint64_t a1)
{
  if ((~*(a1 + 16) & 3) != 0)
  {
    v3 = sub_275FAA89C(a1);
  }

  else
  {
    v2 = TSP::Reference::ByteSizeLong(*(a1 + 72));
    v3 = v2 + ((9 * (__clz(*(a1 + 80) | 1) ^ 0x1F) + 73) >> 6) + ((9 * (__clz(v2 | 1) ^ 0x1F) + 73) >> 6) + 2;
  }

  v4 = *(a1 + 32);
  v5 = v3 + v4;
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
      v10 = sub_275FA9D38(v9);
      v5 += v10 + ((9 * (__clz(v10 | 1) ^ 0x1F) + 73) >> 6);
      v8 -= 8;
    }

    while (v8);
  }

  v11 = *(a1 + 56);
  v12 = v5 + v11;
  v13 = *(a1 + 64);
  if (v13)
  {
    v14 = (v13 + 8);
  }

  else
  {
    v14 = 0;
  }

  if (v11)
  {
    v15 = 8 * v11;
    do
    {
      v16 = *v14++;
      v17 = TSP::Reference::ByteSizeLong(v16);
      v12 += v17 + ((9 * (__clz(v17 | 1) ^ 0x1F) + 73) >> 6);
      v15 -= 8;
    }

    while (v15);
  }

  if (*(a1 + 8))
  {

    return google::protobuf::internal::ComputeUnknownFieldsSize();
  }

  else
  {
    *(a1 + 20) = v12;
    return v12;
  }
}

uint64_t sub_275FAAA8C(uint64_t a1, void *lpsrc)
{
  v4 = __dynamic_cast(lpsrc, MEMORY[0x277D80A98], &unk_288500A18, 0);
  if (v4)
  {

    return sub_275FAAB34(a1, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, a1);
  }
}

uint64_t sub_275FAAB34(uint64_t result, uint64_t a2)
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
    result = sub_275FB6EE8((v3 + 24), v7, (v6 + 8), v5, **(v3 + 40) - *(v3 + 32));
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

  v15 = *(a2 + 16);
  if ((v15 & 3) != 0)
  {
    if (v15)
    {
      *(v3 + 16) |= 1u;
      v16 = *(v3 + 72);
      if (!v16)
      {
        v17 = *(v3 + 8);
        if (v17)
        {
          v17 = *(v17 & 0xFFFFFFFFFFFFFFFELL);
        }

        v16 = MEMORY[0x277C92D60](v17);
        *(v3 + 72) = v16;
      }

      if (*(a2 + 72))
      {
        v18 = *(a2 + 72);
      }

      else
      {
        v18 = MEMORY[0x277D80A18];
      }

      result = TSP::Reference::MergeFrom(v16, v18);
    }

    if ((v15 & 2) != 0)
    {
      *(v3 + 80) = *(a2 + 80);
    }

    *(v3 + 16) |= v15;
  }

  return result;
}

google::protobuf::UnknownFieldSet *sub_275FAACA0(google::protobuf::UnknownFieldSet *result, google::protobuf::UnknownFieldSet *a2)
{
  if (a2 != result)
  {
    v4 = result;
    sub_275FAA168(result);

    return sub_275FAAA8C(v4, a2);
  }

  return result;
}

uint64_t sub_275FAACEC(uint64_t a1)
{
  if ((~*(a1 + 16) & 3) != 0)
  {
    return 0;
  }

  result = sub_275FAAD78(a1 + 24);
  if (result)
  {
    v3 = *(a1 + 56);
    while (v3 >= 1)
    {
      v4 = v3 - 1;
      IsInitialized = TSP::Reference::IsInitialized(*(*(a1 + 64) + 8 * v3));
      v3 = v4;
      if ((IsInitialized & 1) == 0)
      {
        return 0;
      }
    }

    if ((*(a1 + 16) & 1) == 0)
    {
      return 1;
    }

    result = TSP::Reference::IsInitialized(*(a1 + 72));
    if (result)
    {
      return 1;
    }
  }

  return result;
}

BOOL sub_275FAAD78(uint64_t a1)
{
  v2 = *(a1 + 8);
  do
  {
    v3 = v2;
    if (v2 < 1)
    {
      break;
    }

    v4 = *(*(a1 + 16) + 8 * v2);
    if ((~*(v4 + 16) & 3) != 0)
    {
      break;
    }

    --v2;
  }

  while (sub_275F918EC(*(v4 + 24) + 16));
  return v3 < 1;
}

uint64_t *sub_275FAAE20(uint64_t *a1)
{
  if (a1 != &qword_2812F9158)
  {
    v2 = a1[3];
    if (v2)
    {
      TSP::UUID::~UUID(v2);
      MEMORY[0x277C93390]();
    }

    v3 = a1[4];
    if (v3)
    {
      TSP::Reference::~Reference(v3);
      MEMORY[0x277C93390]();
    }
  }

  sub_275F8A514(a1 + 1);
  return a1;
}

void sub_275FAAEA4(uint64_t *a1)
{
  sub_275FAAE20(a1);

  JUMPOUT(0x277C93390);
}

google::protobuf::UnknownFieldSet *sub_275FAAEE4(google::protobuf::UnknownFieldSet *result)
{
  v1 = result;
  v2 = *(result + 4);
  if ((v2 & 3) != 0)
  {
    if (v2)
    {
      result = TSP::UUID::Clear(*(result + 3));
    }

    if ((v2 & 2) != 0)
    {
      result = TSP::Reference::Clear(*(v1 + 32));
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

google::protobuf::internal *sub_275FAAF54(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
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

          v12 = MEMORY[0x277C92D60](v13);
          *(a1 + 32) = v12;
          v6 = v19;
        }

        v11 = sub_27603450C(a3, v12, v6);
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

        v14 = MEMORY[0x277C92D20](v15);
        *(a1 + 24) = v14;
        v6 = v19;
      }

      v11 = sub_276034ECC(a3, v14, v6);
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

unsigned __int8 *sub_275FAB100(uint64_t a1, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3, google::protobuf::io::EpsCopyOutputStream *a4)
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

    a2 = TSP::UUID::_InternalSerialize(v7, v9, a3);
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

    a2 = TSP::Reference::_InternalSerialize(v13, v15, a3);
  }

  v19 = *(a1 + 8);
  if ((v19 & 1) == 0)
  {
    return a2;
  }

  return google::protobuf::internal::WireFormat::InternalSerializeUnknownFieldsToArray(((v19 & 0xFFFFFFFFFFFFFFFELL) + 8), a2, a3, a4);
}

uint64_t sub_275FAB290(uint64_t a1)
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

  v4 = TSP::UUID::ByteSizeLong(*(a1 + 24));
  v3 = v4 + ((9 * (__clz(v4 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((*(a1 + 16) & 2) != 0)
  {
LABEL_5:
    v5 = TSP::Reference::ByteSizeLong(*(a1 + 32));
    v3 += v5 + ((9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  return v3;
}

uint64_t sub_275FAB324(uint64_t a1)
{
  if ((~*(a1 + 16) & 3) != 0)
  {
    v4 = sub_275FAB290(a1);
  }

  else
  {
    v2 = TSP::UUID::ByteSizeLong(*(a1 + 24));
    v3 = TSP::Reference::ByteSizeLong(*(a1 + 32));
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

uint64_t sub_275FAB3F8(uint64_t a1, void *lpsrc)
{
  v4 = __dynamic_cast(lpsrc, MEMORY[0x277D80A98], &unk_288500A30, 0);
  if (v4)
  {

    return sub_275FAB4A0(a1, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, a1);
  }
}

uint64_t sub_275FAB4A0(uint64_t result, uint64_t a2)
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

        v6 = MEMORY[0x277C92D20](v7);
        *(v3 + 24) = v6;
      }

      if (*(a2 + 24))
      {
        v8 = *(a2 + 24);
      }

      else
      {
        v8 = MEMORY[0x277D809E0];
      }

      result = TSP::UUID::MergeFrom(v6, v8);
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

        v9 = MEMORY[0x277C92D60](v10);
        *(v3 + 32) = v9;
      }

      if (*(a2 + 32))
      {
        v11 = *(a2 + 32);
      }

      else
      {
        v11 = MEMORY[0x277D80A18];
      }

      return TSP::Reference::MergeFrom(v9, v11);
    }
  }

  return result;
}

google::protobuf::UnknownFieldSet *sub_275FAB5A4(google::protobuf::UnknownFieldSet *result, google::protobuf::UnknownFieldSet *a2)
{
  if (a2 != result)
  {
    v4 = result;
    sub_275FAAEE4(result);

    return sub_275FAB3F8(v4, a2);
  }

  return result;
}

uint64_t sub_275FAB5F0(uint64_t a1)
{
  if ((~*(a1 + 16) & 3) != 0)
  {
    return 0;
  }

  result = TSP::UUID::IsInitialized(*(a1 + 24));
  if (result)
  {
    if ((*(a1 + 16) & 2) == 0)
    {
      return 1;
    }

    result = TSP::Reference::IsInitialized(*(a1 + 32));
    if (result)
    {
      return 1;
    }
  }

  return result;
}

uint64_t sub_275FAB68C(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_288500350;
  *(a1 + 8) = a2;
  *(a1 + 16) = a2;
  *(a1 + 40) = a2;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = a2;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  if (atomic_load_explicit(dword_2812F8368, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return a1;
}

void sub_275FAB71C(_Unwind_Exception *a1)
{
  sub_275FB56E8(v3);
  sub_275FB6FA8(v2);
  sub_275FB56E8(v1);
  _Unwind_Resume(a1);
}

uint64_t *sub_275FAB74C(uint64_t *a1)
{
  sub_275F8A514(a1 + 1);
  sub_275FB56E8(a1 + 8);
  sub_275FB6FA8(a1 + 5);
  sub_275FB56E8(a1 + 2);
  return a1;
}

void sub_275FAB7A4(uint64_t *a1)
{
  sub_275FAB74C(a1);

  JUMPOUT(0x277C93390);
}

google::protobuf::UnknownFieldSet *sub_275FAB7E4(google::protobuf::UnknownFieldSet *result)
{
  v1 = result;
  v2 = *(result + 6);
  if (v2 >= 1)
  {
    v3 = (*(result + 4) + 8);
    do
    {
      v4 = *v3++;
      result = TSP::Reference::Clear(v4);
      --v2;
    }

    while (v2);
    *(v1 + 24) = 0;
  }

  v5 = *(v1 + 48);
  if (v5 >= 1)
  {
    v6 = (*(v1 + 56) + 8);
    do
    {
      v7 = *v6++;
      result = sub_275FAAEE4(v7);
      --v5;
    }

    while (v5);
    *(v1 + 48) = 0;
  }

  v8 = *(v1 + 72);
  if (v8 >= 1)
  {
    v9 = (*(v1 + 80) + 8);
    do
    {
      v10 = *v9++;
      result = TSP::Reference::Clear(v10);
      --v8;
    }

    while (v8);
    *(v1 + 72) = 0;
  }

  v12 = *(v1 + 8);
  v11 = (v1 + 8);
  if (v12)
  {

    return sub_275FB57B8(v11);
  }

  return result;
}

google::protobuf::internal *sub_275FAB8B0(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v38 = a2;
  if ((sub_275FB1588(a3, &v38, *(a3 + 92)) & 1) == 0)
  {
    while (1)
    {
      v6 = (v38 + 1);
      v7 = *v38;
      if ((*v38 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      v8 = v7 + (*v6 << 7);
      v7 = v8 - 128;
      if ((*v6 & 0x80000000) == 0)
      {
        break;
      }

      TagFallback = google::protobuf::internal::ReadTagFallback(v38, (v8 - 128));
      v38 = TagFallback;
      if (!TagFallback)
      {
        return 0;
      }

      v6 = TagFallback;
      v7 = v37;
LABEL_7:
      v9 = v7 >> 3;
      if (v7 >> 3 == 3)
      {
        if (v7 != 26)
        {
          goto LABEL_13;
        }

        v20 = v6 - 1;
        while (2)
        {
          v21 = (v20 + 1);
          v38 = (v20 + 1);
          v22 = *(a1 + 80);
          if (!v22)
          {
LABEL_38:
            google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 64));
            v22 = *(a1 + 80);
            v23 = *v22;
            goto LABEL_39;
          }

          v27 = *(a1 + 72);
          v23 = *v22;
          if (v27 >= *v22)
          {
            if (v23 == *(a1 + 76))
            {
              goto LABEL_38;
            }

LABEL_39:
            *v22 = v23 + 1;
            v24 = MEMORY[0x277C92D60](*(a1 + 64));
            v25 = *(a1 + 72);
            v26 = *(a1 + 80) + 8 * v25;
            *(a1 + 72) = v25 + 1;
            *(v26 + 8) = v24;
            v21 = v38;
          }

          else
          {
            *(a1 + 72) = v27 + 1;
            v24 = *&v22[2 * v27 + 2];
          }

          v20 = sub_27603450C(a3, v24, v21);
          v38 = v20;
          if (!v20)
          {
            return 0;
          }

          if (*a3 <= v20 || *v20 != 26)
          {
            goto LABEL_20;
          }

          continue;
        }
      }

      if (v9 == 2)
      {
        if (v7 != 18)
        {
          goto LABEL_13;
        }

        v12 = (v6 - 1);
        while (2)
        {
          v13 = (v12 + 1);
          v38 = (v12 + 1);
          v14 = *(a1 + 56);
          if (!v14)
          {
LABEL_25:
            google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 40));
            v14 = *(a1 + 56);
            v15 = *v14;
            goto LABEL_26;
          }

          v19 = *(a1 + 48);
          v15 = *v14;
          if (v19 >= *v14)
          {
            if (v15 == *(a1 + 52))
            {
              goto LABEL_25;
            }

LABEL_26:
            *v14 = v15 + 1;
            v16 = sub_275FB0288(*(a1 + 40));
            v17 = *(a1 + 48);
            v18 = *(a1 + 56) + 8 * v17;
            *(a1 + 48) = v17 + 1;
            *(v18 + 8) = v16;
            v13 = v38;
          }

          else
          {
            *(a1 + 48) = v19 + 1;
            v16 = *&v14[2 * v19 + 2];
          }

          v12 = sub_276036E00(a3, v16, v13);
          v38 = v12;
          if (!v12)
          {
            return 0;
          }

          if (*a3 <= v12 || *v12 != 18)
          {
            goto LABEL_20;
          }

          continue;
        }
      }

      if (v9 == 1 && v7 == 10)
      {
        v28 = v6 - 1;
        while (1)
        {
          v29 = (v28 + 1);
          v38 = (v28 + 1);
          v30 = *(a1 + 32);
          if (!v30)
          {
            goto LABEL_50;
          }

          v35 = *(a1 + 24);
          v31 = *v30;
          if (v35 < *v30)
          {
            *(a1 + 24) = v35 + 1;
            v32 = *&v30[2 * v35 + 2];
            goto LABEL_54;
          }

          if (v31 == *(a1 + 28))
          {
LABEL_50:
            google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 16));
            v30 = *(a1 + 32);
            v31 = *v30;
          }

          *v30 = v31 + 1;
          v32 = MEMORY[0x277C92D60](*(a1 + 16));
          v33 = *(a1 + 24);
          v34 = *(a1 + 32) + 8 * v33;
          *(a1 + 24) = v33 + 1;
          *(v34 + 8) = v32;
          v29 = v38;
LABEL_54:
          v28 = sub_27603450C(a3, v32, v29);
          v38 = v28;
          if (!v28)
          {
            return 0;
          }

          if (*a3 <= v28 || *v28 != 10)
          {
            goto LABEL_20;
          }
        }
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

      if (v11)
      {
        *(a3 + 80) = v7 - 1;
        return v38;
      }

      if ((*(a1 + 8) & 1) == 0)
      {
        sub_275FB5524((a1 + 8));
      }

      v38 = google::protobuf::internal::UnknownFieldParse();
      if (!v38)
      {
        return 0;
      }

LABEL_20:
      if (sub_275FB1588(a3, &v38, *(a3 + 92)))
      {
        return v38;
      }
    }

    v6 = (v38 + 2);
LABEL_6:
    v38 = v6;
    goto LABEL_7;
  }

  return v38;
}

unsigned __int8 *sub_275FABC30(uint64_t a1, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3, google::protobuf::io::EpsCopyOutputStream *a4)
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
      *a2 = 10;
      v9 = *(v8 + 5);
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

      a2 = TSP::Reference::_InternalSerialize(v8, v10, a3);
    }
  }

  v14 = *(a1 + 48);
  if (v14)
  {
    for (j = 0; j != v14; ++j)
    {
      if (*a3 <= a2)
      {
        a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      }

      v16 = *(*(a1 + 56) + 8 * j + 8);
      *a2 = 18;
      v17 = *(v16 + 20);
      if (v17 > 0x7F)
      {
        a2[1] = v17 | 0x80;
        v19 = v17 >> 7;
        if (v17 >> 14)
        {
          v18 = a2 + 3;
          do
          {
            *(v18 - 1) = v19 | 0x80;
            v20 = v19 >> 7;
            ++v18;
            v21 = v19 >> 14;
            v19 >>= 7;
          }

          while (v21);
          *(v18 - 1) = v20;
        }

        else
        {
          a2[2] = v19;
          v18 = a2 + 3;
        }
      }

      else
      {
        a2[1] = v17;
        v18 = a2 + 2;
      }

      a2 = sub_275FAB100(v16, v18, a3, a4);
    }
  }

  v22 = *(a1 + 72);
  if (v22)
  {
    for (k = 0; k != v22; ++k)
    {
      if (*a3 <= a2)
      {
        a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      }

      v24 = *(*(a1 + 80) + 8 * k + 8);
      *a2 = 26;
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
  }

  v30 = *(a1 + 8);
  if ((v30 & 1) == 0)
  {
    return a2;
  }

  return google::protobuf::internal::WireFormat::InternalSerializeUnknownFieldsToArray(((v30 & 0xFFFFFFFFFFFFFFFELL) + 8), a2, a3, a4);
}

uint64_t sub_275FABEBC(uint64_t a1)
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

  v8 = *(a1 + 48);
  v9 = v2 + v8;
  v10 = *(a1 + 56);
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
      v14 = sub_275FAB324(v13);
      v9 += v14 + ((9 * (__clz(v14 | 1) ^ 0x1F) + 73) >> 6);
      v12 -= 8;
    }

    while (v12);
  }

  v15 = *(a1 + 72);
  v16 = v9 + v15;
  v17 = *(a1 + 80);
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

  if (*(a1 + 8))
  {

    return google::protobuf::internal::ComputeUnknownFieldsSize();
  }

  else
  {
    *(a1 + 88) = v16;
    return v16;
  }
}

uint64_t sub_275FAC014(uint64_t a1, void *lpsrc)
{
  v4 = __dynamic_cast(lpsrc, MEMORY[0x277D80A98], &unk_288500A48, 0);
  if (v4)
  {

    return sub_275FAC0BC(a1, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, a1);
  }
}

uint64_t sub_275FAC0BC(uint64_t result, uint64_t a2)
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
    result = sub_275FB5808((v3 + 16), v7, (v6 + 8), v5, **(v3 + 32) - *(v3 + 24));
    v8 = *(v3 + 24) + v5;
    *(v3 + 24) = v8;
    v9 = *(v3 + 32);
    if (*v9 < v8)
    {
      *v9 = v8;
    }
  }

  v10 = *(a2 + 48);
  if (v10)
  {
    v11 = *(a2 + 56);
    v12 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((v3 + 40));
    result = sub_275FB702C((v3 + 40), v12, (v11 + 8), v10, **(v3 + 56) - *(v3 + 48));
    v13 = *(v3 + 48) + v10;
    *(v3 + 48) = v13;
    v14 = *(v3 + 56);
    if (*v14 < v13)
    {
      *v14 = v13;
    }
  }

  v15 = *(a2 + 72);
  if (v15)
  {
    v16 = *(a2 + 80);
    v17 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((v3 + 64));
    result = sub_275FB5808((v3 + 64), v17, (v16 + 8), v15, **(v3 + 80) - *(v3 + 72));
    v18 = *(v3 + 72) + v15;
    *(v3 + 72) = v18;
    v19 = *(v3 + 80);
    if (*v19 < v18)
    {
      *v19 = v18;
    }
  }

  return result;
}

google::protobuf::UnknownFieldSet *sub_275FAC214(google::protobuf::UnknownFieldSet *result, google::protobuf::UnknownFieldSet *a2)
{
  if (a2 != result)
  {
    v4 = result;
    sub_275FAB7E4(result);

    return sub_275FAC014(v4, a2);
  }

  return result;
}

BOOL sub_275FAC260(uint64_t a1)
{
  v2 = *(a1 + 24);
  while (v2 >= 1)
  {
    v3 = v2 - 1;
    IsInitialized = TSP::Reference::IsInitialized(*(*(a1 + 32) + 8 * v2));
    v2 = v3;
    if ((IsInitialized & 1) == 0)
    {
      return 0;
    }
  }

  v5 = *(a1 + 48);
  while (v5 >= 1)
  {
    v6 = v5 - 1;
    v7 = sub_275FAB5F0(*(*(a1 + 56) + 8 * v5));
    v5 = v6;
    if ((v7 & 1) == 0)
    {
      return 0;
    }
  }

  v10 = *(a1 + 72);
  do
  {
    v8 = v10 < 1;
    if (v10 < 1)
    {
      break;
    }

    v11 = v10 - 1;
    v12 = TSP::Reference::IsInitialized(*(*(a1 + 80) + 8 * v10));
    v10 = v11;
  }

  while ((v12 & 1) != 0);
  return v8;
}

void *sub_275FAC344(void *a1, uint64_t a2)
{
  *a1 = &unk_288500400;
  a1[1] = a2;
  a1[3] = a2;
  a1[2] = 0;
  a1[4] = 0;
  a1[5] = 0;
  if (atomic_load_explicit(dword_2812F8148, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  v3 = MEMORY[0x277D80A90];
  a1[7] = 0;
  a1[8] = 0;
  a1[6] = v3;
  return a1;
}

void *sub_275FAC3DC(void *a1)
{
  v2 = a1[6];
  if (v2 != MEMORY[0x277D80A90])
  {
    if (*(v2 + 23) < 0)
    {
      operator delete(*v2);
    }

    MEMORY[0x277C93390](v2, 0x1012C40EC159624);
  }

  if (a1 != qword_2812F91E0)
  {
    v3 = a1[7];
    if (v3)
    {
      TSP::UUID::~UUID(v3);
      MEMORY[0x277C93390]();
    }

    v4 = a1[8];
    if (v4)
    {
      TSP::UUID::~UUID(v4);
      MEMORY[0x277C93390]();
    }
  }

  sub_275F8A514(a1 + 1);
  sub_275FB70EC(a1 + 3);
  return a1;
}

void sub_275FAC4A0(void *a1)
{
  sub_275FAC3DC(a1);

  JUMPOUT(0x277C93390);
}

google::protobuf::UnknownFieldSet *sub_275FAC4E0(google::protobuf::UnknownFieldSet *result)
{
  v1 = result;
  v2 = *(result + 8);
  if (v2 >= 1)
  {
    v3 = (*(result + 5) + 8);
    do
    {
      v4 = *v3++;
      result = TSWP::MergeFieldTypeArchive::Clear(v4);
      --v2;
    }

    while (v2);
    *(v1 + 32) = 0;
  }

  v5 = *(v1 + 16);
  if ((v5 & 7) == 0)
  {
    goto LABEL_10;
  }

  if ((v5 & 1) == 0)
  {
    if ((v5 & 2) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_18;
  }

  v8 = *(v1 + 48) & 0xFFFFFFFFFFFFFFFELL;
  if (*(v8 + 23) < 0)
  {
    **v8 = 0;
    *(v8 + 8) = 0;
    if ((v5 & 2) != 0)
    {
      goto LABEL_18;
    }

LABEL_8:
    if ((v5 & 4) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  *v8 = 0;
  *(v8 + 23) = 0;
  if ((v5 & 2) == 0)
  {
    goto LABEL_8;
  }

LABEL_18:
  result = TSP::UUID::Clear(*(v1 + 56));
  if ((v5 & 4) != 0)
  {
LABEL_9:
    result = TSP::UUID::Clear(*(v1 + 64));
  }

LABEL_10:
  v7 = *(v1 + 8);
  v6 = v1 + 8;
  *(v6 + 8) = 0;
  if (v7)
  {

    return sub_275FB57B8(v6);
  }

  return result;
}

google::protobuf::internal *sub_275FAC5C0(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v27 = a2;
  for (i = *(a3 + 92); ; i = *(a3 + 92))
  {
    if (sub_275FB1588(a3, &v27, i))
    {
      return v27;
    }

    v6 = (v27 + 1);
    v7 = *v27;
    if ((*v27 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    v8 = v7 + (*v6 << 7);
    v7 = v8 - 128;
    if ((*v6 & 0x80000000) == 0)
    {
      v6 = (v27 + 2);
LABEL_6:
      v27 = v6;
      goto LABEL_7;
    }

    TagFallback = google::protobuf::internal::ReadTagFallback(v27, (v8 - 128));
    v27 = TagFallback;
    if (!TagFallback)
    {
      return 0;
    }

    v6 = TagFallback;
    v7 = v25;
LABEL_7:
    v9 = v7 >> 3;
    if (v7 >> 3 > 2)
    {
      if (v9 != 3)
      {
        if (v9 == 4 && v7 == 34)
        {
          *(a1 + 16) |= 4u;
          v11 = *(a1 + 64);
          if (!v11)
          {
            v13 = *(a1 + 8);
            if (v13)
            {
              v13 = *(v13 & 0xFFFFFFFFFFFFFFFELL);
            }

            v11 = MEMORY[0x277C92D20](v13);
            *(a1 + 64) = v11;
LABEL_25:
            v6 = v27;
          }

LABEL_26:
          v14 = sub_276034ECC(a3, v11, v6);
          goto LABEL_49;
        }

        goto LABEL_42;
      }

      if (v7 != 26)
      {
        goto LABEL_42;
      }

      v15 = v6 - 1;
      while (1)
      {
        v16 = (v15 + 1);
        v27 = (v15 + 1);
        v17 = *(a1 + 40);
        if (!v17)
        {
          goto LABEL_32;
        }

        v22 = *(a1 + 32);
        v18 = *v17;
        if (v22 < *v17)
        {
          *(a1 + 32) = v22 + 1;
          v19 = *&v17[2 * v22 + 2];
          goto LABEL_36;
        }

        if (v18 == *(a1 + 36))
        {
LABEL_32:
          google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 24));
          v17 = *(a1 + 40);
          v18 = *v17;
        }

        *v17 = v18 + 1;
        v19 = MEMORY[0x277C92DA0](*(a1 + 24));
        v20 = *(a1 + 32);
        v21 = *(a1 + 40) + 8 * v20;
        *(a1 + 32) = v20 + 1;
        *(v21 + 8) = v19;
        v16 = v27;
LABEL_36:
        v15 = sub_276036ED0(a3, v19, v16);
        v27 = v15;
        if (!v15)
        {
          return 0;
        }

        if (*a3 <= v15 || *v15 != 26)
        {
          goto LABEL_50;
        }
      }
    }

    if (v9 == 1)
    {
      if (v7 == 10)
      {
        *(a1 + 16) |= 1u;
        google::protobuf::internal::ArenaStringPtr::Mutable();
        v14 = google::protobuf::internal::InlineGreedyStringParser();
        goto LABEL_49;
      }
    }

    else if (v9 == 2 && v7 == 18)
    {
      *(a1 + 16) |= 2u;
      v11 = *(a1 + 56);
      if (!v11)
      {
        v12 = *(a1 + 8);
        if (v12)
        {
          v12 = *(v12 & 0xFFFFFFFFFFFFFFFELL);
        }

        v11 = MEMORY[0x277C92D20](v12);
        *(a1 + 56) = v11;
        goto LABEL_25;
      }

      goto LABEL_26;
    }

LABEL_42:
    if (!v7 || (v7 & 7) == 4)
    {
      break;
    }

    if ((*(a1 + 8) & 1) == 0)
    {
      sub_275FB5524((a1 + 8));
    }

    v14 = google::protobuf::internal::UnknownFieldParse();
LABEL_49:
    v27 = v14;
    if (!v14)
    {
      return 0;
    }

LABEL_50:
    ;
  }

  *(a3 + 80) = v7 - 1;
  return v27;
}

unsigned __int8 *sub_275FAC884(uint64_t a1, google::protobuf::UnknownFieldSet *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v4 = a2;
  v6 = *(a1 + 16);
  if (v6)
  {
    v4 = sub_275F8C698(a3, 1, (*(a1 + 48) & 0xFFFFFFFFFFFFFFFELL), a2);
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

    v4 = TSP::UUID::_InternalSerialize(v7, v9, a3);
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

      v4 = TSWP::MergeFieldTypeArchive::_InternalSerialize(v15, v17, a3);
    }
  }

  if ((v6 & 4) != 0)
  {
    if (*a3 <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
    }

    v21 = *(a1 + 64);
    *v4 = 34;
    v22 = *(v21 + 5);
    if (v22 > 0x7F)
    {
      v4[1] = v22 | 0x80;
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
        v4[2] = v24;
        v23 = v4 + 3;
      }
    }

    else
    {
      v4[1] = v22;
      v23 = v4 + 2;
    }

    v4 = TSP::UUID::_InternalSerialize(v21, v23, a3);
  }

  v27 = *(a1 + 8);
  if ((v27 & 1) == 0)
  {
    return v4;
  }

  return google::protobuf::internal::WireFormat::InternalSerializeUnknownFieldsToArray(((v27 & 0xFFFFFFFFFFFFFFFELL) + 8), v4, a3, v4);
}

uint64_t sub_275FACB04(uint64_t a1)
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
      v7 = TSWP::MergeFieldTypeArchive::ByteSizeLong(v6);
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
  if ((v8 & 7) != 0)
  {
    if (v8)
    {
      v11 = *(a1 + 48) & 0xFFFFFFFFFFFFFFFELL;
      v12 = *(v11 + 23);
      v13 = *(v11 + 8);
      if ((v12 & 0x80u) == 0)
      {
        v13 = v12;
      }

      v2 += v13 + ((9 * (__clz(v13 | 1) ^ 0x1F) + 73) >> 6) + 1;
      if ((v8 & 2) == 0)
      {
LABEL_12:
        if ((v8 & 4) == 0)
        {
          goto LABEL_14;
        }

        goto LABEL_13;
      }
    }

    else if ((v8 & 2) == 0)
    {
      goto LABEL_12;
    }

    v14 = TSP::UUID::ByteSizeLong(*(a1 + 56));
    v2 += v14 + ((9 * (__clz(v14 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v8 & 4) != 0)
    {
LABEL_13:
      v9 = TSP::UUID::ByteSizeLong(*(a1 + 64));
      v2 += v9 + ((9 * (__clz(v9 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }
  }

LABEL_14:
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

uint64_t sub_275FACC78(uint64_t a1, void *lpsrc)
{
  v4 = __dynamic_cast(lpsrc, MEMORY[0x277D80A98], &unk_288500A60, 0);
  if (v4)
  {

    return sub_275FACD20(a1, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, a1);
  }
}

uint64_t sub_275FACD20(uint64_t result, uint64_t a2)
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
    result = sub_275FB7170((v3 + 24), v7, (v6 + 8), v5, **(v3 + 40) - *(v3 + 32));
    v8 = *(v3 + 32) + v5;
    *(v3 + 32) = v8;
    v9 = *(v3 + 40);
    if (*v9 < v8)
    {
      *v9 = v8;
    }
  }

  v10 = *(a2 + 16);
  if ((v10 & 7) != 0)
  {
    if (v10)
    {
      *(v3 + 16) |= 1u;
      result = google::protobuf::internal::ArenaStringPtr::Set();
    }

    v11 = MEMORY[0x277D809E0];
    if ((v10 & 2) != 0)
    {
      *(v3 + 16) |= 2u;
      v12 = *(v3 + 56);
      if (!v12)
      {
        v13 = *(v3 + 8);
        if (v13)
        {
          v13 = *(v13 & 0xFFFFFFFFFFFFFFFELL);
        }

        v12 = MEMORY[0x277C92D20](v13);
        *(v3 + 56) = v12;
      }

      if (*(a2 + 56))
      {
        v14 = *(a2 + 56);
      }

      else
      {
        v14 = v11;
      }

      result = TSP::UUID::MergeFrom(v12, v14);
    }

    if ((v10 & 4) != 0)
    {
      *(v3 + 16) |= 4u;
      v15 = *(v3 + 64);
      if (!v15)
      {
        v16 = *(v3 + 8);
        if (v16)
        {
          v16 = *(v16 & 0xFFFFFFFFFFFFFFFELL);
        }

        v15 = MEMORY[0x277C92D20](v16);
        *(v3 + 64) = v15;
      }

      if (*(a2 + 64))
      {
        v17 = *(a2 + 64);
      }

      else
      {
        v17 = v11;
      }

      return TSP::UUID::MergeFrom(v15, v17);
    }
  }

  return result;
}

google::protobuf::UnknownFieldSet *sub_275FACEAC(google::protobuf::UnknownFieldSet *result, google::protobuf::UnknownFieldSet *a2)
{
  if (a2 != result)
  {
    v4 = result;
    sub_275FAC4E0(result);

    return sub_275FACC78(v4, a2);
  }

  return result;
}

uint64_t sub_275FACEF8(uint64_t a1)
{
  v2 = *(a1 + 16);
  if ((v2 & 2) != 0)
  {
    result = TSP::UUID::IsInitialized(*(a1 + 56));
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

  result = TSP::UUID::IsInitialized(*(a1 + 64));
  if (result)
  {
    return 1;
  }

  return result;
}

uint64_t sub_275FACF80(uint64_t result, _DWORD *a2)
{
  v2 = a2[8];
  if (v2)
  {
    v4 = result;
    if (v2)
    {
      google::protobuf::internal::ArenaStringPtr::Mutable();
      (*(*a2 + 160))(a2);
      result = google::protobuf::internal::ArenaStringPtr::Set();
      *(v4 + 32) |= 1u;
      v2 = a2[8];
    }

    if ((v2 & 2) != 0)
    {
      v5 = *(v4 + 8);
      if (v5)
      {
        v5 = *(v5 & 0xFFFFFFFFFFFFFFFELL);
      }

      if (!*(v4 + 24))
      {
        *(v4 + 24) = MEMORY[0x277C92DA0](v5);
      }

      v6 = (*(*a2 + 168))(a2);
      result = TSWP::MergeFieldTypeArchive::MergeFrom(*(v4 + 24), v6);
      *(v4 + 32) |= 2u;
    }
  }

  return result;
}

uint64_t sub_275FAD0D8(uint64_t result, _DWORD *a2)
{
  v2 = a2[8];
  if (v2)
  {
    v4 = result;
    if (v2)
    {
      google::protobuf::internal::ArenaStringPtr::Mutable();
      (*(*a2 + 160))(a2);
      result = google::protobuf::internal::ArenaStringPtr::Set();
      *(v4 + 32) |= 1u;
      v2 = a2[8];
    }

    if ((v2 & 2) != 0)
    {
      v5 = *(v4 + 8);
      if (v5)
      {
        v5 = *(v5 & 0xFFFFFFFFFFFFFFFELL);
      }

      if (!*(v4 + 24))
      {
        *(v4 + 24) = MEMORY[0x277C92DA0](v5);
      }

      v6 = (*(*a2 + 168))(a2);
      result = TSWP::MergeFieldTypeArchive::MergeFrom(*(v4 + 24), v6);
      *(v4 + 32) |= 2u;
    }
  }

  return result;
}

uint64_t sub_275FAD230(google::protobuf::internal::MapFieldBase *a1)
{
  v2 = *(a1 + 2);
  if (v2)
  {
    v3 = *(v2 + 8);
    if (v3 >= 1)
    {
      v4 = (*(v2 + 16) + 8);
      do
      {
        v5 = *v4++;
        (*(*v5 + 40))(v5);
        --v3;
      }

      while (v3);
      *(v2 + 8) = 0;
    }
  }

  sub_275FB2400(a1 + 12);

  return google::protobuf::internal::MapFieldBase::SetMapDirty(a1);
}

uint64_t sub_275FAD2C4(google::protobuf::internal::MapFieldBase *a1)
{
  v2 = *(a1 + 2);
  if (v2)
  {
    v3 = *(v2 + 8);
    if (v3 >= 1)
    {
      v4 = (*(v2 + 16) + 8);
      do
      {
        v5 = *v4++;
        (*(*v5 + 40))(v5);
        --v3;
      }

      while (v3);
      *(v2 + 8) = 0;
    }
  }

  sub_275FB2400(a1 + 12);

  return google::protobuf::internal::MapFieldBase::SetMapDirty(a1);
}

uint64_t sub_275FAD358(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_288500630;
  *(a1 + 8) = a2;
  *(a1 + 16) = 0;
  sub_275FB7230(a1 + 24, a2);
  *(a1 + 24) = &unk_288500F80;
  *(a1 + 120) = xmmword_27605AD60;
  *(a1 + 136) = xmmword_27605AD60;
  v4 = MEMORY[0x277D80A88];
  *(a1 + 152) = MEMORY[0x277D80A88];
  *(a1 + 160) = a2;
  sub_275FB7230(a1 + 168, a2);
  *(a1 + 168) = &unk_288500E40;
  *(a1 + 264) = 0;
  *(a1 + 272) = xmmword_27605AD70;
  *(a1 + 288) = 1;
  *(a1 + 296) = v4;
  *(a1 + 304) = a2;
  if (atomic_load_explicit(dword_2812F80F0, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  v5 = MEMORY[0x277D80A90];
  *(a1 + 312) = MEMORY[0x277D80A90];
  *(a1 + 320) = v5;
  *(a1 + 328) = v5;
  *(a1 + 336) = 0;
  *(a1 + 344) = 0;
  *(a1 + 352) = 0;
  *(a1 + 360) = 0;
  *(a1 + 364) = 257;
  return a1;
}

void sub_275FAD47C(_Unwind_Exception *a1)
{
  sub_275FAD4A0(v2);
  sub_275FAD4F4(v1);
  _Unwind_Resume(a1);
}

void sub_275FAD4A0(google::protobuf::internal::MapFieldBase *a1)
{
  *a1 = &unk_288500E40;
  sub_275FB23AC(a1 + 96);

  google::protobuf::internal::MapFieldBase::~MapFieldBase(a1);
}

void sub_275FAD4F4(google::protobuf::internal::MapFieldBase *a1)
{
  *a1 = &unk_288500F80;
  sub_275FB23AC(a1 + 96);

  google::protobuf::internal::MapFieldBase::~MapFieldBase(a1);
}

uint64_t sub_275FAD548(__n128 *a1, google::protobuf::internal::MapFieldBase *a2)
{
  google::protobuf::internal::MapFieldBase::SyncMapWithRepeatedField(a1);
  google::protobuf::internal::MapFieldBase::SyncMapWithRepeatedField(a2);
  sub_275FB72D8(a1 + 6, a2 + 12);

  return google::protobuf::internal::MapFieldBase::SetMapDirty(a1);
}

uint64_t sub_275FAD598(__n128 *a1, google::protobuf::internal::MapFieldBase *a2)
{
  google::protobuf::internal::MapFieldBase::SyncMapWithRepeatedField(a1);
  google::protobuf::internal::MapFieldBase::SyncMapWithRepeatedField(a2);
  sub_275FB72D8(a1 + 6, a2 + 12);

  return google::protobuf::internal::MapFieldBase::SetMapDirty(a1);
}

uint64_t *sub_275FAD5E8(uint64_t *a1)
{
  sub_275FAD67C(a1);
  sub_275F8A514(a1 + 1);
  a1[21] = &unk_288500E40;
  sub_275FB23AC((a1 + 33));
  google::protobuf::internal::MapFieldBase::~MapFieldBase((a1 + 21));
  a1[3] = &unk_288500F80;
  sub_275FB23AC((a1 + 15));
  google::protobuf::internal::MapFieldBase::~MapFieldBase((a1 + 3));
  return a1;
}

void *sub_275FAD67C(void *result)
{
  v1 = result;
  v2 = result[39];
  v3 = MEMORY[0x277D80A90];
  if (v2 != MEMORY[0x277D80A90])
  {
    if (*(v2 + 23) < 0)
    {
      operator delete(*v2);
    }

    result = MEMORY[0x277C93390](v2, 0x1012C40EC159624);
  }

  v4 = *(v1 + 320);
  if (v4 != v3)
  {
    if (*(v4 + 23) < 0)
    {
      operator delete(*v4);
    }

    result = MEMORY[0x277C93390](v4, 0x1012C40EC159624);
  }

  v5 = *(v1 + 328);
  if (v5 != v3)
  {
    if (*(v5 + 23) < 0)
    {
      operator delete(*v5);
    }

    result = MEMORY[0x277C93390](v5, 0x1012C40EC159624);
  }

  if (v1 != &unk_2812F9288)
  {
    v6 = *(v1 + 336);
    if (v6)
    {
      TSP::UUID::~UUID(v6);
      MEMORY[0x277C93390]();
    }

    v7 = *(v1 + 344);
    if (v7)
    {
      v8 = sub_275FAC3DC(v7);
      MEMORY[0x277C93390](v8, 0x10A1C408DC1759FLL);
    }

    result = *(v1 + 352);
    if (result)
    {
      sub_275FAC3DC(result);

      JUMPOUT(0x277C93390);
    }
  }

  return result;
}

void sub_275FAD7BC(uint64_t *a1)
{
  sub_275FAD5E8(a1);

  JUMPOUT(0x277C93390);
}

google::protobuf::internal *sub_275FAD7FC(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v36 = a2;
  v5 = 0;
  if (sub_275FB1588(a3, &v36, *(a3 + 92)))
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
      goto LABEL_98;
    }

    v7 = TagFallback;
    v8 = v19;
LABEL_7:
    v10 = v8 >> 3;
    if (v8 >> 3 > 5)
    {
      break;
    }

    if (v8 >> 3 > 2)
    {
      if (v10 == 3)
      {
        if (v8 == 24)
        {
          v26 = (v7 + 1);
          v25 = *v7;
          if ((v25 & 0x8000000000000000) == 0)
          {
            goto LABEL_64;
          }

          v27 = *v26;
          v25 = (v27 << 7) + v25 - 128;
          if (v27 < 0)
          {
            v36 = google::protobuf::internal::VarintParseSlow64(v7, v25);
            if (!v36)
            {
              goto LABEL_98;
            }
          }

          else
          {
            v26 = (v7 + 2);
LABEL_64:
            v36 = v26;
          }

          if (v25 > 1)
          {
            sub_27603781C();
          }

          else
          {
            *(a1 + 16) |= 0x40u;
            *(a1 + 360) = v25;
          }

          goto LABEL_88;
        }

        goto LABEL_80;
      }

      if (v10 != 4)
      {
        if (v10 == 5 && v8 == 42)
        {
          *(a1 + 16) |= 2u;
          goto LABEL_53;
        }

LABEL_80:
        if (v8)
        {
          v31 = (v8 & 7) == 4;
        }

        else
        {
          v31 = 1;
        }

        if (v31)
        {
          *(a3 + 80) = v8 - 1;
          goto LABEL_2;
        }

        if ((*(a1 + 8) & 1) == 0)
        {
          sub_275FB5524((a1 + 8));
        }

        v23 = google::protobuf::internal::UnknownFieldParse();
LABEL_87:
        v36 = v23;
        if (!v23)
        {
          goto LABEL_98;
        }

        goto LABEL_88;
      }

      if (v8 != 34)
      {
        goto LABEL_80;
      }

      *(a1 + 16) |= 1u;
LABEL_53:
      google::protobuf::internal::ArenaStringPtr::Mutable();
      v23 = google::protobuf::internal::InlineGreedyStringParser();
      goto LABEL_87;
    }

    if (v10 == 1)
    {
      if (v8 != 8)
      {
        goto LABEL_80;
      }

      v5 |= 0x80u;
      v21 = (v7 + 1);
      v20 = *v7;
      if ((v20 & 0x8000000000000000) == 0)
      {
        goto LABEL_48;
      }

      v22 = *v21;
      v20 = (v22 << 7) + v20 - 128;
      if ((v22 & 0x80000000) == 0)
      {
        v21 = (v7 + 2);
LABEL_48:
        v36 = v21;
        *(a1 + 364) = v20 != 0;
        goto LABEL_88;
      }

      v32 = google::protobuf::internal::VarintParseSlow64(v7, v20);
      v36 = v32;
      *(a1 + 364) = v33 != 0;
      if (!v32)
      {
        goto LABEL_98;
      }
    }

    else
    {
      if (v10 != 2 || v8 != 16)
      {
        goto LABEL_80;
      }

      v5 |= 0x100u;
      v16 = (v7 + 1);
      v15 = *v7;
      if ((v15 & 0x8000000000000000) == 0)
      {
        goto LABEL_41;
      }

      v17 = *v16;
      v15 = (v17 << 7) + v15 - 128;
      if ((v17 & 0x80000000) == 0)
      {
        v16 = (v7 + 2);
LABEL_41:
        v36 = v16;
        *(a1 + 365) = v15 != 0;
        goto LABEL_88;
      }

      v34 = google::protobuf::internal::VarintParseSlow64(v7, v15);
      v36 = v34;
      *(a1 + 365) = v35 != 0;
      if (!v34)
      {
        goto LABEL_98;
      }
    }

LABEL_88:
    if (sub_275FB1588(a3, &v36, *(a3 + 92)))
    {
      goto LABEL_2;
    }
  }

  if (v8 >> 3 <= 8)
  {
    if (v10 == 6)
    {
      if (v8 != 50)
      {
        goto LABEL_80;
      }

      *(a1 + 16) |= 8u;
      v28 = *(a1 + 336);
      if (!v28)
      {
        v29 = *(a1 + 8);
        if (v29)
        {
          v29 = *(v29 & 0xFFFFFFFFFFFFFFFELL);
        }

        v28 = MEMORY[0x277C92D20](v29);
        *(a1 + 336) = v28;
        v7 = v36;
      }

      v23 = sub_276034ECC(a3, v28, v7);
      goto LABEL_87;
    }

    if (v10 == 7)
    {
      if (v8 != 58)
      {
        goto LABEL_80;
      }

      *(a1 + 16) |= 4u;
      goto LABEL_53;
    }

    if (v10 != 8 || v8 != 66)
    {
      goto LABEL_80;
    }

    *(a1 + 16) |= 0x10u;
    v11 = *(a1 + 344);
    if (!v11)
    {
      v12 = *(a1 + 8);
      if (v12)
      {
        v12 = *(v12 & 0xFFFFFFFFFFFFFFFELL);
      }

      v11 = sub_275FB03E0(v12);
      *(a1 + 344) = v11;
      goto LABEL_78;
    }

    goto LABEL_79;
  }

  if (v10 == 9)
  {
    if (v8 != 74)
    {
      goto LABEL_80;
    }

    *(a1 + 16) |= 0x20u;
    v11 = *(a1 + 352);
    if (!v11)
    {
      v30 = *(a1 + 8);
      if (v30)
      {
        v30 = *(v30 & 0xFFFFFFFFFFFFFFFELL);
      }

      v11 = sub_275FB03E0(v30);
      *(a1 + 352) = v11;
LABEL_78:
      v7 = v36;
    }

LABEL_79:
    v23 = sub_276036FA0(a3, v11, v7);
    goto LABEL_87;
  }

  if (v10 != 10)
  {
    if (v10 == 11 && v8 == 90)
    {
      v13 = (v7 - 1);
      while (1)
      {
        v36 = (v13 + 1);
        v13 = sub_276037140(a3, a1 + 168, (v13 + 1));
        v36 = v13;
        if (!v13)
        {
          goto LABEL_98;
        }

        if (*a3 <= v13 || *v13 != 90)
        {
          goto LABEL_88;
        }
      }
    }

    goto LABEL_80;
  }

  if (v8 != 82)
  {
    goto LABEL_80;
  }

  v24 = (v7 - 1);
  while (1)
  {
    v36 = (v24 + 1);
    v24 = sub_276037070(a3, a1 + 24, (v24 + 1));
    v36 = v24;
    if (!v24)
    {
      break;
    }

    if (*a3 <= v24 || *v24 != 82)
    {
      goto LABEL_88;
    }
  }

LABEL_98:
  v36 = 0;
LABEL_2:
  *(a1 + 16) |= v5;
  return v36;
}

unsigned __int8 *sub_275FADCF8(uint64_t a1, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v4 = a2;
  v6 = *(a1 + 16);
  if ((v6 & 0x80) != 0)
  {
    if (*a3 <= a2)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v7 = *(a1 + 364);
    *v4 = 8;
    v4[1] = v7;
    v4 += 2;
    if ((v6 & 0x100) == 0)
    {
LABEL_3:
      if ((v6 & 0x40) == 0)
      {
        goto LABEL_4;
      }

LABEL_17:
      if (*a3 <= v4)
      {
        v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
      }

      v9 = *(a1 + 360);
      *v4 = 24;
      if (v9 > 0x7F)
      {
        v4[1] = v9 | 0x80;
        v10 = v9 >> 7;
        if (v9 >> 14)
        {
          v4 += 3;
          do
          {
            *(v4 - 1) = v10 | 0x80;
            v11 = v10 >> 7;
            ++v4;
            v12 = v10 >> 14;
            v10 >>= 7;
          }

          while (v12);
          *(v4 - 1) = v11;
          if (v6)
          {
            goto LABEL_28;
          }
        }

        else
        {
          v4[2] = v10;
          v4 += 3;
          if (v6)
          {
            goto LABEL_28;
          }
        }
      }

      else
      {
        v4[1] = v9;
        v4 += 2;
        if (v6)
        {
          goto LABEL_28;
        }
      }

LABEL_5:
      if ((v6 & 2) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_29;
    }
  }

  else if ((v6 & 0x100) == 0)
  {
    goto LABEL_3;
  }

  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v8 = *(a1 + 365);
  *v4 = 16;
  v4[1] = v8;
  v4 += 2;
  if ((v6 & 0x40) != 0)
  {
    goto LABEL_17;
  }

LABEL_4:
  if ((v6 & 1) == 0)
  {
    goto LABEL_5;
  }

LABEL_28:
  v4 = sub_275F8C698(a3, 4, (*(a1 + 312) & 0xFFFFFFFFFFFFFFFELL), v4);
  if ((v6 & 2) == 0)
  {
LABEL_6:
    if ((v6 & 8) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_30;
  }

LABEL_29:
  v4 = sub_275F8C698(a3, 5, (*(a1 + 320) & 0xFFFFFFFFFFFFFFFELL), v4);
  if ((v6 & 8) == 0)
  {
LABEL_7:
    if ((v6 & 4) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_40;
  }

LABEL_30:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v13 = *(a1 + 336);
  *v4 = 50;
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
  if ((v6 & 4) == 0)
  {
LABEL_8:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_41;
  }

LABEL_40:
  v4 = sub_275F8C698(a3, 7, (*(a1 + 328) & 0xFFFFFFFFFFFFFFFELL), v4);
  if ((v6 & 0x10) == 0)
  {
LABEL_9:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_61;
    }

    goto LABEL_51;
  }

LABEL_41:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v19 = *(a1 + 344);
  *v4 = 66;
  v20 = *(v19 + 20);
  if (v20 > 0x7F)
  {
    v4[1] = v20 | 0x80;
    v22 = v20 >> 7;
    if (v20 >> 14)
    {
      v21 = (v4 + 3);
      do
      {
        *(v21 - 1) = v22 | 0x80;
        v23 = v22 >> 7;
        v21 = (v21 + 1);
        v24 = v22 >> 14;
        v22 >>= 7;
      }

      while (v24);
      *(v21 - 1) = v23;
    }

    else
    {
      v4[2] = v22;
      v21 = (v4 + 3);
    }
  }

  else
  {
    v4[1] = v20;
    v21 = (v4 + 2);
  }

  v4 = sub_275FAC884(v19, v21, a3);
  if ((v6 & 0x20) != 0)
  {
LABEL_51:
    if (*a3 <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
    }

    v25 = *(a1 + 352);
    *v4 = 74;
    v26 = *(v25 + 20);
    if (v26 > 0x7F)
    {
      v4[1] = v26 | 0x80;
      v28 = v26 >> 7;
      if (v26 >> 14)
      {
        v27 = (v4 + 3);
        do
        {
          *(v27 - 1) = v28 | 0x80;
          v29 = v28 >> 7;
          v27 = (v27 + 1);
          v30 = v28 >> 14;
          v28 >>= 7;
        }

        while (v30);
        *(v27 - 1) = v29;
      }

      else
      {
        v4[2] = v28;
        v27 = (v4 + 3);
      }
    }

    else
    {
      v4[1] = v26;
      v27 = (v4 + 2);
    }

    v4 = sub_275FAC884(v25, v27, a3);
  }

LABEL_61:
  google::protobuf::internal::MapFieldBase::SyncMapWithRepeatedField((a1 + 24));
  if (*(a1 + 120))
  {
    if (*(a3 + 58) == 1)
    {
      google::protobuf::internal::MapFieldBase::SyncMapWithRepeatedField((a1 + 24));
      if (*(a1 + 120) >= 2uLL)
      {
        google::protobuf::internal::MapFieldBase::SyncMapWithRepeatedField((a1 + 24));
        operator new[]();
      }
    }

    google::protobuf::internal::MapFieldBase::SyncMapWithRepeatedField((a1 + 24));
    v31 = *(a1 + 144);
    v32 = *(a1 + 128);
    if (v32 <= v31)
    {
      v34 = 0;
    }

    else
    {
      v33 = *(a1 + 152);
      while (1)
      {
        v34 = *(v33 + 8 * v31);
        if (v34)
        {
          break;
        }

        if (v32 == ++v31)
        {
          v34 = 0;
          v31 = *(a1 + 128);
          goto LABEL_73;
        }
      }

      if (v34 == *(v33 + 8 * (v31 ^ 1)))
      {
        v34 = *(*v34 + 40);
      }
    }

LABEL_73:
    *v42 = v34;
    v43 = a1 + 120;
    v44 = v31;
    while (1)
    {
      google::protobuf::internal::MapFieldBase::SyncMapWithRepeatedField((a1 + 24));
      if (!*v42)
      {
        break;
      }

      v4 = sub_275FAE508(10, *v42, (*v42 + 24), v4, a3);
      sub_275FB4204(v42);
    }
  }

  google::protobuf::internal::MapFieldBase::SyncMapWithRepeatedField((a1 + 168));
  if (*(a1 + 264))
  {
    if (*(a3 + 58) == 1)
    {
      google::protobuf::internal::MapFieldBase::SyncMapWithRepeatedField((a1 + 168));
      if (*(a1 + 264) >= 2uLL)
      {
        google::protobuf::internal::MapFieldBase::SyncMapWithRepeatedField((a1 + 168));
        operator new[]();
      }
    }

    google::protobuf::internal::MapFieldBase::SyncMapWithRepeatedField((a1 + 168));
    v36 = *(a1 + 288);
    v37 = *(a1 + 272);
    if (v37 <= v36)
    {
      v39 = 0;
    }

    else
    {
      v38 = *(a1 + 296);
      while (1)
      {
        v39 = *(v38 + 8 * v36);
        if (v39)
        {
          break;
        }

        if (v37 == ++v36)
        {
          v39 = 0;
          v36 = *(a1 + 272);
          goto LABEL_88;
        }
      }

      if (v39 == *(v38 + 8 * (v36 ^ 1)))
      {
        v39 = *(*v39 + 40);
      }
    }

LABEL_88:
    *v42 = v39;
    v43 = a1 + 264;
    v44 = v36;
    google::protobuf::internal::MapFieldBase::SyncMapWithRepeatedField((a1 + 168));
    if (v39)
    {
      do
      {
        v4 = sub_275FAE508(11, v39, (v39 + 24), v4, a3);
        sub_275FB4204(v42);
        google::protobuf::internal::MapFieldBase::SyncMapWithRepeatedField((a1 + 168));
        v39 = *v42;
      }

      while (*v42);
    }
  }

  v40 = *(a1 + 8);
  if (v40)
  {
    return google::protobuf::internal::WireFormat::InternalSerializeUnknownFieldsToArray(((v40 & 0xFFFFFFFFFFFFFFFELL) + 8), v4, a3, v35);
  }

  return v4;
}

uint64_t sub_275FAE508(int a1, uint64_t a2, TSWP::MergeFieldTypeArchive *a3, unsigned __int8 *a4, google::protobuf::io::EpsCopyOutputStream *this)
{
  if (*this <= a4)
  {
    a4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a4);
  }

  v9 = 8 * a1;
  if ((8 * a1) > 0x7F)
  {
    *a4 = v9 | 0x82;
    v11 = v9 >> 7;
    if (v9 >> 14)
    {
      v10 = a4 + 2;
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
      a4[1] = v11;
      v10 = a4 + 2;
    }
  }

  else
  {
    *a4 = v9 | 2;
    v10 = a4 + 1;
  }

  v14 = *(a2 + 23);
  if ((v14 & 0x80u) != 0)
  {
    v14 = *(a2 + 8);
  }

  v15 = *(a3 + 5) + v14 + ((9 * (__clz(*(a3 + 5) | 1) ^ 0x1F) + 73) >> 6) + ((9 * (__clz(v14 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if (v15 > 0x7F)
  {
    *v10 = v15 | 0x80;
    v17 = v15 >> 7;
    if (v15 >> 14)
    {
      v16 = v10 + 2;
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
      v10[1] = v17;
      v16 = v10 + 2;
    }
  }

  else
  {
    *v10 = v15;
    v16 = v10 + 1;
  }

  if (*this <= v16)
  {
    v16 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, v16);
  }

  v20 = sub_275FA1C9C(this, 1, a2, v16);
  if (*this <= v20)
  {
    v20 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, v20);
  }

  *v20 = 18;
  v21 = *(a3 + 5);
  if (v21 > 0x7F)
  {
    v20[1] = v21 | 0x80;
    v23 = v21 >> 7;
    if (v21 >> 14)
    {
      v22 = v20 + 3;
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
      v20[2] = v23;
      v22 = v20 + 3;
    }
  }

  else
  {
    v20[1] = v21;
    v22 = v20 + 2;
  }

  return TSWP::MergeFieldTypeArchive::_InternalSerialize(a3, v22, this);
}

uint64_t sub_275FAE72C(uint64_t a1)
{
  google::protobuf::internal::MapFieldBase::SyncMapWithRepeatedField((a1 + 24));
  v2 = *(a1 + 120);
  google::protobuf::internal::MapFieldBase::SyncMapWithRepeatedField((a1 + 24));
  v3 = *(a1 + 144);
  v4 = *(a1 + 128);
  if (v4 <= v3)
  {
    v6 = 0;
  }

  else
  {
    v5 = *(a1 + 152);
    while (1)
    {
      v6 = *(v5 + 8 * v3);
      if (v6)
      {
        break;
      }

      if (v4 == ++v3)
      {
        v6 = 0;
        v3 = *(a1 + 128);
        goto LABEL_9;
      }
    }

    if (v6 == *(v5 + 8 * (v3 ^ 1)))
    {
      v6 = *(*v6 + 40);
    }
  }

LABEL_9:
  *v29 = v6;
  v30 = a1 + 120;
  v31 = v3;
  while (1)
  {
    google::protobuf::internal::MapFieldBase::SyncMapWithRepeatedField((a1 + 24));
    if (!*v29)
    {
      break;
    }

    v2 += sub_275FAEA98(*v29, (*v29 + 24));
    sub_275FB4204(v29);
  }

  google::protobuf::internal::MapFieldBase::SyncMapWithRepeatedField((a1 + 168));
  v7 = *(a1 + 264) + v2;
  google::protobuf::internal::MapFieldBase::SyncMapWithRepeatedField((a1 + 168));
  v8 = *(a1 + 288);
  v9 = *(a1 + 272);
  if (v9 <= v8)
  {
    v11 = 0;
  }

  else
  {
    v10 = *(a1 + 296);
    while (1)
    {
      v11 = *(v10 + 8 * v8);
      if (v11)
      {
        break;
      }

      if (v9 == ++v8)
      {
        v11 = 0;
        v8 = *(a1 + 272);
        goto LABEL_20;
      }
    }

    if (v11 == *(v10 + 8 * (v8 ^ 1)))
    {
      v11 = *(*v11 + 40);
    }
  }

LABEL_20:
  *v29 = v11;
  v30 = a1 + 264;
  v31 = v8;
  google::protobuf::internal::MapFieldBase::SyncMapWithRepeatedField((a1 + 168));
  if (v11)
  {
    do
    {
      v7 += sub_275FAEA98(v11, (v11 + 24));
      sub_275FB4204(v29);
      google::protobuf::internal::MapFieldBase::SyncMapWithRepeatedField((a1 + 168));
      v11 = *v29;
    }

    while (*v29);
  }

  v12 = *(a1 + 16);
  if (*(a1 + 16))
  {
    if (v12)
    {
      v13 = *(a1 + 312) & 0xFFFFFFFFFFFFFFFELL;
      v14 = *(v13 + 23);
      v15 = *(v13 + 8);
      if ((v14 & 0x80u) == 0)
      {
        v15 = v14;
      }

      v7 += v15 + ((9 * (__clz(v15 | 1) ^ 0x1F) + 73) >> 6) + 1;
      if ((v12 & 2) == 0)
      {
LABEL_25:
        if ((v12 & 4) == 0)
        {
          goto LABEL_26;
        }

        goto LABEL_37;
      }
    }

    else if ((v12 & 2) == 0)
    {
      goto LABEL_25;
    }

    v16 = *(a1 + 320) & 0xFFFFFFFFFFFFFFFELL;
    v17 = *(v16 + 23);
    v18 = *(v16 + 8);
    if ((v17 & 0x80u) == 0)
    {
      v18 = v17;
    }

    v7 += v18 + ((9 * (__clz(v18 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v12 & 4) == 0)
    {
LABEL_26:
      if ((v12 & 8) == 0)
      {
        goto LABEL_27;
      }

      goto LABEL_40;
    }

LABEL_37:
    v19 = *(a1 + 328) & 0xFFFFFFFFFFFFFFFELL;
    v20 = *(v19 + 23);
    v21 = *(v19 + 8);
    if ((v20 & 0x80u) == 0)
    {
      v21 = v20;
    }

    v7 += v21 + ((9 * (__clz(v21 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v12 & 8) == 0)
    {
LABEL_27:
      if ((v12 & 0x10) == 0)
      {
        goto LABEL_28;
      }

      goto LABEL_41;
    }

LABEL_40:
    v22 = TSP::UUID::ByteSizeLong(*(a1 + 336));
    v7 += v22 + ((9 * (__clz(v22 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v12 & 0x10) == 0)
    {
LABEL_28:
      if ((v12 & 0x20) == 0)
      {
        goto LABEL_29;
      }

      goto LABEL_42;
    }

LABEL_41:
    v23 = sub_275FACB04(*(a1 + 344));
    v7 += v23 + ((9 * (__clz(v23 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v12 & 0x20) == 0)
    {
LABEL_29:
      if ((v12 & 0x40) == 0)
      {
        goto LABEL_47;
      }

      goto LABEL_43;
    }

LABEL_42:
    v24 = sub_275FACB04(*(a1 + 352));
    v7 += v24 + ((9 * (__clz(v24 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v12 & 0x40) == 0)
    {
LABEL_47:
      v7 += (v12 >> 6) & 2;
      goto LABEL_48;
    }

LABEL_43:
    v25 = *(a1 + 360);
    if (v25 < 0)
    {
      v26 = 11;
    }

    else
    {
      v26 = ((9 * (__clz(v25 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    v7 += v26;
    goto LABEL_47;
  }

LABEL_48:
  v27 = v7 + ((v12 >> 7) & 2);
  if (*(a1 + 8))
  {
    return google::protobuf::internal::ComputeUnknownFieldsSize();
  }

  *(a1 + 20) = v27;
  return v27;
}

uint64_t sub_275FAEA98(uint64_t a1, TSWP::MergeFieldTypeArchive *this)
{
  v2 = *(a1 + 23);
  if ((v2 & 0x80u) != 0)
  {
    v2 = *(a1 + 8);
  }

  v3 = v2 + ((9 * (__clz(v2 | 1) ^ 0x1F) + 73) >> 6) + 2;
  v4 = TSWP::MergeFieldTypeArchive::ByteSizeLong(this);
  v5 = v4 + ((9 * (__clz(v4 | 1) ^ 0x1F) + 73) >> 6) + v3;
  return v5 + ((9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6);
}

uint64_t sub_275FAEB28(uint64_t a1, void *lpsrc)
{
  v4 = __dynamic_cast(lpsrc, MEMORY[0x277D80A98], &unk_288500A78, 0);
  if (v4)
  {

    return sub_275FA6AA0(a1, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, a1);
  }
}

void *sub_275FAEBD0(void *result, void *a2)
{
  if (a2 != result)
  {
    v4 = result;
    sub_275FA476C(result);

    return sub_275FAEB28(v4, a2);
  }

  return result;
}

uint64_t *sub_275FAEC1C(__n128 *a1, __n128 *a2)
{
  v4 = a1[1].n128_u64[0];
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  a2[1].n128_u64[0] = v4;
  result = sub_275FB8A60(a1 + 6, a2 + 6);
  v6 = a2[5].n128_u32[2];
  a2[5].n128_u32[2] = a1[5].n128_u32[2];
  a1[5].n128_u32[2] = v6;
  return result;
}

uint64_t *sub_275FAEC6C(__n128 *a1, __n128 *a2)
{
  v4 = a1[1].n128_u64[0];
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  a2[1].n128_u64[0] = v4;
  result = sub_275FB8A60(a1 + 6, a2 + 6);
  v6 = a2[5].n128_u32[2];
  a2[5].n128_u32[2] = a1[5].n128_u32[2];
  a1[5].n128_u32[2] = v6;
  return result;
}

uint64_t sub_275FAECFC(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_275FB8D80(a1, 1);
  sub_275F8A16C(v2, a1);
  return v2;
}

void *sub_275FAED88(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_275FB8E0C(a1);
}

uint64_t sub_275FAEE54(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_275FB8F0C(a1, 1);
  sub_275F8DF54(v2, a1);
  return v2;
}

void *sub_275FAEEE0(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_275FB8F98(a1);
}

void *sub_275FAEFAC(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_275FB9098(a1, 1);
  sub_275F909C0(v2, a1);
  return v2;
}

uint64_t sub_275FAF038(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_275FB9124(a1, 1);
  sub_275F91220(v2, a1);
  return v2;
}

void *sub_275FAF0C4(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_275FB91B0(a1);
}

uint64_t sub_275FAF190(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_275FB92B0(a1, 1);
  sub_275F91F54(v2, a1);
  return v2;
}

void *sub_275FAF21C(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_275FB933C(a1, 1);
  sub_275F92D7C(v2, a1);
  return v2;
}

uint64_t sub_275FAF2A8(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_275FB93C8(a1, 1);
  sub_275F936FC(v2, a1);
  return v2;
}

void *sub_275FAF334(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_275FB9454(a1, 1);
  sub_275F93E94(v2, a1);
  return v2;
}

uint64_t sub_275FAF3C0(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_275FB94E0(a1, 1);
  sub_275F94D68(v2, a1);
  return v2;
}

uint64_t sub_275FAF44C(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_275FB956C(a1, 1);
  sub_275F95744(v2, a1);
  return v2;
}

uint64_t sub_275FAF4D8(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_275FB95F8(a1, 1);
  sub_275F968E0(v2, a1);
  return v2;
}

void *sub_275FAF564(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  result = sub_275FB9684(a1, 1);
  *result = &unk_2884FF380;
  result[1] = a1;
  result[3] = 0;
  result[4] = 0;
  result[2] = 0;
  return result;
}

void *sub_275FAF5D8(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  result = sub_275FB972C(a1, 1);
  *result = &unk_2884FF430;
  result[1] = a1;
  result[3] = 0;
  result[4] = 0;
  result[2] = 0;
  return result;
}

uint64_t sub_275FAF64C(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_275FB97D4(a1);
}

uint64_t sub_275FAF720(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_275FB98DC(a1);
}

uint64_t sub_275FAF7FC(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_275FB99EC(a1, 1);
  sub_275F9BB30(v2, a1);
  return v2;
}

uint64_t sub_275FAF888(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  result = sub_275FB9A78(a1, 1);
  *result = &unk_2884FF6F0;
  *(result + 8) = a1;
  *(result + 16) = 0;
  return result;
}

uint64_t sub_275FAF8F8(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_275FB9B20(a1, 1);
  sub_275F9E798(v2, a1);
  return v2;
}

void *sub_275FAF984(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_275FB9BAC(a1);
}

void *sub_275FAFA50(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  result = sub_275FB9CAC(a1, 1);
  *result = &unk_2884FF900;
  result[1] = a1;
  result[2] = 0;
  result[3] = 0;
  *(result + 29) = 0;
  return result;
}

void *sub_275FAFAC4(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_275FB9D54(a1, 1);
  sub_275FA01A4(v2, a1);
  return v2;
}

uint64_t sub_275FAFB50(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_275FB9DE0(a1, 1);
  sub_275FA0AB8(v2, a1);
  return v2;
}

void *sub_275FAFBDC(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_275FB9E6C(a1, 1);
  sub_275FA1098(v2, a1);
  return v2;
}

uint64_t sub_275FAFC68(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_275FB9EF8(a1, 1);
  sub_275FA2328(v2, a1);
  return v2;
}

uint64_t sub_275FAFCF4(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  result = sub_275FB9F84(a1, 1);
  *result = &unk_2884FFC70;
  *(result + 8) = a1;
  *(result + 16) = 0;
  return result;
}

uint64_t sub_275FAFD64(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_275FBA02C(a1, 1);
  sub_275FA4178(v2, a1);
  return v2;
}

void *sub_275FAFDF0(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_275FBA0B8(a1);
}

uint64_t sub_275FAFEBC(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_275FBA1B8(a1);
}

uint64_t sub_275FAFF8C(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_275FBA2BC(a1, 1);
  sub_275FA7F2C(v2, a1);
  return v2;
}

uint64_t sub_275FB0018(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_275FBA348(a1, 1);
  sub_275FA8698(v2, a1);
  return v2;
}

void *sub_275FB00A4(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_275FBA3D4(a1, 1);
  sub_275FA8D50(v2, a1);
  return v2;
}

uint64_t sub_275FB0130(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_275FBA460(a1);
}

uint64_t sub_275FB0200(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_275FBA564(a1, 1);
  sub_275FA9FFC(v2, a1);
  return v2;
}

void *sub_275FB028C(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_275FBA5F0(a1);
}

uint64_t sub_275FB0358(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_275FBA6F0(a1, 1);
  sub_275FAB68C(v2, a1);
  return v2;
}

void *sub_275FB03E4(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_275FBA77C(a1, 1);
  sub_275FAC344(v2, a1);
  return v2;
}

uint64_t sub_275FB0470(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  result = sub_275FBA808(a1, 1);
  v3 = MEMORY[0x277D80A90];
  *(result + 8) = a1;
  *(result + 16) = v3;
  *(result + 24) = 0;
  *(result + 32) = 0;
  *(result + 40) = a1;
  *result = &unk_2885004B0;
  return result;
}

uint64_t sub_275FB04F4(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  result = sub_275FBA8B4(a1, 1);
  v3 = MEMORY[0x277D80A90];
  *(result + 8) = a1;
  *(result + 16) = v3;
  *(result + 24) = 0;
  *(result + 32) = 0;
  *(result + 40) = a1;
  *result = &unk_288500570;
  return result;
}

uint64_t sub_275FB0578(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_275FBA960(a1, 1);
  sub_275FAD358(v2, a1);
  return v2;
}

void sub_275FB09CC(void *a1)
{
  sub_275FB5464(a1);

  JUMPOUT(0x277C93390);
}

TSWP::MergeFieldTypeArchive *sub_275FB0A7C(uint64_t a1)
{
  google::protobuf::internal::ArenaStringPtr::ClearToEmpty((a1 + 16));
  result = *(a1 + 24);
  if (result)
  {
    result = TSWP::MergeFieldTypeArchive::Clear(result);
  }

  *(a1 + 32) &= 0xFFFFFFFC;
  return result;
}

uint64_t sub_275FB0ABC(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return MEMORY[0x2821EBC60]();
  }

  return result;
}

uint64_t sub_275FB0AD0(uint64_t a1)
{
  v2 = (*(*a1 + 160))(a1);
  v3 = *(v2 + 23);
  if ((v3 & 0x80u) != 0)
  {
    v3 = *(v2 + 8);
  }

  v4 = v3 + ((9 * (__clz(v3 | 1) ^ 0x1F) + 73) >> 6);
  v5 = (*(*a1 + 168))(a1);
  v6 = TSWP::MergeFieldTypeArchive::ByteSizeLong(v5);
  return v6 + v4 + ((9 * (__clz(v6 | 1) ^ 0x1F) + 73) >> 6) + 2;
}

uint64_t sub_275FB0B90(_DWORD *a1)
{
  v2 = a1[8];
  if (v2)
  {
    v6 = (*(*a1 + 160))(a1);
    v7 = *(v6 + 23);
    if ((v7 & 0x80u) != 0)
    {
      v7 = *(v6 + 8);
    }

    v3 = v7 + ((9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((a1[8] & 2) != 0)
    {
      goto LABEL_3;
    }

LABEL_7:
    v5 = 0;
    return v5 + v3;
  }

  v3 = 0;
  if ((v2 & 2) == 0)
  {
    goto LABEL_7;
  }

LABEL_3:
  v4 = (*(*a1 + 168))(a1);
  v5 = *(v4 + 20) + ((9 * (__clz(*(v4 + 20) | 1) ^ 0x1F) + 73) >> 6) + 1;
  return v5 + v3;
}

google::protobuf::internal *sub_275FB0C74(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v16 = a2;
  while (1)
  {
    if (sub_275FB1588(a3, &v16, *(a3 + 92)))
    {
      return v16;
    }

    TagFallback = (v16 + 1);
    LODWORD(v6) = *v16;
    if ((*v16 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    v6 = (v6 + (*TagFallback << 7) - 128);
    if ((*TagFallback & 0x80000000) == 0)
    {
      TagFallback = (v16 + 2);
LABEL_6:
      v16 = TagFallback;
      goto LABEL_7;
    }

    TagFallback = google::protobuf::internal::ReadTagFallback(v16, v6);
    v16 = TagFallback;
    if (!TagFallback)
    {
      return TagFallback;
    }

LABEL_7:
    if (v6 == 10)
    {
      *(a1 + 32) |= 1u;
      v9 = google::protobuf::internal::ArenaStringPtr::Mutable();
      v10 = *v16;
      if ((v10 & 0x80) != 0)
      {
        SizeFallback = google::protobuf::internal::ReadSizeFallback(v16, *v16);
        if (!SizeFallback)
        {
          goto LABEL_19;
        }

        v11 = SizeFallback;
        v10 = v12;
      }

      else
      {
        v11 = (v16 + 1);
      }

      SizeFallback = sub_275FB74F8(a3, v11, v10, v9);
      goto LABEL_19;
    }

    if (v6 == 18)
    {
      *(a1 + 32) |= 2u;
      v13 = *(a1 + 8);
      if (v13)
      {
        v13 = *(v13 & 0xFFFFFFFFFFFFFFFELL);
      }

      v14 = *(a1 + 24);
      if (!v14)
      {
        v14 = MEMORY[0x277C92DA0](v13);
        *(a1 + 24) = v14;
        TagFallback = v16;
      }

      SizeFallback = sub_276036ED0(a3, v14, TagFallback);
      goto LABEL_19;
    }

    if (!v6 || (v6 & 7) == 4)
    {
      break;
    }

    SizeFallback = google::protobuf::internal::UnknownFieldParse();
LABEL_19:
    v16 = SizeFallback;
    if (!SizeFallback)
    {
      return 0;
    }
  }

  *(a3 + 80) = v6 - 1;
  return TagFallback;
}

uint64_t sub_275FB0E0C(uint64_t a1, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v6 = (*(*a1 + 160))(a1);
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v7 = sub_275FA1C9C(a3, 1, v6, a2);
  v8 = (*(*a1 + 168))(a1);
  if (*a3 <= v7)
  {
    v7 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v7);
  }

  *v7 = 18;
  v9 = *(v8 + 5);
  if (v9 > 0x7F)
  {
    v7[1] = v9 | 0x80;
    v11 = v9 >> 7;
    if (v9 >> 14)
    {
      v10 = v7 + 3;
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
      v7[2] = v11;
      v10 = v7 + 3;
    }
  }

  else
  {
    v7[1] = v9;
    v10 = v7 + 2;
  }

  return TSWP::MergeFieldTypeArchive::_InternalSerialize(v8, v10, a3);
}

uint64_t sub_275FB0F90(uint64_t a1)
{
  if (*(a1 + 24))
  {
    return *(a1 + 24);
  }

  else
  {
    return MEMORY[0x277D81078];
  }
}

void sub_275FB0FAC(void *a1)
{
  sub_275FB54C4(a1);

  JUMPOUT(0x277C93390);
}

TSWP::MergeFieldTypeArchive *sub_275FB105C(uint64_t a1)
{
  google::protobuf::internal::ArenaStringPtr::ClearToEmpty((a1 + 16));
  result = *(a1 + 24);
  if (result)
  {
    result = TSWP::MergeFieldTypeArchive::Clear(result);
  }

  *(a1 + 32) &= 0xFFFFFFFC;
  return result;
}

uint64_t sub_275FB109C(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return MEMORY[0x2821EBC60]();
  }

  return result;
}

uint64_t sub_275FB10B0(uint64_t a1)
{
  v2 = (*(*a1 + 160))(a1);
  v3 = *(v2 + 23);
  if ((v3 & 0x80u) != 0)
  {
    v3 = *(v2 + 8);
  }

  v4 = v3 + ((9 * (__clz(v3 | 1) ^ 0x1F) + 73) >> 6);
  v5 = (*(*a1 + 168))(a1);
  v6 = TSWP::MergeFieldTypeArchive::ByteSizeLong(v5);
  return v6 + v4 + ((9 * (__clz(v6 | 1) ^ 0x1F) + 73) >> 6) + 2;
}

uint64_t sub_275FB1170(_DWORD *a1)
{
  v2 = a1[8];
  if (v2)
  {
    v6 = (*(*a1 + 160))(a1);
    v7 = *(v6 + 23);
    if ((v7 & 0x80u) != 0)
    {
      v7 = *(v6 + 8);
    }

    v3 = v7 + ((9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((a1[8] & 2) != 0)
    {
      goto LABEL_3;
    }

LABEL_7:
    v5 = 0;
    return v5 + v3;
  }

  v3 = 0;
  if ((v2 & 2) == 0)
  {
    goto LABEL_7;
  }

LABEL_3:
  v4 = (*(*a1 + 168))(a1);
  v5 = *(v4 + 20) + ((9 * (__clz(*(v4 + 20) | 1) ^ 0x1F) + 73) >> 6) + 1;
  return v5 + v3;
}

google::protobuf::internal *sub_275FB1254(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v16 = a2;
  while (1)
  {
    if (sub_275FB1588(a3, &v16, *(a3 + 92)))
    {
      return v16;
    }

    TagFallback = (v16 + 1);
    LODWORD(v6) = *v16;
    if ((*v16 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    v6 = (v6 + (*TagFallback << 7) - 128);
    if ((*TagFallback & 0x80000000) == 0)
    {
      TagFallback = (v16 + 2);
LABEL_6:
      v16 = TagFallback;
      goto LABEL_7;
    }

    TagFallback = google::protobuf::internal::ReadTagFallback(v16, v6);
    v16 = TagFallback;
    if (!TagFallback)
    {
      return TagFallback;
    }

LABEL_7:
    if (v6 == 10)
    {
      *(a1 + 32) |= 1u;
      v9 = google::protobuf::internal::ArenaStringPtr::Mutable();
      v10 = *v16;
      if ((v10 & 0x80) != 0)
      {
        SizeFallback = google::protobuf::internal::ReadSizeFallback(v16, *v16);
        if (!SizeFallback)
        {
          goto LABEL_19;
        }

        v11 = SizeFallback;
        v10 = v12;
      }

      else
      {
        v11 = (v16 + 1);
      }

      SizeFallback = sub_275FB74F8(a3, v11, v10, v9);
      goto LABEL_19;
    }

    if (v6 == 18)
    {
      *(a1 + 32) |= 2u;
      v13 = *(a1 + 8);
      if (v13)
      {
        v13 = *(v13 & 0xFFFFFFFFFFFFFFFELL);
      }

      v14 = *(a1 + 24);
      if (!v14)
      {
        v14 = MEMORY[0x277C92DA0](v13);
        *(a1 + 24) = v14;
        TagFallback = v16;
      }

      SizeFallback = sub_276036ED0(a3, v14, TagFallback);
      goto LABEL_19;
    }

    if (!v6 || (v6 & 7) == 4)
    {
      break;
    }

    SizeFallback = google::protobuf::internal::UnknownFieldParse();
LABEL_19:
    v16 = SizeFallback;
    if (!SizeFallback)
    {
      return 0;
    }
  }

  *(a3 + 80) = v6 - 1;
  return TagFallback;
}

uint64_t sub_275FB13EC(uint64_t a1, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v6 = (*(*a1 + 160))(a1);
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v7 = sub_275FA1C9C(a3, 1, v6, a2);
  v8 = (*(*a1 + 168))(a1);
  if (*a3 <= v7)
  {
    v7 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v7);
  }

  *v7 = 18;
  v9 = *(v8 + 5);
  if (v9 > 0x7F)
  {
    v7[1] = v9 | 0x80;
    v11 = v9 >> 7;
    if (v9 >> 14)
    {
      v10 = v7 + 3;
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
      v7[2] = v11;
      v10 = v7 + 3;
    }
  }

  else
  {
    v7[1] = v9;
    v10 = v7 + 2;
  }

  return TSWP::MergeFieldTypeArchive::_InternalSerialize(v8, v10, a3);
}

uint64_t sub_275FB1570(uint64_t a1)
{
  if (*(a1 + 24))
  {
    return *(a1 + 24);
  }

  else
  {
    return MEMORY[0x277D81078];
  }
}

uint64_t sub_275FB1588(uint64_t a1, uint64_t *a2, int a3)
{
  if (*a2 >= *a1)
  {
    v6 = *a2 - *(a1 + 8);
    if (*(a1 + 28) == v6)
    {
      if (v6 >= 1 && !*(a1 + 16))
      {
        *a2 = 0;
      }

      v3 = 1;
    }

    else
    {
      *a2 = google::protobuf::internal::EpsCopyInputStream::DoneFallback(a1);
    }
  }

  else
  {
    v3 = 0;
  }

  return v3 & 1;
}