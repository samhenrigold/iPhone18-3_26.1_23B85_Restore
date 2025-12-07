char *sub_15CB70C(uint64_t a1, char *a2, unint64_t *a3)
{
  v5 = *(a1 + 16);
  if ((v5 & 0x200) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = sub_225EB68(a3, a2);
    }

    v7 = *(a1 + 208);
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

  if ((v5 & 0x400) != 0)
  {
    if (*a3 <= v6)
    {
      v6 = sub_225EB68(a3, v6);
    }

    v12 = *(a1 + 216);
    *v6 = 41;
    *(v6 + 1) = v12;
    v6 += 9;
    if ((v5 & 0x800) == 0)
    {
LABEL_12:
      if ((v5 & 1) == 0)
      {
        goto LABEL_13;
      }

LABEL_21:
      v6 = sub_128AEEC(a3, 8, (*(a1 + 136) & 0xFFFFFFFFFFFFFFFELL), v6);
      if ((v5 & 0x1000) == 0)
      {
        goto LABEL_14;
      }

      goto LABEL_22;
    }
  }

  else if ((v5 & 0x800) == 0)
  {
    goto LABEL_12;
  }

  if (*a3 <= v6)
  {
    v6 = sub_225EB68(a3, v6);
  }

  v13 = *(a1 + 224);
  *v6 = 49;
  *(v6 + 1) = v13;
  v6 += 9;
  if (v5)
  {
    goto LABEL_21;
  }

LABEL_13:
  if ((v5 & 0x1000) == 0)
  {
LABEL_14:
    v11 = v6;
    goto LABEL_29;
  }

LABEL_22:
  if (*a3 <= v6)
  {
    v6 = sub_225EB68(a3, v6);
  }

  v14 = *(a1 + 232);
  *v6 = 72;
  v6[1] = v14;
  if (v14 > 0x7F)
  {
    v6[1] = v14 | 0x80;
    v15 = v14 >> 7;
    v6[2] = v14 >> 7;
    v11 = v6 + 3;
    if (v14 >= 0x4000)
    {
      LOBYTE(v16) = v6[2];
      do
      {
        *(v11 - 1) = v16 | 0x80;
        v16 = v15 >> 7;
        *v11++ = v15 >> 7;
        v17 = v15 >> 14;
        v15 >>= 7;
      }

      while (v17);
    }
  }

  else
  {
    v11 = v6 + 2;
  }

LABEL_29:
  if ((v5 & 0x2000) != 0)
  {
    if (*a3 <= v11)
    {
      v11 = sub_225EB68(a3, v11);
    }

    v19 = *(a1 + 236);
    *v11 = 80;
    v11[1] = v19;
    if (v19 > 0x7F)
    {
      v11[1] = v19 | 0x80;
      v20 = v19 >> 7;
      v11[2] = v19 >> 7;
      v18 = v11 + 3;
      if (v19 >= 0x4000)
      {
        LOBYTE(v11) = v11[2];
        do
        {
          *(v18 - 1) = v11 | 0x80;
          v11 = (v20 >> 7);
          *v18++ = v20 >> 7;
          v21 = v20 >> 14;
          v20 >>= 7;
        }

        while (v21);
      }
    }

    else
    {
      v18 = v11 + 2;
    }
  }

  else
  {
    v18 = v11;
  }

  if ((v5 & 4) != 0)
  {
    if (*a3 <= v18)
    {
      v18 = sub_225EB68(a3, v18);
    }

    v23 = *(a1 + 152);
    *v18 = 90;
    v24 = *(v23 + 24);
    v18[1] = v24;
    if (v24 > 0x7F)
    {
      v25 = sub_19575D0(v24, v18 + 1);
    }

    else
    {
      v25 = v18 + 2;
    }

    v18 = sub_133CB18(v23, v25, a3);
    if ((v5 & 0x4000) == 0)
    {
LABEL_40:
      if ((v5 & 0x10000) == 0)
      {
        goto LABEL_41;
      }

LABEL_52:
      if (*a3 <= v18)
      {
        v18 = sub_225EB68(a3, v18);
      }

      v27 = *(a1 + 256);
      *v18 = 112;
      v18[1] = v27;
      v18 += 2;
      if ((v5 & 0x8000) == 0)
      {
        goto LABEL_42;
      }

      goto LABEL_55;
    }
  }

  else if ((v5 & 0x4000) == 0)
  {
    goto LABEL_40;
  }

  if (*a3 <= v18)
  {
    v18 = sub_225EB68(a3, v18);
  }

  v26 = *(a1 + 240);
  *v18 = 105;
  *(v18 + 1) = v26;
  v18 += 9;
  if ((v5 & 0x10000) != 0)
  {
    goto LABEL_52;
  }

LABEL_41:
  if ((v5 & 0x8000) == 0)
  {
LABEL_42:
    v22 = v18;
    goto LABEL_62;
  }

LABEL_55:
  if (*a3 <= v18)
  {
    v18 = sub_225EB68(a3, v18);
  }

  v28 = *(a1 + 248);
  *v18 = 120;
  v18[1] = v28;
  if (v28 > 0x7F)
  {
    v18[1] = v28 | 0x80;
    v29 = v28 >> 7;
    v18[2] = v28 >> 7;
    v22 = v18 + 3;
    if (v28 >= 0x4000)
    {
      LOBYTE(v18) = v18[2];
      do
      {
        *(v22 - 1) = v18 | 0x80;
        v18 = (v29 >> 7);
        *v22++ = v29 >> 7;
        v30 = v29 >> 14;
        v29 >>= 7;
      }

      while (v30);
    }
  }

  else
  {
    v22 = v18 + 2;
  }

LABEL_62:
  if ((v5 & 2) != 0)
  {
    v22 = sub_128AEEC(a3, 16, (*(a1 + 144) & 0xFFFFFFFFFFFFFFFELL), v22);
  }

  v31 = *(a1 + 32);
  if (v31)
  {
    for (i = 0; i != v31; ++i)
    {
      if (*a3 <= v22)
      {
        v22 = sub_225EB68(a3, v22);
      }

      v33 = *(*(a1 + 40) + 8 * i + 8);
      *v22 = 394;
      v34 = *(v33 + 20);
      v22[2] = v34;
      if (v34 > 0x7F)
      {
        v35 = sub_19575D0(v34, v22 + 2);
      }

      else
      {
        v35 = v22 + 3;
      }

      v22 = sub_15BEC48(v33, v35, a3);
    }
  }

  v36 = *(a1 + 56);
  if (v36)
  {
    for (j = 0; j != v36; ++j)
    {
      if (*a3 <= v22)
      {
        v22 = sub_225EB68(a3, v22);
      }

      v38 = *(*(a1 + 64) + 8 * j + 8);
      *v22 = 402;
      v39 = *(v38 + 20);
      v22[2] = v39;
      if (v39 > 0x7F)
      {
        v40 = sub_19575D0(v39, v22 + 2);
      }

      else
      {
        v40 = v22 + 3;
      }

      v22 = sub_15CD13C(v38, v40, a3);
    }
  }

  v41 = *(a1 + 80);
  if (v41 >= 1)
  {
    v42 = 8;
    do
    {
      v43 = *(*(a1 + 88) + v42);
      v44 = *(v43 + 23);
      if (v44 < 0 && (v44 = v43[1], v44 > 127) || (*a3 - v22 + 13) < v44)
      {
        v22 = sub_1957480(a3, 19, v43, v22);
      }

      else
      {
        *v22 = 410;
        v22[2] = v44;
        if (*(v43 + 23) < 0)
        {
          v43 = *v43;
        }

        v45 = v22 + 3;
        memcpy(v22 + 3, v43, v44);
        v22 = &v45[v44];
      }

      v42 += 8;
      --v41;
    }

    while (v41);
  }

  if ((v5 & 8) != 0)
  {
    if (*a3 <= v22)
    {
      v22 = sub_225EB68(a3, v22);
    }

    v47 = *(a1 + 160);
    *v22 = 418;
    v48 = *(v47 + 44);
    v22[2] = v48;
    if (v48 > 0x7F)
    {
      v49 = sub_19575D0(v48, v22 + 2);
    }

    else
    {
      v49 = v22 + 3;
    }

    v22 = sub_186BDDC(v47, v49, a3);
    if ((v5 & 0x10) == 0)
    {
LABEL_93:
      if ((v5 & 0x20) == 0)
      {
        goto LABEL_94;
      }

      goto LABEL_109;
    }
  }

  else if ((v5 & 0x10) == 0)
  {
    goto LABEL_93;
  }

  if (*a3 <= v22)
  {
    v22 = sub_225EB68(a3, v22);
  }

  v50 = *(a1 + 168);
  *v22 = 426;
  v51 = *(v50 + 20);
  v22[2] = v51;
  if (v51 > 0x7F)
  {
    v52 = sub_19575D0(v51, v22 + 2);
  }

  else
  {
    v52 = v22 + 3;
  }

  v22 = sub_15BEC48(v50, v52, a3);
  if ((v5 & 0x20) == 0)
  {
LABEL_94:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_95;
    }

LABEL_115:
    if (*a3 <= v22)
    {
      v22 = sub_225EB68(a3, v22);
    }

    v56 = *(a1 + 184);
    *v22 = 442;
    v57 = *(v56 + 20);
    v22[2] = v57;
    if (v57 > 0x7F)
    {
      v58 = sub_19575D0(v57, v22 + 2);
    }

    else
    {
      v58 = v22 + 3;
    }

    v22 = sub_1341C40(v56, v58, a3);
    if ((v5 & 0x20000) == 0)
    {
      goto LABEL_96;
    }

    goto LABEL_121;
  }

LABEL_109:
  if (*a3 <= v22)
  {
    v22 = sub_225EB68(a3, v22);
  }

  v53 = *(a1 + 176);
  *v22 = 434;
  v54 = *(v53 + 20);
  v22[2] = v54;
  if (v54 > 0x7F)
  {
    v55 = sub_19575D0(v54, v22 + 2);
  }

  else
  {
    v55 = v22 + 3;
  }

  v22 = sub_15BEC48(v53, v55, a3);
  if ((v5 & 0x40) != 0)
  {
    goto LABEL_115;
  }

LABEL_95:
  if ((v5 & 0x20000) == 0)
  {
LABEL_96:
    v46 = v22;
    goto LABEL_128;
  }

LABEL_121:
  if (*a3 <= v22)
  {
    v22 = sub_225EB68(a3, v22);
  }

  v59 = *(a1 + 260);
  *v22 = 448;
  v22[2] = v59;
  if (v59 > 0x7F)
  {
    v22[2] = v59 | 0x80;
    v60 = v59 >> 7;
    v22[3] = v59 >> 7;
    v46 = v22 + 4;
    if (v59 >= 0x4000)
    {
      LOBYTE(v61) = v22[3];
      do
      {
        *(v46 - 1) = v61 | 0x80;
        v61 = v60 >> 7;
        *v46++ = v60 >> 7;
        v62 = v60 >> 14;
        v60 >>= 7;
      }

      while (v62);
    }
  }

  else
  {
    v46 = v22 + 3;
  }

LABEL_128:
  v63 = *(a1 + 104);
  if (v63)
  {
    for (k = 0; k != v63; ++k)
    {
      if (*a3 <= v46)
      {
        v46 = sub_225EB68(a3, v46);
      }

      v65 = *(*(a1 + 112) + 8 * k + 8);
      *v46 = 458;
      v66 = *(v65 + 20);
      v46[2] = v66;
      if (v66 > 0x7F)
      {
        v67 = sub_19575D0(v66, v46 + 2);
      }

      else
      {
        v67 = v46 + 3;
      }

      v46 = sub_15CD13C(v65, v67, a3);
    }
  }

  if ((v5 & 0x80) != 0)
  {
    if (*a3 <= v46)
    {
      v46 = sub_225EB68(a3, v46);
    }

    v68 = *(a1 + 192);
    *v46 = 466;
    v69 = *(v68 + 20);
    v46[2] = v69;
    if (v69 > 0x7F)
    {
      v70 = sub_19575D0(v69, v46 + 2);
    }

    else
    {
      v70 = v46 + 3;
    }

    v46 = sub_16EBD38(v68, v70, a3);
  }

  if ((v5 & 0x100) != 0)
  {
    if (*a3 <= v46)
    {
      v46 = sub_225EB68(a3, v46);
    }

    v71 = *(a1 + 200);
    *v46 = 474;
    v72 = *(v71 + 64);
    v46[2] = v72;
    if (v72 > 0x7F)
    {
      v73 = sub_19575D0(v72, v46 + 2);
    }

    else
    {
      v73 = v46 + 3;
    }

    v46 = sub_15CD5F8(v71, v73, a3);
  }

  v74 = *(a1 + 120);
  if (v74 < 1)
  {
    v77 = v46;
  }

  else
  {
    for (m = 0; m != v74; ++m)
    {
      if (*a3 <= v46)
      {
        v46 = sub_225EB68(a3, v46);
      }

      v76 = *(*(a1 + 128) + 8 * m);
      *v46 = 480;
      v46[2] = v76;
      if (v76 > 0x7F)
      {
        v46[2] = v76 | 0x80;
        v78 = v76 >> 7;
        v46[3] = v76 >> 7;
        v77 = v46 + 4;
        if (v76 >= 0x4000)
        {
          LOBYTE(v46) = v46[3];
          do
          {
            *(v77 - 1) = v46 | 0x80;
            v46 = (v78 >> 7);
            *v77++ = v78 >> 7;
            v79 = v78 >> 14;
            v78 >>= 7;
          }

          while (v79);
        }
      }

      else
      {
        v77 = v46 + 3;
      }

      v46 = v77;
    }
  }

  if ((v5 & 0x40000) != 0)
  {
    if (*a3 <= v77)
    {
      v77 = sub_225EB68(a3, v77);
    }

    v81 = *(a1 + 264);
    *v77 = 488;
    v77[2] = v81;
    if (v81 > 0x7F)
    {
      v77[2] = v81 | 0x80;
      v82 = v81 >> 7;
      v77[3] = v81 >> 7;
      v80 = v77 + 4;
      if (v81 >= 0x4000)
      {
        LOBYTE(v77) = v77[3];
        do
        {
          *(v80 - 1) = v77 | 0x80;
          v77 = (v82 >> 7);
          *v80++ = v82 >> 7;
          v83 = v82 >> 14;
          v82 >>= 7;
        }

        while (v83);
      }
    }

    else
    {
      v80 = v77 + 3;
    }
  }

  else
  {
    v80 = v77;
  }

  v84 = *(a1 + 8);
  if ((v84 & 1) == 0)
  {
    return v80;
  }

  v86 = v84 & 0xFFFFFFFFFFFFFFFCLL;
  v87 = *(v86 + 31);
  if (v87 < 0)
  {
    v88 = *(v86 + 8);
    v87 = *(v86 + 16);
  }

  else
  {
    v88 = (v86 + 8);
  }

  if ((*a3 - v80) >= v87)
  {
    v89 = v87;
    memcpy(v80, v88, v87);
    v80 += v89;
    return v80;
  }

  return sub_1957130(a3, v88, v87, v80);
}

