char *sub_12C4BA8(uint64_t a1, char *a2, unint64_t *a3)
{
  v4 = a2;
  v6 = *(a1 + 16);
  if ((v6 & 0x20) != 0)
  {
    if (*a3 <= a2)
    {
      v4 = sub_225EB68(a3, a2);
    }

    v7 = *(a1 + 248);
    *v4 = 16;
    v4[1] = v7;
    v4 += 2;
  }

  if ((v6 & 2) != 0)
  {
    if (*a3 <= v4)
    {
      v4 = sub_225EB68(a3, v4);
    }

    v8 = *(a1 + 216);
    *v4 = 26;
    v9 = *(v8 + 20);
    v4[1] = v9;
    if (v9 > 0x7F)
    {
      v10 = sub_19575D0(v9, v4 + 1);
    }

    else
    {
      v10 = v4 + 2;
    }

    v4 = sub_12D1CFC(v8, v10, a3);
  }

  v11 = *(a1 + 32);
  if (v11 >= 1)
  {
    v12 = 8;
    do
    {
      v13 = *(*(a1 + 40) + v12);
      v14 = *(v13 + 23);
      if (v14 < 0 && (v14 = v13[1], v14 > 127) || (*a3 - v4 + 14) < v14)
      {
        v4 = sub_1957480(a3, 4, v13, v4);
      }

      else
      {
        *v4 = 34;
        v4[1] = v14;
        if (*(v13 + 23) < 0)
        {
          v13 = *v13;
        }

        v15 = v4 + 2;
        memcpy(v4 + 2, v13, v14);
        v4 = &v15[v14];
      }

      v12 += 8;
      --v11;
    }

    while (v11);
  }

  v16 = *(a1 + 48);
  if (v16 < 1)
  {
    v19 = v4;
  }

  else
  {
    for (i = 0; i != v16; ++i)
    {
      if (*a3 <= v4)
      {
        v4 = sub_225EB68(a3, v4);
      }

      v18 = *(*(a1 + 56) + 4 * i);
      *v4 = 40;
      v4[1] = v18;
      if (v18 > 0x7F)
      {
        v4[1] = v18 | 0x80;
        v20 = v18 >> 7;
        v4[2] = v18 >> 7;
        v19 = v4 + 3;
        if (v18 >= 0x4000)
        {
          LOBYTE(v21) = v4[2];
          do
          {
            *(v19 - 1) = v21 | 0x80;
            v21 = v20 >> 7;
            *v19++ = v20 >> 7;
            v22 = v20 >> 14;
            v20 >>= 7;
          }

          while (v22);
        }
      }

      else
      {
        v19 = v4 + 2;
      }

      v4 = v19;
    }
  }

  v23 = *(a1 + 72);
  if (v23)
  {
    for (j = 0; j != v23; ++j)
    {
      if (*a3 <= v19)
      {
        v19 = sub_225EB68(a3, v19);
      }

      v25 = *(*(a1 + 80) + 8 * j + 8);
      *v19 = 50;
      v26 = *(v25 + 20);
      v19[1] = v26;
      if (v26 > 0x7F)
      {
        v27 = sub_19575D0(v26, v19 + 1);
      }

      else
      {
        v27 = v19 + 2;
      }

      v19 = sub_12BD680(v25, v27, a3);
    }
  }

  v28 = *(a1 + 96);
  if (v28)
  {
    for (k = 0; k != v28; ++k)
    {
      if (*a3 <= v19)
      {
        v19 = sub_225EB68(a3, v19);
      }

      v30 = *(*(a1 + 104) + 8 * k + 8);
      *v19 = 58;
      v31 = *(v30 + 20);
      v19[1] = v31;
      if (v31 > 0x7F)
      {
        v32 = sub_19575D0(v31, v19 + 1);
      }

      else
      {
        v32 = v19 + 2;
      }

      v19 = sub_12C2594(v30, v32, a3);
    }
  }

  if ((v6 & 0x40) != 0)
  {
    if (*a3 <= v19)
    {
      v19 = sub_225EB68(a3, v19);
    }

    v33 = *(a1 + 249);
    *v19 = 64;
    v19[1] = v33;
    v19 += 2;
  }

  if ((v6 & 4) != 0)
  {
    if (*a3 <= v19)
    {
      v19 = sub_225EB68(a3, v19);
    }

    v34 = *(a1 + 224);
    *v19 = 74;
    v35 = *(v34 + 20);
    v19[1] = v35;
    if (v35 > 0x7F)
    {
      v36 = sub_19575D0(v35, v19 + 1);
    }

    else
    {
      v36 = v19 + 2;
    }

    v19 = sub_12C33F8(v34, v36, a3);
  }

  v37 = *(a1 + 120);
  if (v37)
  {
    for (m = 0; m != v37; ++m)
    {
      if (*a3 <= v19)
      {
        v19 = sub_225EB68(a3, v19);
      }

      v39 = *(*(a1 + 128) + 8 * m + 8);
      *v19 = 82;
      v40 = *(v39 + 20);
      v19[1] = v40;
      if (v40 > 0x7F)
      {
        v41 = sub_19575D0(v40, v19 + 1);
      }

      else
      {
        v41 = v19 + 2;
      }

      v19 = sub_12C3AC4(v39, v41, a3);
    }
  }

  v42 = *(a1 + 144);
  if (v42)
  {
    for (n = 0; n != v42; ++n)
    {
      if (*a3 <= v19)
      {
        v19 = sub_225EB68(a3, v19);
      }

      v44 = *(*(a1 + 152) + 8 * n + 8);
      *v19 = 90;
      v45 = *(v44 + 60);
      v19[1] = v45;
      if (v45 > 0x7F)
      {
        v46 = sub_19575D0(v45, v19 + 1);
      }

      else
      {
        v46 = v19 + 2;
      }

      v19 = sub_12DFF7C(v44, v46, a3);
    }
  }

  if ((v6 & 0x10) != 0)
  {
    if (*a3 <= v19)
    {
      v19 = sub_225EB68(a3, v19);
    }

    v48 = *(a1 + 240);
    *v19 = 96;
    v19[1] = v48;
    if (v48 > 0x7F)
    {
      v19[1] = v48 | 0x80;
      v49 = v48 >> 7;
      v19[2] = v48 >> 7;
      v47 = v19 + 3;
      if (v48 >= 0x4000)
      {
        LOBYTE(v19) = v19[2];
        do
        {
          *(v47 - 1) = v19 | 0x80;
          v19 = (v49 >> 7);
          *v47++ = v49 >> 7;
          v50 = v49 >> 14;
          v49 >>= 7;
        }

        while (v50);
      }
    }

    else
    {
      v47 = v19 + 2;
    }
  }

  else
  {
    v47 = v19;
  }

  if (v6)
  {
    v47 = sub_128AEEC(a3, 13, (*(a1 + 208) & 0xFFFFFFFFFFFFFFFELL), v47);
  }

  v51 = *(a1 + 168);
  if (v51)
  {
    for (ii = 0; ii != v51; ++ii)
    {
      if (*a3 <= v47)
      {
        v47 = sub_225EB68(a3, v47);
      }

      v53 = *(*(a1 + 176) + 8 * ii + 8);
      *v47 = 114;
      v54 = *(v53 + 20);
      v47[1] = v54;
      if (v54 > 0x7F)
      {
        v55 = sub_19575D0(v54, v47 + 1);
      }

      else
      {
        v55 = v47 + 2;
      }

      v47 = sub_12C2E30(v53, v55, a3);
    }
  }

  if ((v6 & 8) != 0)
  {
    if (*a3 <= v47)
    {
      v47 = sub_225EB68(a3, v47);
    }

    v56 = *(a1 + 232);
    *v47 = 122;
    v57 = *(v56 + 88);
    v47[1] = v57;
    if (v57 > 0x7F)
    {
      v58 = sub_19575D0(v57, v47 + 1);
    }

    else
    {
      v58 = v47 + 2;
    }

    v47 = sub_1319B90(v56, v58, a3);
  }

  v59 = *(a1 + 192);
  if (v59 >= 1)
  {
    v60 = 8;
    do
    {
      v61 = *(*(a1 + 200) + v60);
      v62 = *(v61 + 23);
      if (v62 < 0 && (v62 = v61[1], v62 > 127) || (*a3 - v47 + 13) < v62)
      {
        v47 = sub_1957480(a3, 16, v61, v47);
      }

      else
      {
        *v47 = 386;
        v47[2] = v62;
        if (*(v61 + 23) < 0)
        {
          v61 = *v61;
        }

        v63 = v47 + 3;
        memcpy(v63, v61, v62);
        v47 = &v63[v62];
      }

      v60 += 8;
      --v59;
    }

    while (v59);
  }

  v64 = *(a1 + 8);
  if ((v64 & 1) == 0)
  {
    return v47;
  }

  v66 = v64 & 0xFFFFFFFFFFFFFFFCLL;
  v67 = *(v66 + 31);
  if (v67 < 0)
  {
    v68 = *(v66 + 8);
    v67 = *(v66 + 16);
  }

  else
  {
    v68 = (v66 + 8);
  }

  if ((*a3 - v47) >= v67)
  {
    v69 = v67;
    memcpy(v47, v68, v67);
    v47 += v69;
    return v47;
  }

  return sub_1957130(a3, v68, v67, v47);
}

