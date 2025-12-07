char *sub_1580D58(uint64_t a1, char *a2, unint64_t *a3)
{
  v4 = a2;
  v6 = *(a1 + 16);
  if (v6)
  {
    v4 = sub_128AEEC(a3, 1, (*(a1 + 256) & 0xFFFFFFFFFFFFFFFELL), a2);
  }

  v7 = *(a1 + 32);
  if (v7 >= 1)
  {
    v8 = 8;
    do
    {
      v9 = *(*(a1 + 40) + v8);
      v10 = *(v9 + 23);
      if (v10 < 0 && (v10 = v9[1], v10 > 127) || (*a3 - v4 + 14) < v10)
      {
        v4 = sub_1957480(a3, 2, v9, v4);
      }

      else
      {
        *v4 = 18;
        v4[1] = v10;
        if (*(v9 + 23) < 0)
        {
          v9 = *v9;
        }

        v11 = v4 + 2;
        memcpy(v4 + 2, v9, v10);
        v4 = &v11[v10];
      }

      v8 += 8;
      --v7;
    }

    while (v7);
  }

  if ((v6 & 2) != 0)
  {
    if (*a3 <= v4)
    {
      v4 = sub_225EB68(a3, v4);
    }

    v12 = *(a1 + 264);
    *v4 = 26;
    v13 = *(v12 + 20);
    v4[1] = v13;
    if (v13 > 0x7F)
    {
      v14 = sub_19575D0(v13, v4 + 1);
    }

    else
    {
      v14 = v4 + 2;
    }

    v4 = sub_15B1F3C(v12, v14, a3);
  }

  v15 = *(a1 + 56);
  if (v15 >= 1)
  {
    v16 = 8;
    do
    {
      v17 = *(*(a1 + 64) + v16);
      v18 = *(v17 + 23);
      if (v18 < 0 && (v18 = v17[1], v18 > 127) || (*a3 - v4 + 14) < v18)
      {
        v4 = sub_1957480(a3, 4, v17, v4);
      }

      else
      {
        *v4 = 34;
        v4[1] = v18;
        if (*(v17 + 23) < 0)
        {
          v17 = *v17;
        }

        v19 = v4 + 2;
        memcpy(v4 + 2, v17, v18);
        v4 = &v19[v18];
      }

      v16 += 8;
      --v15;
    }

    while (v15);
  }

  v20 = *(a1 + 80);
  if (v20)
  {
    for (i = 0; i != v20; ++i)
    {
      if (*a3 <= v4)
      {
        v4 = sub_225EB68(a3, v4);
      }

      v22 = *(*(a1 + 88) + 8 * i + 8);
      *v4 = 42;
      v23 = *(v22 + 20);
      v4[1] = v23;
      if (v23 > 0x7F)
      {
        v24 = sub_19575D0(v23, v4 + 1);
      }

      else
      {
        v24 = v4 + 2;
      }

      v4 = sub_157A5D0(v22, v24, a3);
    }
  }

  v25 = *(a1 + 104);
  if (v25 >= 1)
  {
    v26 = 8;
    do
    {
      v27 = *(*(a1 + 112) + v26);
      v28 = *(v27 + 23);
      if (v28 < 0 && (v28 = v27[1], v28 > 127) || (*a3 - v4 + 14) < v28)
      {
        v4 = sub_1957480(a3, 6, v27, v4);
      }

      else
      {
        *v4 = 50;
        v4[1] = v28;
        if (*(v27 + 23) < 0)
        {
          v27 = *v27;
        }

        v29 = v4 + 2;
        memcpy(v4 + 2, v27, v28);
        v4 = &v29[v28];
      }

      v26 += 8;
      --v25;
    }

    while (v25);
  }

  v30 = *(a1 + 128);
  if (v30 >= 1)
  {
    v31 = 8;
    do
    {
      v32 = *(*(a1 + 136) + v31);
      v33 = *(v32 + 23);
      if (v33 < 0 && (v33 = v32[1], v33 > 127) || (*a3 - v4 + 14) < v33)
      {
        v4 = sub_1957480(a3, 7, v32, v4);
      }

      else
      {
        *v4 = 58;
        v4[1] = v33;
        if (*(v32 + 23) < 0)
        {
          v32 = *v32;
        }

        v34 = v4 + 2;
        memcpy(v4 + 2, v32, v33);
        v4 = &v34[v33];
      }

      v31 += 8;
      --v30;
    }

    while (v30);
  }

  v35 = *(a1 + 152);
  if (v35)
  {
    for (j = 0; j != v35; ++j)
    {
      if (*a3 <= v4)
      {
        v4 = sub_225EB68(a3, v4);
      }

      v37 = *(*(a1 + 160) + 8 * j + 8);
      *v4 = 66;
      v38 = *(v37 + 20);
      v4[1] = v38;
      if (v38 > 0x7F)
      {
        v39 = sub_19575D0(v38, v4 + 1);
      }

      else
      {
        v39 = v4 + 2;
      }

      v4 = sub_157926C(v37, v39, a3);
    }
  }

  v40 = *(a1 + 168);
  if (v40 < 1)
  {
    v43 = v4;
  }

  else
  {
    for (k = 0; k != v40; ++k)
    {
      if (*a3 <= v4)
      {
        v4 = sub_225EB68(a3, v4);
      }

      v42 = *(*(a1 + 176) + 8 * k);
      *v4 = 72;
      v4[1] = v42;
      if (v42 > 0x7F)
      {
        v4[1] = v42 | 0x80;
        v44 = v42 >> 7;
        v4[2] = v42 >> 7;
        v43 = v4 + 3;
        if (v42 >= 0x4000)
        {
          LOBYTE(v45) = v4[2];
          do
          {
            *(v43 - 1) = v45 | 0x80;
            v45 = v44 >> 7;
            *v43++ = v44 >> 7;
            v46 = v44 >> 14;
            v44 >>= 7;
          }

          while (v46);
        }
      }

      else
      {
        v43 = v4 + 2;
      }

      v4 = v43;
    }
  }

  v47 = *(a1 + 192);
  if (v47 >= 1)
  {
    v48 = 8;
    do
    {
      v49 = *(*(a1 + 200) + v48);
      v50 = *(v49 + 23);
      if (v50 < 0 && (v50 = v49[1], v50 > 127) || (*a3 - v43 + 14) < v50)
      {
        v43 = sub_1957480(a3, 10, v49, v43);
      }

      else
      {
        *v43 = 82;
        v43[1] = v50;
        if (*(v49 + 23) < 0)
        {
          v49 = *v49;
        }

        v51 = v43 + 2;
        memcpy(v51, v49, v50);
        v43 = &v51[v50];
      }

      v48 += 8;
      --v47;
    }

    while (v47);
  }

  v52 = *(a1 + 216);
  if (v52)
  {
    for (m = 0; m != v52; ++m)
    {
      if (*a3 <= v43)
      {
        v43 = sub_225EB68(a3, v43);
      }

      v54 = *(*(a1 + 224) + 8 * m + 8);
      *v43 = 90;
      v55 = *(v54 + 20);
      v43[1] = v55;
      if (v55 > 0x7F)
      {
        v56 = sub_19575D0(v55, v43 + 1);
      }

      else
      {
        v56 = v43 + 2;
      }

      v43 = sub_157F53C(v54, v56, a3);
    }
  }

  v57 = *(a1 + 240);
  if (v57)
  {
    for (n = 0; n != v57; ++n)
    {
      if (*a3 <= v43)
      {
        v43 = sub_225EB68(a3, v43);
      }

      v59 = *(*(a1 + 248) + 8 * n + 8);
      *v43 = 98;
      v60 = *(v59 + 20);
      v43[1] = v60;
      if (v60 > 0x7F)
      {
        v61 = sub_19575D0(v60, v43 + 1);
      }

      else
      {
        v61 = v43 + 2;
      }

      v43 = sub_157FCC0(v59, v61, a3);
    }
  }

  v62 = *(a1 + 8);
  if ((v62 & 1) == 0)
  {
    return v43;
  }

  v64 = v62 & 0xFFFFFFFFFFFFFFFCLL;
  v65 = *(v64 + 31);
  if (v65 < 0)
  {
    v66 = *(v64 + 8);
    v65 = *(v64 + 16);
  }

  else
  {
    v66 = (v64 + 8);
  }

  if ((*a3 - v43) >= v65)
  {
    v67 = v65;
    memcpy(v43, v66, v65);
    v43 += v67;
    return v43;
  }

  return sub_1957130(a3, v66, v65, v43);
}