uint64_t sub_15CC1B8(uint64_t a1)
{
  if ((*(a1 + 17) & 2) != 0)
  {
    v2 = ((9 * (__clz(*(a1 + 208) | 1) ^ 0x3F) + 73) >> 6) + 1;
  }

  else
  {
    v2 = 0;
  }

  v3 = *(a1 + 32);
  v4 = v2 + 2 * v3;
  v5 = *(a1 + 40);
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
      v9 = sub_15BEFB0(v8);
      v4 += v9 + ((9 * (__clz(v9 | 1) ^ 0x1F) + 73) >> 6);
      v7 -= 8;
    }

    while (v7);
  }

  v10 = *(a1 + 56);
  v11 = v4 + 2 * v10;
  v12 = *(a1 + 64);
  if (v12)
  {
    v13 = (v12 + 8);
  }

  else
  {
    v13 = 0;
  }

  if (v10)
  {
    v14 = 8 * v10;
    do
    {
      v15 = *v13++;
      v16 = sub_15CD23C(v15);
      v11 += v16 + ((9 * (__clz(v16 | 1) ^ 0x1F) + 73) >> 6);
      v14 -= 8;
    }

    while (v14);
  }

  v17 = *(a1 + 80);
  v18 = v11 + 2 * v17;
  if (v17 >= 1)
  {
    v19 = (*(a1 + 88) + 8);
    do
    {
      v20 = *v19++;
      v21 = *(v20 + 23);
      v22 = *(v20 + 8);
      if ((v21 & 0x80u) == 0)
      {
        v22 = v21;
      }

      v18 += v22 + ((9 * (__clz(v22 | 1) ^ 0x1F) + 73) >> 6);
      --v17;
    }

    while (v17);
  }

  v23 = *(a1 + 104);
  v24 = v18 + 2 * v23;
  v25 = *(a1 + 112);
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
      v29 = sub_15CD23C(v28);
      v24 += v29 + ((9 * (__clz(v29 | 1) ^ 0x1F) + 73) >> 6);
      v27 -= 8;
    }

    while (v27);
  }

  v30 = sub_1959F14((a1 + 120)) + v24 + 2 * *(a1 + 120);
  v31 = *(a1 + 16);
  if (!*(a1 + 16))
  {
    goto LABEL_37;
  }

  if (v31)
  {
    v46 = *(a1 + 136) & 0xFFFFFFFFFFFFFFFELL;
    v47 = *(v46 + 23);
    v48 = *(v46 + 8);
    if ((v47 & 0x80u) == 0)
    {
      v48 = v47;
    }

    v30 += v48 + ((9 * (__clz(v48 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v31 & 2) == 0)
    {
LABEL_30:
      if ((v31 & 4) == 0)
      {
        goto LABEL_31;
      }

      goto LABEL_75;
    }
  }

  else if ((v31 & 2) == 0)
  {
    goto LABEL_30;
  }

  v49 = *(a1 + 144) & 0xFFFFFFFFFFFFFFFELL;
  v50 = *(v49 + 23);
  v51 = *(v49 + 8);
  if ((v50 & 0x80u) == 0)
  {
    v51 = v50;
  }

  v30 += v51 + ((9 * (__clz(v51 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v31 & 4) == 0)
  {
LABEL_31:
    if ((v31 & 8) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_76;
  }

LABEL_75:
  v52 = sub_133F0E4(*(a1 + 152));
  v30 += v52 + ((9 * (__clz(v52 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v31 & 8) == 0)
  {
LABEL_32:
    if ((v31 & 0x10) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_77;
  }

LABEL_76:
  v53 = sub_186C0BC(*(a1 + 160));
  v30 += v53 + ((9 * (__clz(v53 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v31 & 0x10) == 0)
  {
LABEL_33:
    if ((v31 & 0x20) == 0)
    {
      goto LABEL_34;
    }

LABEL_78:
    v55 = sub_15BEFB0(*(a1 + 176));
    v30 += v55 + ((9 * (__clz(v55 | 1) ^ 0x1F) + 73) >> 6) + 2;
    if ((v31 & 0x40) == 0)
    {
LABEL_35:
      if ((v31 & 0x80) == 0)
      {
        goto LABEL_37;
      }

      goto LABEL_36;
    }

    goto LABEL_79;
  }

LABEL_77:
  v54 = sub_15BEFB0(*(a1 + 168));
  v30 += v54 + ((9 * (__clz(v54 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v31 & 0x20) != 0)
  {
    goto LABEL_78;
  }

LABEL_34:
  if ((v31 & 0x40) == 0)
  {
    goto LABEL_35;
  }

LABEL_79:
  v56 = sub_1341D9C(*(a1 + 184));
  v30 += v56 + ((9 * (__clz(v56 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v31 & 0x80) != 0)
  {
LABEL_36:
    v32 = sub_16EC25C(*(a1 + 192));
    v30 += v32 + ((9 * (__clz(v32 | 1) ^ 0x1F) + 73) >> 6) + 2;
  }

LABEL_37:
  if ((v31 & 0x100) != 0)
  {
    v33 = sub_15CD7BC(*(a1 + 200));
    v30 += v33 + ((9 * (__clz(v33 | 1) ^ 0x1F) + 73) >> 6) + 2;
  }

  if ((v31 & 0xFC00) != 0)
  {
    v34 = v30 + 9;
    if ((v31 & 0x400) == 0)
    {
      v34 = v30;
    }

    if ((v31 & 0x800) != 0)
    {
      v34 += 9;
    }

    if ((v31 & 0x1000) != 0)
    {
      v35 = *(a1 + 232);
      v36 = ((9 * (__clz(v35 | 1) ^ 0x1F) + 73) >> 6) + 1;
      if (v35 >= 0)
      {
        v37 = v36;
      }

      else
      {
        v37 = 11;
      }

      v34 += v37;
    }

    if ((v31 & 0x2000) != 0)
    {
      v38 = *(a1 + 236);
      v39 = ((9 * (__clz(v38 | 1) ^ 0x1F) + 73) >> 6) + 1;
      if (v38 >= 0)
      {
        v40 = v39;
      }

      else
      {
        v40 = 11;
      }

      v34 += v40;
    }

    if ((v31 & 0x4000) != 0)
    {
      v30 = v34 + 9;
    }

    else
    {
      v30 = v34;
    }

    if ((v31 & 0x8000) != 0)
    {
      v30 += ((9 * (__clz(*(a1 + 248) | 1) ^ 0x3F) + 73) >> 6) + 1;
    }
  }

  if ((v31 & 0x70000) != 0)
  {
    v30 += (v31 >> 15) & 2;
    if ((v31 & 0x20000) != 0)
    {
      v30 += ((9 * (__clz(*(a1 + 260) | 1) ^ 0x1F) + 73) >> 6) + 2;
    }

    if ((v31 & 0x40000) != 0)
    {
      v41 = *(a1 + 264);
      v42 = ((9 * (__clz(v41 | 1) ^ 0x1F) + 73) >> 6) + 2;
      if (v41 >= 0)
      {
        v43 = v42;
      }

      else
      {
        v43 = 12;
      }

      v30 += v43;
    }
  }

  v44 = *(a1 + 8);
  if (v44)
  {
    v57 = v44 & 0xFFFFFFFFFFFFFFFCLL;
    v58 = *((v44 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v58 < 0)
    {
      v58 = *(v57 + 16);
    }

    v30 += v58;
  }

  *(a1 + 20) = v30;
  return v30;
}

void sub_15CC6C4(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  if (v4)
  {
    v5 = *(a2 + 40);
    v6 = sub_19592E8(a1 + 24, *(a2 + 32));
    sub_1348064((a1 + 24), v6, (v5 + 8), v4, **(a1 + 40) - *(a1 + 32));
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
    sub_15D75BC((a1 + 48), v11, (v10 + 8), v9, **(a1 + 64) - *(a1 + 56));
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
    sub_1201B48((a1 + 72), v16, (v15 + 8), v14, **(a1 + 88) - *(a1 + 80));
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
    sub_15D75BC((a1 + 96), v21, (v20 + 8), v19, **(a1 + 112) - *(a1 + 104));
    v22 = *(a1 + 104) + v19;
    *(a1 + 104) = v22;
    v23 = *(a1 + 112);
    if (*v23 < v22)
    {
      *v23 = v22;
    }
  }

  v24 = *(a2 + 120);
  if (v24)
  {
    v25 = *(a1 + 120);
    sub_1959094((a1 + 120), v25 + v24);
    v26 = *(a1 + 128);
    *(a1 + 120) += *(a2 + 120);
    memcpy((v26 + 8 * v25), *(a2 + 128), 8 * *(a2 + 120));
  }

  v27 = *(a2 + 16);
  if (!v27)
  {
    goto LABEL_80;
  }

  if (v27)
  {
    v28 = *(a2 + 136);
    *(a1 + 16) |= 1u;
    v29 = *(a1 + 8);
    v30 = (v29 & 0xFFFFFFFFFFFFFFFCLL);
    if (v29)
    {
      v30 = *v30;
    }

    sub_194EA1C((a1 + 136), (v28 & 0xFFFFFFFFFFFFFFFELL), v30);
    if ((v27 & 2) == 0)
    {
LABEL_18:
      if ((v27 & 4) == 0)
      {
        goto LABEL_19;
      }

      goto LABEL_27;
    }
  }

  else if ((v27 & 2) == 0)
  {
    goto LABEL_18;
  }

  v31 = *(a2 + 144);
  *(a1 + 16) |= 2u;
  v32 = *(a1 + 8);
  v33 = (v32 & 0xFFFFFFFFFFFFFFFCLL);
  if (v32)
  {
    v33 = *v33;
  }

  sub_194EA1C((a1 + 144), (v31 & 0xFFFFFFFFFFFFFFFELL), v33);
  if ((v27 & 4) == 0)
  {
LABEL_19:
    if ((v27 & 8) == 0)
    {
      goto LABEL_43;
    }

    goto LABEL_35;
  }

LABEL_27:
  *(a1 + 16) |= 4u;
  v34 = *(a1 + 152);
  if (!v34)
  {
    v35 = *(a1 + 8);
    v36 = (v35 & 0xFFFFFFFFFFFFFFFCLL);
    if (v35)
    {
      v36 = *v36;
    }

    sub_1343050(v36);
    *(a1 + 152) = v34;
  }

  if (*(a2 + 152))
  {
    v37 = *(a2 + 152);
  }

  else
  {
    v37 = &off_276BB30;
  }

  sub_13403A0(v34, v37);
  if ((v27 & 8) != 0)
  {
LABEL_35:
    *(a1 + 16) |= 8u;
    v38 = *(a1 + 160);
    if (!v38)
    {
      v39 = *(a1 + 8);
      v40 = (v39 & 0xFFFFFFFFFFFFFFFCLL);
      if (v39)
      {
        v40 = *v40;
      }

      v38 = sub_18FF520(v40);
      *(a1 + 160) = v38;
    }

    if (*(a2 + 160))
    {
      v41 = *(a2 + 160);
    }

    else
    {
      v41 = &off_2787C80;
    }

    sub_186C1E0(v38, v41);
  }

LABEL_43:
  if ((v27 & 0x10) == 0)
  {
    if ((v27 & 0x20) == 0)
    {
      goto LABEL_45;
    }

LABEL_56:
    *(a1 + 16) |= 0x20u;
    v46 = *(a1 + 176);
    if (!v46)
    {
      v47 = *(a1 + 8);
      v48 = (v47 & 0xFFFFFFFFFFFFFFFCLL);
      if (v47)
      {
        v48 = *v48;
      }

      v46 = sub_15BFF1C(v48);
      *(a1 + 176) = v46;
    }

    if (*(a2 + 176))
    {
      v49 = *(a2 + 176);
    }

    else
    {
      v49 = &off_2778CB8;
    }

    sub_15BF23C(v46, v49);
    if ((v27 & 0x40) == 0)
    {
LABEL_46:
      if ((v27 & 0x80) == 0)
      {
        goto LABEL_80;
      }

      goto LABEL_72;
    }

    goto LABEL_64;
  }

  *(a1 + 16) |= 0x10u;
  v42 = *(a1 + 168);
  if (!v42)
  {
    v43 = *(a1 + 8);
    v44 = (v43 & 0xFFFFFFFFFFFFFFFCLL);
    if (v43)
    {
      v44 = *v44;
    }

    v42 = sub_15BFF1C(v44);
    *(a1 + 168) = v42;
  }

  if (*(a2 + 168))
  {
    v45 = *(a2 + 168);
  }

  else
  {
    v45 = &off_2778CB8;
  }

  sub_15BF23C(v42, v45);
  if ((v27 & 0x20) != 0)
  {
    goto LABEL_56;
  }

LABEL_45:
  if ((v27 & 0x40) == 0)
  {
    goto LABEL_46;
  }

LABEL_64:
  *(a1 + 16) |= 0x40u;
  v50 = *(a1 + 184);
  if (!v50)
  {
    v51 = *(a1 + 8);
    v52 = (v51 & 0xFFFFFFFFFFFFFFFCLL);
    if (v51)
    {
      v52 = *v52;
    }

    v50 = sub_13430B0(v52);
    *(a1 + 184) = v50;
  }

  if (*(a2 + 184))
  {
    v53 = *(a2 + 184);
  }

  else
  {
    v53 = &off_276BFA8;
  }

  sub_1341E10(v50, v53);
  if ((v27 & 0x80) != 0)
  {
LABEL_72:
    *(a1 + 16) |= 0x80u;
    v54 = *(a1 + 192);
    if (!v54)
    {
      v55 = *(a1 + 8);
      v56 = (v55 & 0xFFFFFFFFFFFFFFFCLL);
      if (v55)
      {
        v56 = *v56;
      }

      v54 = sub_16F5DB8(v56);
      *(a1 + 192) = v54;
    }

    if (*(a2 + 192))
    {
      v57 = *(a2 + 192);
    }

    else
    {
      v57 = &off_277E820;
    }

    sub_16EC8A0(v54, v57);
  }

LABEL_80:
  if ((v27 & 0xFF00) == 0)
  {
    goto LABEL_91;
  }

  if ((v27 & 0x100) != 0)
  {
    *(a1 + 16) |= 0x100u;
    v59 = *(a1 + 200);
    if (!v59)
    {
      v60 = *(a1 + 8);
      v61 = (v60 & 0xFFFFFFFFFFFFFFFCLL);
      if (v60)
      {
        v61 = *v61;
      }

      v59 = sub_15D4888(v61);
      *(a1 + 200) = v59;
    }

    if (*(a2 + 200))
    {
      v62 = *(a2 + 200);
    }

    else
    {
      v62 = &off_27793B0;
    }

    sub_15CCC44(v59, v62);
    if ((v27 & 0x200) == 0)
    {
LABEL_83:
      if ((v27 & 0x400) == 0)
      {
        goto LABEL_84;
      }

      goto LABEL_110;
    }
  }

  else if ((v27 & 0x200) == 0)
  {
    goto LABEL_83;
  }

  *(a1 + 208) = *(a2 + 208);
  if ((v27 & 0x400) == 0)
  {
LABEL_84:
    if ((v27 & 0x800) == 0)
    {
      goto LABEL_85;
    }

    goto LABEL_111;
  }

LABEL_110:
  *(a1 + 216) = *(a2 + 216);
  if ((v27 & 0x800) == 0)
  {
LABEL_85:
    if ((v27 & 0x1000) == 0)
    {
      goto LABEL_86;
    }

    goto LABEL_112;
  }

LABEL_111:
  *(a1 + 224) = *(a2 + 224);
  if ((v27 & 0x1000) == 0)
  {
LABEL_86:
    if ((v27 & 0x2000) == 0)
    {
      goto LABEL_87;
    }

    goto LABEL_113;
  }

LABEL_112:
  *(a1 + 232) = *(a2 + 232);
  if ((v27 & 0x2000) == 0)
  {
LABEL_87:
    if ((v27 & 0x4000) == 0)
    {
      goto LABEL_88;
    }

LABEL_114:
    *(a1 + 240) = *(a2 + 240);
    if ((v27 & 0x8000) == 0)
    {
      goto LABEL_90;
    }

    goto LABEL_89;
  }

LABEL_113:
  *(a1 + 236) = *(a2 + 236);
  if ((v27 & 0x4000) != 0)
  {
    goto LABEL_114;
  }

LABEL_88:
  if ((v27 & 0x8000) != 0)
  {
LABEL_89:
    *(a1 + 248) = *(a2 + 248);
  }

LABEL_90:
  *(a1 + 16) |= v27;
LABEL_91:
  if ((v27 & 0x70000) == 0)
  {
    goto LABEL_97;
  }

  if ((v27 & 0x10000) == 0)
  {
    if ((v27 & 0x20000) == 0)
    {
      goto LABEL_94;
    }

LABEL_117:
    *(a1 + 260) = *(a2 + 260);
    if ((v27 & 0x40000) == 0)
    {
      goto LABEL_96;
    }

    goto LABEL_95;
  }

  *(a1 + 256) = *(a2 + 256);
  if ((v27 & 0x20000) != 0)
  {
    goto LABEL_117;
  }

LABEL_94:
  if ((v27 & 0x40000) != 0)
  {
LABEL_95:
    *(a1 + 264) = *(a2 + 264);
  }

LABEL_96:
  *(a1 + 16) |= v27;
LABEL_97:
  v58 = *(a2 + 8);
  if (v58)
  {

    sub_1957EF4((a1 + 8), (v58 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

void sub_15CCC44(uint64_t result, uint64_t a2)
{
  v4 = *(a2 + 24);
  if (v4)
  {
    v5 = *(a2 + 32);
    v6 = sub_19592E8(result + 16, *(a2 + 24));
    sub_15D7638((result + 16), v6, (v5 + 8), v4, **(result + 32) - *(result + 24));
    v7 = *(result + 24) + v4;
    *(result + 24) = v7;
    v8 = *(result + 32);
    if (*v8 < v7)
    {
      *v8 = v7;
    }
  }

  v9 = *(a2 + 48);
  if (v9)
  {
    v10 = *(a2 + 56);
    v11 = sub_19592E8(result + 40, *(a2 + 48));
    sub_15D76C4((result + 40), v11, (v10 + 8), v9, **(result + 56) - *(result + 48));
    v12 = *(result + 48) + v9;
    *(result + 48) = v12;
    v13 = *(result + 56);
    if (*v13 < v12)
    {
      *v13 = v12;
    }
  }

  v14 = *(a2 + 8);
  if (v14)
  {

    sub_1957EF4((result + 8), (v14 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

uint64_t sub_15CCD5C(uint64_t a1)
{
  if ((*(a1 + 17) & 2) == 0)
  {
    return 0;
  }

  result = sub_15B7CF8(a1 + 24);
  if (result)
  {
    v3 = *(a1 + 56);
    while (v3 >= 1)
    {
      v4 = *(*(a1 + 64) + 8 * v3--);
      if ((~*(v4 + 16) & 3) != 0)
      {
        return 0;
      }
    }

    v5 = *(a1 + 104);
    while (v5 >= 1)
    {
      v6 = *(*(a1 + 112) + 8 * v5--);
      if ((~*(v6 + 16) & 3) != 0)
      {
        return 0;
      }
    }

    v7 = *(a1 + 16);
    if ((v7 & 4) != 0)
    {
      result = sub_13418AC(*(a1 + 152));
      if (!result)
      {
        return result;
      }

      v7 = *(a1 + 16);
    }

    if ((v7 & 8) != 0)
    {
      result = sub_186C298(*(a1 + 160));
      if (!result)
      {
        return result;
      }

      v7 = *(a1 + 16);
    }

    if ((v7 & 0x10) != 0)
    {
      v8 = *(a1 + 168);
      if ((*(v8 + 16) & 0x20) != 0)
      {
        result = sub_15BE138(*(v8 + 64) + 24);
        if (!result)
        {
          return result;
        }

        v7 = *(a1 + 16);
      }
    }

    if ((v7 & 0x20) != 0)
    {
      v9 = *(a1 + 176);
      if ((*(v9 + 16) & 0x20) != 0)
      {
        result = sub_15BE138(*(v9 + 64) + 24);
        if (!result)
        {
          return result;
        }

        v7 = *(a1 + 16);
      }
    }

    if ((v7 & 0x80) == 0)
    {
      return 1;
    }

    result = sub_16ECE70(*(a1 + 192));
    if (result)
    {
      return 1;
    }
  }

  return result;
}

uint64_t sub_15CCE90(uint64_t a1)
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

void sub_15CCF30(uint64_t a1)
{
  sub_15CCE90(a1);

  operator delete();
}

uint64_t sub_15CCF68(uint64_t a1)
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

uint64_t sub_15CCFB0(uint64_t a1, uint64_t a2, int32x2_t *a3)
{
  *v19 = a2;
  v5 = 0;
  if (sub_195ADC0(a3, v19, a3[11].u32[1]))
  {
    goto LABEL_29;
  }

  while (1)
  {
    v6 = (*v19 + 1);
    v7 = **v19;
    if (**v19 < 0)
    {
      v8 = v7 + (*v6 << 7);
      v7 = v8 - 128;
      if (*v6 < 0)
      {
        v6 = sub_1958824(*v19, v8 - 128);
        v7 = v9;
      }

      else
      {
        v6 = (*v19 + 2);
      }
    }

    *v19 = v6;
    if (v7 >> 3 == 2)
    {
      break;
    }

    if (v7 >> 3 != 1 || v7 != 10)
    {
      goto LABEL_11;
    }

    *(a1 + 16) |= 1u;
    v15 = *(a1 + 8);
    v16 = (v15 & 0xFFFFFFFFFFFFFFFCLL);
    if (v15)
    {
      v16 = *v16;
    }

    v17 = sub_194DB04((a1 + 24), v16);
    v14 = sub_1958890(v17, *v19, a3);
LABEL_23:
    *v19 = v14;
    if (!v14)
    {
      goto LABEL_30;
    }

LABEL_24:
    if (sub_195ADC0(a3, v19, a3[11].u32[1]))
    {
      goto LABEL_29;
    }
  }

  if (v7 == 17)
  {
    v5 |= 2u;
    *(a1 + 32) = *v6;
    *v19 = v6 + 8;
    goto LABEL_24;
  }

LABEL_11:
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
    v12 = *(a1 + 8);
    if (v12)
    {
      v13 = (v12 & 0xFFFFFFFFFFFFFFFCLL) + 8;
    }

    else
    {
      v13 = sub_11F1920((a1 + 8));
      v6 = *v19;
    }

    v14 = sub_1952690(v7, v13, v6, a3);
    goto LABEL_23;
  }

  if (v6)
  {
    a3[10].i32[0] = v7 - 1;
    goto LABEL_29;
  }

LABEL_30:
  *v19 = 0;
LABEL_29:
  *(a1 + 16) |= v5;
  return *v19;
}

char *sub_15CD13C(uint64_t a1, char *__dst, unint64_t *a3)
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
    *v4 = 17;
    *(v4 + 1) = v7;
    v4 += 9;
  }

  v8 = *(a1 + 8);
  if ((v8 & 1) == 0)
  {
    return v4;
  }

  v10 = v8 & 0xFFFFFFFFFFFFFFFCLL;
  v11 = *(v10 + 31);
  if (v11 < 0)
  {
    v12 = *(v10 + 8);
    v11 = *(v10 + 16);
  }

  else
  {
    v12 = (v10 + 8);
  }

  if ((*a3 - v4) >= v11)
  {
    v13 = v11;
    memcpy(v4, v12, v11);
    v4 += v13;
    return v4;
  }

  return sub_1957130(a3, v12, v11, v4);
}

uint64_t sub_15CD23C(uint64_t a1)
{
  if ((~*(a1 + 16) & 3) != 0)
  {
    result = sub_1543F88(a1);
  }

  else
  {
    v2 = *(a1 + 24) & 0xFFFFFFFFFFFFFFFELL;
    v3 = *(v2 + 23);
    v4 = *(v2 + 8);
    if ((v3 & 0x80u) == 0)
    {
      v4 = v3;
    }

    result = v4 + ((9 * (__clz(v4 | 1) ^ 0x1F) + 73) >> 6) + 10;
  }

  v6 = *(a1 + 8);
  if (v6)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFCLL;
    v8 = *((v6 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v8 < 0)
    {
      v8 = *(v7 + 16);
    }

    result += v8;
  }

  *(a1 + 20) = result;
  return result;
}

void *sub_15CD300(void *a1)
{
  v3 = a1 + 1;
  v2 = a1[1];
  if ((v2 & 1) != 0 && !*(v2 & 0xFFFFFFFFFFFFFFFCLL))
  {
    sub_11F19CC(a1 + 1);
  }

  sub_15D709C(a1 + 5);
  sub_15D7018(a1 + 2);
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_15CD38C(void *a1)
{
  sub_15CD300(a1);

  operator delete();
}

char *sub_15CD3C4(uint64_t a1, char *a2, int32x2_t *a3)
{
  v26 = a2;
  if ((sub_195ADC0(a3, &v26, a3[11].u32[1]) & 1) == 0)
  {
    while (1)
    {
      v6 = v26 + 1;
      v7 = *v26;
      if (*v26 < 0)
      {
        v8 = v7 + (*v6 << 7);
        v7 = v8 - 128;
        if (*v6 < 0)
        {
          v6 = sub_1958824(v26, v8 - 128);
          v7 = v9;
        }

        else
        {
          v6 = v26 + 2;
        }
      }

      v26 = v6;
      if (v7 >> 3 == 2)
      {
        if (v7 == 18)
        {
          v14 = v6 - 1;
          while (1)
          {
            v15 = v14 + 1;
            v26 = v14 + 1;
            v16 = *(a1 + 56);
            if (v16 && (v17 = *(a1 + 48), v17 < *v16))
            {
              *(a1 + 48) = v17 + 1;
              v18 = *&v16[2 * v17 + 2];
            }

            else
            {
              v19 = sub_15D4A5C(*(a1 + 40));
              v18 = sub_19593CC(a1 + 40, v19);
              v15 = v26;
            }

            v14 = sub_2225D58(a3, v18, v15);
            v26 = v14;
            if (!v14)
            {
              return 0;
            }

            if (*a3 <= v14 || *v14 != 18)
            {
              goto LABEL_38;
            }
          }
        }
      }

      else if (v7 >> 3 == 1 && v7 == 10)
      {
        v20 = v6 - 1;
        while (1)
        {
          v21 = v20 + 1;
          v26 = v20 + 1;
          v22 = *(a1 + 32);
          if (v22 && (v23 = *(a1 + 24), v23 < *v22))
          {
            *(a1 + 24) = v23 + 1;
            v24 = *&v22[2 * v23 + 2];
          }

          else
          {
            v25 = sub_15D49B8(*(a1 + 16));
            v24 = sub_19593CC(a1 + 16, v25);
            v21 = v26;
          }

          v20 = sub_2225CC8(a3, v24, v21);
          v26 = v20;
          if (!v20)
          {
            return 0;
          }

          if (*a3 <= v20 || *v20 != 10)
          {
            goto LABEL_38;
          }
        }
      }

      if (!v7 || (v7 & 7) == 4)
      {
        break;
      }

      v12 = *(a1 + 8);
      if (v12)
      {
        v13 = (v12 & 0xFFFFFFFFFFFFFFFCLL) + 8;
      }

      else
      {
        v13 = sub_11F1920((a1 + 8));
        v6 = v26;
      }

      v26 = sub_1952690(v7, v13, v6, a3);
      if (!v26)
      {
        return 0;
      }

LABEL_38:
      if (sub_195ADC0(a3, &v26, a3[11].u32[1]))
      {
        return v26;
      }
    }

    if (v6)
    {
      a3[10].i32[0] = v7 - 1;
      return v26;
    }

    return 0;
  }

  return v26;
}

char *sub_15CD5F8(uint64_t a1, char *__dst, unint64_t *a3)
{
  v6 = *(a1 + 24);
  if (v6)
  {
    for (i = 0; i != v6; ++i)
    {
      if (*a3 <= __dst)
      {
        __dst = sub_225EB68(a3, __dst);
      }

      v8 = *(*(a1 + 32) + 8 * i + 8);
      *__dst = 10;
      v9 = *(v8 + 20);
      __dst[1] = v9;
      if (v9 > 0x7F)
      {
        v10 = sub_19575D0(v9, __dst + 1);
      }

      else
      {
        v10 = __dst + 2;
      }

      __dst = sub_15CE4F0(v8, v10, a3);
    }
  }

  v11 = *(a1 + 48);
  if (v11)
  {
    for (j = 0; j != v11; ++j)
    {
      if (*a3 <= __dst)
      {
        __dst = sub_225EB68(a3, __dst);
      }

      v13 = *(*(a1 + 56) + 8 * j + 8);
      *__dst = 18;
      v14 = *(v13 + 20);
      __dst[1] = v14;
      if (v14 > 0x7F)
      {
        v15 = sub_19575D0(v14, __dst + 1);
      }

      else
      {
        v15 = __dst + 2;
      }

      __dst = sub_15CEB3C(v13, v15, a3);
    }
  }

  v16 = *(a1 + 8);
  if ((v16 & 1) == 0)
  {
    return __dst;
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

  if ((*a3 - __dst) >= v19)
  {
    v21 = v19;
    memcpy(__dst, v20, v19);
    __dst += v21;
    return __dst;
  }

  return sub_1957130(a3, v20, v19, __dst);
}

uint64_t sub_15CD7BC(uint64_t a1)
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
      v7 = sub_15CE654(v6);
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
      v14 = sub_15CEC24(v13);
      v9 += v14 + ((9 * (__clz(v14 | 1) ^ 0x1F) + 73) >> 6);
      v12 -= 8;
    }

    while (v12);
  }

  v15 = *(a1 + 8);
  if (v15)
  {
    v17 = v15 & 0xFFFFFFFFFFFFFFFCLL;
    v18 = *((v15 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v18 < 0)
    {
      v18 = *(v17 + 16);
    }

    v9 += v18;
  }

  *(a1 + 64) = v9;
  return v9;
}

uint64_t sub_15CD8CC(uint64_t a1)
{
  v3 = (a1 + 8);
  v2 = *(a1 + 8);
  v4 = (v2 & 0xFFFFFFFFFFFFFFFCLL);
  if (v2)
  {
    if (*v4)
    {
      goto LABEL_13;
    }
  }

  else if (v4)
  {
    goto LABEL_13;
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

  if (*(a1 + 48) != &qword_278E990)
  {
    sub_194E89C((a1 + 48));
  }

  if (*v3)
  {
    sub_11F19CC(v3);
  }

LABEL_13:
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_15CD9AC(uint64_t a1)
{
  sub_15CD8CC(a1);

  operator delete();
}

uint64_t sub_15CD9E4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if ((v1 & 0xF) == 0)
  {
    goto LABEL_22;
  }

  if ((v1 & 1) == 0)
  {
    if ((v1 & 2) == 0)
    {
      goto LABEL_4;
    }

LABEL_11:
    v3 = *(a1 + 32) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v3 + 23) < 0)
    {
      **v3 = 0;
      *(v3 + 8) = 0;
      if ((v1 & 4) != 0)
      {
        goto LABEL_15;
      }
    }

    else
    {
      *v3 = 0;
      *(v3 + 23) = 0;
      if ((v1 & 4) != 0)
      {
        goto LABEL_15;
      }
    }

LABEL_5:
    if ((v1 & 8) == 0)
    {
      goto LABEL_22;
    }

LABEL_19:
    v5 = *(a1 + 48) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v5 + 23) < 0)
    {
      **v5 = 0;
      *(v5 + 8) = 0;
    }

    else
    {
      *v5 = 0;
      *(v5 + 23) = 0;
    }

    goto LABEL_22;
  }

  v2 = *(a1 + 24) & 0xFFFFFFFFFFFFFFFELL;
  if (*(v2 + 23) < 0)
  {
    **v2 = 0;
    *(v2 + 8) = 0;
    if ((v1 & 2) != 0)
    {
      goto LABEL_11;
    }
  }

  else
  {
    *v2 = 0;
    *(v2 + 23) = 0;
    if ((v1 & 2) != 0)
    {
      goto LABEL_11;
    }
  }

LABEL_4:
  if ((v1 & 4) == 0)
  {
    goto LABEL_5;
  }

LABEL_15:
  v4 = *(a1 + 40) & 0xFFFFFFFFFFFFFFFELL;
  if (*(v4 + 23) < 0)
  {
    **v4 = 0;
    *(v4 + 8) = 0;
    if ((v1 & 8) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_19;
  }

  *v4 = 0;
  *(v4 + 23) = 0;
  if ((v1 & 8) != 0)
  {
    goto LABEL_19;
  }

LABEL_22:
  v7 = *(a1 + 8);
  result = a1 + 8;
  *(result + 48) = 0;
  *(result + 8) = 0;
  if (v7)
  {
    return sub_1957EA8(result);
  }

  return result;
}

uint64_t sub_15CDAD4(uint64_t a1, uint64_t a2, int32x2_t *a3)
{
  *v24 = a2;
  v5 = 0;
  if (sub_195ADC0(a3, v24, a3[11].u32[1]))
  {
    goto LABEL_2;
  }

  while (1)
  {
    v7 = (*v24 + 1);
    v8 = **v24;
    if (**v24 < 0)
    {
      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if (*v7 < 0)
      {
        v7 = sub_1958824(*v24, v9 - 128);
        v8 = v10;
      }

      else
      {
        v7 = (*v24 + 2);
      }
    }

    *v24 = v7;
    v11 = v8 >> 3;
    if (v8 >> 3 > 2)
    {
      if (v11 == 3)
      {
        if (v8 != 26)
        {
          goto LABEL_38;
        }

        *(a1 + 16) |= 4u;
        v16 = *(a1 + 8);
        v14 = (v16 & 0xFFFFFFFFFFFFFFFCLL);
        if (v16)
        {
          v14 = *v14;
        }

        v15 = (a1 + 40);
      }

      else
      {
        if (v11 != 4)
        {
          if (v11 == 5 && v8 == 45)
          {
            v5 |= 0x10u;
            *(a1 + 56) = *v7;
            *v24 = v7 + 4;
            goto LABEL_36;
          }

          goto LABEL_38;
        }

        if (v8 != 34)
        {
          goto LABEL_38;
        }

        *(a1 + 16) |= 8u;
        v17 = *(a1 + 8);
        v14 = (v17 & 0xFFFFFFFFFFFFFFFCLL);
        if (v17)
        {
          v14 = *v14;
        }

        v15 = (a1 + 48);
      }

LABEL_34:
      v19 = sub_194DB04(v15, v14);
      v20 = sub_1958890(v19, *v24, a3);
      goto LABEL_35;
    }

    if (v11 == 1)
    {
      if (v8 == 10)
      {
        *(a1 + 16) |= 1u;
        v18 = *(a1 + 8);
        v14 = (v18 & 0xFFFFFFFFFFFFFFFCLL);
        if (v18)
        {
          v14 = *v14;
        }

        v15 = (a1 + 24);
        goto LABEL_34;
      }
    }

    else if (v11 == 2 && v8 == 18)
    {
      *(a1 + 16) |= 2u;
      v13 = *(a1 + 8);
      v14 = (v13 & 0xFFFFFFFFFFFFFFFCLL);
      if (v13)
      {
        v14 = *v14;
      }

      v15 = (a1 + 32);
      goto LABEL_34;
    }

LABEL_38:
    if (!v8 || (v8 & 7) == 4)
    {
      break;
    }

    v22 = *(a1 + 8);
    if (v22)
    {
      v23 = (v22 & 0xFFFFFFFFFFFFFFFCLL) + 8;
    }

    else
    {
      v23 = sub_11F1920((a1 + 8));
      v7 = *v24;
    }

    v20 = sub_1952690(v8, v23, v7, a3);
LABEL_35:
    *v24 = v20;
    if (!v20)
    {
      goto LABEL_48;
    }

LABEL_36:
    if (sub_195ADC0(a3, v24, a3[11].u32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_48:
  *v24 = 0;
LABEL_2:
  *(a1 + 16) |= v5;
  return *v24;
}

char *sub_15CDD20(uint64_t a1, char *__dst, unint64_t *a3)
{
  v4 = __dst;
  v6 = *(a1 + 16);
  if (v6)
  {
    v4 = sub_128AEEC(a3, 1, (*(a1 + 24) & 0xFFFFFFFFFFFFFFFELL), __dst);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_9;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  v4 = sub_128AEEC(a3, 2, (*(a1 + 32) & 0xFFFFFFFFFFFFFFFELL), v4);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

LABEL_9:
  v4 = sub_128AEEC(a3, 3, (*(a1 + 40) & 0xFFFFFFFFFFFFFFFELL), v4);
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_11;
  }

LABEL_10:
  v4 = sub_128AEEC(a3, 4, (*(a1 + 48) & 0xFFFFFFFFFFFFFFFELL), v4);
  if ((v6 & 0x10) == 0)
  {
    goto LABEL_14;
  }

LABEL_11:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v7 = *(a1 + 56);
  *v4 = 45;
  *(v4 + 1) = v7;
  v4 += 5;
LABEL_14:
  v8 = *(a1 + 8);
  if ((v8 & 1) == 0)
  {
    return v4;
  }

  v10 = v8 & 0xFFFFFFFFFFFFFFFCLL;
  v11 = *(v10 + 31);
  if (v11 < 0)
  {
    v12 = *(v10 + 8);
    v11 = *(v10 + 16);
  }

  else
  {
    v12 = (v10 + 8);
  }

  if ((*a3 - v4) >= v11)
  {
    v13 = v11;
    memcpy(v4, v12, v11);
    v4 += v13;
    return v4;
  }

  return sub_1957130(a3, v12, v11, v4);
}

uint64_t sub_15CDE94(uint64_t a1)
{
  v1 = *(a1 + 16);
  if ((v1 & 0x1F) == 0)
  {
    v3 = 0;
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

  v4 = *(a1 + 24) & 0xFFFFFFFFFFFFFFFELL;
  v5 = *(v4 + 23);
  v6 = *(v4 + 8);
  if ((v5 & 0x80u) == 0)
  {
    v6 = v5;
  }

  v2 = v6 + ((9 * (__clz(v6 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v1 & 2) != 0)
  {
LABEL_9:
    v7 = *(a1 + 32) & 0xFFFFFFFFFFFFFFFELL;
    v8 = *(v7 + 23);
    v9 = *(v7 + 8);
    if ((v8 & 0x80u) == 0)
    {
      v9 = v8;
    }

    v2 += v9 + ((9 * (__clz(v9 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_12:
  if ((v1 & 4) != 0)
  {
    v15 = *(a1 + 40) & 0xFFFFFFFFFFFFFFFELL;
    v16 = *(v15 + 23);
    v17 = *(v15 + 8);
    if ((v16 & 0x80u) == 0)
    {
      v17 = v16;
    }

    v2 += v17 + ((9 * (__clz(v17 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v1 & 8) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_14;
  }

  if ((v1 & 8) != 0)
  {
LABEL_14:
    v10 = *(a1 + 48) & 0xFFFFFFFFFFFFFFFELL;
    v11 = *(v10 + 23);
    v12 = *(v10 + 8);
    if ((v11 & 0x80u) == 0)
    {
      v12 = v11;
    }

    v2 += v12 + ((9 * (__clz(v12 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_17:
  if ((v1 & 0x10) != 0)
  {
    v3 = v2 + 5;
  }

  else
  {
    v3 = v2;
  }

LABEL_20:
  v13 = *(a1 + 8);
  if (v13)
  {
    v18 = v13 & 0xFFFFFFFFFFFFFFFCLL;
    v19 = *((v13 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v19 < 0)
    {
      v19 = *(v18 + 16);
    }

    v3 += v19;
  }

  *(a1 + 20) = v3;
  return v3;
}

void sub_15CE004(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  if ((v4 & 0x1F) != 0)
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

        goto LABEL_19;
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

      goto LABEL_22;
    }

LABEL_19:
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
LABEL_8:
        *(a1 + 16) |= v4;
        goto LABEL_9;
      }

LABEL_7:
      *(a1 + 56) = *(a2 + 56);
      goto LABEL_8;
    }

LABEL_22:
    v15 = *(a2 + 48);
    *(a1 + 16) |= 8u;
    v16 = *(a1 + 8);
    v17 = (v16 & 0xFFFFFFFFFFFFFFFCLL);
    if (v16)
    {
      v17 = *v17;
    }

    sub_194EA1C((a1 + 48), (v15 & 0xFFFFFFFFFFFFFFFELL), v17);
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

    sub_1957EF4((a1 + 8), (v5 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

uint64_t sub_15CE184(uint64_t a1)
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

  v5 = (a1 + 48);
  if (*(a1 + 48) != &qword_278E990)
  {
    sub_194E89C(v5);
  }

  if (v2)
  {
    sub_11F19CC(v3);
  }

LABEL_7:
  sub_15D7120((a1 + 24));
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_15CE230(uint64_t a1)
{
  sub_15CE184(a1);

  operator delete();
}

uint64_t sub_15CE268(uint64_t result)
{
  v1 = result;
  v2 = *(result + 32);
  if (v2 >= 1)
  {
    v3 = (*(result + 40) + 8);
    do
    {
      v4 = *v3++;
      result = sub_15CD9E4(v4);
      --v2;
    }

    while (v2);
    *(v1 + 32) = 0;
  }

  if (*(v1 + 16))
  {
    v5 = *(v1 + 48) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v5 + 23) < 0)
    {
      **v5 = 0;
      *(v5 + 8) = 0;
    }

    else
    {
      *v5 = 0;
      *(v5 + 23) = 0;
    }
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

uint64_t sub_15CE318(uint64_t a1, uint64_t a2, int32x2_t *a3)
{
  *v25 = a2;
  for (i = a3[11].u32[1]; (sub_195ADC0(a3, v25, i) & 1) == 0; i = a3[11].u32[1])
  {
    v6 = (*v25 + 1);
    v7 = **v25;
    if (**v25 < 0)
    {
      v8 = v7 + (*v6 << 7);
      v7 = v8 - 128;
      if (*v6 < 0)
      {
        v6 = sub_1958824(*v25, v8 - 128);
        v7 = v9;
      }

      else
      {
        v6 = (*v25 + 2);
      }
    }

    *v25 = v6;
    if (v7 >> 3 == 2)
    {
      if (v7 == 18)
      {
        v15 = v6 - 1;
        while (1)
        {
          v16 = v15 + 1;
          *v25 = v15 + 1;
          v17 = *(a1 + 40);
          if (v17 && (v18 = *(a1 + 32), v18 < *v17))
          {
            *(a1 + 32) = v18 + 1;
            v19 = *&v17[2 * v18 + 2];
          }

          else
          {
            v20 = sub_15D492C(*(a1 + 24));
            v19 = sub_19593CC(a1 + 24, v20);
            v16 = *v25;
          }

          v15 = sub_2225DE8(a3, v19, v16);
          *v25 = v15;
          if (!v15)
          {
            break;
          }

          if (*a3 <= v15 || *v15 != 18)
          {
            goto LABEL_33;
          }
        }

LABEL_38:
        *v25 = 0;
        return *v25;
      }
    }

    else if (v7 >> 3 == 1 && v7 == 10)
    {
      *(a1 + 16) |= 1u;
      v21 = *(a1 + 8);
      v22 = (v21 & 0xFFFFFFFFFFFFFFFCLL);
      if (v21)
      {
        v22 = *v22;
      }

      v23 = sub_194DB04((a1 + 48), v22);
      v14 = sub_1958890(v23, *v25, a3);
      goto LABEL_32;
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
        return *v25;
      }

      goto LABEL_38;
    }

    v12 = *(a1 + 8);
    if (v12)
    {
      v13 = (v12 & 0xFFFFFFFFFFFFFFFCLL) + 8;
    }

    else
    {
      v13 = sub_11F1920((a1 + 8));
      v6 = *v25;
    }

    v14 = sub_1952690(v7, v13, v6, a3);
LABEL_32:
    *v25 = v14;
    if (!v14)
    {
      goto LABEL_38;
    }

LABEL_33:
    ;
  }

  return *v25;
}

char *sub_15CE4F0(uint64_t a1, char *__dst, unint64_t *a3)
{
  v4 = __dst;
  if (*(a1 + 16))
  {
    v4 = sub_128AEEC(a3, 1, (*(a1 + 48) & 0xFFFFFFFFFFFFFFFELL), __dst);
  }

  v6 = *(a1 + 32);
  if (v6)
  {
    for (i = 0; i != v6; ++i)
    {
      if (*a3 <= v4)
      {
        v4 = sub_225EB68(a3, v4);
      }

      v8 = *(*(a1 + 40) + 8 * i + 8);
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

      v4 = sub_15CDD20(v8, v10, a3);
    }
  }

  v11 = *(a1 + 8);
  if ((v11 & 1) == 0)
  {
    return v4;
  }

  v13 = v11 & 0xFFFFFFFFFFFFFFFCLL;
  v14 = *(v13 + 31);
  if (v14 < 0)
  {
    v15 = *(v13 + 8);
    v14 = *(v13 + 16);
  }

  else
  {
    v15 = (v13 + 8);
  }

  if ((*a3 - v4) >= v14)
  {
    v16 = v14;
    memcpy(v4, v15, v14);
    v4 += v16;
    return v4;
  }

  return sub_1957130(a3, v15, v14, v4);
}

uint64_t sub_15CE654(uint64_t a1)
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
      v7 = sub_15CDE94(v6);
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
    v8 = *(a1 + 48) & 0xFFFFFFFFFFFFFFFELL;
    v9 = *(v8 + 23);
    v10 = *(v8 + 8);
    if ((v9 & 0x80u) == 0)
    {
      v10 = v9;
    }

    v2 += v10 + ((9 * (__clz(v10 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

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

void sub_15CE744(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  if (v4)
  {
    v5 = *(a2 + 40);
    v6 = sub_19592E8(a1 + 24, *(a2 + 32));
    sub_15D7740((a1 + 24), v6, (v5 + 8), v4, **(a1 + 40) - *(a1 + 32));
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

uint64_t sub_15CE850(uint64_t a1)
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

void sub_15CE908(uint64_t a1)
{
  sub_15CE850(a1);

  operator delete();
}

uint64_t sub_15CE940(uint64_t a1)
{
  v1 = *(a1 + 16);
  if ((v1 & 3) == 0)
  {
    goto LABEL_11;
  }

  if ((v1 & 1) == 0)
  {
LABEL_5:
    if ((v1 & 2) != 0)
    {
      goto LABEL_6;
    }

    goto LABEL_11;
  }

  v2 = *(a1 + 24) & 0xFFFFFFFFFFFFFFFELL;
  if ((*(v2 + 23) & 0x80000000) == 0)
  {
    *v2 = 0;
    *(v2 + 23) = 0;
    goto LABEL_5;
  }

  **v2 = 0;
  *(v2 + 8) = 0;
  if ((v1 & 2) != 0)
  {
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
  v5 = *(a1 + 8);
  result = a1 + 8;
  *(result + 8) = 0;
  if (v5)
  {
    return sub_1957EA8(result);
  }

  return result;
}

uint64_t sub_15CE9BC(uint64_t a1, uint64_t a2, int32x2_t *a3)
{
  *v21 = a2;
  for (i = a3[11].u32[1]; (sub_195ADC0(a3, v21, i) & 1) == 0; i = a3[11].u32[1])
  {
    v6 = (*v21 + 1);
    v7 = **v21;
    if (**v21 < 0)
    {
      v8 = v7 + (*v6 << 7);
      v7 = v8 - 128;
      if (*v6 < 0)
      {
        v6 = sub_1958824(*v21, v8 - 128);
        v7 = v9;
      }

      else
      {
        v6 = (*v21 + 2);
      }
    }

    *v21 = v6;
    if (v7 >> 3 == 2)
    {
      if (v7 == 18)
      {
        *(a1 + 16) |= 2u;
        v15 = *(a1 + 8);
        v16 = (v15 & 0xFFFFFFFFFFFFFFFCLL);
        if (v15)
        {
          v16 = *v16;
        }

        v17 = (a1 + 32);
        goto LABEL_26;
      }
    }

    else if (v7 >> 3 == 1 && v7 == 10)
    {
      *(a1 + 16) |= 1u;
      v18 = *(a1 + 8);
      v16 = (v18 & 0xFFFFFFFFFFFFFFFCLL);
      if (v18)
      {
        v16 = *v16;
      }

      v17 = (a1 + 24);
LABEL_26:
      v19 = sub_194DB04(v17, v16);
      v14 = sub_1958890(v19, *v21, a3);
      goto LABEL_27;
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
        return *v21;
      }

LABEL_33:
      *v21 = 0;
      return *v21;
    }

    v12 = *(a1 + 8);
    if (v12)
    {
      v13 = (v12 & 0xFFFFFFFFFFFFFFFCLL) + 8;
    }

    else
    {
      v13 = sub_11F1920((a1 + 8));
      v6 = *v21;
    }

    v14 = sub_1952690(v7, v13, v6, a3);
LABEL_27:
    *v21 = v14;
    if (!v14)
    {
      goto LABEL_33;
    }
  }

  return *v21;
}

char *sub_15CEB3C(uint64_t a1, char *__dst, unint64_t *a3)
{
  v4 = __dst;
  v6 = *(a1 + 16);
  if (v6)
  {
    v4 = sub_128AEEC(a3, 1, (*(a1 + 24) & 0xFFFFFFFFFFFFFFFELL), __dst);
  }

  if ((v6 & 2) != 0)
  {
    v4 = sub_128AEEC(a3, 2, (*(a1 + 32) & 0xFFFFFFFFFFFFFFFELL), v4);
  }

  v7 = *(a1 + 8);
  if ((v7 & 1) == 0)
  {
    return v4;
  }

  v9 = v7 & 0xFFFFFFFFFFFFFFFCLL;
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

  return sub_1957130(a3, v11, v10, v4);
}

uint64_t sub_15CEC24(uint64_t a1)
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
    v11 = v9 & 0xFFFFFFFFFFFFFFFCLL;
    v12 = *((v9 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v12 < 0)
    {
      v12 = *(v11 + 16);
    }

    v2 += v12;
  }

  *(a1 + 20) = v2;
  return v2;
}

void *sub_15CED10(void *a1)
{
  v3 = a1 + 1;
  v2 = a1[1];
  if ((v2 & 1) != 0 && !*(v2 & 0xFFFFFFFFFFFFFFFCLL))
  {
    sub_11F19CC(a1 + 1);
  }

  sub_15D71A4(a1 + 3);
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_15CED90(void *a1)
{
  sub_15CED10(a1);

  operator delete();
}

uint64_t sub_15CEDC8(uint64_t result)
{
  v1 = result;
  v2 = *(result + 32);
  if (v2 >= 1)
  {
    v3 = (*(result + 40) + 8);
    do
    {
      v4 = *v3++;
      result = sub_167278C(v4);
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

    return sub_1957EA8(v5);
  }

  return result;
}

char *sub_15CEE4C(uint64_t a1, char *a2, int32x2_t *a3)
{
  v26 = a2;
  for (i = a3[11].u32[1]; (sub_195ADC0(a3, &v26, i) & 1) == 0; i = a3[11].u32[1])
  {
    v6 = v26 + 1;
    v7 = *v26;
    if (*v26 < 0)
    {
      v8 = v7 + (*v6 << 7);
      v7 = v8 - 128;
      if (*v6 < 0)
      {
        v6 = sub_1958824(v26, v8 - 128);
        v7 = v9;
      }

      else
      {
        v6 = v26 + 2;
      }
    }

    v26 = v6;
    if (v7 >> 3 == 2)
    {
      if (v7 == 18)
      {
        v14 = v6 - 1;
        while (1)
        {
          v15 = v14 + 1;
          v26 = v14 + 1;
          v16 = *(a1 + 40);
          if (v16 && (v17 = *(a1 + 32), v17 < *v16))
          {
            *(a1 + 32) = v17 + 1;
            v18 = *&v16[2 * v17 + 2];
          }

          else
          {
            sub_167CE88(*(a1 + 24));
            v18 = sub_19593CC(a1 + 24, v19);
            v15 = v26;
          }

          v14 = sub_2225E78(a3, v18, v15);
          v26 = v14;
          if (!v14)
          {
            return 0;
          }

          if (*a3 <= v14 || *v14 != 18)
          {
            goto LABEL_36;
          }
        }
      }
    }

    else if (v7 >> 3 == 1 && v7 == 8)
    {
      v20 = v6 + 1;
      v21 = *v6;
      if ((v21 & 0x8000000000000000) == 0)
      {
        goto LABEL_33;
      }

      v22 = *v20;
      v23 = (v22 << 7) + v21;
      LODWORD(v21) = v23 - 128;
      if (v22 < 0)
      {
        v26 = sub_19587DC(v6, (v23 - 128));
        if (!v26)
        {
          return 0;
        }

        LODWORD(v21) = v24;
      }

      else
      {
        v20 = v6 + 2;
LABEL_33:
        v26 = v20;
      }

      if (sub_16724E8(v21))
      {
        *(a1 + 16) |= 1u;
        *(a1 + 48) = v21;
      }

      else
      {
        sub_12E8450();
      }

      continue;
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
        return v26;
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
      v6 = v26;
    }

    v26 = sub_1952690(v7, v13, v6, a3);
    if (!v26)
    {
      return 0;
    }

LABEL_36:
    ;
  }

  return v26;
}

char *sub_15CF064(uint64_t a1, char *__dst, unint64_t *a3)
{
  if (*(a1 + 16))
  {
    if (*a3 <= __dst)
    {
      __dst = sub_225EB68(a3, __dst);
    }

    v6 = *(a1 + 48);
    *__dst = 8;
    __dst[1] = v6;
    if (v6 > 0x7F)
    {
      __dst[1] = v6 | 0x80;
      v7 = v6 >> 7;
      __dst[2] = v6 >> 7;
      v5 = __dst + 3;
      if (v6 >= 0x4000)
      {
        LOBYTE(v8) = __dst[2];
        do
        {
          *(v5 - 1) = v8 | 0x80;
          v8 = v7 >> 7;
          *v5++ = v7 >> 7;
          v9 = v7 >> 14;
          v7 >>= 7;
        }

        while (v9);
      }
    }

    else
    {
      v5 = __dst + 2;
    }
  }

  else
  {
    v5 = __dst;
  }

  v10 = *(a1 + 32);
  if (v10)
  {
    for (i = 0; i != v10; ++i)
    {
      if (*a3 <= v5)
      {
        v5 = sub_225EB68(a3, v5);
      }

      v12 = *(*(a1 + 40) + 8 * i + 8);
      *v5 = 18;
      v13 = *(v12 + 20);
      v5[1] = v13;
      if (v13 > 0x7F)
      {
        v14 = sub_19575D0(v13, v5 + 1);
      }

      else
      {
        v14 = v5 + 2;
      }

      v5 = sub_16732C8(v12, v14, a3);
    }
  }

  v15 = *(a1 + 8);
  if ((v15 & 1) == 0)
  {
    return v5;
  }

  v17 = v15 & 0xFFFFFFFFFFFFFFFCLL;
  v18 = *(v17 + 31);
  if (v18 < 0)
  {
    v19 = *(v17 + 8);
    v18 = *(v17 + 16);
  }

  else
  {
    v19 = (v17 + 8);
  }

  if ((*a3 - v5) >= v18)
  {
    v20 = v18;
    memcpy(v5, v19, v18);
    v5 += v20;
    return v5;
  }

  return sub_1957130(a3, v19, v18, v5);
}

uint64_t sub_15CF228(uint64_t a1)
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
      v7 = sub_16738E0(v6);
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
    v8 = *(a1 + 48);
    if (v8 < 0)
    {
      v9 = 11;
    }

    else
    {
      v9 = ((9 * (__clz(v8 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    v2 += v9;
  }

  v10 = *(a1 + 8);
  if (v10)
  {
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL;
    v13 = *((v10 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v13 < 0)
    {
      v13 = *(v12 + 16);
    }

    v2 += v13;
  }

  *(a1 + 20) = v2;
  return v2;
}

void sub_15CF308(uint64_t result, uint64_t a2)
{
  v4 = *(a2 + 32);
  if (v4)
  {
    v5 = *(a2 + 40);
    v6 = sub_19592E8(result + 24, *(a2 + 32));
    sub_15D77CC((result + 24), v6, (v5 + 8), v4, **(result + 40) - *(result + 32));
    v7 = *(result + 32) + v4;
    *(result + 32) = v7;
    v8 = *(result + 40);
    if (*v8 < v7)
    {
      *v8 = v7;
    }
  }

  if (*(a2 + 16))
  {
    v9 = *(a2 + 48);
    *(result + 16) |= 1u;
    *(result + 48) = v9;
  }

  v10 = *(a2 + 8);
  if (v10)
  {

    sub_1957EF4((result + 8), (v10 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

BOOL sub_15CF3E0(uint64_t a1)
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
    v5 = sub_1674700(*(*(a1 + 40) + 8 * v2));
    v2 = v4;
  }

  while (v5);
  return v3 < 1;
}

uint64_t sub_15CF448(uint64_t a1, uint64_t a2, int a3)
{
  v5 = a2 | 2;
  if (!a3)
  {
    v5 = a2;
  }

  *(a1 + 8) = v5;
  *a1 = off_26F4AF8;
  sub_194F82C(a1 + 16, a2);
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
  *(a1 + 144) = a2;
  *(a1 + 152) = 0;
  *(a1 + 160) = 0;
  *(a1 + 168) = a2;
  *(a1 + 176) = 0;
  *(a1 + 184) = 0;
  *(a1 + 192) = 0;
  *(a1 + 200) = a2;
  *(a1 + 208) = a2;
  *(a1 + 216) = 0;
  *(a1 + 224) = 0;
  *(a1 + 232) = a2;
  *(a1 + 240) = 0;
  *(a1 + 248) = 0;
  *(a1 + 256) = a2;
  *(a1 + 264) = 0;
  *(a1 + 272) = 0;
  *(a1 + 280) = a2;
  *(a1 + 288) = 0;
  *(a1 + 296) = 0;
  *(a1 + 304) = &qword_278E990;
  *(a1 + 312) = &qword_278E990;
  *(a1 + 320) = &qword_278E990;
  *(a1 + 328) = &qword_278E990;
  *(a1 + 336) = &qword_278E990;
  *(a1 + 344) = &qword_278E990;
  *(a1 + 352) = &qword_278E990;
  *(a1 + 440) = 0u;
  *(a1 + 456) = 0u;
  *(a1 + 408) = 0u;
  *(a1 + 424) = 0u;
  *(a1 + 376) = 0u;
  *(a1 + 392) = 0u;
  *(a1 + 360) = 0u;
  return a1;
}

void sub_15CF520(_Unwind_Exception *a1)
{
  *v1 = off_27215B8;
  sub_195A5E8(v2);
  _Unwind_Resume(a1);
}

void *sub_15CF550(void *a1)
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

  sub_15CF654(a1);
  if (*v3)
  {
    sub_11F19CC(v3);
  }

LABEL_5:
  sub_15D73B4(a1 + 35);
  sub_1956AFC(a1 + 32);
  sub_15D7228(a1 + 29);
  sub_15D7330(a1 + 26);
  sub_1956ABC((a1 + 24));
  sub_15D72AC(a1 + 21);
  sub_1311EE8(a1 + 18);
  sub_1311EE8(a1 + 15);
  sub_1956AFC(a1 + 12);
  sub_15D72AC(a1 + 9);
  sub_15D7228(a1 + 6);
  sub_194F914((a1 + 2));
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

uint64_t sub_15CF654(uint64_t result)
{
  v1 = result;
  if (*(result + 304) != &qword_278E990)
  {
    sub_194E89C((result + 304));
  }

  if (*(result + 312) != &qword_278E990)
  {
    sub_194E89C((result + 312));
  }

  if (*(result + 320) != &qword_278E990)
  {
    sub_194E89C((result + 320));
  }

  if (*(result + 328) != &qword_278E990)
  {
    sub_194E89C((result + 328));
  }

  if (*(result + 336) != &qword_278E990)
  {
    sub_194E89C((result + 336));
  }

  if (*(result + 344) != &qword_278E990)
  {
    sub_194E89C((result + 344));
  }

  if (*(result + 352) != &qword_278E990)
  {
    sub_194E89C((result + 352));
  }

  if (*(result + 360))
  {
    sub_194E89C((result + 360));
  }

  if (result != &off_27793F8)
  {
    v2 = *(result + 368);
    if (v2)
    {
      sub_16EE080(v2);
      operator delete();
    }

    v3 = v1[47];
    if (v3)
    {
      sub_1547884(v3);
      operator delete();
    }

    v4 = v1[48];
    if (v4)
    {
      sub_15C17FC(v4);
      operator delete();
    }

    v5 = v1[49];
    if (v5)
    {
      sub_15C17FC(v5);
      operator delete();
    }

    v6 = v1[50];
    if (v6)
    {
      sub_15BF960(v6);
      operator delete();
    }

    v7 = v1[51];
    if (v7)
    {
      sub_167E6D8(v7);
      operator delete();
    }

    v8 = v1[52];
    if (v8)
    {
      sub_15D2120(v8);
      operator delete();
    }

    v9 = v1[53];
    if (v9)
    {
      sub_157C1B0(v9);
      operator delete();
    }

    result = v1[54];
    if (result)
    {
      sub_13B68F4(result);

      operator delete();
    }
  }

  return result;
}

void sub_15CF85C(void *a1)
{
  sub_15CF550(a1);

  operator delete();
}

uint64_t sub_15CF894(uint64_t a1)
{
  sub_1951124((a1 + 16));
  v2 = *(a1 + 56);
  if (v2 >= 1)
  {
    v3 = (*(a1 + 64) + 8);
    do
    {
      v4 = *v3++;
      sub_15CA9D8(v4);
      --v2;
    }

    while (v2);
    *(a1 + 56) = 0;
  }

  v5 = *(a1 + 80);
  if (v5 >= 1)
  {
    v6 = (*(a1 + 88) + 8);
    do
    {
      v7 = *v6++;
      sub_15CF894(v7);
      --v5;
    }

    while (v5);
    *(a1 + 80) = 0;
  }

  sub_12A41D0(a1 + 96);
  v8 = *(a1 + 128);
  if (v8 >= 1)
  {
    v9 = (*(a1 + 136) + 8);
    do
    {
      v10 = *v9++;
      sub_1579070(v10);
      --v8;
    }

    while (v8);
    *(a1 + 128) = 0;
  }

  v11 = *(a1 + 152);
  if (v11 >= 1)
  {
    v12 = (*(a1 + 160) + 8);
    do
    {
      v13 = *v12++;
      sub_1579070(v13);
      --v11;
    }

    while (v11);
    *(a1 + 152) = 0;
  }

  v14 = *(a1 + 176);
  if (v14 >= 1)
  {
    v15 = (*(a1 + 184) + 8);
    do
    {
      v16 = *v15++;
      sub_15CF894(v16);
      --v14;
    }

    while (v14);
    *(a1 + 176) = 0;
  }

  *(a1 + 192) = 0;
  v17 = *(a1 + 216);
  if (v17 >= 1)
  {
    v18 = (*(a1 + 224) + 8);
    do
    {
      v19 = *v18++;
      sub_15CEDC8(v19);
      --v17;
    }

    while (v17);
    *(a1 + 216) = 0;
  }

  v20 = *(a1 + 240);
  if (v20 >= 1)
  {
    v21 = (*(a1 + 248) + 8);
    do
    {
      v22 = *v21++;
      sub_15CA9D8(v22);
      --v20;
    }

    while (v20);
    *(a1 + 240) = 0;
  }

  result = sub_12A41D0(a1 + 256);
  v24 = *(a1 + 288);
  if (v24 >= 1)
  {
    v25 = (*(a1 + 296) + 8);
    do
    {
      v26 = *v25++;
      result = sub_157D4B4(v26);
      --v24;
    }

    while (v24);
    *(a1 + 288) = 0;
  }

  v27 = *(a1 + 40);
  if (!v27)
  {
    goto LABEL_72;
  }

  if (v27)
  {
    v28 = *(a1 + 304) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v28 + 23) < 0)
    {
      **v28 = 0;
      *(v28 + 8) = 0;
      if ((v27 & 2) != 0)
      {
        goto LABEL_47;
      }
    }

    else
    {
      *v28 = 0;
      *(v28 + 23) = 0;
      if ((v27 & 2) != 0)
      {
        goto LABEL_47;
      }
    }

LABEL_36:
    if ((v27 & 4) == 0)
    {
      goto LABEL_37;
    }

LABEL_51:
    v30 = *(a1 + 320) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v30 + 23) < 0)
    {
      **v30 = 0;
      *(v30 + 8) = 0;
      if ((v27 & 8) != 0)
      {
        goto LABEL_55;
      }
    }

    else
    {
      *v30 = 0;
      *(v30 + 23) = 0;
      if ((v27 & 8) != 0)
      {
        goto LABEL_55;
      }
    }

LABEL_38:
    if ((v27 & 0x10) == 0)
    {
      goto LABEL_39;
    }

LABEL_59:
    v32 = *(a1 + 336) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v32 + 23) < 0)
    {
      **v32 = 0;
      *(v32 + 8) = 0;
      if ((v27 & 0x20) != 0)
      {
        goto LABEL_63;
      }
    }

    else
    {
      *v32 = 0;
      *(v32 + 23) = 0;
      if ((v27 & 0x20) != 0)
      {
        goto LABEL_63;
      }
    }

LABEL_40:
    if ((v27 & 0x40) == 0)
    {
      goto LABEL_41;
    }

    goto LABEL_67;
  }

  if ((v27 & 2) == 0)
  {
    goto LABEL_36;
  }

LABEL_47:
  v29 = *(a1 + 312) & 0xFFFFFFFFFFFFFFFELL;
  if (*(v29 + 23) < 0)
  {
    **v29 = 0;
    *(v29 + 8) = 0;
    if ((v27 & 4) != 0)
    {
      goto LABEL_51;
    }
  }

  else
  {
    *v29 = 0;
    *(v29 + 23) = 0;
    if ((v27 & 4) != 0)
    {
      goto LABEL_51;
    }
  }

LABEL_37:
  if ((v27 & 8) == 0)
  {
    goto LABEL_38;
  }

LABEL_55:
  v31 = *(a1 + 328) & 0xFFFFFFFFFFFFFFFELL;
  if (*(v31 + 23) < 0)
  {
    **v31 = 0;
    *(v31 + 8) = 0;
    if ((v27 & 0x10) != 0)
    {
      goto LABEL_59;
    }
  }

  else
  {
    *v31 = 0;
    *(v31 + 23) = 0;
    if ((v27 & 0x10) != 0)
    {
      goto LABEL_59;
    }
  }

LABEL_39:
  if ((v27 & 0x20) == 0)
  {
    goto LABEL_40;
  }

LABEL_63:
  v33 = *(a1 + 344) & 0xFFFFFFFFFFFFFFFELL;
  if (*(v33 + 23) < 0)
  {
    **v33 = 0;
    *(v33 + 8) = 0;
    if ((v27 & 0x40) != 0)
    {
      goto LABEL_67;
    }

LABEL_41:
    if ((v27 & 0x80) == 0)
    {
      goto LABEL_72;
    }

    goto LABEL_71;
  }

  *v33 = 0;
  *(v33 + 23) = 0;
  if ((v27 & 0x40) == 0)
  {
    goto LABEL_41;
  }

LABEL_67:
  v34 = *(a1 + 352) & 0xFFFFFFFFFFFFFFFELL;
  if (*(v34 + 23) < 0)
  {
    **v34 = 0;
    *(v34 + 8) = 0;
    if ((v27 & 0x80) == 0)
    {
      goto LABEL_72;
    }

    goto LABEL_71;
  }

  *v34 = 0;
  *(v34 + 23) = 0;
  if ((v27 & 0x80) != 0)
  {
LABEL_71:
    result = sub_194EC40((a1 + 360), &off_27796C0);
  }

LABEL_72:
  if ((v27 & 0xFF00) == 0)
  {
    goto LABEL_82;
  }

  if ((v27 & 0x100) != 0)
  {
    result = sub_16EE0BC(*(a1 + 368));
    if ((v27 & 0x200) == 0)
    {
LABEL_75:
      if ((v27 & 0x400) == 0)
      {
        goto LABEL_76;
      }

      goto LABEL_92;
    }
  }

  else if ((v27 & 0x200) == 0)
  {
    goto LABEL_75;
  }

  result = sub_14D28E4(*(a1 + 376));
  if ((v27 & 0x400) == 0)
  {
LABEL_76:
    if ((v27 & 0x800) == 0)
    {
      goto LABEL_77;
    }

    goto LABEL_93;
  }

LABEL_92:
  result = sub_15C1F38(*(a1 + 384));
  if ((v27 & 0x800) == 0)
  {
LABEL_77:
    if ((v27 & 0x1000) == 0)
    {
      goto LABEL_78;
    }

    goto LABEL_94;
  }

LABEL_93:
  result = sub_15C1F38(*(a1 + 392));
  if ((v27 & 0x1000) == 0)
  {
LABEL_78:
    if ((v27 & 0x2000) == 0)
    {
      goto LABEL_79;
    }

    goto LABEL_95;
  }

LABEL_94:
  result = sub_15BFA64(*(a1 + 400));
  if ((v27 & 0x2000) == 0)
  {
LABEL_79:
    if ((v27 & 0x4000) == 0)
    {
      goto LABEL_80;
    }

    goto LABEL_96;
  }

LABEL_95:
  result = sub_16724F4(*(a1 + 408));
  if ((v27 & 0x4000) == 0)
  {
LABEL_80:
    if ((v27 & 0x8000) == 0)
    {
      goto LABEL_82;
    }

    goto LABEL_81;
  }

LABEL_96:
  result = sub_15CFC98(*(a1 + 416));
  if ((v27 & 0x8000) != 0)
  {
LABEL_81:
    result = sub_157C1EC(*(a1 + 424));
  }

LABEL_82:
  if ((v27 & 0x10000) != 0)
  {
    result = sub_13B6930(*(a1 + 432));
  }

  if ((v27 & 0xFE0000) != 0)
  {
    *(a1 + 440) = 0;
    *(a1 + 448) = 0;
    *(a1 + 464) = 0;
    *(a1 + 456) = 0;
  }

  v36 = *(a1 + 8);
  v35 = a1 + 8;
  *(v35 + 460) = 0;
  *(v35 + 32) = 0;
  if (v36)
  {

    return sub_1957EA8(v35);
  }

  return result;
}

uint64_t sub_15CFC98(uint64_t a1)
{
  if ((*(a1 + 16) & 3) != 0)
  {
    *(a1 + 32) = 0;
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

char *sub_15CFD5C(uint64_t a1, char *a2, unint64_t *a3)
{
  v6 = *(a1 + 56);
  if (v6)
  {
    for (i = 0; i != v6; ++i)
    {
      if (*a3 <= a2)
      {
        a2 = sub_225EB68(a3, a2);
      }

      v8 = *(*(a1 + 64) + 8 * i + 8);
      *a2 = 10;
      v9 = *(v8 + 20);
      a2[1] = v9;
      if (v9 > 0x7F)
      {
        v10 = sub_19575D0(v9, a2 + 1);
      }

      else
      {
        v10 = a2 + 2;
      }

      a2 = sub_15CB70C(v8, v10, a3);
    }
  }

  v11 = *(a1 + 40);
  if ((v11 & 0x20000) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = sub_225EB68(a3, a2);
    }

    v13 = *(a1 + 440);
    *a2 = 16;
    a2[1] = v13;
    if (v13 > 0x7F)
    {
      a2[1] = v13 | 0x80;
      v14 = v13 >> 7;
      a2[2] = v13 >> 7;
      v12 = (a2 + 3);
      if (v13 >= 0x4000)
      {
        LOBYTE(a2) = a2[2];
        do
        {
          *(v12 - 1) = a2 | 0x80;
          a2 = (v14 >> 7);
          *v12++ = v14 >> 7;
          v15 = v14 >> 14;
          v14 >>= 7;
        }

        while (v15);
      }
    }

    else
    {
      v12 = (a2 + 2);
    }
  }

  else
  {
    v12 = a2;
  }

  if ((v11 & 0x100) != 0)
  {
    if (*a3 <= v12)
    {
      v12 = sub_225EB68(a3, v12);
    }

    v16 = *(a1 + 368);
    *v12 = 34;
    v17 = *(v16 + 20);
    *(v12 + 1) = v17;
    if (v17 > 0x7F)
    {
      v18 = sub_19575D0(v17, (v12 + 1));
    }

    else
    {
      v18 = (v12 + 2);
    }

    v12 = sub_16EE2C4(v16, v18, a3);
    if ((v11 & 0x200) == 0)
    {
LABEL_20:
      if ((v11 & 0x400) == 0)
      {
        goto LABEL_21;
      }

      goto LABEL_35;
    }
  }

  else if ((v11 & 0x200) == 0)
  {
    goto LABEL_20;
  }

  if (*a3 <= v12)
  {
    v12 = sub_225EB68(a3, v12);
  }

  v19 = *(a1 + 376);
  *v12 = 58;
  v20 = *(v19 + 20);
  *(v12 + 1) = v20;
  if (v20 > 0x7F)
  {
    v21 = sub_19575D0(v20, (v12 + 1));
  }

  else
  {
    v21 = (v12 + 2);
  }

  v12 = sub_15480D4(v19, v21, a3);
  if ((v11 & 0x400) == 0)
  {
LABEL_21:
    if ((v11 & 0x800) == 0)
    {
      goto LABEL_47;
    }

    goto LABEL_41;
  }

LABEL_35:
  if (*a3 <= v12)
  {
    v12 = sub_225EB68(a3, v12);
  }

  v22 = *(a1 + 384);
  *v12 = 66;
  v23 = *(v22 + 36);
  *(v12 + 1) = v23;
  if (v23 > 0x7F)
  {
    v24 = sub_19575D0(v23, (v12 + 1));
  }

  else
  {
    v24 = (v12 + 2);
  }

  v12 = sub_15C2CA0(v22, v24, a3);
  if ((v11 & 0x800) != 0)
  {
LABEL_41:
    if (*a3 <= v12)
    {
      v12 = sub_225EB68(a3, v12);
    }

    v25 = *(a1 + 392);
    *v12 = 74;
    v26 = *(v25 + 36);
    *(v12 + 1) = v26;
    if (v26 > 0x7F)
    {
      v27 = sub_19575D0(v26, (v12 + 1));
    }

    else
    {
      v27 = (v12 + 2);
    }

    v12 = sub_15C2CA0(v25, v27, a3);
  }

LABEL_47:
  v28 = *(a1 + 80);
  if (v28)
  {
    for (j = 0; j != v28; ++j)
    {
      if (*a3 <= v12)
      {
        v12 = sub_225EB68(a3, v12);
      }

      v30 = *(*(a1 + 88) + 8 * j + 8);
      *v12 = 82;
      v31 = *(v30 + 44);
      *(v12 + 1) = v31;
      if (v31 > 0x7F)
      {
        v32 = sub_19575D0(v31, (v12 + 1));
      }

      else
      {
        v32 = (v12 + 2);
      }

      v12 = sub_15CFD5C(v30, v32, a3);
    }
  }

  if ((v11 & 0x40000) != 0)
  {
    if (*a3 <= v12)
    {
      v12 = sub_225EB68(a3, v12);
    }

    v34 = *(a1 + 448);
    *v12 = 88;
    *(v12 + 1) = v34;
    if (v34 > 0x7F)
    {
      *(v12 + 1) = v34 | 0x80;
      v35 = v34 >> 7;
      *(v12 + 2) = v34 >> 7;
      v33 = (v12 + 3);
      if (v34 >= 0x4000)
      {
        LOBYTE(v12) = *(v12 + 2);
        do
        {
          *(v33 - 1) = v12 | 0x80;
          v12 = v35 >> 7;
          *v33++ = v35 >> 7;
          v36 = v35 >> 14;
          v35 >>= 7;
        }

        while (v36);
      }
    }

    else
    {
      v33 = (v12 + 2);
    }
  }

  else
  {
    v33 = v12;
  }

  v37 = *(a1 + 104);
  if (v37 >= 1)
  {
    v38 = 8;
    do
    {
      v39 = *(*(a1 + 112) + v38);
      v40 = *(v39 + 23);
      if (v40 < 0 && (v40 = v39[1], v40 > 127) || (*a3 - v33 + 14) < v40)
      {
        v33 = sub_1957480(a3, 12, v39, v33);
      }

      else
      {
        *v33 = 98;
        v33[1] = v40;
        if (*(v39 + 23) < 0)
        {
          v39 = *v39;
        }

        v41 = v33 + 2;
        memcpy(v33 + 2, v39, v40);
        v33 = &v41[v40];
      }

      v38 += 8;
      --v37;
    }

    while (v37);
  }

  if (v11)
  {
    v33 = sub_128AEEC(a3, 13, (*(a1 + 304) & 0xFFFFFFFFFFFFFFFELL), v33);
  }

  v42 = *(a1 + 128);
  if (v42)
  {
    for (k = 0; k != v42; ++k)
    {
      if (*a3 <= v33)
      {
        v33 = sub_225EB68(a3, v33);
      }

      v44 = *(*(a1 + 136) + 8 * k + 8);
      *v33 = 114;
      v45 = *(v44 + 20);
      v33[1] = v45;
      if (v45 > 0x7F)
      {
        v46 = sub_19575D0(v45, v33 + 1);
      }

      else
      {
        v46 = v33 + 2;
      }

      v33 = sub_157926C(v44, v46, a3);
    }
  }

  v47 = *(a1 + 152);
  if (v47)
  {
    for (m = 0; m != v47; ++m)
    {
      if (*a3 <= v33)
      {
        v33 = sub_225EB68(a3, v33);
      }

      v49 = *(*(a1 + 160) + 8 * m + 8);
      *v33 = 122;
      v50 = *(v49 + 20);
      v33[1] = v50;
      if (v50 > 0x7F)
      {
        v51 = sub_19575D0(v50, v33 + 1);
      }

      else
      {
        v51 = v33 + 2;
      }

      v33 = sub_157926C(v49, v51, a3);
    }
  }

  v52 = *(a1 + 176);
  if (v52)
  {
    for (n = 0; n != v52; ++n)
    {
      if (*a3 <= v33)
      {
        v33 = sub_225EB68(a3, v33);
      }

      v54 = *(*(a1 + 184) + 8 * n + 8);
      *v33 = 386;
      v55 = *(v54 + 44);
      v33[2] = v55;
      if (v55 > 0x7F)
      {
        v56 = sub_19575D0(v55, v33 + 2);
      }

      else
      {
        v56 = v33 + 3;
      }

      v33 = sub_15CFD5C(v54, v56, a3);
    }
  }

  if ((v11 & 2) != 0)
  {
    v33 = sub_128AEEC(a3, 17, (*(a1 + 312) & 0xFFFFFFFFFFFFFFFELL), v33);
  }

  if ((v11 & 0x80000) != 0)
  {
    if (*a3 <= v33)
    {
      v33 = sub_225EB68(a3, v33);
    }

    v58 = *(a1 + 452);
    *v33 = 400;
    v33[2] = v58;
    if (v58 > 0x7F)
    {
      v33[2] = v58 | 0x80;
      v59 = v58 >> 7;
      v33[3] = v58 >> 7;
      v57 = v33 + 4;
      if (v58 >= 0x4000)
      {
        LOBYTE(v60) = v33[3];
        do
        {
          *(v57 - 1) = v60 | 0x80;
          v60 = v59 >> 7;
          *v57++ = v59 >> 7;
          v61 = v59 >> 14;
          v59 >>= 7;
        }

        while (v61);
      }
    }

    else
    {
      v57 = v33 + 3;
    }
  }

  else
  {
    v57 = v33;
  }

  if ((v11 & 0x100000) != 0)
  {
    if (*a3 <= v57)
    {
      v57 = sub_225EB68(a3, v57);
    }

    v62 = *(a1 + 456);
    *v57 = 408;
    v57[2] = v62;
    v57 += 3;
    if ((v11 & 0x200000) == 0)
    {
LABEL_114:
      if ((v11 & 0x1000) == 0)
      {
        goto LABEL_128;
      }

      goto LABEL_122;
    }
  }

  else if ((v11 & 0x200000) == 0)
  {
    goto LABEL_114;
  }

  if (*a3 <= v57)
  {
    v57 = sub_225EB68(a3, v57);
  }

  v63 = *(a1 + 457);
  *v57 = 416;
  v57[2] = v63;
  v57 += 3;
  if ((v11 & 0x1000) != 0)
  {
LABEL_122:
    if (*a3 <= v57)
    {
      v57 = sub_225EB68(a3, v57);
    }

    v64 = *(a1 + 400);
    *v57 = 426;
    v65 = *(v64 + 20);
    v57[2] = v65;
    if (v65 > 0x7F)
    {
      v66 = sub_19575D0(v65, v57 + 2);
    }

    else
    {
      v66 = v57 + 3;
    }

    v57 = sub_15BFCD8(v64, v66, a3);
  }

LABEL_128:
  v67 = *(a1 + 192);
  if (v67 < 1)
  {
    v70 = v57;
  }

  else
  {
    for (ii = 0; ii != v67; ++ii)
    {
      if (*a3 <= v57)
      {
        v57 = sub_225EB68(a3, v57);
      }

      v69 = *(*(a1 + 200) + 8 * ii);
      *v57 = 432;
      v57[2] = v69;
      if (v69 > 0x7F)
      {
        v57[2] = v69 | 0x80;
        v71 = v69 >> 7;
        v57[3] = v69 >> 7;
        v70 = v57 + 4;
        if (v69 >= 0x4000)
        {
          LOBYTE(v57) = v57[3];
          do
          {
            *(v70 - 1) = v57 | 0x80;
            v57 = (v71 >> 7);
            *v70++ = v71 >> 7;
            v72 = v71 >> 14;
            v71 >>= 7;
          }

          while (v72);
        }
      }

      else
      {
        v70 = v57 + 3;
      }

      v57 = v70;
    }
  }

  v73 = *(a1 + 216);
  if (v73)
  {
    for (jj = 0; jj != v73; ++jj)
    {
      if (*a3 <= v70)
      {
        v70 = sub_225EB68(a3, v70);
      }

      v75 = *(*(a1 + 224) + 8 * jj + 8);
      *v70 = 442;
      v76 = *(v75 + 20);
      v70[2] = v76;
      if (v76 > 0x7F)
      {
        v77 = sub_19575D0(v76, v70 + 2);
      }

      else
      {
        v77 = v70 + 3;
      }

      v70 = sub_15CF064(v75, v77, a3);
    }
  }

  if ((v11 & 0x2000) != 0)
  {
    if (*a3 <= v70)
    {
      v70 = sub_225EB68(a3, v70);
    }

    v79 = *(a1 + 408);
    *v70 = 450;
    v80 = *(v79 + 40);
    v70[2] = v80;
    if (v80 > 0x7F)
    {
      v81 = sub_19575D0(v80, v70 + 2);
    }

    else
    {
      v81 = v70 + 3;
    }

    v70 = sub_167E8A4(v79, v81, a3);
    if ((v11 & 4) == 0)
    {
LABEL_150:
      if ((v11 & 8) == 0)
      {
        goto LABEL_151;
      }

      goto LABEL_164;
    }
  }

  else if ((v11 & 4) == 0)
  {
    goto LABEL_150;
  }

  v70 = sub_128AEEC(a3, 25, (*(a1 + 320) & 0xFFFFFFFFFFFFFFFELL), v70);
  if ((v11 & 8) == 0)
  {
LABEL_151:
    if ((v11 & 0x10) == 0)
    {
      goto LABEL_152;
    }

    goto LABEL_165;
  }

LABEL_164:
  v70 = sub_128AEEC(a3, 26, (*(a1 + 328) & 0xFFFFFFFFFFFFFFFELL), v70);
  if ((v11 & 0x10) == 0)
  {
LABEL_152:
    if ((v11 & 0x20) == 0)
    {
      goto LABEL_153;
    }

    goto LABEL_166;
  }

LABEL_165:
  v70 = sub_128AEEC(a3, 27, (*(a1 + 336) & 0xFFFFFFFFFFFFFFFELL), v70);
  if ((v11 & 0x20) == 0)
  {
LABEL_153:
    if ((v11 & 0x40) == 0)
    {
      goto LABEL_154;
    }

    goto LABEL_167;
  }

LABEL_166:
  v70 = sub_128AEEC(a3, 28, (*(a1 + 344) & 0xFFFFFFFFFFFFFFFELL), v70);
  if ((v11 & 0x40) == 0)
  {
LABEL_154:
    if ((v11 & 0x4000) == 0)
    {
      goto LABEL_155;
    }

LABEL_168:
    if (*a3 <= v70)
    {
      v70 = sub_225EB68(a3, v70);
    }

    v82 = *(a1 + 416);
    *v70 = 498;
    v83 = *(v82 + 20);
    v70[2] = v83;
    if (v83 > 0x7F)
    {
      v84 = sub_19575D0(v83, v70 + 2);
    }

    else
    {
      v84 = v70 + 3;
    }

    v70 = sub_15D2398(v82, v84, a3);
    if ((v11 & 0x400000) == 0)
    {
      goto LABEL_156;
    }

    goto LABEL_174;
  }

LABEL_167:
  v70 = sub_128AEEC(a3, 29, (*(a1 + 352) & 0xFFFFFFFFFFFFFFFELL), v70);
  if ((v11 & 0x4000) != 0)
  {
    goto LABEL_168;
  }

LABEL_155:
  if ((v11 & 0x400000) == 0)
  {
LABEL_156:
    v78 = v70;
    goto LABEL_181;
  }

LABEL_174:
  if (*a3 <= v70)
  {
    v70 = sub_225EB68(a3, v70);
  }

  v85 = *(a1 + 460);
  *v70 = 504;
  v70[2] = v85;
  if (v85 > 0x7F)
  {
    v70[2] = v85 | 0x80;
    v86 = v85 >> 7;
    v70[3] = v85 >> 7;
    v78 = v70 + 4;
    if (v85 >= 0x4000)
    {
      LOBYTE(v87) = v70[3];
      do
      {
        *(v78 - 1) = v87 | 0x80;
        v87 = v86 >> 7;
        *v78++ = v86 >> 7;
        v88 = v86 >> 14;
        v86 >>= 7;
      }

      while (v88);
    }
  }

  else
  {
    v78 = v70 + 3;
  }

LABEL_181:
  if ((v11 & 0x800000) != 0)
  {
    if (*a3 <= v78)
    {
      v78 = sub_225EB68(a3, v78);
    }

    v90 = *(a1 + 464);
    *v78 = 640;
    v78[2] = v90;
    if (v90 > 0x7F)
    {
      v78[2] = v90 | 0x80;
      v91 = v90 >> 7;
      v78[3] = v90 >> 7;
      v89 = v78 + 4;
      if (v90 >= 0x4000)
      {
        LOBYTE(v92) = v78[3];
        do
        {
          *(v89 - 1) = v92 | 0x80;
          v92 = v91 >> 7;
          *v89++ = v91 >> 7;
          v93 = v91 >> 14;
          v91 >>= 7;
        }

        while (v93);
      }
    }

    else
    {
      v89 = v78 + 3;
    }
  }

  else
  {
    v89 = v78;
  }

  if ((v11 & 0x1000000) != 0)
  {
    if (*a3 <= v89)
    {
      v89 = sub_225EB68(a3, v89);
    }

    v95 = *(a1 + 468);
    *v89 = 648;
    v89[2] = v95;
    if (v95 > 0x7F)
    {
      v89[2] = v95 | 0x80;
      v96 = v95 >> 7;
      v89[3] = v95 >> 7;
      v94 = v89 + 4;
      if (v95 >= 0x4000)
      {
        LOBYTE(v89) = v89[3];
        do
        {
          *(v94 - 1) = v89 | 0x80;
          v89 = (v96 >> 7);
          *v94++ = v96 >> 7;
          v97 = v96 >> 14;
          v96 >>= 7;
        }

        while (v97);
      }
    }

    else
    {
      v94 = v89 + 3;
    }
  }

  else
  {
    v94 = v89;
  }

  if ((v11 & 0x8000) != 0)
  {
    if (*a3 <= v94)
    {
      v94 = sub_225EB68(a3, v94);
    }

    v98 = *(a1 + 424);
    *v94 = 658;
    v99 = *(v98 + 20);
    v94[2] = v99;
    if (v99 > 0x7F)
    {
      v100 = sub_19575D0(v99, v94 + 2);
    }

    else
    {
      v100 = v94 + 3;
    }

    v94 = sub_157C8A0(v98, v100, a3);
  }

  if ((v11 & 0x80) != 0)
  {
    v94 = sub_128AEEC(a3, 35, (*(a1 + 360) & 0xFFFFFFFFFFFFFFFELL), v94);
  }

  v101 = *(a1 + 240);
  if (v101)
  {
    for (kk = 0; kk != v101; ++kk)
    {
      if (*a3 <= v94)
      {
        v94 = sub_225EB68(a3, v94);
      }

      v103 = *(*(a1 + 248) + 8 * kk + 8);
      *v94 = 674;
      v104 = *(v103 + 20);
      v94[2] = v104;
      if (v104 > 0x7F)
      {
        v105 = sub_19575D0(v104, v94 + 2);
      }

      else
      {
        v105 = v94 + 3;
      }

      v94 = sub_15CB70C(v103, v105, a3);
    }
  }

  v106 = *(a1 + 264);
  if (v106 >= 1)
  {
    v107 = 8;
    do
    {
      v108 = *(*(a1 + 272) + v107);
      v109 = *(v108 + 23);
      if (v109 < 0 && (v109 = v108[1], v109 > 127) || (*a3 - v94 + 13) < v109)
      {
        v94 = sub_1957480(a3, 37, v108, v94);
      }

      else
      {
        *v94 = 682;
        v94[2] = v109;
        if (*(v108 + 23) < 0)
        {
          v108 = *v108;
        }

        v110 = v94 + 3;
        memcpy(v110, v108, v109);
        v94 = &v110[v109];
      }

      v107 += 8;
      --v106;
    }

    while (v106);
  }

  v111 = *(a1 + 288);
  if (v111)
  {
    for (mm = 0; mm != v111; ++mm)
    {
      if (*a3 <= v94)
      {
        v94 = sub_225EB68(a3, v94);
      }

      v113 = *(*(a1 + 296) + 8 * mm + 8);
      *v94 = 690;
      v114 = *(v113 + 20);
      v94[2] = v114;
      if (v114 > 0x7F)
      {
        v115 = sub_19575D0(v114, v94 + 2);
      }

      else
      {
        v115 = v94 + 3;
      }

      v94 = sub_157D6B0(v113, v115, a3);
    }
  }

  if ((v11 & 0x10000) != 0)
  {
    if (*a3 <= v94)
    {
      v94 = sub_225EB68(a3, v94);
    }

    v116 = *(a1 + 432);
    *v94 = 698;
    v117 = *(v116 + 104);
    v94[2] = v117;
    if (v117 > 0x7F)
    {
      v118 = sub_19575D0(v117, v94 + 2);
    }

    else
    {
      v118 = v94 + 3;
    }

    v94 = sub_13B6C70(v116, v118, a3);
  }

  if (*(a1 + 26))
  {
    v94 = sub_1953428(a1 + 16, 1000, 1050, v94, a3);
  }

  v119 = *(a1 + 8);
  if ((v119 & 1) == 0)
  {
    return v94;
  }

  v121 = v119 & 0xFFFFFFFFFFFFFFFCLL;
  v122 = *(v121 + 31);
  if (v122 < 0)
  {
    v123 = *(v121 + 8);
    v122 = *(v121 + 16);
  }

  else
  {
    v123 = (v121 + 8);
  }

  if ((*a3 - v94) >= v122)
  {
    v124 = v122;
    memcpy(v94, v123, v122);
    v94 += v124;
    return v94;
  }

  return sub_1957130(a3, v123, v122, v94);
}

uint64_t sub_15D0C70(uint64_t a1)
{
  v2 = sub_1955FBC(a1 + 16);
  v3 = *(a1 + 56);
  v4 = v2 + v3;
  v5 = *(a1 + 64);
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
      v9 = sub_15CC1B8(v8);
      v4 += v9 + ((9 * (__clz(v9 | 1) ^ 0x1F) + 73) >> 6);
      v7 -= 8;
    }

    while (v7);
  }

  v10 = *(a1 + 80);
  v11 = v4 + v10;
  v12 = *(a1 + 88);
  if (v12)
  {
    v13 = (v12 + 8);
  }

  else
  {
    v13 = 0;
  }

  if (v10)
  {
    v14 = 8 * v10;
    do
    {
      v15 = *v13++;
      v16 = sub_15D0C70(v15);
      v11 += v16 + ((9 * (__clz(v16 | 1) ^ 0x1F) + 73) >> 6);
      v14 -= 8;
    }

    while (v14);
  }

  v17 = *(a1 + 104);
  v18 = v11 + v17;
  if (v17 >= 1)
  {
    v19 = (*(a1 + 112) + 8);
    do
    {
      v20 = *v19++;
      v21 = *(v20 + 23);
      v22 = *(v20 + 8);
      if ((v21 & 0x80u) == 0)
      {
        v22 = v21;
      }

      v18 += v22 + ((9 * (__clz(v22 | 1) ^ 0x1F) + 73) >> 6);
      --v17;
    }

    while (v17);
  }

  v23 = *(a1 + 128);
  v24 = v18 + v23;
  v25 = *(a1 + 136);
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
      v29 = sub_1579354(v28);
      v24 += v29 + ((9 * (__clz(v29 | 1) ^ 0x1F) + 73) >> 6);
      v27 -= 8;
    }

    while (v27);
  }

  v30 = *(a1 + 152);
  v31 = v24 + v30;
  v32 = *(a1 + 160);
  if (v32)
  {
    v33 = (v32 + 8);
  }

  else
  {
    v33 = 0;
  }

  if (v30)
  {
    v34 = 8 * v30;
    do
    {
      v35 = *v33++;
      v36 = sub_1579354(v35);
      v31 += v36 + ((9 * (__clz(v36 | 1) ^ 0x1F) + 73) >> 6);
      v34 -= 8;
    }

    while (v34);
  }

  v37 = *(a1 + 176);
  v38 = v31 + 2 * v37;
  v39 = *(a1 + 184);
  if (v39)
  {
    v40 = (v39 + 8);
  }

  else
  {
    v40 = 0;
  }

  if (v37)
  {
    v41 = 8 * v37;
    do
    {
      v42 = *v40++;
      v43 = sub_15D0C70(v42);
      v38 += v43 + ((9 * (__clz(v43 | 1) ^ 0x1F) + 73) >> 6);
      v41 -= 8;
    }

    while (v41);
  }

  v44 = sub_1959F14((a1 + 192));
  v45 = *(a1 + 216);
  v46 = v44 + v38 + 2 * (v45 + *(a1 + 192));
  v47 = *(a1 + 224);
  if (v47)
  {
    v48 = (v47 + 8);
  }

  else
  {
    v48 = 0;
  }

  if (v45)
  {
    v49 = 8 * v45;
    do
    {
      v50 = *v48++;
      v51 = sub_15CF228(v50);
      v46 += v51 + ((9 * (__clz(v51 | 1) ^ 0x1F) + 73) >> 6);
      v49 -= 8;
    }

    while (v49);
  }

  v52 = *(a1 + 240);
  v53 = v46 + 2 * v52;
  v54 = *(a1 + 248);
  if (v54)
  {
    v55 = (v54 + 8);
  }

  else
  {
    v55 = 0;
  }

  if (v52)
  {
    v56 = 8 * v52;
    do
    {
      v57 = *v55++;
      v58 = sub_15CC1B8(v57);
      v53 += v58 + ((9 * (__clz(v58 | 1) ^ 0x1F) + 73) >> 6);
      v56 -= 8;
    }

    while (v56);
  }

  v59 = *(a1 + 264);
  v60 = v53 + 2 * v59;
  if (v59 >= 1)
  {
    v61 = (*(a1 + 272) + 8);
    do
    {
      v62 = *v61++;
      v63 = *(v62 + 23);
      v64 = *(v62 + 8);
      if ((v63 & 0x80u) == 0)
      {
        v64 = v63;
      }

      v60 += v64 + ((9 * (__clz(v64 | 1) ^ 0x1F) + 73) >> 6);
      --v59;
    }

    while (v59);
  }

  v65 = *(a1 + 288);
  v66 = v60 + 2 * v65;
  v67 = *(a1 + 296);
  if (v67)
  {
    v68 = (v67 + 8);
  }

  else
  {
    v68 = 0;
  }

  if (v65)
  {
    v69 = 8 * v65;
    do
    {
      v70 = *v68++;
      v71 = sub_157D798(v70);
      v66 += v71 + ((9 * (__clz(v71 | 1) ^ 0x1F) + 73) >> 6);
      v69 -= 8;
    }

    while (v69);
  }

  v72 = *(a1 + 40);
  if (!v72)
  {
    goto LABEL_71;
  }

  if (v72)
  {
    v92 = *(a1 + 304) & 0xFFFFFFFFFFFFFFFELL;
    v93 = *(v92 + 23);
    v94 = *(v92 + 8);
    if ((v93 & 0x80u) == 0)
    {
      v94 = v93;
    }

    v66 += v94 + ((9 * (__clz(v94 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v72 & 2) == 0)
    {
LABEL_62:
      if ((v72 & 4) == 0)
      {
        goto LABEL_63;
      }

      goto LABEL_118;
    }
  }

  else if ((v72 & 2) == 0)
  {
    goto LABEL_62;
  }

  v95 = *(a1 + 312) & 0xFFFFFFFFFFFFFFFELL;
  v96 = *(v95 + 23);
  v97 = *(v95 + 8);
  if ((v96 & 0x80u) == 0)
  {
    v97 = v96;
  }

  v66 += v97 + ((9 * (__clz(v97 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v72 & 4) == 0)
  {
LABEL_63:
    if ((v72 & 8) == 0)
    {
      goto LABEL_64;
    }

    goto LABEL_121;
  }

LABEL_118:
  v98 = *(a1 + 320) & 0xFFFFFFFFFFFFFFFELL;
  v99 = *(v98 + 23);
  v100 = *(v98 + 8);
  if ((v99 & 0x80u) == 0)
  {
    v100 = v99;
  }

  v66 += v100 + ((9 * (__clz(v100 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v72 & 8) == 0)
  {
LABEL_64:
    if ((v72 & 0x10) == 0)
    {
      goto LABEL_65;
    }

    goto LABEL_124;
  }

LABEL_121:
  v101 = *(a1 + 328) & 0xFFFFFFFFFFFFFFFELL;
  v102 = *(v101 + 23);
  v103 = *(v101 + 8);
  if ((v102 & 0x80u) == 0)
  {
    v103 = v102;
  }

  v66 += v103 + ((9 * (__clz(v103 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v72 & 0x10) == 0)
  {
LABEL_65:
    if ((v72 & 0x20) == 0)
    {
      goto LABEL_66;
    }

LABEL_127:
    v107 = *(a1 + 344) & 0xFFFFFFFFFFFFFFFELL;
    v108 = *(v107 + 23);
    v109 = *(v107 + 8);
    if ((v108 & 0x80u) == 0)
    {
      v109 = v108;
    }

    v66 += v109 + ((9 * (__clz(v109 | 1) ^ 0x1F) + 73) >> 6) + 2;
    if ((v72 & 0x40) == 0)
    {
LABEL_67:
      if ((v72 & 0x80) == 0)
      {
        goto LABEL_71;
      }

      goto LABEL_68;
    }

    goto LABEL_130;
  }

LABEL_124:
  v104 = *(a1 + 336) & 0xFFFFFFFFFFFFFFFELL;
  v105 = *(v104 + 23);
  v106 = *(v104 + 8);
  if ((v105 & 0x80u) == 0)
  {
    v106 = v105;
  }

  v66 += v106 + ((9 * (__clz(v106 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v72 & 0x20) != 0)
  {
    goto LABEL_127;
  }

LABEL_66:
  if ((v72 & 0x40) == 0)
  {
    goto LABEL_67;
  }

LABEL_130:
  v110 = *(a1 + 352) & 0xFFFFFFFFFFFFFFFELL;
  v111 = *(v110 + 23);
  v112 = *(v110 + 8);
  if ((v111 & 0x80u) == 0)
  {
    v112 = v111;
  }

  v66 += v112 + ((9 * (__clz(v112 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v72 & 0x80) != 0)
  {
LABEL_68:
    v73 = *(a1 + 360) & 0xFFFFFFFFFFFFFFFELL;
    v74 = *(v73 + 23);
    v75 = *(v73 + 8);
    if ((v74 & 0x80u) == 0)
    {
      v75 = v74;
    }

    v66 += v75 + ((9 * (__clz(v75 | 1) ^ 0x1F) + 73) >> 6) + 2;
  }

LABEL_71:
  if ((v72 & 0xFF00) == 0)
  {
    goto LABEL_81;
  }

  if ((v72 & 0x100) != 0)
  {
    v113 = sub_16EE474(*(a1 + 368));
    v66 += v113 + ((9 * (__clz(v113 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v72 & 0x200) == 0)
    {
LABEL_74:
      if ((v72 & 0x400) == 0)
      {
        goto LABEL_75;
      }

      goto LABEL_136;
    }
  }

  else if ((v72 & 0x200) == 0)
  {
    goto LABEL_74;
  }

  v114 = sub_1548710(*(a1 + 376));
  v66 += v114 + ((9 * (__clz(v114 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v72 & 0x400) == 0)
  {
LABEL_75:
    if ((v72 & 0x800) == 0)
    {
      goto LABEL_76;
    }

    goto LABEL_137;
  }

LABEL_136:
  v115 = sub_15C6544(*(a1 + 384));
  v66 += v115 + ((9 * (__clz(v115 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v72 & 0x800) == 0)
  {
LABEL_76:
    if ((v72 & 0x1000) == 0)
    {
      goto LABEL_77;
    }

    goto LABEL_138;
  }

LABEL_137:
  v116 = sub_15C6544(*(a1 + 392));
  v66 += v116 + ((9 * (__clz(v116 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v72 & 0x1000) == 0)
  {
LABEL_77:
    if ((v72 & 0x2000) == 0)
    {
      goto LABEL_78;
    }

    goto LABEL_139;
  }

LABEL_138:
  v117 = sub_15BFDEC(*(a1 + 400));
  v66 += v117 + ((9 * (__clz(v117 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v72 & 0x2000) == 0)
  {
LABEL_78:
    if ((v72 & 0x4000) == 0)
    {
      goto LABEL_79;
    }

    goto LABEL_140;
  }

LABEL_139:
  v118 = sub_167E9E4(*(a1 + 408));
  v66 += v118 + ((9 * (__clz(v118 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v72 & 0x4000) == 0)
  {
LABEL_79:
    if ((v72 & 0x8000) == 0)
    {
      goto LABEL_81;
    }

    goto LABEL_80;
  }

LABEL_140:
  v119 = sub_15D24F8(*(a1 + 416));
  v66 += v119 + ((9 * (__clz(v119 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v72 & 0x8000) != 0)
  {
LABEL_80:
    v76 = sub_157CE54(*(a1 + 424));
    v66 += v76 + ((9 * (__clz(v76 | 1) ^ 0x1F) + 73) >> 6) + 2;
  }

LABEL_81:
  if ((v72 & 0xFF0000) == 0)
  {
    goto LABEL_105;
  }

  if ((v72 & 0x10000) != 0)
  {
    v120 = sub_13B7050(*(a1 + 432));
    v66 += v120 + ((9 * (__clz(v120 | 1) ^ 0x1F) + 73) >> 6) + 2;
    if ((v72 & 0x20000) == 0)
    {
LABEL_84:
      if ((v72 & 0x40000) == 0)
      {
        goto LABEL_85;
      }

LABEL_144:
      v121 = *(a1 + 448);
      v122 = ((9 * (__clz(v121 | 1) ^ 0x1F) + 73) >> 6) + 1;
      if (v121 >= 0)
      {
        v123 = v122;
      }

      else
      {
        v123 = 11;
      }

      v66 += v123;
      if ((v72 & 0x80000) == 0)
      {
        goto LABEL_90;
      }

      goto LABEL_86;
    }
  }

  else if ((v72 & 0x20000) == 0)
  {
    goto LABEL_84;
  }

  v66 += ((9 * (__clz(*(a1 + 440) | 1) ^ 0x3F) + 73) >> 6) + 1;
  if ((v72 & 0x40000) != 0)
  {
    goto LABEL_144;
  }

LABEL_85:
  if ((v72 & 0x80000) != 0)
  {
LABEL_86:
    v77 = *(a1 + 452);
    v78 = ((9 * (__clz(v77 | 1) ^ 0x1F) + 73) >> 6) + 2;
    if (v77 >= 0)
    {
      v79 = v78;
    }

    else
    {
      v79 = 12;
    }

    v66 += v79;
  }

LABEL_90:
  v80 = v66 + 3;
  if ((v72 & 0x100000) == 0)
  {
    v80 = v66;
  }

  if ((v72 & 0x200000) != 0)
  {
    v66 = v80 + 3;
  }

  else
  {
    v66 = v80;
  }

  if ((v72 & 0x400000) != 0)
  {
    v81 = *(a1 + 460);
    v82 = ((9 * (__clz(v81 | 1) ^ 0x1F) + 73) >> 6) + 2;
    if (v81 >= 0)
    {
      v83 = v82;
    }

    else
    {
      v83 = 12;
    }

    v66 += v83;
  }

  if ((v72 & 0x800000) != 0)
  {
    v84 = *(a1 + 464);
    v85 = ((9 * (__clz(v84 | 1) ^ 0x1F) + 73) >> 6) + 2;
    if (v84 >= 0)
    {
      v86 = v85;
    }

    else
    {
      v86 = 12;
    }

    v66 += v86;
  }

LABEL_105:
  if ((v72 & 0x1000000) != 0)
  {
    v87 = *(a1 + 468);
    v88 = ((9 * (__clz(v87 | 1) ^ 0x1F) + 73) >> 6) + 2;
    if (v87 >= 0)
    {
      v89 = v88;
    }

    else
    {
      v89 = 12;
    }

    v66 += v89;
  }

  v90 = *(a1 + 8);
  if (v90)
  {
    v124 = v90 & 0xFFFFFFFFFFFFFFFCLL;
    v125 = *((v90 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v125 < 0)
    {
      v125 = *(v124 + 16);
    }

    v66 += v125;
  }

  *(a1 + 44) = v66;
  return v66;
}

void sub_15D158C(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 56);
  if (v4)
  {
    v5 = *(a2 + 64);
    v6 = sub_19592E8(a1 + 48, *(a2 + 56));
    sub_15D7858((a1 + 48), v6, (v5 + 8), v4, **(a1 + 64) - *(a1 + 56));
    v7 = *(a1 + 56) + v4;
    *(a1 + 56) = v7;
    v8 = *(a1 + 64);
    if (*v8 < v7)
    {
      *v8 = v7;
    }
  }

  v9 = *(a2 + 80);
  if (v9)
  {
    v10 = *(a2 + 88);
    v11 = sub_19592E8(a1 + 72, *(a2 + 80));
    sub_15D78E4((a1 + 72), v11, (v10 + 8), v9, **(a1 + 88) - *(a1 + 80));
    v12 = *(a1 + 80) + v9;
    *(a1 + 80) = v12;
    v13 = *(a1 + 88);
    if (*v13 < v12)
    {
      *v13 = v12;
    }
  }

  v14 = *(a2 + 104);
  if (v14)
  {
    v15 = *(a2 + 112);
    v16 = sub_19592E8(a1 + 96, *(a2 + 104));
    sub_1201B48((a1 + 96), v16, (v15 + 8), v14, **(a1 + 112) - *(a1 + 104));
    v17 = *(a1 + 104) + v14;
    *(a1 + 104) = v17;
    v18 = *(a1 + 112);
    if (*v18 < v17)
    {
      *v18 = v17;
    }
  }

  v19 = *(a2 + 128);
  if (v19)
  {
    v20 = *(a2 + 136);
    v21 = sub_19592E8(a1 + 120, *(a2 + 128));
    sub_1311FF0((a1 + 120), v21, (v20 + 8), v19, **(a1 + 136) - *(a1 + 128));
    v22 = *(a1 + 128) + v19;
    *(a1 + 128) = v22;
    v23 = *(a1 + 136);
    if (*v23 < v22)
    {
      *v23 = v22;
    }
  }

  v24 = *(a2 + 152);
  if (v24)
  {
    v25 = *(a2 + 160);
    v26 = sub_19592E8(a1 + 144, *(a2 + 152));
    sub_1311FF0((a1 + 144), v26, (v25 + 8), v24, **(a1 + 160) - *(a1 + 152));
    v27 = *(a1 + 152) + v24;
    *(a1 + 152) = v27;
    v28 = *(a1 + 160);
    if (*v28 < v27)
    {
      *v28 = v27;
    }
  }

  v29 = *(a2 + 176);
  if (v29)
  {
    v30 = *(a2 + 184);
    v31 = sub_19592E8(a1 + 168, *(a2 + 176));
    sub_15D78E4((a1 + 168), v31, (v30 + 8), v29, **(a1 + 184) - *(a1 + 176));
    v32 = *(a1 + 176) + v29;
    *(a1 + 176) = v32;
    v33 = *(a1 + 184);
    if (*v33 < v32)
    {
      *v33 = v32;
    }
  }

  v34 = *(a2 + 192);
  if (v34)
  {
    v35 = *(a1 + 192);
    sub_1959094((a1 + 192), v35 + v34);
    v36 = *(a1 + 200);
    *(a1 + 192) += *(a2 + 192);
    memcpy((v36 + 8 * v35), *(a2 + 200), 8 * *(a2 + 192));
  }

  v37 = *(a2 + 216);
  if (v37)
  {
    v38 = *(a2 + 224);
    v39 = sub_19592E8(a1 + 208, *(a2 + 216));
    sub_15D7970((a1 + 208), v39, (v38 + 8), v37, **(a1 + 224) - *(a1 + 216));
    v40 = *(a1 + 216) + v37;
    *(a1 + 216) = v40;
    v41 = *(a1 + 224);
    if (*v41 < v40)
    {
      *v41 = v40;
    }
  }

  v42 = *(a2 + 240);
  if (v42)
  {
    v43 = *(a2 + 248);
    v44 = sub_19592E8(a1 + 232, *(a2 + 240));
    sub_15D7858((a1 + 232), v44, (v43 + 8), v42, **(a1 + 248) - *(a1 + 240));
    v45 = *(a1 + 240) + v42;
    *(a1 + 240) = v45;
    v46 = *(a1 + 248);
    if (*v46 < v45)
    {
      *v46 = v45;
    }
  }

  v47 = *(a2 + 264);
  if (v47)
  {
    v48 = *(a2 + 272);
    v49 = sub_19592E8(a1 + 256, *(a2 + 264));
    sub_1201B48((a1 + 256), v49, (v48 + 8), v47, **(a1 + 272) - *(a1 + 264));
    v50 = *(a1 + 264) + v47;
    *(a1 + 264) = v50;
    v51 = *(a1 + 272);
    if (*v51 < v50)
    {
      *v51 = v50;
    }
  }

  v52 = *(a2 + 288);
  if (v52)
  {
    v53 = *(a2 + 296);
    v54 = sub_19592E8(a1 + 280, *(a2 + 288));
    sub_15D79FC((a1 + 280), v54, (v53 + 8), v52, **(a1 + 296) - *(a1 + 288));
    v55 = *(a1 + 288) + v52;
    *(a1 + 288) = v55;
    v56 = *(a1 + 296);
    if (*v56 < v55)
    {
      *v56 = v55;
    }
  }

  v57 = *(a2 + 40);
  if (!v57)
  {
    goto LABEL_67;
  }

  if (v57)
  {
    v58 = *(a2 + 304);
    *(a1 + 40) |= 1u;
    v59 = *(a1 + 8);
    v60 = (v59 & 0xFFFFFFFFFFFFFFFCLL);
    if (v59)
    {
      v60 = *v60;
    }

    sub_194EA1C((a1 + 304), (v58 & 0xFFFFFFFFFFFFFFFELL), v60);
    if ((v57 & 2) == 0)
    {
LABEL_36:
      if ((v57 & 4) == 0)
      {
        goto LABEL_37;
      }

      goto LABEL_49;
    }
  }

  else if ((v57 & 2) == 0)
  {
    goto LABEL_36;
  }

  v61 = *(a2 + 312);
  *(a1 + 40) |= 2u;
  v62 = *(a1 + 8);
  v63 = (v62 & 0xFFFFFFFFFFFFFFFCLL);
  if (v62)
  {
    v63 = *v63;
  }

  sub_194EA1C((a1 + 312), (v61 & 0xFFFFFFFFFFFFFFFELL), v63);
  if ((v57 & 4) == 0)
  {
LABEL_37:
    if ((v57 & 8) == 0)
    {
      goto LABEL_38;
    }

    goto LABEL_52;
  }

LABEL_49:
  v64 = *(a2 + 320);
  *(a1 + 40) |= 4u;
  v65 = *(a1 + 8);
  v66 = (v65 & 0xFFFFFFFFFFFFFFFCLL);
  if (v65)
  {
    v66 = *v66;
  }

  sub_194EA1C((a1 + 320), (v64 & 0xFFFFFFFFFFFFFFFELL), v66);
  if ((v57 & 8) == 0)
  {
LABEL_38:
    if ((v57 & 0x10) == 0)
    {
      goto LABEL_39;
    }

    goto LABEL_55;
  }

LABEL_52:
  v67 = *(a2 + 328);
  *(a1 + 40) |= 8u;
  v68 = *(a1 + 8);
  v69 = (v68 & 0xFFFFFFFFFFFFFFFCLL);
  if (v68)
  {
    v69 = *v69;
  }

  sub_194EA1C((a1 + 328), (v67 & 0xFFFFFFFFFFFFFFFELL), v69);
  if ((v57 & 0x10) == 0)
  {
LABEL_39:
    if ((v57 & 0x20) == 0)
    {
      goto LABEL_40;
    }

LABEL_58:
    v73 = *(a2 + 344);
    *(a1 + 40) |= 0x20u;
    v74 = *(a1 + 8);
    v75 = (v74 & 0xFFFFFFFFFFFFFFFCLL);
    if (v74)
    {
      v75 = *v75;
    }

    sub_194EA1C((a1 + 344), (v73 & 0xFFFFFFFFFFFFFFFELL), v75);
    if ((v57 & 0x40) == 0)
    {
LABEL_41:
      if ((v57 & 0x80) == 0)
      {
        goto LABEL_67;
      }

      goto LABEL_64;
    }

    goto LABEL_61;
  }

LABEL_55:
  v70 = *(a2 + 336);
  *(a1 + 40) |= 0x10u;
  v71 = *(a1 + 8);
  v72 = (v71 & 0xFFFFFFFFFFFFFFFCLL);
  if (v71)
  {
    v72 = *v72;
  }

  sub_194EA1C((a1 + 336), (v70 & 0xFFFFFFFFFFFFFFFELL), v72);
  if ((v57 & 0x20) != 0)
  {
    goto LABEL_58;
  }

LABEL_40:
  if ((v57 & 0x40) == 0)
  {
    goto LABEL_41;
  }

LABEL_61:
  v76 = *(a2 + 352);
  *(a1 + 40) |= 0x40u;
  v77 = *(a1 + 8);
  v78 = (v77 & 0xFFFFFFFFFFFFFFFCLL);
  if (v77)
  {
    v78 = *v78;
  }

  sub_194EA1C((a1 + 352), (v76 & 0xFFFFFFFFFFFFFFFELL), v78);
  if ((v57 & 0x80) != 0)
  {
LABEL_64:
    v79 = *(a2 + 360);
    *(a1 + 40) |= 0x80u;
    v80 = *(a1 + 8);
    v81 = (v80 & 0xFFFFFFFFFFFFFFFCLL);
    if (v80)
    {
      v81 = *v81;
    }

    sub_194EA44((a1 + 360), (v79 & 0xFFFFFFFFFFFFFFFELL), v81);
  }

LABEL_67:
  if ((v57 & 0xFF00) == 0)
  {
    goto LABEL_141;
  }

  if ((v57 & 0x100) != 0)
  {
    *(a1 + 40) |= 0x100u;
    v82 = *(a1 + 368);
    if (!v82)
    {
      v83 = *(a1 + 8);
      v84 = (v83 & 0xFFFFFFFFFFFFFFFCLL);
      if (v83)
      {
        v84 = *v84;
      }

      v82 = sub_16F5F38(v84);
      *(a1 + 368) = v82;
    }

    if (*(a2 + 368))
    {
      v85 = *(a2 + 368);
    }

    else
    {
      v85 = &off_277E980;
    }

    sub_121721C(v82, v85);
  }

  if ((v57 & 0x200) != 0)
  {
    *(a1 + 40) |= 0x200u;
    v86 = *(a1 + 376);
    if (!v86)
    {
      v87 = *(a1 + 8);
      v88 = (v87 & 0xFFFFFFFFFFFFFFFCLL);
      if (v87)
      {
        v88 = *v88;
      }

      sub_155218C(v88);
      *(a1 + 376) = v86;
    }

    if (*(a2 + 376))
    {
      v89 = *(a2 + 376);
    }

    else
    {
      v89 = &off_2776D50;
    }

    sub_14D3AD8(v86, v89);
  }

  if ((v57 & 0x400) != 0)
  {
    *(a1 + 40) |= 0x400u;
    v90 = *(a1 + 384);
    if (!v90)
    {
      v91 = *(a1 + 8);
      v92 = (v91 & 0xFFFFFFFFFFFFFFFCLL);
      if (v91)
      {
        v92 = *v92;
      }

      sub_15D462C(v92);
      *(a1 + 384) = v90;
    }

    if (*(a2 + 384))
    {
      v93 = *(a2 + 384);
    }

    else
    {
      v93 = &off_2778DA8;
    }

    sub_15C7EF4(v90, v93);
    if ((v57 & 0x800) == 0)
    {
LABEL_88:
      if ((v57 & 0x1000) == 0)
      {
        goto LABEL_89;
      }

      goto LABEL_109;
    }
  }

  else if ((v57 & 0x800) == 0)
  {
    goto LABEL_88;
  }

  *(a1 + 40) |= 0x800u;
  v94 = *(a1 + 392);
  if (!v94)
  {
    v95 = *(a1 + 8);
    v96 = (v95 & 0xFFFFFFFFFFFFFFFCLL);
    if (v95)
    {
      v96 = *v96;
    }

    sub_15D462C(v96);
    *(a1 + 392) = v94;
  }

  if (*(a2 + 392))
  {
    v97 = *(a2 + 392);
  }

  else
  {
    v97 = &off_2778DA8;
  }

  sub_15C7EF4(v94, v97);
  if ((v57 & 0x1000) == 0)
  {
LABEL_89:
    if ((v57 & 0x2000) == 0)
    {
      goto LABEL_90;
    }

    goto LABEL_117;
  }

LABEL_109:
  *(a1 + 40) |= 0x1000u;
  v98 = *(a1 + 400);
  if (!v98)
  {
    v99 = *(a1 + 8);
    v100 = (v99 & 0xFFFFFFFFFFFFFFFCLL);
    if (v99)
    {
      v100 = *v100;
    }

    v98 = sub_15C0034(v100);
    *(a1 + 400) = v98;
  }

  if (*(a2 + 400))
  {
    v101 = *(a2 + 400);
  }

  else
  {
    v101 = &off_2778D10;
  }

  sub_12EB184(v98, v101);
  if ((v57 & 0x2000) == 0)
  {
LABEL_90:
    if ((v57 & 0x4000) == 0)
    {
      goto LABEL_91;
    }

    goto LABEL_125;
  }

LABEL_117:
  *(a1 + 40) |= 0x2000u;
  v102 = *(a1 + 408);
  if (!v102)
  {
    v103 = *(a1 + 8);
    v104 = (v103 & 0xFFFFFFFFFFFFFFFCLL);
    if (v103)
    {
      v104 = *v104;
    }

    v102 = sub_167EBB4(v104);
    *(a1 + 408) = v102;
  }

  if (*(a2 + 408))
  {
    v105 = *(a2 + 408);
  }

  else
  {
    v105 = &off_277C7C0;
  }

  sub_1673FA0(v102, v105);
  if ((v57 & 0x4000) == 0)
  {
LABEL_91:
    if ((v57 & 0x8000) == 0)
    {
      goto LABEL_141;
    }

    goto LABEL_133;
  }

LABEL_125:
  *(a1 + 40) |= 0x4000u;
  v106 = *(a1 + 416);
  if (!v106)
  {
    v107 = *(a1 + 8);
    v108 = (v107 & 0xFFFFFFFFFFFFFFFCLL);
    if (v107)
    {
      v108 = *v108;
    }

    v106 = sub_15D4BD8(v108);
    *(a1 + 416) = v106;
  }

  if (*(a2 + 416))
  {
    v109 = *(a2 + 416);
  }

  else
  {
    v109 = &off_27795D0;
  }

  sub_12AAC24(v106, v109);
  if ((v57 & 0x8000) != 0)
  {
LABEL_133:
    *(a1 + 40) |= 0x8000u;
    v110 = *(a1 + 424);
    if (!v110)
    {
      v111 = *(a1 + 8);
      v112 = (v111 & 0xFFFFFFFFFFFFFFFCLL);
      if (v111)
      {
        v112 = *v112;
      }

      sub_157D924(v112);
      *(a1 + 424) = v110;
    }

    if (*(a2 + 424))
    {
      v113 = *(a2 + 424);
    }

    else
    {
      v113 = &off_2777810;
    }

    sub_157D090(v110, v113);
  }

LABEL_141:
  if ((v57 & 0xFF0000) == 0)
  {
    goto LABEL_152;
  }

  if ((v57 & 0x10000) != 0)
  {
    *(a1 + 40) |= 0x10000u;
    v116 = *(a1 + 432);
    if (!v116)
    {
      v117 = *(a1 + 8);
      v118 = (v117 & 0xFFFFFFFFFFFFFFFCLL);
      if (v117)
      {
        v118 = *v118;
      }

      v116 = sub_13B736C(v118);
      *(a1 + 432) = v116;
    }

    if (*(a2 + 432))
    {
      v119 = *(a2 + 432);
    }

    else
    {
      v119 = &off_276E0F0;
    }

    sub_13B71CC(v116, v119);
    if ((v57 & 0x20000) == 0)
    {
LABEL_144:
      if ((v57 & 0x40000) == 0)
      {
        goto LABEL_145;
      }

      goto LABEL_167;
    }
  }

  else if ((v57 & 0x20000) == 0)
  {
    goto LABEL_144;
  }

  *(a1 + 440) = *(a2 + 440);
  if ((v57 & 0x40000) == 0)
  {
LABEL_145:
    if ((v57 & 0x80000) == 0)
    {
      goto LABEL_146;
    }

    goto LABEL_168;
  }

LABEL_167:
  *(a1 + 448) = *(a2 + 448);
  if ((v57 & 0x80000) == 0)
  {
LABEL_146:
    if ((v57 & 0x100000) == 0)
    {
      goto LABEL_147;
    }

    goto LABEL_169;
  }

LABEL_168:
  *(a1 + 452) = *(a2 + 452);
  if ((v57 & 0x100000) == 0)
  {
LABEL_147:
    if ((v57 & 0x200000) == 0)
    {
      goto LABEL_148;
    }

    goto LABEL_170;
  }

LABEL_169:
  *(a1 + 456) = *(a2 + 456);
  if ((v57 & 0x200000) == 0)
  {
LABEL_148:
    if ((v57 & 0x400000) == 0)
    {
      goto LABEL_149;
    }

LABEL_171:
    *(a1 + 460) = *(a2 + 460);
    if ((v57 & 0x800000) == 0)
    {
      goto LABEL_151;
    }

    goto LABEL_150;
  }

LABEL_170:
  *(a1 + 457) = *(a2 + 457);
  if ((v57 & 0x400000) != 0)
  {
    goto LABEL_171;
  }

LABEL_149:
  if ((v57 & 0x800000) != 0)
  {
LABEL_150:
    *(a1 + 464) = *(a2 + 464);
  }

LABEL_151:
  *(a1 + 40) |= v57;
LABEL_152:
  if ((v57 & 0x1000000) != 0)
  {
    v114 = *(a2 + 468);
    *(a1 + 40) |= 0x1000000u;
    *(a1 + 468) = v114;
  }

  sub_225EA0C(a1 + 16, a2 + 16);
  v115 = *(a2 + 8);
  if (v115)
  {

    sub_1957EF4((a1 + 8), (v115 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

uint64_t sub_15D1F04(uint64_t a1)
{
  result = sub_195228C(a1 + 16);
  if (result)
  {
    v3 = *(a1 + 56);
    while (v3 >= 1)
    {
      v4 = v3 - 1;
      v5 = sub_15CCD5C(*(*(a1 + 64) + 8 * v3));
      v3 = v4;
      if ((v5 & 1) == 0)
      {
        return 0;
      }
    }

    result = sub_15D202C(a1 + 72);
    if (result)
    {
      result = sub_15D202C(a1 + 168);
      if (result)
      {
        result = sub_15D2084(a1 + 208);
        if (result)
        {
          v6 = *(a1 + 240);
          while (v6 >= 1)
          {
            v7 = v6 - 1;
            v8 = sub_15CCD5C(*(*(a1 + 248) + 8 * v6));
            result = 0;
            v6 = v7;
            if ((v8 & 1) == 0)
            {
              return result;
            }
          }

          v9 = *(a1 + 40);
          if ((v9 & 0x100) != 0)
          {
            result = sub_16EE510(*(a1 + 368));
            if (!result)
            {
              return result;
            }

            v9 = *(a1 + 40);
          }

          if ((v9 & 0x200) != 0)
          {
            result = sub_14D3EC8(*(a1 + 376));
            if (!result)
            {
              return result;
            }

            v9 = *(a1 + 40);
          }

          if ((v9 & 0x400) != 0)
          {
            result = sub_15C9E7C(*(a1 + 384));
            if (!result)
            {
              return result;
            }

            v9 = *(a1 + 40);
          }

          if ((v9 & 0x800) != 0)
          {
            result = sub_15C9E7C(*(a1 + 392));
            if (!result)
            {
              return result;
            }

            v9 = *(a1 + 40);
          }

          if ((v9 & 0x2000) != 0)
          {
            result = sub_1674864(*(a1 + 408));
            if (!result)
            {
              return result;
            }

            v9 = *(a1 + 40);
          }

          if ((v9 & 0x8000) == 0)
          {
            return 1;
          }

          result = sub_157D31C(*(a1 + 424));
          if (result)
          {
            return 1;
          }
        }
      }
    }
  }

  return result;
}

BOOL sub_15D202C(uint64_t a1)
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
    v5 = sub_15D1F04(*(*(a1 + 16) + 8 * v2));
    v2 = v4;
  }

  while ((v5 & 1) != 0);
  return v3 < 1;
}

uint64_t sub_15D2084(uint64_t a1)
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
        v7 = sub_1674700(*(*(v4 + 40) + 8 * v5));
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

void *sub_15D2120(void *a1)
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

void sub_15D2194(void *a1)
{
  sub_15D2120(a1);

  operator delete();
}

char *sub_15D21CC(uint64_t a1, char *a2, int32x2_t *a3)
{
  v20 = a2;
  v5 = 0;
  if (sub_195ADC0(a3, &v20, a3[11].u32[1]))
  {
    goto LABEL_35;
  }

  while (1)
  {
    v6 = v20 + 1;
    v7 = *v20;
    if (*v20 < 0)
    {
      v8 = v7 + (*v6 << 7);
      v7 = v8 - 128;
      if (*v6 < 0)
      {
        v6 = sub_1958824(v20, v8 - 128);
        v7 = v9;
      }

      else
      {
        v6 = v20 + 2;
      }
    }

    v20 = v6;
    if (v7 >> 3 == 2)
    {
      if (v7 == 17)
      {
        *(a1 + 24) = *v6;
        v20 = v6 + 8;
        v5 = 1;
        goto LABEL_27;
      }
    }

    else if (v7 >> 3 == 1 && v7 == 8)
    {
      v14 = v6 + 1;
      v15 = *v6;
      if ((v15 & 0x8000000000000000) == 0)
      {
        goto LABEL_24;
      }

      v16 = *v14;
      v17 = (v16 << 7) + v15;
      LODWORD(v15) = v17 - 128;
      if (v16 < 0)
      {
        v20 = sub_19587DC(v6, (v17 - 128));
        if (!v20)
        {
          goto LABEL_36;
        }

        LODWORD(v15) = v18;
      }

      else
      {
        v14 = v6 + 2;
LABEL_24:
        v20 = v14;
      }

      if (sub_157BACC(v15))
      {
        *(a1 + 16) |= 2u;
        *(a1 + 32) = v15;
      }

      else
      {
        sub_12E8450();
      }

      goto LABEL_27;
    }

    if (!v7 || (v7 & 7) == 4)
    {
      break;
    }

    v12 = *(a1 + 8);
    if (v12)
    {
      v13 = (v12 & 0xFFFFFFFFFFFFFFFCLL) + 8;
    }

    else
    {
      v13 = sub_11F1920((a1 + 8));
      v6 = v20;
    }

    v20 = sub_1952690(v7, v13, v6, a3);
    if (!v20)
    {
      goto LABEL_36;
    }

LABEL_27:
    if (sub_195ADC0(a3, &v20, a3[11].u32[1]))
    {
      goto LABEL_35;
    }
  }

  if (v6)
  {
    a3[10].i32[0] = v7 - 1;
    goto LABEL_35;
  }

LABEL_36:
  v20 = 0;
LABEL_35:
  *(a1 + 16) |= v5;
  return v20;
}

char *sub_15D2398(uint64_t a1, char *__dst, void *a3)
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

  if (v5)
  {
    if (*a3 <= v6)
    {
      v6 = sub_225EB68(a3, v6);
    }

    v11 = *(a1 + 24);
    *v6 = 17;
    *(v6 + 1) = v11;
    v6 += 9;
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

  if (*a3 - v6 >= v15)
  {
    v17 = v15;
    memcpy(v6, v16, v15);
    v6 += v17;
    return v6;
  }

  return sub_1957130(a3, v16, v15, v6);
}

uint64_t sub_15D24F8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if ((v1 & 3) != 0)
  {
    v2 = 9;
    if ((v1 & 1) == 0)
    {
      v2 = 0;
    }

    if ((v1 & 2) != 0)
    {
      v3 = *(a1 + 32);
      if (v3 < 0)
      {
        v4 = 11;
      }

      else
      {
        v4 = ((9 * (__clz(v3 | 1) ^ 0x1F) + 73) >> 6) + 1;
      }

      v2 += v4;
    }
  }

  else
  {
    v2 = 0;
  }

  v5 = *(a1 + 8);
  if (v5)
  {
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL;
    v8 = *((v5 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v8 < 0)
    {
      v8 = *(v7 + 16);
    }

    v2 += v8;
  }

  *(a1 + 20) = v2;
  return v2;
}

void *sub_15D2594(void *a1)
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

  sub_15D2618(a1);
  if (*v3)
  {
    sub_11F19CC(v3);
  }

LABEL_5:
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void ***sub_15D2618(uint64_t a1)
{
  v3 = *(a1 + 24);
  result = (a1 + 24);
  if (v3 != &qword_278E990)
  {
    sub_194E89C(result);
  }

  if (a1 != &off_27795F8)
  {
    v4 = *(a1 + 32);
    if (v4)
    {
      sub_16EE080(v4);
      operator delete();
    }

    v5 = *(a1 + 40);
    if (v5)
    {
      sub_15C17FC(v5);
      operator delete();
    }

    v6 = *(a1 + 48);
    if (v6)
    {
      sub_15CF550(v6);
      operator delete();
    }

    result = *(a1 + 56);
    if (result)
    {
      sub_153FD8C(result);

      operator delete();
    }
  }

  return result;
}

void sub_15D26FC(void *a1)
{
  sub_15D2594(a1);

  operator delete();
}

uint64_t sub_15D2734(uint64_t result)
{
  v1 = result;
  v2 = *(result + 16);
  if ((v2 & 0x1F) == 0)
  {
    goto LABEL_8;
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
        goto LABEL_20;
      }
    }

    else
    {
      *v5 = 0;
      *(v5 + 23) = 0;
      if ((v2 & 2) != 0)
      {
        goto LABEL_20;
      }
    }

LABEL_4:
    if ((v2 & 4) == 0)
    {
      goto LABEL_5;
    }

LABEL_21:
    result = sub_15C1F38(*(v1 + 40));
    if ((v2 & 8) == 0)
    {
LABEL_6:
      if ((v2 & 0x10) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_7;
    }

    goto LABEL_22;
  }

  if ((v2 & 2) == 0)
  {
    goto LABEL_4;
  }

LABEL_20:
  result = sub_16EE0BC(*(result + 32));
  if ((v2 & 4) != 0)
  {
    goto LABEL_21;
  }

LABEL_5:
  if ((v2 & 8) == 0)
  {
    goto LABEL_6;
  }

LABEL_22:
  result = sub_15CF894(*(v1 + 48));
  if ((v2 & 0x10) != 0)
  {
LABEL_7:
    result = sub_153FDC8(*(v1 + 56));
  }

LABEL_8:
  if ((v2 & 0xE0) != 0)
  {
    *(v1 + 64) = 0;
    *(v1 + 72) = 0;
    *(v1 + 80) = 0;
  }

  if ((v2 & 0x300) != 0)
  {
    *(v1 + 96) = 0;
    *(v1 + 88) = 0;
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

uint64_t sub_15D2820(uint64_t a1, uint64_t a2, int32x2_t *a3)
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
    if (v8 >> 3 <= 5)
    {
      if (v8 >> 3 <= 2)
      {
        if (v11 == 1)
        {
          if (v8 == 10)
          {
            *(a1 + 16) |= 2u;
            v23 = *(a1 + 32);
            if (!v23)
            {
              v24 = *(a1 + 8);
              v25 = (v24 & 0xFFFFFFFFFFFFFFFCLL);
              if (v24)
              {
                v25 = *v25;
              }

              v23 = sub_16F5F38(v25);
              *(a1 + 32) = v23;
              v7 = *v44;
            }

            v22 = sub_21F4CD0(a3, v23, v7);
            goto LABEL_72;
          }
        }

        else if (v11 == 2 && v8 == 17)
        {
          v18 = *v7;
          v12 = v7 + 8;
          v5 |= 0x20u;
          *(a1 + 64) = v18;
          goto LABEL_60;
        }
      }

      else if (v11 == 3)
      {
        if (v8 == 25)
        {
          v30 = *v7;
          v12 = v7 + 8;
          v5 |= 0x40u;
          *(a1 + 72) = v30;
          goto LABEL_60;
        }
      }

      else if (v11 == 4)
      {
        if (v8 == 33)
        {
          v35 = *v7;
          v12 = v7 + 8;
          v5 |= 0x80u;
          *(a1 + 80) = v35;
          goto LABEL_60;
        }
      }

      else if (v11 == 5 && v8 == 41)
      {
        v13 = *v7;
        v12 = v7 + 8;
        v5 |= 0x100u;
        *(a1 + 88) = v13;
LABEL_60:
        *v44 = v12;
        goto LABEL_73;
      }

      goto LABEL_65;
    }

    if (v8 >> 3 <= 8)
    {
      if (v11 == 6)
      {
        if (v8 != 50)
        {
          goto LABEL_65;
        }

        *(a1 + 16) |= 4u;
        v26 = *(a1 + 40);
        if (!v26)
        {
          v27 = *(a1 + 8);
          v28 = (v27 & 0xFFFFFFFFFFFFFFFCLL);
          if (v27)
          {
            v28 = *v28;
          }

          sub_15D462C(v28);
          v26 = v29;
          *(a1 + 40) = v29;
          v7 = *v44;
        }

        sub_2226DAC(a3, v26, v7);
      }

      else
      {
        if (v11 != 7 || v8 != 58)
        {
          goto LABEL_65;
        }

        *(a1 + 16) |= 8u;
        v19 = *(a1 + 48);
        if (!v19)
        {
          v20 = *(a1 + 8);
          v21 = (v20 & 0xFFFFFFFFFFFFFFFCLL);
          if (v20)
          {
            v21 = *v21;
          }

          v19 = sub_15D4B7C(v21);
          *(a1 + 48) = v19;
          v7 = *v44;
        }

        v22 = sub_2226E40(a3, v19, v7);
      }

      goto LABEL_72;
    }

    if (v11 == 9)
    {
      if (v8 != 74)
      {
        goto LABEL_65;
      }

      *(a1 + 16) |= 0x10u;
      v31 = *(a1 + 56);
      if (!v31)
      {
        v32 = *(a1 + 8);
        v33 = (v32 & 0xFFFFFFFFFFFFFFFCLL);
        if (v32)
        {
          v33 = *v33;
        }

        sub_1551D64(v33);
        v31 = v34;
        *(a1 + 56) = v34;
        v7 = *v44;
      }

      sub_21F3650(a3, v31, v7);
LABEL_72:
      *v44 = v22;
      if (!v22)
      {
        goto LABEL_80;
      }

      goto LABEL_73;
    }

    if (v11 == 10)
    {
      break;
    }

    if (v11 != 11 || v8 != 88)
    {
      goto LABEL_65;
    }

    v5 |= 0x200u;
    v14 = v7 + 1;
    v15 = *v7;
    if ((*v7 & 0x80000000) == 0)
    {
      goto LABEL_22;
    }

    v16 = *v14;
    v15 = v15 + (v16 << 7) - 128;
    if ((v16 & 0x80000000) == 0)
    {
      v14 = v7 + 2;
LABEL_22:
      *v44 = v14;
      *(a1 + 96) = v15;
      goto LABEL_73;
    }

    v42 = sub_1958770(v7, v15);
    *v44 = v42;
    *(a1 + 96) = v43;
    if (!v42)
    {
      goto LABEL_80;
    }

LABEL_73:
    if (sub_195ADC0(a3, v44, a3[11].u32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v8 == 82)
  {
    *(a1 + 16) |= 1u;
    v36 = *(a1 + 8);
    v37 = (v36 & 0xFFFFFFFFFFFFFFFCLL);
    if (v36)
    {
      v37 = *v37;
    }

    v38 = sub_194DB04((a1 + 24), v37);
    v22 = sub_1958890(v38, *v44, a3);
    goto LABEL_72;
  }

LABEL_65:
  if (v8)
  {
    v39 = (v8 & 7) == 4;
  }

  else
  {
    v39 = 1;
  }

  if (!v39)
  {
    v40 = *(a1 + 8);
    if (v40)
    {
      v41 = (v40 & 0xFFFFFFFFFFFFFFFCLL) + 8;
    }

    else
    {
      v41 = sub_11F1920((a1 + 8));
      v7 = *v44;
    }

    v22 = sub_1952690(v8, v41, v7, a3);
    goto LABEL_72;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_80:
  *v44 = 0;
LABEL_2:
  *(a1 + 16) |= v5;
  return *v44;
}

char *sub_15D2BF8(uint64_t a1, char *__dst, unint64_t *a3)
{
  v4 = __dst;
  v6 = *(a1 + 16);
  if ((v6 & 2) != 0)
  {
    if (*a3 <= __dst)
    {
      v4 = sub_225EB68(a3, __dst);
    }

    v8 = *(a1 + 32);
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

    v4 = sub_16EE2C4(v8, v10, a3);
    if ((v6 & 0x20) == 0)
    {
LABEL_3:
      if ((v6 & 0x40) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_21;
    }
  }

  else if ((v6 & 0x20) == 0)
  {
    goto LABEL_3;
  }

  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v11 = *(a1 + 64);
  *v4 = 17;
  *(v4 + 1) = v11;
  v4 += 9;
  if ((v6 & 0x40) == 0)
  {
LABEL_4:
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_24;
  }

LABEL_21:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v12 = *(a1 + 72);
  *v4 = 25;
  *(v4 + 1) = v12;
  v4 += 9;
  if ((v6 & 0x80) == 0)
  {
LABEL_5:
    if ((v6 & 0x100) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_27;
  }

LABEL_24:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v13 = *(a1 + 80);
  *v4 = 33;
  *(v4 + 1) = v13;
  v4 += 9;
  if ((v6 & 0x100) == 0)
  {
LABEL_6:
    if ((v6 & 4) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_30;
  }

LABEL_27:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v14 = *(a1 + 88);
  *v4 = 41;
  *(v4 + 1) = v14;
  v4 += 9;
  if ((v6 & 4) == 0)
  {
LABEL_7:
    if ((v6 & 8) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_36;
  }

LABEL_30:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v15 = *(a1 + 40);
  *v4 = 50;
  v16 = *(v15 + 36);
  v4[1] = v16;
  if (v16 > 0x7F)
  {
    v17 = sub_19575D0(v16, v4 + 1);
  }

  else
  {
    v17 = v4 + 2;
  }

  v4 = sub_15C2CA0(v15, v17, a3);
  if ((v6 & 8) == 0)
  {
LABEL_8:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_42;
  }

LABEL_36:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v18 = *(a1 + 48);
  *v4 = 58;
  v19 = *(v18 + 44);
  v4[1] = v19;
  if (v19 > 0x7F)
  {
    v20 = sub_19575D0(v19, v4 + 1);
  }

  else
  {
    v20 = v4 + 2;
  }

  v4 = sub_15CFD5C(v18, v20, a3);
  if ((v6 & 0x10) == 0)
  {
LABEL_9:
    if ((v6 & 1) == 0)
    {
      goto LABEL_10;
    }

LABEL_48:
    v4 = sub_128AEEC(a3, 10, (*(a1 + 24) & 0xFFFFFFFFFFFFFFFELL), v4);
    if ((v6 & 0x200) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_49;
  }

LABEL_42:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v21 = *(a1 + 56);
  *v4 = 74;
  v22 = *(v21 + 28);
  v4[1] = v22;
  if (v22 > 0x7F)
  {
    v23 = sub_19575D0(v22, v4 + 1);
  }

  else
  {
    v23 = v4 + 2;
  }

  v4 = sub_1540418(v21, v23, a3);
  if (v6)
  {
    goto LABEL_48;
  }

LABEL_10:
  if ((v6 & 0x200) == 0)
  {
LABEL_11:
    v7 = v4;
    goto LABEL_56;
  }

LABEL_49:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v24 = *(a1 + 96);
  *v4 = 88;
  v4[1] = v24;
  if (v24 > 0x7F)
  {
    v4[1] = v24 | 0x80;
    v25 = v24 >> 7;
    v4[2] = v24 >> 7;
    v7 = v4 + 3;
    if (v24 >= 0x4000)
    {
      LOBYTE(v26) = v4[2];
      do
      {
        *(v7 - 1) = v26 | 0x80;
        v26 = v25 >> 7;
        *v7++ = v25 >> 7;
        v27 = v25 >> 14;
        v25 >>= 7;
      }

      while (v27);
    }
  }

  else
  {
    v7 = v4 + 2;
  }

LABEL_56:
  v28 = *(a1 + 8);
  if ((v28 & 1) == 0)
  {
    return v7;
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

  if ((*a3 - v7) >= v31)
  {
    v33 = v31;
    memcpy(v7, v32, v31);
    v7 += v33;
    return v7;
  }

  return sub_1957130(a3, v32, v31, v7);
}

uint64_t sub_15D2FD8(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    result = 0;
    goto LABEL_21;
  }

  if ((v2 & 1) == 0)
  {
    v3 = 0;
    if ((v2 & 2) == 0)
    {
      goto LABEL_10;
    }

LABEL_9:
    v8 = sub_16EE474(*(a1 + 32));
    v3 += v8 + ((9 * (__clz(v8 | 1) ^ 0x1F) + 73) >> 6) + 1;
    goto LABEL_10;
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
    goto LABEL_9;
  }

LABEL_10:
  if ((v2 & 4) == 0)
  {
    if ((v2 & 8) == 0)
    {
      goto LABEL_12;
    }

LABEL_29:
    v13 = sub_15D0C70(*(a1 + 48));
    v3 += v13 + ((9 * (__clz(v13 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v2 & 0x10) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  v12 = sub_15C6544(*(a1 + 40));
  v3 += v12 + ((9 * (__clz(v12 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 8) != 0)
  {
    goto LABEL_29;
  }

LABEL_12:
  if ((v2 & 0x10) != 0)
  {
LABEL_13:
    v9 = sub_1541FC0(*(a1 + 56));
    v3 += v9 + ((9 * (__clz(v9 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_14:
  v10 = v3 + 9;
  if ((v2 & 0x20) == 0)
  {
    v10 = v3;
  }

  if ((v2 & 0x40) != 0)
  {
    v10 += 9;
  }

  if ((v2 & 0x80) != 0)
  {
    result = v10 + 9;
  }

  else
  {
    result = v10;
  }

LABEL_21:
  if ((v2 & 0x300) != 0)
  {
    if ((v2 & 0x100) != 0)
    {
      result += 9;
    }

    if ((v2 & 0x200) != 0)
    {
      result += ((9 * (__clz(*(a1 + 96) | 1) ^ 0x1F) + 73) >> 6) + 1;
    }
  }

  v11 = *(a1 + 8);
  if (v11)
  {
    v14 = v11 & 0xFFFFFFFFFFFFFFFCLL;
    v15 = *((v11 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v15 < 0)
    {
      v15 = *(v14 + 16);
    }

    result += v15;
  }

  *(a1 + 20) = result;
  return result;
}

void sub_15D31B4(uint64_t a1, uint64_t a2)
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

        goto LABEL_33;
      }
    }

    else if ((v4 & 2) == 0)
    {
      goto LABEL_4;
    }

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

      v9 = sub_16F5F38(v11);
      *(a1 + 32) = v9;
    }

    if (*(a2 + 32))
    {
      v12 = *(a2 + 32);
    }

    else
    {
      v12 = &off_277E980;
    }

    sub_121721C(v9, v12);
    if ((v4 & 4) == 0)
    {
LABEL_5:
      if ((v4 & 8) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_41;
    }

LABEL_33:
    *(a1 + 16) |= 4u;
    v13 = *(a1 + 40);
    if (!v13)
    {
      v14 = *(a1 + 8);
      v15 = (v14 & 0xFFFFFFFFFFFFFFFCLL);
      if (v14)
      {
        v15 = *v15;
      }

      sub_15D462C(v15);
      *(a1 + 40) = v13;
    }

    if (*(a2 + 40))
    {
      v16 = *(a2 + 40);
    }

    else
    {
      v16 = &off_2778DA8;
    }

    sub_15C7EF4(v13, v16);
    if ((v4 & 8) == 0)
    {
LABEL_6:
      if ((v4 & 0x10) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_49;
    }

LABEL_41:
    *(a1 + 16) |= 8u;
    v17 = *(a1 + 48);
    if (!v17)
    {
      v18 = *(a1 + 8);
      v19 = (v18 & 0xFFFFFFFFFFFFFFFCLL);
      if (v18)
      {
        v19 = *v19;
      }

      v17 = sub_15D4B7C(v19);
      *(a1 + 48) = v17;
    }

    if (*(a2 + 48))
    {
      v20 = *(a2 + 48);
    }

    else
    {
      v20 = &off_27793F8;
    }

    sub_15D158C(v17, v20);
    if ((v4 & 0x10) == 0)
    {
LABEL_7:
      if ((v4 & 0x20) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_57;
    }

LABEL_49:
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

      sub_1551D64(v23);
      *(a1 + 56) = v21;
    }

    if (*(a2 + 56))
    {
      v24 = *(a2 + 56);
    }

    else
    {
      v24 = &off_27769A8;
    }

    sub_1542CDC(v21, v24);
    if ((v4 & 0x20) == 0)
    {
LABEL_8:
      if ((v4 & 0x40) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_58;
    }

LABEL_57:
    *(a1 + 64) = *(a2 + 64);
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
      *(a1 + 80) = *(a2 + 80);
      goto LABEL_11;
    }

LABEL_58:
    *(a1 + 72) = *(a2 + 72);
    if ((v4 & 0x80) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

LABEL_12:
  if ((v4 & 0x300) != 0)
  {
    if ((v4 & 0x100) != 0)
    {
      *(a1 + 88) = *(a2 + 88);
    }

    if ((v4 & 0x200) != 0)
    {
      *(a1 + 96) = *(a2 + 96);
    }

    *(a1 + 16) |= v4;
  }

  v5 = *(a2 + 8);
  if (v5)
  {

    sub_1957EF4((a1 + 8), (v5 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

uint64_t sub_15D3400(uint64_t a1)
{
  v2 = *(a1 + 16);
  if ((v2 & 2) != 0)
  {
    result = sub_16EE510(*(a1 + 32));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 4) != 0)
  {
    result = sub_15C9E7C(*(a1 + 40));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 8) != 0)
  {
    result = sub_15D1F04(*(a1 + 48));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 0x10) == 0)
  {
    return 1;
  }

  result = sub_1543A14(*(a1 + 56));
  if (result)
  {
    return 1;
  }

  return result;
}

void *sub_15D3484(void *a1)
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

  sub_15D3508(a1);
  if (*v3)
  {
    sub_11F19CC(v3);
  }

LABEL_5:
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void ***sub_15D3508(uint64_t a1)
{
  v3 = *(a1 + 24);
  result = (a1 + 24);
  if (v3 != &qword_278E990)
  {
    sub_194E89C(result);
  }

  if (a1 != &off_2779660)
  {
    v4 = *(a1 + 32);
    if (v4)
    {
      sub_16EE080(v4);
      operator delete();
    }

    v5 = *(a1 + 40);
    if (v5)
    {
      sub_15D2594(v5);
      operator delete();
    }

    v6 = *(a1 + 48);
    if (v6)
    {
      sub_14D5F60(v6);
      operator delete();
    }

    v7 = *(a1 + 56);
    if (v7)
    {
      sub_15BA884(v7);
      operator delete();
    }

    v8 = *(a1 + 64);
    if (v8)
    {
      sub_16EB0C0(v8);
      operator delete();
    }

    v9 = *(a1 + 72);
    if (v9)
    {
      sub_15794BC(v9);
      operator delete();
    }

    result = *(a1 + 80);
    if (result)
    {
      sub_15794BC(result);

      operator delete();
    }
  }

  return result;
}

void sub_15D3644(void *a1)
{
  sub_15D3484(a1);

  operator delete();
}

uint64_t sub_15D367C(uint64_t result)
{
  v1 = result;
  v2 = *(result + 16);
  if (!v2)
  {
    goto LABEL_11;
  }

  if (*(result + 16))
  {
    v5 = *(result + 24) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v5 + 23) < 0)
    {
      **v5 = 0;
      *(v5 + 8) = 0;
      if ((v2 & 2) != 0)
      {
        goto LABEL_19;
      }
    }

    else
    {
      *v5 = 0;
      *(v5 + 23) = 0;
      if ((v2 & 2) != 0)
      {
        goto LABEL_19;
      }
    }

LABEL_4:
    if ((v2 & 4) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_20;
  }

  if ((*(result + 16) & 2) == 0)
  {
    goto LABEL_4;
  }

LABEL_19:
  result = sub_16EE0BC(*(result + 32));
  if ((v2 & 4) == 0)
  {
LABEL_5:
    if ((v2 & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_21;
  }

LABEL_20:
  result = sub_15D2734(*(v1 + 40));
  if ((v2 & 8) == 0)
  {
LABEL_6:
    if ((v2 & 0x10) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_22;
  }

LABEL_21:
  result = sub_14D5F9C(*(v1 + 48));
  if ((v2 & 0x10) == 0)
  {
LABEL_7:
    if ((v2 & 0x20) == 0)
    {
      goto LABEL_8;
    }

LABEL_23:
    result = sub_16EB0FC(*(v1 + 64));
    if ((v2 & 0x40) == 0)
    {
LABEL_9:
      if ((v2 & 0x80) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_10;
    }

    goto LABEL_24;
  }

LABEL_22:
  result = sub_15BA988(*(v1 + 56));
  if ((v2 & 0x20) != 0)
  {
    goto LABEL_23;
  }

LABEL_8:
  if ((v2 & 0x40) == 0)
  {
    goto LABEL_9;
  }

LABEL_24:
  result = sub_15794F8(*(v1 + 72));
  if (v2 < 0)
  {
LABEL_10:
    result = sub_15794F8(*(v1 + 80));
  }

LABEL_11:
  v4 = *(v1 + 8);
  v3 = v1 + 8;
  *(v3 + 80) = 0;
  *(v3 + 8) = 0;
  if (v4)
  {

    return sub_1957EA8(v3);
  }

  return result;
}

uint64_t sub_15D3778(uint64_t a1, uint64_t a2, int32x2_t *a3)
{
  *v42 = a2;
  v5 = 0;
  if (sub_195ADC0(a3, v42, a3[11].u32[1]))
  {
    goto LABEL_2;
  }

  while (1)
  {
    v7 = (*v42 + 1);
    v8 = **v42;
    if (**v42 < 0)
    {
      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if (*v7 < 0)
      {
        v7 = sub_1958824(*v42, v9 - 128);
        v8 = v10;
      }

      else
      {
        v7 = (*v42 + 2);
      }
    }

    *v42 = v7;
    v11 = v8 >> 3;
    if (v8 >> 3 > 4)
    {
      break;
    }

    if (v8 >> 3 > 2)
    {
      if (v11 == 3)
      {
        if (v8 != 26)
        {
          goto LABEL_70;
        }

        *(a1 + 16) |= 2u;
        v27 = *(a1 + 32);
        if (!v27)
        {
          v28 = *(a1 + 8);
          v29 = (v28 & 0xFFFFFFFFFFFFFFFCLL);
          if (v28)
          {
            v29 = *v29;
          }

          v27 = sub_16F5F38(v29);
          *(a1 + 32) = v27;
          v7 = *v42;
        }

        v20 = sub_21F4CD0(a3, v27, v7);
      }

      else
      {
        if (v11 != 4 || v8 != 34)
        {
          goto LABEL_70;
        }

        *(a1 + 16) |= 4u;
        v16 = *(a1 + 40);
        if (!v16)
        {
          v17 = *(a1 + 8);
          v18 = (v17 & 0xFFFFFFFFFFFFFFFCLL);
          if (v17)
          {
            v18 = *v18;
          }

          sub_15D4C54(v18);
          v16 = v19;
          *(a1 + 40) = v19;
          v7 = *v42;
        }

        v20 = sub_22271A4(a3, v16, v7);
      }
    }

    else
    {
      if (v11 != 1)
      {
        if (v11 == 2 && v8 == 17)
        {
          v5 |= 0x100u;
          *(a1 + 88) = *v7;
          *v42 = v7 + 8;
          goto LABEL_78;
        }

        goto LABEL_70;
      }

      if (v8 != 10)
      {
        goto LABEL_70;
      }

      *(a1 + 16) |= 1u;
      v24 = *(a1 + 8);
      v25 = (v24 & 0xFFFFFFFFFFFFFFFCLL);
      if (v24)
      {
        v25 = *v25;
      }

      v26 = sub_194DB04((a1 + 24), v25);
      v20 = sub_1958890(v26, *v42, a3);
    }

LABEL_77:
    *v42 = v20;
    if (!v20)
    {
      goto LABEL_83;
    }

LABEL_78:
    if (sub_195ADC0(a3, v42, a3[11].u32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v8 >> 3 <= 6)
  {
    if (v11 == 5)
    {
      if (v8 != 42)
      {
        goto LABEL_70;
      }

      *(a1 + 16) |= 8u;
      v33 = *(a1 + 48);
      if (!v33)
      {
        v34 = *(a1 + 8);
        v35 = (v34 & 0xFFFFFFFFFFFFFFFCLL);
        if (v34)
        {
          v35 = *v35;
        }

        sub_14D6BF8(v35);
        v33 = v36;
        *(a1 + 48) = v36;
        v7 = *v42;
      }

      v20 = sub_2227234(a3, v33, v7);
    }

    else
    {
      if (v11 != 6 || v8 != 50)
      {
        goto LABEL_70;
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

        v21 = sub_15BAF80(v23);
        *(a1 + 56) = v21;
        v7 = *v42;
      }

      v20 = sub_2204D00(a3, v21, v7);
    }

    goto LABEL_77;
  }

  if (v11 == 7)
  {
    if (v8 != 58)
    {
      goto LABEL_70;
    }

    *(a1 + 16) |= 0x20u;
    v30 = *(a1 + 64);
    if (!v30)
    {
      v31 = *(a1 + 8);
      v32 = (v31 & 0xFFFFFFFFFFFFFFFCLL);
      if (v31)
      {
        v32 = *v32;
      }

      v30 = sub_16F5DB8(v32);
      *(a1 + 64) = v30;
      v7 = *v42;
    }

    v20 = sub_21F8D18(a3, v30, v7);
    goto LABEL_77;
  }

  if (v11 == 8)
  {
    if (v8 == 66)
    {
      *(a1 + 16) |= 0x40u;
      v12 = *(a1 + 72);
      if (!v12)
      {
        v37 = *(a1 + 8);
        v38 = (v37 & 0xFFFFFFFFFFFFFFFCLL);
        if (v37)
        {
          v38 = *v38;
        }

        v12 = sub_157B6F8(v38);
        *(a1 + 72) = v12;
        goto LABEL_68;
      }

LABEL_69:
      v20 = sub_21F4E80(a3, v12, v7);
      goto LABEL_77;
    }
  }

  else if (v11 == 9 && v8 == 74)
  {
    *(a1 + 16) |= 0x80u;
    v12 = *(a1 + 80);
    if (!v12)
    {
      v13 = *(a1 + 8);
      v14 = (v13 & 0xFFFFFFFFFFFFFFFCLL);
      if (v13)
      {
        v14 = *v14;
      }

      v12 = sub_157B6F8(v14);
      *(a1 + 80) = v12;
LABEL_68:
      v7 = *v42;
      goto LABEL_69;
    }

    goto LABEL_69;
  }

LABEL_70:
  if (v8)
  {
    v39 = (v8 & 7) == 4;
  }

  else
  {
    v39 = 1;
  }

  if (!v39)
  {
    v40 = *(a1 + 8);
    if (v40)
    {
      v41 = (v40 & 0xFFFFFFFFFFFFFFFCLL) + 8;
    }

    else
    {
      v41 = sub_11F1920((a1 + 8));
      v7 = *v42;
    }

    v20 = sub_1952690(v8, v41, v7, a3);
    goto LABEL_77;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_83:
  *v42 = 0;
LABEL_2:
  *(a1 + 16) |= v5;
  return *v42;
}

char *sub_15D3B7C(uint64_t a1, char *__dst, unint64_t *a3)
{
  v4 = __dst;
  v6 = *(a1 + 16);
  if (v6)
  {
    v4 = sub_128AEEC(a3, 1, (*(a1 + 24) & 0xFFFFFFFFFFFFFFFELL), __dst);
    if ((v6 & 0x100) == 0)
    {
LABEL_3:
      if ((v6 & 2) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_15;
    }
  }

  else if ((v6 & 0x100) == 0)
  {
    goto LABEL_3;
  }

  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v7 = *(a1 + 88);
  *v4 = 17;
  *(v4 + 1) = v7;
  v4 += 9;
  if ((v6 & 2) == 0)
  {
LABEL_4:
    if ((v6 & 4) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_21;
  }

LABEL_15:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v8 = *(a1 + 32);
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

  v4 = sub_16EE2C4(v8, v10, a3);
  if ((v6 & 4) == 0)
  {
LABEL_5:
    if ((v6 & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_27;
  }

LABEL_21:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v11 = *(a1 + 40);
  *v4 = 34;
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

  v4 = sub_15D2BF8(v11, v13, a3);
  if ((v6 & 8) == 0)
  {
LABEL_6:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_33;
  }

LABEL_27:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v14 = *(a1 + 48);
  *v4 = 42;
  v15 = *(v14 + 20);
  v4[1] = v15;
  if (v15 > 0x7F)
  {
    v16 = sub_19575D0(v15, v4 + 1);
  }

  else
  {
    v16 = v4 + 2;
  }

  v4 = sub_14D6440(v14, v16, a3);
  if ((v6 & 0x10) == 0)
  {
LABEL_7:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_39;
  }

LABEL_33:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v17 = *(a1 + 56);
  *v4 = 50;
  v18 = *(v17 + 20);
  v4[1] = v18;
  if (v18 > 0x7F)
  {
    v19 = sub_19575D0(v18, v4 + 1);
  }

  else
  {
    v19 = v4 + 2;
  }

  v4 = sub_15BAC90(v17, v19, a3);
  if ((v6 & 0x20) == 0)
  {
LABEL_8:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_45;
  }

LABEL_39:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v20 = *(a1 + 64);
  *v4 = 58;
  v21 = *(v20 + 20);
  v4[1] = v21;
  if (v21 > 0x7F)
  {
    v22 = sub_19575D0(v21, v4 + 1);
  }

  else
  {
    v22 = v4 + 2;
  }

  v4 = sub_16EBD38(v20, v22, a3);
  if ((v6 & 0x40) == 0)
  {
LABEL_9:
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_57;
    }

    goto LABEL_51;
  }

LABEL_45:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v23 = *(a1 + 72);
  *v4 = 66;
  v24 = *(v23 + 40);
  v4[1] = v24;
  if (v24 > 0x7F)
  {
    v25 = sub_19575D0(v24, v4 + 1);
  }

  else
  {
    v25 = v4 + 2;
  }

  v4 = sub_1579704(v23, v25, a3);
  if ((v6 & 0x80) != 0)
  {
LABEL_51:
    if (*a3 <= v4)
    {
      v4 = sub_225EB68(a3, v4);
    }

    v26 = *(a1 + 80);
    *v4 = 74;
    v27 = *(v26 + 40);
    v4[1] = v27;
    if (v27 > 0x7F)
    {
      v28 = sub_19575D0(v27, v4 + 1);
    }

    else
    {
      v28 = v4 + 2;
    }

    v4 = sub_1579704(v26, v28, a3);
  }

LABEL_57:
  v29 = *(a1 + 8);
  if ((v29 & 1) == 0)
  {
    return v4;
  }

  v31 = v29 & 0xFFFFFFFFFFFFFFFCLL;
  v32 = *(v31 + 31);
  if (v32 < 0)
  {
    v33 = *(v31 + 8);
    v32 = *(v31 + 16);
  }

  else
  {
    v33 = (v31 + 8);
  }

  if ((*a3 - v4) >= v32)
  {
    v34 = v32;
    memcpy(v4, v33, v32);
    v4 += v34;
    return v4;
  }

  return sub_1957130(a3, v33, v32, v4);
}

uint64_t sub_15D3F68(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    v3 = 0;
    goto LABEL_17;
  }

  if ((v2 & 1) == 0)
  {
    v3 = 0;
    if ((v2 & 2) == 0)
    {
      goto LABEL_10;
    }

LABEL_9:
    v7 = sub_16EE474(*(a1 + 32));
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
  if ((v2 & 4) != 0)
  {
    v11 = sub_15D2FD8(*(a1 + 40));
    v3 += v11 + ((9 * (__clz(v11 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v2 & 8) == 0)
    {
LABEL_12:
      if ((v2 & 0x10) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_24;
    }
  }

  else if ((v2 & 8) == 0)
  {
    goto LABEL_12;
  }

  v12 = sub_14D68A8(*(a1 + 48));
  v3 += v12 + ((9 * (__clz(v12 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 0x10) == 0)
  {
LABEL_13:
    if ((v2 & 0x20) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_25;
  }

LABEL_24:
  v13 = sub_15BAE20(*(a1 + 56));
  v3 += v13 + ((9 * (__clz(v13 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 0x20) == 0)
  {
LABEL_14:
    if ((v2 & 0x40) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_26;
  }

LABEL_25:
  v14 = sub_16EC25C(*(a1 + 64));
  v3 += v14 + ((9 * (__clz(v14 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 0x40) == 0)
  {
LABEL_15:
    if ((v2 & 0x80) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

LABEL_26:
  v15 = sub_1579844(*(a1 + 72));
  v3 += v15 + ((9 * (__clz(v15 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 0x80) != 0)
  {
LABEL_16:
    v8 = sub_1579844(*(a1 + 80));
    v3 += v8 + ((9 * (__clz(v8 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_17:
  if ((v2 & 0x100) != 0)
  {
    result = v3 + 9;
  }

  else
  {
    result = v3;
  }

  v10 = *(a1 + 8);
  if (v10)
  {
    v16 = v10 & 0xFFFFFFFFFFFFFFFCLL;
    v17 = *((v10 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v17 < 0)
    {
      v17 = *(v16 + 16);
    }

    result += v17;
  }

  *(a1 + 20) = result;
  return result;
}