uint64_t sub_12C5314(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2 < 1)
  {
    v4 = *(a1 + 32);
  }

  else
  {
    v3 = (*(a1 + 40) + 8);
    v4 = *(a1 + 32);
    do
    {
      v5 = *v3++;
      v6 = *(v5 + 23);
      v7 = *(v5 + 8);
      if ((v6 & 0x80u) == 0)
      {
        v7 = v6;
      }

      v4 += v7 + ((9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6);
      --v2;
    }

    while (v2);
  }

  v8 = *(a1 + 48);
  if (v8)
  {
    v9 = 0;
    v10 = 0;
    do
    {
      v11 = *(*(a1 + 56) + 4 * v10);
      if (v11 < 0)
      {
        v12 = 10;
      }

      else
      {
        v12 = (9 * (__clz(v11 | 1) ^ 0x1F) + 73) >> 6;
      }

      v9 += v12;
      ++v10;
    }

    while (v8 != v10);
  }

  else
  {
    v9 = 0;
  }

  v13 = *(a1 + 72);
  v14 = v4 + v8 + v9 + v13;
  v15 = *(a1 + 80);
  if (v15)
  {
    v16 = (v15 + 8);
  }

  else
  {
    v16 = 0;
  }

  if (v13)
  {
    v17 = 8 * v13;
    do
    {
      v18 = *v16++;
      v19 = sub_12BE084(v18);
      v14 += v19 + ((9 * (__clz(v19 | 1) ^ 0x1F) + 73) >> 6);
      v17 -= 8;
    }

    while (v17);
  }

  v20 = *(a1 + 96);
  v21 = v14 + v20;
  v22 = *(a1 + 104);
  if (v22)
  {
    v23 = (v22 + 8);
  }

  else
  {
    v23 = 0;
  }

  if (v20)
  {
    v24 = 8 * v20;
    do
    {
      v25 = *v23++;
      v26 = sub_12C27E0(v25);
      v21 += v26 + ((9 * (__clz(v26 | 1) ^ 0x1F) + 73) >> 6);
      v24 -= 8;
    }

    while (v24);
  }

  v27 = *(a1 + 120);
  v28 = v21 + v27;
  v29 = *(a1 + 128);
  if (v29)
  {
    v30 = (v29 + 8);
  }

  else
  {
    v30 = 0;
  }

  if (v27)
  {
    v31 = 8 * v27;
    do
    {
      v32 = *v30++;
      v33 = sub_12C3D60(v32);
      v28 += v33 + ((9 * (__clz(v33 | 1) ^ 0x1F) + 73) >> 6);
      v31 -= 8;
    }

    while (v31);
  }

  v34 = *(a1 + 144);
  v35 = v28 + v34;
  v36 = *(a1 + 152);
  if (v36)
  {
    v37 = (v36 + 8);
  }

  else
  {
    v37 = 0;
  }

  if (v34)
  {
    v38 = 8 * v34;
    do
    {
      v39 = *v37++;
      v40 = sub_12E01AC(v39);
      v35 += v40 + ((9 * (__clz(v40 | 1) ^ 0x1F) + 73) >> 6);
      v38 -= 8;
    }

    while (v38);
  }

  v41 = *(a1 + 168);
  v42 = v35 + v41;
  v43 = *(a1 + 176);
  if (v43)
  {
    v44 = (v43 + 8);
  }

  else
  {
    v44 = 0;
  }

  if (v41)
  {
    v45 = 8 * v41;
    do
    {
      v46 = *v44++;
      v47 = sub_12C3004(v46);
      v42 += v47 + ((9 * (__clz(v47 | 1) ^ 0x1F) + 73) >> 6);
      v45 -= 8;
    }

    while (v45);
  }

  v48 = *(a1 + 192);
  v49 = v42 + 2 * v48;
  if (v48 >= 1)
  {
    v50 = (*(a1 + 200) + 8);
    do
    {
      v51 = *v50++;
      v52 = *(v51 + 23);
      v53 = *(v51 + 8);
      if ((v52 & 0x80u) == 0)
      {
        v53 = v52;
      }

      v49 += v53 + ((9 * (__clz(v53 | 1) ^ 0x1F) + 73) >> 6);
      --v48;
    }

    while (v48);
  }

  v54 = *(a1 + 16);
  if ((v54 & 0x7F) != 0)
  {
    if (v54)
    {
      v57 = *(a1 + 208) & 0xFFFFFFFFFFFFFFFELL;
      v58 = *(v57 + 23);
      v59 = *(v57 + 8);
      if ((v58 & 0x80u) == 0)
      {
        v59 = v58;
      }

      v49 += v59 + ((9 * (__clz(v59 | 1) ^ 0x1F) + 73) >> 6) + 1;
      if ((v54 & 2) == 0)
      {
LABEL_54:
        if ((v54 & 4) == 0)
        {
          goto LABEL_55;
        }

        goto LABEL_65;
      }
    }

    else if ((v54 & 2) == 0)
    {
      goto LABEL_54;
    }

    v60 = sub_12D1FD0(*(a1 + 216));
    v49 += v60 + ((9 * (__clz(v60 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v54 & 4) == 0)
    {
LABEL_55:
      if ((v54 & 8) == 0)
      {
        goto LABEL_56;
      }

      goto LABEL_66;
    }

LABEL_65:
    v61 = sub_12C3540(*(a1 + 224));
    v49 += v61 + ((9 * (__clz(v61 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v54 & 8) == 0)
    {
LABEL_56:
      if ((v54 & 0x10) == 0)
      {
LABEL_58:
        v49 += ((v54 >> 5) & 2) + ((v54 >> 4) & 2);
        goto LABEL_59;
      }

LABEL_57:
      v49 += ((9 * (__clz(*(a1 + 240) | 1) ^ 0x3F) + 73) >> 6) + 1;
      goto LABEL_58;
    }

LABEL_66:
    v62 = sub_1319DEC(*(a1 + 232));
    v49 += v62 + ((9 * (__clz(v62 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v54 & 0x10) == 0)
    {
      goto LABEL_58;
    }

    goto LABEL_57;
  }

LABEL_59:
  v55 = *(a1 + 8);
  if (v55)
  {
    v63 = v55 & 0xFFFFFFFFFFFFFFFCLL;
    v64 = *((v55 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v64 < 0)
    {
      v64 = *(v63 + 16);
    }

    v49 += v64;
  }

  *(a1 + 20) = v49;
  return v49;
}

void sub_12C573C(uint64_t result, uint64_t a2)
{
  v4 = *(a2 + 16);
  if ((v4 & 0x1F) != 0)
  {
    if (v4)
    {
      *(result + 16) |= 1u;
      v6 = *(result + 24);
      if (!v6)
      {
        v7 = *(result + 8);
        v8 = (v7 & 0xFFFFFFFFFFFFFFFCLL);
        if (v7)
        {
          v8 = *v8;
        }

        v6 = sub_12E19C8(v8);
        *(result + 24) = v6;
      }

      if (*(a2 + 24))
      {
        v9 = *(a2 + 24);
      }

      else
      {
        v9 = &off_2769D88;
      }

      sub_12D20FC(v6, v9);
      if ((v4 & 2) == 0)
      {
LABEL_4:
        if ((v4 & 4) == 0)
        {
          goto LABEL_5;
        }

        goto LABEL_22;
      }
    }

    else if ((v4 & 2) == 0)
    {
      goto LABEL_4;
    }

    *(result + 32) = *(a2 + 32);
    if ((v4 & 4) == 0)
    {
LABEL_5:
      if ((v4 & 8) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_23;
    }

LABEL_22:
    *(result + 36) = *(a2 + 36);
    if ((v4 & 8) == 0)
    {
LABEL_6:
      if ((v4 & 0x10) == 0)
      {
LABEL_8:
        *(result + 16) |= v4;
        goto LABEL_9;
      }

LABEL_7:
      *(result + 44) = *(a2 + 44);
      goto LABEL_8;
    }

LABEL_23:
    *(result + 40) = *(a2 + 40);
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

LABEL_9:
  v5 = *(a2 + 8);
  if (v5)
  {

    sub_1957EF4((result + 8), (v5 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

void sub_12C5844(uint64_t a1, uint64_t a2)
{
  if (a2 != a1)
  {
    sub_12B578C(a1);

    sub_12B6490(a1, a2, v5);
  }
}

uint64_t sub_12C5890(uint64_t a1)
{
  if ((*(a1 + 16) & 1) == 0)
  {
    return 1;
  }

  result = sub_12D2200(*(a1 + 24));
  if (result)
  {
    return 1;
  }

  return result;
}

__n128 sub_12C58C0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *(a1 + 8) = *(a2 + 8);
  *(a2 + 8) = v2;
  LODWORD(v2) = *(a1 + 16);
  *(a1 + 16) = *(a2 + 16);
  *(a2 + 16) = v2;
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  *(a1 + 24) = *(a2 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = v4;
  v5 = *(a1 + 40);
  *(a1 + 40) = *(a2 + 40);
  *(a2 + 40) = v5;
  v6 = *(a1 + 48);
  v7 = *(a1 + 56);
  *(a1 + 48) = *(a2 + 48);
  *(a2 + 48) = v6;
  *(a2 + 56) = v7;
  v8 = *(a1 + 64);
  v9 = *(a1 + 72);
  *(a1 + 64) = *(a2 + 64);
  *(a2 + 64) = v8;
  *(a2 + 72) = v9;
  v10 = *(a1 + 80);
  *(a1 + 80) = *(a2 + 80);
  *(a2 + 80) = v10;
  v11 = *(a1 + 88);
  v12 = *(a1 + 96);
  *(a1 + 88) = *(a2 + 88);
  *(a2 + 88) = v11;
  *(a2 + 96) = v12;
  v13 = *(a1 + 104);
  *(a1 + 104) = *(a2 + 104);
  *(a2 + 104) = v13;
  v14 = *(a1 + 112);
  v15 = *(a1 + 120);
  *(a1 + 112) = *(a2 + 112);
  *(a2 + 112) = v14;
  *(a2 + 120) = v15;
  v16 = *(a1 + 128);
  *(a1 + 128) = *(a2 + 128);
  *(a2 + 128) = v16;
  v17 = *(a1 + 136);
  v18 = *(a1 + 144);
  *(a1 + 136) = *(a2 + 136);
  *(a2 + 136) = v17;
  *(a2 + 144) = v18;
  v19 = *(a1 + 152);
  *(a1 + 152) = *(a2 + 152);
  *(a2 + 152) = v19;
  v20 = *(a1 + 160);
  v21 = *(a1 + 168);
  *(a1 + 160) = *(a2 + 160);
  *(a2 + 160) = v20;
  *(a2 + 168) = v21;
  v22 = *(a1 + 176);
  *(a1 + 176) = *(a2 + 176);
  *(a2 + 176) = v22;
  v23 = *(a1 + 184);
  v24 = *(a1 + 192);
  *(a1 + 184) = *(a2 + 184);
  *(a2 + 184) = v23;
  *(a2 + 192) = v24;
  v25 = *(a1 + 200);
  *(a1 + 200) = *(a2 + 200);
  *(a2 + 200) = v25;
  v26 = *(a2 + 208);
  *(a2 + 208) = *(a1 + 208);
  *(a1 + 208) = v26;
  v27 = *(a1 + 216);
  v28 = *(a1 + 224);
  *(a1 + 216) = *(a2 + 216);
  *(a2 + 216) = v27;
  *(a2 + 224) = v28;
  v29 = *(a1 + 232);
  v30 = *(a1 + 240);
  result = *(a2 + 232);
  *(a1 + 232) = result;
  *(a2 + 232) = v29;
  *(a2 + 240) = v30;
  LOWORD(v29) = *(a1 + 248);
  *(a1 + 248) = *(a2 + 248);
  *(a2 + 248) = v29;
  return result;
}

uint64_t sub_12C5A24(uint64_t a1)
{
  v3 = (a1 + 8);
  v2 = *(a1 + 8);
  v4 = (v2 & 0xFFFFFFFFFFFFFFFCLL);
  if (v2)
  {
    if (*v4)
    {
      goto LABEL_10;
    }
  }

  else if (v4)
  {
    goto LABEL_10;
  }

  if (a1 != &off_2769A78)
  {
    v5 = *(a1 + 88);
    if (v5)
    {
      sub_16E8374(v5);
      operator delete();
    }

    v6 = *(a1 + 96);
    if (v6)
    {
      sub_16E4E08(v6);
      operator delete();
    }
  }

  if (*v3)
  {
    sub_11F19CC(v3);
  }

LABEL_10:
  sub_1956ABC(a1 + 72);
  sub_1956ABC(a1 + 56);
  sub_1956ABC(a1 + 40);
  sub_1956ABC(a1 + 24);
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_12C5B14(uint64_t a1)
{
  sub_12C5A24(a1);

  operator delete();
}

uint64_t sub_12C5B4C(uint64_t result)
{
  v1 = result;
  *(result + 24) = 0;
  *(result + 40) = 0;
  *(result + 56) = 0;
  *(result + 72) = 0;
  v2 = *(result + 16);
  if ((v2 & 7) != 0)
  {
    if (v2)
    {
      result = sub_16E48B0(*(result + 88));
    }

    if ((v2 & 2) != 0)
    {
      result = sub_16E4E44(*(v1 + 96));
    }

    *(v1 + 104) = 2;
  }

  v4 = *(v1 + 8);
  v3 = v1 + 8;
  *(v3 + 8) = 0;
  if (v4)
  {

    return sub_1957EA8(v3);
  }

  return result;
}

char *sub_12C5BD4(uint64_t a1, char *a2, int32x2_t *a3)
{
  v59 = a2;
  if (sub_195ADC0(a3, &v59, a3[11].u32[1]))
  {
    return v59;
  }

  v7 = (a1 + 8);
  while (1)
  {
    v8 = v59 + 1;
    v9 = *v59;
    if (*v59 < 0)
    {
      v10 = *v8;
      v11 = v9 + (v10 << 7);
      v9 = v11 - 128;
      if (v10 < 0)
      {
        v8 = sub_1958824(v59, v11 - 128);
        v9 = v12;
      }

      else
      {
        v8 = v59 + 2;
      }
    }

    v59 = v8;
    v13 = v9 >> 3;
    if (v9 >> 3 > 3)
    {
      break;
    }

    if (v13 != 1)
    {
      if (v13 != 2)
      {
        if (v13 != 3)
        {
          goto LABEL_115;
        }

        if (v9 != 24)
        {
          if (v9 == 26)
          {
            *&v60 = a1 + 24;
            *(&v60 + 1) = sub_16E4BC0;
            v61 = a1 + 8;
            v56 = 3;
            goto LABEL_114;
          }

          goto LABEL_115;
        }

        v22 = v8 - 1;
        while (2)
        {
          v59 = v22 + 1;
          v23 = v22[1];
          v24 = v22 + 2;
          if (v23 < 0)
          {
            v25 = *v24;
            v26 = (v25 << 7) + v23;
            LODWORD(v23) = v26 - 128;
            if ((v25 & 0x80000000) == 0)
            {
              v24 = v22 + 3;
              goto LABEL_37;
            }

            v59 = sub_19587DC((v22 + 1), (v26 - 128));
            if (!v59)
            {
              return 0;
            }

            LODWORD(v23) = v29;
          }

          else
          {
LABEL_37:
            v59 = v24;
          }

          if (sub_16E4BC0(v23))
          {
            v27 = *(a1 + 24);
            if (v27 == *(a1 + 28))
            {
              v28 = v27 + 1;
              sub_1958E5C((a1 + 24), v27 + 1);
              *(*(a1 + 32) + 4 * v27) = v23;
            }

            else
            {
              *(*(a1 + 32) + 4 * v27) = v23;
              v28 = v27 + 1;
            }

            *(a1 + 24) = v28;
          }

          else
          {
            sub_12E8578();
          }

          v22 = v59;
          if (*a3 <= v59 || *v59 != 24)
          {
            goto LABEL_123;
          }

          continue;
        }
      }

      if (v9 != 18)
      {
        goto LABEL_115;
      }

      *(a1 + 16) |= 1u;
      v53 = *(a1 + 88);
      if (!v53)
      {
        v54 = (*v7 & 0xFFFFFFFFFFFFFFFCLL);
        if (*v7)
        {
          v54 = *v54;
        }

        v53 = sub_16F5BD8(v54);
        *(a1 + 88) = v53;
        v8 = v59;
      }

      v32 = sub_21F7188(a3, v53, v8);
LABEL_122:
      v59 = v32;
      if (!v32)
      {
        return 0;
      }

      goto LABEL_123;
    }

    if (v9 != 8)
    {
      goto LABEL_115;
    }

    v33 = v8 + 1;
    v34 = *v8;
    if (v34 < 0)
    {
      v35 = *v33;
      v36 = (v35 << 7) + v34;
      LODWORD(v34) = v36 - 128;
      if (v35 < 0)
      {
        v59 = sub_19587DC(v8, (v36 - 128));
        if (!v59)
        {
          return 0;
        }

        LODWORD(v34) = v55;
        goto LABEL_62;
      }

      v33 = v8 + 2;
    }

    v59 = v33;
LABEL_62:
    if (sub_152B67C(v34))
    {
      *(a1 + 16) |= 4u;
      *(a1 + 104) = v34;
    }

    else
    {
      sub_12E8450();
    }

LABEL_123:
    if (sub_195ADC0(a3, &v59, a3[11].u32[1]))
    {
      return v59;
    }
  }

  if (v9 >> 3 > 5)
  {
    if (v13 != 6)
    {
      if (v13 != 7 || v9 != 58)
      {
        goto LABEL_115;
      }

      *(a1 + 16) |= 2u;
      v30 = *(a1 + 96);
      if (!v30)
      {
        v31 = (*v7 & 0xFFFFFFFFFFFFFFFCLL);
        if (*v7)
        {
          v31 = *v31;
        }

        v30 = sub_16F5828(v31);
        *(a1 + 96) = v30;
        v8 = v59;
      }

      v32 = sub_21F4D60(a3, v30, v8);
      goto LABEL_122;
    }

    if (v9 != 48)
    {
      if (v9 != 50)
      {
        goto LABEL_115;
      }

      *&v60 = a1 + 72;
      *(&v60 + 1) = sub_16E4BC0;
      v61 = a1 + 8;
      v56 = 6;
      goto LABEL_114;
    }

    v45 = v8 - 1;
    while (1)
    {
      v59 = v45 + 1;
      v46 = v45[1];
      v47 = v45 + 2;
      if (v46 < 0)
      {
        v48 = *v47;
        v49 = (v48 << 7) + v46;
        LODWORD(v46) = v49 - 128;
        if (v48 < 0)
        {
          v59 = sub_19587DC((v45 + 1), (v49 - 128));
          if (!v59)
          {
            return 0;
          }

          LODWORD(v46) = v52;
          goto LABEL_87;
        }

        v47 = v45 + 3;
      }

      v59 = v47;
LABEL_87:
      if (sub_16E4BC0(v46))
      {
        v50 = *(a1 + 72);
        if (v50 == *(a1 + 76))
        {
          v51 = v50 + 1;
          sub_1958E5C((a1 + 72), v50 + 1);
          *(*(a1 + 80) + 4 * v50) = v46;
        }

        else
        {
          *(*(a1 + 80) + 4 * v50) = v46;
          v51 = v50 + 1;
        }

        *(a1 + 72) = v51;
      }

      else
      {
        sub_12E84C8();
      }

      v45 = v59;
      if (*a3 <= v59 || *v59 != 48)
      {
        goto LABEL_123;
      }
    }
  }

  if (v13 == 4)
  {
    if (v9 == 32)
    {
      v37 = v8 - 1;
      while (1)
      {
        v59 = v37 + 1;
        v38 = v37[1];
        v39 = v37 + 2;
        if (v38 < 0)
        {
          v40 = *v39;
          v41 = (v40 << 7) + v38;
          LODWORD(v38) = v41 - 128;
          if (v40 < 0)
          {
            v59 = sub_19587DC((v37 + 1), (v41 - 128));
            if (!v59)
            {
              return 0;
            }

            LODWORD(v38) = v44;
            goto LABEL_70;
          }

          v39 = v37 + 3;
        }

        v59 = v39;
LABEL_70:
        if (sub_16E4BC0(v38))
        {
          v42 = *(a1 + 40);
          if (v42 == *(a1 + 44))
          {
            v43 = v42 + 1;
            sub_1958E5C((a1 + 40), v42 + 1);
            *(*(a1 + 48) + 4 * v42) = v38;
          }

          else
          {
            *(*(a1 + 48) + 4 * v42) = v38;
            v43 = v42 + 1;
          }

          *(a1 + 40) = v43;
        }

        else
        {
          sub_12E8500();
        }

        v37 = v59;
        if (*a3 <= v59 || *v59 != 32)
        {
          goto LABEL_123;
        }
      }
    }

    if (v9 != 34)
    {
      goto LABEL_115;
    }

    *&v60 = a1 + 40;
    *(&v60 + 1) = sub_16E4BC0;
    v61 = a1 + 8;
    v56 = 4;
LABEL_114:
    v62 = v56;
    v32 = sub_1216588(a3, v8, &v60, v5);
    goto LABEL_122;
  }

  if (v13 == 5)
  {
    if (v9 == 40)
    {
      v14 = v8 - 1;
      while (1)
      {
        v59 = v14 + 1;
        v15 = v14[1];
        v16 = v14 + 2;
        if (v15 < 0)
        {
          v17 = *v16;
          v18 = (v17 << 7) + v15;
          LODWORD(v15) = v18 - 128;
          if (v17 < 0)
          {
            v59 = sub_19587DC((v14 + 1), (v18 - 128));
            if (!v59)
            {
              return 0;
            }

            LODWORD(v15) = v21;
            goto LABEL_18;
          }

          v16 = v14 + 3;
        }

        v59 = v16;
LABEL_18:
        if (sub_16E4BC0(v15))
        {
          v19 = *(a1 + 56);
          if (v19 == *(a1 + 60))
          {
            v20 = v19 + 1;
            sub_1958E5C((a1 + 56), v19 + 1);
            *(*(a1 + 64) + 4 * v19) = v15;
          }

          else
          {
            *(*(a1 + 64) + 4 * v19) = v15;
            v20 = v19 + 1;
          }

          *(a1 + 56) = v20;
        }

        else
        {
          sub_12E85B8();
        }

        v14 = v59;
        if (*a3 <= v59 || *v59 != 40)
        {
          goto LABEL_123;
        }
      }
    }

    if (v9 == 42)
    {
      *&v60 = a1 + 56;
      *(&v60 + 1) = sub_16E4BC0;
      v61 = a1 + 8;
      v56 = 5;
      goto LABEL_114;
    }
  }

LABEL_115:
  if (v9)
  {
    v57 = (v9 & 7) == 4;
  }

  else
  {
    v57 = 1;
  }

  if (!v57)
  {
    if (*v7)
    {
      v58 = (*v7 & 0xFFFFFFFFFFFFFFFCLL) + 8;
    }

    else
    {
      v58 = sub_11F1920((a1 + 8));
      v8 = v59;
    }

    v32 = sub_1952690(v9, v58, v8, a3);
    goto LABEL_122;
  }

  if (!v8)
  {
    return 0;
  }

  a3[10].i32[0] = v9 - 1;
  return v59;
}

char *sub_12C626C(uint64_t a1, char *a2, unint64_t *a3)
{
  v5 = *(a1 + 16);
  if ((v5 & 4) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = sub_225EB68(a3, a2);
    }

    v7 = *(a1 + 104);
    *a2 = 8;
    a2[1] = v7;
    if (v7 > 0x7F)
    {
      a2[1] = v7 | 0x80;
      v8 = v7 >> 7;
      a2[2] = v7 >> 7;
      v6 = a2 + 3;
      if (v7 >= 0x4000)
      {
        LOBYTE(v9) = a2[2];
        do
        {
          *(v6 - 1) = v9 | 0x80;
          v9 = v8 >> 7;
          *v6++ = v8 >> 7;
          v10 = v8 >> 14;
          v8 >>= 7;
        }

        while (v10);
      }
    }

    else
    {
      v6 = a2 + 2;
    }
  }

  else
  {
    v6 = a2;
  }

  if (v5)
  {
    if (*a3 <= v6)
    {
      v6 = sub_225EB68(a3, v6);
    }

    v11 = *(a1 + 88);
    *v6 = 18;
    v12 = *(v11 + 44);
    v6[1] = v12;
    if (v12 > 0x7F)
    {
      v13 = sub_19575D0(v12, v6 + 1);
    }

    else
    {
      v13 = v6 + 2;
    }

    v6 = sub_16E886C(v11, v13, a3);
  }

  v14 = *(a1 + 24);
  if (v14 < 1)
  {
    v17 = v6;
  }

  else
  {
    for (i = 0; i != v14; ++i)
    {
      if (*a3 <= v6)
      {
        v6 = sub_225EB68(a3, v6);
      }

      v16 = *(*(a1 + 32) + 4 * i);
      *v6 = 24;
      v6[1] = v16;
      if (v16 > 0x7F)
      {
        v6[1] = v16 | 0x80;
        v18 = v16 >> 7;
        v6[2] = v16 >> 7;
        v17 = v6 + 3;
        if (v16 >= 0x4000)
        {
          LOBYTE(v6) = v6[2];
          do
          {
            *(v17 - 1) = v6 | 0x80;
            v6 = (v18 >> 7);
            *v17++ = v18 >> 7;
            v19 = v18 >> 14;
            v18 >>= 7;
          }

          while (v19);
        }
      }

      else
      {
        v17 = v6 + 2;
      }

      v6 = v17;
    }
  }

  v20 = *(a1 + 40);
  if (v20 < 1)
  {
    v23 = v17;
  }

  else
  {
    for (j = 0; j != v20; ++j)
    {
      if (*a3 <= v17)
      {
        v17 = sub_225EB68(a3, v17);
      }

      v22 = *(*(a1 + 48) + 4 * j);
      *v17 = 32;
      v17[1] = v22;
      if (v22 > 0x7F)
      {
        v17[1] = v22 | 0x80;
        v24 = v22 >> 7;
        v17[2] = v22 >> 7;
        v23 = v17 + 3;
        if (v22 >= 0x4000)
        {
          LOBYTE(v17) = v17[2];
          do
          {
            *(v23 - 1) = v17 | 0x80;
            v17 = (v24 >> 7);
            *v23++ = v24 >> 7;
            v25 = v24 >> 14;
            v24 >>= 7;
          }

          while (v25);
        }
      }

      else
      {
        v23 = v17 + 2;
      }

      v17 = v23;
    }
  }

  v26 = *(a1 + 56);
  if (v26 < 1)
  {
    v29 = v23;
  }

  else
  {
    for (k = 0; k != v26; ++k)
    {
      if (*a3 <= v23)
      {
        v23 = sub_225EB68(a3, v23);
      }

      v28 = *(*(a1 + 64) + 4 * k);
      *v23 = 40;
      v23[1] = v28;
      if (v28 > 0x7F)
      {
        v23[1] = v28 | 0x80;
        v30 = v28 >> 7;
        v23[2] = v28 >> 7;
        v29 = v23 + 3;
        if (v28 >= 0x4000)
        {
          LOBYTE(v31) = v23[2];
          do
          {
            *(v29 - 1) = v31 | 0x80;
            v31 = v30 >> 7;
            *v29++ = v30 >> 7;
            v32 = v30 >> 14;
            v30 >>= 7;
          }

          while (v32);
        }
      }

      else
      {
        v29 = v23 + 2;
      }

      v23 = v29;
    }
  }

  v33 = *(a1 + 72);
  if (v33 < 1)
  {
    v36 = v29;
  }

  else
  {
    for (m = 0; m != v33; ++m)
    {
      if (*a3 <= v29)
      {
        v29 = sub_225EB68(a3, v29);
      }

      v35 = *(*(a1 + 80) + 4 * m);
      *v29 = 48;
      v29[1] = v35;
      if (v35 > 0x7F)
      {
        v29[1] = v35 | 0x80;
        v37 = v35 >> 7;
        v29[2] = v35 >> 7;
        v36 = v29 + 3;
        if (v35 >= 0x4000)
        {
          LOBYTE(v29) = v29[2];
          do
          {
            *(v36 - 1) = v29 | 0x80;
            v29 = (v37 >> 7);
            *v36++ = v37 >> 7;
            v38 = v37 >> 14;
            v37 >>= 7;
          }

          while (v38);
        }
      }

      else
      {
        v36 = v29 + 2;
      }

      v29 = v36;
    }
  }

  if ((v5 & 2) != 0)
  {
    if (*a3 <= v36)
    {
      v36 = sub_225EB68(a3, v36);
    }

    v39 = *(a1 + 96);
    *v36 = 58;
    v40 = *(v39 + 44);
    v36[1] = v40;
    if (v40 > 0x7F)
    {
      v41 = sub_19575D0(v40, v36 + 1);
    }

    else
    {
      v41 = v36 + 2;
    }

    v36 = sub_16E5070(v39, v41, a3);
  }

  v42 = *(a1 + 8);
  if ((v42 & 1) == 0)
  {
    return v36;
  }

  v44 = v42 & 0xFFFFFFFFFFFFFFFCLL;
  v45 = *(v44 + 31);
  if (v45 < 0)
  {
    v46 = *(v44 + 8);
    v45 = *(v44 + 16);
  }

  else
  {
    v46 = (v44 + 8);
  }

  if ((*a3 - v36) >= v45)
  {
    v47 = v45;
    memcpy(v36, v46, v45);
    v36 += v47;
    return v36;
  }

  return sub_1957130(a3, v46, v45, v36);
}

uint64_t sub_12C6710(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    v3 = 0;
    v4 = 0;
    do
    {
      v5 = *(*(a1 + 32) + 4 * v4);
      if (v5 < 0)
      {
        v6 = 10;
      }

      else
      {
        v6 = (9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6;
      }

      v3 += v6;
      ++v4;
    }

    while (v2 != v4);
  }

  else
  {
    v3 = 0;
  }

  v7 = *(a1 + 40);
  if (v7)
  {
    v8 = 0;
    v9 = 0;
    do
    {
      v10 = *(*(a1 + 48) + 4 * v8);
      if (v10 < 0)
      {
        v11 = 10;
      }

      else
      {
        v11 = (9 * (__clz(v10 | 1) ^ 0x1F) + 73) >> 6;
      }

      v9 += v11;
      ++v8;
    }

    while (v7 != v8);
  }

  else
  {
    v9 = 0;
  }

  v12 = *(a1 + 56);
  if (v12)
  {
    v13 = 0;
    v14 = 0;
    do
    {
      v15 = *(*(a1 + 64) + 4 * v13);
      if (v15 < 0)
      {
        v16 = 10;
      }

      else
      {
        v16 = (9 * (__clz(v15 | 1) ^ 0x1F) + 73) >> 6;
      }

      v14 += v16;
      ++v13;
    }

    while (v12 != v13);
  }

  else
  {
    v14 = 0;
  }

  v17 = *(a1 + 72);
  if (v17)
  {
    v18 = 0;
    v19 = 0;
    do
    {
      v20 = *(*(a1 + 80) + 4 * v18);
      if (v20 < 0)
      {
        v21 = 10;
      }

      else
      {
        v21 = (9 * (__clz(v20 | 1) ^ 0x1F) + 73) >> 6;
      }

      v19 += v21;
      ++v18;
    }

    while (v17 != v18);
  }

  else
  {
    v19 = 0;
  }

  v22 = v3 + v2 + v7 + v9 + v12 + v14 + v17 + v19;
  v23 = *(a1 + 16);
  if ((v23 & 7) == 0)
  {
    goto LABEL_44;
  }

  if (v23)
  {
    v24 = sub_16E8DA4(*(a1 + 88));
    v22 += v24 + ((9 * (__clz(v24 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v23 & 2) == 0)
    {
LABEL_36:
      if ((v23 & 4) == 0)
      {
        goto LABEL_44;
      }

      goto LABEL_40;
    }
  }

  else if ((v23 & 2) == 0)
  {
    goto LABEL_36;
  }

  v25 = sub_16E51F0(*(a1 + 96));
  v22 += v25 + ((9 * (__clz(v25 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v23 & 4) == 0)
  {
    goto LABEL_44;
  }

LABEL_40:
  v26 = *(a1 + 104);
  if (v26 < 0)
  {
    v27 = 11;
  }

  else
  {
    v27 = ((9 * (__clz(v26 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  v22 += v27;
LABEL_44:
  v28 = *(a1 + 8);
  if (v28)
  {
    v30 = v28 & 0xFFFFFFFFFFFFFFFCLL;
    v31 = *((v28 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v31 < 0)
    {
      v31 = *(v30 + 16);
    }

    v22 += v31;
  }

  *(a1 + 20) = v22;
  return v22;
}

void sub_12C697C(char *result, uint64_t a2)
{
  v4 = *(a2 + 24);
  if (v4)
  {
    v5 = result + 24;
    v6 = *(result + 6);
    sub_1958E5C(result + 6, v6 + v4);
    v7 = *(result + 4);
    *v5 += *(a2 + 24);
    memcpy((v7 + 4 * v6), *(a2 + 32), 4 * *(a2 + 24));
  }

  v8 = *(a2 + 40);
  if (v8)
  {
    v9 = *(result + 10);
    sub_1958E5C(result + 10, v9 + v8);
    v10 = *(result + 6);
    *(result + 10) += *(a2 + 40);
    memcpy((v10 + 4 * v9), *(a2 + 48), 4 * *(a2 + 40));
  }

  v11 = *(a2 + 56);
  if (v11)
  {
    v12 = *(result + 14);
    sub_1958E5C(result + 14, v12 + v11);
    v13 = *(result + 8);
    *(result + 14) += *(a2 + 56);
    memcpy((v13 + 4 * v12), *(a2 + 64), 4 * *(a2 + 56));
  }

  v14 = *(a2 + 72);
  if (v14)
  {
    v15 = *(result + 18);
    sub_1958E5C(result + 18, v15 + v14);
    v16 = *(result + 10);
    *(result + 18) += *(a2 + 72);
    memcpy((v16 + 4 * v15), *(a2 + 80), 4 * *(a2 + 72));
  }

  v17 = *(a2 + 16);
  if ((v17 & 7) != 0)
  {
    if (v17)
    {
      *(result + 4) |= 1u;
      v19 = *(result + 11);
      if (!v19)
      {
        v20 = *(result + 1);
        v21 = (v20 & 0xFFFFFFFFFFFFFFFCLL);
        if (v20)
        {
          v21 = *v21;
        }

        v19 = sub_16F5BD8(v21);
        *(result + 11) = v19;
      }

      if (*(a2 + 88))
      {
        v22 = *(a2 + 88);
      }

      else
      {
        v22 = &off_277E738;
      }

      sub_16E4964(v19, v22);
      if ((v17 & 2) == 0)
      {
LABEL_12:
        if ((v17 & 4) == 0)
        {
LABEL_14:
          *(result + 4) |= v17;
          goto LABEL_15;
        }

LABEL_13:
        *(result + 26) = *(a2 + 104);
        goto LABEL_14;
      }
    }

    else if ((v17 & 2) == 0)
    {
      goto LABEL_12;
    }

    *(result + 4) |= 2u;
    v23 = *(result + 12);
    if (!v23)
    {
      v24 = *(result + 1);
      v25 = (v24 & 0xFFFFFFFFFFFFFFFCLL);
      if (v24)
      {
        v25 = *v25;
      }

      v23 = sub_16F5828(v25);
      *(result + 12) = v23;
    }

    if (*(a2 + 96))
    {
      v26 = *(a2 + 96);
    }

    else
    {
      v26 = &off_277E5E8;
    }

    sub_16E527C(v23, v26);
    if ((v17 & 4) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

LABEL_15:
  v18 = *(a2 + 8);
  if (v18)
  {

    sub_1957EF4(result + 1, (v18 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

uint64_t sub_12C6BB4(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    result = sub_16E4B4C(*(a1 + 88));
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

  result = sub_16E5370(*(a1 + 96));
  if (result)
  {
    return 1;
  }

  return result;
}

void *sub_12C6C10(void *a1)
{
  v3 = a1 + 1;
  v2 = a1[1];
  if ((v2 & 1) != 0 && !*(v2 & 0xFFFFFFFFFFFFFFFCLL))
  {
    sub_11F19CC(a1 + 1);
  }

  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_12C6C84(void *a1)
{
  sub_12C6C10(a1);

  operator delete();
}

uint64_t sub_12C6CBC(uint64_t a1)
{
  if ((*(a1 + 16) & 3) != 0)
  {
    *(a1 + 24) = 0;
  }

  v2 = *(a1 + 8);
  result = a1 + 8;
  *(result + 8) = 0;
  if (v2)
  {
    return sub_1957EA8(result);
  }

  return result;
}

char *sub_12C6CE0(uint64_t a1, char *a2, int32x2_t *a3)
{
  v25 = a2;
  v5 = 0;
  if (sub_195ADC0(a3, &v25, a3[11].u32[1]))
  {
    goto LABEL_2;
  }

  while (1)
  {
    v7 = v25 + 1;
    v8 = *v25;
    if (*v25 < 0)
    {
      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if (*v7 < 0)
      {
        v7 = sub_1958824(v25, v9 - 128);
        v8 = v10;
      }

      else
      {
        v7 = v25 + 2;
      }
    }

    v25 = v7;
    if (v8 >> 3 != 2)
    {
      break;
    }

    if (v8 != 16)
    {
      goto LABEL_12;
    }

    v5 |= 2u;
    v15 = v7 + 1;
    v16 = *v7;
    if ((*v7 & 0x80000000) == 0)
    {
      goto LABEL_24;
    }

    v17 = *v15;
    v16 = v16 + (v17 << 7) - 128;
    if ((v17 & 0x80000000) == 0)
    {
      v15 = v7 + 2;
LABEL_24:
      v25 = v15;
      *(a1 + 28) = v16;
      goto LABEL_29;
    }

    v21 = sub_1958770(v7, v16);
    v25 = v21;
    *(a1 + 28) = v22;
    if (!v21)
    {
      goto LABEL_38;
    }

LABEL_29:
    if (sub_195ADC0(a3, &v25, a3[11].u32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v8 >> 3 == 1 && v8 == 8)
  {
    v5 |= 1u;
    v19 = v7 + 1;
    v18 = *v7;
    if ((v18 & 0x8000000000000000) == 0)
    {
      goto LABEL_28;
    }

    v20 = *v19;
    v18 = (v20 << 7) + v18 - 128;
    if ((v20 & 0x80000000) == 0)
    {
      v19 = v7 + 2;
LABEL_28:
      v25 = v19;
      *(a1 + 24) = v18 != 0;
      goto LABEL_29;
    }

    v23 = sub_19587DC(v7, v18);
    v25 = v23;
    *(a1 + 24) = v24 != 0;
    if (!v23)
    {
      goto LABEL_38;
    }

    goto LABEL_29;
  }

LABEL_12:
  if (v8)
  {
    v12 = (v8 & 7) == 4;
  }

  else
  {
    v12 = 1;
  }

  if (!v12)
  {
    v13 = *(a1 + 8);
    if (v13)
    {
      v14 = (v13 & 0xFFFFFFFFFFFFFFFCLL) + 8;
    }

    else
    {
      v14 = sub_11F1920((a1 + 8));
      v7 = v25;
    }

    v25 = sub_1952690(v8, v14, v7, a3);
    if (!v25)
    {
      goto LABEL_38;
    }

    goto LABEL_29;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_38:
  v25 = 0;
LABEL_2:
  *(a1 + 16) |= v5;
  return v25;
}

char *sub_12C6ED4(uint64_t a1, char *__dst, void *a3)
{
  v5 = *(a1 + 16);
  if (v5)
  {
    if (*a3 <= __dst)
    {
      __dst = sub_225EB68(a3, __dst);
    }

    v6 = *(a1 + 24);
    *__dst = 8;
    __dst[1] = v6;
    __dst += 2;
  }

  if ((v5 & 2) != 0)
  {
    if (*a3 <= __dst)
    {
      __dst = sub_225EB68(a3, __dst);
    }

    v8 = *(a1 + 28);
    *__dst = 16;
    __dst[1] = v8;
    if (v8 > 0x7F)
    {
      __dst[1] = v8 | 0x80;
      v9 = v8 >> 7;
      __dst[2] = v8 >> 7;
      v7 = __dst + 3;
      if (v8 >= 0x4000)
      {
        LOBYTE(v10) = __dst[2];
        do
        {
          *(v7 - 1) = v10 | 0x80;
          v10 = v9 >> 7;
          *v7++ = v9 >> 7;
          v11 = v9 >> 14;
          v9 >>= 7;
        }

        while (v11);
      }
    }

    else
    {
      v7 = __dst + 2;
    }
  }

  else
  {
    v7 = __dst;
  }

  v12 = *(a1 + 8);
  if ((v12 & 1) == 0)
  {
    return v7;
  }

  v14 = v12 & 0xFFFFFFFFFFFFFFFCLL;
  v15 = *(v14 + 31);
  if (v15 < 0)
  {
    v16 = *(v14 + 8);
    v15 = *(v14 + 16);
  }

  else
  {
    v16 = (v14 + 8);
  }

  if (*a3 - v7 >= v15)
  {
    v17 = v15;
    memcpy(v7, v16, v15);
    v7 += v17;
    return v7;
  }

  return sub_1957130(a3, v16, v15, v7);
}

uint64_t sub_12C7030(uint64_t a1)
{
  v1 = *(a1 + 16);
  if ((v1 & 3) != 0)
  {
    LODWORD(v2) = 2 * (*(a1 + 16) & 1);
    if ((v1 & 2) != 0)
    {
      LODWORD(v2) = v2 + ((9 * (__clz(*(a1 + 28) | 1) ^ 0x1F) + 73) >> 6) + 1;
    }
  }

  else
  {
    LODWORD(v2) = 0;
  }

  v2 = v2;
  v3 = *(a1 + 8);
  if (v3)
  {
    v5 = v3 & 0xFFFFFFFFFFFFFFFCLL;
    v6 = *((v3 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v6 < 0)
    {
      v6 = *(v5 + 16);
    }

    v2 = v6 + v2;
  }

  *(a1 + 20) = v2;
  return v2;
}

std::string *sub_12C70A0(std::string *result, uint64_t a2)
{
  v2 = *(a2 + 16);
  if ((v2 & 3) != 0)
  {
    if (v2)
    {
      result[1].__r_.__value_.__s.__data_[0] = *(a2 + 24);
    }

    if ((v2 & 2) != 0)
    {
      HIDWORD(result[1].__r_.__value_.__r.__words[0]) = *(a2 + 28);
    }

    LODWORD(result->__r_.__value_.__r.__words[2]) |= v2;
  }

  v3 = *(a2 + 8);
  if (v3)
  {
    return sub_1957EF4(&result->__r_.__value_.__l.__size_, (v3 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  return result;
}

uint64_t sub_12C7104(uint64_t a1)
{
  v3 = (a1 + 8);
  v2 = *(a1 + 8);
  v4 = (v2 & 0xFFFFFFFFFFFFFFFCLL);
  if (v2)
  {
    if (*v4)
    {
      goto LABEL_11;
    }
  }

  else if (v4)
  {
    goto LABEL_11;
  }

  v5 = (a1 + 72);
  if (*(a1 + 72) != &qword_278E990)
  {
    sub_194E89C(v5);
  }

  if (*(a1 + 80) != &qword_278E990)
  {
    sub_194E89C((a1 + 80));
  }

  if (*(a1 + 88) != &qword_278E990)
  {
    sub_194E89C((a1 + 88));
  }

  if (*v3)
  {
    sub_11F19CC(v3);
  }

LABEL_11:
  sub_12E68B8((a1 + 48));
  sub_12E6834((a1 + 24));
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_12C71E8(uint64_t a1)
{
  sub_12C7104(a1);

  operator delete();
}

uint64_t sub_12C7220(uint64_t result)
{
  v1 = result;
  v2 = *(result + 32);
  if (v2 >= 1)
  {
    v3 = (*(result + 40) + 8);
    do
    {
      v4 = *v3++;
      result = sub_12C5B4C(v4);
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
      result = sub_12C6CBC(v7);
      --v5;
    }

    while (v5);
    *(v1 + 56) = 0;
  }

  v8 = *(v1 + 16);
  if ((v8 & 7) != 0)
  {
    if ((v8 & 1) == 0)
    {
      if ((v8 & 2) == 0)
      {
        goto LABEL_12;
      }

LABEL_18:
      v10 = *(v1 + 80) & 0xFFFFFFFFFFFFFFFELL;
      if (*(v10 + 23) < 0)
      {
        **v10 = 0;
        *(v10 + 8) = 0;
        if ((v8 & 4) == 0)
        {
          goto LABEL_25;
        }
      }

      else
      {
        *v10 = 0;
        *(v10 + 23) = 0;
        if ((v8 & 4) == 0)
        {
          goto LABEL_25;
        }
      }

      goto LABEL_22;
    }

    v9 = *(v1 + 72) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v9 + 23) < 0)
    {
      **v9 = 0;
      *(v9 + 8) = 0;
      if ((v8 & 2) != 0)
      {
        goto LABEL_18;
      }
    }

    else
    {
      *v9 = 0;
      *(v9 + 23) = 0;
      if ((v8 & 2) != 0)
      {
        goto LABEL_18;
      }
    }

LABEL_12:
    if ((v8 & 4) == 0)
    {
      goto LABEL_25;
    }

LABEL_22:
    v11 = *(v1 + 88) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v11 + 23) < 0)
    {
      **v11 = 0;
      *(v11 + 8) = 0;
    }

    else
    {
      *v11 = 0;
      *(v11 + 23) = 0;
    }
  }

LABEL_25:
  if ((v8 & 0xF8) != 0)
  {
    *(v1 + 101) = 0;
    *(v1 + 96) = 0;
    *(v1 + 112) = 1;
  }

  v13 = *(v1 + 8);
  v12 = v1 + 8;
  *(v12 + 8) = 0;
  if (v13)
  {

    return sub_1957EA8(v12);
  }

  return result;
}

uint64_t sub_12C7384(uint64_t a1, uint64_t a2, int32x2_t *a3)
{
  *v60 = a2;
  v5 = 0;
  if (sub_195ADC0(a3, v60, a3[11].u32[1]))
  {
    goto LABEL_2;
  }

  while (1)
  {
    v7 = (*v60 + 1);
    v8 = **v60;
    if (**v60 < 0)
    {
      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if (*v7 < 0)
      {
        v7 = sub_1958824(*v60, v9 - 128);
        v8 = v10;
      }

      else
      {
        v7 = (*v60 + 2);
      }
    }

    *v60 = v7;
    v11 = v8 >> 3;
    if (v8 >> 3 <= 5)
    {
      break;
    }

    if (v8 >> 3 <= 7)
    {
      if (v11 != 6)
      {
        if (v11 != 7 || v8 != 58)
        {
          goto LABEL_89;
        }

        *(a1 + 16) |= 4u;
        v24 = *(a1 + 8);
        v25 = (v24 & 0xFFFFFFFFFFFFFFFCLL);
        if (v24)
        {
          v25 = *v25;
        }

        v26 = (a1 + 88);
        goto LABEL_78;
      }

      if (v8 != 48)
      {
        goto LABEL_89;
      }

      v31 = v7 + 1;
      v32 = *v7;
      if (v32 < 0)
      {
        v33 = *v31;
        v34 = (v33 << 7) + v32;
        LODWORD(v32) = v34 - 128;
        if ((v33 & 0x80000000) == 0)
        {
          v31 = v7 + 2;
          goto LABEL_57;
        }

        *v60 = sub_19587DC(v7, (v34 - 128));
        if (!*v60)
        {
          goto LABEL_116;
        }

        LODWORD(v32) = v56;
      }

      else
      {
LABEL_57:
        *v60 = v31;
      }

      if (sub_144E260(v32))
      {
        *(a1 + 16) |= 0x80u;
        *(a1 + 112) = v32;
      }

      else
      {
        sub_12E84C8();
      }

      goto LABEL_97;
    }

    if (v11 == 8)
    {
      if (v8 == 66)
      {
        v36 = v7 - 1;
        while (1)
        {
          v37 = v36 + 1;
          *v60 = v36 + 1;
          v38 = *(a1 + 40);
          if (v38 && (v39 = *(a1 + 32), v39 < *v38))
          {
            *(a1 + 32) = v39 + 1;
            v40 = *&v38[2 * v39 + 2];
          }

          else
          {
            v41 = sub_12D0F50(*(a1 + 24));
            v40 = sub_19593CC(a1 + 24, v41);
            v37 = *v60;
          }

          v36 = sub_21F7218(a3, v40, v37);
          *v60 = v36;
          if (!v36)
          {
            goto LABEL_116;
          }

          if (*a3 <= v36 || *v36 != 66)
          {
            goto LABEL_97;
          }
        }
      }

      goto LABEL_89;
    }

    if (v11 == 9)
    {
      if (v8 == 74)
      {
        v45 = v7 - 1;
        while (1)
        {
          v46 = v45 + 1;
          *v60 = v45 + 1;
          v47 = *(a1 + 64);
          if (v47 && (v48 = *(a1 + 56), v48 < *v47))
          {
            *(a1 + 56) = v48 + 1;
            v49 = *&v47[2 * v48 + 2];
          }

          else
          {
            v50 = sub_12D101C(*(a1 + 48));
            v49 = sub_19593CC(a1 + 48, v50);
            v46 = *v60;
          }

          v45 = sub_21F72A8(a3, v49, v46);
          *v60 = v45;
          if (!v45)
          {
            goto LABEL_116;
          }

          if (*a3 <= v45 || *v45 != 74)
          {
            goto LABEL_97;
          }
        }
      }

      goto LABEL_89;
    }

    if (v11 != 10 || v8 != 80)
    {
      goto LABEL_89;
    }

    v5 |= 0x40u;
    v17 = v7 + 1;
    v16 = *v7;
    if ((v16 & 0x8000000000000000) == 0)
    {
      goto LABEL_27;
    }

    v18 = *v17;
    v16 = (v18 << 7) + v16 - 128;
    if ((v18 & 0x80000000) == 0)
    {
      v17 = v7 + 2;
LABEL_27:
      *v60 = v17;
      *(a1 + 108) = v16 != 0;
      goto LABEL_97;
    }

    v58 = sub_19587DC(v7, v16);
    *v60 = v58;
    *(a1 + 108) = v59 != 0;
    if (!v58)
    {
      goto LABEL_116;
    }

LABEL_97:
    if (sub_195ADC0(a3, v60, a3[11].u32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v8 >> 3 <= 2)
  {
    if (v11 != 1)
    {
      if (v11 == 2 && v8 == 16)
      {
        v20 = v7 + 1;
        v21 = *v7;
        if ((v21 & 0x8000000000000000) == 0)
        {
          goto LABEL_37;
        }

        v22 = *v20;
        v23 = (v22 << 7) + v21;
        LODWORD(v21) = v23 - 128;
        if (v22 < 0)
        {
          *v60 = sub_19587DC(v7, (v23 - 128));
          if (!*v60)
          {
            goto LABEL_116;
          }

          LODWORD(v21) = v54;
        }

        else
        {
          v20 = v7 + 2;
LABEL_37:
          *v60 = v20;
        }

        if (sub_1393054(v21))
        {
          *(a1 + 16) |= 0x10u;
          *(a1 + 100) = v21;
        }

        else
        {
          sub_12E8418();
        }

        goto LABEL_97;
      }

      goto LABEL_89;
    }

    if (v8 != 8)
    {
      goto LABEL_89;
    }

    v27 = v7 + 1;
    v28 = *v7;
    if (v28 < 0)
    {
      v29 = *v27;
      v30 = (v29 << 7) + v28;
      LODWORD(v28) = v30 - 128;
      if (v29 < 0)
      {
        *v60 = sub_19587DC(v7, (v30 - 128));
        if (!*v60)
        {
          goto LABEL_116;
        }

        LODWORD(v28) = v55;
        goto LABEL_51;
      }

      v27 = v7 + 2;
    }

    *v60 = v27;
LABEL_51:
    if (sub_144E294(v28))
    {
      *(a1 + 16) |= 8u;
      *(a1 + 96) = v28;
    }

    else
    {
      sub_12E8450();
    }

    goto LABEL_97;
  }

  if (v11 == 3)
  {
    if (v8 != 26)
    {
      goto LABEL_89;
    }

    *(a1 + 16) |= 1u;
    v35 = *(a1 + 8);
    v25 = (v35 & 0xFFFFFFFFFFFFFFFCLL);
    if (v35)
    {
      v25 = *v25;
    }

    v26 = (a1 + 72);
LABEL_78:
    v43 = sub_194DB04(v26, v25);
    v44 = sub_1958890(v43, *v60, a3);
    goto LABEL_96;
  }

  if (v11 == 4)
  {
    if (v8 != 34)
    {
      goto LABEL_89;
    }

    *(a1 + 16) |= 2u;
    v42 = *(a1 + 8);
    v25 = (v42 & 0xFFFFFFFFFFFFFFFCLL);
    if (v42)
    {
      v25 = *v25;
    }

    v26 = (a1 + 80);
    goto LABEL_78;
  }

  if (v11 == 5 && v8 == 40)
  {
    v12 = v7 + 1;
    v13 = *v7;
    if (v13 < 0)
    {
      v14 = *v12;
      v15 = (v14 << 7) + v13;
      LODWORD(v13) = v15 - 128;
      if (v14 < 0)
      {
        *v60 = sub_19587DC(v7, (v15 - 128));
        if (!*v60)
        {
          goto LABEL_116;
        }

        LODWORD(v13) = v57;
        goto LABEL_17;
      }

      v12 = v7 + 2;
    }

    *v60 = v12;
LABEL_17:
    if (sub_1470AE4(v13))
    {
      *(a1 + 16) |= 0x20u;
      *(a1 + 104) = v13;
    }

    else
    {
      sub_12E85B8();
    }

    goto LABEL_97;
  }

LABEL_89:
  if (v8)
  {
    v51 = (v8 & 7) == 4;
  }

  else
  {
    v51 = 1;
  }

  if (!v51)
  {
    v52 = *(a1 + 8);
    if (v52)
    {
      v53 = (v52 & 0xFFFFFFFFFFFFFFFCLL) + 8;
    }

    else
    {
      v53 = sub_11F1920((a1 + 8));
      v7 = *v60;
    }

    v44 = sub_1952690(v8, v53, v7, a3);
LABEL_96:
    *v60 = v44;
    if (!v44)
    {
      goto LABEL_116;
    }

    goto LABEL_97;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_116:
  *v60 = 0;
LABEL_2:
  *(a1 + 16) |= v5;
  return *v60;
}

char *sub_12C7948(uint64_t a1, char *__dst, unint64_t *a3)
{
  v5 = *(a1 + 16);
  if ((v5 & 8) != 0)
  {
    if (*a3 <= __dst)
    {
      __dst = sub_225EB68(a3, __dst);
    }

    v7 = *(a1 + 96);
    *__dst = 8;
    __dst[1] = v7;
    if (v7 > 0x7F)
    {
      __dst[1] = v7 | 0x80;
      v8 = v7 >> 7;
      __dst[2] = v7 >> 7;
      v6 = __dst + 3;
      if (v7 >= 0x4000)
      {
        LOBYTE(v9) = __dst[2];
        do
        {
          *(v6 - 1) = v9 | 0x80;
          v9 = v8 >> 7;
          *v6++ = v8 >> 7;
          v10 = v8 >> 14;
          v8 >>= 7;
        }

        while (v10);
      }
    }

    else
    {
      v6 = __dst + 2;
    }
  }

  else
  {
    v6 = __dst;
  }

  if ((v5 & 0x10) != 0)
  {
    if (*a3 <= v6)
    {
      v6 = sub_225EB68(a3, v6);
    }

    v12 = *(a1 + 100);
    *v6 = 16;
    v6[1] = v12;
    if (v12 > 0x7F)
    {
      v6[1] = v12 | 0x80;
      v13 = v12 >> 7;
      v6[2] = v12 >> 7;
      v11 = v6 + 3;
      if (v12 >= 0x4000)
      {
        LOBYTE(v6) = v6[2];
        do
        {
          *(v11 - 1) = v6 | 0x80;
          v6 = (v13 >> 7);
          *v11++ = v13 >> 7;
          v14 = v13 >> 14;
          v13 >>= 7;
        }

        while (v14);
      }
    }

    else
    {
      v11 = v6 + 2;
    }
  }

  else
  {
    v11 = v6;
  }

  if ((v5 & 1) == 0)
  {
    if ((v5 & 2) == 0)
    {
      goto LABEL_21;
    }

LABEL_24:
    v11 = sub_128AEEC(a3, 4, (*(a1 + 80) & 0xFFFFFFFFFFFFFFFELL), v11);
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_25;
  }

  v11 = sub_128AEEC(a3, 3, (*(a1 + 72) & 0xFFFFFFFFFFFFFFFELL), v11);
  if ((v5 & 2) != 0)
  {
    goto LABEL_24;
  }

LABEL_21:
  if ((v5 & 0x20) == 0)
  {
LABEL_22:
    v15 = v11;
    goto LABEL_32;
  }

LABEL_25:
  if (*a3 <= v11)
  {
    v11 = sub_225EB68(a3, v11);
  }

  v16 = *(a1 + 104);
  *v11 = 40;
  v11[1] = v16;
  if (v16 > 0x7F)
  {
    v11[1] = v16 | 0x80;
    v17 = v16 >> 7;
    v11[2] = v16 >> 7;
    v15 = v11 + 3;
    if (v16 >= 0x4000)
    {
      LOBYTE(v18) = v11[2];
      do
      {
        *(v15 - 1) = v18 | 0x80;
        v18 = v17 >> 7;
        *v15++ = v17 >> 7;
        v19 = v17 >> 14;
        v17 >>= 7;
      }

      while (v19);
    }
  }

  else
  {
    v15 = v11 + 2;
  }

LABEL_32:
  if ((v5 & 0x80) != 0)
  {
    if (*a3 <= v15)
    {
      v15 = sub_225EB68(a3, v15);
    }

    v21 = *(a1 + 112);
    *v15 = 48;
    v15[1] = v21;
    if (v21 > 0x7F)
    {
      v15[1] = v21 | 0x80;
      v22 = v21 >> 7;
      v15[2] = v21 >> 7;
      v20 = v15 + 3;
      if (v21 >= 0x4000)
      {
        LOBYTE(v23) = v15[2];
        do
        {
          *(v20 - 1) = v23 | 0x80;
          v23 = v22 >> 7;
          *v20++ = v22 >> 7;
          v24 = v22 >> 14;
          v22 >>= 7;
        }

        while (v24);
      }
    }

    else
    {
      v20 = v15 + 2;
    }
  }

  else
  {
    v20 = v15;
  }

  if ((v5 & 4) != 0)
  {
    v20 = sub_128AEEC(a3, 7, (*(a1 + 88) & 0xFFFFFFFFFFFFFFFELL), v20);
  }

  v25 = *(a1 + 32);
  if (v25)
  {
    for (i = 0; i != v25; ++i)
    {
      if (*a3 <= v20)
      {
        v20 = sub_225EB68(a3, v20);
      }

      v27 = *(*(a1 + 40) + 8 * i + 8);
      *v20 = 66;
      v28 = *(v27 + 20);
      v20[1] = v28;
      if (v28 > 0x7F)
      {
        v29 = sub_19575D0(v28, v20 + 1);
      }

      else
      {
        v29 = v20 + 2;
      }

      v20 = sub_12C626C(v27, v29, a3);
    }
  }

  v30 = *(a1 + 56);
  if (v30)
  {
    for (j = 0; j != v30; ++j)
    {
      if (*a3 <= v20)
      {
        v20 = sub_225EB68(a3, v20);
      }

      v32 = *(*(a1 + 64) + 8 * j + 8);
      *v20 = 74;
      v33 = *(v32 + 20);
      v20[1] = v33;
      if (v33 > 0x7F)
      {
        v34 = sub_19575D0(v33, v20 + 1);
      }

      else
      {
        v34 = v20 + 2;
      }

      v20 = sub_12C6ED4(v32, v34, a3);
    }
  }

  if ((v5 & 0x40) != 0)
  {
    if (*a3 <= v20)
    {
      v20 = sub_225EB68(a3, v20);
    }

    v35 = *(a1 + 108);
    *v20 = 80;
    v20[1] = v35;
    v20 += 2;
  }

  v36 = *(a1 + 8);
  if ((v36 & 1) == 0)
  {
    return v20;
  }

  v38 = v36 & 0xFFFFFFFFFFFFFFFCLL;
  v39 = *(v38 + 31);
  if (v39 < 0)
  {
    v40 = *(v38 + 8);
    v39 = *(v38 + 16);
  }

  else
  {
    v40 = (v38 + 8);
  }

  if ((*a3 - v20) >= v39)
  {
    v41 = v39;
    memcpy(v20, v40, v39);
    v20 += v41;
    return v20;
  }

  return sub_1957130(a3, v40, v39, v20);
}

uint64_t sub_12C7DBC(uint64_t a1)
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
      v7 = sub_12C6710(v6);
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
      v14 = sub_12C7030(v13);
      v9 += v14 + ((9 * (__clz(v14 | 1) ^ 0x1F) + 73) >> 6);
      v12 -= 8;
    }

    while (v12);
  }

  v15 = *(a1 + 16);
  if (*(a1 + 16))
  {
    if (v15)
    {
      v24 = *(a1 + 72) & 0xFFFFFFFFFFFFFFFELL;
      v25 = *(v24 + 23);
      v26 = *(v24 + 8);
      if ((v25 & 0x80u) == 0)
      {
        v26 = v25;
      }

      v9 += v26 + ((9 * (__clz(v26 | 1) ^ 0x1F) + 73) >> 6) + 1;
      if ((v15 & 2) == 0)
      {
LABEL_18:
        if ((v15 & 4) == 0)
        {
          goto LABEL_19;
        }

        goto LABEL_39;
      }
    }

    else if ((v15 & 2) == 0)
    {
      goto LABEL_18;
    }

    v27 = *(a1 + 80) & 0xFFFFFFFFFFFFFFFELL;
    v28 = *(v27 + 23);
    v29 = *(v27 + 8);
    if ((v28 & 0x80u) == 0)
    {
      v29 = v28;
    }

    v9 += v29 + ((9 * (__clz(v29 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v15 & 4) == 0)
    {
LABEL_19:
      if ((v15 & 8) == 0)
      {
        goto LABEL_20;
      }

      goto LABEL_42;
    }

LABEL_39:
    v30 = *(a1 + 88) & 0xFFFFFFFFFFFFFFFELL;
    v31 = *(v30 + 23);
    v32 = *(v30 + 8);
    if ((v31 & 0x80u) == 0)
    {
      v32 = v31;
    }

    v9 += v32 + ((9 * (__clz(v32 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v15 & 8) == 0)
    {
LABEL_20:
      if ((v15 & 0x10) == 0)
      {
        goto LABEL_21;
      }

      goto LABEL_46;
    }

LABEL_42:
    v33 = *(a1 + 96);
    v34 = ((9 * (__clz(v33 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if (v33 >= 0)
    {
      v35 = v34;
    }

    else
    {
      v35 = 11;
    }

    v9 += v35;
    if ((v15 & 0x10) == 0)
    {
LABEL_21:
      if ((v15 & 0x20) == 0)
      {
        goto LABEL_26;
      }

      goto LABEL_22;
    }

LABEL_46:
    v36 = *(a1 + 100);
    v37 = ((9 * (__clz(v36 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if (v36 >= 0)
    {
      v38 = v37;
    }

    else
    {
      v38 = 11;
    }

    v9 += v38;
    if ((v15 & 0x20) == 0)
    {
LABEL_26:
      v9 += (v15 >> 5) & 2;
      if ((v15 & 0x80) != 0)
      {
        v19 = *(a1 + 112);
        v20 = ((9 * (__clz(v19 | 1) ^ 0x1F) + 73) >> 6) + 1;
        if (v19 >= 0)
        {
          v21 = v20;
        }

        else
        {
          v21 = 11;
        }

        v9 += v21;
      }

      goto LABEL_31;
    }

LABEL_22:
    v16 = *(a1 + 104);
    v17 = ((9 * (__clz(v16 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if (v16 >= 0)
    {
      v18 = v17;
    }

    else
    {
      v18 = 11;
    }

    v9 += v18;
    goto LABEL_26;
  }

LABEL_31:
  v22 = *(a1 + 8);
  if (v22)
  {
    v39 = v22 & 0xFFFFFFFFFFFFFFFCLL;
    v40 = *((v22 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v40 < 0)
    {
      v40 = *(v39 + 16);
    }

    v9 += v40;
  }

  *(a1 + 20) = v9;
  return v9;
}

void sub_12C8080(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  if (v4)
  {
    v5 = *(a2 + 40);
    v6 = sub_19592E8(a1 + 24, *(a2 + 32));
    sub_12E7378((a1 + 24), v6, (v5 + 8), v4, **(a1 + 40) - *(a1 + 32));
    v7 = *(a1 + 32) + v4;
    *(a1 + 32) = v7;
    v8 = *(a1 + 40);
    if (*v8 < v7)
    {
      *v8 = v7;
    }
  }

  v9 = *(a2 + 56);
  if (v9)
  {
    v10 = *(a2 + 64);
    v11 = sub_19592E8(a1 + 48, *(a2 + 56));
    sub_12E7404((a1 + 48), v11, (v10 + 8), v9, **(a1 + 64) - *(a1 + 56));
    v12 = *(a1 + 56) + v9;
    *(a1 + 56) = v12;
    v13 = *(a1 + 64);
    if (*v13 < v12)
    {
      *v13 = v12;
    }
  }

  v14 = *(a2 + 16);
  if (v14)
  {
    if (v14)
    {
      v16 = *(a2 + 72);
      *(a1 + 16) |= 1u;
      v17 = *(a1 + 8);
      v18 = (v17 & 0xFFFFFFFFFFFFFFFCLL);
      if (v17)
      {
        v18 = *v18;
      }

      sub_194EA1C((a1 + 72), (v16 & 0xFFFFFFFFFFFFFFFELL), v18);
      if ((v14 & 2) == 0)
      {
LABEL_10:
        if ((v14 & 4) == 0)
        {
          goto LABEL_11;
        }

        goto LABEL_28;
      }
    }

    else if ((v14 & 2) == 0)
    {
      goto LABEL_10;
    }

    v19 = *(a2 + 80);
    *(a1 + 16) |= 2u;
    v20 = *(a1 + 8);
    v21 = (v20 & 0xFFFFFFFFFFFFFFFCLL);
    if (v20)
    {
      v21 = *v21;
    }

    sub_194EA1C((a1 + 80), (v19 & 0xFFFFFFFFFFFFFFFELL), v21);
    if ((v14 & 4) == 0)
    {
LABEL_11:
      if ((v14 & 8) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_31;
    }

LABEL_28:
    v22 = *(a2 + 88);
    *(a1 + 16) |= 4u;
    v23 = *(a1 + 8);
    v24 = (v23 & 0xFFFFFFFFFFFFFFFCLL);
    if (v23)
    {
      v24 = *v24;
    }

    sub_194EA1C((a1 + 88), (v22 & 0xFFFFFFFFFFFFFFFELL), v24);
    if ((v14 & 8) == 0)
    {
LABEL_12:
      if ((v14 & 0x10) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_32;
    }

LABEL_31:
    *(a1 + 96) = *(a2 + 96);
    if ((v14 & 0x10) == 0)
    {
LABEL_13:
      if ((v14 & 0x20) == 0)
      {
        goto LABEL_14;
      }

      goto LABEL_33;
    }

LABEL_32:
    *(a1 + 100) = *(a2 + 100);
    if ((v14 & 0x20) == 0)
    {
LABEL_14:
      if ((v14 & 0x40) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_34;
    }

LABEL_33:
    *(a1 + 104) = *(a2 + 104);
    if ((v14 & 0x40) == 0)
    {
LABEL_15:
      if ((v14 & 0x80) == 0)
      {
LABEL_17:
        *(a1 + 16) |= v14;
        goto LABEL_18;
      }

LABEL_16:
      *(a1 + 112) = *(a2 + 112);
      goto LABEL_17;
    }

LABEL_34:
    *(a1 + 108) = *(a2 + 108);
    if ((v14 & 0x80) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

LABEL_18:
  v15 = *(a2 + 8);
  if (v15)
  {

    sub_1957EF4((a1 + 8), (v15 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

BOOL sub_12C82A8(uint64_t a1)
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
    v5 = sub_12C6BB4(*(*(a1 + 40) + 8 * v2));
    v2 = v4;
  }

  while ((v5 & 1) != 0);
  return v3 < 1;
}

uint64_t sub_12C8310(uint64_t a1)
{
  v3 = (a1 + 8);
  v2 = *(a1 + 8);
  v4 = (v2 & 0xFFFFFFFFFFFFFFFCLL);
  if (v2)
  {
    if (*v4)
    {
      goto LABEL_7;
    }
  }

  else if (v4)
  {
    goto LABEL_7;
  }

  v5 = (a1 + 24);
  if (*(a1 + 24) != &qword_278E990)
  {
    sub_194E89C(v5);
  }

  if (v2)
  {
    sub_11F19CC(v3);
  }

LABEL_7:
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_12C83B0(uint64_t a1)
{
  sub_12C8310(a1);

  operator delete();
}

uint64_t sub_12C83E8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = *(a1 + 24) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v2 + 23) < 0)
    {
      **v2 = 0;
      *(v2 + 8) = 0;
    }

    else
    {
      *v2 = 0;
      *(v2 + 23) = 0;
    }
  }

  if ((v1 & 0xE) != 0)
  {
    *(a1 + 40) = 0;
    *(a1 + 32) = 0;
  }

  v4 = *(a1 + 8);
  result = a1 + 8;
  *(result + 8) = 0;
  if (v4)
  {
    return sub_1957EA8(result);
  }

  return result;
}

uint64_t sub_12C843C(uint64_t a1, uint64_t a2, int32x2_t *a3)
{
  *v35 = a2;
  v5 = 0;
  if (sub_195ADC0(a3, v35, a3[11].u32[1]))
  {
    goto LABEL_2;
  }

  while (1)
  {
    v7 = (*v35 + 1);
    v8 = **v35;
    if (**v35 < 0)
    {
      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if (*v7 < 0)
      {
        v7 = sub_1958824(*v35, v9 - 128);
        v8 = v10;
      }

      else
      {
        v7 = (*v35 + 2);
      }
    }

    *v35 = v7;
    v11 = v8 >> 3;
    if (v8 >> 3 > 2)
    {
      if (v11 == 3)
      {
        if (v8 != 24)
        {
          goto LABEL_34;
        }

        v5 |= 4u;
        v23 = v7 + 1;
        v24 = *v7;
        if ((*v7 & 0x80000000) == 0)
        {
          goto LABEL_33;
        }

        v25 = *v23;
        v24 = v24 + (v25 << 7) - 128;
        if ((v25 & 0x80000000) == 0)
        {
          v23 = v7 + 2;
LABEL_33:
          *v35 = v23;
          *(a1 + 36) = v24;
          goto LABEL_42;
        }

        v33 = sub_1958770(v7, v24);
        *v35 = v33;
        *(a1 + 36) = v34;
        if (!v33)
        {
          goto LABEL_53;
        }
      }

      else
      {
        if (v11 != 4 || v8 != 32)
        {
          goto LABEL_34;
        }

        v5 |= 8u;
        v16 = v7 + 1;
        v17 = *v7;
        if ((*v7 & 0x80000000) == 0)
        {
          goto LABEL_24;
        }

        v18 = *v16;
        v17 = v17 + (v18 << 7) - 128;
        if ((v18 & 0x80000000) == 0)
        {
          v16 = v7 + 2;
LABEL_24:
          *v35 = v16;
          *(a1 + 40) = v17;
          goto LABEL_42;
        }

        v29 = sub_1958770(v7, v17);
        *v35 = v29;
        *(a1 + 40) = v30;
        if (!v29)
        {
          goto LABEL_53;
        }
      }

      goto LABEL_42;
    }

    if (v11 == 1)
    {
      break;
    }

    if (v11 != 2 || v8 != 16)
    {
      goto LABEL_34;
    }

    v5 |= 2u;
    v13 = v7 + 1;
    v14 = *v7;
    if ((*v7 & 0x80000000) == 0)
    {
      goto LABEL_17;
    }

    v15 = *v13;
    v14 = v14 + (v15 << 7) - 128;
    if ((v15 & 0x80000000) == 0)
    {
      v13 = v7 + 2;
LABEL_17:
      *v35 = v13;
      *(a1 + 32) = v14;
      goto LABEL_42;
    }

    v31 = sub_1958770(v7, v14);
    *v35 = v31;
    *(a1 + 32) = v32;
    if (!v31)
    {
      goto LABEL_53;
    }

LABEL_42:
    if (sub_195ADC0(a3, v35, a3[11].u32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v8 == 10)
  {
    *(a1 + 16) |= 1u;
    v19 = *(a1 + 8);
    v20 = (v19 & 0xFFFFFFFFFFFFFFFCLL);
    if (v19)
    {
      v20 = *v20;
    }

    v21 = sub_194DB04((a1 + 24), v20);
    v22 = sub_1958890(v21, *v35, a3);
LABEL_41:
    *v35 = v22;
    if (!v22)
    {
      goto LABEL_53;
    }

    goto LABEL_42;
  }

LABEL_34:
  if (v8)
  {
    v26 = (v8 & 7) == 4;
  }

  else
  {
    v26 = 1;
  }

  if (!v26)
  {
    v27 = *(a1 + 8);
    if (v27)
    {
      v28 = (v27 & 0xFFFFFFFFFFFFFFFCLL) + 8;
    }

    else
    {
      v28 = sub_11F1920((a1 + 8));
      v7 = *v35;
    }

    v22 = sub_1952690(v8, v28, v7, a3);
    goto LABEL_41;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_53:
  *v35 = 0;
LABEL_2:
  *(a1 + 16) |= v5;
  return *v35;
}

char *sub_12C86D8(uint64_t a1, char *__dst, unint64_t *a3)
{
  v4 = __dst;
  v6 = *(a1 + 16);
  if (v6)
  {
    v4 = sub_128AEEC(a3, 1, (*(a1 + 24) & 0xFFFFFFFFFFFFFFFELL), __dst);
  }

  if ((v6 & 2) != 0)
  {
    if (*a3 <= v4)
    {
      v4 = sub_225EB68(a3, v4);
    }

    v8 = *(a1 + 32);
    *v4 = 16;
    v4[1] = v8;
    if (v8 > 0x7F)
    {
      v4[1] = v8 | 0x80;
      v9 = v8 >> 7;
      v4[2] = v8 >> 7;
      v7 = v4 + 3;
      if (v8 >= 0x4000)
      {
        LOBYTE(v10) = v4[2];
        do
        {
          *(v7 - 1) = v10 | 0x80;
          v10 = v9 >> 7;
          *v7++ = v9 >> 7;
          v11 = v9 >> 14;
          v9 >>= 7;
        }

        while (v11);
      }
    }

    else
    {
      v7 = v4 + 2;
    }
  }

  else
  {
    v7 = v4;
  }

  if ((v6 & 4) != 0)
  {
    if (*a3 <= v7)
    {
      v7 = sub_225EB68(a3, v7);
    }

    v13 = *(a1 + 36);
    *v7 = 24;
    v7[1] = v13;
    if (v13 > 0x7F)
    {
      v7[1] = v13 | 0x80;
      v14 = v13 >> 7;
      v7[2] = v13 >> 7;
      v12 = v7 + 3;
      if (v13 >= 0x4000)
      {
        LOBYTE(v15) = v7[2];
        do
        {
          *(v12 - 1) = v15 | 0x80;
          v15 = v14 >> 7;
          *v12++ = v14 >> 7;
          v16 = v14 >> 14;
          v14 >>= 7;
        }

        while (v16);
      }
    }

    else
    {
      v12 = v7 + 2;
    }
  }

  else
  {
    v12 = v7;
  }

  if ((v6 & 8) != 0)
  {
    if (*a3 <= v12)
    {
      v12 = sub_225EB68(a3, v12);
    }

    v18 = *(a1 + 40);
    *v12 = 32;
    v12[1] = v18;
    if (v18 > 0x7F)
    {
      v12[1] = v18 | 0x80;
      v19 = v18 >> 7;
      v12[2] = v18 >> 7;
      v17 = v12 + 3;
      if (v18 >= 0x4000)
      {
        LOBYTE(v12) = v12[2];
        do
        {
          *(v17 - 1) = v12 | 0x80;
          LODWORD(v12) = v19 >> 7;
          *v17++ = v19 >> 7;
          v20 = v19 >> 14;
          v19 >>= 7;
        }

        while (v20);
      }
    }

    else
    {
      v17 = v12 + 2;
    }
  }

  else
  {
    v17 = v12;
  }

  v21 = *(a1 + 8);
  if ((v21 & 1) == 0)
  {
    return v17;
  }

  v23 = v21 & 0xFFFFFFFFFFFFFFFCLL;
  v24 = *(v23 + 31);
  if (v24 < 0)
  {
    v25 = *(v23 + 8);
    v24 = *(v23 + 16);
  }

  else
  {
    v25 = (v23 + 8);
  }

  if ((*a3 - v17) >= v24)
  {
    v26 = v24;
    memcpy(v17, v25, v24);
    v17 += v26;
    return v17;
  }

  return sub_1957130(a3, v25, v24, v17);
}

uint64_t sub_12C8930(uint64_t a1)
{
  v1 = *(a1 + 16);
  if ((v1 & 0xF) == 0)
  {
    v2 = 0;
    goto LABEL_13;
  }

  if ((v1 & 1) == 0)
  {
    v2 = 0;
    if ((v1 & 2) == 0)
    {
      goto LABEL_10;
    }

LABEL_9:
    v2 += ((9 * (__clz(*(a1 + 32) | 1) ^ 0x1F) + 73) >> 6) + 1;
    goto LABEL_10;
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
    goto LABEL_9;
  }

LABEL_10:
  if ((v1 & 4) == 0)
  {
    if ((v1 & 8) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  v2 += ((9 * (__clz(*(a1 + 36) | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v1 & 8) != 0)
  {
LABEL_12:
    v2 += ((9 * (__clz(*(a1 + 40) | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_13:
  v6 = *(a1 + 8);
  if (v6)
  {
    v8 = v6 & 0xFFFFFFFFFFFFFFFCLL;
    v9 = *((v6 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v9 < 0)
    {
      v9 = *(v8 + 16);
    }

    v2 += v9;
  }

  *(a1 + 20) = v2;
  return v2;
}

void sub_12C8A40(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  if ((v4 & 0xF) != 0)
  {
    if (v4)
    {
      v6 = *(a2 + 24);
      *(a1 + 16) |= 1u;
      v7 = *(a1 + 8);
      v8 = (v7 & 0xFFFFFFFFFFFFFFFCLL);
      if (v7)
      {
        v8 = *v8;
      }

      sub_194EA1C((a1 + 24), (v6 & 0xFFFFFFFFFFFFFFFELL), v8);
      if ((v4 & 2) == 0)
      {
LABEL_4:
        if ((v4 & 4) == 0)
        {
          goto LABEL_5;
        }

        goto LABEL_16;
      }
    }

    else if ((v4 & 2) == 0)
    {
      goto LABEL_4;
    }

    *(a1 + 32) = *(a2 + 32);
    if ((v4 & 4) == 0)
    {
LABEL_5:
      if ((v4 & 8) == 0)
      {
LABEL_7:
        *(a1 + 16) |= v4;
        goto LABEL_8;
      }

LABEL_6:
      *(a1 + 40) = *(a2 + 40);
      goto LABEL_7;
    }

LABEL_16:
    *(a1 + 36) = *(a2 + 36);
    if ((v4 & 8) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

LABEL_8:
  v5 = *(a2 + 8);
  if (v5)
  {

    sub_1957EF4((a1 + 8), (v5 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

void *sub_12C8B38(void *a1)
{
  v3 = a1 + 1;
  v2 = a1[1];
  if ((v2 & 1) != 0 && !*(v2 & 0xFFFFFFFFFFFFFFFCLL))
  {
    sub_11F19CC(a1 + 1);
  }

  sub_12E693C(a1 + 3);
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_12C8BB8(void *a1)
{
  sub_12C8B38(a1);

  operator delete();
}

uint64_t sub_12C8BF0(uint64_t result)
{
  v1 = result;
  v2 = *(result + 32);
  if (v2 >= 1)
  {
    v3 = (*(result + 40) + 8);
    do
    {
      v4 = *v3++;
      result = sub_12C83E8(v4);
      --v2;
    }

    while (v2);
    *(v1 + 32) = 0;
  }

  if ((*(v1 + 16) & 0x1F) != 0)
  {
    *(v1 + 48) = 0;
    *(v1 + 56) = 0;
    *(v1 + 64) = 0;
  }

  v6 = *(v1 + 8);
  v5 = v1 + 8;
  *(v5 + 8) = 0;
  if (v6)
  {

    return sub_1957EA8(v5);
  }

  return result;
}

char *sub_12C8C84(uint64_t a1, char *a2, int32x2_t *a3)
{
  v47 = a2;
  v5 = 0;
  if (sub_195ADC0(a3, &v47, a3[11].u32[1]))
  {
    goto LABEL_2;
  }

  while (1)
  {
    v7 = v47 + 1;
    v8 = *v47;
    if (*v47 < 0)
    {
      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if (*v7 < 0)
      {
        v7 = sub_1958824(v47, v9 - 128);
        v8 = v10;
      }

      else
      {
        v7 = v47 + 2;
      }
    }

    v47 = v7;
    v11 = v8 >> 3;
    if (v8 >> 3 > 3)
    {
      break;
    }

    if (v11 == 1)
    {
      if (v8 != 8)
      {
        goto LABEL_54;
      }

      v5 |= 1u;
      v19 = v7 + 1;
      v20 = *v7;
      if ((*v7 & 0x80000000) == 0)
      {
        goto LABEL_31;
      }

      v21 = *v19;
      v20 = v20 + (v21 << 7) - 128;
      if ((v21 & 0x80000000) == 0)
      {
        v19 = v7 + 2;
LABEL_31:
        v47 = v19;
        *(a1 + 48) = v20;
        goto LABEL_61;
      }

      v38 = sub_1958770(v7, v20);
      v47 = v38;
      *(a1 + 48) = v39;
      if (!v38)
      {
        goto LABEL_77;
      }

      goto LABEL_61;
    }

    if (v11 == 2)
    {
      if (v8 != 16)
      {
        goto LABEL_54;
      }

      v25 = v7 + 1;
      v26 = *v7;
      if (v26 < 0)
      {
        v27 = *v25;
        v28 = (v27 << 7) + v26;
        LODWORD(v26) = v28 - 128;
        if ((v27 & 0x80000000) == 0)
        {
          v25 = v7 + 2;
          goto LABEL_41;
        }

        v47 = sub_19587DC(v7, (v28 - 128));
        if (!v47)
        {
          goto LABEL_77;
        }

        LODWORD(v26) = v46;
      }

      else
      {
LABEL_41:
        v47 = v25;
      }

      if (sub_1393054(v26))
      {
        *(a1 + 16) |= 2u;
        *(a1 + 52) = v26;
      }

      else
      {
        sub_12E8418();
      }

      goto LABEL_61;
    }

    if (v11 != 3 || v8 != 24)
    {
      goto LABEL_54;
    }

    v5 |= 4u;
    v13 = v7 + 1;
    v14 = *v7;
    if ((*v7 & 0x80000000) == 0)
    {
      goto LABEL_18;
    }

    v15 = *v13;
    v14 = v14 + (v15 << 7) - 128;
    if ((v15 & 0x80000000) == 0)
    {
      v13 = v7 + 2;
LABEL_18:
      v47 = v13;
      *(a1 + 56) = v14;
      goto LABEL_61;
    }

    v44 = sub_1958770(v7, v14);
    v47 = v44;
    *(a1 + 56) = v45;
    if (!v44)
    {
      goto LABEL_77;
    }

LABEL_61:
    if (sub_195ADC0(a3, &v47, a3[11].u32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v11 == 4)
  {
    if (v8 != 32)
    {
      goto LABEL_54;
    }

    v5 |= 8u;
    v22 = v7 + 1;
    v23 = *v7;
    if ((*v7 & 0x80000000) == 0)
    {
      goto LABEL_36;
    }

    v24 = *v22;
    v23 = v23 + (v24 << 7) - 128;
    if ((v24 & 0x80000000) == 0)
    {
      v22 = v7 + 2;
LABEL_36:
      v47 = v22;
      *(a1 + 60) = v23;
      goto LABEL_61;
    }

    v40 = sub_1958770(v7, v23);
    v47 = v40;
    *(a1 + 60) = v41;
    if (!v40)
    {
      goto LABEL_77;
    }

    goto LABEL_61;
  }

  if (v11 != 5)
  {
    if (v11 != 6 || v8 != 48)
    {
      goto LABEL_54;
    }

    v5 |= 0x10u;
    v17 = v7 + 1;
    v16 = *v7;
    if ((v16 & 0x8000000000000000) == 0)
    {
      goto LABEL_26;
    }

    v18 = *v17;
    v16 = (v18 << 7) + v16 - 128;
    if ((v18 & 0x80000000) == 0)
    {
      v17 = v7 + 2;
LABEL_26:
      v47 = v17;
      *(a1 + 64) = v16 != 0;
      goto LABEL_61;
    }

    v42 = sub_19587DC(v7, v16);
    v47 = v42;
    *(a1 + 64) = v43 != 0;
    if (!v42)
    {
      goto LABEL_77;
    }

    goto LABEL_61;
  }

  if (v8 == 42)
  {
    v29 = v7 - 1;
    while (1)
    {
      v30 = v29 + 1;
      v47 = v29 + 1;
      v31 = *(a1 + 40);
      if (v31 && (v32 = *(a1 + 32), v32 < *v31))
      {
        *(a1 + 32) = v32 + 1;
        v33 = *&v31[2 * v32 + 2];
      }

      else
      {
        v34 = sub_12D1154(*(a1 + 24));
        v33 = sub_19593CC(a1 + 24, v34);
        v30 = v47;
      }

      v29 = sub_21F7338(a3, v33, v30);
      v47 = v29;
      if (!v29)
      {
        goto LABEL_77;
      }

      if (*a3 <= v29 || *v29 != 42)
      {
        goto LABEL_61;
      }
    }
  }

LABEL_54:
  if (v8)
  {
    v35 = (v8 & 7) == 4;
  }

  else
  {
    v35 = 1;
  }

  if (!v35)
  {
    v36 = *(a1 + 8);
    if (v36)
    {
      v37 = (v36 & 0xFFFFFFFFFFFFFFFCLL) + 8;
    }

    else
    {
      v37 = sub_11F1920((a1 + 8));
      v7 = v47;
    }

    v47 = sub_1952690(v8, v37, v7, a3);
    if (!v47)
    {
      goto LABEL_77;
    }

    goto LABEL_61;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_77:
  v47 = 0;
LABEL_2:
  *(a1 + 16) |= v5;
  return v47;
}

char *sub_12C9068(uint64_t a1, char *__dst, unint64_t *a3)
{
  v5 = *(a1 + 16);
  if (v5)
  {
    if (*a3 <= __dst)
    {
      __dst = sub_225EB68(a3, __dst);
    }

    v7 = *(a1 + 48);
    *__dst = 8;
    __dst[1] = v7;
    if (v7 > 0x7F)
    {
      __dst[1] = v7 | 0x80;
      v8 = v7 >> 7;
      __dst[2] = v7 >> 7;
      v6 = __dst + 3;
      if (v7 >= 0x4000)
      {
        LOBYTE(v9) = __dst[2];
        do
        {
          *(v6 - 1) = v9 | 0x80;
          v9 = v8 >> 7;
          *v6++ = v8 >> 7;
          v10 = v8 >> 14;
          v8 >>= 7;
        }

        while (v10);
      }
    }

    else
    {
      v6 = __dst + 2;
    }
  }

  else
  {
    v6 = __dst;
  }

  if ((v5 & 2) != 0)
  {
    if (*a3 <= v6)
    {
      v6 = sub_225EB68(a3, v6);
    }

    v12 = *(a1 + 52);
    *v6 = 16;
    v6[1] = v12;
    if (v12 > 0x7F)
    {
      v6[1] = v12 | 0x80;
      v13 = v12 >> 7;
      v6[2] = v12 >> 7;
      v11 = v6 + 3;
      if (v12 >= 0x4000)
      {
        LOBYTE(v6) = v6[2];
        do
        {
          *(v11 - 1) = v6 | 0x80;
          v6 = (v13 >> 7);
          *v11++ = v13 >> 7;
          v14 = v13 >> 14;
          v13 >>= 7;
        }

        while (v14);
      }
    }

    else
    {
      v11 = v6 + 2;
    }
  }

  else
  {
    v11 = v6;
  }

  if ((v5 & 4) != 0)
  {
    if (*a3 <= v11)
    {
      v11 = sub_225EB68(a3, v11);
    }

    v16 = *(a1 + 56);
    *v11 = 24;
    v11[1] = v16;
    if (v16 > 0x7F)
    {
      v11[1] = v16 | 0x80;
      v17 = v16 >> 7;
      v11[2] = v16 >> 7;
      v15 = v11 + 3;
      if (v16 >= 0x4000)
      {
        LOBYTE(v11) = v11[2];
        do
        {
          *(v15 - 1) = v11 | 0x80;
          LODWORD(v11) = v17 >> 7;
          *v15++ = v17 >> 7;
          v18 = v17 >> 14;
          v17 >>= 7;
        }

        while (v18);
      }
    }

    else
    {
      v15 = v11 + 2;
    }
  }

  else
  {
    v15 = v11;
  }

  if ((v5 & 8) != 0)
  {
    if (*a3 <= v15)
    {
      v15 = sub_225EB68(a3, v15);
    }

    v20 = *(a1 + 60);
    *v15 = 32;
    v15[1] = v20;
    if (v20 > 0x7F)
    {
      v15[1] = v20 | 0x80;
      v21 = v20 >> 7;
      v15[2] = v20 >> 7;
      v19 = v15 + 3;
      if (v20 >= 0x4000)
      {
        LOBYTE(v22) = v15[2];
        do
        {
          *(v19 - 1) = v22 | 0x80;
          v22 = v21 >> 7;
          *v19++ = v21 >> 7;
          v23 = v21 >> 14;
          v21 >>= 7;
        }

        while (v23);
      }
    }

    else
    {
      v19 = v15 + 2;
    }
  }

  else
  {
    v19 = v15;
  }

  v24 = *(a1 + 32);
  if (v24)
  {
    for (i = 0; i != v24; ++i)
    {
      if (*a3 <= v19)
      {
        v19 = sub_225EB68(a3, v19);
      }

      v26 = *(*(a1 + 40) + 8 * i + 8);
      *v19 = 42;
      v27 = *(v26 + 20);
      v19[1] = v27;
      if (v27 > 0x7F)
      {
        v28 = sub_19575D0(v27, v19 + 1);
      }

      else
      {
        v28 = v19 + 2;
      }

      v19 = sub_12C86D8(v26, v28, a3);
    }
  }

  if ((v5 & 0x10) != 0)
  {
    if (*a3 <= v19)
    {
      v19 = sub_225EB68(a3, v19);
    }

    v29 = *(a1 + 64);
    *v19 = 48;
    v19[1] = v29;
    v19 += 2;
  }

  v30 = *(a1 + 8);
  if ((v30 & 1) == 0)
  {
    return v19;
  }

  v32 = v30 & 0xFFFFFFFFFFFFFFFCLL;
  v33 = *(v32 + 31);
  if (v33 < 0)
  {
    v34 = *(v32 + 8);
    v33 = *(v32 + 16);
  }

  else
  {
    v34 = (v32 + 8);
  }

  if ((*a3 - v19) >= v33)
  {
    v35 = v33;
    memcpy(v19, v34, v33);
    v19 += v35;
    return v19;
  }

  return sub_1957130(a3, v34, v33, v19);
}

uint64_t sub_12C93F8(uint64_t a1)
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
      v7 = sub_12C8930(v6);
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
  if ((v8 & 0x1F) != 0)
  {
    if (v8)
    {
      v2 += ((9 * (__clz(*(a1 + 48) | 1) ^ 0x1F) + 73) >> 6) + 1;
      if ((v8 & 2) == 0)
      {
LABEL_12:
        if ((v8 & 4) == 0)
        {
          goto LABEL_13;
        }

        goto LABEL_23;
      }
    }

    else if ((v8 & 2) == 0)
    {
      goto LABEL_12;
    }

    v11 = *(a1 + 52);
    if (v11 < 0)
    {
      v12 = 11;
    }

    else
    {
      v12 = ((9 * (__clz(v11 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    v2 += v12;
    if ((v8 & 4) == 0)
    {
LABEL_13:
      if ((v8 & 8) == 0)
      {
LABEL_15:
        v2 += (v8 >> 3) & 2;
        goto LABEL_16;
      }

LABEL_14:
      v2 += ((9 * (__clz(*(a1 + 60) | 1) ^ 0x1F) + 73) >> 6) + 1;
      goto LABEL_15;
    }

LABEL_23:
    v2 += ((9 * (__clz(*(a1 + 56) | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v8 & 8) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

LABEL_16:
  v9 = *(a1 + 8);
  if (v9)
  {
    v13 = v9 & 0xFFFFFFFFFFFFFFFCLL;
    v14 = *((v9 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v14 < 0)
    {
      v14 = *(v13 + 16);
    }

    v2 += v14;
  }

  *(a1 + 20) = v2;
  return v2;
}

void sub_12C9574(uint64_t result, uint64_t a2)
{
  v4 = *(a2 + 32);
  if (v4)
  {
    v5 = *(a2 + 40);
    v6 = sub_19592E8(result + 24, *(a2 + 32));
    sub_12E7490((result + 24), v6, (v5 + 8), v4, **(result + 40) - *(result + 32));
    v7 = *(result + 32) + v4;
    *(result + 32) = v7;
    v8 = *(result + 40);
    if (*v8 < v7)
    {
      *v8 = v7;
    }
  }

  v9 = *(a2 + 16);
  if ((v9 & 0x1F) != 0)
  {
    if (v9)
    {
      *(result + 48) = *(a2 + 48);
      if ((v9 & 2) == 0)
      {
LABEL_7:
        if ((v9 & 4) == 0)
        {
          goto LABEL_8;
        }

        goto LABEL_18;
      }
    }

    else if ((v9 & 2) == 0)
    {
      goto LABEL_7;
    }

    *(result + 52) = *(a2 + 52);
    if ((v9 & 4) == 0)
    {
LABEL_8:
      if ((v9 & 8) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_19;
    }

LABEL_18:
    *(result + 56) = *(a2 + 56);
    if ((v9 & 8) == 0)
    {
LABEL_9:
      if ((v9 & 0x10) == 0)
      {
LABEL_11:
        *(result + 16) |= v9;
        goto LABEL_12;
      }

LABEL_10:
      *(result + 64) = *(a2 + 64);
      goto LABEL_11;
    }

LABEL_19:
    *(result + 60) = *(a2 + 60);
    if ((v9 & 0x10) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

LABEL_12:
  v10 = *(a2 + 8);
  if (v10)
  {

    sub_1957EF4((result + 8), (v10 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

void *sub_12C96B0(void *a1)
{
  v3 = a1 + 1;
  v2 = a1[1];
  if ((v2 & 1) != 0 && !*(v2 & 0xFFFFFFFFFFFFFFFCLL))
  {
    sub_11F19CC(a1 + 1);
  }

  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_12C9724(void *a1)
{
  sub_12C96B0(a1);

  operator delete();
}

uint64_t sub_12C975C(uint64_t a1)
{
  if ((*(a1 + 16) & 0x7F) != 0)
  {
    *(a1 + 24) = 0;
    *(a1 + 32) = 0;
    *(a1 + 48) = 0;
    *(a1 + 40) = 0;
  }

  v2 = *(a1 + 8);
  result = a1 + 8;
  *(result + 8) = 0;
  if (v2)
  {
    return sub_1957EA8(result);
  }

  return result;
}

char *sub_12C9788(uint64_t a1, char *a2, int32x2_t *a3)
{
  v51 = a2;
  v5 = 0;
  if (sub_195ADC0(a3, &v51, a3[11].u32[1]))
  {
    goto LABEL_2;
  }

  while (1)
  {
    v7 = v51 + 1;
    v8 = *v51;
    if (*v51 < 0)
    {
      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if (*v7 < 0)
      {
        v7 = sub_1958824(v51, v9 - 128);
        v8 = v10;
      }

      else
      {
        v7 = v51 + 2;
      }
    }

    v51 = v7;
    v11 = v8 >> 3;
    if (v8 >> 3 <= 3)
    {
      break;
    }

    if (v8 >> 3 > 5)
    {
      if (v11 == 6)
      {
        if (v8 != 48)
        {
          goto LABEL_54;
        }

        v5 |= 0x20u;
        v28 = v7 + 1;
        v29 = *v7;
        if ((*v7 & 0x80000000) == 0)
        {
          goto LABEL_48;
        }

        v30 = *v28;
        v29 = v29 + (v30 << 7) - 128;
        if ((v30 & 0x80000000) == 0)
        {
          v28 = v7 + 2;
LABEL_48:
          v51 = v28;
          *(a1 + 44) = v29;
          goto LABEL_61;
        }

        v41 = sub_1958770(v7, v29);
        v51 = v41;
        *(a1 + 44) = v42;
        if (!v41)
        {
          goto LABEL_80;
        }
      }

      else
      {
        if (v11 != 7 || v8 != 56)
        {
          goto LABEL_54;
        }

        v5 |= 0x40u;
        v19 = v7 + 1;
        v20 = *v7;
        if ((*v7 & 0x80000000) == 0)
        {
          goto LABEL_33;
        }

        v21 = *v19;
        v20 = v20 + (v21 << 7) - 128;
        if ((v21 & 0x80000000) == 0)
        {
          v19 = v7 + 2;
LABEL_33:
          v51 = v19;
          *(a1 + 48) = v20;
          goto LABEL_61;
        }

        v45 = sub_1958770(v7, v20);
        v51 = v45;
        *(a1 + 48) = v46;
        if (!v45)
        {
          goto LABEL_80;
        }
      }
    }

    else if (v11 == 4)
    {
      if (v8 != 32)
      {
        goto LABEL_54;
      }

      v5 |= 8u;
      v25 = v7 + 1;
      v26 = *v7;
      if ((*v7 & 0x80000000) == 0)
      {
        goto LABEL_43;
      }

      v27 = *v25;
      v26 = v26 + (v27 << 7) - 128;
      if ((v27 & 0x80000000) == 0)
      {
        v25 = v7 + 2;
LABEL_43:
        v51 = v25;
        *(a1 + 36) = v26;
        goto LABEL_61;
      }

      v39 = sub_1958770(v7, v26);
      v51 = v39;
      *(a1 + 36) = v40;
      if (!v39)
      {
        goto LABEL_80;
      }
    }

    else
    {
      if (v11 != 5 || v8 != 40)
      {
        goto LABEL_54;
      }

      v5 |= 0x10u;
      v12 = v7 + 1;
      v13 = *v7;
      if ((*v7 & 0x80000000) == 0)
      {
        goto LABEL_15;
      }

      v14 = *v12;
      v13 = v13 + (v14 << 7) - 128;
      if ((v14 & 0x80000000) == 0)
      {
        v12 = v7 + 2;
LABEL_15:
        v51 = v12;
        *(a1 + 40) = v13;
        goto LABEL_61;
      }

      v43 = sub_1958770(v7, v13);
      v51 = v43;
      *(a1 + 40) = v44;
      if (!v43)
      {
        goto LABEL_80;
      }
    }

LABEL_61:
    if (sub_195ADC0(a3, &v51, a3[11].u32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v11 == 1)
  {
    if (v8 != 8)
    {
      goto LABEL_54;
    }

    v5 |= 1u;
    v22 = v7 + 1;
    v23 = *v7;
    if ((*v7 & 0x80000000) == 0)
    {
      goto LABEL_38;
    }

    v24 = *v22;
    v23 = v23 + (v24 << 7) - 128;
    if ((v24 & 0x80000000) == 0)
    {
      v22 = v7 + 2;
LABEL_38:
      v51 = v22;
      *(a1 + 24) = v23;
      goto LABEL_61;
    }

    v37 = sub_1958770(v7, v23);
    v51 = v37;
    *(a1 + 24) = v38;
    if (!v37)
    {
      goto LABEL_80;
    }

    goto LABEL_61;
  }

  if (v11 == 2)
  {
    if (v8 != 16)
    {
      goto LABEL_54;
    }

    v5 |= 2u;
    v31 = v7 + 1;
    v32 = *v7;
    if ((*v7 & 0x80000000) == 0)
    {
      goto LABEL_53;
    }

    v33 = *v31;
    v32 = v32 + (v33 << 7) - 128;
    if ((v33 & 0x80000000) == 0)
    {
      v31 = v7 + 2;
LABEL_53:
      v51 = v31;
      *(a1 + 28) = v32;
      goto LABEL_61;
    }

    v49 = sub_1958770(v7, v32);
    v51 = v49;
    *(a1 + 28) = v50;
    if (!v49)
    {
      goto LABEL_80;
    }

    goto LABEL_61;
  }

  if (v11 == 3 && v8 == 24)
  {
    v5 |= 4u;
    v16 = v7 + 1;
    v17 = *v7;
    if ((*v7 & 0x80000000) == 0)
    {
      goto LABEL_26;
    }

    v18 = *v16;
    v17 = v17 + (v18 << 7) - 128;
    if ((v18 & 0x80000000) == 0)
    {
      v16 = v7 + 2;
LABEL_26:
      v51 = v16;
      *(a1 + 32) = v17;
      goto LABEL_61;
    }

    v47 = sub_1958770(v7, v17);
    v51 = v47;
    *(a1 + 32) = v48;
    if (!v47)
    {
      goto LABEL_80;
    }

    goto LABEL_61;
  }

LABEL_54:
  if (v8)
  {
    v34 = (v8 & 7) == 4;
  }

  else
  {
    v34 = 1;
  }

  if (!v34)
  {
    v35 = *(a1 + 8);
    if (v35)
    {
      v36 = (v35 & 0xFFFFFFFFFFFFFFFCLL) + 8;
    }

    else
    {
      v36 = sub_11F1920((a1 + 8));
      v7 = v51;
    }

    v51 = sub_1952690(v8, v36, v7, a3);
    if (!v51)
    {
      goto LABEL_80;
    }

    goto LABEL_61;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_80:
  v51 = 0;
LABEL_2:
  *(a1 + 16) |= v5;
  return v51;
}

char *sub_12C9B70(uint64_t a1, char *__dst, unint64_t *a3)
{
  v5 = *(a1 + 16);
  if (v5)
  {
    if (*a3 <= __dst)
    {
      __dst = sub_225EB68(a3, __dst);
    }

    v7 = *(a1 + 24);
    *__dst = 8;
    __dst[1] = v7;
    if (v7 > 0x7F)
    {
      __dst[1] = v7 | 0x80;
      v8 = v7 >> 7;
      __dst[2] = v7 >> 7;
      v6 = __dst + 3;
      if (v7 >= 0x4000)
      {
        LOBYTE(v9) = __dst[2];
        do
        {
          *(v6 - 1) = v9 | 0x80;
          v9 = v8 >> 7;
          *v6++ = v8 >> 7;
          v10 = v8 >> 14;
          v8 >>= 7;
        }

        while (v10);
      }
    }

    else
    {
      v6 = __dst + 2;
    }
  }

  else
  {
    v6 = __dst;
  }

  if ((v5 & 2) != 0)
  {
    if (*a3 <= v6)
    {
      v6 = sub_225EB68(a3, v6);
    }

    v12 = *(a1 + 28);
    *v6 = 16;
    v6[1] = v12;
    if (v12 > 0x7F)
    {
      v6[1] = v12 | 0x80;
      v13 = v12 >> 7;
      v6[2] = v12 >> 7;
      v11 = v6 + 3;
      if (v12 >= 0x4000)
      {
        LOBYTE(v6) = v6[2];
        do
        {
          *(v11 - 1) = v6 | 0x80;
          LODWORD(v6) = v13 >> 7;
          *v11++ = v13 >> 7;
          v14 = v13 >> 14;
          v13 >>= 7;
        }

        while (v14);
      }
    }

    else
    {
      v11 = v6 + 2;
    }
  }

  else
  {
    v11 = v6;
  }

  if ((v5 & 4) != 0)
  {
    if (*a3 <= v11)
    {
      v11 = sub_225EB68(a3, v11);
    }

    v16 = *(a1 + 32);
    *v11 = 24;
    v11[1] = v16;
    if (v16 > 0x7F)
    {
      v11[1] = v16 | 0x80;
      v17 = v16 >> 7;
      v11[2] = v16 >> 7;
      v15 = v11 + 3;
      if (v16 >= 0x4000)
      {
        LOBYTE(v11) = v11[2];
        do
        {
          *(v15 - 1) = v11 | 0x80;
          LODWORD(v11) = v17 >> 7;
          *v15++ = v17 >> 7;
          v18 = v17 >> 14;
          v17 >>= 7;
        }

        while (v18);
      }
    }

    else
    {
      v15 = v11 + 2;
    }
  }

  else
  {
    v15 = v11;
  }

  if ((v5 & 8) != 0)
  {
    if (*a3 <= v15)
    {
      v15 = sub_225EB68(a3, v15);
    }

    v20 = *(a1 + 36);
    *v15 = 32;
    v15[1] = v20;
    if (v20 > 0x7F)
    {
      v15[1] = v20 | 0x80;
      v21 = v20 >> 7;
      v15[2] = v20 >> 7;
      v19 = v15 + 3;
      if (v20 >= 0x4000)
      {
        LOBYTE(v22) = v15[2];
        do
        {
          *(v19 - 1) = v22 | 0x80;
          v22 = v21 >> 7;
          *v19++ = v21 >> 7;
          v23 = v21 >> 14;
          v21 >>= 7;
        }

        while (v23);
      }
    }

    else
    {
      v19 = v15 + 2;
    }
  }

  else
  {
    v19 = v15;
  }

  if ((v5 & 0x10) != 0)
  {
    if (*a3 <= v19)
    {
      v19 = sub_225EB68(a3, v19);
    }

    v25 = *(a1 + 40);
    *v19 = 40;
    v19[1] = v25;
    if (v25 > 0x7F)
    {
      v19[1] = v25 | 0x80;
      v26 = v25 >> 7;
      v19[2] = v25 >> 7;
      v24 = v19 + 3;
      if (v25 >= 0x4000)
      {
        LOBYTE(v19) = v19[2];
        do
        {
          *(v24 - 1) = v19 | 0x80;
          LODWORD(v19) = v26 >> 7;
          *v24++ = v26 >> 7;
          v27 = v26 >> 14;
          v26 >>= 7;
        }

        while (v27);
      }
    }

    else
    {
      v24 = v19 + 2;
    }
  }

  else
  {
    v24 = v19;
  }

  if ((v5 & 0x20) != 0)
  {
    if (*a3 <= v24)
    {
      v24 = sub_225EB68(a3, v24);
    }

    v29 = *(a1 + 44);
    *v24 = 48;
    v24[1] = v29;
    if (v29 > 0x7F)
    {
      v24[1] = v29 | 0x80;
      v30 = v29 >> 7;
      v24[2] = v29 >> 7;
      v28 = v24 + 3;
      if (v29 >= 0x4000)
      {
        LOBYTE(v31) = v24[2];
        do
        {
          *(v28 - 1) = v31 | 0x80;
          v31 = v30 >> 7;
          *v28++ = v30 >> 7;
          v32 = v30 >> 14;
          v30 >>= 7;
        }

        while (v32);
      }
    }

    else
    {
      v28 = v24 + 2;
    }
  }

  else
  {
    v28 = v24;
  }

  if ((v5 & 0x40) != 0)
  {
    if (*a3 <= v28)
    {
      v28 = sub_225EB68(a3, v28);
    }

    v34 = *(a1 + 48);
    *v28 = 56;
    v28[1] = v34;
    if (v34 > 0x7F)
    {
      v28[1] = v34 | 0x80;
      v35 = v34 >> 7;
      v28[2] = v34 >> 7;
      v33 = v28 + 3;
      if (v34 >= 0x4000)
      {
        LOBYTE(v28) = v28[2];
        do
        {
          *(v33 - 1) = v28 | 0x80;
          LODWORD(v28) = v35 >> 7;
          *v33++ = v35 >> 7;
          v36 = v35 >> 14;
          v35 >>= 7;
        }

        while (v36);
      }
    }

    else
    {
      v33 = v28 + 2;
    }
  }

  else
  {
    v33 = v28;
  }

  v37 = *(a1 + 8);
  if ((v37 & 1) == 0)
  {
    return v33;
  }

  v39 = v37 & 0xFFFFFFFFFFFFFFFCLL;
  v40 = *(v39 + 31);
  if (v40 < 0)
  {
    v41 = *(v39 + 8);
    v40 = *(v39 + 16);
  }

  else
  {
    v41 = (v39 + 8);
  }

  if ((*a3 - v33) >= v40)
  {
    v42 = v40;
    memcpy(v33, v41, v40);
    v33 += v42;
    return v33;
  }

  return sub_1957130(a3, v41, v40, v33);
}

uint64_t sub_12C9FC0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if ((v1 & 0x7F) == 0)
  {
    v2 = 0;
    goto LABEL_14;
  }

  if (v1)
  {
    v2 = ((9 * (__clz(*(a1 + 24) | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v1 & 2) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v2 = 0;
  if ((v1 & 2) != 0)
  {
LABEL_7:
    v2 += ((9 * (__clz(*(a1 + 28) | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_8:
  if ((v1 & 4) != 0)
  {
    v2 += ((9 * (__clz(*(a1 + 32) | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v1 & 8) == 0)
    {
LABEL_10:
      if ((v1 & 0x10) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_18;
    }
  }

  else if ((v1 & 8) == 0)
  {
    goto LABEL_10;
  }

  v2 += ((9 * (__clz(*(a1 + 36) | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v1 & 0x10) == 0)
  {
LABEL_11:
    if ((v1 & 0x20) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_19;
  }

LABEL_18:
  v2 += ((9 * (__clz(*(a1 + 40) | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v1 & 0x20) == 0)
  {
LABEL_12:
    if ((v1 & 0x40) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

LABEL_19:
  v2 += ((9 * (__clz(*(a1 + 44) | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v1 & 0x40) != 0)
  {
LABEL_13:
    v2 += ((9 * (__clz(*(a1 + 48) | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_14:
  v3 = *(a1 + 8);
  if (v3)
  {
    v5 = v3 & 0xFFFFFFFFFFFFFFFCLL;
    v6 = *((v3 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v6 < 0)
    {
      v6 = *(v5 + 16);
    }

    v2 += v6;
  }

  *(a1 + 20) = v2;
  return v2;
}

std::string *sub_12CA138(std::string *result, uint64_t a2)
{
  v2 = *(a2 + 16);
  if ((v2 & 0x7F) == 0)
  {
    goto LABEL_11;
  }

  if (v2)
  {
    LODWORD(result[1].__r_.__value_.__l.__data_) = *(a2 + 24);
    if ((v2 & 2) == 0)
    {
LABEL_4:
      if ((v2 & 4) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_15;
    }
  }

  else if ((v2 & 2) == 0)
  {
    goto LABEL_4;
  }

  HIDWORD(result[1].__r_.__value_.__r.__words[0]) = *(a2 + 28);
  if ((v2 & 4) == 0)
  {
LABEL_5:
    if ((v2 & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_16;
  }

LABEL_15:
  LODWORD(result[1].__r_.__value_.__r.__words[1]) = *(a2 + 32);
  if ((v2 & 8) == 0)
  {
LABEL_6:
    if ((v2 & 0x10) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_17;
  }

LABEL_16:
  HIDWORD(result[1].__r_.__value_.__r.__words[1]) = *(a2 + 36);
  if ((v2 & 0x10) == 0)
  {
LABEL_7:
    if ((v2 & 0x20) == 0)
    {
      goto LABEL_8;
    }

LABEL_18:
    HIDWORD(result[1].__r_.__value_.__r.__words[2]) = *(a2 + 44);
    if ((v2 & 0x40) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

LABEL_17:
  LODWORD(result[1].__r_.__value_.__r.__words[2]) = *(a2 + 40);
  if ((v2 & 0x20) != 0)
  {
    goto LABEL_18;
  }

LABEL_8:
  if ((v2 & 0x40) != 0)
  {
LABEL_9:
    LODWORD(result[2].__r_.__value_.__l.__data_) = *(a2 + 48);
  }

LABEL_10:
  LODWORD(result->__r_.__value_.__r.__words[2]) |= v2;
LABEL_11:
  v3 = *(a2 + 8);
  if (v3)
  {
    return sub_1957EF4(&result->__r_.__value_.__l.__size_, (v3 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  return result;
}

void *sub_12CA1F4(void *a1)
{
  v3 = a1 + 1;
  v2 = a1[1];
  if ((v2 & 1) != 0 && !*(v2 & 0xFFFFFFFFFFFFFFFCLL))
  {
    sub_11F19CC(a1 + 1);
  }

  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_12CA268(void *a1)
{
  sub_12CA1F4(a1);

  operator delete();
}

uint64_t sub_12CA2A0(uint64_t a1)
{
  if ((*(a1 + 16) & 7) != 0)
  {
    *(a1 + 24) = 0;
    *(a1 + 32) = 1;
  }

  v2 = *(a1 + 8);
  result = a1 + 8;
  *(result + 8) = 0;
  if (v2)
  {
    return sub_1957EA8(result);
  }

  return result;
}

char *sub_12CA2CC(uint64_t a1, char *a2, int32x2_t *a3)
{
  v34 = a2;
  v5 = 0;
  if (sub_195ADC0(a3, &v34, a3[11].u32[1]))
  {
    goto LABEL_2;
  }

  while (1)
  {
    v7 = v34 + 1;
    v8 = *v34;
    if (*v34 < 0)
    {
      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if (*v7 < 0)
      {
        v7 = sub_1958824(v34, v9 - 128);
        v8 = v10;
      }

      else
      {
        v7 = v34 + 2;
      }
    }

    v34 = v7;
    v11 = v8 >> 3;
    if (v8 >> 3 == 3)
    {
      if (v8 != 24)
      {
        goto LABEL_13;
      }

      v5 |= 2u;
      v21 = v7 + 1;
      v22 = *v7;
      if ((*v7 & 0x80000000) == 0)
      {
        goto LABEL_35;
      }

      v23 = *v21;
      v22 = v22 + (v23 << 7) - 128;
      if ((v23 & 0x80000000) == 0)
      {
        v21 = v7 + 2;
LABEL_35:
        v34 = v21;
        *(a1 + 28) = v22;
        goto LABEL_48;
      }

      v32 = sub_1958770(v7, v22);
      v34 = v32;
      *(a1 + 28) = v33;
      if (!v32)
      {
        goto LABEL_54;
      }

      goto LABEL_48;
    }

    if (v11 == 2)
    {
      break;
    }

    if (v11 != 1 || v8 != 8)
    {
      goto LABEL_13;
    }

    v5 |= 1u;
    v25 = v7 + 1;
    v24 = *v7;
    if ((v24 & 0x8000000000000000) == 0)
    {
      goto LABEL_39;
    }

    v26 = *v25;
    v24 = (v26 << 7) + v24 - 128;
    if ((v26 & 0x80000000) == 0)
    {
      v25 = v7 + 2;
LABEL_39:
      v34 = v25;
      *(a1 + 24) = v24 != 0;
      goto LABEL_48;
    }

    v30 = sub_19587DC(v7, v24);
    v34 = v30;
    *(a1 + 24) = v31 != 0;
    if (!v30)
    {
      goto LABEL_54;
    }

LABEL_48:
    if (sub_195ADC0(a3, &v34, a3[11].u32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v8 == 16)
  {
    v16 = v7 + 1;
    v17 = *v7;
    if ((v17 & 0x8000000000000000) == 0)
    {
      goto LABEL_25;
    }

    v18 = *v16;
    v19 = (v18 << 7) + v17;
    v17 = (v19 - 128);
    if (v18 < 0)
    {
      v34 = sub_19587DC(v7, (v19 - 128));
      if (!v34)
      {
        goto LABEL_54;
      }

      v17 = v29;
    }

    else
    {
      v16 = v7 + 2;
LABEL_25:
      v34 = v16;
    }

    if (v17 > 5 || ((1 << v17) & 0x2A) == 0)
    {
      v27 = *(a1 + 8);
      if (v27)
      {
        v28 = ((v27 & 0xFFFFFFFFFFFFFFFCLL) + 8);
      }

      else
      {
        v28 = sub_11F1920((a1 + 8));
      }

      sub_19586BC(2, v17, v28);
    }

    else
    {
      *(a1 + 16) |= 4u;
      *(a1 + 32) = v17;
    }

    goto LABEL_48;
  }

LABEL_13:
  if (v8)
  {
    v13 = (v8 & 7) == 4;
  }

  else
  {
    v13 = 1;
  }

  if (!v13)
  {
    v14 = *(a1 + 8);
    if (v14)
    {
      v15 = (v14 & 0xFFFFFFFFFFFFFFFCLL) + 8;
    }

    else
    {
      v15 = sub_11F1920((a1 + 8));
      v7 = v34;
    }

    v34 = sub_1952690(v8, v15, v7, a3);
    if (!v34)
    {
      goto LABEL_54;
    }

    goto LABEL_48;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_54:
  v34 = 0;
LABEL_2:
  *(a1 + 16) |= v5;
  return v34;
}

char *sub_12CA584(uint64_t a1, char *__dst, unint64_t *a3)
{
  v5 = *(a1 + 16);
  if (v5)
  {
    if (*a3 <= __dst)
    {
      __dst = sub_225EB68(a3, __dst);
    }

    v6 = *(a1 + 24);
    *__dst = 8;
    __dst[1] = v6;
    __dst += 2;
  }

  if ((v5 & 4) != 0)
  {
    if (*a3 <= __dst)
    {
      __dst = sub_225EB68(a3, __dst);
    }

    v8 = *(a1 + 32);
    *__dst = 16;
    __dst[1] = v8;
    if (v8 > 0x7F)
    {
      __dst[1] = v8 | 0x80;
      v9 = v8 >> 7;
      __dst[2] = v8 >> 7;
      v7 = __dst + 3;
      if (v8 >= 0x4000)
      {
        LOBYTE(v10) = __dst[2];
        do
        {
          *(v7 - 1) = v10 | 0x80;
          v10 = v9 >> 7;
          *v7++ = v9 >> 7;
          v11 = v9 >> 14;
          v9 >>= 7;
        }

        while (v11);
      }
    }

    else
    {
      v7 = __dst + 2;
    }
  }

  else
  {
    v7 = __dst;
  }

  if ((v5 & 2) != 0)
  {
    if (*a3 <= v7)
    {
      v7 = sub_225EB68(a3, v7);
    }

    v13 = *(a1 + 28);
    *v7 = 24;
    v7[1] = v13;
    if (v13 > 0x7F)
    {
      v7[1] = v13 | 0x80;
      v14 = v13 >> 7;
      v7[2] = v13 >> 7;
      v12 = v7 + 3;
      if (v13 >= 0x4000)
      {
        LOBYTE(v7) = v7[2];
        do
        {
          *(v12 - 1) = v7 | 0x80;
          LODWORD(v7) = v14 >> 7;
          *v12++ = v14 >> 7;
          v15 = v14 >> 14;
          v14 >>= 7;
        }

        while (v15);
      }
    }

    else
    {
      v12 = v7 + 2;
    }
  }

  else
  {
    v12 = v7;
  }

  v16 = *(a1 + 8);
  if ((v16 & 1) == 0)
  {
    return v12;
  }

  v18 = v16 & 0xFFFFFFFFFFFFFFFCLL;
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

  if ((*a3 - v12) >= v19)
  {
    v21 = v19;
    memcpy(v12, v20, v19);
    v12 += v21;
    return v12;
  }

  return sub_1957130(a3, v20, v19, v12);
}

uint64_t sub_12CA768(uint64_t a1)
{
  v1 = *(a1 + 16);
  if ((v1 & 7) != 0)
  {
    LODWORD(v2) = 2 * (*(a1 + 16) & 1);
    if ((v1 & 2) != 0)
    {
      LODWORD(v2) = v2 + ((9 * (__clz(*(a1 + 28) | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    v2 = v2;
    if ((v1 & 4) != 0)
    {
      v3 = *(a1 + 32);
      v4 = ((9 * (__clz(v3 | 1) ^ 0x1F) + 73) >> 6) + 1;
      if (v3 >= 0)
      {
        v5 = v4;
      }

      else
      {
        v5 = 11;
      }

      v2 = v5 + v2;
    }
  }

  else
  {
    v2 = 0;
  }

  v6 = *(a1 + 8);
  if (v6)
  {
    v8 = v6 & 0xFFFFFFFFFFFFFFFCLL;
    v9 = *((v6 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v9 < 0)
    {
      v9 = *(v8 + 16);
    }

    v2 += v9;
  }

  *(a1 + 20) = v2;
  return v2;
}

std::string *sub_12CA80C(std::string *result, uint64_t a2)
{
  v2 = *(a2 + 16);
  if ((v2 & 7) == 0)
  {
    goto LABEL_7;
  }

  if ((v2 & 1) == 0)
  {
    if ((v2 & 2) == 0)
    {
      goto LABEL_4;
    }

LABEL_10:
    HIDWORD(result[1].__r_.__value_.__r.__words[0]) = *(a2 + 28);
    if ((v2 & 4) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  result[1].__r_.__value_.__s.__data_[0] = *(a2 + 24);
  if ((v2 & 2) != 0)
  {
    goto LABEL_10;
  }

LABEL_4:
  if ((v2 & 4) != 0)
  {
LABEL_5:
    LODWORD(result[1].__r_.__value_.__r.__words[1]) = *(a2 + 32);
  }

LABEL_6:
  LODWORD(result->__r_.__value_.__r.__words[2]) |= v2;
LABEL_7:
  v3 = *(a2 + 8);
  if (v3)
  {
    return sub_1957EF4(&result->__r_.__value_.__l.__size_, (v3 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  return result;
}

uint64_t sub_12CA888(uint64_t a1)
{
  v3 = (a1 + 8);
  v2 = *(a1 + 8);
  v4 = (v2 & 0xFFFFFFFFFFFFFFFCLL);
  if (v2)
  {
    if (*v4)
    {
      goto LABEL_7;
    }
  }

  else if (v4)
  {
    goto LABEL_7;
  }

  v5 = (a1 + 96);
  if (*(a1 + 96) != &qword_278E990)
  {
    sub_194E89C(v5);
  }

  if (v2)
  {
    sub_11F19CC(v3);
  }

LABEL_7:
  sub_12E6AC8((a1 + 72));
  sub_12E6A44((a1 + 48));
  sub_12E69C0((a1 + 24));
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_12CA94C(uint64_t a1)
{
  sub_12CA888(a1);

  operator delete();
}

uint64_t sub_12CA984(uint64_t result)
{
  v1 = result;
  v2 = *(result + 32);
  if (v2 >= 1)
  {
    v3 = (*(result + 40) + 8);
    do
    {
      v4 = *v3++;
      result = sub_12C8BF0(v4);
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
      result = sub_12C975C(v7);
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
      result = sub_12CA2A0(v10);
      --v8;
    }

    while (v8);
    *(v1 + 80) = 0;
  }

  v11 = *(v1 + 16);
  if (v11)
  {
    v12 = *(v1 + 96) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v12 + 23) < 0)
    {
      **v12 = 0;
      *(v12 + 8) = 0;
    }

    else
    {
      *v12 = 0;
      *(v12 + 23) = 0;
    }
  }

  if ((v11 & 6) != 0)
  {
    *(v1 + 112) = 0;
    *(v1 + 104) = 0;
  }

  v14 = *(v1 + 8);
  v13 = v1 + 8;
  *(v13 + 8) = 0;
  if (v14)
  {

    return sub_1957EA8(v13);
  }

  return result;
}

uint64_t sub_12CAA94(uint64_t a1, uint64_t a2, int32x2_t *a3)
{
  *v48 = a2;
  v5 = 0;
  if (sub_195ADC0(a3, v48, a3[11].u32[1]))
  {
    goto LABEL_2;
  }

  while (1)
  {
    v7 = (*v48 + 1);
    v8 = **v48;
    if (**v48 < 0)
    {
      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if (*v7 < 0)
      {
        v7 = sub_1958824(*v48, v9 - 128);
        v8 = v10;
      }

      else
      {
        v7 = (*v48 + 2);
      }
    }

    *v48 = v7;
    v11 = v8 >> 3;
    if (v8 >> 3 > 3)
    {
      break;
    }

    if (v11 == 1)
    {
      if (v8 != 8)
      {
        goto LABEL_63;
      }

      v23 = v7 + 1;
      v24 = *v7;
      if (v24 < 0)
      {
        v25 = *v23;
        v26 = (v25 << 7) + v24;
        LODWORD(v24) = v26 - 128;
        if ((v25 & 0x80000000) == 0)
        {
          v23 = v7 + 2;
          goto LABEL_35;
        }

        *v48 = sub_19587DC(v7, (v26 - 128));
        if (!*v48)
        {
          goto LABEL_81;
        }

        LODWORD(v24) = v45;
      }

      else
      {
LABEL_35:
        *v48 = v23;
      }

      if (sub_14CB318(v24))
      {
        *(a1 + 16) |= 4u;
        *(a1 + 112) = v24;
      }

      else
      {
        sub_12E8450();
      }

      goto LABEL_71;
    }

    if (v11 != 2)
    {
      if (v11 != 3 || v8 != 26)
      {
        goto LABEL_63;
      }

      *(a1 + 16) |= 1u;
      v13 = *(a1 + 8);
      v14 = (v13 & 0xFFFFFFFFFFFFFFFCLL);
      if (v13)
      {
        v14 = *v14;
      }

      v15 = sub_194DB04((a1 + 96), v14);
      v16 = sub_1958890(v15, *v48, a3);
LABEL_70:
      *v48 = v16;
      if (!v16)
      {
        goto LABEL_81;
      }

      goto LABEL_71;
    }

    if (v8 != 16)
    {
      goto LABEL_63;
    }

    v5 |= 2u;
    v34 = v7 + 1;
    v33 = *v7;
    if ((v33 & 0x8000000000000000) == 0)
    {
      goto LABEL_52;
    }

    v35 = *v34;
    v33 = (v35 << 7) + v33 - 128;
    if ((v35 & 0x80000000) == 0)
    {
      v34 = v7 + 2;
LABEL_52:
      *v48 = v34;
      *(a1 + 104) = v33;
      goto LABEL_71;
    }

    v46 = sub_19587DC(v7, v33);
    *v48 = v46;
    *(a1 + 104) = v47;
    if (!v46)
    {
      goto LABEL_81;
    }

LABEL_71:
    if (sub_195ADC0(a3, v48, a3[11].u32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v11 == 4)
  {
    if (v8 == 34)
    {
      v27 = v7 - 1;
      while (1)
      {
        v28 = v27 + 1;
        *v48 = v27 + 1;
        v29 = *(a1 + 40);
        if (v29 && (v30 = *(a1 + 32), v30 < *v29))
        {
          *(a1 + 32) = v30 + 1;
          v31 = *&v29[2 * v30 + 2];
        }

        else
        {
          v32 = sub_12D11DC(*(a1 + 24));
          v31 = sub_19593CC(a1 + 24, v32);
          v28 = *v48;
        }

        v27 = sub_21F73C8(a3, v31, v28);
        *v48 = v27;
        if (!v27)
        {
          goto LABEL_81;
        }

        if (*a3 <= v27 || *v27 != 34)
        {
          goto LABEL_71;
        }
      }
    }
  }

  else if (v11 == 5)
  {
    if (v8 == 42)
    {
      v36 = v7 - 1;
      while (1)
      {
        v37 = v36 + 1;
        *v48 = v36 + 1;
        v38 = *(a1 + 64);
        if (v38 && (v39 = *(a1 + 56), v39 < *v38))
        {
          *(a1 + 56) = v39 + 1;
          v40 = *&v38[2 * v39 + 2];
        }

        else
        {
          sub_12D127C(*(a1 + 48));
          v40 = sub_19593CC(a1 + 48, v41);
          v37 = *v48;
        }

        v36 = sub_21F7458(a3, v40, v37);
        *v48 = v36;
        if (!v36)
        {
          goto LABEL_81;
        }

        if (*a3 <= v36 || *v36 != 42)
        {
          goto LABEL_71;
        }
      }
    }
  }

  else if (v11 == 6 && v8 == 50)
  {
    v17 = v7 - 1;
    while (1)
    {
      v18 = v17 + 1;
      *v48 = v17 + 1;
      v19 = *(a1 + 88);
      if (v19 && (v20 = *(a1 + 80), v20 < *v19))
      {
        *(a1 + 80) = v20 + 1;
        v21 = *&v19[2 * v20 + 2];
      }

      else
      {
        v22 = sub_12D12FC(*(a1 + 72));
        v21 = sub_19593CC(a1 + 72, v22);
        v18 = *v48;
      }

      v17 = sub_21F74E8(a3, v21, v18);
      *v48 = v17;
      if (!v17)
      {
        goto LABEL_81;
      }

      if (*a3 <= v17 || *v17 != 50)
      {
        goto LABEL_71;
      }
    }
  }

LABEL_63:
  if (v8)
  {
    v42 = (v8 & 7) == 4;
  }

  else
  {
    v42 = 1;
  }

  if (!v42)
  {
    v43 = *(a1 + 8);
    if (v43)
    {
      v44 = (v43 & 0xFFFFFFFFFFFFFFFCLL) + 8;
    }

    else
    {
      v44 = sub_11F1920((a1 + 8));
      v7 = *v48;
    }

    v16 = sub_1952690(v8, v44, v7, a3);
    goto LABEL_70;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_81:
  *v48 = 0;
LABEL_2:
  *(a1 + 16) |= v5;
  return *v48;
}

char *sub_12CAEB0(uint64_t a1, char *__dst, unint64_t *a3)
{
  v5 = *(a1 + 16);
  if ((v5 & 4) != 0)
  {
    if (*a3 <= __dst)
    {
      __dst = sub_225EB68(a3, __dst);
    }

    v7 = *(a1 + 112);
    *__dst = 8;
    __dst[1] = v7;
    if (v7 > 0x7F)
    {
      __dst[1] = v7 | 0x80;
      v8 = v7 >> 7;
      __dst[2] = v7 >> 7;
      v6 = __dst + 3;
      if (v7 >= 0x4000)
      {
        LOBYTE(v9) = __dst[2];
        do
        {
          *(v6 - 1) = v9 | 0x80;
          v9 = v8 >> 7;
          *v6++ = v8 >> 7;
          v10 = v8 >> 14;
          v8 >>= 7;
        }

        while (v10);
      }
    }

    else
    {
      v6 = __dst + 2;
    }
  }

  else
  {
    v6 = __dst;
  }

  if ((v5 & 2) != 0)
  {
    if (*a3 <= v6)
    {
      v6 = sub_225EB68(a3, v6);
    }

    v12 = *(a1 + 104);
    *v6 = 16;
    v6[1] = v12;
    if (v12 > 0x7F)
    {
      v6[1] = v12 | 0x80;
      v13 = v12 >> 7;
      v6[2] = v12 >> 7;
      v11 = v6 + 3;
      if (v12 >= 0x4000)
      {
        LOBYTE(v6) = v6[2];
        do
        {
          *(v11 - 1) = v6 | 0x80;
          v6 = (v13 >> 7);
          *v11++ = v13 >> 7;
          v14 = v13 >> 14;
          v13 >>= 7;
        }

        while (v14);
      }
    }

    else
    {
      v11 = v6 + 2;
    }
  }

  else
  {
    v11 = v6;
  }

  if (v5)
  {
    v11 = sub_128AEEC(a3, 3, (*(a1 + 96) & 0xFFFFFFFFFFFFFFFELL), v11);
  }

  v15 = *(a1 + 32);
  if (v15)
  {
    for (i = 0; i != v15; ++i)
    {
      if (*a3 <= v11)
      {
        v11 = sub_225EB68(a3, v11);
      }

      v17 = *(*(a1 + 40) + 8 * i + 8);
      *v11 = 34;
      v18 = *(v17 + 20);
      v11[1] = v18;
      if (v18 > 0x7F)
      {
        v19 = sub_19575D0(v18, v11 + 1);
      }

      else
      {
        v19 = v11 + 2;
      }

      v11 = sub_12C9068(v17, v19, a3);
    }
  }

  v20 = *(a1 + 56);
  if (v20)
  {
    for (j = 0; j != v20; ++j)
    {
      if (*a3 <= v11)
      {
        v11 = sub_225EB68(a3, v11);
      }

      v22 = *(*(a1 + 64) + 8 * j + 8);
      *v11 = 42;
      v23 = *(v22 + 20);
      v11[1] = v23;
      if (v23 > 0x7F)
      {
        v24 = sub_19575D0(v23, v11 + 1);
      }

      else
      {
        v24 = v11 + 2;
      }

      v11 = sub_12C9B70(v22, v24, a3);
    }
  }

  v25 = *(a1 + 80);
  if (v25)
  {
    for (k = 0; k != v25; ++k)
    {
      if (*a3 <= v11)
      {
        v11 = sub_225EB68(a3, v11);
      }

      v27 = *(*(a1 + 88) + 8 * k + 8);
      *v11 = 50;
      v28 = *(v27 + 20);
      v11[1] = v28;
      if (v28 > 0x7F)
      {
        v29 = sub_19575D0(v28, v11 + 1);
      }

      else
      {
        v29 = v11 + 2;
      }

      v11 = sub_12CA584(v27, v29, a3);
    }
  }

  v30 = *(a1 + 8);
  if ((v30 & 1) == 0)
  {
    return v11;
  }

  v32 = v30 & 0xFFFFFFFFFFFFFFFCLL;
  v33 = *(v32 + 31);
  if (v33 < 0)
  {
    v34 = *(v32 + 8);
    v33 = *(v32 + 16);
  }

  else
  {
    v34 = (v32 + 8);
  }

  if ((*a3 - v11) >= v33)
  {
    v35 = v33;
    memcpy(v11, v34, v33);
    v11 += v35;
    return v11;
  }

  return sub_1957130(a3, v34, v33, v11);
}

uint64_t sub_12CB224(uint64_t a1)
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
      v7 = sub_12C93F8(v6);
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
      v14 = sub_12C9FC0(v13);
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
      v21 = sub_12CA768(v20);
      v16 += v21 + ((9 * (__clz(v21 | 1) ^ 0x1F) + 73) >> 6);
      v19 -= 8;
    }

    while (v19);
  }

  v22 = *(a1 + 16);
  if ((v22 & 7) != 0)
  {
    if (v22)
    {
      v28 = *(a1 + 96) & 0xFFFFFFFFFFFFFFFELL;
      v29 = *(v28 + 23);
      v30 = *(v28 + 8);
      if ((v29 & 0x80u) == 0)
      {
        v30 = v29;
      }

      v16 += v30 + ((9 * (__clz(v30 | 1) ^ 0x1F) + 73) >> 6) + 1;
      if ((v22 & 2) == 0)
      {
LABEL_24:
        if ((v22 & 4) == 0)
        {
          goto LABEL_29;
        }

LABEL_25:
        v23 = *(a1 + 112);
        v24 = ((9 * (__clz(v23 | 1) ^ 0x1F) + 73) >> 6) + 1;
        if (v23 >= 0)
        {
          v25 = v24;
        }

        else
        {
          v25 = 11;
        }

        v16 += v25;
        goto LABEL_29;
      }
    }

    else if ((v22 & 2) == 0)
    {
      goto LABEL_24;
    }

    v16 += ((9 * (__clz(*(a1 + 104) | 1) ^ 0x3F) + 73) >> 6) + 1;
    if ((v22 & 4) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_25;
  }

LABEL_29:
  v26 = *(a1 + 8);
  if (v26)
  {
    v31 = v26 & 0xFFFFFFFFFFFFFFFCLL;
    v32 = *((v26 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v32 < 0)
    {
      v32 = *(v31 + 16);
    }

    v16 += v32;
  }

  *(a1 + 20) = v16;
  return v16;
}

void sub_12CB420(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  if (v4)
  {
    v5 = *(a2 + 40);
    v6 = sub_19592E8(a1 + 24, *(a2 + 32));
    sub_12E751C((a1 + 24), v6, (v5 + 8), v4, **(a1 + 40) - *(a1 + 32));
    v7 = *(a1 + 32) + v4;
    *(a1 + 32) = v7;
    v8 = *(a1 + 40);
    if (*v8 < v7)
    {
      *v8 = v7;
    }
  }

  v9 = *(a2 + 56);
  if (v9)
  {
    v10 = *(a2 + 64);
    v11 = sub_19592E8(a1 + 48, *(a2 + 56));
    sub_12E75A8((a1 + 48), v11, (v10 + 8), v9, **(a1 + 64) - *(a1 + 56));
    v12 = *(a1 + 56) + v9;
    *(a1 + 56) = v12;
    v13 = *(a1 + 64);
    if (*v13 < v12)
    {
      *v13 = v12;
    }
  }

  v14 = *(a2 + 80);
  if (v14)
  {
    v15 = *(a2 + 88);
    v16 = sub_19592E8(a1 + 72, *(a2 + 80));
    sub_12E7634((a1 + 72), v16, (v15 + 8), v14, **(a1 + 88) - *(a1 + 80));
    v17 = *(a1 + 80) + v14;
    *(a1 + 80) = v17;
    v18 = *(a1 + 88);
    if (*v18 < v17)
    {
      *v18 = v17;
    }
  }

  v19 = *(a2 + 16);
  if ((v19 & 7) != 0)
  {
    if (v19)
    {
      v21 = *(a2 + 96);
      *(a1 + 16) |= 1u;
      v22 = *(a1 + 8);
      v23 = (v22 & 0xFFFFFFFFFFFFFFFCLL);
      if (v22)
      {
        v23 = *v23;
      }

      sub_194EA1C((a1 + 96), (v21 & 0xFFFFFFFFFFFFFFFELL), v23);
      if ((v19 & 2) == 0)
      {
LABEL_13:
        if ((v19 & 4) == 0)
        {
LABEL_15:
          *(a1 + 16) |= v19;
          goto LABEL_16;
        }

LABEL_14:
        *(a1 + 112) = *(a2 + 112);
        goto LABEL_15;
      }
    }

    else if ((v19 & 2) == 0)
    {
      goto LABEL_13;
    }

    *(a1 + 104) = *(a2 + 104);
    if ((v19 & 4) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

LABEL_16:
  v20 = *(a2 + 8);
  if (v20)
  {

    sub_1957EF4((a1 + 8), (v20 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

uint64_t sub_12CB61C(uint64_t a1)
{
  v3 = (a1 + 8);
  v2 = *(a1 + 8);
  v4 = (v2 & 0xFFFFFFFFFFFFFFFCLL);
  if (v2)
  {
    if (*v4)
    {
      goto LABEL_10;
    }
  }

  else if (v4)
  {
    goto LABEL_10;
  }

  if (a1 != &off_2769BD8)
  {
    v5 = *(a1 + 24);
    if (v5)
    {
      sub_12C7104(v5);
      operator delete();
    }

    v6 = *(a1 + 32);
    if (v6)
    {
      sub_12CA888(v6);
      operator delete();
    }
  }

  if (*v3)
  {
    sub_11F19CC(v3);
  }

LABEL_10:
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_12CB6EC(uint64_t a1)
{
  sub_12CB61C(a1);

  operator delete();
}

uint64_t sub_12CB724(uint64_t result)
{
  v1 = result;
  v2 = *(result + 16);
  if ((v2 & 3) != 0)
  {
    if (v2)
    {
      result = sub_12C7220(*(result + 24));
    }

    if ((v2 & 2) != 0)
    {
      result = sub_12CA984(*(v1 + 32));
    }
  }

  v4 = *(v1 + 8);
  v3 = v1 + 8;
  *(v3 + 8) = 0;
  if (v4)
  {

    return sub_1957EA8(v3);
  }

  return result;
}

char *sub_12CB794(uint64_t a1, char *a2, int32x2_t *a3)
{
  v22 = a2;
  for (i = a3[11].u32[1]; (sub_195ADC0(a3, &v22, i) & 1) == 0; i = a3[11].u32[1])
  {
    v6 = v22 + 1;
    v7 = *v22;
    if (*v22 < 0)
    {
      v8 = v7 + (*v6 << 7);
      v7 = v8 - 128;
      if (*v6 < 0)
      {
        v6 = sub_1958824(v22, v8 - 128);
        v7 = v9;
      }

      else
      {
        v6 = v22 + 2;
      }
    }

    v22 = v6;
    if (v7 >> 3 == 2)
    {
      if (v7 == 18)
      {
        *(a1 + 16) |= 2u;
        v15 = *(a1 + 32);
        if (!v15)
        {
          v16 = *(a1 + 8);
          v17 = (v16 & 0xFFFFFFFFFFFFFFFCLL);
          if (v16)
          {
            v17 = *v17;
          }

          v15 = sub_12D137C(v17);
          *(a1 + 32) = v15;
          v6 = v22;
        }

        v14 = sub_21F7608(a3, v15, v6);
        goto LABEL_30;
      }
    }

    else if (v7 >> 3 == 1 && v7 == 10)
    {
      *(a1 + 16) |= 1u;
      v18 = *(a1 + 24);
      if (!v18)
      {
        v19 = *(a1 + 8);
        v20 = (v19 & 0xFFFFFFFFFFFFFFFCLL);
        if (v19)
        {
          v20 = *v20;
        }

        v18 = sub_12D1094(v20);
        *(a1 + 24) = v18;
        v6 = v22;
      }

      v14 = sub_21F7578(a3, v18, v6);
      goto LABEL_30;
    }

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
      if (v6)
      {
        a3[10].i32[0] = v7 - 1;
        return v22;
      }

      return 0;
    }

    v12 = *(a1 + 8);
    if (v12)
    {
      v13 = (v12 & 0xFFFFFFFFFFFFFFFCLL) + 8;
    }

    else
    {
      v13 = sub_11F1920((a1 + 8));
      v6 = v22;
    }

    v14 = sub_1952690(v7, v13, v6, a3);
LABEL_30:
    v22 = v14;
    if (!v14)
    {
      return 0;
    }
  }

  return v22;
}

char *sub_12CB93C(uint64_t a1, char *__dst, unint64_t *a3)
{
  v4 = __dst;
  v6 = *(a1 + 16);
  if (v6)
  {
    if (*a3 <= __dst)
    {
      v4 = sub_225EB68(a3, __dst);
    }

    v7 = *(a1 + 24);
    *v4 = 10;
    v8 = *(v7 + 20);
    v4[1] = v8;
    if (v8 > 0x7F)
    {
      v9 = sub_19575D0(v8, v4 + 1);
    }

    else
    {
      v9 = v4 + 2;
    }

    v4 = sub_12C7948(v7, v9, a3);
  }

  if ((v6 & 2) != 0)
  {
    if (*a3 <= v4)
    {
      v4 = sub_225EB68(a3, v4);
    }

    v10 = *(a1 + 32);
    *v4 = 18;
    v11 = *(v10 + 20);
    v4[1] = v11;
    if (v11 > 0x7F)
    {
      v12 = sub_19575D0(v11, v4 + 1);
    }

    else
    {
      v12 = v4 + 2;
    }

    v4 = sub_12CAEB0(v10, v12, a3);
  }

  v13 = *(a1 + 8);
  if ((v13 & 1) == 0)
  {
    return v4;
  }

  v15 = v13 & 0xFFFFFFFFFFFFFFFCLL;
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

  if ((*a3 - v4) >= v16)
  {
    v18 = v16;
    memcpy(v4, v17, v16);
    v4 += v18;
    return v4;
  }

  return sub_1957130(a3, v17, v16, v4);
}

uint64_t sub_12CBAB8(uint64_t a1)
{
  v2 = *(a1 + 16);
  if ((v2 & 3) == 0)
  {
    v3 = 0;
    goto LABEL_8;
  }

  if (v2)
  {
    v4 = sub_12C7DBC(*(a1 + 24));
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
    v5 = sub_12CB224(*(a1 + 32));
    v3 += v5 + ((9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_8:
  v6 = *(a1 + 8);
  if (v6)
  {
    v8 = v6 & 0xFFFFFFFFFFFFFFFCLL;
    v9 = *((v6 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v9 < 0)
    {
      v9 = *(v8 + 16);
    }

    v3 += v9;
  }

  *(a1 + 20) = v3;
  return v3;
}

void sub_12CBB88(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  if ((v4 & 3) != 0)
  {
    if (v4)
    {
      *(a1 + 16) |= 1u;
      v5 = *(a1 + 24);
      if (!v5)
      {
        v6 = *(a1 + 8);
        v7 = (v6 & 0xFFFFFFFFFFFFFFFCLL);
        if (v6)
        {
          v7 = *v7;
        }

        v5 = sub_12D1094(v7);
        *(a1 + 24) = v5;
      }

      if (*(a2 + 24))
      {
        v8 = *(a2 + 24);
      }

      else
      {
        v8 = &off_2769AE8;
      }

      sub_12C8080(v5, v8);
    }

    if ((v4 & 2) != 0)
    {
      *(a1 + 16) |= 2u;
      v9 = *(a1 + 32);
      if (!v9)
      {
        v10 = *(a1 + 8);
        v11 = (v10 & 0xFFFFFFFFFFFFFFFCLL);
        if (v10)
        {
          v11 = *v11;
        }

        v9 = sub_12D137C(v11);
        *(a1 + 32) = v9;
      }

      if (*(a2 + 32))
      {
        v12 = *(a2 + 32);
      }

      else
      {
        v12 = &off_2769B60;
      }

      sub_12CB420(v9, v12);
    }
  }

  v13 = *(a2 + 8);
  if (v13)
  {

    sub_1957EF4((a1 + 8), (v13 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

BOOL sub_12CBC8C(uint64_t a1)
{
  if ((*(a1 + 16) & 1) == 0)
  {
    return 1;
  }

  v2 = *(a1 + 24);
  v3 = *(v2 + 32);
  do
  {
    v1 = v3 < 1;
    if (v3 < 1)
    {
      break;
    }

    v4 = v3 - 1;
    v5 = sub_12C6BB4(*(*(v2 + 40) + 8 * v3));
    v3 = v4;
  }

  while ((v5 & 1) != 0);
  return v1;
}

double sub_12CBD00(void *a1, uint64_t a2, int a3)
{
  v3 = a2 | 2;
  if (!a3)
  {
    v3 = a2;
  }

  *a1 = off_26D0520;
  a1[1] = v3;
  a1[2] = 0;
  a1[3] = &qword_278E990;
  a1[4] = &qword_278E990;
  *&result = 0x100000000;
  a1[5] = 0x100000000;
  return result;
}

uint64_t sub_12CBD48(uint64_t a1)
{
  v3 = (a1 + 8);
  v2 = *(a1 + 8);
  v4 = (v2 & 0xFFFFFFFFFFFFFFFCLL);
  if (v2)
  {
    if (*v4)
    {
      goto LABEL_9;
    }
  }

  else if (v4)
  {
    goto LABEL_9;
  }

  v5 = (a1 + 24);
  if (*(a1 + 24) != &qword_278E990)
  {
    sub_194E89C(v5);
  }

  if (*(a1 + 32) != &qword_278E990)
  {
    sub_194E89C((a1 + 32));
  }

  if (*v3)
  {
    sub_11F19CC(v3);
  }

LABEL_9:
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_12CBE00(uint64_t a1)
{
  sub_12CBD48(a1);

  operator delete();
}

uint64_t sub_12CBE38(uint64_t a1)
{
  v1 = *(a1 + 16);
  if ((v1 & 3) != 0)
  {
    if (v1)
    {
      v2 = *(a1 + 24) & 0xFFFFFFFFFFFFFFFELL;
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
    v3 = *(a1 + 32) & 0xFFFFFFFFFFFFFFFELL;
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
  if ((v1 & 0xC) != 0)
  {
    *(a1 + 40) = 0x100000000;
  }

  v5 = *(a1 + 8);
  result = a1 + 8;
  *(result + 8) = 0;
  if (v5)
  {
    return sub_1957EA8(result);
  }

  return result;
}

uint64_t sub_12CBEC8(uint64_t a1, uint64_t a2, int32x2_t *a3)
{
  *v30 = a2;
  v5 = 0;
  if (sub_195ADC0(a3, v30, a3[11].u32[1]))
  {
    goto LABEL_2;
  }

  while (1)
  {
    v7 = (*v30 + 1);
    v8 = **v30;
    if (**v30 < 0)
    {
      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if (*v7 < 0)
      {
        v7 = sub_1958824(*v30, v9 - 128);
        v8 = v10;
      }

      else
      {
        v7 = (*v30 + 2);
      }
    }

    *v30 = v7;
    v11 = v8 >> 3;
    if (v8 >> 3 <= 2)
    {
      if (v11 != 1)
      {
        if (v11 == 2 && v8 == 18)
        {
          *(a1 + 16) |= 1u;
          v13 = *(a1 + 8);
          v14 = (v13 & 0xFFFFFFFFFFFFFFFCLL);
          if (v13)
          {
            v14 = *v14;
          }

          v15 = (a1 + 24);
          goto LABEL_23;
        }

        goto LABEL_36;
      }

      if (v8 != 8)
      {
        goto LABEL_36;
      }

      v20 = v7 + 1;
      v19 = *v7;
      if (v19 < 0)
      {
        v21 = *v20;
        v19 = (v21 << 7) + v19 - 128;
        if (v21 < 0)
        {
          *v30 = sub_19587DC(v7, v19);
          if (!*v30)
          {
            goto LABEL_54;
          }

          goto LABEL_29;
        }

        v20 = v7 + 2;
      }

      *v30 = v20;
LABEL_29:
      if ((v19 - 1) > 3)
      {
        sub_12E8450();
      }

      else
      {
        *(a1 + 16) |= 8u;
        *(a1 + 44) = v19;
      }

      goto LABEL_44;
    }

    if (v11 != 3)
    {
      break;
    }

    if (v8 != 24)
    {
      goto LABEL_36;
    }

    v5 |= 4u;
    v22 = v7 + 1;
    v23 = *v7;
    if ((*v7 & 0x80000000) == 0)
    {
      goto LABEL_35;
    }

    v24 = *v22;
    v23 = v23 + (v24 << 7) - 128;
    if ((v24 & 0x80000000) == 0)
    {
      v22 = v7 + 2;
LABEL_35:
      *v30 = v22;
      *(a1 + 40) = v23;
      goto LABEL_44;
    }

    v28 = sub_1958770(v7, v23);
    *v30 = v28;
    *(a1 + 40) = v29;
    if (!v28)
    {
      goto LABEL_54;
    }

LABEL_44:
    if (sub_195ADC0(a3, v30, a3[11].u32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v11 == 4 && v8 == 34)
  {
    *(a1 + 16) |= 2u;
    v16 = *(a1 + 8);
    v14 = (v16 & 0xFFFFFFFFFFFFFFFCLL);
    if (v16)
    {
      v14 = *v14;
    }

    v15 = (a1 + 32);
LABEL_23:
    v17 = sub_194DB04(v15, v14);
    v18 = sub_1958890(v17, *v30, a3);
LABEL_43:
    *v30 = v18;
    if (!v18)
    {
      goto LABEL_54;
    }

    goto LABEL_44;
  }

LABEL_36:
  if (v8)
  {
    v25 = (v8 & 7) == 4;
  }

  else
  {
    v25 = 1;
  }

  if (!v25)
  {
    v26 = *(a1 + 8);
    if (v26)
    {
      v27 = (v26 & 0xFFFFFFFFFFFFFFFCLL) + 8;
    }

    else
    {
      v27 = sub_11F1920((a1 + 8));
      v7 = *v30;
    }

    v18 = sub_1952690(v8, v27, v7, a3);
    goto LABEL_43;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_54:
  *v30 = 0;
LABEL_2:
  *(a1 + 16) |= v5;
  return *v30;
}

char *sub_12CC158(uint64_t a1, char *__dst, unint64_t *a3)
{
  v5 = *(a1 + 16);
  if ((v5 & 8) != 0)
  {
    if (*a3 <= __dst)
    {
      __dst = sub_225EB68(a3, __dst);
    }

    v7 = *(a1 + 44);
    *__dst = 8;
    __dst[1] = v7;
    if (v7 > 0x7F)
    {
      __dst[1] = v7 | 0x80;
      v8 = v7 >> 7;
      __dst[2] = v7 >> 7;
      v6 = __dst + 3;
      if (v7 >= 0x4000)
      {
        LOBYTE(v9) = __dst[2];
        do
        {
          *(v6 - 1) = v9 | 0x80;
          v9 = v8 >> 7;
          *v6++ = v8 >> 7;
          v10 = v8 >> 14;
          v8 >>= 7;
        }

        while (v10);
      }
    }

    else
    {
      v6 = __dst + 2;
    }
  }

  else
  {
    v6 = __dst;
  }

  if (v5)
  {
    v6 = sub_128AEEC(a3, 2, (*(a1 + 24) & 0xFFFFFFFFFFFFFFFELL), v6);
  }

  if ((v5 & 4) != 0)
  {
    if (*a3 <= v6)
    {
      v6 = sub_225EB68(a3, v6);
    }

    v12 = *(a1 + 40);
    *v6 = 24;
    v6[1] = v12;
    if (v12 > 0x7F)
    {
      v6[1] = v12 | 0x80;
      v13 = v12 >> 7;
      v6[2] = v12 >> 7;
      v11 = v6 + 3;
      if (v12 >= 0x4000)
      {
        LOBYTE(v14) = v6[2];
        do
        {
          *(v11 - 1) = v14 | 0x80;
          v14 = v13 >> 7;
          *v11++ = v13 >> 7;
          v15 = v13 >> 14;
          v13 >>= 7;
        }

        while (v15);
      }
    }

    else
    {
      v11 = v6 + 2;
    }
  }

  else
  {
    v11 = v6;
  }

  if ((v5 & 2) != 0)
  {
    v11 = sub_128AEEC(a3, 4, (*(a1 + 32) & 0xFFFFFFFFFFFFFFFELL), v11);
  }

  v16 = *(a1 + 8);
  if ((v16 & 1) == 0)
  {
    return v11;
  }

  v18 = v16 & 0xFFFFFFFFFFFFFFFCLL;
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

  if ((*a3 - v11) >= v19)
  {
    v21 = v19;
    memcpy(v11, v20, v19);
    v11 += v21;
    return v11;
  }

  return sub_1957130(a3, v20, v19, v11);
}

uint64_t sub_12CC344(uint64_t a1)
{
  v1 = *(a1 + 16);
  if ((v1 & 0xF) == 0)
  {
    v2 = 0;
    goto LABEL_20;
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
  if ((v1 & 4) != 0)
  {
    v2 += ((9 * (__clz(*(a1 + 40) | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v1 & 8) == 0)
    {
      goto LABEL_20;
    }
  }

  else if ((v1 & 8) == 0)
  {
    goto LABEL_20;
  }

  v9 = *(a1 + 44);
  if (v9 < 0)
  {
    v10 = 11;
  }

  else
  {
    v10 = ((9 * (__clz(v9 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  v2 += v10;
LABEL_20:
  v11 = *(a1 + 8);
  if (v11)
  {
    v13 = v11 & 0xFFFFFFFFFFFFFFFCLL;
    v14 = *((v11 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v14 < 0)
    {
      v14 = *(v13 + 16);
    }

    v2 += v14;
  }

  *(a1 + 20) = v2;
  return v2;
}

void sub_12CC47C(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  if ((v4 & 0xF) != 0)
  {
    if (v4)
    {
      v6 = *(a2 + 24);
      *(a1 + 16) |= 1u;
      v7 = *(a1 + 8);
      v8 = (v7 & 0xFFFFFFFFFFFFFFFCLL);
      if (v7)
      {
        v8 = *v8;
      }

      sub_194EA1C((a1 + 24), (v6 & 0xFFFFFFFFFFFFFFFELL), v8);
      if ((v4 & 2) == 0)
      {
LABEL_4:
        if ((v4 & 4) == 0)
        {
          goto LABEL_5;
        }

        goto LABEL_18;
      }
    }

    else if ((v4 & 2) == 0)
    {
      goto LABEL_4;
    }

    v9 = *(a2 + 32);
    *(a1 + 16) |= 2u;
    v10 = *(a1 + 8);
    v11 = (v10 & 0xFFFFFFFFFFFFFFFCLL);
    if (v10)
    {
      v11 = *v11;
    }

    sub_194EA1C((a1 + 32), (v9 & 0xFFFFFFFFFFFFFFFELL), v11);
    if ((v4 & 4) == 0)
    {
LABEL_5:
      if ((v4 & 8) == 0)
      {
LABEL_7:
        *(a1 + 16) |= v4;
        goto LABEL_8;
      }

LABEL_6:
      *(a1 + 44) = *(a2 + 44);
      goto LABEL_7;
    }

LABEL_18:
    *(a1 + 40) = *(a2 + 40);
    if ((v4 & 8) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

LABEL_8:
  v5 = *(a2 + 8);
  if (v5)
  {

    sub_1957EF4((a1 + 8), (v5 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

void sub_12CC584(uint64_t a1, uint64_t a2)
{
  if (a2 != a1)
  {
    sub_12CBE38(a1);

    sub_12CC47C(a1, a2);
  }
}

uint64_t sub_12CC5D8(uint64_t result, uint64_t a2)
{
  v2 = *(result + 8);
  *(result + 8) = *(a2 + 8);
  *(a2 + 8) = v2;
  LODWORD(v2) = *(result + 16);
  *(result + 16) = *(a2 + 16);
  *(a2 + 16) = v2;
  v3 = *(a2 + 24);
  *(a2 + 24) = *(result + 24);
  *(result + 24) = v3;
  v4 = *(a2 + 32);
  *(a2 + 32) = *(result + 32);
  *(result + 32) = v4;
  LODWORD(v4) = *(result + 40);
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = v4;
  LODWORD(v4) = *(result + 44);
  *(result + 44) = *(a2 + 44);
  *(a2 + 44) = v4;
  return result;
}

double sub_12CC64C(uint64_t a1, uint64_t a2, int a3)
{
  v3 = a2 | 2;
  if (!a3)
  {
    v3 = a2;
  }

  *a1 = off_26D05A0;
  *(a1 + 8) = v3;
  *(a1 + 16) = 0;
  *(a1 + 24) = &qword_278E990;
  *(a1 + 32) = &qword_278E990;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *&result = 0x100000001;
  *(a1 + 60) = 0x100000001;
  return result;
}

uint64_t sub_12CC698(uint64_t a1)
{
  v3 = (a1 + 8);
  v2 = *(a1 + 8);
  v4 = (v2 & 0xFFFFFFFFFFFFFFFCLL);
  if (v2)
  {
    if (*v4)
    {
      goto LABEL_9;
    }
  }

  else if (v4)
  {
    goto LABEL_9;
  }

  v5 = (a1 + 24);
  if (*(a1 + 24) != &qword_278E990)
  {
    sub_194E89C(v5);
  }

  if (*(a1 + 32) != &qword_278E990)
  {
    sub_194E89C((a1 + 32));
  }

  if (*v3)
  {
    sub_11F19CC(v3);
  }

LABEL_9:
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_12CC750(uint64_t a1)
{
  sub_12CC698(a1);

  operator delete();
}

uint64_t sub_12CC788(uint64_t a1)
{
  v1 = *(a1 + 16);
  if ((v1 & 3) != 0)
  {
    if (v1)
    {
      v2 = *(a1 + 24) & 0xFFFFFFFFFFFFFFFELL;
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
    v3 = *(a1 + 32) & 0xFFFFFFFFFFFFFFFELL;
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
  if ((v1 & 0xFC) != 0)
  {
    *(a1 + 56) = 0;
    *(a1 + 40) = 0u;
    *(a1 + 60) = 0x100000001;
  }

  v5 = *(a1 + 8);
  result = a1 + 8;
  *(result + 8) = 0;
  if (v5)
  {
    return sub_1957EA8(result);
  }

  return result;
}

uint64_t sub_12CC824(uint64_t a1, uint64_t a2, int32x2_t *a3)
{
  *v41 = a2;
  v5 = 0;
  if (sub_195ADC0(a3, v41, a3[11].u32[1]))
  {
    goto LABEL_2;
  }

  while (1)
  {
    v7 = (*v41 + 1);
    v8 = **v41;
    if (**v41 < 0)
    {
      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if (*v7 < 0)
      {
        v7 = sub_1958824(*v41, v9 - 128);
        v8 = v10;
      }

      else
      {
        v7 = (*v41 + 2);
      }
    }

    *v41 = v7;
    v11 = v8 >> 3;
    if (v8 >> 3 > 4)
    {
      break;
    }

    if (v8 >> 3 <= 2)
    {
      if (v11 != 1)
      {
        if (v11 != 2 || v8 != 18)
        {
          goto LABEL_63;
        }

        *(a1 + 16) |= 1u;
        v13 = *(a1 + 8);
        v14 = (v13 & 0xFFFFFFFFFFFFFFFCLL);
        if (v13)
        {
          v14 = *v14;
        }

        v15 = (a1 + 24);
        goto LABEL_29;
      }

      if (v8 != 8)
      {
        goto LABEL_63;
      }

      v23 = v7 + 1;
      v22 = *v7;
      if (v22 < 0)
      {
        v24 = *v23;
        v22 = (v24 << 7) + v22 - 128;
        if (v24 < 0)
        {
          *v41 = sub_19587DC(v7, v22);
          if (!*v41)
          {
            goto LABEL_89;
          }

          goto LABEL_44;
        }

        v23 = v7 + 2;
      }

      *v41 = v23;
LABEL_44:
      if ((v22 - 1) > 3)
      {
        sub_12E8450();
      }

      else
      {
        *(a1 + 16) |= 0x40u;
        *(a1 + 60) = v22;
      }

      goto LABEL_71;
    }

    if (v11 != 3)
    {
      if (v11 != 4 || v8 != 34)
      {
        goto LABEL_63;
      }

      *(a1 + 16) |= 2u;
      v16 = *(a1 + 8);
      v14 = (v16 & 0xFFFFFFFFFFFFFFFCLL);
      if (v16)
      {
        v14 = *v14;
      }

      v15 = (a1 + 32);
LABEL_29:
      v17 = sub_194DB04(v15, v14);
      v18 = sub_1958890(v17, *v41, a3);
      goto LABEL_70;
    }

    if (v8 != 24)
    {
      goto LABEL_63;
    }

    v5 |= 4u;
    v28 = v7 + 1;
    v29 = *v7;
    if ((*v7 & 0x80000000) == 0)
    {
      goto LABEL_57;
    }

    v30 = *v28;
    v29 = v29 + (v30 << 7) - 128;
    if ((v30 & 0x80000000) == 0)
    {
      v28 = v7 + 2;
LABEL_57:
      *v41 = v28;
      *(a1 + 40) = v29;
      goto LABEL_71;
    }

    v37 = sub_1958770(v7, v29);
    *v41 = v37;
    *(a1 + 40) = v38;
    if (!v37)
    {
      goto LABEL_89;
    }

LABEL_71:
    if (sub_195ADC0(a3, v41, a3[11].u32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v8 >> 3 <= 6)
  {
    if (v11 != 5)
    {
      if (v11 == 6 && v8 == 49)
      {
        v5 |= 0x10u;
        *(a1 + 48) = *v7;
        *v41 = v7 + 8;
        goto LABEL_71;
      }

      goto LABEL_63;
    }

    if (v8 != 40)
    {
      goto LABEL_63;
    }

    v26 = v7 + 1;
    v25 = *v7;
    if (v25 < 0)
    {
      v27 = *v26;
      v25 = (v27 << 7) + v25 - 128;
      if (v27 < 0)
      {
        *v41 = sub_19587DC(v7, v25);
        if (!*v41)
        {
          goto LABEL_89;
        }

        goto LABEL_51;
      }

      v26 = v7 + 2;
    }

    *v41 = v26;
LABEL_51:
    if ((v25 - 1) > 0xB)
    {
      sub_12E85B8();
    }

    else
    {
      *(a1 + 16) |= 0x80u;
      *(a1 + 64) = v25;
    }

    goto LABEL_71;
  }

  if (v11 == 7)
  {
    if (v8 != 56)
    {
      goto LABEL_63;
    }

    v5 |= 8u;
    v31 = v7 + 1;
    v32 = *v7;
    if ((*v7 & 0x80000000) == 0)
    {
      goto LABEL_62;
    }

    v33 = *v31;
    v32 = v32 + (v33 << 7) - 128;
    if ((v33 & 0x80000000) == 0)
    {
      v31 = v7 + 2;
LABEL_62:
      *v41 = v31;
      *(a1 + 44) = v32;
      goto LABEL_71;
    }

    v39 = sub_1958770(v7, v32);
    *v41 = v39;
    *(a1 + 44) = v40;
    if (!v39)
    {
      goto LABEL_89;
    }

    goto LABEL_71;
  }

  if (v11 == 8 && v8 == 64)
  {
    v20 = v7 + 1;
    v19 = *v7;
    if ((v19 & 0x8000000000000000) == 0)
    {
      goto LABEL_36;
    }

    v21 = *v20;
    v19 = (v21 << 7) + v19 - 128;
    if (v21 < 0)
    {
      *v41 = sub_19587DC(v7, v19);
      if (!*v41)
      {
        goto LABEL_89;
      }
    }

    else
    {
      v20 = v7 + 2;
LABEL_36:
      *v41 = v20;
    }

    if (v19 > 4)
    {
      sub_12E85F0();
    }

    else
    {
      *(a1 + 16) |= 0x20u;
      *(a1 + 56) = v19;
    }

    goto LABEL_71;
  }

LABEL_63:
  if (v8)
  {
    v34 = (v8 & 7) == 4;
  }

  else
  {
    v34 = 1;
  }

  if (!v34)
  {
    v35 = *(a1 + 8);
    if (v35)
    {
      v36 = (v35 & 0xFFFFFFFFFFFFFFFCLL) + 8;
    }

    else
    {
      v36 = sub_11F1920((a1 + 8));
      v7 = *v41;
    }

    v18 = sub_1952690(v8, v36, v7, a3);
LABEL_70:
    *v41 = v18;
    if (!v18)
    {
      goto LABEL_89;
    }

    goto LABEL_71;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_89:
  *v41 = 0;
LABEL_2:
  *(a1 + 16) |= v5;
  return *v41;
}

char *sub_12CCC4C(uint64_t a1, char *__dst, unint64_t *a3)
{
  v5 = *(a1 + 16);
  if ((v5 & 0x40) != 0)
  {
    if (*a3 <= __dst)
    {
      __dst = sub_225EB68(a3, __dst);
    }

    v7 = *(a1 + 60);
    *__dst = 8;
    __dst[1] = v7;
    if (v7 > 0x7F)
    {
      __dst[1] = v7 | 0x80;
      v8 = v7 >> 7;
      __dst[2] = v7 >> 7;
      v6 = __dst + 3;
      if (v7 >= 0x4000)
      {
        LOBYTE(v9) = __dst[2];
        do
        {
          *(v6 - 1) = v9 | 0x80;
          v9 = v8 >> 7;
          *v6++ = v8 >> 7;
          v10 = v8 >> 14;
          v8 >>= 7;
        }

        while (v10);
      }
    }

    else
    {
      v6 = __dst + 2;
    }
  }

  else
  {
    v6 = __dst;
  }

  if (v5)
  {
    v6 = sub_128AEEC(a3, 2, (*(a1 + 24) & 0xFFFFFFFFFFFFFFFELL), v6);
  }

  if ((v5 & 4) != 0)
  {
    if (*a3 <= v6)
    {
      v6 = sub_225EB68(a3, v6);
    }

    v12 = *(a1 + 40);
    *v6 = 24;
    v6[1] = v12;
    if (v12 > 0x7F)
    {
      v6[1] = v12 | 0x80;
      v13 = v12 >> 7;
      v6[2] = v12 >> 7;
      v11 = v6 + 3;
      if (v12 >= 0x4000)
      {
        LOBYTE(v6) = v6[2];
        do
        {
          *(v11 - 1) = v6 | 0x80;
          LODWORD(v6) = v13 >> 7;
          *v11++ = v13 >> 7;
          v14 = v13 >> 14;
          v13 >>= 7;
        }

        while (v14);
      }
    }

    else
    {
      v11 = v6 + 2;
    }
  }

  else
  {
    v11 = v6;
  }

  if ((v5 & 2) != 0)
  {
    v11 = sub_128AEEC(a3, 4, (*(a1 + 32) & 0xFFFFFFFFFFFFFFFELL), v11);
  }

  if ((v5 & 0x80) != 0)
  {
    if (*a3 <= v11)
    {
      v11 = sub_225EB68(a3, v11);
    }

    v16 = *(a1 + 64);
    *v11 = 40;
    v11[1] = v16;
    if (v16 > 0x7F)
    {
      v11[1] = v16 | 0x80;
      v17 = v16 >> 7;
      v11[2] = v16 >> 7;
      v15 = v11 + 3;
      if (v16 >= 0x4000)
      {
        LOBYTE(v18) = v11[2];
        do
        {
          *(v15 - 1) = v18 | 0x80;
          v18 = v17 >> 7;
          *v15++ = v17 >> 7;
          v19 = v17 >> 14;
          v17 >>= 7;
        }

        while (v19);
      }
    }

    else
    {
      v15 = v11 + 2;
    }
  }

  else
  {
    v15 = v11;
  }

  if ((v5 & 0x10) != 0)
  {
    if (*a3 <= v15)
    {
      v15 = sub_225EB68(a3, v15);
    }

    v20 = *(a1 + 48);
    *v15 = 49;
    *(v15 + 1) = v20;
    v15 += 9;
  }

  if ((v5 & 8) != 0)
  {
    if (*a3 <= v15)
    {
      v15 = sub_225EB68(a3, v15);
    }

    v22 = *(a1 + 44);
    *v15 = 56;
    v15[1] = v22;
    if (v22 > 0x7F)
    {
      v15[1] = v22 | 0x80;
      v23 = v22 >> 7;
      v15[2] = v22 >> 7;
      v21 = v15 + 3;
      if (v22 >= 0x4000)
      {
        LOBYTE(v24) = v15[2];
        do
        {
          *(v21 - 1) = v24 | 0x80;
          v24 = v23 >> 7;
          *v21++ = v23 >> 7;
          v25 = v23 >> 14;
          v23 >>= 7;
        }

        while (v25);
      }
    }

    else
    {
      v21 = v15 + 2;
    }
  }

  else
  {
    v21 = v15;
  }

  if ((v5 & 0x20) != 0)
  {
    if (*a3 <= v21)
    {
      v21 = sub_225EB68(a3, v21);
    }

    v27 = *(a1 + 56);
    *v21 = 64;
    v21[1] = v27;
    if (v27 > 0x7F)
    {
      v21[1] = v27 | 0x80;
      v28 = v27 >> 7;
      v21[2] = v27 >> 7;
      v26 = v21 + 3;
      if (v27 >= 0x4000)
      {
        LOBYTE(v21) = v21[2];
        do
        {
          *(v26 - 1) = v21 | 0x80;
          v21 = (v28 >> 7);
          *v26++ = v28 >> 7;
          v29 = v28 >> 14;
          v28 >>= 7;
        }

        while (v29);
      }
    }

    else
    {
      v26 = v21 + 2;
    }
  }

  else
  {
    v26 = v21;
  }

  v30 = *(a1 + 8);
  if ((v30 & 1) == 0)
  {
    return v26;
  }

  v32 = v30 & 0xFFFFFFFFFFFFFFFCLL;
  v33 = *(v32 + 31);
  if (v33 < 0)
  {
    v34 = *(v32 + 8);
    v33 = *(v32 + 16);
  }

  else
  {
    v34 = (v32 + 8);
  }

  if ((*a3 - v26) >= v33)
  {
    v35 = v33;
    memcpy(v26, v34, v33);
    v26 += v35;
    return v26;
  }

  return sub_1957130(a3, v34, v33, v26);
}

uint64_t sub_12CD000(uint64_t a1)
{
  if (!*(a1 + 16))
  {
    v1 = 0;
    goto LABEL_35;
  }

  if ((*(a1 + 16) & 1) == 0)
  {
    v1 = 0;
    if ((*(a1 + 16) & 2) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_9;
  }

  v2 = *(a1 + 24) & 0xFFFFFFFFFFFFFFFELL;
  v3 = *(v2 + 23);
  v4 = *(v2 + 8);
  if ((v3 & 0x80u) == 0)
  {
    v4 = v3;
  }

  v1 = v4 + ((9 * (__clz(v4 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((*(a1 + 16) & 2) != 0)
  {
LABEL_9:
    v5 = *(a1 + 32) & 0xFFFFFFFFFFFFFFFELL;
    v6 = *(v5 + 23);
    v7 = *(v5 + 8);
    if ((v6 & 0x80u) == 0)
    {
      v7 = v6;
    }

    v1 += v7 + ((9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_12:
  if ((*(a1 + 16) & 4) == 0)
  {
    if ((*(a1 + 16) & 8) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  v1 += ((9 * (__clz(*(a1 + 40) | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((*(a1 + 16) & 8) != 0)
  {
LABEL_14:
    v1 += ((9 * (__clz(*(a1 + 44) | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_15:
  if ((*(a1 + 16) & 0x10) != 0)
  {
    v1 += 9;
  }

  if ((*(a1 + 16) & 0x20) != 0)
  {
    v8 = *(a1 + 56);
    if (v8 < 0)
    {
      v9 = 11;
    }

    else
    {
      v9 = ((9 * (__clz(v8 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    v1 += v9;
    if ((*(a1 + 16) & 0x40) == 0)
    {
LABEL_19:
      if ((*(a1 + 16) & 0x80) == 0)
      {
        goto LABEL_35;
      }

      goto LABEL_31;
    }
  }

  else if ((*(a1 + 16) & 0x40) == 0)
  {
    goto LABEL_19;
  }

  v10 = *(a1 + 60);
  if (v10 < 0)
  {
    v11 = 11;
  }

  else
  {
    v11 = ((9 * (__clz(v10 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  v1 += v11;
  if ((*(a1 + 16) & 0x80) != 0)
  {
LABEL_31:
    v12 = *(a1 + 64);
    if (v12 < 0)
    {
      v13 = 11;
    }

    else
    {
      v13 = ((9 * (__clz(v12 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    v1 += v13;
  }

LABEL_35:
  v14 = *(a1 + 8);
  if (v14)
  {
    v16 = v14 & 0xFFFFFFFFFFFFFFFCLL;
    v17 = *((v14 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v17 < 0)
    {
      v17 = *(v16 + 16);
    }

    v1 += v17;
  }

  *(a1 + 20) = v1;
  return v1;
}

void sub_12CD1DC(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  if (v4)
  {
    if (v4)
    {
      v6 = *(a2 + 24);
      *(a1 + 16) |= 1u;
      v7 = *(a1 + 8);
      v8 = (v7 & 0xFFFFFFFFFFFFFFFCLL);
      if (v7)
      {
        v8 = *v8;
      }

      sub_194EA1C((a1 + 24), (v6 & 0xFFFFFFFFFFFFFFFELL), v8);
      if ((v4 & 2) == 0)
      {
LABEL_4:
        if ((v4 & 4) == 0)
        {
          goto LABEL_5;
        }

        goto LABEL_22;
      }
    }

    else if ((v4 & 2) == 0)
    {
      goto LABEL_4;
    }

    v9 = *(a2 + 32);
    *(a1 + 16) |= 2u;
    v10 = *(a1 + 8);
    v11 = (v10 & 0xFFFFFFFFFFFFFFFCLL);
    if (v10)
    {
      v11 = *v11;
    }

    sub_194EA1C((a1 + 32), (v9 & 0xFFFFFFFFFFFFFFFELL), v11);
    if ((v4 & 4) == 0)
    {
LABEL_5:
      if ((v4 & 8) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_23;
    }

LABEL_22:
    *(a1 + 40) = *(a2 + 40);
    if ((v4 & 8) == 0)
    {
LABEL_6:
      if ((v4 & 0x10) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_24;
    }

LABEL_23:
    *(a1 + 44) = *(a2 + 44);
    if ((v4 & 0x10) == 0)
    {
LABEL_7:
      if ((v4 & 0x20) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_25;
    }

LABEL_24:
    *(a1 + 48) = *(a2 + 48);
    if ((v4 & 0x20) == 0)
    {
LABEL_8:
      if ((v4 & 0x40) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_26;
    }

LABEL_25:
    *(a1 + 56) = *(a2 + 56);
    if ((v4 & 0x40) == 0)
    {
LABEL_9:
      if ((v4 & 0x80) == 0)
      {
LABEL_11:
        *(a1 + 16) |= v4;
        goto LABEL_12;
      }

LABEL_10:
      *(a1 + 64) = *(a2 + 64);
      goto LABEL_11;
    }

LABEL_26:
    *(a1 + 60) = *(a2 + 60);
    if ((v4 & 0x80) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

LABEL_12:
  v5 = *(a2 + 8);
  if (v5)
  {

    sub_1957EF4((a1 + 8), (v5 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

void sub_12CD324(uint64_t a1, uint64_t a2)
{
  if (a2 != a1)
  {
    sub_12CC788(a1);

    sub_12CD1DC(a1, a2);
  }
}

__n128 sub_12CD378(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *(a1 + 8) = *(a2 + 8);
  *(a2 + 8) = v2;
  LODWORD(v2) = *(a1 + 16);
  *(a1 + 16) = *(a2 + 16);
  *(a2 + 16) = v2;
  v3 = *(a2 + 24);
  *(a2 + 24) = *(a1 + 24);
  *(a1 + 24) = v3;
  v4 = *(a2 + 32);
  *(a2 + 32) = *(a1 + 32);
  *(a1 + 32) = v4;
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  result = *(a2 + 40);
  *(a1 + 40) = result;
  *(a2 + 40) = v5;
  *(a2 + 48) = v6;
  LODWORD(v5) = *(a1 + 56);
  *(a1 + 56) = *(a2 + 56);
  *(a2 + 56) = v5;
  LODWORD(v5) = *(a1 + 60);
  *(a1 + 60) = *(a2 + 60);
  *(a2 + 60) = v5;
  LODWORD(v5) = *(a1 + 64);
  *(a1 + 64) = *(a2 + 64);
  *(a2 + 64) = v5;
  return result;
}

uint64_t sub_12CD40C(uint64_t a1)
{
  v3 = (a1 + 8);
  v2 = *(a1 + 8);
  v4 = (v2 & 0xFFFFFFFFFFFFFFFCLL);
  if (v2)
  {
    if (*v4)
    {
      goto LABEL_7;
    }
  }

  else if (v4)
  {
    goto LABEL_7;
  }

  v5 = (a1 + 72);
  if (*(a1 + 72) != &qword_278E990)
  {
    sub_194E89C(v5);
  }

  if (v2)
  {
    sub_11F19CC(v3);
  }

LABEL_7:
  sub_12E6204((a1 + 48));
  sub_12E6204((a1 + 24));
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}