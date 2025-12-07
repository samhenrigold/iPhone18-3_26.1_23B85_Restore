unsigned __int8 *sub_27648E8D8(uint64_t a1, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v4 = a2;
  v6 = *(a1 + 16);
  if ((v6 & 4) != 0)
  {
    if (*a3 <= a2)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v8 = *(a1 + 40);
    *v4 = 10;
    v9 = *(v8 + 5);
    if (v9 > 0x7F)
    {
      v4[1] = v9 | 0x80;
      v12 = v9 >> 7;
      if (v9 >> 14)
      {
        v10 = v4 + 3;
        do
        {
          *(v10 - 1) = v12 | 0x80;
          v15 = v12 >> 7;
          ++v10;
          v16 = v12 >> 14;
          v12 >>= 7;
        }

        while (v16);
        *(v10 - 1) = v15;
      }

      else
      {
        v4[2] = v12;
        v10 = v4 + 3;
      }
    }

    else
    {
      v4[1] = v9;
      v10 = v4 + 2;
    }

    v4 = TSS::StyleArchive::_InternalSerialize(v8, v10, a3);
    if ((v6 & 8) == 0)
    {
LABEL_3:
      if ((v6 & 0x10) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_49;
    }
  }

  else if ((v6 & 8) == 0)
  {
    goto LABEL_3;
  }

  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v17 = *(a1 + 48);
  *v4 = 90;
  v18 = *(v17 + 20);
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

  v4 = sub_27640074C(v17, v19, a3);
  if ((v6 & 0x10) == 0)
  {
LABEL_4:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_59;
  }

LABEL_49:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v23 = *(a1 + 56);
  *v4 = 98;
  v24 = *(v23 + 20);
  if (v24 > 0x7F)
  {
    v4[1] = v24 | 0x80;
    v26 = v24 >> 7;
    if (v24 >> 14)
    {
      v25 = (v4 + 3);
      do
      {
        *(v25 - 1) = v26 | 0x80;
        v27 = v26 >> 7;
        ++v25;
        v28 = v26 >> 14;
        v26 >>= 7;
      }

      while (v28);
      *(v25 - 1) = v27;
    }

    else
    {
      v4[2] = v26;
      v25 = (v4 + 3);
    }
  }

  else
  {
    v4[1] = v24;
    v25 = (v4 + 2);
  }

  v4 = sub_27640074C(v23, v25, a3);
  if ((v6 & 0x20) == 0)
  {
LABEL_5:
    if ((v6 & 0x400) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_69;
  }

LABEL_59:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v29 = *(a1 + 64);
  *v4 = 106;
  v30 = *(v29 + 20);
  if (v30 > 0x7F)
  {
    v4[1] = v30 | 0x80;
    v32 = v30 >> 7;
    if (v30 >> 14)
    {
      v31 = v4 + 3;
      do
      {
        *(v31 - 1) = v32 | 0x80;
        v33 = v32 >> 7;
        ++v31;
        v34 = v32 >> 14;
        v32 >>= 7;
      }

      while (v34);
      *(v31 - 1) = v33;
    }

    else
    {
      v4[2] = v32;
      v31 = v4 + 3;
    }
  }

  else
  {
    v4[1] = v30;
    v31 = v4 + 2;
  }

  v4 = sub_2764822BC(v29, v31, a3);
  if ((v6 & 0x400) == 0)
  {
LABEL_6:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_7;
    }

LABEL_72:
    if (*a3 <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
    }

    v36 = *(a1 + 72);
    *v4 = 912;
    if (v36 > 0x7F)
    {
      v4[2] = v36 | 0x80;
      v37 = v36 >> 7;
      if (v36 >> 14)
      {
        v4 += 4;
        do
        {
          *(v4 - 1) = v37 | 0x80;
          v38 = v37 >> 7;
          ++v4;
          v39 = v37 >> 14;
          v37 >>= 7;
        }

        while (v39);
        *(v4 - 1) = v38;
        if ((v6 & 0x80) != 0)
        {
          goto LABEL_83;
        }
      }

      else
      {
        v4[3] = v37;
        v4 += 4;
        if ((v6 & 0x80) != 0)
        {
          goto LABEL_83;
        }
      }
    }

    else
    {
      v4[2] = v36;
      v4 += 3;
      if ((v6 & 0x80) != 0)
      {
        goto LABEL_83;
      }
    }

LABEL_8:
    if ((v6 & 0x100) == 0)
    {
      goto LABEL_9;
    }

LABEL_94:
    if (*a3 <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
    }

    v44 = *(a1 + 80);
    *v4 = 928;
    if (v44 > 0x7F)
    {
      v4[2] = v44 | 0x80;
      v45 = v44 >> 7;
      if (v44 >> 14)
      {
        v4 += 4;
        do
        {
          *(v4 - 1) = v45 | 0x80;
          v46 = v45 >> 7;
          ++v4;
          v47 = v45 >> 14;
          v45 >>= 7;
        }

        while (v47);
        *(v4 - 1) = v46;
        if ((v6 & 0x800) != 0)
        {
          goto LABEL_105;
        }
      }

      else
      {
        v4[3] = v45;
        v4 += 4;
        if ((v6 & 0x800) != 0)
        {
          goto LABEL_105;
        }
      }
    }

    else
    {
      v4[2] = v44;
      v4 += 3;
      if ((v6 & 0x800) != 0)
      {
        goto LABEL_105;
      }
    }

LABEL_10:
    if ((v6 & 0x1000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_108;
  }

LABEL_69:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v35 = *(a1 + 88);
  *v4 = 112;
  v4[1] = v35;
  v4 += 2;
  if ((v6 & 0x40) != 0)
  {
    goto LABEL_72;
  }

LABEL_7:
  if ((v6 & 0x80) == 0)
  {
    goto LABEL_8;
  }

LABEL_83:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v40 = *(a1 + 76);
  *v4 = 920;
  if (v40 > 0x7F)
  {
    v4[2] = v40 | 0x80;
    v41 = v40 >> 7;
    if (v40 >> 14)
    {
      v4 += 4;
      do
      {
        *(v4 - 1) = v41 | 0x80;
        v42 = v41 >> 7;
        ++v4;
        v43 = v41 >> 14;
        v41 >>= 7;
      }

      while (v43);
      *(v4 - 1) = v42;
      if ((v6 & 0x100) != 0)
      {
        goto LABEL_94;
      }
    }

    else
    {
      v4[3] = v41;
      v4 += 4;
      if ((v6 & 0x100) != 0)
      {
        goto LABEL_94;
      }
    }
  }

  else
  {
    v4[2] = v40;
    v4 += 3;
    if ((v6 & 0x100) != 0)
    {
      goto LABEL_94;
    }
  }

LABEL_9:
  if ((v6 & 0x800) == 0)
  {
    goto LABEL_10;
  }

LABEL_105:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v48 = *(a1 + 89);
  *v4 = 936;
  v4[2] = v48;
  v4 += 3;
  if ((v6 & 0x1000) == 0)
  {
LABEL_11:
    if ((v6 & 0x200) == 0)
    {
      goto LABEL_12;
    }

LABEL_111:
    if (*a3 <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
    }

    v50 = *(a1 + 84);
    *v4 = 952;
    if (v50 > 0x7F)
    {
      v4[2] = v50 | 0x80;
      v51 = v50 >> 7;
      if (v50 >> 14)
      {
        v4 += 4;
        do
        {
          *(v4 - 1) = v51 | 0x80;
          v52 = v51 >> 7;
          ++v4;
          v53 = v51 >> 14;
          v51 >>= 7;
        }

        while (v53);
        *(v4 - 1) = v52;
        if (v6)
        {
          goto LABEL_122;
        }
      }

      else
      {
        v4[3] = v51;
        v4 += 4;
        if (v6)
        {
          goto LABEL_122;
        }
      }
    }

    else
    {
      v4[2] = v50;
      v4 += 3;
      if (v6)
      {
        goto LABEL_122;
      }
    }

LABEL_13:
    if ((v6 & 0x2000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_123;
  }

LABEL_108:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v49 = *(a1 + 90);
  *v4 = 944;
  v4[2] = v49;
  v4 += 3;
  if ((v6 & 0x200) != 0)
  {
    goto LABEL_111;
  }

LABEL_12:
  if ((v6 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_122:
  v4 = sub_2763DD938(a3, 56, (*(a1 + 24) & 0xFFFFFFFFFFFFFFFELL), v4);
  if ((v6 & 0x2000) == 0)
  {
LABEL_14:
    if ((v6 & 0x4000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_126;
  }

LABEL_123:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v54 = *(a1 + 91);
  *v4 = 1696;
  v4[2] = v54;
  v4 += 3;
  if ((v6 & 0x4000) == 0)
  {
LABEL_15:
    if ((v6 & 0x8000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_129;
  }

LABEL_126:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v55 = *(a1 + 92);
  *v4 = 1704;
  v4[2] = v55;
  v4 += 3;
  if ((v6 & 0x8000) == 0)
  {
LABEL_16:
    if ((v6 & 2) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_132;
  }

LABEL_129:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v56 = *(a1 + 93);
  *v4 = 1712;
  v4[2] = v56;
  v4 += 3;
  if ((v6 & 2) == 0)
  {
LABEL_17:
    if ((v6 & 0x10000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_133;
  }

LABEL_132:
  v4 = sub_2763DD938(a3, 103, (*(a1 + 32) & 0xFFFFFFFFFFFFFFFELL), v4);
  if ((v6 & 0x10000) == 0)
  {
LABEL_18:
    if ((v6 & 0x20000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_136;
  }

LABEL_133:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v57 = *(a1 + 94);
  *v4 = 1952;
  v4[2] = v57;
  v4 += 3;
  if ((v6 & 0x20000) == 0)
  {
LABEL_19:
    if ((v6 & 0x40000) == 0)
    {
      goto LABEL_147;
    }

    goto LABEL_20;
  }

LABEL_136:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v58 = *(a1 + 96);
  *v4 = 1984;
  if (v58 > 0x7F)
  {
    v4[2] = v58 | 0x80;
    v59 = v58 >> 7;
    if (v58 >> 14)
    {
      v4 += 4;
      do
      {
        *(v4 - 1) = v59 | 0x80;
        v60 = v59 >> 7;
        ++v4;
        v61 = v59 >> 14;
        v59 >>= 7;
      }

      while (v61);
      *(v4 - 1) = v60;
      if ((v6 & 0x40000) == 0)
      {
        goto LABEL_147;
      }
    }

    else
    {
      v4[3] = v59;
      v4 += 4;
      if ((v6 & 0x40000) == 0)
      {
        goto LABEL_147;
      }
    }
  }

  else
  {
    v4[2] = v58;
    v4 += 3;
    if ((v6 & 0x40000) == 0)
    {
      goto LABEL_147;
    }
  }

LABEL_20:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v7 = *(a1 + 100);
  *v4 = 5504;
  if (v7 > 0x7F)
  {
    v4[2] = v7 | 0x80;
    v11 = v7 >> 7;
    if (v7 >> 14)
    {
      v4 += 4;
      do
      {
        *(v4 - 1) = v11 | 0x80;
        v13 = v11 >> 7;
        ++v4;
        v14 = v11 >> 14;
        v11 >>= 7;
      }

      while (v14);
      *(v4 - 1) = v13;
    }

    else
    {
      v4[3] = v11;
      v4 += 4;
    }
  }

  else
  {
    v4[2] = v7;
    v4 += 3;
  }

LABEL_147:
  v62 = *(a1 + 8);
  if ((v62 & 1) == 0)
  {
    return v4;
  }

  return MEMORY[0x2821EAC40]((v62 & 0xFFFFFFFFFFFFFFFELL) + 8, v4, a3);
}

uint64_t sub_27648F10C(uint64_t a1)
{
  v2 = *(a1 + 16);
  if ((v2 & 4) != 0)
  {
    v4 = TSS::StyleArchive::ByteSizeLong(*(a1 + 40));
    v3 = v4 + ((9 * (__clz(v4 | 1) ^ 0x1F) + 73) >> 6) + 1;
    v2 = *(a1 + 16);
  }

  else
  {
    v3 = 0;
  }

  if ((v2 & 3) != 0)
  {
    if (v2)
    {
      v5 = *(a1 + 24) & 0xFFFFFFFFFFFFFFFELL;
      v6 = *(v5 + 23);
      v7 = *(v5 + 8);
      if ((v6 & 0x80u) == 0)
      {
        v7 = v6;
      }

      v3 += v7 + ((9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6) + 2;
    }

    if ((v2 & 2) != 0)
    {
      v8 = *(a1 + 32) & 0xFFFFFFFFFFFFFFFELL;
      v9 = *(v8 + 23);
      v10 = *(v8 + 8);
      if ((v9 & 0x80u) == 0)
      {
        v10 = v9;
      }

      v3 += v10 + ((9 * (__clz(v10 | 1) ^ 0x1F) + 73) >> 6) + 2;
    }
  }

  if ((v2 & 0xF8) == 0)
  {
    goto LABEL_31;
  }

  if ((v2 & 8) != 0)
  {
    v11 = sub_2764007DC(*(a1 + 48));
    v3 += v11 + ((9 * (__clz(v11 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v2 & 0x10) == 0)
    {
LABEL_16:
      if ((v2 & 0x20) == 0)
      {
        goto LABEL_17;
      }

LABEL_22:
      v13 = sub_276482F08(*(a1 + 64));
      v3 += v13 + ((9 * (__clz(v13 | 1) ^ 0x1F) + 73) >> 6) + 1;
      if ((v2 & 0x40) == 0)
      {
LABEL_18:
        if ((v2 & 0x80) == 0)
        {
          goto LABEL_31;
        }

        goto LABEL_27;
      }

      goto LABEL_23;
    }
  }

  else if ((v2 & 0x10) == 0)
  {
    goto LABEL_16;
  }

  v12 = sub_2764007DC(*(a1 + 56));
  v3 += v12 + ((9 * (__clz(v12 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 0x20) != 0)
  {
    goto LABEL_22;
  }

LABEL_17:
  if ((v2 & 0x40) == 0)
  {
    goto LABEL_18;
  }

LABEL_23:
  v14 = *(a1 + 72);
  if (v14 < 0)
  {
    v15 = 12;
  }

  else
  {
    v15 = ((9 * (__clz(v14 | 1) ^ 0x1F) + 73) >> 6) + 2;
  }

  v3 += v15;
  if ((v2 & 0x80) != 0)
  {
LABEL_27:
    v16 = *(a1 + 76);
    if (v16 < 0)
    {
      v17 = 12;
    }

    else
    {
      v17 = ((9 * (__clz(v16 | 1) ^ 0x1F) + 73) >> 6) + 2;
    }

    v3 += v17;
  }

LABEL_31:
  if ((v2 & 0xFF00) != 0)
  {
    if ((v2 & 0x100) != 0)
    {
      v18 = *(a1 + 80);
      if (v18 < 0)
      {
        v19 = 12;
      }

      else
      {
        v19 = ((9 * (__clz(v18 | 1) ^ 0x1F) + 73) >> 6) + 2;
      }

      v3 += v19;
    }

    if ((v2 & 0x200) != 0)
    {
      v20 = *(a1 + 84);
      v21 = ((9 * (__clz(v20 | 1) ^ 0x1F) + 73) >> 6) + 2;
      if (v20 >= 0)
      {
        v22 = v21;
      }

      else
      {
        v22 = 12;
      }

      v3 += v22;
    }

    v23 = v3 + ((v2 >> 9) & 2);
    if ((v2 & 0x800) != 0)
    {
      v23 += 3;
    }

    if ((v2 & 0x1000) != 0)
    {
      v23 += 3;
    }

    if ((v2 & 0x2000) != 0)
    {
      v23 += 3;
    }

    if ((v2 & 0x4000) != 0)
    {
      v23 += 3;
    }

    if ((v2 & 0x8000) != 0)
    {
      v3 = v23 + 3;
    }

    else
    {
      v3 = v23;
    }
  }

  if ((v2 & 0x70000) != 0)
  {
    if ((v2 & 0x10000) != 0)
    {
      v3 += 3;
    }

    if ((v2 & 0x20000) != 0)
    {
      v24 = *(a1 + 96);
      if (v24 < 0)
      {
        v25 = 12;
      }

      else
      {
        v25 = ((9 * (__clz(v24 | 1) ^ 0x1F) + 73) >> 6) + 2;
      }

      v3 += v25;
    }

    if ((v2 & 0x40000) != 0)
    {
      v26 = *(a1 + 100);
      if (v26 < 0)
      {
        v27 = 12;
      }

      else
      {
        v27 = ((9 * (__clz(v26 | 1) ^ 0x1F) + 73) >> 6) + 2;
      }

      v3 += v27;
    }
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

void sub_27648F484(uint64_t a1, void *lpsrc)
{
  v4 = __dynamic_cast(lpsrc, MEMORY[0x277D80A98], &unk_288527F90, 0);
  if (v4)
  {

    sub_27648F52C(a1, v4);
  }

  else
  {

    MEMORY[0x2821EACE0](lpsrc, a1);
  }
}

void sub_27648F52C(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  if (v4)
  {
    sub_2763D4F88((a1 + 8), (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  v5 = *(a2 + 16);
  if (v5)
  {
    if (v5)
    {
      *(a1 + 16) |= 1u;
      google::protobuf::internal::ArenaStringPtr::Set();
      if ((v5 & 2) == 0)
      {
LABEL_6:
        if ((v5 & 4) == 0)
        {
          goto LABEL_18;
        }

        goto LABEL_10;
      }
    }

    else if ((v5 & 2) == 0)
    {
      goto LABEL_6;
    }

    *(a1 + 16) |= 2u;
    google::protobuf::internal::ArenaStringPtr::Set();
    if ((v5 & 4) == 0)
    {
      goto LABEL_18;
    }

LABEL_10:
    *(a1 + 16) |= 4u;
    v6 = *(a1 + 40);
    if (!v6)
    {
      v7 = *(a1 + 8);
      if (v7)
      {
        v7 = *(v7 & 0xFFFFFFFFFFFFFFFELL);
      }

      v6 = MEMORY[0x277C97BA0](v7);
      *(a1 + 40) = v6;
    }

    if (*(a2 + 40))
    {
      v8 = *(a2 + 40);
    }

    else
    {
      v8 = MEMORY[0x277D80BD0];
    }

    TSS::StyleArchive::MergeFrom(v6, v8);
LABEL_18:
    if ((v5 & 8) != 0)
    {
      *(a1 + 16) |= 8u;
      v9 = *(a1 + 48);
      if (!v9)
      {
        v10 = *(a1 + 8);
        if (v10)
        {
          v10 = *(v10 & 0xFFFFFFFFFFFFFFFELL);
        }

        v9 = sub_276406A24(v10);
        *(a1 + 48) = v9;
      }

      if (*(a2 + 48))
      {
        v11 = *(a2 + 48);
      }

      else
      {
        v11 = &qword_2812F01B8;
      }

      sub_2764008B8(v9, v11);
      if ((v5 & 0x10) == 0)
      {
LABEL_20:
        if ((v5 & 0x20) == 0)
        {
          goto LABEL_21;
        }

        goto LABEL_59;
      }
    }

    else if ((v5 & 0x10) == 0)
    {
      goto LABEL_20;
    }

    *(a1 + 16) |= 0x10u;
    v12 = *(a1 + 56);
    if (!v12)
    {
      v13 = *(a1 + 8);
      if (v13)
      {
        v13 = *(v13 & 0xFFFFFFFFFFFFFFFELL);
      }

      v12 = sub_276406A24(v13);
      *(a1 + 56) = v12;
    }

    if (*(a2 + 56))
    {
      v14 = *(a2 + 56);
    }

    else
    {
      v14 = &qword_2812F01B8;
    }

    sub_2764008B8(v12, v14);
    if ((v5 & 0x20) == 0)
    {
LABEL_21:
      if ((v5 & 0x40) == 0)
      {
        goto LABEL_22;
      }

      goto LABEL_67;
    }

LABEL_59:
    *(a1 + 16) |= 0x20u;
    v15 = *(a1 + 64);
    if (!v15)
    {
      v16 = *(a1 + 8);
      if (v16)
      {
        v16 = *(v16 & 0xFFFFFFFFFFFFFFFELL);
      }

      v15 = sub_27649DC64(v16);
      *(a1 + 64) = v15;
    }

    if (*(a2 + 64))
    {
      v17 = *(a2 + 64);
    }

    else
    {
      v17 = &unk_2812F2728;
    }

    sub_276483348(v15, v17);
    if ((v5 & 0x40) == 0)
    {
LABEL_22:
      if ((v5 & 0x80) == 0)
      {
LABEL_24:
        *(a1 + 16) |= v5;
        goto LABEL_25;
      }

LABEL_23:
      *(a1 + 76) = *(a2 + 76);
      goto LABEL_24;
    }

LABEL_67:
    *(a1 + 72) = *(a2 + 72);
    if ((v5 & 0x80) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_23;
  }

LABEL_25:
  if ((v5 & 0xFF00) == 0)
  {
    goto LABEL_36;
  }

  if ((v5 & 0x100) != 0)
  {
    *(a1 + 80) = *(a2 + 80);
    if ((v5 & 0x200) == 0)
    {
LABEL_28:
      if ((v5 & 0x400) == 0)
      {
        goto LABEL_29;
      }

      goto LABEL_71;
    }
  }

  else if ((v5 & 0x200) == 0)
  {
    goto LABEL_28;
  }

  *(a1 + 84) = *(a2 + 84);
  if ((v5 & 0x400) == 0)
  {
LABEL_29:
    if ((v5 & 0x800) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_72;
  }

LABEL_71:
  *(a1 + 88) = *(a2 + 88);
  if ((v5 & 0x800) == 0)
  {
LABEL_30:
    if ((v5 & 0x1000) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_73;
  }

LABEL_72:
  *(a1 + 89) = *(a2 + 89);
  if ((v5 & 0x1000) == 0)
  {
LABEL_31:
    if ((v5 & 0x2000) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_74;
  }

LABEL_73:
  *(a1 + 90) = *(a2 + 90);
  if ((v5 & 0x2000) == 0)
  {
LABEL_32:
    if ((v5 & 0x4000) == 0)
    {
      goto LABEL_33;
    }

LABEL_75:
    *(a1 + 92) = *(a2 + 92);
    if ((v5 & 0x8000) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_34;
  }

LABEL_74:
  *(a1 + 91) = *(a2 + 91);
  if ((v5 & 0x4000) != 0)
  {
    goto LABEL_75;
  }

LABEL_33:
  if ((v5 & 0x8000) != 0)
  {
LABEL_34:
    *(a1 + 93) = *(a2 + 93);
  }

LABEL_35:
  *(a1 + 16) |= v5;
LABEL_36:
  if ((v5 & 0x70000) == 0)
  {
    return;
  }

  if ((v5 & 0x10000) == 0)
  {
    if ((v5 & 0x20000) == 0)
    {
      goto LABEL_39;
    }

LABEL_78:
    *(a1 + 96) = *(a2 + 96);
    if ((v5 & 0x40000) == 0)
    {
      goto LABEL_41;
    }

    goto LABEL_40;
  }

  *(a1 + 94) = *(a2 + 94);
  if ((v5 & 0x20000) != 0)
  {
    goto LABEL_78;
  }

LABEL_39:
  if ((v5 & 0x40000) != 0)
  {
LABEL_40:
    *(a1 + 100) = *(a2 + 100);
  }

LABEL_41:
  *(a1 + 16) |= v5;
}

void sub_27648F828(google::protobuf::UnknownFieldSet *result, google::protobuf::UnknownFieldSet *a2)
{
  if (a2 != result)
  {
    sub_27648DF08(result);

    sub_27648F484(result, a2);
  }
}

uint64_t sub_27648F874(uint64_t a1)
{
  if ((*(a1 + 16) & 4) == 0)
  {
    return 0;
  }

  result = TSS::StyleArchive::IsInitialized(*(a1 + 40));
  if (result)
  {
    if ((*(a1 + 16) & 0x20) == 0)
    {
      return 1;
    }

    v3 = *(a1 + 64);
    if ((~*(v3 + 16) & 0x7FFFE0) != 0)
    {
      return 0;
    }

    else
    {
      result = TSP::IndexSet::IsInitialized(*(v3 + 88));
      if (result)
      {
        return 1;
      }
    }
  }

  return result;
}

uint64_t *sub_27648F924(uint64_t *a1)
{
  sub_27648F958(a1);
  sub_2763941F4(a1 + 1);
  return a1;
}

uint64_t *sub_27648F958(uint64_t *result)
{
  if (result != &qword_2812F2B10)
  {
    v1 = result;
    if (result[5])
    {
      v2 = MEMORY[0x277C976F0]();
      MEMORY[0x277C98580](v2, 0x10A1C40AC828A93);
    }

    if (v1[6])
    {
      v3 = MEMORY[0x277C971C0]();
      MEMORY[0x277C98580](v3, 0x10A1C4042C41316);
    }

    if (v1[7])
    {
      v4 = MEMORY[0x277C97240]();
      MEMORY[0x277C98580](v4, 0x10A1C4078DB9C03);
    }

    if (v1[8])
    {
      v5 = MEMORY[0x277C97240]();
      MEMORY[0x277C98580](v5, 0x10A1C4078DB9C03);
    }

    if (v1[9])
    {
      v6 = MEMORY[0x277C971C0]();
      MEMORY[0x277C98580](v6, 0x10A1C4042C41316);
    }

    if (v1[10])
    {
      v7 = MEMORY[0x277C97240]();
      MEMORY[0x277C98580](v7, 0x10A1C4078DB9C03);
    }

    if (v1[11])
    {
      v8 = MEMORY[0x277C971C0]();
      MEMORY[0x277C98580](v8, 0x10A1C4042C41316);
    }

    if (v1[12])
    {
      v9 = MEMORY[0x277C97240]();
      MEMORY[0x277C98580](v9, 0x10A1C4078DB9C03);
    }

    if (v1[13])
    {
      v10 = MEMORY[0x277C971C0]();
      MEMORY[0x277C98580](v10, 0x10A1C4042C41316);
    }

    if (v1[14])
    {
      v11 = MEMORY[0x277C97240]();
      MEMORY[0x277C98580](v11, 0x10A1C4078DB9C03);
    }

    if (v1[15])
    {
      v12 = MEMORY[0x277C971C0]();
      MEMORY[0x277C98580](v12, 0x10A1C4042C41316);
    }

    if (v1[16])
    {
      v13 = MEMORY[0x277C97240]();
      MEMORY[0x277C98580](v13, 0x10A1C4078DB9C03);
    }

    if (v1[17])
    {
      v14 = MEMORY[0x277C97240]();
      MEMORY[0x277C98580](v14, 0x10A1C4078DB9C03);
    }

    if (v1[18])
    {
      v15 = MEMORY[0x277C971C0]();
      MEMORY[0x277C98580](v15, 0x10A1C4042C41316);
    }

    if (v1[19])
    {
      v16 = MEMORY[0x277C97240]();
      MEMORY[0x277C98580](v16, 0x10A1C4078DB9C03);
    }

    if (v1[20])
    {
      v17 = MEMORY[0x277C971C0]();
      MEMORY[0x277C98580](v17, 0x10A1C4042C41316);
    }

    if (v1[21])
    {
      v18 = MEMORY[0x277C971C0]();
      MEMORY[0x277C98580](v18, 0x10A1C4042C41316);
    }

    if (v1[22])
    {
      v19 = MEMORY[0x277C97200]();
      MEMORY[0x277C98580](v19, 0x10A1C40C8B7F858);
    }

    if (v1[23])
    {
      v20 = MEMORY[0x277C97200]();
      MEMORY[0x277C98580](v20, 0x10A1C40C8B7F858);
    }

    if (v1[24])
    {
      v21 = MEMORY[0x277C97200]();
      MEMORY[0x277C98580](v21, 0x10A1C40C8B7F858);
    }

    if (v1[25])
    {
      v22 = MEMORY[0x277C97200]();
      MEMORY[0x277C98580](v22, 0x10A1C40C8B7F858);
    }

    if (v1[26])
    {
      v23 = MEMORY[0x277C97200]();
      MEMORY[0x277C98580](v23, 0x10A1C40C8B7F858);
    }

    if (v1[27])
    {
      v24 = MEMORY[0x277C97200]();
      MEMORY[0x277C98580](v24, 0x10A1C40C8B7F858);
    }

    if (v1[28])
    {
      v25 = MEMORY[0x277C97200]();
      MEMORY[0x277C98580](v25, 0x10A1C40C8B7F858);
    }

    if (v1[29])
    {
      v26 = MEMORY[0x277C97200]();
      MEMORY[0x277C98580](v26, 0x10A1C40C8B7F858);
    }

    if (v1[30])
    {
      v27 = MEMORY[0x277C97200]();
      MEMORY[0x277C98580](v27, 0x10A1C40C8B7F858);
    }

    if (v1[31])
    {
      v28 = MEMORY[0x277C971C0]();
      MEMORY[0x277C98580](v28, 0x10A1C4042C41316);
    }

    if (v1[32])
    {
      v29 = MEMORY[0x277C971C0]();
      MEMORY[0x277C98580](v29, 0x10A1C4042C41316);
    }

    if (v1[33])
    {
      v30 = MEMORY[0x277C97240]();
      MEMORY[0x277C98580](v30, 0x10A1C4078DB9C03);
    }

    if (v1[34])
    {
      v31 = MEMORY[0x277C97240]();
      MEMORY[0x277C98580](v31, 0x10A1C4078DB9C03);
    }

    if (v1[35])
    {
      v32 = MEMORY[0x277C97240]();
      MEMORY[0x277C98580](v32, 0x10A1C4078DB9C03);
    }

    if (v1[36])
    {
      v33 = MEMORY[0x277C971C0]();
      MEMORY[0x277C98580](v33, 0x10A1C4042C41316);
    }

    if (v1[37])
    {
      v34 = MEMORY[0x277C971C0]();
      MEMORY[0x277C98580](v34, 0x10A1C4042C41316);
    }

    if (v1[38])
    {
      v35 = MEMORY[0x277C97240]();
      MEMORY[0x277C98580](v35, 0x10A1C4078DB9C03);
    }

    if (v1[39])
    {
      v36 = MEMORY[0x277C97240]();
      MEMORY[0x277C98580](v36, 0x10A1C4078DB9C03);
    }

    if (v1[40])
    {
      v37 = MEMORY[0x277C97240]();
      MEMORY[0x277C98580](v37, 0x10A1C4078DB9C03);
    }

    if (v1[41])
    {
      v38 = MEMORY[0x277C97200]();
      MEMORY[0x277C98580](v38, 0x10A1C40C8B7F858);
    }

    if (v1[42])
    {
      v39 = MEMORY[0x277C97200]();
      MEMORY[0x277C98580](v39, 0x10A1C40C8B7F858);
    }

    if (v1[43])
    {
      v40 = MEMORY[0x277C97240]();
      MEMORY[0x277C98580](v40, 0x10A1C4078DB9C03);
    }

    if (v1[44])
    {
      v41 = MEMORY[0x277C97240]();
      MEMORY[0x277C98580](v41, 0x10A1C4078DB9C03);
    }

    if (v1[45])
    {
      v42 = MEMORY[0x277C97280]();
      MEMORY[0x277C98580](v42, 0x10A1C406771AFB9);
    }

    if (v1[46])
    {
      v43 = MEMORY[0x277C97280]();
      MEMORY[0x277C98580](v43, 0x10A1C406771AFB9);
    }

    if (v1[47])
    {
      v44 = MEMORY[0x277C971C0]();
      MEMORY[0x277C98580](v44, 0x10A1C4042C41316);
    }

    if (v1[48])
    {
      v45 = MEMORY[0x277C97240]();
      MEMORY[0x277C98580](v45, 0x10A1C4078DB9C03);
    }

    if (v1[49])
    {
      v46 = MEMORY[0x277C97240]();
      MEMORY[0x277C98580](v46, 0x10A1C4078DB9C03);
    }

    if (v1[50])
    {
      v47 = MEMORY[0x277C97200]();
      MEMORY[0x277C98580](v47, 0x10A1C40C8B7F858);
    }

    v48 = v1[51];
    if (v48)
    {
      v49 = sub_276401010(v48);
      MEMORY[0x277C98580](v49, 0x10A1C404695407ALL);
    }

    v50 = v1[52];
    if (v50)
    {
      v51 = sub_276401010(v50);
      MEMORY[0x277C98580](v51, 0x10A1C404695407ALL);
    }

    v52 = v1[53];
    if (v52)
    {
      v53 = sub_276401010(v52);
      MEMORY[0x277C98580](v53, 0x10A1C404695407ALL);
    }

    v54 = v1[54];
    if (v54)
    {
      v55 = sub_276401010(v54);
      MEMORY[0x277C98580](v55, 0x10A1C404695407ALL);
    }

    v56 = v1[55];
    if (v56)
    {
      v57 = sub_276401010(v56);
      MEMORY[0x277C98580](v57, 0x10A1C404695407ALL);
    }

    v58 = v1[56];
    if (v58)
    {
      v59 = sub_276401010(v58);
      MEMORY[0x277C98580](v59, 0x10A1C404695407ALL);
    }

    if (v1[57])
    {
      v60 = MEMORY[0x277C97200]();
      MEMORY[0x277C98580](v60, 0x10A1C40C8B7F858);
    }

    if (v1[58])
    {
      v61 = MEMORY[0x277C97200]();
      MEMORY[0x277C98580](v61, 0x10A1C40C8B7F858);
    }

    if (v1[59])
    {
      v62 = MEMORY[0x277C97200]();
      MEMORY[0x277C98580](v62, 0x10A1C40C8B7F858);
    }

    if (v1[60])
    {
      v63 = MEMORY[0x277C97200]();
      MEMORY[0x277C98580](v63, 0x10A1C40C8B7F858);
    }

    if (v1[61])
    {
      v64 = MEMORY[0x277C97200]();
      MEMORY[0x277C98580](v64, 0x10A1C40C8B7F858);
    }

    if (v1[62])
    {
      v65 = MEMORY[0x277C971C0]();
      MEMORY[0x277C98580](v65, 0x10A1C4042C41316);
    }

    if (v1[63])
    {
      v66 = MEMORY[0x277C971C0]();
      MEMORY[0x277C98580](v66, 0x10A1C4042C41316);
    }

    if (v1[64])
    {
      v67 = MEMORY[0x277C971C0]();
      MEMORY[0x277C98580](v67, 0x10A1C4042C41316);
    }

    if (v1[65])
    {
      v68 = MEMORY[0x277C971C0]();
      MEMORY[0x277C98580](v68, 0x10A1C4042C41316);
    }

    result = v1[66];
    if (result)
    {
      MEMORY[0x277C971C0]();

      JUMPOUT(0x277C98580);
    }
  }

  return result;
}

void sub_27648FEF0(uint64_t *a1)
{
  sub_27648F924(a1);

  JUMPOUT(0x277C98580);
}

uint64_t *sub_27648FF30()
{
  if (atomic_load_explicit(dword_2812EE448, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &qword_2812F2B10;
}

google::protobuf::UnknownFieldSet *sub_27648FF70(google::protobuf::UnknownFieldSet *result)
{
  v1 = result;
  v2 = (result + 16);
  v3 = *(result + 4);
  if (!v3)
  {
    goto LABEL_11;
  }

  if (v3)
  {
    result = TSS::StyleArchive::Clear(*(result + 5));
    if ((v3 & 2) == 0)
    {
LABEL_4:
      if ((v3 & 4) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_96;
    }
  }

  else if ((v3 & 2) == 0)
  {
    goto LABEL_4;
  }

  result = TSD::FillArchive::Clear(*(v1 + 6));
  if ((v3 & 4) == 0)
  {
LABEL_5:
    if ((v3 & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_97;
  }

LABEL_96:
  result = TSD::StrokeArchive::Clear(*(v1 + 7));
  if ((v3 & 8) == 0)
  {
LABEL_6:
    if ((v3 & 0x10) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_98;
  }

LABEL_97:
  result = TSD::StrokeArchive::Clear(*(v1 + 8));
  if ((v3 & 0x10) == 0)
  {
LABEL_7:
    if ((v3 & 0x20) == 0)
    {
      goto LABEL_8;
    }

LABEL_99:
    result = TSD::StrokeArchive::Clear(*(v1 + 10));
    if ((v3 & 0x40) == 0)
    {
LABEL_9:
      if ((v3 & 0x80) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_10;
    }

    goto LABEL_100;
  }

LABEL_98:
  result = TSD::FillArchive::Clear(*(v1 + 9));
  if ((v3 & 0x20) != 0)
  {
    goto LABEL_99;
  }

LABEL_8:
  if ((v3 & 0x40) == 0)
  {
    goto LABEL_9;
  }

LABEL_100:
  result = TSD::FillArchive::Clear(*(v1 + 11));
  if ((v3 & 0x80) != 0)
  {
LABEL_10:
    result = TSD::StrokeArchive::Clear(*(v1 + 12));
  }

LABEL_11:
  if ((v3 & 0xFF00) == 0)
  {
    goto LABEL_21;
  }

  if ((v3 & 0x100) != 0)
  {
    result = TSD::FillArchive::Clear(*(v1 + 13));
    if ((v3 & 0x200) == 0)
    {
LABEL_14:
      if ((v3 & 0x400) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_104;
    }
  }

  else if ((v3 & 0x200) == 0)
  {
    goto LABEL_14;
  }

  result = TSD::StrokeArchive::Clear(*(v1 + 14));
  if ((v3 & 0x400) == 0)
  {
LABEL_15:
    if ((v3 & 0x800) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_105;
  }

LABEL_104:
  result = TSD::FillArchive::Clear(*(v1 + 15));
  if ((v3 & 0x800) == 0)
  {
LABEL_16:
    if ((v3 & 0x1000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_106;
  }

LABEL_105:
  result = TSD::StrokeArchive::Clear(*(v1 + 16));
  if ((v3 & 0x1000) == 0)
  {
LABEL_17:
    if ((v3 & 0x2000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_107;
  }

LABEL_106:
  result = TSD::StrokeArchive::Clear(*(v1 + 17));
  if ((v3 & 0x2000) == 0)
  {
LABEL_18:
    if ((v3 & 0x4000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_108;
  }

LABEL_107:
  result = TSD::FillArchive::Clear(*(v1 + 18));
  if ((v3 & 0x4000) == 0)
  {
LABEL_19:
    if ((v3 & 0x8000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_20;
  }

LABEL_108:
  result = TSD::StrokeArchive::Clear(*(v1 + 19));
  if ((v3 & 0x8000) != 0)
  {
LABEL_20:
    result = TSD::FillArchive::Clear(*(v1 + 20));
  }

LABEL_21:
  if ((v3 & 0xFF0000) == 0)
  {
    goto LABEL_31;
  }

  if ((v3 & 0x10000) != 0)
  {
    result = TSD::FillArchive::Clear(*(v1 + 21));
    if ((v3 & 0x20000) == 0)
    {
LABEL_24:
      if ((v3 & 0x40000) == 0)
      {
        goto LABEL_25;
      }

      goto LABEL_112;
    }
  }

  else if ((v3 & 0x20000) == 0)
  {
    goto LABEL_24;
  }

  result = TSD::ShadowArchive::Clear(*(v1 + 22));
  if ((v3 & 0x40000) == 0)
  {
LABEL_25:
    if ((v3 & 0x80000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_113;
  }

LABEL_112:
  result = TSD::ShadowArchive::Clear(*(v1 + 23));
  if ((v3 & 0x80000) == 0)
  {
LABEL_26:
    if ((v3 & 0x100000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_114;
  }

LABEL_113:
  result = TSD::ShadowArchive::Clear(*(v1 + 24));
  if ((v3 & 0x100000) == 0)
  {
LABEL_27:
    if ((v3 & 0x200000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_115;
  }

LABEL_114:
  result = TSD::ShadowArchive::Clear(*(v1 + 25));
  if ((v3 & 0x200000) == 0)
  {
LABEL_28:
    if ((v3 & 0x400000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_116;
  }

LABEL_115:
  result = TSD::ShadowArchive::Clear(*(v1 + 26));
  if ((v3 & 0x400000) == 0)
  {
LABEL_29:
    if ((v3 & 0x800000) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_30;
  }

LABEL_116:
  result = TSD::ShadowArchive::Clear(*(v1 + 27));
  if ((v3 & 0x800000) != 0)
  {
LABEL_30:
    result = TSD::ShadowArchive::Clear(*(v1 + 28));
  }

LABEL_31:
  if (!HIBYTE(v3))
  {
    goto LABEL_40;
  }

  if ((v3 & 0x1000000) != 0)
  {
    result = TSD::ShadowArchive::Clear(*(v1 + 29));
    if ((v3 & 0x2000000) == 0)
    {
LABEL_34:
      if ((v3 & 0x4000000) == 0)
      {
        goto LABEL_35;
      }

      goto LABEL_150;
    }
  }

  else if ((v3 & 0x2000000) == 0)
  {
    goto LABEL_34;
  }

  result = TSD::ShadowArchive::Clear(*(v1 + 30));
  if ((v3 & 0x4000000) == 0)
  {
LABEL_35:
    if ((v3 & 0x8000000) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_151;
  }

LABEL_150:
  result = TSD::FillArchive::Clear(*(v1 + 31));
  if ((v3 & 0x8000000) == 0)
  {
LABEL_36:
    if ((v3 & 0x10000000) == 0)
    {
      goto LABEL_37;
    }

    goto LABEL_152;
  }

LABEL_151:
  result = TSD::FillArchive::Clear(*(v1 + 32));
  if ((v3 & 0x10000000) == 0)
  {
LABEL_37:
    if ((v3 & 0x20000000) == 0)
    {
      goto LABEL_38;
    }

    goto LABEL_153;
  }

LABEL_152:
  result = TSD::StrokeArchive::Clear(*(v1 + 33));
  if ((v3 & 0x20000000) == 0)
  {
LABEL_38:
    if ((v3 & 0x40000000) == 0)
    {
      goto LABEL_39;
    }

LABEL_154:
    result = TSD::StrokeArchive::Clear(*(v1 + 35));
    if ((v3 & 0x80000000) == 0)
    {
      goto LABEL_40;
    }

    goto LABEL_155;
  }

LABEL_153:
  result = TSD::StrokeArchive::Clear(*(v1 + 34));
  if ((v3 & 0x40000000) != 0)
  {
    goto LABEL_154;
  }

LABEL_39:
  if ((v3 & 0x80000000) == 0)
  {
    goto LABEL_40;
  }

LABEL_155:
  result = TSD::FillArchive::Clear(*(v1 + 36));
LABEL_40:
  v4 = *(v1 + 5);
  if (!v4)
  {
    goto LABEL_50;
  }

  if (v4)
  {
    result = TSD::FillArchive::Clear(*(v1 + 37));
    if ((v4 & 2) == 0)
    {
LABEL_43:
      if ((v4 & 4) == 0)
      {
        goto LABEL_44;
      }

      goto LABEL_120;
    }
  }

  else if ((v4 & 2) == 0)
  {
    goto LABEL_43;
  }

  result = TSD::StrokeArchive::Clear(*(v1 + 38));
  if ((v4 & 4) == 0)
  {
LABEL_44:
    if ((v4 & 8) == 0)
    {
      goto LABEL_45;
    }

    goto LABEL_121;
  }

LABEL_120:
  result = TSD::StrokeArchive::Clear(*(v1 + 39));
  if ((v4 & 8) == 0)
  {
LABEL_45:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_46;
    }

    goto LABEL_122;
  }

LABEL_121:
  result = TSD::StrokeArchive::Clear(*(v1 + 40));
  if ((v4 & 0x10) == 0)
  {
LABEL_46:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_47;
    }

    goto LABEL_123;
  }

LABEL_122:
  result = TSD::ShadowArchive::Clear(*(v1 + 41));
  if ((v4 & 0x20) == 0)
  {
LABEL_47:
    if ((v4 & 0x40) == 0)
    {
      goto LABEL_48;
    }

    goto LABEL_124;
  }

LABEL_123:
  result = TSD::ShadowArchive::Clear(*(v1 + 42));
  if ((v4 & 0x40) == 0)
  {
LABEL_48:
    if ((v4 & 0x80) == 0)
    {
      goto LABEL_50;
    }

    goto LABEL_49;
  }

LABEL_124:
  result = TSD::StrokeArchive::Clear(*(v1 + 43));
  if ((v4 & 0x80) != 0)
  {
LABEL_49:
    result = TSD::StrokeArchive::Clear(*(v1 + 44));
  }

LABEL_50:
  if ((v4 & 0xFF00) == 0)
  {
    goto LABEL_60;
  }

  if ((v4 & 0x100) != 0)
  {
    result = TSD::LineEndArchive::Clear(*(v1 + 45));
    if ((v4 & 0x200) == 0)
    {
LABEL_53:
      if ((v4 & 0x400) == 0)
      {
        goto LABEL_54;
      }

      goto LABEL_128;
    }
  }

  else if ((v4 & 0x200) == 0)
  {
    goto LABEL_53;
  }

  result = TSD::LineEndArchive::Clear(*(v1 + 46));
  if ((v4 & 0x400) == 0)
  {
LABEL_54:
    if ((v4 & 0x800) == 0)
    {
      goto LABEL_55;
    }

    goto LABEL_129;
  }

LABEL_128:
  result = TSD::FillArchive::Clear(*(v1 + 47));
  if ((v4 & 0x800) == 0)
  {
LABEL_55:
    if ((v4 & 0x1000) == 0)
    {
      goto LABEL_56;
    }

    goto LABEL_130;
  }

LABEL_129:
  result = TSD::StrokeArchive::Clear(*(v1 + 48));
  if ((v4 & 0x1000) == 0)
  {
LABEL_56:
    if ((v4 & 0x2000) == 0)
    {
      goto LABEL_57;
    }

    goto LABEL_131;
  }

LABEL_130:
  result = TSD::StrokeArchive::Clear(*(v1 + 49));
  if ((v4 & 0x2000) == 0)
  {
LABEL_57:
    if ((v4 & 0x4000) == 0)
    {
      goto LABEL_58;
    }

    goto LABEL_132;
  }

LABEL_131:
  result = TSD::ShadowArchive::Clear(*(v1 + 50));
  if ((v4 & 0x4000) == 0)
  {
LABEL_58:
    if ((v4 & 0x8000) == 0)
    {
      goto LABEL_60;
    }

    goto LABEL_59;
  }

LABEL_132:
  result = sub_276401054(*(v1 + 51));
  if ((v4 & 0x8000) != 0)
  {
LABEL_59:
    result = sub_276401054(*(v1 + 52));
  }

LABEL_60:
  if ((v4 & 0xFF0000) == 0)
  {
    goto LABEL_70;
  }

  if ((v4 & 0x10000) != 0)
  {
    result = sub_276401054(*(v1 + 53));
    if ((v4 & 0x20000) == 0)
    {
LABEL_63:
      if ((v4 & 0x40000) == 0)
      {
        goto LABEL_64;
      }

      goto LABEL_136;
    }
  }

  else if ((v4 & 0x20000) == 0)
  {
    goto LABEL_63;
  }

  result = sub_276401054(*(v1 + 54));
  if ((v4 & 0x40000) == 0)
  {
LABEL_64:
    if ((v4 & 0x80000) == 0)
    {
      goto LABEL_65;
    }

    goto LABEL_137;
  }

LABEL_136:
  result = sub_276401054(*(v1 + 55));
  if ((v4 & 0x80000) == 0)
  {
LABEL_65:
    if ((v4 & 0x100000) == 0)
    {
      goto LABEL_66;
    }

    goto LABEL_138;
  }

LABEL_137:
  result = sub_276401054(*(v1 + 56));
  if ((v4 & 0x100000) == 0)
  {
LABEL_66:
    if ((v4 & 0x200000) == 0)
    {
      goto LABEL_67;
    }

    goto LABEL_139;
  }

LABEL_138:
  result = TSD::ShadowArchive::Clear(*(v1 + 57));
  if ((v4 & 0x200000) == 0)
  {
LABEL_67:
    if ((v4 & 0x400000) == 0)
    {
      goto LABEL_68;
    }

    goto LABEL_140;
  }

LABEL_139:
  result = TSD::ShadowArchive::Clear(*(v1 + 58));
  if ((v4 & 0x400000) == 0)
  {
LABEL_68:
    if ((v4 & 0x800000) == 0)
    {
      goto LABEL_70;
    }

    goto LABEL_69;
  }

LABEL_140:
  result = TSD::ShadowArchive::Clear(*(v1 + 59));
  if ((v4 & 0x800000) != 0)
  {
LABEL_69:
    result = TSD::ShadowArchive::Clear(*(v1 + 60));
  }

LABEL_70:
  if ((v4 & 0x3F000000) == 0)
  {
    goto LABEL_78;
  }

  if ((v4 & 0x1000000) != 0)
  {
    result = TSD::ShadowArchive::Clear(*(v1 + 61));
    if ((v4 & 0x2000000) == 0)
    {
LABEL_73:
      if ((v4 & 0x4000000) == 0)
      {
        goto LABEL_74;
      }

      goto LABEL_144;
    }
  }

  else if ((v4 & 0x2000000) == 0)
  {
    goto LABEL_73;
  }

  result = TSD::FillArchive::Clear(*(v1 + 62));
  if ((v4 & 0x4000000) == 0)
  {
LABEL_74:
    if ((v4 & 0x8000000) == 0)
    {
      goto LABEL_75;
    }

    goto LABEL_145;
  }

LABEL_144:
  result = TSD::FillArchive::Clear(*(v1 + 63));
  if ((v4 & 0x8000000) == 0)
  {
LABEL_75:
    if ((v4 & 0x10000000) == 0)
    {
      goto LABEL_76;
    }

    goto LABEL_146;
  }

LABEL_145:
  result = TSD::FillArchive::Clear(*(v1 + 64));
  if ((v4 & 0x10000000) == 0)
  {
LABEL_76:
    if ((v4 & 0x20000000) == 0)
    {
      goto LABEL_78;
    }

    goto LABEL_77;
  }

LABEL_146:
  result = TSD::FillArchive::Clear(*(v1 + 65));
  if ((v4 & 0x20000000) != 0)
  {
LABEL_77:
    result = TSD::FillArchive::Clear(*(v1 + 66));
  }

LABEL_78:
  if (v4 >> 30)
  {
    *(v1 + 67) = 0;
  }

  v5 = *(v1 + 6);
  if (v5)
  {
    *(v1 + 34) = 0u;
    *(v1 + 35) = 0u;
  }

  if ((v5 & 0xFF00) != 0)
  {
    *(v1 + 300) = 0;
    *(v1 + 74) = 0;
    *(v1 + 36) = 0u;
  }

  if ((v5 & 0xFF0000) != 0)
  {
    *(v1 + 602) = 0;
  }

  if (HIBYTE(v5))
  {
    *(v1 + 79) = 0;
    *(v1 + 626) = 0;
    *(v1 + 610) = 0u;
  }

  if (*(v1 + 28))
  {
    *(v1 + 40) = 0u;
    *(v1 + 41) = 0u;
  }

  v7 = *(v1 + 8);
  v6 = v1 + 8;
  *(v6 + 166) = 0;
  *v2 = 0;
  v2[1] = 0;
  if (v7)
  {

    return sub_2763D4FD4(v6);
  }

  return result;
}

google::protobuf::internal *sub_27649046C(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v257 = a2;
  if ((sub_2763D4D98(a3, &v257, *(a3 + 92)) & 1) == 0)
  {
    while (1)
    {
      v6 = (v257 + 1);
      LODWORD(v7) = *v257;
      if (*v257 < 0)
      {
        v7 = (v7 + (*v6 << 7) - 128);
        if (*v6 < 0)
        {
          TagFallback = google::protobuf::internal::ReadTagFallback(v257, v7);
          v257 = TagFallback;
          if (!TagFallback)
          {
            return 0;
          }

          v6 = TagFallback;
          goto LABEL_7;
        }

        v6 = (v257 + 2);
      }

      v257 = v6;
LABEL_7:
      switch(v7 >> 3)
      {
        case 1u:
          if (v7 != 10)
          {
            goto LABEL_515;
          }

          *(a1 + 16) |= 1u;
          v8 = *(a1 + 40);
          if (!v8)
          {
            v9 = *(a1 + 8);
            if (v9)
            {
              v9 = *(v9 & 0xFFFFFFFFFFFFFFFELL);
            }

            v8 = MEMORY[0x277C97BA0](v9);
            *(a1 + 40) = v8;
            v6 = v257;
          }

          v10 = sub_2764AC1AC(a3, v8, v6);
          goto LABEL_512;
        case 2u:
        case 3u:
        case 4u:
        case 5u:
        case 6u:
        case 7u:
        case 8u:
        case 9u:
        case 0xCu:
        case 0xEu:
        case 0xFu:
        case 0x13u:
        case 0x15u:
        case 0x17u:
        case 0x18u:
        case 0x1Bu:
        case 0x1Fu:
        case 0x21u:
        case 0x22u:
        case 0x25u:
        case 0x26u:
        case 0x27u:
        case 0x2Bu:
        case 0x2Du:
        case 0x2Fu:
        case 0x30u:
        case 0x31u:
        case 0x33u:
        case 0x35u:
        case 0x36u:
        case 0x37u:
        case 0x38u:
        case 0x39u:
        case 0x3Au:
        case 0x3Bu:
        case 0x3Du:
        case 0x3Fu:
        case 0x40u:
        case 0x41u:
        case 0x42u:
        case 0x43u:
        case 0x44u:
        case 0x45u:
        case 0x46u:
        case 0x47u:
        case 0x48u:
        case 0x49u:
        case 0x4Au:
        case 0x4Bu:
        case 0x4Cu:
        case 0x4Du:
        case 0x4Eu:
        case 0x4Fu:
        case 0x50u:
        case 0x51u:
        case 0x52u:
        case 0x53u:
        case 0x54u:
        case 0x55u:
        case 0x56u:
        case 0x57u:
        case 0x58u:
        case 0x59u:
        case 0x5Au:
        case 0x5Bu:
        case 0x5Cu:
        case 0x5Du:
        case 0x5Eu:
        case 0x5Fu:
        case 0x60u:
        case 0x61u:
        case 0x62u:
        case 0x63u:
        case 0x6Du:
        case 0x7Eu:
        case 0x7Fu:
        case 0x80u:
        case 0x81u:
        case 0x90u:
        case 0x91u:
        case 0x92u:
        case 0x93u:
        case 0x94u:
        case 0x95u:
        case 0x98u:
        case 0x9Eu:
        case 0x9Fu:
        case 0xA0u:
        case 0xA1u:
        case 0xA2u:
        case 0xA3u:
        case 0xA4u:
        case 0xA5u:
        case 0xA6u:
        case 0xA9u:
        case 0xAAu:
        case 0xABu:
        case 0xACu:
        case 0xADu:
        case 0xAEu:
        case 0xAFu:
        case 0xB0u:
        case 0xB1u:
        case 0xB2u:
        case 0xB3u:
        case 0xB9u:
        case 0xBAu:
        case 0xBBu:
        case 0xBCu:
        case 0xBDu:
        case 0xBEu:
        case 0xBFu:
        case 0xC0u:
        case 0xC1u:
        case 0xC2u:
        case 0xC3u:
        case 0xC4u:
        case 0xC5u:
        case 0xC6u:
        case 0xC7u:
        case 0xC8u:
        case 0xCBu:
        case 0xCCu:
        case 0xD0u:
        case 0xD1u:
        case 0xD2u:
          goto LABEL_515;
        case 0xAu:
          if (v7 != 82)
          {
            goto LABEL_515;
          }

          *(a1 + 16) |= 2u;
          v15 = *(a1 + 48);
          if (v15)
          {
            goto LABEL_478;
          }

          v114 = *(a1 + 8);
          if (v114)
          {
            v114 = *(v114 & 0xFFFFFFFFFFFFFFFELL);
          }

          v15 = MEMORY[0x277C97A80](v114);
          *(a1 + 48) = v15;
          goto LABEL_477;
        case 0xBu:
          if (v7 != 90)
          {
            goto LABEL_515;
          }

          *(a1 + 16) |= 4u;
          v13 = *(a1 + 56);
          if (v13)
          {
            goto LABEL_425;
          }

          v109 = *(a1 + 8);
          if (v109)
          {
            v109 = *(v109 & 0xFFFFFFFFFFFFFFFELL);
          }

          v13 = MEMORY[0x277C97AA0](v109);
          *(a1 + 56) = v13;
          goto LABEL_424;
        case 0xDu:
          if (v7 != 104)
          {
            goto LABEL_515;
          }

          *(a1 + 20) |= 0x40000000u;
          v111 = (v6 + 1);
          LODWORD(v110) = *v6;
          if ((v110 & 0x80) == 0)
          {
            goto LABEL_262;
          }

          v112 = *v111;
          v110 = (v110 + (v112 << 7) - 128);
          if (v112 < 0)
          {
            v229 = google::protobuf::internal::VarintParseSlow64(v6, v110);
            v257 = v229;
            *(a1 + 536) = v230;
            if (!v229)
            {
              return 0;
            }
          }

          else
          {
            v111 = (v6 + 2);
LABEL_262:
            v257 = v111;
            *(a1 + 536) = v110;
          }

          goto LABEL_513;
        case 0x10u:
          if (v7 != 130)
          {
            goto LABEL_515;
          }

          *(a1 + 16) |= 8u;
          v13 = *(a1 + 64);
          if (v13)
          {
            goto LABEL_425;
          }

          v96 = *(a1 + 8);
          if (v96)
          {
            v96 = *(v96 & 0xFFFFFFFFFFFFFFFELL);
          }

          v13 = MEMORY[0x277C97AA0](v96);
          *(a1 + 64) = v13;
          goto LABEL_424;
        case 0x11u:
          if (v7 != 138)
          {
            goto LABEL_515;
          }

          *(a1 + 16) |= 0x10u;
          v15 = *(a1 + 72);
          if (v15)
          {
            goto LABEL_478;
          }

          v113 = *(a1 + 8);
          if (v113)
          {
            v113 = *(v113 & 0xFFFFFFFFFFFFFFFELL);
          }

          v15 = MEMORY[0x277C97A80](v113);
          *(a1 + 72) = v15;
          goto LABEL_477;
        case 0x12u:
          if (v7 != 146)
          {
            goto LABEL_515;
          }

          *(a1 + 16) |= 0x20u;
          v13 = *(a1 + 80);
          if (v13)
          {
            goto LABEL_425;
          }

          v97 = *(a1 + 8);
          if (v97)
          {
            v97 = *(v97 & 0xFFFFFFFFFFFFFFFELL);
          }

          v13 = MEMORY[0x277C97AA0](v97);
          *(a1 + 80) = v13;
          goto LABEL_424;
        case 0x14u:
          if (v7 != 165)
          {
            goto LABEL_515;
          }

          *(a1 + 20) |= 0x80000000;
          v116 = *v6;
          v24 = (v6 + 4);
          *(a1 + 540) = v116;
          goto LABEL_398;
        case 0x16u:
          if (v7 != 176)
          {
            goto LABEL_515;
          }

          *(a1 + 24) |= 1u;
          v93 = (v6 + 1);
          LODWORD(v92) = *v6;
          if ((v92 & 0x80) == 0)
          {
            goto LABEL_212;
          }

          v94 = *v93;
          v92 = (v92 + (v94 << 7) - 128);
          if (v94 < 0)
          {
            v221 = google::protobuf::internal::VarintParseSlow64(v6, v92);
            v257 = v221;
            *(a1 + 544) = v222;
            if (!v221)
            {
              return 0;
            }
          }

          else
          {
            v93 = (v6 + 2);
LABEL_212:
            v257 = v93;
            *(a1 + 544) = v92;
          }

          goto LABEL_513;
        case 0x19u:
          if (v7 != 202)
          {
            goto LABEL_515;
          }

          *(a1 + 16) |= 0x40u;
          v15 = *(a1 + 88);
          if (v15)
          {
            goto LABEL_478;
          }

          v117 = *(a1 + 8);
          if (v117)
          {
            v117 = *(v117 & 0xFFFFFFFFFFFFFFFELL);
          }

          v15 = MEMORY[0x277C97A80](v117);
          *(a1 + 88) = v15;
          goto LABEL_477;
        case 0x1Au:
          if (v7 != 210)
          {
            goto LABEL_515;
          }

          *(a1 + 16) |= 0x80u;
          v13 = *(a1 + 96);
          if (v13)
          {
            goto LABEL_425;
          }

          v123 = *(a1 + 8);
          if (v123)
          {
            v123 = *(v123 & 0xFFFFFFFFFFFFFFFELL);
          }

          v13 = MEMORY[0x277C97AA0](v123);
          *(a1 + 96) = v13;
          goto LABEL_424;
        case 0x1Cu:
          if (v7 != 224)
          {
            goto LABEL_515;
          }

          *(a1 + 24) |= 2u;
          v90 = (v6 + 1);
          LODWORD(v89) = *v6;
          if ((v89 & 0x80) == 0)
          {
            goto LABEL_207;
          }

          v91 = *v90;
          v89 = (v89 + (v91 << 7) - 128);
          if (v91 < 0)
          {
            v219 = google::protobuf::internal::VarintParseSlow64(v6, v89);
            v257 = v219;
            *(a1 + 548) = v220;
            if (!v219)
            {
              return 0;
            }
          }

          else
          {
            v90 = (v6 + 2);
LABEL_207:
            v257 = v90;
            *(a1 + 548) = v89;
          }

          goto LABEL_513;
        case 0x1Du:
          if (v7 != 234)
          {
            goto LABEL_515;
          }

          *(a1 + 16) |= 0x100u;
          v15 = *(a1 + 104);
          if (v15)
          {
            goto LABEL_478;
          }

          v79 = *(a1 + 8);
          if (v79)
          {
            v79 = *(v79 & 0xFFFFFFFFFFFFFFFELL);
          }

          v15 = MEMORY[0x277C97A80](v79);
          *(a1 + 104) = v15;
          goto LABEL_477;
        case 0x1Eu:
          if (v7 != 242)
          {
            goto LABEL_515;
          }

          *(a1 + 16) |= 0x200u;
          v13 = *(a1 + 112);
          if (v13)
          {
            goto LABEL_425;
          }

          v121 = *(a1 + 8);
          if (v121)
          {
            v121 = *(v121 & 0xFFFFFFFFFFFFFFFELL);
          }

          v13 = MEMORY[0x277C97AA0](v121);
          *(a1 + 112) = v13;
          goto LABEL_424;
        case 0x20u:
          if (v7 != 5)
          {
            goto LABEL_515;
          }

          *(a1 + 24) |= 4u;
          v71 = *v6;
          v24 = (v6 + 4);
          *(a1 + 552) = v71;
          goto LABEL_398;
        case 0x23u:
          if (v7 != 26)
          {
            goto LABEL_515;
          }

          *(a1 + 16) |= 0x400u;
          v15 = *(a1 + 120);
          if (v15)
          {
            goto LABEL_478;
          }

          v72 = *(a1 + 8);
          if (v72)
          {
            v72 = *(v72 & 0xFFFFFFFFFFFFFFFELL);
          }

          v15 = MEMORY[0x277C97A80](v72);
          *(a1 + 120) = v15;
          goto LABEL_477;
        case 0x24u:
          if (v7 != 34)
          {
            goto LABEL_515;
          }

          *(a1 + 16) |= 0x800u;
          v13 = *(a1 + 128);
          if (v13)
          {
            goto LABEL_425;
          }

          v64 = *(a1 + 8);
          if (v64)
          {
            v64 = *(v64 & 0xFFFFFFFFFFFFFFFELL);
          }

          v13 = MEMORY[0x277C97AA0](v64);
          *(a1 + 128) = v13;
          goto LABEL_424;
        case 0x28u:
          if (v7 != 66)
          {
            goto LABEL_515;
          }

          *(a1 + 16) |= 0x1000u;
          v13 = *(a1 + 136);
          if (v13)
          {
            goto LABEL_425;
          }

          v105 = *(a1 + 8);
          if (v105)
          {
            v105 = *(v105 & 0xFFFFFFFFFFFFFFFELL);
          }

          v13 = MEMORY[0x277C97AA0](v105);
          *(a1 + 136) = v13;
          goto LABEL_424;
        case 0x29u:
          if (v7 != 74)
          {
            goto LABEL_515;
          }

          *(a1 + 16) |= 0x2000u;
          v15 = *(a1 + 144);
          if (v15)
          {
            goto LABEL_478;
          }

          v124 = *(a1 + 8);
          if (v124)
          {
            v124 = *(v124 & 0xFFFFFFFFFFFFFFFELL);
          }

          v15 = MEMORY[0x277C97A80](v124);
          *(a1 + 144) = v15;
          goto LABEL_477;
        case 0x2Au:
          if (v7 != 82)
          {
            goto LABEL_515;
          }

          *(a1 + 16) |= 0x4000u;
          v13 = *(a1 + 152);
          if (v13)
          {
            goto LABEL_425;
          }

          v140 = *(a1 + 8);
          if (v140)
          {
            v140 = *(v140 & 0xFFFFFFFFFFFFFFFELL);
          }

          v13 = MEMORY[0x277C97AA0](v140);
          *(a1 + 152) = v13;
          goto LABEL_424;
        case 0x2Cu:
          if (v7 != 101)
          {
            goto LABEL_515;
          }

          *(a1 + 24) |= 8u;
          v86 = *v6;
          v24 = (v6 + 4);
          *(a1 + 556) = v86;
          goto LABEL_398;
        case 0x2Eu:
          if (v7 != 112)
          {
            goto LABEL_515;
          }

          *(a1 + 24) |= 0x10u;
          v84 = (v6 + 1);
          LODWORD(v83) = *v6;
          if ((v83 & 0x80) == 0)
          {
            goto LABEL_190;
          }

          v85 = *v84;
          v83 = (v83 + (v85 << 7) - 128);
          if (v85 < 0)
          {
            v217 = google::protobuf::internal::VarintParseSlow64(v6, v83);
            v257 = v217;
            *(a1 + 560) = v218;
            if (!v217)
            {
              return 0;
            }
          }

          else
          {
            v84 = (v6 + 2);
LABEL_190:
            v257 = v84;
            *(a1 + 560) = v83;
          }

          goto LABEL_513;
        case 0x32u:
          if (v7 != 146)
          {
            goto LABEL_515;
          }

          *(a1 + 16) |= 0x8000u;
          v15 = *(a1 + 160);
          if (v15)
          {
            goto LABEL_478;
          }

          v125 = *(a1 + 8);
          if (v125)
          {
            v125 = *(v125 & 0xFFFFFFFFFFFFFFFELL);
          }

          v15 = MEMORY[0x277C97A80](v125);
          *(a1 + 160) = v15;
          goto LABEL_477;
        case 0x34u:
          if (v7 != 160)
          {
            goto LABEL_515;
          }

          *(a1 + 24) |= 0x20u;
          v138 = (v6 + 1);
          LODWORD(v137) = *v6;
          if ((v137 & 0x80) == 0)
          {
            goto LABEL_346;
          }

          v139 = *v138;
          v137 = (v137 + (v139 << 7) - 128);
          if (v139 < 0)
          {
            v239 = google::protobuf::internal::VarintParseSlow64(v6, v137);
            v257 = v239;
            *(a1 + 564) = v240;
            if (!v239)
            {
              return 0;
            }
          }

          else
          {
            v138 = (v6 + 2);
LABEL_346:
            v257 = v138;
            *(a1 + 564) = v137;
          }

          goto LABEL_513;
        case 0x3Cu:
          if (v7 != 224)
          {
            goto LABEL_515;
          }

          *(a1 + 24) |= 0x200000u;
          v102 = (v6 + 1);
          v101 = *v6;
          if ((v101 & 0x8000000000000000) == 0)
          {
            goto LABEL_237;
          }

          v103 = *v102;
          v101 = (v103 << 7) + v101 - 128;
          if (v103 < 0)
          {
            v225 = google::protobuf::internal::VarintParseSlow64(v6, v101);
            v257 = v225;
            *(a1 + 607) = v226 != 0;
            if (!v225)
            {
              return 0;
            }
          }

          else
          {
            v102 = (v6 + 2);
LABEL_237:
            v257 = v102;
            *(a1 + 607) = v101 != 0;
          }

          goto LABEL_513;
        case 0x3Eu:
          if (v7 != 242)
          {
            goto LABEL_515;
          }

          *(a1 + 16) |= 0x10000u;
          v15 = *(a1 + 168);
          if (v15)
          {
            goto LABEL_478;
          }

          v73 = *(a1 + 8);
          if (v73)
          {
            v73 = *(v73 & 0xFFFFFFFFFFFFFFFELL);
          }

          v15 = MEMORY[0x277C97A80](v73);
          *(a1 + 168) = v15;
          goto LABEL_477;
        case 0x64u:
          if (v7 != 34)
          {
            goto LABEL_515;
          }

          *(a1 + 16) |= 0x20000u;
          v34 = *(a1 + 176);
          if (v34)
          {
            goto LABEL_511;
          }

          v136 = *(a1 + 8);
          if (v136)
          {
            v136 = *(v136 & 0xFFFFFFFFFFFFFFFELL);
          }

          v34 = MEMORY[0x277C97A90](v136);
          *(a1 + 176) = v34;
          goto LABEL_510;
        case 0x65u:
          if (v7 != 42)
          {
            goto LABEL_515;
          }

          *(a1 + 16) |= 0x40000u;
          v34 = *(a1 + 184);
          if (v34)
          {
            goto LABEL_511;
          }

          v59 = *(a1 + 8);
          if (v59)
          {
            v59 = *(v59 & 0xFFFFFFFFFFFFFFFELL);
          }

          v34 = MEMORY[0x277C97A90](v59);
          *(a1 + 184) = v34;
          goto LABEL_510;
        case 0x66u:
          if (v7 != 50)
          {
            goto LABEL_515;
          }

          *(a1 + 16) |= 0x80000u;
          v34 = *(a1 + 192);
          if (v34)
          {
            goto LABEL_511;
          }

          v132 = *(a1 + 8);
          if (v132)
          {
            v132 = *(v132 & 0xFFFFFFFFFFFFFFFELL);
          }

          v34 = MEMORY[0x277C97A90](v132);
          *(a1 + 192) = v34;
          goto LABEL_510;
        case 0x67u:
          if (v7 != 58)
          {
            goto LABEL_515;
          }

          *(a1 + 16) |= 0x100000u;
          v34 = *(a1 + 200);
          if (v34)
          {
            goto LABEL_511;
          }

          v60 = *(a1 + 8);
          if (v60)
          {
            v60 = *(v60 & 0xFFFFFFFFFFFFFFFELL);
          }

          v34 = MEMORY[0x277C97A90](v60);
          *(a1 + 200) = v34;
          goto LABEL_510;
        case 0x68u:
          if (v7 != 66)
          {
            goto LABEL_515;
          }

          *(a1 + 16) |= 0x200000u;
          v34 = *(a1 + 208);
          if (v34)
          {
            goto LABEL_511;
          }

          v155 = *(a1 + 8);
          if (v155)
          {
            v155 = *(v155 & 0xFFFFFFFFFFFFFFFELL);
          }

          v34 = MEMORY[0x277C97A90](v155);
          *(a1 + 208) = v34;
          goto LABEL_510;
        case 0x69u:
          if (v7 != 74)
          {
            goto LABEL_515;
          }

          *(a1 + 16) |= 0x400000u;
          v34 = *(a1 + 216);
          if (v34)
          {
            goto LABEL_511;
          }

          v122 = *(a1 + 8);
          if (v122)
          {
            v122 = *(v122 & 0xFFFFFFFFFFFFFFFELL);
          }

          v34 = MEMORY[0x277C97A90](v122);
          *(a1 + 216) = v34;
          goto LABEL_510;
        case 0x6Au:
          if (v7 != 82)
          {
            goto LABEL_515;
          }

          *(a1 + 16) |= 0x800000u;
          v34 = *(a1 + 224);
          if (v34)
          {
            goto LABEL_511;
          }

          v55 = *(a1 + 8);
          if (v55)
          {
            v55 = *(v55 & 0xFFFFFFFFFFFFFFFELL);
          }

          v34 = MEMORY[0x277C97A90](v55);
          *(a1 + 224) = v34;
          goto LABEL_510;
        case 0x6Bu:
          if (v7 != 90)
          {
            goto LABEL_515;
          }

          *(a1 + 16) |= 0x1000000u;
          v34 = *(a1 + 232);
          if (v34)
          {
            goto LABEL_511;
          }

          v54 = *(a1 + 8);
          if (v54)
          {
            v54 = *(v54 & 0xFFFFFFFFFFFFFFFELL);
          }

          v34 = MEMORY[0x277C97A90](v54);
          *(a1 + 232) = v34;
          goto LABEL_510;
        case 0x6Cu:
          if (v7 != 98)
          {
            goto LABEL_515;
          }

          *(a1 + 16) |= 0x2000000u;
          v34 = *(a1 + 240);
          if (v34)
          {
            goto LABEL_511;
          }

          v88 = *(a1 + 8);
          if (v88)
          {
            v88 = *(v88 & 0xFFFFFFFFFFFFFFFELL);
          }

          v34 = MEMORY[0x277C97A90](v88);
          *(a1 + 240) = v34;
          goto LABEL_510;
        case 0x6Eu:
          if (v7 != 112)
          {
            goto LABEL_515;
          }

          *(a1 + 24) |= 0x80u;
          v99 = (v6 + 1);
          LODWORD(v98) = *v6;
          if ((v98 & 0x80) == 0)
          {
            goto LABEL_232;
          }

          v100 = *v99;
          v98 = (v98 + (v100 << 7) - 128);
          if (v100 < 0)
          {
            v223 = google::protobuf::internal::VarintParseSlow64(v6, v98);
            v257 = v223;
            *(a1 + 572) = v224;
            if (!v223)
            {
              return 0;
            }
          }

          else
          {
            v99 = (v6 + 2);
LABEL_232:
            v257 = v99;
            *(a1 + 572) = v98;
          }

          goto LABEL_513;
        case 0x6Fu:
          if (v7 != 120)
          {
            goto LABEL_515;
          }

          *(a1 + 24) |= 0x100u;
          v69 = (v6 + 1);
          LODWORD(v68) = *v6;
          if ((v68 & 0x80) == 0)
          {
            goto LABEL_153;
          }

          v70 = *v69;
          v68 = (v68 + (v70 << 7) - 128);
          if (v70 < 0)
          {
            v211 = google::protobuf::internal::VarintParseSlow64(v6, v68);
            v257 = v211;
            *(a1 + 576) = v212;
            if (!v211)
            {
              return 0;
            }
          }

          else
          {
            v69 = (v6 + 2);
LABEL_153:
            v257 = v69;
            *(a1 + 576) = v68;
          }

          goto LABEL_513;
        case 0x70u:
          if (v7 != 128)
          {
            goto LABEL_515;
          }

          *(a1 + 24) |= 0x200u;
          v130 = (v6 + 1);
          LODWORD(v129) = *v6;
          if ((v129 & 0x80) == 0)
          {
            goto LABEL_326;
          }

          v131 = *v130;
          v129 = (v129 + (v131 << 7) - 128);
          if (v131 < 0)
          {
            v235 = google::protobuf::internal::VarintParseSlow64(v6, v129);
            v257 = v235;
            *(a1 + 580) = v236;
            if (!v235)
            {
              return 0;
            }
          }

          else
          {
            v130 = (v6 + 2);
LABEL_326:
            v257 = v130;
            *(a1 + 580) = v129;
          }

          goto LABEL_513;
        case 0x71u:
          if (v7 != 136)
          {
            goto LABEL_515;
          }

          *(a1 + 24) |= 0x400u;
          v39 = (v6 + 1);
          LODWORD(v38) = *v6;
          if ((v38 & 0x80) == 0)
          {
            goto LABEL_83;
          }

          v40 = *v39;
          v38 = (v38 + (v40 << 7) - 128);
          if (v40 < 0)
          {
            v195 = google::protobuf::internal::VarintParseSlow64(v6, v38);
            v257 = v195;
            *(a1 + 584) = v196;
            if (!v195)
            {
              return 0;
            }
          }

          else
          {
            v39 = (v6 + 2);
LABEL_83:
            v257 = v39;
            *(a1 + 584) = v38;
          }

          goto LABEL_513;
        case 0x72u:
          if (v7 != 144)
          {
            goto LABEL_515;
          }

          *(a1 + 24) |= 0x800u;
          v62 = (v6 + 1);
          LODWORD(v61) = *v6;
          if ((v61 & 0x80) == 0)
          {
            goto LABEL_138;
          }

          v63 = *v62;
          v61 = (v61 + (v63 << 7) - 128);
          if (v63 < 0)
          {
            v207 = google::protobuf::internal::VarintParseSlow64(v6, v61);
            v257 = v207;
            *(a1 + 588) = v208;
            if (!v207)
            {
              return 0;
            }
          }

          else
          {
            v62 = (v6 + 2);
LABEL_138:
            v257 = v62;
            *(a1 + 588) = v61;
          }

          goto LABEL_513;
        case 0x73u:
          if (v7 != 152)
          {
            goto LABEL_515;
          }

          *(a1 + 24) |= 0x1000u;
          v159 = (v6 + 1);
          LODWORD(v158) = *v6;
          if ((v158 & 0x80) == 0)
          {
            goto LABEL_403;
          }

          v160 = *v159;
          v158 = (v158 + (v160 << 7) - 128);
          if (v160 < 0)
          {
            v247 = google::protobuf::internal::VarintParseSlow64(v6, v158);
            v257 = v247;
            *(a1 + 592) = v248;
            if (!v247)
            {
              return 0;
            }
          }

          else
          {
            v159 = (v6 + 2);
LABEL_403:
            v257 = v159;
            *(a1 + 592) = v158;
          }

          goto LABEL_513;
        case 0x74u:
          if (v7 != 165)
          {
            goto LABEL_515;
          }

          *(a1 + 24) |= 0x2000u;
          v149 = *v6;
          v24 = (v6 + 4);
          *(a1 + 596) = v149;
          goto LABEL_398;
        case 0x75u:
          if (v7 != 168)
          {
            goto LABEL_515;
          }

          *(a1 + 24) |= 0x800000u;
          v48 = (v6 + 1);
          v47 = *v6;
          if ((v47 & 0x8000000000000000) == 0)
          {
            goto LABEL_98;
          }

          v49 = *v48;
          v47 = (v49 << 7) + v47 - 128;
          if (v49 < 0)
          {
            v201 = google::protobuf::internal::VarintParseSlow64(v6, v47);
            v257 = v201;
            *(a1 + 609) = v202 != 0;
            if (!v201)
            {
              return 0;
            }
          }

          else
          {
            v48 = (v6 + 2);
LABEL_98:
            v257 = v48;
            *(a1 + 609) = v47 != 0;
          }

          goto LABEL_513;
        case 0x76u:
          if (v7 != 176)
          {
            goto LABEL_515;
          }

          *(a1 + 24) |= 0x1000000u;
          v77 = (v6 + 1);
          v76 = *v6;
          if ((v76 & 0x8000000000000000) == 0)
          {
            goto LABEL_175;
          }

          v78 = *v77;
          v76 = (v78 << 7) + v76 - 128;
          if (v78 < 0)
          {
            v213 = google::protobuf::internal::VarintParseSlow64(v6, v76);
            v257 = v213;
            *(a1 + 610) = v214 != 0;
            if (!v213)
            {
              return 0;
            }
          }

          else
          {
            v77 = (v6 + 2);
LABEL_175:
            v257 = v77;
            *(a1 + 610) = v76 != 0;
          }

          goto LABEL_513;
        case 0x77u:
          if (v7 != 184)
          {
            goto LABEL_515;
          }

          *(a1 + 24) |= 0x4000u;
          v127 = (v6 + 1);
          v126 = *v6;
          if ((v126 & 0x8000000000000000) == 0)
          {
            goto LABEL_321;
          }

          v128 = *v127;
          v126 = (v128 << 7) + v126 - 128;
          if (v128 < 0)
          {
            v233 = google::protobuf::internal::VarintParseSlow64(v6, v126);
            v257 = v233;
            *(a1 + 600) = v234 != 0;
            if (!v233)
            {
              return 0;
            }
          }

          else
          {
            v127 = (v6 + 2);
LABEL_321:
            v257 = v127;
            *(a1 + 600) = v126 != 0;
          }

          goto LABEL_513;
        case 0x78u:
          if (v7 != 192)
          {
            goto LABEL_515;
          }

          *(a1 + 24) |= 0x8000u;
          v134 = (v6 + 1);
          v133 = *v6;
          if ((v133 & 0x8000000000000000) == 0)
          {
            goto LABEL_336;
          }

          v135 = *v134;
          v133 = (v135 << 7) + v133 - 128;
          if (v135 < 0)
          {
            v237 = google::protobuf::internal::VarintParseSlow64(v6, v133);
            v257 = v237;
            *(a1 + 601) = v238 != 0;
            if (!v237)
            {
              return 0;
            }
          }

          else
          {
            v134 = (v6 + 2);
LABEL_336:
            v257 = v134;
            *(a1 + 601) = v133 != 0;
          }

          goto LABEL_513;
        case 0x79u:
          if (v7 != 200)
          {
            goto LABEL_515;
          }

          *(a1 + 24) |= 0x10000u;
          v66 = (v6 + 1);
          v65 = *v6;
          if ((v65 & 0x8000000000000000) == 0)
          {
            goto LABEL_148;
          }

          v67 = *v66;
          v65 = (v67 << 7) + v65 - 128;
          if (v67 < 0)
          {
            v209 = google::protobuf::internal::VarintParseSlow64(v6, v65);
            v257 = v209;
            *(a1 + 602) = v210 != 0;
            if (!v209)
            {
              return 0;
            }
          }

          else
          {
            v66 = (v6 + 2);
LABEL_148:
            v257 = v66;
            *(a1 + 602) = v65 != 0;
          }

          goto LABEL_513;
        case 0x7Au:
          if (v7 != 208)
          {
            goto LABEL_515;
          }

          *(a1 + 24) |= 0x20000u;
          v29 = (v6 + 1);
          v28 = *v6;
          if ((v28 & 0x8000000000000000) == 0)
          {
            goto LABEL_61;
          }

          v30 = *v29;
          v28 = (v30 << 7) + v28 - 128;
          if (v30 < 0)
          {
            v191 = google::protobuf::internal::VarintParseSlow64(v6, v28);
            v257 = v191;
            *(a1 + 603) = v192 != 0;
            if (!v191)
            {
              return 0;
            }
          }

          else
          {
            v29 = (v6 + 2);
LABEL_61:
            v257 = v29;
            *(a1 + 603) = v28 != 0;
          }

          goto LABEL_513;
        case 0x7Bu:
          if (v7 != 216)
          {
            goto LABEL_515;
          }

          *(a1 + 24) |= 0x40000u;
          v107 = (v6 + 1);
          v106 = *v6;
          if ((v106 & 0x8000000000000000) == 0)
          {
            goto LABEL_252;
          }

          v108 = *v107;
          v106 = (v108 << 7) + v106 - 128;
          if (v108 < 0)
          {
            v227 = google::protobuf::internal::VarintParseSlow64(v6, v106);
            v257 = v227;
            *(a1 + 604) = v228 != 0;
            if (!v227)
            {
              return 0;
            }
          }

          else
          {
            v107 = (v6 + 2);
LABEL_252:
            v257 = v107;
            *(a1 + 604) = v106 != 0;
          }

          goto LABEL_513;
        case 0x7Cu:
          if (v7 != 224)
          {
            goto LABEL_515;
          }

          *(a1 + 24) |= 0x80000u;
          v119 = (v6 + 1);
          v118 = *v6;
          if ((v118 & 0x8000000000000000) == 0)
          {
            goto LABEL_291;
          }

          v120 = *v119;
          v118 = (v120 << 7) + v118 - 128;
          if (v120 < 0)
          {
            v231 = google::protobuf::internal::VarintParseSlow64(v6, v118);
            v257 = v231;
            *(a1 + 605) = v232 != 0;
            if (!v231)
            {
              return 0;
            }
          }

          else
          {
            v119 = (v6 + 2);
LABEL_291:
            v257 = v119;
            *(a1 + 605) = v118 != 0;
          }

          goto LABEL_513;
        case 0x7Du:
          if (v7 != 232)
          {
            goto LABEL_515;
          }

          *(a1 + 24) |= 0x100000u;
          v164 = (v6 + 1);
          v163 = *v6;
          if ((v163 & 0x8000000000000000) == 0)
          {
            goto LABEL_418;
          }

          v165 = *v164;
          v163 = (v165 << 7) + v163 - 128;
          if (v165 < 0)
          {
            v249 = google::protobuf::internal::VarintParseSlow64(v6, v163);
            v257 = v249;
            *(a1 + 606) = v250 != 0;
            if (!v249)
            {
              return 0;
            }
          }

          else
          {
            v164 = (v6 + 2);
LABEL_418:
            v257 = v164;
            *(a1 + 606) = v163 != 0;
          }

          goto LABEL_513;
        case 0x82u:
          if (v7 != 18)
          {
            goto LABEL_515;
          }

          *(a1 + 16) |= 0x4000000u;
          v15 = *(a1 + 248);
          if (v15)
          {
            goto LABEL_478;
          }

          v26 = *(a1 + 8);
          if (v26)
          {
            v26 = *(v26 & 0xFFFFFFFFFFFFFFFELL);
          }

          v15 = MEMORY[0x277C97A80](v26);
          *(a1 + 248) = v15;
          goto LABEL_477;
        case 0x83u:
          if (v7 != 26)
          {
            goto LABEL_515;
          }

          *(a1 + 16) |= 0x8000000u;
          v15 = *(a1 + 256);
          if (v15)
          {
            goto LABEL_478;
          }

          v104 = *(a1 + 8);
          if (v104)
          {
            v104 = *(v104 & 0xFFFFFFFFFFFFFFFELL);
          }

          v15 = MEMORY[0x277C97A80](v104);
          *(a1 + 256) = v15;
          goto LABEL_477;
        case 0x84u:
          if (v7 != 34)
          {
            goto LABEL_515;
          }

          *(a1 + 16) |= 0x10000000u;
          v13 = *(a1 + 264);
          if (v13)
          {
            goto LABEL_425;
          }

          v144 = *(a1 + 8);
          if (v144)
          {
            v144 = *(v144 & 0xFFFFFFFFFFFFFFFELL);
          }

          v13 = MEMORY[0x277C97AA0](v144);
          *(a1 + 264) = v13;
          goto LABEL_424;
        case 0x85u:
          if (v7 != 42)
          {
            goto LABEL_515;
          }

          *(a1 + 16) |= 0x20000000u;
          v13 = *(a1 + 272);
          if (v13)
          {
            goto LABEL_425;
          }

          v87 = *(a1 + 8);
          if (v87)
          {
            v87 = *(v87 & 0xFFFFFFFFFFFFFFFELL);
          }

          v13 = MEMORY[0x277C97AA0](v87);
          *(a1 + 272) = v13;
          goto LABEL_424;
        case 0x86u:
          if (v7 != 50)
          {
            goto LABEL_515;
          }

          *(a1 + 16) |= 0x40000000u;
          v13 = *(a1 + 280);
          if (v13)
          {
            goto LABEL_425;
          }

          v145 = *(a1 + 8);
          if (v145)
          {
            v145 = *(v145 & 0xFFFFFFFFFFFFFFFELL);
          }

          v13 = MEMORY[0x277C97AA0](v145);
          *(a1 + 280) = v13;
          goto LABEL_424;
        case 0x87u:
          if (v7 != 61)
          {
            goto LABEL_515;
          }

          *(a1 + 24) |= 0x2000000u;
          v37 = *v6;
          v24 = (v6 + 4);
          *(a1 + 612) = v37;
          goto LABEL_398;
        case 0x88u:
          if (v7 != 69)
          {
            goto LABEL_515;
          }

          *(a1 + 24) |= 0x4000000u;
          v157 = *v6;
          v24 = (v6 + 4);
          *(a1 + 616) = v157;
          goto LABEL_398;
        case 0x89u:
          if (v7 != 74)
          {
            goto LABEL_515;
          }

          *(a1 + 16) |= 0x80000000;
          v15 = *(a1 + 288);
          if (v15)
          {
            goto LABEL_478;
          }

          v50 = *(a1 + 8);
          if (v50)
          {
            v50 = *(v50 & 0xFFFFFFFFFFFFFFFELL);
          }

          v15 = MEMORY[0x277C97A80](v50);
          *(a1 + 288) = v15;
          goto LABEL_477;
        case 0x8Au:
          if (v7 != 82)
          {
            goto LABEL_515;
          }

          *(a1 + 20) |= 1u;
          v15 = *(a1 + 296);
          if (v15)
          {
            goto LABEL_478;
          }

          v161 = *(a1 + 8);
          if (v161)
          {
            v161 = *(v161 & 0xFFFFFFFFFFFFFFFELL);
          }

          v15 = MEMORY[0x277C97A80](v161);
          *(a1 + 296) = v15;
          goto LABEL_477;
        case 0x8Bu:
          if (v7 != 90)
          {
            goto LABEL_515;
          }

          *(a1 + 20) |= 2u;
          v13 = *(a1 + 304);
          if (v13)
          {
            goto LABEL_425;
          }

          v150 = *(a1 + 8);
          if (v150)
          {
            v150 = *(v150 & 0xFFFFFFFFFFFFFFFELL);
          }

          v13 = MEMORY[0x277C97AA0](v150);
          *(a1 + 304) = v13;
          goto LABEL_424;
        case 0x8Cu:
          if (v7 != 98)
          {
            goto LABEL_515;
          }

          *(a1 + 20) |= 4u;
          v13 = *(a1 + 312);
          if (v13)
          {
            goto LABEL_425;
          }

          v20 = *(a1 + 8);
          if (v20)
          {
            v20 = *(v20 & 0xFFFFFFFFFFFFFFFELL);
          }

          v13 = MEMORY[0x277C97AA0](v20);
          *(a1 + 312) = v13;
          goto LABEL_424;
        case 0x8Du:
          if (v7 != 104)
          {
            goto LABEL_515;
          }

          *(a1 + 24) |= 0x8000000u;
          v168 = (v6 + 1);
          LODWORD(v167) = *v6;
          if ((v167 & 0x80) == 0)
          {
            goto LABEL_430;
          }

          v169 = *v168;
          v167 = (v167 + (v169 << 7) - 128);
          if (v169 < 0)
          {
            v251 = google::protobuf::internal::VarintParseSlow64(v6, v167);
            v257 = v251;
            *(a1 + 620) = v252;
            if (!v251)
            {
              return 0;
            }
          }

          else
          {
            v168 = (v6 + 2);
LABEL_430:
            v257 = v168;
            *(a1 + 620) = v167;
          }

          goto LABEL_513;
        case 0x8Eu:
          if (v7 != 112)
          {
            goto LABEL_515;
          }

          *(a1 + 24) |= 0x10000000u;
          v22 = (v6 + 1);
          LODWORD(v21) = *v6;
          if ((v21 & 0x80) == 0)
          {
            goto LABEL_44;
          }

          v23 = *v22;
          v21 = (v21 + (v23 << 7) - 128);
          if (v23 < 0)
          {
            v189 = google::protobuf::internal::VarintParseSlow64(v6, v21);
            v257 = v189;
            *(a1 + 624) = v190;
            if (!v189)
            {
              return 0;
            }
          }

          else
          {
            v22 = (v6 + 2);
LABEL_44:
            v257 = v22;
            *(a1 + 624) = v21;
          }

          goto LABEL_513;
        case 0x8Fu:
          if (v7 != 120)
          {
            goto LABEL_515;
          }

          *(a1 + 24) |= 0x20000000u;
          v57 = (v6 + 1);
          LODWORD(v56) = *v6;
          if ((v56 & 0x80) == 0)
          {
            goto LABEL_123;
          }

          v58 = *v57;
          v56 = (v56 + (v58 << 7) - 128);
          if (v58 < 0)
          {
            v205 = google::protobuf::internal::VarintParseSlow64(v6, v56);
            v257 = v205;
            *(a1 + 628) = v206;
            if (!v205)
            {
              return 0;
            }
          }

          else
          {
            v57 = (v6 + 2);
LABEL_123:
            v257 = v57;
            *(a1 + 628) = v56;
          }

          goto LABEL_513;
        case 0x96u:
          if (v7 != 176)
          {
            goto LABEL_515;
          }

          *(a1 + 24) |= 0x40000000u;
          v18 = (v6 + 1);
          LODWORD(v17) = *v6;
          if ((v17 & 0x80) == 0)
          {
            goto LABEL_34;
          }

          v19 = *v18;
          v17 = (v17 + (v19 << 7) - 128);
          if (v19 < 0)
          {
            v187 = google::protobuf::internal::VarintParseSlow64(v6, v17);
            v257 = v187;
            *(a1 + 632) = v188;
            if (!v187)
            {
              return 0;
            }
          }

          else
          {
            v18 = (v6 + 2);
LABEL_34:
            v257 = v18;
            *(a1 + 632) = v17;
          }

          goto LABEL_513;
        case 0x97u:
          if (v7 != 184)
          {
            goto LABEL_515;
          }

          *(a1 + 24) |= 0x80000000;
          v152 = (v6 + 1);
          LODWORD(v151) = *v6;
          if ((v151 & 0x80) == 0)
          {
            goto LABEL_383;
          }

          v153 = *v152;
          v151 = (v151 + (v153 << 7) - 128);
          if (v153 < 0)
          {
            v245 = google::protobuf::internal::VarintParseSlow64(v6, v151);
            v257 = v245;
            *(a1 + 636) = v246;
            if (!v245)
            {
              return 0;
            }
          }

          else
          {
            v152 = (v6 + 2);
LABEL_383:
            v257 = v152;
            *(a1 + 636) = v151;
          }

          goto LABEL_513;
        case 0x99u:
          if (v7 != 200)
          {
            goto LABEL_515;
          }

          *(a1 + 28) |= 1u;
          v147 = (v6 + 1);
          LODWORD(v146) = *v6;
          if ((v146 & 0x80) == 0)
          {
            goto LABEL_371;
          }

          v148 = *v147;
          v146 = (v146 + (v148 << 7) - 128);
          if (v148 < 0)
          {
            v243 = google::protobuf::internal::VarintParseSlow64(v6, v146);
            v257 = v243;
            *(a1 + 640) = v244;
            if (!v243)
            {
              return 0;
            }
          }

          else
          {
            v147 = (v6 + 2);
LABEL_371:
            v257 = v147;
            *(a1 + 640) = v146;
          }

          goto LABEL_513;
        case 0x9Au:
          if (v7 != 208)
          {
            goto LABEL_515;
          }

          *(a1 + 28) |= 2u;
          v45 = (v6 + 1);
          LODWORD(v44) = *v6;
          if ((v44 & 0x80) == 0)
          {
            goto LABEL_93;
          }

          v46 = *v45;
          v44 = (v44 + (v46 << 7) - 128);
          if (v46 < 0)
          {
            v199 = google::protobuf::internal::VarintParseSlow64(v6, v44);
            v257 = v199;
            *(a1 + 644) = v200;
            if (!v199)
            {
              return 0;
            }
          }

          else
          {
            v45 = (v6 + 2);
LABEL_93:
            v257 = v45;
            *(a1 + 644) = v44;
          }

          goto LABEL_513;
        case 0x9Bu:
          if (v7 != 216)
          {
            goto LABEL_515;
          }

          *(a1 + 28) |= 4u;
          v42 = (v6 + 1);
          LODWORD(v41) = *v6;
          if ((v41 & 0x80) == 0)
          {
            goto LABEL_88;
          }

          v43 = *v42;
          v41 = (v41 + (v43 << 7) - 128);
          if (v43 < 0)
          {
            v197 = google::protobuf::internal::VarintParseSlow64(v6, v41);
            v257 = v197;
            *(a1 + 648) = v198;
            if (!v197)
            {
              return 0;
            }
          }

          else
          {
            v42 = (v6 + 2);
LABEL_88:
            v257 = v42;
            *(a1 + 648) = v41;
          }

          goto LABEL_513;
        case 0x9Cu:
          if (v7 != 224)
          {
            goto LABEL_515;
          }

          *(a1 + 28) |= 8u;
          v81 = (v6 + 1);
          LODWORD(v80) = *v6;
          if ((v80 & 0x80) == 0)
          {
            goto LABEL_185;
          }

          v82 = *v81;
          v80 = (v80 + (v82 << 7) - 128);
          if (v82 < 0)
          {
            v215 = google::protobuf::internal::VarintParseSlow64(v6, v80);
            v257 = v215;
            *(a1 + 652) = v216;
            if (!v215)
            {
              return 0;
            }
          }

          else
          {
            v81 = (v6 + 2);
LABEL_185:
            v257 = v81;
            *(a1 + 652) = v80;
          }

          goto LABEL_513;
        case 0x9Du:
          if (v7 != 232)
          {
            goto LABEL_515;
          }

          *(a1 + 28) |= 0x10u;
          v52 = (v6 + 1);
          LODWORD(v51) = *v6;
          if ((v51 & 0x80) == 0)
          {
            goto LABEL_108;
          }

          v53 = *v52;
          v51 = (v51 + (v53 << 7) - 128);
          if (v53 < 0)
          {
            v203 = google::protobuf::internal::VarintParseSlow64(v6, v51);
            v257 = v203;
            *(a1 + 656) = v204;
            if (!v203)
            {
              return 0;
            }
          }

          else
          {
            v52 = (v6 + 2);
LABEL_108:
            v257 = v52;
            *(a1 + 656) = v51;
          }

          goto LABEL_513;
        case 0xA7u:
          if (v7 != 58)
          {
            goto LABEL_515;
          }

          *(a1 + 20) |= 8u;
          v13 = *(a1 + 320);
          if (v13)
          {
            goto LABEL_425;
          }

          v27 = *(a1 + 8);
          if (v27)
          {
            v27 = *(v27 & 0xFFFFFFFFFFFFFFFELL);
          }

          v13 = MEMORY[0x277C97AA0](v27);
          *(a1 + 320) = v13;
          goto LABEL_424;
        case 0xA8u:
          if (v7 != 66)
          {
            goto LABEL_515;
          }

          *(a1 + 20) |= 0x10u;
          v34 = *(a1 + 328);
          if (v34)
          {
            goto LABEL_511;
          }

          v35 = *(a1 + 8);
          if (v35)
          {
            v35 = *(v35 & 0xFFFFFFFFFFFFFFFELL);
          }

          v34 = MEMORY[0x277C97A90](v35);
          *(a1 + 328) = v34;
          goto LABEL_510;
        case 0xB4u:
          if (v7 != 162)
          {
            goto LABEL_515;
          }

          *(a1 + 20) |= 0x20u;
          v34 = *(a1 + 336);
          if (v34)
          {
            goto LABEL_511;
          }

          v162 = *(a1 + 8);
          if (v162)
          {
            v162 = *(v162 & 0xFFFFFFFFFFFFFFFELL);
          }

          v34 = MEMORY[0x277C97A90](v162);
          *(a1 + 336) = v34;
          goto LABEL_510;
        case 0xB5u:
          if (v7 != 170)
          {
            goto LABEL_515;
          }

          *(a1 + 20) |= 0x40u;
          v13 = *(a1 + 344);
          if (v13)
          {
            goto LABEL_425;
          }

          v166 = *(a1 + 8);
          if (v166)
          {
            v166 = *(v166 & 0xFFFFFFFFFFFFFFFELL);
          }

          v13 = MEMORY[0x277C97AA0](v166);
          *(a1 + 344) = v13;
          goto LABEL_424;
        case 0xB6u:
          if (v7 != 178)
          {
            goto LABEL_515;
          }

          *(a1 + 20) |= 0x80u;
          v13 = *(a1 + 352);
          if (v13)
          {
            goto LABEL_425;
          }

          v95 = *(a1 + 8);
          if (v95)
          {
            v95 = *(v95 & 0xFFFFFFFFFFFFFFFELL);
          }

          v13 = MEMORY[0x277C97AA0](v95);
          *(a1 + 352) = v13;
          goto LABEL_424;
        case 0xB7u:
          if (v7 != 186)
          {
            goto LABEL_515;
          }

          *(a1 + 20) |= 0x100u;
          v74 = *(a1 + 360);
          if (v74)
          {
            goto LABEL_279;
          }

          v115 = *(a1 + 8);
          if (v115)
          {
            v115 = *(v115 & 0xFFFFFFFFFFFFFFFELL);
          }

          v74 = MEMORY[0x277C97AB0](v115);
          *(a1 + 360) = v74;
          goto LABEL_278;
        case 0xB8u:
          if (v7 != 194)
          {
            goto LABEL_515;
          }

          *(a1 + 20) |= 0x200u;
          v74 = *(a1 + 368);
          if (v74)
          {
            goto LABEL_279;
          }

          v75 = *(a1 + 8);
          if (v75)
          {
            v75 = *(v75 & 0xFFFFFFFFFFFFFFFELL);
          }

          v74 = MEMORY[0x277C97AB0](v75);
          *(a1 + 368) = v74;
LABEL_278:
          v6 = v257;
LABEL_279:
          v10 = sub_2764ACA10(a3, v74, v6);
          goto LABEL_512;
        case 0xC9u:
          if (v7 != 72)
          {
            goto LABEL_515;
          }

          *(a1 + 28) |= 0x20u;
          v174 = (v6 + 1);
          LODWORD(v173) = *v6;
          if ((v173 & 0x80) == 0)
          {
            goto LABEL_440;
          }

          v175 = *v174;
          v173 = (v173 + (v175 << 7) - 128);
          if (v175 < 0)
          {
            v255 = google::protobuf::internal::VarintParseSlow64(v6, v173);
            v257 = v255;
            *(a1 + 660) = v256;
            if (!v255)
            {
              return 0;
            }
          }

          else
          {
            v174 = (v6 + 2);
LABEL_440:
            v257 = v174;
            *(a1 + 660) = v173;
          }

          goto LABEL_513;
        case 0xCAu:
          if (v7 != 80)
          {
            goto LABEL_515;
          }

          *(a1 + 28) |= 0x40u;
          v32 = (v6 + 1);
          LODWORD(v31) = *v6;
          if ((v31 & 0x80) == 0)
          {
            goto LABEL_66;
          }

          v33 = *v32;
          v31 = (v31 + (v33 << 7) - 128);
          if (v33 < 0)
          {
            v193 = google::protobuf::internal::VarintParseSlow64(v6, v31);
            v257 = v193;
            *(a1 + 664) = v194;
            if (!v193)
            {
              return 0;
            }
          }

          else
          {
            v32 = (v6 + 2);
LABEL_66:
            v257 = v32;
            *(a1 + 664) = v31;
          }

          goto LABEL_513;
        case 0xCDu:
          if (v7 != 109)
          {
            goto LABEL_515;
          }

          *(a1 + 28) |= 0x80u;
          v154 = *v6;
          v24 = (v6 + 4);
          *(a1 + 668) = v154;
          goto LABEL_398;
        case 0xCEu:
          if (v7 != 117)
          {
            goto LABEL_515;
          }

          *(a1 + 28) |= 0x100u;
          v25 = *v6;
          v24 = (v6 + 4);
          *(a1 + 672) = v25;
LABEL_398:
          v257 = v24;
          goto LABEL_513;
        case 0xCFu:
          if (v7 != 122)
          {
            goto LABEL_515;
          }

          *(a1 + 20) |= 0x400u;
          v15 = *(a1 + 376);
          if (!v15)
          {
            v16 = *(a1 + 8);
            if (v16)
            {
              v16 = *(v16 & 0xFFFFFFFFFFFFFFFELL);
            }

            v15 = MEMORY[0x277C97A80](v16);
            *(a1 + 376) = v15;
LABEL_477:
            v6 = v257;
          }

LABEL_478:
          v10 = sub_2764AC00C(a3, v15, v6);
          goto LABEL_512;
        case 0xD3u:
          if (v7 != 154)
          {
            goto LABEL_515;
          }

          *(a1 + 20) |= 0x800u;
          v13 = *(a1 + 384);
          if (v13)
          {
            goto LABEL_425;
          }

          v156 = *(a1 + 8);
          if (v156)
          {
            v156 = *(v156 & 0xFFFFFFFFFFFFFFFELL);
          }

          v13 = MEMORY[0x277C97AA0](v156);
          *(a1 + 384) = v13;
          goto LABEL_424;
        case 0xD4u:
          if (v7 != 162)
          {
            goto LABEL_515;
          }

          *(a1 + 20) |= 0x1000u;
          v13 = *(a1 + 392);
          if (v13)
          {
            goto LABEL_425;
          }

          v14 = *(a1 + 8);
          if (v14)
          {
            v14 = *(v14 & 0xFFFFFFFFFFFFFFFELL);
          }

          v13 = MEMORY[0x277C97AA0](v14);
          *(a1 + 392) = v13;
LABEL_424:
          v6 = v257;
LABEL_425:
          v10 = sub_2764AC69C(a3, v13, v6);
          goto LABEL_512;
        case 0xD5u:
          if (v7 != 168)
          {
            goto LABEL_515;
          }

          *(a1 + 24) |= 0x40u;
          v171 = (v6 + 1);
          LODWORD(v170) = *v6;
          if ((v170 & 0x80) == 0)
          {
            goto LABEL_435;
          }

          v172 = *v171;
          v170 = (v170 + (v172 << 7) - 128);
          if (v172 < 0)
          {
            v253 = google::protobuf::internal::VarintParseSlow64(v6, v170);
            v257 = v253;
            *(a1 + 568) = v254;
            if (!v253)
            {
              return 0;
            }
          }

          else
          {
            v171 = (v6 + 2);
LABEL_435:
            v257 = v171;
            *(a1 + 568) = v170;
          }

          goto LABEL_513;
        case 0xD6u:
          if (v7 != 178)
          {
            goto LABEL_515;
          }

          *(a1 + 20) |= 0x2000u;
          v34 = *(a1 + 400);
          if (!v34)
          {
            v36 = *(a1 + 8);
            if (v36)
            {
              v36 = *(v36 & 0xFFFFFFFFFFFFFFFELL);
            }

            v34 = MEMORY[0x277C97A90](v36);
            *(a1 + 400) = v34;
LABEL_510:
            v6 = v257;
          }

LABEL_511:
          v10 = sub_2764AC76C(a3, v34, v6);
          goto LABEL_512;
        case 0xD7u:
          if (v7 == 184)
          {
            *(a1 + 24) |= 0x400000u;
            v142 = (v6 + 1);
            v141 = *v6;
            if ((v141 & 0x8000000000000000) == 0)
            {
              goto LABEL_356;
            }

            v143 = *v142;
            v141 = (v143 << 7) + v141 - 128;
            if ((v143 & 0x80000000) == 0)
            {
              v142 = (v6 + 2);
LABEL_356:
              v257 = v142;
              *(a1 + 608) = v141 != 0;
              goto LABEL_513;
            }

            v241 = google::protobuf::internal::VarintParseSlow64(v6, v141);
            v257 = v241;
            *(a1 + 608) = v242 != 0;
            if (!v241)
            {
              return 0;
            }
          }

          else
          {
LABEL_515:
            if (v7)
            {
              v186 = (v7 & 7) == 4;
            }

            else
            {
              v186 = 1;
            }

            if (v186)
            {
              *(a3 + 80) = v7 - 1;
              return v257;
            }

            if ((*(a1 + 8) & 1) == 0)
            {
              sub_2763D4E10((a1 + 8));
            }

            v10 = google::protobuf::internal::UnknownFieldParse();
LABEL_512:
            v257 = v10;
            if (!v10)
            {
              return 0;
            }
          }

LABEL_513:
          if (sub_2763D4D98(a3, &v257, *(a3 + 92)))
          {
            return v257;
          }

          break;
        default:
          switch(v7 >> 3)
          {
            case 0x12Cu:
              if (v7 != 98)
              {
                goto LABEL_515;
              }

              *(a1 + 20) |= 0x4000u;
              v11 = *(a1 + 408);
              if (v11)
              {
                goto LABEL_499;
              }

              v11 = sub_276406B24();
              *(a1 + 408) = v11;
              goto LABEL_498;
            case 0x12Du:
              if (v7 != 106)
              {
                goto LABEL_515;
              }

              *(a1 + 20) |= 0x8000u;
              v11 = *(a1 + 416);
              if (v11)
              {
                goto LABEL_499;
              }

              v11 = sub_276406B24();
              *(a1 + 416) = v11;
              goto LABEL_498;
            case 0x12Eu:
              if (v7 != 114)
              {
                goto LABEL_515;
              }

              *(a1 + 20) |= 0x10000u;
              v11 = *(a1 + 424);
              if (v11)
              {
                goto LABEL_499;
              }

              v11 = sub_276406B24();
              *(a1 + 424) = v11;
              goto LABEL_498;
            case 0x12Fu:
              if (v7 != 122)
              {
                goto LABEL_515;
              }

              *(a1 + 20) |= 0x20000u;
              v11 = *(a1 + 432);
              if (v11)
              {
                goto LABEL_499;
              }

              v11 = sub_276406B24();
              *(a1 + 432) = v11;
              goto LABEL_498;
            case 0x130u:
              if (v7 != 130)
              {
                goto LABEL_515;
              }

              *(a1 + 20) |= 0x40000u;
              v11 = *(a1 + 440);
              if (v11)
              {
                goto LABEL_499;
              }

              v11 = sub_276406B24();
              *(a1 + 440) = v11;
              goto LABEL_498;
            case 0x131u:
              if (v7 != 138)
              {
                goto LABEL_515;
              }

              *(a1 + 20) |= 0x80000u;
              v11 = *(a1 + 448);
              if (v11)
              {
                goto LABEL_499;
              }

              v11 = sub_276406B24();
              *(a1 + 448) = v11;
LABEL_498:
              v6 = v257;
LABEL_499:
              v10 = sub_2764B0DF4(a3, v11, v6);
              goto LABEL_512;
            case 0x132u:
              if (v7 != 146)
              {
                goto LABEL_515;
              }

              *(a1 + 20) |= 0x100000u;
              v34 = *(a1 + 456);
              if (v34)
              {
                goto LABEL_511;
              }

              v183 = *(a1 + 8);
              if (v183)
              {
                v183 = *(v183 & 0xFFFFFFFFFFFFFFFELL);
              }

              v34 = MEMORY[0x277C97A90](v183);
              *(a1 + 456) = v34;
              goto LABEL_510;
            case 0x133u:
              if (v7 != 154)
              {
                goto LABEL_515;
              }

              *(a1 + 20) |= 0x200000u;
              v34 = *(a1 + 464);
              if (v34)
              {
                goto LABEL_511;
              }

              v182 = *(a1 + 8);
              if (v182)
              {
                v182 = *(v182 & 0xFFFFFFFFFFFFFFFELL);
              }

              v34 = MEMORY[0x277C97A90](v182);
              *(a1 + 464) = v34;
              goto LABEL_510;
            case 0x134u:
              if (v7 != 162)
              {
                goto LABEL_515;
              }

              *(a1 + 20) |= 0x400000u;
              v34 = *(a1 + 472);
              if (v34)
              {
                goto LABEL_511;
              }

              v184 = *(a1 + 8);
              if (v184)
              {
                v184 = *(v184 & 0xFFFFFFFFFFFFFFFELL);
              }

              v34 = MEMORY[0x277C97A90](v184);
              *(a1 + 472) = v34;
              goto LABEL_510;
            case 0x135u:
              if (v7 != 170)
              {
                goto LABEL_515;
              }

              *(a1 + 20) |= 0x800000u;
              v34 = *(a1 + 480);
              if (v34)
              {
                goto LABEL_511;
              }

              v180 = *(a1 + 8);
              if (v180)
              {
                v180 = *(v180 & 0xFFFFFFFFFFFFFFFELL);
              }

              v34 = MEMORY[0x277C97A90](v180);
              *(a1 + 480) = v34;
              goto LABEL_510;
            case 0x136u:
              if (v7 != 178)
              {
                goto LABEL_515;
              }

              *(a1 + 20) |= 0x1000000u;
              v34 = *(a1 + 488);
              if (v34)
              {
                goto LABEL_511;
              }

              v185 = *(a1 + 8);
              if (v185)
              {
                v185 = *(v185 & 0xFFFFFFFFFFFFFFFELL);
              }

              v34 = MEMORY[0x277C97A90](v185);
              *(a1 + 488) = v34;
              goto LABEL_510;
            case 0x140u:
              if (v7 != 2)
              {
                goto LABEL_515;
              }

              *(a1 + 20) |= 0x2000000u;
              v15 = *(a1 + 496);
              if (v15)
              {
                goto LABEL_478;
              }

              v178 = *(a1 + 8);
              if (v178)
              {
                v178 = *(v178 & 0xFFFFFFFFFFFFFFFELL);
              }

              v15 = MEMORY[0x277C97A80](v178);
              *(a1 + 496) = v15;
              goto LABEL_477;
            case 0x141u:
              if (v7 != 10)
              {
                goto LABEL_515;
              }

              *(a1 + 20) |= 0x4000000u;
              v15 = *(a1 + 504);
              if (v15)
              {
                goto LABEL_478;
              }

              v179 = *(a1 + 8);
              if (v179)
              {
                v179 = *(v179 & 0xFFFFFFFFFFFFFFFELL);
              }

              v15 = MEMORY[0x277C97A80](v179);
              *(a1 + 504) = v15;
              goto LABEL_477;
            case 0x142u:
              if (v7 != 18)
              {
                goto LABEL_515;
              }

              *(a1 + 20) |= 0x8000000u;
              v15 = *(a1 + 512);
              if (v15)
              {
                goto LABEL_478;
              }

              v176 = *(a1 + 8);
              if (v176)
              {
                v176 = *(v176 & 0xFFFFFFFFFFFFFFFELL);
              }

              v15 = MEMORY[0x277C97A80](v176);
              *(a1 + 512) = v15;
              goto LABEL_477;
            case 0x143u:
              if (v7 != 26)
              {
                goto LABEL_515;
              }

              *(a1 + 20) |= 0x10000000u;
              v15 = *(a1 + 520);
              if (v15)
              {
                goto LABEL_478;
              }

              v177 = *(a1 + 8);
              if (v177)
              {
                v177 = *(v177 & 0xFFFFFFFFFFFFFFFELL);
              }

              v15 = MEMORY[0x277C97A80](v177);
              *(a1 + 520) = v15;
              goto LABEL_477;
            case 0x144u:
              if (v7 != 34)
              {
                goto LABEL_515;
              }

              *(a1 + 20) |= 0x20000000u;
              v15 = *(a1 + 528);
              if (v15)
              {
                goto LABEL_478;
              }

              v181 = *(a1 + 8);
              if (v181)
              {
                v181 = *(v181 & 0xFFFFFFFFFFFFFFFELL);
              }

              v15 = MEMORY[0x277C97A80](v181);
              *(a1 + 528) = v15;
              goto LABEL_477;
            default:
              goto LABEL_515;
          }
      }
    }
  }

  return v257;
}

unsigned __int8 *sub_276492970(uint64_t a1, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *this)
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

    a2 = TSS::StyleArchive::_InternalSerialize(v6, v8, this);
    if ((v5 & 2) == 0)
    {
LABEL_3:
      if ((v5 & 4) == 0)
      {
        goto LABEL_35;
      }

      goto LABEL_25;
    }
  }

  else if ((v5 & 2) == 0)
  {
    goto LABEL_3;
  }

  if (*this <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
  }

  v12 = *(a1 + 48);
  *a2 = 82;
  v13 = *(v12 + 11);
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

  a2 = TSD::FillArchive::_InternalSerialize(v12, v14, this);
  if ((v5 & 4) != 0)
  {
LABEL_25:
    if (*this <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
    }

    v18 = *(a1 + 56);
    *a2 = 90;
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

    a2 = TSD::StrokeArchive::_InternalSerialize(v18, v20, this);
  }

LABEL_35:
  if ((*(a1 + 23) & 0x40) != 0)
  {
    if (*this <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
    }

    v24 = *(a1 + 536);
    *a2 = 104;
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
      }

      else
      {
        a2[2] = v25;
        a2 += 3;
      }
    }

    else
    {
      a2[1] = v24;
      a2 += 2;
    }
  }

  v28 = *(a1 + 16);
  if ((v28 & 8) != 0)
  {
    if (*this <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
    }

    v29 = *(a1 + 64);
    *a2 = 386;
    v30 = *(v29 + 5);
    if (v30 > 0x7F)
    {
      a2[2] = v30 | 0x80;
      v32 = v30 >> 7;
      if (v30 >> 14)
      {
        v31 = a2 + 4;
        do
        {
          *(v31 - 1) = v32 | 0x80;
          v33 = v32 >> 7;
          ++v31;
          v34 = v32 >> 14;
          v32 >>= 7;
        }

        while (v34);
        *(v31 - 1) = v33;
      }

      else
      {
        a2[3] = v32;
        v31 = a2 + 4;
      }
    }

    else
    {
      a2[2] = v30;
      v31 = a2 + 3;
    }

    a2 = TSD::StrokeArchive::_InternalSerialize(v29, v31, this);
    if ((v28 & 0x10) == 0)
    {
LABEL_47:
      if ((v28 & 0x20) == 0)
      {
        goto LABEL_79;
      }

      goto LABEL_69;
    }
  }

  else if ((v28 & 0x10) == 0)
  {
    goto LABEL_47;
  }

  if (*this <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
  }

  v35 = *(a1 + 72);
  *a2 = 394;
  v36 = *(v35 + 11);
  if (v36 > 0x7F)
  {
    a2[2] = v36 | 0x80;
    v38 = v36 >> 7;
    if (v36 >> 14)
    {
      v37 = a2 + 4;
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
      a2[3] = v38;
      v37 = a2 + 4;
    }
  }

  else
  {
    a2[2] = v36;
    v37 = a2 + 3;
  }

  a2 = TSD::FillArchive::_InternalSerialize(v35, v37, this);
  if ((v28 & 0x20) != 0)
  {
LABEL_69:
    if (*this <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
    }

    v41 = *(a1 + 80);
    *a2 = 402;
    v42 = *(v41 + 5);
    if (v42 > 0x7F)
    {
      a2[2] = v42 | 0x80;
      v44 = v42 >> 7;
      if (v42 >> 14)
      {
        v43 = a2 + 4;
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
        a2[3] = v44;
        v43 = a2 + 4;
      }
    }

    else
    {
      a2[2] = v42;
      v43 = a2 + 3;
    }

    a2 = TSD::StrokeArchive::_InternalSerialize(v41, v43, this);
  }

LABEL_79:
  if ((*(a1 + 20) & 0x80000000) != 0)
  {
    if (*this <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
    }

    v47 = *(a1 + 540);
    *a2 = 421;
    *(a2 + 2) = v47;
    a2 += 6;
  }

  if (*(a1 + 24))
  {
    if (*this <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
    }

    v48 = *(a1 + 544);
    *a2 = 432;
    if (v48 > 0x7F)
    {
      a2[2] = v48 | 0x80;
      v49 = v48 >> 7;
      if (v48 >> 14)
      {
        a2 += 4;
        do
        {
          *(a2 - 1) = v49 | 0x80;
          v50 = v49 >> 7;
          ++a2;
          v51 = v49 >> 14;
          v49 >>= 7;
        }

        while (v51);
        *(a2 - 1) = v50;
      }

      else
      {
        a2[3] = v49;
        a2 += 4;
      }
    }

    else
    {
      a2[2] = v48;
      a2 += 3;
    }
  }

  v52 = *(a1 + 16);
  if ((v52 & 0x40) != 0)
  {
    if (*this <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
    }

    v53 = *(a1 + 88);
    *a2 = 458;
    v54 = *(v53 + 11);
    if (v54 > 0x7F)
    {
      a2[2] = v54 | 0x80;
      v56 = v54 >> 7;
      if (v54 >> 14)
      {
        v55 = a2 + 4;
        do
        {
          *(v55 - 1) = v56 | 0x80;
          v57 = v56 >> 7;
          ++v55;
          v58 = v56 >> 14;
          v56 >>= 7;
        }

        while (v58);
        *(v55 - 1) = v57;
      }

      else
      {
        a2[3] = v56;
        v55 = a2 + 4;
      }
    }

    else
    {
      a2[2] = v54;
      v55 = a2 + 3;
    }

    a2 = TSD::FillArchive::_InternalSerialize(v53, v55, this);
  }

  if ((v52 & 0x80) != 0)
  {
    if (*this <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
    }

    v59 = *(a1 + 96);
    *a2 = 466;
    v60 = *(v59 + 5);
    if (v60 > 0x7F)
    {
      a2[2] = v60 | 0x80;
      v62 = v60 >> 7;
      if (v60 >> 14)
      {
        v61 = a2 + 4;
        do
        {
          *(v61 - 1) = v62 | 0x80;
          v63 = v62 >> 7;
          ++v61;
          v64 = v62 >> 14;
          v62 >>= 7;
        }

        while (v64);
        *(v61 - 1) = v63;
      }

      else
      {
        a2[3] = v62;
        v61 = a2 + 4;
      }
    }

    else
    {
      a2[2] = v60;
      v61 = a2 + 3;
    }

    a2 = TSD::StrokeArchive::_InternalSerialize(v59, v61, this);
  }

  if ((*(a1 + 24) & 2) != 0)
  {
    if (*this <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
    }

    v65 = *(a1 + 548);
    *a2 = 480;
    if (v65 > 0x7F)
    {
      a2[2] = v65 | 0x80;
      v66 = v65 >> 7;
      if (v65 >> 14)
      {
        a2 += 4;
        do
        {
          *(a2 - 1) = v66 | 0x80;
          v67 = v66 >> 7;
          ++a2;
          v68 = v66 >> 14;
          v66 >>= 7;
        }

        while (v68);
        *(a2 - 1) = v67;
      }

      else
      {
        a2[3] = v66;
        a2 += 4;
      }
    }

    else
    {
      a2[2] = v65;
      a2 += 3;
    }
  }

  v69 = *(a1 + 16);
  if ((v69 & 0x100) != 0)
  {
    if (*this <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
    }

    v70 = *(a1 + 104);
    *a2 = 490;
    v71 = *(v70 + 11);
    if (v71 > 0x7F)
    {
      a2[2] = v71 | 0x80;
      v73 = v71 >> 7;
      if (v71 >> 14)
      {
        v72 = a2 + 4;
        do
        {
          *(v72 - 1) = v73 | 0x80;
          v74 = v73 >> 7;
          ++v72;
          v75 = v73 >> 14;
          v73 >>= 7;
        }

        while (v75);
        *(v72 - 1) = v74;
      }

      else
      {
        a2[3] = v73;
        v72 = a2 + 4;
      }
    }

    else
    {
      a2[2] = v71;
      v72 = a2 + 3;
    }

    a2 = TSD::FillArchive::_InternalSerialize(v70, v72, this);
  }

  if ((v69 & 0x200) != 0)
  {
    if (*this <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
    }

    v76 = *(a1 + 112);
    *a2 = 498;
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

    a2 = TSD::StrokeArchive::_InternalSerialize(v76, v78, this);
  }

  if ((*(a1 + 24) & 4) != 0)
  {
    if (*this <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
    }

    v82 = *(a1 + 552);
    *a2 = 645;
    *(a2 + 2) = v82;
    a2 += 6;
  }

  v83 = *(a1 + 16);
  if ((v83 & 0x400) != 0)
  {
    if (*this <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
    }

    v84 = *(a1 + 120);
    *a2 = 666;
    v85 = *(v84 + 11);
    if (v85 > 0x7F)
    {
      a2[2] = v85 | 0x80;
      v87 = v85 >> 7;
      if (v85 >> 14)
      {
        v86 = a2 + 4;
        do
        {
          *(v86 - 1) = v87 | 0x80;
          v88 = v87 >> 7;
          ++v86;
          v89 = v87 >> 14;
          v87 >>= 7;
        }

        while (v89);
        *(v86 - 1) = v88;
      }

      else
      {
        a2[3] = v87;
        v86 = a2 + 4;
      }
    }

    else
    {
      a2[2] = v85;
      v86 = a2 + 3;
    }

    a2 = TSD::FillArchive::_InternalSerialize(v84, v86, this);
    if ((v83 & 0x800) == 0)
    {
LABEL_153:
      if ((v83 & 0x1000) == 0)
      {
        goto LABEL_154;
      }

      goto LABEL_177;
    }
  }

  else if ((v83 & 0x800) == 0)
  {
    goto LABEL_153;
  }

  if (*this <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
  }

  v90 = *(a1 + 128);
  *a2 = 674;
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

  a2 = TSD::StrokeArchive::_InternalSerialize(v90, v92, this);
  if ((v83 & 0x1000) == 0)
  {
LABEL_154:
    if ((v83 & 0x2000) == 0)
    {
      goto LABEL_155;
    }

    goto LABEL_187;
  }

LABEL_177:
  if (*this <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
  }

  v96 = *(a1 + 136);
  *a2 = 706;
  v97 = *(v96 + 5);
  if (v97 > 0x7F)
  {
    a2[2] = v97 | 0x80;
    v99 = v97 >> 7;
    if (v97 >> 14)
    {
      v98 = a2 + 4;
      do
      {
        *(v98 - 1) = v99 | 0x80;
        v100 = v99 >> 7;
        ++v98;
        v101 = v99 >> 14;
        v99 >>= 7;
      }

      while (v101);
      *(v98 - 1) = v100;
    }

    else
    {
      a2[3] = v99;
      v98 = a2 + 4;
    }
  }

  else
  {
    a2[2] = v97;
    v98 = a2 + 3;
  }

  a2 = TSD::StrokeArchive::_InternalSerialize(v96, v98, this);
  if ((v83 & 0x2000) == 0)
  {
LABEL_155:
    if ((v83 & 0x4000) == 0)
    {
      goto LABEL_207;
    }

    goto LABEL_197;
  }

LABEL_187:
  if (*this <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
  }

  v102 = *(a1 + 144);
  *a2 = 714;
  v103 = *(v102 + 11);
  if (v103 > 0x7F)
  {
    a2[2] = v103 | 0x80;
    v105 = v103 >> 7;
    if (v103 >> 14)
    {
      v104 = a2 + 4;
      do
      {
        *(v104 - 1) = v105 | 0x80;
        v106 = v105 >> 7;
        ++v104;
        v107 = v105 >> 14;
        v105 >>= 7;
      }

      while (v107);
      *(v104 - 1) = v106;
    }

    else
    {
      a2[3] = v105;
      v104 = a2 + 4;
    }
  }

  else
  {
    a2[2] = v103;
    v104 = a2 + 3;
  }

  a2 = TSD::FillArchive::_InternalSerialize(v102, v104, this);
  if ((v83 & 0x4000) != 0)
  {
LABEL_197:
    if (*this <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
    }

    v108 = *(a1 + 152);
    *a2 = 722;
    v109 = *(v108 + 5);
    if (v109 > 0x7F)
    {
      a2[2] = v109 | 0x80;
      v111 = v109 >> 7;
      if (v109 >> 14)
      {
        v110 = a2 + 4;
        do
        {
          *(v110 - 1) = v111 | 0x80;
          v112 = v111 >> 7;
          ++v110;
          v113 = v111 >> 14;
          v111 >>= 7;
        }

        while (v113);
        *(v110 - 1) = v112;
      }

      else
      {
        a2[3] = v111;
        v110 = a2 + 4;
      }
    }

    else
    {
      a2[2] = v109;
      v110 = a2 + 3;
    }

    a2 = TSD::StrokeArchive::_InternalSerialize(v108, v110, this);
  }

LABEL_207:
  v114 = *(a1 + 24);
  if ((v114 & 8) != 0)
  {
    if (*this <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
    }

    v115 = *(a1 + 556);
    *a2 = 741;
    *(a2 + 2) = v115;
    a2 += 6;
  }

  if ((v114 & 0x10) != 0)
  {
    if (*this <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
    }

    v116 = *(a1 + 560);
    *a2 = 752;
    if (v116 > 0x7F)
    {
      a2[2] = v116 | 0x80;
      v117 = v116 >> 7;
      if (v116 >> 14)
      {
        a2 += 4;
        do
        {
          *(a2 - 1) = v117 | 0x80;
          v118 = v117 >> 7;
          ++a2;
          v119 = v117 >> 14;
          v117 >>= 7;
        }

        while (v119);
        *(a2 - 1) = v118;
      }

      else
      {
        a2[3] = v117;
        a2 += 4;
      }
    }

    else
    {
      a2[2] = v116;
      a2 += 3;
    }
  }

  if ((*(a1 + 17) & 0x80) != 0)
  {
    if (*this <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
    }

    v120 = *(a1 + 160);
    *a2 = 914;
    v121 = *(v120 + 11);
    if (v121 > 0x7F)
    {
      a2[2] = v121 | 0x80;
      v123 = v121 >> 7;
      if (v121 >> 14)
      {
        v122 = a2 + 4;
        do
        {
          *(v122 - 1) = v123 | 0x80;
          v124 = v123 >> 7;
          ++v122;
          v125 = v123 >> 14;
          v123 >>= 7;
        }

        while (v125);
        *(v122 - 1) = v124;
      }

      else
      {
        a2[3] = v123;
        v122 = a2 + 4;
      }
    }

    else
    {
      a2[2] = v121;
      v122 = a2 + 3;
    }

    a2 = TSD::FillArchive::_InternalSerialize(v120, v122, this);
  }

  v126 = *(a1 + 24);
  if ((v126 & 0x20) != 0)
  {
    if (*this <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
    }

    v127 = *(a1 + 564);
    *a2 = 928;
    if (v127 <= 0x7F)
    {
      a2[2] = v127;
      a2 += 3;
      if ((v126 & 0x200000) == 0)
      {
        goto LABEL_244;
      }

      goto LABEL_241;
    }

    a2[2] = v127 | 0x80;
    v128 = v127 >> 7;
    if (v127 >> 14)
    {
      a2 += 4;
      do
      {
        *(a2 - 1) = v128 | 0x80;
        v135 = v128 >> 7;
        ++a2;
        v136 = v128 >> 14;
        v128 >>= 7;
      }

      while (v136);
      *(a2 - 1) = v135;
      if ((v126 & 0x200000) == 0)
      {
        goto LABEL_244;
      }

      goto LABEL_241;
    }

    a2[3] = v128;
    a2 += 4;
  }

  if ((v126 & 0x200000) == 0)
  {
    goto LABEL_244;
  }

LABEL_241:
  if (*this <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
  }

  v129 = *(a1 + 607);
  *a2 = 992;
  a2[2] = v129;
  a2 += 3;
LABEL_244:
  v130 = *(a1 + 16);
  if ((v130 & 0x10000) != 0)
  {
    if (*this <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
    }

    v131 = *(a1 + 168);
    *a2 = 1010;
    v132 = *(v131 + 11);
    if (v132 > 0x7F)
    {
      a2[2] = v132 | 0x80;
      v134 = v132 >> 7;
      if (v132 >> 14)
      {
        v133 = a2 + 4;
        do
        {
          *(v133 - 1) = v134 | 0x80;
          v137 = v134 >> 7;
          ++v133;
          v138 = v134 >> 14;
          v134 >>= 7;
        }

        while (v138);
        *(v133 - 1) = v137;
      }

      else
      {
        a2[3] = v134;
        v133 = a2 + 4;
      }
    }

    else
    {
      a2[2] = v132;
      v133 = a2 + 3;
    }

    a2 = TSD::FillArchive::_InternalSerialize(v131, v133, this);
    if ((v130 & 0x20000) == 0)
    {
LABEL_246:
      if ((v130 & 0x40000) == 0)
      {
        goto LABEL_247;
      }

      goto LABEL_279;
    }
  }

  else if ((v130 & 0x20000) == 0)
  {
    goto LABEL_246;
  }

  if (*this <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
  }

  v139 = *(a1 + 176);
  *a2 = 1698;
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

  a2 = TSD::ShadowArchive::_InternalSerialize(v139, v141, this);
  if ((v130 & 0x40000) == 0)
  {
LABEL_247:
    if ((v130 & 0x80000) == 0)
    {
      goto LABEL_248;
    }

    goto LABEL_289;
  }

LABEL_279:
  if (*this <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
  }

  v145 = *(a1 + 184);
  *a2 = 1706;
  v146 = *(v145 + 5);
  if (v146 > 0x7F)
  {
    a2[2] = v146 | 0x80;
    v148 = v146 >> 7;
    if (v146 >> 14)
    {
      v147 = a2 + 4;
      do
      {
        *(v147 - 1) = v148 | 0x80;
        v149 = v148 >> 7;
        ++v147;
        v150 = v148 >> 14;
        v148 >>= 7;
      }

      while (v150);
      *(v147 - 1) = v149;
    }

    else
    {
      a2[3] = v148;
      v147 = a2 + 4;
    }
  }

  else
  {
    a2[2] = v146;
    v147 = a2 + 3;
  }

  a2 = TSD::ShadowArchive::_InternalSerialize(v145, v147, this);
  if ((v130 & 0x80000) == 0)
  {
LABEL_248:
    if ((v130 & 0x100000) == 0)
    {
      goto LABEL_249;
    }

    goto LABEL_299;
  }

LABEL_289:
  if (*this <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
  }

  v151 = *(a1 + 192);
  *a2 = 1714;
  v152 = *(v151 + 5);
  if (v152 > 0x7F)
  {
    a2[2] = v152 | 0x80;
    v154 = v152 >> 7;
    if (v152 >> 14)
    {
      v153 = a2 + 4;
      do
      {
        *(v153 - 1) = v154 | 0x80;
        v155 = v154 >> 7;
        ++v153;
        v156 = v154 >> 14;
        v154 >>= 7;
      }

      while (v156);
      *(v153 - 1) = v155;
    }

    else
    {
      a2[3] = v154;
      v153 = a2 + 4;
    }
  }

  else
  {
    a2[2] = v152;
    v153 = a2 + 3;
  }

  a2 = TSD::ShadowArchive::_InternalSerialize(v151, v153, this);
  if ((v130 & 0x100000) == 0)
  {
LABEL_249:
    if ((v130 & 0x200000) == 0)
    {
      goto LABEL_250;
    }

    goto LABEL_309;
  }

LABEL_299:
  if (*this <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
  }

  v157 = *(a1 + 200);
  *a2 = 1722;
  v158 = *(v157 + 5);
  if (v158 > 0x7F)
  {
    a2[2] = v158 | 0x80;
    v160 = v158 >> 7;
    if (v158 >> 14)
    {
      v159 = a2 + 4;
      do
      {
        *(v159 - 1) = v160 | 0x80;
        v161 = v160 >> 7;
        ++v159;
        v162 = v160 >> 14;
        v160 >>= 7;
      }

      while (v162);
      *(v159 - 1) = v161;
    }

    else
    {
      a2[3] = v160;
      v159 = a2 + 4;
    }
  }

  else
  {
    a2[2] = v158;
    v159 = a2 + 3;
  }

  a2 = TSD::ShadowArchive::_InternalSerialize(v157, v159, this);
  if ((v130 & 0x200000) == 0)
  {
LABEL_250:
    if ((v130 & 0x400000) == 0)
    {
      goto LABEL_251;
    }

    goto LABEL_319;
  }

LABEL_309:
  if (*this <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
  }

  v163 = *(a1 + 208);
  *a2 = 1730;
  v164 = *(v163 + 5);
  if (v164 > 0x7F)
  {
    a2[2] = v164 | 0x80;
    v166 = v164 >> 7;
    if (v164 >> 14)
    {
      v165 = a2 + 4;
      do
      {
        *(v165 - 1) = v166 | 0x80;
        v167 = v166 >> 7;
        ++v165;
        v168 = v166 >> 14;
        v166 >>= 7;
      }

      while (v168);
      *(v165 - 1) = v167;
    }

    else
    {
      a2[3] = v166;
      v165 = a2 + 4;
    }
  }

  else
  {
    a2[2] = v164;
    v165 = a2 + 3;
  }

  a2 = TSD::ShadowArchive::_InternalSerialize(v163, v165, this);
  if ((v130 & 0x400000) == 0)
  {
LABEL_251:
    if ((v130 & 0x800000) == 0)
    {
      goto LABEL_252;
    }

    goto LABEL_329;
  }

LABEL_319:
  if (*this <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
  }

  v169 = *(a1 + 216);
  *a2 = 1738;
  v170 = *(v169 + 5);
  if (v170 > 0x7F)
  {
    a2[2] = v170 | 0x80;
    v172 = v170 >> 7;
    if (v170 >> 14)
    {
      v171 = a2 + 4;
      do
      {
        *(v171 - 1) = v172 | 0x80;
        v173 = v172 >> 7;
        ++v171;
        v174 = v172 >> 14;
        v172 >>= 7;
      }

      while (v174);
      *(v171 - 1) = v173;
    }

    else
    {
      a2[3] = v172;
      v171 = a2 + 4;
    }
  }

  else
  {
    a2[2] = v170;
    v171 = a2 + 3;
  }

  a2 = TSD::ShadowArchive::_InternalSerialize(v169, v171, this);
  if ((v130 & 0x800000) == 0)
  {
LABEL_252:
    if ((v130 & 0x1000000) == 0)
    {
      goto LABEL_253;
    }

    goto LABEL_339;
  }

LABEL_329:
  if (*this <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
  }

  v175 = *(a1 + 224);
  *a2 = 1746;
  v176 = *(v175 + 5);
  if (v176 > 0x7F)
  {
    a2[2] = v176 | 0x80;
    v178 = v176 >> 7;
    if (v176 >> 14)
    {
      v177 = a2 + 4;
      do
      {
        *(v177 - 1) = v178 | 0x80;
        v179 = v178 >> 7;
        ++v177;
        v180 = v178 >> 14;
        v178 >>= 7;
      }

      while (v180);
      *(v177 - 1) = v179;
    }

    else
    {
      a2[3] = v178;
      v177 = a2 + 4;
    }
  }

  else
  {
    a2[2] = v176;
    v177 = a2 + 3;
  }

  a2 = TSD::ShadowArchive::_InternalSerialize(v175, v177, this);
  if ((v130 & 0x1000000) == 0)
  {
LABEL_253:
    if ((v130 & 0x2000000) == 0)
    {
      goto LABEL_359;
    }

    goto LABEL_349;
  }

LABEL_339:
  if (*this <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
  }

  v181 = *(a1 + 232);
  *a2 = 1754;
  v182 = *(v181 + 5);
  if (v182 > 0x7F)
  {
    a2[2] = v182 | 0x80;
    v184 = v182 >> 7;
    if (v182 >> 14)
    {
      v183 = a2 + 4;
      do
      {
        *(v183 - 1) = v184 | 0x80;
        v185 = v184 >> 7;
        ++v183;
        v186 = v184 >> 14;
        v184 >>= 7;
      }

      while (v186);
      *(v183 - 1) = v185;
    }

    else
    {
      a2[3] = v184;
      v183 = a2 + 4;
    }
  }

  else
  {
    a2[2] = v182;
    v183 = a2 + 3;
  }

  a2 = TSD::ShadowArchive::_InternalSerialize(v181, v183, this);
  if ((v130 & 0x2000000) != 0)
  {
LABEL_349:
    if (*this <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
    }

    v187 = *(a1 + 240);
    *a2 = 1762;
    v188 = *(v187 + 5);
    if (v188 > 0x7F)
    {
      a2[2] = v188 | 0x80;
      v190 = v188 >> 7;
      if (v188 >> 14)
      {
        v189 = a2 + 4;
        do
        {
          *(v189 - 1) = v190 | 0x80;
          v191 = v190 >> 7;
          ++v189;
          v192 = v190 >> 14;
          v190 >>= 7;
        }

        while (v192);
        *(v189 - 1) = v191;
      }

      else
      {
        a2[3] = v190;
        v189 = a2 + 4;
      }
    }

    else
    {
      a2[2] = v188;
      v189 = a2 + 3;
    }

    a2 = TSD::ShadowArchive::_InternalSerialize(v187, v189, this);
  }

LABEL_359:
  v193 = *(a1 + 24);
  if ((v193 & 0x80) == 0)
  {
    if ((v193 & 0x100) == 0)
    {
      goto LABEL_361;
    }

LABEL_387:
    if (*this <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
    }

    v198 = *(a1 + 576);
    *a2 = 1784;
    if (v198 > 0x7F)
    {
      a2[2] = v198 | 0x80;
      v199 = v198 >> 7;
      if (v198 >> 14)
      {
        a2 += 4;
        do
        {
          *(a2 - 1) = v199 | 0x80;
          v200 = v199 >> 7;
          ++a2;
          v201 = v199 >> 14;
          v199 >>= 7;
        }

        while (v201);
        *(a2 - 1) = v200;
        if ((v193 & 0x200) != 0)
        {
          goto LABEL_398;
        }
      }

      else
      {
        a2[3] = v199;
        a2 += 4;
        if ((v193 & 0x200) != 0)
        {
          goto LABEL_398;
        }
      }
    }

    else
    {
      a2[2] = v198;
      a2 += 3;
      if ((v193 & 0x200) != 0)
      {
        goto LABEL_398;
      }
    }

LABEL_362:
    if ((v193 & 0x400) == 0)
    {
      goto LABEL_363;
    }

LABEL_409:
    if (*this <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
    }

    v206 = *(a1 + 584);
    *a2 = 1928;
    if (v206 > 0x7F)
    {
      a2[2] = v206 | 0x80;
      v207 = v206 >> 7;
      if (v206 >> 14)
      {
        a2 += 4;
        do
        {
          *(a2 - 1) = v207 | 0x80;
          v208 = v207 >> 7;
          ++a2;
          v209 = v207 >> 14;
          v207 >>= 7;
        }

        while (v209);
        *(a2 - 1) = v208;
        if ((v193 & 0x800) != 0)
        {
          goto LABEL_420;
        }
      }

      else
      {
        a2[3] = v207;
        a2 += 4;
        if ((v193 & 0x800) != 0)
        {
          goto LABEL_420;
        }
      }
    }

    else
    {
      a2[2] = v206;
      a2 += 3;
      if ((v193 & 0x800) != 0)
      {
        goto LABEL_420;
      }
    }

LABEL_364:
    if ((v193 & 0x1000) == 0)
    {
      goto LABEL_365;
    }

LABEL_431:
    if (*this <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
    }

    v214 = *(a1 + 592);
    *a2 = 1944;
    if (v214 > 0x7F)
    {
      a2[2] = v214 | 0x80;
      v215 = v214 >> 7;
      if (v214 >> 14)
      {
        a2 += 4;
        do
        {
          *(a2 - 1) = v215 | 0x80;
          v216 = v215 >> 7;
          ++a2;
          v217 = v215 >> 14;
          v215 >>= 7;
        }

        while (v217);
        *(a2 - 1) = v216;
        if ((v193 & 0x2000) != 0)
        {
          goto LABEL_442;
        }
      }

      else
      {
        a2[3] = v215;
        a2 += 4;
        if ((v193 & 0x2000) != 0)
        {
          goto LABEL_442;
        }
      }
    }

    else
    {
      a2[2] = v214;
      a2 += 3;
      if ((v193 & 0x2000) != 0)
      {
        goto LABEL_442;
      }
    }

LABEL_366:
    if ((v193 & 0x800000) == 0)
    {
      goto LABEL_367;
    }

    goto LABEL_445;
  }

  if (*this <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
  }

  v194 = *(a1 + 572);
  *a2 = 1776;
  if (v194 > 0x7F)
  {
    a2[2] = v194 | 0x80;
    v195 = v194 >> 7;
    if (v194 >> 14)
    {
      a2 += 4;
      do
      {
        *(a2 - 1) = v195 | 0x80;
        v196 = v195 >> 7;
        ++a2;
        v197 = v195 >> 14;
        v195 >>= 7;
      }

      while (v197);
      *(a2 - 1) = v196;
      if ((v193 & 0x100) != 0)
      {
        goto LABEL_387;
      }
    }

    else
    {
      a2[3] = v195;
      a2 += 4;
      if ((v193 & 0x100) != 0)
      {
        goto LABEL_387;
      }
    }
  }

  else
  {
    a2[2] = v194;
    a2 += 3;
    if ((v193 & 0x100) != 0)
    {
      goto LABEL_387;
    }
  }

LABEL_361:
  if ((v193 & 0x200) == 0)
  {
    goto LABEL_362;
  }

LABEL_398:
  if (*this <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
  }

  v202 = *(a1 + 580);
  *a2 = 1920;
  if (v202 > 0x7F)
  {
    a2[2] = v202 | 0x80;
    v203 = v202 >> 7;
    if (v202 >> 14)
    {
      a2 += 4;
      do
      {
        *(a2 - 1) = v203 | 0x80;
        v204 = v203 >> 7;
        ++a2;
        v205 = v203 >> 14;
        v203 >>= 7;
      }

      while (v205);
      *(a2 - 1) = v204;
      if ((v193 & 0x400) != 0)
      {
        goto LABEL_409;
      }
    }

    else
    {
      a2[3] = v203;
      a2 += 4;
      if ((v193 & 0x400) != 0)
      {
        goto LABEL_409;
      }
    }
  }

  else
  {
    a2[2] = v202;
    a2 += 3;
    if ((v193 & 0x400) != 0)
    {
      goto LABEL_409;
    }
  }

LABEL_363:
  if ((v193 & 0x800) == 0)
  {
    goto LABEL_364;
  }

LABEL_420:
  if (*this <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
  }

  v210 = *(a1 + 588);
  *a2 = 1936;
  if (v210 > 0x7F)
  {
    a2[2] = v210 | 0x80;
    v211 = v210 >> 7;
    if (v210 >> 14)
    {
      a2 += 4;
      do
      {
        *(a2 - 1) = v211 | 0x80;
        v212 = v211 >> 7;
        ++a2;
        v213 = v211 >> 14;
        v211 >>= 7;
      }

      while (v213);
      *(a2 - 1) = v212;
      if ((v193 & 0x1000) != 0)
      {
        goto LABEL_431;
      }
    }

    else
    {
      a2[3] = v211;
      a2 += 4;
      if ((v193 & 0x1000) != 0)
      {
        goto LABEL_431;
      }
    }
  }

  else
  {
    a2[2] = v210;
    a2 += 3;
    if ((v193 & 0x1000) != 0)
    {
      goto LABEL_431;
    }
  }

LABEL_365:
  if ((v193 & 0x2000) == 0)
  {
    goto LABEL_366;
  }

LABEL_442:
  if (*this <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
  }

  v218 = *(a1 + 596);
  *a2 = 1957;
  *(a2 + 2) = v218;
  a2 += 6;
  if ((v193 & 0x800000) == 0)
  {
LABEL_367:
    if ((v193 & 0x1000000) == 0)
    {
      goto LABEL_368;
    }

    goto LABEL_448;
  }

LABEL_445:
  if (*this <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
  }

  v219 = *(a1 + 609);
  *a2 = 1960;
  a2[2] = v219;
  a2 += 3;
  if ((v193 & 0x1000000) == 0)
  {
LABEL_368:
    if ((v193 & 0x4000) == 0)
    {
      goto LABEL_369;
    }

    goto LABEL_451;
  }

LABEL_448:
  if (*this <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
  }

  v220 = *(a1 + 610);
  *a2 = 1968;
  a2[2] = v220;
  a2 += 3;
  if ((v193 & 0x4000) == 0)
  {
LABEL_369:
    if ((v193 & 0x8000) == 0)
    {
      goto LABEL_370;
    }

    goto LABEL_454;
  }

LABEL_451:
  if (*this <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
  }

  v221 = *(a1 + 600);
  *a2 = 1976;
  a2[2] = v221;
  a2 += 3;
  if ((v193 & 0x8000) == 0)
  {
LABEL_370:
    if ((v193 & 0x10000) == 0)
    {
      goto LABEL_371;
    }

    goto LABEL_457;
  }

LABEL_454:
  if (*this <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
  }

  v222 = *(a1 + 601);
  *a2 = 1984;
  a2[2] = v222;
  a2 += 3;
  if ((v193 & 0x10000) == 0)
  {
LABEL_371:
    if ((v193 & 0x20000) == 0)
    {
      goto LABEL_372;
    }

    goto LABEL_460;
  }

LABEL_457:
  if (*this <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
  }

  v223 = *(a1 + 602);
  *a2 = 1992;
  a2[2] = v223;
  a2 += 3;
  if ((v193 & 0x20000) == 0)
  {
LABEL_372:
    if ((v193 & 0x40000) == 0)
    {
      goto LABEL_373;
    }

    goto LABEL_463;
  }

LABEL_460:
  if (*this <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
  }

  v224 = *(a1 + 603);
  *a2 = 2000;
  a2[2] = v224;
  a2 += 3;
  if ((v193 & 0x40000) == 0)
  {
LABEL_373:
    if ((v193 & 0x80000) == 0)
    {
      goto LABEL_374;
    }

    goto LABEL_466;
  }

LABEL_463:
  if (*this <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
  }

  v225 = *(a1 + 604);
  *a2 = 2008;
  a2[2] = v225;
  a2 += 3;
  if ((v193 & 0x80000) == 0)
  {
LABEL_374:
    if ((v193 & 0x100000) == 0)
    {
      goto LABEL_472;
    }

    goto LABEL_469;
  }

LABEL_466:
  if (*this <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
  }

  v226 = *(a1 + 605);
  *a2 = 2016;
  a2[2] = v226;
  a2 += 3;
  if ((v193 & 0x100000) != 0)
  {
LABEL_469:
    if (*this <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
    }

    v227 = *(a1 + 606);
    *a2 = 2024;
    a2[2] = v227;
    a2 += 3;
  }

LABEL_472:
  v228 = *(a1 + 16);
  if ((v228 & 0x4000000) != 0)
  {
    if (*this <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
    }

    v229 = *(a1 + 248);
    *a2 = 2194;
    v230 = *(v229 + 11);
    if (v230 > 0x7F)
    {
      a2[2] = v230 | 0x80;
      v232 = v230 >> 7;
      if (v230 >> 14)
      {
        v231 = a2 + 4;
        do
        {
          *(v231 - 1) = v232 | 0x80;
          v233 = v232 >> 7;
          ++v231;
          v234 = v232 >> 14;
          v232 >>= 7;
        }

        while (v234);
        *(v231 - 1) = v233;
      }

      else
      {
        a2[3] = v232;
        v231 = a2 + 4;
      }
    }

    else
    {
      a2[2] = v230;
      v231 = a2 + 3;
    }

    a2 = TSD::FillArchive::_InternalSerialize(v229, v231, this);
    if ((v228 & 0x8000000) == 0)
    {
LABEL_474:
      if ((v228 & 0x10000000) == 0)
      {
        goto LABEL_475;
      }

      goto LABEL_498;
    }
  }

  else if ((v228 & 0x8000000) == 0)
  {
    goto LABEL_474;
  }

  if (*this <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
  }

  v235 = *(a1 + 256);
  *a2 = 2202;
  v236 = *(v235 + 11);
  if (v236 > 0x7F)
  {
    a2[2] = v236 | 0x80;
    v238 = v236 >> 7;
    if (v236 >> 14)
    {
      v237 = a2 + 4;
      do
      {
        *(v237 - 1) = v238 | 0x80;
        v239 = v238 >> 7;
        ++v237;
        v240 = v238 >> 14;
        v238 >>= 7;
      }

      while (v240);
      *(v237 - 1) = v239;
    }

    else
    {
      a2[3] = v238;
      v237 = a2 + 4;
    }
  }

  else
  {
    a2[2] = v236;
    v237 = a2 + 3;
  }

  a2 = TSD::FillArchive::_InternalSerialize(v235, v237, this);
  if ((v228 & 0x10000000) == 0)
  {
LABEL_475:
    if ((v228 & 0x20000000) == 0)
    {
      goto LABEL_476;
    }

    goto LABEL_508;
  }

LABEL_498:
  if (*this <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
  }

  v241 = *(a1 + 264);
  *a2 = 2210;
  v242 = *(v241 + 5);
  if (v242 > 0x7F)
  {
    a2[2] = v242 | 0x80;
    v244 = v242 >> 7;
    if (v242 >> 14)
    {
      v243 = a2 + 4;
      do
      {
        *(v243 - 1) = v244 | 0x80;
        v245 = v244 >> 7;
        ++v243;
        v246 = v244 >> 14;
        v244 >>= 7;
      }

      while (v246);
      *(v243 - 1) = v245;
    }

    else
    {
      a2[3] = v244;
      v243 = a2 + 4;
    }
  }

  else
  {
    a2[2] = v242;
    v243 = a2 + 3;
  }

  a2 = TSD::StrokeArchive::_InternalSerialize(v241, v243, this);
  if ((v228 & 0x20000000) == 0)
  {
LABEL_476:
    if ((v228 & 0x40000000) == 0)
    {
      goto LABEL_528;
    }

    goto LABEL_518;
  }

LABEL_508:
  if (*this <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
  }

  v247 = *(a1 + 272);
  *a2 = 2218;
  v248 = *(v247 + 5);
  if (v248 > 0x7F)
  {
    a2[2] = v248 | 0x80;
    v250 = v248 >> 7;
    if (v248 >> 14)
    {
      v249 = a2 + 4;
      do
      {
        *(v249 - 1) = v250 | 0x80;
        v251 = v250 >> 7;
        ++v249;
        v252 = v250 >> 14;
        v250 >>= 7;
      }

      while (v252);
      *(v249 - 1) = v251;
    }

    else
    {
      a2[3] = v250;
      v249 = a2 + 4;
    }
  }

  else
  {
    a2[2] = v248;
    v249 = a2 + 3;
  }

  a2 = TSD::StrokeArchive::_InternalSerialize(v247, v249, this);
  if ((v228 & 0x40000000) != 0)
  {
LABEL_518:
    if (*this <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
    }

    v253 = *(a1 + 280);
    *a2 = 2226;
    v254 = *(v253 + 5);
    if (v254 > 0x7F)
    {
      a2[2] = v254 | 0x80;
      v256 = v254 >> 7;
      if (v254 >> 14)
      {
        v255 = a2 + 4;
        do
        {
          *(v255 - 1) = v256 | 0x80;
          v257 = v256 >> 7;
          ++v255;
          v258 = v256 >> 14;
          v256 >>= 7;
        }

        while (v258);
        *(v255 - 1) = v257;
      }

      else
      {
        a2[3] = v256;
        v255 = a2 + 4;
      }
    }

    else
    {
      a2[2] = v254;
      v255 = a2 + 3;
    }

    a2 = TSD::StrokeArchive::_InternalSerialize(v253, v255, this);
  }

LABEL_528:
  v259 = *(a1 + 24);
  if ((v259 & 0x2000000) != 0)
  {
    if (*this <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
    }

    v260 = *(a1 + 612);
    *a2 = 2237;
    *(a2 + 2) = v260;
    a2 += 6;
  }

  if ((v259 & 0x4000000) != 0)
  {
    if (*this <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
    }

    v261 = *(a1 + 616);
    *a2 = 2245;
    *(a2 + 2) = v261;
    a2 += 6;
  }

  if ((*(a1 + 16) & 0x80000000) != 0)
  {
    if (*this <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
    }

    v262 = *(a1 + 288);
    *a2 = 2250;
    v263 = *(v262 + 11);
    if (v263 > 0x7F)
    {
      a2[2] = v263 | 0x80;
      v265 = v263 >> 7;
      if (v263 >> 14)
      {
        v264 = a2 + 4;
        do
        {
          *(v264 - 1) = v265 | 0x80;
          v266 = v265 >> 7;
          ++v264;
          v267 = v265 >> 14;
          v265 >>= 7;
        }

        while (v267);
        *(v264 - 1) = v266;
      }

      else
      {
        a2[3] = v265;
        v264 = a2 + 4;
      }
    }

    else
    {
      a2[2] = v263;
      v264 = a2 + 3;
    }

    a2 = TSD::FillArchive::_InternalSerialize(v262, v264, this);
  }

  v268 = *(a1 + 20);
  if (v268)
  {
    if (*this <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
    }

    v269 = *(a1 + 296);
    *a2 = 2258;
    v270 = *(v269 + 11);
    if (v270 > 0x7F)
    {
      a2[2] = v270 | 0x80;
      v272 = v270 >> 7;
      if (v270 >> 14)
      {
        v271 = a2 + 4;
        do
        {
          *(v271 - 1) = v272 | 0x80;
          v273 = v272 >> 7;
          ++v271;
          v274 = v272 >> 14;
          v272 >>= 7;
        }

        while (v274);
        *(v271 - 1) = v273;
      }

      else
      {
        a2[3] = v272;
        v271 = a2 + 4;
      }
    }

    else
    {
      a2[2] = v270;
      v271 = a2 + 3;
    }

    a2 = TSD::FillArchive::_InternalSerialize(v269, v271, this);
    if ((v268 & 2) == 0)
    {
LABEL_549:
      if ((v268 & 4) == 0)
      {
        goto LABEL_581;
      }

      goto LABEL_571;
    }
  }

  else if ((v268 & 2) == 0)
  {
    goto LABEL_549;
  }

  if (*this <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
  }

  v275 = *(a1 + 304);
  *a2 = 2266;
  v276 = *(v275 + 5);
  if (v276 > 0x7F)
  {
    a2[2] = v276 | 0x80;
    v278 = v276 >> 7;
    if (v276 >> 14)
    {
      v277 = a2 + 4;
      do
      {
        *(v277 - 1) = v278 | 0x80;
        v279 = v278 >> 7;
        ++v277;
        v280 = v278 >> 14;
        v278 >>= 7;
      }

      while (v280);
      *(v277 - 1) = v279;
    }

    else
    {
      a2[3] = v278;
      v277 = a2 + 4;
    }
  }

  else
  {
    a2[2] = v276;
    v277 = a2 + 3;
  }

  a2 = TSD::StrokeArchive::_InternalSerialize(v275, v277, this);
  if ((v268 & 4) != 0)
  {
LABEL_571:
    if (*this <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
    }

    v281 = *(a1 + 312);
    *a2 = 2274;
    v282 = *(v281 + 5);
    if (v282 > 0x7F)
    {
      a2[2] = v282 | 0x80;
      v284 = v282 >> 7;
      if (v282 >> 14)
      {
        v283 = a2 + 4;
        do
        {
          *(v283 - 1) = v284 | 0x80;
          v285 = v284 >> 7;
          ++v283;
          v286 = v284 >> 14;
          v284 >>= 7;
        }

        while (v286);
        *(v283 - 1) = v285;
      }

      else
      {
        a2[3] = v284;
        v283 = a2 + 4;
      }
    }

    else
    {
      a2[2] = v282;
      v283 = a2 + 3;
    }

    a2 = TSD::StrokeArchive::_InternalSerialize(v281, v283, this);
  }

LABEL_581:
  v287 = *(a1 + 24);
  if ((v287 & 0x8000000) != 0)
  {
    if (*this <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
    }

    v289 = *(a1 + 620);
    *a2 = 2280;
    if (v289 > 0x7F)
    {
      a2[2] = v289 | 0x80;
      v290 = v289 >> 7;
      if (v289 >> 14)
      {
        a2 += 4;
        do
        {
          *(a2 - 1) = v290 | 0x80;
          v292 = v290 >> 7;
          ++a2;
          v293 = v290 >> 14;
          v290 >>= 7;
        }

        while (v293);
        *(a2 - 1) = v292;
        if ((v287 & 0x10000000) != 0)
        {
          goto LABEL_603;
        }
      }

      else
      {
        a2[3] = v290;
        a2 += 4;
        if ((v287 & 0x10000000) != 0)
        {
          goto LABEL_603;
        }
      }
    }

    else
    {
      a2[2] = v289;
      a2 += 3;
      if ((v287 & 0x10000000) != 0)
      {
        goto LABEL_603;
      }
    }

LABEL_583:
    if ((v287 & 0x20000000) == 0)
    {
      goto LABEL_584;
    }

LABEL_614:
    if (*this <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
    }

    v298 = *(a1 + 628);
    *a2 = 2296;
    if (v298 > 0x7F)
    {
      a2[2] = v298 | 0x80;
      v299 = v298 >> 7;
      if (v298 >> 14)
      {
        a2 += 4;
        do
        {
          *(a2 - 1) = v299 | 0x80;
          v300 = v299 >> 7;
          ++a2;
          v301 = v299 >> 14;
          v299 >>= 7;
        }

        while (v301);
        *(a2 - 1) = v300;
        if ((v287 & 0x40000000) != 0)
        {
          goto LABEL_625;
        }
      }

      else
      {
        a2[3] = v299;
        a2 += 4;
        if ((v287 & 0x40000000) != 0)
        {
          goto LABEL_625;
        }
      }
    }

    else
    {
      a2[2] = v298;
      a2 += 3;
      if ((v287 & 0x40000000) != 0)
      {
        goto LABEL_625;
      }
    }

LABEL_585:
    if ((v287 & 0x80000000) == 0)
    {
      goto LABEL_640;
    }

    goto LABEL_586;
  }

  if ((v287 & 0x10000000) == 0)
  {
    goto LABEL_583;
  }

LABEL_603:
  if (*this <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
  }

  v294 = *(a1 + 624);
  *a2 = 2288;
  if (v294 > 0x7F)
  {
    a2[2] = v294 | 0x80;
    v295 = v294 >> 7;
    if (v294 >> 14)
    {
      a2 += 4;
      do
      {
        *(a2 - 1) = v295 | 0x80;
        v296 = v295 >> 7;
        ++a2;
        v297 = v295 >> 14;
        v295 >>= 7;
      }

      while (v297);
      *(a2 - 1) = v296;
      if ((v287 & 0x20000000) != 0)
      {
        goto LABEL_614;
      }
    }

    else
    {
      a2[3] = v295;
      a2 += 4;
      if ((v287 & 0x20000000) != 0)
      {
        goto LABEL_614;
      }
    }
  }

  else
  {
    a2[2] = v294;
    a2 += 3;
    if ((v287 & 0x20000000) != 0)
    {
      goto LABEL_614;
    }
  }

LABEL_584:
  if ((v287 & 0x40000000) == 0)
  {
    goto LABEL_585;
  }

LABEL_625:
  if (*this <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
  }

  v302 = *(a1 + 632);
  *a2 = 2480;
  if (v302 > 0x7F)
  {
    a2[2] = v302 | 0x80;
    v303 = v302 >> 7;
    if (v302 >> 14)
    {
      a2 += 4;
      do
      {
        *(a2 - 1) = v303 | 0x80;
        v304 = v303 >> 7;
        ++a2;
        v305 = v303 >> 14;
        v303 >>= 7;
      }

      while (v305);
      *(a2 - 1) = v304;
      if ((v287 & 0x80000000) == 0)
      {
        goto LABEL_640;
      }
    }

    else
    {
      a2[3] = v303;
      a2 += 4;
      if ((v287 & 0x80000000) == 0)
      {
        goto LABEL_640;
      }
    }
  }

  else
  {
    a2[2] = v302;
    a2 += 3;
    if ((v287 & 0x80000000) == 0)
    {
      goto LABEL_640;
    }
  }

LABEL_586:
  if (*this <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
  }

  v288 = *(a1 + 636);
  *a2 = 2488;
  if (v288 > 0x7F)
  {
    a2[2] = v288 | 0x80;
    v291 = v288 >> 7;
    if (v288 >> 14)
    {
      a2 += 4;
      do
      {
        *(a2 - 1) = v291 | 0x80;
        v306 = v291 >> 7;
        ++a2;
        v307 = v291 >> 14;
        v291 >>= 7;
      }

      while (v307);
      *(a2 - 1) = v306;
    }

    else
    {
      a2[3] = v291;
      a2 += 4;
    }
  }

  else
  {
    a2[2] = v288;
    a2 += 3;
  }

LABEL_640:
  v308 = *(a1 + 28);
  if (v308)
  {
    if (*this <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
    }

    v310 = *(a1 + 640);
    *a2 = 2504;
    if (v310 > 0x7F)
    {
      a2[2] = v310 | 0x80;
      v312 = v310 >> 7;
      if (v310 >> 14)
      {
        a2 += 4;
        do
        {
          *(a2 - 1) = v312 | 0x80;
          v315 = v312 >> 7;
          ++a2;
          v316 = v312 >> 14;
          v312 >>= 7;
        }

        while (v316);
        *(a2 - 1) = v315;
        if ((v308 & 2) != 0)
        {
          goto LABEL_665;
        }
      }

      else
      {
        a2[3] = v312;
        a2 += 4;
        if ((v308 & 2) != 0)
        {
          goto LABEL_665;
        }
      }
    }

    else
    {
      a2[2] = v310;
      a2 += 3;
      if ((v308 & 2) != 0)
      {
        goto LABEL_665;
      }
    }

LABEL_642:
    if ((v308 & 4) == 0)
    {
      goto LABEL_643;
    }

LABEL_676:
    if (*this <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
    }

    v321 = *(a1 + 648);
    *a2 = 2520;
    if (v321 > 0x7F)
    {
      a2[2] = v321 | 0x80;
      v322 = v321 >> 7;
      if (v321 >> 14)
      {
        a2 += 4;
        do
        {
          *(a2 - 1) = v322 | 0x80;
          v323 = v322 >> 7;
          ++a2;
          v324 = v322 >> 14;
          v322 >>= 7;
        }

        while (v324);
        *(a2 - 1) = v323;
        if ((v308 & 8) != 0)
        {
          goto LABEL_687;
        }
      }

      else
      {
        a2[3] = v322;
        a2 += 4;
        if ((v308 & 8) != 0)
        {
          goto LABEL_687;
        }
      }
    }

    else
    {
      a2[2] = v321;
      a2 += 3;
      if ((v308 & 8) != 0)
      {
        goto LABEL_687;
      }
    }

LABEL_644:
    if ((v308 & 0x10) == 0)
    {
      goto LABEL_698;
    }

    goto LABEL_645;
  }

  if ((v308 & 2) == 0)
  {
    goto LABEL_642;
  }

LABEL_665:
  if (*this <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
  }

  v317 = *(a1 + 644);
  *a2 = 2512;
  if (v317 > 0x7F)
  {
    a2[2] = v317 | 0x80;
    v318 = v317 >> 7;
    if (v317 >> 14)
    {
      a2 += 4;
      do
      {
        *(a2 - 1) = v318 | 0x80;
        v319 = v318 >> 7;
        ++a2;
        v320 = v318 >> 14;
        v318 >>= 7;
      }

      while (v320);
      *(a2 - 1) = v319;
      if ((v308 & 4) != 0)
      {
        goto LABEL_676;
      }
    }

    else
    {
      a2[3] = v318;
      a2 += 4;
      if ((v308 & 4) != 0)
      {
        goto LABEL_676;
      }
    }
  }

  else
  {
    a2[2] = v317;
    a2 += 3;
    if ((v308 & 4) != 0)
    {
      goto LABEL_676;
    }
  }

LABEL_643:
  if ((v308 & 8) == 0)
  {
    goto LABEL_644;
  }

LABEL_687:
  if (*this <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
  }

  v325 = *(a1 + 652);
  *a2 = 2528;
  if (v325 > 0x7F)
  {
    a2[2] = v325 | 0x80;
    v326 = v325 >> 7;
    if (v325 >> 14)
    {
      a2 += 4;
      do
      {
        *(a2 - 1) = v326 | 0x80;
        v327 = v326 >> 7;
        ++a2;
        v328 = v326 >> 14;
        v326 >>= 7;
      }

      while (v328);
      *(a2 - 1) = v327;
      if ((v308 & 0x10) == 0)
      {
        goto LABEL_698;
      }
    }

    else
    {
      a2[3] = v326;
      a2 += 4;
      if ((v308 & 0x10) == 0)
      {
        goto LABEL_698;
      }
    }
  }

  else
  {
    a2[2] = v325;
    a2 += 3;
    if ((v308 & 0x10) == 0)
    {
      goto LABEL_698;
    }
  }

LABEL_645:
  if (*this <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
  }

  v309 = *(a1 + 656);
  *a2 = 2536;
  if (v309 > 0x7F)
  {
    a2[2] = v309 | 0x80;
    v311 = v309 >> 7;
    if (v309 >> 14)
    {
      a2 += 4;
      do
      {
        *(a2 - 1) = v311 | 0x80;
        v313 = v311 >> 7;
        ++a2;
        v314 = v311 >> 14;
        v311 >>= 7;
      }

      while (v314);
      *(a2 - 1) = v313;
    }

    else
    {
      a2[3] = v311;
      a2 += 4;
    }
  }

  else
  {
    a2[2] = v309;
    a2 += 3;
  }

LABEL_698:
  v329 = *(a1 + 20);
  if ((v329 & 8) != 0)
  {
    if (*this <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
    }

    v330 = *(a1 + 320);
    *a2 = 2746;
    v331 = *(v330 + 5);
    if (v331 > 0x7F)
    {
      a2[2] = v331 | 0x80;
      v333 = v331 >> 7;
      if (v331 >> 14)
      {
        v332 = a2 + 4;
        do
        {
          *(v332 - 1) = v333 | 0x80;
          v334 = v333 >> 7;
          ++v332;
          v335 = v333 >> 14;
          v333 >>= 7;
        }

        while (v335);
        *(v332 - 1) = v334;
      }

      else
      {
        a2[3] = v333;
        v332 = a2 + 4;
      }
    }

    else
    {
      a2[2] = v331;
      v332 = a2 + 3;
    }

    a2 = TSD::StrokeArchive::_InternalSerialize(v330, v332, this);
    if ((v329 & 0x10) == 0)
    {
LABEL_700:
      if ((v329 & 0x20) == 0)
      {
        goto LABEL_701;
      }

      goto LABEL_726;
    }
  }

  else if ((v329 & 0x10) == 0)
  {
    goto LABEL_700;
  }

  if (*this <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
  }

  v336 = *(a1 + 328);
  *a2 = 2754;
  v337 = *(v336 + 5);
  if (v337 > 0x7F)
  {
    a2[2] = v337 | 0x80;
    v339 = v337 >> 7;
    if (v337 >> 14)
    {
      v338 = a2 + 4;
      do
      {
        *(v338 - 1) = v339 | 0x80;
        v340 = v339 >> 7;
        ++v338;
        v341 = v339 >> 14;
        v339 >>= 7;
      }

      while (v341);
      *(v338 - 1) = v340;
    }

    else
    {
      a2[3] = v339;
      v338 = a2 + 4;
    }
  }

  else
  {
    a2[2] = v337;
    v338 = a2 + 3;
  }

  a2 = TSD::ShadowArchive::_InternalSerialize(v336, v338, this);
  if ((v329 & 0x20) == 0)
  {
LABEL_701:
    if ((v329 & 0x40) == 0)
    {
      goto LABEL_702;
    }

    goto LABEL_736;
  }

LABEL_726:
  if (*this <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
  }

  v342 = *(a1 + 336);
  *a2 = 2978;
  v343 = *(v342 + 5);
  if (v343 > 0x7F)
  {
    a2[2] = v343 | 0x80;
    v345 = v343 >> 7;
    if (v343 >> 14)
    {
      v344 = a2 + 4;
      do
      {
        *(v344 - 1) = v345 | 0x80;
        v346 = v345 >> 7;
        ++v344;
        v347 = v345 >> 14;
        v345 >>= 7;
      }

      while (v347);
      *(v344 - 1) = v346;
    }

    else
    {
      a2[3] = v345;
      v344 = a2 + 4;
    }
  }

  else
  {
    a2[2] = v343;
    v344 = a2 + 3;
  }

  a2 = TSD::ShadowArchive::_InternalSerialize(v342, v344, this);
  if ((v329 & 0x40) == 0)
  {
LABEL_702:
    if ((v329 & 0x80) == 0)
    {
      goto LABEL_703;
    }

    goto LABEL_746;
  }

LABEL_736:
  if (*this <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
  }

  v348 = *(a1 + 344);
  *a2 = 2986;
  v349 = *(v348 + 5);
  if (v349 > 0x7F)
  {
    a2[2] = v349 | 0x80;
    v351 = v349 >> 7;
    if (v349 >> 14)
    {
      v350 = a2 + 4;
      do
      {
        *(v350 - 1) = v351 | 0x80;
        v352 = v351 >> 7;
        ++v350;
        v353 = v351 >> 14;
        v351 >>= 7;
      }

      while (v353);
      *(v350 - 1) = v352;
    }

    else
    {
      a2[3] = v351;
      v350 = a2 + 4;
    }
  }

  else
  {
    a2[2] = v349;
    v350 = a2 + 3;
  }

  a2 = TSD::StrokeArchive::_InternalSerialize(v348, v350, this);
  if ((v329 & 0x80) == 0)
  {
LABEL_703:
    if ((v329 & 0x100) == 0)
    {
      goto LABEL_704;
    }

    goto LABEL_756;
  }

LABEL_746:
  if (*this <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
  }

  v354 = *(a1 + 352);
  *a2 = 2994;
  v355 = *(v354 + 5);
  if (v355 > 0x7F)
  {
    a2[2] = v355 | 0x80;
    v357 = v355 >> 7;
    if (v355 >> 14)
    {
      v356 = a2 + 4;
      do
      {
        *(v356 - 1) = v357 | 0x80;
        v358 = v357 >> 7;
        ++v356;
        v359 = v357 >> 14;
        v357 >>= 7;
      }

      while (v359);
      *(v356 - 1) = v358;
    }

    else
    {
      a2[3] = v357;
      v356 = a2 + 4;
    }
  }

  else
  {
    a2[2] = v355;
    v356 = a2 + 3;
  }

  a2 = TSD::StrokeArchive::_InternalSerialize(v354, v356, this);
  if ((v329 & 0x100) == 0)
  {
LABEL_704:
    if ((v329 & 0x200) == 0)
    {
      goto LABEL_776;
    }

    goto LABEL_766;
  }

LABEL_756:
  if (*this <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
  }

  v360 = *(a1 + 360);
  *a2 = 3002;
  v361 = *(v360 + 5);
  if (v361 > 0x7F)
  {
    a2[2] = v361 | 0x80;
    v363 = v361 >> 7;
    if (v361 >> 14)
    {
      v362 = a2 + 4;
      do
      {
        *(v362 - 1) = v363 | 0x80;
        v364 = v363 >> 7;
        ++v362;
        v365 = v363 >> 14;
        v363 >>= 7;
      }

      while (v365);
      *(v362 - 1) = v364;
    }

    else
    {
      a2[3] = v363;
      v362 = a2 + 4;
    }
  }

  else
  {
    a2[2] = v361;
    v362 = a2 + 3;
  }

  a2 = TSD::LineEndArchive::_InternalSerialize(v360, v362, this);
  if ((v329 & 0x200) != 0)
  {
LABEL_766:
    if (*this <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
    }

    v366 = *(a1 + 368);
    *a2 = 3010;
    v367 = *(v366 + 5);
    if (v367 > 0x7F)
    {
      a2[2] = v367 | 0x80;
      v369 = v367 >> 7;
      if (v367 >> 14)
      {
        v368 = a2 + 4;
        do
        {
          *(v368 - 1) = v369 | 0x80;
          v370 = v369 >> 7;
          ++v368;
          v371 = v369 >> 14;
          v369 >>= 7;
        }

        while (v371);
        *(v368 - 1) = v370;
      }

      else
      {
        a2[3] = v369;
        v368 = a2 + 4;
      }
    }

    else
    {
      a2[2] = v367;
      v368 = a2 + 3;
    }

    a2 = TSD::LineEndArchive::_InternalSerialize(v366, v368, this);
  }

LABEL_776:
  v372 = *(a1 + 28);
  if ((v372 & 0x20) == 0)
  {
    if ((v372 & 0x40) == 0)
    {
      goto LABEL_778;
    }

LABEL_792:
    if (*this <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
    }

    v377 = *(a1 + 664);
    *a2 = 3280;
    if (v377 > 0x7F)
    {
      a2[2] = v377 | 0x80;
      v378 = v377 >> 7;
      if (v377 >> 14)
      {
        a2 += 4;
        do
        {
          *(a2 - 1) = v378 | 0x80;
          v379 = v378 >> 7;
          ++a2;
          v380 = v378 >> 14;
          v378 >>= 7;
        }

        while (v380);
        *(a2 - 1) = v379;
        if ((v372 & 0x80) != 0)
        {
          goto LABEL_803;
        }
      }

      else
      {
        a2[3] = v378;
        a2 += 4;
        if ((v372 & 0x80) != 0)
        {
          goto LABEL_803;
        }
      }
    }

    else
    {
      a2[2] = v377;
      a2 += 3;
      if ((v372 & 0x80) != 0)
      {
        goto LABEL_803;
      }
    }

LABEL_779:
    if ((v372 & 0x100) == 0)
    {
      goto LABEL_809;
    }

    goto LABEL_806;
  }

  if (*this <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
  }

  v373 = *(a1 + 660);
  *a2 = 3272;
  if (v373 > 0x7F)
  {
    a2[2] = v373 | 0x80;
    v374 = v373 >> 7;
    if (v373 >> 14)
    {
      a2 += 4;
      do
      {
        *(a2 - 1) = v374 | 0x80;
        v375 = v374 >> 7;
        ++a2;
        v376 = v374 >> 14;
        v374 >>= 7;
      }

      while (v376);
      *(a2 - 1) = v375;
      if ((v372 & 0x40) != 0)
      {
        goto LABEL_792;
      }
    }

    else
    {
      a2[3] = v374;
      a2 += 4;
      if ((v372 & 0x40) != 0)
      {
        goto LABEL_792;
      }
    }
  }

  else
  {
    a2[2] = v373;
    a2 += 3;
    if ((v372 & 0x40) != 0)
    {
      goto LABEL_792;
    }
  }

LABEL_778:
  if ((v372 & 0x80) == 0)
  {
    goto LABEL_779;
  }

LABEL_803:
  if (*this <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
  }

  v381 = *(a1 + 668);
  *a2 = 3309;
  *(a2 + 2) = v381;
  a2 += 6;
  if ((v372 & 0x100) != 0)
  {
LABEL_806:
    if (*this <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
    }

    v382 = *(a1 + 672);
    *a2 = 3317;
    *(a2 + 2) = v382;
    a2 += 6;
  }

LABEL_809:
  v383 = *(a1 + 20);
  if ((v383 & 0x400) != 0)
  {
    if (*this <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
    }

    v384 = *(a1 + 376);
    *a2 = 3322;
    v385 = *(v384 + 11);
    if (v385 > 0x7F)
    {
      a2[2] = v385 | 0x80;
      v387 = v385 >> 7;
      if (v385 >> 14)
      {
        v386 = a2 + 4;
        do
        {
          *(v386 - 1) = v387 | 0x80;
          v388 = v387 >> 7;
          ++v386;
          v389 = v387 >> 14;
          v387 >>= 7;
        }

        while (v389);
        *(v386 - 1) = v388;
      }

      else
      {
        a2[3] = v387;
        v386 = a2 + 4;
      }
    }

    else
    {
      a2[2] = v385;
      v386 = a2 + 3;
    }

    a2 = TSD::FillArchive::_InternalSerialize(v384, v386, this);
    if ((v383 & 0x800) == 0)
    {
LABEL_811:
      if ((v383 & 0x1000) == 0)
      {
        goto LABEL_843;
      }

      goto LABEL_833;
    }
  }

  else if ((v383 & 0x800) == 0)
  {
    goto LABEL_811;
  }

  if (*this <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
  }

  v390 = *(a1 + 384);
  *a2 = 3482;
  v391 = *(v390 + 5);
  if (v391 > 0x7F)
  {
    a2[2] = v391 | 0x80;
    v393 = v391 >> 7;
    if (v391 >> 14)
    {
      v392 = a2 + 4;
      do
      {
        *(v392 - 1) = v393 | 0x80;
        v394 = v393 >> 7;
        ++v392;
        v395 = v393 >> 14;
        v393 >>= 7;
      }

      while (v395);
      *(v392 - 1) = v394;
    }

    else
    {
      a2[3] = v393;
      v392 = a2 + 4;
    }
  }

  else
  {
    a2[2] = v391;
    v392 = a2 + 3;
  }

  a2 = TSD::StrokeArchive::_InternalSerialize(v390, v392, this);
  if ((v383 & 0x1000) != 0)
  {
LABEL_833:
    if (*this <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
    }

    v396 = *(a1 + 392);
    *a2 = 3490;
    v397 = *(v396 + 5);
    if (v397 > 0x7F)
    {
      a2[2] = v397 | 0x80;
      v399 = v397 >> 7;
      if (v397 >> 14)
      {
        v398 = a2 + 4;
        do
        {
          *(v398 - 1) = v399 | 0x80;
          v400 = v399 >> 7;
          ++v398;
          v401 = v399 >> 14;
          v399 >>= 7;
        }

        while (v401);
        *(v398 - 1) = v400;
      }

      else
      {
        a2[3] = v399;
        v398 = a2 + 4;
      }
    }

    else
    {
      a2[2] = v397;
      v398 = a2 + 3;
    }

    a2 = TSD::StrokeArchive::_InternalSerialize(v396, v398, this);
  }

LABEL_843:
  if ((*(a1 + 24) & 0x40) != 0)
  {
    if (*this <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
    }

    v402 = *(a1 + 568);
    *a2 = 3496;
    if (v402 > 0x7F)
    {
      a2[2] = v402 | 0x80;
      v403 = v402 >> 7;
      if (v402 >> 14)
      {
        a2 += 4;
        do
        {
          *(a2 - 1) = v403 | 0x80;
          v404 = v403 >> 7;
          ++a2;
          v405 = v403 >> 14;
          v403 >>= 7;
        }

        while (v405);
        *(a2 - 1) = v404;
      }

      else
      {
        a2[3] = v403;
        a2 += 4;
      }
    }

    else
    {
      a2[2] = v402;
      a2 += 3;
    }
  }

  if ((*(a1 + 21) & 0x20) != 0)
  {
    if (*this <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
    }

    v406 = *(a1 + 400);
    *a2 = 3506;
    v407 = *(v406 + 5);
    if (v407 > 0x7F)
    {
      a2[2] = v407 | 0x80;
      v409 = v407 >> 7;
      if (v407 >> 14)
      {
        v408 = a2 + 4;
        do
        {
          *(v408 - 1) = v409 | 0x80;
          v410 = v409 >> 7;
          ++v408;
          v411 = v409 >> 14;
          v409 >>= 7;
        }

        while (v411);
        *(v408 - 1) = v410;
      }

      else
      {
        a2[3] = v409;
        v408 = a2 + 4;
      }
    }

    else
    {
      a2[2] = v407;
      v408 = a2 + 3;
    }

    a2 = TSD::ShadowArchive::_InternalSerialize(v406, v408, this);
  }

  if ((*(a1 + 26) & 0x40) != 0)
  {
    if (*this <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
    }

    v412 = *(a1 + 608);
    *a2 = 3512;
    a2[2] = v412;
    a2 += 3;
  }

  v413 = *(a1 + 20);
  if ((v413 & 0x4000) != 0)
  {
    if (*this <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
    }

    v414 = *(a1 + 408);
    *a2 = 4834;
    v415 = *(v414 + 20);
    if (v415 > 0x7F)
    {
      a2[2] = v415 | 0x80;
      v417 = v415 >> 7;
      if (v415 >> 14)
      {
        v416 = a2 + 4;
        do
        {
          *(v416 - 1) = v417 | 0x80;
          v418 = v417 >> 7;
          ++v416;
          v419 = v417 >> 14;
          v417 >>= 7;
        }

        while (v419);
        *(v416 - 1) = v418;
      }

      else
      {
        a2[3] = v417;
        v416 = a2 + 4;
      }
    }

    else
    {
      a2[2] = v415;
      v416 = a2 + 3;
    }

    a2 = sub_276401420(v414, v416, this);
    if ((v413 & 0x8000) == 0)
    {
LABEL_870:
      if ((v413 & 0x10000) == 0)
      {
        goto LABEL_871;
      }

      goto LABEL_905;
    }
  }

  else if ((v413 & 0x8000) == 0)
  {
    goto LABEL_870;
  }

  if (*this <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
  }

  v420 = *(a1 + 416);
  *a2 = 4842;
  v421 = *(v420 + 20);
  if (v421 > 0x7F)
  {
    a2[2] = v421 | 0x80;
    v423 = v421 >> 7;
    if (v421 >> 14)
    {
      v422 = a2 + 4;
      do
      {
        *(v422 - 1) = v423 | 0x80;
        v424 = v423 >> 7;
        ++v422;
        v425 = v423 >> 14;
        v423 >>= 7;
      }

      while (v425);
      *(v422 - 1) = v424;
    }

    else
    {
      a2[3] = v423;
      v422 = a2 + 4;
    }
  }

  else
  {
    a2[2] = v421;
    v422 = a2 + 3;
  }

  a2 = sub_276401420(v420, v422, this);
  if ((v413 & 0x10000) == 0)
  {
LABEL_871:
    if ((v413 & 0x20000) == 0)
    {
      goto LABEL_872;
    }

    goto LABEL_915;
  }

LABEL_905:
  if (*this <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
  }

  v426 = *(a1 + 424);
  *a2 = 4850;
  v427 = *(v426 + 20);
  if (v427 > 0x7F)
  {
    a2[2] = v427 | 0x80;
    v429 = v427 >> 7;
    if (v427 >> 14)
    {
      v428 = a2 + 4;
      do
      {
        *(v428 - 1) = v429 | 0x80;
        v430 = v429 >> 7;
        ++v428;
        v431 = v429 >> 14;
        v429 >>= 7;
      }

      while (v431);
      *(v428 - 1) = v430;
    }

    else
    {
      a2[3] = v429;
      v428 = a2 + 4;
    }
  }

  else
  {
    a2[2] = v427;
    v428 = a2 + 3;
  }

  a2 = sub_276401420(v426, v428, this);
  if ((v413 & 0x20000) == 0)
  {
LABEL_872:
    if ((v413 & 0x40000) == 0)
    {
      goto LABEL_873;
    }

    goto LABEL_925;
  }

LABEL_915:
  if (*this <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
  }

  v432 = *(a1 + 432);
  *a2 = 4858;
  v433 = *(v432 + 20);
  if (v433 > 0x7F)
  {
    a2[2] = v433 | 0x80;
    v435 = v433 >> 7;
    if (v433 >> 14)
    {
      v434 = a2 + 4;
      do
      {
        *(v434 - 1) = v435 | 0x80;
        v436 = v435 >> 7;
        ++v434;
        v437 = v435 >> 14;
        v435 >>= 7;
      }

      while (v437);
      *(v434 - 1) = v436;
    }

    else
    {
      a2[3] = v435;
      v434 = a2 + 4;
    }
  }

  else
  {
    a2[2] = v433;
    v434 = a2 + 3;
  }

  a2 = sub_276401420(v432, v434, this);
  if ((v413 & 0x40000) == 0)
  {
LABEL_873:
    if ((v413 & 0x80000) == 0)
    {
      goto LABEL_874;
    }

    goto LABEL_935;
  }

LABEL_925:
  if (*this <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
  }

  v438 = *(a1 + 440);
  *a2 = 4994;
  v439 = *(v438 + 20);
  if (v439 > 0x7F)
  {
    a2[2] = v439 | 0x80;
    v441 = v439 >> 7;
    if (v439 >> 14)
    {
      v440 = a2 + 4;
      do
      {
        *(v440 - 1) = v441 | 0x80;
        v442 = v441 >> 7;
        ++v440;
        v443 = v441 >> 14;
        v441 >>= 7;
      }

      while (v443);
      *(v440 - 1) = v442;
    }

    else
    {
      a2[3] = v441;
      v440 = a2 + 4;
    }
  }

  else
  {
    a2[2] = v439;
    v440 = a2 + 3;
  }

  a2 = sub_276401420(v438, v440, this);
  if ((v413 & 0x80000) == 0)
  {
LABEL_874:
    if ((v413 & 0x100000) == 0)
    {
      goto LABEL_875;
    }

    goto LABEL_945;
  }

LABEL_935:
  if (*this <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
  }

  v444 = *(a1 + 448);
  *a2 = 5002;
  v445 = *(v444 + 20);
  if (v445 > 0x7F)
  {
    a2[2] = v445 | 0x80;
    v447 = v445 >> 7;
    if (v445 >> 14)
    {
      v446 = a2 + 4;
      do
      {
        *(v446 - 1) = v447 | 0x80;
        v448 = v447 >> 7;
        ++v446;
        v449 = v447 >> 14;
        v447 >>= 7;
      }

      while (v449);
      *(v446 - 1) = v448;
    }

    else
    {
      a2[3] = v447;
      v446 = a2 + 4;
    }
  }

  else
  {
    a2[2] = v445;
    v446 = a2 + 3;
  }

  a2 = sub_276401420(v444, v446, this);
  if ((v413 & 0x100000) == 0)
  {
LABEL_875:
    if ((v413 & 0x200000) == 0)
    {
      goto LABEL_876;
    }

    goto LABEL_955;
  }

LABEL_945:
  if (*this <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
  }

  v450 = *(a1 + 456);
  *a2 = 5010;
  v451 = *(v450 + 5);
  if (v451 > 0x7F)
  {
    a2[2] = v451 | 0x80;
    v453 = v451 >> 7;
    if (v451 >> 14)
    {
      v452 = a2 + 4;
      do
      {
        *(v452 - 1) = v453 | 0x80;
        v454 = v453 >> 7;
        ++v452;
        v455 = v453 >> 14;
        v453 >>= 7;
      }

      while (v455);
      *(v452 - 1) = v454;
    }

    else
    {
      a2[3] = v453;
      v452 = a2 + 4;
    }
  }

  else
  {
    a2[2] = v451;
    v452 = a2 + 3;
  }

  a2 = TSD::ShadowArchive::_InternalSerialize(v450, v452, this);
  if ((v413 & 0x200000) == 0)
  {
LABEL_876:
    if ((v413 & 0x400000) == 0)
    {
      goto LABEL_877;
    }

    goto LABEL_965;
  }

LABEL_955:
  if (*this <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
  }

  v456 = *(a1 + 464);
  *a2 = 5018;
  v457 = *(v456 + 5);
  if (v457 > 0x7F)
  {
    a2[2] = v457 | 0x80;
    v459 = v457 >> 7;
    if (v457 >> 14)
    {
      v458 = a2 + 4;
      do
      {
        *(v458 - 1) = v459 | 0x80;
        v460 = v459 >> 7;
        ++v458;
        v461 = v459 >> 14;
        v459 >>= 7;
      }

      while (v461);
      *(v458 - 1) = v460;
    }

    else
    {
      a2[3] = v459;
      v458 = a2 + 4;
    }
  }

  else
  {
    a2[2] = v457;
    v458 = a2 + 3;
  }

  a2 = TSD::ShadowArchive::_InternalSerialize(v456, v458, this);
  if ((v413 & 0x400000) == 0)
  {
LABEL_877:
    if ((v413 & 0x800000) == 0)
    {
      goto LABEL_878;
    }

    goto LABEL_975;
  }

LABEL_965:
  if (*this <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
  }

  v462 = *(a1 + 472);
  *a2 = 5026;
  v463 = *(v462 + 5);
  if (v463 > 0x7F)
  {
    a2[2] = v463 | 0x80;
    v465 = v463 >> 7;
    if (v463 >> 14)
    {
      v464 = a2 + 4;
      do
      {
        *(v464 - 1) = v465 | 0x80;
        v466 = v465 >> 7;
        ++v464;
        v467 = v465 >> 14;
        v465 >>= 7;
      }

      while (v467);
      *(v464 - 1) = v466;
    }

    else
    {
      a2[3] = v465;
      v464 = a2 + 4;
    }
  }

  else
  {
    a2[2] = v463;
    v464 = a2 + 3;
  }

  a2 = TSD::ShadowArchive::_InternalSerialize(v462, v464, this);
  if ((v413 & 0x800000) == 0)
  {
LABEL_878:
    if ((v413 & 0x1000000) == 0)
    {
      goto LABEL_879;
    }

    goto LABEL_985;
  }

LABEL_975:
  if (*this <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
  }

  v468 = *(a1 + 480);
  *a2 = 5034;
  v469 = *(v468 + 5);
  if (v469 > 0x7F)
  {
    a2[2] = v469 | 0x80;
    v471 = v469 >> 7;
    if (v469 >> 14)
    {
      v470 = a2 + 4;
      do
      {
        *(v470 - 1) = v471 | 0x80;
        v472 = v471 >> 7;
        ++v470;
        v473 = v471 >> 14;
        v471 >>= 7;
      }

      while (v473);
      *(v470 - 1) = v472;
    }

    else
    {
      a2[3] = v471;
      v470 = a2 + 4;
    }
  }

  else
  {
    a2[2] = v469;
    v470 = a2 + 3;
  }

  a2 = TSD::ShadowArchive::_InternalSerialize(v468, v470, this);
  if ((v413 & 0x1000000) == 0)
  {
LABEL_879:
    if ((v413 & 0x2000000) == 0)
    {
      goto LABEL_880;
    }

    goto LABEL_995;
  }

LABEL_985:
  if (*this <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
  }

  v474 = *(a1 + 488);
  *a2 = 5042;
  v475 = *(v474 + 5);
  if (v475 > 0x7F)
  {
    a2[2] = v475 | 0x80;
    v477 = v475 >> 7;
    if (v475 >> 14)
    {
      v476 = a2 + 4;
      do
      {
        *(v476 - 1) = v477 | 0x80;
        v478 = v477 >> 7;
        ++v476;
        v479 = v477 >> 14;
        v477 >>= 7;
      }

      while (v479);
      *(v476 - 1) = v478;
    }

    else
    {
      a2[3] = v477;
      v476 = a2 + 4;
    }
  }

  else
  {
    a2[2] = v475;
    v476 = a2 + 3;
  }

  a2 = TSD::ShadowArchive::_InternalSerialize(v474, v476, this);
  if ((v413 & 0x2000000) == 0)
  {
LABEL_880:
    if ((v413 & 0x4000000) == 0)
    {
      goto LABEL_881;
    }

    goto LABEL_1005;
  }

LABEL_995:
  if (*this <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
  }

  v480 = *(a1 + 496);
  *a2 = 5250;
  v481 = *(v480 + 11);
  if (v481 > 0x7F)
  {
    a2[2] = v481 | 0x80;
    v483 = v481 >> 7;
    if (v481 >> 14)
    {
      v482 = a2 + 4;
      do
      {
        *(v482 - 1) = v483 | 0x80;
        v484 = v483 >> 7;
        ++v482;
        v485 = v483 >> 14;
        v483 >>= 7;
      }

      while (v485);
      *(v482 - 1) = v484;
    }

    else
    {
      a2[3] = v483;
      v482 = a2 + 4;
    }
  }

  else
  {
    a2[2] = v481;
    v482 = a2 + 3;
  }

  a2 = TSD::FillArchive::_InternalSerialize(v480, v482, this);
  if ((v413 & 0x4000000) == 0)
  {
LABEL_881:
    if ((v413 & 0x8000000) == 0)
    {
      goto LABEL_882;
    }

    goto LABEL_1015;
  }

LABEL_1005:
  if (*this <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
  }

  v486 = *(a1 + 504);
  *a2 = 5258;
  v487 = *(v486 + 11);
  if (v487 > 0x7F)
  {
    a2[2] = v487 | 0x80;
    v489 = v487 >> 7;
    if (v487 >> 14)
    {
      v488 = a2 + 4;
      do
      {
        *(v488 - 1) = v489 | 0x80;
        v490 = v489 >> 7;
        ++v488;
        v491 = v489 >> 14;
        v489 >>= 7;
      }

      while (v491);
      *(v488 - 1) = v490;
    }

    else
    {
      a2[3] = v489;
      v488 = a2 + 4;
    }
  }

  else
  {
    a2[2] = v487;
    v488 = a2 + 3;
  }

  a2 = TSD::FillArchive::_InternalSerialize(v486, v488, this);
  if ((v413 & 0x8000000) == 0)
  {
LABEL_882:
    if ((v413 & 0x10000000) == 0)
    {
      goto LABEL_883;
    }

    goto LABEL_1025;
  }

LABEL_1015:
  if (*this <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
  }

  v492 = *(a1 + 512);
  *a2 = 5266;
  v493 = *(v492 + 11);
  if (v493 > 0x7F)
  {
    a2[2] = v493 | 0x80;
    v495 = v493 >> 7;
    if (v493 >> 14)
    {
      v494 = a2 + 4;
      do
      {
        *(v494 - 1) = v495 | 0x80;
        v496 = v495 >> 7;
        ++v494;
        v497 = v495 >> 14;
        v495 >>= 7;
      }

      while (v497);
      *(v494 - 1) = v496;
    }

    else
    {
      a2[3] = v495;
      v494 = a2 + 4;
    }
  }

  else
  {
    a2[2] = v493;
    v494 = a2 + 3;
  }

  a2 = TSD::FillArchive::_InternalSerialize(v492, v494, this);
  if ((v413 & 0x10000000) == 0)
  {
LABEL_883:
    if ((v413 & 0x20000000) == 0)
    {
      goto LABEL_1045;
    }

    goto LABEL_1035;
  }

LABEL_1025:
  if (*this <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
  }

  v498 = *(a1 + 520);
  *a2 = 5274;
  v499 = *(v498 + 11);
  if (v499 > 0x7F)
  {
    a2[2] = v499 | 0x80;
    v501 = v499 >> 7;
    if (v499 >> 14)
    {
      v500 = a2 + 4;
      do
      {
        *(v500 - 1) = v501 | 0x80;
        v502 = v501 >> 7;
        ++v500;
        v503 = v501 >> 14;
        v501 >>= 7;
      }

      while (v503);
      *(v500 - 1) = v502;
    }

    else
    {
      a2[3] = v501;
      v500 = a2 + 4;
    }
  }

  else
  {
    a2[2] = v499;
    v500 = a2 + 3;
  }

  a2 = TSD::FillArchive::_InternalSerialize(v498, v500, this);
  if ((v413 & 0x20000000) != 0)
  {
LABEL_1035:
    if (*this <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
    }

    v504 = *(a1 + 528);
    *a2 = 5282;
    v505 = *(v504 + 11);
    if (v505 > 0x7F)
    {
      a2[2] = v505 | 0x80;
      v507 = v505 >> 7;
      if (v505 >> 14)
      {
        v506 = a2 + 4;
        do
        {
          *(v506 - 1) = v507 | 0x80;
          v508 = v507 >> 7;
          ++v506;
          v509 = v507 >> 14;
          v507 >>= 7;
        }

        while (v509);
        *(v506 - 1) = v508;
      }

      else
      {
        a2[3] = v507;
        v506 = a2 + 4;
      }
    }

    else
    {
      a2[2] = v505;
      v506 = a2 + 3;
    }

    a2 = TSD::FillArchive::_InternalSerialize(v504, v506, this);
  }

LABEL_1045:
  v510 = *(a1 + 8);
  if ((v510 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v510 & 0xFFFFFFFFFFFFFFFELL) + 8, a2, this);
}