uint64_t sub_1581438(uint64_t a1)
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

  v8 = *(a1 + 56);
  v9 = v4 + v8;
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

  v14 = *(a1 + 80);
  v15 = v9 + v14;
  v16 = *(a1 + 88);
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
      v20 = sub_157A6D0(v19);
      v15 += v20 + ((9 * (__clz(v20 | 1) ^ 0x1F) + 73) >> 6);
      v18 -= 8;
    }

    while (v18);
  }

  v21 = *(a1 + 104);
  v22 = v15 + v21;
  if (v21 >= 1)
  {
    v23 = (*(a1 + 112) + 8);
    do
    {
      v24 = *v23++;
      v25 = *(v24 + 23);
      v26 = *(v24 + 8);
      if ((v25 & 0x80u) == 0)
      {
        v26 = v25;
      }

      v22 += v26 + ((9 * (__clz(v26 | 1) ^ 0x1F) + 73) >> 6);
      --v21;
    }

    while (v21);
  }

  v27 = *(a1 + 128);
  v28 = v22 + v27;
  if (v27 >= 1)
  {
    v29 = (*(a1 + 136) + 8);
    do
    {
      v30 = *v29++;
      v31 = *(v30 + 23);
      v32 = *(v30 + 8);
      if ((v31 & 0x80u) == 0)
      {
        v32 = v31;
      }

      v28 += v32 + ((9 * (__clz(v32 | 1) ^ 0x1F) + 73) >> 6);
      --v27;
    }

    while (v27);
  }

  v33 = *(a1 + 152);
  v34 = v28 + v33;
  v35 = *(a1 + 160);
  if (v35)
  {
    v36 = (v35 + 8);
  }

  else
  {
    v36 = 0;
  }

  if (v33)
  {
    v37 = 8 * v33;
    do
    {
      v38 = *v36++;
      v39 = sub_1579354(v38);
      v34 += v39 + ((9 * (__clz(v39 | 1) ^ 0x1F) + 73) >> 6);
      v37 -= 8;
    }

    while (v37);
  }

  v40 = sub_1959F14((a1 + 168));
  v41 = *(a1 + 192);
  v42 = v40 + *(a1 + 168) + v41 + v34;
  if (v41 >= 1)
  {
    v43 = (*(a1 + 200) + 8);
    do
    {
      v44 = *v43++;
      v45 = *(v44 + 23);
      v46 = *(v44 + 8);
      if ((v45 & 0x80u) == 0)
      {
        v46 = v45;
      }

      v42 += v46 + ((9 * (__clz(v46 | 1) ^ 0x1F) + 73) >> 6);
      --v41;
    }

    while (v41);
  }

  v47 = *(a1 + 216);
  v48 = v42 + v47;
  v49 = *(a1 + 224);
  if (v49)
  {
    v50 = (v49 + 8);
  }

  else
  {
    v50 = 0;
  }

  if (v47)
  {
    v51 = 8 * v47;
    do
    {
      v52 = *v50++;
      v53 = sub_157F724(v52);
      v48 += v53 + ((9 * (__clz(v53 | 1) ^ 0x1F) + 73) >> 6);
      v51 -= 8;
    }

    while (v51);
  }

  v54 = *(a1 + 240);
  v55 = v48 + v54;
  v56 = *(a1 + 248);
  if (v56)
  {
    v57 = (v56 + 8);
  }

  else
  {
    v57 = 0;
  }

  if (v54)
  {
    v58 = 8 * v54;
    do
    {
      v59 = *v57++;
      v60 = sub_157FE84(v59);
      v55 += v60 + ((9 * (__clz(v60 | 1) ^ 0x1F) + 73) >> 6);
      v58 -= 8;
    }

    while (v58);
  }

  v61 = *(a1 + 16);
  if ((v61 & 3) != 0)
  {
    if (v61)
    {
      v62 = *(a1 + 256) & 0xFFFFFFFFFFFFFFFELL;
      v63 = *(v62 + 23);
      v64 = *(v62 + 8);
      if ((v63 & 0x80u) == 0)
      {
        v64 = v63;
      }

      v55 += v64 + ((9 * (__clz(v64 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    if ((v61 & 2) != 0)
    {
      v65 = sub_15B20A0(*(a1 + 264));
      v55 += v65 + ((9 * (__clz(v65 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }
  }

  v66 = *(a1 + 8);
  if (v66)
  {
    v68 = v66 & 0xFFFFFFFFFFFFFFFCLL;
    v69 = *((v66 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v69 < 0)
    {
      v69 = *(v68 + 16);
    }

    v55 += v69;
  }

  *(a1 + 20) = v55;
  return v55;
}

void sub_1581820(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  if (v4)
  {
    v5 = *(a2 + 40);
    v6 = sub_19592E8(a1 + 24, *(a2 + 32));
    sub_1201B48((a1 + 24), v6, (v5 + 8), v4, **(a1 + 40) - *(a1 + 32));
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
    sub_1201B48((a1 + 48), v11, (v10 + 8), v9, **(a1 + 64) - *(a1 + 56));
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
    sub_15B48B8((a1 + 72), v16, (v15 + 8), v14, **(a1 + 88) - *(a1 + 80));
    v17 = *(a1 + 80) + v14;
    *(a1 + 80) = v17;
    v18 = *(a1 + 88);
    if (*v18 < v17)
    {
      *v18 = v17;
    }
  }

  v19 = *(a2 + 104);
  if (v19)
  {
    v20 = *(a2 + 112);
    v21 = sub_19592E8(a1 + 96, *(a2 + 104));
    sub_1201B48((a1 + 96), v21, (v20 + 8), v19, **(a1 + 112) - *(a1 + 104));
    v22 = *(a1 + 104) + v19;
    *(a1 + 104) = v22;
    v23 = *(a1 + 112);
    if (*v23 < v22)
    {
      *v23 = v22;
    }
  }

  v24 = *(a2 + 128);
  if (v24)
  {
    v25 = *(a2 + 136);
    v26 = sub_19592E8(a1 + 120, *(a2 + 128));
    sub_1201B48((a1 + 120), v26, (v25 + 8), v24, **(a1 + 136) - *(a1 + 128));
    v27 = *(a1 + 128) + v24;
    *(a1 + 128) = v27;
    v28 = *(a1 + 136);
    if (*v28 < v27)
    {
      *v28 = v27;
    }
  }

  v29 = *(a2 + 152);
  if (v29)
  {
    v30 = *(a2 + 160);
    v31 = sub_19592E8(a1 + 144, *(a2 + 152));
    sub_1311FF0((a1 + 144), v31, (v30 + 8), v29, **(a1 + 160) - *(a1 + 152));
    v32 = *(a1 + 152) + v29;
    *(a1 + 152) = v32;
    v33 = *(a1 + 160);
    if (*v33 < v32)
    {
      *v33 = v32;
    }
  }

  v34 = *(a2 + 168);
  if (v34)
  {
    v35 = *(a1 + 168);
    sub_1959094((a1 + 168), v35 + v34);
    v36 = *(a1 + 176);
    *(a1 + 168) += *(a2 + 168);
    memcpy((v36 + 8 * v35), *(a2 + 176), 8 * *(a2 + 168));
  }

  v37 = *(a2 + 192);
  if (v37)
  {
    v38 = *(a2 + 200);
    v39 = sub_19592E8(a1 + 184, *(a2 + 192));
    sub_1201B48((a1 + 184), v39, (v38 + 8), v37, **(a1 + 200) - *(a1 + 192));
    v40 = *(a1 + 192) + v37;
    *(a1 + 192) = v40;
    v41 = *(a1 + 200);
    if (*v41 < v40)
    {
      *v41 = v40;
    }
  }

  v42 = *(a2 + 216);
  if (v42)
  {
    v43 = *(a2 + 224);
    v44 = sub_19592E8(a1 + 208, *(a2 + 216));
    sub_15B5928((a1 + 208), v44, (v43 + 8), v42, **(a1 + 224) - *(a1 + 216));
    v45 = *(a1 + 216) + v42;
    *(a1 + 216) = v45;
    v46 = *(a1 + 224);
    if (*v46 < v45)
    {
      *v46 = v45;
    }
  }

  v47 = *(a2 + 240);
  if (v47)
  {
    v48 = *(a2 + 248);
    v49 = sub_19592E8(a1 + 232, *(a2 + 240));
    sub_15B59B4((a1 + 232), v49, (v48 + 8), v47, **(a1 + 248) - *(a1 + 240));
    v50 = *(a1 + 240) + v47;
    *(a1 + 240) = v50;
    v51 = *(a1 + 248);
    if (*v51 < v50)
    {
      *v51 = v50;
    }
  }

  v52 = *(a2 + 16);
  if ((v52 & 3) != 0)
  {
    if (v52)
    {
      v53 = *(a2 + 256);
      *(a1 + 16) |= 1u;
      v54 = *(a1 + 8);
      v55 = (v54 & 0xFFFFFFFFFFFFFFFCLL);
      if (v54)
      {
        v55 = *v55;
      }

      sub_194EA1C((a1 + 256), (v53 & 0xFFFFFFFFFFFFFFFELL), v55);
    }

    if ((v52 & 2) != 0)
    {
      *(a1 + 16) |= 2u;
      v56 = *(a1 + 264);
      if (!v56)
      {
        v57 = *(a1 + 8);
        v58 = (v57 & 0xFFFFFFFFFFFFFFFCLL);
        if (v57)
        {
          v58 = *v58;
        }

        v56 = sub_15B234C(v58);
        *(a1 + 264) = v56;
      }

      if (*(a2 + 264))
      {
        v59 = *(a2 + 264);
      }

      else
      {
        v59 = &off_27789A0;
      }

      sub_1581C8C(v56, v59);
    }
  }

  v60 = *(a2 + 8);
  if (v60)
  {

    sub_1957EF4((a1 + 8), (v60 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

void sub_1581C8C(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  if (v4)
  {
    v5 = *(a2 + 40);
    v6 = sub_19592E8(a1 + 24, *(a2 + 32));
    sub_15B6A00((a1 + 24), v6, (v5 + 8), v4, **(a1 + 40) - *(a1 + 32));
    v7 = *(a1 + 32) + v4;
    *(a1 + 32) = v7;
    v8 = *(a1 + 40);
    if (*v8 < v7)
    {
      *v8 = v7;
    }
  }

  if (*(a2 + 16))
  {
    v9 = *(a2 + 48);
    *(a1 + 16) |= 1u;
    v10 = *(a1 + 8);
    v11 = (v10 & 0xFFFFFFFFFFFFFFFCLL);
    if (v10)
    {
      v11 = *v11;
    }

    sub_194EA1C((a1 + 48), (v9 & 0xFFFFFFFFFFFFFFFELL), v11);
  }

  v12 = *(a2 + 8);
  if (v12)
  {

    sub_1957EF4((a1 + 8), (v12 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

BOOL sub_1581D80(uint64_t a1)
{
  v1 = *(a1 + 216);
  while (v1 >= 1)
  {
    v2 = *(*(a1 + 224) + 8 * v1--);
    if ((*(v2 + 16) & 1) == 0)
    {
      return 0;
    }
  }

  if ((*(a1 + 16) & 2) == 0)
  {
    return 1;
  }

  v4 = *(a1 + 264);
  v5 = *(v4 + 32);
  v6 = *(v4 + 40);
  do
  {
    v3 = v5 < 1;
    if (v5 < 1)
    {
      break;
    }

    v7 = v5 - 1;
    v8 = sub_15B16F0(*(v6 + 8 * v5));
    v5 = v7;
  }

  while (v8);
  return v3;
}

BOOL sub_1581E0C(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  do
  {
    v3 = v1;
    if (v1 < 1)
    {
      break;
    }

    v4 = v1 - 1;
    v5 = sub_15B16F0(*(v2 + 8 * v1));
    v1 = v4;
  }

  while (v5);
  return v3 < 1;
}

uint64_t sub_1581E70(uint64_t a1)
{
  v3 = (a1 + 8);
  v2 = *(a1 + 8);
  v4 = (v2 & 0xFFFFFFFFFFFFFFFCLL);
  if (v2)
  {
    if (*v4)
    {
      goto LABEL_14;
    }
  }

  else if (v4)
  {
    goto LABEL_14;
  }

  v5 = (a1 + 160);
  if (*(a1 + 160) != &qword_278E990)
  {
    sub_194E89C(v5);
  }

  if (*(a1 + 168) != &qword_278E990)
  {
    sub_194E89C((a1 + 168));
  }

  if (*(a1 + 176) != &qword_278E990)
  {
    sub_194E89C((a1 + 176));
  }

  if (a1 != &off_2777990)
  {
    v6 = *(a1 + 184);
    if (v6)
    {
      sub_15B1C80(v6);
      operator delete();
    }
  }

  if (*v3)
  {
    sub_11F19CC(v3);
  }

LABEL_14:
  sub_1956AFC((a1 + 136));
  sub_15B4C4C((a1 + 112));
  sub_15B4BC8((a1 + 88));
  sub_1956ABC(a1 + 72);
  sub_15B472C((a1 + 48));
  sub_1956AFC((a1 + 24));
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_1581FA8(uint64_t a1)
{
  sub_1581E70(a1);

  operator delete();
}

uint64_t sub_1581FE0(uint64_t a1)
{
  sub_12A41D0(a1 + 24);
  v2 = *(a1 + 56);
  if (v2 >= 1)
  {
    v3 = (*(a1 + 64) + 8);
    do
    {
      v4 = *v3++;
      sub_157A3FC(v4);
      --v2;
    }

    while (v2);
    *(a1 + 56) = 0;
  }

  *(a1 + 72) = 0;
  v5 = *(a1 + 96);
  if (v5 >= 1)
  {
    v6 = (*(a1 + 104) + 8);
    do
    {
      v7 = *v6++;
      sub_15AE908(v7);
      --v5;
    }

    while (v5);
    *(a1 + 96) = 0;
  }

  v8 = *(a1 + 120);
  if (v8 >= 1)
  {
    v9 = (*(a1 + 128) + 8);
    do
    {
      v10 = *v9++;
      sub_15838E0(v10);
      --v8;
    }

    while (v8);
    *(a1 + 120) = 0;
  }

  result = sub_12A41D0(a1 + 136);
  v12 = *(a1 + 16);
  if ((v12 & 0xF) == 0)
  {
    goto LABEL_19;
  }

  if (v12)
  {
    v15 = *(a1 + 160) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v15 + 23) < 0)
    {
      **v15 = 0;
      *(v15 + 8) = 0;
      if ((v12 & 2) != 0)
      {
        goto LABEL_29;
      }
    }

    else
    {
      *v15 = 0;
      *(v15 + 23) = 0;
      if ((v12 & 2) != 0)
      {
        goto LABEL_29;
      }
    }

LABEL_16:
    if ((v12 & 4) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_33;
  }

  if ((v12 & 2) == 0)
  {
    goto LABEL_16;
  }

LABEL_29:
  v16 = *(a1 + 168) & 0xFFFFFFFFFFFFFFFELL;
  if ((*(v16 + 23) & 0x80000000) == 0)
  {
    *v16 = 0;
    *(v16 + 23) = 0;
    if ((v12 & 4) != 0)
    {
      goto LABEL_33;
    }

LABEL_17:
    if ((v12 & 8) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

  **v16 = 0;
  *(v16 + 8) = 0;
  if ((v12 & 4) == 0)
  {
    goto LABEL_17;
  }

LABEL_33:
  v17 = *(a1 + 176) & 0xFFFFFFFFFFFFFFFELL;
  if ((*(v17 + 23) & 0x80000000) == 0)
  {
    *v17 = 0;
    *(v17 + 23) = 0;
    if ((v12 & 8) == 0)
    {
      goto LABEL_19;
    }

LABEL_18:
    result = sub_1580044(*(a1 + 184));
    goto LABEL_19;
  }

  **v17 = 0;
  *(v17 + 8) = 0;
  if ((v12 & 8) != 0)
  {
    goto LABEL_18;
  }

LABEL_19:
  if ((v12 & 0xF0) != 0)
  {
    *(a1 + 199) = 0;
    *(a1 + 192) = 0;
  }

  v14 = *(a1 + 8);
  v13 = a1 + 8;
  *(v13 + 8) = 0;
  if (v14)
  {

    return sub_1957EA8(v13);
  }

  return result;
}

uint64_t sub_158218C(uint64_t a1, uint64_t a2, int32x2_t *a3)
{
  *v84 = a2;
  v5 = 0;
  if ((sub_195ADC0(a3, v84, a3[11].u32[1]) & 1) == 0)
  {
    while (1)
    {
      v7 = (*v84 + 1);
      v8 = **v84;
      if (**v84 < 0)
      {
        v9 = v8 + (*v7 << 7);
        v8 = v9 - 128;
        if (*v7 < 0)
        {
          v7 = sub_1958824(*v84, v9 - 128);
          v8 = v10;
        }

        else
        {
          v7 = (*v84 + 2);
        }
      }

      *v84 = v7;
      switch(v8 >> 3)
      {
        case 1u:
          if (v8 != 10)
          {
            goto LABEL_125;
          }

          *(a1 + 16) |= 1u;
          v11 = *(a1 + 8);
          v12 = (v11 & 0xFFFFFFFFFFFFFFFCLL);
          if (v11)
          {
            v12 = *v12;
          }

          v13 = (a1 + 160);
          goto LABEL_66;
        case 2u:
          if (v8 != 18)
          {
            goto LABEL_125;
          }

          *(a1 + 16) |= 2u;
          v43 = *(a1 + 8);
          v12 = (v43 & 0xFFFFFFFFFFFFFFFCLL);
          if (v43)
          {
            v12 = *v12;
          }

          v13 = (a1 + 168);
          goto LABEL_66;
        case 3u:
          if (v8 != 26)
          {
            goto LABEL_125;
          }

          *(a1 + 16) |= 4u;
          v35 = *(a1 + 8);
          v12 = (v35 & 0xFFFFFFFFFFFFFFFCLL);
          if (v35)
          {
            v12 = *v12;
          }

          v13 = (a1 + 176);
LABEL_66:
          v44 = sub_194DB04(v13, v12);
          v39 = sub_1958890(v44, *v84, a3);
          goto LABEL_132;
        case 4u:
          if (v8 != 34)
          {
            goto LABEL_125;
          }

          *(a1 + 16) |= 8u;
          v36 = *(a1 + 184);
          if (!v36)
          {
            v37 = *(a1 + 8);
            v38 = (v37 & 0xFFFFFFFFFFFFFFFCLL);
            if (v37)
            {
              v38 = *v38;
            }

            v36 = sub_15B234C(v38);
            *(a1 + 184) = v36;
            v7 = *v84;
          }

          v39 = sub_221ECFC(a3, v36, v7);
          goto LABEL_132;
        case 5u:
          if (v8 != 40)
          {
            goto LABEL_125;
          }

          v5 |= 0x20u;
          v21 = v7 + 1;
          v20 = *v7;
          if ((v20 & 0x8000000000000000) == 0)
          {
            goto LABEL_26;
          }

          v22 = *v21;
          v20 = (v22 << 7) + v20 - 128;
          if (v22 < 0)
          {
            v73 = sub_19587DC(v7, v20);
            *v84 = v73;
            *(a1 + 200) = v74 != 0;
            if (!v73)
            {
              goto LABEL_138;
            }
          }

          else
          {
            v21 = v7 + 2;
LABEL_26:
            *v84 = v21;
            *(a1 + 200) = v20 != 0;
          }

          goto LABEL_133;
        case 6u:
          if (v8 != 48)
          {
            goto LABEL_125;
          }

          v5 |= 0x40u;
          v46 = v7 + 1;
          v45 = *v7;
          if ((v45 & 0x8000000000000000) == 0)
          {
            goto LABEL_71;
          }

          v47 = *v46;
          v45 = (v47 << 7) + v45 - 128;
          if (v47 < 0)
          {
            v77 = sub_19587DC(v7, v45);
            *v84 = v77;
            *(a1 + 201) = v78 != 0;
            if (!v77)
            {
              goto LABEL_138;
            }
          }

          else
          {
            v46 = v7 + 2;
LABEL_71:
            *v84 = v46;
            *(a1 + 201) = v45 != 0;
          }

          goto LABEL_133;
        case 7u:
          if (v8 != 56)
          {
            goto LABEL_125;
          }

          v5 |= 0x10u;
          v57 = v7 + 1;
          v56 = *v7;
          if ((v56 & 0x8000000000000000) == 0)
          {
            goto LABEL_88;
          }

          v58 = *v57;
          v56 = (v58 << 7) + v56 - 128;
          if (v58 < 0)
          {
            v79 = sub_19587DC(v7, v56);
            *v84 = v79;
            *(a1 + 192) = v80;
            if (!v79)
            {
              goto LABEL_138;
            }
          }

          else
          {
            v57 = v7 + 2;
LABEL_88:
            *v84 = v57;
            *(a1 + 192) = v56;
          }

          goto LABEL_133;
        case 8u:
          if (v8 != 64)
          {
            goto LABEL_125;
          }

          v5 |= 0x80u;
          v41 = v7 + 1;
          v40 = *v7;
          if ((v40 & 0x8000000000000000) == 0)
          {
            goto LABEL_61;
          }

          v42 = *v41;
          v40 = (v42 << 7) + v40 - 128;
          if (v42 < 0)
          {
            v75 = sub_19587DC(v7, v40);
            *v84 = v75;
            *(a1 + 202) = v76 != 0;
            if (!v75)
            {
              goto LABEL_138;
            }
          }

          else
          {
            v41 = v7 + 2;
LABEL_61:
            *v84 = v41;
            *(a1 + 202) = v40 != 0;
          }

          goto LABEL_133;
        case 9u:
          if (v8 != 74)
          {
            goto LABEL_125;
          }

          v65 = v7 - 1;
          while (1)
          {
            v66 = (v65 + 1);
            *v84 = v65 + 1;
            v67 = *(a1 + 40);
            if (v67 && (v68 = *(a1 + 32), v68 < *v67))
            {
              *(a1 + 32) = v68 + 1;
              v69 = *&v67[2 * v68 + 2];
            }

            else
            {
              v70 = *(a1 + 24);
              if (!v70)
              {
                operator new();
              }

              *v72 = v71;
              v72[1] = sub_195A650;
              *v71 = 0;
              v71[1] = 0;
              v71[2] = 0;
              v69 = sub_19593CC(a1 + 24, v71);
              v66 = *v84;
            }

            v65 = sub_1958890(v69, v66, a3);
            *v84 = v65;
            if (!v65)
            {
              goto LABEL_138;
            }

            if (*a3 <= v65 || *v65 != 74)
            {
              goto LABEL_133;
            }
          }

        case 0xAu:
          if (v8 != 82)
          {
            goto LABEL_125;
          }

          v29 = v7 - 1;
          while (1)
          {
            v30 = v29 + 1;
            *v84 = v29 + 1;
            v31 = *(a1 + 64);
            if (v31 && (v32 = *(a1 + 56), v32 < *v31))
            {
              *(a1 + 56) = v32 + 1;
              v33 = *&v31[2 * v32 + 2];
            }

            else
            {
              v34 = sub_157B8A8(*(a1 + 48));
              v33 = sub_19593CC(a1 + 48, v34);
              v30 = *v84;
            }

            v29 = sub_221EA2C(a3, v33, v30);
            *v84 = v29;
            if (!v29)
            {
              goto LABEL_138;
            }

            if (*a3 <= v29 || *v29 != 82)
            {
              goto LABEL_133;
            }
          }

        case 0xBu:
          if (v8 == 88)
          {
            v59 = v7 - 1;
            while (1)
            {
              *v84 = v59 + 1;
              v60 = v59[1];
              if (v60 < 0)
              {
                v61 = (v59[2] << 7) + v60;
                v60 = (v61 - 128);
                if (v59[2] < 0)
                {
                  v59 = sub_19587DC((v59 + 1), (v61 - 128));
                  v60 = v62;
                }

                else
                {
                  v59 += 3;
                }
              }

              else
              {
                v59 += 2;
              }

              *v84 = v59;
              v63 = *(a1 + 72);
              if (v63 == *(a1 + 76))
              {
                v64 = v63 + 1;
                sub_1959094((a1 + 72), v63 + 1);
                *(*(a1 + 80) + 8 * v63) = v60;
                v59 = *v84;
              }

              else
              {
                *(*(a1 + 80) + 8 * v63) = v60;
                v64 = v63 + 1;
              }

              *(a1 + 72) = v64;
              if (!v59)
              {
                goto LABEL_138;
              }

              if (*a3 <= v59 || *v59 != 88)
              {
                goto LABEL_133;
              }
            }
          }

          if (v8 == 90)
          {
            v39 = sub_1958938((a1 + 72), v7, a3);
          }

          else
          {
LABEL_125:
            if (v8)
            {
              v81 = (v8 & 7) == 4;
            }

            else
            {
              v81 = 1;
            }

            if (v81)
            {
              if (v7)
              {
                a3[10].i32[0] = v8 - 1;
                goto LABEL_2;
              }

LABEL_138:
              *v84 = 0;
              goto LABEL_2;
            }

            v82 = *(a1 + 8);
            if (v82)
            {
              v83 = (v82 & 0xFFFFFFFFFFFFFFFCLL) + 8;
            }

            else
            {
              v83 = sub_11F1920((a1 + 8));
              v7 = *v84;
            }

            v39 = sub_1952690(v8, v83, v7, a3);
          }

LABEL_132:
          *v84 = v39;
          if (!v39)
          {
            goto LABEL_138;
          }

LABEL_133:
          if (sub_195ADC0(a3, v84, a3[11].u32[1]))
          {
            goto LABEL_2;
          }

          break;
        case 0xCu:
          if (v8 != 98)
          {
            goto LABEL_125;
          }

          v14 = v7 - 1;
          while (1)
          {
            v15 = v14 + 1;
            *v84 = v14 + 1;
            v16 = *(a1 + 104);
            if (v16 && (v17 = *(a1 + 96), v17 < *v16))
            {
              *(a1 + 96) = v17 + 1;
              v18 = *&v16[2 * v17 + 2];
            }

            else
            {
              v19 = sub_15AF04C(*(a1 + 88));
              v18 = sub_19593CC(a1 + 88, v19);
              v15 = *v84;
            }

            v14 = sub_221EEAC(a3, v18, v15);
            *v84 = v14;
            if (!v14)
            {
              goto LABEL_138;
            }

            if (*a3 <= v14 || *v14 != 98)
            {
              goto LABEL_133;
            }
          }

        case 0xDu:
          if (v8 != 106)
          {
            goto LABEL_125;
          }

          v23 = v7 - 1;
          while (1)
          {
            v24 = v23 + 1;
            *v84 = v23 + 1;
            v25 = *(a1 + 128);
            if (v25 && (v26 = *(a1 + 120), v26 < *v25))
            {
              *(a1 + 120) = v26 + 1;
              v27 = *&v25[2 * v26 + 2];
            }

            else
            {
              v28 = sub_15AC578(*(a1 + 112));
              v27 = sub_19593CC(a1 + 112, v28);
              v24 = *v84;
            }

            v23 = sub_221EF3C(a3, v27, v24);
            *v84 = v23;
            if (!v23)
            {
              goto LABEL_138;
            }

            if (*a3 <= v23 || *v23 != 106)
            {
              goto LABEL_133;
            }
          }

        case 0xEu:
          if (v8 != 114)
          {
            goto LABEL_125;
          }

          v48 = v7 - 1;
          while (1)
          {
            v49 = (v48 + 1);
            *v84 = v48 + 1;
            v50 = *(a1 + 152);
            if (v50 && (v51 = *(a1 + 144), v51 < *v50))
            {
              *(a1 + 144) = v51 + 1;
              v52 = *&v50[2 * v51 + 2];
            }

            else
            {
              v53 = *(a1 + 136);
              if (!v53)
              {
                operator new();
              }

              *v55 = v54;
              v55[1] = sub_195A650;
              *v54 = 0;
              v54[1] = 0;
              v54[2] = 0;
              v52 = sub_19593CC(a1 + 136, v54);
              v49 = *v84;
            }

            v48 = sub_1958890(v52, v49, a3);
            *v84 = v48;
            if (!v48)
            {
              goto LABEL_138;
            }

            if (*a3 <= v48 || *v48 != 114)
            {
              goto LABEL_133;
            }
          }

        default:
          goto LABEL_125;
      }
    }
  }

LABEL_2:
  *(a1 + 16) |= v5;
  return *v84;
}

char *sub_15829D8(uint64_t a1, char *a2, unint64_t *a3)
{
  v4 = a2;
  v6 = *(a1 + 16);
  if (v6)
  {
    v4 = sub_128AEEC(a3, 1, (*(a1 + 160) & 0xFFFFFFFFFFFFFFFELL), a2);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
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

  v4 = sub_128AEEC(a3, 2, (*(a1 + 168) & 0xFFFFFFFFFFFFFFFELL), v4);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_12;
  }

LABEL_11:
  v4 = sub_128AEEC(a3, 3, (*(a1 + 176) & 0xFFFFFFFFFFFFFFFELL), v4);
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_18;
  }

LABEL_12:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v8 = *(a1 + 184);
  *v4 = 34;
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

  v4 = sub_15B1F3C(v8, v10, a3);
  if ((v6 & 0x20) == 0)
  {
LABEL_6:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_7;
    }

LABEL_21:
    if (*a3 <= v4)
    {
      v4 = sub_225EB68(a3, v4);
    }

    v12 = *(a1 + 201);
    *v4 = 48;
    v4[1] = v12;
    v4 += 2;
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_24;
  }

LABEL_18:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v11 = *(a1 + 200);
  *v4 = 40;
  v4[1] = v11;
  v4 += 2;
  if ((v6 & 0x40) != 0)
  {
    goto LABEL_21;
  }

LABEL_7:
  if ((v6 & 0x10) == 0)
  {
LABEL_8:
    v7 = v4;
    goto LABEL_31;
  }

LABEL_24:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v13 = *(a1 + 192);
  *v4 = 56;
  v4[1] = v13;
  if (v13 > 0x7F)
  {
    v4[1] = v13 | 0x80;
    v14 = v13 >> 7;
    v4[2] = v13 >> 7;
    v7 = v4 + 3;
    if (v13 >= 0x4000)
    {
      LOBYTE(v4) = v4[2];
      do
      {
        *(v7 - 1) = v4 | 0x80;
        v4 = (v14 >> 7);
        *v7++ = v14 >> 7;
        v15 = v14 >> 14;
        v14 >>= 7;
      }

      while (v15);
    }
  }

  else
  {
    v7 = v4 + 2;
  }

LABEL_31:
  if ((v6 & 0x80) != 0)
  {
    if (*a3 <= v7)
    {
      v7 = sub_225EB68(a3, v7);
    }

    v16 = *(a1 + 202);
    *v7 = 64;
    v7[1] = v16;
    v7 += 2;
  }

  v17 = *(a1 + 32);
  if (v17 >= 1)
  {
    v18 = 8;
    do
    {
      v19 = *(*(a1 + 40) + v18);
      v20 = *(v19 + 23);
      if (v20 < 0 && (v20 = v19[1], v20 > 127) || (*a3 - v7 + 14) < v20)
      {
        v7 = sub_1957480(a3, 9, v19, v7);
      }

      else
      {
        *v7 = 74;
        v7[1] = v20;
        if (*(v19 + 23) < 0)
        {
          v19 = *v19;
        }

        v21 = v7 + 2;
        memcpy(v7 + 2, v19, v20);
        v7 = &v21[v20];
      }

      v18 += 8;
      --v17;
    }

    while (v17);
  }

  v22 = *(a1 + 56);
  if (v22)
  {
    for (i = 0; i != v22; ++i)
    {
      if (*a3 <= v7)
      {
        v7 = sub_225EB68(a3, v7);
      }

      v24 = *(*(a1 + 64) + 8 * i + 8);
      *v7 = 82;
      v25 = *(v24 + 20);
      v7[1] = v25;
      if (v25 > 0x7F)
      {
        v26 = sub_19575D0(v25, v7 + 1);
      }

      else
      {
        v26 = v7 + 2;
      }

      v7 = sub_157A5D0(v24, v26, a3);
    }
  }

  v27 = *(a1 + 72);
  if (v27 < 1)
  {
    v30 = v7;
  }

  else
  {
    for (j = 0; j != v27; ++j)
    {
      if (*a3 <= v7)
      {
        v7 = sub_225EB68(a3, v7);
      }

      v29 = *(*(a1 + 80) + 8 * j);
      *v7 = 88;
      v7[1] = v29;
      if (v29 > 0x7F)
      {
        v7[1] = v29 | 0x80;
        v31 = v29 >> 7;
        v7[2] = v29 >> 7;
        v30 = v7 + 3;
        if (v29 >= 0x4000)
        {
          LOBYTE(v32) = v7[2];
          do
          {
            *(v30 - 1) = v32 | 0x80;
            v32 = v31 >> 7;
            *v30++ = v31 >> 7;
            v33 = v31 >> 14;
            v31 >>= 7;
          }

          while (v33);
        }
      }

      else
      {
        v30 = v7 + 2;
      }

      v7 = v30;
    }
  }

  v34 = *(a1 + 96);
  if (v34)
  {
    for (k = 0; k != v34; ++k)
    {
      if (*a3 <= v30)
      {
        v30 = sub_225EB68(a3, v30);
      }

      v36 = *(*(a1 + 104) + 8 * k + 8);
      *v30 = 98;
      v37 = *(v36 + 20);
      v30[1] = v37;
      if (v37 > 0x7F)
      {
        v38 = sub_19575D0(v37, v30 + 1);
      }

      else
      {
        v38 = v30 + 2;
      }

      v30 = sub_15AEBF8(v36, v38, a3);
    }
  }

  v39 = *(a1 + 120);
  if (v39)
  {
    for (m = 0; m != v39; ++m)
    {
      if (*a3 <= v30)
      {
        v30 = sub_225EB68(a3, v30);
      }

      v41 = *(*(a1 + 128) + 8 * m + 8);
      *v30 = 106;
      v42 = *(v41 + 20);
      v30[1] = v42;
      if (v42 > 0x7F)
      {
        v43 = sub_19575D0(v42, v30 + 1);
      }

      else
      {
        v43 = v30 + 2;
      }

      v30 = sub_1583D38(v41, v43, a3);
    }
  }

  v44 = *(a1 + 144);
  if (v44 >= 1)
  {
    v45 = 8;
    do
    {
      v46 = *(*(a1 + 152) + v45);
      v47 = *(v46 + 23);
      if (v47 < 0 && (v47 = v46[1], v47 > 127) || (*a3 - v30 + 14) < v47)
      {
        v30 = sub_1957480(a3, 14, v46, v30);
      }

      else
      {
        *v30 = 114;
        v30[1] = v47;
        if (*(v46 + 23) < 0)
        {
          v46 = *v46;
        }

        v48 = v30 + 2;
        memcpy(v48, v46, v47);
        v30 = &v48[v47];
      }

      v45 += 8;
      --v44;
    }

    while (v44);
  }

  v49 = *(a1 + 8);
  if ((v49 & 1) == 0)
  {
    return v30;
  }

  v51 = v49 & 0xFFFFFFFFFFFFFFFCLL;
  v52 = *(v51 + 31);
  if (v52 < 0)
  {
    v53 = *(v51 + 8);
    v52 = *(v51 + 16);
  }

  else
  {
    v53 = (v51 + 8);
  }

  if ((*a3 - v30) >= v52)
  {
    v54 = v52;
    memcpy(v30, v53, v52);
    v30 += v54;
    return v30;
  }

  return sub_1957130(a3, v53, v52, v30);
}

uint64_t sub_1583004(uint64_t a1)
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

  v8 = *(a1 + 56);
  v9 = v4 + v8;
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
      v14 = sub_157A6D0(v13);
      v9 += v14 + ((9 * (__clz(v14 | 1) ^ 0x1F) + 73) >> 6);
      v12 -= 8;
    }

    while (v12);
  }

  v15 = sub_1959F14((a1 + 72));
  v16 = *(a1 + 96);
  v17 = v15 + *(a1 + 72) + v16 + v9;
  v18 = *(a1 + 104);
  if (v18)
  {
    v19 = (v18 + 8);
  }

  else
  {
    v19 = 0;
  }

  if (v16)
  {
    v20 = 8 * v16;
    do
    {
      v21 = *v19++;
      v22 = sub_15AEE50(v21);
      v17 += v22 + ((9 * (__clz(v22 | 1) ^ 0x1F) + 73) >> 6);
      v20 -= 8;
    }

    while (v20);
  }

  v23 = *(a1 + 120);
  v24 = v17 + v23;
  v25 = *(a1 + 128);
  if (v25)
  {
    v26 = (v25 + 8);
  }

  else
  {
    v26 = 0;
  }

  if (v23)
  {
    v27 = 8 * v23;
    do
    {
      v28 = *v26++;
      v29 = sub_1583FA4(v28);
      v24 += v29 + ((9 * (__clz(v29 | 1) ^ 0x1F) + 73) >> 6);
      v27 -= 8;
    }

    while (v27);
  }

  v30 = *(a1 + 144);
  v31 = v24 + v30;
  if (v30 >= 1)
  {
    v32 = (*(a1 + 152) + 8);
    do
    {
      v33 = *v32++;
      v34 = *(v33 + 23);
      v35 = *(v33 + 8);
      if ((v34 & 0x80u) == 0)
      {
        v35 = v34;
      }

      v31 += v35 + ((9 * (__clz(v35 | 1) ^ 0x1F) + 73) >> 6);
      --v30;
    }

    while (v30);
  }

  v36 = *(a1 + 16);
  if (v36)
  {
    if (v36)
    {
      v39 = *(a1 + 160) & 0xFFFFFFFFFFFFFFFELL;
      v40 = *(v39 + 23);
      v41 = *(v39 + 8);
      if ((v40 & 0x80u) == 0)
      {
        v41 = v40;
      }

      v31 += v41 + ((9 * (__clz(v41 | 1) ^ 0x1F) + 73) >> 6) + 1;
      if ((v36 & 2) == 0)
      {
LABEL_34:
        if ((v36 & 4) == 0)
        {
          goto LABEL_35;
        }

        goto LABEL_47;
      }
    }

    else if ((v36 & 2) == 0)
    {
      goto LABEL_34;
    }

    v42 = *(a1 + 168) & 0xFFFFFFFFFFFFFFFELL;
    v43 = *(v42 + 23);
    v44 = *(v42 + 8);
    if ((v43 & 0x80u) == 0)
    {
      v44 = v43;
    }

    v31 += v44 + ((9 * (__clz(v44 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v36 & 4) == 0)
    {
LABEL_35:
      if ((v36 & 8) == 0)
      {
        goto LABEL_36;
      }

      goto LABEL_50;
    }

LABEL_47:
    v45 = *(a1 + 176) & 0xFFFFFFFFFFFFFFFELL;
    v46 = *(v45 + 23);
    v47 = *(v45 + 8);
    if ((v46 & 0x80u) == 0)
    {
      v47 = v46;
    }

    v31 += v47 + ((9 * (__clz(v47 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v36 & 8) == 0)
    {
LABEL_36:
      if ((v36 & 0x10) == 0)
      {
LABEL_38:
        v31 += ((v36 >> 5) & 2) + ((v36 >> 4) & 2) + ((v36 >> 6) & 2);
        goto LABEL_39;
      }

LABEL_37:
      v31 += ((9 * (__clz(*(a1 + 192) | 1) ^ 0x3F) + 73) >> 6) + 1;
      goto LABEL_38;
    }

LABEL_50:
    v48 = sub_15B20A0(*(a1 + 184));
    v31 += v48 + ((9 * (__clz(v48 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v36 & 0x10) == 0)
    {
      goto LABEL_38;
    }

    goto LABEL_37;
  }

LABEL_39:
  v37 = *(a1 + 8);
  if (v37)
  {
    v49 = v37 & 0xFFFFFFFFFFFFFFFCLL;
    v50 = *((v37 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v50 < 0)
    {
      v50 = *(v49 + 16);
    }

    v31 += v50;
  }

  *(a1 + 20) = v31;
  return v31;
}

void sub_1583378(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  if (v4)
  {
    v5 = *(a2 + 40);
    v6 = sub_19592E8(a1 + 24, *(a2 + 32));
    sub_1201B48((a1 + 24), v6, (v5 + 8), v4, **(a1 + 40) - *(a1 + 32));
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
    sub_15B48B8((a1 + 48), v11, (v10 + 8), v9, **(a1 + 64) - *(a1 + 56));
    v12 = *(a1 + 56) + v9;
    *(a1 + 56) = v12;
    v13 = *(a1 + 64);
    if (*v13 < v12)
    {
      *v13 = v12;
    }
  }

  v14 = *(a2 + 72);
  if (v14)
  {
    v15 = *(a1 + 72);
    sub_1959094((a1 + 72), v15 + v14);
    v16 = *(a1 + 80);
    *(a1 + 72) += *(a2 + 72);
    memcpy((v16 + 8 * v15), *(a2 + 80), 8 * *(a2 + 72));
  }

  v17 = *(a2 + 96);
  if (v17)
  {
    v18 = *(a2 + 104);
    v19 = sub_19592E8(a1 + 88, *(a2 + 96));
    sub_15B5A40((a1 + 88), v19, (v18 + 8), v17, **(a1 + 104) - *(a1 + 96));
    v20 = *(a1 + 96) + v17;
    *(a1 + 96) = v20;
    v21 = *(a1 + 104);
    if (*v21 < v20)
    {
      *v21 = v20;
    }
  }

  v22 = *(a2 + 120);
  if (v22)
  {
    v23 = *(a2 + 128);
    v24 = sub_19592E8(a1 + 112, *(a2 + 120));
    sub_15B5ACC((a1 + 112), v24, (v23 + 8), v22, **(a1 + 128) - *(a1 + 120));
    v25 = *(a1 + 120) + v22;
    *(a1 + 120) = v25;
    v26 = *(a1 + 128);
    if (*v26 < v25)
    {
      *v26 = v25;
    }
  }

  v27 = *(a2 + 144);
  if (v27)
  {
    v28 = *(a2 + 152);
    v29 = sub_19592E8(a1 + 136, *(a2 + 144));
    sub_1201B48((a1 + 136), v29, (v28 + 8), v27, **(a1 + 152) - *(a1 + 144));
    v30 = *(a1 + 144) + v27;
    *(a1 + 144) = v30;
    v31 = *(a1 + 152);
    if (*v31 < v30)
    {
      *v31 = v30;
    }
  }

  v32 = *(a2 + 16);
  if (v32)
  {
    if (v32)
    {
      v34 = *(a2 + 160);
      *(a1 + 16) |= 1u;
      v35 = *(a1 + 8);
      v36 = (v35 & 0xFFFFFFFFFFFFFFFCLL);
      if (v35)
      {
        v36 = *v36;
      }

      sub_194EA1C((a1 + 160), (v34 & 0xFFFFFFFFFFFFFFFELL), v36);
      if ((v32 & 2) == 0)
      {
LABEL_21:
        if ((v32 & 4) == 0)
        {
          goto LABEL_22;
        }

        goto LABEL_39;
      }
    }

    else if ((v32 & 2) == 0)
    {
      goto LABEL_21;
    }

    v37 = *(a2 + 168);
    *(a1 + 16) |= 2u;
    v38 = *(a1 + 8);
    v39 = (v38 & 0xFFFFFFFFFFFFFFFCLL);
    if (v38)
    {
      v39 = *v39;
    }

    sub_194EA1C((a1 + 168), (v37 & 0xFFFFFFFFFFFFFFFELL), v39);
    if ((v32 & 4) == 0)
    {
LABEL_22:
      if ((v32 & 8) == 0)
      {
        goto LABEL_23;
      }

      goto LABEL_42;
    }

LABEL_39:
    v40 = *(a2 + 176);
    *(a1 + 16) |= 4u;
    v41 = *(a1 + 8);
    v42 = (v41 & 0xFFFFFFFFFFFFFFFCLL);
    if (v41)
    {
      v42 = *v42;
    }

    sub_194EA1C((a1 + 176), (v40 & 0xFFFFFFFFFFFFFFFELL), v42);
    if ((v32 & 8) == 0)
    {
LABEL_23:
      if ((v32 & 0x10) == 0)
      {
        goto LABEL_24;
      }

      goto LABEL_50;
    }

LABEL_42:
    *(a1 + 16) |= 8u;
    v43 = *(a1 + 184);
    if (!v43)
    {
      v44 = *(a1 + 8);
      v45 = (v44 & 0xFFFFFFFFFFFFFFFCLL);
      if (v44)
      {
        v45 = *v45;
      }

      v43 = sub_15B234C(v45);
      *(a1 + 184) = v43;
    }

    if (*(a2 + 184))
    {
      v46 = *(a2 + 184);
    }

    else
    {
      v46 = &off_27789A0;
    }

    sub_1581C8C(v43, v46);
    if ((v32 & 0x10) == 0)
    {
LABEL_24:
      if ((v32 & 0x20) == 0)
      {
        goto LABEL_25;
      }

      goto LABEL_51;
    }

LABEL_50:
    *(a1 + 192) = *(a2 + 192);
    if ((v32 & 0x20) == 0)
    {
LABEL_25:
      if ((v32 & 0x40) == 0)
      {
        goto LABEL_26;
      }

      goto LABEL_52;
    }

LABEL_51:
    *(a1 + 200) = *(a2 + 200);
    if ((v32 & 0x40) == 0)
    {
LABEL_26:
      if ((v32 & 0x80) == 0)
      {
LABEL_28:
        *(a1 + 16) |= v32;
        goto LABEL_29;
      }

LABEL_27:
      *(a1 + 202) = *(a2 + 202);
      goto LABEL_28;
    }

LABEL_52:
    *(a1 + 201) = *(a2 + 201);
    if ((v32 & 0x80) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_27;
  }

LABEL_29:
  v33 = *(a2 + 8);
  if (v33)
  {

    sub_1957EF4((a1 + 8), (v33 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

BOOL sub_1583738(uint64_t a1)
{
  v1 = *(a1 + 120);
  while (v1 >= 1)
  {
    v2 = *(*(a1 + 128) + 8 * v1--);
    if ((*(v2 + 16) & 4) == 0)
    {
      return 0;
    }
  }

  if ((*(a1 + 16) & 8) == 0)
  {
    return 1;
  }

  v4 = *(a1 + 184);
  v5 = *(v4 + 32);
  v6 = *(v4 + 40);
  do
  {
    v3 = v5 < 1;
    if (v5 < 1)
    {
      break;
    }

    v7 = v5 - 1;
    v8 = sub_15B16F0(*(v6 + 8 * v5));
    v5 = v7;
  }

  while (v8);
  return v3;
}

uint64_t sub_15837D4(uint64_t a1)
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

  v5 = (a1 + 40);
  if (*(a1 + 40) != &qword_278E990)
  {
    sub_194E89C(v5);
  }

  if (a1 != &off_2777A60)
  {
    v6 = *(a1 + 48);
    if (v6)
    {
      sub_1584338(v6);
      operator delete();
    }
  }

  if (*v3)
  {
    sub_11F19CC(v3);
  }

LABEL_10:
  sub_1956ABC(a1 + 24);
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_15838A8(uint64_t a1)
{
  sub_15837D4(a1);

  operator delete();
}

uint64_t sub_15838E0(uint64_t result)
{
  v1 = result;
  *(result + 24) = 0;
  v2 = *(result + 16);
  if ((v2 & 3) != 0)
  {
    if ((v2 & 1) == 0)
    {
      goto LABEL_5;
    }

    v3 = *(result + 40) & 0xFFFFFFFFFFFFFFFELL;
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
      result = sub_158397C(*(result + 48));
    }
  }

LABEL_7:
  v5 = *(v1 + 8);
  v4 = v1 + 8;
  *(v4 + 48) = 0;
  *(v4 + 8) = 0;
  if (v5)
  {

    return sub_1957EA8(v4);
  }

  return result;
}

uint64_t sub_158397C(uint64_t a1)
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

  if ((v1 & 6) != 0)
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

uint64_t sub_15839D0(uint64_t a1, uint64_t a2, int32x2_t *a3)
{
  *v36 = a2;
  v6 = 0;
  if (sub_195ADC0(a3, v36, a3[11].u32[1]))
  {
    goto LABEL_2;
  }

  v8 = (a1 + 8);
  while (1)
  {
    v9 = (*v36 + 1);
    v10 = **v36;
    if (**v36 < 0)
    {
      v11 = *v9;
      v12 = v10 + (v11 << 7);
      v10 = v12 - 128;
      if (v11 < 0)
      {
        v9 = sub_1958824(*v36, v12 - 128);
        v10 = v13;
      }

      else
      {
        v9 = (*v36 + 2);
      }
    }

    *v36 = v9;
    v14 = v10 >> 3;
    if (v10 >> 3 > 2)
    {
      if (v14 == 3)
      {
        if (v10 != 26)
        {
          goto LABEL_49;
        }

        *(a1 + 16) |= 1u;
        v29 = *(a1 + 8);
        v30 = (v29 & 0xFFFFFFFFFFFFFFFCLL);
        if (v29)
        {
          v30 = *v30;
        }

        v31 = sub_194DB04((a1 + 40), v30);
        v25 = sub_1958890(v31, *v36, a3);
      }

      else
      {
        if (v14 != 4 || v10 != 34)
        {
          goto LABEL_49;
        }

        *(a1 + 16) |= 2u;
        v23 = *(a1 + 48);
        if (!v23)
        {
          v24 = (*v8 & 0xFFFFFFFFFFFFFFFCLL);
          if (*v8)
          {
            v24 = *v24;
          }

          v23 = sub_15AC620(v24);
          *(a1 + 48) = v23;
          v9 = *v36;
        }

        v25 = sub_221EFCC(a3, v23, v9);
      }

LABEL_56:
      *v36 = v25;
      if (!v25)
      {
        goto LABEL_62;
      }

      goto LABEL_57;
    }

    if (v14 != 1)
    {
      break;
    }

    if (v10 != 8)
    {
      goto LABEL_49;
    }

    v6 |= 4u;
    v27 = v9 + 1;
    v26 = *v9;
    if (v26 < 0)
    {
      v28 = *v27;
      v26 = (v28 << 7) + v26 - 128;
      if (v28 < 0)
      {
        v32 = sub_19587DC(v9, v26);
        *v36 = v32;
        *(a1 + 56) = v33;
        if (!v32)
        {
          goto LABEL_62;
        }

        goto LABEL_57;
      }

      v27 = v9 + 2;
    }

    *v36 = v27;
    *(a1 + 56) = v26;
LABEL_57:
    if (sub_195ADC0(a3, v36, a3[11].u32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v14 == 2)
  {
    if (v10 == 16)
    {
      v15 = (v9 - 1);
      while (1)
      {
        *v36 = v15 + 1;
        v16 = *(v15 + 1);
        v17 = (v15 + 2);
        if (v16 < 0)
        {
          v18 = *v17;
          v19 = (v18 << 7) + v16;
          LODWORD(v16) = v19 - 128;
          if (v18 < 0)
          {
            *v36 = sub_19587DC(v15 + 1, (v19 - 128));
            if (!*v36)
            {
              goto LABEL_62;
            }

            LODWORD(v16) = v22;
            goto LABEL_17;
          }

          v17 = (v15 + 3);
        }

        *v36 = v17;
LABEL_17:
        if ((v16 - 1) > 8)
        {
          sub_12E8418();
        }

        else
        {
          v20 = *(a1 + 24);
          if (v20 == *(a1 + 28))
          {
            v21 = v20 + 1;
            sub_1958E5C((a1 + 24), v20 + 1);
            *(*(a1 + 32) + 4 * v20) = v16;
          }

          else
          {
            *(*(a1 + 32) + 4 * v20) = v16;
            v21 = v20 + 1;
          }

          *(a1 + 24) = v21;
        }

        v15 = *v36;
        if (*a3 <= *v36 || **v36 != 16)
        {
          goto LABEL_57;
        }
      }
    }

    if (v10 == 18)
    {
      *&v37 = a1 + 24;
      *(&v37 + 1) = sub_157DA3C;
      v38 = a1 + 8;
      v39 = 2;
      v25 = sub_1216588(a3, v9, &v37, v5);
      goto LABEL_56;
    }
  }

LABEL_49:
  if (v10)
  {
    v34 = (v10 & 7) == 4;
  }

  else
  {
    v34 = 1;
  }

  if (!v34)
  {
    if (*v8)
    {
      v35 = (*v8 & 0xFFFFFFFFFFFFFFFCLL) + 8;
    }

    else
    {
      v35 = sub_11F1920((a1 + 8));
      v9 = *v36;
    }

    v25 = sub_1952690(v10, v35, v9, a3);
    goto LABEL_56;
  }

  if (v9)
  {
    a3[10].i32[0] = v10 - 1;
  }

  else
  {
LABEL_62:
    *v36 = 0;
  }

LABEL_2:
  *(a1 + 16) |= v6;
  return *v36;
}

char *sub_1583D38(uint64_t a1, char *a2, unint64_t *a3)
{
  v5 = *(a1 + 16);
  if ((v5 & 4) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = sub_225EB68(a3, a2);
    }

    v7 = *(a1 + 56);
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

  v11 = *(a1 + 24);
  if (v11 < 1)
  {
    v14 = v6;
  }

  else
  {
    for (i = 0; i != v11; ++i)
    {
      if (*a3 <= v6)
      {
        v6 = sub_225EB68(a3, v6);
      }

      v13 = *(*(a1 + 32) + 4 * i);
      *v6 = 16;
      v6[1] = v13;
      if (v13 > 0x7F)
      {
        v6[1] = v13 | 0x80;
        v15 = v13 >> 7;
        v6[2] = v13 >> 7;
        v14 = v6 + 3;
        if (v13 >= 0x4000)
        {
          LOBYTE(v6) = v6[2];
          do
          {
            *(v14 - 1) = v6 | 0x80;
            v6 = (v15 >> 7);
            *v14++ = v15 >> 7;
            v16 = v15 >> 14;
            v15 >>= 7;
          }

          while (v16);
        }
      }

      else
      {
        v14 = v6 + 2;
      }

      v6 = v14;
    }
  }

  if (v5)
  {
    v14 = sub_128AEEC(a3, 3, (*(a1 + 40) & 0xFFFFFFFFFFFFFFFELL), v14);
  }

  if ((v5 & 2) != 0)
  {
    if (*a3 <= v14)
    {
      v14 = sub_225EB68(a3, v14);
    }

    v17 = *(a1 + 48);
    *v14 = 34;
    v18 = *(v17 + 20);
    v14[1] = v18;
    if (v18 > 0x7F)
    {
      v19 = sub_19575D0(v18, v14 + 1);
    }

    else
    {
      v19 = v14 + 2;
    }

    v14 = sub_1584604(v17, v19, a3);
  }

  v20 = *(a1 + 8);
  if ((v20 & 1) == 0)
  {
    return v14;
  }

  v22 = v20 & 0xFFFFFFFFFFFFFFFCLL;
  v23 = *(v22 + 31);
  if (v23 < 0)
  {
    v24 = *(v22 + 8);
    v23 = *(v22 + 16);
  }

  else
  {
    v24 = (v22 + 8);
  }

  if ((*a3 - v14) >= v23)
  {
    v25 = v23;
    memcpy(v14, v24, v23);
    v14 += v25;
    return v14;
  }

  return sub_1957130(a3, v24, v23, v14);
}

uint64_t sub_1583FA4(uint64_t a1)
{
  v2 = *(a1 + 16);
  if ((v2 & 4) != 0)
  {
    v3 = ((9 * (__clz(*(a1 + 56) | 1) ^ 0x3F) + 73) >> 6) + 1;
  }

  else
  {
    v3 = 0;
  }

  v4 = *(a1 + 24);
  if (v4)
  {
    v5 = 0;
    v6 = 0;
    do
    {
      v7 = *(*(a1 + 32) + 4 * v5);
      if (v7 < 0)
      {
        v8 = 10;
      }

      else
      {
        v8 = (9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6;
      }

      v6 += v8;
      ++v5;
    }

    while (v4 != v5);
  }

  else
  {
    v6 = 0;
  }

  v9 = v3 + v4 + v6;
  if ((v2 & 3) != 0)
  {
    if (v2)
    {
      v10 = *(a1 + 40) & 0xFFFFFFFFFFFFFFFELL;
      v11 = *(v10 + 23);
      v12 = *(v10 + 8);
      if ((v11 & 0x80u) == 0)
      {
        v12 = v11;
      }

      v9 += v12 + ((9 * (__clz(v12 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    if ((v2 & 2) != 0)
    {
      v13 = sub_1584784(*(a1 + 48));
      v9 += v13 + ((9 * (__clz(v13 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }
  }

  v14 = *(a1 + 8);
  if (v14)
  {
    v16 = v14 & 0xFFFFFFFFFFFFFFFCLL;
    v17 = *((v14 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v17 < 0)
    {
      v17 = *(v16 + 16);
    }

    v9 += v17;
  }

  *(a1 + 20) = v9;
  return v9;
}

void sub_15840F8(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  if (v4)
  {
    v5 = (a1 + 24);
    v6 = *(a1 + 24);
    sub_1958E5C((a1 + 24), v6 + v4);
    v7 = *(a1 + 32);
    *v5 += *(a2 + 24);
    memcpy((v7 + 4 * v6), *(a2 + 32), 4 * *(a2 + 24));
  }

  v8 = *(a2 + 16);
  if ((v8 & 7) != 0)
  {
    if (v8)
    {
      v10 = *(a2 + 40);
      *(a1 + 16) |= 1u;
      v11 = *(a1 + 8);
      v12 = (v11 & 0xFFFFFFFFFFFFFFFCLL);
      if (v11)
      {
        v12 = *v12;
      }

      sub_194EA1C((a1 + 40), (v10 & 0xFFFFFFFFFFFFFFFELL), v12);
      if ((v8 & 2) == 0)
      {
LABEL_6:
        if ((v8 & 4) == 0)
        {
LABEL_8:
          *(a1 + 16) |= v8;
          goto LABEL_9;
        }

LABEL_7:
        *(a1 + 56) = *(a2 + 56);
        goto LABEL_8;
      }
    }

    else if ((v8 & 2) == 0)
    {
      goto LABEL_6;
    }

    *(a1 + 16) |= 2u;
    v13 = *(a1 + 48);
    if (!v13)
    {
      v14 = *(a1 + 8);
      v15 = (v14 & 0xFFFFFFFFFFFFFFFCLL);
      if (v14)
      {
        v15 = *v15;
      }

      v13 = sub_15AC620(v15);
      *(a1 + 48) = v13;
    }

    if (*(a2 + 48))
    {
      v16 = *(a2 + 48);
    }

    else
    {
      v16 = &off_2777AA0;
    }

    sub_158424C(v13, v16);
    if ((v8 & 4) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

LABEL_9:
  v9 = *(a2 + 8);
  if (v9)
  {

    sub_1957EF4((a1 + 8), (v9 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

void sub_158424C(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  if ((v4 & 7) != 0)
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
LABEL_6:
          *(a1 + 16) |= v4;
          goto LABEL_7;
        }

LABEL_5:
        *(a1 + 40) = *(a2 + 40);
        goto LABEL_6;
      }
    }

    else if ((v4 & 2) == 0)
    {
      goto LABEL_4;
    }

    *(a1 + 32) = *(a2 + 32);
    if ((v4 & 4) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_7:
  v5 = *(a2 + 8);
  if (v5)
  {

    sub_1957EF4((a1 + 8), (v5 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

uint64_t sub_1584338(uint64_t a1)
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

void sub_15843D8(uint64_t a1)
{
  sub_1584338(a1);

  operator delete();
}

uint64_t sub_1584410(uint64_t a1, uint64_t a2, int32x2_t *a3)
{
  *v25 = a2;
  v5 = 0;
  if (sub_195ADC0(a3, v25, a3[11].u32[1]))
  {
    goto LABEL_2;
  }

  while (1)
  {
    v7 = (*v25 + 1);
    v8 = **v25;
    if (**v25 < 0)
    {
      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if (*v7 < 0)
      {
        v7 = sub_1958824(*v25, v9 - 128);
        v8 = v10;
      }

      else
      {
        v7 = (*v25 + 2);
      }
    }

    *v25 = v7;
    v11 = v8 >> 3;
    if (v8 >> 3 == 3)
    {
      if (v8 != 26)
      {
        goto LABEL_13;
      }

      *(a1 + 16) |= 1u;
      v17 = *(a1 + 8);
      v18 = (v17 & 0xFFFFFFFFFFFFFFFCLL);
      if (v17)
      {
        v18 = *v18;
      }

      v19 = sub_194DB04((a1 + 24), v18);
      v16 = sub_1958890(v19, *v25, a3);
LABEL_26:
      *v25 = v16;
      if (!v16)
      {
        goto LABEL_39;
      }

      goto LABEL_32;
    }

    if (v11 == 2)
    {
      break;
    }

    if (v11 != 1 || v8 != 8)
    {
      goto LABEL_13;
    }

    v5 |= 2u;
    v21 = v7 + 1;
    v20 = *v7;
    if ((v20 & 0x8000000000000000) == 0)
    {
      goto LABEL_31;
    }

    v22 = *v21;
    v20 = (v22 << 7) + v20 - 128;
    if ((v22 & 0x80000000) == 0)
    {
      v21 = v7 + 2;
LABEL_31:
      *v25 = v21;
      *(a1 + 32) = v20;
      goto LABEL_32;
    }

    v23 = sub_19587DC(v7, v20);
    *v25 = v23;
    *(a1 + 32) = v24;
    if (!v23)
    {
      goto LABEL_39;
    }

LABEL_32:
    if (sub_195ADC0(a3, v25, a3[11].u32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v8 == 21)
  {
    v5 |= 4u;
    *(a1 + 40) = *v7;
    *v25 = v7 + 4;
    goto LABEL_32;
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
      v7 = *v25;
    }

    v16 = sub_1952690(v8, v15, v7, a3);
    goto LABEL_26;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_39:
  *v25 = 0;
LABEL_2:
  *(a1 + 16) |= v5;
  return *v25;
}

char *sub_1584604(uint64_t a1, char *__dst, unint64_t *a3)
{
  v5 = *(a1 + 16);
  if ((v5 & 2) != 0)
  {
    if (*a3 <= __dst)
    {
      __dst = sub_225EB68(a3, __dst);
    }

    v7 = *(a1 + 32);
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

  if ((v5 & 4) != 0)
  {
    if (*a3 <= v6)
    {
      v6 = sub_225EB68(a3, v6);
    }

    v11 = *(a1 + 40);
    *v6 = 21;
    *(v6 + 1) = v11;
    v6 += 5;
  }

  if (v5)
  {
    v6 = sub_128AEEC(a3, 3, (*(a1 + 24) & 0xFFFFFFFFFFFFFFFELL), v6);
  }

  v12 = *(a1 + 8);
  if ((v12 & 1) == 0)
  {
    return v6;
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

  if ((*a3 - v6) >= v15)
  {
    v17 = v15;
    memcpy(v6, v16, v15);
    v6 += v17;
    return v6;
  }

  return sub_1957130(a3, v16, v15, v6);
}

uint64_t sub_1584784(uint64_t a1)
{
  v1 = *(a1 + 16);
  if ((v1 & 7) == 0)
  {
    v3 = 0;
    goto LABEL_13;
  }

  if (v1)
  {
    v4 = *(a1 + 24) & 0xFFFFFFFFFFFFFFFELL;
    v5 = *(v4 + 23);
    v6 = *(v4 + 8);
    if ((v5 & 0x80u) == 0)
    {
      v6 = v5;
    }

    v2 = v6 + ((9 * (__clz(v6 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v1 & 2) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  v2 = 0;
  if ((v1 & 2) != 0)
  {
LABEL_9:
    v2 += ((9 * (__clz(*(a1 + 32) | 1) ^ 0x3F) + 73) >> 6) + 1;
  }

LABEL_10:
  if ((v1 & 4) != 0)
  {
    v3 = v2 + 5;
  }

  else
  {
    v3 = v2;
  }

LABEL_13:
  v7 = *(a1 + 8);
  if (v7)
  {
    v9 = v7 & 0xFFFFFFFFFFFFFFFCLL;
    v10 = *((v7 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v10 < 0)
    {
      v10 = *(v9 + 16);
    }

    v3 += v10;
  }

  *(a1 + 20) = v3;
  return v3;
}

uint64_t sub_158485C(uint64_t a1)
{
  v3 = (a1 + 8);
  v2 = *(a1 + 8);
  v4 = (v2 & 0xFFFFFFFFFFFFFFFCLL);
  if (v2)
  {
    if (*v4)
    {
      goto LABEL_12;
    }
  }

  else if (v4)
  {
    goto LABEL_12;
  }

  v5 = (a1 + 64);
  if (*(a1 + 64) != &qword_278E990)
  {
    sub_194E89C(v5);
  }

  if (a1 != &off_2777AD0)
  {
    v6 = *(a1 + 72);
    if (v6)
    {
      sub_15B1C80(v6);
      operator delete();
    }

    v7 = *(a1 + 80);
    if (v7)
    {
      sub_16E4E08(v7);
      operator delete();
    }
  }

  if (*v3)
  {
    sub_11F19CC(v3);
  }

LABEL_12:
  sub_15B4B44((a1 + 40));
  sub_1956ABC(a1 + 24);
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_158495C(uint64_t a1)
{
  sub_158485C(a1);

  operator delete();
}

uint64_t sub_1584994(uint64_t result)
{
  v1 = result;
  *(result + 24) = 0;
  v2 = *(result + 48);
  if (v2 >= 1)
  {
    v3 = (*(result + 56) + 8);
    do
    {
      v4 = *v3++;
      result = sub_157FA24(v4);
      --v2;
    }

    while (v2);
    *(v1 + 48) = 0;
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

    goto LABEL_20;
  }

  v8 = *(v1 + 64) & 0xFFFFFFFFFFFFFFFELL;
  if (*(v8 + 23) < 0)
  {
    **v8 = 0;
    *(v8 + 8) = 0;
    if ((v5 & 2) != 0)
    {
      goto LABEL_20;
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

LABEL_20:
  result = sub_1580044(*(v1 + 72));
  if ((v5 & 4) != 0)
  {
LABEL_9:
    result = sub_16E4E44(*(v1 + 80));
  }

LABEL_10:
  if ((v5 & 0x18) != 0)
  {
    *(v1 + 96) = 0;
    *(v1 + 88) = 0;
  }

  v7 = *(v1 + 8);
  v6 = v1 + 8;
  *(v6 + 8) = 0;
  if (v7)
  {

    return sub_1957EA8(v6);
  }

  return result;
}

uint64_t sub_1584A88(uint64_t a1, uint64_t a2, int32x2_t *a3)
{
  *v46 = a2;
  v5 = 0;
  if (sub_195ADC0(a3, v46, a3[11].u32[1]))
  {
    goto LABEL_2;
  }

  while (1)
  {
    v7 = (*v46 + 1);
    v8 = **v46;
    if (**v46 < 0)
    {
      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if (*v7 < 0)
      {
        v7 = sub_1958824(*v46, v9 - 128);
        v8 = v10;
      }

      else
      {
        v7 = (*v46 + 2);
      }
    }

    *v46 = v7;
    v11 = v8 >> 3;
    if (v8 >> 3 > 3)
    {
      if (v8 >> 3 > 5)
      {
        if (v11 == 6)
        {
          if (v8 == 48)
          {
            v32 = v7 - 1;
            while (1)
            {
              *v46 = v32 + 1;
              v33 = v32[1];
              if (v33 < 0)
              {
                v34 = (v32[2] << 7) + v33;
                v33 = (v34 - 128);
                if (v32[2] < 0)
                {
                  v32 = sub_19587DC((v32 + 1), (v34 - 128));
                  v33 = v35;
                }

                else
                {
                  v32 += 3;
                }
              }

              else
              {
                v32 += 2;
              }

              *v46 = v32;
              v36 = *(a1 + 24);
              if (v36 == *(a1 + 28))
              {
                v37 = v36 + 1;
                sub_1959094((a1 + 24), v36 + 1);
                *(*(a1 + 32) + 8 * v36) = v33;
                v32 = *v46;
              }

              else
              {
                *(*(a1 + 32) + 8 * v36) = v33;
                v37 = v36 + 1;
              }

              *(a1 + 24) = v37;
              if (!v32)
              {
                goto LABEL_91;
              }

              if (*a3 <= v32 || *v32 != 48)
              {
                goto LABEL_85;
              }
            }
          }

          if (v8 == 50)
          {
            v28 = sub_1958938((a1 + 24), v7, a3);
            goto LABEL_84;
          }
        }

        else if (v11 == 7 && v8 == 58)
        {
          v19 = v7 - 1;
          while (1)
          {
            v20 = v19 + 1;
            *v46 = v19 + 1;
            v21 = *(a1 + 56);
            if (v21 && (v22 = *(a1 + 48), v22 < *v21))
            {
              *(a1 + 48) = v22 + 1;
              v23 = *&v21[2 * v22 + 2];
            }

            else
            {
              v24 = sub_15AC3A0(*(a1 + 40));
              v23 = sub_19593CC(a1 + 40, v24);
              v20 = *v46;
            }

            v19 = sub_221EE1C(a3, v23, v20);
            *v46 = v19;
            if (!v19)
            {
              goto LABEL_91;
            }

            if (*a3 <= v19 || *v19 != 58)
            {
              goto LABEL_85;
            }
          }
        }
      }

      else if (v11 == 4)
      {
        if (v8 == 34)
        {
          *(a1 + 16) |= 4u;
          v29 = *(a1 + 80);
          if (!v29)
          {
            v30 = *(a1 + 8);
            v31 = (v30 & 0xFFFFFFFFFFFFFFFCLL);
            if (v30)
            {
              v31 = *v31;
            }

            v29 = sub_16F5828(v31);
            *(a1 + 80) = v29;
            v7 = *v46;
          }

          v28 = sub_21F4D60(a3, v29, v7);
          goto LABEL_84;
        }
      }

      else if (v11 == 5 && v8 == 40)
      {
        v13 = v7 + 1;
        v12 = *v7;
        if (v12 < 0)
        {
          v14 = *v13;
          v12 = (v14 << 7) + v12 - 128;
          if (v14 < 0)
          {
            *v46 = sub_19587DC(v7, v12);
            if (!*v46)
            {
              goto LABEL_91;
            }

            goto LABEL_16;
          }

          v13 = v7 + 2;
        }

        *v46 = v13;
LABEL_16:
        if (v12 > 2)
        {
          sub_1313700();
        }

        else
        {
          *(a1 + 16) |= 0x10u;
          *(a1 + 96) = v12;
        }

        goto LABEL_85;
      }

      goto LABEL_77;
    }

    if (v11 == 1)
    {
      break;
    }

    if (v11 == 2)
    {
      if (v8 == 18)
      {
        *(a1 + 16) |= 2u;
        v38 = *(a1 + 72);
        if (!v38)
        {
          v39 = *(a1 + 8);
          v40 = (v39 & 0xFFFFFFFFFFFFFFFCLL);
          if (v39)
          {
            v40 = *v40;
          }

          v38 = sub_15B234C(v40);
          *(a1 + 72) = v38;
          v7 = *v46;
        }

        v28 = sub_221ECFC(a3, v38, v7);
        goto LABEL_84;
      }

      goto LABEL_77;
    }

    if (v11 != 3 || v8 != 24)
    {
      goto LABEL_77;
    }

    v5 |= 8u;
    v17 = v7 + 1;
    v16 = *v7;
    if ((v16 & 0x8000000000000000) == 0)
    {
      goto LABEL_28;
    }

    v18 = *v17;
    v16 = (v18 << 7) + v16 - 128;
    if ((v18 & 0x80000000) == 0)
    {
      v17 = v7 + 2;
LABEL_28:
      *v46 = v17;
      *(a1 + 88) = v16;
      goto LABEL_85;
    }

    v41 = sub_19587DC(v7, v16);
    *v46 = v41;
    *(a1 + 88) = v42;
    if (!v41)
    {
      goto LABEL_91;
    }

LABEL_85:
    if (sub_195ADC0(a3, v46, a3[11].u32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v8 == 10)
  {
    *(a1 + 16) |= 1u;
    v25 = *(a1 + 8);
    v26 = (v25 & 0xFFFFFFFFFFFFFFFCLL);
    if (v25)
    {
      v26 = *v26;
    }

    v27 = sub_194DB04((a1 + 64), v26);
    v28 = sub_1958890(v27, *v46, a3);
LABEL_84:
    *v46 = v28;
    if (!v28)
    {
      goto LABEL_91;
    }

    goto LABEL_85;
  }

LABEL_77:
  if (v8)
  {
    v43 = (v8 & 7) == 4;
  }

  else
  {
    v43 = 1;
  }

  if (!v43)
  {
    v44 = *(a1 + 8);
    if (v44)
    {
      v45 = (v44 & 0xFFFFFFFFFFFFFFFCLL) + 8;
    }

    else
    {
      v45 = sub_11F1920((a1 + 8));
      v7 = *v46;
    }

    v28 = sub_1952690(v8, v45, v7, a3);
    goto LABEL_84;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_91:
  *v46 = 0;
LABEL_2:
  *(a1 + 16) |= v5;
  return *v46;
}

char *sub_1584F0C(uint64_t a1, char *a2, unint64_t *a3)
{
  v4 = a2;
  v6 = *(a1 + 16);
  if ((v6 & 1) == 0)
  {
    if ((v6 & 2) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    if (*a3 <= v4)
    {
      v4 = sub_225EB68(a3, v4);
    }

    v8 = *(a1 + 72);
    *v4 = 18;
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

    v4 = sub_15B1F3C(v8, v10, a3);
    if ((v6 & 8) == 0)
    {
      goto LABEL_4;
    }

    goto LABEL_12;
  }

  v4 = sub_128AEEC(a3, 1, (*(a1 + 64) & 0xFFFFFFFFFFFFFFFELL), a2);
  if ((v6 & 2) != 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  if ((v6 & 8) == 0)
  {
LABEL_4:
    v7 = v4;
    goto LABEL_19;
  }

LABEL_12:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v11 = *(a1 + 88);
  *v4 = 24;
  v4[1] = v11;
  if (v11 > 0x7F)
  {
    v4[1] = v11 | 0x80;
    v12 = v11 >> 7;
    v4[2] = v11 >> 7;
    v7 = v4 + 3;
    if (v11 >= 0x4000)
    {
      LOBYTE(v13) = v4[2];
      do
      {
        *(v7 - 1) = v13 | 0x80;
        v13 = v12 >> 7;
        *v7++ = v12 >> 7;
        v14 = v12 >> 14;
        v12 >>= 7;
      }

      while (v14);
    }
  }

  else
  {
    v7 = v4 + 2;
  }

LABEL_19:
  if ((v6 & 4) != 0)
  {
    if (*a3 <= v7)
    {
      v7 = sub_225EB68(a3, v7);
    }

    v15 = *(a1 + 80);
    *v7 = 34;
    v16 = *(v15 + 44);
    v7[1] = v16;
    if (v16 > 0x7F)
    {
      v17 = sub_19575D0(v16, v7 + 1);
    }

    else
    {
      v17 = v7 + 2;
    }

    v7 = sub_16E5070(v15, v17, a3);
  }

  if ((v6 & 0x10) != 0)
  {
    if (*a3 <= v7)
    {
      v7 = sub_225EB68(a3, v7);
    }

    v19 = *(a1 + 96);
    *v7 = 40;
    v7[1] = v19;
    if (v19 > 0x7F)
    {
      v7[1] = v19 | 0x80;
      v20 = v19 >> 7;
      v7[2] = v19 >> 7;
      v18 = v7 + 3;
      if (v19 >= 0x4000)
      {
        LOBYTE(v7) = v7[2];
        do
        {
          *(v18 - 1) = v7 | 0x80;
          v7 = (v20 >> 7);
          *v18++ = v20 >> 7;
          v21 = v20 >> 14;
          v20 >>= 7;
        }

        while (v21);
      }
    }

    else
    {
      v18 = v7 + 2;
    }
  }

  else
  {
    v18 = v7;
  }

  v22 = *(a1 + 24);
  if (v22 < 1)
  {
    v25 = v18;
  }

  else
  {
    for (i = 0; i != v22; ++i)
    {
      if (*a3 <= v18)
      {
        v18 = sub_225EB68(a3, v18);
      }

      v24 = *(*(a1 + 32) + 8 * i);
      *v18 = 48;
      v18[1] = v24;
      if (v24 > 0x7F)
      {
        v18[1] = v24 | 0x80;
        v26 = v24 >> 7;
        v18[2] = v24 >> 7;
        v25 = v18 + 3;
        if (v24 >= 0x4000)
        {
          LOBYTE(v18) = v18[2];
          do
          {
            *(v25 - 1) = v18 | 0x80;
            v18 = (v26 >> 7);
            *v25++ = v26 >> 7;
            v27 = v26 >> 14;
            v26 >>= 7;
          }

          while (v27);
        }
      }

      else
      {
        v25 = v18 + 2;
      }

      v18 = v25;
    }
  }

  v28 = *(a1 + 48);
  if (v28)
  {
    for (j = 0; j != v28; ++j)
    {
      if (*a3 <= v25)
      {
        v25 = sub_225EB68(a3, v25);
      }

      v30 = *(*(a1 + 56) + 8 * j + 8);
      *v25 = 58;
      v31 = *(v30 + 20);
      v25[1] = v31;
      if (v31 > 0x7F)
      {
        v32 = sub_19575D0(v31, v25 + 1);
      }

      else
      {
        v32 = v25 + 2;
      }

      v25 = sub_157FCC0(v30, v32, a3);
    }
  }

  v33 = *(a1 + 8);
  if ((v33 & 1) == 0)
  {
    return v25;
  }

  v35 = v33 & 0xFFFFFFFFFFFFFFFCLL;
  v36 = *(v35 + 31);
  if (v36 < 0)
  {
    v37 = *(v35 + 8);
    v36 = *(v35 + 16);
  }

  else
  {
    v37 = (v35 + 8);
  }

  if ((*a3 - v25) >= v36)
  {
    v38 = v36;
    memcpy(v25, v37, v36);
    v25 += v38;
    return v25;
  }

  return sub_1957130(a3, v37, v36, v25);
}

uint64_t sub_15852F4(uint64_t a1)
{
  v2 = sub_1959F14((a1 + 24));
  v3 = *(a1 + 48);
  v4 = v2 + *(a1 + 24) + v3;
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
      v9 = sub_157FE84(v8);
      v4 += v9 + ((9 * (__clz(v9 | 1) ^ 0x1F) + 73) >> 6);
      v7 -= 8;
    }

    while (v7);
  }

  v10 = *(a1 + 16);
  if ((v10 & 0x1F) != 0)
  {
    if (v10)
    {
      v11 = *(a1 + 64) & 0xFFFFFFFFFFFFFFFELL;
      v12 = *(v11 + 23);
      v13 = *(v11 + 8);
      if ((v12 & 0x80u) == 0)
      {
        v13 = v12;
      }

      v4 += v13 + ((9 * (__clz(v13 | 1) ^ 0x1F) + 73) >> 6) + 1;
      if ((v10 & 2) == 0)
      {
LABEL_10:
        if ((v10 & 4) == 0)
        {
          goto LABEL_11;
        }

        goto LABEL_18;
      }
    }

    else if ((v10 & 2) == 0)
    {
      goto LABEL_10;
    }

    v14 = sub_15B20A0(*(a1 + 72));
    v4 += v14 + ((9 * (__clz(v14 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v10 & 4) == 0)
    {
LABEL_11:
      if ((v10 & 8) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_19;
    }

LABEL_18:
    v15 = sub_16E51F0(*(a1 + 80));
    v4 += v15 + ((9 * (__clz(v15 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v10 & 8) == 0)
    {
LABEL_12:
      if ((v10 & 0x10) == 0)
      {
        goto LABEL_24;
      }

      goto LABEL_20;
    }

LABEL_19:
    v4 += ((9 * (__clz(*(a1 + 88) | 1) ^ 0x3F) + 73) >> 6) + 1;
    if ((v10 & 0x10) == 0)
    {
      goto LABEL_24;
    }

LABEL_20:
    v16 = *(a1 + 96);
    if (v16 < 0)
    {
      v17 = 11;
    }

    else
    {
      v17 = ((9 * (__clz(v16 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    v4 += v17;
  }

LABEL_24:
  v18 = *(a1 + 8);
  if (v18)
  {
    v20 = v18 & 0xFFFFFFFFFFFFFFFCLL;
    v21 = *((v18 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v21 < 0)
    {
      v21 = *(v20 + 16);
    }

    v4 += v21;
  }

  *(a1 + 20) = v4;
  return v4;
}

void sub_15854C4(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  if (v4)
  {
    v5 = (a1 + 24);
    v6 = *(a1 + 24);
    sub_1959094((a1 + 24), v6 + v4);
    v7 = *(a1 + 32);
    *v5 += *(a2 + 24);
    memcpy((v7 + 8 * v6), *(a2 + 32), 8 * *(a2 + 24));
  }

  v8 = *(a2 + 48);
  if (v8)
  {
    v9 = *(a2 + 56);
    v10 = sub_19592E8(a1 + 40, *(a2 + 48));
    sub_15B59B4((a1 + 40), v10, (v9 + 8), v8, **(a1 + 56) - *(a1 + 48));
    v11 = *(a1 + 48) + v8;
    *(a1 + 48) = v11;
    v12 = *(a1 + 56);
    if (*v12 < v11)
    {
      *v12 = v11;
    }
  }

  v13 = *(a2 + 16);
  if ((v13 & 0x1F) != 0)
  {
    if (v13)
    {
      v15 = *(a2 + 64);
      *(a1 + 16) |= 1u;
      v16 = *(a1 + 8);
      v17 = (v16 & 0xFFFFFFFFFFFFFFFCLL);
      if (v16)
      {
        v17 = *v17;
      }

      sub_194EA1C((a1 + 64), (v15 & 0xFFFFFFFFFFFFFFFELL), v17);
      if ((v13 & 2) == 0)
      {
LABEL_9:
        if ((v13 & 4) == 0)
        {
          goto LABEL_10;
        }

        goto LABEL_29;
      }
    }

    else if ((v13 & 2) == 0)
    {
      goto LABEL_9;
    }

    *(a1 + 16) |= 2u;
    v18 = *(a1 + 72);
    if (!v18)
    {
      v19 = *(a1 + 8);
      v20 = (v19 & 0xFFFFFFFFFFFFFFFCLL);
      if (v19)
      {
        v20 = *v20;
      }

      v18 = sub_15B234C(v20);
      *(a1 + 72) = v18;
    }

    if (*(a2 + 72))
    {
      v21 = *(a2 + 72);
    }

    else
    {
      v21 = &off_27789A0;
    }

    sub_1581C8C(v18, v21);
    if ((v13 & 4) == 0)
    {
LABEL_10:
      if ((v13 & 8) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_37;
    }

LABEL_29:
    *(a1 + 16) |= 4u;
    v22 = *(a1 + 80);
    if (!v22)
    {
      v23 = *(a1 + 8);
      v24 = (v23 & 0xFFFFFFFFFFFFFFFCLL);
      if (v23)
      {
        v24 = *v24;
      }

      v22 = sub_16F5828(v24);
      *(a1 + 80) = v22;
    }

    if (*(a2 + 80))
    {
      v25 = *(a2 + 80);
    }

    else
    {
      v25 = &off_277E5E8;
    }

    sub_16E527C(v22, v25);
    if ((v13 & 8) == 0)
    {
LABEL_11:
      if ((v13 & 0x10) == 0)
      {
LABEL_13:
        *(a1 + 16) |= v13;
        goto LABEL_14;
      }

LABEL_12:
      *(a1 + 96) = *(a2 + 96);
      goto LABEL_13;
    }

LABEL_37:
    *(a1 + 88) = *(a2 + 88);
    if ((v13 & 0x10) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

LABEL_14:
  v14 = *(a2 + 8);
  if (v14)
  {

    sub_1957EF4((a1 + 8), (v14 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

uint64_t sub_15856D4(uint64_t a1)
{
  v2 = *(a1 + 16);
  if ((v2 & 2) != 0)
  {
    v4 = *(a1 + 72);
    v5 = *(v4 + 32);
    v6 = *(v4 + 40);
    while (v5 >= 1)
    {
      v7 = v5 - 1;
      v8 = sub_15B16F0(*(v6 + 8 * v5));
      v5 = v7;
      if (!v8)
      {
        return 0;
      }
    }
  }

  if ((v2 & 4) == 0)
  {
    return 1;
  }

  result = sub_16E5370(*(a1 + 80));
  if (result)
  {
    return 1;
  }

  return result;
}

uint64_t sub_1585758(uint64_t a1)
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

  v5 = (a1 + 24);
  if (*(a1 + 24) != &qword_278E990)
  {
    sub_194E89C(v5);
  }

  if (a1 != &off_2777B38)
  {
    v6 = *(a1 + 32);
    if (v6)
    {
      sub_15B1C80(v6);
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

void sub_1585824(uint64_t a1)
{
  sub_1585758(a1);

  operator delete();
}

uint64_t sub_158585C(uint64_t result)
{
  v1 = result;
  v2 = *(result + 16);
  if ((v2 & 3) != 0)
  {
    if ((v2 & 1) == 0)
    {
      goto LABEL_5;
    }

    v3 = *(result + 24) & 0xFFFFFFFFFFFFFFFELL;
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
      result = sub_1580044(*(result + 32));
    }
  }

LABEL_7:
  v5 = *(v1 + 8);
  v4 = v1 + 8;
  *(v4 + 8) = 0;
  if (v5)
  {

    return sub_1957EA8(v4);
  }

  return result;
}

uint64_t sub_15858F0(uint64_t a1, uint64_t a2, int32x2_t *a3)
{
  *v22 = a2;
  for (i = a3[11].u32[1]; (sub_195ADC0(a3, v22, i) & 1) == 0; i = a3[11].u32[1])
  {
    v6 = (*v22 + 1);
    v7 = **v22;
    if (**v22 < 0)
    {
      v8 = v7 + (*v6 << 7);
      v7 = v8 - 128;
      if (*v6 < 0)
      {
        v6 = sub_1958824(*v22, v8 - 128);
        v7 = v9;
      }

      else
      {
        v6 = (*v22 + 2);
      }
    }

    *v22 = v6;
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

          v15 = sub_15B234C(v17);
          *(a1 + 32) = v15;
          v6 = *v22;
        }

        v14 = sub_221ECFC(a3, v15, v6);
        goto LABEL_28;
      }
    }

    else if (v7 >> 3 == 1 && v7 == 10)
    {
      *(a1 + 16) |= 1u;
      v18 = *(a1 + 8);
      v19 = (v18 & 0xFFFFFFFFFFFFFFFCLL);
      if (v18)
      {
        v19 = *v19;
      }

      v20 = sub_194DB04((a1 + 24), v19);
      v14 = sub_1958890(v20, *v22, a3);
      goto LABEL_28;
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
        return *v22;
      }

LABEL_34:
      *v22 = 0;
      return *v22;
    }

    v12 = *(a1 + 8);
    if (v12)
    {
      v13 = (v12 & 0xFFFFFFFFFFFFFFFCLL) + 8;
    }

    else
    {
      v13 = sub_11F1920((a1 + 8));
      v6 = *v22;
    }

    v14 = sub_1952690(v7, v13, v6, a3);
LABEL_28:
    *v22 = v14;
    if (!v14)
    {
      goto LABEL_34;
    }
  }

  return *v22;
}

char *sub_1585A8C(uint64_t a1, char *__dst, unint64_t *a3)
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

    v7 = *(a1 + 32);
    *v4 = 18;
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

    v4 = sub_15B1F3C(v7, v9, a3);
  }

  v10 = *(a1 + 8);
  if ((v10 & 1) == 0)
  {
    return v4;
  }

  v12 = v10 & 0xFFFFFFFFFFFFFFFCLL;
  v13 = *(v12 + 31);
  if (v13 < 0)
  {
    v14 = *(v12 + 8);
    v13 = *(v12 + 16);
  }

  else
  {
    v14 = (v12 + 8);
  }

  if ((*a3 - v4) >= v13)
  {
    v15 = v13;
    memcpy(v4, v14, v13);
    v4 += v15;
    return v4;
  }

  return sub_1957130(a3, v14, v13, v4);
}

uint64_t sub_1585BB8(uint64_t a1)
{
  v2 = *(a1 + 16);
  if ((v2 & 3) == 0)
  {
    v3 = 0;
    goto LABEL_10;
  }

  if ((v2 & 1) == 0)
  {
    v3 = 0;
    if ((v2 & 2) == 0)
    {
      goto LABEL_10;
    }

LABEL_9:
    v7 = sub_15B20A0(*(a1 + 32));
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
  v8 = *(a1 + 8);
  if (v8)
  {
    v10 = v8 & 0xFFFFFFFFFFFFFFFCLL;
    v11 = *((v8 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v11 < 0)
    {
      v11 = *(v10 + 16);
    }

    v3 += v11;
  }

  *(a1 + 20) = v3;
  return v3;
}

void sub_1585C94(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  if ((v4 & 3) != 0)
  {
    if (v4)
    {
      v5 = *(a2 + 24);
      *(a1 + 16) |= 1u;
      v6 = *(a1 + 8);
      v7 = (v6 & 0xFFFFFFFFFFFFFFFCLL);
      if (v6)
      {
        v7 = *v7;
      }

      sub_194EA1C((a1 + 24), (v5 & 0xFFFFFFFFFFFFFFFELL), v7);
    }

    if ((v4 & 2) != 0)
    {
      *(a1 + 16) |= 2u;
      v8 = *(a1 + 32);
      if (!v8)
      {
        v9 = *(a1 + 8);
        v10 = (v9 & 0xFFFFFFFFFFFFFFFCLL);
        if (v9)
        {
          v10 = *v10;
        }

        v8 = sub_15B234C(v10);
        *(a1 + 32) = v8;
      }

      if (*(a2 + 32))
      {
        v11 = *(a2 + 32);
      }

      else
      {
        v11 = &off_27789A0;
      }

      sub_1581C8C(v8, v11);
    }
  }

  v12 = *(a2 + 8);
  if (v12)
  {

    sub_1957EF4((a1 + 8), (v12 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

BOOL sub_1585D80(uint64_t a1)
{
  if ((*(a1 + 16) & 2) == 0)
  {
    return 1;
  }

  v2 = *(a1 + 32);
  v3 = *(v2 + 32);
  v4 = *(v2 + 40);
  do
  {
    v1 = v3 < 1;
    if (v3 < 1)
    {
      break;
    }

    v5 = v3 - 1;
    v6 = sub_15B16F0(*(v4 + 8 * v3));
    v3 = v5;
  }

  while (v6);
  return v1;
}

uint64_t sub_1585DF4(uint64_t a1)
{
  v3 = (a1 + 8);
  v2 = *(a1 + 8);
  v4 = (v2 & 0xFFFFFFFFFFFFFFFCLL);
  if (v2)
  {
    if (*v4)
    {
      goto LABEL_12;
    }
  }

  else if (v4)
  {
    goto LABEL_12;
  }

  if (a1 != &off_2777B60)
  {
    v5 = *(a1 + 24);
    if (v5)
    {
      sub_16E5B34(v5);
      operator delete();
    }

    v6 = *(a1 + 32);
    if (v6)
    {
      sub_16E4E08(v6);
      operator delete();
    }

    v7 = *(a1 + 40);
    if (v7)
    {
      sub_16E5B34(v7);
      operator delete();
    }
  }

  if (*v3)
  {
    sub_11F19CC(v3);
  }

LABEL_12:
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_1585EE4(uint64_t a1)
{
  sub_1585DF4(a1);

  operator delete();
}

unsigned __int8 *sub_1585F1C(unsigned __int8 *result)
{
  v1 = result;
  v2 = *(result + 4);
  if ((v2 & 7) != 0)
  {
    if (v2)
    {
      result = sub_16E5B70(*(result + 3));
      if ((v2 & 2) == 0)
      {
LABEL_4:
        if ((v2 & 4) == 0)
        {
          goto LABEL_6;
        }

        goto LABEL_5;
      }
    }

    else if ((v2 & 2) == 0)
    {
      goto LABEL_4;
    }

    result = sub_16E4E44(*(v1 + 32));
    if ((v2 & 4) != 0)
    {
LABEL_5:
      result = sub_16E5B70(*(v1 + 40));
    }
  }

LABEL_6:
  if ((v2 & 0xF8) != 0)
  {
    *(v1 + 48) = 0;
    *(v1 + 56) = 0;
    *(v1 + 64) = 0;
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

char *sub_1585FB4(uint64_t a1, char *a2, int32x2_t *a3)
{
  v45 = a2;
  v5 = 0;
  if (sub_195ADC0(a3, &v45, a3[11].u32[1]))
  {
    goto LABEL_2;
  }

  while (1)
  {
    v7 = v45 + 1;
    v8 = *v45;
    if (*v45 < 0)
    {
      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if (*v7 < 0)
      {
        v7 = sub_1958824(v45, v9 - 128);
        v8 = v10;
      }

      else
      {
        v7 = v45 + 2;
      }
    }

    v45 = v7;
    v11 = v8 >> 3;
    if (v8 >> 3 <= 5)
    {
      if (v8 >> 3 <= 2)
      {
        if (v11 == 1)
        {
          if (v8 == 10)
          {
            *(a1 + 16) |= 1u;
            v20 = *(a1 + 24);
            if (!v20)
            {
              v24 = *(a1 + 8);
              v25 = (v24 & 0xFFFFFFFFFFFFFFFCLL);
              if (v24)
              {
                v25 = *v25;
              }

              sub_16F58FC(v25);
              v20 = v26;
              *(a1 + 24) = v26;
              goto LABEL_44;
            }

            goto LABEL_45;
          }
        }

        else if (v11 == 2 && v8 == 18)
        {
          *(a1 + 16) |= 2u;
          v13 = *(a1 + 32);
          if (!v13)
          {
            v14 = *(a1 + 8);
            v15 = (v14 & 0xFFFFFFFFFFFFFFFCLL);
            if (v14)
            {
              v15 = *v15;
            }

            v13 = sub_16F5828(v15);
            *(a1 + 32) = v13;
            v7 = v45;
          }

          v16 = sub_21F4D60(a3, v13, v7);
          goto LABEL_70;
        }

        goto LABEL_63;
      }

      if (v11 != 3)
      {
        if (v11 == 5 && v8 == 41)
        {
          v5 |= 8u;
          *(a1 + 48) = *v7;
          v45 = v7 + 8;
          goto LABEL_71;
        }

        goto LABEL_63;
      }

      if (v8 != 24)
      {
        goto LABEL_63;
      }

      v31 = v7 + 1;
      v30 = *v7;
      if (v30 < 0)
      {
        v32 = *v31;
        v30 = (v32 << 7) + v30 - 128;
        if (v32 < 0)
        {
          v45 = sub_19587DC(v7, v30);
          if (!v45)
          {
            goto LABEL_85;
          }

          goto LABEL_56;
        }

        v31 = v7 + 2;
      }

      v45 = v31;
LABEL_56:
      if (v30 > 3)
      {
        sub_1313740();
      }

      else
      {
        *(a1 + 16) |= 0x10u;
        *(a1 + 56) = v30;
      }

      goto LABEL_71;
    }

    if (v8 >> 3 > 7)
    {
      break;
    }

    if (v11 == 6)
    {
      if (v8 != 48)
      {
        goto LABEL_63;
      }

      v5 |= 0x20u;
      v28 = v7 + 1;
      v27 = *v7;
      if ((v27 & 0x8000000000000000) == 0)
      {
        goto LABEL_50;
      }

      v29 = *v28;
      v27 = (v29 << 7) + v27 - 128;
      if ((v29 & 0x80000000) == 0)
      {
        v28 = v7 + 2;
LABEL_50:
        v45 = v28;
        *(a1 + 60) = v27 != 0;
        goto LABEL_71;
      }

      v39 = sub_19587DC(v7, v27);
      v45 = v39;
      *(a1 + 60) = v40 != 0;
      if (!v39)
      {
        goto LABEL_85;
      }
    }

    else
    {
      if (v11 != 7 || v8 != 56)
      {
        goto LABEL_63;
      }

      v5 |= 0x80u;
      v18 = v7 + 1;
      v17 = *v7;
      if ((v17 & 0x8000000000000000) == 0)
      {
        goto LABEL_27;
      }

      v19 = *v18;
      v17 = (v19 << 7) + v17 - 128;
      if ((v19 & 0x80000000) == 0)
      {
        v18 = v7 + 2;
LABEL_27:
        v45 = v18;
        *(a1 + 64) = v17;
        goto LABEL_71;
      }

      v43 = sub_19587DC(v7, v17);
      v45 = v43;
      *(a1 + 64) = v44;
      if (!v43)
      {
        goto LABEL_85;
      }
    }

LABEL_71:
    if (sub_195ADC0(a3, &v45, a3[11].u32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v11 == 8)
  {
    if (v8 != 64)
    {
      goto LABEL_63;
    }

    v5 |= 0x40u;
    v34 = v7 + 1;
    v33 = *v7;
    if ((v33 & 0x8000000000000000) == 0)
    {
      goto LABEL_62;
    }

    v35 = *v34;
    v33 = (v35 << 7) + v33 - 128;
    if ((v35 & 0x80000000) == 0)
    {
      v34 = v7 + 2;
LABEL_62:
      v45 = v34;
      *(a1 + 61) = v33 != 0;
      goto LABEL_71;
    }

    v41 = sub_19587DC(v7, v33);
    v45 = v41;
    *(a1 + 61) = v42 != 0;
    if (!v41)
    {
      goto LABEL_85;
    }

    goto LABEL_71;
  }

  if (v11 == 9 && v8 == 74)
  {
    *(a1 + 16) |= 4u;
    v20 = *(a1 + 40);
    if (!v20)
    {
      v21 = *(a1 + 8);
      v22 = (v21 & 0xFFFFFFFFFFFFFFFCLL);
      if (v21)
      {
        v22 = *v22;
      }

      sub_16F58FC(v22);
      v20 = v23;
      *(a1 + 40) = v23;
LABEL_44:
      v7 = v45;
    }

LABEL_45:
    v16 = sub_21F86E8(a3, v20, v7);
LABEL_70:
    v45 = v16;
    if (!v16)
    {
      goto LABEL_85;
    }

    goto LABEL_71;
  }

LABEL_63:
  if (v8)
  {
    v36 = (v8 & 7) == 4;
  }

  else
  {
    v36 = 1;
  }

  if (!v36)
  {
    v37 = *(a1 + 8);
    if (v37)
    {
      v38 = (v37 & 0xFFFFFFFFFFFFFFFCLL) + 8;
    }

    else
    {
      v38 = sub_11F1920((a1 + 8));
      v7 = v45;
    }

    v16 = sub_1952690(v8, v38, v7, a3);
    goto LABEL_70;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_85:
  v45 = 0;
LABEL_2:
  *(a1 + 16) |= v5;
  return v45;
}

char *sub_15863D4(uint64_t a1, char *__dst, unint64_t *a3)
{
  v4 = __dst;
  v6 = *(a1 + 16);
  if ((v6 & 1) == 0)
  {
    if ((v6 & 2) == 0)
    {
      goto LABEL_3;
    }

LABEL_11:
    if (*a3 <= v4)
    {
      v4 = sub_225EB68(a3, v4);
    }

    v11 = *(a1 + 32);
    *v4 = 18;
    v12 = *(v11 + 44);
    v4[1] = v12;
    if (v12 > 0x7F)
    {
      v13 = sub_19575D0(v12, v4 + 1);
    }

    else
    {
      v13 = v4 + 2;
    }

    v4 = sub_16E5070(v11, v13, a3);
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_4;
    }

    goto LABEL_17;
  }

  if (*a3 <= __dst)
  {
    v4 = sub_225EB68(a3, __dst);
  }

  v8 = *(a1 + 24);
  *v4 = 10;
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

  v4 = sub_16E5FE0(v8, v10, a3);
  if ((v6 & 2) != 0)
  {
    goto LABEL_11;
  }

LABEL_3:
  if ((v6 & 0x10) == 0)
  {
LABEL_4:
    v7 = v4;
    goto LABEL_24;
  }

LABEL_17:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v14 = *(a1 + 56);
  *v4 = 24;
  v4[1] = v14;
  if (v14 > 0x7F)
  {
    v4[1] = v14 | 0x80;
    v15 = v14 >> 7;
    v4[2] = v14 >> 7;
    v7 = v4 + 3;
    if (v14 >= 0x4000)
    {
      LOBYTE(v4) = v4[2];
      do
      {
        *(v7 - 1) = v4 | 0x80;
        v4 = (v15 >> 7);
        *v7++ = v15 >> 7;
        v16 = v15 >> 14;
        v15 >>= 7;
      }

      while (v16);
    }
  }

  else
  {
    v7 = v4 + 2;
  }

LABEL_24:
  if ((v6 & 8) == 0)
  {
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_26;
    }

LABEL_31:
    if (*a3 <= v7)
    {
      v7 = sub_225EB68(a3, v7);
    }

    v19 = *(a1 + 60);
    *v7 = 48;
    v7[1] = v19;
    v7 += 2;
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_34;
  }

  if (*a3 <= v7)
  {
    v7 = sub_225EB68(a3, v7);
  }

  v18 = *(a1 + 48);
  *v7 = 41;
  *(v7 + 1) = v18;
  v7 += 9;
  if ((v6 & 0x20) != 0)
  {
    goto LABEL_31;
  }

LABEL_26:
  if ((v6 & 0x80) == 0)
  {
LABEL_27:
    v17 = v7;
    goto LABEL_41;
  }

LABEL_34:
  if (*a3 <= v7)
  {
    v7 = sub_225EB68(a3, v7);
  }

  v20 = *(a1 + 64);
  *v7 = 56;
  v7[1] = v20;
  if (v20 > 0x7F)
  {
    v7[1] = v20 | 0x80;
    v21 = v20 >> 7;
    v7[2] = v20 >> 7;
    v17 = v7 + 3;
    if (v20 >= 0x4000)
    {
      LOBYTE(v22) = v7[2];
      do
      {
        *(v17 - 1) = v22 | 0x80;
        v22 = v21 >> 7;
        *v17++ = v21 >> 7;
        v23 = v21 >> 14;
        v21 >>= 7;
      }

      while (v23);
    }
  }

  else
  {
    v17 = v7 + 2;
  }

LABEL_41:
  if ((v6 & 0x40) != 0)
  {
    if (*a3 <= v17)
    {
      v17 = sub_225EB68(a3, v17);
    }

    v24 = *(a1 + 61);
    *v17 = 64;
    v17[1] = v24;
    v17 += 2;
  }

  if ((v6 & 4) != 0)
  {
    if (*a3 <= v17)
    {
      v17 = sub_225EB68(a3, v17);
    }

    v25 = *(a1 + 40);
    *v17 = 74;
    v26 = *(v25 + 20);
    v17[1] = v26;
    if (v26 > 0x7F)
    {
      v27 = sub_19575D0(v26, v17 + 1);
    }

    else
    {
      v27 = v17 + 2;
    }

    v17 = sub_16E5FE0(v25, v27, a3);
  }

  v28 = *(a1 + 8);
  if ((v28 & 1) == 0)
  {
    return v17;
  }

  v30 = v28 & 0xFFFFFFFFFFFFFFFCLL;
  v31 = *(v30 + 31);
  if (v31 < 0)
  {
    v32 = *(v30 + 8);
    v31 = *(v30 + 16);
  }

  else
  {
    v32 = (v30 + 8);
  }

  if ((*a3 - v17) >= v31)
  {
    v33 = v31;
    memcpy(v17, v32, v31);
    v17 += v33;
    return v17;
  }

  return sub_1957130(a3, v32, v31, v17);
}

uint64_t sub_1586764(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    result = 0;
    goto LABEL_19;
  }

  if ((v2 & 1) == 0)
  {
    v3 = 0;
    if ((v2 & 2) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v5 = sub_16E62F4(*(a1 + 24));
  v3 = v5 + ((9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 2) != 0)
  {
LABEL_7:
    v6 = sub_16E51F0(*(a1 + 32));
    v3 += v6 + ((9 * (__clz(v6 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_8:
  if ((v2 & 4) != 0)
  {
    v7 = sub_16E62F4(*(a1 + 40));
    v3 += v7 + ((9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  v8 = v3 + 9;
  if ((v2 & 8) == 0)
  {
    v8 = v3;
  }

  if ((v2 & 0x10) != 0)
  {
    v9 = *(a1 + 56);
    v10 = ((9 * (__clz(v9 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if (v9 >= 0)
    {
      v11 = v10;
    }

    else
    {
      v11 = 11;
    }

    v8 += v11;
  }

  result = v8 + ((v2 >> 5) & 2) + ((v2 >> 4) & 2);
  if ((v2 & 0x80) != 0)
  {
    result += ((9 * (__clz(*(a1 + 64) | 1) ^ 0x3F) + 73) >> 6) + 1;
  }

LABEL_19:
  v12 = *(a1 + 8);
  if (v12)
  {
    v13 = v12 & 0xFFFFFFFFFFFFFFFCLL;
    v14 = *((v12 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v14 < 0)
    {
      v14 = *(v13 + 16);
    }

    result += v14;
  }

  *(a1 + 20) = result;
  return result;
}

void sub_15868DC(uint64_t result, uint64_t a2)
{
  v4 = *(a2 + 16);
  if (v4)
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

        sub_16F58FC(v8);
        *(result + 24) = v6;
      }

      if (*(a2 + 24))
      {
        v9 = *(a2 + 24);
      }

      else
      {
        v9 = &off_277E650;
      }

      sub_16E645C(v6, v9);
      if ((v4 & 2) == 0)
      {
LABEL_4:
        if ((v4 & 4) == 0)
        {
          goto LABEL_5;
        }

        goto LABEL_32;
      }
    }

    else if ((v4 & 2) == 0)
    {
      goto LABEL_4;
    }

    *(result + 16) |= 2u;
    v10 = *(result + 32);
    if (!v10)
    {
      v11 = *(result + 8);
      v12 = (v11 & 0xFFFFFFFFFFFFFFFCLL);
      if (v11)
      {
        v12 = *v12;
      }

      v10 = sub_16F5828(v12);
      *(result + 32) = v10;
    }

    if (*(a2 + 32))
    {
      v13 = *(a2 + 32);
    }

    else
    {
      v13 = &off_277E5E8;
    }

    sub_16E527C(v10, v13);
    if ((v4 & 4) == 0)
    {
LABEL_5:
      if ((v4 & 8) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_40;
    }

LABEL_32:
    *(result + 16) |= 4u;
    v14 = *(result + 40);
    if (!v14)
    {
      v15 = *(result + 8);
      v16 = (v15 & 0xFFFFFFFFFFFFFFFCLL);
      if (v15)
      {
        v16 = *v16;
      }

      sub_16F58FC(v16);
      *(result + 40) = v14;
    }

    if (*(a2 + 40))
    {
      v17 = *(a2 + 40);
    }

    else
    {
      v17 = &off_277E650;
    }

    sub_16E645C(v14, v17);
    if ((v4 & 8) == 0)
    {
LABEL_6:
      if ((v4 & 0x10) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_41;
    }

LABEL_40:
    *(result + 48) = *(a2 + 48);
    if ((v4 & 0x10) == 0)
    {
LABEL_7:
      if ((v4 & 0x20) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_42;
    }

LABEL_41:
    *(result + 56) = *(a2 + 56);
    if ((v4 & 0x20) == 0)
    {
LABEL_8:
      if ((v4 & 0x40) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_43;
    }

LABEL_42:
    *(result + 60) = *(a2 + 60);
    if ((v4 & 0x40) == 0)
    {
LABEL_9:
      if ((v4 & 0x80) == 0)
      {
LABEL_11:
        *(result + 16) |= v4;
        goto LABEL_12;
      }

LABEL_10:
      *(result + 64) = *(a2 + 64);
      goto LABEL_11;
    }

LABEL_43:
    *(result + 61) = *(a2 + 61);
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

    sub_1957EF4((result + 8), (v5 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

uint64_t sub_1586A8C(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    result = sub_16E6614(*(a1 + 24));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 2) != 0)
  {
    result = sub_16E5370(*(a1 + 32));
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

  result = sub_16E6614(*(a1 + 40));
  if (result)
  {
    return 1;
  }

  return result;
}

uint64_t sub_1586AFC(uint64_t a1)
{
  v3 = (a1 + 8);
  v2 = *(a1 + 8);
  v4 = (v2 & 0xFFFFFFFFFFFFFFFCLL);
  if (v2)
  {
    if (*v4)
    {
      goto LABEL_16;
    }
  }

  else if (v4)
  {
    goto LABEL_16;
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

  if (*(a1 + 40) != &qword_278E990)
  {
    sub_194E89C((a1 + 40));
  }

  if (a1 != &off_2777BA8)
  {
    v6 = *(a1 + 48);
    if (v6)
    {
      sub_15B1C80(v6);
      operator delete();
    }

    v7 = *(a1 + 56);
    if (v7)
    {
      sub_15878A8(v7);
      operator delete();
    }
  }

  if (*v3)
  {
    sub_11F19CC(v3);
  }

LABEL_16:
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_1586C18(uint64_t a1)
{
  sub_1586AFC(a1);

  operator delete();
}

uint64_t sub_1586C50(uint64_t result)
{
  v1 = result;
  v2 = *(result + 16);
  if ((v2 & 0x1F) == 0)
  {
    goto LABEL_8;
  }

  if ((v2 & 1) == 0)
  {
    if ((v2 & 2) == 0)
    {
      goto LABEL_4;
    }

LABEL_16:
    v6 = *(result + 32) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v6 + 23) < 0)
    {
      **v6 = 0;
      *(v6 + 8) = 0;
      if ((v2 & 4) != 0)
      {
        goto LABEL_20;
      }
    }

    else
    {
      *v6 = 0;
      *(v6 + 23) = 0;
      if ((v2 & 4) != 0)
      {
        goto LABEL_20;
      }
    }

LABEL_5:
    if ((v2 & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_24;
  }

  v5 = *(result + 24) & 0xFFFFFFFFFFFFFFFELL;
  if (*(v5 + 23) < 0)
  {
    **v5 = 0;
    *(v5 + 8) = 0;
    if ((v2 & 2) != 0)
    {
      goto LABEL_16;
    }
  }

  else
  {
    *v5 = 0;
    *(v5 + 23) = 0;
    if ((v2 & 2) != 0)
    {
      goto LABEL_16;
    }
  }

LABEL_4:
  if ((v2 & 4) == 0)
  {
    goto LABEL_5;
  }

LABEL_20:
  v7 = *(result + 40) & 0xFFFFFFFFFFFFFFFELL;
  if (*(v7 + 23) < 0)
  {
    **v7 = 0;
    *(v7 + 8) = 0;
    if ((v2 & 8) != 0)
    {
      goto LABEL_24;
    }

LABEL_6:
    if ((v2 & 0x10) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  *v7 = 0;
  *(v7 + 23) = 0;
  if ((v2 & 8) == 0)
  {
    goto LABEL_6;
  }

LABEL_24:
  result = sub_1580044(*(result + 48));
  if ((v2 & 0x10) != 0)
  {
LABEL_7:
    result = sub_1586D68(*(v1 + 56));
  }

LABEL_8:
  v4 = *(v1 + 8);
  v3 = v1 + 8;
  *(v3 + 56) = 0;
  *(v3 + 8) = 0;
  if (v4)
  {

    return sub_1957EA8(v3);
  }

  return result;
}

uint64_t sub_1586D68(uint64_t result)
{
  v1 = result;
  v2 = *(result + 32);
  if (v2 >= 1)
  {
    v3 = (*(result + 40) + 8);
    do
    {
      v4 = *v3++;
      result = sub_1586D68(v4);
      --v2;
    }

    while (v2);
    *(v1 + 32) = 0;
  }

  if (*(v1 + 16))
  {
    result = sub_15879A4(*(v1 + 48));
  }

  v6 = *(v1 + 8);
  v5 = v1 + 8;
  *(v5 + 48) = 0;
  *(v5 + 8) = 0;
  if (v6)
  {

    return sub_1957EA8(v5);
  }

  return result;
}

uint64_t sub_1586DFC(uint64_t a1, uint64_t a2, int32x2_t *a3)
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
    if (v8 >> 3 <= 3)
    {
      if (v11 == 1)
      {
        if (v8 != 10)
        {
          goto LABEL_47;
        }

        *(a1 + 16) |= 1u;
        v21 = *(a1 + 8);
        v22 = (v21 & 0xFFFFFFFFFFFFFFFCLL);
        if (v21)
        {
          v22 = *v22;
        }

        v23 = (a1 + 24);
      }

      else
      {
        if (v11 != 2)
        {
          if (v11 == 3 && v8 == 26)
          {
            *(a1 + 16) |= 8u;
            v13 = *(a1 + 48);
            if (!v13)
            {
              v14 = *(a1 + 8);
              v15 = (v14 & 0xFFFFFFFFFFFFFFFCLL);
              if (v14)
              {
                v15 = *v15;
              }

              v13 = sub_15B234C(v15);
              *(a1 + 48) = v13;
              v7 = *v35;
            }

            v16 = sub_221ECFC(a3, v13, v7);
            goto LABEL_54;
          }

          goto LABEL_47;
        }

        if (v8 != 18)
        {
          goto LABEL_47;
        }

        *(a1 + 16) |= 2u;
        v25 = *(a1 + 8);
        v22 = (v25 & 0xFFFFFFFFFFFFFFFCLL);
        if (v25)
        {
          v22 = *v22;
        }

        v23 = (a1 + 32);
      }

LABEL_41:
      v26 = sub_194DB04(v23, v22);
      v16 = sub_1958890(v26, *v35, a3);
      goto LABEL_54;
    }

    if (v11 == 4)
    {
      if (v8 != 34)
      {
        goto LABEL_47;
      }

      *(a1 + 16) |= 4u;
      v24 = *(a1 + 8);
      v22 = (v24 & 0xFFFFFFFFFFFFFFFCLL);
      if (v24)
      {
        v22 = *v22;
      }

      v23 = (a1 + 40);
      goto LABEL_41;
    }

    if (v11 != 5)
    {
      break;
    }

    if (v8 != 40)
    {
      goto LABEL_47;
    }

    v5 |= 0x20u;
    v28 = v7 + 1;
    v27 = *v7;
    if ((v27 & 0x8000000000000000) == 0)
    {
      goto LABEL_46;
    }

    v29 = *v28;
    v27 = (v29 << 7) + v27 - 128;
    if ((v29 & 0x80000000) == 0)
    {
      v28 = v7 + 2;
LABEL_46:
      *v35 = v28;
      *(a1 + 64) = v27 != 0;
      goto LABEL_55;
    }

    v33 = sub_19587DC(v7, v27);
    *v35 = v33;
    *(a1 + 64) = v34 != 0;
    if (!v33)
    {
      goto LABEL_62;
    }

LABEL_55:
    if (sub_195ADC0(a3, v35, a3[11].u32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v11 == 6 && v8 == 50)
  {
    *(a1 + 16) |= 0x10u;
    v17 = *(a1 + 56);
    if (!v17)
    {
      v18 = *(a1 + 8);
      v19 = (v18 & 0xFFFFFFFFFFFFFFFCLL);
      if (v18)
      {
        v19 = *v19;
      }

      sub_15AC8F4(v19);
      v17 = v20;
      *(a1 + 56) = v20;
      v7 = *v35;
    }

    v16 = sub_221F05C(a3, v17, v7);
LABEL_54:
    *v35 = v16;
    if (!v16)
    {
      goto LABEL_62;
    }

    goto LABEL_55;
  }

LABEL_47:
  if (v8)
  {
    v30 = (v8 & 7) == 4;
  }

  else
  {
    v30 = 1;
  }

  if (!v30)
  {
    v31 = *(a1 + 8);
    if (v31)
    {
      v32 = (v31 & 0xFFFFFFFFFFFFFFFCLL) + 8;
    }

    else
    {
      v32 = sub_11F1920((a1 + 8));
      v7 = *v35;
    }

    v16 = sub_1952690(v8, v32, v7, a3);
    goto LABEL_54;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_62:
  *v35 = 0;
LABEL_2:
  *(a1 + 16) |= v5;
  return *v35;
}

char *sub_1587108(uint64_t a1, char *__dst, unint64_t *a3)
{
  v4 = __dst;
  v6 = *(a1 + 16);
  if (v6)
  {
    v4 = sub_128AEEC(a3, 1, (*(a1 + 24) & 0xFFFFFFFFFFFFFFFELL), __dst);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 8) == 0)
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

  v4 = sub_128AEEC(a3, 2, (*(a1 + 32) & 0xFFFFFFFFFFFFFFFELL), v4);
  if ((v6 & 8) == 0)
  {
LABEL_4:
    if ((v6 & 4) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_16;
  }

LABEL_10:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v7 = *(a1 + 48);
  *v4 = 26;
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

  v4 = sub_15B1F3C(v7, v9, a3);
  if ((v6 & 4) == 0)
  {
LABEL_5:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_17;
  }

LABEL_16:
  v4 = sub_128AEEC(a3, 4, (*(a1 + 40) & 0xFFFFFFFFFFFFFFFELL), v4);
  if ((v6 & 0x20) == 0)
  {
LABEL_6:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_20;
  }

LABEL_17:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v10 = *(a1 + 64);
  *v4 = 40;
  v4[1] = v10;
  v4 += 2;
  if ((v6 & 0x10) != 0)
  {
LABEL_20:
    if (*a3 <= v4)
    {
      v4 = sub_225EB68(a3, v4);
    }

    v11 = *(a1 + 56);
    *v4 = 50;
    v12 = *(v11 + 20);
    v4[1] = v12;
    if (v12 > 0x7F)
    {
      v13 = sub_19575D0(v12, v4 + 1);
    }

    else
    {
      v13 = v4 + 2;
    }

    v4 = sub_1587D14(v11, v13, a3);
  }

LABEL_26:
  v14 = *(a1 + 8);
  if ((v14 & 1) == 0)
  {
    return v4;
  }

  v16 = v14 & 0xFFFFFFFFFFFFFFFCLL;
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

  if ((*a3 - v4) >= v17)
  {
    v19 = v17;
    memcpy(v4, v18, v17);
    v4 += v19;
    return v4;
  }

  return sub_1957130(a3, v18, v17, v4);
}

unint64_t sub_1587334(uint64_t a1)
{
  v2 = *(a1 + 16);
  if ((v2 & 0x3F) == 0)
  {
    result = 0;
    goto LABEL_17;
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

  v5 = *(a1 + 24) & 0xFFFFFFFFFFFFFFFELL;
  v6 = *(v5 + 23);
  v7 = *(v5 + 8);
  if ((v6 & 0x80u) == 0)
  {
    v7 = v6;
  }

  v3 = v7 + ((9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 2) != 0)
  {
LABEL_9:
    v8 = *(a1 + 32) & 0xFFFFFFFFFFFFFFFELL;
    v9 = *(v8 + 23);
    v10 = *(v8 + 8);
    if ((v9 & 0x80u) == 0)
    {
      v10 = v9;
    }

    v3 += v10 + ((9 * (__clz(v10 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_12:
  if ((v2 & 4) == 0)
  {
    if ((v2 & 8) == 0)
    {
      goto LABEL_14;
    }

LABEL_22:
    v16 = sub_15B20A0(*(a1 + 48));
    v3 += v16 + ((9 * (__clz(v16 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v2 & 0x10) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

  v13 = *(a1 + 40) & 0xFFFFFFFFFFFFFFFELL;
  v14 = *(v13 + 23);
  v15 = *(v13 + 8);
  if ((v14 & 0x80u) == 0)
  {
    v15 = v14;
  }

  v3 += v15 + ((9 * (__clz(v15 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 8) != 0)
  {
    goto LABEL_22;
  }

LABEL_14:
  if ((v2 & 0x10) != 0)
  {
LABEL_15:
    v11 = sub_1587F3C(*(a1 + 56));
    v3 += v11 + ((9 * (__clz(v11 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_16:
  result = v3 + ((v2 >> 4) & 2);
LABEL_17:
  v12 = *(a1 + 8);
  if (v12)
  {
    v17 = v12 & 0xFFFFFFFFFFFFFFFCLL;
    v18 = *((v12 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v18 < 0)
    {
      v18 = *(v17 + 16);
    }

    result += v18;
  }

  *(a1 + 20) = result;
  return result;
}

void sub_15874E4(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  if ((v4 & 0x3F) != 0)
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

        goto LABEL_20;
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

LABEL_20:
    v12 = *(a2 + 40);
    *(a1 + 16) |= 4u;
    v13 = *(a1 + 8);
    v14 = (v13 & 0xFFFFFFFFFFFFFFFCLL);
    if (v13)
    {
      v14 = *v14;
    }

    sub_194EA1C((a1 + 40), (v12 & 0xFFFFFFFFFFFFFFFELL), v14);
    if ((v4 & 8) == 0)
    {
LABEL_6:
      if ((v4 & 0x10) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_31;
    }

LABEL_23:
    *(a1 + 16) |= 8u;
    v15 = *(a1 + 48);
    if (!v15)
    {
      v16 = *(a1 + 8);
      v17 = (v16 & 0xFFFFFFFFFFFFFFFCLL);
      if (v16)
      {
        v17 = *v17;
      }

      v15 = sub_15B234C(v17);
      *(a1 + 48) = v15;
    }

    if (*(a2 + 48))
    {
      v18 = *(a2 + 48);
    }

    else
    {
      v18 = &off_27789A0;
    }

    sub_1581C8C(v15, v18);
    if ((v4 & 0x10) == 0)
    {
LABEL_7:
      if ((v4 & 0x20) == 0)
      {
LABEL_9:
        *(a1 + 16) |= v4;
        goto LABEL_10;
      }

LABEL_8:
      *(a1 + 64) = *(a2 + 64);
      goto LABEL_9;
    }

LABEL_31:
    *(a1 + 16) |= 0x10u;
    v19 = *(a1 + 56);
    if (!v19)
    {
      v20 = *(a1 + 8);
      v21 = (v20 & 0xFFFFFFFFFFFFFFFCLL);
      if (v20)
      {
        v21 = *v21;
      }

      sub_15AC8F4(v21);
      *(a1 + 56) = v19;
    }

    if (*(a2 + 56))
    {
      v22 = *(a2 + 56);
    }

    else
    {
      v22 = &off_2777BF0;
    }

    sub_15876B4(v19, v22);
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

LABEL_10:
  v5 = *(a2 + 8);
  if (v5)
  {

    sub_1957EF4((a1 + 8), (v5 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

void sub_15876B4(uint64_t result, uint64_t a2)
{
  v4 = *(a2 + 32);
  if (v4)
  {
    v5 = *(a2 + 40);
    v6 = sub_19592E8(result + 24, *(a2 + 32));
    sub_15B5B58((result + 24), v6, (v5 + 8), v4, **(result + 40) - *(result + 32));
    v7 = *(result + 32) + v4;
    *(result + 32) = v7;
    v8 = *(result + 40);
    if (*v8 < v7)
    {
      *v8 = v7;
    }
  }

  v9 = *(a2 + 16);
  if ((v9 & 3) != 0)
  {
    if (v9)
    {
      *(result + 16) |= 1u;
      v10 = *(result + 48);
      if (!v10)
      {
        v11 = *(result + 8);
        v12 = (v11 & 0xFFFFFFFFFFFFFFFCLL);
        if (v11)
        {
          v12 = *v12;
        }

        v10 = sub_15AC998(v12);
        *(result + 48) = v10;
      }

      if (*(a2 + 48))
      {
        v13 = *(a2 + 48);
      }

      else
      {
        v13 = &off_2777C30;
      }

      sub_1588054(v10, v13);
    }

    if ((v9 & 2) != 0)
    {
      *(result + 56) = *(a2 + 56);
    }

    *(result + 16) |= v9;
  }

  v14 = *(a2 + 8);
  if (v14)
  {

    sub_1957EF4((result + 8), (v14 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

BOOL sub_15877E0(uint64_t a1)
{
  v2 = *(a1 + 16);
  if ((v2 & 8) != 0)
  {
    v4 = *(a1 + 48);
    v5 = *(v4 + 32);
    v6 = *(v4 + 40);
    while (v5 >= 1)
    {
      v7 = v5 - 1;
      v8 = sub_15B16F0(*(v6 + 8 * v5));
      v5 = v7;
      if (!v8)
      {
        return 0;
      }
    }
  }

  if ((v2 & 0x10) == 0)
  {
    return 1;
  }

  result = sub_1587854(*(a1 + 56));
  if (result)
  {
    return 1;
  }

  return result;
}

BOOL sub_1587854(uint64_t a1)
{
  result = sub_1588204(a1 + 24);
  if (result)
  {
    if ((*(a1 + 16) & 1) == 0)
    {
      return 1;
    }

    result = sub_158825C(*(a1 + 48));
    if (result)
    {
      return 1;
    }
  }

  return result;
}

uint64_t sub_15878A8(uint64_t a1)
{
  v3 = (a1 + 8);
  v2 = *(a1 + 8);
  v4 = (v2 & 0xFFFFFFFFFFFFFFFCLL);
  if (v2)
  {
    if (*v4)
    {
      goto LABEL_8;
    }
  }

  else if (v4)
  {
    goto LABEL_8;
  }

  v5 = *(a1 + 8) & 1;
  if (a1 != &off_2777BF0)
  {
    v6 = *(a1 + 48);
    if (v6)
    {
      sub_15882D0(v6);
      operator delete();
    }
  }

  if (v5)
  {
    sub_11F19CC(v3);
  }

LABEL_8:
  sub_15B4CD0((a1 + 24));
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_158796C(uint64_t a1)
{
  sub_15878A8(a1);

  operator delete();
}

uint64_t sub_15879A4(uint64_t result)
{
  v1 = result;
  v2 = *(result + 16);
  if ((v2 & 0xF) == 0)
  {
    goto LABEL_7;
  }

  if (v2)
  {
    v5 = *(result + 24) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v5 + 23) < 0)
    {
      **v5 = 0;
      *(v5 + 8) = 0;
      if ((v2 & 2) != 0)
      {
        goto LABEL_17;
      }
    }

    else
    {
      *v5 = 0;
      *(v5 + 23) = 0;
      if ((v2 & 2) != 0)
      {
        goto LABEL_17;
      }
    }

LABEL_4:
    if ((v2 & 4) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_21;
  }

  if ((v2 & 2) == 0)
  {
    goto LABEL_4;
  }

LABEL_17:
  v6 = *(result + 32) & 0xFFFFFFFFFFFFFFFELL;
  if ((*(v6 + 23) & 0x80000000) == 0)
  {
    *v6 = 0;
    *(v6 + 23) = 0;
    if ((v2 & 4) != 0)
    {
      goto LABEL_21;
    }

LABEL_5:
    if ((v2 & 8) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  **v6 = 0;
  *(v6 + 8) = 0;
  if ((v2 & 4) == 0)
  {
    goto LABEL_5;
  }

LABEL_21:
  v7 = *(result + 40) & 0xFFFFFFFFFFFFFFFELL;
  if ((*(v7 + 23) & 0x80000000) == 0)
  {
    *v7 = 0;
    *(v7 + 23) = 0;
    if ((v2 & 8) == 0)
    {
      goto LABEL_7;
    }

LABEL_6:
    result = sub_1580044(*(result + 48));
    goto LABEL_7;
  }

  **v7 = 0;
  *(v7 + 8) = 0;
  if ((v2 & 8) != 0)
  {
    goto LABEL_6;
  }

LABEL_7:
  if ((v2 & 0xF0) != 0)
  {
    *(v1 + 56) = 0;
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

char *sub_1587AB4(uint64_t a1, char *a2, int32x2_t *a3)
{
  v29 = a2;
  for (i = a3[11].u32[1]; (sub_195ADC0(a3, &v29, i) & 1) == 0; i = a3[11].u32[1])
  {
    v6 = v29 + 1;
    v7 = *v29;
    if (*v29 < 0)
    {
      v8 = v7 + (*v6 << 7);
      v7 = v8 - 128;
      if (*v6 < 0)
      {
        v6 = sub_1958824(v29, v8 - 128);
        v7 = v9;
      }

      else
      {
        v6 = v29 + 2;
      }
    }

    v29 = v6;
    v10 = v7 >> 3;
    if (v7 >> 3 == 3)
    {
      if (v7 == 26)
      {
        v19 = v6 - 1;
        while (1)
        {
          v20 = (v19 + 1);
          v29 = v19 + 1;
          v21 = *(a1 + 40);
          if (v21 && (v22 = *(a1 + 32), v22 < *v21))
          {
            *(a1 + 32) = v22 + 1;
            v23 = *&v21[2 * v22 + 2];
          }

          else
          {
            sub_15AC8F4(*(a1 + 24));
            v23 = sub_19593CC(a1 + 24, v24);
            v20 = v29;
          }

          v19 = sub_221F05C(a3, v23, v20);
          v29 = v19;
          if (!v19)
          {
            return 0;
          }

          if (*a3 <= v19 || *v19 != 26)
          {
            goto LABEL_43;
          }
        }
      }

LABEL_13:
      if (v7)
      {
        v12 = (v7 & 7) == 4;
      }

      else
      {
        v12 = 1;
      }

      if (v12)
      {
        if (v6)
        {
          a3[10].i32[0] = v7 - 1;
          return v29;
        }

        return 0;
      }

      v13 = *(a1 + 8);
      if (v13)
      {
        v14 = (v13 & 0xFFFFFFFFFFFFFFFCLL) + 8;
      }

      else
      {
        v14 = sub_11F1920((a1 + 8));
        v6 = v29;
      }

      v15 = sub_1952690(v7, v14, v6, a3);
      goto LABEL_42;
    }

    if (v10 == 2)
    {
      if (v7 == 16)
      {
        v17 = v6 + 1;
        v16 = *v6;
        if ((v16 & 0x8000000000000000) == 0)
        {
          goto LABEL_24;
        }

        v18 = *v17;
        v16 = (v18 << 7) + v16 - 128;
        if (v18 < 0)
        {
          v29 = sub_19587DC(v6, v16);
          if (!v29)
          {
            return 0;
          }
        }

        else
        {
          v17 = v6 + 2;
LABEL_24:
          v29 = v17;
        }

        if (v16 > 2)
        {
          sub_12E8418();
        }

        else
        {
          *(a1 + 16) |= 2u;
          *(a1 + 56) = v16;
        }

        continue;
      }

      goto LABEL_13;
    }

    if (v10 != 1 || v7 != 10)
    {
      goto LABEL_13;
    }

    *(a1 + 16) |= 1u;
    v25 = *(a1 + 48);
    if (!v25)
    {
      v26 = *(a1 + 8);
      v27 = (v26 & 0xFFFFFFFFFFFFFFFCLL);
      if (v26)
      {
        v27 = *v27;
      }

      v25 = sub_15AC998(v27);
      *(a1 + 48) = v25;
      v6 = v29;
    }

    v15 = sub_221F0EC(a3, v25, v6);
LABEL_42:
    v29 = v15;
    if (!v15)
    {
      return 0;
    }

LABEL_43:
    ;
  }

  return v29;
}

char *sub_1587D14(uint64_t a1, char *a2, unint64_t *a3)
{
  v5 = *(a1 + 16);
  if (v5)
  {
    if (*a3 <= a2)
    {
      a2 = sub_225EB68(a3, a2);
    }

    v6 = *(a1 + 48);
    *a2 = 10;
    v7 = *(v6 + 20);
    a2[1] = v7;
    if (v7 > 0x7F)
    {
      v8 = sub_19575D0(v7, a2 + 1);
    }

    else
    {
      v8 = a2 + 2;
    }

    a2 = sub_158882C(v6, v8, a3);
  }

  if ((v5 & 2) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = sub_225EB68(a3, a2);
    }

    v10 = *(a1 + 56);
    *a2 = 16;
    a2[1] = v10;
    if (v10 > 0x7F)
    {
      a2[1] = v10 | 0x80;
      v11 = v10 >> 7;
      a2[2] = v10 >> 7;
      v9 = a2 + 3;
      if (v10 >= 0x4000)
      {
        LOBYTE(v12) = a2[2];
        do
        {
          *(v9 - 1) = v12 | 0x80;
          v12 = v11 >> 7;
          *v9++ = v11 >> 7;
          v13 = v11 >> 14;
          v11 >>= 7;
        }

        while (v13);
      }
    }

    else
    {
      v9 = a2 + 2;
    }
  }

  else
  {
    v9 = a2;
  }

  v14 = *(a1 + 32);
  if (v14)
  {
    for (i = 0; i != v14; ++i)
    {
      if (*a3 <= v9)
      {
        v9 = sub_225EB68(a3, v9);
      }

      v16 = *(*(a1 + 40) + 8 * i + 8);
      *v9 = 26;
      v17 = *(v16 + 20);
      v9[1] = v17;
      if (v17 > 0x7F)
      {
        v18 = sub_19575D0(v17, v9 + 1);
      }

      else
      {
        v18 = v9 + 2;
      }

      v9 = sub_1587D14(v16, v18, a3);
    }
  }

  v19 = *(a1 + 8);
  if ((v19 & 1) == 0)
  {
    return v9;
  }

  v21 = v19 & 0xFFFFFFFFFFFFFFFCLL;
  v22 = *(v21 + 31);
  if (v22 < 0)
  {
    v23 = *(v21 + 8);
    v22 = *(v21 + 16);
  }

  else
  {
    v23 = (v21 + 8);
  }

  if ((*a3 - v9) >= v22)
  {
    v24 = v22;
    memcpy(v9, v23, v22);
    v9 += v24;
    return v9;
  }

  return sub_1957130(a3, v23, v22, v9);
}

uint64_t sub_1587F3C(uint64_t a1)
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
      v7 = sub_1587F3C(v6);
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
      v9 = sub_1588AD4(*(a1 + 48));
      v2 += v9 + ((9 * (__clz(v9 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    if ((v8 & 2) != 0)
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

      v2 += v11;
    }
  }

  v12 = *(a1 + 8);
  if (v12)
  {
    v14 = v12 & 0xFFFFFFFFFFFFFFFCLL;
    v15 = *((v12 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v15 < 0)
    {
      v15 = *(v14 + 16);
    }

    v2 += v15;
  }

  *(a1 + 20) = v2;
  return v2;
}

void sub_1588054(uint64_t a1, uint64_t a2)
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

      goto LABEL_25;
    }

LABEL_22:
    v12 = *(a2 + 40);
    *(a1 + 16) |= 4u;
    v13 = *(a1 + 8);
    v14 = (v13 & 0xFFFFFFFFFFFFFFFCLL);
    if (v13)
    {
      v14 = *v14;
    }

    sub_194EA1C((a1 + 40), (v12 & 0xFFFFFFFFFFFFFFFELL), v14);
    if ((v4 & 8) == 0)
    {
LABEL_6:
      if ((v4 & 0x10) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_33;
    }

LABEL_25:
    *(a1 + 16) |= 8u;
    v15 = *(a1 + 48);
    if (!v15)
    {
      v16 = *(a1 + 8);
      v17 = (v16 & 0xFFFFFFFFFFFFFFFCLL);
      if (v16)
      {
        v17 = *v17;
      }

      v15 = sub_15B234C(v17);
      *(a1 + 48) = v15;
    }

    if (*(a2 + 48))
    {
      v18 = *(a2 + 48);
    }

    else
    {
      v18 = &off_27789A0;
    }

    sub_1581C8C(v15, v18);
    if ((v4 & 0x10) == 0)
    {
LABEL_7:
      if ((v4 & 0x20) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_34;
    }

LABEL_33:
    *(a1 + 56) = *(a2 + 56);
    if ((v4 & 0x20) == 0)
    {
LABEL_8:
      if ((v4 & 0x40) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_35;
    }

LABEL_34:
    *(a1 + 57) = *(a2 + 57);
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
      *(a1 + 60) = *(a2 + 60);
      goto LABEL_11;
    }

LABEL_35:
    *(a1 + 58) = *(a2 + 58);
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

BOOL sub_1588204(uint64_t a1)
{
  v2 = *(a1 + 8);
  do
  {
    v3 = v2;
    if (v2 < 1)
    {
      break;
    }

    v4 = v2 - 1;
    v5 = sub_1587854(*(*(a1 + 16) + 8 * v2));
    v2 = v4;
  }

  while ((v5 & 1) != 0);
  return v3 < 1;
}

BOOL sub_158825C(uint64_t a1)
{
  if ((*(a1 + 16) & 8) == 0)
  {
    return 1;
  }

  v2 = *(a1 + 48);
  v3 = *(v2 + 32);
  v4 = *(v2 + 40);
  do
  {
    v1 = v3 < 1;
    if (v3 < 1)
    {
      break;
    }

    v5 = v3 - 1;
    v6 = sub_15B16F0(*(v4 + 8 * v3));
    v3 = v5;
  }

  while (v6);
  return v1;
}

uint64_t sub_15882D0(uint64_t a1)
{
  v3 = (a1 + 8);
  v2 = *(a1 + 8);
  v4 = (v2 & 0xFFFFFFFFFFFFFFFCLL);
  if (v2)
  {
    if (*v4)
    {
      goto LABEL_14;
    }
  }

  else if (v4)
  {
    goto LABEL_14;
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

  if (*(a1 + 40) != &qword_278E990)
  {
    sub_194E89C((a1 + 40));
  }

  if (a1 != &off_2777C30)
  {
    v6 = *(a1 + 48);
    if (v6)
    {
      sub_15B1C80(v6);
      operator delete();
    }
  }

  if (*v3)
  {
    sub_11F19CC(v3);
  }

LABEL_14:
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_15883CC(uint64_t a1)
{
  sub_15882D0(a1);

  operator delete();
}

uint64_t sub_1588404(uint64_t a1, uint64_t a2, int32x2_t *a3)
{
  *v44 = a2;
  v5 = 0;
  if (sub_195ADC0(a3, v44, a3[11].u32[1]))
  {
    goto LABEL_2;
  }

  while (1)
  {
    v7 = (*v44 + 1);
    v8 = **v44;
    if (**v44 < 0)
    {
      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if (*v7 < 0)
      {
        v7 = sub_1958824(*v44, v9 - 128);
        v8 = v10;
      }

      else
      {
        v7 = (*v44 + 2);
      }
    }

    *v44 = v7;
    v11 = v8 >> 3;
    if (v8 >> 3 <= 4)
    {
      if (v8 >> 3 > 2)
      {
        if (v11 == 3)
        {
          if (v8 != 26)
          {
            goto LABEL_62;
          }

          *(a1 + 16) |= 8u;
          v29 = *(a1 + 48);
          if (!v29)
          {
            v30 = *(a1 + 8);
            v31 = (v30 & 0xFFFFFFFFFFFFFFFCLL);
            if (v30)
            {
              v31 = *v31;
            }

            v29 = sub_15B234C(v31);
            *(a1 + 48) = v29;
            v7 = *v44;
          }

          v25 = sub_221ECFC(a3, v29, v7);
LABEL_69:
          *v44 = v25;
          if (!v25)
          {
            goto LABEL_84;
          }

          goto LABEL_70;
        }

        if (v11 != 4 || v8 != 34)
        {
          goto LABEL_62;
        }

        *(a1 + 16) |= 4u;
        v19 = *(a1 + 8);
        v14 = (v19 & 0xFFFFFFFFFFFFFFFCLL);
        if (v19)
        {
          v14 = *v14;
        }

        v15 = (a1 + 40);
      }

      else if (v11 == 1)
      {
        if (v8 != 10)
        {
          goto LABEL_62;
        }

        *(a1 + 16) |= 1u;
        v23 = *(a1 + 8);
        v14 = (v23 & 0xFFFFFFFFFFFFFFFCLL);
        if (v23)
        {
          v14 = *v14;
        }

        v15 = (a1 + 24);
      }

      else
      {
        if (v11 != 2 || v8 != 18)
        {
          goto LABEL_62;
        }

        *(a1 + 16) |= 2u;
        v13 = *(a1 + 8);
        v14 = (v13 & 0xFFFFFFFFFFFFFFFCLL);
        if (v13)
        {
          v14 = *v14;
        }

        v15 = (a1 + 32);
      }

      v24 = sub_194DB04(v15, v14);
      v25 = sub_1958890(v24, *v44, a3);
      goto LABEL_69;
    }

    if (v8 >> 3 <= 6)
    {
      if (v11 == 5)
      {
        if (v8 != 40)
        {
          goto LABEL_62;
        }

        v5 |= 0x10u;
        v27 = v7 + 1;
        v26 = *v7;
        if ((v26 & 0x8000000000000000) == 0)
        {
          goto LABEL_48;
        }

        v28 = *v27;
        v26 = (v28 << 7) + v26 - 128;
        if ((v28 & 0x80000000) == 0)
        {
          v27 = v7 + 2;
LABEL_48:
          *v44 = v27;
          *(a1 + 56) = v26 != 0;
          goto LABEL_70;
        }

        v38 = sub_19587DC(v7, v26);
        *v44 = v38;
        *(a1 + 56) = v39 != 0;
        if (!v38)
        {
          goto LABEL_84;
        }
      }

      else
      {
        if (v11 != 6 || v8 != 48)
        {
          goto LABEL_62;
        }

        v5 |= 0x20u;
        v17 = v7 + 1;
        v16 = *v7;
        if ((v16 & 0x8000000000000000) == 0)
        {
          goto LABEL_25;
        }

        v18 = *v17;
        v16 = (v18 << 7) + v16 - 128;
        if ((v18 & 0x80000000) == 0)
        {
          v17 = v7 + 2;
LABEL_25:
          *v44 = v17;
          *(a1 + 57) = v16 != 0;
          goto LABEL_70;
        }

        v40 = sub_19587DC(v7, v16);
        *v44 = v40;
        *(a1 + 57) = v41 != 0;
        if (!v40)
        {
          goto LABEL_84;
        }
      }

      goto LABEL_70;
    }

    if (v11 == 7)
    {
      break;
    }

    if (v11 != 8 || v8 != 64)
    {
      goto LABEL_62;
    }

    v5 |= 0x40u;
    v21 = v7 + 1;
    v20 = *v7;
    if ((v20 & 0x8000000000000000) == 0)
    {
      goto LABEL_38;
    }

    v22 = *v21;
    v20 = (v22 << 7) + v20 - 128;
    if ((v22 & 0x80000000) == 0)
    {
      v21 = v7 + 2;
LABEL_38:
      *v44 = v21;
      *(a1 + 58) = v20 != 0;
      goto LABEL_70;
    }

    v42 = sub_19587DC(v7, v20);
    *v44 = v42;
    *(a1 + 58) = v43 != 0;
    if (!v42)
    {
      goto LABEL_84;
    }

LABEL_70:
    if (sub_195ADC0(a3, v44, a3[11].u32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v8 == 56)
  {
    v33 = v7 + 1;
    v32 = *v7;
    if ((v32 & 0x8000000000000000) == 0)
    {
      goto LABEL_59;
    }

    v34 = *v33;
    v32 = (v34 << 7) + v32 - 128;
    if (v34 < 0)
    {
      *v44 = sub_19587DC(v7, v32);
      if (!*v44)
      {
        goto LABEL_84;
      }
    }

    else
    {
      v33 = v7 + 2;
LABEL_59:
      *v44 = v33;
    }

    if (v32 > 7)
    {
      sub_13137F8();
    }

    else
    {
      *(a1 + 16) |= 0x80u;
      *(a1 + 60) = v32;
    }

    goto LABEL_70;
  }

LABEL_62:
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
      v7 = *v44;
    }

    v25 = sub_1952690(v8, v37, v7, a3);
    goto LABEL_69;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_84:
  *v44 = 0;
LABEL_2:
  *(a1 + 16) |= v5;
  return *v44;
}

char *sub_158882C(uint64_t a1, char *__dst, unint64_t *a3)
{
  v4 = __dst;
  v6 = *(a1 + 16);
  if (v6)
  {
    v4 = sub_128AEEC(a3, 1, (*(a1 + 24) & 0xFFFFFFFFFFFFFFFELL), __dst);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 8) == 0)
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

  v4 = sub_128AEEC(a3, 2, (*(a1 + 32) & 0xFFFFFFFFFFFFFFFELL), v4);
  if ((v6 & 8) == 0)
  {
LABEL_4:
    if ((v6 & 4) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_17;
  }

LABEL_11:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v8 = *(a1 + 48);
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

  v4 = sub_15B1F3C(v8, v10, a3);
  if ((v6 & 4) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_18;
  }

LABEL_17:
  v4 = sub_128AEEC(a3, 4, (*(a1 + 40) & 0xFFFFFFFFFFFFFFFELL), v4);
  if ((v6 & 0x10) == 0)
  {
LABEL_6:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_7;
    }

LABEL_21:
    if (*a3 <= v4)
    {
      v4 = sub_225EB68(a3, v4);
    }

    v12 = *(a1 + 57);
    *v4 = 48;
    v4[1] = v12;
    v4 += 2;
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_24;
  }

LABEL_18:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v11 = *(a1 + 56);
  *v4 = 40;
  v4[1] = v11;
  v4 += 2;
  if ((v6 & 0x20) != 0)
  {
    goto LABEL_21;
  }

LABEL_7:
  if ((v6 & 0x80) == 0)
  {
LABEL_8:
    v7 = v4;
    goto LABEL_31;
  }

LABEL_24:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v13 = *(a1 + 60);
  *v4 = 56;
  v4[1] = v13;
  if (v13 > 0x7F)
  {
    v4[1] = v13 | 0x80;
    v14 = v13 >> 7;
    v4[2] = v13 >> 7;
    v7 = v4 + 3;
    if (v13 >= 0x4000)
    {
      LOBYTE(v15) = v4[2];
      do
      {
        *(v7 - 1) = v15 | 0x80;
        v15 = v14 >> 7;
        *v7++ = v14 >> 7;
        v16 = v14 >> 14;
        v14 >>= 7;
      }

      while (v16);
    }
  }

  else
  {
    v7 = v4 + 2;
  }

LABEL_31:
  if ((v6 & 0x40) != 0)
  {
    if (*a3 <= v7)
    {
      v7 = sub_225EB68(a3, v7);
    }

    v17 = *(a1 + 58);
    *v7 = 64;
    v7[1] = v17;
    v7 += 2;
  }

  v18 = *(a1 + 8);
  if ((v18 & 1) == 0)
  {
    return v7;
  }

  v20 = v18 & 0xFFFFFFFFFFFFFFFCLL;
  v21 = *(v20 + 31);
  if (v21 < 0)
  {
    v22 = *(v20 + 8);
    v21 = *(v20 + 16);
  }

  else
  {
    v22 = (v20 + 8);
  }

  if ((*a3 - v7) >= v21)
  {
    v23 = v21;
    memcpy(v7, v22, v21);
    v7 += v23;
    return v7;
  }

  return sub_1957130(a3, v22, v21, v7);
}

uint64_t sub_1588AD4(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    result = 0;
    goto LABEL_20;
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

  v5 = *(a1 + 24) & 0xFFFFFFFFFFFFFFFELL;
  v6 = *(v5 + 23);
  v7 = *(v5 + 8);
  if ((v6 & 0x80u) == 0)
  {
    v7 = v6;
  }

  v3 = v7 + ((9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 2) != 0)
  {
LABEL_9:
    v8 = *(a1 + 32) & 0xFFFFFFFFFFFFFFFELL;
    v9 = *(v8 + 23);
    v10 = *(v8 + 8);
    if ((v9 & 0x80u) == 0)
    {
      v10 = v9;
    }

    v3 += v10 + ((9 * (__clz(v10 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_12:
  if ((v2 & 4) != 0)
  {
    v16 = *(a1 + 40) & 0xFFFFFFFFFFFFFFFELL;
    v17 = *(v16 + 23);
    v18 = *(v16 + 8);
    if ((v17 & 0x80u) == 0)
    {
      v18 = v17;
    }

    v3 += v18 + ((9 * (__clz(v18 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v2 & 8) == 0)
    {
      goto LABEL_15;
    }
  }

  else if ((v2 & 8) == 0)
  {
    goto LABEL_15;
  }

  v11 = sub_15B20A0(*(a1 + 48));
  v3 += v11 + ((9 * (__clz(v11 | 1) ^ 0x1F) + 73) >> 6) + 1;
LABEL_15:
  result = v3 + ((v2 >> 4) & 2) + ((v2 >> 3) & 2) + ((v2 >> 5) & 2);
  if ((v2 & 0x80) != 0)
  {
    v12 = *(a1 + 60);
    v13 = ((9 * (__clz(v12 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if (v12 >= 0)
    {
      v14 = v13;
    }

    else
    {
      v14 = 11;
    }

    result += v14;
  }

LABEL_20:
  v15 = *(a1 + 8);
  if (v15)
  {
    v19 = v15 & 0xFFFFFFFFFFFFFFFCLL;
    v20 = *((v15 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v20 < 0)
    {
      v20 = *(v19 + 16);
    }

    result += v20;
  }

  *(a1 + 20) = result;
  return result;
}

uint64_t sub_1588CAC(uint64_t a1)
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

void sub_1588D4C(uint64_t a1)
{
  sub_1588CAC(a1);

  operator delete();
}

uint64_t sub_1588D84(uint64_t a1)
{
  if (*(a1 + 16))
  {
    v1 = *(a1 + 24) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v1 + 23) < 0)
    {
      **v1 = 0;
      *(v1 + 8) = 0;
    }

    else
    {
      *v1 = 0;
      *(v1 + 23) = 0;
    }
  }

  v3 = *(a1 + 8);
  result = a1 + 8;
  *(result + 24) = 0;
  *(result + 8) = 0;
  if (v3)
  {
    return sub_1957EA8(result);
  }

  return result;
}

uint64_t sub_1588DCC(uint64_t a1, uint64_t a2, int32x2_t *a3)
{
  *v24 = a2;
  for (i = a3[11].u32[1]; (sub_195ADC0(a3, v24, i) & 1) == 0; i = a3[11].u32[1])
  {
    v6 = (*v24 + 1);
    v7 = **v24;
    if (**v24 < 0)
    {
      v8 = v7 + (*v6 << 7);
      v7 = v8 - 128;
      if (*v6 < 0)
      {
        v6 = sub_1958824(*v24, v8 - 128);
        v7 = v9;
      }

      else
      {
        v6 = (*v24 + 2);
      }
    }

    *v24 = v6;
    if (v7 >> 3 == 2)
    {
      if (v7 == 16)
      {
        v15 = v6 + 1;
        v16 = *v6;
        if ((v16 & 0x8000000000000000) == 0)
        {
          goto LABEL_23;
        }

        v17 = *v15;
        v18 = (v17 << 7) + v16;
        LODWORD(v16) = v18 - 128;
        if (v17 < 0)
        {
          *v24 = sub_19587DC(v6, (v18 - 128));
          if (!*v24)
          {
            goto LABEL_38;
          }

          LODWORD(v16) = v22;
        }

        else
        {
          v15 = v6 + 2;
LABEL_23:
          *v24 = v15;
        }

        if (sub_183A874(v16))
        {
          *(a1 + 16) |= 2u;
          *(a1 + 32) = v16;
        }

        else
        {
          sub_12E8418();
        }

        continue;
      }

LABEL_12:
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
          return *v24;
        }

LABEL_38:
        *v24 = 0;
        return *v24;
      }

      v12 = *(a1 + 8);
      if (v12)
      {
        v13 = (v12 & 0xFFFFFFFFFFFFFFFCLL) + 8;
      }

      else
      {
        v13 = sub_11F1920((a1 + 8));
        v6 = *v24;
      }

      v14 = sub_1952690(v7, v13, v6, a3);
      goto LABEL_29;
    }

    if (v7 >> 3 != 1 || v7 != 10)
    {
      goto LABEL_12;
    }

    *(a1 + 16) |= 1u;
    v19 = *(a1 + 8);
    v20 = (v19 & 0xFFFFFFFFFFFFFFFCLL);
    if (v19)
    {
      v20 = *v20;
    }

    v21 = sub_194DB04((a1 + 24), v20);
    v14 = sub_1958890(v21, *v24, a3);
LABEL_29:
    *v24 = v14;
    if (!v14)
    {
      goto LABEL_38;
    }
  }

  return *v24;
}

char *sub_1588F9C(uint64_t a1, char *__dst, unint64_t *a3)
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

  if ((*a3 - v7) >= v15)
  {
    v17 = v15;
    memcpy(v7, v16, v15);
    v7 += v17;
    return v7;
  }

  return sub_1957130(a3, v16, v15, v7);
}

uint64_t sub_15890E8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if ((v1 & 3) == 0)
  {
    v2 = 0;
    goto LABEL_13;
  }

  if ((v1 & 1) == 0)
  {
    v2 = 0;
    if ((v1 & 2) == 0)
    {
      goto LABEL_13;
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
    v6 = *(a1 + 32);
    if (v6 < 0)
    {
      v7 = 11;
    }

    else
    {
      v7 = ((9 * (__clz(v6 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    v2 += v7;
  }

LABEL_13:
  v8 = *(a1 + 8);
  if (v8)
  {
    v10 = v8 & 0xFFFFFFFFFFFFFFFCLL;
    v11 = *((v8 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v11 < 0)
    {
      v11 = *(v10 + 16);
    }

    v2 += v11;
  }

  *(a1 + 20) = v2;
  return v2;
}

void *sub_15891C4(void *a1)
{
  v3 = a1 + 1;
  v2 = a1[1];
  v4 = (v2 & 0xFFFFFFFFFFFFFFFCLL);
  if (v2)
  {
    if (*v4)
    {
      goto LABEL_5;
    }
  }

  else if (v4)
  {
    goto LABEL_5;
  }

  sub_1589248(a1);
  if (*v3)
  {
    sub_11F19CC(v3);
  }

LABEL_5:
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void ***sub_1589248(uint64_t a1)
{
  v3 = *(a1 + 24);
  v2 = (a1 + 24);
  if (v3 != &qword_278E990)
  {
    sub_194E89C(v2);
  }

  if (*(a1 + 32) != &qword_278E990)
  {
    sub_194E89C((a1 + 32));
  }

  if (*(a1 + 40) != &qword_278E990)
  {
    sub_194E89C((a1 + 40));
  }

  result = (a1 + 48);
  if (*(a1 + 48) != &qword_278E990)
  {
    sub_194E89C(result);
  }

  if (a1 != &off_2777C98)
  {
    v5 = *(a1 + 56);
    if (v5)
    {
      sub_15B1C80(v5);
      operator delete();
    }

    v6 = *(a1 + 64);
    if (v6)
    {
      sub_16E4E08(v6);
      operator delete();
    }

    v7 = *(a1 + 72);
    if (v7)
    {
      sub_16E5B34(v7);
      operator delete();
    }

    v8 = *(a1 + 80);
    if (v8)
    {
      sub_16E5B34(v8);
      operator delete();
    }

    result = *(a1 + 88);
    if (result)
    {
      sub_16EB0C0(result);

      operator delete();
    }
  }

  return result;
}

void sub_1589380(void *a1)
{
  sub_15891C4(a1);

  operator delete();
}

uint64_t sub_15893B8(uint64_t result)
{
  v1 = result;
  v2 = *(result + 16);
  if (!v2)
  {
    goto LABEL_11;
  }

  if ((v2 & 1) == 0)
  {
    if ((v2 & 2) == 0)
    {
      goto LABEL_4;
    }

LABEL_23:
    v6 = *(result + 32) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v6 + 23) < 0)
    {
      **v6 = 0;
      *(v6 + 8) = 0;
      if ((v2 & 4) != 0)
      {
        goto LABEL_27;
      }
    }

    else
    {
      *v6 = 0;
      *(v6 + 23) = 0;
      if ((v2 & 4) != 0)
      {
        goto LABEL_27;
      }
    }

LABEL_5:
    if ((v2 & 8) == 0)
    {
      goto LABEL_6;
    }

LABEL_31:
    v8 = *(result + 48) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v8 + 23) < 0)
    {
      **v8 = 0;
      *(v8 + 8) = 0;
      if ((v2 & 0x10) != 0)
      {
        goto LABEL_35;
      }
    }

    else
    {
      *v8 = 0;
      *(v8 + 23) = 0;
      if ((v2 & 0x10) != 0)
      {
        goto LABEL_35;
      }
    }

LABEL_7:
    if ((v2 & 0x20) == 0)
    {
      goto LABEL_8;
    }

LABEL_36:
    result = sub_16E4E44(*(v1 + 64));
    if ((v2 & 0x40) == 0)
    {
LABEL_9:
      if ((v2 & 0x80) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_10;
    }

    goto LABEL_37;
  }

  v5 = *(result + 24) & 0xFFFFFFFFFFFFFFFELL;
  if (*(v5 + 23) < 0)
  {
    **v5 = 0;
    *(v5 + 8) = 0;
    if ((v2 & 2) != 0)
    {
      goto LABEL_23;
    }
  }

  else
  {
    *v5 = 0;
    *(v5 + 23) = 0;
    if ((v2 & 2) != 0)
    {
      goto LABEL_23;
    }
  }

LABEL_4:
  if ((v2 & 4) == 0)
  {
    goto LABEL_5;
  }

LABEL_27:
  v7 = *(result + 40) & 0xFFFFFFFFFFFFFFFELL;
  if (*(v7 + 23) < 0)
  {
    **v7 = 0;
    *(v7 + 8) = 0;
    if ((v2 & 8) != 0)
    {
      goto LABEL_31;
    }
  }

  else
  {
    *v7 = 0;
    *(v7 + 23) = 0;
    if ((v2 & 8) != 0)
    {
      goto LABEL_31;
    }
  }

LABEL_6:
  if ((v2 & 0x10) == 0)
  {
    goto LABEL_7;
  }

LABEL_35:
  result = sub_1580044(*(result + 56));
  if ((v2 & 0x20) != 0)
  {
    goto LABEL_36;
  }

LABEL_8:
  if ((v2 & 0x40) == 0)
  {
    goto LABEL_9;
  }

LABEL_37:
  result = sub_16E5B70(*(v1 + 72));
  if ((v2 & 0x80) != 0)
  {
LABEL_10:
    result = sub_16E5B70(*(v1 + 80));
  }

LABEL_11:
  if ((v2 & 0x100) != 0)
  {
    result = sub_16EB0FC(*(v1 + 88));
  }

  if ((v2 & 0x600) != 0)
  {
    *(v1 + 104) = 0;
    *(v1 + 96) = 0;
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

uint64_t sub_158953C(uint64_t a1, uint64_t a2, int32x2_t *a3)
{
  *v49 = a2;
  v5 = 0;
  if (sub_195ADC0(a3, v49, a3[11].u32[1]))
  {
    goto LABEL_2;
  }

  while (1)
  {
    v7 = (*v49 + 1);
    v8 = **v49;
    if (**v49 < 0)
    {
      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if (*v7 < 0)
      {
        v7 = sub_1958824(*v49, v9 - 128);
        v8 = v10;
      }

      else
      {
        v7 = (*v49 + 2);
      }
    }

    *v49 = v7;
    v11 = v8 >> 3;
    if (v8 >> 3 > 5)
    {
      if (v8 >> 3 > 8)
      {
        if (v11 == 9)
        {
          if (v8 == 74)
          {
            *(a1 + 16) |= 8u;
            v40 = *(a1 + 8);
            v13 = (v40 & 0xFFFFFFFFFFFFFFFCLL);
            if (v40)
            {
              v13 = *v13;
            }

            v14 = (a1 + 48);
            goto LABEL_78;
          }

          goto LABEL_82;
        }

        if (v11 == 10)
        {
          if (v8 != 82)
          {
            goto LABEL_82;
          }

          *(a1 + 16) |= 0x80u;
          v27 = *(a1 + 80);
          if (v27)
          {
            goto LABEL_62;
          }

          v31 = *(a1 + 8);
          v32 = (v31 & 0xFFFFFFFFFFFFFFFCLL);
          if (v31)
          {
            v32 = *v32;
          }

          sub_16F58FC(v32);
          v27 = v33;
          *(a1 + 80) = v33;
LABEL_61:
          v7 = *v49;
LABEL_62:
          v19 = sub_21F86E8(a3, v27, v7);
          goto LABEL_79;
        }

        if (v11 != 11 || v8 != 90)
        {
          goto LABEL_82;
        }

        *(a1 + 16) |= 0x100u;
        v16 = *(a1 + 88);
        if (!v16)
        {
          v17 = *(a1 + 8);
          v18 = (v17 & 0xFFFFFFFFFFFFFFFCLL);
          if (v17)
          {
            v18 = *v18;
          }

          v16 = sub_16F5DB8(v18);
          *(a1 + 88) = v16;
          v7 = *v49;
        }

        v19 = sub_21F8D18(a3, v16, v7);
      }

      else
      {
        if (v11 != 6)
        {
          if (v11 != 7)
          {
            if (v11 == 8 && v8 == 66)
            {
              *(a1 + 16) |= 4u;
              v12 = *(a1 + 8);
              v13 = (v12 & 0xFFFFFFFFFFFFFFFCLL);
              if (v12)
              {
                v13 = *v13;
              }

              v14 = (a1 + 40);
              goto LABEL_78;
            }

            goto LABEL_82;
          }

          if (v8 != 58)
          {
            goto LABEL_82;
          }

          *(a1 + 16) |= 0x40u;
          v27 = *(a1 + 72);
          if (v27)
          {
            goto LABEL_62;
          }

          v28 = *(a1 + 8);
          v29 = (v28 & 0xFFFFFFFFFFFFFFFCLL);
          if (v28)
          {
            v29 = *v29;
          }

          sub_16F58FC(v29);
          v27 = v30;
          *(a1 + 72) = v30;
          goto LABEL_61;
        }

        if (v8 != 50)
        {
          goto LABEL_82;
        }

        *(a1 + 16) |= 0x20u;
        v37 = *(a1 + 64);
        if (!v37)
        {
          v38 = *(a1 + 8);
          v39 = (v38 & 0xFFFFFFFFFFFFFFFCLL);
          if (v38)
          {
            v39 = *v39;
          }

          v37 = sub_16F5828(v39);
          *(a1 + 64) = v37;
          v7 = *v49;
        }

        v19 = sub_21F4D60(a3, v37, v7);
      }

LABEL_79:
      *v49 = v19;
      if (!v19)
      {
        goto LABEL_99;
      }

      goto LABEL_80;
    }

    if (v8 >> 3 <= 2)
    {
      if (v11 == 1)
      {
        if (v8 != 10)
        {
          goto LABEL_82;
        }

        *(a1 + 16) |= 1u;
        v24 = *(a1 + 8);
        v13 = (v24 & 0xFFFFFFFFFFFFFFFCLL);
        if (v24)
        {
          v13 = *v13;
        }

        v14 = (a1 + 24);
LABEL_78:
        v41 = sub_194DB04(v14, v13);
        v19 = sub_1958890(v41, *v49, a3);
      }

      else
      {
        if (v11 != 2 || v8 != 18)
        {
          goto LABEL_82;
        }

        *(a1 + 16) |= 0x10u;
        v21 = *(a1 + 56);
        if (!v21)
        {
          v22 = *(a1 + 8);
          v23 = (v22 & 0xFFFFFFFFFFFFFFFCLL);
          if (v22)
          {
            v23 = *v23;
          }

          v21 = sub_15B234C(v23);
          *(a1 + 56) = v21;
          v7 = *v49;
        }

        v19 = sub_221ECFC(a3, v21, v7);
      }

      goto LABEL_79;
    }

    if (v11 == 3)
    {
      if (v8 != 24)
      {
        goto LABEL_82;
      }

      v5 |= 0x200u;
      v35 = v7 + 1;
      v34 = *v7;
      if ((v34 & 0x8000000000000000) == 0)
      {
        goto LABEL_67;
      }

      v36 = *v35;
      v34 = (v36 << 7) + v34 - 128;
      if ((v36 & 0x80000000) == 0)
      {
        v35 = v7 + 2;
LABEL_67:
        *v49 = v35;
        *(a1 + 96) = v34;
        goto LABEL_80;
      }

      v47 = sub_19587DC(v7, v34);
      *v49 = v47;
      *(a1 + 96) = v48;
      if (!v47)
      {
        goto LABEL_99;
      }

      goto LABEL_80;
    }

    if (v11 != 4)
    {
      break;
    }

    if (v8 != 32)
    {
      goto LABEL_82;
    }

    v5 |= 0x400u;
    LODWORD(v25) = *v7;
    if ((v25 & 0x80000000) == 0)
    {
      v26 = (v7 + 1);
LABEL_91:
      *v49 = v26;
      *(a1 + 104) = v25;
      goto LABEL_80;
    }

    v25 = (v7[1] << 7) + v25 - 128;
    if ((v7[1] & 0x80000000) == 0)
    {
      v26 = (v7 + 2);
      goto LABEL_91;
    }

    v45 = sub_19587DC(v7, v25);
    *v49 = v45;
    *(a1 + 104) = v46;
    if (!v45)
    {
      goto LABEL_99;
    }

LABEL_80:
    if (sub_195ADC0(a3, v49, a3[11].u32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v11 == 5 && v8 == 42)
  {
    *(a1 + 16) |= 2u;
    v15 = *(a1 + 8);
    v13 = (v15 & 0xFFFFFFFFFFFFFFFCLL);
    if (v15)
    {
      v13 = *v13;
    }

    v14 = (a1 + 32);
    goto LABEL_78;
  }

LABEL_82:
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
      v7 = *v49;
    }

    v19 = sub_1952690(v8, v44, v7, a3);
    goto LABEL_79;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_99:
  *v49 = 0;
LABEL_2:
  *(a1 + 16) |= v5;
  return *v49;
}

char *sub_15899E8(uint64_t a1, char *__dst, unint64_t *a3)
{
  v4 = __dst;
  v6 = *(a1 + 16);
  if ((v6 & 1) == 0)
  {
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    if (*a3 <= v4)
    {
      v4 = sub_225EB68(a3, v4);
    }

    v8 = *(a1 + 56);
    *v4 = 18;
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

    v4 = sub_15B1F3C(v8, v10, a3);
    if ((v6 & 0x200) == 0)
    {
      goto LABEL_4;
    }

    goto LABEL_12;
  }

  v4 = sub_128AEEC(a3, 1, (*(a1 + 24) & 0xFFFFFFFFFFFFFFFELL), __dst);
  if ((v6 & 0x10) != 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  if ((v6 & 0x200) == 0)
  {
LABEL_4:
    v7 = v4;
    goto LABEL_19;
  }

LABEL_12:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v11 = *(a1 + 96);
  *v4 = 24;
  v4[1] = v11;
  if (v11 > 0x7F)
  {
    v4[1] = v11 | 0x80;
    v12 = v11 >> 7;
    v4[2] = v11 >> 7;
    v7 = v4 + 3;
    if (v11 >= 0x4000)
    {
      LOBYTE(v13) = v4[2];
      do
      {
        *(v7 - 1) = v13 | 0x80;
        v13 = v12 >> 7;
        *v7++ = v12 >> 7;
        v14 = v12 >> 14;
        v12 >>= 7;
      }

      while (v14);
    }
  }

  else
  {
    v7 = v4 + 2;
  }

LABEL_19:
  if ((v6 & 0x400) != 0)
  {
    if (*a3 <= v7)
    {
      v7 = sub_225EB68(a3, v7);
    }

    v16 = *(a1 + 104);
    *v7 = 32;
    v7[1] = v16;
    if (v16 > 0x7F)
    {
      v7[1] = v16 | 0x80;
      v17 = v16 >> 7;
      v7[2] = v16 >> 7;
      v15 = v7 + 3;
      if (v16 >= 0x4000)
      {
        LOBYTE(v18) = v7[2];
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
      v15 = v7 + 2;
    }
  }

  else
  {
    v15 = v7;
  }

  if ((v6 & 2) != 0)
  {
    v15 = sub_128AEEC(a3, 5, (*(a1 + 32) & 0xFFFFFFFFFFFFFFFELL), v15);
    if ((v6 & 0x20) == 0)
    {
LABEL_30:
      if ((v6 & 0x40) == 0)
      {
        goto LABEL_31;
      }

      goto LABEL_43;
    }
  }

  else if ((v6 & 0x20) == 0)
  {
    goto LABEL_30;
  }

  if (*a3 <= v15)
  {
    v15 = sub_225EB68(a3, v15);
  }

  v20 = *(a1 + 64);
  *v15 = 50;
  v21 = *(v20 + 44);
  v15[1] = v21;
  if (v21 > 0x7F)
  {
    v22 = sub_19575D0(v21, v15 + 1);
  }

  else
  {
    v22 = v15 + 2;
  }

  v15 = sub_16E5070(v20, v22, a3);
  if ((v6 & 0x40) == 0)
  {
LABEL_31:
    if ((v6 & 4) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_49;
  }

LABEL_43:
  if (*a3 <= v15)
  {
    v15 = sub_225EB68(a3, v15);
  }

  v23 = *(a1 + 72);
  *v15 = 58;
  v24 = *(v23 + 20);
  v15[1] = v24;
  if (v24 > 0x7F)
  {
    v25 = sub_19575D0(v24, v15 + 1);
  }

  else
  {
    v25 = v15 + 2;
  }

  v15 = sub_16E5FE0(v23, v25, a3);
  if ((v6 & 4) == 0)
  {
LABEL_32:
    if ((v6 & 8) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_50;
  }

LABEL_49:
  v15 = sub_128AEEC(a3, 8, (*(a1 + 40) & 0xFFFFFFFFFFFFFFFELL), v15);
  if ((v6 & 8) == 0)
  {
LABEL_33:
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_51;
  }

LABEL_50:
  v15 = sub_128AEEC(a3, 9, (*(a1 + 48) & 0xFFFFFFFFFFFFFFFELL), v15);
  if ((v6 & 0x80) == 0)
  {
LABEL_34:
    if ((v6 & 0x100) == 0)
    {
      goto LABEL_63;
    }

    goto LABEL_57;
  }

LABEL_51:
  if (*a3 <= v15)
  {
    v15 = sub_225EB68(a3, v15);
  }

  v26 = *(a1 + 80);
  *v15 = 82;
  v27 = *(v26 + 20);
  v15[1] = v27;
  if (v27 > 0x7F)
  {
    v28 = sub_19575D0(v27, v15 + 1);
  }

  else
  {
    v28 = v15 + 2;
  }

  v15 = sub_16E5FE0(v26, v28, a3);
  if ((v6 & 0x100) != 0)
  {
LABEL_57:
    if (*a3 <= v15)
    {
      v15 = sub_225EB68(a3, v15);
    }

    v29 = *(a1 + 88);
    *v15 = 90;
    v30 = *(v29 + 20);
    v15[1] = v30;
    if (v30 > 0x7F)
    {
      v31 = sub_19575D0(v30, v15 + 1);
    }

    else
    {
      v31 = v15 + 2;
    }

    v15 = sub_16EBD38(v29, v31, a3);
  }

LABEL_63:
  v32 = *(a1 + 8);
  if ((v32 & 1) == 0)
  {
    return v15;
  }

  v34 = v32 & 0xFFFFFFFFFFFFFFFCLL;
  v35 = *(v34 + 31);
  if (v35 < 0)
  {
    v36 = *(v34 + 8);
    v35 = *(v34 + 16);
  }

  else
  {
    v36 = (v34 + 8);
  }

  if ((*a3 - v15) >= v35)
  {
    v37 = v35;
    memcpy(v15, v36, v35);
    v15 += v37;
    return v15;
  }

  return sub_1957130(a3, v36, v35, v15);
}