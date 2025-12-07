uint64_t sub_232CAA554(uint64_t a1)
{
  v2 = sub_232CBE6AC(a1 + 16);
  v3 = *(a1 + 64);
  v4 = v2 + v3;
  if (v3 >= 1)
  {
    v5 = 0;
    do
    {
      v6 = sub_232CAFC54(a1 + 56, v5);
      v7 = *(v6 + 23);
      if ((v7 & 0x80u) != 0)
      {
        v7 = *(v6 + 8);
      }

      v4 += v7 + ((9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6);
      ++v5;
    }

    while (v3 != v5);
  }

  v8 = *(a1 + 88);
  v9 = v4 + v8;
  if (v8 >= 1)
  {
    v10 = 0;
    do
    {
      v11 = sub_232CAFC54(a1 + 80, v10);
      v12 = *(v11 + 23);
      if ((v12 & 0x80u) != 0)
      {
        v12 = *(v11 + 8);
      }

      v9 += v12 + ((9 * (__clz(v12 | 1) ^ 0x1F) + 73) >> 6);
      ++v10;
    }

    while (v8 != v10);
  }

  v13 = *(a1 + 112);
  v14 = v9 + 2 * v13;
  if (v13 >= 1)
  {
    v15 = 0;
    do
    {
      v16 = sub_232CAFC54(a1 + 104, v15);
      v17 = *(v16 + 23);
      if ((v17 & 0x80u) != 0)
      {
        v17 = *(v16 + 8);
      }

      v14 += v17 + ((9 * (__clz(v17 | 1) ^ 0x1F) + 73) >> 6);
      ++v15;
    }

    while (v13 != v15);
  }

  v18 = *(a1 + 136);
  v19 = v14 + 2 * v18;
  if (v18 >= 1)
  {
    v20 = 0;
    do
    {
      v21 = sub_232CAFC54(a1 + 128, v20);
      v22 = *(v21 + 23);
      if ((v22 & 0x80u) != 0)
      {
        v22 = *(v21 + 8);
      }

      v19 += v22 + ((9 * (__clz(v22 | 1) ^ 0x1F) + 73) >> 6);
      ++v20;
    }

    while (v18 != v20);
  }

  v23 = *(a1 + 40);
  if (!v23)
  {
    goto LABEL_33;
  }

  if (v23)
  {
    v58 = *(a1 + 152) & 0xFFFFFFFFFFFFFFFELL;
    v59 = *(v58 + 23);
    v60 = *(v58 + 8);
    if ((v59 & 0x80u) == 0)
    {
      v60 = v59;
    }

    v19 += v60 + ((9 * (__clz(v60 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v23 & 2) == 0)
    {
LABEL_24:
      if ((v23 & 4) == 0)
      {
        goto LABEL_25;
      }

      goto LABEL_131;
    }
  }

  else if ((v23 & 2) == 0)
  {
    goto LABEL_24;
  }

  v61 = *(a1 + 160) & 0xFFFFFFFFFFFFFFFELL;
  v62 = *(v61 + 23);
  v63 = *(v61 + 8);
  if ((v62 & 0x80u) == 0)
  {
    v63 = v62;
  }

  v19 += v63 + ((9 * (__clz(v63 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v23 & 4) == 0)
  {
LABEL_25:
    if ((v23 & 8) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_134;
  }

LABEL_131:
  v64 = *(a1 + 168) & 0xFFFFFFFFFFFFFFFELL;
  v65 = *(v64 + 23);
  v66 = *(v64 + 8);
  if ((v65 & 0x80u) == 0)
  {
    v66 = v65;
  }

  v19 += v66 + ((9 * (__clz(v66 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v23 & 8) == 0)
  {
LABEL_26:
    if ((v23 & 0x10) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_137;
  }

LABEL_134:
  v67 = *(a1 + 176) & 0xFFFFFFFFFFFFFFFELL;
  v68 = *(v67 + 23);
  v69 = *(v67 + 8);
  if ((v68 & 0x80u) == 0)
  {
    v69 = v68;
  }

  v19 += v69 + ((9 * (__clz(v69 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v23 & 0x10) == 0)
  {
LABEL_27:
    if ((v23 & 0x20) == 0)
    {
      goto LABEL_28;
    }

LABEL_140:
    v73 = *(a1 + 192) & 0xFFFFFFFFFFFFFFFELL;
    v74 = *(v73 + 23);
    v75 = *(v73 + 8);
    if ((v74 & 0x80u) == 0)
    {
      v75 = v74;
    }

    v19 += v75 + ((9 * (__clz(v75 | 1) ^ 0x1F) + 73) >> 6) + 2;
    if ((v23 & 0x40) == 0)
    {
LABEL_29:
      if ((v23 & 0x80) == 0)
      {
        goto LABEL_33;
      }

      goto LABEL_30;
    }

    goto LABEL_143;
  }

LABEL_137:
  v70 = *(a1 + 184) & 0xFFFFFFFFFFFFFFFELL;
  v71 = *(v70 + 23);
  v72 = *(v70 + 8);
  if ((v71 & 0x80u) == 0)
  {
    v72 = v71;
  }

  v19 += v72 + ((9 * (__clz(v72 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v23 & 0x20) != 0)
  {
    goto LABEL_140;
  }

LABEL_28:
  if ((v23 & 0x40) == 0)
  {
    goto LABEL_29;
  }

LABEL_143:
  v76 = *(a1 + 200) & 0xFFFFFFFFFFFFFFFELL;
  v77 = *(v76 + 23);
  v78 = *(v76 + 8);
  if ((v77 & 0x80u) == 0)
  {
    v78 = v77;
  }

  v19 += v78 + ((9 * (__clz(v78 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v23 & 0x80) != 0)
  {
LABEL_30:
    v24 = *(a1 + 208) & 0xFFFFFFFFFFFFFFFELL;
    v25 = *(v24 + 23);
    v26 = *(v24 + 8);
    if ((v25 & 0x80u) == 0)
    {
      v26 = v25;
    }

    v19 += v26 + ((9 * (__clz(v26 | 1) ^ 0x1F) + 73) >> 6) + 2;
  }

LABEL_33:
  if ((v23 & 0xFF00) == 0)
  {
    goto LABEL_50;
  }

  if ((v23 & 0x100) != 0)
  {
    v79 = *(a1 + 216) & 0xFFFFFFFFFFFFFFFELL;
    v80 = *(v79 + 23);
    v81 = *(v79 + 8);
    if ((v80 & 0x80u) == 0)
    {
      v81 = v80;
    }

    v19 += v81 + ((9 * (__clz(v81 | 1) ^ 0x1F) + 73) >> 6) + 2;
    if ((v23 & 0x200) == 0)
    {
LABEL_36:
      if ((v23 & 0x400) == 0)
      {
        goto LABEL_37;
      }

      goto LABEL_154;
    }
  }

  else if ((v23 & 0x200) == 0)
  {
    goto LABEL_36;
  }

  v82 = *(a1 + 224);
  v83 = ((9 * (__clz(v82 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if (v82 >= 0)
  {
    v84 = v83;
  }

  else
  {
    v84 = 11;
  }

  v19 += v84;
  if ((v23 & 0x400) == 0)
  {
LABEL_37:
    if ((v23 & 0x800) == 0)
    {
      goto LABEL_38;
    }

LABEL_158:
    v19 += ((9 * (__clz(*(a1 + 232) | 1) ^ 0x3F) + 73) >> 6) + 1;
    if ((v23 & 0x1000) != 0)
    {
      goto LABEL_39;
    }

    goto LABEL_43;
  }

LABEL_154:
  v85 = *(a1 + 228);
  v86 = ((9 * (__clz(v85 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if (v85 >= 0)
  {
    v87 = v86;
  }

  else
  {
    v87 = 11;
  }

  v19 += v87;
  if ((v23 & 0x800) != 0)
  {
    goto LABEL_158;
  }

LABEL_38:
  if ((v23 & 0x1000) != 0)
  {
LABEL_39:
    v27 = *(a1 + 240);
    v28 = ((9 * (__clz(v27 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if (v27 >= 0)
    {
      v29 = v28;
    }

    else
    {
      v29 = 11;
    }

    v19 += v29;
  }

LABEL_43:
  v30 = v19 + 3;
  if ((v23 & 0x2000) == 0)
  {
    v30 = v19;
  }

  if ((v23 & 0x4000) != 0)
  {
    v30 += 3;
  }

  if ((v23 & 0x8000) != 0)
  {
    v19 = v30 + 3;
  }

  else
  {
    v19 = v30;
  }

LABEL_50:
  if ((v23 & 0xFF0000) != 0)
  {
    v31 = v19 + 3;
    if ((v23 & 0x10000) == 0)
    {
      v31 = v19;
    }

    if ((v23 & 0x20000) != 0)
    {
      v31 += 3;
    }

    if ((v23 & 0x40000) != 0)
    {
      v31 += 3;
    }

    if ((v23 & 0x80000) != 0)
    {
      v31 += 3;
    }

    if ((v23 & 0x100000) != 0)
    {
      v32 = *(a1 + 252);
      v33 = ((9 * (__clz(v32 | 1) ^ 0x1F) + 73) >> 6) + 2;
      if (v32 >= 0)
      {
        v34 = v33;
      }

      else
      {
        v34 = 12;
      }

      v31 += v34;
    }

    if ((v23 & 0x200000) != 0)
    {
      v19 = v31 + 6;
    }

    else
    {
      v19 = v31;
    }

    if ((v23 & 0x400000) != 0)
    {
      v19 += ((9 * (__clz(*(a1 + 264) | 1) ^ 0x3F) + 73) >> 6) + 2;
    }

    if ((v23 & 0x800000) != 0)
    {
      v35 = *(a1 + 272);
      v36 = ((9 * (__clz(v35 | 1) ^ 0x1F) + 73) >> 6) + 1;
      if (v35 >= 0)
      {
        v37 = v36;
      }

      else
      {
        v37 = 11;
      }

      v19 += v37;
    }
  }

  if (!HIBYTE(v23))
  {
    goto LABEL_94;
  }

  if ((v23 & 0x1000000) != 0)
  {
    v38 = *(a1 + 276);
    v39 = ((9 * (__clz(v38 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if (v38 >= 0)
    {
      v40 = v39;
    }

    else
    {
      v40 = 11;
    }

    v19 += v40;
  }

  v41 = v19 + 5;
  if ((v23 & 0x2000000) == 0)
  {
    v41 = v19;
  }

  if ((v23 & 0x4000000) != 0)
  {
    v42 = *(a1 + 284);
    v43 = ((9 * (__clz(v42 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if (v42 >= 0)
    {
      v44 = v43;
    }

    else
    {
      v44 = 11;
    }

    v41 += v44;
  }

  if ((v23 & 0x8000000) != 0)
  {
    v19 = v41 + 5;
  }

  else
  {
    v19 = v41;
  }

  if ((v23 & 0x10000000) == 0)
  {
    if ((v23 & 0x20000000) == 0)
    {
      goto LABEL_92;
    }

LABEL_164:
    v91 = *(a1 + 296);
    v92 = ((9 * (__clz(v91 | 1) ^ 0x1F) + 73) >> 6) + 2;
    if (v91 >= 0)
    {
      v93 = v92;
    }

    else
    {
      v93 = 12;
    }

    v19 += v93;
    if ((v23 & 0x40000000) == 0)
    {
LABEL_93:
      if ((v23 & 0x80000000) == 0)
      {
        goto LABEL_94;
      }

      goto LABEL_172;
    }

    goto LABEL_168;
  }

  v88 = *(a1 + 292);
  v89 = ((9 * (__clz(v88 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if (v88 >= 0)
  {
    v90 = v89;
  }

  else
  {
    v90 = 12;
  }

  v19 += v90;
  if ((v23 & 0x20000000) != 0)
  {
    goto LABEL_164;
  }

LABEL_92:
  if ((v23 & 0x40000000) == 0)
  {
    goto LABEL_93;
  }

LABEL_168:
  v94 = *(a1 + 300);
  v95 = ((9 * (__clz(v94 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if (v94 >= 0)
  {
    v96 = v95;
  }

  else
  {
    v96 = 12;
  }

  v19 += v96;
  if ((v23 & 0x80000000) != 0)
  {
LABEL_172:
    v97 = *(a1 + 304);
    v98 = ((9 * (__clz(v97 | 1) ^ 0x1F) + 73) >> 6) + 2;
    if (v97 >= 0)
    {
      v99 = v98;
    }

    else
    {
      v99 = 12;
    }

    v19 += v99;
  }

LABEL_94:
  v45 = *(a1 + 44);
  if (v45)
  {
    v46 = v19 + 3;
    if ((v45 & 1) == 0)
    {
      v46 = v19;
    }

    if ((v45 & 2) != 0)
    {
      v46 += 3;
    }

    if ((v45 & 4) != 0)
    {
      v46 += 3;
    }

    if ((v45 & 8) != 0)
    {
      v46 += 3;
    }

    if ((v45 & 0x10) != 0)
    {
      v46 += 3;
    }

    if ((v45 & 0x20) != 0)
    {
      v19 = v46 + 3;
    }

    else
    {
      v19 = v46;
    }

    if ((v45 & 0x40) != 0)
    {
      v47 = *(a1 + 316);
      v48 = ((9 * (__clz(v47 | 1) ^ 0x1F) + 73) >> 6) + 2;
      if (v47 >= 0)
      {
        v49 = v48;
      }

      else
      {
        v49 = 12;
      }

      v19 += v49;
    }

    if ((v45 & 0x80) != 0)
    {
      v50 = *(a1 + 320);
      v51 = ((9 * (__clz(v50 | 1) ^ 0x1F) + 73) >> 6) + 2;
      if (v50 >= 0)
      {
        v52 = v51;
      }

      else
      {
        v52 = 12;
      }

      v19 += v52;
    }
  }

  if ((v45 & 0x100) != 0)
  {
    v53 = *(a1 + 324);
    v54 = ((9 * (__clz(v53 | 1) ^ 0x1F) + 73) >> 6) + 2;
    if (v53 >= 0)
    {
      v55 = v54;
    }

    else
    {
      v55 = 12;
    }

    v19 += v55;
  }

  v56 = *(a1 + 8);
  if (v56)
  {
    v100 = v56 & 0xFFFFFFFFFFFFFFFELL;
    v101 = *((v56 & 0xFFFFFFFFFFFFFFFELL) + 31);
    if (v101 < 0)
    {
      v101 = *(v100 + 16);
    }

    v19 += v101;
  }

  *(a1 + 48) = v19;
  return v19;
}

uint64_t sub_232CAADE4(uint64_t a1, void *lpsrc)
{
  if (!__dynamic_cast(lpsrc, &unk_284815C60, &unk_2848157B8, 0))
  {
    sub_232CA89AC();
  }

  return sub_232CAAE6C(a1, lpsrc);
}

uint64_t sub_232CAAE6C(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    sub_232CB5704(v36, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/builtin_pb/sentencepiece_model.pb.cc", 1671);
    v4 = sub_232CB571C(v36, "CHECK failed: (&from) != (this): ");
    sub_232CB5858(&v35, &v4->__r_.__value_.__l.__data_);
    sub_232CB5860(v36);
  }

  sub_232CE835C(a1 + 16, a2 + 16);
  v5 = *(a2 + 8);
  if (v5)
  {
    v6 = v5 & 0xFFFFFFFFFFFFFFFELL;
    v7 = (v5 & 0xFFFFFFFFFFFFFFFELL) + 8;
    v8 = *(a1 + 8);
    if (v8)
    {
      v9 = ((v8 & 0xFFFFFFFFFFFFFFFELL) + 8);
    }

    else
    {
      v9 = sub_232CA81A8((a1 + 8));
    }

    v10 = *(v6 + 31);
    if (v10 >= 0)
    {
      v11 = v7;
    }

    else
    {
      v11 = *(v6 + 8);
    }

    if (v10 >= 0)
    {
      v12 = *(v6 + 31);
    }

    else
    {
      v12 = *(v6 + 16);
    }

    std::string::append(v9, v11, v12);
  }

  sub_232CAFE94(a1 + 56, a2 + 56);
  sub_232CAFE94(a1 + 80, a2 + 80);
  sub_232CAFE94(a1 + 104, a2 + 104);
  result = sub_232CAFE94(a1 + 128, a2 + 128);
  v14 = *(a2 + 40);
  if (!v14)
  {
    goto LABEL_47;
  }

  if (v14)
  {
    v15 = *(a2 + 152);
    *(a1 + 40) |= 1u;
    v16 = *(a1 + 8);
    if (v16)
    {
      v16 = *(v16 & 0xFFFFFFFFFFFFFFFELL);
    }

    result = sub_232CB4490((a1 + 152), (v15 & 0xFFFFFFFFFFFFFFFELL), v16);
    if ((v14 & 2) == 0)
    {
LABEL_16:
      if ((v14 & 4) == 0)
      {
        goto LABEL_17;
      }

      goto LABEL_29;
    }
  }

  else if ((v14 & 2) == 0)
  {
    goto LABEL_16;
  }

  v17 = *(a2 + 160);
  *(a1 + 40) |= 2u;
  v18 = *(a1 + 8);
  if (v18)
  {
    v18 = *(v18 & 0xFFFFFFFFFFFFFFFELL);
  }

  result = sub_232CB4490((a1 + 160), (v17 & 0xFFFFFFFFFFFFFFFELL), v18);
  if ((v14 & 4) == 0)
  {
LABEL_17:
    if ((v14 & 8) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_32;
  }

LABEL_29:
  v19 = *(a2 + 168);
  *(a1 + 40) |= 4u;
  v20 = *(a1 + 8);
  if (v20)
  {
    v20 = *(v20 & 0xFFFFFFFFFFFFFFFELL);
  }

  result = sub_232CB4490((a1 + 168), (v19 & 0xFFFFFFFFFFFFFFFELL), v20);
  if ((v14 & 8) == 0)
  {
LABEL_18:
    if ((v14 & 0x10) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_35;
  }

LABEL_32:
  v21 = *(a2 + 176);
  *(a1 + 40) |= 8u;
  v22 = *(a1 + 8);
  if (v22)
  {
    v22 = *(v22 & 0xFFFFFFFFFFFFFFFELL);
  }

  result = sub_232CB44B8((a1 + 176), (v21 & 0xFFFFFFFFFFFFFFFELL), v22);
  if ((v14 & 0x10) == 0)
  {
LABEL_19:
    if ((v14 & 0x20) == 0)
    {
      goto LABEL_20;
    }

LABEL_38:
    v25 = *(a2 + 192);
    *(a1 + 40) |= 0x20u;
    v26 = *(a1 + 8);
    if (v26)
    {
      v26 = *(v26 & 0xFFFFFFFFFFFFFFFELL);
    }

    result = sub_232CB44B8((a1 + 192), (v25 & 0xFFFFFFFFFFFFFFFELL), v26);
    if ((v14 & 0x40) == 0)
    {
LABEL_21:
      if ((v14 & 0x80) == 0)
      {
        goto LABEL_47;
      }

      goto LABEL_44;
    }

    goto LABEL_41;
  }

LABEL_35:
  v23 = *(a2 + 184);
  *(a1 + 40) |= 0x10u;
  v24 = *(a1 + 8);
  if (v24)
  {
    v24 = *(v24 & 0xFFFFFFFFFFFFFFFELL);
  }

  result = sub_232CB44B8((a1 + 184), (v23 & 0xFFFFFFFFFFFFFFFELL), v24);
  if ((v14 & 0x20) != 0)
  {
    goto LABEL_38;
  }

LABEL_20:
  if ((v14 & 0x40) == 0)
  {
    goto LABEL_21;
  }

LABEL_41:
  v27 = *(a2 + 200);
  *(a1 + 40) |= 0x40u;
  v28 = *(a1 + 8);
  if (v28)
  {
    v28 = *(v28 & 0xFFFFFFFFFFFFFFFELL);
  }

  result = sub_232CB44B8((a1 + 200), (v27 & 0xFFFFFFFFFFFFFFFELL), v28);
  if ((v14 & 0x80) != 0)
  {
LABEL_44:
    v29 = *(a2 + 208);
    *(a1 + 40) |= 0x80u;
    v30 = *(a1 + 8);
    if (v30)
    {
      v30 = *(v30 & 0xFFFFFFFFFFFFFFFELL);
    }

    result = sub_232CB44B8((a1 + 208), (v29 & 0xFFFFFFFFFFFFFFFELL), v30);
  }

LABEL_47:
  if ((v14 & 0xFF00) == 0)
  {
    goto LABEL_58;
  }

  if ((v14 & 0x100) != 0)
  {
    v33 = *(a2 + 216);
    *(a1 + 40) |= 0x100u;
    v34 = *(a1 + 8);
    if (v34)
    {
      v34 = *(v34 & 0xFFFFFFFFFFFFFFFELL);
    }

    result = sub_232CB4490((a1 + 216), (v33 & 0xFFFFFFFFFFFFFFFELL), v34);
    if ((v14 & 0x200) == 0)
    {
LABEL_50:
      if ((v14 & 0x400) == 0)
      {
        goto LABEL_51;
      }

      goto LABEL_97;
    }
  }

  else if ((v14 & 0x200) == 0)
  {
    goto LABEL_50;
  }

  *(a1 + 224) = *(a2 + 224);
  if ((v14 & 0x400) == 0)
  {
LABEL_51:
    if ((v14 & 0x800) == 0)
    {
      goto LABEL_52;
    }

    goto LABEL_98;
  }

LABEL_97:
  *(a1 + 228) = *(a2 + 228);
  if ((v14 & 0x800) == 0)
  {
LABEL_52:
    if ((v14 & 0x1000) == 0)
    {
      goto LABEL_53;
    }

    goto LABEL_99;
  }

LABEL_98:
  *(a1 + 232) = *(a2 + 232);
  if ((v14 & 0x1000) == 0)
  {
LABEL_53:
    if ((v14 & 0x2000) == 0)
    {
      goto LABEL_54;
    }

    goto LABEL_100;
  }

LABEL_99:
  *(a1 + 240) = *(a2 + 240);
  if ((v14 & 0x2000) == 0)
  {
LABEL_54:
    if ((v14 & 0x4000) == 0)
    {
      goto LABEL_55;
    }

LABEL_101:
    *(a1 + 245) = *(a2 + 245);
    if ((v14 & 0x8000) == 0)
    {
      goto LABEL_57;
    }

    goto LABEL_56;
  }

LABEL_100:
  *(a1 + 244) = *(a2 + 244);
  if ((v14 & 0x4000) != 0)
  {
    goto LABEL_101;
  }

LABEL_55:
  if ((v14 & 0x8000) != 0)
  {
LABEL_56:
    *(a1 + 246) = *(a2 + 246);
  }

LABEL_57:
  *(a1 + 40) |= v14;
LABEL_58:
  if ((v14 & 0xFF0000) == 0)
  {
    goto LABEL_69;
  }

  if ((v14 & 0x10000) != 0)
  {
    *(a1 + 247) = *(a2 + 247);
    if ((v14 & 0x20000) == 0)
    {
LABEL_61:
      if ((v14 & 0x40000) == 0)
      {
        goto LABEL_62;
      }

      goto LABEL_105;
    }
  }

  else if ((v14 & 0x20000) == 0)
  {
    goto LABEL_61;
  }

  *(a1 + 248) = *(a2 + 248);
  if ((v14 & 0x40000) == 0)
  {
LABEL_62:
    if ((v14 & 0x80000) == 0)
    {
      goto LABEL_63;
    }

    goto LABEL_106;
  }

LABEL_105:
  *(a1 + 249) = *(a2 + 249);
  if ((v14 & 0x80000) == 0)
  {
LABEL_63:
    if ((v14 & 0x100000) == 0)
    {
      goto LABEL_64;
    }

    goto LABEL_107;
  }

LABEL_106:
  *(a1 + 250) = *(a2 + 250);
  if ((v14 & 0x100000) == 0)
  {
LABEL_64:
    if ((v14 & 0x200000) == 0)
    {
      goto LABEL_65;
    }

    goto LABEL_108;
  }

LABEL_107:
  *(a1 + 252) = *(a2 + 252);
  if ((v14 & 0x200000) == 0)
  {
LABEL_65:
    if ((v14 & 0x400000) == 0)
    {
      goto LABEL_66;
    }

LABEL_109:
    *(a1 + 264) = *(a2 + 264);
    if ((v14 & 0x800000) == 0)
    {
      goto LABEL_68;
    }

    goto LABEL_67;
  }

LABEL_108:
  *(a1 + 256) = *(a2 + 256);
  if ((v14 & 0x400000) != 0)
  {
    goto LABEL_109;
  }

LABEL_66:
  if ((v14 & 0x800000) != 0)
  {
LABEL_67:
    *(a1 + 272) = *(a2 + 272);
  }

LABEL_68:
  *(a1 + 40) |= v14;
LABEL_69:
  if (!HIBYTE(v14))
  {
    goto LABEL_79;
  }

  if ((v14 & 0x1000000) != 0)
  {
    *(a1 + 276) = *(a2 + 276);
    if ((v14 & 0x2000000) == 0)
    {
LABEL_72:
      if ((v14 & 0x4000000) == 0)
      {
        goto LABEL_73;
      }

      goto LABEL_121;
    }
  }

  else if ((v14 & 0x2000000) == 0)
  {
    goto LABEL_72;
  }

  *(a1 + 280) = *(a2 + 280);
  if ((v14 & 0x4000000) == 0)
  {
LABEL_73:
    if ((v14 & 0x8000000) == 0)
    {
      goto LABEL_74;
    }

    goto LABEL_122;
  }

LABEL_121:
  *(a1 + 284) = *(a2 + 284);
  if ((v14 & 0x8000000) == 0)
  {
LABEL_74:
    if ((v14 & 0x10000000) == 0)
    {
      goto LABEL_75;
    }

    goto LABEL_123;
  }

LABEL_122:
  *(a1 + 288) = *(a2 + 288);
  if ((v14 & 0x10000000) == 0)
  {
LABEL_75:
    if ((v14 & 0x20000000) == 0)
    {
      goto LABEL_76;
    }

    goto LABEL_124;
  }

LABEL_123:
  *(a1 + 292) = *(a2 + 292);
  if ((v14 & 0x20000000) == 0)
  {
LABEL_76:
    if ((v14 & 0x40000000) == 0)
    {
      goto LABEL_77;
    }

LABEL_125:
    *(a1 + 300) = *(a2 + 300);
    if ((v14 & 0x80000000) == 0)
    {
      goto LABEL_78;
    }

LABEL_126:
    *(a1 + 304) = *(a2 + 304);
    goto LABEL_78;
  }

LABEL_124:
  *(a1 + 296) = *(a2 + 296);
  if ((v14 & 0x40000000) != 0)
  {
    goto LABEL_125;
  }

LABEL_77:
  if ((v14 & 0x80000000) != 0)
  {
    goto LABEL_126;
  }

LABEL_78:
  *(a1 + 40) |= v14;
LABEL_79:
  v31 = *(a2 + 44);
  if (!v31)
  {
    goto LABEL_90;
  }

  if (v31)
  {
    *(a1 + 308) = *(a2 + 308);
    if ((v31 & 2) == 0)
    {
LABEL_82:
      if ((v31 & 4) == 0)
      {
        goto LABEL_83;
      }

      goto LABEL_113;
    }
  }

  else if ((v31 & 2) == 0)
  {
    goto LABEL_82;
  }

  *(a1 + 309) = *(a2 + 309);
  if ((v31 & 4) == 0)
  {
LABEL_83:
    if ((v31 & 8) == 0)
    {
      goto LABEL_84;
    }

    goto LABEL_114;
  }

LABEL_113:
  *(a1 + 310) = *(a2 + 310);
  if ((v31 & 8) == 0)
  {
LABEL_84:
    if ((v31 & 0x10) == 0)
    {
      goto LABEL_85;
    }

    goto LABEL_115;
  }

LABEL_114:
  *(a1 + 311) = *(a2 + 311);
  if ((v31 & 0x10) == 0)
  {
LABEL_85:
    if ((v31 & 0x20) == 0)
    {
      goto LABEL_86;
    }

    goto LABEL_116;
  }

LABEL_115:
  *(a1 + 312) = *(a2 + 312);
  if ((v31 & 0x20) == 0)
  {
LABEL_86:
    if ((v31 & 0x40) == 0)
    {
      goto LABEL_87;
    }

LABEL_117:
    *(a1 + 316) = *(a2 + 316);
    if ((v31 & 0x80) == 0)
    {
      goto LABEL_89;
    }

    goto LABEL_88;
  }

LABEL_116:
  *(a1 + 313) = *(a2 + 313);
  if ((v31 & 0x40) != 0)
  {
    goto LABEL_117;
  }

LABEL_87:
  if ((v31 & 0x80) != 0)
  {
LABEL_88:
    *(a1 + 320) = *(a2 + 320);
  }

LABEL_89:
  *(a1 + 44) |= v31;
LABEL_90:
  if ((v31 & 0x100) != 0)
  {
    v32 = *(a2 + 324);
    *(a1 + 44) |= 0x100u;
    *(a1 + 324) = v32;
  }

  return result;
}

void sub_232CAB3C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_232CB5860(va);
  _Unwind_Resume(a1);
}

uint64_t sub_232CAB3F8(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_284815398;
  *(a1 + 8) = a2;
  *(a1 + 16) = &unk_284815438;
  sub_232CB5D24(a1 + 24, a2);
  *(a1 + 48) = 0;
  if (atomic_load_explicit(dword_2819347C8, memory_order_acquire))
  {
    sub_232CC0B20(dword_2819347C8);
  }

  *(a1 + 56) = &qword_27DDD5660;
  *(a1 + 64) = &qword_27DDD5660;
  *(a1 + 72) = &qword_27DDD5660;
  *(a1 + 80) = 16843008;
  return a1;
}

uint64_t *sub_232CAB4B4(uint64_t *a1)
{
  sub_232CAB4F0(a1);
  sub_232CA5C0C(a1 + 1);
  sub_232CB5DF0((a1 + 3));
  return a1;
}

uint64_t *sub_232CAB4F0(uint64_t *a1)
{
  v2 = a1[1];
  if ((v2 & 1) == 0)
  {
    if (!v2)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  if (*(v2 & 0xFFFFFFFFFFFFFFFELL))
  {
LABEL_3:
    sub_232CB5704(v14, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/builtin_pb/sentencepiece_model.pb.cc", 1972);
    v3 = sub_232CB571C(v14, "CHECK failed: GetArena() == nullptr: ");
    sub_232CB5858(&v13, &v3->__r_.__value_.__l.__data_);
    sub_232CB5860(v14);
  }

LABEL_4:
  if (a1[7] != &qword_27DDD5660)
  {
    v4 = sub_232CA7F94(a1 + 7);
    v5 = v4;
    if (*(v4 + 23) < 0)
    {
      operator delete(*v4);
    }

    MEMORY[0x238392C10](v5, 0x1012C40EC159624);
  }

  result = a1 + 8;
  if (a1[8] != &qword_27DDD5660)
  {
    v7 = sub_232CA7F94(result);
    v8 = v7;
    if (*(v7 + 23) < 0)
    {
      operator delete(*v7);
    }

    result = MEMORY[0x238392C10](v8, 0x1012C40EC159624);
  }

  v10 = a1[9];
  v9 = a1 + 9;
  if (v10 != &qword_27DDD5660)
  {
    v11 = sub_232CA7F94(v9);
    v12 = v11;
    if (*(v11 + 23) < 0)
    {
      operator delete(*v11);
    }

    return MEMORY[0x238392C10](v12, 0x1012C40EC159624);
  }

  return result;
}

void sub_232CAB62C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_232CB5860(va);
  _Unwind_Resume(a1);
}

void sub_232CAB650(uint64_t *a1)
{
  sub_232CAB4B4(a1);

  JUMPOUT(0x238392C10);
}

void sub_232CAB688(uint64_t a1)
{
  sub_232CAB4B4((a1 - 16));

  JUMPOUT(0x238392C10);
}

unsigned __int8 *sub_232CAB6C4(uint64_t a1)
{
  result = sub_232CB97A4((a1 + 24));
  v3 = *(a1 + 48);
  if ((v3 & 7) != 0)
  {
    if ((v3 & 1) == 0)
    {
      if ((v3 & 2) == 0)
      {
        goto LABEL_4;
      }

LABEL_10:
      v5 = *(a1 + 64) & 0xFFFFFFFFFFFFFFFELL;
      if (*(v5 + 23) < 0)
      {
        **v5 = 0;
        *(v5 + 8) = 0;
        if ((v3 & 4) == 0)
        {
          goto LABEL_17;
        }
      }

      else
      {
        *v5 = 0;
        *(v5 + 23) = 0;
        if ((v3 & 4) == 0)
        {
          goto LABEL_17;
        }
      }

      goto LABEL_14;
    }

    v4 = *(a1 + 56) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v4 + 23) < 0)
    {
      **v4 = 0;
      *(v4 + 8) = 0;
      if ((v3 & 2) != 0)
      {
        goto LABEL_10;
      }
    }

    else
    {
      *v4 = 0;
      *(v4 + 23) = 0;
      if ((v3 & 2) != 0)
      {
        goto LABEL_10;
      }
    }

LABEL_4:
    if ((v3 & 4) == 0)
    {
      goto LABEL_17;
    }

LABEL_14:
    v6 = *(a1 + 72) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v6 + 23) < 0)
    {
      **v6 = 0;
      *(v6 + 8) = 0;
    }

    else
    {
      *v6 = 0;
      *(v6 + 23) = 0;
    }
  }

LABEL_17:
  if ((v3 & 0x78) != 0)
  {
    *(a1 + 80) = 16843008;
  }

  *(a1 + 48) = 0;
  v7 = *(a1 + 8);
  if (v7)
  {
    v8 = v7 & 0xFFFFFFFFFFFFFFFELL;
    if (*(v8 + 31) < 0)
    {
      **(v8 + 8) = 0;
      *(v8 + 16) = 0;
    }

    else
    {
      *(v8 + 8) = 0;
      *(v8 + 31) = 0;
    }
  }

  return result;
}

char *sub_232CAB7D4(uint64_t a1, char *a2, int32x2_t *a3)
{
  v41 = a2;
  v5 = 0;
  if ((sub_232CA8068(a3, &v41, a3[11].u32[1]) & 1) == 0)
  {
    while (1)
    {
      v7 = v41 + 1;
      v8 = *v41;
      if ((*v41 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if ((*v7 & 0x80000000) == 0)
      {
        break;
      }

      v21 = sub_232CC2220(v41, v9 - 128);
      v41 = v21;
      if (!v21)
      {
        goto LABEL_76;
      }

      v7 = v21;
      v8 = v22;
LABEL_7:
      v10 = v8 >> 3;
      if (v8 >> 3 <= 3)
      {
        if (v10 == 1)
        {
          if (v8 != 10)
          {
            goto LABEL_57;
          }

          *(a1 + 48) |= 1u;
          v23 = *(a1 + 8);
          if (v23)
          {
            v23 = *(v23 & 0xFFFFFFFFFFFFFFFELL);
          }

          v24 = (a1 + 56);
LABEL_53:
          v28 = sub_232CB44C8(v24, v23);
          v29 = sub_232CC2264(v28, v41, a3);
          goto LABEL_54;
        }

        if (v10 == 2)
        {
          if (v8 != 18)
          {
            goto LABEL_57;
          }

          *(a1 + 48) |= 2u;
          v23 = *(a1 + 8);
          if (v23)
          {
            v23 = *(v23 & 0xFFFFFFFFFFFFFFFELL);
          }

          v24 = (a1 + 64);
          goto LABEL_53;
        }

        if (v10 != 3 || v8 != 24)
        {
          goto LABEL_57;
        }

        v5 |= 0x10u;
        v16 = v7 + 1;
        v15 = *v7;
        if ((v15 & 0x8000000000000000) == 0)
        {
          goto LABEL_26;
        }

        v17 = *v16;
        v15 = (v17 << 7) + v15 - 128;
        if ((v17 & 0x80000000) == 0)
        {
          v16 = v7 + 2;
LABEL_26:
          v41 = v16;
          *(a1 + 81) = v15 != 0;
          goto LABEL_55;
        }

        v39 = sub_232CC21D8(v7, v15);
        v41 = v39;
        *(a1 + 81) = v40 != 0;
        if (!v39)
        {
LABEL_76:
          v41 = 0;
          goto LABEL_2;
        }
      }

      else if (v8 >> 3 > 5)
      {
        if (v10 == 6)
        {
          if (v8 == 50)
          {
            *(a1 + 48) |= 4u;
            v23 = *(a1 + 8);
            if (v23)
            {
              v23 = *(v23 & 0xFFFFFFFFFFFFFFFELL);
            }

            v24 = (a1 + 72);
            goto LABEL_53;
          }

LABEL_57:
          if (v8)
          {
            v30 = (v8 & 7) == 4;
          }

          else
          {
            v30 = 1;
          }

          if (v30)
          {
            a3[10].i32[0] = v8 - 1;
            goto LABEL_2;
          }

          if (v8 < 0x648)
          {
            v31 = *(a1 + 8);
            if (v31)
            {
              v32 = (v31 & 0xFFFFFFFFFFFFFFFELL) + 8;
            }

            else
            {
              v32 = sub_232CA81A8((a1 + 8));
              v7 = v41;
            }

            v29 = sub_232CC2720(v8, v32, v7, a3);
          }

          else
          {
            v29 = sub_232CBACD8((a1 + 24), v8, v7, &unk_27DDD54E0, (a1 + 8), a3);
          }

LABEL_54:
          v41 = v29;
          if (!v29)
          {
            goto LABEL_76;
          }

          goto LABEL_55;
        }

        if (v10 != 200 || v8 != 64)
        {
          goto LABEL_57;
        }

        v5 |= 8u;
        v19 = v7 + 1;
        v18 = *v7;
        if ((v18 & 0x8000000000000000) == 0)
        {
          goto LABEL_33;
        }

        v20 = *v19;
        v18 = (v20 << 7) + v18 - 128;
        if ((v20 & 0x80000000) == 0)
        {
          v19 = v7 + 2;
LABEL_33:
          v41 = v19;
          *(a1 + 80) = v18 != 0;
          goto LABEL_55;
        }

        v37 = sub_232CC21D8(v7, v18);
        v41 = v37;
        *(a1 + 80) = v38 != 0;
        if (!v37)
        {
          goto LABEL_76;
        }
      }

      else if (v10 == 4)
      {
        if (v8 != 32)
        {
          goto LABEL_57;
        }

        v5 |= 0x20u;
        v26 = v7 + 1;
        v25 = *v7;
        if ((v25 & 0x8000000000000000) == 0)
        {
          goto LABEL_44;
        }

        v27 = *v26;
        v25 = (v27 << 7) + v25 - 128;
        if ((v27 & 0x80000000) == 0)
        {
          v26 = v7 + 2;
LABEL_44:
          v41 = v26;
          *(a1 + 82) = v25 != 0;
          goto LABEL_55;
        }

        v33 = sub_232CC21D8(v7, v25);
        v41 = v33;
        *(a1 + 82) = v34 != 0;
        if (!v33)
        {
          goto LABEL_76;
        }
      }

      else
      {
        if (v10 != 5 || v8 != 40)
        {
          goto LABEL_57;
        }

        v5 |= 0x40u;
        v12 = v7 + 1;
        v11 = *v7;
        if ((v11 & 0x8000000000000000) == 0)
        {
          goto LABEL_15;
        }

        v13 = *v12;
        v11 = (v13 << 7) + v11 - 128;
        if ((v13 & 0x80000000) == 0)
        {
          v12 = v7 + 2;
LABEL_15:
          v41 = v12;
          *(a1 + 83) = v11 != 0;
          goto LABEL_55;
        }

        v35 = sub_232CC21D8(v7, v11);
        v41 = v35;
        *(a1 + 83) = v36 != 0;
        if (!v35)
        {
          goto LABEL_76;
        }
      }

LABEL_55:
      if (sub_232CA8068(a3, &v41, a3[11].u32[1]))
      {
        goto LABEL_2;
      }
    }

    v7 = v41 + 2;
LABEL_6:
    v41 = v7;
    goto LABEL_7;
  }

LABEL_2:
  *(a1 + 48) |= v5;
  return v41;
}

char *sub_232CABBCC(uint64_t a1, char *a2, unint64_t *a3)
{
  v4 = a2;
  v6 = *(a1 + 48);
  if (v6)
  {
    v4 = sub_232CA6394(a3, 1, (*(a1 + 56) & 0xFFFFFFFFFFFFFFFELL), a2);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 0x10) == 0)
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

  v4 = sub_232CA6394(a3, 2, (*(a1 + 64) & 0xFFFFFFFFFFFFFFFELL), v4);
  if ((v6 & 0x10) == 0)
  {
LABEL_4:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_14;
  }

LABEL_11:
  if (*a3 <= v4)
  {
    v4 = sub_232CB4C78(a3, v4);
  }

  v7 = *(a1 + 81);
  *v4 = 24;
  v4[1] = v7;
  v4 += 2;
  if ((v6 & 0x20) == 0)
  {
LABEL_5:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_17;
  }

LABEL_14:
  if (*a3 <= v4)
  {
    v4 = sub_232CB4C78(a3, v4);
  }

  v8 = *(a1 + 82);
  *v4 = 32;
  v4[1] = v8;
  v4 += 2;
  if ((v6 & 0x40) == 0)
  {
LABEL_6:
    if ((v6 & 4) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_20;
  }

LABEL_17:
  if (*a3 <= v4)
  {
    v4 = sub_232CB4C78(a3, v4);
  }

  v9 = *(a1 + 83);
  *v4 = 40;
  v4[1] = v9;
  v4 += 2;
  if ((v6 & 4) == 0)
  {
LABEL_7:
    if ((v6 & 8) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_21;
  }

LABEL_20:
  v4 = sub_232CA6394(a3, 6, (*(a1 + 72) & 0xFFFFFFFFFFFFFFFELL), v4);
  if ((v6 & 8) == 0)
  {
    goto LABEL_24;
  }

LABEL_21:
  if (*a3 <= v4)
  {
    v4 = sub_232CB4C78(a3, v4);
  }

  v10 = *(a1 + 80);
  *v4 = 3264;
  v4[2] = v10;
  v4 += 3;
LABEL_24:
  v11 = sub_232CBBA8C(a1 + 24, 201, 0x20000000, v4, a3);
  v12 = v11;
  v13 = *(a1 + 8);
  if ((v13 & 1) == 0)
  {
    return v12;
  }

  v15 = v13 & 0xFFFFFFFFFFFFFFFELL;
  v16 = *(v15 + 31);
  if (v16 < 0)
  {
    v17 = *(v15 + 8);
    v16 = *(v15 + 16);
  }

  else
  {
    v17 = (v15 + 8);
  }

  if ((*a3 - v11) >= v16)
  {
    v18 = v16;
    memcpy(v11, v17, v16);
    v12 += v18;
    return v12;
  }

  return sub_232CB4D90(a3, v17, v16, v11);
}

uint64_t sub_232CABDDC(uint64_t a1)
{
  result = sub_232CBE6AC(a1 + 24);
  v3 = *(a1 + 48);
  if ((v3 & 0x7F) == 0)
  {
    goto LABEL_11;
  }

  if ((v3 & 1) == 0)
  {
    if ((v3 & 2) == 0)
    {
      goto LABEL_4;
    }

LABEL_16:
    v12 = *(a1 + 64) & 0xFFFFFFFFFFFFFFFELL;
    v13 = *(v12 + 23);
    v14 = *(v12 + 8);
    if ((v13 & 0x80u) == 0)
    {
      v14 = v13;
    }

    result += v14 + ((9 * (__clz(v14 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v3 & 4) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_5;
  }

  v9 = *(a1 + 56) & 0xFFFFFFFFFFFFFFFELL;
  v10 = *(v9 + 23);
  v11 = *(v9 + 8);
  if ((v10 & 0x80u) == 0)
  {
    v11 = v10;
  }

  result += v11 + ((9 * (__clz(v11 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v3 & 2) != 0)
  {
    goto LABEL_16;
  }

LABEL_4:
  if ((v3 & 4) != 0)
  {
LABEL_5:
    v4 = *(a1 + 72) & 0xFFFFFFFFFFFFFFFELL;
    v5 = *(v4 + 23);
    v6 = *(v4 + 8);
    if ((v5 & 0x80u) == 0)
    {
      v6 = v5;
    }

    result += v6 + ((9 * (__clz(v6 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_8:
  v7 = result + 3;
  if ((v3 & 8) == 0)
  {
    v7 = result;
  }

  result = v7 + ((v3 >> 4) & 2) + ((v3 >> 3) & 2) + ((v3 >> 5) & 2);
LABEL_11:
  v8 = *(a1 + 8);
  if (v8)
  {
    v15 = v8 & 0xFFFFFFFFFFFFFFFELL;
    v16 = *((v8 & 0xFFFFFFFFFFFFFFFELL) + 31);
    if (v16 < 0)
    {
      v16 = *(v15 + 16);
    }

    result += v16;
  }

  *(a1 + 52) = result;
  return result;
}

void sub_232CABF3C(uint64_t a1, void *lpsrc)
{
  if (!__dynamic_cast(lpsrc, &unk_284815C60, &unk_2848157E0, 0))
  {
    sub_232CA89AC();
  }

  sub_232CABFC4(a1, lpsrc);
}

void sub_232CABFC4(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    sub_232CB5704(v21, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/builtin_pb/sentencepiece_model.pb.cc", 2246);
    v4 = sub_232CB571C(v21, "CHECK failed: (&from) != (this): ");
    sub_232CB5858(&v20, &v4->__r_.__value_.__l.__data_);
    sub_232CB5860(v21);
  }

  sub_232CE835C(a1 + 24, a2 + 24);
  v5 = *(a2 + 8);
  if (v5)
  {
    v6 = v5 & 0xFFFFFFFFFFFFFFFELL;
    v7 = (v5 & 0xFFFFFFFFFFFFFFFELL) + 8;
    v8 = *(a1 + 8);
    if (v8)
    {
      v9 = ((v8 & 0xFFFFFFFFFFFFFFFELL) + 8);
    }

    else
    {
      v9 = sub_232CA81A8((a1 + 8));
    }

    v10 = *(v6 + 31);
    if (v10 >= 0)
    {
      v11 = v7;
    }

    else
    {
      v11 = *(v6 + 8);
    }

    if (v10 >= 0)
    {
      v12 = *(v6 + 31);
    }

    else
    {
      v12 = *(v6 + 16);
    }

    std::string::append(v9, v11, v12);
  }

  v13 = *(a2 + 48);
  if ((v13 & 0x7F) != 0)
  {
    if (v13)
    {
      v14 = *(a2 + 56);
      *(a1 + 48) |= 1u;
      v15 = *(a1 + 8);
      if (v15)
      {
        v15 = *(v15 & 0xFFFFFFFFFFFFFFFELL);
      }

      sub_232CB4490((a1 + 56), (v14 & 0xFFFFFFFFFFFFFFFELL), v15);
      if ((v13 & 2) == 0)
      {
LABEL_16:
        if ((v13 & 4) == 0)
        {
          goto LABEL_17;
        }

        goto LABEL_30;
      }
    }

    else if ((v13 & 2) == 0)
    {
      goto LABEL_16;
    }

    v16 = *(a2 + 64);
    *(a1 + 48) |= 2u;
    v17 = *(a1 + 8);
    if (v17)
    {
      v17 = *(v17 & 0xFFFFFFFFFFFFFFFELL);
    }

    sub_232CB4490((a1 + 64), (v16 & 0xFFFFFFFFFFFFFFFELL), v17);
    if ((v13 & 4) == 0)
    {
LABEL_17:
      if ((v13 & 8) == 0)
      {
        goto LABEL_18;
      }

      goto LABEL_33;
    }

LABEL_30:
    v18 = *(a2 + 72);
    *(a1 + 48) |= 4u;
    v19 = *(a1 + 8);
    if (v19)
    {
      v19 = *(v19 & 0xFFFFFFFFFFFFFFFELL);
    }

    sub_232CB4490((a1 + 72), (v18 & 0xFFFFFFFFFFFFFFFELL), v19);
    if ((v13 & 8) == 0)
    {
LABEL_18:
      if ((v13 & 0x10) == 0)
      {
        goto LABEL_19;
      }

      goto LABEL_34;
    }

LABEL_33:
    *(a1 + 80) = *(a2 + 80);
    if ((v13 & 0x10) == 0)
    {
LABEL_19:
      if ((v13 & 0x20) == 0)
      {
        goto LABEL_20;
      }

      goto LABEL_35;
    }

LABEL_34:
    *(a1 + 81) = *(a2 + 81);
    if ((v13 & 0x20) == 0)
    {
LABEL_20:
      if ((v13 & 0x40) == 0)
      {
LABEL_22:
        *(a1 + 48) |= v13;
        return;
      }

LABEL_21:
      *(a1 + 83) = *(a2 + 83);
      goto LABEL_22;
    }

LABEL_35:
    *(a1 + 82) = *(a2 + 82);
    if ((v13 & 0x40) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_21;
  }
}

void sub_232CAC190(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_232CB5860(va);
  _Unwind_Resume(a1);
}

void *sub_232CAC1C0(void *a1, uint64_t a2)
{
  *a1 = &unk_284815478;
  a1[1] = a2;
  a1[2] = 0;
  if (atomic_load_explicit(dword_281934800, memory_order_acquire))
  {
    sub_232CC0B20(dword_281934800);
  }

  a1[3] = &qword_27DDD5660;
  a1[4] = &qword_27DDD5660;
  return a1;
}

void *sub_232CAC230(void *a1)
{
  sub_232CAC264(a1);
  sub_232CA5C0C(a1 + 1);
  return a1;
}

uint64_t *sub_232CAC264(void *a1)
{
  v2 = a1[1];
  if ((v2 & 1) == 0)
  {
    if (!v2)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  if (*(v2 & 0xFFFFFFFFFFFFFFFELL))
  {
LABEL_3:
    sub_232CB5704(v12, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/builtin_pb/sentencepiece_model.pb.cc", 2362);
    v3 = sub_232CB571C(v12, "CHECK failed: GetArena() == nullptr: ");
    sub_232CB5858(&v11, &v3->__r_.__value_.__l.__data_);
    sub_232CB5860(v12);
  }

LABEL_4:
  result = a1 + 3;
  if (a1[3] != &qword_27DDD5660)
  {
    v5 = sub_232CA7F94(result);
    v6 = v5;
    if (*(v5 + 23) < 0)
    {
      operator delete(*v5);
    }

    result = MEMORY[0x238392C10](v6, 0x1012C40EC159624);
  }

  v8 = a1[4];
  v7 = a1 + 4;
  if (v8 != &qword_27DDD5660)
  {
    v9 = sub_232CA7F94(v7);
    v10 = v9;
    if (*(v9 + 23) < 0)
    {
      operator delete(*v9);
    }

    return MEMORY[0x238392C10](v10, 0x1012C40EC159624);
  }

  return result;
}

void sub_232CAC36C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_232CB5860(va);
  _Unwind_Resume(a1);
}

void sub_232CAC388(void *a1)
{
  sub_232CAC230(a1);

  JUMPOUT(0x238392C10);
}

uint64_t sub_232CAC3C0(uint64_t result)
{
  v1 = *(result + 16);
  if ((v1 & 3) != 0)
  {
    if (v1)
    {
      v2 = *(result + 24) & 0xFFFFFFFFFFFFFFFELL;
      if (*(v2 + 23) < 0)
      {
        **v2 = 0;
        *(v2 + 8) = 0;
        if ((v1 & 2) == 0)
        {
          goto LABEL_11;
        }

        goto LABEL_6;
      }

      *v2 = 0;
      *(v2 + 23) = 0;
    }

    if ((v1 & 2) == 0)
    {
      goto LABEL_11;
    }

LABEL_6:
    v3 = *(result + 32) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v3 + 23) < 0)
    {
      **v3 = 0;
      *(v3 + 8) = 0;
    }

    else
    {
      *v3 = 0;
      *(v3 + 23) = 0;
    }
  }

LABEL_11:
  *(result + 16) = 0;
  v4 = *(result + 8);
  if (v4)
  {
    v5 = v4 & 0xFFFFFFFFFFFFFFFELL;
    if (*(v5 + 31) < 0)
    {
      **(v5 + 8) = 0;
      *(v5 + 16) = 0;
    }

    else
    {
      *(v5 + 8) = 0;
      *(v5 + 31) = 0;
    }
  }

  return result;
}

char *sub_232CAC45C(uint64_t a1, char *a2, int32x2_t *a3)
{
  v20 = a2;
  for (i = a3[11].u32[1]; (sub_232CA8068(a3, &v20, i) & 1) == 0; i = a3[11].u32[1])
  {
    v6 = v20 + 1;
    v7 = *v20;
    if ((*v20 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    v8 = v7 + (*v6 << 7);
    v7 = v8 - 128;
    if ((*v6 & 0x80000000) == 0)
    {
      v6 = v20 + 2;
LABEL_6:
      v20 = v6;
      goto LABEL_7;
    }

    v17 = sub_232CC2220(v20, v8 - 128);
    v20 = v17;
    if (!v17)
    {
      return 0;
    }

    v6 = v17;
    v7 = v18;
LABEL_7:
    if (v7 >> 3 == 2)
    {
      if (v7 == 18)
      {
        *(a1 + 16) |= 2u;
        v14 = *(a1 + 8);
        if (v14)
        {
          v14 = *(v14 & 0xFFFFFFFFFFFFFFFELL);
        }

        v15 = (a1 + 32);
        goto LABEL_26;
      }
    }

    else if (v7 >> 3 == 1 && v7 == 10)
    {
      *(a1 + 16) |= 1u;
      v14 = *(a1 + 8);
      if (v14)
      {
        v14 = *(v14 & 0xFFFFFFFFFFFFFFFELL);
      }

      v15 = (a1 + 24);
LABEL_26:
      v16 = sub_232CB44C8(v15, v14);
      v13 = sub_232CC2264(v16, v20, a3);
      goto LABEL_27;
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
      a3[10].i32[0] = v7 - 1;
      return v20;
    }

    v11 = *(a1 + 8);
    if (v11)
    {
      v12 = (v11 & 0xFFFFFFFFFFFFFFFELL) + 8;
    }

    else
    {
      v12 = sub_232CA81A8((a1 + 8));
      v6 = v20;
    }

    v13 = sub_232CC2720(v7, v12, v6, a3);
LABEL_27:
    v20 = v13;
    if (!v13)
    {
      return 0;
    }
  }

  return v20;
}

char *sub_232CAC5E0(uint64_t a1, char *__dst, unint64_t *a3)
{
  v4 = __dst;
  v6 = *(a1 + 16);
  if (v6)
  {
    v4 = sub_232CA6394(a3, 1, (*(a1 + 24) & 0xFFFFFFFFFFFFFFFELL), __dst);
  }

  if ((v6 & 2) != 0)
  {
    v4 = sub_232CA6394(a3, 2, (*(a1 + 32) & 0xFFFFFFFFFFFFFFFELL), v4);
  }

  v7 = *(a1 + 8);
  if ((v7 & 1) == 0)
  {
    return v4;
  }

  v9 = v7 & 0xFFFFFFFFFFFFFFFELL;
  v10 = *(v9 + 31);
  if (v10 < 0)
  {
    v11 = *(v9 + 8);
    v10 = *(v9 + 16);
  }

  else
  {
    v11 = (v9 + 8);
  }

  if ((*a3 - v4) >= v10)
  {
    v12 = v10;
    memcpy(v4, v11, v10);
    v4 += v12;
    return v4;
  }

  return sub_232CB4D90(a3, v11, v10, v4);
}

uint64_t sub_232CAC6C8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if ((v1 & 3) == 0)
  {
    v2 = 0;
    goto LABEL_12;
  }

  if ((v1 & 1) == 0)
  {
    v2 = 0;
    if ((v1 & 2) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_9;
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
LABEL_9:
    v6 = *(a1 + 32) & 0xFFFFFFFFFFFFFFFELL;
    v7 = *(v6 + 23);
    v8 = *(v6 + 8);
    if ((v7 & 0x80u) == 0)
    {
      v8 = v7;
    }

    v2 += v8 + ((9 * (__clz(v8 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_12:
  v9 = *(a1 + 8);
  if (v9)
  {
    v11 = v9 & 0xFFFFFFFFFFFFFFFELL;
    v12 = *((v9 & 0xFFFFFFFFFFFFFFFELL) + 31);
    if (v12 < 0)
    {
      v12 = *(v11 + 16);
    }

    v2 += v12;
  }

  *(a1 + 20) = v2;
  return v2;
}

std::string *sub_232CAC798(std::string *a1, void *lpsrc)
{
  if (!__dynamic_cast(lpsrc, &unk_284815C60, &unk_284815818, 0))
  {
    sub_232CA89AC();
  }

  return sub_232CAC820(a1, lpsrc);
}

std::string *sub_232CAC820(std::string *result, uint64_t a2)
{
  v3 = result;
  if (a2 == result)
  {
    sub_232CB5704(v19, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/builtin_pb/sentencepiece_model.pb.cc", 2516);
    v4 = sub_232CB571C(v19, "CHECK failed: (&from) != (this): ");
    sub_232CB5858(&v18, &v4->__r_.__value_.__l.__data_);
    result = sub_232CB5860(v19);
  }

  v5 = *(a2 + 8);
  if (v5)
  {
    v6 = v5 & 0xFFFFFFFFFFFFFFFELL;
    v7 = (v5 & 0xFFFFFFFFFFFFFFFELL) + 8;
    size = v3->__r_.__value_.__l.__size_;
    if (size)
    {
      v9 = ((size & 0xFFFFFFFFFFFFFFFELL) + 8);
    }

    else
    {
      v9 = sub_232CA81A8(&v3->__r_.__value_.__l.__size_);
    }

    v10 = *(v6 + 31);
    if (v10 >= 0)
    {
      v11 = v7;
    }

    else
    {
      v11 = *(v6 + 8);
    }

    if (v10 >= 0)
    {
      v12 = *(v6 + 31);
    }

    else
    {
      v12 = *(v6 + 16);
    }

    result = std::string::append(v9, v11, v12);
  }

  v13 = *(a2 + 16);
  if ((v13 & 3) != 0)
  {
    if (v13)
    {
      v14 = *(a2 + 24);
      LODWORD(v3->__r_.__value_.__r.__words[2]) |= 1u;
      v15 = v3->__r_.__value_.__l.__size_;
      if (v15)
      {
        v15 = *(v15 & 0xFFFFFFFFFFFFFFFELL);
      }

      result = sub_232CB4490(&v3[1], (v14 & 0xFFFFFFFFFFFFFFFELL), v15);
    }

    if ((v13 & 2) != 0)
    {
      v16 = *(a2 + 32);
      LODWORD(v3->__r_.__value_.__r.__words[2]) |= 2u;
      v17 = v3->__r_.__value_.__l.__size_;
      if (v17)
      {
        v17 = *(v17 & 0xFFFFFFFFFFFFFFFELL);
      }

      return sub_232CB4490(&v3[1].__r_.__value_.__l.__size_, (v16 & 0xFFFFFFFFFFFFFFFELL), v17);
    }
  }

  return result;
}

void sub_232CAC954(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_232CB5860(va);
  _Unwind_Resume(a1);
}

uint64_t sub_232CAC984(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_2848154F8;
  *(a1 + 8) = a2;
  sub_232CB5D24(a1 + 16, a2);
  *(a1 + 40) = a2;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  if (atomic_load_explicit(dword_2819347E0, memory_order_acquire))
  {
    sub_232CC0B20(dword_2819347E0);
  }

  return a1;
}

void sub_232CACA04(_Unwind_Exception *a1)
{
  sub_232CB0088(v2);
  sub_232CB5DF0(v1 + 16);
  _Unwind_Resume(a1);
}

uint64_t sub_232CACA20(uint64_t a1)
{
  v3 = (a1 + 8);
  v2 = *(a1 + 8);
  if (v2)
  {
    if (!*(v2 & 0xFFFFFFFFFFFFFFFELL))
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  if (v2)
  {
LABEL_3:
    sub_232CB5704(v7, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/builtin_pb/sentencepiece_model.pb.cc", 2589);
    v4 = sub_232CB571C(v7, "CHECK failed: GetArena() == nullptr: ");
    sub_232CB5858(&v6, &v4->__r_.__value_.__l.__data_);
    sub_232CB5860(v7);
  }

LABEL_4:
  sub_232CA5C0C(v3);
  sub_232CB0088((a1 + 40));
  sub_232CB5DF0(a1 + 16);
  return a1;
}

void sub_232CACAC0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_232CB5860(va);
  sub_232CB39D0(a1);
}

void sub_232CACAE4(uint64_t a1)
{
  sub_232CACA20(a1);

  JUMPOUT(0x238392C10);
}

uint64_t sub_232CACB1C(uint64_t a1)
{
  sub_232CB97A4((a1 + 16));
  result = sub_232CAFD34(a1 + 40);
  v3 = *(a1 + 8);
  if (v3)
  {
    v4 = v3 & 0xFFFFFFFFFFFFFFFELL;
    if (*(v4 + 31) < 0)
    {
      **(v4 + 8) = 0;
      *(v4 + 16) = 0;
    }

    else
    {
      *(v4 + 8) = 0;
      *(v4 + 31) = 0;
    }
  }

  return result;
}

char *sub_232CACB78(uint64_t a1, char *a2, int32x2_t *a3)
{
  v23 = a2;
  if ((sub_232CA8068(a3, &v23, a3[11].u32[1]) & 1) == 0)
  {
    while (1)
    {
      v5 = v23 + 1;
      v6 = *v23;
      if ((*v23 & 0x80000000) == 0)
      {
        goto LABEL_5;
      }

      v7 = v6 + (*v5 << 7);
      v6 = v7 - 128;
      if ((*v5 & 0x80000000) == 0)
      {
        break;
      }

      v20 = sub_232CC2220(v23, v7 - 128);
      v23 = v20;
      if (!v20)
      {
        return 0;
      }

      v5 = v20;
      v6 = v21;
LABEL_6:
      if (v6 == 10)
      {
        v10 = v5 - 1;
        while (1)
        {
          v11 = v10 + 1;
          v23 = v10 + 1;
          v12 = *(a1 + 56);
          if (!v12)
          {
            break;
          }

          v17 = *(a1 + 48);
          v13 = *v12;
          if (v17 < *v12)
          {
            *(a1 + 48) = v17 + 1;
            v14 = *&v12[2 * v17 + 2];
            goto LABEL_20;
          }

          if (v13 == *(a1 + 52))
          {
            goto LABEL_16;
          }

LABEL_17:
          *v12 = v13 + 1;
          v14 = sub_232CAEED4(*(a1 + 40));
          v15 = *(a1 + 48);
          v16 = *(a1 + 56) + 8 * v15;
          *(a1 + 48) = v15 + 1;
          *(v16 + 8) = v14;
          v11 = v23;
LABEL_20:
          v10 = sub_232CE7F74(a3, v14, v11);
          v23 = v10;
          if (!v10)
          {
            return 0;
          }

          if (*a3 <= v10 || *v10 != 10)
          {
            goto LABEL_30;
          }
        }

        v13 = *(a1 + 52);
LABEL_16:
        sub_232CC74E8((a1 + 40), v13 + 1);
        v12 = *(a1 + 56);
        v13 = *v12;
        goto LABEL_17;
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
        a3[10].i32[0] = v6 - 1;
        return v23;
      }

      if (v6 < 0x640)
      {
        v18 = *(a1 + 8);
        if (v18)
        {
          v19 = (v18 & 0xFFFFFFFFFFFFFFFELL) + 8;
        }

        else
        {
          v19 = sub_232CA81A8((a1 + 8));
          v5 = v23;
        }

        v9 = sub_232CC2720(v6, v19, v5, a3);
      }

      else
      {
        v9 = sub_232CBACD8((a1 + 16), v6, v5, &unk_27DDD5560, (a1 + 8), a3);
      }

      v23 = v9;
      if (!v9)
      {
        return 0;
      }

LABEL_30:
      if (sub_232CA8068(a3, &v23, a3[11].u32[1]))
      {
        return v23;
      }
    }

    v5 = v23 + 2;
LABEL_5:
    v23 = v5;
    goto LABEL_6;
  }

  return v23;
}

char *sub_232CACD74(uint64_t a1, char *a2, unint64_t *a3)
{
  v6 = *(a1 + 48);
  if (v6)
  {
    for (i = 0; i != v6; ++i)
    {
      if (*a3 <= a2)
      {
        a2 = sub_232CB4C78(a3, a2);
      }

      v8 = sub_232CAFAB0(a1 + 40, i);
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

      a2 = sub_232CAC5E0(v8, v10, a3);
    }
  }

  v14 = sub_232CBBA8C(a1 + 16, 200, 0x20000000, a2, a3);
  v15 = v14;
  v16 = *(a1 + 8);
  if ((v16 & 1) == 0)
  {
    return v15;
  }

  v18 = v16 & 0xFFFFFFFFFFFFFFFELL;
  v19 = *(v18 + 31);
  if (v19 < 0)
  {
    v20 = *(v18 + 8);
    v19 = *(v18 + 16);
  }

  else
  {
    v20 = (v18 + 8);
  }

  if ((*a3 - v14) >= v19)
  {
    v21 = v19;
    memcpy(v14, v20, v19);
    v15 += v21;
    return v15;
  }

  return sub_232CB4D90(a3, v20, v19, v14);
}

uint64_t sub_232CACEF8(uint64_t a1)
{
  v2 = sub_232CBE6AC(a1 + 16);
  v3 = *(a1 + 48);
  v4 = v2 + v3;
  v5 = *(a1 + 56);
  if (v5)
  {
    v6 = (v5 + 8);
  }

  else
  {
    v6 = 0;
  }

  if (v3)
  {
    v7 = 8 * v3;
    do
    {
      v8 = *v6++;
      v9 = sub_232CAC6C8(v8);
      v4 += v9 + ((9 * (__clz(v9 | 1) ^ 0x1F) + 73) >> 6);
      v7 -= 8;
    }

    while (v7);
  }

  v10 = *(a1 + 8);
  if (v10)
  {
    v12 = v10 & 0xFFFFFFFFFFFFFFFELL;
    v13 = *((v10 & 0xFFFFFFFFFFFFFFFELL) + 31);
    if (v13 < 0)
    {
      v13 = *(v12 + 16);
    }

    v4 += v13;
  }

  *(a1 + 64) = v4;
  return v4;
}

uint64_t sub_232CACFA0(uint64_t a1, void *lpsrc)
{
  if (!__dynamic_cast(lpsrc, &unk_284815C60, &unk_284815830, 0))
  {
    sub_232CA89AC();
  }

  return sub_232CAD028(a1, lpsrc);
}

uint64_t sub_232CAD028(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    sub_232CB5704(v15, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/builtin_pb/sentencepiece_model.pb.cc", 2724);
    v4 = sub_232CB571C(v15, "CHECK failed: (&from) != (this): ");
    sub_232CB5858(&v14, &v4->__r_.__value_.__l.__data_);
    sub_232CB5860(v15);
  }

  sub_232CE835C(a1 + 16, a2 + 16);
  v5 = *(a2 + 8);
  if (v5)
  {
    v6 = v5 & 0xFFFFFFFFFFFFFFFELL;
    v7 = (v5 & 0xFFFFFFFFFFFFFFFELL) + 8;
    v8 = *(a1 + 8);
    if (v8)
    {
      v9 = ((v8 & 0xFFFFFFFFFFFFFFFELL) + 8);
    }

    else
    {
      v9 = sub_232CA81A8((a1 + 8));
    }

    v10 = *(v6 + 31);
    if (v10 >= 0)
    {
      v11 = v7;
    }

    else
    {
      v11 = *(v6 + 8);
    }

    if (v10 >= 0)
    {
      v12 = *(v6 + 31);
    }

    else
    {
      v12 = *(v6 + 16);
    }

    std::string::append(v9, v11, v12);
  }

  return sub_232CB0148(a1 + 40, a2 + 40);
}

void sub_232CAD100(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_232CB5860(va);
  _Unwind_Resume(a1);
}

void *sub_232CAD130(void *a1, uint64_t a2)
{
  *a1 = &unk_284815578;
  a1[1] = a2;
  sub_232CB5D24((a1 + 2), a2);
  a1[5] = 0;
  if (atomic_load_explicit(dword_2819347B0, memory_order_acquire))
  {
    sub_232CC0B20(dword_2819347B0);
  }

  a1[6] = &qword_27DDD5660;
  a1[7] = 0x100000000;
  return a1;
}

uint64_t sub_232CAD1BC(uint64_t a1)
{
  sub_232CAD1F8(a1);
  sub_232CA5C0C((a1 + 8));
  sub_232CB5DF0(a1 + 16);
  return a1;
}

uint64_t sub_232CAD1F8(uint64_t result)
{
  v1 = result;
  v2 = *(result + 8);
  if ((v2 & 1) == 0)
  {
    if (!v2)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  if (*(v2 & 0xFFFFFFFFFFFFFFFELL))
  {
LABEL_3:
    sub_232CB5704(v9, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/builtin_pb/sentencepiece_model.pb.cc", 2813);
    v3 = sub_232CB571C(v9, "CHECK failed: GetArena() == nullptr: ");
    sub_232CB5858(&v8, &v3->__r_.__value_.__l.__data_);
    result = sub_232CB5860(v9);
  }

LABEL_4:
  v5 = *(v1 + 48);
  v4 = (v1 + 48);
  if (v5 != &qword_27DDD5660)
  {
    v6 = sub_232CA7F94(v4);
    v7 = v6;
    if (*(v6 + 23) < 0)
    {
      operator delete(*v6);
    }

    return MEMORY[0x238392C10](v7, 0x1012C40EC159624);
  }

  return result;
}

void sub_232CAD2C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_232CB5860(va);
  _Unwind_Resume(a1);
}

void sub_232CAD2DC(uint64_t a1)
{
  sub_232CAD1BC(a1);

  JUMPOUT(0x238392C10);
}

unsigned __int8 *sub_232CAD314(uint64_t a1)
{
  result = sub_232CB97A4((a1 + 16));
  v3 = *(a1 + 40);
  if (v3)
  {
    v4 = *(a1 + 48) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v4 + 23) < 0)
    {
      **v4 = 0;
      *(v4 + 8) = 0;
    }

    else
    {
      *v4 = 0;
      *(v4 + 23) = 0;
    }
  }

  if ((v3 & 6) != 0)
  {
    *(a1 + 56) = 0x100000000;
  }

  *(a1 + 40) = 0;
  v5 = *(a1 + 8);
  if (v5)
  {
    v6 = v5 & 0xFFFFFFFFFFFFFFFELL;
    if (*(v6 + 31) < 0)
    {
      **(v6 + 8) = 0;
      *(v6 + 16) = 0;
    }

    else
    {
      *(v6 + 8) = 0;
      *(v6 + 31) = 0;
    }
  }

  return result;
}

char *sub_232CAD3AC(uint64_t a1, char *a2, int32x2_t *a3)
{
  v23 = a2;
  v5 = 0;
  if ((sub_232CA8068(a3, &v23, a3[11].u32[1]) & 1) == 0)
  {
    while (1)
    {
      v7 = v23 + 1;
      v8 = *v23;
      if ((*v23 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if ((*v7 & 0x80000000) == 0)
      {
        break;
      }

      v19 = sub_232CC2220(v23, v9 - 128);
      v23 = v19;
      if (!v19)
      {
        goto LABEL_44;
      }

      v7 = v19;
      v8 = v20;
LABEL_7:
      v10 = v8 >> 3;
      if (v8 >> 3 == 3)
      {
        if (v8 == 24)
        {
          v15 = v7 + 1;
          v14 = *v7;
          if ((v14 & 0x8000000000000000) == 0)
          {
            goto LABEL_25;
          }

          v16 = *v15;
          v14 = (v16 << 7) + v14 - 128;
          if (v16 < 0)
          {
            v23 = sub_232CC21D8(v7, v14);
            if (!v23)
            {
LABEL_44:
              v23 = 0;
              goto LABEL_2;
            }
          }

          else
          {
            v15 = v7 + 2;
LABEL_25:
            v23 = v15;
          }

          if ((v14 - 1) > 5)
          {
            sub_232CB06C4((a1 + 8), v14);
          }

          else
          {
            *(a1 + 40) |= 4u;
            *(a1 + 60) = v14;
          }

          goto LABEL_37;
        }
      }

      else if (v10 == 2)
      {
        if (v8 == 21)
        {
          v5 |= 2u;
          *(a1 + 56) = *v7;
          v23 = v7 + 4;
          goto LABEL_37;
        }
      }

      else if (v10 == 1 && v8 == 10)
      {
        *(a1 + 40) |= 1u;
        v17 = *(a1 + 8);
        if (v17)
        {
          v17 = *(v17 & 0xFFFFFFFFFFFFFFFELL);
        }

        v18 = sub_232CB44C8((a1 + 48), v17);
        v13 = sub_232CC2264(v18, v23, a3);
        goto LABEL_36;
      }

      if (v8)
      {
        v12 = (v8 & 7) == 4;
      }

      else
      {
        v12 = 1;
      }

      if (v12)
      {
        a3[10].i32[0] = v8 - 1;
        goto LABEL_2;
      }

      if (v8 < 0x640)
      {
        v21 = *(a1 + 8);
        if (v21)
        {
          v22 = (v21 & 0xFFFFFFFFFFFFFFFELL) + 8;
        }

        else
        {
          v22 = sub_232CA81A8((a1 + 8));
          v7 = v23;
        }

        v13 = sub_232CC2720(v8, v22, v7, a3);
      }

      else
      {
        v13 = sub_232CBACD8((a1 + 16), v8, v7, qword_27DDD55A8, (a1 + 8), a3);
      }

LABEL_36:
      v23 = v13;
      if (!v13)
      {
        goto LABEL_44;
      }

LABEL_37:
      if (sub_232CA8068(a3, &v23, a3[11].u32[1]))
      {
        goto LABEL_2;
      }
    }

    v7 = v23 + 2;
LABEL_6:
    v23 = v7;
    goto LABEL_7;
  }

LABEL_2:
  *(a1 + 40) |= v5;
  return v23;
}

char *sub_232CAD5F4(uint64_t a1, char *a2, unint64_t *a3)
{
  v4 = a2;
  v6 = *(a1 + 40);
  if (v6)
  {
    v4 = sub_232CA6394(a3, 1, (*(a1 + 48) & 0xFFFFFFFFFFFFFFFELL), a2);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_18;
      }

      goto LABEL_9;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  if (*a3 <= v4)
  {
    v4 = sub_232CB4C78(a3, v4);
  }

  v7 = *(a1 + 56);
  *v4 = 21;
  *(v4 + 1) = v7;
  v4 += 5;
  if ((v6 & 4) != 0)
  {
LABEL_9:
    if (*a3 <= v4)
    {
      v4 = sub_232CB4C78(a3, v4);
    }

    v8 = *(a1 + 60);
    *v4 = 24;
    if (v8 > 0x7F)
    {
      v4[1] = v8 | 0x80;
      v9 = v8 >> 7;
      if (v8 >> 14)
      {
        v4 += 3;
        do
        {
          *(v4 - 1) = v9 | 0x80;
          v10 = v9 >> 7;
          ++v4;
          v11 = v9 >> 14;
          v9 >>= 7;
        }

        while (v11);
        *(v4 - 1) = v10;
      }

      else
      {
        v4[2] = v9;
        v4 += 3;
      }
    }

    else
    {
      v4[1] = v8;
      v4 += 2;
    }
  }

LABEL_18:
  v12 = sub_232CBBA8C(a1 + 16, 200, 0x20000000, v4, a3);
  v13 = v12;
  v14 = *(a1 + 8);
  if ((v14 & 1) == 0)
  {
    return v13;
  }

  v16 = v14 & 0xFFFFFFFFFFFFFFFELL;
  v17 = *(v16 + 31);
  if (v17 < 0)
  {
    v18 = *(v16 + 8);
    v17 = *(v16 + 16);
  }

  else
  {
    v18 = (v16 + 8);
  }

  if ((*a3 - v12) >= v17)
  {
    v19 = v17;
    memcpy(v12, v18, v17);
    v13 += v19;
    return v13;
  }

  return sub_232CB4D90(a3, v18, v17, v12);
}

uint64_t sub_232CAD79C(uint64_t a1)
{
  result = sub_232CBE6AC(a1 + 16);
  v3 = *(a1 + 40);
  if ((v3 & 7) != 0)
  {
    if (v3)
    {
      v4 = *(a1 + 48) & 0xFFFFFFFFFFFFFFFELL;
      v5 = *(v4 + 23);
      v6 = *(v4 + 8);
      if ((v5 & 0x80u) == 0)
      {
        v6 = v5;
      }

      result += v6 + ((9 * (__clz(v6 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    if ((v3 & 2) != 0)
    {
      result += 5;
    }

    if ((v3 & 4) != 0)
    {
      v7 = *(a1 + 60);
      if (v7 < 0)
      {
        v8 = 11;
      }

      else
      {
        v8 = ((9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6) + 1;
      }

      result += v8;
    }
  }

  v9 = *(a1 + 8);
  if (v9)
  {
    v10 = v9 & 0xFFFFFFFFFFFFFFFELL;
    v11 = *((v9 & 0xFFFFFFFFFFFFFFFELL) + 31);
    if (v11 < 0)
    {
      v11 = *(v10 + 16);
    }

    result += v11;
  }

  *(a1 + 44) = result;
  return result;
}

void sub_232CAD878(uint64_t a1, void *lpsrc)
{
  if (!__dynamic_cast(lpsrc, &unk_284815C60, &unk_284815848, 0))
  {
    sub_232CA89AC();
  }

  sub_232CAD900(a1, lpsrc);
}

void sub_232CAD900(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    sub_232CB5704(v17, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/builtin_pb/sentencepiece_model.pb.cc", 3001);
    v4 = sub_232CB571C(v17, "CHECK failed: (&from) != (this): ");
    sub_232CB5858(&v16, &v4->__r_.__value_.__l.__data_);
    sub_232CB5860(v17);
  }

  sub_232CE835C(a1 + 16, a2 + 16);
  v5 = *(a2 + 8);
  if (v5)
  {
    v6 = v5 & 0xFFFFFFFFFFFFFFFELL;
    v7 = (v5 & 0xFFFFFFFFFFFFFFFELL) + 8;
    v8 = *(a1 + 8);
    if (v8)
    {
      v9 = ((v8 & 0xFFFFFFFFFFFFFFFELL) + 8);
    }

    else
    {
      v9 = sub_232CA81A8((a1 + 8));
    }

    v10 = *(v6 + 31);
    if (v10 >= 0)
    {
      v11 = v7;
    }

    else
    {
      v11 = *(v6 + 8);
    }

    if (v10 >= 0)
    {
      v12 = *(v6 + 31);
    }

    else
    {
      v12 = *(v6 + 16);
    }

    std::string::append(v9, v11, v12);
  }

  v13 = *(a2 + 40);
  if ((v13 & 7) != 0)
  {
    if (v13)
    {
      v14 = *(a2 + 48);
      *(a1 + 40) |= 1u;
      v15 = *(a1 + 8);
      if (v15)
      {
        v15 = *(v15 & 0xFFFFFFFFFFFFFFFELL);
      }

      sub_232CB4490((a1 + 48), (v14 & 0xFFFFFFFFFFFFFFFELL), v15);
      if ((v13 & 2) == 0)
      {
LABEL_16:
        if ((v13 & 4) == 0)
        {
LABEL_18:
          *(a1 + 40) |= v13;
          return;
        }

LABEL_17:
        *(a1 + 60) = *(a2 + 60);
        goto LABEL_18;
      }
    }

    else if ((v13 & 2) == 0)
    {
      goto LABEL_16;
    }

    *(a1 + 56) = *(a2 + 56);
    if ((v13 & 4) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }
}

void sub_232CADA3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_232CB5860(va);
  _Unwind_Resume(a1);
}

uint64_t sub_232CADA6C(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_2848155F8;
  *(a1 + 8) = a2;
  *(a1 + 16) = &unk_284815710;
  sub_232CB5D24(a1 + 24, a2);
  *(a1 + 56) = a2;
  *(a1 + 48) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  if (atomic_load_explicit(dword_281934778, memory_order_acquire))
  {
    sub_232CC0B20(dword_281934778);
  }

  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  return a1;
}

void sub_232CADB18(_Unwind_Exception *a1)
{
  sub_232CB02F4(v2);
  sub_232CB5DF0(v1 + 24);
  _Unwind_Resume(a1);
}

uint64_t *sub_232CADB38(uint64_t *a1)
{
  sub_232CADB7C(a1);
  sub_232CA5C0C(a1 + 1);
  sub_232CB02F4(a1 + 7);
  sub_232CB5DF0((a1 + 3));
  return a1;
}

uint64_t *sub_232CADB7C(uint64_t *result)
{
  v1 = result;
  v2 = result[1];
  if ((v2 & 1) == 0)
  {
    if (!v2)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  if (*(v2 & 0xFFFFFFFFFFFFFFFELL))
  {
LABEL_3:
    sub_232CB5704(v12, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/builtin_pb/sentencepiece_model.pb.cc", 3145);
    v3 = sub_232CB571C(v12, "CHECK failed: GetArena() == nullptr: ");
    sub_232CB5858(&v11, &v3->__r_.__value_.__l.__data_);
    result = sub_232CB5860(v12);
  }

LABEL_4:
  if (v1 != &unk_27DDD55E8)
  {
    v4 = *(v1 + 80);
    if (v4)
    {
      v5 = sub_232CA8DE8(v4);
      MEMORY[0x238392C10](v5, 0x10A1C4074230EEALL);
    }

    v6 = *(v1 + 88);
    if (v6)
    {
      v7 = sub_232CAB4B4(v6);
      MEMORY[0x238392C10](v7, 0x10A1C402CDD3876);
    }

    v8 = *(v1 + 96);
    if (v8)
    {
      v9 = sub_232CACA20(v8);
      MEMORY[0x238392C10](v9, 0x10A1C4075D007F8);
    }

    result = *(v1 + 104);
    if (result)
    {
      v10 = sub_232CAB4B4(result);
      return MEMORY[0x238392C10](v10, 0x10A1C402CDD3876);
    }
  }

  return result;
}

void sub_232CADC84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_232CB5860(va);
  _Unwind_Resume(a1);
}

void sub_232CADCA8(uint64_t *a1)
{
  sub_232CADB38(a1);

  JUMPOUT(0x238392C10);
}

void sub_232CADCE0(uint64_t a1)
{
  sub_232CADB38((a1 - 16));

  JUMPOUT(0x238392C10);
}

uint64_t sub_232CADD1C(uint64_t a1)
{
  sub_232CB97A4((a1 + 24));
  result = sub_232CAFDE4((a1 + 56));
  v3 = *(a1 + 48);
  if ((v3 & 0xF) != 0)
  {
    if (v3)
    {
      v4 = *(a1 + 80);
      if (!v4)
      {
        sub_232CB5704(v15, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/builtin_pb/sentencepiece_model.pb.cc", 3178);
        v5 = sub_232CB571C(v15, "CHECK failed: trainer_spec_ != nullptr: ");
        sub_232CB5858(&v14, &v5->__r_.__value_.__l.__data_);
        sub_232CB5860(v15);
        v4 = *(a1 + 80);
      }

      result = sub_232CA90F8(v4);
    }

    if ((v3 & 2) != 0)
    {
      v6 = *(a1 + 88);
      if (!v6)
      {
        sub_232CB5704(v15, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/builtin_pb/sentencepiece_model.pb.cc", 3182);
        v7 = sub_232CB571C(v15, "CHECK failed: normalizer_spec_ != nullptr: ");
        sub_232CB5858(&v14, &v7->__r_.__value_.__l.__data_);
        sub_232CB5860(v15);
        v6 = *(a1 + 88);
      }

      result = sub_232CAB6C4(v6);
    }

    if ((v3 & 4) != 0)
    {
      v8 = *(a1 + 96);
      if (!v8)
      {
        sub_232CB5704(v15, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/builtin_pb/sentencepiece_model.pb.cc", 3186);
        v9 = sub_232CB571C(v15, "CHECK failed: self_test_data_ != nullptr: ");
        sub_232CB5858(&v14, &v9->__r_.__value_.__l.__data_);
        sub_232CB5860(v15);
        v8 = *(a1 + 96);
      }

      result = sub_232CACB1C(v8);
    }

    if ((v3 & 8) != 0)
    {
      v10 = *(a1 + 104);
      if (!v10)
      {
        sub_232CB5704(v15, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/builtin_pb/sentencepiece_model.pb.cc", 3190);
        v11 = sub_232CB571C(v15, "CHECK failed: denormalizer_spec_ != nullptr: ");
        sub_232CB5858(&v14, &v11->__r_.__value_.__l.__data_);
        sub_232CB5860(v15);
        v10 = *(a1 + 104);
      }

      result = sub_232CAB6C4(v10);
    }
  }

  *(a1 + 48) = 0;
  v12 = *(a1 + 8);
  if (v12)
  {
    v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
    if (*(v13 + 31) < 0)
    {
      **(v13 + 8) = 0;
      *(v13 + 16) = 0;
    }

    else
    {
      *(v13 + 8) = 0;
      *(v13 + 31) = 0;
    }
  }

  return result;
}

void sub_232CADED0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_232CB5860(va);
  _Unwind_Resume(a1);
}

char *sub_232CADF00(uint64_t a1, char *a2, int32x2_t *a3)
{
  v32 = a2;
  if ((sub_232CA8068(a3, &v32, a3[11].u32[1]) & 1) == 0)
  {
    while (1)
    {
      v6 = v32 + 1;
      v7 = *v32;
      if ((*v32 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      v8 = v7 + (*v6 << 7);
      v7 = v8 - 128;
      if ((*v6 & 0x80000000) == 0)
      {
        break;
      }

      v28 = sub_232CC2220(v32, v8 - 128);
      v32 = v28;
      if (!v28)
      {
        return 0;
      }

      v6 = v28;
      v7 = v29;
LABEL_7:
      v9 = v7 >> 3;
      if (v7 >> 3 > 2)
      {
        if (v9 == 3)
        {
          if (v7 == 26)
          {
            *(a1 + 48) |= 2u;
            v10 = *(a1 + 88);
            if (!v10)
            {
              v16 = *(a1 + 8);
              if (v16)
              {
                v16 = *(v16 & 0xFFFFFFFFFFFFFFFELL);
              }

              v10 = sub_232CAEE04(v16);
              *(a1 + 88) = v10;
LABEL_32:
              v6 = v32;
            }

LABEL_33:
            v15 = sub_232CE81CC(a3, v10, v6);
            goto LABEL_65;
          }
        }

        else if (v9 == 4)
        {
          if (v7 == 34)
          {
            *(a1 + 48) |= 4u;
            v17 = *(a1 + 96);
            if (!v17)
            {
              v18 = *(a1 + 8);
              if (v18)
              {
                v18 = *(v18 & 0xFFFFFFFFFFFFFFFELL);
              }

              v17 = sub_232CAEFA4(v18);
              *(a1 + 96) = v17;
              v6 = v32;
            }

            v15 = sub_232CE8294(a3, v17, v6);
            goto LABEL_65;
          }
        }

        else if (v9 == 5 && v7 == 42)
        {
          *(a1 + 48) |= 8u;
          v10 = *(a1 + 104);
          if (!v10)
          {
            v11 = *(a1 + 8);
            if (v11)
            {
              v11 = *(v11 & 0xFFFFFFFFFFFFFFFELL);
            }

            v10 = sub_232CAEE04(v11);
            *(a1 + 104) = v10;
            goto LABEL_32;
          }

          goto LABEL_33;
        }

        goto LABEL_54;
      }

      if (v9 == 1)
      {
        if (v7 != 10)
        {
          goto LABEL_54;
        }

        v19 = v6 - 1;
        while (2)
        {
          v20 = v19 + 1;
          v32 = v19 + 1;
          v21 = *(a1 + 72);
          if (!v21)
          {
            v22 = *(a1 + 68);
            goto LABEL_44;
          }

          v26 = *(a1 + 64);
          v22 = *v21;
          if (v26 >= *v21)
          {
            if (v22 == *(a1 + 68))
            {
LABEL_44:
              sub_232CC74E8((a1 + 56), v22 + 1);
              v21 = *(a1 + 72);
              v22 = *v21;
            }

            *v21 = v22 + 1;
            v23 = sub_232CAF074(*(a1 + 56));
            v24 = *(a1 + 64);
            v25 = *(a1 + 72) + 8 * v24;
            *(a1 + 64) = v24 + 1;
            *(v25 + 8) = v23;
            v20 = v32;
          }

          else
          {
            *(a1 + 64) = v26 + 1;
            v23 = *&v21[2 * v26 + 2];
          }

          v19 = sub_232CE803C(a3, v23, v20);
          v32 = v19;
          if (!v19)
          {
            return 0;
          }

          if (*a3 <= v19 || *v19 != 10)
          {
            goto LABEL_66;
          }

          continue;
        }
      }

      if (v9 == 2 && v7 == 18)
      {
        *(a1 + 48) |= 1u;
        v13 = *(a1 + 80);
        if (!v13)
        {
          v14 = *(a1 + 8);
          if (v14)
          {
            v14 = *(v14 & 0xFFFFFFFFFFFFFFFELL);
          }

          v13 = sub_232CAED34(v14);
          *(a1 + 80) = v13;
          v6 = v32;
        }

        sub_232CE8104(a3, v13, v6);
        goto LABEL_65;
      }

LABEL_54:
      if (v7)
      {
        v27 = (v7 & 7) == 4;
      }

      else
      {
        v27 = 1;
      }

      if (v27)
      {
        a3[10].i32[0] = v7 - 1;
        return v32;
      }

      if (v7 < 0x640)
      {
        v30 = *(a1 + 8);
        if (v30)
        {
          v31 = (v30 & 0xFFFFFFFFFFFFFFFELL) + 8;
        }

        else
        {
          v31 = sub_232CA81A8((a1 + 8));
          v6 = v32;
        }

        v15 = sub_232CC2720(v7, v31, v6, a3);
      }

      else
      {
        v15 = sub_232CBACD8((a1 + 24), v7, v6, &unk_27DDD55E8, (a1 + 8), a3);
      }

LABEL_65:
      v32 = v15;
      if (!v15)
      {
        return 0;
      }

LABEL_66:
      if (sub_232CA8068(a3, &v32, a3[11].u32[1]))
      {
        return v32;
      }
    }

    v6 = v32 + 2;
LABEL_6:
    v32 = v6;
    goto LABEL_7;
  }

  return v32;
}

char *sub_232CAE268(uint64_t a1, char *a2, unint64_t *a3)
{
  v6 = *(a1 + 64);
  if (v6)
  {
    for (i = 0; i != v6; ++i)
    {
      if (*a3 <= a2)
      {
        a2 = sub_232CB4C78(a3, a2);
      }

      v8 = sub_232C84D2C(a1 + 56, i);
      *a2 = 10;
      v9 = *(v8 + 44);
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

      a2 = sub_232CAD5F4(v8, v10, a3);
    }
  }

  v14 = *(a1 + 48);
  if (v14)
  {
    if (*a3 <= a2)
    {
      a2 = sub_232CB4C78(a3, a2);
    }

    v15 = *(a1 + 80);
    *a2 = 18;
    v16 = *(v15 + 48);
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

    a2 = sub_232CA93C0(v15, v17, a3);
    if ((v14 & 2) == 0)
    {
LABEL_15:
      if ((v14 & 4) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_38;
    }
  }

  else if ((v14 & 2) == 0)
  {
    goto LABEL_15;
  }

  if (*a3 <= a2)
  {
    a2 = sub_232CB4C78(a3, a2);
  }

  v21 = *(a1 + 88);
  *a2 = 26;
  v22 = *(v21 + 52);
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

  a2 = sub_232CABBCC(v21, v23, a3);
  if ((v14 & 4) == 0)
  {
LABEL_16:
    if ((v14 & 8) == 0)
    {
      goto LABEL_58;
    }

    goto LABEL_48;
  }

LABEL_38:
  if (*a3 <= a2)
  {
    a2 = sub_232CB4C78(a3, a2);
  }

  v27 = *(a1 + 96);
  *a2 = 34;
  v28 = *(v27 + 64);
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

  a2 = sub_232CACD74(v27, v29, a3);
  if ((v14 & 8) != 0)
  {
LABEL_48:
    if (*a3 <= a2)
    {
      a2 = sub_232CB4C78(a3, a2);
    }

    v33 = *(a1 + 104);
    *a2 = 42;
    v34 = *(v33 + 52);
    if (v34 > 0x7F)
    {
      a2[1] = v34 | 0x80;
      v36 = v34 >> 7;
      if (v34 >> 14)
      {
        v35 = a2 + 3;
        do
        {
          *(v35 - 1) = v36 | 0x80;
          v37 = v36 >> 7;
          ++v35;
          v38 = v36 >> 14;
          v36 >>= 7;
        }

        while (v38);
        *(v35 - 1) = v37;
      }

      else
      {
        a2[2] = v36;
        v35 = a2 + 3;
      }
    }

    else
    {
      a2[1] = v34;
      v35 = a2 + 2;
    }

    a2 = sub_232CABBCC(v33, v35, a3);
  }

LABEL_58:
  v39 = sub_232CBBA8C(a1 + 24, 200, 0x20000000, a2, a3);
  v40 = v39;
  v41 = *(a1 + 8);
  if ((v41 & 1) == 0)
  {
    return v40;
  }

  v43 = v41 & 0xFFFFFFFFFFFFFFFELL;
  v44 = *(v43 + 31);
  if (v44 < 0)
  {
    v45 = *(v43 + 8);
    v44 = *(v43 + 16);
  }

  else
  {
    v45 = (v43 + 8);
  }

  if ((*a3 - v39) >= v44)
  {
    v46 = v44;
    memcpy(v39, v45, v44);
    v40 += v46;
    return v40;
  }

  return sub_232CB4D90(a3, v45, v44, v39);
}

uint64_t sub_232CAE660(uint64_t a1)
{
  v2 = sub_232CBE6AC(a1 + 24);
  v3 = *(a1 + 64);
  v4 = v2 + v3;
  v5 = *(a1 + 72);
  if (v5)
  {
    v6 = (v5 + 8);
  }

  else
  {
    v6 = 0;
  }

  if (v3)
  {
    v7 = 8 * v3;
    do
    {
      v8 = *v6++;
      v9 = sub_232CAD79C(v8);
      v4 += v9 + ((9 * (__clz(v9 | 1) ^ 0x1F) + 73) >> 6);
      v7 -= 8;
    }

    while (v7);
  }

  v10 = *(a1 + 48);
  if ((v10 & 0xF) == 0)
  {
    goto LABEL_13;
  }

  if ((v10 & 1) == 0)
  {
    if ((v10 & 2) == 0)
    {
      goto LABEL_10;
    }

LABEL_16:
    v15 = sub_232CABDDC(*(a1 + 88));
    v4 += v15 + ((9 * (__clz(v15 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v10 & 4) == 0)
    {
LABEL_11:
      if ((v10 & 8) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_12;
    }

    goto LABEL_17;
  }

  v14 = sub_232CAA554(*(a1 + 80));
  v4 += v14 + ((9 * (__clz(v14 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v10 & 2) != 0)
  {
    goto LABEL_16;
  }

LABEL_10:
  if ((v10 & 4) == 0)
  {
    goto LABEL_11;
  }

LABEL_17:
  v16 = sub_232CACEF8(*(a1 + 96));
  v4 += v16 + ((9 * (__clz(v16 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v10 & 8) != 0)
  {
LABEL_12:
    v11 = sub_232CABDDC(*(a1 + 104));
    v4 += v11 + ((9 * (__clz(v11 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_13:
  v12 = *(a1 + 8);
  if (v12)
  {
    v17 = v12 & 0xFFFFFFFFFFFFFFFELL;
    v18 = *((v12 & 0xFFFFFFFFFFFFFFFELL) + 31);
    if (v18 < 0)
    {
      v18 = *(v17 + 16);
    }

    v4 += v18;
  }

  *(a1 + 52) = v4;
  return v4;
}

void sub_232CAE7E4(uint64_t a1, void *lpsrc)
{
  if (!__dynamic_cast(lpsrc, &unk_284815C60, &unk_284815860, 0))
  {
    sub_232CA89AC();
  }

  sub_232CAE86C(a1, lpsrc);
}

void sub_232CAE86C(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    sub_232CB5704(v27, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/builtin_pb/sentencepiece_model.pb.cc", 3397);
    v4 = sub_232CB571C(v27, "CHECK failed: (&from) != (this): ");
    sub_232CB5858(&v26, &v4->__r_.__value_.__l.__data_);
    sub_232CB5860(v27);
  }

  sub_232CE835C(a1 + 24, a2 + 24);
  v5 = *(a2 + 8);
  if (v5)
  {
    v6 = v5 & 0xFFFFFFFFFFFFFFFELL;
    v7 = (v5 & 0xFFFFFFFFFFFFFFFELL) + 8;
    v8 = *(a1 + 8);
    if (v8)
    {
      v9 = ((v8 & 0xFFFFFFFFFFFFFFFELL) + 8);
    }

    else
    {
      v9 = sub_232CA81A8((a1 + 8));
    }

    v10 = *(v6 + 31);
    if (v10 >= 0)
    {
      v11 = v7;
    }

    else
    {
      v11 = *(v6 + 8);
    }

    if (v10 >= 0)
    {
      v12 = *(v6 + 31);
    }

    else
    {
      v12 = *(v6 + 16);
    }

    std::string::append(v9, v11, v12);
  }

  sub_232CB03B4(a1 + 56, a2 + 56);
  v13 = *(a2 + 48);
  if ((v13 & 0xF) != 0)
  {
    if (v13)
    {
      *(a1 + 48) |= 1u;
      v14 = *(a1 + 80);
      if (!v14)
      {
        v15 = *(a1 + 8);
        if (v15)
        {
          v15 = *(v15 & 0xFFFFFFFFFFFFFFFELL);
        }

        v14 = sub_232CAED34(v15);
        *(a1 + 80) = v14;
      }

      if (*(a2 + 80))
      {
        v16 = *(a2 + 80);
      }

      else
      {
        v16 = &unk_27DDD5398;
      }

      sub_232CAAE6C(v14, v16);
    }

    if ((v13 & 2) != 0)
    {
      *(a1 + 48) |= 2u;
      v17 = *(a1 + 88);
      if (!v17)
      {
        v18 = *(a1 + 8);
        if (v18)
        {
          v18 = *(v18 & 0xFFFFFFFFFFFFFFFELL);
        }

        v17 = sub_232CAEE04(v18);
        *(a1 + 88) = v17;
      }

      if (*(a2 + 88))
      {
        v19 = *(a2 + 88);
      }

      else
      {
        v19 = &unk_27DDD54E0;
      }

      sub_232CABFC4(v17, v19);
      if ((v13 & 4) == 0)
      {
LABEL_25:
        if ((v13 & 8) == 0)
        {
          return;
        }

        goto LABEL_43;
      }
    }

    else if ((v13 & 4) == 0)
    {
      goto LABEL_25;
    }

    *(a1 + 48) |= 4u;
    v20 = *(a1 + 96);
    if (!v20)
    {
      v21 = *(a1 + 8);
      if (v21)
      {
        v21 = *(v21 & 0xFFFFFFFFFFFFFFFELL);
      }

      v20 = sub_232CAEFA4(v21);
      *(a1 + 96) = v20;
    }

    if (*(a2 + 96))
    {
      v22 = *(a2 + 96);
    }

    else
    {
      v22 = &unk_27DDD5560;
    }

    sub_232CAD028(v20, v22);
    if ((v13 & 8) != 0)
    {
LABEL_43:
      *(a1 + 48) |= 8u;
      v23 = *(a1 + 104);
      if (!v23)
      {
        v24 = *(a1 + 8);
        if (v24)
        {
          v24 = *(v24 & 0xFFFFFFFFFFFFFFFELL);
        }

        v23 = sub_232CAEE04(v24);
        *(a1 + 104) = v23;
      }

      if (*(a2 + 104))
      {
        v25 = *(a2 + 104);
      }

      else
      {
        v25 = &unk_27DDD54E0;
      }

      sub_232CABFC4(v23, v25);
    }
  }
}

void sub_232CAEA84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_232CB5860(va);
  _Unwind_Resume(a1);
}

void sub_232CAEA9C(std::string *result, std::string *a2)
{
  if (a2 != result)
  {
    sub_232CADD1C(result);

    sub_232CAE86C(result, a2);
  }
}

uint64_t sub_232CAEAE8(uint64_t a1)
{
  result = sub_232CBA934(a1 + 24);
  if (!result)
  {
    return result;
  }

  result = sub_232CAECCC(a1 + 56);
  if (!result)
  {
    return result;
  }

  v3 = *(a1 + 48);
  if (v3)
  {
    v4 = *(a1 + 80);
    if (!v4)
    {
      sub_232CB5704(v13, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/builtin_pb/sentencepiece_model.pb.h", 4741);
      v5 = sub_232CB571C(v13, "CHECK failed: !value || trainer_spec_ != nullptr: ");
      sub_232CB5858(&v12, &v5->__r_.__value_.__l.__data_);
      sub_232CB5860(v13);
      v4 = *(a1 + 80);
    }

    result = sub_232CBA934(v4 + 16);
    if (!result)
    {
      return result;
    }

    v3 = *(a1 + 48);
  }

  if ((v3 & 2) != 0)
  {
    v6 = *(a1 + 88);
    if (!v6)
    {
      sub_232CB5704(v13, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/builtin_pb/sentencepiece_model.pb.h", 4824);
      v7 = sub_232CB571C(v13, "CHECK failed: !value || normalizer_spec_ != nullptr: ");
      sub_232CB5858(&v12, &v7->__r_.__value_.__l.__data_);
      sub_232CB5860(v13);
      v6 = *(a1 + 88);
    }

    result = sub_232CBA934(v6 + 24);
    if (!result)
    {
      return result;
    }

    v3 = *(a1 + 48);
  }

  if ((v3 & 4) == 0)
  {
LABEL_18:
    if ((v3 & 8) == 0)
    {
      return 1;
    }

    v10 = *(a1 + 104);
    if (!v10)
    {
      sub_232CB5704(v13, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/builtin_pb/sentencepiece_model.pb.h", 4990);
      v11 = sub_232CB571C(v13, "CHECK failed: !value || denormalizer_spec_ != nullptr: ");
      sub_232CB5858(&v12, &v11->__r_.__value_.__l.__data_);
      sub_232CB5860(v13);
      v10 = *(a1 + 104);
    }

    result = sub_232CBA934(v10 + 24);
    if (result)
    {
      return 1;
    }

    return result;
  }

  v8 = *(a1 + 96);
  if (!v8)
  {
    sub_232CB5704(v13, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/builtin_pb/sentencepiece_model.pb.h", 4907);
    v9 = sub_232CB571C(v13, "CHECK failed: !value || self_test_data_ != nullptr: ");
    sub_232CB5858(&v12, &v9->__r_.__value_.__l.__data_);
    sub_232CB5860(v13);
    v8 = *(a1 + 96);
  }

  result = sub_232CBA934(v8 + 16);
  if (result)
  {
    v3 = *(a1 + 48);
    goto LABEL_18;
  }

  return result;
}

void sub_232CAEC9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_232CB5860(va);
  _Unwind_Resume(a1);
}

BOOL sub_232CAECCC(uint64_t a1)
{
  v2 = *(a1 + 8);
  do
  {
    v3 = v2;
    v4 = __OFSUB__(v2--, 1);
    if (v2 < 0 != v4)
    {
      break;
    }

    v5 = sub_232C84D2C(a1, v2);
  }

  while ((sub_232CBA934(v5 + 16) & 1) != 0);
  return v3 < 1;
}

uint64_t sub_232CAED34(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  if (*(a1 + 24))
  {
    (*(**(*(a1 + 32) + 32) + 40))(*(*(a1 + 32) + 32), &unk_2848157B8, 328);
  }

  v2 = sub_232CB4000(a1, 328);
  sub_232CA8C88(v2, a1);
  return v2;
}

uint64_t sub_232CAEE04(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  if (*(a1 + 24))
  {
    (*(**(*(a1 + 32) + 32) + 40))(*(*(a1 + 32) + 32), &unk_2848157E0, 88);
  }

  v2 = sub_232CB4000(a1, 88);
  sub_232CAB3F8(v2, a1);
  return v2;
}

void *sub_232CAEED4(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  if (*(a1 + 24))
  {
    (*(**(*(a1 + 32) + 32) + 40))(*(*(a1 + 32) + 32), &unk_284815818, 40);
  }

  v2 = sub_232CB4000(a1, 40);
  sub_232CAC1C0(v2, a1);
  return v2;
}

uint64_t sub_232CAEFA4(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  if (*(a1 + 24))
  {
    (*(**(*(a1 + 32) + 32) + 40))(*(*(a1 + 32) + 32), &unk_284815830, 72);
  }

  v2 = sub_232CB4000(a1, 72);
  sub_232CAC984(v2, a1);
  return v2;
}

void *sub_232CAF074(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  if (*(a1 + 24))
  {
    (*(**(*(a1 + 32) + 32) + 40))(*(*(a1 + 32) + 32), &unk_284815848, 64);
  }

  v2 = sub_232CB4000(a1, 64);
  sub_232CAD130(v2, a1);
  return v2;
}

uint64_t sub_232CAF144(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  if (*(a1 + 24))
  {
    (*(**(*(a1 + 32) + 32) + 40))(*(*(a1 + 32) + 32), &unk_284815860, 112);
  }

  v2 = sub_232CB4000(a1, 112);
  sub_232CADA6C(v2, a1);
  return v2;
}

char *sub_232CAF2EC(uint64_t a1)
{
  v1 = *(a1 + 80);
  if (!v1)
  {
    v1 = &unk_27DDD5398;
  }

  v2 = v1[22];
  if (v2)
  {
    result = (v2 & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    result = atomic_load_explicit(&qword_27DDC8820, memory_order_acquire);
    if (!result)
    {
      result = sub_232CB4154(&off_27DDC8808);
    }
  }

  if ((result[23] & 0x8000000000000000) != 0)
  {
    return *result;
  }

  return result;
}

char *sub_232CAF350(uint64_t a1)
{
  v1 = *(a1 + 80);
  if (!v1)
  {
    v1 = &unk_27DDD5398;
  }

  v2 = v1[23];
  if (v2)
  {
    result = (v2 & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    result = atomic_load_explicit(&qword_27DDC87A0, memory_order_acquire);
    if (!result)
    {
      result = sub_232CB4154(&off_27DDC8788);
    }
  }

  if ((result[23] & 0x8000000000000000) != 0)
  {
    return *result;
  }

  return result;
}

char *sub_232CAF3B4(uint64_t a1)
{
  v1 = *(a1 + 80);
  if (!v1)
  {
    v1 = &unk_27DDD5398;
  }

  v2 = v1[24];
  if (v2)
  {
    result = (v2 & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    result = atomic_load_explicit(&qword_27DDC87C0, memory_order_acquire);
    if (!result)
    {
      result = sub_232CB4154(&off_27DDC87A8);
    }
  }

  if ((result[23] & 0x8000000000000000) != 0)
  {
    return *result;
  }

  return result;
}

char *sub_232CAF418(uint64_t a1)
{
  v1 = *(a1 + 80);
  if (!v1)
  {
    v1 = &unk_27DDD5398;
  }

  v2 = v1[25];
  if (v2)
  {
    result = (v2 & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    result = atomic_load_explicit(&qword_27DDC87E0, memory_order_acquire);
    if (!result)
    {
      result = sub_232CB4154(&off_27DDC87C8);
    }
  }

  if ((result[23] & 0x8000000000000000) != 0)
  {
    return *result;
  }

  return result;
}

char *sub_232CAF47C(uint64_t a1)
{
  v1 = *(a1 + 80);
  if (!v1)
  {
    v1 = &unk_27DDD5398;
  }

  v2 = v1[26];
  if (v2)
  {
    result = (v2 & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    result = atomic_load_explicit(&qword_27DDC8800, memory_order_acquire);
    if (!result)
    {
      result = sub_232CB4154(&off_27DDC87E8);
    }
  }

  if ((result[23] & 0x8000000000000000) != 0)
  {
    return *result;
  }

  return result;
}

uint64_t sub_232CAF4E0(uint64_t a1)
{
  v1 = *(a1 + 80);
  if (!v1)
  {
    v1 = &unk_27DDD5398;
  }

  return v1[248];
}

uint64_t sub_232CAF4FC(uint64_t a1)
{
  v1 = &unk_27DDD5398;
  if (*(a1 + 80))
  {
    v1 = *(a1 + 80);
  }

  return (v1[40] >> 3) & 1;
}

char *sub_232CAF51C(uint64_t a1, int a2)
{
  result = (*(sub_232C84D2C(a1 + 56, a2) + 48) & 0xFFFFFFFFFFFFFFFELL);
  if ((result[23] & 0x8000000000000000) != 0)
  {
    return *result;
  }

  return result;
}

char *sub_232CAF65C(uint64_t a1)
{
  v1 = *(a1 + 88);
  if (!v1)
  {
    v1 = &unk_27DDD54E0;
  }

  return v1 + 16;
}

char *sub_232CAF678(uint64_t a1)
{
  v1 = *(a1 + 104);
  if (!v1)
  {
    v1 = &unk_27DDD54E0;
  }

  return v1 + 16;
}

uint64_t sub_232CAF694(uint64_t a1)
{
  v1 = *(a1 + 80);
  if (!v1)
  {
    v1 = &unk_27DDD5398;
  }

  v2 = v1[68];
  v3 = v2 - 2;
  v4 = v2 - 1;
  if (v3 >= 3)
  {
    return 0;
  }

  else
  {
    return v4;
  }
}

char *sub_232CAF6C8(uint64_t a1)
{
  v1 = *(a1 + 64);
  if (!v1)
  {
    v1 = &unk_27DDD5398;
  }

  v2 = v1[22];
  if (v2)
  {
    result = (v2 & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    result = atomic_load_explicit(&qword_27DDC8820, memory_order_acquire);
    if (!result)
    {
      result = sub_232CB4154(&off_27DDC8808);
    }
  }

  if ((result[23] & 0x8000000000000000) != 0)
  {
    return *result;
  }

  return result;
}

char *sub_232CAF72C(uint64_t a1)
{
  v1 = *(a1 + 64);
  if (!v1)
  {
    v1 = &unk_27DDD5398;
  }

  v2 = v1[23];
  if (v2)
  {
    result = (v2 & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    result = atomic_load_explicit(&qword_27DDC87A0, memory_order_acquire);
    if (!result)
    {
      result = sub_232CB4154(&off_27DDC8788);
    }
  }

  if ((result[23] & 0x8000000000000000) != 0)
  {
    return *result;
  }

  return result;
}

char *sub_232CAF790(uint64_t a1)
{
  v1 = *(a1 + 64);
  if (!v1)
  {
    v1 = &unk_27DDD5398;
  }

  v2 = v1[24];
  if (v2)
  {
    result = (v2 & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    result = atomic_load_explicit(&qword_27DDC87C0, memory_order_acquire);
    if (!result)
    {
      result = sub_232CB4154(&off_27DDC87A8);
    }
  }

  if ((result[23] & 0x8000000000000000) != 0)
  {
    return *result;
  }

  return result;
}

char *sub_232CAF7F4(uint64_t a1)
{
  v1 = *(a1 + 64);
  if (!v1)
  {
    v1 = &unk_27DDD5398;
  }

  v2 = v1[25];
  if (v2)
  {
    result = (v2 & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    result = atomic_load_explicit(&qword_27DDC87E0, memory_order_acquire);
    if (!result)
    {
      result = sub_232CB4154(&off_27DDC87C8);
    }
  }

  if ((result[23] & 0x8000000000000000) != 0)
  {
    return *result;
  }

  return result;
}

char *sub_232CAF858(uint64_t a1)
{
  v1 = *(a1 + 64);
  if (!v1)
  {
    v1 = &unk_27DDD5398;
  }

  v2 = v1[26];
  if (v2)
  {
    result = (v2 & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    result = atomic_load_explicit(&qword_27DDC8800, memory_order_acquire);
    if (!result)
    {
      result = sub_232CB4154(&off_27DDC87E8);
    }
  }

  if ((result[23] & 0x8000000000000000) != 0)
  {
    return *result;
  }

  return result;
}

uint64_t sub_232CAF8BC(uint64_t a1)
{
  v1 = *(a1 + 64);
  if (!v1)
  {
    v1 = &unk_27DDD5398;
  }

  return v1[248];
}

uint64_t sub_232CAF8D8(uint64_t a1)
{
  v1 = &unk_27DDD5398;
  if (*(a1 + 64))
  {
    v1 = *(a1 + 64);
  }

  return (v1[40] >> 3) & 1;
}

uint64_t sub_232CAF8F8(uint64_t a1)
{
  v1 = *(a1 + 64);
  if (!v1)
  {
    v1 = &unk_27DDD5398;
  }

  v2 = v1[68];
  v3 = v2 - 2;
  v4 = v2 - 1;
  if (v3 >= 3)
  {
    return 0;
  }

  else
  {
    return v4;
  }
}

char *sub_232CAF924(uint64_t a1, int a2)
{
  result = (*(sub_232C84D2C(a1 + 40, a2) + 48) & 0xFFFFFFFFFFFFFFFELL);
  if ((result[23] & 0x8000000000000000) != 0)
  {
    return *result;
  }

  return result;
}

char *sub_232CAFA64(uint64_t a1)
{
  v1 = *(a1 + 72);
  if (!v1)
  {
    v1 = &unk_27DDD54E0;
  }

  return v1 + 16;
}

char *sub_232CAFA80(uint64_t a1)
{
  v1 = *(a1 + 88);
  if (!v1)
  {
    v1 = &unk_27DDD54E0;
  }

  return v1 + 16;
}

void sub_232CAFA9C(uint64_t a1)
{
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }
}

uint64_t sub_232CAFAB0(uint64_t a1, int a2)
{
  if (a2 < 0)
  {
    sub_232CB5704(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1705);
    v4 = sub_232CB571C(v8, "CHECK failed: (index) >= (0): ");
    sub_232CB5858(&v7, &v4->__r_.__value_.__l.__data_);
    sub_232CB5860(v8);
  }

  if (*(a1 + 8) <= a2)
  {
    sub_232CB5704(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1706);
    v5 = sub_232CB571C(v8, "CHECK failed: (index) < (current_size_): ");
    sub_232CB5858(&v7, &v5->__r_.__value_.__l.__data_);
    sub_232CB5860(v8);
  }

  return *(*(a1 + 16) + 8 * a2 + 8);
}

void sub_232CAFB70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_232CB5860(va);
  _Unwind_Resume(a1);
}

uint64_t sub_232CAFB90(uint64_t result)
{
  v1 = *(result + 8);
  if ((v1 & 0x80000000) != 0)
  {
    sub_232CB5704(v6, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1780);
    v4 = sub_232CB571C(v6, "CHECK failed: (n) >= (0): ");
    sub_232CB5858(&v5, &v4->__r_.__value_.__l.__data_);
    return sub_232CB5860(v6);
  }

  else if (v1)
  {
    v2 = *(result + 16) + 8;
    do
    {
      v3 = *v2;
      if (*(*v2 + 23) < 0)
      {
        **v3 = 0;
        *(v3 + 8) = 0;
      }

      else
      {
        *v3 = 0;
        *(v3 + 23) = 0;
      }

      v2 += 8;
      --v1;
    }

    while (v1);
    *(result + 8) = 0;
  }

  return result;
}

void sub_232CAFC3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_232CB5860(va);
  _Unwind_Resume(a1);
}

uint64_t sub_232CAFC54(uint64_t a1, int a2)
{
  if (a2 < 0)
  {
    sub_232CB5704(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1705);
    v4 = sub_232CB571C(v8, "CHECK failed: (index) >= (0): ");
    sub_232CB5858(&v7, &v4->__r_.__value_.__l.__data_);
    sub_232CB5860(v8);
  }

  if (*(a1 + 8) <= a2)
  {
    sub_232CB5704(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1706);
    v5 = sub_232CB571C(v8, "CHECK failed: (index) < (current_size_): ");
    sub_232CB5858(&v7, &v5->__r_.__value_.__l.__data_);
    sub_232CB5860(v8);
  }

  return *(*(a1 + 16) + 8 * a2 + 8);
}

void sub_232CAFD14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_232CB5860(va);
  _Unwind_Resume(a1);
}

uint64_t sub_232CAFD34(uint64_t result)
{
  v1 = *(result + 8);
  if ((v1 & 0x80000000) != 0)
  {
    sub_232CB5704(v7, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1780);
    v5 = sub_232CB571C(v7, "CHECK failed: (n) >= (0): ");
    sub_232CB5858(&v6, &v5->__r_.__value_.__l.__data_);
    return sub_232CB5860(v7);
  }

  else if (v1)
  {
    v2 = result;
    v3 = (*(result + 16) + 8);
    do
    {
      v4 = *v3++;
      result = sub_232CAC3C0(v4);
      --v1;
    }

    while (v1);
    *(v2 + 8) = 0;
  }

  return result;
}

void sub_232CAFDCC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_232CB5860(va);
  _Unwind_Resume(a1);
}

unsigned __int8 *sub_232CAFDE4(unsigned __int8 *result)
{
  v1 = *(result + 2);
  if ((v1 & 0x80000000) != 0)
  {
    sub_232CB5704(v7, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1780);
    v5 = sub_232CB571C(v7, "CHECK failed: (n) >= (0): ");
    sub_232CB5858(&v6, &v5->__r_.__value_.__l.__data_);
    return sub_232CB5860(v7);
  }

  else if (v1)
  {
    v2 = result;
    v3 = (*(result + 2) + 8);
    do
    {
      v4 = *v3++;
      result = sub_232CAD314(v4);
      --v1;
    }

    while (v1);
    *(v2 + 8) = 0;
  }

  return result;
}

void sub_232CAFE7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_232CB5860(va);
  _Unwind_Resume(a1);
}

uint64_t sub_232CAFE94(uint64_t result, uint64_t a2)
{
  v3 = result;
  if (a2 == result)
  {
    sub_232CB5704(v11, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1799);
    v4 = sub_232CB571C(v11, "CHECK failed: (&other) != (this): ");
    sub_232CB5858(&v10, &v4->__r_.__value_.__l.__data_);
    result = sub_232CB5860(v11);
  }

  v5 = *(a2 + 8);
  if (v5)
  {
    v6 = *(a2 + 16);
    v7 = sub_232CC74FC(v3, v5);
    result = sub_232CAFF80(v3, v7, (v6 + 8), v5, **(v3 + 16) - *(v3 + 8));
    v8 = *(v3 + 8) + v5;
    *(v3 + 8) = v8;
    v9 = *(v3 + 16);
    if (*v9 < v8)
    {
      *v9 = v8;
    }
  }

  return result;
}

void sub_232CAFF68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_232CB5860(va);
  _Unwind_Resume(a1);
}

std::string *sub_232CAFF80(std::string *result, std::string **a2, const std::string **a3, int a4, int a5)
{
  v9 = result;
  if (a5 >= a4)
  {
    v10 = a4;
  }

  else
  {
    v10 = a5;
  }

  if (v10 >= 1)
  {
    v11 = a3;
    v12 = a2;
    do
    {
      v14 = *v11++;
      v13 = v14;
      v15 = *v12++;
      result = std::string::operator=(v15, v13);
      --v10;
    }

    while (v10);
  }

  v16 = __OFSUB__(a4, a5);
  v17 = a4 - a5;
  if (!((v17 < 0) ^ v16 | (v17 == 0)))
  {
    v18 = v9->__r_.__value_.__r.__words[0];
    v19 = &a3[a5];
    v20 = &a2[a5];
    do
    {
      v21 = *v19;
      if (!v18)
      {
        operator new();
      }

      if (*(v18 + 24))
      {
        sub_232CB070C(v18 + 32);
      }

      v22 = sub_232CB3D04(v18, 0x18uLL, sub_232CAFA9C);
      v22->__r_.__value_.__r.__words[0] = 0;
      v22->__r_.__value_.__l.__size_ = 0;
      v22->__r_.__value_.__r.__words[2] = 0;
      result = std::string::operator=(v22, v21);
      *v20++ = v22;
      ++v19;
      --v17;
    }

    while (v17);
  }

  return result;
}

uint64_t *sub_232CB0088(uint64_t *a1)
{
  sub_232CB00C4(a1);

  return sub_232CA84A4(a1);
}

void sub_232CB00C4(void *a1)
{
  v2 = a1[2];
  if (v2 && !*a1)
  {
    v3 = (v2 + 2);
    v4 = *v2;
    if (v4 >= 1)
    {
      do
      {
        if (*v3)
        {
          v5 = sub_232CAC230(*v3);
          MEMORY[0x238392C10](v5, 0x1081C400F7E8713);
        }

        ++v3;
        --v4;
      }

      while (v4);
      v2 = a1[2];
    }

    operator delete(v2);
  }

  a1[2] = 0;
}

uint64_t sub_232CB0148(uint64_t result, uint64_t a2)
{
  v3 = result;
  if (a2 == result)
  {
    sub_232CB5704(v11, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1799);
    v4 = sub_232CB571C(v11, "CHECK failed: (&other) != (this): ");
    sub_232CB5858(&v10, &v4->__r_.__value_.__l.__data_);
    result = sub_232CB5860(v11);
  }

  v5 = *(a2 + 8);
  if (v5)
  {
    v6 = *(a2 + 16);
    v7 = sub_232CC74FC(v3, v5);
    result = sub_232CB0234(v3, v7, (v6 + 8), v5, **(v3 + 16) - *(v3 + 8));
    v8 = *(v3 + 8) + v5;
    *(v3 + 8) = v8;
    v9 = *(v3 + 16);
    if (*v9 < v8)
    {
      *v9 = v8;
    }
  }

  return result;
}

void sub_232CB021C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_232CB5860(va);
  _Unwind_Resume(a1);
}

std::string *sub_232CB0234(std::string *result, std::string **a2, uint64_t *a3, int a4, int a5)
{
  v9 = result;
  if (a5 >= a4)
  {
    v10 = a4;
  }

  else
  {
    v10 = a5;
  }

  if (v10 >= 1)
  {
    v11 = a3;
    v12 = a2;
    do
    {
      v14 = *v11++;
      v13 = v14;
      v15 = *v12++;
      result = sub_232CB02E4(v13, v15);
      --v10;
    }

    while (v10);
  }

  v16 = __OFSUB__(a4, a5);
  v17 = a4 - a5;
  if (!((v17 < 0) ^ v16 | (v17 == 0)))
  {
    v18 = *v9;
    v19 = &a3[a5];
    v20 = &a2[a5];
    do
    {
      v21 = *v19++;
      v22 = sub_232CAEED4(v18);
      result = sub_232CB02E4(v21, v22);
      *v20++ = v22;
      --v17;
    }

    while (v17);
  }

  return result;
}

uint64_t *sub_232CB02F4(uint64_t *a1)
{
  sub_232CB0330(a1);

  return sub_232CA84A4(a1);
}

void sub_232CB0330(void *a1)
{
  v2 = a1[2];
  if (v2 && !*a1)
  {
    v3 = v2 + 1;
    v4 = *v2;
    if (v4 >= 1)
    {
      do
      {
        if (*v3)
        {
          v5 = sub_232CAD1BC(*v3);
          MEMORY[0x238392C10](v5, 0x10A1C40F497E4DALL);
        }

        ++v3;
        --v4;
      }

      while (v4);
      v2 = a1[2];
    }

    operator delete(v2);
  }

  a1[2] = 0;
}

void sub_232CB03B4(uint64_t result, uint64_t a2)
{
  if (a2 == result)
  {
    sub_232CB5704(v11, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1799);
    v4 = sub_232CB571C(v11, "CHECK failed: (&other) != (this): ");
    sub_232CB5858(&v10, &v4->__r_.__value_.__l.__data_);
    sub_232CB5860(v11);
  }

  v5 = *(a2 + 8);
  if (v5)
  {
    v6 = *(a2 + 16);
    v7 = sub_232CC74FC(result, v5);
    sub_232CB04A0(result, v7, (v6 + 8), v5, **(result + 16) - *(result + 8));
    v8 = *(result + 8) + v5;
    *(result + 8) = v8;
    v9 = *(result + 16);
    if (*v9 < v8)
    {
      *v9 = v8;
    }
  }
}

void sub_232CB0488(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_232CB5860(va);
  _Unwind_Resume(a1);
}

void sub_232CB04A0(uint64_t *result, uint64_t *a2, uint64_t *a3, int a4, int a5)
{
  if (a5 >= a4)
  {
    v10 = a4;
  }

  else
  {
    v10 = a5;
  }

  if (v10 >= 1)
  {
    v11 = a3;
    v12 = a2;
    do
    {
      v14 = *v11++;
      v13 = v14;
      v15 = *v12++;
      sub_232CB0550(v13, v15);
      --v10;
    }

    while (v10);
  }

  v16 = __OFSUB__(a4, a5);
  v17 = a4 - a5;
  if (!((v17 < 0) ^ v16 | (v17 == 0)))
  {
    v18 = *result;
    v19 = &a3[a5];
    v20 = &a2[a5];
    do
    {
      v21 = *v19++;
      v22 = sub_232CAF074(v18);
      sub_232CB0550(v21, v22);
      *v20++ = v22;
      --v17;
    }

    while (v17);
  }
}

unint64_t sub_232CB058C()
{

  return sub_232CB3D04(v0, 0x18uLL, sub_232CAFA9C);
}

void *sub_232CB067C(void *result)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  return result;
}

void sub_232CB06AC()
{

  operator new();
}

void sub_232CB06C4(unint64_t *a1, unint64_t a2)
{
  if (*a1)
  {
    v3 = ((*a1 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  else
  {
    v3 = sub_232CA81A8(a1);
  }

  sub_232CC20C0(3, a2, v3);
}

void *sub_232CB080C(void *a1, const char *a2, uint64_t a3, int a4)
{
  *a1 = &unk_2848158B8;
  v7 = a1 + 1;
  sub_232CB32B4(a1 + 1);
  if (a3)
  {
    operator new();
  }

  v8 = MEMORY[0x277D82668];
  a1[2] = MEMORY[0x277D82668];
  if ((*(v8 + *(*v8 - 24) + 32) & 5) != 0)
  {
    v15 = 5;
    sub_232C83BBC(&v16);
    sub_232C85DAC(&v16, "", 1);
    v9 = strlen(a2);
    sub_232C85DAC(&v16, a2, v9);
    sub_232C85DAC(&v16, ": ", 3);
    v10 = __error();
    sub_232CB14D4(*v10);
    if ((v14 & 0x80u) == 0)
    {
      v11 = __p;
    }

    else
    {
      v11 = __p[0];
    }

    if ((v14 & 0x80u) == 0)
    {
      sub_232C85DAC(&v16, v11, v14);
    }

    else
    {
      sub_232C85DAC(&v16, v11, __p[1]);
    }

    sub_232C809A4(&v15, &v21);
    sub_232CB34D4(v7, &v21);
    sub_232CB32BC(&v21);
    if (v14 < 0)
    {
      operator delete(__p[0]);
    }

    v16 = *MEMORY[0x277D82828];
    *(&v16 + *(v16 - 24)) = *(MEMORY[0x277D82828] + 24);
    v17 = MEMORY[0x277D82878] + 16;
    if (v19 < 0)
    {
      operator delete(v18[7].__locale_);
    }

    v17 = MEMORY[0x277D82868] + 16;
    std::locale::~locale(v18);
    std::ostream::~ostream();
    MEMORY[0x238392BA0](&v20);
  }

  return a1;
}

void sub_232CB0A9C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  sub_232CB32BC((v16 - 56));
  if (a14 < 0)
  {
    operator delete(__p);
  }

  sub_232C80A34(&a15);
  sub_232CB32BC(v15);
  _Unwind_Resume(a1);
}

void sub_232CB0B18(void *a1)
{
  sub_232CB0D5C(a1);

  JUMPOUT(0x238392C10);
}

BOOL sub_232CB0B5C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 16);
  std::ios_base::getloc((v3 + *(*v3 - 24)));
  v4 = std::locale::use_facet(&v8, MEMORY[0x277D82680]);
  v5 = (v4->__vftable[2].~facet_0)(v4, 10);
  std::locale::~locale(&v8);
  v6 = sub_232CB0DE0(v3, a2, v5);
  return (*(v6 + *(*v6 - 24) + 32) & 5) == 0;
}

BOOL sub_232CB0C40(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = MEMORY[0x277D82668];
  if (v2 == MEMORY[0x277D82668])
  {
    if (sub_232CB1330() <= 2)
    {
      v12 = 0;
      v4 = sub_232C85DAC(MEMORY[0x277D82670], "filesystem.cc", 13);
      v5 = sub_232C85DAC(v4, "(", 1);
      v6 = MEMORY[0x238392A80](v5, 55);
      v7 = sub_232C85DAC(v6, ") ", 2);
      v8 = sub_232C85DAC(v7, "LOG(", 4);
      v9 = sub_232C85DAC(v8, "ERROR", 5);
      v10 = sub_232C85DAC(v9, ") ", 2);
      sub_232C85DAC(v10, "ReadAll is not supported for stdin.", 35);
      sub_232C83EEC(&v12);
    }
  }

  else
  {
    sub_232CB0FD4(a2, *(v2 + *(*v2 - 24) + 40), 0);
  }

  return v2 != v3;
}

void *sub_232CB0D5C(void *a1)
{
  *a1 = &unk_2848158B8;
  v2 = a1[2];
  if (v2 != MEMORY[0x277D82668] && v2 != 0)
  {
    (*(*v2 + 8))(v2);
  }

  sub_232CB32BC(a1 + 1);
  return a1;
}

void *sub_232CB0DE0(void *a1, uint64_t a2, unsigned __int8 a3)
{
  MEMORY[0x2383929D0](&v11, a1, 1);
  if (v11 != 1)
  {
    return a1;
  }

  if (*(a2 + 23) < 0)
  {
    **a2 = 0;
    *(a2 + 8) = 0;
  }

  else
  {
    *a2 = 0;
    *(a2 + 23) = 0;
  }

  v6 = 0;
  while (1)
  {
    v7 = *(a1 + *(*a1 - 24) + 40);
    v8 = v7[3];
    if (v8 != v7[4])
    {
      v7[3] = v8 + 1;
      LOBYTE(v7) = *v8;
      goto LABEL_9;
    }

    LODWORD(v7) = (*(*v7 + 80))(v7);
    if (v7 == -1)
    {
      break;
    }

LABEL_9:
    if (v7 == a3)
    {
      v9 = 0;
      goto LABEL_17;
    }

    std::string::push_back(a2, v7);
    --v6;
    if (*(a2 + 23) < 0 && *(a2 + 8) == 0x7FFFFFFFFFFFFFF7)
    {
      v9 = 4;
      goto LABEL_17;
    }
  }

  if (v6)
  {
    v9 = 2;
  }

  else
  {
    v9 = 6;
  }

LABEL_17:
  std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | v9);
  return a1;
}

void sub_232CB0F44(void *a1)
{
  __cxa_begin_catch(a1);
  v2 = *v1;
  *(v1 + *(*v1 - 24) + 32) |= 1u;
  if ((*(v1 + *(v2 - 24) + 36) & 1) == 0)
  {
    __cxa_end_catch();
    JUMPOUT(0x232CB0F04);
  }

  __cxa_rethrow();
}

void sub_232CB0FD4(uint64_t a1, void *a2, void *a3)
{
  sub_232CB1054(&__p, a2, a3);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = __p.__r_.__value_.__l.__size_;
  }

  MEMORY[0x238392920](a1, p_p, size);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_232CB1038(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_232CB1054(std::string *a1, void *a2, void *a3)
{
  v11 = a3;
  *&a1->__r_.__value_.__r.__words[1] = 0uLL;
  a1->__r_.__value_.__r.__words[0] = 0;
  while (1)
  {
    if (a2)
    {
      if (a2[3] == a2[4])
      {
        v6 = (*(*a2 + 72))(a2);
        v5 = v6 == -1;
        if (v6 == -1)
        {
          a2 = 0;
        }
      }

      else
      {
        v5 = 0;
      }
    }

    else
    {
      v5 = 1;
    }

    result = sub_232CB11B4(&v11);
    if (v5 == result)
    {
      break;
    }

    v8 = a2[3];
    if (v8 == a2[4])
    {
      v9 = (*(*a2 + 72))(a2);
    }

    else
    {
      v9 = *v8;
    }

    std::string::push_back(a1, v9);
    v10 = a2[3];
    if (v10 == a2[4])
    {
      (*(*a2 + 80))(a2);
    }

    else
    {
      a2[3] = v10 + 1;
    }
  }

  return result;
}

void sub_232CB1184(void *a1)
{
  __cxa_begin_catch(a1);
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  __cxa_rethrow();
}

BOOL sub_232CB11B4(void **a1)
{
  v2 = *a1;
  if (v2)
  {
    if (v2[3] != v2[4])
    {
      return 0;
    }

    if ((*(*v2 + 72))(v2) != -1)
    {
      return *a1 == 0;
    }

    *a1 = 0;
  }

  return 1;
}

uint64_t sub_232CB1234()
{
  v0 = atomic_load(&unk_27DDC8828);
  if (v0 != -1)
  {
    return atomic_load(&unk_27DDC8828);
  }

  sub_232CB12BC(&v3);
  v1 = MEMORY[0x238392AD0](&v3);
  std::random_device::~random_device(&v3);
  return v1;
}

void sub_232CB1294(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, std::random_device argC, std::random_device a11, int a13, std::random_device a12)
{
  std::random_device::~random_device(&argC);
  __cxa_begin_catch(a1);
  atomic_load(v14);
  __cxa_end_catch();
  JUMPOUT(0x232CB1280);
}

std::random_device *sub_232CB12BC(std::random_device *a1)
{
  sub_232C8C2D0(&__token, "/dev/urandom");
  std::random_device::random_device(a1, &__token);
  if (SHIBYTE(__token.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__token.__r_.__value_.__l.__data_);
  }

  return a1;
}

void sub_232CB1314(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_232CB1340(char *a1, uint64_t a2, uint64_t *a3)
{
  v3 = *a1;
  if ((v3 & 0x80000000) == 0)
  {
    *a3 = 1;
    return *a1;
  }

  v5 = a2 - a1;
  if ((a2 - a1) >= 2)
  {
    if ((v3 & 0xE0) == 0xC0)
    {
      v6 = a1[1];
      if (v6 <= -65)
      {
        v7 = (v3 & 0x1F) << 6;
        if (v7 >= 0x80)
        {
          result = v7 | v6 & 0x3F;
          v8 = 2;
LABEL_8:
          *a3 = v8;
          return result;
        }
      }
    }

    else if (v5 != 2)
    {
      if ((v3 & 0xF0) == 0xE0)
      {
        v9 = a1[1];
        if (v9 <= -65)
        {
          v10 = a1[2];
          if (v10 <= -65)
          {
            v11 = (v3 & 0xF) << 12;
            v12 = v11 & 0xFFFFF03F | ((v9 & 0x3F) << 6);
            if (v12 >= 0x800 && ((v11 - 57344) < 0x102000 || v12 >> 11 <= 0x1A))
            {
              result = v11 & 0xFFFFF000 | ((v9 & 0x3F) << 6) | v10 & 0x3F;
              v8 = 3;
              goto LABEL_8;
            }
          }
        }
      }

      else if (v5 >= 4 && (v3 & 0xF8) == 0xF0)
      {
        v13 = a1[1];
        if (v13 <= -65)
        {
          v14 = a1[2];
          if (v14 <= -65)
          {
            v15 = a1[3];
            if (v15 <= -65)
            {
              v16 = ((v3 & 7) << 18) | ((v13 & 0x3F) << 12);
              if (v16 >= 0x10000)
              {
                result = v15 & 0x3F | ((v14 & 0x3F) << 6) | v16;
                if (v16 - 57344 < 0x102000 || result >> 11 <= 0x1A)
                {
                  v8 = 4;
                  goto LABEL_8;
                }
              }
            }
          }
        }
      }
    }
  }

  *a3 = 1;
  return 65533;
}

uint64_t sub_232CB1490()
{
  if ((*off_281934850() & 1) == 0)
  {
    sub_232CB195C();
  }

  return off_281934838(&off_281934838);
}

uint64_t sub_232CB14D4(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  strerror_r(a1, __strerrbuf, 0x3FFuLL);
  sub_232C83BBC(&v7);
  v3 = strlen(__strerrbuf);
  v4 = sub_232C85DAC(&v7, __strerrbuf, v3);
  v5 = sub_232C85DAC(v4, " Error #", 8);
  MEMORY[0x238392A80](v5, a1);
  std::stringbuf::str();
  v7 = *MEMORY[0x277D82828];
  *(&v7 + *(v7 - 24)) = *(MEMORY[0x277D82828] + 24);
  v8 = MEMORY[0x277D82878] + 16;
  if (v10 < 0)
  {
    operator delete(v9[7].__locale_);
  }

  v8 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v9);
  std::ostream::~ostream();
  return MEMORY[0x238392BA0](&v11);
}

unint64_t sub_232CB16B8(uint64_t a1, unint64_t a2)
{
  if (!a2)
  {
    sub_232CB19E0();
  }

  return (a1 + a2 - 1) / a2 * a2;
}

void sub_232CB16E0(std::string *this)
{
  LOBYTE(size) = *(&this->__r_.__value_.__s + 23);
  if ((size & 0x80u) != 0)
  {
    size = this->__r_.__value_.__l.__size_;
  }

  if ((size & 3) != 0)
  {
    do
    {
      std::string::push_back(this, 0);
      LOBYTE(v3) = *(&this->__r_.__value_.__s + 23);
      if ((v3 & 0x80u) != 0)
      {
        v3 = this->__r_.__value_.__l.__size_;
      }
    }

    while ((v3 & 3) != 0);
  }
}

void *sub_232CB1748@<X0>(void *a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = a1[1];
  v5 = v4 >= a2;
  v6 = v4 - a2;
  if (v5)
  {
    *a1 += a2;
    a1[1] = v6;

    return sub_232CB32B4(a3);
  }

  else
  {
    LODWORD(v9) = 13;
    v7 = sub_232C83BBC(&v10);
    sub_232C85DAC(v7, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/util.cc", 63, v9);
    sub_232C85DAC(&v10, "(", 1);
    MEMORY[0x238392A80](&v10, 287);
    sub_232C85DAC(&v10, ") [", 3);
    sub_232C85DAC(&v10, "string.size() >= size", 21);
    sub_232C85DAC(&v10, "] ", 2);
    sub_232C809A4(&v9, a3);
    v10 = *MEMORY[0x277D82828];
    *(&v10 + *(v10 - 24)) = *(MEMORY[0x277D82828] + 24);
    v11 = MEMORY[0x277D82878] + 16;
    if (v13 < 0)
    {
      operator delete(v12[7].__locale_);
    }

    v11 = MEMORY[0x277D82868] + 16;
    std::locale::~locale(v12);
    std::ostream::~ostream();
    return MEMORY[0x238392BA0](&v14);
  }
}

_BYTE *sub_232CB195C()
{
  sub_232CB1234();
  v0 = off_281934838(&off_281934838);
  *v0 = v3;
  do
  {
    v4 = v2(v1);
    *(v4 + 4 * v6) = v5;
  }

  while (v6 != 623);
  *(v2(v1) + 2496) = 0;
  result = off_281934850();
  *result = 1;
  return result;
}

uint64_t sub_232CB1A0C(uint64_t a1, uint64_t a2)
{
  v4 = sub_232CA1BC0(a1);
  *v4 = &unk_284815918;
  v4[1] = a2 + 16;
  sub_232C81DB0(v4);
  return a1;
}

void *sub_232CB1A74(uint64_t a1, uint64_t a2, _DWORD *a3, unint64_t a4)
{
  result = sub_232C7FD40(a1, a2, a3, a4);
  *result = &unk_284815918;
  return result;
}

void sub_232CB1AAC(void *a1)
{
  sub_232C80C50(a1);

  JUMPOUT(0x238392C10);
}

void sub_232CB1AE4(uint64_t *a1@<X0>, _BYTE *a2@<X1>, unint64_t a3@<X2>, void *a4@<X8>, float a5@<S0>)
{
  v70 = *MEMORY[0x277D85DE8];
  (*(*a1 + 16))(v56);
  if (*&v56[0])
  {
    sub_232CB32BC(v56);
LABEL_3:
    *a4 = 0;
    a4[1] = 0;
    a4[2] = 0;
    return;
  }

  sub_232CB32BC(v56);
  if (!a3)
  {
    goto LABEL_3;
  }

  v64 = 0;
  v65 = 0;
  v66 = 0;
  __p = 0;
  v61 = 0uLL;
  if (a3 >> 59)
  {
    sub_232C84C3C();
  }

  sub_232CB2968(v56, a3, 0, &__p);
  v10 = (*(&v56[0] + 1) - (v61 - __p));
  memcpy(v10, __p, v61 - __p);
  v11 = __p;
  v12 = *(&v61 + 1);
  __p = v10;
  v61 = v56[1];
  *&v56[1] = v11;
  *(&v56[1] + 1) = v12;
  *&v56[0] = v11;
  *(&v56[0] + 1) = v11;
  if (v11)
  {
    operator delete(v11);
  }

  memset(v58, 0, sizeof(v58));
  v59 = 1065353216;
  memset(v56 + 8, 0, 40);
  v57 = 256;
  v55[0] = a1;
  v55[1] = v56;
  v55[2] = &__p;
  v55[3] = &v64;
  v55[4] = v58;
  *&v56[0] = &unk_284815A30;
  v13 = 1;
  do
  {
    v63 = 0uLL;
    v14 = sub_232C8B038(a1[2], a2, a3, &v62 + 8);
    *&v63 = a2;
    *(&v63 + 1) = v14;
    a3 -= v14;
    if (a3)
    {
      v15 = v13;
    }

    else
    {
      v15 = -1;
    }

    LODWORD(v62) = v13 - 2;
    DWORD1(v62) = v15;
    v16 = v61;
    if (v61 >= *(&v61 + 1))
    {
      v19 = (v61 - __p) >> 5;
      v20 = v19 + 1;
      if ((v19 + 1) >> 59)
      {
        sub_232C84C3C();
      }

      v21 = *(&v61 + 1) - __p;
      if ((*(&v61 + 1) - __p) >> 4 > v20)
      {
        v20 = v21 >> 4;
      }

      if (v21 >= 0x7FFFFFFFFFFFFFE0)
      {
        v22 = 0x7FFFFFFFFFFFFFFLL;
      }

      else
      {
        v22 = v20;
      }

      sub_232CB2968(&v67, v22, v19, &__p);
      v23 = v69;
      v24 = v63;
      *v69 = v62;
      *(v23 + 16) = v24;
      *&v69 = v69 + 32;
      v25 = &v68[-(v61 - __p)];
      memcpy(v25, __p, v61 - __p);
      v26 = __p;
      v27 = *(&v61 + 1);
      __p = v25;
      v28 = v69;
      v61 = v69;
      *&v69 = v26;
      *(&v69 + 1) = v27;
      v67 = v26;
      v68 = v26;
      if (v26)
      {
        v54 = v28;
        operator delete(v26);
        v28 = v54;
      }

      v18 = v28;
    }

    else
    {
      v17 = v63;
      *v61 = v62;
      *(v16 + 16) = v17;
      v18 = (v16 + 32);
    }

    a2 += v14;
    *&v61 = v18;
    ++v13;
  }

  while (a3);
  if (__p != v18)
  {
    if ((v18 - __p) >= 0x21)
    {
      v29 = 1;
      do
      {
        sub_232CB224C(v55, v29 - 1, v29);
        ++v29;
      }

      while (v29 < (v61 - __p) >> 5);
    }

    v30 = v64;
    v31 = v65;
    if (v64 == v65)
    {
LABEL_55:
      *(&v63 + 1) = 0;
      operator new();
    }

    v32 = 0;
    while (1)
    {
      v33 = *v30;
      v34 = v31 - v30;
      if (v34 >= 2)
      {
        v35 = 0;
        v36 = v30;
        do
        {
          v37 = v36;
          v36 += v35 + 1;
          v38 = 2 * v35;
          v35 = (2 * v35) | 1;
          v39 = v38 + 2;
          if (v39 < v34)
          {
            v40 = v36[1];
            v41 = *(*v36 + 2);
            v42 = *(v40 + 2);
            if (v41 < v42 || v41 == v42 && **v36 > *v40)
            {
              ++v36;
              v35 = v39;
            }
          }

          *v37 = *v36;
        }

        while (v35 <= ((v34 - 2) >> 1));
        v43 = v31 - 1;
        if (v36 == v43)
        {
          *v36 = v33;
        }

        else
        {
          *v36 = *v43;
          *v43 = v33;
          sub_232CB2634(v30, (v36 + 1), v36 + 1 - v30);
        }
      }

      --v65;
      v44 = *v33;
      v45 = *v33;
      v46 = __p;
      v47 = *(__p + 4 * v45 + 3);
      if (!v47)
      {
        goto LABEL_54;
      }

      v48 = v33[1];
      v49 = *(__p + 4 * v48 + 3);
      if (!v49 || v49 + v47 != *(v33 + 2))
      {
        goto LABEL_54;
      }

      if (a5 > 0.0)
      {
        if (a5 >= 1.0)
        {
          goto LABEL_54;
        }

        if (!v32)
        {
          v32 = sub_232CB1490();
        }

        v50 = sub_232C9E920(v32);
        if ((v50 + sub_232C9E920(v32) * 4294967300.0) * 5.42101086e-20 < a5)
        {
          goto LABEL_54;
        }

        v46 = __p;
        v44 = *v33;
        v48 = v33[1];
        v45 = *v33;
      }

      v51 = &v46[8 * v45];
      v52 = &v46[8 * v48];
      *(v51 + 3) += *(v52 + 3);
      v53 = *(v52 + 1);
      *(v51 + 1) = v53;
      if ((v53 & 0x80000000) == 0)
      {
        v46[8 * v53] = v44;
      }

      *(v52 + 2) = "";
      *(v52 + 3) = 0;
      sub_232CB224C(v55, *(__p + 8 * v45), v44);
      sub_232CB224C(v55, *v33, *(__p + 8 * *v33 + 1));
LABEL_54:
      v30 = v64;
      v31 = v65;
      if (v64 == v65)
      {
        goto LABEL_55;
      }
    }
  }

  *a4 = 0;
  a4[1] = 0;
  a4[2] = 0;
  sub_232CB2568(v56);
  sub_232CA1200(v58);
  if (__p)
  {
    *&v61 = __p;
    operator delete(__p);
  }

  if (v64)
  {
    v65 = v64;
    operator delete(v64);
  }
}

void sub_232CB21B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, void *__p, uint64_t a31, uint64_t a32, ...)
{
  va_start(va, a32);
  sub_232CB2A18(va);
  sub_232CB2568(&a18);
  sub_232CA1200(&a25);
  if (__p)
  {
    a31 = __p;
    operator delete(__p);
  }

  v34 = *(v32 - 208);
  if (v34)
  {
    *(v32 - 200) = v34;
    operator delete(v34);
  }

  _Unwind_Resume(a1);
}

double sub_232CB224C(uint64_t *a1, int a2, int a3)
{
  if (a2 != -1)
  {
    v38[11] = v3;
    v38[12] = v4;
    if (a3 != -1)
    {
      v6 = a2;
      v7 = *a1[2];
      v8 = v7 + 32 * a2;
      if ((*(v8 + 8) & 1) == 0)
      {
        v9 = a3;
        v10 = v7 + 32 * a3;
        if ((*(v10 + 8) & 1) == 0)
        {
          v11 = *a1;
          v12 = *(v8 + 16);
          v13 = (*(v10 + 24) + *(v8 + 24));
          v37[0] = v12;
          v37[1] = v13;
          v14 = *(v11 + 40);
          v15 = *v14;
          if (v13)
          {
            v16 = 0;
            v17 = v13;
            while (1)
            {
              v18 = *v12;
              v12 = (v12 + 1);
              v16 ^= (v15 >> 10 << ((v15 >> 6) & 8)) ^ v18;
              v15 = v14[v16];
              if ((v15 & 0x800000FF) != v18)
              {
                break;
              }

              v17 = (v17 - 1);
              if (!v17)
              {
                goto LABEL_16;
              }
            }
          }

          else
          {
            v19 = *v12;
            if (*v12)
            {
              v16 = 0;
              v20 = v12 + 1;
              while (1)
              {
                v16 ^= (v15 >> 10 << ((v15 >> 6) & 8)) ^ v19;
                v15 = v14[v16];
                if ((v15 & 0x800000FF) != v19)
                {
                  break;
                }

                v21 = *v20++;
                v19 = v21;
                if (!v21)
                {
                  goto LABEL_16;
                }
              }
            }

            else
            {
              v16 = 0;
LABEL_16:
              if ((v15 & 0x100) != 0)
              {
                v22 = v14[v16 ^ (v15 >> 10 << ((v15 >> 6) & 8))];
                v23 = a1[1];
                v24 = v23[5];
                v25 = v23[6];
                v26 = v23[4];
                if (v26 >= v25)
                {
                  v26 = 0;
                  ++v24;
                  v23[4] = 0;
                  v23[5] = v24;
                }

                v27 = v23[1];
                if (v24 == (v23[2] - v27) >> 3)
                {
                  is_mul_ok(v25, 0x18uLL);
                  operator new[]();
                }

                v28 = *(v27 + 8 * v24) + 24 * v26;
                v23[4] = v26 + 1;
                v36 = v28;
                *v28 = a2;
                *(v28 + 4) = a3;
                *(v28 + 8) = (*(*v11 + 136))(v11, v22 & 0x7FFFFFFF);
                *(v28 + 16) = v13;
                v29 = a1[3];
                sub_232CA476C(v29, &v36);
                sub_232CB2634(*v29, v29[1], (v29[1] - *v29) >> 3);
                if ((*(**(v11 + 8) + 128))(*(v11 + 8), v22 & 0x7FFFFFFF))
                {
                  v31 = *a1[2];
                  v34 = *(v31 + 32 * v6 + 16);
                  v35 = *(v31 + 32 * v9 + 16);
                  v32 = a1[4];
                  v38[0] = v37;
                  v33 = sub_232CB26D0(v32, v37, &unk_232D006B2, v38);
                  result = *&v34;
                  *(v33 + 2) = v34;
                  *(v33 + 3) = v35;
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_232CB250C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7[0] = a2;
  v7[1] = a3;
  v6 = a4;
  v4 = *(a1 + 24);
  if (!v4)
  {
    sub_232CB2A98();
  }

  return (*(*v4 + 48))(v4, v7, &v6);
}

void *sub_232CB2568(void *a1)
{
  *a1 = &unk_284815A30;
  v2 = a1[1];
  v3 = a1[2];
  if (v2 != v3)
  {
    do
    {
      if (*v2)
      {
        MEMORY[0x238392BE0](*v2, 0x1000C801E56706BLL);
      }

      ++v2;
    }

    while (v2 != v3);
    v2 = a1[1];
  }

  if (v2)
  {
    a1[2] = v2;
    operator delete(v2);
  }

  return a1;
}

uint64_t sub_232CB2634(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = a3 - 2;
  if (a3 >= 2)
  {
    v4 = v3 >> 1;
    v5 = (result + 8 * (v3 >> 1));
    v6 = *v5;
    v7 = *(a2 - 8);
    v8 = *(*v5 + 8);
    v9 = *(v7 + 8);
    if (v8 < v9 || v8 == v9 && *v6 > *v7)
    {
      *(a2 - 8) = v6;
      if (v3 >= 2)
      {
        v10 = (result + 8 * (v3 >> 1));
        while (1)
        {
          v11 = v4 - 1;
          v4 = (v4 - 1) >> 1;
          v5 = (result + 8 * v4);
          v12 = *v5;
          v13 = *(*v5 + 8);
          if (v13 >= v9 && (v13 != v9 || *v12 <= *v7))
          {
            break;
          }

          *v10 = v12;
          v10 = (result + 8 * v4);
          if (v11 <= 1)
          {
            goto LABEL_13;
          }
        }

        v5 = v10;
      }

LABEL_13:
      *v5 = v7;
    }
  }

  return result;
}

uint64_t **sub_232CB26D0(void *a1, uint64_t **a2, uint64_t a3, _OWORD **a4)
{
  v6 = sub_232CB2940(a1, *a2, a2[1]);
  v7 = v6;
  v8 = a1[1];
  if (!*&v8)
  {
    goto LABEL_20;
  }

  v9 = vcnt_s8(v8);
  v9.i16[0] = vaddlv_u8(v9);
  v10 = v9.u32[0];
  if (v9.u32[0] > 1uLL)
  {
    v11 = v6;
    if (v6 >= *&v8)
    {
      v11 = v6 % *&v8;
    }
  }

  else
  {
    v11 = (*&v8 - 1) & v6;
  }

  v12 = *(*a1 + 8 * v11);
  if (!v12 || (v13 = *v12) == 0)
  {
LABEL_20:
    operator new();
  }

  v16 = a2;
  v14 = *a2;
  v15 = v16[1];
  while (1)
  {
    v17 = v13[1];
    if (v17 == v7)
    {
      break;
    }

    if (v10 > 1)
    {
      if (v17 >= *&v8)
      {
        v17 %= *&v8;
      }
    }

    else
    {
      v17 &= *&v8 - 1;
    }

    if (v17 != v11)
    {
      goto LABEL_20;
    }

LABEL_19:
    v13 = *v13;
    if (!v13)
    {
      goto LABEL_20;
    }
  }

  if (v13[3] != v15 || memcmp(v13[2], v14, v15))
  {
    goto LABEL_19;
  }

  return v13;
}

uint64_t *sub_232CB2968(uint64_t *a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  a1[3] = 0;
  a1[4] = a4;
  if (a2)
  {
    if (!(a2 >> 59))
    {
      operator new();
    }

    sub_232C849B0();
  }

  *a1 = 0;
  a1[1] = 32 * a3;
  a1[2] = 32 * a3;
  a1[3] = 0;
  return a1;
}

void sub_232CB29E0(void *a1)
{
  sub_232CB2568(a1);

  JUMPOUT(0x238392C10);
}

uint64_t sub_232CB2A18(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

void sub_232CB2A98()
{
  exception = __cxa_allocate_exception(8uLL);
  *exception = MEMORY[0x277D82888] + 16;
  __cxa_throw(exception, MEMORY[0x277D82728], MEMORY[0x277D82660]);
}

__n128 sub_232CB2B60(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284815A60;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void sub_232CB2B98(void *a1, void *a2, uint64_t *a3)
{
  v4 = a2[1];
  v5 = *a3;
  *&v21 = *a2;
  *(&v21 + 1) = v4;
  v6 = a1[1];
  v7 = ((*v6)[14])(v6, v21, v4);
  if (v7 != -1 && ((*(*v6[1] + 128))(v6[1], v7) & 1) != 0 && (v8 = sub_232CB2D9C(a1[3], &v21)) != 0)
  {
    v9 = v8;
    sub_232CB250C(a1[2], v9[4], v9[5], v5);
    sub_232CB250C(a1[2], v9[6], v9[7], v5);
  }

  else
  {
    v11 = *(v5 + 8);
    v10 = *(v5 + 16);
    if (v11 >= v10)
    {
      v13 = 0xAAAAAAAAAAAAAAABLL * ((v11 - *v5) >> 3);
      v14 = v13 + 1;
      if (v13 + 1 > 0xAAAAAAAAAAAAAAALL)
      {
        sub_232C84C3C();
      }

      v15 = 0xAAAAAAAAAAAAAAABLL * ((v10 - *v5) >> 3);
      if (2 * v15 > v14)
      {
        v14 = 2 * v15;
      }

      if (v15 >= 0x555555555555555)
      {
        v16 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v16 = v14;
      }

      if (v16)
      {
        sub_232C85B08(v5, v16);
      }

      v17 = 24 * v13;
      *v17 = v21;
      *(v17 + 16) = v7;
      v12 = 24 * v13 + 24;
      v18 = *(v5 + 8) - *v5;
      v19 = v17 - v18;
      memcpy((v17 - v18), *v5, v18);
      v20 = *v5;
      *v5 = v19;
      *(v5 + 8) = v12;
      *(v5 + 16) = 0;
      if (v20)
      {
        operator delete(v20);
      }
    }

    else
    {
      *v11 = v21;
      *(v11 + 16) = v7;
      v12 = v11 + 24;
    }

    *(v5 + 8) = v12;
  }
}

uint64_t sub_232CB2D50(uint64_t a1, uint64_t a2)
{
  if (sub_232CB2EB0(a2, &unk_284815AD0))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t **sub_232CB2D9C(void *a1, uint64_t a2)
{
  v4 = sub_232CB2940(a1, *a2, *(a2 + 8));
  v5 = a1[1];
  if (!*&v5)
  {
    return 0;
  }

  v6 = v4;
  v7 = vcnt_s8(v5);
  v7.i16[0] = vaddlv_u8(v7);
  v8 = v7.u32[0];
  if (v7.u32[0] > 1uLL)
  {
    v9 = v4;
    if (v4 >= *&v5)
    {
      v9 = v4 % *&v5;
    }
  }

  else
  {
    v9 = (*&v5 - 1) & v4;
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10)
  {
    return 0;
  }

  v11 = *v10;
  if (*v10)
  {
    v14 = a2;
    v12 = *a2;
    v13 = *(v14 + 8);
    do
    {
      v15 = v11[1];
      if (v15 == v6)
      {
        if (v11[3] == v13 && !memcmp(v11[2], v12, v13))
        {
          return v11;
        }
      }

      else
      {
        if (v8 > 1)
        {
          if (v15 >= *&v5)
          {
            v15 %= *&v5;
          }
        }

        else
        {
          v15 &= *&v5 - 1;
        }

        if (v15 != v9)
        {
          return 0;
        }
      }

      v11 = *v11;
    }

    while (v11);
  }

  return v11;
}

BOOL sub_232CB2EB0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  if (v2 == v3)
  {
    return 1;
  }

  if ((v3 & v2) < 0 != __OFSUB__(v2, v3))
  {
    return strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), (v3 & 0x7FFFFFFFFFFFFFFFLL)) == 0;
  }

  return 0;
}

void *sub_232CB2F04(void *result, void *a2)
{
  v5[3] = *MEMORY[0x277D85DE8];
  if (a2 != result)
  {
    v3 = result;
    result = result[3];
    v4 = a2[3];
    if (result == v3)
    {
      if (v4 == a2)
      {
        (*(*result + 24))(result, v5);
        (*(*v3[3] + 32))(v3[3]);
        v3[3] = 0;
        (*(*a2[3] + 24))(a2[3], v3);
        (*(*a2[3] + 32))(a2[3]);
        a2[3] = 0;
        v3[3] = v3;
        (*(v5[0] + 24))(v5, a2);
        result = (*(v5[0] + 32))(v5);
      }

      else
      {
        (*(*result + 24))(result, a2);
        result = (*(*v3[3] + 32))(v3[3]);
        v3[3] = a2[3];
      }

      a2[3] = a2;
    }

    else if (v4 == a2)
    {
      (*(*v4 + 24))(a2[3], v3);
      result = (*(*a2[3] + 32))(a2[3]);
      a2[3] = v3[3];
      v3[3] = v3;
    }

    else
    {
      v3[3] = v4;
      a2[3] = result;
    }
  }

  return result;
}

void sub_232CB315C(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_232CB39D0(a1);
}

void sub_232CB3168()
{
  if (!dword_27DDD5658)
  {
    v0 = sub_232CB31B0(MEMORY[0x277D82670], "Program terminated with an unrecoverable error.");
    v1 = sub_232CB31F8(v0);
    sub_232CB32B0(v1);
    exit(-1);
  }

  dword_27DDD5658 = 2;
}

void *sub_232CB31B0(void *a1, char *__s)
{
  v4 = strlen(__s);

  return sub_232C85DAC(a1, __s, v4);
}

void *sub_232CB31F8(void *a1)
{
  std::ios_base::getloc((a1 + *(*a1 - 24)));
  v2 = std::locale::use_facet(&v4, MEMORY[0x277D82680]);
  (v2->__vftable[2].~facet_0)(v2, 10);
  std::locale::~locale(&v4);
  std::ostream::put();
  std::ostream::flush();
  return a1;
}

uint64_t *sub_232CB32BC(uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    sub_232CB36A4(a1, v2);
  }

  return a1;
}

void sub_232CB3400(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  *v1 = 0;
  if (v3)
  {
    sub_232CB36A4(v1, v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_232CB3424(uint64_t *a1, _DWORD **a2)
{
  if (*a2)
  {
    operator new();
  }

  *a1 = 0;
  return a1;
}

void sub_232CB34D4(uint64_t *result, _DWORD **a2)
{
  v3 = *result;
  if (*result != *a2)
  {
    if (*a2)
    {
      operator new();
    }

    *result = 0;
    if (v3)
    {

      sub_232CB36A4(result, v3);
    }
  }
}

const char *sub_232CB35B4(uint64_t *a1)
{
  v1 = *a1;
  if (!*a1)
  {
    return "";
  }

  result = (v1 + 8);
  if (*(v1 + 31) < 0)
  {
    return *result;
  }

  return result;
}

std::string *sub_232CB35E0@<X0>(std::string *result@<X0>, uint64_t a2@<X8>)
{
  v3 = result->__r_.__value_.__r.__words[0];
  if (result->__r_.__value_.__r.__words[0])
  {
    v4 = result;
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    v5 = *v3 - 1;
    if (v5 < 0x10)
    {
      MEMORY[0x238392910](a2, off_2789A7B00[v5]);
    }

    std::string::append(a2, ": ");
    v6 = *(v4->__r_.__value_.__r.__words[0] + 31);
    if (v6 >= 0)
    {
      v7 = (v4->__r_.__value_.__r.__words[0] + 8);
    }

    else
    {
      v7 = *(v4->__r_.__value_.__r.__words[0] + 8);
    }

    if (v6 >= 0)
    {
      v8 = *(v4->__r_.__value_.__r.__words[0] + 31);
    }

    else
    {
      v8 = *(v4->__r_.__value_.__r.__words[0] + 16);
    }

    return std::string::append(a2, v7, v8);
  }

  else
  {
    *(a2 + 23) = 2;
    strcpy(a2, "OK");
  }

  return result;
}

void sub_232CB3688(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_232CB36A4(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    if (*(a2 + 31) < 0)
    {
      operator delete(*(a2 + 8));
    }

    JUMPOUT(0x238392C10);
  }
}

void *sub_232CB3700()
{
  if ((atomic_load_explicit(&qword_27DDD4D90, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27DDD4D90))
  {
    operator new();
  }

  v0 = qword_27DDD4D88;

  return sub_232CB37D0(v0);
}

void sub_232CB3798(_Unwind_Exception *a1)
{
  MEMORY[0x238392C10](v1, 0x1000C4000313F17);
  __cxa_guard_abort(&qword_27DDD4D90);
  _Unwind_Resume(a1);
}

void *sub_232CB37D0(pthread_key_t *a1)
{
  v2 = pthread_getspecific(*a1);
  if (!v2)
  {
    v2 = operator new(0x40uLL, 0x40uLL);
    *v2 = xmmword_232D00ED0;
    v2[2] = 0;
    pthread_setspecific(*a1, v2);
  }

  return v2;
}

uint64_t sub_232CB3838(uint64_t a1, unint64_t a2)
{
  if (*(a1 + 16) < a2)
  {
    sub_232CB5704(v7, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/arena_impl.h", 111);
    v4 = sub_232CB571C(v7, "CHECK failed: n <= size_: ");
    sub_232CB5858(&v6, &v4->__r_.__value_.__l.__data_);
    sub_232CB5860(v7);
  }

  return a1 + a2;
}

void sub_232CB38B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_232CB5860(va);
  _Unwind_Resume(a1);
}

void *sub_232CB38E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 8);
  v7 = v6 + 72;
  if (v6 + 72 > *(a1 + 16))
  {
    sub_232CB5704(v13, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/arena.cc", 398);
    v8 = sub_232CB571C(v13, "CHECK failed: (pos + ArenaImpl::kSerialArenaSize) <= (b->size()): ");
    sub_232CB5858(&v12, &v8->__r_.__value_.__l.__data_);
    sub_232CB5860(v13);
  }

  v9 = sub_232CB3838(a1, v6);
  *(a1 + 8) = v7;
  *v9 = a3;
  v9[1] = a2;
  v9[2] = a1;
  v9[5] = sub_232CB3838(a1, v7);
  v10 = sub_232CB3838(a1, *(a1 + 16));
  v9[3] = 0;
  v9[7] = 0;
  v9[8] = 0;
  v9[6] = v10;
  return v9;
}

void sub_232CB39B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_232CB5860(va);
  _Unwind_Resume(a1);
}

void *sub_232CB3A00(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v5 = *(a1 + 32);
  if (a2 == -1)
  {
    if (v5)
    {
      v7 = *v5;
    }

    else
    {
      v7 = 256;
    }
  }

  else
  {
    if (v5)
    {
      v6 = *(v5 + 8);
    }

    else
    {
      v6 = 0x2000;
    }

    if (v6 >= 2 * a2)
    {
      v7 = 2 * a2;
    }

    else
    {
      v7 = v6;
    }
  }

  if (a3 >= 0xFFFFFFFFFFFFFFE8)
  {
    sub_232CB5704(v12, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/arena.cc", 245);
    v8 = sub_232CB571C(v12, "CHECK failed: (min_bytes) <= (std::numeric_limits<size_t>::max() - kBlockHeaderSize): ");
    sub_232CB5858(&v11, &v8->__r_.__value_.__l.__data_);
    sub_232CB5860(v12);
    v5 = *(a1 + 32);
  }

  if (v7 <= a3 + 24)
  {
    v9 = a3 + 24;
  }

  else
  {
    v9 = v7;
  }

  if (v5)
  {
    result = (*(v5 + 16))(v9);
  }

  else
  {
    result = operator new(v9);
  }

  atomic_fetch_add_explicit((a1 + 16), v9, memory_order_relaxed);
  return result;
}

void sub_232CB3AEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_232CB5860(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_232CB3B04(uint64_t a1, unint64_t a2, uint64_t a3)
{
  if (a1)
  {
    v6 = *(a1 + 16);
  }

  else
  {
    v6 = -1;
  }

  v7 = sub_232CB3A00(a3, v6, a2);

  return sub_232CB4098(v7, v8, a1, 0, 0);
}

uint64_t *sub_232CB3B60(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = a1[3];
  do
  {
    if (result)
    {
      if ((2 * *result) >= 0x40)
      {
        v7 = 64;
      }

      else
      {
        v7 = 2 * *result;
      }
    }

    else
    {
      v7 = 8;
    }

    result = sub_232CB3BFC(a1, (16 * v7 + 23) & 0xFF0);
    v8 = a1[3];
    *result = v7;
    result[1] = v8;
    a1[3] = result;
    a1[7] = (result + 2);
    a1[8] = &result[2 * v7 + 2];
  }

  while (!v7);
  result[2] = a2;
  result[3] = a3;
  a1[7] = (result + 4);
  return result;
}

unint64_t sub_232CB3BFC(uint64_t *a1, unint64_t a2)
{
  if (((a2 + 7) & 0xFFFFFFFFFFFFFFF8) != a2)
  {
    sub_232CB5704(v9, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/arena_impl.h", 159);
    v4 = sub_232CB571C(v9, "CHECK failed: (internal::AlignUpTo8(n)) == (n): ");
    sub_232CB5858(&v8, &v4->__r_.__value_.__l.__data_);
    sub_232CB5860(v9);
  }

  result = a1[5];
  v6 = a1[6];
  if (v6 < result)
  {
    sub_232CB5704(v9, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/arena_impl.h", 160);
    v7 = sub_232CB571C(v9, "CHECK failed: (limit_) >= (ptr_): ");
    sub_232CB5858(&v8, &v7->__r_.__value_.__l.__data_);
    sub_232CB5860(v9);
    result = a1[5];
    v6 = a1[6];
  }

  if (v6 - result < a2)
  {
    return sub_232CB3F84(a1, a2);
  }

  a1[5] = result + a2;
  return result;
}

void sub_232CB3CE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_232CB5860(va);
  _Unwind_Resume(a1);
}

unint64_t sub_232CB3D04(void *a1, unint64_t a2, uint64_t a3)
{
  v6 = sub_232CB3700();
  if (v6[1] == a1[3])
  {
    explicit = v6[2];
    goto LABEL_3;
  }

  v9 = sub_232CB3700();
  explicit = atomic_load_explicit(a1 + 1, memory_order_acquire);
  if (explicit && explicit[1] == v9)
  {
LABEL_3:

    return sub_232CB3DB0(explicit, a2, a3);
  }

  return sub_232CB3E10(a1, a2, a3);
}

unint64_t sub_232CB3DB0(uint64_t *a1, unint64_t a2, uint64_t a3)
{
  v5 = sub_232CB3BFC(a1, a2);
  v6 = v5;
  v7 = a1[7];
  if (v7 == a1[8])
  {
    sub_232CB3B60(a1, v5, a3);
  }

  else
  {
    *v7 = v5;
    v7[1] = a3;
    a1[7] = (v7 + 2);
  }

  return v6;
}

unint64_t sub_232CB3E10(void *a1, unint64_t a2, uint64_t a3)
{
  v6 = sub_232CB3700();
  v7 = sub_232CB3EBC(a1, v6);

  return sub_232CB3DB0(v7, a2, a3);
}

unint64_t sub_232CB3E74(void *a1, unint64_t a2)
{
  v4 = sub_232CB3700();
  v5 = sub_232CB3EBC(a1, v4);

  return sub_232CB3BFC(v5, a2);
}

unint64_t sub_232CB3EBC(void *a1, uint64_t a2)
{
  explicit = atomic_load_explicit(a1, memory_order_acquire);
  if (explicit)
  {
    while (*(explicit + 8) != a2)
    {
      explicit = *(explicit + 32);
      if (!explicit)
      {
        goto LABEL_4;
      }
    }
  }

  else
  {
LABEL_4:
    v5 = sub_232CB3A00(a1, -1, 0x48uLL);
    *v5 = xmmword_232D00EE0;
    v5[2] = v6;
    v7 = sub_232CB38E4(v5, a2, a1);
    explicit = v7;
    v8 = *a1;
    v7[4] = *a1;
    v9 = v8;
    atomic_compare_exchange_strong_explicit(a1, &v9, v7, memory_order_release, memory_order_relaxed);
    if (v9 != v8)
    {
      v10 = v9;
      do
      {
        v7[4] = v9;
        atomic_compare_exchange_strong_explicit(a1, &v10, v7, memory_order_release, memory_order_relaxed);
        v11 = v10 == v9;
        v9 = v10;
      }

      while (!v11);
    }
  }

  sub_232CB3700()[2] = explicit;
  v12 = a1[3];
  sub_232CB3700()[1] = v12;
  atomic_store(explicit, a1 + 1);
  return explicit;
}

unint64_t sub_232CB3F84(uint64_t *a1, unint64_t a2)
{
  v4 = a1[2];
  *(v4 + 8) = *(v4 + 16) - a1[6] + a1[5];
  v5 = sub_232CB3B04(v4, a2, *a1);
  a1[2] = v5;
  a1[5] = sub_232CB3838(v5, v5[1]);
  a1[6] = sub_232CB3838(a1[2], *(a1[2] + 16));

  return sub_232CB3BFC(a1, a2);
}

unint64_t sub_232CB4004(void *a1, unint64_t a2)
{
  v4 = sub_232CB3700();
  if (v4[1] == a1[3])
  {
    explicit = v4[2];
    goto LABEL_3;
  }

  v7 = sub_232CB3700();
  explicit = atomic_load_explicit(a1 + 1, memory_order_acquire);
  if (explicit && explicit[1] == v7)
  {
LABEL_3:

    return sub_232CB3BFC(explicit, a2);
  }

  return sub_232CB3E74(a1, a2);
}

uint64_t *sub_232CB4098(uint64_t *a1, uint64_t a2, uint64_t a3, unsigned int a4, int a5)
{
  v6 = 2;
  if (!a5)
  {
    v6 = 0;
  }

  *a1 = v6 | a4 | a3;
  a1[1] = 24;
  a1[2] = a2;
  if ((a3 & 3) != 0)
  {
    sub_232CB5704(v10, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/arena_impl.h", 107);
    v7 = sub_232CB571C(v10, "CHECK failed: (reinterpret_cast<uintptr_t>(next) & 3) == (0u): ");
    sub_232CB5858(&v9, &v7->__r_.__value_.__l.__data_);
    sub_232CB5860(v10);
  }

  return a1;
}

void sub_232CB412C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_232CB5860(va);
  _Unwind_Resume(a1);
}

uint64_t sub_232CB4144(uint64_t result)
{
  if (result)
  {
    JUMPOUT(0x238392C00);
  }

  return result;
}

unint64_t *sub_232CB4154(unint64_t *a1)
{
  if ((atomic_load_explicit(byte_27DDD4D98, memory_order_acquire) & 1) == 0)
  {
    sub_232CB47DC();
  }

  std::mutex::lock(&stru_27DDC8830);
  explicit = atomic_load_explicit(a1 + 3, memory_order_acquire);
  if (!explicit)
  {
    v3 = a1[1];
    if (v3 >= 0x7FFFFFFFFFFFFFF8)
    {
      sub_232C85C94();
    }

    v4 = *a1;
    if (v3 >= 0x17)
    {
      operator new();
    }

    *(a1 + 23) = v3;
    if (v3)
    {
      memmove(a1, v4, v3);
    }

    *(a1 + v3) = 0;
    atomic_store(a1, a1 + 3);
    explicit = a1;
  }

  std::mutex::unlock(&stru_27DDC8830);
  return explicit;
}

uint64_t sub_232CB4250(uint64_t *a1, uint64_t a2, __int128 *a3, uint64_t a4)
{
  if (*a1 != a2)
  {
    sub_232CA7F94(a1);

    JUMPOUT(0x238392920);
  }

  if (!a4)
  {
    operator new();
  }

  if (*(a4 + 24))
  {
    sub_232CB4844(a4);
  }

  result = sub_232CB3D04(a4, 0x18uLL, sub_232CAFA9C);
  v8 = result;
  if (*(a3 + 23) < 0)
  {
    result = sub_232C866C0(result, *a3, *(a3 + 1));
  }

  else
  {
    v9 = *a3;
    *(result + 16) = *(a3 + 2);
    *result = v9;
  }

  *a1 = v8;
  return result;
}

void sub_232CB4394(uint64_t *a1, uint64_t a2, __int128 *a3, uint64_t a4)
{
  if (*a1 == a2)
  {
    if (!a4)
    {
      operator new();
    }

    if (*(a4 + 24))
    {
      v11 = a4;
      sub_232CB4844(a4);
      a4 = v11;
    }

    v9 = sub_232CB3D04(a4, 0x18uLL, sub_232CAFA9C);
    v10 = *(a3 + 2);
    *v9 = *a3;
    *(v9 + 16) = v10;
    *(a3 + 1) = 0;
    *(a3 + 2) = 0;
    *a3 = 0;
    *a1 = v9;
  }

  else
  {
    v6 = sub_232CA7F94(a1);
    v7 = v6;
    if (*(v6 + 23) < 0)
    {
      operator delete(*v6);
    }

    v8 = *a3;
    *(v7 + 16) = *(a3 + 2);
    *v7 = v8;
    *(a3 + 23) = 0;
    *a3 = 0;
  }
}

uint64_t *sub_232CB44C8(uint64_t *a1, uint64_t a2)
{
  if (*a1 == &qword_27DDD5660)
  {
    return sub_232CB44E4(a1, a2);
  }

  else
  {
    return sub_232CA7F94(a1);
  }
}

uint64_t *sub_232CB44E4(uint64_t **a1, uint64_t a2)
{
  if (*a1 != &qword_27DDD5660)
  {
    sub_232CB5704(v7, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/arenastring.cc", 147);
    v4 = sub_232CB571C(v7, "CHECK failed: IsDefault(default_value): ");
    sub_232CB5858(&v6, &v4->__r_.__value_.__l.__data_);
    sub_232CB5860(v7);
  }

  if (!a2)
  {
    operator new();
  }

  if (*(a2 + 24))
  {
    sub_232CB4874(a2);
  }

  result = sub_232CB3D04(a2, 0x18uLL, sub_232CAFA9C);
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  *a1 = result;
  return result;
}

void sub_232CB45BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_232CB5860(va);
  _Unwind_Resume(a1);
}

_BYTE *sub_232CB45D4(uint64_t *a1, unint64_t a2, uint64_t a3)
{
  if (*a1)
  {
    return sub_232CA7F94(a1);
  }

  else
  {
    return sub_232CB45F0(a1, a3, a2);
  }
}

_BYTE *sub_232CB45F0(unint64_t *a1, uint64_t a2, unint64_t a3)
{
  if (*a1)
  {
    sub_232CB5704(v13, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/arenastring.cc", 147);
    v6 = sub_232CB571C(v13, "CHECK failed: IsDefault(default_value): ");
    sub_232CB5858(&v12, &v6->__r_.__value_.__l.__data_);
    sub_232CB5860(v13);
  }

  explicit = atomic_load_explicit((a3 + 24), memory_order_acquire);
  if (explicit)
  {
    if (a2)
    {
      goto LABEL_5;
    }

LABEL_10:
    operator new();
  }

  explicit = sub_232CB4154(a3);
  if (!a2)
  {
    goto LABEL_10;
  }

LABEL_5:
  if (*(a2 + 24))
  {
    sub_232CB4874(a2);
  }

  v8 = sub_232CB3D04(a2, 0x18uLL, sub_232CAFA9C);
  v9 = v8;
  if (*(explicit + 23) < 0)
  {
    sub_232C866C0(v8, *explicit, explicit[1]);
  }

  else
  {
    v10 = *explicit;
    *(v8 + 16) = explicit[2];
    *v8 = v10;
  }

  *a1 = v9;
  return v9;
}

std::string *sub_232CB4754(std::string *result, unint64_t a2)
{
  if (result->__r_.__value_.__r.__words[0])
  {
    v3 = sub_232CA7F94(result);
    explicit = atomic_load_explicit((a2 + 24), memory_order_acquire);
    if (!explicit)
    {
      explicit = sub_232CB4154(a2);
    }

    return std::string::operator=(v3, explicit);
  }

  return result;
}

void sub_232CB47DC()
{
  if (__cxa_guard_acquire(byte_27DDD4D98))
  {
    __cxa_atexit(std::mutex::~mutex, &stru_27DDC8830, &dword_232B02000);

    __cxa_guard_release(byte_27DDD4D98);
  }
}

unint64_t sub_232CB48B4(unint64_t *a1, char *a2)
{
  while (1)
  {
    v5 = *a1;
    v4 = a1[1];
    if (!v4)
    {
      v10 = v5 - a2;
      v9 = v10 + 16;
      a1[1] = a2;
      if (((v10 + 16) & 0x80000000) == 0)
      {
        return v9;
      }

      goto LABEL_12;
    }

    v6 = a2 - v5;
    if (a2 <= v5)
    {
      break;
    }

    if (*(a1 + 56) == 1)
    {
      sub_232CB5704(v15, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/coded_stream.cc", 685);
      v7 = sub_232CB571C(v15, "CHECK failed: !had_error_: ");
      sub_232CB5858(&v14, &v7->__r_.__value_.__l.__data_);
      sub_232CB5860(v15);
    }

    if (v6 >= 17)
    {
      sub_232CB5704(v15, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/coded_stream.cc", 686);
      v8 = sub_232CB571C(v15, "CHECK failed: overrun <= kSlopBytes: ");
      sub_232CB5858(&v14, &v8->__r_.__value_.__l.__data_);
      sub_232CB5860(v15);
    }

    a2 = &sub_232CB4A50(a1)[v6];
    if (a1[7])
    {
      return 0;
    }
  }

  memcpy(v4, a1 + 2, a2 - (a1 + 2));
  v11 = *a1;
  a1[1] += a2 - (a1 + 2);
  v9 = v11 - a2;
  if (((v11 - a2) & 0x80000000) == 0)
  {
    return v9;
  }

LABEL_12:
  sub_232CB5704(v15, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/coded_stream.cc", 700);
  v12 = sub_232CB571C(v15, "CHECK failed: s >= 0: ");
  sub_232CB5858(&v14, &v12->__r_.__value_.__l.__data_);
  sub_232CB5860(v15);
  return v9;
}

void sub_232CB4A28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_232CB5860(va);
  _Unwind_Resume(a1);
}

char *sub_232CB4A50(char **a1)
{
  if (*(a1 + 56) == 1)
  {
    sub_232CB5704(v13, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/coded_stream.cc", 788);
    v2 = sub_232CB571C(v13, "CHECK failed: !had_error_: ");
    sub_232CB5858(&v12, &v2->__r_.__value_.__l.__data_);
    sub_232CB5860(v13);
  }

  if (a1[6])
  {
    v3 = a1 + 2;
    v5 = *a1;
    v4 = a1[1];
    if (v4)
    {
      memcpy(v4, a1 + 2, v5 - v3);
      v12 = 0;
      do
      {
        v13[0].__r_.__value_.__r.__words[0] = 0;
        if (((*(*a1[6] + 16))(a1[6], v13, &v12) & 1) == 0)
        {
          *(a1 + 56) = 1;
          goto LABEL_14;
        }

        v6 = v12;
      }

      while (!v12);
      v5 = v13[0].__r_.__value_.__r.__words[0];
      if (v12 >= 17)
      {
        *v13[0].__r_.__value_.__l.__data_ = **a1;
        *a1 = &v5[v6 - 16];
        a1[1] = 0;
        return v5;
      }

      if (v12 <= 0)
      {
        v10 = v13[0].__r_.__value_.__r.__words[0];
        sub_232CB5704(v13, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/coded_stream.cc", 810);
        v9 = sub_232CB571C(v13, "CHECK failed: size > 0: ");
        sub_232CB5858(&v11, &v9->__r_.__value_.__l.__data_);
        sub_232CB5860(v13);
        LODWORD(v6) = v12;
        v5 = v10;
      }

      *v3 = **a1;
      v7 = v3 + v6;
    }

    else
    {
      *v3 = *v5;
      v7 = (a1 + 4);
    }

    *a1 = v7;
    a1[1] = v5;
  }

  else
  {
    *(a1 + 56) = 1;
    v3 = a1 + 2;
LABEL_14:
    *a1 = (a1 + 4);
  }

  return v3;
}

void sub_232CB4BEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_232CB5860(va);
  _Unwind_Resume(a1);
}

char *sub_232CB4C0C(uint64_t a1, char *a2)
{
  if ((*(a1 + 56) & 1) == 0)
  {
    v3 = sub_232CB48B4(a1, a2);
    if (v3)
    {
      (*(**(a1 + 48) + 24))(*(a1 + 48), v3);
    }

    a2 = (a1 + 16);
    *a1 = a1 + 16;
    *(a1 + 8) = a1 + 16;
  }

  return a2;
}

char *sub_232CB4C78(uint64_t a1, char *a2)
{
  while (*(a1 + 56) != 1)
  {
    v3 = &a2[-*a1];
    if ((v3 & 0x80000000) != 0)
    {
      sub_232CB5704(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/coded_stream.cc", 829);
      v5 = sub_232CB571C(v8, "CHECK failed: overrun >= 0: ");
      sub_232CB5858(&v7, &v5->__r_.__value_.__l.__data_);
      goto LABEL_6;
    }

    if (v3 > 0x10)
    {
      sub_232CB5704(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/coded_stream.cc", 830);
      v4 = sub_232CB571C(v8, "CHECK failed: overrun <= kSlopBytes: ");
      sub_232CB5858(&v7, &v4->__r_.__value_.__l.__data_);
LABEL_6:
      sub_232CB5860(v8);
    }

    a2 = &sub_232CB4A50(a1)[v3];
    if (a2 < *a1)
    {
      return a2;
    }
  }

  return (a1 + 16);
}

void sub_232CB4D70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_232CB5860(va);
  _Unwind_Resume(a1);
}

char *sub_232CB4D90(uint64_t *a1, char *a2, int a3, char *a4)
{
  v4 = a4;
  for (i = sub_232CB4E34(a1, a4); a3 > i; i = sub_232CB4E34(a1, v4))
  {
    memcpy(v4, a2, i);
    a3 -= i;
    a2 += i;
    v4 = sub_232CB4C78(a1, &v4[i]);
  }

  memcpy(v4, a2, a3);
  return &v4[a3];
}

unint64_t sub_232CB4E34(uint64_t *a1, unint64_t a2)
{
  v3 = *a1;
  if (*a1 + 16 < a2)
  {
    sub_232CB5704(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/io/coded_stream.h", 838);
    v5 = sub_232CB571C(v8, "CHECK failed: ptr <= end_ + kSlopBytes: ");
    sub_232CB5858(&v7, &v5->__r_.__value_.__l.__data_);
    sub_232CB5860(v8);
    v3 = *a1;
  }

  return v3 - a2 + 16;
}

void sub_232CB4EB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_232CB5860(va);
  _Unwind_Resume(a1);
}

char *sub_232CB4ED0(uint64_t a1, void *a2, uint64_t a3, char *a4)
{
  if (sub_232CB4E34(a1, a4) <= a3)
  {
    v8 = sub_232CB4C0C(a1, a4);
    if (((*(**(a1 + 48) + 40))(*(a1 + 48), a2, a3) & 1) == 0)
    {
      *(a1 + 56) = 1;
      v8 = (a1 + 16);
      *a1 = a1 + 32;
    }

    return v8;
  }

  if (*a1 - a4 >= a3)
  {
    memcpy(a4, a2, a3);
    return &a4[a3];
  }

  return sub_232CB4D90(a1, a2, a3, a4);
}

char *sub_232CB4FD8(unint64_t *a1, int a2, uint64_t **a3, char *a4)
{
  v4 = a4;
  v8 = *a1;
  if (*a1 <= a4)
  {
    v4 = sub_232CB4C78(a1, a4);
    v8 = *a1;
  }

  if (*(a3 + 23) >= 0)
  {
    v9 = *(a3 + 23);
  }

  else
  {
    v9 = *(a3 + 2);
  }

  if (v8 <= v4)
  {
    sub_232CB5704(v23, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/io/coded_stream.h", 858);
    v10 = sub_232CB571C(v23, "CHECK failed: ptr < end_: ");
    sub_232CB5858(&v22, &v10->__r_.__value_.__l.__data_);
    sub_232CB5860(v23);
  }

  v11 = 8 * a2;
  if ((8 * a2) > 0x7F)
  {
    *v4 = v11 | 0x82;
    v13 = v11 >> 7;
    if (v11 >> 14)
    {
      v12 = v4 + 2;
      do
      {
        *(v12 - 1) = v13 | 0x80;
        v14 = v13 >> 7;
        ++v12;
        v15 = v13 >> 14;
        v13 >>= 7;
      }

      while (v15);
      *(v12 - 1) = v14;
    }

    else
    {
      v4[1] = v13;
      v12 = v4 + 2;
    }
  }

  else
  {
    *v4 = v11 | 2;
    v12 = v4 + 1;
  }

  if (v9 >= 0x80)
  {
    v20 = v9;
    do
    {
      *v12++ = v20 | 0x80;
      v16 = v20 >> 7;
      v21 = v20 >> 14;
      v20 >>= 7;
    }

    while (v21);
  }

  else
  {
    LOBYTE(v16) = v9;
  }

  *v12 = v16;
  v17 = v12 + 1;
  if (*(a3 + 23) >= 0)
  {
    v18 = a3;
  }

  else
  {
    v18 = *a3;
  }

  return sub_232CB5160(a1, v18, v9, v17);
}

void sub_232CB5148(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_232CB5860(va);
  _Unwind_Resume(a1);
}

char *sub_232CB5160(uint64_t a1, void *a2, uint64_t a3, char *__dst)
{
  if (*(a1 + 57) == 1)
  {

    return sub_232CB4ED0(a1, a2, a3, __dst);
  }

  else if (*a1 - __dst < a3)
  {

    return sub_232CB4D90(a1, a2, a3, __dst);
  }

  else
  {
    v6 = a3;
    memcpy(__dst, a2, a3);
    return &__dst[v6];
  }
}

char *sub_232CB51F0(unint64_t *a1, int a2, uint64_t a3, char *a4)
{
  v4 = a4;
  v8 = *a1;
  if (*a1 <= a4)
  {
    v4 = sub_232CB4C78(a1, a4);
    v8 = *a1;
  }

  if (*(a3 + 23) >= 0)
  {
    LODWORD(v9) = *(a3 + 23);
  }

  else
  {
    v9 = *(a3 + 8);
  }

  if (v8 <= v4)
  {
    sub_232CB5704(v23, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/io/coded_stream.h", 858);
    v10 = sub_232CB571C(v23, "CHECK failed: ptr < end_: ");
    sub_232CB5858(&v22, &v10->__r_.__value_.__l.__data_);
    sub_232CB5860(v23);
  }

  v11 = 8 * a2;
  if ((8 * a2) > 0x7F)
  {
    *v4 = v11 | 0x82;
    v13 = v11 >> 7;
    if (v11 >> 14)
    {
      v12 = v4 + 2;
      do
      {
        *(v12 - 1) = v13 | 0x80;
        v14 = v13 >> 7;
        ++v12;
        v15 = v13 >> 14;
        v13 >>= 7;
      }

      while (v15);
      *(v12 - 1) = v14;
    }

    else
    {
      v4[1] = v13;
      v12 = v4 + 2;
    }
  }

  else
  {
    *v4 = v11 | 2;
    v12 = v4 + 1;
  }

  if (v9 >= 0x80)
  {
    v20 = v9;
    do
    {
      *v12++ = v20 | 0x80;
      v16 = v20 >> 7;
      v21 = v20 >> 14;
      v20 >>= 7;
    }

    while (v21);
  }

  else
  {
    LOBYTE(v16) = v9;
  }

  *v12 = v16;
  v17 = v12 + 1;
  if (*(a3 + 23) >= 0)
  {
    v18 = a3;
  }

  else
  {
    v18 = *a3;
  }

  if ((*a1 - v17) < v9)
  {
    return sub_232CB4D90(a1, v18, v9, v17);
  }

  memcpy(v17, v18, v9);
  return &v17[v9];
}

void sub_232CB5388(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_232CB5860(va);
  _Unwind_Resume(a1);
}

void sub_232CB53A0(uint64_t a1, uint64_t a2, const std::string::value_type *a3)
{
  v4 = a1;
  v26 = *MEMORY[0x277D85DE8];
  if (a2 > 3014000)
  {
    v5 = a2;
    LODWORD(v20) = 3;
    v21 = "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/common.cc";
    v22 = 76;
    memset(&v23, 0, sizeof(v23));
    std::string::append(&v23, "This program requires version ");
    sub_232CB578C(v5, &v17);
    if ((v19 & 0x80u) == 0)
    {
      v6 = &v17;
    }

    else
    {
      v6 = v17;
    }

    if ((v19 & 0x80u) == 0)
    {
      v7 = v19;
    }

    else
    {
      v7 = v18;
    }

    std::string::append(&v23, v6, v7);
    std::string::append(&v23, " of the Protocol Buffer runtime library, but the installed version is ");
    snprintf(__str, 0x80uLL, "%d.%d.%d", 3, 14, 0);
    v25 = 0;
    sub_232C8C2D0(&__p, __str);
    if ((v16 & 0x80u) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p;
    }

    if ((v16 & 0x80u) == 0)
    {
      v9 = v16;
    }

    else
    {
      v9 = v15;
    }

    std::string::append(&v23, p_p, v9);
    std::string::append(&v23, ".  Please update your library.  If you compiled the program yourself, make sure that your headers are from the same version of Protocol Buffers as your link-time library.  (Version verification failed in ");
    std::string::append(&v23, a3);
    std::string::append(&v23, ".)");
    sub_232CB5A14(&v20);
    if (v16 < 0)
    {
      operator delete(__p);
    }

    if (v19 < 0)
    {
      operator delete(v17);
    }

    if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v23.__r_.__value_.__l.__data_);
    }
  }

  if (v4 < 3014000)
  {
    LODWORD(v20) = 3;
    v21 = "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/common.cc";
    v22 = 87;
    memset(&v23, 0, sizeof(v23));
    std::string::append(&v23, "This program was compiled against version ");
    sub_232CB578C(v4, &v17);
    if ((v19 & 0x80u) == 0)
    {
      v10 = &v17;
    }

    else
    {
      v10 = v17;
    }

    if ((v19 & 0x80u) == 0)
    {
      v11 = v19;
    }

    else
    {
      v11 = v18;
    }

    std::string::append(&v23, v10, v11);
    std::string::append(&v23, " of the Protocol Buffer runtime library, which is not compatible with the installed version (");
    snprintf(__str, 0x80uLL, "%d.%d.%d", 3, 14, 0);
    v25 = 0;
    sub_232C8C2D0(&__p, __str);
    if ((v16 & 0x80u) == 0)
    {
      v12 = &__p;
    }

    else
    {
      v12 = __p;
    }

    if ((v16 & 0x80u) == 0)
    {
      v13 = v16;
    }

    else
    {
      v13 = v15;
    }

    std::string::append(&v23, v12, v13);
    std::string::append(&v23, ").  Contact the program author for an update.  If you compiled the program yourself, make sure that your headers are from the same version of Protocol Buffers as your link-time library.  (Version verification failed in ");
    std::string::append(&v23, a3);
    std::string::append(&v23, ".)");
    sub_232CB5A14(&v20);
    if (v16 < 0)
    {
      operator delete(__p);
    }

    if (v19 < 0)
    {
      operator delete(v17);
    }

    if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v23.__r_.__value_.__l.__data_);
    }
  }
}

void sub_232CB5694(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  if (a23 < 0)
  {
    operator delete(a18);
  }

  if (a32 < 0)
  {
    operator delete(a27);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_232CB5704(uint64_t result, int a2, uint64_t a3, int a4)
{
  *result = a2;
  *(result + 8) = a3;
  *(result + 16) = a4;
  *(result + 32) = 0;
  *(result + 40) = 0;
  *(result + 24) = 0;
  return result;
}

std::string *sub_232CB5748(std::string *a1, const std::string::value_type *a2)
{
  v3 = *(a2 + 1);
  if (a2[23] >= 0)
  {
    v4 = *(a2 + 23);
  }

  else
  {
    a2 = *a2;
    v4 = v3;
  }

  std::string::append(a1 + 1, a2, v4);
  return a1;
}

void *sub_232CB578C@<X0>(int a1@<W0>, void *a2@<X8>)
{
  v5 = *MEMORY[0x277D85DE8];
  snprintf(__str, 0x80uLL, "%d.%d.%d", a1 / 1000000, a1 / 1000 % 1000, a1 % 1000);
  __str[127] = 0;
  return sub_232C8C2D0(a2, __str);
}

uint64_t sub_232CB5860(uint64_t a1)
{
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  return a1;
}

uint64_t sub_232CB5894(uint64_t result, const char *a2, int a3, uint64_t a4)
{
  if ((result & 0x80000000) == 0)
  {
    v4 = MEMORY[0x277D85DF8];
    if (*(a4 + 23) >= 0)
    {
      v5 = a4;
    }

    else
    {
      v5 = *a4;
    }

    fprintf(*MEMORY[0x277D85DF8], "[libprotobuf %s %s:%d] %s\n", off_2789A7B80[result], a2, a3, v5);
    v6 = *v4;

    return fflush(v6);
  }

  return result;
}

std::string *sub_232CB5914(std::string *a1, int a2)
{
  v5 = *MEMORY[0x277D85DE8];
  snprintf(__str, 0x80uLL, "%d", a2);
  __str[127] = 0;
  std::string::append(a1 + 1, __str);
  return a1;
}

std::string *sub_232CB5994(std::string *a1, uint64_t a2)
{
  v5 = *MEMORY[0x277D85DE8];
  snprintf(__str, 0x80uLL, "%lu", a2);
  __str[127] = 0;
  std::string::append(a1 + 1, __str);
  return a1;
}

const char **sub_232CB5A14(const char **result)
{
  v1 = result;
  if (*result == 3)
  {
    v2 = 3;
  }

  else
  {
    v3 = atomic_load(&unk_27DDD4DA0);
    if (v3 > 0)
    {
      goto LABEL_6;
    }

    v2 = *result;
  }

  result = off_281934830(v2, v1[1], *(v1 + 4), (v1 + 3));
LABEL_6:
  if (*v1 == 3)
  {
    exception = __cxa_allocate_exception(0x30uLL);
    sub_232CB5AD4(exception, v1[1], *(v1 + 4), (v1 + 3));
    __cxa_throw(exception, &unk_284815AE0, sub_232CB5AD8);
  }

  return result;
}

void sub_232CB5ADC(std::exception *this)
{
  this->__vftable = &unk_284815B08;
  if (SHIBYTE(this[5].__vftable) < 0)
  {
    operator delete(this[3].__vftable);
  }

  std::exception::~exception(this);
}

void sub_232CB5B3C(std::exception *a1)
{
  sub_232CB5ADC(a1);

  JUMPOUT(0x238392C10);
}

uint64_t sub_232CB5B74(uint64_t a1)
{
  result = a1 + 24;
  if (*(a1 + 47) < 0)
  {
    return *result;
  }

  return result;
}

uint64_t sub_232CB5B90(uint64_t a1, uint64_t a2, int a3, __int128 *a4)
{
  *a1 = &unk_284815B08;
  *(a1 + 8) = a2;
  *(a1 + 16) = a3;
  if (*(a4 + 23) < 0)
  {
    sub_232C866C0((a1 + 24), *a4, *(a4 + 1));
  }

  else
  {
    v5 = *a4;
    *(a1 + 40) = *(a4 + 2);
    *(a1 + 24) = v5;
  }

  return a1;
}

uint64_t sub_232CB5C10(uint64_t a1, int a2, _OWORD *a3)
{
  if (qword_27DDD4DA8)
  {
    v3 = *(qword_27DDD4DA8 + 8);
    if (v3)
    {
      v4 = *(a1 + 8);
      v5 = 0x9DDFEA08EB382D69 * ((8 * (v4 & 0x1FFFFFFF) + 8) ^ HIDWORD(v4));
      v6 = 0x9DDFEA08EB382D69 * (HIDWORD(v4) ^ (v5 >> 47) ^ v5);
      v7 = (0x9DDFEA08EB382D69 * (v6 ^ (v6 >> 47))) ^ a2;
      v8 = vcnt_s8(v3);
      v8.i16[0] = vaddlv_u8(v8);
      if (v8.u32[0] > 1uLL)
      {
        v9 = v7;
        if (v7 >= *&v3)
        {
          v9 = v7 % *&v3;
        }
      }

      else
      {
        v9 = (*&v3 - 1) & v7;
      }

      v10 = *(*qword_27DDD4DA8 + 8 * v9);
      if (v10)
      {
        for (i = *v10; i; i = *i)
        {
          v12 = i[1];
          if (v7 == v12)
          {
            if (i[2] == v4 && *(i + 6) == a2)
            {
              v14 = *(i + 3);
              *a3 = *(i + 2);
              a3[1] = v14;
              return 1;
            }
          }

          else
          {
            if (v8.u32[0] > 1uLL)
            {
              if (v12 >= *&v3)
              {
                v12 %= *&v3;
              }
            }

            else
            {
              v12 &= *&v3 - 1;
            }

            if (v12 != v9)
            {
              return 0;
            }
          }
        }
      }
    }
  }

  return 0;
}

uint64_t sub_232CB5D24(uint64_t result, uint64_t a2)
{
  *result = a2;
  *(result + 8) = 0;
  *(result + 16) = 0;
  return result;
}

uint64_t sub_232CB5D34(uint64_t a1)
{
  if (!*a1)
  {
    v2 = *(a1 + 16);
    if (*(a1 + 8) >= 0x101u)
    {
      sub_232CBF658(*v2, (v2 + 8));
    }

    else if (*(a1 + 10))
    {
      v3 = 32 * *(a1 + 10);
      v4 = (v2 + 8);
      do
      {
        sub_232CBF380(v4);
        v4 += 32;
        v3 -= 32;
      }

      while (v3);
    }

    v5 = *(a1 + 16);
    if (*(a1 + 8) >= 0x101u)
    {
      sub_232CC03D0(v5 == 0, *(a1 + 16));
    }

    else if (v5)
    {
      MEMORY[0x238392BE0](*(a1 + 16), 0x1062C802AB6010CLL);
    }
  }

  return a1;
}

unsigned __int8 *sub_232CB5DF4(unsigned __int8 *result)
{
  v1 = result;
  if (result[9] == 1)
  {
    v2 = result[8];
    if ((v2 - 19) <= 0xFFFFFFED)
    {
      sub_232CB5704(v11, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 60);
      v3 = sub_232CB571C(v11, "CHECK failed: type > 0 && type <= WireFormatLite::MAX_FIELD_TYPE: ");
      sub_232CB5858(&v10, &v3->__r_.__value_.__l.__data_);
      result = sub_232CB5860(v11);
    }

    v4 = dword_232D01270[v2];
    if (v4 > 5)
    {
      if (v4 <= 8)
      {
LABEL_20:
        **v1 = 0;
        return result;
      }

      if (v4 == 9)
      {
        return sub_232CAFB90(*v1);
      }

      else if (v4 == 10)
      {
        return sub_232CBFF50(*v1);
      }
    }

    else if (v4 > 2 || v4 == 1 || v4 == 2)
    {
      goto LABEL_20;
    }
  }

  else if ((result[10] & 1) == 0)
  {
    v5 = result[8];
    if ((v5 - 19) <= 0xFFFFFFED)
    {
      sub_232CB5704(v11, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 60);
      v6 = sub_232CB571C(v11, "CHECK failed: type > 0 && type <= WireFormatLite::MAX_FIELD_TYPE: ");
      sub_232CB5858(&v10, &v6->__r_.__value_.__l.__data_);
      result = sub_232CB5860(v11);
    }

    v7 = dword_232D01270[v5];
    if (v7 == 10)
    {
      v9 = **v1;
      if ((v1[10] & 0x10) != 0)
      {
        result = (*(v9 + 112))();
      }

      else
      {
        result = (*(v9 + 40))();
      }
    }

    else if (v7 == 9)
    {
      v8 = *v1;
      if (*(*v1 + 23) < 0)
      {
        **v8 = 0;
        *(v8 + 8) = 0;
      }

      else
      {
        *v8 = 0;
        *(v8 + 23) = 0;
      }
    }

    v1[10] = v1[10] & 0xF0 | 1;
  }

  return result;
}

void sub_232CB6010(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_232CB5860(va);
  _Unwind_Resume(a1);
}

uint64_t sub_232CB6030(uint64_t a1, uint64_t a2, int a3, int a4, uint64_t a5)
{
  result = sub_232CBA810(a1, a2);
  v9 = result;
  *(result + 16) = a5;
  if (v10)
  {
    *(result + 8) = a3;
    if ((a3 - 19) <= 0xFFFFFFED)
    {
      sub_232CB5704(v18, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 60);
      v11 = sub_232CB571C(v18, "CHECK failed: type > 0 && type <= WireFormatLite::MAX_FIELD_TYPE: ");
      sub_232CB5858(&v17, &v11->__r_.__value_.__l.__data_);
      result = sub_232CB5860(v18);
    }

    if (dword_232D01270[a3] != 1)
    {
      sub_232CB5704(v18, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 348);
      v12 = sub_232CB571C(v18, "CHECK failed: (cpp_type(extension->type)) == (WireFormatLite::CPPTYPE_INT32): ");
      sub_232CB5858(&v17, &v12->__r_.__value_.__l.__data_);
      result = sub_232CB5860(v18);
    }

    *(v9 + 9) = 0;
  }

  else
  {
    if (*(result + 9))
    {
      sub_232CB5704(v18, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 348);
      v13 = sub_232CB571C(v18, "CHECK failed: ((*extension).is_repeated ? REPEATED_FIELD : OPTIONAL_FIELD) == (OPTIONAL_FIELD): ");
      sub_232CB5858(&v17, &v13->__r_.__value_.__l.__data_);
      result = sub_232CB5860(v18);
    }

    v14 = *(v9 + 8);
    if ((v14 - 19) <= 0xFFFFFFED)
    {
      sub_232CB5704(v18, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 60);
      v15 = sub_232CB571C(v18, "CHECK failed: type > 0 && type <= WireFormatLite::MAX_FIELD_TYPE: ");
      sub_232CB5858(&v17, &v15->__r_.__value_.__l.__data_);
      result = sub_232CB5860(v18);
    }

    if (dword_232D01270[v14] != 1)
    {
      sub_232CB5704(v18, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 348);
      v16 = sub_232CB571C(v18, "CHECK failed: (cpp_type((*extension).type)) == (WireFormatLite::CPPTYPE_INT32): ");
      sub_232CB5858(&v17, &v16->__r_.__value_.__l.__data_);
      result = sub_232CB5860(v18);
    }
  }

  *(v9 + 10) &= 0xF0u;
  *v9 = a4;
  return result;
}

void sub_232CB620C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_232CB5860(va);
  _Unwind_Resume(a1);
}

uint64_t sub_232CB6244(uint64_t *a1, uint64_t a2, int a3, int a4, int a5, uint64_t a6)
{
  v11 = sub_232CBA810(a1, a2);
  v12 = v11;
  v11[2] = a6;
  if (v13)
  {
    *(v11 + 8) = a3;
    if ((a3 - 19) <= 0xFFFFFFED)
    {
      sub_232CB5704(v28, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 60);
      v14 = sub_232CB571C(v28, "CHECK failed: type > 0 && type <= WireFormatLite::MAX_FIELD_TYPE: ");
      sub_232CB5858(&v27, &v14->__r_.__value_.__l.__data_);
      sub_232CB5860(v28);
    }

    if (dword_232D01270[a3] != 1)
    {
      sub_232CB5704(v28, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 348);
      v15 = sub_232CB571C(v28, "CHECK failed: (cpp_type(extension->type)) == (WireFormatLite::CPPTYPE_INT32): ");
      sub_232CB5858(&v27, &v15->__r_.__value_.__l.__data_);
      sub_232CB5860(v28);
    }

    *(v12 + 9) = 1;
    *(v12 + 11) = a4;
    v16 = *a1;
    if (!*a1)
    {
      operator new();
    }

    if (*(v16 + 24))
    {
      sub_232CC0428(*a1);
    }

    v17 = sub_232CB3D04(v16, 0x10uLL, sub_232CBF6C8);
    *v17 = 0;
    v17[1] = v16;
    *v12 = v17;
  }

  else
  {
    if ((*(v11 + 9) & 1) == 0)
    {
      sub_232CB5704(v28, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 348);
      v18 = sub_232CB571C(v28, "CHECK failed: ((*extension).is_repeated ? REPEATED_FIELD : OPTIONAL_FIELD) == (REPEATED_FIELD): ");
      sub_232CB5858(&v27, &v18->__r_.__value_.__l.__data_);
      sub_232CB5860(v28);
    }

    v19 = *(v12 + 8);
    if ((v19 - 19) <= 0xFFFFFFED)
    {
      sub_232CB5704(v28, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 60);
      v20 = sub_232CB571C(v28, "CHECK failed: type > 0 && type <= WireFormatLite::MAX_FIELD_TYPE: ");
      sub_232CB5858(&v27, &v20->__r_.__value_.__l.__data_);
      sub_232CB5860(v28);
    }

    if (dword_232D01270[v19] != 1)
    {
      sub_232CB5704(v28, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 348);
      v21 = sub_232CB571C(v28, "CHECK failed: (cpp_type((*extension).type)) == (WireFormatLite::CPPTYPE_INT32): ");
      sub_232CB5858(&v27, &v21->__r_.__value_.__l.__data_);
      sub_232CB5860(v28);
    }

    if (*(v12 + 11) != a4)
    {
      sub_232CB5704(v28, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 348);
      v22 = sub_232CB571C(v28, "CHECK failed: (extension->is_packed) == (packed): ");
      sub_232CB5858(&v27, &v22->__r_.__value_.__l.__data_);
      sub_232CB5860(v28);
    }
  }

  v23 = *v12;
  v24 = *v23;
  if (v24 == v23[1])
  {
    v25 = v24 + 1;
    sub_232CC4F04(v23, v24 + 1);
    result = sub_232CC5374(v23);
    *(result + 4 * v24) = a5;
  }

  else
  {
    result = sub_232CC5374(v23);
    *(result + 4 * v24) = a5;
    v25 = v24 + 1;
  }

  *v23 = v25;
  return result;
}

void sub_232CB6514(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_232CB5860(va);
  _Unwind_Resume(a1);
}

uint64_t sub_232CB6554(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  result = sub_232CBA810(a1, a2);
  v9 = result;
  *(result + 16) = a5;
  if (v10)
  {
    *(result + 8) = a3;
    if ((a3 - 19) <= 0xFFFFFFED)
    {
      sub_232CB5704(v18, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 60);
      v11 = sub_232CB571C(v18, "CHECK failed: type > 0 && type <= WireFormatLite::MAX_FIELD_TYPE: ");
      sub_232CB5858(&v17, &v11->__r_.__value_.__l.__data_);
      result = sub_232CB5860(v18);
    }

    if (dword_232D01270[a3] != 2)
    {
      sub_232CB5704(v18, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 349);
      v12 = sub_232CB571C(v18, "CHECK failed: (cpp_type(extension->type)) == (WireFormatLite::CPPTYPE_INT64): ");
      sub_232CB5858(&v17, &v12->__r_.__value_.__l.__data_);
      result = sub_232CB5860(v18);
    }

    *(v9 + 9) = 0;
  }

  else
  {
    if (*(result + 9))
    {
      sub_232CB5704(v18, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 349);
      v13 = sub_232CB571C(v18, "CHECK failed: ((*extension).is_repeated ? REPEATED_FIELD : OPTIONAL_FIELD) == (OPTIONAL_FIELD): ");
      sub_232CB5858(&v17, &v13->__r_.__value_.__l.__data_);
      result = sub_232CB5860(v18);
    }

    v14 = *(v9 + 8);
    if ((v14 - 19) <= 0xFFFFFFED)
    {
      sub_232CB5704(v18, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 60);
      v15 = sub_232CB571C(v18, "CHECK failed: type > 0 && type <= WireFormatLite::MAX_FIELD_TYPE: ");
      sub_232CB5858(&v17, &v15->__r_.__value_.__l.__data_);
      result = sub_232CB5860(v18);
    }

    if (dword_232D01270[v14] != 2)
    {
      sub_232CB5704(v18, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 349);
      v16 = sub_232CB571C(v18, "CHECK failed: (cpp_type((*extension).type)) == (WireFormatLite::CPPTYPE_INT64): ");
      sub_232CB5858(&v17, &v16->__r_.__value_.__l.__data_);
      result = sub_232CB5860(v18);
    }
  }

  *(v9 + 10) &= 0xF0u;
  *v9 = a4;
  return result;
}

void sub_232CB6730(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_232CB5860(va);
  _Unwind_Resume(a1);
}